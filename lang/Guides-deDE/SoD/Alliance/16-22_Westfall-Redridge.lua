if GetLocale() ~= "deDE" then return end

RXPGuides.RegisterGuide([[
#classic
#version 1
#season 2
<< Alliance
#group RestedXP Allianz 1-20
#groupid RXP-SRGCE-A1
#name 16-17 Westfall SoD
#displayname 16-17 Westfall
#next 17-22 Redridge SoD
#defaultfor !NightElf

step << Paladin
    .goto Stormwind City,74.182,7.465 << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Milton Garbenbund|r << Alliance
    >>Kauft die |T133745:0|t|cRXP_LOOT_[MoP - Gegenstände]|r von ihm und erlernt |T135956:0|t[Exorzist] << Paladin
    .collect 226398,1 << Paladin
    .train 415076,1 << Paladin
step
    .goto StormwindClassic,58.08,16.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Furen Longbeard|r
    .turnin 1338 >> Gebt die Quest Stormpikes Bestellung ab
    .target Furen Longbeard
step << Priest !NightElf
    #season 2
    .goto StormwindClassic,20.8,50.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nara Meideros|r
    .target Nara Meideros
    .accept 78195 >> Akzeptiert die Quest Geheimnisse von Elune
step << Human Paladin
    #optional
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin -2998 >> Gebt die Quest Foliant der Offenbarung ab
    .accept 1641 >> Akzeptiert die Quest Der Foliant der Offenbarung
    .turnin 1641 >> Gebt die Quest Der Foliant der Offenbarung ab
    .target Duthorian Rall
step << Human Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Duthorian Rall|r
    .accept 1641 >> Akzeptiert die Quest Der Foliant der Offenbarung
    .turnin 1641 >> Gebt die Quest Der Foliant der Offenbarung ab
    .target Duthorian Rall
step << Human Paladin
    .goto StormwindClassic,39.80,29.77
    >>|cRXP_WARN_Benutzt |T133739:0|t[|cRXP_LOOT_Der Foliant der Offenbarung|r] um die Quest zu starten|r
    .accept 1642 >>Akzeptiert die Quest Der Foliant der Offenbarung
    .use 6775
step << Human Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1642 >>Gebt die Quest Der Foliant der Offenbarung ab
    .accept 1643 >>Akzeptiert die Quest Der Foliant der Offenbarung
    .target Duthorian Rall
step << Paladin
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Arthur der Treue|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Arthur the Faithful
step << Human Paladin
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Stephanie Turner|r
    .turnin 1643 >> Gebt die Quest Der Foliant der Offenbarung ab
    .accept 1644 >> Akzeptiert die Quest Der Foliant der Offenbarung
    .turnin 1644 >> Gebt die Quest Der Foliant der Offenbarung ab
    .accept 1780 >> Akzeptiert die Quest Der Foliant der Offenbarung
    .target Stephanie Turner
step << Human Paladin
    .goto StormwindClassic,40.1,29.9
    >>Sprecht mit |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1780 >>Gebt die Quest Der Foliant der Offenbarung ab
    .target Duthorian Rall
    .accept 1781 >>Akzeptiert die Quest Der Foliant der Offenbarung
step << Human Paladin
    .goto StormwindClassic,38.7,26.6
    >>Sprecht mit |cRXP_FRIENDLY_Gazin Tenorm|r
    .turnin 1781 >>Gebt die Quest Der Foliant der Offenbarung ab
    .target Gazin Tenorm
    .accept 1786 >>Akzeptiert die Quest Der Foliant der Offenbarung
step << Priest !NightElf
    #season 2
    .goto StormwindClassic,20.8,50.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nara Meideros|r
    .target Nara Meideros
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Geh ins geschlachtete Lamm und dann in den Keller
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Ursula Deline
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Spackle Dornbeere|r
    >> |cRXP_BUY_Kauft|r |T133738:0|t[Grimoire of Schatten verzehren (Rang 1)]
    .collect 16357,1
    .target Spackle Thornberry
    .train 20387,1
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gakin der Dunkelbinder|r
    .turnin 1688 >> Gebt die Quest Surena Caledon ab
    .accept 1689 >> Die Bindung annehmen
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>|cRXP_WARN_Reist zur untersten Ebene des Geschlachteten Lammes|r
    .cast 7728 >> |cRXP_WARN_Benutzt|r |T133292:0|t[Blutsteinhalsreif] |cRXP_WARN_um einen|r |cRXP_ENEMY_Beschworenen Leerwandler|r herbeizurufen
    .use 6928
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 6928 >> Tötet den |cRXP_ENEMY_Beschworenen Leerwandler|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .mob Summoned Voidwalker
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gakin der Dunkelbinder|r
    .target Gakin the Darkbinder
    .goto StormwindClassic,25.25,78.59
    .turnin 1689 >> Gebt die Quest Die Bindung ab
step << Priest/Mage/Warlock
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ardwyn Cailen|r innerhalb
    .vendor 1312 >>|cRXP_BUY_Kauft einen|r |T135468:0|t[Glimmender Zauberstab] |cRXP_BUY_von ihr, falls ihr es euch leisten könnt (35s)|r
    >>|cRXP_BUY_Alternativ, kauft einen|r |T135144:0|t[Großer Magiezauberstab] |cRXP_BUY_vom Auktionshaus, falls es günstiger ist|r
    .collect 5208,1
    .disablecheckbox
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .itemcount 11288,<1 --Greater Magic Wand (1)
step << Rogue
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osborne|r
    >>|cRXP_WARN_Stellt sicher, dass ihr|r |T136058:0|t[Schlossknacken] |cRXP_WARN_trainiert, da ihr sie bald für die Schurken-Klassenquest von Euch brauchen werdet|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .train 1804 >> Erlernt |T136058:0|t[Schloss knacken]
    .target Osborne the Night Man
step << Rogue
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> Betretet das SI:7-Hauptquartier. Geht die Treppen nach oben zu |cRXP_FRIENDLY_Renzik "Das Messer"|r
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Renzik "Das Messer"|r
    .accept 2281 >> Akzeptiert die Quest Rendezvous im Rotkammgebirge
    .goto StormwindClassic,75.76,60.35
    .target Renzik "The Shiv"
step << Warrior
    #season 2
    #completewith next
    .gossipoption 109045 >> Sprecht mit |cRXP_FRIENDLY_Liv Bradford|r in der Taverne im Park
    .goto Stormwind City,22.608,64.621
    .gossipoption 109084 >> Sprecht mit |cRXP_ENEMY_Stuart|r, dann verprügelt ihn. Er wird bei 0% ohnmächtig
    .goto Stormwind City,21.213,62.781
    >>Falls |cRXP_ENEMY_Stuart|r nicht dort ist, wartet bis er respawnt
    .skipgossipid 109047
    .skipgossipid 109045
    .skipgossipid 109084
    --.train 425447,1
step << Warrior
    #season 2
    .goto Stormwind City,22.608,64.621
    .use 204716 >> Sprecht wieder mit |cRXP_FRIENDLY_Liv Bradford|r, nachdem ihr |cRXP_ENEMY_Stuart|r niedergeschlagen habt, um die |T134419:0|t[|cRXP_FRIENDLY_Rune des rasenden Angriffs|r] zu erhalten
    .collect 204716,1
    .train 425447,1 >> |cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des rasenden Angriffs|r] |cRXP_WARN_zum lernen von|r |T236317:0|t[Rasender Angriff]
    >>|cRXP_WARN_Hinweis: Dies kann ziemlich schwierig im Solo-Modus sein, je nach eurer Stufe. Sucht euch Hilfe, falls nötig|r
    .skipgossip 203478,1
    .target Liv Bradford
    .mob Stuart
step << Hunter
    .goto 1453/0,702.100,-8792.601
    .target Lina Stover
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lina Stover|r
    >>Kauft eine |T135612:0|t[Großkalibrige Donnerbüchse] (7.4 DPS) oder sucht nach einem besseren Upgrade im Auktionshaus
    .collect 3023,1
    .money <0.3771
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.3
step << !Human/!Mage
    #season 1 << Rogue
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Woo Ping|r
    .train 227 >>Erlernt Stäbe << Priest/Warlock/Hunter
    .train 201 >>Erlernt 1h Schwerter << Mage/Warlock
    .train 202 >>Erlernt 2h Schwerter << Warrior/Paladin/Hunter
    --.train 5011 >>Train Crossbows << Hunter
    .target Woo Ping
step << Warrior/Paladin
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r
    >>Kauft eine |T135353:0|t[Espandon] (12.6 DPS) oder sucht nach einem besseren Upgrade im Auktionshaus
    .target Marda Weller
    .collect 2024,1 --Collect Espadon (1)
    .money <0.6397
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Jaxon|r
    >>Kauft das |T134437:0|t[Gegengift] für eure |T132290:0|t[Gifte]-Quest später und den Rest für schnellere Questabgaben im Rotkammgebirge << !Dwarf Rogue
    >>Kauft die folgenden Gegenstände für schnellere Abgaben im Rotkammgebirge << !Rogue/Dwarf Rogue
    >>Das spart dir Zeit, weil du dann später nicht rumläufst und die Mobs dafür töten musst. Überspring diesen Schritt, wenn du nichts kaufen willst
    >>|T134437:0|t[Gegengift] << !Dwarf Rogue
    >>|T134172:0|t[Große Geiferzahnschnauze]
    >>|T134028:0|t[Zähes Kondorfleisch]
    >>|T134321:0|t[Knuspriges Spinnenfleisch]
    >>Gegengift kann mithilfe der Erste-Hilfe-Fertigkeit aus einem |T134339:0|t[Klein Toxin Sac] hergestellt werden << Rogue !Dwarf
    .collect 6452,1,2359,1 << !Dwarf Rogue --Anti-Venom (1)
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
step << Mage
    #season 2
    .goto StormwindClassic,55.8,65.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Keldric Boucher|r
    >>Überprüfen if he has |T134830:0|t[|cRXP_LOOT_Lesser Heilung Potions|r], buy them if they're available
    .collect 211779,3 >> Kauft ein Paar |T135933:0|t[|cRXP_LOOT_Verständnisamulett|r] von ihm
    .target Keldric Boucher
step << Human
    .goto StormwindClassic,66.28,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .turnin 6261 >> Gebt die Quest Dungar Longdrink ab
    .accept 6285 >> Akzeptiert die Quest Zurück zu Lewis
    .target Dungar Longdrink
    .isQuestTurnedIn 6281
step << !Human/Warlock
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fp Stormwind >> Holt euch den Flugpunkt in Sturmwind << !Human
    .fly Redridge >> Fliegt ins Rotkammgebirge << Warlock
    .target Thor
step << !Warlock
    .goto Elwynn Forest,32.45,50.16
    .zone Elwynn Forest >> Reist in den Wald von Elwynn
    .zoneskip Westfall
    .zoneskip Redridge Mountains
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Lyria Du Lac
step << Paladin
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bruder Wilhelm|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Brother Wilhelm
step << !Human !Warlock
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Farley|r
    .home >> Setzt euren Ruhestein in Goldhain
    .target Innkeeper Farley
step << Mage
    #optional
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Geht im Gasthaus nach oben
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Trainiere deine Klassenfähigkeiten
step << !Warlock
    .goto 1429/0,73.800,-9465.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .target Marshal Dughan
    .accept 109 >>Akzeptiert die Quest Meldung bei Gryan Stoutmantle
step << Human Paladin
    .goto Elwynn Forest,72.7,51.5
    >>Benutzt |cRXP_PICK_Symbol des Lebens|r auf |cRXP_FRIENDLY_Henze Faulk|r
>>Sprecht mit |cRXP_FRIENDLY_Henze Faulk|r
    .turnin 1786 >>Gebt die Quest Der Foliant der Offenbarung ab
.target Henze Faulk
    .accept 1787 >>Akzeptiert die Quest Der Foliant der Offenbarung
    .use 6866
step << Human Paladin
    .goto Elwynn Forest,73.5,51.3
    >>Tötet die |cRXP_ENEMY_Defias Schurke Wizards|r um die Insel herum
    .complete 1787,1 --Defias Script (1)
    .mob Defias Rogue Wizard
step << !Warlock
    #label RedridgeS
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Reist ins Rotkammgebirge
step
    .goto Redridge Mountains,17.4,69.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Parker|r
    .accept 244 >> Akzeptiert die Quest Eindringende Gnolle
    .target Guard Parker
step
    .goto Redridge Mountains,30.73,59.99
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stellvertreter Feldon|r
    .turnin 244 >> Gebt die Quest Eindringende Gnolle ab
    .accept 246 >> Akzeptiert die Quest Einschätzung der Gefahr
    .target Deputy Feldon
step << !Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
    .fp Redridge Mountains >> Erlernt die Flugroute zum Rotkammgebirge
    .target Ariena Stormfeather
step << !Human
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verner Gutmark|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 118 >> Akzeptiert die Quest Der Preis für Hufeisen
step << Human/Dwarf Paladin
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
    .fly Westfall >> Fliegt nach Westfall
    .target Ariena Stormfeather
step << Gnome Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
    .fly Stormwind >> Fliege nach Sturmwind
    .target Ariena Stormfeather
step << Gnome Warlock
    .goto Elwynn Forest,32.45,50.16
    .zone Elwynn Forest >> Reist in den Wald von Elwynn
    .zoneskip Westfall
    .isQuestAvailable 153
step << !Human !Paladin !Warlock
    #completewith next
    .hs >> Ruhestein nach Goldhain
step << !Human !Paladin
    .goto Elwynn Forest,41.71,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Smith Argus|r
	.target Smith Argus
    .turnin 118 >> Gebt die Quest Der Preis für Hufeisen ab
    .accept 119 >> Akzeptiert die Quest Zurück zu Verner
step << !Human !Paladin
    #completewith next
    .zone Westfall >> Lauf nach Westfall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gryan Stoutmantle|r und |cRXP_FRIENDLY_Captain Danuvin|r
    .goto Westfall,56.327,47.520
    .turnin -109 >> Gebt die Quest Meldung bei Gryan Stoutmantle ab
    .accept 12 >> Akzeptiert die Quest Die Volksmiliz
    .target Gryan Stoutmantle
step << Human
    #label Lewis
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rüstmeister Lewis|r
    .target Quartermaster Lewis
    .goto Westfall,57.00,47.17
    .turnin 6285 >> Gebt die Quest Zurück zu Lewis ab
    .isOnQuest 6285
step
    .goto Westfall,54.00,53.00
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Späher Galiaan|r
    .target Scout Galiaan
    .accept 153 >> Akzeptiert die Quest Rote Lederkopftücher
step << Rogue
    .goto Westfall,52.8,53.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirtin Heather|r
    .target Innkeeper Heather
    .home >> Setzt euren Ruhestein in Westfall
step
    >>Tötet |cRXP_ENEMY_Defias Trappers|r und |cRXP_ENEMY_Defias Smugglers|r. Plündert sie für |cRXP_LOOT_Red Leder Bandanas|r
    .goto Westfall,48.21,46.70,60,0
    .goto Westfall,46.74,52.87,60,0
    .goto Westfall,50.74,40.07,60,0
    .goto Westfall,46.21,38.26,60,0
    .goto Westfall,41.21,40.75,60,0
    .goto Westfall,44.57,26.09,60,0
    .goto Westfall,48.21,46.70
    .goto Westfall,41.21,40.75,0
    .complete 12,1 -- Defias Trapper slain (15)
    .complete 12,2 -- Defias Smuggler slain (15)
    .complete 153,1 -- Red Leather Bandana (15)
    .mob Defias Trapper
    .mob Defias Smuggler
step << Mage
    #loop
    .goto 1436,35.043,53.785,0
    .goto 1436,43.045,67.127,0
    .goto 1436,43.459,70.800,0
    .goto 1436,45.458,70.322,0
    .goto 1436,44.547,65.624,0
    .goto 1436,35.043,53.785,40,0
    .goto 1436,35.952,53.085,40,0
    .goto 1436,36.549,54.105,40,0
    .goto 1436,36.025,54.822,40,0
    .goto 1436,38.732,56.872,40,0
    .goto 1436,43.045,67.127,40,0
    .goto 1436,42.825,68.290,40,0
    .goto 1436,42.524,69.212,40,0
    .goto 1436,42.103,69.530,40,0
    .goto 1436,42.240,70.517,40,0
    .goto 1436,43.459,70.800,40,0
    .goto 1436,43.698,69.251,40,0
    .goto 1436,43.798,67.692,40,0
    .goto 1436,44.042,69.247,40,0
    .goto 1436,44.333,68.588,40,0
    .goto 1436,45.458,70.322,40,0
    .goto 1436,45.794,69.292,40,0
    .goto 1436,44.952,67.095,40,0
    .goto 1436,44.547,65.624,40,0
    >>Tötet |cRXP_ENEMY_Defias Pillagers|r. Plündert sie für |T134939:0|t|cRXP_FRIENDLY_[Zauber Notes: TENGI RONEERA]|r
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .mob Defias Pillager
    .train 401767,1
step << Mage
    .train 401767 >>|cRXP_WARN_Benutzt|r |T134939:0|t|cRXP_FRIENDLY_[Zaubernotizen: TENGI RONEERA]|r |cRXP_WARN_zum Erlernen von|r |T133815:0|t[Brustteil prägen - Regeneration]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
step
    .goto Westfall,56.04,31.23
    .target Farmer Saldean
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Saldean|r
    .accept 9 >> Akzeptiert die Quest Tod auf den Feldern
step
#loop
    .goto Westfall,37.4,50.6,0
    .goto Westfall,44.8,33.6,0
    .goto Westfall,54.0,32.0,0
    .goto Westfall,51.0,22.0,0
    .goto Westfall,53.84,32.00,60,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,80,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,60,0
    .goto Westfall,44.47,35.35,60,0
    .goto Westfall,50.80,21.76,60,0
    >>Tötet die |cRXP_ENEMY_Harvest Watchers|r. Plündert [|cRXP_LOOT_Flasks of Oil|] von ihnen, ihr werdet sie später für eine Quest brauchen
    >>Ihr könnt auf dem Saldean-Feld bleiben. Sie werden weiterhin respawnen, wenn alle tot sind
    .complete 9,1 --Harvest Watcher (20)
    .collect 814,5 -- Flask of Oil (5)
    .mob Harvest Watcher
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Saldean|r
	.target Farmer Saldean
    .goto Westfall,56.04,31.23
    .turnin 9 >> Gebt die Quest Tod auf den Feldern ab
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Späher Galiaan|r
	.target Scout Galiaan
    .goto Westfall,54.00,53.00
    .turnin 153 >> Gebt die Quest Rote Lederkopftücher ab
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
	.target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .turnin 12 >> Gebt die Quest Die Volksmiliz ab
    .accept 65 >> Die Bruderschaft der Defias annehmen
step
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fly Redridge >> Fliegt ins Rotkammgebirge
    .target Thor

]])

RXPGuides.RegisterGuide([[
#classic
#version 1
#season 2
<< Alliance
#group RestedXP Allianz 1-20
#groupid RXP-SRGCE-A1
#name 17-22 Redridge SoD
#displayname 17-22 Redridge
#next RestedXP Allianz 20-30\22-24 Sumpfland SoD
#defaultfor !NightElf


step
    #label BMenace
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Marris|r
    .goto Redridge Mountains,33.50,48.97
    .accept 20 >> Akzeptiert die Quest Bedrohung durch die Blackrock
    .target Marshal Marris
    .xp <18,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Großknecht Oslow|r
    .goto Redridge Mountains,32.13,48.63
    .accept 125 >> Akzeptiert die Quest Die verlorenen Werkzeuge
    .target Foreman Oslow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verner Gutmark|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 118 >> Akzeptiert die Quest Der Preis für Hufeisen
step
#optional
    .goto Redridge Mountains,30.97,47.27
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verner Gutmark|r
	.target Verner Osgood
    .turnin 119 >> Gebt die Quest Zurück zu Verner ab
    .isOnQuest 119
step
#optional
    .goto Redridge Mountains,30.97,47.27
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verner Gutmark|r
	.target Verner Osgood
    .accept 124 >> Akzeptiert die Quest Das Bellen der Gnolle
    .accept 122 >> Akzeptiert die Quest Bauchschuppen
    .isQuestTurnedIn 119

step
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Magistrat Solomon|r
	.target Magistrate Solomon
    .accept 120 >> Akzeptiert die Quest Botschaft nach Sturmwind
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dockmeister Baren|r
	.target Dockmaster Baren
    .goto Redridge Mountains,27.70,47.40
    .accept 127 >> Fischhandel annehmen
step
    .goto Redridge Mountains,26.80,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_läuft im Gasthaus herum|r
	.target Darcy
    .accept 129 >> Akzeptiert die Quest Ein geschenktes Mittagessen
step << !Rogue
    .goto Redridge Mountains,27.0,44.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirtin Brianna|r
    .target Innkeeper Brianna
    .home >> Setzt euren Ruhestein nach Seenhain
    .isQuestAvailable 20
step
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wiley der Schwarz|r oben die Treppen hinauf
	.target Wiley the Black
    .turnin 65 >> Gebt die Quest Die Bruderschaft der Defias ab
    .isOnQuest 65
step
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wiley der Schwarze|r die Treppe hinauf
    .turnin 65 >> Gebt die Quest Die Bruderschaft der Defias ab
    .accept 132 >> Die Bruderschaft der Defias annehmen
	.target Wiley the Black
step
#optional
    .goto Redridge Mountains,22.67,43.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Küchenchefin Breanna|r
    .accept 92 >> Akzeptiert die Quest Rotkammgulasch
    .turnin 92 >> Gebt die Quest Rotkammgulasch ab
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
    .target Chef Breanna
step << Rogue
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >> Gebt die Quest Rendezvous im Rotkammgebirge ab
    .accept 2282 >> Akzeptiert die Quest Althers Mühle
    .target Lucius
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shawn|r
	.target Shawn
    .goto Redridge Mountains,29.31,53.63
    .accept 3741 >> Akzeptiert die Quest Hilarys Halskette
step
#loop
    >>|cRXP_WARN_Springt in den See|r
    >>Öffnet |cRXP_PICK_Glitzernder Matsch|r. Plündert es für |cRXP_LOOT_Hilarys Halskette|r
    >>|cRXP_WARN_Es kann an mehreren Orten im See spawnen|r
    .goto Redridge Mountains,27.80,56.05,0
    .goto Redridge Mountains,26.56,50.63,0
    .goto Redridge Mountains,23.96,55.17,0
    .goto Redridge Mountains,19.16,51.75,0
    .goto Redridge Mountains,31.12,54.21,0
    .goto Redridge Mountains,34.03,55.34,0
    .goto Redridge Mountains,38.09,54.49,0
    .goto Redridge Mountains,19.16,51.75,70,0
    .goto Redridge Mountains,38.09,54.49,70,0
    .complete 3741,1 --Hilary's Necklace (1)
step
    >>Öffnet die |cRXP_PICK_Versunkene Truhe|r. Plündert sie für |cRXP_LOOT_Oslows Werkzeugkasten|r
    .goto Redridge Mountains,41.52,54.68
    .complete 125,1 --Oslow's Toolbox (1)
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Großknecht Oslow|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.13,48.63
    .turnin 125 >> Gebt die Quest Die verlorenen Werkzeuge ab
    .accept 89 >> Akzeptiert die Quest Die Immerruhbrücke
step
    #label BMenace
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Marris|r
    .goto Redridge Mountains,33.50,48.97
    .accept 20 >> Akzeptiert die Quest Bedrohung durch die Blackrock
    .target Marshal Marris
    .xp <18,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hilary|r
	.target Hilary
    .goto Redridge Mountains,29.24,53.63
    .turnin 3741 >> Gebt die Quest Hilarys Halskette ab
step
    #optional
	#completewith threat1
	>>Tötet |cRXP_ENEMY_Schwarzer Großdrachenwelpe|r. Plündert sie für |cRXP_LOOT_Welpenbauchschuppe|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
    .isOnQuest 122
step
    #optional
    #completewith threat1
    >>Tötet |cRXP_ENEMY_Großer Geiferzahn|r. Plündert sie für |cRXP_LOOT_Große Geiferzahnschnauze|r
    .collect 2296,5,92,1
    .mob Great Goretusk
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Parker|r
	.target Guard Parker
    .goto Redridge Mountains,15.27,71.45
    .turnin 129 >> Gebt die Quest Ein geschenktes Mittagessen ab
    .accept 130 >> Akzeptiert die Quest Besuch im Kräuterladen
step
    .goto Redridge Mountains,21.22,67.77,45,0
    .goto Redridge Mountains,17.70,73.39,45,0
    .goto Redridge Mountains,11.20,76.31,45,0
    .goto Redridge Mountains,13.37,81.48,45,0
    .goto Redridge Mountains,18.86,73.63
    >>Tötet |cRXP_ENEMY_Taranteln|r. Plündert sie für ihr |cRXP_LOOT_Knuspriges Spinnenfleisch|r
    .collect 1081,5,92,1
    .mob Tarantula
step
#loop
    .goto Redridge Mountains,29.49,82.80,0
    .goto Redridge Mountains,32.52,81.78,0
    .goto Redridge Mountains,43.18,72.22,0
    .goto Redridge Mountains,31.13,82.18,0
    .goto Redridge Mountains,29.49,82.80,45,0
    .goto Redridge Mountains,32.52,81.78,45,0
    .goto Redridge Mountains,43.18,72.22,45,0
    .goto Redridge Mountains,31.13,82.18,45,0
	>>Tötet |cRXP_ENEMY_Bastard der Rotkammgnolle|r und |cRXP_ENEMY_Wilderer der Rotkammgnolle|r
    .complete 246,1 --Redridge Mongrel (10)
    .complete 246,2 --Redridge Poacher (6)
    .mob Redridge Mongrel
	.mob Redridge Poacher
step
#label threat1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stellvertreter Feldon|r
	.target Deputy Feldon
    .goto Redridge Mountains,30.73,59.99
    .turnin 246 >> Gebt die Quest Einschätzung der Gefahr ab
step
    #completewith db1
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
    .fly Stormwind >> Fliege nach Sturmwind
    .target Ariena Stormfeather
    .dungeon DM << !Human
step
    #optional
    .goto StormwindClassic,63.982,75.338
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_General Marcus Jonathan|r
    .turnin 120 >> Gebt die Quest Botschaft nach Sturmwind ab
    .accept 121 >> Akzeptiert die Quest Botschaft nach Sturmwind
    .target General Marcus Jonathan
    .isQuestTurnedIn 118
    .dungeon DM << !Human
step
    .accept 167 >> Akzeptiert die Quest Oh Bruder...
    .accept 168 >> Akzeptiert Die Suche nach Andenken
    .goto StormwindClassic,65.438,21.175
    .target Wilder Thistlenettle
    .target Shoni the Shilent
    .dungeon DM
step << Human Paladin
    .goto StormwindClassic,38.6,26.7
>>Sprecht mit |cRXP_FRIENDLY_Gazin Tenorm|r
    .turnin 1787 >>Gebt die Quest Der Foliant der Offenbarung ab
.target Gazin Tenorm
    .accept 1788 >>Akzeptiert die Quest Der Foliant der Offenbarung
step << Human Paladin
    .goto StormwindClassic,39.9,29.8
.target Duthorian Rall
>>Sprecht mit |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1788 >>Gebt die Quest Der Foliant der Offenbarung ab
step
    .goto StormwindClassic,55.510,12.504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shoni die Schtille|r
    .accept 2040 >> Unterirdischer Angriff annehmen
    .target Shoni the Shilent
    .dungeon DM
step << Hunter
    .goto 1453/0,702.100,-8792.601
    .target Lina Stover
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lina Stover|r
    >>Kauft einen |T135612:0|t[BKP 2700 "Enforcer"] (9.6 DPS) oder sucht nach einem besseren Upgrade im Auktionshaus
    .collect 3024,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.6
    .dungeon DM << !Human
step << Rogue
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r
    .target Marda Weller
    >>|cRXP_WARN_Kauft einen|r |T135342:0|t[Kris]
    >>|cRXP_WARN_Kauft etwas aus dem Auktionshaus, wenn es etwas günstigeres oder besseres gibt|r
    .collect 2209,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
    .dungeon DM << !Human
step << Warrior/Paladin
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_WARN_Kauft eine|r |T135280:0|t[Dakische Sichel] |cRXP_WARN_wenn ihr genug Geld habt. Rüstet sie aus, wenn ihr Stufe 21 erreicht|r
    >>|cRXP_WARN_Falls ihr bis hierhin Keulen benutzt habt, könnt ihr einen|r |T133044:0|t[Zermalmen] |cRXP_WARN_kaufen, um Probleme mit der Waffenfertigkeit zu vermeiden|r
    >>|cRXP_WARN_Kauft etwas aus dem Auktionshaus, wenn es etwas günstigeres oder besseres gibt|r
    .collect 922,1 --Heavy Spiked Mace (1)
    .collect 924,1 --Ironwood Maul (1)
    .itemcount 4778,<1 --Heavy Spiked Mace (<1)
    .itemcount 4777,<1 --Ironwood Maul (<1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
    .dungeon DM << !Human
step << Warlock/Priest
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ardwyn Cailen|r innerhalb
    .vendor 1312 >>|cRXP_BUY_Kauft einen|r |T135139:0|t[Brennender Zauberstab] |cRXP_BUY_von ihr, wenn ihr es euch leisten könnt|r
    .collect 5210,1
    .disablecheckbox
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .dungeon DM << !Human
step
    .goto StormwindClassic,63.982,75.338
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_General Marcus Jonathan|r
    .turnin 120 >> Gebt die Quest Botschaft nach Sturmwind ab
    .accept 121 >> Akzeptiert die Quest Botschaft nach Sturmwind
    .target General Marcus Jonathan
    .dungeon DM << !Human
step
    .goto Elwynn Forest,41.71,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Smith Argus|r
	.target Smith Argus
    .turnin 118 >> Gebt die Quest Der Preis für Hufeisen ab
    .accept 119 >> Akzeptiert die Quest Zurück zu Verner
    .dungeon DM << !Human
step << Human
    .dungeon !DM
    .cooldown item,6948,>120,1
    .hs >> Benutzt euren Ruhestein nach Seenhain
    .zoneskip Redridge Mountains
step << Human
#optional
.dungeon !DM
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .fly Redridge >> Fliegt ins Rotkammgebirge
    .target Dungar Longdrink
    .zoneskip Redridge Mountains
step
    #label BMenace
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Marris|r
    .goto Redridge Mountains,33.50,48.97
    .accept 20 >> Akzeptiert die Quest Bedrohung durch die Blackrock
    .target Marshal Marris
    .xp <18,1
step
    .goto Redridge Mountains,30.97,47.27
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verner Gutmark|r
	.target Verner Osgood
    .turnin 119 >> Gebt die Quest Zurück zu Verner ab
step
    .goto Redridge Mountains,30.97,47.27
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verner Gutmark|r
	.target Verner Osgood
    .accept 124 >> Akzeptiert die Quest Das Bellen der Gnolle
    .accept 122 >> Akzeptiert die Quest Bauchschuppen
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Magistrat Solomon|r
	.target Magistrate Solomon
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    .turnin 121 >> Gebt die Quest Botschaft nach Sturmwind ab
step
    .goto Redridge Mountains,29.71,44.26
    .target Bailiff Conacher
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Büttel Conacher|r
    .accept 91 >> Das Gesetz des Solomon annehmen
step
    .goto Redridge Mountains,26.75,46.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tKlickt auf das |cRXP_FRIENDLY_GESUCHT Poster|r
    .accept 180 >> GESUCHT: Leutnant Fangor annehmen
step
    .goto Redridge Mountains,21.85,46.32
    .target Martie Jainrose
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 130 >> Gebt die Quest Besuch im Kräuterladen ab
    .accept 131 >> Akzeptiert die Quest Narzissen für eine Dame
    .accept 34 >> Akzeptiert die Quest Ein ungebetener Gast
step
#optional
	#completewith BayingOfGnolls
	>>Tötet |cRXP_ENEMY_Schwarzer Großdrachenwelpe|r. Plündert sie für |cRXP_LOOT_Welpenbauchschuppe|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
step << !Rogue
    #label BayingOfGnolls
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,22.5,35.7,0
    >>Tötet |cRXP_ENEMY_Schläger der Rotkammgnolle|r und |cRXP_ENEMY_Mystiker der Rotkammgnolle|r. Plündert sie für |cRXP_LOOT_Eisenspitze|r und |cRXP_LOOT_Eisenniete|r
    .complete 124,1 --Redridge Brute (10)
    .complete 124,2 --Redridge Mystic (8)
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
	.mob Redridge Mystic
	.mob Redridge Brute
step << Rogue
    #sticky
    #completewith next
    #label BayingOfGnolls
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,22.5,35.7,0
    >>Tötet die |cRXP_ENEMY_Redridge Brutes|r und die |cRXP_ENEMY_Redridge Mystics|r. Plündert sie für ihre |cRXP_LOOT_Eisen Pikes|r und |cRXP_LOOT_Eisen Rivets|r. |cRXP_WARN_Macht Fortschritt bei dieser Quest auf eurem Weg zu Althers Mühle. Ihr werdet sie auf dem Rückweg abschließen|r
    .complete 124,1 --Redridge Brute (10)
    .complete 124,2 --Redridge Mystic (8)
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
	.mob Redridge Mystic
	.mob Redridge Brute
step << Rogue
    .goto 1433,51.846,45.116
    >>|cRXP_WARN_Ihr MÜSST dies für eure|r |T132290:0|t[Gifte]|cRXP_WARN_ Quest später machen|r
    >>|cRXP_WARN_Steht auf dem Wegpunkt. Positioniert eure Kamera und euren Cursor, bis ihr 3 |cRXP_PICK_Übungsschließkisten|r gleichzeitig anklicken könnt, ohne das ihr euch bewegen müsst|r
    .skill lockpicking,80 >>|cRXP_WARN_Öffnet die |cRXP_PICK_Übungsschließkassette|r am Boden in Althers Mühle, bis euer|r |T136058:0|t[Schlossknacken] 80 erreicht|r
step << Rogue
	.goto Redridge Mountains,52.05,44.69
    >>Öffnet die |cRXP_PICK_Lucius's Schließkassette|r. Sammelt die Beute für die |cRXP_LOOT_Marke der Diebeskunst|r
    .complete 2282,1 --Token of Thievery (1)
step << Rogue
    #label BayingOfGnolls
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,22.5,35.7,0
    >>Beenden killing |cRXP_ENEMY_Redridge Brutes|r und |cRXP_ENEMY_Redridge Mystics|r. Plündert sie für |cRXP_LOOT_Iron Pikes|r und |cRXP_LOOT_Iron Rivets|r
    .complete 124,1 --Redridge Brute (10)
    .complete 124,2 --Redridge Mystic (8)
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
	.mob Redridge Mystic
	.mob Redridge Brute
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_läuft im Gasthaus herum|r
	.target Darcy
    .goto Redridge Mountains,26.80,44.30
    .turnin 131 >> Gebt die Quest Narzissen für eine Dame ab
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verner Gutmark|r
	.target Verner Osgood
    .goto Redridge Mountains,31.00,47.30
    .turnin 124 >> Gebt die Quest Das Bellen der Gnolle ab
    .accept 126 >> Geheul in den Hügeln annehmen
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Großknecht Oslow|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.13,48.63
    .turnin 89 >> Gebt die Quest Die Immerruhbrücke ab
step << Rogue
    .goto Redridge Mountains,28.07,52.02
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lucius|r
    .turnin 2282 >> Gebt die Quest Althers Mühle ab
    .target Lucius
step << Rogue
#label xp20
    >> Ihr solltet hier Stufe 20 sein, falls nicht, macht die Murloc-Quests im Osten und farmt bis ihr Stufe 20 seid
    .xp 20


----Start of Rogue Poison and Deadmines section----

step << Rogue
    .goto Redridge Mountains,30.6,59.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
    .fly Stormwind >> Fliege nach Sturmwind
    .target Ariena Stormfeather
    .zoneskip Westfall
step << Rogue
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osborne|r
    >>|cRXP_WARN_Passt auf mit eurem Geldmanagement von hier an. Ihr braucht 75 Silber übrig, sobald ihr die Feuchtgebiete erreicht, um eine Rune freizuschalten|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Osborne the Night Man
step << Rogue
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> Betrete das SI:7 Hauptquartier. Geh die Treppe hoch in Richtung |cRXP_FRIENDLY_Meister Mathias Shaw|r
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 2360 >> Akzeptiert die Quest Mathias und die Defias
    .goto StormwindClassic,75.78,59.84
    .target Master Mathias Shaw
step << !Rogue
.dungeon DM
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
    .fly Westfall >> Fliegt nach Westfall
    .target Ariena Stormfeather
step << Rogue
#completewith next
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .fly Westfall >> Fliegt nach Westfall
    .target Dungar Longdrink
    .zoneskip Westfall
step << Rogue
.dungeon !DM
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .turnin 132 >> Gebt die Quest Die Bruderschaft der Defias ab
    .accept 135 >> Die Bruderschaft der Defias annehmen
    .target Gryan Stoutmantle
step
.dungeon DM
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .turnin 141 >> Gebt die Quest Die Bruderschaft der Defias ab
    .accept 142 >> Die Bruderschaft der Defias annehmen
    .target Gryan Stoutmantle
step
.dungeon DM
    #completewith next
    .goto Westfall,44.50,69.62,55 >> Reist nach Mondbruch
step
.dungeon DM
    .goto Westfall,44.50,69.62
    .line Westfall,44.50,69.62,44.50,69.62,45.08,69.40,45.21,69.35,45.63,68.69,45.85,67.73,45.62,66.99,45.52,65.71,45.61,64.95,44.28,63.88,44.26,62.80,43.60,59.89,43.37,58.42,43.26,57.01,43.12,54.24,42.15,52.74,41.74,51.42,41.48,49.89,40.91,48.71,38.93,46.05,38.51,45.46,37.85,45.54,36.60,44.21,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.26,43.77,36.87,42.87,36.95,40.85,37.04,39.79,37.91,36.98,39.06,35.58,40.48,34.31,41.27,32.87,41.76,31.27,42.26,30.26,43.20,28.99,44.29,28.19,44.64,26.85,44.57,24.94,44.64,26.85,44.29,28.19,43.20,28.99,42.26,30.26,41.76,31.27,41.27,32.87,40.48,34.31,39.06,35.58,37.91,36.98,37.04,39.79,36.95,40.85,36.87,42.87,36.26,43.77,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.60,44.21,37.85,45.54,38.51,45.46,38.93,46.05,40.91,48.71,41.48,49.89,41.74,51.42,42.15,52.74,43.12,54.24,43.26,57.01,43.37,58.42,43.60,59.89,44.26,62.80,44.28,63.88,45.61,64.95,45.52,65.71,45.62,66.99,45.85,67.73,45.63,68.69,45.21,69.35,45.08,69.40,44.50,69.62
    >>Tötet den |cRXP_ENEMY_Bote der Defias|r. Plündert ihn für |cRXP_LOOT_Eine mysteriöse Nachricht|r
    >>|cRXP_WARN_Der |cRXP_ENEMY_Bote der Defias|r spawnt in Mondbruch. Er läuft entlang der Straße nördlich von Mondbruch zum Goldküstensteinbruch und zum Jangoschacht. Falls ihr ihn nicht entlang der Straße seht, wartet, bis er in Mondbruch spawnt|r
    >>|cRXP_WARN_Er respawnt nach 4-5 Minuten|r
    .complete 142,1 -- A Mysterious Message (1)
    .unitscan Defias Messenger
step
.dungeon DM
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .turnin 142 >> Gebt die Quest Die Bruderschaft der Defias ab
    .target Gryan Stoutmantle
step
.dungeon DM
    .goto Westfall,55.68,47.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Der Verräter der Defias|r
    >>|cRXP_WARN_Möglicherweise müsst ihr auf |cRXP_FRIENDLY_Der Verräter der Defias|r warten, falls er nicht da ist|r
    .accept 155 >> Die Bruderschaft der Defias annehmen
    .target The Defias Traitor
step
.dungeon DM
    .goto Westfall,42.56,71.71
    >>Begleitet |cRXP_FRIENDLY_Der Verräter der Defias|r zu den Todesminen
    >>|cRXP_WARN_Bleibt neben |cRXP_FRIENDLY_Der Verräter der Defias|r jederzeit! Seid bereit, |cRXP_ENEMY_Die Defias|r zu bekämpfen, wenn ihr Mondbruch erreicht|r
    .complete 155,1 -- Escort The Defias Traitor to discover where VanCleef is hiding (1)
    .target The Defias Traitor
step
.dungeon DM
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .turnin 155 >> Gebt die Quest Die Bruderschaft der Defias ab
    .accept 166 >> Die Bruderschaft der Defias annehmen
    .target Gryan Stoutmantle
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Späherin Riell|r sie steht oben auf dem Turm
    .accept 214 >> Akzeptiert Rote Seidenkopftücher
    .goto Westfall,56.67,47.35
    .target Scout Riell
step << Rogue
    #optional
    #completewith TowerKey
    +|cRXP_WARN_==ACHTET AUF DEN FOLGENDEN BEREICH==|r
    >>|cRXP_WARN_Drückt Escape, dann geht in -> Optionen -> Steuerung|r
    >>|cRXP_WARN_Überprüft "Aktiviere Interaktionstaste" und bindet die "Interagieren mit Ziel" Option auf eine Taste|r
    >>|cRXP_WARN_Zusätzlich wird empfohlen, dass ihr Gegner-Namensplaketten (Standardtaste: V) aktiviert, da es euch erlaubt, Feinde hinter einigen der Ecken innerhalb des Turms zu sehen|r
step << Rogue
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Agentin Kearnen|r
    >>|cRXP_WARN_Ihr MÜSST diese Quest für die|r |T132290:0|t[Gifte] annehmen
    .turnin 2360 >> Gebt die Quest Mathias und die Defias ab
    .accept 2359 >> Klavens Turm annehmen
    .target Agent Kearnen
step << Rogue
    #label TowerKey
    #loop
    .goto Westfall,71.49,73.49,0
    .goto Westfall,71.01,75.72,0
    .goto Westfall,69.58,73.07,0
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07,30,0
    >>|T133644:0|t[Taschendiebstahl] |cRXP_ENEMY_Missgestaltete Drohne der Defias|r. Plündert es für |cRXP_LOOT_Turmschlüssel der Defias|r
    >>|cRXP_WARN_Ihr müsst in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_sein, um|r |T133644:0|t[Taschendiebstahl] zu nutzen
    >>|cRXP_WARN_Die |cRXP_ENEMY_Missgestaltete Drohne der Defias|r taucht am Eingang des Turms auf und patrouilliert um das Äußere des Turms herum|r
    >>|cRXP_WARN_Passt auf, da er sehr viel Schaden verursacht. Falls von Euch|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_abbricht, nutzt schnell|r |T132307:0|t[Sprinten] |cRXP_WARN_und lauft weg|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> HIER KLICKEN für eine Videoanleitung
    .mob Malformed Defias Drone
step << Rogue
    #optional
    #completewith Mortwake
    +|cRXP_WARN_Legt|r |T135641:0|t[Krummholzdolch] |cRXP_WARN_für diese Quest an, wenn ihr nicht bereits einen|r |T135641:0|t[Dolch] |cRXP_WARN_angelegt habt|r
    .use 15396
    .itemcount 15396,1
step << Rogue
    #label Mortwake
    .goto 1436,70.421,74.031
    >>|cRXP_WARN_Reist bis zum 2. Stockwerk des Turms hinauf. Während ihr in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_seid und die |cRXP_ENEMY_Turmwachposten der Defias|r nicht neben euch sind, springt auf den Stuhl, dann auf die Lampe, dann auf das Bücherregal oben auf dem Wegpunkt|r
    >>|cRXP_WARN_Stoppt manuell|r |T132320:0|t[Verstohlenheit]|cRXP_WARN_, dann drückt von Euch "Interagieren mit Ziel" Taste, um das |cRXP_PICK_Dämmerwaldtruhe|r zu öffnen. Plündert sie für|r |cRXP_LOOT_Klaven Mortwakes Tagebuch|r
    >>|cRXP_WARN_NOTIZ: Eure|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_wird kurz nachdem ihr gelootet habt nicht funktionieren|r |cRXP_LOOT_Klaven Mortwakes Tagebuch|r
    >>|cRXP_WARN_Seid bereit zu laufen, wenn ihr nicht die |cRXP_ENEMY_Turmwachposten der Defias|r im 2. Stockwerk tötet. Sie werden euch wahrscheinlich permanent angreifen (aber nicht treffen), wenn ihr auf dem Bücherregal steht, da es ein Ausweich-Platz ist|r
    >>|cRXP_WARN_Wenn ihr einen|r |T135641:0|t[Dolch] |cRXP_WARN_in euren Taschen oder ausgerüstet habt, könnt ihr|r |T132282:0|t[Hinterhalt] |cRXP_WARN_auf die |cRXP_ENEMY_Turmpatrouille der Defias|r und |cRXP_ENEMY_Turmwachposten der Defias|r im Inneren wirken, um sie sofort zu töten. Seid bereit zu laufen, nachdem ihr den ersten |cRXP_ENEMY_Turmwachposten der Defias|r getötet habt und denkt daran, dass ihr von oben getroffen werden könnt. Das ist langsamer, aber VIEL sicherer|r
    >>|cRXP_WARN_Passt auf, da |cRXP_ENEMY_Missgestaltete Drohne der Defias|r und |cRXP_ENEMY_Drohne der Defias|r am Eingang des Turms sein können, wenn ihr aus ihm laufen müsst|r
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> HIER KLICKEN für eine Videoanleitung
    .mob Defias Tower Patroller
    .mob Defias Tower Sentry
step << !Dwarf Rogue
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >> Crafte ein |T134437:0|t[Gegengift]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>|cRXP_WARN_Benutzt |T134437:0|t[Gegengift] aus eurer Taschen, um den |T136230:0|t[Berührung von Zanzil]-Debuff zu entfernen|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Dwarf Rogue
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>|cRXP_WARN_Wirkt|T136225:0|t[Steingestalt],um|T136230:0|t[Berührung von Zanzil] Debuff zu entfernen|r
    .aura -9991
step << Rogue
    #optional
    #completewith KlavenEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fliege nach Sturmwind
    .target Thor
step << !Dwarf Rogue
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >> Lauf in Richtung |cRXP_FRIENDLY_Shaina Fuller|r
    .aura -9991
step << !Dwarf Rogue
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Wenn ihr einen|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_oder|r |T625999:0|t|cFFFF7C0ADruiden|r |cRXP_WARN_Freund habt, bittet sie, die|r |T136230:0|t[Berührung von Zanzil] |cRXP_WARN_stattdessen für euch zu entfernen|r
    .skill firstaid,80 >> |cRXP_WARN_Steigert eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_auf 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Wenn ihr einen|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_oder|r |T625999:0|t|cFFFF7C0ADruiden|r |cRXP_WARN_Freund habt, bittet sie, die|r |T136230:0|t[Berührung von Zanzil] |cRXP_WARN_stattdessen für euch zu entfernen|r
    .train 7934 >> |cRXP_WARN_Trainiert|r |T134437:0|t[Gegengift]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >> Crafte ein |T134437:0|t[Gegengift]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>|cRXP_WARN_Benutzt |T134437:0|t[Gegengift] aus eurer Taschen, um den |T136230:0|t[Berührung von Zanzil]-Debuff zu entfernen|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Rogue
    #optional
    #requires AntiVenomEnd2 << Rogue
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >> Betrete das SI:7 Hauptquartier. Geh die Treppe hoch in Richtung |cRXP_FRIENDLY_Meister Mathias Shaw|r
step << Rogue
    #label KlavenEnd
    #requires AntiVenomEnd2 << Rogue
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Master Mathias Shaw|r
    >>|cRXP_WARN_Erinnert euch, wieder auf eure Hauptwaffe zu wechseln, sofern ihr sie durch einen|r |T135641:0|t[Dolch] |cRXP_WARN_gewechselt habt|r << Rogue
    .turnin 2359 >> Gebt die Quest Klavens Turm ab
    .turnin 135 >> Gebt die Quest Die Bruderschaft der Defias ab
    .target Master Mathias Shaw
step << Rogue
#completewith next
.dungeon DM
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .fly Westfall >> Fliegt nach Westfall
    .target Dungar Longdrink
    .zoneskip Westfall
step
.dungeon DM
    .goto Westfall,60.4,72.2
    .goto Westfall,40.4,71.6
    .subzone 1581 >> Jetzt solltet ihr nach einer Gruppe für die Todesminen suchen
    >>Tötet Gnolle während du eine Gruppe für die Todesminen zusammenstellst
step
.dungeon DM
    .goto Westfall,42.55,71.69
    .subzone 1581 >> Reist zu den Todesminen
step
.dungeon DM
    #completewith EnterDM
    >>Tötet die |cRXP_ENEMY_Defias|r. Plündert sie für ihre |cRXP_LOOT_Seidenkopftücher|r
    >>|cRXP_WARN_Ihr könnt dies auch nach der Instanz abschließen|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
.dungeon DM
    #completewith next
    >>Tötet |cRXP_ENEMY_Skelettminenarbeiter|r, |cRXP_ENEMY_Untoter Dynamitexperte|r und |cRXP_ENEMY_Untoter Ausgräber|r. Plündert sie für |cRXP_LOOT_Gewerkschaftsausweis eines Minenarbeiters|r
    >>|cRXP_WARN_Es ist außerhalb der Instanz abzuschließen|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
.dungeon DM
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Tötet |cRXP_ENEMY_Großknecht Thistlenettle|r. Plündert ihn für |cRXP_LOOT_Thistlenettles Abzeichen|r
    >>|cRXP_WARN_Es ist außerhalb der Instanz abzuschließen|r
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
step
.dungeon DM
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Tötet |cRXP_ENEMY_Skelettminenarbeiter|r, |cRXP_ENEMY_Untoter Dynamitexperte|r und |cRXP_ENEMY_Untoter Ausgräber|r. Plündert sie für |cRXP_LOOT_Gewerkschaftsausweis eines Minenarbeiters|r
    >>|cRXP_WARN_Es ist außerhalb der Instanz abzuschließen|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
.dungeon DM
    #label EnterDM
    .goto 1415,40.94,79.76,25,0
    .goto 1415,40.86,79.62,20,0
    .goto 1415,40.678,79.578
    .subzone 1581,2 >> Betretet die Instanz Die Todesminen 
step
.dungeon DM
    #completewith DMend
    >>Tötet die |cRXP_ENEMY_Defias|r.in den Todesminen Plündert sie für |cRXP_LOOT_Rotes Seidenkopftuch|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
.dungeon DM
    >>Tötet |cRXP_ENEMY_Sneed|r. Plündert Ihn für |cRXP_LOOT_Gnoam Sprecklesprocket|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
step
.dungeon DM
    >>Tötet |cRXP_ENEMY_Edwin VanCleef|r. Plündert ihn für |cRXP_LOOT_Van Cleevs Kopf|r und |T133471:0|t[|cRXP_LOOT_Ein nie abgeschickter Brief|r]
    >>|cRXP_WARN_benutze |T133471:0|t[|cRXP_LOOT_Ein nie abgeschickter Brief|r], um die Quest zu beginnen|r
    .collect 2874,1,373 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .accept 373 >> Der nie verschickte Brief annehmen
    .use 2874 -- An Unsent Letter
step
.dungeon DM
    #label DMend
    #completewith next
    .goto Westfall,56.33,47.52,100 >> Reist zur Späherkuppe
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Gryan Starkmantel|r und |cRXP_FRIENDLY_Späherin Riell|r oben auf dem Turm
    .turnin 166 >> Gebt die Quest Die Bruderschaft der Defias ab
    .goto Westfall,56.33,47.52
    .turnin -214 >> Gebt die Quest Rote Seidenkopftücher ab
    .goto Westfall,56.67,47.35
    .target Gryan Stoutmantle
    .target Scout Riell
step
.dungeon DM
    #completewith next
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fliege nach Sturmwind
    .target Thor
step
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wilder Thistlenettle|r innerhalb
    .turnin 167 >> Gebt die Quest Oh Bruder... ab
    .turnin 168 >> Gebt die Quest Die Suche nach Andenken ab
    .target Wilder Thistlenettle
    .dungeon DM
step
    #label ShoniEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shoni die Schtille|r
    .turnin 2040 >> Gebt die Quest Unterirdischer Angriff ab
    .goto StormwindClassic,55.510,12.504
    .target Shoni the Shilent
    .dungeon DM
step
    .dungeon DM
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .fly Redridge >> Fliegt ins Rotkammgebirge
    .target Dungar Longdrink
    .zoneskip Redridge Mountains


----End of Rogue Poison and Deadmines section----


step
    #optional
    #completewith orcs
    >>Tötet |cRXP_ENEMY_Terrorkondor|r. Plündert sie für ihr |cRXP_LOOT_Zähes Kondorfleisch|r
    >>Tötet |cRXP_ENEMY_Schwarzer Großdrachenwelpe|r. Plündert sie für |cRXP_LOOT_Welpenbauchschuppe|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob +Black Dragon Whelp
    .collect 1080,5,92,1
    .mob +Dire Condor
    .subzoneskip 997--Render's Valley
step
#completewith next
    >>Tötet |cRXP_ENEMY_Großer Geiferzahn|r. Plündert sie für |cRXP_LOOT_Große Geiferzahnschnauze|r
    .collect 2296,5,92,1
    .mob Great Goretusk
step
    .goto Redridge Mountains,49.0,70.0
    >>Tötet |cRXP_ENEMY_Murlocküstenschläger|r und |cRXP_ENEMY_Schwacher Murlocgezeitenrufer|r. Plündert sie für ihre |cRXP_LOOT_Murlocflosse|r und |cRXP_LOOT_Gefleckter Sonnenfisch|r
	>>|cRXP_WARN_Passt auf, dieses Gebiet ist ein Hyperspawn, das heißt die |cRXP_ENEMY_Murlocs|r respawnen schnell nach|r
    .complete 127,1
    .collect 1468,8,150,1
    .mob Murloc Shorestriker
    .mob Murloc Minor Tidecaller
step << Warlock
    #season 2
    #sticky
    #label Incinerate
    .goto Redridge Mountains,76.8,82.2
    .train 416015 >>Tötet |cRXP_ENEMY_Incinerator Gar'im|r |cRXP_WARN_(lvl 23 elite)|r. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune of Verbrennen|r]
    .use 211477>>Diese Rune kann etwas schwierig sein, aber es ist sehr machbar, haltet Gar'im einfach verängstigt, ihr werdet diese Rune später für eine Quest brauchen.
    .collect 211477,1
    .disablecheckbox
    .unitscan Incinerator Gar'im
step
    #loop
    >>Tötet |cRXP_ENEMY_Grunzer der Blackrock|r und |cRXP_ENEMY_Kundschafter der Blackrock|r. Plündert sie für |cRXP_LOOT_Kampferprobte Axt|r
	>>Passt auf, die |cRXP_WARN_Kundschafter der Blackrock|cRXP_ENEMY_ wirken |T132149:0|t[Netz]|r auf euch|r
    .goto Redridge Mountains,74.00,79.00,60,0
    .goto Redridge Mountains,76.18,83.39,60,0
    .goto Redridge Mountains,77.80,68.50,60,0
    .goto Redridge Mountains,70.11,77.34,60,0
    .goto Redridge Mountains,74.00,79.00,60,0
    .goto Redridge Mountains,74.00,79.00,0
    .complete 20,1 --Battleworn Axe (10)
    .mob Blackrock Grunt
	.mob Blackrock Outrunner
step
    #requires Incinerate<< Warlock
    .goto Redridge Mountains,61.37,77.10
    >>Tötet |cRXP_ENEMY_Terrorkondor|r. Plündert sie für ihr |cRXP_LOOT_Zähes Kondorfleisch|r
    >>Tötet |cRXP_ENEMY_Schwarzer Großdrachenwelpe|r. Plündert sie für |cRXP_LOOT_Welpenbauchschuppe|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob +Black Dragon Whelp
    .collect 1080,5,92,1
    .mob +Dire Condor
step << Rogue
    .goto Redridge Mountains,74.00,79.00,60,0
    .goto Redridge Mountains,76.18,83.39,60,0
    .goto Redridge Mountains,77.80,68.50,60,0
    .goto Redridge Mountains,70.11,77.34,60,0
    .goto Redridge Mountains,74.00,79.00,60,0
    .goto Redridge Mountains,74.00,79.00,0
    .xp 22-18500 >> Farmt, bis ihr noch 18500 Erfahrung bis Stufe 22 braucht
    .itemcount 1080,5 --Tough condor meat (5)
    .itemcount 2296,5 --Great goretusk snout (5)
    .itemcount 1221,5 --Underbelly Whelp Scale (6)
step
    #softcore
    .deathskip >> Sterbt und respawnt beim Geistheiler. Ihr bekommt die Auferstehungskrankheit und könnt einige Zeit keine Mobs bekämpfen.
    .itemcount 1080,5 --Tough condor meat (5)
    .itemcount 2296,5 --Great goretusk snout (5)
    .itemcount 1221,5 --Underbelly Whelp Scale (6)
    .itemcount 3014,10 --Battleworn Axe (10)
    .xp <21.25
step
    #loop
    >>Tötet |cRXP_ENEMY_Großer Geiferzahn|r. Plündert sie für |cRXP_LOOT_Große Geiferzahnschnauze|r
    .goto Redridge Mountains,15.73,52.83,60,0
    .goto Redridge Mountains,32.25,70.20,60,0
    .goto Redridge Mountains,31.02,72.14,60,0
    .goto Redridge Mountains,15.73,52.83,0
    .goto Redridge Mountains,32.25,70.20,0
    .goto Redridge Mountains,31.02,72.14,0
    .collect 2296,5,92,1
    .mob Great Goretusk
step << Rogue
    .xp 22-18500 >> Farmt Mobs, bis ihr noch 18500 Erfahrung bis Stufe 22 braucht
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Küchenchefin Breanna|r
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .accept 92 >> Akzeptiert die Quest Rotkammgulasch
    .turnin 92 >> Gebt die Quest Rotkammgulasch ab
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dockmeister Baren|r
	.target Dockmaster Baren
    .goto Redridge Mountains,27.72,47.38
    .turnin 127 >> Gebt die Quest Fischhandel ab
    .accept 150 >> Murlocwilderer annehmen
    .turnin 150 >> Gebt die Quest Murlocwilderer ab
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verner Gutmark|r
	.target Verner Osgood
    .goto Redridge Mountains,31.00,47.30
    .turnin 122 >> Gebt die Quest Bauchschuppen ab
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Marris|r
	.target Marshal Marris
    .goto Redridge Mountains,33.50,48.97
    .turnin 20 >> Gebt die Quest Bedrohung durch die Blackrock ab
step
    .goto Redridge Mountains,30.59,59.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
	.target Ariena Stormfeather
    .fly Stormwind >> Flieg nach Sturmwind
step << !Mage/Paladin/Warlock
    .goto StormwindClassic,52.623,65.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Allison|r
    .home >> Setzt euren Ruhestein in Sturmwind
    .target Innkeeper Allison
step << Mage
    .goto Stormwind City,39.681,79.538
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Larimaine Purdue|r
    .train 3561 >> Lernt |T135763:0|t[Teleportieren: Sturmwind]
    .target +Larimaine Purdue
step << Mage
    .goto Stormwind City,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jennea|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Elsharin
	.target Jennea Cannon
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wu|r oder |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Wu Shen
    .target Ilsa Corbin
step << Rogue
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osborne|r
    >>|cRXP_WARN_Stellt sicher, dass ihr nach dem Training noch 75 Silber habt. Ihr werdet es bald brauchen, um einen Runen freizuschalten. Kauft nur notwendige Zauber|r
    .train 1856 >> |cRXP_WARN_Stellt sicher, dass ihr |T132331:0|t[Verschwinden]|r trainiert.|cRXP_WARN_ Ihr werdet es brauchen, um einen Runen bald freizuschalten|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Osborne the Night Man
step << Paladin
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Arthur der Treue|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Arthur the Faithful
step << Priest
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hohepriesterin Laurena|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target High Priestess Laurena
step << Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Einris Brightspear|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Einris Brightspear
step
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >> Geh zur Tiefeneisenbahn. Nehme sie in Richtung Ironforge
step << Warlock
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wilddornrose|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Briarthorn
step << Warlock
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jubaal Leichenfund|r
    .vendor 6382 >> |cRXP_BUY_Buy a|r |T133738:0|t[Grimoire of Qual (Rang 2)]
    .collect 16346,1
    .disablecheckbox
    .target Jubahl Corpseseeker
    .train 427733,1 --skips if you have a felguard
step << Mage
    .goto Ironforge,25.50,7.04
    >>Sprecht mit |cRXP_FRIENDLY_Milstaff|r
    .train 3562 >> Lerne |T135757:0|t[Teleportieren: Ironforge]
    .target Milstaff Stormeye
step
    #completewith next
    .goto Dun Morogh,53.48,37.50,30,0
    .goto Dun Morogh,54.04,38.60,30,0
    .goto Dun Morogh,59.43,42.85,150 >> Geht zum Skip-Punkt. Haltet euch auf der linken Seite des Berges
    .subzoneskip 150 -- Skips if already in menethil
    .subzoneskip 2104 -- Skips if already in menethil inn
step
    .goto Dun Morogh,60.18,43.01,12,0
    .goto Dun Morogh,60.42,43.75,12,0
    .goto Dun Morogh,60.71,44.18,4,0
    .goto Dun Morogh,60.95,44.16,6,0
    .goto Dun Morogh,61.45,41.68,10,0
    .goto Dun Morogh,61.76,41.50,4,0
    .goto Dun Morogh,61.84,41.63,4,0
    .goto Dun Morogh,62.01,41.30,8,0
    .goto Dun Morogh,61.79,39.71,15,0
    .goto Dun Morogh,61.48,36.85,12,0
    .goto Dun Morogh,61.46,32.76,15,0
    .goto Dun Morogh,61.38,28.92,30,0
    .goto Dun Morogh,60.91,22.82,30,0
    .goto Dun Morogh,60.51,16.20,5,0
    .goto Dun Morogh,60.52,15.81,5,0
    .goto Dun Morogh,60.74,15.16,15,0
    .goto Dun Morogh,60.41,14.35,8,0
    .goto Dun Morogh,60.64,13.89,6,0
    .goto Dun Morogh,61.40,13.27,10,0
    .goto Dun Morogh,61.52,12.58,8,0
    >>|cRXP_WARN_Macht den Dun Morogh -> Sumpfland skip|r ohne zu sterben
    >>|cRXP_WARN_Esst nach jedem Sturz bis zur vollen Gesundheit, falls ihr euch nicht sicher fühlt|r
    .link https://youtu.be/QcEUvwu49KI?t=73 >> |cRXP_WARN_KLICKT HIER als Referenz (es wird DRINGEND empfohlen, das zu tun)|r
    .goto Dun Morogh,60.65,11.38,20 >>Springt vorsichtig die Bergseite hinab
    .isQuestAvailable 983
    .subzoneskip 150 -- Skips if already in menethil
    .subzoneskip 2104 -- Skips if already in menethil inn
step
    .goto Dun Morogh,60.80,10.33,10,0
    .goto Dun Morogh,60.61,9.73,8,0
    .goto Wetlands,18.79,72.53,12,0
    .goto Wetlands,18.70,70.97,12,0
    .goto Wetlands,18.50,69.39,12,0
    .goto Wetlands,17.62,68.35,15,0
    .goto Wetlands,17.00,67.68,12,0
    .goto Wetlands,15.96,67.15,12,0
    .goto Wetlands,15.07,66.41,20,0
    .goto Wetlands,15.31,65.47,20,0
    .goto Wetlands,15.10,63.72,12,0
    >>|cRXP_WARN_Macht den Dun Morogh -> Sumpfland skip|r ohne zu sterben
    >>|cRXP_WARN_Seid vorsichtig vor |cRXP_ENEMY_Schlicker|r (selten), bevor ihr zur Küste hinuntergeht (falls er up ist)|r
    >>|cRXP_WARN_Seid vorsichtig vor den |cRXP_ENEMY_Räuber der Blaukiemen|r im Westen, wenn ihr das Meer erreicht|r
    .link https://youtu.be/QcEUvwu49KI?t=336 >> |cRXP_WARN_Klickt hier für eine Anleitung (Es wird dringend empfohlen, dies zu tun.)|r
    .goto Wetlands,12.69,60.97,15 >> Laufe zum Hafen von Menethil
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
    .unitscan Sludginn
    .isQuestAvailable 983
    .subzoneskip 150 -- Skips if already in menethil
    .subzoneskip 2104 -- Skips if already in menethil inn
]])
