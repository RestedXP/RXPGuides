if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP Guide TBC (A)
<< Alliance
#name 1-12 Île de Brume-Azur
#subgroup RestedXP Alliance 1-20
#defaultfor Draenei
#next 12-20 Île de Brume-sang (Draeneï)

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
    >>Tuez les|cRXP_ENEMY_Vale Moths|r. Dépouillez-les pour leur |cRXP_LOOT_Blood|r
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
    .usespell 28880 >>Lancez [Don des Naaru] sur |cRXP_FRIENDLY_Draenei Survivor|r. Ils sont éparpillés tout autour de la zone de départ
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
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    >>Tenez-vous au dessus des bûchers aux alentours pour prendre des dégâts supplémentaires si nécessaire
step
    .goto Azuremyst Isle,79.139,46.536
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Botanist Taerix|r
    .turnin 9294 >> Rendez la quête Guérir le lac
    .target Botanist Taerix
step
	#completewith SpareParts
	.goto Azuremyst Isle,79.987,47.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aurok|r
	.vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Aurok
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
    #label SpareParts
    .goto Azuremyst Isle,79.419,51.235
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Technician Zhanaa|r
    .turnin 9305 >> Rendez la quête Pièces de rechange
    .target Technician Zhanaa
step
    .goto Azuremyst Isle,79.486,51.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vindicator Aldar|r
    .turnin 9303 >> Rendez la quête Inoculation
    .accept 9309 >> Acceptez la quête L'éclaireur disparu
    .target Vindicator Aldar
step
    #completewith SurveyorCandress
    .usespell 28880 >>Lancez [Don des Naaru] sur |cRXP_FRIENDLY_Draenei Survivor|r. Ils sont éparpillés tout autour de la zone de départ
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
    >>Lancez [Don des Naaru] sur |cRXP_FRIENDLY_Draenei Survivor|r. Ils sont éparpillés tout autour de la zone de départ
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
step
    #optional
    .isQuestAvailable 9283
    .goto Azuremyst Isle,69.420,64.608
    .xp 6-1450 >>Tuez les |cRXP_ENEMY_Blood Elf Scouts|r jusqu'à ce qu'il ne vous reste que 1450xp pour le niveau 6 (1350/2800). Laissez-vous tomber bas en vie sur les derniers mobs, nous mourons volontairement plus tard
    .mob Blood Elf Scout
step
    #optional
    .isQuestTurnedIn 9283
    .goto Azuremyst Isle,69.420,64.608
    .xp 6-1230 >>Tuez les |cRXP_ENEMY_Blood Elf Scouts|r jusqu'à ce qu'il ne vous reste que 1230xp pour le niveau 6 (1570/2800). Laissez-vous tomber bas en vie sur les derniers mobs, nous mourons volontairement plus tard
    .mob Blood Elf Scout
step
	#completewith BloodElfSpy
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
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
    .goto Azuremyst Isle,61.87,41.62,60 >> Remontez la rivière par le nord à la nage
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
    .goto Azuremyst Isle,56.1,39.3
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    >>Faites en sorte de mourir près de l'étang, côté montagne
step
    #completewith NightstalkerCleanUp
    .subzone 3576 >> Voyagez vers le Guet d'Azur
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
    >>Tuez les |cRXP_ENEMY_Moongraze Stags|r. Dépouillez-les pour leur |cRXP_LOOT_Tenderloins|r
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
    >>Ceci vous permettra de fabriquer des [Pierre à aiguiser brute] et des [Caillou brute] qui augmenteront vos dégâts en mêlée de 2
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
    >>Tuez les |cRXP_ENEMY_Moongraze Stags|r. Dépouillez-les pour leur |cRXP_LOOT_Tenderloins|r
    .complete 9463,1 -- Root Trapper (6)
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
    >>Essayez de terminer proche du Guet d'Azur
step
	#completewith next
    .goto Azuremyst Isle,49.780,51.938
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    >>Passez cette étape si vous êtes déjà proche du Guet d'Azur
    .subzoneskip 3576
step
	.goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Actéon|r.
	.accept 9454 >> Acceptez la quête La grande chasse aux frôle-lune
    .turnin 9454 >> Rendez la quête La grande chasse aux frôle-lune
    .accept 10324 >> Acceptez la quête La grande chasse aux frôle-lune
    .target Acteon
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Actéon|r.
    .train 5116 >> Apprenez [Trait de choc]
    .train 14260 >> Apprenez [Attaque du Raptor]
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
    #completewith next
    .goto Azuremyst Isle,54.531,40.493,10 >> Descendez de ce côté de la montagne en faisant attention ici
step
    #loop
    .goto Azuremyst Isle,51.9,32.4,0
    .goto Azuremyst Isle,44.2,37.5,0
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
    +Cliquez sur le |cRXP_WARN_buff|r [Ombre de la forêt] pour le retirer
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
    .use 23759 >>Utilisez les [|cRXP_LOOT_Rune Covered Tablet|r]  pour commencer la quête
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
    .cast 30298 >> Utilisez le [Déguisement d'arbre] au drapeau naga
    .timer 73,L'art du camouflage ne se perd pas RP
    .use 23792
step
    >>Attendez le temps du RP
    .complete 9531,1 -- The Traitor Uncovered
step
    +Cliquez le |cRXP_WARN_buff|r [Déguisement d'arbre] pour le retirer
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
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
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
step
    .goto Azuremyst Isle,49.9,51.9
    .xp 9+3070 >> Montez votre expérience jusqu'à 3070+/6500xp
step
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Actéon|r.
    .turnin 9453 >> Rendez la quête Trouvez Actéon !
    .turnin 10324 >> Rendez la quête La grande chasse aux frôle-lune
    .target Acteon
step
    .goto Azuremyst Isle,49.367,51.082
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arugoo of the Stillpine|r
    .turnin 9544 >> Turn in Les Prophecy of Akida
    .accept 9559 >> Acceptez Stillpine Hold
    .target Arugoo of the Stillpine
step
    .goto Azuremyst Isle,48.392,51.482
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daedal|r.
    .turnin 9473 >> Rendez la quête Une tentative alternative
    .target Daedal
step
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Exarque Menelaous|r
    .turnin 9456 >> Rendez la quête Nettoyage des traquenuits, île n°2
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
    .destroy 2512 >> Détruisez toutes vos [Flèche grossières]
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
	.cast 1515 >> Utilisez [Apprivoiser la bête] sur un |cRXP_ENEMY_Ravager Specimen|r pour le dompter
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
    #completewith next
	.hs >> Hearth to Guet d'azur
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
    .cast 31613 >>Utilisez l'[Orbe de retour] pour vous téléporter dans la Clairière de braise
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
    .use 23850 >> Utilisez [|cRXP_LOOT_Gurf's Dignity|r] pour commencer la quête
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
    .goto Bloodmyst Isle,63.5,88.8
	.zone Bloodmyst Isle >> Voyagez vers l'Île de Brume-Sang
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP Guide TBC (A)
<< Alliance
#name 12-20 Île de Brume-sang (Draeneï)
#subgroup RestedXP Alliance 1-20
#defaultfor Draenei
#next 20-21 Sombrivage (Draeneï);21-23 Orneval (Draeneï)

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
    .xp 12-2000 >> Gagnez en expérience jusqu'à ce qu'il ne vous manque que 2000xp pour le niveau 12 (6800/8800)
    >>Tuez les |cRXP_ENEMY_Bloodmyst Hatchlings|r
	>>Ramassez les |cRXP_LOOT_Sand Pears|r sur le sol
    >>Une fois que vous atteint l'expérience nécessaire, continuez le guide
    .complete 9634,1 --Kill Bloodmyst Hatchling (x10)
    .mob Bloodmyst Hatchling
    .disablecheckbox
    .complete 9624,1 --Collect Sand Pear (x10)
    .disablecheckbox
step
	#completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Hôte Topher Loaal|r
    .target Caregiver Topher Loaal
    .accept 9603 >> Acceptez la quête Des lits, des bandages, etc.
step
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Hôte Topher Loaal|r
    .target Caregiver Topher Loaal
    >>|cRXP_BUY_Achetez jusqu'à 40|r [Lutjan à longue mâchoire] |cRXP_BUY_au marchand|r << Warrior
    >>|cRXP_BUY_Achetez jusqu'à 40|r [Lait frais] |cRXP_BUY_au marchand|r << Mage/Priest/Hunter
    >>|cRXP_BUY_Achetez jusqu'à 40|r [Lait frais] |cRXP_BUY_et|r [Lutjan à longue mâchoire] |cRXP_BUY_au marchand|r << Paladin/Shaman
    .collect 1179,35 << !Warrior !Rogue --Ice Cold Milk (35)
    .collect 4592,35 --Longjaw Mud Snapper (35)
    .subzoneskip 3584,1
step
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Hôte Topher Loaal|r
    .target Caregiver Topher Loaal
    .home >> Liez votre Pierre de Foyer à Baie-du-Butin
    .subzoneskip 3584,1
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
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Boros|r
    .target Vindicator Boros
    .turnin 9693 >> Rendez What Argus Means to Me
    .accept 9694 >> Acceptez Blood Watch
step
    #loop
    .goto Bloodmyst Isle,47.0,51.6,0
    .goto Bloodmyst Isle,50.8,47.0,0
    .goto Bloodmyst Isle,47.4,43.8,0
    .goto Bloodmyst Isle,46.7,48.3,50,0
    .goto Bloodmyst Isle,50.8,47.0,50,0
    .goto Bloodmyst Isle,47.4,43.8,50,0
	>>Tuez les |cRXP_ENEMY_Espion Epervier du soleil|r
    >>|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Sunhawk Spies|r sont très forts à ce niveau|r
    .complete 9694,1 --Kill Sunhawk Spy (x10)
    .mob Sunhawk Spy
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Boros|r
    .target Vindicator Boros
    .turnin 9694 >> Rendez Blood Watch
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morae|r
    .target Morae
    .accept 9629 >> Accept Catch et les Release
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
	.goto Bloodmyst Isle,58.175,83.415
	.use 23875 >>Utilisez la [Pioche à cristaux] sur les |cRXP_PICK_Cristal du site de l'impact|r
    .complete 9581,1 --Collect Impact Site Crystal Sample (x1)
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
    .xp 12-2000 >> Gagnez en expérience jusqu'à ce qu'il ne vous manque que 2000xp pour le niveau 12 (6800/8800)
    >>Tuez les |cRXP_ENEMY_Bloodmyst Hatchlings|r
	>>Ramassez les |cRXP_LOOT_Sand Pears|r sur le sol
    >>Une fois que vous atteint l'expérience nécessaire, continuez le guide
    .complete 9634,1 --Kill Bloodmyst Hatchling (x10)
    .mob Bloodmyst Hatchling
    .disablecheckbox
    .complete 9624,1 --Collect Sand Pear (x10)
    .disablecheckbox
step
	#completewith grind3800
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
	#label grind3800
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
	.xp 12+3880 >> Gagnez en expérience jusqu'à ce que vous ayez 3880xp du niveau 12 (3880+/9800)
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
    *Ceci est aussi une quête chronométrée ! Vous avez 15 minutes pour la compléter et la rendre
    *|cRXP_WARN_Suivez la route au sud pour arriver au |cRXP_FRIENDLY_High Chief Stillpine|r en sécurité|r
step
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_High Chief Stillpine|r
    .accept 9622 >> Acceptez Warn Your People << !Shaman
    .complete 9663,1 --High Chief Stillpine Warned
    .target High Chief Stillpine
step
    .goto Azuremyst Isle,44.627,23.481
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gurf|r
    .turnin 9564 >> Rendez Gurf's Dignity
    .turnin 9562 >> Rendez Murdaloc Why Here? Why Now?
    .target Gurf
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
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ruada|r
    .turnin 9582 >> Rendez Strength of One
    .accept 10350 >> Acceptez Behomat
    .trainer >> Apprenez vos sorts de classe
    .target Ruada
    .subzoneskip 3576,1
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Actéon|r.
    .trainer >> Apprenez vos sorts de classe
    .target Acteon
    .subzoneskip 3576,1
step << Priest
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guvan|r
    .trainer >> Apprenez vos sorts de classe
    .target Guvan
    .subzoneskip 3576,1
step << Shaman
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tuluun|r
    .turnin 9468 >> Rendez la quête L'appel du feu
    .accept 9461 >> Acceptez la quête L'appel du feu
    .trainer >> Apprenez vos sorts de classe
    .target Tuluun
    .subzoneskip 3576,1
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
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Exarque Menelaous|r
    .turnin 9622 >> Rendez Warn Your People << !Shaman
    .complete 9663,2 --Exarch Menelaous Warned
    .target Exarch Menelaous
step
    #completewith next
    .isOnQuest 9663
    .subzone 3573 >> Continuez à suivre la route pour le point d'accostage d'Odesyus
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Admiral Odesyus|r
    .complete 9663,3 --Admiral Odesyus Warned
    .target Admiral Odesyus
step
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Prêtresse Kyleen Il'dinare|r
    .turnin 9515 >> Rendez Warlord Sriss'tiz
    .target Priestess Kyleen Il'dinare
step << Paladin
    #completewith next
    .goto Azuremyst Isle,24.6,49.0,20,0
    .goto The Exodar,42.90,67.67,15 >>Entrez dans l'Exodar via la rampe de derrière
step << Paladin
    .goto The Exodar,38.367,82.564
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Prêtresse Kyleen Il'dinare|r
    .target Jol
    .accept 9598 >>Acceptez la quête Rédemption
    .turnin 9598 >>Rendez la quête Rédemption
    .accept 9600 >>Acceptez la quête Rédemption
	.trainer >> Apprenez vos sorts de classe
step
    .isOnQuest 9581,9663
	.hs >> Retournez au Guet du Sang
    .cooldown item,6948,>2,1
step
	.isOnQuest 9581,9663
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Stephanos|r
    .fly Blood Watch >> Envolez-vous vers Le Guet du sang
    .target Stephanos
    .zoneskip Bloodmyst Isle
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vindicator Aalesia|r
    .accept 9567 >> Acceptez Know Thine Enemy
    .target Vindicator Aalesia
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .turnin 9581 >> Rendez Learning from the Crystals
    .accept 9620 >> Accept Les Minage Survey Team
    .target Harbinger Mikolaas
step
    .goto Bloodmyst Isle,62.998,87.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kessel|r
    .turnin 9663 >> Abandonnez La tournée de Kessel
    .accept 9666 >> Acceptez Declaration of Power
    .target Kessel
step
    .goto Bloodmyst Isle,68.257,80.999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Princess Stillpine|r
    .accept 9667 >> Acceptez Saving Princess Stillpine
    .target Princess Stillpine
step
	#completewith next
	>>Ramassez un |cRXP_LOOT_Polypore des ruines|r sur le sol
    >>Il ressemble à un petit champignon bleu que l'on peut trouver autour des ruines Naga
    .complete 9648,3 --Collect Ruinous Polyspore (x1)
step
    .goto Bloodmyst Isle,67.35,67.99,40,0
    .goto Bloodmyst Isle,68.83,68.09
	>>Tuez |cRXP_ENEMY_Lord Xiz|r
    .use 24084 >> Utilisez la [Bannière draeneï] sur son cadavre
    .complete 9666,1 -- Kill Lord Xiz (1)
    .mob +Lord Xiz
    .complete 9666,2 --Declaration of Power (x1)
step
    #loop
    .goto Bloodmyst Isle,67.91,66.45,0
    .goto Bloodmyst Isle,66.51,69.90,0
    .goto Bloodmyst Isle,68.58,65.18,0
    .goto Bloodmyst Isle,68.71,71.59,0
    .goto Bloodmyst Isle,67.91,66.45,8,0
    .goto Bloodmyst Isle,66.51,69.90,8,0
    .goto Bloodmyst Isle,68.58,65.18,8,0
    .goto Bloodmyst Isle,68.71,71.59,8,0
	>>Ramassez un |cRXP_LOOT_Polypore des ruines|r sur le sol
    >>Il ressemble à un petit champignon bleu que l'on peut trouver autour des ruines Naga
    .complete 9648,3 --Collect Ruinous Polyspore (x1)
step << Paladin
    #completewith next
    .goto Bloodmyst Isle,65.291,77.547
	.use 6866 >>Utilisez le [Symbole de vie] sur le |cRXP_FRIENDLY_Young Furbolg Shaman|r
    .complete 9600,1 --Young Furbolg Shaman Resurrected (1)
    .target Young Furbolg Shaman
step
    .goto Bloodmyst Isle,64.2,76.8
    >>Tuez les |cRXP_ENEMY_Bristlelimb Warriors|r et les |cRXP_ENEMY_Bristlelimb Shamans|r jusqu'à ce que le |cRXP_ENEMY_High Chief Bristlelimb|r apparaisse
    >>Tuez le |cRXP_ENEMY_High Chief Bristlelimb|r. Dépouillez-le pour sa |cRXP_LOOT_The High Chief's Key|r
    .collect 24099,1,9667,1 --Collect The High Chief's Key (x1)
    .mob Bristlelimb Warrior
    .mob Bristlelimb Shaman
    .unitscan High Chief Bristlelimb
step << Paladin
    .goto Bloodmyst Isle,65.291,77.547
	.use 6866 >>Utilisez le [Symbole de vie] sur le |cRXP_FRIENDLY_Young Furbolg Shaman|r
    .complete 9600,1 --Young Furbolg Shaman Resurrected (1)
    .target Young Furbolg Shaman
step
    .goto Bloodmyst Isle,68.257,80.999
    >>Cliquez sur la |cRXP_PICK_Princess Stillpine's Cage|r
    .complete 9667,1 --Free Saving Princess Stillpine
    .itemcount 24099,1
step
    .goto Bloodmyst Isle,62.998,87.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kessel|r
    .turnin 9666 >> Rendez Declaration of Power
    .accept 9668 >> Acceptez Rapport au Lieutenant Doren Admetius
    .target Kessel
step
	#completewith next
	.use 23995 >>Utilisez le [Marqueur de murlocs] sur les |cRXP_ENEMY_Eclaireur Vase Noire|r
    >>Ne TUEZ PAS les |cRXP_ENEMY_Eclaireur Vase Noire|r
    .complete 9629,1 --Blacksilt Scouts Tagged (x6)
    .target Blacksilt Scout
step
    #loop
    .goto Bloodmyst Isle,49.26,94.16,0
    .goto Bloodmyst Isle,43.70,94.43,0
    .goto Bloodmyst Isle,36.82,95.03,0
    .goto Bloodmyst Isle,49.26,94.16,70,0
    .goto Bloodmyst Isle,43.70,94.43,70,0
    .goto Bloodmyst Isle,36.82,95.03,70,0
	>>Tuez |cRXP_ENEMY_Aileron-cruel|r. Dépouillez-le pour le [|cRXP_LOOT_Pendentif de cristal rouge|r]
    .use 23870 >>Utilisez le [|cRXP_LOOT_Red Crystal Pendant|r] pour commencer la quête
    >>|cRXP_ENEMY_Aileron-cruel|r patrouille le long du rivage
	.collect 23870,1,9576,1 --Red Crystal Pendant (1)
    .accept 9576 >> Acceptez Cruelfin's Necklace
	.unitscan Cruelfin
step
    #loop
    .goto Bloodmyst Isle,49.26,94.16,0
    .goto Bloodmyst Isle,43.70,94.43,0
    .goto Bloodmyst Isle,36.82,95.03,0
    .goto Bloodmyst Isle,49.26,94.16,70,0
    .goto Bloodmyst Isle,43.70,94.43,70,0
    .goto Bloodmyst Isle,36.82,95.03,70,0
	.use 23995 >>Utilisez le [Marqueur de murlocs] sur les |cRXP_ENEMY_Eclaireur Vase Noire|r
    >>Ne TUEZ PAS les |cRXP_ENEMY_Eclaireur Vase Noire|r
    .complete 9629,1 --Blacksilt Scouts Tagged (x6)
    .target Blacksilt Scout
step
	#completewith FelConeFungus
	>>Cueillez un |cRXP_LOOT_Champignon de sang|r sur le sol
    >>Ceux-ci peuvent se trouver partout le long de l'Île de Brume-Sang
    .complete 9648,2 --Collect Blood Mushroom (x1)
step
    #completewith SatyrFelsworn
	>>Cueillez un |cRXP_LOOT_Collybie gangrenée|r sur le sol
    .complete 9648,4 --Collect Fel Cone Fungus (x1)
step
    #completewith next
    >>Tuez |cRXP_ENEMY_Tzerak|r. Dépouillez-le pour sa [|cRXP_LOOT_Tzerak's Armor Plate|r]
    .use 23900 >> Utilisez la [|cRXP_LOOT_Plaque d'armure de Tzerak|r] pour commencer la quête
    .collect 23900,1,9594,1 --Tzerak's Armor Plate
    .accept 9594 >> Acceptez Signs of the Legion
    .unitscan Tzerak
step
    .goto Bloodmyst Isle,36.498,71.338
	>>Cliquez sur les |cRXP_PICK_Nazzivus Monument Glyphs|r sur le mur de l'autel. Ramassez le |cRXP_LOOT_Nazzivus Monument Glyph|r
    .complete 9567,1 --Collect Nazzivus Monument Glyph (x1)
step
    .goto Bloodmyst Isle,36.498,71.338,30,0
    .goto Bloodmyst Isle,38.416,82.003
    >>Tuez |cRXP_ENEMY_Tzerak|r. Dépouillez-le pour sa [|cRXP_LOOT_Tzerak's Armor Plate|r]
    .use 23900 >> Utilisez la [|cRXP_LOOT_Plaque d'armure de Tzerak|r] pour commencer la quête
    >>Si vous ne le voyez pas faire sa patrouille dans les camps, attendez qu'il réapparaisse au sigil violet sur le sol au sud. Il peut prendre jusqu'à 3-6 minutes avant de réapparaître
    .collect 23900,1,9594,1 --Tzerak's Armor Plate
    .accept 9594 >> Acceptez Signs of the Legion
    .unitscan Tzerak
step
    .isOnQuest 9594
    #label SatyrFelsworn
    #loop
    .goto Bloodmyst Isle,36.23,80.94,0
    .goto Bloodmyst Isle,37.67,76.66,0
    .goto Bloodmyst Isle,40.49,78.92,0
    .goto Bloodmyst Isle,38.72,73.66,0
    .goto Bloodmyst Isle,33.68,72.42,0
    .goto Bloodmyst Isle,36.23,80.94,70,0
    .goto Bloodmyst Isle,37.67,76.66,70,0
    .goto Bloodmyst Isle,40.49,78.92,70,0
    .goto Bloodmyst Isle,38.72,73.66,70,0
    .goto Bloodmyst Isle,33.68,72.42,70,0
	>>Tuez les |cRXP_ENEMY_Satyre Nazzivus|r et les |cRXP_ENEMY_Gangrelige Nazzivus|r
    >>|cRXP_WARN_Vous aurez peut-être besoin de tuer des |cRXP_ENEMY_Voleur Nazzivus|r si vous ne voyez pas de |cRXP_ENEMY_Satyre Nazzivus|r ou de |cRXP_ENEMY_Gangrelige Nazzivus|r afin de les faire reapparaître|r
    .complete 9594,1 --Kill Nazzivus Satyr (x8)
    .mob +Nazzivus Satyr
    .complete 9594,2 --Kill Nazzivus Felsworn (x8)
    .mob +Nazzivus Felsworn
step
    #label FelConeFungus
    .goto Bloodmyst Isle,36.9,81.7,0
    .goto Bloodmyst Isle,32.2,81.3,0
    .goto Bloodmyst Isle,37.4,76.8,0
    .goto Bloodmyst Isle,44.5,82.5,0
    .goto Bloodmyst Isle,44.6,86.0,0
    .goto Bloodmyst Isle,36.9,81.7,30,0
    .goto Bloodmyst Isle,32.2,81.3,30,0
    .goto Bloodmyst Isle,37.4,76.8,30,0
    .goto Bloodmyst Isle,44.5,82.5,30,0
    .goto Bloodmyst Isle,44.6,86.0,30,0
	>>Cueillez un |cRXP_LOOT_Collybie gangrenée|r sur le sol
    .complete 9648,4 --Collect Fel Cone Fungus (x1)
step
    #loop
    .goto Bloodmyst Isle,38.9,79.4,0
    .goto Bloodmyst Isle,42.1,71.7,0
    .goto Bloodmyst Isle,46.8,77.0,0
    .goto Bloodmyst Isle,45.7,86.9,0
    .goto Bloodmyst Isle,49.7,86.2,0
    .goto Bloodmyst Isle,53.5,75.7,0
    .goto Bloodmyst Isle,48.5,66.7,0
    .goto Bloodmyst Isle,54.1,67.6,0
    .goto Bloodmyst Isle,58.9,61.8,0
    .goto Bloodmyst Isle,38.9,79.4,15,0
    .goto Bloodmyst Isle,42.1,71.7,15,0
    .goto Bloodmyst Isle,46.8,77.0,15,0
    .goto Bloodmyst Isle,45.7,86.9,15,0
    .goto Bloodmyst Isle,49.7,86.2,15,0
    .goto Bloodmyst Isle,53.5,75.7,15,0
    .goto Bloodmyst Isle,48.5,66.7,15,0
    .goto Bloodmyst Isle,54.1,67.6,15,0
    .goto Bloodmyst Isle,58.9,61.8,15,0
	>>Cueillez un |cRXP_LOOT_Champignon de sang|r sur le sol
    >>Ceux-ci peuvent se trouver partout le long de l'Île de Brume-Sang
    .complete 9648,2 --Collect Blood Mushroom (x1)
step
    #optional
    .isOnQuest 9648,9594,9567,9629
	.hs >> Retournez au Guet du Sang
    .cooldown item,6948,>2,1
step
    #completewith next
    .subzone 3584 >> Voyagez vers le Guet du Sang
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morae|r
    .turnin 9576 >> Rendez Cruelfin's Necklace
    .turnin 9629 >> Turn in Catch et les Release
    .accept 9574 >> Acceptez Victims of Corruption
    .target Morae
step
--Arrow should point to the small ruins, dynamic spawns therefore
    .goto Bloodmyst Isle,50.6,74.4
    .goto Bloodmyst Isle,43.9,72.1,0
    .goto Bloodmyst Isle,45.2,68.1,0
    .goto Bloodmyst Isle,38.2,92.9,0
    .goto Bloodmyst Isle,52.7,82.7,0
	>>Tuez les |cRXP_ENEMY_Tréant corrompu|r. Dépouillez-les pour leur |cRXP_LOOT_Ecorce cristallisée|r
    .complete 9574,1 --Collect Crystallized Bark (x6)
    .mob Corrupted Treant
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morae|r
    .turnin 9574 >> Rendez Victims of Corruption
    .target Morae
step
	.goto Bloodmyst Isle,53.319,56.672
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beega|r
    .target Beega
	.vendor >> Vendez et réparez << !Hunter
	.vendor >> |cRXP_BUY_Achetez un|r [Carquois moyen] et refaites un stock de [Flèche pointue] << Hunter
    .collect 11362,1 << Hunter
    .subzoneskip 3584,1
step
    .goto Bloodmyst Isle,55.252,59.121
    >>Cliquez sur l' |cRXP_PICK_l'Affiche de recherche|r
    .accept 9646 >> Acceptez WANTED: Deathclaw
step
    .isOnQuest 9594
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vindicator Aalesia|r
    .turnin 9594 >> Rendez Signs of the Legion
    .turnin 9567 >> Rendez Know Thine Enemy
    .target Vindicator Aalesia
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vindicator Aalesia|r
    .turnin 9567 >> Rendez Know Thine Enemy
    .target Vindicator Aalesia
step
    .goto Bloodmyst Isle,55.156,55.953
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Stillpine Ambassador Olorg|r
    .turnin 9667 >> Rendez Saving Princess Stillpine
    .target Stillpine Ambassador Olorg
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Boros|r
    .target Vindicator Boros
    .accept 9641 >> Acceptez la quête Les éclats de cristal irradié
	.turnin 9641 >> Rendez la quête Les éclats de cristal irradié
    .accept 9779 >> Acceptez Intercepting the Message
	.itemcount 23984,10 -- Irradiated Crystal Shard (10)
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Boros|r
    .target Vindicator Boros
    .accept 9641 >> Acceptez la quête Les éclats de cristal irradié
    .accept 9779 >> Acceptez Intercepting the Message
step << Paladin
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Aesom|r
    .trainer >> Apprenez vos sorts de classe
    .target Vindicator Aesom
    .subzoneskip 3584,1
step
    .goto Bloodmyst Isle,55.862,56.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tracker Lyceon|r
    .accept 9580 >> Accept Les Bear Necessities
    .accept 9643 >> Acceptez Constrictor Vines
    .target Tracker Lyceon
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maatparm|r
    .turnin 9648 >> Rendez Maatparm Mushroom Menagerie
    .target Maatparm
step
    #completewith next
    .subzone 3591 >> Voyagez vers les Ruines de Loreth'Aran
step
    .goto Bloodmyst Isle,61.249,48.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au cadavre du |cRXP_FRIENDLY_Draenei Cartographer|r
    .turnin 9620 >> Turn in Les Minage Survey Team
    .accept 9628 >> Acceptez Salvaging the Data
    .target Draenei Cartographer
step
    #loop
    .goto Bloodmyst Isle,61.24,48.37,0
    .goto Bloodmyst Isle,61.24,48.37,40,0
    .goto Bloodmyst Isle,61.40,43.51,40,0
    .goto Bloodmyst Isle,63.36,47.93,40,0
	>>Tuez les |cRXP_ENEMY_Marauder irécaille|r et les |cRXP_ENEMY_Ensorceleuse Irécaille|r. Dépouillez-les pour leur |cRXP_LOOT_Cristal de données du relevé|r
    .complete 9628,1 --Collect Survey Data Crystal (x1)
    .mob Wrathscale Marauder
    .mob Wrathscale Sorceress
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .turnin 9628 >> Rendez Salvaging the Data
    .accept 9584 >> Accept Les Second Sample
    .turnin 9668 >> Rendez Rapport au Lieutenant Doren Admetius
    .target Harbinger Mikolaas
step
	#completewith GrindCheck
	>>Tuez les |cRXP_ENEMY_Espion Epervier du soleil|r. Dépouillez-les pour leur |cRXP_LOOT_Missive des Eperviers du soleil|r
    .complete 9779,1 --Collect Sunhawk Missive (x1)
    .mob Sunhawk Spy
step
    .goto Bloodmyst Isle,45.669,47.827
	.use 23876 >>Utilisez la [Pioche à cristaux] sur le |cRXP_PICK_Cristal de Brume-Sang altéré|r
    .complete 9584,1 --Collect Altered Crystal Sample (x1)
step
    #label GrindCheck
	.goto Bloodmyst Isle,48.1,47.6
    .xp 15-1200 >> Gagnez en expérience jusqu'à ce qu'il ne vous manque que 1200xp pour le niveau 15 (11100/12300)
    .mob Sunhawk Spy
step
    #loop
    .goto Bloodmyst Isle,47.0,51.6,0
    .goto Bloodmyst Isle,50.8,47.0,0
    .goto Bloodmyst Isle,47.4,43.8,0
    .goto Bloodmyst Isle,46.7,48.3,50,0
    .goto Bloodmyst Isle,50.8,47.0,50,0
    .goto Bloodmyst Isle,47.4,43.8,50,0
	>>Tuez les |cRXP_ENEMY_Espion Epervier du soleil|r. Dépouillez-les pour leur |cRXP_LOOT_Missive des Eperviers du soleil|r
    .complete 9779,1 --Collect Sunhawk Missive (x1)
    .mob Sunhawk Spy
step
	#completewith Audience
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Messenger Hermesius|r
    >>Le |cRXP_FRIENDLY_Messenger Hermesius|r patrouille le long du Guet du Sang
    .accept 9671 >> Acceptez Urgent Delivery
    .turnin 9671 >> Rendez Urgent Delivery
	.target Messenger Hermesius
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .turnin 9584 >> Turn in Les Second Sample
    .accept 9585 >> Accept Les Final Sample
    .target Harbinger Mikolaas
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Boros|r
    .target Vindicator Boros
    .turnin 9779 >> Rendez Intercepting the Message
    .accept 9696 >> Acceptez Translations...
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Boros|r
    .target Vindicator Boros
    .accept 9641 >> Acceptez la quête Les éclats de cristal irradié
	.turnin 9641 >> Rendez la quête Les éclats de cristal irradié
	.itemcount 23984,10 -- Irradiated Crystal Shard (10)
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Boros|r
    +N'oubliez pas de rendre vos [Éclat de cristal irradié] pour le consommable [Cristal de clairvoyance] (Augmente l'Intelligence de 5. Dure 30 mins.) << !Warrior !Paladin !Shaman !Rogue
    +N'oubliez pas de rendre vos [Éclat de cristal irradié] pour le consommable [Cristal de férocité] (Augmente la puissance d'attaque de 10. Dure 30 mins.) << Warrior/Paladin/Shaman/Rogue
    .target Vindicator Boros
    .itemcount 23984,>9
step
    #label Audience
    .goto Bloodmyst Isle,54.438,54.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l'|cRXP_FRIENDLY_Interrogatrice Elysia|r
    .target Interrogator Elysia
    .turnin 9696 >> Rendez Translations...
    .accept 9698 >> Accept Audience avec le Prophet
step
    #loop
    .goto Bloodmyst Isle,54.6,59.8,0
    .goto Bloodmyst Isle,53.6,54.4,40,0
    .goto Bloodmyst Isle,54.6,59.8,20,0
    .goto Bloodmyst Isle,55.6,54.4,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Messenger Hermesius|r
    >>Le |cRXP_FRIENDLY_Messenger Hermesius|r patrouille le long du Guet du Sang
    .accept 9671 >> Acceptez Urgent Delivery
    .turnin 9671 >> Rendez Urgent Delivery
	.target Messenger Hermesius
step
    .goto Bloodmyst Isle,55.210,59.207
	>>Ouvrez votre |cRXP_PICK_Boîte aux lettres|r. Récupérez y la [|cRXP_LOOT_A Letter from the Admiral|r]
    .use 24132 >>Utilisez la [|cRXP_LOOT_A Letter from the Admiral|r] pour commencer la quête
    .collect 24132,1,9672 --Collect A Letter from the Admiral
    .accept 9672 >> Accept Les Bloodcurse Legacy
step
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Hôte Topher Loaal|r
    .target Caregiver Topher Loaal
    >>|cRXP_BUY_Achetez jusqu'à 40|r [Lutjan à longue mâchoire] |cRXP_BUY_au marchand|r << Warrior
    >>|cRXP_BUY_Achetez jusqu'à 40|r [Jus de melon] |cRXP_BUY_au marchand|r << Mage/Priest/Hunter
    >>|cRXP_BUY_Achetez jusqu'à 40|r [Jus de melon] |cRXP_BUY_et|r [Lutjan à longue mâchoire] |cRXP_BUY_au marchand|r << Paladin/Shaman
    .collect 1205,35 << !Warrior !Rogue --Melon Juice (35)
    .collect 4592,35 --Longjaw Mud Snapper (35)
    .subzoneskip 3584,1
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vindicator Aalesia|r
    .accept 9569 >> Acceptez Containing the Threat
    .target Vindicator Aalesia
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Boros|r
    .target Vindicator Boros
    .accept 9641 >> Acceptez la quête Les éclats de cristal irradié
	.turnin 9641 >> Rendez la quête Les éclats de cristal irradié
	.itemcount 23984,10 -- Irradiated Crystal Shard (10)
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Boros|r
    +N'oubliez pas de rendre vos [Éclat de cristal irradié] pour le consommable [Cristal de clairvoyance] (Augmente l'Intelligence de 5. Dure 30 mins.) << !Warrior !Paladin !Shaman !Rogue
    +N'oubliez pas de rendre vos [Éclat de cristal irradié] pour le consommable [Cristal de férocité] (Augmente la puissance d'attaque de 10. Dure 30 mins.) << Warrior/Paladin/Shaman/Rogue
    .target Vindicator Boros
    .itemcount 23984,>9
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maatparm|r
    .target Maatparm
    .accept 9649 >> Acceptez Ysera's Tears
step
    #completewith next
    .subzone 3598 >> Voyagez vers l'Île Balafre-du-Ver
step
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prince Toreth|r
    >>Le |cRXP_FRIENDLY_Prince Toreth|r se déplace légèrement
    .accept 9687 >> Acceptez Restoring Sanctity
    .target Prince Toreth
step
	#completewith next
	>>Ramassez |cRXP_LOOT_Les larmes d'Ysera|r sur le sol
    >>Elles ressemblent à de petits champignons verts
    .complete 9649,1 --Collect Ysera's Tear (x2)
step
    .goto Bloodmyst Isle,79.150,22.656
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prince Toreth|r
    .turnin 9672 >> Turn in Les Bloodcurse Legacy
    .accept 9674 >> Accept Les Bloodcursed Naga
    .target Captain Edward Hanes
step
    #loop
    .goto Bloodmyst Isle,82.0,21.6,0
    .goto Bloodmyst Isle,81.0,16.2,0
    .goto Bloodmyst Isle,80.8,10.4,0
    .goto Bloodmyst Isle,82.0,21.6,70,0
    .goto Bloodmyst Isle,81.0,16.2,70,0
    .goto Bloodmyst Isle,80.8,10.4,70,0
	>>Tuez les |cRXP_ENEMY_Bloodcursed Nagas|r
    .complete 9674,1 --Kill Bloodcursed Naga (x10)
    .mob Bloodcursed Naga
step
    .goto Bloodmyst Isle,79.150,22.656
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prince Toreth|r
    .turnin 9674 >> Turn in Les Bloodcursed Naga
    .accept 9682 >> Accept Les Hopeless Ones...
    .target Captain Edward Hanes
step
    #loop
    .goto Bloodmyst Isle,83.21,21.40,0
    .goto Bloodmyst Isle,87.3,16.6,0
    .goto Bloodmyst Isle,83.90,12.18,0
    .goto Bloodmyst Isle,83.21,21.40,40,0
    .goto Bloodmyst Isle,87.3,16.6,40,0
    .goto Bloodmyst Isle,83.90,12.18,50,0
    >>Tuez les |cRXP_ENEMY_Voyageur au sang maudit|r. Dépouillez-les pour leur |cRXP_LOOT_Âme au sang maudit|r
    .complete 9682,1 --Collect Bloodcursed Soul (x4)
    .mob Bloodcursed Voyager
step
    .goto Bloodmyst Isle,79.150,22.656
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prince Toreth|r
    .turnin 9682 >> Turn in Les Hopeless Ones...
    .accept 9683 >> Acceptez Ending the Bloodcurse << !Warrior
    .target Captain Edward Hanes
step << !Warrior
    .xp 16-3300 >> Gagnez en expérience jusqu'à ce qu'il ne vous manque que 3300xp pour le niveau 16 (10300/13600+)
step
    #loop
    .goto Bloodmyst Isle,76.8,21.5,0
    .goto Bloodmyst Isle,75.7,28.5,0
    .goto Bloodmyst Isle,71.5,28.6,0
    .goto Bloodmyst Isle,68.5,21.6,0
    .goto Bloodmyst Isle,70.6,16.5,0
    .goto Bloodmyst Isle,71.5,11.5,0
    .goto Bloodmyst Isle,75.1,8.4,0
    .goto Bloodmyst Isle,74.9,16.3,0
    .goto Bloodmyst Isle,76.8,21.5,35,0
    .goto Bloodmyst Isle,75.7,28.5,35,0
    .goto Bloodmyst Isle,71.5,28.6,35,0
    .goto Bloodmyst Isle,68.5,21.6,35,0
    .goto Bloodmyst Isle,70.6,16.5,35,0
    .goto Bloodmyst Isle,71.5,11.5,35,0
    .goto Bloodmyst Isle,75.1,8.4,35,0
    .goto Bloodmyst Isle,74.9,16.3,35,0
	>>Ramassez |cRXP_LOOT_Les larmes d'Ysera|r sur le sol
    >>Elles ressemblent à de petits champignons verts
    .complete 9649,1 --Collect Ysera's Tear (x2)
step << !Warrior
    #completewith Atoph
    .subzone 3612 >> Nagez au sud jusqu'à l'Île du Sang maudit
step << !Warrior
    #completewith Atoph
    .goto Bloodmyst Isle,83.58,55.21,20,0
    .goto Bloodmyst Isle,86.26,57.24,20,0
    .goto Bloodmyst Isle,86.90,52.70,20,0
    .goto Bloodmyst Isle,86.061,54.599
    .cast 8386,6477,6478 >> Cliquez sur la |cRXP_PICK_Statue de la reine Azshara|r pour invoquer |cRXP_ENEMY_Atoph the Bloodcursed|r
step << !Warrior
    #label Atoph
    .goto Bloodmyst Isle,85.59,53.42
    >>Tuez |cRXP_ENEMY_Atoph the Bloodcursed|r
    >>|cRXP_ENEMY_Atoph the Bloodcursed|r est de niveau 19. Soyez prêt à utiliser une Potion de vie ou le [Don des Naaru] si nécessaire. Passez cette étape si vous n'êtes pas capable de le tuer
    .complete 9683,1 --Kill Atoph the Bloodcursed (x1)
    .mob Atoph the Bloodcursed
step
	#completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maatparm|r
    .target Maatparm
    .turnin 9649 >> Rendez Ysera's Tears
step
    .goto Bloodmyst Isle,56.324,54.232
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Prospecteur Nachlan|r
    .accept 10063 >> Acceptez Explorers' League, Is That Something for Gnomes?
    .target Prospector Nachlan
step
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laando|r
    .accept 9604 >> Acceptez la quête Sur les ailes d'un hippogriffe
    .target Laando
step
    #completewith WingsofHippogryph
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laando|r
    .fly The Exodar>> Volez vers l'Exodar
    .target Laando
step
    #completewith WingsofHippogryph
    .goto The Exodar,73.682,53.701,15 >> Descendez dans l'Exodar
step
    #label WingsofHippogryph
	.goto The Exodar,57.011,50.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nurguni|r
    .turnin 9604 >> Rendez la quête Sur les ailes d'un hippogriffe
    .accept 9605 >> Acceptez la quête Le maître des hippogriffes Stephanos
    .target Nurguni
step << Warlock/Priest/Mage
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oss|r
    >>|cRXP_BUY_Achetez une|r [Baguette de fonte] |cRXP_BUY_au marchand ou vérifiez l'Hôtel des Ventes pour une|r [Baguette magique supérieure]
    .goto The Exodar,46.386,61.499
    .goto The Exodar,63.363,58.999,0
    .collect 5208,1 --Smoldering Wand (1)
    .target Oss
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    --not adding .money tag to this step. user could have less silver than vendor wand but cheaper ones may exist on the AH
step << Warlock/Priest/Mage
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oss|r
    >>|cRXP_BUY_Achetez une|r [Baguette de fonte] |cRXP_BUY_à Harick|r
    .goto The Exodar,46.386,61.499
    .collect 5208,1 --Smoldering Wand (1)
    .target Oss
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .money <0.3173
step << Warlock/Priest/Mage
    #optional
    +Équipez la [Baguette de fonte]
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp <15,1
step << Warlock/Priest/Mage
    #optional
    +N'oubliez pas d'équiper la [Baguette de fonte] quand vous atteindrez le niveau 15 plus tard
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp >15,1
step
    .goto The Exodar,53.589,90.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Feera|r
    .vendor >> |cRXP_BUY_Achetez un|r [Tube en bronze]
    >>Cet objet est en stock limité. Passez cette étape si elle n'en a plus de disponible
    .bronzetube
    .target Feera
    .zoneskip The Exodar,1
step << Warrior/Shaman/Paladin
    #completewith next
    .goto The Exodar,53.39,85.68,15,0
    .goto The Exodar,50.50,81.28,20 >> Remontez la rampe vers |cRXP_FRIENDLY_Behomat|r à l'étage supérieur << Warrior
    .goto The Exodar,50.50,81.28,20 >> Remontez la rampe vers |cRXP_FRIENDLY_Handiir|r à l'étage supérieur << Shaman/Paladin
step << Warrior
    .goto The Exodar,55.580,82.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Behomat|r
    .turnin 10350 >> Rendez Behomat
    .trainer >> Apprenez vos sorts de classe
    .target Behomat
step << Warrior/Shaman/Paladin
    .goto The Exodar,53.362,85.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Handiir|r
    .train 199 >> Acheter la compétence pour porter des masses à deux mains << Warrior/Shaman
    .train 202 >> Achetez la compétence pour porter des épées à deux mains << Paladin
    .target Handiir
step << Paladin
    .goto The Exodar,38.367,82.564
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Prêtresse Kyleen Il'dinare|r
    .turnin 9600 >>Rendez la quête Rédemption
	.trainer >> Apprenez vos sorts de classe
    .target Jol
step << Warrior/Paladin
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_BUY_Achetez un|r [Marteau en pierre] |cRXP_BUY_à elle ou vérifitez l'Hôtel des Ventes pour une meilleure arme|r
    .goto The Exodar,73.625,84.814
    .goto The Exodar,63.363,58.999,0
    .collect 2026,1 --Rock Hammer (1)
    .target Ellomin
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    --not adding .money tag to this step. user could have less silver than vendor wep but cheaper ones may exist on the AH
step << Warrior/Paladin
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_BUY_Achetez un|r [Marteau en pierre] |cRXP_BUY_à Ellomin|r
    .goto The Exodar,73.625,84.814
    .collect 2026,1 --Rock Hammer (1)
    .target Ellomin
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .money <0.5971
step << Warrior/Paladin
    #optional
    +Équipez le [Marteau en pierre]
    .use 2026
    .itemcount 2026,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step
    .goto The Exodar,32.844,54.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prophet Velen|r
    .target Prophet Velen
    .turnin 9461 >> Rendez la quête L'appel du feu << Shaman
    .accept 9555 >> Acceptez la quête L'appel du feu << Shaman
    .turnin 9698 >> Turn in Audience avec le Prophet
    .accept 9699 >> Acceptez Truth or Fiction
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
	.trainer >> Apprenez vos sorts de classe
step
    #completewith next
    .goto The Exodar,54.09,32.52,30,0
    .goto The Exodar,64.86,35.03,20,0
    .goto The Exodar,73.68,53.70,20 >> Quittez l'Exodar
step
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Stephanos|r
    .target Stephanos
    .turnin 9605 >> Rendez la quête Le maître des hippogriffes Stephanos
    .accept 9606 >> Rendez Retourner voir Topher Loaal
step
    .isOnQuest 9606,9699
	.hs >> Retournez au Guet du Sang
    >>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r << !Warrior !Rogue
	>>|cRXP_BUY_Achetez de la nourriture si besoin|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step
	.isOnQuest 9606,9699
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Stephanos|r
    .fly Blood Watch >> Envolez-vous vers Le Guet du sang
    .target Stephanos
    .zoneskip Bloodmyst Isle
step
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Stephanos|r
    .turnin -9606 >> Rendez Retourner voir Topher Loaal
    .target Caregiver Topher Loaal
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Boros|r
    .target Vindicator Boros
    .turnin 9699 >> Rendez Truth or Fiction
    .accept 9700 >> Acceptez I Shoot Magic Into the Darkness
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Boros|r
    .target Vindicator Boros
    .accept 9641 >> Acceptez la quête Les éclats de cristal irradié
	.turnin 9641 >> Rendez la quête Les éclats de cristal irradié
	.itemcount 23984,10 -- Irradiated Crystal Shard (10)
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Boros|r
    +Rappelez-vous de rendre vos [Éclat de cristal irradié] pour le consommable [Cristal de clairvoyance] (Augmente l'Intelligence de 5. Dure 30 mins.) << !Warrior !Paladin !Shaman !Rogue
    +N'oubliez pas de rendre vos [Éclat de cristal irradié] pour le consommable [Cristal de férocité] (Augmente la puissance d'attaque de 10. Dure 30 mins.) << Warrior/Paladin/Shaman/Rogue
    .target Vindicator Boros
    .itemcount 23984,>9
step
    #completewith CrystalSample
    .isOnQuest 9569,9585
    .goto Bloodmyst Isle,41.069,30.660
    .subzone 3593 >> Voyagez vers Axxarien
    >>Tuez les |cRXP_ENEMY_Etrangleuse mutée|r. Dépouillez-les pour leur |cRXP_LOOT_Liane étrangleuse épineuse|r
    >>Tuez les |cRXP_ENEMY_Ancien ours brun|r. Dépouillez-les pour leur |cRXP_LOOT_Flanchet d'ancien ours brun|r
    >>Tuez tous ceux que vous croisez sur la route pour Axxarien
    .complete 9643,1 --Collect Thorny Constrictor Vine (x6)
    .mob +Mutated Constrictor
    .disablecheckbox
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
    .disablecheckbox
step
    #completewith CrystalSample
    >>Ramassez les |cRXP_LOOT_Cristaux corrompu|r sur le sol
    .complete 9569,4 --Collect Corrupted Crystal (x5)
step
    #completewith CrystalSample
    >>Tuez |cRXP_ENEMY_Zevrax|r,les |cRXP_ENEMY_Traqueur des ombres axxarien|r et les |cRXP_ENEMY_Implorateur de l'enfer axxarien|r
    .complete 9569,1 --Kill Zevrax (x1)
    .goto Bloodmyst Isle,41.907,29.533
    .mob +Zevrax
    .complete 9569,2 --Kill Axxarien Shadowstalker (x5)
    .mob +Axxarien Shadowstalker
    .complete 9569,3 --Kill Axxarien Hellcaller (x5)
    .mob +Axxarien Hellcaller
step
    #label CrystalSample
    .goto Bloodmyst Isle,41.069,30.660
	.use 23877 >>Utilisez la [Pioche à Cristaux] sur le |cRXP_PICK_Axxarien Crystal|r
    .complete 9585,1 --Collect Axxarien Crystal Sample (x1)
step
    #completewith ShadowstalkerHellcaller
    >>Ramassez les |cRXP_LOOT_Cristaux corrompu|r sur le sol
    .complete 9569,4 --Collect Corrupted Crystal (x5)
step
    >>Tuez |cRXP_ENEMY_Zevrax|r,les |cRXP_ENEMY_Traqueur des ombres axxarien|r et les |cRXP_ENEMY_Implorateur de l'enfer axxarien|r
    .complete 9569,1 --Kill Zevrax (x1)
    .goto Bloodmyst Isle,41.907,29.533
    .mob +Zevrax
    .complete 9569,2 --Kill Axxarien Shadowstalker (x5)
    .mob +Axxarien Shadowstalker
    .disablecheckbox
    .complete 9569,3 --Kill Axxarien Hellcaller (x5)
    .mob +Axxarien Hellcaller
    .disablecheckbox
step
    #label ShadowstalkerHellcaller
    #loop
    .goto Bloodmyst Isle,41.76,32.82,0
    .goto Bloodmyst Isle,39.75,35.55,0
    .goto Bloodmyst Isle,37.73,37.32,0
    .goto Bloodmyst Isle,34.75,36.97,0
    .goto Bloodmyst Isle,41.76,32.82,50,0
    .goto Bloodmyst Isle,39.75,35.55,50,0
    .goto Bloodmyst Isle,37.73,37.32,50,0
    .goto Bloodmyst Isle,34.75,36.97,50,0
    >>Tuez les |cRXP_ENEMY_Traqueur des ombres axxarien|r et les |cRXP_ENEMY_Implorateur de l'enfer axxarien|r
    .complete 9569,2 --Kill Axxarien Shadowstalker (x5)
    .mob +Axxarien Shadowstalker
    .complete 9569,3 --Kill Axxarien Hellcaller (x5)
    .mob +Axxarien Hellcaller
step
    #loop
    .goto Bloodmyst Isle,41.76,32.82,0
    .goto Bloodmyst Isle,39.75,35.55,0
    .goto Bloodmyst Isle,37.73,37.32,0
    .goto Bloodmyst Isle,34.75,36.97,0
    .goto Bloodmyst Isle,41.76,32.82,50,0
    .goto Bloodmyst Isle,39.75,35.55,50,0
    .goto Bloodmyst Isle,37.73,37.32,50,0
    .goto Bloodmyst Isle,34.75,36.97,50,0
    >>Ramassez les |cRXP_LOOT_Cristaux corrompu|r sur le sol
    .complete 9569,4 --Collect Corrupted Crystal (x5)
step
    #completewith VoidAnomaly
    >>Tuez les |cRXP_ENEMY_Etrangleuse mutée|r. Dépouillez-les pour leur |cRXP_LOOT_Liane étrangleuse épineuse|r
    >>Tuez les |cRXP_ENEMY_Ancien ours brun|r. Dépouillez-les pour leur |cRXP_LOOT_Flanchet d'ancien ours brun|r
    .complete 9643,1 --Collect Thorny Constrictor Vine (x6)
    .mob +Mutated Constrictor
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
step
    .goto Bloodmyst Isle,37.45,30.53
    >>Tuez |cRXP_ENEMY_Griffe-de-mort|r. Dépouillez-le pour sa |cRXP_LOOT_Patte de Griffe-de-mort|r
    .complete 9646,1 --Collect Deathclaw's Paw (x1)
    .mob Deathclaw
step
    .goto Bloodmyst Isle,42.147,21.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Clopper Wizbang|r
    .turnin 10063 >> Rendez Explorers' League, Is That Something for Gnomes?
    .accept 9548 >> Acceptez Pilfered Equipment
    .accept 9549 >> Acceptez Artifacts of the Blacksilt
    .target Clopper Wizbang
step
    .goto Bloodmyst Isle,42.147,21.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Clopper Wizbang|r
    .vendor >> |cRXP_BUY_Achetez un|r [Tube en bronze]
    >>Cet objet est en stock limité. Passez cette étape si il n'en a plus de disponible
    .bronzetube
    .target Clopper Wizbang
    .subzoneskip 3906,1
step
    #completewith next
	>>Tuez les |cRXP_ENEMY_Oracle Vase Noire|r. Dépouillez-les pour leur |cRXP_LOOT_Idole murloc grossière|r
    >>Tuez les |cRXP_ENEMY_Guerrier Vase noire|r et les |cRXP_ENEMY_Guerrier du rivage vase noire|r. Dépouillez-les pour leur |cRXP_LOOT_Couteau murloc grossier|r
    .complete 9549,1 --Collect Crude Murloc Idol (x3)
    .mob +Blacksilt Seer
    .complete 9549,2 --Collect Crude Murloc Knife (x6)
    .mob +Blacksilt Warrior
    .mob +Blacksilt Shorestriker
step
    #loop
    .goto Bloodmyst Isle,40.4,20.4,0
	.goto Bloodmyst Isle,38.5,22.5,0
	.goto Bloodmyst Isle,36.0,25.8,0
    .goto Bloodmyst Isle,40.4,20.4,60,0
	.goto Bloodmyst Isle,38.5,22.5,30,0
	.goto Bloodmyst Isle,36.0,25.8,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
	.goto Bloodmyst Isle,43.8,22.4,30,0
	.goto Bloodmyst Isle,46.4,20.5,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
    >>Ramassez l' |cRXP_LOOT_Equipement de Clopper|r par terre
    >>Il peut apparaître dans n'importe lequel des camps murlocs
    .complete 9548,1 --Collect Clopper's Equipment (x1)
step
    #loop
    .goto Bloodmyst Isle,40.4,20.4,0
	.goto Bloodmyst Isle,38.5,22.5,0
	.goto Bloodmyst Isle,36.0,25.8,0
    .goto Bloodmyst Isle,40.4,20.4,60,0
	.goto Bloodmyst Isle,38.5,22.5,30,0
	.goto Bloodmyst Isle,36.0,25.8,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
	.goto Bloodmyst Isle,43.8,22.4,30,0
	.goto Bloodmyst Isle,46.4,20.5,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
	>>Tuez les |cRXP_ENEMY_Oracle Vase Noire|r. Dépouillez-les pour leur |cRXP_LOOT_Idole murloc grossière|r
    >>Tuez les |cRXP_ENEMY_Guerrier Vase noire|r et les |cRXP_ENEMY_Guerrier du rivage vase noire|r. Dépouillez-les pour leur |cRXP_LOOT_Couteau murloc grossier|r
    .complete 9549,1 --Collect Crude Murloc Idol (x3)
    .mob +Blacksilt Seer
    .complete 9549,2 --Collect Crude Murloc Knife (x6)
    .mob +Blacksilt Warrior
    .mob +Blacksilt Shorestriker
step
    .goto Bloodmyst Isle,42.147,21.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Clopper Wizbang|r
    .turnin 9548 >> Rendez Pilfered Equipment
    .turnin 9549 >> Rendez Artifacts of the Blacksilt
    .target Clopper Wizbang
step
    .use 23837 >>Utilisez la [Carte au trésor abîmée] pour commencer la quête
    .accept 9550 >> Acceptez A Map to Where?
step
    #label VoidAnomaly
    .goto Bloodmyst Isle,52.741,21.161
	>>Tuez les |cRXP_ENEMY_Anomalie du Vide|r et explorer l'emplacement du Portail du soleil
    .complete 9700,2 --Kill Void Anomaly (x5)
    .mob +Void Anomaly
    .complete 9700,1 --Sun Portal Site Confirmed (1)
step
    #loop
	.goto Bloodmyst Isle,44.9,26.4,0
	.goto Bloodmyst Isle,45.1,37.4,0
	.goto Bloodmyst Isle,34.0,44.3,0
	.goto Bloodmyst Isle,42.5,49.3,0
    .goto Bloodmyst Isle,47.6,24.9,70,0
	.goto Bloodmyst Isle,44.9,26.4,70,0
	.goto Bloodmyst Isle,48.3,33.4,70,0
	.goto Bloodmyst Isle,45.1,37.4,70,0
	.goto Bloodmyst Isle,40.8,41.9,70,0
	.goto Bloodmyst Isle,34.0,44.3,70,0
	.goto Bloodmyst Isle,39.0,48.1,70,0
	.goto Bloodmyst Isle,42.5,49.3,70,0
    >>Tuez les |cRXP_ENEMY_Etrangleuse mutée|r. Dépouillez-les pour leur |cRXP_LOOT_Liane étrangleuse épineuse|r
    >>Tuez les |cRXP_ENEMY_Ancien ours brun|r. Dépouillez-les pour leur |cRXP_LOOT_Flanchet d'ancien ours brun|r
    >>|cRXP_WARN_Prioriser les |cRXP_ENEMY_Etrangleuse mutée|r , vous aurez du temps plus tard pour terminer les|r |cRXP_ENEMY_Ancien ours brun|r
    .complete 9643,1 --Collect Thorny Constrictor Vine (x6)
    .mob +Mutated Constrictor
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
    .disablecheckbox
step
    #loop
    .goto Bloodmyst Isle,54.0,30.9,0
    .goto Bloodmyst Isle,53.9,35.4,0
    .goto Bloodmyst Isle,57.0,34.3,0
    .goto Bloodmyst Isle,56.1,40.2,0
    .goto Bloodmyst Isle,54.0,30.9,25,0
    .goto Bloodmyst Isle,53.9,35.4,25,0
    .goto Bloodmyst Isle,57.0,34.3,25,0
    .goto Bloodmyst Isle,56.1,40.2,25,0
	>>Ramassez les |cRXP_LOOT_Os de dragon|r sur le sol
    >>Ils peuvent être difficile à voir et se trouvent le plus souvent autour des petits camps
    .complete 9687,1 --Collect Dragon Bone (x8)
step
    .goto Bloodmyst Isle,61.156,41.893
    >>Cliquez sur le |cRXP_PICK_Livre ancien endommagé|r sur le sol
    .turnin 9550 >> Rendez A Map to Where?
    .accept 9557 >> Acceptez Deciphering the Book
step
	.goto Bloodmyst Isle,54.661,53.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anchorite Paetheus|r
    .turnin 9557 >> Rendez Deciphering the Book
    .target Anchorite Paetheus
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .turnin 9585 >> Turn in Les Final Sample
    .accept 10064 >> Accept Parlez à l' Hand
    .turnin 9646 >> Rendez WANTED: Deathclaw
    .target Harbinger Mikolaas
step
	.goto Bloodmyst Isle,54.661,53.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anchorite Paetheus|r
    .accept 9561 >> Acceptez Nolkai's Words
    .accept 9632 >> Acceptez Newfound Allies
    .target Anchorite Paetheus
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Boros|r
    .target Vindicator Boros
    .turnin 9700 >> Rendez I Shoot Magic Into the Darkness
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Boros|r
    +Rappelez-vous de rendre vos [Éclat de cristal irradié] pour le consommable [Cristal de clairvoyance] (Augmente l'Intelligence de 5. Dure 30 mins.) << !Warrior !Paladin !Shaman !Rogue
    +N'oubliez pas de rendre vos [Éclat de cristal irradié] pour le consommable [Cristal de férocité] (Augmente la puissance d'attaque de 10. Dure 30 mins.) << Warrior/Paladin/Shaman/Rogue
    .target Vindicator Boros
    .itemcount 23984,>9
step
    .goto Bloodmyst Isle,55.631,55.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vindicator Kuros|r
    .accept 9703 >> Accept Les Cryo-Core
    .target Vindicator Kuros
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tracker Lyceon|r
    .turnin 9580 >> Turn in Les Bear Necessities
    .turnin 9643 >> Rendez Constrictor Vines
    .accept 9647 >> Acceptez Culling the Flutterers
    .target Tracker Lyceon
step
    .goto Bloodmyst Isle,55.862,56.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tracker Lyceon|r
    .turnin 9643 >> Rendez Constrictor Vines
    .accept 9647 >> Acceptez Culling the Flutterers
    .target Tracker Lyceon
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vindicator Aalesia|r
    .turnin 9569 >> Rendez Containing the Threat
    .target Vindicator Aalesia
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morae|r
    .accept 9578 >> Acceptez Searching for Galaen
    .target Morae
step
    .goto Bloodmyst Isle,53.245,57.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Achelus|r
    .accept 9669 >> Accept Les Minage Expedition
    .target Achelus
step
	.isOnQuest 9580
	#completewith GCorpse
	>>Tuez les |cRXP_ENEMY_Virevolteur bleu royal|r
    >>Tuez les |cRXP_ENEMY_Ancien ours brun|r. Dépouillez-les pour leur |cRXP_LOOT_Flanchet d'ancien ours brun|r
    >>Continuez de les chercher en vous dirigeant vers Le Cryocœur
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob +Royal Blue Flutterer
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
step
	.isQuestTurnedIn 9580
	#completewith GCorpse
	>>Tuez les |cRXP_ENEMY_Virevolteur bleu royal|r
    >>Continuez de les chercher en vous dirigeant vers Le Cryocœur
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #completewith GCorpse
    .subzone 3588 >> Voyagez vers Le Cryocœur
step
    #label GCorpse
    .goto Bloodmyst Isle,37.502,61.239
    >>Cliquez sur le |cRXP_FRIENDLY_Cadavre de Galaen|r
    >>|cRXP_WARN_Évitez de tuer beaucoup de |cRXP_ENEMY_Récupérateur Epervier du soleil|r si possible en vous rendant au|r |cRXP_FRIENDLY_Cadavre de Galaen|r
    .turnin 9578 >> Rendez Searching for Galaen
    .accept 9579 >> Acceptez L'évasion de Galen
    .accept 9706 >> Accept Galaen's Journal -Les Fate of Vindicator Saruan
    .target Galaen's Corpse
step
    .goto Bloodmyst Isle,37.50,61.23,0
    .goto Bloodmyst Isle,39.69,62.77,60,0
    .goto Bloodmyst Isle,38.59,57.40,60,0
    .goto Bloodmyst Isle,35.61,61.49,60,0
    >>Tuez les |cRXP_ENEMY_Récupérateur Epervier du soleil|r. Dépouillez-les pour leur |cRXP_LOOT_Amulette de Galaen|r et leur |cRXP_LOOT_Fournitures médicales|r
    >>Vous pouvez aussi ramasser les |cRXP_LOOT_Fournitures médicales|r sur le sol
	>>Utilisez les piliers et les fondations pour vous cacher (LoS) de leur [Boule de feu]
    .complete 9579,1 --Collect Galaen's Amulet (x1)
    .complete 9703,1 --Collect Medical Supplies (x12)
    .mob Sunhawk Reclaimer
step
	.xp 17+12800 >> Gagnez en expérience jusqu'à ce que vous ayez 12800xp du niveau 17 (12800+/16400)
step
	.isOnQuest 9580
	#completewith GFate
	>>Tuez les |cRXP_ENEMY_Virevolteur bleu royal|r
    >>Tuez les |cRXP_ENEMY_Ancien ours brun|r. Dépouillez-les pour leur |cRXP_LOOT_Flanchet d'ancien ours brun|r
    >>Continuez à les chercher en vous dirigeant vers le Guet du Sang
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob +Royal Blue Flutterer
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
step
	.isQuestTurnedIn 9580
	#completewith GFate
	>>Tuez les |cRXP_ENEMY_Virevolteur bleu royal|r
    >>Continuez à les chercher en vous dirigeant vers le Guet du Sang
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #completewith GFate
    .subzone 3584 >> Voyagez vers le Guet du Sang
step
    #label GFate
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morae|r
    .turnin 9579 >> Rendez Galaen's Fate
    .target Morae
step
    .goto Bloodmyst Isle,55.631,55.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vindicator Kuros|r
    .turnin 9703 >> Turn in Les Cryo-Core
    .turnin 9706 >> Turn in Galaen's Journal -Les Fate of Vindicator Saruan
    .accept 9711 >> Acceptez Matis the Cruel
    .target Vindicator Kuros
step
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Aesom|r
    .accept 9748 >> Acceptez Don't Drink the Water
    .accept 9753 >> Acceptez What We Know...
    .target Vindicator Aesom
step << Paladin
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Aesom|r
    .trainer >> Apprenez vos sorts de classe
    .target Vindicator Aesom
    .subzoneskip 3584,1
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tracker Lyceon|r
    .turnin 9580 >> Turn in Les Bear Necessities
    .turnin 9647 >> Rendez Culling the Flutterers
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tracker Lyceon|r
    .turnin 9580 >> Turn in Les Bear Necessities
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tracker Lyceon|r
    .turnin 9647 >> Rendez Culling the Flutterers
    .target Tracker Lyceon
step
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Exarch Admetius|r
    .turnin 9753 >> Rendez What We Know...
    .accept 9756 >> Acceptez la quête Ce que nous ne savons pas…
    .target Exarch Admetius
step
    .goto Bloodmyst Isle,54.312,54.215
    >>Parlez à l' |cRXP_ENEMY_Agent Epervier du soleil capturé|r à l'intérieur de sa |cRXP_PICK_Prison|r
    .complete 9756,1 -- Sunhawk Information Recovered 1/1
    .skipgossip
    .target Captured Sunhawk Agent
step
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Exarch Admetius|r
    .turnin 9756 >> Rendez What We Don't Know...
    .accept 9760 >> Acceptez Vindicator's Rest
    .target Exarch Admetius
step
    #optional
	.isOnQuest 9647
	#completewith MatistheCruel
	>>Tuez les |cRXP_ENEMY_Virevolteur bleu royal|r
    >>Continuez à les chercher pendant que vous complétez d'autres objectifs
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #optional
	.isOnQuest 9580
	#completewith MatistheCruel
    >>Tuez les |cRXP_ENEMY_Ancien ours brun|r. Dépouillez-les pour leur |cRXP_LOOT_Flanchet d'ancien ours brun|r
    >>Continuez à les chercher pendant que vous complétez d'autres objectifs
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob Elder Brown Bear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Scout Jorli|r et à |cRXP_FRIENDLY_Scout Loryi|r
    .turnin 10064 >> Turn in Parlez à l' Hand
    .accept 10065 >> Acceptez Cutting a Path
    .target +Scout Jorli
    .goto Bloodmyst Isle,30.255,45.916
    .accept 9741 >> Acceptez Critters of the Void
    .target +Scout Loryi
    .goto Bloodmyst Isle,30.239,45.866
step
    .goto Bloodmyst Isle,30.750,46.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vindicator Corin|r
    .turnin 9760 >> Rendez Vindicator's Rest
    .accept 10066 >> Acceptez Oh, the Tangled Webs They Weave
    .accept 10067 >> Acceptez Fouled Water Spirits
    .target Vindicator Corin
step
    #label MatistheCruel
    #loop
    .goto Bloodmyst Isle,43.9,43.7,0
    .goto Bloodmyst Isle,30.1,51.7,0
    .goto Bloodmyst Isle,22.4,54.3,0
    .goto Bloodmyst Isle,27.45,51.36,80,0
    .goto Bloodmyst Isle,22.67,54.20,70,0
    .goto Bloodmyst Isle,27.45,51.36,80,0
    .goto Bloodmyst Isle,32.55,48.08,80,0
    .goto Bloodmyst Isle,42.27,44.12,80,0
	.line Bloodmyst Isle,43.1,43.7,36.5,47.2,33.5,47.1,29.9,51.8,27.7,51.8,25.1,54.1,22.0,54.3
    .use 24278 >>Utilisez le [Lance-fusée] sur |cRXP_ENEMY_Matis le Cruel|r
    >>|cRXP_WARN_Cela invoquera un |cRXP_FRIENDLY_Pisteur of the Hand|r qui le capturera dès que sa santé atteint 50%. Évitez d'être agressé car |cRXP_ENEMY_Matis le Cruel|r frappe très fort|r
    >>|cRXP_ENEMY_Matis le Cruel|r patrouille sur une grosse partie de route. Le chemin de sa patrouille est indiqué sur votre carte
    .complete 9711,1 --Capture Matis the Cruel
	.unitscan Matis the Cruel
step
    #loop
    .goto Bloodmyst Isle,20.12,62.35,0
    .goto Bloodmyst Isle,19.58,64.62,40,0
    .goto Bloodmyst Isle,18.21,62.93,40,0
    .goto Bloodmyst Isle,20.12,62.35,40,0
    >>Tuez des |cRXP_ENEMY_Bestioles du Vide|r
    >>|cRXP_WARN_Vous devez tuer les |cRXP_ENEMY_Anomalie du Vide|r pour que les |cRXP_ENEMY_Bestiole du Vide|r réapparaissent|r
    .complete 9741,1 --Kill Void Critter (x12)
    .mob Void Critter
    .mob Void Anomaly
step
    #optional
	.isOnQuest 9647
	#completewith MutatedTanglers
	>>Tuez les |cRXP_ENEMY_Virevolteur bleu royal|r
    >>Continuez à les chercher pendant que vous complétez d'autres objectifs
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #optional
	.isOnQuest 9580
	#completewith MutatedTanglers
    >>Tuez les |cRXP_ENEMY_Ancien ours brun|r. Dépouillez-les pour leur |cRXP_LOOT_Flanchet d'ancien ours brun|r
    >>Continuez à les chercher pendant que vous complétez d'autres objectifs
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob Elder Brown Bear
step
    #completewith next
	>>Tuez les |cRXP_ENEMY_Noueur muté|r
    .complete 10066,1 --Kill Mutated Tangler (x8)
    .mob +Mutated Tangler
step
    #loop
    .goto Bloodmyst Isle,28.8,59.6,0
    .goto Bloodmyst Isle,31.8,53.8,0
    .goto Bloodmyst Isle,26.0,47.8,0
    .goto Bloodmyst Isle,28.8,59.6,70,0
    .goto Bloodmyst Isle,31.8,53.8,70,0
    .goto Bloodmyst Isle,26.0,47.8,70,0
    >>Tuez les |cRXP_ENEMY_Ravageur enragé|r
    .complete 10065,1 --Kill Enraged Ravager (x10)
    .mob +Enraged Ravager
step
    #label MutatedTanglers
    #loop
    .goto Bloodmyst Isle,28.8,59.6,0
    .goto Bloodmyst Isle,31.8,53.8,0
    .goto Bloodmyst Isle,26.0,47.8,0
    .goto Bloodmyst Isle,28.8,59.6,70,0
    .goto Bloodmyst Isle,31.8,53.8,70,0
    .goto Bloodmyst Isle,26.0,47.8,70,0
	>>Tuez les |cRXP_ENEMY_Noueur muté|r
    .complete 10066,1 --Kill Mutated Tangler (x8)
    .mob +Mutated Tangler
step
    #optional
	.isOnQuest 9647
	#completewith next
	>>Tuez les |cRXP_ENEMY_Virevolteur bleu royal|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #optional
	.isOnQuest 9580
    #loop
    .goto Bloodmyst Isle,35.6,53.8,0
    .goto Bloodmyst Isle,39.6,51.2,0
    .goto Bloodmyst Isle,43.2,42.6,0
    .goto Bloodmyst Isle,34.8,42.6,0
    .goto Bloodmyst Isle,35.6,53.8,70,0
    .goto Bloodmyst Isle,39.6,51.2,70,0
    .goto Bloodmyst Isle,43.2,42.6,70,0
    .goto Bloodmyst Isle,34.8,42.6,70,0
    >>Tuez les |cRXP_ENEMY_Ancien ours brun|r. Dépouillez-les pour leur |cRXP_LOOT_Flanchet d'ancien ours brun|r
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob Elder Brown Bear
step
    #optional
	.isOnQuest 9647
    #loop
    .goto Bloodmyst Isle,35.6,53.8,0
    .goto Bloodmyst Isle,39.6,51.2,0
    .goto Bloodmyst Isle,43.2,42.6,0
    .goto Bloodmyst Isle,34.8,42.6,0
    .goto Bloodmyst Isle,35.6,53.8,70,0
    .goto Bloodmyst Isle,39.6,51.2,70,0
    .goto Bloodmyst Isle,43.2,42.6,70,0
    .goto Bloodmyst Isle,34.8,42.6,70,0
	>>Tuez les |cRXP_ENEMY_Virevolteur bleu royal|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    .goto Bloodmyst Isle,30.750,46.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vindicator Corin|r
    .turnin 10066 >> Rendez Oh, the Tangled Webs They Weave
    .target Vindicator Corin
step
    .goto Bloodmyst Isle,30.255,45.916
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Eclaireur Jorli|r
    .turnin 10065 >> Rendez Cutting a Path
    .target +Scout Loryi
step
    #loop
    .goto Bloodmyst Isle,30.93,39.05,0
	.goto Bloodmyst Isle,27.58,37.09,0
    .goto Bloodmyst Isle,30.18,34.38,0
	.goto Bloodmyst Isle,30.93,39.05,70,0
	.goto Bloodmyst Isle,27.58,37.09,70,0
    .goto Bloodmyst Isle,30.18,34.38,70,0
	>>Tuez les |cRXP_ENEMY_Élémentaires d'eau souillée|r
    .complete 10067,1 --Kill Fouled Water Spirit (x6)
    .mob Fouled Water Spirit
step
    .goto Bloodmyst Isle,30.750,46.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vindicator Corin|r
    .turnin 10067 >> Rendez Fouled Water Spirits
    .target Vindicator Corin
step
    .goto Bloodmyst Isle,24.862,34.375
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Chercheur Cornelius|r
    .accept 9670 >> Acceptez They're Alive! Maybe...
    .target Researcher Cornelius
step
	#completewith next
	>>Tuez les |cRXP_ENEMY_Créature entoilée|r
    >>|cRXP_WARN_Attaquez les |cRXP_ENEMY_Créatures enchevêtrées|r à distance si possible, au cas où une créature hostile sortirait, elle ne vous attaquera pas|r
    .complete 9670,1 --Expedition Researcher Freed (5)
    .mob Webbed Creature
step
    .goto Bloodmyst Isle,21.4,36.0,60,0
    .goto Bloodmyst Isle,17.2,28.4,40,0
    .goto Bloodmyst Isle,18.2,38.0
	>>Tuez les |cRXP_ENEMY_Buveuse de sang de Brume|r, les |cRXP_ENEMY_Tisseuse de Brume|r et |cRXP_ENEMY_Zarakh|r au sommet de la Passe d'Ambretoile
    .complete 9669,1 --Kill Myst Leecher (x8)
    .mob +Myst Leecher
    .complete 9669,2 --Kill Myst Spinner (x8)
    .mob +Myst Spinner
    .complete 9669,3 --Kill Zarakh (x1)
    .mob +Zarakh
step
    .goto Bloodmyst Isle,21.4,36.0,60,0
    .goto Bloodmyst Isle,17.2,28.4,40,0
    .goto Bloodmyst Isle,18.2,38.0
	>>Tuez les |cRXP_ENEMY_Créature entoilée|r
    >>|cRXP_WARN_Attaquez les |cRXP_ENEMY_Créatures enchevêtrées|r à distance si possible, au cas où une créature hostile sortirait, elle ne vous attaquera pas|r
    .complete 9670,1 --Expedition Researcher Freed (5)
    .mob Webbed Creature
step
    .goto Bloodmyst Isle,24.862,34.375
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Chercheur Cornelius|r
    .turnin 9670 >> Rendez They're Alive! Maybe...
    .target Researcher Cornelius
step
    .goto Bloodmyst Isle,34.373,33.742
	.use 24318 >>Utilisez le [Flacon d'échantillon d'eau] à la source de la cascade
    .complete 9748,1 --Collect Bloodmyst Water Sample (x1)
step
    .isOnQuest 9748,9669,9741,9711
    .hs >> Retournez au Guet du Sang
    >>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r << !Warrior !Rogue
	>>|cRXP_BUY_Achetez de la nourriture si besoin|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step
    .goto Bloodmyst Isle,53.245,57.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Achelus|r
    .turnin 9669 >> Turn in Les Minage Expedition
    .target Achelus
step
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Aesom|r
    .turnin 9741 >> Rendez Critters of the Void
    .turnin 9748 >> Rendez Don't Drink the Water
    .accept 9746 >> Abandonnez Les limites de l'épuisement physique << Hunter/Shaman/Mage
    .target Vindicator Aesom
step
    .isQuestComplete 9711
    .goto Bloodmyst Isle,55.631,55.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vindicator Kuros|r
    .turnin 9711 >> Rendez Mai'Zoth Cruel
    .target Vindicator Kuros
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tracker Lyceon|r
    .turnin 9580 >> Turn in Les Bear Necessities
    .turnin 9647 >> Rendez Culling the Flutterers
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tracker Lyceon|r
    .turnin 9580 >> Turn in Les Bear Necessities
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tracker Lyceon|r
    .turnin 9647 >> Rendez Culling the Flutterers
    .target Tracker Lyceon
step << Hunter/Mage
    #loop
    .goto Bloodmyst Isle,26.2,52.6,0
    .goto Bloodmyst Isle,23.8,56.0,0
    .goto Bloodmyst Isle,23.8,60.8,0
    .goto Bloodmyst Isle,26.2,52.6,70,0
    .goto Bloodmyst Isle,23.8,56.0,70,0
    .goto Bloodmyst Isle,23.8,60.8,70,0
    .goto Bloodmyst Isle,22.0,62.6,70,0
    .goto Bloodmyst Isle,23.5,49.4,70,0
    >>Tuez les |cRXP_ENEMY_Sunhawk Pyromancers|r et les |cRXP_ENEMY_Sunhawk Defenders|r
    .complete 9746,1 --Kill Sunhawk Pyromancer (x10)
    .mob +Sunhawk Pyromancer
    .complete 9746,2 --Kill Sunhawk Defender (x10)
    .mob +Sunhawk Defender
step << Hunter/Mage
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Aesom|r
    .turnin 9746 >> Abandonnez Les limites de l'épuisement physique
    .target Vindicator Aesom
step
    #completewith next
    .subzone 3591 >> Voyagez vers les Ruines de Loreth'Aran
step
    .goto Bloodmyst Isle,61.173,49.639
    >>Cliquez sur le |cRXP_PICK_Monticule de poussière|r sur le sol
    .turnin 9561 >> Rendez Nolkai's Words
step
    #completewith next
    .subzone 3598 >> Voyagez vers l'Île Balafre-du-Ver
step
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prince Toreth|r
    >>Le |cRXP_FRIENDLY_Prince Toreth|r se déplace légèrement
    .turnin 9687 >> Rendez Restoring Sanctity
    .accept 9688 >> Acceptez Into the Dream
    .target Prince Toreth
step
	#completewith next
    >>Tuez les |cRXP_ENEMY_Jeune viride|r et les |cRXP_ENEMY_Rejetons viride|r
    .complete 9688,1 --Kill Veridian Whelp (x5)
    .mob +Veridian Whelp
    .complete 9688,2 --Kill Veridian Broodling (x5)
    .mob +Veridian Broodling
step
    #optional
    .isQuestComplete 9683
    .goto Bloodmyst Isle,79.150,22.656
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prince Toreth|r
    .turnin 9683 >> Rendez Ending the Bloodcurse
    .target Captain Edward Hanes
step
    #loop
    .goto Bloodmyst Isle,75.2,29.8,0
    .goto Bloodmyst Isle,69.6,27.6,0
    .goto Bloodmyst Isle,68.6,22.2,0
    .goto Bloodmyst Isle,70.8,16.6,0
    .goto Bloodmyst Isle,76.8,16.6,0
    .goto Bloodmyst Isle,78.0,24.2,70,0
    .goto Bloodmyst Isle,75.2,29.8,70,0
    .goto Bloodmyst Isle,69.6,27.6,70,0
    .goto Bloodmyst Isle,68.6,22.2,70,0
    .goto Bloodmyst Isle,70.8,16.6,70,0
    .goto Bloodmyst Isle,76.8,16.6,70,0
    >>Tuez les |cRXP_ENEMY_Jeune viride|r et les |cRXP_ENEMY_Rejetons viride|r
    .complete 9688,1 --Kill Veridian Whelp (x5)
    .mob +Veridian Whelp
    .complete 9688,2 --Kill Veridian Broodling (x5)
    .mob +Veridian Broodling
step
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prince Toreth|r
    >>Le |cRXP_FRIENDLY_Prince Toreth|r se déplace légèrement
    .turnin 9688 >> Rendez Into the Dream
    .accept 9689 >> Acceptez Razormaw
    .target Prince Toreth
step
    #completewith next
    .goto Bloodmyst Isle,72.650,21.006
    .cast 31268 >>Cliquez sur le |cRXP_PICK_Ever-burning Pyre|r au sommet de la montagne pour invoquer |cRXP_ENEMY_Razormaw|r
    .timer 36,Tranchegueule RP
step
    .goto Bloodmyst Isle,73.129,20.587
    >>Tuez |cRXP_ENEMY_Razormaw|r
    >>|cRXP_ENEMY_Razormaw|r est un Elite de niveau 20. Il prend à peu près 35 secondes à atterrir
    >>Cette quête est TRÈS difficile. Montez un groupe pour le tuer si nécessaire. Passez cette étape si vous n'arrivez pas à monter un groupe ou à le tuer solo
    >>N'oubliez pas de lancer [Don des Naaru] sur vous-même si nécessaire << Draenei
    .complete 9689,1 --Kill Razormaw (x1)
    .mob Razormaw
step
    .isQuestComplete 9689
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prince Toreth|r
    >>Le |cRXP_FRIENDLY_Prince Toreth|r se déplace légèrement
    .turnin 9689 >> Rendez Razormaw
    .target Prince Toreth
step
    #optional
	.abandon 9711 >> Abandonnez Matis le Cruel si vous ne l'avez pas terminé
step
    #optional
	.abandon 9689 >> Abandon Tranchegueule si vous ne l'avez pas terminé
step << Hunter/Shaman/Mage
    .xp 20 >> Montez jusqu'au niveau 20
step
	#completewith FlyExo
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step << Paladin
    #completewith FlyExo
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Aesom|r
    .trainer >> Apprenez vos sorts de classe
    .target Vindicator Aesom
step
    #label FlyExo
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laando|r
    .fly The Exodar>> Volez vers l'Exodar
    .target Laando
    .zoneskip Bloodmyst Isle,1
step << Shaman/Hunter/Priest/Mage/Warrior
    #completewith NewfoundAllies
    .goto The Exodar,73.682,53.701,15 >> Descendez dans l'Exodar
step << Shaman
    .goto The Exodar,32.450,23.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sulaa|r
    .accept 9502 >> Acceptez la quête L'appel de l'eau
    .trainer >> Apprenez vos sorts de classe
    .target Sulaa
step << Shaman
    #completewith next
    .goto The Exodar,27.90,29.43,10 >> Dirigez-vous vers |cRXP_FRIENDLY_Farseer Nobundo|r en haut de la rampe
step << Shaman
    .goto The Exodar,31.27,27.65,15,0
    .goto The Exodar,29.76,33.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Farseer Nobundo|r
    >>|cRXP_FRIENDLY_Farseer Nobundo|r patrouille légèrement
    .turnin 9502 >> Rendez la quête L'appel de l'eau
    .accept 9501 >> Acceptez la quête L'appel de l'eau
    .target Farseer Nobundo
step << Shaman
    #completewith next
    .goto The Exodar,54.09,32.52,30,0
    .goto The Exodar,64.86,35.03,20,0
    .goto The Exodar,73.68,53.70,20 >> Quittez l'Exodar
step << Shaman
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Stephanos|r
    .fly Blood Watch >> Envolez-vous vers Le Guet du sang
    .target Stephanos
    .zoneskip Bloodmyst Isle
step << Shaman
    #completewith next
    .subzone 3596 >> Dirigez-vous vers le récif Caché
step << Shaman
    .goto Bloodmyst Isle,32.302,16.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aqueous|r sous l'eau
    .turnin 9501 >> Rendez la quête L'appel de l'eau
    .accept 9503 >> Acceptez la quête L'appel de l'eau
    .target Aqueous
step << Shaman
    #loop
    .goto Bloodmyst Isle,26.2,52.6,0
    .goto Bloodmyst Isle,23.8,56.0,0
    .goto Bloodmyst Isle,23.8,60.8,0
    .goto Bloodmyst Isle,26.2,52.6,70,0
    .goto Bloodmyst Isle,23.8,56.0,70,0
    .goto Bloodmyst Isle,23.8,60.8,70,0
    .goto Bloodmyst Isle,22.0,62.6,70,0
    .goto Bloodmyst Isle,23.5,49.4,70,0
    >>Tuez les |cRXP_ENEMY_Sunhawk Pyromancers|r et les |cRXP_ENEMY_Sunhawk Defenders|r
    .complete 9746,1 --Kill Sunhawk Pyromancer (x10)
    .mob +Sunhawk Pyromancer
    .complete 9746,2 --Kill Sunhawk Defender (x10)
    .mob +Sunhawk Defender
step << Shaman
    #loop
    .goto Bloodmyst Isle,30.93,39.05,0
	.goto Bloodmyst Isle,27.58,37.09,0
    .goto Bloodmyst Isle,30.18,34.38,0
	.goto Bloodmyst Isle,30.93,39.05,70,0
	.goto Bloodmyst Isle,27.58,37.09,70,0
    .goto Bloodmyst Isle,30.18,34.38,70,0
	>>Tuez les |cRXP_ENEMY_Fouled Water Spirits|r. Dépouillez-les pour leur |cRXP_LOOT_Foul Essences|r
    .complete 9503,1 --Collect Foul Essence (x6)
    .mob Fouled Water Spirit
step << Shaman
    .goto Bloodmyst Isle,32.302,16.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aqueous|r sous l'eau
    .turnin 9503 >> Rendez la quête L'appel de l'eau
    .accept 9504 >> Acceptez la quête L'appel de l'eau
    .target Aqueous
step << Shaman
	#completewith ShamFlyExo
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step << Shaman
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Aesom|r
    .turnin 9746 >> Abandonnez Les limites de l'épuisement physique
    .target Vindicator Aesom
step << Shaman
    #label ShamFlyExo
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laando|r
    .fly The Exodar>> Volez vers l'Exodar
    .target Laando
    .zoneskip Bloodmyst Isle,1
step << Hunter
	.goto The Exodar,47.573,88.340
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vord|r
	.trainer >> Apprenez vos sorts de classe
    .target Vord
step << Hunter
    .goto The Exodar,44.240,86.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ganaar|r
	.trainer >> Apprenez les compétences de votre familier
    .target Ganaar
step << Priest
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oss|r
    >>|cRXP_BUY_Achetez-lui une|r [Baguette ardente] |cRXP_BUY_ou vérifiez si il n'y en a pas une meilleure à l'Hôtel des Ventes|r
    .goto The Exodar,46.386,61.499
    .goto The Exodar,63.363,58.999,0
    .collect 5210,1 --Burning Wand (1)
    .target Oss
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    --not adding .money tag to this step. user could have less silver than vendor wand but cheaper ones may exist on the AH
step << Priest
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oss|r
    >>|cRXP_BUY_Achetez une|r [Baguette ardente] |cRXP_BUY_à Oss|r
    .goto The Exodar,46.386,61.499
    .collect 5210,1 --Burning Wand (1)
    .target Oss
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .money <0.5808
step << Priest
    #optional
    +Équipez la [Baguette ardente]
    .use 5210
    .itemcount 5210,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step << Priest
    .goto The Exodar,39.436,51.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Izmir|r
    .trainer >> Apprenez vos sorts de classe
    .target Izmir
step << Mage
    .goto The Exodar,47.228,62.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Edirah|r
    .trainer >> Apprenez vos sorts de classe
    .target Edirah
step << Mage
	.goto The Exodar,45.986,62.685
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lunaraa|r
    .train 32271 >> Apprenez [Téléportation : Exodar]
    .target Lunaraa
step << Mage
    .goto The Exodar,44.765,63.202
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Musal|r
    >>|cRXP_BUY_Achetez au moins une|r [Rune de téléportation] |cRXP_BUY_à Musal|r
    .collect 17031,1 --Rune of Teleportation (1)
    .target Musal
step << Warrior
    #completewith next
    .goto The Exodar,53.39,85.68,15,0
    .goto The Exodar,50.50,81.28,20 >> Remontez la rampe vers |cRXP_FRIENDLY_Behomat|r à l'étage supérieur
step << Warrior
    .goto The Exodar,55.580,82.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Behomat|r
    .trainer >> Apprenez vos sorts de classe
    .target Behomat
step
    #label NewfoundAllies
	.goto The Exodar,33.8,73.7,15,0 << !Shaman
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Huntress Kella Nightbow|r
    >>|cRXP_FRIENDLY_Chasseresse Kella Arquenuit|r |cRXP_WARN_est située à l'extérieur de l'entrée arrière de L'Exodar|r
    .turnin 9632 >> Rendez Newfound Allies
    .accept 9633 >> Accept Les Way to Auberdine
    .target Huntress Kella Nightbow
step
    .goto Azuremyst Isle,20.405,54.184
    .zone Darkshore >> Prenez le bateau pour Sombrivage

--Continued below is .dungeon DM only
step
.dungeon DM
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shaussiy|r à l'étage inférieur
    .home >> Liez votre Pierre de Foyer à Southshore
    .target Innkeeper Shaussiy
    .bindlocation 442
step
.dungeon DM
    #completewith next
    .goto 1439,32.432,43.744,15 >> Voyagez vers le quai du bateau pour le Port de Menethil
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip Wetlands
step
.dungeon DM
    #optional
    .goto Darkshore,32.29,44.05
    >>Vous allez maintenant commencer à voyager vers Les Mortemines
    .zone Wetlands >> Prenez le bateau pour le Port de Menethil
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Paladin/Warrior
.dungeon DM
    #ah
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brak Durnad|r à l'intérieur
    .vendor 1441 >>|cRXP_BUY_Achetez une|r [Epée du bourreau]|cRXP_BUY_à Brak (si il en a en stock et que vous en avez les moyens)|r
    >>Ou sinon, vous pourrez bientôt vérifier l'Hôtel des Ventes pour une alternative meilleure ou à un meilleur prix
    .collect 4818,1 --Collect Executioner's Sword (1)
    .target Brak Durnad
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step << Paladin/Warrior
.dungeon DM
    #ssf
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brak Durnad|r à l'intérieur
    .vendor 1441 >>|cRXP_BUY_Achetez une|r [Epée du bourreau]|cRXP_BUY_à Brak (si il en a en stock et que vous en avez les moyens)|r
    .collect 4818,1 --Collect Executioner's Sword (1)
    .target Brak Durnad
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .money <1.3559
step << Paladin/Warrior
.dungeon DM
    #optional
    #completewith DeeprunDM
    +Équipez l'[Épée du bourreau]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step
.dungeon DM
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Prenez le chemin de vol du Port de Menethil
    .target Shellei Brondir
step
.dungeon DM
    #optional
    #completewith next
    .goto Wetlands,5.485,64.156,40 >> Sautez dans l'eau au bout des quais et nagez jusqu'au point de repère.
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
step
.dungeon DM
    .goto Wetlands,2.433,78.689,-1
    .goto Ironforge,17.089,83.373,-1
    .zone Ironforge >>Utilisez le service d'assistance aux personnages coincés pour allez à Forgefer. Vous devez vous déconnectez à l'endroit prévu, puis naviguez le menu d'assistance sur un autre personnage (Sinon, vous pouvez c/c le lien du déblocage ci-dessous dans votre navigateur), puis faites défiler jusqu'au service d'assistance. Cliquez sur votre personnage et bougez. Si vous n'arrivez pas à vous débloquer, passez cette étape et nagez le long des montagnes jusqu'aux Marches de l'Ouest
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >> Cliquez ici pour l'exemple vidéo
    .link https://us.battle.net/support/en/help/product/wow/197/834/solution >> Cliquez ici pour le service d'assistance aux personnages coincés pour les serveurs US
    .link https://eu.battle.net/support/en/article/32275 >> Cliquez ici pour le service d'assistance aux personnages coincés pour les serveurs EU
    .subzoneskip 809 --IF Gates
    .subzoneskip 2257 --Deeprun Tram
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
step << Mage
.dungeon DM
    .goto Ironforge,25.50,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Milstaff Stormeye|r
    .train 3562 >> Apprenez [Téléportation : Ironforge]
    .target Milstaff Stormeye
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip Wetlands
step
.dungeon DM
    #optional
    .goto 1415/0,258.6045,-4078.9674,60,0 -- Wetlands to Westfall swim
    .goto 1415/0,807.0190,-4254.0282,60,0
    .goto 1415/0,1017.5144,-4474.1449,20,0
    .goto 1415/0,1088.2662,-4457.2490,20,0
    .goto 1415/0,1327.9775,-4321.1427,20,0
    .goto 1415/0,1582.4728,-4300.0228,20,0
    .goto 1415/0,1984.1037,-4519.6701,20,0
    .goto 1415/0,1998.1836,-4645.6858,30,0
    .goto 1415/0,2094.2794,-4885.2798,30,0
    .goto 1415/0,1863.7200,-5311.1986,20,0
    .goto 1415/0,1742.2803,-5324.3399,20,0
    .goto 1415/0,1437.8012,-5938.9302,40,0
    .goto 1415/0,1220.2658,-6480.5393,30,0
    .goto 1415/0,1447.6572,-6898.2448,30,0
    .goto 1415/0,1459.2731,-7068.1430,20,0
    .goto 1415/0,1728.2004,-7578.0722,30,0
    .goto 1415/0,1544.8089,-7992.7270,20,0
    .goto 1415/0,1445.1932,-8083.5428,30,0
    .goto 1415/0,1440.2652,-8254.8490,30,0
    .goto 1415/0,1348.0415,-8417.7072,30,0
    .goto StormwindClassic,4.493,29.157,20,0
    .goto StormwindClassic,10.336,40.166,10,0
    .goto StormwindClassic,7,45.471,10,0
    .goto StormwindClassic,5.560,50.125,10,0
    .goto StormwindClassic,13.669,74.499,20,0
    .goto Westfall,42.024,70.980
    .zone Westfall >> Si le site d'internet pour débloquer votre personnage n'est pas disponible, nagez jusqu'aux Marches de l'Ouest
    .zoneskip Ironforge
    .subzoneskip 809--IF Gates
    .subzoneskip 2257--Deeprun Tram
    .zoneskip Stormwind City
step
.dungeon DM
    #optional
    #completewith next
    .goto Westfall,54.28,9.26,100,0
    .goto Westfall,56.55,52.64,100 >> Remontez le rivage et prenez la route pour la Colline des Sentinelles
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
step
.dungeon DM
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Prenez le chemin de vol de la Colline des Sentinelles
    .target Thor
    .zoneskip Ironforge --Skips if you didn't swim from Wetlands
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
step
.dungeon DM
    #optional
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Prenez le chemin de vol de Forgefer
    .target Gryth Thurden
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Westfall
    .zoneskip Stormwind City
step
.dungeon DM
    #optional
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>Entrez dans le Tram des profondeurs
    .zoneskip Wetlands << NightElf/Draenei
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step
.dungeon DM
    #optional
    .goto Elwynn Forest,36.809,72.429,100,0
    .goto StormwindClassic,69.961,86.583
    .zone Stormwind City >> Allez vers Hurlevent
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
.dungeon DM
    #optional << NightElf/Draenei
    #completewith CollectingMemories
    .zone Stormwind City >> Prenez le Tram des profondeurs vers Hurlevent
    .zoneskip Wetlands << NightElf/Draenei
    .zoneskip Elwynn Forest
    .zoneskip Westfall
step
.dungeon DM
    .goto StormwindClassic,55.510,12.504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shoni the Shilent|r
    .accept 2040 >> Acceptez la quête Assaut souterrain
    .target Shoni the Shilent
step
.dungeon DM
    #label CollectingMemories
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wilder Thistlenettle|r
    .accept 167 >> Acceptez la quête Adieu mon frère…
    .accept 168 >> Acceptez la quête À la recherche de cartes du syndicat des mineurs
    .target Wilder Thistlenettle
step
.dungeon DM
    .isQuestAvailable 1275
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Argos Nightwhisper|r
    .accept 3765 >> Acceptez la quête La dépravation au loin
    .target Argos Nightwhisper
step
.dungeon DM
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >> Achetez la compétence pour porter des épées à une main << Mage/Rogue/Warlock
    .train 1180 >> Achetez la compétence pour porter des dagues << Mage/Druid/Priest
    .train 202 >> Achetez la compétence pour porter des épées à deux mains << Warrior/Paladin/Hunter
    .target Woo Ping
step << Mage
.dungeon DM
    .goto StormwindClassic,39.68,79.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Larimaine|r
    .train 3561 >> Apprenez [Téléportation : Hurlevent]
	.xp <20,1
    .target Larimaine Purdue
step
.dungeon DM
    #completewith GryanAll
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fp Stormwind >> Apprenez le chemin de vol de Hurlevent << !Human
    .fly Westfall >> Envolez-vous vers Marche de l'Ouest si vous venez juste de Marche de l'Ouest, sinon courez-y
    .disablecheckbox
    .target Dungar Longdrink
    .zoneskip Westfall
step << !Human
.dungeon DM
    #optional
    #completewith next
    .zone Westfall >> Voyagez vers les Marches de l'Ouest
step << !Human
.dungeon DM
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Prenez le chemin de vol de la Colline des Sentinelles
    .target Thor
step
.dungeon DM
    .goto 1436,56.454,69.982,0
    .goto 1436,56.434,74.339,0
    .goto 1436,59.384,74.184,0
    .goto 1436,60.871,74.362,0
    .goto 1436,60.902,77.640,0
    .goto 1436,63.442,77.339,0
    .goto 1436,65.203,75.286,0
    .goto 1436,63.594,72.862,0
    .goto 1436,63.825,70.125,0
    .goto 1436,42.649,71.376
    >>|cRXP_WARN_Tuez en boucle des |cRXP_ENEMY_Gnolls|r au sud de la Colline des Sentinelles le temps de monter un groupe pour les Mortemines|r
    .subzone 20 >>Quand vous avez monté votre groupe, voyagez vers Ruisselune
step
.dungeon DM
    .goto Westfall,42.55,71.69
    .subzone 1581 >> Entrez dans le Repaire Defias avec votre groupe
step
.dungeon DM
    #completewith EnterDM
    >>Tuez les |cRXP_ENEMY_Defias|r. Dépouillez-les pour leur |cRXP_LOOT_Red Silk Bandanas|r
    >>Vous pouvez aussi finir cette quête à l'intérieur des Mortemines
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
.dungeon DM
    #completewith next
    >>Tuez les |cRXP_ENEMY_Skeletal Miners|r, |cRXP_ENEMY_Undead Dynamiters|r et les |cRXP_ENEMY_Undead Excavators|r. Dépouillez-les pour leur |cRXP_LOOT_Cards|r
    >>Cette quête se finit À L’EXTÉRIEUR du donjon
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
.dungeon DM
    .goto 1415/0,1504.6810,-11259.7472,25,0
    .goto 1415/0,1557.4809,-11297.2937,25,0
    .goto 1415/0,1596.2008,-11318.4137,25,0
    .goto 1415/0,1539.8809,-11332.4936
    >>Tuez |cRXP_ENEMY_Foreman Thistlenettle|r. Dépouillez-le pour son |cRXP_LOOT_Badge|r
    >>Cette quête se finit À L’EXTÉRIEUR du donjon
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
step
.dungeon DM
    .goto 1415/0,1504.6810,-11259.7472,25,0
    .goto 1415/0,1557.4809,-11297.2937,25,0
    .goto 1415/0,1596.2008,-11318.4137,25,0
    .goto 1415/0,1539.8809,-11332.4936
    >>Tuez les |cRXP_ENEMY_Skeletal Miners|r, |cRXP_ENEMY_Undead Dynamiters|r et les |cRXP_ENEMY_Undead Excavators|r. Dépouillez-les pour leur |cRXP_LOOT_Cards|r
    >>Cette quête se finit À L’EXTÉRIEUR du donjon
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
.dungeon DM
    #label EnterDM
    .goto 1415/0,1589.1608,-11250.3605,25,0
    .goto 1415/0,1617.3207,-11217.5073,20,0
    .goto 1415/0,1681.3845,-11207.6513
    .subzone 1581,2 >> Entrez dans le donjon des Mortemines
step
.dungeon DM
    #softcore
    #optional
    #completewith VanCleef
    >>Tuez les |cRXP_ENEMY_Defias|r dans Les Mortemines. Dépouillez-les pour leur |cRXP_LOOT_Red Silk Bandanas|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
.dungeon DM
    >>Tuez |cRXP_ENEMY_Sneed|r. Dépouillez-le pour son |cRXP_LOOT_Gnoam Sprecklesprocket|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
step
.dungeon DM
    >>Tuez |cRXP_ENEMY_Edwin VanCleef|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r et sa [|cRXP_LOOT_An Unsent Letter|r]
    .collect 2874,1,373,1 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .isOnQuest 166
step
.dungeon DM
    #label VanCleef
    >>Tuez |cRXP_ENEMY_Edwin VanCleef|r. Dépouillez-le pour sa [|cRXP_LOOT_An Unsent Letter|r]
    .collect 2874,1,373,1 -- An Unsent Letter (1)
step
.dungeon DM
    #optional
    #completewith DeadminesEnd
    .goto 1436,38.909,84.014
    .subzone 920 >>Quittez les Mortemines par la sortie au fond, à l'est d' |cRXP_ENEMY_Edwin VanCleef|r
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip 1415
step
.dungeon DM
    .isQuestComplete 166
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 166 >> Rendez la quête La Confrérie défias
    .target Gryan Stoutmantle
step
.dungeon DM
    .isQuestComplete 214
    .goto Westfall,56.67,47.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Scout Riell|r au sommet de la Tour
    .turnin 214 >> Rendez la quête Les masques rouges en soie
    .target Scout Riell
step << Mage
.dungeon DM
    #optional
    .cast 3561 >>Lancez [Téléportation : Stormwind]
    .zoneskip Stormwind City
step << Mage
.dungeon DM
    #optional
    .goto 1453,36.863,81.132
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elsharin|r tout en haut de la Tour
    .train 2138 >> Apprenez vos sorts de classe
    .target Elsharin
    .xp <22,1
step << !Mage
.dungeon DM
    #completewith ShoniEnd
    #label DeadminesEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Volez à Stormwind
    .zoneskip Stormwind City
    .target Thor
step << Warlock
.dungeon DM
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Entrez dans L'Agneau Assassiné. Descendez les escaliers
    .xp <22,1
step << Warlock
.dungeon DM
    #optional
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursula Deline|r
    .train 6202 >> Apprenez vos sorts de classe
    .target Ursula Deline
    .xp <22,1
step << Paladin
.dungeon DM
    #optional
    #completewith next
    .goto 1453,42.917,34.221,15,0
    .goto 1453,41.385,31.547,15,0
    .goto 1453,39.810,29.788,15
    .goto StormwindClassic,42.51,33.51,20 >> Parlez à |cRXP_FRIENDLY_Duthorian Rall|r à l'intérieur de la Cathédrale
    .xp <22,1
step << Paladin
.dungeon DM
    #optional
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arthur the Faithful|r
    .train 19835 >> Apprenez vos sorts de classe
    .target Arthur the Faithful
    .xp <22,1
step << Priest
.dungeon DM
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20,0
    .goto StormwindClassic,38.54,26.86,20 >> Parlez à |cRXP_FRIENDLY_High Priestess Laurena|r à l'intérieur de la Cathédrale
    .xp <22,1
step << Priest
.dungeon DM
    #optional
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_High Priestess Laurena|r à l'intérieur
    .train 8103 >> Apprenez vos sorts de classe
    .target High Priestess Laurena
    .xp <22,1
step << Warrior
.dungeon DM
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >> Voyagez vers |cRXP_FRIENDLY_Wu Shen|r à l'intérieur du Centre de Commande
    .xp <22,1
step << Warrior
.dungeon DM
    #optional
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wu Shen|r dans le bâtiment à l'étage
    .train 6192 >> Apprenez vos sorts de classe
    .target Wu Shen
    .xp <22,1
step
.dungeon DM
    .goto StormwindClassic,48.079,30.913,10,0
    .goto StormwindClassic,49.193,30.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Baros Alexston|r
    .use 2874 >>|cRXP_WARN_Utilisez[|cRXP_LOOT_An Unsent Letter|r] pour commencer la quête|r
    .accept 373 >> Acceptez la quête La lettre non envoyée
    .turnin 373 >> Rendez la quête La lettre non envoyée
    .accept 389 >> Acceptez la quête Bazil Thredd
    .target Baros Alexston
step
.dungeon DM
    .isQuestTurnedIn 373 -- DM Unsent Letter
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Warden Thelwater|r
    .turnin 389 >> Rendez la quête Bazil Thredd
    .target Warden Thelwater
step
.dungeon DM
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wilder Thistlenettle|r à l'intérieur
    .turnin 167 >> Rendez la quête Adieu mon frère…
    .turnin 168 >> Rendez la quête À la recherche de Cartes du Syndicat des Mineurs
    .target Wilder Thistlenettle
step << skip --Hunter - nothing good to train at 22
.dungeon DM
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Einris Brightspear|r à l'intérieur
    .trainer >> Apprenez vos sorts de classe
    .target Einris Brightspear
    .xp <22,1
step
.dungeon DM
    #label ShoniEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shoni the Shilent|r
    .turnin 2040 >> Rendez la quête Assaut souterrain
    .goto StormwindClassic,55.510,12.504
    .target Shoni the Shilent
step
.dungeon DM
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Billibub Cogspinner|r
    .vendor 5519 >> |cRXP_BUY_Achetez-lui un|r [Tube en bronze] |cRXP_BUY_si il en a en stock|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
step << Druid
.dungeon DM
	#completewith next
	.cast 18960 >> Lancer [Téléportation : Reflet-de-Lune]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
.dungeon DM
    #optional
    #completewith next
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Apprenez vos sorts de classe
    .target Loganaar
    .xp <22,1
step
.dungeon DM
    .hs >> Utilisez votre Pierre de foyer pour revenir à Sombrivage
    >>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r << !Warrior !Rogue
    >>|cRXP_BUY_Achetez de la nourriture si besoin|r << Warrior/Rogue
    .zoneskip Darkshore
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP Guide TBC (A)
<< Alliance
#xprate <1.5
#name 20-21 Sombrivage (Draeneï)
#subgroup RestedXP Alliance 20-32
#defaultfor Draenei
#next 21-23 Orneval (Draeneï)

step
    .goto Darkshore,36.097,44.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Acceptez la quête Fruit de la mer
    .target Gubber Blump
step
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fp Auberdine >> Prenez le chemin de vol de Nid-de-l'Aigle
    .target Caylais Moonfeather
    .zoneskip Darkshore,1
step
    .goto Darkshore,37.219,44.227
    >>Cliquez sur l' |cRXP_PICK_l'Affiche de recherche|r
    .accept 4740 >> Acceptez la quête On recherche : Fondeboue !
step
    .goto Darkshore,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 947 >> Acceptez la quête La caverne aux champignons
    .target Barithras Moonshade
step
    .goto Darkshore,39.043,43.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Elissa Starbreeze|r à l'étage
    .accept 965 >> Acceptez la quête La Tour d'Althalaxx
    .target Sentinel Elissa Starbreeze
step
    .goto Darkshore,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gorbold Steelhand|r
    .accept 982 >> Acceptez la quête Océan profond, mer immense
    .target Gorbold Steelhand
step
    .isOnQuest 9633
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
	.turnin 9633 >> Rendez la quête En route pour Auberdine
    .accept 10752 >> Acceptez la quête En direction d'Orneval
    .target Thundris Windweaver
step
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
    .accept 10752 >> Acceptez la quête En direction d'Orneval
    .target Thundris Windweaver
step
    .goto Darkshore,38.83,29.37,10,0
    .goto Darkshore,38.236,28.800
    >>Entrez dans le navire échouée de l'Aube argentée à travers la coque brisée. Faites en sorte d'avoir une barre de souffle pleine avant de plonger et d'y entrer
    >>Ramassez la |cRXP_LOOT_Silver Dawning's Lockbox|r sur le sol
    .complete 982,1 --Collect Silver Dawning's Lockbox (x1)
step
    .goto Darkshore,40.30,27.56,10,0
    .goto Darkshore,39.633,27.459
    >>Entrez dans le navire échouée de la Voile de brume à travers la coque brisée. Faites en sorte d'avoir une barre de souffle pleine avant de plonger et d'y entrer
    >>Ramassez la |cRXP_LOOT_Mist Veil's Lockbox|r sur le sol
    .complete 982,2 --Collect Mist Veil's Lockbox (x1)
step
    #completewith GelkakGyromast
    >>Tuez les |cRXP_ENEMY_Reef Crawlers|r et les |cRXP_ENEMY_Encrusted Tide Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    .goto Darkshore,56.655,13.485
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gelkak Gyromast|r
    .accept 2098 >> Acceptez la quête La recherche de Gyromast
    .target Gelkak Gyromast
step
    #completewith next
    .goto Darkshore,56.10,16.88,0
    >>Tuez les |cRXP_ENEMY_Raging Reef Crawlers|r et les |cRXP_ENEMY_Encrusted Tide Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Bottom of Gelkak's Key|r
    >>|cRXP_WARN_Attention aux |cRXP_ENEMY_Raging Reef Crawlers|r et leur capacité|r [Rosser]. Ils peuvent vous infliger 200 points de dégâts instantanément sur leur coups en mêlée
    .complete 2098,3 -- Bottom of Gelkak's Key
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    .goto Darkshore,54.93,12.19
    >>Tuez les |cRXP_ENEMY_Greymist Oracles|r et les |cRXP_ENEMY_Greymist Tidehunters|r. Dépouillez-les pour leur |cRXP_LOOT_Middle of Gelkak's Key|r
    >>Attention aux |cRXP_WARN_Greymist Oracles|cRXP_ENEMY_ et leur capacité|r [Eclair] et ils peuvent aussi se soigner avec [Vague de soins]|r
    .complete 2098,2 -- Middle of Gelkak's Key (1)
    .mob Greymist Oracle
    .mob Greymist Tidehunter
step
    .goto Darkshore,55.59,16.98,45,0
    .goto Darkshore,53.76,18.96,45,0
    .goto Darkshore,51.34,22.00,45,0
    .goto Darkshore,56.63,12.08
    >>Tuez les |cRXP_ENEMY_Raging Reef Crawlers|r et les |cRXP_ENEMY_Encrusted Tide Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Bottom of Gelkak's Key|r
    >>|cRXP_WARN_Attention aux |cRXP_ENEMY_Raging Reef Crawlers|r et leur capacité|r [Rosser]. Ils peuvent vous infliger 200 points de dégâts instantanément sur leur coups en mêlée
    .complete 2098,3 -- Bottom of Gelkak's Key
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    .goto Darkshore,59.29,13.22,55,0
    .goto Darkshore,61.40,9.40,50,0
    .goto Darkshore,61.51,12.66,50,0
    .goto Darkshore,61.24,15.38,50,0
    .goto Darkshore,61.40,9.40
    >>Tuez les |cRXP_ENEMY_Giant Foreststriders|r. Dépouillez-les pour leur |cRXP_LOOT_Top of Gelkak's Key|r
    .complete 2098,1 -- Top of Gelkak's Key (1)
    .mob Giant Foreststrider
step
    .goto Darkshore,56.655,13.485
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2098 >> Rendez la quête La recherche de Gyromast
    .accept 2078 >> Acceptez la quête La vengeance de Gyromast
    .target Gelkak Gyromast
step
    .goto Darkshore,55.803,18.291,10,0
    .goto Darkshore,56.655,13.485
    >>Parlez à |cRXP_FRIENDLY_The Threshwackonator 4100|r pour commencer une escorte
    >>Escortez |cRXP_FRIENDLY_The Threshwackonator 4100|r à  |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>Tuez|cRXP_ENEMY_The Threshwackonator 4100|r dès qu'il devient hostile
    .skipgossip
    .complete 2078,1
    .mob The Threshwackonator 4100
step
    #label GelkakGyromast
    .goto Darkshore,56.655,13.485
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2078 >> Rendez la quête La vengeance de Gyromast
    .target Gelkak Gyromast
step
    #sticky
    #optional
    .destroy 7442 >> Détruisez la [Clé de Gyromast] comme elle n'est plus nécessaire (elle n'est pas dans votre trousseau de clés)
step
    #loop
    .goto Darkshore,53.51,18.65,0
    .goto Darkshore,51.42,22.04,0
    .goto Darkshore,48.52,20.65,0
    .goto Darkshore,45.50,20.45,0
    .goto Darkshore,53.51,18.65,70,0
    .goto Darkshore,51.42,22.04,70,0
    .goto Darkshore,48.52,20.65,70,0
    .goto Darkshore,45.50,20.45,70,0
    >>Tuez les |cRXP_ENEMY_Reef Crawlers|r et les |cRXP_ENEMY_Encrusted Tide Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    .goto Darkshore,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 965 >> Rendez la quête La Tour d'Althalaxx
    .accept 966 >> Acceptez la quête La Tour d'Althalaxx
    .target Balthule Shadowstrike
step
    #loop
    .goto Darkshore,55.231,26.508,0
    .goto Darkshore,56.194,27.071,0
    .goto Darkshore,56.047,26.586,0
    .goto Darkshore,55.231,26.508,50,0
    .goto Darkshore,55.369,27.025,50,0
    .goto Darkshore,55.763,26.695,50,0
    .goto Darkshore,55.815,26.972,50,0
    .goto Darkshore,56.194,27.071,50,0
    .goto Darkshore,56.790,27.621,50,0
    .goto Darkshore,57.278,26.311,50,0
    .goto Darkshore,57.046,26.234,50,0
    .goto Darkshore,56.544,26.598,50,0
    .goto Darkshore,56.047,26.586,50,0
    .goto Darkshore,55.743,25.915,50,0
    >>Tuez |cRXP_ENEMY_Dark Strand Fanatics|r. Tuez-les pour leur |cRXP_LOOT_Worn Parchments|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step
    .goto Darkshore,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 966 >> Rendez la quête La Tour d'Althalaxx
    .accept 967 >> Acceptez la quête La Tour d'Althalaxx
    .target Balthule Shadowstrike
step
    #completewith next
    .goto 1439,54.934,32.721,20,0
    .goto 1439,55.108,33.600,40 >> Voyagez vers la Grotte de la Bondissante
step
    >>Dépouillez-les |cRXP_LOOT_Scaber Stalks|r et un |cRXP_LOOT_Death Cap|r sur le sol
    >>|cRXP_WARN_Restez sur la partie supérieure. S'il n'y a pas de |cRXP_LOOT_Death Cap|r au bout de la partie supérieure, descendez et récupérez en un dans la salle inférieure au sud|r
    >>|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Stormscale Wave Riders|r lancent|r [Aqua Jet] (Coup à Distance instantané: Inflige des dégâts instantané et peut vous renverser) - faites attention à ne pas vous trouvez dans une position ou vous vous feriez pousser du niveau supérieur de la grotte
    .complete 947,1 --Scaber Stalk (5)
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    .goto Darkshore,55.04,33.34
    .complete 947,2 --Death Cap (1)
    .goto Darkshore,55.38,36.34
step
	.goto Darkshore,55.3,34.0
    .xp 20-3900 >> Gagnez en expérience jusqu'à ce qu'il ne vous manque que 3900xp pour le niveau 20 (16900/20800)
step << Hunter
	#completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    .goto Darkshore,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gorbold Steelhand|r
    .turnin 982 >> Rendez la quête Océan profond, mer immense
    .target Gorbold Steelhand
step
    #optional
    .isOnQuest 3765
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|cRXP_FRIENDLY_Gershala Nightwhisper|r
    .turnin 3765 >> Rendez la quête La dépravation au loin
    .target Gershala Nightwhisper
step
.dungeon BFD
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|cRXP_FRIENDLY_Gershala Nightwhisper|r
    >>Si vous ne pouvez pas accepter cette quête, passez cette étape
    .accept 1275 >> Acceptez la quête Recherches sur la corruption
    .target Gershala Nightwhisper
step
    .goto Darkshore,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 729 >> Acceptez la quête Les absences du Prospecteur
    .target Archaeologist Hollee
step
    .goto Darkshore,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Barithras Moonshade|r
    .turnin 947 >> Rendez la quête La caverne aux champignons
    .accept 948 >> Acceptez la quête Onu
    .target Barithras Moonshade
step
    .goto Darkshore,36.097,44.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Rendez la quête Fruit de la mer
    .target Gubber Blump
step << Hunter
.dungeon !BFD
    .goto Darkshore,33.189,40.111
    .zone Teldrassil >> Prenez le bateau pour Teldrassil
    .zoneskip Darnassus
step << Hunter
.dungeon !BFD
    #optional
    #completewith TrainWeps
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Prenez le portail violet pour Darnassus
step
.dungeon BFD
    .goto Darkshore,33.189,40.111
    .zone Teldrassil >> Prenez le bateau pour Teldrassil
    .zoneskip Darnassus
step
.dungeon BFD
    #completewith BFDAccept
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Prenez le portail violet pour Darnassus
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Argent Guard Manados|r et à |cRXP_FRIENDLY_Dawnwatcher Shaedlass|r à l'étage
    .accept 1199 >> Acceptez la quête Le crépuscule descend
    .target +Argent Guard Manados
    .goto Darnassus,55.239,23.996 -- Argent Guard Manados
    .accept 1198 >> Acceptez la quête À la recherche de Thaelrid
    .target +Dawnwatcher Shaedlass
    .goto Darnassus,55.360,25.024 -- Dawnwatcher Shaedlass
step << Hunter
#ah
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Landria|r
    >>Achetez un [Arc courbe lourd] si vous pouvez vous le permettre ou vérifiez l'Hôtel des Ventes pour un meilleur arc
    >>Faites un stock de [Flèche pointue]
    .collect 3027,1
    .target Landria
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.71
step << Hunter
#ssf
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Landria|r
    >>Achetez un [Arc courbe lourd]
    >>Faites un stock de [Flèche pointue]
    .collect 3027,1
    .target Landria
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.71
    .money <0.5643
step << Hunter
    +Équipez l' [Arc courbe lourd]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.71
step << Hunter
    #label TrainWeps
    .goto Darnassus,57.56,46.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ilyenia Moonfire|r
    .skipgossip 11866,1
    .train 264 >> Apprenez la compétence Arcs
    .train 227 >> Apprenez la compétence Bâtons
    .target Ilyenia Moonfire
step
    #label BFDAccept
    .goto Darnassus,39.799,92.286,10,0
    .goto Darnassus,38.716,81.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emissary Valustraa|r à l'étage
    .accept 9432 >> Accept Voyagez jusqu'à Astranaar
    .target Emissary Valustraa
    .zoneskip Darnassus,1
step
.dungeon BFD
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Traversez le portail violet pour le Village de Rut'theran
    .zoneskip Darkshore
step
.dungeon BFD
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Volez à Sombrivage
    .target Vesprystus
    .zoneskip Darkshore
step << Hunter
.dungeon !BFD
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Traversez le portail violet pour le Village de Rut'theran
    .zoneskip Darkshore
step << Hunter
.dungeon !BFD
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Volez à Sombrivage
    .target Vesprystus
    .zoneskip Darkshore
step
    .goto Darkshore,35.429,76.566,0
    .goto Darkshore,35.429,76.566,60,0
    .goto Darkshore,36.526,76.603
    >>|cRXP_WARN_Vérifiez si|cRXP_ENEMY_Murkdeep|r n'est pas déjà présent dans l'eau (si un joueur vient de rater le combat ou a laissé le |cRXP_ENEMY_Greymist Hunter|r de la vague de son respawn)|r
    >>Tuez les |cRXP_ENEMY_Greymist Warriors|r et les |cRXP_ENEMY_Greymist Hunters|r dans le camp
    >>|cRXP_WARN_Dirigez-vous vers le bûcher au centre du camp pour commencer le combat contre |cRXP_ENEMY_Murkdeep|r |r
    >>|cRXP_WARN_3 vagues vont apparaître depuis l'eau, chacune juste après avoir fini la vague précédente: la vague 1 a 3 |cRXP_ENEMY_Greymist Coastrunners|r de niveaux  12-13, la vague 2 a 2 |cRXP_ENEMY_Greymist Warriors|r de niveaux 15-16, et la vague 3 a un |cRXP_ENEMY_Murkdeep|r de niveau 19 et un |cRXP_ENEMY_Greymist Hunter|r de niveau 16-17. Vous pouvez rester vers le bûcher pour éviter de prendre l'aggro sur la vague à venir|r
    .complete 4740,1 -- Murkdeep (1)
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner
step
    .goto Darkshore,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Onu|r
    .turnin 948 >> Rendez la quête Onu
    .accept 944 >> Acceptez la quête Le Glaive du Maître
    .target Onu
step
    .goto Darkshore,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Prospector Remtravel|r
    >>Cela va commencer une escorte. Il se peut que vous deviez attendre qu'il réapparaisse ou que d'autres joueurs terminent l'escorte
    .turnin 729 >> Rendez la quête Les absences du Prospecteur
    .accept 731,1 >> Acceptez la quête Les absences du Prospecteur
    .target Prospector Remtravel
step
    #requires prospector
    >>|cRXP_WARN_Escortez |cRXP_FRIENDLY_Prospector Remtravel|r à travers le site de fouilles|r
    .complete 731,1
    .isOnQuest 731
    .target Prospector Remtravel
step
    #optional
    #completewith next
    .cast 5809 >> Utilisez la [Fiole de divination] et placez la sur le sol
    .use 5251
step
    .goto Darkshore,38.537,86.050
    >>|cRXP_WARN_Cliquez sur |cRXP_PICK_Scrying Bowl|r sur le sol|r
    .turnin 944 >> Rendez la quête Le Glaive du Maître
    .accept 949 >> Acceptez la quête Le camp du Marteau du crépuscule
    .use 5251
step
    .goto Darkshore,38.537,86.050
    >>Cliquez sur |cRXP_PICK_Twilight Tome|r sur le piédestal le plus au nord
    .turnin 949 >> Rendez la quête Le camp du Marteau du crépuscule
step
    #optional
    #sticky
    .destroy 5251 >> Supprimez la [Fiole de divination], qui n'est plus nécessaire
step
    .goto Darkshore,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Therylune|r. Cela va démarrer une escorte
    >>Passez cette étape si elle n'est pas présente
    .accept 945 >> Acceptez la quête L'évasion de Therylune
    .target Therylune
step
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_Escortez |cRXP_FRIENDLY_Therylune|r en dehors du Glaive du Maître|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .isOnQuest 945
    .target Therylune
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP Guide TBC (A)
<< Alliance
#name 21-23 Orneval (Draeneï)
#subgroup RestedXP Alliance 20-32
#defaultfor Draenei
#next 23-24 Les Paluns;24-27 Carmines/Bois de la Pénombre

step
#xprate >1.49
    .isOnQuest 9633
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
	.turnin 9633 >> Rendez la quête En route pour Auberdine
    .accept 10752 >> Acceptez la quête En direction d'Orneval
    .target Thundris Windweaver
    .zoneskip Darkshore,1
step
#xprate >1.49
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
    .accept 10752 >> Acceptez la quête En direction d'Orneval
    .target Thundris Windweaver
    .zoneskip Darkshore,1
step
#xprate >1.49
.dungeon BFD
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|cRXP_FRIENDLY_Gershala Nightwhisper|r
    >>Si vous ne pouvez pas accepter cette quête, passez cette étape
    .accept 1275 >> Acceptez la quête Recherches sur la corruption
    .target Gershala Nightwhisper
    .zoneskip Darkshore,1
step
#xprate >1.49
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fp Auberdine >> Prenez le chemin de vol de Nid-de-l'Aigle
    .target Caylais Moonfeather
    .zoneskip Darkshore,1
step
    .goto Ashenvale,28.929,14.485
    .zone Ashenvale >> Voyagez jusqu'au sud d'Ashenvale
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delgren the Purifier|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 967 >> Rendez la quête La Tour d'Althalaxx
    .accept 970 >> Acceptez la quête La Tour d'Althalaxx
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|cRXP_FRIENDLY_Orendil Broadleaf|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .accept 1010 >> Acceptez la quête Les Cheveux de Bathran
step
#xprate <1.5
    .goto Ashenvale,31.25,30.70
    >>Tuez les |cRXP_ENEMY_Dark Strand Cultists|r, |cRXP_ENEMY_Dark Strand Adepts|r, |cRXP_ENEMY_Dark Strand Adepts|r et les |cRXP_ENEMY_Dark Strand Excavators|r. Dépouillez-les pour leur |cRXP_LOOT_Glowing Soul Gem|r
    .complete 970,1
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator
step
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Ouvrez-les |cRXP_PICK_Plant Bundles|r sur le sol. Ramassez-les |cRXP_LOOT_Cheveux de Bathran|r
    >>Ils ressemblent à de petits sacs marrons. Ils peuvent être difficiles à distinguer
    .complete 1010,1
    .isOnQuest 1010
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|cRXP_FRIENDLY_Orendil Broadleaf|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .turnin 1010 >> Rendez la quête Les cheveux de Bathran
    .accept 1020 >> Acceptez la quête Jouvence d'Orendil
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delgren the Purifier|r
    .goto Ashenvale,26.19,38.69
    .turnin 970 >> Rendez la quête La Tour d'Althalaxx
    .accept 973 >> Acceptez la quête La Tour d'Althalaxx
    .target Delgren the Purifier
step
    #completewith next
    .goto Ashenvale,25.49,39.59,25,0
    .goto Ashenvale,25.98,41.72,25,0
    .goto Ashenvale,26.88,44.47,30,0
    .goto Ashenvale,28.16,47.68,60,0
    .goto Ashenvale,34.67,48.83
    .subzone 415 >> Voyagez jusqu'à Astranaar
step
    .goto Ashenvale,34.67,48.83
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shindrell Swiftfire|r
    .accept 1008 >> Acceptez la quête La grève de Zoram
    .target Shindrell Swiftfire
step
    #optional
    .isOnQuest 9432
    .goto Ashenvale,34.894,49.706
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vindicator Palanaar|r
    .turnin 9432 >> Turn in Voyagez jusqu'à Astranaar
    .target Vindicator Palanaar
step << Warrior/Paladin
	.goto Ashenvale,35.785,52.048
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xai'ander|r
    >>|cRXP_BUY_Achetez un|r [Faux dace] |cRXP_BUY_à Xai'ander|r
	.collect 922,1
    .target Xai'ander
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Warrior/Paladin
    #optional
    #sticky
    +Équipez le [Faux dace]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 10752 >> Rendez En direction d'Orneval
    .accept 1054 >> Acceptez la quête Diminution de la menace
    .accept 991 >> Acceptez la quête Le nettoyage selon Raene
    .target Raene Wolfrunner
step
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Kimlya|r
    .home >> Liez votre Pierre de foyer à Astranaar
    .target Innkeeper Kimlya
    .subzoneskip 415,1
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pelturas Whitemoon|r
    .turnin 1020 >> Rendez la quête Jouvence d'Orendil
    .timer 24,Jouvence d'Orendil RP
    .accept 1033 >> Acceptez la quête Larme d'Elune
    .target Pelturas Whitemoon
step
.dungeon WC
    #completewith TravelRatchet
    +Commencez à chercher un groupe pour les Cavernes des Lamentations pendant que vous complétez les deux prochaines étapes. Très vite, vous allez vous dirigez vers les Tarides pour faire ce donjon
    .zoneskip The Barrens
step
.dungeon WC
    .goto Ashenvale,36.06,36.59,0
    .goto Ashenvale,37.00,33.77,0
    .goto Ashenvale,35.88,31.90,0
    .goto Ashenvale,38.73,36.32,0
    .goto Ashenvale,39.59,36.30,60,0
    .goto Ashenvale,36.06,36.59,60,0
    .goto Ashenvale,37.00,33.77,60,0
    .goto Ashenvale,35.88,31.90,60,0
    .goto Ashenvale,38.73,36.32,60,0
    .goto Ashenvale,39.595,36.309
    >>Tuez|cRXP_ENEMY_Dal Bloodclaw|r. Dépouillez-le pour son |cRXP_LOOT_Crâne|r
    >>|cRXP_ENEMY_Dal Bloodclaw|r patrouille dans le village Crin-de-Chardon
    .complete 1054,1
    .unitscan Dal Bloodclaw
    .zoneskip The Barrens
step
.dungeon WC
    .goto Ashenvale,46.37,46.38
    >>Ramassez |cRXP_LOOT_Les larmes d'Ysera|r sur le sol
    .complete 1033,1
    .zoneskip The Barrens
step
.dungeon WC
    #label TravelRatchet
    .goto Ashenvale,69.71,86.87,50,0
    .goto The Barrens,48.98,5.42,35,0
    .goto The Barrens,49.07,12.80,50,0
    .goto The Barrens,53.87,21.52,120,0
    .goto The Barrens,59.15,25.48,120,0
    .goto The Barrens,63.087,37.607
    .subzone 392 >> Voyagez vers Ratchet dans les Tarides. Suivez la flèche pour éviter |cRXP_ENEMY_Barrens Guards|r
step
.dungeon WC
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Apprenez le chemin de vol par gryphon à Ratchet
    .target Bragok
step
.dungeon WC
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Crane Operator Bigglefuzz|r
    .accept 959 >> Acceptez la quête Fuite de porto aux docks
    .target Crane Operator Bigglefuzz
step
.dungeon WC
    #completewith next
    .goto The Barrens,46.95,35.44,0
    .goto The Barrens,46.95,35.44,20,0
    .goto The Barrens,47.01,34.67,15,0
    .goto 1414/1,-2039.8620,-759.5994
    .goto 1414/1,-2003.0622,-830.7456,20 >> Voyagez vers les Cavernes des Lamentations. Montez la montagne puis descendez dans la grotte cachée au-dessus de l'entrée du donjon. Suivez la flèche pour arriver à |cRXP_FRIENDLY_Nalpak|r et |cRXP_FRIENDLY_Ebru|r
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nalpak|r et à |cRXP_FRIENDLY_Ebru|r
    .accept 1486 >> Acceptez la quête Les peaux de déviants
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .accept 1487 >> Acceptez la quête L'éradication des déviants
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Nalpak
    .target Ebru
step
.dungeon WC
    #completewith EnterWC
    >>Tuez tous types de créatures |cRXP_ENEMY_Deviate|r. Dépouillez-les pour leur |cRXP_LOOT_Deviate Hides|r
    >>Cette quête peut être complétée à l'INTÉRIEUR et à l'EXTÉRIEUR des Cavernes des Lamentations
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    .goto 1414/1,-2084.0218,-784.1326,20,0
    .goto 1414/1,-2120.8216,-727.7062,20,0
    .goto 1414/1,-2003.0622,-656.5599,20,0
    .goto 1414/1,-2084.0218,-784.1326,20,0
    .goto 1414/1,-2120.8216,-727.7062,20,0
    .goto 1414/1,-2003.0622,-656.5599,20,0
    .goto 1414/1,-2084.0218,-784.1326,20,0
    .goto 1414/1,-2120.8216,-727.7062,20,0
    .goto 1414/1,-2003.0622,-656.5599
    >>Tuez|cRXP_ENEMY_Mad Magglish|r. Dépouillez-le pour son |cRXP_LOOT_99-Year-Old Port|r
    >>|cRXP_ENEMY_Mad Magglish|r peut apparaître à plusieurs endroits
    >>Cette quête être complétée à L’EXTÉRIEUR du donjon
    .complete 959,1 -- 99-Year-Old Port (1)
    .isOnQuest 959
    .mob Mad Magglish
step
.dungeon WC
    #label EnterWC
    .goto 1414/1,-2205.4612,-742.4261
    +Rentrez dans les Cavernes des Lamentations
    .zoneskip 1414,1 -- similar to stockades, no subzone for WC
step
.dungeon WC
    >>Tuez tous types de créatures |cRXP_ENEMY_Deviate|r. Dépouillez-les pour leur |cRXP_LOOT_Deviate Hides|r
    .complete 1487,1 -- Deviate Ravager slain (7)
    .complete 1487,2 -- Deviate Viper slain (7)
    .complete 1487,3 -- Deviate Shambler slain (7)
    .complete 1487,4 -- Deviate Dreadfang slain (7)
    .complete 1486,1 -- Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487
    .isOnQuest 1486
step
.dungeon WC
    >>Tuez tous types de créatures |cRXP_ENEMY_Deviate|r
    .complete 1487,1 -- Deviate Ravager slain (7)
    .complete 1487,2 -- Deviate Viper slain (7)
    .complete 1487,3 -- Deviate Shambler slain (7)
    .complete 1487,4 -- Deviate Dreadfang slain (7)
    .isOnQuest 1487
step
.dungeon WC
    #completewith next
    >>Tuez tous types de créatures |cRXP_ENEMY_Deviate|r. Dépouillez-les pour leur |cRXP_LOOT_Deviate Hides|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    >>Tuez |cRXP_ENEMY_Lord Cobrahn|r, |cRXP_ENEMY_Lord Pythas|r, |cRXP_ENEMY_Lord Serpentis|r et |cRXP_ENEMY_Lady Anacondra|r puis parlez au |cRXP_FRIENDLY_Disciple of Naralex|r au début du donjon pour commencer son escorte
    >>Escortez le |cRXP_FRIENDLY_Disciple of Naralex|r à travers les Cavernes des Lamentations et compléter son rituel
    >>Tuez |cRXP_ENEMY_Mutanus the Devourer|r. Dépouillez-le pour le [|cRXP_LOOT_Glowing Shard|r]
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Glowing Shard|r] pour commencer la quête|r
    .collect 10441,1,6981,1 -- Glowing Shard (1)
    .accept 6981 >> Acceptez la quête L'Éclat luminescent
    .use 10441 -- Glowing Shard
    .skipgossip
    .target Disciple of Naralex
    .mob Mutanus the Devourer
step
.dungeon WC
    >>Tuez tous types de créatures |cRXP_ENEMY_Deviate|r. Dépouillez-les pour leur |cRXP_LOOT_Deviate Hides|r
    >>Cette quête peut être complétée à l'INTÉRIEUR et à l'EXTÉRIEUR des Cavernes des Lamentations
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    #completewith RatchetTurnin
    .goto The Barrens,62.984,37.218
    .subzone 392 >> Voyagez à Ratchet. Vous allez bientôt rendre les quêtes au dessus du donjon
    .isOnQuest 6981,959
step
.dungeon WC
    .goto The Barrens,62.984,37.218
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sputtervalve|r
    .complete 6981,1 -- Speak with someone in Ratchet about the Glowing Shard
    .skipgossip 1
    .target Sputtervalve
    .isOnQuest 6981
step
.dungeon WC
    #label RatchetTurnin
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Crane Operator Bigglefuzz|r
    .turnin 959 >> Rendez la quête Fuite de porto aux docks
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
step
.dungeon WC
    #completewith next
    .goto The Barrens,50.11,35.21,35,0
    .goto The Barrens,48.60,33.34,35,0
    .goto The Barrens,48.184,32.781,15 >> Montez la pente raide de la montagne au dessus des Cavernes des Lamentations. Suivez la flèche
    .isQuestComplete 6981
step
.dungeon WC
    .goto The Barrens,48.184,32.781
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falla Sagewind|r
    .turnin 6981 >> Rendez la quête L'Éclat luminescent
    .target Falla Sagewind
    .isQuestComplete 6981
step
.dungeon WC
    #completewith NalpakEbru
    .goto 1414/1,-2039.8620,-759.5994,45,0
    .goto 1414/1,-2003.0622,-830.7456,20 >> Descendez dans la grotte cachée au-dessus de l'entrée des Cavernes des Lamentations. Suivez la flèche pour accéder à |cRXP_FRIENDLY_Nalpak|r et à |cRXP_FRIENDLY_Ebru|r
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nalpak|r et à |cRXP_FRIENDLY_Ebru|r
    .turnin 1486 >> Rendez la quête Les peaux de déviants
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .turnin 1487 >> Rendez la quête L'éradication des déviants
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Nalpak
    .target Ebru
    .isQuestComplete 1486
    .isQuestComplete 1487
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nalpak|r et à |cRXP_FRIENDLY_Ebru|r
    .turnin 1487 >> Rendez la quête L'éradication des déviants
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Ebru
    .isQuestComplete 1487
step
.dungeon WC
    #label NalpakEbru
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nalpak|r et à |cRXP_FRIENDLY_Ebru|r
    .turnin 1486 >> Rendez la quête Les peaux de déviants
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .target Nalpak
    .isQuestComplete 1486
step
.dungeon WC
    .hs >> Utilisez votre Pierre de foyer pour revenir à Astranaar
    >>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r << !Warrior !Rogue
	>>|cRXP_BUY_Achetez de la nourriture si besoin|r << Warrior/Rogue
    .zoneskip Ashenvale
step
    .goto Ashenvale,46.37,46.38
    >>Ramassez |cRXP_LOOT_Les larmes d'Ysera|r sur le sol
    .complete 1033,1
step
    .goto Ashenvale,36.06,36.59,0
    .goto Ashenvale,37.00,33.77,0
    .goto Ashenvale,35.88,31.90,0
    .goto Ashenvale,38.73,36.32,0
    .goto Ashenvale,39.59,36.30,60,0
    .goto Ashenvale,36.06,36.59,60,0
    .goto Ashenvale,37.00,33.77,60,0
    .goto Ashenvale,35.88,31.90,60,0
    .goto Ashenvale,38.73,36.32,60,0
    .goto Ashenvale,39.595,36.309
    >>Tuez|cRXP_ENEMY_Dal Bloodclaw|r. Dépouillez-le pour son |cRXP_LOOT_Crâne|r
    >>|cRXP_ENEMY_Dal Bloodclaw|r patrouille dans le village Crin-de-Chardon
    .complete 1054,1
    .unitscan Dal Bloodclaw
step
    #completewith next
    .subzone 415 >> Voyagez jusqu'à Astranaar
step
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 1054 >> Rendez la quête Diminution de la menace
    .target Raene Wolfrunner
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pelturas Whitemoon|r
	.target Pelturas Whitemoon
    .turnin 1033 >> Rendez la quête Larme d'Elune
    .timer 17,Larme d'Elune RP
    .accept 1034 >> Acceptez la quête Les ruines de Chimétoile
step << Shaman
    #completewith next
    >>Ramassez le |cRXP_PICK_Stardust Covered Bushes|r pour le |cRXP_LOOT_Handful of Stardust|r
    >>Ils apparaissent un peu partout tout le long de l'île
    .complete 1034,1
step << Shaman
    .goto Ashenvale,33.547,67.474
    .use 23749 >> Utilisez la [Gourde en peau vide] à la fontaine des ruines de Chimétoile
    .complete 9504,1 --Collect Filled Bota Bag (x1)
step
    .goto Ashenvale,33.30,67.79
    >>Ramassez le |cRXP_PICK_Stardust Covered Bushes|r pour le |cRXP_LOOT_Handful of Stardust|r
    >>Ils apparaissent un peu partout tout le long de l'île
    .complete 1034,1
step
#xprate <1.5
    #completewith next
    .goto Ashenvale,31.67,64.24,15 >> Dirigez-vous vers la base de la montagne
    .goto Ashenvale,31.21,61.60,15 >>Visez tout droit au nord en montant la montagne
step
#xprate <1.5
    .goto Ashenvale,27.40,63.03,70,0
    .goto Ashenvale,25.27,60.68
    >>Tuez|cRXP_ENEMY_Ilkrud Magthrull|r. Dépouillez-le pour son |cRXP_LOOT_Tome|r
    >>|cRXP_ENEMY_Ilkrud Magthrull|r lancera [Gardiens d'Ilkrud] |cRXP_WARN_avec un long temps d'incantation de 5 secondes qui invoquera 2 |rVoidwalkers|cRXP_WARN_. Interrompez-le si possible.|r
    .complete 973,1
    .mob Ilkrud Magthrull
step
#xprate <1.5
    #optional
    .isQuestComplete 945
	.goto Ashenvale,27.4,61.7,80,0
	.goto Ashenvale,28.1,55.1,80,0
    .goto Ashenvale,22.64,51.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >> Rendez la quête L'évasion de Therylune
	.target Therysil
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delgren the Purifier|r
    .goto Ashenvale,26.19,38.69
    .turnin 973 >> Rendez la quête La Tour d'Althalaxx
    .target Delgren the Purifier
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Teronis' Corpse|r
	.target Teronis' Corpse
    .goto Ashenvale,20.31,42.33
    .turnin 991 >> Rendez la quête Le nettoyage selon Raene
    .accept 1023 >> Acceptez la quête Le nettoyage selon Raene
step
    .goto Ashenvale,20.41,43.82,50,0
    .goto Ashenvale,19.43,42.09,50,0
    .goto Ashenvale,21.01,41.61,50,0
    .goto Ashenvale,20.31,42.33
    >>Tuez les|cRXP_ENEMY_Saltspittle Murlocs|r. Dépouillez-les pour leur |cRXP_LOOT_Glowing Gem|r
	.mob Saltspittle Warrior
	.mob Saltspittle Muckdweller
	.mob Saltspittle Oracle
	.mob Saltspittle Puddlejumper
    .complete 1023,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talen|r
    .goto Ashenvale,14.79,31.29
    .accept 1007 >> Acceptez la quête L'ancienne statuette
    .target Talen
step
    #completewith AncientStatuette
    >>Tuez les |cRXP_ENEMY_Wrathtail Nagas|r. Dépouillez-les pour leur |cRXP_LOOT_Tête|r
    >>Ne sortez pas de votre route pour terminer cette quête
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .complete 1008,1
step
    .goto Ashenvale,14.20,20.64
    >>Ramassez les |cRXP_LOOT_Ancient Statuette|r sur le sol
    .complete 1007,1
step
    #label AncientStatuette
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .turnin 1007 >> Rendez la quête L'ancienne statuette
    .accept 1009 >> Acceptez la quête Ruuzel
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Wrathtail Nagas|r. Dépouillez-les pour leur |cRXP_LOOT_Tête|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .mob Wrathtail Myrmidon
    .mob Wrathtail Priestess
    .mob Wrathtail Razortail
    .mob Wrathtail Sea Witch
    .complete 1008,1
step
    .goto Ashenvale,6.528,13.361
    >>Tuez |cRXP_ENEMY_Ruuzel|r. Dépouillez-la pour son |cRXP_LOOT_Ring of Zoram|r
    >>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patrouille autour de l'île avec un |cRXP_ENEMY_Wrathtail Myrmidon|r et une |cRXP_ENEMY_Wrathtail Sea Witch|r. Tuez l'un des deux puis relancez le combat si nécessaire|r
    >>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_ est un mob rare qui peut aussi donner le |cRXP_LOOT_Ring of Zoram|r si vous la voyez|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
step
.dungeon BFD
    #completewith RuuzelTurnin
    +Commencez à chercher un groupe pour les Profondeurs de Brassenoire en complétant les prochaines étapes. Vous allez très rapidement faire le donjon
step
    .goto Ashenvale,7.00,15.20,0
    .goto Ashenvale,14.46,17.15,0
    .goto Ashenvale,14.86,21.06,0
    .goto Ashenvale,13.13,25.03,0
    .goto Ashenvale,10.89,30.03,0
    .goto Ashenvale,7.00,15.20,70,0
    .goto Ashenvale,14.46,17.15,70,0
    .goto Ashenvale,14.86,21.06,70,0
    .goto Ashenvale,13.13,25.03,70,0
    .goto Ashenvale,10.89,30.03,70,0
    .goto Ashenvale,13.13,25.03,70,0
    .goto Ashenvale,14.86,21.06,70,0
    .goto Ashenvale,14.46,17.15,70,0
    >>Tuez les |cRXP_ENEMY_Wrathtail Nagas|r. Dépouillez-les pour leur |cRXP_LOOT_Tête|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .mob Wrathtail Myrmidon
    .mob Wrathtail Priestess
    .mob Wrathtail Razortail
    .mob Wrathtail Sea Witch
    .complete 1008,1
step
    #label RuuzelTurnin
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talen|r
    .goto Ashenvale,14.79,31.29
    .turnin 1009 >> Rendez la quête Ruuzel
	.target Talen
step
.dungeon BFD
    .goto Ashenvale,15.5,19.0,0
    .goto Ashenvale,14.230,14.618
    +Tuez en boucle des |cRXP_ENEMY_Naga|r tout en montant un groupe pour Brassenoire. Dirigez-vous vers le donjon une fois que votre groupe est complet
    .subzoneskip 2797--BFD
step
.dungeon BFD
    #completewith EnterBFD
    .goto Ashenvale,14.230,14.618,0
    .goto 1414/1,885.7229,4139.6807,50 >> Voyagez vers les Profondeurs de Brassenoire
    .subzoneskip 2797--BFD
step
.dungeon BFD
    #completewith next
    >>Tuez les|cRXP_ENEMY_Fallenroot Rogues|r, |cRXP_ENEMY_Fallenroot Satyrs|r, |cRXP_ENEMY_Blackfathom Oracles|r et les |cRXP_ENEMY_Blackfathom Tide Priestesses|r. Dépouillez-les pour leur|cRXP_LOOT_Corrupted Brain Stems|r
    >>|cRXP_WARN_Vous pourrez aussi récupérer les |cRXP_LOOT_Corrupted Brain Stems|r à l'intérieur de l'instance|r
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .mob Blackfathom Tide Priestess
    .mob Blackfathom Oracle
    .mob Fallenroot Rogue
    .mob Fallenroot Satyr
    .isOnQuest 1275
step
.dungeon BFD
    #label EnterBFD
    .goto 1414/1,937.2426,4186.2938,25,0
    .goto 1414/1,904.1228,4321.2264,25,0
    .goto 1414/1,867.3230,4318.7731,25,0
    .goto 1414/1,749.5636,4252.5334
    .subzone 2797,2 >> Prenez la route pour le portail de l'instance Profondeurs de Brassenoire, prenez-le quand vous êtes arrivés
    >>Vérifiez si une personne de votre groupe peut partager la quête "La connaissance des profondeurs" de Forgefer avec vous
step
.dungeon BFD
    #completewith Kelris
    >>Tuez les|cRXP_ENEMY_Nagas|r et les |cRXP_ENEMY_Satyrs|r. Dépouillez-les pour leur |cRXP_LOOT_Corrupted Brain Stems|r
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .isOnQuest 1275
step
.dungeon BFD
    #label manuscript
    #sticky
    >>Ouvrez les |cRXP_PICK_Pitted Iron Chest|r sous l'eau près de la zone avec toutes les tortues. Récupérez le |cRXP_LOOT_Lorgalis' Manuscript|r
    .complete 971,1 -- Lorgalis Manuscript (1)
    .isOnQuest 971
step
.dungeon BFD
    #label Thaelrid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|cRXP_FRIENDLY_Argent Guard Thaelrid|r
    .turnin -1198 >> Rendez À la recherche de Thaelrid
    .accept 1200 >> Acceptez la quête L'infamie de Brassenoire
step
#requires manuscript
.dungeon BFD
    #completewith Kelris
    >>Tuez tous les |cRXP_ENEMY_Twilight's Hammer|r. Dépouillez-les pour leur |cRXP_LOOT_Twilight Pendants|r
    .complete 1199,1 -- Twilight Pendant (10)
    .isOnQuest 1199
step
#requires manuscript
.dungeon BFD
    #label Kelris
    >>Tuez|cRXP_ENEMY_Twilight Lord Kelris|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    .complete 1200,1 -- Head of Kelris (1)
    .isOnQuest 1200
step
.dungeon BFD
    >>Tuez tous les |cRXP_ENEMY_Twilight's Hammer|r. Dépouillez-les pour leur |cRXP_LOOT_Twilight Pendants|r
    .complete 1199,1 -- Twilight Pendant (10)
    .isOnQuest 1199
step
.dungeon BFD
    #label FinalStem
    >>Tuez les|cRXP_ENEMY_Nagas|r et les |cRXP_ENEMY_Satyrs|r. Dépouillez-les pour leur |cRXP_LOOT_Corrupted Brain Stems|r
    >>Si vous n'avez pas encore compléter cette quête, cliquez sur l'autel à la fin du donjon pour vous téléportez à l'entrée. Les mobs à l'extérieur de l'instance peuvent aussi le donner.
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .isOnQuest 1275
step
    .isOnQuest 1008,1023,1034
    .hs >> Utilisez votre Pierre de foyer pour revenir à Astranaar
    >>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r << !Warrior !Rogue
	>>|cRXP_BUY_Achetez de la nourriture si besoin|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step
    #completewith ZoramStrandTurnin
    .subzone 415 >> Voyagez jusqu'à Astranaar
step
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raene Wolfrunner|r
	.target Raene Wolfrunner
    .turnin 1023 >> Rendez la quête Le nettoyage selon Raene
step
    #optional
    #sticky
    .destroy 5505 >> Détruisez le [Journal de Teronis]. Vous en avez plus besoin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pelturas Whitemoon|r
	.target Pelturas Whitemoon
    .goto Ashenvale,37.36,51.79
    .turnin 1034 >> Rendez la quête Les ruines de Chimétoile
step
    #label ZoramStrandTurnin
    .goto Ashenvale,34.67,48.83
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shindrell Swiftfire|r
	.target Shindrell Swiftfire
    .turnin 1008 >> Rendez la quête La grève de Zoram
step
    .goto Ashenvale,34.41,47.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daelyshia|r
    .fly Auberdine >> Volez à Sombrivage
    .target Daelyshia
    .zoneskip Ashenvale,1
step
#xprate <1.5
    .goto Darkshore,37.70,43.39
    .target Sentinel Glynda Nal'Shea
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4740 >> Rendez la quête On recherche : Fondeboue !
    .isQuestComplete 4740
step
.dungeon BFD
#xprate <1.5
    #label AbsentMinded
    .goto Darkshore,37.44,41.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archaeologist Hollee|r
    .turnin 731 >> Rendez la quête Les absences du Prospecteur
    .accept 741 >> Acceptez la quête Les absences du Prospecteur
    .target Archaeologist Hollee
step
.dungeon !BFD
#xprate <1.5
    #label AbsentMinded
    .goto Darkshore,37.44,41.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archaeologist Hollee|r
    .turnin 731 >> Rendez la quête Les absences du Prospecteur
    .accept 741 >> Acceptez la quête Les absences du Prospecteur << !Hunter
    .target Archaeologist Hollee
step
.dungeon BFD
    .isQuestComplete 1275
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gershala Nightwhisper|r
    .turnin 1275 >> Rendez la quête Recherches sur la corruption
    .target Gershala Nightwhisper
step
.dungeon BFD << !Hunter
    .isOnQuest 1199,1200 << !Hunter
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Teldrassil >> Volez à Teldrassil
    .target Caylais Moonfeather
step << !Hunter
.dungeon !BFD
    .goto Darkshore,33.189,40.111
    .zone Teldrassil >> Prenez le bateau pour Teldrassil
    .zoneskip Darnassus
step
.dungeon BFD << !Hunter
    #optional
    #completewith ExitDarn
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Prenez le portail violet pour Darnassus
step << !Hunter
.dungeon !BFD
    #optional
    #completewith ExitDarn
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Prenez le portail violet pour Darnassus
step
#xprate <1.5
    .isOnQuest 741
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
	.target Chief Archaeologist Greywhisker
    .goto Teldrassil,23.70,64.51
    .turnin 741 >> Rendez la quête Les absences du Prospecteur
    .accept 942 >> Acceptez la quête Les absences du Prospecteur
step
#xprate <1.5
    .isQuestTurnedIn 741
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
	.target Chief Archaeologist Greywhisker
    .goto Teldrassil,23.70,64.51
    .accept 942 >> Acceptez la quête Les absences du Prospecteur
step << Priest
    .goto 1457,37.903,82.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jandria|r
    .trainer >> Apprenez vos sorts de classe
    .target Jandria
step << Warrior
    .goto Darnassus,58.945,35.336
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darnath Bladesinger|r
    .trainer >> Apprenez vos sorts de classe
    .target Darnath Bladesinger
    .zoneskip Darnassus,1
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ilyenia Moonfire|r
    .skipgossip 11866,1
    .goto Darnassus,57.56,46.72
    .train 227 >> Apprenez la compétence Bâtons
    .target Ilyenia Moonfire
    .zoneskip Darnassus,1
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Argent Guard Manados|r à l'étage
    .turnin 1199 >> Rendez la quête Le crépuscule descend
    .goto Darnassus,55.239,23.996 -- Argent Guard Manados
    .target Argent Guard Manados
    .isQuestComplete 1199
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dawnwatcher Selgorm|r à l'étage
    .turnin 1200 >> Rendez la quête L'infamie de Brassenoire
    .goto Darnassus,56.167,24.395 -- Dawnwatcher Selgorm
    .target Dawnwatcher Selgorm
    .isQuestComplete 1200
step << Hunter
    .goto Darnassus,40.38,8.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jocaste|r
    .trainer >> Apprenez vos sorts de classe
    .target Jocaste
    .zoneskip Darnassus,1
step
    #label ExitDarn
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Traversez le portail violet pour le Village de Rut'theran
    .zoneskip Darnassus,1
step
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Volez à Sombrivage
    .target Vesprystus
    .zoneskip Darkshore
    .zoneskip Wetlands
step
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Prenez le bateau pour le Port de Menethil
--
step
#xprate >1.49
.dungeon SFK
    #completewith BTcheck
    +Commencez à cherche un groupe pour le Donjon d'Ombrecroc. Vous allez bientôt vous diriger vers la Forêt des Pins argentés pour faire le Donjon d'Ombrecroc
step
#xprate >1.49
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dewin Shimmerdawn|r
    .vendor >> |cRXP_BUY_Achetez autant de|r [Potions de soins] |cRXP_BUY_que possible|r
    >>|cRXP_WARN_Cet objet est en stock limité. Passez cette étape si |cRXP_FRIENDLY_Dewin Shimmerdawn|r n'en a plus en stock|r
    .target Dewin Shimmerdawn
    .zoneskip Wetlands,1
step << Draenei
#xprate >1.49
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Prenez le chemin de vol du Port de Menethil
    .target Shellei Brondir
    .zoneskip Wetlands,1
step
#xprate >1.49
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .accept 288 >> Acceptez la quête La IIIe flotte
step
#xprate >1.49
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Helbrek|r
    .home >> Liez votre Pierre de foyer au Port de Menethil
    .target Innkeeper Helbrek
    .bindlocation 2104
step
#xprate >1.49
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Helbrek|r
    >>|cRXP_BUY_Achetez une|r [Cruche d'hydromiel nain]
    .complete 288,1 -- Flagon of Dwarven Honeymead (1)
    .target Innkeeper Helbrek
step
#xprate >1.49
    .isQuestComplete 942
    #completewith next
    .goto Wetlands,10.368,61.016,8 >> Montez les escaliers vers l' |cRXP_FRIENDLY_Archéologue Flagongut|r
step
#xprate >1.49
    .isQuestComplete 942
    .goto Wetlands,10.843,60.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Archéologue Flagongut|r en haut des escaliers
    .target Archaeologist Flagongut
    .turnin 942 >> Rendez la quête Les absences du Prospecteur
step
#xprate >1.49
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .turnin 288 >> Rendez la quête La IIIe flotte
step
#xprate >1.49
    #label BTcheck
    .goto Wetlands,10.4,56.0,25,0
    .goto Wetlands,10.1,56.9,25,0
    .goto Wetlands,10.6,57.2,25,0
    .goto Wetlands,10.761,56.737
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_BUY_Achetez un|r [Tube en bronze]
    >>|cRXP_WARN_Cet objet est en stock limité. Passez cette étape si |cRXP_FRIENDLY_Neal Allen|r n'en a plus en stock|r
	.target Neal Allen
    .bronzetube
step
#xprate >1.49
.dungeon SFK
    #completewith next
    .goto Wetlands,30.8,31.0,0
    .goto Wetlands,37.8,29.6,0
    .goto Wetlands,43.0,33.2,0
    .zone Arathi Highlands >> Tuez en boucle les |cRXP_ENEMY_Mosshides Gnolls|r en cherchant un groupe pour le Donjon d'Ombrecroc
step
#xprate >1.49
.dungeon SFK
    .goto Arathi Highlands,43.01,55.00,90,0
    .goto Arathi Highlands,25.45,46.95,90,0
    .goto Arathi Highlands,21.29,30.24,70,0
    .goto Hillsbrad Foothills,49.338,52.272
    >>Il n'y a pas de quête pour le Donjon d'Ombrecroc. Vous devrez courir des Paluns à la Forêt des Pins argentés. Assurez-vous de rester sur la route quand vous traversez les Hautes-terres d'Arathi, et faites attention au |cRXP_ENEMY_Forsaken Courier|r
    >>Vous n'avez pas besoin d'aller au maître de vol des Hautes-terres d'Arathi pour l'instant
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darla Harris|r
    .fp Southshore >> Prenez le chemin de vol de Southshore
    .target Cedrik Prose
    .target Darla Harris
    .unitscan Forsaken Courier
step
#xprate >1.49
.dungeon SFK
    .goto Hillsbrad Foothills,14.77,46.72,0
    .goto Silverpine Forest,44.96,67.92,0
    .goto Hillsbrad Foothills,14.77,46.72,100,0
    .goto Silverpine Forest,47.19,69.78,100,0
    .goto Silverpine Forest,44.712,67.769
    .subzone 209,2 >> Entrez dans le Donjon d'Ombrecroc
step
#xprate >1.49
.dungeon SFK
    +Il n'y a pas de quête pour le Donjon d'Ombrecroc
    >>Faites le Donjon d'Ombrecroc. Partez quand vous avez terminé
    .zoneskip 209,1
step
#xprate >1.49
.dungeon SFK
	.goto Wetlands,63.9,78.6
	.hs >> Utilisez votre Pierre de foyer pour revenir au Port de Menethil
    >>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r << !Warrior !Rogue
	>>|cRXP_BUY_Achetez de la nourriture si besoin|r << Warrior/Rogue
    .subzoneskip 150
    .subzoneskip 2103
    .subzoneskip 2104
    .zoneskip Loch Modan
step << !Draenei
#xprate >1.49
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shellei Brondir|r
    .fly Stormwind >> Volez à Stormwind
    .target Shellei Brondir
    .zoneskip Stormwind City
    .zoneskip Redridge Mountains
    .zoneskip Duskwood
step << Draenei
#xprate >1.49
    .goto Wetlands,53.74,70.33,30,0
    .goto Wetlands,48.17,67.49,30,0
    .goto Loch Modan,25.11,8.99,20 >>|cRXP_WARN_Voyage à travers le tunnel Dun Algaz vers Loch Modan|r
    .zoneskip Loch Modan --Completes if you run to Loch
step << skip --logout skip Draenei
#xprate >1.49
	#completewith next
	.goto Wetlands,63.9,78.6
    >>Dirigez-vous vers la grotte à la base du barrage dans l'est des Paluns
	.zone Loch Modan >> Déconnectez-vous en haut des champignons au fond de la grotte.
    >>Quand vous vous reconnecterez, ceci vous téléportera à Thelsamar
	.link https://www.youtube.com/watch?v=21CuGto26Mk >> CLIQUEZ ICI pour un exemple vidéo
step << Draenei
#xprate >1.49
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >> Prenez le chemin de vol de Thelsamar
    .target Thorgrum Borrelson
step << Draenei
#xprate >1.49
	.goto Loch Modan,22.6,70.2,80,0
	.goto Loch Modan,19.85,63.04,40,0
	.goto Dun Morogh,86.2,47.0
    >>|cRXP_WARN_Commencez à enlever votre équipement pendant que vous courez vers Dun Morogh|r
    .deathskip >> Attirez l'attention du |cRXP_ENEMY_Scarred Crag Boars|r pour mourir et réapparaître au |cRXP_FRIENDLY_Esprit Gardien des âmes|r une fois que vous êtes à Dun Morogh
    .mob Scarred Crag Boar
step << skip --logout skip Draenei
#xprate >1.49
	>>Entrez dans la grotte des Trogg au sud-est. Déconnectez-vous (logout skip)
    .goto Dun Morogh,70.63,56.70,60,0
    .goto Dun Morogh,70.60,54.86
	.link https://www.youtube.com/watch?v=yQBW3KyguCM >> CLIQUEZ ICI pour un exemple vidéo
	.zone Ironforge >> Utilisez la technique de "Logout skip" ou voyagez vers Ironforge
step << Draenei
#xprate >1.49
    .goto Dun Morogh,50.084,49.420
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loslor Rudge|r
    .vendor >> |cRXP_BUY_Achetez un|r [Tube en bronze]
    >>|cRXP_WARN_C'est un objet à approvisionnement limité. Passer cette étape si |cRXP_FRIENDLY_Loslor Rudge|r n'en a pas|r
	.target Loslor Rudge
    .bronzetube
step << Draenei
#xprate >1.49
    .goto Dun Morogh,52.94,35.22,0
    .goto Dun Morogh,52.94,35.22,50,0
    .goto Ironforge,19.24,80.76
    .zone Ironforge >> Voyagez à Ironforge
step << Draenei
#xprate >1.49
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Prenez le chemin de vol de Forgefer
    .target Gryth Thurden
step << Draenei
#xprate >1.49
    .goto Ironforge,76.61,51.28,0
    .goto Ironforge,76.61,51.28,10,0
    .zone Stormwind City >> Prenez le Tram des profondeurs pour Stormwind
]])
