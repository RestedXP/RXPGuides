if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Siegesrausch - 1 (Wald von Elwynn)
#title Siegesrausch

step << Warrior
    #season 2
    #optional
    #completewith next
    .goto 1429,48.086,30.502,20,0
    .goto 1429,48.379,29.579,20,0
    .goto 1429,48.336,28.597,20,0
    .goto 1429,48.679,26.618,20,0
    .goto 1429,49.919,25.792,20,0
    .goto 1429,50.639,27.274,15 >>Reist zur |cRXP_PICK_Lagertruhe der Kobolde|r in Echokammmine
    .train 403470,1
step << Warrior
    #season 2
    .goto Elwynn Forest,50.640,27.276
    >>Öffnet die |cRXP_PICK_Lagertruhe der Kobolde|r auf dem Boden. Plündert sie für die |T134419:0|t|cRXP_LOOT_[Rune des Siegesrauschs]|r
    .collect 204806,1 -- Rune of Victory Rush (1)
    .train 403470,1
step << Warrior
    #season 2
    .train 403470 >>|cRXP_WARN_Benutzt die|r |T134419:0|t|cRXP_LOOT_[Rune des Siegesrauschs]|r |cRXP_WARN_um zu erlernen|r |T132342:0|t[Siegesrausch]
    .use 204806
    .itemcount 204806,1 -- Rune of Victory Rush (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Siegesrausch - 3 (Dun Morogh)
#title Siegesrausch

step << Warrior
    #season 2
    .goto Dun Morogh,26.3,79.2,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7
    >>Tötet |cRXP_ENEMY_Frostmane Troll Whelps|r. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune of Siegesrausch|r]
    .collect 204806,1
    .mob Frostmane Troll Whelp
    .train 403470,1
step << Warrior
    #season 2
    #label WarriorVR
    .cast 402265 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Siegesrausch|r]
    .use 204806
    .itemcount 204806,1
    .train 403470,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Siegesrausch - 3 (Laubschattental)
#title Siegesrausch

step << Warrior
    #season 2
    .goto Teldrassil,56.8,31.7
    >>Tötet |cRXP_ENEMY_Webwood Spinnen|r. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune of Siegesrausch|r]
    .collect 204806,1 -- Rune of Victory Rush (1)
    .mob Webwood Spider
    .train 403470,1
step << Warrior
    #season 2
    .cast 402265 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Siegesrausch|r]
    .use 204806
    .itemcount 204806,1
    .train 403470,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Blutraserei - 10 (Wald von Elwynn)
#title Blutraserei

step << Warrior
    #season 2
    .goto Elwynn Forest,25.5,70.1,0
    .goto Elwynn Forest,22.1,73.8,0
    .goto Elwynn Forest,29.9,73.3,0
    .goto Elwynn Forest,36.1,80.4,0
    .goto Elwynn Forest,38.0,75.4,0
    .goto Elwynn Forest,25.5,70.1,70,0
    .goto Elwynn Forest,22.1,73.8,70,0
    .goto Elwynn Forest,29.9,73.3,70,0
    .goto Elwynn Forest,36.1,80.4,70,0
    .goto Elwynn Forest,38.0,75.4,70,0
    .goto Elwynn Forest,40.6,74.7
    >>Sprecht mit einem |cRXP_FRIENDLY_Wandernder Schwertkämpfer|r in Wald von Elwynn
    >>Besiegt |cRXP_ENEMY_Wandernder Schwertkämpfer|r in einem Duell
    >>Öffnet |cRXP_PICK_Swordsman's Belohnung|r, die auf dem Boden liegt. Sammelt die Beute für die |T134419:0|t[|cRXP_FRIENDLY_Rune of Blutraserei|r]
    >>Hinweis|cRXP_WARN_: Der |cRXP_FRIENDLY_Wandernder Schwertkämpfer|r kann überall in Wald von Elwynn spawnen|r
    .collect 204441,1 -- Rune of Blood Frenzy (1)
    .train 403474,1
    .skipgossip
    .unitscan Wandering Swordsman
step << Warrior
    #season 2
    .train 403474 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Blutraserei|r] |cRXP_WARN_zum Trainieren|r |T136012:0|t[Blutraserei]
    .use 204441
    .itemcount 204441,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Blutraserei - 10 (Dun Morogh)
#title Blutraserei

step << Warrior
    #season 2
    .goto Dun Morogh,53.47,47.60
    >>Sprecht mit einem |cRXP_FRIENDLY_Wandernder Schwertkämpfer|r in Dun Morogh
    >>Besiegt |cRXP_ENEMY_Wandernder Schwertkämpfer|r in einem Duell
    >>Öffnet |cRXP_PICK_Swordsman's Belohnung|r, die auf dem Boden liegt. Sammelt die Beute für die |T134419:0|t[|cRXP_FRIENDLY_Rune of Blutraserei|r]
    .collect 204441,1 -- Rune of Blood Frenzy (1)
    .train 403474,1
    .skipgossip
    .unitscan Wandering Swordsman
step << Warrior
    #season 2
    .train 403474 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Blutraserei|r] |cRXP_WARN_zum Trainieren von|r |T136012:0|t[Blutraserei]
    .use 204441
    .itemcount 204441,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Blutraserei - 10 (Teldrassil)
#title Blutraserei

step << Warrior
    #season 2
    .goto Teldrassil,39.8,69.6,60,0
    .goto Teldrassil,43.8,76.8,60,0
    .goto Teldrassil,54.6,66.0,60,0
    .goto Teldrassil,62.6,71.8,60,0
    .goto Teldrassil,39.6,37.6
    >>Sprecht mit einem |cRXP_FRIENDLY_Wandernder Schwertkämpfer|r in Teldrassil
    >>Besiegt |cRXP_ENEMY_Wandernder Schwertkämpfer|r in einem Duell
    >>|T134419:0|tÖffnet die |cRXP_PICK_Swordsman's Belohnung|r, die auf dem Boden liegt. Sammelt die Beute für die |cRXP_FRIENDLY_Rune of Blutraserei|r
    >>Hinweis|cRXP_WARN_: Der |cRXP_FRIENDLY_Wandernder Schwertkämpfer|r kann überall in Teldrassil spawnen|r
    .collect 204441,1 -- Rune of Blood Frenzy (1)
    .train 403474,1
    .skipgossip
    .unitscan Wandering Swordsman
step << Warrior
    #season 2
    .train 403474 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Blutraserei|r] |cRXP_WARN_zum Trainieren|r |T136012:0|t[Blutraserei]
    .use 204441
    .itemcount 204441,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Wütender Donner - 6 (Wald von Elwynn)
#title Wütender Donner

step << Warrior
    #season 2
    #completewith next
    .goto Elwynn Forest,38.34,81.54,20 >> Betretet Tiefenschachtmine
    .train 403476,1
step << Warrior
    #season 2
    .goto Elwynn Forest,41.7,78.1
    >>Tötet |cRXP_ENEMY_Goldtooth|r. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune of Wütender Donner|r]
    .collect 204809,1 -- Rune of Furious Thunder (1)
    .mob Goldtooth
    .train 403476,1
step << Warrior
    #season 2
    .train 403476 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Wütenden Donners|r] |cRXP_WARN_zum Trainieren|r |T136048:0|t[Wütender Donner]
    .use 204809
    .itemcount 204809,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Wütender Donner - 9 (Dun Morogh)
#title Wütender Donner

step << Warrior
    #season 2
    .goto 1426,31.87,38.45,0
    .goto 1426,30.42,39.84,0
    .goto 1426,30.02,39.08,0
    .goto 1426,33.82,37.26,0
    .goto 1426,31.87,38.45,50,0
    .goto 1426,30.42,39.84,50,0
    .goto 1426,30.02,39.08,50,0
    .goto 1426,33.82,37.26,50,0
    >>Tötet |cRXP_ENEMY_Fyodi|r. Plündert sie für |T134419:0|t|cRXP_LOOT_[Rune des wütenden Donners]|r
    >>|cRXP_WARN_Obwohl |cRXP_ENEMY_Fyodi|r als Elite angezeigt wird, sind seine Leben-, Schaden- und Rüstungswerte die eines Standard-Mobs|r
    >>|cRXP_WARN_Seid vorsichtig, da er|r |T132337:0|t[Sturmangriff] wirkt |cRXP_WARN_Erhöht sofort die Bewegungsgeschwindigkeit für 3 Sek., verursacht 35-80 Nahkampfschaden bei Treffer. Nur aus der Ferne wirkbar|r
    >>|cRXP_WARN_HINWEIS: Die|r |T134419:0|t|cRXP_LOOT_[Rune des wütenden Donners]|r kann auch von jedem seltenen Mob in Dun Morogh sowie von |cRXP_WARN_Vagash|cRXP_ENEMY_, |rMarterklaue|cRXP_ENEMY_ und|r |rEisbart der Alte|cRXP_ENEMY_ fallen|r
    .collect 204809,1 -- Rune of Furious Thunder (1)
    .mob Fyodi
    .train 403476,1
    .xp >10,1
step << Warrior
    #season 2
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Tötet |cRXP_ENEMY_Vagash|r. Plündert ihn für |T134419:0|t|cRXP_LOOT_[Rune des wütenden Donners]|r
    >>|cRXP_WARN_HINWEIS: Der|r |T134419:0|t|cRXP_LOOT_[Rune des wütenden Donners]|r kann auch von jedem seltenen Mob in Dun Morogh sowie von |cRXP_WARN_Fyodi|cRXP_ENEMY_, |rMarterklaue|cRXP_ENEMY_ und|r |rEisbart der Alte|cRXP_ENEMY_ fallen|r
    .collect 204809,1 -- Rune of Furious Thunder (1)
    .mob Vagash
    .train 403476,1
    .xp <10,1
step << Warrior
    #label FuriousThunder
    #season 2
    .train 403476 >>|cRXP_WARN_Benutzt die|r |T134419:0|t|cRXP_LOOT_[Rune des wütenden Donners]|r |cRXP_WARN_um|r |T136048:0|t[Wütender Donner] zu erlernen
    .use 204809
    .itemcount 204809,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Rasender Angriff - 10 (Sturmwind)
#title Rasender Angriff

step << Warrior
    #season 2
    .gossipoption 109045 >> Sprecht mit |cRXP_FRIENDLY_Liv Bradford|r in der Taverne im Park
    .gossipoption 109047
    .goto Stormwind City,22.608,64.621
    .gossipoption 109084 >> Sprecht mit |cRXP_ENEMY_Stuart|r, dann verprügelt ihn. Er wird bei 0% ohnmächtig
    .goto Stormwind City,21.213,62.781
    >>Falls |cRXP_ENEMY_Stuart|r nicht dort ist, wartet bis er respawnt
    .gossipoption 109044 >> Sprecht wieder mit |cRXP_FRIENDLY_Liv Bradford|r, nachdem ihr |cRXP_ENEMY_Stuart|r niedergeschlagen habt, um die |T134419:0|t[|cRXP_FRIENDLY_Rune des rasenden Angriffs|r] zu erhalten
    .goto Stormwind City,22.608,64.621
    .train 425447,1 >> |cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des rasenden Angriffs|r] |cRXP_WARN_zum lernen von|r |T236317:0|t[Rasender Angriff]
    >>|cRXP_WARN_Hinweis: Dies kann ziemlich schwierig im Solo-Modus sein, je nach eurer Stufe. Sucht euch Hilfe, falls nötig|r
    .use 204716
    .target Liv Bradford
    .mob Stuart
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Rasender Angriff - 10 (Eisenschmiede)
#title Rasender Angriff

step << Warrior
    #season 2
    .goto Ironforge,72.512,76.942
    >>Sprecht mit |cRXP_FRIENDLY_Bruuk Gerstenbart|r beim Militärposten
    >>Sprecht mit |cRXP_ENEMY_Bruart|r bei der Tür, dann schlagt ihn zusammen. Er wird bei 0% k.o.
    >>Falls |cRXP_ENEMY_Bruart|r nicht da ist, wartet auf sein Respawn
    >>Sprecht mit |cRXP_FRIENDLY_Bruuk Gerstenbart|r erneut, nachdem ihr |cRXP_ENEMY_Bruart|r besiegt habt, um die |T134419:0|t[|cRXP_FRIENDLY_Rune von Rasender Angriff|r] zu erhalten
    .train 425447,1 >> |cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des rasenden Angriffs|r] |cRXP_WARN_zum lernen von|r |T236317:0|t[Rasender Angriff]
    >>|cRXP_WARN_Hinweis: Dies kann ziemlich schwierig im Solo-Modus sein, je nach eurer Stufe. Sucht euch Hilfe, falls nötig|r
    .use 204716
    .target Bruuk Barleybeard
    .mob Bruart
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Rasender Angriff - 10 (Teldrassil)
#title Rasender Angriff

step << Warrior
    #season 2
    .goto Teldrassil,55.619,59.787
    >>Sprecht mit |cRXP_FRIENDLY_Gastwirt Keldamyr|r in Dolanaar
    >>Sprecht mit |cRXP_ENEMY_Syllart|r oben, dann schlagt ihn zusammen. Er wird bei 0% k.o.
    >>Falls |cRXP_ENEMY_Syllart|r nicht da ist, wartet auf sein Respawn
    >>Sprecht mit |cRXP_FRIENDLY_Gastwirt Keldamyr|r erneut, nachdem ihr |cRXP_ENEMY_Syllart|r besiegt habt, um die |T134419:0|t[|cRXP_FRIENDLY_Rune von Rasender Angriff|r] zu erhalten
    .train 425447,1 >> |cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des rasenden Angriffs|r] |cRXP_WARN_zum lernen von|r |T236317:0|t[Rasender Angriff]
    >>|cRXP_WARN_Hinweis: Dies kann ziemlich schwierig im Solo-Modus sein, je nach eurer Stufe. Sucht euch Hilfe, falls nötig|r
    .use 204716
    .target Innkeeper Keldamyr
    .mob Syllart
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Helm
#name Endlose Wut - 20 (Westfall)
#title Endlose Wut

step << Warrior
    #season 2
    .goto Westfall,34.43,83.93,55,0
    .goto Westfall,29.55,79.90,60,0
    .goto Westfall,28.29,71.07,60,0
    .goto Westfall,26.42,65.88,60,0
    .goto Westfall,34.43,83.93
    .line Westfall,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>Tötet |cRXP_ENEMY_Old Murk-Eye|r. Plündert sie für |T132347:0|t[|cRXP_FRIENDLY_Rune of Endlose Wut|r]
    >>|cRXP_ENEMY_Old Murk-Eye|r |cRXP_WARN_patrouilliert auf und ab an der Endlosen Küste. Falls ihr ihn nicht seht, wartet, bis er im südlichsten |cRXP_ENEMY_Murloc|r-Lager spawnt|r
    .collect 208741,1 -- Rune of Endless Rage (1)
    .unitscan Old Murk-Eye
    .train 403489,1
step << Warrior
    #season 2
    .train 403489 >>Benutzt das |T132347:0|t[|cRXP_FRIENDLY_Rune of Endlose Wut|r] um |T132347:0|t[Endlose Wut] zu erlernen
    .use 208741
    .itemcount 208741,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Endlose Wut - 16 (Dunkelküste)
#title Endlose Wut

step << Warrior
    #season 2
    #completewith next
    .goto Darkshore,55.106,33.621,30 >> BETRETET die Kluftquellen-Naga-Höhle
    .train 403489,1
step << Warrior
    #season 2
    .goto Darkshore,55.40,36.05
    >>Tötet |cRXP_ENEMY_Lady Sedorax|r. Plündert sie für |T132347:0|t[|cRXP_FRIENDLY_Rune of Endlose Wut|r]
    >>|cRXP_ENEMY_Lady Sedorax|r |cRXP_WARN_ist ein Elite-Mob der Stufe 18 und hat weitere Mobs um sich herum. Ihr könnt stattdessen versuchen, es aus Westfall zu bekommen, was viel einfacher ist|r
    .collect 208741,1 -- Rune of Endless Rage (1)
    .unitscan Lady Sedorax
    .train 403489,1
step << Warrior
    #season 2
    .train 403489 >>Benutzt das |T132347:0|t[|cRXP_FRIENDLY_Rune of Endlose Wut|r] um |T132347:0|t[Endlose Wut] zu erlernen
    .use 208741
    .itemcount 208741,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Verwüsten - 8 (Wald von Elwynn)
#title Verwüsten

step << Warrior
    #season 2
    >>Tötet |cRXP_ENEMY_Kobold Miners|r und |cRXP_ENEMY_Kobold Tunnelers|r. Plündert sie für |T134168:0|t[|cRXP_LOOT_Severed Kobold Kopf|r]
    >>Tötet |cRXP_ENEMY_Murlocs|r und |cRXP_ENEMY_Murloc Streamrunners|r. Plündert sie für |T134169:0|t[|cRXP_LOOT_Severed Murloc Kopf|r]
    >>Tötet |cRXP_ENEMY_Riverpaw Schlaffi|r und |cRXP_ENEMY_Riverpaw Outrunners|r. Plündert sie für |T134163:0|t[|cRXP_LOOT_Severed Gnoll Kopf|r]
    .collect 204476,1 -- Severed Kobold Head (1)
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3
    .collect 204477,1 -- Severed Murloc Head (1)
    .goto Elwynn Forest,47.6,63.3,60,0
    .goto Elwynn Forest,51.4,64.6,60,0
    .goto Elwynn Forest,57.6,62.8,60,0
    .goto Elwynn Forest,57.6,62.8
    .collect 204478,1 -- Severed Gnoll Head (1)
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,25.9,93.9
    .mob Kobold Tunneler
    .mob Kobold Miner
    .mob Goldtooth
    .mob Murloc
	.mob Murloc Streamrunner
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .train 403475,1
step << Warrior
    #completewith RoDSW
    .zone Stormwind City >> Lauf nach Sturmwind
step << Warrior
    #season 2
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109028 >>Sprecht mit |cRXP_FRIENDLY_Viktoria Woods <Monsterjägerin>|r, um euren |T134168:0|t[|cRXP_LOOT_Abgetrennten Koboldkopf|r] abzugeben und |T134455:0|t[Monster Hunter's First Rune Bruchstück] zu erhalten
    .collect 204688,1 -- Monster Hunter's First Rune Fragment (1)
    .itemcount 204476,1 -- Severed Kobold Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109027 >>Sprecht mit |cRXP_FRIENDLY_Viktoria Woods <Monsterjägerin>|r, um euren |T134169:0|t[|cRXP_LOOT_Abgetrennten Murlockopf|r] abzugeben und |T134455:0|t[Monster Hunter's Second Rune Bruchstück] zu erhalten
    .collect 204689,1 -- Monster Hunter's Second Rune Fragment (1)
    .itemcount 204477,1 -- Severed Murloc Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #label GnollHead
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109026 >>Sprecht mit |cRXP_FRIENDLY_Viktoria Woods <Monsterjägerin>|r, um euren |T134163:0|t[|cRXP_LOOT_Abgetrennten Gnollkopf|r] abzugeben und |T134455:0|t[Monster Hunter's Third Rune Bruchstück] zu erhalten
    .collect 204690,1 -- Monster Hunter's Third Rune Fragment (1)
    .itemcount 204478,1 -- Severed Gnoll Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #label RoDSW
    #requires GnollHead
    .cast 406651 >> |cRXP_WARN_Benutzt einen der|r |T134455:0|t[Monster Jäger's Rune Fragmente] |cRXP_WARN_um die|r |T134419:0|t[|cRXP_FRIENDLY_Rune von Verwüsten|r] zu erschaffen
    .collect 204703,1 -- Rune of Devastate (1)
    .use 204690
    .use 204689
    .use 204688
    .itemcount 204688,1
    .itemcount 204689,1
    .itemcount 204690,1
    .train 403475,1
step << Warrior
    #season 2
    .train 403475 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_une der Verwüstung|r] |cRXP_WARN_zum Trainieren von|r |T135291:0|t[Verwüsten]
    .use 204703
    .itemcount 204703,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Verwüsten - 6 (Teldrassil)
#title Verwüsten

step << Warrior
    #season 2
    >>Tötet |cRXP_ENEMY_Nightsabers|r oder |cRXP_ENEMY_Nightsaber Stalkers|r. Plündert sie für |cRXP_LOOT_Severed Tiger Kopf|r
    >>Tötet |cRXP_ENEMY_Strigid Owls|r oder |cRXP_ENEMY_Strigid Kreischer|r. Plündert sie für |cRXP_LOOT_Severed Owl Kopf|r
    >>Tötet |cRXP_ENEMY_Webwood Lurkers|r oder |cRXP_ENEMY_Webwood Giftzähne|r. Plündert sie für |cRXP_LOOT_Severed Spinne Kopf|r
    .collect 208611,1 -- Severed Tiger Head (1)
    .goto Teldrassil,53.6,62.4
    .collect 208610,1 -- Severed Owl Head (1)
    .goto Teldrassil,54.6,60.4
    .collect 208612,1 -- Severed Spider Head (1)
    .goto Teldrassil,53.0,67.0
    .mob Nightsaber
    .mob Nightsaber Stalker
    .mob Strigid Owl
    .mob Strigid Screecher
    .mob Webwood Lurker
    .mob Webwood Venomfang
    .train 403475,1
step << Warrior
    #completewith next
    .zone Darnassus >> Reist nach Darnassus
step << Warrior
    #season 2
    .goto Darnassus,63.108,21.858
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Delwynna|r upstairs
    >>|cRXP_WARN_Nachdem ihr die drei |cRXP_LOOT_Abgetrennt Kopf|r abgegeben habt, werdet ihr die|r |T134419:0|t[|cRXP_FRIENDLY_Rune von Verwüsten|r] erhalten
    .train 403475 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_une der Verwüstung|r] |cRXP_WARN_zum Trainieren von|r |T135291:0|t[Verwüsten]
    .use 204703
    .skipgossip
    .target Delwynna
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Verwüsten - 6 (Dun Morogh)
#title Verwüsten

step << Warrior
    #season 2
    >>Tötet |cRXP_ENEMY_Wendigos|r. Plündert sie für |cRXP_LOOT_Severed Wendigo Paw|r
    >>Tötet |cRXP_ENEMY_Trolle der Frostmane|r. Plündert sie für |cRXP_LOOT_Abgetrennter Trollkopf|r
    >>Tötet |cRXP_ENEMY_Rockjaw Troggs|r. Plündert sie für |cRXP_LOOT_Pristine Trogg Herz|r
    .collect 208160,1 -- Severed Wendigo Paw (1)
    .goto Dun Morogh,42.2,52.6
    .collect 208159,1 -- Severed Troll Head (1)
    .goto Dun Morogh,41.6,43.8,60,0
    .goto Dun Morogh,42.2,35.0
    .collect 208158,1 -- Pristine Trogg Heart (1)
    .goto Dun Morogh,70.6,56.6
    .mob Young Wendigo
    .mob Wendigo
    .mob Frostmane Troll
    .mob Frostmane Headhunter
    .mob Frostmane Snowstrider
    .mob Frostmane Seer
    .mob Rockjaw Ambusher
    .mob Rockjaw Skullthumper
    .mob Rockjaw Bonesnapper
    .train 403475,1
step << Warrior
    #season 2
    .goto Dun Morogh,46.611,53.335
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Junni Stahlpass|r
    >>|cRXP_WARN_Nachdem ihr die drei Gegenstände abgegeben habt, werdet ihr die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Verwüstung|r] erhalten
    .train 403475 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_une der Verwüstung|r] |cRXP_WARN_zum Trainieren von|r |T135291:0|t[Verwüsten]
    .use 204703
    .skipgossip
    .target Junni Steelpass
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Siegesrausch - 2 (Durotar)
#title Siegesrausch


    --Rune of Victory Rush

step << Orc/Troll
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Frang|r
    .accept 77588 >>Akzeptiert die Quest Eignungsprüfung << Troll
    .accept 77582 >>Akzeptiert die Quest Eignungsprüfung << Orc
    .target Frang
step
    #season 2
    .goto Durotar,43.27,69.51
    >>Plündert die |cRXP_PICK_Versteckte Truhe|r nach der |T134419:0|t[|cRXP_FRIENDLY_Rune des Siegesrauschs|r]
    >>|cRXP_WARN_Geht|r um |cRXP_ENEMY_Sarkoth|r herum |cRXP_WARN_und springt hinab zur Truhe|r
    .collect 204806,1 --Rune of Victory Rush (1)
    .train 403470,1
step
    #season 2
    .train 403470 >>Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune of Siegesrausch|r]
    .use 204806
    .itemcount 204806,1
step << Orc/Troll
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Frang|r
    .turnin 77588 >>Gebt Eignungsprüfung ab << Troll
    .turnin 77582 >>Gebt Eignungsprüfung ab << Orc
    .target Frang

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Siegesrausch - 2 (Mulgore)
#title Siegesrausch


    --Rune of Victory Rush

step << Tauren
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harutt|r
    .accept 77651 >>Akzeptiert die Quest In die Dornenranken
    .target Harutt Thunderhorn
step
    #season 2
    .goto Mulgore,60.33,75.10,30,0
    .goto Mulgore,61.62,76.04
    >>Plündert die |cRXP_PICK_Borstennacken-Beutekiste|r nach der |T134419:0|t[|cRXP_FRIENDLY_Rune des Siegesrauschs|r]
    .collect 204806,1 --Rune of Victory Rush (1)
    .train 403470,1
step
    #season 2
    .train 403470 >>Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Siegesrauschs|r]
    .use 204806
    .itemcount 204806,1
step << Tauren
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harutt|r
    .turnin 77651 >>Gebt die Quest In die Dornenranken ab
    .target Harutt Thunderhorn

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Siegesrausch - 2 (Tirisfal)
#title Siegesrausch

    --Rune of Victory Rush

step << Undead
    #season 2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dannal|r
    .accept 77668 >>Akzeptiert die Quest Die verlorene Rune
    .target Dannal Stern
step
    #season 2
    .goto Tirisfal Glades,24.60,59.45
    >>Sammelt die |cRXP_PICK_Verlorene Beute|r in der Höhle für |T134419:0|t[|cRXP_FRIENDLY_Rune des Siegesrauschs|r]
    .collect 204806,1 --Rune of Victory Rush (1)
    .train 403470,1
step
    #season 2
    .train 403470 >>Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Siegesrauschs|r]
    .use 204806
    .itemcount 204806,1
step << Undead
    #season 2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dannal|r
    .turnin 77668 >>Gebt die Quest Die verlorene Rune ab
    .target Dannal Stern

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Wütender Donner - 2 (Durotar)
#title Wütender Donner

    --Rune of Furious Thunder

step
    #season 2
    .goto Durotar,40.60,66.80
    >>Tötet |cRXP_ENEMY_Sarkoth|r. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune of Wütender Donner|r]
    .collect 204809,1 --Rune of Furious Thunder(1)
    .mob Sarkoth
    .train 403476,1
step
    #season 2
    .train 403476 >>Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Wütenden Donners|r]
    .use 204809
    .itemcount 204809,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Wütender Donner - 10 (Tirisfal)
#title Wütender Donner


    --Rune of Furious Thunder

step
    #season 2
    .goto Tirisfal Glades,25.79,48.00
    >>Tötet |cRXP_ENEMY_Gillgar|r. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune of Wütender Donner|r]
    >>|cRXP_WARN_Das ist eine Elite der Stufe 7|r
    .collect 204809,1 --Rune of Furious Thunder(1)
    .mob Gillgar
    .train 403476,1
step
    #season 2
    .train 403476 >>Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Wütenden Donners|r]
    .use 204809
    .itemcount 204809,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Rasender Angriff - 10 (Orgrimmar)
#title Rasender Angriff


    --Rune of Frenzied Assault

step
    #season 2
    #completewith next
    .goto Orgrimmar,57.40,53.93,-1
    .goto Orgrimmar,58.05,51.40,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zamja|r und |cRXP_FRIENDLY_Gru'ark|r
    +Tötet |cRXP_ENEMY_Gru'ark|r wenn er feindselig wird
    .target Zamja
    .target Gru'ark
    .skipgossip
    --Gossipoption
step
    #season 2
    .goto Orgrimmar,58.52,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zamja|r
    >>Nehmt die |T134419:0|t[|cRXP_FRIENDLY_Rune des rasenden Angriffs|r] von ihr
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Zamja
    .train 425447,1
    .skipgossip
step
    #season 2
    .train 425447 >>Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Rasenden Angriffs|r]
    .use 204716
    .itemcount 204716,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Rasender Angriff - 10 (Donnerfels)
#title Rasender Angriff


    --Rune of Frenzied Assault

step
    #season 2
    #completewith next
    .goto Thunder Bluff,28.73,18.00,-1
    .goto Thunder Bluff,26.19,18.65,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Netali|r und |cRXP_FRIENDLY_Mooart|r auf der Anhöhe der Geister
    +Tötet |cRXP_FRIENDLY_Mooart|r wenn er feindselig wird
    .target Netali Proudwind
    .target Mooart
    .skipgossip
    --Gossipoption
step
    #season 2
    .goto Thunder Bluff,28.73,18.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Netali|r
    >>Nehmt die |T134419:0|t[|cRXP_FRIENDLY_Rune des rasenden Angriffs|r] von ihr
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Netali
    .train 425447,1
    .skipgossip
step
    #season 2
    .train 425447 >>Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Rasenden Angriffs|r]
    .use 204716
    .itemcount 204716,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Rasender Angriff - 10 (Tirisfal)
#title Rasender Angriff


    --Rune of Frenzied Assault

step
    .goto Tirisfal Glades,61.73,51.91
    .gossipoption 110750 >>Sprecht mit |cRXP_FRIENDLY_Penny|r
    .target Penny Hawkins
    .train 425447,1
step
    .goto Tirisfal Glades,61.72,51.72
    .gossipoption 109084 >>Sprecht mit |cRXP_FRIENDLY_Blauherz|r (unten) im Gasthaus
    .target Blueheart
    .train 425447,1
step
    #season 2
    .goto Tirisfal Glades,61.72,51.91
    >>Tötet |cRXP_ENEMY_Blauherz|r, dann sprecht oben mit |cRXP_FRIENDLY_Penny|r
    .gossipoption 110751 >>Nehmt die |T134419:0|t[|cRXP_FRIENDLY_Rune des rasenden Angriffs|r] von ihr
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Netali
    .mob Blueheart
    .train 425447,1
    .skipgossip
step
    #season 2
    .train 425447 >>Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Rasenden Angriffs|r]
    .use 204716
    .itemcount 204716,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Verwüsten - 8 (Durotar)
#title Verwüsten


    --Rune of Devastate

step
    #season 2
    .goto Durotar,50.10,79.24,40,0
    .goto Durotar,47.74,80.35,40,0
    .goto Durotar,46.54,80.12,40,0
    .goto Durotar,50.10,79.24
    >>Tötet |cRXP_ENEMY_Zwangsarbeiter der Kolkar|r und |cRXP_ENEMY_Kundschafter der Kolkar|r. Plündert sie für |cRXP_LOOT_Abgetrennter Zentaurenkopf|r
    .collect 207062,1 --Severed Centaur Head (1)
    .mob Kolkar Drudge
    .mob Kolkar Outrunner
    .train 403475,1
step
    #season 2
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70
    >>Tötet |cRXP_ENEMY_Harpyie der Staubschwingen|r. Plündert sie für |cRXP_LOOT_Abgetrennter Harpyienkopf|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
    .mob Dustwind Pillager
    .mob Dustwind Harpy
    .train 403475,1
step
    #season 2
    .goto Durotar,50.21,50.78,30,0
    .goto Durotar,50.18,49.23,30,0
    .goto Durotar,49.48,49.14,30,0
    .goto Durotar,49.32,48.18,30,0
    .goto Durotar,48.81,49.00,30,0
    .goto Durotar,48.49,49.29,30,0
    .goto Durotar,47.58,49.62,30,0
    .goto Durotar,47.06,49.53,30,0
    .goto Durotar,46.90,48.11,30,0
    .goto Durotar,49.22,48.96
    >>Tötet |cRXP_ENEMY_Razormane Quilboars|r. Plündert sie für |cRXP_LOOT_Severed Quilboar Kopf|r
    .collect 206994,1 ---Severed Quilboar Head (1)
    .mob Razormane Quilboar
    .mob Razormane Scout
    .train 403475,1
step
    #season 2
    .goto Durotar,53.14,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vahi|r
    >>Gebt die |cRXP_LOOT_Köpfe|r, die ihr gesammelt habt, im Austausch für die |T134455:0|t[Runenfragmente] ab
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Vahi Bonesplitter
    .train 403475,1
step
    #season 2
    .use 204688 >>Benutzt die |T134455:0|t[Runenfragmente], um |T134419:0|t[|cRXP_FRIENDLY_Rune der Verwüstung|r] zu erschaffen
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step
    #season 2
    .train 403475 >>Benutzt |T134419:0|t[|cRXP_FRIENDLY_Rune der Verwüstung|r]
    .use 204703
    .itemcount 204703,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Verwüsten - 8 (Mulgore)
#title Verwüsten


    --Rune of Devastate

step
    #season 2
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0
    >>Tötet |cRXP_ENEMY_Palemane Gnolls|r. Plündert sie für |cRXP_LOOT_Severed Gnoll Kopf|r
    .collect 204478,1 --Severed Gnoll Head (1)
    .unitscan Snagglespear
    .mob Palemane Tanner
    .mob Palemane Skinner
    .mob Palemane Poacher
    .train 403475,1
step
    #season 2
#loop
	.line Mulgore,34.08,43.71,32.98,42.96,31.72,43.08,31.08,42.09,31.12,40.87,31.74,40.31,32.44,41.17,33.57,41.30,33.82,40.26,34.48,41.21,34.50,42.29
	.goto Mulgore,34.08,43.71,25,0
	.goto Mulgore,32.98,42.96,25,0
	.goto Mulgore,31.72,43.08,25,0
	.goto Mulgore,31.08,42.09,25,0
	.goto Mulgore,31.12,40.87,25,0
	.goto Mulgore,31.74,40.31,25,0
	.goto Mulgore,32.44,41.17,25,0
	.goto Mulgore,33.57,41.30,25,0
	.goto Mulgore,33.82,40.26,25,0
	.goto Mulgore,34.48,41.21,25,0
	.goto Mulgore,34.50,42.29,25,0
    >>Tötet |cRXP_ENEMY_Windfury Wind Witches|r und |cRXP_ENEMY_Windfury Harpies|r. Plündert sie für |cRXP_LOOT_Severed Harpyie Kopf|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Windfury Wind Witch
    .mob Windfury Harpy
    .train 403475,1
step
    #season 2
#loop
	.line Mulgore,59.85,25.62,61.14,22.93,61.77,22.49,62.18,22.05,62.32,20.89,61.62,19.50,60.44,19.50,60.16,21.06,60.41,21.96,61.12,22.88
	.goto Mulgore,59.85,25.62,25,0
	.goto Mulgore,61.14,22.93,25,0
	.goto Mulgore,61.77,22.49,25,0
	.goto Mulgore,62.18,22.05,25,0
	.goto Mulgore,62.32,20.89,25,0
	.goto Mulgore,61.62,19.50,25,0
	.goto Mulgore,60.44,19.50,25,0
	.goto Mulgore,60.16,21.06,25,0
	.goto Mulgore,60.41,21.96,25,0
	.goto Mulgore,61.12,22.88,25,0
    >>Tötet |cRXP_ENEMY_Eindringling der Borstennacken|r. Plündert sie für |cRXP_LOOT_Abgetrennter Stacheleberkopf|r
    .collect 206994,1 ---Severed Quilboar Head (1)
    .mob Bristleback Interloper
    .train 403475,1
step
    #season 2
    .goto Mulgore,46.29,61.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vateya|r im Dorf der Bluthufe
    >>Gebt die |cRXP_LOOT_Köpfe|r, die ihr gesammelt habt, im Austausch für die |T134455:0|t[Runenfragmente] ab
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Vateya Timberhoof
    .train 403475,1
step
    #season 2
    .use 204688 >>Benutzt die |T134455:0|t[Runenfragmente], um |T134419:0|t[|cRXP_FRIENDLY_Rune der Verwüstung|r] zu erschaffen
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step
    #season 2
    .train 403475 >>Benutzt |T134419:0|t[|cRXP_FRIENDLY_Rune der Verwüstung|r]
    .use 204703
    .itemcount 204703,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Verwüsten - 8 (Tirisfal)
#title Verwüsten


    --Rune of Devastate

step
    #season 2
    .goto Tirisfal Glades,58.20,58.15,50,0
    .goto Tirisfal Glades,57.98,61.66,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .goto Tirisfal Glades,54.73,64.28,50,0
    .goto Tirisfal Glades,52.84,62.26,50,0
    .goto Tirisfal Glades,50.52,61.21,50,0
    .goto Tirisfal Glades,47.88,60.87,50,0
    .goto Tirisfal Glades,46.09,59.70,50,0
    .goto Tirisfal Glades,43.49,61.81,50,0
    .goto Tirisfal Glades,56.45,62.62
    >>Tötet |cRXP_ENEMY_Nachtsauger|r. Plündert sie für |cRXP_LOOT_Abgetrennter Fledermauskopf|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #season 2
    .goto Tirisfal Glades,56.31,39.67,40,0
    .goto Tirisfal Glades,54.71,41.19,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    .goto Tirisfal Glades,56.43,43.92,40,0
    .goto Tirisfal Glades,55.24,42.54
    >>Tötet |cRXP_ENEMY_Rot Verstecken Gnolls|r. Plündert sie für |cRXP_LOOT_Severed Gnoll Kopf|r
    .collect 204478,1 --Severed Gnoll Head (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Graverobber
    .mob Rot Hide Gnoll
    .train 403475,1
step
    #season 2
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    .goto Tirisfal Glades,59.54,27.86
    >>Tötet |cRXP_ENEMY_Murlocs|r. Plündert sie für |cRXP_LOOT_Severed Murloc Kopf|r
    .collect 204477,1 --Severed Murloc Head (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 403475,1
step
    #season 2
    .goto Undercity,48.03,70.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dorac|r in der Unterstadt
    >>Gebt die |cRXP_LOOT_Köpfe|r, die ihr gesammelt habt, im Austausch für die |T134455:0|t[Runenfragmente] ab
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Dorac Graves
    .train 403475,1
step
    #season 2
    .use 204688 >>Benutzt die |T134455:0|t[Runenfragmente], um |T134419:0|t[|cRXP_FRIENDLY_Rune der Verwüstung|r] zu erschaffen
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step
    #season 2
    .train 403475 >>Benutzt |T134419:0|t[|cRXP_FRIENDLY_Rune der Verwüstung|r]
    .use 204703
    .itemcount 204703,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Blutraserei - 8 (Durotar)
#title Blutraserei


    --Rune of Blood Frenzy

step
    #season 2
    .goto Durotar,56.10,21.61,0
    .goto Durotar,56.98,24.42,0
    .goto Durotar,55.42,38.55,0
    .goto Durotar,40.65,48.24,0
    .goto Durotar,36.11,47.85,0
    .goto Durotar,56.10,21.61,100,0
    .goto Durotar,56.98,24.42,100,0
    .goto Durotar,55.42,38.55,100,0
    .goto Durotar,40.65,48.24,100,0
    .goto Durotar,36.11,47.85,100,0
    .goto Durotar,56.10,21.61
    >>Findet und besiegt den |cRXP_FRIENDLY_Wandernder Schwertkämpfer|r. Erbeutet die |cRXP_PICK_Box|r, die er fallen lässt, für die |T134419:0|t[|cRXP_FRIENDLY_Rune of Blutraserei|r]
    >>|cRXP_ENEMY_He patrols alle over the zone and is difficult to find. The waypoint guides you past known spawn locations|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 403474,1
step
    #season 2
    .train 403474 >>Benutzt |T134419:0|t[|cRXP_FRIENDLY_Rune of Blutraserei|r]
    .use 204441
    .itemcount 204441,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Blutraserei - 8 (Mulgore)
#title Blutraserei


--Rune of Blood Frenzy

step
    #season 2
    .goto Mulgore,37.38,56.58,0
    .goto Mulgore,45.11,37.75,0
    .goto Mulgore,52.56,43.61,0
    .goto Mulgore,60.43,68.56,0
    .goto Mulgore,37.38,56.58,100,0
    .goto Mulgore,45.11,37.75,100,0
    .goto Mulgore,52.56,43.61,100,0
    .goto Mulgore,60.43,68.56,100,0
    .goto Mulgore,37.38,56.58
    >>Findet und besiegt den |cRXP_FRIENDLY_Wandernder Schwertkämpfer|r. Erbeutet die |cRXP_PICK_Box|r, die er fallen lässt, für die |T134419:0|t[|cRXP_FRIENDLY_Rune of Blutraserei|r]
    >>|cRXP_ENEMY_Er patrouilliert überall in der Zone und ist schwer zu finden. Der Wegpunkt führt euch an bekannten Spawn-Standorten vorbei.|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 403474,1
step
    #season 2
    .train 403474 >>Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune of Blutraserei|r]
    .use 204441
    .itemcount 204441,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Blutraserei - 8 (Tirisfal)
#title Blutraserei


    --Rune of Blood Frenzy

step
    #season 2
    .goto Tirisfal Glades,79.25,65.02
    >>Findet und duelliert |cRXP_FRIENDLY_Wandernder Schwertkämpfer|r. Plündert die |cRXP_PICK_Box|r, um an |T134419:0|t[|cRXP_FRIENDLY_Rune of Blutraserei|r] zu gelangen.
    >>|cRXP_ENEMY_Er erscheint östlich des Balnirs Bauernhof|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 403474,1
step
    #season 2
    .train 403474 >>Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune of Blutraserei|r]
    .use 204441
    .itemcount 204441,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Rasanter Schlag - 12 (Loch Modan)
#title Rasanter Schlag

step << Warrior
    .goto Loch Modan,33.2,73.8
    >>Tötet |cRXP_ENEMY_Troggs|r. Plündert sie für |cRXP_LOOT_Schädelförmige Geode|r
    .collect 208847,1 -- Skull-Shaped Geode (1)
    .mob Stonesplinter Scout
    .mob Stonesplinter Trogg
    .train 425443,1
step << Warrior
    .goto Loch Modan,33.2,73.8
    >>Tötet|cRXP_ENEMY_Schädelhauer der Splittersteintroggs|r
    >>|cRXP_WARN_Im Kampf wird es euch einen kräftigen Schlag verpassen, der die |cRXP_LOOT_Schädelförmige Geode|r in eine|r |T236489:0|t[|cRXP_LOOT_Aufgebrochene schädelförmige Geode|r]
    .collect 208848,1 -- Cracked Skull-Shaped Geode (1)
    .mob Stonesplinter Skullthumper
    .train 425443,1
step << Warrior
    .use 208848 >>Benutzt |T236489:0|t[|cRXP_WARN_Aufgebrochene schädelförmige Geode|r] |cRXP_LOOT_um|r |T134419:0|t[|cRXP_WARN_Rune des Rasanten Schlags|r] |cRXP_FRIENDLY_zu erhalten|r
    .collect 208778,1 -- Rune of Quick Strike (1)
    .train 425443,1
step << Warrior
    .train 425443 >> Benutzt die |T134419:0|t[|cRXP_WARN_Rune des rasanten Schlags|r] |cRXP_FRIENDLY_um|r |T132394:0|t[Rasanter Schlag] |cRXP_WARN_zu erlernen|r
    .use 208778
    .itemcount 208778,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Endlose Wut - 15 (The Barrens)
#title Endlose Wut


    --Rune of Endless Rage

step
    #season 2
    .goto The Barrens,52.27,31.08,
    .aura 420667 >>Klickt auf das |cRXP_PICK_Kriegsbanner der Horde|r
    .train 403489,1
step
    #season 2
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Devrak|r
    .fly Ratchet >> Fliege nach Ratschet
    .target Devrak
step
    #completewith next
    .subzone 385 >>Reist zur Feste Nordwacht
step
    #season 2
    .goto The Barrens,62.55,56.31
    >>Klickt das |cRXP_PICK_Kriegsbanner der Allianz|r
    >>Tötet |cRXP_ENEMY_Leutnant Steinbraue|r wenn er spawnt. Plündert ihn für |T134419:0|t[|cRXP_FRIENDLY_Rune der Endlosen Wut|r]
    .collect 208741,1 --Rune of Endless Rage (1)
    .mob Lieutenant Stonebrew
    .train 403489,1
step
    #season 2
    .train 403489 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Endlose Wut|r] |cRXP_WARN_um |r |T132347:0|t[Endlose Wut] zu trainieren
    .use 208741
    .itemcount 208741,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Endlose Wut - 15 (Silberwald)
#title Endlose Wut


    --Rune of Endless Rage

step
    #season 2
    #completewith next
    +|cRXP_WARN_Das Gruppieren wird empfohlen, da ihr einen Level-17-Elite töten müsst|r
step
    #season 2
    .goto Silverpine Forest,35.03,7.73
    >>Greift |cRXP_ENEMY_Eingesponnenes Opfer|r an und tötet |cRXP_ENEMY_Verirrten Abenteurer|r, der erscheint. Plündert ihn für |T134419:0|t[|cRXP_FRIENDLY_Rune der endlosen Wut|r]
    >>|cRXP_WARN_Ihr müsst |cRXP_ENEMY_Eingesponnenes Opfer|r schnell ausschalten, da er sich alle paar Sekunden heilt|r
    .collect 208741,1 --Rune of Endless Rage (1)
    .mob Webbed Victim
    .mob Lost Adventurer
    .train 403489,1
step
    #season 2
    .train 403489 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Endlose Wut|r] |cRXP_WARN_um |r |T132347:0|t[Endlose Wut] zu trainieren
    .use 208741
    .itemcount 208741,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Rasanter Schlag - 20 (Dunkelküste)
#title Rasanter Schlag

step << Warrior
    .goto 1439,44.081,20.739
    >>Plündert die |T135129:0|t[Knorrige Harpune] aus dem Auge des Skeletts
    .collect 209047,1 --Gnarled Harpoon (1)
    .train 425443,1
step << Warrior
    #completewith next
    .goto 1439,44.081,20.739
    .cast 422397 >>|cRXP_WARN_Benutzt|r |T135129:0|t[Knorrige Harpune] |cRXP_WARN_auf |cRXP_ENEMY_Paxnozz|r, um seine maximale Gesundheit auf 743 zu reduzieren|r
    .train 425443,1
step << Warrior
    #loop
    .goto Darkshore,48.0,18.0,0
    .goto Darkshore,47.6,13.2,0
    .goto Darkshore,50.4,12.0,0
    .goto Darkshore,48.8,16.0,0
    .goto Darkshore,48.0,18.0,40,0
    .goto Darkshore,47.6,13.2,40,0
    .goto Darkshore,50.4,12.0,40,0
    .goto Darkshore,48.8,16.0,40,0
    >>Tötet |cRXP_ENEMY_Paxnozz|r. Plündert sie für |T134419:0|t|cRXP_LOOT_[Rune of Rasanter Schlag]|r
    >>|cRXP_WARN_Seid vorsichtig, das ist ein Stufe-20-Elite|r
    .collect 208778,1 -- Rune of Quick Strike (1)
    .unitscan Paxnozz
    .use 209047
    .train 425443,1
step << Warrior
    .train 425443 >> Benutzt die |T134419:0|t[|cRXP_WARN_Rune des rasanten Schlags|r] |cRXP_FRIENDLY_um|r |T132394:0|t[Rasanter Schlag] |cRXP_WARN_zu erlernen|r
    .use 208778
    .itemcount 208778,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Gürtel
#name Blutwoge - 40 (Azeroth)
#title Blutwoge

step
    .train 416004,1
    #completewith SpiceBlend
    .zone Arathi Highlands >>Reist nach Arathihochland
step
    #completewith IllegibleReciple
    +|cRXP_WARN_Ihr solltet euch evtl. eine Gruppe suchen, da ihr Level-37+-Elites töten müsst um|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Blutwoge|r] zu erhalten
    .subzoneskip 324
step
    #label IllegibleReciple
    .train 416004,1
    #loop
    .goto Alterac Mountains,39.0,54.6,0
    .goto Arathi Highlands,24.14,61.85,0
    .goto Arathi Highlands,24.14,61.85,30,0
    .goto Arathi Highlands,24.25,64.97,30,0
    .goto Arathi Highlands,21.22,66.52,40,0
    .goto Arathi Highlands,20.21,67.17,40,0
    >>Tötet |cRXP_ENEMY_Boulderfist Ogres|r innerhalb Burg Stromgarde. Plündert sie für an |T237451:0|t[|cRXP_LOOT_Illegible Recipe|r]
    >>|cRXP_WARN_Benutzt das|r |T237451:0|t[|cRXP_LOOT_Unleserliches Rezept|r] |cRXP_WARN_um die Quest zu starten|r
    >>|cRXP_WARN_Alternativ könnt ihr auch |cRXP_ENEMY_Crushridge-Oger|r in Alteracgebirge töten|r
    .collect 213422,1,79624 --Illegible Recipe (1x)
    .accept 79624 >>Akzeptiert die Quest Kochen kann jeder
    .mob Boulderfist Shaman
    .mob Boulderfist Mauler
    .mob Boulderfist Lord
    .mob Crushridge Mauler
    .mob Crushridge Mage
    .mob Crushridge Enforcer
    .mob Crushridge Warmonger
step
    #completewith next
    .goto Arathi Highlands,57.587,72.499,10 >> Geht den Berg hinauf zu |cRXP_FRIENDLY_Skonk <Hobbykoch>|r
step
    .train 416004,1
    .goto Arathi Highlands,57.68,74.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Skonk|r
    .turnin 79624 >>Gebt die Quest Kochen kann jeder ab
    .accept 79677 >>Akzeptiert die Quest Ein kurzer Blick auf die Liste
    .target Skonk
step
    #completewith SpiceBlend
    .goto Arathi Highlands,30.74,66.94,60,0
    .goto Arathi Highlands,22.72,71.98,50,0
    .goto Arathi Highlands,21.50,75.91,40,0
    .goto Arathi Highlands,21.98,79.96,30 >> Reist nach Die Faldirbucht
step
    #label SpiceBlend
    .train 416004,1
    .goto Arathi Highlands,20.47,84.90,8,0
    .goto Arathi Highlands,21.379,83.919
    >>Öffnet das |cRXP_PICK_Versiegeltes Fass|r. Plündert es für die |cRXP_LOOT_Schmuggler-Gewürzmischung|r
    >>|cRXP_WARN_Es befindet sich am Boden des versunkenen Schiffes. Schwimmt durch das große Loch am tiefsten Punkt, um es zu erreichen|r
    .complete 79677,2 --Smuggler's Spice Blend (1x)
step
    .train 416004,1
    #completewith next
    .zone Hillsbrad Foothills >>Reist zum Vorgebirge des Hügellands
step
    .train 416004,1
    #loop
    .goto Hillsbrad Foothills,84.34,32.40,0
    .goto Hillsbrad Foothills,81.33,34.03,50,0
    .goto Hillsbrad Foothills,84.34,32.40,50,0
    .goto Hillsbrad Foothills,82.09,36.92,50,0
    >>Tötet |cRXP_ENEMY_Wild Gryphons|r. Plündert sie für |cRXP_LOOT_Hybrid Haunch|r
    .complete 79677,1 --Hybrid Haunch (1x)
    .mob Kurdros << Horde
    .mob Granistad << Horde
    .mob Wild Gryphon
step
    .train 416004,1
    #completewith next
    .zone Badlands >>Reist ins Ödland
step
    #completewith next
    .goto Badlands,42.87,29.77,60 >> Betretet Festung Angor
step
    .train 416004,1
    .goto Badlands,41.92,26.26,20,0
    .goto Badlands,41.383,27.964
    >>Klickt auf das |cRXP_PICK_Angebrochenes Shadowforge-Fass|r. Plündert es für das |cRXP_LOOT_Balmy Gebräu|r
    >>|cRXP_WARN_Bleiben auf maximaler Reichweite, um Aggro zu vermeiden|r |cRXP_ENEMY_Botschafter Infernus|r
    .complete 79677,3 --Balmy Brew (1x)
step
    .train 416004,1
    #completewith next
    .zone Swamp of Sorrows >>Reist zu den Sümpfen des Elends
step
    .train 416004,1
    #loop
    .goto Swamp of Sorrows,56.16,61.19,0
    .goto Swamp of Sorrows,62.11,65.79,0
    .goto Swamp of Sorrows,68.52,73.12,0
    .goto Swamp of Sorrows,72.50,82.18,0
    .goto Swamp of Sorrows,78.49,88.19,0
    .goto Swamp of Sorrows,56.16,61.19,60,0
    .goto Swamp of Sorrows,62.11,65.79,60,0
    .goto Swamp of Sorrows,68.52,73.12,60,0
    .goto Swamp of Sorrows,72.50,82.18,60,0
    .goto Swamp of Sorrows,78.49,88.19,60,0
    >>Tötet |cRXP_ENEMY_Deathstrike Tarantulas|r. Plündert sie für |cRXP_LOOT_Viscous Toxin|r
    >>|cRXP_WARN_Sie sind im Südosten der Sümpfe des Elends zu finden|r
    .complete 79677,4 --Viscous Venom (1x)
    .mob Deathstrike Tarantula
step
    .train 416004,1
    #completewith GroceryRun
    .zone Arathi Highlands >>Reist nach Arathihochland
step
    #completewith next
    .goto Arathi Highlands,57.587,72.499,10 >> Geht den Berg hinauf zu |cRXP_FRIENDLY_Skonk <Hobbykoch>|r
step
    #label GroceryRun
    .train 416004,1
    .goto Arathi Highlands,57.68,74.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Skonk|r
    .turnin 79677 >>Gebt die Quest Ein kurzer Blick auf die Liste ab
    .accept 79678 >>Akzeptiert die Quest Geschmacksprobe
    .timer 23,Geschmacksprobeing RP
    .target Skonk
step
    .train 416004,1
    .goto Arathi Highlands,57.68,74.66
    >>Niederlage |cRXP_ENEMY_Skonk|r after he eats his meal
    .complete 79678,1 --Taste Testing
    .mob Skonk
step
    .train 416004,1
    .goto Arathi Highlands,57.68,74.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Skonk|r
    .turnin 79678 >>Gebt die Quest Geschmacksprobe ab
    .target Skonk
step
    .train 416004 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Blutwoge|r] |cRXP_WARN_um|r |T236306:0|t[Blutwoge] zu trainieren
    .use 213103
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Gürtel
#name Fokussierte Wut - 35 (Arathihochland)
#title Fokussierte Wut

-- Focused Rage

step
    .train 409163,1
    #completewith WitherbarkCave
    +|cRXP_WARN_Es wird empfohlen, weitere Gruppenmitglieder zu finden, bevor ihr versucht das|r |T134419:0|t[|cRXP_LOOT_Rune der Fokussierten Wut|r] zu erhalten|cRXP_WARN_ da dies einen Level-35-Elite und 2 Mobs zur gleichen Zeit töten erfordert|r
step
    .train 409163,1
    #completewith WitherbarkCave
    .zone Arathi Highlands >> Reist nach |cFFfa9602Arathihochland|r
step
    .train 409163,1
    .goto Arathi Highlands,72.51,65.67,70,0
    .goto Arathi Highlands,70.334,69.93,70,0
    .goto Arathi Highlands,64.06,72.51,70,0
    .goto Arathi Highlands,61.35,71.72,70,0
    .goto Arathi Highlands,64.23,67.72,70,0
    .goto Arathi Highlands,66.56,63.98
    >>Tötet |cRXP_ENEMY_Witherbark Trolls|r. Plündert sie für |T133057:0|t[|cRXP_LOOT_Witherbark Mallet|r]
    >>|cRXP_WARN_Ihr könnt die|r |T133057:0|t[|cRXP_LOOT_Schlaghammer der Bleichborke|r] auch im|r Auktionshaus kaufen
    .collect 216483,1
    .mob Witherbark Shadow Hunter
    .mob Witherbark Axe Thrower
    .mob Witherbark Headhunter
    .mob Witherbark Witch Doctor
step
    .train 409163,1
    #label WitherbarkCave
    .goto Arathi Highlands,68.363,75.806,25 >>BETRETET die Bleichborkenhöhle
step
    .train 409163,1
    #completewith next
    .goto Arathi Highlands,69.502,81.924
    .cast 436278 >> |cRXP_WARN_Benutzt|r |T133057:0|t[|cRXP_LOOT_Schlaghammer der Bleichborke|r] |cRXP_WARN_beim |cRXP_PICK_Gong|r in der Höhle|r
    .use 216483 >>|cRXP_WARN_Dies spawnt ein |cRXP_ENEMY_Bleichborke Goliath|r (Stufe 35 Elite) sowie 2 zusätzliche Mobs|r
step
    .train 409163,1
    .goto Arathi Highlands,69.61,81.60
    >>Tötet die |cRXP_ENEMY_Witherbark Goliath|r. Plündert sie für |T134419:0|t[|cRXP_LOOT_Rune of Fokussierte Wut|r]
    .collect 213109,1
    .mob Witherbark Goliath
step
    .train 409163 >> |cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_LOOT_Rune der Fokussierten Wut|r] |cRXP_WARN_zum Trainieren|r |T132345:0|t[Fokussierte Wut]
    .use 213109
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Stiefel
#name Einschreiten - 24 (Tausend Nadeln)
#title Einschreiten

-- Intervene

step
    #optional
    .train 403472,1
    +|cRXP_WARN_Ihr müsst mindestens Stufe 24 sein, bevor ihr das|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Einschreitens|r] erhalten könnt
    .xp >24,1
step
    .train 403472,1
    #completewith next
    .train 72,1
    .train 1671,1
    .train 1672,1
    +|cRXP_WARN_Ihr müsst trainieren|r |T132357:0|t[Schildhieb] |cRXP_WARN_um zu erwerben|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Einschreitens|r]
step
    .train 403472,1
    .train 5308,1
    .train 20658,1
    .train 20660,1
    .train 20661,1
    .train 20662,1
    +|cRXP_WARN_Ihr müsst|r |T135358:0|t[Hinrichten] |cRXP_WARN_trainieren um das|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Einschreitens|r] zu erhalten
step
    .train 403472,1
    #optional
    .train 72,1
    .train 1671,1
    .train 1672,1
    +|cRXP_WARN_Ihr müsst trainieren|r |T132357:0|t[Schildhieb] |cRXP_WARN_um die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Einschreitens|r]
step
    .train 403472,1
    #completewith next
    >>|cRXP_WARN_Bevor ihr nach Tausend Nadeln aufbrecht, stellt sicher, dass ihr das Folgende habt (ihre Stärke spielt keine Rolle)|r
    +Eine einhändige Waffe
    +Ein Schild
step
    .train 403472,1
    .goto Thousand Needles,67.84,89.50,100 >> Reist zum Rustmaul Digsite in |cFFfa9602Tausend Nadeln|r
step
    #completewith next
    +|cRXP_WARN_Stellt sicher, dass ihr eure einhändige Waffe und euren Schild ausgerüstet habt|r
step
    .train 403472,1
    .goto Thousand Needles,67.968,89.800
    .cast 5308,20658,20660,20661,20662 >>|cRXP_WARN_Wirkt|r |T135358:0|t[Hinrichten] |cRXP_WARN_auf |cRXP_ENEMY_Kampfattrappe|r, dann bewegt euch zur nächsten|r |cRXP_ENEMY_Kampfattrappe|r
    .mob Combat Dummy
step
    .train 403472,1
    .goto Thousand Needles,67.845,89.511
    .cast 355 >>|cRXP_WARN_Wirkt|r |T136080:0|t[Spott] |cRXP_WARN_auf |cRXP_ENEMY_Kampfattrappe|r, dann bewegt euch zur nächsten|r |cRXP_ENEMY_Kampfattrappe|r
    .mob Combat Dummy
step
    .train 403472,1
    .goto Thousand Needles,67.713,89.245
    .cast 72,1671,1672 >>|cRXP_WARN_Wirkt|r |T132357:0|t[Schildhieb] |cRXP_WARN_auf|r |cRXP_ENEMY_Kampfattrappe|r
    .mob Combat Dummy
step
    .train 403472,1
    .goto Thousand Needles,67.933,89.408
    >>Öffnet |cRXP_PICK_Kriegers Beute|r Truhe. Plündert es für |T134419:0|t[|cRXP_FRIENDLY_Rune des Einschreitens|r]
    .collect 213111,1 --Rune of Intervention (1x)
step
    .train 403472 >>|cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Einschreitens|r] |cRXP_WARN_um zu erlernen|r |T132365:0|t[Einschreiten]
    .use 213111
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Stiefel
#name Anspornender Schrei - 40 (Ödland)
#title Anspornender Schrei

-- Rallying Cry

step
    .train 426491,1
    #completewith next
    .zone Badlands >>Reist ins Ödland
step
    .train 426491,1
    #loop
    .goto Badlands,15.6,45.8,0
    .goto Badlands,20.0,57.0,0
    .goto Badlands,27.8,67.8,0
    .goto Badlands,33.0,66.2,0
    .goto Badlands,36.6,56.8,0
    .goto Badlands,15.6,45.8,30,0 << Alliance
    .goto Badlands,20.0,57.0,30,0 << Alliance
    .goto Badlands,27.8,67.8,30,0 << Alliance
    .goto Badlands,33.0,66.2,30,0 << Alliance
    .goto Badlands,36.6,56.8,30,0 << Alliance
    .goto Badlands,36.6,56.8,30,0 << Horde
    .goto Badlands,33.0,66.2,30,0 << Horde
    .goto Badlands,27.8,67.8,30,0 << Horde
    .goto Badlands,20.0,57.0,30,0 << Horde
    .goto Badlands,15.6,45.8,30,0 << Horde
    >>Sprecht mit |cRXP_FRIENDLY_Wandernder Schwertkämpfer|r in Ödland
    >>Besiegt den |cRXP_ENEMY_Wandernder Schwertkämpfer|r in einem Duell
    >>Öffnet die |cRXP_PICK_Schwertkämpfers Belohnung|r, die er fallen lässt. Plündert sie für die |T134419:0|t[|cRXP_FRIENDLY_Rune of the Rittmeister|r]
    >>|cRXP_WARN_Hinweis: Der |cRXP_FRIENDLY_Wandernder Schwertkämpfer|r kann an vielen Orten in Ödland erscheinen|r
    .collect 213110,1 --Rune of the Commander (1x)
    .unitscan Wandering Swordsman
    .skipgossip
step
    .train 426491 >> |cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Rittmeister|r] |cRXP_WARN_zum Erlernen von|r |T132339:0|t[Anspornender Schrei]
    .use 213110
]])


RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Armschienen
#title Toben
#name Toben - 43 (Feralas)


step
    #completewith next
    .zone Feralas >>Reist nach Feralas
step
    .goto Feralas,75,35.2,20 >>Lauft zum Außenposten der Gordunni, einer Höhle nördlich von Camp Mojache
    .train 427081,1
step
    .goto Feralas,74.8,24.9
    >>BETRETET die Höhle, sucht nach einem Level 43 Elite-Oger. Tötet ihn für |T134419:0|t[|cRXP_FRIENDLY_Rune des Ungebändigten|r]
    .collect 220682,1 -- Rune of Unbridled 1/1
    .unitscan Ohk'zi
    .train 427081,1
step
    .train 427081 >> |cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Ungebändigten|r] |cRXP_WARN_um zu lernen|r |T132352:0|t[Randale]
    .use 220682

]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Armschienen
#title Abrisskommando
#name Abrisskommando - 40 (Das Hinterland)

step
    #completewith next
    .zone The Hinterlands >>Reise in die Hinterlande
step
    #loop
    .goto The Hinterlands,23.6,57.4
    .goto The Hinterlands,36.6,66.2,0
    .goto The Hinterlands,31.6,59.8,0
    >>Tötet die |cRXP_ENEMY_Trolle der Bleichborken|r im westlichen Teil der Karte, bis ihr |T133054:0|t|cRXP_LOOT_Geodenhammer|r von ihnen plündert
    .collect 220912,1 --Geode Hammer 1/1
    .mob Witherbark Sadist
    .mob Witherbark Scalper
    .mob Witherbark Zealot
    .mob Witherbark Hideskinner
    .mob Witherbark Venomblood
    .train 427084,1
step
    .equip 16,220912 >>Rüstet den |T133054:0|t|cRXP_LOOT_Geodenhammer|r als Waffenhand-Waffe aus. Kämpft weiter, bis der Hammer bricht und sich in einen |T133054:0|t|cRXP_LOOT_Kaputter Geodenhammer|r verwandelt.
    .collect 220914,1 --Broken Geode Hammer
    .train 427084,1
step
    >>Klickt rechts auf den |T133054:0|t|cRXP_LOOT_Kaputter Geodenhammer|r und plündert |T134419:0|t[|cRXP_FRIENDLY_Rune der Sprengung|r]
    .collect 220913,1 --Rune of Demolition
    .train 427084,1
step
    .train 427084 >> |cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Sprengung|r] |cRXP_WARN_um zu erlernen|r |T132364:0|t[Abrisskommando]
    .use 220913
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Helm
#title Verlangen nach Blut
#name Verlangen nach Blut - 50 (Sengende Schlucht)

step
    #completewith SlagPits
    .zone Searing Gorge >>Reist zur Sengenden Schlucht
step
    #sticky
    #completewith summonIodax
    >>|cRXP_WARN_Um diese Quest abzuschließen, müsst ihr einen lvl 50 Elite-Golem mit etwa 12k HP beschwören und töten. Es ist möglich, ihn allein zu besiegen, aber ich würde euch empfehlen, eine Gruppe zu suchen. Um den Golem zu beschwören, müsst ihr 4 Teile von Slag Pits in Sengende Schlucht sammeln. Aber ihr müsst sie nicht sammeln, wenn ihr jemand Anderen findet, der den Boss für euch beschwört. In diesem Fall könnt ihr direkt zu Schritt 13 springen.|r
    .collect 221258,1 --Right Foot of the Obliterator
    .collect 221256,1 --Right Arm of the Obliterator
    .collect 221259,1 --Left Foot of the Obliterator
    .collect 221257,1 --Left Arm of the Obliterator
step
    #label SlagPits
    .goto 1427/0,-1247.100,-6906.900,10 >>BETRETET die Slag-Gruben durch die Höhle hier
    .train 427076,1
step
    .goto 1427/0,-1257.200,-6764.300
    >>Folgt dem geschwungenen Pfad nach dem Eintritt in die Höhle. Der |cRXP_LOOT_Right Bewaffnen of the Vernichter|r liegt auf dem Boden neben einem Haufen aus Kisten und Fässern
    .collect 221256,1 --Right Arm of the Obliterator 1/1
    .train 427076,1
step
    .goto 1427/0,-1161.500,-6756.500,10 >>Lauft zu und durch das Tor
    .train 427076,1
step
    .goto 1427/0,-1303.200,-6461.500,15 >>Geht weiter den Pfad. Im großen Raum mit einem massiven Golem auf dem Boden nehmt die Rampe zur oberen Ebene der Pits
    .train 427076,1
step
    .goto 1427/0,-1301.900,-6584.700
    >>Sammelt den |cRXP_LOOT_Right Foot of the Vernichter|r vom Boden
    .collect 221258,1 --Right Foot of the Obliterator
    .train 427076,1
step
    .goto 1427/0,-1387.200,-6722.700,10 >>Geht zum südlichen Ende der Brücke
    .train 427076,1
step
    .goto 1427/0,-1428.600,-6656.800
    >>Springt von der Brücke zur Incendosaurier-Höhle. Sammelt den |cRXP_LOOT_Left Bewaffnen of the Vernichter|r vom Boden neben dem Lavabecken
    .collect 221257,1 --Left Arm of the Obliterator
    .train 427076,1
step
    .goto 1427/0,-1271.900,-6553.500
    >>Geht ganz zum hinteren Ende der Incendosaurier-Höhle. Sammelt dort den |cRXP_LOOT_Left Foot of the Vernichter|r vom Boden
    .collect 221259,1
    .train 427076,1
step
	#completewith next
	+Überspringt diesen Schritt, indem ihr auf den Felsen hinter dem Fuß springt und euch ausloggt
	.link https://youtu.be/oBnDG1AWcxU >> HIER KLICKEN zur Orientierung
step
    #label summonIodax
    #optional
    #completewith next
    .goto 1427/0,-1791.400,-6774.900
    .cast 446363 >>Geht zum Kopf des Vernichters, der auf eurer Karte markiert ist. Benutzt die Teile, die ihr gesammelt habt, um |cRXP_ENEMY_Iodax der Vernichter|r, einen Level 50 Elite-Riesen, zu beschwören
    .unitscan Iodax the Obliterator
    .train 427076,1
step
    .goto 1427/0,-1791.400,-6774.900
    >>Tötet |cRXP_ENEMY_Iodax the Vernichter|r und plündert ihn für |T134419:0|t[|cRXP_FRIENDLY_Rune des Blutdurstigen|r]
    .collect 221267,1 --Rune of the Bloodthirsty
    .unitscan Iodax the Obliterator
    .train 427076,1
step
    .train 427076 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Blutdurstigen|r] |cRXP_WARN_um zu erlernen|r |T236276:0|t[Verlangen nach Blut]
    .use 221267
    .itemcount 221267,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Helm
#title Wachsamkeit
#name Wachsamkeit - 46 (Feralas)

step
    #completewith next
    .zone Feralas >>Reist nach Feralas
step
    .goto Feralas,77.6,62.0,30 >>Lauft zur Gewundenen Tiefe, einem Silithiden-Nest in Feralas. |cRXP_WARN_Ihr müsst einen hart zuschlagenden Level 46 Elite-Mob töten. Sucht euch eine Gruppe, wenn ihr nicht Level 50 seid|r
    .train 427078,1
step
    .goto Feralas,77.6,62.0
    >>Sucht nach |cRXP_ENEMY_Tyrant of the Hive|r, tötet ihn und plündert ihn für |T134419:0|t[|cRXP_FRIENDLY_Rune des Wachmanns|r]
    .collect 221473,1 --Rune of the watchman
    .unitscan Tyrant of the Hive
    .train 427078,1
step
    .train 427078 >>|cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Wachmanns|r] |cRXP_WARN_zum Erlernen|r |T236318:0|t[Wachsamkeit]
    .use 221473
]])
RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Stiefel
#title Gladiatorhaltung
#name Gladiatorhaltung - 45 (Tanaris & Azshara)

step
    #completewith theOldChamp
    +|cRXP_WARN_Um freizuschalten|r |T236541:0|t[Gladiatorhaltung] |cRXP_WARN_müsst ihr die beiden wandernden Schwertkämpfer besiegt haben, die die|r |T132334:0|t[Blutraserei] und |T132339:0|t[Anspornender Schrei] |cRXP_WARN_Runen geben. Stellt sicher, dass ihr das vorher gemacht habt. Nutzt die entsprechenden Runenleitfäden, wenn ihr nicht sicher seid, wo ihr sie findet|r
    +|cRXP_WARN_BILDET KEINE GRUPPE, während ihr diese Questreihe bearbeitet. Es wird berichtet, dass die Quest fehlerhaft wird und unmöglich wird, sie abzuschließen|r
step
    #completewith next
    .zone Tanaris >>Lauf nach Tanaris
step
    #label theOldChamp
    .goto Tanaris,51.6,27.6
    >>Sprecht mit |cRXP_FRIENDLY_Fizbuz Mithril|r in Gadgetzan
    .accept 81682 >>Akzeptiert die Quest Der alte Champion
    .target Fizbuz Mithril
step
    #completewith next
    .zone Azshara >>Reise nach Azshara
step
    .goto Azshara,27,61,40 >>Sucht nach einem Pfad, der den Berg hinauf führt. Er ist mit Horde-Bannern gekennzeichnet
    .train 416002,1
step
    .goto Azshara,25.4,66.2
    >>Sprecht mit |cRXP_FRIENDLY_Kajind <Arenachampion>|r an der Spitze des Bergpfads
    .turnin 81682 >>Gebt die Quest Der alte Champion ab
    .accept 81697 >>Akzeptiert die Quest Entzahnt
    .target Kajind
step
    .goto Azshara,39.4,72.4
    >>Sucht nach dem |cRXP_ENEMY_Ceruleos|r, einem Level 50 blauen Drachen. Er patrouilliert um die Nordseite des Sees. Plündert ihn für die |T251962:0|t|cRXP_LOOT_Kajind's Blade|r
    .complete 81697,1 --Kajind's Blade
    .unitscan Ceruleos
step
    .goto Azshara,25.4,66.2
    >>Geht zurück zu |cRXP_FRIENDLY_Kajind <Arenachampion>|r
    .turnin 81697 >>Drehen Entzahnt
    .accept 81801 >>Akzeptiert die Quest Rückkehr in die Arena
    .target Kajind
step
    #completewith next
    .zone Tanaris >>Lauf nach Tanaris
step
    .goto Tanaris,51.6,27.6
    >>Geht zurück nach Gadgetzan und sprecht mit |cRXP_FRIENDLY_Fizbuz Mithril|r
    .turnin 81801 >>Gebt die Quest Rückkehr in die Arena ab
    .accept 81877 >>Akzeptiert die Quest Kampfnacht
    .target Fizbuz Mithril
step
    >>Besiegt |cRXP_ENEMY_Kajind <Arenachampion>|r in der Gadgetzan Arena
    .complete 81877,1 --Arena Victory 1/1
    .unitscan Kajind
step
    .goto Tanaris,51.6,27.6
    >>Gebt die Quest bei |cRXP_FRIENDLY_Fizbuz Mithril|r ab
    .turnin 81877 >>Gebt die Quest Kampfnacht ab
    .target Fizbuz Mithril
step
    .train 416002 >>|cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Gladiator|r] |cRXP_WARN_um zu erlernen|r |T236541:0|t[Gladiatorhaltung]
    .use 220164
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Verschleierung
#title Frischfleisch
#name Frischfleisch - 55 (Brennende Steppe)

step
    #completewith next
    .zone Burning Steppes >>Reise zur Brennenden Steppe
step
    .train 440492,1
    .goto Burning Steppes,40.4,33.6
    .aura 459616 >>|cRXP_WARN_Tötet |cRXP_ENEMY_Blackrock-Orks|r bei Schwarzfelsfestung bis ihr das|r |T132353:0|t[Rhythmus des Krieges] |cRXP_WARN_Stärkungszauber|r erhaltet
    .mob Blackrock Battlemaster
    .mob Blackrock Slayer
    .mob Blackrock Warlock
    .mob Blackrock Sorcerer
step
    .train 440492,1
    .goto Burning Steppes,39.549,27.828
    >>|cRXP_WARN_Geht zum|r |cRXP_PICK_Altar der Ehrfurcht|r
    >>|cRXP_WARN_Wenn ihr dort seid, gebt "/salutieren" in eurem Chatfenster ein. Dies beschwört|r |cRXP_ENEMY_Revered Feldherr|r
    >>Tötet |cRXP_ENEMY_Revered Feldherr|r und klickt danach auf |cRXP_PICK_Altar der Ehrfurcht|r
    .accept 84124 >> Akzeptiert die Quest Vermächtnis der Ehre
    .turnin 84124 >> Gebt die Quest Vermächtnis der Ehre ab
    .mob Revered Champion
step
    .train 440492 >>|cRXP_WARN_Benutzt|r |T133747:0|t[|cRXP_LOOT_Rune des ersten Kriegers|r] |cRXP_WARN_um zu erlernen|r |T237516:0|t[Frischfleisch]
    .use 226680
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Verschleierung
#title Plötzlicher Tod
#name Plötzlicher Tod - 57 (Silithus)

step
    #completewith next
    .zone Silithus >>Lauf nach Silithus
step
    .train 440494,1
    #loop
    .goto Silithus,55.4,53.2,60,0
    .goto Silithus,47.0,53.6,60,0
    .goto Silithus,45.0,74.0,60,0
    .goto Silithus,44.2,83.4,60,0
    .goto Silithus,33.6,69.2,60,0
    .goto Silithus,41.0,65.2,60,0
    .goto Silithus,34.8,33.6,60,0
    .goto Silithus,31.0,17.2,60,0
    .gossip 228611,2 >>|cRXP_WARN_Sucht nach einem |cRXP_FRIENDLY_Wandernder Schwertkämpfer|r in ganz Silithus|r
    >>|cRXP_WARN_Sprecht mit |cRXP_FRIENDLY_Wandernder Schwertkämpfer|r. Ihr müsst die Schwierigkeit Mittel oder Schwer auswählen, um mit der Rune belohnt zu werden|r
    >>|cRXP_WARN_Ihr werdet sofort zu einer kleinen Plattform teleportiert, und der Kampf beginnt gegen|r |cRXP_ENEMY_Khonsu|r
    >>|cRXP_WARN_Es wirkt Fähigkeiten, die wie [Spalten] aussehen. Wenn ihr diese Animationen seht, weicht schnell von ihnen weg.|r
    >>|cRXP_WARN_Wenn er wirkt [Donnerndes Stampfen], MÜSST ihr euch zu einer der kleinen, herausstehenden Plattformkanten bewegen, andernfalls werdet ihr hinuntergestoßen.|r
    >>|cRXP_WARN_Benutzt|r |T132342:0|t[Siegesrausch] |cRXP_WARN_Rune, da ihr während des Kampfes Adds töten werdet|r
    .unitscan Wandering Swordsman
step
    .train 440494,1
    >>|cRXP_WARN_Besiegt |cRXP_ENEMY_Khonsu|r
    >>|cRXP_WARN_Es wirkt Fähigkeiten, die wie [Spalten] aussehen. Wenn ihr diese Animationen seht, weicht ihnen schnell aus|r
    >>|cRXP_WARN_Wenn er [Donnerndes Stampfen] wirkt, müsst ihr schnell zu einem der kleinen Vorsprünge, die von der Plattform abstehen, gehen, sonst werdet ihr hinuntergestoßen|r
    >>|cRXP_WARN_Sobald ihr erfolgreich seid, akzeptiert die Quest und gebt die Quest ab|r
    .accept 84317 >> Akzeptiert die Quest Ewige Mitternacht
    .turnin 84317 >> Gebt die Quest Ewige Mitternacht ab
    .mob Titanic Watcher
step
    .train 440494 >>|cRXP_WARN_Nutzt|r |T133739:0|t[|cRXP_LOOT_Erkenntnisse des Zeitlosen Wanderers|r] |cRXP_WARN_um zu erlernen|r |T132346:0|t[Plötzlicher Tod]
    .use 226679
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Verschleierung
#title Schockwelle
#name Schockwelle - 60 (Azeroth)

step
    #completewith next
    .zone Tanaris >>Lauf nach Tanaris
step
    .train 440496,1
    .goto Tanaris,59.2,91.5
    >>|cRXP_WARN_Geht in das südliche Tanaris entlang der Küstenlinie|r
    >>Klickt auf den |cRXP_PICK_Half-Begraben Mech|r und die |cRXP_PICK_Access Schlüpfen|r am Boden
    .accept 84135 >> Akzeptiert die Quest Strandbot
    .turnin 84135 >> Abgeben Strandbot
    .accept 84137 >> Akzeptiert die Quest Mechanische Romanze
step
    .train 440496,1
    #completewith next
    .cast 459613 >> |cRXP_WARN_Nutzt|r |T134731:0|t[Gelenkter Auftriebbeschleuniger] |cRXP_WARN_um eure Schwimmgeschwindigkeit für die nächsten 4 Min. zu erhöhen|r
    .use 226856
step
    .train 440496,1
    >>|cRXP_WARN_HINWEIS: ES GIBT KEINEN PFEIL FÜR DIESEN SCHRITT!|r
    >>|cRXP_WARN_Ihr müsst nun südlich zur abgelegenen Insel schwimmen und sprecht mit |cRXP_FRIENDLY_Sebastian Jürgens <Verrückter Doktor>|r. Ihr müsst durch Erschöpfungswasser schwimmen, um ihn zu erreichen. Geht zur Ölplattform auf der Insel, um ihn zu finden|r
    .turnin 84137 >> Abgeben Mechanisch Romance
    .accept 84138 >> Akzeptiert die Quest Frostige Gefallen
    .target Sebastian Jurgens
step
    .train 440496,1
    #completewith next
    .zone Winterspring >>Reist nach Winterquell
step
    .train 440496,1
    .goto Winterspring,61.2,37.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Numi|r
    .turnin 84138 >> Gebt die Quest Frostige Gefallen ab
    .accept 84146 >> Akzeptiert die Quest Roter Taschenblues
    .target Numi
step
    #completewith next
    .zone Burning Steppes >> Reise zur Brennenden Steppe
step
    .train 440496,1
    .goto Burning Steppes,52.955,24.374
    >>Klickt auf die |cRXP_PICK_Rote Tasche|r am Boden
    .turnin 84146 >> Gebt die Quest Roter Taschenblues ab
    .accept 84211 >> Akzeptiert die Quest Plündererhöhle
    .target Red Bag
step
    .train 440496,1
    #loop
    .goto Burning Steppes,47.0,27.2,45,0
    .goto Burning Steppes,46.4,21.4,45,0
    .goto Burning Steppes,52.95,24.37,45,0
    >>Tötet |cRXP_ENEMY_Blackrock Bootleggers|r und |cRXP_ENEMY_Sulfuron Smugglers|r. Plündert sie für |cRXP_LOOT_Vertically Composited Flicken Hamplers|r und |cRXP_LOOT_Brass-fitted Flam-Tamp Flange|r
    .complete 84211,1
    .complete 84211,2
    .mob Blackrock Bootlegger
    .mob Sulfuron Smuggler
step
    .train 440496,1
    #completewith next
    .zone Winterspring >>Reist nach Winterquell
step
    .train 440496,1
    .goto Winterspring,61.2,37.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Numi|r
    .turnin 84211 >> Gebt die Quest Plündererhöhle ab
    .accept 84212 >> Akzeptiert die Quest Rückbuchung
    .target Numi
step
    #completewith next
    .zone Tanaris >>Lauf nach Tanaris
step
    .train 440496,1
    >>|cRXP_WARN_Kehrt zu |cRXP_FRIENDLY_Sebastian Jürgens <Verrückter Doktor>|r auf der südlich gelegenen Insel zurück|r
    .turnin 84212 >> Abgeben Bookin' it Zurück
    .accept 84213 >> Akzeptiert die Quest Fortgerissen
    .target Sebastian Jurgens
step
    .train 440496,1
    .zone Westfall >> |cRXP_WARN_Folgt |cRXP_FRIENDLY_Sebastian Jürgens <Verrückter Doktor>|r zum Teleporter. Er teleportiert euch nach Westfall|r << Alliance
    .zone Tirisfal Glades >> |cRXP_WARN_Folgt |cRXP_FRIENDLY_Sebastian Jürgens <Verrückter Doktor>|r zum Teleporter. Er teleportiert euch nach Tirisfal|r << Horde
    .target Sebastian Jurgens
step
    .train 440496,1
    >>|cRXP_WARN_FINDET EINE GRUPPE ZUR UNTERSTÜTZUNG! IHR BRAUCHT MINDESTENS EINEN Tank UND EINEN HEILER!|r
    >>Sprecht mit |cRXP_FRIENDLY_Sebastian Jürgens <Verrückter Doktor>|r um den |cRXP_ENEMY_Erntegolem V000-A|r zu beschwören
    >>Tötet die |cRXP_ENEMY_Harvest Golem V000-A|r
    .complete 84213,1
    .mob Harvest Golem V000-A
step
    .train 440496,1
    >>Hebt den |cRXP_PICK_Mech Bewaffnen|r vom Boden auf
    .turnin 84213 >> Gebt die Quest Fortgerissen ab
step
    .train 440496 >>|cRXP_WARN_Benutzt die|r |T133738:0|t[|cRXP_LOOT_Vorahnung und Voraussicht im Kampf|r] |cRXP_WARN_um zu erlernen|r |T236312:0|t[Schockwelle]
    .use 226678
]])
