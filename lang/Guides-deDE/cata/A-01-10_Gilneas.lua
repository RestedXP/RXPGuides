if GetLocale() ~= "deDE" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end
RXPGuides.RegisterGuide([[

#version 1
#group RXP Kataklysmus 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 1-10 Gilneas
#displayname 1-10 Gilneas
#next 10-18 Dunkelküste
#defaultfor !DK
#next 10-18 Dunkelküste

<< Worgen

step
    .goto 202,59.130,23.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Prince Liam Greymane|r
    .accept 14078 >>Akzeptiert die Quest Abgeriegelt!
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    .goto 202,56.879,17.856,15,0
    .goto 202,54.626,16.717,15 >>Reisen toward |cRXP_FRIENDLY_Lieutenant Walden|r's corpse auf dem Boden
step
    .goto 202,54.626,16.717
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lieutenant Walden|r's corpse auf dem Boden
    .turnin 14078 >>Gebt die Quest Abgeriegelt! ab
    .accept 14091 >>Akzeptiert die Quest Da stimmt was nicht
	.target Lieutenant Walden
step
    #optional
    #completewith next
    .goto 202,56.872,17.840,15,0
    .goto 202,58.366,20.712,15,0
    .goto 202,59.830,22.192,15 >>Kehrt zu |cRXP_FRIENDLY_Prinz Liam Graumähne|r zurück
step
    .goto 202,59.830,22.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Prince Liam Greymane|r
    .turnin 14091 >>Gebt die Quest Da stimmt was nicht ab
    .accept 14093 >>Akzeptiert die Quest Die Hölle bricht los
    .accept 14098 >>Akzeptiert die Quest Evakuiert den Händlerplatz
	.target Prince Liam Greymane
step
    #completewith next
    .goto 202,57.678,23.371,0
    .goto 202,65.642,33.161,0
    .goto 202,57.192,40.351,0
    >>Tötet |cRXP_ENEMY_Rampaging Worgen|r
    .complete 14093,1 --Rampaging Worgen slain (6)
	.mob Rampaging Worgen
step
    .goto 202,59.561,26.776
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gwen Armstead|r
    .accept 14094 >>Akzeptiert die Quest Bergt die Vorräte
	.target Gwen Armstead
step
    #sticky
    #label Salvaged
    #loop
    .goto 202,58.931,25.445,0
    .goto 202,61.954,36.882,0
    .goto 202,55.539,33.642,0
    .waypoint 202,58.931,25.445,12,0
    .waypoint 202,62.280,26.295,12,0
    .waypoint 202,59.193,28.776,12,0
    .waypoint 202,59.012,35.683,12,0
    .waypoint 202,61.954,36.882,12,0
    .waypoint 202,59.174,38.938,12,0
    .waypoint 202,56.253,42.897,12,0
    .waypoint 202,58.449,36.570,12,0
    .waypoint 202,55.539,33.642,12,0
    .waypoint 202,60.040,20.806,12,0
    >>Öffnet |cRXP_PICK_Supply Kisten|r auf dem Boden. Plündert sie für |cRXP_LOOT_Salvaged Vorräte|r
    .complete 14094,1 --Salvaged Supplies (4)
step
    #sticky
    #label Gwen
    #requires Salvaged
    .goto 202,59.561,26.776,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gwen Armstead|r
    .turnin 14094 >>Gebt die Quest Bergt die Vorräte ab
	.target Gwen Armstead
step
    #optional
    #sticky
    #label RampWorgen
    #loop
    .goto 202,57.678,23.371,0
    .goto 202,65.642,33.161,0
    .goto 202,57.192,40.351,0
    .waypoint 202,57.678,23.371,45,0
    .waypoint 202,60.799,22.195,45,0
    .waypoint 202,63.387,19.323,45,0
    .waypoint 202,64.497,24.603,45,0
    .waypoint 202,65.642,33.161,45,0
    .waypoint 202,60.451,34.024,45,0
    .waypoint 202,59.696,41.857,45,0
    .waypoint 202,57.192,40.351,45,0
    >>Tötet |cRXP_ENEMY_Rampaging Worgen|r
    .complete 14093,1 --Rampaging Worgen slain (6)
	.mob Rampaging Worgen
step
    #label Area1
    #loop
    .goto 202,63.192,31.620,0
    .goto 202,55.001,26.559,0
    .goto 202,58.493,19.345,0
    .goto 202,63.192,31.620,8,0
    .goto 202,63.199,34.791,8,0
    .goto 202,55.001,26.559,8,0
    .goto 202,55.839,20.215,8,0
    .goto 202,58.493,19.345,8,0
    >>Klopfen on |cRXP_PICK_Merchant Quadrat Doors|r
    >>|cRXP_WARN_Das kann feindselige|r |cRXP_ENEMY_Tobender Worgen|r spawnen
    .complete 14098,1 --Market Homes Evacuated (3)
step
    #optional
    #requires RampWorgen
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires Gwen
    .goto 202,59.561,26.776
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gwen Armstead|r
    .turnin 14094 >>Gebt die Quest Bergt die Vorräte ab
	.target Gwen Armstead
step
    .goto 202,59.830,22.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Prince Liam Greymane|r
    .turnin 14093 >>Gebt die Quest Die Hölle bricht los ab
    .turnin 14098 >>Gebt die Quest Evakuiert den Händlerplatz ab
    .accept 14099 >>Akzeptiert die Quest Königlicher Befehl
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    .goto 202,62.290,31.759,15,0
    .goto 202,64.098,34.535,15,0
    .goto 202,68.809,45.472,15,0
    .goto 202,70.770,55.050,15 >> Reisen toward |cRXP_FRIENDLY_Gwen Armstead|r
step
    .goto 202,70.770,55.050
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gwen Armstead|r
    .turnin 14099 >>Gebt die Quest Königlicher Befehl ab
    .accept 14265 >>Akzeptiert die Quest Euer Lehrmeister << Warrior
    .accept 14269 >>Akzeptiert die Quest Jemand sucht nach Euch << Rogue
    .accept 14273 >>Akzeptiert die Quest Zwielichtige Gesellen << Warlock
    .accept 14275 >>Akzeptiert die Quest Jemand ist Euch auf der Fährte << Hunter
    .accept 14277 >>Akzeptiert die Quest Arkane Anfragen << Mage
    .accept 14278 >>Akzeptiert die Quest Sucht die Schwester << Priest
    .accept 14280 >>Akzeptiert die Quest Die Winde kennen Euren Namen… anscheinend  << Druid
	.target Gwen Armstead
step << skip
    #completewith next
    .goto 202,71.023,55.221
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marie Allen|r
    .vendor 38853 >>|cRXP_BUY_Kauft|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_BUY_von ihr, falls nötig|r
	.target Marie Allen
step << Warrior
    .goto 202,67.592,64.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Seargent Cleese|r
    .turnin 14265 >>Gebt die Quest Euer Lehrmeister ab
    .accept 14266 >>Akzeptiert die Quest Ansturm
    .train 100 >>Erlernt |T132337:0|t[Sturmangriff] << cata
	.target Sergeant Cleese
step << Rogue
    .goto 202,71.406,65.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Loren die Hehlerin|r
    >>|cRXP_WARN_She is|r |T132320:0|t[Verstohlen]
    .turnin 14269 >>Gebt die Quest Jemand sucht nach Euch ab
    .accept 14272 >>Akzeptiert die Quest Ausweiden
    .train 2098 >>Erlernen |T132292:0|t[Ausweiden] << cata
	.target Loren the Fence
step << Warlock
    .goto 202,71.420,64.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vitus Darkwalker|r
    .turnin 14273 >>Gebt die Quest Zwielichtige Gesellen ab
    .accept 14274 >>Akzeptiert die Quest Feuerbrand
    .train 348 >>Erlernt |T135817:0|t[Feuerbrand] << cata
	.target Vitus Darkwalker
step << Hunter
    .goto 202,71.503,61.307
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Huntsman Blake|r
    .turnin 14275 >>Gebt die Quest Jemand ist Euch auf der Fährte ab
    .accept 14276 >>Akzeptiert die Quest Zielschuss
    .train 56641 >>Erlernen |T132213:0|t[Zuverlässiger Schuss] << cata
	.target Huntsman Blake
step << Mage
    .goto 202,68.043,64.695
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Myriam Spellwaker|r
    .turnin 14277 >>Gebt die Quest Arkane Anfragen ab
    .accept 14281 >>Akzeptiert die Quest Arkane Geschosse
    .train 5143 >>Erlernen |T136096:0|t[Arkane Geschosse] << cata
	.target Myriam Spellwaker
step << Priest
    .goto 202,70.421,65.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sister Almyra|r
    .turnin 14278 >>Gebt die Quest Sucht die Schwester ab
    .accept 14279 >>Akzeptiert die Quest Blitzheilung << cata
    .accept 14279 >>Akzeptiert die Quest Das Wort lernen << !cata
    .train 2061 >>Erlernen |T135907:0|t[Blitzheilung] << cata
	.target Sister Almyra
step << Druid
    .goto 202,70.190,65.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Celestine Erntedank|r
    .turnin 14280 >>Gebt die Quest Die Winde kennen Euren Namen… anscheinend ab
    .accept 14283 >>Akzeptiert die Quest Eine verjüngende Berührung << cata
    .accept 14283 >>Akzeptiert die Quest Mondfeuer << !cata
    .train 774 >>Erlernen |T136081:0|t[Verjüngung] << cata
	.target Celestine of the Harvest
step << !Priest !Druid
    .goto 202,67.168,64.124
    >>Cast |T132337:0|t[Ansturm] on a |cRXP_ENEMY_Bloodfang Worgen|r << Warrior
    >>Cast |T136189:0|t[Finsterer Stoß] und then |T132292:0|t[Ausweiden] on a |cRXP_ENEMY_Bloodfang Worgen|r << Rogue
    >>Cast |T135817:0|t[Feuerbrand] on a |cRXP_ENEMY_Bloodfang Worgen|r << Warlock
    >>Cast |T132213:0|t[Zuverlässiger Schuss] on a |cRXP_ENEMY_Bloodfang Worgen|r 2 times << Hunter
    >>Cast |T135812:0|t[Feuerball] und then |T136096:0|t[Arkane Geschosse] when it procs on a |cRXP_ENEMY_Bloodfang Worgen|r << Mage
    .complete 14266,1 << Warrior cata --Cast Charge (1)
    .complete 14272,1 << Rogue cata --Cast Eviscerate (1)
    .complete 14274,1 << Warlock cata --Cast Immolate (1)
    .complete 14276,1 << Hunter cata --Cast Steady Shot (2)
    .complete 14281,1 << Mage cata --Cast Arcane Missiles (1)
    .complete 14266,2 << Warrior !cata --Cast Charge (1)
    .complete 14272,2 << Rogue !cata --Cast Eviscerate (1)
    .complete 14274,2 << Warlock !cata --Cast Immolate (1)
    .complete 14276,2 << Hunter !cata --Cast Steady Shot (2)
    .complete 14281,2 << Mage !cata --Cast Arcane Missiles (1)
    .mob Bloodfang Worgen
step << !cata Druid/Priest
    .goto 202,67.168,64.124
    >>Cast |T136096:0|t[Mondfeuer] on a |cRXP_ENEMY_Bloodfang Worgen|r << Druid
    >>Cast |T136207:0|t[Schattenwort: Schmerz] twice on a |cRXP_ENEMY_Bloodfang Worgen|r << Priest
    .complete 14279,2 << Priest --Cast Shadow Word: Pain (1)
    .complete 14283,2 << Druid --Cast Moonfire (2)
    .mob Bloodfang Worgen
step << cata Priest/Druid
    #loop
    .goto 202,70.421,65.541,0
    .goto 202,71.003,66.538,8,0
    .goto 202,70.523,67.189,8,0
    .goto 202,69.416,66.577,8,0
    .goto 202,69.782,63.306,5,0
    >>Cast |T135907:0|t[Blitzheilung] on a |cRXP_FRIENDLY_Wounded Schutz|r 2 times << Priest
    >>Cast |T136081:0|t[Verjüngung] on a |cRXP_FRIENDLY_Wounded Schutz|r << Druid
    .complete 14279,1 << Priest --Cast Flash Heal (2)
    .complete 14283,1 << Druid --Cast Rejuvenation (1)
step << Warrior
    .goto 202,67.592,64.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Seargent Cleese|r
    .turnin 14266 >>Gebt die Quest Ansturm ab
    .accept 14286 >>Akzeptiert die Quest Je mehr, desto sicherer
	.target Sergeant Cleese
step << Rogue
    .goto 202,71.406,65.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Loren die Hehlerin|r
    >>|cRXP_WARN_She is|r |T132320:0|t[Verstohlen]
    .turnin 14272 >>Gebt die Quest Ausweiden ab
    .accept 14285 >>Akzeptiert die Quest Je mehr, desto sicherer
	.target Loren the Fence
step << Warlock
    .goto 202,71.420,64.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vitus Darkwalker|r
    .turnin 14274 >>Gebt die Quest Feuerbrand ab
    .accept 14287 >>Akzeptiert die Quest Je mehr, desto sicherer
	.target Vitus Darkwalker
step << Hunter
    .goto 202,71.503,61.307
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Huntsman Blake|r
    .turnin 14276 >>Gebt die Quest Zielschuss ab
    .accept 14290 >>Akzeptiert die Quest Je mehr, desto sicherer
	.target Huntsman Blake
step << Mage
    .goto 202,68.043,64.695
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Myriam Spellwaker|r
    .turnin 14281 >>Gebt die Quest Arkane Geschosse ab
    .accept 14288 >>Akzeptiert die Quest Je mehr, desto sicherer
	.target Myriam Spellwaker
step << Priest
    .goto 202,70.421,65.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sister Almyra|r
    .turnin 14279 >>Gebt die Quest Blitzheilung ab << cata
    .turnin 14279 >>Gebt die Quest Das Wort lernen ab << !cata
    .accept 14289 >>Akzeptiert die Quest Je mehr, desto sicherer
	.target Sister Almyra
step << Druid
    .goto 202,70.190,65.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Celestine Erntedank|r
    .turnin 14283 >> Gebt die Quest Eine verjüngende Berührung ab << cata
    .turnin 14283 >> Gebt die Quest Mondfeuer ab << !cata
    .accept 14291 >> Akzeptiert die Quest Je mehr, desto sicherer
	.target Celestine of the Harvest
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_King Genn Graumähne|r und |cRXP_FRIENDLY_Lord Godfrey|r
    .turnin 14285 >>Gebt die Quest Je mehr, desto sicherer ab << Rogue
    .turnin 14286 >>Gebt die Quest Je mehr, desto sicherer ab << Warrior
    .turnin 14287 >>Gebt die Quest Je mehr, desto sicherer ab << Warlock
    .turnin 14288 >>Gebt die Quest Je mehr, desto sicherer ab << Mage
    .turnin 14289 >>Gebt die Quest Je mehr, desto sicherer ab << Priest
    .turnin 14290 >>Gebt die Quest Je mehr, desto sicherer ab << Hunter
    .turnin 14291 >>Gebt die Quest Je mehr, desto sicherer ab << Druid
    .accept 14157 >>Akzeptiert die Quest Alte Differenzen
    .goto 202,65.810,77.714
	.target +King Genn Greymane
    .accept 24930 >>Akzeptiert die Quest Wenn Ihr schon dabei seid
    .goto 202,65.279,77.607
	.target +Lord Godfrey
step
    #sticky
    #label Bloodfang
    #loop
    .goto 202,57.890,72.582,0
    .goto 202,59.334,63.772,0
    .goto 202,61.376,70.799,0
    .goto 202,67.168,64.124,0
    .waypoint 202,57.890,72.582,20,0
    .waypoint 202,55.652,68.601,20,0
    .waypoint 202,56.961,66.801,20,0
    .waypoint 202,58.605,63.555,20,0
    .waypoint 202,59.334,63.772,20,0
    .waypoint 202,61.343,66.187,20,0
    .waypoint 202,61.898,66.760,20,0
    .waypoint 202,59.853,70.005,20,0
    .waypoint 202,61.376,70.799,20,0
    .waypoint 202,61.872,71.789,20,0
    .waypoint 202,64.690,69.474,20,0
    .waypoint 202,67.168,64.124,20,0
	>>Tötet |cRXP_ENEMY_Bloodfang Worgen|r
    .complete 24930,1 --Bloodfang Worgen slain (5)
	.mob *Bloodfang Worgen
step
    #optional
    #completewith next
    .goto 202,59.984,71.904,15,0
    .goto 202,58.006,72.476,15,0
    .goto 202,57.736,73.926,15,0
    .goto 202,57.925,75.584,10 >>Reisen toward |cRXP_FRIENDLY_Captain Broderick|r inside
step
    .goto 202,57.925,75.584
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Broderick|r innerhalb
    .turnin 14157 >>Gebt die Quest Alte Differenzen ab
    .accept 28850 >>Akzeptiert die Quest Auf dem Gefängnisdach
	.target Captain Broderick
step
    #optional
    #completewith Rooftop
    #label Staircase1
    .goto 202,57.001,74.780,5,0
    .goto 202,55.627,72.484,12 >>Reist die Wendeltreppe hinauf
step
    #optional
    #completewith Rooftop
    #requires Staircase1
    .goto 202,54.046,69.362,12,0
    .goto 202,53.759,67.454,12,0
    .goto 202,55.224,62.906,12 >>Reisen toward |cRXP_FRIENDLY_Lord Darius Crowley|r
step
    #label Rooftop
    .goto 202,55.224,62.906
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Darius Crowley|r
    .turnin 28850 >>Gebt die Quest Auf dem Gefängnisdach ab
    .accept 14154 >>Akzeptiert die Quest Mit knapper Not
    .timer 118,Mit knapper Not RP
	.target Lord Darius Crowley
step
    .goto 202,55.224,62.906
    >>Tötet die herannahenden Wellen der |cRXP_ENEMY_Worgen Alphas|r und |cRXP_ENEMY_Bloodfang Schlaffi|r für 2 Minuten
    >>|cRXP_WARN_Bleiben in der Nähe von |cRXP_FRIENDLY_Lord Darius Crowley|r um|r |T236310:0|t[Rebellenmut] zu erhalten |cRXP_WARN_(Passiv Aura: Erhöht die Angriffsgeschwindigkeit, Gesundheitsregeneration und Ressourcenregeneration stark)|r
    .complete 14154,1 --Survive while holding back the worgen for 2 minutes. (1)
    .mob Worgen Alpha
    .mob Bloodfang Runt
step
    .goto 202,55.224,62.906
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Darius Crowley|r
    .turnin 14154 >>Gebt die Quest Mit knapper Not ab
    .accept 26129 >>Akzeptiert die Quest Waffenbrüder
	.target Lord Darius Crowley
step
    #optional
    #completewith Brothers
    #label Staircase2
    .goto 202,53.759,67.454,12,0
    .goto 202,54.046,69.362,12 >>Reist zur Wendeltreppe
--XX NOTE: You can longjump up behind Darius to jump down, but I doubt the avg user can do it (evident of Wetlands skip despite it being easier)
step
    #optional
    #completewith Brothers
    #requires Staircase2
    .goto 202,55.627,72.484,15,0
    .goto 202,57.707,74.729,5,0
    .goto 202,59.984,71.904,20 >>Reist die Wendeltreppe hinunter. Geht nach draußen
step
    #label Brothers
    #requires Bloodfang
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Godfrey|r und |cRXP_FRIENDLY_King Genn Graumähne|r
    .turnin 24930 >>Gebt die Quest Wenn Ihr schon dabei seid ab
    .goto 202,65.279,77.607
	.target +Lord Godfrey
    .turnin 26129 >>Gebt die Quest Waffenbrüder ab
    .accept 14159 >>Akzeptiert die Quest Das Arsenal des Rebellenlords
    .goto 202,65.810,77.714
	.target +King Genn Greymane
step
    #optional
    #completewith Arsenal
    #requires Cellar1
    .goto 202,61.383,80.814,15,0
    .goto 202,56.181,82.790,15,0
    .goto 202,55.945,81.481,5,0
    .goto 202,56.805,81.599,6,0
    .goto 202,56.768,85.448,10 >>Klickt die |cRXP_PICK_Kellertür|r um sie zu öffnen, dann reist zu |cRXP_FRIENDLY_Josiah Avery|r drinnen
--XX no spell for this
step
    #label Arsenal
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Josiah Avery|r und |cRXP_FRIENDLY_Lorna Crowley|r innerhalb
    .turnin 14159 >>Gebt die Quest Das Arsenal des Rebellenlords ab
    .goto 202,56.768,85.448
	.target +Josiah Avery
    .accept 14204 >>Akzeptiert die Quest Aus den Schatten
    .goto 202,56.873,81.421
	.target +Lorna Crowley
step << skip
    #completewith next
    +|cRXP_WARN_Um Tastenbelegung für Questgegenstände zu aktivieren, folgt diesen Schritten:|r
    *[1] Drückt die |cRXP_WARN_Escape key.|r
    *[2] Auswählen |cRXP_WARN_Options.|r
    *[3] Geht zu |cRXP_WARN_Keybindings|r.
    *[4] In |cRXP_WARN_Keybindings|r findet |cRXP_WARN_RestedXP Guides|r.
    *[5] Wählt die |cRXP_WARN_Active Knöpfchen.|r aus und bindet sie.
step
    #loop
    .goto 202,54.026,81.617,0
    .goto 202,50.457,81.103,0
    .goto 202,47.100,77.204,0
    .goto 202,53.263,76.819,0
    .goto 202,54.026,81.617,20,0
    .goto 202,55.209,84.131,20,0
    .goto 202,51.607,83.495,20,0
    .goto 202,50.679,83.942,20,0
    .goto 202,50.457,81.103,20,0
    .goto 202,48.050,84.424,20,0
    .goto 202,47.075,81.792,20,0
    .goto 202,46.153,81.533,20,0
    .goto 202,47.100,77.204,20,0
    .goto 202,48.918,76.770,20,0
    .goto 202,51.200,76.089,20,0
    .goto 202,53.263,76.819,20,0
    >>Tötet |cRXP_ENEMY_Bloodfang Lurkers|r
    >>|cRXP_WARN_Be careful as they are|r |T132320:0|t[Verstohlen]
    >>|cRXP_WARN_Benutzt den |T236186:0|t[Lauerer angreifen]-Zauber eures|cRXP_FRIENDLY_ |rGilnean Mastiff|r, |cRXP_WARN_um |cRXP_ENEMY_Bloodfang Lurkers|r zu lokalisieren, falls nötig|r
    >>|cRXP_WARN_Falls ihr euren |cRXP_FRIENDLY_Gilnean Mastiff|r verliert, beschwört ihn mit dem|r |T236926:0|t[Gilnearischer Mastiffhalsband] erneut
    .complete 14204,1 --Bloodfang Lurker slain (6)
	.mob Bloodfang Lurker
    .use 48707
step
    .goto 202,56.873,81.421
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lorna Crowley|r innerhalb
    .turnin 14204 >>Gebt die Quest Aus den Schatten ab
    .accept 14214 >>Akzeptiert die Quest Nachricht für Graumähne
	.target Lorna Crowley
step
    #optional
    #completewith next
    .goto 202,55.818,81.572,6,0
    .goto 202,56.184,82.795,12,0
    .goto 202,59.207,83.777,15 >> Reisen toward |cRXP_FRIENDLY_King Genn Graumähne|r
step
    .goto 202,59.207,83.777
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_King Genn Graumähne|r
    .turnin 14214 >>Gebt die Quest Nachricht für Graumähne ab
    .accept 14293 >>Akzeptiert die Quest Rettet Krennan Aranas
    .timer 16,Rettet Krennan Aranas RP
	.target King Genn Greymane
step << skip
    #completewith next
    .goto 202,58.710,77.289,0
    .deathskip >> Sterbt und taucht beim |cRXP_FRIENDLY_Geistheiler|r wieder auf, NACHDEM ihr |cRXP_FRIENDLY_Krennan Aranas|r gerettet habt
    .target Geistheiler
step
    .goto 202,59.207,83.777,0
    .goto 202,66.171,61.811
    >>Während ihr auf |cRXP_FRIENDLY_King Greymane's Pferd|r seid:
    >>Wirkt |T134149:0|t[Krennan retten] (1) um |cRXP_FRIENDLY_Krennan Aranas|r zu retten, wenn ihr ihn erreicht
-- >>|cRXP_WARN_After you save him, press dismount |cRXP_FRIENDLY_King Greymane's Horse|r and die to the|r |cRXP_ENEMY_Bloodfang Rippers|r
    >>|cRXP_WARN_Falls ihr scheitert, sprecht mit |cRXP_FRIENDLY_King Genn Graumähne|r um es erneut zu versuchen|r
    .complete 14293,1 --Krennan Aranas rescued (1)
    .timer 19,Rettet Krennan Aranas RP
	.target Krennan Aranas
    .target *King Genn Greymane
    .skipgossip 35550,1
    .timer 16,Rettet Krennan Aranas RP
--XX 19s slower to not deathskip, not gonna risk it
step << skip
    #optional
    #completewith next
    .goto 202,58.710,77.289
    .deathskip >> Sterbt und taucht beim |cRXP_FRIENDLY_Geistheiler|r wieder auf, NACHDEM ihr |cRXP_FRIENDLY_Krennan Aranas|r gerettet habt
    .target Geistheiler
step
    .goto 202,55.715,80.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Godfrey|r
    .turnin 14293 >>Gebt die Quest Rettet Krennan Aranas ab
    .accept 14294 >>Akzeptiert die Quest Neu formieren
	.target Lord Godfrey
--XX 14293 didn't complete after turning in quest, worked again after accepting followup (very minor issue)
step
    #optional
    #completewith next
    .goto 202,53.411,82.729,15,0
    .goto 202,44.351,82.504,15,0
    .goto 202,41.103,81.945,15,0
    .goto 202,30.373,73.142,15 >> Reisen toward |cRXP_FRIENDLY_King Genn Graumähne|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_King Genn Graumähne|r und |cRXP_FRIENDLY_Lord Darius Crowley|r
    .turnin 14294 >>Gebt die Quest Neu formieren ab
    .goto 202,30.373,73.142
	.target +King Genn Greymane
    .accept 14212 >>Akzeptiert die Quest Aufopferung
    .goto 202,31.103,72.365
	.target +Lord Darius Crowley
step
    #completewith next
    .goto 202,31.282,72.645
    .vehicle >> Betretet |cRXP_FRIENDLY_Crowley's Pferd|r
    .timer 79,Aufopferung RP
    .target Crowley's Horse
step
    .goto 202,31.282,72.645,-1
    .goto 202,40.749,39.219,-1
    >>Während ihr auf |cRXP_FRIENDLY_Crowley's Pferd|r seid:
    >>Treibt die |cRXP_ENEMY_Blutfangpirscher|r zusammen
    >>Cast |T135433:0|t[Fackel werfen] (1) (Distanzkampf instant: Rounds up |cRXP_ENEMY_Bloodfang Stalkers|r)
    .complete 14212,1 --Bloodfang Stalker rounded up (30)
	.mob Bloodfang Stalker
--XX about 40s slower not to d
step
    #completewith next
    >>Warte auf das RP
    .goto 202,40.548,39.446,20 >>Reisen on |cRXP_FRIENDLY_Crowley's Pferd|r toward |cRXP_FRIENDLY_Tobias Mistmantle|r
step
    .goto 202,40.548,39.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tobias Mistmantle|r
    .turnin 14212 >>Gebt die Quest Aufopferung ab
    .accept 14218 >>Akzeptiert die Quest Mit Blut und Asche
	.target Tobias Mistmantle
step
    #completewith next
    .goto 202,40.883,36.449,-1
    .goto 202,40.120,36.463,-1
    .goto 202,38.786,37.390,-1
    .goto 202,38.395,38.282,-1
    .goto 202,37.896,39.535,-1
    .goto 202,37.955,40.949,-1
    .vehicle >> Betretet a |cRXP_FRIENDLY_Rebel Kanone|r
    .target Rebel Cannon
step
    .goto 202,40.13,36.52
    >>Während ihr in einer |cRXP_FRIENDLY_Rebel Kanone|r sitzt:
    >>Tötet |cRXP_ENEMY_Bloodfang Stalkers|r
    >>Wirkt |T252185:0|t[Rebellenkanone] (1) (Distanzkampf sofort: Verursacht eine MENGE Schaden)
    .complete 14218,1 --Bloodfang Stalker slain (80)
    .mob Bloodfang Stalker
step
    .goto 202,40.548,39.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tobias Mistmantle|r
    .turnin 14218 >>Gebt die Quest Mit Blut und Asche ab
    .accept 14221 >>Akzeptiert die Quest Niemals aufgeben, nur manchmal zurückziehen
	.target Tobias Mistmantle
step
    #optional
    #completewith next
    .goto 202,41.075,40.477,8,0
    .goto 202,43.584,44.647,12 >>BETRETET den Dom
step
    .goto 202,48.936,52.794
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Darius Crowley|r innerhalb
    .turnin 14221 >>Gebt die Quest Niemals aufgeben, nur manchmal zurückziehen ab
    .accept 14222 >>Akzeptiert die Quest Letztes Gefecht
	.target Lord Darius Crowley
step
    #loop
    .goto 202,42.708,43.201,0
    .goto 202,46.550,49.292,0
    .goto 202,47.789,46.937,20,0
    .goto 202,43.825,45.568,20,0
    .goto 202,42.708,43.201,20,0
    .goto 202,45.161,50.530,20,0
    >>Tötet |cRXP_ENEMY_Frenzied Stalkers|r
    >>|cRXP_WARN_Bleiben in der Nähe von |cRXP_FRIENDLY_Lord Darius Crowley|r um|r |T236310:0|t[Rebellenmut] zu erhalten |cRXP_WARN_(Passiv Aura: Erhöht die Angriffsgeschwindigkeit, Gesundheitsregeneration und Mana-Regeneration stark)|r
    .complete 14222,1 --Frenzied Stalker slain (8)
	.mob Frenzied Stalker
step
    .goto 202,48.936,52.794
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Darius Crowley|r innerhalb
	>>|cRXP_WARN_Drückt "Flucht" auf der Tastatur von Euch, um die Zwischensequenz zu überspringen|r
    .turnin 14222 >>Gebt die Quest Letztes Gefecht ab
    .timer 46,Letztes Gefecht RP
	.target Lord Daruius Crowley
step
    .goto 179,36.47,61.39
    >>Warte auf das RP
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_King Genn Graumähne|r
    .accept 14375 >>Akzeptiert die Quest Die letzte Hoffnung auf Menschlichkeit
    .turnin 14375 >>Gebt die Quest Die letzte Hoffnung auf Menschlichkeit ab
    .timer 7,Die letzte Hoffnung auf Menschlichkeit RP
	.target King Genn Greymane
--XX 2dp waypoints here on out (gc bug)
step
    .goto 179,36.51,62.27
    >>Warte auf das RP
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Godfrey|r
    .accept 14313 >>Akzeptiert die Quest Wieder unter Menschen
	.target Lord Godfrey
step
    #optional
    #completewith next
    .goto 179,37.17,63.58,8,0
    .goto 179,37.41,63.24,10 >>BETRETET das Haus
step
    .goto 179,37.41,63.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krennan Aranas|r innerhalb
    .turnin 14313 >>Gebt die Quest Wieder unter Menschen ab
    .accept 14320 >>Akzeptiert die Quest Benötigte Zutaten
	.target Krennan Aranas
step
    #sticky
    #label Professions1
    #completewith Professions3
    .goto 179,37.34,63.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jack "Alle Trades" Derrington|r
    >>|cRXP_WARN_Kräutersammeln Kräuter und Bergbau Adern bieten XP. Sammelt Ressourcen nur auf von Euch direktem Weg|r
    >>|cRXP_WARN_Falls ihr das nicht tun wollt, überspringt diesen Schritt|r
    .train 2366 >> Erlernt |T136065:0|t[Kräuterkunde]
    .train 2575 >> Erlernt |T136248:0|t[Bergbau]
    .target Jack "All Trades" Derrington
    .skipgossip 50247,1,1,1
    .train 2366,1 --Herbalism
    .train 2575,1 --Mining
step
    #optional
    #requires Professions1
    #label Professions2
    #completewith Professions3
    .goto 179,37.34,63.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jack "Alle Trades" Derrington|r
    >>|cRXP_WARN_Kräutersammeln Kräuter bieten XP. Sammelt Ressourcen nur auf von Euch direktem Weg|r
    >>|cRXP_WARN_Falls ihr das nicht tun wollt, überspringt diesen Schritt|r
    .train 2366 >> Erlernt |T136065:0|t[Kräuterkunde]
    .target Jack "All Trades" Derrington
    .skipgossip 50247,2,2,2
    .train 2575,3 --Mining
step
    #optional
    #requires Professions2
    #label Professions3
    .goto 179,37.34,63.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jack "Alle Trades" Derrington|r
    >>|cRXP_WARN_Bergbau Adern bieten XP. Sammelt Ressourcen nur auf von Euch direktem Weg|r
    >>|cRXP_WARN_Falls ihr das nicht tun wollt, überspringt diesen Schritt|r
    .train 2575 >> Erlernt |T136248:0|t[Bergbau]
    .target Jack "All Trades" Derrington
    .skipgossip 50247,2,3,2
    .train 2366,3 --Herbalism
step << Hunter cata
    .goto 179,38.032,63.359
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Huntsman Blake|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Huntsman Blake
step << Warrior cata
    .goto 179,38.278,63.457
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sergeant Cleese|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Sergeant Cleese
step
    #completewith INOG
    #optional
    .cast 2383 >> |cRXP_WARN_Cast|r [Kräutersuche]
    .cast 2580 >> |cRXP_WARN_Cast|r [Mineraliensuche]
    .train 2575,3 --Mining
    .train 2366,3 --Herbalism
    .subzoneskip 4786,1
step
    #optional
    .goto 179,36.228,64.861
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Samantha Buckley|r
    .collect 2901,1 >>|cRXP_BUY_Kauft eine|r |T134708:0|t[Spitzhacke] |cRXP_BUY_bei ihr|r
    .target Samantha Buckley
    .train 2575,3 --Mining
    .subzoneskip 4786,1
step << Priest cata
    .goto 179,36.015,64.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sister Almyra|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Sister Almyra
step << Druid cata
    .goto 179,36.276,64.123
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Celestine Erntedank|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Celestine of the Harvest
step << Mage cata
    .goto 179,36.099,63.825
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Myriam Spellwaker|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Myriam Spellwaker
step << Warlock cata
    .goto 179,35.824,63.866
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vitus Darkwalker|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Vitus Darkwalker
step << Rogue cata
    .goto 179,36.735,65.379
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Loren die Hehlerin|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Loren the Fence
step
    #label INOG
    .goto 179,32.77,66.39
    >>Hebt die |cRXP_PICK_Kiste der Mandrake-Essenz|r vom Boden auf
	>>|cRXP_WARN_Drückt "Flucht" auf der Tastatur von Euch, um die Zwischensequenz zu überspringen|r
    .turnin 14320 >>Gebt die Quest Benötigte Zutaten ab
step
    #label MiningWorgen
    .goto 179,32.77,66.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit der Leiche von |cRXP_FRIENDLY_Erschlagener Wachmann|r auf dem Boden
	>>|cRXP_WARN_Wenn ihr das nicht tun könnt, gebt /neuladen in den Chat ein|r
    .accept 14321 >>Akzeptiert die Quest Invasion der Geißel der Geißel
    .target Slain Watchman
step
    .goto 179,37.41,63.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gwen Armstead|r innerhalb
    .turnin 14321 >>Gebt die Quest Invasion der Geißel der Geißel ab
    .accept 14336 >>Akzeptiert die Quest Töten oder getötet werden
	.target Gwen Armstead
step
    .goto 179,35.94,66.16,15,0
    .goto 179,35.28,66.06,15,0
    .goto 179,35.76,67.31,15,0
    .goto 179,35.94,66.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Prince Liam Greymane|r
    .turnin 14336 >>Gebt die Quest Töten oder getötet werden ab
    .accept 14347 >>Akzeptiert die Quest Stellung halten
    .accept 14348 >>Akzeptiert die Quest Ihr schafft sie nicht alleine
	.target Prince Liam Greymane
step
    #sticky
    #label ForsakenInvader
    .goto 179,35.61,66.62,0,0
    >>Tötet |cRXP_ENEMY_Forsaken Invaders|r
    .complete 14347,1 --Forsaken Invader slain (10)
	.mob Forsaken Invader
step
    #label Abominations
    #loop
    .goto 179,37.77,69.30,0
    .goto 179,34.23,69.98,0
    .goto 179,33.63,64.76,0
    .goto 179,37.77,69.30,30,0
    .goto 179,38.48,71.45,30,0
    .goto 179,37.24,71.34,30,0
    .goto 179,36.02,71.29,30,0
    .goto 179,34.23,69.98,30,0
    .goto 179,33.39,70.65,30,0
    .goto 179,33.33,71.73,30,0
    .goto 179,33.33,67.76,30,0
    .goto 179,33.63,64.76,30,0
    >>Beute |T132620:0|t|cRXP_LOOT_[Schwarz Gunpowder Kegs]|r auf dem Boden
    >>Werft das |T132620:0|t[Schwarze Gunpowder Kegs]|r auf |cRXP_ENEMY_Horrid Abominations|r
    .collect 49202,4,14348,1,-1 --Black Gunpowder Keg (4)
    .complete 14348,1 --Gunpowder thrown at Abominations (4)
    .use 49202
	.mob Horrid Abomination
step
    .goto 179,35.94,66.16,15,0
    .goto 179,35.28,66.06,15,0
    .goto 179,35.76,67.31,15,0
    .goto 179,35.94,66.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Prince Liam Greymane|r
    .turnin 14347 >>Gebt die Quest Stellung halten ab
    .turnin 14348,1 >>Gebt die Quest Ihr schafft sie nicht alleine ab << !Warrior !Rogue !Monk
    .turnin 14348,2 >>Gebt die Quest Ihr schafft sie nicht alleine ab << Warrior/Rogue/Monk
    .accept 14366 >>Akzeptiert die Quest Ruhig bleiben
	.target Prince Liam Greymane
step
    .goto 179,37.41,63.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gwen Armstead|r innerhalb
    .turnin 14366 >>Gebt die Quest Ruhig bleiben ab
    .accept 14367 >>Akzeptiert die Quest Allens Sturmkeller
	.target Gwen Armstead
step
    #optional
    #completewith next
    .goto 179,28.41,64.23,8,0
    .goto 179,28.32,63.88,6 >>Betretet den Keller
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Godfrey|r und |cRXP_FRIENDLY_Melinda Hammond|r innerhalb
    .turnin 14367 >>Gebt die Quest Allens Sturmkeller ab
    .accept 14369 >>Akzeptiert die Quest Entfesselt das Tier
    .accept 14382 >>Akzeptiert die Quest Nimm mich mit, Kapitän, auf die Reise
    .goto 179,28.97,63.93
	.target +Lord Godfrey
    .accept 14368 >>Akzeptiert die Quest Rettet die Kinder!
    .goto 179,28.93,64.04
	.target +Melinda Hammond
step
    #optional
    #label ChildrenHouse1
    #completewith Ashley
    .goto 179,28.32,63.88,6,0
    .goto 179,28.41,64.23,5 >>Verlasst den Keller
step
    #optional
	#completewith Cynthia
    >>Tötet |cRXP_ENEMY_Forsaken Footsoldiers|r
    .complete 14369,1 --Forsaken Combatant slain (8)
	.mob Forsaken Footsoldier
step
    #optional
    #label ChildrenHouse2
    #requires ChildrenHouse1
    #completewith Ashley
    .goto 179,27.83,66.83,7 >>BETRETET das Haus
step
    #optional
    #completewith Ashley
    #requires ChildrenHouse2
    .goto 179,27.90,66.12,3,0
    .goto 179,28.19,66.32,3 >>Geh nach oben
step
    #label Ashley
    .goto 179,27.88,66.66
    .cast 68598 >>Sprecht mit |cRXP_FRIENDLY_Ashley|r upstairs
--  .complete 14368,2 --Ashley rescued (1)
	.target Ashley
    .isOnQuest 14368
--XX talk spell is about 0.5s faster than credit
step
    .goto 179,28.53,66.73,8,0
    .goto 179,28.71,66.78
    .cast 68596 >>Sprecht mit |cRXP_FRIENDLY_James|r außerhalb
--  .complete 14368,3 --James rescued (1)
	.target James
    .isOnQuest 14368
step
    #label Cynthia
    .goto 179,29.59,69.31
    .cast 68597 >>Sprecht mit |cRXP_FRIENDLY_Cynthia|r
--  .complete 14368,1 --Cynthia rescued (1)
	.target Cynthia
    .isOnQuest 14368
step
	#sticky
    #label Combatants
    #loop
    .goto 179,27.59,75.20,0
    .goto 179,26.15,74.55,0
    .goto 179,24.40,70.19,0
    .goto 179,24.55,69.00,0
    .waypoint 179,27.59,75.20,45,0
    .waypoint 179,27.39,73.94,45,0
    .waypoint 179,26.15,74.55,45,0
    .waypoint 179,24.29,73.29,45,0
    .waypoint 179,24.40,70.19,45,0
    .waypoint 179,24.55,69.00,45,0
    >>Tötet |cRXP_ENEMY_Forsaken Footsoldiers|r und |cRXP_ENEMY_Forsaken Sailors|r
    .complete 14369,1 --Forsaken Combatant slain (8)
	.mob *Forsaken Footsoldier
	.mob *Forsaken Sailor
step
    #optional
    #completewith Anson
    #loop
    .goto 179,28.39,72.09,0
    .goto 179,26.90,71.55,0
    .goto 179,26.26,70.66,0
    .goto 179,24.79,68.98,0
    .goto 179,25.13,72.09,0
    .goto 179,26.73,73.45,0
    .goto 179,28.39,72.09,45,0
    .goto 179,26.90,71.55,45,0
    .goto 179,26.26,70.66,45,0
    .goto 179,24.79,68.98,45,0
    .goto 179,25.13,72.09,45,0
    .goto 179,26.73,73.45,45,0
    >>Tötet |cRXP_ENEMY_Maschinist der Verlassenen|r (falls vorhanden), um Platz in der |cRXP_FRIENDLY_Katapult der Verlassenen|r zu schaffen
    .vehicle >>Betretet das |cRXP_FRIENDLY_Katapult der Verlassenen|r
    .timer 59,Katapult Implodes
	.mob Forsaken Machinist
    .target Forsaken Catapult
step
    #optional
    #completewith Anson
    +Während ihr in der |cRXP_FRIENDLY_Katapult der Verlassenen|r seid:
    >>Zielt sorgfältig und wirkt dann |T252175:0|t[Starten] (1), um auf dem nördlichen Schiff von |cRXP_ENEMY_Kapitän Anson|r gestartet zu werden
    *|cRXP_WARN_Erinnert euch daran, dass ihr euch bewegen könnt, während ihr im|r |cRXP_FRIENDLY_Katapult der Verlassenen|r seid
    *|cRXP_WARN_Achtet darauf, sorgfältig zu zielen, denn ihr könnt in die Seite des Bootes oder ins Wasser hinter dem Boot gestartet werden|r
--XX Subzone 4714 (Gilneas) - can tie this to cast ID or subzone ID but there's no good way to hide this/detect if the player gets onto the boat or not
step
    #label Anson
    .goto 179,24.74,76.26,6,0
    .goto 179,24.94,76.50,6,0
    .goto 179,23.77,74.70
    >>Tötet |cRXP_ENEMY_Kapitän Anson|r auf dem untersten Deck des nördlichen Schiffs
    .complete 14382,1 --Captain Anson slain (1)
	.mob Captain Anson
--XX Would add waypoints but the Catapult step gives enough bloat as is
--XX Check if body type 2s can exit via cannon holes
step
    #optional
    #completewith Morris
    #label Catapult3
    .goto 179,24.94,76.50,6 >> Geht nach oben zurück
step
    #optional
    #requires Catapult3
    #completewith Morris
    #loop
    .goto 179,26.73,73.45,0
    .goto 179,26.90,71.55,0
    .goto 179,28.39,72.09,0
    .goto 179,29.61,74.10,0
    .goto 179,26.26,70.66,0
    .goto 179,24.79,68.98,0
    .goto 179,25.13,72.09,0
    .goto 179,26.73,73.45,45,0
    .goto 179,26.90,71.55,45,0
    .goto 179,28.39,72.09,45,0
    .goto 179,29.61,74.10,45,0
    .goto 179,26.26,70.66,45,0
    .goto 179,24.79,68.98,45,0
    .goto 179,25.13,72.09,45,0
    >>Tötet |cRXP_ENEMY_Maschinist der Verlassenen|r, um Platz in der |cRXP_FRIENDLY_Katapult der Verlassenen|r zu schaffen
    .vehicle >>Betretet das |cRXP_FRIENDLY_Katapult der Verlassenen|r
    .timer 59,Katapult Implodes
	.mob Forsaken Machinist
    .target Forsaken Catapult
step
    #optional
    #requires Catapult3
    #completewith Morris
    +Während ihr in der |cRXP_FRIENDLY_Katapult der Verlassenen|r seid:
    >>Zielt sorgfältig und wirkt dann |T252175:0|t[Starten] (1), um auf dem südlichen Schiff von |cRXP_ENEMY_Kapitän Morris|r gestartet zu werden
    *|cRXP_WARN_Erinnert euch daran, dass ihr euch bewegen könnt, während ihr im|r |cRXP_FRIENDLY_Katapult der Verlassenen|r seid
    *|cRXP_WARN_Achtet darauf, sorgfältig zu zielen, denn ihr könnt in die Seite des Bootes oder ins Wasser hinter dem Boot gestartet werden|r
step
	#label Morris
    .goto 179,27.90,81.11,6,0
    .goto 179,28.06,81.32,6,0
    .goto 179,26.85,79.32
    >>Tötet |cRXP_ENEMY_Kapitän Morris|r auf dem untersten Deck des südlichen Schiffs
    .complete 14382,2 --Captain Morris slain (1)
	.mob Captain Morris
step << skip
    #requires Combatants
    #completewith Unleash
    .goto 179,27.65,66.05,0
    .deathskip >>Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .target Geistheiler
    .subzoneskip 4792
--XX not worth the timesave
step
    #optional
    #requires Combatants
    #completewith Unleash
    .goto 179,28.41,64.23,8,0
    .goto 179,28.32,63.88,6 >>Betretet den Keller
step
    #label Unleash
    #requires Combatants
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Melinda Hammond|r und |cRXP_FRIENDLY_Lord Godfrey|r innerhalb
    .turnin 14368 >>Gebt die Quest Rettet die Kinder! ab
    .goto 179,28.93,64.04
	.target +Melinda Hammond
    .turnin 14369 >>Gebt die Quest Entfesselt das Tier ab
    .turnin 14382 >>Gebt die Quest Nimm mich mit, Kapitän, auf die Reise ab
    .accept 14386 >>Akzeptiert die Quest Rudelführer
    .goto 179,28.97,63.93
	.target +Lord Godfrey
step
    .isOnQuest 14386
    #optional
    #completewith next
    .goto 179,28.32,63.88,6,0
    .goto 179,28.41,64.23,5 >>Verlasst den Keller
step
    .isOnQuest 14386
    #completewith Thyala
    .cast 68682 >>Benutzt die |T132161:0|t[Mastiff Pfeife], um |cRXP_FRIENDLY_Attack Mastiffs|r zu beschwören, die |cRXP_ENEMY_Dunkle Waldläuferin Thyala|r angreifen
step
    #label Thyala
    .goto 179,23.48,67.53
    >>Tötet |cRXP_ENEMY_Dark Getriebener Waldläufer Thyala|r
    .complete 14386,1 --Dark Ranger Thyala slain (1)
    .use 49240
	.mob Dark Ranger Thyala
step
    #optional
    #completewith next
    .goto 179,28.41,64.23,8,0
    .goto 179,28.32,63.88,6 >>Betretet den Keller
step
    .goto 179,28.97,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Godfrey|r
    .turnin 14386 >>Gebt die Quest Rudelführer ab
    .accept 14396 >>Akzeptiert die Quest Als das Landen zerbarst
	.target Lord Godfrey
step
    #optional
    #label Cellar6
    #completewith next
    .goto 179,28.32,63.88,6,0
    .goto 179,28.41,64.23,5 >>Verlasst den Keller
step
    .goto 179,29.03,65.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Prince Liam Greymane|r
    .turnin 14396 >>Gebt die Quest Als das Landen zerbarst ab
    .accept 14395 >>Akzeptiert die Quest Atemlos
	.target Prince Liam Greymane
step
    #completewith next
    #loop
    .goto 179,27.20,68.79,0
    .goto 179,27.07,65.40,0
    .goto 179,27.93,66.03,0
    .goto 179,28.53,66.66,15,0
    .goto 179,28.64,67.08,15,0
    .goto 179,28.76,67.34,15,0
    .goto 179,28.00,67.26,15,0
    .goto 179,27.20,68.79,15,0
    .goto 179,26.34,68.02,15,0
    .goto 179,26.04,66.63,15,0
    .goto 179,26.45,65.92,15,0
    .goto 179,27.07,65.40,15,0
    .goto 179,27.89,66.66,15,0
    .goto 179,27.93,66.03,15,0
    .cast 68735 >>Hebt a |cRXP_FRIENDLY_Drowning Watchman|r auf
	.target Drowning Watchman
    .isOnQuest 14395
--XXZ Zarant function
step
    .goto 179,29.03,65.05
    >>Bringt den |cRXP_FRIENDLY_Ertrinkender Wachmann|r zurück zum |cRXP_FRIENDLY_Prinz Liam Graumähne|r
    .complete 14395,1,1 --Drowning Watchman rescued (4)
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    #loop
    .goto 179,27.20,68.79,0
    .goto 179,27.07,65.40,0
    .goto 179,27.93,66.03,0
    .goto 179,28.53,66.66,15,0
    .goto 179,28.64,67.08,15,0
    .goto 179,28.76,67.34,15,0
    .goto 179,28.00,67.26,15,0
    .goto 179,27.20,68.79,15,0
    .goto 179,26.34,68.02,15,0
    .goto 179,26.04,66.63,15,0
    .goto 179,26.45,65.92,15,0
    .goto 179,27.07,65.40,15,0
    .goto 179,27.89,66.66,15,0
    .goto 179,27.93,66.03,15,0
    .cast 68735 >>Hebt a |cRXP_FRIENDLY_Drowning Watchman|r auf
	.target Drowning Watchman
    .isOnQuest 14395
step
    #optional
    .goto 179,29.03,65.05
    >>Bringt den |cRXP_FRIENDLY_Ertrinkender Wachmann|r zurück zum |cRXP_FRIENDLY_Prinz Liam Graumähne|r
    .complete 14395,1,2 --Drowning Watchman rescued (4)
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    #loop
    .goto 179,27.20,68.79,0
    .goto 179,27.07,65.40,0
    .goto 179,27.93,66.03,0
    .goto 179,28.53,66.66,15,0
    .goto 179,28.64,67.08,15,0
    .goto 179,28.76,67.34,15,0
    .goto 179,28.00,67.26,15,0
    .goto 179,27.20,68.79,15,0
    .goto 179,26.34,68.02,15,0
    .goto 179,26.04,66.63,15,0
    .goto 179,26.45,65.92,15,0
    .goto 179,27.07,65.40,15,0
    .goto 179,27.89,66.66,15,0
    .goto 179,27.93,66.03,15,0
    .cast 68735 >>Hebt a |cRXP_FRIENDLY_Drowning Watchman|r auf
	.target Drowning Watchman
    .isOnQuest 14395
step
    #optional
    .goto 179,29.03,65.05
    >>Bringt den |cRXP_FRIENDLY_Ertrinkender Wachmann|r zurück zum |cRXP_FRIENDLY_Prinz Liam Graumähne|r
    .complete 14395,1,3 --Drowning Watchman rescued (4)
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    #loop
    .goto 179,27.20,68.79,0
    .goto 179,27.07,65.40,0
    .goto 179,27.93,66.03,0
    .goto 179,28.53,66.66,15,0
    .goto 179,28.64,67.08,15,0
    .goto 179,28.76,67.34,15,0
    .goto 179,28.00,67.26,15,0
    .goto 179,27.20,68.79,15,0
    .goto 179,26.34,68.02,15,0
    .goto 179,26.04,66.63,15,0
    .goto 179,26.45,65.92,15,0
    .goto 179,27.07,65.40,15,0
    .goto 179,27.89,66.66,15,0
    .goto 179,27.93,66.03,15,0
    .cast 68735 >>Hebt a |cRXP_FRIENDLY_Drowning Watchman|r auf
	.target Drowning Watchman
    .isOnQuest 14395
step
    #optional
    .goto 179,29.03,65.05
    >>Bringt den |cRXP_FRIENDLY_Ertrinkender Wachmann|r zurück zum |cRXP_FRIENDLY_Prinz Liam Graumähne|r
    .complete 14395,1 --Drowning Watchman rescued (4)
	.target Prince Liam Greymane
step
    .goto 179,29.03,65.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Prince Liam Greymane|r
    .turnin 14395,1 >>Gebt die Quest Atemlos ab
    .accept 14397 >>Akzeptiert die Quest Evakuierung
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    .goto 179,35.95,63.54,20,0
    .goto 179,37.63,65.23,12 >>Reisen toward |cRXP_FRIENDLY_Gwen Armstead|r
step
    .goto 179,37.63,65.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gwen Armstead|r
    .turnin 14397 >>Gebt die Quest Evakuierung ab
    .accept 14398 >>Akzeptiert die Quest Oma Wahl
    .accept 14403 >>Akzeptiert die Quest Die Brüder Hayward
    .accept 14406 >>Akzeptiert die Quest Crowleys Obstgarten
	.target Gwen Armstead
step
    .goto 179,37.68,72.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lorna Crowley|r
    .turnin 14406 >>Gebt die Quest Crowleys Obstgarten ab
    .accept 14416 >>Akzeptiert die Quest Der hungrige Ettin
	.target Lorna Crowley
step
    #optional
    #completewith next
    #loop
    .goto 179,39.82,75.32,0
    .goto 179,40.11,79.92,0
    .goto 179,39.90,81.96,0
    .goto 179,38.21,81.88,0
    .goto 179,39.82,75.32,20,0
    .goto 179,40.26,75.67,20,0
    .goto 179,40.24,77.06,20,0
    .goto 179,39.72,77.14,20,0
    .goto 179,40.11,79.92,20,0
    .goto 179,39.90,81.96,20,0
    .goto 179,38.21,81.88,20,0
    .vehicle >>Betretet a |cRXP_FRIENDLY_Mountain Pferd|r
    .target Mountain Horse
step
    .goto 179,39.82,75.32,0
    .goto 179,40.11,79.92,0
    .goto 179,39.90,81.96,0
    .goto 179,38.21,81.88,0
    .goto 179,40.26,75.67,20,0
    .goto 179,40.24,77.06,20,0
    .goto 179,37.68,72.76
    >>Während ihr auf einem |cRXP_FRIENDLY_Bergpferd|r reitet:
    >>Wirkt die |T134326:0|t[Pferd gefügig machen] (1) auf die |cRXP_FRIENDLY_Mountain Horses|r, um sie zum Folgen zu bewegen
    >>Führt 5 |cRXP_FRIENDLY_Mountain Horses|r (einschließlich von Euch eigenen) zurück zu |cRXP_FRIENDLY_Lorna Crowley|r
    >>|cRXP_WARN_Weicht |cRXP_ENEMY_Koroth der Hügelbrecher|r aus
    .complete 14416,1 --Mountain Horse rescued (5)
	.target Mountain Horse
	.target Lorna
    .unitscan Koroth the Hillbreaker
--XXZ Zarant function
step
    .goto 179,37.68,72.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lorna Crowley|r
    .turnin 14416 >>Gebt die Quest Der hungrige Ettin ab
	.target Lorna Crowley
step
    #optional
    #completewith next
    .goto 179,33.00,76.02,15,0
    .goto 179,32.57,75.84,6 >>Betretet Wahls Landhaus
step
    .goto 179,32.52,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grandma Wahl|r innerhalb
    .turnin 14398 >>Gebt die Quest Oma Wahl ab
    .accept 14399 >>Akzeptiert die Quest Oma hat sie nicht mehr alle
	.target Grandma Wahl
step
    .goto 179,33.96,77.38
    >>Sammelt das |cRXP_LOOT_Linen-Wrapped Buch|r vom Boden
    .complete 14399,1 --Linen-Wrapped Book (1)
step
    .goto 179,32.52,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grandma Wahl|r innerhalb
    .turnin 14399 >>Gebt die Quest Oma hat sie nicht mehr alle ab
    .accept 14400 >>Akzeptiert die Quest So gehe ich nicht außer Haus
	.target Grandma Wahl
step
    #optional
    #completewith next
    .goto 179,32.50,76.06,8,0
    .goto 179,32.27,76.07,10,0
    .goto 179,32.04,75.45,10 >>Reisen toward |cRXP_LOOT_Grandma's Gut Clothes|r outside
step
    .goto 179,32.04,75.45
    >>Beute |cRXP_LOOT_Grandma's Gut Clothes|r outside
    .complete 14400,1 --Grandma's Good Clothes (1)
step
    .goto 179,32.52,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grandma Wahl|r innerhalb
    .turnin 14400 >>Gebt die Quest So gehe ich nicht außer Haus ab
    .accept 14401 >>Akzeptiert die Quest Omas Katze
	.target Grandma Wahl
step
    #optional
    #completewith next
    .goto 179,35.16,74.82
    .cast 68743 >>Klickt |cRXP_FRIENDLY_Felix die Katze|r auf dem Boden, um |cRXP_ENEMY_Lucius der Grausame|r zu beschwören
	.mob Lucius the Cruel
    .isOnQuest 14401
step
    .goto 179,35.24,74.98
    >>Tötet |cRXP_ENEMY_Lucius der Grausame|r. Plündert ihn nach |cRXP_LOOT_Felix die Katze|r
    .complete 14401,1 --Chance the Cat (1)
	.mob Lucius the Cruel
step
    #optional
    #completewith next
    .goto 179,33.00,76.02,15,0
    .goto 179,32.57,75.84,6 >>Betretet Wahls Landhaus
step
    .goto 179,32.52,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grandma Wahl|r innerhalb
    .turnin 14401 >>Gebt die Quest Omas Katze ab
	.target Grandma Wahl
step
    .goto 179,36.89,84.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sebastian Hayward|r
    .turnin 14403 >>Gebt die Quest Die Brüder Hayward ab
    .accept 14404 >>Akzeptiert die Quest Nicht alles im Lot auf'm Boot
    .accept 14412 >>Akzeptiert die Quest Angespült
	.target Sebastian Hayward
step
	#sticky
    #label Castaways
    #loop
    .goto 179,36.89,84.68,0
    .waypoint 179,37.31,84.32,6,0
    .waypoint 179,36.89,84.68,6,0
    .waypoint 179,36.57,84.53,6,0
    >>Tötet |cRXP_ENEMY_Forsaken Castaways|r
    .complete 14412,1 --Forsaken Castaway slain (6)
	.mob Forsaken Castaway
step
    .goto 179,37.58,85.98
    >>Öffnet das |cRXP_PICK_Fass von Kohle Teer|r auf dem Boden. Plündert es auf das |cRXP_LOOT_Kohle Teer|r
    .complete 14404,3 --Coal Tar (1)
step
    #optional
    #completewith next
    .goto 179,37.05,86.81,6 >>Betretet Fischerei Hayward
step
    .goto 179,37.46,87.15
    >>Sammelt die |cRXP_LOOT_Shipwright's Werkzeuge|r vom Boden innen
    .complete 14404,1 --Shipwright's Tools (1)
step
    .goto 179,36.09,86.44
    >>Sammelt die |cRXP_LOOT_Bretter von Holz|r auf dem Boden
    .complete 14404,2 --Planks of Wood (1)
step
    #requires Castaways
    .goto 179,36.89,84.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sebastian Hayward|r
    .turnin 14404 >>Gebt die Quest Nicht alles im Lot auf'm Boot ab
    .turnin 14412 >>Gebt die Quest Angespült ab
    .accept 14405 >>Akzeptiert die Quest Flucht zur See
	.target Sebastian Hayward
step
    #completewith next
    .hs >> Benutzt euren Ruhestein zum Dämmerhafen
step << Priest cata
    .goto 179,36.015,64.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sister Almyra|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Sister Almyra
step << Druid cata
    .goto 179,36.276,64.123
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Celestine Erntedank|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Celestine of the Harvest
step << Mage cata
    .goto 179,36.099,63.825
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Myriam Spellwaker|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Celestine of the Harvest
step << Warlock cata
    .goto 179,35.824,63.866
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vitus Darkwalker|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Vitus Darkwalker
step << Rogue cata
    .goto 179,36.735,65.379
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Loren die Hehlerin|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Loren the Fence
step << Hunter cata
    .goto 179,38.032,63.359
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Huntsman Blake|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Huntsman Blake
step << Warrior cata
    .goto 179,38.278,63.457
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sergeant Cleese|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Sergeant Cleese
step
    .goto 179,37.63,65.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gwen Armstead|r
    .turnin 14405 >>Gebt die Quest Flucht zur See ab
    .accept 14465 >>Akzeptiert die Quest Zum Graumähnenanwesen
	.timer 32,Graumähnenanwesen RP
	.target Gwen Armstead
step << skip
    #optional
    #label Manor01
    #completewith next
    >>Warte auf das RP
--XX add waypoint to tie to timer
step
    #optional
    #completewith next
    .goto 179,30.27,52.03,15,0
    .goto 179,29.54,51.55,15,0
    .goto 179,28.67,51.02,10 >>Enter Greymane Manor
step
    .goto 179,28.132,50.021
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Queen Mia Graumähne|r innerhalb
    .turnin 14465 >>Gebt die Quest Zum Graumähnenanwesen ab
    .accept 14466 >>Akzeptiert die Quest Das Observatorium des Königs
	.target Queen Mia Greymane
step
    #optional
    #label Manor1
    #completewith AlasGilneas
    .goto 179,27.89,48.10,15,0
    .goto 179,27.11,48.12,15 >>Geht nach oben zum Balkon
step
    #optional
    #label Manor2
    #requires Manor1
    #completewith AlasGilneas
    .goto 179,26.16,46.41,10,0
    .goto 179,26.74,46.34,10 >>Steigt zur Spitze des Turms des Graumähnenanwesens auf
step
    #label AlasGilneas
    .goto 179,26.44,46.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_King Genn Graumähne|r oben auf dem Turm
	>>|cRXP_WARN_Drückt "Flucht" auf der Tastatur von Euch, um die Zwischensequenz zu überspringen|r
    .turnin 14466 >>Gebt die Quest Das Observatorium des Königs ab
    .turnin 14467 >>Gebt die Quest Oh weh, Gilneas! ab
    .accept 24438 >>Akzeptiert die Quest Exodus
	.target King Genn Greymane
step
    #optional
    #completewith next
    .goto 179,29.12,51.80,20,0
    .goto 179,29.86,52.22,15 >>Descend the tower, then exit Greymane Manor. Jump down toward the |cRXP_FRIENDLY_Stagecoach Carriage|r
step
    .goto 179,28.90,54.22
    .isOnQuest 24438
    .vehicle >>Betretet das |cRXP_FRIENDLY_Postkutschenfuhrwerk|r
    .timer 80,Postkutschenfuhrwerk Einsteigen RP
    .target Stagecoach Carriage
step
    .isOnQuest 24438
    .goto 179,51.81,80.49,10 >> Warte auf das RP
step
    .goto 179,51.81,80.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Prince Liam Greymane|r
    .turnin 24438 >>Gebt die Quest Exodus ab
    .accept 24468 >>Akzeptiert die Quest Gestranded im Moor
	.target Prince Liam Greymane
step
    #loop
    .goto 179,53.08,74.25,0
    .goto 179,52.73,72.07,0
    .goto 179,52.23,68.59,0
    .goto 179,53.08,74.25,45,0
    .goto 179,52.04,73.67,45,0
    .goto 179,51.75,72.92,45,0
    .goto 179,51.41,71.57,45,0
    .goto 179,52.73,72.07,45,0
    .goto 179,53.59,71.89,45,0
    .goto 179,53.95,73.95,45,0
    .goto 179,53.56,68.69,45,0
    .goto 179,52.23,68.59,45,0
    .goto 179,50.45,68.07,45,0
    .goto 179,51.46,69.67,45,0
    >>Befreit die |cRXP_FRIENDLY_Crash Survivors|r, indem ihr die |cRXP_ENEMY_Swamp Crocolisks|r tötet, die sie angreifen
    .complete 24468,1 --Crash Survivor rescued (5)
	.mob Swamp Crocolisk
    .target Crash Survivor
step
    .goto 179,51.81,80.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Prince Liam Greymane|r
    .turnin 24468 >>Gebt die Quest Gestranded im Moor ab
    .accept 24472 >>Akzeptiert die Quest Vorstellen ist angebracht
	.target Prince Liam Greymane
step
    #optional
    #completewith Koroth
    .goto 179,50.38,84.87,15,0
    .goto 179,48.88,84.64,15,0
    .goto 179,48.14,85.41,15,0
    .goto 179,46.74,83.20,12 >>Reist zu |cRXP_LOOT_Koroths Banner|r oben auf dem Berg
step
    #sticky
    #label Ogres
    #loop
    .goto 179,46.93,85.06,0
    .goto 179,50.56,85.62,0
    .waypoint 179,46.93,85.06,45,0
    .waypoint 179,45.77,87.30,45,0
    .waypoint 179,45.77,88.95,45,0
    .waypoint 179,45.26,87.21,45,0
    .waypoint 179,48.10,86.57,45,0
    .waypoint 179,49.25,83.82,45,0
    .waypoint 179,50.56,85.62,45,0
    >>Tötet |cRXP_ENEMY_Ogre Minions|r
    .complete 24472,1 --Ogre Minion slain (4)
	.mob Ogre Minion
step
    #label Koroth
    .goto 179,46.74,83.20
    >>Beute |cRXP_LOOT_Koroth's Banner|r auf dem Boden
    .complete 24472,2 --Koroth's Banner (1)
step
    #requires Ogres
    .goto 179,51.81,80.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Prince Liam Greymane|r
    .turnin 24472 >>Gebt die Quest Vorstellen ist angebracht ab
    .accept 24483 >>Akzeptiert die Quest Sturmsiel
	.target Prince Liam Greymane
step << !Mage
    #optional
    #completewith next
    .goto 179,53.19,84.01,30,0
    .goto 179,55.27,87.50,30,0
    .goto 179,58.49,91.88,30,0
    .goto 179,59.33,92.34,12,0
    .goto 179,59.84,91.92,6 >>Betretet das Haus von |cRXP_FRIENDLY_Gwen Armstead|r in Sturmsiel
step << Mage
    .goto 179,59.073,92.955
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Myriam Spellwaker|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Myriam Spellwaker
step
    .goto 179,59.86,91.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gwen Armstead|r innerhalb
    .turnin 24483 >>Gebt die Quest Sturmsiel ab
    .accept 24484 >>Akzeptiert die Quest Schädlingsbekämpfung
	.target Gwen Armstead
step
    #sticky
    #label Stormglen
    .goto 179,60.06,91.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Willa Arnes|r innerhalb
    .home >>Setzt euren Ruhestein in Sturmsiel
    .isQuestAvailable 24495
step
    .goto 179,60.26,91.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lorna Crowley|r innerhalb
    .accept 24495 >>Akzeptiert die Quest Fetzen der Vergangenheit
	.target Lorna Crowley
step << Priest
    .goto 179,60.482,91.587
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sister Almyra|r upstairs
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Sister Almyra
step << Druid
    .goto 179,60.002,92.230
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Celestine Erntedank|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Celestine of the Harvest
step << Warrior
    .goto 179,59.500,91.003
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sergeant Cleese|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Sergeant Cleese
step << Rogue
    .goto 179,60.255,90.426
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Loren die Hehlerin|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Loren the Fence
step << Hunter
    .goto 179,60.468,90.790
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Huntsman Blake|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Huntsman Blake
step << Warlock
    .goto 179,61.723,91.088
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vitus Darkwalker|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Vitus Darkwalker
step
    #sticky
    #requires Stormglen
    #label JournalP
    #loop
    .goto 179,62.32,92.85,0
    .goto 179,65.14,90.76,0
    .goto 179,67.36,92.29,0
    .goto 179,62.32,92.85,15,0
    .goto 179,62.98,92.74,15,0
    .goto 179,63.84,91.65,15,0
    .goto 179,64.33,90.99,15,0
    .goto 179,64.82,90.71,15,0
    .goto 179,65.14,90.76,15,0
    .goto 179,65.45,90.92,15,0
    .goto 179,65.78,90.96,15,0
    .goto 179,65.22,92.46,15,0
    .goto 179,65.48,91.64,15,0
    .goto 179,65.91,90.76,15,0
    .goto 179,66.40,90.82,15,0
    .goto 179,67.18,90.80,15,0
    .goto 179,67.41,91.41,15,0
    .goto 179,67.36,92.29,15,0
    >>Beute |cRXP_LOOT_Old Tagebuch Pages|r auf dem Boden
    .complete 24495,1 --Old Journal Page (6)
step
    #requires Stormglen
    #loop
    .goto 179,65.32,92.71,0
    .goto 179,65.53,88.51,0
    .goto 179,65.59,90.93,0
    .goto 179,65.32,92.71,45,0
    .goto 179,66.30,91.16,45,0
    .goto 179,67.59,92.29,45,0
    .goto 179,67.50,88.31,45,0
    .goto 179,65.53,88.51,45,0
    .goto 179,62.70,91.02,45,0
    .goto 179,63.53,89.30,45,0
    .goto 179,63.64,91.38,45,0
    .goto 179,65.12,91.93,45,0
    .goto 179,65.59,90.93,45,0
    >>Tötet |cRXP_ENEMY_Vilebrood Skitterers|r
    .complete 24484,1 --Vilebrood Skitterer slain (6)
	.mob Vilebrood Skitterer
step
    #optional
    #requires JournalP
    #completewith next
    .goto 179,60.37,91.46,8 >>BETRETET das Haus
step
    #requires JournalP
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lorna Crowley|r und |cRXP_FRIENDLY_Gwen Armstead|r innerhalb
    .turnin 24495 >>Gebt die Quest Fetzen der Vergangenheit ab
    .goto 179,60.26,91.85
	.target +Lorna Crowley
    .turnin 24484 >>Gebt die Quest Schädlingsbekämpfung ab
    .accept 24501 >>Akzeptiert die Quest Spinne am Morgen bringt Kummer und Sorgen
    .goto 179,59.86,91.71
	.target +Gwen Armstead
step
    .goto 179,68.35,81.65
    >>Tötet |cRXP_ENEMY_Rygna|r
    .complete 24501,1 --Rygna slain (1)
	.mob Rygna
step
    #optional
    #requires JournalP
    #completewith next
    .goto 179,60.37,91.46,8 >>BETRETET das Haus
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gwen Armstead|r und |cRXP_FRIENDLY_Lorna Crowley|r innerhalb
    .turnin 24501 >>Gebt die Quest Spinne am Morgen bringt Kummer und Sorgen ab
    .goto 179,59.86,91.71
	.target +Gwen Armstead
    .accept 24578 >>Akzeptiert die Quest Der Schwarzforst
    .goto 179,60.26,91.85
	.target +Lorna Crowley
step
    .goto 179,63.35,82.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Belysra Starbreeze|r
    .turnin 24578 >>Gebt die Quest Der Schwarzforst ab
    .accept 24616 >>Akzeptiert die Quest Verfolger abschütteln
	.target Belysra Starbreeze
step
    #optional
    #sticky
    #label Trap1
    #completewith Scout
    .goto 179,63.92,81.25
    .aura 70794 >>Lauft auf die Straße, um in einer |T134916:0|t[Eiskältefalle] |cRXP_WARN_steckenzubleiben und die |rDunkle Späherin|cRXP_WARN_ zu beschwören. Benutzt|cRXP_ENEMY_ |T133443:0|t[Belysras Talisman] |rum die|r |T134916:0|t[Eiskältefalle] |cRXP_WARN_aufzuheben|r
    .use 49944
step
    #optional
    #sticky
    #requires Trap1
    #completewith Scout
    .goto 179,63.92,81.25
    .aura -70794 >>Benutzt |T133443:0|t[Belysras Talisman] |cRXP_WARN_um die|r |T134916:0|t[Eiskältefalle] |cRXP_WARN_aufzuheben|r
    .use 49944
--XXZ Currently doesnt work (aura needs to count debuffs)
step
    #label Scout
    .goto 179,64.12,80.52
    >>Tötet die |cRXP_ENEMY_Dark Späher|r
    .complete 24616,1 --Dark Scout slain (1)
	.mob Dark Scout
    .use 49944
step
    .goto 179,63.35,82.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Belysra Starbreeze|r
    .turnin 24616 >>Gebt die Quest Verfolger abschütteln ab
    .accept 24617 >>Akzeptiert die Quest Tal'doren, die Heimstatt in der Wildnis
	.target Belysra Starbreeze
step
    .goto 179,68.72,73.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Darius Crowley|r
    .turnin 24617 >>Gebt die Quest Tal'doren, die Heimstatt in der Wildnis ab
    .accept 24627 >>Akzeptiert die Quest Direkt vor unserer Tür
	.target Lord Darius Crowley
step
    .goto 179,69.30,72.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vassandra Sturmklaue|r
    .accept 24628 >>Akzeptiert die Quest Vorbereitungen
	.target Vassandra Stormclaw
step
    #sticky
    #label Banshees
    #loop
    .goto 179,64.34,75.55,0
    .goto 179,60.44,78.54,0
    .goto 179,64.23,72.55,0
    .goto 179,64.34,75.55,45,0
    .goto 179,61.21,77.57,45,0
    .goto 179,61.38,79.02,45,0
    .goto 179,61.86,79.10,45,0
    .goto 179,60.44,78.54,45,0
    .goto 179,60.19,80.23,45,0
    .goto 179,60.41,76.88,45,0
    .goto 179,59.79,75.62,45,0
    .goto 179,63.38,74.31,45,0
    .goto 179,64.23,72.55,45,0
    >>Tötet |cRXP_ENEMY_Howling Banshees|r
    .complete 24627,1 --Howling Banshee slain (6)
	.mob Howling Banshee
step
    #optional
    .goto 179,60.64,74.63,0
    .goto 179,63.59,73.45,0
    .goto 179,62.70,76.04,0
    .goto 179,59.97,77.38,0
    .goto 179,60.64,74.63,15,0
    .goto 179,60.95,74.43,15,0
    .goto 179,61.19,74.67,15,0
    .goto 179,61.51,72.89,15,0
    .goto 179,63.38,73.45,15,0
    .goto 179,63.59,73.45,15,0
    .goto 179,66.17,71.64,15,0
    .goto 179,67.04,71.91,15,0
    .goto 179,67.18,75.96,15,0
    .goto 179,65.23,76.21,15,0
    .goto 179,62.70,76.04,15,0
    .goto 179,61.99,75.87,15,0
    .goto 179,61.44,78.34,15,0
    .goto 179,62.27,79.09,15,0
    .goto 179,61.23,79.36,15,0
    .goto 179,60.97,79.56,15,0
    .goto 179,60.06,78.49,15,0
    .goto 179,59.77,78.08,15,0
    .goto 179,59.97,77.38,15,0
    >>Beute |cRXP_LOOT_Moonleaf|r auf dem Boden
    *|cRXP_WARN_Ihr könnt den Ort von |cRXP_LOOT_Mondblatt|r auf eurer Minikarte sehen, falls ihr|r |T133939:0|t[Kräutersuche] |cRXP_WARN_aktiviert habt|r
    .complete 24628,1 --Moonleaf (6)
	.skill herbalism,1,1
step
    .goto 179,60.64,74.63,0
    .goto 179,63.59,73.45,0
    .goto 179,62.70,76.04,0
    .goto 179,59.97,77.38,0
    .goto 179,60.64,74.63,15,0
    .goto 179,60.95,74.43,15,0
    .goto 179,61.19,74.67,15,0
    .goto 179,61.51,72.89,15,0
    .goto 179,63.38,73.45,15,0
    .goto 179,63.59,73.45,15,0
    .goto 179,66.17,71.64,15,0
    .goto 179,67.04,71.91,15,0
    .goto 179,67.18,75.96,15,0
    .goto 179,65.23,76.21,15,0
    .goto 179,62.70,76.04,15,0
    .goto 179,61.99,75.87,15,0
    .goto 179,61.44,78.34,15,0
    .goto 179,62.27,79.09,15,0
    .goto 179,61.23,79.36,15,0
    .goto 179,60.97,79.56,15,0
    .goto 179,60.06,78.49,15,0
    .goto 179,59.77,78.08,15,0
    .goto 179,59.97,77.38,15,0
    >>Beute |cRXP_LOOT_Moonleaf|r auf dem Boden
    .complete 24628,1 --Moonleaf (6)
    .skill herbalism,<1,1
step
    #requires Banshees
    .goto 179,68.72,73.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Darius Crowley|r
    .turnin 24627 >>Gebt die Quest Direkt vor unserer Tür ab
    .accept 24646 >>Akzeptiert die Quest Holt zurück, was uns gehört
	.target Lord Darius Crowley
step
    .goto 179,69.30,72.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vassandra Sturmklaue|r
    .turnin 24628 >>Gebt die Quest Vorbereitungen ab
	.target Vassandra Stormclaw
step
    #optional
    #label Taldoren
    #completewith ScytheOfElune
    .goto 179,58.14,75.79
    .cast 71061 >>|cRXP_WARN_Benutzt das|r |T134229:0|t[Horn von Tal'doren] |cRXP_WARN_um die|r |cRXP_ENEMY_Veteran Dunkel Waldläufer|r abzulenken
    .use 50134
    .unitscan Veteran Dark Ranger
step
    #optional
    #requires Taldoren
    #completewith ScytheOfElune
    .goto 179,57.85,75.95,8 >> BETRETET das Haus
step
    #label ScytheOfElune
    .goto 179,57.51,75.59
	>>Öffnet |cRXP_PICK_Worn Coffer|r darin. Plündert sie nach dem |cRXP_LOOT_Mysterious Artefakt|r
    .complete 24646,1 --Mysterious Artifact (1)
    .use 50134
step
    .goto 179,68.72,73.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Darius Crowley|r
    .turnin 24646 >>Gebt die Quest Holt zurück, was uns gehört ab
    .accept 24593 >>Akzeptiert die Quest Weder Mensch noch Tier
	.target Lord Darius Crowley
step
    >>Trinkt |cRXP_PICK_Well of Furor|r, |cRXP_PICK_Well of Gelassenheit|r und |cRXP_PICK_Well of Gleichgewicht|r
    .complete 24593,1 --Well of Fury (1)
    .goto 179,68.98,72.80,-1
    .complete 24593,2 --Well of Tranquility (1)
    .goto 179,69.26,73.10,-1
    .complete 24593,3 --Well of Balance (1)
    .goto 179,69.14,73.52,-1
step
    .goto 179,68.72,73.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Darius Crowley|r
    .turnin 24593 >>Gebt die Quest Weder Mensch noch Tier ab
    .accept 24673 >>Akzeptiert die Quest Rückkehr nach Sturmsiel
	.target Lord Darius Crowley
step
    #completewith next
    .hs >> Benutzt euren Ruhestein zum Sturmsiel
step
    .goto 179,59.86,91.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gwen Armstead|r innerhalb
    .turnin 24673 >>Gebt die Quest Rückkehr nach Sturmsiel ab
    .accept 24672 >>Akzeptiert die Quest Vorwärts und hoch hinaus
	.target Gwen Armstead
step
    #optional
    #completewith next
    .goto 179,60.44,91.30,8,0
    .goto 179,68.80,85.65,45,0
    .goto 179,72.02,82.07,30,0
    .goto 179,72.73,80.05,12 >>Reisen toward |cRXP_FRIENDLY_Krennas Aranas|r
step
    .goto 179,72.73,80.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krennas Aranas|r
    .turnin 24672 >>Gebt die Quest Vorwärts und hoch hinaus ab
    .accept 24592 >>Akzeptiert die Quest Verrat an der Witterfront
	.target Krennas Aranas
step
    #optional
    #label Walden1
    #completewith Walden
    .goto 179,74.82,76.94,30,0
    .goto 179,76.67,72.75
    .subzone 4788 >>Reisen toward Witterfront
step
    #optional
    #sticky
    #label KrennanStealth
    #requires Walden1
    #completewith TempestBetrayal
    .cast 70456 >>|cRXP_WARN_Benutzen|r |T135446:0|t[Krennan's Trank of Verstohlenheit] |cRXP_WARN_um zu werden|r |T132320:0|t[Verstohlen]
    >>|cRXP_WARN_Während|r |T132320:0|t[Verstohlen] |cRXP_WARN_, könnt ihr die meisten Zauber wirken. Das|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_bricht beim Betreten des Kampfes|r
    >>|cRXP_WARN_NOTE: |cRXP_ENEMY_Mountain Mastiffs|r have increased|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_detection|r
    .use 50218
step
    #optional
    #sticky
    #requires KrennanStealth
    #completewith TempestBetrayal
    +|cRXP_WARN_Wenn von Euch|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_bricht, benutzt|r |T135446:0|t[Krennan's Trank of Verstohlenheit] |cRXP_WARN_um zu werden|r |T132320:0|t[Verstohlen] |cRXP_WARN_erneut (funktioniert im Kampf)|r
    >>|cRXP_WARN_Während|r |T132320:0|t[Verstohlen] |cRXP_WARN_, könnt ihr die meisten Zauber wirken. Das|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_bricht beim Betreten des Kampfes|r
    >>|cRXP_WARN_NOTE: |cRXP_ENEMY_Mountain Mastiffs|r have increased|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_detection|r
    .use 50218
step
    #optional
    #requires Walden1
    #completewith Walden
    .goto 179,74.82,76.94,30,0
    .goto 179,76.67,72.75,15,0
    .goto 179,76.84,72.10,12,0
    .goto 179,76.88,71.32,12,0
    .goto 179,78.25,70.46,15,0
    .goto 179,79.25,67.92,15,0
    .goto 179,79.29,64.84,35 >>Reist vorsichtig zwischen den Gebäuden und Hügeln in Richtung |cRXP_ENEMY_Lord Walden|r
step
    #label Walden
    .goto 179,79.29,64.84,30,0
    .goto 179,78.25,65.86,6,0
    .goto 179,78.03,66.47,4,0
    .goto 179,77.83,66.14,4,0
    .goto 179,78.20,65.97,4,0
    .goto 179,78.11,66.23
    >>Tötet |cRXP_ENEMY_Lord Walden|r
    >>|cRXP_WARN_Er patrouilliert zwischen der Außenseite des Hauses und dem Inneren des Hauses|r
    >>|cRXP_WARN_Seid vorsichtig, da er|r |T132797:0|t[Gelagerter Brandy] |cRXP_WARN_(Fernkampf instant: Betäubt für 4 Sek. und verursacht Schaden)|r
    .complete 24592,2 --Lord Walden slain (1)
	.mob Lord Walden
step
    #optional
    #completewith next
    .goto 179,82.67,69.63,30,0
    .goto 179,84.22,72.50,30,0
    .goto 179,85.47,73.25,15,0
    .goto 179,79.29,64.84,35 >>Reisen toward |cRXP_ENEMY_Baron Ashbury|r
step
    #label Ashbury
    .goto 179,85.44,74.22,15,0
    .goto 179,84.93,74.37,15,0
    .goto 179,84.21,74.80
    >>Tötet |cRXP_ENEMY_Baron Ashbury|r
    >>|cRXP_WARN_Er patrouilliert zwischen den Türen seines Hauses|r
    .complete 24592,1 --Baron Ashbury slain (1)
	.mob Baron Ashbury
step
    #label TempestBetrayal
    .goto 179,78.28,72.07
    .use 50218 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_King Genn Graumähne|r
    .turnin 24592 >>Gebt die Quest Verrat an der Witterfront ab
    .accept 24677 >>Akzeptiert die Quest Flankiert die Verlassenen
	.target King Genn Greymane
step
    #completewith next
    .goto 179,78.33,71.88
    .vehicle >>Sprecht mit |cRXP_FRIENDLY_Lord Hewell|r, um das Transportmittel |cRXP_FRIENDLY_Kräftiges Gebirgspferd|r in Richtung |cRXP_FRIENDLY_Lorna Crowley|r zu benutzen
    .timer 100.5,Flank the Forsaken RP
    .target Lord Hewell
    .skipgossip 38764,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lorna Crowley|r, |cRXP_FRIENDLY_Magda Whitewall|r, und |cRXP_FRIENDLY_Marcus|r
    .turnin 24677 >>Gebt die Quest Flankiert die Verlassenen ab
    .accept 24575 >>Akzeptiert die Quest Befreiung
    .goto 179,70.88,39.84
	.target +Lorna Crowley
    .accept 24675 >>Akzeptiert die Quest Die letzte Mahlzeit
    .goto 179,70.65,39.70
	.target +Magda Whitewall
    .accept 24674 >>Akzeptiert die Quest Niemandes Sklaven
    .goto 179,70.29,40.05,8,0
    .goto 179,70.63,40.12,8,0
    .goto 179,71.25,39.78
	.target +Marcus
step
    #loop
    .goto 179,75.70,39.60,0
    .goto 179,76.24,45.37,0
    .goto 179,77.83,35.81,0
    .goto 179,75.70,39.60,45,0
    .goto 179,76.12,42.77,45,0
    .goto 179,76.24,45.37,45,0
    .goto 179,77.22,46.97,45,0
    .goto 179,78.11,43.54,45,0
    .goto 179,78.05,38.73,45,0
    .goto 179,77.83,35.81,45,0
    >>Tötet |cRXP_ENEMY_Brown Stags|r. Plündert sie für |cRXP_LOOT_Sides of Stag Fleisch|r
    .complete 24675,1 --Side of Stag Meat (10)
	.mob Brown Stag
step
    #sticky
    #label Enslaved
    #loop
    .goto 179,75.71,31.17,0
    .waypoint 179,82.16,30.73,20,0
    .waypoint 179,81.95,26.18,20,0
    .waypoint 179,78.75,25.15,20,0
    .waypoint 179,79.37,27.64,20,0
    >>Tötet |cRXP_ENEMY_Forsaken Slavedrivers|r. Plündert sie für |T134247:0|t|cRXP_LOOT_[Slaver's Keys]|r
    >>Benutzt den |T134247:0|t|cRXP_LOOT_[Slaver's Keys]|r auf den |cRXP_PICK_Ball und Kette|r der |cRXP_FRIENDLY_Enslaved Villagers|r in und um Glutsteinmine um sie zu befreien
    .collect 49881,5,24575,1,-1 --Slaver's Key (5)
    .complete 24575,1 --Enslaved Gilnean freed (5)
	.mob Forsaken Slavedriver
	.target Enslaved Villagers
--XX may need key drop
step
    #optional
    #label Emberstone1
    #completewith Brothogg
    .goto 179,76.71,30.84,10 >>Betretet Glutsteinmine
    .isOnQuest 24674
step
    #optional
    #requires Emberstone1
    #completewith Brothogg
    .goto 179,78.13,24.95,15,0
    .goto 179,79.39,26.51,15 >>Reist in Richtung |cRXP_ENEMY_Brothogg der Sklavenmeister|r im Inneren
    .isOnQuest 24674
step
    #label Brothogg
    .goto 179,80.32,32.11
    >>Tötet |cRXP_ENEMY_Brothogg der Sklavenmeister|r im Inneren
    .complete 24674,1 --Brothogg the Slavemaster slain (1)
	.mob Brothogg the Slavemaster
step
    #optional
    #requires Enslaved
    #completewith next
    .goto 179,76.71,30.84,10 >>Verlassen Glutsteinmine
    .subzoneskip 4732,1
step << skip
    #requires Enslaved
	#completewith next
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .subzoneskip 4732,1
--XX skipping because theres 0 repair vendors in Gilneas past duskhaven?
step
    #requires Enslaved
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Magda Whitewall|r, |cRXP_FRIENDLY_Marcus|r, und |cRXP_FRIENDLY_Lorna Crowley|r
    .turnin 24675 >>Gebt die Quest Die letzte Mahlzeit ab
    .goto 179,70.65,39.70
	.target +Magda Whitewall
    .turnin 24674 >>Gebt die Quest Niemandes Sklaven ab
    .goto 179,70.29,40.05,8,0
    .goto 179,70.63,40.12,8,0
    .goto 179,71.25,39.78
	.target +Marcus
    .turnin 24575 >>Gebt die Quest Befreiung ab
    .accept 24676 >>Akzeptiert die Quest Vertreibt sie!
    .goto 179,70.88,39.84
	.target +Lorna Crowley
step
    #sticky
    #label Infantry
    #loop
	.goto 179,74.71,27.21,0
	.goto 179,73.51,30.96,0
	.goto 179,71.72,31.08,0
	.waypoint 179,74.71,27.21,45,0
	.waypoint 179,74.95,27.98,45,0
    .waypoint 179,73.54,29.99,45,0
	.waypoint 179,73.51,30.96,45,0
    .waypoint 179,72.88,29.98,45,0
	.waypoint 179,72.30,30.37,45,0
    .waypoint 179,71.90,29.52,45,0
	.waypoint 179,71.72,31.08,45,0
    >>Tötet |cRXP_ENEMY_Forsaken Infantry|r
	.complete 24676,1 --Forsaken Infantry slain (4)
	.mob Forsaken Infantry
step
    #sticky
    #label Cornell
	.goto 179,72.86,28.42
    >>Tötet |cRXP_ENEMY_Executor Cornell|r
    .complete 24676,2 --Executor Cornell (1)
	.mob Executor Cornell
step
	.goto 179,74.15,27.40
    >>Tötet |cRXP_ENEMY_Valov the Mad|r
    .complete 24676,3 --Valnov the Mad slain (1)
	.mob Valnov the Mad
step
    #optional
    #requires Cornell
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires Infantry
    .goto 179,70.88,39.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lorna Crowley|r
    .turnin 24676 >>Gebt die Quest Vertreibt sie! ab
    .accept 24904 >>Akzeptiert die Quest Schlacht um Gilneas
	.target Lorna Crowley
step
    .isOnQuest 24904
    .goto 179,70.049,40.897
    .gossip 38553,0 >>Sprecht mit |cRXP_FRIENDLY_Krennan Aranas|r um die Schlacht um Gilneas zu beginnen. Ihr könnt auch in Gilneas teleportiert werden, wenn ein Kampf bereits im Gange ist
    >>|cRXP_WARN_Ihr werdet keinen Pfeil zum Folgen haben, da ihr möglicherweise an einen zufälligen Ort von Gilneas teleportiert werdet. Folgt |cRXP_FRIENDLY_Prinz Liam Graumähne|r und |cRXP_FRIENDLY_Lord Darius Crowley|r genau|r
    .skipgossip 38553,1
    .target Krennan Aranas
step
    .isOnQuest 24904
    >>|cRXP_WARN_Follow |cRXP_FRIENDLY_Prince Liam Greymane|r und |cRXP_FRIENDLY_Lord Darius Crowley|r through Gilneas|r
    .use 50334 >>|cRXP_WARN_Benutzt|r |T135340:0|t[Rapier der Gilnearischen Patrioten] auf eurem |cRXP_FRIENDLY_Gilnearischer Milizsoldat|r Wächtern um deren Schnelligkeit und Gesundheitsregeneration zu erhöhen|r
    >>|cRXP_WARN_Betretet eine |cRXP_FRIENDLY_Glutsteinkanone|r und ein |cRXP_FRIENDLY_Beschädigtes Katapult|r, um |cRXP_ENEMY_Vile Abominations|r und |rGorerot|cRXP_ENEMY_ zu besiegen|r
    >>|cRXP_WARN_Besiegt|cRXP_ENEMY_ Lady Sylvanas Windläufer|r indem ihr sie auf 40% Leben bringt|r
    .complete 24904,1 --Battle for Gilneas City Complete (1)
    .timer 17,Schlacht um Gilneas RP
    .target Prince Liam Greymane
    .target Lord Darius Crowley
    .target Emberstone Cannon
    .target Damaged Catapult
    .mob Vile Abomination
    .mob Gorerot
    .mob Lady Sylvanas Windrunner
step
    #optional
    #completewith next
    >>Warte auf das RP
    .goto 202,36.89,59.09,8 >>BETRETET das Haus
step
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Sprecht mit |cRXP_FRIENDLY_Lorna Crowley|r im Inneren
    .turnin 24904 >>Gebt die Quest Schlacht um Gilneas ab
    .accept 24902 >>Akzeptiert die Quest Jagd nach Sylvanas
    .timer 170,Jagd nach Sylvanas RP
	.target Lorna Crowley
step
    .goto 202,36.17,62.68,0
    .goto 202,36.49,59.34,8,0
    .goto 202,36.44,47.99,12,0
    .goto 202,35.22,41.12,12,0
    .goto 202,40.17,31.05,12,0
    .goto 202,40.82,40.67,10,0
    .goto 202,43.46,44.64,10,0
    .goto 202,45.06,50.85
    >>|cRXP_WARN_Follow |cRXP_FRIENDLY_Tobias Mistmantle|r closely oder he will not move und may despawn|r
    >>Folgt|cRXP_WARN_ ihm bis er sich im Wasser in der Kathedrale versteckt, dann wartet auf das Rollenspiel|r
    >>|cRXP_WARN_Falls |cRXP_FRIENDLY_Tobias Mistmantle|r despawns, skip this step|r
    .complete 24902,1 --Hunt for Sylvanas (1)
	.target Tobias Mistmantle
	.target Lorna Crowley
    .isOnQuest 24902
step
    #optional
    #completewith next
    .goto 202,43.04,44.05,10,0
    .goto 202,40.40,40.31,10,0
    .goto 202,37.25,44.17,12,0
    .goto 202,38.92,59.78,6,0
    .goto 202,38.62,60.25,8 >>Zurückkehren zu |cRXP_FRIENDLY_Lorna Crowley|r
    .isQuestComplete 24902
step
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Sprecht mit |cRXP_FRIENDLY_Lorna Crowley|r im Inneren
    .turnin 24902 >>Gebt die Quest Jagd nach Sylvanas ab
    .accept 24903 >>Akzeptiert die Quest Rache oder Überleben
	.target Lorna Crowley
    .isQuestComplete 24902
step
    #optional
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Sprecht mit |cRXP_FRIENDLY_Lorna Crowley|r im Inneren
    .accept 24903 >>Akzeptiert die Quest Rache oder Überleben
	.target Lorna Crowley
    .isQuestTurnedIn 24902
step
    #optional
    #completewith next
    .abandon 24902 >>Brecht die Quest Jagd nach Sylvanas ab
step
    #optional
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Sprecht mit |cRXP_FRIENDLY_Lorna Crowley|r im Inneren
    .accept 24902 >>Akzeptiert die Quest Jagd nach Sylvanas
    .timer 193.5,The Hunt For Sylvanas RP
	.target Lorna Crowley
step
    #optional
    .goto 202,36.17,62.68,0
    .goto 202,36.49,59.34,8,0
    .goto 202,36.44,47.99,12,0
    .goto 202,35.22,41.12,12,0
    .goto 202,40.17,31.05,12,0
    .goto 202,40.82,40.67,10,0
    .goto 202,43.46,44.64,10,0
    .goto 202,45.06,50.85
    >>|cRXP_WARN_Follow |cRXP_FRIENDLY_Tobias Mistmantle|r closely oder he will not move und may despawn|r
    >>Folgt|cRXP_WARN_ ihm bis er sich im Wasser in der Kathedrale versteckt, dann wartet auf das Rollenspiel|r
    .complete 24902,1 --Hunt for Sylvanas (1)
	.target Tobias Mistmantle
	.target Lorna Crowley
    .isOnQuest 24092
step
    #optional
    #completewith next
    .goto 202,43.04,44.05,10,0
    .goto 202,40.40,40.31,10,0
    .goto 202,37.25,44.17,12,0
    .goto 202,38.92,59.78,6,0
    .goto 202,38.62,60.25,8 >>Zurückkehren zu |cRXP_FRIENDLY_Lorna Crowley|r
step
    #optional
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lorna Crowley|r innerhalb
    .turnin 24902 >>Gebt die Quest Jagd nach Sylvanas ab
    .accept 24903 >>Akzeptiert die Quest Rache oder Überleben
	.target Lorna Crowley
step
    #optional
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lorna Crowley|r innerhalb
    .accept 24903 >>Akzeptiert die Quest Rache oder Überleben
	.target Lorna Crowley
step
    #optional
    #requires GennHouse1
    #completewith Vengeance
    .goto 202,32.10,58.01,8 >>Betretet |cRXP_FRIENDLY_King Genn Graumähne|r's house
step
    #label Vengeance
    .goto 202,32.36,57.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_King Genn Graumähne|r
    .turnin 24903 >>Gebt die Quest Rache oder Überleben ab
    .accept 24920 >>Akzeptiert die Quest Das Unvermeidliche verlangsamen
	.target King Genn Greymane
step
    #optional
    #label RidingBat
    #completewith Survival
    .goto 202,30.24,60.96
    .vehicle >>Betretet die |cRXP_FRIENDLY_Gefangene Reitfledermaus|r
    .timer 21,Das Unvermeidliche verlangsamen RP
    .target Captured Riding Bat
step
    #optional
    #requires RidingBat
    #completewith Survival
    .goto 179,57.11,39.50,5 >>Warte auf das RP
step
    #label Survival
    .goto 179,54.83,35.83,-1
    .goto 179,56.43,28.49,-1
    .goto 179,56.77,20.70,-1
    .goto 179,57.12,15.66,-1
    .goto 179,61.45,19.86,-1
    .goto 179,64.89,27.43,-1
    .goto 179,61.30,35.14,-1
    >>Während ihr auf der |cRXP_FRIENDLY_Gefangene Reitfledermaus|r seid:
    >>Tötet |cRXP_ENEMY_Forsaken Plaguesmiths|r, |cRXP_ENEMY_Forsaken Invaders|r, und |cRXP_ENEMY_Forsaken Catapults|r
    >>Cast |T133709:0|t[Eisenbombe] (1) (Distanzkampf Sofort: Deals damage)
    .complete 24920,2 --Invading Forsaken (40)
    .complete 24920,1 --Forsaken Catapult slain (6)
    .mob Forsaken Catapult
    .mob Invading Forsaken
step
    #optional
    #completewith next
    >>Während ihr auf der |cRXP_FRIENDLY_Gefangene Reitfledermaus|r seid:
    .goto 202,30.43,60.88,5 >>Benutzt |T132182:0|t[Zurückfliegen] (2), um zu |cRXP_FRIENDLY_König Genn Graumähne|r zurückzukehren
step
    .goto 202,32.36,57.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_King Genn Graumähne|r
    .turnin 24920 >>Gebt die Quest Das Unvermeidliche verlangsamen ab
    .accept 24678 >>Akzeptiert die Quest Knietief
	.target King Genn Greymane
step
    #optional
    #completewith next
    .goto 202,33.75,57.09,6 >>Geht hinunter in die Krypta
step
    #optional
    #completewith Knee
    .goto 179,53.56,55.10,20,0
    .goto 179,49.87,57.26,10,0
    >>|cRXP_WARN_Benutzt die|r |T135432:0|t[Halbverbrannte Fackel] |cRXP_WARN_um zu verscheuchen |cRXP_ENEMY_Verfaulende Maden|r, |cRXP_ENEMY_Unterirdische Spinnen|r, und|r |cRXP_ENEMY_Friedhof-Ratten|r
    .goto 179,49.78,57.88,6 >>Reist zum Ende der Krypta
    .mob Putrescent Maggot
    .mob Underground Spider
    .mob Graveyard Rat
    .use 50220
step
    #label Knee
    .goto 179,49.71,57.28,8,0
    .goto 179,49.84,56.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krennan Aranas|r außerhalb
    .turnin 24678 >>Gebt die Quest Knietief ab
    .accept 24602 >>Akzeptiert die Quest Zur Ruhe gebettet
    .target Krennan Aranas
step
    #loop
    .goto 179,48.60,54.28,0
    .goto 179,46.85,54.23,0
    .goto 179,46.71,56.03,0
    .goto 179,49.33,49.77,0
    .goto 179,51.18,54.22,0
    .goto 179,48.60,54.28,15,0
    .goto 179,48.08,54.11,15,0
    .goto 179,47.59,53.54,15,0
    .goto 179,46.85,54.23,15,0
    .goto 179,48.04,56.35,15,0
    .goto 179,46.71,56.03,15,0
    .goto 179,45.76,54.87,15,0
    .goto 179,45.80,53.49,15,0
    .goto 179,46.79,53.32,15,0
    .goto 179,48.82,50.70,15,0
    .goto 179,49.33,49.77,15,0
    .goto 179,51.01,53.23,15,0
    .goto 179,51.18,54.22,15,0
    >>Öffnet |cRXP_PICK_Gestörte Erde|r auf dem Boden. Plündert es für |cRXP_LOOT_Ausgegrabenes Andenken|r
    .complete 24602,1 --Unearthed Memento (5)
step
    .goto 179,49.84,56.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krennan Aranas|r
    .turnin 24602 >>Gebt die Quest Zur Ruhe gebettet ab
    .accept 24679 >>Akzeptiert die Quest Der Segen des Patriarchen
    .target Krennan Aranas
step
    .goto 179,48.89,53.14
    >>Platziert |T134344:0|t[Gesegnete Gaben] am Schrein
	>>|cRXP_WARN_Drückt "Flucht" auf der Tastatur von Euch, um die Zwischensequenz zu überspringen|r
    .complete 24679,1 --Offering placed (1)
    .use 51956
step
    .goto 179,49.84,56.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krennan Aranas|r
    .turnin 24679 >>Gebt die Quest Der Segen des Patriarchen ab
    .accept 24680 >>Akzeptiert die Quest Kielwasser
	.target Krennan Aranas
step
    .goto 179,41.93,37.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Darius Crowley|r
    .turnin 24680 >>Gebt die Quest Kielwasser ab
    .accept 24681 >>Akzeptiert die Quest Sie haben Verbündete, aber wir auch
	.target Lord Darius Crowley
step
    #optional
    #label Glaive
	#completewith Allies
    .goto 179,42.47,37.84
    .vehicle >>Betretet die |cRXP_FRIENDLY_Glevenschleuder|r
    .target Glaive Thrower
step
    #optional
    #requires Glaive
    #completewith Allies
    .goto 179,40.32,38.58,20,0
    .goto 179,35.59,35.80
    >>Während ihr in der |cRXP_FRIENDLY_Glevenschleuder|r seid:
    .subzone 4725 >>Reisen toward Die Mark
step
    #label Allies
    #loop
    .goto 179,35.03,36.16,0
    .goto 179,31.05,20.09,0
    .goto 179,28.07,23.84,0
    .goto 179,26.35,29.74,0
    .goto 179,30.78,38.88,0
    .goto 179,35.03,36.16,60,0
    .goto 179,31.05,20.09,60,0
    .goto 179,29.52,21.20,60,0
    .goto 179,28.07,23.84,60,0
    .goto 179,27.64,25.32,60,0
    .goto 179,26.83,26.13,60,0
    .goto 179,27.64,27.00,60,0
    .goto 179,26.35,29.74,60,0
    .goto 179,26.56,31.40,60,0
    .goto 179,30.78,38.88,60,0
    >>Während ihr in der |cRXP_FRIENDLY_Glevenschleuder|r seid:
    >>Tötet |cRXP_ENEMY_Orc Raiders|r, |cRXP_ENEMY_Wolfmaw Outriders|r, und |cRXP_ENEMY_Orcish Kriegsmaschinen|r
    >>Cast |T132330:0|t[Gleve schleudern] (1) (Distanzkampf Sofort: Deals damage und knocks back)
    >>|T236303:0|t[Glevensperrfeuer] (2) (Distanzkampf Sofort: Verursacht SEHR VIEL Schaden und stoßt zurück)
    >>|T136106:0|t[Doppelte Geschwindigkeit] (3) (Selbst Sofort: Erhöht die Bewegungsgeschwindigkeit um 100% für 10 Sek.)
    >>|cRXP_WARN_Lasst die |cRXP_FRIENDLY_Glevenschleuder|r nicht sterben|r
    .complete 24681,1 --Orc Raider slain (40)
    .complete 24681,2 --Wolfmaw Outrider slain (8)
    .complete 24681,3 --Orcish War Machine slain (4)
step
    #optional
    #completewith next
    .goto 179,41.93,37.60
    >>Während ihr in der |cRXP_FRIENDLY_Glevenschleuder|r seid:
    >>Wirkt |T136106:0|t[Doppelte Geschwindigkeit] (3) (Selbst Sofort: Erhöht die Bewegungsgeschwindigkeit um 100% für 10 Sek.)
    .subzone 4726 >>Kehrt nach Kielwasser zurück
step
    .goto 179,41.93,37.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Darius Crowley|r
    .turnin 24681 >>Gebt die Quest Sie haben Verbündete, aber wir auch ab
	.target Lord Darius Crowley
step
    .goto 179,41.65,36.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lorna Crowley|r
    .accept 26706 >>Akzeptiert die Quest Endspiel
	.target Lorna Crowley
step
	#completewith next
    .goto 179,41.65,36.14
    >>|cRXP_WARN_HINWEIS: Diese Quest ist an einen unabhängigen Timer gebunden, was bedeutet, dass ihr bis zu 5 Minuten warten müsst, um die|r |cRXP_FRIENDLY_Hippogryph|r zu betreten
    .vehicle >>Betretet |cRXP_FRIENDLY_Hippogryph|r
	.timer 58,Endspiel RP
step
    >>Tötet |cRXP_ENEMY_Gunship Grunts|r auf dem oberen Deck
    >>Nach dem Räumen des oberen Decks klickt |cRXP_PICK_Seil|r in der Mitte des Bootes, um |cRXP_FRIENDLY_Lorna Crowley|r zu folgen
    >>Tötet |cRXP_ENEMY_Gunship Grunts|r whilst following |cRXP_FRIENDLY_Lorna Crowley|r
    >>|cRXP_WARN_Nachdem |cRXP_FRIENDLY_Lorna Crowley|r die Sprengmittel auslöst, wartet auf das Ende des Rollenspiels|r
    .complete 26706,1 --Gunship destroyed (1)
	.timer 43,Endspiel RP
    .mob Gunship Grunt
    .target Lorna Crowley
--XX Gunship moves, can't use waypoints and timer may be off
step
    .goto 179,41.65,36.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lorna Crowley|r
    .turnin 26706 >>Gebt die Quest Endspiel ab
	.target Lorna Crowley
step
    .goto 179,42.59,35.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Admiral Nightwind|r
    .accept 14434 >>Akzeptiert die Quest Rut'theran
    .turnin 14434 >>Gebt die Quest Rut'theran ab
	.target Admiral Nightwind
step
    .goto 57,55.229,89.176
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krennan Aranas|r
    .accept 28517 >>Akzeptiert die Quest Die Heulende Eiche
    .target Krennan Aranas
step
    #optional
    #label Darnassus
    #completewith Oak
    .goto 57,55.045,88.301
    .zone 89 >>Geht durch das Portal nach Darnassus
--XX Training around here
step
    #optional
    #requires Darnassus
    #completewith Oak
    .goto 89,48.960,19.200,20,0
    .goto 89,48.126,14.432,60 >> Betretet Die Heulende Eiche
step
    #label Oak
    .goto 89,48.126,14.432
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Genn Greymane|r
    .turnin 28517 >>Gebt die Quest Die Heulende Eiche ab
    .accept 26385 >>Akzeptiert die Quest Unaufhaltsame Veränderungen
    .target Genn Greymane
--XX no longer "King"
--XX No need to set hs as it adjusts automatically
--XX Accepting Breaking Waves closes Hero's Call Darkshore (supposedly)
step
    #optional
    #label DarkshoreTravel
    #completewith Darkshore
    .goto 89,48.960,19.200,20 >> Verlassen Die Heulende Eiche
step
    #optional
    #requires DarkshoreTravel
    #completewith Darkshore
    .goto 89,36.547,50.413
    .zone 57 >>Geht zurück durch das Portal zu Rut'Theran Village
step
    #label Darkshore
    .goto 57,55.415,88.398
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vesprystus|r
    .fly Lor'Danel >> Fliegt nach Lor'danel
    .target Vesprystus
    .zoneskip 62
]])
