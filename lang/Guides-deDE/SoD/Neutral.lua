if GetLocale() ~= "deDE" then return end
local _,addon = ...
if addon.GetSeason() ~= 2 then return end
RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD/Hunter SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine << Warrior
#subgroup Brust << Hunter
#name NPCs Runen
#displayname Von Wut zerfressen - 25 (Sumpfland) << Warrior
#displayname Kobraschlächter - 25 (Sumpfland) << Hunter
#title Von Wut zerfressen << Warrior
#title Kobraschlächter << Hunter

step
    #season 2
    #completewith next
    .zone Wetlands >>Reist zum Sumpfland
step
    #season 2
    #completewith next
    .goto Wetlands,51.914,62.692,30 >> Betretet die Thelgenfelsen-Höhle
    .train 425446,1 << Warrior
    .train 410115,1 << Hunter
step
    #season 2
    .goto Wetlands,47.24,65.34
    >>Tötet |cRXP_ENEMY_Carrodin|r. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune of Verzehrende Wut|r] << Warrior
    >>Tötet |cRXP_ENEMY_Carrodin|r. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune of Kobraschlächter|r] << Hunter
    .collect 210573,1 << Warrior --Rune of Consuming Rage (1)
    .collect 211205,1 << Hunter --Rune of Aspect of Cobra Slayer (1)
    .mob Carrodin
    .train 425446,1 << Warrior
    .train 410115,1 << Hunter
step << Warrior
    #season 2
    .train 425446 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Verzehrenden Wut|r] |cRXP_WARN_zum Trainieren von|r |T136088:0|t[Von Wut zerfressen]
    .use 210573
    .itemcount 210573,1
step << Hunter
    #season 2
    .train 410115 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Kobraschlächters|r] |cRXP_WARN_zum Trainieren von|r |T136040:0|t[Kobraschlächter]
    .use 211205
    .itemcount 211205,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Vergiften - 25 (Hügellandhof)
#title Vergiften


    --Rune of Envenom

step
    #season 2
    #completewith next
	.goto Hillsbrad Foothills,76.72,46.22,60 >> Reist zur Burg Durnholde
step
    #season 2
    .goto Hillsbrad Foothills,80.2,39.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kris Legace|r
    >>|cRXP_BUY_Kauft|r |T133469:0|t[Heißer Tipp] |cRXP_BUY_von ihr|r
    .collect 210330,1 --Hot Tip (1)
    .target Kris Legace
    .train 400102,1
step
    #season 2
    .use 210330 >>Öffnet den |T133469:0|t[Heißer Tipp]
    .collect 210323,1 --Safe Combination (1)
    .collect 210329,1 --Hillsbrad Treasure Map (1)
    .train 400102,1
step
    #completewith next
    .zone Western Plaguelands >>Lauf in die Westlichen Pestländer
step
    #season 2
    .goto Western Plaguelands,59.4,84.5
    >>Öffnet |cRXP_PICK_Rostiger Tresor|r im Wasser für |T134419:0|t[|cRXP_FRIENDLY_Rune des Toxins|r]
    .collect 210322,1 --Rune of Venom (1)
    .train 400102,1
step
    #season 2
    .train 400102 >>Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Toxins|r]
    .use 210322
    .itemcount 210322,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Halsabschneider - 25 (Dämmerwald)
#title Halsabschneider

step
    #season 2
    .goto Duskwood,81.24,71.86
    >>Öffnet die |cRXP_PICK_Opfergabenkiste|r auf dem Friedhof der stillen Gärten für einen |T133343:0|t[|cRXP_LOOT_Engraved Silber Läuten|r]
    .collect 210251,1 --Engraved Silver Ring (1)
    .train 424988,1
step
    #season 2
    .goto Duskwood,48.5,79.9
    >>|T133644:0|tBenutzt die |T133345:0|t[Taschendiebstahl] auf |cRXP_ENEMY_Defias-Nachtläufer|r für |cRXP_LOOT_eingravierter Goldring|r
    .collect 210250,1 --Engraved Gold Ring (1)
    .mob Defias Night Runner
    .train 424988,1
step
    #season 2
    #completewith next
    .goto Duskwood,19.9,44.6,60,0 >>Reist zur Rabenflucht-Statue
step
    #season 2
    .goto Duskwood,19.9,44.6
    .use 210250 >> |T134419:0|tLegt beide Ringe an und tippt /knien ein bei der Statue, um |cRXP_FRIENDLY_Rune des Messerstichs|r zu erhalten
    .use 210251
    .collect 210252,1 --Rune of Shiving (1)
    .train 424988,1
step
    #season 2
    .train 424988 >>Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Messerstichs|r] zum Trainieren von |T236280:0|t[Halsabschneider]
    .use 210252
    .itemcount 210252,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Wilde Stöße - 14 (Steinkrallengebirge)
#title Wilde Stöße

step << Druid
    .goto Stonetalon Mountains,80.2,90.6,60,0
    .goto Stonetalon Mountains,83.2,87.0,60,0
    .goto Stonetalon Mountains,71.6,86.6,60,0
    .goto Stonetalon Mountains,76.6,91.0,60,0
    .goto Stonetalon Mountains,80.2,90.6
    >>Tötet |cRXP_ENEMY_Grimmtotems|r. Plündert sie für die |T134233:0|t[|cRXP_FRIENDLY_Götze der Wildnis|r]
    .collect 210534,1 -- Idol of the Wild (1)
    .mob Grimtotem Mercenary
    .mob Grimtotem Brute
    .mob Grimtotem Sorcerer
    .mob Grimtotem Ruffian
    .train 410021,1
step << Druid
    .equip 18,210534 >> |cRXP_WARN_Legt die|r |T134233:0|t[|cRXP_FRIENDLY_Götze der Wildnis|r] an
    .use 210534
    .itemcount 210534,1
    .train 410021,1
step << Druid
    >>|cRXP_WARN_Wirkt|r |T136085:0|t[Nachwachsen] |cRXP_WARN_oder|r |T136041:0|t[Heilende Berührung] |cRXP_WARN_auf 10 verschiedene befreundete Bestien wie Jäger Begleiter/Druiden in Bärengestalt/Schamanen in Geisterwolf|r << Horde
    >>|cRXP_WARN_Wirkt|r |T136085:0|t[Nachwachsen] |cRXP_WARN_oder|r |T136041:0|t[Heilende Berührung] |cRXP_WARN_auf 10 verschiedene Befreundete Bestien wie Jäger-Begleiter oder Druiden in Bärengestalt|r << Alliance
    .train 410021 >> |cRXP_WARN_Benutzt die|r |T134233:0|t[|cRXP_FRIENDLY_Götze der Wildnis|r] |cRXP_WARN_um|r |T132143:0|t[Wilde Stöße] zum Trainieren
    .itemcount 210534,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Sternensog - 25 (Sumpfland)
#title Sternensog

step << Druid
    #completewith next
    +|cRXP_WARN_Dies ist auf Stufe 1 möglich, aber ihr werdet oft sterben müssen|r
    .train 424718,1
step << Druid
    .goto Wetlands,36.941,15.157
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grugimdern|r
    >>Er wird euch |T134052:0|t[|cRXP_WARN_Moorcheln|r] |cRXP_LOOT_geben|r
    .collect 210499,1 -- Marshroom (1)
    .skipgossip
    .target Grugimdern
    .train 424718,1
step << Druid
    #completewith next
    .goto Wetlands,31.187,18.328
    .cast 426019 >>|cRXP_WARN_Benutzt|r |T134052:0|t[|cRXP_LOOT_Moorcheln|r]|cRXP_WARN_, um sie zu essen|r
    .use 210499
    .train 424718,1
step << Druid
    .goto Wetlands,31.187,18.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vodyanoi|r
    .collect 210500,1 -- Rune of the Stars (1)
    .skipgossip
    .target Vodyanoi
    .train 424718,1
step << Druid
    .train 424718 >> Benutzt die |T134419:0|t[|cRXP_WARN_Rune der Sterne|r]|cRXP_FRIENDLY_, um|r |T135730:0|t[Sternensog] |cRXP_WARN_zu erlernen|r
    .use 210500
    .itemcount 210500,1
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust << Priest/Hunter/Druid/Warrior/Shaman
#subgroup Beine << Warlock/Paladin
#subgroup Handschuhe << Rogue
#subgroup Armschienen << Mage
#name NPCs Runen
#displayname Glücksfall - 25 (The Barrens) << Priest
#displayname Einsamer Wolf - 25 (The Barrens) << Hunter
#displayname Überleben des Stärkeren - 25 (The Barrens) << Druid
#displayname Kriegstreiber - 25 (The Barrens) << Warrior
#displayname Beidhändigkeitsspezialisierung - 25 (The Barrens) << Shaman
#displayname Dämonischer Pakt - 25 (The Barrens) << Warlock
#displayname Heilige Opferung - 25 (The Barrens) << Paladin
#displayname Zeit zurückdrehen - 25 (The Barrens) << Mage
#displayname Parierdolch - 25 (The Barrens) << Rogue
#next Kreuzfahrerstoß - 4 (Wald von Elwynn) << Human Paladin
#next Kreuzfahrerstoß - 4 (Dun Morogh) << Dwarf Paladin
#next Lavaeruption - 25 (Vorgebirge des Hügellands) << Shaman
#title Glücksfall << Priest
#title Einsamer Wolf << Hunter
#title Überleben des Stärkeren << Druid
#title Kriegstreiber << Warrior
#title Beidhändigkeitsspezialisierung << Shaman
#title Dämonischer Pakt << Warlock
#title Heilige Opferung << Paladin
#title Zeit zurückdrehen << Mage
#title Parierdolch << Rogue

<< SoD

step
    #completewith next
    .zone The Barrens >>Reist nach Ratschet in The Barrens. |cRXP_WARN_Ihr braucht 3 Gold, um die Rune zu kaufen|r
step
    .goto The Barrens,61.8,39.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich im Gasthaus mit |cRXP_FRIENDLY_Grizzby|r
    .use 210822 << Priest
    .use 210820 << Paladin
    .use 210654 << Mage
    .use 210818 << Hunter
    .use 210817 << Druid
    .use 210825 << Warrior
    .use 210824 << Warlock
    .use 210653 << Rogue
    .use 210823 << Shaman
    .train 415995 >>Kauft und benutzt die |T135791:0|t[|cRXP_WARN_Harmonische Offenbarung|r] |cRXP_FRIENDLY_um|r |T237549:0|t[Glücksfall] |cRXP_WARN_zu erlernen|r << Priest
    .train 410010 >>|cRXP_WARN_Kauft und benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Opferung|r] |cRXP_WARN_um |r |T134596:0|t[Gravieren Hosen - Heilige Opferung] zu trainieren << Paladin
    .train 401761 >>|cRXP_WARN_Kauft und benutzt die|r |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: Zeit zurückdrehen|r] |cRXP_WARN_um |r |T237538:0|t[Zeit zurückdrehen] zu trainieren << Mage
    .train 410122 >>|cRXP_WARN_Kauft und benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des einsamen Wolfs|r] |cRXP_WARN_um |r |T132266:0|t[Einsamer Wolf] zu trainieren << Hunter
    .train 416042 >>|cRXP_WARN_Kauft und benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Überlebens|r] |cRXP_WARN_um |r |T132126:0|t[Überleben des Stärkeren] zu trainieren << Druid
    .train 425445 >>|cRXP_WARN_Kauft und benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Kriegshetzers|r] |cRXP_WARN_um |r |T236319:0|t[Kriegstreiber] zu trainieren << Warrior
    .train 425476 >>|cRXP_WARN_Kauft und benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Pakts|r] |cRXP_WARN_um |r |T237562:0|t[Dämonischer Pakt] zu trainieren << Warlock
    .train 424990 >>|cRXP_WARN_Kauft und benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Parierdolchs|r] |cRXP_WARN_um |r |T237531:0|t[Parierdolch] zu trainieren << Rogue
    .train 410096 >>|cRXP_WARN_Kauft und benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Beidhändigkeitsspezialisierung|r] |cRXP_WARN_um |r |T132686:0|t[Brustteil prägen - Beidhändigkeitsspezialisierung] zu trainieren << Shaman
    .target Grizzby
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust << Shaman/Rogue
#subgroup Beine << Mage/Warlock/Hunter
#subgroup Handschuhe << Paladin/Warrior/Priest/Druid
#name Waylaid Runen
#displayname Gedankenexplosion - 25 (Ruf) << Priest
#displayname Schlangenspur - 25 (Ruf) << Hunter
#displayname Schädelstoß - 25 (Ruf) << Druid
#displayname Zielstrebiger Furor - 25 (Ruf) << Warrior
#displayname Heilender Regen - 25 (Ruf) << Shaman
#displayname Immerwährende Gebrechen - 25 (Ruf) << Warlock
#displayname Flamme des Glaubens - 25 (Ruf) << Paladin
#displayname Arkane Woge - 25 (Ruf) << Mage
#displayname Nur eine Fleischwunde - 25 (Ruf) << Rogue
#next Heilige Opferung - 25 (Azeroth) << Paladin
#title Gedankenexplosion << Priest
#title Schlangenspur << Hunter
#title Schädelstoß << Druid
#title Zielstrebiger Furor << Warrior
#title Heilender Regen << Shaman
#title Immerwährende Gebrechen << Warlock
#title Flamme des Glaubens << Paladin
#title Arkane Woge << Mage
#title Nur eine Fleischwunde << Rogue

<< SoD

--VV if (Reputation) name formatting removed, change in Paladin guide too

step
    >>Sucht |T132765:0|t[Überfallene Vorräte]. Dann geht in eine Hauptstadt zurück und liefert sie ab. Falls ihr den Ruf schneller erhalten wollt, kauft die erforderlichen Gegenstände im AH, um sie zu verbessern.
    *|cRXP_WARN_Ihr könnt niedrigstufige Mobs farmen, bis ihr Freundlich erreicht. Danach müsst ihr hochstufige Mobs (>=17) farmen.|r Truhen in der offenen Welt haben eine 90%+ Chance, einen dieser Gegenstände fallen zu lassen.
    .reputation 2587,friendly << Horde
    .reputation 2586,friendly << Alliance
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Versorgungsoffizier|r in der nächsten Stadt
    .goto Orgrimmar,51.6,64.6,-1 << Horde
    .goto Thunder Bluff,39.8,53.4,-1 << Horde
    .goto Undercity,64.6,38.2,-1 << Horde
    .goto Stormwind City,55.0,61.6,-1 << Alliance
    .goto Ironforge,24.6,67.2,-1 << Alliance
    .goto Darnassus,60.0,56.4,-1 << Alliance
    .use 211386 << Mage
    .use 211387 << Paladin
    .use 211392 << Warlock
    .use 211391 << Shaman
    .use 211385 << Hunter
    .use 211393 << Warrior
    .use 206002 << Druid
    .use 211390 << Rogue
    .use 205950 << Priest
    .train 415996 >>|cRXP_WARN_Kauft und benutzt das|r |T135791:0|t[|cRXP_FRIENDLY_Tenebrous Offenbarung|r] |cRXP_WARN_zum Trainieren von|r |T237565:0|t[Gedankenexplosion] << Priest
    .train 409999 >>|cRXP_WARN_Kauft und benutzt das|r |T134419:0|t[|cRXP_FRIENDLY_Rune des rufenden Lichts|r] |cRXP_WARN_zum Trainieren von|r |T236247:0|t[Flamme des Glaubens] << Paladin
    .train 425171 >>|cRXP_WARN_Kauft und benutzt das|r |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: Arkane Woge|r] |cRXP_WARN_zum Trainieren von|r |T135734:0|t[Arkane Woge] << Mage
    .train 425760 >>|cRXP_WARN_Kauft und benutzt das|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Schlangenspur|r] |cRXP_WARN_zum Trainieren von|r |T132209:0|t[Schlangenspur] << Hunter
    .train 416046 >>|cRXP_WARN_Kauft und benutzt das|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Schädelstoßes|r] |cRXP_WARN_zum Trainieren von|r |T133732:0|t[Schädelstoß] << Druid
    .train 416003 >>|cRXP_WARN_Kauft und benutzt das|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Zielstrebigen Furors|r] |cRXP_WARN_zum Trainieren von|r |T134919:0|t[Zielstrebiger Furor] << Warrior
    .train 416008 >>|cRXP_WARN_Kauft und benutzt das|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Immerwährenden Gebrechen|r] |cRXP_WARN_zum Trainieren von|r |T236296:0|t[Immerwährende Gebrechen] << Warlock
    .train 400082 >>|cRXP_WARN_Kauft und benutzt das|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Neckens|r] |cRXP_WARN_zum Trainieren von|r |T132284:0|t[Nur eine Fleischwunde] << Rogue
    .train 416057 >>|cRXP_WARN_Kauft und benutzt das|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Heilenden Regens|r] |cRXP_WARN_zum Trainieren von|r |T136107:0|t[Heilender Regen] << Shaman
    .target Elaine Compton << Alliance
    .target Tamelyn Aldridge << Alliance
    .target Macry Baker << Alliance
    .target Jornah << Horde
    .target Dokimi << Horde
    .target Gishah << Horde
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Wildwuchs - 25 (Multiple Zones)
#title Wildwuchs

step << Druid
    #completewith next
    .zone Ashenvale >> Reist nach Eschental
step << Druid
    .goto Ashenvale,86.963,43.159
    >>Zwickt |cRXP_PICK_Eulenstatue|r um das Ereignis zu starten
    >>|cRXP_WARN_Ihr werdet 3 Wellen mit jeweils 2 Gegnern in den Stufen 23-25 besiegen müssen|r
    >>|cRXP_WARN_Stellt sicher, dass |cRXP_FRIENDLY_Beschwörter Irrwisch|r nicht stirbt. Es ist nicht möglich, ihn zu heilen, aber er heilt sich zwischen den Wellen vollständig|r
    >>Nachdem ihr alle Wellen besiegt habt, plündert die |cRXP_PICK_Gift des Irrwischs|r auf dem Boden
    .collect 210044,1 -- Symbol of the First Owl (1)
    .train 410028,1
step << Druid
    #completewith next
    .goto Duskwood,46.91,58.76,50,0
    .goto Duskwood,45.13,58.26,25,0
    .goto Duskwood,49.520,33.851
    .subzone 856 >> Reist zum Zwielichtshain im Dämmerwald
    .train 410028,1
step << Druid
    .goto Duskwood,49.520,33.851
    .aura 424310 >> Zwickt |cRXP_PICK_Eulenstatue|r um den Effekt |T132150:0|t[Augen der Eule] zu erhalten
    .train 410028,1
step << Druid
    .goto Duskwood,45.13,58.26
    #completewith next
    +Verlasst den Zwielichtshain
    .subzoneskip 856,1
    .train 410028,1
step << Druid
    .goto Duskwood,65.2,34.8,65,0
    .goto Duskwood,60.6,25.8,65,0
    .goto Duskwood,66.0,23.6,65,0
    .goto Duskwood,68.0,31.6,65,0
    .goto Duskwood,65.2,34.8
    >>Tötet |cRXP_ENEMY_Agon|r. Plündert es für die |cRXP_LOOT_Symbol der zweiten Eule|r
    >>|cRXP_ENEMY_Agon|r |cRXP_WARN_patrouilliert leicht in der Gegend|r
    >>|cRXP_WARN_Ihr müsst den|r |T132150:0|t[Augen der Eule] |cRXP_WARN_Buff haben, um zu sehen|r |cRXP_ENEMY_Agon|r
    .collect 210043,2 -- Symbol of the Second Owl (1)
    .train 410028,1
step << Druid
    #completewith next
    .zone Hillsbrad Foothills >> Reist nach Vorgebirge des Hügellands
    .train 410028,1
step << Druid
    .goto Hillsbrad Foothills,36.914,76.142
    .goto Hillsbrad Foothills,54.424,82.016,0
    +Klickt die |cRXP_PICK_Twin Eulenstatue|r, um den |T237178:0|t[Zwillingseulenaura]-Buff zu erhalten
    >>|cRXP_WARN_Ihr habt 1 Min. 40 Sek. Zeit, um zur anderen kleinen Insel zu gehen und die andere|r Twin Eulenstatue|cRXP_PICK_ zu klicken|r
    >>|cRXP_WARN_Benutzt|r |T132112:0|t[Wassergestalt]
    >>|cRXP_WARN_Die andere Insel ist auf der Karte von Euch markiert|r
    .aura 424181
    .aura 424182
    .train 410028,1
step << Druid
    .goto Hillsbrad Foothills,54.424,82.016
    >>Schwimmt zur anderen Insel. Klickt die |cRXP_PICK_Twin Eulenstatue|r innerhalb von 1 Min. 40 Sek.
    >>|cRXP_WARN_Benutzt die|r |T132112:0|t[Wassergestalt]
    >>|cRXP_WARN_Falls ihr fehlschlagt und den Buff verliert, klickt die |cRXP_PICK_Twin Eulenstatue|r und kehrt zu der Insel zurück, von der ihr gerade gekommen seid|r
    .collect 210026,3 -- Symbol of the Third Owl (1)
    .train 410028,1
step << Druid
    #completewith next
    .zone Moonglade >> Teleportiere dich nach Moonglade
    .train 410028,1
step << Druid
    #completewith next
    .zone Moonglade >> Teleportiere dich nach Moonglade
    .train 410028,1
step << Druid
    .goto Moonglade,52.53,40.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .accept 78229 >> Akzeptiert die Quest Prüfung der Eulen
    .turnin 78229 >> Gebt die Quest Prüfung der Eulen ab
    .target Loganaar
    .train 410028,1
step << Druid
    .train 410028 >> |cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Wildwuchs|r] |cRXP_WARN_um zu erlernen|r |T236153:0|t[Wildwuchs]
    .use 210137
    .itemcount 210137,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD/Mage SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust << Warrior
#subgroup Beine << Mage
#name Dämmerwald Lich Runen
#displayname Geißelung - 25 (Dämmerwald) << Warrior
#displayname Massenregeneration - 25 (Dämmerwald) << Mage
#title Geißelung << Warrior
#title Massenregeneration << Mage

step << Warrior/Mage
    #completewith next
    .goto Duskwood,23.630,34.888,15 >> BETRETET die nordöstliche Krypta
    .train 403480,1 << Warrior
    .train 415939,1 << Mage
step << Warrior/Mage
    .goto Duskwood,26.115,30.863
    >>Öffnet die |cRXP_PICK_Verstaubte Kiste|r. Plündert sie, um das |T252996:0|t[|cRXP_LOOT_Decrepit Phylakterium|r] zu bekommen
    .collect 210568,1 -- Decrepit Phylactery (1)
    .train 403480,1 << Warrior
    .train 415939,1 << Mage
step << Warrior/Mage
    #completewith next
    .goto Duskwood,15.602,38.621,15 >> Verlasst diese Gruft und geht hinunter in die westliche Gruft
    .train 403480,1 << Warrior
    .train 415939,1 << Mage
step << Warrior/Mage
    #completewith next
    .goto Duskwood,18.140,37.940
    .cast 426182 >> Klickt die |cRXP_PICK_Slumbering Knochen|r auf dem kleinen Thron|r
    >>|cRXP_WARN_Das wird einen Level-25-Elite-|rErwachten Lich|cRXP_ENEMY_ beschwören|r
    .train 403480,1 << Warrior
    .train 415939,1 << Mage
step << Warrior/Mage
    .goto Duskwood,18.140,37.940
    >>Tötet die |cRXP_ENEMY_Awakened Lich|r. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune of Geißelung|r] << Warrior
    >>Tötet die |cRXP_ENEMY_Awakened Lich|r. Plündert sie für |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Massenregeneration|r] << Mage
    >>|cRXP_WARN_Falls ein anderer Spieler den |cRXP_ENEMY_Erwachten Lich|r dort tötet, könnt ihr trotzdem mithelfen und ihn noch immer plündern|r
    .collect 210569,1 << Warrior -- Rune of Flagellation (1)
    .collect 211514,1 << Mage -- Spell Notes: Mass Regeneration (1)
    .mob Awakened Lich
    .train 403480,1 << Warrior
    .train 415939,1 << Mage
step << Warrior
    .train 416050 >> |cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Geißelung|r] |cRXP_WARN_um|r |T133495:0|t[Geißelung] zu trainieren
    .use 210569
    .itemcount 210569,1
    .train 403480,1
step << Mage
    .train 416050 >> |cRXP_WARN_Benutzt die|r |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: Massenregeneration|r] |cRXP_WARN_um|r |T132870:0|t[Massenregeneration] zu trainieren
    .use 211514
    .itemcount 211514,1
    .train 415939,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Wütender Schlag - 25 (Multiple Zones)
#title Wütender Schlag

step << Warrior
    #completewith next
    .goto Wetlands,49.40,16.98
    .subzone 205 >> Reist nach Dun Modr in Sumpfland
    .train 425444,1
step << Warrior
    .goto Wetlands,46.92,17.53,15,0
    .goto Wetlands,46.553,18.369
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Unternehmer der Dunkeleisenzwerge|r im Gebäude
    >>|cRXP_WARN_Ihr müsst möglicherweise mehrmals als Leiche rennen, um zu ihm zu gelangen|r
    >>|cRXP_BUY_Buy a|r |T135130:0|t[Dragonslayer's Lanze] |cRXP_BUY_it costs 75 silver|r
    .collect 209874,1,78134,1 -- Dragonslayer's Lance (1)
    .target Dark Iron Entrepreneur
    .train 425444,1
step << Warrior
    #completewith next
    .goto Redridge Mountains,69.928,55.814
    .subzone 2099 >> Reist nach Burg Steinwacht in Rotkammgebirge
    .train 425444,1
step << Warrior
    .goto Redridge Mountains,69.928,55.814
    >>Klickt das |cRXP_PICK_Wall-Beritten Schild|r. Plündert es für das |cRXP_LOOT_Schild des Drachentöters|r
    >>|cRXP_WARN_Dies ist im Inneren des Hauptgebäudes oben hinter|cRXP_ENEMY_ Gath'Ilzogg|r , der ein Level-26-Elite ist|r
    >>|cRXP_WARN_Ihr müsst|cRXP_ENEMY_ Gath'Ilzogg|r töten oder es dem Angriff durch jemand anderen überlassen, um es zu plündern. Stellt sicher, dass ihr eine Gruppe habt, bevor ihr hineingeht|r
    .collect 209873,1,78133,1 -- Dragonslayer's Shield (1)
    .train 425444,1
step << Warrior
    #completewith next
    .subzone 209,2 >> Find a group und enter Burg Schattenfang
step << Warrior
    >>Öffnet die |cRXP_PICK_Discarded Helm|r. Plündert sie für das |cRXP_LOOT_Helm des Drachentöters|r
    >>|cRXP_WARN_Dies ist auf einer Bank hinter|r Commander Springvale|cRXP_ENEMY_ zu finden|r
    .collect 209872,1,78132,1 -- Dragonslayer's Helm (1)
    .train 425444,1
step << Warrior
    #completewith next
    .zone Ashenvale >> Reist nach Eschental
    .train 425444,1
step << Warrior
    .goto Ashenvale,43.513,70.463
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonso|r
    .accept 78132 >> Akzeptiert die Quest Helm des Drachentöters
    .accept 78134 >> Akzeptiert die Quest Lanze des Drachentöters
    .accept 78133 >> Akzeptiert die Quest Schild des Drachentöters
    .turnin 78132 >> Abgeben Helm des Drachentöters
    .turnin 78134 >> Abgeben Dragonslayer's Lanze
    .turnin 78133 >> Abgeben Dragonslayer's Schild
    .target Alonso
    .train 425444,1
step << Warrior
    .goto Ashenvale,43.513,70.463
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonso|r
    .accept 78144 >> Akzeptiert die Quest Alonso <Fahrender Ritter> <Fahrender Ritter> <Fahrender Ritter> der Drachenschlächter
    .target Alonso
    .train 425444,1
step << Warrior
    .goto Ashenvale,42.029,68.999
    >>Tötet die |cRXP_ENEMY_Green Drache Whelp|r
    .complete 78144,1 -- Accompany Alonso to slay the dragon.
    .target Alonso
    .mob Green Dragon Whelp
    .train 425444,1
step << Warrior
    .goto Ashenvale,42.053,69.187
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonso|r
    .turnin 78144 >> Gebt die Quest Alonso <Fahrender Ritter> <Fahrender Ritter> <Fahrender Ritter> der Drachenschlächter ab
    .target Alonso
    .train 425444,1
step << Warrior
    .train 425444 >> |cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Wütender Schlag|r] |cRXP_WARN_um zu erlernen|r |T132215:0|t[Wütender Schlag]
    .use 210015
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Kraftvolle Seele - 22 (Eschental)
#title Kraftvolle Seele

step << Priest
    .goto Ashenvale,32.0,43.0,65,0
    .goto Ashenvale,33.6,38.8,65,0
    .goto Ashenvale,37.6,34.0
    >>Tötet |cRXP_ENEMY_Thistlefur Totemics|r und |cRXP_ENEMY_Thistlefur Schamane|r. Plündert sie für |T135736:0|t[Ursprüngliche Eingebung]
    .collect 211534,1 -- Primal Insight (1)
    .mob Thistlefur Totemic
    .mob Thistlefur Shaman
    .train 415997,1
step << Priest
    .goto Ashenvale,38.002,29.528,40,0
    .goto Ashenvale,37.938,27.958,30,0
    .goto Ashenvale,38.819,27.160,30,0
    .goto Ashenvale,38.804,26.558
    >>|cRXP_WARN_Lauft zum riesigen Baum neben dem Höhleneingang. Folgt dem Pfeil sorgfältig|r
    .use 211534 >>Benutzt die|cRXP_WARN_ |T135736:0|t[Ursprüngliche Eingebung] |rwenn ihr neben den zwei Traumfängern auf dem Baum seid, um die|cRXP_WARN_ |T135975:0|t[|rProphecy of Sieben Besucher]|cRXP_FRIENDLY_ zu erschaffen|r
    .collect 211531,1 -- Prophecy of Seven Visitors (1)
    .train 415997,1
step << Priest
    >>Ihr must now obtain two |T135934:0|t|T136057:0|t[Meditation] buffs << Alliance
    >>Ihr must now obtain two |T237569:0|t|T136077:0|t[Meditation] buffs << Horde
    >>Ihr müsst /knien an einem der folgenden Orte: Abtei von Nordhain, die Sturmwindkathedrale, die Altäre des Lichts in Ambossar, Loch Modan oder der Mystische Bezirk in Eisenschmiede << Human/Dwarf
    >>Ihr müsst /knien an einem der folgenden Orte: Ein Mondbrunnen, wie der in Sturmwind oder der in Darnassus << NightElf
    >>Ihr müsst /knien[=/knien] auf einem beliebigen Friedhof << Undead
    >>Ihr müsst /knien[=/knien] an einem beliebigen Loalaltar, wie der in Sen'Jin Village oder der am Kreuzweg in Das Brachland << Troll
    >>Um euren zweiten |T135934:0|t|T136057:0|t[Meditation]-Buff zu erhalten, müsst ihr /knien vor einem Priester stehen, der ein anderes |T135934:0|t|T136057:0|t[Meditation] hat als ihr, und er muss /beten, während er euch anvisiert << Alliance
    >>Um den zweiten |T237569:0|t|T136077:0|t[Meditation]-Buff von Euch zu erhalten, müsst ihr vor einem Priester /knien, der einen anderen |T135934:0|t|T136057:0|t[Meditation]-Buff als euren hat, und dieser muss /beten, während er euch anvisiert. << Horde
    .train 415997 >> Sobald ihr beide|cRXP_WARN_ |T135934:0|t|T136057:0|t[Meditation] |rBuffs habt, benutzt die|cRXP_WARN_ |T135975:0|t[|rProphecy of Sieben Besucher]|cRXP_FRIENDLY_ um|r |T135911:0|t[Kraftvolle Seele] |cRXP_WARN_zu erlernen|r << Alliance
    .train 415997 >> Sobald ihr beide|cRXP_WARN_ |T237569:0|t|T136077:0|t[Meditation] |rBuffs habt, benutzt die|cRXP_WARN_ |T135975:0|t[|rProphecy of Sieben Besucher]|cRXP_FRIENDLY_ um|r |T135911:0|t[Kraftvolle Seele] |cRXP_WARN_zu erlernen|r << Horde
    .use 211531
    .itemcount 211531,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Armschienen
#name Machtwort: Barrieree - 22 (Rotkammgebirge)
#title Machtwort: Barriere

step << Priest
    #completewith next
    .zone Redridge Mountains >> Reist ins Rotkammgebirge
    .train 425213,1
step << Priest
    .goto Redridge Mountains,67.2,53.6
    .goto Redridge Mountains,68.8,57.4
    >>Tötet |cRXP_ENEMY_Blackrock Shadowcasters|r. Plündert sie für |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Hauptstädte Bezaubert|r]
    >>|cRXP_ENEMY_Blackrock Shadowcasters|r |cRXP_WARN_sind Level-22-23-Eliten. Findet eine Gruppe dafür|r
    .collect 211530,1 -- Prophecy of a City Enthralled (1)
    .mob Blackrock Shadowcaster
    .train 425213,1
step << Priest
    >>Ihr must now obtain two |T135934:0|t|T136057:0|t[Meditation] buffs << Alliance
    >>Ihr must now obtain two |T237569:0|t|T136077:0|t[Meditation] buffs << Horde
    >>Ihr müsst /knien an einem der folgenden Orte: Abtei von Nordhain, die Kathedrale von Sturmwind, die Altäre des Lichts in Ambossar, Loch Modan oder das Mystische Viertel in Eisenschmiede << Human/Dwarf
    >>Ihr müsst /knien an einem Mondquell, wie dem in Sturmwind oder dem in Darnassus << NightElf
    >>Ihr müsst /knien auf jedem Friedhof << Undead
    >>Ihr müsst /knien an jedem Loaaltar, wie demjenigen in Sen'Jin Village oder demjenigen am Kreuzweg in The Barrens << Troll
    >>Um den zweiten |T135934:0|t|T136057:0|t[Meditation]-Buff von Euch zu erhalten, müsst ihr vor einem Priester /knien, der einen anderen |T135934:0|t|T136057:0|t[Meditation]-Buff als euren hat, und dieser muss /beten, während er euch anvisiert. << Alliance
    >>Um euren zweiten |T237569:0|t|T136077:0|t[Meditation]-Buff zu erhalten, müsst ihr /knien vor einem Priester stehen, der ein anderes |T135934:0|t|T136057:0|t[Meditation] hat als ihr, und er muss /beten, während er euch anvisiert << Horde
    .train 425213 >> Sobald ihr beide |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_Buffs habt, benutzt die|r |T135975:0|t[|cRXP_WARN_Prophecy of a Hauptstädte Bezaubert|r] |cRXP_FRIENDLY_um|r |T253400:0|t[Machtwort: Barriere] |cRXP_WARN_zu erlernen|r << Alliance
    .train 425213 >> Sobald ihr beide |T237569:0|t|T136077:0|t[Meditation] |cRXP_WARN_Buffs habt, benutzt die|r |T135975:0|t[|cRXP_WARN_Prophecy of a Hauptstädte Bezaubert|r] |cRXP_FRIENDLY_um|r |T253400:0|t[Machtwort: Barriere] |cRXP_WARN_zu erlernen|r << Horde
    .use 211530
    .itemcount 211530,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Kreis der Heilung - 25 (Dämmerwald)
#title Kreis der Heilung

step << Priest
    .goto Duskwood,50.4,70.8,60,0
    .goto Duskwood,50.2,76.4
    >>Tötet |cRXP_ENEMY_Defias Nacht Runners|r, |cRXP_ENEMY_Defias Nacht Klingen|r und |cRXP_ENEMY_Defias Enchanters|r. Plündert sie für |T135736:0|t[|cRXP_LOOT_Dark Einsicht|r]
    .collect 211528,1 -- Dark Insight (1)
    .mob Defias Night Runner
    .mob Defias Night Blade
    .mob Defias Night Enchanter
    .train 402859,1
step << Priest
    .goto Duskwood,91.11,30.58
    .use 211528 >> Benutzt |T135736:0|t[|cRXP_WARN_Dunkle Einsicht|r] |cRXP_LOOT_am Abgelegenen Grab hinter dem Turm um die|r |T135975:0|t[|cRXP_WARN_Prophecy of a Thousand Lights|r] |cRXP_FRIENDLY_zu erhalten|r
    .collect 211490,1 -- Prophecy of a Thousand Lights (1)
    .train 402859,1
step << Priest
    >>Ihr must now obtain two |T135934:0|t|T136057:0|t[Meditation] buffs << Alliance
    >>Ihr must now obtain two |T237569:0|t|T136077:0|t[Meditation] buffs << Horde
    >>Ihr müsst /knien an einem der folgenden Orte: Abtei von Nordhain, Kathedrale von Sturmwind, die Altäre des Lichts in Ambossar, Loch Modan oder das Mystische Viertel in Eisenschmiede << Human/Dwarf
    >>Ihr müsst /knien an einem der folgenden Orte: einen Mondbrunnen, wie den in Sturmwind oder den in Darnassus << NightElf
    >>Ihr müsst /knien an jedem Friedhof << Undead
    >>Ihr müsst /knien an jedem Loaaltar, wie dem in Sen'Jin Village oder dem beim Kreuzweg in The Barrens << Troll
    >>Um den zweiten |T135934:0|t|T136057:0|t[Meditation] Buff von Euch zu erhalten, müsst ihr /knien vor einem Priester, der einen anderen |T135934:0|t|T136057:0|t[Meditation] Buff als euren hat, und dieser muss /beten, während er euch anvisiert << Alliance
    >>Um den zweiten |T237569:0|t|T136077:0|t[Meditation] Buff von Euch zu erhalten, müsst ihr /knien vor einem Priester, der einen anderen |T135934:0|t|T136057:0|t[Meditation] Buff als euren hat, und dieser muss /beten, während er euch anvisiert << Horde
    .train 402859 >> |cRXP_WARN_Sobald ihr beide|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_Buffs habt, benutzt|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Thousand Lights]|r |cRXP_WARN_um zu erlernen|r |T135887:0|t[Kreis der Heilung] << Alliance
    .train 402859 >> |cRXP_WARN_Sobald ihr beide|r |T237569:0|t|T136077:0|t[Meditation] |cRXP_WARN_Buffs habt, benutzt|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Thousand Lights]|r |cRXP_WARN_um zu erlernen|r |T135887:0|t[Kreis der Heilung] << Horde
    .use 211490
    .itemcount 211490,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Kobrastöße - 25 (Vorgebirge des Hügellands)
#title Kobrastöße


    --Rune of Cobra Strikes

step
    #season 2
    #completewith next
    .zone Hillsbrad Foothills >>Reist nach Vorgebirge des Hügellands (z.B. von Unterstadt durch Silberwald) << Horde
    .zone Hillsbrad Foothills >>Reist nach Vorgebirge des Hügellands (z.B. nördlich von Sumpfland) << Alliance
step
    #season 2
    #loop
    .goto Hillsbrad Foothills,58.2,19.6,40,0
    .goto Hillsbrad Foothills,57.5,36.4,50,0
    .goto Hillsbrad Foothills,51.1,46.4,40,0
    >>Sucht nach |cRXP_FRIENDLY_Zixil|r. Er patrouilliert zwischen Tarrens Mühle und Süderstade. Kauft |T134041:0|t[Freshwater Schnapper Köder] von ihm
    .collect 210410,1 --Freshwater Snapper Bait (1)
    .target Zixil
    .train 425759,1
step
    #season 2
    .goto Hillsbrad Foothills,61.05,33.36
    .use 210410 >>Benutzt die |T134041:0|t[Süßwasser Schnapper Köder] auf dem Boot in der Mitte des Sees
    >>Tötet |cRXP_ENEMY_Koartul|r (25 elite) as he spawns. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune of Kobrastöße|r]
    .collect 210596,1 --Rune of Cobra Strikes (1)
    .mob Koartul
    .train 425759,1
step
    #season 2
    .train 425759 >>|cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Kobrastöße|r] |cRXP_WARN_zum Trainieren|r |T236177:0|t[Kobrastöße]
    .use 210596
    .itemcount 210596,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Tötet Schuss - 25 (Multiple Zones)
#title Tödlicher Schuss

step
    #completewith WyvernWrangling
    >>|cRXP_BUY_Kauft|r |T135144:0|t[Großer Magiezauberstab] |cRXP_BUY_vom Auktionshaus|r
    .collect 11288,1 --Greater Magic Wand (1)
    .train 410111,1
step
    #season 2
    #completewith next
    +|cRXP_WARN_Sucht eine Gruppe für die Höhlen des Wehklagens|r
step
    #season 2
    #completewith next
    .goto Kalimdor,51.89,54.77,20,0
    .goto Kalimdor,51.95,54.56,20,0
    .goto Kalimdor,52.27,54.65,30,0
    .goto Kalimdor,52.40,55.18
    .zone 279 >> Betretet Die Höhlen des Wehklagens
step
    #season 2
    >>Tötet |cRXP_ENEMY_Mutanus der Verschlinger|r. Plündert ihn für |T132775:0|t[|cRXP_LOOT_Hypnotischer Kristall|r]
    .collect 209838,1 --Hypnotic Crystal (1)
    .mob Mutanus the Devourer
    .train 410111,1
step
    #season 2
    #completewith next
    .zone Ashenvale >>Reist nach Eschental
step
    #season 2
    .goto Ashenvale,37.91,34.49,40,0
    .goto Ashenvale,35.89,36.65,40,0
    .goto Ashenvale,35.75,32.01,40,0
    .goto Ashenvale,34.09,38.48,40,0
    .goto Ashenvale,31.86,39.25,40,0
    .goto Ashenvale,32.57,42.78,40,0
    .goto Ashenvale,30.98,44.40,40,0
    .goto Ashenvale,35.75,32.01
    >>Tötet |cRXP_ENEMY_Thistlefur Shamans|r. Plündert sie für |T237004:0|t[|cRXP_LOOT_Wild magischer Schaden Essenz|r]
    .collect 209841,1 --Wild Magic Essence (1)
    .mob Thistlefur Shaman
    .train 410111,1
step
    #season 2
    .use 209841 >>Benutzt die |T237004:0|t[|cRXP_LOOT_Wilde Magieessenz|r], um |T237489:0|t[|cRXP_LOOT_Knorriger Zauberstab der wilden Magie|r] herzustellen
    .collect 209840,1 --Gnarled Wand of Wild Magic (1)
    .train 410111,1
step
    #season 2
    #completewith WyvernWrangling
    .zone Stonetalon Mountains >>Reist ins Steinkrallengebirge
step
    #season 2
    .goto Stonetalon Mountains,60.71,62.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jixo Wahnrakete <Anfängerdraufgänger>|r im Steinkrallengebirge
    .accept 78114 >>Akzeptiert die Quest Bändigung wilder Flügeldrachen
    .target Jixo Madrocket
    .train 410111,1
step
    #season 2
    #label WyvernWrangling
    .goto Stonetalon Mountains,60.71,62.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jixo Madrocket|r
    .turnin 78114 >>Gebt die Quest Bändigung wilder Flügeldrachen ab
    .accept 78121 >>Akzeptiert die Quest Einen wilden Flügeldrachen bändigen
    .target Jixo Madrocket
    .train 410111,1
step
    #season 2
    .goto Stonetalon Mountains,60.70,62.33
    >>Bleibt bei |cRXP_FRIENDLY_Jixo Wahnrakete <Anfängerdraufgänger>|r und beobachtet, wie er einen |cRXP_ENEMY_Flügeldrache|r zähmt
    .turnin 78121 >>Gebt die Quest Einen wilden Flügeldrachen bändigen ab
    .target Jixo Madrocket
    .train 410111,1
step
    #season 2
    .train 410111 >>|cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Tötungsbefehls|r] |cRXP_WARN_zum Trainieren|r |T236174:0|t[Tödlicher Schuss]
    .use 209852
    .itemcount 209852,1


]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
<< SoD
#subgroup Brust << Shaman
#subgroup Gürtel << Warrior/Hunter/Mage/Paladin
#subgroup Stiefel << Warlock/Priest/Rogue/Druid
#name Dunkel Rider Runen
#displayname Geist des Erlösers - 40 (Azeroth) << Priest
#displayname Nahkampfspezialist - 40 (Azeroth) << Hunter
#displayname König des Dschungels - 40 (Azeroth) << Druid
#displayname Präzises Timing - 40 (Azeroth) << Warrior
#displayname Zweihandmeisterschaft - 40 (Azeroth) << Shaman
#displayname Dämonisches Wissen - 40 (Azeroth) << Warlock
#displayname Lichtinfusion - 40 (Azeroth) << Paladin
#displayname Geschosssalve - 40 (Azeroth) << Mage
#displayname Auflauern - 40 (Azeroth) << Rogue
#title Geist des Erlösers << Priest
#title Nahkampfspezialist << Hunter
#title König des Dschungels << Druid
#title Präzises Timing << Warrior
#title Zweihandmeisterschaft << Shaman
#title Dämonisches Wissen << Warlock
#title Lichtinfusion << Paladin
#title Geschosssalve << Mage
#title Auflauern << Rogue

step
    #completewith Sigil
    +|cRXP_WARN_Bevor ihr versucht, diese Rune zu erhalten, wird empfohlen, dass ihr eine Gruppe sucht. Ihr müsst einen Level-41-Elite 7 Mal insgesamt töten|r
step
    #completewith next
    .zone Deadwind Pass >>Reist zum Gebirgspass der Totenwinde
step
    #label Sigil
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Deadwind Pass,52.095,34.119
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Dalaran-Agent|r, um |T338784:0|t[|cRXP_FRIENDLY_Aridens Siegel|r] zu erhalten
    .skipgossip 218920,1
    .collect 216941,1
    .target Dalaran Agent
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .equip 13 >> |cRXP_WARN_Legt an|r |T338784:0|t[|cRXP_FRIENDLY_Aridens Siegel|r]
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Deadwind Pass,45.04,28.88
    .aura 438288 >> |cRXP_WARN_Reist zum Pfeilort. Wenn ihr euch nähert, bekommt ihr den|r |T237534:0|t[Dunkle Präsenz] |cRXP_WARN_Effekt|r
    >>|cRXP_WARN_IHR MÜSST AUCH ABGESTIEGEN SEIN, UM DEN EFFEKT ZU ERHALTEN!|r
    >>|cRXP_WARN_Stellt sicher, dass ihr|r |T338784:0|t[|cRXP_FRIENDLY_Ariden's Siegel|r] |cRXP_WARN_angelegt habt|r
    .use 216941
    .itemcount 216945,<1
step
    #completewith next
    .goto Deadwind Pass,45.04,28.88
    .cast 438305 >> |cRXP_WARN_Benutzt|r |T338784:0|t[|cRXP_FRIENDLY_Ariden's Siegel|r] |cRXP_WARN_um den|r Dunklen Reiter|cRXP_ENEMY_ zu enthüllen|r
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Deadwind Pass,45.04,28.88
    >>Tötet die |cRXP_ENEMY_Dark Rider|r. Plündert sie für |cRXP_LOOT_Curious Dalaran Relikt|r
    .use 216941
    .collect 216945,1
    .mob Dark Rider
step
    #completewith next
    .zone Swamp of Sorrows >>Reist zu den Sümpfen des Elends
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Swamp of Sorrows,69,28
    .aura 438288 >> |cRXP_WARN_Reist zum Pfeilort. Wenn ihr euch nähert, bekommt ihr den|r |T237534:0|t[Dunkle Präsenz] |cRXP_WARN_Effekt|r
    >>|cRXP_WARN_IHR MÜSST AUCH ABGESTIEGEN SEIN, UM DEN EFFEKT ZU ERHALTEN!|r
    >>|cRXP_WARN_Stellt sicher, dass ihr|r |T338784:0|t[|cRXP_FRIENDLY_Ariden's Siegel|r] |cRXP_WARN_angelegt habt|r
    .use 216941
    .itemcount 216948,<1
step
    #completewith next
    .goto Swamp of Sorrows,69,28
    .cast 438305 >> |cRXP_WARN_Benutzt|r |T338784:0|t[|cRXP_FRIENDLY_Ariden's Siegel|r] |cRXP_WARN_um den|r Dunklen Reiter|cRXP_ENEMY_ zu enthüllen|r
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Swamp of Sorrows,69,28
    >>Tötet die |cRXP_ENEMY_Dark Rider|r. Plündert sie für |cRXP_LOOT_Odd Dalaran Relikt|r
    .use 216941
    .collect 216948,1
    .mob Dark Rider
step
    #completewith next
    .zone Duskwood >>Lauf zum Teufelswald
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Duskwood,23,47
    .aura 438288 >> |cRXP_WARN_Reist zum Pfeilort. Wenn ihr euch nähert, bekommt ihr den|r |T237534:0|t[Dunkle Präsenz] |cRXP_WARN_Effekt|r
    >>|cRXP_WARN_IHR MÜSST AUCH ABGESTIEGEN SEIN, UM DEN EFFEKT ZU ERHALTEN!|r
    >>|cRXP_WARN_Stellt sicher, dass ihr habt|r |T338784:0|t[|cRXP_FRIENDLY_Ariden's Siegel|r] |cRXP_WARN_ausgerüstet|r
    .use 216941
    .itemcount 216946,<1
step
    #completewith next
    .goto Duskwood,23,47
    .cast 438305 >> |cRXP_WARN_Benutzt|r |T338784:0|t[|cRXP_FRIENDLY_Ariden's Siegel|r] |cRXP_WARN_to reveal the|r |cRXP_ENEMY_Dunklen Reiter|r
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Duskwood,23,47
    >>Tötet die |cRXP_ENEMY_Dark Rider|r. Plündert sie für |cRXP_LOOT_Glittering Dalaran Relikt|r
    .use 216941
    .collect 216946,1
    .mob Dark Rider
step
    #completewith next
    .zone Badlands >>Reist ins Ödland
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Badlands,58,54
    .aura 438288 >> |cRXP_WARN_Reist zum Ort des Pfeils. Wenn ihr näherkommt, werdet ihr den|r |T237534:0|t[Dunkle Präsenz] |cRXP_WARN_Stärkungszauber|r
    >>|cRXP_WARN_IHR MÜSST AUCH ABGESTIEGEN SEIN, UM DEN BUFF ZU ERHALTEN!|r
    >>|cRXP_WARN_Stellt sicher, dass ihr|r |T338784:0|t[|cRXP_FRIENDLY_Aridens Siegel|r] |cRXP_WARN_ausgerüstet habt|r
    .use 216941
    .itemcount 216951,<1
step
    #completewith next
    .goto Badlands,58,54
    .cast 438305 >> |cRXP_WARN_Benutzt|r |T338784:0|t[|cRXP_FRIENDLY_Aridens Siegel|r] |cRXP_WARN_um den|r Dunkler Reiter|cRXP_ENEMY_ zu offenbaren|r
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Badlands,58,54
    >>Tötet die |cRXP_ENEMY_Dark Rider|r. Plündert sie für |cRXP_LOOT_Slippery Dalaran Relikt|r
    .use 216941
    .collect 216951,1
    .mob Dark Rider
step
    #completewith next
    .zone Arathi Highlands >>Reist zum Arathihochland
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Arathi Highlands,60,40
    .aura 438288 >> |cRXP_WARN_Reist zum Ort des Pfeils. Wenn ihr näherkommt, werdet ihr den|r |T237534:0|t[Dunkle Präsenz] |cRXP_WARN_Stärkungszauber|r
    >>|cRXP_WARN_IHR MÜSST AUCH ABGESTIEGEN SEIN, UM DEN BUFF ZU ERHALTEN!|r
    >>|cRXP_WARN_Stellt sicher, dass ihr habt|r |T338784:0|t[|cRXP_FRIENDLY_Ariden's Siegel|r] |cRXP_WARN_ausgerüstet|r
    .use 216941
    .itemcount 216947,<1
step
    #completewith next
    .goto Arathi Highlands,60,40
    .cast 438305 >> |cRXP_WARN_Benutzt|r |T338784:0|t[|cRXP_FRIENDLY_Ariden's Siegel|r] |cRXP_WARN_to reveal the|r |cRXP_ENEMY_Dunklen Reiter|r
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Arathi Highlands,60,40
    >>Tötet die |cRXP_ENEMY_Dark Rider|r. Plündert sie für |cRXP_LOOT_Whirring Dalaran Relikt|r
    .use 216941
    .collect 216947,1
    .mob Dark Rider
step
    #completewith next
    .zone The Barrens >>Reist nach Das Brachland
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto The Barrens,52,36
    .aura 438288 >> |cRXP_WARN_Reist zum Ort des Pfeils. Wenn ihr näherkommt, werdet ihr den|r |T237534:0|t[Dunkle Präsenz] |cRXP_WARN_Stärkungszauber|r
    >>|cRXP_WARN_IHR MÜSST AUCH ABGESTIEGEN SEIN, UM DEN BUFF ZU ERHALTEN!|r
    >>|cRXP_WARN_Stellt sicher, dass ihr habt|r |T338784:0|t[|cRXP_FRIENDLY_Ariden's Siegel|r] |cRXP_WARN_ausgerüstet|r
    .use 216941
    .itemcount 216949,<1
step
    #completewith next
    .goto The Barrens,52,36
    .cast 438305 >> |cRXP_WARN_Benutzt|r |T338784:0|t[|cRXP_FRIENDLY_Ariden's Siegel|r] |cRXP_WARN_to reveal the|r |cRXP_ENEMY_Dunklen Reiter|r
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto The Barrens,52,36
    >>Tötet die |cRXP_ENEMY_Dark Rider|r. Plündert sie für |cRXP_LOOT_Heavy Dalaran Relikt|r
    .use 216941
    .collect 216949,1
    .mob Dark Rider
step
    #completewith next
    .zone Desolace >>Reist nach Desolace
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Desolace,65,25
    .aura 438288 >> |cRXP_WARN_Reist zum Pfeilort. Wenn ihr euch nähert, bekommt ihr den|r |T237534:0|t[Dunkle Präsenz] |cRXP_WARN_Effekt|r
    >>|cRXP_WARN_IHR MÜSST AUCH ABGESTIEGEN SEIN, UM DEN EFFEKT ZU ERHALTEN!|r
    >>|cRXP_WARN_Stellt sicher, dass ihr|r |T338784:0|t[|cRXP_FRIENDLY_Ariden's Siegel|r] |cRXP_WARN_angelegt habt|r
    .use 216941
    .itemcount 216950,<1
step
    #completewith next
    .goto Desolace,65,25
    .cast 438305 >> |cRXP_WARN_Benutzt|r |T338784:0|t[|cRXP_FRIENDLY_Ariden's Siegel|r] |cRXP_WARN_um den|r Dunklen Reiter|cRXP_ENEMY_ zu enthüllen|r
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Desolace,65,25
    >>Tötet die |cRXP_ENEMY_Dark Rider|r. Plündert sie für |cRXP_LOOT_Creepy Dalaran Relikt|r
    .use 216941
    .collect 216950,1
    .mob Dark Rider
step
    #completewith next
    .zone Deadwind Pass >>Reist zum Gebirgspass der Totenwinde
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Deadwind Pass,52.095,34.119
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dalaran-Agent|r
    .turnin 80147 >>Gebt die Quest Eigentümliches Relikt aus Dalaran ab
    .turnin 80149 >>Gebt Eigentümliches Relikt aus Dalaran ab
    .turnin 80098 >>Gebt Eigentümliches Relikt aus Dalaran ab
    .turnin 80152 >>Gebt Eigentümliches Relikt aus Dalaran ab
    .turnin 80148 >>Gebt Eigentümliches Relikt aus Dalaran ab
    .turnin 80150 >>Gebt Eigentümliches Relikt aus Dalaran ab
    .turnin 80151 >>Gebt Eigentümliches Relikt aus Dalaran ab
    .turnin 80120 >>Gebt die Quest Dienst für Dalaran ab
    .target Dalaran Agent
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    >>Öffnet |T133666:0|t[|cRXP_FRIENDLY_Vorratstasche|r] um |T135791:0|t[|cRXP_FRIENDLY_Leuchtende Offenbarung|r] zu erhalten << Priest
    >>Öffnet |T133666:0|t[|cRXP_FRIENDLY_Vorratstasche|r] um |T134419:0|t[|cRXP_FRIENDLY_Infusions-Rune|r] zu erhalten << Paladin
    >>Öffnet |T133666:0|t[|cRXP_FRIENDLY_Vorratstasche|r] um |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: Geschosssalve|r] zu erhalten << Mage
    >>Öffnet |T133666:0|t[|cRXP_FRIENDLY_Vorratstasche|r] um |T134419:0|t[|cRXP_FRIENDLY_Nahkampf-Rune|r] zu erhalten << Hunter
    >>Öffnet |T133666:0|t[|cRXP_FRIENDLY_Vorratstasche|r] um |T134419:0|t[|cRXP_FRIENDLY_Dschungel-König-Rune|r] zu erhalten << Druid
    >>Öffnet |T133666:0|t[|cRXP_FRIENDLY_Vorratstasche|r] um |T134419:0|t[|cRXP_FRIENDLY_Unbarmherzige-Präzisions-Rune|r] zu erhalten << Warrior
    >>Öffnet |T133666:0|t[|cRXP_FRIENDLY_Vorratstasche|r] um |T134419:0|t[|cRXP_FRIENDLY_Rune des Verbotenen Wissens|r] zu erhalten << Warlock
    >>Öffnet |T133666:0|t[|cRXP_FRIENDLY_Vorratstasche|r] um |T134419:0|t[|cRXP_FRIENDLY_Angreifer-Rune|r] zu erhalten << Rogue
    >>Öffnet |T133666:0|t[|cRXP_FRIENDLY_Vorratstasche|r] um |T134419:0|t[|cRXP_FRIENDLY_Zweihand-Meisterschafts-Rune|r] zu erhalten << Shaman
    .use 217014
    .collect 213144,1 << Priest
    .collect 213130,1 << Paladin
    .collect 213112,1 << Mage
    .collect 213124,1 << Hunter
    .collect 213118,1 << Druid
    .collect 213104,1 << Warrior
    .collect 213100,1 << Warlock
    .collect 213137,1 << Rogue
    .collect 216606,1 << Shaman
step
    .itemcount 213144,1 << Priest
    .itemcount 213130,1 << Paladin
    .itemcount 213112,1 << Mage
    .itemcount 213124,1 << Hunter
    .itemcount 213118,1 << Druid
    .itemcount 213104,1 << Warrior
    .itemcount 213100,1 << Warlock
    .itemcount 213137,1 << Rogue
    .itemcount 216606,1 << Shaman
    .use 213144 << Priest
    .use 213130 << Paladin
    .use 213112 << Mage
    .use 213124 << Hunter
    .use 213118 << Druid
    .use 213104 << Warrior
    .use 213100 << Warlock
    .use 213137 << Rogue
    .use 216606 << Shaman
    .train 425312 >>|cRXP_WARN_Benutzt|r |T135791:0|t[|cRXP_FRIENDLY_Leuchtende Offenbarung|r] |cRXP_WARN_um zu trainieren|r |T132864:0|t[Geist des Erlösers] << Priest
    .train 426180 >>|cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Infusions-Rune|r] |cRXP_WARN_um zu trainieren|r |T236254:0|t[Lichtinfusion] << Paladin
    .train 401763 >>|cRXP_WARN_Benutzt|r |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: Geschosssalve|r] |cRXP_WARN_um zu trainieren|r |T236221:0|t[Geschosssalve] << Mage
    .train 416086 >>|cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Nahkampf-Rune|r] |cRXP_WARN_um zu trainieren|r |T132394:0|t[Nahkampfspezialist] << Hunter
    .train 424765 >>|cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Dschungel-König-Rune|r] |cRXP_WARN_um zu trainieren|r |T236159:0|t[König des Dschungels] << Druid
    .train 416005 >>|cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Unbarmherzige-Präzisions-Rune|r] |cRXP_WARN_um zu trainieren|r |T134377:0|t[Präzises Timing] << Warrior
    .train 416014 >>|cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Verbotenen Wissens|r] |cRXP_WARN_um zu trainieren|r |T136172:0|t[Dämonisches Wissen] << Warlock
    .train 415926 >>|cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Angreifer-Rune|r] |cRXP_WARN_um zu trainieren|r |T236286:0|t[Auflauern] << Rogue
    .train 436368 >>|cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Zweihand-Meisterschafts-Rune|r] |cRXP_WARN_um zu trainieren|r |T135145:0|t[Zweihandmeisterschaft] << Shaman
]])

RXPGuides.RegisterGuide([[

#classic
<< SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Gürtel << Druid/Priest/Rogue/Warlock
#subgroup Stiefel << Mage/Shaman/Hunter/Paladin/Warrior
#name Desolace Kette Runen
#displayname Gedankenstachel - 35 (Azeroth) << Priest
#displayname Fallenschleuder - 35 (Azeroth) << Hunter
#displayname Finsternis - 35 (Azeroth) << Druid
#displayname Wütende Regeneration - 35 (Azeroth) << Warrior
#displayname Erwachen der Ahnen - 35 (Azeroth) << Shaman
#displayname Schattenschaden und Flamme - 35 (Azeroth) << Warlock
#displayname Die Kunst des Krieges - 35 (Azeroth) << Paladin
#displayname Hirnfrost - 35 (Azeroth) << Mage
#displayname Vergiftetes Messer - 35 (Azeroth) << Rogue
#title Gedankenstachel << Priest
#title Fallenschleuder << Hunter
#title Finsternis << Druid
#title Wütende Regeneration << Warrior
#title Erwachen der Ahnen << Shaman
#title Schatten und Flamme << Warlock
#title Die Kunst des Krieges << Paladin
#title Hirnfrost << Mage
#title Vergiftetes Messer << Rogue

step
    #completewith next
    .zone Desolace >>Reist nach Desolace
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>Klickt |cRXP_PICK_Erloschenes Lagerfeuer|r
    .goto Desolace,47.532,54.605
    .accept 79229 >>Akzeptiert die Quest Straßenraub
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bibbly F'utzbuckle|r
    .goto Desolace,62.314,38.965
    .turnin 79229 >>Gebt die Quest Straßenraub ab
    .accept 79235 >>Akzeptiert die Quest Auf der Flucht
    .target Bibbly F'utzbuckle
step
    #completewith next
    .zone Stranglethorn Vale >>Reist nach Schlingendorntal |cRXP_WARN_(Beutebucht)|r
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tokal|r
    .goto Stranglethorn Vale,26.988,77.284
    .turnin 79235 >>Gebt die Quest Auf der Flucht ab
    .accept 79236 >>Akzeptiert die Quest Eine Kirsche für Eure Gedanken
    .target Tokal
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nixxrax Fillamug|r
    >>|cRXP_BUY_Buy a|r |T132790:0|t[Sperbitak Grog]
    .goto Stranglethorn Vale,27.039,77.168
    .collect 4600,1,79236,1
    .target Nixxrax Fillamug
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tokal|r
    .goto Stranglethorn Vale,26.988,77.284
    .turnin 79236 >>Gebt die Quest Eine Kirsche für Eure Gedanken ab
    .accept 79242 >>Akzeptiert die Quest Keine Ehre unter Dieben
    .target Tokal
step
    #completewith next
    .zone Wetlands >>Reist zur Grenze zwischen Arathihochland und Sumpfland
step
    .goto Wetlands,58.320,6.927
    .cast 6477 >>Betretet das |cRXP_PICK_Ruderboot|r im Wasser
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    .subzoneskip 308
step << NightElf
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    .goto Arathi Highlands,93.90,71.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Illari Duskfeather|r um |cRXP_LOOT_Illaris Schlüssel|r zu erhalten
    .complete 79242,1 --Found Illari Duskfeather
    .collect 212347,1,79242,1 --Illari's Key
    .skipgossip 215655,1,1,2
    .target Illari Duskfeather
step << !NightElf
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    #completewith next
    .goto Arathi Highlands,93.90,71.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Illari Duskfeather|r. Ihr müsst danach gegen sie kämpfen.
    .complete 79242,1 --Found Illari Duskfeather
    .skipgossip 215655,1,1,1
    .target Illari Duskfeather
step << !NightElf
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    .goto Arathi Highlands,93.90,71.49
    >>Tötet |cRXP_ENEMY_Illari Duskfeather|r. Öffnet |cRXP_PICK_Fallengelassenen Beutel|r, den sie fallen lässt. Plündert ihn nach |cRXP_LOOT_Illari's Schlüssel|r.
    .collect 212347,1,79242,1 --Illari's Key
    .skipgossip 215655,1,1,1
    .mob Illari Duskfeather
step << !NightElf
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    .goto Arathi Highlands,93.90,71.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Illari Duskfeather|r
    .complete 79242,1 --Found Illari Duskfeather
    .skipgossip
    .target Illari Duskfeather
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>Zwicken |cRXP_PICK_Illari's Beute Cache|r auf dem Boden
    .goto Arathi Highlands,94.154,69.266
    .turnin 79242 >>Gebt die Quest Keine Ehre unter Dieben ab
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>Öffnet |T133876:0|t[|cRXP_LOOT_Edelsteinbesetzte Kiste|r] für |T135791:0|t[|cRXP_FRIENDLY_Psychosophic Offenbarung|r] << Priest
    >>Öffnet |T133876:0|t[|cRXP_LOOT_Edelsteinbesetzte Kiste|r] für |T134419:0|t[|cRXP_FRIENDLY_Rune der Kriegskunst|r] << Paladin
    >>Öffnet die |T133876:0|t[|cRXP_LOOT_Edelsteinbesetzte Kiste|r] für die |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: Hirnfrost|r] << Mage
    >>Öffnet |T133876:0|t[|cRXP_LOOT_Edelsteinbesetzte Kiste|r] für |T134419:0|t[|cRXP_FRIENDLY_Rune des Fallenstellers|r] << Hunter
    >>Öffnet die |T133876:0|t[|cRXP_LOOT_Edelsteinbesetzte Kiste|r] für die |T134419:0|t[|cRXP_FRIENDLY_Rune der Finsternis|r] << Druid
    >>Öffnet die |T133876:0|t[|cRXP_LOOT_Edelsteinbesetzte Kiste|r] für die |T134419:0|t[|cRXP_FRIENDLY_Rune des heilenden Zorns|r] << Warrior
    >>Öffnet die |T133876:0|t[|cRXP_LOOT_Edelsteinbesetzte Kiste|r] für die |T134419:0|t[|cRXP_FRIENDLY_Rune der brennenden Dunkelheit|r] << Warlock
    >>Öffnet |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Kasten|r] für |T134419:0|t[|cRXP_FRIENDLY_Rune of the Vergiftete Klinge|r] << Rogue
    >>Öffnet |T133876:0|t[|cRXP_LOOT_Edelsteinbesetzte Kiste|r] für |T134419:0|t[|cRXP_FRIENDLY_Rune des Erwachens der Ahnen|r] << Shaman
    .collect 212552,1 << Priest
    .collect 212551,1 << Paladin
    .collect 208853,1 << Mage
    .collect 212549,1 << Hunter
    .collect 212548,1 << Druid
    .collect 212562,1 << Warrior
    .collect 212561,1 << Warlock
    .collect 212559,1 << Rogue
    .collect 212560,1 << Shaman
    .use 212553 --Jewel-Encrusted Box (1)
step
    .train 431663 >>Benutzt die |T135791:0|t[|cRXP_WARN_Psychosophische Offenbarung|r]|cRXP_FRIENDLY_, um|r |T136181:0|t[Gedankenstachel] |cRXP_WARN_zu erlernen|r << Priest
    .train 416031 >>Benutzt die |T134419:0|t[|cRXP_WARN_Rune der Kriegskunst|r]|cRXP_FRIENDLY_, um|r |T236246:0|t[Die Kunst des Krieges] |cRXP_WARN_zu erlernen|r << Paladin
    .train 401752 >>Benutzt die |T134939:0|t[|cRXP_WARN_Zaubernotizen: Hirnfrost|r]|cRXP_FRIENDLY_, um|r |T236206:0|t[Hirnfrost] |cRXP_WARN_zu erlernen|r << Mage
    .train 410118 >>Benutzt die |T134419:0|t[|cRXP_WARN_Rune des Fallenstellers|r]|cRXP_FRIENDLY_, um|r |T133882:0|t[Fallenschleuder] |cRXP_WARN_zu erlernen|r << Hunter
    .train 410029 >>Benutzt die |T134419:0|t[|cRXP_WARN_Rune der Finsternis|r]|cRXP_FRIENDLY_, um|r |T236151:0|t[Finsternis] |cRXP_WARN_zu erlernen|r << Druid
    .train 403467 >>Benutzt die |T134419:0|t[|cRXP_WARN_Rune des heilenden Zorns|r]|cRXP_FRIENDLY_, um|r |T132345:0|t[Wütende Regeneration] |cRXP_WARN_zu erlernen|r << Warrior
    .train 426452 >>Benutzt die |T134419:0|t[|cRXP_WARN_Rune der brennenden Dunkelheit|r]|cRXP_FRIENDLY_, um|r |T135823:0|t[Schatten und Flamme] |cRXP_WARN_zu erlernen|r << Warlock
    .train 425102 >>|cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Vergiftete Klinge|r] |cRXP_WARN_zum Trainieren|r |T236270:0|t[Vergiftetes Messer] << Rogue
    .train 425883 >>Benutzt die |T134419:0|t[|cRXP_WARN_Rune des Erwachens der Ahnen|r]|cRXP_FRIENDLY_, um|r |T237571:0|t[Erwachen der Ahnen] |cRXP_WARN_zu erlernen|r << Shaman
    .use 212552 << Priest
    .use 212551 << Paladin
    .use 208853 << Mage
    .use 212549 << Hunter
    .use 212548 << Druid
    .use 212562 << Warrior
    .use 212561 << Warlock
    .use 212559 << Rogue
    .use 212560 << Shaman
    .itemcount 212552,1 << Priest
    .itemcount 212551,1 << Paladin
    .itemcount 208853,1 << Mage
    .itemcount 212549,1 << Hunter
    .itemcount 212548,1 << Druid
    .itemcount 212562,1 << Warrior
    .itemcount 212561,1 << Warlock
    .itemcount 212559,1 << Rogue
    .itemcount 212560,1 << Shaman
step
    .goto 1417,89.536,78.149
    .cast 6477 >>Betretet |cRXP_PICK_Ruderboot|r im Wasser, um nach Arathi zurückzukehren.
    .subzoneskip 308,1
]])

RXPGuides.RegisterGuide([[
#classic
<< SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Zauber Books
#name Zauber Buch Runen

#displayname Erweiterte Intelligenz (Sturmwind) << Alliance Mage
#displayname Erweiterte Intelligenz (Orgrimmar) << Horde Mage
#title Erweiterte Intelligenz << Mage
#displayname Aspekt der Viper/Löwenherz (Sturmwind) << Alliance Hunter
#displayname Aspekt der Viper/Löwenherz (Orgrimmar) << Horde Hunter
#title Aspekt der Viper/Löwenherz << Hunter
#displayname Seelenernte/Portal der Beschwörung/Teufelsrüstung (Sturmwind) << Alliance Warlock
#displayname Seelenernte/Portal der Beschwörung/Teufelsrüstung (Orgrimmar) << Horde Warlock
#title Seelenernte/Portal der Beschwörung/Teufelsrüstung << Warlock
#displayname Umleiten/Occult Gift/Lähmendes Gift/Zähes Gift/Atrophisches Gift (Sturmwind) << Alliance Rogue
#displayname Umleiten/Occult Gift/Lähmendes Gift/Zähes Gift/Atrophisches Gift (Orgrimmar) << Horde Rogue
#title Umleiten/Occult Gift/Lähmendes Gift/Zähes Gift/Atrophisches Gift << Rogue
#displayname Schattengeist/Erhöhte Seelenstärke (Sturmwind) << Alliance Priest
#displayname Schattengeist/Erhöhte Seelenstärke (Orgrimmar) << Horde Priest
#title Schattengeist/Erhöhte Seelenstärke << Priest
#displayname Verbesserte Wiederherstellung/Wiederbeleben/Tiefe Wildnis (Sturmwind) << Alliance Druid
#displayname Verbesserte Wiederherstellung/Wiederbeleben/Tiefe Wildnis (Orgrimmar) << Horde Druid
#title Verbesserte Wiederherstellung/Wiederbeleben/Tiefe Wildnis << Druid
#displayname Befehlsruf/Fleischhaken (Sturmwind) << Alliance Warrior
#displayname Befehlsruf/Fleischhaken (Orgrimmar) << Horde Warrior
#title Befehlsruf/Fleischhaken << Warrior
#displayname Testament des Exorzisten/Verbesserte Segen (MoP - Objekte) << Paladin
#title Testament des Exorzisten/Verbesserte Segen << Paladin
#displayname Totemische Projektion/Schamanistische Wut (Orgrimmar) << Shaman
#title Totemische Projektion/Schamanistische Wut << Shaman

step
    #completewith BuyBook
    >>|cRXP_WARN_Fähigkeitsbücher können jetzt für Gold in Sturmwind gekauft werden, anstatt dafür Das Scharlachrote Kloster farmen zu müssen.|r << Alliance
    >>|cRXP_WARN_Fähigkeitsbücher können jetzt mit Gold von Orgrimmar gekauft werden, anstatt das Scharlachrote Kloster durchlaufen zu müssen.|r << Horde
    .zone Stormwind City >> Lauf nach Sturmwind << Alliance
    .zone Orgrimmar >> Reist nach Orgrimmar << Horde
step << Alliance
    #optional
    #completewith next
    .goto Stormwind City,70.347,27.208,15,0
    .goto Stormwind City,72.005,21.542,20 >> Lauf zur Festung in Sturmwind
step
    #label BuyBook
    .goto Stormwind City,74.182,7.465 << Alliance
    .goto Orgrimmar,38.923,38.398 << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Milton Garbenbund|r << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zor Einbaum|r << Horde
    >>|cRXP_WARN_Hinweis: |T133736:0|t|cRXP_LOOT_[Foliant der erweiterten Intelligenz]|r benötigt Stufe 25 zum Benutzen|r << Mage
    >>|cRXP_WARN_Hinweis: |T133733:0|t|cRXP_LOOT_[Gegenstände]|r und |T133733:0|t|cRXP_LOOT_[Gegenstände]|r benötigen Stufe 25 zum Benutzen|r << Warlock
    >>|cRXP_WARN_Hinweis: |T133733:0|t|cRXP_LOOT_[Zauberfoliant der Teufelsrüstung]|r benötigt Stufe 50 zum Benutzen|r << Warlock
    >>|cRXP_WARN_Hinweis: |T133745:0|t|cRXP_LOOT_[MoP - Gegenstände]|r und |T133745:0|t|cRXP_LOOT_[Gegenstände]|r benötigen Stufe 10 zum Benutzen|r << Paladin
    >>|cRXP_WARN_Hinweis: |T133745:0|t|cRXP_LOOT_[Bekenntnis der verbesserten Segen]|r benötigt Stufe 25 zum Benutzen|r << Paladin
    >>|cRXP_WARN_Hinweis: |T133739:0|t|cRXP_LOOT_[Gegenstände]|r benötigt Stufe 10 zum Benutzen|r << Hunter
    >>|cRXP_WARN_Hinweis: |T133739:0|t|cRXP_LOOT_[Gegenstände]|r benötigt Stufe 25 zum Benutzen|r << Hunter
    >>|cRXP_WARN_Hinweis: |T133735:0|t|cRXP_LOOT_[Gegenstände]|r benötigt Stufe 25 zum Benutzen|r << Rogue
    >>|cRXP_WARN_Hinweis: |T133735:0|t|cRXP_LOOT_[Handbuch für okkultes Gift]|r benötigt Stufe 54 zum Benutzen|r << Rogue
    >>|cRXP_WARN_Hinweis: |T133735:0|t|cRXP_LOOT_[Handbuch für betäubendes Gift]|r, |cRXP_LOOT_[Handbuch für zähes Gift]|r und |cRXP_LOOT_[Handbuch für atrophisches Gift]|r benötigen Stufe 60 zum Benutzen|r << Rogue
    >>|cRXP_WARN_Hinweis: |T237162:0|t|cRXP_LOOT_[Schriftrolle des Schattengeistes]|r und |T237162:0|t|cRXP_LOOT_[Gegenstände]|r benötigen Stufe 25 zum Benutzen|r << Priest
    >>|cRXP_WARN_Hinweis: |T134914:0|t|cRXP_LOOT_[Gegenstände]|r|cRXP_WARN_,|r |T134914:0|t|cRXP_LOOT_[Handzettel der verbesserten Wiederherstellung]|r |cRXP_WARN_und |T134914:0|t|cRXP_LOOT_[Handzettel der Wiederbelebung]|r benötigen Stufe 25 zum Benutzen|r << Druid
    >>|cRXP_WARN_Hinweis: |T133741:0|t|cRXP_LOOT_[Gegenstände]|r benötigt Stufe 25 zum Benutzen|r << Warrior
    >>|cRXP_WARN_Hinweis: |T133741:0|t|cRXP_LOOT_[Handbuch des Fleischhakens]|r benötigt Stufe 40 zum Benutzen|r << Warrior
    >>|cRXP_WARN_Hinweis: |T133747:0|t|cRXP_LOOT_[Gegenstände]|r benötigt Stufe 10 zum Benutzen|r << Shaman
    >>|cRXP_WARN_Hinweis: |T133747:0|t|cRXP_LOOT_[Gegenstände]|r benötigt Stufe 25 zum Benutzen|r << Shaman
    .train 438040 >>|cRXP_WARN_Kauft und benutzt|r |T133735:0|t|cRXP_LOOT_[Gegenstände]|r |cRXP_WARN_um zu erlernen|r |T135425:0|t[Umleiten] << Rogue
    .train 458822 >>|cRXP_WARN_Kauft und benutzt|r |T133735:0|t|cRXP_LOOT_[Handbuch für okkultes Gift]|r |cRXP_WARN_zum Erlernen|r |T135935:0|t[Okkultes Gift I] << Rogue
    .train 438040 >>|cRXP_WARN_Kauft und benutzt|r |T133735:0|t|cRXP_LOOT_[Handbuch für betäubendes Gift]|r |cRXP_WARN_zum Erlernen|r |T132098:0|t[Lähmendes Gift] << Rogue
    .train 439500 >>|cRXP_WARN_Kauft und benutzt|r |T133735:0|t|cRXP_LOOT_[Handbuch für zähes Gift]|r |cRXP_WARN_zum Erlernen|r |T132108:0|t[Zähes Gift] << Rogue
    .train 438040 >>|cRXP_WARN_Kauft und benutzt|r |T133735:0|t|cRXP_LOOT_[Handbuch für atrophisches Gift]|r |cRXP_WARN_zum Erlernen|r |T132100:0|t[Atrophisches Gift] << Rogue
    .train 436949 >>|cRXP_WARN_Kauft und benutzt|r |T133736:0|t|cRXP_LOOT_[Foliant der erweiterten Intelligenz]|r |cRXP_WARN_um zu erlernen|r |T236513:0|t[Erweiterte Intelligenz] << Mage
    .train 436956 >>|cRXP_WARN_Kauft und benutzt|r |T134914:0|t|cRXP_LOOT_[Gegenstände]|r |cRXP_WARN_um zu erlernen|r |T132124:0|t[Tiefe Wildnis] << Druid
    .train 417123 >>|cRXP_WARN_Kauft und benutzt|r |T134914:0|t|cRXP_LOOT_[Handzettel der verbesserten Wiederherstellung]|r |cRXP_WARN_um zu erlernen|r |T136073:0|t[Verbesserte Wiederherstellung] << Druid
    .train 437138 >>|cRXP_WARN_Kauft und benutzt|r |T134914:0|t|cRXP_LOOT_[Handzettel der Wiederbelebung]|r |cRXP_WARN_um zu erlernen|r |T132132:0|t[Wiederbeleben] << Druid
    .train 409580 >>|cRXP_WARN_Kauft und benutzt die|r |T133739:0|t|cRXP_LOOT_[Abhandlung über das Löwenherz]|r |cRXP_WARN_um|r |T132185:0|t[Löwenherz] zu erlernen << Hunter
    .train 415423 >>|cRXP_WARN_Kauft und benutzt|r |T133739:0|t|cRXP_LOOT_[Gegenstände]|r |cRXP_WARN_um zu erlernen|r |T132160:0|t[Aspekt der Viper] << Hunter
    .train 415076 >>|cRXP_WARN_Kauft und benutzt|r |T133745:0|t|cRXP_LOOT_[MoP - Gegenstände]|r |cRXP_WARN_um zu erlernen|r |T135956:0|t[Exorzist] << Paladin
    .train 407798 >>|cRXP_WARN_Kauft und benutzt|r |T133745:0|t|cRXP_LOOT_[Gegenstände]|r |cRXP_WARN_um zu erlernen|r |T135961:0|t[Siegel des Märtyrertums] << Paladin
    .train 435984 >>|cRXP_WARN_Kauft und benutzt|r |T133745:0|t|cRXP_LOOT_[Bekenntnis der verbesserten Segen]|r |cRXP_WARN_um zu erlernen|r |T236248:0|t[Verbesserte Segen] << Paladin
    .train 401977 >>|cRXP_WARN_Kauft und benutzt|r |T237162:0|t|cRXP_LOOT_[Schriftrolle des Schattengeistes]|r |cRXP_WARN_um zu erlernen|r |T136199:0|t[Schattengeist] << Priest
    .train 436951 >>|cRXP_WARN_Kauft und benutzt|r |T237162:0|t|cRXP_LOOT_[Gegenstände]|r |cRXP_WARN_um zu erlernen|r |T237543:0|t[Erhöhte Seelenstärke] << Priest
    .train 437032 >>|cRXP_WARN_Kauft und benutzt|r |T133733:0|t|cRXP_LOOT_[Gegenstände]|r |cRXP_WARN_um zu erlernen|r |T132851:0|t[Seelenernte] << Warlock
    .train 437169 >>|cRXP_WARN_Kauft und benutzt|r |T133733:0|t|cRXP_LOOT_[Gegenstände]|r |cRXP_WARN_um zu erlernen|r |T134423:0|t[Portal der Beschwörung] << Warlock
    .train 403619 >>|cRXP_WARN_Kauft und benutzt|r |T133733:0|t|cRXP_LOOT_[Zauberfoliant der Teufelsrüstung]|r |cRXP_WARN_um zu erlernen|r |T136156:0|t[Teufelsrüstung] << Warlock
    .train 403215 >>|cRXP_WARN_Kauft und benutzt|r |T133741:0|t|cRXP_LOOT_[Gegenstände]|r |cRXP_WARN_um zu erlernen|r |T132351:0|t[Befehlsruf] << Warrior
    .train 403228 >>|cRXP_WARN_Kauft und benutzt|r |T133741:0|t|cRXP_LOOT_[Handbuch des Fleischhakens]|r |cRXP_WARN_um zu erlernen|r |T132507:0|t[Fleischhaken] << Warrior
    .train 425336 >>|cRXP_WARN_Kauft und benutzt die|r |T133747:0|t|cRXP_LOOT_[Offenbarung der schamanistischer Wut]|r |cRXP_WARN_um|r |T136088:0|t[Schamanistische Wut]  zu erlernen << Shaman
    .train 437009 >>|cRXP_WARN_Kauft und benutzt|r |T133747:0|t|cRXP_LOOT_[Gegenstände]|r |cRXP_WARN_um zu erlernen|r |T310733:0|t[Totemische Projektion] << Shaman
    .use 216738 << Rogue -- Manual of Redirect
    .use 226396 << Rogue -- Manual of Occult Poison
    .use 226394 << Rogue -- Manual of Atrophic Poison
    .use 226397 << Rogue -- Manual of Sebacious Poison
    .use 226395 << Rogue -- Manual of Numbing Poison
    .use 216740 << Mage -- Tome of Expanded Intellect
    .use 216744 << Priest -- Scroll of Increased Fortitude
    .use 216745 << Priest -- Scroll of Shadowfiend
    .use 216746 << Warrior -- Handbook of Commanding Shout
    .use 226403 << Warrior -- Handbook of Meathook
    .use 216747 << Warlock -- Grimoire of Soul Harvesting
    .use 216748 << Warlock -- Grimoire of Portal of Summoning
    .use 403619 << Warlock -- Grimoire of Fel Armor
    .use 216764 << Druid -- Leaflet of Deeper Wilds
    .use 216767 << Druid -- Leaflet of Revive
    .use 216768 << Paladin -- Testament of Enhanced Blessings
    .use 226400 << Paladin -- Testament of the Exorcist
    .use 226398 << Paladin -- Testament of Martyrdom
    .use 216769 << Shaman -- Revelation of Totemic Projection
    .use 226402 << Shaman -- Revelation of Shamanistic Rage
    .use 216770 << Hunter -- Treatise on Aspect of the Viper
    .use 226401 << Hunter -- Treatise on the Heart of the Lion
    .use 216771 << Druid -- Leaflet of Enhanced Restoration
    .target Milton Sheaf << Alliance
    .target Zor Lonetree << Horde
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD/Druid SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Stiefel
#name Bugcatcher Runen
#displayname Flügeldrachenstoß - 35 (Azeroth) << Hunter
#displayname Überlebensinstinkte - 35 (Azeroth) << Druid
#title Flügeldrachenstoß << Hunter
#title Überlebensinstinkte << Druid

step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #completewith next
    .zone Swamp of Sorrows >>Reist zu den Sümpfen des Elends
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    .goto Swamp of Sorrows,25.140,54.034
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Amaryllis Webb|r
    >>|cRXP_BUY_Kauft ein|r |T133653:0|t[Entomology Starter Kit]
    .collect 213565,1 --Entomology Starter Kit (1x)
    .target Amaryllis Webb
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    >>Öffnet das |T133653:0|t[Entomology Starter Kit]
    .use 213565
    .collect 213562,1 --Bug Catching Net (1x)
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #completewith next
    .zone Stranglethorn Vale >>Reist nach Schlingendorntal
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #loop
    .goto Stranglethorn Vale,43.8,18.6,20,0
    .goto Stranglethorn Vale,45.2,19.6,20,0
    .goto Stranglethorn Vale,44.2,22.0,20,0
    .goto Stranglethorn Vale,45.6,23,0,20,0
    >>|cRXP_WARN_Benutzt das|r |T134325:0|t[Bug Fangen Netz] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Arbor Tarantel|r
    >>|cRXP_WARN_Sie befinden sich oben auf den Baumstümpfen|r
    .use 213562
    .collect 213566,1 --Arbor Tarantula Specimen (1x)
    .mob Arbor Tarantula
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #completewith next
    .zone Arathi Highlands >>Reist zum Arathihochland
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #loop
    .goto Arathi Highlands,54.0,38.6,0
    .goto Arathi Highlands,57.0,39.8,0
    .goto Arathi Highlands,59.6,57.0,0
    .goto Arathi Highlands,61.2,55.6,0
    .goto Arathi Highlands,54.0,38.6,20,0
    .goto Arathi Highlands,57.0,39.8,20,0
    .goto Arathi Highlands,59.6,57.0,20,0
    .goto Arathi Highlands,61.2,55.6,20,0
    .goto Arathi Highlands,62.6,56.0,20,0
    >>|cRXP_WARN_Benutzt das|r |T134325:0|t[Bug Fangen Netz] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Hay Rüsselkäfer|r
    >>|cRXP_WARN_Sie befinden sich überall auf den Bauernhöfen, auch in den Scheunen|r
    .use 213562
    .collect 213568,1 --Hay Weevil Specimen (1x)
    .mob Hay Weevil
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #completewith next
    .zone Desolace >>Reist nach Desolace
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #loop
    .goto Desolace,53.0,59.0,0
    .goto Desolace,50.0,55.8,30,0
    .goto Desolace,53.0,59.0,30,0
    .goto Desolace,54.0,62.6,30,0
    >>|cRXP_WARN_Benutzt das|r |T134325:0|t[Bug Fangen Netz] |cRXP_WARN_auf ein|r |cRXP_ENEMY_Flesh Picker|r
    >>|cRXP_WARN_Diese befinden sich bei der Kodofamiliengruft|r
    .use 213562
    .collect 213567,1 --Flesh Picker Specimen (1x)
    .mob Flesh Picker
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #completewith next
    .zone Swamp of Sorrows >>Reist zu den Sümpfen des Elends
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    .goto Swamp of Sorrows,25.140,54.034
    >>Sprecht mit |cRXP_FRIENDLY_Amaryllis Weber|r um die |T134419:0|t[|cRXP_FRIENDLY_Rune der Kräftigung|r] zu erhalten << Hunter
    >>Sprecht mit |cRXP_FRIENDLY_Amaryllis Weber|r um die |T134419:0|t[|cRXP_FRIENDLY_Rune des Instinkts|r] zu erhalten << Druid
    .collect 213125,1 << Hunter --Rune of Invigoration (1x)
    .collect 213119,1 << Druid --Rune of Instinct (1x)
    .skipgossip 217412,1
    .target Amaryllis Webb
step
    .train 416089 >> |cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Kräftigung|r] |cRXP_WARN_zum Trainieren von|r |T135125:0|t[Flügeldrachenstoß] << Hunter
    .train 410027 >> |cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Instinkts|r] |cRXP_WARN_zum Trainieren von|r |T132266:0|t[Überlebensinstinkte] << Druid
    .use 213125 << Hunter
    .use 213119 << Druid
]])

RXPGuides.RegisterGuide([[
#classic
<< SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Extras
#subweight -1
#name Cozy Schlafen Tasche - 14
#title Gemütlicher Schlafsack

step
    #optional
    +|cRXP_WARN_Ihr müsst mindestens Stufe 14 sein, bevor ihr die Quest für den|r |T133662:0|t[|cRXP_LOOT_Gemütlichen Schlafsack|r] beginnen könnt
    .xp >14,1
step << Alliance
    #completewith next
    .zone Westfall >> Lauf nach Westfall
step << Alliance
    .goto Westfall,37.413,50.701
    >>Klickt die |cRXP_PICK_Verbrannten Überreste|r auf dem Boden an
    .accept 79008 >> Nehmt an ...und diese Notiz, die Ihr gefunden habt.
step << Alliance
    #completewith next
    .zone The Barrens >> Reist nach Das Brachland
step << Alliance
    .goto The Barrens,46.361,73.904
    >>Klickt die |cRXP_PICK_Verbrannten Überreste|r auf dem Boden an
    .turnin 79008 >> Gebt die Quest ...und diese Notiz, die Ihr gefunden habt ab
    .accept 79192 >> Akzeptiert die Quest Trittsteine
step << Horde
    #completewith next
    .zone The Barrens >> Reist nach Das Brachland
step << Horde
    .goto The Barrens,46.361,73.904
    >>Klickt die |cRXP_PICK_Verbrannten Überreste|r auf dem Boden an
    .accept 79007 >> Nehmt an ...und diese Notiz, die Ihr gefunden habt.
step << Horde
    #completewith next
    .zone Westfall >> Lauf nach Westfall
step << Horde
    .goto Westfall,37.413,50.701
    >>Klickt die |cRXP_PICK_Verbrannten Überreste|r auf dem Boden an
    .turnin 79007 >> Gebt die Quest ...und diese Notiz, die Ihr gefunden habt ab
    .accept 79192 >> Akzeptiert die Quest Trittsteine
step
    #completewith next
    .zone Stonetalon Mountains >> Reist ins Steinkrallengebirge
step
    #completewith next
    .goto Stonetalon Mountains,50.29,52.94,25 >> Reist hinauf und entlang des Feldwegs nördlich von Sonnenfels
step
    .goto Stonetalon Mountains,40.748,52.576
    >>Klickt die |cRXP_PICK_Pocket Litter|r auf der Kiste an
    .turnin 79192 >> Gebt die Quest Trittsteine ab
    .accept 79980 >> Akzeptiert die Quest Weg hier
step
    #completewith next
    .goto Stonetalon Mountains,40.19,50.80,15 >> Folgt dem Pfad durch die Berge
step
    .goto Stonetalon Mountains,39.614,49.783
    >>Klickt den |cRXP_PICK_Mound of Dirt|r auf dem Boden an
    .turnin 79980 >> Gebt die Quest Weg hier ab
    .accept 79974 >> Akzeptiert die Quest Feuchte Angelegenheit
step
    #completewith next
    .zone Loch Modan >> Reist nach Loch Modan
step
    #completewith next
    .goto Loch Modan,41.01,12.60,50,0
    .goto Loch Modan,42.86,10.36,60,0
    .goto Loch Modan,49.4,12.9,8 >> |cRXP_WARN_Geht auf die Mauer des Stausees von Loch Modan und fallt vorsichtig auf den Felsvorsprung in der Mitte hinunter. Folgt dem Pfeil|r
step
    .goto Loch Modan,49.421,12.917
    >>Hebt die |cRXP_PICK_Schnitzfigur|r vom Sims auf
    .turnin 79974 >> Gebt die Quest Feuchte Angelegenheit ab
    .accept 79975 >> Nehmt die Quest Adlerfaust an
step
    #completewith next
    .goto Hillsbrad Foothills,87.691,48.166,10 >> Reist zum Thoradinswall an der Zonengrenze zwischen Arathihochland und Vorgebirge des Hügellands
step
    #completewith next
    .goto Arathi Highlands,24.132,21.470,7 >> Klettert auf den Wagen und arbeitet euch die Mauer entlang nach oben
step
    .goto Arathi Highlands,22.466,24.127
    >>Hebt die |cRXP_PICK_Kuriertasche|r von der Wand auf
    .turnin 79975 >> Gebt die Quest Adlerfaust ab
    .accept 79976 >> Nehmt die Quest Das muss der Ort sein an
step
    .goto Arathi Highlands,22.466,24.127
    >>Hebt die |cRXP_PICK_überstürzt zusammengerollte Tasche|r vom Boden auf
    .turnin 79976 >> Gebt die Quest Das muss der Ort sein ab
step
    +|cRXP_WARN_Es wird dringend empfohlen, von Euch|r |T134057:0|t[|cRXP_LOOT_Student Futter|r] |cRXP_WARN_für höhere Level aufzusparen, bevor ihr diese verbraucht. Jede Verwendung von|r |T134057:0|t[|cRXP_LOOT_Student Futter|r] |cRXP_WARN_addiert 20% rested experience zu von Euch Charakter; daher ist es effizienter, diese bei höheren Levels zu nutzen|r
]])

RXPGuides.RegisterGuide([[
#classic
<< SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Helm <<Druid/Shaman/Warrior
#subgroup Armschienen <<Mage/Hunter/Paladin/Priest/Rogue/Warlock
#name Smaragdschutzens Runen
#displayname Glühende Rüstung <<Mage
#displayname Aufspießen <<Druid
#displayname T.N.T. <<Hunter
#displayname Verbesserter Hammer des Zorns <<Paladin
#displayname Zone der Leere <<Priest
#displayname Zerschneidet in Stücke <<Rogue
#displayname Brand <<Shaman
#displayname Instabiles Gebrechen <<Warlock
#displayname Schildmeisterschaft <<Warrior

step
    +|cRXP_WARN_Geht zu einer der unten aufgelisteten Zonen. An den markierten Orten in jedem Einzelnen findet ihr einen NPC einer neuen Fraktion,|r |cRXP_FRIENDLY_The Emerald Wardens|r
    >>Dämmerwald
    >>Eschental
    >>Feralas
    >>Das Hinterland
    .zoneskip Duskwood
    .zoneskip Ashenvale
    .zoneskip Feralas
    .zoneskip The Hinterlands
step
    >>Sucht einen Quartiermeister der |cRXP_FRIENDLY_The Emerald Wardens|r am Ort auf und kauft von ihm eine Rune für von Euch.
    .goto Duskwood,45.6,51.2,-1
    .goto Ashenvale,89.6,40.6,-1
    .goto Feralas,48.6,12.6,-1
    .goto The Hinterlands,61.4,34.6,-1
    .target Quartermaster Falinar
    .target Quartermaster Kyleen
    .target Quartermaster Valdane
    .target Quartermaster Alandra
    .collect 221480,1 << Mage --Spell Notes: Molten Armor
    .collect 221481,1 << Priest --Nihilist Epiphany
    .collect 221482,1 << Warlock --Rune of Affliciton
    .collect 221483,1 << Shaman --Rune of Burn
    .collect 221511,1 << Warrior --Rune of the Protector
    .collect 221512,1 << Rogue --Rune of Alacrity
    .collect 221515,1 << Hunter --Rune of Detonation
    .collect 221517,1 << Druid --Rune of Bloodshed
    .collect 223288,1 << Paladin --Rune of the Hammer
step
    .train 431705 >>|cRXP_WARN_Benutzt die|r |T135791:0|t[|cRXP_FRIENDLY_Nihilist Offenbarung|r] |cRXP_WARN_zum Erlernen von|r |T132886:0|t[Zone der Leere] << Priest
    .train 429308 >>|cRXP_WARN_Benutzt die|r |T134939:0|t[|cRXP_FRIENDLY_Zauber-Notizen: Glühende Rüstung|r] |cRXP_WARN_zum Erlernen von|r |T132221:0|t[Glühende Rüstung] << Mage
    .train 431747 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Gebrechen|r] |cRXP_WARN_zum Erlernen von|r |T136228:0|t[Instabiles Gebrechen] << Warlock
    .train 416066 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Brandes|r] |cRXP_WARN_zum Erlernen von|r |T135822:0|t[Brand] << Shaman
    .train 410098 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Protector|r] |cRXP_WARN_zum Trainieren von|r |T132359:0|t[Schildmeisterschaft] << Warrior
    .train 432297 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Eifers|r] |cRXP_WARN_um zu trainieren|r |T236269:0|t[In Stücke schneiden] << Rogue
    .train 431611 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Detonation|r] |cRXP_WARN_um zu trainieren|r |T133713:0|t[T.N.T.] << Hunter
    .train 431447 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Blutvergießens|r] |cRXP_WARN_um zu trainieren|r |T304501:0|t[Aufspießen] << Druid
    .train 429261 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Hammers|r] |cRXP_WARN_um zu trainieren|r |T236262:0|t[Verbesserter Hammer des Zorns] << Paladin
    .use 221480 << Mage -- Spell Notes: Molten Armor
    .use 221481 << Priest --Nihilist Epiphany
    .use 221482 << Warlock --Rune of Affliciton
    .use 221483 << Shaman --Rune of Burn
    .use 221511 << Warrior --Rune of the Protector
    .use 221512 << Rogue --Rune of Alacrity
    .use 221515 << Hunter --Rune of Detonation
    .use 221517 << Druid --Rune of Bloodshed
    .use 223288,1 << Paladin --Rune of the Hammer

]])


RXPGuides.RegisterGuide([[
#classic
<< SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Helm <<Mage/Hunter/Paladin/Priest/Rogue/Warlock
#subgroup Armschienen <<Druid/Shaman/Warrior
#name Wild Opfergabe Runen
#displayname Fortgeschrittener Schutzzauber - 40 (Azeroth) <<Mage
#displayname Sperren und Laden - 40 (Azeroth) <<Hunter
#displayname Verbessertes Refugium - 40 (Azeroth) <<Paladin
#displayname Göttliche Aegis - 40 (Azeroth) <<Priest
#displayname Kampfkraft - 40 (Azeroth) <<Rogue
#displayname Springflut - 40 (Azeroth) <<Shaman
#displayname Rache - 40 (Azeroth) <<Warlock
#displayname Schwert und An Bord gehen - 40 (Azeroth) <<Warrior
#displayname Verbesserte rasende Regeneration - 40 (Azeroth) <<Druid

step
    #completewith next
    .zone Felwood >>Lauf zum Teufelswald
step
    .goto Felwood,51.6,82.0
    >>Sprecht mit |cRXP_FRIENDLY_Abgesandte des Schattenzahns|r beim Smaragdrefugium
    .accept 82043 >>Akzeptiert die Quest Die wilden Götter
    .target Shadowtooth Emissary
step
    #optional
    #completewith next
    .goto The Hinterlands,66.27,65.13,0
    >>|cRXP_WARN_Um diese Quest abzuschließen, benötigt ihr eine Person mit einem|r |T134799:0|t|cRXP_LOOT_Wildwhisper Draught|r |cRXP_WARN_in den Taschen. Es fällt von Elite-Trollen in Jintha'alor im Hinterland ab. Holt es nur, wenn niemand in der Gruppe von Euch für Hügel der Klingenhauer es hat|r
    .collect 221261,1 --Wildwhisper Draught
step
    .goto The Barrens,45.5,92.4
    >>Sucht eine Gruppe für Hügel der Klingenhauer. Räumt die Spirale bis zum Endboss |cRXP_ENEMY_Amnennar der Kältebringer|r und tötet ihn. Danach muss eine Person aus der Gruppe ihren |T134799:0|t|cRXP_LOOT_Wildwhisper Draught|r benutzen, um den geisterhaften |cRXP_FRIENDLY_Geist von Agamaggan|r zu beschwören. Sprecht mit ihm, um die Quest abzugeben und eine Folgequest zu erhalten
    .turnin 82043 >>Gebt die Quest Die wilden Götter ab
    .accept 82044 >>Akzeptiert die Quest Die wilden Götter
    .target Spirit of Agamaggan
    .mob Amnennar the Coldbringer
    .use 221261
step
    >>Ihr habt soeben ein |T237378:0|t|cRXP_LOOT_Agamaggan's Brüllen|r erhalten. Dieser Gegenstand kann in bestimmten Bereichen in den |cRXP_PICK_Schwarzfelstiefen|r, |cRXP_PICK_Zul'farrak|r und |cRXP_PICK_Maraudon|r verwendet werden, um einen neuen |cRXP_ENEMY_Im Delirium Wahnbesessene Uralte|r Endboss zu beschwören, der immer ein |T132119:0|t|cRXP_LOOT_Wild Opfergabe|r abwirft. Sammelt 3 davon auf, um die Quest abzuschließen. |T132119:0|t|cRXP_LOOT_Wild Offerings|r werden auch als Währung verwendet, um sehr mächtige Gegenstände vom |cRXP_FRIENDLY_Shadowtooth Kontaktaufnahme|r zu kaufen, also wollt ihr vielleicht mehr als nur die 3 für von Euch Rune farmen
    >>|cRXP_WARN_In|r |cRXP_FRIENDLY_Zul'farrak|r |cRXP_WARN_tötet 3 beliebige Bosse und ihr werdet einen|r |cRXP_ENEMY_Im Delirium Wahnbesessene Uralte|r |cRXP_WARN_nahe dem Ghaz'rilla-Pool beschwören können|r
    >>|cRXP_WARN_In|r |cRXP_FRIENDLY_Maraudon|r |cRXP_WARN_tötet|r |cRXP_ENEMY_Prinzessin Theradras|r |cRXP_WARN_und ihr werdet einen|r |cRXP_ENEMY_Im Delirium Wahnbesessene Uralte|r |cRXP_WARN_in ihrer Arena beschwören können|r
    >>|cRXP_WARN_In den|r |cRXP_FRIENDLY_Schwarzfelstiefen|r |cRXP_WARN_tötet|r |cRXP_ENEMY_Hoch Interrogator Gerstahn|r, |cRXP_ENEMY_Houndmaster Grebmar|r |cRXP_WARN_und beendet das|r |cRXP_ENEMY_Arena|r |cRXP_WARN_Event. Danach könnt ihr einen|r |cRXP_ENEMY_Im Delirium Wahnbesessene Uralte|r |cRXP_WARN_auf der Dunkel Eisen Straße zu Bael'gar beschwören|r
    >>|cRXP_WARN_TIPP:|r Die Opfergaben können in einem Raid gesammelt werden und ihr könnt den gleichen Dungeon mehrmals durchlaufen. Derzeit ist der schnellste Weg, sie zu farmen, |cRXP_WARN_einem 10er-Raid beizutreten|r und |cRXP_WARN_wiederholte Maraudon oder Zul'farrak Instanzen zu durchlaufen|r
    .complete 82044,1 --Wild Offering 3/3
    .use 221418
    .mob Delirious Ancient
step
    #optional
    #completewith next
    .zone Felwood >>Kehrt nach Teufelswald zurück
step
    .goto Felwood,51.6,82.0
    >>Sprecht mit |cRXP_FRIENDLY_Shadowtooth Kontaktaufnahme|r beim Smaragdrefugium
    .turnin 82044 >>Gebt die Quest Die wilden Götter ab
    .target Shadowtooth Emissary
step
    .train 431650 >>Benutzt den |T236160:0|t[|cRXP_WARN_Weisheit des Hyjal|r], den ihr erhalten habt, |cRXP_FRIENDLY_um|r |T237539:0|t[Göttliche Aegis] |cRXP_WARN_zu erlernen|r << Priest
    .train 431461 >>Benutzt den |T236160:0|t[|cRXP_WARN_Weisheit des Hyjal|r], den ihr erhalten habt, |cRXP_FRIENDLY_um|r |T132091:0|t[Verbesserte rasende Regeneration] |cRXP_WARN_zu erlernen|r << Druid
    .train 401754 >>Benutzt den |T236160:0|t[|cRXP_WARN_Weisheit des Hyjal|r], den ihr erhalten habt, |cRXP_FRIENDLY_um|r |T135733:0|t[Fortgeschrittener Schutzzauber] |cRXP_WARN_zu erlernen|r << Mage
    .train 416085 >>Benutzt den |T236160:0|t[|cRXP_WARN_Weisheit des Hyjal|r], den ihr erhalten habt, |cRXP_FRIENDLY_um|r |T236185:0|t[Sichern und Laden] |cRXP_WARN_zu erlernen|r << Hunter
    .train 429247 >>Benutzt den |T236160:0|t[|cRXP_WARN_Weisheit des Hyjal|r], den ihr erhalten habt, |cRXP_FRIENDLY_um|r |T135925:0|t[Verbessertes Refugium] |cRXP_WARN_zu erlernen|r << Paladin
    .train 432293 >>Benutzt den |T236160:0|t[|cRXP_WARN_Weisheit des Hyjal|r], den ihr erhalten habt, |cRXP_FRIENDLY_um|r |T135673:0|t[Kampfkraft] |cRXP_WARN_zu erlernen|r << Rogue
    .train 410105 >>Benutzt den |T236160:0|t[|cRXP_WARN_Weisheit des Hyjal|r], den ihr erhalten habt, |cRXP_FRIENDLY_um|r |T252995:0|t[Springflut] |cRXP_WARN_zu erlernen|r << Shaman
    .train 426470 >>Benutzt den |T236160:0|t[|cRXP_WARN_Weisheit des Hyjal|r], den ihr erhalten habt, |cRXP_FRIENDLY_um|r |T236299:0|t[Rache] |cRXP_WARN_zu erlernen|r << Warlock
    .train 427082 >>Benutzt den |T236160:0|t[|cRXP_WARN_Weisheit des Hyjal|r], den ihr erhalten habt, |cRXP_FRIENDLY_um|r |T236315:0|t[Schwert und Schild] |cRXP_WARN_zu erlernen|r << Warrior
    .use 222962 --Hyjal's Wisdom
]])

RXPGuides.RegisterGuide([[
<<Warlock/Priest/Mage/Paladin
<< SoD
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Helm <<Warlock
#subgroup Armschienen <<Paladin/Priest/Mage
#name Ley Kristall Runen
#displayname Verlagerung - 45 (Azeroth) <<Mage
#displayname Reinigende Macht - 45 (Azeroth) <<Paladin
#displayname Verzweiflung - 45 (Azeroth) <<Priest
#displayname Pyrolyse - 45 (Azeroth) <<Warlock

step
    #optional
    #completewith next
    >>|cRXP_WARN_Um diese Rune zu finden, müsst ihr 4|r |T134938:0|t|cRXP_LOOT_Schriftrolle der Geomantie|r bekommen und einen in vier Leykristalle in verschiedenen Zonen der Welt kanalisieren, um die|cRXP_WARN_ Enraged Leywalkers|r |cRXP_ENEMY_zu beschwören. Alternativ könnt ihr euch mit anderen Magiern, die die Schriftrolle haben, oder Hexenmeistern mit|r |T132842:0|t|cRXP_WARN_Worldcore Fragmente|r |cRXP_FRIENDLY_zusammenschließen|r << Mage
    >>|cRXP_WARN_Um diese Rune zu finden, müsst ihr 4|r |T132842:0|t|cRXP_FRIENDLY_Worldcore Fragmente|r aus euren|cRXP_WARN_ |T236294:0|t[|rWichtelforscher|cRXP_FRIENDLY_] |rExpeditionen bekommen und einen in vier Leykristalle in verschiedenen Zonen der Welt kanalisieren, um die|cRXP_WARN_ Enraged Leywalkers|r |cRXP_ENEMY_zu beschwören. Alternativ könnt ihr euch mit anderen Hexenmeistern, die das Bruchstück haben, oder Magiern mit|r |T134938:0|t|cRXP_WARN_Schriftrolle der Geomantie|r |cRXP_LOOT_zusammenschließen|r << Warlock
    +|cRXP_WARN_Um diese Rune zu finden, müsst ihr eine Gruppe mit einem Hexenmeister mit|r |T132842:0|t|cRXP_FRIENDLY_Worldcore Fragmente|r |cRXP_WARN_oder einem Magier mit|r |T134938:0|t|cRXP_LOOT_Schriftrollen von Geomantie|r |cRXP_WARN_bilden, um die benötigten Mobs zu beschwören. Ihr könnt sie nicht alleine beschwören|r << Priest/Paladin
    .collect 223171,4 << Mage
    .collect 223168,4 << Warlock

step
    >>Geht zu jedem der Leykristalle, die auf eurer Karte markiert sind, und benutzt eure |T134938:0|t|cRXP_LOOT_Schriftrolle der Geomantie|r darauf oder lasst jemanden in eurer Gruppe es tun, um einen |cRXP_ENEMY_Enraged Leywalker|r zu beschwören. Besiegt ihn und plündert seinen |cRXP_LOOT_Leycryst|r. Dies kann in beliebiger Reihenfolge geschehen << Mage
    >>Geht zu jedem der Leykristalle, die auf eurer Karte markiert sind, und benutzt euer |T132842:0|t|cRXP_FRIENDLY_Worldcore Bruchstück|r darauf oder lasst jemanden in eurer Gruppe es tun, um einen |cRXP_ENEMY_Enraged Leywalker|r zu beschwören. Besiegt ihn und plündert seinen |cRXP_LOOT_Leycryst|r. Dies kann in beliebiger Reihenfolge geschehen << Warlock
    >>Geht zu jedem der Leykristalle, die auf eurer Karte markiert sind, und lasst den Hexenmeister oder Magier in eurer Gruppe einen |cRXP_ENEMY_Enraged Leywalker|r beschwören. Besiegt ihn und plündert seinen |cRXP_LOOT_Leycryst|r. Dies kann in beliebiger Reihenfolge geschehen << Priest/Paladin
    .goto Azshara,22.0,79.0,-1
    .goto Feralas,57.0,60.0,-1
    .goto The Hinterlands,48.0,59.0,-1
    .goto Searing Gorge,55,65,-1
    .collect 221318,1 >>|T237193:0|t|cRXP_LOOT_Azshara-Leykristall|r von |cRXP_PICK_Azshara|r in der Nähe von Der Einsame Grat
    .collect 221317,1 >>|T237189:0|t|cRXP_LOOT_Feralas-Leykristall|r von |cRXP_PICK_Feralas|r in der Obere Wildnis
    .collect 221319,1 >>|T237192:0|t|cRXP_LOOT_Blackrock-Leykristall|r von südlichem |cRXP_PICK_Searing Verschlingen|r
    .collect 221320,1 >>|T237191:0|t|cRXP_LOOT_Hinterland-Leykristall|r von |cRXP_PICK_The Hinterland|r nördlich von Altar of Zul
    .mob Enraged Leywalker
    .train 429309,1 << Mage
    .train 431745,1 << Warlock
    .train 429255,1 << Paladin
    .train 431673,1 << Priest
step
    .train 429309 >> |cRXP_WARN_Benutzt einen der vier Kristalle, die ihr gesammelt habt, um sie zu kombinieren und erlernt|r |T132171:0|t[Verlagerung] << Mage
    .train 431745 >> |cRXP_WARN_Benutzt einen der vier Kristalle, die ihr gesammelt habt, um sie zu kombinieren und erlernt|r |T236290:0|t[Pyrolyse] << Warlock
    .train 429255 >> |cRXP_WARN_Benutzt einen der vier Kristalle, die ihr gesammelt habt, um sie zu kombinieren und erlernt|r |T135950:0|t[Reinigende Macht] << Paladin
    .train 431673 >> |cRXP_WARN_Benutzt einen der vier Kristalle, die ihr gesammelt habt, um sie zu kombinieren und erlernt|r |T237555:0|t[Verzweiflung] << Priest
    .use 221318 --Azshara Leycryst
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD/Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Helm
#title Geistige Gewandtheit << Shaman
#title Schmerz und Leid << Priest
#name Geistige Gewandtheit - 43 (Tanaris) << Shaman
#name Schmerz und Leiden - 43 (Tanaris) << Priest

-- Mental Dexterity/Pain and Suffering
-- PERMOK: Needs better waypoints

step
    #completewith next
    .zone Tanaris >>Lauf nach Tanaris
    .train 416055,1 << Shaman
    .train 415991,1 << Priest
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Wastewander Schatten Mages|r. Plündert sie für |T134939:0|t[|cRXP_LOOT_Coded Hexenmeister Notes|r]
    .collect 221547,1
    .mob Wastewander Shadow Mage
    .train 416055,1 << Shaman
    .train 415991,1 << Priest
step
    .train 416055,1 << Shaman
    .train 415991,1 << Priest
    #loop
    .goto Tanaris,59.8,24.0,35,0
    .goto Tanaris,65.6,32.2,35,0
    .goto Tanaris,62.4,33.2,30,0
    >>Tötet |cRXP_ENEMY_Wastewander Thieves|r. Plündert sie für |T134329:0|t[|cRXP_LOOT_Wastewander Cipher|r]
    .collect 221549,1
    .mob Wastewander Thief
step
    .train 416055,1 << Shaman
    .train 415991,1 << Priest
    #loop
    .goto Tanaris,58.4,38.6,40,0
    .goto Tanaris,60.3,23.4,40,0
    .goto Tanaris,66.2,35.0,40,0
    >>Tötet |cRXP_ENEMY_Wastewander Schatten Mages|r. Plündert sie für |T134939:0|t[|cRXP_LOOT_Coded Hexenmeister Notes|r]
    .collect 221547,1
    .mob Wastewander Shadow Mage
step
    .train 416055,1 << Shaman
    .train 415991,1 << Priest
    >>Benutzt die |T134329:0|t[Chiffre der Wüstenläufer] |cRXP_WARN_um|r |T237018:0|t[Deciphered Hexenmeister Notes] |cRXP_WARN_zu erhalten|r
    .goto Tanaris,58.0,36.0
    .use 221549
    .collect 221545,1
step
    .train 416055,1 << Shaman
    .train 415991,1 << Priest
    >>|cRXP_WARN_Steht auf der|r "Geheimnisvolle Schriftrolle der Beschwörung". |cRXP_WARN_Benutzt|r |T237018:0|t[Entzifferte Hexenmeister-Notizen] |cRXP_WARN_während ihr auf der Schriftrolle steht|r.
    >>Tötet die |cRXP_ENEMY_Enraged Leerwandler|r. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune of Geistige Gewandtheit|r] << Shaman
    >>Tötet die |cRXP_ENEMY_Enraged Leerwandler|r. Plündert sie für |T135975:0|t[|cRXP_FRIENDLY_Prophecy of Verdant Winter|r] << Priest
    .collect 220610,1 << Shaman
    .collect 221979,1 << Priest
step
    .itemcount 220610,1 << Shaman
    .itemcount 221979,1 << Priest
    .use 220610 << Shaman
    .use 221979 << Priest
    .train 416055 >>|cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Geistigen Gewandtheit|r] |cRXP_WARN_um zu erlernen|r |T136055:0|t[Geistige Gewandtheit] << Shaman
    .train 415991 >>|cRXP_WARN_Benutzt|r |T135975:0|t[|cRXP_FRIENDLY_Vorhersage von Verdant Winter|r] |cRXP_WARN_um zu erlernen|r |T237567:0|t[Schmerz und Leid] << Priest
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD/Hunter SoD/Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Läuten
#title Distanzwaffen-Spezialisierung
#name Distanzwaffen-Spezialisierung - 58 (Die Östlichen Pestländer)

step
    #completewith rangeSpec
    .zone Eastern Plaguelands >>Lauf in die Östlichen Pestländer
step << Horde
    #label rangeSpec
    .goto Eastern Plaguelands,26.0,74.0
    >>Plündert das rote Buch neben |cRXP_FRIENDLY_Nathanos Pestrufer|r. Es ist außerhalb des Hauses, links von der Tür. Es enthält |T134419:0|t[|cRXP_FRIENDLY_Rune der Distanzwaffen-Spezialisierung|r]
    .collect 226410,1 --Rune of Ranged Weapon Specialization
step << Alliance
    #label rangeSpec
    .goto Eastern Plaguelands,26.0,74.0
    >>Plündert das rote Buch neben |cRXP_ENEMY_Nathanos Pestrufer|r. Es ist außerhalb des Hauses, links von der Tür. Es enthält |T134419:0|t[|cRXP_FRIENDLY_Rune der Distanzwaffen-Spezialisierung|r]
    >>|cRXP_WARN_Wenn jemand in der Nähe ist, bittet sie zu ziehen|r |cRXP_ENEMY_Nathanos Pestrufer|r |cRXP_WARN_weg für eine Weile, während ihr sicher die Rune plündert|r
    >>|cRXP_WARN_Wenn niemand in der Nähe ist, könnt ihr euch von|r |cRXP_ENEMY_Nathanos|r |cRXP_WARN_töten lassen, und dann respawnt, während ihr im Inneren des Hauses steht und außerhalb seines Blickfeldes seid. Dann plündert das Buch von innen aus dem Haus, entweder mit der Interaktionstaste oder indem ihr die Kamera von Euch anwinkelt, damit ihr sie anklicken könnt|r << Warrior/Rogue
    >>|cRXP_WARN_Wenn niemand in der Nähe ist, setzt das Haustier von Euch auf|r |T136106:0|t[Bleiben] |cRXP_WARN_einen anständigen Abstand von|r |cRXP_ENEMY_Nathanos|r |cRXP_WARN_, dann sendet dem Haustier von Euch einen|r |T132152:0|t[Angreifen] |cRXP_WARN_Befehl, um ihn auf das Haustier von Euch zu aggrieren. Sobald er das Haustier von Euch anvisiert, stellt das Haustier von Euch auf|r |T132311:0|t[Passiv], |cRXP_WARN_dies wird das Haustier von Euch zur Bleiben-Position zurückbringen. Geht neben das Buch und benutzt |T132293:0|t[Totstellen], um aus dem Kampf auszusteigen und die Rune zu plündern|r << Hunter
    .collect 226410,1 --Rune of Ranged Weapon Specialization
step
    .train 453692 >>Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune der Distanzwaffen-Spezialisierung|r] um zu trainieren |T135490:0|t[Distanzwaffen-Spezialisierung]
    .use 226410
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD/Paladin SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Läuten
#title Macht des Glaubens
#name Macht des Glaubens - 60 (Die Östlichen Pestländer)

step
    #completewith next
    >>|cRXP_WARN_Das Erhalten dieser Rune erfordert, dass ihr gegen Gegner in einem Elitegebiet kämpft. Es ist möglich, dies allein zu tun, aber wenn ihr ein niedrigeres Level habt oder nicht sehr gut ausgerüstet seid, solltet ihr nach jemandem suchen, der euch hilft|r
    .zone Eastern Plaguelands >> Lauf in die Östlichen Pestländer
step
    >>|cRXP_WARN_Ihr könnt diese Rune zur gleichen Zeit wie|r |T135883:0|t[|cRXP_FRIENDLY_Binden Heilung|r] |cRXP_WARN_bekommen, wenn ihr diese Questreihe zuerst verfolgt. Geht zum|r |T135883:0|t[|cRXP_FRIENDLY_Binden Heilung|r] |cRXP_WARN_Runenleitfaden, wenn ihr lieber beide Rune zur selben Zeit bekommen wollt|r << Priest
    .goto Eastern Plaguelands,77.5,81.7,50 >> Reist zu Tyrs Hand, |cRXP_WARN_denkt daran, dass dies ein Elite-Gebiet ist|r
step
    .goto Eastern Plaguelands,83.6,78.2
    >>|cRXP_WARN_Geht zum Bibliotheks-Flügel des markierten Gebäudes auf eurer Karte von Euch und sucht ein Buch, das oben auf einem Bücherregal liegt. Plündert es für die Rune. Denkt daran, dass ihr es nicht im Kampf plündern könnt|r
    >>|cRXP_WARN_Ihr könnt entweder alle Mobs im Raum löschen oder neben dem Buch sterben und an einem Ort außerhalb der Sichtlinie der Mobs wiederbeleben, um die Rune zu plündern, ohne irgendetwas töten zu müssen|r
    .collect 226418,1 --Rune of Holy Specialization
    .train 453702,1
step
    #completewith next
    .train 453702 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune der Macht des Glaubens|r] um zu trainieren |T237537:0|t[Macht des Glaubens]
    .train 453702,1
    .itemcount 226418,1
    .use 226418
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD/Druid SoD/Hunter SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Läuten
#title Arkan-Spezialisierungen
#name Arkan-Spezialisierungen - 60 (Westliche Pestländer)

step
    #completewith next
    >>|cRXP_WARN_Diese Rune zu bekommen verlangt, dass ihr gegen Mobs in einem Elite-Gebiet kämpft. Es ist möglich, allein dies zu tun, aber wenn ihr ein niedrigeres Level habt oder nicht gut ausgerüstet seid, erwägt, jemanden zu suchen, der euch hilft|r
    .zone Western Plaguelands >> Lauf in die Westlichen Pestländer
step
    .goto Western Plaguelands,48.7,22.4,50 >> Reist zu Herdweiler, |cRXP_WARN_denkt daran, dass dies ein Elite-Gebiet ist|r
step
    .goto Western Plaguelands,47.3,13.6
    >>|cRXP_WARN_Geht zum Dach des auf eurer Karte markierten Turms. Sucht nach einem roten Buch, das in einer Ecke neben einem Bücherregal liegt, das von einem|r |cRXP_ENEMY_Scarlet Priester|r |cRXP_WARN_bewacht wird. Plündert es für die Rune|r
    .collect 226413,1 --Rune of Arcane Specialization
    .train 453702,1
step
    #completewith next
    .train 453695 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune der Arkan-Spezialisierungen|r] um zu trainieren |T132849:0|t[Arkan-Spezialisierungen]
    .train 453695,1
    .itemcount 226413,1
    .use 226413
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD/Paladin SoD/Warrior SoD/Shaman SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Läuten
#title Axt-Spezialisierung
#name Axt-Spezialisierung - 58 (Brennende Steppe)

step
    #completewith next
    .zone Burning Steppes >> Reise zur Brennenden Steppe
step
    .goto Burning Steppes,40.3,34.9,100 >> Reist zur Schwarzfelsfestung
step
    .goto Burning Steppes,39.9,34.1
    >>|cRXP_WARN_Betretet die Hochburg und sucht nach einem roten Buch, das am Ort auf eurer Karte von Euch markiert ist. Plündert es für die Rune|r
    .collect 226407,1 --Rune of Axe Specialization
step
    #completewith next
    .train 453688 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune der Axt-Spezialisierung|r] um zu trainieren |T132394:0|t[Axt-Spezialisierung]
    .itemcount 226407,1
    .use 226407
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD/Druid SoD/Warrior SoD/Shaman SoD/Mage SoD/Priest SoD/Rogue SoD/Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Läuten
#title Dolch-Spezialisierung
#name Dolch-Spezialisierung - 60 (Silithus)

step
    #completewith next
    .zone Burning Steppes >> Lauf nach Silithus
step
    .goto Silithus,20,85,50 >> Reist nach Süden der Zone zu einem Zelt in der Nähe der Tore von Ahn'Qiraj
step
    .goto Silithus,20,85
    >>|cRXP_WARN_Betretet das Zelt und sucht nach einem roten Buch, das am Ort auf eurer Karte von Euch markiert ist. Plündert es für die Rune|r
    .collect 226409,1 --Rune of Dagger Specialization
step
    #completewith next
    .train 453690 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune der Dolch-Spezialisierung|r] um zu trainieren |T135641:0|t[Dolch-Spezialisierung]
    .itemcount 226409,1
    .use 226409
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD/Warrior SoD/Shaman SoD/Rogue SoD/Warlock SoD/Paladin SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Läuten
#title Verteidigungsspezialisierung
#name Verteidigungsspezialisierung - 60 (Der Schwarzfels)

step
    #completewith next
    .zone 25 >> Reist zum Der Schwarzfels entweder durch Sengende Schlucht oder die Brennende Steppe
step
    .goto 1415/0,-1232.500,-7612.600,20 >> Reist zur Ostseite des Molten Span-Kreises, bis ihr einen Durchgang findet, der zu einem Weg zur Unteren Schwarzfelsspitze führt
step
    .goto 1415/0,-1294.200,-7574.700,5 >> Reist den Pfad hinauf und betretet den ersten Seitenraum zu eurer Rechten. |cRXP_WARN_Ihr müsst möglicherweise Elite-Mobs bekämpfen, die euch im Weg stehen, da ihr das Buch nicht im Kampf plündern könnt|r
step
    .goto 1415/0,-1302.100,-7583.400
    >>|cRXP_WARN_Sucht nach einem roten Buch auf dem Boden in diesem Raum. Es kann an mehreren Orten spawnen. Plündert es für die Rune|r
    .collect 226694,1 --Rune of Defense Specialization
step
    #completewith next
    .train 459313 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune der Verteidigungsspezialisierung|r] um zu trainieren |T134952:0|t[Verteidigungsspezialisierung]
    .itemcount 226694,1
    .use 226694
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Läuten
#title Wildkampf-Spezialisierung
#name Wildkampf-Spezialisierung - 60 (Winterquell)

step
    #completewith next
    .zone Winterspring >> Reist nach Winterquell
step
    .goto Winterspring,49.0,8.0,50 >> Geht nach Norden zu den Frostsäblerfelsen
step
    .goto Winterspring,49.0,8.0
    >>|cRXP_WARN_Sucht nach einem roten Buch am markierten Ort. Es könnte von zwei Level 55-56|r |cRXP_ENEMY_Frostsabers|r |cRXP_WARN_bewacht werden. Plündert es für die Rune|r
    .collect 226419,1 --Rune of Feral Combat Specialization
step
    #completewith next
    .train 453703 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune der Wildkampf-Spezialisierung|r] um zu trainieren |T132116:0|t[Wildkampf-Spezialisierung]
    .itemcount 226419,1
    .use 226419
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD/Mage SoD/Shaman SoD/Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Läuten
#title Feuer-Spezialisierung
#name Feuer-Spezialisierung - 52 (Sengende Schlucht)

step
    #completewith next
    .zone Searing Gorge >> Reist nach Sengende Schlucht
step
    .goto 1427/0,-1425.800,-6772.400,25 >> Betretet die Schlackenschächte über den Höhleneingang, der auf eurer Karte von Euch markiert ist
step
    .goto 1427/0,-1306.900,-6642.800,25 >> Überquert die Brücke nach Norden
step
    .goto 1427/0,-1225.300,-6623.600
    >>|cRXP_WARN_Sucht nach einem roten Buch auf einer Bank hinter|r |cRXP_ENEMY_Aufseher Maltorius|r. |cRXP_WARN_Plündert es für die Rune. Denkt daran, dass ihr es nicht im Kampf plündern könnt|r
    >>|cRXP_WARN_Wenn ihr ein höheres Level habt, könnt ihr es plündern ohne|r |cRXP_ENEMY_Aufseher Maltorius|r |cRXP_WARN_zu ziehen, wenn ihr den äußersten Rand seines Balkons umarmt. Wenn ihr das nicht tun könnt, versucht, jemanden zu bitten, ihn weg zu ziehen, während ihr das Buch plündert, oder tötet ihn und seine Wachen|r
    >>|cRXP_WARN_Als ein Jäger könnt ihr ihn weg ziehen mit eurer von Euch Haustier, dann wirkt|r |T132293:0|t[Totstellen] |cRXP_WARN_neben dem Buch, um Kampf zu beenden und es zu plündern. Stellt sicher, dass ihr den Aufseher an einen Ort zieht, außerhalb von eurer von Euch Sichtlinie, sonst könnte er euch zurück in Kampf bringen|r << Hunter
    .collect 226414,1 --Rune of Fire Specialization
step
    #completewith next
    .train 453696 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune der Feuer-Spezialisierung|r] um zu trainieren |T132847:0|t[Feuer-Spezialisierung]
    .itemcount 226414,1
    .use 226414
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD/Warrior SoD/Rogue SoD/Druid SoD/Shaman SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Läuten
#title Faustwaffen-Spezialisierung
#name Faustwaffen-Spezialisierung - 60 (Silithus)

step
    #completewith next
    .zone Silithus >> Lauf nach Silithus
step
    .goto 1427/0,-1225.300,-6623.600
    >>|cRXP_WARN_Sucht nach einem roten Buch am markierten Ort. Es ist von Twilight umhüllt und könnte ein bisschen schwer zu sehen sein|r
    .collect 226411,1 --Rune of Fist Weapon Specialization
step
    #completewith next
    .train 453691 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune der Faustwaffen-Spezialisierung|r] um zu trainieren |T133832:0|t[Faustwaffen-Spezialisierung]
    .itemcount 226411,1
    .use 226411
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD/Hunter SoD/Shaman SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Läuten
#title Frostschaden-Spezialisierung
#name Frostschaden-Spezialisierung - 60 (Winterquell)

step
    #completewith next
    .zone Winterspring >> Reist nach Winterquell
step
    .goto Winterspring,59.0,59.0,50 >> Geht nach Süden zum Owlbeast-Lager
step
    .goto Winterspring,59.0,59.0
    >>|cRXP_WARN_Sucht nach einem roten Buch am markierten Ort. Es könnte von ein Paar Level 57-58|r |cRXP_ENEMY_Owlbeasts|r |cRXP_WARN_bewacht werden. Plündert es für die Rune|r
    .collect 226415,1 --Rune of Frost Specialization
step
    #completewith next
    .train 453697 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune der Frostschaden-Spezialisierung|r] um zu trainieren |T132852:0|t[Frostschaden-Spezialisierung]
    .itemcount 226415,1
    .use 226415
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD/Rogue SoD/Shaman SoD/Hunter SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Läuten
#title Natur-Spezialisierung
#name Natur-Spezialisierung - 56 (Teufelswald)

step
    #completewith next
    .zone Felwood >> Lauf zum Teufelswald
step
    .goto Felwood,63.42,7.71,50 >> Geht nach Norden zum Revier der Teufelspfoten
step
    .goto Felwood,62.8,7.5
    >>|cRXP_WARN_Sucht nach einem roten Buch am markierten Ort. Es befindet sich in einem Lager neben|r |cRXP_ENEMY_Häuptling Blutmagen|r |cRXP_WARN_Plündert es für die Rune|r
    .collect 226416,1 --Rune of Nature Specialization
step
    #completewith next
    .train 453698 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune der Natur-Spezialisierung|r] um zu trainieren |T132848:0|t[Natur-Spezialisierung]
    .itemcount 226416,1
    .use 226416
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD/Rogue SoD/Shaman SoD/Paladin SoD/Priest SoD/Druid SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Läuten
#title Streitkolben-Spezialisierung
#name Streitkolben-Spezialisierung - 60 (Sumpfland)

step
    #completewith next
    .zone Wetlands >> Reist ins Sumpfland
step
    .goto 1437/0,-3451.700,-3450.800,25 >> Geht nach Osten zum Anfang des Pfads zu Grim Batol
step
    .goto 1437/0,-3582.500,-4138.200,25 >> Folgt die Straße die ganze Weise hinauf zu Grim Batol. |cRXP_WARN_Kämpft nicht gegen die roten Drachen auf dem Weg, ihr könnt dort ankommen, ohne sie töten zu müssen|r
step
     .goto 1437/0,-3451.900,-4052.500
    >>|cRXP_WARN_Geht den Pfad hinauf zum Tor von Grim Batol. Sucht nach einem roten Buch auf der rechten Seite des Eingangs. Plündert es für die Rune|r
    .collect 226408,1 --Rune of Mace Specialization
step
    #completewith next
    .train 453689 >> Benutzt den |T134419:0|t[|cRXP_FRIENDLY_Rune of Streitkolben-Spezialisierung|r] um |T133038:0|t[Streitkolben-Spezialisierung] zu trainieren
    .itemcount 226408,1
    .use 226408
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD/Warlock SoD/Shaman SoD/Mage SoD/Priest SoD/Druid SoD/Hunter SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Läuten
#title Stangenwaffen-Spezialisierung
#name Stangenwaffen-Spezialisierung - 60 (Azshara)

step
    #completewith next
    .zone Azshara >> Reise nach Azshara
step
    .goto Azshara,76.43,43.95,100 >> Geht zum Tempel von Arkkoran
step
    .goto Azshara,76.88,44.24
    >>|cRXP_WARN_Sucht nach einem roten Buch, das auf einem moonwell im Tempel liegt. Beute es für die Rune|r
    .collect 226412,1 --Rune of Pole Weapon Specialization
step
    #completewith next
    .train 453694 >> Benutzt den |T134419:0|t[|cRXP_FRIENDLY_Rune of Stangenwaffen-Spezialisierung|r] um |T135145:0|t[Stangenwaffen-Spezialisierung] zu trainieren
    .itemcount 226412,1
    .use 226412
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD/Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Läuten
#title Schatten-Spezialisierung
#name Schatten-Spezialisierung - 60 (Verwüstete Lande)

step
    #completewith next
    .zone Blasted Lands >> Reist nach Verwüstete Lande
step
    .goto Blasted Lands,45.19,55.29,100 >> Geht nach Süden zur Besudelten Narbe. |cRXP_WARN_Ihr werdet ein Elitegebiet mit vielen hochstufigen Mobs durchqueren müssen, die immun gegen CC sind. Ihr werdet wahrscheinlich einen Todeslauf zum Ort der Rune machen müssen|r
step
    .goto Blasted Lands,33.0,48.0
    >>|cRXP_WARN_Sucht nach einem roten Buch, das auf einem Altar liegt, der auf von Euch Karte markiert ist. Beute es für die Rune|r
    .collect 226417,1 --Rune of Shadow Specialization
step
    #completewith next
    .train 453700 >> Benutzt den |T134419:0|t[|cRXP_FRIENDLY_Rune of Schatten-Spezialisierung|r] um |T132851:0|t[Schatten-Spezialisierung] zu trainieren
    .itemcount 226417,1
    .use 226417
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD/Warrior SoD/Rogue SoD/Paladin SoD/Mage SoD/Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Läuten
#title Schwert-Spezialisierung
#name Schwert-Spezialisierung - 60 (Gebirgspass der Totenwinde)

step
    #completewith next
    .zone Deadwind Pass >> Reist zu Gebirgspass der Totenwinde
step
    .goto Deadwind Pass,47.40,75.50 >> Geht nach Süden zu Karazhan
step
    .goto 1430/0,-2019.100,-11170.300,10 >> BETRETET den Keller des Meisters
step
    .goto Deadwind Pass,43.06,74.58
    >>|cRXP_WARN_ENTER den Höhlenbereich und sucht nach einem roten Buch im Ort, der auf von Euch Karte markiert ist. Beute es für die Rune|r
    .collect 226406,1 --Rune of Sword Specialization
step
    #completewith next
    .train 453635 >> Benutzt den |T134419:0|t[|cRXP_FRIENDLY_Rune of Schwert-Spezialisierung|r] um |T132223:0|t[Schwert-Spezialisierung] zu trainieren
    .itemcount 226406,1
    .use 226406
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD/Druid SoD/Shaman SoD/Paladin SoD/Mage SoD/Warlock SoD/Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Läuten
#title Meditationsspezialisierung
#name Meditationsspezialisierung - 30 (Tausend Nadeln)

step
    #completewith next
    .zone Thousand Needles >> Reist zu den Flimmern Flats in Tausend Nadeln
    >>Die nächste Flugroute zum Ort ist Gadgetzan
step
    .goto Thousand Needles,80,77,10 >> Geht in die auf von Euch Karte markierte Hütte
step
    .goto Thousand Needles,80,77
    >>|cRXP_WARN_ENTER die Hütte und sucht nach einem |cRXP_WARN_grauen Buch|r, das auf einem Regal drinnen liegt. Beute es für die Rune|r
    .collect 231828,1 --Rune of Meditation Specialization
step
    .train 468763 >> Benutzt den |T134419:0|t[|cRXP_FRIENDLY_Rune of Meditationsspezialisierung|r] um |T135913:0|t[Meditationsspezialisierung] zu trainieren
    .itemcount 231828,1
    .use 231828
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD/Shaman SoD/Paladin SoD/Mage SoD/Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Läuten
#title Heilungsspezialisierung
#name Heilungsspezialisierung - 40 (Arathihochland)

step
    #completewith next
    .zone Arathi Highlands >> Reist zum Arathihochland
step
    .goto Arathi Highlands,21.98,79.75,40 >> Begebt euch zur Faldirbucht und folgt dem Pfad zwischen den Bergen und Stromgardes südöstlicher Mauer
step
    .goto Arathi Highlands,35.2,79.1
    >>|cRXP_WARN_Kopf zum Lagerfeuer neben |cRXP_FRIENDLY_Professor Prasseltrop|r, sucht nach einem |cRXP_WARN_grauen Buch|r, das auf einer Kiste neben dem Lagerfeuer liegt. Beute es für die Rune|r
    .collect 231829,1 --Rune of Healing Specialization
    .target Professor Phizzlethorpe
step
    .train 468761 >> Benutzt den |T134419:0|t[|cRXP_FRIENDLY_Rune of Heilungsspezialisierung|r] um |T135913:0|t[Heilungsspezialisierung] zu trainieren
    .itemcount 231829,1
    .use 231829
]])
