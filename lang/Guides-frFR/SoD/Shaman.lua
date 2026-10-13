if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Éclair de lave - 8 (Mulgore)
#title Éclair de lave
#next Fouet de lave - 10 (Mulgore)


step
    +|cRXP_WARN_Vous devez être au moins niveau 8 afin d'obtenir la|r |T133816:0|t[Gravure de gants (Éclair de lave)] |cRXP_WARN_uniquement dans Mulgore|r
    >>|cRXP_WARN_Vous DEVEZ être au moins de niveau 3 pour équiper l'|r |T134918:0|t|cRXP_LOOT_[Icône sulfureuse]|r
    >>|cRXP_WARN_Vous devez gagner en niveau avant d'essayer d'obtenir|r |T133816:0|t[Gravure de gants (Éclair de lave)]
    .train 425344,1
    .xp >3,1
step
    +|cRXP_WARN_Vous devez être au moins niveau 8 afin d'obtenir la|r |T133816:0|t[Gravure de gants (Éclair de lave)] |cRXP_WARN_uniquement dans Mulgore|r
    .train 425344,1
    .xp <3,1
    .xp >8,1
step
    #loop
    .goto Mulgore,34.33,47.54,40,0
    .goto Mulgore,33.62,49.61,40,0
    .goto Mulgore,32.58,48.96,40,0
    .goto Mulgore,31.88,50.17,40,0
    .goto Mulgore,31.14,50.08,40,0
    .goto Mulgore,30.98,48.24,40,0
    .goto Mulgore,31.59,48.19,40,0
    .goto Mulgore,33.10,47.69,40,0
    >>Tuez les |cRXP_ENEMY_Terrassiers de Bael'dun|r et les |cRXP_ENEMY_Experts de Bael'dun|r. Dépouillez-les pour la |cRXP_LOOT_Clé de l’entrepôt d’artéfact|r
    >>|cRXP_WARN_Faites attention les |cRXP_ENEMY_Bael'dun Appraisers|r lancent|r [Soins Inférieurs] (Sort à distance: Se soignent eux-mêmes ou un allié à moins 50% de vie pour environ 75 points de vie)
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
    .xp <3,1
--XX WIP to here
step
    .goto Mulgore,31.56,49.54
    >>Ouvrez le coffre de l' |cRXP_PICK_Entrepôt de l’Artéfact|r. Récupérez l' |T134918:0|t|cRXP_LOOT_[Icône sulfureuse]|r
    .collect 206388,1 --Sulfurous Icon (1)
    .train 425344,1
    .xp <3,1
step
    .equip 18,206388 >> |cRXP_WARN_Équipez|r l' |T134918:0|t|cRXP_LOOT_[Icône sulfureuse]|r
    .use 206388
    .itemcount 206388,1 --Sulfurous Icon (1)
    .train 425344,1
    .xp <3,1
step
    #loop
    .goto Mulgore,34.33,47.54,40,0
    .goto Mulgore,33.62,49.61,40,0
    .goto Mulgore,32.58,48.96,40,0
    .goto Mulgore,31.88,50.17,40,0
    .goto Mulgore,31.14,50.08,40,0
    .goto Mulgore,30.98,48.24,40,0
    .goto Mulgore,31.59,48.19,40,0
    .goto Mulgore,33.10,47.69,40,0
    .aura 408828 >>|cRXP_WARN_Tuez les ennemis ayant subi des dégâts de votre|r |T136026:0|t[Horion de terre] |cRXP_WARN_au moins une fois. Faites-le 10 fois pour obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTE: Vous devez le faire sur les ennemis donnant de l'expérience pour obtenir des stacks|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
    .xp <3,1
    .xp >13,1
step
    #completewith Barrens
    .zone The Barrens >> Voyagez jusqu'aux Tarides
    .train 425344,1
    .xp <13,1
step
    #loop
    .goto The Barrens,53.94,25.86,50,0
    .goto The Barrens,54.17,25.06,50,0
    .goto The Barrens,54.86,25.43,50,0
    .goto The Barrens,55.62,25.71,50,0
    .goto The Barrens,55.98,26.36,50,0
    .goto The Barrens,55.71,27.21,50,0
    .goto The Barrens,55.44,27.35,50,0
    .goto The Barrens,54.99,26.79,50,0
    .aura 408828 >>|cRXP_WARN_Tuez les ennemis ayant subi des dégâts de votre|r |T136026:0|t[Horion de terre] |cRXP_WARN_au moins une fois. Faites-le 10 fois pour obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTE: Vous devez le faire sur les ennemis donnant de l'expérience pour obtenir des stacks|r
    .mob Razormane Thornweaver
    .mob Razormane Water Seeker
    .mob Razormane Hunter
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <13,1
    .xp >16,1
step
    #loop
    .goto The Barrens,55.97,16.17,50,0
    .goto The Barrens,55.43,16.15,50,0
    .goto The Barrens,54.10,15.51,50,0
    .goto The Barrens,53.10,15.25,50,0
    .goto The Barrens,53.73,13.77,50,0
    .goto The Barrens,55.09,15.00,50,0
    .goto The Barrens,55.62,14.86,50,0
    .aura 408828 >>|cRXP_WARN_Tuez les ennemis ayant subi des dégâts de votre|r |T136026:0|t[Horion de terre] |cRXP_WARN_au moins une fois. Faites-le 10 fois pour obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTE: Vous devez le faire sur les ennemis donnant de l'expérience pour obtenir des stacks|r
    .mob Hecklefang Hyena
    .mob Savannah Prowler
    .mob Savannah Huntress
    .mob Sunscale Screecher
    .mob Barrens Giraffe
    .mob Fleeting Plainstrider
    .mob Zhevra Runner
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <16,1
    .xp >20,1
step
    #label Barrens
    #loop
    .goto The Barrens,40.03,15.36,50,0
    .goto The Barrens,39.39,14.65,50,0
    .goto The Barrens,39.62,11.77,50,0
    .goto The Barrens,38.84,11.93,50,0
    .goto The Barrens,38.44,13.21,50,0
    .goto The Barrens,38.48,14.85,50,0
    .goto The Barrens,37.33,16.23,50,0
    .goto The Barrens,38.64,17.49,50,0
    .aura 408828 >>|cRXP_WARN_Tuez les ennemis ayant subi des dégâts de votre|r |T136026:0|t[Horion de terre] |cRXP_WARN_au moins une fois. Faites-le 10 fois pour obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTE: Vous devez le faire sur les ennemis donnant de l'expérience pour obtenir des stacks|r
    .mob Witchwing Slayer
    .mob Witchwing Windcaller
    .mob Witchwing Ambusher
    .mob Witchwing Roguefeather
    .mob Serena Bloodfeather
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <20,1
    .xp >22,1
step
    #completewith next
    .zone Stonetalon Mountains >> Voyagez jusqu'au Serres-Rocheuses
    .train 425344,1
    .xp <3,1
step
    #loop
    .goto Stonetalon Mountains,64.17,57.16,50,0
    .goto Stonetalon Mountains,60.55,54.86,50,0
    .goto Stonetalon Mountains,60.95,51.21,50,0
    .goto Stonetalon Mountains,64.40,48.64,50,0
    .goto Stonetalon Mountains,66.18,52.01,50,0
    .goto Stonetalon Mountains,67.20,51.49,50,0
    .goto Stonetalon Mountains,66.83,45.34,50,0
    .goto Stonetalon Mountains,69.89,53.54,50,0
    .goto Stonetalon Mountains,70.84,56.97,50,0
    .aura 408828 >>|cRXP_WARN_Tuez les ennemis ayant subi des dégâts de votre|r |T136026:0|t[Horion de terre] |cRXP_WARN_au moins une fois. Faites-le 10 fois pour obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTE: Vous devez le faire sur les ennemis donnant de l'expérience pour obtenir des stacks|r
    .mob Venture Co. Logger
    .mob Venture Co. Deforester
    .mob Venture Co. Operator
    .mob Venture Co. Light Shredder
    .mob XT:9
    .mob XT:4
    .mob Deepmoss Webspinner
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <22,1
step
    .cast 402265 >>|cRXP_WARN_Utilisez l'|r |T134918:0|t|cRXP_LOOT_[Icône sulfureuse]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Éclair de lave)]
    .use 206388
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <3,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Éclair de lave - 10 (Durotar)
#title Éclair de lave
#next Voie de la terre - 12 (Tarides)


    --Rune of Molten Blast
step
    +|cRXP_WARN_Vous DEVEZ être au moins de niveau 10 pour obtenir|r |T133816:0|t[Gravure de gants (Éclair de lave)] |cRXP_WARN_comme il s'agit du niveau requis pour apprendre|r |T135813:0|t[Horion de flammes]
    >>|cRXP_WARN_Vous devez gagner en niveau avant d'essayer d'obtenir|r |T133816:0|t[Gravure de gants (Éclair de lave)]
    >>|cRXP_WARN_Sinon, vous pouvez obtenir|r |T133816:0|t[Gravure de gants (Éclair de lave)] |cRXP_WARN_dans Mulgore au niveau 3+|r
    .train 425344,1
    .xp >10,1
step
    #completewith IconS
    #label Durotar1
    .zone Durotar >> Voyagez à Durotar
    .train 425344,1
    .xp <10,1
step
    #completewith next
    #requires Durotar1
    #label Durotar2
    .goto Durotar,53.28,42.57,20,0
    .goto Durotar,54.42,42.59,15 >>Dirigez-vous vers |cRXP_FRIENDLY_Swart|r à l'intérieur
    .train 425344,1
    .xp <10,1
step
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Apprenez |T135813:0|t[Horion de flammes]
    .target Swart
    .train 425344,1
    .xp <10,1
step
    #completewith next
    #requires Durotar2
    .goto Durotar,58.69,45.53,40 >>Voyagez vers le |cRXP_ENEMY_Makrura gelé|r
    .train 425344,1
    .xp <10,1
step
    #label IconS
    .goto Durotar,58.69,45.53
    >>|cRXP_WARN_Cherchez d'autres mages, démonistes ou chamans près du |cRXP_ENEMY_Makrura gelé|r ou dans le channel de Discussion générale (tapez /1 dans le chat)|r
    >>|cRXP_WARN_Lancez|r |T135813:0|t[Horion de flammes] |cRXP_WARN_sur le |cRXP_ENEMY_Makrura gelé|r pour appliquer un stack de|r |T135805:0|t[Application de chaleur]|cRXP_WARN_. Appliquez 5 charges à la fois pour tuer le |cRXP_ENEMY_Makrura gelé|r. Dépouillez-le pour l'|r |T134918:0|t|cRXP_LOOT_[Icône sulfureuse]|r
    >>|cRXP_WARN_Sinon, vous pouvez obtenir|r |T133816:0|t[Gravure de gants (Éclair de lave)] |cRXP_WARN_seul dans Mulgore|r
    >>|cRXP_WARN_NOTE:|r |T135813:0|t[Arme Langue de feu] |cRXP_WARN_n'applique AUCUN stack de|r |T135805:0|t[Application de chaleur]|r
    .collect 206388,1 --Sulfurous Icon (1)
    .mob Frozen Makrura
    .train 425344,1
    .xp <10,1
    .xp >12,1
step
    .goto Durotar,58.69,45.53
    >>|cRXP_WARN_Cherchez d'autres mages, démonistes ou chamans près du |cRXP_ENEMY_Makrura gelé|r ou dans le channel de Discussion générale (tapez /1 dans le chat)|r
    >>|cRXP_WARN_Lancez|r |T135813:0|t[Horion de flammes] |cRXP_WARN_sur le |cRXP_ENEMY_Makrura gelé|r pour appliquer un stack de|r |T135805:0|t[Application de chaleur]|cRXP_WARN_. Appliquez 5 charges à la fois pour tuer le |cRXP_ENEMY_Makrura gelé|r. Dépouillez-le pour l'|r |T134918:0|t|cRXP_LOOT_[Icône sulfureuse]|r
    >>|cRXP_WARN_Sinon, vous pouvez obtenir|r |T133816:0|t[Gravure de gants (Éclair de lave)] |cRXP_WARN_seul dans Mulgore|r
    >>|cRXP_WARN_NOTE:|r |T135813:0|t[Arme Langue de feu] |cRXP_WARN_et|r |T135824:0|t[Totem Nova de feu] |cRXP_WARN_n'appliquent AUCUN stack d'|r |T135805:0|t[Application de chaleur]|r
    .collect 206388,1 --Sulfurous Icon (1)
    .mob Frozen Makrura
    .train 425344,1
    .xp <12,1
--XX Flametongue and Fire Nova doesn't seem to work
step
    .equip 18,206388 >> |cRXP_WARN_Équipez|r l' |T134918:0|t|cRXP_LOOT_[Icône sulfureuse]|r
    .use 206388
    .itemcount 206388,1 --Sulfurous Icon (1)
    .train 425344,1
    .xp <10,1
step
    #loop
    .goto Durotar,56.87,53.05,50,0
    .goto Durotar,56.82,54.69,50,0
    .goto Durotar,58.64,53.86,50,0
    .goto Durotar,59.40,56.58,50,0
    .goto Durotar,58.41,58.17,50,0
    .goto Durotar,56.21,58.51,50,0
    .aura 408828 >>|cRXP_WARN_Tuez les ennemis ayant subi des dégâts de votre|r |T136026:0|t[Horion de terre] |cRXP_WARN_au moins une fois. Faites-le 10 fois pour obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTE: Vous devez le faire sur les ennemis donnant de l'expérience pour obtenir des stacks|r
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <10,1
    .xp >11,1
step
    #completewith Barrens
    .zone The Barrens >> Voyagez jusqu'aux Tarides
    .train 425344,1
    .xp <10,1
step
    #loop
    .goto The Barrens,53.94,25.86,50,0
    .goto The Barrens,54.17,25.06,50,0
    .goto The Barrens,54.86,25.43,50,0
    .goto The Barrens,55.62,25.71,50,0
    .goto The Barrens,55.98,26.36,50,0
    .goto The Barrens,55.71,27.21,50,0
    .goto The Barrens,55.44,27.35,50,0
    .goto The Barrens,54.99,26.79,50,0
    .aura 408828 >>|cRXP_WARN_Tuez les ennemis ayant subi des dégâts de votre|r |T136026:0|t[Horion de terre] |cRXP_WARN_au moins une fois. Faites-le 10 fois pour obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTE: Vous devez le faire sur les ennemis donnant de l'expérience pour obtenir des stacks|r
    .mob Razormane Thornweaver
    .mob Razormane Water Seeker
    .mob Razormane Hunter
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <11,1
    .xp >16,1
step
    #loop
    .goto The Barrens,55.97,16.17,50,0
    .goto The Barrens,55.43,16.15,50,0
    .goto The Barrens,54.10,15.51,50,0
    .goto The Barrens,53.10,15.25,50,0
    .goto The Barrens,53.73,13.77,50,0
    .goto The Barrens,55.09,15.00,50,0
    .goto The Barrens,55.62,14.86,50,0
    .aura 408828 >>|cRXP_WARN_Tuez les ennemis ayant subi des dégâts de votre|r |T136026:0|t[Horion de terre] |cRXP_WARN_au moins une fois. Faites-le 10 fois pour obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTE: Vous devez le faire sur les ennemis donnant de l'expérience pour obtenir des stacks|r
    .mob Hecklefang Hyena
    .mob Savannah Prowler
    .mob Savannah Huntress
    .mob Sunscale Screecher
    .mob Barrens Giraffe
    .mob Fleeting Plainstrider
    .mob Zhevra Runner
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <16,1
    .xp >20,1
step
    #label Barrens
    #loop
    .goto The Barrens,40.03,15.36,50,0
    .goto The Barrens,39.39,14.65,50,0
    .goto The Barrens,39.62,11.77,50,0
    .goto The Barrens,38.84,11.93,50,0
    .goto The Barrens,38.44,13.21,50,0
    .goto The Barrens,38.48,14.85,50,0
    .goto The Barrens,37.33,16.23,50,0
    .goto The Barrens,38.64,17.49,50,0
    .aura 408828 >>|cRXP_WARN_Tuez les ennemis ayant subi des dégâts de votre|r |T136026:0|t[Horion de terre] |cRXP_WARN_au moins une fois. Faites-le 10 fois pour obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTE: Vous devez le faire sur les ennemis donnant de l'expérience pour obtenir des stacks|r
    .mob Witchwing Slayer
    .mob Witchwing Windcaller
    .mob Witchwing Ambusher
    .mob Witchwing Roguefeather
    .mob Serena Bloodfeather
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <20,1
    .xp >22,1
step
    #completewith next
    .zone Stonetalon Mountains >> Voyagez jusqu'au Serres-Rocheuses
    .train 425344,1
    .xp <10,1
step
    #loop
    .goto Stonetalon Mountains,64.17,57.16,50,0
    .goto Stonetalon Mountains,60.55,54.86,50,0
    .goto Stonetalon Mountains,60.95,51.21,50,0
    .goto Stonetalon Mountains,64.40,48.64,50,0
    .goto Stonetalon Mountains,66.18,52.01,50,0
    .goto Stonetalon Mountains,67.20,51.49,50,0
    .goto Stonetalon Mountains,66.83,45.34,50,0
    .goto Stonetalon Mountains,69.89,53.54,50,0
    .goto Stonetalon Mountains,70.84,56.97,50,0
    .aura 408828 >>|cRXP_WARN_Tuez les ennemis ayant subi des dégâts de votre|r |T136026:0|t[Horion de terre] |cRXP_WARN_au moins une fois. Faites-le 10 fois pour obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTE: Vous devez le faire sur les ennemis donnant de l'expérience pour obtenir des stacks|r
    .mob Venture Co. Logger
    .mob Venture Co. Deforester
    .mob Venture Co. Operator
    .mob Venture Co. Light Shredder
    .mob XT:9
    .mob XT:4
    .mob Deepmoss Webspinner
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <22,1
step
    .cast 402265 >>|cRXP_WARN_Utilisez l'|r |T134918:0|t|cRXP_LOOT_[Icône sulfureuse]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Éclair de lave)]
    .use 206388
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <10,1
--XX Cast ID may be wrong, may need to be checked
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Fouet de lave - 10 (Mulgore)
#title Fouet de lave
#next Soutien ancestral - 10 (Mulgore)


    --Rune of Lava Lash
--XX Worth mentioning "Dual Wield Skill" in the name? Cuts off ingame due to it being 3 lines though
step
    +|cRXP_WARN_Vous devrez être au moins de niveau 10 pour obtenir|r |T133816:0|t[Gravure de gants (Fouet de lave)] |cRXP_WARN_et|r |T132147:0|t[Ambidextrie] |cRXP_WARN_dans Mulgore, seul|r
    >>|cRXP_WARN_Vous DEVEZ être au moins de niveau 4 comme il s'agit du niveau requis pour commencer la suite de quêtes|r
    >>|cRXP_WARN_Vous devez gagner davantage de niveaux avant d'essayer d'obtenir|r |T133816:0|t[Gravure de gants (Fouet de lave)] |cRXP_WARN_et|r |T132147:0|t[Ambidextrie]
    .train 410104,1
    .xp >4,1
step
    +|cRXP_WARN_Vous devrez être au moins de niveau 10 pour obtenir|r |T133816:0|t[Gravure de gants (Fouet de lave)] |cRXP_WARN_et|r |T132147:0|t[Ambidextrie] |cRXP_WARN_dans Mulgore, seul|r
    >>|cRXP_WARN_Vous devez gagner davantage de niveaux avant d'essayer d'obtenir|r |T133816:0|t[Gravure de gants (Fouet de lave)] |cRXP_WARN_et|r |T132147:0|t[Ambidextrie]
    .train 410104,1
    .xp <4,1
    .xp >10,1
--XX WIP to here
step
    #completewith next
    .zone Thunder Bluff >> Voyagez jusqu'à Pitons-du-Tonnerre
    .train 410104,1
    .xp <4,1
step
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Boarton Ombre-Totem|r
    >>|cRXP_WARN_Il est|r |T132320:0|t[Camouflé]
    .accept 76156 >>Acceptez la quête La traque de la Terre-Mère
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step
    #completewith next
    .goto Mulgore,61.46,47.21,20 >>Entrez dans la Mine de la KapitalRisk
    >>|cRXP_WARN_NOTE: le|r |T132288:0|t[Déguisement de la KapitalRisk] |cRXP_WARN_ne fonctionne PAS|r
    .train 410104,1
    .xp <4,1
step
    #loop
    .goto Mulgore,63.77,43.97,15,0
    .goto Mulgore,62.81,42.81,15,0
    .goto Mulgore,60.38,42.78,15,0
    .goto Mulgore,61.64,41.33,15,0
    .goto Mulgore,63.51,39.29,15,0
    .goto Mulgore,63.39,40.80,15,0
--  .goto Mulgore,66.53,39.47,15,0 --Very deep inside the top of the mine, skipping
    .goto Mulgore,60.99,37.00,15,0
    .goto Mulgore,59.64,36.05,15,0 --Outside
    .goto Mulgore,61.72,35.15,15,0 --Outside
    >>Ouvrez les |cRXP_PICK_Fournitures pour dynamitage|r à l'intérieur et à l'extérieur de la mine de l'autre côté. Récupérez-les pour les |cRXP_LOOT_Charges d’hydroglycérine excavatrices|r
    >>|cRXP_WARN_Restez sur les niveaux supérieurs de la grotte si cela est possible|r
    .complete 76156,1 --Seaforium Mining Charge (5)
    .train 410104,1
    .xp <4,1
--XX Didn't add the bottom of the mine ones
step
    #completewith next
    .goto Mulgore,59.99,35.82
    .subzone 215 >>Quittez la Mine de la Kapital Risk de l'autre côté
    .train 410099,1
    .xp <4,1
step
    #completewith next
    .goto Mulgore,60.39,33.54,40 >>Voyagez vers les |cRXP_FRIENDLY_Restes d'aventurier|r
    .train 410099,1
    .xp <4,1
step
    #label IconS
    .goto Mulgore,60.39,33.54
    >>|cRXP_WARN_Si vous n'avez pas|r |T134596:0|t[Gravure de pantalon (Soutien ancestral)]|cRXP_WARN_, c'est le bon moment pour le faire|r
    >>|cRXP_WARN_Si vous ne voulez pas obtenir cette rune, passez cette étape|r
    >>|cRXP_WARN_Rejoignez un groupe avec un autre Chaman, Prêtre ou Druide se tenant sur les |cRXP_FRIENDLY_Restes d'aventurier|r, ou demandez l'aide à un Chaman, un Prêtre ou un Druide dans le canal Général (Tapez /1 dans le chat)|r
    >>|cRXP_WARN_Parlez aux |cRXP_FRIENDLY_Restes d'aventurier|r sur le sol pour commencer le rituel, OU cliquez sur le|r |T136223:0|t[Rituel d'esprit] de l'autre joueur|cRXP_WARN_(en étant dans leur groupe)|r
    >>|cRXP_WARN_Un |cRXP_FRIENDLY_Esprit de l'aventurier|r apparaîtra et mourra après la complétion du rituel. Dépouillez-le pour l' |r |T237571:0|t|cRXP_LOOT_[Écho des ancêtres]|r
    .collect 210589,1 --Echo of the Ancestors (1)
    .target Adventurer's Remains
    .target Adventurer's Spirit
    .skipgossip
    .train 410099,1
    .xp <4,1
step
    .cast 402265 >>|cRXP_WARN_Utilisez l'|r |T237571:0|t|cRXP_LOOT_[Écho des ancêtres]|r |cRXP_WARN_pour apprendre|r |T134596:0|t[Gravure de pantalon (Soutien ancestral)]
    .use 210589
    .itemcount 210589,1 --Echo of the Ancestors (1)
    .train 410099,1
    .xp <4,1
step
    #completewith next
    .zone Thunder Bluff >> Voyagez jusqu'à Pitons-du-Tonnerre
    .train 410104,1
    .xp <4,1
--XX Logout skips take you to Bloodhoof, not worth doing
step
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Boarton Ombre-Totem|r
    >>|cRXP_WARN_Il est|r |T132320:0|t[Camouflé]
    .turnin 76156 >>Rendez la quête La traque de la Terre-Mère
    .accept 76160 >>Acceptez la quête La traque de la Terre-Mère
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step
    #completewith next
    .goto Mulgore,53.91,23.45
    .zone Mulgore >>Prenez l'ascenseur nord pour descendre à Mulgore
    .train 410104,1
    .xp <4,1
step
    #loop
    .goto Mulgore,38.80,16.03,10,0
    .goto Mulgore,37.79,10.86,10,0
    .goto Mulgore,38.01,10.21,10,0
    .goto Mulgore,38.55,8.10,10,0
    .goto Mulgore,38.06,7.47,10,0
    .goto Mulgore,37.36,9.99,10,0
    .goto Mulgore,37.31,10.41,10,0
    .goto Mulgore,35.80,11.21,10,0
    .goto Mulgore,36.20,11.41,10,0
    .goto Mulgore,36.21,12.60,10,0
    .goto Mulgore,36.55,12.84,10,0
    .goto Mulgore,36.65,13.26,10,0
    .goto Mulgore,37.18,12.36,10,0
    >>Ramassez les |cRXP_LOOT_Cônes de Furie-des-vents|r sur le sol
    .collect 206170,8,76160,1 --Windfury Cone (8)
    .train 410104,1
    .xp <4,1
step
    >>Utilisez le |T133748:0|t[Mortier et pilon] pour créer l' |T133213:0|t[Onguent de pin]
    .complete 76160,1 --Pine Salve (1)
    .use 206176
    .train 410104,1
    .xp <4,1
step
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Boarton Ombre-Totem|r
    >>|cRXP_WARN_Il est|r |T132320:0|t[Camouflé]
    .turnin 76160 >>Rendez la quête La traque de la Terre-Mère
    .accept 76240 >>Acceptez la quête La traque de la Terre-Mère
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step
    #ah
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Stampi|r
    >>|cRXP_BUY_Achetez un|r |T133894:0|t[Goujon brillant cru] |cRXP_BUY_de l'Hôtel des ventes|r
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .target Auctioneer Stampi
    .train 410104,1
    .xp <4,1
step
    #ssf
    #completewith Sewa
    .goto Thunder Bluff,46.13,51.59,12,0
    .goto Thunder Bluff,47.09,50.07,4,0
    .goto Thunder Bluff,46.49,49.16,4,0
    .goto Thunder Bluff,46.05,49.74,4,0
    .goto Thunder Bluff,46.34,50.50,4,0
    .goto Thunder Bluff,55.78,47.02,15 >>Voyagez vers |cRXP_FRIENDLY_Sewa Cours-la-brume|r
    .train 410104,1
    .xp <4,1
step
    #ssf
    #sticky
    #label Kah
    .goto Thunder Bluff,56.13,46.39,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kah Cours-la-brume|r
    .train 7734 >>Apprenez la |T136245:0|t[Pêche]
    .target Kah Mistrunner
    .train 410104,1
    .xp <4,1
step
    #ssf
    #label Sewa
    .goto Thunder Bluff,55.78,47.02,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sewa Cours-la-brume|r
    >>|cRXP_BUY_Achetez une|r |T132932:0|t[Canne à pêche] |cRXP_BUY_et une|r |T134335:0|t[Verroterie brillante] |cRXP_BUY_chez elle|r
    .collect 6256,1 --Fishing Pole (1)
    .collect 6529,1 --Shiny Bauble (1)
    .target Sewa Mistrunner
    .train 410104,1
    .xp <4,1
step
    #ssf
    #completewith Fish
    #requires Kah
    #label Pole
    .equip 16,6256 >> |cRXP_WARN_Équipez la|r |T132932:0|t[Canne à pêche]
    .use 6256
    .train 410104,1
    .xp <4,1
step
    #ssf
    #completewith Fish
    #requires Pole
    .aura 8087 >> |cRXP_WARN_Attachez la|r |T134335:0|t[Verroterie brillante] |cRXP_WARN_à votre|r |T132932:0|t[Canne à pêche]
    .use 6529
    .train 410104,1
    .xp <4,1
step
    #ssf
    #label Fish
    #requires Kah
    .goto Thunder Bluff,40.42,58.55
    >>Pêchez dans l'étang jusqu'à obtenir un |T133894:0|t[|cRXP_LOOT_Goujon brillant cru|r]
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .train 410104,1
    .xp <4,1
step
    >>Utilisez l' |T132147:0|t[Ensemble de couteaux] pour créer les |T134007:0|t[Morceaux de poissons]
    .complete 76240,1 --Fish Chunks (1)
    .use 206344
    .train 410104,1
    .xp <4,1
step
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Boarton Ombre-Totem|r
    >>|cRXP_WARN_Il est|r |T132320:0|t[Camouflé]
    .turnin 76240 >>Rendez la quête La traque de la Terre-Mère
-- .train 410104 >>|cRXP_WARN_You will train|r |T236289:0|t[Lava Lash] |cRXP_WARN_and|r |T132147:0|t[Dual Wield] |cRXP_WARN_upon turnin|r
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Bouclier d'eau - 20 (Tarides)
#title Bouclier d’eau
#next Loup fantôme supérieur - 25 (Serres-Rocheuses)


step
    +|cRXP_WARN_Vous DEVEZ être au moins de niveau 20 afin d'obtenir la|r |T133816:0|t[Gravure de gants (Bouclier d’eau)] |cRXP_WARN_, comme il s'agit du niveau requis pour apprendre|r |T135849:0|t[Horion de givre]
    >>|cRXP_WARN_Vous devez gagner en niveau avant d'essayer d'obtenir|r |T133816:0|t[Gravure de gants (Bouclier d’eau)]
    .train 410097,1
    .xp >20,1
step
    .zone Orgrimmar >>Voyagez à Orgrimmar ou à Thunder Bluff
    .zoneskip Thunder Bluff
    .train 8050,1
    .xp <20,1
step
    .zone Orgrimmar >>Voyagez à Orgrimmar ou à Thunder Bluff
    .zoneskip Thunder Bluff
    .train 8056,1
    .xp <20,1
step
    #completewith OrgTrain
    .goto Orgrimmar,40.31,37.01,15,0
    .goto Orgrimmar,38.81,36.37,15 >>Voyagez vers |cRXP_FRIENDLY_Kardris|r
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    .train 8050 >> Apprenez |T135813:0|t[Horion de flammes]
    .train 8056 >> Apprenez |T135849:0|t[Horion de givre]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 8050,1
    .train 8056,1
    .xp <20,1
step
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    .train 8050 >> Apprenez |T135813:0|t[Horion de flammes]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    #label OrgTrain
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    .train 8056 >> Apprenez |T135849:0|t[Horion de givre]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    #ah
    .goto Orgrimmar,50.67,70.39,0
    .goto Orgrimmar,53.74,64.60,15,0
    .goto Orgrimmar,55.54,64.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commissaire-priseur Wabang|r
    >>|cRXP_BUY_Achetez une|r |T134237:0|t[Clé du butin des Kolkar] |cRXP_BUY_à l'Hôtel des ventes|r
    >>|cRXP_WARN_Cela vous permettra de gagner quelques minutes plus tard|r
    .collect 5020,1 --Kolkar Booty Key (1)
    .target Auctioneer Wabang
    .zoneskip Orgrimmar,1
    .train 410097,1
    .xp <20,1
step
    #completewith TBTrain
    .goto Thunder Bluff,22.82,21.11,15 >>Voyagez vers |cRXP_FRIENDLY_Siln Skychaser|r
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Siln|r
    .train 8050 >> Apprenez |T135813:0|t[Horion de flammes]
    .train 8056 >> Apprenez |T135849:0|t[Horion de givre]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 8050,1
    .train 8056,1
    .xp <20,1
step
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Siln|r
    .train 8050 >> Apprenez |T135813:0|t[Horion de flammes]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    #label TBTrain
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Siln|r
    .train 8056 >> Apprenez |T135849:0|t[Horion de givre]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    #ah
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Stampi|r
    >>|cRXP_BUY_Achetez une|r |T134237:0|t[Clé du butin des Kolkar] |cRXP_BUY_à l'Hôtel des ventes|r
    >>|cRXP_WARN_Cela vous permettra de gagner quelques minutes plus tard|r
    .collect 5020,1 --Kolkar Booty Key (1)
    .target Auctioneer Stampi
    .zoneskip Thunder Bluff,1
    .train 410097,1
    .xp <20,1
--XX easier to farm it IF the user is not already there to train
step
    #completewith next
    .zone The Barrens >>Voyagez jusqu'aux Tarides
    .train 410097,1
    .xp <20,1
step
    #loop
    .goto The Barrens,45.78,25.52,0
    .goto The Barrens,43.86,21.38,0
    .goto The Barrens,43.56,26.30,0
    .goto The Barrens,45.78,25.52,50,0
    .goto The Barrens,46.54,22.99,50,0
    .goto The Barrens,45.03,20.09,50,0
    .goto The Barrens,43.86,21.38,50,0
    .goto The Barrens,43.49,23.57,50,0
    .goto The Barrens,43.56,26.30,50,0
    >>Tuez les |cRXP_ENEMY_Querelleurs kolkars|r et les |cRXP_ENEMY_Légion-tempêtes kolkars|r. Dépouillez-les pour une |T134237:0|t[Clé du butin des Kolkar]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .train 410097,1
    .xp <20,1
step
    .goto The Barrens,43.02,23.52,-1
--  .goto The Barrens,52.73,41.84,-1
--  .goto The Barrens,44.33,37.66,-1
    >>Ouvrez le |cRXP_PICK_Butin des Kolkar|r sur le sol. Dépouillez-le pour l' |T135832:0|t|cRXP_LOOT_[Icône de tempête]|r
    .collect 206382,1 --Tempest Icon (1)
    .itemcount 5020,1 --Kolkar Booty Key (1)
    .train 410097,1
    .xp <20,1
step
    .equip 18,206382 >> |cRXP_WARN_Équipez l'|r |T135832:0|t|cRXP_LOOT_[Icône de tempête]|r
    .use 206382
    .itemcount 206382,1 --Tempest Icon (1)
    .train 410097,1
    .xp <20,1
step
    #loop
    .goto The Barrens,40.03,15.36,50,0
    .goto The Barrens,39.39,14.65,50,0
    .goto The Barrens,39.62,11.77,50,0
    .goto The Barrens,38.84,11.93,50,0
    .goto The Barrens,38.44,13.21,50,0
    .goto The Barrens,38.48,14.85,50,0
    .goto The Barrens,37.33,16.23,50,0
    .goto The Barrens,38.64,17.49,50,0
    .aura 408828 >>|cRXP_WARN_Tuez des ennemis en ayant infligé des dégâts en utilisant un sort de Nature (|r|T136026:0|t[Horion de terre]|cRXP_WARN_), un sort de Givre (|r|T135849:0|t[Horion de givre]|cRXP_WARN_), et un sort de Feu (|r|T135813:0|t[Horion de flammes]|cRXP_WARN_) sur eux au moins une fois. Faites-le 10 fois pour obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTE: Vous devez le faire sur les ennemis donnant de l'expérience pour obtenir des stacks|r
    .mob Witchwing Slayer
    .mob Witchwing Windcaller
    .mob Witchwing Ambusher
    .mob Witchwing Roguefeather
    .mob Serena Bloodfeather
    .itemStat 18,QUALITY,2
    .train 410097,1
    .xp <20,1
    .xp >22,1
step
    #completewith next
    .zone Stonetalon Mountains >> Voyagez jusqu'au Serres-Rocheuses
    .train 410097,1
    .xp <22,1
step
    #loop
    .goto Stonetalon Mountains,64.17,57.16,50,0
    .goto Stonetalon Mountains,60.55,54.86,50,0
    .goto Stonetalon Mountains,60.95,51.21,50,0
    .goto Stonetalon Mountains,64.40,48.64,50,0
    .goto Stonetalon Mountains,66.18,52.01,50,0
    .goto Stonetalon Mountains,67.20,51.49,50,0
    .goto Stonetalon Mountains,66.83,45.34,50,0
    .goto Stonetalon Mountains,69.89,53.54,50,0
    .goto Stonetalon Mountains,70.84,56.97,50,0
    .aura 408828 >>|cRXP_WARN_Tuez des ennemis en ayant infligé des dégâts en utilisant un sort de Nature (|r|T136026:0|t[Horion de terre]|cRXP_WARN_), un sort de Givre (|r|T135849:0|t[Horion de givre]|cRXP_WARN_), et un sort de Feu (|r|T135813:0|t[Horion de flammes]|cRXP_WARN_) sur eux au moins une fois. Faites-le 10 fois pour obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTE: Vous devez le faire sur les ennemis donnant de l'expérience pour obtenir des stacks|r
    .mob Venture Co. Logger
    .mob Venture Co. Deforester
    .mob Venture Co. Operator
    .mob Venture Co. Light Shredder
    .mob XT:9
    .mob XT:4
    .mob Deepmoss Webspinner
    .itemStat 18,QUALITY,2
    .train 410097,1
    .xp <22,1
step
    .cast 402265 >>|cRXP_WARN_Utilisez l'|r |T135832:0|t|cRXP_LOOT_[Icône de tempête]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Bouclier d’eau)]
    .use 206382
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410097,1
    .xp <20,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Bouclier d'eau - 20 (Forêt des Pins-argentés)
#title Bouclier d’eau
#next Loup fantôme supérieur - 25 (Serres-Rocheuses)

step
    +|cRXP_WARN_Vous DEVEZ être au moins de niveau 20 afin d'obtenir la|r |T133816:0|t[Gravure de gants (Bouclier d’eau)] |cRXP_WARN_, comme il s'agit du niveau requis pour apprendre|r |T135849:0|t[Horion de givre]
    >>|cRXP_WARN_Vous devez gagner en niveau avant d'essayer d'obtenir|r |T133816:0|t[Gravure de gants (Bouclier d’eau)]
    .train 410097,1
    .xp >20,1
step
    .zone Orgrimmar >>Voyagez à Orgrimmar ou à Thunder Bluff
    .zoneskip Thunder Bluff
    .train 8050,1
    .xp <20,1
step
    .zone Orgrimmar >>Voyagez à Orgrimmar ou à Thunder Bluff
    .zoneskip Thunder Bluff
    .train 8056,1
    .xp <20,1
step
    #completewith OrgTrain
    .goto Orgrimmar,40.31,37.01,15,0
    .goto Orgrimmar,38.81,36.37,15 >>Voyagez vers |cRXP_FRIENDLY_Kardris|r
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    .train 8050 >> Apprenez |T135813:0|t[Horion de flammes]
    .train 8056 >> Apprenez |T135849:0|t[Horion de givre]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 8050,1
    .train 8056,1
    .xp <20,1
step
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    .train 8050 >> Apprenez |T135813:0|t[Horion de flammes]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    #label OrgTrain
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    .train 8056 >> Apprenez |T135849:0|t[Horion de givre]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    #completewith TBTrain
    .goto Thunder Bluff,22.82,21.11,15 >>Voyagez vers |cRXP_FRIENDLY_Siln Skychaser|r
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Siln|r
    .train 8050 >> Apprenez |T135813:0|t[Horion de flammes]
    .train 8056 >> Apprenez |T135849:0|t[Horion de givre]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 8050,1
    .train 8056,1
    .xp <20,1
step
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Siln|r
    .train 8050 >> Apprenez |T135813:0|t[Horion de flammes]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    #label TBTrain
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Siln|r
    .train 8056 >> Apprenez |T135849:0|t[Horion de givre]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    #completewith Grimson
    #label Grimson1
    .zone Silverpine Forest >>Voyagez à la Forêt des Pins argentés
    .train 410097,1
    .xp <20,1
step
    #completewith Grimson
    #requires Grimson1
    #label Grimson2
    .goto Silverpine Forest,56.65,45.97,15 >>Entrez dans la mine du gouffre d’Elem
    .train 410097,1
    .xp <20,1
step
    #completewith Grimson
    #requires Grimson2
    .goto Silverpine Forest,57.28,45.42,10,0
    .goto Silverpine Forest,57.66,44.82,10,0
    .goto Silverpine Forest,58.59,44.85,30 >>Voyagez vers |cRXP_ENEMY_Grimson le Pâle|r
    .train 410097,1
    .xp <20,1
step
    #label Grimson
    .goto Silverpine Forest,58.59,44.85
    >>Tuez |cRXP_ENEMY_Grimson le Pâle|r à l'intérieur. Dépouillez-le pour l' |T135832:0|t|cRXP_LOOT_[Icône de tempête]|r
    .collect 206382,1 --Tempest Icon (1)
    .mob Grimson the Pale
    .train 410097,1
    .xp <20,1
step
    .equip 18,206382 >> |cRXP_WARN_Équipez l'|r |T135832:0|t|cRXP_LOOT_[Icône de tempête]|r
    .use 206382
    .itemcount 206382,1 --Tempest Icon (1)
    .train 410097,1
    .xp <20,1
step
    #loop
    .goto Silverpine Forest,47.68,86.24,50,0
    .goto Silverpine Forest,45.81,86.37,50,0
    .goto Silverpine Forest,44.26,84.37,50,0
    .aura 408828 >>|cRXP_WARN_Tuez des ennemis en ayant infligé des dégâts en utilisant un sort de Nature (|r|T136026:0|t[Horion de terre]|cRXP_WARN_), un sort de Givre (|r|T135849:0|t[Horion de givre]|cRXP_WARN_), et un sort de Feu (|r|T135813:0|t[Horion de flammes]|cRXP_WARN_) sur eux au moins une fois. Faites-le 10 fois pour obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTE: Vous devez le faire sur les ennemis donnant de l'expérience pour obtenir des stacks|r
    .mob Valdred Moray
    .mob Dalin Forgewright
    .mob Haggard Refugee
    .mob Sickly Refugee
    .itemStat 18,QUALITY,2
    .train 410097,1
    .xp <20,1
    .xp >22,1
step
    .cast 402265 >>|cRXP_WARN_Utilisez l'|r |T135832:0|t|cRXP_LOOT_[Icône de tempête]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Bouclier d’eau)]
    .use 206382
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410097,1
    .xp <20,1
step
    #completewith next
    >>|cRXP_WARN_Si vous n'avez pas déjà la|r |T133816:0|t[Gravure de gants (Explosion de lave)] |cRXP_WARN_, il est rentable de le faire maintenant. Si vous ne voulez pas le faire, passez cette étape|r
    .train 410095,1
    .xp <25,1
step
    #completewith next
    .zone Hillsbrad Foothills >>Voyagez aux Contreforts de Hautebrande
    .train 410095,1
    .xp <25,1
step
    #loop
    .goto Hillsbrad Foothills,63.73,59.26,40,0
    .goto Hillsbrad Foothills,65.49,60.30,40,0
    .goto Hillsbrad Foothills,66.30,61.11,40,0
    .goto Hillsbrad Foothills,63.61,62.04,40,0
    .goto Hillsbrad Foothills,63.21,61.04,40,0
    .goto Hillsbrad Foothills,62.56,63.55,40,0
    .goto Hillsbrad Foothills,62.98,63.70,40,0
    >>Tuez les |cRXP_ENEMY_Chamans Fangemufles|r. Dépouillez-les pour l' |T134920:0|t|cRXP_LOOT_[Icône kajarique]|r
    .collect 206387,1 --Kajaric Icon (1)
    .mob Mudsnout Shaman
    .train 410095,1
    .xp <25,1
step
    .equip 18,206387 >> |cRXP_WARN_Équipez l'|r |T134920:0|t|cRXP_LOOT_[Icône kajarique]|r
    .use 206387
    .itemcount 206387,1 --Kajaric Icon (1)
    .train 410095,1
    .xp <25,1
step
    #completewith next
    .zone Orgrimmar >> Voyagez à Orgrimmar
    .train 410095,1
    .xp <25,1
step
    .goto Orgrimmar,52.77,48.97
    .subzone 2437 >> Entrez dans le Gouffre de Ragefeu à la Faille de l'Ombre
    .itemStat 18,QUALITY,2
    .train 410095,1
    .xp <25,1
step
    >>|cRXP_WARN_Collez le mur de droite. Après avoir descendu la rampe (juste après le 5ème mob), marchez dans le bassin de lave peu profond à votre droite|r
    >>|cRXP_WARN_Les dégâts que vous subissez de la|r |T135805:0|t[Lave] |cRXP_WARN_est réduit à 91 quand l'|r |T134920:0|t|cRXP_LOOT_[Icône kajarique]|r |cRXP_WARN_est équipée|r
    .aura 408828 >>|cRXP_WARN_Subissez des dégâts de la |T135805:0|t[Lave] |cRXP_WARN_à 5 reprises|r
    .itemStat 18,QUALITY,2
    .train 410095,1
    .xp <25,1
step
    >>|cRXP_WARN_Sortez hors de la|r |T135805:0|t[Lave]
    .cast 402265 >>|cRXP_WARN_Utilisez l'|r |T134920:0|t|cRXP_LOOT_[Icône kajarique]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Explosion de lave)]
    .use 206387
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410095,1
    .xp <25,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Explosion de lave - 25 (Contreforts d'Hillsbrad)
#title Explosion de lave
#next Bouclier de terre - 25 (Azeroth)


step
    +|cRXP_WARN_Vous devriez être au moins de niveau 25 pour obtenir|r |T133816:0|t[Gravure de gants (Explosion de lave)] |cRXP_WARN_uniquement à Hillsbrad|r
    .train 410095,1
    .xp >25,1
step
    #completewith next
    .zone Hillsbrad Foothills >>Voyagez aux Contreforts de Hautebrande
    .train 410095,1
step
    #loop
    .goto Hillsbrad Foothills,63.73,59.26,40,0
    .goto Hillsbrad Foothills,65.49,60.30,40,0
    .goto Hillsbrad Foothills,66.30,61.11,40,0
    .goto Hillsbrad Foothills,63.61,62.04,40,0
    .goto Hillsbrad Foothills,63.21,61.04,40,0
    .goto Hillsbrad Foothills,62.56,63.55,40,0
    .goto Hillsbrad Foothills,62.98,63.70,40,0
    >>Tuez les |cRXP_ENEMY_Chamans Fangemufles|r. Dépouillez-les pour l' |T134920:0|t|cRXP_LOOT_[Icône kajarique]|r
    .collect 206387,1 --Kajaric Icon (1)
    .mob Mudsnout Shaman
    .train 410095,1
step
    .equip 18,206387 >> |cRXP_WARN_Équipez l'|r |T134920:0|t|cRXP_LOOT_[Icône kajarique]|r
    .use 206387
    .itemcount 206387,1 --Kajaric Icon (1)
    .train 410095,1
step
    #completewith next
    .zone Orgrimmar >> Voyagez à Orgrimmar
    .train 410095,1
step
    .goto Orgrimmar,52.77,48.97
    .subzone 2437 >> Entrez dans le Gouffre de Ragefeu à la Faille de l'Ombre
    .itemStat 18,QUALITY,2
    .train 410095,1
step
    >>|cRXP_WARN_Collez le mur de droite. Après avoir descendu la rampe (juste après le 5ème mob), marchez dans le bassin de lave peu profond à votre droite|r
    >>|cRXP_WARN_Les dégâts que vous subissez de la|r |T135805:0|t[Lave] |cRXP_WARN_est réduit à 91 quand l'|r |T134920:0|t|cRXP_LOOT_[Icône kajarique]|r |cRXP_WARN_est équipée|r
    .aura 408828 >>|cRXP_WARN_Subissez des dégâts de la |T135805:0|t[Lave] |cRXP_WARN_à 5 reprises|r
    .itemStat 18,QUALITY,2
    .train 410095,1
step
    >>|cRXP_WARN_Sortez hors de la|r |T135805:0|t[Lave]
    .cast 402265 >>|cRXP_WARN_Utilisez l'|r |T134920:0|t|cRXP_LOOT_[Icône kajarique]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Explosion de lave)]
    .use 206387
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410095,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Surcharge - 3 (Durotar)
#title Surcharge
#next Maîtrise du bouclier - 6 (Durotar)

    --Rune of Overload
step
    +|cRXP_WARN_Vous DEVEZ être au moins de niveau 3 pour obtenir la|r |T133815:0|t[Gravure de plastron (Surcharge)] |cRXP_WARN_comme il s'agit du niveau requis pour équiper l'|r |T134918:0|t|cRXP_LOOT_[Icône dyadique]|r
    >>|cRXP_WARN_Vous devez encore gagner des niveaux avant d'obtenir|r |T133815:0|t[Gravure de plastron (Surcharge)]
    .train 410094,1
    .xp >3,1
step
    #completewith IconS
    .zone Durotar >> Voyagez à Durotar
    .train 410094,1
    .xp <3,1
step << !Tauren skip
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shikrik|r
    .accept 77587 >>Acceptez la quête Icônes de puissance << Troll Shaman
    .accept 77585 >>Acceptez la quête Icônes de puissance << Orc Shaman
    .target Shikrik
    .train 410094,1
    .xp <3,1
step
    #label IconS
#loop
	.line Durotar,43.26,58.28,42.81,58.41,41.90,58.35,41.97,59.20,41.36,60.35,40.66,61.27,40.07,61.35,39.42,61.29,39.46,62.17,39.55,63.10,40.13,64.04,40.84,64.06,40.74,65.86,39.93,66.03,40.04,66.99,40.09,67.66,40.13,68.50,40.72,68.55,41.30,67.84,41.37,66.72,41.89,66.05,41.27,65.71,41.36,64.07,41.33,63.12,41.35,61.98,41.49,61.25,41.90,60.24,42.51,59.34,43.08,59.62,43.91,59.33,45.15,59.46,45.81,59.30,45.85,60.34,46.46,61.11,47.09,62.24,47.08,63.15,47.14,64.08,47.58,64.04,47.08,63.15,47.09,62.24,46.90,61.15,46.98,60.18,47.07,59.34,46.47,58.28,45.81,59.30,45.15,59.46,43.91,59.33,43.26,58.28
	.goto Durotar,43.26,58.28,25,0
	.goto Durotar,42.81,58.41,25,0
	.goto Durotar,41.90,58.35,25,0
	.goto Durotar,41.97,59.20,25,0
	.goto Durotar,41.36,60.35,25,0
	.goto Durotar,40.66,61.27,25,0
	.goto Durotar,40.07,61.35,25,0
	.goto Durotar,39.42,61.29,25,0
	.goto Durotar,39.46,62.17,25,0
	.goto Durotar,39.55,63.10,25,0
	.goto Durotar,40.13,64.04,25,0
	.goto Durotar,40.84,64.06,25,0
	.goto Durotar,40.74,65.86,25,0
	.goto Durotar,39.93,66.03,25,0
	.goto Durotar,40.04,66.99,25,0
	.goto Durotar,40.09,67.66,25,0
	.goto Durotar,40.13,68.50,25,0
	.goto Durotar,40.72,68.55,25,0
	.goto Durotar,41.30,67.84,25,0
	.goto Durotar,41.37,66.72,25,0
	.goto Durotar,41.89,66.05,25,0
	.goto Durotar,41.27,65.71,25,0
	.goto Durotar,41.36,64.07,25,0
	.goto Durotar,41.33,63.12,25,0
	.goto Durotar,41.35,61.98,25,0
	.goto Durotar,41.49,61.25,25,0
	.goto Durotar,41.90,60.24,25,0
	.goto Durotar,42.51,59.34,25,0
	.goto Durotar,43.08,59.62,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.85,60.34,25,0
	.goto Durotar,46.46,61.11,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.14,64.08,25,0
	.goto Durotar,47.58,64.04,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,46.90,61.15,25,0
	.goto Durotar,46.98,60.18,25,0
	.goto Durotar,47.07,59.34,25,0
	.goto Durotar,46.47,58.28,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,43.26,58.28,25,0
    >>Tuez les |cRXP_ENEMY_Scorpides ouvriers|r. Dépouillez-les pour l' |T134918:0|t|cRXP_LOOT_[Icône dyadique]|r
    .collect 206381,1 --Dyadic Icon (1)
    .mob Scorpid Worker
    .train 410094,1
    .xp <3,1
step
    .equip 18,206381 >> |cRXP_WARN_Équipez l'|r |T134918:0|t|cRXP_LOOT_[Icône dyadique]|r
    .use 206381
    .itemcount 206381,1 --Dyadic Icon (1)
    .train 410094,1
    .xp <3,1
step
#loop
	.line Durotar,43.26,58.28,42.81,58.41,41.90,58.35,41.97,59.20,41.36,60.35,40.66,61.27,40.07,61.35,39.42,61.29,39.46,62.17,39.55,63.10,40.13,64.04,40.84,64.06,40.74,65.86,39.93,66.03,40.04,66.99,40.09,67.66,40.13,68.50,40.72,68.55,41.30,67.84,41.37,66.72,41.89,66.05,41.27,65.71,41.36,64.07,41.33,63.12,41.35,61.98,41.49,61.25,41.90,60.24,42.51,59.34,43.08,59.62,43.91,59.33,45.15,59.46,45.81,59.30,45.85,60.34,46.46,61.11,47.09,62.24,47.08,63.15,47.14,64.08,47.58,64.04,47.08,63.15,47.09,62.24,46.90,61.15,46.98,60.18,47.07,59.34,46.47,58.28,45.81,59.30,45.15,59.46,43.91,59.33,43.26,58.28
	.goto Durotar,43.26,58.28,25,0
	.goto Durotar,42.81,58.41,25,0
	.goto Durotar,41.90,58.35,25,0
	.goto Durotar,41.97,59.20,25,0
	.goto Durotar,41.36,60.35,25,0
	.goto Durotar,40.66,61.27,25,0
	.goto Durotar,40.07,61.35,25,0
	.goto Durotar,39.42,61.29,25,0
	.goto Durotar,39.46,62.17,25,0
	.goto Durotar,39.55,63.10,25,0
	.goto Durotar,40.13,64.04,25,0
	.goto Durotar,40.84,64.06,25,0
	.goto Durotar,40.74,65.86,25,0
	.goto Durotar,39.93,66.03,25,0
	.goto Durotar,40.04,66.99,25,0
	.goto Durotar,40.09,67.66,25,0
	.goto Durotar,40.13,68.50,25,0
	.goto Durotar,40.72,68.55,25,0
	.goto Durotar,41.30,67.84,25,0
	.goto Durotar,41.37,66.72,25,0
	.goto Durotar,41.89,66.05,25,0
	.goto Durotar,41.27,65.71,25,0
	.goto Durotar,41.36,64.07,25,0
	.goto Durotar,41.33,63.12,25,0
	.goto Durotar,41.35,61.98,25,0
	.goto Durotar,41.49,61.25,25,0
	.goto Durotar,41.90,60.24,25,0
	.goto Durotar,42.51,59.34,25,0
	.goto Durotar,43.08,59.62,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.85,60.34,25,0
	.goto Durotar,46.46,61.11,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.14,64.08,25,0
	.goto Durotar,47.58,64.04,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,46.90,61.15,25,0
	.goto Durotar,46.98,60.18,25,0
	.goto Durotar,47.07,59.34,25,0
	.goto Durotar,46.47,58.28,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,43.26,58.28,25,0
    .aura 408828 >>|cRXP_WARN_Laissez les |cRXP_ENEMY_Scorpides ouvriers|r utiliser|r |T136016:0|t[Poison faible] |cRXP_WARN_sur vous, puis subissez 10 fois ses dégâts afin d'obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    .mob Scorpid Worker
    .itemStat 18,QUALITY,2
    .train 410094,1
    .xp <3,1
step
    .cast 402265 >>|cRXP_WARN_Utilisez l'|r |T134918:0|t|cRXP_LOOT_[Icône dyadique]|r |cRXP_WARN_pour apprendre|r |T133815:0|t[Gravure de plastron (Surcharge)]
    .use 206381
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410094,1
    .xp <3,1
step << !Tauren skip
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shikrik|r
    .turnin 77587 >>Rendez la quête Icônes de puissance << Troll Shaman
    .turnin 77585 >>Rendez la quête Icônes de puissance << Orc Shaman
    .target Shikrik
    .xp <3,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Surcharge - 3 (Mulgore)
#title Surcharge
#next Maîtrise du bouclier - 6 (Mulgore)


    --Rune of Overload
step
    +|cRXP_WARN_Vous DEVEZ être au moins de niveau 3 pour obtenir la|r |T133815:0|t[Gravure de plastron (Surcharge)] |cRXP_WARN_comme il s'agit du niveau requis pour équiper l'|r |T134918:0|t|cRXP_LOOT_[Icône dyadique]|r
    >>|cRXP_WARN_Vous devez encore gagner des niveaux avant d'obtenir|r |T133815:0|t[Gravure de plastron (Surcharge)]
    .train 410094,1
    .xp >3,1
step
    #completewith IconS
    .zone Mulgore >> Voyagez à Mulgore
    .train 410094,1
    .xp <3,1
step << Tauren skip
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meela|r
    .accept 77652 >>Acceptez la quête Icônes de puissance
    .target Meela Dawnstrider
    .xp <3,1
step
    #label IconS
    .goto Mulgore,63.74,81.18,50,0
    .goto Mulgore,63.86,79.97,50,0
    .goto Mulgore,65.00,78.60,50,0
    .goto Mulgore,66.05,77.83,50,0
    .goto Mulgore,65.93,77.10,50,0
    .goto Mulgore,63.57,76.25,50,0
    .goto Mulgore,63.86,80.14
    >>Tuez les |cRXP_ENEMY_Chamans Dos-hirsute|r. Dépouillez-les pour l' |T134918:0|t[|cRXP_FRIENDLY_Icône dyadique|r]
    .collect 206381,1 --Dyadic Icon (1)
    .mob Bristleback Shaman
    .train 410094,1
    .xp <3,1
step
    .equip 18,206381 >> |cRXP_WARN_Équipez l'|r |T134918:0|t|cRXP_LOOT_[Icône dyadique]|r
    .use 206381
    .itemcount 206381,1 --Dyadic Icon (1)
    .train 410094,1
    .xp <3,1
step
    .goto Mulgore,63.74,81.18,50,0
    .goto Mulgore,63.86,79.97,50,0
    .goto Mulgore,65.00,78.60,50,0
    .goto Mulgore,66.05,77.83,50,0
    .goto Mulgore,65.93,77.10,50,0
    .goto Mulgore,63.57,76.25,50,0
    .goto Mulgore,63.86,80.14
    .aura 408828 >>|cRXP_WARN_Laissez les |cRXP_ENEMY_Chamans Dos-hirsute|r lancer|r |T136048:0|t[Eclair] |cRXP_WARN_sur vous et subissez 10 fois ses dégâts pour obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    .mob Bristleback Shaman
    .itemStat 18,QUALITY,2
    .train 410094,1
    .xp <3,1
--XX Loop needs to be added
step
    .cast 402265 >>|cRXP_WARN_Utilisez l'|r |T134918:0|t|cRXP_LOOT_[Icône dyadique]|r |cRXP_WARN_pour apprendre|r |T133815:0|t[Gravure de plastron (Surcharge)]
    .use 206381
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410094,1
    .xp <3,1
step << Tauren skip
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meela|r
    .turnin 77652 >>Rendez la quête Icônes de puissance
    .target Meela Dawnstrider
    .xp <3,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Maîtrise du bouclier - 6 (Durotar)
#title Maîtrise du bouclier
#next Éclair de lave - 10 (Durotar)

step
    +|cRXP_WARN_Vous devez être au moins de niveau 6 afin d'obtenir la|r |T133815:0|t[Gravure de plastron (Maîtrise du bouclier)] |cRXP_WARN_uniquement à Durotar|r
    >>|cRXP_WARN_Vous DEVEZ être au moins de niveau 3 comme il s'agit du niveau pour équiper l'|r |T134918:0|t|cRXP_LOOT_[Icône galvanique]|r
    >>|cRXP_WARN_Vous devez encore gagner des niveaux avant d'obtenir|r |T133815:0|t[Gravure de plastron (Maîtrise du bouclier)]
    .train 410098,1
    .xp >3,1
step
    +|cRXP_WARN_Vous devez être au moins de niveau 6 afin d'obtenir la|r |T133815:0|t[Gravure de plastron (Maîtrise du bouclier)] |cRXP_WARN_uniquement à Durotar|r
    .train 410098,1
    .xp <3,1
    .xp >6,1
step
    #completewith IconS
    .zone Durotar >> Voyagez à Durotar
    .train 410098,1
    .xp <3,1
step
    #label IconS
    .goto Durotar,52.06,62.49,0
    .goto Durotar,39.43,50.07,0
    .goto Durotar,50.91,51.61,0
    .goto Durotar,56.50,46.68,0
    .goto Durotar,57.03,46.66,0
    .goto Durotar,52.06,62.49,50,0
    .goto Durotar,39.43,50.07,50,0
    .goto Durotar,50.91,51.61,50,0
    .goto Durotar,56.50,46.68,50,0
    .goto Durotar,57.03,46.66,50,0
    .goto Durotar,59.00,58.00
    >>Cliquez sur le totem |cRXP_PICK_Icône galvanique|r. Récupérez ainsi l' |T134918:0|t|cRXP_LOOT_[Icône galvanique]|r
    >>|cRXP_WARN_L' |cRXP_PICK_Icône galvanique|r peut apparaître à au moins 15 emplacements différents, et à au moins 2 disponibles en même temps. Il disparaît en moins de 2 minutes après avoir été ramassé|r
    >>|cRXP_WARN_Il émet un son de|r |T136051:0|t[Bouclier de foudre] |cRXP_WARN_toutes les 5 minutes si vous êtes à moins de 1000 mètres, et affiche de la Foudre sur sa position si vous êtes à moins de 300 mètres et en face|r
    .collect 206386,1 --Galvanic Icon (1)
    .train 410098,1
    .xp <3,1
--XX Need to check for more locations
step
    .equip 18,206386 >> |cRXP_WARN_Équipez l'|r |T134918:0|t|cRXP_LOOT_[Icône galvanique]|r
    .use 206386
    .itemcount 206386,1 --Galvanic Icon (1)
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto Durotar,56.87,53.05,50,0
    .goto Durotar,56.82,54.69,50,0
    .goto Durotar,58.64,53.86,50,0
    .goto Durotar,59.40,56.58,50,0
    .goto Durotar,58.41,58.17,50,0
    .goto Durotar,56.21,58.51,50,0
    .aura 408828 >>|cRXP_WARN_Attaquez les ennemis jusqu'à ce qu'ils aient peu de vie, puis lancez|r |T136048:0|t[Eclair] |cRXP_WARN_sur eux pour les tuer. Faites-le à 10 reprises pour obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTE: Vous devez le faire sur les ennemis donnant de l'expérience pour obtenir des stacks|r
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <3,1
    .xp >11,1
step
    #completewith Barrens
    .zone The Barrens >> Voyagez jusqu'aux Tarides
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto The Barrens,53.94,25.86,50,0
    .goto The Barrens,54.17,25.06,50,0
    .goto The Barrens,54.86,25.43,50,0
    .goto The Barrens,55.62,25.71,50,0
    .goto The Barrens,55.98,26.36,50,0
    .goto The Barrens,55.71,27.21,50,0
    .goto The Barrens,55.44,27.35,50,0
    .goto The Barrens,54.99,26.79,50,0
    .aura 408828 >>|cRXP_WARN_Attaquez les ennemis jusqu'à ce qu'ils aient peu de vie, puis lancez|r |T136048:0|t[Eclair] |cRXP_WARN_sur eux pour les tuer. Faites-le à 10 reprises pour obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTE: Vous devez le faire sur les ennemis donnant de l'expérience pour obtenir des stacks|r
    .mob Razormane Thornweaver
    .mob Razormane Water Seeker
    .mob Razormane Hunter
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <11,1
    .xp >16,1
step
    #loop
    .goto The Barrens,55.97,16.17,50,0
    .goto The Barrens,55.43,16.15,50,0
    .goto The Barrens,54.10,15.51,50,0
    .goto The Barrens,53.10,15.25,50,0
    .goto The Barrens,53.73,13.77,50,0
    .goto The Barrens,55.09,15.00,50,0
    .goto The Barrens,55.62,14.86,50,0
    .aura 408828 >>|cRXP_WARN_Attaquez les ennemis jusqu'à ce qu'ils aient peu de vie, puis lancez|r |T136048:0|t[Eclair] |cRXP_WARN_sur eux pour les tuer. Faites-le à 10 reprises pour obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTE: Vous devez le faire sur les ennemis donnant de l'expérience pour obtenir des stacks|r
    .mob Hecklefang Hyena
    .mob Savannah Prowler
    .mob Savannah Huntress
    .mob Sunscale Screecher
    .mob Barrens Giraffe
    .mob Fleeting Plainstrider
    .mob Zhevra Runner
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <16,1
    .xp >20,1
step
    #label Barrens
    #loop
    .goto The Barrens,40.03,15.36,50,0
    .goto The Barrens,39.39,14.65,50,0
    .goto The Barrens,39.62,11.77,50,0
    .goto The Barrens,38.84,11.93,50,0
    .goto The Barrens,38.44,13.21,50,0
    .goto The Barrens,38.48,14.85,50,0
    .goto The Barrens,37.33,16.23,50,0
    .goto The Barrens,38.64,17.49,50,0
    .aura 408828 >>|cRXP_WARN_Attaquez les ennemis jusqu'à ce qu'ils aient peu de vie, puis lancez|r |T136048:0|t[Eclair] |cRXP_WARN_sur eux pour les tuer. Faites-le à 10 reprises pour obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTE: Vous devez le faire sur les ennemis donnant de l'expérience pour obtenir des stacks|r
    .mob Witchwing Slayer
    .mob Witchwing Windcaller
    .mob Witchwing Ambusher
    .mob Witchwing Roguefeather
    .mob Serena Bloodfeather
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <20,1
    .xp >22,1
step
    #completewith next
    .zone Stonetalon Mountains >> Voyagez jusqu'au Serres-Rocheuses
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto Stonetalon Mountains,64.17,57.16,50,0
    .goto Stonetalon Mountains,60.55,54.86,50,0
    .goto Stonetalon Mountains,60.95,51.21,50,0
    .goto Stonetalon Mountains,64.40,48.64,50,0
    .goto Stonetalon Mountains,66.18,52.01,50,0
    .goto Stonetalon Mountains,67.20,51.49,50,0
    .goto Stonetalon Mountains,66.83,45.34,50,0
    .goto Stonetalon Mountains,69.89,53.54,50,0
    .goto Stonetalon Mountains,70.84,56.97,50,0
    .aura 408828 >>|cRXP_WARN_Attaquez les ennemis jusqu'à ce qu'ils aient peu de vie, puis lancez|r |T136048:0|t[Eclair] |cRXP_WARN_sur eux pour les tuer. Faites-le à 10 reprises pour obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTE: Vous devez le faire sur les ennemis donnant de l'expérience pour obtenir des stacks|r
    .mob Venture Co. Logger
    .mob Venture Co. Deforester
    .mob Venture Co. Operator
    .mob Venture Co. Light Shredder
    .mob XT:9
    .mob XT:4
    .mob Deepmoss Webspinner
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <22,1
step
    .cast 402265 >>|cRXP_WARN_Utilisez l'|r |T134918:0|t|cRXP_LOOT_[Icône galvanique]|r |cRXP_WARN_pour apprendre|r |T133815:0|t[Gravure de plastron (Maîtrise du bouclier)]
    .use 206386
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <3,1
--XX Cast ID may be wrong, may need to be checked
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Maîtrise du bouclier - 6 (Mulgore)
#title Maîtrise du bouclier
#next Éclair de lave - 8 (Mulgore)


    --Rune of Shield Mastery
 step
    +|cRXP_WARN_Vous devez être au moins de niveau 6 afin d'obtenir la|r |T133815:0|t[Gravure de plastron (Maîtrise du bouclier)] |cRXP_WARN_uniquement à Mulgore|r
    >>|cRXP_WARN_Vous DEVEZ être au moins de niveau 3 comme il s'agit du niveau pour équiper l'|r |T134918:0|t|cRXP_LOOT_[Icône galvanique]|r
    >>|cRXP_WARN_Vous devez encore gagner des niveaux avant d'obtenir|r |T133815:0|t[Gravure de plastron (Maîtrise du bouclier)]
    .train 410098,1
    .xp >3,1
step
    +|cRXP_WARN_Vous devez être au moins de niveau 6 afin d'obtenir la|r |T133815:0|t[Gravure de plastron (Maîtrise du bouclier)] |cRXP_WARN_uniquement à Mulgore|r
    .train 410098,1
    .xp <3,1
    .xp >6,1
step
    #completewith IconS
    .zone Mulgore >> Voyagez à Mulgore
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto Mulgore,41.99,43.49,0
    .goto Mulgore,43.87,48.32,0
    .goto Mulgore,37.45,52.55,0
    .goto Mulgore,41.65,55.98,0
    .goto Mulgore,38.43,72.00,0
    .goto Mulgore,36.72,68.09,0
    .goto Mulgore,53.81,58.41,0
    .goto Mulgore,64.06,55.75,0
    .goto Mulgore,56.23,64.28,0
    .goto Mulgore,56.60,70.13,0
    .goto Mulgore,67.23,66.17,0
    .goto Mulgore,62.30,22.94,0
    .goto Mulgore,56.24,22.06,0
    .goto Mulgore,44.94,11.30,0
    .goto Mulgore,36.33,9.79,0
    .goto Mulgore,30.50,25.98,0
    .goto Mulgore,41.99,43.49,20,0
    .goto Mulgore,43.87,48.32,20,0
    .goto Mulgore,37.45,52.55,20,0
    .goto Mulgore,41.65,55.98,20,0
    .goto Mulgore,38.43,72.00,20,0
    .goto Mulgore,36.72,68.09,20,0
    .goto Mulgore,53.81,58.41,20,0
    .goto Mulgore,64.06,55.75,20,0
    .goto Mulgore,56.23,64.28,20,0
    .goto Mulgore,56.60,70.13,20,0
    .goto Mulgore,67.23,66.17,20,0
    .goto Mulgore,62.30,22.94,20,0
    .goto Mulgore,56.24,22.06,20,0
    .goto Mulgore,44.94,11.30,20,0
    .goto Mulgore,36.33,9.79,20,0
    .goto Mulgore,30.50,25.98,20,0
    >>Cliquez sur le totem |cRXP_PICK_Icône galvanique|r. Récupérez ainsi l' |T134918:0|t|cRXP_LOOT_[Icône galvanique]|r
    >>|cRXP_WARN_L' |cRXP_PICK_Icône galvanique|r peut apparaître à au moins 15 emplacements différents, et à au moins 2 disponibles en même temps. Il disparaît en moins de 2 minutes après avoir été ramassé|r
    >>|cRXP_WARN_Il émet un son de|r |T136051:0|t[Bouclier de foudre] |cRXP_WARN_toutes les 5 minutes si vous êtes à moins de 1000 mètres, et affiche de la Foudre sur sa position si vous êtes à moins de 300 mètres et en face|r
    .collect 206386,1 --Galvanic Icon (1)
    .train 410098,1
    .xp <3,1
step
    .equip 18,206386 >> |cRXP_WARN_Équipez l'|r |T134918:0|t|cRXP_LOOT_[Icône galvanique]|r
    .use 206386
    .itemcount 206386,1 --Galvanic Icon (1)
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto Mulgore,54.24,66.98,30,0
    .goto Mulgore,54.12,65.67,30,0
    .goto Mulgore,53.40,65.49,30,0
    .goto Mulgore,53.19,66.51,30,0
    .aura 408828 >>|cRXP_WARN_Attaquez les ennemis jusqu'à ce qu'ils aient peu de vie, puis lancez|r |T136048:0|t[Eclair] |cRXP_WARN_sur eux pour les tuer. Faites-le à 10 reprises pour obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTE: Vous devez le faire sur les ennemis donnant de l'expérience pour obtenir des stacks|r
    .mob Venture Co. Hireling
    .mob Venture Co. Laborer
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <3,1
    .xp >11,1
step
    #loop
    .goto Mulgore,59.86,48.74,30,0
    .goto Mulgore,60.85,49.04,30,0
    .goto Mulgore,61.83,48.28,30,0
    .goto Mulgore,61.40,47.23,30,0
    .goto Mulgore,62.02,45.84,30,0
    .goto Mulgore,62.85,45.30,30,0
    .goto Mulgore,64.87,43.32,30,0
    .aura 408828 >>|cRXP_WARN_Attaquez les ennemis jusqu'à ce qu'ils aient peu de vie, puis lancez|r |T136048:0|t[Eclair] |cRXP_WARN_sur eux pour les tuer. Faites-le à 10 reprises pour obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTE: Vous devez le faire sur les ennemis donnant de l'expérience pour obtenir des stacks|r
    .mob Venture Co. Worker
    .mob Venture Co. Supervisor
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <11,1
    .xp >14,1
step
    #completewith Barrens
    .zone The Barrens >> Voyagez jusqu'aux Tarides
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto The Barrens,53.94,25.86,50,0
    .goto The Barrens,54.17,25.06,50,0
    .goto The Barrens,54.86,25.43,50,0
    .goto The Barrens,55.62,25.71,50,0
    .goto The Barrens,55.98,26.36,50,0
    .goto The Barrens,55.71,27.21,50,0
    .goto The Barrens,55.44,27.35,50,0
    .goto The Barrens,54.99,26.79,50,0
    .aura 408828 >>|cRXP_WARN_Attaquez les ennemis jusqu'à ce qu'ils aient peu de vie, puis lancez|r |T136048:0|t[Eclair] |cRXP_WARN_sur eux pour les tuer. Faites-le à 10 reprises pour obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTE: Vous devez le faire sur les ennemis donnant de l'expérience pour obtenir des stacks|r
    .mob Razormane Thornweaver
    .mob Razormane Water Seeker
    .mob Razormane Hunter
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <14,1
    .xp >16,1
step
    #loop
    .goto The Barrens,55.97,16.17,50,0
    .goto The Barrens,55.43,16.15,50,0
    .goto The Barrens,54.10,15.51,50,0
    .goto The Barrens,53.10,15.25,50,0
    .goto The Barrens,53.73,13.77,50,0
    .goto The Barrens,55.09,15.00,50,0
    .goto The Barrens,55.62,14.86,50,0
    .aura 408828 >>|cRXP_WARN_Attaquez les ennemis jusqu'à ce qu'ils aient peu de vie, puis lancez|r |T136048:0|t[Eclair] |cRXP_WARN_sur eux pour les tuer. Faites-le à 10 reprises pour obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTE: Vous devez le faire sur les ennemis donnant de l'expérience pour obtenir des stacks|r
    .mob Hecklefang Hyena
    .mob Savannah Prowler
    .mob Savannah Huntress
    .mob Sunscale Screecher
    .mob Barrens Giraffe
    .mob Fleeting Plainstrider
    .mob Zhevra Runner
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <16,1
    .xp >20,1
step
    #label Barrens
    #loop
    .goto The Barrens,40.03,15.36,50,0
    .goto The Barrens,39.39,14.65,50,0
    .goto The Barrens,39.62,11.77,50,0
    .goto The Barrens,38.84,11.93,50,0
    .goto The Barrens,38.44,13.21,50,0
    .goto The Barrens,38.48,14.85,50,0
    .goto The Barrens,37.33,16.23,50,0
    .goto The Barrens,38.64,17.49,50,0
    .aura 408828 >>|cRXP_WARN_Attaquez les ennemis jusqu'à ce qu'ils aient peu de vie, puis lancez|r |T136048:0|t[Eclair] |cRXP_WARN_sur eux pour les tuer. Faites-le à 10 reprises pour obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTE: Vous devez le faire sur les ennemis donnant de l'expérience pour obtenir des stacks|r
    .mob Witchwing Slayer
    .mob Witchwing Windcaller
    .mob Witchwing Ambusher
    .mob Witchwing Roguefeather
    .mob Serena Bloodfeather
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <20,1
    .xp >22,1
step
    #completewith next
    .zone Stonetalon Mountains >> Voyagez jusqu'au Serres-Rocheuses
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto Stonetalon Mountains,64.17,57.16,50,0
    .goto Stonetalon Mountains,60.55,54.86,50,0
    .goto Stonetalon Mountains,60.95,51.21,50,0
    .goto Stonetalon Mountains,64.40,48.64,50,0
    .goto Stonetalon Mountains,66.18,52.01,50,0
    .goto Stonetalon Mountains,67.20,51.49,50,0
    .goto Stonetalon Mountains,66.83,45.34,50,0
    .goto Stonetalon Mountains,69.89,53.54,50,0
    .goto Stonetalon Mountains,70.84,56.97,50,0
    .aura 408828 >>|cRXP_WARN_Attaquez les ennemis jusqu'à ce qu'ils aient peu de vie, puis lancez|r |T136048:0|t[Eclair] |cRXP_WARN_sur eux pour les tuer. Faites-le à 10 reprises pour obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTE: Vous devez le faire sur les ennemis donnant de l'expérience pour obtenir des stacks|r
    .mob Venture Co. Logger
    .mob Venture Co. Deforester
    .mob Venture Co. Operator
    .mob Venture Co. Light Shredder
    .mob XT:9
    .mob XT:4
    .mob Deepmoss Webspinner
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <22,1
step
    .cast 402265 >>|cRXP_WARN_Utilisez l'|r |T134918:0|t|cRXP_LOOT_[Icône galvanique]|r |cRXP_WARN_pour apprendre|r |T133815:0|t[Gravure de plastron (Maîtrise du bouclier)]
    .use 206386
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <3,1
--XX Cast ID may be wrong, may need to be checked
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Soutien ancestral - 6 (Durotar)
#title Soutien ancestral
#next Éclair de lave - 10 (Durotar)

    --Rune of Ancestral Guidance
step
    +|cRXP_WARN_Vous devez être au moins de niveau 6 pour obtenir la|r |T134596:0|t[Gravure de pantalon (Soutien ancestral)] |cRXP_WARN_avec un autre joueur dans Durotar|r
    >>|cRXP_WARN_Vous DEVEZ être au moins de niveau 3 comme il s'agit du niveau requis pour utiliser l'|r |T237571:0|t|cRXP_LOOT_[Écho des ancêtres]|r
    .train 410099,1
    .xp <3,1
step
    +|cRXP_WARN_Vous devez être au moins de niveau 6 pour obtenir la|r |T134596:0|t[Gravure de pantalon (Soutien ancestral)] |cRXP_WARN_avec un autre joueur dans Durotar|r
    .train 410099,1
    .xp <3,1
    .xp >6,1
step
    #completewith next
    #label Durotar1
    .zone Durotar >> Voyagez à Durotar
    .train 410099,1
    .xp <3,1
step
    #completewith next
    #requires Durotar1
    .goto Durotar,50.84,79.14,40,0
    .goto Durotar,48.02,79.46,40 >>Voyagez vers les |cRXP_FRIENDLY_Restes d'aventurier|r
    .train 410099,1
    .xp <3,1
step
    #label IconS
    .goto Durotar,48.02,79.46
    >>|cRXP_WARN_Rejoignez un groupe avec un autre Chaman, Prêtre ou Druide se tenant sur les |cRXP_FRIENDLY_Restes d'aventurier|r, ou demandez l'aide à un Chaman, un Prêtre ou un Druide dans le canal Général (Tapez /1 dans le chat)|r
    >>|cRXP_WARN_Parlez aux |cRXP_FRIENDLY_Restes d'aventurier|r sur le sol pour commencer le rituel, OU cliquez sur le|r |T136223:0|t[Rituel d'esprit] de l'autre joueur|cRXP_WARN_(en étant dans leur groupe)|r
    >>|cRXP_WARN_Un |cRXP_FRIENDLY_Esprit de l'aventurier|r apparaîtra et mourra après la complétion du rituel. Dépouillez-le pour l' |r |T237571:0|t|cRXP_LOOT_[Écho des ancêtres]|r
    .collect 210589,1 --Echo of the Ancestors (1)
    .target Adventurer's Remains
    .target Adventurer's Spirit
    .skipgossip
    .train 410099,1
    .xp <3,1
step
    .cast 402265 >>|cRXP_WARN_Utilisez l'|r |T237571:0|t|cRXP_LOOT_[Écho des ancêtres]|r |cRXP_WARN_pour apprendre|r |T134596:0|t[Gravure de pantalon (Soutien ancestral)]
    .use 210589
    .itemcount 210589,1 --Echo of the Ancestors (1)
    .train 410099,1
    .xp <3,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Soutien ancestral - 10 (Mulgore)
#title Soutien ancestral
#next Voie de la terre - 12 (Tarides)


    --Rune of Ancestral Guidance

step
    +|cRXP_WARN_Vous devez être au moins de niveau 10 pour obtenir la|r |T134596:0|t[Gravure de pantalon (Soutien ancestral)] |cRXP_WARN_avec un autre joueur dans Mulgore|r
    >>|cRXP_WARN_Vous DEVEZ être au moins de niveau 3 comme il s'agit du niveau requis pour utiliser l'|r |T237571:0|t|cRXP_LOOT_[Écho des ancêtres]|r
    .train 410099,1
    .xp <3,1
step
    +|cRXP_WARN_Vous devez être au moins de niveau 10 pour obtenir la|r |T134596:0|t[Gravure de pantalon (Soutien ancestral)] |cRXP_WARN_avec un autre joueur dans Mulgore|r
    .train 410099,1
    .xp <3,1
    .xp >10,1
step
    #completewith next
    #label Mulgore1
    .zone Mulgore >> Voyagez à Mulgore
    .train 410099,1
    .xp <3,1
step
    #completewith next
    #requires Mulgore1
    #label Cave1
    .goto Mulgore,61.46,47.21,20 >>Entrez dans la Mine de la KapitalRisk
    .train 410099,1
    .xp <3,1
step
    #completewith next
    #requires Cave1
    #label Cave2
    .goto Mulgore,62.52,45.37,25,0
    .goto Mulgore,62.56,44.48,25,0
    .goto Mulgore,61.50,42.54,25,0
    .goto Mulgore,61.66,41.45,25,0
    .goto Mulgore,63.08,39.33,25,0
    .goto Mulgore,62.69,38.01,25,0
    .goto Mulgore,60.05,35.82,20 >>Quittez la Mine de la Kapital Risk de l'autre côté
    .train 410099,1
    .xp <3,1
step
    #completewith next
    #requires Cave2
    .goto Mulgore,60.39,33.54,40 >>Voyagez vers les |cRXP_FRIENDLY_Restes d'aventurier|r
    .train 410099,1
    .xp <3,1
--XX Might be a faster method via the mountains, but don't want to complicate it
step
    #label IconS
    .goto Mulgore,60.39,33.54
    >>|cRXP_WARN_Rejoignez un groupe avec un autre Chaman, Prêtre ou Druide se tenant sur les |cRXP_FRIENDLY_Restes d'aventurier|r, ou demandez l'aide à un Chaman, un Prêtre ou un Druide dans le canal Général (Tapez /1 dans le chat)|r
    >>|cRXP_WARN_Parlez aux |cRXP_FRIENDLY_Restes d'aventurier|r sur le sol pour commencer le rituel, OU cliquez sur le|r |T136223:0|t[Rituel d'esprit] de l'autre joueur|cRXP_WARN_(en étant dans leur groupe)|r
    >>|cRXP_WARN_Un |cRXP_FRIENDLY_Esprit de l'aventurier|r apparaîtra et mourra après la complétion du rituel. Dépouillez-le pour l' |r |T237571:0|t|cRXP_LOOT_[Écho des ancêtres]|r
    .collect 210589,1 --Echo of the Ancestors (1)
    .target Adventurer's Remains
    .target Adventurer's Spirit
    .skipgossip
    .train 410099,1
    .xp <3,1
step
    .cast 402265 >>|cRXP_WARN_Utilisez l'|r |T237571:0|t|cRXP_LOOT_[Écho des ancêtres]|r |cRXP_WARN_pour apprendre|r |T134596:0|t[Gravure de pantalon (Soutien ancestral)]
    .use 210589
    .itemcount 210589,1 --Echo of the Ancestors (1)
    .train 410099,1
    .xp <3,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Voie de la terre - 12 (Tarides)
#title Voie de la terre
#next Bouclier d'eau - 20 (Tarides)



step
    +|cRXP_WARN_Vous DEVEZ être au moins de niveau 12 pour obtenir|r |T134596:0|t[Gravure de pantalon (Voie de la terre)] |cRXP_WARN_comme il s'agit du niveau requis pour apprendre|r |T136075:0|t[Expiation]
    >>|cRXP_WARN_Vous devez gagner en niveau avant d'essayer d'obtenir|r |T134596:0|t[Gravure de pantalon (Voie de la terre)]
    >>|cRXP_WARN_Sinon, vous pouvez obtenir|r |T134596:0|t[Gravure de pantalon (Voie de la terre)] |cRXP_WARN_dans la Forêt des Pins-argentés au niveau 1+|r
    .train 410107,1
    .xp >12,1
step
    .zone Orgrimmar >>Voyagez à Orgrimmar ou à Thunder Bluff
    .zoneskip Thunder Bluff
    .train 370,1
    .xp <12,1
step
    #completewith next
    .goto Orgrimmar,40.31,37.01,15,0
    .goto Orgrimmar,38.81,36.37,15 >>Voyagez vers |cRXP_FRIENDLY_Kardris|r
    .zoneskip Thunder Bluff
    .train 410107,1
    .xp <12,1
step
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    .train 370 >> Apprenez |T136075:0|t[Expiation]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 410107,1
    .xp <12,1
step
    #completewith next
    .goto Thunder Bluff,22.82,21.11,15 >>Voyagez vers |cRXP_FRIENDLY_Siln Skychaser|r
    .zoneskip Orgrimmar
    .train 410107,1
    .xp <12,1
step
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Siln|r
    .train 370 >> Apprenez |T136075:0|t[Expiation]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 410107,1
    .xp <12,1
step
    #completewith next
    .zone The Barrens >>Voyagez jusqu'aux Tarides
    .train 410107,1
    .xp <12,1
step
    #loop
    .goto The Barrens,55.77,34.01,40,0 --Spawn 1
    .goto The Barrens,55.83,34.21,40,0
    .goto The Barrens,54.81,35.95,40,0 --Spawn 2
    .goto The Barrens,54.96,35.72,40,0
    .goto The Barrens,57.47,36.03,40,0 --Spawn 3
    .goto The Barrens,57.56,35.78,40,0
    .goto The Barrens,57.46,35.70,40,0
    .goto The Barrens,57.59,38.36,40,0 --Spawn 4
    .goto The Barrens,57.49,38.65,40,0
    .goto The Barrens,58.82,37.67,40,0 --Spawn 5
    .goto The Barrens,58.92,37.53,40,0
    .goto The Barrens,58.94,37.73,40,0
    >>Lancez |T136075:0|t[Expiation] sur le |cRXP_ENEMY_Mirage du désert|r pour le tuer. Dépouillez-le pour la |T134419:0|t|cRXP_LOOT_[Rune de terre]|r
    .collect 208758,1 --Earthen Rune (1)
    .unitscan Desert Mirage
    .train 410107,1
    .xp <12,1
--XX Respawns after 85s-170s
step
    .cast 402265 >>|cRXP_WARN_Utilisez la|r |T134419:0|t|cRXP_LOOT_[Rune de terre]|r |cRXP_WARN_pour apprendre|r |T134596:0|t[Gravure de pantalon (Voie de la terre)]
    .use 208758
    .itemcount 208758,1 --Earthen Rune (1)
    .train 410107,1
    .xp <12,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Voie de la terre - 14 (Forêt des Pins-argentés)
#title Voie de la terre
#next Bouclier d'eau - 20 (Forêt des Pins-argentés)

step
    +|cRXP_WARN_Vous devrez être au moins de niveau 14 afin d'obtenir|r |T134596:0|t[Gravure de pantalon (Voie de la terre)] |cRXP_WARN_seul dans la Forêt des Pins-argentés|r
    >>|cRXP_WARN_Vous devez gagner en niveau avant d'essayer d'obtenir|r |T134596:0|t[Gravure de pantalon (Voie de la terre)]
    .train 410107,1
    .xp >14,1
step
    #completewith next
    .zone Silverpine Forest >>Voyagez à la Forêt des Pins argentés
    .train 410107,1
step
    #loop
    .goto Silverpine Forest,45.68,22.63,30,0
    .goto Silverpine Forest,45.09,23.63,30,0
    .goto Silverpine Forest,44.16,22.47,30,0
    .goto Silverpine Forest,44.05,21.66,30,0
    .goto Silverpine Forest,45.05,20.75,30,0
    .goto Silverpine Forest,45.07,19.79,30,0
    .goto Silverpine Forest,45.59,19.29,30,0
    .goto Silverpine Forest,46.18,19.74,30,0
    .goto Silverpine Forest,46.62,20.44,30,0
    .goto Silverpine Forest,46.07,21.92,30,0
    >>Tuez les |cRXP_ENEMY_Mystiques Poil-Putride|r. Dépouillez-les pour le |T136008:0|t|cRXP_LOOT_[Totem putride]|r
    .collect 210253,1 --Rot Hide Totem (1)
    .mob Rot Hide Mystic
    .itemcount 208758,<1 --Earthen Rune (1)
    .train 410107,1
step
    #completewith Rune
    .cast 425285 >> |cRXP_WARN_Utilisez le|r |T136008:0|t|cRXP_LOOT_[Totem putride]|r |cRXP_WARN_pour invoquer l' |cRXP_ENEMY_Élémentaire putréfié|r
    .use 210253 --Rot Hide Totem (1)
    .itemcount 210253,1 --Rot Hide Totem (1)
    .train 410107,1
    .xp <14,1
step
    #completewith next
    .cast 425285 >> |cRXP_WARN_Utilisez le|r |T136008:0|t|cRXP_LOOT_[Totem putride]|r |cRXP_WARN_pour invoquer l' |cRXP_ENEMY_Élémentaire putréfié|r
    >>|cRXP_WARN_Faites attention comme il est de niveau 15 et lance|r |T135848:0|t[Nova de givre] |cRXP_WARN_(Instantané à distance : inflige environ 50 points de dégâts et vous immobilise pendant 8 secondes)|r
    .use 210253 --Rot Hide Totem (1)
    .itemcount 210253,1 --Rot Hide Totem (1)
    .train 410107,1
    .xp >14,1
step
    #label Rune
    >>Tuez l' |cRXP_ENEMY_Élémentaire putréfié|r. Dépouillez-le pour la |T134419:0|t|cRXP_LOOT_[Rune de terre]|r
    .collect 208758,1 --Earthen Rune (1)
    .mob Decayed Elemental
    .train 410107,1
--XX Need to test if it can be summoned anywhere, and how much or how scary it is
step
    .cast 402265 >>|cRXP_WARN_Utilisez la|r |T134419:0|t|cRXP_LOOT_[Rune de terre]|r |cRXP_WARN_pour apprendre|r |T134596:0|t[Gravure de pantalon (Voie de la terre)]
    .use 208758
    .itemcount 208758,1 --Earthen Rune (1)
    .train 410107,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Loup fantôme supérieur - 25 (Serres-Rocheuses)
#title Loup fantôme supérieur
#next Spécialisation Ambidextrie - 25 (Tarchet)


step
    +|cRXP_WARN_Vous devez être au moins de niveau 25 afin d'obtenir la|r |T134596:0|t[Gravure de pantalon (Loup fantôme supérieur)] |cRXP_WARN_seul dans les Serres-Rocheuses|r
    .train 425343,1
    .xp >25,1
step
    #completewith next
    .zone Stonetalon Mountains >>Voyagez jusqu'au Serres-Rocheuses
    .train 425343,1
step
    #loop
    .goto Stonetalon Mountains,28.45,65.00,0
    .goto Stonetalon Mountains,28.45,65.00,50,0
    .goto Stonetalon Mountains,29.08,71.97,50,0
    .goto Stonetalon Mountains,33.43,68.97,50,0
    .goto Stonetalon Mountains,33.49,69.40,50,0
    .goto Stonetalon Mountains,36.85,72.04,50,0
    >>Tuez l' |cRXP_ENEMY_Anomalie primordiale|r. Dépouillez-la pour la |T134419:0|t|cRXP_LOOT_[Rune de Fureur primordiale]|r
    >>Regardez bien dans quelle forme il se trouve (debuff). Si elle est en|cRXP_WARN_ |T136074:0|t[Forme de nature]|r, infligez des|cRXP_WARN_ |T135824:0|t[dégâts de feu]|r. Si elle est en|cRXP_WARN_ |T135819:0|t[Forme de feu]|r, infligez des|cRXP_WARN_ |T135865:0|t[dégâts de givre]|r. Si elle est en|cRXP_WARN_ |T135861:0|t[Forme d'eau]|r, infligez des|cRXP_WARN_ |T136085:0|t[dégâts de nature]|r
    >>|cRXP_WARN_Soyez prudent, comme il lance |T132939:0|t[Repousser au loin] |cRXP_WARN_(Instantané en mêlée: projette la cible dans les airs et inflige 80 points de dégâts)|r
    >>|cRXP_WARN_Il a un temps de réapparition de 5 à 8 minutes et laisse tomber un objet vert Lié quand équipé aléatoire à chaque fois|r
    .collect 210811,1 --Rune of Primordial Fury (1)
    .mob Primordial Anomaly
    .train 425343,1
step
    .cast 402265 >>|cRXP_WARN_Utilisez la|r |T134419:0|t|cRXP_LOOT_[Rune de Fureur primordiale]|r |cRXP_WARN_pour apprendre|r |T134596:0|t[Gravure de pantalon (Loup fantôme supérieur)]
    .use 210811
    .itemcount 210811,1 --Rune of Primordial Fury (1)
    .train 425343,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Bouclier de terre - 25 (Azeroth)
#title Bouclier de terre
#next Surcharge - 3 (Durotar) << Orc Shaman/Troll Shaman
#next Surcharge - 3 (Mulgore) << Tauren Shaman


step
    +|cRXP_WARN_Vous DEVEZ être au moins de niveau 25 afin d'obtenir|r |T134596:0|t[Gravure de pantalon (Bouclier de terre)] |cRXP_WARN_comme il s'agit du niveau requis pour entrer dans les Profondeurs de Brassenoire|r
    .train 410101,1
    .xp >25,1
step
    .zone Orgrimmar >>Voyagez à Orgrimmar ou à Thunder Bluff
    .zoneskip Thunder Bluff
    .train 410101,1
    .xp <25,1
step
    .goto Orgrimmar,50.67,70.39,0
    .goto Orgrimmar,53.74,64.60,15,0
    .goto Orgrimmar,55.54,64.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commissaire-priseur Wabang|r
    >>|cRXP_BUY_Achetez un|r |T134797:0|t[Elixir de Respiration aquatique] |cRXP_BUY_et un|r |T134717:0|t[Elixir de Sagesse] |cRXP_BUY_à l'Hôtel des ventes|r
    >>Sinon, achetez les composants pour les fabriquer vous-même: 2|cRXP_WARN_ |T132799:0|t[Huiles de bouche-noire] |r(ou 4|cRXP_WARN_ |T134302:0|t[Bouche-noire huileux] |rpour fabriquer l'huile), 1|cRXP_WARN_ |T134191:0|t[Etouffante]|r, 1|cRXP_WARN_ |T133436:0|t[Mage royal]|r, et 2|cRXP_WARN_ |T134412:0|t[Eglantines]|r
    >>|cRXP_WARN_Vous en avez besoin pour une quête ultérieurement. Ne les utilisez PAS avant|r
    .collect 5996,1 --Elixir of Water Breathing (1)
    .collect 3383,1 --Elixir of Wisdom (1)
    .target Auctioneer Wabang
	.skill alchemy,<90,1
    .zoneskip Orgrimmar,1
    .train 410101,1
    .xp <25,1
step
    .goto Orgrimmar,50.67,70.39,0
    .goto Orgrimmar,53.74,64.60,15,0
    .goto Orgrimmar,55.54,64.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commissaire-priseur Wabang|r
    >>|cRXP_BUY_Achetez un|r |T134797:0|t[Elixir de Respiration aquatique] |cRXP_BUY_et un|r |T134717:0|t[Elixir de Sagesse] |cRXP_BUY_à l'Hôtel des ventes|r
    >>|cRXP_WARN_Vous en avez besoin pour une quête ultérieurement. Ne les utilisez PAS avant|r
    .collect 5996,1 --Elixir of Water Breathing (1)
    .collect 3383,1 --Elixir of Wisdom (1)
    .target Auctioneer Wabang
    .zoneskip Orgrimmar,1
    .train 410101,1
    .xp <25,1
step
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Stampi|r
    >>|cRXP_BUY_Achetez un|r |T134797:0|t[Elixir de Respiration aquatique] |cRXP_BUY_et un|r |T134717:0|t[Elixir de Sagesse] |cRXP_BUY_à l'Hôtel des ventes|r
    >>Sinon, achetez les composants pour les fabriquer vous-même: 2|cRXP_WARN_ |T132799:0|t[Huiles de bouche-noire] |r(ou 4|cRXP_WARN_ |T134302:0|t[Bouche-noire huileux] |rpour fabriquer l'huile), 1|cRXP_WARN_ |T134191:0|t[Etouffante]|r, 1|cRXP_WARN_ |T133436:0|t[Mage royal]|r, et 2|cRXP_WARN_ |T134412:0|t[Eglantines]|r
    >>|cRXP_WARN_Vous en avez besoin pour une quête ultérieurement. Ne les utilisez PAS avant|r
    .collect 5996,1 --Elixir of Water Breathing (1)
    .collect 3383,1 --Elixir of Wisdom (1)
    .target Auctioneer Stampi
	.skill alchemy,<90,1
    .zoneskip Thunder Bluff,1
    .train 410101,1
    .xp <25,1
step
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Stampi|r
    >>|cRXP_BUY_Achetez un|r |T134797:0|t[Elixir de Respiration aquatique] |cRXP_BUY_et un|r |T134717:0|t[Elixir de Sagesse] |cRXP_BUY_à l'Hôtel des ventes|r
    >>|cRXP_WARN_Vous en avez besoin pour une quête ultérieurement. Ne les utilisez PAS avant|r
    .collect 5996,1 --Elixir of Water Breathing (1)
    .collect 3383,1 --Elixir of Wisdom (1)
    .target Auctioneer Stampi
    .zoneskip Thunder Bluff,1
    .train 410101,1
    .xp <25,1
step
    #completewith next
    .zone Ashenvale >> Voyagez à Ashenvale
    .train 410101,1
    .xp <25,1
step
    #completewith next
    .goto Kalimdor,44.36,34.86
    >>|cRXP_WARN_Rejoignez ou créez un nouveau groupe de raid (0/7) (10 joueurs) pour les Profondeurs de Brassenoire|r
    .subzone 2797,2 >> Prenez la route pour le portail de l'instance Profondeurs de Brassenoire, prenez-le quand vous êtes arrivés
    .train 410101,1
    .xp <25,1
step
    >>Tuez le |cRXP_ENEMY_Baron Aquanis|r dans les Profondeurs de Brassenoire. Dépouillez-le pour le |T136222:0|t|cRXP_LOOT_[Globe d'eau étrange]|r
    .collect 211454,1 --Strange Water Globe (SoD) (1)
    .mob Baron Aquanis
    .train 410101,1
    .xp <25,1
step
    >>Utilisez le |T136222:0|t|cRXP_LOOT_[Globe d'eau étrange]|r pour lancer la quête
    .accept 78920 >>Acceptez la quête Baron Aquanis
    .use 211454
    .itemcount 211454,1 --Strange Water Globe (SoD) (1)
    .train 410101,1
    .xp <25,1
step
    #completewith Baron
    >>|cRXP_WARN_Terminez le raid si vous le souhaitez, puis sortez des Profondeurs de Brassenoire|r
    .zone Ashenvale >> Voyagez à Ashenvale
    .zoneskip 221,1
    .train 410101,1
    .xp <25,1
step
    #completewith next
    .zone Ashenvale >> Voyagez à Ashenvale
    .train 410101,1
    .xp <25,1
step
    #label Baron
    .goto Ashenvale,11.56,34.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 78920 >>Rendez la quête Baron Aquanis
    .accept 78506 >>Acceptez la quête Détresse élémentaire
    .target Je'neu Sancrea
    .train 410101,1
    .xp <25,1
step
#loop
	.line Ashenvale,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,52.13,71.14,52.18,71.60,52.08,72.10,45.84,70.67,48.36,69.74
	.goto Ashenvale,48.36,69.74,50,0
	.goto Ashenvale,48.43,70.14,50,0
	.goto Ashenvale,48.93,70.82,50,0
	.goto Ashenvale,49.49,70.76,50,0
	.goto Ashenvale,50.21,70.36,50,0
	.goto Ashenvale,50.47,70.43,50,0
	.goto Ashenvale,50.54,71.08,50,0
	.goto Ashenvale,50.74,71.31,50,0
	.goto Ashenvale,51.42,70.86,50,0
	.goto Ashenvale,52.13,71.14,50,0
	.goto Ashenvale,52.18,71.60,50,0
	.goto Ashenvale,52.08,72.10,50,0
	.goto Ashenvale,45.84,70.67,50,0
	.goto Ashenvale,48.36,69.74,50,0
    >>Tuez les |cRXP_ENEMY_Elémentaires d’eau souillé|r. Dépouillez-les pour la |T132844:0|t|cRXP_LOOT_[Particule de rage torrentielle]|r
    .complete 78506,3 --Mote of Torrential Rage (1)
    .mob Befouled Water Elemental
    .train 410101,1
    .xp <25,1
--XX Needs to be converted to hashtag loop
step
    #completewith next
    .zone Stonetalon Mountains >>Voyagez jusqu'au Serres-Rocheuses
    .train 410101,1
    .xp <25,1
step
    #loop
    #completewith next
    .goto Stonetalon Mountains,45.60,44.18,50,0 --NE Rogue Flame Shared Spawn Cluster (NE Spawnpoints)
    .goto Stonetalon Mountains,44.54,43.43,50,0
    .goto Stonetalon Mountains,43.96,39.90,50,0
    .goto Stonetalon Mountains,43.62,41.14,50,0
--
    .goto Stonetalon Mountains,37.09,46.62,50,0 --Path Rogue Flame Shared Spawn Cluster (Middle Spawnpoints)
    .goto Stonetalon Mountains,35.71,47.81,50,0
    .goto Stonetalon Mountains,37.21,48.30,50,0
    .goto Stonetalon Mountains,36.50,49.86,50,0
    .goto Stonetalon Mountains,37.18,51.87,50,0
    .goto Stonetalon Mountains,35.33,53.88,50,0
    .goto Stonetalon Mountains,34.59,60.23,50,0
    .goto Stonetalon Mountains,33.38,62.23,50,0
--
    .goto Stonetalon Mountains,35.22,65.79,50,0 --Start of Burning Destroyers and Ravagers
    .goto Stonetalon Mountains,36.42,71.05,50,0
    .goto Stonetalon Mountains,35.73,73.27,50,0
    .goto Stonetalon Mountains,34.50,72.62,50,0
    .goto Stonetalon Mountains,33.64,71.17,50,0
    .goto Stonetalon Mountains,33.49,70.48,50,0
    .goto Stonetalon Mountains,31.67,71.11,50,0
    .goto Stonetalon Mountains,31.13,73.45,50,0
    .goto Stonetalon Mountains,30.13,73.32,50,0
    .goto Stonetalon Mountains,30.97,67.39,50,0
    .goto Stonetalon Mountains,28.25,65.96,50,0
    >>Tuez les |cRXP_ENEMY_Esprits flamboyants insoumis|r, les |cRXP_ENEMY_Destructeurs ardents|r et les |cRXP_ENEMY_Ravageurs ardents|r. Dépouillez-les pour les |T132839:0|t|cRXP_LOOT_[Particules de rage infernale]|r
    >>Les |cRXP_ENEMY_Esprit flamboyant insoumis|r |cRXP_WARN_partagent leur réapparitions avec les|r |cRXP_ENEMY_Basilics noircis|r
    .complete 78506,2 --Mote of Infernal Rage (1)
    .mob Rogue Flame Spirit
    .mob Burning Destroyer
    .mob Burning Ravager
    .train 410101,1
    .xp <25,1
--XX Did waypoints in WOTLK, may be slightly off but i'd put more money on it being accurate than not
step
    #loop
    .goto Stonetalon Mountains,34.07,65.61,50,0
    .goto Stonetalon Mountains,36.42,71.05,50,0
    .goto Stonetalon Mountains,35.88,72.31,50,0
    .goto Stonetalon Mountains,32.49,73.81,50,0
    .goto Stonetalon Mountains,32.64,67.42,50,0
    .goto Stonetalon Mountains,28.99,65.18,50,0
    >>Tuez les |cRXP_ENEMY_Esprits rocheux enragés|r et les |cRXP_ENEMY_Esprits rocheux furieux|r. Dépouillez-les pour les |T132838:0|t|cRXP_LOOT_[Particules de rage sismique]|r |cRXP_WARN_faites attention aux ennemis dangereux dans la zone.|r
    .complete 78506,1 --Mote of Seismic Rage (1)
    .mob Enraged Stone Spirit
    .mob Furious Stone Spirit
    .train 410101,1
    .xp <25,1
--XX Not totally sure if any of the elementals in the charred vale do/don't share spawns? It's a total clown fiesta
step
    #loop
    .goto Stonetalon Mountains,45.60,44.18,50,0
    .goto Stonetalon Mountains,44.54,43.43,50,0
    .goto Stonetalon Mountains,43.96,39.90,50,0
    .goto Stonetalon Mountains,43.62,41.14,50,0
    .goto Stonetalon Mountains,37.09,46.62,50,0
    .goto Stonetalon Mountains,35.71,47.81,50,0
    .goto Stonetalon Mountains,37.21,48.30,50,0
    .goto Stonetalon Mountains,36.50,49.86,50,0
    .goto Stonetalon Mountains,37.18,51.87,50,0
    .goto Stonetalon Mountains,35.33,53.88,50,0
    .goto Stonetalon Mountains,34.59,60.23,50,0
    .goto Stonetalon Mountains,33.38,62.23,50,0
    .goto Stonetalon Mountains,35.22,65.79,50,0
    .goto Stonetalon Mountains,36.42,71.05,50,0
    .goto Stonetalon Mountains,35.73,73.27,50,0
    .goto Stonetalon Mountains,34.50,72.62,50,0
    .goto Stonetalon Mountains,33.64,71.17,50,0
    .goto Stonetalon Mountains,33.49,70.48,50,0
    .goto Stonetalon Mountains,31.67,71.11,50,0
    .goto Stonetalon Mountains,31.13,73.45,50,0
    .goto Stonetalon Mountains,30.13,73.32,50,0
    .goto Stonetalon Mountains,30.97,67.39,50,0
    .goto Stonetalon Mountains,28.25,65.96,50,0
    >>Tuez les |cRXP_ENEMY_Esprits flamboyants insoumis|r, les |cRXP_ENEMY_Destructeurs ardents|r et les |cRXP_ENEMY_Ravageurs ardents|r. Dépouillez-les pour les |T132839:0|t|cRXP_LOOT_[Particules de rage infernale]|r
    >>Les |cRXP_ENEMY_Esprit flamboyant insoumis|r |cRXP_WARN_partagent leur réapparitions avec les|r |cRXP_ENEMY_Basilics noircis|r
    .complete 78506,2 --Mote of Infernal Rage (1)
    .mob Rogue Flame Spirit
    .mob Burning Destroyer
    .mob Burning Ravager
    .train 410101,1
    .xp <25,1
step
    #completewith next
    .zone Ashenvale >>Voyagez à Ashenvale
    .train 410101,1
    .xp <25,1
step
    .goto Ashenvale,11.56,34.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 78506 >>Rendez la quête Détresse élémentaire
    .accept 78537 >>Acceptez la quête Élixir de clairvoyance
    .accept 78537 >>Rendez la quête Élixir de clairvoyance
    .accept 78561 >>Acceptez la quête Élixir de clairvoyance
    .target Je'neu Sancrea
    .train 410101,1
    .xp <25,1
step
    .goto Ashenvale,11.38,33.08
    >>Utilisez l' |T134791:0|t[Élixir de clairvoyance] près du feu de joie
    >>|cRXP_WARN_Vous n'avez PAS besoin d'attendre le RP|r
    .complete 78561,1 --Vision Witnessed (1)
    .use 210712
    .train 410101,1
    .xp <25,1
step
    .goto Ashenvale,11.56,34.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 78561 >>Rendez la quête Élixir de clairvoyance
    .accept 78575 >>Acceptez la quête Hirzek
    .target Je'neu Sancrea
    .train 410101,1
    .xp <25,1
step
    #completewith next
    .zone The Barrens >>Voyagez jusqu'aux Tarides
    .train 410101,1
    .xp <25,1
step
    .goto The Barrens,43.18,78.59
    >>Tuez |cRXP_ENEMY_Hirzek|r. Dépouillez-le pour le |T135146:0|t|cRXP_LOOT_[Bâton de Hirzek]|r
    >>|cRXP_WARN_Faites attention comme |cRXP_ENEMY_Hirzek|r est un élite de niveau 25 et lance|r |T135805:0|t[Eclair] |cRXP_WARN_(Incantation à distance: inflige environ 110 dégâts de nature). Vous pouvez le tuer seul, mais il serait préférable de trouver un autre joueur pour vous aider|r
    >>|cRXP_WARN_Faites attention comme l' |cRXP_ENEMY_Élémentaire lié|r ne sortira jamais de combat si vous tuez |cRXP_ENEMY_Hirzek|r et laissez le |cRXP_ENEMY_Élémentaire lié|r en vie (il vous suivra jusqu'à ce qu'il disparaisse ou que vous ne le tuiez)|r
    .complete 78575,1 --Hirzek's Staff (1)
    .complete 78575,2 --Hirzek (1)
    .mob Hirzek
    .mob Bound Elemental
    .train 410101,1
    .xp <25,1
--XX Objective IDs (,1 and ,2) need testing
step
    #completewith next
    .zone Ashenvale >>Voyagez à Ashenvale
    .train 410101,1
    .xp <25,1
step
    .goto Ashenvale,11.56,34.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 78575 >>Rendez la quête Hirzek
    .target Je'neu Sancrea
    .train 410101,1
    .xp <25,1
step
    .cast 402265 >>|cRXP_WARN_Utilisez la|r |T134419:0|t|cRXP_LOOT_[Rune de Bouclier de terre]|r |cRXP_WARN_pour apprendre|r |T134596:0|t[Gravure de pantalon (Bouclier de terre)]
    .use 210746
    .itemcount 210746,1 --Rune of Earth Shield (1)
    .train 410101,1
    .xp <25,1
    --XX Rune Routing will never be good for this
step << skip
    +Félicitations ! Vous avez obtenu toutes les |T134419:0|t|cRXP_LOOT_[Runes]|r actuellement disponibles.
    .train 410094,3 --Overload
    .train 410095,3 --Lava Burst
    .train 410096,3 --Dual Wield Specialization
    .train 410097,3 --Water Shield
    .train 410098,3 --Shield Mastery
    .train 410099,3 --Ancestral Guidance
    .train 410101,3 --Earth Shield
    .train 410104,3 --Lava Lash
    .train 410107,3 --Way of Earth
    .train 416057,3 --Healing Rain
    .train 425343,3 --Shamanistic Rage
    .train 425344,3 --Molten Blast
    .xp <25,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guide des runes et des livres
#subgroup Ceinture
#name Nova de feu - 35 (Azeroth)
#title Nova de feu

-- Fire Nova

step
    #completewith next
    .zone Desolace >>Voyagez à |cFFfa9602Désolace|r
step
    .goto Desolace,56.6,21.8
    >>Tuez le |cRXP_ENEMY_Prophète des flammes Dubelen|r. Dépouillez-le pour le |T136008:0|t|cRXP_LOOT_Totem Nova de feu corrompu|r
    .collect 213451,1
    .mob Flameseer Dubelen
step
    .goto 1443,38.23,61,25,0
    .goto 1443,37.13,60.41,25,0
    .goto 1443,35.38,58.25,25,0
    .goto 1443,33.03,55.4,25,0
    .goto 1443,30.87,57.86,25,0
    .goto 1443,29.85,62.5,25,0
    .goto 1414,38.38,57.98,25,0
    .goto 1414,38.42,57.98,25,0
    .goto 1414,38.35,58.14,25,0
    .goto 1414,38.28,58.17,25,0
    .goto 1414,38.24,58.03,25,0
    .goto 1414,38.31,58.02,25,0
    .goto 1414,38.47,58.17,25,0
    .goto 1414,38.6,58.24,25,0
    .goto 1414,38.73,58.18,25,0
    .goto 1414,38.83,58.31,25,0
    .goto 1414,39.01,58.3,25,0
    .goto 1414,39.17,58.09,25,0
    .goto 1414,39.01,57.87,25,0
    .goto 1414,39.26,57.69
    >>Cliquez sur le |cRXP_PICK_Cristal bleu|r parmi les cristaux orange pour collecter la |T134088:0|t[Larme de Theradras]
    >>|cRXP_WARN_Soyez prudent comme les ennemis de cette zone sont des élites et peuvent vous étourdir.|r |cFFFF0000Vous allez probablement mourir plusieurs fois|r
    .collect 213552,1
step
    .goto 1414,38.45,57.84,25,0
    .goto 1414,38.64,57.69,25,0
    .goto 1414,38.52,57.52,25,0
    .goto 1414,38.43,57.43,25,0
    .goto 1443,29.65,57.19,25,0
    .goto 1443,27.72,57.51
    >>Cliquez sur le |cRXP_PICK_Cristal bleu|r parmi les cristaux violets pour collecter la |T134088:0|t[Larme de Theradras]
    >>|cRXP_WARN_Soyez prudent comme les ennemis de cette zone sont des élites et peuvent vous étourdir.|r |cFFFF0000Vous allez probablement mourir plusieurs fois|r
    .collect 213553,1
step
    #completewith next
    .zone Orgrimmar >>Voyagez à |cFFfa9602Orgrimmar|r
step
    .goto Orgrimmar,38.94,38.39
    .gossip 4047 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zor Arbre-solitaire|r et sélectionnez l'option de dialogue
    -- .gossipoption --x insert id
    .target Zor Lonetree
step
    #completewith next
    .zone Thunder Bluff >>Voyagez aux |cFFfa9602Pitons-du-Tonnerre|r
step
    .goto Thunder Bluff,78.61,28.55
    .gossip 5769 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Archidruide Hamuul Runetotem|r et sélectionnez l'option de dialogue
    -- .gossipoption --x insert id
    .target Arch Druid Hamuul Runetotem
step
    -- .gossipoption --x insert id
    .goto Thunder Bluff,47.00,49.82
    .gossip 2995 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r et sélectionnez l'option de dialogue pour vous envoler vers Reflet-de-Lune
    .target Tal
step
    #completewith next
    .zone Moonglade >>Voyagez à |cFFfa9602Reflet-de-Lune|r
step
    .goto Moonglade,36.178,41.798
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Gardien Remulos|r
    .collect 213558,1
    .target Keeper Remulos
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guide des runes et des livres
#subgroup Ceinture
#name Arme du Maelström - 40 (Azeroth)
#title Arme du Maelström

-- Maelstrom Weapon

step
    .train 410100,1
    #completewith next
    .zone The Barrens >>Voyagez aux |cFFfa9602Tarides|r
step
    .train 410100,1
    .goto The Barrens,43.46,90.18,0
    .goto The Barrens,43.46,90.18,40,0
    .goto 1414,50.877,70.339
    .subzone 491,2 >> Entrez dans le Kraal de Tranchebauge
step
    .train 410100,1
    >>Tuez |cRXP_ENEMY_Charlga Trancheflanc|r. Dépouillez-le pour la |T134944:0|t|cRXP_LOOT_Note en lambeaux|r. Utilisez-la afin de lancer la quête
    >>|cRXP_WARN_Nous vous recommandons fortement de monter un groupe de 5 joueurs pour le faire|r
    .collect 212748,1 --Tattered Note (1x)
    .accept 79358 >>Acceptez la quête Note en lambeaux
    .mob Charlga Razorflank
step
    .train 410100,1
    #completewith next
    .zone Thousand Needles >>Voyagez aux |cFFfa9602Mille pointes|r
step
    .train 410100,1
    .goto Thousand Needles,46.10,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rau Cliffrunner|r
    .turnin 79358 >>Rendez la quête Note en lambeaux
    .accept 79360 >>Acceptez la quête Soutien élémentaire
    .target Rau Cliffrunner
step
    .train 410100,1
    .goto Thousand Needles,46.21,51.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jandia|r
    >>|cRXP_BUY_Achetez-lui une|r |T132793:0|t[Fiole de cristal] |cRXP_BUY_|r
    .collect 8925,1 --Crystal Vial (1x)
    .target Jandia
step
    .train 410100,1
    #completewith next
    .zone Hillsbrad Foothills >>Voyagez aux |cFFfa9602Contreforts d'Hillsbrad|r
step
    .train 410100,1
    .goto Alterac Mountains,80.499,66.923
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
    .turnin 79360 >>Rendez la quête Soutien élémentaire
    .accept 79361 >>Acceptez la quête La puissance du vent
    .accept 79362 >>Acceptez la quête La puissance de la terre
    .accept 79363 >>Acceptez la quête La puissance de l’eau
    .target Bath'rah the Windwatcher
step
    .train 410100,1
    #completewith next
    .zone Desolace >>Voyagez à |cFFfa9602Désolace|r
step
    .train 410100,1
    #loop
    .goto Desolace,48.0,27.2,0
    .goto Desolace,40.6,37.0,0
    .goto Desolace,50.8,42.0,0
    .goto Desolace,64.4,39.4,0
    .goto Desolace,68.4,48.4,0
    .goto Desolace,69.4,64.6,0
    .goto Desolace,58.8,65.6,0
    .waypoint Desolace,48.0,27.2,25,0
    .waypoint Desolace,40.6,37.0,25,0
    .waypoint Desolace,50.8,42.0,25,0
    .waypoint Desolace,64.4,39.4,25,0
    .waypoint Desolace,68.4,48.4,25,0
    .waypoint Desolace,69.4,64.6,25,0
    .waypoint Desolace,58.8,65.6,25,0
    >>Tuez les |cRXP_ENEMY_Elementaires tourbillonnants |r dans Désolace. Dépouillez-les pour leur |T132845:0|t|cRXP_LOOT_Essence tourbillonante|r
    .complete 79361,1 -- Power of da Wind
    .mob Whirlwind Ripper
    .mob Whirlwind Stormwalker
    .mob Whirlwind Shredder
step
    .train 410100,1
    #completewith next
    .zone Dustwallow Marsh >>Voyagez au |cFFfa9602Marécage d'Âprefange|r
step
    .train 410100,1
    #loop
    .goto Dustwallow Marsh,42.6,30.0,0
    .goto Dustwallow Marsh,35.2,44.6,0
    .goto Dustwallow Marsh,42.6,62.0,0
    .goto Dustwallow Marsh,50.0,54.0,0
    .waypoint Dustwallow Marsh,42.6,30.0,25,0
    .waypoint Dustwallow Marsh,35.2,44.6,25,0
    .waypoint Dustwallow Marsh,42.6,62.0,25,0
    .waypoint Dustwallow Marsh,50.0,54.0,25,0
    >>Tuez les |cRXP_ENEMY_Elementaires fane-liane|r dans le Marécage d'Âprefange. Dépouillez-les pour leur |T132846:0|t|cRXP_LOOT_Essence fulgurante|r
    .complete 79363,1 -- Power of da Water
    .mob Withervine Mire Beast
    .mob Withervine Rager
    .mob Withervine Bark Ripper
    .mob Withervine Creeper
step
    .train 410100,1
    #completewith next
    .zone Badlands >>Voyagez aux |cFFfa9602Terres Ingrates|r
step
    .train 410100,1
    #loop
    .goto Badlands,18.0,42.8,0
    .waypoint Badlands,21.2,45.8,50,0
    .waypoint Badlands,18.0,42.8,50,0
    .waypoint Badlands,13.8,38.6,50,0
    .waypoint Badlands,21.2,45.8,50,0
    .waypoint Badlands,18.0,42.8,50,0
    >>Tuez les |cRXP_ENEMY_Elémentaires de roche inférieur|r et les |cRXP_ENEMY_Elémentaires de roche|r. Dépouillez-les pour leur |T132846:0|t|cRXP_LOOT_Essences grondantes|r
    .complete 79362,1 -- Power of da Earth
    .mob Rock Elemental
    .mob Lesser Rock Elemental
step
    .train 410100,1
    #completewith next
    .zone Hillsbrad Foothills >>Voyagez aux |cFFfa9602Contreforts d'Hillsbrad|r
step
    .train 410100,1
    .goto Alterac Mountains,80.499,66.923
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
    .turnin 79361 >>Rendez la quête La puissance du vent
    .turnin 79362 >>Rendez la quête La puissance de la terre
    .turnin 79363 >>Rendez la quête La puissance de l’eau
    .accept 79364 >>Acceptez la quête Un simple contenant
    .turnin 79364 >>Rendez la quête Un simple contenant
    .accept 79365 >>Acceptez la quête Le vent sous les ailes
    .target Bath'rah the Windwatcher
step
    .train 410100,1
    #completewith next
    .zone Thousand Needles >>Voyagez aux |cFFfa9602Mille pointes|r
step
    .train 410100,1
    .goto Thousand Needles,46.10,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rau Cliffrunner|r
    .turnin 79365 -- With Wind Beneath Your Wings
    .accept 79366 --Calm Before the Storm
    .target Rau Cliffrunner
step
    .train 410100,1
    .gossip 4317 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nyse|r et sélectionnez la 2ème option de dialogue
    .target Nyse
step
    .train 410100,1
    >>Tuez la |cRXP_ENEMY_Tempête ravageuse|r. Dépouillez-la pour son |cRXP_LOOT_Oeil de la Tempête|r
    >>|cRXP_WARN_Si vous mourez en le faisant, parlez au|r |cRXP_FRIENDLY_Gardien des âmes|r |cRXP_WARN_pour vous téléporter à votre cadavre|r
    .collect 212792,1 --Eye of the Tempest (1x)
    .mob Dreath's Head Necromancer
    .mob Skeletal Servant
    .mob Ravaging Tempest
step
    .train 410100,1
    .vehicle >> Interagissez avec la |cRXP_FRIENDLY_Wyverne du Poste de Librevent|r
    .timer 9,RP du vol
step
    .train 410100,1
    .goto Thousand Needles,46.10,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rau Cliffrunner|r
    .turnin 79366 --Calm Before the Storm
    .accept 79442 --Catching up
    .target Rau Cliffrunner
step
    .train 410100,1
    #completewith next
    .zone Hillsbrad Foothills >>Voyagez aux |cFFfa9602Contreforts d'Hillsbrad|r
step
    .train 410100,1
    .goto Alterac Mountains,80.499,66.923
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
    .turnin 79442 --Catching up
    .target Bath'rah the Windwatcher
step
    .train 410100 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de la tempête|r] pour apprendre |T136032:0|t[Arme du Maelström]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guide des runes et des livres
#subgroup Ceinture
#name Vague de puissance - 30 (Hautes-terres Arathies)
#title Vague de puissance

-- Power Surge

step
    .train 416054,1
    #completewith next
    .zone Arathi Highlands >>Voyagez aux |cFFfa9602Hautes-terres Arathies|r |cRXP_WARN_|cRXP_WARN_Nous vous recommandons fortement de monter un groupe d'au moins 3 joueurs.|r
step
    .train 416054,1
    .goto Arathi Highlands,31.91,41.15,50,0
    .goto Arathi Highlands,35.53,40.93,50,0
    .goto Arathi Highlands,35.51,44.26,50,0
    .goto Arathi Highlands,34.40,44.25,12,0
    .goto Arathi Highlands,31.08,43.68,12,0
    .goto Arathi Highlands,34.40,44.25,12,0
    .goto Arathi Highlands,35.51,44.26
    >>Tuez les |cRXP_ENEMY_Ogres Rochepoings|r et les |cRXP_ENEMY_Brutes Rochepoings|r. Dépouillez-les pour un |T134921:0|t|cRXP_LOOT_[Bâtonnet d'éclair ogre]|r
    .collect 213426,1 --Ogre Lightning Rod (1x)
    .mob Boulderfist Ogre
    .mob Boulderfist Enforcer
step
    .train 416054,1
    .goto Arathi Highlands,33.45,44.49
    .cast 434350 >>Cliquez sur la |cRXP_PICK_Terre meuble|r pour y insérer le |T134921:0|t|cRXP_LOOT_[Bâtonnet d'éclair ogre]|r.
step
    .train 416054,1
    >>Lancez |T136048:0|t[Éclair] 10 fois sur le |cRXP_ENEMY_Bâtonnet d'éclair|r
    >>Tuez |cRXP_ENEMY_Tamkar|r ou vous pouvez le kite quand il apparaît. Dépouillez-le pour la |T134419:0|t[Rune de puissance]
    >>|cRXP_WARN_Il mourra automatiquement après 30 secondes donc vous pouvez le kite au lieu de le tuer|r
    .collect 213093,1 --Rune of Power (1x)
    .mob Lightning Rod
    .mob Tamkar
step
    .train 416054 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[Rune de puissance] |cRXP_WARN_pour apprendre|r |T134337:0|t[Vague de puissance]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guide des runes et des livres
#subgroup Bottes
#title Totem de leurre
#name Totem de leurre - 27 (Mille pointes)

-- Decoy Totem

step
    .train 425882,1
    .zone Thousand Needles >>Voyagez aux |cFFfa9602Mille pointes|r
step
    .train 425882,1
    .goto Thousand Needles,46.21,51.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jandia|r
    >>|cRXP_BUY_Achetez-lui une|r |T132906:0|t[Bobine de soie] |cRXP_BUY_|r
    .collect 4291,1 --Silken Thread (1)
    .target Jandia
step
    .train 425882,1
    #loop
    .goto Thousand Needles,55.42,51.96,0
    .waypoint Thousand Needles,55.42,51.96,40,0
    .waypoint Thousand Needles,56.68,49.88,40,0
    .waypoint Thousand Needles,55.97,45.97,40,0
    .waypoint Thousand Needles,54.29,48.10,40,0
    >>Tuez les |cRXP_ENEMY_Serpent-nuage|r. Dépouillez-les pour leurs |cRXP_LOOT_Crocs de serpent-nuage|r
    .collect 213709,3 --Cloud Serpent Fang (3x)
    .mob Cloud Serpent
    .mob Venomous Cloud Serpent
    .mob Elder Cloud Serpent
step
    .train 425882,1
    #loop
    .goto Thousand Needles,27.65,49.47,0
    .goto Thousand Needles,26.55,55.77,0
    .waypoint Thousand Needles,27.65,49.47,40,0
    .waypoint Thousand Needles,27.16,51.62,15,0
    .waypoint Thousand Needles,26.29,52.79,15,0
    .waypoint Thousand Needles,27.23,54.04,15,0
    .waypoint Thousand Needles,26.55,55.77,15,0
    >>Tuez les |cRXP_ENEMY_Harpies hurlantes|r. Dépouillez-les pour leurs |cRXP_LOOT_Plumes de harpie puissantes|r
    .collect 213701,10 --Strong Harpy Feather (10x)
    .mob Screeching Harpy
    .mob Screeching Roguefeather
    .mob Screeching Windcaller
step
    .train 425882,1
    .use 213709 >>|cRXP_WARN_Utilisez vos|r |T133723:0|t[Crocs de serpent-nuage] |cRXP_WARN_pour fabriquer l'|r |T133291:0|t[Offrande à l’esprit du vent]
    .collect 213737,1 --Offering to the Wind Spirit (1x)
step
    .goto Thousand Needles,31.47,36.71,30 >> Dirigez-vous à la Cime de Noir-nuage
step
    #completewith next
    .goto Thousand Needles,33.08,35.33,20,0
    .goto Thousand Needles,32.78,32.24,20,0
    .goto Thousand Needles,32.03,31.36,20,0
    .goto Thousand Needles,32.37,28.64,20,0
    .goto Thousand Needles,32.60,27.51,20,0
    .goto Thousand Needles,34.87,31.76,20,0
    .goto Thousand Needles,34.15,35.77,20,0
    .goto Thousand Needles,33.32,36.24,20 >> Montez la Cime de Noir-nuage
step
    .train 425882,1
    .goto Thousand Needles,39.44,41.98
    .aura 435218 >>|cRXP_WARN_Utilisez l'|r |T133291:0|t[Offrande à l’esprit du vent] |cRXP_WARN_près de l'|r |cRXP_PICK_Autel de l'esprit du vent|r
    >>|cRXP_WARN_L'autel se trouve derrière la hutte sur le sommet le plus à l'est|r
    .use 213737
step
    .goto Thousand Needles,40.43,43.29
    >>Sautez dans le vide pour montrer votre foi à l'esprit du vent et recevoir la |T134419:0|t|cRXP_FRIENDLY_Rune de leurres|r
    >>|cRXP_WARN_Assurez-vous que votre|r |T133291:0|t[Offrande à l'esprit du vent] |cRXP_WARN_ne se dissipe pas. Elle dure 30 secondes|r
    .collect 213096,1 --Rune of Decoys (1x)
step
    .train 425882 >>|cRXP_WARN_Utilisez la|r |T134419:0|t|cRXP_FRIENDLY_Rune de leurres|r |cRXP_WARN_pour apprendre|r |T134508:0|t[Totem de leurre]
    .use 213096
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guide des runes et des livres
#subgroup Bottes
#title Esprit de l’alpha
#name Esprit de l'alpha - 27 (Mille pointes)

-- Spirit of the Alpha

step
    .train 410103,1
    .zone Thousand Needles >>Voyagez aux |cFFfa9602Mille pointes|r
step
    #completewith next
    .train 410103,1
    .goto Thousand Needles,46.17,52.95,20 >>Allez au début du pont inférieur juste au sud du Poste de Librevent
step
    .train 410103,1
    .goto Thousand Needles,46.82,53.52
    >>|cRXP_WARN_Utilisez|r |T136095:0|t[Loup fantôme] |cRXP_WARN_pour plonger prudemment vers la|r |cRXP_PICK_Cache dégradée par les intempéries|r
    >>Cliquez sur la |cRXP_PICK_Cache dégradée par les intempéries|r pour récupérer l' |T136095:0|t|cRXP_FRIENDLY_Écho de l'Alpha|r
    .collect 206985,1
step
    .train 410103 >>|cRXP_WARN_Utilisez l'|r |T136095:0|t|cRXP_FRIENDLY_Écho de l'Alpha|r |cRXP_WARN_pour apprendre|r |T408696:0|t[Esprit de l'alpha]
    .use 206985
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP Guide des runes et des livres
#subgroup Brassards
#title Tonnerre grondant
#name Tonnerre grondant - 41 (Tanaris)

-- Rolling Thunder
-- PERMOK: Needs better waypoints

step
    #completewith next
    .zone Tanaris >>Voyagez jusqu'à Tanaris
    .train 432236,1
step
    .train 432236,1
    .goto Tanaris,43.0,41.2
    .aura 446888,1 >>|cRXP_WARN_Cliquez sur le|r |cRXP_PICK_Totem étrange|r. Cela vous transformera en Loup fantôme |cRXP_WARN_et augmentera de 50% les dégâts que vous subissez|r
step
    .train 432236,1
    >>|cRXP_WARN_Courez vers l'autre totem en évitant les mobs.|r Ouvrez le coffre qui apparaît pour la|T134419:0|t[|cRXP_FRIENDLY_Rune de tonnerre grondant|r]
    *|cRXP_WARN_Vous subissez 50% de dégâts additionnels. Soyez prudent !|r. Vous pouvez libérer le chemin vers l'autre totem en préventivement
    .goto Tanaris,45.6,37.8
    .collect 220613,1
step
    .itemcount 220613,1
    .use 220613
    .train 432236 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de tonnerre grondant|r] |cRXP_WARN_pour apprendre|r |T136111:0|t[Tonnerre grondant]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP Guide des runes et des livres
#subgroup Brassards
#title Horion statique
#name Horion statique - 44 (Féralas)

-- PERMOK: Needs better waypoints

step
    #completewith ChargedAir
    +|cRXP_WARN_Vous devez être dans un groupe avec un autre joueur pour vous aider afin d'obtenir cette rune|r
step
    #completewith next
    .zone Feralas >>Voyagez à Féralas
    .train 432238,1
step
    .train 432238,1
    .goto Feralas,60.0,66.8
    .aura 447259 >>Cliquez sur le |cRXP_PICK_Totem chargé|r afin d'obtenir le buff |T136075:0|t[Air chargé]
step
    #label ChargedAir
    .train 432238,1
    >>|cRXP_WARN_Restez près du totem et tuez les |cRXP_ENEMY_Ogres Gordunnis|r autour de vous à l'aide de DÉGÂTS DE FOUDRE (par ex. Bouclier de foudre) jusqu'à ce que la |cRXP_ENEMY_Tempête tournoyante|r apparaisse.
    >>Tuez la |cRXP_ENEMY_Tempête tourbillonnante|r. Dépouillez-la pour la|T134419:0|t[|cRXP_FRIENDLY_Rune de horion statique|r]
    *|cRXP_WARN_Tous les joueurs du groupe doivent rester dans la portée du totem|r
    .goto Feralas,60.0,66.8
    .collect 220614,1
    .mob Whirling Tempest
    .mob Gordunni Warlock
    .mob Gordunni Shaman
    .mob Gordunni Mauler
step
    .itemcount 220614,1
    .use 220614
    .train 432238 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Horion statique|r] |cRXP_WARN_pour apprendre|r |T237587:0|t[Horion statique]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP Guide des runes et des livres
#subgroup Casque
#title Raz-de-marée
#name Raz-de-marée - 42 (Féralas)

-- PERMOK: Needs better waypoints

step
    #completewith next
    .zone Feralas >>Voyagez à Féralas
    .train 432234,1
step
    .train 432234,1
    >>Cliquez sur la |cRXP_PICK_Vieille caisse|r derrière la tente afin de ramasser la |T134239:0|t[Vieille clé]
    .goto Feralas,76.6,48.0
    .collect 221497,1
step
    .train 432234,1
    >>Cliquez sur le |cRXP_PICK_Vieux coffre|r au fond de la mer pour récupérer la |T134419:0|t[|cRXP_FRIENDLY_Rune de raz-de-marée|r]
    *|cRXP_WARN_Faites attention ! Cela invoquera QUATRE |cRXP_ENEMY_Élémentaires frissonnants|r (de niveau 42, immunisés au Givre)|r
    .goto Feralas,79.2,49.4
    .collect 220612,1
    .mob Simmering Elemental
step
    .itemcount 220612,1
    .use 220612
    .train 432234 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de raz-de-marée|r] |cRXP_WARN_pour apprendre|r |T237590:0|t[Raz-de-marée]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP Guide des runes et des livres
#subgroup Brassards
#title Raz-de-marée
#name Raz-de-marée - 45 (Azeroth)

--x shiek: needs better coordinates
step
    #completewith next
    .zone Tanaris >>Voyagez jusqu'à Tanaris
    .train 432241,1
step
    #loop
    .goto Tanaris,51.6,44.2,40,0
    .goto Tanaris,51.2,52.0,40,0
    .goto Tanaris,41.0,48.6,40,0
    .goto Tanaris,41.8,44.0,40,0
    >>Tuez la |cRXP_ENEMY_Hyène Brûlepatte|r, le |cRXP_ENEMY_Ravageur des landes|r et le |cRXP_ENEMY_Contemplateur Peau-de-verre.|r Dépouillez-les pour les |cRXP_LOOT_|T134327:0|tNotes de chaman barbouillées|r
    .collect 221352,1 --1/1 Smudged Shaman's Notes
    .mob Blisterpaw Hyena
    .mob Land Rager
    .mob Glasshide Gazer
    .train 432241,1
step
    .goto Tanaris,62,64
    >>Cliquez sur les |cRXP_PICK_|T134327:0|tNotes de chaman barbouillées|r afin de lancer la quête.
    .accept 82072,1 >>Acceptez la quête Terre purificatrice
    .use 221352
    .train 432241,1
step
    .isOnQuest 82072
    .goto Tanaris,62,64
    .cast 446581 >>Utilisez le |T134743:0|t[Sapta de terre trouble] près du Totem de terre corrompu.
    .use 221349
    .train 432241,1
step
    .goto Tanaris,62.0,62.6
    >>Tuez la |cRXP_ENEMY_Manifestation de terre modérée corrompue|r puis >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Manifestation de terre modérée.|r
    .turnin 82072 >>Rendez la quête Terre purificatrice
    .accept 82075 >>Acceptez la quête Répondre à l’appel de la terre
    .mob Corrupt Moderate Manifestation of Earth
    .target Moderate Manifestation of Earth
    .train 432241,1
step
    #completewith next
    .zone Azshara >>Voyagez jusqu'à Azshara
    .train 432241,1
step
    #loop
    .goto Azshara,19.4,64.0,20,0
    .goto Azshara,21.2,60.8,20,0
    .goto Azshara,21.0,60.0,20,0
    >>Tuez les |cRXP_ENEMY_Satyres Haldarr|r, les |cRXP_ENEMY_Entourloupeurs Haldarr|r et les |cRXP_ENEMY_Liges de la corruption Haldarr.|r Dépouillez-les pour les |cRXP_LOOT_|T134331:0|tNotes de chaman trempées|r
    .collect 221351,1 --1/1 Waterlogged Shaman's Notes
    .mob Haldarr Satyr
    .mob Haldarr Trickster
    .mob Haldarr Felsworn
    .train 432241,1
step
    .goto Azshara,14,49
    >>Cliquez sur les |cRXP_PICK_|T134331:0|tNotes de chaman trempées|r afin de lancer la quête.
    .accept 82073,1 >>Acceptez la quête Eau purificatrice
    .use 221352
    .train 432241,1
step
    .isOnQuest 82073
    .goto Azshara,14,49
    .cast 446581 >>Utilisez le |T134743:0|t[Sapta de terre trouble] près du Totem d'eau corrompu.
    .use 221348
    .train 432241,1
step
    .goto Azshara,15.0,49.8
    >>Tuez la |cRXP_ENEMY_Manifestation d'eau modérée corrompue|r puis >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Manifestation d'eau modérée.|r
    .turnin 82073 >>Rendez la quête Eau purificatrice
    .accept 82076 >>Acceptez la quête Répondre à l’appel de l’eau
    .mob Corrupt Moderate Manifestation of Water
    .target Moderate Manifestation of Water
    .train 432241,1
step
    #completewith next
    .zone The Hinterlands >>Voyagez aux Hinterlands
    .train 432241,1
step
    #loop
    .goto The Hinterlands,48.8,53.0,40,0
    .goto The Hinterlands,47.6,40.8,40,0
    .goto The Hinterlands,58.2,41.8,40,0
    >>Tuez les |cRXP_ENEMY_Limace verte|r et les |cRXP_ENEMY_Limon de jade.|r Dépouillez-les pour leur |cRXP_LOOT_|T134332:0|tNotes de chaman déchirées|r
    .collect 220379,1 --1/1 Torn Shaman's Notes
    .mob Green Sludge
    .mob Jade Ooze
    .train 432241,1
step
    .goto The Hinterlands,51,46
    >>Cliquez sur les |cRXP_PICK_|T134332:0|tNotes de chaman déchirées|r pour lancer la quête.
    .accept 81960,1 >>Acceptez la quête Air purifié
    .use 220379
    .train 432241,1
step
    .isOnQuest 82072
    .goto The Hinterlands,51,46
    .cast 446581 >>Utilisez le |T134743:0|t[Sapta de terre trouble] près du Totem d'air corrompu.
    .use 221349
    .train 432241,1
step
    .goto The Hinterlands,51.2,47.0
    >>Tuez la |cRXP_ENEMY_Manifestation d'air modérée corrompue|r puis >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Manifestation d'air modérée.|r
    .turnin 81960 >>Rendez la quête Air purifié
    .accept 81968 >>Acceptez la quête Répondre à l’appel de l’air
    .mob Corrupt Moderate Manifestation of Air
    .target Moderate Manifestation of Air
    .train 432241,1
step
    #completewith next
    .zone Searing Gorge >>Voyagez à la Gorge des Vents brûlants
    .train 432241,1
step
    #loop
    .goto Searing Gorge,52.0,35.4,40,0
    .goto Searing Gorge,42.4,38.6,40,0
    .goto Searing Gorge,32.8,43.0,40,0
    .goto Searing Gorge,28.8,44.4,40,0
    .goto Searing Gorge,30.6,64.6,40,0
    .goto Searing Gorge,31.6,73.8,40,0
    >>Tuez les |cRXP_ENEMY_Elémentaires de magma|r et les |cRXP_ENEMY_Elémentaires infernaux.|r Dépouillez-les pour les |cRXP_LOOT_|T134327:0|tNotes de chaman brûlées|r
    .collect 221350,1 --1/1 Charred Shaman's Notes
    .mob Inferno Elemental
    .mob Magma Elemental
    .train 432241,1
step
    .goto Searing Gorge,24,72
    >>Cliquez sur les |cRXP_PICK_|T134329:0|tNotes de chaman brûlées|r pour lancer la quête.
    .accept 82071,1 >>Acceptez la quête Feu purificateur
    .use 221352
    .train 432241,1
step
    .isOnQuest 82072
    .goto Searing Gorge,24,72
    .cast 446581 >>Utilisez le |T134743:0|t[Sapta de terre trouble] près du Totem de feu corrompu.
    .use 221349
    .train 432241,1
step
    .goto Searing Gorge,24.0,72.4
    >>Tuez la |cRXP_ENEMY_Manifestation de feu modérée corrompue|r puis >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Manifestation de feu modérée.|r
    .turnin 82071 >>Rendez la quête Feu purificateur
    .accept 82074 >>Acceptez la quête Répondre à l’appel du feu
    .mob Corrupt Moderate Manifestation of Fire
    .target Moderate Manifestation of Fire
    .train 432241,1
step
    #completewith next
    .zone Feralas >>Voyagez à Féralas
    .train 432241,1
step
    #loop
    .goto Feralas,50.2,51.4,20,0
    .goto Feralas,44.8,46.2,20,0
    .goto Feralas,41.0,37.8,20,0
    .goto Feralas,37.4,33.0,20,0
    >>Tuez les |cRXP_ENEMY_Embruns|r et les |cRXP_ENEMY_Elémentaires marins.|r Dépouillez-les pour l' |cRXP_LOOT_|T132849:0|tEssence élémentaire|r
    .collect 220510,3
    .train 432241,1
step
    .cast 446803 >>Utilisez le |T134118:0|t[Fragment de terre]
    .use 221355
    .train 432241,1
step
    .goto Feralas,36.0,32.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Manifestation de terre modérée.|r
    .turnin 82075 >> Répondre à l’appel de la terre
    .target Moderate Manifestation of Earth
    .train 432241,1
step
    #loop
    .goto Feralas,37.4,33.0,20,0
    .goto Feralas,41.0,37.8,20,0
    .goto Feralas,44.8,46.2,20,0
    .goto Feralas,50.2,51.4,20,0
    >>Tuez les |cRXP_ENEMY_Embruns|r et les |cRXP_ENEMY_Elémentaires marins.|r Dépouillez-les pour l' |cRXP_LOOT_|T132849:0|tEssence élémentaire|r
    .collect 220510,3
    .train 432241,1
step
    .cast 446802 >>Utilisez le |T134130:0|t[Fragment de feu]
    .use 221353
    .train 432241,1
step
    .goto Feralas,36.0,32.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Manifestation de terre modérée.|r
    .turnin 82075 >> Répondre à l’appel de la terre
    .target Moderate Manifestation of Earth
    .train 432241,1
step
    #loop
    .goto Feralas,50.2,51.4,20,0
    .goto Feralas,44.8,46.2,20,0
    .goto Feralas,41.0,37.8,20,0
    .goto Feralas,37.4,33.0,20,0
    >>Tuez les |cRXP_ENEMY_Embruns|r et les |cRXP_ENEMY_Elémentaires marins.|r Dépouillez-les pour l' |cRXP_LOOT_|T132849:0|tEssence élémentaire|r
    .collect 220510,3
    .train 432241,1
step
    .cast 445748 >>Utilisez le |T134133:0|t[Fragment d’air]
    .use 220375
    .train 432241,1
step
    .goto Feralas,36.0,32.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Manifestation de terre modérée.|r
    .turnin 82075 >> Répondre à l’appel de la terre
    .target Moderate Manifestation of Earth
    .train 432241,1
step
    #loop
    .goto Feralas,37.4,33.0,20,0
    .goto Feralas,41.0,37.8,20,0
    .goto Feralas,44.8,46.2,20,0
    .goto Feralas,50.2,51.4,20,0
    >>Tuez les |cRXP_ENEMY_Embruns|r et les |cRXP_ENEMY_Elémentaires marins.|r Dépouillez-les pour l' |cRXP_LOOT_|T132849:0|tEssence élémentaire|r
    .collect 220510,3
    .train 432241,1
step
    .cast 446804 >>Utilisez le |T134089:0|t[Fragment d’eau]
    .use 221354
    .train 432241,1
step
    .goto Feralas,36.0,32.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Manifestation de terre modérée.|r
    .turnin 82075 >> Répondre à l’appel de la terre
    .target Moderate Manifestation of Earth
    .train 432241,1
step
    >>Tuez le |cRXP_ENEMY_Chaman noir du crépuscule.|r Dépouillez-le pour la |cRXP_LOOT_|cRXP_FRIENDLY_|T134419:0|tRune de surcharge|r|r
    .collect 220616,1 --1/1 Rune of Overcharged
    .train 432241,1
step
    .train 432241 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de surcharge|r] |cRXP_WARN_pour apprendre|r |T132213:0|t[Surchargé]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP Guide des runes et des livres
#subgroup Cape
#title Tempête, terre et feu
#name Tempête, terre et feu - 52 (Gangrebois)

step
    .train 440634,1
    #completewith next
    .zone Felwood >>Voyagez à Gangrebois
step
    .goto Felwood,62.4,9.0
    .train 440634,1
    >>Tuez les |cRXP_ENEMY_Chamans Mort-bois|r, les |cRXP_ENEMY_Vengeurs Mort-bois|r et les |cRXP_ENEMY_Protecteurs Mort-bois|r. Dépouillez-les pour l' |T134918:0|t[|cRXP_LOOT_Icône voltaïque|r]
    .goto Feralas,76.6,48.0
    .collect 225838,1
    .mob Deadwood Shaman
    .mob Deadwood Avenger
    .mob Deadwood Den Watcher
step
    .train 440634,1
    .equip 18,225838 >> |cRXP_WARN_Équipez l'|r |T134918:0|t[|cRXP_LOOT_Icône voltaïque|r]
    .use 225838
step
    .train 440634,1
    .aura 408828 >>|cRXP_WARN_Vous devez maintenant tuer 3 ennemis avec une seule incantation de|r |T136015:0|t[Chaîne d’éclairs]
    >>|cRXP_WARN_Engagez 3 mobs et réduisez leurs points de vie à environ 5 % chacun, puis lancez|r |T136015:0|t[Chaîne d'éclairs]
step
    .itemcount 225838,1
    .use 225838
    .train 440634 >>|cRXP_WARN_Utilisez l'|r |T134918:0|t[|cRXP_LOOT_Icône voltaïque|r] |cRXP_WARN_pour apprendre|r |T237588:0|t[Tempête, terre et feu]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP Guide des runes et des livres
#subgroup Cape
#title Cohérence
#name Cohérence - 55 (Steppes ardentes)

step
    .train 416062,1
    #completewith next
    .zone Burning Steppes >>Voyagez jusqu'aux Steppes ardentes
step
    .train 416062,1
    #loop
    .goto Burning Steppes,62.4,9.0,60,0
    .goto Burning Steppes,69.4,31.8,60,0
    .goto Burning Steppes,61.4,31.8,60,0
    .goto Burning Steppes,51.2,35.6,60,0
    .goto Burning Steppes,55.6,49.2,60,0
    .goto Burning Steppes,54.8,62.2,60,0
    .goto Burning Steppes,35.6,61.6,60,0
    .goto Burning Steppes,41.6,43.6,60,0
    >>Tuez les |cRXP_ENEMY_Grands élémentaires d'obsidienne|r. Dépouillez-les pour leur |cRXP_LOOT_Noyaux d’obsidienne en fusion|r
    .collect 225676,1
    .mob Greater Obsidian Elemental
step
    .train 416062,1
    .goto Redridge Mountains,44.6,50.0
    >>|cRXP_WARN_Vous avez maintenant 10 minutes pour aller dans l'eau n'importe où dans le monde|r
    >>|cRXP_WARN_Voyage aux Carmines et sautez dans le lac|r
    >>|cRXP_WARN_Si votre Pierre de foyer est près de l'eau, vous pouvez aussi le faire à la place|r
    >>|cRXP_WARN_Sauter dans l'eau transformera le |cRXP_LOOT_Noyau d’obsidienne en fusion|r en|r |T237477:0|t[|cRXP_LOOT_Noyau d'obsidienne couvert de suie|r]
    .collect 225675,1
step
    .train 416062,1
    .use 225675 >> |cRXP_WARN_Ouvrez le|r |T237477:0|t[|cRXP_LOOT_Noyau d'obsidienne couvert de suie|r] |cRXP_WARN_pour obtenir la|r |T134419:0|t[|cRXP_LOOT_Rune de constance|r]
    .collect 225740,1
step
    .itemcount 225740,1
    .use 225740
    .train 416062 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_LOOT_Rune de constance|r] |cRXP_WARN_pour apprendre|r |T237586:0|t[Cohérence]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP Guide des runes et des livres
#subgroup Cape
#title Esprit farouche
#name Esprit farouche - 60 (Berceau-de-l'Hiver)

step
    .train 440630,1
    #completewith next
    .zone Winterspring >>Voyagez au Berceau-de-l'Hiver
    >>|cRXP_WARN_Note: vous devez tuer un élite de niveau 60. Pensez à demander à un ami de vous aider|r
step
    #completewith next
    .goto Winterspring,67.93,41.44,50 >> Entrez dans la grotte des Yétis
step
    .goto Winterspring,69.87,37.92
    >>|cRXP_WARN_Allez jusqu'au fond de la grotte des Yétis et parlez à l'élémentaire enchaîné|r |cRXP_FRIENDLY_Frijidar|r
    >>|cRXP_WARN_Il passera hostile après quelques secondes|r
    >>Tuez |cRXP_ENEMY_Frijidar|r. Dépouillez-le pour la |T134419:0|t[|cRXP_LOOT_Rune d'esprit lié|r]
    .collect 225914,1
    .mob Frijidar
    .skipgossip
step
    .itemcount 225914,1
    .use 225914
    .train 440630 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_LOOT_Rune d'esprit lié|r] |cRXP_WARN_pour apprendre|r |T237577:0|t[Esprit farouche]
]])
