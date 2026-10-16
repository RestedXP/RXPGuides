if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate <1.99
<< Horde
#version 11
#group RestedXP Horde 1-22
#groupid RXP-SRGCE-H1
#defaultfor Undead
#name 1-6 Clairières de Tirisfal
#next 6-11 Clairières de Tirisfal

step << !Undead
    #completewith next
    +Si vous avez sélectionné un guide prévu pour les Morts-vivants. Il est recommandé que vous choisissiez la même zone de départ que celle par laquelle vous commencez
step << !Undead Mage
    #season 2
    #completewith next
    +Dans Season of Discovery, vous ne devez PAS commencer hors de la zone de départ de votre race en tant que Mage, car vous serez incapable d'obtenir votre première rune (|T133816:0|t[Gravure de gants (Javelot de glace)])
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
    #season 2
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
    .accept 77672 >>Acceptez la quête La Rune perdue << Warlock
    .target +Maximillion << Warlock
    .goto Tirisfal Glades,30.91,66.34 << Warlock
    .turnin 3098 >> Rendez la quête Parchemin glyphé << Mage
    .accept 77671 >>Acceptez la quête Recherches sur les sorts << Mage
    .target +Isabella << Mage
    .goto Tirisfal Glades,30.94,66.06 << Mage
    .turnin 3097 >> Rendez la quête Parchemin béni << Priest
    .target +Dark Cleric Duesten << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
step
    #season 0
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
step << Priest
    #season 2
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duesten|r
    .turnin 77670 >>Rendez la quête Méditation sur la non-mort
    .target Dark Cleric Duesten
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
    #optional
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
    #optional
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
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Joshua Kien
    .money >0.1
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
    #xprate <1.5
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deathguard Saltain|r et à |cRXP_FRIENDLY_Executor Arren|r
    .accept 3902 >> Acceptez la quête La chasse aux trésors
    .goto Tirisfal Glades,31.61,65.62
    .target +Deathguard Saltain
    .accept 380 >> Acceptez la quête Les grottes des Tisse-nuit
    .goto Tirisfal Glades,32.15,66.01
    .target +Executor Arren
step
    #xprate >1.49
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Exécuteur Arren|r
    .accept 380 >> Acceptez la quête Les grottes des Tisse-nuit
    .goto Tirisfal Glades,32.15,66.01
    .target Executor Arren
step << Rogue/Warrior
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archibald|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Archibald Kava
    .money >0.1
    .isOnQuest 3095 << Warrior
    .isOnQuest 3096 << Rogue
step << Warrior
    #season 2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >> Rendez la quête Parchemin simple
    .accept 77668 >> Acceptez la quête La Rune perdue
    .train 100 >> Apprenez [Charge]
    .train 772 >> Apprenez [Pourfendre]
    .target Dannal Stern
    .money <0.02
 step << Warrior
    #season 2
    #label Training2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >> Rendez la quête Parchemin simple
    .accept 77668 >> Acceptez la quête La Rune perdue
    .train 772 >> Apprenez [Pourfendre]
    .target Dannal Stern
    .money <0.01
step << Warrior
    #season 0
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >> Rendez la quête Parchemin simple
    .train 100 >> Apprenez [Charge]
    .train 772 >> Apprenez [Pourfendre]
    .target Dannal Stern
    .money <0.02
 step << Warrior
    #season 0
    #label Training2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >> Rendez la quête Parchemin simple
    .train 772 >> Apprenez [Pourfendre]
    .target Dannal Stern
    .money <0.01
step << Rogue
    #season 2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_David|r
    .turnin 3096 >> Rendez la quête Parchemin codé
    .accept 77669 >>Acceptez la quête La rune écarlate
    .train 53 >> Apprenez [Attaque sournoise]
    .money <0.04
    .target David Trias
step << Rogue
    #season 2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_David|r
    .turnin 3096 >> Rendez la quête Parchemin codé
    .accept 77669 >>Acceptez la quête La rune écarlate
    .target David Trias
step << Rogue
    #season 0
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_David|r
    .turnin 3096 >> Rendez la quête Parchemin codé
    .train 53 >> Apprenez [Attaque sournoise]
    .money <0.04
    .target David Trias
step << Rogue
    #season 0
    #label Training2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_David|r
    .turnin 3096 >> Rendez la quête Parchemin codé
    .target David Trias
step
    #xprate >1.49
    #optional
    #completewith NightWebStart
    .abandon 3902 >> Abandonnez la quête La chasse aux trésors
step
    #xprate <1.5
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
    #label NightWebStart
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
step << Warlock
    #season 2
    #completewith RuneofHaunting
    >>Tuez les |cRXP_ENEMY_Night Web Spiders|r à l'intérieur de la grotte
	.complete 380,2 --Kill Night Web Spider (x8)
    .mob Night Web Spider
step << Warrior
    #season 2
    #completewith RuneofVictoryRush
    >>Tuez les |cRXP_ENEMY_Night Web Spiders|r à l'intérieur de la grotte
	.complete 380,2 --Kill Night Web Spider (x8)
    .mob Night Web Spider
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
step
    #xprate <1.5
    #softcore
    #completewith Scavenging
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
step
    #xprate >1.49
    #softcore
    #completewith NightWebH
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
step << Warlock
    #softcore
    #completewith ScarletC
    .cast 688 >>Lancez [Invocation d'un diablotin]
step << skip
    #hardcore
    #completewith next
    .goto 1420,26.027,60.607,-1
    .goto 1420,24.508,59.360,-1
    .goto 1420,23.572,59.239,-1
    .goto Tirisfal Glades,31.08,64.88,30 >>|cRXP_WARN_Effectuez un Logout skip à l'intérieur de la grotte en sautant sur un déchiqueteur, un puits ou la planche en bois coincée dans le mur, puis déconnectez-vous et reconnectez-vous|r
    >>|cRXP_WARN_Sinon, retournez au Glas|r
step
    #xprate <1.5
    #label Scavenging
    .goto Tirisfal Glades,31.61,65.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Saltain|r
    .turnin 3902 >> Rendez la quête La chasse aux trésors
    .target Deathguard Saltain
step << Warlock
    #season 2
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maximillion|r
    .turnin 77672 >>Rendez la quête La Rune perdue
    .target Maximillion
step
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
step << Warrior
    #season 2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dannal|r
    .turnin 77668 >>Rendez la quête La Rune perdue
    .target Dannal Stern
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
    #softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
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
step << Mage
    #season 2
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Isabella|r
    .turnin 77671 >>Rendez la quête Recherches sur les sorts
    .target Isabella
    .isQuestComplete 77671
step
    #sticky
    #label ScarletC
    .goto Tirisfal Glades,32.15,66.01,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arren|r
    .turnin 381 >> Rendez la quête La Croisade écarlate
    .accept 382 >> Acceptez la quête Le messager rouge
    .target Executor Arren
step << Rogue
    #season 2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_David|r
    .turnin 77669 >>Rendez la quête La rune écarlate
    .target David Trias
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
#classic
#tbc
#xprate <1.99
<< Horde
#name 6-11 Clairières de Tirisfal
#version 11
#group RestedXP Horde 1-22
#groupid RXP-SRGCE-H1
#defaultfor Undead
#next 12-14 Forêt des Pins argentés; 12-17 Les Tarides

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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gordo|r.
    >>|cRXP_WARN_C'est une abomination qui patrouille le long de la route pour Brill|r
    .accept 5481 >>Acceptez la quête La tâche de Gordo
    .unitscan Gordo
step << Priest
    .goto Tirisfal Glades,52.59,55.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bowen|r
    .train 3908 >> Apprenez |T136249:0|t[Couture]. Gardez vos |T132889:0|t[Etoffe de lin]. Cela vous permettra de fabriquer une baguette plus tard
    .target Bowen Brisboise
step
    #softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au  |cRXP_FRIENDLY_Spirit Healer|r ou allez jusqu'à Brill
    .target Gardien des âmes
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
step
    #xprate >1.49
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gretchen|r
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_se trouve au deuxième étage de l'auberge|r
    .accept 375 >>Acceptez la quête Le frisson de la mort
    .target Gretchen Dedmar
    .xp <7,1
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
    #season 0
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r au second étage
    .train 1757 >> Apprenez [Attaque Pernicieuse]
    .target Marion Call
    .money <0.01
step << Rogue
    #season 2
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r au second étage
    .train 1757 >> Apprenez [Attaque Pernicieuse]
    .train 921 >> Apprenez [Vol à la tire]
    .target Marion Call
    .money <0.02
step << Rogue
    #optional
    #season 2
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r au second étage
    .train 921 >> Apprenez [Vol à la tire]
    .target Marion Call
    .money >0.02
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
    .train 7411 >> Apprenez |T136244:0|t[Enchantement]
    >>|cRXP_WARN_L'enchantement, combiné avec la|r |T136249:0|t[Couture] |cRXP_WARN_vous permettra de fabriquer une baguette plus tard|r
    .target Vance Undergloom
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Renee|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Delaniel|r << Mage/Priest
    >>|cRXP_BUY_Achetez-lui des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r <<Warrior/Rogue
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
    >>|cRXP_WARN_Vous avez besoin de Soins inférieurs (Rang 2) pour cette quête|r
    .complete 5650,1 --Heal and fortify Deathguard Kel (1)
    .target Deathguard Kel
step
    #completewith Claws
    >>Ramassez l' |cRXP_LOOT_Herbe des ténèbres|r sur le sol
    .complete 5481,1 --Gloom Weed (3)
step
    #xprate <1.5
    #completewith Pumkpins
    >>Tuez tous les |cRXP_ENEMY_Sombredogues décrépits|r que vous voyez. Dépouillez-les pour leur |cRXP_LOOT_Sang|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
step
    #xprate >1.49
    #completewith GloomWeed
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
    #label GloomWeed
    #loop
    .goto Tirisfal Glades,39.55,50.64,0
    .goto Tirisfal Glades,44.43,57.33,0
    .goto Tirisfal Glades,39.55,50.64,50,0
    .goto Tirisfal Glades,44.43,57.33,50,0
    >>Terminez de ramasser l' |cRXP_LOOT_Herbe des ténèbres|r sur le sol
    .complete 5481,1 --Gloom Weed (3)
step << Warrior
    #optional
    #season 2
    #xprate >1.49
    #completewith DBlood
    >>Tuez les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour une |cRXP_LOOT_Tête de chauve-souris coupée|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
    .isOnQuest 375
step
    #optional
    #xprate >1.49
    #completewith next
    >>Tuez les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #xprate >1.49
    #label DBlood
    #loop
    .goto Tirisfal Glades,43.97,57.27,0
    .goto Tirisfal Glades,40.57,47.23,0
    .goto Tirisfal Glades,48.03,53.43,80,0
    .goto Tirisfal Glades,43.97,57.27,80,0
    .goto Tirisfal Glades,41.01,55.94,60,0
    .goto Tirisfal Glades,40.57,47.23,60,0
    .goto Tirisfal Glades,40.89,42.77,60,0
    .goto Tirisfal Glades,39.12,39.85,60,0
    >>Terminez de tuer les |cRXP_ENEMY_Sombredogues|r. Dépouillez-les pour leur |cRXP_LOOT_Sang|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound
step << Priest
    #ah
    #completewith FinishRings
    >>|cRXP_WARN_Commencez à récolter 3 stacks d'|r |T132889:0|t[Etoffe de lin]|cRXP_WARN_. Ils seront utilisés pour fabriquer une|r |T135139:0|t[Baguette magique inférieure] |cRXP_WARN_plus tard|r
    >>|cRXP_WARN_Si vous ne voulez pas le faire ou si vous préférez l'acheter à l'Hôtel des ventes plus tard, passez cette étape|r
    .collect 2589,60 --Linen Cloth (60)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #ssf
    #completewith FinishRings
    >>|cRXP_WARN_Commencez à récolter 3 stacks d'|r |T132889:0|t[Etoffe de lin]|cRXP_WARN_. Ils seront utilisés pour fabriquer une|r |T135139:0|t[Baguette magique inférieure] |cRXP_WARN_plus tard|r
    .collect 2589,60 --Linen Cloth (60)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Rogue
    #season 2
    #completewith next
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Fermiers de Tirisfal|r et les |cRXP_ENEMY_Journaliers de Tirisfal|r puis tuez-les. Récupérez le |T134327:0|t[|cRXP_LOOT_Morceau supérieur gauche de carte|r]
    .collect 208036,1 --Top-Left Map Piece (1)
    .mob Tirisfal Farmer
    .mob Tirisfal Farmhand
    .train 400095,1
step
    #label Pumkpins
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
step << Rogue
    #season 2
    #loop
    .goto Tirisfal Glades,36.63,50.09,0
    .goto Tirisfal Glades,37.20,52.17,50,0
    .goto Tirisfal Glades,36.64,50.09,50,0
    .goto Tirisfal Glades,36.10,49.07,50,0
    .goto Tirisfal Glades,35.08,49.82,50,0
    .goto Tirisfal Glades,35.30,50.91,50,0
    .goto Tirisfal Glades,34.57,51.58,50,0
    .goto Tirisfal Glades,36.63,50.09,50,0
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Fermiers de Tirisfal|r et les |cRXP_ENEMY_Journaliers de Tirisfal|r puis tuez-les. Récupérez le |T134327:0|t[|cRXP_LOOT_Morceau supérieur gauche de carte|r]
    .collect 208036,1 --Top-Left Map Piece (1)
    .mob Tirisfal Farmer
    .mob Tirisfal Farmhand
    .train 400095,1
step << Rogue/Mage/Priest
    #season 2
    #completewith next
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Guerriers écarlates|r et tuez-les. Dépouillez-les pour le |T134327:0|t[|cRXP_LOOT_Morceau supérieur droit de carte|r] << Rogue
    >>Tuez les |cRXP_ENEMY_Guerriers écarlates|r. Dépouillez-les pour les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : VALAFM EVNTMIE|r] << Mage
    >>Tuez les |cRXP_ENEMY_Guerriers écarlates|r. Dépouillez-les pour la |T135975:0|t[|cRXP_FRIENDLY_Prophétie d’une citadelle profanée|r] << Priest
    >>|cRXP_WARN_N'importe lequel des Humanoïdes de la Croisade écarlate à Tirisfal peut faire tomber le Morceau de carte|r << Rogue
    >>|cRXP_WARN_N'importe lequel des Humanoïdes de la Croisade écarlate à Tirisfal peut faire tomber les Notes de sort|r << Mage
    >>|cRXP_WARN_N'importe lequel des Humanoïdes de la Croisade écarlate à Tirisfal peut faire tomber la Prophétie|r << Priest
    .collect 208035,1 << Rogue --Top-Right Map Piece (1)
    .collect 203752,1 << Mage --Spell Notes: MILEGIN VALF (1)
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel (1)
    .mob Scarlet Warrior
    .train 400095,1 << Rogue
    .train 401768,1 << Mage
    .train 402852,1 << Priest
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
step << Rogue/Mage/Priest
    #season 2
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
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Guerriers écarlates|r et tuez-les. Dépouillez-les pour le |T134327:0|t[|cRXP_LOOT_Morceau supérieur droit de carte|r] << Rogue
    >>Tuez les |cRXP_ENEMY_Guerriers écarlates|r. Dépouillez-les pour les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : VALAFM EVNTMIE|r] << Mage
    >>Tuez les |cRXP_ENEMY_Guerriers écarlates|r. Dépouillez-les pour la |T135975:0|t[|cRXP_FRIENDLY_Prophétie d’une citadelle profanée|r] << Priest
    >>|cRXP_WARN_N'importe lequel des Humanoïdes de la Croisade écarlate à Tirisfal peut faire tomber le Morceau de carte|r << Rogue
    >>|cRXP_WARN_N'importe lequel des Humanoïdes de la Croisade écarlate à Tirisfal peut faire tomber les Notes de sort|r << Mage
    >>|cRXP_WARN_N'importe lequel des Humanoïdes de la Croisade écarlate à Tirisfal peut faire tomber la Prophétie|r << Priest
    .collect 208035,1 << Rogue --Top-Right Map Piece (1)
    .collect 203752,1 << Mage --Spell Notes: MILEGIN VALF (1)
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel (1)
    .mob Scarlet Warrior
    .train 400095,1 << Rogue
    .train 401768,1 << Mage
    .train 402852,1 << Priest
step << Mage
    #season 2
    .collect 211779,1 >>Vous avez besoin d'un |T135933:0|t[Charme de compréhension] acheté au |cRXP_FRIENDLY_Marchand de composants|r pour utiliser l'objet
    .train 401768 >>|cRXP_WARN_Utilisez les|r|T134939:0|t[|cRXP_FRIENDLY_Notes de sort : VALAFM EVNTMIE|r] |cRXP_WARN_pour apprendre|r |T135820:0|t[Flamme vivante]
    .use 203752
    .itemcount 203752,1
step << Mage/Priest
    #season 2
    .goto Tirisfal Glades,25.6,48.2
    >>Tuez le |cRXP_ENEMY_Branchiar|r. Dépouillez-le pour les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : GDDOT EG IEVSIR|r] << Mage
    >>Tuez |cRXP_ENEMY_Branchiar|r. Dépouillez-le pour le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un noir dessein|r] << Priest
    >>|cRXP_WARN_Il s'agit d'un elite de niveau 7 qui n'est pas facile à tuer. Passez-le pour l'instant s'il est trop difficile|r
    .collect 203753,1 << Mage --Spell Notes: RING SEFF OSTROF (1)
    .collect 205940,1 << Priest --Memory of a Dark Purpose (1)
    .mob Gillgar
    .train 401765,1 << Mage
    .train 425216,1 << Priest
step << Mage
    #season 2
    .collect 211779,1 >>Vous avez besoin d'un |T135933:0|t[Charme de compréhension] acheté au |cRXP_FRIENDLY_Marchand de composants|r pour utiliser l'objet
    .train 401765 >>|cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : GDDOT EG IEVSIR|r] |cRXP_WARN_pour apprendre|r |T236227:0|t[Doigts de givre].
    .use 203753
    .itemcount 203753,1
step
    #hardcore
    #completewith BrillTurnin1
    .hs >> Utilisez votre Pierre de foyer pour revenir à Brill
    .subzoneskip 159
    .bindlocation 1497,1
    .cooldown item,6948,>0,1
step
    #hardcore
    #completewith BrillTurnin1
    .subzone 159 >> Retournez à Brill
    .subzoneskip 159
    .cooldown item,6948,<0
step
    #softcore
    #completewith BrillTurnin1
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    #softcore
    #loop
    .goto Tirisfal Glades,57.71,48.96,0
    .goto Tirisfal Glades,58.29,49.80,30,0
    .goto Tirisfal Glades,57.71,48.96,30,0
    .goto Tirisfal Glades,59.26,46.73,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apprenti apothicaire Holland|r, il patrouille autour du cimetière
    .turnin 5481 >>Rendez la quête La tâche de Gordo
    .accept 5482 >>Acceptez la quête Herbe maléfique
    .target Junior Apothecary Holland
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r, à |cRXP_FRIENDLY_Johaan|r et à |cRXP_FRIENDLY_Zygand|r
    .turnin 404 >>Rendez la quête Une tâche putride
    .accept 426 >>Acceptez la quête La chute des moulins
    .target +Deathguard Dillinger
    .goto Tirisfal Glades,58.20,51.43
    .turnin 367 >>Rendez la quête Une Peste nouvelle
    .turnin 365 >>Rendez la quête Les champs du Chagrin
    .accept 368 >>Acceptez la quête Une Peste nouvelle
    .accept 407 >>Acceptez la quête Les champs du Chagrin
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.40
    .turnin 427 >>Rendez la quête En guerre avec la Croisade écarlate
    .accept 370 >>Acceptez la quête En guerre avec la Croisade écarlate
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .isQuestComplete 367
step
    #label BrillTurnin1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r, à |cRXP_FRIENDLY_Johaan|r et à |cRXP_FRIENDLY_Zygand|r
    .turnin 404 >>Rendez la quête Une tâche putride
    .accept 426 >>Acceptez la quête La chute des moulins
    .target +Deathguard Dillinger
    .goto Tirisfal Glades,58.20,51.43
    .turnin 365 >>Rendez la quête Les champs du Chagrin
    .accept 407 >>Acceptez la quête Les champs du Chagrin
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.40
    .turnin 427 >>Rendez la quête En guerre avec la Croisade écarlate
    .accept 370 >>Acceptez la quête En guerre avec la Croisade écarlate
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
 step
    #xprate >1.49
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Achetez-lui une|r |T132891:0|t[Bobine de fil grossier] |cRXP_BUY_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    #xprate >1.49
    .goto Tirisfal Glades,61.97,51.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Zélote écarlate capturé|r en bas des escaliers au fond de l'auberge
    .turnin 407 >>Rendez la quête Les champs du Chagrin
    .target Captured Scarlet Zealot
step
    #xprate >1.49
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Rendez la quête Le frisson de la mort
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beryl|r au deuxième étage
    .turnin 5650 >>Rendez la quête Vêtements des ténèbres
    .train 591 >>Apprenez [Châtiment]
    .train 17 >>Apprenez [Mot de pouvoir : Bouclier]
    .target Dark Cleric Beryl
step
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gretchen|r
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_se trouve au deuxième étage de l'auberge|r
    .accept 375 >>Acceptez la quête Le frisson de la mort
    .target Gretchen Dedmar
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beryl|r au deuxième étage
	.train 139 >> Apprenez vos sorts de classe
    .target Dark Cleric Beryl
    .xp <8,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cain|r au second étage
    .train 205 >> Apprenez vos sorts de classe
    .target Cain Firesong
    .xp <8,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à  |cRXP_FRIENDLY_Austil|r
    .train 284 >> Apprenez vos sorts de classe
    .target Austil de Mon
    .xp <8,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r au second étage
    .train 6760 >> Apprenez vos sorts de classe
    .target Marion Call
    .xp <8,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rupert|r
    .train 980 >> Apprenez vos sorts de classe
    .target Rupert Boch
    .xp <8,1
step << Rogue/Warrior
    .goto Tirisfal Glades,61.81,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Infirmière Neela|r
    >>|cRXP_WARN_Essayez d'en fabriquer pendant les temps d'attente, par exemple pour les Zeppelins|r
    .train 3273 >>Apprenez [Premiers soins]
    .target Nurse Neela
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
    .collect 2494,1,367,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith NewPlague1
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
    .collect 2488,1,367,1 --Collect Gladius (1)
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith NewPlague1
    +Équipez le [Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step
    #hardcore
    #loop
    .goto Tirisfal Glades,57.71,48.96,0
    .goto Tirisfal Glades,58.29,49.80,30,0
    .goto Tirisfal Glades,57.71,48.96,30,0
    .goto Tirisfal Glades,59.26,46.73,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apprenti apothicaire Holland|r, il patrouille autour du cimetière
    .turnin 5481 >>Rendez la quête La tâche de Gordo
    .accept 5482 >>Acceptez la quête Herbe maléfique
    .target Junior Apothecary Holland
step << Warrior
    #season 2
    #xprate <1.5
    #completewith DuskbatTrophy1
    >>Tuez les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour une |cRXP_LOOT_Tête de chauve-souris coupée|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #xprate <1.5
    #completewith next
    >>Tuez les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #xprate <1.5
    #loop
    .goto Tirisfal Glades,56.45,62.62,0
    .goto Tirisfal Glades,58.20,58.15,50,0
    .goto Tirisfal Glades,57.98,61.66,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .goto Tirisfal Glades,54.73,64.28,50,0
    .goto Tirisfal Glades,52.84,62.26,50,0
    .goto Tirisfal Glades,50.52,61.21,50,0
    .goto Tirisfal Glades,47.88,60.87,50,0
    .goto Tirisfal Glades,46.09,59.70,50,0
    .goto Tirisfal Glades,43.49,61.81,50,0
    >>Tuez les |cRXP_ENEMY_Sombredogues|r. Dépouillez-les pour leur |cRXP_LOOT_Sang|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
step << Rogue/Warrior
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,56.45,62.62,0
    .goto Tirisfal Glades,58.20,58.15,50,0
    .goto Tirisfal Glades,57.98,61.66,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .goto Tirisfal Glades,54.73,64.28,50,0
    .goto Tirisfal Glades,52.84,62.26,50,0
    .goto Tirisfal Glades,50.52,61.21,50,0
    .goto Tirisfal Glades,47.88,60.87,50,0
    .goto Tirisfal Glades,46.09,59.70,50,0
    .goto Tirisfal Glades,43.49,61.81,50,0
    >>Tuez les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .xp >7+3960,1
step << Rogue/Warrior
    #xprate <1.5
    #optional
    #label DuskbatTrophy1
    #loop
    .goto Tirisfal Glades,56.45,62.62,0
    .goto Tirisfal Glades,58.20,58.15,50,0
    .goto Tirisfal Glades,57.98,61.66,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .goto Tirisfal Glades,54.73,64.28,50,0
    .goto Tirisfal Glades,52.84,62.26,50,0
    .goto Tirisfal Glades,50.52,61.21,50,0
    .goto Tirisfal Glades,47.88,60.87,50,0
    .goto Tirisfal Glades,46.09,59.70,50,0
    .goto Tirisfal Glades,43.49,61.81,50,0
    .xp 7+3260 >> Montez votre expérience jusqu'à 3260+/4500xp
--XX 700 (375)+540 (367)
step
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,56.45,62.62,0
    .goto Tirisfal Glades,58.20,58.15,50,0
    .goto Tirisfal Glades,57.98,61.66,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .goto Tirisfal Glades,54.73,64.28,50,0
    .goto Tirisfal Glades,52.84,62.26,50,0
    .goto Tirisfal Glades,50.52,61.21,50,0
    .goto Tirisfal Glades,47.88,60.87,50,0
    .goto Tirisfal Glades,46.09,59.70,50,0
    .goto Tirisfal Glades,43.49,61.81,50,0
    >>Tuez les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .xp >7+3690,1
step
    #xprate >1.49
    #label DuskbatTrophy1
    #loop
    .goto Tirisfal Glades,56.45,62.62,0
    .goto Tirisfal Glades,58.20,58.15,50,0
    .goto Tirisfal Glades,57.98,61.66,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .goto Tirisfal Glades,54.73,64.28,50,0
    .goto Tirisfal Glades,52.84,62.26,50,0
    .goto Tirisfal Glades,50.52,61.21,50,0
    .goto Tirisfal Glades,47.88,60.87,50,0
    .goto Tirisfal Glades,46.09,59.70,50,0
    .goto Tirisfal Glades,43.49,61.81,50,0
    .xp 7+2640 >> Montez votre expérience jusqu'à 2640+/4500xp
--XX 700 (375)+540 (367)
step
    #xprate <1.5
    #hardcore
    #completewith NewPlague1
    .subzone 159 >> Retournez à Brill
    .subzoneskip 159
step
    #xprate <1.5
    #softcore
    #completewith NewPlague1
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    #label NewPlague1
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Johaan|r
    .turnin 367 >>Rendez la quête Une Peste nouvelle
    .accept 368 >>Acceptez la quête Une Peste nouvelle
    .target Apothecary Johaan
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
step
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Achetez-lui une|r |T132891:0|t[Bobine de fil grossier] |cRXP_BUY_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Rendez la quête Le frisson de la mort
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    #xprate <1.5
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beryl|r au deuxième étage
	.train 139 >> Apprenez vos sorts de classe
    .target Dark Cleric Beryl
    .xp <8,1
step << Mage
    #xprate <1.5
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cain|r au second étage
    .train 205 >> Apprenez vos sorts de classe
    .target Cain Firesong
    .xp <8,1
step << Warrior
    #xprate <1.5
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à  |cRXP_FRIENDLY_Austil|r
    .train 284 >> Apprenez vos sorts de classe
    .target Austil de Mon
    .xp <8,1
step << Rogue
    #xprate <1.5
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r au second étage
    .train 6760 >> Apprenez vos sorts de classe
    .target Marion Call
    .xp <8,1
step << Warlock
    #xprate <1.5
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rupert|r
    .train 980 >> Apprenez vos sorts de classe
    .target Rupe
step << Rogue
    #xprate <1.5
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Stylet] (4s 01c). Vous reviendrez plus rien si vous n'avez pas encore assez d'argent
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #xprate <1.5
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Achetez un|r [Stiletto] |cRXP_BUY_à Oliver|r
    .collect 2494,1,398,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #xprate <1.5
    #optional
    #completewith Doomweed
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    #xprate <1.5
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Gladius] (5s 36c). Vous reviendrez plus rien si vous n'avez pas encore assez d'argent
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #xprate <1.5
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Achetez un|r [Gladius] |cRXP_BUY_à Oliver|r
    .collect 2488,1,398,1 --Collect Gladius (1)
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #xprate <1.5
    #optional
    #completewith Doomweed
    +Équipez le [Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Rogue
    #season 2
    #completewith MaggotEye
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Gnolls Poil-Putride|r et tuez-les. Dépouillez-les pour le |T134327:0|t[|cRXP_LOOT_Morceau inférieur gauche de carte|r]
    .collect 208038,1 --Bottom-Left Map Piece (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Gnoll
    .mob Rot Hide Graverobber
    .train 400095,1
step << Warrior
    #season 2
    #completewith MaggotEye
    >>Tuez tous les types de |cRXP_ENEMY_Gnolls Poil-Putride|r. Dépouillez-les pour une |cRXP_LOOT_Tête de Gnoll coupée|r
    .collect 204478,1 --Severed Gnoll Head (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Gnoll
    .mob Rot Hide Graverobber
    .train 403475,1
step
    #completewith next
    >>Ramassez l' |cRXP_LOOT_Herbe maléfique|r sur le sol
    >>|cRXP_WARN_Ils se trouvent près des arbres dans la zone des Gnolls|r.
    .complete 5482,1 --Doom Weed (10)
    .isOnQuest 5482
step
    #loop
    .goto Tirisfal Glades,55.24,42.54,0
    .goto Tirisfal Glades,56.31,39.67,40,0
    .goto Tirisfal Glades,54.71,41.19,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    .goto Tirisfal Glades,56.43,43.92,40,0
    >>Tuez les |cRXP_ENEMY_Profanateurs Poil-Putride|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    .complete 358,1 --Rot Hide Graverobber (8)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Graverobber
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Bâtards Poil-Putride|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Mongrel
step
    #label Doomweed
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
    >>Ramassez l' |cRXP_LOOT_Herbe maléfique|r sur le sol
    >>|cRXP_WARN_Ils se trouvent près des arbres dans la zone des Gnolls|r.
    .complete 5482,1 --Doom Weed (10)
    .isOnQuest 5482
step << Mage
    #season 2
    #optional
    #completewith MaggotEye
    .goto Tirisfal Glades,59.84,33.17,0
    .goto Tirisfal Glades,58.38,35.28,0
    .goto Tirisfal Glades,60.09,37.01,0
    >>Lancez |T136071:0|t[Métamorphose] sur les |cRXP_ENEMY_Melons étranges|r
    >>Ramassez les |T134332:0|t|cRXP_LOOT_[Notes de l’apothicaire]|r par terre
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step
    #completewith MaggotEye
    >>Tuez les |cRXP_ENEMY_Bâtards Poil-Putride|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Mongrel
step
    #label MaggotEye
    .goto Tirisfal Glades,58.66,30.77
    >>Tuez |cRXP_ENEMY_Oeil-de-ver|r. Dépouillez-le pour sa |cRXP_LOOT_Patte|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
step
    #loop
    .goto Tirisfal Glades,59.77,32.37,0
    .goto Tirisfal Glades,58.71,35.47,50,0
    .goto Tirisfal Glades,59.77,32.37,50,0
    .goto Tirisfal Glades,58.25,31.28,50,0
    .goto Tirisfal Glades,60.08,37.88,50,0
    >>Tuez les |cRXP_ENEMY_Bâtards Poil-Putride|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Mongrel
step
    #loop
    .goto Tirisfal Glades,59.77,32.37,0
    .goto Tirisfal Glades,58.71,35.47,50,0
    .goto Tirisfal Glades,59.77,32.37,50,0
    .goto Tirisfal Glades,58.25,31.28,50,0
    .goto Tirisfal Glades,60.08,37.88,50,0
    >>Tuez les |cRXP_ENEMY_Gnolls Poil-Putride|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    .complete 358,3 --Embalming Ichor (8)
    .mob Rot Hide Mongrel
    .mob Rot Hide Gnoll
    .mob Rot Hide Graverobber
step << Rogue
    #season 2
    #loop
    .goto Tirisfal Glades,59.77,32.37,0
    .goto Tirisfal Glades,58.71,35.47,50,0
    .goto Tirisfal Glades,59.77,32.37,50,0
    .goto Tirisfal Glades,58.25,31.28,50,0
    .goto Tirisfal Glades,60.08,37.88,50,0
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Gnolls Poil-Putride|r et tuez-les. Dépouillez-les pour le |T134327:0|t[|cRXP_LOOT_Morceau inférieur gauche de carte|r]
    .collect 208038,1 --Bottom-Left Map Piece (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Graverobber
    .mob Rot Hide Gnoll
    .train 400095,1
step << Warrior
    #season 2
    #loop
    .goto Tirisfal Glades,59.77,32.37,0
    .goto Tirisfal Glades,58.71,35.47,50,0
    .goto Tirisfal Glades,59.77,32.37,50,0
    .goto Tirisfal Glades,58.25,31.28,50,0
    .goto Tirisfal Glades,60.08,37.88,50,0
    >>Tuez tous les types de |cRXP_ENEMY_Gnolls Poil-Putride|r. Dépouillez-les pour une |cRXP_LOOT_Tête de Gnoll coupée|r
    .collect 204478,1 --Severed Gnoll Head (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Gnoll
    .mob Rot Hide Graverobber
    .train 403475,1
step << Warrior
    #season 2
    #loop
    .goto Tirisfal Glades,59.54,27.86,0
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    >>Tuez les |cRXP_ENEMY_Murlocs Aileron noir|r. Dépouillez-les pour leurs |cRXP_LOOT_Écailles|r et une |cRXP_LOOT_Tête de Murloc coupée|r
    .complete 368,1 --Vile Fin Scale (5)
    .collect 204477,1 --Severed Murloc Head (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 403475,1
step << Rogue
    #season 2
    #completewith MurlocVins
    >>Utilisez |T133644:0|t[Vol à la tire] et tuez les |cRXP_ENEMY_Murlocs Aileron noir|r pour la |T134241:0|t[|cRXP_LOOT_Clé de cache de l’épave|r]
    .collect 208007,1 --Shipwreck Cache Key (1)
    .train 400081,1
step << Rogue
    #season 2
    #completewith RuneofPrecision
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Murlocs Aileron noir|r et tuez-les. Dépouillez-les pour le |T134327:0|t[|cRXP_LOOT_Morceau inférieur droit de carte|r]
    .collect 208037,1 --Bottom-Right Map Piece (1)
    .train 400095,1
step
    #label MurlocVins
    #loop
    .goto Tirisfal Glades,59.54,27.86,0
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    >>Tuez les |cRXP_ENEMY_Murlocs Aileron noir|r. Dépouillez-les pour leurs |cRXP_LOOT_Écailles|r
    .complete 368,1 --Vile Fin Scale (5)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
step << Rogue
    #season 2
    #loop
    .goto Tirisfal Glades,59.54,27.86,0
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    >>Utilisez |T133644:0|t[Vol à la tire] et tuez les |cRXP_ENEMY_Murlocs Aileron noir|r pour la |T134241:0|t[|cRXP_LOOT_Clé de cache de l’épave|r]
    .collect 208007,1 --Shipwreck Cache Key (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 400081,1
step << Rogue
    #season 2
    .goto Tirisfal Glades,66.66,24.41
    >>Ouvrez la |cRXP_PICK_Cache de l’épave|r pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de précision|r]
    .collect 204174,1 --Rune of Precision (1)
    .train 400081,1
step << Rogue
    #season 2
    #label RuneofPrecision
    .train 400081 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de précision|r] |cRXP_WARN_pour apprendre|r |T135610:0|t[Entre les deux yeux]
    .use 204174
    .itemcount 204174,1
step << Rogue
    #season 2
    #loop
    .goto Tirisfal Glades,59.54,27.86,0
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Murlocs Aileron noir|r et tuez-les. Dépouillez-les pour le |T134327:0|t[|cRXP_LOOT_Morceau inférieur droit de carte|r]
    .collect 208037,1 --Bottom-Right Map Piece (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 400095,1
step << Rogue
    #season 2
    .use 208036 >>|cRXP_WARN_Utilisez les|r |T134327:0|t[|cRXP_LOOT_Morceaux de carte|r] |cRXP_WARN_pour créer la|r |T134269:0|t[|cRXP_LOOT_Carte au trésor de Tirisfal|r]
    .collect 208034,1 --Tirisfal Treasure Map (1)
    .train 400095,1
step
    #hardcore
    #completewith Brill3
    .subzone 159 >> Retournez à Brill
    .subzoneskip 159
step
    #softcore
    #completewith Brill3
    .goto Tirisfal Glades,64.50,29.41
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    >>|cRXP_WARN_Assurez-vous de mourir sur la flèche (ou à l'ouest de celle-ci)|r
step
    #label DoomedWeed
    #loop
    .goto Tirisfal Glades,57.71,48.96,0
    .goto Tirisfal Glades,58.29,49.80,30,0
    .goto Tirisfal Glades,57.71,48.96,30,0
    .goto Tirisfal Glades,59.26,46.73,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apprenti apothicaire Holland|r, il patrouille autour du cimetière
    .turnin 5482 >>Rendez la quête Herbe maléfique
    .target Junior Apothecary Holland
    .isQuestComplete 5482
step << Rogue
    #season 2
    .goto Tirisfal Glades,52.89,54.03
    .use 208034 >>|cRXP_WARN_Utilisez la|r |T134269:0|t[|cRXP_LOOT_Carte au trésor de Tirisfal|r] |cRXP_WARN_sous le pont|r
    >>Ouvrez le |cRXP_PICK_Trésor enfoui|r qui apparaît pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Tireur rapide|r]
    .collect 203991,1 --Rune of Quick Draw (1s)
    .train 400095,1
step << Rogue
    #season 2
    .train 400095 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Tireur rapide|r] |cRXP_WARN_pour apprendre|r |T134536:0|t[Tireur rapide]
    .use 203991
    .itemcount 203991,1
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Johaan|r, à |cRXP_FRIENDLY_Zygand|r et à |cRXP_FRIENDLY_Sevren|r
    .turnin 368 >>Rendez la quête Une Peste nouvelle
    .accept 369 >>Acceptez la quête Une Peste nouvelle
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.40
    .turnin 398 >>Rendez la quête On recherche: Œil-de-ver
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .turnin 358 >>Rendez la quête Les Profanateurs
    .accept 405 >>Acceptez la quête La Liche prodigue
    .accept 359 >>Acceptez la quête En mission pour les Réprouvés
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
step
    #xprate >1.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Johaan|r, à |cRXP_FRIENDLY_Zygand|r et à |cRXP_FRIENDLY_Sevren|r
    .turnin 368 >>Rendez la quête Une Peste nouvelle
    .accept 369 >>Acceptez la quête Une Peste nouvelle
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.40
    .turnin 398 >>Rendez la quête On recherche: Œil-de-ver
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .turnin 358 >>Rendez la quête Les Profanateurs
    .accept 405 >>Acceptez la quête La Liche prodigue << Mage/Warlock
    .accept 359 >>Acceptez la quête En mission pour les Réprouvés
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
step
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Achetez-lui une|r |T132891:0|t[Bobine de fil grossier] |cRXP_BUY_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman Farthing|r
    .accept 354 >>Acceptez la quête Morts dans la famille
    .accept 362 >>Acceptez la quête Les moulins hantés
    .target Coleman Farthing
step << !Mage !Warlock
    #xprate >1.49
    #optional
    #completewith AgamandStart
    .abandon 405 >> Abandonnez la quête La Liche prodigue
step
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Rendez la quête Le frisson de la mort
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beryl|r au deuxième étage
	.train 139 >> Apprenez vos sorts de classe
    .target Dark Cleric Beryl
    .xp <8,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cain|r au second étage
    .train 205 >> Apprenez vos sorts de classe
    .target Cain Firesong
    .xp <8,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à  |cRXP_FRIENDLY_Austil|r
    .train 284 >> Apprenez vos sorts de classe
    .target Austil de Mon
    .xp <8,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r au second étage
    .train 6760 >> Apprenez vos sorts de classe
    .target Marion Call
    .xp <8,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rupert|r
    .train 980 >> Apprenez vos sorts de classe
    .target Rupert Boch
    .xp <8,1
step << Rogue/Warrior
    .goto Tirisfal Glades,61.81,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Infirmière Neela|r
    >>|cRXP_WARN_Essayez d'en fabriquer pendant les temps d'attente, par exemple pour les Zeppelins|r
    .train 3273 >>Apprenez [Premiers soins]
    .target Nurse Neela
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
    .collect 2494,1,354,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith MillsOverun
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
    .collect 2488,1,354,1 --Collect Gladius (1)
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith MillsOverun
    +Équipez le [Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step
    #label Brill3
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Renee|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Delaniel|r << Mage/Priest
    >>|cRXP_BUY_Achetez-lui des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r <<Warrior/Rogue
    >>|cRXP_BUY_Achetez-lui du|r |T132815:0|t[Lait glacé] |cRXP_BUY_et des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r << Warlock
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 1179,20,426,1 << Mage/Priest --Ice Cold Milk (20)
    .collect 4605,20,426,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,10,426,1 << Warlock --Ice Cold Milk (10)
    .collect 4605,10,426,1 << Warlock --Red-speckled Mushroom (10)
    .money <0.025 << Warrior/Rogue
    .money <0.0375 << Mage/Priest/Warlock
    .target Innkeeper Renee
step << Rogue/Warrior
    #softcore
    .goto Tirisfal Glades,60.31,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eliza Callen|r
    .vendor >>Réparez votre arme
    .target Eliza Callen
step << Warrior
    #season 2
    #completewith AgamandStart
    >>Tuez les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour une |cRXP_LOOT_Tête de chauve-souris coupée|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #label AgamandStart
    .goto Tirisfal Glades,47.60,44.03,100,0
    .goto Tirisfal Glades,47.37,43.71
    .subzone 157 >> Voyagez vers le nord/ouest en direction des Moulins d'Agamand
    .isOnQuest 362
step
    #completewith ThurmanGregor
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
    #label MillsOverun
    #loop
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
step
    #xprate <1.5
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    >>Tuez les |cRXP_ENEMY_Soldats|r et les |cRXP_ENEMY_Ossomanciens|r. Dépouillez-les pour la |T134939:0|t[|cRXP_LOOT_Lettre de Thurman|r]
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >> Acceptez la quête Une lettre perdue
    .use 2839
    .mob Rattlecage Soldier
    .mob Darkeye Bonecaster
    .mob Cracked Skull Soldier
    .xp >9+3620,1
    .isOnQuest 375
--XX 880(426)+480(361, OPT)+880(354)+420(362)+700(375, OPT)
step
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    >>Tuez les |cRXP_ENEMY_Soldats|r et les |cRXP_ENEMY_Ossomanciens|r. Dépouillez-les pour la |T134939:0|t[|cRXP_LOOT_Lettre de Thurman|r]
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >> Acceptez la quête Une lettre perdue
    .use 2839
    .mob Rattlecage Soldier
    .mob Darkeye Bonecaster
    .mob Cracked Skull Soldier
    .xp >9+4320,1
    .isQuestTurnedIn 375
--XX 880(426)+480(361, OPT)+880(354)+420(362)+700(375, OPT)
step
    #xprate >1.49
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    >>Tuez les |cRXP_ENEMY_Soldats|r et les |cRXP_ENEMY_Ossomanciens|r. Dépouillez-les pour la |T134939:0|t[|cRXP_LOOT_Lettre de Thurman|r]
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >> Acceptez la quête Une lettre perdue
    .use 2839
    .mob Rattlecage Soldier
    .mob Darkeye Bonecaster
    .mob Cracked Skull Soldier
    .xp >9+2180,1
    .isOnQuest 375
--XX 880(426)+480(361, OPT)+880(354)+420(362)+700(375, OPT)
step
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    >>Tuez les |cRXP_ENEMY_Soldats|r et les |cRXP_ENEMY_Ossomanciens|r. Dépouillez-les pour la |T134939:0|t[|cRXP_LOOT_Lettre de Thurman|r]
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >> Acceptez la quête Une lettre perdue
    .use 2839
    .mob Rattlecage Soldier
    .mob Darkeye Bonecaster
    .mob Cracked Skull Soldier
    .xp >9+3230,1
    .isQuestTurnedIn 375
--XX 880(426)+480(361, OPT)+880(354)+420(362)+700(375, OPT)
step
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .xp 9+3620 >> Montez votre expérience jusqu'à 3620+/6500xp
    .itemcount 2839,<1 --A Letter to Yvette (0)
    .isOnQuest 375
step
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .xp 9+4320 >> Montez votre expérience jusqu'à 4320+/6500xp
    .itemcount 2839,<1 --A Letter to Yvette (0)
    .isQuestTurnedIn 375
step
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .xp 9+3840 >> Montez votre expérience jusqu'à 3840+/6500xp
    .itemcount 2839,1 --A Letter to Yvette (1)
    .isQuestTurnedIn 375
step
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .xp 9+3140 >> Montez votre expérience jusqu'à 3140+/6500xp
    .itemcount 2839,1 --A Letter to Yvette (1)
    .isOnQuest 375
step
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .xp 9+2180 >> Montez votre expérience jusqu'à 2180+/6500xp
    .itemcount 2839,<1 --A Letter to Yvette (0)
    .isOnQuest 375
step
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .xp 9+3230 >> Montez votre expérience jusqu'à 3230+/6500xp
    .itemcount 2839,<1 --A Letter to Yvette (0)
    .isQuestTurnedIn 375
step
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .xp 9+2510 >> Montez votre expérience jusqu'à 2510+/6500xp
    .itemcount 2839,1 --A Letter to Yvette (1)
    .isQuestTurnedIn 375
step
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .xp 9+1460 >> Montez votre expérience jusqu'à 1460+/6500xp
    .itemcount 2839,1 --A Letter to Yvette (1)
    .isOnQuest 375
step << Mage/Priest
    #season 2
    >>Tuez le |cRXP_ENEMY_Branchiar|r. Dépouillez-le pour les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : GDDOT EG IEVSIR|r] << Mage
    >>Tuez |cRXP_ENEMY_Branchiar|r. Dépouillez-le pour le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un noir dessein|r] << Priest
    >>|cRXP_WARN_Il s'agit d'un elite de niveau 7 qui n'est pas facile à tuer. Passez-le pour l'instant s'il est trop difficile|r
    .collect 203753,1 << Mage --Spell Notes: RING SEFF OSTROF (1)
    .collect 205940,1 << Priest --Memory of a Dark Purpose (1)
    .mob Gillgar
    .train 401765,1 << Mage
    .train 425216,1 << Priest
step << Mage
    #season 2
    .collect 211779,1 >>Vous avez besoin d'un |T135933:0|t[Charme de compréhension] acheté au |cRXP_FRIENDLY_Marchand de composants|r pour utiliser l'objet
    .train 401765 >>|cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : GDDOT EG IEVSIR|r] |cRXP_WARN_pour apprendre|r |T236227:0|t[Doigts de givre].
    .use 203753
    .itemcount 203753,1
step
    #hardcore
    #completewith FoodandWater2
    .subzone 159 >> Retournez à Brill
step
    #softcore
    #completewith FoodandWater2
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    .goto Tirisfal Glades,58.20,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r
    .turnin 426 >>Rendez la quête La chute des moulins
    .target Deathguard Dillinger
step
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Achetez-lui une|r |T132891:0|t[Bobine de fil grossier] |cRXP_BUY_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yvette|r et à |cRXP_FRIENDLY_Coleman|r
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
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman Farthing|r
    .turnin 354 >>Rendez la quête Morts dans la famille
    .turnin 362 >>Rendez la quête Les moulins hantés
    .accept 355 >>Acceptez la quête Parler à Sevren
    .target Coleman Farthing
step
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Rendez la quête Le frisson de la mort
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beryl|r au deuxième étage
	.trainer >> Apprenez vos sorts de classe
    .target Dark Cleric Beryl
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
    .trainer >> Apprenez vos sorts de classe
    .accept 1818 >> Acceptez la quête Parler à Dillinger
    .target Austil de Mon << Warrior
    .isQuestAvailable 1498
step << Warlock
    .goto Tirisfal Glades,61.62,52.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ageron|r à l'intérieur de l'auberge
    .accept 1478 >> Acceptez la quête Les invocations de Halgar
    .target Ageron Kargal
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rupert|r
    .train 707 >> Apprenez vos sorts de classe
    .target Rupert Boch
step << Rogue
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r à l'intérieur de l'auberge
    .trainer >> Apprenez vos sorts de classe
    .accept 1885 >>Acceptez la quête Mennet Carkad
    .target Marion Call
step << Mage
    .goto Tirisfal Glades,61.96,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cain|r à l'intérieur de l'auberge
    .accept 1881 >> Acceptez la quête Parler à Anastasia
    .target Cain Firesong
step
    #label FoodandWater2
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Renee|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Delaniel|r << Mage/Priest/Shaman
    >>|cRXP_BUY_Achetez-lui des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r <<Warrior/Rogue
    >>|cRXP_BUY_Achetez-lui du|r |T132815:0|t[Lait glacé] |cRXP_BUY_et des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r << Warlock
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 1179,20,370,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,370,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,370,1 << Warlock --Ice Cold Milk (15)
    .collect 4605,15,370,1 << Warlock --Red-speckled Mushroom (15)
    .money <0.075 << Warlock
    .money <0.05 << !Warlock
    .target Innkeeper Renee
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
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >> Rendez la quête Ulag le Fendeur
    .accept 1820 >> Acceptez la quête Parler à Coleman
    .target Deathguard Dillinger
step << Warlock
    #completewith next
    .goto Tirisfal Glades,61.80,65.06,20 >> Entrez dans Undercity
    .zoneskip Undercity
step << Warlock
    #completewith next
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Prenez l'ascenseur pour descendre dans Undercity
step << Warlock
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carendin|r dans le Quartier Magique
    .turnin 1478 >> Rendez la quête Les invocations de Halgar
    .accept 1473 >> Acceptez la quête La créature du Vide
step << Warlock
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
step << Rogue
    #season 2
    #completewith ScarletCrusade1
    >>Utilisez |T133644:0|t[Vol à la tire] sur le |cRXP_ENEMY_Capitaine Perrine|r pour une |T133385:0|t[|cRXP_LOOT_Chevalière de lieutenant écarlate|r]
    .collect 208085,1 --Scarlet Lieutenant Signet Ring (1)
    .mob Captain Perrine
    .train 400094,1
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
step << Rogue
    #season 2
    .goto Tirisfal Glades,51.17,67.81
    >>Utilisez |T133644:0|t[Vol à la tire] sur le |cRXP_ENEMY_Capitaine Perrine|r pour une |T133385:0|t[|cRXP_LOOT_Chevalière de lieutenant écarlate|r]
    .collect 208085,1 --Scarlet Lieutenant Signet Ring (1)
    .mob Captain Perrine
    .train 400094,1
step << Warlock
    .goto Tirisfal Glades,51.06,67.57
    >>Ramassez le |cRXP_PICK_Perrine's Chest|r sur le sol pour le [Grimoire d'Egalin]
    .complete 1473,1 --Egalin's Grimoire (1)
step
    #xprate <1.5
    #completewith UCHome
    .goto Undercity,16.51,42.76,35,0
    .goto Undercity,22.98,39.76,35,0
    .goto Undercity,24.93,32.54,35,0
    .goto Undercity,34.78,33.24,10,0
    .goto Undercity,40.83,34.08,10,0
    .goto Undercity,41.35,38.40,10,0
    .goto Undercity,45.25,39.20,10,0
    .goto Undercity,45.67,43.60,10,0
    .zone Undercity >> Retournez dans Fossoyeuse par les égoûts
    .zoneskip Undercity
step
    #xprate >1.49
    #ah << Priest
    #completewith LogoutSkip1
    .goto Undercity,16.51,42.76,35,0
    .goto Undercity,22.98,39.76,35,0
    .goto Undercity,24.93,32.54,35,0
    .goto Undercity,34.78,33.24,10,0
    .goto Undercity,40.83,34.08,10,0
    .goto Undercity,41.35,38.40,10,0
    .goto Undercity,45.25,39.20,10,0
    .goto Undercity,45.67,43.60,10,0
    .zone Undercity >> Retournez dans Fossoyeuse par les égoûts
    .zoneskip Undercity
--XX Priest skips on 1.5x unless they go for a Wand. No reason to go Undercity if skipping Lich quest and not setting hearth
step << Rogue
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Archibald|r au Quartier de la Guerre
    .train 201 >>Achetez la compétence pour porter des épées à une main
    .target Archibald
step << Warrior/Rogue
    .goto Undercity,56.06,37.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brom|r
    .train 2575 >> Apprenez [Minage]
    >>Ceci vous permettra de trouver des |cRXP_LOOT_[Rough Stones]|r sur les gisements pour fabriquer les [Pierre à aiguiser] (+2 dégâts aux armes pendant 30 minutes)
    .target Brom Killian
step << Warrior/Rogue
    .goto Undercity,56.72,36.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sarah|r
    >>|cRXP_BUY_Achetez une|r |T134708:0|t[Pioche de mineur] |cRXP_BUY_auprès de|r |cRXP_FRIENDLY_Sarah|r.
    .collect 2901,1,371,1 --Mining Pick (1)
    .target Sarah Killian
    .train 2575,3 --Mining Trained
 step << Warrior/Rogue
    .goto Undercity,60.17,29.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Basil Frye|r
    .train 2018 >> Apprenez [Forge]
    .target Basil Frye
    .train 2575,3 --Mining Trained
step
    #xprate >1.49
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commissaire-priseur Rhyker|r
    >>|cRXP_BUY_Achetez une|r |T135139:0|t[Baguette magique inférieure] |cRXP_BUY_à l'Hôtel des ventes|r << Priest
    >>|cRXP_BUY_Achetez une|r |T135139:0|t[Baguette magique inférieure] |cRXP_BUY_à l'Hôtel des ventes si vous le souhaitez|r << Mage/Warlock
    >>|cRXP_WARN_Si vous le faites et aviez gardez vos|r |T132889:0|t[Etoffe de lin] |cRXP_WARN_plus tôt, vous pouvez vendre votre|r |T132889:0|t[Etoffe de lin] |cRXP_WARN_à l'Hôtel des ventes|r << Priest
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    .collect 11287,1,435,1 << Priest/Mage/Warlock --Lesser Magic Wand (1)
    .target Auctioneer Rhyker
    .itemStat 18,QUALITY,<7 << Priest/Mage/Warlock
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3 << Priest/Mage/Warlock
--XX Intentional for priests on 1.5x xp to only do this if they don't have a lesser magic wand
step << !Priest
    #xprate >1.49
    #ah
    #optional
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commissaire-priseur Rhyker|r
    >>|cRXP_BUY_Achetez six|r |T134339:0|t[Coeurs de worg décolorés] |cRXP_BUY_à l'Hôtel des ventes|r
    >>|cRXP_WARN_Passez cette étape si vous voulez, c'est seulement un petit gain de temps|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .target Auctioneer Rhyker
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
step << Warrior
    #ssf
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Charles Seaton|r au Quartier des Voleurs
    >>|cRXP_BUY_Achetez une|r [Claymore] |cRXP_BUY_au marchand|r
    .collect 1198,1,371,1 --Collect Claymore (1)
    .money <0.2676
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #ah
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Charles Seaton|r au Quartier des Voleurs
    >>|cRXP_BUY_Achetez une|r [Claymore] |cRXP_BUY_au marchand|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 1198,1,371,1 --Collect Claymore (1)
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #optional
    #completewith LogoutSkip1
    +Équipez la [Claymore]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Rogue
    #ssf
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Charles Seaton|r au Quartier des Voleurs
    >>|cRXP_BUY_Achetez un|r [Coutelas] |cRXP_BUY_à Gunther|r
    .collect 851,1,371,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #ah
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Charles Seaton|r au Quartier des Voleurs
    >>|cRXP_BUY_Achetez un|r [Coutelas] |cRXP_BUY_à Gunther|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 851,1,371,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #optional
    #completewith LogoutSkip1
    +Équipez le [Coutelas]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    .goto Undercity,77.50,49.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nathaniel Steenwick|r dans le Quartier des voleurs
    >>|cRXP_BUY_Achetez-lui un|r |T135425:0|t[Couteau de lancer effilé] |cRXP_BUY_|r
    .collect 3107,200,371,1 --Keen Throwing Knife (200)
    .target Nathaniel Steenwick
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_Rappelez-vous d'équiper les|r |T135425:0|t[Couteaux de lancer effilé] |cRXP_WARN_lorsque vous passez au niveau 11|r
    .use 3107
    .itemcount 3107,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp >11,1
step << Rogue
    #optional
    #completewith LogoutSkip1
    +Équipez les [Couteau de lancer perçant]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Rogue
    .goto Undercity,83.52,69.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mennet Carkad|r
    .turnin 1885 >>Rendez la quête Mennet Carkad
    .accept 1886 >>Acceptez la quête Les nécrotraqueurs
    .target Mennet Carkad
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
step
    #xprate <1.5
    .goto Undercity,84.06,17.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bethor|r dans le Quartier magique
    .turnin 405 >>Rendez la quête La Liche prodigue
    .accept 357 >>Acceptez la quête Le nom de la Liche
    .target Bethor Iceshard
step << Mage/Warlock
    #xprate >1.49
    .goto Undercity,84.06,17.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bethor|r dans le Quartier magique
    .turnin 405 >>Rendez la quête La Liche prodigue
    .target Bethor Iceshard
step
    #xprate <1.5
    #label UCHome
    .goto Undercity,67.74,37.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Norman|r
    .home >> Liez votre Pierre de foyer à Fossoyeuse
    .target Innkeeper Norman
    .bindlocation 1497
step
    #optional
    #label LogoutSkip1
step << skip
    #xprate <1.5 << !Mage !Warlock
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Effectuez un Logout skip en positionnant votre personnage sur la partie la plus élevée de l'escalier le plus bas jusqu'à ce qu'il semble flotter, puis en vous déconnectant et en vous reconnectant|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_CLIQUEZ ICI pour un exemple vidéo|r
    >>|cRXP_WARN_Si vous n'arrivez pas à le faire, sortez simplement de Fossoyeuse normalement|r
step << skip -- !Mage !Warlock
    #xprate >1.49
    #ah << Priest
    .goto Undercity,61.10,54.11 << Priest
    .goto Undercity,78.03,50.36 << Warrior
    .goto Undercity,82.75,65.23 << Rogue
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Effectuez un Logout skip en sautant sur les tonneaux, puis en vous déconnectant et en vous reconnectant|r << Priest/Warrior
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Effectuez un Logout skip en sautant sur le broyeur du Chariot à viande, puis en vous déconnectant et en vous reconnectant|r << Rogue
    >>|cRXP_WARN_Si vous n'arrivez pas à le faire, sortez simplement de Fossoyeuse normalement|r
    .zoneskip Undercity,1
step
    #xprate <1.5 << Priest
    #completewith AtWarS
    .goto Tirisfal Glades,61.92,64.85
    .zone Tirisfal Glades >> Quittez Undercity
    .zoneskip Tirisfal Glades
step << Undead Rogue
    #sticky
    #completewith UnluckyRogue
    >>|cRXP_WARN_Si vous voyez|r |cRXP_FRIENDLY_Astor|r|cRXP_WARN_, parlez-lui et tuez-le. Dépouillez-le pour la lettre. Il patrouille la route entre Brill et le Sépulcre|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
    .isOnQuest 1886
step << Mage/Warlock
    #xprate >1.49
    #completewith AtWarS
    #optional
    .abandon 357 >>Abandonnez la quête Le nom de la Liche
step
    #optional
    .goto Tirisfal Glades,60.93,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler au |cRXP_FRIENDLY_Nécrogarde Burgess|r
    .turnin 374 >>Rendez la quête Preuves de la mort
    .target Deathguard Burgess
    .isQuestComplete 374
step
    #label AtWarS
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zygand|r
    .turnin 370 >>Rendez la quête En guerre avec la Croisade écarlate
    .accept 371 >>Acceptez la quête En guerre avec la Croisade écarlate
    .target Executor Zygand
step << Rogue
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    .use 208085 >>|cRXP_WARN_Utilisez la|r |T133385:0|t[|cRXP_LOOT_Chevalière de lieutenant écarlate|r] |cRXP_WARN_pour créer la|r |T134328:0|t[|cRXP_LOOT_Note de service écarlate urgente falsifiée|r]
    .collect 208086,1 --Forged Scarlet Memorandum (1)
    .train 400094,1
step << Rogue
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jamie Nore|r pour recevoir l' |T134419:0|t[|cRXP_FRIENDLY_Idole de mutilation|r]
    .collect 203990,1 --Rune of Mutilation (1)
    .target Jamie Nore
    .skipgossip
    .train 400094,1
step << Rogue
    #season 2
    .train 400094 >>|cRXP_WARN_Utilisez l'|r |T134419:0|t[|cRXP_FRIENDLY_Idole de mutilation|r] |cRXP_WARN_pour apprendre|r |T132304:0|t[Estropier]
    .use 203990
    .itemcount 203990,1
step
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Mme Winters|r
    >>|cRXP_BUY_Achetez-lui une|r |T133634:0|t[Petite sacoche marron] |cRXP_BUY_|r|cRXP_FRIENDLY_|r
    .collect 4496,1,356,1 --Small Brown Pouch (1)
    .target Mrs. Winters
    .money <0.05
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman Farthing|r
    .turnin 1820 >>Rendez la quête Parler à Coleman
    .target Coleman Farthing
step << Warrior
    #season 2
    #completewith UnluckyRogue
    >>Tuez les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour une |cRXP_LOOT_Tête de chauve-souris coupée|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #label UnluckyRogue
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Nécrogarde Linnea|r
    .turnin 359 >>Rendez la quête En mission pour les Réprouvés
    .accept 360 >>Acceptez la quête Retourner voir le Magistrat
    .accept 356 >>Acceptez la quête Patrouille d'arrière-garde
    .target Deathguard Linnea
step << Warrior
    #season 2
    #completewith ArriveBalnir
    >>Tuez les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour une |cRXP_LOOT_Tête de chauve-souris coupée|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #completewith ArriveBalnir
    >>Tuez les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #label ArriveBalnir
    .goto Tirisfal Glades,76.51,61.77
    .subzone 165 >>Allez à la Ferme des Balnir
    .isOnQuest 356
step << Mage
    #season 2
    #completewith HorrorsandSpirits
    >>Lancez |T136071:0|t[Métamorphose] sur les |cRXP_ENEMY_Melons étranges|r
    >>Ramassez les |T134332:0|t|cRXP_LOOT_[Notes de l’apothicaire]|r par terre
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
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
step << Mage
    #season 2
    #loop
    .goto Tirisfal Glades,76.51,61.77,0
    .goto Tirisfal Glades,75.12,61.49,20,0
    .goto Tirisfal Glades,76.51,61.77,20,0
    .goto Tirisfal Glades,76.04,59.31,20,0
    >>Lancez |T136071:0|t[Métamorphose] sur les |cRXP_ENEMY_Melons étranges|r
    >>Ramassez les |T134332:0|t|cRXP_LOOT_[Notes de l’apothicaire]|r par terre
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step << Mage
    #season 2
    >>|cRXP_WARN_Utilisez les|r |T134332:0|t|cRXP_LOOT_[Notes de l’apothicaire]|r |cRXP_WARN_pour créer les|r |T134332:0|t|cRXP_LOOT_[Notes de sort : Illumination]|r
    .collect 203749,1 --Spell Notes: Enlightenment (1)
    .use 208183 --Apothecary Notes
    .train 415942,1
    .itemcount 208183,6
step << Mage
    #season 2
    .train 415942 >>|cRXP_WARN_Utilisez les|r |T134332:0|t|cRXP_LOOT_[Notes de sort : Illumination]|r |cRXP_WARN_pour apprendre|r |T133815:0|t[Gravure de plastron (Illumination)]
    .use 203749
    .itemcount 203749,1 --Spell Notes: Enlightenment (1)
step
    #sticky
    #label Friars
    #loop
    #optional
    .goto Tirisfal Glades,80.95,57.21,0
    .goto Tirisfal Glades,77.14,54.92,0
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
    .complete 371,2 --Scarlet Friar (5)
    .complete 374,1 --Scarlet Insignia Ring (10)
    .disablecheckbox
    .mob Scarlet Friar
    .mob Scarlet Zealot
    .isOnQuest 374
step
    #loop
    #sticky
    #requires Friars
    #label Friars2
    .goto Tirisfal Glades,80.95,57.21,0
    .goto Tirisfal Glades,77.14,54.92,0
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
    >>Tuez les |cRXP_ENEMY_Frères écarlates|r
    .complete 371,2 --Scarlet Friar (5)
    .mob Scarlet Friar
    .isQuestTurnedIn 374
step
    .goto Tirisfal Glades,78.82,56.14
    >>Tuez le |cRXP_ENEMY_Capitaine Vachon|r à l'intérieur de la tour
    .complete 371,1 --Captain Vachon (1)
    .mob Captain Vachon
step
    #xprate >1.49
    #requires Friars2
    #loop
    #label FinishRings
    .goto Tirisfal Glades,80.95,57.21,0
    .goto Tirisfal Glades,77.14,54.92,0
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
step << Priest
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,80.95,57.21,0
    .goto Tirisfal Glades,77.14,54.92,0
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
    >>|cRXP_WARN_Collectez 3 stacks d'|r |T132889:0|t[Etoffe de lin] |cRXP_WARN_pour votre Baguette magique inférieure. C'est la dernière chance d'en obtenir avant la Forêt des Pins-Argentés|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Warrior
    #season 2
    #completewith ViciousVenom
    >>Tuez les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour une |cRXP_LOOT_Tête de chauve-souris coupée|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #completewith ViciousVenom
    >>Tuez les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #label ViciousVenom
    #requires Friars2
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
step << Warrior
    #season 2
    #xprate >1.49
    #optional
    #completewith next
    >>Tuez les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour une |cRXP_LOOT_Tête de chauve-souris coupée|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #xprate >1.49
    #loop
    .goto Tirisfal Glades,83.59,43.84,0
    .goto Tirisfal Glades,72.33,33.01,0
    .goto Tirisfal Glades,83.59,43.84,70,0
    .goto Tirisfal Glades,80.77,46.40,70,0
    .goto Tirisfal Glades,75.86,46.02,70,0
    .goto Tirisfal Glades,73.10,40.71,70,0
    .goto Tirisfal Glades,72.33,33.01,70,0
    .goto Tirisfal Glades,68.69,34.33,70,0
    >>Tuez les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step << Warrior
    #season 2
    #xprate >1.49
    #loop
    .goto Tirisfal Glades,83.59,43.84,0
    .goto Tirisfal Glades,72.33,33.01,0
    .goto Tirisfal Glades,83.59,43.84,70,0
    .goto Tirisfal Glades,80.77,46.40,70,0
    .goto Tirisfal Glades,75.86,46.02,70,0
    .goto Tirisfal Glades,73.10,40.71,70,0
    .goto Tirisfal Glades,72.33,33.01,70,0
    .goto Tirisfal Glades,68.69,34.33,70,0
    >>Tuez les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour une |cRXP_LOOT_Tête de chauve-souris coupée|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #xprate >1.49
    .xp 11+2950 >> Montez votre expérience jusqu'à 2950+/8800xp
    .isOnQuest 374
    .isOnQuest 375
--XX 220 (369)+840 (371)+390 (360)+90 (355)+160 (407)+875 (492) = 2575 -> 3860
--XX +625 (374 OPT)+700 (375 OPT) = 3900 -> 5850
--XX +625 (374 OPT) = 3200 -> 4800
--XX +700 (375 OPT) = 3275 -> 4910
step
    #xprate >1.49
    #optional
    .xp 11+3890 >> Montez votre expérience jusqu'à 3890+/8800xp
    .isQuestTurnedIn 374
    .isOnQuest 375
step
    #xprate >1.49
    #optional
    .xp 11+4000 >> Montez votre expérience jusqu'à 4000+/8800xp
    .isOnQuest 374
    .isQuestTurnedIn 375
step
    #xprate >1.49
    #optional
    .xp 11+4940 >> Montez votre expérience jusqu'à 4940+/8800xp
    .isQuestTurnedIn 374
    .isQuestTurnedIn 375
step
    #xprate >1.49
    #completewith ANewPlagueFinal
    .hs >> Utilisez votre Pierre de foyer pour revenir à Brill
    .subzoneskip 159
    .bindlocation 2119,1
    .cooldown item,6948,>0,1
step
    #xprate >1.49
    #completewith ANewPlagueFinal
    .subzone 159 >> Retournez à Brill
    .subzoneskip 159
    .cooldown item,6948,<0
step
    #xprate <1.5
    .goto Tirisfal Glades,67.97,42.09
    >>Ramassez les |cRXP_PICK_Livres de Gunther|r pour |cRXP_LOOT_Le grimoire de la liche|r sur l'île dans le Lac Étincelant
    .complete 357,1 --The Lich's Spellbook (1)
step
    #xprate <1.5
    #hardcore
    #completewith ANewPlagueFinal
    .subzone 159 >> Retournez à Brill
    .subzoneskip 159
step
    #xprate <1.5
    #softcore
    #completewith ANewPlagueFinal
    .goto Tirisfal Glades,66.60,44.95
    .deathskip >> Mourez |cRXP_WARN_SUR L'ÎLE LA PLUS PETITE|r et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    .goto Tirisfal Glades,59.45,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Johaan|r
    .turnin 369 >>Rendez la quête Une Peste nouvelle
    .accept 492 >>Acceptez la quête Une Peste nouvelle
    .accept 445 >>Acceptez la quête Livraison dans la forêt des Pins argentés
    .target Apothecary Johaan
step << skip
    #phase 3-6
    .goto Tirisfal Glades,59.45,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Johaan|r
    .turnin 369 >>Rendez la quête Une Peste nouvelle
    .accept 492 >>Acceptez la quête Une Peste nouvelle
    --.accept 445 >>Accept Delivery to Silverpine Forest
    .target Apothecary Johaan
step
    #xprate <1.5
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zygand|r
    .turnin 371 >>Rendez la quête En guerre avec la Croisade écarlate
    .accept 372 >>Acceptez la quête En guerre avec la Croisade écarlate
    .target Executor Zygand
step
    #xprate >1.49
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zygand|r
    .turnin 371 >>Rendez la quête En guerre avec la Croisade écarlate
    .target Executor Zygand
step
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Magistrat Sevren|r
    .turnin 360 >>Rendez la quête Retourner voir le Magistrat
    .turnin 355 >>Rendez la quête Parler à Sevren
    .target Magistrate Sevren
step
    #xprate >1.49
    #optional
    #completewith ANewPlagueFinal
    .abandon 372 >> Abandonnez la quête En guerre avec la Croisade écarlate
step
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,60.93,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler au |cRXP_FRIENDLY_Nécrogarde Burgess|r
    .turnin 374 >>Rendez la quête Preuves de la mort
    .target Deathguard Burgess
    .isQuestComplete 374
step
    #xprate >1.49
    .goto Tirisfal Glades,60.93,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler au |cRXP_FRIENDLY_Nécrogarde Burgess|r
    .turnin 374 >>Rendez la quête Preuves de la mort
    .target Deathguard Burgess
step
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Achetez-lui une|r |T132891:0|t[Bobine de fil grossier] |cRXP_BUY_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    #xprate >1.49
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Achetez-lui une|r |T132891:0|t[Bobine de fil grossier] |cRXP_BUY_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .isQuestAvailable 375
step
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Mme Winters|r
    >>|cRXP_BUY_Achetez-lui une|r |T133634:0|t[Petite sacoche marron] |cRXP_BUY_|r|cRXP_FRIENDLY_|r
    .collect 4496,1,356,1 --Small Brown Pouch (1)
    .target Mrs. Winters
    .money <0.05
step
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Rendez la quête Le frisson de la mort
    .target Gretchen Dedmar
    .isQuestComplete 375
step
    #xprate >1.49
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Rendez la quête Le frisson de la mort
    .target Gretchen Dedmar
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Renee|r
	.vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << Rogue/Warrior
    .target Innkeeper Renee
step << Warrior
    #season 2
    .goto Tirisfal Glades,61.73,51.91
    .gossipoption 110750 >>Parlez à |cRXP_FRIENDLY_Penny|r
    .target Penny Hawkins
    .train 425447,1
step
    #label ANewPlagueFinal
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Zélote écarlate capturé|r et au |cRXP_FRIENDLY_Montagnard capturé|r en bas des escaliers au fond de l'auberge
    .turnin 407 >>Rendez la quête Les champs du Chagrin
    .goto Tirisfal Glades,61.97,51.29
    .target +Captured Scarlet Zealot
    .turnin 492 >> Rendez la quête Une Peste nouvelle
    .goto Tirisfal Glades,61.94,51.40
    .target +Captured Mountaineer
step << Warrior
    #season 2
    .goto Tirisfal Glades,61.72,51.72
    .gossipoption 109084 >>Parlez à |cRXP_FRIENDLY_Coeurbleu|r (en bas) dans l'auberge
    .target Blueheart
    .train 425447,1
step << Warrior
    #season 2
    .goto Tirisfal Glades,61.72,51.91
    >>Tuez |cRXP_ENEMY_Coeurbleu|r, puis parlez à |cRXP_FRIENDLY_Penny|r en haut des escaliers
    .gossipoption 110751 >>Recevez auprès d'elle la |T134419:0|t[|cRXP_FRIENDLY_Rune d’assaut frénétique|r] 
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Netali
    .mob Blueheart
    .train 425447,1
    .skipgossip
step << Warrior
    #season 2
    .train 425447 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d'Assaut frénétique|r]
    .use 204716
    .itemcount 204716,1

--XX Start of <1.5x section (undercity hs)


step
    #xprate <1.5
    #completewith UndercityLS2
    .hs >> Utilisez votre Pierre de foyer pour revenir à Fossoyeuse
    .cooldown item,6948,>0,1
    .bindlocation 1497,1
    .zoneskip Undercity
step
    #xprate <1.5
    #completewith UndercityLS2
    .zone Undercity >>Voyagez à Fossoyeuse
    .cooldown item,6948,<0
step
    #xprate <1.5
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commissaire-priseur Rhyker|r
    >>|cRXP_BUY_Achetez six|r |T134339:0|t[Coeurs de worg décolorés] |cRXP_BUY_à l'Hôtel des ventes|r
    >>|cRXP_WARN_Passez cette étape si vous voulez, c'est seulement un petit gain de temps|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .target Auctioneer Rhyker
step << Mage
    #xprate <1.5
    .goto Undercity,85.12,10.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anastasia|r au Quartier Magique
    .turnin 1882 >>Rendez la quête La ferme des Balnir
    .target Anastasia Hartwell
step
    #optional << Rogue
    #xprate <1.5
    .goto Undercity,84.06,17.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bethor|r
    .turnin 357 >>Rendez la quête Le nom de la Liche
    .accept 366 >>Acceptez la quête Ramener le livre
    .target Bethor Iceshard
    .isQuestComplete 1886 << Rogue
step << Rogue
    #ssf
    #xprate <1.5
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Charles Seaton|r au Quartier des Voleurs
    >>|cRXP_BUY_Achetez un|r [Coutelas] |cRXP_BUY_à Gunther|r
    .collect 851,1,372,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #ah
    #xprate <1.5
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Charles Seaton|r au Quartier des Voleurs
    >>|cRXP_BUY_Achetez-lui un|r |T135346:0|t[Coutelas] |cRXP_BUY_|r
    >>|cRXP_WARN_Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse|r
    .collect 851,1,372,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #xprate <1.5
    #optional
    #completewith CaptainMelrache
    +Équipez le [Coutelas]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Warrior
    #ssf
    #xprate <1.5
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Charles Seaton|r au Quartier des Voleurs
    >>|cRXP_BUY_Achetez une|r [Claymore] |cRXP_BUY_au marchand|r
    .collect 1198,1,372,1 --Collect Claymore (1)
    .money <0.2950
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #ah
    #xprate <1.5
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Charles Seaton|r au Quartier des Voleurs
    >>|cRXP_BUY_Achetez une|r [Claymore] |cRXP_BUY_au marchand|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 1198,1,372,1 --Collect Claymore (1)
    .money <0.2950
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #xprate <1.5
    #optional
    #completewith CaptainMelrache
    +Équipez la [Claymore]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Rogue
    #xprate <1.5
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mennet Carkad|r
    .turnin 1886 >>Rendez la quête Les nécrotraqueurs
    .target Mennet Carkad
    .isQuestComplete 1886
step << Rogue
    #xprate <1.5
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mennet Carkad|r
    .accept 1898 >>Acceptez la quête Les nécrotraqueurs
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Rogue
    #xprate <1.5
    .goto Undercity,54.84,76.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Andron Gant|r
    .turnin 1898 >>Rendez la quête Les nécrotraqueurs
    .accept 1899 >>Acceptez la quête Les nécrotraqueurs
    .target Andron Gant
    .isQuestTurnedIn 1886
step << Rogue
    #xprate <1.5
    .goto Undercity,55.43,76.87
    >>Ramassez les |cRXP_PICK_Livres d'Andron|r derrière |cRXP_FRIENDLY_Andron|r
    .complete 1899,1 --Andron's Ledger (1)
    .isQuestTurnedIn 1886
step << Rogue
    #xprate <1.5
    .goto Undercity,83.53,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mennet Carkad|r
    .turnin 1899 >>Rendez la quête Les nécrotraqueurs
    .accept 1978 >>Acceptez la quête Les nécrotraqueurs
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Rogue
    #xprate <1.5
    .goto Tirisfal Glades,58.86,78.76,40,0
    .goto Tirisfal Glades,59.75,84.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Varimathras|r
    .turnin 1978 >>Rendez la quête Les nécrotraqueurs
    .target Varimathras
    .isQuestTurnedIn 1886
step << skip --Rogue
    #xprate <1.5
    #optional
    .goto Undercity,55.22,90.88
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Effectuez un Logout skip en positionnant votre personnage au bord du cercle jusqu'à ce qu'il semble flotter, puis en vous déconnectant et en vous reconnectant|r
	.link https://www.youtube.com/watch?v=jj85AXyF1XE >> |cRXP_WARN_CLIQUEZ ICI pour un exemple vidéo|r
    >>|cRXP_WARN_Si vous n'arrivez pas à le faire, sortez simplement de Fossoyeuse normalement|r
    .isQuestTurnedIn 1886
step << Rogue
    #xprate <1.5
    .goto Undercity,84.06,17.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bethor|r
    .turnin 357 >>Rendez la quête Le nom de la Liche
    .accept 366 >>Acceptez la quête Ramener le livre
    .target Bethor Iceshard
    .isOnQuest 1886
step << skip
    #xprate <1.5
    #label UndercityLS2
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Effectuez un Logout skip en positionnant votre personnage sur la partie la plus élevée de l'escalier le plus bas jusqu'à ce qu'il semble flotter, puis en vous déconnectant et en vous reconnectant|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_CLIQUEZ ICI pour un exemple vidéo|r
    >>|cRXP_WARN_Si vous n'arrivez pas à le faire, sortez simplement de Fossoyeuse normalement|r
    .zoneskip Undercity,1
    .isOnQuest 1886 << Rogue
step
    #xprate <1.5
    #completewith next
    .goto Tirisfal Glades,61.92,64.85
    .zone Tirisfal Glades >> Quittez Undercity
    .zoneskip Tirisfal Glades
step
    #xprate <1.5
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Nécrogarde Linnea|r
    .turnin 356 >>Rendez la quête Patrouille d'arrière-garde
    .target Deathguard Linnea
step
    #xprate <1.5
    #label CaptainMelrache
    .goto Tirisfal Glades,79.52,25.14
    >>Tuez le |cRXP_ENEMY_Capitaine Melrache|r et ses |cRXP_ENEMY_Gardes du corps écarlates|r dans la tour. Dépouillez-les pour leur |cRXP_LOOT_Anneaux de la Croisade écarlate|r
    >>|cRXP_WARN_Tuez des mobs sur la route|r << Warrior/Mage
    .complete 372,1 --Captain Melrache (1)
    .mob +Captain Melrache
    .complete 372,2 --Scarlet Bodyguard (2)
    .mob +Scarlet Bodyguard
    .complete 374,1 --Scarlet Insignia Ring (10)
    .disablecheckbox
step
    #xprate <1.5
    #label FinishRings
    #loop
    .goto Tirisfal Glades,79.04,28.54,0
    .goto Tirisfal Glades,79.36,26.21,40,0
    .goto Tirisfal Glades,79.04,28.54,40,0
    .goto Tirisfal Glades,78.92,31.42,40,0
    .goto Tirisfal Glades,77.89,35.49,40,0
    .goto Tirisfal Glades,78.65,36.09,40,0
    >>Terminez de récolter les |cRXP_LOOT_Anneaux de la Croisade écarlate|r
    .complete 374,1 --Scarlet Insignia Ring (10)
step << Priest
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,79.04,28.54,0
    .goto Tirisfal Glades,79.36,26.21,40,0
    .goto Tirisfal Glades,79.04,28.54,40,0
    .goto Tirisfal Glades,78.92,31.42,40,0
    .goto Tirisfal Glades,77.89,35.49,40,0
    .goto Tirisfal Glades,78.65,36.09,40,0
    >>|cRXP_WARN_Collectez 3 stacks d'|r |T132889:0|t[Etoffe de lin] |cRXP_WARN_pour votre Baguette magique inférieure. C'est la dernière chance d'en obtenir avant la Forêt des Pins-Argentés|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Warrior
    #xprate <1.5
    #season 2
    #completewith next
    >>Tuez les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour une |cRXP_LOOT_Tête de chauve-souris coupée|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #xprate <1.5
    #loop
    .goto Tirisfal Glades,72.15,33.17,0
    .goto Tirisfal Glades,73.78,32.71,50,0
    .goto Tirisfal Glades,72.15,33.17,50,0
    .goto Tirisfal Glades,70.13,34.46,50,0
    .goto Tirisfal Glades,67.29,34.92,50,0
    .goto Tirisfal Glades,66.71,37.87,50,0
    .goto Tirisfal Glades,73.78,32.71,50,0
    >>Terminez de tuer les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step << Warrior
    #xprate <1.5
    #season 2
    #loop
    .goto Tirisfal Glades,72.15,33.17,0
    .goto Tirisfal Glades,73.78,32.71,50,0
    .goto Tirisfal Glades,72.15,33.17,50,0
    .goto Tirisfal Glades,70.13,34.46,50,0
    .goto Tirisfal Glades,67.29,34.92,50,0
    .goto Tirisfal Glades,66.71,37.87,50,0
    .goto Tirisfal Glades,73.78,32.71,50,0
    >>Tuez les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour une |cRXP_LOOT_Tête de chauve-souris coupée|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #xprate <1.5
    .goto Tirisfal Glades,68.19,41.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gunther|r
    .turnin 366 >>Rendez la quête Ramener le livre
    .accept 409 >>Acceptez la quête Prouver l'allégeance
    .target Gunther Arcanus
step
    #xprate <1.5
    #optional
    #label CandleBeckoning
    #completewith Nefara
    .goto Tirisfal Glades,68.16,42.01
    >>Ouvrez la |cRXP_PICK_Caisse de bougies|r au sol. Dépouillez-la pour la |cRXP_LOOT_Bougie de signal|r
    .collect 3080,1,409,1 --Collect Candle of Beckoning (1)
    .isOnQuest 409
step
    #xprate <1.5
    #optional
    #requires CandleBeckoning
    #completewith next
    .goto Tirisfal Glades,66.64,44.89
    +Cliquez sur la |cRXP_PICK_Table de dîner de Lillith|r pour faire apparaître |cRXP_ENEMY_Nefara|r
    .isOnQuest 409
step
    #xprate <1.5
    #label Nefara
    .goto Tirisfal Glades,66.70,45.05
    >>Tuez |cRXP_ENEMY_Lillith Nefara|r
    .complete 409,1 --Lillith Nefara (1)
    .target Lillith Nefara
step
    #xprate <1.5
    .goto Tirisfal Glades,68.20,41.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gunther|r
    .turnin 409 >>Rendez la quête Prouver l'allégeance
    .accept 411 >>Acceptez la quête Le Retour de la Liche Prodigue
    .target Gunther Arcanus
step
    #xprate <1.5
    .xp 11+4900 >> Montez votre expérience jusqu'à 4900+/8800xp
    .isOnQuest 374
    .isOnQuest 375
--XX 220 (369)+840 (371)+390 (360)+90 (355)+160 (407)+875 (492) = 2575
--XX +625 (374 OPT)+700 (375 OPT) = 3900
--XX +625 (374 OPT) = 3200
--XX +700 (375 OPT) = 3275
--XX moved xpgate to after turnin so people don't turn in whilst grinding
step
    #xprate <1.5
    #optional
    .xp 11+5525 >> Montez votre expérience jusqu'à 5525+/8800xp
    .isQuestTurnedIn 374
    .isOnQuest 375
step
    #xprate <1.5
    #optional
    .xp 11+5600 >> Montez votre expérience jusqu'à 5600+/8800xp
    .isOnQuest 374
    .isQuestTurnedIn 375
step
    #xprate <1.5
    #optional
    .xp 11+6225 >> Montez votre expérience jusqu'à 6225+/8800xp
    .isQuestTurnedIn 374
    .isQuestTurnedIn 375
step
    #xprate <1.5
    #hardcore
    #completewith CrusadewarWon
    .subzone 159 >> Retournez à Brill
    .subzoneskip 159
step
    #xprate <1.5
    #softcore
    #completewith CrusadewarWon
    .goto Tirisfal Glades,64.40,42.65
    .deathskip >> Nagez vers l'ouest, laissez-vous mourir en affrontant des mobs et réapparaissez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    #xprate <1.5
    #label CrusadewarWon
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zygand|r
    .turnin 372 >>Rendez la quête En guerre avec la Croisade écarlate
    .target Executor Zygand
step
    #xprate <1.5
    .goto Tirisfal Glades,60.93,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler au |cRXP_FRIENDLY_Nécrogarde Burgess|r
    .turnin 374 >>Rendez la quête Preuves de la mort
    .target Deathguard Burgess
step
    #xprate <1.5
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Achetez-lui une|r |T132891:0|t[Bobine de fil grossier] |cRXP_BUY_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .isQuestAvailable 375
step
    #xprate <1.5
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Rendez la quête Le frisson de la mort
    .target Gretchen Dedmar

    --XX End of <1.5x section



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
step << Rogue
    #completewith Entersilverpine
    >>|cRXP_WARN_Si vous voyez|r |cRXP_FRIENDLY_Astor|r|cRXP_WARN_, parlez-lui et tuez-le. Dépouillez-le pour la lettre. Il patrouille la route entre Brill et le Sépulcre|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
step
    #xprate >1.49
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Nécrogarde Linnea|r
    .turnin 356 >>Rendez la quête Patrouille d'arrière-garde
    .target Deathguard Linnea

--XX Optional Undercity Section Start: If Priest needs wand, Rogue/Warrior needs vendor wep



step << Priest/Rogue/Warrior
    #optional
    #completewith LesserMagicWand << Priest
    #completewith RogueCutlass << Rogue
    #completewith WarriorClaymore << Warrior
    .goto Tirisfal Glades,61.80,65.06,20 >> Entrez dans Undercity
    .zoneskip Undercity
step << Priest/Rogue/Warrior
    #optional
    #completewith LesserMagicWand << Priest
    #completewith RogueCutlass << Rogue
    #completewith WarriorClaymore << Warrior
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Prenez l'ascenseur pour descendre dans Undercity
step << Priest
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commissaire-priseur Rhyker|r
    >>|cRXP_BUY_Achetez une|r |T135139:0|t[Baguette magique inférieure] |cRXP_BUY_à l'Hôtel des ventes|r
    >>|cRXP_WARN_Si vous le faites et aviez gardez vos|r |T132889:0|t[Etoffe de lin] |cRXP_WARN_plus tôt, vous pouvez vendre votre|r |T132889:0|t[Etoffe de lin] |cRXP_WARN_à l'Hôtel des ventes|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    .collect 11287,1,435,1 --Lesser Magic Wand (1)
    .target Auctioneer Rhyker
    .itemStat 18,QUALITY,<7 << Priest/Mage/Warlock
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3 << Priest/Mage/Warlock
--XX Intentional for priests on 1.5x xp to only do this if they don't have a lesser magic wand
step << Rogue
    #ssf
    #optional
    #label RogueCutlass
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler à |cRXP_FRIENDLY_Louis Warren|r dans le Quartier des Marchands
    >>|cRXP_BUY_Achetez un|r [Coutelas] |cRXP_BUY_à Gunther|r
    .collect 851,1,435,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
step << Rogue
    #ah
    #optional
    #label RogueCutlass
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler à |cRXP_FRIENDLY_Louis Warren|r dans le Quartier des Marchands
    >>|cRXP_BUY_Achetez un|r [Coutelas] |cRXP_BUY_à Gunther|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 851,1,435,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
step << Rogue
    #optional
    #completewith Entersilverpine
    +Équipez le [Coutelas]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Warrior
    #ssf
    #optional
    #label WarriorClaymore
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler à |cRXP_FRIENDLY_Louis Warren|r dans le Quartier des Marchands
    >>|cRXP_BUY_Achetez une|r [Claymore] |cRXP_BUY_au marchand|r
    .collect 1198,1,435,1 --Collect Claymore (1)
    .money <0.2950
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Louis Warren
step << Warrior
    #ah
    #optional
    #label WarriorClaymore
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler à |cRXP_FRIENDLY_Louis Warren|r dans le Quartier des Marchands
    >>|cRXP_BUY_Achetez une|r [Claymore] |cRXP_BUY_au marchand|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 1198,1,435,1 --Collect Claymore (1)
    .money <0.2950
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Louis Warren
step << Warrior
    #optional
    #completewith Entersilverpine
    +Équipez la [Claymore]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << skip --Warrior/Rogue
    #xprate >1.49
    #season 0,1 << Warrior
    #optional
    #label LogoutSkip3
    .goto Undercity,61.10,54.11
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Effectuez un Logout skip en sautant sur les tonneaux, puis en vous déconnectant et en vous reconnectant|r
    >>|cRXP_WARN_Si vous n'arrivez pas à le faire, sortez simplement de Fossoyeuse normalement|r
    .zoneskip Undercity,1
    .itemcount 7231,<1 << Rogue --Astor's Letter of Introduction (0)
step << Warrior
    #season 2
    #completewith next
    #optional
    .goto 1458,54.383,73.014,50,0
    .goto 1458,52.837,77.725,20,0
    .goto 1458,52.275,79.254,15,0
    .goto 1458,51.279,79.923,15,0
    .goto 1458,49.693,78.903,15,0
    .goto 1458,47.951,76.171,15,0
    .goto Undercity,48.03,70.30,12 >> Voyagez vers |cRXP_FRIENDLY_Dorac|r dans l'Apothecarium
    .train 403475,1
step << Warrior
    #season 2
    .goto Undercity,48.03,70.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dorac Sépulcre|r dans Fossoyeuse
    >>Rendez les |cRXP_LOOT_Têtes|r que vous avez rassemblés en échange des |T134455:0|t[Fragments de rune]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Dorac Graves
    .train 403475,1
    .zoneskip Undercity,1
step << Warrior
    #season 2
    #optional
    .use 204688 >>|cRXP_WARN_Utilisez les|r |T134455:0|t[Fragments de rune] |cRXP_WARN_pour créer|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Dévastation|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
    .zoneskip Undercity,1
step << Warrior
    #season 2
    .train 403475 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Dévastation|r]
    .use 204703
    .itemcount 204703,1
    .zoneskip Undercity,1
step << skip --Warrior
    #xprate >1.49
    #season 2
    .goto 1458,48.906,70.156
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Effectuez un Logout skip en sautant sur l'abdomen de l'abomination, puis en vous déconnectant et en vous reconnectant|r
    >>|cRXP_WARN_Si vous n'arrivez pas à le faire, sortez simplement de Fossoyeuse normalement|r
    .zoneskip Undercity,1
step << Priest
    #optional
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5658 >> Rendez la quête Toucher de faiblesse
    .target Aelthalyste
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
    .train 2652,1 --Touch of Weakness not trained
step << Rogue/Warrior/Priest
    #xprate <1.5
    #optional
    .goto Undercity,84.06,17.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bethor|r
    .turnin 411 >>Rendez la quête Le Retour de la Liche Prodigue
    .target Bethor Iceshard
    .zoneskip Undercity,1
step << skip --Rogue/Warrior
    #xprate <1.5
    #optional
    #label UndercityLS3
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Effectuez un Logout skip en positionnant votre personnage sur la partie la plus élevée de l'escalier le plus bas jusqu'à ce qu'il semble flotter, puis en vous déconnectant et en vous reconnectant|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_CLIQUEZ ICI pour un exemple vidéo|r
    >>|cRXP_WARN_Si vous n'arrivez pas à le faire, sortez simplement de Fossoyeuse normalement|r
    .zoneskip Undercity,1
    .itemcount 7231,<1 << Rogue --Astor's Letter of Introduction (0)
--XX Priests only go Undercity if they need to make/buy a Lesser Magic Wand (still midway through the steps of doing so)
--XX If rogues haven't killed Astor yet, they logout skip early before doing Rogue quest turnins
step << Priest
    #optional
    .goto Undercity,70.06,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Victor|r
    .train 3908 >> Apprenez |T136249:0|t[Couture]
    .target Victor Ward
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto Undercity,70.76,30.67
    >>|cRXP_WARN_Transformez toutes vos|r |T132889:0|t[Etoffe de lin] |cRXP_WARN_en|r |T132890:0|t[Rouleaux d'étoffe de lin]
    .collect 2996,30,435,1 --Bolt of Linen Cloth (30)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto Undercity,70.06,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Victor|r
    .train 7623 >> Apprenez |T132662:0|t[Robe marron en lin]
    .target Victor Ward
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto Undercity,70.57,30.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Millie Gregorian|r
    >>|cRXP_BUY_Achetez-lui des|r |T132891:0|t[Bobines de fil grossier] |cRXP_BUY_|r
    .collect 2320,30,435,1 --Coarse Thread (30)
    .target Millie Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    >>|cRXP_WARN_Fabriquez autant de|r |T132662:0|t[Robes marron en lin] |cRXP_WARN_que possible|r
    .collect 6238,9,398,1 --Brown Linen Robe(9)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto Undercity,62.47,61.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lavinia Crowe|r
    .train 7411 >> Apprenez |T136244:0|t[Enchantement]
    .target Lavinia Crowe
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto Undercity,62.35,60.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Thaddeus|r|cRXP_BUY_. Achetez-lui un|r |T133942:0|t[Bâtonnet en cuivre] |cRXP_BUY_et du|r |T135435:0|t[Simple Bois] |cRXP_BUY_|r
    >>|cRXP_WARN_Désenchantez tous les|r |T132662:0|t[Robe marron en lin] |cRXP_WARN_que vous avez tissé et fabriqué un|r |T135225:0|t[Bâtonnet runique en cuivre]
    >>|cRXP_WARN_Si vous n'avez pas obtenu une|r |T132867:0|t[Essence de magie inférieure] |cRXP_WARN_alors achetez-en une à|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_s'il en a. Sinon, terminez cette étape plus tard|r
    .collect 6218,1,435,1 --Runed Copper Rod (1)
    .collect 4470,1,435,1 --Simple Wood (1)
    .target Thaddeus Webb
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto Undercity,62.54,60.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Malcomb Wynn|r
    .train 14293 >> Apprenez |T135139:0|t[Baguette magique inférieure]
    .target Malcomb Wynn
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    #label LesserMagicWand
    >>|cRXP_WARN_Créez une|r |T135139:0|t[Baguette magique inférieure]
    >>|cRXP_WARN_Si vous n'avez pas obtenu une|r |T132867:0|t[Essence de magie inférieure] |cRXP_WARN_alors achetez-en une à|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_s'il en a. Sinon, terminez cette étape plus tard|r
    .collect 11287,1,435,1 --Lesser Magic Wand (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    #completewith Entersilverpine
    +|cRXP_WARN_Équipez la|r |T135139:0|t[Baguette magique inférieure]
    .use 11287
    .itemcount 11287,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << skip --Priest
    #optional
    #label UndercityLS3
    .goto 1458,61.990,62.272
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Effectuez un Logout skip en sautant sur les tonneaux, puis en vous déconnectant et en vous reconnectant|r
    >>|cRXP_WARN_Si vous n'arrivez pas à le faire, sortez simplement de Fossoyeuse normalement|r
    .zoneskip Undercity,1
step << Rogue
    #optional
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mennet Carkad|r
    .turnin 1886 >>Rendez la quête Les nécrotraqueurs
    .target Mennet Carkad
    .isQuestComplete 1886
    .zoneskip Undercity,1
step << Rogue
    #optional
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mennet Carkad|r
    .accept 1898 >>Acceptez la quête Les nécrotraqueurs
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Rogue
    #optional
    .goto Undercity,54.84,76.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Andron Gant|r
    .turnin 1898 >>Rendez la quête Les nécrotraqueurs
    .accept 1899 >>Acceptez la quête Les nécrotraqueurs
    .target Andron Gant
    .isQuestTurnedIn 1886
step << Rogue
    #optional
    .goto Undercity,55.43,76.87
    >>Ramassez les |cRXP_PICK_Livres d'Andron|r derrière |cRXP_FRIENDLY_Andron|r
    .complete 1899,1 --Andron's Ledger (1)
    .isQuestTurnedIn 1886
step << Rogue
    #optional
    .goto Undercity,83.53,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mennet Carkad|r
    .turnin 1899 >>Rendez la quête Les nécrotraqueurs
    .accept 1978 >>Acceptez la quête Les nécrotraqueurs
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Rogue
    #optional
    .goto Tirisfal Glades,58.86,78.76,40,0
    .goto Tirisfal Glades,59.75,84.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Varimathras|r
    .turnin 1978 >>Rendez la quête Les nécrotraqueurs
    .target Varimathras
    .isQuestTurnedIn 1886
step << skip --Rogue
    #optional
    .goto Undercity,55.22,90.88
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Positionnez votre personnage sur le bord du cercle jusqu'à ce qu'il semble flotter. Effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
	.link https://www.youtube.com/watch?v=jj85AXyF1XE >> |cRXP_WARN_CLIQUEZ ICI pour un exemple vidéo|r
    >>|cRXP_WARN_Si vous n'arrivez pas à le faire, sortez simplement de Fossoyeuse normalement|r
    .isQuestTurnedIn 1886
    .zoneskip Undercity,1
step << Rogue
    #optional
    #completewith Entersilverpine
    .goto Tirisfal Glades,61.92,64.85
    .zone Tirisfal Glades >> Quittez Undercity
    .zoneskip Tirisfal Glades
    .isQuestTurnedIn 1886
step << Rogue/Warrior/Priest
    #optional
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
    .isQuestAvailable 1978

--XX Optional Undercity Section End: If Priest needs wand, Rogue/Warrior needs vendor wep

step
    #label Entersilverpine
    .goto Tirisfal Glades,53.20,75.82
    .zone Silverpine Forest >> Voyagez à la Forêt des Pins argentés
    .zoneskip Silverpine Forest
]])

RXPGuides.RegisterGuide([[
#group RestedXP Horde 1-22
#groupid RXP-SRGCE-H1
#xprate <1.99
<< Horde
#version 11
#defaultfor Undead/Troll Rogue/Orc Rogue/Orc Warlock/Troll Mage/Troll Priest
#classic
#tbc
#era/som--h
#name 12-14 Forêt des Pins argentés
#next 12-17 Les Tarides


step << Undead Warrior
    #season 2
    #sticky
    #optional
    #completewith RuneOfDevastateUndead
    +Ne détruisez pas vos |cRXP_LOOT_Têtes coupées|r. Elles seront rendues plus tard pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Dévastation|r]
    .itemcount 204477,1
    .train 403475,1
step << Undead Rogue
    #sticky
    #completewith Rot HideCluesTurnIn
    >>|cRXP_WARN_Si vous voyez|r |cRXP_FRIENDLY_Astor|r|cRXP_WARN_, parlez-lui et tuez-le. Dépouillez-le pour la lettre. Il patrouille la route entre Brill et le Sépulcre|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
step
    #label WorgHearts
    #completewith next
    >>Tuez les |cRXP_ENEMY_Worgs|r sur la route vers |cRXP_FRIENDLY_Erland|r. Dépouillez-les pour leur |cRXP_LOOT_Cœurs|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .mob Mottled Worg
    .unitscan Gorefang
step
    .goto Silverpine Forest,56.18,9.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Nécrotraqueur Erland|r pour commencer l'escorte
    >>|cRXP_WARN_Assurez-vous d'avoir toute votre vie et votre mana avant de commencer cette quête|r
    .accept 435,1 >>Acceptez la quête Une escorte pour Erland
    .target Deathstalker Erland
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Worgs|r. Dépouillez-les pour leur |cRXP_LOOT_Cœurs|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .mob Mottled Worg
    .unitscan Gorefang
step
    .goto Silverpine Forest,56.25,10.27,30,0
    .goto Silverpine Forest,56.25,11.43,30,0
    .goto Silverpine Forest,56.17,12.62,30,0
    .goto Silverpine Forest,53.46,13.45
    >>Escortez |cRXP_FRIENDLY_Erland|r en toute sécurité auprès de |cRXP_FRIENDLY_Rane Yorick|r
    >>Les |cRXP_ENEMY_Worgs|r |cRXP_WARN_peuvent apparaître les uns sur les autres, mangez et buvez dès que possible|r
    .complete 435,1 --Erland must reach Rane Yorick (1)
    .mob Worg
step
    .goto Silverpine Forest,53.46,13.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rane Yorick|r
    .turnin 435 >>Rendez la quête Une escorte pour Erland
    .accept 429 >>Acceptez la quête Cœurs sauvages
    .accept 449 >>Acceptez la quête Le rapport des nécrotraqueurs
    .target Rane Yorick
step
    #loop
    .goto Silverpine Forest,57.72,10.07,0
    .goto Silverpine Forest,55.96,16.18,50,0
    .goto Silverpine Forest,58.37,15.56,50,0
    .goto Silverpine Forest,59.40,13.58,50,0
    .goto Silverpine Forest,60.11,10.51,50,0
    .goto Silverpine Forest,57.72,10.07,50,0
    >>Tuez les |cRXP_ENEMY_Worgs|r. Dépouillez-les pour leur |cRXP_LOOT_Cœurs|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .mob Mottled Worg
    .unitscan Gorefang
step
    #softcore
    #completewith ProveyourWorth
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r.
step
    #hardcore
    #completewith next
    .goto Silverpine Forest,49.77,28.66,50,0
    .goto Silverpine Forest,49.77,33.05,50,0
    .goto Silverpine Forest,49.64,37.84,100,0
    .goto Silverpine Forest,45.51,41.26,100 >> Voyagez au Sépulcre
    .subzoneskip 228
step
    #label ProveyourWorth
    .goto Silverpine Forest,44.20,39.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dalar|r
    .accept 421 >>Acceptez la quête Prouver votre valeur
    .target Dalar Dawnweaver
step << !Mage !Priest
    .goto Silverpine Forest,44.05,39.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwyn Farrow|r
    .vendor >> |cRXP_BUY_Achetez-lui des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r
    .collect 4605,20,421,1 --Red-speckled Mushroom (20)
    .target Gwyn Farrow
    .money <0.05
step
    .goto Silverpine Forest,43.98,39.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Edwin|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Kauth|r << Mage/Warlock/Priest/Shaman/Druid
    .vendor >> |cRXP_BUY_Achetez-lui des|r |T134830:0|t[Potions de soins inférieure] |cRXP_BUY_si elles sont disponibles|r
    .collect 1179,20,421,1 << Mage/Warlock/Priest/Shaman/Druid --Ice Cold Milk (20)
    .target Edwin Harly
    .money <0.05 << Mage/Warlock/Priest/Shaman/Druid
step << Undead
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Prêtre des ombres Allister|r et au |cRXP_FRIENDLY_Nécrogarde Podrig|r
    .accept 477 >>Acceptez la quête Frontières
    .target +Shadow Priest Allister
    .goto Silverpine Forest,43.98,40.93
    .accept 6321 >>Acceptez la quête Approvisionner le Sépulcre
    .target +Deathguard Podrig
    .goto Silverpine Forest,43.43,41.67
step
    #label BorderCrossings
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Prêtre des ombres Allister|r
    .accept 477 >>Acceptez la quête Frontières
    .target Shadow Priest Allister
step
    #completewith next
    .goto Silverpine Forest,43.09,41.33,8,0
    .goto Silverpine Forest,42.75,41.30,8,0
    .goto Silverpine Forest,42.76,40.90,8,0
    .goto Silverpine Forest,43.43,40.87,2 >> Entrez dans la crypte
step
    .goto Silverpine Forest,43.43,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Grand exécuteur Hadrec|r dans la crypte
    .turnin 449 >>Rendez la quête Le rapport des nécrotraqueurs
    .accept 3221 >>Acceptez la quête Parler à Renferrel
    .accept 437 >>Acceptez la quête Le Champ des morts
    .target High Executor Hadrec
step
    .goto Silverpine Forest,42.79,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Renferrel|r
    .turnin 429 >>Rendez la quête Cœurs sauvages
    .turnin 445 >>Rendez la quête Livraison dans la forêt des Pins argentés
    .turnin 3221 >>Rendez la quête Parler à Renferrel
    .accept 1359 >>Acceptez la quête Une livraison pour Zinge
    .accept 447 >>Acceptez la quête Une recette mortelle
    .accept 430 >>Acceptez la quête Retour vers Quinn
    .target Apothecary Renferrel
    .addquestitem 3164,429
step
    #loop
    .goto Silverpine Forest,49.12,36.72,0
    .goto Silverpine Forest,50.32,39.22,50,0
    .goto Silverpine Forest,51.86,41.56,50,0
    .goto Silverpine Forest,51.53,43.06,50,0
    .goto Silverpine Forest,51.62,44.85,50,0
    .goto Silverpine Forest,51.80,46.60,50,0
    .goto Silverpine Forest,50.83,47.74,50,0
    .goto Silverpine Forest,49.12,36.72,50,0
    >>Tuez les |cRXP_ENEMY_Poil-blancs Ragelunes|r
    .complete 421,1 --Moonrage Whitescalp (5)
    .mob Moonrage Whitescalp
    .unitscan Son of Arugal
step
    .goto Silverpine Forest,44.20,39.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dalar|r
    .target Dalar Dawnweaver
    .turnin 421 >>Rendez la quête Prouver votre valeur
    .accept 422 >>Acceptez la quête La folie d'Arugal
step
    #completewith Remedy
    .goto Silverpine Forest,52.74,27.70,80 >> Voyagez jusqu'au champ de Valgan
step
    #label Remedy
    .goto Silverpine Forest,52.74,27.70,8,0
    .goto Silverpine Forest,53.13,27.92,8,0
    .goto Silverpine Forest,52.94,27.88,8,0
    .goto Silverpine Forest,52.83,28.56
    >>Entrez dans la maison et allez au deuxième étage. Ramassez les |cRXP_PICK_Livres de sorts poussiéreux|r sur le sol
    .complete 422,1 --Remedy of Arugal (1)
step
    #completewith next
    .goto Silverpine Forest,53.39,13.32,80,0
    .subzone 239 >>Voyagez jusqu'au lopin d'Ivar
step
    #label QuinnYorick
    .goto Silverpine Forest,53.39,13.32,8,0
    .goto Silverpine Forest,53.08,13.11,8,0
    .goto Silverpine Forest,53.27,13.16,8,0
    .goto Silverpine Forest,53.43,12.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quinn Yorick|r au deuxième étage de la maison
    .turnin 430 >>Rendez la quête Retour vers Quinn
    .target Quinn Yorick
step
    .goto Silverpine Forest,53.46,13.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rane Yorick|r à l'extérieur
    .accept 425 >>Acceptez la quête Ivar l'Infect
    .target Rane Yorick
step
    .goto Silverpine Forest,52.01,14.02,6,0
    .goto Silverpine Forest,51.89,13.82,6,0
    .goto Silverpine Forest,51.54,13.91
    >>Tuez |cRXP_ENEMY_Ivar l'Infect|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>|cRXP_WARN_Ivar est protégé par deux|r |cRXP_ENEMY_Esclaves Serres-de-corbeau|r |cRXP_WARN_dans la grange. Vous pouvez en engager un seul à la fois lorsqu'il patrouille|r
    >>|cRXP_WARN_Ils sont immunisés contre la peur !|r << Priest/Warlock
    .complete 425,1 --Ivar's Head (1)
    .target Ivar the Foul
    .mob Ravenclaw Slave
step
    .goto Silverpine Forest,53.46,13.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rane Yorick|r
    .turnin 425 >>Rendez la quête Ivar l'Infect
    .target Rane Yorick
step
    #completewith ArugalTurnin
    +|cRXP_WARN_Soyez prudent ! Il peut y avoir un|r |cRXP_ENEMY_Fils d'Arugal|r |cRXP_WARN_dans la zone ! C'est un élite de niveau 25, éloignez-vous de lui !|r
    .unitscan Son of Arugal
step
    #completewith Nightlash
    >>Tuez les |cRXP_ENEMY_Ours|r. Dépouillez-les pour leur |cRXP_LOOT_Cœurs|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
step
    #label Nightlash
    .goto Silverpine Forest,45.44,21.01
    >>Tuez les |cRXP_ENEMY_Gnolls Poil-Putride|r autour du champ des Morts jusqu'à ce que |cRXP_ENEMY_Cinglenuit|r apparaisse. Tuez-la et dépouillez-la pour son |cRXP_LOOT_Essence|r
    >>|cRXP_WARN_Ils sont immunisés contre la peur !|r << Priest/Warlock
    .complete 437,1 --Enter the Dead Fields (1)
    .complete 437,2 --Essence of Nightlash (1)
    .unitscan Nightlash
    .mob Rot Hide Gladerunner
    .mob Rot Hide Mystic
step
    #completewith KillianVendor
    >>Tuez les |cRXP_ENEMY_Ours|r. Dépouillez-les pour leur |cRXP_LOOT_Cœurs|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
    .unitscan Son of Arugal
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Araignées|r. Dépouillez-les pour leur |cRXP_LOOT_Sang|r
    >>|cRXP_WARN_Faites attention à|r |cRXP_ENEMY_Krethis Tisse-l'ombre|r |cRXP_WARN_comme elle est quasiment impossible à tuer !|r << !Mage !Warlock
    >>|cRXP_WARN_Faites attention à|r |cRXP_ENEMY_Krethis Tisse-l'ombre|r |cRXP_WARN_comme elle est très difficile mais tuable. Elle a un bouclier de 130 dégâts toutes les 15s, et une capacité de choc instantané de 110 dégâts|r << Mage/Warlock
    .complete 447,2 --Skittering Blood (6)
    .mob Moss Stalker
    .unitscan Krethis Shadowspinner
    .unitscan Son of Arugal
step
    #label KillianVendor
    .goto Silverpine Forest,33.00,17.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Killian|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Killian Sanatha
    .isOnQuest 447
step
    #loop
	.goto Silverpine Forest,36.33,14.20,0
	.goto Silverpine Forest,37.25,15.99,50,0
	.goto Silverpine Forest,35.67,16.01,50,0
	.goto Silverpine Forest,34.96,16.34,50,0
	.goto Silverpine Forest,33.99,17.24,50,0
	.goto Silverpine Forest,34.14,15.26,50,0
	.goto Silverpine Forest,35.06,14.50,50,0
	.goto Silverpine Forest,35.85,13.83,50,0
	.goto Silverpine Forest,36.33,14.20,50,0
    >>Tuez les |cRXP_ENEMY_Araignées|r. Dépouillez-les pour leur |cRXP_LOOT_Sang|r
    >>|cRXP_WARN_Faites attention à|r |cRXP_ENEMY_Krethis Tisse-l'ombre|r |cRXP_WARN_comme elle est quasiment impossible à tuer !|r << !Mage !Warlock
    >>|cRXP_WARN_Faites attention à|r |cRXP_ENEMY_Krethis Tisse-l'ombre|r |cRXP_WARN_comme elle est très difficile mais tuable. Elle a un bouclier de 130 dégâts toutes les 15s, et une capacité de choc instantané de 110 dégâts|r << Mage/Warlock
    .complete 447,2 --Skittering Blood (6)
    .mob Moss Stalker
    .unitscan Krethis Shadowspi
step
    #loop
    .goto Silverpine Forest,41.60,21.65,0
    .goto Silverpine Forest,41.37,19.64,50,0
    .goto Silverpine Forest,41.60,21.65,50,0
    .goto Silverpine Forest,42.36,23.77,50,0
    .goto Silverpine Forest,44.67,24.84,50,0
    .goto Silverpine Forest,46.08,26.62,50,0
    >>Finissez de tuer les |cRXP_ENEMY_Ours|r. Dépouillez-les pour leur |cRXP_LOOT_Cœurs|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
    .unitscan Son of Arugal
step
    #softcore
    #completewith ArugalTurnin
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    #hardcore
    #completewith next
    .goto Silverpine Forest,45.51,41.26,100,0
    .subzone 228 >>Retournez au Sépulcre
step
    #xprate <1.5
    .goto Silverpine Forest,44.20,39.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dalar|r
    .turnin 422 >> Rendez la quête La folie d'Arugal
    .accept 423 >> Acceptez la quête La folie d'Arugal
    .target Dalar Dawnweaver
step
    #xprate >1.49
    .goto Silverpine Forest,44.20,39.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dalar|r
    .turnin 422 >> Rendez la quête La folie d'Arugal
    .target Dalar Dawnweaver
step
    #optional
    #label ArugalTurnin
step
    #completewith next
    .goto Silverpine Forest,43.09,41.33,8,0
    .goto Silverpine Forest,42.75,41.30,8,0
    .goto Silverpine Forest,42.76,40.90,8,0
    .goto Silverpine Forest,43.43,40.87,2 >> Entrez dans la crypte
step
    .goto Silverpine Forest,43.43,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Grand exécuteur Hadrec|r dans la crypte
    .turnin 437 >> Rendez la quête Le Champ des morts
    .accept 438 >> Acceptez la quête Le bac délabré
    .target High Executor Hadrec
step << !Mage !Priest
    .goto Silverpine Forest,44.05,39.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwyn Farrow|r
    >>|cRXP_BUY_Achetez-lui des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 4605,20,423,1 --Red-speckled Mushroom (20)
    .target Gwyn Farrow
step
    .goto Silverpine Forest,43.98,39.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Edwin|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Kauth|r << Warlock/Priest/Shaman/Druid
    .vendor >> |cRXP_BUY_Achetez-lui des|r |T134830:0|t[Potions de soins inférieure] |cRXP_BUY_si elles sont disponibles|r
    .collect 1179,20,423,1 << Warlock/Priest/Shaman/Druid --Ice Cold Milk (20)
    .target Edwin Harly
step << Warlock/Mage/Priest
    .goto Silverpine Forest,44.80,39.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Andrea|r
    .vendor >> Achetez-lui une |T132491:0|t[|cRXP_FRIENDLY_Ceinture de grand sage|r] si elle est disponible
    .target Andrea Boynton
    .money <0.1400
step << Rogue
    .goto Silverpine Forest,44.61,39.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alexandra Lefevre|r
    .vendor >> Achetez-lui des |T132539:0|t[|cRXP_FRIENDLY_Bottes agiles|r] si elles sont disponibles
    .target Alexandre Lefevre
    .money <0.2633
step << Warlock/Mage/Priest
    #optional
    #completewith Shackles
    +|cRXP_WARN_Équipez la|r |T132491:0|t[|cRXP_FRIENDLY_Ceinture de grand sage|r]
    .use 4786
    .itemcount 4786,1
    .xp <15,1
    .equip 6,4786
step << Rogue
    #optional
    #completewith Shackles
    +|cRXP_WARN_Équipez les|r |T132539:0|t[|cRXP_FRIENDLY_Bottes agiles|r]
    .use 4788
    .itemcount 4788,1
    .xp <15,1
    .equip 8,4788
step
    #label DecrepitFerry
    .goto Silverpine Forest,58.39,34.79
    >>Cliquez sur le |cRXP_PICK_Bateau|r sur le côté des quais
    .turnin 438 >>Rendez la quête Le bac délabré
    .accept 439 >>Acceptez la quête Un indice vers les Poils-putrides
step
    #xprate <1.5
    #loop
    .goto Silverpine Forest,56.06,45.75,0
    .goto Silverpine Forest,56.06,45.75,40,0
    .goto Silverpine Forest,55.45,49.18,40,0
    .goto Silverpine Forest,56.80,45.86,40,0
    >>Tuez les |cRXP_ENEMY_Gloutons Ragelunes|r et les |cRXP_ENEMY_Ténébreux Ragelunes|r. Dépouillez-les pour leurs |cRXP_LOOT_Bracelets|r
    >>|cRXP_WARN_Attention !|r Les |cRXP_ENEMY_Ténébreux Ragelunes|r |cRXP_WARN_s'enragent quand ils sont en dessous de 25% de points de vie. Tuez-les rapidement quand ils sont affaiblis.|r
    .complete 423,1 --Glutton Shackle (6)
    .mob +Moonrage Glutton
    .complete 423,2 --Darksoul Shackle (3)
    .mob +Moonrage Darksoul
step << Mage
    #season 2
    #completewith BorderCrossings
    >>Tuez les |cRXP_ENEMY_Apprentis de Dalaran|r. Dépouillez-les pour les |cRXP_LOOT_|T134939:0|t[|cRXP_FRIENDLY_Notes de sort : NIGÉO NÉRÉRAT|r]|r
    .train 401767,1
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .mob Dalaran Apprentice
step
    #hardcore
    .goto Silverpine Forest,49.89,60.33
    >>Cliquez sur la |cRXP_PICK_Caisse|r dans le camp
    >>|cRXP_WARN_Attention ! Ces mobs lancent|r |T135846:0|t[Eclair de givre] |cRXP_WARN_et s'enfuient lorsqu'ils ont peu de vie. Engagez-les et tuez-les un par un jusqu'à ce que vous puissiez cliquer en toute sécurité sur la caisse.|r
    .turnin 477 >>Rendez la quête Frontières
    .accept 478 >>Acceptez la quête Des cartes et des runes
    .mob Dalaran Apprentice
step
    #label BorderCrossings
    #softcore
    .goto Silverpine Forest,49.89,60.33
    >>Cliquez sur la |cRXP_PICK_Caisse|r dans le camp
    >>|cRXP_WARN_Faites attention, ces créatures lancent|r |T135846:0|t[Eclair de givre]|r
    .turnin 477 >>Rendez la quête Frontières
    .accept 478 >>Acceptez la quête Des cartes et des runes
    .mob Dalaran Apprentice
step << Mage
    #season 2
    #loop
    .goto Silverpine Forest,49.89,60.33,0
    .goto Silverpine Forest,52.6,56.6,20,0
    .goto Silverpine Forest,56.6,62.8,20,0
    .goto Silverpine Forest,55.6,72.8,20,0
    .goto Silverpine Forest,51.6,71.0,20,0
    .goto Silverpine Forest,50.8,61.6,20,0
    >>Tuez les |cRXP_ENEMY_Apprentis de Dalaran|r. Dépouillez-les pour les |cRXP_LOOT_|T134939:0|t[|cRXP_FRIENDLY_Notes de sort : NIGÉO NÉRÉRAT|r]|r
    .train 401767,1
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .mob Dalaran Apprentice
step << Mage
    #season 2
    .collect 211779,1 >>Vous avez besoin d'un |T135933:0|t[Charme de compréhension] acheté au |cRXP_FRIENDLY_Marchand de composants|r pour utiliser l'objet
    .train 401767 >>|cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : NIGÉO NÉRÉRAT|r] |cRXP_WARN_pour apprendre|r |T132871:0|t[Régénération.]
    .use 208754
    .itemcount 211779,1
step << Rogue
    #season 2
    .goto Silverpine Forest,45.25,68.06,20,0
    .goto Silverpine Forest,45.26,67.21
    >>Dépouillez le |cRXP_PICK_Coffre rouillé|r à côté de l'entrée du Donjon d'Ombrecroc pour |T134419:0|t[|cRXP_FRIENDLY_Rune de Coup de sabre|r]
    >>|cRXP_WARN_Utilisez|r |T132307:0|t[Sprint] |cRXP_WARN_puis sautez du pont vers le coffre|r
    .collect 208772,1 --Rune of Saber Slash (1)
    .train 424984,1
step << Rogue
    #season 2
    .train 424984 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Coup de sabre|r] |cRXP_WARN_pour apprendre|r |T132375:0|t[Coup de sabre]
    .use 208772
    .itemcount 208772,1
step
    #completewith next
    #hardcore
    .goto Silverpine Forest,45.51,41.26,100 >> Retournez au Sépulcre
    .subzoneskip 228
step
    #softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Prêtre des ombres Allister|r et à |cRXP_FRIENDLY_Dalar|r
    .turnin 478 >>Rendez la quête Des cartes et des runes
    .accept 481 >>Acceptez la quête L'analyse de Dalar
    .target +Shadow Priest Allister
    .goto Silverpine Forest,43.98,40.93
    .turnin 423 >>Rendez la quête La folie d'Arugal
    .turnin 481 >>Rendez la quête L'analyse de Dalar
    .accept 482 >>Acceptez la quête Les intentions de Dalaran
    .target +Dalar Dawnweaver
    .goto Silverpine Forest,44.20,39.73
step
    #xprate >1.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Prêtre des ombres Allister|r et à |cRXP_FRIENDLY_Dalar|r
    .turnin 478 >>Rendez la quête Des cartes et des runes
    .accept 481 >>Acceptez la quête L'analyse de Dalar
    .target +Shadow Priest Allister
    .goto Silverpine Forest,43.98,40.93
    .turnin 481 >>Rendez la quête L'analyse de Dalar
    .accept 482 >>Acceptez la quête Les intentions de Dalaran
    .target +Dalar Dawnweaver
    .goto Silverpine Forest,44.20,39.73
step
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Prêtre des ombres Allister|r
    .turnin 482 >>Rendez la quête Les intentions de Dalaran
    .target Shadow Priest Allister
step
    #completewith next
    .goto Silverpine Forest,43.09,41.33,8,0
    .goto Silverpine Forest,42.75,41.30,8,0
    .goto Silverpine Forest,42.76,40.90,8,0
    .goto Silverpine Forest,43.43,40.87,2 >> Entrez dans la crypte
step
    #label Rot HideCluesTurnIn
    .goto Silverpine Forest,43.43,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Grand exécuteur Hadrec|r dans la crypte
    .turnin 439 >>Rendez la quête Un indice vers les Poils-putrides
    .target High Executor Hadrec
step
    #xprate <1.5 << Undead
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Karos|r
    .turnin 6321 >>Rendez la quête Approvisionner le Sépulcre << Undead
    .accept 6323 >>Acceptez la quête Voyage vers Fossoyeuse << Undead
    .fp Sepulcher >> Prenez le chemin de vol pour le Sépulcre << !Undead
    .fly Undercity >> Volez à Undercity << !Undead
    .target Karos Razok
    .zoneskip Undercity
step << Undead
    #xprate >1.49
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Karos|r
    .turnin 6321 >>Rendez la quête Approvisionner le Sépulcre
    .accept 6323 >>Acceptez la quête Voyage vers Fossoyeuse
    .fly Undercity >> Volez à Undercity
    .target Karos Razok
    .zoneskip Undercity
step << Undead
    #xprate <1.5
    .hs >> Utilisez votre Pierre de foyer pour revenir à Fossoyeuse
    .use 6948
    .zoneskip Undercity
    .bindlocation 1497,1





    --XX Start of Undercity clown fiesta section





step << Undead
    .goto Undercity,61.48,41.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gordon|r
    .turnin 6323 >> Rendez la quête Voyage vers Fossoyeuse
    .accept 6322 >> Acceptez la quête Michael Garrett
    .target Gordon Wendham
step << Rogue
    #ssf
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler à |cRXP_FRIENDLY_Louis Warren|r dans le Quartier des Marchands
    >>|cRXP_BUY_Achetez une|r [Cimeterre] |cRXP_BUY_au marchand|r
    .collect 2027,1,809,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Louis Warren
step << Rogue
    #ah
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler à |cRXP_FRIENDLY_Louis Warren|r dans le Quartier des Marchands
    >>|cRXP_BUY_Achetez une|r [Cimeterre] |cRXP_BUY_au marchand|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 2027,1,809,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Louis Warren
step << Rogue
    #optional
    #completewith Conscript
    +Équipez la [Cimeterre]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Undead
    .goto Undercity,63.27,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Michael|r
    .turnin 6322 >>Rendez la quête Michael Garrett
    .target Michael Garrett
step << Undead Warrior
    #xprate <1.5
    #optional
    .goto Undercity,47.41,17.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Baltus Fowler|r
    .train 285 >> Apprenez vos sorts de classe
    .target Baltus Fowler
    .dungeon RFC
    .xp <16,1
--XX 16+ Only for Heroic Strike, Undead only as other races train elsewhere more effectively. RFC So warriors have 16 spells for RFC
step << Undead Rogue/Undead Warrior
    #xprate <1.5
    .goto Undercity,84.06,17.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bethor|r
    .turnin 411 >>Rendez la quête Le Retour de la Liche Prodigue
    .target Bethor Iceshard
    .isQuestComplete 411
step << Rogue/Warrior
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mary|r dans le Quartier des voleurs
    .train 3273 >>Apprenez [Premiers soins]
    .target Mary Edras
step << Rogue/Warrior
    #optional
    .goto Undercity,73.19,55.17
    .skill firstaid,40 >> Fabriquez des |T133685:0|t[Bandages en lin] jusqu'à ce que votre compétence soit de 40 ou plus
    .itemcount 2589,1 --Linen Cloth (1+)
step << Rogue/Warrior
    #optional
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mary|r dans le Quartier des voleurs
    .train 3276 >> Apprenez [Bandage épais en lin]
    .target Mary Edras
    .skill firstaid,<40,1
step << Rogue/Warrior
    #optional
    .goto Undercity,73.19,55.17
    .skill firstaid,50 >> Fabriquez des |T133688:0|t[Bandages épais en lin] jusqu'à ce que votre compétence soit de 50 ou plus
    .itemcount 2589,2 --Linen Cloth (2+)
step << Rogue/Warrior
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mary|r dans le Quartier des voleurs
    .train 3274 >> Apprenez Premiers soins compagnon
    .target Mary Edras
    .skill firstaid,<50,1
step << Undead Rogue
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mennet Carkad|r
    .turnin 1886 >>Rendez la quête Les nécrotraqueurs
    .accept 1898 >>Acceptez la quête Les nécrotraqueurs
    .target Mennet Carkad
    .isQuestComplete 1886
step << Undead Rogue
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mennet Carkad|r
    .accept 1898 >>Acceptez la quête Les nécrotraqueurs
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Undead Rogue
    #optional
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carolyn|r
    .train 1758 >> Apprenez vos sorts de classe
    .target Carolyn Ward
    .xp <14,1
    .xp >16,1
    .isOnQuest 1898 << Undead
--XX Only train if you were directed here for class quest as an Undead
step << Undead Rogue
    #optional
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carolyn|r
    .train 6761 >> Apprenez vos sorts de classe
    .target Carolyn Ward
    .xp <16,1
    .isOnQuest 1898 << Undead
step << Undead Rogue
    #xprate <1.5
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carolyn|r
    .train 1758 >> Apprenez vos sorts de classe
    .target Carolyn Ward
    .xp <14,1
    .xp >16,1
    .dungeon RFC
--XX Force train if hs not in Brill as an undead ONLY + you want to do RFC. Optional left out on purpose
--XX This whole section of training across 3 different areas, 2 different xp rates and RFC is solidly in the top 10 worst experiences of my life and im still not 100% happy with it xd
step << Undead Rogue
    #optional
    #xprate <1.5
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carolyn|r
    .train 6761 >> Apprenez vos sorts de classe
    .target Carolyn Ward
    .xp <16,1
    .dungeon RFC
step << Undead Rogue
    .goto Undercity,54.84,76.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Andron Gant|r
    .turnin 1898 >>Rendez la quête Les nécrotraqueurs
    .accept 1899 >>Acceptez la quête Les nécrotraqueurs
    .target Andron Gant
    .isQuestTurnedIn 1886
step << Undead Rogue
    .goto Undercity,55.43,76.87
    >>Ramassez les |cRXP_PICK_Livres d'Andron|r derrière |cRXP_FRIENDLY_Andron|r
    .complete 1899,1 --Andron's Ledger (1)
    .isQuestTurnedIn 1886
step
    #completewith next
    #optional
    .goto 1458,54.383,73.014,50,0 << !Undead/!Rogue
    .goto 1458,52.837,77.725,20,0
    .goto 1458,52.275,79.254,15,0
    .goto 1458,51.279,79.923,15,0
    .goto 1458,49.693,78.903,15,0
    .goto 1458,47.951,76.171,15,0
    .goto Undercity,48.84,69.25,12 >> Voyagez vers |cRXP_FRIENDLY_Faranell|r dans l'Apothicarium
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maître apothicaire Faranell|r et à l' |cRXP_FRIENDLY_Apothicaire Zinge|r à l'Apothicarium
    .turnin 447 >>Rendez la quête Une recette mortelle
    .target +Master Apothecary Faranell
    .goto Undercity,48.84,69.25
    .turnin 1359 >> Rendez la quête Une livraison pour Zinge
    .accept 1358 >> Acceptez la quête Un échantillon pour Helbrim
    .target +Apothecary Zinge
    .goto Undercity,50.16,67.97
step << Undead Warrior
    #season 2
    #label RuneOfDevastateUndead
    .goto Undercity,48.03,70.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dorac|r dans Fossoyeuse
    >>Rendez les |cRXP_LOOT_Têtes|r que vous avez rassemblés en échange des |T134455:0|t[Fragments de rune]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Dorac Graves
    .train 403475,1
step << Undead Warrior
    #season 2
    .use 204688 >>|cRXP_WARN_Utilisez les|r |T134455:0|t[Fragments de rune] |cRXP_WARN_pour créer|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Dévastation|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step << Undead Warrior
    #season 2
    .train 403475 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Dévastation|r]
    .use 204703
    .itemcount 204703,1
step << skip --Undead Rogue/Undead Warrior
    #xprate <1.5
    #optional
    .goto 1458,48.906,70.156
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Effectuez un Logout skip en sautant sur l'abdomen de l'abomination, puis en vous déconnectant et en vous reconnectant|r
    >>|cRXP_WARN_Si vous n'arrivez pas à le faire, sortez simplement de Fossoyeuse normalement|r
    .zoneskip Undercity,1
    .isQuestTurnedIn 1886 << Rogue
step << Undead Rogue
    .goto Undercity,83.53,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mennet Carkad|r
    .turnin 1899 >>Rendez la quête Les nécrotraqueurs
    .accept 1978 >>Acceptez la quête Les nécrotraqueurs
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Undead Rogue
    #xprate <1.5
    #optional
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carolyn|r
    .train 1758 >> Apprenez vos sorts de classe
    .target Carolyn Ward
    .xp <14,1
    .xp >16,1
    .dungeon RFC
--XX Force train if hs not in Brill as an undead ONLY + you want to do RFC. Duplicate if you ding from prev optional quests
step << Undead Rogue
    #xprate <1.5
    #optional
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carolyn|r
    .train 6761 >> Apprenez vos sorts de classe
    .target Carolyn Ward
    .xp <16,1
    .dungeon RFC
step << Undead Rogue
    .goto Tirisfal Glades,58.86,78.76,40,0
    .goto Tirisfal Glades,59.75,84.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Varimathras|r
    .turnin 1978 >>Rendez la quête Les nécrotraqueurs
    .target Varimathras
    .isQuestTurnedIn 1886
step << skip --Undead Rogue
    #xprate <1.5
    #optional
    .goto Undercity,55.22,90.88
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Positionnez votre personnage sur le bord du cercle jusqu'à ce qu'il semble flotter. Effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
	.link https://www.youtube.com/watch?v=jj85AXyF1XE >> |cRXP_WARN_CLIQUEZ ICI pour un exemple vidéo|r
    >>|cRXP_WARN_Si vous n'arrivez pas à le faire, sortez simplement de Fossoyeuse normalement|r
    .zoneskip Undercity,1
    .isQuestTurnedIn 1886
step << !Rogue !Warrior
    #optional
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mary|r dans le Quartier des voleurs
    .train 3273 >>Apprenez [Premiers soins]
    .target Mary Edras
step << !Rogue !Warrior
    #optional
    .goto Undercity,73.19,55.17
    .skill firstaid,40 >> Fabriquez des |T133685:0|t[Bandages en lin] jusqu'à ce que votre compétence soit de 40 ou plus
    .itemcount 2589,1 --Linen Cloth (1+)
step << !Rogue !Warrior
    #optional
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mary|r dans le Quartier des voleurs
    .train 3276 >> Apprenez [Bandage épais en lin]
    .target Mary Edras
    .skill firstaid,<40,1
step << !Rogue !Warrior
    #optional
    .goto Undercity,73.19,55.17
    .skill firstaid,50 >> Fabriquez des |T133688:0|t[Bandages épais en lin] jusqu'à ce que votre compétence soit de 50 ou plus
    .itemcount 2589,2 --Linen Cloth (2+)
step << !Rogue !Warrior
    #optional
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mary|r dans le Quartier des voleurs
    .train 3274 >> Apprenez Premiers soins compagnon
    .target Mary Edras
    .skill firstaid,<50,1
step << Undead !Rogue !Warrior
    #xprate <1.5
    .goto Undercity,84.06,17.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bethor|r
    .turnin 411 >>Rendez la quête Le Retour de la Liche Prodigue
    .target Bethor Iceshard
    .isQuestComplete 411
step << Undead Mage
    #xprate >1.49
    .goto Undercity,85.12,10.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anastasia|r au Quartier Magique
    .turnin 1882 >>Rendez la quête La ferme des Balnir
    .train 2137 >> Apprenez vos sorts de classe
    .target Anastasia Hartwell
    .xp <14,1
    .xp >16,1
step << Undead Mage
    #xprate >1.49
    #optional
    .goto Undercity,85.14,10.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anastasia|r
    .turnin 1882 >>Rendez la quête La ferme des Balnir
    .train 2120 >> Apprenez vos sorts de classe
    .target Anastasia Hartwell
    .xp <16,1
step << Mage
    #xprate <1.5 << Undead
    .goto Undercity,85.14,10.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anastasia|r
    .train 2137 >> Apprenez vos sorts de classe
    .target Anastasia Hartwell
    .xp <14,1
    .xp >16,1
--XX no dungeon RFC due to close proximity
step << Mage
    #xprate <1.5 << Undead
    #optional
    .goto Undercity,85.14,10.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anastasia|r
    .train 2120 >> Apprenez vos sorts de classe
    .target Anastasia Hartwell
    .xp <16,1
step << Undead Warlock
    #xprate <1.5
    .goto Undercity,88.93,15.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Richard|r
    .train 6222 >> Apprenez vos sorts de classe
    .target Richard Kerwin
    .xp <14,1
    .xp >16,1
--XX no dungeon RFC due to close proximity
step << Undead Warlock
    #xprate <1.5
    #optional
    .goto Undercity,88.93,15.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Richard|r
    .train 1455 >> Apprenez vos sorts de classe
    .target Richard Kerwin
    .xp <16,1
step << Priest/Mage/Warlock
    #ssf
    .goto Undercity,69.54,26.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zane Bradford|r dans le Quartier magique
    >>|cRXP_BUY_Achetez une|r [Baguette de fonte] |cRXP_BUY_à Harick|r
    .collect 5208,1 --Smoldering Wand (1)
    .money <0.3515
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
	.target Zane Bradford
step << Priest/Mage/Warlock
    #ah
    .goto Undercity,69.54,26.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zane Bradford|r dans le Quartier magique
    >>|cRXP_BUY_Achetez une|r [Baguette de fonte] |cRXP_BUY_à Harick|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 5208,1 --Smoldering Wand (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
	.target Zane Bradford
step << Priest/Mage/Warlock
    #optional
    #completewith Conscript
    +|cRXP_WARN_Équipez la|r |T135468:0|t[Baguette fumante] |cRXP_WARN_lorsque vous êtes au niveau 15|r
    .use 5208
    .itemcount 5208,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp >15,1
step << Priest/Mage/Warlock
    #optional
    #completewith Conscript
    +Équipez la [Baguette de fonte]
    .use 5208
    .itemcount 5208,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp <15,1
step << Undead Priest
    #xprate <1.5
    #sticky
    #label TouchOW
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5658 >> Rendez la quête Toucher de faiblesse
    .target Aelthalyste
    .train 2652,1 --Touch of Weakness not trained
    .dungeon RFC
step << !Undead Priest
    #xprate <1.5
    #sticky
    #label TouchOW
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5660 >> Rendez la quête Toucher de faiblesse
    .target Aelthalyste
    .train 2652,1 --Touch of Weakness not trained
    .dungeon RFC
    .isOnQuest 5660
--XX Not going out of the way for this outside of this edge case to train for RFC, waste of a gcd
step << Undead Priest
    #xprate <1.5
    .goto Undercity,47.56,18.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Père Lazarus|r
	.train 6074 >> Apprenez vos sorts de classe
    .target Father Lazarus
    .xp <14,1
    .xp >16,1
    .dungeon RFC
step << Undead Priest
    #xprate <1.5
    #optional
    .goto Undercity,47.56,18.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Père Lazarus|r
	.train 8102 >> Apprenez vos sorts de classe
    .target Father Lazarus
    .xp <16,1
    .dungeon RFC
step << Undead Rogue
    #optional
    #completewith Conscript
    >>Abandonnez la quête Les nécrotraqueurs, vous n'aurez plus l'occasion de la faire
    .abandon 1886 >> Abandonnez la quête Les nécrotraqueurs
    .isOnQuest 1886
step << skip --Undead !Rogue !Warrior
    #xprate <1.5
    #requires TouchOW << Undead Priest
    .goto Undercity,56.89,16.77 << Priest
    .goto Undercity,69.46,25.85 << Mage/Warlock
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Effectuez un Logout skip en sautant sur le broyeur du Chariot à viande, puis en vous déconnectant et en vous reconnectant|r << Priest
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Effectuez un Logout skip en sautant sur les tonneaux, puis en vous déconnectant et en vous reconnectant|r << Mage/Warlock
    >>|cRXP_WARN_Si vous n'arrivez pas à le faire, sortez simplement de Fossoyeuse normalement|r
    .zoneskip Undercity,1
    .dungeon RFC
step << skip --Undead !Rogue !Warrior
    #xprate <1.5
    .goto Undercity,69.46,25.85 << Priest/Mage/Warlock
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Effectuez un Logout skip en sautant sur les tonneaux, puis en vous déconnectant et en vous reconnectant|r << Priest/Mage/Warlock
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_CLIQUEZ ICI pour un exemple vidéo|r
    >>|cRXP_WARN_Si vous n'arrivez pas à le faire, sortez simplement de Fossoyeuse normalement|r
    .zoneskip Undercity,1
    .dungeon !RFC



--XX End of Undercity clown fiesta section





--XX Start of 1.5x Brill Train section





step << Undead
    #xprate >1.49
    #completewith ZeptoDurotar
    .hs >> Utilisez votre Pierre de foyer pour revenir à Brill
    .zoneskip Undercity,1
    .bindlocation 2119,1
step << Undead Rogue
    #xprate >1.49
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r à l'intérieur de l'auberge
    .train 1758 >> Apprenez vos sorts de classe
    .target Marion Call
    .xp <14,1
    .xp >16,1
step << Undead Rogue
    #xprate >1.49
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r à l'intérieur de l'auberge
    .train 6761 >> Apprenez vos sorts de classe
    .target Marion Call
    .xp <16,1
step << Undead Priest
    #xprate >1.49
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beryl|r au deuxième étage
	.train 8122 >>Apprenez vos sorts de classe
    .target Dark Cleric Beryl
    .xp <14,1
    .xp >16,1
step << Undead Priest
    #xprate >1.49
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beryl|r au deuxième étage
	.train 8102 >>Apprenez vos sorts de classe
    .target Dark Cleric Beryl
    .xp <16,1
step << skip --Undead Mage
    #xprate >1.49
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cain|r au second étage
    .train 1460 >>Apprenez vos sorts de classe
    .target Cain Firesong
    .xp <14,1
    .xp >16,1
step << skip --Undead Mage
    #xprate >1.49
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cain|r au second étage
    .train 2120 >>Apprenez vos sorts de classe
    .target Cain Firesong
    .xp <16,1
step << Undead Warrior
    #xprate >1.49
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à  |cRXP_FRIENDLY_Austil|r
    .train 285 >>Apprenez vos sorts de classe
    .target Austil de Mon
    .xp <16,1
step << Undead Warlock
    #xprate >1.49
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rupert|r
    .train 6222 >> Apprenez vos sorts de classe
    .target Rupert Boch
    .xp <14,1
    .xp >16,1
step << Undead Warlock
    #xprate >1.49
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rupert|r
    .train 1455 >> Apprenez vos sorts de classe
    .target Rupert Boch
    .xp <16,1





--XX End of 1.5x Brill Train section





step << Undead
    #sticky
    #completewith EnterRFC
    .subzone 2437 >> Maintenant vous devez trouver un groupe pour le Gouffre de Ragefeu
    .dungeon RFC
step << Undead
    #completewith next
    .goto Tirisfal Glades,61.92,64.85,50,0
    .zone Tirisfal Glades >> Quittez Undercity
    .zoneskip Tirisfal Glades
step << Undead
    #label ZeptoDurotar
    .goto Tirisfal Glades,60.96,58.63,12,0
    .goto Tirisfal Glades,61.51,59.01,10,0
    .goto Tirisfal Glades,61.27,59.22,8,0
    .goto Tirisfal Glades,61.13,58.84,8,0
    .goto Tirisfal Glades,61.38,58.71,8,0
    .goto Tirisfal Glades,61.34,59.17,8,0
    .goto Tirisfal Glades,60.51,58.69,-1
    .goto Tirisfal Glades,60.94,46.35,-1
    .zone Durotar >>Prenez le Zeppelin pour Durotar
    >>Fabriquez des Pierres à aiguiser/Bandages pendant l'attente << Warrior/Rogue
    >>Invoquez de la nourriture/eau pendant l'attente << Mage
    .zoneskip Durotar
step << Undead
    #completewith HiddenEnemiesPickup
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> Voyagez à Orgrimmar
    .dungeon RFC
step << Undead
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Doras|r
    >>N'achetez pas de trajet en vol !
    .fp Orgrimmar >> Prenez le chemin de vol d'Orgrimmar
    .target Doras
    .dungeon RFC
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Acceptez la quête Ennemis cachés
    .target Thrall
    .dungeon RFC
step << Undead
    .goto Durotar,53.08,9.19,0
    >>Tuez les membres de la |cRXP_ENEMY_Lame Ardente|r au Rocher du Crâne jusqu'à ce que l' |cRXP_LOOT_Insigne de lieutenant|r tombe
    .complete 5726,1 --Lieutenant's Insignia (1)
    .dungeon RFC
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >> Rendez la quête Ennemis cachés
    .accept 5727 >> Acceptez la quête Ennemis cachés
    .target Thrall
    .dungeon RFC
step << Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neeru Fireblade|r
    .accept 5761 >>Acceptez la quête Tuer la bête
    .target Neeru Fireblade
    .dungeon RFC
step << Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neeru Fireblade|r
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target Neeru Fireblade
    .dungeon RFC
step << Undead
    #label HiddenEnemiesPickup
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 5727 >> Rendez la quête Ennemis cachés
    .accept 5728 >> Acceptez la quête Ennemis cachés
    .target Thrall
    .dungeon RFC
step << Undead
    #completewith EnterRFC
    .destroy 14544 >>|cRXP_WARN_Détruisez l'|r |T134417:0|t[Insigne de lieutenant] |cRXP_WARN_comme vous n'en avez plus besoin|r
    .dungeon RFC
step << Undead
    #label EnterRFC
    .goto Orgrimmar,52.77,48.97
    .subzone 2437 >> Entrez dans le portail de l'instance du Gouffre de Ragefeu
    .dungeon RFC
step << Undead
    >>|cRXP_WARN_Si possible, faites en sorte que les membres du groupe vous partagent les quêtes suivantes|r
    .accept 5722 >> Acceptez la quête À la recherche de la sacoche perdue
    .accept 5723 >> Acceptez la quête Tester la force de l'ennemi
    .disablecheckbox
    .dungeon RFC
step << Undead
    #completewith next
    >>Tuez les |cRXP_ENEMY_Troggs Ragefeu|r et les |cRXP_ENEMY_Chamans Ragefeu|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << Undead
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maur|r
    .turnin 5722 >> Rendez la quête À la recherche de la sacoche perdue
    .accept 5724 >> Acceptez la quête Rapporter la sacoche perdue
    .target Maur Grimtotem
    .isOnQuest 5722
    .dungeon RFC
step << Undead
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maur|r
    .accept 5724 >> Acceptez la quête Rapporter la sacoche perdue
    .target Maur Grimtotem
    .isQuestTurnedIn 5722
    .dungeon RFC
step << Undead
    #label TroggsShamans
    >>Tuez les |cRXP_ENEMY_Troggs Ragefeu|r et les |cRXP_ENEMY_Chamans Ragefeu|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << Undead
    #requires TroggsShamans
    #completewith BazzalanandJergosh
    >>Tuez les |cRXP_ENEMY_Searing Blade Cultists|r et les |cRXP_ENEMY_Searing Blade Warlocks|r. Dépouillez-les pour le |cRXP_LOOT_Spells of Shadow|r et le |cRXP_LOOT_Incantations from the Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step << Undead
    >>Tuez |cRXP_ENEMY_Taragaman the Hungerer|r. Dépouillez-le pour son |cRXP_LOOT_Heart|r
    .complete 5761,1 -- Taragaman the Hungerer's Heart
    .mob Taragaman the Hungerer
    .isOnQuest 5761
    .dungeon RFC
step << Undead
    #label BazzalanandJergosh
    >>Tuez |cRXP_ENEMY_Bazzalan|r et |cRXP_ENEMY_Jergosh l'Invocateur|r
    .complete 5728,1 --Bazzalan (1)
    .mob +Bazzalan
    .complete 5728,2 --Jergosh the Invoker (1)
    .mob +Jergosh the Invoker
    .isOnQuest 5728
    .dungeon RFC
step << Undead
    >>Tuez les |cRXP_ENEMY_Searing Blade Cultists|r et les |cRXP_ENEMY_Searing Blade Warlocks|r. Dépouillez-les pour le |cRXP_LOOT_Spells of Shadow|r et le |cRXP_LOOT_Incantations from the Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step << Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neeru Fireblade|r
    .turnin 5761 >>Rendez la quête Tuer la bête
    .target Neeru Fireblade
    .isQuestComplete 5761
    .dungeon RFC
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 5728 >> Rendez la quête Ennemis cachés
    .accept 5729 >> Acceptez la quête Ennemis cachés
    .target Thrall
    .isQuestComplete 5728
    .dungeon RFC
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .accept 5729 >> Acceptez la quête Ennemis cachés
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step << Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neeru Fireblade|r
    .turnin 5729 >> Rendez la quête Ennemis cachés
    .accept 5730 >> Acceptez la quête Ennemis cachés
    .target Neeru Fireblade
    .dungeon RFC
    .isQuestTurnedIn 5728
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 5730 >> Rendez la quête Ennemis cachés
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step << Undead
    #completewith Conscript
    .subzone 362 >> Voyagez jusqu'à Tranchecolline
step << !Undead
    .hs >> Utilisez votre Pierre de foyer pour vous revenir à Tranchecolline
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
step << Rogue
    #optional << Undead
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kaplak|r
    .train 1758 >> Apprenez vos sorts de classe
    .target Kaplak
    .xp <14,1
    .xp >16,1
step << Rogue
    #optional << Undead
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kaplak|r
    .train 6761 >> Apprenez vos sorts de classe
    .target Kaplak
    .xp <16,1
step << Priest
    #optional << Undead
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tai'jin|r
	.train 8122 >>Apprenez vos sorts de classe
    .target Tai'jin
    .xp <14,1
    .xp >16,1
step << Priest
    #optional << Undead
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tai'jin|r
	.train 8102 >>Apprenez vos sorts de classe
    .target Tai'jin
    .xp <16,1
step << Warrior
    #optional << Undead
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarshaw|r
    .train 285 >>Apprenez vos sorts de classe
    .target Tarshaw Jaggedscar
    .xp <16,1
step << Warlock
    #optional << Undead
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dhugru|r
    .train 6222 >> Apprenez vos sorts de classe
    .target Dhugru Gorelust
    .xp <14,1
    .xp >16,1
step << Warlock
    #optional << Undead
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dhugru|r
    .train 1455 >> Apprenez vos sorts de classe
    .target Dhugru Gorelust
    .xp <16,1
step << !Undead
    #xprate >1.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Orgnil|r et à |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 806 >>Rendez la quête De sombres orages
    .goto Durotar,52.24,43.15
    .turnin 837 >>Rendez la quête Empiètement
    .goto Durotar,51.95,43.50
    .target Orgnil Soulscar
    .target Gar'Thok
step
    #label Conscript
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Acceptez la quête Sous les drapeaux de la Horde
    .target Takrin Pathseeker
step
    #completewith next
    .subzone 379 >> Voyagez jusqu'au poste de Guet-Lointain
step
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Rendez la quête Sous les drapeaux de la Horde
    .accept 842 >>Acceptez la quête Conscription à la Croisée
    .target Kargal Battlescar
step << !Undead
    #xprate <1.5
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 809 >>Rendez la quête Ak'Zeloth
    .accept 924 >>Acceptez la quête La Graine démoniaque
    .target Ak'Zeloth
    .isQuestTurnedIn 829
step << !Undead
    .goto The Barrens,62.34,20.03
    >>Ramassez la [Pierre de puissance imparfaite] près de |cRXP_FRIENDLY_Ak'Zeloth|r. Cet objet a une durée de 30 minutes, donc soyez sûr d'être rapide
    .turnin 926 >>Rendez la quête Pierre de puissance imparfaite
    .isOnQuest 924
step << Mage
    +Si vous envisagez de monter de niveau en AoE, choisissez le Guide AoE des Tarides manuellement. Sinon, complétez cette étape
]])


local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Horde
#xprate >1.99
#version 1
#group RestedXP Horde 1-22
#groupid RXP-SRGCE-H1
#defaultfor Undead
#name 1-7 Clairières de Tirisfal
#next 7-13 Clairières de Tirisfal

step << !Undead
    #completewith next
    +Si vous avez sélectionné un guide prévu pour les Morts-vivants. Il est recommandé que vous choisissiez la même zone de départ que celle par laquelle vous commencez
step << !Undead Mage
    #season 2
    #completewith next
    +Dans Season of Discovery, vous ne devez PAS commencer hors de la zone de départ de votre race en tant que Mage, car vous serez incapable d'obtenir votre première rune (|T133816:0|t[Gravure de gants (Javelot de glace)])
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
    #xprate <2.1
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
step << Warrior/Warlock/Priest/Mage
    #season 0
    #xprate >2.09
    #completewith Vendor
    +|cRXP_WARN_Tuez les |cRXP_ENEMY_Young Scavengers|r et les |cRXP_ENEMY_Duskbats|r. Dépouillez-les jusqu'à ce que vous ayez l'équivalent de 60 pièces de cuivre à vendre au marchand (en comptant votre équipement)|r << Mage
    +|cRXP_WARN_Tuez les |cRXP_ENEMY_Young Scavengers|r et les |cRXP_ENEMY_Duskbats|r. Dépouillez-les jusqu'à ce que vous ayez l'équivalent de 50 pièces de cuivre à vendre au marchand (en comptant votre équipement)|r << Priest
    +|cRXP_WARN_Tuez les |cRXP_ENEMY_Young Scavengers|r et les |cRXP_ENEMY_Duskbats|r. Dépouillez-les jusqu'à ce que vous ayez l'équivalent de 10 pièces de cuivre à vendre au marchand (en comptant votre équipement)|r << Warrior/Warlock
    .mob Young Scavenger
    .mob Duskbat
    .money >0.01
step
    #season 2
    #xprate >2.09
    #completewith Vendor
    +|cRXP_WARN_Tuez les |cRXP_ENEMY_Jeunes charognards|r et les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les jusqu'à ce que vous ayez l'équivalent de 28 pièces de cuivre à vendre au marchand (en comptant votre équipement)|r << Rogue/Priest/Warlock
    +|cRXP_WARN_Tuez les |cRXP_ENEMY_Young Scavengers|r et les |cRXP_ENEMY_Duskbats|r. Dépouillez-les jusqu'à ce que vous ayez l'équivalent de 15 pièces de cuivre à vendre au marchand (en comptant votre équipement)|r << Warrior/Mage
    .mob Young Scavenger
    .mob Duskbat
    .money >0.01
step
    #xprate >2.09
    #loop
    .goto Tirisfal Glades,29.18,68.94,40,0,0
    .goto Tirisfal Glades,29.92,70.30,40,0
    .goto Tirisfal Glades,30.70,69.28,40,0
    .goto Tirisfal Glades,29.18,68.94,40,0
    .goto Tirisfal Glades,29.10,67.66,40,0
    .goto Tirisfal Glades,30.19,65.32,40,0
    .xp 2 >>Montez jusqu'au niveau 2
    .mob Young Scavenger
    .mob Duskbat
    .money >0.01
step
    #season 2
    .goto Tirisfal Glades,31.36,66.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Marchand de runes|r.
    >>|cRXP_WARN_ASSUREZ-VOUS DE NE PAS VENDRE LES ÉQUIPEMENTS QUE VOUS POUVEZ ÉQUIPER|r
    >>|cRXP_BUY_Vendez votre surplus et achetez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d'Ivresse de la victoire|r] |cRXP_BUY_et la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d'Assaut frénétique|r] << Warrior
    >>|cRXP_BUY_Vendez les objets au marchand et achetez toutes les runes importantes pour AoE|r << Mage
    >>|cRXP_BUY_Vendez votre surplus et achetez toutes les runes suivantes:|r << Hunter/Warlock/Rogue/Priest
    .collect 204806,1 << Warrior --Rune of Victory Rush
    .collect 204716,1 << Warrior --Rune of Frenzied Assault
    .collect 208799,1 << Mage --Spell Notes: Living Bomb
    .collect 203746,1 << Mage --Spell Notes: Living Flame
    .collect 203748,1 << Mage --Spell Notes: Burnout
    .collect 225690,1 << Mage --Spell Notes: Frozen Orb
    .collect 203745,1 << Mage --Spell Notes: Ice Lance
    .collect 209852,1 << Hunter --Rune of Kill Command
    .collect 226401,1 << Hunter --Treatise on the Heart of the Lion
    .collect 216770,1 << Hunter --Treatise on Aspect of the Viper
    .collect 206168,1 << Hunter --Rune of the Chimera
    .collect 210818,1 << Hunter --Rune of Lone Wolf
    .collect 213124,1 << Hunter --Rune of Close Combat
    .collect 226252,1 << Hunter --Rune of the Guerrilla
    .collect 205215,1 << Warlock --Rune of Tactics
    .collect 210824,1 << Warlock --Rune of the Pact
    .collect 211477,1 << Warlock --Rune of Incinerate
    .collect 205230,1 << Warlock --Rune of Haunting
    .collect 228797,1 << Warlock --Grimoire of Fel Armor
    .collect 210979,1 << Rogue --Rune of Shadowstep
    .collect 221428,1 << Rogue --Rune of Foul Play
    .collect 204795,1 << Rogue --Rune of Shadowstrike
    .collect 208772,1 << Rogue --Rune of Saber Slash
    .collect 227922,1 << Rogue --Rune of the Swashbuckler
    .collect 212552,1 << Priest --Psychosophic Epiphany
    .collect 205940,1 << Priest --Memory of a Dark Purpose
    .collect 205951,1 << Priest --Memory of a Troubled Acolyte
    .collect 205932,1 << Priest --Prophecy of a King's Demise
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel
    >>Javelot de glace n'est utile que pour rendre une quête plus tard << Mage
    >>|cRXP_WARN_Vous obtiendrez le reste des runes plus tard|r
    .target Rune Broker
    .skipgossip
step
    #season 2
    .train 403470 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune d'Ivresse de la victoire|r] pour apprendre |T132342:0|t[Ivresse de la victoire]<< Warrior
    .train 415936 >> Utilisez les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Bombe vivante|r] pour apprendre |T236220:0|t[Bombe vivante] << Mage
    .train 401759 >> Utilisez les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Incandescence|r] pour apprendre |T236207:0|t[Incandescence] << Mage
    .train 440858 >> Utilisez les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Orbe gelé|r] pour apprendre |T135851:0|t[Orbe gelé] << Mage
    .train 401760 >> Utilisez les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Javelot de glace|r] pour apprendre |T135844:0|t[Javelot de glace] << Mage
    .train 401768 >> Utilisez le |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Flamme vivante|r] pour apprendre |T135820:0|t[Flamme vivante] << Mage
    .train 416009 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Tactiques|r] pour apprendre |T136150:0|t[Tactique démoniaque] << Warlock
    .train 425476 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune du pacte|r] pour apprendre |T237562:0|t[Pacte démoniaque] << Warlock
    .train 416015 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune d'Incinérer|r] pour apprendre |T135789:0|t[Incinérer] << Warlock
    .train 403919 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune cauchemardesque|r] pour apprendre |T236298:0|t[Hanter] << Warlock
    .train 403619 >> Utilisez le |T133733:0|t[Grimoire de Gangrarmure] pour apprendre |T136156:0|t[Gangrarmure] |cRXP_WARN_utilisez-la en tant qu'armure principale|r << Warlock
    .train 402852 >> Utilisez la |T135975:0|t[|cRXP_FRIENDLY_Prophétie d’une citadelle profanée|r] pour apprendre |T237570:0|t[Homoncules] << Priest
    .train 425447 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune d'Assaut frénétique|r] pour apprendre |T236317:0|t[Assaut frénétique] << Warrior
    .train 400101 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Pas de l'ombre|r] pour apprendre |T132303:0|t[Pas de l'ombre] << Rogue
    .train 432301 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Coup bas|r] pour apprendre |T236285:0|t[Avantage déloyal] << Rogue
    .train 400105 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Frappe-ténèbres|r] pour apprendre |T132323:0|t[Frappe-ténèbres] << Rogue
    .train 424984 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Coup de sabre|r] pour apprendre |T132375:0|t[Coup de sabre] << Rogue
    .train 415922 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Bretteur|r] pour apprendre |T134538:0|t[Tromblon] << Rogue
    .train 431663 >> Utilisez la |T135791:0|t[|cRXP_FRIENDLY_Épiphanie psychosophique|r] pour apprendre |T136181:0|t[Pointe mentale] << Priest
    .train 425216 >> Utilisez le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un noir dessein|r] pour apprendre |T237514:0|t[Fléau du Vide] << Priest
    .train 402862 >> Utilisez le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un acolyte tourmenté|r] pour apprendre |T237545:0|t[Pénitence] << Priest
    .train 402849 >> Utilisez la |T135975:0|t[|cRXP_FRIENDLY_Prophétie de la chute d’un roi|r] pour apprendre |T136149:0|t[Mot de l'ombre : Mort] << Priest
    .use 205947 << Priest --Prophecy of a Desecrated Citadel
    .use 212552 << Priest --Psychosophic Epiphany
    .use 205940 << Priest --Memory of a Dark Purpose
    .use 205951 << Priest --Memory of a Troubled Acolyte
    .use 205932 << Priest --Prophecy of a King's Demise
    .use 204716 << Warrior --Rune of Frenzied Assault
    .use 203746 << Mage --Spell Notes: Living Flame
    .use 209852 << Hunter --Rune of Kill Command
    .use 226401 << Hunter --Treatise on the Heart of the Lion
    .use 208799 << Mage --Spell Notes: Living Bomb
    .use 203748 << Mage --Spell Notes: Burnout
    .use 225690 << Mage --Spell Notes: Frozen Orb
    .use 203746 << Mage --Spell Notes: Living Flame
    .use 203745 << Mage --Spell Notes: Ice Lance
    .use 204716 << Warrior --Rune of Frenzied Assault
    .use 204806 << Warrior --Rune of Victory Rush
    .use 205215 << Warlock --Rune of Tactics
    .use 210824 << Warlock --Rune of the Pact
    .use 211477 << Warlock --Rune of Incinerate
    .use 205230 << Warlock --Rune of Haunting
    .use 228797 << Warlock --Grimoire of Fel Armor
    .use 210979 << Rogue --Rune of Shadowstep
    .use 221428 << Rogue --Rune of Foul Play
    .use 204795 << Rogue --Rune of Shadowstrike
    .use 208772 << Rogue --Rune of Saber Slash
    .use 227922 << Rogue --Rune of the Swashbuckler
step << Warlock
    #optional
    #sticky
    .aura 403619 >> |cRXP_WARN_N'oubliez pas d'activer votre|r |T136156:0|t[Gangrarmure]
step << Warrior
    #season 0
    #completewith Training1
    .goto Tirisfal Glades,32.22,65.64,8 >> Entrez dans le bâtiment
step << Priest/Mage
    #season 0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Joshua|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
	.collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .target Joshua Kien
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duesten|r
    .accept 77670 >> Acceptez la quête Méditation sur la non-mort
    .turnin 77670 >> Rendez la quête Méditation sur la non-mort
    .target Dark Cleric Duesten
step
    #optional
    #label Vendor
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
    #xprate <2.1
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elreth|r
    .accept 376 >> Acceptez la quête Les Maudits
    .goto Tirisfal Glades,30.86,66.05
    .target Novice Elreth
    .xp <2,1
step << Warlock/Mage
    #xprate >2.09
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elreth|r
    .accept 376 >> Acceptez la quête Les Maudits
    .goto Tirisfal Glades,30.86,66.05
    .target Novice Elreth
step << Warlock
    #season 2
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maximillion|r
    .accept 77672 >>Acceptez la quête La Rune perdue
    .turnin 77672 >>Rendez la quête La Rune perdue
    .target Maximillion
step << Mage
    #requires Percing
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Isabella|r
    .train 1459 >> Apprenez [Intelligence des Arcanes]
    .accept 77671 >>Acceptez la quête Recherches sur les sorts
    .turnin 77671 >>Rendez la quête Recherches sur les sorts
    .target Isabella
step << Mage
    #season 2
    #optional
    .equip 10,711 >> |cRXP_WARN_Equipez les|r |T132961:0|t[Gants en étoffe rapiécés]
    .use 711
    .engrave 10 >>|cRXP_WARN_Gravez vos|r gants avec|r |T236220:0|t[Bombe vivante]
    .engrave 7 >>|cRXP_WARN_Gravez votre pantalon avec|r |T135820:0|t[Flamme vivante]
    .engrave 5 >>|cRXP_WARN_Gravez votre plastron avec|r |T236207:0|t[Incandescence]
step << Mage
    #season 2
    #optional
    #sticky
    .engrave 15 >> Soyez à l'affut des capes qui pourrait tomber. Une fois que vous en obtenez une, gravez |T135851:0|t[Orbe gelé] dessus
    >>|cRXP_WARN_Ce sort est extrêmement puissant|r
step << Warlock
    #season 0
    #label Vendor
    .goto Tirisfal Glades,30.81,66.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kayla|r
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .target Kayla Smithe
    .money >0.1
step << Warlock
    #season 0
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
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elreth|r
    .accept 376 >> Acceptez la quête Les Maudits
    .goto Tirisfal Glades,30.86,66.05
    .target Novice Elreth
    .xp <2,1
step << !Warlock !Mage
    #xprate >2.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elreth|r
    .accept 376 >> Acceptez la quête Les Maudits
    .goto Tirisfal Glades,30.86,66.05
    .target Novice Elreth
step << Rogue/Priest/Warlock
    #season 2
    .goto Tirisfal Glades,32.41,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archibald|r
    >>|cRXP_BUY_Achetez-lui une|r |T132513:0|t[Ceinture en étoffe rapiécée] |cRXP_BUY_pour y graver une rune|r << Rogue/Priest
    >>|cRXP_BUY_Achetez-lui des|r |T132606:0|t[Brassards en étoffe rapiécés] |cRXP_BUY_pour y graver une rune|r << Warlock
    .collect 3596,1 << Warlock --Tattered Cloth Bracers
    .collect 3595,1 << Rogue/Priest --Tattered Cloth Belt
    .target Archibald Kava
step << Warlock
    #season 2
    .equip 10,711 >> |cRXP_WARN_Equipez les|r |T132961:0|t[Gants en étoffe rapiécés]
    .equip 9,3596 >> |cRXP_ENEMY_Équipez les|r |T132606:0|t[Brassards en étoffe rapiécés]
    .use 711
    .use 3596
    .engrave 10 >>|cRXP_WARN_Gravez vos gants avec|r |T236298:0|t[Hanter]
    .engrave 9 >> |cRXP_WARN_Gravez vos brassards avec|r |T135789:0|t[Incinérer]
    .engrave 7 >> |cRXP_WARN_Gravez votre pantalon avec|r |T237562:0|t[Pacte démoniaque]
    .engrave 5 >> |cRXP_WARN_Gravez votre plastron avec|r |T136150:0|t[Tactique démoniaque]
step << Priest
    #season 2
    .equip 10,711 >> |cRXP_WARN_Equipez les|r |T132961:0|t[Gants en étoffe rapiécés]
    .equip 6,3595 >> |cRXP_WARN_Équipez la|r |T132513:0|t[Ceinture en étoffe rapiécée]
    .use 711
    .use 3595
    .engrave 6 >> Gravez |T136181:0|t[Pointe mentale] sur votre ceinture
    .engrave 10 >> Gravez |T136149:0|t[Mot de l'ombre : Mort] sur vos gants
    .engrave 7 >> Gravez |T237570:0|t[Homoncules] sur votre pantalon
step << Priest
    #season 2
    #optional
    #sticky
    >>|cRXP_WARN_Soyez à l'affut de potentielles|r Bottes |cRXP_WARN_qui pourraient tomber. Équipez-les et gravez|r |T237514:0|t[Fléau du Vide] |cRXP_WARN_dessus|r
    .engrave 8 >> Gravez vos |T132539:0|t[Bottes] avec |T237514:0|t[Fléau du Vide]
step << Rogue
    #season 2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_David|r
    .accept 77669 >>Acceptez la quête La rune écarlate
    .turnin 77669 >>Rendez la quête La rune écarlate
    .target David Trias
step << Rogue
    #season 2
    #optional
    .equip 10 >> Équipez les |T132952:0|t[Gants en cuir craquelé]
    .equip 6,3595 >> |cRXP_WARN_Équipez la|r |T132513:0|t[Ceinture en étoffe rapiécée]
    .engrave 10 >> Gravez |T132375:0|t[Coup de sabre] sur vos gants
    .engrave 6 >> Gravez |T132303:0|t[Pas de l'ombre] sur votre ceinture
    .use 2125 --Cracked Leather Gloves
    .use 3595 --Tattered Cloth Belt
step << Rogue
    #season 2
    #sticky
    #optional
    >>|cRXP_WARN_Soyez à l'affût de toute|r Ceinture/Cape/Brassards |cRXP_WARN_qui pourrait tomber|r|cRXP_WARN_. Équipez-les et gravez les runes correspondantes|r
    .engrave 15 >> Gravez |T134538:0|t[Tromblon] sur votre |T133771:0|t[Cape]
    .engrave 9 >> Gravez |T236285:0|t[Avantage déloyal] sur vos |T133830:0|t[Brassards]
step << Warrior
    #season 0
    #completewith next
    #label Vendor
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archibald|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Archibald Kava
    .money >0.1
step << Warrior
    #season 0
    #label Training1
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dannal|r
    .train 6673 >>Apprenez [Cri de guerre]
    .target Dannal Stern
step << Warrior
    #season 2
    #label Training1
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dannal|r
    .train 6673 >>Apprenez [Cri de guerre]
    .accept 77668 >> Acceptez la quête La Rune perdue
    .turnin 77668 >> Rendez la quête La Rune perdue
    .target Dannal Stern
step << Warrior
    #season 2
    .equip 10 >> Équipez les |T132938:0|t[Gants en anneaux ternis]
    .engrave 10 >> Gravez |T132342:0|t[Ivresse de la victoire] sur vos gants
    .engrave 7 >> Gravez |T236317:0|t[Assaut frénétique] sur votre pantalon
    >>|cRXP_WARN_Vous obtiendrez une épée à deux mains en récompense d'une quête à venir bientôt|r
    .use 2385 -- Tarnished Chain Gloves
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
    #xprate >2.09
    #completewith next
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
    #xprate <2.1
    #completewith Vendor2
    +|cRXP_WARN_Tuez des |cRXP_ENEMY_Mindless Zombies|r et des |cRXP_ENEMY_Wretched Zombies|r. Dépouillez-les jusqu'à ce que vous ayez l'équivalent de 33 pièces de cuivre à vendre au marchand (en comptant votre équipement)|r
    .mob Mindless Zombie
    .mob Wretched Zombie
    .money >0.0033
step << Mage/Warlock/Priest
    #xprate <2.1
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
    #xprate <2.1
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
    #xprate <2.1
    #season 2
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
    .target +Maximillion << Warlock
    .goto Tirisfal Glades,30.91,66.34 << Warlock
    .turnin 3098 >> Rendez la quête Parchemin glyphé << Mage
    .target +Isabella << Mage
    .goto Tirisfal Glades,30.94,66.06 << Mage
    .turnin 3097 >> Rendez la quête Parchemin béni << Priest
    .target +Dark Cleric Duesten << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
step
    #xprate <2.1
    #season 0
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
    #xprate <2.1
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
    #xprate <2.1
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
step << Mage/Warlock/Priest
    #xprate <2.1
    .goto Tirisfal Glades,32.25,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Joshua|r
    >>Ne descendez PAS à moins d'une pièce d'argent << Mage/Warlock/Priest
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Joshua Kien
    .money >0.1
    .isOnQuest 3901
    .itemcount 159,<20
step
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sarvis|r et à |cRXP_FRIENDLY_Elreth|r
    .turnin 3901 >> Rendez la quête Faites cliqueter les thorax !
    .target +Shadow Priest Sarvis
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    .turnin 376 >> Rendez la quête Les maudits
    .accept 6395 >> Acceptez la quête La dernière volonté de Marla
    .target +Novice Elreth
    .goto Tirisfal Glades,30.86,66.05
step << Mage/Warlock/Priest
    #xprate >2.09
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
    #xprate >2.09
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
    #xprate >2.09
    #season 2
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
    .target +Shadow Priest Sarvis
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    .turnin 376 >> Rendez la quête Les maudits
    .accept 6395 >> Acceptez la quête La dernière volonté de Marla
    .target +Novice Elreth
    .goto Tirisfal Glades,30.86,66.05
    .turnin 3099 >> Rendez la quête Rouleau contaminé << Warlock
    .goto Tirisfal Glades,30.91,66.34 << Warlock
    .target +Maximillion << Warlock
    .turnin 3098 >> Rendez la quête Parchemin glyphé << Mage
    .goto Tirisfal Glades,30.94,66.06 << Mage
    .target +Isabella << Mage
    .turnin 3097 >> Rendez la quête Parchemin béni << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
    .target +Dark Cleric Duesten << Priest
step
    #xprate >2.09
    #season 0
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
    .target +Shadow Priest Sarvis
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    .turnin 376 >> Rendez la quête Les maudits
    .accept 6395 >> Acceptez la quête La dernière volonté de Marla
    .target +Novice Elreth
    .goto Tirisfal Glades,30.86,66.05
    .turnin 3099 >> Rendez la quête Rouleau contaminé << Warlock
    .goto Tirisfal Glades,30.91,66.34 << Warlock
    .target +Maximillion << Warlock
    .turnin 3098 >> Rendez la quête Parchemin glyphé << Mage
    .goto Tirisfal Glades,30.94,66.06 << Mage
    .target +Isabella << Mage
    .turnin 3097 >> Rendez la quête Parchemin béni << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
    .target +Dark Cleric Duesten << Priest
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
    #season 0
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maximillion|r
    .train 172 >> Apprenez [Corruption]
    .target Maximillion
step << Mage
    #season 0
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Isabella|r
    .train 116 >> Apprenez [Eclair de givre]
    .target Isabella
step
    #xprate <1.5
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deathguard Saltain|r et à |cRXP_FRIENDLY_Executor Arren|r
    .accept 3902 >> Acceptez la quête La chasse aux trésors
    .goto Tirisfal Glades,31.61,65.62
    .target +Deathguard Saltain
    .accept 380 >> Acceptez la quête Les grottes des Tisse-nuit
    .goto Tirisfal Glades,32.15,66.01
    .target +Executor Arren
step
    #xprate >1.49
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Exécuteur Arren|r
    .accept 380 >> Acceptez la quête Les grottes des Tisse-nuit
    .goto Tirisfal Glades,32.15,66.01
    .target Executor Arren
step << Rogue/Warrior
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archibald|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Archibald Kava
    .money >0.1
    .isOnQuest 3095 << Warrior
    .isOnQuest 3096 << Rogue
step << Warrior
    #season 2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >> Rendez la quête Parchemin simple
    .train 100 >> Apprenez [Charge]
    .train 772 >> Apprenez [Pourfendre]
    .target Dannal Stern
    .money <0.02
 step << Warrior
    #season 2
    #label Training2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >> Rendez la quête Parchemin simple
    .train 772 >> Apprenez [Pourfendre]
    .target Dannal Stern
    .money <0.01
step << Warrior
    #season 0
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >> Rendez la quête Parchemin simple
    .train 100 >> Apprenez [Charge]
    .train 772 >> Apprenez [Pourfendre]
    .target Dannal Stern
    .money <0.02
 step << Warrior
    #season 0
    #label Training2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >> Rendez la quête Parchemin simple
    .train 772 >> Apprenez [Pourfendre]
    .target Dannal Stern
    .money <0.01
step << Rogue
    #season 2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_David|r
    .turnin 3096 >> Rendez la quête Parchemin codé
    .target David Trias
step << Rogue
    #season 0
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_David|r
    .turnin 3096 >> Rendez la quête Parchemin codé
    .train 53 >> Apprenez [Attaque sournoise]
    .money <0.04
    .target David Trias
step << Rogue
    #season 0
    #label Training2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_David|r
    .turnin 3096 >> Rendez la quête Parchemin codé
    .target David Trias
step
    #xprate >1.49
    #optional
    #completewith NightWebStart
    .abandon 3902 >> Abandonnez la quête La chasse aux trésors
step
    #xprate <1.5
    #loop
	.goto Tirisfal Glades,32.37,64.37,
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
    #label NightWebStart
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
step << Warlock
    #season 2
    #completewith RuneofHaunting
    >>Tuez les |cRXP_ENEMY_Night Web Spiders|r à l'intérieur de la grotte
	.complete 380,2 --Kill Night Web Spider (x8)
    .mob Night Web Spider
step << Warrior
    #season 2
    #completewith RuneofVictoryRush
    >>Tuez les |cRXP_ENEMY_Night Web Spiders|r à l'intérieur de la grotte
	.complete 380,2 --Kill Night Web Spider (x8)
    .mob Night Web Spider
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
step
    #xprate <1.5
    #softcore
    #completewith Scavenging
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
step
    #xprate >1.49
    #softcore
    #completewith NightWebH
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
step << Warlock
    #softcore
    #completewith ScarletC
    .cast 688 >>Lancez [Invocation d'un diablotin]
step << skip
    #hardcore
    #completewith next
    .goto 1420,26.027,60.607,-1
    .goto 1420,24.508,59.360,-1
    .goto 1420,23.572,59.239,-1
    .goto Tirisfal Glades,31.08,64.88,30 >>|cRXP_WARN_Effectuez un Logout skip à l'intérieur de la grotte en sautant sur un déchiqueteur, un puits ou la planche en bois coincée dans le mur, puis déconnectez-vous et reconnectez-vous|r
    >>|cRXP_WARN_Sinon, retournez au Glas|r
step
    #xprate <1.5
    #label Scavenging
    .goto Tirisfal Glades,31.61,65.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Saltain|r
    .turnin 3902 >> Rendez la quête La chasse aux trésors
    .target Deathguard Saltain
step
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
    #softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
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
    #season 2
    .goto Tirisfal Glades,31.36,66.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Marchand de runes|r.
    >>|cRXP_WARN_ASSUREZ-VOUS DE NE PAS VENDRE LES ÉQUIPEMENTS QUE VOUS POUVEZ ÉQUIPER|r
    .vendor >> |cRXP_BUY_Vendez votre surplus et achetez-lui toutes les |T134419:0|t|cRXP_WARN_[Runes]|r dont vous avez besoin|r
    .target Rune Broker
    .skipgossip
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
    .xp 5+1900 >>Montez votre expérience jusqu'à 1900+/2800xp
step
    .goto Tirisfal Glades,38.24,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calvin|r
    .accept 8 >> Acceptez la quête Un marché de voleur
    .target Calvin Montague

]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate >1.99
<< Horde
#name 7-13 Clairières de Tirisfal
#version 1
#group RestedXP Horde 1-22
#groupid RXP-SRGCE-H1
#defaultfor Undead
#next 13-20 Les Tarides

step
    .goto Tirisfal Glades,40.91,54.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Nécrogarde Simmer|r
    .accept 365 >>Acceptez la quête Les champs du Chagrin
    .target Deathguard Simmer
step << skip
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gordo|r.
    >>|cRXP_WARN_C'est une abomination qui patrouille le long de la route pour Brill|r
    .accept 5481 >>Acceptez la quête La tâche de Gordo
    .unitscan Gordo
step << Priest
    .goto Tirisfal Glades,52.59,55.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bowen|r
    .train 3908 >> Apprenez |T136249:0|t[Couture]. Gardez vos |T132889:0|t[Etoffe de lin]. Cela vous permettra de fabriquer une baguette plus tard
    .target Bowen Brisboise
step
    #softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au  |cRXP_FRIENDLY_Spirit Healer|r ou allez jusqu'à Brill
    .target Gardien des âmes
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
step
    #xprate >1.49
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gretchen|r
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_se trouve au deuxième étage de l'auberge|r
    .accept 375 >>Acceptez la quête Le frisson de la mort
    .target Gretchen Dedmar
    .xp <7,1
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
    #season 0
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r au second étage
    .train 1757 >> Apprenez [Attaque Pernicieuse]
    .target Marion Call
    .money <0.01
step << Rogue
    #season 2
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r au second étage
    .train 1757 >> Apprenez [Attaque Pernicieuse]
    .train 921 >> Apprenez [Vol à la tire]
    .target Marion Call
    .money <0.02
step << Rogue
    #optional
    #season 2
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r au second étage
    .train 921 >> Apprenez [Vol à la tire]
    .target Marion Call
    .money >0.02
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
    >>|cRXP_BUY_Achetez-lui des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r <<Warrior/Rogue
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
    >>|cRXP_WARN_Vous avez besoin de Soins inférieurs (Rang 2) pour cette quête|r
    .complete 5650,1 --Heal and fortify Deathguard Kel (1)
    .target Deathguard Kel
step << skip
    #completewith Claws
    >>Ramassez l' |cRXP_LOOT_Herbe des ténèbres|r sur le sol
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
step << skip
    #label GloomWeed
    #loop
    .goto Tirisfal Glades,39.55,50.64,0
    .goto Tirisfal Glades,44.43,57.33,0
    .goto Tirisfal Glades,39.55,50.64,50,0
    .goto Tirisfal Glades,44.43,57.33,50,0
    >>Terminez de ramasser l' |cRXP_LOOT_Herbe des ténèbres|r sur le sol
    .complete 5481,1 --Gloom Weed (3)
step << Warrior
    #optional
    #season 2
    #xprate >1.49
    #completewith DBlood
    >>Tuez les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour une |cRXP_LOOT_Tête de chauve-souris coupée|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
    .isOnQuest 375
step
    #optional
    #xprate >1.49
    #completewith next
    >>Tuez les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #xprate >1.49
    #label DBlood
    #loop
    .goto Tirisfal Glades,43.97,57.27,0
    .goto Tirisfal Glades,40.57,47.23,0
    .goto Tirisfal Glades,48.03,53.43,80,0
    .goto Tirisfal Glades,43.97,57.27,80,0
    .goto Tirisfal Glades,41.01,55.94,60,0
    .goto Tirisfal Glades,40.57,47.23,60,0
    .goto Tirisfal Glades,40.89,42.77,60,0
    .goto Tirisfal Glades,39.12,39.85,60,0
    >>Terminez de tuer les |cRXP_ENEMY_Sombredogues|r. Dépouillez-les pour leur |cRXP_LOOT_Sang|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound
step << Priest
    #ah
    #completewith FinishRings
    >>|cRXP_WARN_Commencez à récolter 3 stacks d'|r |T132889:0|t[Etoffe de lin]|cRXP_WARN_. Ils seront utilisés pour fabriquer une|r |T135139:0|t[Baguette magique inférieure] |cRXP_WARN_plus tard|r
    >>|cRXP_WARN_Si vous ne voulez pas le faire ou si vous préférez l'acheter à l'Hôtel des ventes plus tard, passez cette étape|r
    .collect 2589,60 --Linen Cloth (60)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #ssf
    #completewith FinishRings
    >>|cRXP_WARN_Commencez à récolter 3 stacks d'|r |T132889:0|t[Etoffe de lin]|cRXP_WARN_. Ils seront utilisés pour fabriquer une|r |T135139:0|t[Baguette magique inférieure] |cRXP_WARN_plus tard|r
    .collect 2589,60 --Linen Cloth (60)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Rogue
    #season 2
    #completewith next
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Fermiers de Tirisfal|r et les |cRXP_ENEMY_Journaliers de Tirisfal|r puis tuez-les. Récupérez le |T134327:0|t[|cRXP_LOOT_Morceau supérieur gauche de carte|r]
    .collect 208036,1 --Top-Left Map Piece (1)
    .mob Tirisfal Farmer
    .mob Tirisfal Farmhand
    .train 400095,1
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
step << Rogue
    #season 2
    #loop
    .goto Tirisfal Glades,36.63,50.09,0
    .goto Tirisfal Glades,37.20,52.17,50,0
    .goto Tirisfal Glades,36.64,50.09,50,0
    .goto Tirisfal Glades,36.10,49.07,50,0
    .goto Tirisfal Glades,35.08,49.82,50,0
    .goto Tirisfal Glades,35.30,50.91,50,0
    .goto Tirisfal Glades,34.57,51.58,50,0
    .goto Tirisfal Glades,36.63,50.09,50,0
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Fermiers de Tirisfal|r et les |cRXP_ENEMY_Journaliers de Tirisfal|r puis tuez-les. Récupérez le |T134327:0|t[|cRXP_LOOT_Morceau supérieur gauche de carte|r]
    .collect 208036,1 --Top-Left Map Piece (1)
    .mob Tirisfal Farmer
    .mob Tirisfal Farmhand
    .train 400095,1
step << Rogue/Mage/Priest
    #season 2
    #completewith next
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Guerriers écarlates|r et tuez-les. Dépouillez-les pour le |T134327:0|t[|cRXP_LOOT_Morceau supérieur droit de carte|r] << Rogue
    >>Tuez les |cRXP_ENEMY_Guerriers écarlates|r. Dépouillez-les pour les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : VALAFM EVNTMIE|r] << Mage
    >>Tuez les |cRXP_ENEMY_Guerriers écarlates|r. Dépouillez-les pour la |T135975:0|t[|cRXP_FRIENDLY_Prophétie d’une citadelle profanée|r] << Priest
    >>|cRXP_WARN_N'importe lequel des Humanoïdes de la Croisade écarlate à Tirisfal peut faire tomber le Morceau de carte|r << Rogue
    >>|cRXP_WARN_N'importe lequel des Humanoïdes de la Croisade écarlate à Tirisfal peut faire tomber les Notes de sort|r << Mage
    >>|cRXP_WARN_N'importe lequel des Humanoïdes de la Croisade écarlate à Tirisfal peut faire tomber la Prophétie|r << Priest
    .collect 208035,1 << Rogue --Top-Right Map Piece (1)
    .collect 203752,1 << Mage --Spell Notes: MILEGIN VALF (1)
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel (1)
    .mob Scarlet Warrior
    .train 400095,1 << Rogue
    .train 401768,1 << Mage
    .train 402852,1 << Priest
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
step << Rogue/Mage/Priest
    #season 2
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
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Guerriers écarlates|r et tuez-les. Dépouillez-les pour le |T134327:0|t[|cRXP_LOOT_Morceau supérieur droit de carte|r] << Rogue
    >>Tuez les |cRXP_ENEMY_Guerriers écarlates|r. Dépouillez-les pour les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : VALAFM EVNTMIE|r] << Mage
    >>Tuez les |cRXP_ENEMY_Guerriers écarlates|r. Dépouillez-les pour la |T135975:0|t[|cRXP_FRIENDLY_Prophétie d’une citadelle profanée|r] << Priest
    |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]
    >>|cRXP_WARN_N'importe lequel des Humanoïdes de la Croisade écarlate à Tirisfal peut faire tomber le Morceau de carte|r << Rogue
    >>|cRXP_WARN_N'importe lequel des Humanoïdes de la Croisade écarlate à Tirisfal peut faire tomber les Notes de sort|r << Mage
    >>|cRXP_WARN_N'importe lequel des Humanoïdes de la Croisade écarlate à Tirisfal peut faire tomber la Prophétie|r << Priest
    .collect 208035,1 << Rogue --Top-Right Map Piece (1)
    .collect 203752,1 << Mage --Spell Notes: MILEGIN VALF (1)
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel (1)
    .mob Scarlet Warrior
    .train 400095,1 << Rogue
    .train 401768,1 << Mage
    .train 402852,1 << Priest
step << Mage
    #season 2
    .collect 211779,1 >>Vous avez besoin d'un |T135933:0|t[Charme de compréhension] acheté au |cRXP_FRIENDLY_Marchand de composants|r pour utiliser l'objet
    .train 401768 >>|cRXP_WARN_Utilisez les|r|T134939:0|t[|cRXP_FRIENDLY_Notes de sort : VALAFM EVNTMIE|r] |cRXP_WARN_pour apprendre|r |T135820:0|t[Flamme vivante]
    .use 203752
    .itemcount 203752,1
step << Mage/Priest
    #season 2
    .goto Tirisfal Glades,25.6,48.2
    >>Tuez le |cRXP_ENEMY_Branchiar|r. Dépouillez-le pour les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : GDDOT EG IEVSIR|r] << Mage
    >>Tuez |cRXP_ENEMY_Branchiar|r. Dépouillez-le pour le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un noir dessein|r] << Priest
    >>|cRXP_WARN_Il s'agit d'un elite de niveau 7 qui n'est pas facile à tuer. Passez-le pour l'instant s'il est trop difficile|r
    .collect 203753,1 << Mage --Spell Notes: RING SEFF OSTROF (1)
    .collect 205940,1 << Priest --Memory of a Dark Purpose (1)
    .mob Gillgar
    .train 401765,1 << Mage
    .train 425216,1 << Priest
step << Mage
    #season 2
    .collect 211779,1 >>Vous avez besoin d'un |T135933:0|t[Charme de compréhension] acheté au |cRXP_FRIENDLY_Marchand de composants|r pour utiliser l'objet
    .train 401765 >>|cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : GDDOT EG IEVSIR|r] |cRXP_WARN_pour apprendre|r |T236227:0|t[Doigts de givre].
    .use 203753
    .itemcount 203753,1
step
    #hardcore
    #completewith BrillTurnin1
    .hs >> Utilisez votre Pierre de foyer pour revenir à Brill
    .subzoneskip 159
    .cooldown item,6948,>0,1
    .bindlocation 2119,1
step
    #hardcore
    #completewith BrillTurnin1
    .subzone 159 >> Retournez à Brill
    .subzoneskip 159
    .cooldown item,6948,<0
step
    #softcore
    #completewith BrillTurnin1
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step << skip
    #softcore
    #loop
    .goto Tirisfal Glades,57.71,48.96,0
    .goto Tirisfal Glades,58.29,49.80,30,0
    .goto Tirisfal Glades,57.71,48.96,30,0
    .goto Tirisfal Glades,59.26,46.73,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apprenti apothicaire Holland|r, il patrouille autour du cimetière
    .turnin 5481 >>Rendez la quête La tâche de Gordo
    .accept 5482 >>Acceptez la quête Herbe maléfique
    .target Junior Apothecary Holland
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r, à |cRXP_FRIENDLY_Johaan|r et à |cRXP_FRIENDLY_Zygand|r
    .turnin 404 >>Rendez la quête Une tâche putride
    .accept 426 >>Acceptez la quête La chute des moulins
    .target +Deathguard Dillinger
    .goto Tirisfal Glades,58.20,51.43
    .turnin 367 >>Rendez la quête Une Peste nouvelle
    .turnin 365 >>Rendez la quête Les champs du Chagrin
    .accept 368 >>Acceptez la quête Une Peste nouvelle
    .accept 407 >>Acceptez la quête Les champs du Chagrin
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.40
    .turnin 427 >>Rendez la quête En guerre avec la Croisade écarlate
    .accept 370 >>Acceptez la quête En guerre avec la Croisade écarlate
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .isQuestComplete 367
step
    #label BrillTurnin1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r, à |cRXP_FRIENDLY_Johaan|r et à |cRXP_FRIENDLY_Zygand|r
    .turnin 404 >>Rendez la quête Une tâche putride
    .accept 426 >>Acceptez la quête La chute des moulins
    .target +Deathguard Dillinger
    .goto Tirisfal Glades,58.20,51.43
    .turnin 365 >>Rendez la quête Les champs du Chagrin
    .accept 407 >>Acceptez la quête Les champs du Chagrin
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.40
    .turnin 427 >>Rendez la quête En guerre avec la Croisade écarlate
    .accept 370 >>Acceptez la quête En guerre avec la Croisade écarlate
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
step
    #xprate >1.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Burgess|r, à l' |cRXP_FRIENDLY_Affiche de recherche|r et à |cRXP_FRIENDLY_Sevren|r dans le bâtiment
    .accept 374 >>Acceptez la quête Preuves de la mort
    .target +Deathguard Burgess
    .goto Tirisfal Glades,60.93,52.01
    .accept 398 >>Acceptez la quête On recherche: Œil-de-ver
    .goto Tirisfal Glades,60.74,51.52
    .accept 358 >>Acceptez la quête Les Profanateurs
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
 step
    #xprate >1.49
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Achetez-lui une|r |T132891:0|t[Bobine de fil grossier] |cRXP_BUY_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    #xprate >1.49
    .goto Tirisfal Glades,61.97,51.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Zélote écarlate capturé|r en bas des escaliers au fond de l'auberge
    .turnin 407 >>Rendez la quête Les champs du Chagrin
    .target Captured Scarlet Zealot
step
    #xprate >1.49
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Rendez la quête Le frisson de la mort
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beryl|r au deuxième étage
    .turnin 5650 >>Rendez la quête Vêtements des ténèbres
    .train 591 >>Apprenez [Châtiment]
    .train 17 >>Apprenez [Mot de pouvoir : Bouclier]
    .target Dark Cleric Beryl
step
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gretchen|r
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_se trouve au deuxième étage de l'auberge|r
    .accept 375 >>Acceptez la quête Le frisson de la mort
    .target Gretchen Dedmar
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beryl|r au deuxième étage
	.train 139 >> Apprenez vos sorts de classe
    .target Dark Cleric Beryl
    .xp <8,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cain|r au second étage
    .train 205 >> Apprenez vos sorts de classe
    .target Cain Firesong
    .xp <8,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à  |cRXP_FRIENDLY_Austil|r
    .train 284 >> Apprenez vos sorts de classe
    .target Austil de Mon
    .xp <8,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r au second étage
    .train 6760 >> Apprenez vos sorts de classe
    .target Marion Call
    .xp <8,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rupert|r
    .train 980 >> Apprenez vos sorts de classe
    .target Rupert Boch
    .xp <8,1
step << Rogue/Warrior
    .goto Tirisfal Glades,61.81,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Infirmière Neela|r
    >>|cRXP_WARN_Essayez d'en fabriquer pendant les temps d'attente, par exemple pour les Zeppelins|r
    .train 3273 >>Apprenez [Premiers soins]
    .target Nurse Neela
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
    .collect 2494,1,367,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith NewPlague1
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
    .collect 2488,1,367,1 --Collect Gladius (1)
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith NewPlague1
    +Équipez le [Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << skip
    #hardcore
    #loop
    .goto Tirisfal Glades,57.71,48.96,0
    .goto Tirisfal Glades,58.29,49.80,30,0
    .goto Tirisfal Glades,57.71,48.96,30,0
    .goto Tirisfal Glades,59.26,46.73,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apprenti apothicaire Holland|r, il patrouille autour du cimetière
    .turnin 5481 >>Rendez la quête La tâche de Gordo
    .accept 5482 >>Acceptez la quête Herbe maléfique
    .target Junior Apothecary Holland
step << Warrior
    #season 2
    #xprate <1.5
    #completewith DuskbatTrophy1
    >>Tuez les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour une |cRXP_LOOT_Tête de chauve-souris coupée|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #xprate <1.5
    #completewith next
    >>Tuez les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #xprate <1.5
    #loop
    .goto Tirisfal Glades,58.20,58.15,0
    .goto Tirisfal Glades,58.20,58.15,50,0
    .goto Tirisfal Glades,57.98,61.66,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .goto Tirisfal Glades,54.73,64.28,50,0
    .goto Tirisfal Glades,52.84,62.26,50,0
    .goto Tirisfal Glades,50.52,61.21,50,0
    .goto Tirisfal Glades,47.88,60.87,50,0
    .goto Tirisfal Glades,46.09,59.70,50,0
    .goto Tirisfal Glades,43.49,61.81,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    >>Tuez les |cRXP_ENEMY_Sombredogues|r. Dépouillez-les pour leur |cRXP_LOOT_Sang|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
step << Rogue/Warrior
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,58.20,58.15,50,0
    .goto Tirisfal Glades,57.98,61.66,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .goto Tirisfal Glades,54.73,64.28,50,0
    .goto Tirisfal Glades,52.84,62.26,50,0
    .goto Tirisfal Glades,50.52,61.21,50,0
    .goto Tirisfal Glades,47.88,60.87,50,0
    .goto Tirisfal Glades,46.09,59.70,50,0
    .goto Tirisfal Glades,43.49,61.81,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    >>Tuez les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .xp >7+3960,1
step << Rogue/Warrior
    #xprate <1.5
    #optional
    #label DuskbatTrophy1
    #loop
    .goto Tirisfal Glades,58.20,58.15,50,0
    .goto Tirisfal Glades,57.98,61.66,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .goto Tirisfal Glades,54.73,64.28,50,0
    .goto Tirisfal Glades,52.84,62.26,50,0
    .goto Tirisfal Glades,50.52,61.21,50,0
    .goto Tirisfal Glades,47.88,60.87,50,0
    .goto Tirisfal Glades,46.09,59.70,50,0
    .goto Tirisfal Glades,43.49,61.81,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .xp 7+3260 >> Montez votre expérience jusqu'à 3260+/4500xp
--XX 700 (375)+540 (367)
step
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,56.45,62.62,0
    .goto Tirisfal Glades,58.20,58.15,50,0
    .goto Tirisfal Glades,57.98,61.66,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .goto Tirisfal Glades,54.73,64.28,50,0
    .goto Tirisfal Glades,52.84,62.26,50,0
    .goto Tirisfal Glades,50.52,61.21,50,0
    .goto Tirisfal Glades,47.88,60.87,50,0
    .goto Tirisfal Glades,46.09,59.70,50,0
    .goto Tirisfal Glades,43.49,61.81,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    >>Tuez les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .xp >7+3690,1
step
    #xprate >1.49
    #optional
    #label DuskbatTrophy1
    .goto Tirisfal Glades,56.45,62.62,0
    .goto Tirisfal Glades,58.20,58.15,50,0
    .goto Tirisfal Glades,57.98,61.66,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .goto Tirisfal Glades,54.73,64.28,50,0
    .goto Tirisfal Glades,52.84,62.26,50,0
    .goto Tirisfal Glades,50.52,61.21,50,0
    .goto Tirisfal Glades,47.88,60.87,50,0
    .goto Tirisfal Glades,46.09,59.70,50,0
    .goto Tirisfal Glades,43.49,61.81,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .xp 7+2640 >> Montez votre expérience jusqu'à 2640+/4500xp
--XX 700 (375)+540 (367)
step
    #xprate <1.5
    #hardcore
    #completewith NewPlague1
    .subzone 159 >> Retournez à Brill
    .subzoneskip 159
step
    #xprate <1.5
    #softcore
    #completewith NewPlague1
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    #label NewPlague1
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Johaan|r
    .turnin 367 >>Rendez la quête Une Peste nouvelle
    .accept 368 >>Acceptez la quête Une Peste nouvelle
    .target Apothecary Johaan
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Burgess|r, à l' |cRXP_FRIENDLY_Affiche de recherche|r et à |cRXP_FRIENDLY_Sevren|r dans le bâtiment
    .accept 374 >>Acceptez la quête Preuves de la mort
    .target +Deathguard Burgess
    .goto Tirisfal Glades,60.93,52.01
    .accept 398 >>Acceptez la quête On recherche: Œil-de-ver
    .goto Tirisfal Glades,60.74,51.52
    .accept 358 >>Acceptez la quête Les Profanateurs
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
step
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Achetez-lui une|r |T132891:0|t[Bobine de fil grossier] |cRXP_BUY_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Rendez la quête Le frisson de la mort
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    #xprate <1.5
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beryl|r au deuxième étage
	.train 139 >> Apprenez vos sorts de classe
    .target Dark Cleric Beryl
    .xp <8,1
step << Mage
    #xprate <1.5
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cain|r au second étage
    .train 205 >> Apprenez vos sorts de classe
    .target Cain Firesong
    .xp <8,1
step << Warrior
    #xprate <1.5
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à  |cRXP_FRIENDLY_Austil|r
    .train 284 >> Apprenez vos sorts de classe
    .target Austil de Mon
    .xp <8,1
step << Rogue
    #xprate <1.5
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r au second étage
    .train 6760 >> Apprenez vos sorts de classe
    .target Marion Call
    .xp <8,1
step << Warlock
    #xprate <1.5
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rupert|r
    .train 980 >> Apprenez vos sorts de classe
    .target Rupe
step << Rogue
    #xprate <1.5
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Stylet] (4s 01c). Vous reviendrez plus rien si vous n'avez pas encore assez d'argent
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #xprate <1.5
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Achetez un|r [Stiletto] |cRXP_BUY_à Oliver|r
    .collect 2494,1,398,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #xprate <1.5
    #optional
    #completewith Doomweed
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    #xprate <1.5
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Gladius] (5s 36c). Vous reviendrez plus rien si vous n'avez pas encore assez d'argent
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #xprate <1.5
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Achetez un|r [Gladius] |cRXP_BUY_à Oliver|r
    .collect 2488,1,398,1 --Collect Gladius (1)
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #xprate <1.5
    #optional
    #completewith Doomweed
    +Équipez le [Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Rogue
    #season 2
    #completewith MaggotEye
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Gnolls Poil-Putride|r et tuez-les. Dépouillez-les pour le |T134327:0|t[|cRXP_LOOT_Morceau inférieur gauche de carte|r]
    .collect 208038,1 --Bottom-Left Map Piece (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Gnoll
    .mob Rot Hide Graverobber
    .train 400095,1
step << Warrior
    #season 2
    #completewith MaggotEye
    >>Tuez tous les types de |cRXP_ENEMY_Gnolls Poil-Putride|r. Dépouillez-les pour une |cRXP_LOOT_Tête de Gnoll coupée|r
    .collect 204478,1 --Severed Gnoll Head (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Gnoll
    .mob Rot Hide Graverobber
    .train 403475,1
step << skip
    #completewith next
    >>Ramassez l' |cRXP_LOOT_Herbe maléfique|r sur le sol
    >>|cRXP_WARN_Ils se trouvent près des arbres dans la zone des Gnolls|r.
    .complete 5482,1 --Doom Weed (10)
    .isOnQuest 5482
step
    #loop
    .goto Tirisfal Glades,55.24,42.54,0
    .goto Tirisfal Glades,56.31,39.67,40,0
    .goto Tirisfal Glades,54.71,41.19,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    .goto Tirisfal Glades,56.43,43.92,40,0
    >>Tuez les |cRXP_ENEMY_Profanateurs Poil-Putride|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    .complete 358,1 --Rot Hide Graverobber (8)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Graverobber
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Bâtards Poil-Putride|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Mongrel
step << skip
    #label Doomweed
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
    >>Ramassez l' |cRXP_LOOT_Herbe maléfique|r sur le sol
    >>|cRXP_WARN_Ils se trouvent près des arbres dans la zone des Gnolls|r.
    .complete 5482,1 --Doom Weed (10)
    .isOnQuest 5482
step
    #optional
    #label Doomweed
step << Mage
    #season 2
    #optional
    #completewith MaggotEye
    .goto Tirisfal Glades,59.84,33.17,0
    .goto Tirisfal Glades,58.38,35.28,0
    .goto Tirisfal Glades,60.09,37.01,0
    >>Lancez |T136071:0|t[Métamorphose] sur les |cRXP_ENEMY_Melons étranges|r
    >>Ramassez les |T134332:0|t|cRXP_LOOT_[Notes de l’apothicaire]|r par terre
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step
    #completewith MaggotEye
    >>Tuez les |cRXP_ENEMY_Bâtards Poil-Putride|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Mongrel
step
    #label MaggotEye
    .goto Tirisfal Glades,58.66,30.77
    >>Tuez |cRXP_ENEMY_Oeil-de-ver|r. Dépouillez-le pour sa |cRXP_LOOT_Patte|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
step
    #loop
    .goto Tirisfal Glades,59.77,32.37,0
    .goto Tirisfal Glades,58.71,35.47,50,0
    .goto Tirisfal Glades,59.77,32.37,50,0
    .goto Tirisfal Glades,58.25,31.28,50,0
    .goto Tirisfal Glades,60.08,37.88,50,0
    >>Tuez les |cRXP_ENEMY_Bâtards Poil-Putride|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Mongrel
step
    #loop
    .goto Tirisfal Glades,59.77,32.37,0
    .goto Tirisfal Glades,58.71,35.47,50,0
    .goto Tirisfal Glades,59.77,32.37,50,0
    .goto Tirisfal Glades,58.25,31.28,50,0
    .goto Tirisfal Glades,60.08,37.88,50,0
    >>Tuez les |cRXP_ENEMY_Gnolls Poil-Putride|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    .complete 358,3 --Embalming Ichor (8)
    .mob Rot Hide Mongrel
    .mob Rot Hide Gnoll
    .mob Rot Hide Graverobber
step << Rogue
    #season 2
    #loop
    .goto Tirisfal Glades,59.77,32.37,0
    .goto Tirisfal Glades,58.71,35.47,50,0
    .goto Tirisfal Glades,59.77,32.37,50,0
    .goto Tirisfal Glades,58.25,31.28,50,0
    .goto Tirisfal Glades,60.08,37.88,50,0
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Gnolls Poil-Putride|r et tuez-les. Dépouillez-les pour le |T134327:0|t[|cRXP_LOOT_Morceau inférieur gauche de carte|r]
    .collect 208038,1 --Bottom-Left Map Piece (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Graverobber
    .mob Rot Hide Gnoll
    .train 400095,1
step << Warrior
    #season 2
    #loop
    .goto Tirisfal Glades,59.77,32.37,0
    .goto Tirisfal Glades,58.71,35.47,50,0
    .goto Tirisfal Glades,59.77,32.37,50,0
    .goto Tirisfal Glades,58.25,31.28,50,0
    .goto Tirisfal Glades,60.08,37.88,50,0
    >>Tuez tous les types de |cRXP_ENEMY_Gnolls Poil-Putride|r. Dépouillez-les pour une |cRXP_LOOT_Tête de Gnoll coupée|r
    .collect 204478,1 --Severed Gnoll Head (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Gnoll
    .mob Rot Hide Graverobber
    .train 403475,1
step << Mage
    #xprate >2.09
    #season 2
    #loop
    .goto Tirisfal Glades,59.84,33.17,0
    .goto Tirisfal Glades,58.38,35.28,0
    .goto Tirisfal Glades,60.09,37.01,0
    .goto Tirisfal Glades,59.84,33.17,40,0
    .goto Tirisfal Glades,58.38,35.28,40,0
    .goto Tirisfal Glades,60.09,37.01,40,0
    >>Lancez |T136071:0|t[Métamorphose] sur les |cRXP_ENEMY_Melons étranges|r
    >>Ramassez les |T134332:0|t|cRXP_LOOT_[Notes de l’apothicaire]|r par terre
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step << Mage
    #xprate >2.09
    #season 2
    >>|cRXP_WARN_Utilisez les|r |T134332:0|t|cRXP_LOOT_[Notes de l’apothicaire]|r |cRXP_WARN_pour créer les|r |T134332:0|t|cRXP_LOOT_[Notes de sort : Illumination]|r
    .collect 203749,1 --Spell Notes: Enlightenment (1)
    .use 208183 --Apothecary Notes
    .train 415942,1
    .itemcount 208183,6
step << Mage
    #xprate >2.09
    #season 2
    .train 415942 >>|cRXP_WARN_Utilisez les|r |T134332:0|t|cRXP_LOOT_[Notes de sort : Illumination]|r |cRXP_WARN_pour apprendre|r |T133815:0|t[Gravure de plastron (Illumination)]
    .use 203749
    .itemcount 203749,1 --Spell Notes: Enlightenment (1)
step << Warrior
    #season 2
    #loop
    .goto Tirisfal Glades,59.54,27.86,0
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    >>Tuez les |cRXP_ENEMY_Murlocs Aileron noir|r. Dépouillez-les pour leurs |cRXP_LOOT_Écailles|r et une |cRXP_LOOT_Tête de Murloc coupée|r
    .complete 368,1 --Vile Fin Scale (5)
    .collect 204477,1 --Severed Murloc Head (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 403475,1
step << Rogue
    #season 2
    #completewith MurlocVins
    >>Utilisez |T133644:0|t[Vol à la tire] et tuez les |cRXP_ENEMY_Murlocs Aileron noir|r pour la |T134241:0|t[|cRXP_LOOT_Clé de cache de l’épave|r]
    .collect 208007,1 --Shipwreck Cache Key (1)
    .train 400081,1
step << Rogue
    #season 2
    #completewith RuneofPrecision
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Murlocs Aileron noir|r et tuez-les. Dépouillez-les pour le |T134327:0|t[|cRXP_LOOT_Morceau inférieur droit de carte|r]
    .collect 208037,1 --Bottom-Right Map Piece (1)
    .train 400095,1
step
    #label MurlocVins
    #loop
    .goto Tirisfal Glades,59.54,27.86,0
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    >>Tuez les |cRXP_ENEMY_Murlocs Aileron noir|r. Dépouillez-les pour leurs |cRXP_LOOT_Écailles|r
    .complete 368,1 --Vile Fin Scale (5)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
step << Rogue
    #season 2
    #loop
    .goto Tirisfal Glades,59.54,27.86,0
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    >>Utilisez |T133644:0|t[Vol à la tire] et tuez les |cRXP_ENEMY_Murlocs Aileron noir|r pour la |T134241:0|t[|cRXP_LOOT_Clé de cache de l’épave|r]
    .collect 208007,1 --Shipwreck Cache Key (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 400081,1
step << Rogue
    #season 2
    .goto Tirisfal Glades,66.66,24.41
    >>Ouvrez la |cRXP_PICK_Cache de l’épave|r pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de précision|r]
    .collect 204174,1 --Rune of Precision (1)
    .train 400081,1
step << Rogue
    #season 2
    #label RuneofPrecision
    .train 400081 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de précision|r] |cRXP_WARN_pour apprendre|r |T135610:0|t[Entre les deux yeux]
    .use 204174
    .itemcount 204174,1
step << Rogue
    #season 2
    #loop
    .goto Tirisfal Glades,59.54,27.86,0
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Murlocs Aileron noir|r et tuez-les. Dépouillez-les pour le |T134327:0|t[|cRXP_LOOT_Morceau inférieur droit de carte|r]
    .collect 208037,1 --Bottom-Right Map Piece (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 400095,1
step << Rogue
    #season 2
    .use 208036 >>|cRXP_WARN_Utilisez les|r |T134327:0|t[|cRXP_LOOT_Morceaux de carte|r] |cRXP_WARN_pour créer la|r |T134269:0|t[|cRXP_LOOT_Carte au trésor de Tirisfal|r]
    .collect 208034,1 --Tirisfal Treasure Map (1)
    .train 400095,1
step
    #hardcore
    #completewith DoomedWeed
    .subzone 159 >> Retournez à Brill
    .subzoneskip 159
step
    #softcore
    #completewith DoomedWeed
    .goto Tirisfal Glades,64.50,29.41
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    >>|cRXP_WARN_Assurez-vous de mourir sur la flèche (ou à l'ouest de celle-ci)|r
step << skip
    #label DoomedWeed
    #loop
    .goto Tirisfal Glades,57.71,48.96,0
    .goto Tirisfal Glades,58.29,49.80,30,0
    .goto Tirisfal Glades,57.71,48.96,30,0
    .goto Tirisfal Glades,59.26,46.73,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apprenti apothicaire Holland|r, il patrouille autour du cimetière
    .turnin 5482 >>Rendez la quête Herbe maléfique
    .target Junior Apothecary Holland
step << Rogue
    #season 2
    .goto Tirisfal Glades,52.89,54.03
    .use 208034 >>|cRXP_WARN_Utilisez la|r |T134269:0|t[|cRXP_LOOT_Carte au trésor de Tirisfal|r] |cRXP_WARN_sous le pont|r
    >>Ouvrez le |cRXP_PICK_Trésor enfoui|r qui apparaît pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Tireur rapide|r]
    .collect 203991,1 --Rune of Quick Draw (1s)
    .train 400095,1
step << Rogue
    #season 2
    .train 400095 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Tireur rapide|r] |cRXP_WARN_pour apprendre|r |T134536:0|t[Tireur rapide]
    .use 203991
    .itemcount 203991,1
step
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Johaan|r, à |cRXP_FRIENDLY_Zygand|r et à |cRXP_FRIENDLY_Sevren|r
    .turnin 368 >>Rendez la quête Une Peste nouvelle
    .accept 369 >>Acceptez la quête Une Peste nouvelle
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.40
    .turnin 398 >>Rendez la quête On recherche: Œil-de-ver
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .turnin 358 >>Rendez la quête Les Profanateurs
    .accept 405 >>Acceptez la quête La Liche prodigue << Warlock
    .accept 359 >>Acceptez la quête En mission pour les Réprouvés
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
step
    #xprate >2.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Johaan|r, à |cRXP_FRIENDLY_Zygand|r et à |cRXP_FRIENDLY_Sevren|r
    .turnin 368 >>Rendez la quête Une Peste nouvelle
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.40
    .turnin 398 >>Rendez la quête On recherche: Œil-de-ver
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .turnin 358 >>Rendez la quête Les Profanateurs
    .accept 405 >>Acceptez la quête La Liche prodigue << Warlock
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
step
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Achetez-lui une|r |T132891:0|t[Bobine de fil grossier] |cRXP_BUY_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman Farthing|r
    .accept 354 >>Acceptez la quête Morts dans la famille
    .accept 362 >>Acceptez la quête Les moulins hantés
    .target Coleman Farthing
step << !Warlock
    #xprate >1.49
    #optional
    #completewith AgamandStart
    .abandon 405 >> Abandonnez la quête La Liche prodigue
step
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Rendez la quête Le frisson de la mort
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beryl|r au deuxième étage
	.train 139 >> Apprenez vos sorts de classe
    .target Dark Cleric Beryl
    .xp <8,1
    .xp >10,1
step << Priest
    #optional
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beryl|r au deuxième étage
	.train 8092 >> Apprenez vos sorts de classe
    .target Dark Cleric Beryl
    .xp <10,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cain|r au second étage
    .train 205 >> Apprenez vos sorts de classe
    .target Cain Firesong
    .xp <8,1
    .xp >10,1
step << Mage
    #optional
    .goto Tirisfal Glades,61.96,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cain|r
    --.accept 1881 >> Accept Speak with Anastasia
    .train 122 >> Apprenez vos sorts de classe
    .target Cain Firesong
    .xp <10,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à  |cRXP_FRIENDLY_Austil|r
    .train 284 >> Apprenez vos sorts de classe
    .target Austil de Mon
    .xp <8,1
    .xp >10,1
step << Warrior
    #optional
    .abandon 1505 >>Abandonnez Le vétéran Uzzek
    .isOnQuest 1505
step << Warrior
    #optional
    .abandon 1498 >>Abandonnez La voie de la défense
    .isOnQuest 1498
step << Warrior
    #optional
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à  |cRXP_FRIENDLY_Austil|r
    .trainer >> Apprenez vos sorts de classe
    .accept 1818 >> Acceptez la quête Parler à Dillinger
    .target Austil de Mon
    .xp <10,1
    .isQuestAvailable 1498
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r au second étage
    .train 6760 >> Apprenez vos sorts de classe
    .target Marion Call
    .xp <8,1
    .xp >10,1
step << Rogue
    #optional
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r
    .train 674 >> Apprenez vos sorts de classe
    --.accept 1885 >> Accept Mennet Carkad
    .target Marion Call
    .xp <10,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rupert|r au deuxième étage
    .train 980 >> Apprenez vos sorts de classe
    .target Rupert Boch
    .xp <8,1
    .xp >10,1
step << Warlock
    #optional
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rupert|r
    .train 707 >> Apprenez vos sorts de classe
    .target Rupert Boch
    .xp <10,1
step << Warlock
    #optional
    .goto Tirisfal Glades,61.62,52.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ageron|r au deuxième étage
    .accept 1478 >> Acceptez la quête Les invocations de Halgar
    .target Ageron Kargal
    .xp <10,1
step << Warlock
    #xprate >2.09
    .goto Tirisfal Glades,61.62,52.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ageron|r au deuxième étage
    .accept 1478 >> Acceptez la quête Les invocations de Halgar
    .target Ageron Kargal
step << Rogue/Warrior
    .goto Tirisfal Glades,61.81,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Infirmière Neela|r
    >>|cRXP_WARN_Essayez d'en fabriquer pendant les temps d'attente, par exemple pour les Zeppelins|r
    .train 3273 >>Apprenez [Premiers soins]
    .target Nurse Neela
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
    .collect 2494,1,354,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith MillsOverun
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
    .collect 2488,1,354,1 --Collect Gladius (1)
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith MillsOverun
    +Équipez le [Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Renee|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Delaniel|r << Mage/Priest
    >>|cRXP_BUY_Achetez-lui des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r <<Warrior/Rogue
    >>|cRXP_BUY_Achetez-lui du|r |T132815:0|t[Lait glacé] |cRXP_BUY_et des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r << Warlock
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 1179,20,426,1 << Mage/Priest --Ice Cold Milk (20)
    .collect 4605,20,426,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,10,426,1 << Warlock --Ice Cold Milk (10)
    .collect 4605,10,426,1 << Warlock --Red-speckled Mushroom (10)
    .money <0.025 << Warrior/Rogue
    .money <0.0375 << Mage/Priest/Warlock
    .target Innkeeper Renee
step << Rogue/Warrior
    #softcore
    .goto Tirisfal Glades,60.31,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eliza Callen|r
    .vendor >>Réparez votre arme
    .target Eliza Callen
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r
    .turnin 1818 >> Rendez la quête Parler à Dillinger
    .accept 1819 >> Acceptez la quête Ulag le Fendeur
    .target Deathguard Dillinger
    .isOnQuest 1818
step << Warrior
    #optional
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r
    .accept 1819 >> Acceptez la quête Ulag le Fendeur
    .target Deathguard Dillinger
    .isQuestTurnedIn 1818
step << Warrior
    .goto Tirisfal Glades,59.16,48.51
    >>|cRXP_WARN_Cliquez sur le crâne sur le sol. Cela invoquera|r |cRXP_ENEMY_Ulag.|r |cRXP_WARN_Tuez-le|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
    .isQuestTurnedIn 1818
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >> Rendez la quête Ulag le Fendeur
    .accept 1820 >> Acceptez la quête Parler à Coleman
    .target Deathguard Dillinger
    .isQuestTurnedIn 1818
step
    #optional
    #label Brill3
    --150% route does Agamand Mills after UC

step << Warrior
    #xprate <2.1
    #season 2
    #completewith AgamandStart
    >>Tuez les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour une |cRXP_LOOT_Tête de chauve-souris coupée|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #xprate <2.1
    #completewith next
    >>Tuez les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #xprate <2.1
    #label AgamandStart
    .goto Tirisfal Glades,47.60,44.03,100,0
    .goto Tirisfal Glades,47.37,43.71
    .subzone 157 >> Voyagez vers le nord/ouest en direction des Moulins d'Agamand
    .isOnQuest 362
step
    #xprate <2.1
    #completewith ThurmanGregor
    >>La |T134939:0|t[|cRXP_LOOT_Lettre de Thurman|r] |cRXP_WARN_peut tomber sur ces mobs. Acceptez la quête si vous la récupérez|r
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >> Acceptez la quête Une lettre perdue
    .use 2839
step
    #xprate <2.1
    #completewith ThurmanGregor
    #label MillsOverun
    >>Tuez les |cRXP_ENEMY_Soldats|r et les |cRXP_ENEMY_Ossomanciens|r. Dépouillez-les pour leur |cRXP_LOOT_Côtes|r et leurs |cRXP_LOOT_Crânes|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
step
    #xprate <2.1
    #label KillDevlin
    .goto Tirisfal Glades,47.34,40.78
    >>Tuez |cRXP_ENEMY_Devlin|r. Dépouillez-le pour ses |cRXP_LOOT_Restes|r
    .complete 362,1 --Devlin's Remains (1)
    .mob Devlin Agamand
step
    #xprate <2.1
    .goto Tirisfal Glades,49.34,36.02
    >>Tuez |cRXP_ENEMY_Nissa|r. Dépouillez-la pour ses |cRXP_LOOT_Restes|r. Elle peut être à l'intérieur du bâtiment
    .complete 354,2 --Nissa's Remains (1)
    .mob Nissa Agamand
step
    #xprate <2.1
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
    #xprate <2.1
    #loop
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
step << skip
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    >>Tuez les |cRXP_ENEMY_Soldats|r et les |cRXP_ENEMY_Ossomanciens|r. Dépouillez-les pour la |T134939:0|t[|cRXP_LOOT_Lettre de Thurman|r]
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >> Acceptez la quête Une lettre perdue
    .use 2839
    .mob Rattlecage Soldier
    .mob Darkeye Bonecaster
    .mob Cracked Skull Soldier
    .xp >9+4320,1
    .isQuestTurnedIn 375
--XX 880(426)+480(361, OPT)+880(354)+420(362)+700(375, OPT)
step << skip
    #xprate >1.49
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    >>Tuez les |cRXP_ENEMY_Soldats|r et les |cRXP_ENEMY_Ossomanciens|r. Dépouillez-les pour la |T134939:0|t[|cRXP_LOOT_Lettre de Thurman|r]
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >> Acceptez la quête Une lettre perdue
    .use 2839
    .mob Rattlecage Soldier
    .mob Darkeye Bonecaster
    .mob Cracked Skull Soldier
    .xp >9+2180,1
    .isOnQuest 375
--XX 880(426)+480(361, OPT)+880(354)+420(362)+700(375, OPT)
step << skip
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    >>Tuez les |cRXP_ENEMY_Soldats|r et les |cRXP_ENEMY_Ossomanciens|r. Dépouillez-les pour la |T134939:0|t[|cRXP_LOOT_Lettre de Thurman|r]
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >> Acceptez la quête Une lettre perdue
    .use 2839
    .mob Rattlecage Soldier
    .mob Darkeye Bonecaster
    .mob Cracked Skull Soldier
    .xp >9+3230,1
    .isQuestTurnedIn 375
--XX 880(426)+480(361, OPT)+880(354)+420(362)+700(375, OPT)
step << skip
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .xp 9+3620 >> Montez votre expérience jusqu'à 3620+/6500xp
    .itemcount 2839,<1 --A Letter to Yvette (0)
    .isOnQuest 375
step << skip
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .xp 9+4320 >> Montez votre expérience jusqu'à 4320+/6500xp
    .itemcount 2839,<1 --A Letter to Yvette (0)
    .isQuestTurnedIn 375
step << skip
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .xp 9+3840 >> Montez votre expérience jusqu'à 3840+/6500xp
    .itemcount 2839,1 --A Letter to Yvette (1)
    .isQuestTurnedIn 375
step << skip
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .xp 9+3140 >> Montez votre expérience jusqu'à 3140+/6500xp
    .itemcount 2839,1 --A Letter to Yvette (1)
    .isOnQuest 375
step << skip
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .xp 9+2180 >> Montez votre expérience jusqu'à 2180+/6500xp
    .itemcount 2839,<1 --A Letter to Yvette (0)
    .isOnQuest 375
step << skip
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .xp 9+3230 >> Montez votre expérience jusqu'à 3230+/6500xp
    .itemcount 2839,<1 --A Letter to Yvette (0)
    .isQuestTurnedIn 375
step << skip
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .xp 9+2510 >> Montez votre expérience jusqu'à 2510+/6500xp
    .itemcount 2839,1 --A Letter to Yvette (1)
    .isQuestTurnedIn 375
step << skip
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .xp 9+1460 >> Montez votre expérience jusqu'à 1460+/6500xp
    .itemcount 2839,1 --A Letter to Yvette (1)
    .isOnQuest 375
step << Mage/Priest
    #xprate <2.1
    #season 2
    >>Tuez le |cRXP_ENEMY_Branchiar|r. Dépouillez-le pour les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : GDDOT EG IEVSIR|r] << Mage
    >>Tuez |cRXP_ENEMY_Branchiar|r. Dépouillez-le pour le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un noir dessein|r] << Priest
    .collect 203753,1 << Mage --Spell Notes: RING SEFF OSTROF (1)
    .collect 205940,1 << Priest --Memory of a Dark Purpose (1)
    .mob Gillgar
    .train 401765,1 << Mage
    .train 425216,1 << Priest
step << Mage
    #xprate <2.1
    #season 2
    .collect 211779,1 >>Vous avez besoin d'un |T135933:0|t[Charme de compréhension] acheté au |cRXP_FRIENDLY_Marchand de composants|r pour utiliser l'objet
    .train 401765 >>|cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : GDDOT EG IEVSIR|r] |cRXP_WARN_pour apprendre|r |T236227:0|t[Doigts de givre].
    .use 203753
    .itemcount 203753,1
step << skip
    #xprate <1.5
    #hardcore
    #completewith FoodandWater2
    .hs >> Utilisez votre Pierre de foyer pour revenir à Brill
    .subzoneskip 159
    .cooldown item,6948,>0,1
    .bindlocation 2119,1
step << skip
    #xprate <1.5
    #hardcore
    #completewith FoodandWater2
    .subzone 159 >> Retournez à Brill
    .subzoneskip 159
    .cooldown item,6948,<0
step
    #xprate <2.1
    #hardcore
    #completewith FoodandWater2
    .subzone 159 >> Retournez à Brill
    .subzoneskip 159
step
    #xprate <2.1
    #softcore
    #completewith FoodandWater2
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    #xprate <2.1
    .goto Tirisfal Glades,58.20,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r
    .turnin 426 >>Rendez la quête La chute des moulins
    .target Deathguard Dillinger
step
    #xprate <2.1
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Achetez-lui une|r |T132891:0|t[Bobine de fil grossier] |cRXP_BUY_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yvette|r et à |cRXP_FRIENDLY_Coleman|r
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
    #xprate <2.1
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman Farthing|r
    .turnin 354 >>Rendez la quête Morts dans la famille
    .turnin 362 >>Rendez la quête Les moulins hantés
    .turnin 1820 >>Rendez la quête Parler à Coleman << Warrior
    .accept 355 >>Acceptez la quête Parler à Sevren
    .target Coleman Farthing
    .isQuestTurnedIn 1819 << Warrior
step << Warrior
    #xprate <2.1
    #optional
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman Farthing|r
    .turnin 354 >>Rendez la quête Morts dans la famille
    .turnin 362 >>Rendez la quête Les moulins hantés
    .accept 355 >>Acceptez la quête Parler à Sevren
    .target Coleman Farthing
step
    #xprate <2.1
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Rendez la quête Le frisson de la mort
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    #xprate <2.1
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beryl|r au deuxième étage
	.trainer >> Apprenez vos sorts de classe
    .target Dark Cleric Beryl
step << Warrior
    #xprate <2.1
    #optional
    .abandon 1505 >>Abandonnez Le vétéran Uzzek
    .isOnQuest 1505
step << Warrior
    #xprate <2.1
    #optional
    .abandon 1498 >>Abandonnez La voie de la défense
    .isOnQuest 1498
step << Warrior
    #xprate <2.1
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à  |cRXP_FRIENDLY_Austil|r
    .train 2687 >> Apprenez vos sorts de classe
    .accept 1818 >> Acceptez la quête Parler à Dillinger
    .target Austil de Mon << Warrior
    .xp >12,1
step << Warrior
    #xprate <2.1
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à  |cRXP_FRIENDLY_Austil|r
    .train 7384 >>Apprenez |T132223:0|t[Fulgurance]
    .accept 1818 >> Acceptez la quête Parler à Dillinger
    .target Austil de Mon
    .xp <12,1
step << Warlock
    #xprate <2.1
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rupert|r
    .train 707 >> Apprenez vos sorts de classe
    .target Rupert Boch
    .xp <10,1
    .xp >12,1
step << Warlock
    #xprate <2.1
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rupert|r
    .train 755 >> Apprenez vos sorts de classe
    .target Rupert Boch
    .xp <12,1
step << Warlock
    #xprate <2.1
    .goto Tirisfal Glades,61.62,52.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ageron|r à l'intérieur de l'auberge
    .accept 1478 >> Acceptez la quête Les invocations de Halgar
    .target Ageron Kargal
step << Rogue
    #xprate <2.1
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r
    .train 674 >> Apprenez vos sorts de classe
    --.accept 1885 >> Accept Mennet Carkad
    .target Marion Call
    .xp <10,1
    .xp >12,1
step << Rogue
    #xprate <2.1
    #optional
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r
    .train 1766 >> Apprenez vos sorts de classe
    --.accept 1885 >> Accept Mennet Carkad
    .target Marion Call
    .xp <12,1
step << Mage
    #xprate <2.1
    .goto Tirisfal Glades,61.96,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cain|r à l'intérieur de l'auberge
    .accept 1881 >> Acceptez la quête Parler à Anastasia
    .target Cain Firesong
step
    #xprate <2.1
    #label FoodandWater2
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Renee|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Delaniel|r << Mage/Priest/Shaman
    >>|cRXP_BUY_Achetez-lui des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r <<Warrior/Rogue
    >>|cRXP_BUY_Achetez-lui du|r |T132815:0|t[Lait glacé] |cRXP_BUY_et des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r << Warlock
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 1179,20,370,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,370,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,370,1 << Warlock --Ice Cold Milk (15)
    .collect 4605,15,370,1 << Warlock --Red-speckled Mushroom (15)
    .money <0.075 << Warlock
    .money <0.05 << !Warlock
    .target Innkeeper Renee
step << Warrior
    #xprate <2.1
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r
    .turnin 1818 >> Rendez la quête Parler à Dillinger
    .accept 1819 >> Acceptez la quête Ulag le Fendeur
    .target Deathguard Dillinger
step << Warrior
    #xprate <2.1
    .goto Tirisfal Glades,59.16,48.51
    >>|cRXP_WARN_Cliquez sur le crâne sur le sol. Cela invoquera|r |cRXP_ENEMY_Ulag.|r |cRXP_WARN_Tuez-le|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
step << Warrior
    #xprate <2.1
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >> Rendez la quête Ulag le Fendeur
    .accept 1820 >> Acceptez la quête Parler à Coleman
    .target Deathguard Dillinger
step << Warlock
    #completewith next
    .goto Tirisfal Glades,61.80,65.06,20 >> Entrez dans Undercity
    .zoneskip Undercity
    .zoneskip Undercity
step << Warlock
    #completewith next
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Prenez l'ascenseur pour descendre dans Undercity
step << Warlock
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carendin|r dans le Quartier Magique
    .turnin 1478 >> Rendez la quête Les invocations de Halgar
    .accept 1473 >> Acceptez la quête La créature du Vide
step << Warlock
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
step << Warrior
    #season 2
    #loop
    .goto Tirisfal Glades,55.14,62.01,0
    .goto Tirisfal Glades,56.90,58.25,60,0
    .goto Tirisfal Glades,55.14,62.01,60,0
    .goto Tirisfal Glades,52.36,62.93,60,0
    .goto Tirisfal Glades,48.94,63.72,60,0
    .goto Tirisfal Glades,45.17,62.11,60,0
    >>Tuez les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour une |cRXP_LOOT_Tête de chauve-souris coupée|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step << Rogue
    #season 2
    #completewith ScarletCrusade1
    >>Utilisez |T133644:0|t[Vol à la tire] sur le |cRXP_ENEMY_Capitaine Perrine|r pour une |T133385:0|t[|cRXP_LOOT_Chevalière de lieutenant écarlate|r]
    .collect 208085,1 --Scarlet Lieutenant Signet Ring (1)
    .mob Captain Perrine
    .train 400094,1
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
step << Rogue
    #season 2
    .goto Tirisfal Glades,51.17,67.81
    >>Utilisez |T133644:0|t[Vol à la tire] sur le |cRXP_ENEMY_Capitaine Perrine|r pour une |T133385:0|t[|cRXP_LOOT_Chevalière de lieutenant écarlate|r]
    .collect 208085,1 --Scarlet Lieutenant Signet Ring (1)
    .mob Captain Perrine
    .train 400094,1
step << Warlock
    .goto Tirisfal Glades,51.06,67.57
    >>Ramassez le |cRXP_PICK_Perrine's Chest|r sur le sol pour le [Grimoire d'Egalin]
    .complete 1473,1 --Egalin's Grimoire (1)
step
    #xprate <1.5
    #completewith UCHome
    .goto Undercity,16.51,42.76,35,0
    .goto Undercity,22.98,39.76,35,0
    .goto Undercity,24.93,32.54,35,0
    .goto Undercity,34.78,33.24,10,0
    .goto Undercity,40.83,34.08,10,0
    .goto Undercity,41.35,38.40,10,0
    .goto Undercity,45.25,39.20,10,0
    .goto Undercity,45.67,43.60,10,0
    .zone Undercity >> Retournez dans Fossoyeuse par les égoûts
    .zoneskip Undercity
step << !Mage
    #xprate >1.49
    #completewith LogoutSkip1
    .goto Undercity,16.51,42.76,35,0
    .goto Undercity,22.98,39.76,35,0
    .goto Undercity,24.93,32.54,35,0
    .goto Undercity,34.78,33.24,10,0
    .goto Undercity,40.83,34.08,10,0
    .goto Undercity,41.35,38.40,10,0
    .goto Undercity,45.25,39.20,10,0
    .goto Undercity,45.67,43.60,10,0
    .zone Undercity >> Retournez dans Fossoyeuse par les égoûts
    .zoneskip Undercity
step << Priest
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5658 >> Rendez la quête Toucher de faiblesse
    .target Aelthalyste
    .train 2652,1 --Touch of Weakness not trained
step << Rogue
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Archibald|r au Quartier de la Guerre
    .train 201 >>Achetez la compétence pour porter des épées à une main
    .target Archibald
step << Warrior/Rogue
    .goto Undercity,56.06,37.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brom|r
    .train 2575 >> Apprenez [Minage]
    >>Ceci vous permettra de trouver des |cRXP_LOOT_[Rough Stones]|r sur les gisements pour fabriquer les [Pierre à aiguiser] (+2 dégâts aux armes pendant 30 minutes)
    .target Brom Killian
step << Warrior/Rogue
    .goto Undercity,56.72,36.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sarah|r
    >>|cRXP_BUY_Achetez une|r |T134708:0|t[Pioche de mineur] |cRXP_BUY_auprès de|r |cRXP_FRIENDLY_Sarah|r.
    .collect 2901,1,371,1 --Mining Pick (1)
    .target Sarah Killian
    .train 2575,3 --Mining Trained
 step << Warrior/Rogue
    .goto Undercity,60.17,29.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Basil Frye|r
    .train 2018 >> Apprenez [Forge]
    .target Basil Frye
    .train 2575,3 --Mining Trained
step << Warrior
    #season 2
    .goto Undercity,48.03,70.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dorac Sépulcre|r dans Fossoyeuse
    >>Rendez les |cRXP_LOOT_Têtes|r que vous avez rassemblés en échange des |T134455:0|t[Fragments de rune]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Dorac Graves
    .train 403475,1
step << Warrior
    #season 2
    #optional
    .use 204688 >>|cRXP_WARN_Utilisez les|r |T134455:0|t[Fragments de rune] |cRXP_WARN_pour créer|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Dévastation|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step << Warrior
    #season 2
    .train 403475 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Dévastation|r]
    .use 204703
    .itemcount 204703,1
step << !Mage
    #xprate >1.49
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commissaire-priseur Rhyker|r
    >>|cRXP_BUY_Achetez une|r |T135139:0|t[Baguette magique inférieure] |cRXP_BUY_à l'Hôtel des ventes|r << Priest
    >>|cRXP_BUY_Achetez une|r |T135139:0|t[Baguette magique inférieure] |cRXP_BUY_à l'Hôtel des ventes si vous le souhaitez|r << Mage/Warlock
    >>|cRXP_WARN_Si vous le faites et aviez gardez vos|r |T132889:0|t[Etoffe de lin] |cRXP_WARN_plus tôt, vous pouvez vendre votre|r |T132889:0|t[Etoffe de lin] |cRXP_WARN_à l'Hôtel des ventes|r << Priest
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    .collect 11287,1,435,1 << Priest/Mage/Warlock --Lesser Magic Wand (1)
    .target Auctioneer Rhyker
    .itemStat 18,QUALITY,<7 << Priest/Mage/Warlock
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3 << Priest/Mage/Warlock
--XX Intentional for priests on 1.5x xp to only do this if they don't have a lesser magic wand
step << skip
    #xprate >1.49
    #ah
    #optional
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commissaire-priseur Rhyker|r
    >>|cRXP_BUY_Achetez s6|r |T134339:0|t[Coeurs de worg décolorés] |cRXP_BUY_à l'Hôtel des ventes|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    .collect 3164,6,429,1 --Discolored Worg Heart (6)
    .target Auctioneer Rhyker
step << !Warlock
    #xprate <1.5
    .goto Undercity,67.74,37.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Norman|r
    .home >> Liez votre Pierre de foyer à Fossoyeuse
    .target Innkeeper Norman
    .bindlocation 1497
step
    #optional
    #label UCHome
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
step << Warrior
    #ssf
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Charles Seaton|r au Quartier des Voleurs
    >>|cRXP_BUY_Achetez une|r [Claymore] |cRXP_BUY_au marchand|r
    .collect 1198,1,371,1 --Collect Claymore (1)
    .money <0.2676
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #ah
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Charles Seaton|r au Quartier des Voleurs
    >>|cRXP_BUY_Achetez une|r [Claymore] |cRXP_BUY_au marchand|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 1198,1,371,1 --Collect Claymore (1)
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #optional
    #completewith LogoutSkip1
    +Équipez la [Claymore]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Rogue
    #season 0
    #ssf
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Charles Seaton|r au Quartier des Voleurs
    >>|cRXP_BUY_Achetez un|r [Coutelas] |cRXP_BUY_à Gunther|r
    .collect 851,1,371,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #season 0
    #ah
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Charles Seaton|r au Quartier des Voleurs
    >>|cRXP_BUY_Achetez un|r [Coutelas] |cRXP_BUY_à Gunther|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 851,1,371,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #season 2
    #ssf
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Charles Seaton|r au Quartier des Voleurs
    .vendor >>|cRXP_BUY_Achetez-lui un|r |T135346:0|t[Sabre d'abordage] |cRXP_BUY_ou une|r |T135640:0|t[Jambiya] |cRXP_BUY_|r
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #season 2
    #ah
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Charles Seaton|r au Quartier des Voleurs
    .vendor >>|cRXP_BUY_Achetez-lui un|r |T135346:0|t[Sabre d'abordage] |cRXP_BUY_ou une|r |T135640:0|t[Jambiya] |cRXP_BUY_|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #optional
    #completewith LogoutSkip1
    +Équipez le [Coutelas]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #season 2
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_Équipez la|r |T135640:0|t[Jambiya]
    .use 2207
    .itemcount 2207,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
step << Rogue
    .goto Undercity,77.50,49.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nathaniel Steenwick|r dans le Quartier des voleurs
    >>|cRXP_BUY_Achetez-lui un|r |T135425:0|t[Couteau de lancer effilé] |cRXP_BUY_|r
    .collect 3107,200,371,1 --Keen Throwing Knife (200)
    .target Nathaniel Steenwick
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    .goto Undercity,77.50,49.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nathaniel Steenwick|r dans le Quartier des voleurs
    >>|cRXP_BUY_Achetez-lui un|r |T135425:0|t[Couteau de lancer effilé] |cRXP_BUY_|r
    .collect 3107,200,371,1 --Keen Throwing Knife (200)
    .target Nathaniel Steenwick
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_Rappelez-vous d'équiper les|r |T135425:0|t[Couteaux de lancer effilé] |cRXP_WARN_lorsque vous passez au niveau 11|r
    .use 3107
    .itemcount 3107,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp >11,1
step << Rogue
    #optional
    #completewith LogoutSkip1
    +Équipez les [Couteau de lancer perçant]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << skip
    --Rogue class q
    .goto Undercity,83.52,69.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mennet Carkad|r
    .turnin 1885 >>Rendez la quête Mennet Carkad
    .accept 1886 >>Acceptez la quête Les nécrotraqueurs
    .target Mennet Carkad
step << skip
    #optional
    .abandon 1883 >> Abandonnez la quête Parler à Un'thuwa, sinon vous ne pourrez pas accepter la quête suivante
    .isOnQuest 1883
step << skip
    .goto Undercity,85.12,10.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anastasia|r au Quartier Magique
    .turnin 1881 >> Rendez la quête Parler à Anastasia
    .accept 1882 >> Acceptez la quête La ferme des Balnir
    .target Anastasia Hartwell
step
    #xprate <1.5
    .goto Undercity,84.06,17.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bethor|r dans le Quartier magique
    .turnin 405 >>Rendez la quête La Liche prodigue
    .accept 357 >>Acceptez la quête Le nom de la Liche
    .target Bethor Iceshard
step << Warlock
    #xprate >1.49
    .goto Undercity,84.06,17.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bethor|r dans le Quartier magique
    .turnin 405 >>Rendez la quête La Liche prodigue
    .target Bethor Iceshard
step << skip --Warlock
    #xprate <2.1
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Effectuez un Logout skip en positionnant votre personnage sur la partie la plus élevée de l'escalier le plus bas jusqu'à ce qu'il semble flotter, puis en vous déconnectant et en vous reconnectant|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_CLIQUEZ ICI pour un exemple vidéo|r
    >>|cRXP_WARN_Si vous n'arrivez pas à le faire, sortez simplement de Fossoyeuse normalement|r
step << skip --!Mage !Warlock
    #xprate <2.1
    .goto Undercity,61.10,54.11 << Priest
    .goto Undercity,78.03,50.36 << Warrior
    .goto Undercity,82.75,65.23 << Rogue
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Effectuez un Logout skip en sautant sur les tonneaux, puis en vous déconnectant et en vous reconnectant|r << Priest/Warrior
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Effectuez un Logout skip en sautant sur le broyeur du Chariot à viande, puis en vous déconnectant et en vous reconnectant|r << Rogue
    >>|cRXP_WARN_Si vous n'arrivez pas à le faire, sortez simplement de Fossoyeuse normalement|r
    .zoneskip Undercity,1
step
    #optional
    #label LogoutSkip1
step
    #xprate <2.1
    #completewith AtWarS
    .goto Tirisfal Glades,61.92,64.85
    .zone Tirisfal Glades >> Quittez Undercity
    .zoneskip Tirisfal Glades
step << skip
    #sticky
    #completewith UnluckyRogue
    >>|cRXP_WARN_Si vous voyez|r |cRXP_FRIENDLY_Astor|r|cRXP_WARN_, parlez-lui et tuez-le. Dépouillez-le pour la lettre. Il patrouille la route entre Brill et le Sépulcre|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
    .isOnQuest 1886
step << Mage/Warlock
    #xprate >1.49
    #completewith AtWarS
    #optional
    .abandon 357 >>Abandonnez la quête Le nom de la Liche
step << Mage
    #xprate <2.1
    #label AtWarS
    #softcore
    #completewith AtWarS
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    #completewith AgamandStart
    #xprate >2.09
    .hs >>Utilisez votre Pierre de foyer pour revenir à Brill
    .bindlocation 2119,1
step
    #optional
    .goto Tirisfal Glades,60.93,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler au |cRXP_FRIENDLY_Nécrogarde Burgess|r
    .turnin 374 >>Rendez la quête Preuves de la mort
    .target Deathguard Burgess
    .isQuestComplete 374
step
    #xprate <2.1
    #label AtWarS
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zygand|r
    .turnin 370 >>Rendez la quête En guerre avec la Croisade écarlate
    .accept 371 >>Acceptez la quête En guerre avec la Croisade écarlate
    .target Executor Zygand
step
    #xprate >2.09
    #label AtWarS
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zygand|r
    .turnin 370 >>Rendez la quête En guerre avec la Croisade écarlate
    .target Executor Zygand
step << Rogue
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    .use 208085 >>|cRXP_WARN_Utilisez la|r |T133385:0|t[|cRXP_LOOT_Chevalière de lieutenant écarlate|r] |cRXP_WARN_pour créer la|r |T134328:0|t[|cRXP_LOOT_Note de service écarlate urgente falsifiée|r]
    .collect 208086,1 --Forged Scarlet Memorandum (1)
    .train 400094,1
step << Rogue
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jamie Nore|r pour recevoir l' |T134419:0|t[|cRXP_FRIENDLY_Idole de mutilation|r]
    .collect 203990,1 --Rune of Mutilation (1)
    .target Jamie Nore
    .skipgossip
    .train 400094,1
step << Rogue
    #season 2
    .train 400094 >>|cRXP_WARN_Utilisez l'|r |T134419:0|t[|cRXP_FRIENDLY_Idole de mutilation|r] |cRXP_WARN_pour apprendre|r |T132304:0|t[Estropier]
    .use 203990
    .itemcount 203990,1
step
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Mme Winters|r
    >>|cRXP_BUY_Achetez-lui une|r |T133634:0|t[Petite sacoche marron] |cRXP_BUY_|r|cRXP_FRIENDLY_|r
    .collect 4496,1,356,1 --Small Brown Pouch (1)
    .target Mrs. Winters
    .money <0.05
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman Farthing|r
    .turnin 1820 >>Rendez la quête Parler à Coleman
    .target Coleman Farthing

    --150% route Agamand Mills here

step
    #xprate >2.09
    #label AgamandStart
    .goto Tirisfal Glades,47.60,44.03,100,0
    .goto Tirisfal Glades,47.37,43.71
    .subzone 157 >> Voyagez vers le nord/ouest en direction des Moulins d'Agamand
    .isOnQuest 362
step
    #xprate >2.09
    #completewith ThurmanGregor
    >>La |T134939:0|t[|cRXP_LOOT_Lettre de Thurman|r] |cRXP_WARN_peut tomber sur ces mobs. Acceptez la quête si vous la récupérez|r
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >> Acceptez la quête Une lettre perdue
    .use 2839
step
    #xprate >2.09
    #completewith ThurmanGregor
    #label MillsOverun
    >>Tuez les |cRXP_ENEMY_Soldats|r et les |cRXP_ENEMY_Ossomanciens|r. Dépouillez-les pour leur |cRXP_LOOT_Côtes|r et leurs |cRXP_LOOT_Crânes|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
step
    #xprate >2.09
    #label KillDevlin
    .goto Tirisfal Glades,47.34,40.78
    >>Tuez |cRXP_ENEMY_Devlin|r. Dépouillez-le pour ses |cRXP_LOOT_Restes|r
    .complete 362,1 --Devlin's Remains (1)
    .mob Devlin Agamand
step
    #xprate >2.09
    .goto Tirisfal Glades,49.34,36.02
    >>Tuez |cRXP_ENEMY_Nissa|r. Dépouillez-la pour ses |cRXP_LOOT_Restes|r. Elle peut être à l'intérieur du bâtiment
    .complete 354,2 --Nissa's Remains (1)
    .mob Nissa Agamand
step
    #xprate >2.09
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
    #xprate >2.09
    #loop
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
step << Mage/Priest
    #xprate >2.09
    #season 2
    >>Tuez le |cRXP_ENEMY_Branchiar|r. Dépouillez-le pour les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : GDDOT EG IEVSIR|r] << Mage
    >>Tuez |cRXP_ENEMY_Branchiar|r. Dépouillez-le pour le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un noir dessein|r] << Priest
    .collect 203753,1 << Mage --Spell Notes: RING SEFF OSTROF (1)
    .collect 205940,1 << Priest --Memory of a Dark Purpose (1)
    .mob Gillgar
    .train 401765,1 << Mage
    .train 425216,1 << Priest
step << Mage
    #xprate >2.09
    #season 2
    .collect 211779,1 >>Vous avez besoin d'un |T135933:0|t[Charme de compréhension] acheté au |cRXP_FRIENDLY_Marchand de composants|r pour utiliser l'objet
    .train 401765 >>|cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : GDDOT EG IEVSIR|r] |cRXP_WARN_pour apprendre|r |T236227:0|t[Doigts de givre].
    .use 203753
    .itemcount 211779,1
step
    #xprate >2.09
    #hardcore
    #completewith FoodandWater2
    .subzone 159 >> Retournez à Brill
    .subzoneskip 159
step
    #xprate >2.09
    #softcore
    #completewith FoodandWater2
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    #xprate >2.09
    .goto Tirisfal Glades,58.20,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r
    .turnin 426 >>Rendez la quête La chute des moulins
    .target Deathguard Dillinger
step
    #xprate >2.09
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Achetez-lui une|r |T132891:0|t[Bobine de fil grossier] |cRXP_BUY_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    #xprate >2.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yvette|r et à |cRXP_FRIENDLY_Coleman|r
    .turnin 361 >>Rendez la quête Une lettre perdue
    .target +Yvette Farthing
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>Rendez la quête Morts dans la famille
    .turnin 362 >>Rendez la quête Les moulins hantés
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .isOnQuest 361
step
    #xprate >2.09
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman Farthing|r
    .turnin 354 >>Rendez la quête Morts dans la famille
    .turnin 362 >>Rendez la quête Les moulins hantés
    .turnin 1820 >>Rendez la quête Parler à Coleman << Warrior
    .target Coleman Farthing
    .isQuestTurnedIn 1819 << Warrior
step << Warrior
    #xprate >2.09
    #optional
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman Farthing|r
    .turnin 354 >>Rendez la quête Morts dans la famille
    .turnin 362 >>Rendez la quête Les moulins hantés
    .target Coleman Farthing
step
    #xprate >2.09
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Rendez la quête Le frisson de la mort
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    #xprate >2.09
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beryl|r au deuxième étage
	.trainer >> Apprenez vos sorts de classe
    .target Dark Cleric Beryl
step << Warrior
    #xprate >2.09
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à  |cRXP_FRIENDLY_Austil|r
    .train 2687 >> Apprenez vos sorts de classe
    .target Austil de Mon
    .xp >12,1
step << Warrior
    #xprate >2.09
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à  |cRXP_FRIENDLY_Austil|r
    .train 7384 >>Apprenez |T132223:0|t[Fulgurance]
    .target Austil de Mon
    .xp <12,1
step << Warlock
    #xprate >2.09
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rupert|r
    .train 707 >> Apprenez vos sorts de classe
    .target Rupert Boch
    .xp <10,1
    .xp >12,1
step << Warlock
    #xprate >2.09
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rupert|r
    .train 755 >> Apprenez vos sorts de classe
    .target Rupert Boch
    .xp <12,1
step << Rogue
    #xprate >2.09
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r
    .train 674 >> Apprenez vos sorts de classe
    --.accept 1885 >> Accept Mennet Carkad
    .target Marion Call
    .xp <10,1
    .xp >12,1
step << Rogue
    #xprate >2.09
    #optional
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r
    .train 1766 >> Apprenez vos sorts de classe
    --.accept 1885 >> Accept Mennet Carkad
    .target Marion Call
    .xp <12,1
step
    #xprate >2.09
    #label FoodandWater2
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Renee|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Delaniel|r << Mage/Priest/Shaman
    >>|cRXP_BUY_Achetez-lui des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r <<Warrior/Rogue
    >>|cRXP_BUY_Achetez-lui du|r |T132815:0|t[Lait glacé] |cRXP_BUY_et des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r << Warlock
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 1179,20,370,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,370,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,370,1 << Warlock --Ice Cold Milk (15)
    .collect 4605,15,370,1 << Warlock --Red-speckled Mushroom (15)
    .money <0.075 << Warlock
    .money <0.05 << !Warlock
    .target Innkeeper Renee
step
    #xprate <2.1
    #completewith next
    >>Tuez les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #xprate <2.1
    #label UnluckyRogue
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Nécrogarde Linnea|r
    .turnin 359 >>Rendez la quête En mission pour les Réprouvés
    .accept 360 >>Acceptez la quête Retourner voir le Magistrat
    .accept 356 >>Acceptez la quête Patrouille d'arrière-garde
    .target Deathguard Linnea
step
    #xprate <2.1
    #completewith ArriveBalnir
    >>Tuez les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #xprate <2.1
    #label ArriveBalnir
    .goto Tirisfal Glades,76.51,61.77
    .subzone 165 >>Allez à la Ferme des Balnir
    .isOnQuest 356
step << Mage
    #xprate <2.1
    #season 2
    #completewith HorrorsandSpirits
    >>Lancez |T136071:0|t[Métamorphose] sur les |cRXP_ENEMY_Melons étranges|r
    >>Ramassez les |T134332:0|t|cRXP_LOOT_[Notes de l’apothicaire]|r par terre
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step << skip
    #completewith next
    >>Tuez les |cRXP_ENEMY_Horreurs sanguinolentes|r et les |cRXP_ENEMY_Esprits vagabonds|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
step << skip
    .goto Tirisfal Glades,77.48,62.00
    >>Cueillez n'importe laquelle des plantes au sol pour obtenir les |cRXP_PICK_Gueules-de-loup de Balnir|r
    .complete 1882,1 --Balnir Snapdragons (1)
step
    #xprate <2.1
    #optional
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
step << Mage
    #xprate <2.1
    #season 2
    #loop
    .goto Tirisfal Glades,76.51,61.77,0
    .goto Tirisfal Glades,75.12,61.49,20,0
    .goto Tirisfal Glades,76.51,61.77,20,0
    .goto Tirisfal Glades,76.04,59.31,20,0
    >>Lancez |T136071:0|t[Métamorphose] sur les |cRXP_ENEMY_Melons étranges|r
    >>Ramassez les |T134332:0|t|cRXP_LOOT_[Notes de l’apothicaire]|r par terre
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step << Mage
    #xprate <2.1
    #season 2
    >>|cRXP_WARN_Utilisez les|r |T134332:0|t|cRXP_LOOT_[Notes de l’apothicaire]|r |cRXP_WARN_pour créer les|r |T134332:0|t|cRXP_LOOT_[Notes de sort : Illumination]|r
    .collect 203749,1 --Spell Notes: Enlightenment (1)
    .use 208183 --Apothecary Notes
    .train 415942,1
    .itemcount 208183,6
step << Mage
    #xprate <2.1
    #season 2
    .train 415942 >>|cRXP_WARN_Utilisez les|r |T134332:0|t|cRXP_LOOT_[Notes de sort : Illumination]|r |cRXP_WARN_pour apprendre|r |T133815:0|t[Gravure de plastron (Illumination)]
    .use 203749
    .itemcount 203749,1 --Spell Notes: Enlightenment (1)
step
    #xprate <2.1
    #sticky
    #label Friars
    #loop
    #optional
    .goto Tirisfal Glades,80.95,57.21,0
    .goto Tirisfal Glades,77.14,54.92,0
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
    .complete 371,2 --Scarlet Friar (5)
    .complete 374,1 --Scarlet Insignia Ring (10)
    .disablecheckbox
    .mob Scarlet Friar
    .mob Scarlet Zealot
    .isOnQuest 374
step
    #xprate <2.1
    #loop
    #sticky
    #requires Friars
    #label Friars2
    .goto Tirisfal Glades,80.95,57.21,0
    .goto Tirisfal Glades,77.14,54.92,0
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
    >>Tuez les |cRXP_ENEMY_Frères écarlates|r
    .complete 371,2 --Scarlet Friar (5)
    .mob Scarlet Friar
    .isQuestTurnedIn 374
step
    #xprate <2.1
    .goto Tirisfal Glades,78.82,56.14
    >>Tuez le |cRXP_ENEMY_Capitaine Vachon|r à l'intérieur de la tour
    .complete 371,1 --Captain Vachon (1)
    .mob Captain Vachon
step
    #xprate <2.1
    #requires Friars2
    #loop
    #label FinishRings
    .goto Tirisfal Glades,80.95,57.21,0
    .goto Tirisfal Glades,77.14,54.92,0
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
step << skip
    #xprate <2.1
    #optional
    #loop
    .goto Tirisfal Glades,80.95,57.21,0
    .goto Tirisfal Glades,77.14,54.92,0
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
    >>|cRXP_WARN_Collectez 3 stacks d'|r |T132889:0|t[Etoffe de lin] |cRXP_WARN_pour votre Baguette magique inférieure. C'est la dernière chance d'en obtenir avant la Forêt des Pins-Argentés|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step
    #xprate <2.1
    #completewith ViciousVenom
    >>Tuez les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #xprate <2.1
    #label ViciousVenom
    #loop
    #requires Friars2
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
    #xprate <2.1
    #loop
    .goto Tirisfal Glades,83.59,43.84,0
    .goto Tirisfal Glades,72.33,33.01,0
    .goto Tirisfal Glades,83.59,43.84,70,0
    .goto Tirisfal Glades,80.77,46.40,70,0
    .goto Tirisfal Glades,75.86,46.02,70,0
    .goto Tirisfal Glades,73.10,40.71,70,0
    .goto Tirisfal Glades,72.33,33.01,70,0
    .goto Tirisfal Glades,68.69,34.33,70,0
    >>Tuez les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step << skip
    #xprate >1.49
    .xp 11+2950 >> Montez votre expérience jusqu'à 2950+/8800xp
    .isOnQuest 374
    .isOnQuest 375
--XX 220 (369)+840 (371)+390 (360)+90 (355)+160 (407)+875 (492) = 2575 -> 3860
--XX +625 (374 OPT)+700 (375 OPT) = 3900 -> 5850
--XX +625 (374 OPT) = 3200 -> 4800
--XX +700 (375 OPT) = 3275 -> 4910
step << skip
    #xprate >1.49
    #optional
    .xp 11+3890 >> Montez votre expérience jusqu'à 3890+/8800xp
    .isQuestTurnedIn 374
    .isOnQuest 375
step << skip
    #xprate >1.49
    #optional
    .xp 11+4000 >> Montez votre expérience jusqu'à 4000+/8800xp
    .isOnQuest 374
    .isQuestTurnedIn 375
step << skip
    #xprate >1.49
    #optional
    .xp 11+4940 >> Montez votre expérience jusqu'à 4940+/8800xp
    .isQuestTurnedIn 374
    .isQuestTurnedIn 375
step
    #xprate <2.1
    #completewith ANewPlagueFinal
    .hs >> Utilisez votre Pierre de foyer pour revenir à Brill
    .subzoneskip 159
    .bindlocation 2119,1
    .cooldown item,6948,>0,1
step
    #xprate <2.1
    #completewith ANewPlagueFinal
    .subzone 159 >> Retournez à Brill
    .subzoneskip 159
    .cooldown item,6948,<0
step
    #xprate <1.5
    .goto Tirisfal Glades,67.97,42.09
    >>Ramassez les |cRXP_PICK_Livres de Gunther|r pour |cRXP_LOOT_Le grimoire de la liche|r sur l'île dans le Lac Étincelant
    .complete 357,1 --The Lich's Spellbook (1)
step
    #xprate <1.5
    #hardcore
    #completewith ANewPlagueFinal
    .subzone 159 >> Retournez à Brill
    .subzoneskip 159
step
    #xprate <1.5
    #softcore
    #completewith ANewPlagueFinal
    .goto Tirisfal Glades,66.60,44.95
    .deathskip >> Mourez |cRXP_WARN_SUR L'ÎLE LA PLUS PETITE|r et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    #xprate <2.1
    .goto Tirisfal Glades,59.45,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Johaan|r
    .turnin 369 >>Rendez la quête Une Peste nouvelle
    .accept 492 >>Acceptez la quête Une Peste nouvelle
    --.accept 445 >>Accept Delivery to Silverpine Forest
    .target Apothecary Johaan
step << skip
    #phase 3-6
    .goto Tirisfal Glades,59.45,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Johaan|r
    .turnin 369 >>Rendez la quête Une Peste nouvelle
    .accept 492 >>Acceptez la quête Une Peste nouvelle
    --.accept 445 >>Accept Delivery to Silverpine Forest
    .target Apothecary Johaan
step
    #xprate <1.5
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zygand|r
    .turnin 371 >>Rendez la quête En guerre avec la Croisade écarlate
    .accept 372 >>Acceptez la quête En guerre avec la Croisade écarlate
    .target Executor Zygand
step
    #optional
    #xprate <2.1
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zygand|r
    .turnin 371 >>Rendez la quête En guerre avec la Croisade écarlate
    .target Executor Zygand
step
    #xprate <2.1
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Magistrat Sevren|r
    .turnin 360 >>Rendez la quête Retourner voir le Magistrat
    .turnin 355 >>Rendez la quête Parler à Sevren
    .target Magistrate Sevren
step
    #xprate >1.49
    #optional
    #completewith ANewPlagueFinal
    .abandon 372 >> Abandonnez la quête En guerre avec la Croisade écarlate
step
    #xprate <2.1
    #optional
    .goto Tirisfal Glades,60.93,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler au |cRXP_FRIENDLY_Nécrogarde Burgess|r
    .turnin 374 >>Rendez la quête Preuves de la mort
    .target Deathguard Burgess
    .isQuestComplete 374
step
    #xprate <2.1
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Achetez-lui une|r |T132891:0|t[Bobine de fil grossier] |cRXP_BUY_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    #xprate <2.1
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Mme Winters|r
    >>|cRXP_BUY_Achetez-lui une|r |T133634:0|t[Petite sacoche marron] |cRXP_BUY_|r|cRXP_FRIENDLY_|r
    .collect 4496,1,356,1 --Small Brown Pouch (1)
    .target Mrs. Winters
    .money <0.05
step
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Rendez la quête Le frisson de la mort
    .target Gretchen Dedmar
    .isQuestComplete 375
step
    #xprate <2.1
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Rendez la quête Le frisson de la mort
    .target Gretchen Dedmar
step
    #xprate <2.1
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Renee|r
	.vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << Rogue/Warrior
    .target Innkeeper Renee
step << Warrior
    #season 2
    .goto Tirisfal Glades,61.73,51.91
    .gossipoption 110750 >>Parlez à |cRXP_FRIENDLY_Penny|r
    .target Penny Hawkins
    .train 425447,1
step
    #xprate <1.5
    #label ANewPlagueFinal
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Zélote écarlate capturé|r et au |cRXP_FRIENDLY_Montagnard capturé|r en bas des escaliers au fond de l'auberge
    .turnin 407 >>Rendez la quête Les champs du Chagrin
    .goto Tirisfal Glades,61.97,51.29
    .target +Captured Scarlet Zealot
    .turnin 492 >> Rendez la quête Une Peste nouvelle
    .goto Tirisfal Glades,61.94,51.40
    .target +Captured Mountaineer
step
    #xprate <2.1
    .goto Tirisfal Glades,61.94,51.40
    #label ANewPlagueFinal
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Montagnard capturé|r en bas des escaliers au fond de l'auberge
    .turnin 492 >> Rendez la quête Une Peste nouvelle
    .target +Captured Mountaineer
step << Warrior
    #season 2
    .goto Tirisfal Glades,61.72,51.72
    .gossipoption 109084 >>Parlez à |cRXP_FRIENDLY_Coeurbleu|r (en bas) dans l'auberge
    .target Blueheart
    .train 425447,1
step << Warrior
    #season 2
    .goto Tirisfal Glades,61.72,51.91
    >>Tuez |cRXP_ENEMY_Coeurbleu|r, puis parlez à |cRXP_FRIENDLY_Penny|r en haut des escaliers
    .gossipoption 110751 >>Recevez auprès d'elle la |T134419:0|t[|cRXP_FRIENDLY_Rune d’assaut frénétique|r] 
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Netali
    .mob Blueheart
    .train 425447,1
    .skipgossip
step << Warrior
    #season 2
    .train 425447 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d'Assaut frénétique|r]
    .use 204716
    .itemcount 204716,1
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beryl|r au deuxième étage
	.train 588 >>Apprenez |T135926:0|t[Feu intérieur]
    .target Dark Cleric Beryl
    .xp <12,1
    .xp >14,1
step << Priest
    #optional
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beryl|r au deuxième étage
	.train 6074 >>Apprenez vos sorts de classe
    .target Dark Cleric Beryl
    .xp <14,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cain|r au second étage
    .train 145 >> Apprenez |T135812:0|t[Boule de feu (Rang 3)]
    .target Cain Firesong
    .xp <12,1
    .xp >14,1
step << Mage
    #optional
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cain|r au second étage
    .train 1449 >> Apprenez vos sorts de classe
    .target Cain Firesong
    .xp <12,1
    .xp >14,1
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
    .xp >14,1
step << Rogue
    #optional
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r au second étage
    .train 1758 >> Apprenez vos sorts de classe
    .target Marion Call
    .xp <14,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rupert|r
    .train 755 >> Apprenez [Captation de vie]
    .target Rupert Boch
    .xp <12,1
    .xp >14,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rupert|r
    .train 6222 >> Apprenez vos sorts de classe
    .target Rupert Boch
    .xp <14,1
step << skip
    #completewith Entersilverpine
    >>|cRXP_WARN_Si vous voyez|r |cRXP_FRIENDLY_Astor|r|cRXP_WARN_, parlez-lui et tuez-le. Dépouillez-le pour la lettre. Il patrouille la route entre Brill et le Sépulcre|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
step
    #xprate <2.1
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Nécrogarde Linnea|r
    .turnin 356 >>Rendez la quête Patrouille d'arrière-garde
    .target Deathguard Linnea
step << Undead
    #sticky
    #completewith EnterRFC
    .subzone 2437 >> Maintenant vous devez trouver un groupe pour le Gouffre de Ragefeu
    .dungeon RFC
step
    #optional
    #completewith ZeptoDurotar
    .abandon 374 >>Abandonnez la quête Preuves de la mort
step
    #optional
    #completewith ZeptoDurotar
    .abandon 375 >>Abandonnez la quête Le frisson de la mort
step << Undead
    #label ZeptoDurotar
    .goto Tirisfal Glades,60.96,58.63,12,0
    .goto Tirisfal Glades,61.51,59.01,10,0
    .goto Tirisfal Glades,61.27,59.22,8,0
    .goto Tirisfal Glades,61.13,58.84,8,0
    .goto Tirisfal Glades,61.38,58.71,8,0
    .goto Tirisfal Glades,61.34,59.17,8,0
    .goto Tirisfal Glades,60.51,58.69,-1
    .goto Tirisfal Glades,60.94,46.35,-1
    .zone Durotar >>Prenez le Zeppelin pour Durotar
    >>Fabriquez des Pierres à aiguiser/Bandages pendant l'attente << Warrior/Rogue
    >>Invoquez de la nourriture/eau pendant l'attente << Mage
    .zoneskip Durotar
step << Undead
    #completewith HiddenEnemiesPickup
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> Voyagez à Orgrimmar
    .dungeon RFC
step << Undead
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Doras|r
    >>N'achetez pas de trajet en vol !
    .fp Orgrimmar >> Prenez le chemin de vol d'Orgrimmar
    .target Doras
    .dungeon RFC
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Acceptez la quête Ennemis cachés
    .target Thrall
    .dungeon RFC
step << Undead
    .goto Durotar,53.08,9.19,0
    >>Tuez les membres de la |cRXP_ENEMY_Lame Ardente|r au Rocher du Crâne jusqu'à ce que l' |cRXP_LOOT_Insigne de lieutenant|r tombe
    .complete 5726,1 --Lieutenant's Insignia (1)
    .dungeon RFC
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >> Rendez la quête Ennemis cachés
    .accept 5727 >> Acceptez la quête Ennemis cachés
    .target Thrall
    .dungeon RFC
step << Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neeru Fireblade|r
    .accept 5761 >>Acceptez la quête Tuer la bête
    .target Neeru Fireblade
    .dungeon RFC
step << Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neeru Fireblade|r
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target Neeru Fireblade
    .dungeon RFC
step << Undead
    #label HiddenEnemiesPickup
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 5727 >> Rendez la quête Ennemis cachés
    .accept 5728 >> Acceptez la quête Ennemis cachés
    .target Thrall
    .dungeon RFC
step << Undead
    #completewith EnterRFC
    .destroy 14544 >>|cRXP_WARN_Détruisez l'|r |T134417:0|t[Insigne de lieutenant] |cRXP_WARN_comme vous n'en avez plus besoin|r
    .dungeon RFC
step << Undead
    #label EnterRFC
    .goto Orgrimmar,52.77,48.97
    .subzone 2437 >> Entrez dans le portail de l'instance du Gouffre de Ragefeu
    .dungeon RFC
step << Undead
    >>|cRXP_WARN_Si possible, faites en sorte que les membres du groupe vous partagent les quêtes suivantes|r
    .accept 5722 >> Acceptez la quête À la recherche de la sacoche perdue
    .accept 5723 >> Acceptez la quête Tester la force de l'ennemi
    .disablecheckbox
    .dungeon RFC
step << Undead
    #completewith next
    >>Tuez les |cRXP_ENEMY_Troggs Ragefeu|r et les |cRXP_ENEMY_Chamans Ragefeu|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << Undead
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maur|r
    .turnin 5722 >> Rendez la quête À la recherche de la sacoche perdue
    .accept 5724 >> Acceptez la quête Rapporter la sacoche perdue
    .target Maur Grimtotem
    .isOnQuest 5722
    .dungeon RFC
step << Undead
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maur|r
    .accept 5724 >> Acceptez la quête Rapporter la sacoche perdue
    .target Maur Grimtotem
    .isQuestTurnedIn 5722
    .dungeon RFC
step << Undead
    #label TroggsShamans
    >>Tuez les |cRXP_ENEMY_Troggs Ragefeu|r et les |cRXP_ENEMY_Chamans Ragefeu|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << Undead
    #requires TroggsShamans
    #completewith BazzalanandJergosh
    >>Tuez les |cRXP_ENEMY_Searing Blade Cultists|r et les |cRXP_ENEMY_Searing Blade Warlocks|r. Dépouillez-les pour le |cRXP_LOOT_Spells of Shadow|r et le |cRXP_LOOT_Incantations from the Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step << Undead
    >>Tuez |cRXP_ENEMY_Taragaman the Hungerer|r. Dépouillez-le pour son |cRXP_LOOT_Heart|r
    .complete 5761,1 -- Taragaman the Hungerer's Heart
    .mob Taragaman the Hungerer
    .isOnQuest 5761
    .dungeon RFC
step << Undead
    #label BazzalanandJergosh
    >>Tuez |cRXP_ENEMY_Bazzalan|r et |cRXP_ENEMY_Jergosh l'Invocateur|r
    .complete 5728,1 --Bazzalan (1)
    .mob +Bazzalan
    .complete 5728,2 --Jergosh the Invoker (1)
    .mob +Jergosh the Invoker
    .isOnQuest 5728
    .dungeon RFC
step << Undead
    >>Tuez les |cRXP_ENEMY_Searing Blade Cultists|r et les |cRXP_ENEMY_Searing Blade Warlocks|r. Dépouillez-les pour le |cRXP_LOOT_Spells of Shadow|r et le |cRXP_LOOT_Incantations from the Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step << Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neeru Fireblade|r
    .turnin 5761 >>Rendez la quête Tuer la bête
    .target Neeru Fireblade
    .isQuestComplete 5761
    .dungeon RFC
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 5728 >> Rendez la quête Ennemis cachés
    .accept 5729 >> Acceptez la quête Ennemis cachés
    .target Thrall
    .isQuestComplete 5728
    .dungeon RFC
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .accept 5729 >> Acceptez la quête Ennemis cachés
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step << Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neeru Fireblade|r
    .turnin 5729 >> Rendez la quête Ennemis cachés
    .accept 5730 >> Acceptez la quête Ennemis cachés
    .target Neeru Fireblade
    .dungeon RFC
    .isQuestTurnedIn 5728
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 5730 >> Rendez la quête Ennemis cachés
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step << Undead
    #completewith Conscript
    .subzone 362 >> Voyagez jusqu'à Tranchecolline
step << !Undead
    .hs >> Utilisez votre Pierre de foyer pour vous revenir à Tranchecolline
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
step << Rogue
    #optional << Undead
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kaplak|r
    .train 1758 >> Apprenez vos sorts de classe
    .target Kaplak
    .xp <14,1
    .xp >16,1
step << Rogue
    #optional << Undead
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kaplak|r
    .train 6761 >> Apprenez vos sorts de classe
    .target Kaplak
    .xp <16,1
step << Priest
    #optional << Undead
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tai'jin|r
	.train 8122 >>Apprenez vos sorts de classe
    .target Tai'jin
    .xp <14,1
    .xp >16,1
step << Priest
    #optional << Undead
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tai'jin|r
	.train 8102 >>Apprenez vos sorts de classe
    .target Tai'jin
    .xp <16,1
step << Warrior
    #optional << Undead
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarshaw|r
    .train 285 >>Apprenez vos sorts de classe
    .target Tarshaw Jaggedscar
    .xp <16,1
step << Warlock
    #optional << Undead
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dhugru|r
    .train 6222 >> Apprenez vos sorts de classe
    .target Dhugru Gorelust
    .xp <14,1
    .xp >16,1
step << Warlock
    #optional << Undead
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dhugru|r
    .train 1455 >> Apprenez vos sorts de classe
    .target Dhugru Gorelust
    .xp <16,1
step
    #label Conscript
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Acceptez la quête Sous les drapeaux de la Horde
    .target Takrin Pathseeker
step
    #completewith next
    .subzone 379 >> Voyagez jusqu'au poste de Guet-Lointain
step
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Rendez la quête Sous les drapeaux de la Horde
    .accept 842 >>Acceptez la quête Conscription à la Croisée
    .target Kargal Battlescar

]])
