if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP Guide TBC (A)
<< Alliance
#name Guide Sésame 58-60
#subgroup RestedXP Alliance Sésame 58-60
#subweight -1
#title Personnage boosté 58-60
#next 59-61 Péninsule des Flammes infernales

step
+Dès que vous vous connectez pour la première fois, terminez la petite section tutorielle devant votre formateur de classe pour accéder à tout l'équipement amélioré
.use 185964
.use 186051
.use 186052
.use 186053
.use 186054
.use 186055
.use 186056
.use 186057
.isQuestAvailable 64035 << Alliance
.isQuestAvailable 64052 << Horde !Druid
.isQuestAvailable 64053 << Horde Druid
step
    .isOnQuest 64038
    .goto Stormwind City,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .complete 64038,1 --Speak to Dungar Longdrink, the Gryphon Master (1)
    .fly Morgan's Vigil >> Fly to Veille de Morgan
    .target Dungar Longdrink
step
    .goto Burning Steppes,85.820,68.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helendis Riverhorn|r
    .accept 4182 >> Acceptez la quête La menace des draconiens
    .target Helendis Riverhorn
step
    #loop
    .goto Burning Steppes,81.8,27.8,0
    .goto Burning Steppes,91.4,32.6,0
    .goto Burning Steppes,89.8,54.6,0
    .goto Burning Steppes,90.6,43.6,0
    .goto Burning Steppes,81.8,27.8,70,0
    .goto Burning Steppes,91.4,32.6,70,0
    .goto Burning Steppes,89.8,54.6,70,0
    .goto Burning Steppes,90.6,43.6,70,0
    >>Tuez les |cRXP_ENEMY_Black Broodlings|r, |cRXP_ENEMY_Black Dragonspawns|r, |cRXP_ENEMY_Black Wyrmkins|r et un |cRXP_ENEMY_Black Drake|r
    .complete 4182,1 -- Black Broodling slain (15)
    .mob +Black Broodling
    .complete 4182,2 -- Black Dragonspawn slain (10)
    .mob +Black Dragonspawn
    .complete 4182,4 -- Black Wyrmkin slain (4)
    .mob +Black Wyrmkin
    .complete 4182,3 -- Black Drake slain
    .mob +Black Drake
    .isOnQuest 4182
step
    .goto Burning Steppes,85.820,68.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helendis Riverhorn|r
    .turnin 4182 >> Rendez la quête La menace des draconiens
    .accept 4183 >> Acceptez la quête Les véritables maîtres
    .target Helendis Riverhorn
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Burning Steppes,84.333,68.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Borgus Stoutarm|r
    .fly Redridge >> Volez vers Les Carmines
    .target Borgus Stoutarm
step
    .isQuestTurnedIn 4182
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 4183 >> Rendez la quête Les véritables maîtres
    .accept 4184 >> Acceptez la quête Les véritables maîtres
    .target Magistrate Solomon
step << Mage
    .isOnQuest 4184
    .cast 3561 >>Lancez [Téléportation : Stormwind]
    .usespell 3561
    .zoneskip Stormwind City
step << !Mage
    .isQuestTurnedIn 4182
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fly Stormwind >> Volez à Stormwind
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Stormwind City,47.87,31.31,8,0
    .goto Stormwind City,47.87,31.31,6 >>Dirigez-vous vers |cRXP_FRIENDLY_Royal Factor Bathrilor|r à l'étage
step
    .isQuestTurnedIn 4182
    .goto Stormwind City,78.213,17.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
    .turnin 4184 >> Rendez la quête Les véritables maîtres
    .accept 4185 >> Acceptez la quête Les véritables maîtres
    .target Highlord Bolvar Fordragon
step
    .isQuestTurnedIn 4182
    .goto Stormwind City,78.102,17.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lady Katrana Prestor|r
    .complete 4185,1 -- Advice from Lady Prestor
    .skipgossip
    .target Lady Katrana Prestor
step
    .isQuestTurnedIn 4182
    .goto Stormwind City,78.213,17.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
    .turnin 4185 >> Rendez la quête Les véritables maîtres
    .accept 4186 >> Acceptez la quête Les véritables maîtres
    .target Highlord Bolvar Fordragon
step
    #completewith next
    .goto Stormwind City,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Redridge >> Volez vers Les Carmines
    .target Dungar Longdrink
    .zoneskip Redridge Mountains
step
    .isQuestTurnedIn 4182
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 4186 >> Rendez la quête Les véritables maîtres
    .accept 4223 >> Acceptez la quête Les véritables maîtres
    .target Magistrate Solomon
step
    #completewith next
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fly Burning Steppes>> Volez jusqu'aux Steppes ardentes
    .target Ariena Stormfeather
    .zoneskip Burning Steppes
step
    .isQuestTurnedIn 4182
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Maxwell|r
    .turnin 4223 >> Rendez la quête Les véritables maîtres
    .target Marshal Maxwell
step
    #completewith next
    .goto Burning Steppes,84.333,68.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Borgus Stoutarm|r
    .fly Southshore >>Volez à Southshore
    .target Borgus Stoutarm
step
    .goto Hillsbrad Foothills,51.170,58.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Anderson|r
    .home >> Liez votre Pierre de Foyer à Southshore
    .target Innkeeper Anderson
    .bindlocation 271
step
	#completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darla Harris|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fly Chillwind Camp >>Volez jusqu'à la Pointe du Noroît
    .target Darla Harris
    .zoneskip Western Plaguelands
step
	.goto Western Plaguelands,42.909,84.494
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anchorite Truuen|r
    >>Passez cette étape si il n'est pas là
    .accept 9474 >> Acceptez la quête La marque du Porteur de Lumière
	.target Anchorite Truuen
step
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .accept 5092 >> Acceptez la quête Nettoyer le passage
    .target Commander Ashlam Valorfist
step
    .goto Western Plaguelands,42.967,83.546
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Argent Officer Pureheart|r
    .accept 5401 >> Acceptez la quête Brevet de l'Aube d'argent
    .turnin 5401 >> Rendez la quête Brevet de l'Aube d'argent
    .target Argent Officer Pureheart
step
    #completewith ADC
    .cast 17670 >> Équipez le [Brevet de l'Aube d'Argent] pour commencer à récolter les [Pierre du fléau]
    .use 12846
step
    .goto Western Plaguelands,43.419,84.834
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nathaniel Dumah|r
    .accept 5903 >> Acceptez la quête Une Plaie sur la Croisade
    .target Nathaniel Dumah
step
    #completewith next
    .goto Western Plaguelands,42.924,85.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r
    .fly Eastern Plaguelands >> Volez aux Maleterres de l'est
    .target Bibilfaz Featherwhistle
    .zoneskip Eastern Plaguelands
step
    .goto Eastern Plaguelands,79.405,63.983
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Caretaker Alen|r
    .accept 5281 >> Acceptez la quête Âmes tourmentées
    .accept 6021 >> Acceptez la quête Zaeldarr le Banni
    .target Caretaker Alen
step << Hunter
    #sticky
    .tame 8602 >> Si votre familier n'a pas d'autre compétence que [Grondement]|cRXP_WARN_, abandonnez votre familier et dressez en une |cRXP_ENEMY_Bat|r de niveau 58 sur votre route pour Pestebois|r
    >>Achetez des [Cèpe des rois séchés] pour nourrir votre nouveau familier
    .collect 8948,20
    .goto Eastern Plaguelands,79.5,64.0
step
    #sticky
    .abandon 5211 >>Abandonnez Défenseurs de Darrowshire si vous avez cette quête
step
    #loop
    .goto Eastern Plaguelands,41.2,25.2,0
    .goto Eastern Plaguelands,42.1,38.2,0
    .goto Eastern Plaguelands,32.0,35.8,0
    .goto Eastern Plaguelands,33.8,25.8,0
    .goto Eastern Plaguelands,29.9,23.1,0
    .goto Eastern Plaguelands,26.5,37.5,0
    .goto Eastern Plaguelands,20.4,20.8,0
    .goto Eastern Plaguelands,31.4,29.6,0
    .goto Eastern Plaguelands,41.2,25.2,70,0
    .goto Eastern Plaguelands,42.1,38.2,70,0
    .goto Eastern Plaguelands,32.0,35.8,70,0
    .goto Eastern Plaguelands,33.8,25.8,70,0
    .goto Eastern Plaguelands,29.9,23.1,70,0
    .goto Eastern Plaguelands,26.5,37.5,70,0
    .goto Eastern Plaguelands,20.4,20.8,70,0
    .goto Eastern Plaguelands,31.4,29.6,70,0
    >>Ouvrez les |cRXP_PICK_Large Termite Mounds|r à travers Pestebois. Récupérez les |cRXP_LOOT_Termites des Maleterres|r
    .complete 5903,1 --Collect Plagueland Termites (x100)
step
    #label Egan
    .goto Eastern Plaguelands,14.448,33.740
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Egan|r
    .turnin 5281 >> Rendez la quête Âmes tourmentées
    .target Egan
step
    .hs >> Utilisez votre Pierre de Foyer pour revenir à Southshore
    >>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r << !Warrior !Rogue
	>>|cRXP_BUY_Achetez de la nourriture si besoin|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .zoneskip Western Plaguelands
    .bindlocation 271,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darla Harris|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fly Chillwind Camp >>Volez jusqu'à la Pointe du Noroît
    .target Darla Harris
    .zoneskip Western Plaguelands
step
	.goto Western Plaguelands,42.909,84.494
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anchorite Truuen|r
    >>Passez cette étape si il n'est pas là
    .accept 9474 >> Acceptez la quête La marque du Porteur de Lumière
	.target Anchorite Truuen
step
    .goto Western Plaguelands,48.91,80.84,70,0
    .goto Western Plaguelands,50.01,76.90
    >>Tuez les |cRXP_ENEMY_Skeletal Flayers|r et les |cRXP_ENEMY_Slavering Ghouls|r
    .complete 5092,1 -- Skeletal Flayer slain (10)
    .mob +Skeletal Flayer
    .complete 5092,2 -- Slavering Ghoul slain (10)
    .mob +Slavering Ghoul
step
    .goto Western Plaguelands,49.2,78.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marlene Redpath|r
    >>|cRXP_FRIENDLY_Marlene Redpath|r peut aussi être à l'étage supérieur
    .accept 5142 >> Acceptez la quête La petite Pamela
    .target Marlene Redpath
step
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .turnin 5092 >> Rendez la quête Nettoyer le passage
    .accept 5215 >> Acceptez la quête Les chaudrons du Fléau
    .accept 5097 >> Acceptez la quête Tout au long des tours de guet
    .target Commander Ashlam Valorfist
step
    .goto Western Plaguelands,42.972,84.501
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_High Priestess MacDonnell|r
    .turnin 5215 >> Rendez la quête Les chaudrons du Fléau
    .accept 5216 >> Acceptez la quête Cible : le Champ de Gangrepierre
    .target High Priestess MacDonnell
step
    .goto Western Plaguelands,43.418,84.834
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nathaniel Dumah|r
    .turnin 5903 >> Rendez la quête Une Plaie sur la Croisade
    .accept 5904 >> Acceptez la quête Une Plaie sur la Croisade
    .target Nathaniel Dumah
step
    .goto Western Plaguelands,40.116,71.561,-1
    .goto Western Plaguelands,40.038,71.713,-1
    .use 12815 >> Utilisez les [Torche-balise] près de l'entrée de la Tour
    .complete 5097,1 --Tower One marked
step
    .goto Western Plaguelands,37.015,57.145
    >>Tuez |cRXP_ENEMY_Cauldron Lord Bilemaw|r. Dépouillez-le pour le |cRXP_LOOT_Felstone Field Cauldron Key|r
    >>|cRXP_ENEMY_Cauldron Lord Bilemaw|r peut apparaître lorsque vous approchez du |cRXP_PICK_Scourge Cauldron|r
    .complete 5216,1 -- Felstone Field Cauldron Key (1)
    .unitscan Cauldron Lord Bilemaw
step
    .goto Western Plaguelands,37.194,56.860
    >>Cliquez sur le |cRXP_PICK_Scourge Cauldron|r
    .turnin 5216 >> Rendez la quête Cible : le Champ de Gangrepierre
    .accept 5217 >> Acceptez la quête Retour au camp du Noroît
step
    .goto Western Plaguelands,42.326,66.105,-1
    .goto Western Plaguelands,42.422,66.222,-1
    .use 12815 >> Utilisez la [Torche-balise] près de l'entrée de la Tour
    .complete 5097,2 --Tower Two marked
step
    .goto Western Plaguelands,44.217,63.319,-1
    .goto Western Plaguelands,44.247,63.131,-1
    .use 12815 >> Utilisez la [Torche-balise] près de l'entrée de la Tour
    .complete 5097,3 --Tower Three marked
step
    #label ADC
    .goto Western Plaguelands,46.681,71.135,-1
    .goto Western Plaguelands,46.558,71.156,-1
    .use 12815 >> Utilisez la [Torche-balise] près de l'entrée de la Tour
    .complete 5097,4 --Tower Four marked
step
    #completewith next
    .subzone 3197 >> Voyagez jusqu'à la Pointe du Noroît
step
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .turnin 5097 >> Rendez la quête Tout au long des tours de guet
    .accept 5533 >> Acceptez la quête Scholomance
    .target Commander Ashlam Valorfist
step
    #sticky
    #optional
    .isQuestTurnedIn 5097
    .destroy 12815 >> Détruisez la [Torche-balise]
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alchemist Arbington|r
    >>N'acceptez pas encore la quête suivante
    .turnin 5533 >> Rendez la quête Scholomance
    .accept 5537 >>Acceptez la quête Fragments de squelette
    .target Alchemist Arbington
step
    .goto Western Plaguelands,42.972,84.501
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_High Priestess MacDonnell|r
    .turnin 5217 >> Rendez la quête Retour au camp du Noroît
    .accept 5219 >> Acceptez la quête Cible : les Larmes de Dalson
    .target High Priestess MacDonnell
step
    .goto Western Plaguelands,53.733,64.662
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mulgris Deepriver|r
    >>Les |cRXP_ENEMY_Goules glaciales|r |cRXP_WARN_lancent|r |T135848:0|t[Gel instantané] |cRXP_WARN_. Cette capacité vous étourdira pendant 5 secondes. Évitez d'en engager plusieurs à la fois|r
    -->>|cRXP_WARN_If you have an Interact with Target/Mouseover keybind you can talk to |cRXP_FRIENDLY_Mulgris Deepriver|r from outside the house which is a lot safer|r
    .accept 4984 >> Acceptez la quête La faune et la flore souffrent aussi
    .target Mulgris Deepriver
step
    #loop
    .goto Western Plaguelands,49.2,58.4,0
    .goto Western Plaguelands,51.6,47.6,0
    .goto Western Plaguelands,43.0,48.2,0
    .goto Western Plaguelands,43.4,57.8,0
    .goto Western Plaguelands,49.2,58.4,70,0
    .goto Western Plaguelands,51.6,47.6,70,0
    .goto Western Plaguelands,43.0,48.2,70,0
    .goto Western Plaguelands,43.4,57.8,70,0
    .goto Western Plaguelands,46.6,40.4,70,0
    >>Tuez les |cRXP_ENEMY_Diseased Wolves|r
    >>Les |cRXP_ENEMY_Diseased Wolves|r |cRXP_WARN_partagent leur spawn avec les |cRXP_ENEMY_Carrion Lurkers|r. Il se peut que vous deviez en tuer pour que les |cRXP_ENEMY_Diseased Wolves|r respawn|r
    .complete 4984,1 --Kill Diseased Wolf (x8)
    .unitscan Diseased Wolf
step
    .goto Western Plaguelands,47.796,50.671
    >>Entrez dans la grande des Larmes de Dalson
    >>Cliquez sur le |cRXP_PICK_Mrs. Dalson's Diary|r sur le sol
    .accept 5058 >> Acceptez la quête Journal de Mme Dalson
    .turnin 5058 >> Rendez la quête Journal de Mme Dalson
step
    .goto Western Plaguelands,47.86,49.88,25,0
    .goto Western Plaguelands,48.48,51.56,25,0
    .goto Western Plaguelands,47.39,51.77,25,0
    .goto Western Plaguelands,46.64,49.21,25,0
    .goto Western Plaguelands,47.86,49.88
    >>Tuez le |cRXP_LOOT_Wandering Skeleton|r. Dépouillez-le pour sa |cRXP_LOOT_Dalson Outhouse Key|r
    >>|cRXP_WARN_Les |cRXP_LOOT_Wandering Skeleton|r patrouillent autour de la grange et de la maison dans les Larmes de Dalson|r
    .collect 12738,1,5060,1 --Collect Dalson Outhouse Key (x1)
    .unitscan Wandering Skeleton
step
    #completewith next
    .goto Western Plaguelands,48.109,49.654
    >>Cliquez sur la |cRXP_PICK_Outhouse|r pour invoquer |cRXP_ENEMY_Farmer Dalson|r
    .turnin 5059 >> Rendez la quête Enfermé
step
    .goto Western Plaguelands,48.115,49.814
    >>Tuez le |cRXP_ENEMY_Farmer Dalson|r. Dépouillez-le pour sa|cRXP_LOOT_Dalson Cabinet Key|r
    .collect 12739,1,5060,1 --Collect Dalson Cabinet Key (x1)
    .mob Farmer Dalson
step
    .goto Western Plaguelands,47.353,49.626
    >>Cliquez sur le |cRXP_PICK_Locked Cabinet|r à l'étage dans la maison
    .turnin 5060 >> Rendez la quête Enfermé
step
    .goto Western Plaguelands,46.156,52.427
    >>Tuez le |cRXP_ENEMY_Cauldron Lord Malvinious|r. Dépouillez-le pour sa |cRXP_LOOT_Dalson's Tears Cauldron Key|r
    >>|cRXP_ENEMY_Cauldron Lord Malvinious|r peut apparaître lorsque vous approchez du |cRXP_PICK_Cauldron|r
    .complete 5219,1 -- Felstone Field Cauldron Key (1)
    .unitscan Cauldron Lord Malvinious
step
    #label DalsonCauldron
    .goto Western Plaguelands,46.176,52.009
    >>Cliquez sur le |cRXP_PICK_Scourge Cauldron|r
    .turnin 5219 >> Rendez la quête Cible : les Larmes de Dalson
    .accept 5220 >> Acceptez la quête Retour au camp du Noroît
step
    .goto Western Plaguelands,48.348,31.996
    >>Cliquez sur le |cRXP_PICK_Northridge Lumber Mill Crate|r pour placer le |cRXP_PICK_Termite Barrel|r et cliquez sur le |cRXP_PICK_Termite Barrel|r ensuite
    .skipgossip
    .turnin 5904 >> Rendez la quête Une Plaie sur la Croisade
    .accept 6389 >> Acceptez la quête Une Plaie sur la Croisade
step
    .goto Western Plaguelands,51.923,28.062
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kirsta Deepshadow|r
    .accept 6004 >> Acceptez la quête Un travail inachevé
    .target Kirsta Deepshadow
step
    .goto Western Plaguelands,50.85,40.68,60,0
    .goto Western Plaguelands,51.97,44.47,60,0
    .goto Western Plaguelands,41.23,51.54,60,0
    .goto Western Plaguelands,50.85,40.68
    >>Tuez les |cRXP_ENEMY_Scarlet Medics|r, |cRXP_ENEMY_Scarlet Hunters|r, |cRXP_ENEMY_Scarlet Mages|r et les |cRXP_ENEMY_Scarlet Knights|r
    >>|cRXP_ENEMY_Scarlet Medics|r |cRXP_WARN_et les |cRXP_ENEMY_Scarlet Hunters|r partagent leur respawn|r
    >>|cRXP_ENEMY_Scarlet Mages|r |cRXP_WARN_et les |cRXP_ENEMY_Scarlet Knights|r partagent leur respawn|r
    .complete 6004,1 --Scarlet Medic (2)
    .mob +Scarlet Medic
    .complete 6004,2 --Scarlet Hunter (2)
    .mob +Scarlet Hunter
    .complete 6004,3 --Scarlet Mage (2)
    .mob +Scarlet Mage
    .complete 6004,4 --Scarlet Knight (2)
    .mob +Scarlet Knight
step
    .goto Western Plaguelands,51.923,28.062
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kirsta Deepshadow|r
    .turnin 6004 >> Rendez la quête Un travail inachevé
    .accept 6023 >> Acceptez la quête Un travail inachevé
    .target Kirsta Deepshadow
step
    .goto Western Plaguelands,56.38,34.11,50,0
    .goto Western Plaguelands,57.83,36.10
    >>Tuez |cRXP_ENEMY_Huntsman Radley|r
    .complete 6023,1 --Kill Huntsman Radley (x1)
    .mob Huntsman Radley
step
    #completewith next
    >>Tuez |cRXP_ENEMY_Cavalier Durgen|r
    .complete 6023,2 --Kill Cavalier Durgen (x1)
    *|cRXP_WARN_Une créature de niveau 63 elite peut apparaître à la tour, si c'est le cas, soyez patient et attendez que |cRXP_ENEMY_Cavalier Durgen|r descende|r
    .unitscan Cavalier Durgen
step
    .isOnQuest 9474
    .goto Western Plaguelands,55.192,23.511
    >>Ouvrez le |cRXP_PICK_Holy Coffer|r tout en haut de la loot. Récupérez le |cRXP_LOOT_Mark of the Lightbringer|r
    .complete 9474,1 --Collect Mark of the Lightbringer (x1)
step
    #completewith next
    .goto Western Plaguelands,54.520,23.818
    >>Tuez |cRXP_ENEMY_Cavalier Durgen|r
    >>Il peut patrouiller du sommet à la base de la tour
    .complete 6023,2 --Kill Cavalier Durgen (x1)
    .unitscan Cavalier Durgen
step
    .goto Western Plaguelands,51.923,28.062
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kirsta Deepshadow|r
    .turnin 6023 >> Rendez la quête Un travail inachevé
    .accept 6025 >> Acceptez la quête Un travail inachevé
    .target Kirsta Deepshadow
step
    #completewith next
    .goto Western Plaguelands,45.7,18.8
    .subzone 190 >> Voyagez vers Âtreval
step
    .goto Western Plaguelands,45.7,18.8
    >>Montez la tour d'Âtreval
    >>Vous pouvez soit courir tout en haut et sautez en bas d'un coup, ou tuer les ennemi progressivement sur la route
    >>|cRXP_WARN_Évitez |cRXP_ENEMY_High Protector Lorik|r qui est un puissant Elite qui se balade dans Âtreval|r
    .complete 6025,1 -- Overlook Hearthglen from a high vantage point
    .unitscan High Protector Lorik
step
    .goto Western Plaguelands,51.923,28.062
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kirsta Deepshadow|r
    .turnin 6025 >> Rendez la quête Un travail inachevé
    .isQuestComplete 6025
    .target Kirsta Deepshadow
step
    #completewith next
    .subzone 3197 >> Voyagez jusqu'à la Pointe du Noroît
step
    .goto Western Plaguelands,42.972,84.501
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_High Priestess MacDonnell|r
    .target High Priestess MacDonnell
    .turnin 5220 >> Rendez la quête Retour au camp du Noroît
    .accept 5222 >> Acceptez la quête Cible : le Repaire putride
step
    .isQuestComplete 9474
	.goto Western Plaguelands,42.909,84.494
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anchorite Truuen|r
    .turnin 9474 >> Rendez la quête La marque du Porteur de Lumière
	.target Anchorite Truuen
step
    .goto Western Plaguelands,43.418,84.834
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nathaniel Dumah|r
    .turnin 6389 >> Rendez la quête Une Plaie sur la Croisade
    .target Nathaniel Dumah
step
    #completewith CountingTime
    >>Tuez les |cRXP_ENEMY_Skeletal Executioners|r et les |cRXP_ENEMY_Skeletal Acolytes|r. Dépouillez-les pour leur |cRXP_LOOT_Skeletal Fragments|r
    .complete 5537,1 -- Collect Skeletal Fragments (x15)
    .mob Skeletal Executioner
    .mob Skeletal Acolyte
step
    .goto Western Plaguelands,39.456,66.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chromie|r à l'étage
    .accept 4971 >> Acceptez la quête Une question de temps
    .target Chromie
step
    .goto Western Plaguelands,45.172,62.559,25,0
    .goto Western Plaguelands,46.858,62.040,25,0
    .goto Western Plaguelands,48.324,62.610,25,0
    .goto Western Plaguelands,48.10,63.92,20,0
    .goto Western Plaguelands,48.06,66.18
    >>Tuez les |cRXP_ENEMY_Temporal Parasites|r
    .use 12627 >>Utilisez le [Déplaceur temporel] sur les silos pour les faire apparaître. Si le silo ne brille pas en bleu alors il ne fera pas apparaître de |cRXP_ENEMY_Temporal Parasites|r
    >>|cRXP_WARN_Plusieurs |cRXP_ENEMY_Temporal Parasites|r peuvent apparaître en même, et dès qu'un parasite meurt, un autre peut apparaître instantanément. Ils vont aussi continuer à lancer |r [Lenteur] sur vous, réduisant fortement votre vitesse de déplacement et votre vitesse d'attaque
    >>|cRXP_WARN_Les |cRXP_ENEMY_Parasites|r ne peuvent pas nager ! Si vous en affrontez trop en même temps, sautez dans l'|r [|cRXP_LOOT_Water|r] pour vous échapper
    .complete 4971,1 -- Temporal Parasite slain (15)
    .mob Temporal Parasite
step
    #label CountingTime
    .isQuestTurnedIn 4971
    .goto Western Plaguelands,39.456,66.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chromie|r
    .turnin 4972 >> Rendez la quête Arrêt du temps
    .target Chromie
step
    #loop
    .goto Western Plaguelands,37.8,70.6,0
    .goto Western Plaguelands,42.6,73.8,0
    .goto Western Plaguelands,49.6,69.4,0
    .goto Western Plaguelands,49.6,63.6,0
    .goto Western Plaguelands,43.0,63.4,0
    .goto Western Plaguelands,39.8,67.4,0
    .goto Western Plaguelands,37.8,70.6,70,0
    .goto Western Plaguelands,42.6,73.8,70,0
    .goto Western Plaguelands,49.6,69.4,70,0
    .goto Western Plaguelands,49.6,63.6,70,0
    .goto Western Plaguelands,43.0,63.4,70,0
    .goto Western Plaguelands,39.8,67.4,70,0
    >>Tuez les |cRXP_ENEMY_Skeletal Executioners|r et les |cRXP_ENEMY_Skeletal Acolytes|r. Dépouillez-les pour leur |cRXP_LOOT_Skeletal Fragments|r
    .complete 5537,1 -- Collect Skeletal Fragments (x15)
    .mob Skeletal Executioner
    .mob Skeletal Acolyte
step
    .goto Western Plaguelands,53.020,65.718
    >>Cliquez sur le |cRXP_PICK_Scourge Cauldron|r
    .turnin 5222 >> Rendez la quête Cible : le Repaire putride
    .accept 5223 >> Acceptez la quête Retour au camp du Noroît
step
    .goto Western Plaguelands,53.733,64.662
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mulgris Deepriver|r
    >>Les |cRXP_ENEMY_Goules glaciales|r |cRXP_WARN_lancent|r |T135848:0|t[Gel instantané] |cRXP_WARN_. Cette capacité vous étourdira pendant 5 secondes. Évitez d'en engager plusieurs à la fois|r
    -->>|cRXP_WARN_If you have an Interact with Target/Mouseover keybind you can talk to |cRXP_FRIENDLY_Mulgris Deepriver|r from outside the house which is a lot safer|r
    .turnin 4984 >> Rendez la quête La faune et la flore souffrent aussi
    .accept 4985 >> Acceptez la quête La faune et la flore souffrent aussi
    .target Mulgris Deepriver
step
    #loop
    .goto Western Plaguelands,58.8,58.6,0
    .goto Western Plaguelands,53.6,48.0,0
    .goto Western Plaguelands,58.8,52.6,0
    .goto Western Plaguelands,67.2,46.6,0
    .goto Western Plaguelands,66.0,55.6,0
    .goto Western Plaguelands,60.8,50.8,0
    .goto Western Plaguelands,58.8,58.6,70,0
    .goto Western Plaguelands,53.6,48.0,70,0
    .goto Western Plaguelands,58.8,52.6,70,0
    .goto Western Plaguelands,67.2,46.6,70,0
    .goto Western Plaguelands,66.0,55.6,70,0
    .goto Western Plaguelands,60.8,50.8,70,0
    >>Tuez les |cRXP_ENEMY_Diseased Grizzlies|r
    >>Les |cRXP_ENEMY_Diseased Grizzlies|r |cRXP_WARN_partagent leur spawn avec les |cRXP_ENEMY_Plague Lurkers|r. il se peut que vous deviez en tuer pour que les |cRXP_ENEMY_Diseased Grizzlies|r respawn|r
    .complete 4985,1 -- Diseased Grizzly slain (8)
    .unitscan Diseased Grizzly
step
    .goto Western Plaguelands,53.733,64.662
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mulgris Deepriver|r
    >>Les |cRXP_ENEMY_Goules glaciales|r |cRXP_WARN_lancent|r |T135848:0|t[Gel instantané] |cRXP_WARN_. Cette capacité vous étourdira pendant 5 secondes. Évitez d'en engager plusieurs à la fois|r
    -->>|cRXP_WARN_If you have an Interact with Target/Mouseover keybind you can talk to |cRXP_FRIENDLY_Mulgris Deepriver|r from outside the house which is a lot safer|r
    .turnin 4985 >> Rendez la quête La faune et la flore souffrent aussi
    .accept 4986 >> Acceptez la quête La branche de chêne à glyphes << Mage
    .target Mulgris Deepriver
step
    #completewith next
    .subzone 3197 >> Voyagez jusqu'à la Pointe du Noroît
    .zoneskip Hillsbrad Foothills
step
    .goto Western Plaguelands,42.972,84.501
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_High Priestess MacDonnell|r
    .turnin 5223 >> Rendez la quête Retour au camp du Noroît
    .accept 5225 >> Acceptez la quête Cible : la Flétrissure de Gahrron
    .target High Priestess MacDonnell
step
    .goto Western Plaguelands,62.573,58.573
    >>Cliquez sur le |cRXP_PICK_Scourge Cauldron|r
    .turnin 5225 >> Rendez la quête Cible : la Flétrissure de Gahrron
    .accept 5226 >> Acceptez la quête Retour au camp du Noroît
step
    #completewith next
    .goto Eastern Plaguelands,27.850,86.245,15 >> Entrez dans le caveau de Zaeldarr
step
    .goto Eastern Plaguelands,27.467,84.853
    >>Tuez |cRXP_ENEMY_Zaeldarr the Outcast|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    .complete 6021,1 -- Zaeldarr's Head (1)
    .mob Zaeldarr the Outcast
step
    .isOnQuest 5142
    .goto Eastern Plaguelands,36.489,90.718
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pamela Redpath|r
    .turnin 5142 >> Rendez la quête La petite Pamela
    .accept 5149 >> Acceptez la quête La poupée de Pamela
    .target Pamela Redpath
step
    .isQuestTurnedIn 5601,5142
    .goto Eastern Plaguelands,36.489,90.718
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pamela Redpath|r
    .accept 5149 >> Acceptez la quête La poupée de Pamela
    .target Pamela Redpath
step
    .goto Eastern Plaguelands,38.038,92.549,15,0
    .goto Eastern Plaguelands,39.643,92.522,15,0
    .goto Eastern Plaguelands,39.622,90.079
    >>Ramassez la [|cRXP_LOOT_Pamela's Doll's Head|r], [|cRXP_LOOT_Pamela's Doll's Left Side|r] et la [|cRXP_LOOT_Pamela's Doll's Right Side|r] dans les bâtiments
    >>Elles peuvent toutes apparaître au hasard dans les 3 bâtiments de Darrowshire
    .collect 12886,1,5149,1 -- Pamela's Doll's Head (1)
    .collect 12887,1,5149,1 -- Pamela's Doll's Left Side (1)
    .collect 12888,1,5149,1 -- Pamela's Doll's Right Side (1)
step
    >>Utilisez [|cRXP_LOOT_Pamela's Doll's Head|r]|cRXP_WARN_,|r [|cRXP_LOOT_Pamela's Doll's Left Side|r] ou bien [|cRXP_LOOT_Pamela's Doll's Right Side|r] pour les combiner en |cRXP_LOOT_Pamela's Doll|r
    .complete 5149,1 --Collect Pamela's Doll (x1)
    .use 12886
    .use 12887
    .use 12888
step
    .goto Eastern Plaguelands,36.489,90.718
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pamela Redpath|r
    .turnin 5149 >> Rendez la quête La poupée de Pamela
    .accept 5152 >> Acceptez la quête Tante Marlene
    .accept 5241 >> Acceptez la quête Oncle Carlin
    .target Pamela Redpath
step
    .hs >> Utilisez votre Pierre de Foyer pour revenir à Southshore
    >>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r << !Warrior !Rogue
	>>|cRXP_BUY_Achetez de la nourriture si besoin|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .zoneskip Western Plaguelands
    .bindlocation 271,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darla Harris|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fly Chillwind Camp >>Volez jusqu'à la Pointe du Noroît
    .target Darla Harris
    .zoneskip Western Plaguelands
step
    .goto Western Plaguelands,42.972,84.501
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_High Priestess MacDonnell|r
    .turnin 5226 >> Rendez la quête Retour au camp du Noroît
    .target High Priestess MacDonnell
step
    .isQuestComplete 9474
	.goto Western Plaguelands,42.909,84.494
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anchorite Truuen|r
    .turnin 9474 >> Rendez la quête La marque du Porteur de Lumière
	.target Anchorite Truuen
step
    .goto Western Plaguelands,42.702,84.031
    .target Commander Ashlam Valorfist
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .accept 5237 >> Acceptez la quête Mission accomplie !
    .turnin 5237 >> Rendez la quête Mission accomplie !
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alchemist Arbington|r
    .turnin 5537 >> Rendez la quête Fragments de squelette
    .target Alchemist Arbington
step
    .goto Western Plaguelands,49.2,78.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marlene Redpath|r
    >>|cRXP_FRIENDLY_Marlene Redpath|r peut aussi être à l'étage supérieur
    .turnin 5152 >> Rendez la quête Tante Marlene
    .accept 5153 >> Acceptez la quête Un étrange historien
    .target Marlene Redpath
step
    .goto Western Plaguelands,49.696,76.754
    >>Cliquez sur |cRXP_PICK_Joseph Redpath's Monument|r. Ramassez le |cRXP_LOOT_Joseph's Wedding Ring|r
    .complete 5153,1 -- Collect Joseph's Wedding Ring (x1)
step
    .isQuestComplete 4971
    .goto Western Plaguelands,39.456,66.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chromie|r à l'étage
    .turnin 4971 >>Rendez la quête Une question de temps
    .accept 4972 >>Acceptez la quête Arrêt du temps
    .turnin 5153 >>Rendez la quête Un étrange historien
    .accept 5154 >>Acceptez la quête Les annales de Comté-de-Darrow
    .target Chromie
step
    .isQuestTurnedIn 4971
    #loop
    .goto Western Plaguelands,38.71,68.25,0
    .goto Western Plaguelands,38.51,69.74,0
    .goto Western Plaguelands,40.63,68.40,0
    .goto Western Plaguelands,41.08,67.45,0
    .goto Western Plaguelands,40.69,66.16,0
    .goto Western Plaguelands,41.46,69.85,0
    .goto Western Plaguelands,42.17,68.88,0
    .goto Western Plaguelands,42.67,70.31,0
    .goto Western Plaguelands,38.71,68.25,20,0
    .goto Western Plaguelands,38.51,69.74,20,0
    .goto Western Plaguelands,40.63,68.40,20,0
    .goto Western Plaguelands,41.08,67.45,20,0
    .goto Western Plaguelands,40.69,66.16,20,0
    .goto Western Plaguelands,41.46,69.85,15,0
    .goto Western Plaguelands,42.17,68.88,20,0
    .goto Western Plaguelands,42.67,70.31,20,0
    >>Ouvrez les |cRXP_PICK_Small Lockboxes|r. Ramassez les |cRXP_LOOT_Andorhal Watches|r
    >>Elles se trouvent à l'intérieur des ruines des maisons brûlées
    .complete 4972,1 --Collect Andorhal Watch (x5)
step
    #completewith next
    .goto Western Plaguelands,43.822,69.250,10,0 >> Entrez dans la mairie des Ruines d'Andorhal
step
    .goto Western Plaguelands,43.50,69.46
    >>Entrez dans la mairie des Ruines d'Andorhal
    >>Ouvrez les |cRXP_PICK_Musty Tomes|r. Récupérez les |cRXP_LOOT_Annals of Darrowshire|r
    >>|cRXP_WARN_Les bons |cRXP_PICK_Musty Tome|r auront leurs pages complètement sombres ou d'une teinte marron. Si leurs pages sont à moitié blanches ou à moitié noires, il s'agit de pièges|r
    >>|cRXP_WARN_Parfois tous les |cRXP_PICK_Musty Tomes|r seront des pièges et vous serez forcé de tous les ouvrir afin que les bons apparaissent|r
    .complete 5154,1 --Collect Annals of Darrowshire (x1)
    .link https://youtu.be/GUb1Ny4NwQw >> Cliquez ici pour un guide vidéo sur commence identifier les bons |cRXP_PICK_Musty Tome|r
step
    .goto Western Plaguelands,39.456,66.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chromie|r
    .turnin 4972 >>Rendez la quête Arrêt du temps
    .turnin 5154 >>Rendez la quête Les annales de Comté-de-Darrow
    .accept 5210 >>Acceptez la quête Frère Carlin
    .target Chromie
step
    .goto Western Plaguelands,42.924,85.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r
    .fly Eastern Plaguelands >> Volez aux Maleterres de l'est
    .target Bibilfaz Featherwhistle
    .zoneskip Eastern Plaguelands
step
    .goto Eastern Plaguelands,81.518,59.766
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carlin Redpath|r
    .turnin 5241 >>Rendez la quête Oncle Carlin
    .turnin 5210 >>Rendez la quête Frère Carlin
    .accept 5181 >>Acceptez la quête Les vilains de Comté-de-Darrow
    .target Carlin Redpath
step
    .goto Eastern Plaguelands,79.405,63.983
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Caretaker Alen|r
    .turnin 6021 >> Rendez la quête Zaeldarr le Banni
    .target Caretaker Alen
step
    .goto Eastern Plaguelands,51.41,49.70,0
    .xp 60-8750 >> Montez votre expérience jusqu'à ce qu'il ne vous reste que 8750xp pour le niveau 60
step
    .goto Eastern Plaguelands,51.106,49.937
    >>Ramassez le |cRXP_LOOT_Skull of Horgus|r sous l'eau
    .complete 5181,1 --Collect Skull of Horgus (x1)
step
    .goto Eastern Plaguelands,53.913,65.755
    >>Ramassez la |cRXP_LOOT_Shattered Sword of Marduk|r sur le sol
    .complete 5181,2 --Collect Shattered Sword of Marduk (x1)
step
    .goto Eastern Plaguelands,81.518,59.766
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carlin Redpath|r
    .turnin 5181 >>Rendez la quête Les vilains de Comté-de-Darrow
    .target Carlin Redpath
step << Mage
    .cast 3561 >>Lancez [Téléportation : Stormwind]
    .usespell 3561
    .zoneskip Stormwind City
step << !Mage
    .goto Eastern Plaguelands,81.637,59.280
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Khaelyn Steelwing|r
    .fly Stormwind >> Volez à Stormwind
    .target Khaelyn Steelwing
    .zoneskip Stormwind City
    .zoneskip Hellfire Peninsula
]])
