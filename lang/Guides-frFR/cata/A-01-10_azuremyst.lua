if GetLocale() ~= "frFR" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end
--TODO: skip the furbolg quests if xp rate is greater than 1x
RXPGuides.RegisterGuide([[
<< Alliance
#name 1-10 Île de Brume-Azur
#version 1
#group RXP Cataclysme 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#defaultfor Draenei
#next 10-18 Sombrivage
step
    .goto Azuremyst Isle,84.19,43.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Megelon|r
    .accept 9279 >> Acceptez la quête Vous avez survécu !
    .target Megelon
step
    .goto Azuremyst Isle,80.419,45.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Proenitus|r
    .turnin 9279 >> Rendez la quête Vous avez survécu !
    .accept 9280 >> Acceptez la quête Recharger les cristaux de soin
    .target Proenitus
step
    #loop
    .goto Azuremyst Isle,80.14,41.70,50,0
    .goto Azuremyst Isle,75.27,43.70,50,0
    >>Tuez les|cRXP_ENEMY_Vale Moths|r. Dépouillez-les pour leur |cRXP_LOOT_Blood|r
    .complete 9280,1 --Collect Vial of Moth Blood (x8)
    .mob Vale Moth
step
    .goto Azuremyst Isle,80.419,45.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Proenitus|r
    .turnin 9280 >> Rendez la quête Recharger les cristaux de soin
    .accept 9409 >> Acceptez la quête Livraison urgente
    .target Proenitus
step
    .goto Azuremyst Isle,79.139,46.536
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Botaniste Taerix|r
    .accept 10302 >> Acceptez la quête Mutations volatiles
    .target Botanist Taerix
step
    #loop
    .goto Azuremyst Isle,80.14,41.70,50,0
    .goto Azuremyst Isle,75.27,43.70,50,0
    .goto Azuremyst Isle,73.4,51.4,50,0
    >>Tuez les |cRXP_ENEMY_Volatile Mutations|r
    .complete 10302,1 --Kill Volatile Mutation (x8)
    .mob Volatile Mutation
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Botaniste Taerix|r et |cRXP_FRIENDLY_Apprentie Vishael|r
    .turnin 10302 >> Rendez la quête Mutations volatiles
    .accept 9293 >> Acceptez la quête Ce qui doit être fait...
    .target +Botanist Taerix
    .goto Azuremyst Isle,79.139,46.536
    .accept 9799 >> Acceptez la quête Un travail de botanique
    .target +Apprentice Vishael
    .goto Azuremyst Isle,79.071,46.624
step
    #loop
    .goto Azuremyst Isle,74.5,48.5,50,0
    .goto Azuremyst Isle,72.94,52.21,50,0
    .goto Azuremyst Isle,72.26,49.29,50,0
    >>Tuez les |cRXP_ENEMY_Mutated Root Lashers|r. Dépouillez-les pour leur |cRXP_LOOT_Lasher Samples|r
    >>Ramassez les |cRXP_LOOT_Corrupted Flowers|r sur le sol
    .complete 9293,1 --Collect Lasher Sample (x10)
    .complete 9799,1 --Collect Corrupted Flower (x3)
    .mob Mutated Root Lasher
step << cata Priest/Shaman
    .goto Azuremyst Isle,79.1,46.5
	.xp 4-470 >>Broyez jusqu'à être à 470 XP du niveau 4 (930/1400)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Botaniste Taerix|r et |cRXP_FRIENDLY_Apprentie Vishael|r
    .turnin 9293 >> Rendez la quête Ce qui doit être fait...
    .accept 9294 >> Acceptez la quête Guérir le lac
    .target +Botanist Taerix
    .goto Azuremyst Isle,79.139,46.536
    .turnin 9799 >> Rendez la quête Un travail de botanique
    .target +Apprentice Vishael
    .goto Azuremyst Isle,79.071,46.624
step
	#completewith next
	.goto Azuremyst Isle,79.987,47.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aurok|r
	.vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Aurok
step
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r patrouille aux alentours
    .turnin 9409 >> Rendez la quête Livraison urgente
    .accept 9283 >> Acceptez la quête Sauvez les rescapés !
    .accept 26970 >> Acceptez la quête Aider le Blessé << cata Priest
    .accept 26970 >> Acceptez la quête Apprendre la parole << !cata Priest
    .train 2061 >> Entraînez-vous |T135907:0|t[Soins rapides] << cata Priest
    .train 589 >> Apprenez [Mot de l'ombre : Douleur] << cata Priest
    .target Zalduun
step << Priest cata
    .goto Azuremyst Isle,80.32,48.30,10,0
    .goto Azuremyst Isle,80.12,49.23
    >>|cRXP_WARN_Lancez|r |T135907:0|t[Soins rapides] |cRXP_WARN_5 fois sur un |cRXP_FRIENDLY_Draeneï blessé|r à côté de vous|r
    .complete 26970,1 -- Heal Injured Draenei
    .target Injured Draenei
step << Priest cata
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r patrouille aux alentours
    .turnin 26970 >> Rendez la quête Aider le Blessé
    .target Zalduun
step << Mage
	.goto Azuremyst Isle,79.582,48.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valaatu|r
    .accept 26968 >> Acceptez la quête Projectiles des Arcanes << cata
    .accept 26968 >> Acceptez la quête Nova de givre << !cata
	.train 5143 >> Apprenez |T136096:0|t[Projectiles des Arcanes] << cata
    .target Valaatu
step << Paladin
    #loop
    .goto Azuremyst Isle,79.695,48.236,7,0
    .goto Azuremyst Isle,80.12,49.13,7,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aurelon|r
    >>|cRXP_FRIENDLY_Aurelon|r peut patrouiller aux alentours
    .accept 26966 >> Acceptez la quête La puissance de la Lumière
    .train 20154 >> S'entraîner |T135960:0|t[Sceau de piété] << cata
	.train 20271 >> Apprenez [Jugement] << cata
    .target Aurelon
step << Warrior
    .goto Azuremyst Isle,79.587,49.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kore|r
    .accept 26958 >> Acceptez Votre première leçon
	.train 100 >> Apprenez [Charge] << cata
    .target Kore
step << Shaman
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Firmanvaar|r
    .accept 26969 >> Acceptez la quête La frappe primordiale
    .train 8075 >> Entraînez-vous |T136023:0|t[Totem de force de la terre] << cata
    .train 73899 >> S'entraîner |T460956:0|t[La frappe primordiale] << cata
    .target Firmanvaar
step << Hunter
	.goto Azuremyst Isle,79.886,49.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keilnei|r
	.accept 26963 >> Acceptez la quête Comment assurer vos tirs
    .train 56641 >> S'entraîner |T132213:0|t[Veilleur du puits Solanian] << cata
    .target Keilnei
step
    .goto Azuremyst Isle,79.419,51.235
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Technicienne Zhanaa|r
    .accept 9305 >> Acceptez la quête Pièces de rechange
    .target Technician Zhanaa
step
    .goto Azuremyst Isle,79.486,51.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Redresseur de torts Aldar|r
    .accept 9303 >> Acceptez la quête Inoculation
    .target Vindicator Aldar
step
    #completewith Owlkininoculated
    >>Lancez [Don des Naaru] sur un|cRXP_FRIENDLY_Draenei Survivor|r. Ils sont éparpillés tout autour de la zone de départ
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
step
    .goto Azuremyst Isle,79.139,46.536
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Botaniste Taerix|r
    .turnin 9294 >> Rendez la quête Guérir le lac
    .target Botanist Taerix
step << Mage
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_Lancez|r |T135812:0|t[Boule de feu] |cRXP_WARN_sur le |cRXP_ENEMY_Mannequin d'entraînement|r jusqu'à obtenir un|r |T135731:0|t[(Arcanes) Missles!] |cRXP_WARN_proc, puis lancez|r |T136096:0|t[Projectiles des Arcanes]|cRXP_WARN_. Répétez ceci deux fois|r
    >>|cRXP_WARN_Lancez|r |T135848:0|t[Veilleur du puits Solanian] |cRXP_WARN_sur le |cRXP_ENEMY_Mannequin d'entraînement|r. Répétez ceci deux fois|r
    .complete 26968,1 << cata -- Practice Arcane Missiles (1)
    .complete 26968,2 << !cata -- Practice Frost Nova (1)
    .mob Training Dummy
step << Shaman
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_Lancez|r |T460956:0|t[La frappe primordiale] |cRXP_WARN_sur le |cRXP_ENEMY_Entraînement Leurre|r 3 fois|r
    .complete 26969,1 << cata -- Practice Primal Strike (1)
    .complete 26969,2 << !cata -- Practice Primal Strike (1)
    .mob Training Dummy
step << Hunter
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_Lancez|r |T132213:0|t[Tir Stable] |cRXP_WARN_sur le |cRXP_ENEMY_Mannequin d'entraînement|r 5 fois|r
    .complete 26963,1 << cata -- Practice Steady Shot (1)
    .complete 26963,2 << !cata -- Practice Steady Shot (1)
    .mob Training Dummy
step << Warrior
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_Lancez|r |T132337:0|t[À la charge !] |cRXP_WARN_sur le|r |cRXP_ENEMY_Mannequin d'entraînement|r
    .complete 26958,1 << cata -- Practice Charge (1)
    .complete 26958,2 << !cata -- Practice Charge (1)
    .mob Training Dummy
step << Paladin
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_Lancez|r |T135960:0|t[Sceau de piété] |cRXP_WARN_suivi de|r |T135959:0|t[Jugement] |cRXP_WARN_sur le|r |cRXP_ENEMY_Entraînement Leurre|r
    .complete 26966,1 << cata -- Practice Charge (1)
    .complete 26966,2 << !cata -- Practice Charge (1)
    .mob Training Dummy
step << Priest !cata
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_Lancez|r |T136207:0|t[Mot de l'ombre : Douleur] |cRXP_WARN_sur un |cRXP_ENEMY_Entraînement Leurre|r 5 fois|r
    .complete 26970,2 -- Shadow Word: Pain (5)
    .mob Training Dummy
step
	#completewith SpareParts
	.goto Azuremyst Isle,79.987,47.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aurok|r
	.vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Aurok
step
    .isQuestComplete 9283
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r patrouille aux alentours
    .turnin 9283 >> Rendez la quête Sauvez les rescapés !
    .target Zalduun
step << !cata Priest
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r patrouille aux alentours
    .turnin 26970 >> Rendre la quête Veilleur du puits Solanian
    .target Zalduun
step << Mage
	.goto Azuremyst Isle,79.582,48.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valaatu|r
    .turnin 26968 >> Rendez la quête Projectiles des Arcanes << cata
    .turnin 26968 >> Rendez la quête Nova de givre << !cata
    .target Valaatu
step << Shaman
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Firmanvaar|r
    .turnin 26969 >> Rendre la quête La frappe primordiale
    .target Firmanvaar
step << Hunter
	.goto Azuremyst Isle,79.886,49.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keilnei|r
	.turnin 26963 >> Rendez la quête Comment assurer vos tirs
    .target Keilnei
step << Warrior
    .goto Azuremyst Isle,79.587,49.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kore|r
    .turnin 26958 >> Rendez la quête Votre première leçon
    .target Kore
step << Paladin
    #loop
    .goto Azuremyst Isle,79.695,48.236,7,0
    .goto Azuremyst Isle,80.12,49.13,7,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aurelon|r
    >>|cRXP_FRIENDLY_Aurelon|r peut patrouiller aux alentours
    .turnin 26966 >> Rendez la quête La puissance de la Lumière
    .target Aurelon
step
    #label SpareParts
    .goto Azuremyst Isle,79.419,51.235
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Technicienne Zhanaa|r
    .turnin 9305 >> Rendez la quête Pièces de rechange
    .target Technician Zhanaa
step
    .goto Azuremyst Isle,79.486,51.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Redresseur de torts Aldar|r
    .turnin 9303 >> Rendez la quête Inoculation
    .accept 9309 >> Acceptez la quête L'éclaireur disparu
    .target Vindicator Aldar
step
    #completewith SurveyorCandress
    >>Lancez [Don des Naaru] sur un|cRXP_FRIENDLY_Draenei Survivor|r. Ils sont éparpillés tout autour de la zone de départ
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
    .goto Azuremyst Isle,71.8,55.8,80,0
    .goto Azuremyst Isle,77.6,56.0,80,0
    .goto Azuremyst Isle,74.8,43.4,80,0
    .goto Azuremyst Isle,80.2,42.6,80,0
    >>Lancez [Don des Naaru] sur un|cRXP_FRIENDLY_Draenei Survivor|r. Ils sont éparpillés tout autour de la zone de départ
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
step
	#completewith BloodElfSpy
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r patrouille aux alentours
    .turnin 9283 >> Rendez la quête Sauvez les rescapés !
    .target Zalduun
step
    #label BloodElfSpy
    .goto Azuremyst Isle,79.488,51.622
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Redresseur de torts Aldar|r
    .turnin 9311 >> Rendez la quête L'espionne elfe de sang
    .turnin 9798 >> Rendez la quête Les plans des Elfes de sang
    .accept 9312 >> Acceptez la quête L'émetteur
    .target Vindicator Aldar
step
    .goto Azuremyst Isle,79.422,51.234
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Technicienne Zhanaa|r
    .turnin 9312 >> Rendez la quête L'émetteur
    .accept 9313 >> Acceptez la quête En route pour le Guet d'azur
    .target Technician Zhanaa
step << Mage cata
	.goto Azuremyst Isle,79.582,48.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valaatu|r
	.train 2136 >> Apprenez [Trait de feu]
    .target Valaatu
step << Priest cata
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r patrouille aux alentours
    .train 17 >> Apprenez [Mot de pouvoir : Bouclier]
    .target Zalduun
step << Paladin cata
    #loop
    .goto Azuremyst Isle,79.695,48.236,7,0
    .goto Azuremyst Isle,80.12,49.13,7,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aurelon|r
    >>|cRXP_FRIENDLY_Aurelon|r peut patrouiller aux alentours
	.train 465 >> Apprenez [Aura de dévotion]
    .target Aurelon
step << Warrior cata
    .goto Azuremyst Isle,79.587,49.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kore|r
	.train 34428 >> Entraînez-vous à |T132342:0|t[Ivresse de la victoire]
    .target Kore
step << Shaman cata
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Firmanvaar|r
	.train 8042 >> |T136026:0|t[Horion de terre]
    .target Firmanvaar
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
	.accept 9612 >> Acceptez la quête Merci du fond du cœur !
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
--not sure what the deal with weapons are
step << Shaman
    .goto Azuremyst Isle,49.577,53.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nabek|r
    >>|cRXP_BUY_Achetez et équipez un|r [Bâton de marche]
    .collect 2495,1 --Walking Stick (1)
    .target Nabek
    .money <0.0480
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Shaman
    +Équipez le |T135145:0|t[Canne de marche]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step
    .goto Azuremyst Isle,48.960,51.063
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dulvi|r
    .train 2575 >>Apprenez [Minage]
    .target Dulvi
step
    .goto Azuremyst Isle,48.391,51.771
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anachorète Fateema|r
    .accept 9463 >> Acceptez la quête Usage médical
    .target Anchorite Fateema
step
	.isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Exarque Menelaous|r
	.turnin 9612 >> Rendez la quête Merci du fond du cœur !
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
step << Shaman cata
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tuluun|r
    .train 331 >> Apprenez [Vague de soins]
    .target Tuluun
    .xp <7,1
step
    .goto Azuremyst Isle,48.7,50.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Technicien Dyvuun|r
    .turnin 9313 >> Rendez la quête En route pour le Guet d'azur
    .target Technician Dyvuun
step
    .goto Azuremyst Isle,48.4,49.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Hôtesse Chellan|r.
    .turnin 9314 >> Rendez la quête Une demande du Guet d'azur
    .accept 9603 >>Acceptez la quête Des lits, des bandages, etc.
    .target Caregiver Chellan
step
	.goto Azuremyst Isle,48.336,49.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Hôtesse Chellan|r.
    .home >> Liez votre Pierre de foyer à Guet d'azur
    .target Caregiver Chellan
step
    .goto Azuremyst Isle,49.67,49.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zaldaan|r.
    .turnin 9603 >>Rendez la quête Des lits, des bandages, etc.
    .target Zaldaan
step << Paladin cata
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tullas|r
    .train 635 >> Entraînez-vous à |T135920:0|t[Lumière sacrée]
    .target Tullas
    .xp <7,1
step << Priest cata
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guvan|r
    .accept 9586 >> Acceptez la quête Aider Tavara
    .train 588 >> Apprenez |T135926:0|t[Feu intérieur]
    .target Guvan
    .xp <7,1
step << Priest cata
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guvan|r
    .accept 9586 >> Acceptez la quête Aider Tavara
    .target Guvan
step << Warrior cata
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ruada|r
    .train 772 >> Apprenez [Pourfendre]
    .target Ruada
    .xp <7,1
step << Hunter cata
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Actéon|r.
    .train 2973 >> Apprenez [Attaque du Raptor]
    .target Acteon
step
	#completewith level8
    >>Gardez un œil pour un |cRXP_FRIENDLY_Draenei Youngling|r
    >>Lorsqu'ils sont en combat, lancez [Don des Naaru] sur eux, puis acceptez la quête
	.accept 9612 >> Acceptez la quête Merci du fond du cœur !
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
    >>|cRXP_WARN_Lancez|r |T135907:0|t[Soins rapides] |cRXP_WARN_sur|r |cRXP_FRIENDLY_Tavara|r
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
step << Warrior/Rogue/Paladin
    .goto Azuremyst Isle,46.355,71.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Forgeron Calypso|r
    >>Ceci vous permettra de créer des [Pierre à aiguiser brute] qui vont augmenter vos dégâts des armes de 2 << Warrior/Rogue
    >>Ceci pour permettra de créer des [Caillou brut] qui vont augmenter vos dégâts des armes de 2 << Paladin
    >>Si vous ne voulez pas le faire, vous pouvez passer cette étape
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Amiral Odesyus|r et à |cRXP_FRIENDLY_Prêtresse Kyleen Il'dinare|r
    .turnin 9506 >> Rendez la quête Il faut bien commencer quelque part
    .target +Admiral Odesyus
    .goto Azuremyst Isle,47.038,70.206
    .accept 9530 >> Acceptez la quête Un plan bourgeonne
    .accept 9513 >> Acceptez la quête Reconquérir les ruines
    .target +Priestess Kyleen Il'dinare
    .goto Azuremyst Isle,47.131,70.289
step
    .goto Azuremyst Isle,47.243,69.998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archéologue Adamant Cœur-de-Fer|r
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
    .goto Azuremyst Isle,50.43,63.70
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    >>Passez cette étape si vous êtes déjà proche du Guet d'Azur
step
	.goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Actéon|r.
	.accept 9454 >> Acceptez la quête La grande chasse aux frôle-lune
    .turnin 9454 >> Rendez la quête La grande chasse aux frôle-lune
    .accept 10324 >> Acceptez la quête La grande chasse aux frôle-lune
    .target Acteon
step << Hunter cata
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Actéon|r.
    .train 5116 >> Apprenez [Trait de choc]
    .train 82243 >> Apprenez [Parade]
    .target Acteon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anachorète Fateema|r et |cRXP_FRIENDLY_Daedal|r
    .turnin 9463 >> Rendez la quête Usage médical
    .target +Anchorite Fateema
    .goto Azuremyst Isle,48.390,51.770
    .accept 9473 >> Acceptez la quête Une tentative alternative
    .target +Daedal
    .goto Azuremyst Isle,48.392,51.482
step << Shaman cata
    .train 331,1
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tuluun|r
    .train 331 >> Apprenez [Vague de soins]
    .train 324 >> Entraînez-vous à |T136051:0|t[Bouclier de foudre]
    .target Tuluun
step << Shaman cata
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tuluun|r
    .train 324 >> Entraînez-vous à |T136051:0|t[Bouclier de foudre]
    .target Tuluun
step << Paladin cata
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tullas|r
    .train 635 >> Entraînez-vous à |T135920:0|t[Lumière sacrée]
    .target Tullas
step << Priest cata
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guvan|r
    .turnin 9586 >> Rendez la quête Aider Tavara
    .trainer >> Apprenez vos sorts de classe
    .target Guvan
step << Mage cata
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Semid|r
    .trainer >> Apprenez vos sorts de classe
    .target Semid
step << Warrior cata
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ruada|r
    .train 772 >> Apprenez [Pourfendre]
    .target Ruada
step
    .goto Azuremyst Isle,48.9,51.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dulvi|r
    .accept 10428 >> Acceptez la quête Le pêcheur disparu
    .target Dulvi
step
    .goto Azuremyst Isle,49.365,51.086
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cryptographe Aurren|r
    .accept 9538 >> Acceptez la quête Apprendre la langue
    .target Cryptographer Aurren
step
	.use 23818 >>Utilisez le [Manuel de langue furbolg calmepin]
    .complete 9538,1 --Stillpine Furbolg Language Primer Read
step
    .goto Azuremyst Isle,49.439,50.977
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Totem d'Akida|r
    .turnin 9538 >> Rendez la quête Apprendre la langue
    .accept 9539 >> Acceptez la quête Le totem de Coo
    .target Totem of Akida
step
	#completewith AncientRelics
    >>Gardez un œil pour un |cRXP_FRIENDLY_Draenei Youngling|r
    >>Lorsqu'ils sont en combat, lancez [Don des Naaru] sur eux, puis acceptez la quête
	.accept 9612 >> Acceptez la quête Merci du fond du cœur !
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Le totem de Coo|r
    .turnin 9539 >> Rendez la quête Le totem de Coo
    .accept 9540 >> Acceptez la quête Le totem de Tikti
    .target Totem of Coo
step
    #completewith next
    .goto Azuremyst Isle,54.531,40.493,10 >> Descendez de ce côté de la montagne en faisant attention ici
step
    #loop
    .goto Azuremyst Isle,51.9,32.4,60,0
    .goto Azuremyst Isle,44.2,37.5,60,0
	>>Ramassez les |cRXP_LOOT_Azure Snapdragons|r sur le sol
    .complete 9473,1 --Collect Azure Snapdragon Bulb (x5)
step
    #label TotemofTikti
    .goto Azuremyst Isle,64.475,39.772
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Le totem de Tikti|r
    .turnin 9540 >> Rendez la quête Le totem de Tikti
    .accept 9541 >> Acceptez la quête Le totem de Yor
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Le totem de Yor|r sous l'eau
    .turnin 9541 >> Rendez la quête Le totem de Yor
    .accept 9542 >> Acceptez la quête Le totem de Vark
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Le totem de Vark|r
    .turnin 9542 >> Rendez la quête Le totem de Vark
    .accept 9544 >> Acceptez la quête La prophétie d'Akida
    .target Totem of Vark
step
    .aura -30448
    +Cliquez sur le |cRXP_WARN_buff|r [Ombre de la forêt] pour le retirer
step
    #loop
    .goto Azuremyst Isle,27.43,63.24,70,0
    .goto Azuremyst Isle,27.87,66.78,70,0
    .goto Azuremyst Isle,25.04,67.67,70,0
	>>Tuez les |cRXP_ENEMY_Bristlelimb Furbolgs|r, |cRXP_ENEMY_Bristlelimb Windcallers|r et les |cRXP_ENEMY_Bristlelimb Ursas|r. Dépouillez-les pour leur |cRXP_LOOT_Bristlelimb Keys|r
    >>Ouvrez les |cRXP_PICK_Bristlelimb Cages|r pour libérer les |cRXP_FRIENDLY_Stillpine Captives|r
    .collect 23801,8,9544,1,-1 -- Bristlelimb Key
    .complete 9544,1 --Stillpine Captive Freed (x8)
step
    #loop
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
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    .goto Azuremyst Isle,47.243,69.998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archéologue Adamant Cœur-de-Fer|r
    .turnin 9523 >> Rendez la quête Fragile et précieux - à manipuler avec précaution
    .target Archaeologist Adamant Ironheart
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Admiral Odesyus|r
    .turnin 9531 >> Rendez la quête L'art du camouflage ne se perd pas
    .accept 9537 >> Acceptez la quête Le gnominé est…
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
    .turnin 9537 >> Rendez la quête Le gnominé est…
    .accept 9602 >> Acceptez la quête Délivrez-les du mal…
    .target Admiral Odesyus
step
    .goto Azuremyst Isle,49.9,51.9
    .xp 9+2430 >> Farmez jusqu'à 2430+/6500xp
step
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour vous téléporter à Guet d'azur
step
    .goto Azuremyst Isle,49.367,51.082
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arugoo des Calmepins|r
    .turnin 9544 >> Rendez la quête La prophétie d'Akida
    .target Arugoo of the Stillpine
step
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Actéon|r.
    .turnin 9453 >> Rendez la quête Trouvez Actéon !
    .turnin 10324 >> Rendez la quête La grande chasse aux frôle-lune
    .target Acteon
step
    .goto Azuremyst Isle,48.392,51.482
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daedal|r.
    .turnin 9473 >> Rendez la quête Une tentative alternative
    .target Daedal
step
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Exarque Menelaous|r
    .turnin 9456 >> Rendez la quête Nettoyage des traquenuits, île n°2
    .turnin 9602 >> Rendez la quête Délivrez-les du mal…
    .target Exarch Menelaous
step
    .isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Exarque Menelaous|r
    .turnin 9612 >> Rendez la quête Merci du fond du cœur !
    .target Exarch Menelaous
step << Shaman cata
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tuluun|r
    .trainer >> Apprenez vos sorts de classe
    .target Tuluun
step << Paladin cata
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tullas|r
    .trainer >> Apprenez vos sorts de classe
    .target Tullas
step << Priest cata
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guvan|r
    .trainer >> Apprenez vos sorts de classe
    .target Guvan
step << Mage cata
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Semid|r
    .trainer >> Apprenez vos sorts de classe
    .target Semid
step << Warrior cata
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ruada|r
    .trainer >> Apprenez vos sorts de classe
    .target Ruada
step << Hunter cata
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Actéon|r.
    .trainer >> Apprenez vos sorts de classe
    .target Acteon
step
    .goto Azuremyst Isle,49.712,49.102
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zaldaan|r.
    .accept 9604 >>Acceptez la quête Sur les ailes d'un hippogriffe
    .target Zaldaan
step
    .goto Azuremyst Isle,49.712,49.102
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zaldaan|r.
    .fly The Exodar >> Volez vers l'Exodar
    .target Zaldaan
step
    .goto The Exodar,57.016,50.081
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nurguni|r
    .turnin 9604 >> Rendez la quête Sur les ailes d'un hippogriffe
    .accept 9605 >> Acceptez la quête Le maître des hippogriffes Stephanos
    .target Nurguni
step << Warrior/Paladin
    .goto The Exodar,69.945,90.749
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ven|r
    >>|cRXP_BUY_Achetez une|r [Claymore] |cRXP_BUY_au marchand|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 1198,1 -- Claymore (1)
    .money <0.2142
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Ven
step << Shaman
    .goto The Exodar,69.945,90.749
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ven|r
    >>|cRXP_BUY_Achetez-lui une|r |T132402:0|t[Hachette] |cRXP_BUY_|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 853,1 -- Hatchet (1)
    .money <0.1927
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .target Ven
step << Hunter
    .goto The Exodar,47.904,89.780
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ven|r
    >>|cRXP_BUY_Achetez un|r |T135499:0|t[Arc laminé à double courbure] |cRXP_BUY_chez elle|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 2507,1 --Collect Laminated Recurve Bow (1)
    .money <0.1402
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .target Ven
step << Warrior/Paladin
    #optional
    #completewith end
    +Équipez la [Claymore]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Shaman
    #optional
    #completewith end
    +|cRXP_WARN_Équipez la|r |T132402:0|t[Hachette] |cRXP_WARN_à votre main principale|r
    .use 853
    .itemcount 853,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
step << Hunter
    #optional
    #completewith end
    +|cRXP_WARN_Équipez l'|r |T135499:0|t[Arc laminé à double courbure]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Stephanos|r
    .goto The Exodar,54.488,36.285
    .turnin 9605 >>Rendez la quête Le maître des hippogriffes Stephanos
    .target Stephanos
step
    #label end
    .goto The Exodar,54.488,36.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Stephanos|r
    .fly Lor'danel >> Envolez-vous vers Lor’danel
    .target Stephanos
]])
