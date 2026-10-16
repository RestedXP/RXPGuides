if GetLocale() ~= "frFR" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Alliance' then return end

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 1-6 Clairières de Tirisfal
#next 6-10 Bois des Chants éternels
#version 1
--#group RXP Cataclysm (H) << cata

#defaultfor Undead
#group RXP Cataclysme 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000

step << !Undead
    #completewith next
    +Si vous avez sélectionné un guide prévu pour les Morts-vivants. Il est recommandé que vous choisissiez la même zone de départ que celle par laquelle vous commencez
step
    .goto 18,29.36,70.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Agatha|r
    .accept 24959 >>Acceptez la quête Fraîchement sorti de la tombe
    .target Agatha
step
    .goto 18,30.07,71.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mordo|r
    .turnin 24959 >>Rendez la quête Fraîchement sorti de la tombe
    .accept 28608 >>Acceptez la quête Le tombeau des Ombres
    .target Undertaker Mordo
step
    #completewith next
    .goto 18,30.33,72.31,8,0
    .goto 18,30.28,72.78,5,0
    .goto 18,30.04,72.78,5,0
    .goto 18,29.94,72.45,5 >>Entrez dans la tombe de l'ombre
step
    .goto 18,29.67,71.98
    >>Ramassez le |cRXP_LOOT_Corpse-Stitching Twine|r et le |cRXP_LOOT_Thick Fluide d’embaumement|r sur la table
    .complete 28608,2 --Corpse-Stitching Twine (1)
    .complete 28608,1 --Thick Embalming Fluid (1)
step
    #completewith next
    .goto 18,29.94,72.45,5,0
    .goto 18,30.04,72.78,5,0
    .goto 18,30.28,72.78,5,0
    .goto 18,30.33,72.31,8,0 >>Quittez le tombeau
step
    .goto 18,30.07,71.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mordo|r
    .turnin 28608 >>Rendez la quête Le tombeau des Ombres
    .accept 26799 >>Acceptez la quête Ceux qui n’ont pas pu être sauvés
    .target Undertaker Mordo
step
    .goto 18,30.66,71.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Caice|r
    .accept 24960 >>Acceptez la quête Le réveil
    .target Caretaker Caice
step
    #completewith ValdredMoray
    >>Tuez les |cRXP_ENEMY_Mindless Zombies|r
    .complete 26799,1 --6/6 Mindless Zombie slain
    .mob Mindless Zombie
step
    .goto 1420/0,1640.59998,1753.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Redpath|r
    .complete 24960,2 --1/1 Speak with Marshal Redpath
    .skipgossip
    .target Marshal Redpath
step
    .goto 18,30.24,69.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lilian|r
    .complete 24960,1 --1/1 Speak with Lilian Voss
    .skipgossip
    .target Lilian Voss
step
    #label ValdredMoray
    .goto 1420/0,1704.70007,1740.20007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valdred|r
    .complete 24960,3 --1/1 Speak with Valdred Moray
    .skipgossip
    .target Valdred Moray
step
    #loop
    .goto 18,30.39,69.59,0
    .waypoint 18,30.81,69.74,30,0
    .waypoint 18,30.42,70.07,30,0
    .waypoint 18,29.76,69.98,30,0
    .waypoint 18,29.27,70.03,30,0
    .waypoint 18,29.50,71.75,30,0
    .waypoint 18,30.39,69.59,30,0
    >>Tuez les |cRXP_ENEMY_Mindless Zombies|r
    .complete 26799,1 --6/6 Mindless Zombie slain
    .mob Mindless Zombie
step
    .goto 18,30.07,71.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mordo|r
    .turnin 26799 >>Rendez la quête Ceux qui n’ont pas pu être sauvés
    .target Undertaker Mordo
step
    .goto 18,30.66,71.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Caice|r
    .turnin 24960 >>Rendez la quête Le réveil
    .accept 25089 >>Acceptez la quête Outre-tombe
    .target Caretaker Caice
step
    #completewith next
    .goto 18,31.38,66.23,8 >>Entrez dans l'église
step
    .goto 18,30.83,66.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sarvis|r
    .accept 26801 >>Acceptez la quête Le Fléau est dans nos murs
    .target Shadow Priest Sarvis
step
    .goto 18,31.62,65.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Saltain|r
    .turnin 25089 >>Rendez la quête Outre-tombe
    .accept 26800 >>Acceptez la quête Une moisson de corps
    .target Deathguard Saltain
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Rattlecage Skeletons|r et les |cRXP_ENEMY_Wretches Goules|r
    .complete 26801,1 --8/8 Deathknell Scourge slain
    .mob Rattlecage Skeleton
    .mob Wretches Ghoul
step
    #loop
    .goto 18,31.03,63.10,0
    .waypoint 18,31.79,64.38,20,0
    .waypoint 18,31.25,64.05,20,0
    .waypoint 18,31.97,61.99,20,0
    .waypoint 18,33.11,63.07,20,0
    .waypoint 18,33.34,63.87,20,0
    .waypoint 18,33.32,64.56,20,0
    .waypoint 18,32.87,64.62,20,0
    .waypoint 18,31.97,61.99,20,0
    >>Cliquez sur les |cRXP_ENEMY_Scarlet Cadavres|r sur le sol
    .complete 26800,1 --6/6 Scarlet Corpses gathered
    .mob Scarlet Corpse
step
    #loop
    .goto 18,31.24,63.43,0
    .waypoint 18,31.64,63.93,30,0
    .waypoint 18,32.18,63.21,30,0
    .waypoint 18,32.29,61.30,30,0
    .waypoint 18,31.26,61.24,30,0
    .waypoint 18,30.95,62.35,30,0
    .waypoint 18,31.24,63.43,30,0
    >>Tuez les |cRXP_ENEMY_Rattlecage Skeletons|r et les |cRXP_ENEMY_Wretches Goules|r
    .complete 26801,1 --8/8 Deathknell Scourge slain
    .mob Rattlecage Skeleton
    .mob Wretches Ghoul
step
    .goto 18,31.62,65.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Saltain|r
    .turnin 26800 >>Rendez la quête Une moisson de corps
    .target Deathguard Saltain
step
    #completewith next
    .goto 18,31.38,66.23,8 >>Entrez dans l'église
step
    .goto 18,30.83,66.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sarvis|r
    .turnin 26801 >>Rendez la quête Le Fléau est dans nos murs
    .accept 31146 >>Acceptez la quête Un parchemin gribouillé << Monk
    .accept 3096 >>Acceptez la quête Parchemin codé << Rogue
    .accept 3095 >>Acceptez la quête Parchemin simple << Warrior
    .accept 24962 >>Acceptez la quête Un parchemin abîmé << Hunter
    .accept 3098 >>Acceptez la quête Parchemin glyphé << Mage
    .accept 3097 >>Acceptez la quête Parchemin béni << Priest
    .accept 3099 >>Acceptez la quête Rouleau contaminé << Warlock
    .target Shadow Priest Sarvis
step
    .goto 1420/0,1638.70007,1847.70007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elreth|r
    .accept 24961 >>Acceptez la quête La vérité de la tombe
    .target Novice Elreth
step << Mage
    .goto 18,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Isabella|r
    .turnin 3098 >>Rendez la quête Parchemin glyphé
    .accept 24965 >>Acceptez la quête Enseignement magique
    .train 5143 >>Apprenez |T136096:0|t[Projectiles des Arcanes] << Cata
    .target Isabella
step << Hunter
    .goto 18,31.45,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xavier|r
    .turnin 24962 >>Rendez la quête Un parchemin abîmé
    .accept 24964 >>Acceptez la quête La chasse : des sensations fortes
    .train 56641 >>S'entraîner |T132213:0|t[Veilleur du puits Solanian] << Cata
    .target Xavier the Huntsman
step << Priest
    .goto 18,31.10,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duesten|r
    .turnin 3097 >>Rendez la quête Parchemin béni
    .accept 24966 >>Acceptez la quête La lumière et l'ombre
    .train 2061 >>Entraînez-vous |T135907:0|t[Soins rapides] << Cata
    .target Dark Cleric Duesten
step << Warlock
    .goto 18,30.92,66.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maximillion|r
    .turnin 3099 >>Rendez la quête Rouleau contaminé
    .accept 24968 >>Acceptez la quête De sombres tâches
    .train 348 >>Apprenez [Immolation] << Cata
    .target Maximillion
step << Mage cata
    .goto 18,31.64,66.91
	>>Lancez |T136096:0|t[Projectiles des Arcanes] sur un |cRXP_ENEMY_Mannequin d'entraînement|r
	.complete 24965,1 --Cast Arcane Missiles (x3)
	.mob Training Dummy
step << Mage !cata
    .goto 18,31.64,66.91
	>>Lancez |T135848:0|t[Veilleur du puits Solanian] sur un |cRXP_ENEMY_Mannequin d'entraînement|r
	.complete 24965,2 --Cast Frost Nova
	.mob Training Dummy
step << Priest cata
    .goto 18,31.20,66.02
	>>Lancez |T135907:0|t[Soins rapides] sur un |cRXP_FRIENDLY_Nécrogarde blessé|r
	.complete 24966,1 --Cast Flash Heal (x5)
	.target Wounded Deathguard
step << Priest !cata
    .goto 18,31.64,66.91
	>>Lancez |T136207:0|t[Mot de l'ombre : Douleur] sur un |cRXP_ENEMY_Mannequin d'entraînement|r
	.complete 24966,2 --Cast Shadow Word: Pain
	.mob Training Dummy
step << Warlock
    .goto 18,31.64,66.91
	>>Lancez |T135817:0|t[Immolation] sur un |cRXP_ENEMY_Mannequin d'entraînement|r
	.complete 24968,2 << !Cata --Cast Immolate (x3)
	.complete 24968,1 << Cata --Cast Immolate (x3)
	.mob Training Dummy
step
    #completewith next
    .goto 18,32.40,65.56,8 >>Entrez dans la maison
step
    .goto 18,32.69,65.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lilian|r
    >>|cRXP_WARN_Elle peut être à l'étage. N'attendez pas le RP|r
    .complete 24961,1 --1/1 Show Lilian her reflection
    .timer 9,La vérité de la tombe RP
    .skipgossip
    .target Lilian Voss
step << Monk
    .goto 465/0,1567.900,1857.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ting, le Ventre gaillard|r
    .turnin 31146 >>Rendez la quête Un parchemin gribouillé
    .accept 31147 >>Acceptez la quête Paume du tigre
    .target Ting, Strong of Stomach
step << Rogue
    .goto 18,32.53,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_David|r
    .turnin 3096 >>Rendez la quête Parchemin codé
    .accept 24967 >>Acceptez la quête Étripage
    .train 2098 >>Entraînez-vous |T132292:0|t[L'éviscération] << Cata
    .target David Trias
step << Warrior
    .goto 18,32.67,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >>Rendez la quête Parchemin simple
    .accept 24969 >>Acceptez la quête La charge héroïque
    .train 100 >>Apprenez [Charge] << Cata
    .target Dannal Stern
step << Monk
    .goto 18,31.64,66.91
	>>Lancez |T606551:0|t[Paume du tigre] sur un |cRXP_ENEMY_Mannequin d'entraînement|r
    .complete 31147,2 --|Practice Tiger Palm: 1/1
	.mob Training Dummy
step << Rogue
    .goto 18,31.64,66.91
	>>Lancez |T132292:0|t[L'éviscération] sur un |cRXP_ENEMY_Mannequin d'entraînement|r
	.complete 24967,2 << !Cata --Cast Eviscerate (x3)
	.complete 24967,1 << Cata --Cast Eviscerate (x3)
	.mob Training Dummy
step << Warrior
    .goto 18,31.64,66.91
    >>Lancez |T132337:0|t[À la charge !] sur un |cRXP_ENEMY_Mannequin d'entraînement|r
	.complete 24969,2 << !Cata --Cast Charge (x3)
	.complete 24969,1 << Cata --Cast Charge (x3)
	.mob Training Dummy
step << Hunter
    .goto 18,31.64,66.91
	>>Lancez |T132213:0|t[Veilleur du puits Solanian] sur un |cRXP_ENEMY_Mannequin d'entraînement|r
	.complete 24964,2 << !Cata --Steady Shot (x3)
	.complete 24964,1 << Cata --Steady Shot (x3)
	.mob Training Dummy
step << Monk
    .goto 465/0,1568.100,1857.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ting, le Ventre gaillard|r
    .turnin 31147 >>Rendre la quête Paume du tigre
    .target Ting, Strong of Stomach
step << Rogue
    .goto 18,32.53,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_David|r
    .turnin 24967 >>Rendez la quête Étripage
    .target David Trias
step << Warrior
    .goto 18,32.67,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dannal|r
    .turnin 24969 >>Rendez la quête Parchemin simple
    .target Dannal Stern
step << Hunter
    .goto 18,31.45,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xavier|r
    .turnin 24964 >>Rendez la quête La chasse : des sensations fortes
    .target Xavier the Huntsman
step
    #completewith next
    .goto 18,31.38,66.23,8 >>Entrez dans l'église
step
    .goto 18,30.86,66.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elreth|r
    .turnin 24961 >>Rendez la quête La vérité de la tombe
    .accept 28672 >>Acceptez la quête L’exécuteur de terrain
    .target Novice Elreth
step << Mage
    .goto 18,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Isabella|r
    .turnin 24965 >>Rendez la quête Enseignement magique
    .target Isabella
step << Priest
    .goto 18,31.10,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duesten|r
    .turnin 24966 >>Rendez la quête La lumière et l'ombre
    .target Dark Cleric Duesten
step << Warlock
    .goto 18,30.92,66.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maximillion|r
    .turnin 24968 >>Rendez la quête De sombres tâches
    .target Maximillion
step
    .goto 18,32.97,61.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arren|r
    .turnin 28672 >>Rendez la quête L’exécuteur de terrain
    .accept 26802 >>Acceptez la quête Les Maudits
    .target Executor Arren
step
    #loop
    .goto 18,32.00,57.83,0
    .waypoint 18,31.47,58.41,40,0
    .waypoint 18,32.00,57.83,40,0
    .waypoint 18,31.54,56.21,40,0
    .waypoint 18,32.39,56.15,40,0
    .waypoint 18,33.70,57.30,40,0
    .waypoint 18,35.11,56.22,40,0
    .waypoint 18,35.69,58.25,40,0
    .waypoint 18,34.92,59.39,40,0
    .waypoint 18,34.92,59.39,40,0
    .waypoint 18,34.19,59.64,40,0
    .waypoint 18,32.90,58.08,40,0
    >>Tuez les |cRXP_ENEMY_Duskbats|r. Pillez-les pour leurs |cRXP_LOOT_Ailes|r
    >>Tuez les |cRXP_ENEMY_Wolves|r. Pillez-les pour leurs |cRXP_LOOT_Paws|r
    .complete 26802,2 --4/4 Duskbat Wing
    .mob +Duskbat
    .mob +Mangy Duskbat
    .complete 26802,1 --4/4 Scavenger Paw
    .mob +Young Scavenger
    .mob +Ragged Scavenger
step
    .goto 18,32.97,61.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arren|r
    .turnin 26802 >>Rendez la quête Les maudits
    .accept 24973 >>Acceptez la quête Les grottes des Tisse-nuit
    .target Executor Arren
step
    #completewith NWSpiders
    .subzone 155 >>Rendez-vous à la grotte de la Nuit Trépassée
step
    #completewith next
    >>Tuez |cRXP_ENEMY_Young Nuit Rets Araignées|r |cRXP_WARN_outside the mine|r
    .complete 24973,1 --8/8 Young Night Web Spider slain
    .mob Young Night Web Spider
step
    #label NWSpiders
    #loop
    .goto 18,25.43,59.80,0
    .waypoint 18,26.83,59.39,8,0
    .waypoint 18,26.01,59.65,8,0
    .waypoint 18,25.43,59.80,8,0
    .waypoint 18,25.04,60.35,8,0
    .waypoint 18,24.15,60.82,8,0
    .waypoint 18,23.23,60.06,8,0
    .waypoint 18,23.68,58.52,8,0
    >>Tuez |cRXP_ENEMY_Night Rets Araignées|r |cRXP_WARN_inside the mine|r
    .complete 24973,2 --5/5 Night Web Spider slain
    .mob Night Web Spider
step
    #loop
    .goto 18,29.44,58.33,0
    .waypoint 18,27.47,59.05,40,0
    .waypoint 18,28.13,57.32,40,0
    .waypoint 18,29.77,56.26,40,0
    .waypoint 18,29.44,58.33,40,0
    .waypoint 18,28.63,59.20,40,0
    >>Tuez |cRXP_ENEMY_Young Nuit Rets Araignées|r outside the mine
    .complete 24973,1 --8/8 Young Night Web Spider slain
    .mob Young Night Web Spider
step
    .goto 18,32.97,61.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arren|r
    .turnin 24973 >>Rendez la quête Les grottes des Tisse-nuit
    .accept 24970 >>Acceptez la quête Pas mieux que les zombies
    .target Executor Arren
step
    .goto 18,35.76,62.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darnell|r
    .turnin 24970 >>Rendez la quête Pas mieux que les zombies
    .accept 24971 >>Acceptez la quête À l’assaut du camp de Putresprit
    .target Darnell
step
    #completewith next
    >>Tuez |cRXP_ENEMY_Magus de Putresprit|r et les |cRXP_ENEMY_Rotbrain Berserkers|r
    .complete 24971,2 --8/8 Rotbrain undead slain
    .mob Rotbrain Magus
    .mob Rotbrain Berserker
step
    .goto 18,36.50,68.82
    >>Tuez le |cRXP_ENEMY_Maréchal Senterouge|r
    .complete 24971,1 --1/1 Marshal Redpath slain
    .mob Marshal Redpath
step
    #loop
    .goto 18,37.07,67.02,0
    .waypoint 18,37.57,68.77,40,0
    .waypoint 18,38.07,67.55,40,0
    .waypoint 18,37.07,67.02,40,0
    .waypoint 18,35.94,68.27,40,0
    >>Tuez |cRXP_ENEMY_Magus de Putresprit|r et les |cRXP_ENEMY_Rotbrain Berserkers|r
    .complete 24971,2 --8/8 Rotbrain undead slain
    .mob Rotbrain Magus
    .mob Rotbrain Berserkers
step
    #completewith next
    .subzone 154 >>Rendez-vous au Glas
step
    .goto 18,30.83,66.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sarvis|r
    .turnin 24971 >>Rendez la quête À l’assaut du camp de Putresprit
    .accept 24972 >>Acceptez la quête Informations décisives
    .target Shadow Priest Sarvis
step
    #completewith next
    .goto 18,38.09,56.48,20,0
    .goto 18,38.41,55.69,20,0
    .goto 18,38.78,55.57,20 >>Sortez du Glas
step
    #completewith next
    .subzone 4916 >>Rendez-vous à Domaine Calston
step
    #xprate <1.2
    .goto 18,44.75,53.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Nécrogarde Simmer|r
    .turnin 24972 >>Rendez la quête Informations décisives
    .accept 24978 >>Acceptez la quête Faucher les faucheurs
    .target Deathguard Simmer
step
    #xprate >1.19
    .goto 18,44.75,53.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Nécrogarde Simmer|r
    .turnin 24972 >>Rendez la quête Informations décisives
    .target Deathguard Simmer
step
    #xprate <1.2
    .goto 18,44.61,53.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Johaan|r
    .accept 24975 >>Acceptez la quête Les champs du Chagrin
    .target Apothecary Johaan
step
    #xprate <1.2
    #completewith next
    .goto 18,44.49,53.85,3,0
    .goto 18,44.63,53.75,3 >> Montez à l'étage
step
    #xprate <1.2
    .goto 18,44.75,53.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sedrick|r
    .accept 24974 >>Acceptez la quête Seul, tellement seul
    .target Sedrick Calston
step << Hunter Cata
    .goto 18,44.97,53.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darna|r dehors
    .train 2973 >>Apprenez vos sorts de classe
    .target Darna Woad
    .xp <6,1
step << Warrior Cata
    .goto 18,45.03,53.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Karla|r dehors
    .train 34428 >>Apprenez vos sorts de classe
    .target Karla Fain
    .xp <5,1
step << Mage Cata
    .goto 18,44.78,53.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Larah|r dehors
    .train 2136 >>Apprenez vos sorts de classe
    .target Larah Firesong
    .xp <5,1
step << Priest Cata
    .goto 18,44.78,53.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Claressa|r dehors
    .train 589 >>Apprenez vos sorts de classe
    .target Dark Cleric Claressa
    .xp <5,1
step << Warlock Cata
    .goto 18,44.73,53.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maressa|r dehors
    .train 87389 >>Apprenez vos sorts de classe
    .target Maressa Milner
    .xp <5,1
step
    #xprate <1.2
    #completewith next
    >>Tuez les |cRXP_ENEMY_Tirisfal Farmers|r
    .complete 24978,1 --10/10 Tirisfal Farmer slain
    .mob Tirisfal Farmer
step
    #xprate <1.2
    #loop
    .goto 18,41.12,51.69,0
    .goto 18,35.25,50.90,0
    .waypoint 18,41.12,51.69,30,0
    .waypoint 18,39.67,51.55,30,0
    .waypoint 18,36.95,51.78,30,0
    .waypoint 18,35.25,50.90,30,0
    .waypoint 18,36.88,49.70,30,0
    >>Ramassez les |cRXP_LOOT_Tirisfal Pumpkins|r sur le sol
    .complete 24975,1 --10/10 Tirisfal Pumpkin
step
    #xprate <1.2
    #loop
    .goto 18,41.12,51.69,0
    .goto 18,35.25,50.90,0
    .waypoint 18,41.12,51.69,30,0
    .waypoint 18,39.67,51.55,30,0
    .waypoint 18,36.95,51.78,30,0
    .waypoint 18,35.25,50.90,30,0
    .waypoint 18,36.88,49.70,30,0
    >>Tuez les |cRXP_ENEMY_Tirisfal Farmers|r
    .complete 24978,1 --10/10 Tirisfal Farmer slain
    .mob Tirisfal Farmer
step
    #xprate <1.2
    .goto 18,34.37,43.68,40,0
    .goto 18,35.90,42.92,40,0
    .goto 18,36.66,40.40,40,0
    .goto 18,35.91,43.85
    .use 52059 >>Attaquez un |cRXP_ENEMY_Murloc Aileron noir|r jusqu'à ce qu'il commence à fuir, puis utilisez votre |T133802:0|t[Laisse de murloc] pour le capturer
    .complete 24974,1 --1/1 Vile Fin captured
    .mob File Vin Puddlejumper
    .mob File Vin Minor Oracle
step
    #xprate <1.2
    #completewith next
    .subzone 4916 >>Rendez-vous à Domaine Calston
step
    #xprate <1.2
    .goto 18,44.75,53.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Nécrogarde Simmer|r
    .turnin 24978 >>Rendez la quête Faucher les faucheurs
    .target Deathguard Simmer
step
    #xprate <1.2
    .goto 18,44.61,53.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Johaan|r
    .turnin 24975 >>Rendez la quête Les champs du Chagrin
    .target Apothecary Johaan
step
    #xprate <1.2
    #completewith MurlocDelivery
    .goto 18,44.49,53.85,3,0
    .goto 18,44.63,53.75,3 >> Montez à l'étage
step
    #xprate <1.2
    .goto 18,44.75,53.65
    >>Livrez le |cRXP_FRIENDLY_Murloc|r
    .complete 24974,2 --1/1 Vile Fin returned
    .target Sedrick Calston
step
    #xprate <1.2
    #label MurlocDelivery
    .goto 18,44.75,53.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sedrick|r
    .turnin 24974 >>Rendez la quête Seul, tellement seul
    .target Sedrick Calston
step
    #xprate <1.2
    #completewith next
    .goto 18,44.49,53.86,5,0
    .goto 18,44.75,53.65 >> Montez pour rendre le |cRXP_FRIENDLY_Murloc|r
    .complete 24974,2 --1/1 Vile Fin returned
step
    #xprate <1.2
    .goto 18,44.75,53.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sedrick|r
    .turnin 24974 >>Rendez la quête Seul, tellement seul
    .target Sedrick Calston
step << Hunter Cata
    #xprate <1.2
    .goto 18,44.97,53.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darna|r dehors
    .train 2973 >>Apprenez vos sorts de classe
    .target Darna Woad
    .xp <6,1
step << Warrior Cata
    #xprate <1.2
    .goto 18,45.03,53.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Karla|r dehors
    .train 34428 >>Apprenez vos sorts de classe
    .target Karla Fain
    .xp <5,1
step << Mage Cata
    #xprate <1.2
    .goto 18,44.78,53.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Larah|r à l'extérieur
    .train 2136 >>Apprenez vos sorts de classe
    .target Larah Firesong
    .xp <5,1
step << Priest Cata
    #xprate <1.2
    .goto 18,44.78,53.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Claressa|r à l'extérieur
    .train 589 >>Apprenez vos sorts de classe
    .target Dark Cleric Claressa
    .xp <5,1
step << Warlock Cata
    #xprate <1.2
    .goto 18,44.73,53.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maressa|r à l'extérieur
    .train 87389 >>Apprenez vos sorts de classe
    .target Maressa Milner
    .xp <5,1
step
    #completewith next
    .goto 18,45.86,48.38,40,0
    .goto 18,46.61,47.42,40,0
    .goto 18,47.75,47.67
    .deathskip >>Attirez autant de mobs que vous pouvez pour mourir et réapparaître au |cRXP_FRIENDLY_Gardien des âmes|r, ou rendez-vous à Brill
step << Undead
    .goto 18,60.13,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morris|r
    .accept 6321 >>Acceptez la quête Approvisionner Brill
    .target Deathguard Morris
step
    .goto 18,60.87,51.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Renee|r
    .home >>Liez votre Pierre de foyer à Brill
    .target Innkeeper Renee
    .isQuestAvailable 6323
step << Undead
    .goto 18,58.84,51.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anette|r
    .turnin 6321 >>Rendez la quête Approvisionner Brill
    .accept 6323 >>Acceptez la quête Voyage vers Fossoyeuse
    .target Anette Williams
step
    .goto 18,58.84,51.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anette|r
    .fly Undercity >>Volez à Undercity
    .target Anette Williams
step << Undead
    .goto 90,61.49,41.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gordon|r
    .turnin 6323 >>Rendez la quête Voyage vers Fossoyeuse
    .accept 6322 >>Acceptez la quête Michael Garrett
    .target Gordon Wendham
step << Undead
    .goto 90,63.28,48.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Michael|r
    .turnin 6322 >>Rendez la quête Michael Garrett
    .accept 6324 >>Acceptez la quête Retour vers Morris
    .target Michael Garrett
step << Undead
    #completewith SilvermoonPort
    .goto 90,59.98,47.60,10,0
    .goto 90,59.16,44.02,8,0
    .goto 90,65.87,43.99,15 >>Montez par l'ascenseur
step << !Undead
    #completewith SilvermoonPort
    .goto 18,66.21,1.16,20,0
    .zone Undercity >>Voyagez à Undercity
step
    #label SilvermoonPort
    .goto 1420/0,269.10001,1804.59998,15,0
    .goto 1420/0,346.60001,1806.00000
    .zone Silvermoon City >>Cliquez sur le |cRXP_PICK_Orb of Transposition|r pour aller à Lune-d'Argent
step
    .goto 110,72.396,85.242,12,0
    .goto 1941/0,-4877.20020,7012.10059
    .zone Eversong Woods >>Quittez Lune-d'Argent
step
    .goto Eversong Woods,50.331,50.770
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Forestier Jaela|r
    .accept 8475 >>Acceptez la quête La Malebrèche
    .target Ranger Jaela
    ]])
