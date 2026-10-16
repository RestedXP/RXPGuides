if GetLocale() ~= "deDE" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Alliance' then return end

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 1-6 Kezan
#next 6-11 Die Verlorenen Inseln
#version 1
--#group RXP Cataclysm (H) << cata

#defaultfor Goblin
#group RXP Kataklysmus 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000


step
    .goto 194,56.44,76.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Sassy|r
    .accept 14138 >>Akzeptiert die Quest Dienst ist Dienst und Cola ist Cola
    .target Sassy Hardwrench
step
    .goto 194,60.21,74.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Dampwick|r
    .turnin 14138 >>Gebt die Quest Dienst ist Dienst und Cola ist Cola ab
    .accept 14069 >>Akzeptiert die Quest Gutes Personal ist schwer zu finden
    .accept 14075 >>Akzeptiert die Quest Ärger in den Minen
    .target Foreman Dampwick
step
    #completewith next
    .goto 194,65.52,87.82,10 >>Betretet die Minen
step
    #completewith KezanTroubleintheMines
    >>Klickt auf die |cRXP_FRIENDLY_Unbeugsame Trolle|r. Diese können auch außerhalb der Minen gefunden werden.
    .goto 194,66.02,82.39,0,0
    .complete 14069,1 --8/8 Attitudes Adjusted
    .target Defiant Troll
step
    #label KezanTroubleintheMines
    >>Tötet |cRXP_ENEMY_Tunneling Worms|r
    .goto 197,50.73,59.55
    .complete 14075,1 --6/6 Tunneling Worm slain
    .mob Tunneling Worm
step
    #completewith next
    .goto 194,65.52,87.82,8 >>Verlasst die Minen
step
    >>Klickt auf die |cRXP_FRIENDLY_Unbeugsame Trolle|r
    .goto 194,72.45,83.45,50,0
    .goto 194,70.39,77.73,30,0
    .goto 194,68.74,82.87
    .complete 14069,1 --8/8 Attitudes Adjusted
    .target Defiant Troll
step
    .goto 194,60.21,74.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Dampwick|r
    .turnin 14075 >>Gebt die Quest Ärger in den Minen ab
    .turnin 14069 >>Gebt die Quest Gutes Personal ist schwer zu finden ab
    .accept 25473 >>Akzeptiert die Quest Kaja'Cola
    .target Foreman Dampwick
step
    .goto 194,56.4,76.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Sassy Hartzang|r
    .turnin 25473 >>Gebt die Quest Kaja'Cola ab
    .accept 28349 >>Akzeptiert die Quest Megs vom Marketing
    .target Sassy Hardwrench
step
    .goto 194,58.3,76.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Megs Dreadshredder|r
    .turnin 28349 >>Gebt die Quest Megs vom Marketing ab
    .accept 14071 >>Akzeptiert die Quest Cruisen
    .target Megs Dreadshredder
step
    .goto 194,58.9,76.3
    >>Benutzt den |T134246:0|t[Schlüssel für den Heiß Rod]
    >>|cRXP_WARN_Ihr könnt das Fenster "Aktive Gegenstände" in RestedXP mit einer Taste belegen, indem ihr Escape drückt und dann unter Optionen->Tastenbelegung->Guides geht.|r
    .use 46856
    .complete 14071,1 --1/1 Keys to the Hot Rod used
step
    .goto 194,59.93,85.52,15,0
    .goto 194,58.9,85.5
    >>Reisen toward |cRXP_FRIENDLY_Izzy|r
    >>|cRXP_WARN_Benutzt|r |T135788:0|t[Zuschlagen] |cRXP_WARN_um eure Geschwindigkeit zu erhöhen|r
    .complete 14071,2 --1/1 Izzy picked up
    .target Izzy
step
    .goto 194,59.93,85.52,15,0
    .goto 194,57.95,70.46,20,0
    .goto 194,60.6,49.9
    >>Reisen toward |cRXP_FRIENDLY_Gobber|r
    >>|cRXP_WARN_Benutzt|r |T135788:0|t[Zuschlagen] |cRXP_WARN_um eure Geschwindigkeit zu erhöhen|r
    .complete 14071,4 --1/1 Gobber picked up
    .target Gobber
step
    .goto 194,48.5,38.3
    >>Reisen toward |cRXP_FRIENDLY_Ace|r
    >>|cRXP_WARN_Benutzt|r |T135788:0|t[Zuschlagen] |cRXP_WARN_um eure Geschwindigkeit zu erhöhen|r
    .complete 14071,3 --1/1 Ace picked up
    .target Ace
step
    #completewith next
    .goto 194,61.98,54.83,30,0
    .goto 194,60.13,64.59,30,0
    .goto 194,57.90,71.12,20 >>Folgt der Straße wieder nach oben
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Megs|r, |cFF00FF25Sassy|r und |cFF00FF25Chip|r << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Megs|r, |cFF00FF25Sassy|r und |cFF00FF25Candy|r << Male
    .turnin 14071 >>Gebt die Quest Cruisen ab
    .accept 24567 >>Akzeptiert die Quest Meldet Euch für ein Testspiel
    .goto 194,58.28,76.57
    .accept 14070 >>Akzeptiert die Quest Selbst ist der Goblin
    .goto 194,56.43,76.95
    .accept 26711 >>Akzeptiert die Quest Ab zur Bank << Female
    .goto 194,56.32,76.77 << Female
    .accept 26712 >>Akzeptiert die Quest Ab zur Bank << Male
    .goto 194,56.30,77.12 << Male
    .target Megs Dreadshredder
    .target Sassy Handwrench
    .target Chip Endale << Female
    .target Candy Cane << Male
step
    #completewith next
    .vehicle 34840 >>Stellt sicher, dass ihr euren |T134246:0|t[Schlüssel für den Heiß Rod] |cFFFCDC00benutzt|r
    .use 46856
step
    #completewith next
    .goto 194,57.10,78.44,10,0
    .goto 194,53.39,75.13,20,0
    .goto 194,47.36,78.46,30 >> Folgt dem Pfeil um das Haus herum
step
    .goto 194,45.19,74.76
    >>Angreifen |cFFFF5722Bruno|r
    .complete 14070,1 --1/1 Bruno Flameretardant beaten down
    .mob Bruno Flameretardant
step
    .goto 194,41.6,81.9
    >>Angreifen |cFFFF5722Sudsy|r
    .complete 14070,4 --1/1 Sudsy Magee beaten down
    .mob Sudsy Magee
step
    .goto 194,37.47,75.97,15,0
    .goto 194,35.0,77.8
    >>Angreifen |cFFFF5722Jack|r
    .complete 14070,3 --1/1 Jack the Hammer beaten down
    .mob Jack the Hammer
step
    .goto 194,36.84,69.95
    >>Angreifen |cFFFF5722Frankei|r
    .complete 14070,2 --1/1 Frankie Gearslipper beaten down
    .mob Frankie Gearslipper
step
    #completewith next
    .vehicle 34840 >>Stellt sicher, dass ihr euren |T134246:0|t[Schlüssel für den Heiß Rod] |cFFFCDC00benutzt|r
    .use 46856
step
    .goto 194,34.16,69.32,10,0
    .goto 194,32.27,63.79,12,0
    .goto 194,29.72,64.52,16,0
    .goto 194,30.11,71.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBetretet die Bank und sprecht mit |cFF00FF25Kassierer der EBvK|r
    .turnin 26711 >>Gebt die Quest Ab zur Bank ab <<Female
    .accept 14110 >>Akzeptiert die Quest Ein ganz neues Ihr <<Female
    .turnin 26712 >>Gebt die Quest Ab zur Bank ab <<Male
    .accept 14109 >>Akzeptiert die Quest The Neu Ihr <<Male
    .target FBok Bank Teller
step
    #completewith TheNewYou
    .vehicle 34840 >>|cFFFCDC00Stellt sicher zu benutzen|r |T134246:0|t[Schlüssel für den Heiß Rod]
    .use 46856
step
    .goto 194,29.80,63.62,16,0
    .goto 194,34.66,54.73,10,0
    .goto 194,37.63,55.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Szabo|r
    >>Erhaltet |cRXP_LOOT_schicke neue Kleidung|r von ihm
    .complete 14110,2 << Female --1/1 Hip New Outfit
    .complete 14109,2 << Male --1/1 Hip New Outfit
    .use 46856
    .skipgossip
    .target Szabo
step
    .goto 194,34.87,45.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Gappy|r
    >>Erhaltet |cRXP_LOOT_Funkelndes Glitzer|r von ihm
    .complete 14110,1 << Female --1/1 Shiny Bling
    .complete 14109,1 << Male --1/1 Shiny Bling
    .skipgossip
    .target Gappy Silvertooth
step
    #label TheNewYou
    .goto 194,40.43,45.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Missa|r
    >>Erhaltet |cRXP_LOOT_Abklingender Schatten|r von ihr
    .complete 14110,3 << Female --1/1 Cool Shades
    .complete 14109,3 << Male --1/1 Cool Shades
    .skipgossip
    .target Missa Spekkies
step
    .goto 194,42.57,55.34,20,0
    .goto 194,48.79,57.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Crosscheck|r
    .turnin 24567 >>Gebt die Quest Meldet Euch für ein Testspiel ab
    .accept 24488 >>Akzeptiert die Quest Der Ersatz
    .target Coach Crosscheck
step
    #loop
    .goto 194,51.883,60.156,0
    .goto 194,46.133,63.902,0
    .waypoint 194,51.883,60.156,25,0
    .waypoint 194,49.085,69.812,25,0
    .waypoint 194,46.133,63.902,25,0
    .waypoint 194,43.062,62.732,25,0
    .waypoint 194,44.868,54.606,25,0
    >>Sammelt die |cFFDB2EEFErsatzteile|r vom Boden auf, während ihr auf dem |cFFFCDC00Hot Rod|r fahrt
    .complete 24488,1 --6/6 Replacement Parts
step
    .goto 194,48.79,57.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Crosscheck|r
    .turnin 24488 >>Gebt die Quest Der Ersatz ab
    .accept 24502 >>Akzeptiert die Quest Notwendige Gewaltanwendung
    .target Coach Crosscheck
step
    #completewith next
    .goto 194,47.71,57.76
    >>Besteigt den |cRXP_FRIENDLY_Bilgewater Bukanier|r
    .complete 24502,1 --1/1 Bilgewater Buccaneer
    .target Bilgewater Buccaneer
step
    >>Benutzt |T134480:0|t[Fußbombe werfen] (1), um die |cRXP_ENEMY_Steamwheedle-Haie|r vor euch zu töten
    .goto 194,47.7,57.7
    .complete 24502,2 --8/8 Steamwheedle Shark Footbombed
step
    >>Klickt auf die Quest in eurem Questtagebuch. Ihr müsst möglicherweise absteigen, um die nächste Quest von |cFF00FF25Crosscheck|r anzunehmen.
    .goto 194,48.79,57.79
    .turnin 24502 >>Gebt die Quest Notwendige Gewaltanwendung ab, indem ihr auf die Quest unter eurer Minikarte klickt.
    --.accept 24503 >>Accept Fourth and Goal << Male
    .accept 28414 >>Akzeptiert die Quest Drölfmeterschießen
    .target Coach Crosscheck
step
    #completewith next
    .goto 194,47.71,57.76
    .vehicle >> Besteigt den |cRXP_FRIENDLY_Bilgewater Bukanier|r
    .target Bilgewater Buccaneer
step
    >>Benutzt |T134480:0|tFußbombe treten (1)
    --.complete 24503,1 << Male --1/1 Footbomb Kicked Through Smokestacks
    .complete 28414,1 --1/1 Footbomb Kicked Through Smokestacks
step
    #completewith next
    +|cFFFCDC00Verlasst das Fahrzeug|r
step
    .goto 194,48.79,57.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Crosscheck|r
    .turnin 24503 >>Gebt die Quest Drölfmeterschießen ab
    --.turnin 28414 >>Turn in Fourth and Goal << Male
    .accept 24520 >>Akzeptiert die Quest Neuigkeiten für Sassy
    .target Coach Crosscheck
step
    #completewith next
    .hs >>Benutzt euren Ruhestein zum Hauptgeschäftssitz der HGK
    .use 6948
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Sassy|r und |cFF00FF25Chip|r << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Sassy|r und |cFF00FF25Candy|r << Male
    .turnin 24520 >>Gebt die Quest Neuigkeiten für Sassy ab
    .turnin 14070 >>Gebt die Quest Selbst ist der Goblin ab
    .goto 194,56.42,76.94
    .turnin 14110 >>Gebt die Quest Ein ganz neues Ihr ab << Female
    .goto 194,56.32,76.77 << Female
    .turnin 14109 >>Gebt die Quest Ein ganz neues Ihr ab << Male
    .goto 194,56.30,77.12 << Male
    .target Sassy Handwrench
    .target Chip Endale << Female
    .target Candy Cane << Male
step << Rogue
    .goto 194,59.47,77.73,-1
    .goto 194,58.27,73.10,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Slinky|r
    .accept 14010 >>Akzeptiert die Quest Ausweiden
    .train 2098 >> Erlernen |T132292:0|t[Ausweiden] << Cata
    .target Slinky Sharpshiv
step << Warrior
    .goto 194,60.27,77.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Kriegomatic NX-01|r
    .accept 14013 >>Akzeptiert die Quest Ansturm
    .train 100 >> |T132337:0|t[Ansturm] << Cata
    .target Warrior-Matic NX-01
step << Hunter
    .goto 194,60.42,77.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Bamm|r
    .accept 14007 >>Akzeptiert die Quest Zielschuss
    .train 56641 >>Erlernen |T132213:0|t[Zuverlässiger Schuss] << Cata
    .target Bamm Megabomb
step << Shaman
    .goto 194,59.68,75.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Maxx|r
    .accept 14011 >>Akzeptiert die Quest Urtümlicher Schlag
    .train 73899 >>Erlernen |T460956:0|t[Urtümlicher Schlag] << Cata
    .target Maxx Avalanche
step << Mage cata
    .goto 194,59.37,73.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Fizz|r
    .accept 14008 >>Akzeptiert die Quest Arkane Geschosse
    .train 5143 >>Erlernen |T136096:0|t[Arkane Geschosse] << Cata
    .target Fizz Lighter
step << Mage !cata
    .goto 194,59.37,73.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Fizz|r
    .accept 14008 >>Akzeptiert die Quest Frostnova
    .target Fizz Lighter
step << Warlock cata
    .goto 194,57.96,74.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Evol|r
    .accept 14012 >>Akzeptiert die Quest Feuerbrand
    .train 348 >>Erlernt |T135817:0|t[Feuerbrand] << Cata
    .target Evol Fingers
step << Warlock !cata
    .goto 194,57.96,74.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Evol|r
    .accept 14012 >>Akzeptiert die Quest Verderbnis
    .target Evol Fingers
step << Priest cata
    .goto 194,57.87,77.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Goldskimmer|r
    .accept 14009 >>Akzeptiert die Quest Blitzheilung
    .train 2061 >>Erlernen |T135907:0|t[Blitzheilung] << Cata
    .target Sister Goldskimmer
step << Priest !cata
    .goto 194,57.87,77.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Goldskimmer|r
    .accept 14009 >>Akzeptiert die Quest Das Wort lernen
    .target Sister Goldskimmer
step << Rogue
    .goto 194,60.91,77.39
	>>Cast |T132292:0|t[Ausweiden] on a |cFFFF5722Training Attrappe|r
	.complete 14010,2 << !Cata --Cast Eviscerate (x3)
	.complete 14010,1 << Cata --Cast Eviscerate (x3)
	.mob Training Dummy
step << Warrior
    .goto 194,60.91,77.39
	>>Cast |T132337:0|t[Ansturm] on a |cFFFF5722Training Attrappe|r
	.complete 14013,2 << !Cata --Cast Charge (x3)
	.complete 14013,1 << Cata --Cast Charge (x3)
	.mob Training Dummy
step << Hunter
    .goto 194,60.91,77.39
	>>Cast |T132213:0|t[Zuverlässiger Schuss] on a |cFFFF5722Training Attrappe|r
	.complete 14007,2 << !Cata --Steady Shot (x3)
	.complete 14007,1 << Cata --Steady Shot (x3)
	.mob Training Dummy
step << Shaman
    .goto 194,60.91,77.39
	>>Cast |T460956:0|t[Urtümlicher Schlag] on a |cFFFF5722Training Attrappe|r
	.complete 14011,2 << !Cata --Cast Primal Strike (x3)
	.complete 14011,1 << Cata --Cast Primal Strike (x3)
	.mob Training Dummy
step << Mage cata
    .goto 194,60.91,77.39
	>>Cast |T136096:0|t[Arkane Geschosse] on a |cFFFF5722Training Attrappe|r
	.complete 14008,2 << !Cata --Cast Arcane Missiles (x3)
	.complete 14008,1 << Cata --Cast Arcane Missiles (x3)
	.mob Training Dummy
step << Mage !cata
    .goto 194,60.91,77.39
	>>Cast |T135848:0|t[Frostschadennova] on a |cFFFF5722Training Attrappe|r
	.complete 14008,2 << !Cata --Cast Arcane Missiles (x3)
	.complete 14008,1 << Cata --Cast Arcane Missiles (x3)
	.mob Training Dummy
step << Warlock cata
    .goto 194,60.91,77.39
	>>Cast |T135817:0|t[Feuerbrand] on a |cFFFF5722Training Attrappe|r
	.complete 14012,1 --Cast Immolate (x3)
	.mob Training Dummy
step << Warlock !cata
    .goto 194,60.91,77.39
	>>Cast |T136118:0|t[Verderbnis] on a |cFFFF5722Training Attrappe|r
	.complete 14012,2 << !Cata --Cast Corruption (x3)
	.mob Training Dummy
step << Priest cata
    .goto 194,58.24,77.40
	>>Cast |T135907:0|t[Blitzheilung] on a |cFF00FF25Verletzter Angestellter|r
	.complete 14009,1 --Cast Flash Heal (x5)
	.target Injured Employee
step << Priest !cata
    .goto 194,60.91,77.39
	>>Cast |T136207:0|t[Schattenwort: Schmerz] on a |cFFFF5722Training Attrappe|r
	.complete 14009,2 --Cast Shadow Word: Pain
	.mob Training Dummy
step << Rogue
    .goto 194,59.47,77.73,-1
    .goto 194,58.27,73.10,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Slinky|r
    .turnin 14010 >>Gebt die Quest Ausweiden ab
    .target Slinky Sharpshiv
step << Warrior
    .goto 194,60.27,77.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Kriegomatic NX-01|r
    .turnin 14013 >>Gebt die Quest Ansturm ab
    .target Warrior-Matic NX-01
step << Hunter
    .goto 194,60.42,77.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Bamm|r
    .turnin 14007 >>Gebt die Quest Zielschuss ab
    .target Bamm Megabomb
step << Shaman
    .goto 194,59.68,75.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Maxx|r
    .turnin 14011 >>Gebt die Quest Urtümlicher Schlag ab
    .target Maxx Avalanche
step << Mage cata
    .goto 194,59.37,73.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Fizz|r
    .turnin 14008 >>Gebt die Quest Arkane Geschosse ab
    .target Fizz Lighter
step << Mage !cata
    .goto 194,59.37,73.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Fizz|r
    .turnin 14008 >>Gebt die Quest Frostnova ab
    .target Fizz Lighter
step << Warlock cata
    .goto 194,57.96,74.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Evol|r
    .turnin 14012 >>Gebt die Quest Feuerbrand ab
    .target Evol Fingers
step << Warlock !cata
    .goto 194,57.96,74.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Evol|r
    .turnin 14012 >>Gebt die Quest Feuerbrand ab
    .target Evol Fingers
step << Priest cata
    .goto 194,57.87,77.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Goldskimmer|r
    .turnin 14009 >>Gebt die Quest Blitzheilung ab
    .target Sister Goldskimmer
step << Priest !cata
    .goto 194,57.87,77.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Goldskimmer|r
    .turnin 14009 >>Gebt die Quest Das Wort lernen ab
    .target Sister Goldskimmer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Chip|r << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Candy|r << Male
    .accept 14153 >>Akzeptiert die Quest Mittelpunkt der Gruppe << Female
    .goto 194,56.32,76.77 << Female
    .accept 14113 >>Akzeptiert die Quest Mittelpunkt der Gruppe << Male
    .goto 194,56.30,77.12 << Male
    .target Chip Endale << Female
    .target Candy Cane << Male
step
    >>Benutzt |T132809:0|t[Sprudel] (1) on |cRXP_FRIENDLY_Goblins|r who drink
    >>Benutzt |T132806:0|t[Eimer] (2) auf betrunkenen oder verwirrten |cRXP_FRIENDLY_Goblins|r
    >>|T133836:0|t[Tanzen] (3) mit |cRXP_FRIENDLY_Goblins|r, die tanzen
    >>Benutzt |T134285:0|t[Feuerwerk] (4) auf |cRXP_FRIENDLY_Goblins|r mit Funken
    >>Benutzt |T237329:0|t[Hors d'oeuvres] (5) on |cRXP_FRIENDLY_Goblins|r who eat
    .goto 194,59.56,78.75,15,0
    .goto 194,59.09,80.31,10,0
    .goto 194,60.59,82.98,15,0
    .goto 194,60.82,86.33,15,0
    .goto 194,60.6,83.4
    .complete 14153,1 << Female --10/10 Partygoer entertained
	.complete 14113,1 << Male --10/10 Partygoer entertained
    .target Kezan Partygoer
step
    .goto 194,56.42,76.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Sassy|r
    .turnin 14153 >>Gebt die Quest Mittelpunkt der Gruppe ab << Female
	.turnin 14113 >>Gebt die Quest Mittelpunkt der Gruppe ab << Male
    .accept 14115 >>Akzeptiert die Quest Ungeladene Piraten
    .target Sassy Hardwrench
step
    #loop
    .goto 194/648,1329.20007,-8457.50000,0
    .waypoint 194/648,1329.20007,-8457.50000,20,0
    .waypoint 194/648,1354.90002,-8454.50000,20,0
    .waypoint 194/648,1382.70007,-8468.70020,20,0
    .waypoint 194/648,1377.70007,-8508.90039,20,0
    .waypoint 194/648,1340.09998,-8512.29980,20,0
    .waypoint 194/648,1302.09998,-8503.70020,20,0
    .waypoint 194/648,1304.90002,-8457.29980,20,0
    >>Tötet |cRXP_ENEMY_Pirate Gruppe Crashers|
    .complete 14115,1 --12/12 Pirate Party Crasher slain
    .target Pirate Party Crasher
step
    .goto 194,56.42,76.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Sassy|r
    .turnin 14115 >>Gebt die Quest Ungeladene Piraten ab
    .accept 14116 >>Akzeptiert die Quest Der ungeladene Gast
    .target Sassy Hardwrench
step
    #completewith next
    .goto 194,56.41,75.33,5,0
    .goto 194,55.99,75.65,4,0
    .goto 194,55.96,77.07,5 >>Lauft die Treppe hinauf
step
    .goto 194,56.77,76.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Gallywix|r
    .turnin 14116 >>Gebt die Quest Der ungeladene Gast ab
    .accept 14120 >>Akzeptiert die Quest Eine Bazillion Moneten?!
    .target Trade Prince Gallywix
step
    .goto 194,59.67,77.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSpringt aus dem Fenster und sprecht mit |cFF00FF25Sassy|r
    .turnin 14120 >>Gebt die Quest Eine Bazillion Moneten?! ab
    .accept 14122 >>Akzeptiert die Quest Der große Banküberfall
    .target Sassy Hardwrench
step
    .goto 194,60.054,78.092
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Megs Dreadshredder|r
    .accept 14121 >>Akzeptiert die Quest Plündert die Plünderer
    .target Megs Dreadshredder
step
    .goto 194,62.965,77.824
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Foreman Dampwick|r
    .accept 14124 >>Akzeptiert die Quest Schnappt Euch das Kaja'mit
    .target Foreman Dampwick
step
    #completewith next
    .use 46856
    .vehicle 34840 >>|cRXP_WARN_Stellt sicher, dass ihr den |T134246:0|t[Schlüssel für den Heiß Rod]|r von Euch nutzt. Während ihr im Fahrzeug seid, seid ihr immun gegen Fallschaden|r
step
    .goto 194,67.27,77.69,10,0
    .goto 194,69.59,79.35,10,0
    .goto 194,69.03,83.16,10,0
    .goto 194,66.64,84.03,10,0
    .goto 194,66.09,87.34,10,0
    .goto 194,64.34,83.48,10,0
    .goto 194,64.44,83.52
    >>Zielt mit |T133712:0|t[Kabummbomben] auf |cRXP_PICK_Kaja'mite Deposits|r und plündert |cFF00BCD4Kaja'mite Chunks|r auf dem Boden in der Nähe der Minen
    .use 48768
    .complete 14124,1 --12/12 Kaja'mite Chunk
step
    .goto 194,59.47,77.73,-1
    .goto 194,58.27,73.10,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Slinky|r. She moves around
    .accept 14123 >>Akzeptiert die Quest Einfach hereinspaziert
    .target Slinky Sharpshiv
step
    #completewith next
    .vehicle 34840 >>|cRXP_WARN_Stellt sicher, dass ihr den |T134246:0|t[Schlüssel für den Heiß Rod]|r von Euch nutzt. Während ihr im Fahrzeug seid, seid ihr immun gegen Fallschaden|r
step
    #completewith next
    .goto 194,57.94,69.61,15,0
    .goto 194,47.67,60.09,25,0
    .goto 194,38.63,78.42,25,0
    .goto 194,32.71,63.68,10,0
    .goto 194,29.79,63.75,10,0
    >>Schlagt |cFFFF5722Hired Looters|r, wenn ihr sie seht
    .complete 14121,1 --12/12 Stolen Loot
    .mob Hired Looter
step
    .goto 194,29.35,69.57
    >>Klickt auf den |cRXP_PICK_Erste Bank von Kezan Vault|r
    >>|cRXP_WARN_Folgt den Anweisungen in der Mitte eures Bildschirms|r
    .complete 14122,1 --1/1 First Bank of Kezan Vault
    .complete 14122,2 --1/1 Personal Riches
step
    .goto 194,35.91,53.68,20,0
    .goto 194,41.33,53.03,20,0
    .goto 194,41.16,42.01,20,0
    .goto 194,35.96,44.39
    >>Schlagt |cFFFF5722Hired Looters|r, wenn ihr sie seht
    .complete 14121,1 --12/12 Stolen Loot
    .mob Hired Looter
step
    #completewith next
    .vehicle 34840 >>|cFFFCDC00Stellt sicher, dass ihr den Schlüssel für den Heiß Rod nutzt|r.
step
    #completewith KezanWaltzRightIn
    +|cFFFCDC00Vermeidet die Patrollierenden|r |cFFFF5722Villa Mooks|r |cFFFCDC00und|r |cFFFF5722Keensnout Potbellies|r |cFFFCDC00da sie euch entdecken und töten können|r
    .mob Keensnout Potbelly
step
    .goto 194,24.20,40.67,30,0
    .goto 194,19.89,30.65
    >>Hebt |cFF00BCD4The Ultimate Bombe|r auf
    .complete 14123,3 --1/1 The Ultimate Bomb
step
    .goto 194,12.88,35.18
    >>Hebt |cFF00BCD4The Goblin Lisa|r auf
    .complete 14123,2 --1/1 The Goblin Lisa
step
    #completewith next
    .goto 194,17.66,44.49,10,0
    .goto 194,17.66,45.92,10,0
    .goto 194,16.79,46.89,8,0
    .goto 194,17.84,46.82,8,0
    .goto 194,17.34,45.91,8 >>Lauft die Treppe hinauf
step
    #label KezanWaltzRightIn
    .goto 194,16.72,46.26
    >>Hebt |cFF00BCD4Maldy's Falcon|r auf
    .complete 14123,1 --1/1 Maldy's Falcon
step
    #completewith next
    >>Springt aus dem Fenster und lauft in feindliche |cFFFF5722Villa Mooks|r oder |cFFFF5722Keensnout Potbellies|r
    .deathskip >>Sterbt und respawnt beim |cFF00FF25Geistheiler|r
    .goto 194,17.65,45.94,5,0
    .goto 194,17.00,33.96
    .mob Keensnout Potbelly
step
    #completewith next
    .goto 194,61.89,54.13,25,0
    .goto 194,57.90,71.17,15 >>Folgt dem Weg zum Hauptquartier
step
    .goto 194,59.47,77.73,-1
    .goto 194,58.27,73.10,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Slinky|r. She moves around
    .turnin 14123 >>Gebt die Quest Einfach hereinspaziert ab
    .target Slinky Sharpshiv
step
    .goto 194,62.965,77.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Foreman Dampwick|r
    .target Foreman Dampwick
    .turnin 14124 >>Gebt die Quest Schnappt Euch das Kaja'mit ab
step
    .goto 194,60.036,78.125
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Megs Dreadshredder|r
    .target Megs Dreadshredder
    .turnin 14121 >>Gebt die Quest Plündert die Plünderer ab
step
    .goto 194,59.607,77.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sassy Hardwrench|r
    .target Sassy Hardwrench
    .turnin 14122 >>Gebt die Quest Der große Banküberfall ab
    .accept 14125 >>Akzeptiert die Quest Versicherungsbetrug
step
    .goto 194/648,1371.00000,-8420.79980
    >>Geht ins Haus und klickt |cFF00BCD4Defekten Generator|r
    .complete 14125,1 --1/1 Overload the Defective Generator
step
    .goto 194,56.05,74.67
    >>Klickt |cFF00BCD4Undichter Ofen|r
    .complete 14125,2 --1/1 Activate the Leaky Stove
step
    .goto 194,55.98,77.11,5,0
    .goto 194,56.64,76.33,5,0
    .goto 194,56.61,74.85
    >>Geht die Treppen hoch und klickt |cFF00BCD4Brennbares Bett|r
    .complete 14125,3 --1/1 Drop a Cigar on the Flammable Bed
step
    .goto 194,56.60,76.93,8,0
    .goto 194,59.49,76.81
    >>Springt aus dem Fenster und klickt |cFF00BCD4Gasbot Bedienpult|r
    >>|cRXP_WARN_Wartet auf das kurze Rollenspiel|r
    .timer 17,Versicherungsbetrug RP
    .complete 14125,4 --1/1 KTC Headquarters Set Ablaze with Gasbot!
step
    .goto 194,59.521,76.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Claims Adjuster|r
    .target Claims Adjuster
    .turnin 14125 >>Gebt die Quest Versicherungsbetrug ab
step
    .goto 194,59.607,77.106
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sassy Hardwrench|r
    .target Sassy Hardwrench
    .accept 14126 >>Akzeptiert die Quest Lebensersparnisse
step
    #completewith next
    .vehicle 34840 >>Stellt sicher, dass ihr euren |T134246:0|t[Schlüssel für den Heiß Rod] |cFFFCDC00benutzt|r
step
    #completewith next
    .goto 194,23.18,39.30,15 >>Reist zur Gallywix' Villa
    .subzoneskip 4768
step
    #completewith next
    .goto 194,22.31,16.78
    .cast 92633 >> Klickt die Kanone
step
    .goto 194,20.76,13.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Gallywix|r
    .turnin 14126 >>Gebt die Quest Lebensersparnisse ab
    .target Trade Prince Gallywix
    ]])

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 6-11 Die Verlorenen Inseln
#next 10-22 Azshara
#version 1
--#group RXP Cataclysm (H) << cata

#defaultfor Goblin
#group RXP Kataklysmus 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000

step
    #completewith next
    >>Manchmal könnt ihr steckenbleiben und müsst euch neu anmelden oder /neuladen
    .timer 45 >> Geht nicht in die Licht-Rollenszene
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Zapnozzle|r und |cFF00FF25Gizmo|r
    .turnin 14239 >>Gebt die Quest Nicht ins Licht ab
    .goto 174,24.62,77.86
    .accept 14001 >>Akzeptiert die Quest Rettungskapseln der Goblins
    .goto 174,24.65,77.94
    .target Doc Zapnozzle
    .target Geargrinder Gizmo
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Doc Zapnozzle|r
    >>Manchmal könnt ihr steckenbleiben und müsst euch neu anmelden oder /neuladen
    .goto 174,24.6,77.9
    .turnin 14239 >>Gebt die Quest Nicht ins Licht ab
    .target Doc Zapnozzle
step
    .goto 174,24.65,77.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Geargrinder Dingsbums|r
    .accept 14001 >>Akzeptiert die Quest Rettungskapseln der Goblins
    .target Geargrinder Gizmo
step
    >>Klickt |cRXP_PICK_Goblin-Fluchtkapsel|r
    .goto 174,22.99,75.62,30,0
    .goto 174,25.50,77.65,30,0
    .goto 174,25.37,75.44
    .complete 14001,1 --6/6 Goblin Survivors Rescued
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sassy Hardwrench|r
    .goto 174,27.9,75.5
    .turnin 14001 >>Gebt die Quest Rettungskapseln der Goblins ab
    .accept 14014 >>Akzeptiert die Quest Holt unsere Sachen zurück!
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maxx Lawine|r
    .goto 174,27.85,74.29
    .accept 14473 >>Akzeptiert die Quest Jetzt ist es unser Problem
    .trainer >>Trainiere deine Klassenfähigkeiten << Shaman Cata
    .target Maxx Avalanche
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bamm Megabomb|r
    .goto 174,27.95,74.43
    .accept 14019 >>Akzeptiert die Quest Affentheater
    .trainer >>Trainiere deine Klassenfähigkeiten << Hunter Cata
    .target Bamm Megabomb
step << Priest Cata
    .goto 174,27.697,74.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sister Goldskimmer|r
    .trainer >>Trainiere deine Klassenfähigkeiten
    .target Sister Goldskimmer
step << Mage Cata
    .goto 174,27.715,74.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Fizz Lighter|r
    .trainer >>Trainiere deine Klassenfähigkeiten
    .target Fizz Lighter
step << Warlock Cata
    .goto 174,28.419,75.648
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Evol Fingers|r
    .trainer >>Trainiere deine Klassenfähigkeiten
    .target Evol Fingers
step << Warrior Cata
    .goto 174,28.656,76.161
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Warrior-Matic NX-01|r
    .trainer >>Trainiere deine Klassenfähigkeiten
    .target Warrior-Matic NX-01
step << Rogue Cata
    .goto 174,28.654,76.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Slinky Sharpshiv|r
    .trainer >>Trainiere deine Klassenfähigkeiten
    .target Slinky Sharpshiv
    --VV Add appropriate .train ID's
--step << Hunter
    --#completewith next
    --.cast 1515 >>Tame a |cRXP_ENEMY_Teraptor Hatchling|r
    --.mob Teraptor Hatchling
    --VV See if this is needed in Cataclysm
step
    #sticky
    #label TheLostIslesTeraMonkeys
    >>Benutzt |T133979:0|t[Nitrokaliumbananen] auf |cRXP_ENEMY_Bombenwerfer-Affen|r und tötet |cRXP_ENEMY_Teraptor-Junge|r
    .use 49028
    .goto 174,27.32,70.14,0,0
    .complete 14473,1 --6/6 Teraptor Hatchling slain
    .complete 14019,1 --10/10 Bomb-Throwing Monkeys Fed
    .mob Bomb Throwing Monkeys
    .mob Teraptor Hatchlings
step
    #loop
    .goto 174,29.73,75.42,15,0
    .goto 174,30.35,74.49,15,0
    .goto 174,30.10,72.55,20,0
    .goto 174,28.44,70.88,20,0
    .goto 174,27.32,70.14,20,0
    >>Sammelt ein |cRXP_LOOT_Kisten von Werkzeugen|r
    .complete 14014,1 --8/8 Crate of Tools
step
    #requires TheLostIslesTeraMonkeys
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maxx Lawine|r und |cRXP_FRIENDLY_Bamm Megabomb|r
    .turnin 14473 >>Gebt die Quest Jetzt ist es unser Problem ab
    .goto 174,27.85,74.29
    .turnin 14019 >>Gebt die Quest Affentheater ab
    .goto 174,27.95,74.43
    .target Maxx Avalanche
    .target Bamm Megabomb
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sassy Hardwrench|r
    .goto 174,27.9,75.5
    .turnin 14014 >>Gebt die Quest Holt unsere Sachen zurück ab
    .accept 14248 >>Akzeptiert die Quest Hilfe gesucht
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Foreman Dampwick|r
    .goto 174,31.27,79.26
    .turnin 14248 >>Gebt die Quest Hilfe gesucht ab
    .accept 14021 >>Akzeptiert die Quest Minenarbeiter in Not
    .accept 14031 >>Akzeptiert die Quest Erfasst das Unbekannte
    .target Foreman Dampwick
step
    #completewith DeadOrc
    >>Folgt und schützt den |cRXP_FRIENDLY_Verängstigter Minenarbeiter|r
    .complete 14021,1 --1/1 Kaja'mite Ore mining a success!
    .target Frightened Miner
step
    .goto 174/648,2946.00000,568.60004
    >>Benutzt den |T134442:0|t[HGK Schnappblitz], um ein Foto des Gemäldes an der Wand zu machen, das mit einer schwebenden Kamera markiert ist
    .use 49887
    .complete 14031,1 --1/1 Cave Painting 1 Captured
step
    .goto 174/648,2914.50000,573.20001
    >>Benutzt den |T134442:0|t[HGK Schnappblitz], um ein Foto des Gemäldes an der Decke zu machen, das mit einer schwebenden Kamera markiert ist
    .use 49887
    .complete 14031,2 --1/1 Cave Painting 2 Captured
step
    .goto 174/648,2857.00000,615.29999
    >>Benutzt den |T134442:0|t[HGK Schnappblitz], um ein Foto des Gemäldes an der Wand zu machen, das mit einer schwebenden Kamera markiert ist
    .goto 175,86.331,44.317
    .complete 14031,3 --1/1 Cave Painting 3 Captured
step
    .goto 174/648,2969.80005,654.90002
    >>Benutzt den |T134442:0|t[HGK Schnappblitz], um ein Foto des Gemäldes an der Wand zu machen, das mit einer schwebenden Kamera markiert ist
    .use 49887
    .complete 14031,4 --1/1 Pygmy Altar Captured
step
    #label DeadOrc
    .goto 174/648,2975.60010,651.10004
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tVersucht, mit dem |cRXP_FRIENDLY_Toten orcischen Späher|r zu sprechen
    .accept 14233 >>Akzeptiert die Quest Orcs können schreiben?
    .target Dead Orc Scout
step
    .goto 174/648,2969.80005,654.90002
    >>Folgt und schützt den |cRXP_FRIENDLY_Verängstigter Minenarbeiter|r
    .complete 14021,1 --1/1 Kaja'mite Ore mining a success!
    .target Frightened Miner
step
    .goto 174/648,2971.60010,495.10001
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tVerlasst die Höhle und sprecht mit |cRXP_FRIENDLY_Vorarbeiter Feuchtlunte|r
    .turnin 14021 >>Gebt die Quest Minenarbeiter in Not ab
    .target Foreman Dampwick
step
    .goto 174,27.88,75.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sassy Hardwrench|r
    .turnin 14031 >>Gebt die Quest Erfasst das Unbekannte ab
    .turnin 14233 >>Gebt die Quest Orcs können schreiben? ab
    .accept 14234 >>Akzeptiert die Quest Der Feind meines Feindes
    .target Sassy Hardwrench
step
    #completewith next
    .goto 174,32.73,80.53,30,0
    .goto 174,34.36,80.78,30,0
    .goto 174,36.96,77.02,20 >>Folgt dem Pfad den Berg hinauf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aggra|r
    .goto 174,37.63,78.02
    .turnin 14234 >>Gebt die Quest Der Feind meines Feindes ab
    .accept 14235 >>Akzeptiert Das bösartige Tal
    .target Aggra
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kilag Blutmaul|r
    .goto 174,35.43,75.71
    .turnin 14235 >>Gebt Das bösartige Tal ab
    .accept 14236 >>Akzeptiert die Quest Unkrautvernichter
    .target Kilag Gorefang
step
    #loop
    .goto 174/648,2813.30005,653.40002,0
    .waypoint 174/648,2813.30005,653.40002,40,0
    .waypoint 174/648,2846.10010,706.79999,40,0
    .waypoint 174/648,2884.69995,661.79999,40,0
    .waypoint 174/648,2922.40015,579.10004,40,0
    >>Benutzt |cRXP_FRIENDLY_Unkrautvernichter|r und lauft durch die |cRXP_ENEMY_Pflanzen|r um sie zu töten
    .use 49108
    .complete 14236,1 --100/100 Deadly Jungle Plants mowed down
    .mob Deadly Jungle Plant
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kilag Blutmaul|r
    .goto 174,35.43,75.71
    .turnin 14236 >>Gebt die Quest Unkrautvernichter ab
    .accept 14303 >>Akzeptiert die Quest Zurück zu Aggra
    .target Kilag Gorefang
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aggra|r
    .goto 174,37.63,78.02
    .turnin 14303 >>Gebt die Quest Zurück zu Aggra ab
    .accept 14237 >>Akzeptiert die Quest Vorrücken
    .target Aggra
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kilag Blutmaul|r
    .goto 174,34.62,66.85
    .turnin 14237 >>Gebt die Quest Vorrücken ab
    .accept 14238 >>Akzeptiert die Quest Infrarot = Infratot
    .target Kilag Gorefang
step
    #loop
    .goto 174,31.252,65.272,0
    .waypoint 174,32.264,67.282,50,0
    .waypoint 174,30.783,67.512,50,0
    .waypoint 174,31.252,65.272,50,0
    .waypoint 174,30.712,64.450,50,0
    .waypoint 174,29.589,62.824,50,0
    .waypoint 174,33.536,64.171,50,0
    >>Tötet |cRXP_ENEMY_SI:7 Assassins|r
    >>|cRXP_WARN_Benutzt von Euch|r |T133149:0|t[Infrarot-Hitzebrille] |cRXP_WARN_um sie zu sehen|r
    .use 49611
    .complete 14238,1 --10/10 SI:7 Assassin slain
    .mob SI:7 Assassin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kilag Blutmaul|r
    .goto 174,34.61,66.85
    .turnin 14238 >>Gebt die Quest Infrarot = Infratot ab
    .accept 14240 >>Akzeptiert die Quest Zu den Klippen
    .timer 52,Bastia reiten
    .target Kilag Gorefang
step
    #completewith next
    .goto 174,25.28,59.84,50 >>Wartet bis ihr |cRXP_FRIENDLY_Späher Brax|r erreicht
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Scout Brax|r
    .goto 174,25.28,59.84
    .turnin 14240 >>Gebt die Quest Zu den Klippen ab
    .accept 14241 >>Akzeptiert die Quest Auf zum Gyroschrauber!
    .target Scout Brax
step
    >>Tötet |cRXP_ENEMY_SI:7 Operatives|r und |cRXP_ENEMY_Gyrochopper Pilots|r. Plündert sie für |cRXP_LOOT_Gyrochoppa Keys|r
    .goto 174,23.23,67.50
    .complete 14241,1 --1/1 Gyrochoppa Keys
    .mob SI:7 Operative
    .mob Gyrochopper Pilot
step
    .goto 174,23.2,67.5
    >>Interagiert mit |cRXP_FRIENDLY_Gyroschrauber|r
    >>|cRXP_WARN_Ihr könnt ignorieren|r |cRXP_ENEMY_Gyroschrauber-Pilot|r
    .turnin 14241 >>Gebt die Quest Auf zum Gyroschrauber! ab
    .accept 14242 >>Akzeptiert die Quest Wertvolle Fracht
    .target Gyrochoppa
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tGeht hinab ins Schiff und sprecht mit |cRXP_FRIENDLY_Thrall|r
    .goto 174,11.8,62.7
    .complete 14242,1 --1/1 Precious Cargo located
    .target Thrall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .goto 174,11.8,62.8
    .turnin 14242 >>Gebt die Quest Wertvolle Fracht ab
    .accept 14326 >>Akzeptiert die Quest Aufs Oberdeck
    .target Thrall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tGeht hinaus und trefft |cRXP_FRIENDLY_Thrall|r auf dem Deck
    .goto 174,12.68,63.33,10,0
    .goto 174,12.4,63.1
    .turnin 14326 >>Gebt die Quest Aufs Oberdeck ab
    .accept 14243 >>Akzeptiert die Quest Die Rache des Kriegshäuptlings
    .target Thrall
step
    >>Benutzt |T237589:0|t[Blitzschlag] (1) um |cRXP_FRIENDLY_Allianz-Seemänner|r zu töten.
    >>|cRXP_WARN_Zielt auf die kleineren Boote|r
    .complete 14243,1 --50/50 Alliance Sailor slain
    .mob Alliance Sailor
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .goto 174,35.92,66.72
    .turnin 14243 >>Gebt die Quest Die Rache des Kriegshäuptlings ab
    .accept 14445 >>Akzeptiert die Quest Abschied auf Zeit
    .target Thrall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sassy Hardwrench|r
    .goto 174,36.02,67.53
    .turnin 14445 >>Gebt die Quest Abschied auf Zeit ab
    .accept 14244 >>Akzeptiert die Quest Auf, auf und davon!
    .target Sassy Hardwrench
step
    >>Klickt auf |cRXP_PICK_Rakete-Schleuder|r
    .goto 174,36.34,66.55
    .skipgossip
    .complete 14244,1 --1/1 Rocket Sling Trip Survived
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Foreman Dampwick|r
    .goto 174,44.54,64.36
    .turnin 14244 >>Gebt die Quest Auf, auf und davon! ab
    .accept 14245 >>Akzeptiert die Quest Die Stadt in der Kiste
    .target Foreman Dampwick
step
    >>Klickt auf |cRXP_PICK_Instastadt-Stößel|r
    .goto 174,45.40,65.36
    .complete 14245,1 --1/1 Town-In-A-Box Set Off!
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Foreman Dampwick|r
    .goto 174,45.36,64.74
    .turnin 14245 >>Gebt die Quest Die Stadt in der Kiste ab
    .accept 27139 >>Akzeptiert die Quest Hobart braucht Euch
    .target Foreman Dampwick
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hobart Grapplehammer|r
    .goto 174,45.34,65.22
    .turnin 27139 >>Gebt die Quest Hobart braucht Euch ab
    .accept 24671 >>Akzeptiert die Quest Glucken gucken
    .target Hobart Grapplehammer
step
    .goto 174,44.928,65.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grimy Greasefingers|r
    .home >>Setzt von Euch Ruhestein in Instastadt
    .target Grimy Greasefingers
    .isQuestAvailable 24925
step << Priest Cata
    .goto 174,45.586,65.375
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sister Goldskimmer|r
    .trainer >>Trainiere deine Klassenfähigkeiten
    .target Sister Goldskimmer
step << Hunter Cata
    .goto 174,45.246,64.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bamm Megabomb|r
    .trainer >>Trainiere deine Klassenfähigkeiten
    .target Bamm Megabomb
step << Mage Cata
    .goto 174,45.119,65.123
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Fizz Lighter|r
    .trainer >>Trainiere deine Klassenfähigkeiten
    .target Fizz Lighter
step << Warlock Cata
    .goto 174,45.492,65.593
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Evol Fingers|r
    .trainer >>Trainiere deine Klassenfähigkeiten
    .target Evol Fingers
step << Shaman Cata
    .goto 174,45.106,65.270
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maxx Lawine|r
    .trainer >>Trainiere deine Klassenfähigkeiten
    .target Maxx Avalanche
step << Warrior Cata
    .goto 174,28.656,76.161
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Warrior-Matic NX-01|r
    .trainer >>Trainiere deine Klassenfähigkeiten
    .target Warrior-Matic NX-01
step << Rogue Cata
    .goto 174,45.055,65.524
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Slinky Sharpshiv|r
    .trainer >>Trainiere deine Klassenfähigkeiten
    .target Slinky Sharpshiv
    --VV Add appropriate .train ID's
step
    #loop
    .goto 174,46.490,65.922,0
    .goto 174,44.482,64.109,0
    .waypoint 174,45.178,63.335,40,0
    .waypoint 174,45.938,61.535,40,0
    .waypoint 174,47.170,62.983,40,0
    .waypoint 174,46.490,65.922,40,0
    .waypoint 174,44.674,67.001,40,0
    .waypoint 174,44.482,64.109,40,0
    .use 52712 >>Benutzt von Euch |T134273:0|t[Ferngesteuertes Feuerwerk] um |cRXP_PICK_Wilde Glucker|r in der Stadt zu fangen
    .complete 24671,1 --10/10 Wild Cluckers captured
    .target Wild Clucker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hobart Grapplehammer|r und |cRXP_FRIENDLY_Bamm Megabomb|r
    .turnin 24671 >>Gebt die Quest Glucken gucken ab
    .goto 174,45.34,65.22
    .accept 24741 >>Akzeptiert die Quest Ein guter Tausch
    .goto 174,45.25,64.85
    .target Hobart Grapplehammer
    .target Bamm Megabomb
step
    #loop
    .goto 174,45.93,69.88,0
    .waypoint 174,49.64,63.45,20,0
    .waypoint 174,50.25,65.80,20,0
    .waypoint 174,50.64,68.35,20,0
    .waypoint 174,47.83,69.14,20,0
    .waypoint 174,45.93,69.88,20,0
    >>Benutzt |T236997:0|t[Wilde Cluster Eier] um ein Ei in eine Falle zu platzieren. Wartet dann bis ein |cRXP_ENEMY_Stacheliger Raubdino|r in die Falle tritt und plündert |cRXP_PICK_Stacheliges Raptoren-Ei|r
    .use 50232
    .complete 24741,1 --5/5 Spiny Raptor Egg
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bamm Megabomb|r und |cRXP_FRIENDLY_Hobart Grapplehammer|r
    .turnin 24741 >>Gebt die Quest Ein guter Tausch ab
    .goto 174,45.25,64.85
    .accept 24744 >>Akzeptiert die Quest Das größte Ei aller Zeiten
    .goto 174,45.34,65.21
    .target Bamm Megabomb
    .target Hobart Grapplehammer
step
    .goto 174,43.667,54.169
    >>Tötet die |cRXP_ENEMY_Mechachicken|r. Beute |cRXP_LOOT_The Biggest Ei Ever|r that drops auf dem Boden
    .complete 24744,1 --1/1 The Biggest Egg Ever
    .unitscan Mechachicken
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hobart Grapplehammer|r
    .goto 174,45.34,65.21
    .turnin 24744 >>Gebt die Quest Das größte Ei aller Zeiten ab
    .accept 24816 >>Akzeptiert die Quest Wer ist jetzt an der Spitze der Nahrungskette?
    .target Hobart Grapplehammer
step
    #loop
    .goto 174/648,2455.80005,861.90002,0
    .waypoint 174/648,2415.60010,795.60004,50,0
    .waypoint 174/648,2467.00000,730.10004,50,0
    .waypoint 174/648,2578.30005,794.20001,50,0
    .waypoint 174/648,2455.80005,861.90002,50,0
    >>Tötet |cRXP_ENEMY_Ravenous Lurkers|r. Plündert sie für |cRXP_LOOT_Shark Parts|r
    .complete 24816,1 --5/5 Shark Parts
    .mob Ravenous Lurker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Assistant Greely|r
    .goto 174,45.27,65.57
    .turnin 24816 >>Gebt die Quest Wer ist jetzt an der Spitze der Nahrungskette? ab
    .accept 24817 >>Akzeptiert die Quest Ein Goblin im Haipelz
    .target Assistant Greely
step
    >>Klickt |cRXP_PICK_Mechshark X-Dampf Steuerung|r
    .goto 174,43.68,65.50
    .complete 24817,1 --1/1 Use the Mechashark X-Steam Controller
step
    >>Benutzt |T132345:0|t[Verfluchter Laserstrahl] (1) und |T135821:0|t[Ei-senhartes Bombardement] (2), um |cRXP_ENEMY_Der Hammer|r zu töten
    >>|cRXP_WARN_Benutzt|r |T132996:0|t[Reparieren] |cRXP_WARN_um zu heilen, falls nötig|r
    .goto 174,41.7,66.7
    .complete 24817,2 --1/1 The Hammer slain
    .mob The Hammer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hobart Grapplehammer|r
    .goto 174,45.34,65.21
    .turnin 24817 >>Gebt die Quest Ein Goblin im Haipelz ab
    .accept 24856 >>Akzeptiert die Quest Invasion der Geißel steht bevor!
    .target Hobart Grapplehammer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Megs Dreadshredder|r
    .goto 174,52.2,73.2
    .turnin 24856 >>Gebt die Quest Invasion Imminent! ab
    .accept 24858 >>Akzeptiert die Quest Vertreter des Bilgewasserkartells
    .target Megs Dreadshredder
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brett "Coins" McQuid|r
    .goto 174,52.20,73.22
    .accept 24859 >>Akzeptiert die Quest Nagahaut
    .target Brett "Coins" McQuid
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Vashj'elan Warriors|r und |cRXP_ENEMY_Vashj'elan Sirens|r. Plündert sie für |cRXP_LOOT_Hides|r
    .complete 24859,1 --5/5 Intact Naga Hide
    .mob Vashj'elan Warriors
    .mob Vashj'elan Siren
step
    #loop
    .goto 174,53.477,80.146,0
    .waypoint 174,52.22,79.19,10,0
    .waypoint 174,52.76,78.97,10,0
    .waypoint 174,53.47,80.15,10,0
    .waypoint 174,54.14,79.91,10,0
    .waypoint 174,54.81,79.39,10,0
    .waypoint 174,55.50,79.54,10,0
    .waypoint 174,55.49,77.98,10,0
    .waypoint 174,54.86,76.94,10,0
    .waypoint 174,55.04,76.25,10,0
    .waypoint 174,53.53,76.90,10,0
    >>Klickt |cRXP_PICK_Naga-Banner|r
    .complete 24858,1 --10/10 Naga Banners replaced
step
    #loop
    .goto 174/648,2004.30005,498.39999,0
    .waypoint 174/648,2004.30005,498.39999,40,0
    .waypoint 174/648,1873.00000,503.00000,40,0
    .waypoint 174/648,1897.90002,591.50000,40,0
    >>Tötet |cRXP_ENEMY_Vashj'elan Warriors|r und |cRXP_ENEMY_Vashj'elan Sirens|r. Plündert sie für |cRXP_LOOT_hides|r
    .complete 24859,1 --5/5 Intact Naga Hide
    .mob Vashj'elan Warriors
    .mob Vashj'elan Siren
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brett "Coins" McQuid|r und |cRXP_FRIENDLY_Megs Dreadshredder|r
    .turnin 24859 >>Gebt die Quest Nagahaut ab
    .goto 174,52.2,73.22
    .turnin 24858 >>Gebt die Quest Vertreter des Bilgewasserkartells ab
    .accept 24864 >>Akzeptiert die Quest Unwiderstehliches Poolpony
    .goto 174,52.20,73.14
    .target Brett "Coins" McQuid
    .target Megs Dreadshredder
step
    #completewith next
    .use 50602
    .cast 71914 >>Benutzt |T132261:0|t[Unwiderstehliches Poolpony], sobald ihr das Wasser erreicht.
step
    #loop
    .goto 174/648,1713.59998,401.10001,0
    .waypoint 174/648,1766.20007,387.50000,30,0
    .waypoint 174/648,1713.59998,401.10001,30,0
    .waypoint 174/648,1684.20007,416.89999,30,0
    .waypoint 174/648,1661.20007,386.00000,30,0
    .waypoint 174/648,1619.50000,380.10001,30,0
    .waypoint 174/648,1594.09998,415.60001,30,0
    .waypoint 174/648,1567.59998,351.70001,30,0
    .waypoint 174/648,1689.50000,325.50000,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Naga-Schlüpflinge|r
    >>|cRXP_WARN_Passt auf, dass ihr die Schlüpflinge nicht mit Wirkungsbereich-Fähigkeiten tötet|r
    .use 50602
    .complete 24864,1 --12/12 Naga Hatchlings lured
    .target Naga Hatchling
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Megs Schredderschreck|r
    .goto 174,52.2,73.15
    .turnin 24864 >>Gebt die Quest Unwiderstehliches Poolpony ab
    .accept 24868 >>Akzeptiert die Quest Gebt auf, oder…!
    .target Megs Dreadshredder
step
    #completewith next
    .goto 174,54.07,90.06,30 >>Reist nach Süden zu den Ruinen von Vashj'elan
step
    .goto 174,54.07,90.06
    >>Tötet den |cRXP_ENEMY_Gesichtsloser aus den Tiefen|r
    >>|cRXP_WARN_Wartet auf die Spawn-Animation (violetter Kreis). Er wird kurz darauf nach unten springen.|r
    .complete 24868,1 --1/1 Leader of the naga dealt with
    .mob Faceless of the Deep
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Megs Dreadshredder|r
    .goto 174,52.20,73.15
    .turnin 24868 >>Gebt die Quest Gebt auf, oder…! ab
    .accept 24897 >>Akzeptiert die Quest Zurück in die Stadt
    .target Megs Dreadshredder
step
    #completewith next
    .subzone 4871 >>Kehrt zu Town-in-a-Kasten zurück
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sassy Hardwrench|r
    .goto 174,45.18,64.91
    .turnin 24897 >>Gebt die Quest Zurück in die Stadt ab
    .accept 24901 >>Akzeptiert die Quest Instastadt: Unter Angriff
    .target Sassy Hardwrench
step
    >>Klickt |cRXP_PICK_B.C. Eliminator|r, um darin einzusteigen und auf |cRXP_ENEMY_Oomlot-Krieger|r zu schießen
    .goto 174,45.7,65.0
    .complete 24901,1 --30/30 Oomlot Warriors defeated
step
    #completewith next
    +|cRXP_WARN_Verlasst das Fahrzeug|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sassy Hardwrench|r
    .goto 174,45.2,64.9
    .turnin 24901 >>Gebt die Quest Instastadt: Unter Angriff ab
    .accept 24924 >>Akzeptiert die Quest Oomlot
    .target Sassy Hardwrench
step
    #completewith next
    .subzone 4886 >>Reist nach Oomlot
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Izzy|r
    .goto 174,56.56,71.96
    .turnin 24924 >>Gebt die Quest Oomlot ab
    .accept 24925 >>Akzeptiert die Quest Befreit die Gefangenen
    .accept 24929 >>Akzeptiert die Quest Hinterlasst eine Botschaft
    .target Izzy
step
    #completewith next
    >>Tötet die |cRXP_ENEMY_Oomlot-Schamanen|r, um die |cRXP_FRIENDLY_Goblin-Gefangenen|r zu befreien
    .complete 24925,1 --5/5 Goblin Captives freed
    .mob Oomlot Shaman
step
    >>Tötet |cRXP_ENEMY_Yngwie|r
    .goto 174/648,1710.70007,843.79999,20,0
    .goto 174/648,1543.20007,817.29999
    .complete 24929,1 --1/1 Yngwie slain
    .mob Yngwie
step
    #loop
    .goto 174/648,1753.00000,746.50000,0
    .waypoint 174/648,1593.59998,754.90002,35,0
    .waypoint 174/648,1661.90002,717.40002,35,0
    .waypoint 174/648,1753.00000,746.50000,35,0
    .waypoint 174/648,1698.59998,802.10004,35,0
    >>Tötet die |cRXP_ENEMY_Oomlot-Schamanen|r, um die |cRXP_FRIENDLY_Goblin-Gefangenen|r zu befreien
    .complete 24925,1 --5/5 Goblin Captives freed
    .mob Oomlot Shaman
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Izzy|r
    .goto 174,56.56,71.96
    .turnin 24925 >>Gebt die Quest Befreit die Gefangenen ab
    .turnin 24929 >>Gebt die Quest Hinterlasst eine Botschaft ab
    .accept 24937 >>Akzeptiert die Quest Oomlot ist erledigt
    .target Izzy
step
    #completewith next
    .hs >>Benutzt euren Ruhestein zum Instastadt
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sassy Hardwrench|r
    .goto 174,45.2,64.9
    .turnin 24937 >>Gebt die Quest Oomlot ist erledigt ab
    .accept 24940 >>Akzeptiert die Quest Auf den Vulkan
    .target Sassy Hardwrench
step
    #completewith next
    +|cRXP_WARN_Weicht den |cRXP_ENEMY_Goblin-Zombie|r aus während ihr den Berg hinauf lauft|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Coach Crosscheck|r, |cRXP_FRIENDLY_Foreman Dampwick|r und |cRXP_FRIENDLY_Assistant Greely|r
    .turnin 24940 >>Gebt die Quest Auf den Vulkan ab
    .accept 24942 >>Akzeptiert die Quest Zombies gegen Superträgerraketenstiefel
    .goto 174,51.8,47.1
    .accept 24945 >>Akzeptiert die Quest Drei kleine Pygmäen
    .goto 174,51.85,47.19
    .accept 24946 >>Akzeptiert die Quest Abrockpulver
    .goto 174,51.73,47.38
    .target Coach Crosscheck
    .target Foreman Dampwick
    .target Assistant Greely
step
    #completewith next
    >>|cRXP_WARN_Ihr müsst die Schattengestalt abbrechen, falls ihr ein Schattenpriest seid, bevor ihr die Stiefel benutzen könnt|r <<Priest
    .use 52013
    .goto 174,51.77,46.97
    .cast 72891 >>|cRXP_WARN_Benutzt |T133029:0|t[Superträgerraketenstiefel]|r
step
    #completewith next
    >>Tötet die |cRXP_ENEMY_Goblin-Untote|r beim Darüberlaufen mit den Raketenstiefeln
    >>|cRXP_WARN_Ausweichen |cRXP_ENEMY_Oostan Kopfgeldjäger|r|r|cRXP_WARN_. Sie können euch sehr leicht töten|r
    .use 52013
    .complete 24942,1 --50/50 Goblin Zombies slain
step
    #completewith TheLostIslesGaahl
    >>Hebt |cRXP_PICK_Abrockpulver|r vom Boden auf
    .complete 24946,1 --5/5 Rockin' Powder
step
    >>Tötet |cRXP_ENEMY_Malmo|r
    .goto 174,58.74,47.16
    .complete 24945,2 --1/1 Malmo slain
    .mob Malmo
step
    >>Tötet |cRXP_ENEMY_Teloch|r
    .goto 174,63.7,52.76
    .complete 24945,3 --1/1 Teloch slain
    .mob Teloch
step
    #label TheLostIslesGaahl
    >>Tötet |cRXP_ENEMY_Gaahl|r
    .goto 174,59.59,40.20
    .complete 24945,1 --1/1 Gaahl slain
    .mob Gaahl
step
    #loop
    .goto 174/648,1677.50000,1457.09998,0
    .waypoint 174/648,1647.40002,1657.00000,50,0
    .waypoint 174/648,1695.30005,1522.70007,50,0
    .waypoint 174/648,1677.50000,1457.09998,50,0
    .waypoint 174/648,1479.59998,1285.90002,50,0
    .waypoint 174/648,1753.30005,1427.80005,50,0
    >>Schaut euch um und hebt die verbleibenden |cRXP_PICK_Abrockpulver|r auf
    .complete 24946,1 --5/5 Rockin' Powder
step
    #loop
    .goto 174/648,1677.50000,1457.09998,0
    .waypoint 174/648,1647.40002,1657.00000,50,0
    .waypoint 174/648,1695.30005,1522.70007,50,0
    .waypoint 174/648,1677.50000,1457.09998,50,0
    .waypoint 174/648,1479.59998,1285.90002,50,0
    .waypoint 174/648,1753.30005,1427.80005,50,0
    >>Tötet die |cRXP_ENEMY_Goblin-Untote|r beim Darüberlaufen mit den Raketenstiefeln
    .use 52013
    .complete 24942,1 --50/50 Goblin Zombies slain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Foreman Dampwick|r, |cRXP_FRIENDLY_Assistant Greedy|r, und |cRXP_FRIENDLY_Coach Crosscheck|r
    .turnin 24945 >>Gebt die Quest Drei kleine Pygmäen ab
    .goto 174,51.85,47.20
    .turnin 24946 >>Gebt Abrockpulver ab
    .goto 174,51.73,47.38
    .turnin 24942 >>Gebt die Quest Zombies gegen Superträgerraketenstiefel ab
    .accept 24952 >>Nehmt die Quest Raketenstiefelkick an
    .goto 174,51.8,47.1
    .target Foreman Dampwick
    .target Assistant Greedy
    .target Coach Crosscheck
step
    .goto 174/648,2044.80005,1463.09998
    >>Benutzt |T133029:0|t[Abrockpulververstärkte Raketenstiefel]
    .use 52032
    .complete 24952,1 --1/1 Rockin' Powder Infused Rocket Boots used
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hobart Grapplehammer|r
    .goto 174,68.93,46.44
    .turnin 24952 >>Gebt die Quest Raketenstiefelkick ab
    .accept 24954 >>Nehmt die Quest Des Schildkrötengottes Kinder an
    .target Hobart Grapplehammer
step
    #loop
    .goto 174/648,1333.30005,1529.30005,0
    .waypoint 174/648,1333.30005,1529.30005,40,0
    .waypoint 174/648,1368.00000,1597.70007,40,0
    .waypoint 174/648,1263.20007,1570.70007,40,0
    >>Tötet |cRXP_ENEMY_Abkömmling von Volcanoth|r. Beute sie um die |cRXP_LOOT_Drüsen|r zu erhalten
    .complete 24954,1 --5/5 Fire Gland
    .mob Childs of Volcanoth
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hobart Grapplehammer|r
    .goto 174,68.93,46.44
    .turnin 24954 >>Gebt die Quest Des Schildkrötengottes Kinder ab
    .accept 24958 >>Nehmt die Quest Volcanoth! an
    .target Hobart Grapplehammer
step
    .goto 174/648,1180.20007,1309.70007
    >>Benutzt wiederholt |T135624:0|t[Schuhzooka] am Wegpunkt-Ort auf |cRXP_ENEMY_Volcanoth|r
    .use 52043
    .complete 24958,1 --1/1 Volcanoth slain
    .mob Volcanoth
step
    .goto 174/648,1094.00000,1163.09998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sassy Hardwrench|r
    .turnin 24958 >>Gebt die Quest Volcanoth! ab
    .accept 25023 >>Nehmt die Quest Alte Freunde an
    .timer 110,Alte Freunde Flug
    .target Sassy Hardwrench
step
    .goto 174,36.79,43.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .turnin 25023 >>Gebt die Quest Alte Freunde ab
    .accept 25024 >>Nehmt die Quest Schlagt die Fallschirmjäger zurück an
    .target Thrall
step
    .goto 174,37.349,41.922
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sassy Hardwrench|r
    .accept 25058 >>Nehmt die Quest Minenentschärfung nach Goblinart an
    .target Sassy Hardwrench
step
    .goto 174,36.248,43.380
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aggra|r
    .accept 25093 >>Nehmt die Quest Die Köpfe des SI:7 an
    .target Aggra
step
    #completewith Paratroopers
    >>Benutzt |T133716:0|t[Granatensäckchen], um die |cRXP_PICK_Minen|r auf dem Boden zu zerstören
    .goto 174,32.38,36.34,0,0
    .use 52280
    .complete 25058,1 --10/10 Land Mines detonated
step
    #completewith TheLostIslesCyn
    >>Tötet |cRXP_ENEMY_Alliance Paratrooper|r
    .complete 25024,1 --10/10 Alliance Paratrooper slain
    .mob Alliance Paratrooper
step
    >>Tötet |cRXP_ENEMY_Commander Arrington|r. Plündert sie für |cRXP_LOOT_Head|r
    .goto 174,32.29,42.89
    .complete 25093,1 --1/1 Commander Arrington's Head
    .target Commander Arrington
step
    >>Tötet |cRXP_ENEMY_Alexi Silenthowl|r. Plündert sie für |cRXP_LOOT_Head|r
    .goto 174,30.80,33.92
    .complete 25093,3 --1/1 Alexi Silenthowl's Head
    .mob Alexi Silenthowl
step
    #label TheLostIslesCyn
    >>Tötet |cRXP_ENEMY_Darkblade Cyn|r. Plündert sie für |cRXP_LOOT_Head|r
    .goto 174,33.44,27.88
    .complete 25093,2 --1/1 Darkblade Cyn's Head
    .mob Darkblade Cyn
step
    #loop
    .goto 174/648,2887.40015,1875.80005,0
    .waypoint 174/648,2822.19995,1920.09998,40,0
    .waypoint 174/648,2887.40015,1875.80005,40,0
    .waypoint 174/648,2920.69995,1819.30005,40,0
    .waypoint 174/648,2911.90015,1718.70007,40,0
    .waypoint 174/648,2871.30005,1639.40002,40,0
    .waypoint 174/648,2884.80005,1523.70007,40,0
    .waypoint 174/648,2883.50000,1522.30005,40,0
    >>Tötet |cRXP_ENEMY_Alliance Paratrooper|r
    .complete 25024,1 --10/10 Alliance Paratrooper slain
    .mob Alliance Paratrooper
step
    #loop
    .goto 174/648,2887.40015,1875.80005,0
    .waypoint 174/648,2822.19995,1920.09998,40,0
    .waypoint 174/648,2887.40015,1875.80005,40,0
    .waypoint 174/648,2920.69995,1819.30005,40,0
    .waypoint 174/648,2911.90015,1718.70007,40,0
    .waypoint 174/648,2871.30005,1639.40002,40,0
    .waypoint 174/648,2884.80005,1523.70007,40,0
    .waypoint 174/648,2883.50000,1522.30005,40,0
    .use 52280 >>Benutzt |T133716:0|t[Granatensäckchen], um die |cRXP_PICK_Minen|r auf dem Boden zu zerstören
    .complete 25058,1 --10/10 Land Mines detonated
step
    #completewith next
    .subzone 4912 >>Reist nach Spähposten des Kriegshäuptlings
step
    .goto 174,36.248,43.380
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aggra|r
    .turnin 25093 >>Gebt die Quest Die Köpfe des SI:7 ab
    .target Aggra
step
    .goto 174,36.79,43.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .turnin 25024 >>Gebt die Quest Schlagt die Fallschirmjäger zurück ab
    .target Thrall
step
    .goto 174,37.349,41.922
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sassy Hardwrench|r
    .turnin 25058 >>Gebt die Quest Minenentschärfung nach Goblinart ab
    .accept 25066 >>Nehmt die Quest Der Stolz von Kezan an
    .target Sassy Hardwrench
step
    #completewith next
    .skipgossip 38387,1
    .vehicle 39074 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sassy Hartzang|r, um das Fahrzeug zu betreten
    .target Sassy Hardwrench
step
    >>Zerstört |cRXP_ENEMY_Gnomeregan Verstohlenheit Fighters|r
    >>|cRXP_WARN_Use|r |T134273:0|t[Wilde Wieselraketen] |cRXP_WARN_(2)|r |cRXP_WARN_auf Abklingzeit und spam|r |T135627:0|t[Maschinengewehr] |cRXP_WARN_(1)|r
    .goto 174,30.37,39.89
    .complete 25066,1 --10/10 Gnomeregan Stealth Fighters shot down
    .mob Gnomeregan Stealth Fighter
step
    #completewith next
    .subzone 4912 >>Fliegt zurück nach Spähposten des Kriegshäuptlings
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sassy Hardwrench|r
    .goto 174,37.36,41.92
    .turnin 25066 >>Gebt die Quest Der Stolz von Kezan ab
    .accept 25098 >>Nehmt die Quest Der Kriegshäuptling braucht Euch an
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .goto 174,36.79,43.13
    .turnin 25098 >>Gebt die Quest Der Kriegshäuptling braucht Euch ab
    .accept 25099 >>Nehmt die Quest Borgt Euch Bastia aus an
    .target Thrall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kilag Blutmaul|r
    .goto 174,33.8,38.8
    .turnin 25099 >>Gebt die Quest Borgt Euch Bastia aus ab
    .accept 25100 >>Nehmt die Quest Aufsitzen! an
    .timer 87,Panther Einsteigen
    .target Kilag Gorefang
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Slinky Scharfklinge|r, nachdem ihr mit dem Panther geritten seid
    .goto 174,53.71,34.94
    .turnin 25100 >>Gebt die Quest Aufsitzen! ab
    .accept 25109 >>Nehmt die Quest Gallywix' Fronmine an
    .target Slinky Sharpshiv
step << Priest Cata
    .goto 174,53.760,35.798
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sister Goldskimmer|r
    .trainer >>Trainiere deine Klassenfähigkeiten
    .target Sister Goldskimmer
step << Hunter Cata
    .goto 174,53.744,35.882
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bamm Megabomb|r
    .trainer >>Trainiere deine Klassenfähigkeiten
    .target Bamm Megabomb
step << Mage Cata
    .goto 174,53.754,33.614
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Fizz Lighter|r
    .trainer >>Trainiere deine Klassenfähigkeiten
    .target Fizz Lighter
step << Warlock Cata
    .goto 174,54.087,34.662
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Evol Fingers|r
    .trainer >>Trainiere deine Klassenfähigkeiten
    .target Evol Fingers
step << Shaman Cata
    .goto 174,53.245,35.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maxx Lawine|r
    .trainer >>Trainiere deine Klassenfähigkeiten
    .target Maxx Avalanche
step << Warrior Cata
    .goto 174,53.810,35.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Warrior-Matic NX-01|r
    .trainer >>Trainiere deine Klassenfähigkeiten
    .target Warrior-Matic NX-01
step << Rogue Cata
    .goto 174,53.716,34.928
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Slinky Sharpshiv|r
    .trainer >>Trainiere deine Klassenfähigkeiten
    .target Slinky Sharpshiv
    --VV Add appropriate .train ID's
step
    #completewith next
    .goto 174,54.09,36.01,10,0
    .goto 174,54.94,33.72,10 >>BETRETET die Höhle und springt hinunter
step
    .goto 174,53.17,36.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Assistant Greely|r
    .turnin 25109 >>Gebt die Quest Gallywix' Fronmine ab
    .accept 25110 >>Nehmt die Quest Kaja'Cola! Hier kommen die IDEEN (TM) an
    .target Assistant Greely
step
    >>Hebt |T132808:0|t[|cRXP_LOOT_Kaja'Cola minus eins|r] vom Boden auf
    .goto 174,53.59,37.41,10,0
    .goto 174,53.94,37.46,10,0
    .goto 174,53.70,36.67
    .complete 25110,1 --1/1 Kaja'Cola Zero-One
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Assistant Greely|r
    .goto 174,53.17,36.55
    .turnin 25110 >>Gebt die Quest Kaja'Cola! Hier kommen die IDEEN (TM) ab
    .accept 25122 >>Nehmt die Quest Moralverstärkung an
    .accept 25123 >>Nehmt die Quest Werft ihn zu Boden! an
    .target Assistant Greely
step
    #completewith FreeGobber
    >>Beute |T132808:0|t[|cRXP_LOOT_Kaja'Cola minus eins|r] vom Boden
    >>Zielt auf |cRXP_FRIENDLY_Kezan-Bürger|r und benutzt |T132808:0|t[|cRXP_LOOT_Kaja'Cola minus eins|r]
    .use 52484
    .collect 52484,9,25122,0xF
    .complete 25122,4 --6/6 Other goblin's minds freed
    .target Kezan Citizen
step
    #title Befreit Das Ass
    >>Ziel |cRXP_FRIENDLY_Ace|r und use a |T132808:0|t[|cRXP_LOOT_Kaja'Cola Zero-Eins|r]
    .goto 174,57.1,36.9
    .use 52484
    .complete 25122,1 --1/1 Ace's mind freed
    .target Ace
step
    #title Befreit Izzy
    >>Ziel |cRXP_FRIENDLY_Izzy|r und use a |T132808:0|t[|cRXP_LOOT_Kaja'Cola Zero-Eins|r]
    .goto 174,57.01,35.02
    .use 52484
    .complete 25122,2 --1/1 Izzy's mind freed
    .target Izzy
step
    >>Tötet |cRXP_ENEMY_Knallschatten der Tiermeister|r und hebt |cRXP_PICK_Blastshadow's Seelenstein|r auf.
    .use 52481 >>|cRXP_WARN_Benutzen|r |T134336:0|t[Knallschattens Seelenstein] |cRXP_WARN_auf der Leiche von|r |cRXP_ENEMY_Knallschatten der Tiermeister|r
    .goto 174,56.18,32.29
    .complete 25123,1 --1/1 Blastshadow's Soulstone destroyed
    .mob Blastshadow the Brutemaster
step
    #label FreeGobber
    >>Ziel |cRXP_FRIENDLY_Gobber|r und use a |T132808:0|t[|cRXP_LOOT_Kaja'Cola Zero-Eins|r]
    .goto 174,57.04,32.17
    .use 52484
    .complete 25122,3 --1/1 Gobber's mind freed
    .target Gobber
step
    #loop
    .goto 174/648,1807.59998,1983.59998,0
    .waypoint 174/648,1807.59998,1983.59998,25,0
    .waypoint 174/648,1830.20007,1860.80005,25,0
    .waypoint 174/648,1820.40002,1784.20007,25,0
    .waypoint 174/648,1917.40002,1809.40002,25,0
    >>Beute |T132808:0|t[|cRXP_LOOT_Kaja'Cola minus eins|r] vom Boden
    >>Zielt auf |cRXP_FRIENDLY_Kezan-Bürger|r und benutzt |T132808:0|t[|cRXP_LOOT_Kaja'Cola minus eins|r]
    .use 52484
    .collect 52484,9,25122,0xF
    .complete 25122,4 --6/6 Other goblin's minds freed
    .target Kezan Citizen
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Assistant Greely|r
    .turnin 25123 >>Gebt die Quest Werft ihn zu Boden ab
    .turnin 25122 >>Gebt die Quest Moralverstärkung ab
    .accept 25125 >>Akzeptiert die Quest Licht am Ende des Tunnels
    .target Assistant Greely
step
    >>Interagiert mit dem |cRXP_PICK_Minenwagen|r
    .goto 174,56.29,27.33
    .turnin 25125 >>Gebt die Quest Licht am Ende des Tunnels ab
    .accept 25184 >>Akzeptiert die Quest Wilder Minenwagenritt
step
    >>Steigt mit dem Minenlore ein
    .goto 174,54.2,17.0
    .complete 25184,1 --1/1 Mine Cart ridden
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Assistant Greely|r
    .goto 174,54.4,16.9
    .turnin 25184 >>Gebt die Quest Wilder Minenwagenritt ab
    .accept 25200 >>Akzeptiert die Quest Schredderabschaltung
    .target Assistant Greely
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Coach Crosscheck|r
    .goto 174,54.44,16.93
    .accept 25201 >>Akzeptiert die Quest Das ultimative Fußbombentrikot
    .target Coach Crosscheck
step
    #sticky
    #label TheLostIslesShredderShutdown
    >>Tötet |cRXP_ENEMY_Steamwheedle Sharks|r
    .goto 174,53.5,18.9,0,0
    .complete 25200,1 --8/8 Steamwheedle Shark slain
    .mob Steamwheedle Shark
step
    >>Hebt |cRXP_LOOT_Spare Schredder Parts|r auf
    .goto 174,53.24,19.55,20,0
    .goto 174,52.16,20.68,20,0
    .goto 174,51.85,19.17,20,0
    .goto 174,52.64,16.93,20,0
    .goto 174,53.13,18.70
    .complete 25201,1 --8/8 Spare Shredder Parts
step
    #requires TheLostIslesShredderShutdown
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Coach Crosscheck|r
    .goto 174,54.44,16.93
    .turnin 25201 >>Gebt die Quest Das ultimative Fußbombentrikot ab
    .target Coach Crosscheck
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Assistant Greely|r
    .goto 174,54.4,16.93
    .turnin 25200 >>Gebt die Quest Schredderabschaltung ab
    .accept 25204 >>Akzeptiert die Quest Lasst die Ventile los
    .target Assistant Greely
step << Male
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ace|r
    .goto 174,54.16,17.21
    .accept 25203 >>Akzeptiert die Quest Wer heißt denn schon Splitter?
    .target Ace
step << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Izzy|r
    .goto 174,54.01,16.98
    .accept 25202 >>Akzeptiert die Quest Der schnellste Weg zu ihrem Herz
    .target Izzy
step
    >>Klickt auf das |cRXP_PICK_Ventil|r
    .goto 174,50.85,15.86,10,0
    .goto 174,50.72,13.81
    .complete 25204,1 --1/1 Valve #1 released
step
    >>Klickt auf das |cRXP_PICK_Ventil|r
    .goto 174,50.5,13.2
    .complete 25204,3 --1/1 Valve #3 released
step << Female
    >>Tötet |cRXP_ENEMY_Chip Endale|r. Plündert sie für |cRXP_LOOT_heart|r
    .goto 174,50.1,13.8
    .complete 25202,1 --1/1 Still-Beating Heart
    .mob Chip Endale
step << Male
    >>Tötet |cRXP_ENEMY_Chip Endale|r. Plündert sie für |cRXP_LOOT_heart|r
    .goto 174,50.1,13.8
    .complete 25203,1 --1/1 Still-Beating Heart
    .mob Chip Endale
step
    >>Klickt auf das |cRXP_PICK_Ventil|r
    .goto 174,49.9,12.8
    .complete 25204,4 --1/1 Valve #4 released
step
    >>Klickt auf das |cRXP_PICK_Ventil|r
    .goto 174,50.2,11.8
    .complete 25204,2 --1/1 Valve #2 released
step
    >>Interagiert mit dem |cRXP_PICK_Plattform-Bedienpult|r
    .goto 174,51.4,13.1
    .turnin 25204 >>Gebt die Quest Lasst die Ventile los ab
    .accept 25207 >>Akzeptiert die Quest Leb wohl, süßes Öl
step
    >>Klickt auf den |cRXP_PICK_Roten Knopf|r
    .goto 174,51.4,13.1
    .complete 25207,1 --1/1 KTC Oil Platform destroyed
step << Male
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ace|r
    .goto 174,54.16,17.19
    .turnin 25203 >>Gebt die Quest Wer heißt denn schon Splitter ab
    .target Ace
step << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Izzy|r
    .goto 174,54.01,16.97
    .turnin 25202 >>Gebt die Quest Der schnellste Weg zu ihrem Herz ab
    .target Izzy
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Assistant Greely|r
    .goto 174,54.4,16.9
    .turnin 25207 >>Gebt die Quest Leb wohl, süßes Öl ab
    .accept 25213 >>Akzeptiert die Quest Die Sklavengruben
    .timer 24,Schredder Einsteigen
    .target Assistant Greely
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sassy Hartzang|r nach der Fahrt mit dem Schredder
    .goto 174,43.63,25.32
    .turnin 25213 >>Gebt die Quest Die Sklavengruben ab
    .accept 25244 >>Akzeptiert die Quest Wer heißt denn schon Vani? << Female
	.accept 25243 >>Akzeptiert die Quest Sie liebt mich. Sie liebt mich NICHT! << Male
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hobart|r
    .goto 174,43.85,25.30
    .accept 25214 >>Akzeptiert die Quest Flucht nach oben
    .target Hobart Grapplehammer
step
    #completewith next
    >>Klickt auf |cRXP_FRIENDLY_Captured Goblins|r
    .complete 25214,1 --8/8 Cages launched
    .target Captured Goblin
step
    >>Tötet |cRXP_ENEMY_Candy Cane|r
    .goto 174,39.68,27.18
    .complete 25244,1 << Female --1/1 Candy Cane slain
	.complete 25243,1 << Male --1/1 Candy Cane slain
    .mob Candy Cane
step
    >>Klickt auf |cRXP_FRIENDLY_Captured Goblins|r
    .goto 174,40.03,26.08,10,0
    .goto 174,41.03,25.24,15,0
    .goto 174,41.24,26.35
    .complete 25214,1 --8/8 Cages launched
    .target Captured Goblin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hobart|r
    .goto 174,43.85,25.30
    .turnin 25214 >>Gebt die Quest Flucht nach oben ab
    .target Hobart Grapplehammer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sassy Hardwrench|r
    .goto 174,43.63,25.32
    .turnin 25244 >>Gebt die Quest Wer heißt denn schon Vani ab << Female
	.turnin 25243 >>Gebt die Quest Sie liebt mich. Sie liebt mich NICHT! ab << Male
    .accept 25251 >>Akzeptiert die Quest Endkampf
    .target Sassy Hardwrench
step
    >>BETRETET |cRXP_FRIENDLY_Ultimate Fußbombentrikot|r
    .goto 174,43.86,25.16
    .complete 25251,1 --1/1 Ultimate Footbomb Uniform
    .target Ultimate Footbomb Uniform
step
    >>Ziel |cRXP_ENEMY_Trade Prince Gallywix|r und use alle von Euch abilities auf Abklingzeit
    .goto 174,41.87,17.61,10,0
    .goto 174,43.4,19.9
    .complete 25251,2 --1/1 Trade Prince Gallywix dealt with
    .mob Trade Prince Gallywix
step
    #completewith next
    .goto 174,42.76,18.61,10,0
    .goto 174,42.24,19.45,20 >>Springen down
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sassy Hardwrench|r
    .goto 174,43.6,25.3
    .turnin 25251 >>Gebt die Quest Endkampf ab
    .accept 25265 >>Akzeptiert die Quest Sieg!
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .goto 174,42.16,17.37
    .turnin 25265 >>Gebt die Quest Sieg! ab
    .accept 25266 >>Akzeptiert die Quest Der Gesandte des Kriegshäuptlings
    .target Thrall
step
    #completewith next
    .goto 174,42.57,16.37
    .skipgossip
    .zone 1 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sassy Hardwrench|r
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kor'Kron Loyalist|r
    .goto 1,57.65,9.78
    .turnin 25266 >>Gebt die Quest Der Gesandte des Kriegshäuptlings ab
    .accept 25267 >>Akzeptiert die Quest Nachricht für Saurfang
    .timer 75,Flug nach Orgrimmar
    .target Kor'Kron Loyalist
step
    #completewith next
    .goto 1,45.506,11.949,30,0
    .zone Orgrimmar >>Betretet Orgrimmar
step
    .goto 1454/1,-4343.20020,1669.20007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Garrosh Höllschrei|r
    .turnin 25267 >>Gebt die Nachricht für Saurfang ab
    .accept 25275 >>Akzeptiert den Bericht beim Arbeitsaufseher
    .target Garrosh Hellscream
]])
