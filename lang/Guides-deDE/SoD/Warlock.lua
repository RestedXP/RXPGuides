if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Heimsuchung - 3 (Wald von Elwynn)
#title Heimsuchung

step << Warlock
    #season 2
    .goto Elwynn Forest,52.544,51.922
    >>Öffnet |cRXP_PICK_Defias Stashbox|r auf dem Boden. Plündert es für die |T134419:0|t[|cRXP_FRIENDLY_Rune der Heimsuchung|r]
    .collect 205230,1 -- Rune of Haunting (1)
    .train 403919,1
step << Warlock
    #season 2
    #label RoH
    .cast 402265 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Heimsuchung|r] |cRXP_WARN_um zu erlernen|r |T133816:0|t[Handschuhe prägen - Heimsuchung]
    .use 205230
    .itemcount 205230,1
    .train 403919,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Heimsuchung - 1 (Dun Morogh)
#title Heimsuchung

step << Warlock
    #season 2
    .goto Dun Morogh,26.733,72.552
    >>Öffnet die |cRXP_PICK_Schließkiste der Felsenkiefer|r auf dem Boden. Plündert es für |T134419:0|t|cRXP_LOOT_[Rune der Heimsuchung]|r
    .collect 205230,1 -- Rune of Haunting (1)
    .train 403919,1
step << Warlock
    #season 2
    .train 403919 >>|cRXP_WARN_Benutzt die|r |T134419:0|t|cRXP_LOOT_[Rune der Heimsuchung]|r |cRXP_WARN_um|r |T133816:0|t[Handschuhe prägen - Heimsuchung] zu erlernen
    .use 205230
    .itemcount 205230,1 -- Rune of Haunting (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Heimsuchung - 2 (Durotar)
#title Heimsuchung


    --Rune of Haunt

step << Orc
    #season 2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nartok|r
    .accept 77586 >>Akzeptiert die Quest Gestohlene Macht
    .target Nartok
    .train 403919,1
step
    #season 2
    .goto Durotar,42.99,54.43
    >>Plündert |cRXP_PICK_Durchnässte Lagertruhe|r für die |T134419:0|t[|cRXP_FRIENDLY_Rune der Heimsuchung|r] in der Höhle
    .collect 205230,1 --Rune of Haunting (1)
    .train 403919,1
step
    #season 2
    .train 403919 >>|cRXP_WARN_Benutzt die|r |T134419:0|t|cRXP_LOOT_[Rune der Heimsuchung]|r |cRXP_WARN_um|r |T133816:0|t[Handschuhe prägen - Heimsuchung] zu erlernen
    .use 205230
    .itemcount 205230,1 -- Rune of Haunting (1)
step << Orc
    #season 2
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mai'ah|r
    .turnin 77586 >>Gebt die Quest Gestohlene Macht ab
    .target Nartok
    .isOnQuest 77586
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Heimsuchung - 2 (Tirisfal)
#title Heimsuchung


    --Rune of Haunt

step << Undead
    #season 2
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maximillion|r
    .accept 77672 >>Akzeptiert die Quest Die verlorene Rune
    .target Maximillion
step
    #season 2
    .goto Tirisfal Glades,24.60,59.45
    >>Plündert |cRXP_PICK_Verlorenes Versteck|r in der Höhle für die |T134419:0|t[|cRXP_FRIENDLY_Rune der Heimsuchung|r]
    .collect 205230,1 --Rune of Haunting (1)
    .train 403919,1
step
    #season 2
    .cast 402265 >>Benutzt |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: NSZEIELA|r]
    .use 205230
    .train 403919,1
step << Undead
    #season 2
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maximillion|r
    .turnin 77672 >>Gebt die Quest Die verlorene Rune ab
    .target Maximillion


]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Seelenentzug - 13 (Durotar)
#title Seelenentzug

step
    #completewith next
    .zone Durotar >>Reist nach Durotar
step
    .train 403920,1
    .goto Durotar,48.60,15.28
    .collect 205020,1 >>Benutzt |T136163:0|t[Seelendieb] auf einem Tier um einen reinen |T134095:0|t[Seelensplitter] zu erhalten
step
    --Wowhead npc 3203 also possible, maybe better?
    .train 403920,1
    >>Benutzt |T136163:0|t[Seelendieb] auf |cRXP_ENEMY_Gazz'uz|r (innerhalb der Höhle) um einen |T134085:0|t[Besudelt Seelensplitter] zu erhalten. |cRXP_WARN_Ihr müsst ihn nicht töten und könnt ihn von unten absaugen|r
    .goto Durotar,51.47,9.73
    .collect 205019,1
    .mob Gazz'uz
step
    .train 403920,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Darmak Bloodhowl|r
    .goto Durotar,54.6,41.6
    .collect 205022,1
    .skipgossip 208226,1
    .target Darmak Bloodhowl
step
    .use 205022
    .itemcount 205022,1
    .train 403920 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Seelenentzug|r] |cRXP_WARN_um zu trainieren|r |T136169:0|t[Seelenentzug]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Seelenentzug - 9 (Tirisfal)
#title Seelenentzug

step
    #completewith next
    .zone Tirisfal Glades >>Reist nach Tirisfal
step
    #completewith next
    .train 403920,1
    .collect 205020,1 >>Benutzt |T136163:0|t[Seelendieb] auf einem Tier um einen reinen |T134095:0|t[Seelensplitter] zu erhalten
step
    .train 403920,1
    >>Benutzt |T136163:0|t[Seelendieb] auf |cRXP_ENEMY_Madenauge|r um einen |T134085:0|t[Besudelt Seelensplitter] zu erhalten. |cRXP_WARN_Ihr müsst ihn nicht töten.|r
    .goto Tirisfal Glades,58.6,31.6
    .collect 205019,1
    .mob Maggot Eye
step
    .train 403920,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Denton Bleichpfad <Seelenhändler>|r in Unterstadt
    .goto Undercity,84.2,25.8
    .collect 205022,1
    .skipgossip 208682,1
    .target Denton Bleakway
step
    .use 205022
    .itemcount 205022,1
    .train 403920 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Seelenentzug|r] |cRXP_WARN_um zu trainieren|r |T136169:0|t[Seelenentzug]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Dämonische Taktiken - 4 (Tirisfal)
#title Dämonische Taktiken

step
    #completewith next
    .zone Tirisfal Glades >>Reist nach Tirisfal
step
    .train 416009,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tInteragiert mit |cRXP_FRIENDLY_Tot Akolyth|r. Öffnet |T133625:0|t[Knappsack des Akolythen]
    .goto Tirisfal Glades,76.61,44.87
    .use 205364
    .collect 205181,1
    .collect 208224,1
    .skipgossip 208927,1
    .mob Dead Acolyte
step
    .train 416009,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rupert Boch|r oben in der Taverne.
    .goto Tirisfal Glades,61.6,52.4
    .collect 205182,1
    .skipgossip 2127,2
    .target Rupert Boch
step
    .train 416009,1
    >>Benutzt |T133447:0|t[Machtloses Artefakt] neben dem Runenstein. |cRXP_WARN_Danach habt ihr 10 Minuten Zeit, um nach Unterstadt zu gelangen (schaut auf den Debuff von Euch)|r
    .goto Tirisfal Glades,76.61,44.87
    .use 205182
    .collect 205183,1
step
    .train 416009,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Carentin Halgar|r in Unterstadt
    .goto Undercity,85.0,25.6
    .collect 205215,1
    .skipgossip 5675,1
    .target Carendin Halgar
step
    .use 205215
    .itemcount 205215,1
    .train 416009 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Taktiken|r] |cRXP_WARN_um zu trainieren|r |T136150:0|t[Dämonische Taktiken]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Dämonische Anmut - 8 (Durotar)
#title Dämonische Anmut

step
    #completewith DemonicGraceDurotarTome
    .zone Durotar >>Reist nach Durotar
step
    #completewith DemonicGraceDurotarSkull
    >>Tötet |cRXP_ENEMY_Makrura|r. Plündert sie für |T133571:0|t[Makrura Beine]
    .collect 207732,1
    .mob Makrura Clacker
    .mob Makrura Shellhide
step
    #label DemonicGraceDurotarTome
    >>Tötet die |cRXP_ENEMY_Verhexte Trolle|r und die |cRXP_ENEMY_Voodoo-Trolle|r. Plündert sie für den |T133733:0|t[Ominöser Foliant]
    .goto Durotar,67.2,85.6
    .collect 207731,1
    .mob Hexed Troll
    .mob Voodoo Troll
step
    #label DemonicGraceDurotarSkull
    >>Tötet die |cRXP_ENEMY_Kul Tiran Humans|r. Plündert sie für |T133730:0|t[Kul Tiraner Totenschädel]
    .goto Durotar,58.6,56.0
    .collect 207733,1
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step
    #loop
    .goto Durotar,61.0,43.0,50,0
    .goto Durotar,60.8,70.6,50,0
    .goto Durotar,51.6,84.6,50,0
    .goto Durotar,60.8,70.6,50,0
    >>Tötet |cRXP_ENEMY_Makrura|r. Plündert sie für |T133571:0|t[Makrura Beine]
    .collect 207732,1
    .mob Makrura Clacker
    .mob Makrura Shellhide
step
    .train 425477,1
    *|cRXP_WARN_VORSICHT: Andere können den Dämon von Euch markieren, was bedeutet, dass ihr die Reagenzien erneut farmen müsst|r
    >>BETRETET die Kanalisation. Benutzt |T133733:0|t[Ominöser Foliant] bei dem Beschwörungskreis. Tötet |cRXP_WARN_DIE ELITE (vielleicht um Hilfe bitten)|r |cRXP_ENEMY_Soboz|r. Plündert ihn für |T134419:0|t[|cRXP_FRIENDLY_Rune der Barmherzigkeit|r]
    .goto Durotar,67.45,87.83
    .collect 204912,1
    .mob Soboz
step
    .use 204912
    .itemcount 204912,1
    .train 425477 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Barmherzigkeit|r] |cRXP_WARN_um zu trainieren|r |T236293:0|t[Dämonische Anmut]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Dämonische Anmut - 8 (Tirisfal)
#title Dämonische Anmut

step
    .train 425477,1
    #completewith DemonicGraceTirisfalGladesTome
    .zone Tirisfal Glades >>Reist nach Tirisfal
step
    .train 425477,1
    #completewith DemonicGraceTirisfalGladesBlood
    >>Tötet |cRXP_ENEMY_Darkhounds|r. Plündert sie für |T133726:0|t[Hound Kiefer]
    .collect 207973,1
    .mob Cursed Darkhound
    .mob Decrepit Darkhound
    .mob Ravenous Darkhound
step
    .train 425477,1
    #label DemonicGraceTirisfalGladesTome
    >>Tötet die |cRXP_ENEMY_Darkeye Bonecasters|r. Plündert sie für |T133733:0|t[Ominous Foliant]
    .goto Tirisfal Glades,47.6,36.4
    .collect 207974,1
    .mob Darkeye Bonecaster
step
    .train 425477,1
    #label DemonicGraceTirisfalGladesBlood
    >>Tötet die |cRXP_ENEMY_Rot Hides|r. Plündert sie für |T133730:0|t[Gnoll Blut]
    .goto Tirisfal Glades,58.6,34.6
    .collect 204906,1
    .mob Rot Hide Mongrel
    .mob Rot Hide Gnoll
    .mob Rot Hide Graverobber
step
    .train 425477,1
    #loop
    .goto Tirisfal Glades,73.4,52.8,50,0
    .goto Tirisfal Glades,59.4,60.2,50,0
    .goto Tirisfal Glades,44.4,58.4,50,0
    .goto Tirisfal Glades,42.0,43.0,50,0
    >>Tötet |cRXP_ENEMY_Darkhounds|r. Plündert sie für |T133726:0|t[Hound Kiefer]
    .collect 207973,1
    .mob Cursed Darkhound
    .mob Decrepit Darkhound
    .mob Ravenous Darkhound
step
    .train 425477,1
    *|cRXP_WARN_VORSICHT: Andere können den Dämon von Euch markieren, was bedeutet, dass ihr die Reagenzien erneut farmen müsst|r
    >>BETRETET die Kanalisation. Benutzt |T133733:0|t[Ominöser Foliant] bei dem Beschwörungskreis. Tötet |cRXP_WARN_DIE ELITE (vielleicht um Hilfe bitten)|r |cRXP_ENEMY_Soboz|r. Plündert ihn für |T134419:0|t[|cRXP_FRIENDLY_Rune der Barmherzigkeit|r]
    .goto Undercity,15.1,31.3,20,0
    .goto Undercity,24.11,41.59
    .collect 204912,1
    .mob Soboz
step
    .use 204912
    .itemcount 204912,1
    .train 425477 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Barmherzigkeit|r] |cRXP_WARN_um zu trainieren|r |T236293:0|t[Dämonische Anmut]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune & Books Dungeonführer
-- #subgroup Chest << Mage
#subgroup Handschuhe << Warlock
-- #name Burnout - 8 (Tirisfal Glades) << Mage
#name Chaosschadenblitz - 8 (Tirisfal) << Warlock
#title Chaosblitz << Warlock
--Permok: Dont load it for mages for now

step << Mage
    >>Kauft ein(e) oder mehrere |T135933:0|t[Verständnis Bezauberung] bei einem Reagenzhändler
    .collect 211779,1
step
    #completewith next
    .zone Tirisfal Glades >>Reist nach Tirisfal
step
    .train 403925,1 << Warlock
    .train 401759,1 << Mage
    .goto Tirisfal Glades,66.3,40.0
    >>Befreit den |cRXP_ENEMY_eingefrorenen Murloc|r |cRXP_WARN_durch Feuerzauber|r. Plündert ihn für |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: Ausgebrannt|r] << Mage
    >>Befreit den |cRXP_ENEMY_eingefrorenen Murloc|r |cRXP_WARN_durch Feuerzauber|r. Plündert ihn für |T134419:0|t[|cRXP_FRIENDLY_Rune der Chaosblitz|r] << Warlock
    *|cRXP_WARN_Bei niedrigen Stufen könnt ihr es alleine nicht befreien, sucht nach einem anderen Hexenmeister oder Magier|r
    .collect 205228,1 << Warlock
    .collect 203748,1 << Mage
    .mob Frozen Murloc
step
    .use 205228 << Warlock
    .use 203748 << Mage
    .itemcount 205228,1 << Warlock
    .itemcount 203748,1 << Mage
    .collect 211779,1 >>Ihr benötigt ein(e) |T135933:0|t[Verständnis Bezauberung] von einem Reagenzhändler um den Gegenstand zu benutzen << Mage
    .train 403925 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Chaosblitz|r] |cRXP_WARN_um zu trainieren|r |T236291:0|t[Chaosblitz]  << Warlock
    .train 401759 >>Benutzt |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: Ausgebrannt|r] |cRXP_WARN_um zu trainieren|r |T236207:0|t[Ausgebrannt] << Mage
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name See des Feuers - 25 (Vorgebirge des Hügellands)
#title See des Feuers

step
    #completewith next
    .zone Hillsbrad Foothills >>Reist nach Vorgebirge des Hügellands (z.B. von Unterstadt durch Silberwald) << Horde
    .zone Hillsbrad Foothills >>Reist nach Vorgebirge des Hügellands (z.B. nördlich von Sumpfland) << Alliance
step
    .train 403937,1
    #loop
    .goto Hillsbrad Foothills,58.2,19.6,40,0
    .goto Hillsbrad Foothills,57.5,36.4,50,0
    .goto Hillsbrad Foothills,51.1,46.4,40,0
    >>Sucht nach |cRXP_FRIENDLY_Zixil|r. Er patrouilliert zwischen Tarrens Mühle und Süderstade. Kauft |T133709:0|t[Sprengladungen] von ihm |cRXP_WARN_für 1 Gold|r
    .collect 211487,1
    .target Zixil
step
    .train 403937,1
    >>Benutzt das |T133709:0|t[Sprengladungen] um das |cRXP_PICK_Geröll|r zu zerstören. Sammelt Beute von der |cRXP_PICK_Lagerkiste|r auf dem Boden für |T134419:0|t[|cRXP_FRIENDLY_Rune of Fires Nachstrom|r]
    .goto Hillsbrad Foothills,79.7,41.0
    .collect 211476,1
step
    .use 211476
    .itemcount 211476,1
    .train 403937 >>|cRXP_WARN_Benutzt das|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Fires Nachstrom|r] |cRXP_WARN_um zu erlernen|r |T135826:0|t[See des Feuers]
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Armschienen
#name Verbrennen - 22 (Rotkammgebirge)
#title Verbrennen

step
    #completewith next
    .zone Redridge Mountains >>Reist zum Rotkammgebirge
step
    .goto Redridge Mountains,74.0,82.2,60,0
    .goto Redridge Mountains,77.6,86.6,50,0
    .goto Redridge Mountains,76.8,82.2
    >>Tötet |cRXP_ENEMY_Incinerator Gar'im|r |cRXP_WARN_(lvl 23 elite)|r. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune of Verbrennen|r]
    .collect 211477,1
    .unitscan Incinerator Gar'im
    .train 416015,1
step
    .use 211477
    .itemcount 211477,1
    .train 416015 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Verbrennens|r], |cRXP_WARN_um|r |T135789:0|t[Verbrennen] zu trainieren
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Meisterkanalisierer - 12 (Das Brachland)
#title Meisterkanalisierer

step
    #completewith next
    .zone The Barrens >>Reist nach Das Brachland
step
    .train 403932,1
    >>|cRXP_WARN_Geht zum Altar der Dornen|r. Wirkt |T136126:0|t[Aderlass] bis ihr fast sterbt. Dann wirkt |T136168:0|t[Lebenslinie] auf euren Begleiter um zu sterben und |T134419:0|t[|cRXP_FRIENDLY_Rune des Kanalisierens|r] zu bekommen
    *|cRXP_WARN_Ihr werdet sofort wiederbelebt|r
    .goto The Barrens,58.2,26.7
    .cast 1454
    .cast 735
    .collect 208750,1
step
    .use 208750
    .itemcount 208750,1
    .train 403932 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Kanalisierens|r] |cRXP_WARN_um |r |T136168:0|t[Meisterkanalisierer] zu trainieren
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Meisterkanalisierer - 14 (Silberwald)
#title Meisterkanalisierer

step
    #completewith next
    .zone Silverpine Forest >>Reist zum Silberwald
step
    .train 403932,1
    >>Betretet die Höhle am Wegpunkt. Benutzt |T136225:0|t[Fluch der Tollkühnheit] auf |cRXP_ENEMY_Sadistischer Unhold|r. Tötet es und plündert es für |T134419:0|t[|cRXP_FRIENDLY_Rune of Kanalisierung|r]
    .goto Silverpine Forest,56.6,46.4
    .collect 208750,1
    .mob Sadistic Fiend
step
    .use 208750
    .itemcount 208750,1
    .train 403932 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Kanalisierens|r] |cRXP_WARN_um |r |T136168:0|t[Meisterkanalisierer] zu trainieren
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Schattenblitzsalve - 16 (Das Brachland)
#title Schattenblitzsalve

step
    #completewith next
    .zone The Barrens >>Reist nach Das Brachland
step
    .train 403936,1
    >>Benutzt |T136163:0|t[Seelendieb] auf |cRXP_ENEMY_Vorsteher Lugwizz|r (|cRXP_ENEMY_Aufseher Vorarbeiter Glibby|r funktioniert auch) bis ihr |T134105:0|t[Seele of Gier] bekommt
    *|cRXP_WARN_Ihr braucht das Tag nicht|r
    .goto The Barrens,56.6,8.2
    .collect 208743,1
    .mob Supervisor Lugwizzle
    .mob Overseer Glibby
step
    .train 403936,1
    >>Zwickt auf |cRXP_PICK_Hungrig Götze|r um |T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowbolts|r] zu bekommen
    .goto The Barrens,57.06,9.65
    .collect 208744,1
step
    .use 208744
    .itemcount 208744,1
    .train 403936 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowbolts|r] |cRXP_WARN_zum Trainieren von|r |T136195:0|t[Schattenblitzsalve]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Schattenblitzsalve - 18 (Silberwald)
#title Schattenblitzsalve

step
    #completewith next
    .zone Silverpine Forest >>Reist zum Silberwald
step
    .goto Silverpine Forest,60.38,74.37,40,0
    .goto Silverpine Forest,60.29,72.21,40,0
    .goto Silverpine Forest,59.38,70.54
    .train 403936,1
    >>Tötet die |cRXP_ENEMY_Akkordarbeiter von Rabenklaue|r und die |cRXP_ENEMY_Ravenclaw-Wächter|r |cRXP_WARN_in der Höhle|r. Plündert sie für die |T236295:0|t[Gequälte Seele]
    .collect 210713,1
    .mob Ravenclaw Drudger
    .mob Ravenclaw Guardian
step
    .train 403936,1
    >>Benutzt |T136126:0|t[Aderlass] einmal und danach die |T236295:0|t[Gequälte Seele]. Tötet den |cRXP_ENEMY_Gequälten Geist|r. Plündert ihn für die |T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowbolts|r]
    .collect 208744,1
    .use 210713
    .cast 1455
    .mob Tortured Soul
step
    .use 208744
    .itemcount 208744,1
    .train 403936 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowbolts|r] |cRXP_WARN_zum Trainieren von|r |T136195:0|t[Schattenblitzsalve]
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Metamorphose - 25 (Azeroth)
#title Metamorphose

step
    #completewith WarlockRuneMetamorphosisA
    +|cRXP_WARN_Es wird empfohlen, alle diese Schritte in einer Gruppe zu absolvieren. Einige Schritte können allein absolviert werden.|r
step
    #completewith next
    .zone Redridge Mountains >>Reist zum Rotkammgebirge (z.B. nehmt das Boot von Ratschet nach Beutebucht, dann lauft nach Norden) << Horde
    .zone Redridge Mountains >>Reist zum Rotkammgebirge << Alliance
step
    #label WarlockRuneMetamorphosisA
    .train 403938,1
    >>Plündert die |cRXP_PICK_Dämonische Reliquiar|r an der Spitze des Turms, um das |T134337:0|t[Kugel of Des] zu bekommen
    *|cRXP_WARN_Seid vorsichtig, da es von einem Elite bewacht wird. Plündert die Truhe, während Euer Leerwandler die Mobs tankt|r
    .collect 210765,1
    .goto Redridge Mountains,80.2,49.5
step << Horde
    .train 403938,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Doan Karhan|r
    *|cRXP_WARN_Überspringt diesen Schritt, wenn ihr durch Das Brachland reist|r
    .goto The Barrens,49.2,57.2
    .accept 1740 >>Akzeptiert die Quest Die Kugel von Soran'ruk
    .target Doan Karhan
step
    #completewith next
    .zone Darkshore >>Reist zur Dunkelküste (nehmt das Boot von Hafen von Menethil) << Alliance
    .zone Darkshore >>Reist zur Dunkelküste (walk through Eschental) << Horde
step
    .train 403938,1
    >>Plündert die |cRXP_PICK_Bough of Altek|r an der Spitze des Turms um das |T135153:0|t[Bough of Altek] zu bekommen
    *|cRXP_WARN_Seid vorsichtig. Eine Möglichkeit wäre, in der Nähe zu sterben, hinter das Bücherregal zu springen, zu rezzen, (vielleicht den ersten Zauberer, der euch angreift, in Furcht zu versetzen) und es zu plündern.|r
    .collect 210763,1
    .goto Darkshore,56.3,26.5
step
    #completewith next
    .zone The Barrens >>Reist nach Das Brachland
step
    .train 403938,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Doan Karhan|r
    .goto The Barrens,49.2,57.2
    .accept 1740 >>Akzeptiert die Quest Die Kugel von Soran'ruk
    .target Doan Karhan
step
    #completewith next
    .zone Ashenvale >>Reist nach Eschental
step
    .train 403938,1
    >>Tötet die |cRXP_ENEMY_Zwielicht Akolythen|r nahe beim BFD-Raideingang. Plündert sie für die |cRXP_LOOT_Soran'ruk Fragmente|r
    *|cRXP_WARN_Die |cRXP_WARN_Zwielicht Akolythen|r im Raid vor dem 5. Boss droppen sie auch ab.|r
    .goto Ashenvale,14.5,14.3
    .complete 1740,1 --3/3 Soran'ruk Fragment
    .mob Twilight Acolyte
step
    .train 403938,1
    >>Tötet die |cRXP_ENEMY_Schattenfang Darksouls|r im |cRXP_WARN_Schattenfang-Verlies (geht nach rechts nach |cRXP_ENEMY_Baron Silverlaine|r)|r. Plündert sie für das |cRXP_LOOT_Large Soran'ruk Bruchstück|r
    .complete 1740,2 --1/1 Large Soran'ruk Fragment
    .mob Shadowfang Darksoul
step
    #completewith next
    .zone The Barrens >>Reist nach Das Brachland
step
    .train 403938,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Doan Karhan|r
    .goto The Barrens,49.2,57.2
    .turnin 1740 >>Gebt die Quest Die Kugel von Soran'ruk ab
    .accept 78680 >>Akzeptiert die Quest Gerüchten zufolge
    .turnin 78680 >>Gebt die Quest Gerüchten zufolge ab
    .accept 78681 >>Akzeptiert die Quest Die Beschwörung
    .target Doan Karhan
step
    #completewith next
    .zone Ashenvale >>Reist nach Eschental
step
    .train 403938,1
    .goto Ashenvale,83.07,70.56,40,0
    .goto Ashenvale,84.05,76.96,30,0
    .goto Ashenvale,81.29,78.14,30,0
    .goto Ashenvale,79.05,81.11,30,0
    .goto Ashenvale,84.2,76.4
    >>Tötet |cRXP_ENEMY_Dämonen|r in der Gegend. Plündert sie für |cRXP_LOOT_Blood of the Legion|r
    .complete 78681,1 --10/10 Blood of the Legion
    .mob Mannoroc Lasher
    .mob Felguard
    .mob Searing Infernal
    .mob Legion Hound
step
    #completewith WarlockRuneMetamorphosisB
    +|cRXP_WARN_Wenn ihr in einer Gruppe von Hexenmeistern seid, dann muss der erste Hexenmeister (derjenige mit einem Debuff), der die Quest einreicht, den Todesstoß gegen |cRXP_ENEMY_Sengende Höllenbestie|r geben, während er in der Rune steht|r
step
    .train 403938,1
    >>Interagiert mit |cRXP_PICK_Dark Ritual Stein|r
    .goto Ashenvale,78.92,80.29
    .turnin 78681 >>Gebt die Quest Die Beschwörung ab
    .target Dark Ritual Stone
step
    .train 403938,1
    #label WarlockRuneMetamorphosisB
    >>Tötet die spawnenden |cRXP_ENEMY_Dämonen|r. |cRXP_WARN_Tötet |cRXP_ENEMY_Sengende Höllenbestie|r WÄHREND IHR KANALISIERT|r |T136163:0|t[Seelendieb] |cRXP_WARN_und WÄHREND IHR IN DER RUNE STEHT|r
    .goto Ashenvale,79.00,80.38
    .accept 78684 >>Akzeptiert die Quest Geheimnisvoller Reisender
    .mob Searing Infernal
step
    .train 403938,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Doan Karhan|r um die |T134419:0|t[|cRXP_FRIENDLY_Rune der Metamorphose|r] zu erhalten
    .goto The Barrens,49.2,57.2
    .turnin 78684 >>Gebt die Quest Geheimnisvoller Reisender ab
    .turnin 78702 >>Gebt die Quest Raszel Ander ab
    .collect 210980,1
    .target Doan Karhan
step
    .use 210980
    .itemcount 210980,1
    .train 403938 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Metamorphose|r] |cRXP_WARN_um zu trainieren|r |T237558:0|t[Metamorphose]
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Gürtel
#name Grimoire der Synergie - 40 (Azeroth)
#title Grimoire der Synergie

step
    #optional
    #completewith next
    .train 426445,1
    +|cRXP_WARN_Ihr müsst mindestens Stufe 30 sein, bevor ihr das|r |T133738:0|t[Grimoire der Synergie] |cRXP_WARN_Runen erwerben könnt|r
    .xp >30,1
step
    .train 403938 >> |cRXP_WARN_Ihr müsst zuerst die Rune für|r |T237558:0|t[Metamorphose] |cRXP_WARN_erwerben, bevor ihr das|r |T133738:0|t[Grimoire der Synergie] |cRXP_WARN_Runen erwerben könnt|r
step
    #optional
    .train 426445,1
    +|cRXP_WARN_Ihr müsst mindestens Stufe 30 sein, bevor ihr das|r |T133738:0|t[Grimoire der Synergie] |cRXP_WARN_Runen erwerben könnt|r
    .xp >30,1
step
    .train 426445,1
    #completewith next
    .zone The Barrens >>Reist nach Das Brachland
step
    .train 426445,1
    .goto The Barrens,49.271,57.239
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Raszel Ander|r
    >>|cRXP_WARN_Ihr müsst in|r |T237558:0|t[Metamorphose] |cRXP_WARN_sein, um|r |cRXP_FRIENDLY_Raszel Ander|r zu sehen
    .accept 78994 >> Akzeptiert die Quest Eine solide Grundlage
    .target Raszel Ander
step << Alliance
    .train 426445,1
    .isOnQuest 78994
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Wiley|r
    .home >> Setzt euren Ruhestein in Ratschet
    .target Innkeeper Wiley
step << Horde
    .train 426445,1
    .isOnQuest 78994
    .goto The Barrens,45.58,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Byula|r
    .home >> Setzt euren Ruhestein ins Camp Taurajo
    .target Innkeeper Byula
step << Alliance
    .train 426445,1
    .isOnQuest 78994
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bragok|r
    .fly Azshara >> Flieg nach Azshara
    .target Bragok
step << Horde
    .train 426445,1
    .isOnQuest 78994
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Omusa|r
    .fly Splintertree Post >>Fliege nach Splitterholzposten
    .target Omusa Thunderhorn
step
    .train 426445,1
    .train 126,3 -- skips step if they don't have eye of killrog trained
    .isOnQuest 78994
    .goto Ashenvale,88.82,41.52
    >>|cRXP_WARN_Reist zum Pfeil-Ort in Eschental|r
    .cast 126 >> |cRXP_WARN_Wirkt|r |T136155:0|t[Auge von Kilrogg] |cRXP_WARN_und geht ins Schattengrün damit (das Gebiet mit alle den Stufe 60+ Elites) und sucht nach einem |cRXP_PICK_Bough of Schatten|r Baum. Es gibt mehrere Spawns im ganzen Schattengrün, und idealerweise möchtet ihr einen finden, der nicht viele Elites in der Nähe hat, damit ihr ihn plündern könnt|r
step
    .train 426445,1
    .isOnQuest 78994
    #completewith next
    .goto Ashenvale,88.82,41.52
    .cast 440505 >> |cRXP_WARN_Benutzt die|r |T236874:0|t[Unsichtbarkeitstrank] |cRXP_WARN_und sucht nach einem der |cRXP_PICK_Bough of Schatten|r Bäume im ganzen Schattengrün. Das Gebiet hat viele patrouillierende Stufe 60+ Elites|r
    .use 217693
step
    .train 426445,1
    .isOnQuest 78994
    .goto Ashenvale,90.9,38.6,20,0
    .goto Ashenvale,91,37,0
    >>|cRXP_WARN_Bevor ihr die |cRXP_PICK_Bough of Schatten|r plündert, zieht alle eure Ausrüstung aus und wirkt|r |T136121:0|t[Schattenzauberschutz]|cRXP_WARN_. Ihr werdet gleich einen sehr hohen schadenden Debuff erhalten, der prozentuale Schäden verursacht. Seid bereit, euren Ruhestein zu benutzen, nachdem ihr plündert|r
    >>Plündert einen der |cRXP_PICK_Bough of Schatten|r im ganzen Schattengrün
    .complete 78994,1
step
    #completewith next
    .train 426445,1
    .isOnQuest 78994
    .hs >> Ruhestein nach Ratschet << Alliance
    .hs >> Ruhestein nach Camp Taurajo << Horde
    .zoneskip The Barrens
step
    .train 426445,1
    .goto The Barrens,49.271,57.239
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Raszel Ander|r
    >>|cRXP_WARN_Ihr müsst in|r |T237558:0|t[Metamorphose] |cRXP_WARN_sein, um|r |cRXP_FRIENDLY_Raszel Ander|r zu sehen
    .turnin 78994 >> Gebt die Quest Eine solide Grundlage ab
    .accept 78914 >> Akzeptiert die Quest Seelengefäß
    .target Raszel Ander
step
    .train 426445,1
    >>|cRXP_WARN_Beschafft die folgenden Materialien und lasst einen Ingenieur ein|r |T133254:0|t[Seelengefäß] |cRXP_WARN_für euch herstellen. Beachtet, dass|r |T134133:0|t[Schwarz Vitriol] |cRXP_WARN_und|r |T134074:0|t[Shadowgem] |cRXP_WARN_im Auktionshaus gekauft werden können und die|r |T134337:0|t[Dämonisch Figurine] |cRXP_WARN_von einem|r |cRXP_FRIENDLY_Reagenz-Verkäufer|r
    .collect 9262,1,78914,1,1 -- Black Vitriol
    .collect 1210,4,78914,1,1 -- Shadowgem
    .collect 16583,1,78914,1,1 -- Demonic Figurine
    >>|cRXP_WARN_Alternativ könnt ihr ein|r |T133254:0|t[Seelengefäß] |cRXP_WARN_direkt aus dem Auktionshaus kaufen|r
    .collect 211427,1,78914,1
step
    #completewith next
    .train 426445,1
    .zone Desolace >> Reist nach Desolace
step
    .train 426445,1
    .goto Desolace,51.171,82.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Raszel Ander|r
    >>|cRXP_WARN_Ihr müsst in|r |T237558:0|t[Metamorphose] |cRXP_WARN_sein, um|r |cRXP_FRIENDLY_Raszel Ander|r zu sehen
    .turnin 78914 >> Gebt die Quest Seelengefäß ab
    .accept 79298 >> Akzeptiert die Quest Das Schicksal herausfordern
    .target Raszel Ander
step
    .train 426445,1
    .goto Desolace,51.171,82.425
    .gossip 215850,1 >> Sprecht mit |cRXP_FRIENDLY_Raszel Ander|r um das Ritual zu beginnen
    .timer 14,Tempting Schicksal RP
    .skipgossip
step
    .train 426445,1
    .goto Desolace,51.195,82.465
    >>Klickt auf |cRXP_PICK_Reconstructed Stab of Des'Altek|r um |cRXP_ENEMY_Des'Altek|r zu beschwören
    >>|cRXP_WARN_Stellt sicher, dass ihr volles LP mit|r |T136121:0|t[Schattenzauberschutz] |cRXP_WARN_aktiv habt, da ihr während des Kanalisierens und während des Kampfes Schaden erhalten werdet|r
    >>Tötet |cRXP_ENEMY_Des'Altek|r
    .complete 79298,1
    .mob Des'Altek
step
    .train 426445,1
    .goto Desolace,51.171,82.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Raszel Ander|r
    >>|cRXP_WARN_Ihr müsst in|r |T237558:0|t[Metamorphose] |cRXP_WARN_sein, um|r |cRXP_FRIENDLY_Raszel Ander|r zu sehen
    .turnin 79298 >> Gebt die Quest Das Schicksal herausfordern ab
    .target Raszel Ander
step
    .train 426445 >> |cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Synergie|r] |cRXP_WARN_um zu trainieren|r |T133738:0|t[Grimoire der Synergie]
    .use 213090
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Meisterkanalisierer - 10 (Loch Modan)
#title Meisterkanalisierer

step << Warlock
    .line Loch Modan,22.87,70.89,24.69,68.20,28.02,65.41,29.47,59.92,31.56,56.66,32.36,50.09,34.94,47.10,32.36,50.09,31.36,47.60,31.54,44.72,32.29,42.34,32.25,41.14,31.08,38.57,30.04,31.45,27.96,25.37,26.73,23.07,26.04,19.16,25.95,15.13,25.53,11.66
    .goto Loch Modan,22.87,70.89,50,0
    .goto Loch Modan,24.69,68.20,50,0
    .goto Loch Modan,28.02,65.41,50,0
    .goto Loch Modan,29.47,59.92,50,0
    .goto Loch Modan,31.56,56.66,50,0
    .goto Loch Modan,32.36,50.09,50,0
    .goto Loch Modan,34.94,47.10,50,0
    .goto Loch Modan,32.36,50.09,50,0
    .goto Loch Modan,31.36,47.60,50,0
    .goto Loch Modan,31.54,44.72,50,0
    .goto Loch Modan,32.29,42.34,50,0
    .goto Loch Modan,32.25,41.14,50,0
    .goto Loch Modan,31.08,38.57,50,0
    .goto Loch Modan,30.04,31.45,50,0
    .goto Loch Modan,27.96,25.37,50,0
    .goto Loch Modan,26.73,23.07,50,0
    .goto Loch Modan,26.04,19.16,50,0
    .goto Loch Modan,25.95,15.13,50,0
    .goto Loch Modan,25.53,11.66
    >>|cRXP_WARN_Sucht nach |cRXP_FRIENDLY_Greishan Eisenherd|r, der auf der Straße durch Loch Modan patrouliert. Sein Patrouillenweg ist auf eurer Karte markiert|r
    >>|cRXP_BUY_Kauft einen|r |T237359:0|t[Böswilliger Kuchen] |cRXP_BUY_von ihm|r
    .collect 208833,1
    .unitscan Greishan Ironstove
    .train 403932,1
step << Warlock
    .use 208833 >>|cRXP_WARN_Benutzt die|r |T237359:0|t[Böswilliger Kuchen] |cRXP_WARN_um sie zu essen. Sobald der|r |T132108:0|t[Höllische Verdauungsstörung] |cRXP_WARN_Debuff abfällt, werdet ihr das|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Kanalisierung|r] erhalten
    .collect 208750,1 -- Rune of Channeling (1)
    .train 403932,1
step << Warlock
    .train 403932 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Kanalisierens|r] |cRXP_WARN_um |r |T136168:0|t[Meisterkanalisierer] zu trainieren
    .use 208750
    .itemcount 208750,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Meisterkanalisierer - 15 (Dunkelküste)
#title Meisterkanalisierer

step << Warlock
    .goto Darkshore,55.27,27.74,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,57.54,25.99,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,55.27,27.74
    >>Tötet |cRXP_ENEMY_Dark Strand Fanatics|r. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune of Kanalisierung|r]
    .collect 208750,1 -- Rune of Channeling (1)
    .mob Dark Strand Fanatic
    .train 403932,1
step << Warlock
    .train 403932 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Kanalisierens|r] |cRXP_WARN_um |r |T136168:0|t[Meisterkanalisierer] zu trainieren
    .use 208750
    .itemcount 208750,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Verschleierung
#name Seelenentzug - 10 (Dun Morogh)
#title Seelenentzug

step << Warlock
    #completewith next
    >>|cRXP_WARN_Wirkt|r |T136163:0|t[Seelendieb] |cRXP_WARN_auf einem beliebigen Getier, um|r |T134095:0|t[|cRXP_LOOT_Reiner Seelensplitter|r]
    .collect 205020,1 -- Pure Soul Shard (1)
    .train 403920,1
step << Warlock
    .goto Dun Morogh,77.894,62.236
    >>Tötet |cRXP_ENEMY_Hauptmann Beld|r unten drin im Gebäude. Plündert ihn für einen |T134085:0|t[|cRXP_LOOT_Tainted Seelensplitter|r]
    >>|cRXP_WARN_Stellt sicher, dass er stirbt, während ihr auch|r |T136163:0|t[Seelendieb] |cRXP_WARN_auf ihm habt|r
    .collect 205019,1 -- Tainted Soul Shard (1)
    .mob Captain Beld
    .train 403920,1
step << Warlock
    >>|cRXP_WARN_Wirkt|r |T136163:0|t[Seelendieb] |cRXP_WARN_auf einem beliebigen Getier, um|r |T134095:0|t[|cRXP_LOOT_Reiner Seelensplitter|r]
    .collect 205020,1 -- Pure Soul Shard (1)
    .train 403920,1
step << Warlock
    .goto Dun Morogh,47.351,53.550
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gaklik Leerendreh <Seelenhändler>|r um das |T134419:0|t[|cRXP_FRIENDLY_Rune of Seelenentzug|r] zu erhalten
    .collect 205022,1 -- Rune of Soul Siphon (1)
    .skipgossip
    .itemcount 205020,1
    .itemcount 205019,1
    .target Gaklik Voidtwist
step << Warlock
    .train 403920 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Seelenentzug|r] |cRXP_WARN_um zu trainieren|r |T136169:0|t[Seelenentzug]
    .use 208750
    .itemcount 208750,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Seelenentzug - 10 (Wald von Elwynn)
#title Seelenentzug

step << Warlock
    #completewith next
    >>|cRXP_WARN_Wirkt|r |T136163:0|t[Seelendieb] |cRXP_WARN_auf einem beliebigen Getier, um|r |T134095:0|t[|cRXP_LOOT_Reiner Seelensplitter|r]
    .collect 205020,1 -- Pure Soul Shard (1)
    .train 403920,1
step << Warlock
    .goto Elwynn Forest,27.0,86.7,80,0
    .goto Elwynn Forest,26.1,89.9,80,0
    .goto Elwynn Forest,25.2,92.7,80,0
    .goto Elwynn Forest,27.0,93.9,80,0
    .goto Elwynn Forest,27.0,86.7,80,0
    .goto Elwynn Forest,26.1,89.9,80,0
    .goto Elwynn Forest,25.2,92.7,80,0
    .goto Elwynn Forest,27.0,93.9,80,0
    .goto Elwynn Forest,27.0,86.7,80,0
    .goto Elwynn Forest,26.1,89.9,80,0
    .goto Elwynn Forest,25.2,92.7,80,0
    .goto Elwynn Forest,27.0,93.9,80,0
    >>Tötet |cRXP_ENEMY_Hogger|r. Plündert sie für |T134085:0|t[|cRXP_LOOT_Tainted Seelensplitter|r]
    >>|cRXP_WARN_Stellt sicher, dass er stirbt, während ihr auch|r |T136163:0|t[Seelendieb] |cRXP_WARN_auf ihm habt|r
    .collect 205019,1 -- Tainted Soul Shard (1)
    .mob Hogger
    .train 403920,1
step << Warlock
    >>|cRXP_WARN_Wirkt|r |T136163:0|t[Seelendieb] |cRXP_WARN_auf einem beliebigen Getier, um|r |T134095:0|t[|cRXP_LOOT_Reiner Seelensplitter|r]
    .collect 205020,1 -- Pure Soul Shard (1)
    .train 403920,1
step << Warlock
    .goto Elwynn Forest,44.093,66.315
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Damien Kane <Seelenhändler>|r im Keller der Taverne, um |T134419:0|t[|cRXP_FRIENDLY_Rune of Seelenentzug|r] zu erhalten
    .collect 205022,1 -- Rune of Soul Siphon (1)
    .skipgossip
    .itemcount 205020,1
    .itemcount 205019,1
    .target Damien Kane
step << Warlock
    .train 403920 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Seelenentzug|r] |cRXP_WARN_um zu trainieren|r |T136169:0|t[Seelenentzug]
    .use 208750
    .itemcount 208750,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Dämonische Taktiken - 1 (Wald von Elwynn)
#title Dämonische Taktiken

step << Warlock
    .goto Elwynn Forest,56.743,57.650
    >>Plündert den |cRXP_FRIENDLY_Tot Akolyth|r für den |T133625:0|t[|cRXP_LOOT_Knappsack des Akolythen|r]
    .collect 205364,1 -- Acolyte's Knapsack (1)
    .skipgossip
    .target Dead Acolyte
    .train 416009,1
step << Warlock
    .use 205364 >>|cRXP_WARN_Benutzt|r |T133625:0|t[|cRXP_LOOT_Knappsack des Akolythen|r] |cRXP_WARN_um|r |T133447:0|t[|cRXP_LOOT_Unidentified Artefakt|r]
    .collect 205181,1 -- Unidentified Artifact (1)
    .train 416009,1
step << Warlock
    .goto Elwynn Forest,44.390,66.242
    .gossipoption 109291 >>Sprecht mit |cRXP_FRIENDLY_Maximillian Raab|r im Keller der Taverne Goldhain, um das |T133447:0|t[|cRXP_LOOT_Machtloses Artefakt|r] zu erhalten
    .collect 205182,1 -- Powerless Artifact (1)
    .skipgossip
    .target Maximillian Crowe
    .train 416009,1
step << Warlock
    .goto Elwynn Forest,56.743,57.650
    .cast 408755 >>|cRXP_WARN_Benutzt|r |T133447:0|t[|cRXP_LOOT_Machtloses Artefakt|r] |cRXP_WARN_an der Stelle des |cRXP_FRIENDLY_Toten Akolythen|r, um den|r |T136008:0|t[Blutopfer] |cRXP_WARN_Schwächungszauber zu erhalten|r
    .use 205182
    .aura 408755
    .target Dead Acolyte
    .train 416009,1
step << Warlock
    #completewith next
    .zone Stormwind City >> Lauf nach Sturmwind
    .train 416009,1
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Geh ins geschlachtete Lamm und dann in den Keller
    .train 416009,1
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gakin der Dunkelbinder|r, um den |T134419:0|t[|cRXP_FRIENDLY_Rune der Taktiken|r] zu erhalten
    .collect 205215,1 -- Rune of Tactics (1)
    .skipgossip
    .target Gakin the Darkbinder
    .train 416009,1
step << Warlock
    .train 416009 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Taktiken|r] |cRXP_WARN_um zu trainieren|r |T136150:0|t[Dämonische Taktiken]
    .use 205215
    .itemcount 205215,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Dämonische Anmut - 10 (Wald von Elwynn)
#title Dämonische Anmut

step << Warlock
    .goto Elwynn Forest,61.6,53.8
    >>Tötet |cRXP_ENEMY_Kobold Geomancers|r. Plündert sie für |T133733:0|t[|cRXP_LOOT_Ominous Foliant|r]
    .collect 204905,1 -- Ominous Tome (1)
    .mob Kobold Geomancer
    .train 425477,1
step << Warlock
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>Tötet |cRXP_ENEMY_Riverpaw Schlaffi|r und |cRXP_ENEMY_Riverpaw Outrunners|r. Plündert sie für |cRXP_LOOT_Gnoll Blutiges|r
    .collect 204906,1 -- Gnoll Blood (1)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .train 425477,1
step << Warlock
    .goto Elwynn Forest,35.6,61.0,60,0
    .goto Elwynn Forest,57.8,59.4
    >>Tötet |cRXP_ENEMY_Mangy Wolves|r, |cRXP_ENEMY_Gray Forest Wolves|r und |cRXP_ENEMY_Prowlers|r. Plündert sie für |cRXP_LOOT_Wolf Kiefer|r
    .collect 204907,1 -- Wolf Jawbone (1)
    .mob Mangy Wolf
    .mob Gray Forest Wolf
    .mob Prowler
    .train 425477,1
step << Warlock
    #completewith next
    .zone Stormwind City >> Lauf nach Sturmwind
    .train 425477,1
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Geh ins geschlachtete Lamm und dann in den Keller
    .train 425477,1
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>|cRXP_WARN_Reist zur untersten Ebene des Geschlachteten Lammes|r
    .cast 418065 >> |cRXP_WARN_Benutzt|r |T133733:0|t[|cRXP_LOOT_Ominöser Foliant|r] |cRXP_WARN_um|r Soboz|cRXP_ENEMY_ herbeizurufen|r
    .use 204905
    .train 425477,1
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 204905 >> Tötet |cRXP_ENEMY_Soboz|r. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune of Barmherzigkeit|r]
    .collect 204912,1 -- Rune of Grace (1)
    .mob Soboz
    .train 425477,1
step << Warlock
    .train 425477 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Barmherzigkeit|r] |cRXP_WARN_um zu trainieren|r |T236293:0|t[Dämonische Anmut]
    .use 204912
    .itemcount 204912,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Dämonische Anmut - 10 (Dun Morogh)
#title Dämonische Anmut

step << Warlock
    .goto Dun Morogh,22.8,50.6
    >>Tötet |cRXP_ENEMY_Frostmane Shadowcasters|r. Plündert sie für |T133733:0|t[|cRXP_LOOT_Ominous Foliant|r]
    .collect 208139,1 -- Ominous Tome (1)
    .mob Frostmane Shadowcaster
    .train 425477,1
step << Warlock
#loop
	.line Dun Morogh,42.57,54.80,41.89,54.51,42.13,52.68,42.46,51.96,41.91,51.43,42.46,51.96,42.13,52.68,42.57,54.80
	.goto Dun Morogh,42.57,54.80,10,0
	.goto Dun Morogh,41.89,54.51,10,0
	.goto Dun Morogh,42.13,52.68,10,0
	.goto Dun Morogh,42.46,51.96,10,0
	.goto Dun Morogh,41.91,51.43,10,0
	.goto Dun Morogh,42.46,51.96,10,0
	.goto Dun Morogh,42.13,52.68,10,0
	.goto Dun Morogh,42.57,54.80,10,0
    >>Tötet |cRXP_ENEMY_Young Wendigos|r und |cRXP_ENEMY_Wendigos|r. Plündert sie für |cRXP_LOOT_Wendigo Blutiges|r
    .collect 208140,1 -- Wendigo Blood (1)
    .mob Young Wendigo
    .mob Wendigo
    .train 425477,1
step << Warlock
    .goto Dun Morogh,45.6,43.2,60,0
    .goto Dun Morogh,34.6,41.8
    >>Tötet jeden |cRXP_ENEMY_Wolf|r in Dun Morogh. Plündert sie für ihre |cRXP_LOOT_Wolf Kiefer|r
    .collect 204907,1 -- Wolf Jawbone
    .mob Starving Winter Wolf
    .mob Winter Wolf
    .mob Snow Tracker Wolf
    .train 425477,1
step << Warlock
    .goto Dun Morogh,42.23,35.40
    .cast 418065 >> |cRXP_WARN_Benutzt|r |T133733:0|t[|cRXP_LOOT_Ominöser Foliant|r] |cRXP_WARN_um|r Soboz|cRXP_ENEMY_ herbeizurufen|r
    .use 208139
    .train 425477,1
step << Warlock
    .goto Dun Morogh,42.23,35.40
    .use 204905 >> Tötet |cRXP_ENEMY_Soboz|r. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune of Barmherzigkeit|r]
    .collect 204912,1 -- Rune of Grace (1)
    .mob Soboz
    .train 425477,1
step << Warlock
    .train 425477 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Barmherzigkeit|r] |cRXP_WARN_um zu trainieren|r |T236293:0|t[Dämonische Anmut]
    .use 204912
    .itemcount 204912,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Schattenblitzsalve - 16 (Dunkelküste)
#title Schattenblitzsalve

step << Warlock
    .goto Darkshore,56.8,27.6,60,0
    .goto Darkshore,57.6,26.0
    >>Tötet |cRXP_ENEMY_Delmanis der Verhasste|r. Plündert ihn für die |T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowbolts|r]
    .collect 208744,1 -- Rune of Shadowbolts (1)
    .unitscan Delmanis the Hated
    .train 403936,1
step << Warlock
    .train 403936 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowbolts|r] |cRXP_WARN_zum Trainieren von|r |T136195:0|t[Schattenblitzsalve]
    .use 208744
    .itemcount 208744,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Chaosschadenblitz - 8 (Dun Morogh)
#title Chaosblitz

step << Warlock
    .goto Dun Morogh,69.365,58.302
    >>Tötet die |cRXP_ENEMY_Frozen Trogg|r. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune of Chaosblitz|r]
    >>|cRXP_WARN_Hinweis: Um den Eisblock zu brechen, müsst ihr ihn mit mehreren Feuer-Zaubern in sehr schneller Abfolge angreifen|r
    >>|cRXP_WARN_Wirkt|r |T135817:0|t[Feuerbrand] |cRXP_WARN_und benutzt euren Wichtel, um es auch anzugreifen. Ihr benötigt die Hilfe eines anderen Hexenmeisters oder Magiers, um es zu brechen|r
    .collect 205228,1 -- Rune of Chaos Bolt (1)
    .mob Frozen Trogg
    .train 403925,1
step << Warlock
    .train 403925 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Chaosblitz|r] |cRXP_WARN_um zu trainieren|r |T236291:0|t[Chaosblitz]
    .use 208744
    .itemcount 208744,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Chaosschadenblitz - 8 (Wald von Elwynn)
#title Chaosblitz

step << Warlock
    .goto Elwynn Forest,77.010,51.897
    >>Tötet die |cRXP_ENEMY_Frozen Murloc|r. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune of Chaosblitz|r]
    >>|cRXP_WARN_Hinweis: Um den Eisblock zu brechen, müsst ihr ihn mit mehreren Feuer-Zaubern in sehr schneller Abfolge angreifen|r
    >>|cRXP_WARN_Wirkt|r |T135817:0|t[Feuerbrand] |cRXP_WARN_und benutzt euren Wichtel, um es auch anzugreifen. Ihr benötigt die Hilfe eines anderen Hexenmeisters oder Magiers, um es zu brechen|r
    .collect 205228,1 -- Rune of Chaos Bolt (1)
    .mob Frozen Murloc
    .train 403925,1
step << Warlock
    .train 403925 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Chaosblitz|r] |cRXP_WARN_um zu trainieren|r |T236291:0|t[Chaosblitz]
    .use 208744
    .itemcount 208744,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Gürtel
#name Anrufung - 35 (Arathihochland)
#title Anrufung

-- Invocation

step
    .train 426443,1
    #completewith SyndicateConjuror
    +|cRXP_WARN_Es wird empfohlen, zusätzliche Gruppenmitglieder zu finden, um|r |T134419:0|t[|cRXP_LOOT_Rune der Anrufung|r] |cRXP_WARN_zu erwerben, da dies Elites in Burg Stromgarde zu töten erfordert|r
step
    .train 426443,1
    .zone Arathi Highlands >> Reist zum Arathihochland
step
    .train 426443,1
    #completewith next
    .subzone 324 >> Reist nach Burg Stromgarde
step
    #label SyndicateConjuror
    .train 426443,1
    #loop
    .goto Arathi Highlands,26.04,62.80,40,0
    .goto Arathi Highlands,29.47,64.14,40,0
    .goto Arathi Highlands,29.06,60.96,40,0
    >>Tötet |cRXP_ENEMY_Syndicate Conjurors|r. Plündert sie für |T348282:0|t[|cRXP_LOOT_Conjuror's Pendants|r]
    >>Tötet einen |cRXP_ENEMY_Leerwandlerdiener|r, während ihr |T136163:0|t[Seelendieb] auf ihn channelt, um eine |T132885:0|t[|cRXP_LOOT_Seele der Leere|r] zu erhalten
    .collect 213573,10
    .collect 213572,1
    .mob Syndicate Conjuror
    .mob Voidwalker Minion
step
    #completewith next
    .train 426443,1
    .goto Arathi Highlands,29.292,62.283,10 >> |cRXP_WARN_Betretet das große Haus auf der unteren Ebene von Burg Stromgarde und geht zum 2. Stock hinauf|r
step
    #completewith next
    .train 426443,1
    .goto Arathi Highlands,29.077,63.079
    .cast 434994 >> |cRXP_WARN_Benutzt|r |T348282:0|t[|cRXP_LOOT_Amulett des Herbeizauberers|r] |cRXP_WARN_an der Treppe neben dem schwebenden|r Leere Prisma|cRXP_PICK_ |rum einen Level-36 Elite |cRXP_WARN_Leerensucher|cRXP_ENEMY_ zu beschwören|r
    .use 213573
step
    .train 426443,1
    .goto Arathi Highlands,29.077,63.079
    >>Tötet die |cRXP_ENEMY_Void Seeker|r. Plündert sie für |T134419:0|t[|cRXP_LOOT_Rune of Anrufung|r]
    .collect 213098,1
    .mob Void Seeker
step
    .train 426443 >> Benutzt|cRXP_WARN_ |T134419:0|t[|rRune der Anrufung|cRXP_LOOT_] |rum|cRXP_WARN_ |T136133:0|t[Anrufung] zu erlernen|r
    .use 213098
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Stiefel
#name Tanz des Tückischen - 35 (Desolace)
#title Tanz des Tückischen

-- Dance of the Wicked

step
    .train 416017,1
    #completewith next
    .zone Desolace >>Reist nach Desolace
step
    .train 416017,1
    .goto Desolace,74.5,13.4
    >>Klickt auf den |cRXP_ENEMY_Tollkühnen Hexenmeister|r, der am Boden liegt. Plündert ihn für |T236297:0|t[Schwefelschnitzerei]
    >>|cRXP_WARN_This is a rare Feind und there's a chance it may not be present|r
    .collect 213583,1
    .mob Reckless Warlock
    .unitscan Reckless Warlock
step
    .train 416017,1
    >>|cRXP_WARN_Wirkt|r |T135818:0|t[Höllenfeuer] |cRXP_WARN_um euch selbst unter 70% Gesundheit zu schädigen. Danach|r |T236297:0|t[Schwefelschnitzerei] |cRXP_WARN_wird sich verwandeln in|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Tücke|r]
    .collect 213102,1 --Rune of Wickedness
step
    .train 416017 >>|cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Tücke|r] |cRXP_WARN_um zu lernen|r |T236295:0|t[Tanz des Tückischen]
    .use 416017
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Stiefel
#name Tanz des Tückischen - 35 (Stranglethorn)
#title Tanz des Tückischen

-- Dance of the Wicked

step
    .train 416017,1
    #completewith next
    .zone Stranglethorn Vale>>Reist nach Stranglethorn
step
    .train 416017,1
    .goto Stranglethorn Vale,31.2,47.4
    >>Klickt auf den |cRXP_ENEMY_Tollkühnen Hexenmeister|r, der am Boden liegt. Plündert ihn für |T236297:0|t[Schwefelschnitzerei]
    >>|cRXP_WARN_This is a rare Feind und there's a chance it may not be present|r
    .collect 213583,1
    .unitscan Reckless Warlock
    .mob Reckless Warlock
step
    .train 416017,1
    >>|cRXP_WARN_Wirkt|r |T135818:0|t[Höllenfeuer] |cRXP_WARN_um euch selbst unter 70% Gesundheit zu schädigen. Danach|r |T236297:0|t[Schwefelschnitzerei] |cRXP_WARN_wird sich verwandeln in|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Tücke|r]
    .collect 213102,1 --Rune of Wickedness
step
    .train 416017 >>|cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Tücke|r] |cRXP_WARN_um zu lernen|r |T236295:0|t[Tanz des Tückischen]
    .use 416017
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Stiefel
#name Schattenfeuerschaden - 40 (Desolace)
#title Schattenfeuerschaden


-- Shadowflame

step
    .train 426467,1
    #completewith next
    .zone Desolace >>Reist nach Desolace |cRXP_WARN_Es wird dringend empfohlen, eine Gruppe von mindestens 3 Spielern zu bilden.|r
step
    .train 426467,1
    .train 19028,3 --Soul Link
    .goto Desolace,81.2,79.7
    .cast 434869 >> |cRXP_WARN_Klickt auf den Altar, um zu beschwören|r |cRXP_ENEMY_Seductress Ceeyna|r |cRXP_WARN_aber stellt sicher, dass ihr benutzt|r |T136121:0|t[Schattenzauberschutz]|cRXP_WARN_,|r |T136190:0|t[Opferung] |cRXP_WARN_und|r |T136160:0|t[Seelenverbindung]|r |cRXP_WARN_vorher|r |cFFFF0000da ihr während des Kanalisierens viel Schaden erhaltet und es euch nicht heilt|r
step
    .train 426467,1
    .train 19028,1 --Soul Link
    .goto Desolace,81.2,79.7
    .cast 434869 >> |cRXP_WARN_Klickt auf den Altar, um zu beschwören|r |cRXP_ENEMY_Seductress Ceeyna|r |cRXP_WARN_aber stellt sicher, dass ihr benutzt|r |T136121:0|t[Schattenzauberschutz] |cRXP_WARN_und|r |T136190:0|t[Opferung] |cRXP_WARN_vorher|r |cFFFF0000da ihr während des Kanalisierens viel Schaden erhaltet und es euch nicht heilt|r
step
    .train 426467,1
    .goto Desolace,81.2,79.7
    >>Tötet |cRXP_ENEMY_Seductress Ceeyna|r. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune of Schattenflammen|r]
    .collect 213101,1
    .mob Seductress Ceeyna
step
    .train 426467 >>Benutzt |T134419:0|t[|cRXP_WARN_Rune der Schattenflammen|r], |cRXP_FRIENDLY_um|r |T236302:0|t[Schattenflamme] |cRXP_WARN_zu erlernen|r
    .use 213101
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Armschienen
#title Feuerbrandaura
#name Feuerbrandaura - 40 (Eschental)

step
    #completewith next
    .zone Ashenvale >> Reist nach Eschental
step
    .goto Ashenvale,93.5,38.0,100 >> Geht zum Bereich des Alptraumeinbruchs im Eschental, der auf eurer Karte markiert ist
    .train 431758,1
step
    >>Tötet die Dämonen außerhalb des Portals, bis ihr alle drei nachstehend aufgelisteten Gegenstände geplündert habt
    .collect 221972,1 >>|T132839:0|t|cRXP_LOOT_Dreampyre Feuer|r von |cRXP_ENEMY_Dreampyre Schrate|r
    .collect 221971,1 >>|T237396:0|t|cRXP_LOOT_Traumschwurhorn|r von |cRXP_ENEMY_Glutfunke Traumschwur|r
    .collect 221973,1 >>|T133724:0|t|cRXP_LOOT_Dreamhunter Zerrender Biss|r von |cRXP_ENEMY_Dreampyre Bestien|r
    .mob Dreampyre Imp
    .mob Emberspark Dreamsworn
    .mob Dreamhunter Hound
    .train 431758,1
step
    .cast 447537 >> Klickt mit Rechts auf einen der Gegenstände aus von Euch Tasche um sie zu kombinieren und erhaltet |T134419:0|t[|cRXP_FRIENDLY_Rune der Feuerbrandaura|r]
    .collect 220618,1 --Rune of Immolation Aura
    .use 221972
    .train 431758,1
step
    .train 431758 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Feuerbrandaura|r] |cRXP_WARN_um zu erlernen|r |T135802:0|t[Feuerbrandaura]
    .use 220618
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Armschienen
#title Teufelswache beschwören
#name Teufelswache beschwören - 10 (Azeroth)

step
    #completewith next
    +|cRXP_WARN_Um diese Rune zu erhalten, müsst ihr einen|r |T236294:0|t|cRXP_FRIENDLY_Explorer Wichtel|r gefunden haben. |cRXP_WARN_Wenn ihr noch keinen habt, wirkt|r |T136163:0|t|cRXP_FRIENDLY_[Seelendieb]|r |cRXP_WARN_auf Gegner. Jeder Tick des Zaubers gibt euch die Chance auf eine|r |T133257:0|t|cRXP_LOOT_Explorer's Seele|r. |cRXP_WARN_Benutzt sie, um zu erlernen, wie ihr euren|r |T236294:0|t|cRXP_FRIENDLY_Explorer Wichtel|r beschwört.
step
    +Geht zu einer der Zonen unten. Die Rune kann in jeder davon erhalten werden, aber Zonen auf höherem Level bieten bessere Belohnungen von von Euch Wichtelforscher
    >>The Barrens
    >>Westfall
    >>Dunkelküste
    >>Silberwald
    >>Eschental
    >>Rotkammgebirge
    >>Sümpfe des Elends
    >>Desolace
    >>Feralas
    >>Azshara
    >>Verwüstete Lande
    .zoneskip The Barrens
    .zoneskip Westfall
    .zoneskip Darkshore
    .zoneskip Silverpine Forest
    .zoneskip Ashenvale
    .zoneskip Redridge Mountains
    .zoneskip Swamp of Sorrows
    .zoneskip Desolace
    .zoneskip Feralas
    .zoneskip Azshara
    .zoneskip Blasted Lands
step
    >>Sucht nach |cRXP_FRIENDLY_Fel-Portalen|r an den Orten, die auf eurer Karte markiert sind. Wenn ihr eines findet, beschwört euren |T236294:0|t|cRXP_FRIENDLY_Wichtelforscher|r und führt sein Gespräch durch, während ihr neben dem Portal steht. Der Wichtelforscher wird beginnen, es zu erkunden, und ihr erhaltet einen |T136164:0|t|cRXP_FRIENDLY_Wichtel auf einer Mission|r-Buff. Nach etwa 10-20 Minuten kehrt euer Wichtelforscher entweder zu euch zurück, oder ihr könnt ihn erneut beschwören und mit ihm sprechen, um eine wiederholbare Quest abzugeben, die |T133639:0|t|cRXP_LOOT_Jenseitiger Schatz|r als Belohnung gewährt. Wenn ihr ihn öffnet, erhaltet ihr Beute und habt eine Chance, die |T134419:0|t[|cRXP_FRIENDLY_Rune der Teufelswache|r] zu erhalten. Sucht weiter nach Spalten und plündert Schätze, bis ihr sie findet
    .goto Westfall,28.6,44.0,0
    .goto Westfall,29.0,47.8,0
    .goto Westfall,29.0,58.2,0
    .goto Westfall,29.6,69.4,0
    .goto Westfall,29.8,34.4,0
    .goto Westfall,31.4,39.2,0
    .goto Westfall,31.4,65.6,0
    .goto Westfall,32.2,76.0,0
    .goto Westfall,32.2,80.2,0
    .goto Westfall,32.4,29.2,0
    .goto Westfall,34.0,82.2,0
    .goto Westfall,37.4,85.0,0
    .goto Westfall,41.4,15.4,0
    .goto Westfall,44.8,46.6,0
    .goto Westfall,47.0,39.4,0
    .goto Westfall,47.4,79.2,0
    .goto Westfall,47.6,22.0,0
    .goto Westfall,47.6,67.2,0
    .goto Westfall,47.8,13.8,0
    .goto Westfall,51.0,32.2,0
    .goto Westfall,51.6,71.4,0
    .goto Westfall,57.0,10.6,0
    .goto Westfall,62.6,26.0,0
    .goto The Barrens,39.6,13.8,0
    .goto The Barrens,40.0,18.4,0
    .goto The Barrens,40.8,14.4,0
    .goto The Barrens,42.0,14.2,0
    .goto The Barrens,44.4,50.0,0
    .goto The Barrens,45.8,51.2,0
    .goto The Barrens,46.4,52.6,0
    .goto The Barrens,47.6,49.4,0
    .goto The Barrens,51.6,53.4,0
    .goto The Barrens,53.0,50.8,0
    .goto The Barrens,54.2,52.6,0
    .goto The Barrens,54.4,48.6,0
    .goto The Barrens,55.6,25.6,0
    .goto The Barrens,55.8,51.0,0
    .goto The Barrens,56.0,24.8,0
    .goto The Barrens,57.6,23.6,0
    .goto The Barrens,58.2,49.6,0
    .goto The Barrens,58.8,25.8,0
    .goto The Barrens,59.0,29.2,0
    .goto The Barrens,59.0,32.0,0
    .goto The Barrens,59.2,36.4,0
    .goto The Barrens,59.8,27.6,0
    .goto The Barrens,60.2,36.0,0
    .goto The Barrens,60.8,29.0,0
    .goto The Barrens,61.8,32.0,0
    .goto Silverpine Forest,38.8,18.4,0
    .goto Silverpine Forest,38.8,23.4,0
    .goto Silverpine Forest,44.6,25.2,0
    .goto Silverpine Forest,45.4,31.8,0
    .goto Silverpine Forest,49.8,13.4,0
    .goto Silverpine Forest,50.2,56.8,0
    .goto Silverpine Forest,50.2,65.2,0
    .goto Silverpine Forest,55.6,24.6,0
    .goto Darkshore,37.6,63.8,0
    .goto Darkshore,43.2,27.0,0
    .goto Darkshore,44.0,82.0,0
    .goto Darkshore,45.0,26.2,0
    .goto Darkshore,46.2,46.8,0
    .goto Darkshore,47.4,28.8,0
    .goto Darkshore,49.8,36.8,0
    .goto Darkshore,56.4,24.8,0
    .goto Darkshore,59.8,21.8,0
    .goto Ashenvale,24.4,63.4,0
    .goto Ashenvale,27.6,62.6,0
    .goto Ashenvale,30.2,30.2,0
    .goto Ashenvale,33.6,28.4,0
    .goto Ashenvale,44.6,64.2,0
    .goto Ashenvale,51.2,47.0,0
    .goto Ashenvale,52.6,62.8,0
    .goto Ashenvale,55.6,40.2,0
    .goto Ashenvale,67.0,46.0,0
    .goto Ashenvale,67.2,51.0,0
    .goto Ashenvale,77.4,73.0,0
    .goto Ashenvale,80.4,70.6,0
    .goto Ashenvale,84.8,70.2,0
    .goto Redridge Mountains,29.8,30.4,0
    .goto Redridge Mountains,31.2,21.8,0
    .goto Redridge Mountains,42.8,16.8,0
    .goto Redridge Mountains,71.4,57.8,0
    .goto Redridge Mountains,71.4,83.6,0
    .goto Redridge Mountains,72.0,57.8,0
    .goto Redridge Mountains,79.0,33.4,0
    .goto Redridge Mountains,81.6,60.4,0
    .goto Redridge Mountains,83.2,44.4,0
    .goto Redridge Mountains,86.2,52.6,0
    .goto The Barrens,42.8,81.8,0
    .goto The Barrens,43.2,80.2,0
    .goto The Barrens,46.2,85.6,0
    .goto The Barrens,47.8,83.6,0
    .goto The Barrens,48.4,81.2,0
    .goto The Barrens,50.2,80.6,0
    .goto Swamp of Sorrows,10.4,59.4,0
    .goto Swamp of Sorrows,12.4,29.8,0
    .goto Swamp of Sorrows,16.4,63.0,0
    .goto Swamp of Sorrows,22.8,64.0,0
    .goto Swamp of Sorrows,27.0,48.8,0
    .goto Swamp of Sorrows,34.2,28.8,0
    .goto Swamp of Sorrows,36.2,50.6,0
    .goto Swamp of Sorrows,49.0,38.8,0
    .goto Swamp of Sorrows,56.6,65.0,0
    .goto Swamp of Sorrows,60.2,27.6,0
    .goto Swamp of Sorrows,69.4,78.4,0
    .goto Swamp of Sorrows,72.4,10.4,0
    .goto Swamp of Sorrows,77.4,89.6,0
    .goto Swamp of Sorrows,81.2,34.0,0
    .goto Swamp of Sorrows,83.2,66.6,0
    .goto Swamp of Sorrows,87.6,26.0,0
    .goto Swamp of Sorrows,90.8,65.2,0
    .goto Swamp of Sorrows,91.4,57.0,0
    .goto Desolace,47.4,22.2,0
    .goto Desolace,48.8,82.2,0
    .goto Desolace,49.4,75.0,0
    .goto Desolace,52.0,85.4,0
    .goto Desolace,52.2,72.4,0
    .goto Desolace,52.8,81.0,0
    .goto Desolace,54.4,19.2,0
    .goto Desolace,56.0,74.8,0
    .goto Desolace,71.6,18.4,0
    .goto Desolace,72.6,21.8,0
    .goto Desolace,73.4,24.6,0
    .goto Desolace,74.4,10.6,0
    .goto Desolace,76.4,19.2,0
    .goto Desolace,80.4,17.0,0
    .goto Blasted Lands,35.0,55.0,0
    .goto Blasted Lands,41.2,33.4,0
    .goto Blasted Lands,43.6,25.0,0
    .goto Blasted Lands,46.8,39.2,0
    .goto Blasted Lands,48.8,48.6,0
    .goto Blasted Lands,56.0,36.6,0
    .goto Blasted Lands,60.2,46.0,0
    .goto Blasted Lands,62.0,39.2,0
    .goto Feralas,68.2,58.8,0
    .goto Feralas,70.4,62.6,0
    .goto Feralas,72.4,63.8,0
    .goto Feralas,73.2,54.4,0
    .goto Feralas,74.2,50.4,0
    .goto Feralas,74.2,60.0,0
    .goto Feralas,76.2,56.4,0
    .goto Feralas,76.6,63.4,0
    .goto Azshara,16.4,51.0,0
    .goto Azshara,17.6,58.4,0
    .goto Azshara,21.2,54.0,0
    .goto Azshara,24.8,47.8,0
    .goto Azshara,25.0,81.4,0
    .goto Azshara,30.2,79.8,0
    .goto Azshara,33.0,81.4,0

    .collect 221499,1 --Rune of the felguard
    .use 223148 --Otherworldy Treasure
    .unitscan Fel Sliver
    .unitscan Fel Crack
    .unitscan Fel Tear
    .unitscan Fel Scar
    .unitscan Fel Rift
step
    .train 431756 >>Benutzt die |T134419:0|t[|cRXP_WARN_Rune der Teufelswache|r] |cRXP_FRIENDLY_um|r |T136216:0|t[Teufelswache beschwören] |cRXP_WARN_zu erlernen|r
    .use 221499

]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Helm
#title Pandemie
#name Pandemie - 40 (Feralas)

step
    #completewith next
    .zone Feralas >> Reist nach Feralas
step
    .goto Feralas,69.6,43.3
    >>Geht zum markierten Ort westlich von Camp Mojache. Sucht nach einem |cRXP_ENEMY_Tot Verseucht Schamane der Grimmtotem|r der neben einem Baum liegt. Neben der Leiche findet ihr eine |cRXP_PICK_Grimtotem Truhe|r, plündert sie um |T133291:0|t|cRXP_LOOT_Grimtotem Halskette|r zu erhalten
    .collect 221974,1 --Grimtotem Necklace 1/1
    .unitscan Dead Diseased Grimtotem Shaman
    .train 431743,1
step
    .goto 1444/1,695.400,-4920.300,20 >>Geht zum Pfad, der zum Waldpfotenbau den Hügel hinaufführt
    .train 431743,1
step
    .goto 1444/1,831.200,-4851.000,20 >>Geht den mit Fackeln markierten Pfad hinauf
    .train 431743,1
step
    .goto 1444/1,826.500,-4725.100
    >>Geht zum rechten Rand des Lagers und dann zu |cRXP_ENEMY_Toter verseuchter Waldpfoten-Mystiker|r. Daneben findet ihr |cRXP_PICK_Woodpaw Tasche|r, plündert |T135139:0|t|cRXP_LOOT_Broken Woodpaw Stab|r
    .collect 221975,1 --Broken Woodpaw Staff
    .unitscan Dead Diseased Woodpaw Mystic
    .train 431743,1
step
    >>Benutzt |T135139:0|t|cRXP_LOOT_Broken Woodpaw Stab|r, kombiniert ihn mit |T133291:0|t|cRXP_LOOT_Grimtotem Halskette|r und erstellt |T135153:0|t|cRXP_LOOT_Diseased Naturschaden Stab|r
    .collect 221976,1 --Diseased Nature Staff
    .use 221975
    .train 431743,1
step
    .goto Feralas,72.6,50.8
    >>Sucht nach einem schlafenden |cRXP_ENEMY_Diseased Forest Walker|r, benutzt |T135153:0|t|cRXP_LOOT_Diseased Naturschaden Stab|r, um ihn aufzuwecken, besiegt ihn und plündert |T134419:0|t[|cRXP_FRIENDLY_Rune der Pandemie|r]
    .collect 220617,1 --Rune of Pandemic
    .use 221976
    .train 431743,1
step
    .train 431743 >>|cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Pandemie|r] |cRXP_WARN_zum Erlernen|r |T136227:0|t[Pandemie]
    .use 220617
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Verschleierung
#title Dezimierung
#name Dezimierung - 55 (Azeroth)

step
    #completewith next
    .zone Burning Steppes >> Reise zur Brennenden Steppe
step
    #loop
    .goto Burning Steppes,93.2,59.0,55,0
    .goto Burning Steppes,72.2,31.6,55,0
    .goto Burning Steppes,69.0,26.4,55,0
    .goto Burning Steppes,59.8,65.0,55,0
    .goto Burning Steppes,36.4,60.8,55,0
    .goto Burning Steppes,24.2,64.6,55,0
    .goto Burning Steppes,37.6,42.2,55,0
    >>|cRXP_WARN_Sucht nach|cRXP_PICK_ Fel Rifts|r. Dies sind Portale, die in der ganzen Zone erscheinen können|r
    >>|cRXP_WARN_Sprechen mit dem|cRXP_PICK_ Rift|r um von Euch zu senden |cRXP_FRIENDLY_Forscher Wichtelforscher|r durch den |cRXP_PICK_Rift|r und warten bis es mit einem zurückkommt|r |T135222:0|t[|cRXP_LOOT_Legionsportal Portalempfänger der Legion|r]
    >>|cRXP_WARN_Ihr müsst dies vielleicht mehrmals wiederholen, bis es mit dem|r |T135222:0|t[|cRXP_LOOT_Legionsportal Portalempfänger der Legion|r] zurückkommt
    .collect 224806,1
    .train 440922,1
    .skipgossip
step
    #completewith next
    .zone Blasted Lands >> Reist nach Verwüstete Lande
step
    #loop
    .goto Blasted Lands,43.6,25.6,50,0
    .goto Blasted Lands,41.4,33.8,50,0
    .goto Blasted Lands,46.6,39.2,50,0
    .goto Blasted Lands,49.0,48.2,50,0
    .goto Blasted Lands,60.6,46.2,50,0
    .goto Blasted Lands,62.0,39.2,50,0
    .goto Blasted Lands,56.2,36.8,50,0
    .use 224806 >> |cRXP_WARN_Benutzt den|r |T135222:0|t[|cRXP_LOOT_Legionsportal Portalempfänger der Legion|r] |cRXP_WARN_an einer|cRXP_PICK_ Teufelsnarbe|r , die ihn in ein|r |cRXP_PICK_Otherworldly Portal|r verwandelt
    >>|cRXP_WARN_Sprechen mit dem|cRXP_PICK_ Otherworldly Portal|r und sendet von Euch |cRXP_FRIENDLY_Forscher Wichtelforscher|r durch ihn und wartet bis es mit einem|r |T134429:0|t[|cRXP_LOOT_Portalempfängerempfänger|r] zurückkommt
    >>|cRXP_WARN_Ihr müsst dies vielleicht mehrmals wiederholen, bis es mit dem|r |T134429:0|t[|cRXP_LOOT_Portalempfängerempfänger|r] zurückkommt
    .collect 224912,1
    .train 440922,1
    .skipgossip
step
    .use 224912 >> |cRXP_WARN_Benutzt den|r |T134429:0|t[|cRXP_LOOT_Portalempfängerempfänger|r] |cRXP_WARN_um ihn in einen|r |T135224:0|t[|cRXP_LOOT_Überladener Portalempfänger|r] zu verwandeln
    .collect 224893,1
    .train 440922,1
step
    #loop
    .goto Blasted Lands,43.6,25.6,50,0
    .goto Blasted Lands,41.4,33.8,50,0
    .goto Blasted Lands,46.6,39.2,50,0
    .goto Blasted Lands,49.0,48.2,50,0
    .goto Blasted Lands,60.6,46.2,50,0
    .goto Blasted Lands,62.0,39.2,50,0
    .goto Blasted Lands,56.2,36.8,50,0
    .use 224893 >> |cRXP_WARN_Benutzt den|r |T135224:0|t[|cRXP_LOOT_Überladener Portalempfänger|r] |cRXP_WARN_an einer|cRXP_PICK_ Teufelsnarbe|r , die ihn rot werden lässt|r
    >>|cRXP_WARN_Sprechen mit ihm und sendet von Euch|cRXP_FRIENDLY_ Forscher Wichtelforscher|r durch ihn und wartet bis es mit dem|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Dezimierung|r] zurückkommt
    .collect 225686,1
    .train 440922,1
    .skipgossip
step
    .train 440922 >>|cRXP_WARN_Benutzt den|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Dezimierung|r] |cRXP_WARN_um zu erlernen|r |T135808:0|t[Dezimierung]
    .use 225686
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Verschleierung
#title Mal des Chaosschaden
#name Mal des Chaosschaden - 50 (Westliche Pestländer)

step
    #completewith next
    .zone Western Plaguelands >> Lauf in die Westlichen Pestländer
step
    #loop
    .goto Western Plaguelands,50.6,77.6
    >>|cRXP_WARN_Wirkt|r |T136163:0|t[Seelendieb] |cRXP_WARN_auf |cRXP_ENEMY_Skeletal Flayers|r, bis ihr 3|r |cRXP_LOOT_Verseuchte Seelensplitter|r erhalten habt
    .collect 225929,3
    .mob Skeletal Flayer
    .train 440924,1
step
    .goto Western Plaguelands,43.361,84.143 << Alliance
    .goto Tirisfal Glades,83.035,72.631 << Horde
    >>Drehen von Euch |cRXP_WARN_Verseucht Seelensplitter|cRXP_LOOT_ an |rPixi Pilfershard|cRXP_FRIENDLY_ bei Zugwindlager |rum|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Mal des Chaosschaden|r] zu erhalten << Alliance
    >>|cRXP_WARN_Gebt eure |cRXP_LOOT_Verseuchte Seelensplitter|r bei |cRXP_FRIENDLY_Prazik Pilfershard|r im Bollwerk ab, um|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Mals des Chaosschaden|r] zu erhalten << Horde
    .collect 225688,1
    .target Pixi Pilfershard << Alliance
    .target Prazik Pilfershard << Horde
    .train 440924,1
step
    .train 440924 >>|cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Mals des Chaosschaden|r] |cRXP_WARN_um zu erlernen|r |T136226:0|t[Mal des Chaosschaden]
    .use 225688
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Verschleierung
#title Höllische Rüstung
#name Höllische Rüstung - 55 (Verwüstete Lande)

step
    #completewith next
    .zone Blasted Lands >> Reist nach Verwüstete Lande
    >>|cRXP_WARN_Stellt sicher, dass ihr die folgenden Fähigkeiten trainiert habt, und erwägt, einen Heiler mitzubringen, da ihr einen Elite-Boss der Stufe 56 töten müsst|r
    >>|T134131:0|t[Großer Zauberstein]
    >>|T136121:0|t[Schattenzauberschutz]
    >>|T136190:0|t[Opferung] |cRXP_WARN_für von Euch|r |T136221:0|t[Leerwandler]
step
    .train 440926,1
    #loop
    .goto Blasted Lands,65.31,32.63,20,0
    .goto Blasted Lands,68.050,28.667
    >>Tötet beliebig |cRXP_ENEMY_Shadowsworn|r. Plündert sie für |cRXP_LOOT_Shadowsworn Hinweis|r
    .collect 227658,1
    .mob Shadowsworn Cultist
    .mob Shadowsworn Thug
    .mob Shadowsworn Adept
    .mob Shadowsworn Enforcer
    .mob Shadowsworn Warlock
    .mob Shadowsworn Dreadweaver
step
    .train 440926,1
    .goto Blasted Lands,68.050,28.667
    >>Geht zum |cRXP_PICK_Altar|r am hinteren Teil der Höhle
    >>|cRXP_WARN_Bevor ihr den|cRXP_PICK_ Altar|r anklickt, stellt sicher, dass ihr von Euch|r |T134131:0|t[Großer Zauberstein]|cRXP_WARN_,|r |T136121:0|t[Schattenzauberschutz] |cRXP_WARN_und|r |T136190:0|t[Opferung] |cRXP_WARN_benutzt habt, da ihr großen Schaden erleidet, wenn ihr den|cRXP_PICK_ Altar|r anklickt, und dabei|cRXP_ENEMY_ Heliath|r beschwört. |cRXP_ENEMY_Heliath|r ist ein Elite-Boss der Stufe 56|r
    >>Tötet |cRXP_ENEMY_Heliath|r. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune of Höllische Rüstung|r]
    .collect 225687,1
    .mob Heliath
step
    .train 440926 >>|cRXP_WARN_Benutzt den|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Höllische Rüstung|r] |cRXP_WARN_um zu erlernen|r |T236418:0|t[Höllische Rüstung]
    .use 225687
]])
