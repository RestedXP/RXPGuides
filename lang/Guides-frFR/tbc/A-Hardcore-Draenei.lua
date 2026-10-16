if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#defaultfor Draenei
#group RXP TBC Guide de Survie (A)
#subgroup RestedXP Guide de Survie 1-20
#name 1-12 Île de Brume-Azur
#next 12-14 Sombrivage

step
    .goto Azuremyst Isle,82.96,43.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Megelon|r
    .accept 9279 >> Acceptez la quête Vous avez survécu !
    .target Megelon
step << Shaman/Warrior
	#completewith next
	.goto Azuremyst Isle,79.987,47.117
	.vendor >> |cRXP_WARN_Tuez 2-3 |cRXP_ENEMY_Vale Moths|r ou |cRXP_ENEMY_Volatile Mutations|r pour avoir de quoi vendre au marchand (au moins 10+ pièces de cuivre)|r
    >>|cRXP_WARN_Vendez tout ce dont nous n'avez pas besoin à|cRXP_FRIENDLY_Aurok|r à l'intérieur|r
    .mob Vale Moth
    .mob Volatile Mutation
    .target Aurok
step << Shaman
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Firmanvaar|r
	.train 8017 >>Apprenez [Arme Croque-roc]
    .target Firmanvaar
step << Warrior
    .goto Azuremyst Isle,79.587,49.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kore|r
    .train 6673 >>Apprenez [Cri de guerre]
    .target Kore
step << Priest/Mage
    #completewith next
    +|cRXP_WARN_Tuez les |cRXP_ENEMY_Vale Moths|r et les |cRXP_ENEMY_Volatile Mutations|r. Dépouillez-les jusqu'à ce que vous ayez l'équivalent de 50 pièces de cuivre à vendre au marchand (en comptant votre équipement)|r
    .mob Vale Moth
    .mob Volatile Mutation
step
    .goto Azuremyst Isle,80.419,45.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Proenitus|r
    .turnin 9279 >> Rendez la quête Vous avez survécu !
    .accept 9280 >> Acceptez la quête Recharger les cristaux de soin
    .target Proenitus
step << Priest/Mage
    .goto Azuremyst Isle,79.253,50.884
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ryosh|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    >>|cRXP_BUY_Achetez 10|r [Eau de source]
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Ryosh
step
    .goto Azuremyst Isle,79.139,46.536
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Botanist Taerix|r
    .accept 10302 >> Acceptez la quête Mutations volatiles
    .target Botanist Taerix
step
    #loop
    .goto Azuremyst Isle,80.14,41.70,0
    .goto Azuremyst Isle,75.27,43.70,0
    .goto Azuremyst Isle,73.4,51.4,0
    .goto Azuremyst Isle,80.14,41.70,50,0
    .goto Azuremyst Isle,75.27,43.70,50,0
    .goto Azuremyst Isle,73.4,51.4,50,0
    >>Tuez les |cRXP_ENEMY_Volatile Mutations|r
    >>Tuez les|cRXP_ENEMY_Vale Moths|r. Dépouillez-les pour leur |cRXP_LOOT_Blood|r
    >>|cRXP_WARN_Priorisez les |cRXP_ENEMY_Volatile Mutations|r comme vous rendrez la quête et complèterez |cRXP_ENEMY_Vale Moths|r plus tard|r
    .complete 10302,1 --Kill Volatile Mutation (x8)
    .mob +Volatile Mutation
    .complete 9280,1 --Collect Vial of Moth Blood (x8)
    .mob +*Vale Moth
    .disablecheckbox
step
    #optional
    .isQuestComplete 9280
    .goto Azuremyst Isle,80.419,45.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Proenitus|r
    .turnin 9280 >> Rendez la quête Recharger les cristaux de soin
    .accept 9409 >> Acceptez la quête Livraison urgente
    .target Proenitus
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Botanist Taerix|r et les |cRXP_FRIENDLY_Apprentice Vishael|r
    .turnin 10302 >> Rendez la quête Mutations volatiles
    .accept 9293 >> Acceptez la quête Ce qui doit être fait...
    .target +Botanist Taerix
    .goto Azuremyst Isle,79.139,46.536
    .accept 9799 >> Acceptez la quête Un travail de botanique
    .target +Apprentice Vishael
    .goto Azuremyst Isle,79.071,46.624
step
    #completewith next
    >>Tuez les|cRXP_ENEMY_Vale Moths|r. Dépouillez-les pour leur |cRXP_LOOT_Blood|r
    .complete 9280,1 --Collect Vial of Moth Blood (x8)
    .mob Vale Moth
step
    #loop
    .goto Azuremyst Isle,74.5,48.5,0
    .goto Azuremyst Isle,72.94,52.21,0
    .goto Azuremyst Isle,72.26,49.29,0
    .goto Azuremyst Isle,74.5,48.5,50,0
    .goto Azuremyst Isle,72.94,52.21,50,0
    .goto Azuremyst Isle,72.26,49.29,50,0
    >>Tuez les |cRXP_ENEMY_Mutated Root Lashers|r. Dépouillez-les pour leur |cRXP_LOOT_Lasher Samples|r
    >>Ramassez les |cRXP_LOOT_Corrupted Flowers|r sur le sol
    .complete 9293,1 --Collect Lasher Sample (x10)
    .complete 9799,1 --Collect Corrupted Flower (x3)
    .mob Mutated Root Lasher
step
    #loop
    .goto Azuremyst Isle,74.6,43.6,0
    .goto Azuremyst Isle,78.2,40.2,0
    .goto Azuremyst Isle,79.2,45.0,0
    .goto Azuremyst Isle,76.0,46.6,0
    .goto Azuremyst Isle,74.6,43.6,60,0
    .goto Azuremyst Isle,78.2,40.2,60,0
    .goto Azuremyst Isle,79.2,45.0,60,0
    .goto Azuremyst Isle,76.0,46.6,60,0
    >>Tuez les |cRXP_ENEMY_Vale Moths|r. Dépouillez-les pour leur |cRXP_LOOT_Blood|r
    .complete 9280,1 --Collect Vial of Moth Blood (x8)
    .mob Vale Moth
step
    #optional
    .isQuestTurnedIn 9280
    #loop
    .goto Azuremyst Isle,74.5,48.5,0
    .goto Azuremyst Isle,72.9,52.2,0
    .goto Azuremyst Isle,72.2,49.2,0
    .goto Azuremyst Isle,74.6,43.6,0
    .goto Azuremyst Isle,78.2,40.2,0
    .goto Azuremyst Isle,79.2,45.0,0
    .goto Azuremyst Isle,76.0,46.6,0
    .goto Azuremyst Isle,74.5,48.5,50,0
    .goto Azuremyst Isle,72.9,52.2,50,0
    .goto Azuremyst Isle,72.2,49.2,50,0
    .goto Azuremyst Isle,74.6,43.6,60,0
    .goto Azuremyst Isle,78.2,40.2,60,0
    .goto Azuremyst Isle,79.2,45.0,60,0
    .goto Azuremyst Isle,76.0,46.6,60,0
	.xp 4-420 >>Gagnez en expérience jusqu'à ce qu'il ne vous manque que 420xp pour le niveau 4 (980/1400)
    .mob Mutated Root Lasher
    .mob Volatile Mutation
    .mob Vale Moth
step
    #optional
    .isQuestAvailable 9280
    #loop
    .goto Azuremyst Isle,74.5,48.5,0
    .goto Azuremyst Isle,72.9,52.2,0
    .goto Azuremyst Isle,72.2,49.2,0
    .goto Azuremyst Isle,74.6,43.6,0
    .goto Azuremyst Isle,78.2,40.2,0
    .goto Azuremyst Isle,79.2,45.0,0
    .goto Azuremyst Isle,76.0,46.6,0
    .goto Azuremyst Isle,74.5,48.5,50,0
    .goto Azuremyst Isle,72.9,52.2,50,0
    .goto Azuremyst Isle,72.2,49.2,50,0
    .goto Azuremyst Isle,74.6,43.6,60,0
    .goto Azuremyst Isle,78.2,40.2,60,0
    .goto Azuremyst Isle,79.2,45.0,60,0
    .goto Azuremyst Isle,76.0,46.6,60,0
	.xp 4-500 >>Gagnez en expérience jusqu'à ce qu'il ne vous manque que 500xp pour le niveau 4 (900/1400)
    .mob Mutated Root Lasher
    .mob Volatile Mutation
    .mob Vale Moth
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Botanist Taerix|r et les |cRXP_FRIENDLY_Apprentice Vishael|r
    .turnin 9293 >> Rendez la quête Ce qui doit être fait...
    .accept 9294 >> Acceptez la quête Guérir le lac
    .target +Botanist Taerix
    .goto Azuremyst Isle,79.139,46.536
    .turnin 9799 >> Rendez la quête Un travail de botanique
    .target +Apprentice Vishael
    .goto Azuremyst Isle,79.071,46.624
step
    .goto Azuremyst Isle,80.419,45.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Proenitus|r
    .turnin 9280 >> Rendez la quête Recharger les cristaux de soin
    .accept 9409 >> Acceptez la quête Livraison urgente
    .target Proenitus
step
	#completewith next
	.goto Azuremyst Isle,79.987,47.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aurok|r
	.vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Aurok
step << Mage
	.goto Azuremyst Isle,79.582,48.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valaatu|r
	.accept 9290 >> Acceptez Mirages Training
	.turnin 9290 >> Rendez Mirages Training
    .train 1459 >> Apprenez [Intelligence des Arcanes]
    .train 116 >> Apprenez [Eclair de givre]
    .target Valaatu
step << Paladin
    #loop
    .goto Azuremyst Isle,79.695,48.236,7,0
    .goto Azuremyst Isle,80.12,49.13,7,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aurelon|r
    >>|cRXP_FRIENDLY_Aurelon|r peut patrouiller aux alentours
	.accept 9287 >> Acceptez Paladin Training
	.turnin 9287 >> Rendez Paladin Training
    .train 465 >>Apprenez [Aura de dévotion]
    .train 19740 >> Apprenez [Bénédiction de puissance]
    .train 20271 >> Apprenez [Jugement]
    .target Aurelon
step
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r patrouille aux alentours
    .turnin 9409 >> Rendez la quête Livraison urgente
    .accept 9283 >> Acceptez la quête Sauvez les rescapés !
    .accept 9291 >> Acceptez Priest Training << Priest
    .turnin 9291 >> Rendez Priest Training << Priest
    .train 1243 >> Apprenez [Mot de pouvoir : Robustesse] << Priest
    .train 2052 >> Apprenez [Soins inférieurs] << Priest
    .train 589 >> Apprenez [Mot de l'ombre : Douleur] << Priest
    .target Zalduun
step << Shaman
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Firmanvaar|r
    .accept 9421 >> Acceptez Shaman Training
	.turnin 9421 >> Rendez Shaman Training
    .accept 9449 >> Acceptez la quête L'appel de la terre
	.train 8042 >> Apprenez [Horion de terre]
    .target Firmanvaar
step << Shaman
    #completewith next
    .usespell 28880 >>Lancez [Don des Naaru] |cRXP_WARN_sur un |cRXP_FRIENDLY_Draenei Survivor|r si vous en trouvez un|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
step << Shaman
    .goto Azuremyst Isle,71.788,40.241
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Spirit of the Vale|r
    .turnin 9449 >> Rendez la quête L'appel de la terre
    .accept 9450 >> Acceptez la quête L'appel de la terre
    .target Spirit of the Vale
step << Shaman
    #loop
    .goto Azuremyst Isle,69.62,35.13,0
    .goto Azuremyst Isle,70.73,37.74,40,0
    .goto Azuremyst Isle,69.62,35.13,60,0
    >>Tuez un |cRXP_ENEMY_Restless Spirits of Earth|r
    .complete 9450,1 --Kill Restless Spirit of Earth (x4)
    .mob Restless Spirit of Earth
step << Shaman
    .goto Azuremyst Isle,71.788,40.241
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Spirit of the Vale|r
    .turnin 9450 >> Rendez la quête L'appel de la terre
    .accept 9451 >> Acceptez la quête L'appel de la terre
    .target Spirit of the Vale
step << Shaman
    #completewith next
    .usespell 28880 >>Lancez [Don des Naaru] |cRXP_WARN_sur un |cRXP_FRIENDLY_Draenei Survivor|r si vous en trouvez un|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
step << Shaman
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Firmanvaar|r
    .turnin 9451 >> Rendez la quête L'appel de la terre
    .target Firmanvaar
step << Shaman
    .isQuestComplete 9283
    #optional
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r patrouille aux alentours
    .turnin 9283 >> Rendez la quête Sauvez les rescapés !
    .target Zalduun
step << Warrior
    .goto Azuremyst Isle,79.587,49.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kore|r
    .accept 9289 >> Acceptez Warrior Training
	.turnin 9289 >> Rendez Warrior Training
    .train 100 >> Apprenez [Charge]
    .train 772 >> Apprenez [Pourfendre]
    .target Kore
step << Hunter
	.goto Azuremyst Isle,79.886,49.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keilnei|r
	.accept 9288 >> Acceptez Hunter Training
	.turnin 9288 >> Rendez Hunter Training
    .train 1978 >>Apprenez [Morsure de serpent]
    .target Keilnei


--xx

step << Priest
	.goto Azuremyst Isle,79.254,50.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ryosh|r
    >>|cRXP_BUY_Achetez 10|r [Refreshing Spring Water] |cRXP_BUY_à Brother Danil|r
    .collect 159,10 --Collect Refreshing Spring Water (x15)
    .target Ryosh
    .xp >5,1

--xx


step << Shaman/Hunter
	#completewith next
	.goto Azuremyst Isle,79.188,50.928
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mura|r
	.vendor >> Vendez tout ce dont nous n'avez pas besoin
    >>|cRXP_BUY_Achetez 5 stacks de|r [Flèche grossière] |cRXP_BUY_au marchand|r << Hunter
    .collect 2512,1000 << Hunter --Rough Arrow (1000)
    .target Mura
step
    .goto Azuremyst Isle,79.419,51.235
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Technician Zhanaa|r
    .accept 9305 >> Acceptez la quête Pièces de rechange
    .target Technician Zhanaa
step
    .goto Azuremyst Isle,79.486,51.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vindicator Aldar|r
    .accept 9303 >> Acceptez la quête Inoculation
    .target Vindicator Aldar
step
    #completewith Owlkininoculated
    .usespell 28880 >>Lancez [Don des Naaru] sur un |cRXP_FRIENDLY_Draenei Survivor|r. Ils sont éparpillés tout autour de la zone de départ
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
    .subzoneskip 3559 -- Nestlewood Hills
step
    .goto Azuremyst Isle,77.390,58.779
	>>Cliquez sur le |cRXP_PICK_Irradiated Power Crystal|r dans le lac
    .complete 9294,1 --Collect Disperse the Neutralizing Agent (x1)
step
    #completewith next
	.use 22962 >>Canalisez le [Cristal d'inoculation] |cRXP_WARN_sur les |cRXP_ENEMY_Nestlewood Owlkins|r pendant 4 secondes|r
    .complete 9303,1 --Nestlewood Owlkin inoculated (x6)
    .mob Nestlewood Owlkin
step
    .goto Azuremyst Isle,80.92,58.89,20,0
    .goto Azuremyst Isle,82.27,59.43,30,0
    .goto Azuremyst Isle,82.93,61.46,30,0
    .goto Azuremyst Isle,85.49,68.25,50,0
    .goto Azuremyst Isle,88.33,62.21
	>>Ramassez les |cRXP_LOOT_Emitter Spare Parts|r sur le sol
    .complete 9305,1 --Collect Emitter Spare Part (x4)
step
    #label Owlkininoculated
    .goto Azuremyst Isle,80.92,58.89,20,0
    .goto Azuremyst Isle,82.27,59.43,30,0
    .goto Azuremyst Isle,82.93,61.46,30,0
    .goto Azuremyst Isle,85.49,68.25,50,0
    .goto Azuremyst Isle,88.33,62.21
	.use 22962 >>Canalisez le [Cristal d'inoculation] |cRXP_WARN_sur les |cRXP_ENEMY_Nestlewood Owlkins|r pendant 4 secondes|r
    .complete 9303,1 --Nestlewood Owlkin inoculated (x6)
    .mob Nestlewood Owlkin
step
    #completewith next
    .subzone 3527 >> Retournez sur le Site du Crash
step
    .goto 1943/1,3865.399,6144.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vindicator Aldar|r
    .target Vindicator Aldar
    .turnin 9303 >>Rendez la quête Inoculation
    .accept 9309 >>Acceptez la quête L'éclaireur disparu
step
    .goto 1943/1,3865.000,6157.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Technician Zhanaa|r
    .target Technician Zhanaa
    .turnin 9305 >>Rendez la quête Pièces de rechange
step
    .goto 1943/1,3877.000,6284.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Botanist Taerix|r
    .target Botanist Taerix
    .turnin 9294 >>Rendez la quête Guérir le lac
step
    .goto 1943/1,3838.800,6221.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zalduun|r
    .target Zalduun
    .turnin 9283 >>Rendez la quête Sauvez les rescapés !
step
    .isQuestComplete 9283
    #optional
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r patrouille aux alentours
    .turnin 9283 >> Rendez la quête Sauvez les rescapés !
    .target Zalduun
step
	#completewith next
	.goto Azuremyst Isle,79.987,47.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aurok|r
	.vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Aurok
step
    .goto Azuremyst Isle,79.139,46.536
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Botanist Taerix|r
    .turnin 9294 >> Rendez la quête Guérir le lac
    .target Botanist Taerix
step
    #completewith SurveyorCandress
    .usespell 28880 >>Lancez [Don des Naaru] sur un|cRXP_FRIENDLY_Draenei Survivor|r. Ils sont éparpillés tout autour de la zone de départ
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
step
    .goto Azuremyst Isle,71.998,60.856
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tolaan|r
    .turnin 9309 >> Rendez la quête L'éclaireur disparu
    .accept 10303 >> Acceptez la quête Les Elfes de sang
    .target Tolaan
step
    .goto Azuremyst Isle,69.420,64.608
    >>Tuez les |cRXP_ENEMY_Blood Elf Scouts|r
    .complete 10303,1 --Kill Blood Elf Scout (x10)
    .mob Blood Elf Scout
step
    .goto Azuremyst Isle,71.998,60.856
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tolaan|r
    .turnin 10303 >> Rendez la quête Les Elfes de sang
    .accept 9311 >> Acceptez la quête L'espionne elfe de sang
    .target Tolaan
step
    #label SurveyorCandress
    .goto Azuremyst Isle,69.271,65.772
    >>Tuez |cRXP_ENEMY_Surveyor Candress|r. Dépouillez-la pour ses [|cRXP_LOOT_Blood Elf Plans|r]
    .use 24414 >>Utilisez les [|cRXP_LOOT_Blood Elf Plans|r] pour commencer la quête
    .complete 9311,1 --Kill Surveyor Candress (x1)
    .collect 24414,1,9798,1 -- Blood Elf Plans
    .accept 9798 >> Acceptez la quête Les plans des Elfes de sang
    .mob Surveyor Candress
step
    #loop
    .goto Azuremyst Isle,71.8,55.8,0
    .goto Azuremyst Isle,77.6,56.0,0
    .goto Azuremyst Isle,74.8,43.4,0
    .goto Azuremyst Isle,80.2,42.6,0
    .goto Azuremyst Isle,71.8,55.8,80,0
    .goto Azuremyst Isle,77.6,56.0,80,0
    .goto Azuremyst Isle,74.8,43.4,80,0
    .goto Azuremyst Isle,80.2,42.6,80,0
    >>Lancez [Don des Naaru] sur un |cRXP_FRIENDLY_Draenei Survivor|r. Ils sont éparpillés tout autour de la zone de départ
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
step
    #optional
    .isQuestAvailable 9283
    .goto Azuremyst Isle,69.420,64.608
    .xp 6-1450 >>Tuez des |cRXP_ENEMY_Blood Elf Scouts|r jusqu'à ce qu'il ne vous reste que 1450xp pour le niveau 6 (1350/2800)
    .mob Blood Elf Scout
step
    #optional
    .isQuestTurnedIn 9283
    .goto Azuremyst Isle,69.420,64.608
    .xp 6-1230 >>Tuez des |cRXP_ENEMY_Blood Elf Scouts|r jusqu'à ce qu'il ne vous reste que 1230xp pour le niveau 6 (1570/2800)
    .mob Blood Elf Scout
step
    #completewith next
    .subzone 3527 >> Retournez sur le Site du Crash
step
    #label BloodElfSpy
    .goto Azuremyst Isle,79.488,51.622
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vindicator Aldar|r
    .turnin 9311 >> Rendez la quête L'espionne elfe de sang
    .turnin 9798 >> Rendez la quête Les plans des Elfes de sang
    .accept 9312 >> Acceptez la quête L'émetteur
    .target Vindicator Aldar
step
    .goto Azuremyst Isle,79.422,51.234
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Technician Zhanaa|r
    .turnin 9312 >> Rendez la quête L'émetteur
    .accept 9313 >> Acceptez la quête En route pour le Guet d'azur
    .target Technician Zhanaa
step
    #loop
    .goto Azuremyst Isle,80.25,48.46,0
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r patrouille aux alentours
    .turnin 9283 >> Rendez la quête Sauvez les rescapés !
    .target Zalduun
step
    .goto Azuremyst Isle,64.497,54.037
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aeun|r
    .accept 9314 >> Acceptez la quête Une demande du Guet d'azur
    .target Aeun
step
    .goto Azuremyst Isle,61.052,54.248
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Diktynna|r
    .accept 9452 >> Acceptez la quête Le lutjan rouge, c'est bon !
    .target Diktynna
step
    .isOnQuest 9452
    .goto Azuremyst Isle,62.38,51.93,40,0
    .goto Azuremyst Isle,61.87,41.62,60 >> Remontez la rivière en nageant
    .use 23654 >>Utilisez le [Filet de pêche draeneï] sur les |cRXP_PICK_Schools of Red Snapper|r que vous voyez sur le route. Passez cette étape une fois que avez rem|cRXP_WARN_on|rté la rivière, vous la terminerez plus tard
	.collect 23614,10 -- Red Snapper (10)
    .disablecheckbox
step
	#completewith next
    >>Gardez un œil pour un |cRXP_FRIENDLY_Draenei Youngling|r
    >>Lorsqu'ils sont en combat, lancez [Don des Naaru] sur eux, puis acceptez la quête
	.accept 9612 >> Acceptez A Hearty Thanks!
	.unitscan Draenei Youngling
step
    .goto Azuremyst Isle,53.9,34.4
    >>Tuez les |cRXP_ENEMY_Infected Nightstalker Runts|r. Dépouillez-les pour un [|cRXP_LOOT_Faintly Glowing Crystal|r]
    .use 23678 >>Utilisez le [|cRXP_LOOT_Faintly Glowing Crystal|r] pour commencer la quête
	.collect 23678,1,9455,1 -- Faintly Glowing Crystal (1)
    .accept 9455 >> Acceptez la quête Une étrange trouvaille
    .mob Infected Nightstalker Runt
step
    #completewith NightstalkerCleanUp
    .goto 1943/1,4776.600,6457.500,55,0
    .goto 1943/1,4807.399,6348.100,55,0
    .goto 1943/1,4860.899,6302.500,55,0
    .subzone 3576 >> Voyagez vers le guet d'Azur. Suivez la flèche pour y arriver en sécurité
step
    .goto Azuremyst Isle,48.391,51.771
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anchorite Fateema|r
    .accept 9463 >> Acceptez la quête Usage médical
    .target Anchorite Fateema
step
	.isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Exarque Menelaous|r
	.turnin 9612 >> Rendez A Hearty Thanks!
    .turnin 9455 >> Rendez la quête Une étrange trouvaille
    .accept 9456 >> Acceptez la quête Nettoyage des traquenuits, île n°2
    .target Exarch Menelaous
step
    #label NightstalkerCleanUp
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Exarque Menelaous|r
    .turnin 9455 >> Rendez la quête Une étrange trouvaille
    .accept 9456 >> Acceptez la quête Nettoyage des traquenuits, île n°2
    .target Exarch Menelaous
step
    .goto Azuremyst Isle,48.7,50.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Technician Dyvuun|r
    .turnin 9313 >> Rendez la quête En route pour le Guet d'azur
    .target Technician Dyvuun
step
    .goto Azuremyst Isle,48.4,49.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Hôtesse Chellan|r.
    .turnin 9314 >> Rendez la quête Une demande du Guet d'azur
    .target Caregiver Chellan
step
	.goto Azuremyst Isle,48.336,49.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Hôtesse Chellan|r.
    .home >> Liez votre Pierre de Foyer à Southshore Watch
    .target Caregiver Chellan
    .bindlocation 3576
    .subzoneskip 3576,1
step << Priest
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guvan|r
    .accept 9586 >> Acceptez Help Tavara
    .train 591 >>Apprenez [Châtiment]
    .train 17 >>Apprenez [Mot de pouvoir : Bouclier]
    .target Guvan
step << Mage
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Semid|r
    .train 143 >> Apprenez [Boule de feu]
    .train 2136 >>Apprenez [Trait de feu]
    .target Semid
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Actéon|r.
    .train 3044 >> Apprenez [Tir des Arcanes]
    .train 1130 >> Apprenez [Marque du chasseur]
    .target Acteon
step << Shaman
    .goto Azuremyst Isle,49.579,53.107
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nabek|r
    >>|cRXP_BUY_Achetez et équipez un|r [Bâton de marche]
    .collect 2495,1 --Walking Stick (1)
    .target Nabek
    .money <0.0480
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Shaman
    #sticky
    .equip 16,2495 >> Équipez le [Bâton de marche]
    .use 2495
    .itemcount 2495,1
step << Paladin
    .goto Azuremyst Isle,49.579,53.107
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nabek|r
    >>|cRXP_BUY_Achetez et équipez un|r [Maillet en bois]
    .collect 2493,1 --Collect Wooden Mallet (1)
    .target Nabek
    .money <0.0666
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #sticky
    .equip 16,2493 >> Équipez le [Maillet en bois]
    .use 2493
    .itemcount 2493,1
step << Warrior
    .goto Azuremyst Isle,49.579,53.107
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nabek|r
    >>|cRXP_BUY_Achetez un|r |T135321:0|t[Gladius] |cRXP_BUY_si vous pouvez vous le permettre|r
    .collect 2488,1 --Collect Gladius (1)
    .target Nabek
    .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior
    +Équipez le [Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior/Paladin
    .goto Azuremyst Isle,48.957,51.062
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dulvi|r
    .train 2575 >>Apprenez [Minage]
    .target Dulvi
step << Warrior/Paladin
    .goto Azuremyst Isle,48.767,52.403
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ziz|r
    >>|cRXP_BUY_Achetez une|r [Pioche de mineur]|cRXP_BUY_au marchand|r
    .collect 2901,1 --Mining Pick (1)
    .target Ziz
    .train 2575,3 --Mining
step << Warrior/Paladin
    #optional
    #completewith SGrain
    .cast 2580 >> Lancez [Découverte de gisements]
    .usespell 2580
    .train 2575,3 --Mining
step
	#completewith level8
    >>Gardez un œil pour un |cRXP_FRIENDLY_Draenei Youngling|r
    >>Lorsqu'ils sont en combat, lancez [Don des Naaru] sur eux, puis acceptez la quête
	.accept 9612 >> Acceptez A Hearty Thanks!
	.unitscan Draenei Youngling
step
    #completewith LeavesTree
    >>Tuez les |cRXP_ENEMY_Root Trappers|r. Dépouillez-les pour leur |cRXP_LOOT_Vines|r
    >>Tuez les |cRXP_ENEMY_Moongraze Stags|r. Dépouillez-les pour leur |cRXP_LOOT_Moongraze Stag Tenderloins|r
    >>NOTE: Vous allez bientôt apprendre et monter le niveau de votre [Cuisine] |cRXP_WARN_pour une quête à Sombrivage plus tard. Vous aurez besoin de 6 |cRXP_LOOT_Moongraze Stag Tenderloins|r pour une quête maintenant et 9 pour plus tard. Ne les vendez PAS|r
    .complete 9463,1 -- Root Trapper (6)
    .mob +Root Trapper
    .collect 23676,6,9454,1 -- Moongraze Stag Tenderloin (6)
    .mob +Moongraze Stag
step << Priest
    .goto Azuremyst Isle,56.224,48.879
    .usespell 2052 >>Lancez [Soins inférieurs] (Rang 2) sur |cRXP_FRIENDLY_Tavara|r
    .complete 9586,1 --Heal Tavara
    .target Tavara
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Admiral Odesyus|r
    .accept 9506 >> Acceptez la quête Il faut bien commencer quelque part
    .target Admiral Odesyus
step
    .goto Azuremyst Isle,46.681,70.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_"Cookie" McWeaksauce|r
    .accept 9512 >> Acceptez la quête Jumbo gumbo du cuistot
    .target "Cookie" McWeaksauce
step << Warrior/Paladin
    .goto Azuremyst Isle,46.355,71.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Blacksmith Calypso|r
    >>Ceci vous permettra de fabriquer des [Pierre à aiguiser brute] et des [Caillou brut] qui augmenteront vos dégâts en mêlée de 2
    .train 2018 >> Apprenez [Forge]
    .target Blacksmith Calypso
    .train 2575,3 --Mining
step
    .goto Azuremyst Isle,58.607,66.372
	>>Ramassez la |cRXP_LOOT_Nautical Map|r dans la petite cage
    .complete 9506,2 --Collect Nautical Map (x1)
step
    .goto Azuremyst Isle,59.578,67.648
	>>Ramassez le |cRXP_LOOT_Nautical Compass|r sur la petite boîte
    .complete 9506,1 --Collect Nautical Compass (x1)
step
    #loop
    .goto Azuremyst Isle,57.0,69.2,0
    .goto Azuremyst Isle,50.8,69.4,0
    .goto Azuremyst Isle,46.0,75.6,0
    .goto Azuremyst Isle,57.0,69.2,70,0
    .goto Azuremyst Isle,50.8,69.4,70,0
    .goto Azuremyst Isle,46.0,75.6,70,0
	>>Tuez des |cRXP_ENEMY_Skittering Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Crawler Meat|r
    .complete 9512,1 --Collect Skittering Crawler Meat (x6)
    .mob Skittering Crawler
step
    .goto Azuremyst Isle,46.681,70.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_"Cookie" McWeaksauce|r
    .turnin 9512 >> Rendez la quête Jumbo gumbo du cuistot
    .target "Cookie" McWeaksauce
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Admiral Odesyus|r et les |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .turnin 9506 >> Rendez la quête Il faut bien commencer quelque part
    .accept 9530 >> Acceptez la quête Un plan bourgeonne
    .target +Admiral Odesyus
    .goto Azuremyst Isle,47.038,70.206
    .accept 9513 >> Acceptez la quête Reconquérir les ruines
    .target +Priestess Kyleen Il'dinare
    .goto Azuremyst Isle,47.131,70.289
step
    .goto Azuremyst Isle,47.243,69.998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archaeologist Adamant Ironheart|r
    .accept 9523 >> Acceptez la quête Fragile et précieux - à manipuler avec précaution
    .target Archaeologist Adamant Ironheart
step
    #label LeavesTree
    #loop
    .goto Azuremyst Isle,51.5,66.0,0
    .goto Azuremyst Isle,40.0,69.2,0
    .goto Azuremyst Isle,51.5,66.0,50,0
    .goto Azuremyst Isle,49.2,61.9,50,0
    .goto Azuremyst Isle,40.0,69.2,50,0
	>>Ramassez un |cRXP_LOOT_L’Arbre creux|r sur le sol
    >>Ramassez les|cRXP_LOOT_Piles of Leaves|r sur le sol
    .complete 9530,1 --Collect Hollowed Out Tree (x1)
    .complete 9530,2 --Collect Pile of Leaves (x5)
step
    #loop
    .goto Azuremyst Isle,51.5,66.0,0
    .goto Azuremyst Isle,40.0,69.2,0
    .goto Azuremyst Isle,51.5,66.0,50,0
    .goto Azuremyst Isle,49.2,61.9,50,0
    .goto Azuremyst Isle,40.0,69.2,50,0
    >>Tuez les |cRXP_ENEMY_Root Trappers|r. Dépouillez-les pour leur |cRXP_LOOT_Vines|r
    >>Tuez les |cRXP_ENEMY_Moongraze Stags|r. Dépouillez-les pour leur |cRXP_LOOT_Moongraze Stag Tenderloins|r
    >>NOTE: Vous allez bientôt apprendre et monter le niveau de votre [Cuisine] |cRXP_WARN_pour une quête à Sombrivage plus tard. Vous aurez besoin de 6 |cRXP_LOOT_Moongraze Stag Tenderloins|r pour une quête maintenant et 9 pour plus tard. Ne les vendez PAS|r    .complete 9463,1 -- Root Trapper (6)
    .mob +Root Trapper
    .collect 23676,6,9454,1 -- Moongraze Stag Tenderloin (6)
    .mob +Moongraze Stag
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Admiral Odesyus|r
    .turnin 9530 >> Rendez la quête Un plan bourgeonne
    .accept 9531 >> Acceptez la quête L'art du camouflage ne se perd pas
    .target Admiral Odesyus
step
    #label level8
	.xp 8-950 >> Gagnez en expérience jusqu'à ce qu'il ne vous manque que 950xp pour le niveau 8 (3550/4500)
    >>Essayez de finir proche du guet d'Azur
step
	.goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Actéon|r.
	.accept 9454 >> Acceptez la quête La grande chasse aux frôle-lune
    .turnin 9454 >> Rendez la quête La grande chasse aux frôle-lune
    .accept 10324 >> Acceptez la quête La grande chasse aux frôle-lune
    .target Acteon
step
    #completewith TenderloinRecipe
    +Ne vendez PAS la [Recette : Filet de frôle-lune rôti]
    >>Vous allez l'apprendre bientôt quand vous aurez appris la [Cuisine] qui est nécessaire pour une quête à Sombrivage plus tard
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Actéon|r.
    .train 5116 >> Apprenez [Trait de choc]
    .train 14260 >> Apprenez [Attaque du raptor]
    .target Acteon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anchorite Fateema|r et les |cRXP_FRIENDLY_Daedal|r
    .turnin 9463 >> Rendez la quête Usage médical
    .target +Anchorite Fateema
    .goto Azuremyst Isle,48.390,51.770
    .accept 9473 >> Acceptez la quête Une tentative alternative
    .target +Daedal
    .goto Azuremyst Isle,48.392,51.482
step
    #optional
    .isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Exarque Menelaous|r
    .turnin 9612 >> Rendez A Hearty Thanks!
    .target Exarch Menelaous
step << Shaman
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tuluun|r
    .trainer >> Apprenez vos sorts de classe
    .target Tuluun
    .subzoneskip 3576,1
step
    .goto Azuremyst Isle,48.9,51.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dulvi|r
    .accept 10428 >> Acceptez la quête Le pêcheur disparu
    .target Dulvi
step
    #label TenderloinRecipe
    .goto Azuremyst Isle,49.365,51.086
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cryptographer Aurren|r
    .accept 9538 >> Acceptez Learning the Language
    .target Cryptographer Aurren
step
	.use 23818 >>Utilisez le [Manuel de langue furbolg calmepin]
    .complete 9538,1 --Stillpine Furbolg Language Primer Read
step
    .goto Azuremyst Isle,49.439,50.977
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Totem of Akida|r
    .turnin 9538 >> Rendez Learning the Language
    .accept 9539 >> Acceptez Totem of Coo
    .target Totem of Akida
step << Priest
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guvan|r
    .turnin 9586 >> Rendez Help Tavara
    .trainer >> Apprenez vos sorts de classe
    .target Guvan
step << Paladin
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tullas|r
    .trainer >> Apprenez vos sorts de classe
    .target Tullas
    .subzoneskip 3576,1
step << Mage
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Semid|r
    .trainer >> Apprenez vos sorts de classe
    .target Semid
    .subzoneskip 3576,1
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ruada|r
    .train 772 >> Apprenez [Pourfendre]
    .target Ruada
    .subzoneskip 3576,1
step
	#completewith AncientRelics
    >>Gardez un œil pour un |cRXP_FRIENDLY_Draenei Youngling|r
    >>Lorsqu'ils sont en combat, lancez [Don des Naaru] sur eux, puis acceptez la quête
	.accept 9612 >> Acceptez A Hearty Thanks!
	.unitscan Draenei Youngling
step
	#completewith TotemofTikti
    >>Tuez les |cRXP_ENEMY_Infected Nightstalker Runts|r
	>>Tuez les |cRXP_ENEMY_Moongraze Bucks|r. Dépouillez-les pour leur |cRXP_LOOT_Cacher|r
    .complete 9456,1 --Kill Infected Nightstalker Runt (x8)
    .mob +Infected Nightstalker Runt
	.complete 10324,1 -- Moongraze Buck Hide (6)
    .mob +Moongraze Buck
step
	.goto Azuremyst Isle,49.9,45.9,100,0
    .goto Azuremyst Isle,55.233,41.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Totem of Coo|r
    .turnin 9539 >> Rendez Totem of Coo
    .accept 9540 >> Acceptez Totem of Tikti
    .target Totem of Coo
step
    #loop
    .goto Azuremyst Isle,51.9,32.4,0
    .goto Azuremyst Isle,44.2,37.5,0
    .goto 1943/1,5114.300,6462.700,60,0
    .goto Azuremyst Isle,51.9,32.4,60,0
    .goto Azuremyst Isle,44.2,37.5,60,0
	>>Ramassez les |cRXP_LOOT_Azure Snapdragons|r sur le sol
    .complete 9473,1 --Collect Azure Snapdragon Bulb (x5)
step
    #label TotemofTikti
    .goto Azuremyst Isle,64.475,39.772
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Totem of Tikti|r
    .turnin 9540 >> Rendez Totem of Tikti
    .accept 9541 >> Accept Le Totem de Yor RP
    .timer 30,Le Totem de Yor RP
    .target Totem of Tikti
step
    .isOnQuest 9541
    .goto Azuremyst Isle,63.64,40.09
    .aura 30430 >> Suivez |cRXP_FRIENDLY_Stillpine Ancestor Tikti|r. Il vous lancera un buff [Étreinte du serpent] qui vous procurera 150% de vitesse de nage supplémentaire et une respiration aquatique
step
    .goto Azuremyst Isle,63.2,68.0
    .use 23654 >>Utilisez le [Filet de pêche draeneï] sur les |cRXP_PICK_Schools of Red Snapper|r
    >>|cRXP_WARN_Si un |cRXP_ENEMY_Murloc|r sort de l'un des bancs, nagez rapidement hors de sa portée ! Lancez le moindre sort fera vous perdrez le |rbuff|cRXP_WARN_|r [Étreinte du serpent]
    .complete 9452,1 --Collect Red Snapper (x10)
step
    .goto Azuremyst Isle,61.052,54.248
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Diktynna|r
    .turnin 9452 >> Rendez la quête Le lutjan rouge, c'est bon !
    .accept 9453 >> Acceptez la quête Trouvez Actéon !
    .target Diktynna
step
    .goto Azuremyst Isle,63.116,67.880
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Totem of Yor|r sous l'eau
    .turnin 9541 >> Turn in Le Totem de Yor RP
    .accept 9542 >> Accept Le Totem de Vark RP
    .timer 71,Le Totem de Vark RP
    .target Totem of Yor
step
    .isOnQuest 9542
    .goto Azuremyst Isle,60.971,69.354
    .aura 30448 >> Suivez |cRXP_FRIENDLY_Stillpine Ancestor Yor|r. Il vous lancera le buff [Ombre de la forêt] qui vous donnera de la vitesse de déplacement supplémentaire et une invisibilité
step
    #completewith next
    .goto Azuremyst Isle,28.115,62.391,30 >> Voyagez vers l'ouest de l'Île de Brume-Azur
step
    .goto Azuremyst Isle,28.115,62.391
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Totem of Vark|r
    .turnin 9542 >> Turn in Le Totem de Vark RP
    .accept 9544 >> Accept Les Prophecy of Akida
    .target Totem of Vark
step
    .aura -30448
    +Cliquez sur le |cRXP_WARN_buff|r [Ombre de la forêt] pour le faire disparaître
step
    #loop
    .goto Azuremyst Isle,27.43,63.24,0
    .goto Azuremyst Isle,27.87,66.78,0
    .goto Azuremyst Isle,25.04,67.67,0
    .goto Azuremyst Isle,27.43,63.24,70,0
    .goto Azuremyst Isle,27.87,66.78,70,0
    .goto Azuremyst Isle,25.04,67.67,70,0
	>>Tuez les |cRXP_ENEMY_Bristlelimb Furbolgs|r, |cRXP_ENEMY_Bristlelimb Windcallers|r et les |cRXP_ENEMY_Bristlelimb Ursas|r. Dépouillez-les pour leur |cRXP_LOOT_Bristlelimb Keys|r
    >>Ouvrez les |cRXP_PICK_Bristlelimb Cages|r pour libérer les |cRXP_FRIENDLY_Stillpine Captives|r
    .collect 23801,8,9544,1,-1 -- Bristlelimb Key
    .complete 9544,1 --Stillpine Captive Freed (x8)
step
    #loop
    .goto Azuremyst Isle,25.6,73.8,0
    .goto Azuremyst Isle,31.6,70.4,0
    .goto Azuremyst Isle,33.6,60.4,0
    .goto Azuremyst Isle,25.6,73.8,80,0
    .goto Azuremyst Isle,31.6,70.4,80,0
    .goto Azuremyst Isle,33.6,60.4,80,0
    >>Tuez les |cRXP_ENEMY_Infected Nightstalker Runts|r
	>>Tuez les |cRXP_ENEMY_Moongraze Bucks|r. Dépouillez-les pour leur |cRXP_LOOT_Cacher|r
    .complete 9456,1 --Kill Infected Nightstalker Runt (x8)
    .mob +Infected Nightstalker Runt
	.complete 10324,1 -- Moongraze Buck Hide (6)
    .mob +Moongraze Buck
step
    #completewith next
    >>Ramassez les |cRXP_LOOT_Ancient Relics|r sur le sol
    .complete 9523,1 --Collect Ancient Relic (x8)
step
    #loop
    .goto Azuremyst Isle,28.9,79.5,0
    .goto Azuremyst Isle,31.9,76.5,0
    .goto Azuremyst Isle,35.8,79.0,0
    .goto Azuremyst Isle,28.9,79.5,55,0
    .goto Azuremyst Isle,31.9,76.5,55,0
    .goto Azuremyst Isle,35.8,79.0,55,0
    >>Tuez les |cRXP_ENEMY_Wrathscale Nagas|r, |cRXP_ENEMY_Wrathscale Myrmidons|r et les |cRXP_ENEMY_Wrathscale Sirens|r. Dépouillez-les pour leur [|cRXP_LOOT_Rune Covered Tablet|r]
    .use 23759 >>Utilisez les [|cRXP_LOOT_Rune Covered Tablet|r] pour commencer la quête
    .collect 23759,1,9514 --Collect Rune Covered Tablet (x1)
    .accept 9514>> Tablette couverte de runes
    .complete 9513,1 --Kill Wrathscale Myrmidon (x5)
    .mob +Wrathscale Myrmidon
    .complete 9513,2 --Kill Wrathscale Naga (x5)
    .mob +Wrathscale Naga
    .complete 9513,3 --Kill Wrathscale Siren (x5)
    .mob +Wrathscale Siren
step
    #label AncientRelics
    #loop
    .goto Azuremyst Isle,28.9,79.5,0
    .goto Azuremyst Isle,31.9,76.5,0
    .goto Azuremyst Isle,35.8,79.0,0
    .goto Azuremyst Isle,28.9,79.5,55,0
    .goto Azuremyst Isle,31.9,76.5,55,0
    .goto Azuremyst Isle,35.8,79.0,55,0
    >>Ramassez les |cRXP_LOOT_Ancient Relics|r sur le sol
    .complete 9523,1 --Collect Ancient Relic (x8)
step
    #completewith next
    .subzone 3579 >> Nagez vers la Crique du Traître
step
    .isOnQuest 9531
    .goto Azuremyst Isle,18.473,84.349
    .cast 30298 >> Utilisez le [Déguisement d'arbre] sur le drapeau naga
    .timer 73,L'art du camouflage ne se perd pas RP
    .use 23792
step
    >>Attendez le temps du RP
    .complete 9531,1 -- The Traitor Uncovered
step
    +Cliquez sur le |cRXP_WARN_buff|r [Déguisement d'arbre] pour le retirer
    .aura -30298
step
    .goto Azuremyst Isle,16.587,94.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cowlen|r
    .turnin 10428 >> Rendez la quête Le pêcheur disparu
    .accept 9527 >> Acceptez la quête Tout ce qui reste
    .target Cowlen
step
    .goto Azuremyst Isle,13.209,89.742
	>>Tuez |cRXP_ENEMY_Owlbeasts|r. Dépouillez-les pour leur |cRXP_LOOT_Remains of Cowlen's Family|r
    .complete 9527,1 --Collect Remains of Cowlen's Family (x1)
    .mob Aberrant Owlbeast
    .mob Raving Owlbeast
    .mob Deranged Owlbeast
step
    .goto Azuremyst Isle,16.587,94.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cowlen|r
    .turnin 9527 >> Rendez la quête Tout ce qui reste
    .target Cowlen
step
    #completewith next
	.hs >> Hearth to Guet d'azur
    .bindlocation 3576,1
step
    .goto 1943/1,5182.200,6172.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Exarque Menelaous|r
    .target Exarch Menelaous
    .turnin 9456 >>Rendez la quête Nettoyage des traquenuits, île n°2
step
    .goto 1943/1,5129.899,6148.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daedal|r.
    .target Daedal
    .turnin 9473 >>Rendez la quête Une tentative alternative
step
    .goto 1943/1,5090.399,6159.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arugoo of the Stillpine|r
    .target Arugoo of the Stillpine
    .turnin 9544 >>Turn in Les Prophecy of Akida
    .accept 9559 >>Acceptez Stillpine Hold
step
    .goto 1943/1,5073.300,6136.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Actéon|r.
    .target Acteon
    .turnin 9453 >>Rendez la quête Trouvez Actéon !
    .turnin 10324 >>Rendez la quête La grande chasse aux frôle-lune
step
    .goto Azuremyst Isle,47.243,69.998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archaeologist Adamant Ironheart|r
    .turnin 9523 >> Rendez la quête Fragile et précieux - à manipuler avec précaution
    .target Archaeologist Adamant Ironheart
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Admiral Odesyus|r
    .turnin 9531 >> Rendez la quête L'art du camouflage ne se perd pas
    .accept 9537 >> Acceptez Show Gnomercy
    .target Admiral Odesyus
step
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Prêtresse Kyleen Il'dinare|r
    .turnin 9513 >> Rendez la quête Reconquérir les ruines
    .target Priestess Kyleen Il'dinare
step -- to avoid long RP incase turned in in above step
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Prêtresse Kyleen Il'dinare|r
    .turnin 9514 >> Rendez la quête Tablette couverte de runes
    .target Priestess Kyleen Il'dinare
step
    #completewith next
    .goto Azuremyst Isle,46.219,70.983
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Logan Daniel|r
    .vendor >> Vendez ce dont vous n'avez pas besoin au marchand en attendant la fin du RP << !Hunter
    >>|cRXP_BUY_Achetez des|r [Flèches grossières] |cRXP_BUY_au marchand en attendant la fin du RP|r << Hunter
    .collect 2512,1000 << Hunter --Rough Arrow (1000)
    .target Logan Daniel
step
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Prêtresse Kyleen Il'dinare|r
    .accept 9515 >> Acceptez Warlord Sriss'tiz
    .target Priestess Kyleen Il'dinare
step
    .goto Azuremyst Isle,50.2,70.6,40,0
    .goto Azuremyst Isle,45.7,73.2,40,0
    .goto Azuremyst Isle,50.2,70.6
    >>Parlez à |cRXP_FRIENDLY_Engineer "Spark" Overgrind|r patrouillant sur la plage
    >>Tuez |cRXP_ENEMY_Engineer "Spark" Overgrind|r après le RP court. Dépouillez-le pour le |cRXP_LOOT_Traitor's Communication|r
    .complete 9537,1 --Collect Traitor's Communication (x1)
    .skipgossip 17243
    .timer 18,Communication du traître RP
    .unitscan Engineer "Spark" Overgrind
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Admiral Odesyus|r
    .turnin 9537 >> Rendez Show Gnomercy
    .accept 9602 >> Acceptez Deliver Them From Evil...
    .target Admiral Odesyus
step << !Hunter
    .isOnQuest 9515
    .goto Azuremyst Isle,26.75,75.84
    .subzone 3569 >> Entrez dans la grotte du Creux de la marée
step << !Hunter
    #completewith next
    .goto Azuremyst Isle,26.33,73.79,15 >> Descendez à l'étage inférieur
step << !Hunter
    >>Tuez |cRXP_ENEMY_Warlord Sriss'tiz|r
    .goto Azuremyst Isle,24.98,74.10
    .complete 9515,1 -- Warlord Sriss'tiz slain 1/1
    .mob Warlord Sriss'tiz
step << !Hunter
    .xp 9+5360 >> Montez votre expérience jusqu'à 5360+/6500xp
step << !Hunter
    #optional
    .isOnQuest 9515
    .goto Azuremyst Isle,26.75,75.84,10 >> Quittez la grotte du Creux de la marée
    .subzoneskip 3569,1
step << !Hunter
	#completewith next
    >>Gardez un œil pour un |cRXP_FRIENDLY_Draenei Youngling|r
    >>Lorsqu'ils sont en combat, lancez [Don des Naaru] sur eux, puis acceptez la quête
	.accept 9612 >> Acceptez A Hearty Thanks!
	.unitscan Draenei Youngling
step << !Hunter
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Prêtresse Kyleen Il'dinare|r
    .turnin 9515 >> Rendez Warlord Sriss'tiz
    .target Priestess Kyleen Il'dinare
step << !Hunter
    .goto Azuremyst Isle,46.681,70.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_"Cookie" McWeaksauce|r
    .train 2550 >> Apprenez [Cuisine]
    .target "Cookie" McWeaksauce
step << !Hunter
    .cast 33277 >> Utilisez la [Recette : Filet de frôle-lune rôti] pour apprendre la recette de [Cuisine]
    .use 27686
    .itemcount 27686,1
    .skill cooking,<1,1 -- shows if cooking is >1
step
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Exarque Menelaous|r
    .turnin 9602 >> Rendez Deliver Them From Evil...
    .accept 9623 >> Acceptez la quête Il est temps de grandir
    .target Exarch Menelaous
step
    .isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Exarque Menelaous|r
    .turnin 9612 >> Rendez A Hearty Thanks!
    .target Exarch Menelaous
step << Shaman
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tuluun|r
    .accept 9464 >> Acceptez la quête L'appel du feu
    .trainer >> Apprenez vos sorts de classe
    .target Tuluun
    .subzoneskip 3576,1
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Actéon|r.
    .accept 9757 >> Acceptez Seek Huntress Kella Nightbow
    .trainer >> Apprenez vos sorts de classe
    .target Acteon
step << Priest
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guvan|r
    .trainer >> Apprenez vos sorts de classe
    .target Guvan
    .subzoneskip 3576,1
step << Paladin
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tullas|r
    .trainer >> Apprenez vos sorts de classe
    .target Tullas
    .subzoneskip 3576,1
step << Mage
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Semid|r
    .trainer >> Apprenez vos sorts de classe
    .target Semid
    .subzoneskip 3576,1
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ruada|r
    .trainer >> Apprenez vos sorts de classe
    .accept 9582 >> Acceptez Strength of One
    .target Ruada
step << Hunter
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Huntress Kella Nightbow|r
    .turnin 9757 >> Rendez Seek Huntress Kella Nightbow
    .accept 9591 >> Acceptez la quête Dompter la bête
    .target Huntress Kella Nightbow
step << Hunter
    .goto Azuremyst Isle,20.7,65.1
	.use 23896 >> Utilisez le [Totem de domptage] |cRXP_WARN_sur un |cRXP_ENEMY_Barbed Crawler|r dans l'eau|r
    .complete 9591,1 --Tame a Barbed Crawler
    .mob Barbed Crawler
step << Hunter
    .isOnQuest 9515
    .goto Azuremyst Isle,26.75,75.84
    .subzone 3569 >> Entrez dans la grotte du Creux de la marée
step << Hunter
    #completewith next
    .goto Azuremyst Isle,26.33,73.79,15 >> Descendez à l'étage inférieur
step << Hunter
    >>Tuez |cRXP_ENEMY_Warlord Sriss'tiz|r 
    .goto Azuremyst Isle,24.98,74.10
    .complete 9515,1 -- Warlord Sriss'tiz slain 1/1
    .mob Warlord Sriss'tiz
step << Hunter
    .isOnQuest 9515
    .goto Azuremyst Isle,26.75,75.84,10 >> Quittez la grotte du Creux de la marée
    .subzoneskip 3569,1
step << Hunter
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Prêtresse Kyleen Il'dinare|r
    .turnin 9515 >> Rendez Warlord Sriss'tiz
    .target Priestess Kyleen Il'dinare
step << Hunter
    .goto Azuremyst Isle,46.681,70.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_"Cookie" McWeaksauce|r
    .train 2550 >> Apprenez [Cuisine]
    .target "Cookie" McWeaksauce
step << Hunter
    .cast 33277 >> Utilisez la [Recette : Filet de frôle-lune rôti] pour apprendre la recette de [Cuisine]
    .use 27686
    .itemcount 27686,1
    .skill cooking,<1,1 -- shows if cooking is >1
step << Hunter
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Huntress Kella Nightbow|r
    .turnin 9591 >> Rendez la quête Dompter la bête
    .accept 9592 >> Acceptez la quête Dompter la bête
    .target Huntress Kella Nightbow
step
    .goto The Exodar,81.488,51.449
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Torallius the Pack Handler|r
    .turnin 9623 >> Rendez la quête Il est temps de grandir
    .accept 9625 >> Acceptez Elekks Are Serious Business
    .target Torallius the Pack Handler
step << Hunter
    .goto Azuremyst Isle,34.56,34.04,60,0
	.goto Azuremyst Isle,41.0,30.4,50,0
    .goto Azuremyst Isle,43.6,26.2
	.use 23897 >> Utilisez le [Totem de domptage] sur un |cRXP_ENEMY_Greater Timberstrider|r
    .complete 9592,1 --Tame a Greater Timberstrider
    .mob Greater Timberstrider
step << Hunter
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Huntress Kella Nightbow|r
    .turnin 9592 >> Rendez la quête Dompter la bête
    .accept 9593 >> Acceptez la quête Dompter la bête
    .target Huntress Kella Nightbow
step << Hunter
    .goto Azuremyst Isle,35.0,33.9,50,0
    .goto Azuremyst Isle,41.2,28.6
	.use 23898 >> Utilisez le [Totem de domptage] sur un |cRXP_ENEMY_Nightstalker|r
    .complete 9593,1 --Tame a Nightstalker
    .mob Nightstalker
step << Hunter
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Huntress Kella Nightbow|r
    .turnin 9593 >> Rendez la quête Dompter la bête
    .accept 9675 >> Acceptez Beast Training
    .target Huntress Kella Nightbow
step << Hunter
    .isOnQuest 9675
    .goto Azuremyst Isle,24.6,49.0,20 >>Entrez dans l'Exodar via la rampe de derrière
step << Hunter
	.goto The Exodar,53.79,86.11,30,0
    .goto The Exodar,44.240,86.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ganaar|r
    .turnin 9675 >> Rendez Beast Training
	.trainer >> Apprenez les compétences de votre familier
    .target Ganaar
step << Hunter
    #completewith next
    .destroy 2512 >> Détruisez toutes vos [Flèche grossière]
step << Hunter
	#completewith next
    .goto The Exodar,47.911,89.801
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Avelii|r
    >>|cRXP_BUY_Achetez 6 stacks de|r [Flèche pointue]
    .collect 2515,1200
    .target Avelii
step << Hunter
	#completewith next
	.goto The Exodar,53.696,78.280,15 >> Montez en haut de la rampe vers |cRXP_FRIENDLY_Handiir|r
step << Hunter
    .goto The Exodar,53.362,85.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Handiir|r
    .train 202 >> Achetez la compétence pour porter des épées à deux mains
    .target Handiir
step << Hunter
	#completewith next
	.goto The Exodar,57.9,61.5,50,0
	.goto The Exodar,53.34,34.07,25,0
	.goto The Exodar,64.0,36.5,20,0
    .goto The Exodar,69.34,32.03,20,0
    .goto The Exodar,74.48,54.09,20 >>Sautez et descendez hors de l'Exodar
	-->> Alternatively you can do a logout skip on any brazier or by floating off of any ledge in the city
	--.link https://www.youtube.com/watch?v=WUWNGyQWJw8 >> |cRXP_WARN_Click here for video reference|r
step
    .goto Azuremyst Isle,44.762,23.906
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Moordo|r
    .target Moordo
    .accept 9560 >> Acceptez Beasts of the Apocalypse!
step
    .goto Azuremyst Isle,44.627,23.481
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gurf|r
    .target Gurf
    .accept 9562 >> Acceptez Murdaloc... Why Here? Why Now?
step
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_High Chief Stillpine|r
    .target High Chief Stillpine
    .turnin 9559 >> Rendez Stillpine Hold
step << Hunter
    .goto Azuremyst Isle,54.7,18.4
	.cast 1515 >> Lancez [Approvisionner la bête] sur un |cRXP_ENEMY_Ravager Specimen|r pour le dompter
    .mob Ravager Specimen
step << Shaman
	#completewith next
	>>Tuez les |cRXP_ENEMY_Ravager Specimens|r. Dépouillez-les pour leur |cRXP_LOOT_Ravager Hides|r
    .complete 9560,1 --Collect Ravager Hide (x8)
    .mob Ravager Specimen
step << Shaman
    .goto Azuremyst Isle,59.534,17.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Temper|r
    .turnin 9464 >> Rendez la quête L'appel du feu
    .accept 9465 >> Acceptez la quête L'appel du feu
    .target Temper
step
    #loop
    .goto Azuremyst Isle,54.6,23.8,0
    .goto Azuremyst Isle,55.6,18.2,0
    .goto Azuremyst Isle,53.0,11.6,0
    .goto Azuremyst Isle,54.6,23.8,70,0
    .goto Azuremyst Isle,55.6,18.2,70,0
    .goto Azuremyst Isle,53.0,11.6,70,0
	>>Tuez les |cRXP_ENEMY_Ravager Specimens|r. Dépouillez-les pour leur |cRXP_LOOT_Ravager Hides|r
    .complete 9560,1 --Collect Ravager Hide (x8)
    .mob Ravager Specimen
step << Warrior
    #completewith next
    .goto Azuremyst Isle,54.021,9.956
    .cast 30767 >> Cliquez sur la |cRXP_PICK_Ravager Cage|r pour libérer le |cRXP_ENEMY_Death Ravager|r
step << Warrior
    .goto Azuremyst Isle,54.084,9.721
    >>Tuez le |cRXP_ENEMY_Death Ravager|r
    .complete 9582,1 --Kill Death Ravager (x1)
    .mob Death Ravager
step
    .goto Azuremyst Isle,44.762,23.906
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Moordo|r
    .target Moordo
    .turnin 9560 >> Rendez Beasts of the Apocalypse!
step
    .goto Azuremyst Isle,46.904,21.160
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Stillpine the Younger|r
    .target Stillpine the Younger
    .accept 9573 >> Acceptez Chieftain Oomooroo
step
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_High Chief Stillpine|r
    .target High Chief Stillpine
    .accept 9565 >> Acceptez Search Stillpine Hold
step
    .isOnQuest 9573,9565
    .goto Azuremyst Isle,45.391,18.194,20 >> Entrez dans la grotte du repaire des Calmepins
step
    #completewith next
    .isOnQuest 9573,9565
    .goto Azuremyst Isle,47.453,16.078,10 >> Dirigez-vous vers la partie supérieure de la grotte
step
	.goto Azuremyst Isle,47.394,14.121
    >>Tuez le |cRXP_ENEMY_Chieftain Oomooroo|r
    >>Tuez les |cRXP_ENEMY_Crazed Wildkins|r << !Shaman
    >>Tuez les |cRXP_ENEMY_Crazed Wildkins|r. Dépouillez-les pour leur |cRXP_LOOT_Ritual Torch|r << Shaman
    .complete 9573,1 --Kill Chieftain Oomooroo (x1)
    .mob +Chieftain Oomooroo
    .complete 9573,2 --Kill Crazed Wildkin (x9)
    .disablecheckbox
    .mob +Crazed Wildkin
    .complete 9465,1 << Shaman --Collect Ritual Torch (x1)
    .disablecheckbox
    .mob +Crazed Wildkin
step
    #completewith next
    .isOnQuest 9573,9565
    .goto Azuremyst Isle,48.26,13.78,10 >> Descendez et dirigez-vous au fond de la grotte
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Crazed Wildkins|r << !Shaman
    >>Tuez les |cRXP_ENEMY_Crazed Wildkins|r. Dépouillez-les pour leur |cRXP_LOOT_Ritual Torch|r << Shaman
    .complete 9573,2 --Kill Crazed Wildkin (x9)
    .complete 9465,1 << Shaman --Collect Ritual Torch (x1)
    .mob Crazed Wildkin
step
    .goto Azuremyst Isle,50.632,11.544
    >>Cliquez sur le |cRXP_PICK_Blood Crystal|r
    >>|cRXP_WARN_Évitez de tuer |cRXP_ENEMY_The Kurken|r si possible car vous aurez besoin de le tuer bientôt|r
    .turnin 9565 >> Rendez Search Stillpine Hold
    .accept 9566 >> Acceptez Blood Crystals
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Crazed Wildkins|r << !Shaman
    >>Tuez les |cRXP_ENEMY_Crazed Wildkins|r. Dépouillez-les pour leur |cRXP_LOOT_Ritual Torch|r << Shaman
    >>|cRXP_WARN_Vous terminerez ceci sous peu si vous ne l'avez pas encore fait|r
    .complete 9573,2 --Kill Crazed Wildkin (x9)
    .complete 9465,1 << Shaman --Collect Ritual Torch (x1)
    .mob Crazed Wildkin
step
    .isOnQuest 9573,9566
    .goto Azuremyst Isle,45.391,18.194,12 >> Quittez la grotte
step
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_High Chief Stillpine|r
    .target High Chief Stillpine
    .turnin 9566 >> Rendez Blood Crystals
step
    #optional
    .isQuestComplete 9573
    .goto Azuremyst Isle,46.904,21.160
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Stillpine the Younger|r
    .target Stillpine the Younger
    .turnin 9573 >> Rendez Chieftain Oomooroo
step
    .goto Azuremyst Isle,46.972,22.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kurz the Revelator|r
    .target Kurz the Revelator
    .accept 9570 >> Accept Les Kurken is Lurkin'
step
	.goto Azuremyst Isle,46.964,22.011
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Parkat Steelfur|r
    .vendor >> |cRXP_BUY_Achetez une|r [Petite sacoche marron]
    .target Parkat Steelfur
    .subzoneskip 3572,1
step
    .isOnQuest 9570,9573
    .goto Azuremyst Isle,45.391,18.194,20 >> Entrez dans la grotte du repaire des Calmepins à nouveau
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Crazed Wildkins|r << !Shaman
    >>Tuez les |cRXP_ENEMY_Crazed Wildkins|r. Dépouillez-les pour leur |cRXP_LOOT_Ritual Torch|r << Shaman
    .complete 9573,2 --Kill Crazed Wildkin (x9)
    .complete 9465,1 << Shaman --Collect Ritual Torch (x1)
    .mob Crazed Wildkin
step
    .goto Azuremyst Isle,48.26,13.78,10,0
    .goto Azuremyst Isle,49.9,12.8
	>>Tuez |cRXP_ENEMY_The Kurken|r. Dépouillez-le pour sa |cRXP_LOOT_Hide|r
    .complete 9570,1 --Collect The Kurken's Hide (x1)
    .mob The Kurken
step
    .goto Azuremyst Isle,47.394,14.121
    >>Tuez les |cRXP_ENEMY_Crazed Wildkins|r << !Shaman
    >>Tuez les |cRXP_ENEMY_Crazed Wildkins|r. Dépouillez-les pour leur |cRXP_LOOT_Ritual Torch|r << Shaman
    .complete 9573,2 --Kill Crazed Wildkin (x9)
    .complete 9465,1 << Shaman --Collect Ritual Torch (x1)
    .mob Crazed Wildkin
step
    .isQuestComplete 9573
    .goto Azuremyst Isle,46.904,21.160
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Stillpine the Younger|r
    .target Stillpine the Younger
    .turnin 9573 >> Rendez Chieftain Oomooroo
step
    .goto Azuremyst Isle,46.972,22.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kurz the Revelator|r
    .target Kurz the Revelator
    .turnin 9570 >> Turn in Les Kurken is Lurkin'
    .accept 9571 >> Accept Les Kurken's Hide
step << Shaman
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_High Chief Stillpine|r
    .accept 9622 >> Acceptez Warn Your People
    .target High Chief Stillpine
step
	#label end
    .goto Azuremyst Isle,44.762,23.906
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Moordo|r
    .target Moordo
    .turnin 9571 >> Turn in Les Kurken's Hide
step << Shaman
    .goto Azuremyst Isle,59.534,17.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Temper|r
    .turnin 9465 >> Rendez la quête L'appel du feu
    .accept 9467 >> Acceptez la quête L'appel du feu
    .target Temper
step << Shaman
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Exarque Menelaous|r
    .turnin 9622 >> Rendez Warn Your People
    .target Exarch Menelaous
step << Shaman
    #completewith Wickerman
    .subzone 3639 >> Voyagez vers l'Île de Brume-Argent
step << Shaman
    #completewith Wickerman
    .use 24336 >>Ouvrez la [Sacoche ignifugée] pour la [Torche rituelle]
    .complete 9467,2 --Collect Ritual Torch (x1)
step << Shaman
    #completewith Wickerman
    .goto Azuremyst Isle,11.442,82.273
    .cast 30212 >>Cliquez sur le |cRXP_PICK_Wickerman Effigy|r pour invoquer |cRXP_ENEMY_Hauteur|r
step << Shaman
    #label Wickerman
    .goto Azuremyst Isle,11.442,82.273
    >>Tuez |cRXP_ENEMY_Hauteur|r. Dépouillez-le pour ses |cRXP_LOOT_Ashes|r
    .complete 9467,1 --Collect Hauteur's Ashes (x1)
    .mob Hauteur
step << Shaman
    #completewith next
    .cast 31613 >>Utilisez l'[Orbe de retour] pour revenir à la Clairière de braise
    .use 24335
step << Shaman
    .goto Azuremyst Isle,59.534,17.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Temper|r
    .turnin 9467 >> Rendez la quête L'appel du feu
    .accept 9468 >> Acceptez la quête L'appel du feu
    .target Temper
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Siltfin Murlocs|r, |cRXP_ENEMY_Siltfin Oracles|r et les |cRXP_ENEMY_Siltfin Hunters|r. Dépouillez-les pour leur |cRXP_LOOT_Grain|r
    .complete 9562,1 --Collect Stillpine Grain (x5)
    .mob Siltfin Murloc
    .mob Siltfin Oracle
    .mob Siltfin Hunter
step
    #loop
    .goto Azuremyst Isle,33.7,26.1,0
    .goto Azuremyst Isle,34.6,25.0,0
    .goto Azuremyst Isle,34.6,20.2,0
    .goto Azuremyst Isle,34.6,15.2,0
    .goto Azuremyst Isle,33.7,26.1,50,0
    .goto Azuremyst Isle,34.6,25.0,50,0
    .goto Azuremyst Isle,34.6,20.2,50,0
    .goto Azuremyst Isle,34.6,15.2,50,0
    >>Tuez |cRXP_ENEMY_Murgurgula|r. Dépouillez le pour sa [|cRXP_LOOT_Gurf's Dignity|r]
    .use 23850 >> Utilisez la [|cRXP_LOOT_Gurf's Dignity|r] pour commencer la quête
    >>|cRXP_ENEMY_Murgurgula|r patrouille le long de la côte
	.collect 23850,1,9564,1 --Gurf's Dignity (1)
    .accept 9564 >> Acceptez Gurf's Dignity
	.unitscan Murgurgula
step
    #loop
    .goto Azuremyst Isle,33.7,26.1,0
    .goto Azuremyst Isle,34.6,25.0,0
    .goto Azuremyst Isle,34.6,20.2,0
    .goto Azuremyst Isle,34.6,15.2,0
    .goto Azuremyst Isle,33.7,26.1,50,0
    .goto Azuremyst Isle,34.6,25.0,50,0
    .goto Azuremyst Isle,34.6,20.2,50,0
    .goto Azuremyst Isle,34.6,15.2,50,0
    >>Tuez les |cRXP_ENEMY_Siltfin Murlocs|r, |cRXP_ENEMY_Siltfin Oracles|r et les |cRXP_ENEMY_Siltfin Hunters|r. Dépouillez-les pour leur |cRXP_LOOT_Grain|r
    .complete 9562,1 --Collect Stillpine Grain (x5)
    .mob Siltfin Murloc
    .mob Siltfin Oracle
    .mob Siltfin Hunter
step
    .goto Azuremyst Isle,44.627,23.481
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gurf|r
    .turnin 9564 >> Rendez Gurf's Dignity
    .turnin 9562 >> Rendez Murdaloc Why Here? Why Now?
    .target Gurf
step
    .goto Bloodmyst Isle,63.5,88.8
	.zone Bloodmyst Isle >> Voyagez vers l'Île de Brume-Sang
step
    .goto Bloodmyst Isle,63.426,88.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aonar|r
    .target Aonar
    .accept 9624 >> Acceptez A Favorite Treat
step
    .isOnQuest 9625
    .goto Bloodmyst Isle,63.036,87.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vorkhan the Elekk Herder|r
    .target Vorkhan the Elekk Herder
    .turnin 9625 >> Rendez Elekks Are Serious Business
    .accept 9634 >> Acceptez Alien Predators
step
    .goto Bloodmyst Isle,63.036,87.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vorkhan the Elekk Herder|r
    .target Vorkhan the Elekk Herder
    .accept 9634 >> Acceptez Alien Predators
step
    #completewith next
	>>Ramassez les |cRXP_LOOT_Sand Pears|r sur le sol
    >>Ils peuvent être difficile à discerner, vérifiez autour des arbres
    .complete 9624,1 --Collect Sand Pear (x10)
step
    #loop
    .goto Bloodmyst Isle,57.5,86.5,0
    .goto Bloodmyst Isle,63.5,83.8,0
    .goto Bloodmyst Isle,72.7,80.9,0
	.goto Bloodmyst Isle,60.1,91.6,60,0
    .goto Bloodmyst Isle,57.5,86.5,60,0
    .goto Bloodmyst Isle,59.7,85.8,60,0
    .goto Bloodmyst Isle,63.5,83.8,60,0
    .goto Bloodmyst Isle,67.7,87.6,60,0
    .goto Bloodmyst Isle,72.7,80.9,60,0
    >>Tuez les |cRXP_ENEMY_Bloodmyst Hatchlings|r
    .complete 9634,1 --Kill Bloodmyst Hatchling (x10)
    .mob Bloodmyst Hatchling
step
    #loop
    .goto Bloodmyst Isle,57.5,86.5,0
    .goto Bloodmyst Isle,63.5,83.8,0
    .goto Bloodmyst Isle,72.7,80.9,0
	.goto Bloodmyst Isle,60.1,91.6,60,0
    .goto Bloodmyst Isle,57.5,86.5,60,0
    .goto Bloodmyst Isle,59.7,85.8,60,0
    .goto Bloodmyst Isle,63.5,83.8,60,0
    .goto Bloodmyst Isle,67.7,87.6,60,0
    .goto Bloodmyst Isle,72.7,80.9,60,0
	>>Ramassez les |cRXP_LOOT_Sand Pears|r sur le sol
    >>Ils peuvent être difficile à discerner, vérifiez autour des arbres
    .complete 9624,1 --Collect Sand Pear (x10)
step
    .goto Bloodmyst Isle,63.426,88.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aonar|r
    .target Aonar
    .turnin 9624 >> Rendez A Favorite Treat
step
    .goto Bloodmyst Isle,63.036,87.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vorkhan the Elekk Herder|r
    .target Vorkhan the Elekk Herder
    .turnin 9634 >> Rendez Alien Predators
step
    .goto Bloodmyst Isle,68.257,80.999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Princess Stillpine|r
    .accept 9667 >> Acceptez Saving Princess Stillpine
    .target Princess Stillpine
step
    .goto Bloodmyst Isle,64.2,76.8
    >>Tuez les |cRXP_ENEMY_Bristlelimb Warriors|r et les |cRXP_ENEMY_Bristlelimb Shamans|r jusqu'à ce que le |cRXP_ENEMY_High Chief Bristlelimb|r apparaisse
    >>Tuez le |cRXP_ENEMY_High Chief Bristlelimb|r. Dépouillez-le pour sa |cRXP_LOOT_The High Chief's Key|r
    .collect 24099,1,9667,1 --Collect The High Chief's Key (x1)
    .mob Bristlelimb Warrior
    .mob Bristlelimb Shaman
    .unitscan High Chief Bristlelimb
step
    .goto Bloodmyst Isle,68.257,80.999
    >>Cliquez sur la |cRXP_PICK_Princess Stillpine's Cage|r
    .complete 9667,1 --Free Saving Princess Stillpine
    .itemcount 24099,1
step
    .goto Bloodmyst Isle,62.998,87.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kessel|r
    .accept 9663 >> Accept Les Kessel Run
    .target Kessel
step
    .isOnQuest 9663
    .goto Bloodmyst Isle,61.06,69.97,20,0
    .goto Bloodmyst Isle,55.252,59.121
    .subzone 3584 >>Voyagez au nord vers le Guet du Sang
    >>Suivez bien la flèche ! Faites bien attention à ne pas traverser le pont sinon vous descendrez de votre monture !
    >>N’intéragissez avec aucun mob, ne faites aucune attaque et ne lancez aucun sort car cela vous fera aussi descendre de votre monture ! Cela peut aussi arriver si vous êtes hébété d'une attaque par derrière !
    >>Une fois que vous êtes arrivé au Guet du Sang ou si vous descendez de votre monture, abandonnez la quête "La tournée de Kessel"
step
    #optional
    #completewith next
    .subzone 3584 >> Voyagez vers le Guet du Sang
step
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Hôte Topher Loaal|r
    .target Caregiver Topher Loaal
    .accept 9603 >> Acceptez la quête Des lits, des bandages, etc.
step
    .goto Bloodmyst Isle,55.156,55.953
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Stillpine Ambassador Olorg|r
    .turnin 9667 >> Rendez Saving Princess Stillpine
    .target Stillpine Ambassador Olorg
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maatparm|r
    .target Maatparm
    .accept 9648 >> Acceptez Maatparm Mushroom Menagerie
step
    #completewith next
    .goto Bloodmyst Isle,57.680,53.876
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laando|r
    .target Laando
    .turnin 9603 >> Rendez la quête Des lits, des bandages, etc.
step
    .goto Bloodmyst Isle,57.680,53.876
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laando|r
    .target Laando
    .fp Blood Watch>> Allez au maître des gryphons à Baie-du-Butin
    .subzoneskip 3584,1
step
    #optional
    .goto Bloodmyst Isle,57.680,53.876
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laando|r
    .target Laando
    .turnin 9603 >> Rendez la quête Des lits, des bandages, etc.
step
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Exarch Admetius|r
    .accept 9693 >> Acceptez What Argus Means to Me
    .target Exarch Admetius
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .accept 9581 >> Acceptez Learning from the Crystals
    .target Harbinger Mikolaas
step
    .solo
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Boros|r
    .target Vindicator Boros
    .turnin 9693 >> Rendez What Argus Means to Me
step
    .group
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Boros|r
    .target Vindicator Boros
    .turnin 9693 >> Rendez What Argus Means to Me
    .accept 9694 >> Acceptez Blood Watch
step
    #optional
    #sticky
    .abandon 9663 >> Abandonnez La tournée de Kessel
step
    .group 2
    #loop
    .goto Bloodmyst Isle,47.0,51.6,0
    .goto Bloodmyst Isle,50.8,47.0,0
    .goto Bloodmyst Isle,47.4,43.8,0
    .goto Bloodmyst Isle,46.7,48.3,50,0
    .goto Bloodmyst Isle,50.8,47.0,50,0
    .goto Bloodmyst Isle,47.4,43.8,50,0
	>>Tuez les |cRXP_ENEMY_Espion Epervier du soleil|r
    >>|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Sunhawk Spies|r sont très forts à ce niveau. Ne les engagez que un par un|r
    >>Ne tentez PAS cette quête si vous êtes solo
    .complete 9694,1 --Kill Sunhawk Spy (x10)
    .mob Sunhawk Spy
step
    .isQuestComplete 9694
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Boros|r
    .target Vindicator Boros
    .turnin 9694 >> Rendez Blood Watch
step
    #completewith ImpactSiteCrystalSample
    .xp 12
step
	#completewith next
	>>Cueillez un |cRXP_LOOT_Champignon de sang|r sur le sol
    >>Ceux-ci peuvent se trouver partout le long de l'Île de Brume-Sang
    .complete 9648,2 --Collect Blood Mushroom (x1)
step
    #loop
    .goto Bloodmyst Isle,57.65,74.32,0
    .goto Bloodmyst Isle,56.51,79.24,0
    .goto Bloodmyst Isle,63.74,64.79,0
    .goto Bloodmyst Isle,57.65,74.32,40,0
    .goto Bloodmyst Isle,56.51,79.24,40,0
    .goto Bloodmyst Isle,63.74,64.79,40,0
    >>Tuez un |cRXP_ENEMY_Frappeur satyre puant|r. Dépouillez-le pour son |cRXP_LOOT_Satyre Puant aquatique|r
    >>|cRXP_WARN_Vous pouvez aussi ramasser le |cRXP_LOOT_Satyre puant aquatique|r sous l'eau|r
	.complete 9648,1 -- Loot an Aquatic Stinkhorn (x1)
    .mob Stinkhorn Striker
step
    #label ImpactSiteCrystalSample
	.goto Bloodmyst Isle,58.175,83.415
	.use 23875 >>Utilisez la [Pioche à cristaux] sur les |cRXP_PICK_Cristal du site de l'impact|r
    .complete 9581,1 --Collect Impact Site Crystal Sample (x1)
step
    .goto Bloodmyst Isle,57.5,86.5,0
    .goto Bloodmyst Isle,63.5,83.8,0
    .goto Bloodmyst Isle,72.7,80.9,0
	.goto Bloodmyst Isle,60.1,91.6,60,0
    .goto Bloodmyst Isle,57.5,86.5,60,0
    .goto Bloodmyst Isle,59.7,85.8,60,0
    .goto Bloodmyst Isle,63.5,83.8,60,0
    .goto Bloodmyst Isle,67.7,87.6,60,0
    .goto Bloodmyst Isle,72.7,80.9,60,0
    .goto Bloodmyst Isle,64.2,76.8,60,0 -- furbolgs
    .goto Bloodmyst Isle,64.2,76.8,0-- furbolgs
    .xp 12
    .mob Bloodmyst Hatchling
    .mob Bristlelimb Warrior
    .mob Bristlelimb Shaman
step
    .goto Bloodmyst Isle,62.998,87.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kessel|r
    .accept 9663 >> Accept Les Kessel Run
    .target Kessel
step
    #completewith next
    .goto Azuremyst Isle,42.18,2.88,20,0
    .goto Azuremyst Isle,43.23,11.58,70,0
    .goto Azuremyst Isle,50.99,13.09,70,0
    .goto Azuremyst Isle,49.40,23.09,80,0
    .goto Azuremyst Isle,46.685,20.617
	.subzone 3572 >> N’intéragissez avec aucun mob, ne faites aucune attaque et ne lancez aucun sort car cela vous fera aussi descendre de votre monture ! Cela peut aussi arriver si vous êtes hébété d'une attaque par derrière !
    *Suivez la route vers le sud
step << !Shaman
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_High Chief Stillpine|r
    .accept 9622 >> Acceptez Warn Your People
    .target High Chief Stillpine
step
    .goto Azuremyst Isle,49.25,49.53
    .isOnQuest 9663
    .subzone 3576 >> Continuez à suivre la route au sud pour le Guet d'Azur
step << Mage
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Semid|r
    .trainer >> Apprenez vos sorts de classe
    .target Semid
    .subzoneskip 3576,1
    .xp <12,1
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ruada|r
    .turnin 9582 >> Rendez Strength of One
    .accept 10350 >> Acceptez Behomat
    .target Ruada
    .subzoneskip 3576,1
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ruada|r
    .trainer >> Apprenez vos sorts de classe
    .target Ruada
    .subzoneskip 3576,1
    .xp <12,1
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Actéon|r.
    .trainer >> Apprenez vos sorts de classe
    .target Acteon
    .subzoneskip 3576,1
    .xp <12,1
step << Priest
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guvan|r
    .trainer >> Apprenez vos sorts de classe
    .target Guvan
    .subzoneskip 3576,1
    .xp <12,1
step << Paladin
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tullas|r
    .trainer >> Apprenez vos sorts de classe
    .target Tullas
    .subzoneskip 3576,1
    .xp <12,1
step << Shaman
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tuluun|r
    .turnin 9468 >> Rendez la quête L'appel du feu
    .accept 9461 >> Acceptez la quête L'appel du feu
    .target Tuluun
    .subzoneskip 3576,1
step << Shaman
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tuluun|r
    .trainer >> Apprenez vos sorts de classe
    .target Tuluun
    .subzoneskip 3576,1
    .xp <12,1
step
    #optional
    .use 23910 >> Utilisez la [Communication des Elfes de sang] pour commencer la quête
    .accept 9616 >> Acceptez Bandits!
    .itemcount 23910,1
step
    #optional
    .isOnQuest 9616
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Exarque Menelaous|r
    .turnin 9616 >> Rendez la quête Bandits !
    .target Exarch Menelaous
step
    #optional
    .isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Exarque Menelaous|r
    .turnin 9612 >> Rendez A Hearty Thanks!
    .target Exarch Menelaous
step
    .goto Azuremyst Isle,48.391,51.771
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anchorite Fateema|r
    .train 3273 >> Apprenez [Premiers soins]
    .target Anchorite Fateema
step
    .goto 1943/1,5143.700,6130.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Otonambusi|r
    >>|cRXP_BUY_Achetez un|r [Bois simple] |cRXP_BUY_et un|r [Silex et amadou] |cRXP_BUY_ à Neal|r
    >>|cRXP_BUY_Achetez-lui une|r [Petite sacoche marron] |cRXP_BUY_si nécessaire|r << !Warrior !Shaman !Paladin -- saving money for weps soon
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Otonambusi
    .skill cooking,<1,1 -- shows if cooking is >1
step << !Shaman
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Exarque Menelaous|r
    .turnin 9622 >> Rendez Warn Your People
    .target Exarch Menelaous
step
    #completewith next
    .goto The Exodar,73.682,53.701,15 >> Descendez dans l'Exodar
step
    .goto 1947/1,5903.899,6593.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Caregiver Breel|r
    .target Caregiver Breel
    .home >> Set your Hearthstone to Les Exodar
    .bindlocation 3557
step
    #ah
    .goto The Exodar,60.981,52.596,8,0
    .goto The Exodar,63.353,58.989,-1
    .goto The Exodar,63.007,59.264,-1
    .goto The Exodar,63.695,58.664,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l'un des |cRXP_FRIENDLY_Commissaire-priseur de l'Exodar|r
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes à venir plus facilement dans Sombrivage:|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|T133912:0|t[Mérou de Sombrivage]
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Iressa
    .target Auctioneer Fanin
    .target Auctioneer Eoch
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step
    #ah
    .goto The Exodar,60.981,52.596,8,0
    .goto The Exodar,63.353,58.989,-1
    .goto The Exodar,63.007,59.264,-1
    .goto The Exodar,63.695,58.664,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l'un des |cRXP_FRIENDLY_Commissaire-priseur de l'Exodar|r
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes à venir plus facilement dans Sombrivage:|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|T133972:0|t[Viande de trotteur]
    >>|T133912:0|t[Mérou de Sombrivage]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Iressa
    .target Auctioneer Fanin
    .target Auctioneer Eoch
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step << Shaman/Warrior
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_BUY_Achetez-lui un|r [Bâton] |cRXP_BUY_ou regardez à l'Hôtel des Ventes si il n'y en a pas un meilleur/moins cher|r
    .goto The Exodar,73.625,84.814
    .goto The Exodar,63.363,58.999,0
    .collect 854,1 --Quarter Staff (1)
    .target Ellomin
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.44
    --not adding .money tag to this step. user could have less silver than vendor wep but cheaper ones may exist on the AH
step << Shaman/Warrior
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_BUY_Achetez un|r [Bâton] |cRXP_BUY_au marchand|r
    .goto The Exodar,73.625,84.814
    .collect 854,1 --Quarter Staff (1)
    .target Ellomin
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.44
    .money <0.2871
step << Shaman/Warrior
    #optional
    #sticky
    .equip 16,854 >> Équipez le [Bâton]
    .use 854
    .itemcount 854,1
step << Paladin
    #ah
    .goto The Exodar,69.945,90.749
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ven|r
    >>|cRXP_BUY_Achetez-lui une|r [Claymore] |cRXP_BUY_|r |cRXP_BUY_ou vérifiez à l'Hôtel des Ventes si vous avez une meilleure alternative|r
    .collect 1198,1 -- Claymore (1)
    .money <0.3543
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Ven
step << Paladin
    #ssf
    .goto The Exodar,69.945,90.749
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ven|r
    >>|cRXP_BUY_Achetez une|r [Claymore] |cRXP_BUY_au marchand|r
    .collect 1198,1 -- Claymore (1)
    .money <0.3543
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Ven
step << Paladin
    #ssf
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_BUY_Achetez une|r [Masse géante] |cRXP_BUY_au marchand|r
    .goto The Exodar,73.625,84.814
    .collect 1197,1 -- Giant Mace
    .target Ellomin
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
    .itemcount 1198,<1 -- skips if had money to buy Claymore + traiing 2h swords
step << Paladin
    #optional
    #sticky
    .equip 16,1197 >> Équipez la [Masse géante]
    .use 1197
    .itemcount 1197,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .itemcount 1198,<1 -- skips if had money to buy Claymore + traiing 2h swords
step << Paladin
	#completewith next
	.goto The Exodar,53.696,78.280,15 >> Montez en haut de la rampe vers |cRXP_FRIENDLY_Handiir|r
step << Paladin
    .goto The Exodar,53.362,85.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Handiir|r
    .train 202 >> Achetez la compétence pour porter des épées à deux mains
    .target Handiir
step << Paladin
    #optional
    #sticky
    .equip 16,1198 >> Équipez la [Claymore]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Warrior
    #completewith next
    .goto The Exodar,53.39,85.68,15,0
    .goto The Exodar,50.50,81.28,20 >> Remontez la rampe vers |cRXP_FRIENDLY_Behomat|r à l'étage supérieur
step << Warrior
    .goto The Exodar,55.580,82.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Behomat|r
    .turnin 10350 >> Rendez Behomat
    .target Behomat
step << Shaman
    .goto The Exodar,32.844,54.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prophet Velen|r
    .target Prophet Velen
    .turnin 9461 >> Rendez la quête L'appel du feu
    .accept 9555 >> Acceptez la quête L'appel du feu
step << Shaman
    #completewith next
    .goto The Exodar,27.90,29.43,10 >> Dirigez-vous vers |cRXP_FRIENDLY_Farseer Nobundo|r en haut de la rampe
step << Shaman
    .goto The Exodar,31.27,27.65,15,0
    .goto The Exodar,29.76,33.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Farseer Nobundo|r
    >>|cRXP_FRIENDLY_Farseer Nobundo|r patrouille légèrement
    .target Farseer Nobundo
    .turnin 9555 >> Rendez la quête L'appel du feu
step
    #completewith DarkshoreBoat
    .goto 1947/1,6179.200,6216.100,20 >> Quittez l'Exodar
    .zoneskip The Exodar,1
step
    #completewith DarkshoreBoat
    #label Cooking1
    #optional
    >>Sur le bateau si il vient d'arriver, ou sur le quai si le bateau vient de partir:
    .cast 818 >>Fabriquez un [Feu de camp basique] (dans l'onglet Général de votre Grimoire)
    .usespell 818
    .zoneskip Darkshore
    .itemcount 23676,1 --Moongraze Stag Tenderloin (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,10,1 -- shows if cooking is <10
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #completewith DarkshoreBoat
    #requires Cooking1
    #optional
    +|T133971:0|t[Cuisinez] les |cRXP_LOOT_Moongraze Stag Tenderloins|r en [Roasted Moongraze Tenderloin]
    .zoneskip Darkshore
    .itemcount 23676,1 --Moongraze Stag Tenderloin (1+)
    .skill cooking,10,1 -- shows if cooking is <10
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    .goto Azuremyst Isle,20.405,54.184
    .zone Darkshore >> Prenez le bateau pour Sombrivage
    >>Montez le niveau de vos [Premiers soins] en attendant pour le bateau
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step
    #label DarkshoreBoat
    .goto Azuremyst Isle,20.405,54.184
    .zone Darkshore >> Prenez le bateau pour Sombrivage
]])
