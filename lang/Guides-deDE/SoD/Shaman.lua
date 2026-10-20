if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Geschmolzener Schlag - 8 (Mulgore)
#title Geschmolzener Schlag
#next Lavapeitsche - 10 (Mulgore)


step
    +|cRXP_WARN_Ihr müsst mindestens Stufe 8 sein, um|r |T133816:0|t[Handschuhe prägen - Schmelzschlag] |cRXP_WARN_allein in Mulgore zu erwerben|r
    >>|cRXP_WARN_Ihr MÜSST mindestens Stufe 3 haben, um das|r |T134918:0|t|cRXP_LOOT_[Schwefliges Symbol]|r
    >>|cRXP_WARN_Ihr müsst stärker leveln, bevor ihr überhaupt versucht zu erwerben|r |T133816:0|t[Handschuhe prägen - Schmelzschlag]
    .train 425344,1
    .xp >3,1
step
    +|cRXP_WARN_Ihr solltet mindestens Stufe 8 haben, um zu erwerben|r |T133816:0|t[Handschuhe prägen - Schmelzschlag] |cRXP_WARN_in Mulgore allein|r
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
    >>Tötet |cRXP_ENEMY_Buddler von Bael'dun|r und |cRXP_ENEMY_Gutachter von Bael'dun|r. Plündert sie für |cRXP_LOOT_Artefaktlagertruhenschlüssel|r
    >>|cRXP_WARN_Passt auf, denn |cRXP_ENEMY_Gutachter von Bael'dun|r wirken|r |T135929:0|t[Geringes Heilen] |cRXP_WARN_(Distanzzauber: heilt sich selbst oder einen nahegelegenen Gegner unter 50% Gesundheit für etwa 75 Gesundheit)|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
    .xp <3,1
--XX WIP to here
step
    .goto Mulgore,31.56,49.54
    >>Öffnet die |cRXP_PICK_Artefaktlagertruhe|r Truhe. Plündert sie für das |T134918:0|t|cRXP_LOOT_[Schwefliges Symbol]|r
    .collect 206388,1 --Sulfurous Icon (1)
    .train 425344,1
    .xp <3,1
step
    .equip 18,206388 >> |cRXP_WARN_Legt das|r |T134918:0|t|cRXP_LOOT_[Schweflige Symbol]|r an
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
    .aura 408828 >>|cRXP_WARN_Tötet Feinde mit|r |T136026:0|t[Erdschock] |cRXP_WARN_auf ihnen mindestens einmal. Macht dies 10 Mal, um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Effekt zu erhalten|r
    >>|cRXP_WARN_HINWEIS: Ihr müsst dies auf Feinde, die Erfahrung geben, anwenden, um Stapel zu erhalten|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
    .xp <3,1
    .xp >13,1
step
    #completewith Barrens
    .zone The Barrens >> Reist nach Das Brachland
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
    .aura 408828 >>|cRXP_WARN_Tötet Feinde mit|r |T136026:0|t[Erdschock] |cRXP_WARN_auf ihnen mindestens einmal. Macht dies 10 Mal, um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Effekt zu erhalten|r
    >>|cRXP_WARN_HINWEIS: Ihr müsst dies auf Feinde, die Erfahrung geben, anwenden, um Stapel zu erhalten|r
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
    .aura 408828 >>|cRXP_WARN_Tötet Feinde mit|r |T136026:0|t[Erdschock] |cRXP_WARN_auf ihnen mindestens einmal. Macht dies 10 Mal, um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Effekt zu erhalten|r
    >>|cRXP_WARN_HINWEIS: Ihr müsst dies auf Feinde, die Erfahrung geben, anwenden, um Stapel zu erhalten|r
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
    .aura 408828 >>|cRXP_WARN_Tötet Feinde mit|r |T136026:0|t[Erdschock] |cRXP_WARN_auf ihnen mindestens einmal. Macht dies 10 Mal, um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Effekt zu erhalten|r
    >>|cRXP_WARN_HINWEIS: Ihr müsst dies auf Feinde, die Erfahrung geben, anwenden, um Stapel zu erhalten|r
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
    .zone Stonetalon Mountains >> Reist ins Steinkrallengebirge
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
    .aura 408828 >>|cRXP_WARN_Tötet Feinde mit|r |T136026:0|t[Erdschock] |cRXP_WARN_auf ihnen mindestens einmal. Macht dies 10 Mal, um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Effekt zu erhalten|r
    >>|cRXP_WARN_HINWEIS: Ihr müsst dies auf Feinde, die Erfahrung geben, anwenden, um Stapel zu erhalten|r
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
    .cast 402265 >>|cRXP_WARN_Benutzt das|r |T134918:0|t|cRXP_LOOT_[Schwefliges Symbol]|r |cRXP_WARN_um zu erlernen|r |T133816:0|t[Handschuhe prägen - Schmelzschlag]
    .use 206388
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <3,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Geschmolzener Schlag - 10 (Durotar)
#title Geschmolzener Schlag
#next Weg der Erde - 12 (Das Brachland)


    --Rune of Molten Blast
step
    +|cRXP_WARN_Ihr MÜSST mindestens Stufe 10 sein, um zu erwerben|r |T133816:0|t[Handschuhe prägen - Schmelzschlag] |cRXP_WARN_da dies die Stufenvoraussetzung für das Training ist|r |T135813:0|t[Flammenschock]
    >>|cRXP_WARN_Ihr müsst noch mehr leveln, bevor ihr versucht, dies zu erwerben|r |T133816:0|t[Handschuhe prägen - Schmelzschlag]
    >>|cRXP_WARN_Alternativ könnt ihr|r |T133816:0|t[Handschuhe prägen - Schmelzschlag] |cRXP_WARN_in Mulgore ab Stufe 3 erhalten|r
    .train 425344,1
    .xp >10,1
step
    #completewith IconS
    #label Durotar1
    .zone Durotar >> Reist nach Durotar
    .train 425344,1
    .xp <10,1
step
    #completewith next
    #requires Durotar1
    #label Durotar2
    .goto Durotar,53.28,42.57,20,0
    .goto Durotar,54.42,42.59,15 >>Reisen toward |cRXP_FRIENDLY_Swart|r inside
    .train 425344,1
    .xp <10,1
step
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Erlernen |T135813:0|t[Flammenschock]
    .target Swart
    .train 425344,1
    .xp <10,1
step
    #completewith next
    #requires Durotar2
    .goto Durotar,58.69,45.53,40 >>Reist zum |cRXP_ENEMY_Eingefrorener Makrura|r
    .train 425344,1
    .xp <10,1
step
    #label IconS
    .goto Durotar,58.69,45.53
    >>|cRXP_WARN_Sucht nach anderen Schamanen, Hexenmeistern oder Magiern neben dem |cRXP_ENEMY_Eingefrorener Makrura|r oder im allgemeinen Chatfunktionen (Tippt /1 in den Chatfunktionen)|r
    >>|cRXP_WARN_Wirkt|r |T135813:0|t[Flammenschock] |cRXP_WARN_auf den |cRXP_ENEMY_Eingefrorener Makrura|r um einen Effekt-Stapel von|r |T135805:0|t[Erhitzen] |cRXP_WARN_anzuwenden. Wendet 5 Stapel gleichzeitig an, um den |cRXP_ENEMY_Eingefrorener Makrura|r zu töten. Plündert es für das|r |T134918:0|t|cRXP_LOOT_[Schwefliges Symbol]|r
    >>|cRXP_WARN_Alternativ erhaltet ihr|r |T133816:0|t[Handschuhe prägen - Schmelzschlag] |cRXP_WARN_in Mulgore allein|r
    >>|cRXP_WARN_NOTE:|r |T135813:0|t[Waffe der Flammenzunge] |cRXP_WARN_does NOT apply beliebig|r |T135805:0|t[Erhitzen] stacks|r
    .collect 206388,1 --Sulfurous Icon (1)
    .mob Frozen Makrura
    .train 425344,1
    .xp <10,1
    .xp >12,1
step
    .goto Durotar,58.69,45.53
    >>|cRXP_WARN_Sucht nach anderen Schamanen, Hexenmeistern oder Magiern in der Nähe von |cRXP_ENEMY_Eingefrorener Makrura|r oder im Allgemeinen Chatfunktionen (Tippt /1 in den Chatfunktionen ein)|r
    >>Wirkt|cRXP_WARN_ |T135813:0|t[Flammenschock] |rauf den |cRXP_WARN_Eingefrorener Makrura|cRXP_ENEMY_, um einen Stapel von|r |T135805:0|t[Erhitzen] |ranzuwenden. Wendet 5 Stapel auf einmal an, um den |cRXP_WARN_Eingefrorener Makrura|cRXP_ENEMY_ zu töten|r. Plündert es für die|r |T134918:0|t|cRXP_LOOT_[Schwefliges Symbol]|r
    >>|cRXP_WARN_Alternativ könnt ihr|r |T133816:0|t[Handschuhe prägen - Schmelzschlag] |cRXP_WARN_in Mulgore allein erhalten|r
    >>|cRXP_WARN_HINWEIS:|r |T135813:0|t[Waffe der Flammenzunge] |cRXP_WARN_und|r |T135824:0|t[Totem der Feuernova] |cRXP_WARN_wenden KEINE|r |T135805:0|t[Erhitzen]-Stapel an|r
    .collect 206388,1 --Sulfurous Icon (1)
    .mob Frozen Makrura
    .train 425344,1
    .xp <12,1
--XX Flametongue and Fire Nova doesn't seem to work
step
    .equip 18,206388 >> |cRXP_WARN_Legt das|r |T134918:0|t|cRXP_LOOT_[Schweflige Symbol]|r an
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
    .aura 408828 >>|cRXP_WARN_Tötet Feinde mit|r |T136026:0|t[Erdschock] |cRXP_WARN_auf ihnen mindestens einmal. Macht dies 10 Mal, um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Effekt zu erhalten|r
    >>|cRXP_WARN_HINWEIS: Ihr müsst dies auf Feinde, die Erfahrung geben, anwenden, um Stapel zu erhalten|r
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <10,1
    .xp >11,1
step
    #completewith Barrens
    .zone The Barrens >> Reist nach Das Brachland
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
    .aura 408828 >>|cRXP_WARN_Tötet Feinde mit|r |T136026:0|t[Erdschock] |cRXP_WARN_auf ihnen mindestens einmal. Macht dies 10 Mal, um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Effekt zu erhalten|r
    >>|cRXP_WARN_HINWEIS: Ihr müsst dies auf Feinde, die Erfahrung geben, anwenden, um Stapel zu erhalten|r
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
    .aura 408828 >>|cRXP_WARN_Tötet Feinde mit|r |T136026:0|t[Erdschock] |cRXP_WARN_auf ihnen mindestens einmal. Macht dies 10 Mal, um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Effekt zu erhalten|r
    >>|cRXP_WARN_HINWEIS: Ihr müsst dies auf Feinde, die Erfahrung geben, anwenden, um Stapel zu erhalten|r
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
    .aura 408828 >>|cRXP_WARN_Tötet Feinde mit|r |T136026:0|t[Erdschock] |cRXP_WARN_auf ihnen mindestens einmal. Macht dies 10 Mal, um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Effekt zu erhalten|r
    >>|cRXP_WARN_HINWEIS: Ihr müsst dies auf Feinde, die Erfahrung geben, anwenden, um Stapel zu erhalten|r
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
    .zone Stonetalon Mountains >> Reist ins Steinkrallengebirge
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
    .aura 408828 >>|cRXP_WARN_Tötet Feinde mit|r |T136026:0|t[Erdschock] |cRXP_WARN_auf ihnen mindestens einmal. Macht dies 10 Mal, um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Effekt zu erhalten|r
    >>|cRXP_WARN_HINWEIS: Ihr müsst dies auf Feinde, die Erfahrung geben, anwenden, um Stapel zu erhalten|r
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
    .cast 402265 >>|cRXP_WARN_Benutzt|r |T134918:0|t|cRXP_LOOT_[Schwefliges Symbol]|r |cRXP_WARN_um zu erlernen|r |T133816:0|t[Handschuhe prägen - Schmelzschlag]
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
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Lavapeitsche - 10 (Mulgore)
#title Lavapeitsche
#next Führung der Ahnen - 10 (Mulgore)


    --Rune of Lava Lash
--XX Worth mentioning "Dual Wield Skill" in the name? Cuts off ingame due to it being 3 lines though
step
    +|cRXP_WARN_Ihr solltet mindestens Stufe 10 haben, um zu erwerben|r |T133816:0|t[Handschuhe prägen - Lavapeitsche] |cRXP_WARN_und|r |T132147:0|t[Beidhändigkeit] |cRXP_WARN_in Mulgore allein|r
    >>|cRXP_WARN_Ihr MÜSST mindestens Stufe 4 sein, da dies die Stufenvoraussetzung für den Start der Questreihe ist|r
    >>|cRXP_WARN_Ihr müsst stärker leveln, bevor ihr überhaupt versucht zu erwerben|r |T133816:0|t[Handschuhe prägen - Lavapeitsche] |cRXP_WARN_und|r |T132147:0|t[Beidhändigkeit]
    .train 410104,1
    .xp >4,1
step
    +|cRXP_WARN_Ihr müsst mindestens Stufe 10 sein, um zu erwerben|r |T133816:0|t[Handschuhe prägen - Lavapeitsche] |cRXP_WARN_und|r |T132147:0|t[Beidhändigkeit] |cRXP_WARN_allein in Mulgore zu erwerben|r
    >>|cRXP_WARN_Ihr müsst noch mehr leveln, bevor ihr versucht, dies zu erwerben|r |T133816:0|t[Handschuhe prägen - Lavapeitsche] |cRXP_WARN_und|r |T132147:0|t[Beidhändigkeit]
    .train 410104,1
    .xp <4,1
    .xp >10,1
--XX WIP to here
step
    #completewith next
    .zone Thunder Bluff >> Reist nach Donnerfels
    .train 410104,1
    .xp <4,1
step
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eberton Schattentotem|r
    >>|cRXP_WARN_Er ist in|r |T132320:0|t[Verstohlenheit]
    .accept 76156 >>Akzeptiert die Quest Schleicht mit der Erdenmutter
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step
    #completewith next
    .goto Mulgore,61.46,47.21,20 >>Betretet Die Mine der Venture Co.
    >>|cRXP_WARN_HINWEIS:|r |T132288:0|t[Venture Co Verkleiden] |cRXP_WARN_funktioniert NICHT|r
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
    >>Öffnet die |cRXP_PICK_Sprengvorräte|r im Bergwerk und draußen auf der anderen Seite. Sammelt sie für die |cRXP_LOOT_Zephyriumbergbauladung|r
    >>|cRXP_WARN_Bleibt, wenn möglich, in der oberen Ebenen der Höhle|r
    .complete 76156,1 --Seaforium Mining Charge (5)
    .train 410104,1
    .xp <4,1
--XX Didn't add the bottom of the mine ones
step
    #completewith next
    .goto Mulgore,59.99,35.82
    .subzone 215 >>Verlasst die Venture Co. Grube auf der anderen Seite
    .train 410099,1
    .xp <4,1
step
    #completewith next
    .goto Mulgore,60.39,33.54,40 >>Reist zum |cRXP_FRIENDLY_Abenteurerüberreste|r
    .train 410099,1
    .xp <4,1
step
    #label IconS
    .goto Mulgore,60.39,33.54
    >>|cRXP_WARN_Falls ihr |T134596:0|t[Hosen prägen - Führung der Ahnen]|r noch nicht habt, ist jetzt ein guter Zeitpunkt, das zu tun|r
    >>|cRXP_WARN_Falls ihr diese Rune nicht erhalten wollt, überspringt diesen Schritt|r
    >>|cRXP_WARN_Tretet einer Gruppe mit einem anderen Schamanen, Priester oder Druiden, der über den |cRXP_FRIENDLY_Abenteurerüberresten|r steht, oder sucht nach Hilfe von einem Schamanen, Priester oder Druiden im Allgemeinen Chatfunktionen (Tippt /1 in den Chatfunktionen)|r
    >>|cRXP_WARN_Sprecht mit den |cRXP_FRIENDLY_Abenteurerüberresten|r auf dem Boden, um das Ritual zu beginnen, oder klickt auf das |T136223:0|t[Geisterritual] |cRXP_WARN_des anderen Spielers (während ihr in ihrer Gruppe seid)|r
    >>|cRXP_WARN_Ein |cRXP_FRIENDLY_Abenteurergeist|r erscheint und stirbt nach dem Abschluss des Rituals. Plündert es für die|r |T237571:0|t|cRXP_LOOT_[Echo der Urahnen]|r
    .collect 210589,1 --Echo of the Ancestors (1)
    .target Adventurer's Remains
    .target Adventurer's Spirit
    .skipgossip
    .train 410099,1
    .xp <4,1
step
    .cast 402265 >>|cRXP_WARN_Benutzt die|r |T237571:0|t|cRXP_LOOT_[Echo der Urahnen]|r |cRXP_WARN_um zu erlernen|r |T134596:0|t[Hosen prägen - Führung der Ahnen]
    .use 210589
    .itemcount 210589,1 --Echo of the Ancestors (1)
    .train 410099,1
    .xp <4,1
step
    #completewith next
    .zone Thunder Bluff >> Reist nach Donnerfels
    .train 410104,1
    .xp <4,1
--XX Logout skips take you to Bloodhoof, not worth doing
step
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eberton Schattentotem|r
    >>|cRXP_WARN_Er ist in|r |T132320:0|t[Verstohlenheit]
    .turnin 76156 >>Gebt die Quest Schleicht mit der Erdenmutter ab
    .accept 76160 >>Akzeptiert die Quest Schleicht mit der Erdenmutter
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step
    #completewith next
    .goto Mulgore,53.91,23.45
    .zone Mulgore >>Nehmt den nördlichen Aufzug hinab nach Mulgore
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
    >>Plündert|cRXP_LOOT_Windzornzapfen|r vom Boden
    .collect 206170,8,76160,1 --Windfury Cone (8)
    .train 410104,1
    .xp <4,1
step
    >>Benutzt |T133748:0|t[Mörser und Stößel] um |T133213:0|t[Piniensalbe] zu erstellen
    .complete 76160,1 --Pine Salve (1)
    .use 206176
    .train 410104,1
    .xp <4,1
step
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eberton Schattentotem|r
    >>|cRXP_WARN_Er ist in|r |T132320:0|t[Verstohlenheit]
    .turnin 76160 >>Gebt die Quest Schleicht mit der Erdenmutter ab
    .accept 76240 >>Akzeptiert die Quest Schleicht mit der Erdenmutter
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step
    #ah
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Auktionator Rikno Noragg|r
    >>|cRXP_BUY_Kauft einen|r |T133894:0|t[Roher glänzender Kleinfisch] |cRXP_BUY_vom Auktionshaus|r
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
    .goto Thunder Bluff,55.78,47.02,15 >>Reist zu |cRXP_FRIENDLY_Sewa Mistrunner|r
    .train 410104,1
    .xp <4,1
step
    #ssf
    #sticky
    #label Kah
    .goto Thunder Bluff,56.13,46.39,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kah Mistrunner|r
    .train 7734 >>Erlernt |T136245:0|t[Angeln]
    .target Kah Mistrunner
    .train 410104,1
    .xp <4,1
step
    #ssf
    #label Sewa
    .goto Thunder Bluff,55.78,47.02,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sewa Mistrunner|r
    >>|cRXP_BUY_Kauft eine|r |T132932:0|t[Angelrute] |cRXP_BUY_und|r |T134335:0|t[Glänzendes Schmuckstück] |cRXP_BUY_von ihr|r
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
    .equip 16,6256 >> |cRXP_WARN_Legt die|r |T132932:0|t[Angelrute] an
    .use 6256
    .train 410104,1
    .xp <4,1
step
    #ssf
    #completewith Fish
    #requires Pole
    .aura 8087 >> |cRXP_WARN_Befestige das|r |T134335:0|t[Glänzendes Schmuckstück] |cRXP_WARN_an eurer|r |T132932:0|t[Angelrute]
    .use 6529
    .train 410104,1
    .xp <4,1
step
    #ssf
    #label Fish
    #requires Kah
    .goto Thunder Bluff,40.42,58.55
    >>Fischt im Teich, bis ihr einen |T133894:0|t[|cRXP_LOOT_Roher glänzender Kleinfisch|r] erhaltet
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .train 410104,1
    .xp <4,1
step
    >>Benutzt das |T132147:0|t[Messer Set] um |T134007:0|t[Fischstücke] zu erstellen
    .complete 76240,1 --Fish Chunks (1)
    .use 206344
    .train 410104,1
    .xp <4,1
step
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eberton Schattentotem|r
    >>|cRXP_WARN_Er ist in|r |T132320:0|t[Verstohlenheit]
    .turnin 76240 >>Gebt die Quest Schleicht mit der Erdenmutter ab
-- .train 410104 >>|cRXP_WARN_You will train|r |T236289:0|t[Lava Lash] |cRXP_WARN_and|r |T132147:0|t[Dual Wield] |cRXP_WARN_upon turnin|r
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Wasserschild - 20 (Das Brachland)
#title Wasserschild
#next Großer Geisterwolf - 25 (Steinkrallengebirge)


step
    +|cRXP_WARN_Ihr MÜSST mindestens Stufe 20 sein, um zu erwerben|r |T133816:0|t[Handschuhe prägen - Wasserschild] |cRXP_WARN_da es die Mindeststufe zum Trainieren von|r |T135849:0|t[Frostschock]
    >>|cRXP_WARN_Ihr benötigt ein höheres Level, bevor ihr versuchen könnt|r |T133816:0|t[Handschuhe prägen - Wasserschild] zu erwerben
    .train 410097,1
    .xp >20,1
step
    .zone Orgrimmar >>Reist nach Orgrimmar oder Donnerfels
    .zoneskip Thunder Bluff
    .train 8050,1
    .xp <20,1
step
    .zone Orgrimmar >>Reist nach Orgrimmar oder Donnerfels
    .zoneskip Thunder Bluff
    .train 8056,1
    .xp <20,1
step
    #completewith OrgTrain
    .goto Orgrimmar,40.31,37.01,15,0
    .goto Orgrimmar,38.81,36.37,15 >>Reisen toward |cRXP_FRIENDLY_Kardris|r
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kardris|r
    .train 8050 >> Erlernen |T135813:0|t[Flammenschock]
    .train 8056 >> Erlernen |T135849:0|t[Frostschadenschock]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 8050,1
    .train 8056,1
    .xp <20,1
step
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kardris|r
    .train 8050 >> Erlernen |T135813:0|t[Flammenschock]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    #label OrgTrain
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kardris|r
    .train 8056 >> Erlernen |T135849:0|t[Frostschadenschock]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    #ah
    .goto Orgrimmar,50.67,70.39,0
    .goto Orgrimmar,53.74,64.60,15,0
    .goto Orgrimmar,55.54,64.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Auctioneer Wabang|r
    >>|cRXP_BUY_Kauft einen|r |T134237:0|t[Kolkar Booty Schlüssel] |cRXP_BUY_beim Auktionshaus|r
    >>|cRXP_WARN_Dies wird euch später ein paar Minuten sparen|r
    .collect 5020,1 --Kolkar Booty Key (1)
    .target Auctioneer Wabang
    .zoneskip Orgrimmar,1
    .train 410097,1
    .xp <20,1
step
    #completewith TBTrain
    .goto Thunder Bluff,22.82,21.11,15 >>Reisen toward |cRXP_FRIENDLY_Siln|r
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Siln|r
    .train 8050 >> Erlernen |T135813:0|t[Flammenschock]
    .train 8056 >> Erlernen |T135849:0|t[Frostschadenschock]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 8050,1
    .train 8056,1
    .xp <20,1
step
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Siln|r
    .train 8050 >> Erlernen |T135813:0|t[Flammenschock]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    #label TBTrain
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Siln|r
    .train 8056 >> Erlernen |T135849:0|t[Frostschadenschock]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    #ah
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Auktionator Rikno Noragg|r
    >>|cRXP_BUY_Kauft|r |T134237:0|t[Kolkar Booty Schlüssel] |cRXP_BUY_vom Auktionshaus|r
    >>|cRXP_WARN_Das wird euch später ein paar Minuten ersparen|r
    .collect 5020,1 --Kolkar Booty Key (1)
    .target Auctioneer Stampi
    .zoneskip Thunder Bluff,1
    .train 410097,1
    .xp <20,1
--XX easier to farm it IF the user is not already there to train
step
    #completewith next
    .zone The Barrens >>Reist nach Das Brachland
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
    >>Tötet |cRXP_ENEMY_Kolkar Wranglers|r und |cRXP_ENEMY_Kolkar Stormers|r. Plündert sie für |T134237:0|t[Kolkar Booty Schlüssel]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .train 410097,1
    .xp <20,1
step
    .goto The Barrens,43.02,23.52,-1
--  .goto The Barrens,52.73,41.84,-1
--  .goto The Barrens,44.33,37.66,-1
    >>Öffnet |cRXP_PICK_Kolkars' Booty|r auf dem Boden. Sammelt es für |T135832:0|t|cRXP_LOOT_[Orkansymbol]|r
    .collect 206382,1 --Tempest Icon (1)
    .itemcount 5020,1 --Kolkar Booty Key (1)
    .train 410097,1
    .xp <20,1
step
    .equip 18,206382 >> |cRXP_WARN_Legt an|r |T135832:0|t|cRXP_LOOT_[Orkansymbol]|r
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
    .aura 408828 >>|cRXP_WARN_Tötet Feinde, denen ihr Schaden mit einem Naturschaden-Zauber (|r|T136026:0|t[Erdschock]|cRXP_WARN_), einem Frostschaden-Zauber (|r|T135849:0|t[Frostschock]|cRXP_WARN_), und einem Feuer-Zauber (|r|T135813:0|t[Flammenschock]|cRXP_WARN_) mindestens einmal zugefügt habt. Macht dies 10 Mal, um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Stärkungszauber zu erhalten|r
    >>|cRXP_WARN_HINWEIS: Ihr müsst dies auf Feinde, die Erfahrung geben, anwenden, um Stapel zu erhalten|r
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
    .zone Stonetalon Mountains >> Reist ins Steinkrallengebirge
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
    .aura 408828 >>|cRXP_WARN_Tötet Feinde, denen ihr Schaden mit einem Naturschaden-Zauber (|r|T136026:0|t[Erdschock]|cRXP_WARN_), einem Frostschaden-Zauber (|r|T135849:0|t[Frostschock]|cRXP_WARN_), und einem Feuer-Zauber (|r|T135813:0|t[Flammenschock]|cRXP_WARN_) mindestens einmal zugefügt habt. Macht dies 10 Mal, um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Stärkungszauber zu erhalten|r
    >>|cRXP_WARN_HINWEIS: Ihr müsst dies auf Feinde, die Erfahrung geben, anwenden, um Stapel zu erhalten|r
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
    .cast 402265 >>|cRXP_WARN_Benutzt das|r |T135832:0|t|cRXP_LOOT_[Orkansymbol]|r |cRXP_WARN_um zu erlernen|r |T133816:0|t[Handschuhe prägen - Wasserschild]
    .use 206382
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410097,1
    .xp <20,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Wasserschild - 20 (Silberwald)
#title Wasserschild
#next Großer Geisterwolf - 25 (Steinkrallengebirge)

step
    +|cRXP_WARN_Ihr MÜSST mindestens Level 20 haben, um zu erwerben|r |T133816:0|t[Handschuhe prägen - Wasserschild] |cRXP_WARN_da dies die Levelanforderung für das Training ist|r |T135849:0|t[Frostschock]
    >>|cRXP_WARN_Ihr müsst noch leveln, bevor ihr versucht zu erwerben|r |T133816:0|t[Handschuhe prägen - Wasserschild]
    .train 410097,1
    .xp >20,1
step
    .zone Orgrimmar >>Reist nach Orgrimmar oder Donnerfels
    .zoneskip Thunder Bluff
    .train 8050,1
    .xp <20,1
step
    .zone Orgrimmar >>Reist nach Orgrimmar oder Donnerfels
    .zoneskip Thunder Bluff
    .train 8056,1
    .xp <20,1
step
    #completewith OrgTrain
    .goto Orgrimmar,40.31,37.01,15,0
    .goto Orgrimmar,38.81,36.37,15 >>Reisen toward |cRXP_FRIENDLY_Kardris|r
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kardris|r
    .train 8050 >> Erlernen |T135813:0|t[Flammenschock]
    .train 8056 >> Erlernen |T135849:0|t[Frostschadenschock]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 8050,1
    .train 8056,1
    .xp <20,1
step
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kardris|r
    .train 8050 >> Erlernen |T135813:0|t[Flammenschock]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    #label OrgTrain
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kardris|r
    .train 8056 >> Erlernen |T135849:0|t[Frostschadenschock]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    #completewith TBTrain
    .goto Thunder Bluff,22.82,21.11,15 >>Reisen toward |cRXP_FRIENDLY_Siln|r
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Siln|r
    .train 8050 >> Erlernen |T135813:0|t[Flammenschock]
    .train 8056 >> Erlernen |T135849:0|t[Frostschadenschock]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 8050,1
    .train 8056,1
    .xp <20,1
step
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Siln|r
    .train 8050 >> Erlernen |T135813:0|t[Flammenschock]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    #label TBTrain
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Siln|r
    .train 8056 >> Erlernen |T135849:0|t[Frostschadenschock]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    #completewith Grimson
    #label Grimson1
    .zone Silverpine Forest >>Reist nach Silberwald
    .train 410097,1
    .xp <20,1
step
    #completewith Grimson
    #requires Grimson1
    #label Grimson2
    .goto Silverpine Forest,56.65,45.97,15 >>BETRETET die Tiefenfelsmine
    .train 410097,1
    .xp <20,1
step
    #completewith Grimson
    #requires Grimson2
    .goto Silverpine Forest,57.28,45.42,10,0
    .goto Silverpine Forest,57.66,44.82,10,0
    .goto Silverpine Forest,58.59,44.85,30 >>Reist zu |cRXP_ENEMY_Grimson der Blasse|r
    .train 410097,1
    .xp <20,1
step
    #label Grimson
    .goto Silverpine Forest,58.59,44.85
    >>Tötet |cRXP_ENEMY_Grimson der Blasse|r im Inneren. Plündert |T135832:0|t|cRXP_LOOT_[Orkansymbol]|r von ihm
    .collect 206382,1 --Tempest Icon (1)
    .mob Grimson the Pale
    .train 410097,1
    .xp <20,1
step
    .equip 18,206382 >> |cRXP_WARN_Legt an|r |T135832:0|t|cRXP_LOOT_[Orkansymbol]|r
    .use 206382
    .itemcount 206382,1 --Tempest Icon (1)
    .train 410097,1
    .xp <20,1
step
    #loop
    .goto Silverpine Forest,47.68,86.24,50,0
    .goto Silverpine Forest,45.81,86.37,50,0
    .goto Silverpine Forest,44.26,84.37,50,0
    .aura 408828 >>|cRXP_WARN_Tötet Feinde, denen ihr Schaden mit einem Naturschaden-Zauber (|r|T136026:0|t[Erdschock]|cRXP_WARN_), einem Frostschaden-Zauber (|r|T135849:0|t[Frostschock]|cRXP_WARN_), und einem Feuer-Zauber (|r|T135813:0|t[Flammenschock]|cRXP_WARN_) mindestens einmal zugefügt habt. Macht dies 10 Mal, um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Stärkungszauber zu erhalten|r
    >>|cRXP_WARN_HINWEIS: Ihr müsst dies auf Feinde, die Erfahrung geben, anwenden, um Stapel zu erhalten|r
    .mob Valdred Moray
    .mob Dalin Forgewright
    .mob Haggard Refugee
    .mob Sickly Refugee
    .itemStat 18,QUALITY,2
    .train 410097,1
    .xp <20,1
    .xp >22,1
step
    .cast 402265 >>|cRXP_WARN_Benutzt|r |T135832:0|t|cRXP_LOOT_[Orkansymbol]|r |cRXP_WARN_um zu erlernen|r |T133816:0|t[Handschuhe prägen - Wasserschild]
    .use 206382
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410097,1
    .xp <20,1
step
    #completewith next
    >>|cRXP_WARN_Falls ihr nicht habt|r |T133816:0|t[Handschuhe prägen - Lavaeruption] |cRXP_WARN_ bereits, lohnt es sich, dies jetzt zu machen. Falls ihr nicht wollt, überspringt diesen Schritt|r
    .train 410095,1
    .xp <25,1
step
    #completewith next
    .zone Hillsbrad Foothills >>Reist nach Vorgebirge des Hügellands
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
    >>Tötet |cRXP_ENEMY_Mudsnout Shamans|r. Plündert sie für |T134920:0|t|cRXP_LOOT_[Kajarisches Symbol]|r
    .collect 206387,1 --Kajaric Icon (1)
    .mob Mudsnout Shaman
    .train 410095,1
    .xp <25,1
step
    .equip 18,206387 >> |cRXP_WARN_Anlegt|r |T134920:0|t|cRXP_LOOT_[Kajarisches Symbol]|r
    .use 206387
    .itemcount 206387,1 --Kajaric Icon (1)
    .train 410095,1
    .xp <25,1
step
    #completewith next
    .zone Orgrimmar >> Reist nach Orgrimmar
    .train 410095,1
    .xp <25,1
step
    .goto Orgrimmar,52.77,48.97
    .subzone 2437 >> Betretet den Flammenschlund in der Kluft der Schatten
    .itemStat 18,QUALITY,2
    .train 410095,1
    .xp <25,1
step
    >>|cRXP_WARN_Bleibt an der rechten Seite der Mauer. Nach dem Hinunterklettern der Rampe (gerade nach dem 5. Mob), lauft in den flachen Lava-Pool auf der rechten Seite von Euch|r
    >>|cRXP_WARN_Schaden aus|r |T135805:0|t[Lava] |cRXP_WARN_wird auf 91 verringert, während|r |T134920:0|t|cRXP_LOOT_[Kajarisches Symbol]|r |cRXP_WARN_ausgerüstet ist|r
    .aura 408828 >>Erleidet Schaden von der|cRXP_WARN_ |T135805:0|t[Lava] |cRXP_WARN_Quelle 5-mal|r
    .itemStat 18,QUALITY,2
    .train 410095,1
    .xp <25,1
step
    >>|cRXP_WARN_Bewegt euch aus der|r |T135805:0|t[Lava]
    .cast 402265 >>|cRXP_WARN_Benutzt|r |T134920:0|t|cRXP_LOOT_[Kajarisches Symbol]|r |cRXP_WARN_um zu erlernen|r |T133816:0|t[Handschuhe prägen - Lavaeruption]
    .use 206387
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410095,1
    .xp <25,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Lavaeruption - 25 (Vorgebirge des Hügellands)
#title Lavaeruption
#next Erdschild - 25 (Azeroth)


step
    +|cRXP_WARN_Ihr solltet mindestens Stufe 25 sein, um|r |T133816:0|t[Handschuhe prägen - Lavaeruption] |cRXP_WARN_im Vorgebirge des Hügellands allein zu erwerben|r
    .train 410095,1
    .xp >25,1
step
    #completewith next
    .zone Hillsbrad Foothills >>Reist nach Vorgebirge des Hügellands
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
    >>Tötet |cRXP_ENEMY_Mudsnout Shamans|r. Plündert sie für |T134920:0|t|cRXP_LOOT_[Kajarisches Symbol]|r
    .collect 206387,1 --Kajaric Icon (1)
    .mob Mudsnout Shaman
    .train 410095,1
step
    .equip 18,206387 >> |cRXP_WARN_Anlegt|r |T134920:0|t|cRXP_LOOT_[Kajarisches Symbol]|r
    .use 206387
    .itemcount 206387,1 --Kajaric Icon (1)
    .train 410095,1
step
    #completewith next
    .zone Orgrimmar >> Reist nach Orgrimmar
    .train 410095,1
step
    .goto Orgrimmar,52.77,48.97
    .subzone 2437 >> Betretet den Flammenschlund in der Kluft der Schatten
    .itemStat 18,QUALITY,2
    .train 410095,1
step
    >>|cRXP_WARN_Bleibt an der rechten Seite der Mauer. Nach dem Hinunterklettern der Rampe (gerade nach dem 5. Mob), lauft in den flachen Lava-Pool auf der rechten Seite von Euch|r
    >>|cRXP_WARN_Schaden aus|r |T135805:0|t[Lava] |cRXP_WARN_wird auf 91 verringert, während|r |T134920:0|t|cRXP_LOOT_[Kajarisches Symbol]|r |cRXP_WARN_ausgerüstet ist|r
    .aura 408828 >>Erleidet Schaden von der|cRXP_WARN_ |T135805:0|t[Lava] |cRXP_WARN_Quelle 5-mal|r
    .itemStat 18,QUALITY,2
    .train 410095,1
step
    >>|cRXP_WARN_Bewegt euch aus der|r |T135805:0|t[Lava]
    .cast 402265 >>|cRXP_WARN_Benutzt|r |T134920:0|t|cRXP_LOOT_[Kajarisches Symbol]|r |cRXP_WARN_um zu erlernen|r |T133816:0|t[Handschuhe prägen - Lavaeruption]
    .use 206387
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410095,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Überladung - 3 (Durotar)
#title Überladung
#next Schildmeisterschaft - 6 (Durotar)

    --Rune of Overload
step
    +|cRXP_WARN_Ihr MÜSST mindestens auf Stufe 3 sein, um|r |T133815:0|t[Brustteil prägen - Überladung] |cRXP_WARN_zu erhalten, da dies die Stufenvoraussetzung für das Ausrüsten des|r |T134918:0|t|cRXP_LOOT_[Dyadisches Symbol]|r
    >>|cRXP_WARN_Ihr müsst noch mehr leveln, bevor ihr auch nur versucht, dies zu erhalten|r |T133815:0|t[Brustteil prägen - Überladung]
    .train 410094,1
    .xp >3,1
step
    #completewith IconS
    .zone Durotar >> Reist nach Durotar
    .train 410094,1
    .xp <3,1
step << !Tauren skip
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shikrik|r
    .accept 77587 >>Akzeptiert die Symbole der Macht << Troll Shaman
    .accept 77585 >>Akzeptiert die Symbole der Macht << Orc Shaman
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
    >>Tötet |cRXP_ENEMY_Scorpid Workers|r. Plündert sie für |T134918:0|t|cRXP_LOOT_[Dyadisches Symbol]|r
    .collect 206381,1 --Dyadic Icon (1)
    .mob Scorpid Worker
    .train 410094,1
    .xp <3,1
step
    .equip 18,206381 >> Legt das|cRXP_WARN_ |T134918:0|t|r[Dyadisches Symbol]|cRXP_LOOT_ an|r
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
    .aura 408828 >>Lasst |cRXP_WARN_Skorpid-Arbeiter|cRXP_ENEMY_ auf euch wirken|r |T136016:0|t[Schwaches Gift] |rund erleidet davon 10-mal Schaden, um den|cRXP_WARN_ |T136116:0|t[Inspiriert] |rStärkungszauber|cRXP_WARN_ zu erhalten|r
    .mob Scorpid Worker
    .itemStat 18,QUALITY,2
    .train 410094,1
    .xp <3,1
step
    .cast 402265 >>|cRXP_WARN_Benutzt|r |T134918:0|t|cRXP_LOOT_[Dyadisches Symbol]|r |cRXP_WARN_um zu erlernen|r |T133815:0|t[Brustteil prägen - Überladung]
    .use 206381
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410094,1
    .xp <3,1
step << !Tauren skip
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shikrik|r
    .turnin 77587 >>Gebt die Quest Symbole der Macht ab << Troll Shaman
    .turnin 77585 >>Gebt die Quest Symbole der Macht ab << Orc Shaman
    .target Shikrik
    .xp <3,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Überladung - 3 (Mulgore)
#title Überladung
#next Schildmeisterschaft - 6 (Mulgore)


    --Rune of Overload
step
    +Ihr MÜSST mindestens Stufe 3 sein, um|cRXP_WARN_ |T133815:0|t[Brustteil prägen - Überladung]|r zu erwerben, da dies die Stufenvoraussetzung für das Ausrüsten des|cRXP_WARN_ |T134918:0|t|r[Dyadisches Symbol]|cRXP_LOOT_ ist|r
    >>Ihr müsst noch mehr Stufen gewinnen, bevor ihr auch nur versucht, |T133815:0|t[Brustteil prägen - Überladung]|cRXP_WARN_ zu erwerben|r
    .train 410094,1
    .xp >3,1
step
    #completewith IconS
    .zone Mulgore >> Reist nach Mulgore
    .train 410094,1
    .xp <3,1
step << Tauren skip
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meela|r
    .accept 77652 >>Akzeptiert die Symbole der Macht
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
    >>Tötet |cRXP_ENEMY_Bristleback Shamans|r. Plündert sie für |T134918:0|t[|cRXP_FRIENDLY_Dyadic Symbol|r]
    .collect 206381,1 --Dyadic Icon (1)
    .mob Bristleback Shaman
    .train 410094,1
    .xp <3,1
step
    .equip 18,206381 >> Legt das|cRXP_WARN_ |T134918:0|t|r[Dyadisches Symbol]|cRXP_LOOT_ an|r
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
    .aura 408828 >>Lasst |cRXP_WARN_Borstennacken-Schamanen|cRXP_ENEMY_ auf euch wirken|r |T136048:0|t[Blitzschlag] |rund erleidet davon 10-mal Schaden, um den|cRXP_WARN_ |T136116:0|t[Inspiriert] |rStärkungszauber|cRXP_WARN_ zu erhalten|r
    .mob Bristleback Shaman
    .itemStat 18,QUALITY,2
    .train 410094,1
    .xp <3,1
--XX Loop needs to be added
step
    .cast 402265 >>|cRXP_WARN_Benutzt das|r |T134918:0|t|cRXP_LOOT_[Dyadisches Symbol]|r |cRXP_WARN_um zu erlernen|r |T133815:0|t[Brustteil prägen - Überladung]
    .use 206381
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410094,1
    .xp <3,1
step << Tauren skip
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meela|r
    .turnin 77652 >>Gebt die Quest Symbole der Macht ab
    .target Meela Dawnstrider
    .xp <3,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Schildmeisterschaft - 6 (Durotar)
#title Schildmeisterschaft
#next Geschmolzener Schlag - 10 (Durotar)

step
    +|cRXP_WARN_Ihr solltet mindestens Stufe 6 sein, um|r |T133815:0|t[Brustteil prägen - Schildmeisterschaft]|cRXP_WARN_ in Durotar allein zu erwerben|r
    >>Ihr MÜSST mindestens Stufe 3 sein, da dies die Stufenvoraussetzung für das Ausrüsten des|cRXP_WARN_ |T134918:0|t|r[Galvanisches Symbol]|cRXP_LOOT_ ist|r
    >>Ihr müsst noch mehr Stufen gewinnen, bevor ihr auch nur versucht, |T133815:0|t[Brustteil prägen - Schildmeisterschaft]|cRXP_WARN_ zu erwerben|r
    .train 410098,1
    .xp >3,1
step
    +|cRXP_WARN_Ihr solltet mindestens auf Stufe 6 sein, um|r |T133815:0|t[Brustteil prägen - Schildmeisterschaft] |cRXP_WARN_nur in Durotar zu erhalten|r
    .train 410098,1
    .xp <3,1
    .xp >6,1
step
    #completewith IconS
    .zone Durotar >> Reist nach Durotar
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
    >>Klickt auf das |cRXP_PICK_Galvanisches Symbol|r Totem. Sammelt Beute für die |T134918:0|t|cRXP_LOOT_[Galvanisches Symbol]|r
    >>|cRXP_WARN_Das |cRXP_PICK_Galvanisches Symbol|r hat mindestens 15 Spawnpunkte, mit mindestens 2 aktiv zur gleichen Zeit. Es verschwindet <2 Minuten nach dem Plündern|r
    >>|cRXP_WARN_Es macht einen|r |T136051:0|t[Blitzschlagschild] |cRXP_WARN_Ton alle 5 Minuten, wenn ihr im Umkreis von 1000 Yards seid, und zeigt einen Blitzschlag an seinem Ort, wenn ihr im Umkreis von 300 Yards seid und es anseht|r
    .collect 206386,1 --Galvanic Icon (1)
    .train 410098,1
    .xp <3,1
--XX Need to check for more locations
step
    .equip 18,206386 >> Legt|cRXP_WARN_ |T134918:0|t|r[Galvanisches Symbol]|cRXP_LOOT_ an|r
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
    .aura 408828 >>|cRXP_WARN_Greift Feinde bis zur niedrigen Gesundheit an, wirkt|r |T136048:0|t[Blitzschlag] |cRXP_WARN_auf sie, um sie zu töten. Macht dies 10 Mal, um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Stärkungszauber|r
    >>|cRXP_WARN_HINWEIS: Ihr müsst dies auf Feinde, die Erfahrung geben, anwenden, um Stapel zu erhalten|r
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <3,1
    .xp >11,1
step
    #completewith Barrens
    .zone The Barrens >> Reist nach Das Brachland
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
    .aura 408828 >>|cRXP_WARN_Greift Feinde bis zur niedrigen Gesundheit an, wirkt|r |T136048:0|t[Blitzschlag] |cRXP_WARN_auf sie, um sie zu töten. Macht dies 10 Mal, um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Stärkungszauber|r
    >>|cRXP_WARN_HINWEIS: Ihr müsst dies auf Feinde, die Erfahrung geben, anwenden, um Stapel zu erhalten|r
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
    .aura 408828 >>|cRXP_WARN_Greift Feinde bis zur niedrigen Gesundheit an, wirkt|r |T136048:0|t[Blitzschlag] |cRXP_WARN_auf sie, um sie zu töten. Macht dies 10 Mal, um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Stärkungszauber|r
    >>|cRXP_WARN_HINWEIS: Ihr müsst dies auf Feinde, die Erfahrung geben, anwenden, um Stapel zu erhalten|r
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
    .aura 408828 >>|cRXP_WARN_Greift Feinde bis zur niedrigen Gesundheit an, wirkt|r |T136048:0|t[Blitzschlag] |cRXP_WARN_auf sie, um sie zu töten. Macht dies 10 Mal, um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Stärkungszauber|r
    >>|cRXP_WARN_HINWEIS: Ihr müsst dies auf Feinde, die Erfahrung geben, anwenden, um Stapel zu erhalten|r
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
    .zone Stonetalon Mountains >> Reist ins Steinkrallengebirge
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
    .aura 408828 >>|cRXP_WARN_Greift Feinde bis zur niedrigen Gesundheit an, wirkt|r |T136048:0|t[Blitzschlag] |cRXP_WARN_auf sie, um sie zu töten. Macht dies 10 Mal, um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Stärkungszauber|r
    >>|cRXP_WARN_HINWEIS: Ihr müsst dies auf Feinde, die Erfahrung geben, anwenden, um Stapel zu erhalten|r
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
    .cast 402265 >>|cRXP_WARN_Benutzt die|r |T134918:0|t|cRXP_LOOT_[Galvanisches Symbol]|r |cRXP_WARN_um zu erlernen|r |T133815:0|t[Brustteil prägen - Schildmeisterschaft]
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
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Schildmeisterschaft - 6 (Mulgore)
#title Schildmeisterschaft
#next Geschmolzener Schlag - 8 (Mulgore)


    --Rune of Shield Mastery
 step
    +|cRXP_WARN_Ihr solltet mindestens Level 6 sein, um|r |T133815:0|t[Brustteil prägen - Schildmeisterschaft] |cRXP_WARN_in Mulgore allein zu erwerben|r
    >>|cRXP_WARN_Ihr MÜSST mindestens Stufe 3 sein, da dies die Stufenvoraussetzung zum Ausrüsten von|r |T134918:0|t|cRXP_LOOT_[Galvanisches Symbol]|r
    >>|cRXP_WARN_Ihr müsst noch mehr leveln, bevor ihr versucht|r |T133815:0|t[Brustteil prägen - Schildmeisterschaft] zu erwerben
    .train 410098,1
    .xp >3,1
step
    +|cRXP_WARN_Ihr solltet mindestens Stufe 6 sein, um|r |T133815:0|t[Brustteil prägen - Schildmeisterschaft] |cRXP_WARN_in Mulgore allein zu erwerben|r
    .train 410098,1
    .xp <3,1
    .xp >6,1
step
    #completewith IconS
    .zone Mulgore >> Reist nach Mulgore
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
    >>Klickt |cRXP_PICK_Galvanisches Symbol|r Totem. Plündert |T134918:0|t|cRXP_LOOT_[Galvanisches Symbol]|r als Beute
    >>|cRXP_WARN_Das |cRXP_PICK_Galvanisches Symbol|r hat mindestens 15 Spawnpunkte, mit mindestens 2 aktiv zur gleichen Zeit. Es verschwindet <2 Minuten nach dem Plündern|r
    >>|cRXP_WARN_Es macht einen|r |T136051:0|t[Blitzschlagschild] |cRXP_WARN_Ton alle 5 Minuten, wenn ihr im Umkreis von 1000 Yards seid, und zeigt einen Blitzschlag an seinem Ort, wenn ihr im Umkreis von 300 Yards seid und es anseht|r
    .collect 206386,1 --Galvanic Icon (1)
    .train 410098,1
    .xp <3,1
step
    .equip 18,206386 >> Legt|cRXP_WARN_ |T134918:0|t|r[Galvanisches Symbol]|cRXP_LOOT_ an|r
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
    .aura 408828 >>|cRXP_WARN_Greift Feinde bis zur niedrigen Gesundheit an, wirkt|r |T136048:0|t[Blitzschlag] |cRXP_WARN_auf sie, um sie zu töten. Macht dies 10 Mal, um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Stärkungszauber|r
    >>|cRXP_WARN_HINWEIS: Ihr müsst dies auf Feinde, die Erfahrung geben, anwenden, um Stapel zu erhalten|r
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
    .aura 408828 >>|cRXP_WARN_Greift Feinde bis zur niedrigen Gesundheit an, wirkt|r |T136048:0|t[Blitzschlag] |cRXP_WARN_auf sie, um sie zu töten. Macht dies 10 Mal, um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Stärkungszauber|r
    >>|cRXP_WARN_HINWEIS: Ihr müsst dies auf Feinde, die Erfahrung geben, anwenden, um Stapel zu erhalten|r
    .mob Venture Co. Worker
    .mob Venture Co. Supervisor
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <11,1
    .xp >14,1
step
    #completewith Barrens
    .zone The Barrens >> Reist nach Das Brachland
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
    .aura 408828 >>|cRXP_WARN_Greift Feinde bis zur niedrigen Gesundheit an, wirkt|r |T136048:0|t[Blitzschlag] |cRXP_WARN_auf sie, um sie zu töten. Macht dies 10 Mal, um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Stärkungszauber|r
    >>|cRXP_WARN_HINWEIS: Ihr müsst dies auf Feinde, die Erfahrung geben, anwenden, um Stapel zu erhalten|r
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
    .aura 408828 >>|cRXP_WARN_Greift Feinde bis zur niedrigen Gesundheit an, wirkt|r |T136048:0|t[Blitzschlag] |cRXP_WARN_auf sie, um sie zu töten. Macht dies 10 Mal, um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Stärkungszauber|r
    >>|cRXP_WARN_HINWEIS: Ihr müsst dies auf Feinde, die Erfahrung geben, anwenden, um Stapel zu erhalten|r
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
    .aura 408828 >>|cRXP_WARN_Greift Feinde bis zur niedrigen Gesundheit an, wirkt|r |T136048:0|t[Blitzschlag] |cRXP_WARN_auf sie, um sie zu töten. Macht dies 10 Mal, um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Stärkungszauber|r
    >>|cRXP_WARN_HINWEIS: Ihr müsst dies auf Feinde, die Erfahrung geben, anwenden, um Stapel zu erhalten|r
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
    .zone Stonetalon Mountains >> Reist ins Steinkrallengebirge
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
    .aura 408828 >>|cRXP_WARN_Greift Feinde bis zur niedrigen Gesundheit an, wirkt|r |T136048:0|t[Blitzschlag] |cRXP_WARN_auf sie, um sie zu töten. Macht dies 10 Mal, um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Stärkungszauber|r
    >>|cRXP_WARN_HINWEIS: Ihr müsst dies auf Feinde, die Erfahrung geben, anwenden, um Stapel zu erhalten|r
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
    .cast 402265 >>|cRXP_WARN_Benutzt die|r |T134918:0|t|cRXP_LOOT_[Galvanisches Symbol]|r |cRXP_WARN_um zu erlernen|r |T133815:0|t[Brustteil prägen - Schildmeisterschaft]
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
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Führung der Ahnen - 6 (Durotar)
#title Führung der Ahnen
#next Geschmolzener Schlag - 10 (Durotar)

    --Rune of Ancestral Guidance
step
    +|cRXP_WARN_Ihr solltet mindestens Stufe 6 sein, um|r |T134596:0|t[Hosen prägen - Führung der Ahnen] |cRXP_WARN_in Durotar mit einem anderen Spieler zu erwerben|r
    >>|cRXP_WARN_Ihr MÜSST mindestens Level 3 sein, denn dies ist die Stufenvoraussetzung für die Verwendung von|r |T237571:0|t|cRXP_LOOT_[Echo der Urahnen]|r
    .train 410099,1
    .xp <3,1
step
    +|cRXP_WARN_Ihr solltet mindestens Level 6 sein, um|r |T134596:0|t[Hosen prägen - Führung der Ahnen] |cRXP_WARN_in Durotar mit einem anderen Spieler zu erwerben|r
    .train 410099,1
    .xp <3,1
    .xp >6,1
step
    #completewith next
    #label Durotar1
    .zone Durotar >> Reist nach Durotar
    .train 410099,1
    .xp <3,1
step
    #completewith next
    #requires Durotar1
    .goto Durotar,50.84,79.14,40,0
    .goto Durotar,48.02,79.46,40 >>Reist zu den |cRXP_FRIENDLY_Abenteurerüberresten|r
    .train 410099,1
    .xp <3,1
step
    #label IconS
    .goto Durotar,48.02,79.46
    >>|cRXP_WARN_Tretet einer Gruppe mit einem anderen Schamane, Priester oder Druide über dem |cRXP_FRIENDLY_Abenteurerüberreste|r bei, oder sucht Hilfe von einem Schamane, Priester oder Druide in Kriegsherr Chatfunktionen (Tippt /1 in den Chatfunktionen)|r
    >>|cRXP_WARN_Sprecht mit dem |cRXP_FRIENDLY_Abenteurerüberreste|r auf dem Boden, um das Ritual zu beginnen, ODER klickt den|r |T136223:0|t[Geisterritual] |cRXP_WARN_des anderen Spielers (während ihr in ihrer Gruppe seid)|r
    >>Eine |cRXP_WARN_Abenteurer-Willenskraft|cRXP_FRIENDLY_ wird spawnen und sterben nach Abschluss des Rituals. Plündert es um die|r |T237571:0|t|r[Echo der Urahnen]|cRXP_LOOT_ zu erhalten|r
    .collect 210589,1 --Echo of the Ancestors (1)
    .target Adventurer's Remains
    .target Adventurer's Spirit
    .skipgossip
    .train 410099,1
    .xp <3,1
step
    .cast 402265 >>|cRXP_WARN_Benutzt|r |T237571:0|t|cRXP_LOOT_[Echo der Urahnen]|r |cRXP_WARN_um zu erlernen|r |T134596:0|t[Hosen prägen - Führung der Ahnen]
    .use 210589
    .itemcount 210589,1 --Echo of the Ancestors (1)
    .train 410099,1
    .xp <3,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Führung der Ahnen - 10 (Mulgore)
#title Führung der Ahnen
#next Weg der Erde - 12 (Das Brachland)


    --Rune of Ancestral Guidance

step
    +|cRXP_WARN_Ihr solltet mindestens Stufe 10 sein, um|r |T134596:0|t[Hosen prägen - Führung der Ahnen] |cRXP_WARN_in Mulgore mit einem anderen Spieler zu erwerben|r
    >>|cRXP_WARN_Ihr MÜSST mindestens Stufe 3 sein, da dies die Stufenvoraussetzung zum Benutzen von|r |T237571:0|t|cRXP_LOOT_[Echo der Urahnen]|r
    .train 410099,1
    .xp <3,1
step
    +|cRXP_WARN_Ihr solltet mindestens Level 10 sein, um|r |T134596:0|t[Hosen prägen - Führung der Ahnen] |cRXP_WARN_in Mulgore mit einem anderen Spieler zu erwerben|r
    .train 410099,1
    .xp <3,1
    .xp >10,1
step
    #completewith next
    #label Mulgore1
    .zone Mulgore >> Reist nach Mulgore
    .train 410099,1
    .xp <3,1
step
    #completewith next
    #requires Mulgore1
    #label Cave1
    .goto Mulgore,61.46,47.21,20 >>Betretet Die Mine der Venture Co.
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
    .goto Mulgore,60.05,35.82,20 >>Verlasst die Venture Co. Grube auf der anderen Seite
    .train 410099,1
    .xp <3,1
step
    #completewith next
    #requires Cave2
    .goto Mulgore,60.39,33.54,40 >>Reist zum |cRXP_FRIENDLY_Abenteurerüberreste|r
    .train 410099,1
    .xp <3,1
--XX Might be a faster method via the mountains, but don't want to complicate it
step
    #label IconS
    .goto Mulgore,60.39,33.54
    >>|cRXP_WARN_Tretet einer Gruppe mit einem anderen Schamanen, Priester oder Druiden, der über den |cRXP_FRIENDLY_Abenteurerüberresten|r steht, oder sucht nach Hilfe von einem Schamanen, Priester oder Druiden im Allgemeinen Chatfunktionen (Tippt /1 in den Chatfunktionen)|r
    >>|cRXP_WARN_Sprecht mit den |cRXP_FRIENDLY_Abenteurerüberresten|r auf dem Boden, um das Ritual zu beginnen, oder klickt auf das |T136223:0|t[Geisterritual] |cRXP_WARN_des anderen Spielers (während ihr in ihrer Gruppe seid)|r
    >>|cRXP_WARN_Ein |cRXP_FRIENDLY_Abenteurergeist|r erscheint und stirbt nach dem Abschluss des Rituals. Plündert es für die|r |T237571:0|t|cRXP_LOOT_[Echo der Urahnen]|r
    .collect 210589,1 --Echo of the Ancestors (1)
    .target Adventurer's Remains
    .target Adventurer's Spirit
    .skipgossip
    .train 410099,1
    .xp <3,1
step
    .cast 402265 >>|cRXP_WARN_Benutzt die|r |T237571:0|t|cRXP_LOOT_[Echo der Urahnen]|r |cRXP_WARN_um zu erlernen|r |T134596:0|t[Hosen prägen - Führung der Ahnen]
    .use 210589
    .itemcount 210589,1 --Echo of the Ancestors (1)
    .train 410099,1
    .xp <3,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Weg der Erde - 12 (Das Brachland)
#title Weg der Erde
#next Wasserschild - 20 (Das Brachland)



step
    +Ihr MÜSST mindestens Stufe 12 sein, um zu erwerben |T134596:0|t[Hosen prägen - Weg der Erde] |cRXP_WARN_da es die Stufenvoraussetzung für das Training von|r |T136075:0|t[Reinigen] |cRXP_WARN_ist|r
    >>|cRXP_WARN_Ihr müsst euer Level erhöhen, bevor ihr überhaupt versucht, das zu erwerben|r |T134596:0|t[Hosen prägen - Weg der Erde]
    >>|cRXP_WARN_Alternativ könnt ihr erwerben|r |T134596:0|t[Hosen prägen - Weg der Erde] |cRXP_WARN_in Silberwald ab Stufe 1|r
    .train 410107,1
    .xp >12,1
step
    .zone Orgrimmar >>Reist nach Orgrimmar oder Donnerfels
    .zoneskip Thunder Bluff
    .train 370,1
    .xp <12,1
step
    #completewith next
    .goto Orgrimmar,40.31,37.01,15,0
    .goto Orgrimmar,38.81,36.37,15 >>Reisen toward |cRXP_FRIENDLY_Kardris|r
    .zoneskip Thunder Bluff
    .train 410107,1
    .xp <12,1
step
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kardris|r
    .train 370 >> Erlernen |T136075:0|t[Reinigen]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 410107,1
    .xp <12,1
step
    #completewith next
    .goto Thunder Bluff,22.82,21.11,15 >>Reisen toward |cRXP_FRIENDLY_Siln|r
    .zoneskip Orgrimmar
    .train 410107,1
    .xp <12,1
step
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Siln|r
    .train 370 >> Erlernen |T136075:0|t[Reinigen]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 410107,1
    .xp <12,1
step
    #completewith next
    .zone The Barrens >>Reist nach Das Brachland
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
    >>Wirkt |T136075:0|t[Reinigen] auf das |cRXP_ENEMY_Wüstentrugbild|r um es zu töten. Plündert es für die|T134419:0|t|cRXP_LOOT_[Irdene Rune]|r
    .collect 208758,1 --Earthen Rune (1)
    .unitscan Desert Mirage
    .train 410107,1
    .xp <12,1
--XX Respawns after 85s-170s
step
    .cast 402265 >>|cRXP_WARN_Benutzt die|r |T134419:0|t|cRXP_LOOT_[Irdene Rune]|r |cRXP_WARN_um zu erlernen|r |T134596:0|t[Hosen prägen - Weg der Erde]
    .use 208758
    .itemcount 208758,1 --Earthen Rune (1)
    .train 410107,1
    .xp <12,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Weg der Erde - 14 (Silberwald)
#title Weg der Erde
#next Wasserschild - 20 (Silberwald)

step
    +|cRXP_WARN_Ihr solltet mindestens Stufe 14 sein, um zu erwerben|r |T134596:0|t[Hosen prägen - Weg der Erde] |cRXP_WARN_in Silberwald allein|r
    >>|cRXP_WARN_Ihr müsst mehr leveln, bevor ihr versucht zu erwerben|r |T134596:0|t[Hosen prägen - Weg der Erde]
    .train 410107,1
    .xp >14,1
step
    #completewith next
    .zone Silverpine Forest >>Reist zum Silberwald
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
    >>Tötet |cRXP_ENEMY_Rot Verstecken Mystics|r. Plündert sie für |T136008:0|t|cRXP_LOOT_[Verfalltotem]|r
    .collect 210253,1 --Rot Hide Totem (1)
    .mob Rot Hide Mystic
    .itemcount 208758,<1 --Earthen Rune (1)
    .train 410107,1
step
    #completewith Rune
    .cast 425285 >> |cRXP_WARN_Benutzt die|r |T136008:0|t|cRXP_LOOT_[Verfalltotem]|r |cRXP_WARN_um zu beschwören |cRXP_ENEMY_Verfallen Elementar|r
    .use 210253 --Rot Hide Totem (1)
    .itemcount 210253,1 --Rot Hide Totem (1)
    .train 410107,1
    .xp <14,1
step
    #completewith next
    .cast 425285 >> |cRXP_WARN_Benutzt das|r |T136008:0|t|cRXP_LOOT_[Verfalltotem]|r um das|cRXP_WARN_ |cRXP_ENEMY_Verfallen Elementar|r
    >>|cRXP_WARN_Passt auf, da es wirkt|r |T135848:0|t[Brunnenbehüter Solanian] |cRXP_WARN_(Distanzkampf Sofort: Verursacht etwa 50 Schaden und verwurzelt für 8 Sekunden) und ist Stufe 15|r
    .use 210253 --Rot Hide Totem (1)
    .itemcount 210253,1 --Rot Hide Totem (1)
    .train 410107,1
    .xp >14,1
step
    #label Rune
    >>Tötet die |cRXP_ENEMY_Decayed Elementar|r. Plündert sie für |T134419:0|t|cRXP_LOOT_[Irdene Rune]|r
    .collect 208758,1 --Earthen Rune (1)
    .mob Decayed Elemental
    .train 410107,1
--XX Need to test if it can be summoned anywhere, and how much or how scary it is
step
    .cast 402265 >>|cRXP_WARN_Benutzt die|r |T134419:0|t|cRXP_LOOT_[Irdene Rune]|r |cRXP_WARN_um zu erlernen|r |T134596:0|t[Hosen prägen - Weg der Erde]
    .use 208758
    .itemcount 208758,1 --Earthen Rune (1)
    .train 410107,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Großer Geisterwolf - 25 (Steinkrallengebirge)
#title Großer Geisterwolf
#next Beidhändigkeitsspezialisierung - 25 (Ratschet)


step
    +|cRXP_WARN_Ihr solltet mindestens Stufe 25 sein, um zu erwerben|r |T134596:0|t[Hosen prägen - Großer Geisterwolf] |cRXP_WARN_in Steinkrallengebirge allein|r
    .train 425343,1
    .xp >25,1
step
    #completewith next
    .zone Stonetalon Mountains >>Reist ins Steinkrallengebirge
    .train 425343,1
step
    #loop
    .goto Stonetalon Mountains,28.45,65.00,0
    .goto Stonetalon Mountains,28.45,65.00,50,0
    .goto Stonetalon Mountains,29.08,71.97,50,0
    .goto Stonetalon Mountains,33.43,68.97,50,0
    .goto Stonetalon Mountains,33.49,69.40,50,0
    .goto Stonetalon Mountains,36.85,72.04,50,0
    >>Tötet die |cRXP_ENEMY_Primordial Anomalie|r. Plündert sie für |T134419:0|t|cRXP_LOOT_[Rune des urzeitlichen Zorns]|r
    >>|cRXP_WARN_Stellt sicher, dass ihr seine Formen überprüft (Debuffs). Wenn er in|r |T136074:0|t[Naturgestalt]|cRXP_WARN_ ist, verursacht|r |T135824:0|t[Feuer Schaden]|cRXP_WARN_. Wenn er in|r |T135819:0|t[Feuergestalt]|cRXP_WARN_ ist, verursacht|r |T135865:0|t[Frostschaden Schaden]|cRXP_WARN_. Wenn er in|r |T135861:0|t[Wassergestalt]|cRXP_WARN_ ist, verursacht|r |T136085:0|t[Naturschaden Schaden]
    >>|cRXP_WARN_Seid vorsichtig, denn es wirkt |T132939:0|t[Wegschlagen] |cRXP_WARN_(Nahkampf Augenblicklich: wirft das Ziel in die Luft und verursacht 80 Schaden)|r
    >>|cRXP_WARN_It has a 5-8 minute respawn time und drops a random BoE green each time|r
    .collect 210811,1 --Rune of Primordial Fury (1)
    .mob Primordial Anomaly
    .train 425343,1
step
    .cast 402265 >>|cRXP_WARN_Benutzt|r |T134419:0|t|cRXP_LOOT_[Rune des urzeitlichen Zorns]|r |cRXP_WARN_um zu erlernen|r |T134596:0|t[Hosen prägen - Großer Geisterwolf]
    .use 210811
    .itemcount 210811,1 --Rune of Primordial Fury (1)
    .train 425343,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Erdschild - 25 (Azeroth)
#title Erdschild
#next Überladung - 3 (Durotar) << Orc Shaman/Troll Shaman
#next Überladung - 3 (Mulgore) << Tauren Shaman


step
    +|cRXP_WARN_Ihr MÜSST mindestens Stufe 25 sein, um zu erwerben|r |T134596:0|t[Hosen prägen - Erdschild] |cRXP_WARN_da es die Stufenvoraussetzung ist für das Betreten von Die Tiefschwarze Grotte|r
    .train 410101,1
    .xp >25,1
step
    .zone Orgrimmar >>Reist nach Orgrimmar oder Donnerfels
    .zoneskip Thunder Bluff
    .train 410101,1
    .xp <25,1
step
    .goto Orgrimmar,50.67,70.39,0
    .goto Orgrimmar,53.74,64.60,15,0
    .goto Orgrimmar,55.54,64.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Auctioneer Wabang|r
    >>|cRXP_BUY_Kauft ein|r |T134797:0|t[Elixier der Wasseratmung] |cRXP_BUY_und|r |T134717:0|t[Elixier der Weisheit] |cRXP_BUY_beim Auktionshaus|r
    >>|cRXP_WARN_Kauft alternativ die Materialien, um sie selbst herzustellen: 2|r |T132799:0|t[Schwarzmaulöl] |cRXP_WARN_(oder 4|r |T134302:0|t[Ölig Blackmouth] |cRXP_WARN_, um das Öl herzustellen), 1|r |T134191:0|t[Stranglekelp]|cRXP_WARN_, 1|r |T133436:0|t[Mageroyal]|cRXP_WARN_ und 2|r |T134412:0|t[Wilddornrose]
    >>|cRXP_WARN_Ihr braucht dies für eine spätere Quest. Benutzt sie NICHT vorher.|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Auctioneer Wabang|r
    >>|cRXP_BUY_Kauft ein|r |T134797:0|t[Elixier der Wasseratmung] |cRXP_BUY_und|r |T134717:0|t[Elixier der Weisheit] |cRXP_BUY_beim Auktionshaus|r
    >>|cRXP_WARN_Ihr braucht dies später für eine Quest. Benutzt sie davor NICHT|r
    .collect 5996,1 --Elixir of Water Breathing (1)
    .collect 3383,1 --Elixir of Wisdom (1)
    .target Auctioneer Wabang
    .zoneskip Orgrimmar,1
    .train 410101,1
    .xp <25,1
step
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Auktionator Rikno Noragg|r
    >>|cRXP_BUY_Kauft ein|r |T134797:0|t[Elixier der Wasseratmung] |cRXP_BUY_und|r |T134717:0|t[Elixier der Weisheit] |cRXP_BUY_beim Auktionshaus|r
    >>|cRXP_WARN_Alternativ kauft die Materialien, um diese selbst herzustellen: 2|r |T132799:0|t[Schwarzmaulöl] |cRXP_WARN_(oder 4|r |T134302:0|t[Ölig Blackmouth] |cRXP_WARN_um das Öl herzustellen), 1|r |T134191:0|t[Stranglekelp]|cRXP_WARN_, 1|r |T133436:0|t[Mageroyal]|cRXP_WARN_, und 2|r |T134412:0|t[Wilddornrose]
    >>|cRXP_WARN_Ihr braucht dies später für eine Quest. Benutzt sie davor NICHT|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Auktionator Rikno Noragg|r
    >>|cRXP_BUY_Kauft ein|r |T134797:0|t[Elixier der Wasseratmung] |cRXP_BUY_und|r |T134717:0|t[Elixier der Weisheit] |cRXP_BUY_beim Auktionshaus|r
    >>|cRXP_WARN_Ihr braucht dies später für eine Quest. Benutzt sie davor NICHT|r
    .collect 5996,1 --Elixir of Water Breathing (1)
    .collect 3383,1 --Elixir of Wisdom (1)
    .target Auctioneer Stampi
    .zoneskip Thunder Bluff,1
    .train 410101,1
    .xp <25,1
step
    #completewith next
    .zone Ashenvale >> Reist nach Eschental
    .train 410101,1
    .xp <25,1
step
    #completewith next
    .goto Kalimdor,44.36,34.86
    >>|cRXP_WARN_Tretet einer neuen (0/7) Raid-Gruppe (10-Mann) für Die Tiefschwarze Grotte bei, oder erstellt sie|r
    .subzone 2797,2 >> Macht euren Weg zur Tiefschwarzen Grotte. Betretet sie
    .train 410101,1
    .xp <25,1
step
    >>Tötet |cRXP_ENEMY_Baron Aquanis|r in Die Tiefschwarze Grotte. Plündert ihn für das |T136222:0|t|cRXP_LOOT_[Strange Wasserkugel]|r
    .collect 211454,1 --Strange Water Globe (SoD) (1)
    .mob Baron Aquanis
    .train 410101,1
    .xp <25,1
step
    >>Benutzt das |T136222:0|t|cRXP_LOOT_[Strange Wasserkugel]|r um die Quest zu starten
    .accept 78920 >>Akzeptiert die Quest Baron Aquanis
    .use 211454
    .itemcount 211454,1 --Strange Water Globe (SoD) (1)
    .train 410101,1
    .xp <25,1
step
    #completewith Baron
    >>|cRXP_WARN_Beendet den Raid wenn ihr wollt, dann verlasst Die Tiefschwarze Grotte|r
    .zone Ashenvale >> Reist nach Eschental
    .zoneskip 221,1
    .train 410101,1
    .xp <25,1
step
    #completewith next
    .zone Ashenvale >> Reist nach Eschental
    .train 410101,1
    .xp <25,1
step
    #label Baron
    .goto Ashenvale,11.56,34.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 78920 >>Gebt die Quest Baron Aquanis ab
    .accept 78506 >>Akzeptiert die Quest Elementare Not
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
    >>Tötet |cRXP_ENEMY_Befouled Wasserelementare|r. Plündert sie für |T132844:0|t|cRXP_LOOT_[Mote of Torrential Wut]|r
    .complete 78506,3 --Mote of Torrential Rage (1)
    .mob Befouled Water Elemental
    .train 410101,1
    .xp <25,1
--XX Needs to be converted to hashtag loop
step
    #completewith next
    .zone Stonetalon Mountains >>Reist ins Steinkrallengebirge
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
    >>Tötet |cRXP_ENEMY_Rogue Flamme Geister|r, |cRXP_ENEMY_Burning Destroyers|r, und |cRXP_ENEMY_Burning Ravagers|r. Plündert sie für |T132839:0|t|cRXP_LOOT_[Mote of Teuflische Wut]|r
    >>|cRXP_ENEMY_Rogue Flamme Geister|r |cRXP_WARN_share spawns with|r |cRXP_ENEMY_Blackened Basilisks|r
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
    >>Tötet |cRXP_ENEMY_Wütende Stein-Geister|r und |cRXP_ENEMY_Wütende Stein-Geister|r. Plündert sie für |T132838:0|t|cRXP_LOOT_[Mote der Seismischen Wut]|r |cRXP_WARN_passt auf gefährliche Feinde in der Gegend auf.|r
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
    >>Tötet |cRXP_ENEMY_Rogue Flamme Geister|r, |cRXP_ENEMY_Burning Destroyers|r, und |cRXP_ENEMY_Burning Ravagers|r. Plündert sie für |T132839:0|t|cRXP_LOOT_[Mote of Teuflische Wut]|r
    >>|cRXP_ENEMY_Rogue Flamme Geister|r |cRXP_WARN_teilen ihre Spawn-Orte mit|r |cRXP_ENEMY_Blackened Basilisks|r
    .complete 78506,2 --Mote of Infernal Rage (1)
    .mob Rogue Flame Spirit
    .mob Burning Destroyer
    .mob Burning Ravager
    .train 410101,1
    .xp <25,1
step
    #completewith next
    .zone Ashenvale >>Reist nach Eschental
    .train 410101,1
    .xp <25,1
step
    .goto Ashenvale,11.56,34.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 78506 >>Gebt die Quest Elementare Not ab
    .accept 78537 >>Akzeptiert die Quest Elixier der Einsicht
    .accept 78537 >>Turnin Elixier der Einsicht
    .accept 78561 >>Akzeptiert die Quest Elixier der Einsicht
    .target Je'neu Sancrea
    .train 410101,1
    .xp <25,1
step
    .goto Ashenvale,11.38,33.08
    >>Benutzt das |T134791:0|t[Elixier der Einsicht] neben dem Freudenfeuer
    >>|cRXP_WARN_Ihr müsst nicht auf das Rollenspiel warten|r
    .complete 78561,1 --Vision Witnessed (1)
    .use 210712
    .train 410101,1
    .xp <25,1
step
    .goto Ashenvale,11.56,34.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 78561 >>Turnin Elixier der Einsicht
    .accept 78575 >>Akzeptiert die Quest Hirzek
    .target Je'neu Sancrea
    .train 410101,1
    .xp <25,1
step
    #completewith next
    .zone The Barrens >>Reist nach Das Brachland
    .train 410101,1
    .xp <25,1
step
    .goto The Barrens,43.18,78.59
    >>Tötet |cRXP_ENEMY_Hirzek|r. Plündert sie für |T135146:0|t|cRXP_LOOT_[Hirzek's Stab]|r
    >>|cRXP_WARN_Seid vorsichtig, da |cRXP_ENEMY_Hirzek|r wirkt|r |T135805:0|t[Blitzschlag] |cRXP_WARN_(Fernkampf-Zauber: Verursacht etwa 110 Naturschaden) und ist eine Elite der Stufe 25. Er ist allein zu bewältigen, aber ihr könntet jemanden bitten, euch zu helfen|r
    >>|cRXP_WARN_Seid vorsichtig, da die |cRXP_ENEMY_Gebundene Elementar|r eine unendliche Leine hat, wenn ihr |cRXP_ENEMY_Hirzek|r tötet und die |cRXP_ENEMY_Gebundene Elementar|r am Leben lasst (sie wird euch folgen, bis sie sich auflöst oder ihr sie tötet)|r
    .complete 78575,1 --Hirzek's Staff (1)
    .complete 78575,2 --Hirzek (1)
    .mob Hirzek
    .mob Bound Elemental
    .train 410101,1
    .xp <25,1
--XX Objective IDs (,1 and ,2) need testing
step
    #completewith next
    .zone Ashenvale >>Reist nach Eschental
    .train 410101,1
    .xp <25,1
step
    .goto Ashenvale,11.56,34.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 78575 >>Gebt die Quest Hirzek ab
    .target Je'neu Sancrea
    .train 410101,1
    .xp <25,1
step
    .cast 402265 >>|cRXP_WARN_Benutzt|r |T134419:0|t|cRXP_LOOT_[Rune des Erdschilds]|r |cRXP_WARN_um zu erlernen|r |T134596:0|t[Hosen prägen - Erdschild]
    .use 210746
    .itemcount 210746,1 --Rune of Earth Shield (1)
    .train 410101,1
    .xp <25,1
    --XX Rune Routing will never be good for this
step << skip
    +Glückwunsch! Ihr have acquired alle |T134419:0|t|cRXP_LOOT_[Runen]|r currently available.
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
#group RestedXP Rune & Books Dungeonführer
#subgroup Gürtel
#name Feuernova - 35 (Azeroth)
#title Feuernova

-- Fire Nova

step
    #completewith next
    .zone Desolace >>Reist nach |cFFfa9602Desolace|r
step
    .goto Desolace,56.6,21.8
    >>Tötet |cRXP_ENEMY_Flameseer Dubelen|r. Plündert sie für |T136008:0|t|cRXP_LOOT_Corrupted Feuertotem|r
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
    >>Klickt auf einen |cRXP_PICK_Blauen Kristall|r zwischen den orangefarbenen Kristallen um |T134088:0|t[Riss of Theradras] zu sammeln
    >>|cRXP_WARN_Seid vorsichtig, da die Feinde in dieser Gegend Elite sind und euch betäuben können.|r |cFFFF0000Ihr werdet wahrscheinlich mehrfach sterben.|r
    .collect 213552,1
step
    .goto 1414,38.45,57.84,25,0
    .goto 1414,38.64,57.69,25,0
    .goto 1414,38.52,57.52,25,0
    .goto 1414,38.43,57.43,25,0
    .goto 1443,29.65,57.19,25,0
    .goto 1443,27.72,57.51
    >>Klickt auf einen |cRXP_PICK_Blauen Kristall|r zwischen den purpurroten Kristallen um |T134088:0|t[Riss of Theradras] zu sammeln
    >>|cRXP_WARN_Seid vorsichtig, da die Feinde in dieser Gegend Eliten sind und euch betäuben können.|r |cFFFF0000Ihr werdet wahrscheinlich mehrmals sterben.|r
    .collect 213553,1
step
    #completewith next
    .zone Orgrimmar >>Reist nach |cFFfa9602Orgrimmar|r
step
    .goto Orgrimmar,38.94,38.39
    .gossip 4047 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zor Einbaum|r und wählt die Dialogoption
    -- .gossipoption --x insert id
    .target Zor Lonetree
step
    #completewith next
    .zone Thunder Bluff >>Reist nach |cFFfa9602Donnerfels|r
step
    .goto Thunder Bluff,78.61,28.55
    .gossip 5769 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Erzdruide Hamuul Runentotem|r und wählt die Dialogoption
    -- .gossipoption --x insert id
    .target Arch Druid Hamuul Runetotem
step
    -- .gossipoption --x insert id
    .goto Thunder Bluff,47.00,49.82
    .gossip 2995 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tal|r und wählt die Dialogoption, um nach Mondlichtung zu fliegen
    .target Tal
step
    #completewith next
    .zone Moonglade >>Reist nach |cFFfa9602Mondlichtung|r
step
    .goto Moonglade,36.178,41.798
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Keeper Remulos|r
    .collect 213558,1
    .target Keeper Remulos
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Gürtel
#name Waffe des Mahlstroms - 40 (Azeroth)
#title Waffe des Mahlstroms

-- Maelstrom Weapon

step
    .train 410100,1
    #completewith next
    .zone The Barrens >>Reist nach |cFFfa9602The Barrens|r
step
    .train 410100,1
    .goto The Barrens,43.46,90.18,0
    .goto The Barrens,43.46,90.18,40,0
    .goto 1414,50.877,70.339
    .subzone 491,2 >> Kral der Klingenhauer betreten
step
    .train 410100,1
    >>Tötet |cRXP_ENEMY_Charlga Klingenflanke|r. Plündert ihn für den |T134944:0|t|cRXP_LOOT_Zerfleddertes Notizbuch|r. Benutzt es um die Quest anzunehmen
    >>|cRXP_WARN_Es wird dringend empfohlen, eine Gruppe von 5 Spielern zu bilden|r
    .collect 212748,1 --Tattered Note (1x)
    .accept 79358 >>Akzeptiert die Quest Zerfleddertes Notizbuch
    .mob Charlga Razorflank
step
    .train 410100,1
    #completewith next
    .zone Thousand Needles >>Reist nach |cFFfa9602Tausend Nadeln|r
step
    .train 410100,1
    .goto Thousand Needles,46.10,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rau Cliffrunner|r
    .turnin 79358 >>Gebt die Quest Zerfleddertes Notizbuch ab
    .accept 79360 >>Akzeptiert die Quest Elementare Hilfe
    .target Rau Cliffrunner
step
    .train 410100,1
    .goto Thousand Needles,46.21,51.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jandia|r
    >>|cRXP_BUY_Kauft einen|r |T132793:0|t[Kristall Vial] |cRXP_BUY_von ihr|r
    .collect 8925,1 --Crystal Vial (1x)
    .target Jandia
step
    .train 410100,1
    #completewith next
    .zone Hillsbrad Foothills >>Reist nach |cFFfa9602Vorgebirge des Hügellands|r
step
    .train 410100,1
    .goto Alterac Mountains,80.499,66.923
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bath'rah der Windbehüter|r
    .turnin 79360 >>Gebt die Quest Elementare Hilfe ab
    .accept 79361 >>Akzeptiert die Quest Die Macht des Windes
    .accept 79362 >>Akzeptiert die Quest Die Macht der Erde
    .accept 79363 >>Akzeptiert die Quest Die Macht des Wassers
    .target Bath'rah the Windwatcher
step
    .train 410100,1
    #completewith next
    .zone Desolace >>Reist nach |cFFfa9602Desolace|r
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
    >>Tötet |cRXP_ENEMY_Whirlwind Elementals|r throughout Desolace. Plündert sie für |T132845:0|t|cRXP_LOOT_Whirling Essenz|r
    .complete 79361,1 -- Power of da Wind
    .mob Whirlwind Ripper
    .mob Whirlwind Stormwalker
    .mob Whirlwind Shredder
step
    .train 410100,1
    #completewith next
    .zone Dustwallow Marsh >>Reist nach |cFFfa9602Düstermarschen|r
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
    >>Tötet |cRXP_ENEMY_Withervine Elementals|r throughout Düstermarschen. Plündert sie für |T132846:0|t|cRXP_LOOT_Rushing Essenz|r
    .complete 79363,1 -- Power of da Water
    .mob Withervine Mire Beast
    .mob Withervine Rager
    .mob Withervine Bark Ripper
    .mob Withervine Creeper
step
    .train 410100,1
    #completewith next
    .zone Badlands >>Reist nach |cFFfa9602Ödland|r
step
    .train 410100,1
    #loop
    .goto Badlands,18.0,42.8,0
    .waypoint Badlands,21.2,45.8,50,0
    .waypoint Badlands,18.0,42.8,50,0
    .waypoint Badlands,13.8,38.6,50,0
    .waypoint Badlands,21.2,45.8,50,0
    .waypoint Badlands,18.0,42.8,50,0
    >>Tötet |cRXP_ENEMY_Lesser Felselementar|r und |cRXP_ENEMY_Rock Elementals|r. Plündert sie für |T132846:0|t|cRXP_LOOT_Rumbling Essences|r
    .complete 79362,1 -- Power of da Earth
    .mob Rock Elemental
    .mob Lesser Rock Elemental
step
    .train 410100,1
    #completewith next
    .zone Hillsbrad Foothills >>Reist nach |cFFfa9602Vorgebirge des Hügellands|r
step
    .train 410100,1
    .goto Alterac Mountains,80.499,66.923
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bath'rah der Windbehüter|r
    .turnin 79361 >>Gebt die Quest Die Macht des Windes ab
    .turnin 79362 >>Gebt die Quest Die Macht der Erde ab
    .turnin 79363 >>Gebt die Quest Die Macht des Wassers ab
    .accept 79364 >>Akzeptiert die Quest Ein einfacher Behälter
    .turnin 79364 >>Gebt die Quest Ein einfacher Behälter ab
    .accept 79365 >>Akzeptiert die Quest Mit Wind unter Euren Schwingen
    .target Bath'rah the Windwatcher
step
    .train 410100,1
    #completewith next
    .zone Thousand Needles >>Reist nach |cFFfa9602Tausend Nadeln|r
step
    .train 410100,1
    .goto Thousand Needles,46.10,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rau Cliffrunner|r
    .turnin 79365 -- With Wind Beneath Your Wings
    .accept 79366 --Calm Before the Storm
    .target Rau Cliffrunner
step
    .train 410100,1
    .gossip 4317 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nyse|r und wählt die 2. Dialogoption
    .target Nyse
step
    .train 410100,1
    >>Tötet die |cRXP_ENEMY_Verheerender Sturmgewitter|r. Plündert ihn für den |cRXP_LOOT_Auge des Sturmgewitters|r
    >>|cRXP_WARN_Falls ihr während dessen sterbt, sprecht mit dem|r |cRXP_FRIENDLY_Willenskraft Geistheiler|r |cRXP_WARN_um euch zu eurem Leichnam zu teleportieren|r
    .collect 212792,1 --Eye of the Tempest (1x)
    .mob Dreath's Head Necromancer
    .mob Skeletal Servant
    .mob Ravaging Tempest
step
    .train 410100,1
    .vehicle >> Benutzt den |cRXP_FRIENDLY_Freiwindposten Flügeldrache|r
    .timer 9,Flug RP
step
    .train 410100,1
    .goto Thousand Needles,46.10,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rau Cliffrunner|r
    .turnin 79366 --Calm Before the Storm
    .accept 79442 --Catching up
    .target Rau Cliffrunner
step
    .train 410100,1
    #completewith next
    .zone Hillsbrad Foothills >>Reist nach |cFFfa9602Vorgebirge des Hügellands|r
step
    .train 410100,1
    .goto Alterac Mountains,80.499,66.923
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bath'rah der Windbehüter|r
    .turnin 79442 --Catching up
    .target Bath'rah the Windwatcher
step
    .train 410100 >>Benutzt den |T134419:0|t[|cRXP_WARN_Rune des Sturms|r] |cRXP_FRIENDLY_um zu erlernen|r |T136032:0|t[Waffe des Mahlstroms]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Gürtel
#name Kraftwoge - 30 (Arathihochland)
#title Kraftwoge

-- Power Surge

step
    .train 416054,1
    #completewith next
    .zone Arathi Highlands >>Reist nach |cFFfa9602Arathihochland|r |cRXP_WARN_Es wird dringend empfohlen, eine Gruppe von mindestens 3 Spielern zu bilden.|r
step
    .train 416054,1
    .goto Arathi Highlands,31.91,41.15,50,0
    .goto Arathi Highlands,35.53,40.93,50,0
    .goto Arathi Highlands,35.51,44.26,50,0
    .goto Arathi Highlands,34.40,44.25,12,0
    .goto Arathi Highlands,31.08,43.68,12,0
    .goto Arathi Highlands,34.40,44.25,12,0
    .goto Arathi Highlands,35.51,44.26
    >>Tötet |cRXP_ENEMY_Boulderfist Ogres|r und |cRXP_ENEMY_Boulderfist Brutes|r. Plündert sie für |T134921:0|t|cRXP_LOOT_[Oger Blitzableiter]|r
    .collect 213426,1 --Ogre Lightning Rod (1x)
    .mob Boulderfist Ogre
    .mob Boulderfist Enforcer
step
    .train 416054,1
    .goto Arathi Highlands,33.45,44.49
    .cast 434350 >>Klickt die |cRXP_PICK_Lockere Erde|r, um die |T134921:0|t|cRXP_LOOT_[Blitzableiter]|r in den Boden einzufügen.
step
    .train 416054,1
    >>Wirke |T136048:0|t[Blitzschlag] 10-mal auf den |cRXP_ENEMY_Blitzableiter|r
    >>Tötet |cRXP_ENEMY_Tamkar|r oder kite him as he spawns. Plündert sie für |T134419:0|t[Rune der Kraft]
    >>|cRXP_WARN_Er wird nach 30 Sek. automatisch sterben, daher könnt ihr ihn umkiten, anstatt ihn zu töten|r
    .collect 213093,1 --Rune of Power (1x)
    .mob Lightning Rod
    .mob Tamkar
step
    .train 416054 >>|cRXP_WARN_Benutzt|r die |T134419:0|t[Rune der Kraft] |cRXP_WARN_um zu erlernen|r |T134337:0|t[Kraftwoge]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Stiefel
#title Täuschtotem
#name Täuschtotem - 27 (Tausend Nadeln)

-- Decoy Totem

step
    .train 425882,1
    .zone Thousand Needles >>Reist nach |cFFfa9602Tausend Nadeln|r
step
    .train 425882,1
    .goto Thousand Needles,46.21,51.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jandia|r
    >>|cRXP_BUY_Kauft einen|r |T132906:0|t[Seidenfaden] |cRXP_BUY_von ihr|r
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
    >>Tötet |cRXP_ENEMY_Cloud Serpents|r. Plündert sie für |cRXP_LOOT_Cloud Serpent Kiefer|r
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
    >>Tötet |cRXP_ENEMY_Screeching Harpies|r. Plündert sie für |cRXP_LOOT_Strong Harpyie Feders|r
    .collect 213701,10 --Strong Harpy Feather (10x)
    .mob Screeching Harpy
    .mob Screeching Roguefeather
    .mob Screeching Windcaller
step
    .train 425882,1
    .use 213709 >>|cRXP_WARN_Benutzt Euren|r |T133723:0|t[Wolkenschlange Kiefer] |cRXP_WARN_um zu erstellen|r |T133291:0|t[Opfergabe für den Windgeist]
    .collect 213737,1 --Offering to the Wind Spirit (1x)
step
    .goto Thousand Needles,31.47,36.71,30 >> Geht zum Düsterwolkengipfel
step
    #completewith next
    .goto Thousand Needles,33.08,35.33,20,0
    .goto Thousand Needles,32.78,32.24,20,0
    .goto Thousand Needles,32.03,31.36,20,0
    .goto Thousand Needles,32.37,28.64,20,0
    .goto Thousand Needles,32.60,27.51,20,0
    .goto Thousand Needles,34.87,31.76,20,0
    .goto Thousand Needles,34.15,35.77,20,0
    .goto Thousand Needles,33.32,36.24,20 >> Reisen up Der Düsterwolkengipfel
step
    .train 425882,1
    .goto Thousand Needles,39.44,41.98
    .aura 435218 >>|cRXP_WARN_Benutzt den|r |T133291:0|t[Opfergabe für den Windgeist] |cRXP_WARN_in der Nähe von|r |cRXP_PICK_Altar of the Windgeist|r
    >>|cRXP_WARN_Der Altar befindet sich hinter der Hütte auf dem östlichsten Gipfel|r
    .use 213737
step
    .goto Thousand Needles,40.43,43.29
    >>Springt hinab, um dem Windgeist Glauben von Euch zu zeigen, um |T134419:0|t|cRXP_FRIENDLY_Rune of Decoys|r zu erhalten
    >>|cRXP_WARN_Sorgt dafür, dass die von Euch|r |T133291:0|t[Opfergabe für den Windgeist] |cRXP_WARN_nicht abläuft. Sie hält 30 Sek.|r
    .collect 213096,1 --Rune of Decoys (1x)
step
    .train 425882 >>|cRXP_WARN_Benutzt die|r |T134419:0|t|cRXP_FRIENDLY_Rune of Decoys|r |cRXP_WARN_um zu lernen|r |T134508:0|t[Täuschtotem]
    .use 213096
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Stiefel
#title Geist des Alphas
#name Geist des Alphas - 27 (Tausend Nadeln)

-- Spirit of the Alpha

step
    .train 410103,1
    .zone Thousand Needles >>Reist nach |cFFfa9602Tausend Nadeln|r
step
    #completewith next
    .train 410103,1
    .goto Thousand Needles,46.17,52.95,20 >>Reist zum Anfang der unteren Brücke, direkt südlich von Freiwindposten
step
    .train 410103,1
    .goto Thousand Needles,46.82,53.52
    >>|cRXP_WARN_Benutzt|r |T136095:0|t[Geisterwolf] |cRXP_WARN_um vorsichtig hinab zum|r |cRXP_PICK_Weathered Cache|r zu springen
    >>Zwickt |cRXP_PICK_Weathered Cache|r um |T136095:0|t|cRXP_FRIENDLY_Echo of the Alpha|r zu plündern
    .collect 206985,1
step
    .train 410103 >>|cRXP_WARN_Benutzt das|r |T136095:0|t|cRXP_FRIENDLY_Echo of the Alpha|r |cRXP_WARN_um zu lernen|r |T408696:0|t[Geist des Alphas]
    .use 206985
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Armschienen
#title Rollender Donner
#name Rollender Donner - 41 (Tanaris)

-- Rolling Thunder
-- PERMOK: Needs better waypoints

step
    #completewith next
    .zone Tanaris >>Lauf nach Tanaris
    .train 432236,1
step
    .train 432236,1
    .goto Tanaris,43.0,41.2
    .aura 446888,1 >>|cRXP_WARN_Klickt auf das|r |cRXP_PICK_Seltsames Totem|r. Dies verwandelt euch in einen Geisterwolf |cRXP_WARN_und erhöht den erlittenen Schaden um 50%|r
step
    .train 432236,1
    >>|cRXP_WARN_Lauft zum anderen Totem, während ihr Mobs ausweicht.|r Sammelt die erscheinende Truhe für |T134419:0|t[|cRXP_FRIENDLY_Rune von Rollender Donner|r]
    *|cRXP_WARN_Ihr erhaltet 50% zusätzlichen Schaden. Seid vorsichtig!|r Ihr könnt auch die Mobs auf dem Weg zum anderen Totem vorher löschen
    .goto Tanaris,45.6,37.8
    .collect 220613,1
step
    .itemcount 220613,1
    .use 220613
    .train 432236 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des rollenden Donners|r] |cRXP_WARN_zum Erlernen|r |T136111:0|t[Rollender Donner]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Armschienen
#title Elektroschock
#name Elektroschock - 44 (Feralas)

-- PERMOK: Needs better waypoints

step
    #completewith ChargedAir
    +|cRXP_WARN_Ihr müsst in einer Gruppe mit einem anderen Spieler sein, der euch helfen kann, um diese Rune zu erhalten|r
step
    #completewith next
    .zone Feralas >>Reist nach Feralas
    .train 432238,1
step
    .train 432238,1
    .goto Feralas,60.0,66.8
    .aura 447259 >>Klickt auf |cRXP_PICK_Aufgeladenes Totem|r, um das |T136075:0|t[Aufgeladene Luft] Buff zu erhalten
step
    #label ChargedAir
    .train 432238,1
    >>Bleibt neben dem Totem und tötet die umliegenden |cRXP_WARN_Gordunni Ogres|cRXP_ENEMY_ mit BLITZSCHADEN (z.B. Blitzschlagschild), bis |rWirbelnder Gewittersturm|cRXP_ENEMY_ erscheint|r
    >>Tötet die |cRXP_ENEMY_Whirling Sturmgewitter|r. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune of Elektroschock|r]
    *|cRXP_WARN_Alle Spieler der Gruppe müssen in Reichweite des Totems bleiben|r
    .goto Feralas,60.0,66.8
    .collect 220614,1
    .mob Whirling Tempest
    .mob Gordunni Warlock
    .mob Gordunni Shaman
    .mob Gordunni Mauler
step
    .itemcount 220614,1
    .use 220614
    .train 432238 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des statischen Schocks|r] |cRXP_WARN_um zu erlernen|r |T237587:0|t[Elektroschock]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Helm
#title Flutwellen
#name Flutwellen - 42 (Feralas)

-- PERMOK: Needs better waypoints

step
    #completewith next
    .zone Feralas >>Reist nach Feralas
    .train 432234,1
step
    .train 432234,1
    >>Klickt |cRXP_PICK_Alte Kiste|r hinter dem Zelt und plündert |T134239:0|t[Alter Schlüssel]
    .goto Feralas,76.6,48.0
    .collect 221497,1
step
    .train 432234,1
    >>Klickt |cRXP_PICK_Alte Truhe|r auf dem Meeresboden und plündert |T134419:0|t[|cRXP_FRIENDLY_Rune der Flutwellen|r]
    *|cRXP_WARN_Passt auf! Dies wird VIER |cRXP_ENEMY_Simmering Elementals|r beschwören (Stufe 42, immun gegen Frostschaden)|r
    .goto Feralas,79.2,49.4
    .collect 220612,1
    .mob Simmering Elemental
step
    .itemcount 220612,1
    .use 220612
    .train 432234 >>|cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Flutwellen|r] |cRXP_WARN_zum Erlernen|r |T237590:0|t[Flutwellen]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Armschienen
#title Flutwellen
#name Flutwellen - 45 (Azeroth)

--x shiek: needs better coordinates
step
    #completewith next
    .zone Tanaris >>Lauf nach Tanaris
    .train 432241,1
step
    #loop
    .goto Tanaris,51.6,44.2,40,0
    .goto Tanaris,51.2,52.0,40,0
    .goto Tanaris,41.0,48.6,40,0
    .goto Tanaris,41.8,44.0,40,0
    >>Tötet |cRXP_ENEMY_Eiterpfotenhyäne|r, |cRXP_ENEMY_Land Rager|r und |cRXP_ENEMY_Glasshide Gazer.|r Plündert sie für die |cRXP_LOOT_|T134327:0|tSmudged Schamane's Notes|r
    .collect 221352,1 --1/1 Smudged Shaman's Notes
    .mob Blisterpaw Hyena
    .mob Land Rager
    .mob Glasshide Gazer
    .train 432241,1
step
    .goto Tanaris,62,64
    >>Klickt auf |cRXP_PICK_|T134327:0|tSmudged Schamane's Notes|r, um die Quest zu starten.
    .accept 82072,1 >>Akzeptiert die Quest Läuternde Erde
    .use 221352
    .train 432241,1
step
    .isOnQuest 82072
    .goto Tanaris,62,64
    .cast 446581 >>Benutzt |T134743:0|t[Murky Erdsapta] neben dem Verderbten Erde Totem.
    .use 221349
    .train 432241,1
step
    .goto Tanaris,62.0,62.6
    >>Tötet |cRXP_ENEMY_Verderbte moderate Erdmanifestation|r danach >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Moderate Manifestation of Erde.|r
    .turnin 82072 >>Gebt die Quest Läuternde Erde ab
    .accept 82075 >>Akzeptiert die Quest Antwort auf den Ruf der Erde
    .mob Corrupt Moderate Manifestation of Earth
    .target Moderate Manifestation of Earth
    .train 432241,1
step
    #completewith next
    .zone Azshara >>Reise nach Azshara
    .train 432241,1
step
    #loop
    .goto Azshara,19.4,64.0,20,0
    .goto Azshara,21.2,60.8,20,0
    .goto Azshara,21.0,60.0,20,0
    >>Tötet |cRXP_ENEMY_Haldarr Satyr|r, |cRXP_ENEMY_Haldarr Trickster|r und |cRXP_ENEMY_Haldarr Felsworn.|r Plündert sie für |cRXP_LOOT_|T134331:0|tWaterlogged Schamane's Notes|r
    .collect 221351,1 --1/1 Waterlogged Shaman's Notes
    .mob Haldarr Satyr
    .mob Haldarr Trickster
    .mob Haldarr Felsworn
    .train 432241,1
step
    .goto Azshara,14,49
    >>Klickt auf |cRXP_PICK_|T134331:0|tWaterlogged Schamane's Notes|r, um die Quest zu starten.
    .accept 82073,1 >>Akzeptiert die Quest Säuberndes Wasser
    .use 221352
    .train 432241,1
step
    .isOnQuest 82073
    .goto Azshara,14,49
    .cast 446581 >>Benutzt |T134743:0|t[Murky Erdsapta] neben dem Verderbten Wasser Totem.
    .use 221348
    .train 432241,1
step
    .goto Azshara,15.0,49.8
    >>Tötet |cRXP_ENEMY_Verderbte moderate Wassermanifestation|r danach >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Moderate Manifestation of Wasser.|r
    .turnin 82073 >>Gebt die Quest Säuberndes Wasser ab
    .accept 82076 >>Akzeptiert die Quest Antwort auf den Ruf des Wassers
    .mob Corrupt Moderate Manifestation of Water
    .target Moderate Manifestation of Water
    .train 432241,1
step
    #completewith next
    .zone The Hinterlands >>Reise in die Hinterlande
    .train 432241,1
step
    #loop
    .goto The Hinterlands,48.8,53.0,40,0
    .goto The Hinterlands,47.6,40.8,40,0
    .goto The Hinterlands,58.2,41.8,40,0
    >>Tötet |cRXP_ENEMY_Green Schlick|r und |cRXP_ENEMY_Jade Schlamm.|r Plündert sie für |cRXP_LOOT_|T134332:0|tTorn Schamane's Notes|r
    .collect 220379,1 --1/1 Torn Shaman's Notes
    .mob Green Sludge
    .mob Jade Ooze
    .train 432241,1
step
    .goto The Hinterlands,51,46
    >>Klickt auf |cRXP_PICK_|T134332:0|tTorn Schamane's Notes|r, um die Quest zu starten.
    .accept 81960,1 >>Akzeptiert die Quest Klären der Luft
    .use 220379
    .train 432241,1
step
    .isOnQuest 82072
    .goto The Hinterlands,51,46
    .cast 446581 >>Benutzt |T134743:0|t[Murky Erdsapta] neben dem Verderbten Lufttotem.
    .use 221349
    .train 432241,1
step
    .goto The Hinterlands,51.2,47.0
    >>Tötet |cRXP_ENEMY_Verderbte moderate Luftmanifestation|r, dann >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tsprecht mit |cRXP_FRIENDLY_Moderate Manifestation of Luft.|r
    .turnin 81960 >>Gebt die Quest Klären der Luft ab
    .accept 81968 >>Akzeptiert die Quest Antwort auf den Ruf der Luft
    .mob Corrupt Moderate Manifestation of Air
    .target Moderate Manifestation of Air
    .train 432241,1
step
    #completewith next
    .zone Searing Gorge >>Reist nach Sengende Schlucht
    .train 432241,1
step
    #loop
    .goto Searing Gorge,52.0,35.4,40,0
    .goto Searing Gorge,42.4,38.6,40,0
    .goto Searing Gorge,32.8,43.0,40,0
    .goto Searing Gorge,28.8,44.4,40,0
    .goto Searing Gorge,30.6,64.6,40,0
    .goto Searing Gorge,31.6,73.8,40,0
    >>Tötet |cRXP_ENEMY_Magma Elementar|r und |cRXP_ENEMY_Inferno Elementar.|r Plündert sie für |cRXP_LOOT_|T134327:0|tCharred Schamane's Notes|r
    .collect 221350,1 --1/1 Charred Shaman's Notes
    .mob Inferno Elemental
    .mob Magma Elemental
    .train 432241,1
step
    .goto Searing Gorge,24,72
    >>Klickt |cRXP_PICK_|T134329:0|tVerkohlte Schamanen-Notizen|r, um die Quest zu starten.
    .accept 82071,1 >>Akzeptiert die Quest Reinigendes Feuer
    .use 221352
    .train 432241,1
step
    .isOnQuest 82072
    .goto Searing Gorge,24,72
    .cast 446581 >>Benutzt |T134743:0|t[Murky Erdsapta] neben dem Verdorbten Feuertotem.
    .use 221349
    .train 432241,1
step
    .goto Searing Gorge,24.0,72.4
    >>Tötet |cRXP_ENEMY_Verderbte moderate Feuermanifestation|r dann >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Moderate Manifestation of Feuer.|r
    .turnin 82071 >>Gebt die Quest Reinigendes Feuer ab
    .accept 82074 >>Akzeptiert die Quest Antwort auf den Ruf des Feuers
    .mob Corrupt Moderate Manifestation of Fire
    .target Moderate Manifestation of Fire
    .train 432241,1
step
    #completewith next
    .zone Feralas >>Reist nach Feralas
    .train 432241,1
step
    #loop
    .goto Feralas,50.2,51.4,20,0
    .goto Feralas,44.8,46.2,20,0
    .goto Feralas,41.0,37.8,20,0
    .goto Feralas,37.4,33.0,20,0
    >>Tötet |cRXP_ENEMY_Sea Sprühen|r und |cRXP_ENEMY_Sea Elementar.|r Plündert sie für |cRXP_LOOT_|T132849:0|tElemental Essenz|r
    .collect 220510,3
    .train 432241,1
step
    .cast 446803 >>Benutzt |T134118:0|t[Bruchstück of Erde]
    .use 221355
    .train 432241,1
step
    .goto Feralas,36.0,32.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Moderate Manifestation of Erde.|r
    .turnin 82075 >> Antwort auf den Ruf der Erde
    .target Moderate Manifestation of Earth
    .train 432241,1
step
    #loop
    .goto Feralas,37.4,33.0,20,0
    .goto Feralas,41.0,37.8,20,0
    .goto Feralas,44.8,46.2,20,0
    .goto Feralas,50.2,51.4,20,0
    >>Tötet |cRXP_ENEMY_Sea Sprühen|r und |cRXP_ENEMY_Sea Elementar.|r Plündert sie für |cRXP_LOOT_|T132849:0|tElemental Essenz|r
    .collect 220510,3
    .train 432241,1
step
    .cast 446802 >>Benutzt |T134130:0|t[Feuerfragment]
    .use 221353
    .train 432241,1
step
    .goto Feralas,36.0,32.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Moderate Manifestation of Erde.|r
    .turnin 82075 >> Antwort auf den Ruf der Erde
    .target Moderate Manifestation of Earth
    .train 432241,1
step
    #loop
    .goto Feralas,50.2,51.4,20,0
    .goto Feralas,44.8,46.2,20,0
    .goto Feralas,41.0,37.8,20,0
    .goto Feralas,37.4,33.0,20,0
    >>Tötet |cRXP_ENEMY_Sea Sprühen|r und |cRXP_ENEMY_Sea Elementar.|r Plündert sie für |cRXP_LOOT_|T132849:0|tElemental Essenz|r
    .collect 220510,3
    .train 432241,1
step
    .cast 445748 >>Benutzt |T134133:0|t[Bruchstück of Luft]
    .use 220375
    .train 432241,1
step
    .goto Feralas,36.0,32.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Moderate Manifestation of Erde.|r
    .turnin 82075 >> Antwortet auf den Ruf der Erde
    .target Moderate Manifestation of Earth
    .train 432241,1
step
    #loop
    .goto Feralas,37.4,33.0,20,0
    .goto Feralas,41.0,37.8,20,0
    .goto Feralas,44.8,46.2,20,0
    .goto Feralas,50.2,51.4,20,0
    >>Tötet |cRXP_ENEMY_Sea Sprühen|r und |cRXP_ENEMY_Sea Elementar.|r Plündert sie für |cRXP_LOOT_|T132849:0|tElemental Essenz|r
    .collect 220510,3
    .train 432241,1
step
    .cast 446804 >>Benutzt |T134089:0|t[Bruchstück of Wasser]
    .use 221354
    .train 432241,1
step
    .goto Feralas,36.0,32.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Moderate Manifestation of Erde.|r
    .turnin 82075 >> Antwort auf den Ruf der Erde
    .target Moderate Manifestation of Earth
    .train 432241,1
step
    >>Tötet |cRXP_ENEMY_Zwielichtdunkelschamane.|r Plündert ihn nach |cRXP_LOOT_|cRXP_FRIENDLY_|T134419:0|tRune of Überladen|r|r
    .collect 220616,1 --1/1 Rune of Overcharged
    .train 432241,1
step
    .train 432241 >> |cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Überladens|r] |cRXP_WARN_um zu trainieren|r |T132213:0|t[Überladen]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Verschleierung
#title Sturm, Erde und Feuer
#name Sturm, Erde, und Feuerschaden - 52 (Teufelswald)

step
    .train 440634,1
    #completewith next
    .zone Felwood >>Lauf zum Teufelswald
step
    .goto Felwood,62.4,9.0
    .train 440634,1
    >>Tötet |cRXP_ENEMY_Deadwood Shamans|r, |cRXP_ENEMY_Deadwood Avengers|r und |cRXP_ENEMY_Deadwood Den Watchers|r. Plündert sie für |T134918:0|t[|cRXP_LOOT_Voltaic Symbol|r]
    .goto Feralas,76.6,48.0
    .collect 225838,1
    .mob Deadwood Shaman
    .mob Deadwood Avenger
    .mob Deadwood Den Watcher
step
    .train 440634,1
    .equip 18,225838 >> |cRXP_WARN_Legt das an|r |T134918:0|t[|cRXP_LOOT_Voltaische Ikone|r]
    .use 225838
step
    .train 440634,1
    .aura 408828 >>|cRXP_WARN_Tötet jetzt 3 Feinde mit einem einzelnen Zauber von|r |T136015:0|t[Kettenblitzschlag]
    >>|cRXP_WARN_Zieht 3 Mobs und senkt ihre Gesundheit auf ungefähr 5% jeweils, dann wirkt|r |T136015:0|t[Kettenblitzschlag]
step
    .itemcount 225838,1
    .use 225838
    .train 440634 >>|cRXP_WARN_Benutzt die|r |T134918:0|t[|cRXP_LOOT_Voltaische Ikone|r] |cRXP_WARN_zum Erlernen von|r |T237588:0|t[Sturm, Erde und Feuer]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Verschleierung
#title Kohärenz
#name Kohärenz - 55 (Brennende Steppe)

step
    .train 416062,1
    #completewith next
    .zone Burning Steppes >>Reise zur Brennenden Steppe
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
    >>Tötet |cRXP_ENEMY_Greater Obsidian Elementals|r. Plündert sie für |cRXP_LOOT_Molten Obsidian Kern|r
    .collect 225676,1
    .mob Greater Obsidian Elemental
step
    .train 416062,1
    .goto Redridge Mountains,44.6,50.0
    >>|cRXP_WARN_Ihr habt jetzt 10 Minuten Zeit, um überall auf der Welt ins Wasser zu springen|r
    >>|cRXP_WARN_Reist nach Rotkammgebirge und springt ins Wasser|r
    >>|cRXP_WARN_Falls euer Ruhestein in der Nähe von Wasser ist, könnt ihr das stattdessen auch tun|r
    >>|cRXP_WARN_Ins Wasser zu springen verwandelt den |cRXP_LOOT_Geschmolzenen Obsidiankern|r in einen|r |T237477:0|t[|cRXP_LOOT_Rußbedeckten Obsidiankern|r]
    .collect 225675,1
step
    .train 416062,1
    .use 225675 >> |cRXP_WARN_Öffnet|r |T237477:0|t[|cRXP_LOOT_Rußbedeckten Obsidiankern|r] |cRXP_WARN_um zu erhalten|r |T134419:0|t[|cRXP_LOOT_Rune der Beherrschung|r]
    .collect 225740,1
step
    .itemcount 225740,1
    .use 225740
    .train 416062 >>|cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_LOOT_Rune der Beherrschung|r] |cRXP_WARN_um zu erlernen|r |T237586:0|t[Kohärenz]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Verschleierung
#title Wildgeist
#name Wildgeist - 60 (Winterquell)

step
    .train 440630,1
    #completewith next
    .zone Winterspring >>Reist nach Winterquell
    >>|cRXP_WARN_Hinweis: Ihr müsst einen Elite auf Stufe 60 töten. Erwägt, einen Freund mitzubringen|r
step
    #completewith next
    .goto Winterspring,67.93,41.44,50 >> BETRETET die Yeti-Höhle
step
    .goto Winterspring,69.87,37.92
    >>|cRXP_WARN_Reist zum hinteren Teil der Yeti-Höhle und sprecht mit dem gefesselten Elementar|r |cRXP_FRIENDLY_Frijidar|r
    >>|cRXP_WARN_Er wird nach wenigen Sek. feindselig|r
    >>Tötet |cRXP_ENEMY_Frijidar|r. Plündert sie für |T134419:0|t[|cRXP_LOOT_Rune of the Gebunden Willenskraft|r]
    .collect 225914,1
    .mob Frijidar
    .skipgossip
step
    .itemcount 225914,1
    .use 225914
    .train 440630 >>|cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_LOOT_Rune des gebundenen Geistes|r] |cRXP_WARN_um zu erlernen|r |T237577:0|t[Wildgeist]
]])
