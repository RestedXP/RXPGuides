if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Sühne - 3 (Wald von Elwynn)
#title Sühne

step << Priest
    #season 2
    .goto Elwynn Forest,48.61,27.63
    >>Tötet |cRXP_ENEMY_Kobold Laborers|r. Plündert sie für |T136222:0|t[|cRXP_FRIENDLY_Memory of a Troubled Akolyth|r]
    .collect 205951,1 -- Memory of a Troubled Acolyte (1)
    .mob Kobold Laborer
    .train 402862,1
step << Priest
    #season 2
    .goto Elwynn Forest,49.808,39.489
    >>|cRXP_WARN_Tippt /knien in euren Chat, während ihr in der Abtei von Nordhain seid|r
    >>|cRXP_WARN_Ihr werdet|r |T135934:0|t[Meditation über das Licht]|cRXP_WARN_ Stärkungszauber|r erhalten
    .cast 410958 >> |cRXP_WARN_Benutzt|r |T136222:0|t[|cRXP_FRIENDLY_Erinnerung an einen besorgten Akolythen|r] |cRXP_WARN_während ihr den|r |T135934:0|t[Meditation über das Licht] |cRXP_WARN_Stärkungszauber habt|r
    .use 205951
    .itemcount 205951,1
    .train 402862,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Sühne - 1 (Dun Morogh)
#title Sühne


step << Priest
    #season 2
    .goto Dun Morogh,26.733,72.552
    >>Öffnet die |cRXP_PICK_Schließkiste der Felsenkiefer|r auf dem Boden. Plündert sie für die |T136222:0|t|cRXP_LOOT_[Erinnerung an einen besorgten Akolythen]|r
    .collect 205951,1 -- Memory of a Troubled Acolyte (1)
    .train 402862,1
step << Priest
    #season 2
    .goto 1426,28.922,66.378
    .aura 410935 >>|cRXP_WARN_Wählt den |cRXP_FRIENDLY_Altar des Lichts|r im Inneren zum Ziel, um den|r |T135934:0|t[Meditation über das Licht] |cRXP_WARN_Stärkungszauber zu erhalten|r
    >>|cRXP_WARN_Falls das nicht funktioniert, gebt /knien ein, während der |cRXP_FRIENDLY_Altar des Lichts|r anvisiert ist|r
    .target Altar of the Light
    .emote KNEEL,208565
    .train 402862,1
step << Priest
    #season 2
    .train 402862 >> |cRXP_WARN_Benutzt die|r |T136222:0|t|cRXP_LOOT_[Erinnerung an einen besorgten Akolythen]|r |cRXP_WARN_um|r |T133816:0|t[Handschuhe prägen - Sühne] zu lernen
    .aura -410935
    .use 205951
]])

RXPGuides.RegisterGuide([[
#classic
<< NightElf Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Sühne - 2 (Laubschattental)
#title Sühne

step << NightElf Priest
    #season 2
    .goto Teldrassil,59.92,41.74,20,0
    .goto Teldrassil,59.174,40.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shanda|r upstairs
    .accept 77574 >> Akzeptiert die Quest Meditation über Elune
    .target Shanda
    .train 402862,1
step << NightElf Priest
    #season 2
    #completewith next
    .isOnQuest 77574
    .goto Teldrassil,59.940,33.052,10 >> Reist zum Mondquell in Laubschattental
    .train 402862,1
step << NightElf Priest
    #season 2
    .isOnQuest 77574
    .goto Teldrassil,59.940,33.052
    .aura 419307 >>|cRXP_WARN_Sobald ihr am Mondquell seid, tippt /knien in euren Chat ein|r
    >>|cRXP_WARN_Ihr werdet den|r |T136057:0|t[Meditation über Elune] |cRXP_WARN_Stärkungszauber erhalten|r
    .train 402862,1
step << NightElf Priest
    #season 2
    #label PenanceRune
    .isOnQuest 77574
    .use 205951 >> |cRXP_WARN_Benutzt|r |T136222:0|t[|cRXP_FRIENDLY_Erinnerung an einen besorgten Akolythen|r] |cRXP_WARN_während ihr den|r |T136057:0|t[Meditation über Elune] |cRXP_WARN_Stärkungszauber habt|r
    .complete 77574,1 -- Learn: Engrave Gloves - Penance
    .target Altar of the Light
    .train 402862,1
step << NightElf Priest
    #season 2
    .goto Teldrassil,59.92,41.74,20,0
    .goto Teldrassil,59.174,40.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shanda|r upstairs
    .turnin 77574 >> Gebt die Quest Meditation über Elune ab
    .target Shanda
    .train 402862,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Troll Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Sühne - 2 (Durotar)
#title Sühne


    --Rune of Penance

step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ken'jai|r
    .accept 77642 >>Akzeptiert die Quest Weisheit der Loa
    .target Ken'jai
step << Priest
    #season 2
    .goto Durotar,55.41,72.84
    >>Reist zum |cRXP_PICK_Loaaltar|r in Sen'Jin Village und schreibt /knien
    .use 205951 >>Sprecht mit dem |cRXP_FRIENDLY_Schlangen Loa|r wenn er erscheint, dann nutze |T136222:0|t[|cRXP_FRIENDLY_Erinnerung an einen besorgten Akolythen|r]
    .complete 77642,1 --Learn Spell: Engrave Gloves - Penance
    .target Serpent Loa
    .skipgossip
step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ken'jai|r
    .turnin 77642 >>Gebt die Quest Weisheit der Loa ab
    .target Ken'jai
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Undead Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Sühne - 2 (Tirisfal)
#title Sühne


    --Rune of Penance

step << Priest
    #season 2
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duesten|r
    .accept 77670 >>Akzeptiert die Quest Meditation über den Untod
    .target Dark Cleric Duesten
step << Priest
    #season 2
    .goto Tirisfal Glades,31.06,64.80
    >>BETRETET den Friedhof und schreibt /knien
    .use 205951 >>Benutzt |T136222:0|t[|cRXP_FRIENDLY_Erinnerung an einen besorgten Akolythen|r] während ihr den |T237569:0|t[Meditation über den Untod] Stärkungszauber erhaltet
    .complete 77670,1 >>Erlernt Zauber: Handschuhe prägen - Sühne
step << Priest
    #season 2
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duesten|r
    .turnin 77670 >>Gebt die Quest Meditation über den Untod ab
    .target Dark Cleric Duesten

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Homunculi - 8 (Durotar)
#title Homunculi

step
    .train 402852,1
    #completewith next
    .zone Durotar >>Reist nach Durotar
step
    .train 402852,1
    .goto Durotar,55.32,72.66
    .emote KNEEL,208309
    .aura 417316 >>Kniet vor dem |cRXP_PICK_Loaaltar|r und sprecht mit |cRXP_FRIENDLY_Schlangenloa|r
    .skipgossip 208307,1
    .target Serpent Loa
step
    .train 402852,1
    >>Tötet die |cRXP_ENEMY_Voodoo Trolls|r. Plündert sie für |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Entweiht Zitadelle|r]
    .goto Durotar,67.6,86.4
    .collect 205947,1
    .mob Voodoo Troll
step << Troll
    .train 402852,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>Kniet vor dem |cRXP_PICK_Loaaltar|r und sprecht mit dem |cRXP_FRIENDLY_Schlangenloa|r um den |T136077:0|t[Meditation über die Loa] Effekt zu erhalten
step << Troll
    .train 402852,1
    .aura 418459 >>|cRXP_WARN_Jetzt findet einen Untoten Priester mit einem Loa-Buff. Kniet vor ihm und er muss /beten für euch.|r
step << Undead
    .train 402852,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>Kniet vor dem |cRXP_PICK_Loaaltar|r und sprecht mit dem |cRXP_FRIENDLY_Schlangenloa|r um den |T136077:0|t[Meditation über die Loa] Effekt zu erhalten
step << Undead
    .train 402852,1
    .goto Durotar,55.32,72.66
    .aura 418459 >>Knien im Friedhof von Sen'Jin|cRXP_WARN_ um den |T237569:0|t[Meditation über den Untod]|r Buff zu erhalten
step
    .use 205947
    .itemcount 205947,1
    .train 402852 >>|cRXP_WARN_Benutzt die|r |T135975:0|t[|cRXP_FRIENDLY_Prophezeiung einer entweihten Zitadelle|r] |cRXP_WARN_um|r |T237570:0|t[Homunculi] zu lernen
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Homunculi - 7 (Tirisfal)
#title Homunkuli

step
    .train 402852,1
    #completewith next
    .zone Tirisfal Glades >>Reist nach Tirisfal
step
    .train 402852,1
    >>Tötet die |cRXP_ENEMY_Scarlet Warriors|r oder die |cRXP_ENEMY_Scarlet Missionaries|r. Plündert sie nach der |T135975:0|t[|cRXP_FRIENDLY_Prophezeiung einer entweihten Zitadelle|r]
    .goto Tirisfal Glades,50.6,67.8,0
    .goto Tirisfal Glades,32.6,48.6
    .collect 205947,1
    .mob Scarlet Warrior
    .mob Scarlet Missionary
step << Troll
    .train 402852,1
    .aura 418459 >>Jetzt müsst ihr einen Untoter Priester mit einem Loa-Buff finden. Ihr müsst vor ihm knien und er muss /beten für euch eingeben, damit ihr den |T237569:0|t[Meditation über den Untod]|cRXP_WARN_ Buff erhaltet.|r
step << Troll
    #completewith next
    .zone Durotar >>Reist nach Durotar (nehmt den Zeppelin nach Orgrimmar)
step << Troll
    .train 402852,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>Kniet vor dem |cRXP_PICK_Loaaltar|r und sprecht mit dem |cRXP_FRIENDLY_Schlangenloa|r um den |T136077:0|t[Meditation über die Loa] Effekt zu erhalten
step << Undead
    #completewith next
    .zone Durotar >>Reist nach Durotar (nehmt den Zeppelin nach Orgrimmar)
step << Undead
    .train 402852,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>Kniet vor dem |cRXP_PICK_Loaaltar|r und sprecht mit dem |cRXP_FRIENDLY_Schlangenloa|r um den |T136077:0|t[Meditation über die Loa] Effekt zu erhalten
    *Ihr könnt auch einen Troll Priester mit dem |T136077:0|t[Meditation über die Loa]|cRXP_WARN_ Buff finden. Kniet vor ihm und er muss /beten für euch.|r
step << Undead
    .train 402852,1
    .goto Durotar,57.15,73.36
    .aura 418459 >>|cRXP_WARN_Kniet am Sen'jin-Friedhof|r um den |T237569:0|t[Meditation über den Untod]-Buff zu erhalten
step
    .use 205947
    .itemcount 205947,1
    .train 402852 >>|cRXP_WARN_Benutzt die|r |T135975:0|t[|cRXP_FRIENDLY_Prophezeiung einer entweihten Zitadelle|r] |cRXP_WARN_um|r |T237570:0|t[Homunculi] zu lernen
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Geteilter Schmerz - 13 (Durotar)
#title Geteilter Schmerz

step
    #completewith next
    .zone Durotar >>Reist nach Durotar
step
    .train 402854,1
    >>Tötet |cRXP_ENEMY_Makasgar|r oder |cRXP_ENEMY_Gazz'uz|r (in der Höhle), je nachdem, welcher euch am nächsten ist (der Wegpunkt führt euch zum nächsten). Plündert sie nach der |T136222:0|t[|cRXP_FRIENDLY_Memory of an Eingesperrt Retter|r]
    .goto Durotar,52.6,8.8,-1
    .goto Durotar,62.0,66.2,-1
    .collect 205945,1
    .mob Makasgar
    .mob Gazz'uz
step
    .train 402854,1
    .goto Durotar,55.32,72.66
    .emote KNEEL,208309
    .aura 417316 >>Kniet vor dem |cRXP_PICK_Loaaltar|r und sprecht mit dem |cRXP_FRIENDLY_Schlangenloa|r um den |T136077:0|t[Meditation über die Loa] Effekt zu erhalten
    .skipgossip 208307,1
    .target Serpent Loa
step
    .use 205945
    .itemcount 205945,1
    .train 402854 >>|cRXP_WARN_Benutzt die|r |T136222:0|t[|cRXP_FRIENDLY_Erinnerung eines Eingesperrten Retters|r] |cRXP_WARN_zum Trainieren|r |T136160:0|t[Geteilter Schmerz]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Geteilter Schmerz - 6 (Tirisfal)
#title Geteilter Schmerz

step
    #completewith next
    .zone Tirisfal Glades >>Reist nach Tirisfal
step
    .train 402854,1
    >>Tötet die |cRXP_ENEMY_Tirisfal Farmers|r. Plündert sie für |T136222:0|t[|cRXP_FRIENDLY_Memory of an Eingesperrt Retter|r]
    .goto Tirisfal Glades,36.2,50.4
    .collect 205945,1
    .mob Tirisfal Farmer
step << Undead
    .train 402854,1
    .goto Tirisfal Glades,56.39,49.39
    .aura 418459 >>Kniet im Friedhof, bis ihr den Buff |T237569:0|t[Meditation über den Untod] erhaltet
step << Troll
    #completewith SharedPainTirisfalA
    .zone Durotar >>Reist nach Durotar (nehmt den Zeppelin nach Orgrimmar)
step << Troll
    #label SharedPainTirisfalA
    .train 402854,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .aura 417316 >>Kniet vor dem |cRXP_PICK_Loaaltar|r und sprecht mit dem |cRXP_FRIENDLY_Schlangenloa|r um den |T136077:0|t[Meditation über die Loa] Effekt zu erhalten
    .aura -418459
    >>Ihr könnt auch einen Untoter Priester mit einem Loa-Buff finden. Ihr müsst vor ihm knien und er muss /beten für euch, um den |T237569:0|t[Meditation über den Untod]|cRXP_WARN_ Buff zu erhalten.|r
    .skipgossip 208307,1
step
    .use 205945
    .itemcount 205945,1
    .train 402854 >>|cRXP_WARN_Benutzt die|r |T136222:0|t[|cRXP_FRIENDLY_Erinnerung eines Eingesperrten Retters|r] |cRXP_WARN_zum Trainieren|r |T136160:0|t[Geteilter Schmerz]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Pest der Leere - 5 (Durotar)
#title Pest der Leere

step
    #completewith next
    .zone Durotar >>Reist nach Durotar
step
    .train 425216,1
    >>Tötet die |cRXP_ENEMY_Sailors|r und |cRXP_ENEMY_Marines|r. Plündert sie für |T136222:0|t[|cRXP_FRIENDLY_Memory of a Finstere Entschlossenheit|r]
    .goto Durotar,57.6,55.4
    .collect 205940,1
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step
    .train 425216,1
    .goto Durotar,55.32,72.66
    .emote KNEEL,208309
    .aura 417316 >>Kniet vor dem |cRXP_PICK_Loaaltar|r und sprecht mit dem |cRXP_FRIENDLY_Schlangenloa|r um den |T136077:0|t[Meditation über die Loa] Effekt zu erhalten
    .skipgossip 208307,1
    .target Serpent Loa
step
    .use 205940
    .itemcount 205940,1
    .train 425216 >>|cRXP_WARN_Benutzt die|r |T136222:0|t[|cRXP_FRIENDLY_Erinnerung an einen dunklen Zweck|r] |cRXP_WARN_zum Trainieren von|r |T237514:0|t[Pest der Leere]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Pest der Leere - 6 (Tirisfal)
#title Pest der Leere

step
    #completewith next
    .zone Tirisfal Glades >>Reist nach Tirisfal
step
    .train 425216,1
    >>Tötet |cRXP_ENEMY_Gillgar|r. Plündert ihn für |T136222:0|t[|cRXP_FRIENDLY_Erinnerung an einen dunklen Zweck|r]
    .goto Tirisfal Glades,25.6,48.2
    .collect 205940,1
    .mob Gillgar
step << Undead
    .train 425216,1
    .goto Tirisfal Glades,56.39,49.39
    .aura 418459 >>Kniet am Friedhof bis ihr den |T237569:0|t[Meditation über den Untod]-Buff erhaltet
step << Troll
    #completewith next
    .zone Durotar >>Reist nach Durotar (nehmt den Zeppelin nach Orgrimmar)
step << Troll
    .train 402854,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .aura 417316 >>Kniet vor dem |cRXP_PICK_Loaaltar|r und sprecht mit dem |cRXP_FRIENDLY_Schlangenloa|r um den |T136077:0|t[Meditation über die Loa] Effekt zu erhalten
    .skipgossip 208307,1
step
    .use 205940
    .itemcount 205940,1
    .train 425216 >>|cRXP_WARN_Benutzt die|r |T136222:0|t[|cRXP_FRIENDLY_Erinnerung an einen dunklen Zweck|r] |cRXP_WARN_zum Trainieren von|r |T237514:0|t[Pest der Leere]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Gebet der Besserung - 6 (Durotar)
#title Gebet der Besserung

step
    .goto Durotar,48.04,79.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Adventurer's Willenskraft|r innerhalb Kolkar Crag
    >>|cRXP_WARN_Ein anderer Spieler (Priester oder Schamane) muss auf das Portal klicken. Plündert danach den|r |cRXP_FRIENDLY_Abenteurergeist|r |cRXP_WARN_für|r |T135791:0|t[|cRXP_FRIENDLY_Reciprocal Offenbarung|r]
    .collect 205944,1 --Reciprocal Epiphany (1)
    .target Adventurer's Spirit
    .skipgossip
    .train 402848,1
step
    .use 205944
    .itemcount 205944,1
    .train 402848 >>|cRXP_WARN_Benutzt die|r |T135791:0|t[|cRXP_FRIENDLY_Reciprocal Offenbarung|r] |cRXP_WARN_zum Trainieren|r |T135944:0|t[Gebet der Besserung]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Gebet der Besserung - 10 (Mulgore)
#title Gebet der Besserung

step
    .goto Mulgore,60.39,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Abenteurergeist|r außerhalb der Venture Co. Mine
    >>|cRXP_WARN_Ein anderer Spieler (Priester oder Schamane) muss das Portal anklicken. Plündert die|r |cRXP_FRIENDLY_Adventurer's Willenskraft|r |cRXP_WARN_danach für|r |T135791:0|t[|cRXP_FRIENDLY_Reciprocal Offenbarung|r]
    .collect 205944,1 --Reciprocal Epiphany (1)
    .target Adventurer's Spirit
    .skipgossip
    .train 402848,1
step
    .use 205944
    .itemcount 205944,1
    .train 402848 >>Benutzt den|cRXP_WARN_ |T135791:0|t[|rReciprocal Offenbarung|cRXP_FRIENDLY_] |rum|cRXP_WARN_ |T135944:0|t[Gebet der Besserung]|r zu trainieren
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Okkultismus - 10 (Loch Modan)
#title Okkultismus

step << Priest
    #completewith MinerGear
    .goto Loch Modan,35.50,18.97,20 >> Betretet die Silberbachmine
    .train 425215,1
step << Priest
    .goto Loch Modan,35.6,20.6
    >>Tötet |cRXP_ENEMY_Tunnel Ratten|r. Plündert sie für an |T237281:0|t[|cRXP_LOOT_Offering Münze|r]
    .collect 208823,1 -- Offering Coin (1)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Geomancer
    .train 425215,1
step << Priest
    .goto Loch Modan,36.689,20.964
    .use 208823 >> |cRXP_WARN_Benutzt die|r |T237281:0|t[|cRXP_LOOT_Opfermünze|r] |cRXP_WARN_bei dem Brunnen in der Silberbachmine|r |cRXP_WARN_um die|r |T136222:0|t[|cRXP_FRIENDLY_Erinnerung eines ergebenen Feldherrs|r]
    .collect 205905,1 -- Memory of a Devout Champion (1)
    .train 425215,1
step << Priest
    .train 425215 >> |cRXP_WARN_Benutzt|r |T136222:0|t[|cRXP_FRIENDLY_Erinnerung eines Ergebenen Feldherrn|r] |cRXP_WARN_um zu trainieren|r |T237566:0|t[Okkultismus]
    >>|cRXP_WARN_Ihr müsst einen|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_Buff haben, indem ihr /knien in einem heiligen Bereich eingebt, zum Beispiel die der Abtei von Nordhain, in der Kathedrale von Sturmwind, die Altäre des Lichts in Ambossar, Loch Modan oder der Mystische Bezirk in Eisenschmiede|r
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Okkultismus - 14 (Westfall)
#title Okkultismus

step << Priest
    .goto Westfall,32.6,43.2,60,0
    .goto Westfall,29.8,46.6,60,0
    .goto Westfall,45.0,26.0,60,0
    .goto Westfall,45.6,21.2
    >>Tötet die |cRXP_ENEMY_Undying Laborer|r. Plündert sie für |T136222:0|t[|cRXP_FRIENDLY_Memory of a Ergebenen Feldherr|r]
    >>|cRXP_WARN_Ihr müsst einen Heiligzauber verwenden, um den|r |cRXP_ENEMY_Unsterblichen Arbeiter|r zu besiegen
    >>|cRXP_WARN_Der |cRXP_ENEMY_Unsterbliche Arbeiter|r kann im Goldküstensteinbruch und im Jangoschacht spawnen|r
    .collect 205905,1 -- Memory of a Devout Champion (1)
    .unitscan Undying Laborer
    .train 425215,1
step << Priest
    .train 425215 >> |cRXP_WARN_Benutzt|r |T136222:0|t[|cRXP_FRIENDLY_Erinnerung eines Ergebenen Feldherrn|r] |cRXP_WARN_um zu trainieren|r |T237566:0|t[Okkultismus]
    >>|cRXP_WARN_Ihr müsst einen|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_Buff haben, indem ihr /knien in einem heiligen Bereich eingebt, zum Beispiel die der Abtei von Nordhain, in der Kathedrale von Sturmwind, die Altäre des Lichts in Ambossar, Loch Modan oder der Mystische Bezirk in Eisenschmiede|r
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Okkultismus - 18 (Dunkelküste)
#title Okkultismus

step << Priest
    .goto Darkshore,59.2,23.4,60,0
    .goto Darkshore,60.0,15.4
    >>Tötet |cRXP_ENEMY_Stormscale Myrmidons|r, |cRXP_ENEMY_Stormscale Warriors|r und |cRXP_ENEMY_Stormscale Sorceresses|r. Plündert sie für |T236364:0|t[|cRXP_LOOT_Shatterspear Opfergabe|r]
    .collect 211482,1 -- Shatterspear Offering (1)
    .mob Stormscale Myrmidon
    .mob Stormscale Warrior
    .mob Stormscale Sorceress
    .train 425215,1
step << Priest
    .goto Darkshore,59.2,22.6
    .use 211482 >> |cRXP_WARN_Benutzt|r |T236364:0|t[|cRXP_LOOT_Shatterspear Opfergabe|r] |cRXP_WARN_beim Shatterspear Götze unter Wasser und erhaltet|r |T136222:0|t[|cRXP_FRIENDLY_Memory of a Ergebenen Feldherr|r]
    .collect 205905,1 -- Memory of a Devout Champion (1)
    .train 425215,1
step << Priest
    .train 425215 >> |cRXP_WARN_Benutzt|r |T136222:0|t[|cRXP_FRIENDLY_Erinnerung eines Ergebenen Feldherrn|r] |cRXP_WARN_um zu trainieren|r |T237566:0|t[Okkultismus]
    >>|cRXP_WARN_Ihr müsst einen|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_Buff haben, indem ihr /knien in einem heiligen Bereich eingebt, zum Beispiel die der Abtei von Nordhain, in der Kathedrale von Sturmwind, die Altäre des Lichts in Ambossar, Loch Modan oder der Mystische Bezirk in Eisenschmiede|r
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Geteilter Schmerz - 10 (Dun Morogh)
#title Geteilter Schmerz

step << Priest
    .goto Loch Modan,77.894,62.236
    >>Tötet |cRXP_ENEMY_Hauptmann Beld|r in dem Gebäude unten. Sammelt Beute von ihm für den |T136222:0|t[|cRXP_FRIENDLY_Erinnerung of an Eingesperrt Retter|r]
    .collect 205945,1 -- Memory of an Imprisoned Savior (1)
    .mob Captain Beld
    .train 402854,1
step << Priest
    .train 402854 >> |cRXP_WARN_Benutzt die|r |T136222:0|t[|cRXP_FRIENDLY_Erinnerung eines Eingesperrten Retters|r] |cRXP_WARN_zum Trainieren|r |T136160:0|t[Geteilter Schmerz]
    >>|cRXP_WARN_Ihr müsst einen|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_Buff haben, indem ihr /knien in einem heiligen Bereich eingebt, zum Beispiel die der Abtei von Nordhain, in der Kathedrale von Sturmwind, die Altäre des Lichts in Ambossar, Loch Modan oder der Mystische Bezirk in Eisenschmiede|r
    .use 205945
    .itemcount 205945,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Geteilter Schmerz - 6 (Wald von Elwynn)
#title Geteilter Schmerz

step << Priest
    .goto Elwynn Forest,40.6,81.8
    >>Tötet |cRXP_ENEMY_Kobold Miners|r. Plündert sie für |T136222:0|t[|cRXP_FRIENDLY_Memory of an Eingesperrt Retter|r]
    .collect 205945,1 -- Memory of an Imprisoned Savior (1)
    .mob Kobold Miner
    .train 402854,1
step << Priest
    .train 402854 >> |cRXP_WARN_Benutzt die|r |T136222:0|t[|cRXP_FRIENDLY_Erinnerung eines Eingesperrten Retters|r] |cRXP_WARN_zum Trainieren|r |T136160:0|t[Geteilter Schmerz]
    >>|cRXP_WARN_Ihr müsst einen|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_Buff haben, indem ihr /knien in einem heiligen Bereich eingebt, zum Beispiel die der Abtei von Nordhain, in der Kathedrale von Sturmwind, die Altäre des Lichts in Ambossar, Loch Modan oder der Mystische Bezirk in Eisenschmiede|r
    .use 205945
    .itemcount 205945,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Homunculi - 8 (Dun Morogh)
#title Homunkuli

step << Priest
    .goto Dun Morogh,42.0,44.6,50,0
    .goto Dun Morogh,42.4,35.8
    >>Tötet |cRXP_ENEMY_Seher der Frostmane|r. Plündert sie für |T135975:0|t[|cRXP_FRIENDLY_Prophezeiung einer entweihten Zitadelle|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Frostmane Seer
    .train 402852,1
step << Priest
    .train 402852 >> |cRXP_WARN_Benutzt die|r |T135975:0|t[|cRXP_FRIENDLY_Prophezeiung einer entweihten Zitadelle|r] |cRXP_WARN_um|r |T237570:0|t[Homunculi] zu lernen
    >>|cRXP_WARN_Ihr müsst 2|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_Buffs haben, indem ihr /knien in einem heiligen Bereich eingebt, zum Beispiel die der Abtei von Nordhain, in der Kathedrale von Sturmwind, die Altäre des Lichts in Ambossar, Loch Modan oder der Mystische Bezirk in Eisenschmiede|r
    .use 205947
    .itemcount 205947,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Homunculi - 8 (Wald von Elwynn)
#title Homunkuli

step << Priest
    .goto Elwynn Forest,74.0,51.8
    >>Tötet |cRXP_ENEMY_Defias Schurke Wizards|r. Plündert sie für |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Entweiht Zitadelle|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Defias Rogue Wizard
    .train 402852,1
step << Priest
    .train 402852 >> |cRXP_WARN_Benutzt die|r |T135975:0|t[|cRXP_FRIENDLY_Prophezeiung einer entweihten Zitadelle|r] |cRXP_WARN_um|r |T237570:0|t[Homunculi] zu lernen
    >>|cRXP_WARN_Ihr müsst 2|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_Buffs haben, indem ihr /knien in einem heiligen Bereich eingebt, zum Beispiel die der Abtei von Nordhain, in der Kathedrale von Sturmwind, die Altäre des Lichts in Ambossar, Loch Modan oder der Mystische Bezirk in Eisenschmiede|r
    .use 205947
    .itemcount 205947,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Homunculi - 8 (Teldrassil)
#title Homunkuli

step << Priest
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >> Reist zum Teufelsfels
    .train 402852,1
step << Priest
    .goto Teldrassil,77.86,61.66
    >>Tötet |cRXP_ENEMY_Vicious Grells|r, |cRXP_ENEMY_Rascal Sprites|r und |cRXP_ENEMY_Shadow Sprites|r. Plündert sie für |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Entweiht Zitadelle|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 402852,1
step << Priest
    .train 402852 >> |cRXP_WARN_Benutzt die|r |T135975:0|t[|cRXP_FRIENDLY_Prophezeiung einer entweihten Zitadelle|r] |cRXP_WARN_um|r |T237570:0|t[Homunculi] zu lernen
    >>|cRXP_WARN_Ihr müsst 2|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_Buffs haben, indem ihr /knien in einem heiligen Gebiet eingebt, wie zum Beispiel einen Mondquell, die Nordhainer Abtei, die Kathedrale von Sturmwind, die Altäre des Lichts in Ambossar, Loch Modan oder das Mystische Viertel in Eisenschmiede|r
    .use 205947
    .itemcount 205947,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Gebet der Besserung - 6 (Wald von Elwynn)
#title Gebet der Besserung

step << Priest
    .goto Elwynn Forest,52.28,84.56
    >>|cRXP_WARN_Tretet einer Gruppe mit einem anderen Priester oder Die Bruderschaft der Defias bei, der über den |cRXP_FRIENDLY_Abenteurerüberresten|r steht, oder sucht Hilfe von einem Die Bruderschaft der Defias oder Priester im Allgemeinen Chatfunktionen (Tippt /1 in den Chatfunktionen)|r
    >>|cRXP_WARN_Sprecht mit den |cRXP_FRIENDLY_Abenteurerüberresten|r auf dem Boden, um das Ritual zu beginnen, oder klickt auf das |T136223:0|t[Geisterritual] |cRXP_WARN_des anderen Spielers (während ihr in ihrer Gruppe seid)|r
    >>|cRXP_WARN_Ein |cRXP_FRIENDLY_Adventurer's Willenskraft|r wird erscheinen und sterben nach Abschluss des Rituals. Plündert es für die|r |T135791:0|t[|cRXP_FRIENDLY_Reciprocal Offenbarung|r]
    .train 402848 >>|cRXP_WARN_Benutzt die|r |T135791:0|t[|cRXP_FRIENDLY_Reciprocal Offenbarung|r] |cRXP_WARN_um zu erlernen|r |T135944:0|t[Gebet der Besserung]
    .use 205942
    .use 205944
    .skipgossip
    .target Adventurer's Remains
    .target Adventurer's Spirit
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Gebet der Besserung - 8 (Teldrassil)
#title Gebet der Besserung

step << Priest
    .goto Teldrassil,33.610,35.732
    >>|cRXP_WARN_Schließt euch einer Gruppe mit einem anderen Priester oder Druiden an, der über den|cRXP_FRIENDLY_ Abenteurerüberresten|r steht, oder bittet einen Druiden oder Priester im Allgemeinen Chatfunktionen um Hilfe (tippt /1 in den Chatfunktionen)|r
    >>|cRXP_WARN_Sprecht mit den |cRXP_FRIENDLY_Abenteurerüberresten|r auf dem Boden, um das Ritual zu beginnen, oder klickt auf das |T136223:0|t[Geisterritual] |cRXP_WARN_des anderen Spielers (während ihr in ihrer Gruppe seid)|r
    >>|cRXP_WARN_Ein|cRXP_FRIENDLY_ Abenteurergeist|r wird erscheinen und nach dem Ritual sterben. Plündert ihn für den|r |T135791:0|t[|cRXP_FRIENDLY_Reciprocal Offenbarung|r]
    .train 402848 >>|cRXP_WARN_Benutzt die|r |T135791:0|t[|cRXP_FRIENDLY_Reciprocal Offenbarung|r] |cRXP_WARN_um zu erlernen|r |T135944:0|t[Gebet der Besserung]
    .use 205942
    .use 205944
    .skipgossip
    .target Adventurer's Remains
    .target Adventurer's Spirit
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Gebet der Besserung - 6 (Dun Morogh)
#title Gebet der Besserung

step << Priest
    .goto Dun Morogh,43.0,49.6
    >>|cRXP_WARN_Schließt euch einer Gruppe mit einem anderen Priester oder Die Bruderschaft der Defias an, der über den|cRXP_FRIENDLY_ Abenteurerüberresten|r steht, oder bittet einen Die Bruderschaft der Defias oder Priester im Allgemeinen Chatfunktionen um Hilfe (tippt /1 in den Chatfunktionen)|r
    >>|cRXP_WARN_Sprecht mit den |cRXP_FRIENDLY_Abenteurerüberresten|r auf dem Boden, um das Ritual zu beginnen, oder klickt auf das |T136223:0|t[Geisterritual] |cRXP_WARN_des anderen Spielers (während ihr in ihrer Gruppe seid)|r
    >>|cRXP_WARN_Ein |cRXP_FRIENDLY_Adventurer's Willenskraft|r wird erscheinen und sterben nach Abschluss des Rituals. Plündert es für die|r |T135791:0|t[|cRXP_FRIENDLY_Reciprocal Offenbarung|r]
    .train 402848 >>Benutzt den|cRXP_WARN_ |T135791:0|t[|rReciprocal Offenbarung|cRXP_FRIENDLY_] |rum|cRXP_WARN_ |T135944:0|t[Gebet der Besserung]|r zu erlernen
    .use 205942
    .use 205944
    .skipgossip
    .target Adventurer's Remains
    .target Adventurer's Spirit
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Schattenwort: Tod - 10 (Dunkelküste)
#title Schattenwort: Tod

step << Priest
    .goto Darkshore,30.5,47.5
    >>Klickt |cRXP_PICK_Remnant|r auf der kleinen Insel. Beute es für das |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Tod|r]
    .collect 205932,1 -- Prophecy of a King's Demise (1)
    .train 402849,1
step << Priest
    >>Ihr must now obtain two |T135934:0|t|T136057:0|t[Meditation] buffs
    >>Ihr müsst /knien an einem der folgenden Orte: Ein Mondbrunnen, die Abtei von Nordhain, die Kathedrale von Sturmwind, die Altäre des Lichts in Ambossar, im Loch Modan oder die Mystische Sektion in Eisenschmiede
    >>Um den zweiten |T135934:0|t|T136057:0|t[Meditation] Buff von Euch zu erhalten, müsst ihr /knien vor einem Priester, der einen anderen |T135934:0|t|T136057:0|t[Meditation] Buff als euren hat, und dieser muss /beten, während er euch anvisiert
    .train 402849 >> |cRXP_WARN_Sobald ihr beide|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_Effekte nutzen die|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Tod]|r |cRXP_WARN_um zu erlernen|r |T136149:0|t[Schattenwort: Tod]
    .use 205932
    .itemcount 205932,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Schattenwort - Tod - 12 (Loch Modan)
#title Schattenwort: Tod

step << Priest
    #completewith next
    .goto Loch Modan,71.8,27.6
    .subzone 143 >> Reist zur Festung Mo'grosh in Loch Modan
step << Priest
    #season 2
    .goto Loch Modan,71.8,27.6
    .aura 410935 >>|cRXP_WARN_Ziel |cRXP_FRIENDLY_Ketzer Götze|r um automatisch /knien|r
    .emote KNEEL,208565 >>|cRXP_WARN_If it does not work, type /kneel in your chatbox with the |cRXP_FRIENDLY_Heretic Idol|r targeted|r
    >>|cRXP_WARN_Ihr werdet erhalten|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Tod|r]
    .collect 205932,1 -- Prophecy of a King's Demise (1)
    .target Heretic Idol
step << Priest
    >>Ihr must now obtain two |T135934:0|t|T136057:0|t[Meditation] buffs
    >>Ihr müsst /knien an einem der folgenden Orte: Ein Mondbrunnen, die Abtei von Nordhain, die Kathedrale von Sturmwind, die Altäre des Lichts in Ambossar, im Loch Modan oder die Mystische Sektion in Eisenschmiede
    >>Um den zweiten |T135934:0|t|T136057:0|t[Meditation] Buff von Euch zu erhalten, müsst ihr /knien vor einem Priester, der einen anderen |T135934:0|t|T136057:0|t[Meditation] Buff als euren hat, und dieser muss /beten, während er euch anvisiert
    .train 402849 >> |cRXP_WARN_Sobald ihr beide|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_Effekte nutzen die|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Tod]|r |cRXP_WARN_um zu erlernen|r |T136149:0|t[Schattenwort: Tod]
    .use 205932
    .itemcount 205932,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Schattenwort: Tod - 20 (The Barrens)
#title Schattenwort: Tod

step
    #completewith next
    .zone The Barrens >> Reist nach Das Brachland
step
    #loop
    .goto The Barrens,54.8,35.6,40,0
    .goto The Barrens,58.8,37.6,40,0
    >>Benutzt |T135894:0|t[Magiebannung] auf dem |cRXP_ENEMY_Desert Trugbild|r. Beute es für die |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Tod|r]
    *|cRXP_WARN_Es ist ein grünes Gespenst, das herumspatrouilliert. Benutzt das Ziel-Makro, um es anzuvisieren.|r
    .collect 205932,1 -- Prophecy of a King's Demise (1)
    .train 402849,1
    .mob Desert Mirage
step << Troll
    >>Ihr must now obtain two |T237569:0|t|T136077:0|t[Meditation] buffs
    >>Ihr müsst an einer der folgenden Stellen vor dem Altar |cRXP_WARN_/knien|r und danach mit dem Geist sprechen: Sen'jin oder Kreuzweg |cRXP_WARN_(die Schreinstandorte sind auf der Karte von Euch markiert, ihr könnt auch jeden Priester mit dem Buff finden, der sie euch kopieren kann)|r
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    >>Um von Euch einen zweiten |T237569:0|t|T136077:0|t[Meditation]-Buff zu erhalten, |cRXP_WARN_/knien|r vor einem Untoten Priester, der |T237569:0|t[Meditation über den Untod] hat, und er muss /beten, während er dich als Ziel hat
    .train 402849 >> |cRXP_WARN_Sobald ihr beide|r |T237569:0|t|T136077:0|t[Meditation] |cRXP_WARN_Buffs benutzt das|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Tod]|r |cRXP_WARN_zu erlernen|r |T136149:0|t[Schattenwort: Tod]
    .use 205932
    .itemcount 205932,1
step << Undead
    >>Ihr must now obtain two |T237569:0|t|T136077:0|t[Meditation] buffs
    >>Ihr müsst an einer der folgenden Stellen vor dem Altar |cRXP_WARN_/knien|r und danach mit dem Geist sprechen: Sen'jin oder Kreuzweg
    .emote KNEEL,208309
    .goto The Barrens,51.5,29.5,0
    .goto The Barrens,50.7,32.7,0
    >>Um von Euch zweiten |T237569:0|t|T136077:0|t[Meditation]-Buff zu erhalten, |cRXP_WARN_/knien|r am Friedhof, um den |T237569:0|t[Meditation über den Untod]-Buff zu bekommen |cRXP_WARN_(das Heiligtum und ein Friedhof sind auf der Karte von Euch markiert, ihr könnt auch jeden Priester mit dem Buff finden, der sie euch kopieren kann)|r
    .train 402849 >> |cRXP_WARN_Sobald ihr beide|r |T237569:0|t|T136077:0|t[Meditation] |cRXP_WARN_Buffs benutzt das|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Tod]|r |cRXP_WARN_zu erlernen|r |T136149:0|t[Schattenwort: Tod]
    .use 205932
    .itemcount 205932,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Schattenwort: Tod - 24 (Silberwald)
#title Schattenwort: Tod

step
    #completewith next
    .zone Silverpine Forest >> Reist zum Silberwald
step
    .goto Silverpine Forest,65.8,23.6
    >>Hebt |cRXP_PICK_Rolle|r hinter |cRXP_ENEMY_Thule Rabenklaue|r (lvl 24 elite) für die |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Tod|r] auf
    *|cRXP_WARN_Die Rolle ist im zweiten Stock. Es ist einfacher in einer Gruppe.|r
    .collect 205932,1 -- Prophecy of a King's Demise (1)
    .train 402849,1
step << Troll
    >>Ihr must now obtain two |T237569:0|t|T136077:0|t[Meditation] buffs
    >>Ihr müsst |cRXP_WARN_/knien|r an einem der folgenden Orte vor dem Altar und danach mit dem Geist sprechen: Sen'jin oder Kreuzweg |cRXP_WARN_(die Heiligtumsorte sind auf der Karte von Euch markiert, ihr könnt auch jeden Priester mit dem Buff finden, der sie euch kopieren kann)|r
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    >>Um den zweiten |T237569:0|t|T136077:0|t[Meditation] Buff von Euch zu erhalten, müsst ihr /knien vor einem Untoten Priester, der |T237569:0|t[Meditation über den Untod] hat, und er muss |cRXP_WARN_/beten|r während er euch anvisiert
    .train 402849 >> Sobald ihr beide|cRXP_WARN_ |T237569:0|t|T136077:0|t[Meditation] |rBuffs benutzt den|cRXP_WARN_ |T135975:0|t[|rProphecy of a King's Tod]|cRXP_FRIENDLY_ um|r |T136149:0|t[Schattenwort: Tod] |cRXP_WARN_zu erlernen|r
    .use 205932
    .itemcount 205932,1
step << Undead
    >>Ihr must now obtain two |T237569:0|t|T136077:0|t[Meditation] buffs
    >>Ihr müsst |cRXP_WARN_/knien|r an einem der folgenden Orte vor dem Altar und danach mit dem Geist sprechen: Sen'jin oder Kreuzweg
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    .goto Silverpine Forest,44.2,42.7,0
    >>Um den zweiten |T237569:0|t|T136077:0|t[Meditation] Buff von Euch zu erhalten, müsst ihr |cRXP_WARN_/knien|r auf einem Friedhof, um den |T237569:0|t[Meditation über den Untod] Buff zu erhalten |cRXP_WARN_(das Heiligtum und ein Friedhof sind auf der Karte von Euch markiert, ihr könnt auch jeden Priester mit dem Buff finden, der sie euch kopieren kann)|r
    .train 402849 >> |cRXP_WARN_Sobald ihr beide|r |T237569:0|t|T136077:0|t[Meditation] |cRXP_WARN_Buffs benutzt das|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Tod]|r |cRXP_WARN_zu erlernen|r |T136149:0|t[Schattenwort: Tod]
    .use 205932
    .itemcount 205932,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Okkultismus - 10 (Silberwald)
#title Okkultismus

step
    #completewith next
    .zone Silverpine Forest >> Reist zum Silberwald
step
    .train 425215,1
    >>Tötet die |cRXP_ENEMY_Wailing Willenskraft|r. Plündert sie für |T136222:0|t[|cRXP_FRIENDLY_Memory of a Ergebenen Feldherr]
    .goto Silverpine Forest,57.9,71.5
    .collect 205905,1
    .mob Wailing Spirit
step
    .train 425215 >> |cRXP_WARN_Benutzt die|r |T136222:0|t[|cRXP_FRIENDLY_Erinnerung eines Ergebenen Feldherrn] |cRXP_WARN_um zu trainieren|r |T237566:0|t[Okkultismus]
    >>|cRXP_WARN_Ihr müsst einen|r |T237569:0|t|T136077:0|t[Meditation] |cRXP_WARN_Buff haben, indem ihr|r /knien |cRXP_WARN_vor |cRXP_PICK_Loa Schrein|r (in Durotar oder The Barrens) eingebt oder indem ihr euch vor einem anderen Priester mit dem Buff kniet, wenn er für euch /beten macht|r << Troll
    >>|cRXP_WARN_Ihr müsst einen|r |T237569:0|t|T136077:0|t[Meditation] |cRXP_WARN_Buff haben, indem ihr|r /knien |cRXP_WARN_am Friedhof eingebt oder indem ihr euch vor einem anderen Priester mit dem Buff kniet, wenn er für euch /beten macht|r << Undead
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    .goto Silverpine Forest,55.6,73.3 << Undead
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Verdrehter Glaube - 10 (Das Brachland)
#title Okkultismus

step
    #completewith next
    .zone The Barrens >> Reist nach Das Brachland
step
    .train 425215,1
    >>Tötet die |cRXP_ENEMY_Razormanes|r. Plündert sie für |T236248:0|t[|cRXP_FRIENDLY_Helping Hand]
    .goto The Barrens,54.6,25.6
    .collect 208765,1
    .mob Razormane Thornweaver
    .mob Razormane Hunter
    .mob Razormane Water Seeker
    .mob Razormane Defender
step
    .train 425215,1
    >>|cRXP_WARN_Findet einen toten Spieler oder ein totes Haustier, das ihr auferwecken könnt (mit |T135955:0|t[Auferstehung]), um die|r |T136222:0|t[|cRXP_FRIENDLY_Erinnerung eines ergebenen Feldherrs]
    .collect 205905,1
step
    .train 425215 >> |cRXP_WARN_Benutzt die|r |T136222:0|t[|cRXP_FRIENDLY_Erinnerung eines Ergebenen Feldherrn] |cRXP_WARN_um zu trainieren|r |T237566:0|t[Okkultismus]
    >>|cRXP_WARN_Ihr müsst einen|r |T237569:0|t|T136077:0|t[Meditation] |cRXP_WARN_Buff haben, indem ihr|r /knien |cRXP_WARN_vor |cRXP_PICK_Loa Schrein|r (in Durotar oder The Barrens) eingebt oder indem ihr euch vor einem anderen Priester mit dem Buff kniet, wenn er für euch /beten macht|r << Troll
    >>|cRXP_WARN_Ihr müsst einen|r |T237569:0|t|T136077:0|t[Meditation] |cRXP_WARN_Buff haben, indem ihr|r /knien |cRXP_WARN_am Friedhof eingebt oder indem ihr euch vor einem anderen Priester mit dem Buff kniet, wenn er für euch /beten macht|r << Undead
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    .goto The Barrens,50.7,32.8 << Undead
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Pest der Leere - 6 (Wald von Elwynn)
#title Pest der Leere

step << Priest
    #season 2
    #completewith next
    .goto Elwynn Forest,38.34,81.54,20 >> Betretet Tiefenschachtmine
    .train 425216,1
step << Priest
    #season 2
    .goto Elwynn Forest,41.7,78.1
    >>Tötet |cRXP_ENEMY_Goldtooth|r. Plündert sie für |T136222:0|t[|cRXP_FRIENDLY_Memory of a Finstere Entschlossenheit|r]
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .mob Goldtooth
    .train 425216,1
step << Priest
    #season 2
    .train 425216 >>|cRXP_WARN_Benutzt die|r |T136222:0|t[|cRXP_FRIENDLY_Erinnerung an einen dunklen Zweck|r] |cRXP_WARN_zum Trainieren von|r |T237514:0|t[Pest der Leere]
    .use 205940
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Pest der Leere - 6 (Dun Morogh)
#title Pest der Leere


step << Priest
    #season 2
    .goto Dun Morogh,27.2,43.0,60,0
    .goto Dun Morogh,24.8,39.3,60,0
    .goto Dun Morogh,25.6,43.4,60,0
    .goto Dun Morogh,24.3,44.0,60,0
    .goto Dun Morogh,25.4,45.4,60,0
    .goto Dun Morogh,25.00,43.50
    >>Tötet |cRXP_ENEMY_Lepragnom|r. Plündert sie für |T136222:0|t[|cRXP_FRIENDLY_Erinnerung an einen dunklen Zweck|r]
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .mob Leper Gnome
    .train 425216,1
step << Priest
    #season 2
    .train 425216 >>|cRXP_WARN_Benutzt die|r |T136222:0|t[|cRXP_FRIENDLY_Erinnerung an einen dunklen Zweck|r] |cRXP_WARN_zum Trainieren von|r |T237514:0|t[Pest der Leere]
    .use 205940
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Gürtel
#name Machterfüllte Erneuerung - 27 (Tausend Nadeln)
#title Machterfüllte Erneuerung


-- Empowered Renew

step
    .train 425309,1
    .zone Thousand Needles >>Reist nach |cFFfa9602Tausend Nadeln|r
step
    .train 425309,1
    .goto Thousand Needles,31.33,37.05,10,0
    .goto Thousand Needles,33.17,35.38,15,0
    .goto Thousand Needles,31.96,31.32,15,0
    .goto Thousand Needles,33.04,27.61,30,0
    .goto Thousand Needles,35.20,31.09,30,0
    .goto Thousand Needles,34.17,38.81
    >>Tötet |cRXP_ENEMY_Grimtotem Geomancers|r, |cRXP_ENEMY_Grimtotem Bandits|r, |cRXP_ENEMY_Grimtotem Reavers|r und |cRXP_ENEMY_Grimtotem Stompers|r. Plündert sie für |T135975:0|t[|cRXP_LOOT_Prophecy of the Beschleunigt Pfad|r]
    .collect 213140,1
    .mob Grimtotem Geomancer
    .mob Grimtotem Bandit
    .mob Grimtotem Reaver
    .mob Grimtotem Stomper
step
    .train 425309 >>|cRXP_WARN_Benutzt die|r |T135975:0|t[|cRXP_LOOT_Prophezeiung des beschleunigten Pfads|r] |cRXP_WARN_zum Trainieren von|r |T236254:0|t[Machterfüllte Erneuerung]
    .use 213140
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Gürtel
#name Machterfüllte Erneuerung - 33 (Alteracgebirge)
#title Machterfüllte Erneuerung

-- Empowered Renew

step
    .train 425309,1
    .zone Alterac Mountains >>Reist nach |cFFfa9602Alteracgebirge|r
step
    .train 425309,1
    #loop
    .goto Alterac Mountains,47.48,58.94,0
    .goto Alterac Mountains,51.73,40.23,70,0
    .goto Alterac Mountains,45.19,33.91,70,0
    .goto Alterac Mountains,51.46,53.84,70,0
    .goto Alterac Mountains,48.54,40.72,70,0
    >>Tötet |cRXP_ENEMY_Crushridge Ogres|r und |cRXP_ENEMY_Crushridge Brutes|r. Plündert sie für |T135975:0|t[|cRXP_LOOT_Prophecy of the Beschleunigt Pfad|r]
    .collect 213140,1
    .mob Crushridge Ogre
    .mob Crushridge Brute
step
    .train 425309 >>|cRXP_WARN_Benutzt die|r |T135975:0|t[|cRXP_LOOT_Prophezeiung des beschleunigten Pfads|r] |cRXP_WARN_zum Trainieren von|r |T236254:0|t[Machterfüllte Erneuerung]
    .use 213140
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Gürtel
#name Erneuerte Hoffnung - 31 (Desolace)
#title Erneuerte Hoffnung

-- Renewed Hope

step
    #optional
    .train 425310,1
    .train 605 >> |cRXP_WARN_Ihr müsst|r |T136206:0|t[Gedankenkontrolle] |cRXP_WARN_trainiert, um die|r |T135923:0|t[Erneuerte Hoffnung] |cRXP_WARN_Rune|r
step
    #optional
    .train 425310,1
    .xp 31
    >>|cRXP_WARN_Ihr müsst mindestens Stufe 31 sein, um|r |T136206:0|t[Gedankenkontrolle] |cRXP_WARN_auf ein Stufe 33 |cRXP_ENEMY_Gezeitenpriesterin der Zackenkämme|r wirken zu können|r
step
    .train 425310,1
    #completewith next
    .zone Desolace >>Reist nach |cFFfa9602Desolace|r
step
    #loop
    .goto Desolace,35.4,29.6,60,0
    .goto Desolace,33.6,15,0,60,0
    .goto Desolace,40.0,17.4,60,0
    .goto Desolace,38.6,23.6,60,0
    .train 425310,1
    >>Tötet |cRXP_ENEMY_Slitherblade Nagas|r. Plündert sie für |T136222:0|t[|cRXP_LOOT_Unsettling Sicht|r]
    .collect 213599,1
    .mob Slitherblade Naga
    .mob Slitherblade Warrior
    .mob Slitherblade Oracle
    .mob Slitherblade Myrmidon
    .mob Slitherblade Sea Witch
    .mob Slitherblade Tide Priestess
step -- step shows for players that are only level 31
    #optional
    #completewith next
    +|cRXP_WARN_HINWEIS:|r Ihr könnt |T136206:0|t[Gedankenkontrolle] |cRXP_WARN_nur auf ein Stufe 33 |cRXP_ENEMY_Gezeitenpriesterin der Zackenkämme|r wirken. Der Zauber wird auf denen fehlschlagen, die Stufe 34 sind|r
    .xp >32,1
    .xp <31,1
    .train 425310,1
step
    #label MCPriestess
    #loop
    .goto Desolace,38.8,24.0,60,0
    .goto Desolace,34.6,30.0,60,0
    .goto Desolace,34.6,20.2,60,0
    .aura 435117 >> |cRXP_WARN_Cast|r |T136206:0|t[Gedankenkontrolle] |cRXP_WARN_on a|r |cRXP_ENEMY_Slitherblade Tide Priestess|r
    >>|cRXP_WARN_Während sie unter der Wirkung von|r |T136206:0|t[Gedankenkontrolle]|cRXP_WARN_ steht, zielt auf EUCH SELBST und wirkt|r |T136077:0|t[Meditation über den Abgrund] |cRXP_WARN_von der Haustier-Aktionsleiste|r
    >>|cRXP_WARN_Drückt Flucht danach, um die|r |T136206:0|t[Gedankenkontrolle] |cRXP_WARN_zu beenden und tötet die|r |cRXP_ENEMY_Gezeitenpriesterin der Zackenkämme|r
    .mob Slitherblade Tide Priestess
    .train 425310,1
step
    .train 425310 >> |cRXP_WARN_Benutzt|r |T136222:0|t[|cRXP_LOOT_Unsettling Sicht|r] |cRXP_WARN_zum Trainieren|r |T135923:0|t[Erneuerte Hoffnung]
    .use 213599
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Stiefel
#name Dispersion 40 (Schlingendorntal)
#title Dispersion

-- Dispersion

step
    .train 425314,1
    >>|cRXP_WARN_Findet einen Schurken mit der|r |T132299:0|t[Meister des hinterhältigen Angriffs] |cRXP_WARN_Rune und dem|r |T338666:0|t[Janis Amulett] |cRXP_WARN_Schmuckstück, um|r |T133644:0|t[Taschendiebstahl] |cRXP_WARN_bei jedem |cRXP_ENEMY_Bloodscalp Troll|r im Schlingendorntal zu verwenden und die|r |T237446:0|t[Mysterious Troll Rolle]|cRXP_WARN_ zu erhalten. Ein Magier muss dann die|r |T135933:0|t[Verständnis Bezauberung] |cRXP_WARN_verwenden, um sie zu entziffern, damit sie zu einer |T134938:0|t[|cRXP_LOOT_Entzifferte Trollschriftrolle|r] wird|r
    >>|cRXP_WARN_Alternativ kauft einen|r |T237446:0|t[Geheime Trollrolle]|r vom Auktionshaus und lasst einen Magier es entziffern, oder kauft den bereits|cRXP_WARN_ |T134938:0|t[|cRXP_LOOT_Entzifferte Trollrolle|r]|r
    .use 216880 >>Benutzt die |T134938:0|t[|cRXP_WARN_Entzifferte Trollrolle|cRXP_LOOT_] |rum die Quest zu starten|r
    >>|cRXP_WARN_Ihr könnt auch einen Priester suchen, um die Quest mit euch zu teilen|r
    .collect 216880,1
    .disablecheckbox
    .accept 79731 >> Akzeptiert die Quest Die Trollschriftrolle
step
    .train 425314,1
    #completewith next
    .zone Stranglethorn Vale >>Reist nach |cFFfa9602Schlingendorntal|r
    >>|cRXP_WARN_Stellt sicher, dass ihr 2 aktive|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_Buffer habt, bevor ihr dort ankommt|r
step
    .train 425314,1
    .goto Stranglethorn Vale,28.961,61.931
    >>Zwicken |cRXP_PICK_The Heilig Federn|r. Plündert sie für |T134712:0|t[|cRXP_LOOT_Holy Federn Wasser|r]
    >>|cRXP_WARN_Ihr müsst möglicherweise |cRXP_ENEMY_Lord Sakrasis|r (Stufe 45 Selten) töten, der davor wacht|r |cRXP_PICK_Die Heilige Quelle|r
    .collect 737,1 --Holy Spring Water
    .mob Lord Sakrasis
step
    #completewith next
    .subzone 102 >> Reist zu den Ruinen von Zul'Kunda
step
    .train 425314,1
    .goto Stranglethorn Vale,23.569,7.955
    .cast 3591 >> |cRXP_WARN_Benutzt|r |T134712:0|t[|cRXP_LOOT_Wasser der Heiligen Quelle|r] |cRXP_WARN_beim kleinen Brunnen|r
    >>|cRXP_WARN_Ihr müsst möglicherweise |cRXP_ENEMY_Gan'zulah|r (Stufe 41) und einen kleinen Trupp |cRXP_ENEMY_Trolls|r um ihn herum töten, um zum kleinen Brunnen zu gelangen|r
    .use 737
    .mob Gan'zulah
step
    .train 425314,1
    .goto Stranglethorn Vale,23.569,7.955
    >>Klickt auf |cRXP_PICK_Fount|r, das daraufhin erscheint. Plündert es für |T135975:0|t|cRXP_LOOT_[Gegenstände]|r
    .collect 213142,1
step
    .train 425314 >> Benutzt|cRXP_WARN_ |T135975:0|t|r[Gegenstände]|cRXP_LOOT_ , um|r |T237563:0|t[Dispersion] |cRXP_WARN_zu erlernen|r
    .use 213142
step
    .isQuestComplete 79731
    .goto Stranglethorn Vale,35.658,10.808
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 79731 >> Gebt die Quest Die Trollschriftrolle ab
    .target Hemet Nesingwary
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Stiefel
#name Schmerzunterdrückung - 32 (Azeroth)
#title Schmerzunterdrückung

-- Pain Suppression

step
    .train 402855,1
    .zone Tirisfal Glades >>Reist nach |cFFfa9602Tirisfal|r
step
    .train 402855,1
    .goto 1415,47.44,19.75,10,0
    .goto 1415,47.45,19.69,5,0
    .goto 1415,47.62,19.59,10,0
    .goto 1415,47.73,19.39,5 >> Betretet Das Scharlachrote Kloster Verlies: Friedhof
step
    >>Klickt auf |cRXP_PICK_Grabstein|r nahe des Spawn-Ortes des Headless Horseman, um |cRXP_LOOT_|T136222:0|t[Friedhof Echo]|r zu sammeln. |cRXP_WARN_Es wird dringend empfohlen, eine Gruppe von 5 Spielern für diesen Schritt zu bilden.|r
    .link https://imgur.com/a/lqRc0i6 >> |cRXP_WARN_Klickt hier für eine Bildreferenz.|r
    .collect 215426,1
step
    #optional
    .train 402855,1
    .zone Arathi Highlands >>Reist zum Arathihochland
step
    .train 402855,1
    .goto Arathi Highlands,62.1,54.5
    >>Klickt auf |cRXP_PICK_Grab|r auf Go'sheks Hof neben dem größten Gebäude, um |cRXP_LOOT_|T136222:0|t[Arathi Echo]|r zu sammeln.
    .collect 215427,1
step
    .train 402855,1
    .zone Dustwallow Marsh >>Reist nach Düstermarschen
step
    .train 402855,1
    .goto Dustwallow Marsh,63.7,42.3
    >>Klickt auf |cRXP_PICK_Grabstein|r nahe des Allianz-Friedhofs, um |cRXP_LOOT_|T136222:0|t[Theramore Echo]|r zu sammeln.
    .collect 215428,1
step
    .train 402855,1
    .zone Swamp of Sorrows >>Reist in die |cFFfa9602Sümpfe des Elends|r
step
    .train 402855,1
    .goto Swamp of Sorrows,16.7,53.8
    >>Klickt auf |cRXP_PICK_Grab|r in der Nähe eines Sees neben einem Baum, um |cRXP_LOOT_|T136222:0|t[Swamp Echo]|r zu sammeln.
    .collect 215425,1
step
    .train 402855,1
    .zone Tirisfal Glades >>Reist nach |cFFfa9602Tirisfal|r
step
    .train 402855,1
    .goto 1415,47.44,19.75,10,0
    .goto 1415,47.45,19.69,5,0
    .goto 1415,47.62,19.59,10 >> Betretet Das Scharlachrote Kloster Verlies: Bibliothek. |cRXP_WARN_Es wird dringend empfohlen, eine Gruppe von 5 Spielern für die nächsten Schritte zu bilden.|r
step
    .train 402855,1
    .cast 437054 >>Benutzt |T136222:0|t[Swamp Echo] vor der Krieger-Statue.
    .use 215425
step
    .train 402855,1
    .cast 437053 >>Benutzt |T136222:0|t[Arathi Echo] vor der Magier-Statue.
    .use 215428
step
    .train 402855,1
    .cast 436952 >>Benutzt |T136222:0|t[Theramore Echo] vor der Die Bruderschaft der Defias-Statue.
    .use 215425
step
    .train 402855,1
    .cast 437055 >>Benutzt |T136222:0|t[Friedhof Echo] vor der Priester-Statue.
    .use 215426
step
    .train 402855 >>Klickt auf die orangenen Überreste in der Mitte des Raumes, um |T135791:0|t[Apocryphal Offenbarung]|cRXP_FRIENDLY_ zu erhalten und benutzt es, um |T135936:0|t[Schmerzunterdrückung]|r zu erlernen.
    .use 213143
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Helm
#name Auge der Leere - 50 (Azeroth)

--x shiek: needs better coordinates and travelsteps
step
    #completewith next
    .zone The Hinterlands >>Reist nach Hinterland
    .train 402864,1
step
    .goto The Hinterlands,58.4,72.7
    >>Klickt auf |cRXP_PICK_|T236407:0|tGlowing Eye|r
    .collect 223334,1 --1/1 Glowing Eye
    .train 402864,1
step
    #completewith next
    .zone Blasted Lands >>Reist nach Verwüstete Lande
    .train 402864,1
step
    .goto Blasted Lands,43.8,45.8
    >>Klickt auf |cRXP_PICK_|T236407:0|tPulsating Eye|r
    .collect 223331,1 --1/1 Pulsating Eye
    .train 402864,1
step
    #completewith next
    .zone Searing Gorge >>Reist nach Sengende Schlucht
    .train 402864,1
step
    .goto Searing Gorge,43.8,45.8
    >>Klickt auf |cRXP_PICK_|T236407:0|tVibrating Eye|r
    .collect 223332,1 --1/1 Vibrating Eye
    .train 402864,1
step
    #completewith next
    .zone Stranglethorn Vale >>Reist nach Schlingendorntal
    .train 402864,1
step
    .goto Stranglethorn Vale,33,88
    >>Klickt auf |cRXP_PICK_|T236407:0|tBaleful Eye|r
    .collect 223333,1 --1/1 Baleful Eye
    .train 402864,1
step
    #completewith next
    .zone Feralas >>Reist nach Feralas
    .train 402864,1
step
    .goto Feralas,57.2,68.7
    >>Klickt auf |cRXP_PICK_|T236407:0|tBurning Eye|r
    .collect 223337,1 --1/1 Burning Eye
    .train 402864,1
step
    #completewith next
    .zone Tanaris >>Lauf nach Tanaris
    .train 402864,1
step
    .goto Tanaris,56.4,73.7
    >>Klickt auf |cRXP_PICK_|T236407:0|tOozing Eye|r
    .collect 223335,1 --1/1 Oozing Eye
    .train 402864,1
step
    #completewith next
    .zone Felwood >>Lauf zum Teufelswald
    .train 410013,1
step
    .goto Felwood,36.5,55.7
    >>Klickt auf |cRXP_PICK_|T236407:0|tPiercing Eye|r
    .collect 223336,1 --1/1 Piercing Eye
    .train 402864,1
step
    #completewith next
    .zone Azshara >>Reise nach Azshara
    .train 402864,1
step
    .goto Azshara,89.8,33.6
    >>Geht zum |cRXP_FRIENDLY_Schrein des Beobachters|r
    .emote KNEEL,223590
    .accept 82316,1 >>Akzeptiert die Quest Sieben Augen suche ich
    .target Shrine of the Watcher
    .train 402864,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Armschienen
#title Woge des Lichts
#name Woge des Lichts - 40 (Tanaris)

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_Ihr könnt die|r |T135981:0|t[Woge des Lichts] |cRXP_WARN_Rune nur zwischen 21 Uhr und 6 Uhr in Tanaris erhalten.|r
    +Ihr könnt im Schlingendorntal schauen, wenn ihr die Rune außerhalb dieses Zeitraums erhalten wollt
    .train 431669,1
step
    #completewith next
    .zone Tanaris >>Lauf nach Tanaris
    .train 431669,1
step
    .train 431669,1
    >>Tötet |cRXP_ENEMY_Echo einer verlorenen Seele|r |cRXP_WARN_mit Heilig oder Arkan Zaubern/Zauberstäben|r. Plündert sie für |T135975:0|t[|cRXP_FRIENDLY_Prophecy of the Verloren Tribe|r]
    .collect 221981,1
    .goto Tanaris,52,29
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_Ihr braucht ZWEI Meditationspuffer: Sucht nach einem Priester mit mehreren Buffs, kniet vor ihm (/knien) und wartet darauf, dass er für euch betet (/beten).|r
    .train 431669 >>|cRXP_WARN_Benutzt das|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of the Verloren Tribe|r] |cRXP_WARN_um zu trainieren|r |T135981:0|t[Woge des Lichts]
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Armschienen
#title Woge des Lichts
#name Woge des Lichts - 40 (Sümpfe des Elends)

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_Ihr könnt die|r |T135981:0|t[Woge des Lichts] |cRXP_WARN_Rune nur zwischen 21 Uhr und 6 Uhr in Sümpfe des Elends erhalten.|r
    +Ihr könnt nach Schlingendorntal schauen, wenn ihr die Rune außerhalb dieses Zeitraums erhalten möchtet.
    .train 431669,1
step
    #completewith next
    .zone Swamp of Sorrows >>Reist zu den Sümpfen des Elends
    .train 431669,1
step
    .train 431669,1
    >>Tötet |cRXP_ENEMY_Echo einer verlorenen Seele|r |cRXP_WARN_mit Heilig oder Arkan Zaubern/Zauberstäben|r. Plündert sie für |T135975:0|t[|cRXP_FRIENDLY_Prophecy of the Verloren Tribe|r]
    .collect 221981,1
    .goto Swamp of Sorrows,50,60
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_You need TWO meditation buffs: Look for a priest with multiple buffs, /knien before him, warten for him to /beten for you.|r
    .train 431669 >>|cRXP_WARN_Benutzt die|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of the Verloren Tribe|r] |cRXP_WARN_zum Trainieren von|r |T135981:0|t[Woge des Lichts]
]])


RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Armschienen
#title Woge des Lichts
#name Woge des Lichts - 40 (Das Hinterland)

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_Ihr könnt die|r |T135981:0|t[Woge des Lichts] |cRXP_WARN_Rune nur zwischen 21 Uhr und 6 Uhr in Das Hinterland erhalten.|r
    +Ihr könnt in das Schlingendorntal schauen, wenn ihr die Rune außerhalb dieses Zeitraums holen wollt.
    .train 431669,1
step
    #completewith next
    .zone The Hinterlands>>Reise in die Hinterlande
    .train 431669,1
step
    .train 431669,1
    >>Tötet |cRXP_ENEMY_Echo einer verlorenen Seele|r |cRXP_WARN_mit Heilig oder Arkan Zaubern/Zauberstäben|r. Plündert sie für |T135975:0|t[|cRXP_FRIENDLY_Prophecy of the Verloren Tribe|r]
    .collect 221981,1
    .goto The Hinterlands,73,68
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_Ihr braucht ZWEI Meditationspuffer: Sucht nach einem Priester mit mehreren Buffs, kniet vor ihm (/knien) und wartet darauf, dass er für euch betet (/beten).|r
    .train 431669 >>|cRXP_WARN_Benutzt die|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of the Verloren Tribe|r] |cRXP_WARN_zum Trainieren von|r |T135981:0|t[Woge des Lichts]
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Armschienen
#title Woge des Lichts
#name Woge des Lichts - 40 (Schlingendorntal) 2

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_Die Seele kann nur nach einem Blutmond-Ereignis spawnen. Ihr könnt auch das Ereignis deaktivieren und zum Ort der Wegmarke laufen|r.
    .train 431669,1
step
    #completewith next
    .zone Stranglethorn Vale >>Reist nach Schlingendorntal
    .train 431669,1
step
    .train 431669,1
    >>Tötet |cRXP_ENEMY_Echo einer verlorenen Seele|r |cRXP_WARN_mit Heilig oder Arkan Zaubern/Zauberstäben|r. Plündert sie für |T135975:0|t[|cRXP_FRIENDLY_Prophecy of the Verloren Tribe|r]
    .collect 221981,1
    .goto Stranglethorn Vale,40.0,58.0
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_Ihr braucht ZWEI Meditationspuffer: Sucht nach einem Priester mit mehreren Buffs, kniet vor ihm (/knien) und wartet darauf, dass er für euch betet (/beten).|r
    .train 431669 >>|cRXP_WARN_Benutzt die|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of the Verloren Tribe|r] |cRXP_WARN_zum Trainieren von|r |T135981:0|t[Woge des Lichts]
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Armschienen
#title Woge des Lichts
#name Woge des Lichts - 40 (Schlingendorntal) 1

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_Ihr könnt die|r |T135981:0|t[Woge des Lichts] |cRXP_WARN_Rune nur zwischen 21 Uhr und 6 Uhr erhalten.|r
    +Ihr könnt den Schlingendorntal 2 betrachten, wenn ihr die Rune außerhalb dieses Zeitfensters erhalten möchtet.
    .train 431669,1
step
    #completewith next
    .zone Stranglethorn Vale >>Reist nach Schlingendorntal
    .train 431669,1
step
    .train 431669,1
    >>Tötet |cRXP_ENEMY_Echo einer verlorenen Seele|r |cRXP_WARN_mit Heilig or Arkan spells/wands|r. Plündert sie um die |T135975:0|t[|cRXP_FRIENDLY_Prophecy of the Verloren Tribe|r] zu erhalten.
    .collect 221981,1
    .goto Stranglethorn Vale,30.0,73.0
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_Ihr braucht ZWEI Meditationspuffer: Sucht nach einem Priester mit mehreren Buffs, kniet vor ihm (/knien) und wartet darauf, dass er für euch betet (/beten).|r
    .train 431669 >>|cRXP_WARN_Benutzt die|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of the Verloren Tribe|r] |cRXP_WARN_zum Trainieren von|r |T135981:0|t[Woge des Lichts]
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Verschleierung
#title Verbindende Heilung
#name Verbindende Heilung - 58 (Western und Die Östlichen Pestländer)
#next Priester Racials - 60 (Azeroth)

step << Alliance
    #completewith next
    .zone Stormwind City >> Lauf nach Sturmwind
step << Alliance
    .goto Stormwind City,38.8,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hohepriesterin Laurena|r in der MoP - Objekte Kathedrale
    .accept 84320 >> Akzeptiert die Quest Verlorenes Erbe
    .target High Priestess Laurena
step << Horde
    #completewith next
    .zone Orgrimmar >> Reist nach Orgrimmar
step << Horde
    .goto Orgrimmar,35.8,87.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dietrich Loob|r im Tal der Geister
    .accept 84405 >> Akzeptiert die Quest Verlorenes Erbe
    .target Dietrich Praice
step
    #completewith next
    .zone Western Plaguelands >> Lauf in die Westlichen Pestländer
step
    .goto Western Plaguelands,51.9,82.4,50 >> Reist zur großen Gruft neben Trauerhügel
step
    .goto Western Plaguelands,54.8,81.2
    >>|cRXP_WARN_Betretet die Gruft und geht nach links. Geht die Treppen hinunter und sucht einen kleinen hölzernen Kasten in einer kleinen Nische zu eurer Rechten. Plündert es für|r |T133299:0|t[|cRXP_PICK_Familien-Erbstück|r]
    .collect 227745,1 --Family Heirloom(1)
step
    .goto Western Plaguelands,53.8,80.2
    >>|cRXP_WARN_Geht zum Grund der Gruft. Plündert|r |T133741:0|t[|cRXP_PICK_Familienunterlagen|r] |cRXP_WARN_von einem Bücherregal zu eurer rechten Seite und|r |T133735:0|t[|cRXP_PICK_Überlebender Tagebuch|r] |cRXP_WARN_vom Tisch auf der linken Seite|r
    .collect 227747,1 --Family Records
    .collect 227748,1 --Survivor Journal
step << Alliance
    #completewith next
    .zone Stormwind City >> Rückkehr nach Sturmwind
step << Alliance
    .goto Stormwind City,38.8,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hohepriesterin Laurena|r in der MoP - Objekte Kathedrale
    .turnin 84320 >> Gebt die Quest Verlorenes Erbe ab
    .accept 84321 >> Akzeptiert die Quest Relikt des Lichts
    .target High Priestess Laurena
step << Horde
    #completewith next
    .zone Orgrimmar >> Rückkehr nach Orgrimmar
step << Horde
    .goto Orgrimmar,35.8,87.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dietrich Loob|r im Tal der Geister
    .turnin 84405 >> Gebt die Quest Verlorenes Erbe ab
    .accept 84406 >> Akzeptiert die Quest Relikt des Lichts
    .target Dietrich Praice
step
    #completewith next
    >>|cRXP_WARN_The next quest will require you to loot an Gegenstand from an elite area. It's possible to do solo but if you're lower level or not very geared consider looking for someone to help you|r
    .zone Western Plaguelands >> Reist zu den Westlichen Pestländern
step
    .goto Western Plaguelands,48.2,21.7,50 >> Geht zu Herdweiler, |cRXP_WARN_bedenkt, dass dies ein Elite-Gebiet ist|r
step
    .goto Western Plaguelands,42.2,18.1
    >>|cRXP_WARN_Betretet das Hauptgebäude in Herdweiler und interagiert mit|r |cRXP_PICK_Scharlachrotes Register|r |cRXP_WARN_das auf dem Podium liegt. Passt auf, da der Bereich voller Elite-Gegner ist|r
    .turnin 84406 >> Gebt die Quest Relikt des Lichts ab << Horde
    .turnin 84321 >> Gebt die Quest Relikt des Lichts ab << Alliance
    .accept 84322 >> Akzeptiert die Quest Scharlachrote Forschung
step
    #completewith next
    >>|cRXP_WARN_Die nächste Quest wird erfordern, dass ihr einen Gegenstand aus einem Elitegebiet plündert. Es ist möglich, dies alleine zu tun, aber falls ihr ein niedriges Level habt oder nicht gut ausgerüstet seid, sucht jemanden, der euch helfen kann.|r
    .zone Eastern Plaguelands >> Lauf in die Östlichen Pestländer
step
    .goto Eastern Plaguelands,77.5,81.7,50 >> Reist zu Tyrs Hand, |cRXP_WARN_denkt daran, dass dies ein Elite-Gebiet ist|r
step
    .goto Eastern Plaguelands,83.6,78.2
    >>|cRXP_WARN_Die Rune von|r |T237537:0|t[Macht des Glaubens] |cRXP_WARN_liegt auch in Tyrs Hand. Wenn ihr sie jetzt nicht erhalten möchtet, überspringt diesen Schritt|r
    >>|cRXP_WARN_Wenn ihr es erhalten möchtet, geht zum Bibliotheksflügel des auf eurer Karte eingezeichneten Gebäudes und sucht nach einem Buch oben auf einem Bücherregal. Plündert es für die Rune. Bedenkt, dass ihr es im Kampf nicht plündern könnt|r
    >>|cRXP_WARN_Ihr könnt entweder alle Mobs im Raum löschen oder neben dem Buch sterben und an einem Ort außerhalb der Sichtlinie der Mobs wiederbeleben, um die Rune zu plündern, ohne irgendetwas töten zu müssen|r
    .collect 226418,1 --Rune of Holy Specialization
    .train 453702,1
step
    #completewith next
    .train 453702 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune der Macht des Glaubens|r] um zu trainieren |T237537:0|t[Macht des Glaubens]
    .train 453702,1
    .itemcount 226418,1
step
    .goto Eastern Plaguelands,83.6,78.2
    >>|cRXP_WARN_Betretet den Glockenturm und geht ins oberste Stockwerk. Interagiert mit der verschlossenen Box, die dort liegt|r
    .turnin 84322 >> Gebt die Quest Scharlachrote Forschung ab
    .accept 84323 >> Akzeptiert die Quest Der Preis im Inneren
step
    .goto Eastern Plaguelands,83.6,78.2
    >>Tötet alle scharlachroten Gegner in Tyrs Hand. Plündert sie für einen |T134245:0|t[|cRXP_LOOT_Artefakt-Lagerschlüssel|r]
    >>|cRXP_WARN_Ihr könnt das Farmen des Schlüssels überspringen und einen Schurken mit Schlosspicking von 175+ suchen, da sie auch die Box für euch öffnen können. Überspringt diesen Schritt, wenn ihr lieber einen Schurken sucht als den Schlüssel zu farmen|r
    .collect 228912,1 --Artifact Storage Key
    .itemcount 132874,<1 --Skips if you get the Shard of Light without the key
step
    >>Benutzt den |T134245:0|t[|cRXP_LOOT_Artefakt-Lagerschlüssel|r], um |T133876:0|t[|cRXP_LOOT_Puzzlebox|r] zu öffnen, oder lasst einen Schurken sie für euch mit Schlosspicking öffnen. Plündert es für |T132874:0|t[|cRXP_LOOT_Lichtsplitter|r]
    .collect 227938,1 --Shard of Light(1)
step << Alliance
    #completewith next
    .zone Stormwind City >> Rückkehr nach Sturmwind
step << Alliance
    .goto Stormwind City,38.8,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hohepriesterin Laurena|r in der MoP - Objekte Kathedrale
    .turnin 84323 >> Gebt die Quest Der Preis im Inneren ab
    .target High Priestess Laurena
step << Horde
    #completewith next
    .zone Orgrimmar >> Rückkehr nach Orgrimmar
step << Horde
    .goto Orgrimmar,35.8,87.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dietrich Loob|r im Tal der Geister
    .turnin 84323 >> Gebt die Quest Der Preis im Inneren ab
    .target Dietrich Praice
step
    .train 402853 >> Benutzt die |T135791:0|t[|cRXP_FRIENDLY_Jubilant Offenbarung|r] zum Trainieren von |T135883:0|t[|cRXP_FRIENDLY_Verbindende Heilung|r]
    .use 228123
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Verschleierung
#title Vampirberührung
#name Vampirberührung - 60 (Dämonensturz Dungeon)

step
    #completewith next
    >>Die Rune des |T135978:0|t[|cRXP_FRIENDLY_Vampirberührung|r] fällt vom letzten Boss des Dämonensturz, dem neuen Verlies, das in SoD hinzugefügt wurde
    .zone Felwood >> |cRXP_WARN_Um das Verlies zu betreten, benötigt ihr zunächst ein Schmuckstück, das von einer kurzen Quest belohnt wird. Geht zu Teufelswald, um sie zu beginnen|r
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    .goto Felwood,51.4,82.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Abgesandten des Schattenzahns|r
    .accept 84384 >> Akzeptiert die Quest Dämonische Täuschungen
    .target Shadowtooth Emissary
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    #completewith next
    .zone Winterspring >> Reist nach Winterquell
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    .goto Winterspring,65.6,21.4
    >>Sucht nach |cRXP_ENEMY_Berserker Owlbeasts|r nördlich von Ewige Warte. Tötet sie und plündert sie für |T237413:0|t[|cRXP_LOOT_Owlbeast Pineal Glands|r]
    .complete 84384,1
    .mob Berserk Owlbeast
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    #completewith next
    .zone Felwood >> Kehrt nach Teufelswald zurück
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    .goto Felwood,51.4,82.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Abgesandten des Schattenzahns|r
    .turnin 84384 >> Gebt die Quest Dämonische Täuschungen ab
    .target Shadowtooth Emissary
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    #completewith next
    +Rüstet den |T136232:0|t[|cRXP_FRIENDLY_Schattenzahnillusionsschutz|r] in einem Schmuckfach aus. Ihr benötigt es ausgerüstet, um das Verlies betreten zu können
    .use 228172
    .itemcount 228172,<1
step
    >>|cRXP_WARN_Die Rune von|r |T135978:0|t[|cRXP_FRIENDLY_Vampirberührung|r] |cRXP_WARN_fällt vom letzten Boss des Dämonensturz, das in SoD hinzugefügt wurde. Fangt an, nach einer Gruppe zu suchen, während ihr nach Eschental geht.|r
    >>Falls ihr fliegt, fliegt zum Talendris-Punkt in Azshara statt nach Astranaar. Es liegt näher am Verlieseingang << Alliance
    .zone Ashenvale >> Reist nach Eschental
step
    .goto Ashenvale,84.5,75.0,50 >> Geht zum Eingang des Dämonensturz-Verlieses
step
    >>Räumt das Verlies. |T135791:0|t[|cRXP_FRIENDLY_Aperitive Offenbarung|r], das euch |T135978:0|t[|cRXP_FRIENDLY_Vampirberührung|r] lehrt, fällt vom letzten Boss des Verlieses, |cRXP_ENEMY_Höllschreis Phantom|r. |cRXP_WARN_Stellt sicher, dass ihr ihn für die Rune plündert!|r
    .collect 228126,1 --Apperitive Epiphany
    .mob Hellscream's Phantom
step
    .train 402857 >> Benutzt den |T135791:0|t[|cRXP_FRIENDLY_Aperitive Offenbarung|r], um |T135978:0|t[|cRXP_FRIENDLY_Vampirberührung|r] zu erlernen
    .use 228126
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Extras
#title Priester Racials
#name Priester Racials - 60 (Azeroth)


step
    #completewith next
    >>|cRXP_WARN_Die zusätzliche Priesterfähigkeit ist ein Server-weites Freischalten. Das bedeutet, dass wenn bereits jemand dies auf eurem Server getan hat, könnt ihr die gesamte Questreihe überspringen und direkt nach Karazhan gehen, um eure neue Rassenfähigkeit zu trainieren. Wenn dies nicht der Fall ist, könnt ihr den Leitfaden unten verwenden, um die Person zu sein, die sie für euren Server freischaltet!|r
    .zone Deadwind Pass >> Reist zum Gebirgspass der Totenwinde
step
    .goto Deadwind Pass,40.8,78.4
    >>Reist zu einem kleinen Heiligtum neben Karazhan
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Göttliche Vorahnung|r an einem Heiligtum neben Karazhan, um zu wählen, welche Rassenfähigkeit ihr haben möchtet
    .target Divine Apprehension
step
    #completewith PreQStart
    +|cRXP_WARN_Dies ist der Beginn der Questreihe für das Server-weite Freischalten der zusätzlichen Priester-Rassenfähigkeit. Es besteht eine gute Chance, dass es bereits auf eurem Server abgeschlossen wurde und ihr müsst es nicht tun. Macht nur weiter, wenn ihr die Kette ausprobieren möchtet oder wenn ihr wisst, dass sie noch nicht freigescaltet wurde.|r
step
    #completewith QStart
    +|cRXP_WARN_Um diese Quest zu beginnen, müsst ihr vorher die Questreihe abgeschlossen haben, die|r |T135883:0|t[|cRXP_FRIENDLY_Verbindende Heilung|r]|cRXP_WARN_verleiht. Ihr könnt einen Leitfaden dafür im Abschnitt der Mantelrunen finden.|r
    .train 402853,1
step
    #label PreQStart
    .goto Eastern Plaguelands,48.1,24.0
    >>|cRXP_WARN_Um die erste Quest dieser Kette abzugeben, benötigt ihr 4|r |T134855:0|t[|cRXP_LOOT_Weihwasser von Stratholme|r] |cRXP_WARN_zusätzlich zu anderen Materialien, die vom Auktionshaus gekauft werden können. Sucht eine Gruppe, um das Stratholme (Untote) Verlies zu durchsuchen.|r
    >>|cRXP_WARN_Sobald ihr drinnen seid, sucht nach und plündert Versorgungskisten, die auf dem Boden verstreut sind. Sie können Heilig Wasser enthalten, aber auch Köder sein, die lästige Feinde hervorbringen.|r
    .collect 13180,4 --Stratholme Holy Water(4)
step << Alliance
    #completewith next
    .zone Stormwind City >> Lauf nach Sturmwind
step << Alliance
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Jaxon|r
    >>Kauft 6 |T133682:0|t[|cRXP_LOOT_Heavy Runenstoff Bandages|r], 4 |T134834:0|t[|cRXP_LOOT_Major Heilung Potions|r] und 8 |T132834:0|t[|cRXP_LOOT_Giant Eggs|r] vom Auktionshaus. Ihr benötigt sie für die erste Quest dieser Kette zusammen mit den |T134855:0|t[|cRXP_LOOT_Weihwasser von Stratholme|r], die ihr bereits gesammelt habt
    .collect 14530,6 --Heavy runecloth bandage (6)
    .collect 13446,4 --Major Healing Potion (4)
    .collect 12207,8 --Giant Egg(8)
    .collect 13180,4 --Stratholme Holy Water(4)
    .target Auctioneer Jaxon
step << Alliance
    #label QStart
    .goto Stormwind City,38.8,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hohepriesterin Laurena|r in der Kathedrale von Sturmwind
    .accept 84324 >> Akzeptiert die Quest Diplomatische Annäherungsversuche
    .turnin 84324 >> Gebt die Quest Diplomatische Annäherungsversuche ab
    .target High Priestess Laurena
step << Horde
    #completewith next
    .zone Orgrimmar >> Reist nach Orgrimmar
step << Horde
    .goto Orgrimmar,55.59,62.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thathung|r
    >>Kauft 6 |T133682:0|t[|cRXP_LOOT_Heavy Runenstoff Bandages|r], 4 |T134834:0|t[|cRXP_LOOT_Major Heilung Potions|r] und 8 |T132834:0|t[|cRXP_LOOT_Giant Eggs|r] vom Auktionshaus. Ihr werdet sie für die erste Quest in dieser Questlinie benötigen, zusammen mit dem |T134855:0|t[|cRXP_LOOT_Weihwasser von Stratholme|r], das ihr bereits gesammelt habt.
    .collect 14530,6 --Heavy runecloth bandage (6)
    .collect 13446,4 --Major Healing Potion (4)
    .collect 12207,8 --Giant Egg(8)
    .collect 13180,4 --Stratholme Holy Water(4)
    .target Thathung
step << Horde
    #label QStart
    .goto Orgrimmar,35.8,87.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dietrich Loob|r im Tal der Geister
    .accept 84408 >> Akzeptiert die Quest Diplomatische Annäherungsversuche
    .turnin 84408 >> Gebt die Quest Diplomatische Annäherungsversuche ab
    .target Dietrich Praice
step
    #completewith next
    >>|cRXP_WARN_Für den nächsten Teil der Quest müsst ihr einen Priester der gegnerischen Fraktion finden, der ebenfalls die Quest durchführt, um voranzukommen.|r
    .zone Eastern Plaguelands >> Lauf in die Östlichen Pestländer
step
    .goto Eastern Plaguelands,47,58
    >>|cRXP_WARN_Reist zum|r |cRXP_FRIENDLY_Schrein der Zusammenarbeit|r |cRXP_WARN_das sich im EPL befindet. Schadet euch gegenseitig mit dem gegnerischen Priester und nutzt dann den|r |T134918:0|t[|cRXP_FRIENDLY_Altruistenschutz|r] |cRXP_WARN_Gegenstand, den ihr aus der Abgabe der vorherigen Quest erhalten habt, um euch gegenseitig zu heilen.|r
    >>Wenn alles richtig gemacht wurde, wird der |cRXP_FRIENDLY_Schrein der Zusammenarbeit|r eine Quest anbieten, nehmt sie an
    .accept 84325 >> Akzeptiert die Quest Schrein der Zusammenarbeit << Alliance
    .accept 84410 >> Akzeptiert die Quest Schrein der Zusammenarbeit << Horde
    .use 228130
step << Alliance
    #completewith next
    .zone Stormwind City >> Rückkehr nach Sturmwind
step << Alliance
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Jaxon|r
    >>Kauft 2 |T134459:0|t[|cRXP_LOOT_Arcanite Bars|r], 2 |T134086:0|t[|cRXP_LOOT_Blood of the Mountain|r] und 3 |T134132:0|t[|cRXP_LOOT_Blue Sapphires|r] vom Auktionshaus. Ihr benötigt sie, um bald eine Quest abzugeben. Diese Gegenstände könnten teuer sein
    .collect 12360,2 --Arcanite Bar(2)
    .collect 11382,2 --Blood of the Mountain(2)
    .collect 12361,3 --Blue Sapphire(3)
    .target Auctioneer Jaxon
step << Alliance
    .goto Stormwind City,38.8,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hohepriesterin Laurena|r in der Kathedrale von Sturmwind
    .turnin 84325 >> Gebt die Quest Schrein der Zusammenarbeit ab
    .accept 84326 >> Akzeptiert die Quest Diplomatenring
    .turnin 84326 >> Gebt die Quest Diplomatenring ab
    .accept 84327 >> Akzeptiert die Quest Eine diplomatische Mission
    .target High Priestess Laurena
step << Horde
    #completewith next
    .zone Orgrimmar >> Rückkehr nach Orgrimmar
step << Horde
    .goto Orgrimmar,55.59,62.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thathung|r
    >>Kauft 2 |T134459:0|t[|cRXP_LOOT_Arcanite Bars|r], 2 |T134086:0|t[|cRXP_LOOT_Blood of the Mountain|r] und 3 |T134132:0|t[|cRXP_LOOT_Blue Sapphires|r] vom Auktionshaus. Ihr werdet sie in Kürze benötigen, um eine Quest abzugeben. Diese Gegenstände könnten teuer sein.
    .collect 12360,2 --Arcanite Bar(2)
    .collect 11382,2 --Blood of the Mountain(2)
    .collect 12361,3 --Blue Sapphire(3)
    .target Thathung
step << Horde
    .goto Orgrimmar,35.8,87.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dietrich Loob|r im Tal der Geister
    .turnin 84410 >> Gebt die Quest Schrein der Zusammenarbeit ab
    .accept 84411 >> Akzeptiert die Quest Diplomatenring
    .turnin 84411 >> Gebt die Quest Diplomatenring ab
    .accept 84412 >> Akzeptiert die Quest Eine diplomatische Mission
    .target Dietrich Praice
step << Horde
    #completewith next
    >>|cRXP_WARN_Um diese Quest abzuschließen, müsst ihr wieder einen gegnerischen Priester finden und ihn dazu bringen, seinen|r |T133396:0|t[|cFF0070FFDiplomatenring|r] |cRXP_WARN_auf euch zu verwenden, während ihr neben den Toren von Sturmwind steht. Dies macht, dass die Stadtwachen euch nicht mehr angreifen und euch den sicheren Eintritt in die Hauptstadt des Feindes ermöglicht.|r
    >>|cRXP_WARN_Gegnerische Spieler können euch auf einem PvP-Server immer noch angreifen!|r
    .zone Elwynn Forest >> Reist zu den Toren von Sturmwind
step << Horde
    .goto Stormwind City,38.8,26.6
    >>Lasst einen gegnerischen Priester das |T133396:0|t[|cFF0070FFDiplomatenring|r] auf euch benutzen, damit die Stadtwachen euch nicht angreifen, und geht zur MoP - Objekte Kathedrale. |cRXP_WARN_Ihr könnt immer noch von anderen Spielern angegriffen werden!|r
    >>|cRXP_WARN_Der gegnerische Priester muss euch zum Questgeber begleiten, oder ihr verliert den Buff für Diplomatische Immunität|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hohepriesterin Laurena|r in der MoP - Objekte Kathedrale
    .turnin 84412 >> Gebt die Quest Diplomatische Mission ab
    .accept 84413 >> Akzeptiert die Quest Reparatur des Splitters
    .target High Priestess Laurena
step << Alliance
    #completewith next
    >>|cRXP_WARN_Um diese Quest zu vervollständigen, müsst ihr erneut einen gegnerischen Priester finden und ihn bitten, seinen|r |T133396:0|t[|cFF0070FFDiplomatenring|r] |cRXP_WARN_auf euch anzuwenden, während ihr neben den Toren von Orgrimmar steht. Dies wird bewirken, dass die Stadtwachen euch nicht mehr angreifen und euch ermöglichen, die Feind-Hauptstadt sicher zu betreten|r
    >>|cRXP_WARN_Bedenkt, dass gegnerische Spieler euch auf einem PvP-Server immer noch angreifen können!|r
    .zone Durotar >> Reist zu den Toren von Orgrimmar
step << Alliance
    .goto Orgrimmar,35.8,87.2
    >>Lasst einen gegnerischen Priester das |T133396:0|t[|cFF0070FFDiplomatenring|r] auf euch benutzen, damit die Stadtwachen euch nicht angreifen, und geht zum Tal der Geister. |cRXP_WARN_Ihr könnt immer noch von anderen Spielern angegriffen werden!|r
    >>|cRXP_WARN_Der gegnerische Priester muss euch zum Questgeber begleiten, oder ihr verliert den Buff für Diplomatische Immunität|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dietrich Loob|r im Tal der Geister
    .turnin 84327 >> Gebt die Quest Diplomatische Mission ab
    .accept 84328 >> Akzeptiert die Quest Reparatur des Splitters
    .target Dietrich Praice
step
    #completewith next
    >>|cRXP_WARN_Beginnt, nach einer Gruppe für das Düsterbruch-West-Verlies zu suchen. Für die nächste Quest müsst ihr |r |cRXP_ENEMY_Magister Kalendris|r |cRXP_WARN_töten, einen der Verlies-Bosse|r
    .zone Feralas >> Reist nach Feralas
step
    .goto Feralas,59.1,43.2,100 >> Betretet das Düsterbruch-West-Gebiet
step
    .goto Feralas,60.4,30.2
    >>Betretet Düsterbruch West und tötet |cRXP_ENEMY_Magister Kalendris|r. Plündert das Buch |T133737:0|t[|cRXP_LOOT_Applied Göttlichkeit|r] von ihm. Er befindet sich im Geisterbereich des Verlieses
    .collect 227912,1
step << Horde
    #completewith next
    >>|cRXP_WARN_Um diese Quest abzuschließen, müsst ihr erneut einen gegnerischen Priester finden und ihn veranlassen|r |T133396:0|t[|cFF0070FFDiplomatenring|r] |cRXP_WARN_auf euch zu benutzen, während ihr neben den Toren von MoP - Objekte steht. Dies wird dazu führen, dass die Stadtwachen euch nicht mehr angreifen und ihr sicher die Feind-Hauptstadt betreten könnt|r
    >>|cRXP_WARN_Bedenkt, dass gegnerische Spieler euch auf einem PvP-Server immer noch angreifen können!|r
    .zone Elwynn Forest >> Reist zu den Toren von MoP - Objekte
step << Horde
    .goto Stormwind City,38.8,26.6
    >>Veranlasst einen gegnerischen Priester, seinen |T133396:0|t[|cFF0070FFDiplomatenring|r] auf euch anzuwenden, damit die Stadtwachen euch nicht angreifen, und geht zur Sturmwind Cathedral. |cRXP_WARN_Ihr könnt von anderen Spielern immer noch angegriffen werden!|r
    >>|cRXP_WARN_Der gegnerische Priester muss euch zum Questgeber begleiten, oder ihr verliert den Buff für Diplomatische Immunität|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hohepriesterin Laurena|r in der MoP - Objekte Kathedrale
    .turnin 84413 >> Gebt die Quest Reparatur des Splitters ab
    .accept 84329 >> Akzeptiert die Quest Die Synode kommt zusammen
    .target High Priestess Laurena
step << Alliance
    #completewith next
    >>|cRXP_WARN_Um diese Quest abzuschließen, müsst ihr erneut einen gegnerischen Priester finden und ihn veranlassen|r |T133396:0|t[|cFF0070FFDiplomatenring|r] |cRXP_WARN_auf euch zu benutzen, während ihr neben den Toren von Orgrimmar steht. Dies wird dazu führen, dass die Stadtwachen euch nicht mehr angreifen und ihr sicher die Feind-Hauptstadt betreten könnt|r
    >>|cRXP_WARN_Beachtet, dass gegnerische Spieler euch auf einem PvP-Server noch immer angreifen können!|r
    .zone Durotar >> Reist zu den Toren von Orgrimmar
step << Alliance
    .goto Orgrimmar,35.8,87.2
    >>Veranlasst einen gegnerischen Priester, seinen |T133396:0|t[|cFF0070FFDiplomatenring|r] auf euch anzuwenden, damit die Stadtwachen euch nicht angreifen, und geht zum Tal der Geister. |cRXP_WARN_Ihr könnt von anderen Spielern immer noch angegriffen werden!|r
    >>|cRXP_WARN_Der gegnerische Priester muss euch zum Questgeber geleiten, oder ihr verliert den diplomatischen Immunitäts-Buff|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dietrich Loob|r im Tal der Geister
    .turnin 84328 >> Gebt die Quest Reparatur des Splitters ab
    .accept 84329 >> Akzeptiert die Quest Die Synode kommt zusammen
    .target Dietrich Praice
step
    #completewith next
    .zone Deadwind Pass >> Reist zum Gebirgspass der Totenwinde
step
    .goto Deadwind Pass,40.8,78.4
    >>Reist zu einem kleinen Heiligtum neben Karazhan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maethra Schlackherz|r bei einem Heiligtum neben Karazhan
    .turnin 84329 >> Gebt die Quest Die Synode kommt zusammen ab
step
    +Das Abgeben der obigen Quest sollte die Questreihe abschließen und euch die Möglichkeit freischalten, eine rassische Priester-Fähigkeit von einer anderen Rasse serverübergreifend zu trainieren
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Verschleierung
#title Seelenwehr
#name Seelenwehr - 60 (Stratholme)

step
    #completewith next
    >>|cRXP_WARN_Um diese Rune zu beenden, müsst ihr ein paar Aufgaben im Stratholme-Verlies (sowohl die lebenden als auch die toten Seiten) abschließen. Beginnt, nach einer Gruppe zu suchen|r
    .zone Eastern Plaguelands >> Reist zu den Östlichen Pestländern
step
    .goto Eastern Plaguelands,47.8,24.2
    >>Betretet Stratholme
    >>|cRXP_WARN_LEST DIESEN ABSCHNITT SORGFÄLTIG, DA DIESE RUNE-QUEST EIN WENIG UNKONVENTIONELL IST|r
    >>Um die Rune zu erhalten, müsst ihr 3 Essenzen von Bossen in Stratholme sammeln. Die Bosse, die die Essenzen haben, sind |cRXP_WARN_ZUFÄLLIG UND UNTERSCHIEDLICH FÜR JEDE INSTANZ-ID|r. Um zu wissen, welche Bosse die Essenz in eurem Lauf haben, müsst ihr Hinweise auf den Säulen im Scharlachroten Gebäude auf der lebenden Seite des Dungeons finden
    >>Um die Essenzen zu sammeln, benötigt ihr 3 |T134799:0|t[|cRXP_LOOT_Stratholme Schatten Jars|r], die von den |cRXP_PICK_Postbox Parcels|r im Verlies fallen. Um die |cRXP_PICK_Postboxes|r überhaupt zu öffnen, müsst ihr den |cRXP_ENEMY_Stratholme Courier|r töten, um |T134237:0|t[|cRXP_LOOT_Postbox Keys|r] von ihm zu bekommen
    >>Nachdem ihr alle Essenzen gesammelt habt, müsst ihr zu den Säulen mit den Hinweisen zurückkehren und diese mit der Essenz aktivieren, die dem Hinweis entspricht, den sie gegeben haben. Dies spawnt einen Globus neben ihnen, den ihr plündern müsst, um die Rune zu bekommen
    +|cRXP_WARN_Zwickt hier, nachdem ihr das obige gelesen habt und mehr Details sehen möchtet, darüber welcher Hinweis welchem Boss entspricht. Ihr könnt jederzeit zu diesem Schritt zurückgehen, wenn ihr das tun müsst|r
step
    >>|cRXP_WARN_Hier sind die Hinweise und die Bosse, denen sie entsprechen:|r
    >>Unter den Toten wohnt dieser Sterbliche mit Akoluthen und eisigen Zaubersprüchen = Maleki der Leichenblasse
    >>Ein Gespenst, das verflucht ist, einen Turm zu bewachen. Kein Trost aus Reichtum oder Macht = Baroness Anastari
    >>Das alte Königreich wiederentdeckt. Ein Meister wird gegen einen anderen eingetauscht = Nerub'enkan
    >>Aus Fleisch erbaut, eine Sünde der Wissenschaft, gejagt von den Feinsten der Verlassenen = Ramstein der Verschlinger
    >>Die Menschen schauten zu ihm auf, um sie in ihrer Stunde der größten Not zu führen = Magistrate Barthilas
    >>Ein Verfechter böser Bosheit, wuchtige Schrecknisse bewachen seinen Palast = Baron Totenschwur
    >>Heiligschaden furor purges sin und yet a Schatten lurks within. = Balnazzar
    >>Der Geruch von Schwefel erfüllt den Raum. Dieser Zelot grüßt euch mit einem Knall. = Kanone Meister Willey
    +|cRXP_WARN_Klickt hier, wenn ihr die empfohlene effiziente Reihenfolge der Schritte sehen möchtet, die ihr unternehmen könnt, um diese Quest abzuschließen. Ihr könnt jederzeit zu diesem Schritt zurückkehren, um die Hinweise erneut zu lesen, falls erforderlich|r
step
    >>|cRXP_WARN_Die effiziente Abfolge der Schritte bei dieser Quest ist wie folgt:|r
    >>1. Startet im lebenden Bereich des Verlieses
    >>2. Beute drei [|cRXP_PICK_Postbox Parcels|r] für die |T134799:0|t[|cRXP_LOOT_Stratholme Schatten Jars|r], die Krüge sind einzigartig, also sollte ein anderer Spieler jeden aufsammeln
    >>3. Geht zum Pedestal-Zimmer und findet heraus, welche Bosse die Essenzen in der ID von Euch haben
    >>4. Sammelt alle Essenzen ein, während ihr durch das Verlies fortschreitet
    >>5. Kehrt zum Pedestal-Zimmer zurück und aktiviert jeden mit seiner Essenz
    >>6. Beute den Orb, der für die Rune von Euch erscheint
    .collect 228124,1 --Oneiric Epiphany
step
    .train 402850 >> Benutzt den |T135791:0|t[|cRXP_FRIENDLY_Oneiric Offenbarung|r], um das |T135948:0|t[|cRXP_FRIENDLY_Seelenwehr|r] zu trainieren
    .use 228124
]])
