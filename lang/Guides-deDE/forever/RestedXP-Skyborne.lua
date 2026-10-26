if GetLocale() ~= "deDE" then return end
--Skyborne leveling guide: Part 1
RXPGuides.RegisterGuide([[
#forever
#disabledungeons
#version 1
#name 1-9 Zephras Isle
#displayname 1-9 Skyborne << Alliance
#displayname 1-9 Skyborne << Horde
#group RestedXP Forever Dungeonführer (A) << Alliance
#group RestedXP Forever Dungeonführer (H) << Horde
#subgroup Speedrun Dungeonführer 1-20 << Alliance
#subgroup Speedrun Dungeonführer 1-22 << Horde
#next 9-13 Zephras Isle
#defaultfor Skyborne

step
    .goto 2521,42.82,23.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ailee Farheart::251362|r.
    .accept 92460 >>Akzeptiert die Quest Reifer werden
    .target Ailee Farheart::251362
step
    .goto 2521,42.07,23.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rorian the Dayseeker::251361|r.
    .turnin 92460 >>Gebt die Quest Reifer werden ab
    .target Rorian the Dayseeker::251361
    .accept 92461 >>Akzeptiert die Quest Harmonie in Gleichgewicht
step
    .goto 2521,43.44,24.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elatrell Federleicht::251368|r.
    .accept 92462 >>Akzeptiert die Quest Befall Untersuchung
    .target Elatrell Featherlight::251368
step << Alliance/!Shaman
    #hidewindow
    #completewith Juvenile Vuldren
    #loop
    .goto 2521,44.23,26,40,0
    .goto 2521,45.24,25.9,40,0
    .goto 2521,46.06,25.33,40,0
    .goto 2521,46.77,27.83,40,0
    .goto 2521,45.27,28.36,40,0
    .goto 2521,43.84,28.39,40,0
    .goto 2521,42.88,27.52,40,0
    +1
step << Horde Shaman
    #hidewindow
    #completewith Juvenile Vuldren Grind
    #loop
    .goto 2521,44.23,26,40,0
    .goto 2521,45.24,25.9,40,0
    .goto 2521,46.06,25.33,40,0
    .goto 2521,46.77,27.83,40,0
    .goto 2521,45.27,28.36,40,0
    .goto 2521,43.84,28.39,40,0
    .goto 2521,42.88,27.52,40,0
    +1
step
    #optional
    #completewith next
    >>Tötet |cRXP_ENEMY_Juvenile Vuldrens::250873|r.
    .complete 92461,1 --8/8 Juvenile Vuldren slain
    .mob Juvenile Vuldren::250873
step
    >>Tötet |cRXP_ENEMY_Pesky Cirrusflies::251169|r.
    *|cRXP_WARN_Priorisiert sie|r
    .complete 92462,1 --8/8 Pesky Cirrusfly slain
    .mob Pesky Cirrusfly::251169
step
    #label Juvenile Vuldren
    >>Tötet |cRXP_ENEMY_Juvenile Vuldrens::250873|r.
    .complete 92461,1 --8/8 Juvenile Vuldren slain
    .mob Juvenile Vuldren::250873
step << Horde Shaman
    #label Juvenile Vuldren Grind
    .xp 2+480 >>Farmt bis 480+/900 XP, um Stufe 3 nach den Questabgaben für die Totemquest zu erreichen.
step
    .goto 2521,43.44,24.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elatrell Federleicht::251368|r.
    *|cRXP_WARN_Nicht use |r|T132845:0|t[Gehen on Luft] |cRXP_WARN_as we need it soon|r.
    .turnin 92462 >>Gebt die Quest Befall Untersuchung ab
    .accept 92463 >>Akzeptiert die Quest The Cirrusfly Königin
    .target Elatrell Featherlight::251368
step << Warrior
    .money <0.0010
    .xp <1,1
    .train 5242,1 -- Battle Shout (Rank 2) Not Trained
    .goto 2521,43.66,24.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Blademaster Ren::251964|r.
    .train 6673 >>Erlernt |T132333:0|t[Schlachtruf]
    .skipgossipid 136813,1
    .target Blademaster Ren::251964
step
    .goto 2521,43.53,24.34,20,0
    .goto 2521,43.83,24.13,10,0
    .goto 2521,43.78,24.38,5,0
    .goto 2521,43.66,24.25,5,0
    .goto 2521,43.75,24.09,5,0
    .goto 2521,43.84,24.3,5,0
    .goto 2521,43.66,24.23,5,0
    .goto 2521,43.83,24.18,5,0
    .goto 2521,43.83,24.32,8,0
    .goto 2521,43.80,24.05
    >>Klettert die Wendeltreppe hinauf, dann |Tinterface/worldmap/chatbubble_64grey.blp:20|tsprecht mit |cRXP_FRIENDLY_Halaan Falkenauge::257554|r an der Spitze des Turms.
    .accept 94414 >>Akzeptiert die Quest The Anchors of Zephras
    .target Halaan Hawk-Eye::257554
step
    .goto 2521,43.80,24.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Halaan Falkenauge::257554|r.
    *|cRXP_WARN_Bewegt euch oder drückt ESC zum Abbrechen|r.
    .complete 94414,1 --View the Anchor Pylon
    .skipgossipid 137720,1
    .target Halaan Hawk-Eye::257554
step
    .goto 2521,43.80,24.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Halaan Falkenauge::257554|r.
    *|cRXP_WARN_Bewegt euch oder drückt ESC zum Abbrechen|r.
    .turnin 94414 >>Gebt die Quest The Anchors of Zephras ab
    .target Halaan Hawk-Eye::257554
step << Skyborne
    .goto 2521,43.65,24.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Myriaal Mistwake::263113|r.
    .accept 92474 >>Akzeptiert die Quest Fallen With Stil
    .target Myriaal Mistwake::263113
step << Skyborne
    #optional
    #completewith next
    #label Harmony in Balance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rorian the Dayseeker::251361|r.
    .turnin 92461,1 >>Gebt die Quest Harmonie in Gleichgewicht ab
    .target Rorian the Dayseeker::251361
step << Skyborne
    #completewith Harmony in Balance
    .goto 2521,42.06,23.48
    >>Während ihr vom Turm fallt, benutzt |T132845:0|t[Gehen on Luft] und zielt auf den Questgeber.
    *Ihr könnt auch einfach springen und den Knopf auf dem Boden drücken.
    *Falls es auf Abklingzeit ist, wird dieser Schritt beim Abgeben von Harmonie in Gleichgewicht übersprungen. Ihr könnt ihn später abschließen.
    .complete 92474,1 --Use Walk on Air
    .macro Walk on Air, 132845 >>Gehen on Luft
    -- .macro Cancel Walk on Air,132745 >>/cancelaura Walk on Air
step << Skyborne
    #requires Harmony in Balance
    .goto 2521,42.06,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rorian the Dayseeker::251361|r.
    .turnin 92461,1 >>Gebt die Quest Harmonie in Gleichgewicht ab
    .target Rorian the Dayseeker::251361
    .accept 92464 >>Akzeptiert die Quest Elementar Unrest
    .accept 92481 >>Akzeptiert die Quest A Student of the Arkan << Mage
    .accept 92483 >>Akzeptiert die Quest At Start in the Schatten << Rogue
    .accept 92482 >>Akzeptiert die Quest The Way of the Jäger << Hunter
    .accept 92484 >>Akzeptiert die Quest Embracing the Elements << Shaman
    .accept 92532 >>Akzeptiert die Quest The Warrior's Pfad << Warrior
    .accept 92485 >>Akzeptiert die Quest A Student of Naturschaden << Druid
--Split so players can complete this later if they used Walk on Air early
step << Skyborne
    .isQuestComplete 92474 --Falling With Style
    .goto 2521,42.06,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rorian the Dayseeker::251361|r.
    .target Rorian the Dayseeker::251361
    .turnin 92474 >>Gebt die Quest Fallen With Stil ab
step << !Skyborne
    .goto 2521,42.06,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rorian the Dayseeker::251361|r.
    .turnin 92461,1 >>Gebt die Quest Harmonie in Gleichgewicht ab
    .target Rorian the Dayseeker::251361
    .accept 92464 >>Akzeptiert die Quest Elementar Unrest
    .accept 92481 >>Akzeptiert die Quest A Student of the Arkan << Alliance Mage
    .accept 92483 >>Akzeptiert die Quest At Start in the Schatten << Rogue
    .accept 92482 >>Akzeptiert die Quest The Way of the Jäger << Hunter
    .accept 92484 >>Akzeptiert die Quest Embracing the Elements << Horde Shaman
    .accept 92532 >>Akzeptiert die Quest The Warrior's Pfad << Warrior
    .accept 92485 >>Akzeptiert die Quest A Student of Naturschaden << Druid
step << Druid
    .goto 2521,41.653,23.337
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Xyton Silverwind::251373|r.
    .turnin 92485 >>Gebt die Quest A Student of Naturschaden ab
    .target Xyton Silverwind::251373
step << Druid
    .money <0.0010
    .xp <1,1
    .goto 2521,41.653,23.337
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Xyton Silverwind::251373|r.
    .train 1126 >>Erlernen |T136078:0|t[Mal der Wildnis]
    .skipgossipid 136805
    .target Xyton Silverwind::251373
step << Alliance Mage
    .goto 2521,41.55,23.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dorii Brightwhisper::251379|r.
    .turnin 92481 >>Gebt die Quest A Student of the Arkan ab
    .target Dorii Brightwhisper::251379
step << Alliance Mage
    .money <0.0010
    .xp <1,1
    .goto 2521,41.55,23.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dorii Brightwhisper::251379|r.
    .train 1459 >>Erlernt |T135932:0|t[Arkane Intelligenz]
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379
step << Horde Shaman
    .goto 2521,42.790,23.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Windshaper Boro::251374|r
    .target Windshaper Boro::251374
    .turnin 92484 >>Gebt die Quest Embracing the Elements ab
    .accept 92466 >>Akzeptiert die Quest Ruf der Erde
step << Horde Shaman
    .money <0.0010
    .xp <1,1
    .goto 2521,42.79,23.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Windshaper Boro::251374|r.
    .train 8017 >>Erlernen |T136086:0|t[Waffe des Felsbeißers]
    .target Windshaper Boro::251374
    .skipgossipid 136811
step << Hunter
    .goto 2521,42.47,23.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tai'ree Fernsicht::251376|r.
    .turnin 92482 >>Gebt die Quest The Way of the Jäger ab
    .target Tai'ree Farsight::251376
step << Alliance Rogue/Alliance Warrior
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.15 << Rogue
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.17 << Warrior
    .isNotOnQuest 93552 -- Harvesting Windstones
    .subzoneskip 16635,1 -- Thendal Village
    .isOnQuest 92464 -- Elemental Unrest
    .goto 2521,43.42,23.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Destin Thriceforged::251364|r.
    .collect 2131,1 >>Kauft und equip a |T135274:0|t[Kurzschwert] << Rogue
    .collect 1194,1 >>Kauft und equip a |T135276:0|t[Bastardschwert] << Warrior
    .vendor 251364 >>|cRXP_WARN_verkauft Schrott|r
    *Nicht sell |T133970:0|t[Stringy Fleisch] oder |T132889:0|t[Linen Stoff].
    .target Destin Thriceforged::251364
step << Horde
    .goto 2521,42.60,24.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ventaari Brightwish::251487|r.
    .accept 92598 >>Akzeptiert die Quest The Gift of Skysight
    .target Ventaari Brightwish::251487
step << Horde !Warrior !Rogue/Alliance !Warrior !Rogue !Hunter
    .itemcount 159,<20 << Mage/Shaman/Priest/Warlock/Paladin -- Refreshing Spring Water
    .subzoneskip 16635,1 -- Thendal Village
    .isNotOnQuest 93552 -- Harvesting Windstones
    .isQuestAvailable 93552 -- Harvesting Windstones
    .goto 2521,42.749,24.496
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Uualia Suncrest::251537|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihr|r << !Hunter !Shaman
    .vendor 251537 >>|cRXP_WARN_verkauft Schrott|r
    *Nicht sell |T133970:0|t[Stringy Fleisch] oder |T132889:0|t[Linen Stoff]. << Alliance
    .collect 159,20 << !Hunter !Shaman --Refreshing Spring Water (20)
    .target Uualia Suncrest::251537
    -- .money <0.0050 << !Hunter !Shaman
    -- .money <0.0040 << Hunter
step
    .goto 2521,43.37,23.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dalia the Collector::251363|r.
    .accept 93552 >>Akzeptiert die Quest Ernten Windstones
    .target Dalia the Collector::251363
step
    #completewith next
    .goto 2521,43.53,23.83,7,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Crystals|r
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance Hunter/Horde Rogue/Horde Warrior
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.17 << Hunter/Warrior
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.15 << Rogue
    .subzoneskip 16635,1 -- Thendal Village
    .isOnQuest 92464 -- Elemental Unrest
    .goto 2521,43.41,23.51
    .collect 1194,1 >>Kauft und equip a |T135276:0|t[Bastardschwert] << Hunter/Horde Warrior
    .collect 2131,1 >>Kauft und equip a |T135274:0|t[Kurzschwert] << Horde Rogue
    .vendor 251364 >>|cRXP_WARN_verkauft Schrott|r
    *Nicht sell |T133970:0|t[Stringy Fleisch] oder |T132889:0|t[Linen Stoff].
    .target Destin Thriceforged::251364
step << Alliance
    .goto 2521,43.33,24.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Falorne Fallwind::251371|r.
    .accept 92597 >>Akzeptiert die Quest Lesen the Ley Lines
    .target Falorne Fallwind::251371

-- ============================================================================
-- Horde Shaman Branch
-- ============================================================================

step << Horde Shaman
    #optional
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Crystals|r
    .complete 93552,1 --15/15 Windstone Cluster
step << Horde Shaman
    .goto 2521,47.29,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yala Windwatcher::249363|r.
    .turnin 92464 >>Gebt die Quest Elementar Unrest ab
    .accept 92465 >>Akzeptiert die Quest Agitators
    .target Yala Windwatcher::249363
step << Horde Shaman
    #optional
    #completewith next
    >>Tötet |cRXP_ENEMY_Al'Aketh Converts::251160|r und |cRXP_ENEMY_Roiling Winde::251143|r.
    *|cRXP_WARN_Priorisiert |cRXP_ENEMY_Roiling Winde::251143|r|r
    .complete 92465,1 --7/7 Al'Aketh Convert slain
    .mob +Al'Aketh Convert::251160
    .complete 92465,2 --6/6 Roiling Winds destroyed
    .mob +Roiling Winds::251143
step << Horde Shaman
    .goto 2521,48.4,20.4
    >>Benutzt |T1029587:0|t[Skysight] neben dem |cRXP_PICK_Elementar Konvergenz|r.
    *|cRXP_WARN_Gefunden in der ganzen Zone. Benutzt |T1029587:0|t[Himmelssicht] in der Nähe davon, um 10% Bewegungsgeschwindigkeit für 15 Min. statt 15 Sek. zu erhalten|r.
    .complete 92598,1 --Use your Skysight ability near the Elemental Convergence
    .macro Skysight,1029587 >>/use spell:1259686
step << Horde Shaman
    #optional
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Crystals|r
    *|cRXP_WARN_Erwartet, etwa 10 Steine zu zerbrechen, aber möglicherweise benötigt ihr bis zu 15.|r
    *|cRXP_WARN_Falls die Gegend abnorm überfüllt ist, haltet euch an einem Spawnpunkt auf oder rotiert zwischen nahegelegenen Steinen.|r
    .complete 93552,1 --15/15 Windstone Cluster
step << Horde Shaman
    #loop
    .goto 2521,46.85,17.68,30,0
    .goto 2521,47.22,19,30,0
    .goto 2521,48.3,19.06,50,0
    .goto 2521,47.55,21.06,35,0
    .goto 2521,46.74,20.49,35,0
    .goto 2521,48.97,20.86,40,0
    .goto 2521,47.41,21.14,30,0
    .goto 2521,45.82,19.09,40,0
    .goto 2521,47.19,23.55,30,0
    .goto 2521,46.6,24.62,30,0
    >>Tötet |cRXP_ENEMY_Al'Aketh Converts::251160|r und |cRXP_ENEMY_Roiling Winde::251143|r.
    *Plündert sie für |T1020384:0|t[Signet of Akir]
    *|cRXP_WARN_Priorisiert |cRXP_ENEMY_Roiling Winde::251143|r|r
    .complete 92465,1 --7/7 Al'Aketh Convert slain
    .mob +Al'Aketh Convert::251160
    .complete 92465,2 --6/6 Roiling Winds destroyed
    .mob +Roiling Winds::251143
    .complete 92466,1 --|1/1 Signet of Akir
step << Horde Shaman
    .goto 2521,47.29,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yala Windwatcher::249363|r.
    .turnin 92465 >>Gebt die Quest Agitators ab
    .accept 92469 >>Akzeptiert die Quest Zurückkehren to Rorian
    .target Yala Windwatcher::249363
step << Horde Shaman
    #completewith next
    .subzoneskip 16622,1 -- Thendal Grove
    .hs >>Benutzt euren Ruhestein zum Thendal Village
    .cooldown item,6948,>0 --Hearthstone
step << Horde Shaman
    .goto 2521,42.788,23.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Windshaper Boro::251374|r
    .turnin 92466 >>Gebt die Quest Ruf der Erde ab
    .accept 92467 >>Akzeptiert die Quest Ruf der Erde
    .target Windshaper Boro::251374

-- ============================================================================
-- Shared Route Resumes
-- ============================================================================

step
    #completewith next
    .goto 2521,43.82,25.41,20,0
    .goto 2521,44.23,24.96,20,0
    .goto 2521,44.28,27.32,25,0
    .goto 2521,45.33,29.15,30,0
    .goto 2521,46.77,27.96,30,0
    .goto 2521,48.14,29.31,30,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Crystals|r
    *|cRXP_WARN_Erwartet, etwa 10 Steine zu zerbrechen, aber möglicherweise benötigt ihr bis zu 15.|r
    *|cRXP_WARN_Falls die Gegend abnorm überfüllt ist, haltet euch an einem Spawnpunkt auf oder rotiert zwischen nahegelegenen Steinen.|r
    .complete 93552,1 --15/15 Windstone Cluster
step
    .goto 2521,48.41,28.37
    >>Tötet |cRXP_ENEMY_Cirrusfly Königin::251404|r.
    .complete 92463,1 --1/1 Cirrusfly Queen slain
    .mob Cirrusfly Queen::251404

-- ============================================================================
-- Horde Shaman Branch
-- ============================================================================

step << Horde Shaman
    .goto 2521,47.241,25.244,25,0
    .goto 2521,48.802,25.869,30,0
    .goto 2521,49.677,23.806
    >>Benutzt |T134743:0|t[Erdsapta].
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Minor Manifestation of Erde::251166|r
    .turnin 92467 >>Gebt die Quest Ruf der Erde ab
    .accept 92468 >>Akzeptiert die Quest Ruf der Erde
    .target Minor Manifestation of Earth::251166
    .use 6635 -- Earth Sapta
step << Horde Shaman
    .isQuestComplete 93552 -- Harvesting Windstones
    .goto 2521,49.32,23.18,15,0
    .goto 2521,48.88,21.52
    .subzone 16635 >>Springt den Berg hinunter und spawnt am Friedhof auf.
step << Horde Shaman
    #ignorecorpse
    .isQuestComplete 93552 -- Harvesting Windstones
    .subzoneskip 16635,1 -- Thendal Village
    .showwhiledead
    .goto 2521,41.06,22.32
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Spirit Heilung::6491|r.
    .target Spirit Healer::6491
step << Horde Shaman
    #loop
    .goto 2521,48.290,25.694,20,0
    .goto 2521,47.173,23.545,20,0
    .goto 2521,46.945,20.927,20,0
    .goto 2521,44.186,22.288,20,0
    .goto 2521,42.832,22.274,20,0
    .goto 2521,43.473,23.845,20,0
    .goto 2521,43.809,25.423,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Crystals|r
    .complete 93552,1 --15/15 Windstone Cluster

-- ============================================================================
-- Alliance and Non-Horde-Shaman Branch
-- ============================================================================

step << Alliance/!Shaman
    #optional
    #completewith next
    .goto 2521,47.41,26.43,30,0
    .goto 2521,46.62,24.61,30,0
    .goto 2521,48.3,25.67,30,0
    .goto 2521,47.19,23.57,30,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Crystals|r
    *|cRXP_WARN_Erwartet, etwa 10 Steine zu zerbrechen, aber möglicherweise benötigt ihr bis zu 15.|r
    *|cRXP_WARN_Falls die Gegend abnorm überfüllt ist, haltet euch an einem Spawnpunkt auf oder rotiert zwischen nahegelegenen Steinen.|r
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance/!Shaman
    .goto 2521,47.29,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yala Windwatcher::249363|r.
    .turnin 92464 >>Gebt die Quest Elementar Unrest ab
    .accept 92465 >>Akzeptiert die Quest Agitators
    .target Yala Windwatcher::249363
step << Alliance/!Shaman
    #optional
    #completewith UseRacialAbility
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Crystals|r
    *|cRXP_WARN_Erwartet, etwa 10 Steine zu zerbrechen, aber möglicherweise benötigt ihr bis zu 15.|r
    *|cRXP_WARN_Falls die Gegend abnorm überfüllt ist, haltet euch an einem Spawnpunkt auf oder rotiert zwischen nahegelegenen Steinen.|r
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance/!Shaman
    #optional
    #completewith UseRacialAbility
    >>Tötet |cRXP_ENEMY_Al'Aketh Converts::251160|r und |cRXP_ENEMY_Roiling Winde::251143|r.
    *|cRXP_WARN_Priorisiert |cRXP_ENEMY_Roiling Winde::251143|r|r
    .complete 92465,1 --7/7 Al'Aketh Convert slain
    .mob +Al'Aketh Convert::251160
    .complete 92465,2 --6/6 Roiling Winds destroyed
    .mob +Roiling Winds::251143
step << Alliance
    #label UseRacialAbility
    .goto 2521,47.8,21.02,30,0
    .goto 2521,46.9,20.82,30,0
    .goto 2521,46.41,18.21
    >>Benutzt |T236219:0|t[Lesen Leylinie] neben dem |cRXP_WARN_Blue Rift|r am Boden
    *|cRXP_WARN_Gefunden in der ganzen Zone|r |cRXP_WARN_Benutzt|r |T236219:0|t[Leylinie erschließen] |cRXP_WARN_neben einem, um 100% Mana- und Gesundheitsregeneration für 15 Min. anstatt 15 Sek. zu erhalten|r.
    .complete 92597,1 --Use your Read Ley Line ability near the Thendal Grove Ley Line
    .usespell 1259705
step << Horde !Shaman
    #label UseRacialAbility
    .goto 2521,48.4,20.4
    >>Benutzt |T1029587:0|t[Skysight] neben dem |cRXP_PICK_Elementar Konvergenz|r.
    *|cRXP_WARN_Gefunden in der ganzen Zone. Benutzt |T1029587:0|t[Himmelssicht] in der Nähe davon, um 10% Bewegungsgeschwindigkeit für 15 Min. statt 15 Sek. zu erhalten|r.
    .complete 92598,1 --Use your Skysight ability near the Elemental Convergence
    .macro Skysight,1029587 >>/use spell:1259686
step << Alliance/!Shaman
    #hidewindow
    #completewith Windstone Cluster
    #loop
    .goto 2521,46.85,17.68,30,0
    .goto 2521,47.22,19,30,0
    .goto 2521,48.3,19.06,50,0
    .goto 2521,47.55,21.06,35,0
    .goto 2521,46.74,20.49,35,0
    .goto 2521,48.97,20.86,40,0
    .goto 2521,47.41,21.14,30,0
    .goto 2521,45.82,19.09,40,0
    .goto 2521,47.19,23.55,30,0
    .goto 2521,46.6,24.62,30,0
    +1
step << Alliance/!Shaman
    #optional
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Crystals|r
    *|cRXP_WARN_Erwartet, etwa 10 Steine zu zerbrechen, aber möglicherweise benötigt ihr bis zu 15.|r
    *|cRXP_WARN_Falls die Gegend abnorm überfüllt ist, haltet euch an einem Spawnpunkt auf oder rotiert zwischen nahegelegenen Steinen.|r
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance/!Shaman
    >>Tötet |cRXP_ENEMY_Al'Aketh Converts::251160|r und |cRXP_ENEMY_Roiling Winde::251143|r.
    *Plündert sie für |T1020384:0|t[Signet of Akir] << Shaman
    *|cRXP_WARN_Priorisiert |cRXP_ENEMY_Roiling Winde::251143|r|r
    .complete 92465,1 --7/7 Al'Aketh Convert slain
    .mob +Al'Aketh Convert::251160
    .complete 92465,2 --6/6 Roiling Winds destroyed
    .mob +Roiling Winds::251143
    .complete 92466,1 << Shaman --|1/1 Signet of Akir
step << Alliance/!Shaman
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Crystals|r
    *|cRXP_WARN_Erwartet, etwa 10 Steine zu zerbrechen, aber möglicherweise benötigt ihr bis zu 15.|r
    *|cRXP_WARN_Falls die Gegend abnorm überfüllt ist, haltet euch an einem Spawnpunkt auf oder rotiert zwischen nahegelegenen Steinen.|r
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance/!Shaman
    #label Windstone Cluster
    .xp 3+300 >>Farmt bis 300+/1400xp
step << Alliance/!Shaman
    .goto 2521,47.29,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yala Windwatcher::249363|r.
    .turnin 92465 >>Gebt die Quest Agitators ab
    .accept 92469 >>Akzeptiert die Quest Zurückkehren to Rorian
    .target Yala Windwatcher::249363
step << Alliance/!Shaman
    #completewith next
    .hs >>Benutzt euren Ruhestein zum Thendal Village
    .cooldown item,6948,>0 --Hearthstone
step << !Shaman
    #completewith next
    #label Harvesting Windstones2
    #optional
    .goto 2521,43.89,22.27,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dalia the Collector::251363|r.
    *|cRXP_WARN_Choose between Bergbau, Kräuterkunde, oder Kürschnerei|r.
    .turnin 93552 >>Gebt die Quest Ernten Windstones ab
    .target Dalia the Collector::251363
step << !Shaman
    #completewith Harvesting Windstones2
    #hidewindow
    .goto 2521,43.37,23.98,60 >>1
step
    #requires Harvesting Windstones2
    .goto 2521,43.37,23.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dalia the Collector::251363|r.
    *|cRXP_WARN_Choose between Bergbau, Kräuterkunde, oder Kürschnerei|r.
    .turnin 93552 >>Gebt die Quest Ernten Windstones ab
    .target Dalia the Collector::251363
step << Rogue
    .goto 2521,43.74,24.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Akeri Duskblade::251389|r.
    .turnin 92483 >>Gebt die Quest At Start in the Schatten ab
    .target Akeri Duskblade::251389
step << Warrior
    .money <0.02
    .train 6546,1 -- Rend (Rank 2) Not Trained
    .train 6178,1 -- Charge (Rank 2) Not Trained
    .xp <4,1
    .isOnQuest 92469 -- Return to Rorian
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Blademaster Ren::251964|r.
    .train 100 >>Erlernt |T132337:0|t[Sturmangriff]
    .train 772 >>Erlernt |T132155:0|t[Verwunden]
    .skipgossipid 136813,1
    .target Blademaster Ren::251964
step << Warrior
    .xp <4,1
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Blademaster Ren::251964|r.
    .turnin 92532 >>Gebt die Quest The Krieger's Pfad ab
    .target Blademaster Ren::251964
step
    .goto 2521,43.44,24.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elatrell Federleicht::251368|r.
    .turnin 92463,3 >>Gebt die Quest The Cirrusfly Königin ab
    .target Elatrell Featherlight::251368
step << Alliance
    .goto 2521,43.33,24.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Falorne Fallwind::251371|r.
    .turnin 92597 >>Gebt die Quest Lesen the Ley Lines ab
    .target Falorne Fallwind::251371
step
    #completewith Turn in Return to Rorian
    .itemcount 247840,1 -- Mining for Dummies
    .train 2575 >>Benutzt |T4625105:0|t[Bergbau for Dummies] |cRXP_WARN_während ihr zum Questgeber geht|r.
    .use 247840 -- Mining for Dummies
step
    #completewith Turn in Return to Rorian
    .itemcount 247841,1 -- Wild Harvest
    .train 2366 >>Benutzt |T4624731:0|t[Wild Ernten] |cRXP_WARN_während ihr zum Questgeber geht|r.
    .use 247841 -- Wild Harvest
step
    #completewith Turn in Return to Rorian
    .itemcount 247846,1 -- Pelt Collecting for Beginners
    .train 8613 >>Benutzt |T4624731:0|t[Pelt Einsammeln for Beginners] |cRXP_WARN_während ihr zum Questgeber geht|r.
    .use 247846 -- Pelt Collecting for Beginners
step << Warrior
    .money <0.02
    .train 6546,1 -- Rend (Rank 2) Not Trained
    .train 6178,1 -- Charge (Rank 2) Not Trained
    .xp <4,1
    .isOnQuest 92469 -- Return to Rorian
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Blademaster Ren::251964|r.
    .train 100 >>Erlernt |T132337:0|t[Sturmangriff]
    .train 772 >>Erlernt |T132155:0|t[Verwunden]
    .skipgossipid 136813,1
    .target Blademaster Ren::251964
step << Warrior
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Blademaster Ren::251964|r.
    .turnin 92532 >>Gebt die Quest The Krieger's Pfad ab
    .target Blademaster Ren::251964
step << Horde Hunter
    .money <0.02
    .xp <4,1
    .goto 2521,42.467,23.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tai'ree Fernsicht::251376|r
    .train 13163 >>Erlernen |T132159:0|t[Aspekt des Affen]
    .train 1978 >>Erlernt |T132204:0|t[Schlangengift]
    .skipgossipid 136808
    .target Tai'ree Farsight::251376
step << Horde
    #label Turn in Return to Rorian
    .goto 2521,42.07,23.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rorian the Dayseeker::251361|r.
    .turnin 92469,1 >>Gebt die Quest Zurückkehren to Rorian ab
    .accept 92471 >>Akzeptiert die Quest Aetheen of the Gales -- Unlocks at 4
    .target Rorian the Dayseeker::251361
step << Horde Skyborne
    .isQuestComplete 92474 --Falling With Style
    .goto 2521,42.06,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rorian the Dayseeker::251361|r.
    .target Rorian the Dayseeker::251361
    .turnin 92474 >>Gebt die Quest Fallen With Stil ab
step << Horde Druid
    .money <0.02
    .xp <4,1
    .goto 2521,41.653,23.337
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Xyton Silverwind::251373|r.
    .train 8921 >>Erlernt |T136096:0|t[Mondfeuer]
    .train 774 >>Erlernen |T136081:0|t[Verjüngung]
    .skipgossipid 136805
    .target Xyton Silverwind::251373
step << Horde
    .goto 2521,42.76,23.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aetheen of the Gales::251366|r.
    .turnin 92471 >>Gebt die Quest Aetheen of the Gales ab
    .accept 92470 >>Akzeptiert die Quest Besudeln Matriarch
    .target Aetheen of the Gales::251366
step << Shaman
    .goto 2521,42.787,23.564
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Windshaper Boro::251374|r
    .turnin 92468 >>Gebt die Quest Ruf der Erde ab
    .target Windshaper Boro::251374
step << Horde Shaman
    .money <0.01
    .xp <4,1
    .goto 2521,42.788,23.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Windshaper Boro::251374|r.
    .train 8042 >>Erlernt |T136026:0|t[Erdschock]
    .target Windshaper Boro::251374
    .skipgossipid 136811
step << Horde
    .goto 2521,42.607,24.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ventaari Brightwish::251487|r
    .turnin 92598 >>Gebt die Quest The Gift of Skysight ab
    .target Ventaari Brightwish::251487
step << Alliance Hunter
    .money <0.02
    .xp <4,1
    .goto 2521,42.467,23.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tai'ree Fernsicht::251376|r
    .train 13163 >>Erlernen |T132159:0|t[Aspekt des Affen]
    .train 1978 >>Erlernt |T132204:0|t[Schlangengift]
    .skipgossipid 136808
    .target Tai'ree Farsight::251376
step << Alliance
    #label Turn in Return to Rorian
    .goto 2521,42.07,23.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rorian the Dayseeker::251361|r.
    .turnin 92469,1 >>Gebt die Quest Zurückkehren to Rorian ab
    .accept 92471 >>Akzeptiert die Quest Aetheen of the Gales -- Unlocks at 4
    .target Rorian the Dayseeker::251361
step << Alliance Skyborne
    .isQuestComplete 92474 --Falling With Style
    .goto 2521,42.06,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rorian the Dayseeker::251361|r.
    .target Rorian the Dayseeker::251361
    .turnin 92474 >>Gebt die Quest Fallen With Stil ab
step << Alliance Druid
    .money <0.02
    .xp <4,1
    .goto 2521,41.653,23.337
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Xyton Silverwind::251373|r.
    .train 8921 >>Erlernt |T136096:0|t[Mondfeuer]
    .train 774 >>Erlernen |T136081:0|t[Verjüngung]
    .skipgossipid 136805
    .target Xyton Silverwind::251373
step << Alliance Mage
    .money <0.01
    .xp <4,1
    .goto 2521,41.55,23.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dorii Brightwhisper::251379|r.
    .train 116 >>Erlernt |T135846:0|t[Frostblitz]
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379
step << Alliance
    .goto 2521,42.76,23.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aetheen of the Gales::251366|r.
    .turnin 92471 >>Gebt die Quest Aetheen of the Gales ab
    .accept 92470 >>Akzeptiert die Quest Besudeln Matriarch
    .target Aetheen of the Gales::251366
step
    #optional
    #completewith AggressiveVendor
    #label Aggressive Encroachment
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Valreaa Valewind::257551|r.
    .accept 92473 >>Akzeptiert die Quest Aggressiv Übergriff
    .target Valreaa Valewind::257551
step
    #completewith Aggressive Encroachment
    .train 2366,3 -- Herbalism Trained
    .goto 2521,42.76,24.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Uualia Suncrest::251537|r
    .collect 277113,1 >>Kauft an |T133637:0|t[Lehrling's Herb Pouch]
    .macro Buy Herbalism Supplies,133637 >>Kauft Kräuterkunde Vorräte
    .target Uualia Suncrest::251537
step
    #completewith Aggressive Encroachment
    .train 2575,3 -- Mining Trained
    .goto 2521,42.76,24.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Uualia Suncrest::251537|r
    .collect 2901,1 >>Kauft a |T134708:0|t[Spitzhacke]
    .collect 277115,1 >>Kauft an |T133635:0|t[Lehrling's Bergbau Pack]
    .macro Buy Mining Supplies,134708 >>Kauft Bergbau Vorräte
    .target Uualia Suncrest::251537
step
    #completewith Aggressive Encroachment
    .train 8613,3 -- Skinning Trained
    .goto 2521,42.76,24.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Uualia Suncrest::251537|r
    .collect 7005,1 >>Kauft a |T135637:0|t[Kürschnermesser]
    .collect 277114,1 >>Kauft an |T133634:0|t[Lehrling's Kürschnerei Satchel]
    .macro Buy Skinning Supplies,135637 >>Kauft Kürschnerei Vorräte
    .target Uualia Suncrest::251537
step
    #label AggressiveVendor
    #completewith Aggressive Encroachment
    .goto 2521,42.76,24.5
    .vendor 251537 >>|cRXP_WARN_verkauft Schrott|r
    *Nicht sell |T133970:0|t[Stringy Fleisch] oder |T132889:0|t[Linen Stoff]. << Alliance
    .collect 2512,1200 << Hunter --Rough Arrow (1200)
    .collect 159,20 >>Kauft |T132794:0|t[Refreshing Federn Wasser] << Druid/Mage/Priest/Warlock/Paladin
step
    #requires Aggressive Encroachment
    .goto 2521,42.41,25.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Valreaa Valewind::257551|r.
    .accept 92473 >>Akzeptiert die Quest Aggressiv Übergriff
    .target Valreaa Valewind::257551
step
    #optional
    #completewith Scrawny Usera
    +Zieht den Reagenzienbeutel manuell in den Reagenzienbeutel-Platz. Ein Rechtsklick wird ihn stattdessen in einen leeren allgemeinen Beutel-Platz platzieren.
step
    #optional
    #completewith Scrawny Usera
    .train 2366,3 -- Herbalism Trained
    .aura 2383 >>Wirkt |T133939:0|t[Kräutersuche] zum Aufspüren nahegelegener Kräuter
    +|cRXP_WARN_Ihr könnt Kräuter sammeln, während ihr vorbeigeht, um auf 20 Kräuterkunde für eine spätere Quest hinzuarbeiten. Dies ist optional, besonders zu Beginn, also macht es auf eigenes Risiko|r
    .usespell 2383
step
    #optional
    #completewith Scrawny Usera
    .train 2656,3 -- Smelting Trained
    .aura 2580 >>Wirkt |T136025:0|t[Mineraliensuche] zum Aufspüren nahegelegener Erzvorkommen
    +|cRXP_WARN_Ihr könnt Erz abbauen, während ihr vorbeigeht, um auf 20 Bergbau für eine spätere Quest hinzuarbeiten. Dies ist optional, besonders zu Beginn, also macht es auf eigenes Risiko|r
    .usespell 2580
step
    #optional
    #completewith Scrawny Usera
    .train 8613,3 -- Skinning Trained
    +|cRXP_WARN_Ihr könnt Häute sammeln, während ihr vorbeigeht, um auf 20 Kürschnerei für eine spätere Quest hinzuarbeiten. Dies ist optional, besonders zu Beginn, also macht es auf eigenes Risiko|r
step
    #label Scrawny Usera
    #loop
    .goto 2521,41.05,25.7,30,0
    .goto 2521,40.4,26.9,30,0
    .goto 2521,39.7,27.03,30,0
    .goto 2521,37.25,29.72,40,0
    .goto 2521,38.17,27.84,30,0
    .goto 2521,37.67,26.31,30,0
    .goto 2521,38.44,27.35,30,0
    >>Tötet |cRXP_ENEMY_Bears::250926|r. Plündert sie für |T132136:0|t[|cRXP_LOOT_Scrawny Ursera Klaue|r].
    .complete 92473,1 --6/6 Scrawny Ursera Claw
    .mob Scrawny Ursera::250926
step
    #optional
    #completewith next
    >>Tötet |cRXP_ENEMY_Ursera Scavengers::250937|r.
    .complete 92470,1 --8/8 Ursera Scavenger slain
    .mob Ursera Scavenger::250937
step
    .goto 2521,37.52,25.6,30,0
    .goto 2521,37.36,24.63,30,0
    .goto 2521,35.88,23.31,10,0
    .goto 2521,35.65,26.06
    >>Tötet |cRXP_ENEMY_Urs'anah::251115|r. Plündert sie für |T5840609:0|t[|cRXP_LOOT_Head of Urs'anah|r].
    .complete 92470,2 --1/1 Head of Urs'anah
    --.macro Sit to Die Faster,134400 >>/sit
    .mob Urs'anah::251115
step
    #loop
    .goto 2521,36.2,25,30,0
    .goto 2521,36.39,23.79,30,0
    .goto 2521,37.33,24.26,30,0
    .goto 2521,36.9,24.54,30,0
    .goto 2521,37.34,25.13,30,0
    .goto 2521,38.12,27.71,30,0
    .goto 2521,37.7,29.46,30,0
    .goto 2521,40.79,26.64,30,0
    >>Tötet |cRXP_ENEMY_Ursera Scavengers::250937|r.
    .complete 92470,1 --8/8 Ursera Scavenger slain
    .macro Sit to Die Faster,134400 >>Sitzt, um schneller zu sterben.
    .mob Ursera Scavenger::250937
step
    .isQuestComplete 92470 -- Foul Matriarch
    .subzoneskip 16673,1 -- Thendal Cave
    #loop
    .goto 2521,36.47,23.67,30,0
    .goto 2521,35.88,23.79,30,0
    .goto 2521,35.71,25.7,30,0
    .subzone 16635 >>Sterbt und spawnt am Friedhof auf.
    *|cRXP_WARN_Benutzt das Sitz-Makro im Kampf, um schneller zu sterben|r.
    .macro Sit to Die Faster,134400 >>Sitzt, um schneller zu sterben.
    .target Spirit Healer::6491
step
    #optional
    #completewith next
    #label Turn in Foul Matriarch
    .subzoneskip 16635,1 -- Thendal Village
    .isQuestComplete 92470 -- Foul Matriarch
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aetheen of the Gales::251366|r.
    .turnin 92470,1 >>Gebt die Quest Besudeln Matriarch ab << Warrior/Paladin
    .turnin 92470,2 >>Gebt die Quest Besudeln Matriarch ab << Druid/Shaman/Priest/Warlock
    .turnin 92470,3 >>Gebt die Quest Besudeln Matriarch ab << Mage
    .turnin 92470,4 >>Gebt die Quest Besudeln Matriarch ab << Rogue
    .turnin 92470,5 >>Gebt die Quest Besudeln Matriarch ab << Hunter
step
    #completewith Turn in Foul Matriarch
    #ignorecorpse
    .subzoneskip 16635,1 -- Thendal Village
    .isQuestComplete 92470 -- Foul Matriarch
    .goto 2521,41.06,22.31
    .showwhiledead
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Spirit Heilung::6491|r.
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step
    #requires Turn in Foul Matriarch
    .goto 2521,42.76,23.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aetheen of the Gales::251366|r.
    .turnin 92470,1 >>Gebt die Quest Besudeln Matriarch ab << Warrior/Paladin
    .turnin 92470,2 >>Gebt die Quest Besudeln Matriarch ab << Druid/Shaman/Priest/Warlock
    .turnin 92470,3 >>Gebt die Quest Besudeln Matriarch ab << Mage
    .turnin 92470,4 >>Gebt die Quest Besudeln Matriarch ab << Rogue
    .turnin 92470,5 >>Gebt die Quest Besudeln Matriarch ab << Hunter
    .accept 92472 >>Akzeptiert die Quest The Weiter Step
    .accept 96638 >>Akzeptiert die Quest The Adventurer
    .target Aetheen of the Gales::251366
step
    #optional
    #completewith next
    #label Aggressive Encroachment2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Valreaa Valewind::257551|r.
    .turnin 92473,1 >>Gebt die Quest Aggressiv Übergriff ab
    .target Valreaa Valewind::257551
step
    #completewith Aggressive Encroachment2
    .goto 2521,42.76,24.52
    .vendor 251537 >>|cRXP_WARN_verkauft Schrott|r
    *Nicht sell |T133970:0|t[Stringy Fleisch], |T132832:0|t[Kleines Eis], oder |T132889:0|t[Linen Stoff]. << Alliance
    *Nicht sell |T132832:0|t[Kleines Eis] oder |T132889:0|t[Linen Stoff]. << Horde
    *|cRXP_WARN_Wir brauchen sie für Kochkunst später|r.
step
    #requires Aggressive Encroachment2
    .goto 2521,42.41,25.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Valreaa Valewind::257551|r.
    .turnin 92473,1 >>Gebt die Quest Aggressiv Übergriff ab
    .target Valreaa Valewind::257551
step
    #optional
    #completewith next
    #label Al'Aketh Thugs
    *|cRXP_WARN_Anlegen|r |T135335:0|t[Abgenutztes Großschwert] << Warrior/Paladin
    *|cRXP_WARN_Anlegen|r |T135145:0|t[Novice's Quarterstaff] << Druid/Shaman/Priest/Warlock
    *|cRXP_WARN_Anlegen|r |T135650:0|t[Späher Ranger's Dagger] << Mage
    *|cRXP_WARN_Anlegen|r |T133057:0|t[Peacekeeper's Pickhammer] << Rogue
    *|cRXP_WARN_Anlegen|r |T135503:0|t[Refined Shortbow] << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hanaa Nightwind::252095|r.
    .accept 92544 >>Akzeptiert die Quest Al'Aketh Thugs
    .target Hanaa Nightwind::252095
    .use 258882 << Warrior/Paladin -- Worn Greatsword
    .use 257282 << Druid/Shaman/Priest/Warlock -- Novice's Quarterstaff
    .use 257283 << Mage -- Scout Ranger's Dagger
    .use 257276 << Rogue -- Peacekeeper's Pickhammer
    .use 273879 << Hunter -- Refined Shortbow
step
    #completewith Al'Aketh Thugs
    .goto 2521,38.31,30.17,100 >>Tötet Mobs unterwegs, wenn ihr das tun könnt, ohne Zeit zu verlieren.
step
    #requires Al'Aketh Thugs
    .goto 2521,38.31,30.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hanaa Nightwind::252095|r.
    .accept 92544 >>Akzeptiert die Quest Al'Aketh Thugs
    .target Hanaa Nightwind::252095
step
    #optional
    #completewith next
    >>Tötet |cRXP_ENEMY_Al'Aketh Brutes::251145|r und |cRXP_ENEMY_Al'Aketh Neophytes::251448|r.
    .complete 92544,1 --|6/6 Al'Aketh Brute slain
    .mob +Al'Aketh Brute::251145
    .complete 92544,2 --|4/4 Al'Aketh Neophyte slain
    .mob +Al'Aketh Neophyte::251448
step
    #optional
    #completewith next
    #label Malduko Cloudcrush
    .goto 2521,37.04,32.93,20,0
    >>Tötet |cRXP_ENEMY_Malduko Cloudcrush::256935|r.
    .complete 92544,3 --|1/1 Malduko Cloudcrush slain
    .mob Malduko Cloudcrush::256935
step
    #completewith Malduko Cloudcrush
    .goto 2521,36.032,33.545,50 >>Geht zur oberen Ebene des Tempels
step
    #requires Malduko Cloudcrush
    .goto 2521,36.032,33.545
    >>Tötet |cRXP_ENEMY_Malduko Cloudcrush::256935|r auf dem Gipfel des Tempels.
    .complete 92544,3 --|1/1 Malduko Cloudcrush slain
    .mob Malduko Cloudcrush::256935
step << Horde
    .isOnQuest 92544 -- Al'Aketh Thugs
    .cooldown spell,1259686,>0,1 -- Skysight
    .goto 2521,35.910,33.605
    .cast 1259686 >>Benutzt |T1029587:0|t[Himmelssicht] für den 10%-Bewegungsgeschwindigkeitsbuff.
step << Alliance
    .isOnQuest 92544 -- Al'Aketh Thugs
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .goto 2521,35.57,33.84
    .cast 1259705 >>Benutzt |T236219:0|t[Leylinie erschließen] für 100% erhöhte passive Mana- und Gesundheitsregeneration.
    .usespell 1259705
step
    #hidewindow
    #completewith Grind6
    #loop
    .goto 2521,35.33,34.19,30,0
    .goto 2521,36.34,31.56,40,0
    .goto 2521,37.3,32.89,40,0
    .goto 2521,37.16,34.72,40,0
    .goto 2521,38.08,35.01,40,0
    +1
step
    #loop
    .goto 2521,35.33,34.19,30,0
    .goto 2521,36.34,31.56,40,0
    .goto 2521,37.3,32.89,40,0
    .goto 2521,37.16,34.72,40,0
    .goto 2521,38.08,35.01,40,0
    >>Tötet |cRXP_ENEMY_Al'Aketh Brutes::251145|r und |cRXP_ENEMY_Al'Aketh Neophytes::251448|r.
    *|cRXP_WARN_Auffrischen|r |T236219:0|t[Lesen Leylinie] |cRXP_WARN_nahe der Leylinie|r << Alliance
    .usespell 1259705
    .complete 92544,1 --|6/6 Al'Aketh Brute slain
    .mob +Al'Aketh Brute::251145
    .complete 92544,2 --|4/4 Al'Aketh Neophyte slain
    .mob +Al'Aketh Neophyte::251448
step
    #label Grind6
    .xp 5+1740 >>Farmt bis Stufe 5 mit 1740+/2800 XP, um Stufe 6 nach Questabgaben im nächsten Dorf zu erreichen, damit ihr neue Zauber trainieren könnt.
    -- Maybe only grind here if little XP is needed; otherwise, train abilities after the cave.
step
    .goto 2521,38.32,30.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hanaa Nightwind::252095|r.
    .turnin 92544 >>Gebt die Quest Al'Aketh Thugs ab
    .target Hanaa Nightwind::252095

-- ============================================================================
-- First Visit Shen'dar Village
-- ============================================================================

step
    #completewith SkybornePart1End
    #hidewindow
    +Possible Tornado Erschaffen Ort
    #icon |TInterface/Icons/Spell_Nature_Cyclone:0|t
    .pin 2521,50.22,76.77,Tornado
    .pin 2521,53.51,71.46,Tornado
    .pin 2521,54.46,60.13,Tornado
    .pin 2521,64.52,46.4,Tornado
    .pin 2521,46.52,71.19,Tornado
    .pin 2521,59.59,43.9,Tornado
    .pin 2521,62.15,70.42,Tornado
    .pin 2521,52.5,79,Tornado
    .pin 2521,54.36,72.97,Tornado
    .pin 2521,62.52,73.74,Tornado
    .pin 2521,42.85,41.26,Tornado
    .pin 2521,58.8,74.36,Tornado
    .pin 2521,64.84,67.52,Tornado
    .pin 2521,52.41,70.33,Tornado
    .pin 2521,43.74,59.77,Tornado
    .pin 2521,54.22,64.13,Tornado
    .pin 2521,64.44,79.62,Tornado
    .pin 2521,58.77,50.45,Tornado
    .pin 2521,57.28,70.5,Tornado
    .pin 2521,68.16,74.89,Tornado
    .pin 2521,60.94,73.58,Tornado
    .pin 2521,48.36,80.52,Tornado
    .pin 2521,58.40,47.31,Tornado
    .pin 2521,58.78,50.39,Tornado
    .pin 2521,41.45,54.37,Tornado
    .pin 2521,37.25,46.84,Tornado
    .pin 2521,40.43,46.88,Tornado
    .pin 2521,46.58,38.35,Tornado
    .pin 2521,43.16,65.06,Tornado
    .pin 2521,60.44,66.16,Tornado
    .pin 2521,61.06,73.57,Tornado
    .pin 2521,58.04,44.13,Tornado
    .use 255663 --Windstones
step
    #optional
    #completewith next
    +|TInterface/cursor/crosshair/interact.blp:20|tSammelt |cRXP_PICK_Windstone crystals|r unterwegs für Gesundheits- und Mana-Tränke
    *|cRXP_WARN_Falls ihr einen Tornado seht, berührt ihn für 40% Bewegungsgeschwindigkeit. Wenn ihr Schaden austeilt, wird der Effekt entfernt|r.
step
    .isOnQuest 92472 -- The Next Step
    #completewith VendorStep
    #label The Next Step
    #hidewindow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Constable Aonda::251523|r.
    .turnin 92472 >>Gebt die Quest The Weiter Step ab
    .target Constable Aonda::251523
step
    #completewith The Next Step
    >>Tötet |cRXP_ENEMY_Galestriders::251661|r unterwegs. Plündert sie für |T133972:0|t[|cRXP_LOOT_Strider Fleisch|r] und |T132832:0|t[|cRXP_LOOT_Small Eggs|r]
    *|cRXP_WARN_Falls der Tornado-Geschwindigkeitsbuff aktiv ist oder ein Tornado in der Nähe ist, vermeidet, sie zu töten.|r
    .collect 5469,8 -- Strider Meat
    .collect 6889,3 -- Small Egg
    -- .complete 92553,2 --8/8 Strider Meat
    -- .complete 92553,1 --3/3 Small Egg
    .mob Galestrider::251661
step << !Rogue !Warrior
    #completewith The Next Step
    #label VendorStep
    .goto 2521,44.72,45.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Veena Vericloud::254358|r.
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch]|cRXP_BUY_ von ihr|r << Shaman/Druid/Priest/Warlock/Paladin/Mage
    >>|cRXP_WARN_Behaltet 2 Silber für eure Klassenzauber!|r << Shaman/Druid
    >>|cRXP_WARN_Behaltet 2 Silber für eure Klassenzauber!|r << Mage
    .vendor 254358 >>|cRXP_WARN_Vendor trash|r.
    *Nicht sell |T133970:0|t[Stringy Fleisch], |T132832:0|t[Kleines Eis], |T133972:0|t[Strider Fleisch], oder |T132889:0|t[Linen Stoff]. << Alliance
    *Nicht sell |T132832:0|t[Kleines Eis], |T133972:0|t[Strider Fleisch], oder |T132889:0|t[Linen Stoff]. << Horde
    *|cRXP_WARN_Wir brauchen sie für Kochkunst später|r.
step << Rogue/Warrior
    #completewith The Next Step
    #label VendorStep
    .goto 2521,44.67,45.19,10,0
    .goto 2521,44.78,45.05
    .vendor 254360 >>|cRXP_WARN_Vendor trash|r.
    *Nicht sell |T133970:0|t[Stringy Fleisch], |T132832:0|t[Kleines Eis], |T133972:0|t[Strider Fleisch], oder |T132889:0|t[Linen Stoff]. << Alliance
    *Nicht sell |T132832:0|t[Kleines Eis], |T133972:0|t[Strider Fleisch], oder |T132889:0|t[Linen Stoff]. << Horde
    *|cRXP_WARN_Wir brauchen sie für Kochkunst später|r.
    .target Belandiel Farflight::254360
step
    #requires The Next Step
    .isOnQuest 92472 -- The Next Step
    .goto 2521,45.67,45.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Constable Aonda::251523|r.
    .turnin 92472 >>Gebt die Quest The Weiter Step ab
    .target Constable Aonda::251523
step
    .goto 2521,45.67,45.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Constable Aonda::251523|r.
    .accept 93461 >>Akzeptiert die Quest Welcome to Shen'dar Village << Alliance
    .accept 92514 >>Akzeptiert die Quest Welcome to Shen'dar Village << Horde
    .target Constable Aonda::251523
step << Mage
    .money <0.02
    -- .money <0.03
    .xp <6,1
    .goto 2521,45.1,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dorii Brightwhisper::251379|r.
    .train 143 >>Erlernen |T135812:0|t[Feuerball (Rang 2)]
    .train 2136 >>Erlernt |T135807:0|t[Feuerschlag]
    -- .train 1296017 >>Train |T8188276:0|t[Comprehend Scroll]
    --  Comprehend Scroll early can be good,if you get scrolls and don't go polymorphed
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379

-- ============================================================================
-- Alliance Shen'dar Village Introduction Branch
-- ============================================================================

step << Alliance
    .goto 2521,45.04,46.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rathiril Sunlance::251903|r.
    .complete 93461,1 --1/1 Speak with Rathiril Sunlance
    .accept 92596 >>Akzeptiert die Quest The Hoch Order
    .target Rathiril Sunlance::251903
step << Alliance
    .goto 2521,45.04,46.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rathiril Sunlance::251903|r.
    .complete 92596,1 --1/1 Listen to Rathiril Sunlance
    .skipgossipid 136139 -- Can you tell me what is happening on Zephras Isle?
    .skipgossipid 136138 -- Do we know why..?
    .skipgossipid 136137 -- How do we solve this?
    .skipgossipid 136136 -- What about the Al'Aketh? Can they help?
    .skipgossipid 136135 -- What of this "Windlord"? Is Al'Akir real, or a creation of the cult?
    .skipgossipid 136134 -- How can you be so sure? If we've never dealt with the windlord directly, surely it's worth a try?
    .skipgossipid 136133 -- <Remain Silent>
step << Alliance
    .goto 2521,44.98,46.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rathiril Sunlance::251903|r.
    .turnin 92596 >>Gebt die Quest The Hoch Order ab
    .accept 94413 >>Akzeptiert die Quest A Magical Affront
    .target Rathiril Sunlance::251903
step << Alliance Rogue
    .money <0.02
    .train 1777,1 -- Gouge (Rank 2) Not Trained
    .xp <6,1
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Miriaan Mistblade::254087|r
    .train 1757 >>Erlernen |T136189:0|t[Finsterer Stoß (Rang 2)]
    .train 1776 >>Erlernt |T132155:0|t[Solarplexus]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
step << Alliance Rogue
    .money <0.01
    .xp <6,1
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Miriaan Mistblade::254087|r
    .train 1757 >> Erlernen |T136189:0|t[Finsterer Stoß (Rang 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
-- step << Mage
--     .isOnQuest 93461 << Alliance -- Welcome to Shen'dar Village
--     .isOnQuest 92514 << Horde -- Welcome to Shen'dar Village
--     .subzoneskip 16624,1 -- Shen'dar Village
--     .goto 2521,43.24,43.18
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nasalanna Windsinger::257020|r and buy any missing materials: |T133942:0|t[Copper Rod], |T132841:0|t[Mote of Magic] and |T135435:0|t[Simple Wood].
--     .collect 6217,1 -- Copper Rod
--     .collect 247786,3 -- Mote of Magic
--     .collect 4470,1 -- Simple Wood
--     .skipgossipid 137558
--     .target Nasalanna Windsinger::257020
--     .money <0.0172
-- step << Mage
--     .isOnQuest 93461 << Alliance -- Welcome to Shen'dar Village
--     .isOnQuest 92514 << Horde -- Welcome to Shen'dar Village
--     .subzoneskip 16624,1 -- Shen'dar Village
--     .goto 2521,43.24,43.18
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nasalanna Windsinger::257020|r
--     .train 7411 >>Train |T136189:0|t[Enchanting] |cRXP_WARN_for immediate wand|r
--     .skipgossipid 137559
--     .target Nasalanna Windsinger::257020
-- step << Mage
--     .isOnQuest 93461 << Alliance -- Welcome to Shen'dar Village
--     .isOnQuest 92514 << Horde -- Welcome to Shen'dar Village
--     .train 7411,3 -- Enchanting Trained
--     >>Use the |T135225:0|t[Runed Copper Rod] macro below, then use the |T135645:0|t[Novice's Practice Wand] macro
--     *|cRXP_WARN_Afterward, enchant your bracers with Stamina if you have a pair equipped|r
--     .collect 6218,1 -- Runed Copper Rod
--     .collect 247789,1 -- Novice's Practice Wand
--     .macro Runed Copper Rod,135225 >>/cast Enchanting\n/run C_TradeSkillUI.CraftRecipe(7421,1)
--     .macro Novice's Practice Wand,135645 >>/run C_TradeSkillUI.CraftRecipe(1245321,1)
-- step << Mage
--     #completewith MageEnchanting
--     .train 7411,3 -- Enchanting Trained
--     +Abandon Enchanting or continue with it.
step << Alliance
    .goto 2521,43.02,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Coriella Calmbreeze::254089|r.
    .complete 93461,2 --1/1 Speak with the Innkeeper
    .target Coriella Calmbreeze::254089
step << Alliance
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.02,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Coriella Calmbreeze::254089|r.
    .home >>Setzt euren Ruhestein in Shen'dar Village
    .bindlocation 16624
    .target Coriella Calmbreeze::254089

-- ============================================================================
-- Horde Shen'dar Village Introduction Branch
-- ============================================================================

step << Horde
    .goto 2521,43.52,44.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Illaya Amberwind::251902|r.
    .complete 92514,1 --1/1 Speak with Illaya Amberwind
    .accept 92595 >>Akzeptiert die Quest The Windshapers
    .target Illaya Amberwind::251902
step << Horde
    .goto 2521,43.52,44.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Illaya Amberwind::251902|r.
    .complete 92595,1 --1/1 Listen to Illaya
    .target Illaya Amberwind::251902
    .skipgossipid 135864
    .skipgossipid 135863
    .skipgossipid 135862
    .skipgossipid 135861
    .skipgossipid 135860
    .skipgossipid 135859
    .skipgossipid 135858
step << Horde
    .goto 2521,43.52,44.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Illaya Amberwind::251902|r.
    .turnin 92595 >>Gebt die Quest The Windshapers ab
    .accept 94411 >>Akzeptiert die Quest Meddlesome Mages
    .target Illaya Amberwind::251902
step << Horde Shaman
    .money <0.01
    .xp <6,1
    .goto 2521,43.454,44.872
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aarnor Galestrike::254082|r
    .trainer >>Trainiere deine Klassenfähigkeiten
    .target Aarnor Galestrike::254082
    .skipgossipid 136811
step << Horde
    .goto 2521,43.02,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Coriella Calmbreeze::254089|r.
    .complete 92514,2 --1/1 Speak with the Innkeeper
    .target Coriella Calmbreeze::254089
step << Horde
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.02,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Coriella Calmbreeze::254089|r.
    .home >>Setzt euren Ruhestein in Shen'dar Village
    .bindlocation 16624
    .target Coriella Calmbreeze::254089
step << Horde Rogue
    .money <0.02
    .train 1777,1 -- Gouge (Rank 2) Not Trained
    .xp <6,1
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Miriaan Mistblade::254087|r
    .train 1757 >>Erlernen |T136189:0|t[Finsterer Stoß (Rang 2)]
    .train 1776 >>Erlernt |T132155:0|t[Solarplexus]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
step << Horde Rogue
    .money <0.01
    .xp <6,1
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Miriaan Mistblade::254087|r
    .train 1757 >> Erlernen |T136189:0|t[Finsterer Stoß (Rang 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087

-- ============================================================================
-- Shared Route Resumes
-- ============================================================================

step << Warrior
    .money <0.01
    .xp <6,1
    .goto 2521,44.95,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corsan Earthrazer::254088|r
    .train 3127 >>Erlernt |T132269:0|t[Parieren]
    .skipgossipid 136813
    .target Corsan Earthrazer::254088
step << Druid
    .money <0.02
    .xp <6,1
    .goto 2521,45.07,45.27,25,0
    .goto 2521,45.154,44.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Naeluna Rasche Heilung::254081|r im Haus.
    .train 467 >>Erlernt |T136104:0|t[Dornen]
    .train 5177 >>Erlernen |T136006:0|t[Zorn (Rang 2)]
    .skipgossipid 136805
    .target Naeluna Swiftmend::254081
step << Hunter
    .money <0.02
    .xp <6,1
    .goto 2521,45.07,45.27,25,0
    .goto 2521,45.263,44.236
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elayaa Easewind::254084|r im Haus.
    .train 3044 >>Erlernt |T132218:0|t[Arkaner Schuss]
    .train 1130 >>Erlernt |T132212:0|t[Mal des Jägers]
    .skipgossipid 136808
    .target Elayaa Easewind::254084
step
    -- #label MageEnchanting
    .goto 2521,45.67,45.50
    -- *|cRXP_WARN_Equip the|r |T135645:0|t[Novice's Practice Wand] << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Constable Aonda::251523|r.
    .turnin 93461 >>Gebt die Quest Welcome to Shen'dar Village ab << Alliance
    .turnin 92514 >>Gebt die Quest Welcome to Shen'dar Village ab << Horde
    .accept 92517 >>Akzeptiert die Quest The Criminal Element
    .target Constable Aonda::251523

--Class Trainer Backup
step << Warrior
    .money <0.01
    .xp <6,1
    .goto 2521,44.95,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corsan Earthrazer::254088|r
    .train 3127 >>Erlernt |T132269:0|t[Parieren]
    .skipgossipid 136813
    .target Corsan Earthrazer::254088

--Class Trainer Backup
step << Hunter
    .money <0.02
    .xp <6,1
    .goto 2521,45.263,44.236
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elayaa Easewind::254084|r.
    .train 3044 >>Erlernt |T132218:0|t[Arkaner Schuss]
    .train 1130 >>Erlernt |T132212:0|t[Mal des Jägers]
    .skipgossipid 136808
    .target Elayaa Easewind::254084

--Class Trainer Backup
step << Druid
    .money <0.02
    .xp <6,1
    .goto 2521,45.154,44.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Naeluna Rasche Heilung::254081|r
    .train 467 >>Erlernt |T136104:0|t[Dornen]
    .train 5177 >>Erlernen |T136006:0|t[Zorn (Rang 2)]
    .skipgossipid 136805
    .target Naeluna Swiftmend::254081

--Class Trainer Backup
step << Mage
    .money <0.02
    -- .money <0.03
    .xp <6,1
    .goto 2521,45.1,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dorii Brightwhisper::251379|r.
    .train 143 >>Erlernen |T135812:0|t[Feuerball (Rang 2)]
    .train 2136 >>Erlernt |T135807:0|t[Feuerschlag]
    -- .train 1296017 >>Train |T8188276:0|t[Comprehend Scroll]
    --  Comprehend Scroll early can be good,if you get scrolls and don't go polymorphed
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379
step << Druid/Priest/Warlock/Mage
    .money <0.0125
    .isNotOnQuest 93319,92516 -- Pilfered Windstones / Hippogryph Harassment
    .isQuestAvailable 93319 -- Pilfered Windstones
    .isQuestAvailable 92516 -- Hippogryph Harassment
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.72,45.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Veena Vericloud::254358|r.
    .collect 1179,5 >>|cRXP_BUY_Buy 5|r |T132815:0|t[Eiskalt Milk], |cRXP_BUY_or 10 if ihr könnt afford them|r
    *Nicht sell |T133970:0|t[Stringy Fleisch], |T132832:0|t[Kleines Eis], |T133972:0|t[Strider Fleisch], oder |T132889:0|t[Linen Stoff]. << Alliance
    *Nicht sell |T132832:0|t[Kleines Eis], |T133972:0|t[Strider Fleisch], oder |T132889:0|t[Linen Stoff]. << Horde
    *|cRXP_WARN_Wir brauchen sie für Kochkunst später|r.
step
    .goto 2521,44.47,44.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Teeri Wellwind::251906|r.
    .accept 93319 >>Akzeptiert die Quest Bestohlen Windstones
    .accept 92516 >>Akzeptiert die Quest Hippogryph Belästigung
    .target Teeri Wellwind::251906
step
    .goto 2521,44.68,44.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Indari Sunseam::251993|r.
    .accept 92515 >>Akzeptiert die Quest The Problem With Prideclaws
    .target Indari Sunseam::251993
step
    .goto 2521,44.88,44.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Taleen Shimmerthread::251991|r.
    .accept 93951 >>Akzeptiert die Quest A Little Bella
    .target Taleen Shimmerthread::251991
step << Shaman
    .money <0.0504
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .subzoneskip 16624,1 -- Shen'dar Village
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tephri Thriceforged::257421|r
    >>|cRXP_BUY_Buy und equip a|r |T135145:0|t[Wanderstecken]
    .collect 2495,1 --Collect Walking Stick (1)
    .target Tephri Thriceforged::257421
step << Hunter
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tephri Thriceforged::257421|r
    >>|cRXP_BUY_kaufe und rüste ein|r |T135499:0|t[Hornholz-Doppelbogen] aus
    -- >>|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] |cRXP_BUY_until your Quiver is full|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Tephri Thriceforged::257421
step << Warrior/Paladin
    .money <0.0701
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.8,44.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tephri Thriceforged::257421|r und buy und equip a |T133053:0|t[Hölzerner Schlaghammer].
    .collect 2493,1 -- Wooden Mallet
    .target Tephri Thriceforged::257421
step << Rogue
    .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.81
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.8,44.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tephri Thriceforged::257421|r und buy und equip a |T135321:0|t[Gladius].
    .collect 2488,1 -- Gladius
    .target Tephri Thriceforged::257421
step
    .goto 2521,43.850,43.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    .accept 92553 >>Akzeptiert die Quest Vorräte auffüllen the Larders
    .addquestitem 6889,92553
    .addquestitem 5469,92553
    .target Zerril Softbreeze::251905
step -- for people who send the items over
    .isQuestComplete 92553 -- Restocking the Larders
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    .turnin 92553 >>Gebt die Quest Vorräte auffüllen the Larders ab
    .target Zerril Softbreeze::251905
step
    .money <0.01
    .isQuestTurnedIn 92553 -- Restocking the Larders
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .itemcount 6889,1 -- Small Egg
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    .train 2550 >>Erlernen |T133971:0|t[Kochlehrling]
    .skipgossipid 137551 --Train me.
    .target Zerril Softbreeze::251905
step
    .isQuestTurnedIn 92553 -- Restocking the Larders
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .train 2550,3 -- Cooking Trained
    .itemcount 6889,1 -- Small Egg
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.86,43.85
    +Benutzt das Makro unten mit |T132834:0|t[Kräutergebackenes Ei], um so viel wie möglich herzustellen.
    *|cRXP_WARN_Die meisten Buff-Speisen gewähren 5% erhöhte Erfahrung durch Tötungen für 15 Minuten. Versucht, eine hohe Uptime bei diesem Buff zu behalten, während ihr aufsteigt.|r.
    *|cRXP_BUY_Kauft 5-20|r |T134059:0|t[Milde Gewürze] |cRXP_BUY_von|r |cRXP_FRIENDLY_Zerril Softbreeze|r |cRXP_WARN_falls ihr es nicht schon getan habt|r.
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_Ihr müsst möglicherweise das Makro zweimal drücken|r.
    .macro Herb Baked Egg,132834 >>Kräutergebackenes Ei
step
    .isOnQuest 92553 -- Restocking the Larders
    .isQuestNotComplete 92553 -- Restocking the Larders
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .train 2550,3 -- Cooking Trained
    .itemcount 6888,<1 -- Herb Baked Egg
    .itemcount 6889,1 -- Small Egg
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.86,43.85
    +Benutzt das Makro unten mit |T132834:0|t[Kräutergebackenes Ei], um 1 für den Erfahrungs-Buff herzustellen.
    *|cRXP_WARN_Die meisten Buff-Speisen gewähren 5% erhöhte Erfahrung durch Tötungen für 15 Minuten. Versucht, eine hohe Uptime bei diesem Buff zu behalten, während ihr aufsteigt.|r.
    *|cRXP_BUY_Kauft 5-20|r |T134059:0|t[Milde Gewürze] |cRXP_BUY_von|r |cRXP_FRIENDLY_Zerril Softbreeze|r |cRXP_WARN_falls ihr es nicht schon getan habt|r.
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_Ihr müsst möglicherweise das Makro zweimal drücken|r.
    .macro Herb Baked Egg,132834 >>Kräutergebackenes Ei
step
    .isOnQuest 92553 -- Restocking the Larders
    .isQuestNotComplete 92553 -- Restocking the Larders
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .itemcount 6889,>3 -- Small Egg
    .train 2550,3 -- Cooking Trained
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.86,43.85
    +Benutzt das Makro unten mit |T132834:0|t[Kräutergebackenes Ei], um jedes Kleine Ei außer den 3 für 'Vorräte auffüllen' reservierten herzustellen.
    *|cRXP_WARN_Behaltet mindestens 3 Kleine Eier für eine spätere Quest.|r
    *|cRXP_WARN_Die meisten Buff-Speisen gewähren 5% erhöhte Erfahrung durch Tötungen für 15 Minuten. Versucht, eine hohe Uptime bei diesem Buff zu behalten, während ihr aufsteigt.|r.
    *|cRXP_BUY_Kauft 5-20|r |T134059:0|t[Milde Gewürze] |cRXP_BUY_von|r |cRXP_FRIENDLY_Zerril Softbreeze|r |cRXP_WARN_falls ihr es nicht schon getan habt|r.
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_Ihr müsst möglicherweise das Makro zweimal drücken|r.
    .macro Herb Baked Egg,132834 >>Kräutergebackenes Ei

--Class Trainer Backup
step << Rogue
    .money <0.02
    .train 1777,1 -- Gouge (Rank 2) Not Trained
    .xp <6,1
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Miriaan Mistblade::254087|r
    .train 1757 >>Erlernen |T136189:0|t[Finsterer Stoß (Rang 2)]
    .train 1776 >>Erlernt |T132155:0|t[Solarplexus]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087

--Class Trainer Backup
step << Rogue
    .money <0.01
    .xp <6,1
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Miriaan Mistblade::254087|r
    .train 1757 >>Erlernen |T136189:0|t[Finsterer Stoß (Rang 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
step
    #optional
    #completewith BadwindBennicA
    >>Tötet |cRXP_ENEMY_Prideclaws::251245|r |cRXP_WARN_unterwegs|r. Plündert sie für |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    *|cRXP_WARN_Priorisiert sie|r
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #optional
    #completewith BadwindBennicA
    >>Tötet |cRXP_ENEMY_Galestriders::251661|r |cRXP_WARN_unterwegs|r. Plündert sie für |T133972:0|t[|cRXP_LOOT_Strider Fleisch|r] und |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    *|cRXP_WARN_Priorisiert sie|r
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step << Horde
    #loop
    .goto 2521,46.13,39.79,25,0
    .goto 2521,46.9,38.84,25,0
    .goto 2521,46.37,37.85,25,0
    .goto 2521,45.76,39.31,25,0
    >>Tötet |cRXP_ENEMY_High Order Apprentices::257521|r.
    .complete 94411,1 --|6/6 High Order Apprentice defeated
    .mob High Order Apprentice::257521
step << Horde
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .cooldown spell,1259686,>0,1 -- Skysight
    .goto 2521,46.597,38.121
    .cast 1259686 >>Benutzt |T1029587:0|t[Himmelssicht] für den 10%-Bewegungsgeschwindigkeitsbuff.
step
    #optional
    #completewith BadwindBennicB
    >>Tötet |cRXP_ENEMY_Highlands Bandits::251918|r. Plündert sie für |T5172975:0|t[|cRXP_LOOT_Pilfered Windstone|r].
    .complete 92517,1 --|10/10 Highlands Bandit slain
    .complete 93319,1 --|10/10 Pilfered Windstone
    .mob +Highlands Bandit::251918
step
    #optional
    #completewith next
    #label BadwindBennicA
    >>Tötet |cRXP_ENEMY_"Badwind" Bennic::255534|r.
    .complete 92517,2 --|1/1 "Badwind" Bennic slain
    .mob "Badwind" Bennic::255534
step
    #completewith BadwindBennicA
    .goto 2521,48.813,36.434,10,0
    .goto 2521,49.355,35.793,15,0
    .goto 2521,49.537,34.325,70 >>Betretet die Höhle
step << Alliance
    #requires BadwindBennicA
    #completewith next
    .isOnQuest 92517 -- The Criminal Element
    .subzoneskip 16674,1 -- Bandit Hideout
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .goto 2521,50.59,33.51,20,0
    .cast 1259705 >>Benutzt |T236219:0|t[Leylinie erschließen] für 100% erhöhte passive Mana- und Gesundheitsregeneration.
    .usespell 1259705
step
    #requires BadwindBennicA
    #label BadwindBennicB
    .goto 2521,49.8,36.03,20,0
    .goto 2521,49.97,35.19,20,0
    .goto 2521,49.59,34.3,20,0
    .goto 2521,50.4,33.49,30,0
    .goto 2521,50.680,34.214
    >>Tötet |cRXP_ENEMY_"Badwind" Bennic::255534|r.
    .usespell 1259705
    .complete 92517,2 --|1/1 "Badwind" Bennic slain
    .mob "Badwind" Bennic::255534
step
    #optional
    #completewith OutCave
    >>Tötet |cRXP_ENEMY_Galestriders::251661|r. Plündert sie für |T133972:0|t[|cRXP_LOOT_Strider Fleisch|r] und |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    #optional
    #completewith OutCave
    >>Tötet |cRXP_ENEMY_Prideclaws::251245|r. Plündert sie für |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #label OutCave
    #loop
    .goto 2521,50.27,33.41,25,0
    .goto 2521,49.69,34.05,25,0
    .goto 2521,49.64,34.66,25,0
    .goto 2521,49.93,35.22,25,0
    .goto 2521,49.79,35.97,25,0
    .goto 2521,49.26,35.91,25,0
    .goto 2521,48.82,36.47,25,0
    .goto 2521,49.43,38.66,40,0
    .goto 2521,48.02,38.41,40,0
    .goto 2521,47.75,36.19,40,0
    .goto 2521,48.93,36.38,40,0
    >>Tötet |cRXP_ENEMY_Highlands Bandits::251918|r. Plündert sie für |T5172975:0|t[|cRXP_LOOT_Pilfered Windstone|r].
    .complete 92517,1 --|10/10 Highlands Bandit slain
    .complete 93319,1 --|10/10 Pilfered Windstone
    .mob +Highlands Bandit::251918
step
    #optional
    #completewith To Shendalar
    >>Tötet |cRXP_ENEMY_Galestriders::251661|r |cRXP_WARN_unterwegs|r.
    *Plündert sie für |T133972:0|t[|cRXP_LOOT_Strider Fleisch|r] und |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    -- *|cRXP_WARN_While the Tornado speed buff is active, avoid killing them|r.
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    #optional
    #completewith To Shendalar
    >>Tötet |cRXP_ENEMY_Prideclaws::251245|r |cRXP_WARN_unterwegs|r.
    *Plündert sie für |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    -- *|cRXP_WARN_While the Tornado speed buff is active, avoid killing them|r.
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #label To Shendalar
    .isQuestComplete 94411 << Horde -- Meddlesome Mages
    .isOnQuest 94413 << Alliance -- A Magical Affront
    .isQuestNotComplete 94413 << Alliance -- A Magical Affront
    .goto 2521,43.86,43.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zerril Softbreeze::251905|r und kauft 5 |T134059:0|t[Milde Gewürze].
    .vendor 251905 >>Verkauft Müll
    .collect 2678,5 -- Mild Spices
    *Nicht sell |T133970:0|t[Stringy Fleisch], |T132832:0|t[Kleines Eis], |T133972:0|t[Strider Fleisch], oder |T132889:0|t[Linen Stoff]. << Alliance
    *Nicht sell |T132832:0|t[Kleines Eis], |T133972:0|t[Strider Fleisch], oder |T132889:0|t[Linen Stoff]. << Horde
    *|cRXP_WARN_Wir brauchen sie für Kochkunst später|r.
    .target Zerril Softbreeze::251905
    .skipgossipid 137550
step
    .goto 2521,43.850,43.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    .train 2550 >>Erlernen |T133971:0|t[Kochlehrling]
    .skipgossipid 137551
    .target Zerril Softbreeze::251905
step -- for people who send the items over
    .isQuestComplete 92553 -- Restocking the Larders
    .isOnQuest 94413 << Alliance -- A Magical Affront
    .isQuestNotComplete 94413 << Alliance -- A Magical Affront
    .isQuestComplete 94411 << Horde -- Meddlesome Mages
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    .turnin 92553 >>Gebt die Quest Vorräte auffüllen the Larders ab
    .target Zerril Softbreeze::251905
step
    .isQuestTurnedIn 92553 -- Restocking the Larders
    .isOnQuest 94413 << Alliance -- A Magical Affront
    .isQuestNotComplete 94413 << Alliance -- A Magical Affront
    .isQuestComplete 94411 << Horde -- Meddlesome Mages
    .train 2550,3 -- Cooking Trained
    .itemcount 6889,1 -- Small Egg
    .goto 2521,43.86,43.85
    +Benutzt das Makro unten mit |T132834:0|t[Kräutergebackenes Ei], um so viel wie möglich herzustellen.
    *|cRXP_WARN_Die meisten Buff-Speisen gewähren 5% erhöhte Erfahrung durch Tötungen für 15 Minuten. Versucht, eine hohe Uptime bei diesem Buff zu behalten, während ihr aufsteigt.|r.
    *|cRXP_BUY_Kauft 5-20|r |T134059:0|t[Milde Gewürze] |cRXP_BUY_von|r |cRXP_FRIENDLY_Zerril Softbreeze|r |cRXP_WARN_falls ihr es nicht schon getan habt|r.
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_Ihr müsst möglicherweise das Makro zweimal drücken|r.
    .macro Herb Baked Egg,132834 >>Kräutergebackenes Ei
step
    .isOnQuest 92553 -- Restocking the Larders
    .isQuestNotComplete 92553 -- Restocking the Larders
    .isOnQuest 94413 << Alliance -- A Magical Affront
    .isQuestNotComplete 94413 << Alliance -- A Magical Affront
    .isQuestComplete 94411 << Horde -- Meddlesome Mages
    .train 2550,3 -- Cooking Trained
    .itemcount 6888,<1 -- Herb Baked Egg
    .itemcount 6889,1 -- Small Egg
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.86,43.85
    +Benutzt das Makro unten mit |T132834:0|t[Kräutergebackenes Ei], um 1 für den Erfahrungs-Buff herzustellen.
    *|cRXP_WARN_Die meisten Buff-Speisen gewähren 5% erhöhte Erfahrung durch Tötungen für 15 Minuten. Versucht, eine hohe Uptime bei diesem Buff zu behalten, während ihr aufsteigt.|r.
    *|cRXP_BUY_Kauft 5-20|r |T134059:0|t[Milde Gewürze] |cRXP_BUY_von|r |cRXP_FRIENDLY_Zerril Softbreeze|r |cRXP_WARN_falls ihr es nicht schon getan habt|r.
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_Ihr müsst möglicherweise das Makro zweimal drücken|r.
    .macro Herb Baked Egg,132834 >>Kräutergebackenes Ei
step
    .isOnQuest 92553 -- Restocking the Larders
    .isQuestNotComplete 92553 -- Restocking the Larders
    .isOnQuest 94413 << Alliance -- A Magical Affront
    .isQuestNotComplete 94413 << Alliance -- A Magical Affront
    .isQuestComplete 94411 << Horde -- Meddlesome Mages
    .itemcount 6889,>3 -- Small Egg
    .train 2550,3 -- Cooking Trained
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.86,43.85
    +Benutzt das Makro unten mit |T132834:0|t[Kräutergebackenes Ei], um jedes Kleine Ei außer den 3 für 'Vorräte auffüllen' reservierten herzustellen.
    *|cRXP_WARN_Behaltet mindestens 3 Kleine Eier für eine spätere Quest.|r
    *|cRXP_WARN_Die meisten Buff-Speisen gewähren 5% erhöhte Erfahrung durch Tötungen für 15 Minuten. Versucht, eine hohe Uptime bei diesem Buff zu behalten, während ihr aufsteigt.|r.
    *|cRXP_BUY_Kauft 5-20|r |T134059:0|t[Milde Gewürze] |cRXP_BUY_von|r |cRXP_FRIENDLY_Zerril Softbreeze|r |cRXP_WARN_falls ihr es nicht schon getan habt|r.
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_Ihr müsst möglicherweise das Makro zweimal drücken|r.
    .macro Herb Baked Egg,132834 >>Kräutergebackenes Ei

--Class Trainer Backup
step << Rogue
    .money <0.02
    .train 1777,1 -- Gouge (Rank 2) Not Trained
    .xp <6,1
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Miriaan Mistblade::254087|r
    .train 1757 >>Erlernen |T136189:0|t[Finsterer Stoß (Rang 2)]
    .train 1776 >>Erlernt |T132155:0|t[Solarplexus]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087

--Weapon Backup
step << Hunter
    .money <0.0285
    .isOnQuest 96638 --The Adventurer
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tephri Thriceforged::257421|r
    >>|cRXP_BUY_kaufe und rüste ein|r |T135499:0|t[Hornholz-Doppelbogen] aus
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Tephri Thriceforged::257421

--Weapon Backup
step << Warrior/Paladin
    .money <0.0701
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
    .isOnQuest 96638 --The Adventurer
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.8,44.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tephri Thriceforged::257421|r und buy und equip a |T133053:0|t[Hölzerner Schlaghammer].
    .collect 2493,1 -- Wooden Mallet
    .target Tephri Thriceforged::257421

--Weapon Backup
step << Rogue
    .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.81
    .isOnQuest 96638 --The Adventurer
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.8,44.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tephri Thriceforged::257421|r und buy und equip a |T135321:0|t[Gladius].
    .collect 2488,1 -- Gladius
    .target Tephri Thriceforged::257421

--Weapon Backup
step << Shaman
    .money <0.0504
    .isOnQuest 96638 --The Adventurer
    .subzoneskip 16624,1 -- Shen'dar Village
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tephri Thriceforged::257421|r
    >>|cRXP_BUY_Buy und equip a|r |T135145:0|t[Wanderstecken]
    .collect 2495,1 --Collect Walking Stick (1)
    .target Tephri Thriceforged::257421

step << Rogue/Warrior/Paladin/Shaman
    #optional
    .itemcount 2835,1 -- Rough Stone
    .goto 2521,44.89,44.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aedi Thriceforged::251913|r.
    *|cRXP_WARN_Überspringt diesen Schritt, falls ihr bereits zwei Berufe habt|r.
    .train 2018 >>Erlerne |T136241:0|t[Schmiedekunst]
    .target Aedi Thriceforged::251913
step << Rogue/Warrior/Paladin/Shaman
    #optional
    .itemcount 2835,1 -- Rough Stone
    .train 2018,3 -- Blacksmithing Trained
    #completewith next
    +Öffnet |T136241:0|t[Schmiedekunst] und fertigt einen |T135248:0|t[Rauer Wetzstein] an und wendet ihn an. << Rogue
    +Öffnet |T136241:0|t[Schmiedekunst] und fertigt einen |T135255:0|t[Rauer Gewichtsstein] an und wendet ihn an.  << Warrior/Paladin/Shaman
    .usespell 2018
step << Rogue/Warrior/Paladin/Shaman
    #optional
    #completewith Turn in The Adventurer
    .train 2018,3 -- Blacksmithing Trained
    +Brecht die Schmiedekunst ab oder fahrt damit fort.
-- step << Mage/Druid/Shaman/Priest/Warlock/Paladin/Rogue/Warrior
step
    .goto 2521,44.465,44.966
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Teeri Wellwind::251906|r
    .target Teeri Wellwind::251906
    .turnin 93319 >>Gebt die Quest Bestohlen Windstones ab
--Weapon Backup
step << Shaman
    .money <0.0504
    .isOnQuest 96638 --The Adventurer
    .subzoneskip 16624,1 -- Shen'dar Village
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tephri Thriceforged::257421|r
    >>|cRXP_BUY_Buy und equip a|r |T135145:0|t[Wanderstecken]
    .collect 2495,1 --Collect Walking Stick (1)
    .target Tephri Thriceforged::257421
-- step << Mage/Druid/Shaman/Priest/Warlock/Paladin/Rogue/Warrior
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .isOnQuest 96638 -- The Adventurer
    .goto 2521,44.71,45.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Veena Vericloud::254358|r
    .vendor 254358 >>|cRXP_BUY_Kauft eine|r |T133634:0|t[Klein Brown Pouch] |cRXP_WARN_falls ihr könnt|r.
    *|cRXP_BUY_Kauft maximal 10|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihr|r << Mage/Druid/Shaman/Priest/Warlock/Paladin
    *|cRXP_WARN_Wenn ihr Taschen anlegt, achtet darauf, dass die Reagenz-Tasche von Euch im dedizierten Reagenzplatz ist.|r.
    .collect 2946,1 >>|cRXP_BUY_Buy a|r |T135641:0|t[Ausbalancierter Wurfdolch]. << Rogue/Warrior
    *Nicht sell |T133970:0|t[Stringy Fleisch], |T132832:0|t[Kleines Eis], |T133972:0|t[Strider Fleisch], oder |T132889:0|t[Linen Stoff]. << Alliance
    *Nicht sell |T132832:0|t[Kleines Eis], |T133972:0|t[Strider Fleisch], oder |T132889:0|t[Linen Stoff]. << Horde
    .target Veena Vericloud::254358

--Class Trainer Backup
step << Warrior
    .money <0.01
    .xp <6,1
    .goto 2521,44.95,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corsan Earthrazer::254088|r
    .train 3127 >> Erlernt |T132269:0|t[Parieren]
    .skipgossipid 136813
    .target Corsan Earthrazer::254088

--Class Trainer Backup
step << Hunter
    .money <0.02
    .xp <6,1
    .goto 2521,45.263,44.236
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elayaa Easewind::254084|r.
    .train 3044 >>Erlernt |T132218:0|t[Arkaner Schuss]
    .train 1130 >>Erlernt |T132212:0|t[Mal des Jägers]
    .skipgossipid 136808
    .target Elayaa Easewind::254084

--Class Trainer Backup
step << Druid
    .money <0.02
    .xp <6,1
    .goto 2521,45.154,44.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Naeluna Rasche Heilung::254081|r
    .train 467 >>Erlernt |T136104:0|t[Dornen]
    .train 5177 >>Erlernen |T136006:0|t[Zorn (Rang 2)]
    .skipgossipid 136805
    .target Naeluna Swiftmend::254081

--Class Trainer Backup
step << Mage
    .money <0.03
    .xp <6,1
    .goto 2521,45.1,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dorii Brightwhisper::251379|r.
    .train 143 >>Erlernen |T135812:0|t[Feuerball (Rang 2)]
    .train 2136 >>Erlernt |T135807:0|t[Feuerschlag]
    .train 1296017 >>Erlernen |T8188276:0|t[Comprehend Rolle]
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379
step << Horde
    .goto 2521,43.518,44.783
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Illaya Amberwind::251902|r.
    .turnin 94411 >>Gebt die Quest Meddlesome Mages ab
    .target Illaya Amberwind::251902

--Class Trainer Backup
step << Horde Shaman
    .money <0.01
    .xp <6,1
    .goto 2521,43.454,44.872
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aarnor Galestrike::254082|r
    .trainer >>Trainiere deine Klassenfähigkeiten
    .target Aarnor Galestrike::254082
step
    .goto 2521,43.37,45.86
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Kopfgeld verfügbar: Vulgara die Unersättliche!|r
    .accept 93318 >>Akzeptiert die Quest WANTED: Vulgara die Unersättliche
    .target Bounty Available: Vulgara the Insatiable!
-- step << Warrior/Rogue
step
    .goto 2521,43.073,46.306
    .itemcount 2589,5 -- Linen Cloth
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Naleeia Tattermend::257018|r.
    .train 3273 >>Erlernen Erste Hilfe
    .skipgossipid 137555
    .target Naleeia Tattermend::257018
step << Rogue/Warrior
    .goto 2521,43.073,46.306
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Naleeia Tattermend::257018|r.
    .train 3273 >>Erlernen Erste Hilfe
    .skipgossipid 137555
    .target Naleeia Tattermend::257018
step
    #label Turn in The Adventurer
    .goto 2521,41.67,44.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Raan Wildwind::263664|r.
    .turnin 96638 >>Gebt die Quest The Adventurer ab
    .target Raan Wildwind::263664
    .accept 96101 >>Akzeptiert die Quest Die weite Wildnis
step
    .goto 2521,41.67,44.79
    >>Klickt das Makro im Fenster der Aktiv Gegenstände, um euch zu setzen.
    .complete 96101,1 --1/1 Use the /sit emote near the campfire
    .macro Sit,134400 >>Sitzen
    .timer 59,Zeit until completion 1
step << Alliance
    .aura -1289723
    .train 3273,3 -- First Aid Trained
    .itemcount 2589,1 -- Linen Cloth
    .train 2550,3 -- Cooking Trained
    .itemcount 2672,1 --Stringy Wolf Meat
    >>|cRXP_WARN_Bewegt euch nicht und springt nicht, bis die Quest abgeschlossen ist|r.
    *|cRXP_WARN_Benutzt die Makros im "Aktiv Gegenstände Frame", um Folgendes herzustellen:|r |T133685:0|t[Linen Bandages] und |T133974:0|t[Verkohltes Wolfsfleisch] für spätere Quests.
    *Ihr könnt hier craften und euch selbst neu bufffen, ohne den Questfortschritt zu verlieren. Ihr könnt hier auch Buffessen konsumieren, um 5% erhöhte Erfahrung aus Kills zu erhalten.
    .complete 96101,2 --Gain the Boosted Rest buff
    *|cRXP_WARN_Ihr müsst möglicherweise das Makro zweimal drücken|r.
    .macro First Aid,135966 >>Erste Hilfe
    .macro Cooking,133971 >>Kochkunst
step
    .aura -1289723
    .train 3273,3 -- First Aid Trained
    .itemcount 2589,1 -- Linen Cloth
    >>|cRXP_WARN_Bewegt euch nicht und springt nicht, bis die Quest abgeschlossen ist|r.
    *|cRXP_WARN_Drückt das Makro im "Aktiv Gegenstände Frame", um herzustellen|r |T133685:0|t[Linen Bandages] für eine spätere Quest.
    *Ihr könnt hier craften und euch selbst neu bufffen, ohne den Questfortschritt zu verlieren. Ihr könnt hier auch Buffessen konsumieren, um 5% erhöhte Erfahrung aus Kills zu erhalten.
    .complete 96101,2 --Gain the Boosted Rest buff
    *|cRXP_WARN_Ihr müsst möglicherweise das Makro zweimal drücken|r.
    .macro First Aid,135966 >>Erste Hilfe
step << Alliance
    .aura -1289723
    .train 2550,3 -- Cooking Trained
    .itemcount 2672,1 --Stringy Wolf Meat
    >>|cRXP_WARN_Bewegt euch nicht und springt nicht, bis die Quest abgeschlossen ist|r.
    *|cRXP_WARN_Drückt das Makro im "Aktiv Gegenstände Frame", um zu craften|r |T133974:0|t[Verkohltes Wolfsfleisch] für eine spätere Quest|r
    *Ihr könnt craften und euch erneut buffen, ohne Questguthaben zu verlieren. Ihr könnt auch hier Buff-Nahrung essen, um 5% erhöhte Erfahrung aus Kills zu erhalten.
    .complete 96101,2 --Gain the Boosted Rest buff
    *|cRXP_WARN_Ihr müsst möglicherweise das Makro zweimal drücken|r.
    .macro Cooking,133971 >>Kochkunst
step
    .aura -1289723
    >>|cRXP_WARN_Bewegt euch nicht und springt nicht, bis die Quest abgeschlossen ist|r.
    *Ihr könnt craften und euch erneut buffen, ohne Questguthaben zu verlieren. Ihr könnt auch hier Buff-Nahrung essen, um 5% erhöhte Erfahrung aus Kills zu erhalten.
    .complete 96101,2 --Gain the Boosted Rest buff
step
    .aura 1289723
    >>Der Vorgang wurde abgebrochen. Bitte benutzt das SIT-Makro nochmal, um ihn neu zu starten.
    *|cRXP_WARN_Bewegt euch nicht und springt nicht, bis die Quest abgeschlossen ist|r.
    .complete 96101,2 --Gain the Boosted Rest buff
    .timer 59,Zeit until completion 2
    .macro Sit,134400 >>Sitzen
step << Alliance
    .train 3273,3 -- First Aid Trained
    .itemcount 2589,1 -- Linen Cloth
    .train 2550,3 -- Cooking Trained
    .itemcount 2672,1 --Stringy Wolf Meat
    >>|cRXP_WARN_Bewegt euch nicht und springt nicht, bis die Quest abgeschlossen ist|r.
    *|cRXP_WARN_Benutzt die Makros im "Aktiv Gegenstände Frame", um Folgendes herzustellen:|r |T133685:0|t[Linen Bandages] und |T133974:0|t[Verkohltes Wolfsfleisch] für spätere Quests.
    *Ihr könnt hier craften und euch selbst neu bufffen, ohne den Questfortschritt zu verlieren. Ihr könnt hier auch Buffessen konsumieren, um 5% erhöhte Erfahrung aus Kills zu erhalten.
    .complete 96101,2 --Gain the Boosted Rest buff
    *|cRXP_WARN_Ihr müsst möglicherweise das Makro zweimal drücken|r.
    .macro First Aid,135966 >>Erste Hilfe
    .macro Cooking,133971 >>Kochkunst
step
    .train 3273,3 -- First Aid Trained
    .itemcount 2589,1 -- Linen Cloth
    >>|cRXP_WARN_Bewegt euch nicht und springt nicht, bis die Quest abgeschlossen ist|r.
    *|cRXP_WARN_Drückt das Makro im "Aktiv Gegenstände Frame", um herzustellen|r |T133685:0|t[Linen Bandages] für eine spätere Quest.
    *Ihr könnt hier craften und euch selbst neu bufffen, ohne den Questfortschritt zu verlieren. Ihr könnt hier auch Buffessen konsumieren, um 5% erhöhte Erfahrung aus Kills zu erhalten.
    .complete 96101,2 --Gain the Boosted Rest buff
    *|cRXP_WARN_Ihr müsst möglicherweise das Makro zweimal drücken|r.
    .macro First Aid,135966 >>Erste Hilfe
step << Alliance
    .train 2550,3 -- Cooking Trained
    .itemcount 2672,1 --Stringy Wolf Meat
    >>|cRXP_WARN_Bewegt euch nicht und springt nicht, bis die Quest abgeschlossen ist|r.
    *|cRXP_WARN_Drückt das Makro im "Aktiv Gegenstände Frame", um herzustellen|r |T133974:0|t[Verkohltes Wolfsfleisch] für eine spätere Quest|r
    *Ihr könnt hier craften und euch selbst neu bufffen, ohne den Questfortschritt zu verlieren. Ihr könnt hier auch Buffessen konsumieren, um 5% erhöhte Erfahrung aus Kills zu erhalten.
    .complete 96101,2 --Gain the Boosted Rest buff
    *|cRXP_WARN_Ihr müsst möglicherweise das Makro zweimal drücken|r.
    .macro Cooking,133971 >>Kochkunst
step
    >>|cRXP_WARN_Bewegt euch nicht und springt nicht, bis die Quest abgeschlossen ist|r.
    *Ihr könnt hier craften und euch selbst neu bufffen, ohne den Questfortschritt zu verlieren. Ihr könnt hier auch Buffessen konsumieren, um 5% erhöhte Erfahrung aus Kills zu erhalten.
    .complete 96101,2 --Gain the Boosted Rest buff
step
    .goto 2521,41.67,44.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Raan Wildwind::263664|r.
    .turnin 96101 >>Gebt die Quest Die weite Wildnis ab
    .target Raan Wildwind::263664

-- step
--     #completewith next
--     .train 2575,3 -- Mining Trained
--     .complete 97970 >>Complete Camping 101: Mining
-- step
--     #completewith next
--     .train 8613,3 -- Skinning Trained
--     .complete 97971 >>Complete Camping 101: Skinning
-- step
--     #completewith next
--     .complete 96646 >>Complete Camping 101: Cooking
-- step
--     #completewith next
--     .train 2366,3 -- Herbalism Trained
--     .complete 97968 >>Complete Camping 101: Herbalism
-- step
--     #completewith next
--     .train 3273,3 -- First Aid Trained
--     .complete 97965 >>Complete Camping 101: First Aid
-- step
--     #completewith next
--     .train 7620,3 -- Fishing Trained
--     .complete 97967 >>Complete Camping 101: Fishing
-- step
--     #completewith next
--     .train 2259,3 -- Alchemy Trained
--     .complete 97963 >>Complete Camping 101: Alchemy
-- step
--     #completewith next
--     .train 2018,3 -- Blacksmithing Trained
--     .complete 97964 >>Complete Camping 101: Blacksmithing
-- step
--     #completewith next
--     .train 3908,3 -- Tailoring Trained
--     .complete 97973 >>Complete Camping 101: Tailoring
-- step
--     #completewith next
--     .train 7411,3 -- Enchanting Trained
--     .complete 98286 >>Complete Camping 101: Enchanting
-- step
--     #completewith next
--     .train 2108,3 -- Leatherworking Trained
--     .complete 97969 >>Complete Camping 101: Leatherworking


step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 2575,3 -- Mining Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97970 >>Akzeptiert die Quest Lager aufschlagen 101: Bergbau
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 8613,3 -- Skinning Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97971 >>Akzeptiert die Quest Lager aufschlagen 101: Kürschnerei
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 96646 >>Akzeptiert die Quest Lager aufschlagen 101: Kochkunst
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 2366,3 -- Herbalism Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97968 >>Akzeptiert die Quest Lager aufschlagen 101: Kräuterkunde
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 3273,3 -- First Aid Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97965 >>Akzeptiert die Quest Lager aufschlagen 101: Erste Hilfe
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 7620,3 -- Fishing Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97967 >>Akzeptiert die Quest Lager aufschlagen 101: Angeln
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 2259,3 -- Alchemy Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97963 >>Akzeptiert die Quest Lager aufschlagen 101: Alchemie
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 2018,3 -- Blacksmithing Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97964 >>Akzeptiert die Quest Lager aufschlagen 101: Schmiedekunst
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 3908,3 -- Tailoring Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97973 >>Akzeptiert die Quest Lager aufschlagen 101: Schneiderei
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 7411,3 -- Enchanting Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 98286 >>Akzeptiert die Quest Lager aufschlagen 101: Verzauberkunst
    .target Raan Wildwind::263664
step
    .train 2108,3 -- Leatherworking Trained
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97969 >>Akzeptiert die Quest Lager aufschlagen 101: Lederverarbeitung
    .target Raan Wildwind::263664
step
    #optional
    #completewith HippogryphHarassmentA
    +|cRXP_WARN_Wenn ein Tornado in der Nähe ist, berührt ihn, um 40% erhöhte Bewegungsgeschwindigkeit für 5 Minuten zu erhalten. Wenn ihr Schaden verursacht, wird der Effekt entfernt|r.
step
    #optional
    #completewith HippogryphHarassmentA
    >>Tötet |cRXP_ENEMY_Prideclaws::251245|r. Plündert sie für |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #optional
    #completewith HippogryphHarassmentA
    >>Tötet |cRXP_ENEMY_Galestriders::251661|r. Plündert sie für |T133972:0|t[|cRXP_LOOT_Strider Fleisch|r] und |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step << Alliance
    #optional
    #completewith next
    >>Tötet |cRXP_ENEMY_Windshaper Novice Seers::257532|r.
    .usespell 1259705
    .complete 94413,1 --6/6 Windshaper Novice Seer defeated
    .mob Windshaper Novice Seer::257532
step << Alliance
    .isOnQuest 94413 -- A Magical Affront
    .isQuestNotComplete 94413 -- A Magical Affront
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .goto 2521,39,47.37
    .cast 1259705 >>Benutzt |T236219:0|t[Leylinie erschließen] für 100% erhöhte passive Mana- und Gesundheitsregeneration.
    .usespell 1259705
step << Alliance
    #loop
    .goto 2521,37.96,46.86,40,0
    .goto 2521,38.75,48.72,40,0
    .goto 2521,38.99,47.24,40,0
    >>Tötet |cRXP_ENEMY_Windshaper Novice Seers::257532|r.
    .usespell 1259705
    .complete 94413,1 --6/6 Windshaper Novice Seer defeated
    .mob Windshaper Novice Seer::257532
step
    .isOnQuest 92516 -- Hippogryph Harassment
    .isQuestNotComplete 92516 -- Hippogryph Harassment
    .subzoneskip 16623,1 -- Shen'dar Highlands
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,36.44,50.93
    .cast 1259416 >>Springt vom Berg ab und benutzt |T132845:0|t[Gehen on Luft], um zum Wegpunkt zu fliegen.
    *|cRXP_WARN_Seid vorsichtig in der Nähe des Wegpunkts; zwei Greifen patrouillieren die Gegend|r.
    .usespell 1259416

--here It's possible to change this in such a way that we first guarantee Protector & Matriarch then Youth

step << Horde
    #completewith HippogryphHarassmentA
    #hidewindow
    #loop
    .goto 2521,36.44,50.93,40,0
    .goto 2521,35.16,51.07,35,0
    .goto 2521,34.12,51.6,45,0
    .goto 2521,34.52,52.76,45,0
    .goto 2521,35.12,54.08,38,0
    .goto 2521,35.86,53.01,40,0
    .goto 2521,36.02,54.28,40,0
    .goto 2521,35.71,55.57,40,0
    .goto 2521,35.63,57.34,30,0
    .goto 2521,34.6,57.11,35,0
    .goto 2521,35.51,58.08,40,0
    .goto 2521,36.61,58.64,40,0
    .goto 2521,37.13,56.6,40,0
    .goto 2521,38.61,56.89,40,0
    .goto 2521,39.88,57.56,40,0
    .goto 2521,39.1,55.85,40,0
    .goto 2521,33.1,54.67,40,0
    .goto 2521,34.7,52.68,40,0
    .goto 2521,34.25,51.19,40,0
    +1
step << Alliance
    #completewith HippogryphHarassmentA
    #hidewindow
    #loop
    .goto 2521,36.44,50.93,40,0
    .goto 2521,35.16,51.07,35,0
    .goto 2521,34.12,51.6,45,0
    .goto 2521,34.52,52.76,45,0
    .goto 2521,35.12,54.08,38,0
    .goto 2521,35.86,53.01,40,0
    .goto 2521,36.02,54.28,40,0
    .goto 2521,35.71,55.57,40,0
    .goto 2521,35.63,57.34,30,0
    .goto 2521,34.6,57.11,35,0
    .goto 2521,35.51,58.08,40,0
    .goto 2521,36.61,58.64,40,0
    .goto 2521,37.13,56.6,40,0
    .goto 2521,38.61,56.89,40,0
    .goto 2521,39.88,57.56,40,0
    .goto 2521,39.1,55.85,40,0
    .goto 2521,33.1,54.67,40,0
    .goto 2521,34.7,52.68,40,0
    .goto 2521,34.25,51.19,40,0
    +1
step
    #optional
    #completewith next
    >>Tötet |cRXP_ENEMY_Hippogryph Youths::251291|r, |cRXP_ENEMY_Hippogryph Protectors::251284|r und |cRXP_ENEMY_Hippogryph Matriarch::251261|r.
    *|cRXP_WARN_Plündert sie für wertvollen Händlerschrott, um Waffenverbesserungen und Klassentraining zu finanzieren|r.
    *|cRXP_WARN_Priorisiert |cRXP_ENEMY_Matriarchin::251261|r|r
    .complete 92516,1 --|8/8 Hippogryph Youth slain
    .mob +Hippogryph Youth::251291
    .complete 92516,2 --|6/6 Hippogryph Protector slain
    .mob +Hippogryph Protector::251284
    .complete 92516,3 --|1/1 Hippogryph Matriarch slain
    .mob +Hippogryph Matriarch::251261
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Hippogryph Downs|r.
    .complete 93951,1 --|8/8 Hippogryph Down
step
    #label HippogryphHarassmentA
    >>Tötet |cRXP_ENEMY_Hippogryph Youths::251291|r, |cRXP_ENEMY_Hippogryph Protectors::251284|r und |cRXP_ENEMY_Hippogryph Matriarch::251261|r.
    *|cRXP_WARN_Plündert sie für wertvollen Händlerschrott, um Waffenverbesserungen und Klassentraining zu finanzieren|r.
    *|cRXP_WARN_Priorisiert |cRXP_ENEMY_Matriarchin::251261|r|r
    .complete 92516,1 --|8/8 Hippogryph Youth slain
    .mob +Hippogryph Youth::251291
    .complete 92516,2 --|6/6 Hippogryph Protector slain
    .mob +Hippogryph Protector::251284
    .complete 92516,3 --|1/1 Hippogryph Matriarch slain
    .mob +Hippogryph Matriarch::251261
step
    #optional
    #completewith VulgarasHeadA
    >>Tötet |cRXP_ENEMY_Galestriders::251661|r. Plündert sie für |T133972:0|t[|cRXP_LOOT_Strider Fleisch|r] und |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    #optional
    #completewith VulgarasHeadA
    >>Tötet |cRXP_ENEMY_Prideclaws::251245|r. Plündert sie für |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #label VulgarasHeadA
    .goto 2521,43.079,51.028,15,0
    .goto 2521,42.978,51.803,15,0
    .goto 2521,42.75,52.68
    >>Tötet |cRXP_ENEMY_Vulgara::254589|r |cRXP_WARN_(Stufe 8 Elite)|r auf dem Berg. Plündert es für |T4218759:0|t[|cRXP_LOOT_Vulgara Kopf|r].
    *|cRXP_WARN_Sucht nach einer Gruppe um es zu töten oder überspringt die Quest; die Respawns sind lange|r.
    .complete 93318,1 --1/1 Vulgara's Head
    .mob Vulgara::254589
step
    #optional
    #completewith A Little Beauty
    >>Tötet |cRXP_ENEMY_Galestriders::251661|r. Plündert sie für |T133972:0|t[|cRXP_LOOT_Strider Fleisch|r] und |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
-- step -- if you want to force finish here
--     #loop
--     .goto 2521,43.07,48.51,40,0
--     .goto 2521,37.56,43.24,40,0
--     .goto 2521,40.04,41.38,40,0
--     >>Kill |cRXP_ENEMY_Prideclaws::251245|r. Loot them for the |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
--     .complete 92515,1 --10/10 Prideclaw Pelt
--     .mob Prideclaw::251245
step
    #optional
    #completewith A Little Beauty
    >>Tötet |cRXP_ENEMY_Prideclaws::251245|r. Plündert sie für |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    .isQuestComplete 92516 -- Hippogryph Harassment
    .train 3273,3 -- First Aid Trained
    .itemcount 2589,1 -- Linen Cloth
    .goto 2521,43.08,46.31
    >>Drückt das Makro im "Aktiv Gegenstände Frame", um |T133685:0|t[Leinenbandagen] zu craften.
    *|cRXP_WARN_Überspringt dies, falls ihr Fertigkeitsstufe 20 nicht erreichen könnt|r
    .complete 97965,1 >>Fertig Lager aufschlagen 101: Erste Hilfe
    *|cRXP_WARN_Ihr müsst möglicherweise das Makro zweimal drücken|r.
    .macro First Aid,135966 >>Erste Hilfe
step
    .train 3273,3 -- First Aid Trained
    .isQuestComplete 97965 -- Camping 101: First Aid
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,43.08,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Naleeia Tattermend::257018|r im Turm
    .turnin 97965 >>Gebt die Quest Lager aufschlagen 101: Erste Hilfe ab
    .target Naleeia Tattermend::257018
step
    .train 7411,3 -- Enchanting Trained
    .isQuestComplete 98286 -- Camping 101: Enchanting
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,43.25,43.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nasalanna Windsinger::257020|r
    .turnin 98286 >>Gebt die Quest Lager aufschlagen 101: Verzauberkunst ab
    .target Nasalanna Windsinger::257020
step
    .train 8613,3 -- Skinning Trained
    .isQuestComplete 97971 -- Camping 101: Skinning
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,43.3,43.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mendalass Tattermend::257024|r
    .turnin 97971 >>Gebt die Quest Lager aufschlagen 101: Kürschnerei ab
    .target Mendalass Tattermend::257024
step
    .isQuestComplete 92516 -- Hippogryph Harassment
    .isQuestComplete 92553 -- Restocking the Larders
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zerril Softbreeze::251905|r und buy 5 |T134059:0|t[Milde Gewürze]
    .vendor 251905 >>Verkauft Müll
    *Nicht sell |T133970:0|t[Stringy Fleisch], |T132832:0|t[Kleines Eis], oder |T133972:0|t[Strider Fleisch]. << Alliance
    *Nicht sell |T132832:0|t[Kleines Eis] und |T133972:0|t[Strider Fleisch]. << Horde
    *|cRXP_WARN_Wir brauchen sie für Kochkunst später|r.
    .collect 2678,5 -- Mild Spices
    .skipgossipid 137550
    .target Zerril Softbreeze::251905
step
    .isQuestComplete 92516 -- Hippogryph Harassment
    .isQuestComplete 92553 -- Restocking the Larders
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    .turnin 92553 >>Gebt die Quest 'Vorräte auffüllen' ab
    .target Zerril Softbreeze::251905
step
    .train 2550,3 -- Cooking Trained
    .isQuestComplete 96646 -- Camping 101: Cooking
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    .turnin 96646 >>Gebt die Quest Lager aufschlagen 101 ab: Kochkunst
    .target Zerril Softbreeze::251905
step
    .isQuestTurnedIn 92553 -- Restocking the Larders
    .isQuestComplete 92516 -- Hippogryph Harassment
    .train 2550,3 -- Cooking Trained
    .itemcount 6889,1 -- Small Egg
    .goto 2521,43.86,43.85
    +Benutzt das Makro unten mit |T132834:0|t[Kräutergebackenes Ei], um so viel wie möglich herzustellen.
    *|cRXP_WARN_Die meisten Buff-Speisen gewähren 5% erhöhte Erfahrung durch Tötungen für 15 Minuten. Versucht, eine hohe Uptime bei diesem Buff zu behalten, während ihr aufsteigt.|r.
    *|cRXP_BUY_Kauft 5-20|r |T134059:0|t[Milde Gewürze] |cRXP_BUY_von|r |cRXP_FRIENDLY_Zerril Softbreeze|r |cRXP_WARN_falls ihr das noch nicht getan habt|r.
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_Ihr müsst möglicherweise das Makro zweimal drücken|r.
    .macro Herb Baked Egg,132834 >>Kräutergebackenes Ei
step
    .isOnQuest 92553 -- Restocking the Larders
    .isQuestNotComplete 92553 -- Restocking the Larders
    .isQuestComplete 92516 -- Hippogryph Harassment
    .train 2550,3 -- Cooking Trained
    .itemcount 6888,<1 -- Herb Baked Egg
    .itemcount 6889,1 -- Small Egg
    .goto 2521,43.86,43.85
    +Benutzt das Makro unten mit |T132834:0|t[Kräutergebackenes Ei], um 1 für den Erfahrungs-Buff herzustellen.
    *|cRXP_WARN_Die meisten Buff-Speisen gewähren 5% erhöhte Erfahrung durch Tötungen für 15 Minuten. Versucht, eine hohe Uptime bei diesem Buff zu behalten, während ihr aufsteigt.|r.
    *|cRXP_BUY_Kauft 5-20|r |T134059:0|t[Milde Gewürze] |cRXP_BUY_von|r |cRXP_FRIENDLY_Zerril Softbreeze|r |cRXP_WARN_falls ihr das noch nicht getan habt|r.
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_Ihr müsst möglicherweise das Makro zweimal drücken|r.
    .macro Herb Baked Egg,132834 >>Kräutergebackenes Ei
step
    .isOnQuest 92553 -- Restocking the Larders
    .isQuestComplete 92516 -- Hippogryph Harassment
    .train 2550,3 -- Cooking Trained
    .itemcount 6889,>3 -- Small Egg
    .goto 2521,43.86,43.85
    +Benutzt das Makro unten mit |T132834:0|t[Kräutergebackenes Ei], um jedes Kleine Ei außer den 3 für 'Vorräte auffüllen' reservierten herzustellen.
    *|cRXP_WARN_Behaltet mindestens 3 Kleine Eier für eine spätere Quest.|r
    *|cRXP_WARN_Die meisten Buff-Speisen gewähren 5% erhöhte Erfahrung durch Tötungen für 15 Minuten. Versucht, eine hohe Uptime bei diesem Buff zu behalten, während ihr aufsteigt.|r.
    *|cRXP_BUY_Kauft 5-20|r |T134059:0|t[Milde Gewürze] |cRXP_BUY_von|r |cRXP_FRIENDLY_Zerril Softbreeze|r |cRXP_WARN_falls ihr das noch nicht getan habt|r.
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_Ihr müsst möglicherweise das Makro zweimal drücken|r.
    .macro Herb Baked Egg,132834 >>Kräutergebackenes Ei
step
    .train 2259,3 -- Alchemy Trained
    .isQuestComplete 97963 -- Camping 101: Alchemy
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,43.7,43.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nyassa Swiftdraught::257019|r
    .turnin 97963 >>Gebt die Quest Lager aufschlagen 101: Alchemie ab.
    .target Nyassa Swiftdraught::257019
step
    #label A Little Beauty
    .goto 2521,44.873,44.187
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Taleen Shimmerthread::251991|r
    .target Taleen Shimmerthread::251991
    .turnin 93951 >>Gebt die Quest A Little Bella ab
step
    .train 3908,3 -- Tailoring Trained
    .isQuestComplete 97973 -- Camping 101: Tailoring
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,44.88,44.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Taleen Shimmerthread::251991|r
    .turnin 97973 >>Gebt die Quest Lager aufschlagen 101: Schneiderei ab.
    .target Taleen Shimmerthread::251991
step
    .train 2018,3 -- Blacksmithing Trained
    .isQuestComplete 97964 -- Camping 101: Blacksmithing
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,44.89,44.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aedi Thriceforged::251913|r
    .turnin 97964 >>Gebt die Quest Lager aufschlagen 101: Schmiedekunst ab.
    .target Aedi Thriceforged::251913
step
    .train 2575,3 -- Mining Trained
    .isQuestComplete 97970 -- Camping 101: Mining
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,44.77,44.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Messana Crestwind::257022|r
    .turnin 97970 >>Gebt die Quest Lager aufschlagen 101: Bergbau ab.
    .target Messana Crestwind::257022
step
    .isQuestComplete 92515 -- The Problem With Prideclaws
    .isQuestAvailable 92516 -- Hippogryph Harassment
    .goto 2521,44.686,44.518
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Indari Sunseam::251993|r
    .target Indari Sunseam::251993
    .turnin 92515 >>Gebt die Quest The Problem With Prideclaws ab.
step
    .train 2108,3 -- Leatherworking Trained
    .isQuestComplete 97969 -- Camping 101: Leatherworking
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,44.69,44.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Indari Sunseam::251993|r
    .turnin 97969 >>Gebt die Quest Lager aufschlagen 101: Lederverarbeitung ab.
    .target Indari Sunseam::251993
step
    .goto 2521,44.465,44.966
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Teeri Wellwind::251906|r
    .target Teeri Wellwind::251906
    .turnin 92516 >>Gebt die Quest Hippogryph Belästigung ab
    .turnin 93319 >>Gebt die Quest Bestohlen Windstones ab
step << Shaman/Druid
    .money <0.0504
    .isQuestTurnedIn 92516 -- Hippogryph Harassment
    .isQuestTurnedIn 93319 -- Pilfered Windstones
    .subzoneskip 16624,1 -- Shen'dar Village
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tephri Thriceforged::257421|r
    >>|cRXP_BUY_Buy und equip a|r |T135145:0|t[Wanderstecken]
    .collect 2495,1 --Collect Walking Stick (1)
    .target Tephri Thriceforged::257421
step << Warrior
    .money <0.05
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 7372,1 -- Hamstring (Rank 2) Not Trained
    .train 8198,1 -- Thunder Clap (Rank 2) Not Trained
    .xp <8,1
    .goto 2521,44.95,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corsan Earthrazer::254088|r
    .train 284 >> Erlernen |T132282:0|t[Heldenhafter Stoß (Rang 2)]
    .train 1715 >> Erlernen |T132316:0|t[Kniesehne]
    .train 6343 >> Erlernt |T136105:0|t[Donnerknall]
    .skipgossipid 136813
    .target Corsan Earthrazer::254088
step
    .isQuestComplete 93318 -- WANTED: Vulgara the Insatiable
    .goto 2521,45.234,45.186
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Danarii Bellowveil::252172|r
    .target Danarii Bellowveil::252172
    .turnin 93318,1 >>Gebt die Quest WANTED: Vulgara the Unersättlich ab
step << Druid
    .money <0.04
    .subzoneskip 16624,1 -- Shen'dar Village
    .xp <8,1
    .goto 2521,45.153,44.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Naeluna Rasche Heilung::254081|r.
    .train 339 >>Erlernen |T136100:0|t[Wucherwurzeln]
    .train 5186 >>Erlernen |T136041:0|t[Heilende Berührung (Rang 2)]
    .skipgossipid 136805
    .target Naeluna Swiftmend::254081
step << Hunter
    .money <0.04
    .xp <8,1
    .goto 2521,45.263,44.236
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elayaa Easewind::254084|r.
    .train 5116 >>Erlernen |T135860:0|t[Erschütternder Schuss]
    .train 3127 >>Erlernt |T132269:0|t[Parieren]
    .train 14260 >>Erlernen |T132223:0|t[Raptorstoß (Rang 2)]
    .skipgossipid 136808
    .target Elayaa Easewind::254084
step
    .goto 2521,45.667,45.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Constable Aonda::251523|r
    .target Constable Aonda::251523
    .turnin 92517,3 >>Gebt die Quest The Criminal Element ab
    .accept 93036 >>Akzeptiert die Quest Infiltrieren the Cult
-- step << Hunter
--     .subzoneskip 16624,1 -- Shen'dar Village
--     .goto 2521,45.263,44.236
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elayaa Easewind::254084|r.
--     .train 5116 >>Train |T135860:0|t[Concussive Shot]
--     .train 3127 >>Train |T132269:0|t[Parry]
--     .train 14260 >>Train |T132223:0|t[Raptor Strike (Rank 2)]
--     .skipgossipid 136808
--     .target Elayaa Easewind::254084
--     .money <0.06
--     .xp <8,1
-- step << Horde Druid Testing something
--     .subzoneskip 16624,1 -- Shen'dar Village
--     .goto 2521,45.153,44.225
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naeluna Swiftmend::254081|r.
--     .trainer >>Train your spells
--     .target Naeluna Swiftmend::254081
--     .money <0.04
--     .xp <8,1
step
    .goto 2521,44.831,45.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sania Silverstream::251904|r
    .target Sania Silverstream::251904
    .turnin 93036 >>Gebt die Quest Infiltrieren the Cult ab
    .accept 92529 >>Akzeptiert die Quest Falaath Village
step << Alliance/Horde !Shaman
    .subzoneskip 16624,1 -- Shen'dar Village
    .isOnQuest 94413 << Alliance -- Magical Affront
    .isQuestAvailable 92529 << Horde -- Falaath Village
    .goto 2521,44.71,45.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Veena Vericloud::254358|r
    .vendor 254358 >>|cRXP_BUY_Kauft bis zu drei|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_BUY_wenn nötig|r.
    >>|cRXP_BUY_Kauft bis zu 10|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r << Druid/Mage/Priest/Warlock/Paladin/Shaman
    *|cRXP_WARN_Beim Anlegen von Taschen, stellt sicher, dass euer Zutatenbeutel im dafür vorgesehenen Zutatenbeutel-Platz ist|r.
    *Nicht sell |T133970:0|t[Stringy Fleisch], |T132832:0|t[Kleines Eis], oder |T133972:0|t[Strider Fleisch]. << Alliance
    *Nicht sell |T132832:0|t[Kleines Eis] und |T133972:0|t[Strider Fleisch]. << Horde
    .target Veena Vericloud::254358
step
    .isOnQuest 92529 -- Falaath Village
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.831,45.515
    .target Sania Silverstream::251904
    .aura 1254832 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sania Silverstream::251904|r
    .skipgossipid 135874
step << Horde Shaman
    .money <0.10
    .xp <8,1
    .goto 2521,43.454,44.872
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aarnor Galestrike::254082|r
    .trainer >>Trainiere deine Klassenfähigkeiten
    .target Aarnor Galestrike::254082
step << Shaman/Druid
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tephri Thriceforged::257421|r
    >>|cRXP_BUY_Buy und equip a|r |T135145:0|t[Wanderstecken]
    .collect 2495,1 --Collect Walking Stick (1)
    .target Tephri Thriceforged::257421
step << Horde Shaman
    .subzoneskip 16624,1 -- Shen'dar Village
    .isQuestAvailable 92529 -- Falaath Village
    .goto 2521,44.71,45.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Veena Vericloud::254358|r
    .vendor 254358 >>|cRXP_BUY_Kauft bis zu drei|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_BUY_wenn nötig|r.
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r
    *|cRXP_WARN_Wenn ihr Taschen anlegt, achtet darauf, dass die Reagenz-Tasche von Euch im dedizierten Reagenzplatz ist.|r.
    *Nicht sell |T132832:0|t[Kleines Eis] und |T133972:0|t[Strider Fleisch].
    .target Veena Vericloud::254358
step << Mage
    .money <0.06
    .xp <8,1
    .goto 2521,45.1,45.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shenaan Spellwind::254086|r
    .train 5143 >> Erlernen |T136096:0|t[Arkane Geschosse]
    .train 205 >> Erlernen |T135846:0|t[Frostblitz (Rang 2)]
    .train 118 >> Erlernt |T136071:0|t[Verwandlung]
    .skipgossipid 136807
    .target Shenaan Spellwind::254086
step << Mage
    .money <0.02
    .xp <8,1
    .goto 2521,45.1,45.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shenaan Spellwind::254086|r
    .train 5143 >> Erlernen |T136096:0|t[Arkane Geschosse]
    -- .train 205 >> Train |T135846:0|t[Frostbolt (Rank 2)]
    -- .train 118 >> Train |T136071:0|t[Polymorph]
    .skipgossipid 136807
    .target Shenaan Spellwind::254086
step << Alliance
    .goto 2521,44.979,46.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rathiril Sunlance::251903|r.
    .turnin 94413 >>Gebt die Quest A Magical Affront ab
    .target Rathiril Sunlance::251903
step
    .train 7620,3 -- Fishing Trained
    .isQuestComplete 97967 -- Camping 101: Fishing
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,45.03,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Fenn Fairweather::251992|r
    .turnin 97967 >>Gebt die Quest Lager aufschlagen 101: Angeln ab
    .target Fenn Fairweather::251992
step
    #optional
    #completewith LivingLightningA
    >>Tötet |cRXP_ENEMY_Galestriders::251661|r. Plündert sie für |T133972:0|t[|cRXP_LOOT_Strider Fleisch|r] und |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step << Horde
    #optional
    #completewith LivingLightningA
    >>Tötet |cRXP_ENEMY_Prideclaws::251245|r. Plündert sie für |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step << Alliance
    #optional
    #completewith Skypriest Aanders
    >>Tötet |cRXP_ENEMY_Prideclaws::251245|r. Plündert sie für |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    .isOnQuest 92529 -- Falaath Village
    .subzoneskip 16624,1 -- Shen'dar Village
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,45.374,53.512,25,0
    .goto 2521,46.880,56.242
    .cast 1259416 >>Springt vom Berg herunter und benutzt |T132845:0|t[Gehen on Luft], um zum Questgeber zu fliegen.
    .usespell 1259416
step
    .goto 2521,45.412,53.485,20,0
    .goto 2521,46.880,56.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Missionary Jasaan::257065|r
    .target Missionary Jasaan::257065
    .turnin 92529 >>Gebt die Quest Falaath Village ab
    .accept 92528 >>Akzeptiert die Quest Among the Faithful
    .use 2454 << Warrior/Rogue -- Elixir of Minor Strength
step
    .isOnQuest 92528 -- Among the Faithful
    .subzoneskip 16636,1 -- Falaath Village
    .goto 2521,46.89,56.24
    .target Sania Silverstream::251904
    .aura 1254832 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sania Silverstream::251904|r
    .skipgossipid 137586 -- I seem to have lost my mark of Akir. Would you please bestow it upon me once more?
step << Horde
    .isOnQuest 92528 -- Among the Faithful
    .cooldown spell,1259686,>0,1 -- Skysight
    .goto 2521,48.497,55.827
    .cast 1259686 >>Benutzt |T1029587:0|t[Himmelssicht] für den 10%-Bewegungsgeschwindigkeitsbuff.
step
    #optional
    #completewith next
    #label plans
    .goto 2521,48.74,53.89,10,0
    .goto 2521,49.06,53.48,10,0
    .goto 2521,48.76,53.68,10,0
    >>Nachdem ihr auf den Kleiderschrank geklickt habt, kehrt zur Stadt zurück.
    .complete 92528,1 --1/1 Learn about the cultists' plans
step
    #completewith plans
    .goto 2521,48.85,53.91
    .gossipoption 136768 >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf den |cRXP_PICK_Wardrobe|r |cRXP_WARN_im zweiten Stock|r.
    *|cRXP_WARN_Falls someone already did, it will finish anyway|r
    .timer 14,RP
    .skipgossipid 136768
step
    #requires plans
    .goto 2521,48.6,54.69,30,0
    .goto 2521,46.44,51.34,30,0
    >>Kehrt zur Stadt zurück und wartet auf das Rollenspiel.
    *|cRXP_WARN_Falls ihr einen Tornado seht, benutzt ihn zum schnelleren Reisen.|r
    .complete 92528,1 --1/1 Learn about the cultists' plans
-- step
--     .isOnQuest 92528 -- Among the Faithful
--     .subzoneskip 16624 -- Shen'dar Village
--     .cooldown spell,1259416,>0,1 -- Walk on Air
--     .goto 2521,46.86,51.54,25,0
--     .goto 2521,44.37,46.69
--     .cast 1259416 >>Jump off the mountain and use |T132845:0|t[Walk on Air] to fly towards the waypoint location.
--     .usespell 1259416
step << Rogue
    .money <0.04
    .isQuestAvailable 92528 -- Among the Faithful
    .xp <8,1
    .goto 2521,44.37,46.69,30,0
    .goto 2521,43.15,43.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Miriaan Mistblade::254087|r
    *|cRXP_WARN_Tut dies nicht use|r |T132845:0|t[Gehen on Luft] |cRXP_WARN_during this step|r.
    .train 5277 >>Erlernen |T136205:0|t[Entrinnen]
    .train 6760 >>Erlernen |T132292:0|t[Ausweiden (Rang 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
step
    .goto 2521,44.37,46.69,30,0 << !Rogue
    .goto 2521,44.49,45.95,30,0 << !Rogue
    .goto 2521,44.93,46.85,30,0 << !Rogue
    .goto 2521,45.21,46.63,30,0 << !Rogue
    .goto 2521,45.04,46.23,15,0 << !Rogue
    .goto 2521,45.67,45.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Constable Aonda::251523|r.
    *|cRXP_WARN_Tut dies nicht use|r |T132845:0|t[Gehen on Luft] |cRXP_WARN_during this step|r.
    .turnin 92528,1 >>Gebt die Quest Among the Faithful ab << Mage/Druid/Shaman/Priest/Warlock
    .turnin 92528,2 >>Gebt die Quest Among the Faithful ab << Warrior/Rogue/Paladin
    .turnin 92528,3 >>Gebt die Quest Among the Faithful ab << Hunter
    .accept 92550 >>Akzeptiert die Quest Verwüstung in the Highlands
    .accept 93926 >>Akzeptiert die Quest The Die Westwacht
    .target Constable Aonda::251523
step
    .goto 2521,45.25,45.18
    *|cRXP_WARN_Anlegen|r |T454058:0|t[Stained Ritualdolch] << Mage/Priest/Warlock
    *|cRXP_WARN_Anlegen|r |T7789512:0|t[Curved Krummsäbel] << Warrior/Rogue/Paladin
    *|cRXP_WARN_Anlegen|r |T135493:0|t[Windgepeitscht Shortbow] << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Danarii Bellowveil::252172|r.
    .accept 92551 >>Akzeptiert die Quest Gestohlene Versorgungsgüter
    .target Danarii Bellowveil::252172
    .use 257332 << Mage/Priest/Warlock -- Stained Ritual Dagger
    .use 257333 << Warrior/Rogue/Paladin -- Curved Scimitar
    .use 273877 << Hunter -- Windswept Shortbow
step
    .train 7620,3 -- Fishing Trained
    .isOnQuest 93926 --The Western Watch
    .isQuestComplete 97967 -- Camping 101: Fishing
    .goto 2521,45.03,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Fenn Fairweather::251992|r
    .turnin 97967 >>Gebt die Quest Lager aufschlagen 101: Angeln ab
    .target Fenn Fairweather::251992
step
    .isOnQuest 93926 -- The Western Watch
    .subzoneskip 16624,1 -- Shen'dar Village
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,45.35,46.79,20,0
    .goto 2521,44.05,49.98
    .cast 1259416 >>Springt vom Berg und benutzt |T132845:0|t[Luftwandeln], um zum Ort zu fliegen.
    .usespell 1259416
step
    .isOnQuest 93926 -- The Western Watch
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,45.35,46.79,20,0
    .goto 2521,44.05,49.98,30,0
    .goto 2521,43.02,49.86
    .subzone 17674 >>Sterbt südwestlich von Shen'dar Village und spawnt bei |cRXP_FRIENDLY_Spirit Heilung::6491|r auf.
    *|cRXP_WARN_Benutzt das Sitz-Makro im Kampf, um schneller zu sterben|r.
    .macro Sit to Die Faster,134400 >>Durch Sitzen schneller sterben
step
    #optional
    #completewith next
    #label Western Watchtower
    .isOnQuest 93926 -- The Western Watch
    .isQuestNotComplete 93926 -- The Western Watch
    .subzoneskip 17674,1 -- West Pylon Watchtower
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Peacekeeper Vaaniel::252155|r.
    .complete 93926,1 --1/1 Check in on the Western Watchtower in the Shen'dar Highlands
step
    #completewith Western Watchtower
    #ignorecorpse
    .isOnQuest 93926 -- The Western Watch
    .isQuestNotComplete 93926 -- The Western Watch
    .subzoneskip 17674,1 -- West Pylon Watchtower
    .showwhiledead
    .goto 2521,40.23,63.83
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Spirit Heilung::6491|r.
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step
    #requires Western Watchtower
    .goto 2521,42.32,62.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Peacekeeper Vaaniel::252155|r.
    .complete 93926,1 --1/1 Check in on the Western Watchtower in the Shen'dar Highlands
    .target Peacekeeper Vaaniel::252155
step
    .goto 2521,42.33,62.01
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Peacekeeper Vaaniel::252155|r
    .turnin 93926 >>Gebt die Quest The Die Westwacht ab
    .accept 93927 >>Akzeptiert die Quest A Lahmy Request
    .target Peacekeeper Vaaniel::252155
step
    .goto 2521,42.38,62.07
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Blutigen Hinweis|r.
    *|cRXP_WARN_Haltet einen Taschenplatz frei.|r
    .complete 93927,1 --1/1 Collect and read the note
step
    .goto 2521,40.988,64.088
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Arvensus Shadowsong|r\n |cRXP_WARN_aus der Ferne|r.
    *|cRXP_WARN_Haltet einen Taschenplatz frei.|r
    .complete 93927,4 --1/1 Shadowsong Family Signet
step
    .goto 2521,41.12,64.09
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Raani Windgazer|r\n |cRXP_WARN_aus der Ferne|r.
    *|cRXP_WARN_Haltet einen Taschenplatz frei|r.
    .complete 93927,3 --1/1 Raani's Favorite Feather
step
    #label Skypriest Aanders
    .goto 2521,40.94,64.15,4,0
    .goto 2521,41.11,64.03,4,0
    .goto 2521,41.09,64.29,4,0
    .goto 2521,40.95,64.25,4,0
    .goto 2521,41.05,64.02,4,0
    .goto 2521,41.08,64.27,4,0
    .goto 2521,40.94,64.2,4,0
    .goto 2521,41.08,64.39
    >>Erklimmt die Wendeltreppe und tötet dann |cRXP_ENEMY_Skypriest Aanders::256966|r oben auf dem Turm.
    .complete 93927,2 --1/1 Skypriest Aanders slain
    .mob Skypriest Aanders::256966
step
    .subzoneskip 17674,1 -- West Pylon Watchtower
    .isOnQuest 92551 -- Stolen Supplies
    .isQuestNotComplete 92551 -- Stolen Supplies
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,50.29,56.95
    .cast 1259416 >>Springt vom Turm und benutzt |T132845:0|t[Gehen on Luft], um zur Wegpunkt-Position zu fliegen.
    .usespell 1259416
step  << Alliance
    #optional
    #completewith NearCommander
    >>Tötet |cRXP_ENEMY_Al'Aketh Stormcallers::252068|r. Plündert sie für |T133647:0|t[|cRXP_LOOT_Stolen Shen'dar Vorräte|r].
    >>|TInterface/cursor/crosshair/interact.blp:16|tKlickt auf die |cRXP_PICK_Supply Schätze|r (kleine Säcke).
    .complete 92550,1 --6/6 Al'Aketh Stormcaller slain
    .complete 92551,1 --10/10 Stolen Shen'dar Supplies
    .mob +Al'Aketh Stormcaller::252068
step << Alliance
    #optional
    #completewith NearCommander
    >>Tötet |cRXP_ENEMY_Galestriders::251661|r. Plündert sie für |T133972:0|t[|cRXP_LOOT_Strider Fleisch|r] und |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step << Alliance
    #optional
    #completewith NearCommander
    >>Tötet |cRXP_ENEMY_Prideclaws::251245|r. Plündert sie für |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step << Alliance
    #label NearCommander
    .isQuestNotComplete 92550 -- Havoc in the Highlands
    .isOnQuest 92550 -- Havoc in the Highlands
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .goto 2521,45.48,58.73,30,0
    .goto 2521,48.36,58.49
    .cast 1259705 >>Benutzt |T236219:0|t[Leylinie erschließen] für 100% erhöhte passive Mana- und Gesundheitsregeneration.
    *|cRXP_WARN_Wenn ein Tornado in der Nähe ist, berührt ihn, um 40% erhöhte Bewegungsgeschwindigkeit für 5 Minuten zu erhalten. Wenn ihr Schaden verursacht, wird der Effekt entfernt|r.
    .usespell 1259705
-- step
--     #optional
--     #completewith CommanderCyclasHeadA
--     >>Kill |cRXP_ENEMY_Galestriders::251661|r. Loot them for |T133972:0|t[|cRXP_LOOT_Strider Meat|r] and |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
--     .complete 92553,2 --8/8 Strider Meat
--     .complete 92553,1 --3/3 Small Egg
--     .mob +Galestrider::251661
step
    #optional
    #completewith CommanderCyclasHeadA
    >>Tötet |cRXP_ENEMY_Prideclaws::251245|r. Plündert sie für |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #optional
    #completewith CommanderCyclasHeadA
    >>Tötet |cRXP_ENEMY_Living Blitzschlag::251662|r.
    .complete 92550,2 --4/4 Living Lightning slain
    .mob Living Lightning::251662
step
    #optional
    #completewith CommanderCyclasHeadA
    >>Tötet |cRXP_ENEMY_Al'Aketh Stormcallers::252068|r. Plündert sie für |T133647:0|t[|cRXP_LOOT_Stolen Shen'dar Vorräte|r].
    >>|TInterface/cursor/crosshair/interact.blp:16|tKlickt |cRXP_PICK_Versorgungsschätze|r.
    .complete 92550,1 --6/6 Al'Aketh Stormcaller slain
    .complete 92551,1 --10/10 Stolen Shen'dar Supplies
    .mob +Al'Aketh Stormcaller::252068
step
    #label CommanderCyclasHeadA
    .goto 2521,49.779,57.330,15,0
    .goto 2521,49.886,56.504,20,0
    .goto 2521,50.38,56.93
    >>Tötet |cRXP_ENEMY_Commander Cyclas::251966|r. Plündert sie für |T134161:0|t[|cRXP_LOOT_Commander Cyclas's Kopf|r].
    .complete 92550,3 --1/1 Commander Cyclas's Head
    .mob Commander Cyclas::251966
step
    #completewith LivingLightningA
    #hidewindow
    #loop
    .goto 2521,49.877,56.539,25,0
    .goto 2521,49.629,54.728,25,0
    --.goto 2521,48.823,54.315,15,0
    .goto 2521,49.058,53.545,15,0
    .goto 2521,47.641,54.140,30,0
    .goto 2521,49.765,57.237,25,0
    .goto 2521,49.5,56.22,35,0
    .goto 2521,49.86,56.95,35,0
    .goto 2521,50.4,56.93,25,0
    +1
step
    #optional
    #completewith next
    >>Tötet |cRXP_ENEMY_Living Blitzschlag::251662|r.
    .complete 92550,2 --4/4 Living Lightning slain
    .mob Living Lightning::251662
step
    >>Tötet |cRXP_ENEMY_Al'Aketh Stormcallers::252068|r. Plündert sie für |T133647:0|t[|cRXP_LOOT_Stolen Shen'dar Vorräte|r].
    >>|TInterface/cursor/crosshair/interact.blp:16|tKlickt auf |cRXP_PICK_Supply Schätze|r.
    .complete 92550,1 --6/6 Al'Aketh Stormcaller slain
    .complete 92551,1 --10/10 Stolen Shen'dar Supplies
    .mob +Al'Aketh Stormcaller::252068
step
    #label LivingLightningA
    >>Tötet |cRXP_ENEMY_Living Blitzschlag::251662|r.
    .complete 92550,2 --4/4 Living Lightning slain
    .mob Living Lightning::251662
step << Horde
    .isOnQuest 92550 -- Havoc in the Highlands
    .cooldown spell,1259686,>0,1 -- Skysight
    .goto 2521,48.497,55.827
    .cast 1259686 >>Benutzt |T1029587:0|t[Himmelssicht] für den 10%-Bewegungsgeschwindigkeitsbuff.
step
    #loop
    .goto 2521,49.877,56.539,25,0
    .goto 2521,49.629,54.728,25,0
    .goto 2521,49.058,53.545,15,0
    .goto 2521,47.641,54.140,30,0
    .goto 2521,49.765,57.237,25,0
    .goto 2521,49.5,56.22,35,0
    .goto 2521,49.86,56.95,35,0
    .goto 2521,50.4,56.93,25,0
    .xp 8+4400 >>Farmt bis 4400+/5400, um später im richtigen Moment Stufe 10 zu erreichen
step
    #completewith RestockingTheLardersA
    #hidewindow
    #loop
    .goto 2521,47.34,51.69,35,0
    .goto 2521,45.9,53.93,35,0
    .goto 2521,42.65,49.07,35,0
    .goto 2521,41.44,53.14,35,0
    .goto 2521,39.77,56.4,35,0
    .goto 2521,40.9,50.64,35,0
    .goto 2521,37.56,43.24,40,0
    .goto 2521,40.04,41.38,40,0
    -- .goto 2521,45.95,53.76,35,0
    -- .goto 2521,42.885,63.422,35,0
    -- .goto 2521,42.97,49.81,35,0
    -- .goto 2521,44.12,50.46,35,0
    -- .goto 2521,38.283,42.288,35,0
    -- .goto 2521,42.055,40.938,35,0
    +1
step
    #optional
    #completewith next
    >>Tötet |cRXP_ENEMY_Galestriders::251661|r. Plündert sie für |T133972:0|t[|cRXP_LOOT_Strider Fleisch|r] und |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    >>Tötet |cRXP_ENEMY_Prideclaws::251245|r. Plündert sie für |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #label RestockingTheLardersA
    >>Tötet |cRXP_ENEMY_Galestriders::251661|r. Plündert sie für |T133972:0|t[|cRXP_LOOT_Strider Fleisch|r] und |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
-- step << Alliance
--     #completewith next
--     .hs >>Hearth to Thendal Village
--     .cooldown item,6948,>0 --Hearthstone

-- step
--     .train 7620,3 -- Fishing Trained
--     .isQuestComplete 97967 -- Camping 101: Fishing
--     .isQuestComplete 92550 -- Havoc in the Highlands
--     .goto 2521,45.03,48.45
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fenn Fairweather::251992|r
--     .turnin 97967 >>Turn in Camping 101: Fishing
--     .target Fenn Fairweather::251992
-- step
--     --might cause issues when really unlucky with the pelt or strider quest
--     .isQuestAvailable 92551 -- Stolen Supplies
--     .isQuestNotComplete 97967 -- Camping 101: Fishing
--     .isQuestNotComplete 97965 -- Camping 101: First Aid
--     .isQuestNotComplete 97968 -- Camping 101: Herbalism
--     .isQuestNotComplete 98286 -- Camping 101: Enchanting
--     .isQuestNotComplete 97971 -- Camping 101: Skinning
--     .isQuestNotComplete 97963 -- Camping 101: Alchemy
--     .isQuestNotComplete 97973 -- Camping 101: Tailoring
--     .isQuestNotComplete 97964 -- Camping 101: Blacksmithing
--     .isQuestNotComplete 97970 -- Camping 101: Mining
--     .isQuestNotComplete 97969 -- Camping 101: Leatherworking
--     .goto 2521,44.111,45.843,40 >>Follow the way up the mountain.
-- step
--     .train 3273,3 -- First Aid Trained
--     .itemcount 2589,1 -- Linen Cloth
--     >>Press the Macro in the "Active Items Frame" to craft |T133685:0|t[Linen Bandages].
--     *|cRXP_WARN_Skip this if you can't reach skill 20|r
--     .complete 97965,1 >>Complete Camping 101: First Aid
--     .macro First Aid,135966 >>/run local t=C_TradeSkillUI;t.OpenTradeSkill(129);t.CraftRecipe(3275,C_Item.GetItemCount(2589))
-- step
--     .train 3273,3 -- First Aid Trained
--     .isQuestComplete 97965 -- Camping 101: First Aid
--     .isQuestComplete 92550 -- Havoc in the Highlands
--     .goto 2521,43.08,46.31
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naleeia Tattermend::257018|r
--     .turnin 97965 >>Turn in Camping 101: First Aid
--     .target Naleeia Tattermend::257018
-- step
--     .train 7411,3 -- Enchanting Trained
--     .isQuestComplete 98286 -- Camping 101: Enchanting
--     .isQuestComplete 92550 -- Havoc in the Highlands
--     .goto 2521,43.25,43.16
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nasalanna Windsinger::257020|r
--     .turnin 98286 >>Turn in Camping 101: Enchanting
--     .target Nasalanna Windsinger::257020
-- step
--     .train 8613,3 -- Skinning Trained
--     .isQuestComplete 97971 -- Camping 101: Skinning
--     .isQuestComplete 92550 -- Havoc in the Highlands
--     .goto 2521,43.3,43.37
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mendalass Tattermend::257024|r
--     .turnin 97971 >>Turn in Camping 101: Skinning
--     .target Mendalass Tattermend::257024

--Too little silver on hunter to buy bow later; to increase chance of having bow i commented it out

-- step
--     .isQuestComplete 92550 -- Havoc in the Highlands
--     .itemcount 4471,<1 -- Flint and Tinder
--     .goto 2521,43.86,43.85
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerril Softbreeze::251905|r and buy |T135237:0|t[Flint and Tinder].
--     *|cRXP_WARN_You will use it with Simple Wood to create Basic Campfires for Cooking later|r.
--     .collect 4471,1 -- Flint and Tinder
--     .vendor 251905 >>Vendor Trash
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
--     *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
--     *|cRXP_WARN_We need them for Cooking later|r.
--     .skipgossipid 137550 -- I would like to buy from you.
--     .target Zerril Softbreeze::251905
-- step
--     .isQuestComplete 92550 -- Havoc in the Highlands
--     .itemcount 4470,<5 -- Simple Wood
--     .goto 2521,43.86,43.85
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerril Softbreeze::251905|r and buy 5 |T135435:0|t[Simple Wood].
--     .collect 4470,5 -- Simple Wood
--     .vendor 251905 >>Vendor Trash
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
--     *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
--     *|cRXP_WARN_We need them for Cooking later|r.
--     .skipgossipid 137550 -- I would like to buy from you.
--     .target Zerril Softbreeze::251905
-- step
--     .isQuestComplete 92550 -- Havoc in the Highlands
--     .itemcount 2678,<5 -- Mild Spices
--     .goto 2521,43.86,43.85
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerril Softbreeze::251905|r and buy 5 |T134059:0|t[Mild Spices].
--     .vendor 251905 >>Vendor Trash
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
--     *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
--     *|cRXP_WARN_We need them for Cooking later|r.
--     .target Zerril Softbreeze::251905

step
    .isQuestComplete 92553 -- Restocking the Larders
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    .turnin 92553 >>Gebt die Quest Vorräte auffüllen the Larders ab
    .target Zerril Softbreeze::251905
step
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,43.86,43.85
    *|cRXP_WARN_Tut dies nicht use|r |T132845:0|t[Gehen on Luft] |cRXP_WARN_during this step|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zerril Softbreeze::251905|r.
    .vendor 251905 >>Verkauft Müll
    .skipgossipid 137550
    *Nicht sell |T133970:0|t[Stringy Fleisch], |T132832:0|t[Kleines Eis], oder |T133972:0|t[Strider Fleisch]. << Alliance
    *Nicht sell |T132832:0|t[Kleines Eis] und |T133972:0|t[Strider Fleisch]. << Horde
    *|cRXP_WARN_Wir brauchen sie für Kochkunst später|r.
    .target Zerril Softbreeze::251905
step
    .train 2550,3 -- Cooking Trained
    .isQuestComplete 96646 -- Camping 101: Cooking
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    .turnin 96646 >>Gebt die Quest Lager aufschlagen 101 ab: Kochkunst
    .target Zerril Softbreeze::251905
step
    .isQuestTurnedIn 92553 -- Restocking the Larders
    .isQuestComplete 92550 -- Havoc in the Highlands
    .itemcount 6889,1 -- Small Egg
    .train 2550,3 -- Cooking Trained
    .goto 2521,43.86,43.85
    +Benutzt das Makro |T132834:0|t[Kräutergebackenes Ei] unten, um so viel wie möglich herzustellen.
    *|cRXP_WARN_Die meisten Buff-Lebensmittel gewähren 5% erhöhte Erfahrung aus Kills für 15 Minuten. Versucht, diesen Buff während des Levelns aufrechtzuerhalten.|r
    *|cRXP_BUY_Kauft 5-20|r |T134059:0|t[Milde Gewürze] |cRXP_BUY_von|r |cRXP_FRIENDLY_Zerril Softbreeze|r |cRXP_WARN_falls ihr das noch nicht getan habt|r.
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_Ihr müsst möglicherweise das Makro zweimal drücken|r.
    .macro Herb Baked Egg,132834 >>Kräutergebackenes Ei
step
    .train 8613,3 -- Skinning Trained
    .isQuestComplete 97971 -- Camping 101: Skinning
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,43.3,43.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mendalass Tattermend::257024|r
    .turnin 97971 >>Gebt die Quest Lager aufschlagen 101: Kürschnerei ab
    .target Mendalass Tattermend::257024
step
    .train 7411,3 -- Enchanting Trained
    .isQuestComplete 98286 -- Camping 101: Enchanting
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,43.25,43.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nasalanna Windsinger::257020|r
    .turnin 98286 >>Gebt die Quest Lager aufschlagen 101: Verzauberkunst ab
    .target Nasalanna Windsinger::257020
step
    .train 3273,3 -- First Aid Trained
    .itemcount 2589,1 -- Linen Cloth
    .goto 2521,43.08,46.31
    >>Drückt das Makro im "Aktiv Gegenstände Frame", um |T133685:0|t[Leinenbandagen] zu craften.
    *|cRXP_WARN_Überspringt dies, falls ihr Fertigkeitsstufe 20 nicht erreichen könnt|r
    .complete 97965,1 >>Fertig Lager aufschlagen 101: Erste Hilfe
    *|cRXP_WARN_Ihr müsst möglicherweise das Makro zweimal drücken|r.
    .macro First Aid,135966 >>Erste Hilfe
step
    .train 3273,3 -- First Aid Trained
    .isQuestComplete 97965 -- Camping 101: First Aid
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,43.08,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Naleeia Tattermend::257018|r
    .turnin 97965 >>Gebt die Quest Lager aufschlagen 101: Erste Hilfe ab
    .target Naleeia Tattermend::257018
step
    .train 2259,3 -- Alchemy Trained
    .isQuestComplete 97963 -- Camping 101: Alchemy
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,43.7,43.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nyassa Swiftdraught::257019|r
    .turnin 97963 >>Gebt die Quest Lager aufschlagen 101: Alchemie ab.
    .target Nyassa Swiftdraught::257019
step
    .train 3908,3 -- Tailoring Trained
    .isQuestComplete 97973 -- Camping 101: Tailoring
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,44.88,44.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Taleen Shimmerthread::251991|r
    .turnin 97973 >>Gebt die Quest Lager aufschlagen 101: Schneiderei ab.
    .target Taleen Shimmerthread::251991
step
    .train 2018,3 -- Blacksmithing Trained
    .isQuestComplete 97964 -- Camping 101: Blacksmithing
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,44.89,44.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aedi Thriceforged::251913|r
    .turnin 97964 >>Gebt die Quest Lager aufschlagen 101: Schmiedekunst ab.
    .target Aedi Thriceforged::251913
step
    .train 2575,3 -- Mining Trained
    .isQuestComplete 97970 -- Camping 101: Mining
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,44.77,44.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Messana Crestwind::257022|r
    .turnin 97970 >>Gebt die Quest Lager aufschlagen 101: Bergbau ab.
    .target Messana Crestwind::257022
step
    .isQuestComplete 92515 -- The Problem With Prideclaws
    .goto 2521,44.686,44.518
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Indari Sunseam::251993|r
    .target Indari Sunseam::251993
    .turnin 92515 >>Gebt die Quest The Problem With Prideclaws ab.
step
    .train 2108,3 -- Leatherworking Trained
    .isQuestComplete 97969 -- Camping 101: Leatherworking
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,44.69,44.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Indari Sunseam::251993|r
    .turnin 97969 >>Gebt die Quest Lager aufschlagen 101: Lederverarbeitung ab.
    .target Indari Sunseam::251993
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,44.71,45.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Veena Vericloud::254358|r
    .vendor 254358 >>Verkauft Müll. |cRXP_BUY_Kauft bis zu drei|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_BUY_nach Bedarf|r.
    *|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r << Druid/Mage/Priest/Warlock/Paladin
    -- *|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] and |T132382:0|t[Sharp Arrows] << Hunter
    *|cRXP_BUY_Kaufe|r |T132382:0|t[Scharfe Pfeile] << Hunter
    -- *|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows] << Alliance Rogue
    *|cRXP_WARN_Wenn ihr Taschen anlegt, achtet darauf, dass die Reagenz-Tasche von Euch im dedizierten Reagenzplatz ist.|r.
    *Nicht sell |T133970:0|t[Stringy Fleisch], |T132832:0|t[Kleines Eis], oder |T133972:0|t[Strider Fleisch]. << Alliance
    *Nicht sell |T132832:0|t[Kleines Eis] und |T133972:0|t[Strider Fleisch]. << Horde
    -- .collect 2512,600 << Hunter --Rough Arrow (600)
    .collect 2515,1000 << Hunter --Sharp Arrows (1000)
    -- .collect 2515,200 << Alliance Rogue --Sharp Arrows (600)
    .target Veena Vericloud::254358
step
    #label SkybornePart1End
    .goto 2521,45.24,45.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Danarii Bellowveil::252172|r.
    .turnin 92551 >>Gebt die Quest Gestohlene Versorgungsgüter ab.
    .target Danarii Bellowveil::252172
step
    .goto 2521,45.67,45.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Constable Aonda::251523|r.
    .turnin 92550,3 >>Gebt die Quest Verwüstung im Hochland ab.
    .turnin 93927 >>Gebt die Quest A Lahmy Request ab.
    .accept 92701 >>Akzeptiert Nach Valanaar << Alliance
    .accept 92579 >>Akzeptiert Nach Valanaar << Horde
    .accept 93948 >>Akzeptiert Deliver the Signet
    .target Constable Aonda::251523

]])
--Skyborne leveling guide: Part 2
RXPGuides.RegisterGuide([[
#forever
#disabledungeons
#version 1
#name 9-13 Zephras Isle
#displayname 9-13 Skyborne << Alliance
#displayname 9-12 Skyborne << Horde
#group RestedXP Forever Dungeonführer (A) << Alliance
#group RestedXP Forever Dungeonführer (H) << Horde
#subgroup Speedrun Dungeonführer 1-20 << Alliance
#subgroup Speedrun Dungeonführer 1-22 << Horde
#next 13-15 Westfall << Alliance !Hunter
#next 14-16 Dunkelküste << Alliance Hunter
#next 12-14 Silberwald << Horde !Hunter
#next 12-17 das Brachland << Horde Hunter
#defaultfor Skyborne

step
    #optional
    .isQuestAvailable 92550,93927 --Havoc in the Highlands; A Last Request
    +|cRXP_WARN_Schließt den 1-9-Skyborne-Leitfaden ab, bevor ihr fortfahrt. Dieser Leitfaden erfordert die Quests aus Teil 1|r.
    .clicknext RestedXP Forever Guide (A)\1-9 Zephras Isle >>HIER KLICKEN FÜR DEN 1-9 SKYBORNE-LEITFADEN << Alliance
    .clicknext RestedXP Forever Guide (H)\1-9 Zephras Isle >>HIER KLICKEN FÜR DEN 1-9 SKYBORNE-LEITFADEN << Horde
step
    #completewith LeaveZephrasIsle
    #hidewindow
    +Possible Tornado Erschaffen Ort
    #icon |TInterface/Icons/Spell_Nature_Cyclone:0|t
    .pin 2521,50.22,76.77,Tornado
    .pin 2521,53.51,71.46,Tornado
    .pin 2521,54.46,60.13,Tornado
    .pin 2521,64.52,46.4,Tornado
    .pin 2521,46.52,71.19,Tornado
    .pin 2521,59.59,43.9,Tornado
    .pin 2521,62.15,70.42,Tornado
    .pin 2521,52.5,79,Tornado
    .pin 2521,54.36,72.97,Tornado
    .pin 2521,62.52,73.74,Tornado
    .pin 2521,42.85,41.26,Tornado
    .pin 2521,58.8,74.36,Tornado
    .pin 2521,64.84,67.52,Tornado
    .pin 2521,52.41,70.33,Tornado
    .pin 2521,43.74,59.77,Tornado
    .pin 2521,54.22,64.13,Tornado
    .pin 2521,64.44,79.62,Tornado
    .pin 2521,58.77,50.45,Tornado
    .pin 2521,57.28,70.5,Tornado
    .pin 2521,68.16,74.89,Tornado
    .pin 2521,60.94,73.58,Tornado
    .pin 2521,48.36,80.52,Tornado
    .pin 2521,58.40,47.31,Tornado
    .pin 2521,58.78,50.39,Tornado
    .pin 2521,41.45,54.37,Tornado
    .pin 2521,37.25,46.84,Tornado
    .pin 2521,40.43,46.88,Tornado
    .pin 2521,46.58,38.35,Tornado
    .pin 2521,43.16,65.06,Tornado
    .pin 2521,60.44,66.16,Tornado
    .pin 2521,61.06,73.57,Tornado
    .pin 2521,58.04,44.13,Tornado
    .use 255663 --Windstones
step
    .goto 2521,45.67,45.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Constable Aonda::251523|r.
    .accept 92701 >>Akzeptiert Nach Valanaar << Alliance
    .accept 92579 >>Akzeptiert Nach Valanaar << Horde
    .accept 93948 >>Akzeptiert Deliver the Signet
    .target Constable Aonda::251523
step
    #completewith LeaveZephrasIsle
    #hidewindow
    +Windstones
    .use 255663 --Windstones
--here maybe duplicate trainer steps for low silver cases

step
    .isQuestAvailable 93948 -- Deliver the Signet
    .isNotOnQuest 93317 -- Crab Season
    .subzoneskip 16624,1 -- Shen'dar Village
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,49.4,58.76
    .cast 1259416 >>Springt vom Berg und benutzt |T132845:0|t[Luftwandeln], um zum Ort zu fliegen.
    .usespell 1259416
step
    .train 7620,3 -- Fishing Trained
    .isQuestComplete 97967 -- Camping 101: Fishing
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,45.03,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Fenn Fairweather::251992|r
    .turnin 97967 >>Gebt die Quest Lager aufschlagen 101: Angeln ab
    .target Fenn Fairweather::251992
step
	.isOnQuest 93948 -- Deliver the Signet
    .isNotOnQuest 93317 -- Crab Season
    .subzoneskip 16638 -- Valanaar
    .goto 2521,49.4,58.76
    .subzone 16626 >>Sterbt am exakten Waypoint-Ort.
    *|cRXP_WARN_Benutzt das Sitz-Makro im Kampf, um schneller zu sterben|r.
    *|cRXP_WARN_Ansonsten könnt ihr zu einem anderen Friedhof geschickt werden|r
    *|cRXP_WARN_Seid vorsichtig, wenn ihr direkt durch das Feld geht; ihr könnt leicht sterben|r.
    .macro Sit to Die Faster,134400 >>Durch Sitzen schneller sterben
step
    #ignorecorpse
    .subzoneskip 16626,1 -- Gustberry Lowlands
	.isOnQuest 93948 -- Deliver the Signet
    .isNotOnQuest 93317 -- Crab Season
    .showwhiledead
    .goto 2521,54.99,68.14
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Spirit Heilung::6491|r.
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
-- step << Horde
--     .goto 2521,56.81,61.11
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fendaal Windstone::273017|r.
--     *|cRXP_WARN_If a Tornado is nearby, touch it to gain 40% increased movement speed for 5 minutes. Dealing damage removes the effect|r.
--     .accept 98512 >>Accept Al'Aketh Assassins
--     .target Fendaal Windstone::273017
-- step << Horde
--     #loop
--     .goto 2521,55.27,59.58,35,0
--     .goto 2521,54.58,60.52,35,0
--     .goto 2521,55.93,60.3,35,0
--     .goto 2521,56.04,59.08,35,0
--     >>Kill |cRXP_ENEMY_Al'Aketh Assassins::254626|r.
--     .complete 98512,1 --10/10 Al'Aketh Assassin slain
--     .mob Al'Aketh Assassin::254626
-- step << Horde
--     .goto 2521,56.80,61.10
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fendaal Windstone::273017|r.
--     .turnin 98512 >>Turn in Al'Aketh Assassins
--     .target Fendaal Windstone::273017
step << Alliance Hunter
    .xp <9,1
    .money <0.1345
    .isNotOnQuest 92679 -- Blood Tithe
    .isQuestAvailable 92679 -- Blood Tithe
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.82
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Falfaan Halfwind::271465|r im Haus.
    >>|cRXP_BUY_Buy und equip a|r |T7810733:0|t[Zephrali Verbeugen]
    .collect 277110,1 --Collect Zephrali Bow
    .vendor 271465 >>Händler trash und repair if needed
    *Nicht sell |T133970:0|t[Stringy Fleisch], |T132832:0|t[Kleines Eis], oder |T133972:0|t[Strider Fleisch]. << Alliance
    *Nicht sell |T132832:0|t[Kleines Eis] und |T133972:0|t[Strider Fleisch]. << Horde
    *|cRXP_WARN_Wir brauchen sie für Kochkunst später|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Alliance Hunter
    #optional
    #completewith Deliver the Signet
    .xp <9,1
    .itemcount 277110,1 --Zephrali Bow
    +|cRXP_WARN_Legt|r |T7810733:0|t[Bogen der Zephrali] an.
    .use 277110 --Zephrali Bow
step << Alliance Warrior/Alliance Paladin
    .xp <9,1
    .money <0.2151
    .isNotOnQuest 92679 --Blood Tithe
    .isQuestAvailable 92679 --Blood Tithe
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.28
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Falfaan Halfwind::271465|r im Haus.
    >>|cRXP_BUY_Buy und equip a|r |T7792097:0|t[Zephrali Smasher].
    .collect 277106,1 --Zephrali Smasher
    .vendor 271465 >>Händler trash und repair if needed.
    *Nicht sell |T133970:0|t[Stringy Fleisch], |T132832:0|t[Kleines Eis], oder |T133972:0|t[Strider Fleisch]. << Alliance
    *Nicht sell |T132832:0|t[Kleines Eis] und |T133972:0|t[Strider Fleisch]. << Horde
    *|cRXP_WARN_Wir brauchen sie für Kochkunst später|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Alliance Warrior/Alliance Paladin
    #optional
    #completewith Deliver the Signet
    .xp <9,1
    .itemcount 277106,1 --Zephrali Smasher
    +|cRXP_WARN_Legt|r |T7792097:0|t[Zermalmer der Zephrali] an.
    .use 277106 --Zephrali Smasher
step << Alliance Shaman/Alliance Druid
    .xp <9,1
    .money <0.2176
    .isNotOnQuest 92679 --Blood Tithe
    .isQuestAvailable 92679 --Blood Tithe
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.48
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Falfaan Halfwind::271465|r im Haus.
    >>|cRXP_BUY_Buy und equip a|r |T7798447:0|t[Großstab der Zephrali].
    .collect 277109,1 --Zephrali Greatstaff
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Alliance Shaman/Alliance Druid
    #optional
    #completewith Deliver the Signet
    .xp <9,1
    .itemcount 277109,1 --Zephrali Greatstaff
    +|cRXP_WARN_Legt|r |T7798447:0|t[Großstab der Zephrali] an.
    .use 277109 --Zephrali Greatstaff
step << Alliance Rogue
    .xp <9,1
    .money <0.1727
    .isNotOnQuest 92679 --Blood Tithe
    .isQuestAvailable 92679 --Blood Tithe
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.35
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Falfaan Halfwind::271465|r im Haus.
    >>|cRXP_BUY_Buy und equip a|r |T7791298:0|t[Zephrali Keulen].
    .collect 277107,1 --Zephrali Bludgeon
    .vendor 271465 >>Händler trash und repair if needed.
    *Nicht sell |T133970:0|t[Stringy Fleisch], |T132832:0|t[Kleines Eis], oder |T133972:0|t[Strider Fleisch]. << Alliance
    *Nicht sell |T132832:0|t[Kleines Eis] und |T133972:0|t[Strider Fleisch]. << Horde
    *|cRXP_WARN_Wir brauchen sie für Kochkunst später|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Alliance Rogue
    #optional
    #completewith Deliver the Signet
    .xp <9,1
    .itemcount 277107,1 --Zephrali Bludgeon
    +|cRXP_WARN_Legt|r |T7791298:0|t[Knüppel der Zephrali] an.
    .use 277107 --Zephrali Bludgeon
-- step << Mage/Priest/Warlock
--     .xp <9,1
--     .money <0.1734
--     .isNotOnQuest 92679 --Blood Tithe
--     .isQuestAvailable 92679 --Blood Tithe
--     .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.18
--     .goto 2521,59.395,75.730
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfaan Halfwind::271465|r inside the house.
--     >>|cRXP_BUY_Buy and equip a|r |T7792229:0|t[Zephrali Knife].
--     .collect 277108,1 --Zephrali Knife
--     .vendor 271465 >>Vendor trash and repair if needed.
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
--     *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
--     *|cRXP_WARN_We need them for Cooking later|r.
--     .skipgossipid 141556
--     .target Falfaan Halfwind::271465
step
    .goto 2521,60.6,73.16,10,0
    .goto 2521,60.640,72.664
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nyalah Brightfire::257006|r.
    *|cRXP_WARN_Falls ihr einen Tornado seht, nähert euch ihm, um 40% erhöhte Bewegungsgeschwindigkeit für 5 Minuten zu erhalten. Der Effekt endet, wenn ihr Schaden austeilt|r.
    .target Nyalah Brightfire::257006
    .accept 93317 >>Akzeptiert die Quest Krebs Season.
    .skipgossipid 96031
    .skipgossipid 98031
step
    .isOnQuest 93948 -- Deliver the Signet
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Donaal Downbreeze::255940|r.
    .target Donaal Downbreeze::255940
    .bindlocation 16638
    .home >>Setzt den Ruhestein von Euch in Valanaar.
    .goto 2521,62.180,72.616
-- step -- commented out for now too many vendor steps in a row
--     .isNotOnQuest 92679 -- Blood Tithe
--     .subzoneskip 16638,1 -- Valanaar
--     .isOnQuest 93948 -- Deliver the Signet
--     .goto 2521,62.180,72.616,10,0
--     .goto 2521,61.95,72.84,10,0
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donaal Downbreeze::255940|r.
--     .vendor 255940 >>Vendor trash
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
--     *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
--     *|cRXP_WARN_We need them for Cooking later|r.
--     .target Donaal Downbreeze::255940
--     .skipgossipid 137078
--     .collect 1179,20 << Mage/Druid/Shaman/Priest/Warlock/Paladin -- Ice Cold Milk
step
    #optional
    #completewith next
    #label Accept Blood Tithe
    .goto 2521,61.95,72.84,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alvarion Windfield::252448|r |cRXP_WARN_auf der zweiten Etage|r.
    .target Alvarion Windfield::252448
    .accept 92679 >>Akzeptiert die Quest Blutzehnt.
step
    #completewith Accept Blood Tithe
    .goto 2521,62.096,73.339,20 >>Geh nach oben
step
    #requires Accept Blood Tithe
    .goto 2521,62.096,73.339
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alvarion Windfield::252448|r |cRXP_WARN_auf der zweiten Etage|r.
    .target Alvarion Windfield::252448
    .accept 92679 >>Akzeptiert die Quest Blutzehnt.
step << Alliance
    #optional
    #completewith BuggedAcceptedA
    .isNotOnQuest 93949 --Bugged
    +|cRXP_WARN_Verwendet nicht|r |T132845:0|t[Luftwandeln] |cRXP_WARN_bis ihr die Quest Bugged annehmt|r.
step
    .isNotOnQuest 94484 -- Unnerving Silence
    .subzoneskip 16638,1 -- Valanaar
    .isQuestAvailable 93948 -- Deliver the Signet
    .goto 2521,63.33,73.65,15,0
    .goto 2521,63.973,75.095,25 >>Geht über den Hügel.
    *|cRXP_WARN_Ignoriert die Leylinie; wir werden bald einen Death-Skip machen|r << Alliance
step
    .goto 2521,63.973,75.095
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r.
    .accept 94484 >>Akzeptiert die Quest Unnerving Stille.
    .target Lotheluum Starbreeze::252359
step << Horde
    .goto 2521,65.956,74.309
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ealaane Nimbuswalker::259012|r.
    .accept 94896 >>Akzeptiert die Quest Hilfe For The Refugees.
    .accept 94897 >>Akzeptiert die Quest The Schicksal of a Geliebt Eins.
    .target Ealaane Nimbuswalker::259012
step
    #optional
    #completewith next
    #label DeliverTheSignetA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Talaanis Shadowsong::252476|r.
    .turnin 93948 >>Gebt die Quest Deliver the Signet ab
    .target Talaanis Shadowsong::252476
step
    #completewith DeliverTheSignetA
    .goto 2521,65.93,76.37,5,0
    .goto 2521,66.46,76.8,5,0
    .goto 2521,66.43,76.58,5,0
    .goto 2521,66.43,76.83,5,0
    .goto 2521,66.31,77.08,5,0
    .goto 2521,66,76.57,8,0
    .goto 2521,66.19,76.22,8,0
    .goto 2521,66.44,76.4,5 >>Klettert auf den Turm
step
    #requires DeliverTheSignetA
    #label Deliver the Signet
    .goto 2521,66.17,76.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Talaanis Shadowsong::252476|r.
    .turnin 93948 >>Gebt die Quest Deliver the Signet ab.
    .target Talaanis Shadowsong::252476
step
    #label BuggedAcceptedA
    .goto 2521,66.18,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
    .turnin 92701 >>Gebt die Quest an Valanaar ab << Alliance
    .turnin 92579,3 >>Gebt die Quest an Valanaar ab << Horde
    .accept 92699 >>Akzeptiert die Quest The Supreme Magister << Alliance
    .accept 92700 >>Akzeptiert die Quest The Grand Skyseer << Horde
    .accept 93949 >>Akzeptiert die Quest Bugged << Alliance
    .target Valennia Stormfist::252383

-- ============================================================================
-- Alliance: The Missing Scholar Route
-- ============================================================================

step << Alliance
    .isOnQuest 92699 -- The Supreme Magister
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,66.47,76.68,10,0
    .goto 2521,66.63,79.94
    .cast 1259416 >>Springt vom Berg herunter und benutzt |T132845:0|t[Gehen on Luft], um zum Questgeber zu fliegen.
    *|cRXP_WARN_Wenn ihr es richtig zeitiert, könnt ihr es mitten in der Luft abbrechen und im Gebäude landen|r
    .usespell 1259416
    .macro Cancel Walk on Air,132845 >>Abbrechen Gehen on Luft
step << Alliance
    #completewith Unwelcome Visitors
    .aura 1258510
    >>Tötet |cRXP_ENEMY_Skyhoppers::251314|r.
    .complete 93949,1 --8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Alliance
    .goto 2521,66.63,79.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elaadrin Evengale::252475|r.
    .turnin 92699 >>Gebt die Quest The Supreme Magister ab
    .target Elaadrin Evengale::252475
step << Alliance
    .goto 2521,66.26,79.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dondallion Die Wisperwind::253204|r.
    .accept 92727 >>Akzeptiert die Quest The Fehlt Scholar
    .target Dondallion Whisperwind::253204
step << Alliance
    #label Unwelcome Visitors
    .goto 2521,66.35,79.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iaadaria Bitterwind::253004|r.
    .accept 92741 >>Akzeptiert die Quest Unwelcome Besucher
    .target Iaadaria Bitterwind::253004
step << Alliance
    .isOnQuest 92727 -- The Missing Scholar
    .subzoneskip 16638,1 -- Valanaar
    .goto 2521,67.41,80.46
    .subzone 16626 >>Springt von der Klippe
step << Alliance
    #ignorecorpse
    .subzoneskip 16626,1 -- Gustberry Lowlands
    .isOnQuest 92727 -- The Missing Scholar
    .showwhiledead
    .goto 2521,54.99,68.14
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Spirit Heilung::6491|r.
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step << Alliance
    .goto 2521,53.33,72.15
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Bloodstained Satchel::581822|r
    *|cRXP_WARN_Wenn ein Tornado vorhanden ist, benutzt ihn für schnellere Reisen|r.
    *Achtung vor |cRXP_ENEMY_Ornery Galestrider::251707|r.
    .turnin 92727 >>Gebt die Quest The Fehlt Scholar ab
    .accept 92849 >>Akzeptiert die Quest The Fehlt Scholar
    .target Bloodstained Satchel::581822
    .mob Ornery Galestrider::251707
step << Alliance
    #label LeavingValanaarA
    .goto 2521,51.11,67.06,30,0
    .goto 2521,51.24,66.63,30,0
    .goto 2521,49.9,66.42,30,0
    .goto 2521,49.75,65.9,30,0
    .goto 2521,50.7,65.36
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_FRIENDLY_Fillion Flamebreeze::253002|r in der Höhle.
    *|cRXP_WARN_Weicht den Vögeln aus und klickt Fillion außerhalb des Kampfes an, sonst werdet ihr nach draußen teleportiert|r.
    *|cRXP_WARN_Wenn ein Tornado vorhanden ist, benutzt ihn für schnellere Reisen|r.
    .complete 92849,1 --1/1 Find Fillion Flamebreeze
step << Alliance
    .subzoneskip 16672,1 -- Shriekling Den
    .isOnQuest 92849 -- The Missing Scholar
    .isQuestNotComplete 92849 -- The Missing Scholar
    .goto 2521,50.7,65.36
    .aura 1258429 >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_FRIENDLY_Fillion Flamebreeze::253002|r in der Höhle.
    *|cRXP_WARN_Weicht den Vögeln aus und klickt Fillion außerhalb des Kampfes an, sonst werdet ihr nach draußen teleportiert|r.
    .skipgossipid 136430
    .target Fillion Flamebreeze::253002
step << Alliance
    .goto 2521,50.71,66.38,20,0
    .goto 2521,52.04,66.66,15,0
    .goto 2521,51.44,66.25,15,0
    .goto 2521,51.03,67.15,15,0
    .goto 2521,51.55,69.2,35,0
    .goto 2521,52.08,69.41
    >>Tragt |cRXP_FRIENDLY_Fillion Flamebreeze::253281|r in Sicherheit.
    *|cRXP_WARN_Weicht den Vögeln aus und klickt Fillion außerhalb des Kampfes an, oder ihr werdet nach draußen teleportiert|r.
    *|cRXP_WARN_Wenn ein Vogel euch angreift, brecht die carrying aura ab, um nicht nach außen teleportiert zu werden|r.
    .complete 92849,2 --1/1 Carry Fillion Flamebreeze to safety while avoiding enemies
    .skipgossipid 136430
    .mob Shriekling Fledgling::253282
    .target Fillion Flamebreeze::253281
step << Alliance
    .goto 2521,52.064,69.396
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Fillion Flamebreeze::253284|r.
    .target Fillion Flamebreeze::253284
    .turnin 92849 >>Gebt die Quest The Fehlt Scholar 1 ab
    .accept 92850 >>Akzeptiert die Quest The Fehlt Scholar 2
-- step << Alliance
--     #completewith next
--     #label Shriekling Matriarch
--     .goto 2521,51.39,68.2,20,0
--     >>Kill |cRXP_ENEMY_Shriekling Matriarch::253283|r. Loot it for |T6119035:0|t[|cRXP_LOOT_Shriekling Matriarch's Head|r].
--     .complete 92850,1 --1/1 Shriekling Matriarch's Head
--     .mob Shriekling Matriarch::253283
step << Alliance
    -- #completewith Shriekling Matriarch
    .isOnQuest 92850 -- The Missing Scholar 2
    .isQuestNotComplete 92850 -- The Missing Scholar 2
    .goto 2521,51.41,68.9,15,0
    .goto 2521,52.02,65.51,130 >>Betretet die Höhle
step << Alliance
    .isOnQuest 92850 -- The Missing Scholar 2
    .isQuestNotComplete 92850 -- The Missing Scholar 2
    .subzoneskip 16672,1 -- Shriekling Den
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .goto 2521,52.49,65.97,30,0
    .goto 2521,52.48,66.04
    .cast 1259705 >>Benutzt |T236219:0|t[Leylinie erschließen] für 100% erhöhte passive Mana- und Gesundheitsregeneration.
    .usespell 1259705
step << Alliance
    .goto 2521,52.02,65.51
    >>Tötet |cRXP_ENEMY_Shriekling Matriarch::253283|r. Plündert sie für |T6119035:0|t[|cRXP_LOOT_Shriekling Matriarch's Kopf|r].
    .complete 92850,1 --1/1 Shriekling Matriarch's Head
    .mob Shriekling Matriarch::253283
step << Alliance
    .isQuestComplete 92850 -- The Missing Scholar 2
    .subzoneskip 16672,1 -- Shriekling Den
    .goto 2521,51.75,66.33,30,0
    .goto 2521,51.05,66.66,20,0
    .goto 2521,51.16,67.53,20,0
    .goto 2521,51.31,68.99,25 >>Verlasst die Höhle
step << Alliance
    #optional
    #completewith FindAameliaWindfieldA
    >>Tötet |cRXP_ENEMY_Windsong Crawlers::254588|r. Plündert sie für |T133972:0|t[|cRXP_LOOT_Windsong Kriecher Fleisch|r].
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler::254588
    .skipgossipid 98031
    .skipgossipid 96031

-- ============================================================================
-- Horde: The Grand Skyseer Route
-- ============================================================================

-- step << Horde
--     #completewith LeavingValanaarA
--     >>Kill |cRXP_ENEMY_Skyhoppers::251314|r.
--     .complete 93949,1 --8/8 Enchanted Skyhopper Exterminated
--     .mob Skyhopper::251314
step << Horde
    .isOnQuest 92700 -- The Grand Skyseer
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,66.488,76.498,6,0
    .goto 2521,63.027,77.807 << Hunter
    .goto 2521,61.491,76.893 << !Hunter
    .cast 1259416 >>Springt vom Turm ab und benutzt |T132845:0|t[Luftwandeln], um zu den Wegpunktstandorten zu fliegen.
    .usespell 1259416
    .macro Cancel Walk on Air,132845 >>Abbrechen Gehen on Luft
-- step << Horde Hunter
--     .goto 2521,63.027,77.807
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Antelariaa Cloudgaze::252390|r.
--     >>|cRXP_BUY_Buy|r 600 |T132382:0|t[Rough Arrows]
--     .collect 2512,600 --Rough Arrow (600)
--     .target Antelariaa Cloudgaze::252390
step << Horde
    .goto 2521,61.491,76.893,15,0
    .goto 2521,59.349,77.930,45,0
    .goto 2521,59.154,79.783
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ayessa Dawnsinger::251968|r.
    .turnin 92700 >>Gebt die Quest The Grand Skyseer ab
    .accept 92708 >>Akzeptiert die Quest A Grand Adventure
    .timer 75,Rollenspiel-Dauer
    .accept 93735 >>Akzeptiert die Quest The Kaputt Konstrukt 1
    .target Ayessa Dawnsinger::251968
step << Horde
    .isOnQuest 93735 -- A Grand Adventure
    .cooldown spell,1259686,>0,1 -- Skysight
    .goto 2521,59.154,79.783
    .cast 1259686 >>Benutzt |T1029587:0|t[Himmelssicht] für den 10%-Bewegungsgeschwindigkeitsbuff.
-- step << Horde
--     .goto 2521,58.128,78.307
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Endaria Mistgaze::254344|r.
--     .accept 93736 >>Accept Unwelcome Spirits
--     .target Endaria Mistgaze::254344

step << Horde Hunter
    .xp <9,1
    .money <0.1345
    .isNotOnQuest 92679 -- Blood Tithe
    .isQuestAvailable 92679 -- Blood Tithe
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.82
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Falfaan Halfwind::271465|r im Haus.
    >>|cRXP_BUY_Buy und equip a|r |T7810733:0|t[Zephrali Verbeugen]
    .collect 277110,1 --Collect Zephrali Bow
    .vendor 271465 >>Händler trash und repair if needed
    *Nicht sell |T132832:0|t[Kleines Eis] und |T133972:0|t[Strider Fleisch]. << Horde
    *|cRXP_WARN_Wir brauchen sie für Kochkunst später|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Horde Hunter
    #optional
    #completewith LeavingValanaarA
    .xp <9,1
    .itemcount 277110,1 --Zephrali Bow
    +|cRXP_WARN_Legt|r |T7810733:0|t[Bogen der Zephrali] an.
    .use 277110 --Zephrali Bow
step << Horde Warrior
    .xp <9,1
    .money <0.2151
    .isNotOnQuest 92679 --Blood Tithe
    .isQuestAvailable 92679 --Blood Tithe
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.28
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Falfaan Halfwind::271465|r im Haus.
    >>|cRXP_BUY_Buy und equip a|r |T7792097:0|t[Zephrali Smasher].
    .collect 277106,1 --Zephrali Smasher
    .vendor 271465 >>Händler trash und repair if needed.
    *Nicht sell |T132832:0|t[Kleines Eis] und |T133972:0|t[Strider Fleisch]. << Horde
    *|cRXP_WARN_Wir brauchen sie für Kochkunst später|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Horde Warrior
    #optional
    #completewith LeavingValanaarA
    .xp <9,1
    .itemcount 277106,1 --Zephrali Smasher
    +|cRXP_WARN_Legt|r |T7792097:0|t[Zermalmer der Zephrali] an.
    .use 277106 --Zephrali Smasher
step << Horde Shaman/Horde Druid
    .xp <9,1
    .money <0.2176
    .isNotOnQuest 92679 --Blood Tithe
    .isQuestAvailable 92679 --Blood Tithe
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.48
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Falfaan Halfwind::271465|r im Haus.
    >>|cRXP_BUY_Buy und equip a|r |T7798447:0|t[Großstab der Zephrali].
    .collect 277109,1 --Zephrali Greatstaff
    .vendor 271465 >>Händler trash und repair if needed.
    *Nicht sell |T133970:0|t[Stringy Fleisch], |T132832:0|t[Kleines Eis], oder |T133972:0|t[Strider Fleisch]. << Alliance
    *Nicht sell |T132832:0|t[Kleines Eis] und |T133972:0|t[Strider Fleisch]. << Horde
    *|cRXP_WARN_Wir brauchen sie für Kochkunst später|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Horde Shaman/Horde Druid
    #optional
    #completewith LeavingValanaarA
    .xp <9,1
    .itemcount 277109,1 --Zephrali Greatstaff
    +|cRXP_WARN_Legt|r |T7798447:0|t[Großstab der Zephrali] an.
    .use 277109 --Zephrali Greatstaff
step << Horde Rogue
    .xp <9,1
    .money <0.1727
    .isNotOnQuest 92679 --Blood Tithe
    .isQuestAvailable 92679 --Blood Tithe
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.35
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Falfaan Halfwind::271465|r im Haus.
    >>|cRXP_BUY_Buy und equip a|r |T7791298:0|t[Zephrali Keulen].
    .collect 277107,1 --Zephrali Bludgeon
    .vendor 271465 >>Händler trash und repair if needed.
    *Nicht sell |T132832:0|t[Kleines Eis] und |T133972:0|t[Strider Fleisch]. << Horde
    *|cRXP_WARN_Wir brauchen sie für Kochkunst später|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Horde Rogue
    #optional
    #completewith LeavingValanaarA
    .xp <9,1
    .itemcount 277107,1 --Zephrali Bludgeon
    +|cRXP_WARN_Legt|r |T7791298:0|t[Knüppel der Zephrali] an.
    .use 277107 --Zephrali Bludgeon

step << Horde
    .train 2366,3 -- Herbalism Trained
    .isQuestComplete 97968 -- Camping 101: Herbalism
    .goto 2521,57.890,75.514
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Syriel Nightrain::254345|r.
    .target Syriel Nightrain::254345
    .turnin 97968 >>Gebt die Quest Lager aufschlagen 101: Kräuterkunde ab
step << Hunter Horde
    .money <0.1345
    .isOnQuest 93735 -- The Broken Construct
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.82
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Falfaan Halfwind::271465|r im Haus.
    >>|cRXP_BUY_Buy und equip a|r |T7810733:0|t[Zephrali Verbeugen]
    .collect 277110,1 --Collect Zephrali Bow
    .vendor 271465 >>Händler trash und repair if needed
    *Nicht sell |T133970:0|t[Stringy Fleisch], |T132832:0|t[Kleines Eis], oder |T133972:0|t[Strider Fleisch]. << Alliance
    *Nicht sell |T132832:0|t[Kleines Eis] und |T133972:0|t[Strider Fleisch]. << Horde
    *|cRXP_WARN_Wir brauchen sie für Kochkunst später|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Horde
    #label LeavingValanaarA
    .goto 2521,59.064,72.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Riaani Nightwind::256083|r.
    .target Riaani Nightwind::256083
    .turnin 93735 >>Gebt die Quest The Kaputt Konstrukt 1 ab
    .accept 93737 >>Akzeptiert die Quest The Kaputt Konstrukt 2
    .complete 93737,1 --|1/1 Listen to what Riaani Nightwind has to say
-- step << Horde
--     .goto 2521,59.265,79.977
--     >>Wait for the roleplay. -- Probably skipping this quest.
--     .complete 92708,1 --|1/1 Listen to Ayessa
-- step << Horde
--     #label LeavingValanaarA
--     .goto 2521,59.150,79.790
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ayessa Dawnsinger::251968|r.
--     .target Ayessa Dawnsinger::251968
--     .turnin 92708 >>Turn in A Grand Adventure
step << Horde
    --@THIDDI: Not sure if worth it.
    #completewith next
    #label BrokenConstructA
    #hidewindow
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Konstrukt Teile|r |cRXP_WARN_in der Höhle auf dem Boden|r.
    .complete 93737,2 --|1/1 Obtain Crystallized lightning from the Shriekling Cave
step << Horde
    #completewith BrokenConstructA
    .goto 2521,51.397,68.644,15 >>Betretet die Höhle
step << Horde
    --@THIDDI: Not sure if worth it.
    #requires BrokenConstructA
    #loop
    .goto 2521,51.434,67.603,15,0
    .goto 2521,51.874,67.221,15,0
    .goto 2521,52.933,66.084,15,0
    .goto 2521,53.201,65.424,15,0
    .goto 2521,52.752,64.732,15,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Konstrukt Teile|r |cRXP_WARN_in der Höhle auf dem Boden|r.
    .complete 93737,2 --|1/1 Obtain Crystallized lightning from the Shriekling Cave

step << Horde
    #completewith next
    #label BrokenConstructB
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aamelia Windfield::252800|r.
    *|cRXP_WARN_Sie kann sich während eines Rollenspiels zwischen Orten bewegen. Wartet am Wegpunkt-Ort|r.
    .complete 92679,1 --1/1 Find Aamelia Windfield
    .target Aamelia Windfield::252800
step << Horde
    #completewith BrokenConstructB
    .goto 2521,51.397,68.644,15 >>Verlasst die Höhle

-- ============================================================================
-- Shared Route Resumes at Windfield Orchard
-- ============================================================================

step
    #requires BrokenConstructB << Horde
    #label FindAameliaWindfieldA
    #loop
    .goto 2521,46.71,81.94,30,0
    .goto 2521,47.511,78.490,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aamelia Windfield::252800|r.
    *|cRXP_WARN_Sie könnte sich während einer Rollenspielbewegung zwischen Orten bewegen|r.
    *|cRXP_WARN_Sucht sie aus der Ferne oder folgt ihrem Dialog; der Pfeil markiert nur einen ungefähren Ort|r.
    *|cRXP_WARN_Wenn ein Tornado vorhanden ist, benutzt ihn für schnellere Reisen|r.
    *|cRXP_WARN_Falls ihr durch den Obstgarten geht, passt auf getarnte Banditen auf|r.
    .complete 92679,1 --1/1 Find Aamelia Windfield
    .target Aamelia Windfield::252800
step
    #loop
    .goto 2521,46.71,81.94,30,0
    .goto 2521,47.511,78.490,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aamelia Windfield::252800|r.
    *|cRXP_WARN_Sie könnte sich während einer Rollenspielbewegung zwischen Orten bewegen|r.
    *|cRXP_WARN_Sucht sie aus der Ferne oder folgt ihrem Dialog; der Pfeil markiert nur einen ungefähren Ort|r.
    .turnin 92679 >>Gebt die Quest Blutzehnt ab
    .accept 92682 >>Akzeptiert die Quest Macht Euch nützlich
    .accept 92684 >>Akzeptiert die Quest Ornery Ornery Galestriders
    .accept 92683 >>Akzeptiert die Quest Flutterfly-Staub
    .target Aamelia Windfield::252800

-- step << Alliance
--     .isOnQuest 92682 -- Make Yourself Useful
--     .isQuestNotComplete 92682 -- Make Yourself Useful
--     .subzoneskip 16663,1 -- Windfield Orchard
--     .goto 2521,45.73,80.86
--     .cast 1259705 >>Use |T236219:0|t[Read Ley Line] for 100% increased passive Mana and Health regeneration.
--     .cooldown spell,1259705,>0,1
--     .usespell 1259705
step
    -- #label RipBanditsA
    #loop
    .goto 2521,46.164,78.043,30,0
    .goto 2521,48.920,84.441,30,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf die |cRXP_PICK_Reife Stormapples|r.
    >>Tötet |cRXP_ENEMY_Hungry Bandits::252802|r |cRXP_WARN_(stealthed)|r.
    *Jäger-Tipps: Drückt Tab schnell, um sie frühzeitig anzuvisieren. Nutzt Mal des Jägers gegen sie, damit ihr weglaufen und sie von weiter weg treffen könnt. << Hunter
    .complete 92682,1 --10/10 Ripe Stormapple
    .complete 92682,2 --5/5 Hungry Bandit slain
    .mob +Hungry Bandit::252802
step << Horde
    .isOnQuest 92684 -- Ornery Ornery Galestriders
    .cooldown spell,1259686,>0,1 -- Skysight
    .goto 2521,48.416,80.537
    .cast 1259686 >>Benutzt |T1029587:0|t[Himmelssicht] für den 10%-Bewegungsgeschwindigkeitsbuff.
step
    #optional
    #completewith WhatIsMyPurposeA
    >>Tötet |cRXP_ENEMY_Ornery Galestriders::251707|r. Plündert sie für |T2066012:0|t[|cRXP_LOOT_Lowlands Galestrider Tenderloins|r].
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step
    #optional
    #completewith WhatIsMyPurposeA
    >>Benutzt wiederholt |T537768:0|t[Flatterfliegenklatsche] auf |cRXP_ENEMY_Flutterflies::251622|r
    >>|TInterface/cursor/crosshair/interact.blp:16|tKlickt auf |cRXP_PICK_Flutterfly Staub|r.
    *|cRXP_WARN_Falls ein Flutterfly nicht wegfliegt, benutzt den Schwatter erneut auf ihn|r << !Mage !Druid
    *|cRXP_WARN_Wirkt wiederholt|r |T136071:0|t[Verwandlung] |cRXP_WARN_und benutzt die Fliegenklatsche auf dem gleichen Flutterfly für zusätzlichen Staub|r. << Mage
    *|cRXP_WARN_Wirkt|r |T136100:0|t[Wucherwurzeln] |cRXP_WARN_und benutzt die Fliegenklatsche auf dem gleichen Flutterfly für zusätzlichen Staub|r. << Druid
    .complete 92683,1 --5/5 Flutterfly Dust
    .mob Flutterfly::251622
    .use 253666 -- Flutterfly Swatter
step
    #label WhatIsMyPurposeA
    #loop
    .goto 2521,49.085,78.358,12,0
    .goto 2521,48.621,78.385,12,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Malfunctioning Wirbelsturm Konstrukt::250929|r.
    .accept 92698 >>Akzeptiert die Quest What Is My Purpose?
    .target Malfunctioning Cyclone Construct::250929


-- ============================================================================
-- Windfield Orchard Route Resumes
-- ============================================================================

step
    #completewith GalestriderTenderloinA
    #hidewindow
    #loop
    .goto 2521,50.017,77.659,40,0
    .goto 2521,51.3,80.59,40,0
    .goto 2521,50.868,83.289,40,0
    .goto 2521,50.42,83.74,40,0
    .goto 2521,49.24,81.79,40,0
    +1
step
    #optional
    #completewith next
    >>Tötet |cRXP_ENEMY_Ornery Galestriders::251707|r. Plündert sie für |T2066012:0|t[|cRXP_LOOT_Lowlands Galestrider Tenderloins|r].
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step
    >>Benutzt wiederholt |T537768:0|t[Flatterfliegenklatsche] auf |cRXP_ENEMY_Flutterflies::251622|r
    >>|TInterface/cursor/crosshair/interact.blp:16|tKlickt auf |cRXP_PICK_Flutterfly Staub|r.
    *|cRXP_WARN_Falls ein Flutterfly nicht wegfliegt, benutzt den Schwatter erneut auf ihn|r << !Mage !Druid
    *|cRXP_WARN_Wirkt wiederholt|r |T136071:0|t[Verwandlung] |cRXP_WARN_und benutzt die Fliegenklatsche auf dem gleichen Flutterfly für zusätzlichen Staub|r. << Mage
    *|cRXP_WARN_Wirkt|r |T136100:0|t[Wucherwurzeln] |cRXP_WARN_und benutzt die Fliegenklatsche auf dem gleichen Flutterfly für zusätzlichen Staub|r. << Druid
    .complete 92683,1 --5/5 Flutterfly Dust
    .mob Flutterfly::251622
    .use 253666 -- Flutterfly Swatter
step
    #label GalestriderTenderloinA
    >>Tötet |cRXP_ENEMY_Ornery Galestriders::251707|r. Plündert sie für |T2066012:0|t[|cRXP_LOOT_Lowlands Galestrider Tenderloins|r].
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step
    #loop
    .goto 2521,46.71,81.94,40,0
    .goto 2521,47.511,78.490,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aamelia Windfield::252800|r.
    *|cRXP_WARN_Falls ein Tornado in der Nähe ist, nutzt ihn zum schnelleren Reisen|r.
    *|cRXP_WARN_Sie könnte sich während einer Rollenspielbewegung zwischen Orten bewegen|r.
    *|cRXP_WARN_Sucht sie aus der Ferne oder folgt ihrem Dialog; der Pfeil markiert nur einen ungefähren Ort|r.
    .turnin 92682 >>Gebt die Quest Macht Euch nützlich ab
    .turnin 92684,3 >>Gebt die Quest Ornery Ornery Galestriders ab
    .turnin 92698 >>Gebt die Quest What Is My Purpose? ab
    .turnin 92683 >>Gebt die Quest Flutterfly Staub ab
    .accept 92685 >>Akzeptiert die Quest The Hills Have Augen
    .target Aamelia Windfield::252800

-- ============================================================================
-- Horde Shaman: Call of Fire Detour
-- ============================================================================

step << Horde Shaman
    #loop
    .goto 2521,50.017,77.659,40,0
    .goto 2521,51.3,80.59,40,0
    .goto 2521,50.868,83.289,40,0
    .goto 2521,50.42,83.74,40,0
    .goto 2521,49.24,81.79,40,0
    .xp 10 >>Farmt bis Stufe 10
step << Horde Shaman
    #completewith next
    .hs >>Benutzt euren Ruhestein zum Valanaar
    .cooldown item,6948,>0 --Hearthstone
step << Horde Shaman
    .isQuestAvailable 97243 -- Deliver the News
    -- .subzoneskip 16638,1 -- Valanaar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Donaal Downbreeze::255940|r.
    .vendor 255940 >>Verkauft Müll
    .collect 1179,20 >>Kauft |T132815:0|t[Eiskalt Milk] << Mage/Druid/Priest/Warlock/Paladin/Hunter/Shaman
    *Nicht sell |T132832:0|t[Kleines Eis] und |T133972:0|t[Strider Fleisch]. << Horde
    *|cRXP_WARN_Wir brauchen sie für Kochkunst später|r.
    .target Donaal Downbreeze::255940
    .goto 2521,62.180,72.616
    .skipgossipid 137078
step << Horde Shaman
    .goto 2521,58.313,78.499
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sessaria Skystride::252382|r.
    .accept 97243 >>Akzeptiert die Quest Ruf des Feuers
    .target Sessaria Skystride::252382
step << Horde Shaman
    .money <0.12
    .isQuestAvailable 97243 -- Call of Fire
    .xp <10,1
    .subzoneskip 16638,1 -- Valanaar
    .goto 2521,58.313,78.499
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sessaria Skystride::252382|r.
    .trainer >>Trainiere deine Klassenfähigkeiten
    .target Sessaria Skystride::252382
step << Horde Shaman
    #label CallOfFireA
    .goto 2521,54.402,77.329,30,0
    .goto 2521,51.240,86.187
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Olariaan Swiftburn::268592|r.
    .turnin 97243 >>Gebt die Quest Ruf des Feuers ab
    .accept 97244 >>Akzeptiert die Quest Ruf des Feuers
    .target Olariaan Swiftburn::268592
-- step << Shaman
--     .isOnQuest 97244
--     .isQuestNotComplete 97244
--     .goto 2521,50.8,89.6
-- -- #ignorecorpse
--     .deathskip >>|cRXP_WARN_(BETA: Resurrection Sickness is bugged. Skip this step for now.)|r Jump down to die and respawn at the |cRXP_FRIENDLY_Spirit Healer::6491|r.
--     .skipgossipid 96031
--     .skipgossipid 98031
--     .target Spirit Healer::6491
step << Horde Shaman
    .goto 2521,64.380,63.586
    >>Tötet |cRXP_ENEMY_Skypriest Faladiel::268602|r. Plündert sie für |T839910:0|t[|cRXP_LOOT_Faladiel's Herz|r].
    .complete 97244,1 --|1/1 Faladiel's Heart
    .mob Skypriest Faladiel::268602
-- step << Shaman
--     .isOnQuest 97244
--     .goto 2521,62.384,64.393
-- -- #ignorecorpse
--     .deathskip >>|cRXP_WARN_(BETA: Resurrection Sickness is bugged. Skip this step for now.)|r Jump down to die and respawn at the |cRXP_FRIENDLY_Spirit Healer::6491|r.
--     .skipgossipid 96031
--     .skipgossipid 98031
--     .target Spirit Healer::6491
step << Horde Shaman
    #label CallOfFireB
    .goto 2521,51.241,86.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Olariaan Swiftburn::268592|r.
    .target Olariaan Swiftburn::268592
    .turnin 97244 >>Gebt die Quest Ruf des Feuers ab
    .accept 97245 >>Akzeptiert die Quest Ruf des Feuers

-- ============================================================================
-- The Hills Have Eyes: Bandit Hunt
-- ============================================================================

step << Alliance
    .isOnQuest 92685 -- The Hills Have Eyes
    .isQuestNotComplete 92685 -- The Hills Have Eyes
    .subzoneskip 16663,1 -- Windfield Orchard
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .goto 2521,45.73,80.86
    .cast 1259705 >>Benutzt |T236219:0|t[Leylinie erschließen] für 100% erhöhte passive Mana- und Gesundheitsregeneration.
    .usespell 1259705
step
    #completewith next
    #label Bandit Highwaymen
    *|cRXP_WARN_Legt|r |T7791298:0|t[Flatterfliegenklatsche] an, falls ihr nicht |T7791298:0|t[Knüppel der Zephrali] habt. << Rogue
    >>Tötet |cRXP_ENEMY_Bandit Highwaymen::252820|r. Plündert sie für |T133693:0|t[|cRXP_LOOT_Blood-Stained Räuber Masks|r].
    *|cRXP_WARN_Beobachtet getarnte Feinde im Apfelgarten|r.
    .complete 92685,1 --7/7 Blood-Stained Bandit Mask
    .mob Bandit Highwaymen::252820
    .use 263329 << Rogue -- Flutterfly Swatter
step
    #completewith Bandit Highwaymen
    .goto 2521,44.81,74.4,30 >>Macht von Euch den Weg den Berg hinauf
    *|cRXP_WARN_Falls ihr einen Tornado seht, benutzt ihn zum schnelleren Reisen.|r
step << Horde
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt die |cRXP_PICK_Konstrukt Teile|r.
    .complete 93737,4 --|1/1 Obtain Air Construct Core from the Bandit Camp
step
    #requires Bandit Highwaymen
    #loop
    .goto 2521,45.615,72.361,35,0
    .goto 2521,43.551,74.999,35,0
    -- .goto 2521,45.760,78.419,35,0
    >>Tötet |cRXP_ENEMY_Bandit Highwaymen::252820|r. Plündert sie für |T133693:0|t[|cRXP_LOOT_Blood-Stained Räuber Masks|r].
    .complete 92685,1 --7/7 Blood-Stained Bandit Mask
    .mob Bandit Highwaymen::252820
step << Horde
    #loop
    .goto 2521,45.615,72.361,35,0
    .goto 2521,43.551,74.999,35,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Konstrukt-Teile|r.
    .complete 93737,4 --|1/1 Obtain Air Construct Core from the Bandit Camp
step << Horde Shaman
    .goto 2521,42.393,68.887
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Kuramaa's Stump|r.
    >>Tötet |cRXP_ENEMY_Kuramaa::268605|r. Plündert sie für |T3549050:0|t[|cRXP_LOOT_Kuramaa's Maske|r].
    *|cRXP_WARN_Er schlägt euch zurück und erleidet zusätzlichen Feuer-Schaden|r.
    .complete 97245,1 --|1/1 Kuramaa's Mask
    .mob Kuramaa::268605
    .usespell 8024
step
    #loop
    .goto 2521,45.615,72.361,35,0
    .goto 2521,43.551,74.999,35,0
    .xp 10 >>Farmt bis Stufe 10
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aamelia Windfield::252800|r.
    *|cRXP_WARN_Sie könnte sich während einer Rollenspielbewegung zwischen Orten bewegen|r.
    *|cRXP_WARN_Sucht sie aus der Ferne oder folgt ihrem Dialog; der Pfeil markiert nur einen ungefähren Ort|r.
    .turnin 92685 >>Gebt die Quest The Hills Have Augen ab
    .accept 92693 >>Akzeptiert die Quest Stand Our Ground << Alliance
    .target Aamelia Windfield::252800
step
    .isOnQuest 92685 -- The Hills Have Eyes
    -- .subzoneskip 16626,1 -- Gustberry Lowlands
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,43.84,75.53,30,0
    .goto 2521,44.06,76.19,15,0
    .goto 2521,47.511,78.490
    .cast 1259416 >>Springt vom Berg herunter und benutzt |T132845:0|t[Gehen on Luft] |cRXP_WARN_in der Luft|r, um zum Wegpunkt zu fliegen.
    .usespell 1259416
step
    #loop
    .goto 2521,46.71,81.94,30,0
    .goto 2521,47.511,78.490,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aamelia Windfield::252800|r.
    *|cRXP_WARN_Sie könnte sich während einer Rollenspielbewegung zwischen Orten bewegen|r.
    *|cRXP_WARN_Sucht sie aus der Ferne oder folgt ihrem Dialog; der Pfeil markiert nur einen ungefähren Ort|r.
    *Ihr könnt vom Berg abspringen und |T132845:0|t[Luftwandeln] |cRXP_WARN_in der Luft|r benutzen, um zum Wegpunkt-Ort zu fliegen.
    *|cRXP_WARN_Beobachtet die getarnten Banditen entlang des Weges|r.
    .turnin 92685 >>Gebt die Quest The Hills Have Augen ab
    .accept 92693 >>Akzeptiert die Quest Stand Our Ground << Alliance
    .target Aamelia Windfield::252800
step << Alliance
    .goto 2521,46.71,81.94
    >>Kehrt zum Ort der |cRXP_FRIENDLY_Aamelia Windfield::252800|r zurück und sprecht mit ihr.
    .complete 92693,1 --1/1 Speak with Aamelia Windfield
    .timer 75,Rollenspiel-Dauer
    .target Aamelia Windfield::252800
    .skipgossipid 136302
step << Alliance
    .goto 2521,47.51,78.44
    >>Folgt |cRXP_FRIENDLY_Aamelia Windfield::252800|r. Wartet auf das Rollenspiel.
    *Wenn Aamelia stehen bleibt, platziert ein Lagerfeuer, wenn ihr eins habt und keines ist in der Nähe. Fangt an zu kochen, um Fertigkeitspunkte zu erhalten.
    .complete 92693,2 --1/1 Follow Aamelia and make your final stand
    .use 279981 -- Basic Campfire Kit
step << Alliance
    .goto 2521,47.51,78.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aamelia Windfield::252800|r.
    *|cRXP_WARN_Dreht die Quest sofort ein; Aamelia wird bald zu ihrem ursprünglichen Ort zurückkehren|r.
    .turnin 92693 >>Gebt die Quest Stand Our Ground ab
    .accept 92703 >>Akzeptiert die Quest Deliver the Neues
    .target Aamelia Windfield::252800
step << Horde
    .isOnQuest 92703 -- Deliver the News
    .goto 2521,48.445,80.591
    .cast 1259686 >>Benutzt |T1029587:0|t[Himmelssicht] für den 10%-Bewegungsgeschwindigkeitsbuff.
    .cooldown spell,1259686,>0,1

-- ============================================================================
-- City: Alliance and Non-Shaman Horde
-- ============================================================================

step << Alliance/Horde !Shaman
    .isQuestAvailable 92703 -- Deliver the News
    .subzoneskip 16638 -- Valanaar
    .hs >>Benutzt euren Ruhestein zum Valanaar
    .cooldown item,6948,>0 --Hearthstone
-- step << Alliance
--     #completewith Turn in The Missing Scholar
--     .aura 1258510
--     >>Kill |cRXP_ENEMY_Skyhoppers::251314|r.
--     *|cRXP_WARN_If you find a Tornado, touch it to gain its speed buff|r.
--     *|cRXP_WARN_While the Tornado speed buff is active, avoid killing them|r.
--     .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
--     .mob Skyhopper::251314
-- step
--     .goto 2521,50.33,76.66
--     .goto 2521,54.13,76.3
step << Alliance/Horde !Shaman
    .isQuestAvailable 92703 -- Deliver the News
    -- .subzoneskip 16638,1 -- Valanaar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Donaal Downbreeze::255940|r.
    *|cRXP_BUY_Kauft|r |T134534:0|t[Forest Pilz Cap] |cRXP_BUY_bei ihm|r. |cRXP_BUY_Ihr werdet dies später verwenden, um euer Haustier zu füttern|r << Hunter
    .vendor 255940 >>Verkauft Müll
    .collect 1179,20 >>Kauft |T132815:0|t[Eiskalt Milk] << Mage/Druid/Priest/Warlock/Paladin/Hunter
    .collect 4604,5 << Hunter -- Forest Mushroom
    *Nicht sell |T133970:0|t[Stringy Fleisch], |T132832:0|t[Kleines Eis], oder |T133972:0|t[Strider Fleisch]. << Alliance
    *Nicht sell |T132832:0|t[Kleines Eis] und |T133972:0|t[Strider Fleisch]. << Horde
    *|cRXP_WARN_Wir brauchen sie für Kochkunst später|r.
    .target Donaal Downbreeze::255940
    .goto 2521,62.180,72.616
    .skipgossipid 137078

-- ============================================================================
-- Horde Shaman: Call of Fire Finale
-- ============================================================================

step << Horde Shaman
    .goto 2521,51.240,86.187
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Olariaan Swiftburn::268592|r.
    .target Olariaan Swiftburn::268592
    .turnin 97245 >>Gebt die Quest Ruf des Feuers ab
    .accept 97257 >>Akzeptiert die Quest Ruf des Feuers
    .timer 35,Rollenspiel-Dauer
step << Horde Shaman
    .goto 2521,51.265,85.927
    >>Wartet auf das Rollenspiel. Benutzt die |T135432:0|t[Fackel of Ewige Flamme] auf dem brennenden |cRXP_PICK_Brazier of Opfergabe|r.
    .complete 97257,1 --|1/1 Complete the Ritual with Olariaan
    .use 277329 -- Torch of Eternal Flame
step << Horde Shaman
    .goto 2521,52.400,81.309,25,0
    .goto 2521,54.907,76.598,15,0
    .goto 2521,58.312,78.827
    >>Ihr habt etwa 5 Minuten Zeit, um zurückzulaufen.
    *|cRXP_WARN_Falls ein Tornado in der Nähe ist, nutzt ihn zum schnelleren Reisen|r.
    .complete 97257,2 --|1/1 Light the Brazier of Eternal Flame
    .skipgossipid 140778
step << Horde Shaman
    .goto 2521,58.315,78.512
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sessaria Skystride::252382|r.
    .target Sessaria Skystride::252382
    .turnin 97257 >>Gebt die Quest Ruf des Feuers ab
-- step << Horde Shaman
--     #completewith next
--     >>Kill |cRXP_ENEMY_Skyhoppers::251314|r.
--     *|cRXP_WARN_This quest is optional. You can skip it if there are too many other players doing it at the same time|r.
--     .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
--     .mob Skyhopper::251314

-- ============================================================================
-- City: Horde Shaman
-- ============================================================================


step << Horde Shaman
    .isQuestAvailable 98512 -- Al'Aketh Assassins
    .goto 2521,59.40,75.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Falfaan Halfwind::271465|r.
    .vendor 271465 >>Verkauft Müll
    *Nicht sell |T132832:0|t[Kleines Eis] und |T133972:0|t[Strider Fleisch].
    *|cRXP_WARN_Wir brauchen sie für Kochkunst später|r.
    .target Falfaan Halfwind::271465
    .skipgossipid 141556


-- ============================================================================
-- Shared City Tour at Level 10
-- ============================================================================

step
    .isQuestComplete 92703 -- Deliver the News
    .goto 2521,61.94,72.8,10,0
    .goto 2521,62.05,73.09,8,0
    .goto 2521,62.11,73.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alvarion Windfield::252448|r |cRXP_WARN_auf dem zweiten Stock|r.
    .turnin 92703,1 >>Gebt die Quest Deliver the Neues ab << Warrior/Shaman/Paladin
    .turnin 92703,2 >>Gebt die Quest Lieferung des Neuen ab << Druid/Priest
    .turnin 92703,3 >>Gebt die Quest Deliver the Neues ab << Rogue
    .turnin 92703 >>Gebt die Quest Deliver the Neues ab << Hunter/Mage/Warlock
    .target Alvarion Windfield::252448
step
    #completewith Accept Catching Wind
    *|cRXP_WARN_Anlegen|r |T134435:0|t[Schaufeln] << Warrior/Shaman/Paladin
    *|cRXP_WARN_Anlegen|r |T133057:0|t[Roofing Hammer] << Druid/Priest
    *|cRXP_WARN_Anlegen|r |T134520:0|t[Trusty Schraubenschlüssel] << Rogue
    .use 263312 << Warrior/Shaman/Paladin -- Planting Shovel
    .use 263314 << Druid/Priest -- Roofing Hammer
    .use 263313 << Rogue -- Trusty Wrench
step << Alliance
    #completewith Turn in The Missing Scholar
    .aura 1258510
    >>Tötet |cRXP_ENEMY_Skyhoppers::251314|r.
    *|cRXP_WARN_Falls ihr einen Tornado findet, berührt ihn, um seinen Geschwindigkeitsbonus zu erhalten|r.
    *|cRXP_WARN_Während der Tornado-Geschwindigkeitsbonus aktiv ist, vermeidet es, sie zu töten|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
-- step << Mage/Priest/Warlock
--     .xp <9,1
--     .money <0.1734
--     .isNotOnQuest 92679 --Blood Tithe
--     .isQuestAvailable 92679 --Blood Tithe
--     .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.18
--     .goto 2521,59.395,75.730
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfaan Halfwind::271465|r inside the house.
--     >>|cRXP_BUY_Buy and equip a|r |T7792229:0|t[Zephrali Knife].
--     .collect 277108,1 --Zephrali Knife
--     .vendor 271465 >>Vendor trash and repair if needed.
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
--     *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
--     *|cRXP_WARN_We need them for Cooking later|r.
--     .skipgossipid 141556
--     .target Falfaan Halfwind::271465
step << Mage
    .goto 2521,62.887,77.324
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Belann Windwood::256507|r.
    .target Belann Windwood::256507
    .accept 93791 >>Akzeptiert die Quest Sprechen mit Belann
    .turnin 93791 >>Gebt die Quest Sprechen mit Belann ab
    .accept 93797 >>Akzeptiert die Quest Zweige im Wind
step << Warrior
    .goto 2521,59.889,72.869
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
    .target Seena Skybreaker::252377
    .accept 94003 >>Akzeptiert die Quest Das Himmelsbrecher-Bollwerk
step << Warrior
    .money <0.12
    .xp <10,1
    .goto 2521,59.55,73.3,25,0
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
    .train 6546 >>Erlernen |T132155:0|t[Verwunden (Rang 2)]
    .train 2687 >>Erlernen |T132277:0|t[Blutrausch]
    .skipgossipid 136813
    .target Seena Skybreaker::252377
step << Warrior/Paladin
    .xp <9,1
    .money <0.2151
    .isQuestAvailable 98512 --Al'Aketh Assassins
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.28
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Falfaan Halfwind::271465|r im Haus.
    >>|cRXP_BUY_Buy und equip a|r |T7792097:0|t[Zephrali Smasher].
    .collect 277106,1 --Zephrali Smasher
    .vendor 271465 >>Händler trash und repair if needed.
    *Nicht sell |T133970:0|t[Stringy Fleisch], |T132832:0|t[Kleines Eis], oder |T133972:0|t[Strider Fleisch]. << Alliance
    *Nicht sell |T132832:0|t[Kleines Eis] und |T133972:0|t[Strider Fleisch]. << Horde
    *|cRXP_WARN_Wir brauchen sie für Kochkunst später|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Warrior/Paladin
    #optional
    #completewith Accept Catching Wind << Alliance
    #completewith Learn << Horde
    .xp <9,1
    .itemcount 277106,1 --Zephrali Smasher
    +|cRXP_WARN_Legt|r |T7792097:0|t[Zermalmer der Zephrali] an.
    .use 277106 --Zephrali Smasher
step << Shaman/Druid
    .xp <9,1
    .money <0.2176
    .isQuestAvailable 98512 --Al'Aketh Assassins
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.48
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Falfaan Halfwind::271465|r im Haus.
    >>|cRXP_BUY_Buy und equip a|r |T7798447:0|t[Großstab der Zephrali].
    .collect 277109,1 --Zephrali Greatstaff
    .vendor 271465 >>Händler trash und repair if needed. << Druid
    *Nicht sell |T133970:0|t[Stringy Fleisch], |T132832:0|t[Kleines Eis], oder |T133972:0|t[Strider Fleisch]. << Alliance
    *Nicht sell |T132832:0|t[Kleines Eis] und |T133972:0|t[Strider Fleisch]. << Horde Druid
    *|cRXP_WARN_Wir brauchen sie für Kochkunst später|r. << Druid
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Shaman/Druid
    #optional
    #completewith Accept Catching Wind << Alliance
    #completewith Learn << Horde
    .xp <9,1
    .itemcount 277109,1 --Zephrali Greatstaff
    +|cRXP_WARN_Legt|r |T7798447:0|t[Großstab der Zephrali] an.
    .use 277109 --Zephrali Greatstaff
step << Rogue
    .money <0.09
    -- .train 2070,1 -- Sap (Rank 2) Not Trained
    .train 6774,1 -- Slice and Dice (Rank 2) Not Trained
    .train 8696,1 -- Sprint (Rank 2) Not Trained
    .xp <10,1
    .goto 2521,59.55,73.3,30,0
    .goto 2521,59.9,72.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eltheen Nightbreeze::252379|r.
    -- *|cRXP_WARN_You can interact with him through walls not sure if we want to add it|r
    .train 674 >>Erlernt |T132147:0|t[Beidhändigkeit]
    -- .train 6770 >>Train |T132310:0|t[Sap]
    .train 5171 >>Erlerne |T132306:0|t[Zerhäckseln]
    .train 2983 >>Erlernt |T132307:0|t[Sprinten]
    .skipgossipid 136810
    .target Eltheen Nightbreeze::252379
step << Rogue
    .xp <9,1
    .money <0.1727
    .isQuestAvailable 98512 --Al'Aketh Assassins
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.35
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Falfaan Halfwind::271465|r im Haus.
    >>|cRXP_BUY_Buy und equip a|r |T7791298:0|t[Zephrali Keulen].
    .collect 277107,1 --Zephrali Bludgeon
    .vendor 271465 >>Händler trash und repair if needed.
    *Nicht sell |T133970:0|t[Stringy Fleisch], |T132832:0|t[Kleines Eis], oder |T133972:0|t[Strider Fleisch]. << Alliance
    *Nicht sell |T132832:0|t[Kleines Eis] und |T133972:0|t[Strider Fleisch]. << Horde
    *|cRXP_WARN_Wir brauchen sie für Kochkunst später|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Rogue
    #optional
    #completewith Accept Catching Wind << Alliance
    #completewith Learn << Horde
    .xp <9,1
    .itemcount 277107,1 --Zephrali Bludgeon
    +|cRXP_WARN_Legt|r |T7791298:0|t[Knüppel der Zephrali] an.
    .use 277107 --Zephrali Bludgeon
step << Hunter
    .goto 2521,59.55,73.3,25,0
    .goto 2521,59.572,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .accept 94978 >>Akzeptiert die Quest Die Zähmung der Bestie
    .target Quel'ana Quickgale::252389
step << Hunter
    .money <0.08
    .xp <10,1
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .train 13165 >>Erlernen |T136076:0|t[Aspekt des Falken]
    .train 13549 >>Erlernen |T132204:0|t[Schlangengift (Rang 2)]
    .skipgossipid 136808
    .target Quel'ana Quickgale::252389
step << Hunter
    .xp <9,1
    .money <0.1345
    .isQuestAvailable 98512 --Al'Aketh Assassins
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.82
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Falfaan Halfwind::271465|r im Haus.
    >>|cRXP_BUY_Buy und equip a|r |T7810733:0|t[Zephrali Verbeugen]
    .collect 277110,1 --Collect Zephrali Bow
    .vendor 271465 >>Händler trash und repair if needed
    *Nicht sell |T133970:0|t[Stringy Fleisch], |T132832:0|t[Kleines Eis], oder |T133972:0|t[Strider Fleisch]. << Alliance
    *Nicht sell |T132832:0|t[Kleines Eis] und |T133972:0|t[Strider Fleisch]. << Horde
    *|cRXP_WARN_Wir brauchen sie für Kochkunst später|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Hunter
    #optional
    #completewith Accept Catching Wind << Alliance
    #completewith Learn << Horde
    .xp <9,1
    .itemcount 277110,1 --Zephrali Bow
    +|cRXP_WARN_Legt|r |T7810733:0|t[Bogen der Zephrali] an.
    .use 277110 --Zephrali Bow
step << Horde Druid
    .subzoneskip 16638,1 -- Valanaar
    .isNotOnQuest 94006 -- The Great Ursera Spirit
    .isQuestAvailable 94006 -- The Great Ursera Spirit
    #completewith next
    .goto 2521,63.33,73.65,15,0
    .goto 2521,63.973,75.095,25 >>Geht über den Berg.
step << Horde Druid
    .goto 2521,63.983,75.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r.
    .accept 94006 >>Akzeptiert die Quest The Great Ursera Willenskraft
    .target Lotheluum Starbreeze::252359
step << Alliance Druid
    .xp <10,1
    .subzoneskip 16638,1 -- Valanaar
    .isNotOnQuest 94006 -- The Great Ursera Spirit
    .isQuestAvailable 94006 -- The Great Ursera Spirit
    #completewith next
    .goto 2521,63.33,73.65,15,0
    .goto 2521,63.973,75.095,25 >>Geht über den Berg.
step << Alliance Druid
    .xp <10,1
    .goto 2521,63.983,75.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r.
    .accept 94006 >>Akzeptiert die Quest The Great Ursera Willenskraft
    .target Lotheluum Starbreeze::252359
step << Druid
    .money <0.12
    .xp <10,1
    .goto 2521,63.983,75.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r.
    .train 16689 >>Erlernen |T136063:0|t[Griff der Natur]
    -- .train 99 >>Train |TInterface/Icons/Ability_Druid_DemoralizingRoar:0|t[Demoralizing Roar]
    .train 1058 >>Erlernen |T136081:0|t[Verjüngung (Rang 2)]
    .train 5232 >>Erlernen |T136078:0|t[Mal der Wildnis (Rang 2)]
    .train 8924 >>Erlernen |T136096:0|t[Mondfeuer (Rang 2)]
    .skipgossipid 140781
    .target Lotheluum Starbreeze::252359

-- step << Alliance Hunter
--     .goto 2521,63.023,77.803,10,0
--     .goto 2521,66.26,79.90
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Antelariaa Cloudgaze::252390|r.
--     >>|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows]
--     .vendor 252390 >>Vendor trash
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat].
--     *|cRXP_WARN_We need them for Cooking later|r.
--     .collect 2515,1000 -- Sharp Arrows
--     .target Antelariaa Cloudgaze::252390

step << Mage
    .money <0.08
    .xp <10,1
    .goto 2521,65.91,80.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Anathamaas Aetherwind::252373|r
    .train 168 >>Erlernen |T135843:0|t[Frostschadenrüstung]
    .train 122 >>Erlernen |T135848:0|t[Frostschadennova]
    .train 5504 >>Erlernen |T132794:0|t[Wasser herbeizaubern]
    -- .train 587 >>Train |T133952:0|t[Conjure Food]
    .train 5505 >>Erlernen |T132794:0|t[Wasser herbeizaubern (Rang 2)]
    .skipgossipid 136807
    .target Anathamaas Aetherwind::252373
step << Alliance
    #label Turn in The Missing Scholar
    *|cRXP_WARN_Benutzt|r |T134520:0|t[|cRXP_LOOT_Treuer Schraubenschlüssel|r] |cRXP_WARN_und|r |T7791298:0|t[|cRXP_LOOT_Flatterfliegenklatsche|r] |cRXP_WARN_falls ihr nicht|r |T7791298:0|t[Knüppel der Zephrali] habt.<< Rogue
    .goto 2521,66.21,79.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Fillion Flamebreeze::253284|r.
    .turnin 92850 >>Gebt die Quest The Fehlt Scholar 2 ab
    .accept 99260 >>Akzeptiert die Quest Fillion's Mission
    .target Fillion Flamebreeze::253284
    .use 263313 << Rogue -- Trusty Wrench
    .use 263329 << Rogue -- Flutterfly Swatter
step << Alliance
    -- #completewith Protect the Index
    #completewith next
    .subzoneskip 16638,1 -- Valanaar
    .aura 1258510
    >>Tötet |cRXP_ENEMY_Skyhoppers::251314|r.
    *|cRXP_WARN_Falls ihr einen Tornado findet, berührt ihn, um seinen Geschwindigkeitsbonus zu erhalten|r.
    *|cRXP_WARN_Während der Tornado-Geschwindigkeitsbonus aktiv ist, vermeidet es, sie zu töten|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Alliance
    #label Accept Catching Wind
    .goto 2521,66.627,79.942
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elaadrin Evengale::252475|r.
    .target Elaadrin Evengale::252475
    .turnin 99260 >>Gebt die Quest Fillion's Mission ab
    .accept 92840 >>Akzeptiert die Quest Ein gefangener Wind

-- ============================================================================
-- Horde Hunter: Taming the Beast 1
-- ============================================================================

step << Horde Hunter
    #loop
    .goto 2521,54.460,78.811,48,0
    .goto 2521,51.968,73.084,35,0
    .goto 2521,53.126,73.502,20,0
    .goto 2521,51.268,69.758,35,0
    .use 267272 >>|cRXP_WARN_Benutzt Eure|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Windsong Kriecher::254588|r |cRXP_WARN_auf maximale Reichweite|r.
    .complete 94978,1 --Tame a Windsong Crawler
    .mob Windsong Crawler::254588
step << Horde Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .turnin 94978 >>Gebt die Quest Die Zähmung der Bestie ab
    .accept 94979 >>Akzeptiert die Quest Die Zähmung der Bestie
    .target Quel'ana Quickgale::252389
step << Horde Hunter
    #optional
    #completewith next
    +|cRXP_WARN_Entlasst euren |cRXP_ENEMY_Windsong Kriecher::254588|r, indem ihr mit der rechten Maustaste auf seinen Einheitsrahmen klickt und auf 'Freigeben' klickt, sonst könnt ihr keinen|r |cRXP_ENEMY_Ornery Galestrider::251707|r zähmen
    *|cRXP_WARN_Seid vorsichtig; es wird euch angreifen, wenn es entlassen wird|r.
step << Horde Hunter
    #loop
    .goto 2521,60.905,69.414,35,0
    .goto 2521,58.339,68.476,35,0
    .goto 2521,53.799,72.161,35,0
    .use 267298 >>|cRXP_WARN_Benutzt von Euch|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einem|r |cRXP_ENEMY_Ornery Galestrider::251707|r |cRXP_WARN_mit maximaler Reichweite|r.
    .complete 94979,1 --Tame an Ornery Galestrider
    .mob Ornery Galestrider::251707
step << Horde Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .turnin 94979 >>Gebt die Quest Die Zähmung der Bestie ab
    .accept 94013 >>Akzeptiert die Quest Die Zähmung der Bestie
    .target Quel'ana Quickgale::252389
step << Horde Hunter
    #optional
    #completewith next
    +|cRXP_WARN_Gebt von Euch |cRXP_ENEMY_Ornery Galestrider::251707|r frei, indem ihr mit Rechtsklick auf seinen Unit Frame klickt und auf Freigeben klickt, sonst könnt ihr|r |cRXP_ENEMY_Vuldren::250874|r nicht zähmen
    *|cRXP_WARN_Seid vorsichtig; es wird euch angreifen, wenn es entlassen wird|r.
step << Horde Hunter
    #loop
    --.goto 2521,56.946,67.887,35,0
    .goto 2521,54.080,74.719,35,0
    .goto 2521,52.625,77.864,25,0
    .goto 2521,53.021,81.568,25,0
    .goto 2521,51.647,80.140,25,0
    .goto 2521,48.981,82.669,35,0
    .use 264163 >> |cRXP_WARN_Benutzt von Euch|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einem|r |cRXP_ENEMY_Vuldren::250874|r |cRXP_WARN_mit maximaler Reichweite|r.
    .complete 94013,1 --Tame a Vuldren
    .mob Vuldren::250874
step << Horde Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .turnin 94013 >>Gebt die Quest Die Zähmung der Bestie ab
    .accept 94050 >>Akzeptiert die Quest Die Ausbildung des Tiers
    .target Quel'ana Quickgale::252389
step << Horde Hunter
    .goto 2521,59.605,72.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Quel'dora Quickgale::254411|r.
    .turnin 94050 >>Gebt die Quest Die Ausbildung des Tiers ab
    .target Quel'dora Quickgale::254411
step << Horde Hunter
    .xp <10,1
    .goto 2521,59.605,72.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Quel'dora Quickgale::254411|r.
    .train 4195 >>Erlernen |T136112:0|t[Große Ausdauer]
    .train 24547 >>Erlernen |T136094:0|t[Natürliche Rüstung]
    .skipgossipid 97876
    .target Quel'dora Quickgale::254411
step << Horde Hunter
    #sticky
    -- .goto 2521,60.905,69.414,35,0
    -- .goto 2521,58.339,68.476,35,0
    -- .goto 2521,53.799,72.161,35,0
    >>|cRXP_WARN_Wirkt|r |T132164:0|t[Wildtier zähmen] |cRXP_WARN_auf einem |cRXP_ENEMY_Windsong Kriecher::254588|r, um ihn zu zähmen|r -- .tame 1997
    *|cRXP_WARN_HINWEIS:|r Falls alle Krebse tot sind, könnt ihr auch einen |cRXP_ENEMY_Ornery Galestrider::251707|r zähmen, bis ihr einen Krebs findet.
    .train 2981 >> |cRXP_WARN_Greift mobs mit ihm an um|r |T132140:0|t[Klaue (Rang 2)] zu lernen
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Hier Klicken für mehr Infos bezüglich Pet Training|r
	.mob Windsong Crawler::254588

-- ============================================================================
-- Level 10+ Deathskip Version
-- ============================================================================

-- step << Alliance
--     .isOnQuest 92840 -- Catching Wind
--     .subzoneskip 16638,1 -- Shen'dar Village
--     .goto 2521,67.41,80.46
--     .subzone 16626 >>Jump off the cliff
-- step << Alliance
--     #ignorecorpse
--     .subzoneskip 16626,1 -- Gustberry Lowlands
--     .isOnQuest 92840 -- Catching Wind
--     .showwhiledead
--     .goto 2521,54.99,68.14
--     .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Spirit Healer::6491|r.
--     .skipgossipid 96031
--     .skipgossipid 98031
--     .target Spirit Healer::6491
step << Alliance !Hunter
    #completewith Protect the Index
    >>Tötet |cRXP_ENEMY_Windsong Crawlers::254588|r. Plündert sie für |T133972:0|t[|cRXP_LOOT_Windsong Kriecher Fleisch|r].
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler::254588
    .skipgossipid 98031
    .skipgossipid 96031
step << Alliance Hunter
    #completewith Protect the Index
    .goto 2521,51.56,71.28,40,0
    .goto 2521,50.94,69.46,40,0
    .use 267272 >> |cRXP_WARN_Benutzt Eure|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Windsong Kriecher::254588|r |cRXP_WARN_auf maximale Reichweite|r.
    -- *|cRXP_WARN_Be careful while Resurrection Sickness is active|r.
    .complete 94978,1 --Tame a Windsong Crawler
    .mob Windsong Crawler::254588
step << Alliance
    #optional
    #completewith next
    #label Protect the Index
    .goto 2521,50.06,72.96,30,0
    .goto 2521,48.83,73.54,30,0
    .goto 2521,47.16,72.34,30,0
    .goto 2521,46.55,71.7,30,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Crystals|r
    .complete 92840,1 --|6/6 Gather Data on Elemental Currents
    .use 254584 -- Index Esoteria
    .mob Windshaper Elementalist
    .mob Windshaper Guardian
step << Alliance
    #completewith Protect the Index
    .goto 2521,46.52,70.33,30 >>Geht um den Berg herum.
    *|cRXP_WARN_Wenn ein Tornado in der Nähe ist, berührt ihn, um 40% erhöhte Bewegungsgeschwindigkeit für 5 Minuten zu erhalten. Wenn ihr Schaden verursacht, wird der Effekt entfernt|r.
    *|cRXP_WARN_Tut dies nicht use|r |T132845:0|t[Gehen on Luft] |cRXP_WARN_during this step|r.
step << Alliance
    #requires Protect the Index
    #loop
    .goto 2521,47.77,70.04,20,0
    .goto 2521,47.32,68.68,30,0
    .goto 2521,48.25,69,20,0
    .goto 2521,48.68,69.06,20,0
    .goto 2521,48.13,70.15,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Crystals|r
    *|cRXP_WARN_Tut dies nicht use|r |T132845:0|t[Gehen on Luft] |cRXP_WARN_during this step|r.
    .complete 92840,1 --|6/6 Gather Data on Elemental Currents
    .use 254584 -- Index Esoteria
    .mob Windshaper Elementalist
    .mob Windshaper Guardian
step << Mage
    .goto 2521,48.59,67.77
    >>|TInterface/cursor/crosshair/interact.blp:20|tSammelt |cRXP_PICK_Ast|r.
    .complete 93797,1 --1/1 Wind-Infused Bough
step << Alliance
    .isQuestComplete 92840 -- Catching Wind
    .isQuestComplete 94978 << Hunter -- Taming the Beast
    .subzoneskip 16638 -- Valanaar
    .subzoneskip 16626 -- Gustberry Lowlands
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,49.46,70.12,30,0
    .goto 2521,52.35,70.23
    .cast 1259416 >>Springt vom Berg und benutzt |T132845:0|t[Luftwandeln], um zum Ort zu fliegen.
    -- *|cRXP_WARN_Be careful of the enemies near the edge. If you die, accept Resurrection Sickness|r.
    *|cRXP_WARN_Seid vorsichtig vor den Feinden nahe der Kante|r.
    .usespell 1259416
step << Alliance Hunter
    .isOnQuest 94978 -- Taming the Beast
    .isQuestNotComplete 94978 -- Taming the Beast
    .goto 2521,49.47,65.13,40,0
    .goto 2521,50.07,67.39,40,0
    .goto 2521,50.98,69.45,40,0
    .goto 2521,52.05,71.71,40,0
    .goto 2521,51.82,72.95,40,0
    .goto 2521,52.81,75.82,40,0
    .use 267272 >>|cRXP_WARN_Benutzt eure|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Windsong Kriecher::254588|r |cRXP_WARN_bei maximaler Reichweite|r.
    .complete 94978,1 --Tame a Windsong Crawler
    .mob Windsong Crawler::254588
step << Alliance Hunter
    .isQuestComplete 94978 -- Taming the Beast
    .isQuestComplete 92840 -- Catching Wind
    .subzoneskip 16638 -- Valanaar
    .subzoneskip 16626 -- Gustberry Lowlands
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,50.57,68.18,30,0
    .goto 2521,52.73,71.12
    .cast 1259416 >>Springt vom Berg und benutzt |T132845:0|t[Luftwandeln], um zum Ort zu fliegen.
    .usespell 1259416
step << Alliance Hunter/Alliance Mage
    #completewith SkyhopperMultiClass
    >>Tötet |cRXP_ENEMY_Skyhoppers::251314|r.
    *|cRXP_WARN_Falls ihr einen Tornado findet, berührt ihn, um seinen Geschwindigkeitsbonus zu erhalten|r.
    *|cRXP_WARN_Während der Tornado-Geschwindigkeitsbonus aktiv ist, vermeidet es, sie zu töten|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Alliance Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .turnin 94978 >>Gebt die Quest Die Zähmung der Bestie ab
    .accept 94979 >>Akzeptiert die Quest Die Zähmung der Bestie
    .target Quel'ana Quickgale::252389
step << Alliance Hunter
    #optional
    #completewith next
    +|cRXP_WARN_Entlasst euren |cRXP_ENEMY_Windsong Kriecher::254588|r, indem ihr mit der rechten Maustaste auf seinen Einheitsrahmen klickt und auf 'Freigeben' klickt, sonst könnt ihr keinen|r |cRXP_ENEMY_Ornery Galestrider::251707|r zähmen
    *|cRXP_WARN_Seid vorsichtig; es wird euch angreifen, wenn es entlassen wird|r.
step << Alliance Hunter
    #loop
    .goto 2521,60.905,69.414,35,0
    .goto 2521,58.339,68.476,35,0
    .goto 2521,53.799,72.161,35,0
    .use 267298 >>|cRXP_WARN_Benutzt eure|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Ornery Galestrider::251707|r |cRXP_WARN_bei maximaler Reichweite|r.
    .complete 94979,1 --Tame an Ornery Galestrider
    .mob Ornery Galestrider::251707
step << Alliance Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .turnin 94979 >>Gebt die Quest Die Zähmung der Bestie ab
    .accept 94013 >>Akzeptiert die Quest Die Zähmung der Bestie
    .target Quel'ana Quickgale::252389
step << Alliance Hunter
    .train 2366,3 -- Herbalism Trained
    .isQuestComplete 97968 -- Camping 101: Herbalism
    .goto 2521,57.890,75.514
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Syriel Nightrain::254345|r.
    .turnin 97968 >>Gebt die Quest Lager aufschlagen 101: Kräuterkunde ab
    .target Syriel Nightrain::254345
step << Alliance Hunter
    #optional
    #completewith next
    +|cRXP_WARN_Gebt von Euch |cRXP_ENEMY_Ornery Galestrider::251707|r frei, indem ihr mit Rechtsklick auf seinen Unit Frame klickt und auf Freigeben klickt, sonst könnt ihr|r |cRXP_ENEMY_Vuldren::250874|r nicht zähmen
    *|cRXP_WARN_Seid vorsichtig; es wird euch angreifen, wenn es entlassen wird|r.
step << Alliance Hunter
    .isOnQuest 94013 --Taming the Beast
    .isQuestNotComplete 94013 --Taming the Beast
    .subzoneskip 16638,1
    #label SkyhopperMultiClass
    .goto 2521,57.11,74.49
    .subzone 16626 >> Betretet Gustberry Lowlands
step << Alliance Hunter
    #loop
    .goto 2521,54.23,75,40,0
    .goto 2521,53.45,80.93,40,0
    .goto 2521,52.56,77.82,40,0
    .goto 2521,61.944,68.828,35,0
    .goto 2521,59.516,64.846,35,0
    .goto 2521,57.041,67.729,35,0
    .goto 2521,54.322,75.080,35,0
    .goto 2521,51.925,80.458,35,0
    .goto 2521,52.920,81.509,35,0
    .use 264163 >>|cRXP_WARN_Benutzt eure|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf|r |cRXP_ENEMY_Vuldren::250874|r |cRXP_WARN_bei maximaler Reichweite|r.
    .complete 94013,1 --Tame a Vuldren
    .mob Vuldren::250874
    .mob Vuldren Alpha::250874
step << Alliance Hunter
    #completewith next
    >>Tötet |cRXP_ENEMY_Skyhoppers::251314|r.
    *|cRXP_WARN_Falls ihr einen Tornado findet, berührt ihn, um seinen Geschwindigkeitsbonus zu erhalten|r.
    *|cRXP_WARN_Während der Tornado-Geschwindigkeitsbonus aktiv ist, vermeidet es, sie zu töten|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Alliance Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .turnin 94013 >>Gebt die Quest Die Zähmung der Bestie ab
    .accept 94050 >>Akzeptiert die Quest Die Ausbildung des Tiers
    .target Quel'ana Quickgale::252389
step << Alliance Hunter
    .goto 2521,59.605,72.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Quel'dora Quickgale::254411|r.
    .turnin 94050 >>Gebt die Quest Die Ausbildung des Tiers ab
    .target Quel'dora Quickgale::254411
step << Alliance Hunter
    .xp <10,1
    .goto 2521,59.605,72.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Quel'dora Quickgale::254411|r.
    .train 4195 >>Erlernen |T136112:0|t[Große Ausdauer]
    .train 24547 >>Erlernen |T136094:0|t[Natürliche Rüstung]
    .skipgossipid 97876
    .target Quel'dora Quickgale::254411
step << Alliance Hunter
    #sticky
    .goto 2521,60.905,69.414,35,0
    .goto 2521,58.339,68.476,35,0
    .goto 2521,53.799,72.161,35,0
    >>|cRXP_WARN_Wirkt|r |T132164:0|t[Wildtier zähmen] |cRXP_WARN_auf einem |cRXP_ENEMY_Windsong Kriecher::254588|r, um ihn zu zähmen|r -- .tame 1997
    *|cRXP_WARN_HINWEIS:|r Falls alle Krebse tot sind, könnt ihr auch einen |cRXP_ENEMY_Ornery Galestrider::251707|r zähmen, bis ihr einen Krebs findet.
    .train 2981 >> |cRXP_WARN_Greift mobs mit ihm an um|r |T132140:0|t[Klaue (Rang 2)] zu lernen
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Hier Klicken für mehr Infos bezüglich Pet Training|r
	.mob Windsong Crawler::254588
step << Mage
    #label SkyhopperMultiClass
    .goto 2521,62.89,77.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Belann Windwood::256507|r.
    .turnin 93797 >>Gebt die Quest Zweige im Wind ab
    .target Belann Windwood::256507
step << Mage
    #loop
    .goto 2521,62.71,77.75,15,0
    .goto 2521,63.06,77.3,20,0
    .goto 2521,62.67,76.59,25,0
    .goto 2521,62.16,75.12,30,0
    .goto 2521,63.03,74.51,30,0
    .goto 2521,63.72,76.13,30,0
    .goto 2521,64.18,78.18,30,0
    .goto 2521,63.19,79.17,30,0
    .goto 2521,64.36,80.69,30,0
    >>Tötet |cRXP_ENEMY_Skyhoppers::251314|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Alliance !Hunter
    .train 2366,3 -- Herbalism Trained
    .isQuestComplete 97968 -- Camping 101: Herbalism
    .goto 2521,57.890,75.514
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Syriel Nightrain::254345|r.
    .turnin 97968 >>Gebt die Quest Lager aufschlagen 101: Kräuterkunde ab
    .target Syriel Nightrain::254345
step << Alliance !Mage/Alliance !Hunter
    #loop
    .goto 2521,58.85,75.49,30,0
    .goto 2521,59.05,76.35,30,0
    .goto 2521,59.8,75.68,30,0
    .goto 2521,61.4,74.76,40,0
    .goto 2521,62.61,76.14,40,0
    .goto 2521,63.1,77.59,20,0
    .goto 2521,62.67,77.77,15,0
    .goto 2521,63.13,77.32,15,0
    .goto 2521,62.97,76.91,15,0
    .goto 2521,63.8,78.01,30,0
    .goto 2521,63.16,78.97,30,0
    .goto 2521,65.37,78.53,40,0
    >>Tötet |cRXP_ENEMY_Skyhoppers::251314|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314

-- step << Horde
--     #loop
--     .goto 2521,63.1,77.59,20,0
--     .goto 2521,62.67,77.77,15,0
--     .goto 2521,63.13,77.32,15,0
--     .goto 2521,62.97,76.91,15,0
--     .goto 2521,63.8,78.01,30,0
--     .goto 2521,63.16,78.97,30,0
--     .goto 2521,65.37,78.53,40,0
--     .goto 2521,58.85,75.49,30,0
--     .goto 2521,59.05,76.35,30,0
--     .goto 2521,59.8,75.68,30,0
--     .goto 2521,61.4,74.76,40,0
--     .goto 2521,62.61,76.14,40,0
--     >>Kill |cRXP_ENEMY_Skyhoppers::251314|r.
--     *|cRXP_WARN_This quest is optional. You can skip it if there are too many other players doing it at the same time|r.
--     .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
--     .mob Skyhopper::251314

-- ============================================================================
-- Horde: Branch
-- ============================================================================

-- ============================================================================
-- Horde Bugged Section
-- ============================================================================

-- step << Horde
--     #completewith next
--     #label BuggedHordeA
--     #optional
--     .isOnQuest 93949
--     .isQuestComplete 93949
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
--     .turnin 93949 >>Turn in Bugged
--     .target Valennia Stormfist::252383
-- step << Horde
--     #optional
--     #completewith BuggedHordeA
--     .goto 2521,65.93,76.37,8,0
--     .goto 2521,66.46,76.8,5,0
--     .goto 2521,66.43,76.58,5,0
--     .goto 2521,66.43,76.83,5,0
--     .goto 2521,66.31,77.08,5,0
--     .goto 2521,66,76.57,8,0
--     .goto 2521,66.19,76.22,8,0
--     .goto 2521,66.44,76.4,5 >>Climb the tower
-- step << Horde
--     #requires BuggedHordeA
--     #optional
--     .isOnQuest 93949
--     .isQuestComplete 93949
--     .goto 2521,66.18,76.66
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
--     .turnin 93949 >>Turn in Bugged
--     .target Valennia Stormfist::252383
-- step << Horde
--     .abandon 93949 >>Abandon Bugged

-- ============================================================================
-- Horde Druid Section
-- ============================================================================

step << Horde Druid
    .isOnQuest 94006 -- The Great Ursera Spirit
    .subzoneskip 16638,1 -- Valanaar
    .goto 2521,65.378,74.886,20,0
    .goto 2521,65.424,71.472,35,0
    .goto 2521,65.905,68.024
    .subzone 16626 >>Folgt dem Weg aus Valanaar
step << Horde Druid
    .isOnQuest 94006 -- The Great Ursera Spirit
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,69.01,65.86,20,0
    .goto 2521,69.84,61.73
    .cast 1259416 >>Springt vom Berg herunter und benutzt |T132845:0|t[Gehen on Luft], um zum Questgeber zu fliegen.
    .usespell 1259416
step << Horde Druid
    .goto 2521,69.782,61.609
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Urs'endris::255853|r.
    .turnin 94006 >>Gebt die Quest The Great Ursera Willenskraft ab
    .accept 94638 >>Akzeptiert die Quest Stärke und Gnade
    .target Urs'endris::255853
step << Horde Druid
    .isOnQuest 94638 -- Strength and Mercy
    .cooldown spell,1259686,>0,1 -- Skysight
    .goto 2521,46.597,38.121
    .cast 1259686 >>Benutzt |T1029587:0|t[Himmelssicht] für den 10%-Bewegungsgeschwindigkeitsbuff.
-- step << Horde !Druid
--      -- Not sure yet if I want to do this. This saves "only" ~15 seconds
--     .isQuestAvailable 98512
--     .goto 2521,61.221,78.472
--     .deathskip >>|cRXP_WARN_(BETA: Resurrection Sickness is bugged. Skip this step for now.)|r Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r.
-- step << Horde Druid
--     .isOnQuest 94638
--     .goto 2521,62.384,64.393
--     .deathskip >>|cRXP_WARN_(BETA: Resurrection Sickness is bugged. Skip this step for now.)|r Die and respawn at the |cRXP_FRIENDLY_Spirit Healer::6491|r.
step << Horde Druid
    #completewith next
    .goto 2521,59.59,66.7,30,0
    >>Tötet |cRXP_ENEMY_Windsong Crawlers::254588|r. Plündert sie für |T133972:0|t[|cRXP_LOOT_Windsong Kriecher Fleisch|r].
    .complete 93317,1 --6/6 Windsong Crawler Meat
step << Horde
    .goto 2521,59.528,66.902,30,0
    .goto 2521,56.81,61.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Fendaal Windstone::273017|r.
    *|cRXP_WARN_Wenn ein Tornado in der Nähe ist, berührt ihn, um 40% erhöhte Bewegungsgeschwindigkeit für 5 Minuten zu erhalten. Wenn ihr Schaden verursacht, wird der Effekt entfernt|r.
    .accept 98512 >>Akzeptiert die Quest Al'Aketh Assassins
    .target Fendaal Windstone::273017
step << Horde
    #loop
    .goto 2521,55.27,59.58,35,0
    .goto 2521,54.58,60.52,35,0
    .goto 2521,55.93,60.3,35,0
    .goto 2521,56.04,59.08,35,0
    >>Tötet |cRXP_ENEMY_Al'Aketh Assassins::254626|r.
    .complete 98512,1 --10/10 Al'Aketh Assassin slain
    .mob Al'Aketh Assassin::254626
step << Horde !Druid
    .goto 2521,56.80,61.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Fendaal Windstone::273017|r.
    .turnin 98512 >>Gebt die Quest Al'Aketh Assassins ab
    .target Fendaal Windstone::273017
step << Horde
    #loop
    .goto 2521,53.56,59.17,35,0
    .goto 2521,52.91,58.56,35,0
    .goto 2521,52.08,59.23,35,0
    .goto 2521,52.49,57.3,35,0
    .goto 2521,53.55,55.55,35,0
    .goto 2521,54.3,57.94,35,0
    >>Tötet |cRXP_ENEMY_Windsong Crawlers::254588|r. Plündert sie für |T133972:0|t[|cRXP_LOOT_Windsong Kriecher Fleisch|r].
    *|cRXP_WARN_HINWEIS:|r Diese Quest ist |cRXP_WARN_OPTIONAL|r. Überspringt diesen Schritt, falls die Krabben zu sehr umstritten sind.
    .complete 93317,1 --6/6 Windsong Crawler Meat
step << Horde
    .subzoneskip 16625,1 -- Windsong Lake
    .isQuestAvailable 93159 -- The Strange Hermit
    .goto 2521,52.790,57.628
    .cast 1259686 >>Benutzt |T1029587:0|t[Himmelssicht] für den 10%-Bewegungsgeschwindigkeitsbuff.
    .cooldown spell,1259686,>0,1
step << Horde
    --@THIDDI: Not sure if worth it.
    #loop
    .goto 2521,53.029,51.423,35,0
    .goto 2521,53.621,50.493,35,0
    .goto 2521,52.878,49.641,35,0
    .goto 2521,53.129,47.738,35,0
    .goto 2521,52.528,45.922,35,0
    .goto 2521,51.574,46.567,35,0
    .goto 2521,49.511,45.931,35,0
    .goto 2521,49.917,44.806,35,0
    .goto 2521,50.642,44.296,35,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Konstrukt-Teile|r.
    .complete 93737,3 --|1/1 Obtain Enchanted Gyrozephyr from Windsong Lake
    .mob Windsong Crawler::254588
step << Horde Druid
    .goto 2521,56.80,61.10,25,0
    .goto 2521,54.284,65.803
    >>Tötet |cRXP_ENEMY_Ur'endra::258443|r in der Höhle.
    .complete 94638,1 --|1/1 Ur'endra slain
    .mob Ur'endra::258443
step << Horde Druid
    .goto 2521,56.80,61.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Fendaal Windstone::273017|r.
    .turnin 98512 >>Gebt die Quest Al'Aketh Assassins ab
    .target Fendaal Windstone::273017
step << Horde Druid
    .isOnQuest 94638 -- Strength and Mercy
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,56.830,63.121,15,0
    .goto 2521,57.299,63.465,15,0
    .goto 2521,60.250,62.742,20,0
    .goto 2521,69.803,61.660
    .cast 1259416 >>Springt vom |cRXP_WARN_niedrigeren (nicht dem, auf dem ihr steht)|r Berg und benutzt |T132845:0|t[Gehen on Luft] um zum Questgeber zu fliegen.
    .usespell 1259416
step << Horde Druid
    .goto 2521,69.803,61.660
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Urs'endris::255853|r.
    .target Urs'endris::255853
    .turnin 94638 >>Gebt die Quest Stärke und Gnade ab

-- ============================================================================
-- Alliance: Branch
-- ============================================================================

step << Alliance
    .isOnQuest 92840 --Catching Wind
    .goto 2521,65.47,80.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Daeann Steelwind::252479|r.
    .vendor 252479 >>|cRXP_WARN_Vendor trash und repair|r.
    .skipgossipid 137531
    *Nicht sell |T133970:0|t[Stringy Fleisch], |T132832:0|t[Kleines Eis], oder |T133972:0|t[Strider Fleisch].
    *|cRXP_WARN_Wir brauchen sie für Kochkunst später|r.
    .target Daeann Steelwind::252479
step << Alliance
    .goto 2521,66.63,79.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elaadrin Evengale::252475|r.
    .turnin 92840 >>Gebt die Quest Ein gefangener Wind ab
    .accept 92834 >>Akzeptiert die Quest Avenged Tenfold
    .accept 92860 >>Akzeptiert die Quest In Service of Zephras
    .target Elaadrin Evengale::252475
step << Alliance
    .isQuestAvailable 93320
    .goto 2521,66.63,79.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elaadrin Evengale::252475|r.
    .accept 92709 >>Akzeptiert die Quest A Grand Adventure
    .target Elaadrin Evengale::252475
step << Alliance
    #optional
    #completewith next
    #label Service of Zephras
    *|cRXP_WARN_Legt an|r |T7810733:0|t[Verbeugen of Hours] << Hunter
    -- *|cRXP_WARN_Equip the|r |T7810733:0|t[Bow of Hours] << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
    .turnin 92860 >>Gebt die Quest In Service of Zephras ab
    .turnin 93949 >>Gebt die Quest Bugged ab
    .accept 93320 >>Akzeptiert die Quest Turmverteidigung
    .disablecheckbox
    .target Valennia Stormfist::252383
    .use 263404 << Hunter -- Bow of Hours
step << Alliance
    #completewith Service of Zephras
    .goto 2521,65.65,79.27,30,0
    .goto 2521,64.98,77.12,30,0
    .goto 2521,65.93,76.37,8,0
    .goto 2521,66.46,76.8,5,0
    .goto 2521,66.43,76.58,5,0
    .goto 2521,66.43,76.83,5,0
    .goto 2521,66.31,77.08,5,0
    .goto 2521,66,76.57,8,0
    .goto 2521,66.19,76.22,8,0
    .goto 2521,66.44,76.4,5 >>Klettert auf den Turm
    *|cRXP_WARN_Wenn ein Tornado vorhanden ist, benutzt ihn für schnellere Reisen|r.
step << Alliance
    #requires Service of Zephras
    .goto 2521,66.18,76.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
    .turnin 92860 >>Gebt die Quest Im Dienste von Zephras ab
    .turnin 93949 >>Gebt die Quest Bugged ab
    .accept 93320 >>Akzeptiert die Quest Turmverteidigung
    .target Valennia Stormfist::252383
step << Alliance !Druid
    .isNotOnQuest 94896 -- Aid For The Refugees
    .isOnQuest 93320 -- Tower Defense
    .subzoneskip 16638,1 -- Valanaar
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,66.47,76.64,10,0
    .goto 2521,65.36,71.79
    .cast 1259416 >>Springt vom Berg und benutzt |T132845:0|t[Luftwandeln], um zum Ort zu fliegen.
    .usespell 1259416
step << Alliance
    .goto 2521,65.956,74.309
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ealaane Nimbuswalker::259012|r.
    *|cRXP_WARN_Tut dies nicht use|r |T132845:0|t[Gehen on Luft] |cRXP_WARN_during this step|r. << Druid
    .accept 94896 >>Akzeptiert die Quest Hilfe For The Refugees.
    .accept 94897 >>Akzeptiert die Quest The Schicksal of a Geliebt Eins.
    .target Ealaane Nimbuswalker::259012
step << Alliance !Druid
    .isOnQuest 94897 -- The Fate of a Loved One
    .isOnQuest 93320 -- Tower Defense
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .goto 2521,64,74.06
    .cast 1259705 >>Benutzt |T236219:0|t[Leylinie erschließen] für 100% erhöhte passive Mana- und Gesundheitsregeneration.
    .usespell 1259705
step << Alliance
    #completewith next
    >>Tötet |cRXP_ENEMY_Al'Aketh Brawlers::270201|r.
    *Plündert sie für |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r].
   *|cRXP_WARN_Ihr werdet hier Fortschritte machen, aber die Quest wahrscheinlich an einem anderen Ort später beenden|r.
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Healer::254596
    .mob Al'Aketh Brawler::270201
    .mob Al'Aketh Preacher::253195
    .mob Al'Aketh Pillager::253511
step << Alliance
    .goto 2521,63.59,73.6,25,0
    .goto 2521,64.4,73.23,30,0
    .goto 2521,65.36,71.79,30,0
    .goto 2521,65.76,68.4,30,0
    .goto 2521,69.64,67.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yorana Windyreed::252378|r.
    *|cRXP_WARN_Falls ihr einen Tornado seht, benutzt ihn zum schnelleren Reisen.|r
    .turnin 93320,1 >>Gebt die Quest Turmverteidigung ab << Rogue/Hunter/Druid/Shaman
    .turnin 93320,2 >>Gebt die Quest Turmverteidigung ab << Mage/Priest/Warlock
    .turnin 93320,3 >>Gebt die Quest Turmverteidigung ab << Warrior/Paladin
    .accept 92642 >>Akzeptiert die Quest Logistik stören
    .accept 92645 >>Akzeptiert die Quest Zerbrechen the Zackschnabel
    .target Yorana Windyreed::252378
step << Alliance !Druid
    #completewith Commander Belguilos2
    >>Tötet |cRXP_ENEMY_Al'Aketh Brawlers::270201|r, |cRXP_ENEMY_Al'Aketh Preachers::253195|r, und |cRXP_ENEMY_Al'Aketh Pillagers::253511|r.
    *Plündert sie für |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r].
   *|cRXP_WARN_Ihr werdet hier Fortschritte machen, aber die Quest wahrscheinlich an einem anderen Ort später beenden|r.
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Brawler::270201
    .mob Al'Aketh Preacher::253195
    .mob Al'Aketh Pillager::253511
step << Alliance !Druid
    #optional
    #completewith Commander Belguilos2
    >>Tötet |cRXP_ENEMY_Al'Aketh Healers::254596|r und |cRXP_ENEMY_Al'Aketh Brawlers::270201|r.
    .complete 92642,1 --4/4 Al'Aketh Healer slain
    .mob +Al'Aketh Healer::254596
    .complete 92642,2 --8/8 Al'Aketh Brawler slain
    .mob +Al'Aketh Brawler::270201
step << Alliance !Druid
    #label Commander Belguilos2
    .goto 2521,65.71,65.59,30,0
    .goto 2521,65.84,65.02,15,0
    .goto 2521,65.58,65.63
    >>Tötet |cRXP_ENEMY_Commander Belguilos::252666|r |cRXP_WARN_auf der zweiten Etage|r im Haus.
    .complete 92645,1 --1/1 Commander Belguilos slain
    .mob Commander Belguilos::252666
step << Alliance !Druid
    #completewith next
    >>Tötet |cRXP_ENEMY_Al'Aketh Brawlers::270201|r, |cRXP_ENEMY_Al'Aketh Preachers::253195|r, und |cRXP_ENEMY_Al'Aketh Pillagers::253511|r.
    *Plündert sie für |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r].
   *|cRXP_WARN_Ihr werdet hier Fortschritte machen, aber die Quest wahrscheinlich an einem anderen Ort später beenden|r.
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Brawler::270201
    .mob Al'Aketh Preacher::253195
    .mob Al'Aketh Pillager::253511
step << Alliance !Druid
    #loop
    .goto 2521,65.34,65.79,40,0
    .goto 2521,65.43,64.53,40,0
    .goto 2521,64.46,66.11,40,0
    .goto 2521,64.71,67.65,40,0
    .goto 2521,66.59,67.5,40,0
    >>Tötet |cRXP_ENEMY_Al'Aketh Brawlers::270201|r und |cRXP_ENEMY_Al'Aketh Healers::254596|r.
    .complete 92642,1 --4/4 Al'Aketh Healer slain
    .mob +Al'Aketh Healer::254596
    .complete 92642,2 --8/8 Al'Aketh Brawler slain
    .mob +Al'Aketh Brawler::270201
    .mob +Al'Aketh Preacher::253195
    .mob +Al'Aketh Pillager::253511
step << Alliance Druid
    .isOnQuest 92834 -- Avenged Tenfold
    .subzoneskip 17675,1 -- East Pylon Watchtower
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,69.01,65.86,20,0
    .goto 2521,69.84,61.73
    .cast 1259416 >>Springt vom Berg herunter und benutzt |T132845:0|t[Gehen on Luft], um zum Questgeber zu fliegen.
    .usespell 1259416
step << Alliance Druid
    .goto 2521,69.782,61.609
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Urs'endris::255853|r.
    .target Urs'endris::255853
    .turnin 94006 >>Gebt die Quest The Great Ursera Willenskraft ab
    .accept 94638 >>Akzeptiert die Quest Stärke und Gnade
step << Alliance Druid
    .subzoneskip 16593,1
    .isOnQuest 92645 --Breaking the Breaker
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .goto 2521,69.08,61.98
    .cast 1259705 >>Benutzt |T236219:0|t[Leylinie erschließen] für 100% erhöhte passive Mana- und Gesundheitsregeneration.
    .usespell 1259705
step << Alliance Druid
    #completewith Commander Belguilos Druid2
    >>Tötet |cRXP_ENEMY_Al'Aketh Brawlers::270201|r, |cRXP_ENEMY_Al'Aketh Preachers::253195|r, und |cRXP_ENEMY_Al'Aketh Pillagers::253511|r.
    *Plündert sie für |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r].
   *|cRXP_WARN_Ihr werdet hier Fortschritte machen, aber die Quest wahrscheinlich an einem anderen Ort später beenden|r.
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Brawler::270201
    .mob Al'Aketh Preacher::253195
    .mob Al'Aketh Pillager::253511
step << Alliance Druid
    #optional
    #completewith Commander Belguilos Druid2
    >>Tötet |cRXP_ENEMY_Al'Aketh Healers::254596|r und |cRXP_ENEMY_Al'Aketh Brawlers::270201|r.
    .complete 92642,1 --4/4 Al'Aketh Healer slain
    .mob +Al'Aketh Healer::254596
    .complete 92642,2 --8/8 Al'Aketh Brawler slain
    .mob +Al'Aketh Brawler::270201
    .mob +Al'Aketh Preacher::253195
    .mob +Al'Aketh Pillager::253511
step << Alliance Druid
    #optional
    #completewith next
    #label Commander Belguilos Druid
    >>Tötet |cRXP_ENEMY_Commander Belguilos::252666|r |cRXP_WARN_auf der zweiten Etage|r im Haus.
    .complete 92645,1 --1/1 Commander Belguilos slain
    .mob Commander Belguilos::252666
step << Alliance Druid
    #completewith Commander Belguilos Druid
    .goto 2521,67.39,63.3,15 >>Geht über den Berg.
step << Alliance Druid
    #requires Commander Belguilos Druid
    #label Commander Belguilos Druid2
    .goto 2521,65.31,65.33,20,0
    .goto 2521,65.58,65.63
    >>Tötet |cRXP_ENEMY_Commander Belguilos::252666|r |cRXP_WARN_auf dem zweiten Stock|r im Haus.
    .complete 92645,1 --1/1 Commander Belguilos slain
    .mob Commander Belguilos::252666
step << Alliance Druid
    #completewith next
    >>Tötet |cRXP_ENEMY_Al'Aketh Brawlers::270201|r, |cRXP_ENEMY_Al'Aketh Preachers::253195|r, und |cRXP_ENEMY_Al'Aketh Pillagers::253511|r.
    *Plündert sie für |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r].
   *|cRXP_WARN_Ihr werdet hier Fortschritte machen, aber die Quest wahrscheinlich an einem anderen Ort später beenden|r.
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Brawler::270201
    .mob Al'Aketh Preacher::253195
    .mob Al'Aketh Pillager::253511
step << Alliance Druid
    #loop
    .goto 2521,65.34,65.79,40,0
    .goto 2521,65.43,64.53,40,0
    .goto 2521,64.46,66.11,40,0
    .goto 2521,64.71,67.65,40,0
    .goto 2521,66.59,67.5,40,0
    >>Tötet |cRXP_ENEMY_Al'Aketh Brawlers::270201|r und |cRXP_ENEMY_Al'Aketh Healers::254596|r.
    .complete 92642,1 --4/4 Al'Aketh Healer slain
    .mob +Al'Aketh Healer::254596
    .complete 92642,2 --8/8 Al'Aketh Brawler slain
    .mob +Al'Aketh Brawler::270201
    .mob +Al'Aketh Preacher::253195
    .mob +Al'Aketh Pillager::253511
step << Alliance
    .goto 2521,69.61,67.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yorana Windyreed::252378|r.
    .turnin 92645,1 >>Gebt die Quest Zerbrechen the Zackschnabel ab << Rogue/Hunter/Druid/Shaman
    .turnin 92645,2 >>Gebt die Quest Zerbrechen the Zackschnabel ab << Mage/Priest/Warlock
    .turnin 92645,3 >>Gebt die Quest Zerbrechen the Zackschnabel ab << Warrior/Paladin
    .turnin 92642 >>Gebt die Quest Logistik stören ab
    .accept 92880 >>Akzeptiert die Quest Rückkehr zu Valanaar
    .target Yorana Windyreed::252378
step << Alliance
    #optional
    #completewith next
    #label Return to Valanaar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
    .turnin 92880,1 >>Gebt die Quest Zurückkehren zu Valanaar ab << Warrior/Paladin
    .turnin 92880,2 >>Gebt die Quest Rückkehr zu Valanaar ab << Rogue -- Quickblade's Dagger
    .turnin 92880,3 >>Gebt die Quest Zurückkehren zu Valanaar ab << Hunter/Mage/Druid/Priest/Warlock
    .accept 92881 >>Akzeptiert die Quest Die Bitte des Hohen Ältesten
    .target Valennia Stormfist::252383
step << Alliance
    #completewith Return to Valanaar
    .goto 2521,65.58,68.58,30,0
    .goto 2521,65.93,76.37,5,0
    .goto 2521,66.46,76.8,5,0
    .goto 2521,66.43,76.58,5,0
    .goto 2521,66.43,76.83,5,0
    .goto 2521,66.31,77.08,5,0
    .goto 2521,66,76.57,8,0
    .goto 2521,66.19,76.22,8,0
    .goto 2521,66.44,76.4,5 >>Lauft um den Berg herum und erklimmt den Turm
    *|cRXP_WARN_Wenn ein Tornado vorhanden ist, benutzt ihn für schnellere Reisen|r.
step << Alliance
    #requires Return to Valanaar
    .goto 2521,66.20,76.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
    .turnin 92880,1 >>Gebt die Quest Zurückkehren zu Valanaar ab << Alliance Warrior/Alliance Paladin
    .turnin 92880,2 >>Gebt die Quest Zurückkehren zu Valanaar ab << Alliance Rogue -- Quickblade's Dagger
    .turnin 92880,3 >>Gebt die Quest Zurückkehren zu Valanaar ab << Alliance Hunter/Alliance Mage/Alliance Druid/Alliance Priest/Alliance Warlock
    .accept 92881 >>Akzeptiert die Quest The Hoch Elder's Request
    .target Valennia Stormfist::252383
step << Alliance
    .goto 2521,66.17,76.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Talaanis Shadowsong::252476|r.
    .turnin 92881 >>Gebt die Quest Die Bitte des Hohen Ältesten ab
    .accept 92643 >>Akzeptiert die Quest The Turncoat
    .target Talaanis::252476

-- ============================================================================
-- Level 10+ Non Deathskip Version
-- ============================================================================
step << Alliance
    .subzoneskip 16638,1 -- Valanaar
    .isQuestAvailable 98512 -- Al'Aketh Assassins
    .isNotOnQuest 98512 -- Al'Aketh Assassins
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,66.47,76.61,8,0
    .goto 2521,66.31,76.18,15,0
    .goto 2521,63.14,76.9
    .cast 1259416 >>Springt vom Berg und benutzt |T132845:0|t[Luftwandeln], um zum Ort zu fliegen.
    .usespell 1259416
step << Alliance
    .subzoneskip 16638,1 -- Valanaar
    .isQuestAvailable 98512 -- Al'Aketh Assassins
    .isNotOnQuest 98512 -- Al'Aketh Assassins
    .goto 2521,63.14,76.9,20,0
    .goto 2521,62.9,77.44,10,0
    .goto 2521,63.96,74.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Belann Windwood::256507|r im Haus.
    .vendor 256507 >>Händler trash und repair if needed
    *Nicht sell |T133970:0|t[Stringy Fleisch], |T132832:0|t[Kleines Eis], oder |T133972:0|t[Strider Fleisch].
    *|cRXP_WARN_Wir brauchen sie für Kochkunst später|r.
    .target Belann Windwood::256507
    .skipgossipid 137530
step << Hunter Alliance
    .xp <9,1
    .money <0.1345
    .isNotOnQuest 92679 -- Blood Tithe
    .isQuestAvailable 92679 -- Blood Tithe
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.82
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Falfaan Halfwind::271465|r im Haus.
    >>|cRXP_BUY_Buy und equip a|r |T7810733:0|t[Zephrali Verbeugen]
    .collect 277110,1 --Collect Zephrali Bow
    .vendor 271465 >>Händler trash und repair if needed
    *Nicht sell |T133970:0|t[Stringy Fleisch], |T132832:0|t[Kleines Eis], oder |T133972:0|t[Strider Fleisch]. << Alliance
    *Nicht sell |T132832:0|t[Kleines Eis] und |T133972:0|t[Strider Fleisch]. << Horde
    *|cRXP_WARN_Wir brauchen sie für Kochkunst später|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Hunter Alliance
    #optional
    #completewith secluded house
    .xp <9,1
    .itemcount 277110,1 --Zephrali Bow
    +|cRXP_WARN_Legt|r |T7810733:0|t[Bogen der Zephrali] an.
    .use 277110 --Zephrali Bow
step << Warrior Alliance/Paladin Alliance
    .xp <9,1
    .money <0.2151
    .isNotOnQuest 92679 --Blood Tithe
    .isQuestAvailable 92679 --Blood Tithe
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.28
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Falfaan Halfwind::271465|r im Haus.
    >>|cRXP_BUY_Buy und equip a|r |T7792097:0|t[Zephrali Smasher].
    .collect 277106,1 --Zephrali Smasher
    .vendor 271465 >>Händler trash und repair if needed.
    *Nicht sell |T133970:0|t[Stringy Fleisch], |T132832:0|t[Kleines Eis], oder |T133972:0|t[Strider Fleisch]. << Alliance
    *Nicht sell |T132832:0|t[Kleines Eis] und |T133972:0|t[Strider Fleisch]. << Horde
    *|cRXP_WARN_Wir brauchen sie für Kochkunst später|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Warrior Alliance/Paladin Alliance
    #optional
    #completewith secluded house
    .xp <9,1
    .itemcount 277106,1 --Zephrali Smasher
    +|cRXP_WARN_Legt|r |T7792097:0|t[Zermalmer der Zephrali] an.
    .use 277106 --Zephrali Smasher
step << Rogue Alliance
    .xp <9,1
    .money <0.1727
    .isNotOnQuest 92679 --Blood Tithe
    .isQuestAvailable 92679 --Blood Tithe
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.35
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Falfaan Halfwind::271465|r im Haus.
    >>|cRXP_BUY_Buy und equip a|r |T7791298:0|t[Zephrali Keulen].
    .collect 277107,1 --Zephrali Bludgeon
    .vendor 271465 >>Händler trash und repair if needed.
    *Nicht sell |T133970:0|t[Stringy Fleisch], |T132832:0|t[Kleines Eis], oder |T133972:0|t[Strider Fleisch]. << Alliance
    *Nicht sell |T132832:0|t[Kleines Eis] und |T133972:0|t[Strider Fleisch]. << Horde
    *|cRXP_WARN_Wir brauchen sie für Kochkunst später|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Rogue Alliance
    #optional
    #completewith secluded house
    .xp <9,1
    .itemcount 277107,1 --Zephrali Bludgeon
    +|cRXP_WARN_Legt|r |T7791298:0|t[Knüppel der Zephrali] an.
    .use 277107 --Zephrali Bludgeon
-- step << Alliance
--     .subzoneskip 16638,1 -- Valanaar
--     .isQuestAvailable 98512 -- Al'Aketh Assassins
--     .isNotOnQuest 98512 -- Al'Aketh Assassins
--     .cooldown spell,1259705,>0,1 -- Read Ley Line
--     .goto 2521,63.96,74.15
--     .cast 1259705 >>Use |T236219:0|t[Read Ley Line] for 100% increased passive Mana and Health regeneration.
--     .usespell 1259705


-- ============================================================================
-- Level 10+ Deathskip Version
-- ============================================================================


-- step << Hunter
--     .xp <9,1
--     .money <0.1345
--     .isNotOnQuest 92679 -- Blood Tithe
--     .isQuestAvailable 92679 -- Blood Tithe
--     .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.82
--     .goto 2521,59.395,75.730
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfaan Halfwind::271465|r inside the house.
--     >>|cRXP_BUY_Buy and equip a|r |T7810733:0|t[Zephrali Bow]
--     .collect 277110,1 --Collect Zephrali Bow
--     .vendor 271465 >>Vendor trash and repair if needed
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
--     *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
--     *|cRXP_WARN_We need them for Cooking later|r.
--     .skipgossipid 141556
--     .target Falfaan Halfwind::271465
-- step << Hunter
--     #optional
--     #completewith secluded house
--     .xp <9,1
--     .itemcount 277110,1 --Zephrali Bow
--     +|cRXP_WARN_Equip the|r |T7810733:0|t[Zephrali Bow].
--     .use 277110 --Zephrali Bow
-- step << Warrior/Paladin/Shaman/Druid
--     .xp <9,1
--     .money <0.2151
--     .isNotOnQuest 92679 --Blood Tithe
--     .isQuestAvailable 92679 --Blood Tithe
--     .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.28
--     .goto 2521,59.395,75.730
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfaan Halfwind::271465|r inside the house.
--     >>|cRXP_BUY_Buy and equip a|r |T7792097:0|t[Zephrali Smasher].
--     .collect 277106,1 --Zephrali Smasher
--     .vendor 271465 >>Vendor trash and repair if needed.
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
--     *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
--     *|cRXP_WARN_We need them for Cooking later|r.
--     .skipgossipid 141556
--     .target Falfaan Halfwind::271465
-- step << Warrior/Paladin/Shaman/Druid
--     #optional
--     #completewith secluded house
--     .xp <9,1
--     .itemcount 277106,1 --Zephrali Smasher
--     +|cRXP_WARN_Equip the|r |T7792097:0|t[Zephrali Smasher].
--     .use 277106 --Zephrali Smasher
-- step << Rogue
--     .xp <9,1
--     .money <0.1727
--     .isNotOnQuest 92679 --Blood Tithe
--     .isQuestAvailable 92679 --Blood Tithe
--     .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.35
--     .goto 2521,59.395,75.730
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfaan Halfwind::271465|r inside the house.
--     >>|cRXP_BUY_Buy and equip a|r |T7791298:0|t[Zephrali Bludgeon].
--     .collect 277107,1 --Zephrali Bludgeon
--     .vendor 271465 >>Vendor trash and repair if needed.
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
--     *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
--     *|cRXP_WARN_We need them for Cooking later|r.
--     .skipgossipid 141556
--     .target Falfaan Halfwind::271465
-- step << Rogue
--     #optional
--     #completewith secluded house
--     .xp <9,1
--     .itemcount 277107,1 --Zephrali Bludgeon
--     +|cRXP_WARN_Equip the|r |T7791298:0|t[Zephrali Bludgeon].
--     .use 277107 --Zephrali Bludgeon
-- step << Mage/Priest/Warlock
--     .xp <9,1
--     .money <0.1734
--     .isNotOnQuest 92679 --Blood Tithe
--     .isQuestAvailable 92679 --Blood Tithe
--     .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.18
--     .goto 2521,59.395,75.730
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfaan Halfwind::271465|r inside the house.
--     >>|cRXP_BUY_Buy and equip a|r |T7792229:0|t[Zephrali Knife].
--     .collect 277108,1 --Zephrali Knife
--     .vendor 271465 >>Vendor trash and repair if needed.
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
--     *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
--     *|cRXP_WARN_We need them for Cooking later|r.
--     .skipgossipid 141556
--     .target Falfaan Halfwind::271465
-- step << Alliance
--     .isNotOnQuest 98512 --Al'Aketh Assassins
--     .isQuestAvailable 98512 --Al'Aketh Assassins
--     .goto 2521,66.49,76.65,8,0
--     .goto 2521,68.84,78.42,-1
--     .goto 2521,60.74,78.02,-1
--     .subzone 16626 >>Jump off the cliff
-- step << Alliance Paladin/Alliance Priest/Alliance Warlock/Alliance Mage/Alliance Rogue
--     #optional
--     #completewith Al'Aketh Assassins Equip Reminder
--     +|cRXP_WARN_Equip the|r |T7792097:0|t[Honed Greathammer] if you don't have |T7792097:0|t[Zephrali Smasher]. << Paladin
--     +|cRXP_WARN_Equip the|r |T7798447:0|t[Balanced Quarterstaff] if you don't have |T7792229:0|t[Zephrali Knife]. << Priest/Warlock/Mage
--     +|cRXP_WARN_Equip the|r |TInterface/Icons/inv_knife_1h_skybornec60_b_01:0|t[Quickblade's Dagger] if you don't have |T7791298:0|t[Zephrali Bludgeon]. << Rogue
--     .use 257345 << Paladin -- Honed Greathammer
--     .use 257343 << Priest/Warlock/Mage -- Balanced Quarterstaff
--     .use 257346 << Rogue -- Quickblade's Dagger
-- step << Alliance
--     #ignorecorpse
--     .subzoneskip 16626,1 -- Gustberry Lowlands
--     .isNotOnQuest 98512 --Al'Aketh Assassins
--     .isQuestAvailable 98512 --Al'Aketh Assassins
--     .showwhiledead
--     .goto 2521,54.99,68.14
--     .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Spirit Healer::6491|r.
--     .skipgossipid 96031
--     .skipgossipid 98031
--     .target Spirit Healer::6491
step << Alliance
    #label Al'Aketh Assassins Equip Reminder
    .goto 2521,56.81,61.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Fendaal Windstone::273017|r.
    *|cRXP_WARN_Wenn ein Tornado in der Nähe ist, berührt ihn, um 40% erhöhte Bewegungsgeschwindigkeit für 5 Minuten zu erhalten. Wenn ihr Schaden verursacht, wird der Effekt entfernt|r.
    *|cRXP_WARN_Legt|r |T7792097:0|t[Gewetzter Großhammer] an, falls ihr nicht |T7792097:0|t[Zermalmer der Zephrali] habt. << Paladin
    *|cRXP_WARN_Legt|r |T7798447:0|t[Ausbalancierter Bauernstecken] an, falls ihr nicht |T7792229:0|t[Messer der Zephrali] habt. << Priest/Warlock/Mage
    *|cRXP_WARN_Legt|r |TInterface/Icons/inv_knife_1h_skybornec60_b_01:0|t[Quickblade's Dagger] an, falls ihr nicht |T7791298:0|t[Knüppel der Zephrali] habt. << Rogue
    .accept 98512 >>Akzeptiert die Quest Al'Aketh Assassins
    .target Fendaal Windstone::273017
step << Alliance
    #optional
    #completewith Fendaal Windstone
    >>Tötet |cRXP_ENEMY_Al'Aketh Assassins::254626|r.
    .complete 98512,1 --10/10 Al'Aketh Assassin slain
    .mob Al'Aketh Assassin::254626
step << Alliance
    #label secluded house
    .goto 2521,56.13,60.26
    >>Folgt dem Pfeil
    -- *|cRXP_WARN_Be careful while Resurrection Sickness is active|r.
    .complete 92643,1 --1/1 Find the secluded house in Shen'dar Highlands
step << Alliance
    .goto 2521,56.05,58.79
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt den |cRXP_PICK_toten Kultist|r.
    .complete 92643,2 --1/1 Find the Al'Aketh Turncoat
    .target Dead Cultist::253372
step << Alliance
    #label Fendaal Windstone
    .goto 2521,56.043,58.785
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dead Kultist::253372|r.
    .target Dead Cultist::253372
    .turnin 92643 >>Gebt die Quest The Turncoat ab
    .accept 92644 >>Akzeptiert die Quest Unfortunate Neues
step << Alliance
    #loop
    .goto 2521,55.27,59.58,35,0
    .goto 2521,54.58,60.52,35,0
    .goto 2521,55.93,60.3,35,0
    .goto 2521,56.04,59.08,35,0
    >>Tötet |cRXP_ENEMY_Al'Aketh Assassins::254626|r.
    .complete 98512,1 --10/10 Al'Aketh Assassin slain
    .mob Al'Aketh Assassin::254626
step << Alliance
    .goto 2521,56.80,61.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Fendaal Windstone::273017|r.
    .turnin 98512 >>Gebt die Quest Al'Aketh Assassins ab
    .target Fendaal Windstone::273017
step << Alliance Druid
    .goto 2521,54.284,65.803
    >>Tötet |cRXP_ENEMY_Ur'endra::258443|r in der Höhle.
    .complete 94638,1 --|1/1 Ur'endra slain
    .mob Ur'endra::258443
step << Alliance Druid
    .isOnQuest 94638 --Strength and Mercy
    .goto 2521,56,64.14,20,0
    .goto 2521,69.803,61.660
    .cast 1259416 >>Springt herunter vom |cRXP_WARN_unteren Berg|r und benutzt |T132845:0|t[Luftwandeln], um zum Auftraggeber zu fliegen. --Walk on Air
    .usespell 1259416 --Walk on Air
step << Alliance Druid
    .goto 2521,69.803,61.660
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Urs'endris::255853|r.
    .target Urs'endris::255853
    .turnin 94638 >>Gebt die Quest Stärke und Gnade ab
step << Alliance Druid
    #completewith Windsong Crawler Meat Druid2
    >>Tötet |cRXP_ENEMY_Al'Aketh Brawlers::270201|r, |cRXP_ENEMY_Al'Aketh Preachers::253195|r, und |cRXP_ENEMY_Al'Aketh Pillagers::253511|r |cRXP_WARN_unterwegs|r.
    *Plündert sie für |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r].
   *|cRXP_WARN_Ihr werdet hier Fortschritte machen, aber die Quest wahrscheinlich an einem anderen Ort später beenden|r.
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Brawler::270201
    .mob Al'Aketh Preacher::253195
    .mob Al'Aketh Pillager::253511
step << Alliance Druid
    #optional
    #completewith next
    #label Windsong Crawler Meat Druid
    .goto 2521,59.59,66.7,30,0
    >>Tötet |cRXP_ENEMY_Windsong Crawlers::254588|r |cRXP_WARN_unterwegs|r. Plündert sie, um |T133972:0|t[|cRXP_LOOT_Windsong Kriecher Fleisch|r] zu erhalten.
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler::254588
step << Alliance Druid
    #completewith Windsong Crawler Meat Druid
    #label Windsong Crawler Meat Druid2
    .goto 2521,57.25,60.92,50 >>Lauft um die Berge herum
    *|cRXP_WARN_Wenn ein Tornado vorhanden ist, benutzt ihn für schnellere Reisen|r.
step << Alliance Druid
    #requires Windsong Crawler Meat Druid
    #loop
    .goto 2521,53.56,59.17,35,0
    .goto 2521,52.91,58.56,35,0
    .goto 2521,52.08,59.23,35,0
    .goto 2521,52.49,57.3,35,0
    .goto 2521,53.55,55.55,35,0
    .goto 2521,54.3,57.94,35,0
    >>Tötet |cRXP_ENEMY_Windsong Crawlers::254588|r. Plündert sie für |T133972:0|t[|cRXP_LOOT_Windsong Kriecher Fleisch|r].
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler::254588
step << Alliance
    #loop
    .goto 2521,54.35,57.87,35,0
    .goto 2521,53.56,59.17,35,0
    .goto 2521,52.91,58.56,35,0
    .goto 2521,52.08,59.23,35,0
    .goto 2521,52.49,57.3,35,0
    .goto 2521,53.55,55.55,35,0
    .goto 2521,54.3,57.94,35,0
    >>Tötet |cRXP_ENEMY_Windsong Crawlers::254588|r. Plündert sie für |T133972:0|t[|cRXP_LOOT_Windsong Kriecher Fleisch|r].
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler::254588

-- ============================================================================
-- Shared Route Resumes
-- ============================================================================


step << Alliance
    -- #completewith next
    .isQuestAvailable 93159 -- The Strange Hermit
    .subzoneskip 16631 -- Shadowgale Forest
    .goto 2521,55.89,56.12,40,0
    .goto 2521,57.17,55.26,40,0
    .goto 2521,57.86,54.69,40,0
    .goto 2521,58.61,52.77,30 >>Geht am Wasserfall vorbei und um den Berg herum.
    *|cRXP_WARN_Falls ihr einen Tornado seht, nutzt ihn zum schnelleren Reisen|r.
-- step << Horde
--     .isQuestAvailable 93159 -- The Strange Hermit
--     .subzoneskip 16631 -- Shadowgale Forest
--     -- #completewith next
--     .goto 2521,59.444,67.060,45,0 << Druid
--     .goto 2521,58.72,52.77,30 >>Go around the mountains and cross the bridge.
--     *|cRXP_WARN_If you see a Tornado, use it for faster travel|r.


--Vendor Dissappeard Ingame
-- step
--     .isQuestAvailable 93159 -- The Strange Hermit
--     .subzoneskip 16631 -- Shadowgale Forest
--     .goto 2521,58.24,51.21,20,0
--     .goto 2521,57.77,52.06
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Zendraas::272045|r.
--     .vendor 272045 >>Vendor trash
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
--     *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
--     .skipgossip 272045,1,1,1,2
--     .skipgossipid 141672
--     .target Brother Zendraas::272045
--     --1: I haven't met too many cultists that haven't immediately tried to kill me. What's your story?
--     --1: What trade would that be?
--     --1: I'll think about it. (This option returns no gossip ID and unlocks the vendor.)
--     --2: Show me what you have available for trade.


step << Warrior
    .goto 2521,56.56,50.36
    >>Tötet |cRXP_ENEMY_Zaal Sturmschild::257196|r. Plündert sie für |T134959:0|t[|cRXP_LOOT_Skybreaker Bollwerk|r].
    .complete 94003,1 --|1/1 Skybreaker Bulwark
    .mob Zaal Stormshield::257196


-- step << Alliance
--     .isQuestAvailable 92850
--     .subzoneskip 16631 -- Shadowgale Forest
--     .goto 2521,55.12,50.55
--     .cast 1259705 >>Use |T236219:0|t[Read Ley Line] for 100% increased passive Mana and Health regeneration.
--     .cooldown spell,1259705,>0,1
--     .usespell 1259705
step << Alliance
    #completewith Learn
    >>Tötet |cRXP_ENEMY_Shadowgale Shrieklings::256092|r.
    *Plündert sie für |T1508517:0|t[|cRXP_LOOT_Shriekling Krallen|r].
    .complete 92741,1 --8/8 Shriekling Talons
    .mob Shadowgale Shriekling::256092
step << Alliance
    #completewith next
    .goto 2521,58.81,46.74,30,0 << Alliance
    .goto 2521,58.81,43.57,40 >>Überquert die Brücke.
step << Horde Druid
    #completewith next
    .goto 2521,56.80,61.10,25 >>Geht um den Berg herum.
step
    #label Learn
    .goto 2521,53.95,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Strange Hermit::251684|r.
    .accept 93159 >>Akzeptiert die Quest The Strange Hermit
    .complete 93159,1 --1/1 Learn more about the Strange Hermit
    .turnin 93159 >>Gebt die Quest The Strange Hermit ab
    .accept 93160 >>Akzeptiert die Quest The Forest's Beute
    .accept 93172 >>Akzeptiert die Quest Befreit the Hollows
    .target Strange Hermit::251684
    .skipgossipid 135787
    .skipgossipid 135786
    .skipgossipid 135785 -- engineering
    .skipgossipid 135784 -- no
step
    .train 4036,3 -- Engineering Trained
    .goto 2521,53.95,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Strange Hermit::251684|r.
    .accept 98285 >>Akzeptiert die Quest Lager aufschlagen 101: Ingenieurskunst
    .target Strange Hermit::251684
    .skipgossipid 135787
    .skipgossipid 135786
    .skipgossipid 135785 -- engineering
    .skipgossipid 135784 -- no
step
    #completewith Abandoned Belongings1
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Seeds|r
    .complete 93160,1 --8/8 Zephyrseed
step << Alliance
    #completewith Abandoned Belongings1
    >>Tötet |cRXP_ENEMY_Shadowgale Shrieklings::256092|r.
    *Plündert sie für |T1508517:0|t[|cRXP_LOOT_Shriekling Krallen|r].
    .complete 92741,1 --8/8 Shriekling Talons
    .mob Shadowgale Shriekling::256092
step
    #completewith next
    #hidewindow
    #label Abandoned Belongings1
    .complete 94896,1,1 --8/8 Abandoned Belongings
step
    #optional
    --@THIDDI: Not sure if worth it (Wind Hollow Essence).
    #completewith Resaan's Heirloom
    -- >>Kill |cRXP_ENEMY_Wind Hollows::251676|r. Loot them for |T2576094:0|t[|cRXP_LOOT_Wind Hollow Essence|r]. << Horde
    >>Tötet |cRXP_ENEMY_Wind Hollows::251676|r.
    .complete 93172,1 --10/10 Wind Hollow freed
    -- .complete 93736,1 << Horde --10/10 Wind Hollow Essence
    .mob +Wind Hollow::251676
step
    #optional
    #completewith Resaan's Heirloom
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Crates|r
    *|cRXP_WARN_HINWEIS:|r Diese Quest ist optional. Ihr könnt sie überspringen, wenn zu viele Spieler sie ausführen. << Horde
    .complete 94896,1 --8/8 Abandoned Belongings
step
    #label Resaan's Heirloom
    .goto 2521,56.83,33.99,30,0
    .goto 2521,56.75,33.3,25,0
    .goto 2521,57.25,33.37,25,0
    .goto 2521,57.23,33.4,25,0
    .goto 2521,57.04,29.36
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Resaan Nimbuswalker|r
    .complete 94897,1 --1/1 Resaan's Heirloom
    .skipgossipid 138670
    .target Resaan Nimbuswalker::259013
step << Alliance
    #optional
    #completewith Abandoned BelongingsZ
    >>Tötet |cRXP_ENEMY_Wind Hollows::251676|r.
    .complete 93172,1 --10/10 Wind Hollow freed
    .mob Wind Hollow::251676
step << Alliance
    #optional
    #completewith Abandoned BelongingsZ
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf die |cRXP_PICK_Crates|r
    .complete 94896,1 --8/8 Abandoned Belongings
step << Alliance
    #label Abandoned BelongingsZ
    .subzoneskip 16833,1 -- Ruins of Ban'aethal
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .goto 2521,56.61,29.26,20,0
    -- .goto 2521,58.06,28.2,30,0
    -- .goto 2521,57.91,26.83,30,0
    .goto 2521,58.14,30.47,10,0
    .goto 2521,57.81,31.07,20,0
    .goto 2521,57.55,31.01,20,0
    .goto 2521,57.55,32.06,30,0
    .goto 2521,58.47,32.63,30,0
    .goto 2521,58.33,31.61,30,0
    .goto 2521,58.82,31.1,20,0
    .goto 2521,59.06,31.69,30,0
    .goto 2521,59.15,32.25,30,0
    .goto 2521,59.1,33.38
    .cast 1259705 >>Benutzt |T236219:0|t[Leylinie erschließen] für 100% erhöhte passive Mana- und Gesundheitsregeneration.
    .usespell 1259705
step
    #completewith Wind Hollow
    #hidewindow
    #loop
    .goto 2521,59.08,34.75,30,0
    .goto 2521,57.26,33.48,30,0
    .goto 2521,59.15,32.25,30,0
    .goto 2521,59.06,31.69,30,0
    .goto 2521,58.82,31.1,20,0
    .goto 2521,58.33,31.61,30,0
    .goto 2521,58.47,32.63,30,0
    .goto 2521,57.55,32.06,30,0
    .goto 2521,57.55,31.01,20,0
    .goto 2521,57.81,31.07,20,0
    .goto 2521,58.14,30.47,20,0
    .goto 2521,57.91,26.83,30,0
    .goto 2521,58.06,28.2,30,0
    .goto 2521,56.61,29.26,20,0
    +1
step
    #optional
    --@THIDDI: Not sure if worth it (Wind Hollow Essence).
    #completewith next
    -- >>Kill |cRXP_ENEMY_Wind Hollows::251676|r. Loot them for |T2576094:0|t[|cRXP_LOOT_Wind Hollow Essence|r]. << Horde
    >>Tötet |cRXP_ENEMY_Wind Hollows::251676|r.
    .complete 93172,1 --10/10 Wind Hollow freed
    -- .complete 93736,1 << Horde--10/10 Wind Hollow Essence
    .mob +Wind Hollow::251676
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf die |cRXP_PICK_Crates|r
    *|cRXP_WARN_HINWEIS:|r Diese Quest ist optional. Ihr könnt sie überspringen, wenn zu viele Spieler sie ausführen. << Horde
    .complete 94896,1 --8/8 Abandoned Belongings
step
    --@THIDDI: Not sure if worth it (Wind Hollow Essence).
    #label Wind Hollow
    -- >>Kill |cRXP_ENEMY_Wind Hollows::251676|r. Loot them for |T2576094:0|t[|cRXP_LOOT_Wind Hollow Essence|r]. << Horde
    >>Tötet |cRXP_ENEMY_Wind Hollows::251676|r.
    .complete 93172,1 --10/10 Wind Hollow freed
    -- .complete 93736,1 << Horde --10/10 Wind Hollow Essence
    .mob +Wind Hollow::251676
step << Alliance
    #completewith Unnerving Silence
    >>Tötet |cRXP_ENEMY_Shadowgale Shrieklings::256092|r.
    *Plündert sie für |T1508517:0|t[|cRXP_LOOT_Shriekling Krallen|r].
    .complete 92741,1 --8/8 Shriekling Talons
    .mob Shadowgale Shriekling::256092
step
    #completewith Unnerving Silence
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Seeds|r |cRXP_WARN_besonders um Bäume herum|r an.
    .complete 93160,1 --8/8 Zephyrseed
step
    .goto 2521,61.76,39.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elegael Thornpaw::257944|r.
    .target Elegael Thornpaw::257944
    .turnin 94484 >>Gebt die Quest Unnerving Stille ab
    .accept 94485 >>Akzeptiert die Quest Tränen of the Lady
    .accept 94486 >>Akzeptiert die Quest Feders for Binden
    .accept 94487 >>Akzeptiert die Quest Unwanted and Unwürdig
step
    #optional
    #completewith Unnerving Silence
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Riss Moos|r |cRXP_WARN_auf Bäumen|r.
    .complete 94485,1 --8/8 Lady's Tear Moss
step
    #optional
    #completewith Unnerving Silence
    >>Tötet |cRXP_ENEMY_Shadowgale Shrieklings::256092|r. Plündert sie für |T132927:0|t[|cRXP_LOOT_Pristine Shriekling Feders|r].
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
    .mob Shadowgale Shriekling::256092
step << Alliance
    #completewith next
    >>Tötet |cRXP_ENEMY_Al'Aketh Footsoldiers::252665|r und |cRXP_ENEMY_Al'Aketh Stormchasers::252664|r.
    *Plündert sie für |T4622283:0|t[|cRXP_LOOT_Bloody Heirlooms|r] und |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r].
    .complete 94487,1 --10/10 Bloody Heirloom
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Footsoldier::252665
    .mob Al'Aketh Stormchaser::252664
step
    .goto 2521,63.80,36.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vayn Moongaze::254151|r.
    .accept 93165 >>Akzeptiert die Quest Gnade Falls on Deaf Ohren
    .target Vayn Moongaze::254151
step
    #label Unnerving Silence
    #loop
    .goto 2521,63.04,37.12,40,0
    .goto 2521,61.99,35.62,30,0
    .goto 2521,61.97,36.71,30,0
    .goto 2521,62.47,37.3,40,0
    .goto 2521,62.96,39.3,40,0
    .goto 2521,63.33,38.01,35,0
    .goto 2521,64.14,39.18,40,0
    .goto 2521,65.7,36.82,40,0
    .goto 2521,65.63,35.57,40,0
    >>Tötet |cRXP_ENEMY_Al'Aketh Footsoldiers::252665|r und |cRXP_ENEMY_Al'Aketh Stormchasers::252664|r.
    *Plündert sie für |T4622283:0|t[|cRXP_LOOT_Bloody Heirlooms|r], |T133856:0|t[|cRXP_LOOT_Al'Aketh Cultist's Ohren|r] und |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r]. << Alliance
    *Plündert sie für |T4622283:0|t[|cRXP_LOOT_Bloody Heirlooms|r]. << Horde
    .complete 94487,1 --10/10 Bloody Heirloom
    .complete 92834,1 << Alliance --10/10 Al'Aketh Windstone Charm
    .complete 93165,1 << Alliance --10/10 Al'Aketh Cultist's Ear
    .mob Al'Aketh Footsoldier::252665
    .mob Al'Aketh Stormchaser::252664
step
    #hidewindow
    #completewith ToHermit << Alliance
    #completewith ForestHollowsA << Horde
    #loop
    .goto 2521,62.83,38.25,35,0
    .goto 2521,62.08,36.7,35,0
    .goto 2521,61.17,35.44,35,0
    .goto 2521,60.82,37.23,35,0
    .goto 2521,60.33,37.46,35,0
    .goto 2521,60.9,38.88,35,0
    .goto 2521,59.79,38.95,35,0
    .goto 2521,59.9,40.38,35,0
    .goto 2521,58.53,39.85,35,0
    .goto 2521,57.94,39.99,35,0
    .goto 2521,57.36,40.86,35,0
    .goto 2521,57.24,42.8,35,0
    .goto 2521,55.38,42.17,35,0
    .goto 2521,54.55,42.17,35,0
    .goto 2521,55.59,39.23,35,0
    .complete 92741,1 << Alliance --8/8 Shriekling Talons
    .complete 93160,1 --8/8 Zephyrseed
    .complete 94485,1 --8/8 Lady's Tear Moss
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
step
    #optional
    --@THIDDI: Not sure if worth it (Pristine Shriekling Feathers).
    #completewith ToHermit << Alliance
    #completewith ForestHollowsB << Horde
    >>Tötet |cRXP_ENEMY_Shadowgale Shrieklings::256092|r.
    *Plündert sie für |T1508517:0|t[|cRXP_LOOT_Shriekling Krallen|r] und |T132927:0|t[|cRXP_LOOT_Pristine Shriekling Feders|r]. << Alliance
    *Plündert sie für |T132927:0|t[|cRXP_LOOT_Pristine Shriekling Feders|r].
    .complete 92741,1 << Alliance --8/8 Shriekling Talons
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
    .mob +Shadowgale Shriekling::256092
step << Alliance
    #completewith ToHermit
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Samen|r |cRXP_WARN_besonders um Bäume herum|r.
    .complete 93160,1 --8/8 Zephyrseed
step << Alliance
    #optional
    #completewith ToHermit
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Tear Moss|r |cRXP_WARN_auf Bäumen|r an.
    .complete 94485,1 --8/8 Lady's Tear Moss
step << Horde
    #optional
    #completewith ForestHollowsB
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Tear Moss|r |cRXP_WARN_auf Bäumen|r an.
    .complete 94485,1 --8/8 Lady's Tear Moss
step << Horde
    #label ForestHollowsA
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Seeds|r |cRXP_WARN_besonders um Bäume herum|r an.
    .complete 93160,1 --8/8 Zephyrseed
step << Horde
    #label ForestHollowsB
    .goto 2521,53.97,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Strange Hermit::251684|r.
    .turnin 93160 >>Gebt die Quest The Forest's Beute ab
    .turnin 93172,1 >>Gebt die Quest Befreit die Hollows ab << Rogue/Hunter/Druid/Shaman
    .turnin 93172,2 >>Gebt die Quest Befreit die Hollows ab << Mage/Priest/Warlock
    .turnin 93172,3 >>Gebt die Quest Befreit die Hollows ab << Warrior/Paladin
    .target Strange Hermit::251684
-- step << Alliance
--     --@THIDDI: Not sure if worth it (Pristine Shriekling Feathers).
--     #label Shadowgale Shrieklings
--     >>Kill |cRXP_ENEMY_Shadowgale Shrieklings::256092|r.
--     *Loot them for |T1508517:0|t[|cRXP_LOOT_Shriekling Talons|r] and |T132927:0|t[|cRXP_LOOT_Pristine Shriekling Feathers|r].
--     .complete 92741,1 --8/8 Shriekling Talons
--     .complete 94486,1 --20/20 Pristine Shriekling Feathers
--     .mob +Shadowgale Shriekling::256092
step << Alliance
    #label ToHermit
    .goto 2521,53.97,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Strange Hermit::251684|r.
    .turnin 93160 >>Gebt die Quest The Forest's Beute ab
    .turnin 93172,1 >>Gebt die Quest Befreit die Hollows ab << Rogue/Hunter/Druid/Shaman
    .turnin 93172,2 >>Gebt die Quest Befreit die Hollows ab << Mage/Priest/Warlock
    .turnin 93172,3 >>Gebt die Quest Befreit die Hollows ab << Warrior/Paladin
    .target Strange Hermit::251684
step
    .train 4036,3 -- Engineering Trained
    .isQuestComplete 98285 -- Camping 101: Engineering
    .goto 2521,53.97,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Strange Hermit::251684|r.
    .turnin 98285 >>Gebt die Quest Lager aufschlagen 101: Ingenieurskunst ab
    .target Strange Hermit::251684
step
    #hidewindow
    #completewith Pristine Shriekling Feathers
    #loop
    .goto 2521,54.93,38.11,40,0
    .goto 2521,55.92,36.83,40,0
    .goto 2521,57.49,37.79,40,0
    .goto 2521,58.93,37.91,40,0
    .goto 2521,60.27,38.12,40,0
    .goto 2521,61.61,36.4,40,0
    .goto 2521,61.41,39.14,40,0
    .goto 2521,59.67,40.26,40,0
    +1
step
    #optional
    --@THIDDI: Not sure if worth it (Pristine Shriekling Feathers).
    #completewith next
    >>Tötet |cRXP_ENEMY_Shadowgale Shrieklings::256092|r. Plündert sie für |T1508517:0|t[|cRXP_LOOT_Shriekling Krallen|r] und |T132927:0|t[|cRXP_LOOT_Pristine Shriekling Feders|r]. << Alliance
    >>Tötet |cRXP_ENEMY_Shadowgale Shrieklings::256092|r. Plündert sie für |T132927:0|t[|cRXP_LOOT_Pristine Shriekling Feders|r].
    .complete 92741,1 << Alliance --8/8 Shriekling Talons
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
    .mob +Shadowgale Shriekling::256092
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Tear Moss|r
    .complete 94485,1 --8/8 Lady's Tear Moss
step
    --@THIDDI: Not sure if worth it (Pristine Shriekling Feathers).
    #label Pristine Shriekling Feathers
    >>Tötet |cRXP_ENEMY_Shadowgale Shrieklings::256092|r. Plündert sie für |T1508517:0|t[|cRXP_LOOT_Shriekling Krallen|r] und |T132927:0|t[|cRXP_LOOT_Pristine Shriekling Feders|r]. << Alliance
    >>Tötet |cRXP_ENEMY_Shadowgale Shrieklings::256092|r. Plündert sie für |T132927:0|t[|cRXP_LOOT_Pristine Shriekling Feders|r].
    .complete 92741,1 << Alliance --8/8 Shriekling Talons
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
    .mob +Shadowgale Shriekling::256092
step
    .goto 2521,61.76,39.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elegael Thornpaw::257944|r.
    .turnin 94485 >>Gebt die Quest Tränen of the Lady ab
    .turnin 94487 >>Gebt die Quest Unwanted and Unwürdig ab
    .turnin 94486 >>Gebt die Quest Feders for Binden ab
    .accept 94488 >>Akzeptiert die Quest The Ties That Binden
    .accept 94489 >>Akzeptiert die Quest The Wounds of Verrat
    .target Elegael Thornpaw::257944
step
    .isQuestAvailable 94490 -- Ripped Missive
    .goto 2521,65.54,36.3
    >>Tötet |cRXP_ENEMY_Commander Haalien::253622|r. Plündert sie für |T134161:0|t[|cRXP_LOOT_Severed Kopf|r] und |T135332:0|t[|cRXP_LOOT_Ripped Missive|r].
    .complete 94488,1 --1/1 Commander Haalien's Severed Head
    .mob Commander Haalien::253622
    .collect 265476,1 -- Ripped Missive
step << Horde
    #optional
    .isOnQuest 93165
    .itemcount 258771,4
    #loop
    .goto 2521,63.04,37.12,40,0
    .goto 2521,61.99,35.62,30,0
    .goto 2521,61.97,36.71,30,0
    .goto 2521,62.47,37.3,40,0
    .goto 2521,62.96,39.3,40,0
    .goto 2521,63.33,38.01,35,0
    .goto 2521,64.14,39.18,40,0
    .goto 2521,65.7,36.82,40,0
    .goto 2521,65.63,35.57,40,0
    >>Tötet |cRXP_ENEMY_Al'Aketh Footsoldiers::252665|r und |cRXP_ENEMY_Al'Aketh Stormchasers::252664|r.
    *Plündert sie für |T133856:0|t[|cRXP_LOOT_Al'Aketh Cultist's Ohren|r].
    .complete 93165,1 --10/10 Al'Aketh Cultist's Ear
    .mob Al'Aketh Footsoldier::252665
    .mob Al'Aketh Stormchaser::252664
step << Alliance
    #completewith next
    .itemcount 265476,1
    >>Benutzt |T134332:0|t[Ripped Missive] aus euren Taschen, um die Quest zu beginnen.
    .accept 94490 >>Akzeptiert die Quest Ripped Missive
    .use 265476 -- Ripped Missive
step
    #optional
    .isOnQuest 93165 << Horde
    .isQuestComplete 93165 << Horde
    .goto 2521,63.75,36.44,30,0
    .goto 2521,63.80,36.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vayn Moongaze::254151|r am Eingang der Höhle.
    .turnin 93165,1 >>Gebt die Quest Gnade fällt auf taube Ohren ab << Rogue/Hunter/Druid/Shaman
    .turnin 93165,2 >>Gebt die Quest Gnade fällt auf taube Ohren ab << Mage/Priest/Warlock
    .turnin 93165,3 >>Gebt die Quest Gnade fällt auf taube Ohren ab << Warrior/Paladin
    .target Vayn Moongaze::254151
step
    .goto 2521,63.93,33.76,20,0
    .goto 2521,63.69,32.49,20,0
    .goto 2521,64,31.97,15,0
    .goto 2521,64.52,31.88,15,0
    .goto 2521,64,31.97,15,0
    .goto 2521,64.52,31.88,15,0
    .goto 2521,64.25,31.93
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Druiden|r
    .complete 94489,1,2 --7/7 Injured Druids healed
    .target Neyasteel Mossmender::258275
    .target Bryaes Galechaser::258277
step
    #completewith next
    #hidewindow
    .goto 2521,64.703,30.067,20 >>1
step
    .goto 2521,65.55,31.9,15,0
    .goto 2521,66.13,32.18,15,0
    .goto 2521,65.79,33,15,0
    .goto 2521,65.93,33.55
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Druids|r.
    .complete 94489,1,4 --7/7 Injured Druids healed
    .target Mithraless Sterngale::258288
    .target Baeo Sharpstrike::258289
step
    #loop
    .goto 2521,64.98,34.96,10,0
    .goto 2521,64.51,34.89,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Druids|r
    .complete 94489,1,7 --7/7 Injured Druids healed
    .target Nayeela Snarlfang::258138
    .target Telenos Leafwhisper::258137
    .target Naaleos Leafwhisper::258134
step
    .goto 2521,64.49,34.74
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Jorel Windsinger|r in der Höhle.
    .complete 94489,2 --1/1 Find Jorel Windsinger
    .skipgossipid 137859
    .target Jorel Windsinger::258130
step << Horde
    .itemcount 265476,1
    >>Benutzt |T134332:0|t[Ripped Missive] aus euren Taschen, um die Quest zu beginnen.
    .accept 94490 >>Akzeptiert die Quest Ripped Missive
    .use 265476 -- Ripped Missive
step
    #optional
    #completewith next
    #label Wounds of Betrayal
    .goto 2521,63.93,34.5,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elegael Thornpaw::257944|r.
    .turnin 94489 >>Gebt die Quest The Wounds of Verrat ab
    .target Elegael Thornpaw::257944
step
    #completewith Wounds of Betrayal
    .goto 2521,61.77,39.14,150 >>Verlasst die Höhle
step
    #requires Wounds of Betrayal
    .goto 2521,61.77,39.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elegael Thornpaw::257944|r.
    .turnin 94489 >>Gebt die Quest The Wounds of Verrat ab
    .turnin 94490 >>Gebt die Quest Ripped Missive ab
    .turnin 94488 >>Gebt die Quest The Ties That Binden ab
    .accept 94491 >>Akzeptiert die Quest The Schicksal of the Den
    .target Elegael Thornpaw::257944
step << Horde
    .abandon 93165 >>Brecht die Quest Gnade Falls on Deaf Ohren ab

-- ============================================================================
-- City
-- ============================================================================

step
    .isOnQuest 94491 << Alliance -- The Fate of the Den
    .isOnQuest 94896 << Horde -- Aid For The Refugees
    -- .subzoneskip 16631,1 -- Shadowgale Forest
    .hs >>Benutzt euren Ruhestein zum Valanaar
    .cooldown item,6948,>0 --Hearthstone
    .use 6948 -- Hearthstone

step
    .isOnQuest 94896 -- Aid For The Refugees
    .goto 2521,62.180,72.616
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Donaal Downbreeze::255940|r.
    .vendor 255940 >>Verkauft Müll
    .collect 1179,20 << Mage/Druid/Shaman/Priest/Warlock/Paladin -- Ice Cold Milk
    *Nicht sell |T133970:0|t[Stringy Fleisch], |T132832:0|t[Kleines Eis], oder |T133972:0|t[Strider Fleisch]. << Alliance
    *Nicht sell |T132832:0|t[Kleines Eis] und |T133972:0|t[Strider Fleisch]. << Horde
    *|cRXP_WARN_Wir brauchen sie für Kochkunst später|r.
    .skipgossipid 137078
    .target Donaal Downbreeze::255940

-- ============================================================================
-- Alliance Class Training
-- ============================================================================

step << Alliance Warrior
    .goto 2521,59.886,72.863
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
    .target Seena Skybreaker::252377
    .turnin 94003 >>Gebt die Quest Die Himmelsbrecher Bollwerk ab
-- step << Alliance Rogue
--     .goto 2521,59.9,72.48
--     *|cRXP_WARN_Use the Interact Key through the Wall|r
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eltheen Nightbreeze::252379|r.
--     .train 1766 >>Train |T132219:0|t[Kick]
--     .train 3127 >>Train |T132269:0|t[Parry]
--     .skipgossipid 136810
--     .target Eltheen Nightbreeze::252379
--     .money <0.16
--     .xp <12,1
step << Alliance Rogue
    .money <0.16
    .xp <12,1
    .goto 2521,59.55,73.3,30,0
    .goto 2521,59.91,72.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eltheen Nightbreeze::252379|r.
    .train 1766 >>Erlernt |T132219:0|t[Tritt]
    .train 3127 >>Erlernt |T132269:0|t[Parieren]
    .skipgossipid 136810
    .target Eltheen Nightbreeze::252379
step << Alliance Hunter
    .money <0.08
    .xp <12,1
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .train 14281 >>Erlernen |T132218:0|t[Arkaner Schuss (Rang 2)]
    .target Quel'ana Quickgale::252389
step << Alliance Warrior
    .money <0.3
    .train 7887,1 -- Overpower (Rank 2) Not Trained
    .train 1671,1 -- Shield Bash (Rank 2) Not Trained
    .xp <12,1
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
    .train 5242 >>Erlernen |T132333:0|t[Schlachtruf (Rang 2)]
    .train 7384 >>Erlernt |T132223:0|t[Überwältigen]
    .train 72 >>Erlernen |T132357:0|t[Schildhieb]
    .skipgossipid 136813
    .target Seena Skybreaker::252377
step << Alliance Hunter/Alliance Rogue/Alliance Warrior
    .goto 2521,60.64,72.94,8,0
    .goto 2521,60.64,72.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nyalah Brightfire::257006|r im Haus.
    .turnin 93317 >>Gebt die Quest Krebssaison ab
    .target Nyalah Brightfire::257006
step << Alliance
    .goto 2521,63.55,73.45,25,0
    .goto 2521,63.99,75.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r.
    .turnin 94491 >>Gebt die Quest The Schicksal of the Den ab
    .target Lotheluum Starbreeze::252359
step << Alliance Druid
    .money <0.16
    .subzoneskip 16638,1 -- Valanaar
    .xp <12,1
    .goto 2521,45.153,44.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Naeluna Rasche Heilung::254081|r.
    .train 5229 >>Erlernen |T132126:0|t[Wutanfall]
    .train 8936 >>Erlernen |T136085:0|t[Nachwachsen]
    .target Naeluna Swiftmend::254081

-- ============================================================================
-- Shared Turn-ins
-- ============================================================================
step << Horde
    .goto 2521,63.989,75.090
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r.
    .target Lotheluum Starbreeze::252359
    .turnin 94491 >>Gebt die Quest The Schicksal of the Den ab
step << Horde
    #optional
    .isQuestComplete 94896
    .goto 2521,65.95,74.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ealaane Nimbuswalker::259012|r.
    .turnin 94896 >>Gebt die Quest Hilfe For The Refugees ab
    .turnin 94897 >>Gebt die Quest The Schicksal of a Geliebt Eins ab
    .target Ealaane Nimbuswalker::259012
step << Horde
    .goto 2521,65.95,74.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ealaane Nimbuswalker::259012|r.
    .turnin 94897 >>Gebt die Quest The Schicksal of a Geliebt Eins ab
    .target Ealaane Nimbuswalker::259012
step << Horde
    #optional
    .abandon 94896 >>Brecht die Quest Hilfe For The Refugees ab
step << Alliance
    .goto 2521,65.95,74.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ealaane Nimbuswalker::259012|r.
    .turnin 94896 >>Gebt die Quest Hilfe For The Refugees ab
    .turnin 94897 >>Gebt die Quest The Schicksal of a Geliebt Eins ab
    .target Ealaane Nimbuswalker::259012
step << Alliance
    #optional
    #completewith next
    #label Unfortunate News
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Talaanis Shadowsong::252476|r.
    .turnin 92644,1 >>Gebt die Quest Unfortunate Neues ab << Rogue/Hunter/Druid/Shaman
    .turnin 92644,2 >>Gebt die Quest Unfortunate Neues ab << Mage/Priest/Warlock
    .turnin 92644,3 >>Gebt die Quest Unfortunate Neues ab << Warrior/Paladin
    .accept 94568 >>Akzeptiert die Quest The Cult's True Plans
    .disablecheckbox
    .target Talaanis Shadowsong::252476
step << Alliance
    #completewith Unfortunate News
    .goto 2521,65.93,76.37,5,0
    .goto 2521,66.46,76.8,5,0
    .goto 2521,66.43,76.58,5,0
    .goto 2521,66.43,76.83,5,0
    .goto 2521,66.31,77.08,5,0
    .goto 2521,66,76.57,8,0
    .goto 2521,66.19,76.22,8,0
    .goto 2521,66.44,76.4,5 >>Klettert auf den Turm
step << Alliance
    #requires Unfortunate News
    .goto 2521,66.17,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Talaanis Shadowsong::252476|r.
    .turnin 92644,1 >>Gebt die Quest Unfortunate Neues ab << Rogue/Hunter/Druid/Shaman
    .turnin 92644,2 >>Gebt die Quest Unfortunate Neues ab << Mage/Priest/Warlock
    .turnin 92644,3 >>Gebt die Quest Unfortunate Neues ab << Warrior/Paladin
    .accept 94568 >>Akzeptiert die Quest The Cult's True Plans
    .target Talaanis Shadowsong::252476
step << Alliance
    #optional
    #completewith next
    #label Talaanis Shadowsong
    >>|cRXP_WARN_Wartet auf das Rollenspiel|r.
    .complete 94568,1 --1/1 Learn what you can from the crystal
    .target Talaanis Shadowsong::252476
step << Alliance
    #completewith Talaanis Shadowsong
    .goto 2521,66.18,76.51
    .gossipoption 140111 >>Sprecht mit |cRXP_FRIENDLY_Talaanis Shadowsong::252476|r.
    .timer 50,RP
step << Alliance
    #requires Talaanis Shadowsong
    .goto 2521,66.17,76.52
    >>|cRXP_WARN_Wait for the Roleplay|r.
    -- *Cook |T132834:0|t[Herb Baked Eggs] and |T133974:0|t[Charred Wolf Meat] if you have the required materials.
    -- *Otherwise, craft any items you can using your other professions.
    .complete 94568,1 --1/1 Learn what you can from the crystal
    .target Talaanis Shadowsong::252476
step << Alliance
    .goto 2521,66.17,76.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Talaanis Shadowsong::252476|r |cRXP_WARN_neben euch|r.
    .turnin 94568 >>Gebt die Quest The Cult's True Plans ab
    .accept 92640 >>Akzeptiert die Quest Verzweifelte Zeiten
    .target Talaanis Shadowsong::252476
step << Alliance
    .goto 2521,66.18,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
    .complete 92640,1 --1/1 Speak with Valennia Stormfist
    .target Valennia Stormfist::252383
    .skipgossipid 137096
    .skipgossipid 137095
step << Alliance
    .isOnQuest 92640 -- Desperate Times
    .isQuestNotComplete 92640 -- Desperate Times
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,66.49,76.64,8,0
    .goto 2521,63.33,78.16
    .cast 1259416 >>Springt vom Berg und benutzt |T132845:0|t[Luftwandeln], um zum Ort zu fliegen.
    .usespell 1259416
step << Alliance
    .goto 2521,63.33,78.16,30,0
    .goto 2521,63.04,77.53,30,0
    .goto 2521,62.31,78.27,30,0
    .goto 2521,62.13,79.02,30,0
    .goto 2521,60.68,80.11,30,0
    .goto 2521,59.15,79.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ayessa Dawnsinger::251968|r.
    .complete 92640,2 --1/1 Recruit the Windshapers
    .skipgossipid 136542
    .skipgossipid 136541
    .mob Ayessa Dawnsinger::251968
step << Alliance
    .goto 2521,59.94,77.92,30,0
    .goto 2521,61.45,77.15,30,0
    .goto 2521,62.13,76.85,30,0
    .goto 2521,63.35,78.58,30,0
    .goto 2521,66.34,79.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iaadaria Bitterwind::253004|r.
    .turnin 92741 >>Gebt die Quest Unwelcome Besucher ab
    .target Iaadaria Bitterwind::253004
step << Alliance
    .goto 2521,66.54,79.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elaadrin Evengale::252475|r.
    .complete 92640,3 --1/1 Recruit the High Order
    .skipgossipid 136547
    .skipgossipid 136546
    .target Elaadrin Evengale::252475
step << Alliance
    .goto 2521,66.628,79.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elaadrin Evengale::252475|r.
    .turnin 92834,1 >>Gebt die Quest Avenged Tenfold ab << Rogue/Hunter/Druid/Shaman
    .turnin 92834,2 >>Gebt die Quest Avenged Tenfold ab << Mage/Priest/Warlock
    .turnin 92834,3 >>Gebt die Quest Avenged Tenfold ab << Warrior/Paladin
    .turnin -92709 >>Gebt die Quest A Grand Adventure ab
    .target Elaadrin Evengale::252475
step << Alliance Mage
    .money <0.24
    .xp <12,1
    .goto 2521,65.91,80.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Anathamaas Aetherwind::252373|r.
    .train 145 >>Erlernen |T135812:0|t[Feuerball (Rang 3)]
    .train 604 >>Erlernen |T136006:0|t[Magie dämpfen]
    -- .train 597 >>Train |T133952:0|t[Conjure Food (Rank 2)]
    .train 130 >>Erlernen |T135992:0|t[Langsamer Fallen]
    .skipgossipid 136807
    .target Anathamaas Aetherwind::252373
step << Alliance
    #optional
    #completewith next
    #label Prepare for Battle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
    .turnin 92640,1 >>Gebt die Quest Verzweifelte Zeiten ab << Rogue/Hunter/Druid/Shaman
    .turnin 92640,2 >>Gebt die Quest Verzweifelte Zeiten ab << Warrior/Paladin
    .turnin 92640,3 >>Gebt die Quest Verzweifelte Zeiten ab << Mage/Priest/Warlock
    .accept 93065 >>Akzeptiert die Quest Bereit für die Schlacht
    .disablecheckbox
    .target Valennia Stormfist::252383
step << Alliance
    #completewith Prepare for Battle
    .goto 2521,65.65,79.27,30,0
    .goto 2521,64.98,77.12,30,0
    .goto 2521,65.93,76.37,5,0
    .goto 2521,66.46,76.8,5,0
    .goto 2521,66.43,76.58,5,0
    .goto 2521,66.43,76.83,5,0
    .goto 2521,66.31,77.08,5,0
    .goto 2521,66,76.57,8,0
    .goto 2521,66.19,76.22,8,0
    .goto 2521,66.44,76.4,5 >>Klettert auf den Turm
step << Alliance
    #requires Prepare for Battle
    .goto 2521,66.18,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
    .turnin 92640,1 >>Gebt die Quest Verzweifelte Zeiten ab << Rogue/Hunter/Druid/Shaman
    .turnin 92640,2 >>Gebt die Quest Verzweifelte Zeiten ab << Warrior/Paladin
    .turnin 92640,3 >>Gebt die Quest Verzweifelte Zeiten ab << Mage/Priest/Warlock
    .accept 93065 >>Akzeptiert die Quest Bereit für die Schlacht
    .target Valennia Stormfist::252383
step << Alliance
    .isQuestNotComplete 93065 -- Prepare for Battle
    .isOnQuest 93065 -- Prepare for Battle
    .subzoneskip 16638,1 -- Valanaar
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,66.49,76.64,8,0
    .goto 2521,66.39,76.26,10,0
    .goto 2521,63.9,74.16
    .cast 1259416 >>Springt vom Berg und benutzt |T132845:0|t[Luftwandeln], um zum Ort zu fliegen.
    .usespell 1259416
step << Alliance
    .subzoneskip 16638,1 -- Valanaar
    .isOnQuest 93065 -- Prepare for Battle
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .goto 2521,63.9,74.16
    .cast 1259705 >>Benutzt |T236219:0|t[Leylinie erschließen] für 100% erhöhte passive Mana- und Gesundheitsregeneration.
    .usespell 1259705
step << Alliance
    .goto 2521,63.99,74.1,40,0
    .goto 2521,61.15,70.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Valennia Stormfist::253844|r.
    *|cRXP_WARN_Falls ein Tornado in der Nähe ist, nutzt ihn zum schnelleren Reisen|r.
    .complete 93065,1 --|1/1 Find Valennia on the Road
    .turnin 93065 >>Gebt die Quest Bereit für die Schlacht ab
    .target Valennia Stormfist::253844
step << Alliance !Hunter !Rogue !Warrior
    .goto 2521,60.95,73.17,15,0
    .goto 2521,60.64,72.94,8,0
    .goto 2521,60.64,72.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nyalah Brightfire::257006|r im Haus.
    .turnin 93317 >>Gebt die Quest Krebssaison ab
    .target Nyalah Brightfire::257006

-- ============================================================================
-- Discovery Route Alliance
-- ============================================================================

-- step << Alliance
--     .goto 2521,61.15,70.93
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist|r.
--     .accept 92947 >>Accept Making Our Move
--     .target Valennia Stormfist
-- step << Alliance
--     #completewith next
--     #label Al'Aketh Guardian
--     .goto 2521,59.58,66.41,30,0
--     .goto 2521,58.98,60.8,30,0
--     >>Kill |cRXP_ENEMY_Al'Aketh Guardians|r.
--     .complete 92947,1 --8/8 Al'Aketh Guardian slain
--     .complete 92947,2 --8/8 Al'Aketh Spiritcaller slain
--     .complete 92947,3 --8/8 Al'Aketh Blademaster slain
--     .mob Al'Aketh Guardian
-- step << Alliance
--     #completewith Al'Aketh Guardian
--     .goto 2521,59.1,52.83,80 >>Cross the bridge
-- step << Alliance
--     #requires Al'Aketh Guardian
--     #loop
--     .goto 2521,59.78,52.23,40,0
--     .goto 2521,60.08,51.67,40,0
--     .goto 2521,61.05,52.26,40,0
--     .goto 2521,62.75,52.56,40,0
--     .goto 2521,62.25,49.01,40,0
--     .goto 2521,63.14,48.55,40,0
--     .goto 2521,64.03,46.25,40,0
--     .goto 2521,59.91,49.6,40,0
--     >>Kill |cRXP_ENEMY_Al'Akeths|r.
--     *|cRXP_WARN_Prioritize the |cRXP_ENEMY_Guardians|r|r
--     .complete 92947,1 --8/8 Al'Aketh Guardian slain
--     .complete 92947,2 --8/8 Al'Aketh Spiritcaller slain
--     .complete 92947,3 --8/8 Al'Aketh Blademaster slain
--     .mob Al'Aketh Guardian
--     .mob Al'Aketh Blademaster
--     .mob Al'Aketh Spiritcaller
-- step << Alliance
--     #completewith next
--     #label Hyusaa Quickbreeze
--     .goto 2521,61.98,50.42,30,0
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hyusaa Quickbreeze|r.
--     .complete 92947,4 --1/1 Report to Hyusaa Quickbreeze
--     .target Hyusaa Quickbreeze
-- step << Alliance
--     #completewith Hyusaa Quickbreeze
--     .goto 2521,63.79,50.55,80 >>Take the stairs to |cRXP_FRIENDLY_Hyusaa Quickbreeze|r
-- step << Alliance
--     #requires Hyusaa Quickbreeze
--     .goto 2521,63.79,50.55
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hyusaa Quickbreeze|r.
--     .complete 92947,4 --1/1 Report to Hyusaa Quickbreeze
--     .turnin 92947 >>Turn in Making Our Move
--     .accept 93958 >>Accept The Inner Sanctum
--     .target Hyusaa Quickbreeze
-- step << Alliance
--     #completewith next
--     #label The Inner Sanctum
--     .goto 2521,65.35,50.33,30,0
--     .goto 2521,66.91,50.05,30,0
--     .goto 2521,66.85,50.56,10,0
--     .goto 2521,66.83,49.89,15,0
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist::253590|r.
--     .target Valennia Stormfist::253590
--     .turnin 93958 >>Turn in The Inner Sanctum
--     .accept 93835 >>Accept Confront Lorthuna
--     .disablecheckbox
-- step << Alliance
--     #completewith The Inner Sanctum
--     .goto 2521,66.14,49.15,30 >>Take the spiral staircase
-- step << Alliance
--     #requires The Inner Sanctum
--     .goto 2521,65.191,50.352
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist::253590|r.
--     .target Valennia Stormfist::253590
--     .turnin 93958 >>Turn in The Inner Sanctum
--     .accept 93835 >>Accept Confront Lorthuna
-- step << Alliance
--     .subzoneskip 16679,1
--     .goto 2521,65.55,50.35
--     .subzone 16630 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
-- step << Alliance
--     .subzoneskip 16630,1
--     .goto 2521,69.11,51.19,10,0
--     .goto 2521,69.6,51.64,10,0
--     .goto 2521,70.04,51.63,10,0
--     .goto 2521,71.24,51.04,10,0
--     .goto 2521,74.17,52.57,290 >>Go around the plateau and take the windstream to |cRXP_FRIENDLY_Elaadrin Evengale|r
--     *|cRXP_WARN_If the windstream is not active, wait for it to appear|r
-- step << Alliance
--     .subzoneskip 16630,1
--     #completewith next
--     .gossipoption 137230 >>Talk to |cRXP_FRIENDLY_Elaadrin Evengale|r to begin the event.
--     .timer 117,RP
--     *|cRXP_WARN_Another player may have already started it|r
--     .target Elaadrin Evengale
-- step << Alliance
--     .goto 2521,74.16,52.54,25,0
--     .goto 2521,74.48,53.92,25,0
--     .goto 2521,75.07,53.15
--     >>Follow |cRXP_FRIENDLY_Elaadrin Evengale|r. Kill |cRXP_ENEMY_Baron Anvillaxx|r and the |cRXP_ENEMY_Malevolent Storms|r that attack.
--     .complete 93835,1 --1/1 Confront Lorthuna
--     .skipgossipid 137230
--     .mob Baron Anvillaxx
--     .mob Malevolent Storm
-- step << Alliance
--     .goto 2521,75.09,53.25
--     .subzoneskip 16630,1
--     .subzone 16638 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
-- step << Alliance
--     .goto 2521,66.63,79.93
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
--     .turnin 93835 >>Turn in Confront Lorthuna
--     .accept 94369 >>Accept The Fate of Zephras
--     .target Elaadrin Evengale
-- step << Alliance
--     #completewith next
--     #label Fate of Zephras
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong|r.
--     .complete 94369,1 --1/1 Speak with Talaanis Shadowsong
--     .turnin 94369 >>Turn in The Fate of Zephras
--     .accept 93089 >>Accept What Comes Next
--     .target Talaanis Shadowsong
-- step << Alliance
--     #completewith Fate of Zephras
--     .goto 2521,65.65,79.27,30,0
--     .goto 2521,64.98,77.12,30,0
--     .goto 2521,65.93,76.37,5,0
--     .goto 2521,66.46,76.8,5,0
--     .goto 2521,66.43,76.58,5,0
--     .goto 2521,66.43,76.83,5,0
--     .goto 2521,66.31,77.08,5,0
--     .goto 2521,66,76.57,8,0
--     .goto 2521,66.19,76.22,8,0
--     .goto 2521,66.44,76.4,5 >>Climb the tower
-- step << Alliance
--     #requires Fate of Zephras
--     .goto 2521,66.18,76.51
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong|r.
--     .complete 94369,1 --|1/1 Speak with Talaanis Shadowsong
--     .turnin 94369 >>Turn in The Fate of Zephras
--     .accept 93089 >>Accept What Comes Next
--     .target Talaanis Shadowsong
-- step << Alliance
--     .isOnQuest 93089
--     .goto 2521,66.47,76.66,8,0
--     .goto 2521,66.63,79.95
--     .cast 1259416 >>Jump off the mountain and use |T132845:0|t[Walk on Air] to fly towards the questgiver.
--     .cooldown spell,1259416,>0,1
--     .usespell 1259416
-- step << Alliance
--     .goto 2521,66.63,79.95
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
--     .turnin 93089 >>Turn in What Comes Next
--     .accept 94946 >>Accept The Magical City of Dalaran
--     .target Elaadrin Evengale
-- step << Alliance
--     .goto 2521,66.63,79.94
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
--     .accept 92709 >>Accept A Grand Adventure
--     .timer 70, Talk RP
--     .target Elaadrin Evengale
-- step << Alliance
--     *Return |cRXP_FRIENDLY_Elaadrin Evengale|r early enough to reach her before the timer ends.
--     .complete 92709,1 --1/1 Listen to Elaadrin
--     .mob skyhopper
-- step << Alliance
--     .goto 2521,66.63,79.94
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
--     .turnin 92709 >>Turn in A Grand Adventure
--     .target Elaadrin Evengale
--UNUSED likely train in sw/og because of portal from quest before takes you near zeppelin

-- step << Warrior
--     .goto 2521,59.89,72.87
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
--     .train 1160 >>Train your level 14 class spells
--     .skipgossipid 136813
--     .target Seena Skybreaker::252377
--     .xp <14,1
-- step << Warrior
--     .money <0.45
--     .isQuestAvailable 94491 -- The Fate of the Den
--     .subzoneskip 16638,1 -- Valanaar
--     .train 6190,1 -- Demoralizing Shout (Rank 2) Not Trained
--     .train 6574,1 -- Revenge (Rank 2) Not Trained
--     .xp <14,1
--     .goto 2521,59.89,72.87
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
--     .train 1160 >>Train |Tinterface/icons/ability_warrior_warcry.blp:0|t[Demoralizing Shout]
--     .train 6572 >>Train |Tinterface/icons/ability_warrior_revenge.blp:0|t[Revenge]
--     .train 1310185 >>Train |T136031:0|t[Tactical Mastery]
--     .skipgossipid 136813
--     .target Seena Skybreaker::252377
-- step << Rogue
--     .goto 2521,59.55,73.3,30,0
--     .goto 2521,59.91,72.48
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eltheen Nightbreeze::252379|r.
--     .train 1758 >>Train your level 14 class spells
--     .skipgossipid 136810
--     .target Eltheen Nightbreeze::252379
--     .xp <14,1
-- step << Hunter
--     .goto 2521,59.571,72.639
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
--     .train 1513 >>Train your level 14 class spells
--     .skipgossipid 136808
--     .target Quel'ana Quickgale::252389
--     .xp <14,1
-- step << Shaman
--     .goto 2521,58.313,78.499
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sessaria Skystride::252382|r.
--     .train 8045 >>Train your level 14 class spells
--     .skipgossipid 136811
--     .target Sessaria Skystride::252382
--     .xp <14,1
-- step << Druid
--     .goto 2521,63.99,75.09
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r.
--     .train 5178 >>Train your level 14 class spells
--     .skipgossipid 136805
--     .target Lotheluum Starbreeze::252359
--     .xp <14,1

step << Horde
    >>Brecht die verbleibenden Quests "Lager aufschlagen 101" ab.
    *Klickt das Makro im Fenster der Aktiv Gegenstände, um sie alle auf einmal aufzugeben.
    .abandon 97970 >>Brecht die Quest Lager aufschlagen 101: Bergbau ab.
    .abandon 97971 >>Brecht die Quest Lager aufschlagen 101: Kürschnerei ab.
    .abandon 96646 >>Brecht die Quest Lager aufschlagen 101: Kochkunst ab.
    .abandon 97968 >>Brecht die Quest Lager aufschlagen 101: Kräuterkunde ab.
    .abandon 97965 >>Brecht die Quest Lager aufschlagen 101: Erste Hilfe ab.
    .abandon 97967 >>Brecht die Quest Lager aufschlagen 101: Angeln ab.
    .abandon 97963 >>Brecht die Quest Lager aufschlagen 101: Alchemie ab.
    .abandon 97964 >>Brecht die Quest Lager aufschlagen 101: Schmiedekunst ab.
    .abandon 97973 >>Brecht die Quest Lager aufschlagen 101: Schneiderei ab.
    .abandon 98286 >>Brecht die Quest Lager aufschlagen 101: Verzauberkunst ab.
    .abandon 97969 >>Brecht die Quest Lager aufschlagen 101: Lederverarbeitung ab.
    .abandon 98285 >>Brecht die Quest Lager aufschlagen 101: Ingenieurskunst ab.
    .abandon 93318 >>Brecht die Quest WANTED: Vulgara the Unersättlich ab
    .macro Abandon 101,130722 >>Brecht die Quest 101 ab
step << Alliance
    #completewith Magical City of Dalaran
    >>Brecht die verbleibenden Quests "Lager aufschlagen 101" ab.
    *Klickt auf das Makro im Fenster der Aktiven Gegenstände, um sie alle auf einmal abzubrechen.
    .abandon 97970 >>Brecht die Quest Lager aufschlagen 101: Bergbau ab.
    .abandon 97971 >>Brecht die Quest Lager aufschlagen 101: Kürschnerei ab.
    .abandon 96646 >>Brecht die Quest Lager aufschlagen 101: Kochkunst ab.
    .abandon 97968 >>Brecht die Quest Lager aufschlagen 101: Kräuterkunde ab.
    .abandon 97965 >>Brecht die Quest Lager aufschlagen 101: Erste Hilfe ab.
    .abandon 97967 >>Brecht die Quest Lager aufschlagen 101: Angeln ab.
    .abandon 97963 >>Brecht die Quest Lager aufschlagen 101: Alchemie ab.
    .abandon 97964 >>Brecht die Quest Lager aufschlagen 101: Schmiedekunst ab.
    .abandon 97973 >>Brecht die Quest Lager aufschlagen 101: Schneiderei ab.
    .abandon 98286 >>Brecht die Quest Lager aufschlagen 101: Verzauberkunst ab.
    .abandon 97969 >>Brecht die Quest Lager aufschlagen 101: Lederverarbeitung ab.
    .abandon 98285 >>Brecht die Quest Lager aufschlagen 101: Ingenieurskunst ab.
    .abandon 93318 >>Brecht die Quest WANTED: Vulgara the Unersättlich ab
    .abandon 92709 >>Brecht die Quest A Grand Adventure ab
    .macro Abandon 101,130722 >>Abbrechen 101

-- ============================================================================
-- Alliance Discovery
-- ============================================================================

-- step << Alliance
--     .goto 2521,66.63,79.95
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
--     .turnin 93089 >>Turn in What Comes Next
--     .accept 94946 >>Accept The Magical City of Dalaran
--     .target Elaadrin Evengale
-- step << Alliance
--     .goto 2521,66.63,79.94
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
--     .accept 92709 >>Accept A Grand Adventure
--     .timer 70, Talk RP
--     .target Elaadrin Evengale
-- step << Alliance
--     *Return |cRXP_FRIENDLY_Elaadrin Evengale|r early enough to reach her before the timer ends.
--     .complete 92709,1 --1/1 Listen to Elaadrin
--     .mob skyhopper
-- step << Alliance
--     .goto 2521,66.63,79.94
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
--     .turnin 92709 >>Turn in A Grand Adventure
--     .target Elaadrin Evengale

step << Alliance
    #optional
    #completewith next
    +|cRXP_WARN_Der Zeppelin kann während seines 6-Minuten-Zyklus jederzeit ankommen. Während ihr wartet, erledigt Folgendes:|r
    *Händler trash und repair von Euch gear.
    *Kocht Nahrung und erhaltet Lagerfeuer-Boni für später.
    *Rüstet upgrades und select talents. aus
step << Alliance
    #optional
    #completewith next
    #label Magical City of Dalaran
    -- .goto 2521,65.82,81.18,15,0
    -- .goto 2521,65.44,80.46,15,0
    -- .goto 2521,65.25,81.64,25,0
    *|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Denaaris Stargale::259084|r.
    -- .turnin -94946 >>Turn in The Magical City of Dalaran
    .accept 94947 >>Akzeptiert die Quest Welcome to Azeroth
    .skipgossipid 137530
    .target Denaaris Stargale::259084
step << Alliance
    #label LeaveZephrasIsle
    #completewith Magical City of Dalaran
    .zoneskip 1416 -- Alterac Mountains
    .goto 2521,65.81,83.44
    .zone 1424 >>Nehmt den Zeppelin nach Dalaran
step << Alliance
    #requires Magical City of Dalaran
    .goto 1416/0,438.93,448.88
    >>|cRXP_WARN_Springt nicht vorzeitig vom Zeppelin ab, sonst werdet ihr möglicherweise von der Plattform heruntergestoßen.|r
    *|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Denaaris Stargale::259084|r.
    .target Denaaris Stargale::259084
    -- .turnin -94946 >>Turn in The Magical City of Dalaran
    .accept 94947 >>Akzeptiert die Quest Welcome to Azeroth
step << Alliance Druid
    .goto 1416/0,385.700,385.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Archmage Ansirem Runeweaver::2543|r.
    .accept 94912 >>Akzeptiert die Quest Child of Naturschaden
    .target Archmage Ansirem Runeweaver::2543
step << Alliance
    .goto 1416/0,445.93,450.00
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt das |cRXP_PICK_Portal|r
    .complete 94947,1 --Take the Skyborne Portal to Stormwind
step << Alliance Druid
    .goto 1453/0,1100.200,-8776.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sheldras Moontree::5504|r
    .target Sheldras Moontree::5504
    .turnin 94912 >>Gebt die Quest Child of Naturschaden ab
    .accept 94914 >>Akzeptiert die Quest Moonglade
step << Alliance Hunter
    .goto 1453/0,765.700,-8804.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Catherine Leland::5494|r
    >>|cRXP_BUY_Kauft eins|r |T134335:0|t[Glänzendes Schmuckstück] |cRXP_BUY_und drei|r |T134324:0|t[Nachtkriecher] |cRXP_BUY_von ihr. Dies ist für eine 900-XP-Quest|r
    .collect 6529,1,95065,1 --|1/1 Shiny Bauble
    .collect 6530,3,95065,1 --|3/3 Nightcrawlers
    .target Catherine Leland::5494
step << Alliance Hunter
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .skill cooking,<1,1 -- shows if cooking is >1
    .goto 1453/0,596.400,-8831.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thurman Mullby::1285|r
    >>|cRXP_BUY_Kauft ein|r |T135435:0|t[Einfaches Holz] |cRXP_BUY_und ein|r |T135237:0|t[Feuerstein und Zunder] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Dies wird verwendet, um|r |T135805:0|t[Basic Campfires] |cRXP_WARN_auf Schiffen zu erstellen und eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_Fähigkeit zu leveln, ohne Zeit zu verlieren|r
    >>|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Thurman Mullby::1285
step << Alliance Hunter
    #ah
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Auctioneer Jaxon::15659|r
    >>|cRXP_BUY_Kauft|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_BUY_und/oder|r |T133970:0|t|cRXP_LOOT_[Sehniges Wolfsfleisch]|r |cRXP_BUY_um eure|r |T133971:0|t[Kochkunst] |cRXP_BUY_später zu skillen|r
    >>|cRXP_WARN_Ihr braucht 50|r |T133971:0|t[Kochkunst]|cRXP_WARN_ für eine spätere Quest in Dunkelhain.|r
    >>|cRXP_WARN_Falls ihr das nicht wollt oder könnt, überspringt diesen Schritt|r
    >>|cRXP_BUY_Kauft die folgenden Gegenstände für schnellere Rückgaben bald in Westfall und Dunkelküste.|r
    >>|T133972:0|t[Schreiterfleisch]
    >>|T133912:0|t[Dunkelküstenbarsch]
    >>|T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    >>|T133970:0|t|cRXP_LOOT_[Sehniges Wolfsfleisch]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Jaxon::15659
step << Alliance Hunter
    #ah
    #optional
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Auctioneer Jaxon::15659|r
    >>|cRXP_WARN_Falls ihr das nicht wollt oder könnt, überspringt diesen Schritt|r
    >>|cRXP_BUY_Kauft die folgenden Gegenstände für schnellere Rückgaben bald in Westfall und Dunkelküste.|r
    >>|T133972:0|t[Schreiterfleisch]
    >>|T133912:0|t[Dunkelküstenbarsch]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon::15659

-- for discovery route
-- step << Alliance Mage
--     .goto 1453/0,885.34,-9006.15
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elsharin::5497|r.
--     .trainer >>Train your class spells
--     .target Elsharin::5497
step << Alliance
    -- .goto 1453,48.1,88.35,10,0
    -- .goto 1453,49.36,87.37,10,0
    -- .goto 1453,48.85,86.94,10,0
    -- .goto 1453,48.76,87.71,10,0
    -- .goto 1453,54.8,83.65,25,0
    -- .goto 1453,53.78,78.72,25,0
    -- .goto 1453,55.67,75.99,25,0
    -- .goto 1453,59.9,71.41,25,0

    .goto 1453/0,888.000,-9027.101,9,0
    .goto 1453/0,867.400,-9005.500,8,0
    .goto 1453/0,877.300,-9008.900,8,0
    .goto 1453/0,864.000,-9001.300,8,0
    .goto 1453/0,811.900,-8993.200,20,0
    .goto 1453/0,780.500,-8975.800,20,0
    .goto 1453/0,770.500,-8947.200,20,0
    .goto 1453/0,789.900,-8907.400,20,0
    .goto 1453/0,755.500,-8878.500,20,0
    .goto 1453/0,715.500,-8843.300,20,0
    .goto 1453/0,675.600,-8782.601,20,0
    .goto 1453/0,629.700,-8759.800,20,0
    .goto 1453/0,603.400,-8765.500,20,0
    .goto 1453/0,573.500,-8737.800,20,0
    .goto 1453/0,552.500,-8742.000,20,0
    .goto 1453/0,527.700,-8703.500,20,0
    .goto 1453/0,552.600,-8656.900,20,0
    .goto 1453/0,332.000,-8443.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Highlord Bolvar Fordragon::1748|r in der Burg.
    .target Highlord Bolvar Fordragon::1748
    .turnin 94947 >>Gebt die Quest Welcome to Azeroth ab
    .accept 93963 >>Akzeptiert die Quest Exploring the Allianz
    .accept 98021 >>Akzeptiert die Quest Journey to Späherkuppe << !Hunter



--step << Alliance
--    .goto 1453/0,350.200,-8516.200
--    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Randal Emerson::275491|r inside the Keep.
--    .complete 93963,1 --1/1 Receive Instructions from Randal Emerson
--    .skipgossipid 142485
--    .target Randal Emerson::275491
step << Alliance Hunter
    .goto 1453/0,1269.100,-8540.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gilbert Grau::267118|r
    .target Gilbert Gray::267118
    .accept 95065 >>Akzeptiert die Quest Fishin' Zeit
    .turnin 95065 >>Gebt die Quest Fishin' Zeit ab
step << Alliance Hunter
    #optional
    #label DarkshoreCook1
    #completewith DarkshoreBoat
    >>|cRXP_WARN_Auf dem Boot, wenn es gerade angekommen ist, oder am Dock, wenn das Boot gerade abgefahren ist:|r
    .cast 818 >>|cRXP_WARN_Erstellt eine|r |T135805:0|t[Kochfeuerstelle] |cRXP_WARN_(in eurem Berufsbuch)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Alliance Hunter
    #optional
    #requires DarkshoreCook1
    #label DarkshoreCook2
    #completewith DarkshoreBoat
    >>|cRXP_WARN_Auf dem Boot, wenn es gerade angekommen ist, oder am Dock, wenn das Boot gerade abgefahren ist:|r
    .cast 818 >>|cRXP_WARN_Erstellt eine|r |T135805:0|t[Kochfeuerstelle] |cRXP_WARN_(in eurem Berufsbuch)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Alliance Hunter
    #optional
    #requires DarkshoreCook2
    #label DarkshoreCook3
    #completewith DarkshoreBoat
    >>|cRXP_WARN_Auf dem Boot, wenn es gerade angekommen ist, oder am Dock, wenn das Boot gerade abgefahren ist:|r
    .cast 818 >>|cRXP_WARN_Erstellt eine|r |T135805:0|t[Kochfeuerstelle] |cRXP_WARN_(in eurem Berufsbuch)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Alliance Hunter
    #optional
    #requires DarkshoreCook3
    #label DarkshoreCook4
    #completewith DarkshoreBoat
    >>|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    >>|T133971:0|t[Koche] |cRXP_WARN_die folgenden Gegenstände:|r
    >>|T133971:0|t[Kochen] |cRXP_WARN_die|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_zu|r |T133974:0|t[Geröstetes Eberfleisch]
    >>|T133971:0|t[Koche] |cRXP_WARN_das|r |T133970:0|t|cRXP_LOOT_[Sehniges Wolfsfleisch]|r |cRXP_WARN_zu|r |T133974:0|t[Verkohltes Wolfsfleisch]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << Alliance Hunter
    #optional
    #requires DarkshoreCook4
    #label DarkshoreCook5
    #completewith DarkshoreBoat
    >>|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    >>|T133971:0|t[Koche] |cRXP_WARN_das|r |T133970:0|t|cRXP_LOOT_[Sehniges Wolfsfleisch]|r |cRXP_WARN_zu|r |T133974:0|t[Verkohltes Wolfsfleisch]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << Alliance Hunter
    #optional
    #requires DarkshoreCook5
    #label DarkshoreCook6
    #completewith DarkshoreBoat
    >>|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    >>|T133971:0|t[Kochen] |cRXP_WARN_die|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_zu|r |T133974:0|t[Geröstetes Eberfleisch]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << Alliance Hunter
    #optional
    .skill firstaid,<1,1 -- shows if firstaid is >1
    .goto 1453/0,1330.100,-8645.400
    >>|cRXP_WARN_Levelt eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_während ihr auf das Boot nach Dunkelküste wartet, falls nötig|r
    .zone Darkshore >> Nimm das Boot nach Dunkelküste
step << Alliance Hunter
    #label DarkshoreBoat
    .goto 1453/0,1330.100,-8645.400
    .zone Darkshore >> Nimm das Boot nach Dunkelküste

-- ============================================================================
-- Horde Leaving Zephras Isle
-- ============================================================================

step << Horde
    #optional
    .isQuestComplete 93317 -- Crab Season
    .goto 2521,60.64,72.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nyalah Brightfire::257006|r im Haus.
    .turnin 93317 >>Gebt die Quest Krebssaison ab
    .target Nyalah Brightfire::257006
step << Horde Warrior
    .goto 2521,59.886,72.863
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
    .turnin 94003 >>Gebt die Quest Die Himmelsbrecher Bollwerk ab
    .target Seena Skybreaker::252377
step << Horde Warrior
    .money <0.3
    .isQuestAvailable 93736 -- Unwelcome Spirits
    .subzoneskip 16638,1 -- Valanaar
    .train 7887,1 -- Overpower (Rank 2) Not Trained
    .train 1671,1 -- Shield Bash (Rank 2) Not Trained
    .xp <12,1
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
    .train 5242 >>Erlernen |T132333:0|t[Schlachtruf (Rang 2)]
    .train 7384 >>Erlernt |T132223:0|t[Überwältigen]
    .train 72 >>Erlernen |T132357:0|t[Schildhieb]
    .skipgossipid 136813
    .target Seena Skybreaker::252377
step << Horde Warrior
    .money <0.45
    .isQuestAvailable 93736 -- Unwelcome Spirits
    .subzoneskip 16638,1 -- Valanaar
    .train 6190,1 -- Demoralizing Shout (Rank 2) Not Trained
    .train 6574,1 -- Revenge (Rank 2) Not Trained
    .xp <14,1
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
    .train 1160 >>Erlernen |Tinterface/icons/ability_warrior_warcry.blp:0|t[Demoralisierender Ruf]
    .train 6572 >>Erlernen |Tinterface/icons/ability_warrior_revenge.blp:0|t[Rache]
    .train 1310185 >>Erlernen |T136031:0|t[Taktiker]
    .skipgossipid 136813
    .target Seena Skybreaker::252377
step << Horde Rogue
    .money <0.16
    .xp <12,1
    .goto 2521,59.9,72.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eltheen Nightbreeze::252379|r.
    .train 1766 >>Erlernt |T132219:0|t[Tritt]
    .train 3127 >>Erlernt |T132269:0|t[Parieren]
    .skipgossipid 136810
    .target Eltheen Nightbreeze::252379
step << Horde
    #optional
    .isQuestComplete 93737 -- The Broken Construct
    .goto 2521,59.066,72.987
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Riaani Nightwind::256083|r.
    .turnin 93737 >>Gebt die Quest The Kaputt Konstrukt ab
    .target Riaani Nightwind::256083
step << Horde
    #optional
    .isQuestTurnedIn 93737 -- The Broken Construct
    .goto 2521,59.066,72.987
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Riaani Nightwind::256083|r.
    .accept 93738 >>Akzeptiert die Quest The Kaputt Konstrukt
    .target Riaani Nightwind::256083
-- step << Horde
--     .goto 2521,58.986,75.460
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Railee Thriceforged::257422|r.
--     .vendor 257422 >>Vendor trash.
--     *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat].
--     *|cRXP_WARN_We need them for Cooking later|r.
--     .target Railee Thriceforged::257422
step << Horde
    #optional
    .isQuestComplete 93736 -- Unwelcome Spirits
    .goto 2521,58.128,78.307
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Endaria Mistgaze::254344|r.
    .turnin 93736 >>Gebt die Quest Unwelcome Geister ab
    .target Endaria Mistgaze::254344
step << Horde
    #optional
    .isOnQuest 93738
    .goto 2521,59.149,79.773
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ayessa Dawnsinger::251968|r.
    .turnin 93738 >>Gebt die Quest The Kaputt Konstrukt ab
    .target Ayessa Dawnsinger::251968
step << Horde
    #optional
    .isQuestComplete 92708 -- A Grand Adventure
    .goto 2521,59.154,79.789
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ayessa Dawnsinger::251968|r.
    .turnin 92708 >>Gebt die Quest A Grand Adventure ab
    .target Ayessa Dawnsinger::251968
step << Horde
    .abandon 92708 >>Brecht die Quest A Grand Adventure ab
step << Horde
    #label LeaveZephrasIsle
    .zoneskip 2521,1 -- Zephras Isle
    .isQuestAvailable 95350 -- Welcome to Azeroth
    .goto 2521,57.921,80.781
    .zone 1412 >>Nehmt das Luftschiff nach |cRXP_PICK_Mulgore|r.
step << Horde Druid Skyborne
    .goto 1412/1,423.400,-659.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Muln Erdenwut::259118|r.
    .target Muln Earthfury::259118
    .accept 94911 >>Akzeptiert die Quest Child of Naturschaden
step << Horde
    .goto 1412/1,426.100,-658.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alaana Stormwalker::259119|r.
    .accept 95350 >>Akzeptiert die Quest Welcome to Azeroth
    .target Alaana Stormwalker::259119
-- step << Horde
--     .isOnQuest 95350
--     -- .subzoneskip 17045,1 -- Skywatcher Plateau
--     .goto 1412/1,323.300,-731.200
--     .deathskip >>Jump to die and ress at the |cRXP_PICK_Spirit Healer|r.
--     .skipgossipid 96031
--     .skipgossipid 98031
--     .target Spirit Healer::6491
step << Horde Druid Skyborne
    #completewith ChildOfNatureC
    #label ChildOfNatureA
    #hidewindow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Turak Runetotem::3033|r.
    .turnin 94911 >>Gebt die Quest Child of Naturschaden ab
    .accept 94913 >>Akzeptiert die Quest Moonglade
    .target Turak Runetotem::3033
step << Horde Druid Skyborne
    #completewith ChildOfNatureA
    #label ChildOfNatureB
    .goto 1456/1,-110.500,-970.700,15,0
    .goto 1456/1,-76.900,-1026.000,15,0
    .goto 1456/1,-48.800,-1037.300,8,0
    .goto 1456/1,-7.300,-1089.600,25 >>Betretet Donnerfels
step << Horde Druid Skyborne
    #requires ChildOfNatureB
    #completewith ChildOfNatureA
    #label ChildOfNatureC
    .goto 1456/1,-13.300,-1108.300,12,0
    .goto 1456/1,-46.900,-1092.900,12,0
    .goto 1456/1,-61.200,-1097.400,8,0
    .goto 1456/1,-198.000,-1046.500,12 >>Überquert die Brücke.
step << Horde Druid Skyborne
    #requires ChildOfNatureC
    .goto 1456/1,-281.500,-1039.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Turak Runetotem::3033|r.
    .turnin 94911 >>Gebt die Quest Child of Naturschaden ab
    .accept 94913 >>Akzeptiert die Quest Moonglade
    .target Turak Runetotem::3033
step << Horde Druid Skyborne
    #optional
    #requires ChildOfNatureA
    .xp <12,1
    .xp >14,1
    .goto 1456/1,-281.500,-1039.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Turak Runetotem::3033|r.
    .train 8936 >>Trainiere deine Klassenfähigkeiten
    .target Turak Runetotem::3033
step << Horde Druid Skyborne
    #requires ChildOfNatureA
    .xp <14,1
    .goto 1456/1,-281.500,-1039.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Turak Runetotem::3033|r.
    .train 5178 >>Trainiere deine Klassenfähigkeiten
    .target Turak Runetotem::3033
step << Horde !Druid
    #completewith next
    #label WelcomeToAzerothA
    #hidewindow
    .isOnQuest 95350 -- Welcome to Azeroth
    .zoneskip 1454 -- Orgrimmar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tal::2995|r.
    .fly Orgrimmar >>Fliege nach Orgrimmar
    .target Tal::2995
step << Horde
    .goto 1456/1,-218.13,-1055.97--c:Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rahauro|r
    .accept 5722 >> Akzeptiert die Quest Die Suche nach dem verloren gegangenen Ranzen
    .accept 5723 >> Akzeptiert die Quest Die Kraft des Feindes wird auf die Probe gestellt
    .target Rahauro
    .dungeon RFC
step << Horde !Druid
    #completewith WelcomeToAzerothA
    .goto 1456/1,-110.500,-970.700,15,0
    .goto 1456/1,-76.900,-1026.000,15,0
    .goto 1456/1,-48.800,-1037.300,8,0
    .goto 1456/1,-7.300,-1089.600,25 >>Betretet Donnerfels
step << Horde
    #requires WelcomeToAzerothA << !Druid
    .isOnQuest 95350 -- Welcome to Azeroth
    .zoneskip 1454 -- Orgrimmar
    .goto 1456/1,26.500,-1196.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tal::2995|r.
    .fly Orgrimmar >>Fliege nach Orgrimmar
    .target Tal::2995
step << Horde
    .goto Orgrimmar,54.10,68.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Innkeeper Gryshka::6929|r
    .home >> Setzt euren Ruhestein nach Orgrimmar
	.target Innkeeper Gryshka::6929
    .bindlocation 1637
step << Horde
    .goto 1454/1,-4460.600,1584.300,10,0
    .goto 1454/1,-4460.000,1598.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thatog::268701|r
    >>|cRXP_WARN_Er ist oben im Gebäude.|r
    .accept 97246 >>Akzeptiert die Quest Meal Appeal
    .target Thatog::268701
step << Horde
    .goto 1454/1,-4482.600,1775.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Borstan::3368|r
    .turnin 97246 >>Gebt die Quest Meal Appeal ab
    .accept 97249 >>Akzeptiert die Quest Favorite Essen
    .target Borstan::3368
step << Horde
    .goto 1454/1,-4466.800,1954.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kor'geld::3348|r
    .accept 97242 >>Akzeptiert die Quest Yelmak's Medley
    .target Kor'geld::3348
step << Horde
    #completewith next
    .goto 1454/1,-4560.000,1908.500,15,0
    .goto 1454/1,-4587.000,1918.300,15,0
    .goto 1454/1,-4608.000,1897.400,15,0
    .goto 1454/1,-4632.300,1911.600,15 >>Reist in Das Tal der Ehre
step << Horde
    #loop
    .goto 1454/1,-4653.900,1950.300,0
    .goto 1454/1,-4653.900,1950.300,20,0
    .goto 1454/1,-4677.700,1971.600,20,0
    .goto 1454/1,-4667.400,1997.000,20,0
    .goto 1454/1,-4609.800,2013.500,20,0
    .goto 1454/1,-4630.600,1968.100,20,0
    >>Plündert |cRXP_PICK_Handful of Cattails|r und |cRXP_PICK_Speargrass Cuttings|r im Wasser
    .complete 97242,1 --|2/2 Handful of Cattails
    .complete 97242,2 --|4/4 Speargrass Cuttings
step << Horde Hunter
    .xp <12,1
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ormak Grimshot::3352|r
    .train 13795 >> Trainiere deine Klassenfähigkeiten
    .target Ormak Grimshot::3352
step << Horde Hunter
    .goto 1454/1,-4611.09,2135.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Xao'tsu::10088|r
    .train 24556 >> Erlernt eure Begleiterfähigkeiten
    .target Xao'tsu::10088
step << Horde Warrior
    .xp <12,1
    .xp >14,1
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grezz Ragefist::3353|r
    .train 7384 >> Trainiere deine Klassenfähigkeiten
    .target Grezz Ragefist::3353
step << Horde Warrior
    #optional
    .xp <14,1
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grezz Ragefist::3353|r
    .train 1160 >> Trainiere deine Klassenfähigkeiten
    .target Grezz Ragefist::3353
step << Horde
    .goto 1454/1,-4466.900,1954.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kor'geld::3348|r
    .turnin 97242 >>Gebt die Quest Yelmak's Medley ab
    .target Kor'geld::3348
step << Horde
    .goto 1454/1,-4477.900,1964.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yelmak::3347|r
    >>|cRXP_WARN_Ihr müsst möglicherweise etwa 10 Sek. warten, bevor ihr diese Quest annehmen könnt|r
    .accept 97275 >>Akzeptiert die Quest Whuut's the Rausch
    .target Yelmak::3347
step << Horde
    .goto 1454/1,-4463.000,1966.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Whuut::11046|r
    .turnin 97275 >>Gebt die Quest Whuut's the Rausch ab
    .target Whuut::11046
step << Horde
    .goto 1454/1,-4193.400,2001.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Migi::268682|r
    .turnin 97249 >>Gebt die Quest Favorite Essen ab
    .target Migi::268682
step << Horde
    .goto 1454/1,-4205.800,2007.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thra::268684|r
    .accept 97326 >>Akzeptiert die Quest Felsen to Rests
    .target Thra::268684
step << Horde
    .isOnQuest 97326 -- Rocks to Rests
    .goto 1454/1,-4293.600,1949.900
    >>Plündert die orangen |cRXP_PICK_Rocks|r auf dem Boden
    >>|cRXP_WARN_Überspringt diese Quest, wenn es viel Konkurrenz gibt! Es gibt nicht so viele |cRXP_PICK_Felsen|r und sie erscheinen nicht schnell wieder.|r
    .complete 97326,1 --|8/8 Smooth Boulder
step << Horde
    .isQuestComplete 97326 -- Rocks to Rests
    .goto 1454/1,-4205.900,2007.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thra::268684|r
    .turnin 97326 >>Gebt die Quest Felsen to Rests ab
    .target Thra::268684
step << Horde
    .goto 1454/1,-4126.300,1920.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thrall::4949|r.
    .turnin 95350 >>Gebt die Quest Welcome to Azeroth ab
    .accept 98024 >>Akzeptiert die Quest Reise nach Crossroads
    --.accept 93739 >>Accept Exploring the Horde
    --.accept 5726 >>Accept Hidden Enemies
    .target Thrall::4949
    --93739 will take too long, won't be able to fully complete and turnin until lvl 22/23 and at that point you get no xp
step << skip --Horde
    .goto 1454/1,-4133.400,1938.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nazgrel::3230|r.
    .complete 93739,1 --|1/1 Obtain Instructions from Nazgrel
    .target Nazgrel::3230
    .skipgossipid 142489
step << skip --Horde
    .goto 1454/1,-4162.200,1933.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vol'jin::10540|r.
    .complete 93739,2 --|1/1 Speak with Vol'jin
    .target Vol'jin::10540
step << Horde
    .xp <13,1
    .goto 1454/1,-4226.78,1914.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zor Lonetree::4047|r
    .accept 1061 >>Akzeptiert die Quest Die Geister des Steinkrallengebirges
    .target Zor Lonetree::4047
step << Horde Shaman
    .xp <12,1
    .xp >14,1
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kardris Dreamseeker::3344|r
    .train 408341 >> Trainiere deine Klassenfähigkeiten
    .target Kardris Dreamseeker::3344
step << Horde Shaman
    #optional
    .xp <14,1
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kardris Dreamseeker::3344|r
    .train 8045 >> Trainiere deine Klassenfähigkeiten
    .target Kardris Dreamseeker::3344
step << Horde Rogue
    .xp <12,1
    .xp >14,1
    .goto 1454/1,-4296.34,1762.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ormok::3328|r
    .train 1766 >> Trainiere deine Klassenfähigkeiten
    .target Ormok::3328
step << Horde Rogue
    #optional
    .xp <14,1
    .goto 1454/1,-4296.34,1762.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ormok::3328|r
    .train 1758 >> Trainiere deine Klassenfähigkeiten
    .target Ormok::3328
step << Horde Mage
    .xp <12,1
    .xp >14,1
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pephredo::5882|r
    .train 145 >> Trainiere deine Klassenfähigkeiten
    .target Pephredo::5882
step << Horde Mage
    #optional
    .xp <14,1
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pephredo::5882|r
    .train 1449 >> Trainiere deine Klassenfähigkeiten
    .target Pephredo::5882
step << !Hunter
    #optional
    .maxlevel 13,Silverpineskip
step << Horde
    #completewith next
    .zone Durotar >> Verlass Orgrimmar
    .zoneskip Tirisfal Glades
    .zoneskip Undercity
    .zoneskip Silverpine Forest
step << Horde Hunter
    #completewith next
    .subzone 362 >> Reist nach Klingenhügel
step << Horde Hunter
    #label Conscript
    .goto 1411/1,-4648.55,271.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Takrin Pathseeker::3336|r
    .accept 840 >>Akzeptiert die Quest Freiwilliger der Horde
    .target Takrin Pathseeker::3336
step << Horde Hunter
    #completewith next
    .subzone 379 >> Reist zur Fernwacht
step << Horde Hunter
    .goto 1413/1,-3687.11,303.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kargal Die Kriegsnarbe::3337|r
    .turnin 840 >>Gebt die Quest Freiwilliger der Horde ab
    .accept 842 >>Akzeptiert die Quest Crossroads-Wehrpflicht
    .target Kargal Battlescar::3337
step << Horde !Hunter
    .goto 1411/1,-4648.55,1321.88,40 >>Geh auf den Zeppelin-Turm
    .zone Tirisfal Glades >>Nehmt den Zeppelin nach Tirisfal
    >>|cRXP_WARN_Beschwört Wasser, während ihr wartet|r << Mage
step << Horde !Hunter
    #completewith DeliverytoSPF
    .goto 1420/0,253.4,2234.85,80 >> Lauf nach Brill
step << Horde !Hunter
    .xp >13,1
    .goto 1420/0,254.600,2225.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Deathguard Terrence::1738|r
    .accept 96895 >>Akzeptiert die Quest The Argent Kontaktaufnahme
    .target Deathguard Terrence::1738
step << Horde !Hunter
    #label DeliverytoSPF
    .xp >13,1
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Apothecary Johaan::1518|r
    .accept 445 >>Akzeptiert die Quest Lieferung in den Silberwald
    .target Apothecary Johaan::1518
step << Horde !Hunter
    .xp >13,1
    .goto 1420/0,54.600,1996.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hadric Harlson::267009|r
    .turnin 96895 >>Gebt die Quest The Argent Kontaktaufnahme ab
    .accept 96897 >>Akzeptiert die Quest The Cult of the Verdammt
    .accept 96898 >>Akzeptiert die Quest Remnants of Krieg
    .target Hadric Harlson::267009
step << Horde !Hunter
    .isOnQuest 96897,96898 -- The Cult of the Damned / Remnants of War
    .goto 1420/0,-130.500,1907.800
    >>Tötet |cRXP_ENEMY_Dark Enforcers::275437|r und |cRXP_ENEMY_Dark Neophytes|r. Plündert sie für |cRXP_LOOT_Necrotic Kristallfragmente|r
    >>|cRXP_LOOT_Necrotic Kristallfragmente|r |cRXP_WARN_can also be looted auf dem Boden|r
    >>|cRXP_WARN_Seid vorsichtig! Diese Mobs schlagen hart zu. |cRXP_ENEMY_Dark Enforcers::275437|r haben auch eine sofort wirkende Fähigkeit mit 50-70 Schaden|r
    .complete 96897,2 --|8/8 Dark Enforcer slain
    .mob +Dark Enforcer::275437
    .complete 96897,1 --|8/8 Dark Neophyte slain
    .mob +Dark Neophyte
    .complete 96898,1 --|12/12 Necrotic Crystal Fragment
step << Horde !Hunter
    .isQuestComplete 96897 -- The Cult of the Damned
    .isQuestComplete 96898 -- Remnants of War
    .goto 1420/0,54.500,1996.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hadric Harlson::267009|r
    .turnin 96897 >>Gebt die Quest The Cult of the Verdammt ab
    .turnin 96898 >>Gebt die Quest Remnants of Krieg ab
    --.accept 96899 >>Accept Bandarion Keep
    .target Hadric Harlson::267009
step << Horde !Hunter
    #completewith UCflightpath1
    .goto 1458/0,239.14,1749.54,35,0
    .goto 1458/0,255.64,1724.70,35,0
    .goto 1458/0,240.68,1706.97,10,0
    .goto 1458/0,241.06,1660.12,10,0
    .goto 1458/0,257.08,1623.38,10,0
    .goto 1458/0,244.51,1598.73,15 >> Nehmt den Aufzug hinab nach Unterstadt
step << Horde !Hunter
    #label UCflightpath1
    .goto 1458/0,266.39,1567.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Michael Garrett::4551|r
    .fp Undercity >> Erlernt die Flugroute Unterstadt
    .target Michael Garrett::4551
step << Horde !Hunter
    #ah
    .zoneskip Undercity,1
    .goto 1458/0,224.300,1648.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Auctioneer Cain::15682|r
    >>|cRXP_BUY_Kauft drei|r |T133884:0|t[Murloc Augen] |cRXP_BUY_beim Auktionshaus|r
    >>|cRXP_WARN_Überspringt dies, wenn ihr wollt, es spart nur wenig Zeit|r
    .collect 730,3,91920,1 --Collect Murloc Eyes (x3)
    .target Auctioneer Cain::15682
step << Horde !Hunter
    .zoneskip Silverpine Forest
    .goto 1458/0,419.89,1627.54,50,0
    .goto 1458/0,428.52,1597.20,10,0
    .goto 1458/0,439.17,1626.06,10,0
    .goto 1458/0,476.78,1632.150,10,0
    .goto 1458/0,482.34,1660.63,10,0
    .goto 1458/0,539.33,1665.49,15,0
    .goto 1458/0,610.42,1684.44,35,0
    .goto 1458/0,663.19,1600.46,35,0
    .goto 1420/0,724.25,1682.66,50,0
    .zone Tirisfal Glades >> Verlasst die Unterstadt durch die Kanalisation
step << Horde !Hunter
    #label Entersilverpine
    .zoneskip Silverpine Forest
    .goto 1420/0,629.36,1553.42
    .zone Silverpine Forest >> Reist nach Silberwald
step << !Hunter
    #optional
    #label Silverpineskip
]])
