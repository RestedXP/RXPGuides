if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Horde
#name 1-6 Mort-vivant
#version 1
#group RestedXP Guide de Survie (H)
#subgroup RestedXP Guide de Survie 1-20
#defaultfor Undead
#next 6-13 Mort-vivant

step << !Undead
    #completewith next
    +Si vous avez sélectionné un guide prévu pour les Morts-vivants. Il est recommandé que vous choisissiez la même zone de départ que celle par laquelle vous commencez
step
    #completewith Zombies
	.destroy 6948 >> Détruisez la [Pierre de foyer] dans votre sac, elle n'est plus nécessaire
step
    #completewith next
    .goto Tirisfal Glades,30.04,72.78,8,0
    .goto Tirisfal Glades,30.27,72.78,8,0
    .goto Tirisfal Glades,30.22,71.65,10 >> Sortez de la crypte vers  |cRXP_FRIENDLY_Mordo|r
step
    .goto Tirisfal Glades,30.22,71.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mordo|r
    .accept 363 >> Acceptez la quête Réveil brutal
    .target Undertaker Mordo
step << Warrior/Warlock/Priest/Mage
    #completewith Vendor
    .goto Tirisfal Glades,30.70,69.28,0 << Warrior/Warlock
    .goto Tirisfal Glades,29.92,70.30,40,0
    .goto Tirisfal Glades,30.70,69.28,40,0
    .goto Tirisfal Glades,29.18,68.94,40,0 << Priest/Mage
    .goto Tirisfal Glades,29.10,67.66,40,0 << Priest/Mage
    .goto Tirisfal Glades,30.19,65.32,40,0 << Priest/Mage
    +|cRXP_WARN_Tuez les |cRXP_ENEMY_Young Scavengers|r et les |cRXP_ENEMY_Duskbats|r. Dépouillez-les jusqu'à ce que vous ayez l'équivalent de 60 pièces de cuivre à vendre au marchand (en comptant votre équipement)|r << Mage
    +|cRXP_WARN_Tuez les |cRXP_ENEMY_Young Scavengers|r et les |cRXP_ENEMY_Duskbats|r. Dépouillez-les jusqu'à ce que vous ayez l'équivalent de 50 pièces de cuivre à vendre au marchand (en comptant votre équipement)|r << Priest
    +|cRXP_WARN_Tuez les |cRXP_ENEMY_Young Scavengers|r et les |cRXP_ENEMY_Duskbats|r. Dépouillez-les jusqu'à ce que vous ayez l'équivalent de 10 pièces de cuivre à vendre au marchand (en comptant votre équipement)|r << Warrior/Warlock
    .mob Young Scavenger
    .mob Duskbat
    .money >0.01
step << Warrior/Priest/Mage
    #completewith Training1
    .goto Tirisfal Glades,32.22,65.64,8 >> Entrez dans le bâtiment
step << Priest/Mage
    #label Vendor
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Joshua|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
	.collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .target Joshua Kien
step << Warlock/Mage
    #sticky
    #label Piercing
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Venya|r et à |cRXP_FRIENDLY_Sarvis|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sarvis|r << Mage
    .accept 1470 >>Acceptez la quête Lever le voile << Warlock
    .goto Tirisfal Glades,30.98,66.41 << Warlock
    .target +Venya Marthand << Warlock
    .turnin 363 >> Rendez la quête Réveil brutal
    .accept 364 >> Acceptez la quête Les Déchus
    .target +Shadow Priest Sarvis
    .goto Tirisfal Glades,30.84,66.20
step << Warlock/Mage
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elreth|r
    .accept 376 >> Acceptez la quête Les Maudits
    .goto Tirisfal Glades,30.86,66.05
    .target Novice Elreth
    .xp <2,1
step << Mage
    #requires Percing
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Isabella|r
    .train 1459 >> Apprenez [Intelligence des Arcanes]
    .target Isabella
step << Warlock
    #label Vendor
    .goto Tirisfal Glades,30.81,66.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kayla|r
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .target Kayla Smithe
    .money >0.1
step << Warlock
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maximillion|r
    .train 348 >>Apprenez [Immolation]
    .target Maximillion
step << !Warlock !Mage
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sarvis|r
    .turnin 363 >> Rendez la quête Réveil brutal
    .accept 364 >> Acceptez la quête Les Déchus
    .target Shadow Priest Sarvis
step << !Warlock !Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elreth|r
    .accept 376 >> Acceptez la quête Les Maudits
    .goto Tirisfal Glades,30.86,66.05
    .target Novice Elreth
    .xp <2,1
step << Warrior
    #completewith next
    #label Vendor
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archibald|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Archibald Kava
    .money >0.1
step << Warrior
    #label Training1
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dannal|r
    .train 6673 >>Apprenez [Cri de guerre]
    .target Dannal Stern
step << Warlock
    #requires Piercing
    #loop
    .goto Tirisfal Glades,31.82,61.48,0
    .goto Tirisfal Glades,31.82,61.48,30,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
    >>Tuez des |cRXP_ENEMY_Rattlecage Skeletons|r. Dépouillez-les pour leur |cRXP_LOOT_Rattlecage Skulls|r
    .complete 1470,1 --Rattlecage Skull (3)
    .mob Rattlecage Skeleton
step << Warlock
    #completewith next
    +|cRXP_WARN_Tuez des |cRXP_ENEMY_Mindless Zombies|r et des |cRXP_ENEMY_Wretched Zombies|r. Dépouillez-les jusqu'à ce que vous ayez l'équivalent de 25 pièces de cuivre à vendre au marchand (en comptant votre équipement)|r
    .mob Mindless Zombie
    .mob Wretched Zombie
    .money >0.0025
step << Warlock
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Joshua|r
	.collect 159,5,383,1 --Collect Refreshing Spring Water (5)
    .target Joshua Kien
    .isOnQuest 1470
step << Warlock
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.98,66.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Venya|r
    .turnin 1470 >>Rendez la quête Lever le voile
    .target Venya Marthand
step << Warlock
    #completewith next
    .cast 688 >>Lancez [Invocation d'un diablotin]
step
    #label Zombies
    #requires Piercing << Warlock/Mage
    #loop
	.goto Tirisfal Glades,31.72,63.98,0
	.goto Tirisfal Glades,31.72,63.98,40,0
	.goto Tirisfal Glades,30.69,63.88,40,0
	.goto Tirisfal Glades,30.90,62.20,40,0
	.goto Tirisfal Glades,30.73,61.66,40,0
	.goto Tirisfal Glades,31.14,61.41,40,0
	.goto Tirisfal Glades,31.80,61.83,40,0
	.goto Tirisfal Glades,32.85,63.02,40,0
	.goto Tirisfal Glades,32.90,63.54,40,0
	.goto Tirisfal Glades,33.41,63.06,40,0
	.goto Tirisfal Glades,33.75,62.86,40,0
	.goto Tirisfal Glades,33.51,63.82,40,0
	.goto Tirisfal Glades,33.55,64.57,40,0
	.goto Tirisfal Glades,33.29,64.96,40,0
    >>Tuez des |cRXP_ENEMY_Mindless Zombies|r et des |cRXP_ENEMY_Wretched Zombies|r
    .complete 364,1 --Kill Mindless Zombie (x8)
    .mob +Mindless Zombie
    .complete 364,2 --Kill Wretched Zombie (x8)
    .mob +Wretched Zombie
step << Mage/Warlock/Priest
    #completewith Vendor2
    +|cRXP_WARN_Tuez des |cRXP_ENEMY_Mindless Zombies|r et des |cRXP_ENEMY_Wretched Zombies|r. Dépouillez-les jusqu'à ce que vous ayez l'équivalent de 33 pièces de cuivre à vendre au marchand (en comptant votre équipement)|r
    .mob Mindless Zombie
    .mob Wretched Zombie
    .money >0.0033
step << Mage/Warlock/Priest
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Joshua|r
    .collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Joshua Kien
    .isOnQuest 364
    .money <0.0050
    .itemcount 159,<10
 step << Mage/Warlock/Priest
    #label Vendor2
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Joshua|r
    .collect 159,5,383,1 --Collect Refreshing Spring Water (5)
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Joshua Kien
    .isOnQuest 364
    .money >0.0050
    .itemcount 159,<5
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sarvis|r et à |cRXP_FRIENDLY_Elreth|r << !Warlock !Mage !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sarvis|r, |cRXP_FRIENDLY_Elreth|r, et à |cRXP_FRIENDLY_Maximillion|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sarvis|r, |cRXP_FRIENDLY_Elreth|r, et à |cRXP_FRIENDLY_Maximillion|r << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sarvis|r, |cRXP_FRIENDLY_Elreth|r, et à |cRXP_FRIENDLY_Duesten|r << Priest
    .turnin 364 >> Rendez la quête Lever le voile
    .accept 3095 >> Acceptez la quête Parchemin simple << Warrior
    .accept 3096 >> Acceptez la quête Parchemin codé << Rogue
    .accept 3097 >> Acceptez la quête Parchemin béni << Priest
    .accept 3098 >> Acceptez la quête Parchemin glyphé << Mage
    .accept 3099 >> Acceptez la quête Rouleau contaminé << Warlock
    .accept 3901 >> Acceptez la quête Faites cliqueter les thorax !
    .target +Shadow Priest Sarvis
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    .accept 376 >> Acceptez la quête Les Maudits
    .target +Novice Elreth
    .goto Tirisfal Glades,30.86,66.05
    .turnin 3099 >> Rendez la quête Rouleau contaminé << Warlock
    .goto Tirisfal Glades,30.91,66.34 << Warlock
    .target +Maximillion << Warlock
    .turnin 3098 >> Rendez la quête Parchemin glyphé << Mage
    .goto Tirisfal Glades,30.94,66.06 << Mage
    .target +Isabella << Mage
    .turnin 3097 >> Rendez la quête Parchemin béni << Priest
    .target +Dark Cleric Duesten << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
step << Mage/Warlock/Priest
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Joshua|r
    .collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .target Joshua Kien
    .isOnQuest 364
step
    #loop
    .goto Tirisfal Glades,34.32,56.79,0
    .goto Tirisfal Glades,29.21,66.68,40,0
    .goto Tirisfal Glades,29.48,65.70,40,0
    .goto Tirisfal Glades,29.60,64.04,40,0
    .goto Tirisfal Glades,29.67,63.39,40,0
    .goto Tirisfal Glades,30.09,61.51,40,0
    .goto Tirisfal Glades,30.97,59.66,40,0
    .goto Tirisfal Glades,31.61,58.57,40,0
    .goto Tirisfal Glades,32.07,57.74,40,0
    .goto Tirisfal Glades,32.85,58.35,40,0
    .goto Tirisfal Glades,34.32,56.79,40,0
    >>Tuez des |cRXP_ENEMY_Young Scavengers|r et des |cRXP_ENEMY_Ragged Scavengers|r. Dépouillez-les pour leur |cRXP_LOOT_Scavenger Paws|r
    >>Tuez des |cRXP_ENEMY_Duskbats|r et des |cRXP_ENEMY_Mangy Duskbats|r. Dépouillez-les pour leur |cRXP_LOOT_Duskbat Wings|r
    >>|cRXP_WARN_Essayez de ne pas tuer des |cRXP_ENEMY_Mangy Duskbats|r si vous le pouvez car si ils sont beaucoup plus dur à tuer que les |cRXP_ENEMY_Duskbats|r|r
    .complete 376,1 --Collect Scavenger Paw (x6)
    .mob +Young Scavenger
    .mob +Ragged Scavenger
    .complete 376,2 --Collect Duskbat Wing (x6)
    .mob +Duskbat
    .mob +Mangy Duskbat
step
    #loop
    .goto Tirisfal Glades,31.82,61.48,0
    .goto Tirisfal Glades,31.82,61.48,30,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
    >>Tuez les |cRXP_ENEMY_Rattlecage Skeletons|r
    .complete 3901,1 --Kill Rattlecage Skeleton (12)
    .mob Rattlecage Skeleton
step
    #som--xpgate
    #loop
    .goto Tirisfal Glades,31.82,61.48,30,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
    .xp 3+480 >>Montez votre expérience jusqu'à 480+/1400xp << Warrior/Rogue
    .xp 3+560 >>Montez votre expérience jusqu'à 560+/1400xp << !Warrior !Rogue
    .mob Mindless Zombie
    .mob Wretched Zombie
step
    #era
    #loop
    .goto Tirisfal Glades,31.82,61.48,30,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
    .xp 3+940 >>Monter votre expérience jusqu'à 940+/1400xp << Warrior/Rogue
    .xp 3+980 >>Monter votre expérience jusqu'à 980+/1400xp << !Warrior !Rogue
    .mob Mindless Zombie
    .mob Wretched Zombie
step << Mage/Warlock/Priest
    .goto Tirisfal Glades,32.25,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Joshua|r
    >>Ne descendez PAS à moins d'une pièce d'argent << Mage/Warlock/Priest
    .collect 159,15,380,1 --Collect Refreshing Spring Water (10)
    .target Joshua Kien
    .money >0.0075
    .isOnQuest 3901
    .itemcount 159,<20
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sarvis|r et à |cRXP_FRIENDLY_Elreth|r
    .turnin 3901 >> Rendez la quête Faites cliqueter les thorax !
    .target +Shadow Priest Sarvis
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    .turnin 376 >> Rendez la quête Les maudits
    .accept 6395 >> Acceptez la quête La dernière volonté de Marla
    .target +Novice Elreth
    .goto Tirisfal Glades,30.86,66.05
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duesten|r
    .train 589 >> Apprenez vos sorts de classe
    .target Dark Cleric Duesten
    .money <0.021
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duesten|r
    .train 2052 >> Apprenez [Soins inférieurs Rank 2]
    .train 589 >> Apprenez [Mot de l'ombre : Douleur]
    .target Dark Cleric Duesten
    .money <0.02
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duesten|r
    .train 1243 >> Apprenez [Mot de pouvoir : Robustesse]
    .train 589 >> Apprenez [Mot de l'ombre : Douleur]
    .target Dark Cleric Duesten
    .money <0.011
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duesten|r
    .train 589 >> Apprenez [Mot de l'ombre : Douleur]
    .target Dark Cleric Duesten
    .money <0.01
step << Warlock
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maximillion|r
    .train 172 >> Apprenez [Corruption]
    .target Maximillion
step << Mage
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Isabella|r
    .train 116 >> Apprenez [Eclair de givre]
    .target Isabella
step
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Nécrogarde Saltain|r et à l' |cRXP_FRIENDLY_Exécuteur Arren|r
    .accept 3902 >> Acceptez la quête La chasse aux trésors
    .target +Deathguard Saltain
    .goto Tirisfal Glades,31.61,65.62
    .accept 380 >> Acceptez la quête Les grottes des Tisse-nuit
    .target +Executor Arren
    .goto Tirisfal Glades,32.15,66.01
step << Rogue/Warrior
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archibald|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Archibald Kava
    .money >0.1
    .isOnQuest 3095 << Warrior
    .isOnQuest 3096 << Rogue
step << Warrior
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >> Rendez la quête Parchemin simple
    .train 100 >> Apprenez [Charge]
    .train 772 >> Apprenez [Pourfendre]
    .target Dannal Stern
    .money <0.02
 step << Warrior
    #label Training2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >> Rendez la quête Parchemin simple
    .train 772 >> Apprenez [Pourfendre]
    .target Dannal Stern
    .money <0.01
step << Rogue
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_David|r
    .turnin 3096 >> Rendez la quête Parchemin codé
    .train 53 >> Apprenez [Attaque sournoise]
    .money <0.04
    .target David Trias
step << Rogue
    #label Training2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_David|r
    .turnin 3096 >> Rendez la quête Parchemin codé
    .target David Trias
step
    #loop
	.goto Tirisfal Glades,32.37,64.37,0
	.goto Tirisfal Glades,32.37,64.37,12,0
	.goto Tirisfal Glades,32.81,64.39,12,0
	.goto Tirisfal Glades,32.89,64.60,12,0
	.goto Tirisfal Glades,33.01,65.38,12,0
	.goto Tirisfal Glades,33.79,64.57,12,0
	.goto Tirisfal Glades,33.13,63.08,12,0
	.goto Tirisfal Glades,32.79,63.11,12,0
	.goto Tirisfal Glades,31.86,61.49,12,0
	.goto Tirisfal Glades,31.75,61.96,12,0
	.goto Tirisfal Glades,31.70,62.53,12,0
	.goto Tirisfal Glades,31.34,62.44,12,0
    >>Ouvrez les |cRXP_PICK_Equipment Boxes|r sur le sol. Récupérez les |cRXP_LOOT_Scavenged Goods|r
    .complete 3902,1 --Collect Scavenged Goods (x6)
step
    #loop
	.goto Tirisfal Glades,29.94,57.33,0
	.goto Tirisfal Glades,29.94,57.33,40,0
	.goto Tirisfal Glades,29.82,56.03,40,0
	.goto Tirisfal Glades,29.25,55.77,40,0
	.goto Tirisfal Glades,28.40,56.51,40,0
	.goto Tirisfal Glades,27.68,57.10,40,0
	.goto Tirisfal Glades,28.29,58.31,40,0
	.goto Tirisfal Glades,28.25,59.41,40,0
	.goto Tirisfal Glades,28.80,59.53,40,0
	.goto Tirisfal Glades,29.29,59.40,40,0
	.goto Tirisfal Glades,29.67,58.53,40,0
    >>Tuez les |cRXP_ENEMY_Young Night Web Spiders|r
    .complete 380,1,6 --Kill Young Night Web Spider (10)
    .mob Young Night Web Spider
step
    #loop
	.goto Tirisfal Glades,28.25,58.27,0
	.goto Tirisfal Glades,28.25,58.27,25,0
	.goto Tirisfal Glades,28.42,59.07,25,0
	.goto Tirisfal Glades,27.86,60.57,25,0
	.goto Tirisfal Glades,27.17,59.18,25,0
	.goto Tirisfal Glades,27.30,57.97,25,0
	.goto Tirisfal Glades,26.94,56.42,25,0
	.goto Tirisfal Glades,27.51,56.00,25,0
    >>Tuez les |cRXP_ENEMY_Young Night Web Spiders|r proche de l'entrée de la grotte
    .complete 380,1 --Kill Young Night Web Spider (10)
    .mob Young Night Web Spider
step
    #completewith next
    .goto Tirisfal Glades,26.80,59.40,15,0
    .goto Tirisfal Glades,26.31,59.60,30 >>Entrez à l'intérieur de la grotte
step
    #loop
    .goto Tirisfal Glades,24.68,59.54,0
    .goto Tirisfal Glades,26.31,59.60,30,0
    .goto Tirisfal Glades,25.61,59.55,20,0
    .goto Tirisfal Glades,25.11,60.33,20,0
    .goto Tirisfal Glades,24.18,60.77,20,0
    .goto Tirisfal Glades,23.23,59.91,20,0
    .goto Tirisfal Glades,23.89,58.36,20,0
    .goto Tirisfal Glades,24.68,59.54,20,0
    >>Tuez les |cRXP_ENEMY_Night Web Spiders|r à l'intérieur de la grotte
	.complete 380,2 --Kill Night Web Spider (x8)
    .mob Night Web Spider
step << Warlock
    #softcore
    #completewith ScarletC
    .cast 688 >>Lancez [Invocation d'un diablotin]
step << skip
    #hardcore
    #completewith next
    >>|cRXP_WARN_Effectuez un Logout skip en sautant de quelque chose dans la grotte, puis appuyez sur votre macro|r
    .link https://www.youtube.com/watch?v=AOAlX9B5aO0 >> |cRXP_WARN_CLIQUEZ ICI pour un guide vidéo|r
    .link /camp >> |cRXP_WARN_CLIQUEZ ICI pour la macro|r
    >>|cRXP_WARN_Pour créer une macro, tapez /macro en jeu. Cliquez sur «Nouveau», donnez-lui un nom, puis copiez-collez « /camp » dans la fenêtre. Glissez la macro nouvelle dans vos Barres d'actions|r
    .goto Tirisfal Glades,31.08,64.88,30 >> Retournez au Glas
step
    #label Scavenging
    .goto Tirisfal Glades,31.61,65.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Saltain|r
    .turnin 3902 >> Rendez la quête La chasse aux trésors
    .target Deathguard Saltain
step
    #sticky
    #label NightWebH
    .goto Tirisfal Glades,32.15,66.01,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arren|r
    .turnin 380 >> Rendez la quête Les grottes des Tisse-nuit
    .accept 381 >> Acceptez la quête La Croisade écarlate
    .target Executor Arren
step << Rogue/Warrior
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archibald|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Archibald Kava
    .isOnQuest 6395
step << Warlock/Mage/Priest
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Joshua|r
	.collect 159,15,383,1 << Warlock/Mage/Priest --Collect Refreshing Spring Water (15)
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Joshua Kien
    .isOnQuest 6395
    .itemcount 159,<15
step
    #requires NightWebH
    #loop
	.goto Tirisfal Glades,36.13,68.74,0
	.goto Tirisfal Glades,36.13,68.74,40,0
	.goto Tirisfal Glades,36.46,69.49,40,0
	.goto Tirisfal Glades,36.85,70.02,40,0
	.goto Tirisfal Glades,37.42,69.58,40,0
	.goto Tirisfal Glades,38.05,69.79,40,0
	.goto Tirisfal Glades,37.91,69.22,40,0
	.goto Tirisfal Glades,38.03,68.77,40,0
	.goto Tirisfal Glades,38.49,68.28,40,0
	.goto Tirisfal Glades,38.72,67.07,40,0
	.goto Tirisfal Glades,38.59,66.25,40,0
	.goto Tirisfal Glades,38.65,65.07,40,0
	.goto Tirisfal Glades,37.62,65.36,40,0
	.goto Tirisfal Glades,36.93,65.38,40,0
	.goto Tirisfal Glades,36.51,65.42,40,0
	.goto Tirisfal Glades,36.85,66.59,40,0
	.goto Tirisfal Glades,37.45,67.95,40,0
	.goto Tirisfal Glades,36.93,68.16,40,0
    >>Tuez des |cRXP_ENEMY_Scarlet Initiates|r et des |cRXP_ENEMY_Scarlet Converts|r. Dépouillez-les pour leur |cRXP_LOOT_Scarlet Armbands|r
    >>|cRXP_WARN_Ne tuez pas encore les |cRXP_ENEMY_Meven Korgal|r |r
    >>|cRXP_WARN_Essayez d'éviter les |cRXP_ENEMY_Scarlet Initiates|r si vous le pouvez car ils disposent de|r [Armure de glace] (réduit votre vitesse d'attaque) << Warrior/Rogue
    .complete 381,1 --Collect Scarlet Armband (12)
    .mob Scarlet Initiate
    .mob Scarlet Convert
step
    .goto Tirisfal Glades,36.69,61.67
    >>Tuez |cRXP_ENEMY_Samuel|r. Dépouillez-le pour ses |cRXP_LOOT_Samuel's Remains|r
    .collect 16333,1,6395,1 --Collect Samuel's Remains
    .mob Samuel Fipps
step
    .goto Tirisfal Glades,31.17,65.08
	>>Cliquez sur |cRXP_PICK_Marla's Grave|r sur le sol
    .complete 6395,1 --Collect Samuel's Remains Buried (1)
 step << Warlock
    #softcore
	#completewith ScarletC
	.cast 688 >>Lancez [Invocation d'un diablotin]
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elreth|r << !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elreth|r et à |cRXP_FRIENDLY_Duesten|r << Priest
    .turnin 6395 >> Rendez la quête La dernière volonté de Marla
    .target +Novice Elreth
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.86,66.05
    .accept 5651 >> Acceptez la quête Au service des ténèbres << Priest
    .target +Dark Cleric Duesten << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
step
    #sticky
    #label ScarletC
    .goto Tirisfal Glades,32.15,66.01,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arren|r
    .turnin 381 >> Rendez la quête La Croisade écarlate
    .accept 382 >> Acceptez la quête Le messager rouge
    .target Executor Arren
step
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archibald|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Archibald Kava
step
    #requires ScarletC
    .goto Tirisfal Glades,36.50,68.82
    >>Tuez |cRXP_ENEMY_Meven|r. Dépouillez-le pour les |cRXP_LOOT_Scarlet Crusade Documents|r
    .complete 382,1 --Collect Scarlet Crusade Documents (1)
    .mob Meven Korgal
step
    .goto Tirisfal Glades,32.15,66.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arren|r
    .turnin 382 >> Rendez la quête Le messager rouge
    .accept 383 >> Acceptez la quête Informations décisives
    .target Executor Arren
step
    #loop
    .goto Tirisfal Glades,34.08,59.51,50,0
    .goto Tirisfal Glades,35.34,56.55,50,0
    .goto Tirisfal Glades,36.83,56.85,50,0
    .goto Tirisfal Glades,37.76,59.38,50,0
    .goto Tirisfal Glades,37.51,62.99,50,0
	.goto Tirisfal Glades,36.13,68.74,50,0
	.goto Tirisfal Glades,36.46,69.49,50,0
	.goto Tirisfal Glades,36.85,70.02,50,0
	.goto Tirisfal Glades,37.42,69.58,50,0
	.goto Tirisfal Glades,38.05,69.79,50,0
	.goto Tirisfal Glades,37.91,69.22,50,0
	.goto Tirisfal Glades,38.03,68.77,50,0
	.goto Tirisfal Glades,38.49,68.28,50,0
	.goto Tirisfal Glades,38.72,67.07,50,0
	.goto Tirisfal Glades,38.59,66.25,50,0
	.goto Tirisfal Glades,38.65,65.07,50,0
	.goto Tirisfal Glades,37.62,65.36,50,0
	.goto Tirisfal Glades,36.93,65.38,50,0
	.goto Tirisfal Glades,36.51,65.42,50,0
	.goto Tirisfal Glades,36.85,66.59,50,0
	.goto Tirisfal Glades,37.45,67.95,50,0
	.goto Tirisfal Glades,36.93,68.16,50,0
	.goto Tirisfal Glades,36.13,68.74,50,0
    .xp 5+2350 >>Monter votre expérience jusqu'à 2350+/2800xp
step
    .goto Tirisfal Glades,38.24,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calvin|r
    .accept 8 >> Acceptez la quête Un marché de voleur
    .target Calvin Montague

]])

RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Horde
#name 6-13 Mort-vivant
#version 1
#group RestedXP Guide de Survie (H)
#subgroup RestedXP Guide de Survie 1-20
#defaultfor Undead
#next 13-15 Forêt des Pins argentés

step
    .goto Tirisfal Glades,40.91,54.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Nécrogarde Simmer|r
    .accept 365 >>Acceptez la quête Les champs du Chagrin
    .target Deathguard Simmer
step
    #loop
    .goto Tirisfal Glades,56.13,52.48,0
    .goto Tirisfal Glades,40.77,54.42,0
    .goto Tirisfal Glades,40.77,54.42,40,0
    .goto Tirisfal Glades,42.04,55.11,40,0
    .goto Tirisfal Glades,43.59,54.30,40,0
    .goto Tirisfal Glades,46.21,56.78,40,0
    .goto Tirisfal Glades,48.88,57.93,40,0
    .goto Tirisfal Glades,50.73,57.27,40,0
    .goto Tirisfal Glades,52.52,54.48,40,0
    .goto Tirisfal Glades,54.49,52.65,40,0
    .goto Tirisfal Glades,56.13,52.48,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gordo|r. Gordo est une abomination patrouillant le long de la route pour Brill
    .accept 5481 >>Acceptez la quête La tâche de Gordo
    .target Gordo
    .unitscan Gordo
step << Priest/Warlock
    .goto Tirisfal Glades,52.59,55.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bowen|r
    .train 3908 >> Apprenez |T136249:0|t[Couture]
    >>|cRXP_WARN_Gardez vos|r |T132889:0|t[Étoffes de lin]|cRXP_WARN_. Cela vous permettra de fabriquer une baguette plus tard|r
    .target Bowen Brisboise
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r et à |cRXP_FRIENDLY_Zygand|r
    .accept 404 >>Acceptez la quête Une tâche putride
    .target +Deathguard Dillinger
    .goto Tirisfal Glades,58.20,51.45
    .turnin 383 >>Rendez la quête Informations décisives
    .accept 427 >>Acceptez la quête En guerre avec la Croisade écarlate
    .target +Executor Zygand
    .goto Tirisfal Glades,60.59,51.77
step << Rogue
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Mrs. Winters|r|cRXP_BUY_. Achetez des |r [Weighted Throwing Axe] |cRXP_BUY_à Mrs. Winters|r
    .collect 3131,200,786,1 --Weighted Throwing Axe (200)
    .target Mrs. Winters
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Stylet] (4s 01c). Vous reviendrez plus rien si vous n'avez pas encore assez d'argent
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Achetez un|r [Stiletto] |cRXP_BUY_à Oliver|r
    .collect 2494,1,404,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith Claws
    +Équipez la [Hache de lancer équilibrée]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    #optional
    #completewith Claws
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Gladius] (5s 36c). Vous reviendrez plus rien si vous n'avez pas encore assez d'argent
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Achetez un|r [Gladius] |cRXP_BUY_à Oliver|r
    .collect 2488,1,404,1 --Collect Gladius (1)
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith Claws
    +Équipez le [Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Renee|r
    .turnin 8 >>Rendez la quête Un marché de voleur
    .home >> Liez votre Pierre de Foyer à Brill
    .target Innkeeper Renee
    .bindlocation 2119
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beryl|r au deuxième étage
    .turnin 5651 >> Rendez la quête Au service des ténèbres
    .accept 5650 >> Acceptez la quête Vêtements des ténèbres
	.train 591 >>Apprenez [Châtiment]
    .train 17 >>Apprenez [Mot de pouvoir : Bouclier]
    .train 2052 >>Apprenez [Soins inférieurs Rank 2]
    .target Dark Cleric Beryl
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cain|r au second étage
    .train 143 >> Apprenez [Boule de feu]
    .train 2136 >>Apprenez [Trait de feu]
    .target Cain Firesong
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à  |cRXP_FRIENDLY_Austil|r
    .train 3127 >>Apprenez [Parade]
    .target Austil de Mon
    .money <0.01
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r au second étage
    .train 1757 >> Apprenez [Attaque Pernicieuse]
    .target Marion Call
    .money <0.01
step << Warlock
    .goto Tirisfal Glades,61.56,52.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gina Lang|r au second étage
    >>|cRXP_BUY_Achetez un|r [Grimoire de Pacte de sang] |cRXP_BUY_ à Gina|r
    .collect 16321,1,404,1 --Grimoire of Blood Pact
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .target Gina Lang
    .train 6307,1 --Blood Pact (Rank 1)
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rupert|r
    .train 695 >> Apprenez [Trait de l'ombre]
    .train 1454 >> Apprenez [Connexion]
    .target Rupert Boch
    .money <0.02
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rupert|r
    .train 695 >> Apprenez [Trait de l'ombre]
    .target Rupert Boch
step << Priest/Warlock
    .goto Tirisfal Glades,61.76,51.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vance Tristefosse|r
    .train 7411 >> Apprenez l' |T136244:0|t[Enchantement]. Ce métier, allié avec la |T136249:0|t[Couture], vous permettra de fabriquer une baguette plus tard
    .target Vance Undergloom
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Renee|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Delaniel|r << Mage/Priest
    >>|cRXP_BUY_Achetez-lui des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r << Warrior/Rogue
    >>|cRXP_BUY_Achetez-lui du|r |T132815:0|t[Lait glacé] |cRXP_BUY_et des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r << Warlock
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 1179,15,367,1 << Mage/Priest --Ice Cold Milk (15)
    .collect 4605,10,367,1 << Rogue/Warrior --Red-speckled Mushroom (10)
    .collect 1179,10,367,1 << Warlock --Ice Cold Milk (10)
    .collect 4605,5,367,1 << Warlock --Red-speckled Mushroom (5)
    .money <0.025 << Warrior/Rogue
    .money <0.0375 << Mage/Priest/Warlock
    .target Innkeeper Renee
 step
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Johaan|r
    .accept 367 >>Acceptez la quête Une Peste nouvelle
    .target Apothecary Johaan
step << Priest
    .goto Tirisfal Glades,59.18,46.49
    >>Lancez |T135929:0|t[Soins inférieurs] et |T135987:0|t[Mot de pouvoir : Robustesse] sur le |cRXP_FRIENDLY_Nécrogarde Kel|r
    >>|cRXP_WARN_Vous allez avoir besoin de|r |T135929:0|t[Soins inférieurs Rang 2] |cRXP_WARN_pour cette quête|r
    .complete 5650,1 --Heal and fortify Deathguard Kel (1)
    .target Deathguard Kel
step
    #completewith Claws
    >>Ramassez l' |cRXP_PICK_Herbe des ténèbres|r sur le sol
    .complete 5481,1 --Gloom Weed (3)
step
    #completewith next
    >>Tuez tous les |cRXP_ENEMY_Sombredogues décrépits|r que vous voyez. Dépouillez-les pour leur |cRXP_LOOT_Sang|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
step
    #label Claws
    #loop
    .goto Tirisfal Glades,52.63,56.98,0
    .goto Tirisfal Glades,54.95,50.53,50,0
    .goto Tirisfal Glades,53.35,50.29,50,0
    .goto Tirisfal Glades,52.12,50.38,50,0
    .goto Tirisfal Glades,51.28,51.63,50,0
    .goto Tirisfal Glades,52.03,53.74,50,0
    .goto Tirisfal Glades,52.29,56.72,50,0
    .goto Tirisfal Glades,53.95,56.53,50,0
    .goto Tirisfal Glades,53.55,58.25,50,0
    .goto Tirisfal Glades,52.63,56.98,50,0
    >>Tuez les |cRXP_ENEMY_Morts pourrissants|r et |cRXP_ENEMY_Cadavres décomposés|r. Dépouillez-les pour leurs |cRXP_LOOT_Griffes|r
    .complete 404,1 --Putrid Claw (7)
    .mob Rotting Dead
    .mob Ravaged Corpse
step
    #completewith next
    >>Ramassez l' |cRXP_PICK_Herbe des ténèbres|r sur le sol
    .complete 5481,1 --Gloom Weed (3)
step
    #loop
    .goto Tirisfal Glades,41.70,44.01,0
    .goto Tirisfal Glades,44.41,56.83,100,0
    .goto Tirisfal Glades,42.64,53.40,100,0
    .goto Tirisfal Glades,40.84,46.59,100,0
    .goto Tirisfal Glades,38.69,44.10,100,0
    .goto Tirisfal Glades,38.63,39.44,100,0
    .goto Tirisfal Glades,41.70,44.01,100,0
    >>Tuez tous les |cRXP_ENEMY_Sombredogues décrépits|r que vous voyez. Dépouillez-les pour leur |cRXP_LOOT_Sang|r
    >>|cRXP_WARN_Évitez les|r |cRXP_ENEMY_Sombredogues maudits|r|cRXP_WARN_. Ils ont un niveau plus élevé|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
step
    #loop
    .goto Tirisfal Glades,39.55,50.64,0
    .goto Tirisfal Glades,44.43,57.33,0
    .goto Tirisfal Glades,39.55,50.64,50,0
    .goto Tirisfal Glades,44.43,57.33,50,0
    >>Terminez de ramasser l' |cRXP_PICK_Herbe des ténèbres|r sur le sol
    .complete 5481,1 --Gloom Weed (3)
step << Priest/Warlock
    #sticky
    #label Linen
    #completewith HorrorsandSpirits
    >>|cRXP_WARN_Commencez à récolter de 3 stacks d'|r |T132889:0|t[Etoffe de lin] |cRXP_WARN_Ils seront utilisé pour fabriquer votre baguette plus tard|r
    .collect 2589,60 --Linen Cloth (60)
step
    #loop
    .goto Tirisfal Glades,36.63,50.09,0
    .goto Tirisfal Glades,37.20,52.17,50,0
    .goto Tirisfal Glades,36.64,50.09,50,0
    .goto Tirisfal Glades,36.10,49.07,50,0
    .goto Tirisfal Glades,35.08,49.82,50,0
    .goto Tirisfal Glades,35.30,50.91,50,0
    .goto Tirisfal Glades,34.57,51.58,50,0
    .goto Tirisfal Glades,36.63,50.09,50,0
    >>Ramassez les |cRXP_LOOT_Citrouilles|r dans le champ.
    .complete 365,1 --Tirisfal Pumpkin (10)
step
    #loop
    .goto Tirisfal Glades,31.78,51.36,0
    .goto Tirisfal Glades,33.73,49.34,50,0
    .goto Tirisfal Glades,33.65,51.07,50,0
    .goto Tirisfal Glades,31.78,51.36,50,0
    .goto Tirisfal Glades,30.02,50.48,50,0
    .goto Tirisfal Glades,29.91,49.24,50,0
    .goto Tirisfal Glades,30.62,47.53,50,0
    .goto Tirisfal Glades,31.01,46.50,50,0
    .goto Tirisfal Glades,32.15,44.83,50,0
    .goto Tirisfal Glades,33.73,45.29,50,0
    .goto Tirisfal Glades,34.10,47.88,50,0
    .goto Tirisfal Glades,33.73,49.34,50,0
    >>Tuez les |cRXP_ENEMY_Guerriers écarlates|r.
    >>|cRXP_WARN_Faites attention comme ils ont 50 % de parade augmentée pendant 8 secondes après leur animation de posture défensive|r << Rogue/Warrior
    .complete 427,1 --Scarlet Warrior (10)
    .mob Scarlet Warrior
step
    #completewith BrillTurnin1
    .hs >> Utilisez votre Pierre de foyer pour revenir à Brill
    .use 6948
    .subzoneskip 159
    .bindlocation 2119,1
    .cooldown item,6948,>0
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beryl|r au deuxième étage
    .turnin 5650 >>Rendez la quête Vêtements des ténèbres
    .train 591 >>Apprenez [Châtiment]
    .train 17 >>Apprenez [Mot de pouvoir : Bouclier]
    .target Dark Cleric Beryl
step
    #label BrillTurnin1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Exécuteur Zygand|r, à l' |cRXP_FRIENDLY_Apothicaire Johaan|r et au |cRXP_FRIENDLY_Nécrogarde Dillinger|r
    .turnin 427 >>Rendez la quête En guerre avec la Croisade écarlate
    .accept 370 >>Acceptez la quête En guerre avec la Croisade écarlate
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .turnin 367 >>Rendez la quête Une Peste nouvelle
    .turnin 365 >> Rendez la quête Les champs du Chagrin
    .accept 368 >>Acceptez la quête Une Peste nouvelle
    .accept 407 >> Acceptez la quête Les champs du Chagrin
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.40
    .turnin 404 >>Rendez la quête Une tâche putride
    .accept 426 >>Acceptez la quête La chute des moulins
    .target +Deathguard Dillinger
    .goto Tirisfal Glades,58.20,51.43
step
    #loop
    .goto Tirisfal Glades,57.71,48.96,0
    .goto Tirisfal Glades,58.29,49.80,30,0
    .goto Tirisfal Glades,57.71,48.96,30,0
    .goto Tirisfal Glades,59.26,46.73,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apprenti apothicaire Holland|r, il patrouille autour du cimetière
    .turnin 5481 >>Rendez la quête La tâche de Gordo
    .accept 5482 >>Acceptez la quête Herbe maléfique
    .target Junior Apothecary Holland
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Stylet] (4s 01c). Vous reviendrez plus rien si vous n'avez pas encore assez d'argent
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Achetez un|r [Stiletto] |cRXP_BUY_à Oliver|r
    .collect 2494,1,404,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith ZeptoDurotar
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Gladius] (5s 36c). Vous reviendrez plus rien si vous n'avez pas encore assez d'argent
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Achetez un|r [Gladius] |cRXP_BUY_à Oliver|r
    .collect 2488,1,404,1 --Collect Gladius (1)
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith ZeptoDurotar
    +Équipez le [Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Renee|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Delaniel|r << Mage/Priest
    >>|cRXP_BUY_Achetez-lui des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r << Warrior/Rogue
    >>|cRXP_BUY_Achetez-lui du|r |T132815:0|t[Lait glacé] |cRXP_BUY_et des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r << Warlock
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 1179,20,818,1 << Mage/Priest --Ice Cold Milk (20)
    .collect 4605,10,818,1 << Rogue/Warrior/Warlock --Red-speckled Mushroom (10)
    .collect 1179,10,818,1 << Warlock --Ice Cold Milk (10)
    .money <0.025 << Rogue/Warrior
    .money <0.050 << Warlock/Mage/Priest
    .target Innkeeper Renee
step
    #label ZeptoDurotar
    .goto Tirisfal Glades,60.96,58.63,12,0
    .goto Tirisfal Glades,61.51,59.01,10,0
    .goto Tirisfal Glades,61.27,59.22,8,0
    .goto Tirisfal Glades,61.13,58.84,8,0
    .goto Tirisfal Glades,61.38,58.71,8,0
    .goto Tirisfal Glades,61.34,59.17,8,0
    .goto Tirisfal Glades,60.51,58.69,-1
    .goto Tirisfal Glades,60.94,46.35,-1
    >>Montez la Tour des Zeppelins
    .zone Durotar >>Prenez le zeppelin pour Durotar. Vous reviendrez pour terminer Tirisfal plus tard
    .zoneskip Durotar
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Acceptez la quête Des vents dans le désert
    .target Rezlak
step
    #completewith next
    .goto Durotar,47.40,22.57,60,0
    .goto Durotar,49.08,28.48,60,0
    .goto Durotar,52.19,33.49,120,0
    .goto Durotar,52.25,40.17,60 >> Voyagez jusqu'à Tranchecolline
    .subzoneskip 352
step << Warrior/Rogue
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Apprenez [Forge]
    .target Dwukk
    .skill blacksmithing,1,1
step << Warrior/Rogue
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Apprenez [Minage]
    >>Ceci vous permettra de trouver des |cRXP_LOOT_[Rough Stones]|r sur les gisements pour fabriquer les [Pierre à aiguiser] (+2 dégâts aux armes pendant 30 minutes)
    .target Krunn
step << Warrior/Rogue
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Achetez une|r [Pioche de mineur] |cRXP_BUY_à|r |cRXP_FRIENDLY_Wuark|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Grosk|r
    .home >> Liez votre Pierre de Foyer à Tranchecolline
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Kauth|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_Achetez des|r [Cuissot] |cRXP_BUY_à Hai'zan|r << Rogue/Warrior
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Innkeeper Grosk
    .bindlocation 362
    .subzoneskip 362,1
step
    >>|cRXP_WARN_Vous pouvez parler à|r |cRXP_FRIENDLY_Gar'thok|r |cRXP_WARN_de l'extérieur ou du haut du bunker|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gar'Thok|r et |cRXP_FRIENDLY_Torka|r
    .accept 784 >>Acceptez la quête Vaincre les traîtres
    .accept 837 >>Acceptez la quête Empiètement
    .target +Gar'thok
    .goto Durotar,51.95,43.50
    .accept 815 >>Acceptez la quête Des œufs pour l'omelette
    .target +Cook Torka
    .goto Durotar,51.09,42.49
step
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Voyagez vers la tour
step
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Montez la tour vers Furl
step
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Acceptez la quête Assumer ses responsabilités
    .target Furl Scornbrow
step
    #completewith TravelToTiragarde
    +Lancez [Découverte de gisement] et minez tous les Filons de cuivre que vous trouvez pour les |cRXP_LOOT_[Rough Stones]|r. Fabriquez des [Pierre à aiguiser] avec elles
    .collect 2862,1,786,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step
    #completewith next
    .goto Durotar,52.06,68.30,50 >> Voyagez vers le Village de Sen'jin
    .subzoneskip 367
step
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ukor|r
    .accept 2161 >>Acceptez la quête Un Fardeau de Péon
    .target Ukor
step
    #loop
    .goto Durotar,54.20,73.36,0
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    .goto Durotar,54.20,73.36,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lar|r. Il patrouille dans le coin
    .accept 786 >>Acceptez la quête Déjouer l'agression des Kolkar
    .target Lar Prowltusk
step
    #label SenjinPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vel'rin|r, |cRXP_FRIENDLY_Vornal|r et |cRXP_FRIENDLY_Gadrin|r
    .accept 817 >>Acceptez la quête Proie nécessaire
    .target +Vel'rin Fang
    .goto Durotar,55.95,73.93
    .accept 818 >>Acceptez la quête Un esprit parfaitement éduqué
    .target +Master Vornal
    .goto Durotar,55.94,74.40
    .accept 808 >>Acceptez la quête Crâne de Minshina
    .accept 826 >>Acceptez la quête Zalazane
    .accept 823 >>Acceptez la quête Un rapport à Orgnil
    .target +Master Gadrin
    .goto Durotar,55.94,74.72
step << Rogue
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_K'waii|r|cRXP_BUY_. Achetez une |r [Hache de lancer équilibrée] |cRXP_BUY_à K'waii|r
    .collect 3131,200,786,1 --Weighted Throwing Axe (200)
    .target K'waii
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Stylet] (4s 01c). Vous reviendrez plus rien si vous n'avez pas encore assez d'argent
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Achetez un|r [Stylet] |cRXP_BUY_à Trayexir|r
    .collect 2494,1,786,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour une [Hache large] (4s 84c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Achetez une|r [Hache large] |cRXP_BUY_à Trayexir|r
    .collect 2491,1,786,1 --Collect Large Axe (1)
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour une [Tomahawk] (5s 40c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Achetez une|r [Tomahawk] |cRXP_BUY_à Trayexir|r
    .collect 2490,1,786,1 --Collect Tomahawk (1)
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith Bonfire
    +Équipez la [Hache de lancer équilibrée]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    #optional
    #completewith Bonfire
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith Bonfire
    +Équipez la [Hache large]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith Bonfire
    +Équipez la [Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Mage
    .goto Durotar,56.30,75.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Un'Thuwa|r
    .train 143 >> Apprenez [Boule de feu]
    .train 2136 >>Apprenez [Trait de feu]
    .target Un'Thuwa
step
    #completewith next
    .goto Durotar,58.54,75.89,40,0
    .goto Durotar,57.73,77.91,40,0
    .goto Durotar,55.72,79.62,40,0
    .goto Durotar,54.23,82.26,40,0
    .goto Durotar,52.20,83.00,40,0 >>Descendez sur la plage. Tuez les |cRXP_ENEMY_Crawlers|r et les |cRXP_ENEMY_Makruras|r. Dépouillez-les pour leur |cRXP_LOOT_Mucus|r et leur |cRXP_LOOT_Eyes|r. Vous n'avez pas à terminer cette étape maintenant
    .complete 818,2,4 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1,2 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    .goto Durotar,52.20,83.00,75 >> Allez au bout de la plage
    .isOnQuest 818
step
    .goto Durotar,50.9,79.2,40 >>Entrez dans la base des Kolkar
    .isOnQuest 786
step
    #sticky
    #completewith Bonfire
    +Faites attention si |cRXP_ENEMY_Kolkanis|r est présent, c'est un mob rare de niveau 9. Vous allez peut-être utiliser une [Potion de soins mineure] si vous en avez
    .unitscan Warlord Kolkanis
step
    >>Brûlez les |cRXP_PICK_Plans d'attaque|r au sol à l'intérieur de la tente
    .goto Durotar,49.8,81.2
    .complete 786,1 --Attack Plan: Valley of Trials destroyed (1)
step
    >>Brûlez les |cRXP_PICK_Attack Plan|r sur le sol
    .goto Durotar,47.7,77.4
    .complete 786,2 --Attack Plan: Sen'jin Village destroyed (1)
step
    #label Bonfire
    >>Brûlez les |cRXP_PICK_Attack Plan|r sur le sol
    .goto Durotar,46.3,79.0
    .complete 786,3 --Attack Plan: Orgrimmar destroyed (1)
step
    #completewith next
    .goto Durotar,50.95,79.14,30 >>Quittez la base Kolkar
    .isQuestComplete 786
step
    #loop
    .goto Durotar,54.20,73.36,0
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    .goto Durotar,54.20,73.36,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lar|r. Il patrouille dans le coin
    .turnin 786 >>Rendez la quête Déjouer l'agression des Kolkar
    .target Lar Prowltusk
step
    #optional
    .goto Durotar,55.95,74.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vornal|r
    .turnin 818 >>Rendez la quête Un esprit parfaitement éduqué
    .target Master Vornal
    .isQuestComplete 818
step
    .goto Durotar,55.62,73.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hai'zan|r
    .vendor 3933 >> Vendez votre surplus
    .target Hai'zan
    .money >0.025 << Warrior/Rogue/Shaman
step << Warrior/Rogue/Shaman
    .goto Durotar,55.62,73.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hai'zan|r
    >>|cRXP_BUY_Achetez des|r [Cuissot] |cRXP_BUY_à Hai'zan|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 2287,10,823,1 --Haunch of Meat (10)
    .money <0.025
    .target Hai'zan
step << skip --Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Duokna|r --Refreshing Spring Water (20)
    .collect 159,20,784,1
    .target K'waii
    .money <0.010
step << skip --Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Duokna|r --Refreshing Spring Water (10)
    .collect 159,10,784,1
    .target K'waii
    .money <0.0050
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Stylet] (4s 01c). Vous reviendrez plus rien si vous n'avez pas encore assez d'argent
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Achetez un|r [Stylet] |cRXP_BUY_à Trayexir|r
    .collect 2494,1,823,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour une [Hache large] (4s 84c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Achetez une|r [Hache large] |cRXP_BUY_à Trayexir|r
    .collect 2491,1,823,1 --Collect Large Axe (1)
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour une [Tomahawk] (5s 40c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Achetez une|r [Tomahawk] |cRXP_BUY_à Trayexir|r
    .collect 2490,1,823,1 --Collect Tomahawk (1)
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith TravelToTiragarde
    +Équipez la [Hache de lancer équilibrée]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    #optional
    #completewith TravelToTiragarde
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith TravelToTiragarde
    +Équipez la [Hache large]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith TravelToTiragarde
    +Équipez la [Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step
    #label TravelToTiragarde
    .goto Durotar,57.26,54.69,60,0
    .subzone 372 >> Voyagez vers le Donjon de Tiragarde
    .isOnQuest 784
step
    #sticky
    #completewith AgedEnvelope
    +Faites attention si |cRXP_ENEMY_Watch Commander Zalaphil|r est présent, c'est un rare de niveau 9. Vous allez peut-être devoir utiliser une [Potions de soins mineure] si vous en avez une
    .unitscan Watch Commander Zalaphil
step
    #completewith Benedict
    #requires TravelToTiragarde
    .goto Durotar,59.81,58.22,8,0
    .goto Durotar,59.64,58.44,8,0
    .goto Durotar,59.55,57.89,8,0
    .goto Durotar,59.29,57.89,8 >> Allez au deuxième étage du donjon
step
    #completewith AgedEnvelope
    >>Tuez les |cRXP_ENEMY_Kul Tiras Sailors|r et les |cRXP_ENEMY_Kul Tiras Marines|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
    .complete 791,1 --Canvas Scraps (8)
step
    #label Benedict
    .goto Durotar,59.75,58.27
    >>Tuez |cRXP_ENEMY_Lieutenant Benedict|r. Dépouillez-le pour sa |cRXP_LOOT_Key|r
    .complete 784,3 --Lieutenant Benedict (1)
    .collect 4882,1 --Collect Benedict's Key (1)
    .mob Lieutenant Benedict
step
    #label AgedEnvelope
    .goto Durotar,59.87,57.87,5,0
    .goto Durotar,59.83,57.58,5,0
    .goto Durotar,59.80,57.82,5,0
    .goto Durotar,59.94,57.82,5,0
    .goto Durotar,59.94,57.61,5,0
    .goto Durotar,59.27,57.65
    >>Montez les escaliers dans le donjon
    >>Ouvrez |cRXP_PICK_Benedict's Chest|r. Ramassez la [|cRXP_LOOT_Aged Envelope|r]
    >>Utilisez l'[|cRXP_LOOT_Aged Envelope|r] pour commencer la quête
    .collect 4881,1,830 --Collect Aged Envelope (1)
    .accept 830 >>Acceptez la quête Les ordres de l'amiral
    .use 4881
step
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>Tuez les |cRXP_ENEMY_Kul Tiras Sailors|r et les |cRXP_ENEMY_Kul Tiras Marines|r. Dépouillez-les pour leur |cRXP_LOOT_Canvas Scraps|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
    .complete 791,1 --Canvas Scraps (8)
    .mob +Kul Tiras Marine
    .mob +Kul Tiras Sailor
    .itemcount 4870,<8 --Canvas Scraps (<8)
step
    #optional
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>Tuez les |cRXP_ENEMY_Kul Tiras Sailors|r et les |cRXP_ENEMY_Kul Tiras Marines|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
step
    #optional
    #label ScrapsFinished
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>Tuez les |cRXP_ENEMY_Kul Tiras Sailors|r et les |cRXP_ENEMY_Kul Tiras Marines|r. Dépouillez-les pour leur |cRXP_LOOT_Canvas Scraps|r
    .complete 791,1 --Canvas Scraps (8)
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step << !Priest !Mage
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+2180 >> Montez votre expérience jusqu'à 2200+/4500xp
step << Priest
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+1730 >> Montez votre expérience jusqu'à 1750+/4500xp
step
    #completewith next
    .subzoneskip 362 >> Voyagez jusqu'à Tranchecolline
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r et |cRXP_FRIENDLY_Torka|r
    .turnin 823 >>Rendez la quête Un rapport à Orgnil
    .accept 806 >>Acceptez la quête De sombres orages
    .target +Orgnil Soulscar
    .goto Durotar,52.24,43.15
    .turnin 784 >>Rendez la quête Vaincre les traîtres
    .turnin 830 >>Rendez la quête Les ordres de l'amiral
    .accept 825 >>Acceptez la quête Des épaves
    .accept 831 >>Acceptez la quête Les ordres de l'amiral
    .accept 837 >>Acceptez la quête Empiètement
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
    .accept 815 >>Acceptez la quête Des œufs pour l'omelette
    .target +Cook Torka
    .goto Durotar,51.09,42.49
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|cRXP_FRIENDLY_ Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r et |cRXP_FRIENDLY_Torka|r
    .turnin 823 >>Rendez la quête Un rapport à Orgnil
    .target +Orgnil Soulscar
    .goto Durotar,52.24,43.15
    .turnin 784 >>Rendez la quête Vaincre les traîtres
    .turnin 830 >>Rendez la quête Les ordres de l'amiral
    .accept 825 >>Acceptez la quête Des épaves
    .accept 831 >>Acceptez la quête Les ordres de l'amiral
    .accept 837 >>Acceptez la quête Empiètement
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
    .accept 815 >>Acceptez la quête Des œufs pour l'omelette
    .target +Cook Torka
    .goto Durotar,51.09,42.49
step
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Voyagez vers la tour
step
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Montez la tour vers Furl
step
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Furl|r
    .turnin 791 >>Rendez la quête Assumer ses responsabilités
    .target Furl Scornbrow
step << Warrior/Rogue
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Apprenez [Minage]
    >>Ceci vous permettra de trouver des |cRXP_LOOT_[Rough Stones]|r sur les gisements pour fabriquer les [Pierre à aiguiser] (+2 dégâts aux armes pendant 30 minutes)
    .target Krunn
step << Warrior/Rogue
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Achetez une|r [Pioche de mineur] |cRXP_BUY_à|r |cRXP_FRIENDLY_Wuark|r
    .collect 2901,1,818,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Apprenez [Forge]
    .target Dwukk
    .skill blacksmithing,1,1
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Stylet] (4s 01c). Vous reviendrez plus rien si vous n'avez pas encore assez d'argent
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Achetez un|r [Stylet] |cRXP_BUY_à Uhgar|r
    .collect 2494,1,818,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour une [Hache large] (4s 84c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Achetez une|r [Hache large] |cRXP_BUY_à Uhgar|r
    .collect 2491,1,818,1 --Collect Large Axe (1)
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour une [Tomahawk] (5s 40c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Achetez une|r [Tomahawk] |cRXP_BUY_à Uhgar|r
    .collect 2490,1,818,1 --Collect Tomahawk (1)
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith Toolboxes
    +Équipez la [Hache de lancer équilibrée]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    #optional
    #completewith Toolboxes
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith Toolboxes
    +Équipez la [Hache large]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith Toolboxes
    +Équipez la [Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Grosk|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Kauth|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_BUY_Achetez des|r [Cuissot] |cRXP_BUY_à Hai'zan|r << Rogue/Warrior
    >>Gardez 4 pièces d'argent pour vos sorts de classe ! << Rogue/Warrior/Shaman/Warlock
    >>Gardez 2 pièces d'argent pour vos sorts de classe ! << Priest
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .turnin 2161 >>Rendez la quête Un Fardeau de Péon
    .target Innkeeper Grosk
    .train 6760,1 << Rogue
    .train 139,1 << Priest
    .train 980,1 << Warlock
    .train 8044,1 << Shaman
    .train 284,1 << Warrior
step << !Mage !Hunter !Druid
    #optional
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Grosk|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Kauth|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_BUY_Achetez des|r [Cuissot] |cRXP_BUY_à Hai'zan|r << Rogue/Warrior
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .turnin 2161 >>Rendez la quête Un Fardeau de Péon
    .target Innkeeper Grosk
    .train 6760,3 << Rogue
    .train 139,3 << Priest
    .train 980,3 << Warlock
    .train 8044,3 << Shaman
    .train 284,3 << Warrior
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarshaw|r
    .train 284 >> Apprenez vos sorts de classe
    .target Tarshaw Jaggedscar
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dhugru|r
    .train 980 >> Apprenez vos sorts de classe
    .target Dhugru Gorelust
step << Warlock
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kitha|r et achetez [Éclair de feu Rang 2]
    .collect 16302,1,818,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Warlock
    #completewith Tools
    .train 20270 >> Utilisez le [Grimoire d’Éclair de feu Rang 2]
    .use 16302
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kaplak|r
    .train 6760 >> Apprenez vos sorts de classe
    .target Kaplak
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tai'jin|r
    .train 139 >> Apprenez vos sorts de classe
    .target Tai'jin
step
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rawrk|r
    .train 3273 >>Apprenez [Premiers soins]
    .money <0.01
    .target Rawrk
step
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jark|r
    >>|cRXP_BUY_Achetez une|r [Petite sacoche marron] |cRXP_BUY_à|r |cRXP_BUY_Jark|r
    .collect 4496,1,818,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step
    #completewith next
    >>Tuez |cRXP_ENEMY_Pygmy Surf Crawlers|r et les |cRXP_ENEMY_Surf Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Mucus|r
    >>Tuez les |cRXP_ENEMY_Coquillards makrura|r et les |cRXP_ENEMY_Claqueur makrura|r. Dépouillez-les pour leurs |cRXP_LOOT_Yeux|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #label Tools
    #loop
    .goto Durotar,61.96,55.46,0
    .goto Durotar,61.96,55.46,20,0
    .goto Durotar,62.25,56.34,20,0
    .goto Durotar,62.43,59.84,20,0
    .goto Durotar,62.09,60.68,20,0
    .goto Durotar,62.51,60.56,20,0
    .goto Durotar,63.24,58.10,20,0
    .goto Durotar,62.25,56.34,20,0
    >>Ramassez les |cRXP_PICK_Gnomish Toolboxes|r autour et à l'intérieur des bateaux
    .complete 825,1 --Gnomish Tools (3)
step
    #completewith TaillasherEggs
    .goto Durotar,67.10,69.29,100 >> Nagez vers l'Île
step
    #completewith Fur
    >>Tuez les |cRXP_ENEMY_Tigres|r. Dépouillez-les pour leur |cRXP_LOOT_Fourrure|r. Vous n'avez pas besoin de terminer cette étape maintenant
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #completewith next
    >>Tuez |cRXP_ENEMY_Pygmy Surf Crawlers|r et les |cRXP_ENEMY_Surf Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Mucus|r
    >>Tuez les |cRXP_ENEMY_Coquillards makrura|r et les |cRXP_ENEMY_Claqueur makrura|r. Dépouillez-les pour leurs |cRXP_LOOT_Yeux|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #label TaillasherEggs
    #loop
    .goto Durotar,67.04,71.40,0
    .goto Durotar,70.23,70.84,0
    .goto Durotar,67.74,69.86,40,0
    .goto Durotar,67.04,71.40,40,0
    .goto Durotar,67.66,73.86,40,0
    .goto Durotar,68.67,74.47,40,0
    .goto Durotar,69.76,74.69,40,0
    .goto Durotar,70.29,73.31,40,0
    .goto Durotar,70.23,70.84,40,0
    .goto Durotar,69.69,70.35,40,0
    .goto Durotar,69.21,69.69,40,0
    >>Ramassez les |cRXP_PICK_Taillasher Eggs|r sur le sol
    >>Ils sont gardés en général par un |cRXP_ENEMY_Bloodtalon Taillasher|r
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #completewith next
    >>Tuez |cRXP_ENEMY_Pygmy Surf Crawlers|r et les |cRXP_ENEMY_Surf Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Mucus|r
    >>Tuez les |cRXP_ENEMY_Coquillards makrura|r et les |cRXP_ENEMY_Claqueur makrura|r. Dépouillez-les pour leurs |cRXP_LOOT_Yeux|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    .goto Durotar,66.94,84.41,150 >>Nagez vers l'île principale
step
    #completewith ZalazaneKill
    >>Tuez les |cRXP_ENEMY_Hexed Trolls|r et les |cRXP_ENEMY_Voodoo Trolls|r.
    >>|cRXP_WARN_Faites attention !|r Les |cRXP_ENEMY_Trolls vaudou|r |cRXP_WARN_peuvent lancer|r |T136052:0|t[Vague de soins]
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
step
    #completewith next
    >>Tuez |cRXP_ENEMY_Zalazane|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>Gardez votre [Horion de terre] pour quand il lance [Vague de soins] << Shaman
    >>Gardez votre [Suriner] pour lorsqu'il lance [Vague de soins] << Rogue
    >>Faites attention. Il peut lancer [Vague de soins]. Utilisez votre [Potion] si nécessaire << !Shaman !Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #label MinshinasSkull
    .goto Durotar,67.4,87.8
    >>Ramassez l'un des |cRXP_LOOT_Skulls|r sur le sol
    .complete 808,1 --Minshina's Skull (1)
step
    #label ZalazaneKill
    .goto Durotar,67.4,87.8
    >>Tuez |cRXP_ENEMY_Zalazane|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>Gardez votre [Horion de terre] pour quand il lance [Vague de soins] << Shaman
    >>Gardez votre [Suriner] pour lorsqu'il lance [Vague de soins] << Rogue
    >>Faites attention. Il peut lancer [Vague de soins]. Utilisez votre [Potion] si nécessaire << !Shaman !Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Tigers|r. Dépouillez-les pour leur |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #label Fur
    #loop
    .goto Durotar,67.23,88.76,0
    .goto Durotar,67.23,88.76,40,0
    .goto Durotar,66.52,87.74,40,0
    .goto Durotar,65.94,86.72,40,0
    .goto Durotar,65.90,84.04,40,0
    .goto Durotar,65.88,82.85,40,0
    .goto Durotar,67.38,82.61,40,0
    .goto Durotar,68.42,82.43,40,0
    .goto Durotar,68.50,84.32,40,0
    .goto Durotar,68.47,86.77,40,0
    .goto Durotar,67.23,88.00,40,0
    >>Tuez les |cRXP_ENEMY_Hexed Trolls|r et les |cRXP_ENEMY_Voodoo Trolls|r.
    >>|cRXP_WARN_Faites attention !|r Les |cRXP_ENEMY_Trolls vaudou|r |cRXP_WARN_peuvent lancer|r |T136052:0|t[Vague de soins]
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
step
    #completewith next
    >>Tuez |cRXP_ENEMY_Pygmy Surf Crawlers|r et les |cRXP_ENEMY_Surf Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Mucus|r
    >>Tuez les |cRXP_ENEMY_Coquillards makrura|r et les |cRXP_ENEMY_Claqueur makrura|r. Dépouillez-les pour leurs |cRXP_LOOT_Yeux|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #loop
    .goto Durotar,59.79,83.44,0
    .goto Durotar,65.27,87.86,50,0
    .goto Durotar,64.72,88.53,50,0
    .goto Durotar,64.70,84.89,50,0
    .goto Durotar,64.68,80.80,50,0
    .goto Durotar,65.35,80.11,50,0
    .goto Durotar,65.87,81.23,50,0
    .goto Durotar,60.28,80.04,50,0
    .goto Durotar,60.60,82.26,50,0
    .goto Durotar,59.88,83.51,50,0
    .goto Durotar,59.56,84.86,50,0
    .goto Durotar,60.84,88.79,50,0
    .goto Durotar,61.41,89.69,50,0
    .goto Durotar,61.48,91.37,50,0
    .goto Durotar,60.37,91.36,50,0
    .goto Durotar,59.04,90.51,50,0
    .goto Durotar,59.79,83.44,50,0
    >>Tuez les |cRXP_ENEMY_Tigers|r. Dépouillez-les pour leur |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #loop
    .goto Durotar,59.64,73.84,0
    .goto Durotar,59.64,73.84,60,0
    .goto Durotar,58.11,77.30,60,0
    .goto Durotar,57.27,79.38,60,0
    .goto Durotar,55.66,80.47,60,0
    .goto Durotar,53.8,83.14,60,0
    >>Tuez les |cRXP_ENEMY_Crawlers|r et les |cRXP_ENEMY_Makruras|r. Dépouillez-les pour leur |cRXP_LOOT_Mucus|r et leur |cRXP_LOOT_Eyes|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #completewith Zalazaneturnin
    .goto Durotar,56.06,74.72,150 >> Voyagez vers le Village de Sen'jin
    .subzoneskip 367
step
    .goto Durotar,56.48,73.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendez votre surplus et réparez. Vous pouvez lui parler de l'extérieur de la hutte
    .target Trayexir
    .isQuestAvailable 837
step << Mage
    .goto Durotar,56.3,75.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Un'Thuwa|r
    .train 118 >> Apprenez vos sorts de classe
    .target Un'Thuwa
step
    #label Zalazaneturnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gadrin|r, |cRXP_FRIENDLY_Vornal|r et |cRXP_FRIENDLY_Vel'rin|r
    .turnin 808 >>Rendez la quête Crâne de Minshina
    .turnin 826 >>Rendez la quête Zalazane
    .target +Master Gadrin
    .goto Durotar,55.95,74.73
    .turnin 818 >>Rendez la quête Un esprit parfaitement éduqué
    .target +Master Vornal
    .goto Durotar,55.95,74.39
    .turnin 817 >>Rendez la quête Proie nécessaire
    .target +Vel'rin Fang
    .goto Durotar,55.95,73.93
step
    #completewith Stolensupplies
    +|cRXP_WARN_Mettez dans vos barres votre|r |T133728:0|t[Crâne au faible rougeoiement] |cRXP_WARN_et la|r |T134712:0|t[Colle très collante]. |cRXP_WARN_Gardez-les pour les situations d'urgence|r
step
    #loop
    .goto Durotar,49.22,48.96,0
    .goto Durotar,50.21,50.78,30,0
    .goto Durotar,50.18,49.23,30,0
    .goto Durotar,49.48,49.14,30,0
    .goto Durotar,49.32,48.18,30,0
    .goto Durotar,48.81,49.00,30,0
    .goto Durotar,48.49,49.29,30,0
    .goto Durotar,47.58,49.62,30,0
    .goto Durotar,47.06,49.53,30,0
    .goto Durotar,46.90,48.11,30,0
    .goto Durotar,49.22,48.96,30,0
    >>Tuez les |cRXP_ENEMY_Razormane Quilboars|r et les |cRXP_ENEMY_Razormane Scouts|r
    .complete 837,1 --Razormane Quilboar (4)
    .mob +Razormane Quilboar
    .complete 837,2 --Razormane Scout (4)
    .mob +Razormane Scout
step
    #completewith next
    .goto Durotar,51.12,42.46,150 >> Courez vers Tranchecolline
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Torka|r et à |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 815 >>Rendez la quête Des œufs pour l'omelette
    .target +Cook Torka
    .goto Durotar,51.12,42.46
    .turnin 825 >>Rendez la quête Des épaves
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
step
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rawrk|r
    .train 3273 >>Apprenez [Premiers soins]
    .target Rawrk
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarshaw|r
    .train 6546 >> Apprenez vos sorts de classe
    .target Tarshaw Jaggedscar
    .xp <10,1
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >> Apprenez vos sorts de classe
    .target Dhugru Gorelust
    .xp <10,1
step << Warlock
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kitha|r et achetez [Éclair de feu Rang 2]
    .collect 16302,1,837,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Warlock
    .train 20270 >> Utilisez le [Grimoire d’Éclair de feu Rang 2]
    .use 16302
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kaplak|r
    .train 674 >> Apprenez vos sorts de classe
    .target Kaplak
    .xp <10,1
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tai'jin|r
    .accept 5654 >> Acceptez la quête Le maléfice de faiblesse << Troll
    .accept 5660 >> Acceptez la quête Toucher de faiblesse << Undead
    .trainer >> Apprenez vos sorts de classe
    .target Tai'jin
    .xp <10,1
step
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Acceptez la quête Sous les drapeaux de la Horde
    .target Takrin Pathseeker
    .xp <10,1
step
    #loop
    .goto Durotar,44.45,39.74,0
    .goto Durotar,44.45,39.74,50,0
    .goto Durotar,44.49,37.47,50,0
    .goto Durotar,43.30,37.32,50,0
    .goto Durotar,41.70,37.09,50,0
    .goto Durotar,41.64,38.27,50,0
    .goto Durotar,41.94,40.46,50,0
    .goto Durotar,43.30,40.40,50,0
    >>Tuez les |cRXP_ENEMY_Razormane Dustrunners|r et les |cRXP_ENEMY_Razormane Battleguards|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob +Razormane Dustrunner
    .complete 837,4 --Razormane Battleguard (4)
    .mob +Razormane Battleguard
step
    #label Stolensupplies
    #loop
    .goto Durotar,47.92,33.10,0
    .goto Durotar,47.34,33.38,30,0
    .goto Durotar,47.92,33.10,30,0
    .goto Durotar,49.11,33.11,30,0
    .goto Durotar,48.53,32.00,30,0
    .goto Durotar,47.36,30.98,30,0
    .goto Durotar,47.14,29.68,30,0
    .goto Durotar,46.49,34.67,30,0
    .goto Durotar,50.13,32.35,30,0
    .goto Durotar,49.78,28.26,30,0
    .goto Durotar,50.83,25.94,30,0
    .goto Durotar,49.68,24.38,30,0
    .goto Durotar,49.05,22.49,30,0
    >>Ramassez les |cRXP_PICK_Stolen Supply Sacks|r sur le sol
    .complete 834,1 --Sack of Supplies (5)
    .isOnQuest 834
step
    #completewith next
    .goto Durotar,46.37,22.94,50 >> Voyagez à Rezlak
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Acceptez la quête Des vents dans le désert
    .target Rezlak
step
    #loop
    .goto Durotar,47.92,33.10,0
    .goto Durotar,47.34,33.38,30,0
    .goto Durotar,47.92,33.10,30,0
    .goto Durotar,49.11,33.11,30,0
    .goto Durotar,48.53,32.00,30,0
    .goto Durotar,47.36,30.98,30,0
    .goto Durotar,47.14,29.68,30,0
    .goto Durotar,46.49,34.67,30,0
    .goto Durotar,50.13,32.35,30,0
    .goto Durotar,49.78,28.26,30,0
    .goto Durotar,50.83,25.94,30,0
    .goto Durotar,49.68,24.38,30,0
    .goto Durotar,49.05,22.49,30,0
    >>Ramassez les |cRXP_PICK_Stolen Supply Sacks|r sur le sol
    .complete 834,1 --Sack of Supplies (5)
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Rendez la quête Des vents dans le désert
    .accept 835 >>Acceptez la quête Des lignes sécurisées
    .target Rezlak
step
    #completewith next
    .goto Durotar,53.41,27.81,15 >> Avancez dans la grotte
    .solo
step
    #loop
    .goto Durotar,53.98,23.70,0
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70,40,0
    >>Tuez les |cRXP_ENEMY_Dustwind Savages|r et les |cRXP_ENEMY_Dustwind Storm Witches|r
    .complete 835,1 --Dustwind Savage (12)
    .mob +Dustwind Savage
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob +Dustwind Storm Witch
    .solo
step << Troll Warrior/Undead Warrior
    #completewith next
    +|cRXP_WARN_Choisissez le|r |T135158:0|t[Bâton défectueux en bois] |cRXP_WARN_en tant que récompense de quête et conservez-le. Vous obtiendrez la compétence pour porter les Bâtons à Orgrimmar|r
    .solo
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rezlak|r
    .turnin 835 >>Rendez la quête Des lignes sécurisées
    .target Rezlak
    .solo
step
    #completewith next
    .goto Durotar,44.72,24.86,40,0
    .goto Durotar,42.28,25.45,30,0
    .goto Durotar,41.66,25.68,20 >>Sautez dans les Falaises du Tonnerre << !Hunter !Warlock
    .cast 2641 >>|cRXP_WARN_Lancez|r |T136095:0|t[Renvoyer le familier] |cRXP_WARN_et ensuite sautez dans les falaises du Tonnerre|r << Hunter
    +|cRXP_WARN_Renvoyez votre diablotin puis sautez dans les falaises du Tonnerre|r << Warlock
    .group
step
    .goto Durotar,42.13,26.67
    >>Tuez |cRXP_ENEMY_Fizzle Darkstorm|r et dépouillez-le pour sa |cRXP_LOOT_Claw|r
    >>|cRXP_WARN_Soyez très prudent. Tuez le|r |cRXP_ENEMY_Fanatique de la Lame ardente|r |cRXP_WARN_en patrouille et les|r |cRXP_ENEMY_Foudroyants|r |cRXP_WARN_au fond avant de l'engager|r
    >>|cRXP_WARN_Attirez-le vers l'arrière et les|r |cRXP_ENEMY_Foudroyants|r |cRXP_WARN_que vous venez de tuer. Sinon, vous risquez d'engager des mobs supplémentaires de la Lame ardente|r
    >>Tuez le diablotin en premier. Utilisez [Suriner] lorsqu'il lance [Siphon d'âme] << Rogue
    >>Tuez le diablotin en premier. Utilisez [Horion de terre] lorsqu'il lance [Siphon d'âme] << Shaman
    >>Vous pouvez lancer [Métamorph|cRXP_WARN_on|re] sur |cRXP_ENEMY_Fizzle|r et tuez le |cRXP_ENEMY_Imp|r en premier << Mage
    >>|cRXP_WARN_Tuez le diablotin en premier.|r << Warrior/Warlock/Priest
    >>Utilisez une [Potion de soins mineur] si vous en avez une et votre [Crâne au faible rougeoiement] si nécessaire << !Warlock
    >>Utilisez une [Potion de soins mineur], [Pierre de soins mineure] si vous l'avez et votre [Crâne au faible rougeoiement] si nécessaire << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
    .group 2
    --VV Add video / description for Druid / tell priest/lock to fear if pulled back and area is clear?
step
    .hs >> Utilisez votre Pierre de foyer pour vous revenir à Tranchecolline
    .use 6948
    .cooldown item,6948,>0
    .subzoneskip 362
    .bindlocation 362,1
    .isQuestComplete 806
    .group
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Grosk|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Kauth|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_Achetez des|r [Cuissot] |cRXP_BUY_à Hai'zan|r << Rogue/Warrior
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 1179,15,818,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (15)
    .collect 2287,15,818,1 << Rogue/Warrior --Haunch of Meat (15)
    .target Innkeeper Grosk
    .money <0.0375
    .group
step
    .goto Durotar,52.24,43.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orgnil|r
    .turnin 806 >>Rendez la quête De sombres orages
    .accept 828 >>Acceptez la quête Margoz
    .target Orgnil Soulscar
    .isQuestComplete 806
    .group
step
    .goto Durotar,52.24,43.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orgnil|r
    .accept 828 >>Acceptez la quête Margoz
    .target Orgnil Soulscar
    .isQuestTurnedIn 806
    .group
step
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gar'thok|r
    .turnin 837 >>Rendez la quête Empiètement
    .target Gar'Thok
    .group
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarshaw|r
    .train 6546 >> Apprenez vos sorts de classe
    .target Tarshaw Jaggedscar
    .group
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >> Apprenez vos sorts de classe
    .target Dhugru Gorelust
    .group
step << Warlock
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kitha|r et achetez [Éclair de feu Rang 2]
    .collect 16302,1,818,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
    .group
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kaplak|r
    .train 674 >> Apprenez vos sorts de classe
    .target Kaplak
    .group
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tai'jin|r
    .train 8092 >> Apprenez vos sorts de classe
    .target Tai'jin
    .group
step
    #completewith next
    .goto Durotar,55.40,36.73,80,0
    .goto Durotar,56.07,30.05,80,0
    .goto Durotar,56.41,20.04,50 >> Voyagez vers |cRXP_FRIENDLY_Margoz|r
    .isQuestTurnedIn 806
    .group
step
    #label MargozTurnIn
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Margoz|r
    .turnin 828 >>Rendez la quête Margoz
    .accept 827 >>Acceptez la quête Rocher du crâne
    .target Margoz
    .isQuestTurnedIn 806
    .group
step
    #completewith next
    .goto Durotar,56.49,25.04,50,0
    .goto Durotar,56.11,27.94,50,0
    .goto Durotar,53.18,29.15,50 >> Voyagez vers la Caverne des Terrevent
    .isQuestTurnedIn 806
    .group
step
    #label Collars1
    #loop
    .goto Durotar,52.70,27.97,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    >>Tuez les |cRXP_ENEMY_Nervis de la Lame ardente|r, les |cRXP_ENEMY_Néophytes de la Lame ardente|r et les |cRXP_ENEMY_Sectateurs de la Lame ardente|r. Dépouillez-les pour leur |cRXP_LOOT_Colliers|r
    .complete 827,1 --Searing Collar (6)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .isQuestTurnedIn 806
    .group
step
    #completewith next
    .goto Durotar,56.30,27.91,80,0
    .goto Durotar,56.41,20.04,50 >> Voyagez vers |cRXP_FRIENDLY_Margoz|r
    .isQuestTurnedIn 806
    .group
step
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Margoz|r
    .turnin 827 >>Rendez la quête Rocher du crâne
    .accept 829 >>Acceptez la quête Neeru Lamefeu
    .target Margoz
    .isQuestTurnedIn 806
    .group
step
    #completewith next
    .goto Durotar,53.41,27.81,15 >> Avancez dans la grotte
    .group
step
    #loop
    .goto Durotar,53.98,23.70,0
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70,40,0
    >>Tuez les |cRXP_ENEMY_Dustwind Savages|r et les |cRXP_ENEMY_Dustwind Storm Witches|r
    >>|cRXP_WARN_Ces mobs s'enfuient. Faites attention à ne pas faire un double pull|r
    .complete 835,1 --Dustwind Savage (12)
    .mob +Dustwind Savage
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob +Dustwind Storm Witch
    .group
step << Troll Warrior/Undead Warrior
    #completewith next
    +|cRXP_WARN_Choisissez le|r |T135158:0|t[Bâton défectueux en bois] |cRXP_WARN_en tant que récompense de quête et conservez-le. Vous obtiendrez la compétence pour porter les Bâtons à Orgrimmar|r
    .group
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rezlak|r
    .turnin 835 >>Rendez la quête Des lignes sécurisées
    .target Rezlak
    .group
step
--    .loop
    .xp 10 >> Montez jusqu'au niveau 10
    --VV Enter loop coords
step
    #completewith Admiralorders1
    .goto Orgrimmar,48.97,92.84,50 >> Entrez dans Orgrimmar
    .zoneskip Orgrimmar
step << Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_. Achetez-lui une |r |T135419:0|t[Hache de jet aiguisée] |cRXP_BUY_|r
    .collect 3135,200,354,1 --Sharp Throwing Axe (200)
    .target Trak'gen
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #optional
    #completewith ZeptoUC1
    +|cRXP_WARN_Équipez la|r |T135421:0|t[Hache de jet aiguisée] |cRXP_WARN_lorsque vous passez au niveau 11|r
    .use 3135
    .itemcount 3135,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5654 >> Rendez la quête Le maléfice de faiblesse
    .trainer >> Apprenez vos sorts de classe
    .target Ur'kyo
    .isOnQuest 5654
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5652 >> Rendez la quête Le maléfice de faiblesse
    .trainer >> Apprenez vos sorts de classe
    .target Ur'kyo
step << Mage
    .goto Orgrimmar,38.33,85.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pephredo|r
    .train 122 >> Apprenez vos sorts de classe
    .target Pephredo
step << Undead
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Doras|r
    .fp Orgrimmar >> Prenez le chemin de vol d'Orgrimmar
    .target Doras
step
    #label Admiralorders1
    .goto Orgrimmar,32.29,35.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Rendez la quête Les ordres de l'amiral
    .target Nazgrel
step << Rogue
    .goto Orgrimmar,42.75,53.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Therzok|r
	.accept 1963 >> Acceptez la quête La Main brisée << Orc Rogue/Troll Rogue
    .target Therzok
step
    #label NeeruFireblade
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neeru|r
    .turnin 829 >>Rendez la quête Neeru Lamefeu
    .accept 809 >>Acceptez la quête Ak'Zeloth
    .target Neeru Fireblade
    .isOnQuest 829
    .group
step << Warlock
    .goto Orgrimmar,48.59,46.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mirket|r
    .train 1120 >> Apprenez vos sorts de classe
    .target Mirket
step << Troll Warrior/Undead Warrior
    #completewith StaveTraining1
    .goto Orgrimmar,68.02,38.69,30 >> Voyagez jusqu'à la Vallée de l'Honneur
step << Warrior
    .goto Orgrimmar,79.93,31.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grezz|r
    .train 6546 >> Apprenez vos sorts de classe
    .target Grezz Ragefist
step << Troll Warrior/Undead Warrior
    #label StaveTraining1
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hanashi|r
    .train 227 >>Apprenez la compétence Bâtons
    .target Hanashi
step << Troll Warrior/Undead Warrior
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Achetez-lui un|r |T135154:0|t[Bâton de combat] |cRXP_BUY_|r
    .collect 854,1,398,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Zendo'jian
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Troll Warrior/Undead Warrior
    #optional
    #completewith ZeptoUC1
    +Équipez le [Bâton] quand vous êtes niveau 11
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Orc Warrior
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Urtharo|r
    .vendor >> Vendez votre surplus. Vendez votre arme si cela vous donne assez d'argent pour un |T132395:0|t[Tabar] (22s 14c). Vous reviendrez plus tard si vous n'avez pas assez d'argent.
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
step << Orc Warrior
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Urtharo|r|cRXP_BUY_. Achetez-lui un|r |T132395:0|t[Tabar] |cRXP_BUY_|r
    .collect 1196,1,398,1 --Collect Tabar (1)
    .money <0.2214
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
step << Orc Warrior
    #optional
    #completewith ZeptoUC1
    +|cRXP_WARN_Équipez le|r |T132395:0|t[Tabar]
    .use 1196
    .itemcount 1196,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
step
    #label LeaveOrg2
    #completewith ZeptoUC1
    .zone Durotar >> Quittez Orgrimmar
    .zoneskip Durotar
step
    #label ZeptoUC1
    .goto Durotar,50.8,13.8,40 >>Montez la Tour des Zeppelins
    .zone Tirisfal Glades >>Prenez le Zeppelin pour les Clairières de Tirisfal
    >>|cRXP_WARN_Invoquez de l'eau en attendant|r << Mage
    .zoneskip Tirisfal Glades
step
    #completewith next
    .subzoneskip 359 >> Voyagez jusqu'à Brill
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman|r et à |cRXP_FRIENDLY_Gretchen|r à l'intérieur de l'auberge
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_est au deuxième étage|r
    .accept 354 >>Acceptez la quête Morts dans la famille
    .accept 362 >>Acceptez la quête Les moulins hantés
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .accept 375 >>Acceptez la quête Le frisson de la mort
    .target +Gretchen Dedmar
    .goto Tirisfal Glades,61.89,52.73
    .maxlevel 12
step << Warrior
    #optional
    .abandon 1505 >>Abandonnez Le vétéran Uzzek
    .isOnQuest 1505
step << Warrior
    #optional
    .abandon 1498 >>Abandonnez La voie de la défense
    .isOnQuest 1498
step << Warrior
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à  |cRXP_FRIENDLY_Austil|r
    .accept 1818 >> Acceptez la quête Parler à Dillinger
    .target Austil de Mon << Warrior
    .isQuestAvailable 1498
step << Warlock
    .goto Tirisfal Glades,61.62,52.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ageron|r à l'intérieur de l'auberge
    .accept 1478 >> Acceptez la quête Les invocations de Halgar
    .target Ageron Kargal
step << Undead Rogue
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r à l'intérieur de l'auberge
    .accept 1885 >>Acceptez la quête Mennet Carkad
    .target Marion Call
step << Mage
    .goto Tirisfal Glades,61.96,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cain|r à l'intérieur de l'auberge
    .accept 1881 >> Acceptez la quête Parler à Anastasia
    .target Cain Firesong
step << !Mage
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Renee|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Delaniel|r << Mage/Priest/Shaman
    >>|cRXP_BUY_Achetez-lui des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r << Warrior/Rogue
    >>|cRXP_BUY_Achetez-lui du|r |T132815:0|t[Lait glacé] |cRXP_BUY_et des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r << Warlock
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 1179,20,367,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,367,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,367,1 << Warlock --Ice Cold Milk (15)
    .collect 4605,15,367,1 << Warlock --Red-speckled Mushroom (15)
    .money <0.075 << Warlock
    .money <0.05 << !Warlock
    .target Innkeeper Renee
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Burgess|r, à l' |cRXP_FRIENDLY_Affiche de recherche|r et à |cRXP_FRIENDLY_Sevren|r dans le bâtiment
    .accept 374 >>Acceptez la quête Preuves de la mort
    .target +Deathguard Burgess
    .goto Tirisfal Glades,60.93,52.01
    .accept 398 >>Acceptez la quête On recherche: Œil-de-ver
    .goto Tirisfal Glades,60.74,51.52
    .accept 358 >>Acceptez la quête Les Profanateurs
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
    .maxlevel 11
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Nécrogarde Burgess|r et l' |cRXP_FRIENDLY_Affiche de recherche|r
    .accept 374 >>Acceptez la quête Preuves de la mort
    .target +Deathguard Burgess
    .goto Tirisfal Glades,60.93,52.01
    .accept 398 >>Acceptez la quête On recherche: Œil-de-ver
    .goto Tirisfal Glades,60.74,51.52
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r
    .turnin 1818 >> Rendez la quête Parler à Dillinger
    .accept 1819 >> Acceptez la quête Ulag le Fendeur
    .target Deathguard Dillinger
    .isQuestAvailable 1498
step << Warrior
    .goto Tirisfal Glades,59.16,48.51
    >>|cRXP_WARN_Cliquez sur le crâne sur le sol. Cela invoquera|r |cRXP_ENEMY_Ulag.|r |cRXP_WARN_Tuez-le|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
    .isQuestAvailable 1498
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >> Rendez la quête Ulag le Fendeur
    .accept 1820 >> Acceptez la quête Parler à Coleman
    .target Deathguard Dillinger
    .isQuestAvailable 1498
step << Warlock/Mage/Priest
    #completewith next
    .goto Tirisfal Glades,61.80,65.06,20 >> Entrez dans Undercity
    .zoneskip Undercity
    .zoneskip Undercity
step << Warlock/Mage/Priest
    #completewith next
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Prenez l'ascenseur pour descendre dans Undercity
step << Warlock/Mage/Priest
    #optional
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commissaire-priseur Rhyker|r
    >>|cRXP_BUY_Achetez six|r |T134339:0|t[Coeurs de worg décolorés] |cRXP_BUY_à l'Hôtel des ventes|r
    >>|cRXP_WARN_Passez cette étape si vous voulez, c'est seulement un petit gain de temps|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Warlock
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carendin|r dans le Quartier Magique
    .turnin 1478 >> Rendez la quête Les invocations de Halgar
    .accept 1473 >> Acceptez la quête La créature du Vide
step << Mage
    #optional
    .abandon 1883 >> Abandonnez la quête Parler à Un'thuwa, sinon vous ne pourrez pas accepter la quête suivante
    .isOnQuest 1883
step << Mage
    .goto Undercity,85.12,10.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anastasia|r au Quartier Magique
    .turnin 1881 >> Rendez la quête Parler à Anastasia
    .accept 1882 >> Acceptez la quête La ferme des Balnir
    .target Anastasia Hartwell
step << Priest
    #optional
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5660 >> Rendez la quête Toucher de faiblesse
    .target Aelthalyste
    .isOnQuest 5660
step << Priest
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aelthalyste|r
    .accept 5658 >> Acceptez la quête Toucher de faiblesse
    .turnin 5658 >> Rendez la quête Toucher de faiblesse
    .target Aelthalyste
step << Rogue
    #optional
    #completewith Swordtraining1
    .goto Tirisfal Glades,61.80,65.06,20 >> Entrez dans Undercity
    .zoneskip Undercity
    .zoneskip Undercity
    .money <0.3023
step << Rogue
    #optional
    #completewith Swordtraining1
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Prenez l'ascenseur pour descendre dans Undercity
    .money <0.3023
step << Undead Rogue
    #optional
    .goto Undercity,83.52,69.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mennet Carkad|r
    .turnin 1885 >>Rendez la quête Mennet Carkad
    .accept 1886 >>Acceptez la quête Les nécrotraqueurs
    .target Mennet Carkad
    .money <0.3023
step << Rogue
    #optional
    #label Swordtraining1
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Archibald|r au Quartier de la Guerre
    .train 201 >>Achetez la compétence pour porter des épées à une main
    .target Archibald
    .money <0.3023
step << Rogue
    #optional
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Charles|r |cRXP_BUY_ au Quartier des Voleurs. Achetez-lui un|r |T135346:0|t[Sabre d'abordage] |cRXP_BUY_|r
    .collect 851,1,435,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #optional
    #completewith ScarletCrusade1
    +Équipez le [Coutelas]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Undead Rogue
    #optional
    #sticky
    #completewith UnluckyRogue
    >>|cRXP_WARN_Si vous voyez|r |cRXP_FRIENDLY_Astor|r|cRXP_WARN_, parlez-lui et tuez-le. Dépouillez-le pour la lettre. Il patrouille la route entre Brill et le Sépulcre|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
    .isOnQuest 1886
step << Rogue
    #optional
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commissaire-priseur Rhyker|r
    >>|cRXP_BUY_Achetez six|r |T134339:0|t[Coeurs de worg décolorés] |cRXP_BUY_à l'Hôtel des ventes|r
    >>|cRXP_WARN_Passez cette étape si vous voulez, c'est seulement un petit gain de temps|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Warlock/Mage/Rogue/Priest
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >> Quittez Undercity par les Égouts
    .zoneskip Tirisfal Glades
step << Warlock
    #completewith next
    .goto Tirisfal Glades,51.06,67.57
    >>Ouvrez le |cRXP_PICK_Coffre de Perrine|r sur le sol pour le |T133733:0|t[Grimoire d'Egalin]
    .complete 1473,1 --Egalin's Grimoire (1)
step
    #label ScarletCrusade1
    #loop
	.goto Tirisfal Glades,50.07,68.87,40,0
	.goto Tirisfal Glades,50.23,66.94,40,0
	.goto Tirisfal Glades,51.16,65.73,40,0
	.goto Tirisfal Glades,51.75,66.04,40,0
	.goto Tirisfal Glades,52.93,67.62,40,0
	.goto Tirisfal Glades,52.72,69.33,40,0
	.goto Tirisfal Glades,51.96,69.57,40,0
	.goto Tirisfal Glades,51.03,69.55,40,0
    >>Tuez le |cRXP_ENEMY_Capitaine Perrine|r, les |cRXP_ENEMY_Zélotes écarlates|r et les |cRXP_ENEMY_Missionnaires écarlates|r. Dépouillez-les pour leur |cRXP_LOOT_Chevalières de lieutenant écarlate|r
    .complete 370,1 --Captain Perrine (1)
    .mob +Captain Perrine
    .complete 370,2 --Scarlet Zealot (3)
    .mob +Scarlet Zealot
    .complete 370,3 --Scarlet Missionary (3)
    .mob +Scarlet Missionary
    .complete 374,1 --Scarlet Insignia Ring (10)
    .disablecheckbox
step << Warlock
    .goto Tirisfal Glades,51.06,67.57
    >>Ramassez le |cRXP_PICK_Perrine's Chest|r sur le sol pour le [Grimoire d'Egalin]
    .complete 1473,1 --Egalin's Grimoire (1)
step << Warlock
    #completewith next
    .goto Undercity,16.51,42.76,35,0
    .goto Undercity,22.98,39.76,35,0
    .goto Undercity,24.93,32.54,35,0
    .goto Undercity,34.78,33.24,10,0
    .goto Undercity,40.83,34.08,10,0
    .goto Undercity,41.35,38.40,10,0
    .goto Undercity,45.25,39.20,10,0
    .goto Undercity,45.67,43.60,10,0
    .zone Undercity >> Retournez dans Fossoyeuse par les égoûts
step << Warlock
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carendin|r dans le Quartier Magique
    .turnin 1473 >> Rendez la quête La créature du Vide
    .accept 1471 >> Acceptez la quête Le lien
    .target Carendin Halgar
step << Warlock
    #completewith next
    .cast 9221 >>Utilisez les [Runes d'invocation] au cercle d'invocation
    .use 6284
step << Warlock
    .goto Undercity,86.64,27.10
    >>Tuez le |cRXP_ENEMY_Summoned Voidwalker|r
    .complete 1471,1 --Kill Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
step << Warlock
    .goto Undercity,85.04,25.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carendin|r
    .turnin 1471 >>Rendez la quête Le lien
    .target Carendin Halgar
step << skip --Warlock
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Effectuez un Logout skip en positionnant votre personnage sur la partie la plus élevée de l'escalier le plus bas jusqu'à ce qu'il semble flotter, puis en vous déconnectant et en vous reconnectant|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_CLIQUEZ ICI pour un exemple vidéo|r
    >>|cRXP_WARN_Si vous n'arrivez pas à le faire, sortez simplement de Fossoyeuse normalement|r
step << Warlock
    #completewith next
    .goto Tirisfal Glades,61.92,64.85
    .zone Tirisfal Glades >> Quittez Undercity
    .zoneskip Tirisfal Glades
step
    #completewith next
    >>Tuez tous les |cRXP_ENEMY_Chauve-souris|r que vous voyez. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    .goto Tirisfal Glades,47.60,44.03,150 >> Voyagez vers le nord-ouest en direction des Moulins d'Agamand
    .isOnQuest 362
step
    #completewith MillsOverun
    >>La |T134939:0|t[|cRXP_LOOT_Lettre de Thurman|r] |cRXP_WARN_peut tomber sur ces mobs. Acceptez la quête si vous la récupérez|r
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >> Acceptez la quête Une lettre perdue
    .use 2839
step
    #completewith ThurmanGregor
    >>Tuez les |cRXP_ENEMY_Soldats|r et les |cRXP_ENEMY_Ossomanciens|r. Dépouillez-les pour leur |cRXP_LOOT_Côtes|r et leurs |cRXP_LOOT_Crânes|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
    .isOnQuest 426
step
    #label KillDevlin
    .goto Tirisfal Glades,47.34,40.78
    >>Tuez |cRXP_ENEMY_Devlin|r. Dépouillez-le pour ses |cRXP_LOOT_Restes|r
    .complete 362,1 --Devlin's Remains (1)
    .mob Devlin Agamand
step
    .goto Tirisfal Glades,49.34,36.02
    >>Tuez |cRXP_ENEMY_Nissa|r. Dépouillez-la pour ses |cRXP_LOOT_Restes|r. Elle peut être à l'intérieur du bâtiment
    .complete 354,2 --Nissa's Remains (1)
    .mob Nissa Agamand
step
    #label ThurmanGregor
    #loop
    .goto Tirisfal Glades,45.08,31.15,0
    .goto Tirisfal Glades,43.71,35.25,60,0
    .goto Tirisfal Glades,45.03,30.99,60,0
    .goto Tirisfal Glades,46.79,29.80,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,45.08,31.15,60,0
    >>Tuez |cRXP_ENEMY_Thurman|r et |cRXP_ENEMY_Gregor|r. Dépouillez-les pour leur |cRXP_LOOT_Restes|r. Ils peuvent patrouiller aux alentours
    .complete 354,3 --Thurman's Remains (1)
    .unitscan +Thurman Agamand
    .complete 354,1 --Gregor's Remains (1)
    .unitscan +Gregor Agamand
step
    #loop
    #label MillsOverun
    .goto Tirisfal Glades,45.08,31.15,0
    .goto Tirisfal Glades,43.71,35.25,60,0
    .goto Tirisfal Glades,45.03,30.99,60,0
    .goto Tirisfal Glades,46.79,29.80,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,45.08,31.15,60,0
    >>Tuez les |cRXP_ENEMY_Soldats|r et les |cRXP_ENEMY_Ossomanciens|r. Dépouillez-les pour leur |cRXP_LOOT_Côtes|r et leurs |cRXP_LOOT_Crânes|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
    .isOnQuest 426
step
    #requires MillsOverun
    #completewith MaggotEye
    .goto Tirisfal Glades,54.32,31.56,15,0
    .goto Tirisfal Glades,54.78,32.75,15,0
    .goto Tirisfal Glades,55.84,32.28,15,0
    .goto Tirisfal Glades,56.55,32.43,40,0
    .goto Tirisfal Glades,57.77,31.69,50 >> Descendez les collines
    >>|cRXP_WARN_Soyez prudent. Ne prenez pas trop de dégâts de chute. Suivez le point de repère pour rester en sécurité|r
step
    #requires MillsOverun
    #completewith next
    >>Tuez les |cRXP_ENEMY_Gnolls|r et les |cRXP_ENEMY_Bâtards|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .mob +Rot Hide Mongrel
    .complete 358,3 --Embalming Ichor (8)
    .mob +Rot Hide Gnoll
    .mob +Rot Hide Mongrel
    .isOnQuest 358
    .maxlevel 11
step
    #requires MillsOverun
    #label MaggotEye
    .goto Tirisfal Glades,58.66,30.77
    >>Tuez |cRXP_ENEMY_Oeil-de-ver|r. Dépouillez-le pour sa |cRXP_LOOT_Patte|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
step
    .goto Tirisfal Glades,59.54,27.86,0
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    >>Tuez les |cRXP_ENEMY_Murlocs|r. Dépouillez-les pour leurs |cRXP_LOOT_Écailles|r
    .complete 368,1 --Vile Fin Scale (5)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
step
    #completewith RotHideGnolls
    >>Tuez tous les |cRXP_ENEMY_Chauve-souris|r que vous voyez. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Bâtards|r et |cRXP_ENEMY_Les profanateurs|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .mob +Rot Hide Mongrel
    .complete 358,1 --Rot Hide Graverobber (8)
    .mob +Rot Hide Graverobber
    .complete 358,3 --Embalming Ichor (8)
    .mob +Rot Hide Mongrel
    .mob +Rot Hide Graverobber
    .isOnQuest 358
    .maxlevel 11
step
    #optional
    #loop
    .goto Tirisfal Glades,57.48,35.95,0
    .goto Tirisfal Glades,57.68,34.37,30,0
    .goto Tirisfal Glades,57.45,35.96,30,0
    .goto Tirisfal Glades,56.79,37.79,30,0
    .goto Tirisfal Glades,56.05,38.76,30,0
    .goto Tirisfal Glades,55.09,38.74,30,0
    .goto Tirisfal Glades,55.25,40.16,30,0
    .goto Tirisfal Glades,54.68,42.12,30,0
    .goto Tirisfal Glades,55.29,41.51,30,0
    .goto Tirisfal Glades,56.58,41.99,30,0
    .goto Tirisfal Glades,58.29,42.93,30,0
    .goto Tirisfal Glades,58.83,40.68,30,0
    .goto Tirisfal Glades,58.36,38.55,30,0
    .goto Tirisfal Glades,57.48,35.95,30,0
    >>Cueillez l' |cRXP_PICK_Herbe maléfique|r sur le sol. Elles se trouvent près des arbres dans la zone des Gnolls
    .complete 5482,1 --Doom Weed (10)
    .isOnQuest 5482
    .maxlevel 11
step
    #label RotHideGnolls
    #loop
    .goto Tirisfal Glades,55.24,42.54,0
    .goto Tirisfal Glades,56.31,39.67,40,0
    .goto Tirisfal Glades,54.71,41.19,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    .goto Tirisfal Glades,56.43,43.92,40,0
    >>Tuez les |cRXP_ENEMY_Bâtards|r et |cRXP_ENEMY_Les profanateurs|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .mob +Rot Hide Mongrel
    .complete 358,1 --Rot Hide Graverobber (8)
    .mob +Rot Hide Graverobber
    .complete 358,3 --Embalming Ichor (8)
    .mob +Rot Hide Mongrel
    .mob +Rot Hide Graverobber
    .isOnQuest 358
    .maxlevel 11
step
    #loop
    .goto Tirisfal Glades,57.71,48.96,0
    .goto Tirisfal Glades,58.29,49.80,30,0
    .goto Tirisfal Glades,57.71,48.96,30,0
    .goto Tirisfal Glades,59.26,46.73,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apprenti apothicaire Holland|r, il patrouille autour du cimetière
    .turnin 5482 >>Rendez la quête Herbe maléfique
    .target Junior Apothecary Holland
    .isQuestComplete 5482
step
    #optional
    .abandon 5482 >>Abandonnez la quête Herbe maléfique
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r, à |cRXP_FRIENDLY_Johaan|r, à |cRXP_FRIENDLY_Zygand|r et à |cRXP_FRIENDLY_Sevren|r
    .turnin 426 >>Rendez la quête La chute des moulins
    .target +Deathguard Dillinger
    .goto Tirisfal Glades,58.19,51.44
    .turnin 368 >>Rendez la quête Une Peste nouvelle
    .accept 369 >>Acceptez la quête Une Peste nouvelle
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.40
    .turnin 398 >>Rendez la quête On recherche: Œil-de-ver
    .turnin 370 >>Rendez la quête En guerre avec la Croisade écarlate
    .accept 371 >>Acceptez la quête En guerre avec la Croisade écarlate
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .turnin 358 >>Rendez la quête Les Profanateurs
    .accept 359 >>Acceptez la quête En mission pour les Réprouvés
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
    .isQuestComplete 358
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r, à |cRXP_FRIENDLY_Johaan|r et à |cRXP_FRIENDLY_Zygand|r
    .turnin 426 >>Rendez la quête La chute des moulins
    .target +Deathguard Dillinger
    .goto Tirisfal Glades,58.19,51.44
    .turnin 368 >>Rendez la quête Une Peste nouvelle
    .accept 369 >>Acceptez la quête Une Peste nouvelle
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.40
    .turnin 398 >>Rendez la quête On recherche: Œil-de-ver
    .turnin 370 >>Rendez la quête En guerre avec la Croisade écarlate
    .accept 371 >>Acceptez la quête En guerre avec la Croisade écarlate
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
step
    #optional
    .abandon 358 >>Abandonnez la quête Les Profanateurs
step
    #completewith HorrorsandSpirits
    +|cRXP_WARN_Mettez le|r |T133849:0|t[Sable de léthargie] sur vos barres.|cRXP_WARN_. Gardez-le pour les urgences|r
step
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Achetez-lui une|r |T132891:0|t[Bobine de fil grossier] |cRXP_BUY_|r |cRXP_FRIENDLY_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yvette|r, à |cRXP_FRIENDLY_Coleman|r et à |cRXP_FRIENDLY_Gretchen|r à l'intérieur de l'auberge
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_est au deuxième étage|r
    .turnin 361 >>Rendez la quête Une lettre perdue
    .target +Yvette Farthing
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>Rendez la quête Morts dans la famille
    .turnin 362 >>Rendez la quête Les moulins hantés
    .accept 355 >>Acceptez la quête Parler à Sevren
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .turnin 375 >>Rendez la quête Le frisson de la mort
    .target +Gretchen Dedmar
    .goto Tirisfal Glades,61.89,52.73
    .isQuestComplete 375
    .isOnQuest 361
    .group
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman|r et à |cRXP_FRIENDLY_Gretchen|r à l'intérieur de l'auberge
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_est au deuxième étage|r
    .turnin 354 >>Rendez la quête Morts dans la famille
    .turnin 362 >>Rendez la quête Les moulins hantés
    .accept 355 >>Acceptez la quête Parler à Sevren
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .turnin 375 >>Rendez la quête Le frisson de la mort
    .target +Gretchen Dedmar
    .goto Tirisfal Glades,61.89,52.73
    .isQuestComplete 375
    .group
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yvette|r et à |cRXP_FRIENDLY_Coleman|r à l'intérieur de l'auberge
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_est au deuxième étage|r
    .turnin 361 >>Rendez la quête Une lettre perdue
    .target +Yvette Farthing
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>Rendez la quête Morts dans la famille
    .turnin 362 >>Rendez la quête Les moulins hantés
    .accept 355 >>Acceptez la quête Parler à Sevren
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .isOnQuest 361
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman|r dans l'auberge
    .turnin 354 >>Rendez la quête Morts dans la famille
    .turnin 362 >>Rendez la quête Les moulins hantés
    .accept 355 >>Acceptez la quête Parler à Sevren
    .goto Tirisfal Glades,61.72,52.29
    .target Coleman Farthing
    .group
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yvette|r, à |cRXP_FRIENDLY_Coleman|r et à |cRXP_FRIENDLY_Gretchen|r à l'intérieur de l'auberge
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_est au deuxième étage|r
    .turnin 361 >>Rendez la quête Une lettre perdue
    .target +Yvette Farthing
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>Rendez la quête Morts dans la famille
    .turnin 362 >>Rendez la quête Les moulins hantés
    .accept 355 >>Acceptez la quête Parler à Sevren
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .turnin 375 >>Rendez la quête Le frisson de la mort
    .target +Gretchen Dedmar
    .goto Tirisfal Glades,61.89,52.73
    .isQuestComplete 375
    .isOnQuest 361
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman|r et à |cRXP_FRIENDLY_Gretchen|r à l'intérieur de l'auberge
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_est au deuxième étage|r
    .turnin 354 >>Rendez la quête Morts dans la famille
    .turnin 362 >>Rendez la quête Les moulins hantés
    .accept 355 >>Acceptez la quête Parler à Sevren
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .turnin 375 >>Rendez la quête Le frisson de la mort
    .target +Gretchen Dedmar
    .goto Tirisfal Glades,61.89,52.73
    .isQuestComplete 375
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yvette|r et à |cRXP_FRIENDLY_Coleman|r à l'intérieur de l'auberge
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_est au deuxième étage|r
    .turnin 361 >>Rendez la quête Une lettre perdue
    .target +Yvette Farthing
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>Rendez la quête Morts dans la famille
    .turnin 362 >>Rendez la quête Les moulins hantés
    .accept 355 >>Acceptez la quête Parler à Sevren
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .isOnQuest 361
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman|r dans l'auberge
    .turnin 354 >>Rendez la quête Morts dans la famille
    .turnin 362 >>Rendez la quête Les moulins hantés
    .accept 355 >>Acceptez la quête Parler à Sevren
    .goto Tirisfal Glades,61.72,52.29
    .target Coleman Farthing
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman|r dans l'auberge
    .turnin 1820 >>Rendez la quête Parler à Coleman
    .accept 1821 >>Acceptez la quête L'héritage des Agamand
    .group
    .isQuestTurnedIn 1819
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman|r dans l'auberge
    .turnin 1820 >>Rendez la quête Parler à Coleman
    .solo
    .isQuestTurnedIn 1819
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beryl|r au deuxième étage
	.train 588 >>Apprenez |T135926:0|t[Feu intérieur]
    .target Dark Cleric Beryl
    .xp <12,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cain|r au second étage
    .train 145 >> Apprenez |T135812:0|t[Boule de feu (Rang 3)]
    .target Cain Firesong
    .xp <12,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à  |cRXP_FRIENDLY_Austil|r
    .train 7384 >>Apprenez |T132223:0|t[Fulgurance]
    .target Austil de Mon
    .xp <12,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r au second étage
    .train 1766 >> Apprenez |T132219:0|t[Coup de pied]
    .target Marion Call
    .xp <12,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rupert|r
    .train 755 >> Apprenez [Captation de vie]
    .target Rupert Boch
    .xp <12,1
step << !Mage
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Renee|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Delaniel|r << Mage/Priest
    >>|cRXP_BUY_Achetez-lui des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r <<Warrior/Rogue
    >>|cRXP_BUY_Achetez-lui du|r |T132815:0|t[Lait glacé] |cRXP_BUY_et des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r << Warlock
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 1179,20,356,1 << Mage/Priest --Ice Cold Milk (20)
    .collect 4605,20,356,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,356,1 << Warlock --Ice Cold Milk (15)
    .collect 4605,15,356,1 << Warlock --Red-speckled Mushroom (15)
    .money <0.050 << !Warlock
    .money <0.075 << Warlock
    .target Innkeeper Renee
step
    #label UnluckyRogue
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Nécrogarde Linnea|r
    .turnin 359 >>Rendez la quête En mission pour les Réprouvés
    .accept 360 >>Acceptez la quête Retourner voir le Magistrat
    .accept 356 >>Acceptez la quête Patrouille d'arrière-garde
    .target Deathguard Linnea
    .isQuestTurnedIn 358
step
    #label UnluckyRogue
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Nécrogarde Linnea|r
    .accept 356 >>Acceptez la quête Patrouille d'arrière-garde
    .target Deathguard Linnea
step
    #completewith HorrorsandSpirits
    >>Tuez tous les |cRXP_ENEMY_Chauve-souris|r que vous voyez. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step << Mage
    #completewith next
    >>Tuez les |cRXP_ENEMY_Horreurs sanguinolentes|r et les |cRXP_ENEMY_Esprits vagabonds|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
step << Mage
    .goto Tirisfal Glades,77.48,62.00
    >>Cueillez n'importe laquelle des plantes au sol pour obtenir les |cRXP_PICK_Gueules-de-loup de Balnir|r
    .complete 1882,1 --Balnir Snapdragons (1)
step
    #label HorrorsandSpirits
    #loop
	.goto Tirisfal Glades,74.31,60.98,0
	.goto Tirisfal Glades,74.31,60.98,50,0
	.goto Tirisfal Glades,74.45,59.64,50,0
	.goto Tirisfal Glades,75.08,58.56,50,0
	.goto Tirisfal Glades,76.45,58.67,50,0
	.goto Tirisfal Glades,77.41,58.66,50,0
	.goto Tirisfal Glades,78.55,60.43,50,0
	.goto Tirisfal Glades,77.45,61.46,50,0
	.goto Tirisfal Glades,76.79,62.60,50,0
	.goto Tirisfal Glades,74.99,61.98,50,0
    >>Tuez les |cRXP_ENEMY_Horreurs sanguinolentes|r et les |cRXP_ENEMY_Esprits vagabonds|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
step << Priest/Warlock
    #completewith Scarletrings
    >>|cRXP_WARN_Collectez 3 stacks d'|r |T132889:0|t[Etoffe de lin] |cRXP_WARN_pour votre Baguette magique inférieure. C'est la dernière chance d'en obtenir avant la Forêt des Pins-Argentés|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .mob Scarlet Friar
    .mob Scarlet Zealot
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Frères écarlates|r et les |cRXP_ENEMY_Zélotes écarlates|r. Dépouillez-les pour leur |cRXP_LOOT_Anneaux de la Croisade écarlate|r
    .complete 374,1 --Scarlet Insignia Ring (10)
    .isOnQuest 374
step
    #loop
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,78.82,56.14,20,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>Tuez le |cRXP_ENEMY_Capitaine Vachon|r et les |cRXP_ENEMY_Frères écarlates|r
    >>|cRXP_WARN_Attention !|r Les |cRXP_ENEMY_Frères écarlates|r |cRXP_WARN_peuvent lancer|r |T135929:0|t[Soins inférieurs]
    .complete 371,1 --Captain Vachon (1)
    .mob +Captain Vachon
    .complete 371,2 --Scarlet Friar (5)
    .mob +Scarlet Friar
    .isOnQuest 371
step
    #label ScarletRings
    #loop
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>Tuez les |cRXP_ENEMY_Frères écarlates|r et les |cRXP_ENEMY_Zélotes écarlates|r. Dépouillez-les pour leur |cRXP_LOOT_Anneaux de la Croisade écarlate|r
    .complete 374,1 --Scarlet Insignia Ring (10)
    .mob Scarlet Friar
    .mob Scarlet Zealot
    .isOnQuest 374
step << Priest/Warlock
    #loop
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>|cRXP_WARN_Collectez 3 stacks d'|r |T132889:0|t[Etoffe de lin] |cRXP_WARN_pour votre baguette. C'est votre dernière chance d'en obtenir avant la Forêt des Pins-Argentés|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .mob Scarlet Friar
    .mob Scarlet Zealot
step
    #completewith next
    >>Tuez tous les |cRXP_ENEMY_Chauve-souris|r que vous voyez. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #loop
    .goto Tirisfal Glades,85.03,54.72,0
    .goto Tirisfal Glades,83.50,55.56,30,0
    .goto Tirisfal Glades,85.03,54.72,30,0
    .goto Tirisfal Glades,86.56,54.51,30,0
    .goto Tirisfal Glades,88.06,54.99,30,0
    .goto Tirisfal Glades,88.94,53.56,30,0
    .goto Tirisfal Glades,89.70,51.88,30,0
    .goto Tirisfal Glades,90.92,50.56,30,0
    .goto Tirisfal Glades,90.87,48.33,30,0
    .goto Tirisfal Glades,89.87,46.65,30,0
    .goto Tirisfal Glades,85.04,46.68,30,0
    .goto Tirisfal Glades,84.52,49.29,30,0
    .goto Tirisfal Glades,83.46,52.09,30,0
    >>Tuez les |cRXP_ENEMY_Tisse-nuits vicieuses|r. Dépouillez-les pour leur |cRXP_LOOT_Toxines|r
    .complete 369,1 --Vicious Night Web Spider Venom (4)
    .mob Vicious Night Web Spider
step
    #completewith LinneaTurnin
    .goto Tirisfal Glades,65.49,60.25,60 >> Retournez vers |cRXP_FRIENDLY_Linnea|r
step
    #completewith next
    >>Terminez de tuer les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    >>|cRXP_WARN_Vous pouvez passer cette quête si vous n'avez pas eu chance|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #label LinneaTurnin
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Nécrogarde Linnea|r
    .turnin 356 >>Rendez la quête Patrouille d'arrière-garde
    .target Deathguard Linnea
step
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Achetez-lui une|r |T132891:0|t[Bobine de fil grossier] |cRXP_BUY_|r |cRXP_FRIENDLY_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Burgess|r, à |cRXP_FRIENDLY_Zygand|r, à |cRXP_FRIENDLY_Sevren|r et à |cRXP_FRIENDLY_Johaan|r
    .turnin 374 >>Rendez la quête Preuves de la mort
    .target +Deathguard Burgess
    .goto Tirisfal Glades,60.93,52.01
    .turnin 371 >>Rendez la quête En guerre avec la Croisade écarlate
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .turnin 360 >>Rendez la quête Retourner voir le Magistrat
    .turnin 355 >>Rendez la quête Parler à Sevren
    .accept 408 >>Acceptez la quête La crypte familiale
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
    .turnin 369 >>Rendez la quête Une Peste nouvelle
    .accept 445 >>Acceptez la quête Livraison dans la forêt des Pins argentés
    .accept 492 >>Acceptez la quête Une Peste nouvelle
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.39
    .isOnQuest 360
    .group
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Burgess|r, à |cRXP_FRIENDLY_Zygand|r, à |cRXP_FRIENDLY_Sevren|r et à |cRXP_FRIENDLY_Johaan|r
    .turnin 374 >>Rendez la quête Preuves de la mort
    .target +Deathguard Burgess
    .goto Tirisfal Glades,60.93,52.01
    .turnin 371 >>Rendez la quête En guerre avec la Croisade écarlate
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .turnin 355 >>Rendez la quête Parler à Sevren
    .accept 408 >>Acceptez la quête La crypte familiale
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
    .turnin 369 >>Rendez la quête Une Peste nouvelle
    .accept 445 >>Acceptez la quête Livraison dans la forêt des Pins argentés
    .accept 492 >>Acceptez la quête Une Peste nouvelle
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.39
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Burgess|r, à |cRXP_FRIENDLY_Zygand|r, à |cRXP_FRIENDLY_Sevren|r et à |cRXP_FRIENDLY_Johaan|r
    .turnin 374 >>Rendez la quête Preuves de la mort
    .target +Deathguard Burgess
    .goto Tirisfal Glades,60.93,52.01
    .turnin 371 >>Rendez la quête En guerre avec la Croisade écarlate
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .turnin 360 >>Rendez la quête Retourner voir le Magistrat
    .turnin 355 >>Rendez la quête Parler à Sevren
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
    .turnin 369 >>Rendez la quête Une Peste nouvelle
    .accept 445 >>Acceptez la quête Livraison dans la forêt des Pins argentés
    .accept 492 >>Acceptez la quête Une Peste nouvelle
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.39
    .isOnQuest 360
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Burgess|r, à |cRXP_FRIENDLY_Zygand|r, à |cRXP_FRIENDLY_Sevren|r et à |cRXP_FRIENDLY_Johaan|r
    .turnin 374 >>Rendez la quête Preuves de la mort
    .target +Deathguard Burgess
    .goto Tirisfal Glades,60.93,52.01
    .turnin 371 >>Rendez la quête En guerre avec la Croisade écarlate
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .turnin 355 >>Rendez la quête Parler à Sevren
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
    .turnin 369 >>Rendez la quête Une Peste nouvelle
    .accept 445 >>Acceptez la quête Livraison dans la forêt des Pins argentés
    .accept 492 >>Acceptez la quête Une Peste nouvelle
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.39
step
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gretchen|r à l'étage
    .turnin 375 >>Rendez la quête Le frisson de la mort
    .target Gretchen Dedmar
    .isOnQuest 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beryl|r au deuxième étage
	.train 588 >>Apprenez |T135926:0|t[Feu intérieur]
    .target Dark Cleric Beryl
    .xp <12,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cain|r au second étage
    .train 145 >> Apprenez |T135812:0|t[Boule de feu (Rang 3)]
    .target Cain Firesong
    .xp <12,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à  |cRXP_FRIENDLY_Austil|r
    .train 7384 >>Apprenez |T132223:0|t[Fulgurance]
    .target Austil de Mon
    .xp <12,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r au second étage
    .train 1766 >> Apprenez |T132219:0|t[Coup de pied]
    .target Marion Call
    .xp <12,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rupert|r
    .train 755 >> Apprenez [Captation de vie]
    .target Rupert Boch
    .xp <12,1
step
    .goto Tirisfal Glades,47.39,43.64,150,0
    .goto Tirisfal Glades,52.23,26.91,20,0
    .goto Tirisfal Glades,52.29,26.40,8 >> Voyagez à la crypte des Moulins d'Agamand
    .isOnQuest 408
    .group
step << Warrior
    #completewith CaptainDargol
    >>Ramassez les |cRXP_PICK_Râtelier d'armes Agamand|r au sol
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
    .group 2
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Ancêtres gémissantes|r et les |cRXP_ENEMY_Ancêtres pourrissants|r.
    >>|cRXP_WARN_Soyez prudent ! Les mobs de cette crypte réapparaissent dynamiquement !|r
    .complete 408,1 --Wailing Ancestor (8)
    .mob +Wailing Ancestor
    .complete 408,2 --Rotting Ancestor (8)
    .mob +Rotting Ancestor
    .group 2
step
    #label CaptainDargol
    .goto Tirisfal Glades,52.53,26.78,8,0
    .goto Tirisfal Glades,52.08,26.81,8,0
    .goto Tirisfal Glades,52.03,26.43,8,0
    .goto Tirisfal Glades,52.81,26.36
    >>Tuez le |cRXP_ENEMY_Capitaine Dargol|r. Dépouillez-le pour son |cRXP_LOOT_Crâne|r. Il est au fond de la crypte
    .complete 408,3 --Dargol's Skull (1)
    .mob Captain Dargol
    .isOnQuest 408
    .group 2
step << Warrior
    #completewith next
    >>Ramassez les |cRXP_PICK_Râtelier d'armes Agamand|r au sol
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
    .group 2
step
    #loop
	.goto Tirisfal Glades,51.90,26.87,0
	.goto Tirisfal Glades,51.88,25.86,25,0
	.goto Tirisfal Glades,52.61,25.85,25,0
	.goto Tirisfal Glades,52.60,26.88,25,0
	.goto Tirisfal Glades,51.90,26.87,25,0
    >>Tuez les |cRXP_ENEMY_Ancêtres gémissantes|r et les |cRXP_ENEMY_Ancêtres pourrissants|r.
    >>|cRXP_WARN_Soyez prudent ! Les mobs de cette crypte réapparaissent dynamiquement !|r
    .complete 408,1 --Wailing Ancestor (8)
    .mob +Wailing Ancestor
    .complete 408,2 --Rotting Ancestor (8)
    .mob +Rotting Ancestor
    .isOnQuest 408
    .group 2
step << Warrior
    #loop
    .goto Tirisfal Glades,52.66,25.87,0
    .goto Tirisfal Glades,51.70,25.69,12,0
    .goto Tirisfal Glades,52.62,25.62,12,0
    .goto Tirisfal Glades,52.65,27.02,12,0
    .goto Tirisfal Glades,51.89,27.10,12,0
    .goto Tirisfal Glades,52.66,25.87,12,0
    >>Ramassez les |cRXP_PICK_Râtelier d'armes Agamand|r au sol
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
    .group 2
step << skip
    .goto Tirisfal Glades,51.68,25.67
    .goto Tirisfal Glades,56.24,49.42,30 >>|cRXP_WARN_Sautez sur l'un des râteliers d'armes. Effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
    .link https://www.youtube.com/watch?v=bH_NYmWf8Lc&ab >> |cRXP_WARN_CLIQUEZ ICI pour un exemple vidéo|r
    .isQuestComplete 408
    .group
step
    #completewith NewPlagueFinal
    .subzone 159 >>Voyagez jusqu'à Brill
    .isQuestComplete 408
    .group
step
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Magistrat Sevren|r
    .turnin 408 >>Rendez la quête La crypte familiale
    .target Magistrate Sevren
    .isQuestComplete 408
    .group
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman|r dans l'auberge
    .turnin 1821 >>Rendez la quête L'héritage des Agamand
    .turnin 1822 >>Une arme en héritage
    .target Coleman Farthing
    .isQuestComplete 1821
    .group
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman|r dans l'auberge
    .turnin 1822 >>Une arme en héritage
    .target Coleman Farthing
    .isQuestTurnedIn 1821
    .group
step
    #optional
    .goto Tirisfal Glades,61.97,51.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Zélote écarlate capturé|r en bas des escaliers au fond de l'auberge
    .turnin 407 >>Rendez la quête Les champs du Chagrin
    .target Captured Scarlet Zealot
    .isQuestTurnedIn 365
step
    #label NewPlagueFinal
    .goto Tirisfal Glades,61.94,51.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Montagnard capturé|r en bas des escaliers au fond de l'auberge
    .turnin 492 >> Rendez la quête Une Peste nouvelle
    .target Captured Mountaineer
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beryl|r au deuxième étage
	.train 588,1 >>Apprenez |T135926:0|t[Feu intérieur]
    .target Dark Cleric Beryl
    .xp <12,1
    .xp >14,1
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beryl|r au deuxième étage
	.train 6074 >> Apprenez vos sorts de classe
    .target Dark Cleric Beryl
    .xp <14,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cain|r au second étage
    .train 145,1 >> Apprenez |T135812:0|t[Boule de feu (Rang 3)]
    .target Cain Firesong
    .xp <12,1
    .xp >14,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cain|r au second étage
    .train 2137 >> Apprenez vos sorts de classe
    .target Cain Firesong
    .xp <14,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à  |cRXP_FRIENDLY_Austil|r
    .train 7384,1 >>Apprenez |T132223:0|t[Fulgurance]
    .target Austil de Mon
    .xp <12,1
    .xp >14,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à  |cRXP_FRIENDLY_Austil|r
    .train 1160 >> Apprenez vos sorts de classe
    .target Austil de Mon
    .xp <14,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r au second étage
    .train 1766,1 >> Apprenez |T132219:0|t[Coup de pied]
    .target Marion Call
    .xp <12,1
    .xp >14,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r au second étage
    .train 1758 >> Apprenez vos sorts de classe
    .target Marion Call
    .xp <14,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rupert|r
    .train 755,1 >> Apprenez [Captation de vie]
    .target Rupert Boch
    .xp <12,1
    .xp >14,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rupert|r
    .train 6222 >> Apprenez vos sorts de classe
    .target Rupert Boch
    .xp <14,1
step << Mage
    #completewith next
    .goto Tirisfal Glades,61.80,65.06,20 >> Entrez dans Undercity
    .zoneskip Undercity
step << Mage
    #completewith next
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Prenez l'ascenseur pour descendre dans Undercity
step << Mage
    .goto Undercity,85.12,10.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anastasia|r au Quartier Magique
    .turnin 1882 >>Rendez la quête La ferme des Balnir
    .target Anastasia Hartwell
step << Undead Rogue
    #completewith Swordtraining2
    .goto Tirisfal Glades,61.80,65.06,20 >> Entrez dans Undercity
    .zoneskip Undercity
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Undead Rogue
    #completewith Swordtraining2
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Prenez l'ascenseur pour descendre dans Undercity
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << !Undead
    #completewith UCflightpath
    .goto Tirisfal Glades,61.80,65.06,20 >> Entrez dans Undercity
    .zoneskip Undercity
step << !Undead
    #completewith UCflightpath
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Prenez l'ascenseur pour descendre dans Undercity
step << !Undead
    #label UCflightpath
    .goto Undercity,63.25,48.56
    .fp Undercity >> Prenez le chemin de vol de Fossoyeuse
    .target Michael Garrett
step << Undead Rogue
    .goto Undercity,83.52,69.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mennet Carkad|r
    .turnin 1885 >>Rendez la quête Mennet Carkad
    .accept 1886 >>Acceptez la quête Les nécrotraqueurs
    .target Mennet Carkad
    .isOnQuest 1885
step << Rogue
    #label Swordtraining2
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Archibald|r au Quartier de la Guerre
    .train 201 >>Achetez la compétence pour porter des épées à une main
    .target Archibald
step << Rogue
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Charles|r |cRXP_BUY_ au Quartier des Voleurs. Achetez-lui un|r |T135346:0|t[Sabre d'abordage] |cRXP_BUY_|r
    .collect 851,1,435,1 --Collect Cutlass (1)
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #optional
    #completewith Entersilverpine
    +Équipez le [Coutelas]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Undead Warrior
    #completewith Entersilverpine
    .goto Tirisfal Glades,61.80,65.06,20 >> Entrez dans Undercity
    .zoneskip Undercity
    .zoneskip Undercity
    .money <0.3022
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Undead Warrior
    #completewith Entersilverpine
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Prenez l'ascenseur pour descendre dans Undercity
    .money <0.3022
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Troll Warrior/Undead Warrior/Tauren Shaman/Troll Shaman/Orc Shaman
    .goto Undercity,58.82,32.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Benijah|r|cRXP_BUY_. Achetez-lui un|r |T135154:0|t[Bâton de combat] |cRXP_BUY_|r
    .collect 854,1,435,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Benijah Fenner
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Troll Warrior/Undead Warrior/Tauren Shaman/Troll Shaman/Orc Shaman
    #optional
    #completewith Entersilverpine
    +Équipez le [Bâton]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step
    #optional
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commissaire-priseur Rhyker|r
    >>|cRXP_BUY_Achetez six|r |T134339:0|t[Coeurs de worg décolorés] |cRXP_BUY_à l'Hôtel des ventes|r
    >>|cRXP_WARN_Passez cette étape si vous voulez, c'est seulement un petit gain de temps|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Priest/Warlock
    .goto Undercity,62.47,61.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lavinia Crowe|r
    .train 7411 >> Apprenez |T136244:0|t[Enchantement]
    .target Lavinia Crowe
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,70.06,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Victor|r
    .train 3908 >> Apprenez |T136249:0|t[Couture]
    .target Victor Ward
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,70.76,30.67
    >>|cRXP_WARN_Transformez toutes vos|r |T132889:0|t[Etoffe de lin] |cRXP_WARN_en|r |T132890:0|t[Rouleaux d'étoffe de lin]
    .collect 2996,30,435,1 --Bolt of Linen Cloth (30)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,70.06,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Victor|r
    .train 7623 >> Apprenez |T132662:0|t[Robe marron en lin]
    .target Victor Ward
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,70.57,30.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Millie Gregorian|r
    >>|cRXP_BUY_Achetez-lui des|r |T132891:0|t[Bobines de fil grossier] |cRXP_BUY_|r
    .collect 2320,30,435,1 --Coarse Thread (30)
    .target Millie Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    >>|cRXP_WARN_Fabriquez autant de|r |T132662:0|t[Robes marron en lin] |cRXP_WARN_que possible|r
    .collect 6238,9,398,1 --Brown Linen Robe(9)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,62.35,60.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Thaddeus|r|cRXP_BUY_. Achetez-lui un|r |T133942:0|t[Bâtonnet en cuivre] |cRXP_BUY_et du|r |T135435:0|t[Simple Bois] |cRXP_BUY_|r
    >>|cRXP_WARN_Désenchantez tous les|r |T132662:0|t[Robe marron en lin] |cRXP_WARN_que vous avez tissé et fabriqué un|r |T135225:0|t[Bâtonnet runique en cuivre]
    >>|cRXP_WARN_Si vous n'avez pas obtenu une|r |T132867:0|t[Essence de magie inférieure] |cRXP_WARN_alors achetez-en une à|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_s'il en a. Sinon, terminez cette étape plus tard|r
    .collect 6218,1,435,1 --Runed Copper Rod (1)
    .collect 4470,1,435,1 --Simple Wood (1)
    .target Thaddeus Webb
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,62.54,60.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Malcomb Wynn|r
    .train 14293 >> Apprenez |T135139:0|t[Baguette magique inférieure]
    .target Malcomb Wynn
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    >>|cRXP_WARN_Créez une|r |T135139:0|t[Baguette magique inférieure]
    >>|cRXP_WARN_Si vous n'avez pas obtenu une|r |T132867:0|t[Essence de magie inférieure] |cRXP_WARN_alors achetez-en une à|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_s'il en a. Sinon, terminez cette étape plus tard|r
    .collect 11287,1,435,1 --Lesser Magic Wand (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    #optional
    #completewith Entersilverpine
    +|cRXP_WARN_Équipez la|r |T135139:0|t[Baguette magique inférieure]
    .use 11287
    .itemcount 11287,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step
    #optional
    .abandon 806 >> Abandonnez la quête De sombres orages
    .isOnQuest 806
step
    #optional
    .abandon 408 >> Abandonnez la quête La crypte familiale
    .isOnQuest 408
step << Warrior
    #optional
    .abandon 1821 >> Abandonnez la quête L'héritage des Agamand
    .isOnQuest 1821
step
    #label LeaveUndercity3
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50 >> Quittez Undercity par les Égouts
    .zoneskip Tirisfal Glades
    .zoneskip Tirisfal Glades
step
    #label Entersilverpine
    .zone Silverpine Forest >> Voyagez à la Forêt des Pins argentés
    .zoneskip Silverpine Forest

]])
