if GetLocale() ~= "deDE" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
#version 1
#season 2
<< Alliance
#group RestedXP Allianz 1-20
#groupid RXP-SRGCE-A1
#name 1-7 Das Eisklammtal
#next 6-11 Dun Morogh SoD
#displayname 1-7 Das Eisklammtal
#defaultfor Dwarf/Gnome

step << !Gnome !Dwarf
    #completewith next
    +Ihr habt einen Leitfaden für Gnome und Zwerge ausgewählt. Ihr solltet die gleiche Startzone wählen, in der ihr startet
step
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sten Stoutarm|r
    .accept 179 >> Akzeptiert die Quest Zwergenausstatter
    .target Sten Stoutarm
step << Mage/Hunter/Priest/Paladin/Warrior/Warlock
    .goto Dun Morogh,29.47,72.06
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Runenhändler|r
    >> |cRXP_WARN_Passt auf, verkauft keine Ausrüstung, die ihr anlegen könnt|r
    >> |cRXP_BUY_Verkauft Euer|r |T135005:0|t[Hemd] |cRXP_BUY_und kauft die |T135975:0|t[|cRXP_FRIENDLY_Prophezeiung einer entweihten Zitadelle|r] von ihm|r << Priest
    >>|cRXP_BUY_Verkauft euer|r |T135005:0|t[Hemd] und |T132540:0|t[Stiefels] |cRXP_WARN_(sie können nicht eingraviert werden)|r |cRXP_BUY_und kauft das |T133745:0|t[|cRXP_FRIENDLY_Gegenstände|r] und das |T134916:0|t[|cRXP_FRIENDLY_Buchband des Richturteils|r] von ihm|r << Paladin
    >> |cRXP_BUY_Verkauft euer|r |T135005:0|t[Hemd] |cRXP_BUY_und kauft die |T134419:0|t[|cRXP_FRIENDLY_Rune of Rasender Angriff|r] von ihm|r << Warrior
    >> |cRXP_BUY_Verkauft euer|r |T135005:0|t[Hemd] |cRXP_BUY_und kauft den |T133733:0|t[|cRXP_FRIENDLY_Zauberfoliant der Teufelsrüstung|r] von ihm|r << Warlock
    >> |cRXP_BUY_Verkauft euren Müll und kauft die |T134419:0|t[|cRXP_FRIENDLY_Rune des Schattenschlags|r]|r << Rogue
    >> |cRXP_BUY_Verkauft euer|r |T135005:0|t[Hemd] |cRXP_BUY_und kauft |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Lebende Flamme|r] von ihm|r << Mage
    >> |cRXP_BUY_Verkauft euer|r |T135005:0|t[Hemd] und |T132540:0|t[Stiefels] |cRXP_WARN_(sie können nicht eingraviert werden)|r |cRXP_BUY_und kauft die |T134419:0|t[|cRXP_FRIENDLY_Rune of Tötungsbefehl|r] und die |T133739:0|t[|cRXP_FRIENDLY_Gegenstände|r] von ihm|r << Hunter
    >> |cRXP_BUY_Verkauft die Trashgegenstände und kauft alle der folgenden Runen:|r << Warlock
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel
    .collect 226398,1  << Paladin --Testament of Martyrdom
    .collect 205420,1 << Paladin --Libram of Judgement
    .collect 204716,1 << Warrior --Rune of Frenzied Assault
    .collect 204795,1 << Rogue --Rune of Shadowstrike
    .collect 203746,1 << Mage --Spell Notes: Living Flame
    .collect 209852,1 << Hunter --Rune of Kill Command
    .collect 226401,1 << Hunter --Treatise on the Heart of the Lion
    .collect 205215,1 << Warlock --Rune of Tactics
    .collect 210824,1 << Warlock --Rune of the Pact
    .collect 211477,1 << Warlock --Rune of Incinerate
    .collect 205230,1 << Warlock --Rune of Haunting
    .collect 228797,1 << Warlock --Grimoire of Fel Armor
    >>Ihr werdet den Rest eurer Runen sehr bald erhalten
    .target Rune Broker
    .skipgossip
step << Mage/Hunter/Priest/Paladin/Warrior/Warlock
    #sticky
    #optional
    #label Libram << Paladin
    .equip 18 >> Legt das |T134916:0|t[|cRXP_FRIENDLY_Buchband des Richturteils|r] an. Ihr könnt es nach 30 Sek. benutzen, um |T135891:0|t[Kreuzfahrerstoß] zu erlernen. << Paladin
    .use 205947 << Priest --Prophecy of a Desecrated Citadel
    .use 226398 << Paladin --Testament of martyrdom
    .use 205420 << Paladin --Libram of Judgement
    .use 204716 << Warrior --Rune of Frenzied Assault
    .use 203746 << Mage --Spell Notes: Living Flame
    .use 209852 << Hunter --Rune of Kill Command
    .use 226401 << Hunter --Treatise on the Heart of the Lion
    .use 228797 << Warlock --Grimoire of Fel Armor
    .train 402852 >> Benutzt die |T135975:0|t[|cRXP_FRIENDLY_Prophezeiung einer entweihten Zitadelle|r] um |T237570:0|t[Homunculi] zu erlernen << Priest
    .train 407798 >> Benutzt das |T133745:0|t[|cRXP_FRIENDLY_Gegenstände|r], um |T135961:0|t[Siegel des Märtyrertums] zu trainieren. |cRXP_WARN_Benutzt es als euer primäres Siegel|r << Paladin
    .train 425447 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Rasenden Angriffs|r] << Warrior
    .train 401768 >> Benutzt das |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: Lebende Flamme|r] << Mage
    .train 410111 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune of Tötungsbefehl|r] << Hunter
    .train 409580 >> Benutzt die |T133739:0|t[|cRXP_FRIENDLY_Abhandlung über das Löwenherz|r] um |T132185:0|t[Löwenherz] zu trainieren << Hunter
    .train 403619 >> Benutzt das |T133733:0|t[Grimoire der Teufelsrüstung|cRXP_FRIENDLY_], um |T136156:0|t[Teufelsrüstung]|r zu trainieren. << Warlock
    .engrave 7 >> Graviert |T236174:0|t[Tödlicher Schuss] auf eure Hosen << Hunter
    .engrave 7 >> Gravieren |T135820:0|t[Lebende Flamme] on von Euch pants << Mage
    .engrave 7 >> Graviert |T237570:0|t[Homunculi] auf eure Hosen << Priest
    .engrave 7 >> Graviert |T236317:0|t[Rasender Angriff] auf eure Hosen << Warrior
    >>TIPP: Ihr könnt mehrere |cRXP_WARN_Wölfe|r mit |T135812:0|t[Feuerball]|cRXP_ENEMY_ locken und sie dann mit |T135820:0|t[Lebende Flamme]|r Flächenschaden zufügen. << Mage
step << Paladin
    #sticky
    #optional
    #requires Libram
    #label LibramLearn
    .train 410002 >> Benutzt das |T134916:0|t[|cRXP_FRIENDLY_Buchband des Richturteils|r], um |T135891:0|t[Kreuzfahrerstoß] zu erlernen.
step << Hunter
    #optional
    #sticky
    .aura 409583 >> Denkt daran, Euer |T132185:0|t[Herz des Löwen] zu aktivieren
step << Warlock
    #optional
    #sticky
    .aura 403619 >> |cRXP_WARN_Stellt sicher, dass ihr eure|r |T136156:0|t[Teufelsrüstung] aktiviert
step << Paladin
    #optional
    #completewith next
    .aura 407798 >> Denkt daran, |T135961:0|t[Siegel des Märtyrertums] als euer Siegel zu benutzen.
step
    #label WolfMeat
    .goto 1426,29.529,73.286,0
    .goto 1426,28.117,75.088,0
    .goto 1426,28.557,72.487,0
    .goto 1426,29.529,73.286,60,0
    .goto 1426,29.054,74.608,60,0
    .goto 1426,28.558,75.781,60,0
    .goto 1426,28.117,75.088,60,0
    .goto 1426,27.562,74.331,60,0
    .goto 1426,27.793,73.123,60,0
    .goto 1426,28.557,72.487,60,0
    >>Tötet |cRXP_ENEMY_Struppiger junger Wolf|r. Plündert sie für |cRXP_LOOT_Zähes Wolfsfleisch|r
    .complete 179,1 --Collect Tough Wolf Meat (x8)
    .mob Ragged Young Wolf
step
    #optional
    .goto 1426,29.529,73.286,0
    .goto 1426,28.117,75.088,0
    .goto 1426,28.557,72.487,0
    .goto 1426,29.529,73.286,60,0
    .goto 1426,29.054,74.608,60,0
    .goto 1426,28.558,75.781,60,0
    .goto 1426,28.117,75.088,60,0
    .goto 1426,27.562,74.331,60,0
    .goto 1426,27.793,73.123,60,0
    .goto 1426,28.557,72.487,60,0
    .xp 2 >> Farmt bis Stufe 2
    .mob Ragged Young Wolf
step << Warrior/Mage/Warlock/Hunter
    .goto Dun Morogh,29.47,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Runenhändler|r
    >>|cRXP_WARN_Passt auf, verkauft keine Ausrüstung, die ihr anlegen könnt|r
    .vendor >>|cRXP_BUY_Verkauft euren Müll und kauft die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Siegesrausches|r] << Warrior
    .vendor >>|cRXP_BUY_Verkauft die Trashgegenstände und kauft alle wichtigen AoE-Runen|r << Mage
    .vendor >>|cRXP_BUY_Verkauft die Trashgegenstände und kauft alle der folgenden Runen:|r << Hunter/Warlock
    .collect 204806,1 << Warrior --Rune of Victory Rush
    .collect 208799,1 << Mage --Spell Notes: Living Bomb
    .collect 203748,1 << Mage --Spell Notes: Burnout
    .collect 225690,1 << Mage --Spell Notes: Frozen Orb
    .collect 203745,1 << Mage --Spell Notes: Ice Lance
    .collect 206168,1 << Hunter --Rune of the Chimera
    .collect 210818,1 << Hunter --Rune of Lone Wolf
    .collect 213124,1 << Hunter --Rune of Close Combat
    .collect 226252,1 << Hunter --Rune of the Guerrilla
    .collect 216770,1 << Hunter --Treatise on Aspect of the Viper
    .collect 205215,1 << Warlock --Rune of Tactics
    .collect 210824,1 << Warlock --Rune of the Pact
    .collect 211477,1 << Warlock --Rune of Incinerate
    .collect 205230,1 << Warlock --Rune of Haunting
    >> Eislanze ist nur nützlich, um später eine Quest abzugeben << Mage
    >>|cRXP_WARN_Ihr bekommt den Rest eurer Runen später|r
    .target Rune Broker
    .skipgossip
step << Warrior/Mage/Hunter
    .train 403470 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Siegesrauschs|r] um |T132342:0|t[Siegesrausch] zu trainieren, ihr werdet sie bald eingravieren << Warrior
    .train 415936 >> Benutzt |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: Lebende Bombe|r] um |T236220:0|t[Lebende Bombe] zu erlernen << Mage
    .train 401759 >> Benutzt |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: Feuerfontäne|r] um |T236207:0|t[Feuriger Schub] zu erlernen << Mage
    .train 440858 >> Benutzt die |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: Gefrorene Kugel|r] um |T135851:0|t[Gefrorene Kugel] zu erlernen << Mage
    .train 401760 >> Benutzt |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: Eislanze|r] um |T135844:0|t[Eislanze] zu erlernen << Mage
    .train 410121 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune der Chimäre|r] um |T236176:0|t[Schimärenschuss] zu trainieren << Hunter
    .train 410122 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des einsamen Wolfs|r] um |T132266:0|t[Einsamer Wolf] zu trainieren << Hunter
    .train 416086 >> Benutzt |T134419:0|t[|cRXP_FRIENDLY_Rune des Nahkampfs|r], um |T132394:0|t[Nahkampfspezialist] zu trainieren << Hunter
    .train 440563 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Guerrillas|r] um |T132171:0|t[Drauf und weg] zu trainieren << Hunter
    .train 415423 >> Benutzt das |T133739:0|t[Traktat über Aspekt der Viper|cRXP_FRIENDLY_], um |T132160:0|t[Aspekt der Viper]|r zu trainieren. << Hunter
    .train 416009 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune der Taktiken|r] um |T136150:0|t[Dämonische Taktiken] zu erlernen << Warlock
    .train 425476 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Pakts|r] um |T237562:0|t[Dämonischer Pakt] zu erlernen << Warlock
    .train 416015 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Verbrennens|r] um |T135789:0|t[Verbrennen] zu erlernen << Warlock
    .train 403919 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune der Heimsuchung|r] um |T236298:0|t[Heimsuchung] zu erlernen << Warlock
    .use 208799 << Mage --Spell Notes: Living Bomb
    .use 203748 << Mage --Spell Notes: Burnout
    .use 225690 << Mage --Spell Notes: Frozen Orb
    .use 206168 << Hunter --Rune of the Chimera
    .use 210818 << Hunter --Rune of Lone Wolf
    .use 213124 << Hunter --Rune of Close Combat
    .use 226252 << Hunter --Rune of the Guerrilla
    .use 216770 << Hunter --Treatise on Aspect of the Viper
    .use 204806 << Warrior --Rune of Victory Rush
    .use 205215 << Warlock --Rune of Tactics
    .use 210824 << Warlock --Rune of the Pact
    .use 211477 << Warlock --Rune of Incinerate
    .use 205230 << Warlock --Rune of Haunting
step << Mage
    #season 2
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>Verkauft Müll
    >>|cRXP_BUY_Kauft 10|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
    >>Farmt|cRXP_WARN_ extra |cRXP_ENEMY_Struppiger junger Wolf|r wenn ihr nicht genug Geld habt|r
    >>|cRXP_WARN_Behaltet 10c oder mehr für später|r
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Adlin Pridedrift
    .xp >6,1
step << !Priest !Mage !Warlock !Warrior !Rogue
    #completewith next << !Hunter
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>Verkauft Müll << Hunter
    >>|cRXP_BUY_Kauft 600|r |T132384:0|t[Leichtes Geschoss] |cRXP_BUY_von ihm|r << Hunter
    .vendor >> |cRXP_WARN_verkauft Schrott|r << !Hunter
    .collect 2516,600 << Hunter --Light Shot (600)
    .target Adlin Pridedrift
    .xp >6,1
step
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sten Stoutarm|r
    >>|cRXP_WARN_Stellt sicher, dass ihr die Handschuhe aus dieser Quest ausrüstet, damit ihr eine Rune darauf eingravieren könnt|r
    .turnin 179 >> Gebt die Quest Zwergenausstatter ab
    .accept 233 >> Akzeptiert die Quest Postbeförderung im Coldridgetal
    .accept 3106 >> Akzeptiert die Quest Einfache Rune << Dwarf Warrior
    .accept 3107 >> Akzeptiert die Quest Geweihte Rune << Dwarf Paladin
    .accept 3108 >> Akzeptiert die Quest Geätzte Rune << Dwarf Hunter
    .accept 3109 >> Akzeptiert die Quest Verschlüsselte Rune << Dwarf Rogue
    .accept 3110 >> Akzeptiert die Quest Geheiligte Rune << Dwarf Priest
    .accept 3112 >> Akzeptiert die Quest Einfaches Memorandum << Gnome Warrior
    .accept 3113 >> Akzeptiert die Quest Verschlüsseltes Memorandum << Gnome Rogue
    .accept 3114 >> Akzeptiert die Quest Glyphen-Memorandum << Gnome Mage
    .accept 3115 >> Akzeptiert die Quest Besudeltes Memorandum << Gnome Warlock
    .target Sten Stoutarm
step << Priest/Paladin/Rogue
    .goto Dun Morogh,29.47,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Runenhändler|r
    >>|cRXP_WARN_Passt auf, verkauft keine Ausrüstung, die ihr anlegen könnt|r
    .vendor >>|cRXP_BUY_Kauft alle der folgenden Runen:|r
    .collect 210979,1 << Rogue --Rune of Shadowstep
    .collect 221428,1 << Rogue --Rune of Foul Play
    .collect 204795,1 << Rogue --Rune of Shadowstrike
    .collect 208772,1 << Rogue --Rune of Saber Slash
    .collect 227922,1 << Rogue --Rune of the Swashbuckler
    .collect 212552,1 << Priest --Psychosophic Epiphany
    .collect 205940,1 << Priest --Memory of a Dark Purpose
    .collect 205951,1 << Priest --Memory of a Troubled Acolyte
    .collect 205932,1 << Priest --Prophecy of a King's Demise
    .collect 235600,1 << Paladin --Rune of Divine Storm
    .collect 211488,1 << Paladin --Rune of the Avenger
    .collect 235602,1 << Paladin --Rune of the Hammer of the Righteous
    .collect 235604,1 << Paladin --Rune of the Shield of Righteousness
    >>Ihr werdet den Rest eurer Runen sehr bald erhalten
    .target Rune Broker
    .skipgossip
step << Priest/Paladin/Rogue
    .train 400101 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Schattenschritts|r] um |T132303:0|t[Schattenschritt] zu erlernen << Rogue
    .train 432301 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des falschen Spiels|r] um |T236285:0|t[Unfairer Vorteil] zu erlernen << Rogue
    .train 400105 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Schattenschlags|r] um |T132323:0|t[Schattenschlag] zu erlernen << Rogue
    .train 424984 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Säbelschlitzers|r] um |T132375:0|t[Säbelhieb] zu erlernen << Rogue
    .train 415922 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Schwadroneurs|r] um |T134538:0|t[Donnerbüchse] zu erlernen << Rogue
    .train 431663 >> Benutzt die |T135791:0|t[|cRXP_FRIENDLY_Psychosophische Offenbarung|r] um |T136181:0|t[Gedankenstachel] zu erlernen << Priest
    .train 425216 >> Benutzt die |T136222:0|t[|cRXP_FRIENDLY_Erinnerung an einen dunklen Zweck|r] um |T237514:0|t[Pest der Leere] zu erlernen << Priest
    .train 402862 >> Benutzt die |T136222:0|t[|cRXP_FRIENDLY_Erinnerung eines besorgten Akolyten|r] um |T237545:0|t[Sühne] zu erlernen << Priest
    .train 402849 >> Benutzt die |T135975:0|t[|cRXP_FRIENDLY_Prophezeiung des Tods eines Königs|r] um |T136149:0|t[Schattenwort: Tod] zu erlernen << Priest
    .train 410014 >> Benutzt das |T134419:0|t[Rune des Göttlichen Sturms|cRXP_FRIENDLY_], um |T236250:0|t[Göttlicher Sturm]|r zu trainieren. << Paladin
    .train 410008 >> Benutzt das |T134419:0|t[Rune des Rächers|cRXP_FRIENDLY_], um |T135874:0|t[Schild des Rächers]|r zu trainieren. << Paladin
    .train 410013 >> Benutzt das |T134419:0|t[Rune des Hammers der Rechtschaffenen|cRXP_FRIENDLY_], um |T236253:0|t[Hammer der Rechtschaffenen]|r zu trainieren. << Paladin
    .train 440788 >> Benutzt das |T134419:0|t[Rune des Schildes der Rechtschaffenheit|cRXP_FRIENDLY_], um |T236265:0|t[Schild der Rechtschaffenheit]|r zu trainieren. << Paladin
    .use 210979 << Rogue --Rune of Shadowstep
    .use 221428 << Rogue --Rune of Foul Play
    .use 204795 << Rogue --Rune of Shadowstrike
    .use 208772 << Rogue --Rune of Saber Slash
    .use 227922 << Rogue --Rune of the Swashbuckler
    .use 212552 << Priest --Psychosophic Epiphany
    .use 205940 << Priest --Memory of a Dark Purpose
    .use 205951 << Priest --Memory of a Troubled Acolyte
    .use 205932 << Priest --Prophecy of a King's Demise
    .use 235600 << Paladin --Rune of Divine Storm
    .use 211488 << Paladin --Rune of the Avenger
    .use 235602 << Paladin --Rune of the Hammer of the Righteous
    .use 235604 << Paladin --Rune of the Shield of Righteousness
step << Mage
    #optional
    #sticky
    .engrave 15 >> Achtet auf alle Umhang drops. Sobald ihr einen bekommt, graviert |T135851:0|t[Gefrorene Kugel] darauf.
    >>|cRXP_WARN_Dieser Zauber ist äußerst übermächtig|r
step << Mage/Hunter/Priest
    .equip 10 >> Legt die |T132939:0|t[Handschuhe des Wolfsjägers] an. << Hunter
    .equip 10 >> Legt die |T132940:0|t[Handschuhe des Hasenjägers] an. << Mage
    .use 6171 << Hunter --Wolf Handler Gloves
    .use 719 << Mage --Rabbit Handler Gloves
    .engrave 10 >> Graviet |T236176:0|t[Schimärenschuss] auf eure Handschuhe << Hunter
    .engrave 7 >> Gravieren |T135820:0|t[Lebende Flamme] on von Euch pants << Mage
    .engrave 10 >> Gravieren |T236220:0|t[Lebende Bombee] on von Euch gloves << Mage
    .engrave 5 >> Gravieren |T236207:0|t[Ausgebrannt] on von Euch chest << Mage
step << Priest/Mage/Warlock
    #season 2
    #xprate <1.1
    #completewith EnterAnvilmar
    .goto 1426,27.096,72.545,0
    .goto 1426,26.620,73.548,0
    .goto 1426,25.722,72.261,0
    .goto 1426,24.878,72.329,0
    .goto 1426,24.100,73.749,0
    .goto 1426,24.920,74.697,0
    .goto 1426,21.813,72.584,0
    .goto 1426,19.578,72.086,0
    .goto 1426,20.627,70.415,0
    >>Tötet |cRXP_ENEMY_Trogg der Felsenkiefer|r und |cRXP_ENEMY_Bulliger Trogg der Felsenkiefer|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
step << Hunter
    #sticky
    #optional
    >> |cRXP_WARN_Haltet Ausschau nach|r Brust/Gürtel/Umhang |cRXP_WARN_drops|r|cRXP_WARN_. Legt sie an und graviert die jeweiligen Runen|r
    .engrave 5 >> Graviert |T132266:0|t[Einsamer Wolf] auf eure |T132724:0|t[Brust]
    .engrave 6 >> Graviert |T132394:0|t[Nahkampfspezialist] auf euren |T132513:0|t[Gürtel]
    .engrave 15 >> Graviert |T132171:0|t[Drauf und weg] auf euren |T133771:0|t[Umhang]
step << Paladin
    #completewith next
    +Tötet mehr |cRXP_ENEMY_Wölfe|r oder |cRXP_ENEMY_Troggs|r bis ihr Vendortash im Wert von 88 Kupfern habt. |cRXP_WARN_Ihr werdet es bald brauchen, um Waffen zu kaufen|r
    .money >0.0088
    .goto 1426,29.529,73.286,0
    .goto 1426,28.117,75.088,0
    .goto 1426,28.557,72.487,0
    .goto 1426,29.529,73.286,60,0
    .goto 1426,29.054,74.608,60,0
    .goto 1426,28.558,75.781,60,0
    .goto 1426,28.117,75.088,60,0
    .goto 1426,27.562,74.331,60,0
    .goto 1426,27.793,73.123,60,0
    .goto 1426,28.557,72.487,60,0
step << !Hunter !Mage
    #season 2
    #label EnterAnvilmar
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.642,68.375,12 >> Betretet Ambossar << Rogue/Warlock/Paladin
    .goto 1426,28.939,68.387,12 >> Betretet Ambossar << !Rogue !Warlock !Paladin
step << Paladin
    #season 2
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bromos Grummner|r innerhalb
    .turnin 3107 >> Gebt die Quest Geweihte Rune ab << Dwarf
    .accept 77657 >> Nehmt die Quest Relikte des Lichts an << Dwarf
    .turnin 77657 >> Gebt die Quest Relikte des Lichts ab << Dwarf
    .target Bromos Grummner
step << Paladin
    .goto Dun Morogh,28.79,67.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grundel Harkin|r
    >>|cRXP_WARN_Mit einem Schild und einer Einhandwaffe früh zu leveln ist dank der Stärke der Schildrunen anfangs viel schneller|r
    >> Verkauft euren Müll und kauft das |T134955:0|t[|cRXP_BUY_Kleiner Schild|r]
    .collect 17184,1 --Small Shield (1)
    .target Grundel Harkin
step << Paladin
    .goto Dun Morogh,28.66,67.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rybrad Coldbank|r
    >>|cRXP_WARN_Mit Schild und Einhänder früh zu leveln ist aufgrund der Kraft der Schildrunen viel schneller|r
    >> Verkauft euren Müll und kauft die |T133485:0|t[|cRXP_BUY_Keule|r]
    .collect 2130,1 --Club (1)
    .target Rybrad Coldbank
step << Paladin
    #sticky
    >>|cRXP_WARN_Haltet Ausschau nach|r |T132624:0|t[Truhe]|cRXP_WARN_,|r |T132602:0|t[Bracers] |cRXP_WARN_oder|r |T133762:0|t[Verschleierung] |cRXP_WARN_die ihr ausrüsten könnt|r
    .engrave 5 >> Gravieren |T236250:0|t[Göttlicher Sturm] on von Euch chest
    .engrave 9 >> Gravieren |T236253:0|t[Hammer der Rechtschaffenen] on von Euch bracers
    .engrave 15 >> Gravieren |T236265:0|t[Schild der Rechtschaffenheit] on von Euch cloak
step << Paladin
    #optional
    #completewith next
    .equip 16,2130 >> Legt die |T133485:0|t[Keule] an.
    .equip 17,17184 >> Legt den |T134955:0|t[Kleinen Schild] an.
    .use 2130 --Club
    .use 17184 --Small Shield
step << Warlock
    #season 2
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alamar Grimm|r oben
    >>|cRXP_WARN_Ihr müsst noch keine Zauber trainieren, sie sind nicht wert, über die Runen verwendet zu werden|r
    .accept 1599 >> Akzeptiert die Quest Anfänge
    .turnin 3115 >> Gebt die Quest Besudeltes Memorandum ab << Gnome
    .accept 77666 >> Akzeptiert die Quest Gestohlene Macht << Gnome
    .turnin 77666 >> Gebt die Quest Gestohlene Macht ab << Gnome
    .target Alamar Grimm
step << Warrior
    #season 2
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thran Khorman|r innerhalb
    .turnin 3106 >> Gebt die Quest Einfache Rune ab << Dwarf
    .turnin 3112 >> Gebt die Quest Einfaches Memorandum ab << Gnome
    .accept 77655 >> Akzeptiert die Quest Die verlorene Rune << Dwarf
    .turnin 77655 >> Gebt die Quest Die verlorene Rune ab << Dwarf
    .accept 77656 >> Akzeptiert die Quest Die verlorene Rune << Gnome
    .turnin 77656 >> Gebt die Quest Die verlorene Rune ab << Gnome
    .train 6673 >>Erlernt |T132333:0|t[Schlachtruf]
    .target Thran Khorman
step << Rogue
    #season 2
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Solm Hargrin|r innerhalb
    .turnin 3109 >> Gebt die Quest Verschlüsselte Rune ab << Dwarf
    .turnin 3113 >> Gebt die Quest Verschlüsseltes Memorandum ab << Gnome
    .accept 77658 >> Akzeptiert die Quest Dreimal geklaut << Dwarf
    .turn in 77658 >> Gebt die Quest Dreimal geklaut ab << Dwarf
    .accept 77659 >> Akzeptiert die Quest Dreimal geklaut << Gnome
    .turnin 77659 >> Gebt die Quest Dreimal geklaut ab << Gnome
    .train 1784 >>Erlernt |T132320:0|t[Verstohlenheit]
    .target Solm Hargrin
step << Priest/Rogue
    .goto Dun Morogh,28.77,66.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Durnan Furcutter|r
    >>Falls ihr nicht genug Geld für beide Gegenstände |cRXP_WARN_(60 copper)|r habt, tötet mehr |cRXP_ENEMY_Wölfe|r << Priest
    >>|cRXP_WARN_Passt auf, verkauft keine Ausrüstung, die ihr anlegen könnt|r
    >>Verkauft Müll und kauft |T132495:0|t[Dünner Stoffgürtel] und |T132543:0|t[Dünne Stoffschuhe], ihr werdet sie bald brauchen, um Runen darauf zu gravieren << Priest
    >>Verkauft Müll und kauft |T132495:0|t[Dünner Stoffgürtel] und |T132602:0|t[Dünne Stoffarmschienen], ihr werdet sie bald brauchen, um Runen darauf zu gravieren << Rogue
    .collect 3599,1 --Thin Cloth Belt (1)
    .collect 2117,1 << Priest --Thin Cloth Shoes (1)
    .collect 3600,1 << Rogue --Thin Cloth Bracers (1)
    .target Durnan Furcutter
step << Rogue
    .equip 6 >> Legt den |T132495:0|t[Dünner Stoffgürtel] an
    .equip 9 >> Legt die |T132602:0|t[Dünne Stoffarmschienen] an.
    .equip 10 >> Legt die |T132952:0|t[Gesprungenen Lederhandschuhe] an
    .engrave 6 >> Graviert |T132303:0|t[Schattenschritt] auf euren Gürtel
    .engrave 9 >> Gravieren |T236285:0|t[Unfairer Vorteil] on von Euch bracers
    .engrave 10 >> Graviert |T132375:0|t[Säbelhieb] auf eure Handschuhe
    .use 3599 --Thin Cloth Belt
    .use 3600 --Thin Cloth Bracers
    .use 2125 --Cracked Leather Gloves
step << Rogue
    #optional
    #sticky
    .engrave 15 >> Haltet Ausschau nach Umhängen. Sobald ihr einen bekommt, prägt |T134538:0|t[Donnerbüchse] darauf ein
    >>|cRXP_WARN_Das ist eine sehr starke Spalten-Fähigkeit|r
step << Priest
    #season 2
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Branstock Khalder|r innerhalb
    >>|cRXP_WARN_Lernt|r |T135987:0|t[Machtwort: Seelenstärke] |cRXP_WARN_da ihr es bald für eine Klassenquest brauchen werdet|r << Dwarf
    .turnin 3110 >> Gebt die Quest Geheiligte Rune ab << Dwarf
    .accept 77661 >> Akzeptiert die Quest Meditation über das Licht << Dwarf
    .turnin 77661 >> Abgeben Meditation über das Licht << Dwarf
    .target Branstock Khalder
step << Gnome Warlock/Dwarf Priest
    #season 2
    #label GlovesEquip
    #completewith Observations
    .equip 10,711 >> |cRXP_WARN_Legt die|r |T132961:0|t[Zerlumpte Stoffhandschuhe] an
    .use 711
    .train 402862,3 << Priest
    .train 403919,3 << Warlock
step << Gnome Warlock
    #season 2
    #requires GlovesEquip
    #completewith Observations
    .engrave 10 >>|cRXP_WARN_Graviert eure|r |T132961:0|t[Zerlumpte Stoffhandschuhe] mit|r |T133816:0|t[Handschuhe prägen - Heimsuchung] << Warlock
    .train 403919,3 << Warlock
step << Priest/Paladin
    .engrave 6 >> Graviert |T136181:0|t[Gedankenstachel] auf euren Gürtel << Priest
    .engrave 8 >> Gravieren |T237514:0|t[Pest der Leere] on von Euch boots << Priest
    .engrave 10 >> Graviert |T136149:0|t[Schattenwort: Tod] auf eure Handschuhe << Priest
    .engrave 7 >> Gravieren |T135874:0|t[Schild des Rächers] on von Euch pants << Paladin
    .engrave 10 >> Gravieren |T135891:0|t[Kreuzfahrerstoß] on von Euch gloves << Paladin
step << Warlock
    .goto Dun Morogh,28.77,66.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Durnan Furcutter|r
    >>|cRXP_WARN_Passt auf, verkauft keine Ausrüstung, die ihr anlegen könnt|r
    >>|cRXP_BUY_Verkauft Müll und kauft die|r |T132602:0|t[Dünne Stoffarmschienen] |cRXP_BUY_und|r |T132543:0|t[Dünne Stoffschuhe] |cRXP_BUY_, ihr werdet sie bald brauchen, um eine Rune darauf zu gravieren|r << Warlock
    .collect 3600,1 << Warlock --Thin Cloth Bracers (1)
    .collect 2117,1 << Warlock --Thin Cloth Shoes (1)
    .target Durnan Furcutter
step << Warrior/Warlock
    .equip 10 >> Legt die |T132938:0|t[Befleckte Kettenhandschuhe] an << Warrior
    .engrave 10 >> Graviert |T132342:0|t[Siegesrausch] auf eure Handschuhe << Warrior
    .use 2385 << Warrior -- Tarnished Chain Gloves
    .use 2125 << Rogue --Cracked Leather Gloves
    .equip 9 >> Legt die |T132602:0|t[Dünne Stoffarmschienen] an << Warlock
    .equip 10 >> Legt die |T132543:0|t[Dünne Stoffschuhe] an << Warlock
    .use 3600 << Warlock --Thin Cloth Bracers
    .use 2117 << Warlock --Thin Cloth Shoes
    .engrave 5 >> Gravieren |T136150:0|t[Dämonische Taktiken] on von Euch chest << Warlock
    .engrave 7 >> Gravieren |T237562:0|t[Dämonischer Pakt] on von Euch pants << Warlock
    .engrave 9 >> Gravieren |T135789:0|t[Verbrennen] on von Euch bracers << Warlock
    .engrave 8 >> Gravieren |T236302:0|t[Schattenfeuerschaden] on von Euch boots << Warlock
step << !Paladin !Hunter
    #season 2 << !Warlock --Only Warlock is inside Anvilmar in Era at this step
    #optional
    #completewith Talin
    .goto 1426,28.792,68.804,12 >> Verlasst Ambossar
    .subzoneskip 77,1
step
    #xprate <1.1
    #completewith Rockjaw
    .goto 1426,27.096,72.545,0
    .goto 1426,26.620,73.548,0
    .goto 1426,25.722,72.261,0
    .goto 1426,24.878,72.329,0
    .goto 1426,24.100,73.749,0
    .goto 1426,24.920,74.697,0
    .goto 1426,21.813,72.584,0
    .goto 1426,19.578,72.086,0
    .goto 1426,20.627,70.415,0
    >>Tötet |cRXP_ENEMY_Trogg der Felsenkiefer|r und |cRXP_ENEMY_Bulliger Trogg der Felsenkiefer|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
step
#season 2
    #label Talin
    .goto Dun Morogh,22.601,71.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 233 >> Gebt die Quest Postbeförderung im Eisklammtal ab
    .accept 234 >> Akzeptiert die Quest Postbeförderung im Coldridgetal
    .target Talin Keeneye
step << Paladin/Warlock/Hunter
    #xprate <1.1
    .goto 1426,27.858,76.482,0
    .goto 1426,30.727,76.831,0
    .goto 1426,29.280,75.500,0
    .goto 1426,27.858,76.482,50,0
    .goto 1426,28.946,77.153,50,0
    .goto 1426,29.716,77.605,50,0
    .goto 1426,30.727,76.831,50,0
    .goto 1426,32.814,75.221,50,0
    .goto 1426,31.138,74.048,50,0
    .goto 1426,30.077,74.479,50,0
    .goto 1426,29.280,75.500,50,0
    >>Tötet |cRXP_ENEMY_Trogg der Felsenkiefer|r und |cRXP_ENEMY_Bulliger Trogg der Felsenkiefer|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
step << Paladin/Warlock
    #xprate <1.5
    #loop
    .goto 1426,23.595,72.462,0
    .goto 1426,26.117,74.469,0
    .goto 1426,26.832,74.649,0
    .goto 1426,26.884,72.733,0
    .goto 1426,23.595,72.462,50,0
    .goto 1426,24.290,73.406,50,0
    .goto 1426,24.642,74.138,50,0
    .goto 1426,26.117,74.469,50,0
    .goto 1426,26.832,74.649,50,0
    .goto 1426,26.884,72.733,50,0
    .xp 3+1130 >> Farmt bis 1130+/1400 EP
step << Paladin/Warlock
    #xprate >1.49
    #loop
    .goto 1426,23.595,72.462,0
    .goto 1426,26.117,74.469,0
    .goto 1426,26.832,74.649,0
    .goto 1426,26.884,72.733,0
    .goto 1426,23.595,72.462,50,0
    .goto 1426,24.290,73.406,50,0
    .goto 1426,24.642,74.138,50,0
    .goto 1426,26.117,74.469,50,0
    .goto 1426,26.832,74.649,50,0
    .goto 1426,26.884,72.733,50,0
    .xp 3+995 >> Farmt bis 995+/1400 XP
step
    #label Rockjaw
    .goto 1426,25.077,75.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 234 >> Gebt die Quest Postbeförderung im Eisklammtal ab
    .accept 182 >> Akzeptiert die Quest Die Trollhöhle
    .target Grelin Whitebeard
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nori Pridedrift|r
    >>|cRXP_WARN_Dies startet einen 5-Minuten-Timer für die Quest. Geht in den nächsten 5 Minuten NICHT AFK und meldet euch nicht ab|r
    .accept 3364 >> Akzeptiert die Quest Lieferung des kochend heißen Morgengebräus
    .target Nori Pridedrift
step << Hunter/Paladin
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .goto 1426,25.861,78.197,45,0
    .goto 1426,26.382,78.409,45,0
    .goto 1426,26.031,79.854,45,0
    .goto 1426,23.716,80.257,45,0
    .goto 1426,22.836,79.962,45,0
    .goto 1426,22.684,78.888,45,0
    .goto 1426,21.029,76.459,45,0
    .goto 1426,20.671,75.838,45,0
    >>Tötet |cRXP_ENEMY_Trollwelpe der Frostmane|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step << Hunter
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .xp 4 >> Farmt bis Stufe 4
step << Warlock
#season 2
#completewith next
    .goto Dun Morogh,26.85,79.83,20 >> BETRETET die Trollhöhle
step << Warlock
#loop
#season 2
    #label Feathers
    .goto 1426,28.696,83.148,0
    .goto 1426,30.216,80.254,0
    .goto 1426,28.696,83.148,40,0
    .goto 1426,28.999,82.504,40,0
    .goto 1426,29.298,81.579,15,0
    .goto 1426,29.041,81.168,40,0
    .goto 1426,30.055,82.385,40,0
    .goto 1426,30.381,80.766,40,0
    .goto 1426,30.216,80.254,40,0
    >>Tötet |cRXP_ENEMY_Novize der Frostmane|r in der Trollhöhle. Plündert sie für ihre |cRXP_LOOT_Federglücksbringer|r
    >>|cRXP_WARN_Ihr seid in der Zeit. Geht nicht AFK oder logged euch aus|r
    .complete 1599,1 --Collect Feather Charm (x3)
    .mob Frostmane Novice
step << Warlock/Hunter/Paladin
    #season 2
    #completewith next
    >>|cRXP_WARN_Stellt sicher, dass ihr mindestens einen Silber nach dem Verkaufen habt. Ihr braucht es zum Trainieren von|r |T132204:0|t[Schlangenbiss] << Hunter
    .hs >> Benutzt euren Ruhestein nach Ambossar
step << Paladin/Warlock/Hunter
    #optional
    #completewith next
    #label EnterAnvilmar
    .goto 1426,28.792,68.804,12,0
    >>|cRXP_WARN_Ihr habt 5 Minuten Zeit, um nach Ambossar zurückzukehren, bevor|r |T132791:0|t[Durnans kochend heißes Morgengebräu] |cRXP_WARN_verfällt|r
    .goto 1426,28.939,68.387,20 >> Betretet Ambossar
step << Hunter
    #optional
    #completewith HTraining
    #requires EnterAnvilmar
    .goto Dun Morogh,28.77,66.37,0
    .vendor >>|cRXP_BUY_Erwägt, fehlende Ausrüstungsteile von |cRXP_FRIENDLY_Durnan Pelznaht|r in Anvilmar zu kaufen, um darauf |T134419:0|t|cRXP_WARN_[Runen]|r zu gravieren|r
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Durnan Furcutter|r innerhalb
    .turnin 3364 >> Gebt die Quest Lieferung des kochend heißen Morgengebräus ab
    .accept 3365 >> Akzeptiert die Quest Den Becher zurückbringen
    .vendor >> Verkauft Müll
    .target Durnan Furcutter
    .isQuestAvailable 317
step << Hunter
    #season 2
    #label HTraining
    .goto Dun Morogh,29.175,67.455
    .target Thorgas Grimson
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 3108 >>Gebt die Quest Geätzte Rune ab << Dwarf
    .accept 77660 >> Annehmen Erkundung der Höhlen << Dwarf
    .turnin 77660 >> Gebt die Quest Erkundung der Höhlen ab << Dwarf
    .train 1978 >> Erlernt |T132204:0|t[Schlangengift]
step << Paladin
    #season 2
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bromos Grummner|r innerhalb
    >>|cRXP_WARN_Falls ihr noch keine|r |T132624:0|t[Truhe]|cRXP_WARN_ oder|r |T132602:0|t[Bracers] |cRXP_WARN_gefunden habt, kauft sie beim Händler in Ambossar, anstatt Geld für Trainings-Zauber auszugeben. Runen sind stärker als Zauber, die ihr kaufen könnt|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Bromos Grummner
step << Warlock
    #season 2
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alamar Grimm|r oben
    .turnin 1599 >> Gebt die Quest Anfänge ab
    .target Alamar Grimm
step << Paladin/Warlock/Hunter
    #hardcore
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12 >> Verlasst Ambossar
    .subzoneskip 77,1
step << Paladin/Warlock/Hunter
    #xprate <1.1
    .goto Dun Morogh,29.709,71.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Balir Frosthammer|r
    .turnin 170 >> Gebt die Quest Eine neue Bedrohung ab
    .target Balir Frosthammer
step << !Paladin !Warlock !Hunter
    #xprate <1.1
    #sticky
    #label TroggEnd
    .goto 1426,24.193,77.305,0
    .goto 1426,22.529,74.512,0
    .goto 1426,24.288,73.154,0
    .goto 1426,29.303,77.337,0
    .waypoint 1426,24.193,77.305,55,0
    .waypoint 1426,23.497,76.707,55,0
    .waypoint 1426,22.828,76.017,55,0
    .waypoint 1426,22.529,74.512,55,0
    .waypoint 1426,22.735,73.285,55,0
    .waypoint 1426,23.616,72.634,55,0
    .waypoint 1426,24.288,73.154,55,0
    .waypoint 1426,24.619,74.280,55,0
    .waypoint 1426,25.920,74.571,55,0
    .waypoint 1426,28.812,76.397,55,0
    .waypoint 1426,29.303,77.337,55,0
    >>Tötet |cRXP_ENEMY_Trogg der Felsenkiefer|r und |cRXP_ENEMY_Bulliger Trogg der Felsenkiefer|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
step << !Paladin !Hunter
    #loop
    #label TrollWhelps
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .goto 1426,25.861,78.197,45,0
    .goto 1426,26.382,78.409,45,0
    .goto 1426,26.031,79.854,45,0
    .goto 1426,23.716,80.257,45,0
    .goto 1426,22.836,79.962,45,0
    .goto 1426,22.684,78.888,45,0
    .goto 1426,21.029,76.459,45,0
    .goto 1426,20.671,75.838,45,0
    >>Tötet |cRXP_ENEMY_Trollwelpe der Frostmane|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step
    #requires TroggEnd << !Paladin !Warlock !Hunter
    .goto Dun Morogh,25.076,75.713
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 182 >> Gebt die Quest Die Trollhöhle ab
    .accept 218 >> Akzeptiert die Quest Das gestohlene Tagebuch
    .target Grelin Whitebeard
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nori Pridedrift|r
    .turnin 3365 >> Gebt die Quest Den Becher zurückbringen ab
    .target Nori Pridedrift
step << !Paladin !Warlock !Hunter
    #softcore
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nori Pridedrift|r
    >>|cRXP_WARN_Dies startet einen 5-Minuten-Timer für die Quest. Geht in den nächsten 5 Minuten NICHT AFK und meldet euch nicht ab|r
    .accept 3364 >> Akzeptiert die Quest Lieferung des kochend heißen Morgengebräus
    .target Nori Pridedrift
step << !Paladin !Warlock !Hunter
    #softcore
    #completewith next
    +|cRXP_WARN_Ihr habt 5 Minuten, um |cRXP_LOOT_Grelin Whitebeards Tagebuch|r zu erhalten und zu Ambossar zurückzukehren, bevor|r |T132791:0|t[Durnans kochend heißes Morgengebräu] |cRXP_WARN_verfällt|r
    >>|cRXP_WARN_Falls ihr die Quest nicht schafft, macht euch keine Sorgen, da ihr sie später erneut bekommen könnt|r
step
    #optional
    #label FrostMCave1
    #completewith Grelin
    .goto 1426,27.098,80.707,20 >> Betretet die Höhle der Frostmähnen
step
    #optional
    #requires FrostMCave1
    #completewith Grelin
    .goto 1426,28.298,79.836,15,0
    .goto 1426,29.252,79.043,15,0
    .goto 1426,30.489,80.165,50 >> Reist zu |cRXP_ENEMY_Grik'nir der Kalte|r drinnen
step
    #sticky << Rogue/Hunter
    #label Grelin
    .goto 1426,30.489,80.165,0,0
    >>Tötet |cRXP_ENEMY_Grik'nir der Kalte|r drinnen. Plündert ihn für |cRXP_LOOT_Grelin Whitebeards Tagebuch|r
    >>|cRXP_WARN_Versucht sicherzustellen, dass ihr nach dem Verkaufen noch 2 Silber habt. Ihr werdet sie in Kürze zum Trainieren von Zauber benötigen|r << Warrior
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
    .mob Grik'nir the Cold
--XXSOD xpgate for early 6 training?
step << Rogue
    #season 2
    #hardcore
    .train 400105 >>|cRXP_WARN_Benutzt die|r |T134419:0|t|cRXP_LOOT_[Rune des Schattenschlags]|r |cRXP_WARN_um|r |T133816:0|t[Handschuhe prägen - Schattenschlag] zu lernen
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
--XX HC as softcore have timed quest turnin in Anvilmar (softcore rogues do it after turnin)
step << !Paladin !Warlock !Hunter
    #softcore
    #requires Grelin << Rogue
    #completewith next
    >|cRXP_WARN_>Make sure you will have two silver after vendoring to be able to train level 4 spells|r << Warrior
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .target Geistheiler
step
    #hardcore << !Paladin !Warlock !Hunter
    #optional
    #requires Grelin << Rogue/Hunter
    #completewith Stolen
    .goto 1426,29.252,79.043,15,0
    .goto 1426,28.298,79.836,15,0
    .goto 1426,27.098,80.707,20 >> Verlasst die Höhle der Frostmähnen
    .subzoneskip 132
--XX HC only unless you're a Paladin, Warlock, or Hunter
step << !Paladin !Warlock !Hunter
    #hardcore
    #requires Grelin << Rogue
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nori Pridedrift|r
    .accept 3364 >> Akzeptiert die Quest Lieferung des kochend heißen Morgengebräus
    .target Nori Pridedrift
step
    #hardcore << !Paladin !Warlock !Hunter
    #requires Grelin << Rogue/Hunter
    #label Stolen
    .goto Dun Morogh,25.075,75.715
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 218 >> Gebt die Quest Das gestohlene Tagebuch ab
    .accept 282 >> Akzeptiert die Quest Senirs Beobachtungen
    .target Grelin Whitebeard
step << !Paladin !Warlock !Hunter
    #softcore
    #requires Grelin << Rogue
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Durnan Furcutter|r
    >>|cRXP_WARN_Falls ihr die Quest nicht geschafft habt, überspringt diesen Schritt|r
    .turnin 3364 >> Gebt die Quest Lieferung des kochend heißen Morgengebräus ab
    .accept 3365 >> Akzeptiert die Quest Den Becher zurückbringen
    .vendor >> Verkauft Müll
    .target Durnan Furcutter
    .isOnQuest 3364
step << !Paladin !Warlock !Hunter
    #optional
    #softcore
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Durnan Furcutter|r
    .accept 3365 >> Akzeptiert die Quest Den Becher zurückbringen
    .vendor >> Verkauft Müll
    .target Durnan Furcutter
    .isQuestTurnedIn 3364
    .isQuestAvailable 317
step << !Paladin !Warlock !Hunter
    #softcore
    #requires Grelin << Rogue
    .abandon 3364 >> Brecht die Quest Lieferung des kochend heißen Morgengebräus ab. Ihr werdet sie bald erneut annehmen
step << Rogue
    #season 2
    #softcore
    .train 400105 >>|cRXP_WARN_Benutzt die|r |T134419:0|t|cRXP_LOOT_[Rune des Schattenschlags]|r |cRXP_WARN_um|r |T133816:0|t[Handschuhe prägen - Schattenschlag] zu lernen
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
step << Rogue
    #season 2
    #softcore
    #completewith Observations
    #label Shadowstrike1
    .equip 10 >>|cRXP_WARN_Legt ein paar|r |T132952:0|t|cRXP_LOOT_[Handschuhe]|r |cRXP_WARN_an, falls ihr ein Paar habt oder ein Paar plündert|r
    .train 400105,3
step << Rogue
    #season 2
    #softcore
    #completewith Observations
    #requires Shadowstrike1
    .engrave 10 >>|cRXP_WARN_Graviert eure|r |T132952:0|t|cRXP_LOOT_[Handschuhe]|r mit|r |T133816:0|t[Handschuhe prägen - Schattenschlag]
    .train 400105,3
step << !Paladin !Warlock !Hunter
    #softcore
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nori Pridedrift|r und |cRXP_FRIENDLY_Grelin Whitebeard|r
    .accept 3364 >> Akzeptiert die Quest Lieferung des kochend heißen Morgengebräus
    .goto Dun Morogh,24.980,75.963
    .target +Nori Pridedrift
    .turnin 218 >> Gebt die Quest Das gestohlene Tagebuch ab
    .accept 282 >> Akzeptiert die Quest Senirs Beobachtungen
    .goto Dun Morogh,25.075,75.715
    .target +Grelin Whitebeard
    .isQuestAvailable 3364
step << !Paladin !Warlock !Hunter
    #softcore
    #optional
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >> Gebt die Quest Lieferung des kochend heißen Morgengebräus ab
    .accept 3365 >> Akzeptiert die Quest Den Becher zurückbringen
    .target Durnan Furcutter
step << !Paladin !Warlock !Hunter
    #hardcore
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >> Gebt die Quest Lieferung des kochend heißen Morgengebräus ab
    .accept 3365 >> Akzeptiert die Quest Den Becher zurückbringen
--  .vendor >> Vendor Trash
    .target Durnan Furcutter
    .isQuestAvailable 317




----Start of >1.59x training section----




step << Mage
    #xprate >1.59
    #season 0,1
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marryk Nurribit|r innerhalb
    .turnin 3114 >> Gebt die Quest Glyphen-Memorandum ab << Gnome
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Marryk Nurribit
step << Mage
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marryk Nurribit|r innerhalb
    .turnin 3114 >> Gebt die Quest Glyphen-Memorandum ab << Gnome
    .accept 77667 >> Akzeptiert die Quest Zauberforschung << Gnome
    .turnin 77667 >> Gebt die Quest Zauberforschung ab << Gnome
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Marryk Nurribit
step << Rogue
    #xprate >1.59
    #season 0,1
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 3113 >> Gebt die Quest Verschlüsseltes Memorandum ab << Gnome
    .turnin 3109 >> Gebt die Quest Verschlüsselte Rune ab << Dwarf
    .train 1784 >>Erlernt |T132320:0|t[Verstohlenheit]
    .trainer >>Trainiere deine Klassenfähigkeiten
    .target Solm Hargrin
step << Priest
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Branstock Khalder|r
    .accept 5626 >> Akzeptiert die Quest Dem Licht geneigt << Dwarf
    .target Branstock Khalder
step << Warrior
    #xprate >1.59
    #season 0,1
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 3106 >> Gebt die Quest Einfache Rune ab << Dwarf
    .turnin 3112 >> Gebt die Quest Einfaches Memorandum ab << Gnome
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Thran Khorman
step << Warrior
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thran Khorman|r
    >>Falls ihr 2 Silber habt, erlernt |T132155:0|t[Verwunden] ebenfalls
    .train 100,1 << Warrior --Charge
    .target Thran Khorman





----End of >1.59x training section----
----Start of <1.59x training section----





step << Mage
    #xprate <1.59
    #season 0,1
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marryk Nurribit|r innerhalb
    .turnin 3114 >> Gebt die Quest Glyphen-Memorandum ab << Gnome
    .train 1459 >> Erlernt |T135932:0|t[Arkane Intelligenz]
    .train 116 >> Erlernt |T135846:0|t[Frostblitz]
    .target Marryk Nurribit
step << Mage
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marryk Nurribit|r innerhalb
    .turnin 3114 >> Gebt die Quest Glyphen-Memorandum ab << Gnome
    .accept 77667 >> Akzeptiert die Quest Zauberforschung << Gnome
    .train 1459 >> Erlernt |T135932:0|t[Arkane Intelligenz]
    .train 116 >> Erlernt |T135846:0|t[Frostblitz]
    .target Marryk Nurribit
step << Gnome Mage
    #xprate <1.59
    #season 2
    #completewith next
    .train 401760 >>Benutzt die|cRXP_WARN_ |T134939:0|t|r[Zaubernotizen: NSZEIELA]|cRXP_LOOT_ um das|r |T133816:0|t[Handschuhe prägen - Eislanze] |cRXP_WARN_zu lernen|r
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step << Gnome Mage
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marryk Nurribit|r innerhalb
    .turnin 77667 >> Gebt die Quest Zauberforschung ab
    .target Marryk Nurribit
step << Gnome Mage
    #xprate <1.59
    #season 2
    #label GlovesEquip
    #completewith Observations
    .equip 10,711 >> |cRXP_WARN_Legt die|r |T132961:0|t[Zerlumpte Stoffhandschuhe] an
    .use 711
    .train 401760,3
step << Gnome Mage
    #xprate <1.59
    #season 2
    #requires GlovesEquip
    #completewith Observations
    .engrave 10 >>Graviert eure|cRXP_WARN_ |T132961:0|t[Zerlumpte Stoffhandschuhe] |rmit|r |T133816:0|t[Handschuhe prägen - Eislanze]
    .train 401760,3
step << Rogue
    #xprate <1.59
    #season 0,1
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 3113 >> Gebt die Quest Verschlüsseltes Memorandum ab << Gnome
    .turnin 3109 >> Gebt die Quest Verschlüsselte Rune ab << Dwarf
    .train 1784 >>Erlernt |T132320:0|t[Verstohlenheit]
    .target Solm Hargrin
step << Priest
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Branstock Khalder|r
    .train 589 >> Erlernt |T136207:0|t[Schattenwort: Schmerz]
    .target Branstock Khalder
step << Warrior
    #xprate <1.59
    #season 0,1
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 3106 >> Gebt die Quest Einfache Rune ab << Dwarf
    .turnin 3112 >> Gebt die Quest Einfaches Memorandum ab << Gnome
    .train 100 >> Erlernt |T132337:0|t[Sturmangriff]
    .train 772 >> Erlernt |T132155:0|t[Verwunden]
    .target Thran Khorman
step << Warrior
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 77655 >> Gebt die Quest Die verlorene Rune ab << Dwarf
    .turnin 77656 >> Gebt die Quest Die verlorene Rune ab << Gnome
    .train 100 >> Erlernt |T132337:0|t[Sturmangriff]
    .train 772 >> Erlernt |T132155:0|t[Verwunden]
    .target Thran Khorman




----End of <1.59x training section----





step << !Paladin !Warlock !Hunter
    #optional
    #completewith Stolen
    .goto 1426,28.831,68.698,12 >> Verlasst Ambossar
    .subzoneskip 77,1
step << !Paladin !Warlock !Hunter
    #xprate <1.1
    .goto Dun Morogh,29.709,71.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Balir Frosthammer|r
    .turnin 170 >> Gebt die Quest Eine neue Bedrohung ab
    .target Balir Frosthammer
step << !Paladin !Warlock !Hunter
    #softcore
    #label Stolen
    .goto Dun Morogh,25.075,75.715
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 218 >> Gebt die Quest Das gestohlene Tagebuch ab
    .accept 282 >> Akzeptiert die Quest Senirs Beobachtungen
    .target Grelin Whitebeard
step << !Paladin !Warlock !Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nori Pridedrift|r
    .turnin 3365 >> Gebt die Quest Den Becher zurückbringen ab
    .target Nori Pridedrift
step << Mage
    #completewith next
    .hs >> Benutzt von Euch Ruhestein
step << Dwarf Paladin/Dwarf Hunter
    #season 2
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >> Betretet Ambossar
step << Dwarf Paladin
    #season 2
    #optional
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bromos Grummner|r
    .turnin 77657 >> Gebt die Quest Relikte des Lichts ab
    .target Bromos Grummner
    .isQuestComplete 77657
    .equip 10 --Show step if you don't have gloves
step << Dwarf Hunter
    #season 2
    #optional
    .goto Dun Morogh,29.175,67.455
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 77660 >> Gebt die Quest Erkundung der Höhlen ab
    .target Thorgas Grimson
    .isQuestComplete 77660
    .equip 10 --Show step if you don't have gloves
step << Dwarf Paladin/Dwarf Hunter
    #season 2
    #optional
    #completewith ColdridgePass
    .abandon 77657 >> Brecht die Quest Relikte des Lichts ab, da ihr bereits ein Paar |T132938:0|t[Handschuhe] angelegt habt << Paladin
    .abandon 77660 >> Brecht die Quest Erkundung der Höhlen ab, da ihr bereits ein Paar |T132952:0|t[Handschuhe] angelegt habt << Hunter
step
    .goto Dun Morogh,29.47,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Runenhändler|r
    >>|cRXP_WARN_Passt auf, verkauft keine Ausrüstung, die ihr anlegen könnt|r
    .vendor >> |cRXP_BUY_Verkauft-Schrott und kauft alle |T134419:0|t|cRXP_WARN_[Runen]|r, die ihr braucht, von ihm|r
    .target Rune Broker
    .skipgossip
step
    #label Observations
    >>Sprecht mit |cRXP_FRIENDLY_Mountaineer Thalos|r und |cRXP_FRIENDLY_Hands Springsprocket|r
    .turnin 282 >> Gebt Senirs Beobachtungen ab
    .accept 420 >> Akzeptiert die Quest Senirs Beobachtungen
    .goto Dun Morogh,33.484,71.841
    .target +Mountaineer Thalos
    .accept 2160 >> Akzeptiert die Quest Vorräte für Tannok
    .goto Dun Morogh,33.85,72.24
    .target +Hands Springsprocket
step
    #label ColdridgePass
    .goto Dun Morogh,34.32,70.95,15,0
    .goto Dun Morogh,35.65,65.79,15 >> Reist durch den Eisklamm Pass
    .subzoneskip 800,1
    .isOnQuest 2160
]])

RXPGuides.RegisterGuide([[
#season 2
#classic
#version 1
<< Alliance --!Hunter
#group RestedXP Allianz 1-20
#groupid RXP-SRGCE-A1
#name 6-11 Dun Morogh SoD
#displayname 7-12 Dun Morogh
#next 12-13 Dun Morogh SoD
#defaultfor Dwarf/Gnome

step
    #optional
    #label BoarMeatQuest
    #completewith SenirEnd
    >>Tötet |cRXP_ENEMY_Crag Boars|r, während ihr nach Kharanos reist. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r und |cRXP_LOOT_Crag Eber Ribs|r
    >>|cRXP_WARN_Behaltet alle|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_die ihr für Vorräte für Jetsteam und dann zum Leveln eurer|r |T133971:0|t[Kochkunst] |cRXP_WARN_erhaltet|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .subzoneskip 131 --Kharanos
--XX 270 from priest quest
--XX 340 from quest, 45 from explore
step
    #label SenirEnd
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Senir Whitebeard|r
    .turnin 420 >> Gebt Senirs Beobachtungen ab
    .accept 287 >> Akzeptiert die QuestHöhle der Frostmane--2.5x xp, should be lvl7 here
    .target Senir Whitebeard
step << Warlock
    .goto Dun Morogh,47.329,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gimrizz Shadowcog|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Gimrizz Shadowcog
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ragnar Donnerbräu|r
    .accept 384 >> Akzeptiert die Quest Eberrippchen in Biersauce
    .target Ragnar Thunderbrew
step
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >> Betretet die Donnerbräus Metbrauerei
step
    .goto Dun Morogh,47.217,52.195
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tannok Frosthammer|r
    .turnin 2160,1 >> Gebt die Quest Vorräte für Tannok ab << Warrior/Rogue
    .turnin 2160,2 >> Gebt die Quest Vorräte für Tannok ab << !Warrior !Rogue
    .target Tannok Frosthammer
step << Rogue
    .goto Dun Morogh,47.189,52.403
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kreg Bilmn|r
    >>|cRXP_WARN_Kauft|r |T135641:0|t[Ausbalancierter Wurfdolch]
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Kreg Bilmn
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #label BalancedDaggers1
    +Legt |T135641:0|t[Ausbalancierte Wurfdolche] |cRXP_WARN_an|r
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #requires BalancedDaggers1
    #label DeleteOldDaggers
    .destroy 2947 >> Zerstört die |T135426:0|t [Kleinen Wurfmesser] aus den Taschen von Euch, da sie nicht mehr benötigt werden
step << Rogue
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hogral Bakkan|r im Hinterzimmer
    .trainer >> Trainiere deine Klassenfähigkeiten
    .train 921 >> Trainiert |T133644:0|t|cRXP_PICK_Hacken Taschendiebstahl|r, ihr werdet das später für eine Rune brauchen
    .target Hogral Bakkan
step << Mage
    .goto Dun Morogh,47.498,52.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Magis Sparkmantle|r innerhalb oben
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Magis Sparkmantle
step << Paladin
    .goto Dun Morogh,47.597,52.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Azar Stronghammer|r innerhalb oben
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Azar Stronghammer
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maxan Anvol|r innerhalb
    .accept 5625 >> Gewänder des Lichts annehmen
    .target Maxan Anvol
step << Priest
    .goto Dun Morogh,45.805,54.568
    >>Wirkt |T135929:0|t[Geringes Heilen] (Rang 2) und dann |T135987:0|t[Machtwort: Seelenstärke] auf |cRXP_FRIENDLY_Gebirgsjäger Dolf|r außerhalb
    .complete 5625,1 --Heal and fortify Mountaineer Dolf
    .target Mountaineer Dolf
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maxan Anvol|r innerhalb
    .turnin 5625 >> Gebt die Quest Gewänder des Lichts ab
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Maxan Anvol
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Gastwirt Belm|r
    .home >> Setzt den Ruhestein von Euch in die Brauerei Donnerbräu
    .vendor >> |cRXP_BUY_Kaufe so viel|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_wie ihr euch leisten könnt|r << Mage
    .target Innkeeper Belm
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Innkeeper Belm|r
    >>Kauft |T132800:0|t[|cRXP_LOOT_Rhapsodie Malz|r] von ihm
    .collect 2894,1 --Rhapsody Malt (1)
    .itemcount 2886,6 --Crag Boar Ribs (6)
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ragnar Donnerbräu|r
    .turnin 384 >> Gebt die Quest Eberrippchen in Biersauce ab
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step << Warrior
    .goto Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Granis Swiftaxe|r innerhalb
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Granis Swiftaxe
step << Paladin/Warrior/Rogue
    #optional
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >> Betretet das Schmiedegebäude
step << Gnome Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft ein|r |T135321:0|t[Gladius]
    .target Grawn Thromwyn
    .money <0.0536
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith next
    +|cRXP_WARN_Legt das|r |T135321:0|t[Gladius] an
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft eine|r |T132401:0|t[Große Axt]
    .target Grawn Thromwyn
    .money <0.0460
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith next
    +|cRXP_WARN_Legt die|r |T132401:0|t[Große Axt] an
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft ein|r |T135641:0|t[Stilett]
    .target Grawn Thromwyn
    .money <0.0400
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_Legt das|r |T135641:0|t[Stilett] an
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft einen|r |T133053:0|t[Hölzerner Schlaghammer]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith next
    +Legt den |T133053:0|t[Hölzerner Schlaghammer] |cRXP_WARN_an|r
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Warrior/Rogue/Paladin
    #label Blacksmithing1
    .goto 1426,45.344,51.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tognus Flintfire|r
    >>|cRXP_WARN_Das wird es dir ermöglichen|r |T135248:0|t[Rauer Wetzstein] |cRXP_WARN_herzustellen, welcher den Nahkampfschaden von Euch um 2 erhöht|r << Warrior/Rogue
    >>|cRXP_WARN_Das wird dir ermöglichen|r |T135255:0|t[Rauer Gewichtsstein] |cRXP_WARN_herzustellen, die Nahkampfschäden von Euch um 2 erhöhen|r << Paladin
    >>|cRXP_WARN_Falls ihr das nicht tun wollt, überspringt diesen Schritt|r
    .train 2018 >> Erlerne |T136241:0|t[Schmiedekunst]
    .target Tognus Flintfire
step
    #requires DeleteOldDaggers << Rogue
    .goto Dun Morogh,46.021,51.676
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharek Blackstone|r
    .accept 400 >> Akzeptiert die Quest Werkzeuge für Steelgrill
    .target Tharek Blackstone
step << Rogue
    #season 2
    .goto Dun Morogh,47.658,51.706,5,0
    .goto Dun Morogh,47.160,52.335,5,0
    .goto Dun Morogh,46.917,51.995
    >>|cRXP_WARN_Begebt euch auf das Dach des Kharanos Gasthaus, dann springt auf die Spitze des riesigen Fasses. Folgt dem Pfeil|r
    >>Öffnet die |cRXP_PICK_Rostige Schließkassette|r. Erbeutet sie für die |T134419:0|t[|cRXP_FRIENDLY_Rune des Abschlachtens|r]
    .collect 203993,1 -- Rune of Slaughter (1)
    .train 424992,1
step << Rogue
    #season 2
    .train 424992 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Abschlachtens|r] |cRXP_WARN_zum Trainieren von|r |T236280:0|t[Hinterhältiger Mord]
    .use 203993
    .itemcount 203993,1
step
    #optional
    #completewith next
    >>Tötet |cRXP_ENEMY_Klippeneber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r und |cRXP_LOOT_Klippeneberrippchen|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .subzoneskip 131 --Kharanos
step
    #label StartStocking
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pilot Bellowfiz|r
    >>|cRXP_WARN_Tötet keine |cRXP_ENEMY_Junger Schwarzbär|r auf dem weg|r
    .accept 317 >> Akzeptiert die Quest Vorräte für Jetsteam
    .target Pilot Bellowfiz
step
    .goto Dun Morogh,49.622,48.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pilot Stonegear|r
    .accept 313 >> Akzeptiert die Quest Der altgediente Bau
    .target +Pilot Stonegear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Beldin Steelgrill|r und |cRXP_FRIENDLY_Loslor Rudge|r
    .turnin 400 >> Gebt die Quest Werkzeuge für Steelgrill ab
    .goto Dun Morogh,50.443,49.092
    .target +Beldin Steelgrill
    .accept 5541 >> Akzeptiert die Quest Munition für Rumbleshot
    .goto Dun Morogh,50.084,49.420
    .target +Loslor Rudge
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yarr Hammerstone|r innerhalb unten
    >>|cRXP_WARN_Falls ihr euch das nicht leisten könnt, überspringt diesen Schritt|r
    .train 2575 >>Erlerne |T134708:0|t[Bergbau]
    .target Yarr Hammerstone
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    #completewith QuarryEnd
    .cast 2580 >> |cRXP_WARN_Benutzt die|r |T136025:0|t[Mineraliensuche]
    .usespell 2580
    .train 2575,3 --Mining
step << Hunter
    #season 2
    #sticky
    #label pigmeat
    >>Tötet |cRXP_ENEMY_Schweine|r. Plündert sie für |T134026:0|t[Schweinefleisch aus Dun Morogh]
    .collect 208192,1
    .mob Crag Boar
    .mob Elder Crag Boar
    .mob Large Crag Boar
    .mob Scarred Crag Boar
    .train 425762,1
step
    #loop
    .goto Dun Morogh,52.0,50.1,0
    .goto Dun Morogh,43.5,52.5,0
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    >>Tötet |cRXP_ENEMY_Junger Schwarzbär|r. Plündert sie für |cRXP_LOOT_Dickes Bärenfell|r
    >>Tötet |cRXP_ENEMY_Großer Klippeneber|r und |cRXP_ENEMY_Klippeneber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r und |cRXP_LOOT_Klippeneberrippchen|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob +Young Black Bear
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .disablecheckbox
    .mob Large Crag Boar
    .mob Crag Boar
step
    #optional
    #completewith EvershineEnd
    >>Tötet |cRXP_ENEMY_Großer Klippeneber|r und |cRXP_ENEMY_Klippeneber|r. Plündert sie für |cRXP_LOOT_Klippeneberrippchen|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Large Crag Boar
    .mob Crag Boar
step
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .turnin 317 >> Gebt die Quest Vorräte für Jetsteam ab
    .accept 318 >> Akzeptiert die Quest Immerschimmer
    .target Pilot Bellowfiz
step << Mage
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >> Betretet die Donnerbräus Metbrauerei
step << Mage
    #completewith next
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Gastwirt Belm|r
    .vendor 1247 >> |cRXP_BUY_Kauft so viel|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm, wie ihr euch leisten könnt|r
    .target Innkeeper Belm
    .money <0.0125
    .itemcount 1179,<1 --Ice Cold Milk (1)
    .xp >10,1
step << Warlock
    .xp 8
    --should be 8.5 here with 2.5x
step << Warlock
    .goto Dun Morogh,47.327,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gimrizz Shadowcog|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Gimrizz Shadowcog
step << Warlock
    .goto Dun Morogh,47.273,53.658
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dannie Fizzwizzle|r
    .vendor 6328 >> |cRXP_BUY_Kauft den|r |T133738:0|t[Zauberfoliant des Feuerblitzes (Rang 2)] |cRXP_BUY_von ihr, falls ihr es euch leisten könnt. Falls nicht, könnt ihr es später kaufen|r
    .target Gimrizz Shadowcog
    .money <0.100
step << Priest
    #season 2
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,40.9,45.3
    .goto Dun Morogh,39.5,43.0,0
    .goto Dun Morogh,41.5,36.0,0
    >>Tötet |cRXP_ENEMY_Seher der Frostmane|r. Plündert sie für |T135975:0|t[|cRXP_FRIENDLY_Prophezeiung einer entweihten Zitadelle|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Frostmane Seer
    .train 402852,1
    --410935
step << Priest !NightElf
    #season 2
    #completewith end
    .train 402852 >> |cRXP_WARN_Benutzt das|r |T135975:0|t[|cRXP_FRIENDLY_Prophezeiung einer entweihten Zitadelle|r]
    >>|cRXP_WARN_Ihr müsst 2|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_Buffs erhalten, indem ihr /beten neben einem Altar des Lichts in der Sturmwindkathedrale, in Loch Modan oder im Mystischen Bezirk in Eisenschmiede eingebt|r
    >>|cRXP_WARN_Der |T136057:0|t|cRXP_PICK_Meditation über Elune|r Buff muss von einem anderen Priester-Spieler stammen, indem die /beten-Emote auf euch angewendet wird, während ihr mit /knien kniet. Falls ihr einen anderen Priester mit einem anderen Meditationsbuff seht, fragt ihn/sie danach.|r
    --.use 205947
    .target Altar of Light
    .itemcount 205947,1
step << Mage
    #season 2
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,40.9,45.3
    .goto Dun Morogh,39.5,43.0,0
    .goto Dun Morogh,41.5,36.0,0
    >>Tötet |cRXP_ENEMY_Seher der Frostmane|r. Plündert sie für |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: DEELFANE LMEBM]|r
    .collect 203752,1
    .mob Frostmane Seer
    .train 401768,1
step << Mage
    #completewith end
    #season 2
    .collect 211779,1 >>Ihr braucht ein |T135933:0|t[Verständnisamulett] von einem |cRXP_FRIENDLY_Reagenzienhändler|r, um die |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: DEELFANE LMEBM]|r zu benutzen
    .train 401768 >>|cRXP_WARN_Benutzt|r |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: DEELFANE LMEBM]|r |cRXP_WARN_um |r |T135820:0|t[Lebende Flamme] zu trainieren
    .use 203752
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,50.084,49.420
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Loslor Rudge|r
    >>|cRXP_BUY_Kauft eine|r |T134708:0|t[Spitzhacke] |cRXP_BUY_von ihm|r
    .collect 2901,1 --Mining Pick (1)
    .target Loslor Rudge
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yarr Hammerstone|r innerhalb unten
    .train 2575 >>Erlerne |T134708:0|t[Bergbau]
    .target Yarr Hammerstone
    .train 2018,3 --Blacksmithing
step
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >> Betretet die Donnerbräus Metbrauerei
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Gastwirt Belm|r
    >>|cRXP_BUY_Kauft ein|r |T132800:0|t[Rhapsody-Malzbier] |cRXP_BUY_von ihm|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6 --Crag Boar Rib (6)
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ragnar Donnerbräu|r außerhalb
    .turnin 384 >> Gebt die Quest Eberrippchen in Biersauce ab
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step << Paladin/Warrior/Rogue
    #optional
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >> Betretet das Schmiedegebäude
step << Gnome Warrior
#optional
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft ein|r |T135321:0|t[Gladius]
    .target Grawn Thromwyn
    .money <0.0536
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
#optional
    #completewith next
    +|cRXP_WARN_Legt das|r |T135321:0|t[Gladius] an
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
#optional
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft eine|r |T132401:0|t[Große Axt]
    .target Grawn Thromwyn
    .money <0.0460
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
#optional
    #completewith next
    +|cRXP_WARN_Legt die|r |T132401:0|t[Große Axt] an
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
#optional
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft ein|r |T135641:0|t[Stilett]
    .target Grawn Thromwyn
    .money <0.0400
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
#optional
    #completewith next
    +|cRXP_WARN_Legt das|r |T135641:0|t[Stilett] an
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
#optional
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft einen|r |T133053:0|t[Hölzerner Schlaghammer]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
#optional
    #completewith next
    +Legt den |T133053:0|t[Hölzerner Schlaghammer] |cRXP_WARN_an|r
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Hunter
    #optional
    .xp 6 >> Farmt bis Stufe 6
step << Hunter
    #season 2
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grif Wildheart|r
    .train 1130 >> Erlernt |T132212:0|t[Mal des Jägers]
    >>|cRXP_WARN_Falls ihr nicht genug Geld habt, farmt Mobs um Kharanos. Ihr werdet diesen Zauber später für eine Rune benötigen|r
    .target Grif Wildheart

step
    #optional
    #completewith next
    .goto 1426,42.982,54.755
    .subzone 136 >> Reist zu Der altgediente Bau
    .isOnQuest 313
step
    #loop
    .goto 1426,42.982,54.755,0
    .goto 1426,41.918,54.053,0
    .goto 1426,41.100,48.927,0
    .goto 1426,42.982,54.755,40,0
    .goto 1426,41.901,55.217,40,0
    .goto 1426,41.918,54.053,40,0
    .goto 1426,42.177,53.274,40,0
    .goto 1426,41.100,48.927,40,0
    >>Tötet |cRXP_ENEMY_Wendigos|r und |cRXP_ENEMY_Junger Wendigo|r. Plündert sie für |cRXP_LOOT_Wendigomähne|r
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Wendigo
    .mob Young Wendigo
step
    .goto Dun Morogh,44.13,56.95
    >>Öffnet die |cRXP_PICK_Munitionskiste|r. Plündert sie für |cRXP_LOOT_Munition für Rumbleshot|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #optional
    #completewith next
    .goto 1426,40.632,62.794,40,0
    .goto Dun Morogh,40.682,65.130,15 >>Reist in Richtung |cRXP_FRIENDLY_Hegnar Rumbleshot|r
step << Hunter
    #optional
    .goto Dun Morogh,40.682,65.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    >>|cRXP_BUY_Kauft eine|r |T135611:0|t[Verschnörkelte Donnerbüchse]|cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Falls ihr euch das nicht leisten könnt, überspringt diesen Schritt|r
    .turnin 5541 >> Gebt die Quest Munition für Rumbleshot ab
    .collect 2509,1 -- Ornate Blunderbuss (1)
    .target Hegnar Rumbleshot
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.95
step
    #label BearFur
    .goto Dun Morogh,40.682,65.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    .turnin 5541 >> Gebt die Quest Munition für Rumbleshot ab
    .target Hegnar Rumbleshot
step
    #label Tundra
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tundra MacGrann|r
    .accept 312 >> Akzeptiert die Quest Tundra MacGranns gestohlene Vorräte
    .target Tundra MacGrann
step
    .goto Dun Morogh,38.517,53.927
    >>Öffnet |cRXP_PICK_MacGranns Fleisch-Spind|r. Plündert sie für |cRXP_LOOT_MacGranns Trockenfleisch|r
    >>|cRXP_WARN_Wartet bis |cRXP_ENEMY_Eisbart der Alte|r aus der Höhle patrouilliert. Sobald er aus der Höhle patrouilliert, könnt ihr hineingehen und|r |cRXP_PICK_MacGranns Fleisch-Spind|r plündern
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >> |cRXP_WARN_Klickt hier für eine Videoanleitung|r
    .complete 312,1 --MacGrann's Dried Meats (1)
step
    .goto Dun Morogh,36.4,52.8
    >>Versucht, |T133972:0|t[|cRXP_LOOT_Crag Eber Ribs|r] von den Wildschweinen außerhalb der Höhle zu plündern. |cRXP_WARN_Überspringt diesen Schritt, falls es dort nichts gibt|r
    >>|cRXP_WARN_Stellt sicher, dass ihr ein |T134026:0|t[Dun Morogh Pig Fleisch] geplündert habt. |cRXP_WARN_Ihr werdet es brauchen, um jetzt eine Rune zu bekommen|r << Hunter
    .collect 2886,6 --Crag Boar Rib (6)
    .collect 208192,1 << Hunter --Dun Morogh Pig Meat (1)
step
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >> Gebt die Quest Tundra MacGranns gestohlene Vorräte ab
    .target Tundra MacGrann
step << Hunter
    #season 2
    #requires pigmeat
    .train 425762,1
    .goto Dun Morogh,37.78,42.55
    >>Benutzt |T134026:0|t[Schweinefleisch aus Dun Morogh] neben der Leiche in der Höhle, um |cRXP_ENEMY_Jorul|r zu beschwören
    >>Tötet |cRXP_ENEMY_Jorul|r. Plündert ihn für |T134419:0|t|cRXP_LOOT_[Rune des Flankierens]|r
    .collect 205979,1
    .use 208192
    .mob Jorul
step << Hunter
    #season 2
    .train 425762 >>|cRXP_WARN_Benutzt die|r |T134419:0|t|cRXP_LOOT_[Rune des Flankierens]|r |cRXP_WARN_um|r |T132175:0|t[Flankenangriff] zu trainieren
    .use 205979
    .itemcount 205979,1
step
    #completewith next
    .goto Dun Morogh,30.453,46.005
    .subzone 137 >> Reist nach Bräuhall
step << Mage
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Keeg Gibn|r
    >>|cRXP_BUY_Kauft bis zu 20|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r
    .collect 1179,20
    .target Keeg Gibn
    .isOnQuest 318
step
    #label EvershineEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rejold Gerstenbräu|r
    .turnin 318 >> Gebt die Quest Immerschimmer ab
    .goto Dun Morogh,30.190,45.726
    .target +Rejold Barleybrew
step << Hunter
    #season 2
    #sticky
    #label Marksmanship1
    .goto Dun Morogh,28.852,49.859
    >>Wirkt |T132212:0|t[Mal des Jägers] auf den |cRXP_ENEMY_Raschelnden Busch|r
    >>Tötet die |cRXP_ENEMY_Wilderer der Grimmhauer|r welche spawnen. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune der Treffsicherheit|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Razormane Poacher
    .train 410113,1
step << Hunter
    #season 2
    #sticky
    #label Marksmanship2
    #requires Marksmanship1
    .cast 402265 >>Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune der Treffsicherheit|r]
    .use 206155
    .train 410113,1
step << Priest
    #season 2
    >>Tötet |cRXP_ENEMY_Lepragnom|r. Plündert sie für |T136222:0|t[|cRXP_FRIENDLY_Erinnerung an einen dunklen Zweck|r]
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .mob Leper Gnome
    .train 425216,1
step << Priest
    #season 2
    #loop
    .goto 1426,26.653,43.844,0
    .goto 1426,24.601,40.790,0
    .goto 1426,25.540,45.374,0
    .goto 1426,26.653,43.844,55,0
    .goto 1426,26.587,42.702,55,0
    .goto 1426,26.175,41.822,55,0
    .goto 1426,26.052,40.769,55,0
    .goto 1426,24.739,39.481,55,0
    .goto 1426,24.601,40.790,55,0
    .goto 1426,24.662,41.770,55,0
    .goto 1426,24.487,43.265,55,0
    .goto 1426,24.805,43.848,55,0
    .goto 1426,24.871,44.693,55,0
    .goto 1426,25.540,45.374,55,0
    .goto 1426,25.950,43.930,55,0
    >>Tötet |cRXP_ENEMY_Lepragnom|r. Plündert sie für |T136222:0|t[|cRXP_FRIENDLY_Erinnerung an einen dunklen Zweck|r]
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .mob Leper Gnome
    .train 425216,1
step << Priest
    #season 2
    .train 425216 >>|cRXP_WARN_Benutzt die|r |T136222:0|t[|cRXP_FRIENDLY_Erinnerung an einen dunklen Zweck|r] |cRXP_WARN_zum Trainieren von|r |T237514:0|t[Pest der Leere]
    >>|cRXP_WARN_Ihr müsst einen|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_Buff haben, indem ihr /knien in einem heiligen Bereich eingebt, zum Beispiel die der Abtei von Nordhain, in der Kathedrale von Sturmwind, die Altäre des Lichts in Ambossar, Loch Modan oder der Mystische Bezirk in Eisenschmiede|r
    .use 205940
step << Rogue
    #season 2
    #loop
    .goto 1426,26.653,43.844,0
    .goto 1426,24.601,40.790,0
    .goto 1426,25.540,45.374,0
    .goto 1426,26.653,43.844,55,0
    .goto 1426,26.587,42.702,55,0
    .goto 1426,26.175,41.822,55,0
    .goto 1426,26.052,40.769,55,0
    .goto 1426,24.739,39.481,55,0
    .goto 1426,24.601,40.790,55,0
    .goto 1426,24.662,41.770,55,0
    .goto 1426,24.487,43.265,55,0
    .goto 1426,24.805,43.848,55,0
    .goto 1426,24.871,44.693,55,0
    .goto 1426,25.540,45.374,55,0
    .goto 1426,25.950,43.930,55,0
    >>|T133644:0|t[Taschendiebstahl] |cRXP_ENEMY_Lepragnom|r. Plündert sie für |T134269:0|t[|cRXP_LOOT_Rechte unteres Kartenteil]|r
    >>|cRXP_WARN_Ihr müsst in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_sein, um|r |T133644:0|t[Taschendiebstahl] zu nutzen
    .collect 208218,1 -- Bottom-Right Map Piece (1)
    .mob Leper Gnome
    .train 398196,1
step
    #optional
    #requires ForceFavorRibYes
step
    #optional
    .goto 1426,24.975,50.473,20,0
    .goto 1426,24.682,50.836,20 >> Lauft die Seite des Höhleneingangs hinauf. Springt in die Höhle der Frostmähnen
    .isOnQuest 287
step
    #sticky
    #label Headhunters
    #loop
    .goto 1426,22.390,51.701,0
    .goto 1426,23.136,50.886,0
    .goto 1426,24.301,50.898,0
    .waypoint 1426,22.390,51.701,30,0
    .waypoint 1426,21.113,51.717,30,0
    .waypoint 1426,21.131,51.024,30,0
    .waypoint 1426,22.067,50.215,30,0
    .waypoint 1426,23.136,50.886,30,0
    .waypoint 1426,23.373,51.385,30,0
    .waypoint 1426,23.568,50.924,30,0
    .waypoint 1426,24.301,50.898,30,0
    >>Tötet die |cRXP_ENEMY_Kopfjäger der Frostmane|r in der Höhle
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step << Rogue
    #season 2
    #loop
    .goto 1426,22.390,51.701,0
    .goto 1426,23.136,50.886,0
    .goto 1426,24.301,50.898,0
    .waypoint 1426,22.390,51.701,30,0
    .waypoint 1426,21.113,51.717,30,0
    .waypoint 1426,21.131,51.024,30,0
    .waypoint 1426,22.067,50.215,30,0
    .waypoint 1426,23.136,50.886,30,0
    .waypoint 1426,23.373,51.385,30,0
    .waypoint 1426,23.568,50.924,30,0
    .waypoint 1426,24.301,50.898,30,0
    #completewith ShimmerweedCollect
    >>|T133644:0|t[Taschendiebstahl] |cRXP_ENEMY_Trolle der Frostmane|r. Plündert sie für |T134327:0|t[|cRXP_LOOT_Rechtes oberes Kartenteil]|r
    >>|cRXP_WARN_Ihr müsst in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_sein, um|r |T133644:0|t[Taschendiebstahl] zu nutzen
    .collect 208213,1 -- Top-Right Map Piece (1)
    .mob Frostmane Seer
    .mob Frostmane Headhunter
    .mob Frostmane Snowstrider
    .train 398196,1
step
    #requires Headhunters
    .goto Dun Morogh,22.86,52.16
    >>|cRXP_WARN_Lasst euch in den kleinen, als Sackgasse endenden Raum der Höhle fallen|r
    .complete 287,2 --Fully explore Frostmane Hold
step
    #completewith dm10end
    .deathskip >> Sterbt und respawnt in Kharanos
    .subzoneskip 131
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Gastwirt Belm|r
    >>|cRXP_BUY_Kauft ein|r |T132800:0|t[Rhapsody-Malzbier] |cRXP_BUY_und ein|r |T132800:0|t[Donnerbier] |cRXP_BUY_von ihm|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .itemcount 2886,6 --Crag Boar Rib (6)
    .target Innkeeper Belm
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ragnar Donnerbräu|r außerhalb
    .turnin 384 >> Gebt die Quest Eberrippchen in Biersauce ab
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step
    #label dm10end
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Senir Whitebeard|r
    .turnin 287 >> Gebt die Quest Höhle der Frostmähnen ab
    .accept 291 >> Akzeptiert die Quest Die Berichte
    .target Senir Whitebeard
step << Hunter
    #label dm10end
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grif Wildheart|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .accept 6064 >>Akzeptiert die Quest Die Zähmung der Bestie << Dwarf
    .target Grif Wildheart
step << Dwarf Hunter
    .goto Dun Morogh,48.3,56.9
    >>|cRXP_WARN_Benutzt die|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Großen Klippeneber|r
    .complete 6064,1 --Tame a Large Crag Boar (1)
    .use 15911
    .mob Large Crag Boar
step << Dwarf Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6064 >>Gebt die Quest Die Zähmung der Bestie ab
    .accept 6084 >>Akzeptiert die Quest Die Zähmung der Bestie
    .target Grif Wildheart
step << Dwarf Hunter
    .goto Dun Morogh,49.4,59.4
    >>|cRXP_WARN_Benutzt die|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Schneeleoparden|r
    .complete 6084,1 --Tame a Snow Leopard (1)
    .use 15913
    .mob Snow Leopard
step << Dwarf Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6084 >>Gebt die Quest Die Zähmung der Bestie ab
    .accept 6085 >>Akzeptiert die Quest Die Zähmung der Bestie
    .target Grif Wildheart
step << Dwarf Hunter
    .goto Dun Morogh,50.4,59.7
    >>|cRXP_WARN_Benutzt die|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Eisklauenbär|r
    .complete 6085,1 --Tame an Ice Claw Bear (1)
    .use 15908
    .mob Ice Claw Bear
step << Dwarf Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6085 >>Gebt die Quest Die Zähmung der Bestie ab
    .accept 6086 >>Akzeptiert die Quest Die Ausbildung des Tiers
    .target Grif Wildheart
step << Rogue
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hogral Bakkan|r im Hinterzimmer
    >>|cRXP_WARN_Trainiert nur|r |T132147:0|t[Beidhändigkeit] |cRXP_WARN_und|r |T132307:0|t[Sprinten] |cRXP_WARN_. Trainiert keine anderen Zauber, um das Geld für später zu sparen|r
    .train 674 >> Erlernt |T132147:0|t[Beidhändigkeit]
    .train 2983 >> Erlernt |T132307:0|t[Sprinten]
    .accept 2218 >> Akzeptiert die Quest Straße der Rettung
    .target Hogral Bakkan
step << Paladin
    .goto Dun Morogh,47.597,52.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Azar Stronghammer|r innerhalb oben
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Azar Stronghammer
step << Warrior
    .goto Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Granis Swiftaxe|r innerhalb
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Granis Swiftaxe
step << Mage
    .goto Dun Morogh,47.498,52.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Magis Sparkmantle|r innerhalb oben
    .train 118 >> Erlernt |T136071:0|t[Verwandlung]
    .target Magis Sparkmantle
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maxan Anvol|r innerhalb
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Maxan Anvol
step << Warrior/Rogue/Paladin
    .goto Dun Morogh,47.180,52.610
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thamner Pol|r
    .train 3273 >> Erlerne |T135966:0|t[Erste Hilfe]
    .target Thamner Pol
    .money <0.01
step
    .goto Dun Morogh,49.622,48.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pilot Stonegear|r
    .turnin 313 >> Gebt die Quest Der altgediente Bau
    .target Pilot Stonegear
step << Warrior
    #optional
    #completewith next
    +|cRXP_WARN_Farmt, bis ihr 10s30c Wert an Verkaufswaren habt|r
    .money >0.1030
step << Warrior
    .goto Dun Morogh,47.58,41.58,40,0
    .goto Dun Morogh,50.19,40.79,20,0
    .goto Ironforge,14.90,87.10,40 >> Lauf nach Ironforge
step << Warrior
    .goto Ironforge,62.237,89.628
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bixi Wobblebonk|r oder |cRXP_FRIENDLY_Buliwyf Stonehand|r
    .trainer >> Falls ihr in einer Gruppe seid oder jemanden habt, der euch hilft, |cRXP_ENEMY_Vagash|r jetzt zu töten, trainiert Zweihand-Streitkolben von |cRXP_FRIENDLY_Buliwyf Steinhand|r, ansonsonsten trainiert Wurfwaffen von |cRXP_FRIENDLY_Bixi Wobbelbonk|r. Falls ihr nicht sicher seid, trainiert einfach Wurfwaffen
    .target Bixi Wobblebonk
    .target Buliwyf Stonehand
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brenwyn Winterstahl|r unten
    >>|cRXP_BUY_Kauft die|r |T135425:0|t[Beißendes Wurfmesser] |cRXP_BUY_von ihr|r
    .collect 3107,200 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brenwyn Winterstahl|r unten
    >>|cRXP_BUY_Kauft|r |T135641:0|t[Ausbalancierter Wurfdolch] |cRXP_BUY_von ihr|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Brenwyn Wintersteel
    .xp >11,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith Dirt
    +Legt die |T135425:0|t[Beißendes Wurfmesser] |cRXP_WARN_an|r
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    #optional
    #completewith Dirt
    +Legt |T135641:0|t[Ausbalancierte Wurfdolche] |cRXP_WARN_an|r
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0

]])
