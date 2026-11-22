if GetLocale() ~= "frFR" then return end
--Skyborne leveling guide: Part 1
RXPGuides.RegisterGuide([[
#forever
#disabledungeons
#version 1
#name 1-9 Zephras Isle V2
#displayname 1-9 Skyborne V2 << Alliance
#displayname 1-9 Skyborne V2 << Horde
#group RestedXP Guide Forever (A) << Alliance
#group RestedXP Guide Forever (H) << Horde
#subgroup Guide Speedrun 1-20 << Alliance
#subgroup Guide Speedrun 1-22 << Horde
#next 9-13 Zephras Isle V2
#defaultfor Skyborne
#internal

step
    .goto 2521,42.82,23.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ailee Farheart::251362|r.
    .accept 92460 >>Acceptez la quête Il est temps de grandir
    .target Ailee Farheart::251362
step
    .goto 2521,42.07,23.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rorian the Dayseeker::251361|r.
    .turnin 92460 >>Rendez la quête Il est temps de grandir
    .target Rorian the Dayseeker::251361
    .accept 92461 >>Acceptez la quête Harmonie in Rétablir l’équilibre
step
    .goto 2521,43.44,24.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elatrell Léger comme une plume::251368|r.
    .accept 92462 >>Acceptez la quête Infestation Investigation
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
    >>Tuez |cRXP_ENEMY_Juvenile Vuldrens::250873|r.
    .complete 92461,1 --8/8 Juvenile Vuldren slain
    .mob Juvenile Vuldren::250873
step
    >>Tuez |cRXP_ENEMY_Pesky Cirrusflies::251169|r.
    *|cRXP_WARN_Priorisez-les|r
    .complete 92462,1 --8/8 Pesky Cirrusfly slain
    .mob Pesky Cirrusfly::251169
step
    #label Juvenile Vuldren
    >>Tuez |cRXP_ENEMY_Juvenile Vuldrens::250873|r.
    .complete 92461,1 --8/8 Juvenile Vuldren slain
    .mob Juvenile Vuldren::250873
step << Horde Shaman
    #label Juvenile Vuldren Grind
    .xp 2+480 >>Broyez jusqu'à 480+/900XP pour atteindre le niveau 3 après les remises pour la quête du totem.
step
    .goto 2521,43.44,24.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elatrell Léger comme une plume::251368|r.
    *|cRXP_WARN_N'utilisez pas |r|T132845:0|t[Marche sur l'air] |cRXP_WARN_car nous en aurons besoin bientôt|r.
    .turnin 92462 >>Rendez la quête Infestation Investigation
    .accept 92463 >>Acceptez la quête The Cirrusfly Reine
    .target Elatrell Featherlight::251368
step << Warrior
    .money <0.0010
    .xp <1,1
    .train 5242,1 -- Battle Shout (Rank 2) Not Trained
    .goto 2521,43.66,24.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Blademaster Ren::251964|r.
    .train 6673 >>Apprenez [Cri de guerre]
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
    >>Escaladez l'escalier en spirale, puis |Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Halaan Oeil de faucon::257554|r |cRXP_WARN_au sommet de la tour|r.
    .accept 94414 >>Acceptez la quête The Anchors of Zephras
    .target Halaan Hawk-Eye::257554
step
    .goto 2521,43.80,24.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Halaan Oeil de faucon::257554|r.
    *|cRXP_WARN_Bougez ou appuyez sur ESC pour annuler|r.
    .complete 94414,1 --View the Anchor Pylon
    .skipgossipid 137720,1
    .target Halaan Hawk-Eye::257554
step
    .goto 2521,43.80,24.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Halaan Oeil de faucon::257554|r.
    *|cRXP_WARN_Bougez ou appuyez sur ESC pour annuler|r.
    .turnin 94414 >>Rendez la quête The Anchors of Zephras
    .target Halaan Hawk-Eye::257554
step << Skyborne
    .goto 2521,43.65,24.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Myriaal Mistwake::263113|r.
    .accept 92474 >>Acceptez la quête Chute With Style
    .target Myriaal Mistwake::263113
step << Skyborne
    #optional
    #completewith next
    #label Harmony in Balance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rorian the Dayseeker::251361|r.
    .turnin 92461,1 >>Rendez la quête Harmonie in Rétablir l’équilibre
    .target Rorian the Dayseeker::251361
step << Skyborne
    #completewith Harmony in Balance
    .goto 2521,42.06,23.48
    >>En tombant de la tour, utilisez |T132845:0|t[Marche sur l'air] et visez le donneur de quête.
    *Vous pouvez aussi simplement sauter et appuyer sur le bouton au sol.
    *S'il est en temps de récupération, cette étape sera sautée lors de la remise de Harmonie in Rétablir l’équilibre. Vous pouvez la compléter plus tard.
    .complete 92474,1 --Use Walk on Air
    .macro Walk on Air, 132845 >>Marche sur l'air
    -- .macro Cancel Walk on Air,132745 >>/cancelaura Walk on Air
step << Skyborne
    #requires Harmony in Balance
    .goto 2521,42.06,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rorian the Dayseeker::251361|r.
    .turnin 92461,1 >>Rendez la quête Harmonie in Rétablir l’équilibre
    .target Rorian the Dayseeker::251361
    .accept 92464 >>Acceptez la quête Élémentaire Unrest
    .accept 92481 >>Acceptez la quête A Student of the (Arcanes) << Mage
    .accept 92483 >>Acceptez la quête At Accueil in the Ombres << Rogue
    .accept 92482 >>Acceptez la quête The Way of the Chasseur << Hunter
    .accept 92484 >>Acceptez la quête Embracing the Elements << Shaman
    .accept 92532 >>Acceptez la quête The Guerrier's Chemin << Warrior
    .accept 92485 >>Acceptez la quête A Student of (Nature) << Druid
--Split so players can complete this later if they used Walk on Air early
step << Skyborne
    .isQuestComplete 92474 --Falling With Style
    .goto 2521,42.06,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rorian the Dayseeker::251361|r.
    .target Rorian the Dayseeker::251361
    .turnin 92474 >>Rendez la quête Chute With Style
step << !Skyborne
    .goto 2521,42.06,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rorian the Dayseeker::251361|r.
    .turnin 92461,1 >>Rendez la quête Harmonie in Rétablir l’équilibre
    .target Rorian the Dayseeker::251361
    .accept 92464 >>Acceptez la quête Élémentaire Unrest
    .accept 92481 >>Acceptez la quête A Student of the (Arcanes) << Alliance Mage
    .accept 92483 >>Acceptez la quête At Accueil in the Ombres << Rogue
    .accept 92482 >>Acceptez la quête The Way of the Chasseur << Hunter
    .accept 92484 >>Acceptez la quête Embracing the Elements << Horde Shaman
    .accept 92532 >>Acceptez la quête The Guerrier's Chemin << Warrior
    .accept 92485 >>Acceptez la quête A Student of ((Nature)) << Druid
step << Druid
    .goto 2521,41.653,23.337
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xyton Silverwind::251373|r.
    .turnin 92485 >>Rendez la quête A Student of ((Nature))
    .target Xyton Silverwind::251373
step << Druid
    .money <0.0010
    .xp <1,1
    .goto 2521,41.653,23.337
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xyton Silverwind::251373|r.
    .train 1126 >>Entraînez-vous |T136078:0|t[Marque du fauve]
    .skipgossipid 136805
    .target Xyton Silverwind::251373
step << Alliance Mage
    .goto 2521,41.55,23.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dorii Brightwhisper::251379|r.
    .turnin 92481 >>Rendez la quête A Student of the (Arcanes)
    .target Dorii Brightwhisper::251379
step << Alliance Mage
    .money <0.0010
    .xp <1,1
    .goto 2521,41.55,23.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dorii Brightwhisper::251379|r.
    .train 1459 >>Apprenez [Intelligence des Arcanes]
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379
step << Horde Shaman
    .goto 2521,42.790,23.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Windshaper Boro::251374|r
    .target Windshaper Boro::251374
    .turnin 92484 >>Rendez la quête Embracing the Elements
    .accept 92466 >>Acceptez la quête L'appel de la terre
step << Horde Shaman
    .money <0.0010
    .xp <1,1
    .goto 2521,42.79,23.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Windshaper Boro::251374|r.
    .train 8017 >>Apprenez [Arme Croque-roc]
    .target Windshaper Boro::251374
    .skipgossipid 136811
step << Hunter
    .goto 2521,42.47,23.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tai'ree Double vue::251376|r.
    .turnin 92482 >>Rendez la quête The Way of the Chasseur
    .target Tai'ree Farsight::251376
step << Alliance Rogue/Alliance Warrior
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.15 << Rogue
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.17 << Warrior
    .isNotOnQuest 93552 -- Harvesting Windstones
    .subzoneskip 16635,1 -- Thendal Village
    .isOnQuest 92464 -- Elemental Unrest
    .goto 2521,43.42,23.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Destin Thriceforged::251364|r.
    .collect 2131,1 >>Achetez et équipez une |T135274:0|t[Epée courte] << Rogue
    .collect 1194,1 >>Achetez et équipez une |T135276:0|t[Epée bâtarde] << Warrior
    .vendor 251364 >>Vendez tout ce dont nous n'avez pas besoin
    *Ne vendez PAS |T133970:0|t[Stringy Viande] ou |T132889:0|t[Etoffe de lin].
    .target Destin Thriceforged::251364
step << Horde
    .goto 2521,42.60,24.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ventaari Brightwish::251487|r.
    .accept 92598 >>Acceptez la quête The Gift of Vue céleste
    .target Ventaari Brightwish::251487
step << Horde !Warrior !Rogue/Alliance !Warrior !Rogue !Hunter
    .itemcount 159,<20 << Mage/Shaman/Priest/Warlock/Paladin -- Refreshing Spring Water
    .subzoneskip 16635,1 -- Thendal Village
    .isNotOnQuest 93552 -- Harvesting Windstones
    .isQuestAvailable 93552 -- Harvesting Windstones
    .goto 2521,42.749,24.496
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Uualia Suncrest::251537|r
    >>|cRXP_BUY_Achetez des|r [Eau de source] |cRXP_BUY_à Shara|r << !Hunter !Shaman
    .vendor 251537 >>Vendez tout ce dont nous n'avez pas besoin
    *Ne vendez PAS |T133970:0|t[Stringy Viande] ou |T132889:0|t[Etoffe de lin]. << Alliance
    .collect 159,20 << !Hunter !Shaman --Refreshing Spring Water (20)
    .target Uualia Suncrest::251537
    -- .money <0.0050 << !Hunter !Shaman
    -- .money <0.0040 << Hunter
step
    .goto 2521,43.37,23.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dalia the Collector::251363|r.
    .accept 93552 >>Acceptez la quête Récolte Windstones
    .target Dalia the Collector::251363
step
    #completewith next
    .goto 2521,43.53,23.83,7,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Cristaux|r
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance Hunter/Horde Rogue/Horde Warrior
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.17 << Hunter/Warrior
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.15 << Rogue
    .subzoneskip 16635,1 -- Thendal Village
    .isOnQuest 92464 -- Elemental Unrest
    .goto 2521,43.41,23.51
    .collect 1194,1 >>Achetez et équipez une |T135276:0|t[Epée bâtarde] << Hunter/Horde Warrior
    .collect 2131,1 >>Achetez et équipez une |T135274:0|t[Epée courte] << Horde Rogue
    .vendor 251364 >>Vendez tout ce dont nous n'avez pas besoin
    *Ne vendez PAS |T133970:0|t[Stringy Viande] ou |T132889:0|t[Etoffe de lin].
    .target Destin Thriceforged::251364
step << Alliance
    .goto 2521,43.33,24.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falorne Fallwind::251371|r.
    .accept 92597 >>Acceptez la quête Lecture the Ley Lines
    .target Falorne Fallwind::251371

-- ============================================================================
-- Horde Shaman Branch
-- ============================================================================

step << Horde Shaman
    #optional
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Cristaux|r
    .complete 93552,1 --15/15 Windstone Cluster
step << Horde Shaman
    .goto 2521,47.29,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yala Windwatcher::249363|r.
    .turnin 92464 >>Rendez la quête Élémentaire Unrest
    .accept 92465 >>Acceptez la quête Agitators
    .target Yala Windwatcher::249363
step << Horde Shaman
    #optional
    #completewith next
    >>Tuez |cRXP_ENEMY_Al'Aketh Converts::251160|r et |cRXP_ENEMY_Roiling Vents::251143|r.
    *|cRXP_WARN_Priorisez |cRXP_ENEMY_Roiling Vents::251143|r|r
    .complete 92465,1 --7/7 Al'Aketh Convert slain
    .mob +Al'Aketh Convert::251160
    .complete 92465,2 --6/6 Roiling Winds destroyed
    .mob +Roiling Winds::251143
step << Horde Shaman
    .goto 2521,48.4,20.4
    >>Utilisez |T1029587:0|t[Vue céleste] près de la |cRXP_PICK_Elemental Convergence|r pour obtenir |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[Charge].
    *Pendant que |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[Charge] est actif, |T1029587:0|t[Vue céleste] augmente la vitesse de déplacement et la vitesse de déplacement monté de |cRXP_WARN_30% pour 30 secondes|r.
    .complete 92598,1 --Use your Skysight ability near the Elemental Convergence
    .macro Skysight,1029587 >>Vue céleste
step << Horde Shaman
    #optional
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Cristaux|r
    *|cRXP_WARN_Prévoyez de casser environ 10 pierres, mais il peut vous en falloir jusqu'à 15|r.
    *|cRXP_WARN_Si la zone est anormalement bondée, campez sur un point d'apparition ou alternez entre les pierres proches|r.
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
    >>Tuez |cRXP_ENEMY_Al'Aketh Converts::251160|r et |cRXP_ENEMY_Roiling Vents::251143|r.
    *Ramassez-les pour le |T1020384:0|t[Signet of Akir]
    *|cRXP_WARN_Priorisez |cRXP_ENEMY_Roiling Vents::251143|r|r
    .complete 92465,1 --7/7 Al'Aketh Convert slain
    .mob +Al'Aketh Convert::251160
    .complete 92465,2 --6/6 Roiling Winds destroyed
    .mob +Roiling Winds::251143
    .complete 92466,1 --|1/1 Signet of Akir
step << Horde Shaman
    .goto 2521,47.29,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yala Windwatcher::249363|r.
    .turnin 92465 >>Rendez la quête Agitators
    .accept 92469 >>Acceptez la quête Renvoi to Rorian
    .target Yala Windwatcher::249363
step << Horde Shaman
    #completewith next
    .subzoneskip 16622,1 -- Thendal Grove
    .hs >>Utilisez votre pierre de foyer pour retourner à Thendal Village
    .cooldown item,6948,>0 --Hearthstone
step << Horde Shaman
    .goto 2521,42.788,23.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Windshaper Boro::251374|r
    .turnin 92466 >>Rendez la quête L'appel de la terre
    .accept 92467 >>Acceptez la quête L'appel de la terre
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
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Cristaux|r
    *|cRXP_WARN_Prévoyez de casser environ 10 pierres, mais vous aurez peut-être besoin jusqu'à 15|r.
    *|cRXP_WARN_Si la zone est anormalement surpeuplée, campez à un point d'apparition ou alternez entre les pierres à proximité|r.
    .complete 93552,1 --15/15 Windstone Cluster
step
    .goto 2521,48.41,28.37
    >>Tuez |cRXP_ENEMY_Cirrusfly Reine::251404|r.
    .complete 92463,1 --1/1 Cirrusfly Queen slain
    .mob Cirrusfly Queen::251404

-- ============================================================================
-- Horde Shaman Branch
-- ============================================================================

step << Horde Shaman
    .goto 2521,47.241,25.244,25,0
    .goto 2521,48.802,25.869,30,0
    .goto 2521,49.677,23.806
    >>Utilisez |T134743:0|t[Le sapta de terre].
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Minor Manifestation of Terre::251166|r
    .turnin 92467 >>Rendez la quête L'appel de la terre
    .accept 92468 >>Acceptez la quête L'appel de la terre
    .target Minor Manifestation of Earth::251166
    .use 6635 -- Earth Sapta
step << Horde Shaman
    .isQuestComplete 93552 -- Harvesting Windstones
    .goto 2521,49.32,23.18,15,0
    .goto 2521,48.88,21.52
    .subzone 16635 >>Sautez de la montagne et réapparaissez au Cimetière.
step << Horde Shaman
    #ignorecorpse
    .isQuestComplete 93552 -- Harvesting Windstones
    .subzoneskip 16635,1 -- Thendal Village
    .showwhiledead
    .goto 2521,41.06,22.32
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Spirit Soins::6491|r.
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
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Cristaux|r
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
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Cristaux|r
    *|cRXP_WARN_Prévoyez de casser environ 10 pierres, mais vous aurez peut-être besoin jusqu'à 15|r.
    *|cRXP_WARN_Si la zone est anormalement surpeuplée, campez à un point d'apparition ou alternez entre les pierres à proximité|r.
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance/!Shaman
    .goto 2521,47.29,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yala Windwatcher::249363|r.
    .turnin 92464 >>Rendez la quête Élémentaire Unrest
    .accept 92465 >>Acceptez la quête Agitators
    .target Yala Windwatcher::249363
step << Alliance/!Shaman
    #optional
    #completewith UseRacialAbility
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Cristaux|r
    *|cRXP_WARN_Prévoyez de casser environ 10 pierres, mais vous aurez peut-être besoin jusqu'à 15|r.
    *|cRXP_WARN_Si la zone est anormalement surpeuplée, campez à un point d'apparition ou alternez entre les pierres à proximité|r.
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance/!Shaman
    #optional
    #completewith UseRacialAbility
    >>Tuez |cRXP_ENEMY_Al'Aketh Converts::251160|r et |cRXP_ENEMY_Roiling Vents::251143|r.
    *|cRXP_WARN_Priorisez |cRXP_ENEMY_Roiling Vents::251143|r|r
    .complete 92465,1 --7/7 Al'Aketh Convert slain
    .mob +Al'Aketh Convert::251160
    .complete 92465,2 --6/6 Roiling Winds destroyed
    .mob +Roiling Winds::251143
step << Alliance
    #label UseRacialAbility
    .goto 2521,47.8,21.02,30,0
    .goto 2521,46.9,20.82,30,0
    .goto 2521,46.41,18.21
    >>Utilisez |T236219:0|t[Lecture des lignes telluriques] près du |cRXP_WARN_Blue Rift|r |cRXP_WARN_sur le sol|r pour obtenir |T135737:0|t[Harmonisation].
    *Pendant que |T135737:0|t[Harmonisation] est actif, |T236219:0|t[Lecture des lignes telluriques] augmente la régénération passive de mana et de santé de |cRXP_WARN_100% pendant 15 secondes|r.
    .complete 92597,1 --Use your Read Ley Line ability near the Thendal Grove Ley Line
    .usespell 1259705
step << Horde !Shaman
    #label UseRacialAbility
    .goto 2521,48.4,20.4
    >>Utilisez |T1029587:0|t[Vue céleste] près de |cRXP_PICK_Elemental Convergence|r pour obtenir |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[Charge].
    *Pendant que |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[Charge] est actif, |T1029587:0|t[Vue céleste] augmente la vitesse de déplacement et la vitesse de déplacement monté de |cRXP_WARN_30% pour 30 secondes|r.
    .complete 92598,1 --Use your Skysight ability near the Elemental Convergence
    .macro Skysight,1029587 >>Vue céleste
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
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Cristaux|r
    *|cRXP_WARN_Prévoyez de casser environ 10 pierres, mais vous aurez peut-être besoin jusqu'à 15|r.
    *|cRXP_WARN_Si la zone est anormalement surpeuplée, campez à un point d'apparition ou alternez entre les pierres à proximité|r.
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance/!Shaman
    >>Tuez |cRXP_ENEMY_Al'Aketh Converts::251160|r et |cRXP_ENEMY_Roiling Vents::251143|r.
    *Ramassez-les pour le |T1020384:0|t[Signet of Akir] << Shaman
    *|cRXP_WARN_Priorisez |cRXP_ENEMY_Roiling Vents::251143|r|r
    .complete 92465,1 --7/7 Al'Aketh Convert slain
    .mob +Al'Aketh Convert::251160
    .complete 92465,2 --6/6 Roiling Winds destroyed
    .mob +Roiling Winds::251143
    .complete 92466,1 << Shaman --|1/1 Signet of Akir
step << Alliance/!Shaman
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Cristaux|r
    *|cRXP_WARN_Prévoyez de casser environ 10 pierres, mais vous aurez peut-être besoin jusqu'à 15|r.
    *|cRXP_WARN_Si la zone est anormalement surpeuplée, campez à un point d'apparition ou alternez entre les pierres à proximité|r.
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance/!Shaman
    #label Windstone Cluster
    .xp 3+300 >>Farmez jusqu'à 300+/1400xp
step << Alliance/!Shaman
    .goto 2521,47.29,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yala Windwatcher::249363|r.
    .turnin 92465 >>Rendez la quête Agitators
    .accept 92469 >>Acceptez la quête Renvoi to Rorian
    .target Yala Windwatcher::249363
step << Alliance/!Shaman
    #completewith next
    .hs >>Utilisez votre Pierre de foyer pour vous téléporter à Thendal Village
    .cooldown item,6948,>0 --Hearthstone
step << !Shaman
    #completewith next
    #label Harvesting Windstones2
    #optional
    .goto 2521,43.89,22.27,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dalia the Collector::251363|r.
    *|cRXP_WARN_Choisir entre Minage, Herboristerie, ou Dépeçage|r.
    .turnin 93552 >>Rendez la quête Récolte Windstones
    .target Dalia the Collector::251363
step << !Shaman
    #completewith Harvesting Windstones2
    #hidewindow
    .goto 2521,43.37,23.98,60 >>1
step
    #requires Harvesting Windstones2
    .goto 2521,43.37,23.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dalia the Collector::251363|r.
    *|cRXP_WARN_Choisir entre Minage, Herboristerie, ou Dépeçage|r.
    .turnin 93552 >>Rendez la quête Récolte Windstones
    .target Dalia the Collector::251363
step << Rogue
    .goto 2521,43.74,24.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Akeri Duskblade::251389|r.
    .turnin 92483 >>Rendez la quête At Accueil in the Ombres
    .target Akeri Duskblade::251389
step << Warrior
    .money <0.02
    .train 6546,1 -- Rend (Rank 2) Not Trained
    .train 6178,1 -- Charge (Rank 2) Not Trained
    .xp <4,1
    .isOnQuest 92469 -- Return to Rorian
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Blademaster Ren::251964|r.
    .train 100 >>Apprenez [Charge]
    .train 772 >>Apprenez [Pourfendre]
    .skipgossipid 136813,1
    .target Blademaster Ren::251964
step << Warrior
    .xp <4,1
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Blademaster Ren::251964|r.
    .turnin 92532 >>Rendez la quête Le Chemin du Guerrier
    .target Blademaster Ren::251964
step
    .goto 2521,43.44,24.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elatrell Léger comme une plume::251368|r.
    .turnin 92463,3 >>Rendez la quête La Reine Cirrusfly
    .target Elatrell Featherlight::251368
step << Alliance
    .goto 2521,43.33,24.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falorne Fallwind::251371|r.
    .turnin 92597 >>Rendez la quête Lecture des Lignes telluriques
    .target Falorne Fallwind::251371
step
    #completewith Turn in Return to Rorian
    .itemcount 247840,1 -- Mining for Dummies
    .train 2575 >>Utilisez |T4625105:0|t[Minage pour les Nuls] |cRXP_WARN_en marchant vers le donneur de quête|r.
    .use 247840 -- Mining for Dummies
step
    #completewith Turn in Return to Rorian
    .itemcount 247841,1 -- Wild Harvest
    .train 2366 >>Utilisez |T4624731:0|t[Sauvage Moisson] |cRXP_WARN_en marchant vers le donneur de quête|r.
    .use 247841 -- Wild Harvest
step
    #completewith Turn in Return to Rorian
    .itemcount 247846,1 -- Pelt Collecting for Beginners
    .train 8613 >>Utilisez |T4624731:0|t[Pelt Collecte for Beginners] |cRXP_WARN_en marchant vers le donneur de quête|r.
    .use 247846 -- Pelt Collecting for Beginners
step << Warrior
    .money <0.02
    .train 6546,1 -- Rend (Rank 2) Not Trained
    .train 6178,1 -- Charge (Rank 2) Not Trained
    .xp <4,1
    .isOnQuest 92469 -- Return to Rorian
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Blademaster Ren::251964|r.
    .train 100 >>Apprenez [Charge]
    .train 772 >>Apprenez [Pourfendre]
    .skipgossipid 136813,1
    .target Blademaster Ren::251964
step << Warrior
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Blademaster Ren::251964|r.
    .turnin 92532 >>Rendez la quête The Guerrier's Chemin
    .target Blademaster Ren::251964
step << Horde Hunter
    .money <0.02
    .xp <4,1
    .goto 2521,42.467,23.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tai'ree Double vue::251376|r
    .train 13163 >>S'entraîner |T132159:0|t[Aspect du singe]
    .train 1978 >>Apprenez [Morsure de serpent]
    .skipgossipid 136808
    .target Tai'ree Farsight::251376
step << Horde
    #label Turn in Return to Rorian
    .goto 2521,42.07,23.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rorian the Dayseeker::251361|r.
    .turnin 92469,1 >>Rendez la quête Renvoi to Rorian
    .accept 92471 >>Acceptez la quête Aetheen of the Gales -- Unlocks at 4
    .target Rorian the Dayseeker::251361
step << Horde Skyborne
    .isQuestComplete 92474 --Falling With Style
    .goto 2521,42.06,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rorian the Dayseeker::251361|r.
    .target Rorian the Dayseeker::251361
    .turnin 92474 >>Rendez la quête Chute With Style
step << Horde Druid
    .money <0.02
    .xp <4,1
    .goto 2521,41.653,23.337
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xyton Silverwind::251373|r.
    .train 8921 >>Apprenez [Éclat lunaire]
    .train 774 >>Apprenez |T136081:0|t[Récupération]
    .skipgossipid 136805
    .target Xyton Silverwind::251373
step << Horde
    .goto 2521,42.76,23.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aetheen of the Gales::251366|r.
    .turnin 92471 >>Rendre la quête Aetheen of the Gales
    .accept 92470 >>Acceptez la quête Souillure Matriarch
    .target Aetheen of the Gales::251366
step << Shaman
    .goto 2521,42.787,23.564
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Windshaper Boro::251374|r
    .turnin 92468 >>Rendez la quête L'appel de la terre
    .target Windshaper Boro::251374
step << Horde Shaman
    .money <0.01
    .xp <4,1
    .goto 2521,42.788,23.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Windshaper Boro::251374|r.
    .train 8042 >>Apprenez [Horion de terre]
    .target Windshaper Boro::251374
    .skipgossipid 136811
step << Horde
    .goto 2521,42.607,24.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ventaari Brightwish::251487|r
    .turnin 92598 >>Rendez la quête The Gift of Vue céleste
    .target Ventaari Brightwish::251487
step << Alliance Hunter
    .money <0.02
    .xp <4,1
    .goto 2521,42.467,23.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tai'ree Double vue::251376|r
    .train 13163 >>S'entraîner |T132159:0|t[Aspect du singe]
    .train 1978 >>Apprenez [Morsure de serpent]
    .skipgossipid 136808
    .target Tai'ree Farsight::251376
step << Alliance
    #label Turn in Return to Rorian
    .goto 2521,42.07,23.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rorian the Dayseeker::251361|r.
    .turnin 92469,1 >>Rendez la quête Renvoi to Rorian
    .accept 92471 >>Acceptez la quête Aetheen of the Gales -- Unlocks at 4
    .target Rorian the Dayseeker::251361
step << Alliance Skyborne
    .isQuestComplete 92474 --Falling With Style
    .goto 2521,42.06,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rorian the Dayseeker::251361|r.
    .target Rorian the Dayseeker::251361
    .turnin 92474 >>Rendez la quête Chute With Style
step << Alliance Druid
    .money <0.02
    .xp <4,1
    .goto 2521,41.653,23.337
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xyton Silverwind::251373|r.
    .train 8921 >>Apprenez [Éclat lunaire]
    .train 774 >>Apprenez |T136081:0|t[Récupération]
    .skipgossipid 136805
    .target Xyton Silverwind::251373
step << Alliance Mage
    .money <0.01
    .xp <4,1
    .goto 2521,41.55,23.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dorii Brightwhisper::251379|r.
    .train 116 >>Apprenez [Eclair de givre]
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379
step << Alliance
    .goto 2521,42.76,23.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aetheen of the Gales::251366|r.
    .turnin 92471 >>Rendre la quête Aetheen of the Gales
    .accept 92470 >>Acceptez la quête Souillure Matriarch
    .target Aetheen of the Gales::251366
step
    #optional
    #completewith AggressiveVendor
    #label Aggressive Encroachment
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valreaa Valewind::257551|r.
    .accept 92473 >>Acceptez la quête Agressif Empiètement
    .target Valreaa Valewind::257551
step
    #completewith Aggressive Encroachment
    .train 2366,3 -- Herbalism Trained
    .goto 2521,42.76,24.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Uualia Suncrest::251537|r
    .collect 277113,1 >>Achetez une |T133637:0|t[Apprenti's Herb Pouch]
    -- .macro Buy Herbalism Supplies,133637 >>/run local t={[277113]=1};local m=C_MerchantFrame;for i=1,(m.GetNumItems or GetMerchantNumItems)()do local k=tonumber(((m.GetItemLink or GetMerchantItemLink)(i)or""):match("item:(%d+)"));if t[k]then BuyMerchantItem(i,t[k]);t[k]=nil end end
    .target Uualia Suncrest::251537
step
    #completewith Aggressive Encroachment
    .train 2575,3 -- Mining Trained
    .goto 2521,42.76,24.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Uualia Suncrest::251537|r
    .collect 2901,1 >>Achetez une |T134708:0|t[Pioche de mineur]
    .collect 277115,1 >>Achetez un |T133635:0|t[Apprenti's Minage Pack]
    -- .macro Buy Mining Supplies,134708 >>/run local t={[2901]=1,[277115]=1};local m=C_MerchantFrame;for i=1,(m.GetNumItems or GetMerchantNumItems)()do local k=tonumber(((m.GetItemLink or GetMerchantItemLink)(i)or""):match("item:(%d+)"));if t[k]then BuyMerchantItem(i,t[k]);t[k]=nil end end
    .target Uualia Suncrest::251537
step
    #completewith Aggressive Encroachment
    .train 8613,3 -- Skinning Trained
    .goto 2521,42.76,24.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Uualia Suncrest::251537|r
    .collect 7005,1 >>Achetez un |T135637:0|t[Couteau à dépecer]
    .collect 277114,1 >>Achetez un |T133634:0|t[Apprenti's Dépeçage Satchel]
    .macro Buy Skinning Supplies,135637 >>Achetez Fournitures de dépeçage
    .target Uualia Suncrest::251537
step
    #label AggressiveVendor
    #completewith Aggressive Encroachment
    .goto 2521,42.76,24.5
    .vendor 251537 >>Vendez tout ce dont nous n'avez pas besoin
    *Ne vendez pas |T133970:0|t[Stringy Viande] ni |T132889:0|t[Etoffe de lin]. << Alliance
    .collect 2512,1200 << Hunter --Rough Arrow (1200)
    .collect 159,20 >>Achetez |T132794:0|t[Eau de source] << Druid/Mage/Priest/Warlock/Paladin
step
    #requires Aggressive Encroachment
    .goto 2521,42.41,25.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valreaa Valewind::257551|r.
    .accept 92473 >>Acceptez la quête Agressif Empiètement
    .target Valreaa Valewind::257551
step
    #optional
    #completewith Scrawny Usera
    +Glissez manuellement le sac de réactif dans l'emplacement du sac de réactif. Un clic droit le placera dans un emplacement vide du sac principal.
step
    #optional
    #completewith Scrawny Usera
    .train 2366,3 -- Herbalism Trained
    .aura 2383 >>Lancez |T133939:0|t[Découverte d'herbes] pour détecter les herbes à proximité
    +|cRXP_WARN_Vous pouvez récolter des herbes en chemin pour commencer à progresser vers 20 Herboristerie pour une quête ultérieure. C'est optionnel, surtout au lancement, donc faites-le à vos risques|r
    .usespell 2383
step
    #optional
    #completewith Scrawny Usera
    .train 2656,3 -- Smelting Trained
    .aura 2580 >>Lancez |T136025:0|t[Découverte de gisements] pour localiser les gisements de minerai à proximité
    +|cRXP_WARN_Vous pouvez miner du minerai en chemin pour commencer à progresser vers 20 Minage pour une quête ultérieure. C'est optionnel, surtout au lancement, alors faites-le à votre propre risque|r
    .usespell 2580
step
    #optional
    #completewith Scrawny Usera
    .train 8613,3 -- Skinning Trained
    +|cRXP_WARN_Vous pouvez dépecer en chemin pour commencer à progresser vers 20 Dépeçage pour une quête ultérieure. C'est optionnel, surtout au lancement, alors faites-le à votre propre risque|r
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
    >>Tuez les |cRXP_ENEMY_Ours::250926|r. Ramassez |T132136:0|t[|cRXP_LOOT_Scrawny Ursera Griffe|r].
    .complete 92473,1 --6/6 Scrawny Ursera Claw
    .mob Scrawny Ursera::250926
step
    #optional
    #completewith next
    >>Tuez les |cRXP_ENEMY_Ursera Scavengers::250937|r.
    .complete 92470,1 --8/8 Ursera Scavenger slain
    .mob Ursera Scavenger::250937
step
    .goto 2521,37.52,25.6,30,0
    .goto 2521,37.36,24.63,30,0
    .goto 2521,35.88,23.31,10,0
    .goto 2521,35.65,26.06
    >>Tuez le |cRXP_ENEMY_Urs'anah::251115|r. Ramassez |T5840609:0|t[|cRXP_LOOT_Head of Urs'anah|r].
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
    >>Tuez les |cRXP_ENEMY_Ursera Scavengers::250937|r.
    .complete 92470,1 --8/8 Ursera Scavenger slain
    .macro Sit to Die Faster,134400 >>Asseyez-vous pour mourir plus vite
    .mob Ursera Scavenger::250937
step
    .isQuestComplete 92470 -- Foul Matriarch
    .subzoneskip 16673,1 -- Thendal Cave
    #loop
    .goto 2521,36.47,23.67,30,0
    .goto 2521,35.88,23.79,30,0
    .goto 2521,35.71,25.7,30,0
    .subzone 16635 >>Mourez et ressuscitez au cimetière.
    *|cRXP_WARN_Utilisez la macro pour s’asseoir afin de mourir plus vite|r.
    .macro Sit to Die Faster,134400 >>Asseyez-vous pour mourir plus vite
    .target Spirit Healer::6491
step
    #optional
    #completewith next
    #label Turn in Foul Matriarch
    .subzoneskip 16635,1 -- Thendal Village
    .isQuestComplete 92470 -- Foul Matriarch
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aetheen of the Gales::251366|r.
    .turnin 92470,1 >>Rendre la quête Souillure Matriarch << Warrior/Paladin
    .turnin 92470,2 >>Rendre la quête Souillure Matriarch << Druid/Shaman/Priest/Warlock
    .turnin 92470,3 >>Rendre la quête Souillure Matriarch << Mage
    .turnin 92470,4 >>Rendre la quête Souillure Matriarch << Rogue
    .turnin 92470,1 >>Rendre la quête Souillure Matriarch << Hunter
step
    #completewith Turn in Foul Matriarch
    #ignorecorpse
    .subzoneskip 16635,1 -- Thendal Village
    .isQuestComplete 92470 -- Foul Matriarch
    .goto 2521,41.06,22.31
    .showwhiledead
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Spirit Soins::6491|r.
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step
    #requires Turn in Foul Matriarch
    .goto 2521,42.76,23.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aetheen of the Gales::251366|r.
    .turnin 92470,1 >>Rendre la quête Souillure Matriarch << Warrior/Paladin
    .turnin 92470,2 >>Rendre la quête Souillure Matriarch << Druid/Shaman/Priest/Warlock
    .turnin 92470,3 >>Rendre la quête Souillure Matriarch << Mage
    .turnin 92470,4 >>Rendre la quête Souillure Matriarch << Rogue
    .turnin 92470,1 >>Rendre la quête Souillure Matriarch << Hunter
    .accept 92472 >>Acceptez la quête The Suivant Step
    .accept 96638 >>Acceptez la quête The Adventurer
    .target Aetheen of the Gales::251366
step
    #optional
    #completewith next
    #label Aggressive Encroachment2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valreaa Valewind::257551|r.
    .turnin 92473,1 >>Rendez la quête Agressif Empiètement
    .target Valreaa Valewind::257551
step
    #completewith Aggressive Encroachment2
    .goto 2521,42.76,24.52
    .vendor 251537 >>Vendez tout ce dont nous n'avez pas besoin
    *Ne vendez pas |T133970:0|t[Stringy Viande], |T132832:0|t[Petit Eggs] ou |T132889:0|t[Etoffe de lin]. << Alliance
    *Ne vendez pas |T132832:0|t[Petit Eggs] ou |T132889:0|t[Etoffe de lin]. << Horde
    *|cRXP_WARN_Nous en avons besoin pour Cuisine plus tard|r.
step
    #requires Aggressive Encroachment2
    .goto 2521,42.41,25.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valreaa Valewind::257551|r.
    .turnin 92473,1 >>Rendez la quête Agressif Empiètement
    .target Valreaa Valewind::257551
step
    #optional
    #completewith next
    #label Al'Aketh Thugs
    *|cRXP_WARN_Equiper le|r |T135335:0|t[Estramaçon usé] << Warrior/Paladin/Hunter
    *|cRXP_WARN_Equiper le|r |T135145:0|t[Novice's Quarterstaff] << Druid/Shaman/Priest/Warlock
    *|cRXP_WARN_Équipez-vous du|r |T135650:0|t[Éclaireur Ranger's Dagger] << Mage
    *|cRXP_WARN_Equiper le|r |T133057:0|t[Peacekeeper's Pickhammer] << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hanaa Nightwind::252095|r.
    .accept 92544 >>Acceptez la quête Al'Aketh Thugs
    .target Hanaa Nightwind::252095
    .use 258882 << Warrior/Paladin -- Worn Greatsword
    .use 257282 << Druid/Shaman/Priest/Warlock -- Novice's Quarterstaff
    .use 257283 << Mage -- Scout Ranger's Dagger
    .use 257276 << Rogue -- Peacekeeper's Pickhammer
    .use 258882 << Hunter -- Worn Greatsword
step
    #completewith Al'Aketh Thugs
    .goto 2521,38.31,30.17,100 >>Tuez les mobs en chemin si vous pouvez le faire sans perdre de temps.
step
    #requires Al'Aketh Thugs
    .goto 2521,38.31,30.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hanaa Nightwind::252095|r.
    .accept 92544 >>Acceptez la quête Al'Aketh Thugs
    .target Hanaa Nightwind::252095
step
    #optional
    #completewith next
    >>Tuez les |cRXP_ENEMY_Al'Aketh Brutes::251145|r et les |cRXP_ENEMY_Al'Aketh Neophytes::251448|r.
    .complete 92544,1 --|6/6 Al'Aketh Brute slain
    .mob +Al'Aketh Brute::251145
    .complete 92544,2 --|4/4 Al'Aketh Neophyte slain
    .mob +Al'Aketh Neophyte::251448
step
    #optional
    #completewith next
    #label Malduko Cloudcrush
    .goto 2521,37.04,32.93,20,0
    >>Tuez le |cRXP_ENEMY_Malduko Cloudcrush::256935|r.
    .complete 92544,3 --|1/1 Malduko Cloudcrush slain
    .mob Malduko Cloudcrush::256935
step
    #completewith Malduko Cloudcrush
    .goto 2521,36.032,33.545,50 >>Rendez-vous à l'étage supérieur du temple
step
    #requires Malduko Cloudcrush
    .goto 2521,36.032,33.545
    >>Tuez le |cRXP_ENEMY_Malduko Cloudcrush::256935|r |cRXP_WARN_au sommet du temple|r.
    .complete 92544,3 --|1/1 Malduko Cloudcrush slain
    .mob Malduko Cloudcrush::256935
step << Horde
    .isOnQuest 92544 -- Al'Aketh Thugs
    .cooldown spell,1259686,>0,1 -- Skysight
    -- .aura 1270893,1800 --Charged
    .goto 2521,35.910,33.605
    .cast 1259686 >>Utilisez |T1029587:0|t[Vue céleste] |cRXP_WARN_près d'une Convergence élémentaire|r pour obtenir |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[Charge].
    *Pendant que |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[Charge] est actif, |T1029587:0|t[Vue céleste] augmente la vitesse de déplacement et la vitesse de déplacement monté de |cRXP_WARN_30% pour 30 secondes|r.
step << Alliance
    .isOnQuest 92544 -- Al'Aketh Thugs
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .aura 1259691,600 --Attuned
    .goto 2521,35.57,33.84
    .cast 1259705 >>Utilisez |T236219:0|t[Lecture des lignes telluriques] |cRXP_WARN_près d'une ligne d'énergie|r pour obtenir |T135737:0|t[Harmonisation].
    *Pendant que |T135737:0|t[Harmonisation] est actif, |T236219:0|t[Lecture des lignes telluriques] augmente la régénération passive de mana et de santé de |cRXP_WARN_100% pendant 15 secondes|r.
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
    >>Tuez les |cRXP_ENEMY_Al'Aketh Brutes::251145|r et les |cRXP_ENEMY_Al'Aketh Neophytes::251448|r.
    *|cRXP_WARN_Actualiser|r |T236219:0|t[Lecture des lignes telluriques] |cRXP_WARN_près de la Ligne tellurique|r << Alliance
    .usespell 1259705
    .complete 92544,1 --|6/6 Al'Aketh Brute slain
    .mob +Al'Aketh Brute::251145
    .complete 92544,2 --|4/4 Al'Aketh Neophyte slain
    .mob +Al'Aketh Neophyte::251448
step
    #label Grind6
    .xp 5+1740 >>Montez au niveau 5 avec 1740+/2800xp pour atteindre le niveau 6 après les rendus de quêtes dans le prochain village, afin de pouvoir apprendre de nouveaux sorts.
    -- Maybe only grind here if little XP is needed; otherwise, train abilities after the cave.
step
    .goto 2521,38.32,30.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hanaa Nightwind::252095|r.
    .turnin 92544 >>Rendre la quête Al'Aketh Thugs
    .target Hanaa Nightwind::252095

-- ============================================================================
-- First Visit Shen'dar Village
-- ============================================================================

step
    #completewith SkybornePart1End
    #hidewindow
    +Position d'apparition possible de Tornade
    #icon |TInterface/Icons/Spell_Nature_Cyclone:0|t
    .pin 2521,50.27,76.45,Tornado
    .pin 2521,57.91,75.86,Tornado
    .pin 2521,42.13,39.24,Tornado
    .pin 2521,64,75.79,Tornado
    .pin 2521,52.67,41.92,Tornado
    .pin 2521,68.63,65.95,Tornado
    .pin 2521,48.14,56.56,Tornado
    .pin 2521,54.92,44.76,Tornado
    .pin 2521,39.6,45.11,Tornado
    .pin 2521,58.55,52.75,Tornado
    .pin 2521,47.74,69.57,Tornado
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
    +|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_Windstone crystals|r en chemin pour restaurer la santé et le mana
    *|cRXP_WARN_Si vous voyez une Tornade, touchez-la pour 40% de vitesse de déplacement. Les dégâts éliminent l'effet|r.
step
    .isOnQuest 92472 -- The Next Step
    #completewith VendorStep
    #label The Next Step
    #hidewindow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Constable Aonda::251523|r.
    .turnin 92472 >>Rendez la quête The Suivant Step
    .target Constable Aonda::251523
step
    #completewith The Next Step
    >>Tuez |cRXP_ENEMY_Galestriders::251661|r en chemin. Ramassez |T133972:0|t[|cRXP_LOOT_Strider Viande|r] et |T132832:0|t[|cRXP_LOOT_Small Eggs|r]
    *|cRXP_WARN_Si l'amélioration de vitesse Tornade est active ou une Tornade est à proximité, évitez de les tuer.|r.
    .collect 5469,8 -- Strider Meat
    .collect 6889,3 -- Small Egg
    -- .complete 92553,2 --8/8 Strider Meat
    -- .complete 92553,1 --3/3 Small Egg
    .mob Galestrider::251661
step << !Rogue !Warrior
    #completewith The Next Step
    #label VendorStep
    .goto 2521,44.72,45.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Veena Vericloud::254358|r.
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Delaniel|r << Shaman/Druid/Priest/Warlock/Paladin/Mage
    >>Gardez 2 pièces d'argent pour vos sorts de classe ! << Shaman/Druid
    >>Gardez 2 pièces d'argent pour vos sorts de classe ! << Mage
    .vendor 254358 >>|cRXP_WARN_Vendor trash|r.
    *Ne vendez pas |T133970:0|t[Stringy Viande], |T132832:0|t[Petit Eggs], |T133972:0|t[Strider Viande], ni |T132889:0|t[Etoffe de lin]. << Alliance
    *Ne vendez pas |T132832:0|t[Petit Eggs], |T133972:0|t[Strider Viande], ni |T132889:0|t[Etoffe de lin]. << Horde
    *|cRXP_WARN_Nous en avons besoin pour Cuisine plus tard|r.
step << Rogue/Warrior
    #completewith The Next Step
    #label VendorStep
    .goto 2521,44.67,45.19,10,0
    .goto 2521,44.78,45.05
    .vendor 254360 >>|cRXP_WARN_Vendor trash|r.
    *Ne vendez pas |T133970:0|t[Stringy Viande], |T132832:0|t[Petit Eggs], |T133972:0|t[Strider Viande], ni |T132889:0|t[Etoffe de lin]. << Alliance
    *Ne vendez pas |T132832:0|t[Petit Eggs], |T133972:0|t[Strider Viande], ni |T132889:0|t[Etoffe de lin]. << Horde
    *|cRXP_WARN_Nous en avons besoin pour Cuisine plus tard|r.
    .target Belandiel Farflight::254360
step
    #requires The Next Step
    .isOnQuest 92472 -- The Next Step
    .goto 2521,45.67,45.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Constable Aonda::251523|r.
    .turnin 92472 >>Rendez la quête The Suivant Step
    .target Constable Aonda::251523
step
    .goto 2521,45.67,45.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Constable Aonda::251523|r.
    .accept 93461 >>Acceptez la quête Welcome to Shen'dar Village << Alliance
    .accept 92514 >>Acceptez la quête Welcome to Shen'dar Village << Horde
    .target Constable Aonda::251523
step << Mage
    .money <0.02
    -- .money <0.03
    .xp <6,1
    .goto 2521,45.1,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dorii Brightwhisper::251379|r.
    .train 143 >>Apprenez |T135812:0|t[Boule de feu (Rang 2)]
    .train 2136 >>Apprenez [Trait de feu]
    -- .train 1296017 >>Train |T8188276:0|t[Comprehend Scroll]
    --  Comprehend Scroll early can be good,if you get scrolls and don't go polymorphed
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379

-- ============================================================================
-- Alliance Shen'dar Village Introduction Branch
-- ============================================================================

step << Alliance
    .goto 2521,45.04,46.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rathiril Sunlance::251903|r.
    .complete 93461,1 --1/1 Speak with Rathiril Sunlance
    .accept 92596 >>Acceptez la quête The Élevée Order
    .target Rathiril Sunlance::251903
step << Alliance
    .goto 2521,45.04,46.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rathiril Sunlance::251903|r.
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rathiril Sunlance::251903|r.
    .turnin 92596 >>Rendez la quête The Élevée Order
    .accept 94413 >>Acceptez la quête A Magical Affront
    .target Rathiril Sunlance::251903
step << Alliance Rogue
    .money <0.02
    .train 1777,1 -- Gouge (Rank 2) Not Trained
    .xp <6,1
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Miriaan Mistblade::254087|r
    .train 1757 >>Apprenez |T136189:0|t[Attaque pernicieuse (Rang 2)]
    .train 1776 >>Apprenez [Suriner]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
step << Alliance Rogue
    .money <0.01
    .xp <6,1
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Miriaan Mistblade::254087|r
    .train 1757 >> Apprenez |T136189:0|t[Attaque pernicieuse (Rang 2)]
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coriella Calmbreeze::254089|r.
    .complete 93461,2 --1/1 Speak with the Innkeeper
    .target Coriella Calmbreeze::254089
step << Alliance
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.02,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coriella Calmbreeze::254089|r.
    .home >>Liez votre Pierre de foyer à Shen'dar Village
    .bindlocation 16624
    .target Coriella Calmbreeze::254089

-- ============================================================================
-- Horde Shen'dar Village Introduction Branch
-- ============================================================================

step << Horde
    .goto 2521,43.52,44.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Illaya Amberwind::251902|r.
    .complete 92514,1 --1/1 Speak with Illaya Amberwind
    .accept 92595 >>Acceptez la quête The Windshapers
    .target Illaya Amberwind::251902
step << Horde
    .goto 2521,43.52,44.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Illaya Amberwind::251902|r.
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Illaya Amberwind::251902|r.
    .turnin 92595 >>Rendre la quête The Windshapers
    .accept 94411 >>Acceptez la quête Meddlesome Mages
    .target Illaya Amberwind::251902
step << Horde Shaman
    .money <0.01
    .xp <6,1
    .goto 2521,43.454,44.872
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aarnor Galestrike::254082|r
    .trainer >>Apprenez vos sorts de classe
    .target Aarnor Galestrike::254082
    .skipgossipid 136811
step << Horde
    .goto 2521,43.02,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coriella Calmbreeze::254089|r.
    .complete 92514,2 --1/1 Speak with the Innkeeper
    .target Coriella Calmbreeze::254089
step << Horde
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.02,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coriella Calmbreeze::254089|r.
    .home >>Liez votre Pierre de foyer à Shen'dar Village
    .bindlocation 16624
    .target Coriella Calmbreeze::254089
step << Horde Rogue
    .money <0.02
    .train 1777,1 -- Gouge (Rank 2) Not Trained
    .xp <6,1
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Miriaan Mistblade::254087|r
    .train 1757 >>S'entraîner |T136189:0|t[Attaque pernicieuse (Rang 2)]
    .train 1776 >>Apprenez [Suriner]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
step << Horde Rogue
    .money <0.01
    .xp <6,1
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Miriaan Mistblade::254087|r
    .train 1757 >> S'entraîner |T136189:0|t[Attaque pernicieuse (Rang 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087

-- ============================================================================
-- Shared Route Resumes
-- ============================================================================

step << Warrior
    .money <0.01
    .xp <6,1
    .goto 2521,44.95,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corsan Earthrazer::254088|r
    .train 3127 >>Apprenez [Parade]
    .skipgossipid 136813
    .target Corsan Earthrazer::254088
step << Druid
    .money <0.02
    .xp <6,1
    .goto 2521,45.07,45.27,25,0
    .goto 2521,45.154,44.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Naeluna Prompte guérison::254081|r |cRXP_WARN_à l'intérieur de la maison|r.
    .train 467 >>Apprenez [Épines]
    .train 5177 >>S'entraîner |T136006:0|t[Courroux (Rang 2)]
    .skipgossipid 136805
    .target Naeluna Swiftmend::254081
step << Hunter
    .money <0.02
    .xp <6,1
    .goto 2521,45.07,45.27,25,0
    .goto 2521,45.263,44.236
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elayaa Easewind::254084|r |cRXP_WARN_à l'intérieur de la maison|r.
    .train 3044 >>Apprenez [Tir des Arcanes]
    .train 1130 >>Apprenez [Marque du chasseur]
    .skipgossipid 136808
    .target Elayaa Easewind::254084
step
    -- #label MageEnchanting
    .goto 2521,45.67,45.50
    -- *|cRXP_WARN_Equip the|r |T135645:0|t[Novice's Practice Wand] << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Constable Aonda::251523|r.
    .turnin 93461 >>Rendre la quête Welcome to Shen'dar Village << Alliance
    .turnin 92514 >>Rendre la quête Welcome to Shen'dar Village << Horde
    .accept 92517 >>Acceptez la quête The Criminal Element
    .target Constable Aonda::251523

--Class Trainer Backup
step << Warrior
    .money <0.01
    .xp <6,1
    .goto 2521,44.95,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corsan Earthrazer::254088|r
    .train 3127 >>Apprenez [Parade]
    .skipgossipid 136813
    .target Corsan Earthrazer::254088

--Class Trainer Backup
step << Hunter
    .money <0.02
    .xp <6,1
    .goto 2521,45.263,44.236
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elayaa Easewind::254084|r.
    .train 3044 >>Apprenez [Tir des Arcanes]
    .train 1130 >>Apprenez [Marque du chasseur]
    .skipgossipid 136808
    .target Elayaa Easewind::254084

--Class Trainer Backup
step << Druid
    .money <0.02
    .xp <6,1
    .goto 2521,45.154,44.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Naeluna Prompte guérison::254081|r
    .train 467 >>Apprenez [Épines]
    .train 5177 >>S'entraîner |T136006:0|t[Courroux (Rang 2)]
    .skipgossipid 136805
    .target Naeluna Swiftmend::254081

--Class Trainer Backup
step << Mage
    .money <0.02
    -- .money <0.03
    .xp <6,1
    .goto 2521,45.1,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dorii Brightwhisper::251379|r.
    .train 143 >>S'entraîner |T135812:0|t[Boule de feu (Rang 2)]
    .train 2136 >>Apprenez [Trait de feu]
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Veena Vericloud::254358|r.
    .collect 1179,5 >>|cRXP_BUY_Achetez 5|r |T132815:0|t[Lait glacé], |cRXP_BUY_ou 10 si vous pouvez vous les permettre|r
    *Ne vendez pas |T133970:0|t[Stringy Viande], |T132832:0|t[Petit Eggs], |T133972:0|t[Strider Viande], ni |T132889:0|t[Etoffe de lin]. << Alliance
    *Ne vendez pas |T132832:0|t[Petit Eggs], |T133972:0|t[Strider Viande], ni |T132889:0|t[Etoffe de lin]. << Horde
    *|cRXP_WARN_Nous en avons besoin pour Cuisine plus tard|r.
step
    .goto 2521,44.47,44.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Teeri Wellwind::251906|r.
    .accept 93319 >>Acceptez la quête Pierres du vent chapardées
    .accept 92516 >>Acceptez la quête Harcèlement de hippogriffes
    .target Teeri Wellwind::251906
step
    .goto 2521,44.68,44.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Indari Sunseam::251993|r.
    .accept 92515 >>Acceptez la quête The Problem With Prideclaws
    .target Indari Sunseam::251993
step
    .goto 2521,44.88,44.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Taleen Shimmerthread::251991|r.
    .accept 93951 >>Acceptez la quête A Little La Belle
    .target Taleen Shimmerthread::251991
step << Shaman
    .money <0.0504
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .subzoneskip 16624,1 -- Shen'dar Village
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tephri Thriceforged::257421|r
    >>|cRXP_BUY_Achetez et équipez un|r [Bâton de marche]
    .collect 2495,1 --Collect Walking Stick (1)
    .target Tephri Thriceforged::257421
step << Hunter
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tephri Thriceforged::257421|r
    >>|cRXP_BUY_Achetez et équipez un|r [Arc courbe en bois de corne]
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tephri Thriceforged::257421|r et achetez puis équipez une |T133053:0|t[Massette en bois].
    .collect 2493,1 -- Wooden Mallet
    .target Tephri Thriceforged::257421
step << Rogue
    .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.81
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.8,44.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tephri Thriceforged::257421|r et achetez puis équipez un |T135321:0|t[Gladius].
    .collect 2488,1 -- Gladius
    .target Tephri Thriceforged::257421
step
    .goto 2521,43.850,43.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    .accept 92553 >>Acceptez la quête Réapprovisionnement des garde-mangers
    .addquestitem 6889,92553
    .addquestitem 5469,92553
    .target Zerril Softbreeze::251905
step -- for people who send the items over
    .isQuestComplete 92553 -- Restocking the Larders
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    .turnin 92553 >>Rendez la quête Ravitaillement des Réserves
    .target Zerril Softbreeze::251905
step
    .money <0.01
    .isQuestTurnedIn 92553 -- Restocking the Larders
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .itemcount 6889,1 -- Small Egg
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    .train 2550 >>S'entraîner |T133971:0|t[Apprenti cuisinier]
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
    +Utilisez la Macro |T132834:0|t[Oeufs aux herbes] ci-dessous pour fabriquer autant que possible.
    *|cRXP_WARN_Passez cette étape si vous avez déjà envoyé de la nourriture de buff|r.
    *|cRXP_WARN_La plupart des nourritures de bonus accordent 5% d'expérience supplémentaire provenant des morts pendant 15 minutes. Essayez de maintenir ce bonus actif pendant votre montée en niveau|r.
    *|cRXP_BUY_Achetez 5-20|r |T134059:0|t[Epices douces] |cRXP_BUY_de|r |cRXP_FRIENDLY_Zerril Softbreeze|r |cRXP_WARN_si vous ne l'avez pas déjà fait|r.
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_Vous devrez peut-être appuyer deux fois sur la macro|r.
    .macro Herb Baked Egg,132834 >>Oeufs aux herbes
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
    +Utilisez la Macro |T132834:0|t[Oeufs aux herbes] ci-dessous pour fabriquer 1 pour le bonus d'expérience.
    *|cRXP_WARN_Passez cette étape si vous avez déjà envoyé de la nourriture de buff|r.
    *|cRXP_WARN_La plupart des nourritures de bonus accordent 5% d'expérience supplémentaire provenant des morts pendant 15 minutes. Essayez de maintenir ce bonus actif pendant votre montée en niveau|r.
    *|cRXP_BUY_Achetez 5-20|r |T134059:0|t[Epices douces] |cRXP_BUY_de|r |cRXP_FRIENDLY_Zerril Softbreeze|r |cRXP_WARN_si vous ne l'avez pas déjà fait|r.
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_Vous devrez peut-être appuyer deux fois sur la macro|r.
    .macro Herb Baked Egg,132834 >>Oeufs aux herbes
step
    .isOnQuest 92553 -- Restocking the Larders
    .isQuestNotComplete 92553 -- Restocking the Larders
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .itemcount 6889,>3 -- Small Egg
    .train 2550,3 -- Cooking Trained
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.86,43.85
    +Utilisez la Macro |T132834:0|t[Oeufs aux herbes] ci-dessous pour utiliser chaque Petit œuf au-delà des 3 réservés pour Ravitaillement des Réserves.
    *|cRXP_WARN_Passez cette étape si vous avez déjà envoyé de la nourriture de buff|r.
    *|cRXP_WARN_Gardez au moins 3 Petit Eggs pour une quête ultérieure|r
    *|cRXP_WARN_La plupart des nourritures de bonus accordent 5% d'expérience supplémentaire provenant des morts pendant 15 minutes. Essayez de maintenir ce bonus actif pendant votre montée en niveau|r.
    *|cRXP_BUY_Achetez 5-20|r |T134059:0|t[Epices douces] |cRXP_BUY_de|r |cRXP_FRIENDLY_Zerril Softbreeze|r |cRXP_WARN_si vous ne l'avez pas déjà fait|r.
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_Vous devrez peut-être appuyer deux fois sur la macro|r.
    .macro Herb Baked Egg,132834 >>Oeufs aux herbes

--Class Trainer Backup
step << Rogue
    .money <0.02
    .train 1777,1 -- Gouge (Rank 2) Not Trained
    .xp <6,1
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Miriaan Mistblade::254087|r
    .train 1757 >>Entraînez-vous |T136189:0|t[Attaque pernicieuse (Rang 2)]
    .train 1776 >>Apprenez [Suriner]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087

--Class Trainer Backup
step << Rogue
    .money <0.01
    .xp <6,1
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Miriaan Mistblade::254087|r
    .train 1757 >>Entraînez-vous |T136189:0|t[Attaque pernicieuse (Rang 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
step
    #optional
    #completewith BadwindBennicA
    >>Tuez |cRXP_ENEMY_Prideclaws::251245|r |cRXP_WARN_en chemin|r. Ramassez le |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    *|cRXP_WARN_Priorisez-les|r
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #optional
    #completewith BadwindBennicA
    >>Tuez les |cRXP_ENEMY_Galestriders::251661|r |cRXP_WARN_en chemin|r. Ramassez le |T133972:0|t[|cRXP_LOOT_Strider Viande|r] et les |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    *|cRXP_WARN_Priorisez-les|r
    *|cRXP_WARN_Passez cette étape si vous comptez vous envoyer les 8 Strider Viande et les 3 Petit Eggs|r.
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step << Horde
    #loop
    .goto 2521,46.13,39.79,25,0
    .goto 2521,46.9,38.84,25,0
    .goto 2521,46.37,37.85,25,0
    .goto 2521,45.76,39.31,25,0
    >>Tuez les |cRXP_ENEMY_High Order Apprentices::257521|r.
    .complete 94411,1 --|6/6 High Order Apprentice defeated
    .mob High Order Apprentice::257521
step << Horde
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .cooldown spell,1259686,>0,1 -- Skysight
    -- .aura 1270893,1800 --Charged
    .goto 2521,46.597,38.121
    .cast 1259686 >>Utilisez |T1029587:0|t[Vue céleste] |cRXP_WARN_près d'une Convergence élémentaire|r pour obtenir |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[Charge].
    *Pendant que |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[Charge] est actif, |T1029587:0|t[Vue céleste] augmente la vitesse de déplacement et la vitesse de déplacement monté de |cRXP_WARN_30% pour 30 secondes|r.
step
    #optional
    #completewith BadwindBennicB
    >>Tuez les |cRXP_ENEMY_Highlands Bandits::251918|r. Ramassez |T5172975:0|t[|cRXP_LOOT_Pilfered Windstone|r].
    .complete 92517,1 --|10/10 Highlands Bandit slain
    .complete 93319,1 --|10/10 Pilfered Windstone
    .mob +Highlands Bandit::251918
step
    #optional
    #completewith next
    #label BadwindBennicA
    >>Tuez le |cRXP_ENEMY_"Badwind" Bennic::255534|r.
    .complete 92517,2 --|1/1 "Badwind" Bennic slain
    .mob "Badwind" Bennic::255534
step
    #completewith BadwindBennicA
    .goto 2521,48.813,36.434,10,0
    .goto 2521,49.355,35.793,15,0
    .goto 2521,49.537,34.325,70 >>Entrez dans la grotte
step << Alliance
    #requires BadwindBennicA
    #completewith next
    .isOnQuest 92517 -- The Criminal Element
    .subzoneskip 16674,1 -- Bandit Hideout
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .aura 1259691,600 --Attuned
    .goto 2521,50.59,33.51,20,0
    .cast 1259705 >>Utilisez |T236219:0|t[Lecture des lignes telluriques] |cRXP_WARN_près d'une ligne d'énergie|r pour obtenir |T135737:0|t[Harmonisation].
    *Pendant que |T135737:0|t[Harmonisation] est actif, |T236219:0|t[Lecture des lignes telluriques] augmente la régénération passive de mana et de santé de |cRXP_WARN_100% pendant 15 secondes|r.
    .usespell 1259705
step
    #requires BadwindBennicA
    #label BadwindBennicB
    .goto 2521,49.8,36.03,20,0
    .goto 2521,49.97,35.19,20,0
    .goto 2521,49.59,34.3,20,0
    .goto 2521,50.4,33.49,30,0
    .goto 2521,50.680,34.214
    >>Tuez le |cRXP_ENEMY_"Badwind" Bennic::255534|r.
    .usespell 1259705
    .complete 92517,2 --|1/1 "Badwind" Bennic slain
    .mob "Badwind" Bennic::255534
step
    #completewith next 
    >>Tuez les |cRXP_ENEMY_Highlands Bandits::251918|r. Ramassez |T5172975:0|t[|cRXP_LOOT_Pilfered Windstone|r].
    .complete 92517,1 --|10/10 Highlands Bandit slain
    .complete 93319,1 --|10/10 Pilfered Windstone
    .mob +Highlands Bandit::251918
step
    .isOnQuest 92517,93319
    .isQuestNotComplete 92517 --The Criminal Element
    .isQuestNotComplete 93319 --Pilfered Windstones
    .goto 2521/2991,1474.200,3678.200,20,0
    .goto 2521/2991,1453.400,3647.800,20,0
    .goto 2521/2991,1467.500,3619.800,20,0
    .goto 2521/2991,1496.400,3622.700,20,0
    .goto 2521/2991,1577.400,3611.000
    .subzone 16623 >>Quittez la grotte
step
    .isOnQuest 93319
    #hidewindow
    .subzoneskip 16674,1
    .countdown 1 >>1
step
    .isQuestComplete 92517 --The Criminal Element
    .isQuestComplete 93319 --Pilfered Windstones
    .subzoneskip 16674,1
    .subzone 16623 >>Mourez et ressuscitez au cimetière.
    *|cRXP_WARN_Si vous êtes sur le point de sortir de la grotte et que des aliments bonus sont appliqués, sortez en courant et passez le deathskip|r.
    *|cRXP_WARN_Utilisez la macro pour s’asseoir afin de mourir plus vite|r.
    .macro Sit to Die Faster,134400 >>Asseyez-vous pour mourir plus vite
    .target Spirit Healer::6491
step
    .isQuestComplete 92517 --The Criminal Element
    .isQuestComplete 93319 --Pilfered Windstones
    .subzoneskip 16623,1 
    .showwhiledead
    .goto 2521/2991,1634.800,3418.600
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Spirit Soins::6491|r.
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step
    #optional
    #completewith Pilfered Windstone Finish
    >>Tuez les |cRXP_ENEMY_Galestriders::251661|r. Ramassez-les pour |T133972:0|t[|cRXP_LOOT_Strider Viande|r] et |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    *|cRXP_WARN_Passez cette étape si vous comptez vous envoyer les 8 Strider Viande et les 3 Petit Eggs|r.
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    #optional
    #completewith Pilfered Windstone Finish
    >>Tuez les |cRXP_ENEMY_Prideclaws::251245|r. Ramassez-les pour le |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #label Pilfered Windstone Finish
    #loop
    .goto 2521/2991,1577.400,3611.000,40,0
    .goto 2521/2991,1521.500,3516.300,70,0
    .goto 2521/2991,1471.300,3518.700,60,0
    .goto 2521/2991,1510.100,3608.000,20,0
    .goto 2521/2991,1451.300,3628.200,25,0
    .goto 2521/2991,1460.200,3663.700,25,0
    .goto 2521/2991,1466.700,3695.500,25,0
    .goto 2521/2991,1411.300,3716.800,25,0
    .goto 2521/2991,1413.000,3683.500,25,0
    >>Tuez les |cRXP_ENEMY_Highlands Bandits::251918|r. Ramassez |T5172975:0|t[|cRXP_LOOT_Pilfered Windstone|r].
    .complete 92517,1 --|10/10 Highlands Bandit slain
    .complete 93319,1 --|10/10 Pilfered Windstone
    .mob +Highlands Bandit::251918
step
    #optional
    #completewith To Shendalar
    >>Tuez les |cRXP_ENEMY_Galestriders::251661|r |cRXP_WARN_en chemin|r.
    *Ramassez le |T133972:0|t[|cRXP_LOOT_Strider Viande|r] et les |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    -- *|cRXP_WARN_While the Tornado speed buff is active, avoid killing them|r.
    *|cRXP_WARN_Passez cette étape si vous comptez vous envoyer les 8 Strider Viande et les 3 Petit Eggs|r.
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    #optional
    #completewith To Shendalar
    >>Tuez les |cRXP_ENEMY_Prideclaws::251245|r |cRXP_WARN_en chemin|r.
    *Ramassez le |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    -- *|cRXP_WARN_While the Tornado speed buff is active, avoid killing them|r.
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #label To Shendalar
    .isQuestComplete 94411 << Horde -- Meddlesome Mages
    .isOnQuest 94413 << Alliance -- A Magical Affront
    .isQuestNotComplete 94413 << Alliance -- A Magical Affront
    .goto 2521,43.86,43.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Zerril Softbreeze::251905|r et achetez 5 |T134059:0|t[Epices douces].
    .vendor 251905 >>Vendez tout ce dont nous n'avez pas besoin
    .collect 2678,5 -- Mild Spices
    *Ne vendez pas |T133970:0|t[Stringy Viande], |T132832:0|t[Petit Eggs], |T133972:0|t[Strider Viande] ou |T132889:0|t[Etoffe de lin]. << Alliance
    *Ne vendez pas |T132832:0|t[Petit Eggs], |T133972:0|t[Strider Viande] ou |T132889:0|t[Etoffe de lin]. << Horde
    *|cRXP_WARN_Nous en avons besoin pour Cuisine plus tard|r.
    .target Zerril Softbreeze::251905
    .skipgossipid 137550
step
    .goto 2521,43.850,43.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    .train 2550 >>Apprenez |T133971:0|t[Apprenti cuisinier]
    .skipgossipid 137551
    .target Zerril Softbreeze::251905
step -- for people who send the items over
    .isQuestComplete 92553 -- Restocking the Larders
    .isOnQuest 94413 << Alliance -- A Magical Affront
    .isQuestNotComplete 94413 << Alliance -- A Magical Affront
    .isQuestComplete 94411 << Horde -- Meddlesome Mages
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    .turnin 92553 >>Rendez la quête Ravitaillement des Réserves
    .target Zerril Softbreeze::251905
step
    .isQuestTurnedIn 92553 -- Restocking the Larders
    .isOnQuest 94413 << Alliance -- A Magical Affront
    .isQuestNotComplete 94413 << Alliance -- A Magical Affront
    .isQuestComplete 94411 << Horde -- Meddlesome Mages
    .train 2550,3 -- Cooking Trained
    .itemcount 6889,1 -- Small Egg
    .goto 2521,43.86,43.85
    +Utilisez la Macro |T132834:0|t[Oeufs aux herbes] ci-dessous pour fabriquer autant que possible.
    *|cRXP_WARN_Passez cette étape si vous avez déjà envoyé de la nourriture de buff|r.
    *|cRXP_WARN_La plupart des nourritures de bonus accordent 5% d'expérience supplémentaire provenant des morts pendant 15 minutes. Essayez de maintenir ce bonus actif pendant votre montée en niveau|r.
    *|cRXP_BUY_Achetez 5-20|r |T134059:0|t[Epices douces] |cRXP_BUY_de|r |cRXP_FRIENDLY_Zerril Softbreeze|r |cRXP_WARN_si vous ne l'avez pas déjà fait|r.
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_Vous devrez peut-être appuyer deux fois sur la macro|r.
    .macro Herb Baked Egg,132834 >>Oeufs aux herbes
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
    +Utilisez la Macro |T132834:0|t[Oeufs aux herbes] ci-dessous pour fabriquer 1 pour le bonus d'expérience.
    *|cRXP_WARN_Passez cette étape si vous avez déjà envoyé de la nourriture de buff|r.
    *|cRXP_WARN_La plupart des nourritures de bonus accordent 5% d'expérience supplémentaire provenant des morts pendant 15 minutes. Essayez de maintenir ce bonus actif pendant votre montée en niveau|r.
    *|cRXP_BUY_Achetez 5-20|r |T134059:0|t[Epices douces] |cRXP_BUY_de|r |cRXP_FRIENDLY_Zerril Softbreeze|r |cRXP_WARN_si vous ne l'avez pas déjà fait|r.
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_Vous devrez peut-être appuyer deux fois sur la macro|r.
    .macro Herb Baked Egg,132834 >>Oeufs aux herbes
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
    +Utilisez la Macro |T132834:0|t[Oeufs aux herbes] ci-dessous pour utiliser chaque Petit œuf au-delà des 3 réservés pour Ravitaillement des Réserves.
    *|cRXP_WARN_Passez cette étape si vous avez déjà envoyé de la nourriture de buff|r.
    *|cRXP_WARN_Gardez au moins 3 Petit Eggs pour une quête ultérieure|r
    *|cRXP_WARN_La plupart des nourritures de bonus accordent 5% d'expérience supplémentaire provenant des morts pendant 15 minutes. Essayez de maintenir ce bonus actif pendant votre montée en niveau|r.
    *|cRXP_BUY_Achetez 5-20|r |T134059:0|t[Epices douces] |cRXP_BUY_de|r |cRXP_FRIENDLY_Zerril Softbreeze|r |cRXP_WARN_si vous ne l'avez pas déjà fait|r.
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_Vous devrez peut-être appuyer deux fois sur la macro|r.
    .macro Herb Baked Egg,132834 >>Oeufs aux herbes

--Class Trainer Backup
step << Rogue
    .money <0.02
    .train 1777,1 -- Gouge (Rank 2) Not Trained
    .xp <6,1
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Miriaan Mistblade::254087|r
    .train 1757 >>S'entraîner |T136189:0|t[Attaque pernicieuse (Rang 2)]
    .train 1776 >>Apprenez [Suriner]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087

--Weapon Backup
step << Hunter
    .money <0.0285
    .isOnQuest 96638 --The Adventurer
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tephri Thriceforged::257421|r
    >>|cRXP_BUY_Achetez et équipez un|r [Arc courbe en bois de corne]
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Tephri Thriceforged::257421

--Weapon Backup
step << Warrior/Paladin
    .money <0.0701
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
    .isOnQuest 96638 --The Adventurer
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.8,44.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tephri Thriceforged::257421|r et achetez et équipez une |T133053:0|t[Massette en bois].
    .collect 2493,1 -- Wooden Mallet
    .target Tephri Thriceforged::257421

--Weapon Backup
step << Rogue
    .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.81
    .isOnQuest 96638 --The Adventurer
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.8,44.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tephri Thriceforged::257421|r et achetez et équipez un |T135321:0|t[Gladius].
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tephri Thriceforged::257421|r
    >>|cRXP_BUY_Achetez et équipez un|r [Bâton de marche]
    .collect 2495,1 --Collect Walking Stick (1)
    .target Tephri Thriceforged::257421

step << Rogue/Warrior/Paladin/Shaman
    #optional
    .itemcount 2835,1 -- Rough Stone
    .goto 2521,44.89,44.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aedi Thriceforged::251913|r.
    *|cRXP_WARN_Passez cette étape si vous avez déjà deux professions|r.
    .train 2018 >>Apprenez [Forge]
    .target Aedi Thriceforged::251913
step << Rogue/Warrior/Paladin/Shaman
    #optional
    .itemcount 2835,1 -- Rough Stone
    .train 2018,3 -- Blacksmithing Trained
    #completewith next
    +Ouvrez la |T136241:0|t[Forge] et fabriquez une |T135248:0|t[Pierre à aiguiser brute] pour votre arme tranchante et appliquez-la. << Rogue
    +Ouvrez la |T136241:0|t[Forge] et fabriquez une |T135255:0|t[Pierre de lest brute] pour votre arme contondante et appliquez-la.  << Warrior/Paladin/Shaman
    .usespell 2018
step << Rogue/Warrior/Paladin/Shaman
    #optional
    #completewith Turn in The Adventurer
    .train 2018,3 -- Blacksmithing Trained
    +Abandonnez Forge ou continuez.
-- step << Mage/Druid/Shaman/Priest/Warlock/Paladin/Rogue/Warrior
step
    .goto 2521,44.465,44.966
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Teeri Wellwind::251906|r
    .target Teeri Wellwind::251906
    .turnin 93319 >>Rendez la quête Pierres-du-Vent chapardées
--Weapon Backup
step << Shaman
    .money <0.0504
    .isOnQuest 96638 --The Adventurer
    .subzoneskip 16624,1 -- Shen'dar Village
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tephri Thriceforged::257421|r
    >>|cRXP_BUY_Achetez et équipez un|r [Bâton de marche]
    .collect 2495,1 --Collect Walking Stick (1)
    .target Tephri Thriceforged::257421
-- step << Mage/Druid/Shaman/Priest/Warlock/Paladin/Rogue/Warrior
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .isOnQuest 96638 -- The Adventurer
    .goto 2521,44.71,45.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Veena Vericloud::254358|r
    .vendor 254358 >>|cRXP_BUY_Achetez un|r |T133634:0|t[Petit Brown Pouch] |cRXP_WARN_si vous pouvez|r.
    *|cRXP_BUY_Achetez au maximum 10|r |T132815:0|t[Lait glacé] |cRXP_BUY_auprès d'elle|r << Mage/Druid/Shaman/Priest/Warlock/Paladin
    *|cRXP_WARN_Quand vous équipez des sacs, assurez-vous que votre Sac de réactifs est dans l'emplacement dédié Sac de réactifs|r.
    -- .collect 2946,1 >>|cRXP_BUY_Buy a|r |T135641:0|t[Balanced Throwing Dagger]. << Rogue/Warrior
    *Ne vendez pas |T133970:0|t[Stringy Viande], |T132832:0|t[Petit Eggs], |T133972:0|t[Strider Viande], ou |T132889:0|t[Etoffe de lin]. << Alliance
    *Ne vendez pas |T132832:0|t[Petit Eggs], |T133972:0|t[Strider Viande], ou |T132889:0|t[Etoffe de lin]. << Horde
    .target Veena Vericloud::254358

--Class Trainer Backup
step << Warrior
    .money <0.01
    .xp <6,1
    .goto 2521,44.95,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corsan Earthrazer::254088|r
    .train 3127 >> Apprenez [Parade]
    .skipgossipid 136813
    .target Corsan Earthrazer::254088

--Class Trainer Backup
step << Hunter
    .money <0.02
    .xp <6,1
    .goto 2521,45.263,44.236
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elayaa Easewind::254084|r.
    .train 3044 >>Apprenez [Tir des Arcanes]
    .train 1130 >>Apprenez [Marque du chasseur]
    .skipgossipid 136808
    .target Elayaa Easewind::254084

--Class Trainer Backup
step << Druid
    .money <0.02
    .xp <6,1
    .goto 2521,45.154,44.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Naeluna Prompte guérison::254081|r
    .train 467 >>Apprenez [Épines]
    .train 5177 >>S'entraîner |T136006:0|t[Courroux (Rang 2)]
    .skipgossipid 136805
    .target Naeluna Swiftmend::254081

--Class Trainer Backup
step << Mage
    .money <0.03
    .xp <6,1
    .goto 2521,45.1,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dorii Brightwhisper::251379|r.
    .train 143 >>S'entraîner |T135812:0|t[Boule de feu (Rang 2)]
    .train 2136 >>Apprenez [Trait de feu]
    .train 1296017 >>S'entraîner |T8188276:0|t[Compréhension de parchemin]
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379
step
    .goto 2521,45.667,45.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Constable Aonda::251523|r
    .target Constable Aonda::251523
    .turnin 92517,3 >>Rendez la quête The Criminal Element
    .accept 93036 >>Acceptez la quête Infiltration du culte
step
    .goto 2521,44.831,45.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sania Silverstream::251904|r
    .target Sania Silverstream::251904
    .turnin 93036 >>Rendez la quête Infiltration du culte
    .accept 92529 >>Acceptez la quête Falaath Village
step
    .isOnQuest 92529 -- Falaath Village
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.831,45.515
    .target Sania Silverstream::251904
    .aura 1254832 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sania Silverstream::251904|r
    .skipgossipid 135874
step
    .isOnQuest 92529 -- Falaath Village
    .subzoneskip 16624,1 -- Shen'dar Village
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,45.374,53.512,25,0
    .goto 2521,46.880,56.242
    .cast 1259416 >>Sautez de la montagne et utilisez la |T132845:0|t[Marche sur l'air] pour voler vers le donneur de quête.
    .usespell 1259416
step
    .goto 2521,45.412,53.485,20,0
    .goto 2521,46.880,56.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Missionary Jasaan::257065|r
    .target Missionary Jasaan::257065
    .turnin 92529 >>Rendez la quête Falaath Village
    .accept 92528 >>Acceptez la quête Among the Faithful
    .use 2454 << Warrior/Rogue -- Elixir of Minor Strength
step
    .isOnQuest 92528 -- Among the Faithful
    .subzoneskip 16636,1 -- Falaath Village
    .goto 2521,46.89,56.24
    .target Sania Silverstream::251904
    .aura 1254832 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sania Silverstream::251904|r
    .skipgossipid 137586 -- I seem to have lost my mark of Akir. Would you please bestow it upon me once more?
step << Horde
    .isOnQuest 92528 -- Among the Faithful
    .cooldown spell,1259686,>0,1 -- Skysight
    -- .aura 1270893,1800 --Charged
    .goto 2521,48.497,55.827
    .cast 1259686 >>Utilisez |T1029587:0|t[Vue céleste] |cRXP_WARN_près d'une Convergence élémentaire|r pour obtenir |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[Charge].
    *Pendant que |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[Charge] est actif, |T1029587:0|t[Vue céleste] augmente la vitesse de déplacement et la vitesse de déplacement monté de |cRXP_WARN_30% pour 30 secondes|r.
step
    #completewith next
    #label plans
    >>Si un autre joueur vient d'utiliser la |cRXP_PICK_Wardrobe|r, son dialogue |cRXP_WARN_doit se terminer avant que le vôtre puisse commencer|r. Si rien ne se passe quand vous cliquez, attendez un moment et réessayez.
    .complete 92528,1 --1/1 Learn about the cultists' plans
step
    #completewith plans
    .isOnQuest 92528
    .subzoneskip 16636,1 
    .goto 2521,48.74,53.89,15,0
    .goto 2521,49.06,53.48,10,0
    .goto 2521,48.76,53.68,10,0
    .goto 2521,48.85,53.91
    .gossipoption 136768 >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_Wardrobe|r |cRXP_WARN_au deuxième étage|r.
    *Assurez-vous que |cRXP_FRIENDLY_Lorthuna|r et |cRXP_FRIENDLY_Aanders|r parlent avant de continuer.
    *Si ce n'est pas le cas, continuez à cliquer sur |cRXP_PICK_Wardrobe|r.
    .timer 13,RP
    .skipgossipid 136768
step
    #requires plans
    .goto 2521,48.85,53.91
    >>|cRXP_WARN_Attendez le crédit de quête avant le déathskip|r.
    *Si vous voyez |cRXP_FRIENDLY_Lorthuna|r et |cRXP_FRIENDLY_Aanders|r en train de parler, |cRXP_WARN_vous pouvez sauter manuellement cette étape à vos risques et périls pour gagner du temps supplémentaire|r. Si vous ne voyez pas de dialogue, continuez à cliquer sur |cRXP_PICK_Wardrobe|r.
    .complete 92528,1 --1/1 Learn about the cultists' plans
    .skipgossipid 136768
step
    .isOnQuest 92528
    .subzoneskip 16636,1 
    .goto 2521/2991,1562.200,2952.000
    *Assurez-vous que |cRXP_FRIENDLY_Lorthuna|r et |cRXP_FRIENDLY_Aanders|r parlent avant de continuer. Si ce n'est pas le cas, continuez à cliquer sur |cRXP_PICK_Wardrobe|r.
    .aura -1254832 >>|cRXP_WARN_Clic-droit|r |T606549:0|t[Marque d'Akir] |cRXP_WARN_ou utilisez la macro (dans le cadre Objets actifs) pour la supprimer|r.
    .macro Remove Mark of Akir,606549 >>Supprimez la Marque d'Akir
    .skipgossipid 136768
step
    .isOnQuest 92528
    .subzoneskip 16636,1 
    .goto 2521/2991,1562.200,2952.000
    .subzone 16623 >>Mourez et ressuscitez au cimetière.
    .skipgossipid 136768
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step
    .isOnQuest 92528
    .subzoneskip 16623,1 
    .showwhiledead
    .goto 2521/2991,1634.800,3418.600
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Spirit Soins::6491|r.
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step
    .isQuestComplete 92528
    .goto 2521/2991,1681.700,3322.300
    .cooldown spell,1259416,>0,1 --Walk on Air
    .cast 1259416 >>Sautez et utilisez |T132845:0|t[Marche sur l'air] pour planer à travers |cRXP_WARN_l'espace entre les deux rochers|r.
    .usespell 1259416
step
    .goto 2521,45.67,45.50
    *Sautez sur le coin de la planche de bois ou contournez-la.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Constable Aonda::251523|r.
    .turnin 92528,1 >>Rendez la quête Among the Faithful << Mage/Druid/Shaman/Priest/Warlock
    .turnin 92528,2 >>Rendez la quête Among the Faithful << Warrior/Rogue/Palsadin
    .turnin 92528,3 >>Rendez la quête Among the Faithful << Hunter
    .accept 92550 >>Acceptez la quête Tumulte dans les Hautes-terres
    .accept 93926 >>Acceptez la quête Le Guet de l'Ouest
    .target Constable Aonda::251523
step
    .goto 2521,45.25,45.18
    *|cRXP_WARN_Équipez la|r |T454058:0|t[Dague rituelle tachée] << Mage/Priest/Warlock
    *|cRXP_WARN_Équipez le|r |T7789512:0|t[Cimeterre courbe] << Warrior/Rogue/Paladin
    *|cRXP_WARN_Équipez le|r |T135493:0|t[Arc court de Souffle-Bise] << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Danarii Bellowveil::252172|r.
    .accept 92551 >>Acceptez la quête Fournitures volées
    .target Danarii Bellowveil::252172
    .use 257332 << Mage/Priest/Warlock -- Stained Ritual Dagger
    .use 257333 << Warrior/Rogue/Paladin -- Curved Scimitar
    .use 273877 << Hunter -- Windswept Shortbow
step << Horde
    .goto 2521,43.518,44.783
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Illaya Amberwind::251902|r.
    .turnin 94411 >>Rendez la quête Meddlesome Mages
    .target Illaya Amberwind::251902
    
--Class Trainer Backup
step << Horde Shaman
    .money <0.01
    .xp <6,1
    .goto 2521,43.454,44.872
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aarnor Galestrike::254082|r
    .trainer >>Apprenez vos sorts de classe
    .target Aarnor Galestrike::254082
step
    .goto 2521,43.37,45.86
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_Prime disponible : Vulgara l'Insatiabilité|r
    .accept 93318 >>Acceptez la quête RECHERCHÉ : Vulgara l'Insatiabilité
    .target Bounty Available: Vulgara the Insatiable!
step
    .goto 2521,43.073,46.306
    .itemcount 2589,5 -- Linen Cloth
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Naleeia Tattermend::257018|r.
    .train 3273 >>Apprenez le Secourisme
    .skipgossipid 137555
    .target Naleeia Tattermend::257018
step << Rogue/Warrior
    .goto 2521,43.073,46.306
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Naleeia Tattermend::257018|r.
    .train 3273 >>Apprenez le Secourisme
    .skipgossipid 137555
    .target Naleeia Tattermend::257018
step
    #optional
    #completewith VulgarasHeadA
    >>Tuez les |cRXP_ENEMY_Galestriders::251661|r. Ramassez-les pour |T133972:0|t[|cRXP_LOOT_Strider Viande|r] et |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    *|cRXP_WARN_Passez cette étape si vous comptez vous envoyer les 8 Strider Viande et les 3 Petit Eggs|r.
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    #optional
    #completewith VulgarasHeadA
    >>Tuez les |cRXP_ENEMY_Prideclaws::251245|r. Ramassez-les pour le |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #label VulgarasHeadA
    .goto 2521/2991,1821.700,3268.300,20,0
    .goto 2521/2991,1810.800,3220.500,20,0
    .goto 2521,42.75,52.68
    >>Tuez |cRXP_ENEMY_Vulgara::254589|r |cRXP_WARN_(élite niveau 8)|r sur la montagne. Ramassez-le pour obtenir |T4218759:0|t[|cRXP_LOOT_Vulgara's Tête|r].
    *|cRXP_WARN_Cherchez un groupe pour le tuer ou sautez la quête ; les réapparitions prennent du temps|r.
    .complete 93318,1 --1/1 Vulgara's Head
    .mob Vulgara::254589

step
    .goto 2521/2991,1861.700,2966.800,15,0
    .goto 2521/2991,1841.700,2967.000,10,0
    .goto 2521/2991,1655.100,2955.400
    .cooldown spell,1259416,>0,1 --Walk on Air
    .cast 1259416 >>Sautez et utilisez |T132845:0|t[Marche sur l'air] pour planer.
    .usespell 1259416


step
    #optional
    #completewith CommanderCyclasHeadA
    >>Tuez |cRXP_ENEMY_Living Foudre::251662|r.
    *|cRXP_WARN_Faites attention : |cRXP_ENEMY_Living Foudre|r utilisent une capacité similaire à Coup de tonnerre qui inflige trois fois leurs dégâts de mêlée en un seul coup|r.
    .complete 92550,2 --4/4 Living Lightning slain
    .mob Living Lightning::251662
step
    #optional
    #completewith CommanderCyclasHeadA
    >>Tuez |cRXP_ENEMY_Al'Aketh Stormcallers::252068|r. Ramassez sur eux |T133647:0|t[|cRXP_LOOT_Stolen Shen'dar Fournitures|r].
    *|cRXP_WARN_|cRXP_ENEMY_Al'Aketh Stormcallers|r lancent |T136014:0|t[Nuage d'éclairs]. |cRXP_WARN_Éloignez-vous du nuage sans attirer les ennemis à proximité|r.
    >>|TInterface/cursor/crosshair/interact.blp:16|tCliquez sur |cRXP_PICK_Supply Caches|r.
    .complete 92550,1 --6/6 Al'Aketh Stormcaller slain
    .complete 92551,1 --10/10 Stolen Shen'dar Supplies
    .mob +Al'Aketh Stormcaller::252068
step
    #label CommanderCyclasHeadA
    .goto 2521/2991,1487.900,2919.900,30,0
    .goto 2521/2991,1467.300,2875.700,30,0
    .goto 2521,50.38,56.93
    >>Tuez |cRXP_ENEMY_Commander Cyclas::251966|r. Ramassez-le pour obtenir |T134161:0|t[|cRXP_LOOT_Commander Cyclas's Tête|r].
    .complete 92550,3 --1/1 Commander Cyclas's Head
    .mob Commander Cyclas::251966
step
    #completewith LivingLightningA
    #hidewindow
    #loop
    .goto 2521/2991,1463.400,2857.100,15,0
    .goto 2521/2991,1458.100,2830.900,15,0
    .goto 2521/2991,1481.400,2843.500,15,0
    .goto 2521/2991,1525.700,2876.600,15,0
    .goto 2521/2991,1569.000,2844.500,40,0
    .goto 2521/2991,1545.600,2944.100,40,0
    +1
step
    #optional
    #completewith next
    >>Tuez |cRXP_ENEMY_Living Foudre::251662|r.
    *|cRXP_WARN_Faites attention : |cRXP_ENEMY_Living Foudre|r utilisent une capacité similaire à Coup de tonnerre qui inflige trois fois leurs dégâts de mêlée en un seul coup|r.
    .complete 92550,2 --4/4 Living Lightning slain
    .mob Living Lightning::251662
step
    >>Tuez |cRXP_ENEMY_Al'Aketh Stormcallers::252068|r. Ramassez sur eux |T133647:0|t[|cRXP_LOOT_Stolen Shen'dar Fournitures|r].
    *|cRXP_WARN_|cRXP_ENEMY_Al'Aketh Stormcallers|r lancent |T136014:0|t[Nuage d'éclairs]. |cRXP_WARN_Éloignez-vous du nuage sans attirer les ennemis à proximité|r.
    >>|TInterface/cursor/crosshair/interact.blp:16|tCliquez sur |cRXP_PICK_Supply Caches|r.
    .complete 92550,1 --6/6 Al'Aketh Stormcaller slain
    .complete 92551,1 --10/10 Stolen Shen'dar Supplies
    .mob +Al'Aketh Stormcaller::252068
step
    #label LivingLightningA
    >>Tuez |cRXP_ENEMY_Living Foudre::251662|r.
    *|cRXP_WARN_Faites attention : |cRXP_ENEMY_Living Foudre|r utilisent une capacité similaire à Coup de tonnerre qui inflige trois fois leurs dégâts de mêlée en un seul coup|r.
    .complete 92550,2 --4/4 Living Lightning slain
    .mob Living Lightning::251662

step << Horde
    .isOnQuest 92550 -- Havoc in the Highlands
    .cooldown spell,1259686,>0,1 -- Skysight
    -- .aura 1270893,1800 --Charged
    .goto 2521,48.497,55.827
    .cast 1259686 >>Utilisez |T1029587:0|t[Vue céleste] |cRXP_WARN_près d'une Convergence élémentaire|r pour obtenir |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[Charge].
    *Pendant que |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[Charge] est actif, |T1029587:0|t[Vue céleste] augmente la vitesse de déplacement et la vitesse de déplacement monté de |cRXP_WARN_30% pour 30 secondes|r.

step
    .isOnQuest 92550
    .subzoneskip 16636,1 
    .goto 2521/2991,1552.300,2838.300
    .subzone 17674 >>Mourez et ressuscitez au cimetière.
    .skipgossipid 136768
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step
    .isOnQuest 92550
    .subzoneskip 17674,1 
    .showwhiledead
    .goto 2521/2991,1993.600,2589.900
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Spirit Soins::6491|r.
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step
    .goto 2521,42.32,62.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Peacekeeper Vaaniel::252155|r.
    .complete 93926,1 --1/1 Check in on the Western Watchtower in the Shen'dar Highlands
    .target Peacekeeper Vaaniel::252155
step
    .goto 2521,42.33,62.01
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_Peacekeeper Vaaniel::252155|r
    .turnin 93926 >>Rendez la quête The Guet de l’Ouest
    .accept 93927 >>Acceptez la quête A Duromal Request
    .target Peacekeeper Vaaniel::252155
step
    .goto 2521,42.38,62.07
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Bloody Remarque|r.
    *|cRXP_WARN_Gardez un emplacement de sac libre|r.
    .complete 93927,1 --1/1 Collect and read the note
step
    .goto 2521,40.988,64.088
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_Arvensus Shadowsong|r\n |cRXP_WARN_de loin|r.
    *|cRXP_WARN_Gardez un emplacement de sac libre|r.
    .complete 93927,4 --1/1 Shadowsong Family Signet
step
    .goto 2521,41.12,64.09
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_Raani Windgazer|r\n |cRXP_WARN_de loin|r.
    *|cRXP_WARN_Gardez un emplacement de sac libre|r.
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
    >>Montez l'escalier en spirale, puis tuez |cRXP_ENEMY_Skypriest Aanders::256966|r |cRXP_WARN_au sommet de la tour|r.
    .complete 93927,2 --1/1 Skypriest Aanders slain
    .mob Skypriest Aanders::256966
step
    .subzoneskip 17674,1 -- West Pylon Watchtower
    .isOnQuest 92516
    .isQuestNotComplete 92516
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521/2991,1987.800,2722.400
    .cast 1259416 >>Sautez de la tour et utilisez |T132845:0|t[Marche sur l'air] pour voler vers la position du waypoint.
    .usespell 1259416
step
    #completewith Hyslain
    >>Tuez |cRXP_ENEMY_Prideclaws::251245|r. Ramassez-les pour le |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #completewith Hyslain
    >>Tuez |cRXP_ENEMY_Galestriders::251661|r. Ramassez |T133972:0|t[|cRXP_LOOT_Strider Viande|r] et |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    *|cRXP_WARN_Passez cette étape si vous prévoyez de vous envoyer par courrier les 8 Strider Viande et les 3 Petit Eggs|r.
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    #completewith Hyslain
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_Hippogryph Downs|r.
    .complete 93951,1 --|8/8 Hippogryph Down
step
    #label Hyslain
    #loop
    .goto 2521/2991,2100.800,2847.000,40,0
    .goto 2521/2991,2103.600,2913.600,40,0
    .goto 2521/2991,2137.000,2795.900,40,0
    .goto 2521/2991,2197.800,2769.300,40,0
    .goto 2521/2991,2247.000,2828.600,40,0
    .goto 2521/2991,2146.400,2916.200,40,0
    >>Tuez |cRXP_ENEMY_Hippogryph Youths::251291|r.
    *|cRXP_WARN_Ramassez-les pour des dépouilles précieuses à revendre afin de payer les améliorations d'armes et l'entraînement de classe|r.
    *|cRXP_WARN_Les Hippogryphs sont extrêmement rapides. N'essayez pas de les distancer en courant si la situation devient dangereuse|r.
    .complete 92516,1 --|8/8 Hippogryph Youth slain
    .mob +Hippogryph Youth::251291
step
    #hidewindow
    #completewith MatriProtec
    #loop
    .goto 2521/2991,2271.100,2955.400,40,0
    .goto 2521/2991,2222.100,3059.100,40,0
    .goto 2521/2991,2332.300,3053.500,40,0
    .goto 2521/2991,2309.300,2998.400,40,0
    .goto 2521/2991,2387.500,2932.600,40,0
    .goto 2521/2991,2225.800,2892.700,40,0
    +1
step
    #completewith next
    >>Tuez |cRXP_ENEMY_Hippogryph Protectors::251284|r et la |cRXP_ENEMY_Hippogryph Matriarch::251261|r.
    *|cRXP_WARN_Ramassez-les pour des dépouilles précieuses à revendre afin de payer les améliorations d'armes et l'entraînement de classe|r.
    *|cRXP_WARN_Priorisez |cRXP_ENEMY_Matriarch::251261|r|r
    *|cRXP_WARN_Les Hippogryphs sont extrêmement rapides. N'essayez pas de les distancer en courant si la situation devient dangereuse|r.
    .complete 92516,2 --|6/6 Hippogryph Protector slain
    .mob +Hippogryph Protector::251284
    .complete 92516,3 --|1/1 Hippogryph Matriarch slain
    .mob +Hippogryph Matriarch::251261
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_Hippogryph Downs|r.
    .complete 93951,1 --|8/8 Hippogryph Down
step
    #label MatriProtec
    >>Tuez |cRXP_ENEMY_Hippogryph Protectors::251284|r et la |cRXP_ENEMY_Hippogryph Matriarch::251261|r.
    *|cRXP_WARN_Ramassez-les pour des dépouilles précieuses à revendre afin de payer les améliorations d'armes et l'entraînement de classe|r.
    *|cRXP_WARN_Priorisez |cRXP_ENEMY_Matriarch::251261|r|r
    *|cRXP_WARN_Les Hippogryphs sont extrêmement rapides. N'essayez pas de les distancer en courant si la situation devient dangereuse|r.
    .complete 92516,2 --|6/6 Hippogryph Protector slain
    .mob +Hippogryph Protector::251284
    .complete 92516,3 --|1/1 Hippogryph Matriarch slain
    .mob +Hippogryph Matriarch::251261

step << Alliance
    #optional
    #completewith next
    >>Tuez |cRXP_ENEMY_Windshaper Novice Seers::257532|r.
    .usespell 1259705
    .complete 94413,1 --6/6 Windshaper Novice Seer defeated
    .mob Windshaper Novice Seer::257532
step << Alliance
    .isOnQuest 94413 -- A Magical Affront
    .isQuestNotComplete 94413 -- A Magical Affront
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .aura 1259691,1200 --Attuned
    .goto 2521,39,47.37
    .cast 1259705 >>Utilisez |T236219:0|t[Lecture des lignes telluriques] |cRXP_WARN_près d'une ligne d'énergie|r pour obtenir |T135737:0|t[Harmonisation].
    *Pendant que |T135737:0|t[Harmonisation] est actif, |T236219:0|t[Lecture des lignes telluriques] augmente la régénération passive de mana et de santé de |cRXP_WARN_100% pendant 15 secondes|r.
    .usespell 1259705
step << Alliance
    #loop
    .goto 2521/2991,2014.700,3206.600,40,0
    .goto 2521/2991,2137.300,3225.600,40,0
    .goto 2521/2991,2069.300,3148.300,40,0
    >>Tuez |cRXP_ENEMY_Windshaper Novice Seers::257532|r.
    .usespell 1259705
    .complete 94413,1 --6/6 Windshaper Novice Seer defeated
    .mob Windshaper Novice Seer::257532
step
    #completewith Turn in The Adventurer
    >>Tuez |cRXP_ENEMY_Galestriders::251661|r. Ramassez |T133972:0|t[|cRXP_LOOT_Strider Viande|r] et |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    *|cRXP_WARN_Passez cette étape si vous prévoyez de vous envoyer par courrier les 8 Strider Viande et les 3 Petit Eggs|r.
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    #completewith Turn in The Adventurer
    >>Tuez |cRXP_ENEMY_Prideclaws::251245|r. Ramassez-les pour le |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #label Turn in The Adventurer
    .goto 2521,41.67,44.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raan Wildwind::263664|r.
    .turnin 96638 >>Rendre la quête The Adventurer
    .target Raan Wildwind::263664
    .accept 96101 >>Acceptez la quête Les grands espaces
step
    .goto 2521,41.67,44.79
    >>Cliquez sur la macro dans le cadre Objets actifs pour vous asseoir.
    .complete 96101,1 --1/1 Use the /sit emote near the campfire
    .macro Sit,134400 >>Asseyez-vous
    .timer 59,Durée jusqu'à achèvement 1
step << Alliance
    .aura -1289723
    .train 3273,3 -- First Aid Trained
    .itemcount 2589,1 -- Linen Cloth
    .train 2550,3 -- Cooking Trained
    .itemcount 2672,1 --Stringy Wolf Meat
    >>|cRXP_WARN_Ne bougez pas et ne sautez pas jusqu'à ce que la quête soit complète|r.
    *|cRXP_WARN_Utilisez les macros dans le "Cadre d'objets actifs" pour créer|r |T133685:0|t[Linen Bandages] et |T133974:0|t[Viande de loup grillée] pour les quêtes ultérieures.
    *Vous pouvez créer et relancer les buffs sans perdre le crédit de la quête. Vous pouvez aussi manger de la nourriture buff ici pour gagner 5% d'expérience supplémentaire à partir des ennemis.
    .complete 96101,2 --Gain the Boosted Rest buff
    *|cRXP_WARN_Vous devrez peut-être appuyer sur la macro deux fois|r.
    .macro First Aid,135966 >>Secourisme
    .macro Cooking,133971 >>Cuisine
step
    .aura -1289723
    .train 3273,3 -- First Aid Trained
    .itemcount 2589,1 -- Linen Cloth
    >>|cRXP_WARN_Ne bougez pas et ne sautez pas jusqu'à ce que la quête soit complète|r.
    *|cRXP_WARN_Appuyez sur la macro dans le "Cadre d'objets actifs" pour créer|r |T133685:0|t[Linen Bandages] pour une quête ultérieure.
    *Vous pouvez créer et relancer les buffs sans perdre le crédit de la quête. Vous pouvez aussi manger de la nourriture buff ici pour gagner 5% d'expérience supplémentaire à partir des ennemis.
    .complete 96101,2 --Gain the Boosted Rest buff
    *|cRXP_WARN_Vous devrez peut-être appuyer sur la macro deux fois|r.
    .macro First Aid,135966 >>Secourisme
step << Alliance
    .aura -1289723
    .train 2550,3 -- Cooking Trained
    .itemcount 2672,1 --Stringy Wolf Meat
    >>|cRXP_WARN_Ne bougez pas et ne sautez pas jusqu'à ce que la quête soit complète|r.
    *|cRXP_WARN_Appuyez sur la macro dans le "Cadre d'objets actifs" pour créer|r |T133974:0|t[Viande de loup grillée] pour une quête ultérieure|r
    *Vous pouvez créer et relancer les buffs sans perdre le crédit de la quête. Vous pouvez aussi manger de la nourriture buff ici pour gagner 5% d'expérience supplémentaire à partir des ennemis.
    .complete 96101,2 --Gain the Boosted Rest buff
    *|cRXP_WARN_Vous devrez peut-être appuyer sur la macro deux fois|r.
    .macro Cooking,133971 >>Cuisine
step
    .aura -1289723
    >>|cRXP_WARN_Ne bougez pas et ne sautez pas jusqu'à ce que la quête soit complète|r.
    *Vous pouvez créer et relancer les buffs sans perdre le crédit de la quête. Vous pouvez aussi manger de la nourriture buff ici pour gagner 5% d'expérience supplémentaire à partir des ennemis.
    .complete 96101,2 --Gain the Boosted Rest buff
step
    .aura 1289723
    >>Le processus a été annulé. Veuillez utiliser la macro SIT à nouveau pour le redémarrer.
    *|cRXP_WARN_Ne bougez pas et ne sautez pas jusqu'à ce que la quête soit complète|r.
    .complete 96101,2 --Gain the Boosted Rest buff
    .timer 59,Temps avant la fin 2
    .macro Sit,134400 >>Asseyez-vous
step << Alliance
    .train 3273,3 -- First Aid Trained
    .itemcount 2589,1 -- Linen Cloth
    .train 2550,3 -- Cooking Trained
    .itemcount 2672,1 --Stringy Wolf Meat
    >>|cRXP_WARN_Ne bougez pas et ne sautez pas jusqu'à ce que la quête soit complète|r.
    *|cRXP_WARN_Utilisez les macros dans le "Cadre d'objets actifs" pour créer|r |T133685:0|t[Linen Bandages] et |T133974:0|t[Viande de loup grillée] pour les quêtes ultérieures.
    *Vous pouvez créer et relancer les buffs sans perdre le crédit de la quête. Vous pouvez aussi manger de la nourriture buff ici pour gagner 5% d'expérience supplémentaire à partir des ennemis.
    .complete 96101,2 --Gain the Boosted Rest buff
    *|cRXP_WARN_Vous devrez peut-être appuyer sur la macro deux fois|r.
    .macro First Aid,135966 >>Secourisme
    .macro Cooking,133971 >>Cuisine
step
    .train 3273,3 -- First Aid Trained
    .itemcount 2589,1 -- Linen Cloth
    >>|cRXP_WARN_Ne bougez pas et ne sautez pas jusqu'à ce que la quête soit complète|r.
    *|cRXP_WARN_Appuyez sur la macro dans le "Cadre d'objets actifs" pour créer|r |T133685:0|t[Linen Bandages] pour une quête ultérieure.
    *Vous pouvez créer et relancer les buffs sans perdre le crédit de la quête. Vous pouvez aussi manger de la nourriture buff ici pour gagner 5% d'expérience supplémentaire à partir des ennemis.
    .complete 96101,2 --Gain the Boosted Rest buff
    *|cRXP_WARN_Vous devrez peut-être appuyer sur la macro deux fois|r.
    .macro First Aid,135966 >>Secourisme
step << Alliance
    .train 2550,3 -- Cooking Trained
    .itemcount 2672,1 --Stringy Wolf Meat
    >>|cRXP_WARN_Ne bougez pas et ne sautez pas jusqu'à ce que la quête soit complète|r.
    *|cRXP_WARN_Appuyez sur la macro dans le "Cadre d'objets actifs" pour créer|r |T133974:0|t[Viande de loup grillée] pour une quête ultérieure|r
    *Vous pouvez créer et relancer les buffs sans perdre le crédit de la quête. Vous pouvez aussi manger de la nourriture buff ici pour gagner 5% d'expérience supplémentaire à partir des ennemis.
    .complete 96101,2 --Gain the Boosted Rest buff
    *|cRXP_WARN_Vous devrez peut-être appuyer sur la macro deux fois|r.
    .macro Cooking,133971 >>Cuisine
step
    >>|cRXP_WARN_Ne bougez pas et ne sautez pas jusqu'à ce que la quête soit complète|r.
    *Vous pouvez créer et relancer les buffs sans perdre le crédit de la quête. Vous pouvez aussi manger de la nourriture buff ici pour gagner 5% d'expérience supplémentaire à partir des ennemis.
    .complete 96101,2 --Gain the Boosted Rest buff
step
    .goto 2521,41.67,44.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raan Wildwind::263664|r.
    .turnin 96101 >>Rendez la quête Les grands espaces
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 2575,3 -- Mining Trained
    .train 1230161,1 --Lodestone
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97970 >>Acceptez la quête Campement 101: Minage
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 8613,3 -- Skinning Trained
    .train 1229517,1 --Camp Chair
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97971 >>Acceptez la quête Campement 101: Dépeçage
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 96646 >>Acceptez la quête Campement 101: Cuisine
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 2366,3 -- Herbalism Trained
    .train 1229705,1 --Incense Candle
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97968 >>Acceptez la quête Campement 101: Herboristerie
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 3273,3 -- First Aid Trained
    .train 1230117,1 --First Aid Kit
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97965 >>Acceptez la quête Campement 101: Secourisme
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 7620,3 -- Fishing Trained
    .train 1229745,1 --Fish Bowl
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97967 >>Acceptez la quête Campement 101: Pêche
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 2259,3 -- Alchemy Trained
    .train 1230564,1 --Mana Well
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97963 >>Acceptez la quête Campement 101: Alchimie
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 2018,3 -- Blacksmithing Trained
    .train 1230171,1 --Sharpening Wheel
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97964 >>Acceptez la quête Campement 101: Forge
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 3908,3 -- Tailoring Trained
    .train 1263425,1 --Faction Banner << Alliance
    .train 1229504,1 --Faction Banner << Horde
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97973 >>Acceptez la quête Campement 101: Couture
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 7411,3 -- Enchanting Trained
    .train 1230643,1 --Enchanted Lute
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 98286 >>Acceptez la quête Campement 101: Enchantement
    .target Raan Wildwind::263664
step
    .train 2108,3 -- Leatherworking Trained
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 1229432,1 --Camp Tent
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97969 >>Acceptez la quête Campement 101: Travail du cuir
    .target Raan Wildwind::263664
step
    #hidewindow
    #completewith FinishFood
    #loop
    .goto 2521/2991,2043.200,3268.600,40,0
    .goto 2521/2991,2125.400,3353.900,40,0
    .goto 2521/2991,2004.100,3461.200,40,0
    .goto 2521/2991,1908.800,3382.900,40,0
    +1
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Galestriders::251661|r. Ramassez-les pour |T133972:0|t[|cRXP_LOOT_Strider Viande|r] et |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    *|cRXP_WARN_Passez cette étape si vous comptez vous envoyer les 8 Strider Viande et les 3 Petit Eggs|r.
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    >>Tuez les |cRXP_ENEMY_Prideclaws::251245|r. Ramassez-les pour le |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #label FinishFood
    >>Tuez les |cRXP_ENEMY_Galestriders::251661|r. Ramassez-les pour |T133972:0|t[|cRXP_LOOT_Strider Viande|r] et |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    *|cRXP_WARN_Passez cette étape si vous comptez vous envoyer les 8 Strider Viande et les 3 Petit Eggs|r.
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    .isQuestComplete 92516 -- Hippogryph Harassment
    .train 3273,3 -- First Aid Trained
    .itemcount 2589,1 -- Linen Cloth
    .goto 2521,43.08,46.31
    >>Appuyez sur la Macro dans le Cadre des Objets Actifs pour fabriquer |T133685:0|t[Pansements de lin].
    *|cRXP_WARN_Passez si vous ne pouvez pas atteindre le niveau 20|r
    .complete 97965,1 >>Terminez la quête Campement 101: Secourisme
    *|cRXP_WARN_Vous devrez peut-être appuyer sur la Macro deux fois|r.
    .macro First Aid,135966 >>Secourisme
step
    .train 3273,3 -- First Aid Trained
    .isQuestComplete 97965 -- Camping 101: First Aid
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,43.08,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Naleeia Tattermend::257018|r |cRXP_WARN_dans la tour|r.
    .turnin 97965 >>Rendez la quête Campement 101: Secourisme
    .target Naleeia Tattermend::257018
step << Horde Shaman
    .money <0.10
    .xp <8,1
    .goto 2521,43.454,44.872
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aarnor Galestrike::254082|r
    .trainer >>Apprenez vos sorts de classe
    .target Aarnor Galestrike::254082
step
    .train 2366,3 --Herbalism Trained
    .isQuestComplete 97968 --Camping 101: Herbalism
    .isQuestComplete 92516 --Hippogryph Harassment
    .goto 2521,43.0,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Halassa Fernbreeze::257021|r.
    .turnin 97968 >>Rendez la quête Campement 101: Herboristerie
    .target Halassa Fernbreeze::257021
step
    .train 7411,3 -- Enchanting Trained
    .isQuestComplete 98286 -- Camping 101: Enchanting
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,43.25,43.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nasalanna Windsinger::257020|r
    .turnin 98286 >>Rendez la quête Campement 101: Enchantement
    .target Nasalanna Windsinger::257020
step
    .train 8613,3 -- Skinning Trained
    .isQuestComplete 97971 -- Camping 101: Skinning
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,43.3,43.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mendalass Tattermend::257024|r
    .turnin 97971 >>Rendez la quête Campement 101: Dépeçage
    .target Mendalass Tattermend::257024
step
    .isQuestComplete 92516 -- Hippogryph Harassment
    .isQuestComplete 92553 -- Restocking the Larders
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zerril Softbreeze::251905|r et achetez 5 |T134059:0|t[Epices douces]
    .vendor 251905 >>Vendez tout ce dont nous n'avez pas besoin
    *Ne vendez pas |T133970:0|t[Stringy Viande], |T132832:0|t[Petit Eggs] ou |T133972:0|t[Strider Viande]. << Alliance
    *Ne vendez pas |T132832:0|t[Petit Eggs] et |T133972:0|t[Strider Viande]. << Horde
    *|cRXP_WARN_Nous en avons besoin pour Cuisine plus tard|r.
    .collect 2678,5 -- Mild Spices
    .skipgossipid 137550
    .target Zerril Softbreeze::251905
step
    .isQuestComplete 92516 -- Hippogryph Harassment
    .isQuestComplete 92553 -- Restocking the Larders
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    .turnin 92553 >>Rendez la quête Ravitaillement des Réserves
    .target Zerril Softbreeze::251905
step
    .train 2550,3 -- Cooking Trained
    .isQuestComplete 96646 -- Camping 101: Cooking
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    .turnin 96646 >>Rendez la quête Campement 101: Cuisine
    .target Zerril Softbreeze::251905
step
    .isQuestTurnedIn 92553 -- Restocking the Larders
    .isQuestComplete 92516 -- Hippogryph Harassment
    .train 2550,3 -- Cooking Trained
    .itemcount 6889,1 -- Small Egg
    .goto 2521,43.86,43.85
    +Utilisez la Macro |T132834:0|t[Oeufs aux herbes] ci-dessous pour fabriquer autant que possible.
    *|cRXP_WARN_Passez cette étape si vous avez déjà envoyé de la nourriture de buff|r.
    *|cRXP_WARN_La plupart des nourritures de buff accordent 5% d'augmentation d'expérience pour 15 minutes. Essayez de maintenir ce buff actif autant que possible en montant de niveau|r.
    *|cRXP_BUY_Achetez 5-20|r |T134059:0|t[Epices douces] |cRXP_BUY_auprès de|r |cRXP_FRIENDLY_Zerril Softbreeze|r |cRXP_WARN_si vous ne l'avez pas encore fait|r.
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_Vous devrez peut-être appuyer sur la Macro deux fois|r.
    .macro Herb Baked Egg,132834 >>Oeufs aux herbes
step
    .isOnQuest 92553 -- Restocking the Larders
    .isQuestNotComplete 92553 -- Restocking the Larders
    .isQuestComplete 92516 -- Hippogryph Harassment
    .train 2550,3 -- Cooking Trained
    .itemcount 6888,<1 -- Herb Baked Egg
    .itemcount 6889,1 -- Small Egg
    .goto 2521,43.86,43.85
    +Utilisez la Macro |T132834:0|t[Oeufs aux herbes] ci-dessous pour fabriquer 1 pour le bonus d'expérience.
    *|cRXP_WARN_Passez cette étape si vous avez déjà envoyé de la nourriture de buff|r.
    *|cRXP_WARN_La plupart des nourritures de buff accordent 5% d'augmentation d'expérience pour 15 minutes. Essayez de maintenir ce buff actif autant que possible en montant de niveau|r.
    *|cRXP_BUY_Achetez 5-20|r |T134059:0|t[Epices douces] |cRXP_BUY_auprès de|r |cRXP_FRIENDLY_Zerril Softbreeze|r |cRXP_WARN_si vous ne l'avez pas encore fait|r.
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_Vous devrez peut-être appuyer sur la Macro deux fois|r.
    .macro Herb Baked Egg,132834 >>Oeufs aux herbes
step
    .isOnQuest 92553 -- Restocking the Larders
    .isQuestComplete 92516 -- Hippogryph Harassment
    .train 2550,3 -- Cooking Trained
    .itemcount 6889,>3 -- Small Egg
    .goto 2521,43.86,43.85
    +Utilisez la Macro |T132834:0|t[Oeufs aux herbes] ci-dessous pour utiliser chaque Petit œuf au-delà des 3 réservés pour Ravitaillement des Réserves.
    *|cRXP_WARN_Passez cette étape si vous avez déjà envoyé de la nourriture de buff|r.
    *|cRXP_WARN_Gardez au moins 3 Petit Eggs pour une quête ultérieure|r
    *|cRXP_WARN_La plupart des nourritures de bonus accordent 5% d'expérience supplémentaire provenant des morts pendant 15 minutes. Essayez de maintenir ce bonus actif pendant votre montée en niveau|r.
    *|cRXP_BUY_Achetez 5-20|r |T134059:0|t[Epices douces] |cRXP_BUY_de|r |cRXP_FRIENDLY_Zerril Softbreeze|r |cRXP_WARN_si vous ne l'avez pas déjà fait|r.
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_Vous devrez peut-être appuyer deux fois sur la macro|r.
    .macro Herb Baked Egg,132834 >>Oeufs aux herbes
step
    .train 2259,3 -- Alchemy Trained
    .isQuestComplete 97963 -- Camping 101: Alchemy
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,43.7,43.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nyassa Swiftdraught::257019|r
    .turnin 97963 >>Rendre la quête Campement 101: Alchimie
    .target Nyassa Swiftdraught::257019
step
    #label A Little Beauty
    .goto 2521,44.873,44.187
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Taleen Shimmerthread::251991|r
    .target Taleen Shimmerthread::251991
    .turnin 93951 >>Rendez la quête A Little La Belle
step
    .train 3908,3 -- Tailoring Trained
    .isQuestComplete 97973 -- Camping 101: Tailoring
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,44.88,44.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Taleen Shimmerthread::251991|r
    .turnin 97973 >>Rendre la quête Campement 101: Couture
    .target Taleen Shimmerthread::251991
step << Shaman/Druid
    .money <0.0504
    .isQuestTurnedIn 92516 -- Hippogryph Harassment
    .isQuestTurnedIn 93319 -- Pilfered Windstones
    .subzoneskip 16624,1 -- Shen'dar Village
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tephri Thriceforged::257421|r
    >>|cRXP_BUY_Achetez et équipez un|r [Bâton de marche]
    .collect 2495,1 --Collect Walking Stick (1)
    .target Tephri Thriceforged::257421
step
    .train 2018,3 -- Blacksmithing Trained
    .isQuestComplete 97964 -- Camping 101: Blacksmithing
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,44.89,44.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aedi Thriceforged::251913|r
    .turnin 97964 >>Rendre la quête Campement 101: Forge
    .target Aedi Thriceforged::251913
step
    .train 2575,3 -- Mining Trained
    .isQuestComplete 97970 -- Camping 101: Mining
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,44.77,44.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Messana Crestwind::257022|r
    .turnin 97970 >>Rendre la quête Campement 101: Minage
    .target Messana Crestwind::257022
step
    .isQuestComplete 92515 -- The Problem With Prideclaws
    .isQuestAvailable 92516 -- Hippogryph Harassment
    .goto 2521,44.686,44.518
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Indari Sunseam::251993|r
    .target Indari Sunseam::251993
    .turnin 92515 >>Rendre la quête The Problem With Prideclaws
step
    .train 2108,3 -- Leatherworking Trained
    .isQuestComplete 97969 -- Camping 101: Leatherworking
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,44.69,44.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Indari Sunseam::251993|r
    .turnin 97969 >>Rendre la quête Campement 101: Travail du cuir
    .target Indari Sunseam::251993
step
    .goto 2521,44.465,44.966
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Teeri Wellwind::251906|r
    .target Teeri Wellwind::251906
    .turnin 92516 >>Rendre la quête Hippogriffe Harcèlement
    .turnin 93319 >>Rendez la quête Pierres-du-Vent chapardées
step << Warrior
    .money <0.05
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 7372,1 -- Hamstring (Rank 2) Not Trained
    .train 8198,1 -- Thunder Clap (Rank 2) Not Trained
    .xp <8,1
    .goto 2521,44.95,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corsan Earthrazer::254088|r
    .train 284 >> S'entraîner |T132282:0|t[Frappe héroïque (Rang 2)]
    .train 1715 >> S'entraîner |T132316:0|t[Brise-genou]
    .train 6343 >> Apprenez [Coup de tonnerre]
    .skipgossipid 136813
    .target Corsan Earthrazer::254088
step
    .isQuestComplete 93318 -- WANTED: Vulgara the Insatiable
    .goto 2521,45.234,45.186
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Danarii Bellowveil::252172|r
    .target Danarii Bellowveil::252172
    .turnin 93318,1 >>Rendez la quête WANTED : Vulgara the Insatiabilité
step << Druid
    .money <0.04
    .subzoneskip 16624,1 -- Shen'dar Village
    .xp <8,1
    .goto 2521,45.153,44.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Naeluna Prompte guérison::254081|r.
    .train 339 >>S'entraîner |T136100:0|t[Sarments]
    .train 5186 >>S'entraîner |T136041:0|t[Toucher guérisseur (Rang 2)]
    .skipgossipid 136805
    .target Naeluna Swiftmend::254081
step << Hunter
    .money <0.04
    .xp <8,1
    .goto 2521,45.263,44.236
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elayaa Easewind::254084|r.
    .train 5116 >>Apprenez [Trait de choc]
    .train 3127 >>Apprenez [Parade]
    .train 14260 >>S'entraîner |T132223:0|t[Attaque du raptor (Rang 2)]
    .skipgossipid 136808
    .target Elayaa Easewind::254084
step
    #label SkybornePart1End
    .goto 2521,45.24,45.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Danarii Bellowveil::252172|r.
    .turnin 92551 >>Rendre la quête Fournitures volées
    .target Danarii Bellowveil::252172
step
    .goto 2521,45.67,45.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Constable Aonda::251523|r.
    .turnin 92550,3 >>Rendez la quête Tumulte dans les Highlands
    .turnin 93927 >>Rendez la quête A Duromal Request
    .accept 92701 >>Acceptez la quête To Valanaar << Alliance
    .accept 92579 >>Acceptez la quête To Valanaar << Horde
    .accept 93948 >>Acceptez la quête Deliver the Signet
    .target Constable Aonda::251523
step << Mage
    .money <0.06
    .xp <8,1
    .goto 2521,45.1,45.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shenaan Spellwind::254086|r
    .train 5143 >> Apprenez |T136096:0|t[Projectiles des Arcanes]
    .train 205 >> S'entraîner |T135846:0|t[Eclair de givre (Rang 2)]
    .train 118 >> Apprenez [Métamorphone]
    .skipgossipid 136807
    .target Shenaan Spellwind::254086
step << Mage
    .money <0.02
    .xp <8,1
    .goto 2521,45.1,45.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shenaan Spellwind::254086|r
    .train 5143 >> Apprenez |T136096:0|t[Projectiles des Arcanes]
    -- .train 205 >> Train |T135846:0|t[Frostbolt (Rank 2)]
    -- .train 118 >> Train |T136071:0|t[Polymorph]
    .skipgossipid 136807
    .target Shenaan Spellwind::254086
step << Alliance
    .goto 2521,44.979,46.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rathiril Sunlance::251903|r.
    .turnin 94413 >>Rendre la quête A Magical Affront
    .target Rathiril Sunlance::251903
step
    .train 7620,3 -- Fishing Trained
    .isQuestComplete 97967 -- Camping 101: Fishing
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,45.03,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fenn Fairweather::251992|r
    .turnin 97967 >>Rendre la quête Campement 101: Pêche
    .target Fenn Fairweather::251992



-- step << Alliance/Horde !Shaman
--     .subzoneskip 16624,1 -- Shen'dar Village
--     .isOnQuest 94413 << Alliance -- Magical Affront
--     .isQuestAvailable 92529 << Horde -- Falaath Village
--     .goto 2521,44.71,45.48
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veena Vericloud::254358|r
--     .vendor 254358 >>|cRXP_BUY_Buy up to three|r |T133634:0|t[Small Brown Pouches] |cRXP_BUY_as needed|r.
--     >>|cRXP_BUY_Buy up to 10|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r << Druid/Mage/Priest/Warlock/Paladin/Shaman
--     *|cRXP_WARN_When equipping bags, make sure your Reagent Bag is in the dedicated Reagent Bag slot|r.
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
--     *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
--     .target Veena Vericloud::254358
-- step << Shaman/Druid
--     .money <0.0504
--     .itemStat 16,QUALITY,<7
--     .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
--     .goto 2521,44.790,44.168
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tephri Thriceforged::257421|r
--     >>|cRXP_BUY_Buy and equip a|r |T135145:0|t[Walking Stick]
--     .collect 2495,1 --Collect Walking Stick (1)
--     .target Tephri Thriceforged::257421
-- step << Horde Shaman
--     .subzoneskip 16624,1 -- Shen'dar Village
--     .isQuestAvailable 92529 -- Falaath Village
--     .goto 2521,44.71,45.48
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veena Vericloud::254358|r
--     .vendor 254358 >>|cRXP_BUY_Buy up to three|r |T133634:0|t[Small Brown Pouches] |cRXP_BUY_as needed|r.
--     >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
--     *|cRXP_WARN_When equipping bags, make sure your Reagent Bag is in the dedicated Reagent Bag slot|r.
--     *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat].
--     .target Veena Vericloud::254358







-- step << Rogue
--     .money <0.04
--     .isQuestAvailable 92528 -- Among the Faithful
--     .xp <8,1
--     .goto 2521,44.37,46.69,30,0
--     .goto 2521,43.15,43.27
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miriaan Mistblade::254087|r
--     *|cRXP_WARN_Do not use|r |T132845:0|t[Walk on Air] |cRXP_WARN_during this step|r.
--     .train 5277 >>Train |T136205:0|t[Evasion]
--     .train 6760 >>Train |T132292:0|t[Eviscerate (Rank 2)]
--     .skipgossipid 136810
--     .target Miriaan Mistblade::254087
-- step
--     .subzoneskip 16624,1 -- Shen'dar Village
--     .isQuestComplete 92550 -- Havoc in the Highlands
--     .goto 2521,44.71,45.48
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veena Vericloud::254358|r
--     .vendor 254358 >>Vendor Trash. |cRXP_BUY_Buy up to three|r |T133634:0|t[Small Brown Pouches] |cRXP_BUY_as needed|r.
--     *|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r << Druid/Mage/Priest/Warlock/Paladin
--     -- *|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] and |T132382:0|t[Sharp Arrows] << Hunter
--     *|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows] << Hunter
--     -- *|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows] << Alliance Rogue
--     *|cRXP_WARN_When equipping bags, make sure your Reagent Bag is in the dedicated Reagent Bag slot|r.
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
--     *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
--     -- .collect 2512,600 << Hunter --Rough Arrow (600)
--     .collect 2515,1000 << Hunter --Sharp Arrows (1000)
--     -- .collect 2515,200 << Alliance Rogue --Sharp Arrows (600)
--     .target Veena Vericloud::254358
]])
--Skyborne leveling guide: Part 2
RXPGuides.RegisterGuide([[
#forever
#disabledungeons
#version 1
#name 9-13 Zephras Isle V2
#displayname 9-13 Skyborne V2 << Alliance
#displayname 9-12 Skyborne V2 << Horde
#group RestedXP Guide Forever (A) << Alliance
#group RestedXP Guide Forever (H) << Horde
#subgroup Guide Speedrun 1-20 << Alliance
#subgroup Guide Speedrun 1-22 << Horde
#next 13-15 Marche de l’Ouest << Alliance !Hunter
#next 14-16 Sombrivage << Alliance Hunter
#next 12-14 Forêt des Pins argentés << Horde !Hunter
#next 12-17 Les Tarides << Horde Hunter
#defaultfor Skyborne
#internal

step
    #optional
    .isQuestAvailable 92550,93927 --Havoc in the Highlands; A Last Request
    +|cRXP_WARN_Terminé le guide 1-9 Skyborne avant de continuer. Ce guide requiert les quêtes de la Partie 1|r.
    .clicknext RestedXP Forever Guide (A)\1-9 Zephras Isle >>CLIQUEZ ICI POUR LE GUIDE 1-9 SKYBORNE << Alliance
    .clicknext RestedXP Forever Guide (H)\1-9 Zephras Isle >>CLIQUEZ ICI POUR LE GUIDE 1-9 SKYBORNE << Horde
step
    #completewith LeaveZephrasIsle
    #hidewindow
    +Position d'apparition possible de Tornade
    #icon |TInterface/Icons/Spell_Nature_Cyclone:0|t
    .pin 2521,50.27,76.45,Tornado
    .pin 2521,57.91,75.86,Tornado
    .pin 2521,42.13,39.24,Tornado
    .pin 2521,64,75.79,Tornado
    .pin 2521,52.67,41.92,Tornado
    .pin 2521,68.63,65.95,Tornado
    .pin 2521,48.14,56.56,Tornado
    .pin 2521,39.6,45.11,Tornado
    .pin 2521,54.92,44.76,Tornado
    .pin 2521,58.55,52.75,Tornado
    .pin 2521,47.74,69.57,Tornado
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Constable Aonda::251523|r.
    .accept 92701 >>Acceptez la quête To Valanaar << Alliance
    .accept 92579 >>Acceptez la quête To Valanaar << Horde
    .accept 93948 >>Acceptez la quête Deliver the Signet
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
    .cast 1259416 >>Sautez de la montagne et utilisez |T132845:0|t[Marche sur l'air] pour voler vers la position.
    .usespell 1259416
step
    .train 7620,3 -- Fishing Trained
    .isQuestComplete 97967 -- Camping 101: Fishing
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,45.03,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fenn Fairweather::251992|r
    .turnin 97967 >>Rendre la quête Campement 101: Pêche
    .target Fenn Fairweather::251992
step
	.isOnQuest 93948 -- Deliver the Signet
    .isNotOnQuest 93317 -- Crab Season
    .subzoneskip 16638 -- Valanaar
    .goto 2521,49.4,58.76
    .subzone 16626 >>Mourrez à la position exacte du waypoint
    *|cRXP_WARN_Utilisez la macro pour s’asseoir afin de mourir plus vite|r.
    *|cRXP_WARN_Sinon, vous pourrez être envoyé à un cimetière différent|r
    *|cRXP_WARN_Soyez prudents si vous traversez directement le champ; vous pouvez facilement mourir|r.
    .macro Sit to Die Faster,134400 >>Asseyez-vous pour mourir plus vite
step
    #ignorecorpse
    .subzoneskip 16626,1 -- Gustberry Lowlands
	.isOnQuest 93948 -- Deliver the Signet
    .isNotOnQuest 93317 -- Crab Season
    .showwhiledead
    .goto 2521,54.99,68.14
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Spirit Soins::6491|r.
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falfaan Halfwind::271465|r |cRXP_WARN_à l'intérieur de la maison|r.
    >>|cRXP_BUY_Achetez et équipez un|r |T7810733:0|t[Arc zéphrali].
    .collect 277110,1 --Collect Zephrali Bow
    .vendor 271465 >>Vendez les rebuts et réparez si nécessaire.
    *Ne vendez pas |T133970:0|t[Stringy Viande], |T132832:0|t[Petit Eggs] ou |T133972:0|t[Strider Viande]. << Alliance
    *Ne vendez pas |T132832:0|t[Petit Eggs] et |T133972:0|t[Strider Viande]. << Horde
    *|cRXP_WARN_Nous en avons besoin pour Cuisine plus tard|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Alliance Hunter
    #optional
    #completewith Deliver the Signet
    .xp <9,1
    .itemcount 277110,1 --Zephrali Bow
    .equip 18,277110 >>|cRXP_WARN_Équipez le|r |T7810733:0|t[Arc zéphrali].
    .use 277110 --Zephrali Bow
step << Alliance Warrior/Alliance Paladin
    .xp <9,1
    .money <0.2151
    .isNotOnQuest 92679 --Blood Tithe
    .isQuestAvailable 92679 --Blood Tithe
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.28
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falfaan Halfwind::271465|r |cRXP_WARN_à l'intérieur de la maison|r.
    >>|cRXP_BUY_Achetez et équipez un|r |T7792097:0|t[Fracasseur zéphrali].
    .collect 277106,1 --Zephrali Smasher
    .vendor 271465 >>Vendez les rebuts et réparez si nécessaire.
    *Ne vendez pas |T133970:0|t[Stringy Viande], |T132832:0|t[Petit Eggs] ou |T133972:0|t[Strider Viande]. << Alliance
    *Ne vendez pas |T132832:0|t[Petit Eggs] et |T133972:0|t[Strider Viande]. << Horde
    *|cRXP_WARN_Nous en avons besoin pour Cuisine plus tard|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Alliance Warrior/Alliance Paladin
    #optional
    #completewith Deliver the Signet
    .xp <9,1
    .itemcount 277106,1 --Zephrali Smasher
    .equip 16,277106 >>|cRXP_WARN_Équipez le|r |T7792097:0|t[Fracasseur zéphrali].
    .use 277106 --Zephrali Smasher
step << Alliance Shaman/Alliance Druid
    .xp <9,1
    .money <0.2176
    .isNotOnQuest 92679 --Blood Tithe
    .isQuestAvailable 92679 --Blood Tithe
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.48
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falfaan Halfwind::271465|r |cRXP_WARN_à l'intérieur de la maison|r.
    >>|cRXP_BUY_Achetez et équipez un|r |T7798447:0|t[Grand bâton zéphrali].
    .collect 277109,1 --Zephrali Greatstaff
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Alliance Shaman/Alliance Druid
    #optional
    #completewith Deliver the Signet
    .xp <9,1
    .itemcount 277109,1 --Zephrali Greatstaff
    .equip 16,277109 >>|cRXP_WARN_Équipez le|r |T7798447:0|t[Grand bâton zéphrali].
    .use 277109 --Zephrali Greatstaff
step << Alliance Rogue
    .xp <9,1
    .money <0.1727
    .isNotOnQuest 92679 --Blood Tithe
    .isQuestAvailable 92679 --Blood Tithe
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.35
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falfaan Halfwind::271465|r |cRXP_WARN_à l'intérieur de la maison|r.
    >>|cRXP_BUY_Achetez et équipez un|r |T7791298:0|t[Gourdin zéphrali].
    .collect 277107,1 --Zephrali Bludgeon
    .vendor 271465 >>Vendez les rebuts et réparez si nécessaire.
    *Ne vendez pas |T133970:0|t[Stringy Viande], |T132832:0|t[Petit Eggs] ou |T133972:0|t[Strider Viande]. << Alliance
    *Ne vendez pas |T132832:0|t[Petit Eggs] et |T133972:0|t[Strider Viande]. << Horde
    *|cRXP_WARN_Nous en avons besoin pour Cuisine plus tard|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Alliance Rogue
    #optional
    #completewith Deliver the Signet
    .xp <9,1
    .itemcount 277107,1 --Zephrali Bludgeon
    .equip 16,277107 >>|cRXP_WARN_Équipez le|r |T7791298:0|t[Gourdin zéphrali].
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nyalah Brightfire::257006|r.
    *|cRXP_WARN_Si vous apercevez une Tornade, approchez-vous pour obtenir une augmentation de 40% de vitesse de mouvement pendant 5 minutes. L'effet se termine si vous causez des dégâts|r.
    .target Nyalah Brightfire::257006
    .accept 93317 >>Acceptez la quête Crabe Season
    .skipgossipid 96031
    .skipgossipid 98031
step
    .isOnQuest 93948 -- Deliver the Signet
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Donaal Downbreeze|r.
    .target Donaal Downbreeze::255940
    .bindlocation 16638
    .home >>Liez votre Pierre de foyer à Valanaar
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alvarion Windfield::252448|r |cRXP_WARN_au deuxième étage|r.
    .target Alvarion Windfield::252448
    .accept 92679 >>Acceptez la quête Dîme de sang
step
    #completewith Accept Blood Tithe
    .goto 2521,62.096,73.339,20 >>Montez à l'étage
step
    #requires Accept Blood Tithe
    .goto 2521,62.096,73.339
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alvarion Windfield::252448|r |cRXP_WARN_au deuxième étage|r.
    .target Alvarion Windfield::252448
    .accept 92679 >>Acceptez la quête Dîme de sang
step << Alliance
    #optional
    #completewith BuggedAcceptedA
    .isNotOnQuest 93949 --Bugged
    +|cRXP_WARN_N'utilisez pas|r |T132845:0|t[Marche sur l'air] |cRXP_WARN_jusqu'à ce que vous acceptiez la quête Bugged|r
step
    .isNotOnQuest 94484 -- Unnerving Silence
    .subzoneskip 16638,1 -- Valanaar
    .isQuestAvailable 93948 -- Deliver the Signet
    .goto 2521,63.33,73.65,15,0
    .goto 2521,63.973,75.095,25 >>Traversez la colline
    *|cRXP_WARN_Ignorez la Ligne tellurique ; nous ferons un deathskip sous peu|r << Alliance
step
    .goto 2521,63.973,75.095
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r.
    .accept 94484 >>Acceptez la quête Unnerving Silence
    .target Lotheluum Starbreeze::252359
step << Horde
    .goto 2521,65.956,74.309
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ealaane Nimbuswalker::259012|r.
    .accept 94896 >>Acceptez la quête Assister For The Refugees
    .accept 94897 >>Acceptez la quête The Destin of a Être aimé Un
    .target Ealaane Nimbuswalker::259012
step
    #optional
    #completewith next
    #label DeliverTheSignetA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talaanis Shadowsong::252476|r.
    .turnin 93948 >>Rendre la quête Deliver the Signet
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
    .goto 2521,66.44,76.4,5 >>Montez la tour
step
    #requires DeliverTheSignetA
    #label Deliver the Signet
    .goto 2521,66.17,76.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talaanis Shadowsong::252476|r.
    .turnin 93948 >>Rendre la quête Deliver the Signet
    .target Talaanis Shadowsong::252476
step
    #label BuggedAcceptedA
    .goto 2521,66.18,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
    .turnin 92701 >>Rendre la quête To Valanaar << Alliance
    .turnin 92579,3 >>Rendre la quête To Valanaar << Horde
    .accept 92699 >>Acceptez la quête The Supreme Magister << Alliance
    .accept 92700 >>Acceptez la quête The Grand Skyseer << Horde
    .accept 93949 >>Acceptez la quête Bugged << Alliance
    .target Valennia Stormfist::252383

-- ============================================================================
-- Alliance: The Missing Scholar Route
-- ============================================================================

step << Alliance
    .isOnQuest 92699 -- The Supreme Magister
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,66.47,76.68,10,0
    .goto 2521,66.63,79.94
    .cast 1259416 >>Sautez de l'arbre et utilisez |T132845:0|t[Marche sur l'air] pour voler vers le donneur de quête.
    *|cRXP_WARN_Si vous avez le timing, vous pouvez l'annuler en l'air pour atterrir dans le bâtiment|r
    .usespell 1259416
    .macro Cancel Walk on Air,132845 >>Annulez Marche sur l'air
step << Alliance
    #completewith Unwelcome Visitors
    .aura 1258510
    >>Tuez les |cRXP_ENEMY_Skyhoppers::251314|r.
    .complete 93949,1 --8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Alliance
    .goto 2521,66.63,79.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elaadrin Evengale::252475|r.
    .turnin 92699 >>Rendre la quête The Supreme Magister
    .target Elaadrin Evengale::252475
step << Alliance
    .goto 2521,66.26,79.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dondallion Murmevent::253204|r.
    .accept 92727 >>Acceptez la quête The Manquant Scholar
    .target Dondallion Whisperwind::253204
step << Alliance
    #label Unwelcome Visitors
    .goto 2521,66.35,79.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Iaadaria Bitterwind::253004|r.
    .accept 92741 >>Acceptez la quête Unwelcome Des visiteurs
    .target Iaadaria Bitterwind::253004
step << Alliance
    .isOnQuest 92727 -- The Missing Scholar
    .subzoneskip 16638,1 -- Valanaar
    .goto 2521,67.41,80.46
    .subzone 16626 >>Sautez de la falaise
step << Alliance
    #ignorecorpse
    .subzoneskip 16626,1 -- Gustberry Lowlands
    .isOnQuest 92727 -- The Missing Scholar
    .showwhiledead
    .goto 2521,54.99,68.14
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Spirit Soins::6491|r.
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step << Alliance
    .goto 2521,53.33,72.15
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_Bloodstained Satchel::581822|r
    *|cRXP_WARN_Si une Tornade est présente, utilisez-la pour voyager plus rapidement|r.
    *Faites attention au |cRXP_ENEMY_Ornery Galestrider::251707|r.
    .turnin 92727 >>Rendez la quête The Manquant Scholar
    .accept 92849 >>Acceptez la quête The Manquant Scholar
    .target Bloodstained Satchel::581822
    .mob Ornery Galestrider::251707
step << Alliance
    #label LeavingValanaarA
    .goto 2521,51.11,67.06,30,0
    .goto 2521,51.24,66.63,30,0
    .goto 2521,49.9,66.42,30,0
    .goto 2521,49.75,65.9,30,0
    .goto 2521,50.7,65.36
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_FRIENDLY_Fillion Flamebreeze::253002|r |cRXP_WARN_à l'intérieur de la grotte|r.
    *|cRXP_WARN_Évitez les oiseaux et cliquez sur Fillion hors de combat, sinon vous serez téléporté dehors|r.
    *|cRXP_WARN_Si une Tornade est présente, utilisez-la pour voyager plus rapidement|r.
    .complete 92849,1 --1/1 Find Fillion Flamebreeze
step << Alliance
    .subzoneskip 16672,1 -- Shriekling Den
    .isOnQuest 92849 -- The Missing Scholar
    .isQuestNotComplete 92849 -- The Missing Scholar
    .goto 2521,50.7,65.36
    .aura 1258429 >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_FRIENDLY_Fillion Flamebreeze::253002|r |cRXP_WARN_à l'intérieur de la grotte|r.
    *|cRXP_WARN_Évitez les oiseaux et cliquez sur Fillion hors de combat, sinon vous serez téléporté dehors|r.
    .skipgossipid 136430
    .target Fillion Flamebreeze::253002
step << Alliance
    .goto 2521,50.71,66.38,20,0
    .goto 2521,52.04,66.66,15,0
    .goto 2521,51.44,66.25,15,0
    .goto 2521,51.03,67.15,15,0
    .goto 2521,51.55,69.2,35,0
    .goto 2521,52.08,69.41
    >>Portez |cRXP_FRIENDLY_Fillion Flamebreeze::253281|r en sécurité.
    *|cRXP_WARN_Évitez les oiseaux et cliquez sur Fillion hors de combat, sinon vous serez téléporté dehors|r.
    *|cRXP_WARN_Si un oiseau vous attaque, annulez l'aura de portage pour éviter d'être téléporté dehors|r.
    .complete 92849,2 --1/1 Carry Fillion Flamebreeze to safety while avoiding enemies
    .skipgossipid 136430
    .mob Shriekling Fledgling::253282
    .target Fillion Flamebreeze::253281
step << Alliance
    .goto 2521,52.064,69.396
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fillion Flamebreeze::253284|r.
    .target Fillion Flamebreeze::253284
    .turnin 92849 >>Rendez la quête The Manquant Scholar 1
    .accept 92850 >>Acceptez la quête The Manquant Scholar 2
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
    .goto 2521,52.02,65.51,130 >>Entrez dans la grotte
step << Alliance
    .isOnQuest 92850 -- The Missing Scholar 2
    .isQuestNotComplete 92850 -- The Missing Scholar 2
    .subzoneskip 16672,1 -- Shriekling Den
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .aura 1259691,600 --Attuned
    .goto 2521,52.49,65.97,30,0
    .goto 2521,52.48,66.04
    .cast 1259705 >>Utilisez |T236219:0|t[Lecture des lignes telluriques] |cRXP_WARN_près d'une ligne d'énergie|r pour obtenir |T135737:0|t[Harmonisation].
    *Pendant que |T135737:0|t[Harmonisation] est actif, |T236219:0|t[Lecture des lignes telluriques] augmente la régénération passive de mana et de santé de |cRXP_WARN_100% pendant 15 secondes|r.
    .usespell 1259705
step << Alliance
    .goto 2521,52.02,65.51
    >>Tuez |cRXP_ENEMY_Shriekling Matriarch::253283|r. Dépouillez-la pour |T6119035:0|t[|cRXP_LOOT_Shriekling Matriarch's Tête|r].
    .complete 92850,1 --1/1 Shriekling Matriarch's Head
    .mob Shriekling Matriarch::253283
step << Alliance
    .isQuestComplete 92850 -- The Missing Scholar 2
    .subzoneskip 16672,1 -- Shriekling Den
    .goto 2521,51.75,66.33,30,0
    .goto 2521,51.05,66.66,20,0
    .goto 2521,51.16,67.53,20,0
    .goto 2521,51.31,68.99,25 >>Quittez la grotte
step << Alliance
    #completewith FindAameliaWindfieldA
    >>Tuez les |cRXP_ENEMY_Windsong Crawlers::254588|r. Ramassez-les pour le |T133972:0|t[|cRXP_LOOT_Windsong Clampant Viande|r].
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
    .cast 1259416 >>Sautez de la tour et utilisez le |T132845:0|t[Marche sur l'air] pour voler vers les emplacements de point de passage.
    .usespell 1259416
    .macro Cancel Walk on Air,132845 >>Annulez Marche sur l'air.
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ayessa Dawnsinger::251968|r.
    .turnin 92700 >>Rendez la quête The Grand Skyseer.
    .accept 92708 >>Acceptez la quête A Grand Adventure
    .timer 75,Durée du RP
    .accept 93735 >>Acceptez la quête The Roué Assemblage 1.
    .target Ayessa Dawnsinger::251968
step << Horde
    .isOnQuest 93735 -- A Grand Adventure
    .cooldown spell,1259686,>0,1 -- Skysight
    -- .aura 1270893,1800 --Charged
    .goto 2521,59.154,79.783
    .cast 1259686 >>Utilisez |T1029587:0|t[Vue céleste] |cRXP_WARN_près d'une Convergence élémentaire|r pour obtenir |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[Charge].
    *Pendant que |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[Charge] est actif, |T1029587:0|t[Vue céleste] augmente la vitesse de déplacement et la vitesse de déplacement monté de |cRXP_WARN_30% pour 30 secondes|r.
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falfaan Halfwind::271465|r |cRXP_WARN_à l'intérieur de la maison|r.
    >>|cRXP_BUY_Achetez et équipez un|r |T7810733:0|t[Arc zéphrali].
    .collect 277110,1 --Collect Zephrali Bow
    .vendor 271465 >>Vendez les rebuts et réparez si nécessaire.
    *Ne vendez pas |T132832:0|t[Petit Eggs] et |T133972:0|t[Strider Viande]. << Horde
    *|cRXP_WARN_Nous en avons besoin pour Cuisine plus tard|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Horde Hunter
    #optional
    #completewith LeavingValanaarA
    .xp <9,1
    .itemcount 277110,1 --Zephrali Bow
    .equip 18,277110 >>|cRXP_WARN_Équipez le|r |T7810733:0|t[Arc zéphrali].
    .use 277110 --Zephrali Bow
step << Horde Warrior
    .xp <9,1
    .money <0.2151
    .isNotOnQuest 92679 --Blood Tithe
    .isQuestAvailable 92679 --Blood Tithe
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.28
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falfaan Halfwind::271465|r |cRXP_WARN_à l'intérieur de la maison|r.
    >>|cRXP_BUY_Achetez et équipez un|r |T7792097:0|t[Fracasseur zéphrali].
    .collect 277106,1 --Zephrali Smasher
    .vendor 271465 >>Vendez les rebuts et réparez si nécessaire.
    *Ne vendez pas |T132832:0|t[Petit Eggs] et |T133972:0|t[Strider Viande]. << Horde
    *|cRXP_WARN_Nous en avons besoin pour Cuisine plus tard|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Horde Warrior
    #optional
    #completewith LeavingValanaarA
    .xp <9,1
    .itemcount 277106,1 --Zephrali Smasher
    .equip 16,277106 >>|cRXP_WARN_Équipez le|r |T7792097:0|t[Fracasseur zéphrali].
    .use 277106 --Zephrali Smasher
step << Horde Shaman/Horde Druid
    .xp <9,1
    .money <0.2176
    .isNotOnQuest 92679 --Blood Tithe
    .isQuestAvailable 92679 --Blood Tithe
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.48
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falfaan Halfwind::271465|r |cRXP_WARN_à l'intérieur de la maison|r.
    >>|cRXP_BUY_Achetez et équipez un|r |T7798447:0|t[Grand bâton zéphrali].
    .collect 277109,1 --Zephrali Greatstaff
    .vendor 271465 >>Vendez les rebuts et réparez si nécessaire.
    *Ne vendez pas |T133970:0|t[Stringy Viande], |T132832:0|t[Petit Eggs] ou |T133972:0|t[Strider Viande]. << Alliance
    *Ne vendez pas |T132832:0|t[Petit Eggs] et |T133972:0|t[Strider Viande]. << Horde
    *|cRXP_WARN_Nous en avons besoin pour Cuisine plus tard|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Horde Shaman/Horde Druid
    #optional
    #completewith LeavingValanaarA
    .xp <9,1
    .itemcount 277109,1 --Zephrali Greatstaff
    .equip 16,277109 >>|cRXP_WARN_Équipez le|r |T7798447:0|t[Grand bâton zéphrali].
    .use 277109 --Zephrali Greatstaff
step << Horde Rogue
    .xp <9,1
    .money <0.1727
    .isNotOnQuest 92679 --Blood Tithe
    .isQuestAvailable 92679 --Blood Tithe
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.35
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falfaan Halfwind::271465|r |cRXP_WARN_à l'intérieur de la maison|r.
    >>|cRXP_BUY_Achetez et équipez un|r |T7791298:0|t[Gourdin zéphrali].
    .collect 277107,1 --Zephrali Bludgeon
    .vendor 271465 >>Vendez les rebuts et réparez si nécessaire.
    *Ne vendez pas |T132832:0|t[Petit Eggs] et |T133972:0|t[Strider Viande]. << Horde
    *|cRXP_WARN_Nous en avons besoin pour Cuisine plus tard|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Horde Rogue
    #optional
    #completewith LeavingValanaarA
    .xp <9,1
    .itemcount 277107,1 --Zephrali Bludgeon
    .equip 16,277107 >>|cRXP_WARN_Équipez le|r |T7791298:0|t[Gourdin zéphrali].
    .use 277107 --Zephrali Bludgeon
-- step << Horde
--     .train 2366,3 -- Herbalism Trained
--     .isQuestComplete 97968 -- Camping 101: Herbalism
--     .goto 2521,57.890,75.514
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syriel Nightrain::254345|r.
--     .target Syriel Nightrain::254345
--     .turnin 97968 >>Turn in Camping 101: Herbalism
step << Hunter Horde
    .money <0.1345
    .isOnQuest 93735 -- The Broken Construct
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.82
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falfaan Halfwind::271465|r |cRXP_WARN_à l'intérieur de la maison|r.
    >>|cRXP_BUY_Achetez et équipez un|r |T7810733:0|t[Arc zéphrali].
    .collect 277110,1 --Collect Zephrali Bow
    .vendor 271465 >>Vendez les rebuts et réparez si nécessaire.
    *Ne vendez pas |T133970:0|t[Stringy Viande], |T132832:0|t[Petit Eggs] ou |T133972:0|t[Strider Viande]. << Alliance
    *Ne vendez pas |T132832:0|t[Petit Eggs] et |T133972:0|t[Strider Viande]. << Horde
    *|cRXP_WARN_Nous en avons besoin pour Cuisine plus tard|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Horde
    #label LeavingValanaarA
    .goto 2521,59.064,72.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Riaani Nightwind::256083|r.
    .target Riaani Nightwind::256083
    .turnin 93735 >>Rendez la quête The Roué Assemblage 1.
    .accept 93737 >>Acceptez la quête The Roué Assemblage 2.
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
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Construct Parts|r |cRXP_WARN_à l'intérieur de la grotte à l'étage inférieur|r.
    .complete 93737,2 --|1/1 Obtain Crystallized lightning from the Shriekling Cave
step << Horde
    #completewith BrokenConstructA
    .goto 2521,51.397,68.644,15 >>Entrez dans la grotte
step << Horde
    --@THIDDI: Not sure if worth it.
    #requires BrokenConstructA
    #loop
    .goto 2521,51.434,67.603,15,0
    .goto 2521,51.874,67.221,15,0
    .goto 2521,52.933,66.084,15,0
    .goto 2521,53.201,65.424,15,0
    .goto 2521,52.752,64.732,15,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Construct Parts|r |cRXP_WARN_à l'intérieur de la grotte à l'étage inférieur|r.
    .complete 93737,2 --|1/1 Obtain Crystallized lightning from the Shriekling Cave

step << Horde
    #completewith next
    #label BrokenConstructB
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aamelia Windfield::252800|r.
    *|cRXP_WARN_Elle peut se déplacer entre plusieurs emplacements pendant une séquence de jeu de rôle. Attendez au point de passage|r.
    .complete 92679,1 --1/1 Find Aamelia Windfield
    .target Aamelia Windfield::252800
step << Horde
    #completewith BrokenConstructB
    .goto 2521,51.397,68.644,15 >>Quittez la grotte

-- ============================================================================
-- Shared Route Resumes at Windfield Orchard
-- ============================================================================

step
    #requires BrokenConstructB << Horde
    #label FindAameliaWindfieldA
    .goto 2521,46.71,81.94
    --fix loop later
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aamelia Windfield::252800|r.
    *|cRXP_WARN_Elle peut se déplacer entre les emplacements pendant une séquence de jeu de rôle|r.
    *|cRXP_WARN_Cherchez-la à distance ou suivez son dialogue ; la flèche marque uniquement une position approximative|r.
    *|cRXP_WARN_Si une Tornade est présente, utilisez-la pour voyager plus rapidement|r.
    *|cRXP_WARN_Si vous traversez le verger, attention aux bandits tapis dans l'ombre|r.
    .complete 92679,1 --1/1 Find Aamelia Windfield
    .target Aamelia Windfield::252800
step
    --fix loop later
    .goto 2521,46.71,81.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aamelia Windfield::252800|r.
    *|cRXP_WARN_Elle peut se déplacer entre les emplacements pendant une séquence de jeu de rôle|r.
    *|cRXP_WARN_Cherchez-la à distance ou suivez son dialogue ; la flèche marque uniquement une position approximative|r.
    .turnin 92679 >>Rendez la quête Dîme de sang
    .accept 92682 >>Acceptez la quête Rendez-vous utile
    .accept 92684 >>Acceptez la quête Ornery Ornery Galestriders
    .accept 92683 >>Acceptez la quête Flutterfly Poussière
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
    --fix loop later
    -- #loop
    -- .goto 2521,46.92,81.63,30,0
    -- .goto 2521,48.08,80.63,30,0
    -- .goto 2521,47.43,79.26,30,0
    .goto 2521,46.26,78.04
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_Ripe Stormapples|r.
    >>Tuez |cRXP_ENEMY_Hungry Bandits::252802|r |cRXP_WARN_(tapis dans l'ombre)|r.
    *Conseils de Chasseur : spammez la touche Tab pour les cibler rapidement, utilisez Marque du chasseur sur eux afin de pouvoir vous enfuir et les frapper de plus loin. << Hunter
    .complete 92682,1 --10/10 Ripe Stormapple
    .complete 92682,2 --5/5 Hungry Bandit slain
    .mob +Hungry Bandit::252802
step << Horde
    .isOnQuest 92684 -- Ornery Ornery Galestriders
    .cooldown spell,1259686,>0,1 -- Skysight
    -- .aura 1270893,1800 --Charged
    .goto 2521,48.416,80.537
    .cast 1259686 >>Utilisez |T1029587:0|t[Vue céleste] |cRXP_WARN_près d'une Convergence élémentaire|r pour obtenir |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[Charge].
    *Pendant que |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[Charge] est actif, |T1029587:0|t[Vue céleste] augmente la vitesse de déplacement et la vitesse de déplacement monté de |cRXP_WARN_30% pour 30 secondes|r.
step
    #optional
    #completewith WhatIsMyPurposeA
    >>Tuez |cRXP_ENEMY_Ornery Galestriders::251707|r. Dépouille-les pour |T2066012:0|t[|cRXP_LOOT_Lowlands Galestrider Tenderloins|r].
    *Attention : |cRXP_WARN_Ornery Galestriders|cRXP_ENEMY_ utilisent |T132156:0|t[Nuage de poussière] pour réduire vos chances de toucher.|r
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step
    #optional
    #completewith WhatIsMyPurposeA
    >>Utilisez répétitivement |T537768:0|t[Tapette à voltemouches] sur |cRXP_ENEMY_Flutterflies::251622|r
    >>|TInterface/cursor/crosshair/interact.blp:16|tCliquez sur |cRXP_PICK_Flutterfly Poussière|r.
    *|cRXP_WARN_Si une Flutterfly ne s'envole pas, utilisez la tapette sur elle à nouveau|r << !Mage !Druid
    *|cRXP_WARN_Lancez|r |T136071:0|t[Métamorphose] |cRXP_WARN_et utilisez la tapette sur la même Flutterfly pour de la poussière supplémentaire|r. << Mage
    *|cRXP_WARN_Lancez|r |T136100:0|t[Sarments] |cRXP_WARN_et utilisez la tapette sur la même Flutterfly pour de la poussière supplémentaire|r. << Druid
    .complete 92683,1 --5/5 Flutterfly Dust
    .mob Flutterfly::251622
    .use 253666 -- Flutterfly Swatter
step
    #label WhatIsMyPurposeA
    #loop
    .goto 2521,49.085,78.358,12,0
    .goto 2521,48.621,78.385,12,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Malfunctioning Cyclone Assemblage::250929|r.
    .accept 92698 >>Acceptez la quête What Is My Purpose?
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
    >>Tuez |cRXP_ENEMY_Ornery Galestriders::251707|r. Dépouille-les pour |T2066012:0|t[|cRXP_LOOT_Lowlands Galestrider Tenderloins|r].
        *Attention : |cRXP_WARN_Ornery Galestriders|cRXP_ENEMY_ utilisent |T132156:0|t[Nuage de poussière] pour réduire vos chances de toucher.|r
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step
    >>Utilisez répétitivement |T537768:0|t[Tapette à voltemouches] sur |cRXP_ENEMY_Flutterflies::251622|r
    >>|TInterface/cursor/crosshair/interact.blp:16|tCliquez sur |cRXP_PICK_Flutterfly Poussière|r.
    *|cRXP_WARN_Si une Flutterfly ne s'envole pas, utilisez la tapette sur elle à nouveau|r << !Mage !Druid
    *|cRXP_WARN_Lancez|r |T136071:0|t[Métamorphose] |cRXP_WARN_et utilisez la tapette sur la même Flutterfly pour de la poussière supplémentaire|r. << Mage
    *|cRXP_WARN_Lancez|r |T136100:0|t[Sarments] |cRXP_WARN_et utilisez la tapette sur la même Flutterfly pour de la poussière supplémentaire|r. << Druid
    .complete 92683,1 --5/5 Flutterfly Dust
    .mob Flutterfly::251622
    .use 253666 -- Flutterfly Swatter
step
    #label GalestriderTenderloinA
    >>Tuez |cRXP_ENEMY_Ornery Galestriders::251707|r. Dépouille-les pour |T2066012:0|t[|cRXP_LOOT_Lowlands Galestrider Tenderloins|r].
    *Attention : |cRXP_WARN_Ornery Galestriders|cRXP_ENEMY_ utilisent |T132156:0|t[Nuage de poussière] pour réduire vos chances de toucher.|r
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step
    #loop
    .goto 2521,46.71,81.94,40,0
    .goto 2521,47.511,78.490,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aamelia Windfield::252800|r.
    *|cRXP_WARN_Si une Tornade est à proximité, utilisez-la pour un trajet plus rapide|r.
    *|cRXP_WARN_Elle peut se déplacer entre les emplacements pendant une séquence de jeu de rôle|r.
    *|cRXP_WARN_Cherchez-la à distance ou suivez son dialogue ; la flèche marque uniquement une position approximative|r.
    .turnin 92682 >>Rendez la quête Rendez-vous utile
    .turnin 92684,3 >>Rendez la quête Ornery Ornery Galestriders
    .turnin 92698 >>Rendez la quête What Is My Purpose?
    .turnin 92683 >>Rendez la quête Flutterfly Poussière
    .accept 92685 >>Acceptez la quête The Hills Have Les regards
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
    .xp 10 >>Montez jusqu'au niveau 10
step << Horde Shaman
    #completewith next
    .hs >>Utilisez votre Pierre de foyer pour vous téléporter à Valanaar
    .cooldown item,6948,>0 --Hearthstone
step << Horde Shaman
    .isQuestAvailable 97243 -- Deliver the News
    -- .subzoneskip 16638,1 -- Valanaar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Donaal Downbreeze|r.
    .vendor 255940 >>Vendez tout ce dont nous n'avez pas besoin
    .collect 1179,20 >>Achetez |T132815:0|t[Lait glacé] << Mage/Druid/Priest/Warlock/Paladin/Hunter/Shaman
    *Ne vendez pas |T132832:0|t[Petit Eggs] et |T133972:0|t[Strider Viande]. << Horde
    *|cRXP_WARN_Nous en avons besoin pour Cuisine plus tard|r.
    .target Donaal Downbreeze::255940
    .goto 2521,62.180,72.616
    .skipgossipid 137078
step << Horde Shaman
    .goto 2521,58.313,78.499
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sessaria Skystride::252382|r.
    .accept 97243 >>Acceptez la quête L'appel du feu
    .target Sessaria Skystride::252382
step << Horde Shaman
    .money <0.12
    .isQuestAvailable 97243 -- Call of Fire
    .xp <10,1
    .subzoneskip 16638,1 -- Valanaar
    .goto 2521,58.313,78.499
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sessaria Skystride::252382|r.
    .trainer >>Apprenez vos sorts de classe
    .target Sessaria Skystride::252382
step << Horde Shaman
    #label CallOfFireA
    .goto 2521,54.402,77.329,30,0
    .goto 2521,51.240,86.187
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Olariaan Swiftburn::268592|r.
    .turnin 97243 >>Rendez la quête L'appel du feu
    .accept 97244 >>Acceptez la quête L'appel du feu
    .target Olariaan Swiftburn::268592
step << Horde Shaman
    .isOnQuest 97244
    .isQuestNotComplete 97244
    .goto 2521,50.8,89.6
    .subzone 16593 >>Sautez de la falaise
step << Horde Shaman
    #ignorecorpse
    .isOnQuest 97244
    .isQuestNotComplete 97244
    .showwhiledead
    .goto 2521,54.99,68.14
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Spirit Soins::6491|r.
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step << Horde Shaman
    .goto 2521,64.380,63.586
    >>Tuez |cRXP_ENEMY_Skypriest Faladiel|r. Ramassez-le pour |T839910:0|t[|cRXP_LOOT_Cœur de Faladiel|r].
    .complete 97244,1 --|1/1 Faladiel's Heart
    .mob Skypriest Faladiel::268602
step << Horde Shaman
    #completewith next
    .isOnQuest 97244
    .isQuestComplete 97244
    .goto 2521,62.384,64.393,-1
    .goto 2521,54.99,68.14,-1
    +Mourez et ressuscitez auprès du |cRXP_FRIENDLY_Spirit Soins::6491|r.
step << Horde Shaman
    .isOnQuest 97244
    .isQuestComplete 97244
    #ignorecorpse
    .showwhiledead
    .goto 2521,54.99,68.14
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Spirit Soins::6491|r.
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step << Horde Shaman
    #label CallOfFireB
    .goto 2521,51.241,86.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Olariaan Swiftburn|r.
    .target Olariaan Swiftburn::268592
    .turnin 97244 >>Rendez la quête L'appel du feu
    .accept 97245 >>Acceptez la quête L'appel du feu

-- ============================================================================
-- The Hills Have Eyes: Bandit Hunt
-- ============================================================================

step << Alliance
    .isOnQuest 92685 -- The Hills Have Eyes
    .isQuestNotComplete 92685 -- The Hills Have Eyes
    .subzoneskip 16663,1 -- Windfield Orchard
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .aura 1259691,600 --Attuned
    .goto 2521,45.73,80.86
    .cast 1259705 >>Utilisez |T236219:0|t[Lecture des lignes telluriques] |cRXP_WARN_près d'une ligne d'énergie|r pour obtenir |T135737:0|t[Harmonisation].
    *Pendant que |T135737:0|t[Harmonisation] est actif, |T236219:0|t[Lecture des lignes telluriques] augmente la régénération passive de mana et de santé de |cRXP_WARN_100% pendant 15 secondes|r.
    .usespell 1259705
step
    #completewith next
    #label Bandit Highwaymen
    *|cRXP_WARN_Équipez la|r |T7791298:0|t[Tapette à voltemouches] si vous n'avez pas |T7791298:0|t[Gourdin zéphrali]. << Rogue
    >>Tuez |cRXP_ENEMY_Bandit Highwaymen::252820|r. Ramassez-les pour |T133693:0|t[|cRXP_LOOT_Blood-Stained Bandit Masks|r].
    *|cRXP_WARN_Attention aux ennemis dissimulés dans le verger|r.
    .complete 92685,1 --7/7 Blood-Stained Bandit Mask
    .mob Bandit Highwaymen::252820
    .use 263329 << Rogue -- Flutterfly Swatter
step
    #completewith Bandit Highwaymen
    .goto 2521,44.81,74.4,30 >>Montez la montagne
    *|cRXP_WARN_Si vous voyez un Tornade, utilisez-le pour voyager plus vite|r.
step << Horde
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_Construct Parts|r.
    .complete 93737,4 --|1/1 Obtain Air Construct Core from the Bandit Camp
step
    #requires Bandit Highwaymen
    #loop
    .goto 2521,45.615,72.361,35,0
    .goto 2521,43.551,74.999,35,0
    -- .goto 2521,45.760,78.419,35,0
    >>Tuez |cRXP_ENEMY_Bandit Highwaymen::252820|r. Ramassez-les pour |T133693:0|t[|cRXP_LOOT_Blood-Stained Bandit Masks|r].
    .complete 92685,1 --7/7 Blood-Stained Bandit Mask
    .mob Bandit Highwaymen::252820
step << Horde
    #loop
    .goto 2521,45.615,72.361,35,0
    .goto 2521,43.551,74.999,35,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_Construct Parts|r.
    .complete 93737,4 --|1/1 Obtain Air Construct Core from the Bandit Camp
step << Horde Shaman
    .goto 2521,42.393,68.887
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_Kuramaa's Stump|r.
    >>Tuez |cRXP_ENEMY_Kuramaa|r. Ramassez-le pour |T3549050:0|t[|cRXP_LOOT_Masque de Kuramaa|r].
    *|cRXP_WARN_Il vous repousse et subit des dégâts de feu supplémentaires|r.
    .complete 97245,1 --|1/1 Kuramaa's Mask
    .mob Kuramaa::268605
    .usespell 8024
step
    #loop
    .goto 2521,45.615,72.361,35,0
    .goto 2521,43.551,74.999,35,0
    .xp 10 >>Montez jusqu'au niveau 10
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aamelia Windfield|r.
    *|cRXP_WARN_Elle peut se déplacer entre les emplacements pendant une séquence de jeu de rôle|r.
    *|cRXP_WARN_Cherchez-la de loin ou suivez son dialogue; la flèche indique seulement une position approximative|r.
    .turnin 92685 >>Rendez la quête The Hills Have Les regards
    .accept 92693 >>Acceptez la quête État Our Ground << Alliance
    .target Aamelia Windfield::252800
step
    .isOnQuest 92685 -- The Hills Have Eyes
    -- .subzoneskip 16626,1 -- Gustberry Lowlands
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,43.84,75.53,30,0
    .goto 2521,44.06,76.19,15,0
    .goto 2521,47.511,78.490
    .cast 1259416 >>Sautez du haut de la montagne et utilisez |T132845:0|t[Marche sur l'air] |cRXP_WARN_en l'air|r pour voler vers la position.
    .usespell 1259416
step
    #loop
    .goto 2521,46.71,81.94,30,0
    .goto 2521,47.511,78.490,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aamelia Windfield|r.
    *|cRXP_WARN_Elle peut se déplacer entre les emplacements pendant une séquence de jeu de rôle|r.
    *|cRXP_WARN_Cherchez-la de loin ou suivez son dialogue; la flèche indique seulement une position approximative|r.
    *Vous pouvez sauter du haut de la montagne et utiliser |T132845:0|t[Marche sur l'air] |cRXP_WARN_en l'air|r pour voler vers la position.
    *|cRXP_WARN_Attention aux bandits dissimulés sur le chemin|r.
    .turnin 92685 >>Rendez la quête The Hills Have Les regards
    .accept 92693 >>Acceptez la quête État Our Ground << Alliance
    .target Aamelia Windfield::252800
step << Alliance
    .goto 2521,46.71,81.94
    >>Retournez à la position principale de |cRXP_FRIENDLY_Aamelia Windfield|r et parlez-lui.
    .complete 92693,1 --1/1 Speak with Aamelia Windfield
    .timer 75,Durée du RP
    .target Aamelia Windfield::252800
    .skipgossipid 136302
step << Alliance
    .goto 2521,47.51,78.44
    >>Suivez |cRXP_FRIENDLY_Aamelia Windfield|r. Attendez la fin du jeu de rôle.
    *Quand Aamelia s'arrête, posez un Feu de camp si vous en avez un et qu'aucun n'est à proximité. Commencez la cuisine pour monter en niveaux.
    .complete 92693,2 --1/1 Follow Aamelia and make your final stand
    .use 279981 -- Basic Campfire Kit
step << Alliance
    .goto 2521,47.51,78.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aamelia Windfield|r.
    *|cRXP_WARN_Rendez la quête immédiatement ; Aamelia retournera bientôt à sa position d'origine|r.
    .turnin 92693 >>Rendez la quête État Our Ground
    .accept 92703 >>Acceptez la quête Deliver the Actus
    .target Aamelia Windfield::252800
step << Horde
    .isOnQuest 92703 -- Deliver the News
    .goto 2521,48.445,80.591
    .cooldown spell,1259686,>0,1 -- Skysight
    -- .aura 1270893,1800 --Charged
    .cast 1259686 >>Utilisez |T1029587:0|t[Vue céleste] |cRXP_WARN_près d'une Convergence élémentaire|r pour obtenir |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[Charge].
    *Pendant que |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[Charge] est actif, |T1029587:0|t[Vue céleste] augmente la vitesse de déplacement et la vitesse de déplacement monté de |cRXP_WARN_30% pour 30 secondes|r.
step << Horde !Shaman
    #ignorecorpse
    .isOnQuest 92703
    .showwhiledead
    .goto 2521,48.823,83.150,-1
    .goto 2521,54.99,68.14,-1
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tMourez puis parlez au |cRXP_FRIENDLY_Spirit Soins::6491|r.
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491

-- ============================================================================
-- City: Alliance and Non-Shaman Horde
-- ============================================================================

step << Alliance
    .isQuestAvailable 92703 -- Deliver the News
    .subzoneskip 16638 -- Valanaar
    .hs >>Utilisez votre Pierre de foyer pour vous téléporter à Valanaar
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
step << Alliance/Horde Hunter
    .isQuestAvailable 92703 -- Deliver the News
    -- .subzoneskip 16638,1 -- Valanaar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Donaal Downbreeze|r.
    *|cRXP_BUY_Achetez|r |T134534:0|t[Tête de champignon sylvestre] |cRXP_BUY_auprès de lui|r. |cRXP_BUY_Vous utiliserez ceci pour nourrir votre mascotte plus tard|r << Hunter
    .vendor 255940 >>Vendez tout ce dont nous n'avez pas besoin
    .collect 1179,20 >>Achetez |T132815:0|t[Lait glacé] << Mage/Druid/Priest/Warlock/Paladin/Hunter
    .collect 4604,5 << Hunter -- Forest Mushroom
    *Ne vendez pas |T133970:0|t[Stringy Viande], |T132832:0|t[Petit Eggs] ou |T133972:0|t[Strider Viande]. << Alliance
    *Ne vendez pas |T132832:0|t[Petit Eggs] et |T133972:0|t[Strider Viande]. << Horde
    *|cRXP_WARN_Nous en avons besoin pour Cuisine plus tard|r.
    .target Donaal Downbreeze::255940
    .goto 2521,62.180,72.616
    .skipgossipid 137078

-- ============================================================================
-- Horde Shaman: Call of Fire Finale
-- ============================================================================

step << Horde Shaman
    .goto 2521,51.240,86.187
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Olariaan Swiftburn|r.
    .target Olariaan Swiftburn::268592
    .turnin 97245 >>Rendez la quête L'appel du feu
    .accept 97257 >>Acceptez la quête L'appel du feu
    .timer 35,Durée du RP
step << Horde Shaman
    .goto 2521,51.265,85.927
    >>Attendez la fin du jeu de rôle. Utilisez la |T135432:0|t[Torche of Flamme éternelle] sur le |cRXP_PICK_Brazier of Offrande|r enflammé.
    .complete 97257,1 --|1/1 Complete the Ritual with Olariaan
    .use 277329 -- Torch of Eternal Flame
step << Horde Shaman
    .goto 2521,52.400,81.309,25,0
    .goto 2521,54.907,76.598,15,0
    .goto 2521,58.312,78.827
    >>Vous avez environ 5 minutes pour revenir.
    *|cRXP_WARN_Si une Tornade est à proximité, utilisez-la pour un trajet plus rapide|r.
    .complete 97257,2 --|1/1 Light the Brazier of Eternal Flame
    .skipgossipid 140778
step << Horde Shaman
    .goto 2521,58.315,78.512
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sessaria Skystride::252382|r.
    .target Sessaria Skystride::252382
    .turnin 97257 >>Rendez la quête L'appel du feu
-- step << Horde Shaman
--     #completewith next
--     >>Kill |cRXP_ENEMY_Skyhoppers::251314|r.
--     *|cRXP_WARN_This quest is optional. You can skip it if there are too many other players doing it at the same time|r.
--     .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
--     .mob Skyhopper::251314

-- ============================================================================
-- City: Horde Shaman
-- ============================================================================

step << Horde !Hunter
    .isOnQuest 92703
    .goto 2521,58.986,75.460
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Railee Thriceforged::257422|r.
    .vendor 257422 >>|cRXP_WARN_Allez au Vendeur et réparez si nécessaire|r.
    *Ne vendez pas |T132832:0|t[Petit Eggs] et |T133972:0|t[Strider Viande].
    *|cRXP_WARN_Nous en avons besoin pour Cuisine plus tard|r.
    .target Railee Thriceforged::257422


-- ============================================================================
-- Shared City Tour at Level 10
-- ============================================================================

step
    .isQuestComplete 92703 -- Deliver the News
    .goto 2521,61.94,72.8,10,0
    .goto 2521,62.05,73.09,8,0
    .goto 2521,62.11,73.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alvarion Windfield::252448|r |cRXP_WARN_au deuxième étage|r.
    .turnin 92703,1 >>Rendez la quête Deliver the Actus << Warrior/Shaman/Paladin
    .turnin 92703,2 >>Rendez la quête Deliver the Actus << Druid/Priest
    .turnin 92703,3 >>Rendez la quête Deliver the Actus << Rogue
    .turnin 92703 >>Rendez la quête Deliver the Actus << Hunter/Mage/Warlock
    .target Alvarion Windfield::252448
step
    #completewith Accept Catching Wind
    .equip 16,263312 >>|cRXP_WARN_Équipez le|r |T134435:0|t[Placement de pelle] << Warrior/Shaman/Paladin
    .equip 16,263314 >>|cRXP_WARN_Équipez le|r |T133057:0|t[Marteau à toiture] << Druid/Priest
    .equip 16,263313 >>|cRXP_WARN_Équipez le|r |T134520:0|t[Clé à molette fiable] << Rogue
    .use 263312 << Warrior/Shaman/Paladin -- Planting Shovel
    .use 263314 << Druid/Priest -- Roofing Hammer
    .use 263313 << Rogue -- Trusty Wrench
step << Alliance
    #completewith Turn in The Missing Scholar
    .aura 1258510
    >>Tuez les |cRXP_ENEMY_Skyhoppers::251314|r.
    *|cRXP_WARN_Si vous trouvez une Tornade, touchez-la pour obtenir son buff de vitesse|r.
    *|cRXP_WARN_Tandis que le buff de vitesse de Tornade est actif, évitez de les tuer|r.
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belann Windwood::256507|r.
    .target Belann Windwood::256507
    .accept 93791 >>Acceptez la quête Parler with Belann
    .turnin 93791 >>Rendez la quête Parler with Belann
    .accept 93797 >>Acceptez la quête Boughs in the Vent
step << Warrior
    .goto 2521,59.889,72.869
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
    .target Seena Skybreaker::252377
    .accept 94003 >>Acceptez la quête Le Brise-ciel Barricade
step << Warrior
    .money <0.12
    .xp <10,1
    .goto 2521,59.55,73.3,25,0
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
    .train 6546 >>Apprenez [Pourfendre (Rang 2)]
    .train 2687 >>Apprenez [Rage sanguinaire]
    .skipgossipid 136813
    .target Seena Skybreaker::252377
step << Warrior/Paladin
    .xp <9,1
    .money <0.2151
    .isQuestAvailable 98512 --Al'Aketh Assassins
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.28
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falfaan Halfwind::271465|r |cRXP_WARN_à l'intérieur de la maison|r.
    >>|cRXP_BUY_Achetez et équipez un|r |T7792097:0|t[Fracasseur zéphrali].
    .collect 277106,1 --Zephrali Smasher
    .vendor 271465 >>Vendez les rebuts et réparez si nécessaire.
    *Ne vendez pas |T133970:0|t[Stringy Viande], |T132832:0|t[Petit Eggs] ou |T133972:0|t[Strider Viande]. << Alliance
    *Ne vendez pas |T132832:0|t[Petit Eggs] et |T133972:0|t[Strider Viande]. << Horde
    *|cRXP_WARN_Nous en avons besoin pour Cuisine plus tard|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Warrior/Paladin
    #optional
    #completewith Accept Catching Wind << Alliance
    #completewith Learn << Horde
    .xp <9,1
    .itemcount 277106,1 --Zephrali Smasher
    .equip 16,277106 >>|cRXP_WARN_Équipez le|r |T7792097:0|t[Fracasseur zéphrali].
    .use 277106 --Zephrali Smasher
step << Shaman/Druid
    .xp <9,1
    .money <0.2176
    .isQuestAvailable 98512 --Al'Aketh Assassins
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.48
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falfaan Halfwind::271465|r |cRXP_WARN_à l'intérieur de la maison|r.
    >>|cRXP_BUY_Achetez et équipez un|r |T7798447:0|t[Grand bâton zéphrali].
    .collect 277109,1 --Zephrali Greatstaff
    .vendor 271465 >>Vendez les rebuts et réparez si nécessaire. << Druid
    *Ne vendez pas |T133970:0|t[Stringy Viande], |T132832:0|t[Petit Eggs] ou |T133972:0|t[Strider Viande]. << Alliance
    *Ne vendez pas |T132832:0|t[Petit Eggs] et |T133972:0|t[Strider Viande]. << Horde Druid
    *|cRXP_WARN_Nous en avons besoin pour Cuisine plus tard|r. << Druid
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Shaman/Druid
    #optional
    #completewith Accept Catching Wind << Alliance
    #completewith Learn << Horde
    .xp <9,1
    .itemcount 277109,1 --Zephrali Greatstaff
    .equip 16,277109 >>|cRXP_WARN_Équipez le|r |T7798447:0|t[Grand bâton zéphrali].
    .use 277109 --Zephrali Greatstaff
step << Rogue
    .money <0.09
    -- .train 2070,1 -- Sap (Rank 2) Not Trained
    .train 6774,1 -- Slice and Dice (Rank 2) Not Trained
    .train 8696,1 -- Sprint (Rank 2) Not Trained
    .xp <10,1
    .goto 2521,59.55,73.3,30,0
    .goto 2521,59.9,72.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eltheen Nightbreeze::252379|r.
    -- *|cRXP_WARN_You can interact with him through walls not sure if we want to add it|r
    .train 674 >>Apprenez [Ambidextrie]
    -- .train 6770 >>Train |T132310:0|t[Sap]
    .train 5171 >>Apprenez [Débiter]
    .train 2983 >>Apprenez [Sprint]
    .skipgossipid 136810
    .target Eltheen Nightbreeze::252379
step << Rogue
    .xp <9,1
    .money <0.1727
    .isQuestAvailable 98512 --Al'Aketh Assassins
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.35
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falfaan Halfwind::271465|r |cRXP_WARN_à l'intérieur de la maison|r.
    >>|cRXP_BUY_Achetez et équipez un|r |T7791298:0|t[Gourdin zéphrali].
    .collect 277107,1 --Zephrali Bludgeon
    .vendor 271465 >>Vendez les rebuts et réparez si nécessaire.
    *Ne vendez pas |T133970:0|t[Stringy Viande], |T132832:0|t[Petit Eggs] ou |T133972:0|t[Strider Viande]. << Alliance
    *Ne vendez pas |T132832:0|t[Petit Eggs] et |T133972:0|t[Strider Viande]. << Horde
    *|cRXP_WARN_Nous en avons besoin pour Cuisine plus tard|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Rogue
    #optional
    #completewith Accept Catching Wind << Alliance
    #completewith Learn << Horde
    .xp <9,1
    .itemcount 277107,1 --Zephrali Bludgeon
    .equip 16,277107 >>|cRXP_WARN_Équipez le|r |T7791298:0|t[Gourdin zéphrali].
    .use 277107 --Zephrali Bludgeon
step << Hunter
    .goto 2521,59.55,73.3,25,0
    .goto 2521,59.572,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .accept 94978 >>Acceptez la quête Dompter la bête
    .target Quel'ana Quickgale::252389
step << Hunter
    .money <0.08
    .xp <10,1
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .train 13165 >>Apprenez |T136076:0|t[Aspect du faucon]
    .train 13549 >>S'entraîner |T132204:0|t[Morsure de serpent (Rang 2)]
    .skipgossipid 136808
    .target Quel'ana Quickgale::252389
step << Hunter
    .xp <9,1
    .money <0.1345
    .isQuestAvailable 98512 --Al'Aketh Assassins
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.82
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falfaan Halfwind::271465|r |cRXP_WARN_à l'intérieur de la maison|r.
    >>|cRXP_BUY_Achetez et équipez un|r |T7810733:0|t[Arc zéphrali]
    .collect 277110,1 --Collect Zephrali Bow
    .vendor 271465 >>Vendez les objets inutiles et réparez si nécessaire
    *Ne vendez pas |T133970:0|t[Stringy Viande], |T132832:0|t[Petit Eggs] ou |T133972:0|t[Strider Viande]. << Alliance
    *Ne vendez pas |T132832:0|t[Petit Eggs] et |T133972:0|t[Strider Viande]. << Horde
    *|cRXP_WARN_Nous en avons besoin pour Cuisine plus tard|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Hunter
    #optional
    #completewith Accept Catching Wind << Alliance
    #completewith Learn << Horde
    .xp <9,1
    .itemcount 277110,1 --Zephrali Bow
    .equip 18,277110 >>|cRXP_WARN_Équipez le|r |T7810733:0|t[Arc zéphrali].
    .use 277110 --Zephrali Bow
step << Horde Druid
    .subzoneskip 16638,1 -- Valanaar
    .isNotOnQuest 94006 -- The Great Ursera Spirit
    .isQuestAvailable 94006 -- The Great Ursera Spirit
    #completewith next
    .goto 2521,63.33,73.65,15,0
    .goto 2521,63.973,75.095,25 >>Passez par-dessus la montagne
step << Horde Druid
    .goto 2521,63.983,75.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r.
    .accept 94006 >>Acceptez la quête « The Great Ursera Esprit »
    .target Lotheluum Starbreeze::252359
step << Alliance Druid
    .xp <10,1
    .subzoneskip 16638,1 -- Valanaar
    .isNotOnQuest 94006 -- The Great Ursera Spirit
    .isQuestAvailable 94006 -- The Great Ursera Spirit
    #completewith next
    .goto 2521,63.33,73.65,15,0
    .goto 2521,63.973,75.095,25 >>Passez par-dessus la montagne
step << Alliance Druid
    .xp <10,1
    .goto 2521,63.983,75.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r.
    .accept 94006 >>Acceptez la quête « The Great Ursera Esprit »
    .target Lotheluum Starbreeze::252359
step << Druid
    .money <0.12
    .xp <10,1
    .goto 2521,63.983,75.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r.
    .train 16689 >>S'entraîner |T136063:0|t[Emprise de la nature]
    -- .train 99 >>Train |TInterface/Icons/Ability_Druid_DemoralizingRoar:0|t[Demoralizing Roar]
    .train 1058 >>S'entraîner |T136081:0|t[Récupération (Rang 2)]
    .train 5232 >>S'entraîner |T136078:0|t[Marque du fauve (Rang 2)]
    .train 8924 >>S'entraîner |T136096:0|t[Eclat lunaire (Rang 2)]
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anathamaas Aetherwind::252373|r
    .train 168 >>S'entraîner |T135843:0|t[Armure de givre]
    .train 122 >>S'entraîner |T135848:0|t[Veilleur du puits Solanian]
    .train 5504 >>S'entraîner |T132794:0|t[Invocation d'eau]
    -- .train 587 >>Train |T133952:0|t[Conjure Food]
    .train 5505 >>S'entraîner |T132794:0|t[Invocation d'eau (Rang 2)]
    .skipgossipid 136807
    .target Anathamaas Aetherwind::252373
step << Alliance
    #label Turn in The Missing Scholar
    *|cRXP_WARN_Maniez à deux mains la|r |T134520:0|t[|cRXP_LOOT_Clé à molette fiable|r] |cRXP_WARN_et|r |T7791298:0|t[|cRXP_LOOT_Tapette à voltemouches|r] |cRXP_WARN_si vous n'avez pas le|r |T7791298:0|t[Gourdin zéphrali].<< Rogue
    .goto 2521,66.21,79.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fillion Flamebreeze::253284|r.
    .turnin 92850 >>Rendez la quête « The Manquant Scholar 2 »
    .accept 99260 >>Acceptez la quête Fillion's Mission
    .target Fillion Flamebreeze::253284
    .use 263313 << Rogue -- Trusty Wrench
    .use 263329 << Rogue -- Flutterfly Swatter
step << Alliance
    -- #completewith Protect the Index
    #completewith Accept Catching Wind
    .subzoneskip 16638,1 -- Valanaar
    .aura 1258510
    >>Tuez |cRXP_ENEMY_Skyhoppers::251314|r.
    *|cRXP_WARN_Si vous trouvez une Tornade, touchez-la pour obtenir son bonus de vitesse|r.
    *|cRXP_WARN_Pendant que le bonus de vitesse est actif, ne les tuez pas|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
-- step << Rogue
--     .goto 2521,63.027,77.807
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Antelariaa Cloudgaze::252390|r.
--     *|cRXP_BUY_Buy|r 600 |T132382:0|t[Sharp Arrows]
--     .collect 2515,600 --Sharp Arrows (600)
--     .target Antelariaa Cloudgaze::252390
step << Alliance
    #label Accept Catching Wind
    .goto 2521,66.627,79.942
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elaadrin Evengale::252475|r.
    .target Elaadrin Evengale::252475
    .turnin 99260 >>Rendez la quête Fillion's Mission
    .accept 92840 >>Acceptez la quête Danger imminent

-- ============================================================================
-- Horde Hunter: Taming the Beast 1
-- ============================================================================

step << Horde Hunter
    #loop
    .goto 2521,54.460,78.811,48,0
    .goto 2521,51.968,73.084,35,0
    .goto 2521,53.126,73.502,20,0
    .goto 2521,51.268,69.758,35,0
    .use 267272 >>|cRXP_WARN_Utilisez votre|r |T132164:0|t[Bâtonnet de domptage] |cRXP_WARN_sur un|r |cRXP_ENEMY_Windsong Clampant::254588|r |cRXP_WARN_à portée maximale|r.
    .complete 94978,1 --Tame a Windsong Crawler
    .mob Windsong Crawler::254588
step << Horde Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .turnin 94978 >>Rendez la quête Dompter la bête
    .accept 94979 >>Acceptez la quête Dompter la bête
    .target Quel'ana Quickgale::252389
step << Horde Hunter
    #optional
    #completewith next
    +|cRXP_WARN_Renvoyez votre|cRXP_ENEMY_ Windsong Clampant::254588|r en cliquant droit sur sa barre de personnage et en cliquant sur Renvoyer, sinon vous serez incapable de dompter un|r |cRXP_ENEMY_Ornery Galestrider::251707|r
    *|cRXP_WARN_Attention; il vous attaquera quand il sera renvoyé|r.
step << Horde Hunter
    #loop
    .goto 2521,60.905,69.414,35,0
    .goto 2521,58.339,68.476,35,0
    .goto 2521,53.799,72.161,35,0
    .use 267298 >>|cRXP_WARN_Utilisez votre|r |T132164:0|t[Bâtonnet de domptage] |cRXP_WARN_sur un|r |cRXP_ENEMY_Ornery Galestrider::251707|r |cRXP_WARN_à portée maximale|r.
    .complete 94979,1 --Tame an Ornery Galestrider
    .mob Ornery Galestrider::251707
step << Horde Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .turnin 94979 >>Rendez la quête Dompter la bête
    .accept 94013 >>Acceptez la quête Dompter la bête
    .target Quel'ana Quickgale::252389
step << Horde Hunter
    #optional
    #completewith next
    +|cRXP_WARN_Renvoyez votre|cRXP_ENEMY_ Ornery Galestrider::251707|r en cliquant droit sur sa barre de personnage et en cliquant sur Renvoyer, sinon vous serez incapable de dompter un|r |cRXP_ENEMY_Vuldren::250874|r
    *|cRXP_WARN_Attention; il vous attaquera quand il sera renvoyé|r.
step << Horde Hunter
    #loop
    --.goto 2521,56.946,67.887,35,0
    .goto 2521,54.080,74.719,35,0
    .goto 2521,52.625,77.864,25,0
    .goto 2521,53.021,81.568,25,0
    .goto 2521,51.647,80.140,25,0
    .goto 2521,48.981,82.669,35,0
    .use 264163 >> |cRXP_WARN_Utilisez votre|r |T132164:0|t[Bâtonnet de domptage] |cRXP_WARN_sur un|r |cRXP_ENEMY_Vuldren::250874|r |cRXP_WARN_à portée maximale|r.
    .complete 94013,1 --Tame a Vuldren
    .mob Vuldren::250874
step << Horde Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .turnin 94013 >>Rendez la quête Dompter la bête
    .accept 94050 >>Acceptez la quête Entraîner la bête
    .target Quel'ana Quickgale::252389
step << Horde Hunter
    .goto 2521,59.605,72.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quel'dora Quickgale::254411|r.
    .turnin 94050 >>Rendez la quête Entraîner la bête
    .target Quel'dora Quickgale::254411
step << Horde Hunter
    .xp <10,1
    .goto 2521,59.605,72.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quel'dora Quickgale::254411|r.
    .train 4195 >>Apprenez [Endurance supérieure]
    .train 24547 >>Apprenez [Armure naturelle]
    .skipgossipid 97876
    .target Quel'dora Quickgale::254411
step << Horde Hunter
    #sticky
    -- .goto 2521,60.905,69.414,35,0
    -- .goto 2521,58.339,68.476,35,0
    -- .goto 2521,53.799,72.161,35,0
    >>|cRXP_WARN_Lancez|r |T132164:0|t[Apprivoise une bête] |cRXP_WARN_sur un |cRXP_ENEMY_Windsong Clampant::254588|r pour le dompter|r -- .tame 1997
    *|cRXP_WARN_NOTE :|r Si tous les crabes sont morts, alors vous pouvez aussi dompter un |cRXP_ENEMY_Ornery Galestrider::251707|r jusqu'à ce que vous trouviez un crabe.
    .train 2981 >> Attaquez des créatures avec pour qu'il apprenne [Griffe (Rang 2)]
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Cliquez ici pour plus d'information sur le dressage des familiers|r
	.mob Windsong Crawler::254588
step << Horde Hunter
    .isOnQuest 93317
    .goto 2521,58.986,75.460
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Railee Thriceforged::257422|r.
    .vendor 257422 >>|cRXP_WARN_Allez au Vendeur et réparez si nécessaire|r.
    *Ne vendez pas |T132832:0|t[Petit Eggs] et |T133972:0|t[Strider Viande].
    *|cRXP_WARN_Nous en avons besoin pour Cuisine plus tard|r.
    .target Railee Thriceforged::257422

-- ============================================================================
-- Level 10+ Deathskip Version
-- ============================================================================

step << Alliance
    .isOnQuest 92840 -- Catching Wind
    .subzoneskip 16638,1 -- Shen'dar Village
    .goto 2521,67.41,80.46
    .subzone 16626 >>Sautez de la falaise
step << Alliance
    #ignorecorpse
    .subzoneskip 16626,1 -- Gustberry Lowlands
    .isOnQuest 92840 -- Catching Wind
    .showwhiledead
    .goto 2521,54.99,68.14
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Spirit Soins::6491|r.
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step << Alliance !Hunter
    #completewith Protect the Index
    >>Tuez les |cRXP_ENEMY_Windsong Crawlers::254588|r. Ramassez-les pour le |T133972:0|t[|cRXP_LOOT_Windsong Clampant Viande|r].
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler::254588
    .skipgossipid 98031
    .skipgossipid 96031
step << Alliance Hunter
    #completewith Protect the Index
    .goto 2521,51.56,71.28,40,0
    .goto 2521,50.94,69.46,40,0
    .use 267272 >> |cRXP_WARN_Utilisez votre|r |T132164:0|t[Bâtonnet de domptage] |cRXP_WARN_sur un|r |cRXP_ENEMY_Windsong Clampant::254588|r |cRXP_WARN_à portée maximale|r.
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
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Cristaux|r
    .complete 92840,1 --|6/6 Gather Data on Elemental Currents
    .use 254584 -- Index Esoteria
    .mob Windshaper Elementalist
    .mob Windshaper Guardian
step << Alliance
    #completewith Protect the Index
    .goto 2521,46.52,70.33,30 >>Contournez la montagne.
    *|cRXP_WARN_Si une Tornade est à proximité, touchez-la pour obtenir une augmentation de 40 % de vitesse de mouvement pendant 5 minutes. Infliger des dégâts supprime l'effet|r.
    *|cRXP_WARN_N'utilisez pas|r |T132845:0|t[Marche sur l'air] |cRXP_WARN_pendant cette étape|r.
step << Alliance
    #requires Protect the Index
    #loop
    .goto 2521,47.77,70.04,20,0
    .goto 2521,47.32,68.68,30,0
    .goto 2521,48.25,69,20,0
    .goto 2521,48.68,69.06,20,0
    .goto 2521,48.13,70.15,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Cristaux|r
    *|cRXP_WARN_N'utilisez pas|r |T132845:0|t[Marche sur l'air] |cRXP_WARN_pendant cette étape|r.
    .complete 92840,1 --|6/6 Gather Data on Elemental Currents
    .use 254584 -- Index Esoteria
    .mob Windshaper Elementalist
    .mob Windshaper Guardian
step << Mage
    .goto 2521,48.59,67.77
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Branche|r.
    .complete 93797,1 --1/1 Wind-Infused Bough
step << Alliance
    .isQuestComplete 92840 -- Catching Wind
    .isQuestComplete 94978 << Hunter -- Taming the Beast
    .subzoneskip 16638 -- Valanaar
    .subzoneskip 16626 -- Gustberry Lowlands
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,49.46,70.12,30,0
    .goto 2521,52.35,70.23
    .cast 1259416 >>Sautez de la montagne et utilisez |T132845:0|t[Marche sur l'air] pour voler vers la position.
    -- *|cRXP_WARN_Be careful of the enemies near the edge. If you die, accept Resurrection Sickness|r.
    *|cRXP_WARN_Attention aux ennemis près du bord|r.
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
    .use 267272 >>|cRXP_WARN_Utilisez votre|r |T132164:0|t[Bâtonnet de domptage] |cRXP_WARN_sur un|r |cRXP_ENEMY_Windsong Clampant::254588|r |cRXP_WARN_à portée maximale|r.
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
    .cast 1259416 >>Sautez de la montagne et utilisez |T132845:0|t[Marche sur l'air] pour voler vers la position.
    .usespell 1259416
step << Alliance Hunter/Alliance Mage
    #completewith SkyhopperMultiClass
    >>Tuez les |cRXP_ENEMY_Skyhoppers::251314|r.
    *|cRXP_WARN_Si vous trouvez une Tornade, touchez-la pour obtenir son buff de vitesse|r.
    *|cRXP_WARN_Tandis que le buff de vitesse de Tornade est actif, évitez de les tuer|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Alliance Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .turnin 94978 >>Rendez la quête Dompter la bête
    .accept 94979 >>Acceptez la quête Dompter la bête
    .target Quel'ana Quickgale::252389
step << Alliance Hunter
    #optional
    #completewith next
    +|cRXP_WARN_Renvoyez votre |cRXP_ENEMY_Windsong Clampant::254588|r en cliquant droit sur son cadre d'unité et en cliquant sur renvoyer, sinon vous ne pourrez pas dresser un|r |cRXP_ENEMY_Ornery Galestrider::251707|r
    *|cRXP_WARN_Faites attention ; il vous attaquera quand il sera renvoyé|r.
step << Alliance Hunter
    #loop
    .goto 2521,60.905,69.414,35,0
    .goto 2521,58.339,68.476,35,0
    .goto 2521,53.799,72.161,35,0
    .use 267298 >>|cRXP_WARN_Utilisez votre|r |T132164:0|t[Bâtonnet de domptage] |cRXP_WARN_sur un|r |cRXP_ENEMY_Ornery Galestrider::251707|r |cRXP_WARN_à portée maximale|r.
    .complete 94979,1 --Tame an Ornery Galestrider
    .mob Ornery Galestrider::251707
step << Alliance Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .turnin 94979 >>Rendez la quête Dompter la bête
    .accept 94013 >>Acceptez la quête Dompter la bête
    .target Quel'ana Quickgale::252389
-- step << Alliance Hunter
--     .train 2366,3 -- Herbalism Trained
--     .isQuestComplete 97968 -- Camping 101: Herbalism
--     .goto 2521,57.890,75.514
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syriel Nightrain::254345|r.
--     .turnin 97968 >>Turn in Camping 101: Herbalism
--     .target Syriel Nightrain::254345
step << Alliance Hunter
    #optional
    #completewith next
    +|cRXP_WARN_Renvoyez votre |cRXP_ENEMY_Ornery Galestrider::251707|r en cliquant droit sur son cadre d'unité et en cliquant sur renvoyer, sinon vous ne pourrez pas dresser un|r |cRXP_ENEMY_Vuldren::250874|r
    *|cRXP_WARN_Faites attention ; il vous attaquera quand il sera renvoyé|r.
step << Alliance Hunter
    .isOnQuest 94013 --Taming the Beast
    .isQuestNotComplete 94013 --Taming the Beast
    .subzoneskip 16638,1
    #label SkyhopperMultiClass
    .goto 2521,57.11,74.49
    .subzone 16626 >> Entrez dans Gustberry Lowlands
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
    .use 264163 >>|cRXP_WARN_Utilisez votre|r |T132164:0|t[Bâtonnet de domptage] |cRXP_WARN_sur un|r |cRXP_ENEMY_Vuldren::250874|r |cRXP_WARN_à portée maximale|r.
    .complete 94013,1 --Tame a Vuldren
    .mob Vuldren::250874
    .mob Vuldren Alpha::250874
step << Alliance Hunter
    #completewith next
    >>Tuez les |cRXP_ENEMY_Skyhoppers::251314|r.
    *|cRXP_WARN_Si vous trouvez une Tornade, touchez-la pour obtenir son buff de vitesse|r.
    *|cRXP_WARN_Tandis que le buff de vitesse de Tornade est actif, évitez de les tuer|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Alliance Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .turnin 94013 >>Rendez la quête Dompter la bête
    .accept 94050 >>Acceptez la quête Entraîner la bête
    .target Quel'ana Quickgale::252389
step << Alliance Hunter
    .goto 2521,59.605,72.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quel'dora Quickgale::254411|r.
    .turnin 94050 >>Rendez la quête Entraîner la bête
    .target Quel'dora Quickgale::254411
step << Alliance Hunter
    .xp <10,1
    .goto 2521,59.605,72.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quel'dora Quickgale::254411|r.
    .train 4195 >>Apprenez [Endurance supérieure]
    .train 24547 >>Apprenez [Armure naturelle]
    .skipgossipid 97876
    .target Quel'dora Quickgale::254411
step << Alliance Hunter
    #sticky
    .goto 2521,60.905,69.414,35,0
    .goto 2521,58.339,68.476,35,0
    .goto 2521,53.799,72.161,35,0
    >>|cRXP_WARN_Lancez|r |T132164:0|t[Apprivoise une bête] |cRXP_WARN_sur un |cRXP_ENEMY_Windsong Clampant::254588|r pour le dresser|r -- .tame 1997
    *|cRXP_WARN_NOTE :|r Si tous les crabes sont morts, vous pouvez aussi dresser un |cRXP_ENEMY_Ornery Galestrider::251707|r jusqu'à ce que vous trouviez un crabe.
    .train 2981 >> Attaquez des créatures avec pour qu'il apprenne [Griffe (Rang 2)]
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Cliquez ici pour plus d'information sur le dressage des familiers|r
	.mob Windsong Crawler::254588
step << Mage
    #label SkyhopperMultiClass
    .goto 2521,62.89,77.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belann Windwood::256507|r.
    .turnin 93797 >>Rendez la quête Boughs in the Vent
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
    >>Tuez les |cRXP_ENEMY_Skyhoppers::251314|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
-- step << Alliance !Hunter
--     .train 2366,3 -- Herbalism Trained
--     .isQuestComplete 97968 -- Camping 101: Herbalism
--     .goto 2521,57.890,75.514
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syriel Nightrain::254345|r.
--     .turnin 97968 >>Turn in Camping 101: Herbalism
--     .target Syriel Nightrain::254345
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
    >>Tuez les |cRXP_ENEMY_Skyhoppers::251314|r.
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
    .subzone 16626 >>Suivez le chemin de sortie de Valanaar
step << Horde Druid
    .isOnQuest 94006 -- The Great Ursera Spirit
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,69.01,65.86,20,0
    .goto 2521,69.84,61.73
    .cast 1259416 >>Sautez de la montagne et utilisez la |T132845:0|t[Marche sur l'air] pour voler vers le donneur de quête.
    .usespell 1259416
step << Horde Druid
    .goto 2521,69.782,61.609
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Urs'endris::255853|r.
    .turnin 94006 >>Rendez la quête The Great Ursera Esprit
    .accept 94638 >>Acceptez la quête Force et Miséricorde
    .target Urs'endris::255853
step << Horde Druid
    .isOnQuest 94638 -- Strength and Mercy
    .cooldown spell,1259686,>0,1 -- Skysight
    -- .aura 1270893,1800 --Charged
    .goto 2521,69.782,61.609
    .cast 1259686 >>Utilisez |T1029587:0|t[Vue céleste] |cRXP_WARN_près d'une Convergence élémentaire|r pour obtenir |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[Charge].
    *Pendant que |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[Charge] est actif, |T1029587:0|t[Vue céleste] augmente la vitesse de déplacement et la vitesse de déplacement monté de |cRXP_WARN_30% pour 30 secondes|r.
step << Horde Druid
    #completewith next
    .goto 2521,59.59,66.7,30,0
    >>Tuez les |cRXP_ENEMY_Windsong Crawlers::254588|r. Ramassez-les pour le |T133972:0|t[|cRXP_LOOT_Windsong Clampant Viande|r].
    .complete 93317,1 --6/6 Windsong Crawler Meat
step << Horde
    .goto 2521,59.528,66.902,30,0 << Druid
    .goto 2521,56.81,61.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fendaal Windstone::273017|r.
    *|cRXP_WARN_Si une Tornade est à proximité, touchez-la pour obtenir une augmentation de 40 % de vitesse de mouvement pendant 5 minutes. Infliger des dégâts supprime l'effet|r.
    .accept 98512 >>Acceptez la quête Al'Aketh Assassins
    .target Fendaal Windstone::273017
step << Horde
    #loop
    .goto 2521,55.27,59.58,35,0
    .goto 2521,54.58,60.52,35,0
    .goto 2521,55.93,60.3,35,0
    .goto 2521,56.04,59.08,35,0
    >>Tuez les |cRXP_ENEMY_Al'Aketh Assassins::254626|r.
    *|cRXP_WARN_Faites attention : |cRXP_ENEMY_Al'Aketh Assassins|r utilisent|r |T132357:0|t[Heurtoir] |cRXP_WARN_pour vous faire tomber et|r |T136189:0|t[Attaque pernicieuse] |cRXP_WARN_en plus de leurs attaques au corps-à-corps|r.
    .complete 98512,1 --10/10 Al'Aketh Assassin slain
    .mob Al'Aketh Assassin::254626
step << Horde
    .goto 2521,56.80,61.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fendaal Windstone::273017|r.
    .turnin 98512 >>Rendez la quête Al'Aketh Assassins
    .target Fendaal Windstone::273017
step << Horde Druid
    .goto 2521,54.284,65.803
    >>Tuez |cRXP_ENEMY_Ur'endra::258443|r |cRXP_WARN_dans la grotte|r.
    .complete 94638,1 --|1/1 Ur'endra slain
    .mob Ur'endra::258443
step << Horde
    #loop
    .goto 2521,53.56,59.17,35,0
    .goto 2521,52.91,58.56,35,0
    .goto 2521,52.08,59.23,35,0
    .goto 2521,52.49,57.3,35,0
    .goto 2521,53.55,55.55,35,0
    .goto 2521,54.3,57.94,35,0
    >>Tuez les |cRXP_ENEMY_Windsong Crawlers::254588|r. Ramassez-les pour le |T133972:0|t[|cRXP_LOOT_Windsong Clampant Viande|r].
    *|cRXP_WARN_NOTE :|r Cette quête est |cRXP_WARN_optionnel|r. Passez cette étape si les crabes sont trop contestés.
    .complete 93317,1 --6/6 Windsong Crawler Meat
step << Horde
    .subzoneskip 16625,1 -- Windsong Lake
    .isQuestAvailable 93159 -- The Strange Hermit
    .goto 2521,52.790,57.628
    .cooldown spell,1259686,>0,1 -- Skysight
    -- .aura 1270893,1800 --Charged
    .cast 1259686 >>Utilisez |T1029587:0|t[Vue céleste] |cRXP_WARN_près d'une Convergence élémentaire|r pour obtenir |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[Charge].
    *Pendant que |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[Charge] est actif, |T1029587:0|t[Vue céleste] augmente la vitesse de déplacement et la vitesse de déplacement monté de |cRXP_WARN_30% pour 30 secondes|r.
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
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_Construct Parts|r.
    .complete 93737,3 --|1/1 Obtain Enchanted Gyrozephyr from Windsong Lake
    .mob Windsong Crawler::254588
step << Horde Druid
    .isOnQuest 94638 -- Strength and Mercy
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,56.830,63.121,15,0
    .goto 2521,57.299,63.465,15,0
    .goto 2521,60.250,62.742,20,0
    .goto 2521,69.803,61.660
    .cast 1259416 >>Sautez de la montagne |cRXP_WARN_inférieure (pas celle où vous êtes)|r et utilisez |T132845:0|t[Marche sur l'air] pour voler vers le donneur de quête.
    .usespell 1259416
step << Horde Druid
    .goto 2521,69.803,61.660
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Urs'endris::255853|r.
    .target Urs'endris::255853
    .turnin 94638 >>Rendez la quête Force and Miséricorde

-- ============================================================================
-- Alliance: Branch
-- ============================================================================

step << Alliance
    .isOnQuest 92840 --Catching Wind
    .goto 2521,65.47,80.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daeann Steelwind::252479|r.
    .vendor 252479 >>|cRXP_WARN_Vendez vos affaires et réparez|r.
    .skipgossipid 137531
    *Ne vendez pas |T133970:0|t[Stringy Viande], |T132832:0|t[Petit Eggs] ou |T133972:0|t[Strider Viande].
    *|cRXP_WARN_Nous en avons besoin pour Cuisine plus tard|r.
    .target Daeann Steelwind::252479
step << Alliance
    .goto 2521,66.63,79.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elaadrin Evengale::252475|r.
    .turnin 92840 >>Rendez la quête Danger imminent
    .accept 92834 >>Acceptez la quête Avenged Tenfold
    .accept 92860 >>Acceptez la quête In Service of Zephras
    .target Elaadrin Evengale::252475
step << Alliance
    .isQuestAvailable 93320
    .goto 2521,66.63,79.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elaadrin Evengale::252475|r.
    .accept 92709 >>Acceptez la quête A Grand Adventure
    .target Elaadrin Evengale::252475
step << Alliance
    #optional
    #completewith next
    #label Service of Zephras
    *|cRXP_WARN_Équipez le|r |T7810733:0|t[Ruban des heures] << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
    .turnin 92860 >>Rendez la quête In Service of Zephras
    .turnin 93949 >>Rendez la quête Bugged
    .accept 93320 >>Acceptez la quête Tours de défense
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
    .goto 2521,66.44,76.4,5 >>Montez la tour
    *|cRXP_WARN_Si une Tornade est présente, utilisez-la pour voyager plus rapidement|r.
step << Alliance
    #requires Service of Zephras
    .goto 2521,66.18,76.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
    .turnin 92860 >>Rendez la quête In Service of Zephras
    .turnin 93949 >>Rendez la quête Bugged
    .accept 93320 >>Acceptez la quête Tours de défense
    .target Valennia Stormfist::252383
step << Alliance !Druid
    .isNotOnQuest 94896 -- Aid For The Refugees
    .isOnQuest 93320 -- Tower Defense
    .subzoneskip 16638,1 -- Valanaar
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,66.47,76.64,10,0
    .goto 2521,65.36,71.79
    .cast 1259416 >>Sautez de l'arbre et utilisez |T132845:0|t[Marche sur l'air] pour voler vers la position.
    .usespell 1259416
step << Alliance
    .goto 2521,65.956,74.309
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ealaane Nimbuswalker::259012|r.
    *|cRXP_WARN_N'utilisez pas|r |T132845:0|t[Marche sur l'air] |cRXP_WARN_pendant cette étape|r. << Druid
    .accept 94896 >>Acceptez la quête Assister For The Refugees
    .accept 94897 >>Acceptez la quête The Destin of a Être aimé Un
    .target Ealaane Nimbuswalker::259012
step << Alliance !Druid
    .isOnQuest 94897 -- The Fate of a Loved One
    .isOnQuest 93320 -- Tower Defense
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .aura 1259691,1800 --Attuned
    .goto 2521,64,74.06
    .cast 1259705 >>Utilisez |T236219:0|t[Lecture des lignes telluriques] |cRXP_WARN_près d'une ligne d'énergie|r pour obtenir |T135737:0|t[Harmonisation].
    *Pendant que |T135737:0|t[Harmonisation] est actif, |T236219:0|t[Lecture des lignes telluriques] augmente la régénération passive de mana et de santé de |cRXP_WARN_100% pendant 15 secondes|r.
    .usespell 1259705
step << Alliance
    #completewith next
    >>Tuez |cRXP_ENEMY_Al'Aketh Brawlers::270201|r.
    *Ramassez le Butin pour |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r].
   *|cRXP_WARN_Vous ferez des progrès ici mais vous terminerez probablement la quête à une autre position plus tard|r.
    *|cRXP_WARN_|cRXP_ENEMY_Al'Aketh Healers|r peuvent se soigner ou soigner les autres. Interrompez leurs soins si vous pouvez|r. << !Rogue
    *|cRXP_WARN_|cRXP_ENEMY_Al'Aketh Healers|r peuvent se soigner ou soigner les autres. Regroupez l'Énergie pour étourdir leurs soins si vous ne pouvez pas les tuer avant qu'ils ne lancent|r. << Rogue
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yorana Windyreed::252378|r.
    *|cRXP_WARN_Si une Tornade est à proximité, utilisez-la pour un trajet plus rapide|r.
    .turnin 93320,1 >>Rendez la quête Défense des tours << Rogue/Hunter/Druid/Shaman
    .turnin 93320,2 >>Rendez la quête Défense des tours << Mage/Priest/Warlock
    .turnin 93320,3 >>Rendez la quête Défense des tours << Warrior/Paladin
    .accept 92642 >>Acceptez la quête Interruption Logistics
    .accept 92645 >>Acceptez la quête Briser the Toucass
    .target Yorana Windyreed::252378
step << Alliance !Druid
    #completewith Commander Belguilos2
    >>Tuez |cRXP_ENEMY_Al'Aketh Brawlers::270201|r, |cRXP_ENEMY_Al'Aketh Preachers::253195|r, et |cRXP_ENEMY_Al'Aketh Pillagers::253511|r.
    *Ramassez le Butin pour |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r].
   *|cRXP_WARN_Vous ferez des progrès ici mais vous terminerez probablement la quête à une autre position plus tard|r.
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Brawler::270201
    .mob Al'Aketh Preacher::253195
    .mob Al'Aketh Pillager::253511
step << Alliance !Druid
    #optional
    #completewith Commander Belguilos2
    >>Tuez les |cRXP_ENEMY_Al'Aketh Brawlers::270201|r et les |cRXP_ENEMY_Al'Aketh Healers::254596|r.
    *|cRXP_WARN_Les |cRXP_ENEMY_Al'Aketh Healers|r peuvent soigner eux-mêmes ou les autres. Étourdissez leurs soins si vous le pouvez|r. << !Rogue
    *|cRXP_WARN_Les |cRXP_ENEMY_Al'Aketh Healers|r peuvent soigner eux-mêmes ou les autres. Utilisez l'Énergie pour interrompre leurs soins si vous ne pouvez pas les tuer avant qu'ils lancent|r. << Rogue
    .complete 92642,1 --4/4 Al'Aketh Healer slain
    .mob +Al'Aketh Healer::254596
    .complete 92642,2 --8/8 Al'Aketh Brawler slain
    .mob +Al'Aketh Brawler::270201
step << Alliance !Druid
    #label Commander Belguilos2
    .goto 2521,65.71,65.59,30,0
    .goto 2521,65.84,65.02,15,0
    .goto 2521,65.58,65.63
    >>Tuez le |cRXP_ENEMY_Commander Belguilos::252666|r |cRXP_WARN_au deuxième étage à l'intérieur de la maison|r.
    .complete 92645,1 --1/1 Commander Belguilos slain
    .mob Commander Belguilos::252666
step << Alliance !Druid
    #completewith next
    >>Tuez les |cRXP_ENEMY_Al'Aketh Brawlers::270201|r, les |cRXP_ENEMY_Al'Aketh Preachers::253195|r et les |cRXP_ENEMY_Al'Aketh Pillagers::253511|r.
    *Ramassez le Butin pour |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r].
   *|cRXP_WARN_Vous ferez des progrès ici mais vous terminerez probablement la quête à une autre position plus tard|r.
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
    >>Tuez les |cRXP_ENEMY_Al'Aketh Brawlers::270201|r et les |cRXP_ENEMY_Al'Aketh Healers::254596|r.
    *|cRXP_WARN_Les |cRXP_ENEMY_Al'Aketh Healers|r peuvent soigner eux-mêmes ou les autres. Étourdissez leurs soins si vous le pouvez|r. << !Rogue
    *|cRXP_WARN_Les |cRXP_ENEMY_Al'Aketh Healers|r peuvent soigner eux-mêmes ou les autres. Utilisez l'Énergie pour interrompre leurs soins si vous ne pouvez pas les tuer avant qu'ils lancent|r. << Rogue
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
    .cast 1259416 >>Sautez de la montagne et utilisez la |T132845:0|t[Marche sur l'air] pour voler vers le donneur de quête.
    .usespell 1259416
step << Alliance Druid
    .goto 2521,69.782,61.609
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Urs'endris::255853|r.
    .target Urs'endris::255853
    .turnin 94006 >>Rendez la quête L'Esprit de la Grande Ursera
    .accept 94638 >>Acceptez la quête Force et Miséricorde
step << Alliance Druid
    .subzoneskip 16593,1
    .isOnQuest 92645 --Breaking the Breaker
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .aura 1259691,1800 --Attuned
    .goto 2521,69.08,61.98
    .cast 1259705 >>Utilisez |T236219:0|t[Lecture des lignes telluriques] |cRXP_WARN_près d'une ligne d'énergie|r pour obtenir |T135737:0|t[Harmonisation].
    *Pendant que |T135737:0|t[Harmonisation] est actif, |T236219:0|t[Lecture des lignes telluriques] augmente la régénération passive de mana et de santé de |cRXP_WARN_100% pendant 15 secondes|r.
    .usespell 1259705
step << Alliance Druid
    #completewith Commander Belguilos Druid2
    >>Tuez les |cRXP_ENEMY_Al'Aketh Brawlers::270201|r, les |cRXP_ENEMY_Al'Aketh Preachers::253195|r et les |cRXP_ENEMY_Al'Aketh Pillagers::253511|r.
    *Ramassez le Butin pour |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r].
   *|cRXP_WARN_Vous ferez des progrès ici mais vous terminerez probablement la quête à une autre position plus tard|r.
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Brawler::270201
    .mob Al'Aketh Preacher::253195
    .mob Al'Aketh Pillager::253511
step << Alliance Druid
    #optional
    #completewith Commander Belguilos Druid2
    >>Tuez les |cRXP_ENEMY_Al'Aketh Brawlers::270201|r et les |cRXP_ENEMY_Al'Aketh Healers::254596|r.
    *|cRXP_WARN_Les |cRXP_ENEMY_Al'Aketh Healers|r peuvent soigner eux-mêmes ou les autres. Étourdissez leurs soins si vous le pouvez|r. << !Rogue
    *|cRXP_WARN_Les |cRXP_ENEMY_Al'Aketh Healers|r peuvent soigner eux-mêmes ou les autres. Utilisez l'Énergie pour interrompre leurs soins si vous ne pouvez pas les tuer avant qu'ils lancent|r. << Rogue
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
    >>Tuez le |cRXP_ENEMY_Commander Belguilos::252666|r |cRXP_WARN_au deuxième étage à l'intérieur de la maison|r.
    .complete 92645,1 --1/1 Commander Belguilos slain
    .mob Commander Belguilos::252666
step << Alliance Druid
    #completewith Commander Belguilos Druid
    .goto 2521,67.39,63.3,15 >>Allez par-dessus la montagne
step << Alliance Druid
    #requires Commander Belguilos Druid
    #label Commander Belguilos Druid2
    .goto 2521,65.31,65.33,20,0
    .goto 2521,65.58,65.63
    >>Tuez le |cRXP_ENEMY_Commander Belguilos::252666|r |cRXP_WARN_au deuxième étage à l'intérieur de la maison|r.
    .complete 92645,1 --1/1 Commander Belguilos slain
    .mob Commander Belguilos::252666
step << Alliance Druid
    #completewith next
    >>Tuez les |cRXP_ENEMY_Al'Aketh Brawlers::270201|r, les |cRXP_ENEMY_Al'Aketh Preachers::253195|r et les |cRXP_ENEMY_Al'Aketh Pillagers::253511|r.
    *Ramassez le Butin pour |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r].
   *|cRXP_WARN_Vous ferez des progrès ici mais vous terminerez probablement la quête à une autre position plus tard|r.
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
    >>Tuez les |cRXP_ENEMY_Al'Aketh Brawlers::270201|r et les |cRXP_ENEMY_Al'Aketh Healers::254596|r.
    *|cRXP_WARN_Les |cRXP_ENEMY_Al'Aketh Healers|r peuvent soigner eux-mêmes ou les autres. Étourdissez leurs soins si vous le pouvez|r. << !Rogue
    *|cRXP_WARN_Les |cRXP_ENEMY_Al'Aketh Healers|r peuvent soigner eux-mêmes ou les autres. Utilisez l'Énergie pour interrompre leurs soins si vous ne pouvez pas les tuer avant qu'ils lancent|r. << Rogue
    .complete 92642,1 --4/4 Al'Aketh Healer slain
    .mob +Al'Aketh Healer::254596
    .complete 92642,2 --8/8 Al'Aketh Brawler slain
    .mob +Al'Aketh Brawler::270201
    .mob +Al'Aketh Preacher::253195
    .mob +Al'Aketh Pillager::253511
step << Alliance
    .goto 2521,69.61,67.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yorana Windyreed::252378|r.
    .turnin 92645,1 >>Rendez la quête Briser le Toucass << Rogue/Hunter/Druid/Shaman
    .turnin 92645,2 >>Rendez la quête Briser le Toucass << Mage/Priest/Warlock
    .turnin 92645,3 >>Rendez la quête Briser le Toucass << Warrior/Paladin
    .turnin 92642 >>Rendez la quête Perturbation de la logistique
    .accept 92880 >>Acceptez la quête Retour à Valanaar
    .target Yorana Windyreed::252378
step << Alliance
    #optional
    #completewith next
    #label Return to Valanaar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
    .turnin 92880,1 >>Rendez la quête Retour à Valanaar << Warrior/Paladin
    .turnin 92880,2 >>Rendez la quête Retour à Valanaar << Rogue -- Quickblade's Dagger
    .turnin 92880,3 >>Rendez la quête Retour à Valanaar << Hunter/Mage/Druid/Priest/Warlock
    .accept 92881 >>Acceptez la quête La demande du grand ancien
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
    .goto 2521,66.44,76.4,5 >>Contournez la montagne puis montez la tour
    *|cRXP_WARN_Si une Tornade est présente, utilisez-la pour voyager plus rapidement|r.
step << Alliance
    #requires Return to Valanaar
    .goto 2521,66.20,76.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
    .turnin 92880,1 >>Rendez la quête Retour à Valanaar << Alliance Warrior/Alliance Paladin
    .turnin 92880,2 >>Rendez la quête Retour à Valanaar << Alliance Rogue -- Quickblade's Dagger
    .turnin 92880,3 >>Rendez la quête Retour à Valanaar << Alliance Hunter/Alliance Mage/Alliance Druid/Alliance Priest/Alliance Warlock
    .accept 92881 >>Acceptez la quête La demande du grand ancien
    .target Valennia Stormfist::252383
step << Alliance
    .goto 2521,66.17,76.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talaanis Shadowsong::252476|r.
    .turnin 92881 >>Rendez la quête La requête du grand ancien
    .accept 92643 >>Acceptez la quête The Turncoat
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
    .cast 1259416 >>Sautez de l'arbre et utilisez |T132845:0|t[Marche sur l'air] pour voler vers la position.
    .usespell 1259416
step << Alliance
    .subzoneskip 16638,1 -- Valanaar
    .isQuestAvailable 98512 -- Al'Aketh Assassins
    .isNotOnQuest 98512 -- Al'Aketh Assassins
    .goto 2521,63.14,76.9,20,0
    .goto 2521,62.9,77.44,10,0
    .goto 2521,63.96,74.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belann Windwood::256507|r |cRXP_WARN_à l'intérieur de la maison|r.
    .vendor 256507 >>Vendez les rebuts et réparez si nécessaire.
    *Ne vendez pas |T133970:0|t[Stringy Viande], |T132832:0|t[Petit Eggs] ou |T133972:0|t[Strider Viande].
    *|cRXP_WARN_Nous en avons besoin pour Cuisine plus tard|r.
    .target Belann Windwood::256507
    .skipgossipid 137530
step << Hunter Alliance
    .xp <9,1
    .money <0.1345
    .isNotOnQuest 92679 -- Blood Tithe
    .isQuestAvailable 92679 -- Blood Tithe
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.82
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falfaan Halfwind::271465|r |cRXP_WARN_à l'intérieur de la maison|r.
    >>|cRXP_BUY_Achetez et équipez un|r |T7810733:0|t[Arc zéphrali].
    .collect 277110,1 --Collect Zephrali Bow
    .vendor 271465 >>Vendez les rebuts et réparez si nécessaire.
    *Ne vendez pas |T133970:0|t[Stringy Viande], |T132832:0|t[Petit Eggs] ou |T133972:0|t[Strider Viande]. << Alliance
    *Ne vendez pas |T132832:0|t[Petit Eggs] et |T133972:0|t[Strider Viande]. << Horde
    *|cRXP_WARN_Nous en avons besoin pour Cuisine plus tard|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Hunter Alliance
    #optional
    #completewith secluded house
    .xp <9,1
    .itemcount 277110,1 --Zephrali Bow
    .equip 18,277110 >>|cRXP_WARN_Équipez le|r |T7810733:0|t[Arc zéphrali].
    .use 277110 --Zephrali Bow
step << Warrior Alliance/Paladin Alliance
    .xp <9,1
    .money <0.2151
    .isNotOnQuest 92679 --Blood Tithe
    .isQuestAvailable 92679 --Blood Tithe
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.28
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falfaan Halfwind::271465|r |cRXP_WARN_à l'intérieur de la maison|r.
    >>|cRXP_BUY_Achetez et équipez un|r |T7792097:0|t[Fracasseur zéphrali].
    .collect 277106,1 --Zephrali Smasher
    .vendor 271465 >>Vendez les rebuts et réparez si nécessaire.
    *Ne vendez pas |T133970:0|t[Stringy Viande], |T132832:0|t[Petit Eggs] ou |T133972:0|t[Strider Viande]. << Alliance
    *Ne vendez pas |T132832:0|t[Petit Eggs] et |T133972:0|t[Strider Viande]. << Horde
    *|cRXP_WARN_Nous en avons besoin pour Cuisine plus tard|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Warrior Alliance/Paladin Alliance
    #optional
    #completewith secluded house
    .xp <9,1
    .itemcount 277106,1 --Zephrali Smasher
    .equip 16,277106 >>|cRXP_WARN_Équipez le|r |T7792097:0|t[Fracasseur zéphrali].
    .use 277106 --Zephrali Smasher
step << Rogue Alliance
    .xp <9,1
    .money <0.1727
    .isNotOnQuest 92679 --Blood Tithe
    .isQuestAvailable 92679 --Blood Tithe
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.35
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falfaan Halfwind::271465|r |cRXP_WARN_à l'intérieur de la maison|r.
    >>|cRXP_BUY_Achetez et équipez un|r |T7791298:0|t[Gourdin zéphrali].
    .collect 277107,1 --Zephrali Bludgeon
    .vendor 271465 >>Vendez les rebuts et réparez si nécessaire.
    *Ne vendez pas |T133970:0|t[Stringy Viande], |T132832:0|t[Petit Eggs] ou |T133972:0|t[Strider Viande]. << Alliance
    *Ne vendez pas |T132832:0|t[Petit Eggs] et |T133972:0|t[Strider Viande]. << Horde
    *|cRXP_WARN_Nous en avons besoin pour Cuisine plus tard|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Rogue Alliance
    #optional
    #completewith secluded house
    .xp <9,1
    .itemcount 277107,1 --Zephrali Bludgeon
    .equip 16,277107 >>|cRXP_WARN_Équipez le|r |T7791298:0|t[Gourdin zéphrali].
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

-- step << Alliance Paladin/Alliance Priest/Alliance Warlock/Alliance Mage/Alliance Rogue
--     #optional
--     #completewith Al'Aketh Assassins Equip Reminder
--     +|cRXP_WARN_Equip the|r |T7792097:0|t[Honed Greathammer] if you don't have |T7792097:0|t[Zephrali Smasher]. << Paladin
--     +|cRXP_WARN_Equip the|r |T7798447:0|t[Balanced Quarterstaff] if you don't have |T7792229:0|t[Zephrali Knife]. << Priest/Warlock/Mage
--     +|cRXP_WARN_Equip the|r |TInterface/Icons/inv_knife_1h_skybornec60_b_01:0|t[Quickblade's Dagger] if you don't have |T7791298:0|t[Zephrali Bludgeon]. << Rogue
--     .use 257345 << Paladin -- Honed Greathammer
--     .use 257343 << Priest/Warlock/Mage -- Balanced Quarterstaff
--     .use 257346 << Rogue -- Quickblade's Dagger
step << Alliance
    .isNotOnQuest 98512 --Al'Aketh Assassins
    .isQuestAvailable 98512 --Al'Aketh Assassins
    -- .goto 2521,66.49,76.65,8,0
    .goto 2521,68.84,78.42,-1
    .goto 2521,60.74,78.02,-1
    .subzone 16626 >>Sautez de la falaise
step << Alliance
    #ignorecorpse
    .subzoneskip 16626,1 -- Gustberry Lowlands
    .isNotOnQuest 98512 --Al'Aketh Assassins
    .isQuestAvailable 98512 --Al'Aketh Assassins
    .showwhiledead
    .goto 2521,54.99,68.14
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Spirit Soins::6491|r.
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step << Alliance
    #label Al'Aketh Assassins Equip Reminder
    .goto 2521,56.81,61.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fendaal Windstone::273017|r.
    *|cRXP_WARN_Si une Tornade est à proximité, touchez-la pour gagner 40 % de vitesse de mouvement accrue pendant 5 minutes. Infliger des dégâts supprime l'effet|r.
    *|cRXP_WARN_Equiper le|r |T7792097:0|t[Grand marteau bien poli] si vous n'avez pas |T7792097:0|t[Fracasseur zéphrali]. << Paladin
    *|cRXP_WARN_Equiper le|r |T7798447:0|t[Bâton de combat équilibré] si vous n'avez pas |T7792229:0|t[Couteau zéphrali]. << Priest/Warlock/Mage
    *|cRXP_WARN_Équipez|r |TInterface/Icons/inv_knife_1h_skybornec60_b_01:0|t[Quickblade's Dagger] si vous n'avez pas |T7791298:0|t[Gourdin zéphrali]. << Rogue
    .accept 98512 >>Acceptez la quête Al'Aketh Assassins
    .target Fendaal Windstone::273017
step << Alliance
    #optional
    #completewith Fendaal Windstone
    >>Tuez |cRXP_ENEMY_Al'Aketh Assassins::254626|r.
    *|cRXP_WARN_Faites attention : |cRXP_ENEMY_Al'Aketh Assassins|r utilisent|r |T132357:0|t[Heurtoir] |cRXP_WARN_pour vous mettre à terre et|r |T136189:0|t[Attaque pernicieuse] |cRXP_WARN_en même temps que leurs attaques de mêlée|r.
    .complete 98512,1 --10/10 Al'Aketh Assassin slain
    .mob Al'Aketh Assassin::254626
step << Alliance
    #label secluded house
    .goto 2521,56.13,60.26
    >>Suivez la flèche
    -- *|cRXP_WARN_Be careful while Resurrection Sickness is active|r.
    .complete 92643,1 --1/1 Find the secluded house in Shen'dar Highlands
step << Alliance
    .goto 2521,56.05,58.79
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Dead Sectateur|r.
    .complete 92643,2 --1/1 Find the Al'Aketh Turncoat
    .target Dead Cultist::253372
step << Alliance
    #label Fendaal Windstone
    .goto 2521,56.043,58.785
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dead Sectateur::253372|r.
    .target Dead Cultist::253372
    .turnin 92643 >>Rendez la quête The Turncoat
    .accept 92644 >>Acceptez la quête Unfortunate Actus
step << Alliance
    #loop
    .goto 2521,55.27,59.58,35,0
    .goto 2521,54.58,60.52,35,0
    .goto 2521,55.93,60.3,35,0
    .goto 2521,56.04,59.08,35,0
    >>Tuez |cRXP_ENEMY_Al'Aketh Assassins::254626|r.
    *|cRXP_WARN_Faites attention : |cRXP_ENEMY_Al'Aketh Assassins|r utilisent|r |T132357:0|t[Heurtoir] |cRXP_WARN_pour vous mettre à terre et|r |T136189:0|t[Attaque pernicieuse] |cRXP_WARN_en même temps que leurs attaques de mêlée|r.
    .complete 98512,1 --10/10 Al'Aketh Assassin slain
    .mob Al'Aketh Assassin::254626
step << Alliance
    .goto 2521,56.80,61.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fendaal Windstone::273017|r.
    .turnin 98512 >>Rendez la quête Al'Aketh Assassins
    .target Fendaal Windstone::273017
step << Alliance Druid
    .goto 2521,54.284,65.803
    >>Tuez |cRXP_ENEMY_Ur'endra::258443|r |cRXP_WARN_à l'intérieur de la grotte|r.
    .complete 94638,1 --|1/1 Ur'endra slain
    .mob Ur'endra::258443
step << Alliance Druid
    .isOnQuest 94638 --Strength and Mercy
    .goto 2521,56,64.14,20,0
    .goto 2521,69.803,61.660
    .cast 1259416 >>Sautez de la |cRXP_WARN_montagne inférieure|r et utilisez |T132845:0|t[Marche sur l'air] pour voler vers le donneur de quête. --Walk on Air
    .usespell 1259416 --Walk on Air
step << Alliance Druid
    .goto 2521,69.803,61.660
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Urs'endris::255853|r.
    .target Urs'endris::255853
    .turnin 94638 >>Rendez la quête Force and Miséricorde
step << Alliance Druid
    #completewith Windsong Crawler Meat Druid2
    >>Tuez les |cRXP_ENEMY_Al'Aketh Brawlers::270201|r, les |cRXP_ENEMY_Al'Aketh Preachers::253195|r, et les |cRXP_ENEMY_Al'Aketh Pillagers::253511|r |cRXP_WARN_en chemin|r.
    *Ramassez le Butin pour |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r].
   *|cRXP_WARN_Vous ferez des progrès ici mais vous terminerez probablement la quête à une autre position plus tard|r.
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Brawler::270201
    .mob Al'Aketh Preacher::253195
    .mob Al'Aketh Pillager::253511
step << Alliance Druid
    #optional
    #completewith next
    #label Windsong Crawler Meat Druid
    .goto 2521,59.59,66.7,30,0
    >>Tuez les |cRXP_ENEMY_Windsong Crawlers::254588|r |cRXP_WARN_en chemin|r. Ramassez le Butin pour |T133972:0|t[|cRXP_LOOT_Windsong Clampant Viande|r].
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler::254588
step << Alliance Druid
    #completewith Windsong Crawler Meat Druid
    #label Windsong Crawler Meat Druid2
    .goto 2521,57.25,60.92,50 >>Contournez les montagnes.
    *|cRXP_WARN_Si une Tornade est présente, utilisez-la pour voyager plus rapidement|r.
step << Alliance Druid
    #requires Windsong Crawler Meat Druid
    #loop
    .goto 2521,53.56,59.17,35,0
    .goto 2521,52.91,58.56,35,0
    .goto 2521,52.08,59.23,35,0
    .goto 2521,52.49,57.3,35,0
    .goto 2521,53.55,55.55,35,0
    .goto 2521,54.3,57.94,35,0
    >>Tuez les |cRXP_ENEMY_Windsong Crawlers::254588|r. Ramassez-les pour le |T133972:0|t[|cRXP_LOOT_Windsong Clampant Viande|r].
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
    >>Tuez les |cRXP_ENEMY_Windsong Crawlers::254588|r. Ramassez-les pour le |T133972:0|t[|cRXP_LOOT_Windsong Clampant Viande|r].
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
    .goto 2521,58.61,52.77,30 >>Passez la cascade et contournez la montagne.
    *|cRXP_WARN_Si vous voyez un Tornade, utilisez-le pour voyager plus vite|r.
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
    >>Tuez |cRXP_ENEMY_Zaal Bouclier-des-Tempêtes::257196|r. Ramassez le Butin pour |T134959:0|t[|cRXP_LOOT_Skybreaker Barricade|r].
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
    >>Tuez les |cRXP_ENEMY_Shadowgale Shrieklings::256092|r.
    *Ramassez le Butin pour |T1508517:0|t[|cRXP_LOOT_Shriekling Grif|r].
    .complete 92741,1 --8/8 Shriekling Talons
    .mob Shadowgale Shriekling::256092
step << Alliance
    #completewith next
    .goto 2521,58.81,46.74,30,0 << Alliance
    .goto 2521,58.81,43.57,40 >>Traversez le pont.
step << Horde Druid
    #completewith next
    .goto 2521,59.414,66.946,25,0
    .goto 2521,58.920,55.010,30,0 >>Contournez la montagne.
step
    #label Learn
    .goto 2521,53.95,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Strange Hermit::251684|r.
    .accept 93159 >>Acceptez la quête The Strange Hermit
    .complete 93159,1 --1/1 Learn more about the Strange Hermit
    .turnin 93159 >>Rendez la quête The Strange Hermit
    .accept 93160 >>Acceptez la quête The Forest's Prime
    .accept 93172 >>Acceptez la quête Libre the Hollows
    .target Strange Hermit::251684
    .skipgossipid 135787
    .skipgossipid 135786
    .skipgossipid 135785 -- engineering
    .skipgossipid 135784 -- no
step
    .train 4036,3 -- Engineering Trained
    .train 1230656,1 --Reagent Bot
    .goto 2521,53.95,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Strange Hermit::251684|r.
    .accept 98285 >>Acceptez la quête Campement 101: Ingénierie
    .target Strange Hermit::251684
    .skipgossipid 135787
    .skipgossipid 135786
    .skipgossipid 135785 -- engineering
    .skipgossipid 135784 -- no
step
    #completewith Abandoned Belongings1
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Seeds|r
    .complete 93160,1 --8/8 Zephyrseed
step << Alliance
    #completewith Abandoned Belongings1
    >>Tuez les |cRXP_ENEMY_Shadowgale Shrieklings::256092|r.
    *Ramassez le Butin pour |T1508517:0|t[|cRXP_LOOT_Shriekling Grif|r].
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
    >>Tuez les |cRXP_ENEMY_Wind Hollows::251676|r.
    .complete 93172,1 --10/10 Wind Hollow freed
    -- .complete 93736,1 << Horde --10/10 Wind Hollow Essence
    .mob +Wind Hollow::251676
step
    #optional
    #completewith Resaan's Heirloom
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Caisses|r
    *|cRXP_WARN_NOTE :|r Cette quête est optionnelle. Vous pouvez la sauter quand il y a trop de gens qui la font. << Horde
    .complete 94896,1 --8/8 Abandoned Belongings
step
    #label Resaan's Heirloom
    .goto 2521,56.83,33.99,30,0
    .goto 2521,56.75,33.3,25,0
    .goto 2521,57.25,33.37,25,0
    .goto 2521,57.23,33.4,25,0
    .goto 2521,57.04,29.36
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Resaan Nimbuswalker|r
    .complete 94897,1 --1/1 Resaan's Heirloom
    .skipgossipid 138670
    .target Resaan Nimbuswalker::259013
step << Alliance
    #optional
    #completewith Abandoned BelongingsZ
    >>Tuez les |cRXP_ENEMY_Wind Hollows::251676|r.
    .complete 93172,1 --10/10 Wind Hollow freed
    .mob Wind Hollow::251676
step << Alliance
    #optional
    #completewith Abandoned BelongingsZ
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Caisses|r
    .complete 94896,1 --8/8 Abandoned Belongings
step << Alliance
    #label Abandoned BelongingsZ
    .subzoneskip 16833,1 -- Ruins of Ban'aethal
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .aura 1259691,1800 --Attuned
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
    .cast 1259705 >>Utilisez |T236219:0|t[Lecture des lignes telluriques] |cRXP_WARN_près d'une ligne d'énergie|r pour obtenir |T135737:0|t[Harmonisation].
    *Pendant que |T135737:0|t[Harmonisation] est actif, |T236219:0|t[Lecture des lignes telluriques] augmente la régénération passive de mana et de santé de |cRXP_WARN_100% pendant 15 secondes|r.
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
    >>Tuez les |cRXP_ENEMY_Wind Hollows::251676|r.
    .complete 93172,1 --10/10 Wind Hollow freed
    -- .complete 93736,1 << Horde--10/10 Wind Hollow Essence
    .mob +Wind Hollow::251676
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Caisses|r
    *|cRXP_WARN_NOTE :|r Cette quête est optionnelle. Vous pouvez la sauter quand il y a trop de gens qui la font. << Horde
    .complete 94896,1 --8/8 Abandoned Belongings
step
    --@THIDDI: Not sure if worth it (Wind Hollow Essence).
    #label Wind Hollow
    -- >>Kill |cRXP_ENEMY_Wind Hollows::251676|r. Loot them for |T2576094:0|t[|cRXP_LOOT_Wind Hollow Essence|r]. << Horde
    >>Tuez les |cRXP_ENEMY_Wind Hollows::251676|r.
    .complete 93172,1 --10/10 Wind Hollow freed
    -- .complete 93736,1 << Horde --10/10 Wind Hollow Essence
    .mob +Wind Hollow::251676
step << Alliance
    #completewith Unnerving Silence
    >>Tuez les |cRXP_ENEMY_Shadowgale Shrieklings::256092|r.
    *Ramassez le Butin pour |T1508517:0|t[|cRXP_LOOT_Shriekling Grif|r].
    .complete 92741,1 --8/8 Shriekling Talons
    .mob Shadowgale Shriekling::256092
step
    #completewith Unnerving Silence
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Seeds|r |cRXP_WARN_particulièrement autour des arbres|r.
    .complete 93160,1 --8/8 Zephyrseed
step
    .goto 2521,61.76,39.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elegael Thornpaw::257944|r.
    .target Elegael Thornpaw::257944
    .turnin 94484 >>Rendez la quête Unnerving Silence
    .accept 94485 >>Acceptez la quête Larmes of the Lady
    .accept 94486 >>Acceptez la quête Plumes for Sceller
    .accept 94487 >>Acceptez la quête Unwanted and Indigne
step
    #optional
    #completewith Unnerving Silence
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Tear Moss|r |cRXP_WARN_sur les arbres|r.
    .complete 94485,1 --8/8 Lady's Tear Moss
step
    #optional
    #completewith Unnerving Silence
    >>Tuez les |cRXP_ENEMY_Shadowgale Shrieklings::256092|r. Ramassez le Butin pour |T132927:0|t[|cRXP_LOOT_Pristine Shriekling Plumes|r].
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
    .mob Shadowgale Shriekling::256092
step << Alliance
    #completewith next
    >>Tuez les |cRXP_ENEMY_Al'Aketh Footsoldiers::252665|r et les |cRXP_ENEMY_Al'Aketh Stormchasers::252664|r.
    *Ramassez le Butin pour |T4622283:0|t[|cRXP_LOOT_Bloody Heirlooms|r] et |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r].
    .complete 94487,1 --10/10 Bloody Heirloom
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Footsoldier::252665
    .mob Al'Aketh Stormchaser::252664
step
    .goto 2521,63.80,36.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vayn Moongaze::254151|r.
    .accept 93165 >>Acceptez la quête Miséricorde Falls on Deaf Piercings
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
    >>Tuez les |cRXP_ENEMY_Al'Aketh Footsoldiers::252665|r et les |cRXP_ENEMY_Al'Aketh Stormchasers::252664|r.
    *Ramassez le Butin pour |T4622283:0|t[|cRXP_LOOT_Bloody Heirlooms|r], |T133856:0|t[|cRXP_LOOT_Al'Aketh Sectateur's Piercings|r] et |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r]. << Alliance
    *Ramassez le Butin pour |T4622283:0|t[|cRXP_LOOT_Bloody Heirlooms|r]. << Horde
    .complete 94487,1 --10/10 Bloody Heirloom
    .complete 92834,1 << Alliance --10/10 Al'Aketh Windstone Charm
    .complete 93165,1 << Alliance --10/10 Al'Aketh Cultist's Ear
    .mob Al'Aketh Footsoldier::252665
    .mob Al'Aketh Stormchaser::252664
step
    #hidewindow
    #completewith ToHermit << Alliance
    #completewith ForestHollowsA << Horde
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
    >>Tuez les |cRXP_ENEMY_Shadowgale Shrieklings::256092|r.
    *Ramassez-les pour |T1508517:0|t[|cRXP_LOOT_Shriekling Grif|r] et |T132927:0|t[|cRXP_LOOT_Pristine Shriekling Plumes|r]. << Alliance
    *Ramassez-les pour |T132927:0|t[|cRXP_LOOT_Pristine Shriekling Plumes|r].
    .complete 92741,1 << Alliance --8/8 Shriekling Talons
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
    .mob +Shadowgale Shriekling::256092
step << Alliance
    #completewith ToHermit
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Seeds|r |cRXP_WARN_notamment près des arbres|r.
    .complete 93160,1 --8/8 Zephyrseed
step << Alliance
    #optional
    #completewith ToHermit
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Tear Moss|r |cRXP_WARN_sur les arbres|r.
    .complete 94485,1 --8/8 Lady's Tear Moss
step << Horde
    #optional
    #completewith ForestHollowsB
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Tear Moss|r |cRXP_WARN_sur les arbres|r.
    .complete 94485,1 --8/8 Lady's Tear Moss
step << Horde
    #label ForestHollowsA
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Seeds|r |cRXP_WARN_notamment près des arbres|r.
    .complete 93160,1 --8/8 Zephyrseed
step << Horde
    #label ForestHollowsB
    .goto 2521,53.97,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Strange Hermit::251684|r.
    .turnin 93160 >>Rendez la quête The Forest's Prime
    .turnin 93172,1 >>Rendez la quête Libre the Hollows << Rogue/Hunter/Druid/Shaman
    .turnin 93172,2 >>Rendez la quête Libre the Hollows << Mage/Priest/Warlock
    .turnin 93172,3 >>Rendez la quête Libre the Hollows << Warrior/Paladin
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Strange Hermit::251684|r.
    .turnin 93160 >>Rendez la quête The Forest's Prime
    .turnin 93172,1 >>Rendez la quête Libre the Hollows << Rogue/Hunter/Druid/Shaman
    .turnin 93172,2 >>Rendez la quête Libre the Hollows << Mage/Priest/Warlock
    .turnin 93172,3 >>Rendez la quête Libre the Hollows << Warrior/Paladin
    .target Strange Hermit::251684
step
    .train 4036,3 -- Engineering Trained
    .isQuestComplete 98285 -- Camping 101: Engineering
    .goto 2521,53.97,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Strange Hermit::251684|r.
    .turnin 98285 >>Rendez la quête Campement 101: Ingénierie
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
    >>Tuez les |cRXP_ENEMY_Shadowgale Shrieklings::256092|r. Ramassez-les pour |T1508517:0|t[|cRXP_LOOT_Shriekling Grif|r] et |T132927:0|t[|cRXP_LOOT_Pristine Shriekling Plumes|r]. << Alliance
    >>Tuez les |cRXP_ENEMY_Shadowgale Shrieklings::256092|r. Ramassez-les pour |T132927:0|t[|cRXP_LOOT_Pristine Shriekling Plumes|r].
    .complete 92741,1 << Alliance --8/8 Shriekling Talons
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
    .mob +Shadowgale Shriekling::256092
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Tear Moss|r
    .complete 94485,1 --8/8 Lady's Tear Moss
step
    --@THIDDI: Not sure if worth it (Pristine Shriekling Feathers).
    #label Pristine Shriekling Feathers
    >>Tuez les |cRXP_ENEMY_Shadowgale Shrieklings::256092|r. Ramassez-les pour |T1508517:0|t[|cRXP_LOOT_Shriekling Grif|r] et |T132927:0|t[|cRXP_LOOT_Pristine Shriekling Plumes|r]. << Alliance
    >>Tuez les |cRXP_ENEMY_Shadowgale Shrieklings::256092|r. Ramassez-les pour |T132927:0|t[|cRXP_LOOT_Pristine Shriekling Plumes|r].
    .complete 92741,1 << Alliance --8/8 Shriekling Talons
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
    .mob +Shadowgale Shriekling::256092
step
    .goto 2521,61.76,39.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elegael Thornpaw::257944|r.
    .turnin 94485 >>Rendez la quête Larmes of the Lady
    .turnin 94487 >>Rendez la quête Unwanted and Indigne
    .turnin 94486 >>Rendez la quête Plumes for Sceller
    .accept 94488 >>Acceptez la quête Ces liens qui nous entravent
    .accept 94489 >>Acceptez la quête The Wounds of Trahison
    .target Elegael Thornpaw::257944
step
    .isQuestAvailable 94490 -- Ripped Missive
    .goto 2521,65.54,36.3
    >>Tuez le |cRXP_ENEMY_Commander Haalien::253622|r. Ramassez-le pour |T134161:0|t[|cRXP_LOOT_Severed Tête|r] et |T135332:0|t[|cRXP_LOOT_Ripped Missive|r].
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
    >>Tuez les |cRXP_ENEMY_Al'Aketh Footsoldiers::252665|r et les |cRXP_ENEMY_Al'Aketh Stormchasers::252664|r.
    *Ramassez-les pour |T133856:0|t[|cRXP_LOOT_Al'Aketh Sectateur's Piercings|r].
    .complete 93165,1 --10/10 Al'Aketh Cultist's Ear
    .mob Al'Aketh Footsoldier::252665
    .mob Al'Aketh Stormchaser::252664
step << Alliance
    #completewith next
    .itemcount 265476,1
    >>Utilisez le |T134332:0|t[Ripped Missive] dans vos sacs pour commencer la quête.
    .accept 94490 >>Acceptez la quête Ripped Missive
    .use 265476 -- Ripped Missive
step
    #optional
    .isOnQuest 93165 << Horde
    .isQuestComplete 93165 << Horde
    .goto 2521,63.75,36.44,30,0
    .goto 2521,63.80,36.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vayn Moongaze::254151|r |cRXP_WARN_à l'entrée de la grotte|r.
    .turnin 93165,1 >>Rendez la quête Miséricorde Falls on Deaf Piercings << Rogue/Hunter/Druid/Shaman
    .turnin 93165,2 >>Rendez la quête Miséricorde Falls on Deaf Piercings << Mage/Priest/Warlock
    .turnin 93165,3 >>Rendez la quête Miséricorde Falls on Deaf Piercings << Warrior/Paladin
    .target Vayn Moongaze::254151
step << Alliance
    .goto 2521,63.80,36.00
    .itemcount 265476,1
    >>Utilisez le |T134332:0|t[Ripped Missive] dans vos sacs pour commencer la quête.
    .accept 94490 >>Acceptez la quête Ripped Missive
    .use 265476 -- Ripped Missive
step
    .goto 2521,63.93,33.76,20,0
    .goto 2521,63.69,32.49,20,0
    .goto 2521,64,31.97,15,0
    .goto 2521,64.52,31.88,15,0
    .goto 2521,64,31.97,15,0
    .goto 2521,64.52,31.88,15,0
    .goto 2521,64.25,31.93
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Druids|r
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
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Druids|r.
    .complete 94489,1,4 --7/7 Injured Druids healed
    .target Mithraless Sterngale::258288
    .target Baeo Sharpstrike::258289
step
    #loop
    .goto 2521,64.98,34.96,10,0
    .goto 2521,64.51,34.89,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Druids|r
    .complete 94489,1,7 --7/7 Injured Druids healed
    .target Nayeela Snarlfang::258138
    .target Telenos Leafwhisper::258137
    .target Naaleos Leafwhisper::258134
step
    .goto 2521,64.49,34.74
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_Jorel Windsinger|r |cRXP_WARN_à l'intérieur de la grotte|r.
    .complete 94489,2 --1/1 Find Jorel Windsinger
    .skipgossipid 137859
    .target Jorel Windsinger::258130
step << Horde
    .itemcount 265476,1
    >>Utilisez le |T134332:0|t[Ripped Missive] dans vos sacs pour commencer la quête.
    .accept 94490 >>Acceptez la quête Ripped Missive
    .use 265476 -- Ripped Missive
step
    #optional
    #completewith next
    #label Wounds of Betrayal
    .goto 2521,63.93,34.5,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elegael Thornpaw::257944|r.
    .turnin 94489 >>Rendez la quête The Wounds of Trahison
    .target Elegael Thornpaw::257944
step
    #completewith Wounds of Betrayal
    .goto 2521,61.77,39.14,150 >>Quittez la grotte
step
    #requires Wounds of Betrayal
    .goto 2521,61.77,39.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elegael Thornpaw::257944|r.
    .turnin 94489 >>Rendez la quête The Wounds of Trahison
    .turnin 94490 >>Rendez la quête Ripped Missive
    .turnin 94488 >>Rendez la quête Ces liens qui nous entravent
    .accept 94491 >>Acceptez la quête Le Destin du Den
    .target Elegael Thornpaw::257944
step << Horde
    .abandon 93165 >>Abandonnez la quête Miséricorde tombe dans l'oreille d'un sourd

-- ============================================================================
-- City
-- ============================================================================

step
    .isOnQuest 94491 << Alliance -- The Fate of the Den
    .isOnQuest 94896 << Horde -- Aid For The Refugees
    -- .subzoneskip 16631,1 -- Shadowgale Forest
    .hs >>Utilisez votre Pierre de foyer pour vous téléporter à Valanaar
    .cooldown item,6948,>0 --Hearthstone
    .use 6948 -- Hearthstone

step
    .isOnQuest 94896 -- Aid For The Refugees
    .goto 2521,62.180,72.616
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Donaal Downbreeze|r.
    .vendor 255940 >>Vendez tout ce dont nous n'avez pas besoin
    .collect 1179,20 << Mage/Druid/Shaman/Priest/Warlock/Paladin -- Ice Cold Milk
    *Ne vendez pas |T133970:0|t[Stringy Viande], |T132832:0|t[Petit Eggs] ou |T133972:0|t[Strider Viande]. << Alliance
    *Ne vendez pas |T132832:0|t[Petit Eggs] et |T133972:0|t[Strider Viande]. << Horde
    *|cRXP_WARN_Nous en avons besoin pour Cuisine plus tard|r.
    .skipgossipid 137078
    .target Donaal Downbreeze::255940

-- ============================================================================
-- Alliance Class Training
-- ============================================================================

step << Alliance Warrior
    .goto 2521,59.886,72.863
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
    .target Seena Skybreaker::252377
    .turnin 94003 >>Rendez la quête Le Brise-ciel Barricade
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eltheen Nightbreeze::252379|r.
    .train 1766 >>Apprenez |T132219:0|t[Coup de pied]
    .train 3127 >>Apprenez [Parade]
    .skipgossipid 136810
    .target Eltheen Nightbreeze::252379
step << Alliance Hunter
    .money <0.08
    .xp <12,1
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .train 14281 >>Apprenez le |T132218:0|t[Tir des arcanes (Rang 2)]
    .target Quel'ana Quickgale::252389
step << Alliance Warrior
    .money <0.3
    .train 7887,1 -- Overpower (Rank 2) Not Trained
    .train 1671,1 -- Shield Bash (Rank 2) Not Trained
    .xp <12,1
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
    .train 5242 >>Entraînez-vous |T132333:0|t[Cri de guerre (Rang 2)]
    .train 7384 >>Apprenez |T132223:0|t[Fulgurance]
    .train 72 >>Entraînez-vous |T132357:0|t[Coup de bouclier]
    .skipgossipid 136813
    .target Seena Skybreaker::252377
step << Alliance Hunter/Alliance Rogue/Alliance Warrior
    .goto 2521,60.64,72.94,8,0
    .goto 2521,60.64,72.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nyalah Brightfire::257006|r |cRXP_WARN_à l'intérieur de la maison|r.
    .turnin 93317 >>Rendez la quête Crabe Season
    .target Nyalah Brightfire::257006
step << Alliance
    .goto 2521,63.55,73.45,25,0
    .goto 2521,63.99,75.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r.
    .turnin 94491 >>Rendez la quête Le Destin du Den
    .target Lotheluum Starbreeze::252359
step << Alliance Druid
    .money <0.16
    .subzoneskip 16638,1 -- Valanaar
    .xp <12,1
    .goto 2521,45.153,44.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Naeluna Prompte guérison::254081|r.
    .train 5229 >>Apprenez l'|T132126:0|t[Enrager]
    .train 8936 >>Apprenez le |T136085:0|t[Rétablissement]
    .target Naeluna Swiftmend::254081

-- ============================================================================
-- Shared Turn-ins
-- ============================================================================
step << Horde
    .goto 2521,63.989,75.090
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r.
    .target Lotheluum Starbreeze::252359
    .turnin 94491 >>Rendez la quête Le Destin du Den
step << Horde
    #optional
    .isQuestComplete 94896
    .goto 2521,65.95,74.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ealaane Nimbuswalker::259012|r.
    .turnin 94896 >>Rendez la quête Assister For The Refugees
    .turnin 94897 >>Rendez la quête Le Destin d'un être aimé
    .target Ealaane Nimbuswalker::259012
step << Horde
    .goto 2521,65.95,74.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ealaane Nimbuswalker::259012|r.
    .turnin 94897 >>Rendez la quête Le Destin d'un être aimé
    .target Ealaane Nimbuswalker::259012
step << Horde
    #optional
    .abandon 94896 >>Abandonnez la quête Assister For The Refugees
step << Alliance
    .goto 2521,65.95,74.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ealaane Nimbuswalker::259012|r.
    .turnin 94896 >>Rendez la quête Assister For The Refugees
    .turnin 94897 >>Rendez la quête Le Destin d'un être aimé
    .target Ealaane Nimbuswalker::259012
step << Alliance
    #optional
    #completewith next
    #label Unfortunate News
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talaanis Shadowsong::252476|r.
    .turnin 92644,1 >>Rendez la quête Malheureuses nouvelles << Rogue/Hunter/Druid/Shaman
    .turnin 92644,2 >>Rendez la quête Malheureuses nouvelles << Mage/Priest/Warlock
    .turnin 92644,3 >>Rendez la quête Malheureuses nouvelles << Warrior/Paladin
    .accept 94568 >>Acceptez la quête The Cult's True Plans
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
    .goto 2521,66.44,76.4,5 >>Montez la tour
step << Alliance
    #requires Unfortunate News
    .goto 2521,66.17,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talaanis Shadowsong::252476|r.
    .turnin 92644,1 >>Rendez la quête Malheureuses nouvelles << Rogue/Hunter/Druid/Shaman
    .turnin 92644,2 >>Rendez la quête Malheureuses nouvelles << Mage/Priest/Warlock
    .turnin 92644,3 >>Rendez la quête Malheureuses nouvelles << Warrior/Paladin
    .accept 94568 >>Acceptez la quête The Cult's True Plans
    .target Talaanis Shadowsong::252476
step << Alliance
    #optional
    #completewith next
    #label Talaanis Shadowsong
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 94568,1 --1/1 Learn what you can from the crystal
    .target Talaanis Shadowsong::252476
step << Alliance
    #completewith Talaanis Shadowsong
    .goto 2521,66.18,76.51
    .gossipoption 140111 >>Parlez à |cRXP_FRIENDLY_Talaanis Shadowsong::252476|r.
    .timer 50,RP
step << Alliance
    #requires Talaanis Shadowsong
    .goto 2521,66.17,76.52
    >>|cRXP_WARN_Attendez la fin du RP|r.
    -- *Cook |T132834:0|t[Herb Baked Eggs] and |T133974:0|t[Charred Wolf Meat] if you have the required materials.
    -- *Otherwise, craft any items you can using your other professions.
    .complete 94568,1 --1/1 Learn what you can from the crystal
    .target Talaanis Shadowsong::252476
step << Alliance
    .goto 2521,66.17,76.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talaanis Shadowsong::252476|r |cRXP_WARN_à côté de vous|r.
    .turnin 94568 >>Rendez la quête The Cult's True Plans
    .accept 92640 >>Acceptez la quête Une situation désespérée
    .target Talaanis Shadowsong::252476
step << Alliance
    .goto 2521,66.18,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
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
    .cast 1259416 >>Sautez de l'arbre et utilisez |T132845:0|t[Marche sur l'air] pour voler vers la position.
    .usespell 1259416
step << Alliance
    .goto 2521,63.33,78.16,30,0
    .goto 2521,63.04,77.53,30,0
    .goto 2521,62.31,78.27,30,0
    .goto 2521,62.13,79.02,30,0
    .goto 2521,60.68,80.11,30,0
    .goto 2521,59.15,79.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ayessa Dawnsinger::251968|r.
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Iaadaria Bitterwind::253004|r.
    .turnin 92741 >>Rendez la quête Unwelcome Des visiteurs
    .target Iaadaria Bitterwind::253004
step << Alliance
    .goto 2521,66.54,79.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elaadrin Evengale::252475|r.
    .complete 92640,3 --1/1 Recruit the High Order
    .skipgossipid 136547
    .skipgossipid 136546
    .target Elaadrin Evengale::252475
step << Alliance
    .goto 2521,66.628,79.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elaadrin Evengale::252475|r.
    .turnin 92834,1 >>Rendre la quête Avenged Tenfold << Rogue/Hunter/Druid/Shaman
    .turnin 92834,2 >>Rendre la quête Avenged Tenfold << Mage/Priest/Warlock
    .turnin 92834,3 >>Rendre la quête Avenged Tenfold << Warrior/Paladin
    .turnin -92709 >>Rendez la quête A Grand Adventure
    .target Elaadrin Evengale::252475
step << Alliance Mage
    .money <0.24
    .xp <12,1
    .goto 2521,65.91,80.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anathamaas Aetherwind::252373|r.
    .train 145 >>Apprenez |T135812:0|t[Boule de feu (Rang 3)]
    .train 604 >>Apprenez |T136006:0|t[Atténuation de la magie]
    -- .train 597 >>Train |T133952:0|t[Conjure Food (Rank 2)]
    .train 130 >>Apprenez |T135992:0|t[Chute lente]
    .skipgossipid 136807
    .target Anathamaas Aetherwind::252373
step << Alliance
    #optional
    #completewith next
    #label Prepare for Battle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
    .turnin 92640,1 >>Rendre la quête Une situation désespérée << Rogue/Hunter/Druid/Shaman
    .turnin 92640,2 >>Rendre la quête Une situation désespérée << Warrior/Paladin
    .turnin 92640,3 >>Rendre la quête Une situation désespérée << Mage/Priest/Warlock
    .accept 93065 >>Acceptez la quête Une bataille à préparer
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
    .goto 2521,66.44,76.4,5 >>Montez la tour
step << Alliance
    #requires Prepare for Battle
    .goto 2521,66.18,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
    .turnin 92640,1 >>Rendre la quête Une situation désespérée << Rogue/Hunter/Druid/Shaman
    .turnin 92640,2 >>Rendre la quête Une situation désespérée << Warrior/Paladin
    .turnin 92640,3 >>Rendre la quête Une situation désespérée << Mage/Priest/Warlock
    .accept 93065 >>Acceptez la quête Une bataille à préparer
    .target Valennia Stormfist::252383
step << Alliance
    .isQuestNotComplete 93065 -- Prepare for Battle
    .isOnQuest 93065 -- Prepare for Battle
    .subzoneskip 16638,1 -- Valanaar
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,66.49,76.64,8,0
    .goto 2521,66.39,76.26,10,0
    .goto 2521,63.9,74.16
    .cast 1259416 >>Sautez de l'arbre et utilisez |T132845:0|t[Marche sur l'air] pour voler vers la position.
    .usespell 1259416
step << Alliance
    .subzoneskip 16638,1 -- Valanaar
    .isOnQuest 93065 -- Prepare for Battle
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .aura 1259691,1800 --Attuned
    .goto 2521,63.9,74.16
    .cast 1259705 >>Utilisez |T236219:0|t[Lecture des lignes telluriques] |cRXP_WARN_près d'une ligne d'énergie|r pour obtenir |T135737:0|t[Harmonisation].
    *Pendant que |T135737:0|t[Harmonisation] est actif, |T236219:0|t[Lecture des lignes telluriques] augmente la régénération passive de mana et de santé de |cRXP_WARN_100% pendant 15 secondes|r.
    .usespell 1259705
step << Alliance
    .goto 2521,63.99,74.1,40,0
    .goto 2521,61.15,70.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valennia Stormfist::253844|r.
    *|cRXP_WARN_Si une Tornade est à proximité, utilisez-la pour un trajet plus rapide|r.
    .complete 93065,1 --|1/1 Find Valennia on the Road
    .turnin 93065 >>Rendez la quête Une bataille à préparer
    .target Valennia Stormfist::253844
step << Alliance !Hunter !Rogue !Warrior
    .goto 2521,60.95,73.17,15,0
    .goto 2521,60.64,72.94,8,0
    .goto 2521,60.64,72.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nyalah Brightfire::257006|r |cRXP_WARN_à l'intérieur de la maison|r.
    .turnin 93317 >>Rendez la quête Crabe Season
    .target Nyalah Brightfire::257006

-- ============================================================================
-- Discovery/Leveling Test Route Alliance
-- ============================================================================

step << Alliance
    .goto 2521,61.15,70.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valennia Stormfist|r.
    .accept 92947 >>Acceptez la quête Making Our Mouvement
    .target Valennia Stormfist
step << Alliance
    #completewith next
    #label Al'Aketh Guardian
    .goto 2521,59.58,66.41,30,0
    .goto 2521,58.98,60.8,30,0
    >>Tuez |cRXP_ENEMY_Al'Aketh Gardiens|r.
    .complete 92947,1 --8/8 Al'Aketh Guardian slain
    .complete 92947,2 --8/8 Al'Aketh Spiritcaller slain
    .complete 92947,3 --8/8 Al'Aketh Blademaster slain
    .mob Al'Aketh Guardian
step << Alliance
    #completewith Al'Aketh Guardian
    .goto 2521,59.1,52.83,80 >>Traversez le Pont
step << Alliance
    #requires Al'Aketh Guardian
    #loop
    .goto 2521,59.78,52.23,40,0
    .goto 2521,60.08,51.67,40,0
    .goto 2521,61.05,52.26,40,0
    .goto 2521,62.75,52.56,40,0
    .goto 2521,62.25,49.01,40,0
    .goto 2521,63.14,48.55,40,0
    .goto 2521,64.03,46.25,40,0
    .goto 2521,59.91,49.6,40,0
    >>Tuez |cRXP_ENEMY_Al'Akeths|r.
    *|cRXP_WARN_Priorisez les |cRXP_ENEMY_Gardiens|r|r
    .complete 92947,1 --8/8 Al'Aketh Guardian slain
    .complete 92947,2 --8/8 Al'Aketh Spiritcaller slain
    .complete 92947,3 --8/8 Al'Aketh Blademaster slain
    .mob Al'Aketh Guardian
    .mob Al'Aketh Blademaster
    .mob Al'Aketh Spiritcaller
step << Alliance
    #completewith next
    #label Hyusaa Quickbreeze
    .goto 2521,61.98,50.42,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hyusaa Quickbreeze|r.
    .complete 92947,4 --1/1 Report to Hyusaa Quickbreeze
    .target Hyusaa Quickbreeze
step << Alliance
    #completewith Hyusaa Quickbreeze
    .goto 2521,63.79,50.55,80 >>Prenez les escaliers vers |cRXP_FRIENDLY_Hyusaa Quickbreeze|r
step << Alliance
    #requires Hyusaa Quickbreeze
    .goto 2521,63.79,50.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hyusaa Quickbreeze|r.
    .complete 92947,4 --1/1 Report to Hyusaa Quickbreeze
    .turnin 92947 >>Rendez la quête Making Our Mouvement
    .accept 93958 >>Acceptez la quête Le Sanctuaire intérieur
    .target Hyusaa Quickbreeze
step << Alliance
    #completewith next
    #label The Inner Sanctum
    .goto 2521,65.35,50.33,30,0
    .goto 2521,66.91,50.05,30,0
    .goto 2521,66.85,50.56,10,0
    .goto 2521,66.83,49.89,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valennia Stormfist::253590|r.
    .target Valennia Stormfist::253590
    .turnin 93958 >>Rendez la quête Le Sanctuaire intérieur
    .accept 93835 >>Acceptez la quête Confront Lorthuna
    .disablecheckbox
step << Alliance
    #completewith The Inner Sanctum
    .goto 2521,66.14,49.15,30 >>Prenez l'escalier spiralé
step << Alliance
    #requires The Inner Sanctum
    .goto 2521,65.191,50.352
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valennia Stormfist::253590|r.
    .target Valennia Stormfist::253590
    .turnin 93958 >>Rendez la quête Le Sanctuaire intérieur
    .accept 93835 >>Acceptez la quête Confront Lorthuna
step << Alliance
    .subzoneskip 16679,1
    .goto 2521,65.55,50.35
    .subzone 16630 >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r.
step << Alliance
    .subzoneskip 16630,1
    .goto 2521,69.11,51.19,10,0
    .goto 2521,69.6,51.64,10,0
    .goto 2521,70.04,51.63,10,0
    .goto 2521,71.24,51.04,10,0
    .goto 2521,74.17,52.57,290 >>Contournez le plateau et prenez le courant de vent vers |cRXP_FRIENDLY_Elaadrin Evengale|r
    *|cRXP_WARN_Si le courant de vent n'est pas actif, attendez qu'il apparaisse|r
step << Alliance
    .subzoneskip 16630,1
    #completewith next
    .gossipoption 137230 >>Parlez à |cRXP_FRIENDLY_Elaadrin Evengale|r pour commencer l'événement.
    .timer 117,RP
    *|cRXP_WARN_Un autre joueur a peut-être déjà commencé|r
    .target Elaadrin Evengale
step << Alliance
    .goto 2521,74.16,52.54,25,0
    .goto 2521,74.48,53.92,25,0
    .goto 2521,75.07,53.15
    >>Suivez |cRXP_FRIENDLY_Elaadrin Evengale|r. Tuez |cRXP_ENEMY_Baron Anvillaxx|r et les |cRXP_ENEMY_Malevolent Storms|r qui attaquent.
    .complete 93835,1 --1/1 Confront Lorthuna
    .skipgossipid 137230
    .mob Baron Anvillaxx
    .mob Malevolent Storm
step << Alliance
    .goto 2521,75.09,53.25
    .subzoneskip 16630,1
    .subzone 16638 >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r.
step << Alliance
    .goto 2521,66.63,79.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elaadrin Evengale|r.
    .turnin 93835 >>Rendez la quête Confront Lorthuna
    .accept 94369 >>Acceptez la quête The Destin of Zephras
    .target Elaadrin Evengale
step << Alliance
    #completewith next
    #label Fate of Zephras
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talaanis Shadowsong|r.
    .complete 94369,1 --1/1 Speak with Talaanis Shadowsong
    .turnin 94369 >>Rendez la quête The Destin of Zephras
    .accept 93089 >>Acceptez la quête What Comes Suivant
    .target Talaanis Shadowsong
step << Alliance
    #completewith Fate of Zephras
    .goto 2521,65.65,79.27,30,0
    .goto 2521,64.98,77.12,30,0
    .goto 2521,65.93,76.37,5,0
    .goto 2521,66.46,76.8,5,0
    .goto 2521,66.43,76.58,5,0
    .goto 2521,66.43,76.83,5,0
    .goto 2521,66.31,77.08,5,0
    .goto 2521,66,76.57,8,0
    .goto 2521,66.19,76.22,8,0
    .goto 2521,66.44,76.4,5 >>Montez la tour
step << Alliance
    #requires Fate of Zephras
    .goto 2521,66.18,76.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talaanis Shadowsong|r.
    .complete 94369,1 --|1/1 Speak with Talaanis Shadowsong
    .turnin 94369 >>Rendez la quête The Destin of Zephras
    .accept 93089 >>Acceptez la quête What Comes Suivant
    .target Talaanis Shadowsong
step << Alliance
    .isOnQuest 93089
    .goto 2521,66.47,76.66,8,0
    .goto 2521,66.63,79.95
    .cast 1259416 >>Sautez de la montagne et utilisez la |T132845:0|t[Marche sur l'air] pour voler vers le donneur de quête.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Alliance
    .goto 2521,66.63,79.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elaadrin Evengale|r.
    .turnin 93089 >>Rendez la quête What Comes Suivant
    .accept 94946 >>Acceptez la quête The Magical Capitales of Dalaran
    .target Elaadrin Evengale
step << Alliance
    .goto 2521,66.63,79.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elaadrin Evengale|r.
    .accept 92709 >>Acceptez la quête A Grand Adventure
    .timer 70,Parlez pendant le jeu de rôle
    .target Elaadrin Evengale
step << Alliance
    *Renvoyez |cRXP_FRIENDLY_Elaadrin Evengale|r assez tôt pour la rejoindre avant la fin du chronomètre.
    .complete 92709,1 --1/1 Listen to Elaadrin
    .mob skyhopper
step << Alliance
    .goto 2521,66.63,79.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elaadrin Evengale|r.
    .turnin 92709 >>Rendez la quête A Grand Adventure
    .target Elaadrin Evengale
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
    >>Abandonnez les quêtes "Campement 101" restantes.
    *Cliquez sur la macro dans le cadre des objets actifs pour les abandonner tous en une fois.
    .abandon 97970 >>Abandonnez la quête Campement 101: Minage
    .abandon 97971 >>Abandonnez la quête Campement 101: Dépeçage
    .abandon 96646 >>Abandonnez la quête Campement 101: Cuisine
    .abandon 97968 >>Abandonnez la quête Campement 101: Herboristerie
    .abandon 97965 >>Abandonnez la quête Campement 101: Secourisme
    .abandon 97967 >>Abandonnez la quête Campement 101: Pêche
    .abandon 97963 >>Abandonnez la quête Campement 101: Alchimie
    .abandon 97964 >>Abandonnez la quête Campement 101: Forge
    .abandon 97973 >>Abandonnez la quête Campement 101: Couture
    .abandon 98286 >>Abandonnez la quête Campement 101: Enchantement
    .abandon 97969 >>Abandonnez la quête Campement 101: Travail du cuir
    .abandon 98285 >>Abandonnez la quête Campement 101: Ingénierie
    .abandon 93318 >>Abandonnez la quête WANTED: Vulgara l'Insatiabilité
    .macro Abandon 101,130722 >>Abandonnez la quête 101
step << Alliance
    #completewith Magical City of Dalaran
    >>Abandonnez les quêtes "Campement 101" restantes.
    *Cliquez sur la macro dans le cadre des objets actifs pour les abandonner tous en une fois.
    .abandon 97970 >>Abandonnez la quête Campement 101: Minage
    .abandon 97971 >>Abandonnez la quête Campement 101: Dépeçage
    .abandon 96646 >>Abandonnez la quête Campement 101: Cuisine
    .abandon 97968 >>Abandonnez la quête Campement 101: Herboristerie
    .abandon 97965 >>Abandonnez la quête Campement 101: Secourisme
    .abandon 97967 >>Abandonnez la quête Campement 101: Pêche
    .abandon 97963 >>Abandonnez la quête Campement 101: Alchimie
    .abandon 97964 >>Abandonnez la quête Campement 101: Forge
    .abandon 97973 >>Abandonnez la quête Campement 101: Couture
    .abandon 98286 >>Abandonnez la quête Campement 101: Enchantement
    .abandon 97969 >>Abandonnez la quête Campement 101: Travail du cuir
    .abandon 98285 >>Abandonnez la quête Campement 101: Ingénierie
    .abandon 93318 >>Abandonnez la quête WANTED: Vulgara l'Insatiabilité
    .abandon 92709 >>Abandonnez la quête A Grand Adventure
    .macro Abandon 101,130722 >>Abandonnez la quête 101

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
    +|cRXP_WARN_Le zeppelin peut arriver à tout moment pendant son cycle de 6 minutes. Pendant que vous attendez, accomplissez ce qui suit:|r
    *Vendez la camelote et réparez votre équipement.
    *Cuisinez de la nourriture et obtenez les bonus de feu de camp pour plus tard.
    *Équipez les améliorations et sélectionnez les talents.
step << Alliance
    #optional
    #completewith next
    #label Magical City of Dalaran
    -- .goto 2521,65.82,81.18,15,0
    -- .goto 2521,65.44,80.46,15,0
    -- .goto 2521,65.25,81.64,25,0
    *|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Denaaris Stargale::259084|r.
    -- .turnin -94946 >>Turn in The Magical City of Dalaran
    .accept 94947 >>Acceptez la quête Welcome to Azeroth
    .skipgossipid 137530
    .target Denaaris Stargale::259084
step << Alliance
    #label LeaveZephrasIsle
    #completewith Magical City of Dalaran
    .zoneskip 1416 -- Alterac Mountains
    .goto 2521,65.81,83.44
    .zone 1424 >>Prenez le Zeppelin vers Dalaran
step << Alliance
    #requires Magical City of Dalaran
    .goto 1416/0,438.93,448.88
    >>|cRXP_WARN_Ne sautez pas du zeppelin trop tôt, car vous pourriez être repoussé de la plate-forme|r.
    *|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Denaaris Stargale::259084|r.
    .target Denaaris Stargale::259084
    -- .turnin -94946 >>Turn in The Magical City of Dalaran
    .accept 94947 >>Acceptez la quête Welcome to Azeroth
step << Alliance Druid
    .goto 1416/0,385.700,385.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archimage Ansirem Tisserune::2543|r.
    .accept 94912 >>Acceptez la quête Child of (Nature)
    .target Archmage Ansirem Runeweaver::2543
step << Alliance
    .goto 1416/0,445.93,450.00
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r.
    .complete 94947,1 --Take the Skyborne Portal to Stormwind
step << Alliance Druid
    .goto 1453/0,1100.200,-8776.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sheldras Arbrelune::5504|r
    .target Sheldras Moontree::5504
    .turnin 94912 >>Rendez la quête Child of (Nature)
    .accept 94914 >>Acceptez la quête Reflet-de-Lune
step << Alliance Hunter
    .goto 1453/0,765.700,-8804.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Catherine Leland::5494|r
    >>|cRXP_BUY_Achetez un|r |T134335:0|t[Verroterie brillante] |cRXP_BUY_et trois|r |T134324:0|t[Asticots] |cRXP_BUY_d'elle. Ceci est pour une quête de 900 xp|r
    .collect 6529,1,95065,1 --|1/1 Shiny Bauble
    .collect 6530,3,95065,1 --|3/3 Nightcrawlers
    .target Catherine Leland::5494
step << Alliance Hunter
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .skill cooking,<1,1 -- shows if cooking is >1
    .goto 1453/0,596.400,-8831.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thurman Mullby::1285|r
    >>|cRXP_BUY_Achetez un|r [Bois simple] |cRXP_BUY_et un|r [Silex et amadou] |cRXP_BUY_ à Neal|r
    >>|cRXP_WARN_Ceci s'utilise pour fabriquer|r |T135805:0|t[Feux de camp basiques] |cRXP_WARN_sur les bateaux pour augmenter votre|r |T133971:0|t[Cuisine] |cRXP_WARN_compétence sans perdre de temps|r
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Thurman Mullby::1285
step << Alliance Hunter
    #ah
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Commissaire-priseur Jaxon::15659|r
    >>|cRXP_BUY_Achetez des|r |cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_BUY_et/ou|r |cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_BUY_pour monter le niveau de compétence de votre|r [Cuisine] |cRXP_BUY_plus tard|r
    >>Vous aurez besoin d'un niveau de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|cRXP_BUY_Achetez les articles suivants pour rendre plus rapidement des quêtes à Marche-de-l'Ouest et Sombrivage sous peu:|r
    >>|T133972:0|t[Viande de trotteur]
    >>|T133912:0|t[Mérou de Sombrivage]
    >>|T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Commissaire-priseur Jaxon::15659|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|cRXP_BUY_Achetez les articles suivants pour rendre plus rapidement des quêtes à Marche-de-l'Ouest et Sombrivage sous peu:|r
    >>|T133972:0|t[Viande de trotteur]
    >>|T133912:0|t[Mérou de Sombrivage]
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Généralissime Bolvar Fordragon::1748|r |cRXP_WARN_à l'intérieur du Fort|r.
    .target Highlord Bolvar Fordragon::1748
    .turnin 94947 >>Rendre la quête Welcome to Azeroth
    .accept 93963 >>Acceptez la quête Exploring the Alliance
    .accept 98021 >>Acceptez la quête Journey to Colline des Sentinelles << !Hunter



--step << Alliance
--    .goto 1453/0,350.200,-8516.200
--    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Randal Emerson::275491|r inside the Keep.
--    .complete 93963,1 --1/1 Receive Instructions from Randal Emerson
--    .skipgossipid 142485
--    .target Randal Emerson::275491
step << Alliance Hunter
    .goto 1453/0,1269.100,-8540.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gilbert Gris::267118|r
    .target Gilbert Gray::267118
    .accept 95065 >>Acceptez la quête Fishin' Temps
    .turnin 95065 >>Rendez la quête Fishin' Temps
step << Alliance Hunter
    #optional
    #label DarkshoreCook1
    #completewith DarkshoreBoat
    >>Sur le bateau si il vient d'arriver, ou sur le quai si le bateau vient de partir:
    .cast 818 >>|cRXP_WARN_Créez un|r |T135805:0|t[Feu de cuisine] |cRXP_WARN_(dans votre Livre de métier)|r
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
    >>Sur le bateau si il vient d'arriver, ou sur le quai si le bateau vient de partir:
    .cast 818 >>|cRXP_WARN_Créez un|r |T135805:0|t[Feu de cuisine] |cRXP_WARN_(dans votre Livre de métier)|r
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
    >>Sur le bateau si il vient d'arriver, ou sur le quai si le bateau vient de partir:
    .cast 818 >>|cRXP_WARN_Créez un|r |T135805:0|t[Feu de cuisine] |cRXP_WARN_(dans votre Livre de métier)|r
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
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les objets suivants:
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Morceau de viande de sanglier]|r en [Viande de sanglier rôtie]
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Viande de loup maigre]|r en [Viande de loup grillée]
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
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Viande de loup maigre]|r en [Viande de loup grillée]
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
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Morceau de viande de sanglier]|r en [Viande de sanglier rôtie]
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
    >>|cRXP_WARN_Augmentez votre niveau de|r |T135966:0|t[Premiers soins] |cRXP_WARN_en attendant le bateau pour Sombrivage si nécessaire|r
    .zone Darkshore >> Prenez le bateau pour Sombrivage
step << Alliance Hunter
    #label DarkshoreBoat
    .goto 1453/0,1330.100,-8645.400
    .zone Darkshore >> Prenez le bateau pour Sombrivage

-- ============================================================================
-- Horde Leaving Zephras Isle
-- ============================================================================

step << Horde
    #optional
    .isQuestComplete 93317 -- Crab Season
    .goto 2521,60.64,72.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nyalah Brightfire::257006|r |cRXP_WARN_à l'intérieur de la maison|r.
    .turnin 93317 >>Rendez la quête Crabe Season
    .target Nyalah Brightfire::257006
step << Horde Warrior
    .goto 2521,59.886,72.863
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
    .turnin 94003 >>Rendez la quête Le Brise-ciel Barricade
    .target Seena Skybreaker::252377
step << Horde Warrior
    .money <0.3
    .isQuestAvailable 93736 -- Unwelcome Spirits
    .subzoneskip 16638,1 -- Valanaar
    .train 7887,1 -- Overpower (Rank 2) Not Trained
    .train 1671,1 -- Shield Bash (Rank 2) Not Trained
    .xp <12,1
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
    .train 5242 >>Entraînez-vous |T132333:0|t[Cri de guerre (Rang 2)]
    .train 7384 >>Apprenez |T132223:0|t[Fulgurance]
    .train 72 >>Entraînez-vous |T132357:0|t[Coup de bouclier]
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
    .train 1160 >>Entraînez-vous |Tinterface/icons/ability_warrior_warcry.blp:0|t[Cri démoralisant]
    .train 6572 >>Entraînez-vous |Tinterface/icons/ability_warrior_revenge.blp:0|t[Vengeance]
    .train 1310185 >>Entraînez-vous |T136031:0|t[Maîtrise tactique]
    .skipgossipid 136813
    .target Seena Skybreaker::252377
step << Horde Rogue
    .money <0.16
    .xp <12,1
    .goto 2521,59.9,72.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eltheen Nightbreeze::252379|r.
    .train 1766 >>Apprenez |T132219:0|t[Coup de pied]
    .train 3127 >>Apprenez [Parade]
    .skipgossipid 136810
    .target Eltheen Nightbreeze::252379
step << Horde
    #optional
    .isQuestComplete 93737 -- The Broken Construct
    .goto 2521,59.066,72.987
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Riaani Nightwind::256083|r.
    .turnin 93737 >>Rendez la quête The Roué Assemblage
    .target Riaani Nightwind::256083
step << Horde
    #optional
    .isQuestTurnedIn 93737 -- The Broken Construct
    .goto 2521,59.066,72.987
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Riaani Nightwind::256083|r.
    .accept 93738 >>Acceptez la quête The Roué Assemblage
    .target Riaani Nightwind::256083
step << Horde
    .goto 2521,58.986,75.460
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Railee Thriceforged::257422|r.
    .vendor 257422 >>|cRXP_WARN_Allez au Vendeur et réparez si nécessaire|r.
    *Ne vendez pas |T132832:0|t[Petit Eggs] et |T133972:0|t[Strider Viande].
    *|cRXP_WARN_Nous en avons besoin pour Cuisine plus tard|r.
    .target Railee Thriceforged::257422
step << Horde
    #optional
    .isQuestComplete 93736 -- Unwelcome Spirits
    .goto 2521,58.128,78.307
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Endaria Mistgaze::254344|r.
    .turnin 93736 >>Rendez la quête Unwelcome Esprits
    .target Endaria Mistgaze::254344
step << Horde
    #optional
    .isOnQuest 93738
    .goto 2521,59.149,79.773
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ayessa Dawnsinger::251968|r.
    .turnin 93738 >>Rendez la quête The Roué Assemblage
    .target Ayessa Dawnsinger::251968
step << Horde
    #optional
    .isQuestComplete 92708 -- A Grand Adventure
    .goto 2521,59.154,79.789
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ayessa Dawnsinger::251968|r.
    .turnin 92708 >>Rendez la quête A Grand Adventure
    .target Ayessa Dawnsinger::251968
step << Horde
    .abandon 92708 >>Abandonnez la quête A Grand Adventure
step << Horde
    #label LeaveZephrasIsle
    .zoneskip 2521,1 -- Zephras Isle
    .isQuestAvailable 95350 -- Welcome to Azeroth
    .goto 2521,57.921,80.781
    .zone 1412 >>Prenez le zeppelin vers |cRXP_PICK_Mulgore|r.
step << Horde Druid Skyborne
    .goto 1412/1,423.400,-659.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Muln Rage de la terre::259118|r.
    .target Muln Earthfury::259118
    .accept 94911 >>Acceptez la quête Child of (Nature)
step << Horde
    .goto 1412/1,426.100,-658.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alaana Stormwalker::259119|r.
    .accept 95350 >>Acceptez la quête Welcome to Azeroth
    .target Alaana Stormwalker::259119
step << Horde
    #ignorecorpse
    .isOnQuest 95350
    .subzoneskip 17045,1 -- Skywatcher Plateau
    .goto 1412/1,323.300,-731.200
    .subzone 1638 >>Sautez de la falaise.
step << Horde
    .isOnQuest 95350
    .subzoneskip 1638,1
    .goto 1456/1,-74.900,-981.700
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Spirit Soins::6491|r.
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step << Horde Druid Skyborne
    #completewith ChildOfNatureC
    #label ChildOfNatureA
    #hidewindow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Turak Runetotem::3033|r.
    .turnin 94911 >>Rendez la quête Child of (Nature)
    .accept 94913 >>Acceptez la quête Reflet-de-Lune
    .target Turak Runetotem::3033
step << Horde Druid Skyborne
    #completewith ChildOfNatureA
    #label ChildOfNatureB
    .goto 1456/1,-110.500,-970.700,15,0
    .goto 1456/1,-76.900,-1026.000,15,0
    .goto 1456/1,-48.800,-1037.300,8,0
    .goto 1456/1,-7.300,-1089.600,25 >>Entrez dans Les Pitons-du-Tonnerre
step << Horde Druid Skyborne
    #requires ChildOfNatureB
    #completewith ChildOfNatureA
    #label ChildOfNatureC
    .goto 1456/1,-13.300,-1108.300,12,0
    .goto 1456/1,-46.900,-1092.900,12,0
    .goto 1456/1,-61.200,-1097.400,8,0
    .goto 1456/1,-198.000,-1046.500,12 >>Traversez le pont.
step << Horde Druid Skyborne
    #requires ChildOfNatureC
    .goto 1456/1,-281.500,-1039.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Turak Runetotem::3033|r.
    .turnin 94911 >>Rendez la quête Child of (Nature)
    .accept 94913 >>Acceptez la quête Reflet-de-Lune
    .target Turak Runetotem::3033
step << Horde Druid Skyborne
    #optional
    #requires ChildOfNatureA
    .xp <12,1
    .xp >14,1
    .goto 1456/1,-281.500,-1039.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Turak Runetotem::3033|r.
    .train 8936 >>Apprenez vos sorts de classe
    .target Turak Runetotem::3033
step << Horde Druid Skyborne
    #requires ChildOfNatureA
    .xp <14,1
    .goto 1456/1,-281.500,-1039.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Turak Runetotem::3033|r.
    .train 5178 >>Apprenez vos sorts de classe
    .target Turak Runetotem::3033
step << Horde !Druid
    #completewith next
    #label WelcomeToAzerothA
    #hidewindow
    .isOnQuest 95350 -- Welcome to Azeroth
    .zoneskip 1454 -- Orgrimmar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal::2995|r.
    .fly Orgrimmar >>Volez à Orgrimmar
    .target Tal::2995
step << Horde
    .goto 1456/1,-218.13,-1055.97--c:Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rahauro|r
    .accept 5722 >> Acceptez la quête À la recherche de la sacoche perdue
    .accept 5723 >> Acceptez la quête Tester la force de l'ennemi
    .target Rahauro
    .dungeon RFC
step << Horde !Druid
    #completewith WelcomeToAzerothA
    .goto 1456/1,-110.500,-970.700,15,0
    .goto 1456/1,-76.900,-1026.000,15,0
    .goto 1456/1,-48.800,-1037.300,8,0
    .goto 1456/1,-7.300,-1089.600,25 >>Entrez dans Les Pitons-du-Tonnerre
step << Horde
    #requires WelcomeToAzerothA << !Druid
    .isOnQuest 95350 -- Welcome to Azeroth
    .zoneskip 1454 -- Orgrimmar
    .goto 1456/1,26.500,-1196.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal::2995|r.
    .fly Orgrimmar >>Volez à Orgrimmar
    .target Tal::2995
step << Horde
    .goto 1454/1,-4439.41,1633.87--c:Orgrimmar,54.10,68.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Gryshka::6929|r
    .home >> Liez votre Pierre de Foyer à Orgrimmar
	.target Innkeeper Gryshka::6929
    .bindlocation 1637
step << Horde
    .goto 1454/1,-4460.600,1584.300,10,0
    .goto 1454/1,-4460.000,1598.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thatog::268701|r
    >>|cRXP_WARN_Il est à l'étage supérieur du bâtiment|r
    .accept 97246 >>Acceptez la quête Meal Appeal
    .target Thatog::268701
step << Horde
    .goto 1454/1,-4482.600,1775.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Borstan::3368|r
    .turnin 97246 >>Rendez la quête Meal Appeal
    .accept 97249 >>Acceptez la quête Favorite Nourriture
    .target Borstan::3368
step << Horde
    .goto 1454/1,-4466.800,1954.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kor'geld::3348|r
    .accept 97242 >>Acceptez la quête Yelmak's Medley
    .target Kor'geld::3348
step << Horde
    #completewith next
    .goto 1454/1,-4560.000,1908.500,15,0
    .goto 1454/1,-4587.000,1918.300,15,0
    .goto 1454/1,-4608.000,1897.400,15,0
    .goto 1454/1,-4632.300,1911.600,15 >>Voyagez jusqu'à la Vallée de l'Honneur
step << Horde
    #loop
    .goto 1454/1,-4653.900,1950.300,0
    .goto 1454/1,-4653.900,1950.300,20,0
    .goto 1454/1,-4677.700,1971.600,20,0
    .goto 1454/1,-4667.400,1997.000,20,0
    .goto 1454/1,-4609.800,2013.500,20,0
    .goto 1454/1,-4630.600,1968.100,20,0
    >>Ramassez le |cRXP_PICK_Handful of Cattails|r et le |cRXP_PICK_Speargrass Cuttings|r dans l'eau
    .complete 97242,1 --|2/2 Handful of Cattails
    .complete 97242,2 --|4/4 Speargrass Cuttings
step << Horde Hunter
    .xp <12,1
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormak Grimshot::3352|r
    .train 13795 >> Apprenez vos sorts de classe
    .target Ormak Grimshot::3352
step << Horde Hunter
    .goto 1454/1,-4611.09,2135.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xao'tsu::10088|r
    .train 24556 >> Apprenez les compétences de votre familier
    .target Xao'tsu::10088
step << Horde Warrior
    .xp <12,1
    .xp >14,1
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grezz Ragefist::3353|r
    .train 7384 >> Apprenez vos sorts de classe
    .target Grezz Ragefist::3353
step << Horde Warrior
    #optional
    .xp <14,1
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grezz Ragefist::3353|r
    .train 1160 >> Apprenez vos sorts de classe
    .target Grezz Ragefist::3353
step << Horde
    .goto 1454/1,-4466.900,1954.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kor'geld::3348|r
    .turnin 97242 >>Rendez la quête Yelmak's Medley
    .target Kor'geld::3348
step << Horde
    .goto 1454/1,-4477.900,1964.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yelmak::3347|r
    >>|cRXP_WARN_Vous devrez peut-être attend environ 10 secondes avant de pouvoir accepter cette quête|r
    .accept 97275 >>Acceptez la quête Whuut's the Ruée
    .target Yelmak::3347
step << Horde
    .goto 1454/1,-4463.000,1966.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Whuut::11046|r
    .turnin 97275 >>Rendez la quête Whuut's the Ruée
    .target Whuut::11046
step << Horde
    .goto 1454/1,-4193.400,2001.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Migi::268682|r
    .turnin 97249 >>Rendez la quête Favorite Nourriture
    .target Migi::268682
step << Horde
    .goto 1454/1,-4205.800,2007.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thra::268684|r
    .accept 97326 >>Acceptez la quête Rochers to Rests
    .target Thra::268684
step << Horde
    .isOnQuest 97326 -- Rocks to Rests
    .goto 1454/1,-4293.600,1949.900
    >>Ramassez les |cRXP_PICK_Rochers|r orange |cRXP_WARN_sur le sol|r
    >>|cRXP_WARN_Passez cette quête s'il y a beaucoup de concurrence! Il n'y a pas tant de |cRXP_PICK_Rochers|r et ils ne réapparaissent pas rapidement|r
    .complete 97326,1 --|8/8 Smooth Boulder
step << Horde
    .isQuestComplete 97326 -- Rocks to Rests
    .goto 1454/1,-4205.900,2007.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thra::268684|r
    .turnin 97326 >>Rendez la quête Rochers to Rests
    .target Thra::268684
step << Horde
    .goto 1454/1,-4126.300,1920.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall::4949|r.
    .turnin 95350 >>Rendez la quête Welcome to Azeroth
    .accept 98024 >>Acceptez la quête Un voyage à la Croisée
    --.accept 93739 >>Accept Exploring the Horde
    --.accept 5726 >>Accept Hidden Enemies
    .target Thrall::4949
    .dungeon !RFC
    --93739 will take too long, won't be able to fully complete and turnin until lvl 22/23 and at that point you get no xp
step << Horde
    .goto 1454/1,-4126.300,1920.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall::4949|r.
    .turnin 95350 >>Rendez la quête Welcome to Azeroth
    .accept 98024 >>Acceptez la quête Un voyage à la Croisée
    --.accept 93739 >>Accept Exploring the Horde
    .accept 5726 >>Acceptez la quête Ennemis cachés
    .target Thrall::4949
    .dungeon RFC
step << skip --Horde
    .goto 1454/1,-4133.400,1938.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nazgrel::3230|r.
    .complete 93739,1 --|1/1 Obtain Instructions from Nazgrel
    .target Nazgrel::3230
    .skipgossipid 142489
step << skip --Horde
    .goto 1454/1,-4162.200,1933.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vol'jin::10540|r.
    .complete 93739,2 --|1/1 Speak with Vol'jin
    .target Vol'jin::10540
step << Horde
    .xp <13,1
    .goto 1454/1,-4226.78,1914.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zor Lonetree::4047|r
    .accept 1061 >>Acceptez la quête Les esprits des Serres-Rocheuses
    .target Zor Lonetree::4047
step << Horde Shaman
    .xp <12,1
    .xp >14,1
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris Dreamseeker::3344|r
    .train 408341 >> Apprenez vos sorts de classe
    .target Kardris Dreamseeker::3344
step << Horde Shaman
    #optional
    .xp <14,1
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris Dreamseeker::3344|r
    .train 8045 >> Apprenez vos sorts de classe
    .target Kardris Dreamseeker::3344
step << Horde Rogue
    .xp <12,1
    .xp >14,1
    .goto 1454/1,-4296.34,1762.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormok::3328|r
    .train 1766 >> Apprenez vos sorts de classe
    .target Ormok::3328
step << Horde Rogue
    #optional
    .xp <14,1
    .goto 1454/1,-4296.34,1762.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormok::3328|r
    .train 1758 >> Apprenez vos sorts de classe
    .target Ormok::3328
step << Horde Mage
    .xp <12,1
    .xp >14,1
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pephredo::5882|r
    .train 145 >> Apprenez vos sorts de classe
    .target Pephredo::5882
step << Horde Mage
    #optional
    .xp <14,1
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pephredo::5882|r
    .train 1449 >> Apprenez vos sorts de classe
    .target Pephredo::5882
step << Horde
    #completewith next
    .zone Durotar >> Quittez Orgrimmar
    .zoneskip Tirisfal Glades
    .zoneskip Undercity
    .zoneskip Silverpine Forest
step << Horde Hunter
    #completewith next
    .subzone 362 >> Voyagez jusqu'à Tranchecolline
step << Horde Hunter
    #label Conscript
    .goto 1411/1,-4648.55,271.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Takrin Pathseeker::3336|r
    .accept 840 >>Acceptez la quête Sous les drapeaux de la Horde
    .target Takrin Pathseeker::3336
step << Horde Hunter
    #completewith next
    .subzone 379 >> Voyagez jusqu'au poste de Guet-Lointain
step << Horde Hunter
    .goto 1413/1,-3687.11,303.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kargal La Balafre::3337|r
    .turnin 840 >>Rendez la quête Sous les drapeaux de la Horde
    .accept 842 >>Acceptez la quête Conscription à la Croisée
    .target Kargal Battlescar::3337
step << Horde !Hunter
    .goto 1411/1,-4648.55,1321.88,40 >>Montez la Tour des Zeppelins
    .zone Tirisfal Glades >>Prenez le Zeppelin pour les Clairières de Tirisfal
    >>|cRXP_WARN_Invoquez de l'eau en attendant|r << Mage
step << Horde !Hunter
    #completewith DeliverytoSPF
    .goto 1420/0,253.4,2234.85,80 >> Voyagez jusqu'à Brill
step << Horde !Hunter
    .xp >13,1
    .goto 1420/0,254.600,2225.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deathguard Terrence::1738|r
    .accept 96895 >>Acceptez la quête The Argent Émissaire
    .target Deathguard Terrence::1738
step << Horde !Hunter
    #label DeliverytoSPF
    .xp >13,1
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Apothecary Johaan::1518|r
    .accept 445 >>Acceptez la quête Livraison dans la forêt des Pins argentés
    .target Apothecary Johaan::1518
step << Horde !Hunter
    .xp >13,1
    .goto 1420/0,54.600,1996.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hadric Harlson::267009|r
    .turnin 96895 >>Rendez la quête The Argent Émissaire
    .accept 96897 >>Acceptez la quête The Cult of the Damné
    .accept 96898 >>Acceptez la quête Remnants of Guerre
    .target Hadric Harlson::267009
step << Horde !Hunter
    .isOnQuest 96897,96898 -- The Cult of the Damned / Remnants of War
    .goto 1420/0,-130.500,1907.800
    >>Tuez |cRXP_ENEMY_Dark Enforcers::275437|r et |cRXP_ENEMY_Dark Neophytes|r. Ramassez-les pour |cRXP_LOOT_Necrotic Fragments de cristal|r
    >>|cRXP_LOOT_Necrotic Fragments de cristal|r |cRXP_WARN_peuvent aussi être ramassés au sol|r
    >>|cRXP_WARN_Attention ! Ces monstres frappent fort. |cRXP_ENEMY_Dark Enforcers::275437|r ont également une capacité à incantation instantanée infligeant 50-70 dégâts|r
    .complete 96897,2 --|8/8 Dark Enforcer slain
    .mob +Dark Enforcer::275437
    .complete 96897,1 --|8/8 Dark Neophyte slain
    .mob +Dark Neophyte
    .complete 96898,1 --|12/12 Necrotic Crystal Fragment
step << Horde !Hunter
    .isQuestComplete 96897 -- The Cult of the Damned
    .isQuestComplete 96898 -- Remnants of War
    .goto 1420/0,54.500,1996.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hadric Harlson::267009|r
    .turnin 96897 >>Rendez la quête The Cult of the Damné
    .turnin 96898 >>Rendez la quête Remnants of Guerre
    --.accept 96899 >>Accept Bandarion Keep
    .target Hadric Harlson::267009
step << Horde !Hunter
    #completewith UCflightpath1
    .goto 1458/0,239.14,1749.54,35,0
    .goto 1458/0,255.64,1724.70,35,0
    .goto 1458/0,240.68,1706.97,10,0
    .goto 1458/0,241.06,1660.12,10,0
    .goto 1458/0,257.08,1623.38,10,0
    .goto 1458/0,244.51,1598.73,15 >> Prenez l'ascenseur pour descendre dans Undercity
step << Horde !Hunter
    #label UCflightpath1
    .goto 1458/0,266.39,1567.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Michael Garrett::4551|r
    .fp Undercity >> Prenez le chemin de vol de Fossoyeuse
    .target Michael Garrett::4551
step << Horde !Hunter
    #ah
    .zoneskip Undercity,1
    .goto 1458/0,224.300,1648.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Commissaire-priseur Cain::15682|r
    >>|cRXP_BUY_Achetez trois|r |T133884:0|t[Murloc Les regards] |cRXP_BUY_à l'Hôtel des ventes|r
    >>|cRXP_WARN_Passez cette étape si vous voulez, c'est seulement un petit gain de temps|r
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
    .zone Tirisfal Glades >> Quittez Undercity par les Égouts
step << Horde !Hunter
    #label Entersilverpine
    .zoneskip Silverpine Forest
    .goto 1420/0,629.36,1553.42
    .zone Silverpine Forest >> Voyagez à la Forêt des Pins argentés
]])
