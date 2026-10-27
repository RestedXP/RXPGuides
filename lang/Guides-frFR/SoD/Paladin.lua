if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Frappe du croisé - 4 (Forêt d'Elwynn)
#title Frappe du croisé
#next Source d'inspiration - 6 (Forêt d'Elwynn)

--VV Not sure if you want to gate CS in Elwynn for humans only/DunM for dwarves only

step
    +|cRXP_WARN_Vous DEVEZ être au moins niveau 4 afin d'obtenir|r |T133816:0|t[Gravure de gants (Frappe du croisé)] |cRXP_WARN_comme il s'agit du niveau requis pour apprendre|r |T135959:0|t[Jugement]
    >>|cRXP_WARN_Vous devez gagner en niveau avant d'essayer d'obtenir|r |T133816:0|t[Gravure de gants (Frappe du croisé)]
    .train 410002,1
    .xp >4,1
step
    #completewith LibramS
    #label Elwynn1
    .zone Elwynn Forest >> Voyagez à la Forêt d'Elwynn
    .train 410002,1
    .xp <4,1
step
    #completewith next
    #requires Elwynn1
    .goto Elwynn Forest,48.35,41.97,15,0
    .goto Elwynn Forest,48.87,41.75,12,0
    .goto Elwynn Forest,49.61,41.87,12,0
    .goto Elwynn Forest,50.433,42.124,10 >>Voyagez vers le |cRXP_FRIENDLY_Frère Sammuel|r à l'intérieur
    .train 410002,1
    .xp <4,1
step
    .goto Elwynn Forest,50.433,42.124
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Sammuel|r
    .train 20271 >> Apprenez [Jugement]
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
    >>Tuez les |cRXP_ENEMY_Nervis défias|r. Dépouillez-les pour le |T134916:0|t|cRXP_LOOT_[Libram de jugement]|r
    .collect 205420,1 -- Libram of Judgement (1)
    .mob Defias Thug
    .train 410002,1
    .xp <4,1
step
    .equip 18,205420 >> |cRXP_WARN_Équipez le|r |T134916:0|t|cRXP_LOOT_[Libram de jugement]|r
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
    .aura 408828 >>|cRXP_WARN_Lancez|r |T135959:0|t[Jugement] |cRXP_WARN_10 fois pour obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    .itemStat 18,QUALITY,2
    .train 410002,1
    .xp <4,1
step
    .cast 409920 >>|cRXP_WARN_Utilisez le|r |T134916:0|t|cRXP_LOOT_[Libram de jugement]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Frappe du croisé)]
    .use 205420
    .aura -408828
    .train 410002,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Frappe du croisé - 4 (Dun Morogh)
#title Frappe du croisé
#next Source d'inspiration - 6 (Dun Morogh)

step
    +|cRXP_WARN_Vous DEVEZ être au moins niveau 4 afin d'obtenir|r |T133816:0|t[Gravure de gants (Frappe du croisé)] |cRXP_WARN_comme il s'agit du niveau requis pour apprendre|r |T135959:0|t[Jugement]
    >>|cRXP_WARN_Vous devez gagner en niveau avant d'essayer d'obtenir|r |T133816:0|t[Gravure de gants (Frappe du croisé)]
    .train 410002,1
    .xp >4,1
step
    #completewith LibramS
    #label Dun1
    .zone Dun Morogh >> Voyagez vers Dun Morogh
    .train 410002,1
    .xp <4,1
step
    #completewith next
    #requires Dun1
    .goto Dun Morogh,28.83,69.07,12,0
    .goto Dun Morogh,28.83,68.70,10,0
    .goto Dun Morogh,28.93,68.35,10,0
    .goto Dun Morogh,28.833,68.332,10 >>Voyagez vers |cRXP_FRIENDLY_Bromos Grummneur|r à l'intérieur
    .train 410002,1
    .xp <4,1
step
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bromos Grummner|r
    .train 20271 >> Apprenez [Jugement]
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
    >>Tuez les |cRXP_ENEMY_Jeunes trolls Crins-de-givre|r. Dépouillez-les pour le |T134916:0|t|cRXP_LOOT_[Libram de jugement]|r
    .collect 205420,1 -- Libram of Judgement (1)
    .mob Frostmane Troll Whelp
    .train 410002,1
    .xp <4,1
step
    .equip 18,205420 >> |cRXP_WARN_Équipez le|r |T134916:0|t|cRXP_LOOT_[Libram de jugement]|r
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
    .aura 408828 >>|cRXP_WARN_Lancez|r |T135959:0|t[Jugement] |cRXP_WARN_10 fois pour obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    .itemStat 18,QUALITY,2
    .train 410002,1
    .xp <4,1
step
    .cast 409920 >>|cRXP_WARN_Utilisez le|r |T134916:0|t|cRXP_LOOT_[Libram de jugement]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Frappe du croisé)]
    .use 205420
    .aura -408828
    .train 410002,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Main de rétribution - 14 (Loch Modan)
#title Main de rétribution
#next Source d'inspiration - 6 (Forêt d'Elwynn)


step
    +|cRXP_WARN_Vous devez être au moins de niveau 14 afin d'obtenir|r |T133816:0|t[Gravure de gants (Main de rétribution)] |cRXP_WARN_dans le Loch Modan uniquement|r
    >>|cRXP_WARN_Vous DEVEZ être au moins de niveau 8, comme il s'agit du niveau requis pour équiper le|r |T134916:0|t|cRXP_LOOT_[Libram de justice]|r
    >>|cRXP_WARN_Vous devez gagner en niveau avantd'essayer d'obtenir|r |T133816:0|t[Gravure de gants (Main de rétribution)]
    .train 410001,1
    .xp >8,1
step
    +|cRXP_WARN_Vous devez être au moins de niveau 14 afin d'obtenir|r |T133816:0|t[Gravure de gants (Main de rétribution)] |cRXP_WARN_dans le Loch Modan uniquement|r
    .train 410001,1
    .xp <8,1
    .xp >14,1
step
    #completewith next
    .zone Ironforge >>Voyagez à Ironforge
    .train 410001,1
    .xp <8,1
step
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brandur Ironhammer|r
    .train 853 >> Apprenez |T135963:0|t[Marteau de la justice]
    .target Brandur Ironhammer
    .train 410001,1
    .xp <8,1
step
    #completewith LibramS
    #label Loch1
    .zone Loch Modan >> Voyagez jusqu'au Loch Modan
    .train 410001,1
    .xp <8,1
step
    #completewith LibramS
    #requires Loch1
    #label Cave1
    .goto Loch Modan,28.75,64.63,40,0
    .goto Loch Modan,35.35,83.51,20,0
    .goto Loch Modan,34.89,84.38,30 >>Voyagez jusqu'à la grotte des Pierres-fendues
    .train 410001,1
    .xp <8,1
step
    #completewith next
    #requires Cave1
    .goto Loch Modan,34.24,85.59,12,0
    .goto Loch Modan,35.90,87.93,12,0
    .goto Loch Modan,37.27,89.56,15,0
    .goto Loch Modan,36.75,91.43,8 >>Avancez jusqu'au |cRXP_PICK_Reliquaire englouti|r sous l'eau à l'intérieur de la grotte
    .train 410001,1
    .xp <8,1
step
    #label LibramS
    .goto Westfall,70.96,73.08
    >>Ouvrez le |cRXP_PICK_Reliquaire englouti|r sous l'eau. Récupérez-y le |T134916:0|t|cRXP_LOOT_[Libram de justice]|r
    .collect 208851,1 --Libram of Justice (1)
    .train 410001,1
    .xp <8,1
step
    .equip 18,205420 >> |cRXP_WARN_Équipez le|r |T134916:0|t|cRXP_LOOT_[Libram de justice]|r
    .use 208851
    .itemcount 208851,1 --Libram of Justice (1)
    .train 410001,1
    .xp <8,1
step
    #completewith next
    .aura 408828 >>|cRXP_WARN_Attaquez les ennemis jusqu'à ce qu'ils soient bas en vie. Lancez|r |T135963:0|t[Marteau de la justice] |cRXP_WARN_sur eux, puis tuez-les pendant qu'ils sont étourdis à 10 reprises afin d'obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTE: Vous devez le faire sur les ennemis donnant de l'expérience pour obtenir des stacks|r
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <11,1
step
    .goto Loch Modan,37.27,89.56,15,0
    .goto Loch Modan,35.90,87.93,15,0
    .goto Loch Modan,34.24,85.59,15,0
    .goto Loch Modan,34.89,84.38,30 >>Quittez la grotte
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
    .aura 408828 >>|cRXP_WARN_Attaquez les ennemis jusqu'à ce qu'ils soient bas en vie. Lancez|r |T135963:0|t[Marteau de la justice] |cRXP_WARN_sur eux, puis tuez-les pendant qu'ils sont étourdis à 10 reprises afin d'obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTE: Vous devez le faire sur les ennemis donnant de l'expérience pour obtenir des stacks|r
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
    .aura 408828 >>|cRXP_WARN_Attaquez les ennemis jusqu'à ce qu'ils soient bas en vie. Lancez|r |T135963:0|t[Marteau de la justice] |cRXP_WARN_sur eux, puis tuez-les pendant qu'ils sont étourdis à 10 reprises afin d'obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTE: Vous devez le faire sur les ennemis donnant de l'expérience pour obtenir des stacks|r
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
    .aura 408828 >>|cRXP_WARN_Attaquez les ennemis jusqu'à ce qu'ils soient bas en vie. Lancez|r |T135963:0|t[Marteau de la justice] |cRXP_WARN_sur eux, puis tuez-les pendant qu'ils sont étourdis à 10 reprises afin d'obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTE: Vous devez le faire sur les ennemis donnant de l'expérience pour obtenir des stacks|r
    .mob Stonesplinter Geomancer
    .mob Stonesplinter Digger
    .mob Berserk Trogg
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <20,1
    .xp >22,1
step
    #completewith next
    .zone Wetlands >> Voyagez aux Paluns
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
    .aura 408828 >>|cRXP_WARN_Attaquez les ennemis jusqu'à ce qu'ils soient bas en vie. Lancez|r |T135963:0|t[Marteau de la justice] |cRXP_WARN_sur eux, puis tuez-les pendant qu'ils sont étourdis à 10 reprises afin d'obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTE: Vous devez le faire sur les ennemis donnant de l'expérience pour obtenir des stacks|r
    .mob Young Wetlands Crocolisk
    .mob Fen Dweller
    .mob Bluegill Murloc
    .mob Bluegill Forager
    .mob Bluegill Puddlejumper
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <22,1
step
    .cast 421508 >>|cRXP_WARN_Utilisez le|r |T134916:0|t|cRXP_LOOT_[Libram de justice]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Main de rétribution)]
    .aura -408828
    .use 208851
    .train 410001,1
    .xp <8,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Main de rétribution - 20 (Marche de l'Ouest)
#title Main de rétribution
#next Exorciste - 24 (Bois de la Pénombre)


step
    +|cRXP_WARN_Vous devez être au moins de niveau 20 afin d'obtenir|r |T133816:0|t[Gravure de gants (Main de rétribution)] |cRXP_WARN_uniquement dans la Marche de l'Ouest|r
    >>|cRXP_WARN_Vous DEVEZ être au moins de niveau 8, comme il s'agit du niveau requis pour équiper le|r |T134916:0|t|cRXP_LOOT_[Libram de justice]|r
    >>|cRXP_WARN_Vous devez gagner en niveau avantd'essayer d'obtenir|r |T133816:0|t[Gravure de gants (Main de rétribution)]
    .train 410001,1
    .xp >8,1
step
    +|cRXP_WARN_Vous devez être au moins de niveau 20 afin d'obtenir|r |T133816:0|t[Gravure de gants (Main de rétribution)] |cRXP_WARN_uniquement dans la Marche de l'Ouest|r
-- >>|cRXP_WARN_It is heavily recommended you get it in Loch Modan instead as it is a LOT easier and can be acquired at a lower level|r
    .train 410001,1
    .xp <8,1
    .xp >20,1
step << skip
    #completewith LibramS
    +|cRXP_WARN_Nous vous recommandons fortement d'obtenir |T133816:0|t[Gravure de gants (Main de rétribution)] plutôt au Loch Modan comme cela est BEAUCOUP plus facile|r
    .train 410001,1
    .xp <20,1
step
    #completewith next
    .zone Stormwind City >>Voyagez à Stormwind
    .train 410001,1
    .xp <8,1
step
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arthur the Faithful|r
    .train 853 >> Apprenez |T135963:0|t[Marteau de la justice]
    .target Arthur the Faithful
    .train 410001,1
    .xp <8,1
step
    #completewith next
    .zone Westfall >> Voyagez vers les Marches de l'Ouest
    .train 410001,1
    .xp <8,1
step
    #label LibramS
    .goto Westfall,69.71,73.41,30,0
    .goto Westfall,70.96,73.08,30,0
    .goto Duskwood,12.17,74.76,30,0
    .goto Westfall,70.96,73.08
    >>Tuez les |cRXP_ENEMY_Pantins défias|r. Dépouillez-les pour le |T134916:0|t|cRXP_LOOT_[Libram de justice]|r
    >>|cRXP_WARN_Faites attention comme les |cRXP_ENEMY_Pantins défias|r patrouillent en groupes de deux|r
    >>|cRXP_WARN_Évitez le |cRXP_ENEMY_Pantin défias déformé|r comme il frappe TRÈS fort|r
    .collect 208851,1 --Libram of Justice (1)
    .mob Defias Drone
    .train 410001,1
    .xp <8,1
--XX Venture Co. Drones drop it too?
step
    .equip 18,205420 >> |cRXP_WARN_Équipez le|r |T134916:0|t|cRXP_LOOT_[Libram de justice]|r
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
    .aura 408828 >>|cRXP_WARN_Attaquez les ennemis jusqu'à ce qu'ils soient bas en vie. Lancez|r |T135963:0|t[Marteau de la justice] |cRXP_WARN_sur eux, puis tuez-les pendant qu'ils sont étourdis à 10 reprises afin d'obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
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
    .aura 408828 >>|cRXP_WARN_Attaquez les ennemis jusqu'à ce qu'ils soient bas en vie. Lancez|r |T135963:0|t[Marteau de la justice] |cRXP_WARN_sur eux, puis tuez-les pendant qu'ils sont étourdis à 10 reprises afin d'obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
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
    .aura 408828 >>|cRXP_WARN_Attaquez les ennemis jusqu'à ce qu'ils soient bas en vie. Lancez|r |T135963:0|t[Marteau de la justice] |cRXP_WARN_sur eux, puis tuez-les pendant qu'ils sont étourdis à 10 reprises afin d'obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    .mob Venom Web Spider
    .mob Pygmy Venom Web Spider
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .mob Green Recluse
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <22,1
step
    .cast 421508 >>|cRXP_WARN_Utilisez le|r |T134916:0|t|cRXP_LOOT_[Libram de justice]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Main de rétribution)]
    .aura -408828
    .use 208851
    .train 410001,1
    .xp <8,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Sol sacré - 4 (Loch Modan)
#title Sol sacré
#next Main de rétribution - 14 (Loch Modan)

step
    +|cRXP_WARN_Vous DEVEZ être au moins de niveau 4 afin d'obtenir|r |T133815:0|t[Gravure de plastron (Sol sacré)] |cRXP_WARN_comme il s'agit du niveau requis pour apprendre|r |T135906:0|t[Bénédiction de puissance]
    >>|cRXP_WARN_Vous devez gagner des niveaux avantd'essayer d'obtenir|r |T133815:0|t[Gravure de plastron (Sol sacré)]
--  >>|cRXP_WARN_It is NOT recommended to use|r |T133815:0|t[Engrave Chest - Hallowed Ground] |cRXP_WARN_over|r |T133815:0|t[Engrave Chest - Divine Storm] |cRXP_WARN_or|r |T133815:0|t[Engrave Chest - Seal of Martyrdom]
    .train 425618,1
    .xp >4,1
step
    #completewith next
    .zone Ironforge >>Voyagez à Ironforge
    .train 425618,1
    .xp <4,1
step
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brandur Ironhammer|r
    .train 19740 >> Apprenez [Bénédiction de puissance]
    .target Brandur Ironhammer
    .train 425618,1
    .xp <4,1
step
    #completewith next
    #label Loch1
    .zone Loch Modan >> Voyagez jusqu'au Loch Modan
    .train 425618,1
    .xp <4,1
step
    #completewith LibramLoot
    #requires Loch1
    #label Inn1
    .goto Loch Modan,35.26,47.76,10 >>Entrez dans l'auberge de Thelsamar
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
    >>Entrez dans la pièce la plus à l'est au rez-de-chaussée
    .goto Loch Modan,35.80,49.57,8 >>Voyagez vers le |T134916:0|t|cRXP_LOOT_[Libram des bénédictions]|r
    .train 425618,1
    .xp <4,1
step
    .goto Loch Modan,35.80,49.57
    >>Ramassez le |T134916:0|t|cRXP_LOOT_[Libram des bénédictions]|r sur la table
    .collect 208849,1 --Libram of Blessings (1)
    .train 425618,1
    .xp <4,1
step
    .equip 18,208849 >> |cRXP_WARN_Équipez le|r |T134916:0|t|cRXP_LOOT_[Libram des bénédictions]|r
    .use 208849
    .itemcount 208849,1 --Libram of Blessings (1)
    .train 425618,1
    .xp <4,1
step
    .goto Loch Modan,34.90,47.80
    .aura 408828 >>|cRXP_WARN_Lancez|r |T135906:0|t[Bénédiction de puissance] |cRXP_WARN_ou|r |T135970:0|t[Bénédiction de sagesse] |cRXP_WARN_sur 5 joueurs amicaux différents (y compris vous-même) afin d'obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    .itemStat 18,QUALITY,2
    .train 425618,1
    .xp <14,1
--XX Doesn't work on NPCs
step
    .goto Loch Modan,34.90,47.80
    .aura 408828 >>|cRXP_WARN_Lancez|r |T135906:0|t[Bénédiction de puissance] |cRXP_WARN_sur 5 joueurs amicaux différents (y compris vous-même) afin d'obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    .itemStat 18,QUALITY,2
    .train 425618,1
    .xp >14,1
    .xp <4,1
step
    .cast 421508 >>|cRXP_WARN_Utilisez le|r |T134916:0|t[Libram des bénédictions] |cRXP_WARN_pour apprendre|r |T133815:0|t[Gravure de plastron (Sol sacré)]
    .aura -408828
    .use 208849
    .train 425618,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Cor de Lordaeron - 12 (Marche de l'Ouest)
#title Cor de Lordaeron
#next Main de rétribution - 20 (Marche de l'Ouest)


step
    +|cRXP_WARN_Vous devez être au moins au niveau 12 afin d'obtenir|r |T133815:0|t[Gravure de plastron (Cor de Lordaeron)] |cRXP_WARN_dans la Marche de l'Ouest uniquement|r
    >>|cRXP_WARN_Vous DEVEZ être au moins de niveau 4 comme il s'agit du niveau requis pour apprendre|r |T135906:0|t[Bénédiction de puissance]
    >>|cRXP_WARN_Vous devez gagner en niveau avant d'essayer d'obtenir|r |T133815:0|t[Gravure de plastron (Cor de Lordaeron)]
--  >>|cRXP_WARN_It is NOT recommended to use|r |T133815:0|t[Engrave Chest - Horn of Lordaeron] |cRXP_WARN_over|r |T133815:0|t[Engrave Chest - Divine Storm] |cRXP_WARN_or|r |T133815:0|t[Engrave Chest - Seal of Martyrdom]
    .train 425618,1
    .xp >4,1
step
    +|cRXP_WARN_Vous devez être au moins au niveau 12 afin d'obtenir|r |T133815:0|t[Gravure de plastron (Cor de Lordaeron)] |cRXP_WARN_dans la Marche de l'Ouest uniquement|r
--  >>|cRXP_WARN_It is heavily recommended you get it in Loch Modan instead as it is a LOT easier|r
--  >>|cRXP_WARN_It is NOT recommended to use|r |T133815:0|t[Engrave Chest - Horn of Lordaeron] |cRXP_WARN_over|r |T133815:0|t[Engrave Chest - Divine Storm] |cRXP_WARN_or|r |T133815:0|t[Engrave Chest - Seal of Martyrdom]
    .train 425618,1
    .xp <4,1
    .xp >12,1
step
    #completewith next
    .zone Stormwind City >>Voyagez à Stormwind
    .train 425618,1
    .xp <4,1
step
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arthur the Faithful|r
    .train 20271 >> Apprenez [Jugement]
    .train 19740 >> Apprenez [Bénédiction de puissance]
    .target Arthur the Faithful
    .train 425618,1
    .xp <4,1
step << skip
    #completewith next
    >>|cRXP_WARN_Nous vous recommandons fortement d'obtenir le|r |T134229:0|t[Testament de Cor de Lordaeron] |cRXP_WARN_plutôt au Loch Modan comme cela est BEAUCOUP plus facile|r
    >>|cRXP_WARN_Nous ne vous recommandons PAS d'utiliser le|r |T134229:0|t[Testament de Cor de Lordaeron] |cRXP_WARN_à la place de la|r |T236250:0|t[Rune de Tempête divine] |cRXP_WARN_ou du|r |T133745:0|t[Testament de martyr]
    .train 425618,1
    .xp <12,1
step
    #completewith next
    .zone Westfall >>Voyagez vers les Marches de l'Ouest
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
    >>|cRXP_WARN_Attaquez le |cRXP_ENEMY_Travailleur immortel|r. Tuez-le en utilisant des|r |T135920:0|t[Dégâts de sacrés] |cRXP_WARN_tels que|r |T135959:0|t[Jugement] |cRXP_WARN_lorsqu'il tombe à terre (vous avez 10 secondes pour le faire). Récupérez le|r |T134916:0|t|cRXP_LOOT_[Libram des bénédictions]|r
    >>|cRXP_WARN_Le |cRXP_ENEMY_Travailleur immortel|r apparaît en tant que mob élite, mais a les points de vie et les dégâts d'un mob normal|r
    >>|cRXP_WARN_Le |cRXP_ENEMY_Travailleur immortel|r dispose de points de réapparition dans toute la Carrière de la Côte dorée et la Mine de Jangolode. Si vous ne le trouvez pas à l'un de ces endroits, essayez-en un autre|r
    .collect 208849,1 --Libram of Blessings (1)
    .unitscan Undying Laborer
    .train 425618,1
    .xp <4,1
step
    .equip 18,208849 >> |cRXP_WARN_Équipez le|r |T134916:0|t|cRXP_LOOT_[Libram des bénédictions]|r
    .use 208849
    .itemcount 208849,1 --Libram of Blessings (1)
    .train 425618,1
    .xp <4,1
step
    .goto Westfall,56.09,47.67,20,0
    .goto Westfall,56.55,52.64
    .aura 408828 >>|cRXP_WARN_Lancez|r |T135906:0|t[Bénédiction de puissance] |cRXP_WARN_ou|r |T135970:0|t[Bénédiction de sagesse] |cRXP_WARN_sur 5 joueurs amicaux différents (y compris vous-même) afin d'obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    .itemStat 18,QUALITY,2
    .train 425618,1
    .xp <14,1
--XX Doesn't work on NPCs
step
    .goto Westfall,56.09,47.67,20,0
    .goto Westfall,56.55,52.64
    .aura 408828 >>|cRXP_WARN_Lancez|r |T135906:0|t[Bénédiction de puissance] |cRXP_WARN_sur 5 joueurs amicaux différents (y compris vous-même) afin d'obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    .itemStat 18,QUALITY,2
    .train 425618,1
    .xp <4,1
    .xp >14,1
step
    .cast 421508 >>|cRXP_WARN_Utilisez le|r |T134916:0|t|cRXP_LOOT_[Libram des bénédictions]|r |cRXP_WARN_pour apprendre|r |T133815:0|t[Gravure de plastron (Cor de Lordaeron)]
    .use 208849
    .aura -408828
    .train 425618,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Egide - 8 (Forêt d'Elwynn)
#title Egide
#next Réprimandes - 10 (Stormwind)

step
    +|cRXP_WARN_Vous DEVEZ être au minimum de niveau 8 pour obtenir|r |T133815:0|t[Gravure de plastron (Egide)] |cRXP_WARN_comme il s'agit du niveau requis pour apprendre|r |T135949:0|t[Purification]
    >>|cRXP_WARN_Vous devez encore gagner des niveaux avant d'obtenir|r |T133815:0|t[Gravure de plastron (Egide)]
    .train 425619,1
    .xp >8,1
step
    #completewith next
    .zone Stormwind City >>Voyagez à Stormwind
    .train 425619,1
    .xp <8,1
step
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arthur the Faithful|r
    .train 1152 >> Apprenez |T135949:0|t[Purification]
    .target Arthur the Faithful
    .train 425619,1
    .xp <8,1
step
    #completewith next
    #label Elwynn1
    .zone Elwynn Forest >> Voyagez à la Forêt d'Elwynn
    .train 425619,1
    .xp <8,1
step
    #completewith next
    #requires Elwynn1
    #label Cave1
    .goto Elwynn Forest,61.59,53.51,15 >>Entrez dans la mine de Jasperlode
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
    .goto Elwynn Forest,61.97,47.31,12 >> Allez vers l' |cRXP_FRIENDLY_Aventurier blessé|r sur le sol à l'intérieur de la grotte
    .target Wounded Adventurer
    .train 425619,1
    .xp <8,1
--XX no completewith next so people don't brick it by casting Purify accidentally
step
    #completewith next
    .goto Elwynn Forest,61.97,47.31
    .cast 1152 >>|cRXP_WARN_Lancez|r |T135949:0|t[Purification] |cRXP_WARN_sur l'|r |cRXP_FRIENDLY_Aventurier blessé|r
    .target Wounded Adventurer
    .train 425619,1
    .xp <8,1
step
    .goto Elwynn Forest,61.97,47.31
    >>|cRXP_WARN_Parlez à l' |cRXP_FRIENDLY_Aventurier blessé|r après lui avoir lancé|r |T135949:0|t[Purification] |cRXP_WARN_sur lui pour recevoir la|r |T134419:0|t[Rune d’Égide]
    .collect 205685,1 --Rune of Aegis (1)
    .target Wounded Adventurer
    .skipgossip
    .train 425619,1
    .xp <8,1
--XX gossipoption 109556
step
    .cast 402265 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[Rune d’Égide] |cRXP_WARN_pour apprendre|r |T133815:0|t[Gravure de plastron (Egide)]
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
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Egide - 8 (Dun Morogh)
#title Egide
#next Réprimandes - 10 (Ironforge)

step
    +|cRXP_WARN_Vous DEVEZ être au minimum de niveau 8 pour obtenir|r |T133815:0|t[Gravure de plastron (Egide)] |cRXP_WARN_comme il s'agit du niveau requis pour apprendre|r |T135949:0|t[Purification]
    >>|cRXP_WARN_Vous devez encore gagner des niveaux avant d'obtenir|r |T133815:0|t[Gravure de plastron (Egide)]
    .train 425619,1
    .xp >8,1
step
    #completewith next
    .zone Ironforge >>Voyagez à Ironforge
    .train 425619,1
    .xp <8,1
step
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brandur Ironhammer|r
    .train 1152 >> Apprenez |T135949:0|t[Purification]
    .target Brandur Ironhammer
    .train 425619,1
    .xp <8,1
step
    #completewith next
    .zone Dun Morogh >> Voyagez vers Dun Morogh
    .train 425619,1
    .xp <8,1
step
    #label LibramS
    .goto Dun Morogh,25.57,43.37,40 >> Allez vers l' |cRXP_FRIENDLY_Aventurier blessé|r sur le sol
    .target Wounded Adventurer
    .train 425619,1
    .xp <8,1
step
    #completewith next
    .goto Dun Morogh,25.57,43.37
    .cast 1152 >>|cRXP_WARN_Lancez|r |T135949:0|t[Purification] |cRXP_WARN_sur l'|r |cRXP_FRIENDLY_Aventurier blessé|r
    .target Wounded Adventurer
    .train 425619,1
    .xp <8,1
step
    .goto Dun Morogh,25.57,43.37
    >>|cRXP_WARN_Parlez à l' |cRXP_FRIENDLY_Aventurier blessé|r après lui avoir lancé|r |T135949:0|t[Purification] |cRXP_WARN_sur lui pour recevoir la|r |T134419:0|t[Rune d’Égide]
    .collect 205685,1 --Rune of Aegis (1)
    .target Wounded Adventurer
    .skipgossip
    .train 425619,1
    .xp <8,1
step
    .cast 402265 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[Rune d’Égide] |cRXP_WARN_pour apprendre|r |T133815:0|t[Gravure de plastron (Egide)]
    .use 208849
    .itemcount 205685,1 --Rune of Aegis (1)
    .train 425619,1
    .xp <8,1
--XX Rune acquirable if someone else purifies him for you?

]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Lumière divine - 10 (Stormwind)
#title Lumière divine
#next Cor de Lordaeron - 12 (Marche de l'Ouest)

step
    #completewith LibramS
    +|cRXP_WARN_Vous devez être au moins de niveau 10 afin d'obtenir|r |T133815:0|t[Gravure de plastron (Lumière divine)] |cRXP_WARN_uniquement dans Stormwind|r
    .train 410015,1
    .xp >10,1
step
    #completewith next
    #label Stormwind1
    .zone Stormwind City >>Voyagez à Stormwind
    .train 410015,1
step
    #completewith next
    #requires Stormwind1
    #label LibramS
    .goto StormwindClassic,42.77,34.32,10,0
    .goto StormwindClassic,41.37,31.53,10,0
    .goto StormwindClassic,38.10,28.10,12 >>Voyagez vers le |cRXP_FRIENDLY_Frère Romulus|r à l'intérieur de la cathédrale
    .train 410015,1
step
    .goto StormwindClassic,38.10,28.10
    .gossipoption 109653 >>Parlez au |cRXP_FRIENDLY_Frère Romulus|r
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
    >>Descendez les escaliers dans le côté ouest de la crypte de la cathédrale
    .goto StormwindClassic,32.86,24.77,8 >>Allez vers la |cRXP_LOOT_Note calcinée|r dans la crypte
    .train 410015,1
step
    .goto StormwindClassic,32.86,24.87
    >>Ramassez la |cRXP_LOOT_Note calcinée|r à côté des bougies
    .collect 205864,1 --Charred Note (1)
    .train 410015,1
step
    #completewith next
    #label Island
    .goto Duskwood,4.33,28.26,50 >>Voyagez vers |cRXP_FRIENDLY_Ada Gelhardt|r sur l'île
    .train 410015,1
step
    #completewith next
    .goto Duskwood,4.33,28.26
    .gossipoption 109610 >>Parlez à |cRXP_FRIENDLY_Ada Gelhardt|r pour commencer le combat
    .target Ada Gelhardt
    .skipgossip 205153,1
    .train 410015,1
--XX 109612 "As one candle is snuffed out, another is lit"
--XX 109611 "I've been sent by brother Romulus. Please, Ada, return with me to the Cathedral of Light"
--XX 109610 "I see. I'm sorry it has come to this, sister. (Fight Ada)"
step
    #requires Island
    .goto Duskwood,4.33,28.26
    >>Vainquez |cRXP_ENEMY_Ada Gelhardt|r
    >>|cRXP_WARN_Souvenez-vous de lancer|r |T135924:0|t[Sceau du Croisé] |cRXP_WARN_sur elle|r
    >>|cRXP_WARN_Soyez prudent, elle lance|r |T136197:0|t[Horion de l'ombre] |cRXP_WARN_(inflige instantanément 45 dégâts d'ombre. Coûte 75 mana. Vous devriez la tuer assez vite pour qu'elle ne le lance que 3 fois)|r
    >>|cRXP_WARN_Après avoir vaincu |cRXP_ENEMY_Ada Gelhardt|r:|r
    >>Parlez à |cRXP_FRIENDLY_Ada Gelhardt|r de nouveau pour recevoir la |T134419:0|t[Rune de Lumière divine]
    .collect 205897,1 --Rune of Divine Light (1)
    .target Ada Gelhardt
    .skipgossip 205153,1
    .train 410015,1
--XX Must have had the Charred Note to unlock the dialogue
step
    #sticky
    .destroy 205864 >> Supprimez la |T134939:0|t[Note calciné] de vos sacs, comme vous n'en avez plus besoin
step
    .train 410015 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[Rune de Lumière divine] |cRXP_WARN_pour apprendre|r |T133815:0|t[Gravure de plastron (Lumière divine)]
    .use 205897
    .itemcount 205897,1 --Rune of Divine Light (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Tempête divine - 25 (Sombrivage)
#title Tempête divine
#next Sacrifice divin - 25 (Azeroth)

step
    #completewith LibramS
    +|cRXP_WARN_Vous devez être au moins de niveau 25 afin d'obtenir la|r |T133815:0|t[Gravure de plastron (Tempête divine)] |cRXP_WARN_ET vous devriez trouver 2 autre paladins de niveau 25 afin de le faire confortablement|r
    .train 410014,1
--  .xp >25,1
step
    #completewith LibramS
    #label DarkshoreT
    .zone Darkshore >> Voyagez à Sombrivage
    .train 410014,1
step
    #completewith next
    #requires DarkshoreT
    .goto Darkshore,56.49,26.44,10 >>Voyagez à la Tour d'Althalaxx
    .train 410014,1
step
    #label LibramS
    .goto Darkshore,56.20,26.46
    >>Ouvrez l' |cRXP_PICK_Orbe étrange|r sur la table tout en haut de la Tour d’Althalaxx. Récupérez l' |cRXP_LOOT_Orbe d’Althalaxx|r
    >>|cRXP_WARN_Faites attention, comme les mobs dans cette tour sont difficiles à tuer (Niveau 28-31)|r
    >>|cRXP_WARN_Soyez prudent, comme les |cRXP_ENEMY_Anéantisseurs de la Rive noire|r lancent|r |T136197:0|t[Trait de l'ombre] |cRXP_WARN_(incantation à distance : inflige environ 175 dégâts d'ombre). Cachez-vous (LoS) d'eux le plus souvent possible|r
    .collect 209836,1,78089,1 --Athalaxx Orb (1)
    .train 410014,1
step
    #completewith Delgren1
    #label AshenvaleT
    .zone Ashenvale >> Voyagez à Ashenvale
    .train 410014,1
step
    #completewith next
    #requires AshenvaleT
    .goto Ashenvale,26.19,38.69,10 >>Voyagez vers |cRXP_FRIENDLY_Delgren le Purificateur|r
    .train 410014,1
step
    .goto Ashenvale,26.19,38.69
    >>Parlez à |cRXP_FRIENDLY_Delgren the Purificateur|r
    .turnin 78088 >> Rendez la quête Un artéfact étrange
    .accept 78089 >> Acceptez la quête Les conseils de Hurlevent
    .target Delgren the Purifier
    .train 410014,1
    .itemcount 209836,1 --Athalaxx Orb (1)
step
    #label Delgren1
    .goto Ashenvale,26.19,38.69
    >>Parlez à |cRXP_FRIENDLY_Delgren the Purificateur|r
    .accept 78089 >> Acceptez la quête Les conseils de Hurlevent
    .target Delgren the Purifier
    .train 410014,1
    .isQuestTurnedIn 78088
step
    #completewith Katherine1
    #label StormwindT1
    .zone Stormwind City >> Voyagez à Stormwind
    .train 410014,1
step
    #completewith next
    #requires StormwindT1
    .goto StormwindClassic,42.77,34.32,10,0
    .goto StormwindClassic,41.37,31.53,10,0
    .goto StormwindClassic,39.19,31.03,10,0
    .goto StormwindClassic,37.23,31.87,12 >>Voyagez vers |cRXP_FRIENDLY_Katherine la Pure|r à l'intérieur de la cathédrale
    .train 410014,1
step
    #label Katherine1
    .goto StormwindClassic,37.23,31.87
    >>Parlez à |cRXP_FRIENDLY_Katherine la Pure|r
    .turnin 78089 >> Rendez la quête Les conseils de Stormwind
    .accept 78090 >> Acceptez la quête Seconde opinion
    .target Katherine the Pure
    .train 410014,1
step
    #completewith next
    .goto StormwindClassic,29.04,74.28,10,0
    .goto StormwindClassic,27.40,76.48,10,0
    .goto StormwindClassic,27.14,77.83,5,0
    .goto StormwindClassic,26.12,77.23,8 >>Voyagez vers |cRXP_FRIENDLY_Ursula Deline|r dans l'auberge de l'Agneau assassiné
    .train 410014,1
step
    .goto StormwindClassic,26.12,77.23
    >>Parlez à |cRXP_FRIENDLY_Ursula Deline|r
    .turnin 78090 >> Rendez la quête Seconde opinion
    .accept 78091 >> Acceptez la quête Avec une pincée de sels
    .target Ursula Deline
    .train 410014,1
step
    #completewith theairissalt
    .goto StormwindClassic,66.28,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Redridge >> Volez vers Les Carmines
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
    >>|cRXP_WARN_Si vous n'avez pas déjà|r |T134596:0|t[Gravure de pantalon (Bouclier du vengeur)] |cRXP_WARN_, il est rentable de le faire maintenant. Si vous ne le voulez pas, passez cette étape|r
    >>Tuez |cRXP_ENEMY_Dro'zem le Blasphémateur|r. Dépouillez-le pour la |T134419:0|t[Rune du vengeur]|r
    >>|cRXP_WARN_Il peut apparaître à 3 emplacements différents: sud-est (Vallée des Étripeurs), au milieu (camp à l'extérieur de la Tour de Guet-de-Pierre) et au nord (Camp des Étripeurs). Il réapparaît rapidement bien qu'il soit un "rare"|r
    >>|cRXP_WARN_Demandez dans le channel de Discussion générale si un autre joueur l'a aperçu pour ne pas le chercher trop longtemps (tapez /1 dans le chat)|r
    .collect 211488,1 --Rune of the Avenger (1)
    .unitscan Dro'zem the Blasphemous
    .train 410008,1
step
    .cast 402265 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[Rune du vengeur] |cRXP_WARN_pour apprendre|r |T134596:0|t[Gravure de pantalon (Bouclier du vengeur)]
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
    >>Tuez les |cRXP_ENEMY_Invocateurs Blackrock|r, les |cRXP_ENEMY_Champions Blackrock|r et les |cRXP_ENEMY_Pisteurs Blackrock|r. Dépouillez-les pour les |cRXP_LOOT_Sels d'invocateur|r
    >>Les |cRXP_WARN_|cRXP_LOOT_Sels d'invocateur|r peuvent être ramassés par chaque membre de votre groupe (chaque mob a une chance de faire tomber des Sels pour chaque personne de votre groupe), donc vous POUVEZ facilement vous grouper avec d'autres joueurs pour cette quête|r
    .complete 78091,1 --Summoner's Salt (14)
    .mob Blackrock Summoner
    .mob Blackrock Champion
    .mob Blackrock Tracker
    .train 410014,1
step
    #completewith Ursula1
    #label StormwindT2
    .zone Stormwind City >> Voyagez à Stormwind
    .train 410014,1
step
    #completewith next
    #requires StormwindT2
    .goto StormwindClassic,29.04,74.28,10,0
    .goto StormwindClassic,27.40,76.48,10,0
    .goto StormwindClassic,27.14,77.83,5,0
    .goto StormwindClassic,26.12,77.23,8 >>Voyagez vers |cRXP_FRIENDLY_Ursula Deline|r dans l'auberge de l'Agneau assassiné
    .train 410014,1
step
    #label Ursula1
    .goto StormwindClassic,26.12,77.23
    >>Parlez à |cRXP_FRIENDLY_Ursula Deline|r
    .turnin 78091 >> Rendez la quête Avec une pincée de sels
    .accept 78092 >> Acceptez la quête Il faut le détruire
    .target Ursula Deline
    .train 410014,1
step
    #completewith Motes
    #label AshenvaleT
    .zone Ashenvale >> Voyagez à Ashenvale
    .train 410014,1
step
    #completewith next
    #requires AshenvaleT
    .goto Ashenvale,84.12,72.10,200 >>Voyagez vers le Canyon de la Malechute
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
    >>Tuez les |cRXP_ENEMY_Infernaux incendiaires|r, les |cRXP_ENEMY_Gangregardes|r, les |cRXP_ENEMY_Flagellantes de Mannoroc|r et les |cRXP_ENEMY_Molosses de la Légion|r. Dépouillez-les pour les |cRXP_LOOT_Granules de Mannoroth|r
    >>Les |cRXP_WARN_|cRXP_LOOT_Granules de Mannoroth|r peuvent être ramassés par chaque membre de votre groupe (chaque mob a une chance de faire tomber des Granules pour chaque personne de votre groupe), donc vous POUVEZ facilement vous grouper avec d'autres joueurs pour cette quête|r
    >>|cRXP_WARN_Soyez prudent comme les |cRXP_ENEMY_Infernaux incendiaires|r ont une|r |T135802:0|t[Aura d'immolation] |cRXP_WARN_(Dégâts passifs en portée de mêlée: inflige 27-28 dégâts de feu toutes les 3 secondes), les |cRXP_ENEMY_Gangregardes|r lancent|r |T132154:0|t[Renverser] |cRXP_WARN_(Instantané en mêlée: inflige environ 140 dégâts et vous étourdit pendant 2 secondes), et les |cRXP_ENEMY_Flagellantes de Mannoroc|r lancent|r |T135817:0|t[Fouet de flammes] |cRXP_WARN_(Instantané à distance: inflige environ 45 dégâts de Feu, puis 12-13 dégâts de Feu toutes les 3 secondes pendant 21 secondes) et|r |T136197:0|t[Trait de l'ombre] |cRXP_WARN_(Incantation à distance: inflige environ 125 dégâts d'Ombre)|r
    .complete 78092,1 --Mote of Mannoroth (12)
    .mob Searing Infernal
    .mob Felguard
    .mob Mannoroc Lasher
    .mob Legion Hound
    .train 410014,1
step
    >>Cliquez sur la |cRXP_PICK_Lance de Mannoroth|r dans les airs, puis cliquez sur l' |cRXP_PICK_Orbe fracassé|r au sol
    .turnin 78092 >> Rendez la quête Il faut le détruire
    .goto Ashenvale,89.48,77.03
    .accept 78093 >> Acceptez la quête Retourner voir Delgren
    .goto Ashenvale,89.44,77.01
    .train 410014,1
step
    #completewith next
    .goto Ashenvale,26.19,38.69,10 >>Voyagez vers |cRXP_FRIENDLY_Delgren le Purificateur|r
    .train 410014,1
step
    .goto Ashenvale,26.19,38.69
    >>Parlez à |cRXP_FRIENDLY_Delgren the Purificateur|r
    .turnin 78093 >> Rendez la quête Retourner voir Delgren
    .train 410014 >> Vous apprendrez ainsi |T133815:0|t[Gravure de plastron (Tempête divine)]
    .target Delgren the Purifier
    .train 410014,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Source d'inspiration - 6 (Forêt d'Elwynn)
#title Source d'inspiration
#next Egide - 8 (Forêt d'Elwynn)

step
    #completewith LibramS
    +|cRXP_WARN_Vous devriez être au moins de niveau 6 pour obtenir|r |T134596:0|t[Gravure de pantalon (Source d'inspiration)] |cRXP_WARN_à la Forêt d'Elwynn avec un autre joueur|r
    .train 410011,1
    .xp >6,1
step
    #completewith next
    #label Elwynn1
    .zone Elwynn Forest >> Voyagez à la Forêt d'Elwynn
    .train 410011,1
step
    #completewith next
    #requires Elwynn1
    .goto Elwynn Forest,52.28,84.56,40 >>Voyagez vers les |cRXP_FRIENDLY_Restes d'aventurier|r
    .train 410011,1
step
    #label LibramS
    .goto Elwynn Forest,52.28,84.56
    >>|cRXP_WARN_Rejoignez un groupe avec un autre Paladin, Prêtre ou Druide se tenant sur les |cRXP_FRIENDLY_Restes d'aventurier|r, ou demandez l'aide à un Paladin, un Prêtre ou un Druide dans le canal Général (Tapez /1 dans le chat)|r
    >>|cRXP_WARN_Parlez aux |cRXP_FRIENDLY_Restes d'aventurier|r sur le sol pour commencer le rituel, OU cliquez sur le|r |T136223:0|t[Rituel d'esprit] de l'autre joueur|cRXP_WARN_(en étant dans leur groupe)|r
    >>|cRXP_WARN_Un |cRXP_FRIENDLY_Esprit de l'aventurier|r apparaîtra et mourra après avoir complété le rituel. Dépouillez-le pour la|r |T134419:0|t|cRXP_LOOT_[Rune d'Inspiration]|r
    .collect 206264,1 --Rune of Inspiration (1)
    .target Adventurer's Remains
    .target Adventurer's Spirit
    .skipgossip
    .train 410011,1
step
    .cast 402265 >>|cRXP_WARN_Utilisez la|r |T134419:0|t|cRXP_LOOT_[Rune d'Inspiration]|r |cRXP_WARN_pour apprendre|r |T134596:0|t[Gravure de pantalon (Source d'inspiration)]
    .use 206264
    .itemcount 206264,1 --Rune of Inspiration (1)
    .train 410011,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Source d'inspiration - 6 (Dun Morogh)
#title Source d'inspiration
#next Egide - 8 (Dun Morogh)

step
    #completewith LibramS
    +|cRXP_WARN_Vous devriez être au moins de niveau 6 pour obtenir|r |T134596:0|t[Gravure de pantalon (Source d'inspiration)] |cRXP_WARN_à Dun Morogh avec un autre joueur|r
    .train 410011,1
    .xp >6,1
step
    #completewith LibramS
    #label Dun1
    .zone Dun Morogh >> Voyagez vers Dun Morogh
    .train 410011,1
step
    #completewith next
    #requires Dun1
    #label Cave1
    .goto Dun Morogh,42.47,54.22,20,0
    .goto Dun Morogh,42.28,52.82,20 >>Entrez dans l'antre Gris
    .train 410011,1
step
    #completewith next
    #label LibramS
    #requires Cave1
    .goto Dun Morogh,42.06,51.86,20,0
    .goto Dun Morogh,41.42,50.97,20,0
    .goto Dun Morogh,41.24,50.28,20,0
    .goto Dun Morogh,41.25,49.68,20,0
    .goto Dun Morogh,43.03,49.63,20 >>Allez aux |cRXP_FRIENDLY_Restes d'aventurier|r sur le sol à l'intérieur de la grotte
    .train 410011,1
step
    .goto Dun Morogh,43.03,49.63
    >>|cRXP_WARN_Rejoignez un groupe avec un autre Paladin, Prêtre ou Druide se tenant sur les |cRXP_FRIENDLY_Restes d'aventurier|r, ou demandez l'aide à un Paladin, un Prêtre ou un Druide dans le canal Général (Tapez /1 dans le chat)|r
    >>|cRXP_WARN_Parlez aux |cRXP_FRIENDLY_Restes d'aventurier|r sur le sol pour commencer le rituel, OU cliquez sur le|r |T136223:0|t[Rituel d'esprit] de l'autre joueur|cRXP_WARN_(en étant dans leur groupe)|r
    >>|cRXP_WARN_Un |cRXP_FRIENDLY_Esprit de l'aventurier|r apparaîtra et mourra après avoir complété le rituel. Dépouillez-le pour la|r |T134419:0|t|cRXP_LOOT_[Rune d'Inspiration]|r
    .collect 206264,1 --Rune of Inspiration (1)
    .target Adventurer's Remains
    .target Adventurer's Spirit
    .skipgossip
    .train 410011,1
step
    .cast 402265 >>|cRXP_WARN_Utilisez la|r |T134419:0|t|cRXP_LOOT_[Rune d'Inspiration]|r |cRXP_WARN_pour apprendre|r |T134596:0|t[Gravure de pantalon (Source d'inspiration)]
    .use 206264
    .itemcount 206264,1 --Rune of Inspiration (1)
    .train 410011,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Réprimandes - 10 (Ironforge)
#title Réprimandes
#next Sceau du martyr - 10 (Stormwind)

step
    #completewith LibramS
    +|cRXP_WARN_Vous devriez être au moins de niveau 10 afin d'obtenir|r |T134596:0|t[Gravure de pantalon (Réprimandes)] |cRXP_WARN_seul à Ironforge|r
    .train 425621,1
    .xp >10,1
step
    #completewith next
    #label Ironforge1
    .zone Ironforge >>Voyagez à Ironforge
    .train 425621,1
step
    #completewith next
    #requires Ironforge1
    #label LibramS
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>Voyagez vers |cRXP_FRIENDLY_Bruuk Barbe-d'orge|r à l'intérieur de l'auberge
    .train 425621,1
step
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>Parlez à |cRXP_FRIENDLY_Bruuk Barbe-d'orge|r à l'intérieur
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425621,1
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step
    .goto Ironforge,72.40,73.63
    .gossipoption 109084 >>Parlez à |cRXP_FRIENDLY_Bruart|r pour le combattre
    >>Vainquez |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_Soyez prudent comme il lance|r |T132939:0|t[Revers] |cRXP_WARN_(vous étourdit pendant 2 secondes)|r
    >>|cRXP_WARN_Souvenez-vous d'utiliser|r |T135924:0|t[Sceau du Croisé] |cRXP_WARN_sur lui|r
    >>|cRXP_WARN_Ne lancez PAS|r |T135906:0|t[Bénédiction de puissance] |cRXP_WARN_accidentellement sur lui|r
    >>|cRXP_WARN_Emmenez-le à l'étage vers le balcon, puis sautez hors de l'auberge et lancez|r |T135920:0|t[Lumière sacrée] |cRXP_WARN_si vous en avez besoin|r
    .mob Bruart
    .skipgossip 209004,1
    .train 425621,1
--XX 109084 "Seems you've had a few too many"
--XX Check if another player can skip the "how's business" dialogue for you (paladin, warrior)
step
    .goto Ironforge,72.40,73.63,-1
    .goto Ironforge,72.53,76.94,-1
    >>Vainquez |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_Soyez prudent comme il lance|r |T132939:0|t[Revers] |cRXP_WARN_(vous étourdit pendant 2 secondes)|r
    >>|cRXP_WARN_Souvenez-vous d'utiliser|r |T135924:0|t[Sceau du Croisé] |cRXP_WARN_sur lui|r
    >>|cRXP_WARN_Ne lancez PAS|r |T135906:0|t[Bénédiction de puissance] |cRXP_WARN_accidentellement sur lui|r
    >>|cRXP_WARN_Emmenez-le à l'étage vers le balcon, puis sautez hors de l'auberge et lancez|r |T135920:0|t[Lumière sacrée] |cRXP_WARN_si vous en avez besoin|r
    >>|cRXP_WARN_Après avoir vaincu |cRXP_ENEMY_Bruart|r:|r
    >>Parlez à |cRXP_FRIENDLY_Bruuk Barbe-d'orge|r à nouveau pour recevoir la |T134419:0|t[Rune de Réprimandes]
    >>|cRXP_WARN_S'il ne vous donne pas la|r |T134419:0|t[Rune de Réprimandes]|cRXP_WARN_, vous pourriez avoir besoin de combattre |cRXP_ENEMY_Bruart|r de nouveau|r
    .collect 205683,1 --Rune of Rebuke (1)
    .target Bruuk Barleybeard
    .skipgossip 5570,2,1
    .skipgossip 209004,1
    .train 425621,1
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
step
    .cast 402265 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[Rune de Réprimandes] |cRXP_WARN_pour apprendre|r |T134596:0|t[Gravure de pantalon (Réprimandes)]
    .use 205683
    .itemcount 205683,1 --Rune of Rebuke (1)
    .train 425621,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Réprimandes - 10 (Stormwind)
#title Réprimandes
#next Sceau du martyr - 10 (Stormwind)

step
    #completewith LibramS
    +|cRXP_WARN_Vous devriez être au moins de niveau 10 afin d'obtenir|r |T134596:0|t[Gravure de pantalon (Réprimandes)] |cRXP_WARN_seul à Stormwind|r
    .train 425621,1
    .xp >10,1
step
    #completewith next
    #label Stormwind1
    .zone Stormwind City >>Voyagez à Stormwind
    .train 425621,1
step
    #completewith next
    #requires Stormwind1
    #label LibramS
    .goto StormwindClassic,21.56,59.60,10,0
    .goto StormwindClassic,22.60,64.62,10 >>Voyagez vers |cRXP_FRIENDLY_Liv Bradford|r à l'intérieur de l'auberge du Parc
    .train 425621,1
step
    .goto StormwindClassic,22.60,64.62
    .gossipoption 109047 >>Parlez à |cRXP_FRIENDLY_Liv Bradford|r à l'intérieur
    .target Liv Bradford
    .skipgossip 203475,2,1
    .train 425621,1
--XX 109045 "How's business?"
--XX 109047 "Sounds like you need someone to bounce him for you."
--VV SKIPGOSSIP needs testing, if broken change to 1,1
step
    .goto StormwindClassic,21.21,62.78
    .gossipoption 109084 >>Parlez à |cRXP_FRIENDLY_Stuart|r pour lancer un combat
    >>Vainquez |cRXP_ENEMY_Stuart|r
    >>|cRXP_WARN_Soyez prudent comme il lance|r |T132939:0|t[Revers] |cRXP_WARN_(vous étourdit pendant 2 secondes)|r
    >>|cRXP_WARN_Souvenez-vous d'utiliser|r |T135924:0|t[Sceau du Croisé] |cRXP_WARN_sur lui|r
    >>|cRXP_WARN_Ne lancez PAS|r |T135906:0|t[Bénédiction de puissance] |cRXP_WARN_accidentellement sur lui|r
    >>|cRXP_WARN_Amenez-le (kite) en haut des escaliers, puis descendez pour lancer|r |T135920:0|t[Lumière sacrée] |cRXP_WARN_si nécessaire|r
    .mob Stuart
    .skipgossip 203478,1
    .train 425621,1
--XX 109084 "Seems you've had a few too many"
--XX Check if another player can skip the "how's business" dialogue for you (paladin, warrior)
step
    .goto StormwindClassic,21.21,62.78,-1
    .goto StormwindClassic,22.60,64.62,-1
    >>Vainquez |cRXP_ENEMY_Stuart|r
    >>|cRXP_WARN_Soyez prudent comme il lance|r |T132939:0|t[Revers] |cRXP_WARN_(vous étourdit pendant 2 secondes)|r
    >>|cRXP_WARN_Souvenez-vous d'utiliser|r |T135924:0|t[Sceau du Croisé] |cRXP_WARN_sur lui|r
    >>|cRXP_WARN_Ne lancez PAS|r |T135906:0|t[Bénédiction de puissance] |cRXP_WARN_accidentellement sur lui|r
    >>|cRXP_WARN_Amenez-le (kite) en haut des escaliers, puis descendez pour lancer|r |T135920:0|t[Lumière sacrée] |cRXP_WARN_si nécessaire|r
    >>|cRXP_WARN_Après avoir vaincu |cRXP_ENEMY_Stuart|r:|r
    >>Parlez à |cRXP_FRIENDLY_Liv Bradford|r de nouveau pour recevoir la |T134419:0|t[Rune de Réprimandes]
    >>|cRXP_WARN_Si elle ne vous donne pas la|r |T134419:0|t[Rune de Réprimandes]|cRXP_WARN_, vous allez peut-être devoir affronter |cRXP_ENEMY_Stuart|r à nouveau|r
    .collect 205683,1 --Rune of Rebuke (1)
    .target Liv Bradford
    .skipgossip 203478,1
    .skipgossip 203475,2,1
    .train 425621,1
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
--VV SKIPGOSSIP needs testing, if broken change to 1,1
step
    .cast 402265 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[Rune de Réprimandes] |cRXP_WARN_pour apprendre|r |T134596:0|t[Gravure de pantalon (Réprimandes)]
    .use 205683
    .itemcount 205683,1 --Rune of Rebuke (1)
    .train 425621,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Maîtrise des auras - 24 (Bois de la Pénombre)
#title Maîtrise des auras
#next Guide de lumière - 25 (Réputation)

step
    +|cRXP_WARN_Vous DEVEZ être au moins de niveau 24 pour obtenir|r |T134596:0|t[Gravure de pantalon (Maîtrise des auras)] |cRXP_WARN_comme il s'agit du niveau requis pour apprendre|r |T135983:0|t[Renvoi des morts-vivants]
    >>|cRXP_WARN_Vous devez gagner plus de niveaux avant d'essayer d'obtenir|r |T134596:0|t[Gravure de pantalon (Maîtrise des auras)]
    .train 416037,1
    .xp >24,1
step
    #completewith next
    .zone Stormwind City >>Voyagez à Stormwind
    .train 416037,1
    .xp <24,1
step
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arthur the Faithful|r
    .train 2878 >> Apprenez |T135983:0|t[Renvoi des morts-vivants]
    .target Arthur the Faithful
    .train 416037,1
    .xp <24,1
step
    #completewith next
    .zone Duskwood >> Voyagez au Bois de la Pénombre
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
    >>Tuez les |cRXP_ENEMY_Cours-la-nuit défias|r, les |cRXP_ENEMY_Lames nocturnes défias|r et les |cRXP_ENEMY_Enchanteurs défias|r. Dépouillez-les pour le |T134916:0|t|cRXP_LOOT_[Libram de bannissement]|r
    >>|cRXP_WARN_Faites attention aux |cRXP_ENEMY_Cours-la-nuit défias|r et les |cRXP_ENEMY_Lames nocturnes défias|r et leur|r |T136093:0|t[Poison engourdissant] |cRXP_WARN_(Réduit la vitesse de déplacement de 35% pendant 25 secondes), leur|r |T132090:0|t[Attaque sournoise] |cRXP_WARN_(inflige le double des dégâts dans le dos. Les |cRXP_ENEMY_Cours-la-nuits défias|r sont|r |T132320:0|t[Camouflés]|cRXP_WARN_, et les |cRXP_ENEMY_Enchanteurs défias|r lancent|r |T135812:0|t[Boule de feu] |cRXP_WARN_(inflige environ 150 dégâts de feu) et ont une|r |T135843:0|t[Armure de givre] |cRXP_WARN_(ralentit l'attaque et la vitesse de déplacement quand vous les attaquez)|r
    .collect 211472,1 -- Libram of Banishment (1)
    .mob Defias Night Runner
    .mob Defias Night Blade
    .mob Defias Enchanter
    .train 416037,1
    .xp <24,1
step
    .equip 18,211472 >> |cRXP_WARN_Équipez le|r |T134916:0|t|cRXP_LOOT_[Libram de bannissement]|r
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
    >>Tuez les |cRXP_ENEMY_Démons squelettes|r et les |cRXP_ENEMY_Squelettes infernaux|r
    .aura 408828 >>|cRXP_WARN_Lancez|r |T135983:0|t[Renvoi des morts-vivants] |cRXP_WARN_puis tuez-les avec|r |T135903:0|t[Exorcisme] |cRXP_WARN_5 fois pour obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTE: Vous devez le faire sur les ennemis donnant de l'expérience pour obtenir des stacks|r
    .mob Skeletal Fiend
    .mob Skeletal Horror
    .itemStat 18,QUALITY,2
    .train 416037,1
    .xp <24,1
step
    .cast 421508 >>|cRXP_WARN_Utilisez le|r |T134916:0|t|cRXP_LOOT_[Libram de bannissement]|r |cRXP_WARN_pour apprendre la|r |T134596:0|t[Gravure de pantalon (Maîtrise des auras)]
    .use 211472
    .aura -408828
    .train 416037,1
    .xp <24,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Bouclier du vengeur - 25 (Carmines)
#title Bouclier du vengeur
#next Source d'inspiration - 6 (Forêt d'Elwynn)

step
    +|cRXP_WARN_Vous devez être au moins de niveau 25 pour obtenir|r |T134596:0|t[Gravure de pantalon (Bouclier du vengeur)] |cRXP_WARN_uniquement dans les Carmines|r
    .train 410008,1
    .xp >25,1
step
    #completewith next
    .zone Redridge Mountains >> Voyagez vers Les Carmines
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
    >>Tuez |cRXP_ENEMY_Dro'zem le Blasphémateur|r. Dépouillez-le pour la |T134419:0|t[Rune du vengeur]|r
    >>|cRXP_WARN_Il peut apparaître à 3 emplacements différents: sud-est (Vallée des Étripeurs), au milieu (camp à l'extérieur de la Tour de Guet-de-Pierre) et au nord (Camp des Étripeurs). Il réapparaît rapidement bien qu'il soit un "rare"|r
    >>|cRXP_WARN_Demandez dans le channel de Discussion générale si un autre joueur l'a aperçu pour ne pas le chercher trop longtemps (tapez /1 dans le chat)|r
    .collect 211488,1 --Rune of the Avenger (1)
    .unitscan Dro'zem the Blasphemous
    .train 410008,1
step
    .cast 402265 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[Rune du vengeur] |cRXP_WARN_pour apprendre|r |T134596:0|t[Gravure de pantalon (Bouclier du vengeur)]
    .use 211488
    .itemcount 211488,1 --Rune of the Avenger (1)
    .train 410008,1
--VV Overall paladin routing can be improved if Divine Sac turnin has items bought before Divine Storm -> Turned in after Divine Storm (run down after accepting Return to Delgren -> Turn in -> Fly to Astranaar -> DS Turnin)
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Guide des runes et des livres
#subgroup Ceinture
#title Protection malléable
#name Protection malléable - 34 (Hautes-terres Arathies)

step
    #optional
    .train 426175,1
    +|cRXP_WARN_Vous devez être au moins au niveau 34 avant de pouvoir obtenir la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de piété|r]
    .xp >34,1
step
    .train 426175,1
    #completewith next
    .train 20164,1
    +|cRXP_WARN_Vous devez apprendre le|r |T135971:0|t[Sceau de justice] |cRXP_WARN_pour obtenir la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Piété|r]
step
    .train 426175,1
    .train 642,1
    .train 1020,1
    +|cRXP_WARN_Vous devez apprendre|r |T135896:0|t[Bouclier divin] |cRXP_WARN_pour obtenir la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Piété|r]
step
    .train 426175,1
    #optional
    .train 20164,1
    +|cRXP_WARN_Vous devez apprendre le|r |T135971:0|t[Sceau de justice] |cRXP_WARN_pour obtenir la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Piété|r]
step
    .train 426175,1
    #completewith next
    .zone Arathi Highlands >>Voyagez aux Hautes-terres d'Arathi
step
    .train 426175,1
    #completewith BeadSoJ1
    .goto Arathi Highlands,68.8,71.8,0
    .goto Arathi Highlands,35.4,44.8,0
    +|cRXP_WARN_Les trolls et les ogres des Hautes-terres Arathies peuvent faire tomber n'importe lequel des|r |T135261:0|t[|cRXP_LOOT_Chapelets ternis|r]
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
    >>Tuez les |cRXP_ENEMY_Mercenaires du Syndicat|r, les |cRXP_ENEMY_Eclaireurs du Syndicat|r et les |cRXP_ENEMY_Malandrins du Syndicat|r. Dépouillez-les pour le |T135261:0|t[|cRXP_LOOT_Chapelet terni I|r]
    .collect 213444,1 --Tarnished Prayer Bead I
    .mob Syndicate Mercenary
    .mob Syndicate Pathstalker
    .mob Syndicate Highwayman
step
    .train 426175,1
    #requires BeadBoM1
    #label BeadBoM2
    #completewith Rosary
    +|cRXP_WARN_Lancez|r |T135906:0|t[Bénédiction de puissance] |cRXP_WARN_sur vous-même|r
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
    >>|cRXP_WARN_Continuez à tuer des mobs pour recevoir le|r |T135260:0|t[|cRXP_LOOT_Chapelet divin I|r]
    >>|cRXP_WARN_Vous devez avoir le buff|r |T135906:0|t[Bénédiction de puissance] |cRXP_WARN_|r
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
    >>Tuez les |cRXP_ENEMY_Mercenaires du Syndicat|r, les |cRXP_ENEMY_Eclaireurs du Syndicat|r et les |cRXP_ENEMY_Malandrins du Syndicat|r. Dépouillez-les pour le |T135261:0|t[|cRXP_LOOT_Chapelet terni II|r]
    .collect 213445,1 --Tarnished Prayer Bead II
    .mob Syndicate Mercenary
    .mob Syndicate Pathstalker
    .mob Syndicate Highwayman
step
    .train 426175,1
    #completewith Rosary
    #requires BeadDS1
    #label BeadDS2
    >>|cRXP_WARN_Lancez|r |T135896:0|t[Bouclier divin] |cRXP_WARN_encombat et sous 40% de vie pour recevoir le|r |T135260:0|t[|cRXP_LOOT_Chapelet divin II|r]
    .collect 213449,1 --Divine Prayer Bead II
    .usespell 642
    .usespell 1020
step
    .train 426175,1
    #completewith Rosary
    #label BeadSoJ1
    >>Tuez les |cRXP_ENEMY_Mercenaires du Syndicat|r, les |cRXP_ENEMY_Eclaireurs du Syndicat|r et les |cRXP_ENEMY_Malandrins du Syndicat|r. Dépouillez-les pour le |T135261:0|t[|cRXP_LOOT_Chapelet terni III|r]
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
    >>|cRXP_WARN_Lancez|r |T135971:0|t[Sceau de justice] |cRXP_WARN_suivi de|r |T135959:0|t[Jugement] |cRXP_WARN_sur un ennemi qui s'enfuit pour recevoir le|r |T135260:0|t[|cRXP_LOOT_Chapelet divin III|r]
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
    >>|cRXP_WARN_Utilisez un|r |T135260:0|t[|cRXP_LOOT_Chapelet divin I|r] |cRXP_WARN_pour les combiner en|r |T133289:0|t[|cRXP_LOOT_Rosaire de la Lumière|r]
    .use 213448
    .use 213449
    .use 213450
    .collect 213447,1
step
    .train 426175,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Frère Atticus|r à l'intérieur du donjon de Stormgarde pour recevoir la |T134419:0|t[|cRXP_FRIENDLY_Rune de Piété|r]
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
    .train 426175 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Piété|r] |cRXP_WARN_pour apprendre|r |T236251:0|t[Protection malléable]
]])


RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Guide des runes et des livres
#subgroup Ceinture
#name Fourreau de lumière - 40 (Azeroth)
#title Fourreau de lumière

step
    #completewith next
    .zone Desolace >>Voyagez à Désolace
step
    .train 426178,1
    .goto Desolace,52.730,84.761
    >>Ramassez le |cRXP_PICK_Marteau de guerre brisé|r au sol pour le |T133041:0|t[|cRXP_LOOT_Marteau brisé|r]
    .use 215441 >>|cRXP_WARN_Utilisez le |T133041:0|t[|cRXP_LOOT_Marteau brisé|r] pour lancer la quête|r
    .collect 215441,1
    .accept 79939 >>Acceptez la quête Le marteau brisé
step
    .train 426178,1
    #loop
    .goto Desolace,52.6,85.6,0
    .goto Desolace,55.6,70.4,0
    .goto Desolace,47,2,75.2,0
    .goto Desolace,52.6,85.6,40,0
    .goto Desolace,55.6,70.4,40,0
    .goto Desolace,47,2,75.2,60,0
    >>Tuez les |cRXP_ENEMY_Invocateurs de la Lame ardente|r. Dépouillez-les pour une |T133471:0|t[|cRXP_LOOT_Lettre déchirée|r]
    .collect 216956,1,79939,1
    .mob Burning Blade Summoner
step
    #completewith Katherine
    .zone Stormwind City >>Voyagez à Stormwind
step
    #completewith Katherine
    .goto StormwindClassic,42.51,33.51,20 >> Voyagez jusqu'à la Cathédrale de Stormwind
step
    .train 426178,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Katherine la Pure|r
    .goto Stormwind City,37.222,31.855
    .turnin 79939 >>Rendez la quête Le marteau brisé
    .accept 79940 >>Acceptez la quête Un frère perdu
    .target Katherine the Pure
step
    #label Katherine
    .train 426178,1
    .goto Stormwind City,37.222,31.855
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Katherine la Pure|r
    .skipgossip 5492,1
    .complete 79940,1
    .turnin 79940 >>Rendez la quête Un frère perdu
    .target Katherine the Pure
step
    #completewith next
    .zone Wetlands >>Voyagez vers le Port de Menethil
step
    .isQuestTurnedIn 79940
    .train 426178,1
    .goto Wetlands,8.086,58.592
    .gossip 3179,4 >> Parlez à |cRXP_FRIENDLY_Harold Riggs|r. Parcourez bien l'ensemble de ses dialogues
    .skipgossip 3179,2
    .target Harold Riggs
step
    #completewith next
    .goto 1415,41.937,58.932,40 >> |cRXP_WARN_Nagez vers le sud, puis contournez entièrement le continent jusqu'à Dun Morogh. Vous devrez bientôt tuer un élite de niveau 40. Pensez à demander à un ami de vous aider pour cette partie !|r
step
    .train 426178,1
    .goto 1415,41.937,58.932
    .gossip 217957 >> Parlez au |cRXP_FRIENDLY_Croisé écarlate tué|r à l'intérieur du bâtiment
    >>|cRXP_WARN_Cela invoquera un élite de niveau 40, l'|r |cRXP_ENEMY_Assassin de la Croisade écarlate|r
    .target Slain Scarlet Crusader
step
    .train 426178,1
    .goto 1415,41.937,58.932
    >>Tuez l' |cRXP_ENEMY_Assassin de la Croisade écarlate|r. Dépouillez-le pour les |T133471:0|t[|cRXP_LOOT_Ordres du grand croisé|r]
    .use 215468 >>|cRXP_WARN_Utilisez les |T133471:0|t[|cRXP_LOOT_Ordres du grand croisé|r] pour lancer la quête|r
    .collect 215468,1,79945,1
    .accept 79945 >>Acceptez la quête Ordres du grand croisé
    .mob Scarlet Cursade Assassin
step
    #completewith Katherine2
    .zone Stormwind City >>Voyagez à Stormwind
step
    #completewith Katherine2
    .goto StormwindClassic,42.51,33.51,20 >> Voyagez jusqu'à la Cathédrale de Stormwind
step
    .train 426178,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Katherine la Pure|r
    .goto Stormwind City,37.222,31.855
    .turnin 79945 >>Rendez la quête Ordres du grand croisé
    .accept 79946 >>Acceptez la quête Un frère en détresse
    .target Katherine the Pure
step
    #label Katherine2
    .train 426178,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Katherine la Pure|r
    .goto Stormwind City,37.222,31.855
    .skipgossip 5492,3
    .complete 79946,1 --Learn more about Aeonas from Katherine
    .target Katherine the Pure
step
    .train 426178,1
    >>|cRXP_WARN_Vous devez entrer dans le Monastère écarlate et faire la Cathédrale entièrement|r
    >>Après avoir tué le |cRXP_ENEMY_Commandant écarlate Mograine|r et le |cRXP_ENEMY_Grand Inquisiteur Whitemane|r, parlez à |cRXP_FRIENDLY_Aeonas|r dans la salle du fond
    .complete 79946,2 --Find Aeonas in the Scarlet Monastery
    .turnin 79946 >>Rendez la quête Un frère en détresse
    .accept 79963 >>Acceptez la quête Par la grâce de la Lumière
    .target Aeonas
step
    .train 426178,1
    >>Soignez |cRXP_FRIENDLY_Aenoas|r jusqu'à ce qu'il récupère toute sa vie
    .complete 79963,1 --Heal Aeonas
    .target Aeonas
step
    .train 426178,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aeonas|r
    .turnin 79963 >>Rendez la quête Par la grâce de la Lumière
    .accept 79970 >>Acceptez la quête Aeonas le Justifié
    .target Aeonas
step
    #completewith Aeonas
    .zone Stormwind City >>Voyagez à Stormwind
step
    #completewith Aeonas
    .goto StormwindClassic,42.51,33.51,20 >> Voyagez jusqu'à la Cathédrale de Stormwind
step
    #label Aeonas
    .goto Stormwind City,37.355,31.708
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aeonas le Justifié|r
    .turnin 79970 >> Rendez la quête Aeonas le Justifié
    .train 426178 >> Apprenez |T236263:0|t[Fourreau de lumière]
    .target Aeonas the Vindicated
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Guide des runes et des livres
#subgroup Bottes
#name Gardé par la Lumière - 30 (Montagnes d'Alterac)
#title Gardé par la Lumière

step
    #optional
    .train 416035,1
    +|cRXP_WARN_Vous devez être au moins de niveau 30 avant d'obtenir la|r |T134419:0|t[|cRXP_FRIENDLY_Rune du gardien|r]
    .xp >30,1
step
    .train 416035,1
    .train 19752 >> |cRXP_WARN_Vous devez apprendre|r |T136106:0|t[Intervention divine] |cRXP_WARN_pour obtenir la|r |T134419:0|t[|cRXP_FRIENDLY_Rune du gardien|r]
step
    .train 416035,1
    .collect 17033,1 >>|cRXP_BUY_Achetez au moins un|r |T135259:0|t[Symbole de divinité] |cRXP_BUY_à n'importe quel marchand de composants|r
step
    .train 416035,1
    #completewith FriendRequired
    +|cRXP_WARN_Emmenez avec vous un ami |cFFFFFFFFPrêtre|r, |cFFF58CBAPaladin|r ou |cFFFF7D0ADruide|r pour les étapes suivantes ! Cette prochaine partie ne peut pas être complété seule, comme un joueur devra vous ressusciter !|r
    .subzoneskip 281
step
    .train 416035,1
    .goto Alterac Mountains,39.675,60.675
    .zone Alterac Mountains >>Voyagez aux Montagnes d'Alterac
    .itemcount 213452,<1
step
    .train 416035,1
    #label FriendRequired
    >>Cliquez sur la |cRXP_PICK_Dépouille gelée|r au sol. Dépouillez-la pour la |cRXP_LOOT_Rune du Sacré inerte|r
    .goto Alterac Mountains,39.675,60.675
    .collect 213452,1
step
    .train 416035,1
    .cast 19752 >> |cRXP_WARN_Lancez|r |T136106:0|t[Intervention divine] |cRXP_WARN_sur l'ami qui vous accompagne|r
    .usespell 19752
step
    .train 416035,1
    >>|cRXP_WARN_Demandez à votre ami de retirer le buff|r |T136106:0|t[Intervention divine] |cRXP_WARN_et de vous ressusciter|r
    >>|cRXP_WARN_Vous allez recevoir la|r |T134419:0|t[|cRXP_FRIENDLY_Rune du gardien|r]
    .collect 213132,1
step
    .use 213132
    .itemcount 213132,1
    .train 416035 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune du gardien|r] |cRXP_WARN_pour apprendre|r |T237537:0|t[Gardé par la Lumière]
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Guide des runes et des livres
#subgroup Bottes
#name Bouclier saint - 30 (Désolace)
#title Bouclier saint

step
    #optional
    .train 416028,1
    +|cRXP_WARN_Vous devez être au moins de niveau 18 avant de pouvoir obtenir la gravure de|r |T236249:0|t[Bouclier saint] |cRXP_WARN_|r
    .xp >18,1
step
    .train 416028,1
    .train 1044 >> |cRXP_WARN_Vous devez apprendre|r |T135968:0|t[Bénédiction de liberté] |cRXP_WARN_afin d'obtenir la gravure de|r |T236249:0|t[Bouclier saint] |cRXP_WARN_|r
step
    .train 416028,1
    #completewith Deliverance
    +Assurez-vous d'amener avec vous au moins un autre ami Mage|cRXP_WARN_ pour les étapes suivantes ! Cette prochaine partie ne peut pas être faites seul !|r
step
    .train 416028,1
    #completewith next
    .zone Desolace >>Voyagez à Désolace
step
    .train 416028,1
    #label Deliverance
    .goto Desolace,66.532,7.531
    >>Ramassez le |T134916:0|t[|cRXP_FRIENDLY_Libram de délivrance|r] sur la table
    .collect 213513,1
step
    .train 416028,1
    .equip 18,213513 >> |cRXP_WARN_Équipez le|r |T134916:0|t[|cRXP_FRIENDLY_Libram de délivrance|r]
    .use 213513
step
    .train 416028,1
    .goto Desolace,38.21,61.02,50,0
    .goto Desolace,36.44,60.52,60,0
    .goto Desolace,33.44,54.17,60,0
    .goto Desolace,30.33,58.26,60,0
    .goto Desolace,31.79,61.28
    .aura 408828 >> |cRXP_WARN_Lancez|r |T135968:0|t[Bénédiction de liberté] |cRXP_WARN_sur un autre joueur quand ses déplacements sont entravés à 5 reprises. Vous gagnerez un stack de|r |T237556:0|t[Accumuler l'inspiration] |cRXP_WARN_dès que vous le ferez|r
    >>|cRXP_WARN_Une fois que vous avez 5 stacks de|r |T237556:0|t[Accumuler l'inspiration]|cRXP_WARN_, vous recevrez le |rbuff|cRXP_WARN_|r |T136116:0|t[Exalté]
    >>|cRXP_WARN_Complétez cela à l'extérieur de Maraudon. Les|r |cRXP_ENEMY_Querelleurs maraudines|r |cRXP_WARN_y lancent un|r |T132149:0|t[Filet]
    .mob Maraudine Wrangler
step
    .use 213513
    .train 416028 >>|cRXP_WARN_Utilisez le|r |T134916:0|t[|cRXP_FRIENDLY_Libram de délivrance|r] |cRXP_WARN_pour apprendre|r |T236249:0|t[Bouclier saint]
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
#group RestedXP Guide des runes et des livres
#subgroup Casque
#name Fanatisme - 44 (Azeroth)

step
    #optional
    .train 426178 >>|cRXP_WARN_Vous devez d'abord apprendre la rune de|r |T236263:0|t[Fourreau de lumière] |cRXP_WARN_avant de pouvoir obtenir celle-ci|r
    .train 429251,1
step
    #completewith next
    .zone Stormwind City >>Voyagez à Stormwind
    .train 429251,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aeonas le Justifié|r
    .goto Stormwind City,37.355,31.708
    .accept 81762 >>Acceptez la quête Quelques bonnes nouvelles
    .target Aeonas the Vindicated
step
    .train 429251,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Katherine la Pure|r
    .goto Stormwind City,37.222,31.855
    .turnin 81762 >>Rendez la quête Quelques bonnes nouvelles
    .accept 81764 >>Acceptez la quête Le mystérieux marchand
    .target Katherine the Pure
step
    #completewith next
    .zone Dustwallow Marsh >>Voyagez à Marécage d'Âprefange/Île de Theramore |cRXP_WARN_(par exemple, prenez le bateau de Port de Menethil vers Theramore)|r
    .train 429251,1
step
    .train 429251,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elrick|r à l'intérieur de l'auberge
    *|cRXP_WARN_Deux ennemis de niveau 45 vous attaqueront après avoir accepté la quête|r
    .goto Dustwallow Marsh,66.52,45.41
    .turnin 81764 >>Rendez la quête Le mystérieux marchand
    .accept 81765 >>Acceptez la quête Elrick, paladin de la Main d’argent
    .target Elrick
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elrick|r
    .goto Dustwallow Marsh,66.52,45.41
    .gossip 221575,5
    .skipgossip 221575,1
    .train 429251,1
step
    .train 429251,1
    >>Tuez |cRXP_ENEMY_Elrick|r. Dépouillez-le pour la |T133471:0|t[|cRXP_LOOT_Missive sanglante|r]
    >>|cRXP_WARN_Utilisez la|r |T133471:0|t[|cRXP_LOOT_Missive sanglante|r] |cRXP_WARN_pour lancer la quête|r
    .goto Dustwallow Marsh,66.52,45.41
    .collect 219930,1,81766,1
    .accept 81766 >>Acceptez la quête La missive sanglante
    .use 219930
    .skipgossip 221575,1
    .target Elrick
step
    #completewith next
    .zone Stormwind City >>Voyagez à Stormwind
    .train 429251,1
step
    .train 429251,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Katherine la Pure|r |cRXP_WARN_pour apprendre|r |T135905:0|t[Fanatisme]
    .goto Stormwind City,37.222,31.855
    .turnin 81762 >>Rendez la quête La missive sanglante
    .target Katherine the Pure
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Guide des runes et des livres
#subgroup Brassards
#name Grâce de la Lumière - 40 (Féralas)

step
    #optional
    .train 5599 >>|cRXP_WARN_Vous devez avoir appris la|r |T135964:0|t[Bénédiction de protection] |cRXP_WARN_afin d'obtenir la rune de|r |T135931:0|t[Grâce de la Lumière] |cRXP_WARN_|r
step
    #optional
    #completewith TeleporterTaken
    .isQuestTurnedIn 79984
    .goto Stranglethorn Vale,27.6,77.4,8 >>Utilisez le Téléporteur vers Féralas à Baie-du-Butin
    .train 429242,1
step
    #optional
    .isQuestAvailable 79984
    #completewith TeleporterTaken
    .zone Feralas >>Voyagez à Féralas
    .goto Feralas,85.27,43.66,8 >>Utilisez le |cRXP_PICK_Transportemonde de Fabutronique|r
    .train 429242,1
step
    #label TeleporterTaken
    .goto Feralas,84.26,43.81,10 >>Allez sur la plateforme
    .train 429242,1
step
    .train 429242,1
    >>1) |cRXP_WARN_Définissez la faction Gadgetzan comme "En guerre" dans votre fenêtre de réputation|r
    >>2) Allez à la position exacte de la flèche de navigation
    >>3) Regardez le buisson vert à côté de la maison en bois
    .goto Feralas,83.93,43.89
    .goto Feralas,85.27,43.66,0
    .aura 436534,1 >>4) |cRXP_WARN_Attendez que la |cRXP_ENEMY_Tour de défense automatique|r soit exactement entre vous et le buisson, puis attaquez-le|r
    .mob Tower Defense Automaton
step
    .train 429242,1
    >>|cRXP_WARN_Soignez|r |cRXP_FRIENDLY_Frix Xizzix|r |cRXP_WARN_jusqu'à ce qu'il se relève|r.
    .gossip 220930,1 >>Ensuite, parlez à |cRXP_FRIENDLY_Frix Xizzix|r
    .skipgossip 220930,1
    .goto Feralas,81.45,42.46
    .target Frix Xizzix
step
    #completewith next
    .zone Stranglethorn Vale >>Voyagez à la Vallée de Strangleronce/Baie-du-Butin
    .train 429242,1
step
    .train 429242,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rix Xizzix|r et achetez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Grâce|r]
    .goto Stranglethorn Vale,28.4,75.8
    .collect 219147,1
    .target Rix Xizzix
step
    .itemcount 219147,1
    .use 219147
    .train 429242 >>|cRXP_WARN_Utilisez|r la |T134419:0|t[|cRXP_FRIENDLY_Rune de Grâce|r] |cRXP_WARN_pour apprendre|r |T236249:0|t[Bouclier saint]
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Guide des runes et des livres
#subgroup Casque
#name Colère - 43 (Hinterlands)

-- Wrath

step
    #optional
    .train 5502 >>|cRXP_WARN_Vous devez avoir appris|r |T135974:0|t[Détection des morts-vivants] |cRXP_WARN_afin d'obtenir la rune de|r |T236260:0|t[Colère] |cRXP_WARN_|r
    .train 429249,1
step
    #completewith RuneLearned
    +|cRXP_WARN_Vous ne pouvez obtenir la rune de|r |T236260:0|t[Colère] |cRXP_WARN_qu'entre 21h et 6h.|r
step
    #completewith next
    .zone The Hinterlands >>Voyagez aux Hinterlands
    .train 429249,1
step
    .train 429249,1
    >>|cRXP_WARN_Utilisez|r |T135974:0|t[Détection des morts-vivants] |cRXP_WARN_afin de voir l'|r |cRXP_ENEMY_Esprit vengeur|r
    >>Tuez l' |cRXP_ENEMY_Esprit vengeur|r. Dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de colère|r]
    *L' |cRXP_ENEMY_Esprit vengeur|r marche aux bords du lac
    .goto The Hinterlands,33.0,44.2
    .collect 220165,1
    .mob Vengeful Spirit
step
    #label RuneLearned
    .itemcount 220165,1
    .use 220165
    .train 429249 >>|cRXP_WARN_Utilisez|r la |T134419:0|t[|cRXP_FRIENDLY_Rune de colère|r] |cRXP_WARN_pour apprendre|r |T236260:0|t[Colère]
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Guide des runes et des livres
#subgroup Brassards
#name Marteau du vertueux - 50 (Azeroth)

--x shiek: needs better coordinates
step
    #optional
    .train 410013 >>|cRXP_WARN_Vous devez d'abord apprendre la rune de|r |T236253:0|t[Marteau du vertueux] |cRXP_WARN_avant de pouvoir obtenir celle-ci|r
    .train 410013,1
step
    #completewith next
    .zone Felwood >>Voyagez à Gangrebois
    .train 410013,1
step
    .goto Felwood,45.0,52.0
    .gossip 217996,5 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aeonas le Justifié|r
    .target Aeonas the Vindicated
    .train 410013,1
step
    .goto Felwood,44.6,52.0
    .gossip 221636,8 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gregory|r
    .target Gregory
    .train 410013,1
step
    .goto Felwood,44.6,52.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gregory|r
    .accept 81790,1 >>Acceptez la quête Des matériaux d’importance
    .target Gregory
    .train 410013,1
step
    #loop
    .goto Felwood,44.4,46.8,40,0
    .goto Felwood,40.0,43.6,40,0
    .goto Felwood,41.8,34.8,40,0
    .goto Felwood,48.0,38.8,40,0
    >>Tuez les |cRXP_ENEMY_Infernaux Sentinelles|r, les |cRXP_ENEMY_Gardes du corps infernaux|r, les |cRXP_ENEMY_Bêtes d'entropie|r et les |cRXP_ENEMY_Horreurs d'entropie|r. Dépouillez-les pour le |cRXP_LOOT_|T136030:0|tNoyau infernal ardent|r
    .complete 81790,1 --3/3 Fiery Infernal Core
    .mob Infernal Sentry
    .mob Infernal Bodyguard
    .mob Entropic Beast
    .mob Entropic Horror
step
    #completewith next
    #title Maraudon
    .zone Desolace >>Voyagez à Maraudon
    .goto Desolace,30,62,20
    .train 410013,1
step
    >>|cRXP_WARN_Nous vous recommandons de monter un groupe d'au moins 5 joueurs.|r
    >>Tuez la |cRXP_ENEMY_Princesse Theradras|r, le boss final de Maraudon. Dépouillez-la pour la |cRXP_LOOT_|T134389:0|tPoussière de tombeau chatoyante.|r
    .complete 81790,2 --1/1 Shimmering Grave Dust
    .mob Princess Theradras
    .train 410013,1
step << Alliance
    #completewith next
    #title Profondeurs de Rochenoire
    .zone Searing Gorge >>Voyagez aux Profondeurs de Rochenoire
    .goto 1415,48.09,62.42,20
    .train 410013,1
step << Alliance
    >>|cRXP_WARN_Nous vous recommandons de monter un groupe de 5 joueurs et vous aurez besoin de 3 pièces d'or.|r
    >>Aventurez-vous dans les profondeurs de Blackrock jusqu'à atteindre le bar du Sinistre dévoreur. |Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Plugger Spazzring|r et achetez de la |T135262:0|t[Bière blonde de lave triple]
    .complete 81790,3 --1/1 Triple-Brewed Molten Lager
    .target Plugger Spazzring
    .train 410013,1
step << Alliance
    #completewith next
    .zone Hillsbrad Foothills >>Voyagez aux Contreforts d'Hillsbrad
    .train 410013,1
step << Alliance
    #loop
    .goto Felwood,65.8,19.6,20,0
    .goto Felwood,67.6,15.0,20,0
    .goto Felwood,68.6,13.8,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brave Torchepierre|r
    .target Brave Stonetorch
    .accept 81944,1 >>Acceptez la quête Une nouvelle raison d’être…
    .complete 81970,4 --1/1 Symbol of Faith
step << Horde
    #completewith next
    .zone Hillsbrad Foothills >>Voyagez aux Contreforts d'Hillsbrad
    .train 410013,1
step << Horde
    #loop
    .goto Felwood,65.8,19.6,20,0
    .goto Felwood,67.6,15.0,20,0
    .goto Felwood,68.6,13.8,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brave Torchepierre|r
    .target Brave Stonetorch
    .accept 81944,1 >>Acceptez la quête Une nouvelle raison d’être…
    .complete 81970,4 --1/1 Symbol of Faith
step << Horde
    #completewith next
    .zone Searing Gorge >>Voyagez à la Gorge des Vents brûlants
    .train 410013,1
step << Horde
    >>|cRXP_WARN_Nous vous recommandons de monter un groupe de 5 joueurs et vous aurez besoin de 3 pièces d'or.|r
    >>Aventurez-vous dans les profondeurs de Blackrock jusqu'à atteindre le bar du Sinistre dévoreur. |Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Plugger Spazzring|r et achetez de la |T135262:0|t[Bière blonde de lave triple]
    .complete 81790,3 --1/1 Triple-Brewed Molten Lager
    .target Plugger Spazzring
    .train 410013,1
step
    #completewith next
    .zone Felwood >>Voyagez à Gangrebois
    .train 410013,1
step
    .goto Felwood,44.6,52.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gregory|r
    .turnin 81790 >>Acceptez la quête Des matériaux d’importance
    .target Gregory
    .train 410013,1
step
    .goto Felwood,45.0,52.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aeonas le Justifié|r
    .accept 81885,1 >>Acceptez la quête Le rituel
    .target Aeonas the Vindicated
    .train 410013,1
step
    .goto Felwood,44.6,52.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gregory|r
    .complete 81885,1 --1/1 Complete the Ritual
    .target Gregory
    .train 410013,1
step
    .goto Felwood,45.0,52.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aeonas le Justifié|r
    .turnin 81885 >>Rendez la quête Le rituel
    .target Aeonas the Vindicated
    .train 410013,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Guide des runes et des livres
#subgroup Cape
#name Bouclier de piété - 60 (Maleterres de l'Est)

--There wasn't very precise info for this available, might need confirmation if it works properly

step
    #completewith next
    >>|cRXP_WARN_Pour débloquer cette rune vous devrez tuer un boss de Stratholme (côté morts-vivants). Commencez à chercher un groupe si vous voulez le faire|r
    .zone Eastern Plaguelands >> Voyagez aux Maleterres de l'Est
step
    .line Eastern Plaguelands,28.6,84.2,33.2,83.0,35.30,82.55,41.19,81.68,45.42,80.68,48.8,79.9,51.5,78.3,55.1,76.4
    >>Cherchez une |cRXP_ENEMY_Goule à gueule béante|r. Tuez-la et |Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orthas|r, un esprit de nain qui apparaîtra ensuite. Acceptez sa quête
    >>|cRXP_WARN_La|r |cRXP_ENEMY_Goule à gueule béante|r |cRXP_WARN_patrouille dans la zone au sud de la route entre le caveau de Zaeldarr et la Croisée de Corin|r
    .accept 84318 >> Acceptez la quête Ohé !
    .unitscan Slack-Jawed Ghoul
    .target Orthas
step
    .goto Eastern Plaguelands,61.3,69.3 --Not sure if this is the house or the other one, need more info
    >>Entrez dans la maison dans la Croisée de Corin. Ramassez le |T133040:0|t[|cRXP_PICK_Marteau de guerre orné|r] |cRXP_WARN_au deuxième étage|r
    .complete 84318,1
step
    .goto Eastern Plaguelands,61.3,69.3
    >>Utilisez |T134566:0|t[Dent en or préférée d'Orthas] afin d'invoquer |cRXP_FRIENDLY_Orthas|r de nouveau. Parlez-lui pour rendre la quête et accepter la suite
    .turnin 84318 >> Rendez la quête Ohé !
    .accept 84319 >> Acceptez la quête Oh non, que nenni !
    .use 227687
step
    .goto Eastern Plaguelands,59.7,68.7
    >>Tuez n'importe quelle |cRXP_ENEMY_Horreur raccommodée|r et dépouillez-la pour l' |T133823:0|t[|cRXP_LOOT_Armure de plaque partiellement digérée|r]
    .complete 84319,1
    .mob Stitched Horror
step
    >>Utilisez |T134566:0|t[Dent en or préférée d'Orthas] afin d'invoquer |cRXP_FRIENDLY_Orthas|r de nouveau. Parlez-lui pour rendre la quête et accepter la suite
    .turnin 84319 >> Rendez la quête Oh non, que nenni !
    .accept 84330 >> Acceptez la quête Un zeste de nécromancie
step
    >>Trouvez un groupe pour Stratholme (côté morts-vivants)
    >>Tuez |cRXP_ENEMY_Maleki le Blafard|r, l'un des boss du donjon côté morts-vivants, et dépouillez-le pour la |T134415:0|t[Pierre runique nécrotique]
    .complete 84330,1 --Necrotic Runestone
    .mob Maleki the Pallid
step
    .goto Eastern Plaguelands,22.7,86.1
    >>Retournez au caveau de Zaeldarr, cherchez la |cRXP_FRIENDLY_Carcasse naine en putréfaction|r. Interagissez avec pour rendre la quête
    .turnin 84330 >> Rendez la quête Un zeste de nécromancie
step
    >>Acceptez la quête suivante du cadavre. Il s'agit d'une quête à rendre immédiatement qui vous apprendra à graver |T236265:0|t[|cRXP_FRIENDLY_Bouclier de piété|r]
    .goto Eastern Plaguelands,22.7,86.1
    .accept 84332 >> Acceptez la quête La gratitude d'un Thane
    .turnin 84332 >> Rendez la quête La gratitude d'un thane

]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Guide des runes et des livres
#subgroup Cape
#name Vengeance vertueuse - 55 (Maleterres de l'Ouest)
#title Vengeance vertueuse
#next Choc et effroi - 55 (Maleterres de l'Ouest/Est)

step
    #completewith next
    .zone Western Plaguelands >> Allez aux Maleterres de l'Ouest
step
    .goto Western Plaguelands,44.6,46.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Chevalier tombé|r
    .gossip 227519,1 >> Complétez tout son dialogue
    .target Fallen Knight
--Not entirely sure if you even need to talk to him or if you do how deep the dialogue is
step
    .goto Western Plaguelands,47.5,50.4
    >>Entrez dans la grange près du |cRXP_FRIENDLY_Chevalier tombé|r et |Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Ecuyer Cuthbert|r
    .accept 83808 >> Acceptez la quête Dans le pétrin
    .target Squire Cuthbert
step
    .goto Western Plaguelands,47.5,50.4
    .goto Western Plaguelands,45.7,53.9
    >>Ramassez l' [|cRXP_PICK_Épée de l’écuyer Cuthbert|r] posée dans le champ à proximité
    .complete 83808,1
step
    >>Retournez dans la grange et |Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Ecuyer Cuthbert|r
    .turnin 83808 >> Rendez la quête Dans le pétrin
    .accept 83935 >> Acceptez la quête Dégager la voie
    .target Squire Cuthbert
step
    .goto Western Plaguelands,45.7,53.9
    >>Tuez les |cRXP_ENEMY_Zombies corrompus|r, les |cRXP_ENEMY_Terreurs Squelettes|r et les |cRXP_ENEMY_Cadavres pourrissants|r
    .complete 83935,1 --Blighted Zombie(5)
    .complete 83935,2 --Skeletal Terror(10)
    .complete 83935,3 --Rotting Cadaver(10)
    .mob Blighted Zombie
    .mob Skeletal Terror
    .mob Rotting Cadaver
step
    .goto Western Plaguelands,47.5,50.4
    >>Retournez dans la grange et |Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Ecuyer Cuthbert|r
    .turnin 83935 >> Rendez la quête Dégager la voie
    .accept 83822,1 >> Acceptez la quête Le chevalier tombé
    >>|cRXP_WARN_ceci va commencer une quête d'escorte|r
    .target Squire Cuthbert
step
    .goto Western Plaguelands,44.6,46.6
    >>Escortez l' |cRXP_FRIENDLY_Ecuyer Cuthbert|r jusqu'au Chevalier tombé et aidez-le à brûler le cadavre
    .complete 83822,1
step
    .goto Western Plaguelands,44.6,46.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Ecuyer Cuthbert|r
    .turnin 83822 >> Rendez la quête Chevalier tombé
    .accept 83936 >> Acceptez la quête La quête de Dalton
    .target Squire Cuthbert
step
    .goto Western Plaguelands,44.6,46.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Ecuyer Cuthbert|r et parcourez son dialogue
    .complete 83936,1
    .target Squire Cuthbert
step
    .goto Western Plaguelands,44.6,46.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Ecuyer Cuthbert|r et parcourez son dialogue. Rendre cette quête vous apprendra à graver |T236260:0|t[|cRXP_FRIENDLY_Vengeance vertueuse|r]
    >>Vous recevrez aussi la |T237377:0|t[|cFF0070FFCorne de Dalton|r] dont vous aurez besoin pour débloquer la rune de |T252188:0|t[|cRXP_FRIENDLY_Choc et effroi|r]
    .turnin 83936 >> Rendez la quête La quête de Dalton
    .target Squire Cuthbert
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Guide des runes et des livres
#subgroup Cape
#name Choc et effroi - 60 (Maleterres de l'Ouest/Est)
#title Choc et effroi & Courroux vengeur

step
    #completewith next
    +|cRXP_WARN_Afin de lancer la quête de cette rune, vous devrez avoir débloqué la rune de|r |T236260:0|t[|cRXP_FRIENDLY_Vengeance vertueuse|r]. |cRXP_WARN_Allez au guide pour Vengeance vertueuse pour commencer|r
    .train 440792,1 --Righteous Vengeance
step
    .goto Eastern Plaguelands,78.6,47.6
    >>|cRXP_WARN_Utilisez la|r |T237377:0|t[|cFF0070FFCorne de Dalton|r] |cRXP_WARN_pour invoquer l'|r |cRXP_FRIENDLY_Ecuyer Cuthbert|r |cRXP_WARN_et tuez les mobs jusqu'à ce qu'il monte de niveau. Lorsque ce sera fait, il vous proposera une quête à rendre gratuitement|r
    .accept 83823 >> Acceptez la quête Une leçon de violence
    .turnin 83823 >> Rendez la quête Une leçon de violence
    .use 226122
step
    .goto Eastern Plaguelands,78.6,47.6
    >>|cRXP_WARN_Utilisez la|r |T237377:0|t[|cFF0070FFCorne de Dalton|r] |cRXP_WARN_pour invoquer l'|r |cRXP_FRIENDLY_Ecuyer Cuthbert|r |cRXP_WARN_et continuez à tuer les mobs jusqu'à ce qu'il monte encore de niveau. À ce moment, il vous donnera une autre quête à rendre gratuitement et une autre quête demandant de trouver une liche nommée|r |cRXP_ENEMY_Arkonos le Maudit|r
    .accept 84008 >> Acceptez la quête Une leçon de grâce
    .turnin 84008 >> Rendez la quête Une leçon de grâce
    .accept 84017 >> Acceptez la quête L'heure de tuer
    .use 226523
step
    .goto Eastern Plaguelands,78.6,47.6
    >>|cRXP_WARN_Dirigez-vous vers la clairière Nocive, une zone juste au nord de la chapelle de l'Espoir de Lumière. Dès votre arrivée, invoquez à nouveau votre écuyer. La quête pour trouver Arkonos devrait se compléter et vous recevrez une autre quête, acceptez-la|r
    .turnin 84017 >> Rendez la quête L’heure de tuer
    .accept 84125 >> Acceptez la quête À portée de main
    .use 226545
step
    .goto Eastern Plaguelands,83.7,41.9
    >>Tuez les |cRXP_ENEMY_Ombremages|r et les |cRXP_ENEMY_Tisseurs d'effroi|r dans la clairière Nocive. Dépouillez-les pour le |T135482:0|t[|cRXP_LOOT_Scalpel d'ombre du Fléau|r]
    .complete 84125,1
    .mob Shadowmage
    .mob Dread Weaver
step
    >>Utilisez la |T237377:0|t[|cFF0070FFCorne de Dalton|r] pour invoquer l' |cRXP_FRIENDLY_Ecuyer Cuthbert|r si vous l'avez perdu. Parlez-lui
    .turnin 84125 >> Rendez la quête À portée de main
    .accept 84126 >> Acceptez la quête Terminer le combat
    .use 226122
    .target Squire Cuthbert
step
    .goto Eastern Plaguelands,86.6,39.8
    >>Utilisez le |T237490:0|t[|cRXP_LOOT_Scalpel d’ombre modifié|r] que vous avez obtenu pour dissiper le bouclier d' |cRXP_ENEMY_Arkonos|r. Tuez-le pour terminer la quête
    .complete 84126,1 --Arkonos the cursed slain
    .use 227685
step
    >>Utilisez la |T237377:0|t[|cFF0070FFCorne de Dalton|r] pour invoquer l' |cRXP_FRIENDLY_Ecuyer Cuthbert|r si vous l'avez perdu. Parlez-lui
    >>Rendre cette quête vous apprendre à graver |T252188:0|t[Choc et effroi] et vous donnera aussi le |T133745:0|t[|cRXP_FRIENDLY_Testament de Courroux vengeur|r] qui vous apprendra |T135875:0|t[Courroux vengeur]
    .turnin 84126 >> Rendez la quête Terminer le combat
    .use 226122
    .target Squire Cuthbert
step
    .train 407788 >> Utilisez le |T133745:0|t[|cRXP_FRIENDLY_Testament de Courroux vengeur|r] pour apprendre |T135875:0|t[Courroux vengeur]
    .use 226399
]])
