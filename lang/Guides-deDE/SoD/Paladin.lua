if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Kreuzfahrerstoß - 4 (Wald von Elwynn)
#title Kreuzfahrerstoß
#next Inspirationsvorbild - 6 (Wald von Elwynn)

--VV Not sure if you want to gate CS in Elwynn for humans only/DunM for dwarves only

step
    +|cRXP_WARN_Ihr MÜSST mindestens Stufe 4 sein, um|r |T133816:0|t[Handschuhe prägen - Kreuzfahrerstoß] |cRXP_WARN_zu erwerben, da es die Stufenvoraussetzung für das Training ist|r |T135959:0|t[Richturteil]
    >>|cRXP_WARN_Ihr müsst noch höher leveln, bevor ihr dies erwerben könnt|r |T133816:0|t[Handschuhe prägen - Kreuzfahrerstoß]
    .train 410002,1
    .xp >4,1
step
    #completewith LibramS
    #label Elwynn1
    .zone Elwynn Forest >> Reist in den Wald von Elwynn
    .train 410002,1
    .xp <4,1
step
    #completewith next
    #requires Elwynn1
    .goto Elwynn Forest,48.35,41.97,15,0
    .goto Elwynn Forest,48.87,41.75,12,0
    .goto Elwynn Forest,49.61,41.87,12,0
    .goto Elwynn Forest,50.433,42.124,10 >>Reisen toward |cRXP_FRIENDLY_Brother Sammuel|r inside
    .train 410002,1
    .xp <4,1
step
    .goto Elwynn Forest,50.433,42.124
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bruder Sammuel|r
    .train 20271 >> Erlernt |T135959:0|t[Richturteil]
    .target Brother Sammuel
    .train 410002,1
    .xp <4,1
step
    #label LibramS
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,50,0
    .goto Elwynn Forest,53.89,50.52,50,0
    .goto Elwynn Forest,55.09,49.00,50,0
    .goto Elwynn Forest,55.43,45.87,50,0
    .goto Elwynn Forest,53.86,47.05,50,0
    >>Tötet |cRXP_ENEMY_Rohling der Defias|r. Plündert sie für |T134916:0|t|cRXP_LOOT_[Buchband des Richturteils]|r
    .collect 205420,1 -- Libram of Judgement (1)
    .mob Defias Thug
    .train 410002,1
    .xp <4,1
step
    .equip 18,205420 >> |cRXP_WARN_Legt das|r |T134916:0|t|cRXP_LOOT_[Buchband des Richturteils]|r an
    .use 205420
    .itemcount 205420,1 --Libram of Judgement (1)
--XX  .itemStat 18,QUALITY,<2 would bug it if someone has a Libram in the slot already
    .train 410002,1
    .xp <4,1
step
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,50,0
    .goto Elwynn Forest,53.89,50.52,50,0
    .goto Elwynn Forest,55.09,49.00,50,0
    .goto Elwynn Forest,55.43,45.87,50,0
    .goto Elwynn Forest,53.86,47.05,50,0
    .aura 408828 >>|cRXP_WARN_Wirkt|r |T135959:0|t[Richturteil] |cRXP_WARN_10 mal, um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Stärkungszauber zu erhalten|r
    .itemStat 18,QUALITY,2
    .train 410002,1
    .xp <4,1
step
    .cast 409920 >>|cRXP_WARN_Benutzt das|r |T134916:0|t|cRXP_LOOT_[Buchband des Richturteils]|r |cRXP_WARN_um|r |T133816:0|t[Handschuhe prägen - Kreuzfahrerstoß] zu erlernen
    .use 205420
    .aura -408828
    .train 410002,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Kreuzfahrerstoß - 4 (Dun Morogh)
#title Kreuzfahrerstoß
#next Inspirationsvorbild - 6 (Dun Morogh)

step
    +|cRXP_WARN_Ihr MÜSST mindestens Stufe 4 sein, um dies zu erwerben|r |T133816:0|t[Handschuhe prägen - Kreuzfahrerstoß] |cRXP_WARN_da dies die Stufenvoraussetzung des Trainings ist|r |T135959:0|t[Richturteil]
    >>|cRXP_WARN_Ihr müsst noch mehr aufleveln, bevor ihr überhaupt versucht, zu erwerben|r |T133816:0|t[Handschuhe prägen - Kreuzfahrerstoß]
    .train 410002,1
    .xp >4,1
step
    #completewith LibramS
    #label Dun1
    .zone Dun Morogh >> Reist nach Dun Morogh
    .train 410002,1
    .xp <4,1
step
    #completewith next
    #requires Dun1
    .goto Dun Morogh,28.83,69.07,12,0
    .goto Dun Morogh,28.83,68.70,10,0
    .goto Dun Morogh,28.93,68.35,10,0
    .goto Dun Morogh,28.833,68.332,10 >>Reisen toward |cRXP_FRIENDLY_Bromos Grummner|r inside
    .train 410002,1
    .xp <4,1
step
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bromos Grummner|r
    .train 20271 >> Erlernt |T135959:0|t[Richturteil]
    .target Bromos Grummner
    .train 410002,1
    .xp <4,1
step
    #label LibramS
    #loop
    .goto Dun Morogh,26.59,79.16,50,0
    .goto Dun Morogh,23.39,80.31,50,0
    .goto Dun Morogh,22.60,79.50,50,0
    .goto Dun Morogh,20.74,75.69,50,0
    .goto Dun Morogh,22.60,79.50,50,0
    .goto Dun Morogh,23.39,80.31,50,0
    >>Tötet |cRXP_ENEMY_Trollwelpe der Frostmane|r. Plündert sie für das |T134916:0|t|cRXP_LOOT_[Buchband des Richturteils]|r
    .collect 205420,1 -- Libram of Judgement (1)
    .mob Frostmane Troll Whelp
    .train 410002,1
    .xp <4,1
step
    .equip 18,205420 >> |cRXP_WARN_Legt das|r |T134916:0|t|cRXP_LOOT_[Buchband des Richturteils]|r an
    .use 205420
    .itemcount 205420,1 --Libram of Judgement (1)
    .train 410002,1
    .xp <4,1
step
    #loop
    .goto Dun Morogh,26.59,79.16,50,0
    .goto Dun Morogh,23.39,80.31,50,0
    .goto Dun Morogh,22.60,79.50,50,0
    .goto Dun Morogh,20.74,75.69,50,0
    .goto Dun Morogh,22.60,79.50,50,0
    .goto Dun Morogh,23.39,80.31,50,0
    .aura 408828 >>|cRXP_WARN_Wirkt|r |T135959:0|t[Richturteil] |cRXP_WARN_10 mal, um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Stärkungszauber zu erhalten|r
    .itemStat 18,QUALITY,2
    .train 410002,1
    .xp <4,1
step
    .cast 409920 >>|cRXP_WARN_Benutzt das|r |T134916:0|t|cRXP_LOOT_[Buchband des Richturteils]|r |cRXP_WARN_um|r |T133816:0|t[Handschuhe prägen - Kreuzfahrerstoß] zu erlernen
    .use 205420
    .aura -408828
    .train 410002,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Hand der Abrechnung - 14 (Loch Modan)
#title Hand der Abrechnung
#next Inspirationsvorbild - 6 (Wald von Elwynn)


step
    +|cRXP_WARN_Ihr solltet mindestens Stufe 14 sein, um dies zu erwerben|r |T133816:0|t[Handschuhe prägen - Hand der Abrechnung] |cRXP_WARN_nur in Loch Modan|r
    >>|cRXP_WARN_Ihr MÜSST mindestens Stufe 8 sein, da dies die Stufenvoraussetzung zum Anlegen ist|r |T134916:0|t|cRXP_LOOT_[Gerechtigkeitsbuchband]|r
    >>|cRXP_WARN_Ihr müsst noch höher leveln, bevor ihr dies erwerben könnt|r |T133816:0|t[Handschuhe prägen - Hand der Abrechnung]
    .train 410001,1
    .xp >8,1
step
    +|cRXP_WARN_Ihr solltet mindestens Stufe 14 sein, um|r |T133816:0|t[Handschuhe prägen - Hand der Abrechnung] |cRXP_WARN_allein in Loch Modan zu erwerben|r
    .train 410001,1
    .xp <8,1
    .xp >14,1
step
    #completewith next
    .zone Ironforge >>Lauf nach Ironforge
    .train 410001,1
    .xp <8,1
step
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Brandur Ironhammer|r
    .train 853 >> Erlernen |T135963:0|t[Hammer der Gerechtigkeit]
    .target Brandur Ironhammer
    .train 410001,1
    .xp <8,1
step
    #completewith LibramS
    #label Loch1
    .zone Loch Modan >> Reist nach Loch Modan
    .train 410001,1
    .xp <8,1
step
    #completewith LibramS
    #requires Loch1
    #label Cave1
    .goto Loch Modan,28.75,64.63,40,0
    .goto Loch Modan,35.35,83.51,20,0
    .goto Loch Modan,34.89,84.38,30 >>Reist zur Stonesplinter Cave
    .train 410001,1
    .xp <8,1
step
    #completewith next
    #requires Cave1
    .goto Loch Modan,34.24,85.59,12,0
    .goto Loch Modan,35.90,87.93,12,0
    .goto Loch Modan,37.27,89.56,15,0
    .goto Loch Modan,36.75,91.43,8 >>Reist zum |cRXP_PICK_Versunkener Reliquienschrein|r in der Höhle unter Wasser
    .train 410001,1
    .xp <8,1
step
    #label LibramS
    .goto Westfall,70.96,73.08
    >>|T134916:0|tÖffnet das |cRXP_PICK_Versunkener Reliquienschrein|r unter Wasser. Plündert das |cRXP_LOOT_[Gerechtigkeitsbuchband]|r daraus
    .collect 208851,1 --Libram of Justice (1)
    .train 410001,1
    .xp <8,1
step
    .equip 18,205420 >> |cRXP_WARN_Legt an|r |T134916:0|t|cRXP_LOOT_[Gerechtigkeitsbuchband]|r
    .use 208851
    .itemcount 208851,1 --Libram of Justice (1)
    .train 410001,1
    .xp <8,1
step
    #completewith next
    .aura 408828 >>|cRXP_WARN_Greift Feinde bis zu niedriger Gesundheit an. Wirke|r |T135963:0|t[Hammer der Gerechtigkeit] |cRXP_WARN_auf sie, töte sie 10-mal, während sie betäubt sind, um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Stärkungszauber zu erhalten|r
    >>|cRXP_WARN_HINWEIS: Ihr müsst dies auf Feinde, die Erfahrung geben, anwenden, um Stapel zu erhalten|r
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <11,1
step
    .goto Loch Modan,37.27,89.56,15,0
    .goto Loch Modan,35.90,87.93,15,0
    .goto Loch Modan,34.24,85.59,15,0
    .goto Loch Modan,34.89,84.38,30 >>Verlasst die Höhle
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <8,1
step
    #loop
    .goto Loch Modan,31.93,79.12,40,0
    .goto Loch Modan,31.02,80.64,40,0
    .goto Loch Modan,31.56,76.89,40,0
    .goto Loch Modan,30.90,74.35,40,0
    .goto Loch Modan,29.75,72.57,40,0
    .goto Loch Modan,33.43,70.60,40,0
    .goto Loch Modan,35.36,71.21,40,0
    .goto Loch Modan,32.86,79.70,40,0
    .aura 408828 >>|cRXP_WARN_Greift Feinde bis zu niedriger Gesundheit an. Wirke|r |T135963:0|t[Hammer der Gerechtigkeit] |cRXP_WARN_auf sie, töte sie 10-mal, während sie betäubt sind, um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Stärkungszauber zu erhalten|r
    >>|cRXP_WARN_HINWEIS: Ihr müsst dies auf Feinde, die Erfahrung geben, anwenden, um Stapel zu erhalten|r
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <8,1
    .xp >16,1
step
    #loop
    .goto Loch Modan,35.66,83.64,30,0
    .goto Loch Modan,36.86,84.93,30,0
    .goto Loch Modan,36.50,80.01,30,0
    .goto Loch Modan,33.96,81.82,30,0
    .aura 408828 >>|cRXP_WARN_Greift Feinde bis zu niedriger Gesundheit an. Wirke|r |T135963:0|t[Hammer der Gerechtigkeit] |cRXP_WARN_auf sie, töte sie 10-mal, während sie betäubt sind, um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Stärkungszauber zu erhalten|r
    >>|cRXP_WARN_HINWEIS: Ihr müsst dies auf Feinde, die Erfahrung geben, anwenden, um Stapel zu erhalten|r
    .mob Stonesplinter Skullthumper
    .mob Stonesplinter Seer
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <16,1
    .xp >19,1
step
    #loop
    .goto Loch Modan,69.61,67.92,40,0
    .goto Loch Modan,72.12,68.29,40,0
    .goto Loch Modan,72.59,61.75,40,0
    .goto Loch Modan,70.33,59.84,40,0
    .goto Loch Modan,67.37,59.88,40,0
    .goto Loch Modan,67.77,62.99,40,0
    .goto Loch Modan,70.41,62.93,40,0
    .goto Loch Modan,69.69,65.52,40,0
    .aura 408828 >>|cRXP_WARN_Greift Feinde bis zu niedriger Gesundheit an. Wirke|r |T135963:0|t[Hammer der Gerechtigkeit] |cRXP_WARN_auf sie, töte sie 10-mal, während sie betäubt sind, um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Stärkungszauber zu erhalten|r
    >>|cRXP_WARN_HINWEIS: Ihr müsst dies auf Feinde, die Erfahrung geben, anwenden, um Stapel zu erhalten|r
    .mob Stonesplinter Geomancer
    .mob Stonesplinter Digger
    .mob Berserk Trogg
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <20,1
    .xp >22,1
step
    #completewith next
    .zone Wetlands >> Reist zum Sumpfland
    .itemStat 18,QUALITY,2
    .aura 408828
    .train 410001,1
    .xp <22,1
step
    #loop
    .goto Wetlands,15.96,47.28,50,0
    .goto Wetlands,13.69,41.37,50,0
    .goto Wetlands,13.59,38.04,50,0
    .goto Wetlands,15.30,38.81,50,0
    .goto Wetlands,18.45,39.37,50,0
    .goto Wetlands,19.24,41.29,50,0
    .goto Wetlands,13.69,41.37,50,0
    .aura 408828 >>|cRXP_WARN_Greift Feinde bis zu niedriger Gesundheit an. Wirke|r |T135963:0|t[Hammer der Gerechtigkeit] |cRXP_WARN_auf sie, töte sie 10-mal, während sie betäubt sind, um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Stärkungszauber zu erhalten|r
    >>|cRXP_WARN_HINWEIS: Ihr müsst dies auf Feinde, die Erfahrung geben, anwenden, um Stapel zu erhalten|r
    .mob Young Wetlands Crocolisk
    .mob Fen Dweller
    .mob Bluegill Murloc
    .mob Bluegill Forager
    .mob Bluegill Puddlejumper
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <22,1
step
    .cast 421508 >>|cRXP_WARN_Benutzt das|r |T134916:0|t|cRXP_LOOT_[Gerechtigkeitsbuchband]|r |cRXP_WARN_um zu lernen|r |T133816:0|t[Handschuhe prägen - Hand der Abrechnung]
    .aura -408828
    .use 208851
    .train 410001,1
    .xp <8,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Hand der Abrechnung - 20 (Westfall)
#title Hand der Abrechnung
#next Exorzist - 24 (Dämmerwald)


step
    +|cRXP_WARN_Ihr solltet mindestens Stufe 20 sein, um dies zu erwerben|r |T133816:0|t[Handschuhe prägen - Hand der Abrechnung] |cRXP_WARN_nur in Westfall|r
    >>|cRXP_WARN_Ihr MÜSST mindestens Stufe 8 sein, da dies die Stufenvoraussetzung für das Anlegen des|r |T134916:0|t|cRXP_LOOT_[Gerechtigkeitsbuchband]|r
    >>|cRXP_WARN_Ihr müsst noch mehr aufleveln, bevor ihr überhaupt versucht, zu erwerben|r |T133816:0|t[Handschuhe prägen - Hand der Abrechnung]
    .train 410001,1
    .xp >8,1
step
    +|cRXP_WARN_Ihr solltet mindestens Stufe 20 sein, um|r |T133816:0|t[Handschuhe prägen - Hand der Abrechnung] |cRXP_WARN_allein in Westfall zu erwerben|r
-- >>|cRXP_WARN_It is heavily recommended you get it in Loch Modan instead as it is a LOT easier and can be acquired at a lower level|r
    .train 410001,1
    .xp <8,1
    .xp >20,1
step << skip
    #completewith LibramS
    +Ihr solltet besser |T133816:0|t[Handschuhe prägen - Hand der Abrechnung] |cRXP_WARN_in Loch Modan erlernen, da es viel einfacher ist|r
    .train 410001,1
    .xp <20,1
step
    #completewith next
    .zone Stormwind City >>Lauf nach Sturmwind
    .train 410001,1
    .xp <8,1
step
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Arthur der Treue|r
    .train 853 >> Erlernen |T135963:0|t[Hammer der Gerechtigkeit]
    .target Arthur the Faithful
    .train 410001,1
    .xp <8,1
step
    #completewith next
    .zone Westfall >> Lauf nach Westfall
    .train 410001,1
    .xp <8,1
step
    #label LibramS
    .goto Westfall,69.71,73.41,30,0
    .goto Westfall,70.96,73.08,30,0
    .goto Duskwood,12.17,74.76,30,0
    .goto Westfall,70.96,73.08
    >>Tötet |cRXP_ENEMY_Defias Drones|r. Plündert sie für |T134916:0|t|cRXP_LOOT_[Gerechtigkeitsbuchband]|r
    >>|cRXP_WARN_Passt auf, da die |cRXP_ENEMY_Defias Drones|r zu zweit patrouillieren|r
    >>|cRXP_WARN_Weicht der |cRXP_ENEMY_Malformed Drohne der Defias|r aus, da sie sehr hart zuschlägt|r
    .collect 208851,1 --Libram of Justice (1)
    .mob Defias Drone
    .train 410001,1
    .xp <8,1
--XX Venture Co. Drones drop it too?
step
    .equip 18,205420 >> |cRXP_WARN_Legt das an|r |T134916:0|t|cRXP_LOOT_[Gerechtigkeitsbuchband]|r
    .use 208851
    .itemcount 208851,1 --Libram of Justice (1)
    .train 410001,1
    .xp <8,1
step
    #loop
    .goto Elwynn Forest,24.50,93.99,50,0
    .goto Elwynn Forest,26.07,91.92,50,0
    .goto Elwynn Forest,27.85,88.18,50,0
    .goto Elwynn Forest,27.56,86.21,50,0
    .goto Elwynn Forest,26.43,86.81,50,0
    .goto Elwynn Forest,25.18,89.20,50,0
    .aura 408828 >>|cRXP_WARN_Greift Feinde bis zu niedriger Gesundheit an. Wirke|r |T135963:0|t[Hammer der Gerechtigkeit] |cRXP_WARN_auf sie, töte sie 10-mal, während sie betäubt sind, um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Stärkungszauber zu erhalten|r
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <8,1
    .xp >15,1
step
    #loop
    .goto Westfall,69.71,73.41,40,0
    .goto Westfall,64.54,60.81,40,0
    .goto Westfall,62.62,58.29,40,0
    .goto Westfall,60.87,58.71,40,0
    .goto Westfall,58.71,61.21,40,0
    .goto Westfall,61.43,62.17,40,0
    .aura 408828 >>|cRXP_WARN_Greift Feinde bis auf geringe Lebenspunkte an. Wirkt|r |T135963:0|t[Hammer der Gerechtigkeit] |cRXP_WARN_auf sie, tötet sie dann, während sie betäubt sind, 10 Mal, um zu erlangen|r |T136116:0|t[Inspiriert] |cRXP_WARN_Effekt|r
    .mob Great Goretusk
    .mob Harvest Reaper
    .mob Greater Fleshripper
    .mob Defias Knuckleduster
    .mob Defias Highwayman
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <15,1
    .xp >22,1
step
    .goto Duskwood,15.76,72.72,50,0
    .goto Duskwood,12.65,69.42,50,0
    .goto Duskwood,10.42,66.27,50,0
    .goto Duskwood,10.30,59.05,50,0
    .goto Duskwood,10.75,52.37,50,0
    .goto Duskwood,8.83,45.35,50,0
    .goto Duskwood,8.75,40.20,50,0
    .goto Duskwood,10.99,34.29,50,0
    .goto Duskwood,11.07,29.40,50,0
    .goto Duskwood,14.69,26.22,50,0
    .goto Duskwood,20.93,25.13,50,0
    .goto Duskwood,15.76,72.72,50,0
    .goto Duskwood,14.69,26.22
    .aura 408828 >>|cRXP_WARN_Greift Feinde bis zu niedriger Gesundheit an. Wirke|r |T135963:0|t[Hammer der Gerechtigkeit] |cRXP_WARN_auf sie, töte sie 10-mal, während sie betäubt sind, um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Stärkungszauber zu erhalten|r
    .mob Venom Web Spider
    .mob Pygmy Venom Web Spider
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .mob Green Recluse
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <22,1
step
    .cast 421508 >>|cRXP_WARN_Benutzt|r |T134916:0|t|cRXP_LOOT_[Gerechtigkeitsbuchband]|r |cRXP_WARN_zum Erlernen|r |T133816:0|t[Handschuhe prägen - Hand der Abrechnung]
    .aura -408828
    .use 208851
    .train 410001,1
    .xp <8,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Geheiligter Boden - 4 (Loch Modan)
#title Geheiligter Boden
#next Hand der Abrechnung - 14 (Loch Modan)

step
    +|cRXP_WARN_Ihr MÜSST mindestens Stufe 4 sein, um zu erlernen|r |T133815:0|t[Brustteil prägen - Geheiligter Boden] |cRXP_WARN_da dies die Stufenvoraussetzung des Trainings von|r |T135906:0|t[Segen der Macht]
    >>|cRXP_WARN_Ihr müsst noch aufleveln, bevor ihr versucht zu erlernen|r |T133815:0|t[Brustteil prägen - Geheiligter Boden]
--  >>|cRXP_WARN_It is NOT recommended to use|r |T133815:0|t[Engrave Chest - Hallowed Ground] |cRXP_WARN_over|r |T133815:0|t[Engrave Chest - Divine Storm] |cRXP_WARN_or|r |T133815:0|t[Engrave Chest - Seal of Martyrdom]
    .train 425618,1
    .xp >4,1
step
    #completewith next
    .zone Ironforge >>Lauf nach Ironforge
    .train 425618,1
    .xp <4,1
step
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Brandur Ironhammer|r
    .train 19740 >> Erlernt |T135906:0|t[Segen der Macht]
    .target Brandur Ironhammer
    .train 425618,1
    .xp <4,1
step
    #completewith next
    #label Loch1
    .zone Loch Modan >> Reist nach Loch Modan
    .train 425618,1
    .xp <4,1
step
    #completewith LibramLoot
    #requires Loch1
    #label Inn1
    .goto Loch Modan,35.26,47.76,10 >>Geht ins Thelsamar Gasthaus
    .train 425618,1
    .xp <4,1
step
    #completewith next
    #requires Inn1
    .goto Loch Modan,35.43,48.29,8,0
    .goto Loch Modan,35.12,48.98,8,0
    .goto Loch Modan,35.13,49.34,8,0
    .goto Loch Modan,35.19,49.95,8,0
    .goto Loch Modan,35.52,49.40,8,0
    >>Geht in den östlichsten Raum im Erdgeschoss
    .goto Loch Modan,35.80,49.57,8 >>Reist zum |T134916:0|t|cRXP_LOOT_[Segensbuchband]|r
    .train 425618,1
    .xp <4,1
step
    .goto Loch Modan,35.80,49.57
    >>Plündert |T134916:0|t|cRXP_LOOT_[Segensbuchband]|r auf dem Tisch
    .collect 208849,1 --Libram of Blessings (1)
    .train 425618,1
    .xp <4,1
step
    .equip 18,208849 >> |cRXP_WARN_Legt das an|r |T134916:0|t|cRXP_LOOT_[Segensbuchband]|r
    .use 208849
    .itemcount 208849,1 --Libram of Blessings (1)
    .train 425618,1
    .xp <4,1
step
    .goto Loch Modan,34.90,47.80
    .aura 408828 >>|cRXP_WARN_Wirkt|r |T135906:0|t[Segen der Macht] |cRXP_WARN_oder|r |T135970:0|t[Segen der Weisheit] |cRXP_WARN_auf 5 einzigartige Befreundete Spieler (dich selbst eingeschlossen), um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Stärkungszauber zu erhalten|r
    .itemStat 18,QUALITY,2
    .train 425618,1
    .xp <14,1
--XX Doesn't work on NPCs
step
    .goto Loch Modan,34.90,47.80
    .aura 408828 >>|cRXP_WARN_Wirke|r |T135906:0|t[Segen der Macht] |cRXP_WARN_auf 5 einzigartige befreundete Spieler (dich selbst eingeschlossen), um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Stärkungszauber zu erhalten|r
    .itemStat 18,QUALITY,2
    .train 425618,1
    .xp >14,1
    .xp <4,1
step
    .cast 421508 >>|cRXP_WARN_Benutzt|r |T134916:0|t[Segensbuchband] |cRXP_WARN_um zu erlernen|r |T133815:0|t[Brustteil prägen - Geheiligter Boden]
    .aura -408828
    .use 208849
    .train 425618,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Horn von Lordaeron - 12 (Westfall)
#title Horn von Lordaeron
#next Hand der Abrechnung - 20 (Westfall)


step
    +|cRXP_WARN_Ihr solltet mindestens Stufe 12 sein, um zu erlernen|r |T133815:0|t[Gravieren Truhe - Horn von Lordaeron] |cRXP_WARN_nur in Westfall|r
    >>|cRXP_WARN_Ihr MÜSST mindestens Stufe 4 sein, da dies die Stufenvoraussetzung des Trainings von|r |T135906:0|t[Segen der Macht]
    >>|cRXP_WARN_Ihr müsst noch aufleveln, bevor ihr versucht zu erlernen|r |T133815:0|t[Gravieren Truhe - Horn von Lordaeron]
--  >>|cRXP_WARN_It is NOT recommended to use|r |T133815:0|t[Engrave Chest - Horn of Lordaeron] |cRXP_WARN_over|r |T133815:0|t[Engrave Chest - Divine Storm] |cRXP_WARN_or|r |T133815:0|t[Engrave Chest - Seal of Martyrdom]
    .train 425618,1
    .xp >4,1
step
    +|cRXP_WARN_Ihr solltet mindestens Stufe 12 sein, um zu erlernen|r |T133815:0|t[Gravieren Truhe - Horn von Lordaeron] |cRXP_WARN_nur in Westfall|r
--  >>|cRXP_WARN_It is heavily recommended you get it in Loch Modan instead as it is a LOT easier|r
--  >>|cRXP_WARN_It is NOT recommended to use|r |T133815:0|t[Engrave Chest - Horn of Lordaeron] |cRXP_WARN_over|r |T133815:0|t[Engrave Chest - Divine Storm] |cRXP_WARN_or|r |T133815:0|t[Engrave Chest - Seal of Martyrdom]
    .train 425618,1
    .xp <4,1
    .xp >12,1
step
    #completewith next
    .zone Stormwind City >>Lauf nach Sturmwind
    .train 425618,1
    .xp <4,1
step
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Arthur der Treue|r
    .train 20271 >> Erlernt |T135959:0|t[Richturteil]
    .train 19740 >> Erlernt |T135906:0|t[Segen der Macht]
    .target Arthur the Faithful
    .train 425618,1
    .xp <4,1
step << skip
    #completewith next
    >>|cRXP_WARN_Es wird dringend empfohlen, dass ihr das|r |T134229:0|t[Testament of Horn von Lordaeron] |cRXP_WARN_in Loch Modan stattdessen bekommt, da es viel leichter ist|r
    >>|cRXP_WARN_Es wird NICHT empfohlen, das|r |T134229:0|t[Testament of Horn von Lordaeron] |cRXP_WARN_statt der|r |T236250:0|t[Rune of Göttlicher Sturm] |cRXP_WARN_oder der|r |T133745:0|t[Gegenstände]
    .train 425618,1
    .xp <12,1
step
    #completewith next
    .zone Westfall >>Lauf nach Westfall
    .train 425618,1
    .xp <4,1
step
    #label LibramS
    .goto Westfall,44.45,25.76,0 --Rough Spawnpoint 1 (Jango Outside)
    .goto Westfall,45.35,21.20,0 --Jango Spawnpoint 2 (Jango Inside)
    .goto Westfall,31.82,43.99,0 --Rough Spawnpoint 4 (Quarry Outside)
    .goto Westfall,29.65,46.18,0 --Quarry Spawnpoint 5 (Quarry Inside)
    .goto Westfall,44.45,25.76,40,0 --Rough Spawnpoint 1 (Jango Outside)
    .goto Westfall,44.72,23.57,12,0 --Travel to Jango Spawnpoint 2 (Jango Inside)
    .goto Westfall,45.39,21.67,12,0 --Travel to Jango Spawnpoint 2 (Jango Inside)
    .goto Westfall,44.98,22.33,12,0 --Travel to Jango Spawnpoint 2 (Jango Inside)
    .goto Westfall,45.35,21.20,12,0 --Jango Spawnpoint 2 (Jango Inside)
    .goto Westfall,44.68,19.94,12,0 --Travel to Jango Spawnpoint 3 (Jango Inside)
    .goto Westfall,45.65,18.24,12,0 --Travel to Jango Spawnpoint 3 (Jango Inside)
    .goto Westfall,46.28,18.86,12,0 --Jango Spawnpoint 3 (Jango Inside)
    .goto Westfall,44.45,25.76,40,0 --Rough Spawnpoint 1 (Jango Outside)
    .goto Westfall,31.82,43.99,40,0 --Rough Spawnpoint 4 (Quarry Outside)
    .goto Westfall,30.42,45.81,12,0 --Travel to Quarry Spawnpoint 5 (Quarry Inside)
    .goto Westfall,29.65,46.18,15,0 --Quarry Spawnpoint 5 (Quarry Inside)
--  .goto Westfall,30.54,48.34,15,0 --Travel to Quarry Spawnpoint 6 (Quarry Inside, Unconfirmed)
--  .goto Westfall,30.14,49.51,15,0 --Travel to Quarry Spawnpoint 6 (Quarry Inside, Unconfirmed)
--   .goto Westfall,28.88,48.92,15,0 --Travel to Quarry Spawnpoint 6 (Quarry Inside, Unconfirmed)
    .goto Westfall,29.65,46.18 --Quarry Spawnpoint 5 (Quarry Inside)
    >>|cRXP_WARN_Greift den |cRXP_ENEMY_Unsterblicher Arbeiter|r an. Tötet es mit|r |T135920:0|t[Heilig Schaden] |cRXP_WARN_wie zum Beispiel|r |T135959:0|t[Richturteil] |cRXP_WARN_wenn es umfällt (ihr habt 10 Sek., um es zu tun). Plündert es für das|r |T134916:0|t|cRXP_LOOT_[Segensbuchband]|r
    >>|cRXP_WARN_Der |cRXP_ENEMY_Unsterblicher Arbeiter|r wird als Elite angezeigt, aber hat die Gesundheit und den Schaden eines normalen Mobs|r
    >>|cRXP_WARN_Der |cRXP_ENEMY_Unsterblicher Arbeiter|r teilt sich die Spawnpunkte im gesamten Goldküstensteinbruch und Jangoschacht. Wenn ihr ihn an einem Ort nicht findet, versucht es am anderen|r
    .collect 208849,1 --Libram of Blessings (1)
    .unitscan Undying Laborer
    .train 425618,1
    .xp <4,1
step
    .equip 18,208849 >> |cRXP_WARN_Legt an|r |T134916:0|t|cRXP_LOOT_[Segensbuchband]|r
    .use 208849
    .itemcount 208849,1 --Libram of Blessings (1)
    .train 425618,1
    .xp <4,1
step
    .goto Westfall,56.09,47.67,20,0
    .goto Westfall,56.55,52.64
    .aura 408828 >>|cRXP_WARN_Wirkt|r |T135906:0|t[Segen der Macht] |cRXP_WARN_oder|r |T135970:0|t[Segen der Weisheit] |cRXP_WARN_auf 5 verschiedene befreundete Spieler (einschließlich euch selbst), um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Stärkungszauber|r zu erhalten
    .itemStat 18,QUALITY,2
    .train 425618,1
    .xp <14,1
--XX Doesn't work on NPCs
step
    .goto Westfall,56.09,47.67,20,0
    .goto Westfall,56.55,52.64
    .aura 408828 >>|cRXP_WARN_Wirkt|r |T135906:0|t[Segen der Macht] |cRXP_WARN_auf 5 verschiedene befreundete Spieler (einschließlich euch selbst), um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Stärkungszauber|r zu erhalten
    .itemStat 18,QUALITY,2
    .train 425618,1
    .xp <4,1
    .xp >14,1
step
    .cast 421508 >>|cRXP_WARN_Benutzt das|r |T134916:0|t|cRXP_LOOT_[Segensbuchband]|r |cRXP_WARN_um zu erlernen:|r |T133815:0|t[Gravieren Truhe - Horn von Lordaeron]
    .use 208849
    .aura -408828
    .train 425618,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Aegis - 8 (Wald von Elwynn)
#title Aegis
#next Zurechtweisung - 10 (Sturmwind)

step
    +|cRXP_WARN_Ihr müsst mindestens Stufe 8 sein, um zu erwerben|r |T133815:0|t[Brustteil prägen - Aegis] |cRXP_WARN_da dies die Anforderungsstufe des Trainings ist|r |T135949:0|t[Läutern]
    >>|cRXP_WARN_Ihr müsst noch mehr leveln, bevor ihr versucht, dies zu erwerben|r |T133815:0|t[Brustteil prägen - Aegis]
    .train 425619,1
    .xp >8,1
step
    #completewith next
    .zone Stormwind City >>Lauf nach Sturmwind
    .train 425619,1
    .xp <8,1
step
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Arthur der Treue|r
    .train 1152 >> Erlernt |T135949:0|t[Läutern]
    .target Arthur the Faithful
    .train 425619,1
    .xp <8,1
step
    #completewith next
    #label Elwynn1
    .zone Elwynn Forest >> Reist in den Wald von Elwynn
    .train 425619,1
    .xp <8,1
step
    #completewith next
    #requires Elwynn1
    #label Cave1
    .goto Elwynn Forest,61.59,53.51,15 >>BETRETET die Jaspismine
    .train 425619,1
    .xp <8,1
step
    #label LibramS
    .goto Elwynn Forest,61.46,48.17,8,0
    .goto Elwynn Forest,61.31,48.87,8,0
    .goto Elwynn Forest,60.61,49.94,8,0
    .goto Elwynn Forest,60.73,50.83,8,0
    .goto Elwynn Forest,61.22,51.51,8,0
    .goto Elwynn Forest,61.44,52.64,8,0
    .goto Elwynn Forest,61.97,47.31,12 >> Reist zum |cRXP_FRIENDLY_Verwundeter Abenteurer|r auf dem Boden in der Höhle
    .target Wounded Adventurer
    .train 425619,1
    .xp <8,1
--XX no completewith next so people don't brick it by casting Purify accidentally
step
    #completewith next
    .goto Elwynn Forest,61.97,47.31
    .cast 1152 >>|cRXP_WARN_Wirkt|r |T135949:0|t[Läutern] |cRXP_WARN_auf den|r |cRXP_FRIENDLY_Verwundeten Abenteurer|r
    .target Wounded Adventurer
    .train 425619,1
    .xp <8,1
step
    .goto Elwynn Forest,61.97,47.31
    >>|cRXP_WARN_Sprecht mit dem |cRXP_FRIENDLY_Verwundeten Abenteurer|r nach dem Wirken von|r |T135949:0|t[Läutern] |cRXP_WARN_auf ihn, um die |T134419:0|t[Rune der Aegis] zu erhalten|r
    .collect 205685,1 --Rune of Aegis (1)
    .target Wounded Adventurer
    .skipgossip
    .train 425619,1
    .xp <8,1
--XX gossipoption 109556
step
    .cast 402265 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[Rune der Aegis] |cRXP_WARN_um|r |T133815:0|t[Brustteil prägen - Aegis] zu erlernen
    .use 205685
    .itemcount 205685,1 --Rune of Aegis (1)
    .train 425619,1
    .xp <8,1
--XX cast 425589
--XX Rune acquirable if someone else purifies him for you?
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Aegis - 8 (Dun Morogh)
#title Aegis
#next Zurechtweisung - 10 (Eisenschmiede)

step
    +|cRXP_WARN_Ihr benötigt mindestens Stufe 8, um|r |T133815:0|t[Brustteil prägen - Aegis] |cRXP_WARN_zu erwerben, da dies die Stufenvoraussetzung für das Training von|r |T135949:0|t[Läutern]
    >>Ihr müsst erst weiter aufsteigen, bevor ihr versucht, |T133815:0|t[Brustteil prägen - Aegis] |cRXP_WARN_zu erwerben|r
    .train 425619,1
    .xp >8,1
step
    #completewith next
    .zone Ironforge >>Lauf nach Ironforge
    .train 425619,1
    .xp <8,1
step
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Brandur Ironhammer|r
    .train 1152 >> Erlernt |T135949:0|t[Läutern]
    .target Brandur Ironhammer
    .train 425619,1
    .xp <8,1
step
    #completewith next
    .zone Dun Morogh >> Reist nach Dun Morogh
    .train 425619,1
    .xp <8,1
step
    #label LibramS
    .goto Dun Morogh,25.57,43.37,40 >> Reist zu |cRXP_FRIENDLY_Verwundeter Abenteurer|r auf dem Boden
    .target Wounded Adventurer
    .train 425619,1
    .xp <8,1
step
    #completewith next
    .goto Dun Morogh,25.57,43.37
    .cast 1152 >>|cRXP_WARN_Wirkt|r |T135949:0|t[Läutern] |cRXP_WARN_auf den|r |cRXP_FRIENDLY_Verwundeter Abenteurer|r
    .target Wounded Adventurer
    .train 425619,1
    .xp <8,1
step
    .goto Dun Morogh,25.57,43.37
    >>|cRXP_WARN_Sprecht mit dem |cRXP_FRIENDLY_Verwundeten Abenteurer|r nach dem Wirken von|r |T135949:0|t[Läutern] |cRXP_WARN_auf ihn, um die |T134419:0|t[Rune der Aegis] zu erhalten|r
    .collect 205685,1 --Rune of Aegis (1)
    .target Wounded Adventurer
    .skipgossip
    .train 425619,1
    .xp <8,1
step
    .cast 402265 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[Rune der Aegis] |cRXP_WARN_um|r |T133815:0|t[Brustteil prägen - Aegis] zu erlernen
    .use 208849
    .itemcount 205685,1 --Rune of Aegis (1)
    .train 425619,1
    .xp <8,1
--XX Rune acquirable if someone else purifies him for you?

]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Göttliches Licht - 10 (Sturmwind)
#title Göttliches Licht
#next Horn von Lordaeron - 12 (Westfall)

step
    #completewith LibramS
    +|cRXP_WARN_Ihr solltet mindestens Stufe 10 sein, um|r |T133815:0|t[Gravieren Truhe - Göttliches Licht] |cRXP_WARN_nur in Sturmwind zu erwerben|r
    .train 410015,1
    .xp >10,1
step
    #completewith next
    #label Stormwind1
    .zone Stormwind City >>Lauf nach Sturmwind
    .train 410015,1
step
    #completewith next
    #requires Stormwind1
    #label LibramS
    .goto StormwindClassic,42.77,34.32,10,0
    .goto StormwindClassic,41.37,31.53,10,0
    .goto StormwindClassic,38.10,28.10,12 >>Reist zu |cRXP_FRIENDLY_Bruder Romulus|r in der Kathedrale
    .train 410015,1
step
    .goto StormwindClassic,38.10,28.10
    .gossipoption 109653 >>Sprecht mit |cRXP_FRIENDLY_Bruder Romulus|r
    .target Brother Romulus
    .skipgossip
    .train 410015,1
step
    #completewith next
    .goto StormwindClassic,37.39,29.76,5,0
    .goto StormwindClassic,37.87,29.10,5,0
    .goto StormwindClassic,36.52,32.67,8,0
    .goto StormwindClassic,36.55,33.45,8,0
    .goto StormwindClassic,35.95,34.05,8,0
    .goto StormwindClassic,35.46,33.03,8,0
    .goto StormwindClassic,35.95,31.54,8,0
    .goto StormwindClassic,34.79,29.31,8,0
    .goto StormwindClassic,33.69,29.69,8,0
    .goto StormwindClassic,32.57,27.49,8,0
    .goto StormwindClassic,33.41,25.61,8,0
    >>Geht hinunter in die westliche Seite der Krypta der Kathedrale
    .goto StormwindClassic,32.86,24.77,8 >>Reist zur |cRXP_LOOT_Verkohlte Notiz|r in der Krypta
    .train 410015,1
step
    .goto StormwindClassic,32.86,24.87
    >>Plündert die |cRXP_LOOT_Verkohlte Notiz|r neben den Kerzen
    .collect 205864,1 --Charred Note (1)
    .train 410015,1
step
    #completewith next
    #label Island
    .goto Duskwood,4.33,28.26,50 >>Reist zu |cRXP_FRIENDLY_Ada Gelhardt|r auf der Insel
    .train 410015,1
step
    #completewith next
    .goto Duskwood,4.33,28.26
    .gossipoption 109610 >>Sprecht mit |cRXP_FRIENDLY_Ada Gelhardt|r um einen Kampf zu beginnen
    .target Ada Gelhardt
    .skipgossip 205153,1
    .train 410015,1
--XX 109612 "As one candle is snuffed out, another is lit"
--XX 109611 "I've been sent by brother Romulus. Please, Ada, return with me to the Cathedral of Light"
--XX 109610 "I see. I'm sorry it has come to this, sister. (Fight Ada)"
step
    #requires Island
    .goto Duskwood,4.33,28.26
    >>Besiegt |cRXP_ENEMY_Ada Gelhardt|r
    >>|cRXP_WARN_Denkt daran, den|r |T135924:0|t[Siegel des Kreuzfahrers] |cRXP_WARN_vorzeitig auf sie zu wirken|r
    >>|cRXP_WARN_Passt auf, da sie|r |T136197:0|t[Schattenschock] wirkt |cRXP_WARN_(dies verursacht sofort 45 Schattenmagie-Schaden. Kostet sie 75 Mana. Ihr solltet sie schnell genug töten, damit sie es nur 3 Mal wirkt)|r
    >>|cRXP_WARN_Nach dem Besiegen von |cRXP_ENEMY_Ada Gelhardt|r:|r
    >>Sprecht noch einmal mit Ada Gelhardt|cRXP_FRIENDLY_ um |T134419:0|t[Rune of Göttliches Licht]|r zu erhalten
    .collect 205897,1 --Rune of Divine Light (1)
    .target Ada Gelhardt
    .skipgossip 205153,1
    .train 410015,1
--XX Must have had the Charred Note to unlock the dialogue
step
    #sticky
    .destroy 205864 >> Entfernt den |T134939:0|t[Verkohlte Notiz] aus eurem Beutel, da sie nicht mehr benötigt wird
step
    .train 410015 >>|cRXP_WARN_Benutzt das|r |T134419:0|t[Rune of Göttliches Licht] |cRXP_WARN_um zu erlernen|r |T133815:0|t[Gravieren Truhe - Göttliches Licht]
    .use 205897
    .itemcount 205897,1 --Rune of Divine Light (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Göttlicher Sturm - 25 (Dunkelküste)
#title Göttlicher Sturm
#next Heilige Opferung - 25 (Azeroth)

step
    #completewith LibramS
    +|cRXP_WARN_Ihr solltet mindestens Stufe 25 sein, um|r |T133815:0|t[Brustteil prägen - Göttlicher Sturm] |cRXP_WARN_zu erwerben, UND ihr solltet mindestens 2 weitere Stufe-25-Paladine finden, um dies komfortabel zu bewältigen|r
    .train 410014,1
--  .xp >25,1
step
    #completewith LibramS
    #label DarkshoreT
    .zone Darkshore >> Reist zur Dunkelküste
    .train 410014,1
step
    #completewith next
    #requires DarkshoreT
    .goto Darkshore,56.49,26.44,10 >>Reist zum Turm von Althalaxx
    .train 410014,1
step
    #label LibramS
    .goto Darkshore,56.20,26.46
    >>Öffnet die |cRXP_PICK_Strange Kugel|r auf dem Tisch oben im Der Turm von Althalaxx. Plündert sie für die |cRXP_LOOT_Althalaxx Kugel|r
    >>|cRXP_WARN_Passt auf, die Mobs in diesem Turm sind schwierig (Stufe 28-31)|r
    >>|cRXP_WARN_Passt auf, die |cRXP_ENEMY_Dunkel Strand Voidcallers|r wirkt|r |T136197:0|t[Schattenblitz] |cRXP_WARN_(Distanzkampf Zauber: Verursacht etwa 175 Schattenschaden). Versucht, aus ihrer Sichtlinie zu bleiben, soweit wie möglich|r
    .collect 209836,1,78089,1 --Athalaxx Orb (1)
    .train 410014,1
step
    #completewith Delgren1
    #label AshenvaleT
    .zone Ashenvale >> Reist nach Eschental
    .train 410014,1
step
    #completewith next
    #requires AshenvaleT
    .goto Ashenvale,26.19,38.69,10 >>Reist zu |cRXP_FRIENDLY_Delgren der Läuterer|r
    .train 410014,1
step
    .goto Ashenvale,26.19,38.69
    >>Sprich mit |cRXP_FRIENDLY_Delgren der Läuterer|r
    .turnin 78088 >> Gebt die Quest Ein seltsames Artefakt ab
    .accept 78089 >> Akzeptiert die Quest Rat aus Stormwind
    .target Delgren the Purifier
    .train 410014,1
    .itemcount 209836,1 --Athalaxx Orb (1)
step
    #label Delgren1
    .goto Ashenvale,26.19,38.69
    >>Sprich mit |cRXP_FRIENDLY_Delgren der Läuterer|r
    .accept 78089 >> Akzeptiert die Quest Rat aus Stormwind
    .target Delgren the Purifier
    .train 410014,1
    .isQuestTurnedIn 78088
step
    #completewith Katherine1
    #label StormwindT1
    .zone Stormwind City >> Lauf nach Sturmwind
    .train 410014,1
step
    #completewith next
    #requires StormwindT1
    .goto StormwindClassic,42.77,34.32,10,0
    .goto StormwindClassic,41.37,31.53,10,0
    .goto StormwindClassic,39.19,31.03,10,0
    .goto StormwindClassic,37.23,31.87,12 >>Reist zu |cRXP_FRIENDLY_Katharina die Reine|r in der Kathedrale
    .train 410014,1
step
    #label Katherine1
    .goto StormwindClassic,37.23,31.87
    >>Sprecht mit |cRXP_FRIENDLY_Katharina die Reine|r
    .turnin 78089 >> Gebt die Quest Rat aus Sturmwind ab
    .accept 78090 >> Akzeptiert die Quest Eine zweite Meinung
    .target Katherine the Pure
    .train 410014,1
step
    #completewith next
    .goto StormwindClassic,29.04,74.28,10,0
    .goto StormwindClassic,27.40,76.48,10,0
    .goto StormwindClassic,27.14,77.83,5,0
    .goto StormwindClassic,26.12,77.23,8 >>Reist zu |cRXP_FRIENDLY_Ursula Deline|r ins The Slaughtered Lamb
    .train 410014,1
step
    .goto StormwindClassic,26.12,77.23
    >>Sprecht mit |cRXP_FRIENDLY_Ursula Deline|r
    .turnin 78090 >> Gebt die Quest Eine zweite Meinung ab
    .accept 78091 >> Akzeptiert die Quest Verdient Euch Euer Salz
    .target Ursula Deline
    .train 410014,1
step
    #completewith theairissalt
    .goto StormwindClassic,66.28,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .fly Redridge >> Fliegt ins Rotkammgebirge
    .zoneskip Redridge Mountains
    .target Dungar Longdrink
    .train 410014,1
step
    #loop
    .goto Redridge Mountains,42.26,17.20,0
    .goto Redridge Mountains,35.02,7.66,0
    .goto Redridge Mountains,61.62,43.50,0
    .goto Redridge Mountains,76.15,83.00,0
    .goto Redridge Mountains,76.88,72.15,0
    .goto Redridge Mountains,42.26,17.20,50,0
    .goto Redridge Mountains,35.02,7.66,50,0
    .goto Redridge Mountains,61.62,43.50,50,0
    .goto Redridge Mountains,76.15,83.00,50,0
    .goto Redridge Mountains,76.88,72.15,50,0
    >>|cRXP_WARN_Wenn ihr nicht|r |T134596:0|t[Hosen prägen - Schild des Rächers] |cRXP_WARN_bereits habt, lohnt es sich, das jetzt zu tun. Wenn ihr das nicht tun wollt, überspringt diesen Schritt|r
    >>Tötet |cRXP_ENEMY_Dro'zem der Gotteslästerer|r. Plündert ihn nach der |T134419:0|t[Rune of the Rächer]|r
    >>|cRXP_WARN_Er hat 3 Spawnpunkte außerhalb: Südosten (Renders Tal), Mitte (Lager außerhalb des Turm der Steinwacht), und Norden (Renders Lager). Er spawnt schnell neu, obwohl er ein "Rare" ist|r
    >>|cRXP_WARN_Fragt im Kriegsherr Chatfunktionen, ob jemand ihn gesehen hat, um eure Suchzeit eventuell zu verkürzen (Tippt /1 in den Chatfunktionen)|r
    .collect 211488,1 --Rune of the Avenger (1)
    .unitscan Dro'zem the Blasphemous
    .train 410008,1
step
    .cast 402265 >>|cRXP_WARN_Benutzt das|r |T134419:0|t[Rune of the Rächer] |cRXP_WARN_um zu erlernen|r |T134596:0|t[Hosen prägen - Schild des Rächers]
    .use 211488
    .itemcount 211488,1 --Rune of the Avenger (1)
    .train 410008,1
step
    #label theairissalt
    #loop
    .goto Redridge Mountains,43.59,18.99,30,0
    .goto Redridge Mountains,38.84,14.25,30,0
    .goto Redridge Mountains,35.18,7.91,30,0
    .goto Redridge Mountains,32.58,6.79,15,0
    .goto Redridge Mountains,31.18,6.95,15,0
    .goto Redridge Mountains,30.09,8.63,15,0
    .goto Redridge Mountains,27.10,8.48,15,0
    .goto Redridge Mountains,27.24,11.93,15,0
    .goto Redridge Mountains,25.89,13.45,15,0
    .goto Redridge Mountains,26.30,15.22,15,0
    .goto Redridge Mountains,27.46,15.93,15,0
    .goto Redridge Mountains,31.06,14.99,15,0
    .goto Redridge Mountains,31.29,12.90,15,0
    .goto Redridge Mountains,29.17,11.37,25,0
    >>Tötet |cRXP_ENEMY_Blackrock Summoners|r, |cRXP_ENEMY_Blackrock Champions|r, und |cRXP_ENEMY_Blackrock Fährtenleser|r. Plündert sie für |cRXP_LOOT_Summoner's Salt|r
    >>|cRXP_WARN_|cRXP_LOOT_Summoner's Salt|r wird auf individueller Basis verteilt (jeder Mob hat eine Chance, Salze für jede Person in eurer Gruppe zu droppen), so könnt ihr leicht mit anderen für diese Quest gruppieren|r
    .complete 78091,1 --Summoner's Salt (14)
    .mob Blackrock Summoner
    .mob Blackrock Champion
    .mob Blackrock Tracker
    .train 410014,1
step
    #completewith Ursula1
    #label StormwindT2
    .zone Stormwind City >> Lauf nach Sturmwind
    .train 410014,1
step
    #completewith next
    #requires StormwindT2
    .goto StormwindClassic,29.04,74.28,10,0
    .goto StormwindClassic,27.40,76.48,10,0
    .goto StormwindClassic,27.14,77.83,5,0
    .goto StormwindClassic,26.12,77.23,8 >>Reist zu |cRXP_FRIENDLY_Ursula Deline|r in The Slaughtered Lamb
    .train 410014,1
step
    #label Ursula1
    .goto StormwindClassic,26.12,77.23
    >>Sprecht mit |cRXP_FRIENDLY_Ursula Deline|r
    .turnin 78091 >> Gebt die Quest Verdient Euch Euer Salz ab
    .accept 78092 >> Akzeptiert die Quest Es muss zerstört werden
    .target Ursula Deline
    .train 410014,1
step
    #completewith Motes
    #label AshenvaleT
    .zone Ashenvale >> Reist nach Eschental
    .train 410014,1
step
    #completewith next
    #requires AshenvaleT
    .goto Ashenvale,84.12,72.10,200 >>Reisen toward Dämonensturz
    .train 410014,1
step
    #label Motes
    #loop
    .goto Ashenvale,83.92,71.16,50,0
    .goto Ashenvale,84.65,74.15,50,0
    .goto Ashenvale,84.18,76.79,50,0
    .goto Ashenvale,82.60,79.15,50,0
    .goto Ashenvale,82.74,77.95,15,0
    .goto Ashenvale,82.02,77.93,15,0
    .goto Ashenvale,81.13,78.57,15,0
    .goto Ashenvale,81.17,79.78,15,0
    .goto Ashenvale,78.59,81.31,50,0
    .goto Ashenvale,84.18,76.79,50,0
    .goto Ashenvale,84.78,77.78,50,0
    .goto Ashenvale,87.28,79.21,50,0
    .goto Ashenvale,89.76,76.69,50,0
    .goto Ashenvale,84.18,76.79,50,0
    >>Tötet |cRXP_ENEMY_Searing Infernals|r, |cRXP_ENEMY_Felguards|r, |cRXP_ENEMY_Mannoroc Lashers|r, und |cRXP_ENEMY_Legion Hounds|r. Plündert sie für |cRXP_LOOT_Motes of Mannoroth|r
    >>|cRXP_WARN_|cRXP_LOOT_Motes of Mannoroth|r werden individuell verteilt (jeder Mob hat die Chance, Motes für jede Person in eurer Gruppe fallen zu lassen), daher könnt ihr leicht mit anderen für diese Quest groupen|r
    >>|cRXP_WARN_Passt auf, die |cRXP_ENEMY_Searing Infernals|r haben |T135802:0|t[Feuerbrandaura] |cRXP_WARN_(Passiv Nahkampf Wirkungsbereich: Verursacht 27-28 Feuerschaden alle 3 Sek.), |cRXP_ENEMY_Felguards|r wirken |T132154:0|t[Niederschlagen] |cRXP_WARN_(Nahkampf Sofort: Verursacht etwa 140 Schaden und betäubt für 2 Sek.), und |cRXP_ENEMY_Mannoroc Lashers|r wirken |T135817:0|t[Flammenpeitsche] |cRXP_WARN_(Distanzkampf Sofort: Verursacht etwa 45 Feuerschaden, dann 12-13 Feuerschaden alle 3 Sek. für 21 Sek.) und |T136197:0|t[Schattenblitz] |cRXP_WARN_(Distanzkampf Cast: Verursacht etwa 125 Schattenschaden)|r
    .complete 78092,1 --Mote of Mannoroth (12)
    .mob Searing Infernal
    .mob Felguard
    .mob Mannoroc Lasher
    .mob Legion Hound
    .train 410014,1
step
    >>Klickt |cRXP_PICK_Speer of Mannoroth|r in der Luft, dann klickt |cRXP_PICK_Zerschmetterte Kugel|r auf dem Boden
    .turnin 78092 >> Gebt die Quest Sie muss zerstört werden ab
    .goto Ashenvale,89.48,77.03
    .accept 78093 >> Akzeptiert. Kehrt zu Delgren zurück.
    .goto Ashenvale,89.44,77.01
    .train 410014,1
step
    #completewith next
    .goto Ashenvale,26.19,38.69,10 >>Reist zu |cRXP_FRIENDLY_Delgren der Läuterer|r
    .train 410014,1
step
    .goto Ashenvale,26.19,38.69
    >>Sprich mit |cRXP_FRIENDLY_Delgren der Läuterer|r
    .turnin 78093 >> Gebt die Quest Kehrt zu Delgren zurück ab
    .train 410014 >> Dies lehrt euch |T133815:0|t[Brustteil prägen - Göttlicher Sturm]
    .target Delgren the Purifier
    .train 410014,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Inspirationsvorbild - 6 (Wald von Elwynn)
#title Inspirationsvorbild
#next Aegis - 8 (Wald von Elwynn)

step
    #completewith LibramS
    +|cRXP_WARN_Ihr solltet mindestens Stufe 6 sein, um|r |T134596:0|t[Hosen prägen - Inspirationsvorbild] |cRXP_WARN_im Wald von Elwynn mit einem anderen Spieler zu erlernen|r
    .train 410011,1
    .xp >6,1
step
    #completewith next
    #label Elwynn1
    .zone Elwynn Forest >> Reist in den Wald von Elwynn
    .train 410011,1
step
    #completewith next
    #requires Elwynn1
    .goto Elwynn Forest,52.28,84.56,40 >>Reist zum |cRXP_FRIENDLY_Abenteurerüberreste|r
    .train 410011,1
step
    #label LibramS
    .goto Elwynn Forest,52.28,84.56
    >>|cRXP_WARN_Tretet einer Gruppe mit einem anderen Die Bruderschaft der Defias, Priester oder Druiden bei, der über den |cRXP_FRIENDLY_Adventurer's Remains|r steht, oder bittet einen Die Bruderschaft der Defias, Priester oder Druiden im Kriegsherr Chatfunktionen um Hilfe (Tippt /1 in den Chatfunktionen)|r
    >>|cRXP_WARN_Sprecht mit den |cRXP_FRIENDLY_Abenteurerüberresten|r auf dem Boden, um das Ritual zu beginnen, oder klickt auf das |T136223:0|t[Geisterritual] |cRXP_WARN_des anderen Spielers (während ihr in ihrer Gruppe seid)|r
    >>|cRXP_WARN_Ein |cRXP_FRIENDLY_Adventurer's Willenskraft|r wird erscheinen und sterben, nachdem ihr das Ritual abgeschlossen habt. Plündert es für das|r |T134419:0|t|cRXP_LOOT_[Rune der Inspiration]|r
    .collect 206264,1 --Rune of Inspiration (1)
    .target Adventurer's Remains
    .target Adventurer's Spirit
    .skipgossip
    .train 410011,1
step
    .cast 402265 >>|cRXP_WARN_Benutzt die|r |T134419:0|t|cRXP_LOOT_[Rune der Inspiration]|r |cRXP_WARN_um zu erlernen|r |T134596:0|t[Hosen prägen - Inspirationsvorbild]
    .use 206264
    .itemcount 206264,1 --Rune of Inspiration (1)
    .train 410011,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Inspirationsvorbild - 6 (Dun Morogh)
#title Inspirationsvorbild
#next Aegis - 8 (Dun Morogh)

step
    #completewith LibramS
    +|cRXP_WARN_Ihr solltet mindestens Stufe 6 sein, um|r |T134596:0|t[Hosen prägen - Inspirationsvorbild] |cRXP_WARN_in Dun Morogh mit einem anderen Spieler zu erlernen|r
    .train 410011,1
    .xp >6,1
step
    #completewith LibramS
    #label Dun1
    .zone Dun Morogh >> Reist nach Dun Morogh
    .train 410011,1
step
    #completewith next
    #requires Dun1
    #label Cave1
    .goto Dun Morogh,42.47,54.22,20,0
    .goto Dun Morogh,42.28,52.82,20 >>Betretet Der Graufelsbau
    .train 410011,1
step
    #completewith next
    #label LibramS
    #requires Cave1
    .goto Dun Morogh,42.06,51.86,20,0
    .goto Dun Morogh,41.42,50.97,20,0
    .goto Dun Morogh,41.24,50.28,20,0
    .goto Dun Morogh,41.25,49.68,20,0
    .goto Dun Morogh,43.03,49.63,20 >>Reist zu |cRXP_FRIENDLY_Abenteurerüberreste|r auf dem Boden in der Höhle
    .train 410011,1
step
    .goto Dun Morogh,43.03,49.63
    >>|cRXP_WARN_Tretet einer Gruppe mit einem anderen Die Bruderschaft der Defias, Priester oder Druide bei, der über den |cRXP_FRIENDLY_Abenteurerüberreste|r steht, oder sucht Hilfe von einem Die Bruderschaft der Defias, Priester oder Druide im Allgemeinen Chatfunktionen (Gebt /1 in den Chatfunktionen ein)|r
    >>|cRXP_WARN_Sprecht mit den |cRXP_FRIENDLY_Abenteurerüberresten|r auf dem Boden, um das Ritual zu beginnen, oder klickt auf das |T136223:0|t[Geisterritual] |cRXP_WARN_des anderen Spielers (während ihr in ihrer Gruppe seid)|r
    >>|cRXP_WARN_Ein |cRXP_FRIENDLY_Abenteurergeist|r wird nach Abschluss des Rituals spawnen und sterben. Erbeutet ihn für die|r |T134419:0|t|cRXP_LOOT_[Rune der Inspiration]|r
    .collect 206264,1 --Rune of Inspiration (1)
    .target Adventurer's Remains
    .target Adventurer's Spirit
    .skipgossip
    .train 410011,1
step
    .cast 402265 >>|cRXP_WARN_Benutzt|r |T134419:0|t|cRXP_LOOT_[Rune der Inspiration]|r |cRXP_WARN_um zu erlernen|r |T134596:0|t[Hosen prägen - Inspirationsvorbild]
    .use 206264
    .itemcount 206264,1 --Rune of Inspiration (1)
    .train 410011,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Zurechtweisung - 10 (Eisenschmiede)
#title Zurechtweisung
#next Siegel des Märtyrertums - 10 (Sturmwind)

step
    #completewith LibramS
    +|cRXP_WARN_Ihr solltet mindestens Stufe 10 sein, um|r |T134596:0|t[Hosen prägen - Zurechtweisung] |cRXP_WARN_in Eisenschmiede allein zu erlernen|r
    .train 425621,1
    .xp >10,1
step
    #completewith next
    #label Ironforge1
    .zone Ironforge >>Lauf nach Ironforge
    .train 425621,1
step
    #completewith next
    #requires Ironforge1
    #label LibramS
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>Reist zu |cRXP_FRIENDLY_Bruuk Barleybeard|r in das Gasthaus
    .train 425621,1
step
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>Sprecht mit |cRXP_FRIENDLY_Bruuk Barleybeard|r innerhalb
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425621,1
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step
    .goto Ironforge,72.40,73.63
    .gossipoption 109084 >>Sprecht mit |cRXP_FRIENDLY_Bruart|r um einen Kampf zu beginnen
    >>Besiegt |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_Seid vorsichtig, wenn er|r |T132939:0|t[Rückhand] wirkt |cRXP_WARN_(es betäubt euch für 2 Sek.)|r
    >>|cRXP_WARN_Erinnert euch,|r |T135924:0|t[Siegel des Kreuzfahrers] |cRXP_WARN_auf ihn zu wirken|r
    >>|cRXP_WARN_NICHT versehentlich|r |T135906:0|t[Segen der Macht] |cRXP_WARN_auf ihn wirken|r
    >>|cRXP_WARN_Locke ihn nach oben zum Balkon, springe dann vor dem Wirtshaus herab und wirkt|r |T135920:0|t[Heiliges Licht] |cRXP_WARN_wenn nötig|r
    .mob Bruart
    .skipgossip 209004,1
    .train 425621,1
--XX 109084 "Seems you've had a few too many"
--XX Check if another player can skip the "how's business" dialogue for you (paladin, warrior)
step
    .goto Ironforge,72.40,73.63,-1
    .goto Ironforge,72.53,76.94,-1
    >>Besiegt |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_Seid vorsichtig, wenn er|r |T132939:0|t[Rückhand] wirkt |cRXP_WARN_(es betäubt euch für 2 Sek.)|r
    >>|cRXP_WARN_Erinnert euch,|r |T135924:0|t[Siegel des Kreuzfahrers] |cRXP_WARN_auf ihn zu wirken|r
    >>|cRXP_WARN_NICHT versehentlich|r |T135906:0|t[Segen der Macht] |cRXP_WARN_auf ihn wirken|r
    >>|cRXP_WARN_Locke ihn nach oben zum Balkon, springe dann vor dem Wirtshaus herab und wirkt|r |T135920:0|t[Heiliges Licht] |cRXP_WARN_wenn nötig|r
    >>|cRXP_WARN_Nach dem Besiegen von |cRXP_ENEMY_Bruart|r:|r
    >>Sprecht mit |cRXP_FRIENDLY_Bruuk Gerstenbart|r erneut, um die |T134419:0|t[Rune of Zurechtweisung] zu erhalten
    >>|cRXP_WARN_Falls er dir die|r |T134419:0|t[Rune of Zurechtweisung]|cRXP_WARN_nicht gibt, müsst ihr möglicherweise |cRXP_ENEMY_Bruart|r erneut bekämpfen|r
    .collect 205683,1 --Rune of Rebuke (1)
    .target Bruuk Barleybeard
    .skipgossip 5570,2,1
    .skipgossip 209004,1
    .train 425621,1
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
step
    .cast 402265 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[Rune of Zurechtweisung] |cRXP_WARN_um|r |T134596:0|t[Hosen prägen - Zurechtweisung] zu lernen
    .use 205683
    .itemcount 205683,1 --Rune of Rebuke (1)
    .train 425621,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Zurechtweisung - 10 (Sturmwind)
#title Zurechtweisung
#next Siegel des Märtyrertums - 10 (Sturmwind)

step
    #completewith LibramS
    +|cRXP_WARN_Ihr solltet mindestens Stufe 10 sein, um|r |T134596:0|t[Hosen prägen - Zurechtweisung] |cRXP_WARN_bereits in Sturmwind zu erwerben|r
    .train 425621,1
    .xp >10,1
step
    #completewith next
    #label Stormwind1
    .zone Stormwind City >>Lauf nach Sturmwind
    .train 425621,1
step
    #completewith next
    #requires Stormwind1
    #label LibramS
    .goto StormwindClassic,21.56,59.60,10,0
    .goto StormwindClassic,22.60,64.62,10 >>Reist zu |cRXP_FRIENDLY_Liv Bradford <Schankkellnerin>|r in der Gasthof Der Park
    .train 425621,1
step
    .goto StormwindClassic,22.60,64.62
    .gossipoption 109047 >>Sprecht mit |cRXP_FRIENDLY_Liv Bradford|r innerhalb
    .target Liv Bradford
    .skipgossip 203475,2,1
    .train 425621,1
--XX 109045 "How's business?"
--XX 109047 "Sounds like you need someone to bounce him for you."
--VV SKIPGOSSIP needs testing, if broken change to 1,1
step
    .goto StormwindClassic,21.21,62.78
    .gossipoption 109084 >>Sprecht mit |cRXP_FRIENDLY_Stuart|r, um einen Kampf zu starten
    >>Niederlage |cRXP_ENEMY_Stuart|r
    >>|cRXP_WARN_Seid vorsichtig, wenn er|r |T132939:0|t[Rückhand] wirkt |cRXP_WARN_(es betäubt euch für 2 Sek.)|r
    >>|cRXP_WARN_Erinnert euch,|r |T135924:0|t[Siegel des Kreuzfahrers] |cRXP_WARN_auf ihn zu wirken|r
    >>|cRXP_WARN_NICHT versehentlich|r |T135906:0|t[Segen der Macht] |cRXP_WARN_auf ihn wirken|r
    >>|cRXP_WARN_Lockt ihn nach oben, dann springt hinunter und wirkt|r |T135920:0|t[Heiliges Licht] |cRXP_WARN_wenn nötig|r
    .mob Stuart
    .skipgossip 203478,1
    .train 425621,1
--XX 109084 "Seems you've had a few too many"
--XX Check if another player can skip the "how's business" dialogue for you (paladin, warrior)
step
    .goto StormwindClassic,21.21,62.78,-1
    .goto StormwindClassic,22.60,64.62,-1
    >>Niederlage |cRXP_ENEMY_Stuart|r
    >>|cRXP_WARN_Seid vorsichtig, wenn er|r |T132939:0|t[Rückhand] wirkt |cRXP_WARN_(es betäubt euch für 2 Sek.)|r
    >>|cRXP_WARN_Erinnert euch,|r |T135924:0|t[Siegel des Kreuzfahrers] |cRXP_WARN_auf ihn zu wirken|r
    >>|cRXP_WARN_NICHT versehentlich|r |T135906:0|t[Segen der Macht] |cRXP_WARN_auf ihn wirken|r
    >>|cRXP_WARN_Lockt ihn nach oben, springt dann herunter, wirkt|r |T135920:0|t[Heiliges Licht] |cRXP_WARN_falls notwendig|r
    >>|cRXP_WARN_Nach dem Besiegen von |cRXP_ENEMY_Stuart|r:|r
    >>Sprecht mit |cRXP_FRIENDLY_Liv Bradford <Schankkellnerin>|r erneut, um die |T134419:0|t[Rune der Zurechtweisung] zu erhalten.
    >>|cRXP_WARN_Falls sie dir das nicht gibt|r |T134419:0|t[Rune der Zurechtweisung]|cRXP_WARN_, müsst ihr |cRXP_ENEMY_Stuart|r möglicherweise erneut bekämpfen|r
    .collect 205683,1 --Rune of Rebuke (1)
    .target Liv Bradford
    .skipgossip 203478,1
    .skipgossip 203475,2,1
    .train 425621,1
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
--VV SKIPGOSSIP needs testing, if broken change to 1,1
step
    .cast 402265 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[Rune of Zurechtweisung] |cRXP_WARN_um|r |T134596:0|t[Hosen prägen - Zurechtweisung] zu lernen
    .use 205683
    .itemcount 205683,1 --Rune of Rebuke (1)
    .train 425621,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Aurenmeisterschaft - 24 (Dämmerwald)
#title Aurenmeisterschaft
#next Flamme des Glaubens - 25 (Ruf)

step
    +|cRXP_WARN_Ihr MÜSST mindestens Stufe 24 sein, um|r |T134596:0|t[Hosen prägen - Aurenmeisterschaft]|cRXP_WARN_ zu erwerben, da dies die Stufenvoraussetzung für das Erlernen von|r |T135983:0|t[Untote vertreiben]
    >>Ihr müsst noch leveln, bevor ihr|cRXP_WARN_ |T134596:0|t[Hosen prägen - Aurenmeisterschaft]|r
    .train 416037,1
    .xp >24,1
step
    #completewith next
    .zone Stormwind City >>Lauf nach Sturmwind
    .train 416037,1
    .xp <24,1
step
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Arthur der Treue|r
    .train 2878 >> Erlernen |T135983:0|t[Untote vertreiben]
    .target Arthur the Faithful
    .train 416037,1
    .xp <24,1
step
    #completewith next
    .zone Duskwood >> Lauf zum Teufelswald
    .train 416037,1
    .xp <24,1
step
    #label LibramS
    #loop
    .goto Duskwood,20.84,63.75,50,0
    .goto Duskwood,20.00,71.10,50,0
    .goto Duskwood,21.58,72.00,50,0
    .goto Duskwood,24.26,71.82,50,0
    .goto Duskwood,22.91,66.62,50,0
    >>Tötet |cRXP_ENEMY_Defias Nacht Runners|r, |cRXP_ENEMY_Defias Nacht Klingen|r, und |cRXP_ENEMY_Defias Enchanters|r. Plündert sie für |T134916:0|t|cRXP_LOOT_[Buchband der Verbannung]|r
    >>|cRXP_WARN_Seid vorsichtig, da |cRXP_ENEMY_Defias Nacht Runners|r und |cRXP_ENEMY_Defias Nacht Klingen|r wirkt|r |T136093:0|t[Verlangsamendes Gift] |cRXP_WARN_(Senkung der Bewegungsgeschwindigkeit um 35% für 25 Sek.),|r |T132090:0|t[Meucheln] |cRXP_WARN_(verursacht doppelten Schaden von hinten. |cRXP_ENEMY_Defias Nacht Runners|r sind|r |T132320:0|t[Verstohlen]|cRXP_WARN_, und |cRXP_ENEMY_Defias Enchanters|r wirkt|r |T135812:0|t[Feuerball] |cRXP_WARN_(verursacht etwa 150 Feuer-Schaden) und haben|r |T135843:0|t[Frostrüstung] |cRXP_WARN_(verlangsamt Angriff und Bewegungsgeschwindigkeit bei Treffer)|r
    .collect 211472,1 -- Libram of Banishment (1)
    .mob Defias Night Runner
    .mob Defias Night Blade
    .mob Defias Enchanter
    .train 416037,1
    .xp <24,1
step
    .equip 18,211472 >> |cRXP_WARN_Legt den|r |T134916:0|t|cRXP_LOOT_[Buchband der Verbannung]|r an
    .use 211472
    .itemcount 211472,1 -- Libram of Banishment (1)
    .train 416037,1
    .xp <24,1
step
    #loop
    .goto Duskwood,22.49,47.91,50,0
    .goto Duskwood,20.41,47.56,50,0
    .goto Duskwood,14.65,47.37,50,0
    .goto Duskwood,16.31,44.96,50,0
    .goto Duskwood,22.95,40.55,50,0
    >>Tötet |cRXP_ENEMY_Skeletal Fiends|r und |cRXP_ENEMY_Skeletal Horrors|r
    .aura 408828 >>|cRXP_WARN_Wirkt|r |T135983:0|t[Untote vertreiben] |cRXP_WARN_und tötet sie dann mit|r |T135903:0|t[Exorzismus] |cRXP_WARN_5-mal, um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Stärkungszauber zu erhalten|r
    >>|cRXP_WARN_HINWEIS: Ihr müsst dies auf Feinde, die Erfahrung geben, anwenden, um Stapel zu erhalten|r
    .mob Skeletal Fiend
    .mob Skeletal Horror
    .itemStat 18,QUALITY,2
    .train 416037,1
    .xp <24,1
step
    .cast 421508 >>Benutzt den|cRXP_WARN_ |T134916:0|t|r[Buchband der Verbannung]|cRXP_LOOT_ um|r |T134596:0|t[Hosen prägen - Aurenmeisterschaft] |cRXP_WARN_zu erlernen|r
    .use 211472
    .aura -408828
    .train 416037,1
    .xp <24,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Schild des Rächers - 25 (Rotkammgebirge)
#title Schild des Rächers
#next Inspirationsvorbild - 6 (Wald von Elwynn)

step
    +|cRXP_WARN_Ihr solltet mindestens auf Stufe 25 sein, bevor ihr die|r |T134596:0|t[Hosen prägen - Schild des Rächers] |cRXP_WARN_erwerben könnt|r
    .train 410008,1
    .xp >25,1
step
    #completewith next
    .zone Redridge Mountains >> Reist ins Rotkammgebirge
    .train 410008,1
step
    #label LibramS
    #loop
    .goto Redridge Mountains,42.26,17.20,0
    .goto Redridge Mountains,35.02,7.66,0
    .goto Redridge Mountains,61.62,43.50,0
    .goto Redridge Mountains,76.15,83.00,0
    .goto Redridge Mountains,76.88,72.15,0
    .goto Redridge Mountains,42.26,17.20,50,0
    .goto Redridge Mountains,35.02,7.66,50,0
    .goto Redridge Mountains,61.62,43.50,50,0
    .goto Redridge Mountains,76.15,83.00,50,0
    .goto Redridge Mountains,76.88,72.15,50,0
    >>Tötet |cRXP_ENEMY_Dro'zem der Gotteslästerer|r. Plündert ihn für die |T134419:0|t[Rune of the Rächer]|r
    >>|cRXP_WARN_Er hat 3 Spawnpunkte draußen: Südosten (Renders Tal), Mitte (Lager außerhalb des Turm der Steinwacht) und Norden (Renders Lager). Er respawnt schnell, obwohl er ein 'seltener' Gegner ist|r
    >>|cRXP_WARN_Fragt im Allgemeinen Chatfunktionen, ob jemand ihn gesehen hat, um potenziell eure Suchzeit zu verkürzen (Gebt /1 in den Chatfunktionen ein)|r
    .collect 211488,1 --Rune of the Avenger (1)
    .unitscan Dro'zem the Blasphemous
    .train 410008,1
step
    .cast 402265 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[Rune of the Rächer] |cRXP_WARN_um zu erlernen|r |T134596:0|t[Hosen prägen - Schild des Rächers]
    .use 211488
    .itemcount 211488,1 --Rune of the Avenger (1)
    .train 410008,1
--VV Overall paladin routing can be improved if Divine Sac turnin has items bought before Divine Storm -> Turned in after Divine Storm (run down after accepting Return to Delgren -> Turn in -> Fly to Astranaar -> DS Turnin)
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Gürtel
#title Formbarer Schutz
#name Formbarer Schutz - 34 (Arathihochland)

step
    #optional
    .train 426175,1
    +|cRXP_WARN_Ihr müsst mindestens auf Stufe 34 sein, bevor ihr die|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Frömmigkeit|r]
    .xp >34,1
step
    .train 426175,1
    #completewith next
    .train 20164,1
    +|cRXP_WARN_Ihr müsst trainieren|r |T135971:0|t[Siegel der Gerechtigkeit] |cRXP_WARN_um zu erwerben|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Frömmigkeit|r]
step
    .train 426175,1
    .train 642,1
    .train 1020,1
    +|cRXP_WARN_Ihr müsst trainieren|r |T135896:0|t[Gottesschild] |cRXP_WARN_um die|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Frömmigkeit|r]
step
    .train 426175,1
    #optional
    .train 20164,1
    +|cRXP_WARN_Ihr müsst|r |T135971:0|t[Siegel der Gerechtigkeit] |cRXP_WARN_erlernen, um die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Frömmigkeit|r]
step
    .train 426175,1
    #completewith next
    .zone Arathi Highlands >>Reist zum Arathihochland
step
    .train 426175,1
    #completewith BeadSoJ1
    .goto Arathi Highlands,68.8,71.8,0
    .goto Arathi Highlands,35.4,44.8,0
    +|cRXP_WARN_Trolle und Ogre in Arathihochland können auch irgendwelche der|r |T135261:0|t[|cRXP_LOOT_Tarnished Gebetsperlen|r]
step
    .train 426175,1
    #completewith Rosary
    #label BeadBoM1
    #loop
    .goto Arathi Highlands,33.26,32.60,50,0
    .goto Arathi Highlands,30.38,30.68,50,0
    .goto Arathi Highlands,31.46,25.36,50,0
    .goto Arathi Highlands,33.87,29.13,50,0
    .goto Arathi Highlands,31.13,29.47,50,0
    >>Tötet |cRXP_ENEMY_Syndicate Söldner|r, |cRXP_ENEMY_Syndicate Pathstalkers|r und |cRXP_ENEMY_Syndicate Highwaymen|r. Plündert sie für |T135261:0|t[|cRXP_LOOT_Tarnished Prayer Bead I|r]
    .collect 213444,1 --Tarnished Prayer Bead I
    .mob Syndicate Mercenary
    .mob Syndicate Pathstalker
    .mob Syndicate Highwayman
step
    .train 426175,1
    #requires BeadBoM1
    #label BeadBoM2
    #completewith Rosary
    +|cRXP_WARN_Cast|r |T135906:0|t[Segen der Macht] |cRXP_WARN_on yourself|r
    .aura 19740
    .aura 19834
    .aura 19835
    .aura 19836
    .aura 19837
    .aura 19838
    .aura 25291
    .aura 25782
    .aura 25916
step
    .train 426175,1
    #requires BeadBoM2
    #label BeadBoM3
    #completewith Rosary
    >>|cRXP_WARN_Tötet weiter Feinde, um die|r |T135260:0|t[|cRXP_LOOT_Göttlich Prayer Bead I|r]
    >>|cRXP_WARN_You must have an active|r |T135906:0|t[Segen der Macht] |cRXP_WARN_buff|r
    .collect 213448,1 --Divine Prayer Bead I
step
    .train 426175,1
    #completewith Rosary
    #label BeadDS1
    #loop
    .goto Arathi Highlands,33.26,32.60,50,0
    .goto Arathi Highlands,30.38,30.68,50,0
    .goto Arathi Highlands,31.46,25.36,50,0
    .goto Arathi Highlands,33.87,29.13,50,0
    .goto Arathi Highlands,31.13,29.47,50,0
    >>Tötet |cRXP_ENEMY_Syndicate Söldner|r, |cRXP_ENEMY_Syndicate Pathstalkers|r und |cRXP_ENEMY_Syndicate Highwaymen|r. Plündert sie für |T135261:0|t[|cRXP_LOOT_Tarnished Prayer Bead II|r]
    .collect 213445,1 --Tarnished Prayer Bead II
    .mob Syndicate Mercenary
    .mob Syndicate Pathstalker
    .mob Syndicate Highwayman
step
    .train 426175,1
    #completewith Rosary
    #requires BeadDS1
    #label BeadDS2
    >>|cRXP_WARN_Wirkt|r |T135896:0|t[Gottesschild] |cRXP_WARN_während des Kampfes bei unter 40% Leben, um zu erhalten|r |T135260:0|t[|cRXP_LOOT_Göttlich Prayer Bead II|r]
    .collect 213449,1 --Divine Prayer Bead II
    .usespell 642
    .usespell 1020
step
    .train 426175,1
    #completewith Rosary
    #label BeadSoJ1
    >>Tötet |cRXP_ENEMY_Syndicate Söldner|r, |cRXP_ENEMY_Syndicate Pathstalkers|r und |cRXP_ENEMY_Syndicate Highwaymen|r. Plündert sie für |T135261:0|t[|cRXP_LOOT_Tarnished Prayer Bead III|r]
    #loop
    .goto Arathi Highlands,33.26,32.60,50,0
    .goto Arathi Highlands,30.38,30.68,50,0
    .goto Arathi Highlands,31.46,25.36,50,0
    .goto Arathi Highlands,33.87,29.13,50,0
    .goto Arathi Highlands,31.13,29.47,50,0
    .collect 213446,1 --Tarnished Prayer Bead III
    .mob Syndicate Mercenary
    .mob Syndicate Pathstalker
    .mob Syndicate Highwayman
step
    .train 426175,1
    #completewith Rosary
    #requires BeadSoJ1
    #label BeadSoJ2
    >>|cRXP_WARN_Wirkt|r |T135971:0|t[Siegel der Gerechtigkeit] |cRXP_WARN_gefolgt von|r |T135959:0|t[Richturteil] |cRXP_WARN_auf einem fliehenden Feind, um zu erhalten|r |T135260:0|t[|cRXP_LOOT_Göttlich Prayer Bead III|r]
    .collect 213450,1 --Divine Prayer Bead III
    .usespell 20164
    .usespell 20271
step
    .train 426175,1
    #optional
    #requires BeadBoM3
step
    .train 426175,1
    #optional
    #requires BeadDS2
step
    .train 426175,1
    #optional
    #requires BeadSoJ2
step
    .train 426175,1
    #label Rosary
    >>|cRXP_WARN_Benutzt|r |T135260:0|t[|cRXP_LOOT_Göttlich Prayer Bead|r] |cRXP_WARN_um sie zu kombinieren zu|r |T133289:0|t[|cRXP_LOOT_Rosenkranz des Lichts|r]
    .use 213448
    .use 213449
    .use 213450
    .collect 213447,1
step
    .train 426175,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bruder Atticus|r in Stormgarde Keep, um die |T134419:0|t[|cRXP_FRIENDLY_Rune of Frömmigkeit|r]
    .goto Arathi Highlands,26.06,55.75,20,0
    .goto Arathi Highlands,25.71,59.92,20,0
    .goto Arathi Highlands,23.69,60.52,20,0
    .goto Arathi Highlands,23.75,58.89,15,0
    .goto Arathi Highlands,27.81,58.99,15,0
    .goto Arathi Highlands,28.74,58.97,15,0
    .goto Arathi Highlands,28.71,57.37,15,0
    .goto Arathi Highlands,27.01,56.95
    .skipgossip 217387,1
    .collect 213128,1
    .target Brother Atticus
step
    .itemcount 213128,1
    .use 213128
    .train 426175 >>|cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Frömmigkeit|r] |cRXP_WARN_um zu erlernen|r |T236251:0|t[Formbarer Schutz]
]])


RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Gürtel
#name Ummantelung des Lichts - 40 (Azeroth)
#title Ummantelung des Lichts

step
    #completewith next
    .zone Desolace >>Reist nach Desolace
step
    .train 426178,1
    .goto Desolace,52.730,84.761
    >>Sammelt den |cRXP_PICK_Kaputten Kriegshammer|r vom Boden für den |T133041:0|t[|cRXP_LOOT_Kaputter Hammer|r]
    .use 215441 >>|cRXP_WARN_Benutzt die |T133041:0|t[|cRXP_LOOT_Kaputter Hammer|r] um die Quest zu starten|r
    .collect 215441,1
    .accept 79939 >>Akzeptiert die Quest Der kaputte Hammer
step
    .train 426178,1
    #loop
    .goto Desolace,52.6,85.6,0
    .goto Desolace,55.6,70.4,0
    .goto Desolace,47,2,75.2,0
    .goto Desolace,52.6,85.6,40,0
    .goto Desolace,55.6,70.4,40,0
    .goto Desolace,47,2,75.2,60,0
    >>Tötet |cRXP_ENEMY_Burning Blade Summoners|r. Plündert sie für |T133471:0|t[|cRXP_LOOT_Torn Brief|r]
    .collect 216956,1,79939,1
    .mob Burning Blade Summoner
step
    #completewith Katherine
    .zone Stormwind City >>Lauf nach Sturmwind
step
    #completewith Katherine
    .goto StormwindClassic,42.51,33.51,20 >> Lauf zur Kathedrale in Sturmwind
step
    .train 426178,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Katharina die Reine|r
    .goto Stormwind City,37.222,31.855
    .turnin 79939 >>Gebt die Quest Der kaputte Hammer ab
    .accept 79940 >>Akzeptiert die Quest Ein verlorener Bruder
    .target Katherine the Pure
step
    #label Katherine
    .train 426178,1
    .goto Stormwind City,37.222,31.855
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Katharina die Reine|r
    .skipgossip 5492,1
    .complete 79940,1
    .turnin 79940 >>Gebt die Quest Ein verlorener Bruder ab
    .target Katherine the Pure
step
    #completewith next
    .zone Wetlands >>Laufe zum Hafen von Menethil
step
    .isQuestTurnedIn 79940
    .train 426178,1
    .goto Wetlands,8.086,58.592
    .gossip 3179,4 >> Sprecht mit |cRXP_FRIENDLY_Harold Riggs|r. Geht sicher, dass ihr alle seine Gesprächsoptionen durchgeht
    .skipgossip 3179,2
    .target Harold Riggs
step
    #completewith next
    .goto 1415,41.937,58.932,40 >> |cRXP_WARN_Schwimmt nach Süden, den ganzen Weg um bis Dun Morogh. Ihr werdet bald einen Level-40-Elite-Mob töten müssen. Erwägt, einen Freund für diesen Teil mitzubringen!|r
step
    .train 426178,1
    .goto 1415,41.937,58.932
    .gossip 217957 >> Sprecht mit dem |cRXP_FRIENDLY_Gefallener Scharlachroter Kreuzfahrer|r im Gebäude
    >>|cRXP_WARN_Das beschwört einen Level-40-Elite|r |cRXP_ENEMY_Scharlachroter Kreuzzug Assassine|r
    .target Slain Scarlet Crusader
step
    .train 426178,1
    .goto 1415,41.937,58.932
    >>Tötet die |cRXP_ENEMY_Scarlet Kreuzzug Assassine|r. Plündert sie für |T133471:0|t[|cRXP_LOOT_Orders from the Grand Kreuzzug|r]
    .use 215468 >>|cRXP_WARN_Benutzt |T133471:0|t[|cRXP_LOOT_Befehle vom Großen Kreuzzug|r] um die Quest zu starten|r
    .collect 215468,1,79945,1
    .accept 79945 >>Akzeptiert die Quest Befehle vom Großen Kreuzzug
    .mob Scarlet Cursade Assassin
step
    #completewith Katherine2
    .zone Stormwind City >>Lauf nach Sturmwind
step
    #completewith Katherine2
    .goto StormwindClassic,42.51,33.51,20 >> Lauf zur Kathedrale in Sturmwind
step
    .train 426178,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Katharina die Reine|r
    .goto Stormwind City,37.222,31.855
    .turnin 79945 >>Gebt die Quest Befehle vom Großen Kreuzzug ab
    .accept 79946 >>Akzeptiert die Quest Ein Bruder in Bedarf
    .target Katherine the Pure
step
    #label Katherine2
    .train 426178,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Katharina die Reine|r
    .goto Stormwind City,37.222,31.855
    .skipgossip 5492,3
    .complete 79946,1 --Learn more about Aeonas from Katherine
    .target Katherine the Pure
step
    .train 426178,1
    >>|cRXP_WARN_Ihr müsst jetzt in Das Scharlachrote Kloster gehen und einen vollständigen Kathedralendurchlauf absolvieren|r
    >>Nachdem ihr |cRXP_ENEMY_Mograine|r und |cRXP_ENEMY_Whitemane|r getötet habt, sprecht mit |cRXP_FRIENDLY_NPCs|r im Hinterzimmer
    .complete 79946,2 --Find Aeonas in the Scarlet Monastery
    .turnin 79946 >>Gebt die Quest Ein Bruder in Bedarf ab
    .accept 79963 >>Akzeptiert die Quest Bei der Anmut des Lichts
    .target Aeonas
step
    .train 426178,1
    >>Heilt |cRXP_FRIENDLY_Aenoas|r auf volle Lebenskraft
    .complete 79963,1 --Heal Aeonas
    .target Aeonas
step
    .train 426178,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aeonas|r
    .turnin 79963 >>Gebt die Quest Bei der Anmut des Lichts ab
    .accept 79970 >>Akzeptiert die Quest NPCs der Gerechtfertigte
    .target Aeonas
step
    #completewith Aeonas
    .zone Stormwind City >>Lauf nach Sturmwind
step
    #completewith Aeonas
    .goto StormwindClassic,42.51,33.51,20 >> Lauf zur Kathedrale in Sturmwind
step
    #label Aeonas
    .goto Stormwind City,37.355,31.708
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aeonas der Verteidigte|r
    .turnin 79970 >> Gebt die Quest NPCs der Verteidigten ab
    .train 426178 >> Erlernen |T236263:0|t[Ummantelung des Lichts]
    .target Aeonas the Vindicated
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Stiefel
#name Vom Licht behütet - 30 (Alteracgebirge)
#title Vom Licht behütet

step
    #optional
    .train 416035,1
    +|cRXP_WARN_Ihr müsst mindestens Level 30 sein, bevor ihr|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Wächters|r]
    .xp >30,1
step
    .train 416035,1
    .train 19752 >> |cRXP_WARN_Ihr müsst trainieren|r |T136106:0|t[Göttlicher Eingriff] |cRXP_WARN_um zu erwerben|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Wächters|r]
step
    .train 416035,1
    .collect 17033,1 >>|cRXP_BUY_Kauft mindestens einen|r |T135259:0|t[Symbol der Göttlichkeit] |cRXP_BUY_von jedem Reagentienhändler|r
step
    .train 416035,1
    #completewith FriendRequired
    +|cRXP_WARN_Stellt sicher, dass ihr für die folgenden Schritte einen |cFFFFFFFFPriester|r, einen |cFFF58CBAPaladin|r oder einen |cFFFF7D0ADruiden|r als Freund mitbringt! Dieser nächste Teil kann nicht alleine abgeschlossen werden, da jemand euch wiederbeleben muss!|r
    .subzoneskip 281
step
    .train 416035,1
    .goto Alterac Mountains,39.675,60.675
    .zone Alterac Mountains >>Reist zum Alteracgebirge
    .itemcount 213452,<1
step
    .train 416035,1
    #label FriendRequired
    >>Sammelt |cRXP_PICK_Eingefrorene Überreste|r vom Boden. Beutet es für die |cRXP_LOOT_Inaktive Heilige Rune|r aus
    .goto Alterac Mountains,39.675,60.675
    .collect 213452,1
step
    .train 416035,1
    .cast 19752 >> |cRXP_WARN_Wirkt|r |T136106:0|t[Göttlicher Eingriff] |cRXP_WARN_auf einen Freund von Euch, der euch begleitet hat|r
    .usespell 19752
step
    .train 416035,1
    >>|cRXP_WARN_Lasst euren Freund den|r |T136106:0|t[Göttlicher Eingriff] |cRXP_WARN_Buff entfernen und euch auferstehen lassen|r
    >>|cRXP_WARN_Ihr werdet|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Wächters|r]
    .collect 213132,1
step
    .use 213132
    .itemcount 213132,1
    .train 416035 >>|cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Wächters|r] |cRXP_WARN_um zu trainieren|r |T237537:0|t[Vom Licht behütet]
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Stiefel
#name Geheiligter Schild - 30 (Desolace)
#title Geheiligter Schild

step
    #optional
    .train 416028,1
    +|cRXP_WARN_Ihr müsst mindestens Stufe 18 sein, bevor ihr die|r |T236249:0|t[Geheiligter Schild] |cRXP_WARN_Gravur|r
    .xp >18,1
step
    .train 416028,1
    .train 1044 >> |cRXP_WARN_Ihr müsst erlernen|r |T135968:0|t[Segen der Freiheit] |cRXP_WARN_um die|r |T236249:0|t[Geheiligter Schild] |cRXP_WARN_Gravur|r
step
    .train 416028,1
    #completewith Deliverance
    +|cRXP_WARN_Bringt einen Freund für die nächsten Schritte mit! Dieser Teil kann nicht alleine abgeschlossen werden!|r
step
    .train 416028,1
    #completewith next
    .zone Desolace >>Reist nach Desolace
step
    .train 416028,1
    #label Deliverance
    .goto Desolace,66.532,7.531
    >>Sammelt |T134916:0|t[|cRXP_FRIENDLY_Buchband der Erlösung|r] vom Tisch
    .collect 213513,1
step
    .train 416028,1
    .equip 18,213513 >> |cRXP_WARN_Legt|r |T134916:0|t[|cRXP_FRIENDLY_Buchband der Erlösung|r] an
    .use 213513
step
    .train 416028,1
    .goto Desolace,38.21,61.02,50,0
    .goto Desolace,36.44,60.52,60,0
    .goto Desolace,33.44,54.17,60,0
    .goto Desolace,30.33,58.26,60,0
    .goto Desolace,31.79,61.28
    .aura 408828 >> |cRXP_WARN_Wirkt|r |T135968:0|t[Segen der Freiheit] |cRXP_WARN_auf einen anderen Spieler 5 Mal, während dieser behindert ist. Ihr werdet einen Stapel von|r |T237556:0|t[Inspiration aufbauen] |cRXP_WARN_jedes Mal bekommen, wenn ihr das macht|r
    >>|cRXP_WARN_Sobald ihr 5 Stapel von|r |T237556:0|t[Inspiration aufbauen]|cRXP_WARN_ habt, werdet ihr|r |T136116:0|t[Inspiriert] |cRXP_WARN_Stärkungszauber erhalten|r
    >>|cRXP_WARN_Schließt dies gerade außerhalb von Maraudon ab. Die|r |cRXP_ENEMY_Maraudin-Treiber|r |cRXP_WARN_dort werfen|r |T132149:0|t[Netz]
    .mob Maraudine Wrangler
step
    .use 213513
    .train 416028 >>|cRXP_WARN_Benutzt|r |T134916:0|t[|cRXP_FRIENDLY_Buchband der Erlösung|r] |cRXP_WARN_um zu trainieren|r |T236249:0|t[Geheiligter Schild]
]])


-- RXPGuides.RegisterGuide([[
-- #classic
-- << Paladin SoD
-- #group RestedXP Rune & Books Guide
-- #subgroup Bracers
-- #name Improved Hammer of Wrath
-- for phase 3

-- Improved Hammer of Wrath


-- ]])

-- RXPGuides.RegisterGuide([[
-- #classic
-- << Paladin SoD
-- #group RestedXP Rune & Books Guide
-- #subgroup Bracers
-- #name Purifying Power
-- for phase 3

-- Purifying Power


-- ]])
RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Helm
#name Fanatismus - 44 (Azeroth)

step
    #optional
    .train 426178 >>|cRXP_WARN_Ihr müsst die Rune für|r |T236263:0|t[Ummantelung des Lichts] |cRXP_WARN_zuerst erlernen, bevor ihr diese erhalten könnt|r
    .train 429251,1
step
    #completewith next
    .zone Stormwind City >>Lauf nach Sturmwind
    .train 429251,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aeonas der Verteidigte|r
    .goto Stormwind City,37.355,31.708
    .accept 81762 >>Akzeptiert die Quest Gute Nachrichten
    .target Aeonas the Vindicated
step
    .train 429251,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Katharina die Reine|r
    .goto Stormwind City,37.222,31.855
    .turnin 81762 >>Gebt die Quest Gute Nachrichten ab
    .accept 81764 >>Akzeptiert die Quest Der rätselhafte Händler
    .target Katherine the Pure
step
    #completewith next
    .zone Dustwallow Marsh >>Reist nach Düstermarschen/Theramore |cRXP_WARN_(z.B. nehmt das Boot vom Menethil-Hafen nach Theramore)|r
    .train 429251,1
step
    .train 429251,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elrick|r im Gasthaus
    *|cRXP_WARN_Zwei Level-45 Feinde werden euch nach dem Annehmen der Quest angreifen|r
    .goto Dustwallow Marsh,66.52,45.41
    .turnin 81764 >>Gebt die Quest Der rätselhafte Händler ab
    .accept 81765 >>Akzeptiert die Quest Elrick, Die Bruderschaft der Defias der Silbernen Hand
    .target Elrick
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elrick|r
    .goto Dustwallow Marsh,66.52,45.41
    .gossip 221575,5
    .skipgossip 221575,1
    .train 429251,1
step
    .train 429251,1
    >>Tötet |cRXP_ENEMY_Elrick|r. Plündert sie für |T133471:0|t[|cRXP_LOOT_Bloody Missive|r]
    >>|cRXP_WARN_Benutzt die|r |T133471:0|t[|cRXP_LOOT_Bloody Missive|r] |cRXP_WARN_um die Quest zu erhalten|r
    .goto Dustwallow Marsh,66.52,45.41
    .collect 219930,1,81766,1
    .accept 81766 >>Akzeptiert die Quest Das blutige Schreiben
    .use 219930
    .skipgossip 221575,1
    .target Elrick
step
    #completewith next
    .zone Stormwind City >>Lauf nach Sturmwind
    .train 429251,1
step
    .train 429251,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Katharina die Reine|r |cRXP_WARN_um zu trainieren|r |T135905:0|t[Fanatismus]
    .goto Stormwind City,37.222,31.855
    .turnin 81762 >>Gebt die Quest Das blutige Schreiben ab
    .target Katherine the Pure
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Armschienen
#name Anmut des Lichts - 40 (Feralas)

step
    #optional
    .train 5599 >>|cRXP_WARN_Ihr müsst|r |T135964:0|t[Segen des Schutzes] |cRXP_WARN_trainiert haben, um die|r |T135931:0|t[Anmut des Lichts] |cRXP_WARN_Rune|r
step
    #optional
    #completewith TeleporterTaken
    .isQuestTurnedIn 79984
    .goto Stranglethorn Vale,27.6,77.4,8 >>Benutzt den Teleporter zu Feralas in Beutebucht
    .train 429242,1
step
    #optional
    .isQuestAvailable 79984
    #completewith TeleporterTaken
    .zone Feralas >>Reist nach Feralas
    .goto Feralas,85.27,43.66,8 >>Benutzt |cRXP_PICK_Wunderrad-Weltteleporter|r
    .train 429242,1
step
    #label TeleporterTaken
    .goto Feralas,84.26,43.81,10 >>Erreicht die Plattform
    .train 429242,1
step
    .train 429242,1
    >>1) |cRXP_WARN_Stellt die Fraktion Gadgetzan auf "Im Krieg" im Ruffenster von Euch|r
    >>2) Geht zur genauen Wegpunkt-Position
    >>3) Schaut auf den grünen Busch neben dem Holzhaus
    .goto Feralas,83.93,43.89
    .goto Feralas,85.27,43.66,0
    .aura 436534,1 >>4) |cRXP_WARN_Wartet bis der |cRXP_ENEMY_Turmverteidigungsmechanoid|r genau zwischen euch und dem Busch ist und greift ihn an|r
    .mob Tower Defense Automaton
step
    .train 429242,1
    >>|cRXP_WARN_Heilt|r |cRXP_FRIENDLY_Frix Xizzix|r |cRXP_WARN_bis er aufsteht|r.
    .gossip 220930,1 >>Danach sprecht mit |cRXP_FRIENDLY_Frix Xizzix|r
    .skipgossip 220930,1
    .goto Feralas,81.45,42.46
    .target Frix Xizzix
step
    #completewith next
    .zone Stranglethorn Vale >>Reist nach Schlingendorntal/Beutebucht
    .train 429242,1
step
    .train 429242,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rix Xizzix|r und kauft die |T134419:0|t[|cRXP_FRIENDLY_Rune of Barmherzigkeit|r]
    .goto Stranglethorn Vale,28.4,75.8
    .collect 219147,1
    .target Rix Xizzix
step
    .itemcount 219147,1
    .use 219147
    .train 429242 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Barmherzigkeit|r] |cRXP_WARN_um zu trainieren|r |T236249:0|t[Geheiligter Schild]
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Helm
#name Zorn - 43 (Das Hinterland)

-- Wrath

step
    #optional
    .train 5502 >>|cRXP_WARN_Ihr müsst|r |T135974:0|t[Untote spüren] |cRXP_WARN_trainiert haben, um die|r |T236260:0|t[Zorn] |cRXP_WARN_Rune|r
    .train 429249,1
step
    #completewith RuneLearned
    +|cRXP_WARN_Ihr könnt nur die|r |T236260:0|t[Zorn] |cRXP_WARN_Rune zwischen 21 Uhr und 6 Uhr erhalten.|r
step
    #completewith next
    .zone The Hinterlands >>Reise in die Hinterlande
    .train 429249,1
step
    .train 429249,1
    >>|cRXP_WARN_Benutzt|r |T135974:0|t[Untote spüren] |cRXP_WARN_to be able to see the|r |cRXP_ENEMY_Rachsüchtiger Geist|r
    >>Tötet die |cRXP_ENEMY_Vengeful Willenskraft|r. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune of Zorn|r]
    *Der |cRXP_ENEMY_Rachsüchtige Geist|r streift um den See herum
    .goto The Hinterlands,33.0,44.2
    .collect 220165,1
    .mob Vengeful Spirit
step
    #label RuneLearned
    .itemcount 220165,1
    .use 220165
    .train 429249 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Zorn|r] |cRXP_WARN_zum Trainieren|r |T236260:0|t[Zorn]
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Armschienen
#name Hammer der Rechtschaffenen - 50 (Azeroth)

--x shiek: needs better coordinates
step
    #optional
    .train 410013 >>|cRXP_WARN_Ihr müsst zuerst die Rune für|r |T236253:0|t[Hammer der Rechtschaffenen] |cRXP_WARN_erlernen, bevor ihr diese erhalten könnt|r
    .train 410013,1
step
    #completewith next
    .zone Felwood >>Lauf zum Teufelswald
    .train 410013,1
step
    .goto Felwood,45.0,52.0
    .gossip 217996,5 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aeonas der Verteidigte|r
    .target Aeonas the Vindicated
    .train 410013,1
step
    .goto Felwood,44.6,52.0
    .gossip 221636,8 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gregory|r
    .target Gregory
    .train 410013,1
step
    .goto Felwood,44.6,52.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gregory|r
    .accept 81790,1 >>Akzeptiert die Quest Bedeutende Materialien
    .target Gregory
    .train 410013,1
step
    #loop
    .goto Felwood,44.4,46.8,40,0
    .goto Felwood,40.0,43.6,40,0
    .goto Felwood,41.8,34.8,40,0
    .goto Felwood,48.0,38.8,40,0
    >>Tötet |cRXP_ENEMY_Infernal Wache|r, |cRXP_ENEMY_Infernal Leibwächter|r, |cRXP_ENEMY_Entropic Wildtier|r und |cRXP_ENEMY_Entropic Schrecken|r. Plündert sie für |cRXP_LOOT_|T136030:0|tFiery Kern einer Höllenbestie|r
    .complete 81790,1 --3/3 Fiery Infernal Core
    .mob Infernal Sentry
    .mob Infernal Bodyguard
    .mob Entropic Beast
    .mob Entropic Horror
step
    #completewith next
    #title Maraudon
    .zone Desolace >>Reist nach Maraudon
    .goto Desolace,30,62,20
    .train 410013,1
step
    >>|cRXP_WARN_Es wird empfohlen, eine Gruppe aus 5 Spielern zu bilden.|r
    >>Tötet |cRXP_ENEMY_Princess Theradras|r, den Endboss von Maraudon. Plündert sie für |cRXP_LOOT_|T134389:0|tShimmering Grave Staub|r
    .complete 81790,2 --1/1 Shimmering Grave Dust
    .mob Princess Theradras
    .train 410013,1
step << Alliance
    #completewith next
    #title Schwarzfelstiefen
    .zone Searing Gorge >>Reist nach Schwarzfelstiefen
    .goto 1415,48.09,62.42,20
    .train 410013,1
step << Alliance
    >>|cRXP_WARN_Es wird empfohlen, eine Gruppe von 5 Spielern zu bilden, und ihr benötigt 3 Gold.|r
    >>Wandert durch die Schwarzfelstiefen, bis ihr die Grim Guzzler Bar erreicht. |Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Stöpsel Zapfring|r und kauft |T135262:0|t[Triple-Brewed Geschmolzen Lager]
    .complete 81790,3 --1/1 Triple-Brewed Molten Lager
    .target Plugger Spazzring
    .train 410013,1
step << Alliance
    #completewith next
    .zone Hillsbrad Foothills >>Reist nach Vorgebirge des Hügellands
    .train 410013,1
step << Alliance
    #loop
    .goto Felwood,65.8,19.6,20,0
    .goto Felwood,67.6,15.0,20,0
    .goto Felwood,68.6,13.8,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brave Stonetorch|r
    .target Brave Stonetorch
    .accept 81944,1 >>Akzeptiert die Quest A Newly Entdeckt Purpose
    .complete 81970,4 --1/1 Symbol of Faith
step << Horde
    #completewith next
    .zone Hillsbrad Foothills >>Reist nach Vorgebirge des Hügellands
    .train 410013,1
step << Horde
    #loop
    .goto Felwood,65.8,19.6,20,0
    .goto Felwood,67.6,15.0,20,0
    .goto Felwood,68.6,13.8,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brave Stonetorch|r
    .target Brave Stonetorch
    .accept 81944,1 >>Akzeptiert die Quest A Newly Entdeckt Purpose
    .complete 81970,4 --1/1 Symbol of Faith
step << Horde
    #completewith next
    .zone Searing Gorge >>Reist nach Sengende Schlucht
    .train 410013,1
step << Horde
    >>|cRXP_WARN_Bildet eine Gruppe von 5 Spielern. Ihr benötigt 3 Gold.|r
    >>Geht durch die Schwarzfelstiefen bis zum Grim Guzzler Bar. |Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Stöpsel Zapfring|r und kauft |T135262:0|t[Triple-Brewed Lager]
    .complete 81790,3 --1/1 Triple-Brewed Molten Lager
    .target Plugger Spazzring
    .train 410013,1
step
    #completewith next
    .zone Felwood >>Lauf zum Teufelswald
    .train 410013,1
step
    .goto Felwood,44.6,52.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gregory|r
    .turnin 81790 >>Akzeptiert die Quest Bedeutende Materialien
    .target Gregory
    .train 410013,1
step
    .goto Felwood,45.0,52.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aeonas der Verteidigte|r
    .accept 81885,1 >>Akzeptiert die Quest Das Ritual
    .target Aeonas the Vindicated
    .train 410013,1
step
    .goto Felwood,44.6,52.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gregory|r
    .complete 81885,1 --1/1 Complete the Ritual
    .target Gregory
    .train 410013,1
step
    .goto Felwood,45.0,52.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aeonas der Verteidigte|r
    .turnin 81885 >>Gebt die Quest Das Ritual ab
    .target Aeonas the Vindicated
    .train 410013,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Verschleierung
#name Schild der Rechtschaffenheit - 60 (Die Östlichen Pestländer)

--There wasn't very precise info for this available, might need confirmation if it works properly

step
    #completewith next
    >>|cRXP_WARN_Das Aufschließen dieser Rune erfordert, einen Boss in Stratholme(undead) zu töten. Sucht nach einer Gruppe, wenn ihr möchtet.|r
    .zone Eastern Plaguelands >> Lauf in die Östlichen Pestländer
step
    .line Eastern Plaguelands,28.6,84.2,33.2,83.0,35.30,82.55,41.19,81.68,45.42,80.68,48.8,79.9,51.5,78.3,55.1,76.4
    >>Sucht nach einem |cRXP_ENEMY_Schlaffkiefrigen Ghul|r. Tötet ihn und |Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orthas|r, einem Zwerggeist, der erscheinen wird. Akzeptiert seine Quest
    >>|cRXP_WARN_Der|r |cRXP_ENEMY_Slack-Bissig Ghul|r |cRXP_WARN_patrouilliert den Bereich südlich der Straße zwischen Undercroft und Corrin's Crossing|r
    .accept 84318 >> Akzeptiert die Quest Ey!
    .unitscan Slack-Jawed Ghoul
    .target Orthas
step
    .goto Eastern Plaguelands,61.3,69.3 --Not sure if this is the house or the other one, need more info
    >>BETRETET das Haus in Corrin's Crossing. Plündert den |T133040:0|t[|cRXP_PICK_Prunkvoller Kriegshammer|r] |cRXP_WARN_im zweiten Stock|r
    .complete 84318,1
step
    .goto Eastern Plaguelands,61.3,69.3
    >>Benutzt |T134566:0|t[NPCs' Favourite Gold Tooth], um |cRXP_FRIENDLY_Orthas|r erneut zu beschwören. Sprecht mit ihm, um die Quest abzugeben und die Fortsetzung zu erhalten.
    .turnin 84318 >> Gebt die Quest Ey! ab
    .accept 84319 >> Akzeptiert die Quest Oh No Ye Don't
    .use 227687
step
    .goto Eastern Plaguelands,59.7,68.7
    >>Tötet |cRXP_ENEMY_Stichelnarbenschrecken|r und sammelt von ihnen das |T133823:0|t[|cRXP_LOOT_Partially-Digested Plate Rüstung|r]
    .complete 84319,1
    .mob Stitched Horror
step
    >>Benutzt |T134566:0|t[NPCs' Favourite Gold Tooth], um |cRXP_FRIENDLY_Orthas|r erneut zu beschwören. Sprecht mit ihm, um die Quest abzugeben und die Folgequest zu erhalten.
    .turnin 84319 >> Gebt die Quest Oh No Ye Don't ab
    .accept 84330 >> Akzeptiert die Quest Ein kleines bisschen Nekromantie
step
    >>Findet eine Gruppe für Stratholme (Untote)
    >>Tötet |cRXP_ENEMY_Maleki der Leichenblasse|r einen der Bosse auf der Untoten-Seite des Verlieses und sammelt von ihm das |T134415:0|t[Necrotic Runenstein]
    .complete 84330,1 --Necrotic Runestone
    .mob Maleki the Pallid
step
    .goto Eastern Plaguelands,22.7,86.1
    >>Kehrt zum Undercroft zurück, sucht nach der |cRXP_FRIENDLY_Verrottenden Zwerggleiche|r. Interagiert mit ihr um die Quest abzugeben
    .turnin 84330 >> Gebt die Quest Ein kleines bisschen Nekromantie ab
step
    >>Akzeptiert die Anschlussquest vom Leichnam. Es ist eine sofortige Abgabe, die euch lehrt, wie man |T236265:0|t[|cRXP_FRIENDLY_Schild der Rechtschaffenheit|r] graviert
    .goto Eastern Plaguelands,22.7,86.1
    .accept 84332 >> Akzeptiert die Quest Die Dankbarkeit eines Thans
    .turnin 84332 >> Gebt die Quest Die Dankbarkeit eines Thans ab

]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Verschleierung
#name Rechtschaffene Vergeltung - 55 (Westliche Pestländer)
#title Rechtschaffene Vergeltung
#next Schock und Awe - 55 (Western und Die Östlichen Pestländer)

step
    #completewith next
    .zone Western Plaguelands >> Reist in die Westlichen Pestländer
step
    .goto Western Plaguelands,44.6,46.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Gefallenen Ritter|r
    .gossip 227519,1 >> Geht durch sein Gespräch
    .target Fallen Knight
--Not entirely sure if you even need to talk to him or if you do how deep the dialogue is
step
    .goto Western Plaguelands,47.5,50.4
    >>Betretet die Scheune neben dem |cRXP_FRIENDLY_Gefallenen Ritter|r und |Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_NPCs|r
    .accept 83808 >> Akzeptiert die Quest In Ketten gelegt
    .target Squire Cuthbert
step
    .goto Western Plaguelands,47.5,50.4
    .goto Western Plaguelands,45.7,53.9
    >>Sammelt das [|cRXP_PICK_Schwert des Knappen Cuthbert|r], das auf dem Feld in der Nähe liegt
    .complete 83808,1
step
    >>Geht zurück zum Stall und |Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Squire Cuthbert|r
    .turnin 83808 >> Gebt die Quest In Ketten gelegt ab
    .accept 83935 >> Akzeptiert die Quest Den Weg frei machen
    .target Squire Cuthbert
step
    .goto Western Plaguelands,45.7,53.9
    >>Tötet |cRXP_ENEMY_Blighted Zombies|r, |cRXP_ENEMY_Skeletal Terrors|r und |cRXP_ENEMY_Rotting Cadavers|r
    .complete 83935,1 --Blighted Zombie(5)
    .complete 83935,2 --Skeletal Terror(10)
    .complete 83935,3 --Rotting Cadaver(10)
    .mob Blighted Zombie
    .mob Skeletal Terror
    .mob Rotting Cadaver
step
    .goto Western Plaguelands,47.5,50.4
    >>Geht zurück zur Scheune und |Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Squire Cuthbert|r
    .turnin 83935 >> Gebt die Quest Den Weg frei machen ab
    .accept 83822,1 >> Akzeptiert die Quest Der gefallene Ritter
    >>|cRXP_WARN_dies ist eine Eskortenquest|r
    .target Squire Cuthbert
step
    .goto Western Plaguelands,44.6,46.6
    >>Eskortet den |cRXP_FRIENDLY_Knappen Cuthbert|r zurück zu dem Gefallenen Ritter und helft ihm, die Leiche zu verbrennen
    .complete 83822,1
step
    .goto Western Plaguelands,44.6,46.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Squire Cuthbert|r
    .turnin 83822 >> Gebt die Quest Der gefallene Ritter ab
    .accept 83936 >> Akzeptiert die Quest Daltons Queste
    .target Squire Cuthbert
step
    .goto Western Plaguelands,44.6,46.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Squire Cuthbert|r und go through his dialogue
    .complete 83936,1
    .target Squire Cuthbert
step
    .goto Western Plaguelands,44.6,46.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Squire Cuthbert|r und führt seinen Dialog. Das Abgeben dieser Quest zeigt euch, wie man |T236260:0|t[|cRXP_FRIENDLY_Rechtschaffene Vergeltung|r] graviert
    >>Ihr werdet auch |T237377:0|t[|cFF0070FFDalton's Horn|r] erhalten, das ihr benötigen werdet, um die Rune von |T252188:0|t[|cRXP_FRIENDLY_Schockierende Ehrfurcht|r] freizuschalten.
    .turnin 83936 >> Gebt die Quest Daltons Queste ab
    .target Squire Cuthbert
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Verschleierung
#name Schock und Awe - 60 (Western und Die Östlichen Pestländer)
#title Schockierende Ehrfurcht & Zornige Vergeltung

step
    #completewith next
    +|cRXP_WARN_Um die Quest für diese Rune zu beginnen, müsst ihr die Rune von|r |T236260:0|t[|cRXP_FRIENDLY_Rechtschaffene Vergeltung|r] freischalten. |cRXP_WARN_Geht zum Guide Rechtschaffene Vergeltung um zu beginnen|r
    .train 440792,1 --Righteous Vengeance
step
    .goto Eastern Plaguelands,78.6,47.6
    >>|cRXP_WARN_Benutzt das|r |T237377:0|t[|cFF0070FFDalton's Horn|r] |cRXP_WARN_um zu beschwören|r |cRXP_FRIENDLY_Knappe Cuthbert|r |cRXP_WARN_und tötet Gegner, bis er auflevelt. Sobald er auflevelt, wird er dir eine kostenlose Abgabe-Quest geben|r
    .accept 83823 >> Akzeptiert die Quest a Lesson in Violence
    .turnin 83823 >> Gebt die Quest a Lesson in Violence ab
    .use 226122
step
    .goto Eastern Plaguelands,78.6,47.6
    >>|cRXP_WARN_Benutzt das|r |T237377:0|t[|cFF0070FFDalton's Horn|r] |cRXP_WARN_um|r |cRXP_FRIENDLY_Squire Cuthbert|r |cRXP_WARN_zu beschwören und tötet weiter Gegner, bis er erneut auflevelt. Sobald er das tut, gibt er euch eine weitere kostenlose Abgabe-Quest und eine weitere Quest, um einen Lich namens|r |cRXP_ENEMY_Arkonos the Verflucht|r
    .accept 84008 >> Akzeptiert die Quest a Lesson in Barmherzigkeit
    .turnin 84008 >> Gebt die Quest a Lesson in Barmherzigkeit ab
    .accept 84017 >> Akzeptiert die Quest Zeit zu töten
    .use 226523
step
    .goto Eastern Plaguelands,78.6,47.6
    >>|cRXP_WARN_Geht zum Noxious Glade, ein Gebiet direkt nördlich der Kapelle Hoffnung des Lichts. Sobald ihr dort seid, beschwört euren Knappen erneut. Die Quest sollte sich abschließen und ihr werdet eine weitere Quest bekommen, akzeptiert sie|r
    .turnin 84017 >> Gebt die Quest Zeit zu töten ab
    .accept 84125 >> Akzeptiert die Quest Dem Ziel so nah
    .use 226545
step
    .goto Eastern Plaguelands,83.7,41.9
    >>Tötet die |cRXP_ENEMY_Shadowmages|r und die |cRXP_ENEMY_Dread Weavers|r im Noxious Glade. Sammelt von ihnen das |T135482:0|t[|cRXP_LOOT_Scourge Schatten Scalpel|r]
    .complete 84125,1
    .mob Shadowmage
    .mob Dread Weaver
step
    >>Benutzt |T237377:0|t[|cFF0070FFDalton's Horn|r], um Knappe Cuthbert zu beschwören, falls ihr ihn verloren habt. Sprecht mit ihm.
    .turnin 84125 >> Gebt die Quest Dem Ziel so nah ab
    .accept 84126 >> Akzeptiert die Quest Den Kampf beenden
    .use 226122
    .target Squire Cuthbert
step
    .goto Eastern Plaguelands,86.6,39.8
    >>Benutzt die |T237490:0|t[|cRXP_LOOT_Modifiziertes Schatten-Skalpell|r], das ihr erhalten habt, um den Schild von |cRXP_ENEMY_Arkonos|r aufzuheben. Tötet ihn, um die Quest abzuschließen
    .complete 84126,1 --Arkonos the cursed slain
    .use 227685
step
    >>Benutzt |T237377:0|t[|cFF0070FFDalton's Horn|r], um |cRXP_FRIENDLY_Knappe Cuthbert|r zu beschwören, falls ihr ihn verloren habt. Sprecht mit ihm.
    >>Das Abgeben dieser Quest wird euch zeigen, wie man |T252188:0|t[Schockierende Ehrfurcht] meißelt, und wird euch auch die |T133745:0|t[|cRXP_FRIENDLY_MoP - Gegenstände|r] geben, die |T135875:0|t[Zornige Vergeltung] beibringen
    .turnin 84126 >> Gebt die Quest Den Kampf beenden ab
    .use 226122
    .target Squire Cuthbert
step
    .train 407788 >> Benutzt die |T133745:0|t[|cRXP_FRIENDLY_MoP - Gegenstände|r], um |T135875:0|t[Zornige Vergeltung] zu trainieren
    .use 226399
]])
