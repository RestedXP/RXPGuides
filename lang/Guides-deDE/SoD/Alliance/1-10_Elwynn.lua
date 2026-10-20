if GetLocale() ~= "deDE" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#name 1-6 Nordhain SoD
#displayname 1-6 Nordhain
#version 1
#group RestedXP Allianz 1-20
#groupid RXP-SRGCE-A1
#defaultfor Human
#next 6-12 Wald von Elwynn SoD
#season 2


step << !Human
    #completewith next
    +Ihr habt einen Leitfaden für Menschen ausgewählt. Ihr solltet die gleiche Startzone wählen, in der ihr startet
step
    #softcore << Warlock
    #optional
    #completewith Within
    .destroy 6948 >> Entfernt den |T134414:0|t[Ruhestein] aus den Taschen von Euch, da er nicht mehr benötigt wird
step
    .goto Elwynn Forest,48.17,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Deputy Willem|r
    .accept 783 >> Akzeptiert die Quest Die Bedrohung von innen
    .target Deputy Willem
step << Warrior/Rogue/Mage/Warlock
    .goto Elwynn Forest,46.4,40.3
    .xp 2 >>Tötet |cRXP_ENEMY_Young Wolves|r bis ihr Stufe 2 erreicht (4 Mobs)
    >>Plündert sie, ihr benötigt 15 Kupfer für Runen und Training << Rogue/Warrior
    >>Plündert sie, ihr benötigt 30 Kupfer für Handschuhe und Runen << Mage
    >>Plündert sie, ihr benötigt 40 Kupfer für Armschienen, Training und Runen << Warlock
step << Mage/Warlock
    .goto Elwynn Forest,47.57,41.43
    >>|cRXP_WARN_Falls ihr nicht 30 Kupfer Wert an Müll habt, tötet mehr Wölfe|r << Mage
    >>|cRXP_WARN_Falls ihr nicht 40 Kupfer Wert an Müll habt, tötet mehr Wölfe|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dermot Johns|r
    >>|cRXP_WARN_Passt auf, verkauft keine Ausrüstung, die ihr anlegen könnt|r
    >>Verkauft Müll und kauft die |T132952:0|t[Dünne Stoffhandschuhe], ihr werdet sie bald gravieren << Mage
    >>Verkauft Müll und kauft die |T132602:0|t[Dünne Stoffarmschienen], ihr werdet sie bald gravieren << Warlock
    .collect 2119,1 << Mage --Thin Cloth Gloves (1)
    .collect 3600,1 << Warlock --Thin Cloth Bracers (1)
    .target Dermot Johns
step << Warrior/Rogue/Mage/Warlock
    .goto Elwynn Forest,48.22,41.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Runenhändler|r
    >>|cRXP_WARN_Passt auf, verkauft keine Ausrüstung, die ihr anlegen könnt|r
    .vendor >>|cRXP_BUY_Verkauft euren Müll und kauft die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Siegesrausches|r] << Warrior
    .vendor >>|cRXP_BUY_Verkauft euren Müll und kauft die |T134419:0|t[|cRXP_FRIENDLY_Rune des Schattenschlags|r]|r << Rogue
    .vendor >>|cRXP_BUY_Kauft alle wichtigen Wirkungsbereich-Runen|r << Mage
    .vendor >>|cRXP_BUY_Kauft alle der folgenden Runen:|r << Warlock
    .collect 204806,1 << Warrior --Rune of Victory Rush
    .collect 204795,1 << Rogue --Rune of Shadowstrike
    .collect 203746,1 << Mage --Spell Notes: Living Flame
    .collect 208799,1 << Mage --Spell Notes: Living Bomb
    .collect 203748,1 << Mage --Spell Notes: Burnout
    .collect 225690,1 << Mage --Spell Notes: Frozen Orb
    .collect 205215,1 << Warlock --Rune of Tactics
    .collect 210824,1 << Warlock --Rune of the Pact
    .collect 211477,1 << Warlock --Rune of Incinerate
    .collect 205230,1 << Warlock --Rune of Haunting
    .collect 228797,1 << Warlock --Grimoire of Fel Armor
    >>Ihr werdet den Rest eurer Runen sehr bald erhalten
    .target Rune Broker
    .skipgossip
step << Warrior/Rogue/Mage
    .train 400105 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Schattenschlags|r], um |T132323:0|t[Schattenschlag] zu trainieren, ihr werdet es bald gravieren << Rogue
    .train 403470 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Siegesrauschs|r] um |T132342:0|t[Siegesrausch] zu trainieren, ihr werdet sie bald eingravieren << Warrior
    .train 401768 >> Benutzt |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: Lebende Flamme|r] um |T135820:0|t[Lebende Flamme] zu erlernen << Mage
    .train 415936 >> Benutzt |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: Lebende Bombe|r] um |T236220:0|t[Lebende Bombe] zu erlernen << Mage
    .train 401759 >> Benutzt |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: Feuerfontäne|r] um |T236207:0|t[Feuriger Schub] zu erlernen << Mage
    .train 440858 >> Benutzt die |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: Gefrorene Kugel|r] um |T135851:0|t[Gefrorene Kugel] zu erlernen << Mage
    .train 416009 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune der Taktiken|r] um |T136150:0|t[Dämonische Taktiken] zu erlernen << Warlock
    .train 425476 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Pakts|r] um |T237562:0|t[Dämonischer Pakt] zu erlernen << Warlock
    .train 211477 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Verbrennens|r] um |T135789:0|t[Verbrennen] zu erlernen << Warlock
    .train 403919 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune der Heimsuchung|r] um |T236298:0|t[Heimsuchung] zu erlernen << Warlock
    .train 403619 >> Benutzt |T133733:0|t[Zauberfoliant der Teufelsrüstung] um |T136156:0|t[Teufelsrüstung] zu erlernen |cRXP_WARN_benutzt es als von Euch Hauptrüstungszauber|r << Warlock
    .use 203746 << Mage --Spell Notes: Living Flame
    .use 208799 << Mage --Spell Notes: Living Bomb
    .use 203748 << Mage --Spell Notes: Burnout
    .use 225690 << Mage --Spell Notes: Frozen Orb
    .use 204806 << Warrior --Rune of Victory Rush
    .use 204795 << Rogue --Rune of Shadowstrike
    .use 205215 << Warlock --Rune of Tactics
    .use 210824 << Warlock --Rune of the Pact
    .use 211477 << Warlock --Rune of Incinerate
    .use 205230 << Warlock --Rune of Haunting
    .use 228797 << Warlock --Grimoire of Fel Armor
step << Warlock
    #optional
    #sticky
    .aura 403619 >> |cRXP_WARN_Stellt sicher, dass ihr eure|r |T136156:0|t[Teufelsrüstung] aktiviert
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Llane Beshere|r innerhalb unten
    .train 6673 >>Erlernt |T132333:0|t[Schlachtruf]
    .accept 77616 >> Akzeptiert die Quest Die verlorene Rune
    .turnin 77616 >> Gebt die Quest Die verlorene Rune ab
    .goto Elwynn Forest,50.242,42.287
    .mob Young Wolf
    .target Llane Beshere
step << Warrior/Rogue/Mage/Warlock
    .equip 10 >> Rüstet die |T132952:0|t[Dünne Stoffhandschuhe] aus << Mage
    .use 2119 << Mage --Thin Cloth Gloves
    .engrave 7 >> Gravieren |T135820:0|t[Lebende Flamme] on von Euch pants << Mage
    .engrave 10 >> Gravieren |T236220:0|t[Lebende Bombee] on von Euch gloves << Mage
    .engrave 5 >> Gravieren |T236207:0|t[Ausgebrannt] on von Euch chest << Mage
    .equip 10 >> Legt die |T132938:0|t[Befleckte Kettenhandschuhe] an << Warrior
    .engrave 10 >> Graviert |T132342:0|t[Siegesrausch] auf eure Handschuhe << Warrior
    .use 2385 << Warrior -- Tarnished Chain Gloves
    .equip 10 >> Legt die |T132952:0|t[Gesprungenen Lederhandschuhe] an << Rogue
    .engrave 10 >> Gravieren |T132323:0|t[Schattenschlagschaden] on von Euch gloves << Rogue
    .use 2125 << Rogue --Cracked Leather Gloves
    .equip 9 >> Legt die |T132602:0|t[Dünne Stoffarmschienen] an << Warlock
    .use 3600 << Warlock --Thin Cloth Bracers
    .engrave 5 >> Gravieren |T136150:0|t[Dämonische Taktiken] on von Euch chest << Warlock
    .engrave 7 >> Gravieren |T237562:0|t[Dämonischer Pakt] on von Euch pants << Warlock
    .engrave 9 >> Gravieren |T135789:0|t[Verbrennen] on von Euch bracers << Warlock
step
    #label Within
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 783 >> Gebt die Quest Die Bedrohung von innen ab
    .accept 7 >> Akzeptiert die Quest Säuberung im Koboldlager
    .target Marshal McBride
step
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Deputy Willem|r
    .accept 5261 >> Akzeptiert die Quest Eagan Peltskinner
    .accept 18 >> Akzeptiert die Quest Bruderschaft der Diebe << Warlock
    .target Deputy Willem
step << Warlock
    #season 2
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Drusilla La Salle|r
    .accept 1598 >> Akzeptiert die Quest Der gestohlene Foliant
    .accept 77621 >> Akzeptiert die Quest Gestohlene Macht << Human
    .turnin 77621 >> Gebt die Quest Gestohlene Macht ab << Human
    .train 348 >> Erlernt |T135817:0|t[Feuerbrand]
    .target Drusilla La Salle
step << Human Warlock
    #season 2
    #label GlovesEquip
    #completewith RestandR
    .equip 10,711 >> |cRXP_WARN_Legt die|r |T132961:0|t[Zerlumpte Stoffhandschuhe] an
    .use 711
    .itemcount 711,1 --Tattered Cloth Gloves (1)
    .train 403919,3
step << Human Warlock
    #season 2
    #requires GlovesEquip
    #completewith RestandR
    .engrave 10 >>|cRXP_WARN_Graviert eure|r |T132961:0|t[Zerlumpte Stoffhandschuhe] |cRXP_WARN_mit|r |T236298:0|t[Heimsuchung]
    .train 403919,3
step << Warlock
    #completewith next
    >>Tötet |cRXP_ENEMY_Rohling der Defias|r. Plündert sie für |cRXP_LOOT_Rotes Sackleinenkopftuch|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
	.mob Defias Thug
step << Warlock
    .goto Elwynn Forest,56.7,44.0
    >>|cRXP_WARN_Lauft ins Zelt des Defias-Lagers|r
    >>Öffnet |cRXP_PICK_Gestohlene Bücher|r. Sammelt die |cRXP_LOOT_Macht der Leere|r
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    >>Tötet |cRXP_ENEMY_Rohling der Defias|r. Plündert sie für |cRXP_LOOT_Rotes Sackleinenkopftuch|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
	.mob Defias Thug
step << Warlock
    #hardcore
    #completewith next
    .goto Elwynn Forest,56.828,43.734
    .hs >> Benutzt euren Ruhestein zum Nordhaintal
step << Warlock
    #softcore
    #completewith next
    .goto 1429,49.527,43.491,0
    .deathskip >> Sterbt und respawnt beim Geistheiler
    .target Geistheiler
step << Warlock
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 1598 >> Gebt die Quest Der gestohlene Foliant ab
    .target Drusilla La Salle
step << Warlock
    #optional
    #completewith next
    .cast 688 >> |cRXP_WARN_Wirkt|r |T136218:0|t[Wichtel beschwören]
    .usespell 688
step << Warlock
    .goto Elwynn Forest,48.17,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Deputy Willem|r
    .turnin 18,1 >> Gebt die Quest Bruderschaft der Diebe ab
    .target Deputy Willem
step << Warlock
    #optional
    #completewith next
    .equip 16,2224 >> Legt den |T135641:0|t[Milizdolch] an
    .use 2224
    .itemcount 2224,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.0
step << Priest/Paladin
    .goto Elwynn Forest,48.22,41.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Runenhändler|r
    >>|cRXP_BUY_Verkauft Euer|r |T135005:0|t[Hemd] |cRXP_BUY_und kauft die |T135975:0|t[|cRXP_FRIENDLY_Prophezeiung einer entweihten Zitadelle|r] von ihm|r << Priest
    >>|cRXP_BUY_Verkauft euer|r |T135005:0|t[Hemd] und |T132540:0|t[Stiefels] |cRXP_WARN_(sie können nicht eingraviert werden)|r |cRXP_BUY_und kauft das |T133745:0|t[|cRXP_FRIENDLY_Gegenstände|r] und das |T134916:0|t[|cRXP_FRIENDLY_Buchband des Richturteils|r] von ihm|r << Paladin
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel
    .collect 226398,1  << Paladin --Testament of Martyrdom
    .collect 205420,1 << Paladin --Libram of Judgement
    >>Ihr werdet den Rest eurer Runen sehr bald erhalten
    .target Rune Broker
    .skipgossip
step << Priest/Paladin
    #sticky
    #label Libram
    .use 205947 << Priest --Prophecy of a Desecrated Citadel
    .use 226398 << Paladin --Testament of martyrdom
    .use 205420 << Paladin --Libram of Judgement
    .train 402852 >> Benutzt die |T135975:0|t[|cRXP_FRIENDLY_Prophezeiung einer entweihten Zitadelle|r] um |T237570:0|t[Homunculi] zu erlernen << Priest
    .train 407798 >> Benutzt das |T133745:0|t[|cRXP_FRIENDLY_Gegenstände|r], um |T135961:0|t[Siegel des Märtyrertums] zu trainieren. |cRXP_WARN_Benutzt es als euer primäres Siegel|r << Paladin
    .equip 18 >> Legt das |T134916:0|t[|cRXP_FRIENDLY_Buchband des Richturteils|r] an. Ihr könnt es nach 30 Sek. benutzen, um |T135891:0|t[Kreuzfahrerstoß] zu erlernen. << Paladin
    .engrave 7 >> Graviert |T237570:0|t[Homunculi] auf eure Hosen << Priest
step << Paladin
    #optional
    #completewith Vermin
    .aura 407798 >> Denkt daran, |T135961:0|t[Siegel des Märtyrertums] als euer Siegel zu benutzen.
step << Paladin
    #sticky
    #optional
    #requires Libram
    #label LibramLearn
    .train 410002 >> Benutzt das |T134916:0|t[|cRXP_FRIENDLY_Buchband des Richturteils|r], um |T135891:0|t[Kreuzfahrerstoß] zu erlernen.
step << Paladin
    #optional
    #requires LibramLearn
    #completewith PalaQ
    .engrave 10 >> |cRXP_WARN_Haltet Ausschau nach|r |T132952:0|t[Handschuhe] |cRXP_WARN_Drops.|r |cRXP_WARN_Graviert sie mit|r |T135891:0|t[Kreuzfahrerstoß]
    >>Falls ihr keine findet, bekommt ihr sie schließlich von einer Klassenquest
step
    #label EaganWolves
    .goto Elwynn Forest,48.941,40.166
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eagan Peltskinner|r
    .turnin 5261 >> Gebt die Quest Eagan Peltskinner ab
    .accept 33 >> Akzeptiert die Quest Wölfe an der Grenze
    .target Eagan Peltskinner
step << Rogue
    #completewith next
    >>Tötet |cRXP_ENEMY_Wolves|r und |cRXP_ENEMY_Koboldgezücht|r auf dem Weg zum Ausbilder
    .complete 33,1 --Tough Wolf Meat (8)
    .complete 7,1 -- Kobold Vermin Slain (10)
    .mob Young Wolf
	.mob Timber Wolf
    .mob Kobold Vermin
step << Rogue
    .goto Elwynn Forest,50.6,40.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jorik Kerridan|r
    .accept 77618 >> Akzeptiert die Quest Dreimal geklaut
    .turnin 77618 >> Gebt die Quest Dreimal geklaut ab
    .train 1784 >> Erlernt |T132320:0|t[Verstohlenheit], ihr benötigt es um |T135131:0|t[Schattenschlag] zu nutzen
    .target Jorik Kerridan
step << Mage
    #optional
    #sticky
    .engrave 15 >> Achtet auf alle Umhang drops. Sobald ihr einen bekommt, graviert |T135851:0|t[Gefrorene Kugel] darauf.
    >>|cRXP_WARN_Dieser Zauber ist äußerst übermächtig|r
step << Mage/Warlock
    #completewith next
    .goto Elwynn Forest,46.2,40.4,40,0
    .goto Elwynn Forest,47.486,41.566
    >>|cRXP_WARN_Bis ihr 50c Wert an Müll habt:|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bruder Danil|r
    >>Verkauft Müll
    >>|cRXP_BUY_Kauft 10|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step << Paladin
    #label Vermin
    #completewith next
    >>Tötet |cRXP_ENEMY_Koboldgezücht|r
    .complete 7,1 --Kill Kobold Vermin (x10)
    .mob Kobold Vermin
step
    #sticky
    #label WolfMeatEnd
    .goto 1429,49.052,38.270,0
    .goto 1429,45.708,38.720,0
    .goto 1429,47.976,39.422,0
    .waypoint 1429,49.052,38.270,45,0
    .waypoint 1429,48.362,37.582,45,0
    .waypoint 1429,47.136,37.636,45,0
    .waypoint 1429,46.870,36.906,45,0
    .waypoint 1429,46.476,37.034,45,0
    .waypoint 1429,46.465,38.272,45,0
    .waypoint 1429,45.896,38.013,45,0
    .waypoint 1429,45.708,38.720,45,0
    .waypoint 1429,46.302,39.994,45,0
    .waypoint 1429,45.718,40.733,45,0
    .waypoint 1429,46.399,41.838,45,0
    .waypoint 1429,46.741,40.987,45,0
    .waypoint 1429,47.703,40.299,45,0
    .waypoint 1429,47.976,39.422,45,0
    >>Tötet |cRXP_ENEMY_Junge Wölfe|r und |cRXP_ENEMY_Wilder Waldwolf|r. Plündert sie für |cRXP_LOOT_Zähes Wolfsfleisch|r
    .complete 33,1 --Collect Tough Wolf Meat (x8)
	.mob Young Wolf
	.mob Timber Wolf
step << !Priest !Paladin
    #loop
    .goto 1429,47.601,36.720,0
    .goto 1429,49.215,37.010,0
    .goto 1429,47.569,34.967,0
    .goto 1429,47.601,36.720,45,0
    .goto 1429,47.381,36.314,45,0
    .goto 1429,47.611,35.863,45,0
    .goto 1429,48.314,36.487,45,0
    .goto 1429,49.070,36.438,45,0
    .goto 1429,49.215,37.010,45,0
    .goto 1429,49.838,36.413,45,0
    .goto 1429,50.105,35.668,45,0
    .goto 1429,49.823,35.161,45,0
    .goto 1429,48.845,35.066,45,0
    .goto 1429,47.569,34.967,45,0
    >>Tötet |cRXP_ENEMY_Koboldgezücht|r
    .complete 7,1 --Kill Kobold Vermin (x10)
    .mob Kobold Vermin
step << !Priest !Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1429,45.718,40.733,0
    .xp 3+720 >> Farmt bis 720+/1400xp
    .mob Young Wolf
	.mob Timber Wolf
step
    #requires WolfMeatEnd
    .goto Elwynn Forest,48.941,40.166
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eagan Peltskinner|r
    .turnin 33,2 >> Gebt die Quest Wölfe an der Grenze ab << Warrior/Paladin/Rogue
    .turnin 33,1 >> Gebt die Quest Wölfe an der Grenze ab << !Warrior !Paladin !Rogue
    .target Eagan Peltskinner
step << Paladin
    #optional
    >>|cRXP_WARN_Passt auf, verkauft keine Ausrüstung, die ihr anlegen könnt|r
    +|cRXP_WARN_Schleift |cRXP_ENEMY_Koboldgezücht|r oder |cRXP_ENEMY_Wolves|r und verkauft Müll bis ihr mindestens 93 Kupfer habt|r
    .money >0.0093
    .mob Kobold Vermin
    .mob Young Wolf
	.mob Timber Wolf
step << !Priest !Paladin
    #xprate >1.59
    #optional
    #loop
    .goto 1429,45.718,40.733,0
    .goto 1429,47.976,39.422,45,0
    .goto 1429,47.703,40.299,45,0
    .goto 1429,46.741,40.987,45,0
    .goto 1429,46.399,41.838,45,0
    .goto 1429,45.718,40.733,45,0
    .goto 1429,46.302,39.994,45,0
    .goto 1429,45.708,38.720,45,0
    .goto 1429,45.896,38.013,45,0
    .xp 3+1060 >> Farmt bis 1060+/1400xp
    .mob Young Wolf
	.mob Timber Wolf
step << Paladin
    .goto Elwynn Forest,47.70,41.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_ Rothgar|r
    >>|cRXP_WARN_Mit Schild und Einhänder früh zu leveln ist aufgrund der Kraft der Schildrunen viel schneller|r
    >>Verkauft euren Müll und kauft das |T134955:0|t[|cRXP_BUY_Kleiner Schild|r]
    .collect 17184,1 --Small Shield (1)
    .target Godric Rothgar
step << Paladin
    .goto Elwynn Forest,47.25,41.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Janos Hammerknuckle|r
    >>|cRXP_WARN_Mit Schild und Einhänder früh zu leveln ist aufgrund der Kraft der Schildrunen viel schneller|r
    >>Verkauft euren Müll und kauft die |T133485:0|t[|cRXP_BUY_Keule|r]
    .collect 2130,1 --Club (1)
    .target Janos Hammerknuckle
step << Paladin
    .equip 16,2130 >> Legt die |T133485:0|t[Keule] an.
    .equip 17,17184 >> Legt den |T134955:0|t[Kleinen Schild] an.
    .use 2130 --Club
    .use 17184 --Small Shield
step << Warrior
    #xprate >1.59
    #optional
    #completewith CleanupEnd
    >>|cRXP_WARN_Passt auf, verkauft keine Ausrüstung, die ihr anlegen könnt|r
    +|cRXP_WARN_Schleift und verkauft Müll bis ihr 1 Silber habt|r
    .money >0.01
    .train 100,1 << Warrior --Charge
    .train 20271,1 << Paladin --Judgement
    .isOnQuest 7
step << Priest
    #optional
    #completewith next
    .equip 8,80 >> |cRXP_WARN_Legt an|r |T132543:0|t[Weiche Pelzgefütterte Schuhe], ihr werdet sie bald mit einer Rune versehen
step << Priest
    .goto Elwynn Forest,47.57,41.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dermot Johns|r
    >>Falls ihr nicht genug für beide Gegenstände |cRXP_WARN_(60 Kupfer)|r habt, tötet mehr |cRXP_ENEMY_wolves|r
    >>|cRXP_WARN_Passt auf, verkauft keine Ausrüstung, die ihr anlegen könnt|r
    >>Verkauft Müll und kauft den |T132495:0|t[Dünner Stoffgürtel] und die |T132952:0|t[Dünne Stoffhandschuhe], ihr werdet sie bald mit einer Rune versehen
    .collect 3599,1 --Thin Cloth Belt (1)
    .collect 2119,1 --Thin Cloth Gloves (1)
    .target Dermot Johns
step << Priest/Mage/Warlock
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bruder Danil|r
    >>Verkauft Müll
    >>|cRXP_BUY_Kauft 10 weitere|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Behaltet 10c oder mehr für später|r << Priest/Mage
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step << Priest/Paladin
    .goto Elwynn Forest,48.22,41.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Runenhändler|r
    >>|cRXP_WARN_Passt auf, verkauft keine Ausrüstung, die ihr anlegen könnt|r
    .vendor >>|cRXP_BUY_Kauft alle der folgenden Runen:|r
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
step << Priest/Paladin
    .train 431663 >> Benutzt die |T135791:0|t[|cRXP_FRIENDLY_Psychosophische Offenbarung|r] um |T136181:0|t[Gedankenstachel] zu erlernen << Priest
    .train 425216 >> Benutzt die |T136222:0|t[|cRXP_FRIENDLY_Erinnerung an einen dunklen Zweck|r] um |T237514:0|t[Pest der Leere] zu erlernen << Priest
    .train 402862 >> Benutzt die |T136222:0|t[|cRXP_FRIENDLY_Erinnerung eines besorgten Akolyten|r] um |T237545:0|t[Sühne] zu erlernen << Priest
    .train 402849 >> Benutzt die |T135975:0|t[|cRXP_FRIENDLY_Prophezeiung des Tods eines Königs|r] um |T136149:0|t[Schattenwort: Tod] zu erlernen << Priest
    .train 410014 >> Benutzt das |T134419:0|t[Rune des Göttlichen Sturms|cRXP_FRIENDLY_], um |T236250:0|t[Göttlicher Sturm]|r zu trainieren. << Paladin
    .train 410008 >> Benutzt das |T134419:0|t[Rune des Rächers|cRXP_FRIENDLY_], um |T135874:0|t[Schild des Rächers]|r zu trainieren. << Paladin
    .train 410013 >> Benutzt das |T134419:0|t[Rune des Hammers der Rechtschaffenen|cRXP_FRIENDLY_], um |T236253:0|t[Hammer der Rechtschaffenen]|r zu trainieren. << Paladin
    .train 440788 >> Benutzt das |T134419:0|t[Rune des Schildes der Rechtschaffenheit|cRXP_FRIENDLY_], um |T236265:0|t[Schild der Rechtschaffenheit]|r zu trainieren. << Paladin
    .use 212552 << Priest --Psychosophic Epiphany
    .use 205940 << Priest --Memory of a Dark Purpose
    .use 205951 << Priest --Memory of a Troubled Acolyte
    .use 205932 << Priest --Prophecy of a King's Demise
    .use 235600 << Paladin --Rune of Divine Storm
    .use 211488 << Paladin --Rune of the Avenger
    .use 235602 << Paladin --Rune of the Hammer of the Righteous
    .use 235604 << Paladin --Rune of the Shield of Righteousness
step << Paladin
    #sticky
    >>|cRXP_WARN_Haltet Ausschau nach|r |T132624:0|t[Truhe]|cRXP_WARN_,|r |cRXP_WARN_oder|r |T133762:0|t[Verschleierung] |cRXP_WARN_die ihr anlegen könnt|r
    .engrave 5 >> Gravieren |T236250:0|t[Göttlicher Sturm] on von Euch chest
    .engrave 15 >> Gravieren |T236265:0|t[Schild der Rechtschaffenheit] on von Euch cloak
step << Priest/Paladin
    .use 6070 << Paladin --Wolfskin Bracers
    .equip 9 >> Zieht die |T132604:0|t[Wolfhautarmschienen] an << Paladin
    .engrave 6 >> Graviert |T136181:0|t[Gedankenstachel] auf euren Gürtel << Priest
    .engrave 8 >> Gravieren |T237514:0|t[Pest der Leere] on von Euch boots << Priest
    .engrave 10 >> Graviert |T136149:0|t[Schattenwort: Tod] auf eure Handschuhe << Priest
    .engrave 7 >> Gravieren |T135874:0|t[Schild des Rächers] on von Euch pants << Paladin
    .engrave 9 >> Gravieren |T236253:0|t[Hammer der Rechtschaffenen] on von Euch bracers << Paladin
step << Priest/Paladin
    #loop
    .goto 1429,47.601,36.720,0
    .goto 1429,49.215,37.010,0
    .goto 1429,47.569,34.967,0
    .goto 1429,47.601,36.720,45,0
    .goto 1429,47.381,36.314,45,0
    .goto 1429,47.611,35.863,45,0
    .goto 1429,48.314,36.487,45,0
    .goto 1429,49.070,36.438,45,0
    .goto 1429,49.215,37.010,45,0
    .goto 1429,49.838,36.413,45,0
    .goto 1429,50.105,35.668,45,0
    .goto 1429,49.823,35.161,45,0
    .goto 1429,48.845,35.066,45,0
    .goto 1429,47.569,34.967,45,0
    >>Tötet |cRXP_ENEMY_Koboldgezücht|r
    .complete 7,1 --Kill Kobold Vermin (x10)
    .mob Kobold Vermin
step << Priest/Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1429,45.718,40.733,0
    .xp 3+720 >> Farmt bis 720+/1400xp
    .mob Young Wolf
	.mob Timber Wolf
step << !Priest !Mage !Warlock !Rogue !Paladin
    .goto Elwynn Forest,47.691,41.417
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Godric Rothgar|r
    .vendor >>Verkauft Müll
    .target Godric Rothgar
step << Mage
    .goto Elwynn Forest,48.22,41.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Runenhändler|r
    >>|cRXP_WARN_Passt auf, verkauft keine Ausrüstung, die ihr anlegen könnt|r
    .vendor >> |cRXP_BUY_Verkauft-Schrott und kauft alle |T134419:0|t|cRXP_WARN_[Runen]|r, die ihr braucht, von ihm|r
    >>Stellt sicher, dass ihr |T134939:0|t[|cRXP_FRIENDLY_Zauber-Notizen: Eislanze|r] gekauft habt, ihr werdet sie für eine zusätzliche Quest benötigen
    .collect 203745,1 --Spell Notes: Ice Lance
    .target Rune Broker
    .skipgossip
step << Mage
    #sticky
    #optional
    #label IceLance
    .train 401760 >> Benutzt |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: Eislanze|r] um |T135844:0|t[Eislanze] zu erlernen
step
    #label CleanupEnd
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 7 >> Gebt die Quest Säuberung im Koboldlager ab
    .accept 15 >> Akzeptiert die Quest Überprüfung der Echokammmine
    .accept 3100 >> Akzeptiert die Quest Einfacher Brief << Warrior
    .accept 3101 >> Akzeptiert die Quest Geweihter Brief << Paladin
    .accept 3102 >> Verschlüsselter Brief annehmen << Rogue
    .accept 3103 >> Akzeptiert die Quest Geheiligter Brief << Priest
    .accept 3104 >> Akzeptiert die Quest Glyphen-Brief << Mage
    .accept 3105 >> Akzeptiert die Quest Besudelter Brief << Warlock
    .target Marshal McBride




----Start of 2x level 4 training----




step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .goto 1429,48.79,41.58,12,0
    .goto 1429,48.975,41.146,12,0
    .goto 1429,49.262,40.633,12,0
    .goto 1429,49.510,40.095,6,0
    .goto 1429,49.691,40.230,6,0
    .goto 1429,49.595,40.673,6,0
    .goto 1429,49.324,40.492,6,0
    .goto 1429,49.436,39.881,10,0
    .goto Elwynn Forest,49.661,39.402,12 >>Reist Richtung |cRXP_FRIENDLY_Khelden Bremen|r oben
step << Mage
    #requires IceLance
    #xprate >1.59
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Khelden Bremen|r innerhalb oben
    .goto Elwynn Forest,49.661,39.402
    .turnin 3104 >> Gebt die Quest Glyphen-Brief ab
    .accept 77620 >> Akzeptiert die Quest Zauberforschung << Human
    .turnin 77620 >> Gebt die Quest Zauberforschung ab << Human
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Khelden Bremen
step << Priest
    #xprate >1.59
    #optional
    #completewith next
    .goto Elwynn Forest,49.3,40.7,15,0
    .goto Elwynn Forest,49.8,40.2,10 >> Reist zu |cRXP_FRIENDLY_Priesterin Anetta|r drinnen unten
step << Priest
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,49.808,39.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Priesterin Anetta|r innerhalb unten
    .turnin 3103 >> Gebt die Quest Geheiligter Brief ab
    .accept 77619 >> Akzeptiert die Quest Meditation über das Licht << Human
    .turnin 77619 >> Abgeben Meditation über das Licht << Human
    .trainer >> Trainiert die Klassensprüche von Euch, |cRXP_WARN_falls ihr euch das nicht leisten könnt, überspringt das Training. Ihr werdet hauptsächlich Runenfähigkeiten nutzen|r
    .target Priestess Anetta
step << Warrior/Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto Elwynn Forest,48.85,41.76,15,0
    .goto Elwynn Forest,49.6,41.8,15 >> Reist zu |cRXP_FRIENDLY_Llane Beshere|r innerhalb unten << Warrior
    .goto Elwynn Forest,49.6,41.8,15 >> Reist zu |cRXP_FRIENDLY_Bruder Sammuel|r innerhalb unten << Paladin
step << Warrior
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,50.242,42.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Llane Beshere|r innerhalb unten
    .turnin 3100 >> Gebt die Quest Einfacher Brief ab
    .accept 77616 >> Akzeptiert die Quest Die verlorene Rune << Human
    .turnin 77616 >> Gebt die Quest Die verlorene Rune ab << Human
    .train 100 >> Erlernt |T132337:0|t[Sturmangriff]
    .target Llane Beshere
step << Paladin
    #xprate >1.59
    #season 2
    #label PalaQ
    .goto Elwynn Forest,50.433,42.124
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bruder Sammuel|r
    .turnin 3101 >> Gebt die Quest Geweihter Brief ab
    .accept 77617 >> Nehmt die Quest Relikte des Lichts an << Human
    .turnin 77617 >> Gebt die Quest Relikte des Lichts ab << Human
    >>|cRXP_WARN_Falls ihr extra Geld habt, könnt ihr es für|r |T135906:0|t[Segen der Macht], |T135959:0|t[Richturteil] |cRXP_WARN_oder|r einen |T135029:0|t[Brustpanzer] |cRXP_WARN_ausgeben, falls ihr diese noch vermisst. Ich würde den Brustpanzer empfehlen|r
    .target Brother Sammuel
step << Paladin
    #optional
    #completewith RestandR
    .use 2385 --Tarnished Chain Gloves
    .equip 10 >> Legt |T132938:0|t|cRXP_LOOT_[Stumpfe Kettenhandschuhe]|r an, falls ihr noch keine anderen Handschuhe gefunden habt
    .engrave 10 >> |cRXP_WARN_Graviert die|r |T132938:0|t|cRXP_LOOT_[Befleckte Kettenhandschuhe]|r |cRXP_WARN_mit|r |T135891:0|t[Kreuzfahrerstoß] << Paladin
step << Priest/Warrior/Paladin
    #xprate >1.59
    #season 2
    #optional
    #completewith RuneWorkers
    .goto 1429,48.198,41.890,12 >> Verlassen Abtei von Nordhain
step
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Deputy Willem|r außerhalb
    .accept 18 >> Akzeptiert die Quest Bruderschaft der Diebe
    .target Deputy Willem
step << !Mage !Priest !Paladin
    .goto Elwynn Forest,48.22,41.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Runenhändler|r
    >>|cRXP_WARN_Passt auf, verkauft keine Ausrüstung, die ihr anlegen könnt|r
    .vendor >> |cRXP_BUY_Verkauft-Schrott und kauft alle |T134419:0|t|cRXP_WARN_[Runen]|r, die ihr braucht, von ihm|r
    .target Rune Broker
    .skipgossip
step
    #xprate >1.59
    #season 2
    #label RuneWorkers
    #loop
    .goto 1429,47.468,36.298,0
    .goto 1429,50.224,34.125,0
    .goto 1429,50.835,38.046,0
    .goto 1429,47.468,36.298,45,0
    .goto 1429,47.247,35.164,45,0
    .goto 1429,47.012,33.828,45,0
    .goto 1429,46.774,33.271,45,0
    .goto 1429,46.271,32.489,45,0
    .goto 1429,47.663,32.058,45,0
    .goto 1429,48.038,33.075,45,0
    .goto 1429,48.795,33.815,45,0
    .goto 1429,49.278,34.610,45,0
    .goto 1429,50.224,34.125,45,0
    .goto 1429,50.245,34.884,45,0
    .goto 1429,51.058,35.582,45,0
    .goto 1429,52.062,35.801,45,0
    .goto 1429,51.505,38.064,45,0
    .goto 1429,50.835,38.046,45,0
    >>Tötet |cRXP_ENEMY_Koboldtagelöhner|r
    .complete 15,1 --Kill Kobold Worker (x10)
    .mob Kobold Worker
step << Rogue
    #xprate >1.59
    #season 2
    #requires Shadowstrike2
    .goto Elwynn Forest,50.314,39.916
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jorik Kerridan|r
    .turnin 3102 >> Gebt die Quest Verschlüsselter Brief ab
    .target Jorik Kerridan
step << !Warlock
    #xprate >1.59
    #season 2
    #loop
    #label EarlyRedBurlapBandana
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    >>Tötet |cRXP_ENEMY_Rohling der Defias|r. Plündert sie für |cRXP_LOOT_Rotes Sackleinenkopftuch|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
	.mob Defias Thug
step
    #optional
    #softcore
    #completewith next
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .target Geistheiler
step << !Warlock
    #xprate >1.59
    #season 2
    #requires Shadowstrike2 << Rogue
    #requires EarlyLibram4 << Paladin
    .goto Elwynn Forest,48.17,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Deputy Willem|r
    .turnin 18,1 >> Gebt die Quest Bruderschaft der Diebe ab << Rogue
    .turnin 18,2 >> Gebt die Quest Bruderschaft der Diebe ab << Paladin
    .turnin 18,2 >> Gebt die Quest Bruderschaft der Diebe ab << Priest
    .turnin 18,3 >> Gebt die Quest Bruderschaft der Diebe ab << Warrior
    .turnin 18,5 >> Gebt die Quest Bruderschaft der Diebe ab << Mage
    .turnin 18 >> Gebt die Quest Bruderschaft der Diebe ab << !Warrior !Priest !Mage !Rogue !Warlock !Paladin
    .target Deputy Willem
step << Rogue
    #xprate >1.59
    #season 2
    #completewith RestandR
    .equip 16,2224 >> Legt den |T135641:0|t[Milizdolch] an
    .use 2224
    .itemcount 2224,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.01
step << Paladin
    #xprate >1.59
    #season 2
    #completewith RestandR
    .equip 16,5580 >> Legt |T133052:0|t[Milizhammer] an
    .use 5580
    .itemcount 5580,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.97
step << Warrior
    #completewith RestandR
    .equip 16,1161 >> Legt das |T135274:0|t[Milizkurzschwert]
    .use 1161
    .itemcount 1161,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.01
step << Human Priest
    #xprate >1.59
    #optional
    #completewith next
    .goto Elwynn Forest,49.3,40.7,15,0
    .goto Elwynn Forest,49.8,40.2,10 >> Reist zu |cRXP_FRIENDLY_Priesterin Anetta|r drinnen unten
step << Human Priest
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,49.808,39.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Priestess Anetta|r
    .accept 5623 >> Akzeptiert die Quest Dem Licht geneigt
    .target Priestess Anetta
    .isOnQuest 77619
    .xp <5,1
step << Human Warrior/Human Paladin
    #xprate >1.59
    #season 2
    #optional
    #completewith next
    .goto Elwynn Forest,48.85,41.76,15,0
    .goto Elwynn Forest,49.6,41.8,15 >> Reist zu |cRXP_FRIENDLY_Llane Beshere|r innerhalb unten << Warrior
    .goto Elwynn Forest,49.6,41.8,15 >> Reist zu |cRXP_FRIENDLY_Bruder Sammuel|r innerhalb unten << Paladin
step << Human Paladin
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,50.433,42.124
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brother Sammuel|r innerhalb downstairs
    .turnin 77617 >> Gebt die Quest Relikte des Lichts ab
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Brother Sammuel
    .isOnQuest 77617
step << Human Paladin
    #xprate >1.59
    #season 2
    #completewith RestandR
    #label GlovesEquip
    .equip 10,2385 >> |cRXP_WARN_Legt die|r |T132938:0|t|cRXP_LOOT_[Befleckte Kettenhandschuhe]|r
    .use 2385
    .itemcount 2385,1
    .train 403470,3 << Warrior
    .train 410002,3 << Paladin
    .itemStat 10,LEVEL,<5
step
    #xprate >1.59
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 15 >> Gebt die Quest Überprüfung der Echokammmine ab
    .accept 21 >> Akzeptiert die Quest Scharmützel in der Echokammmine
    .target Marshal McBride
step << Human Paladin/Warrior/Priest
    #xprate >1.59
    #season 2
    #optional
    #completewith next
    .goto 1429,48.279,42.171,8 >>Verlassen Abtei von Nordhain
    .isQuestTurnedIn 15 << Warrior/Priest
    .isQuestTurnedIn 18 << Paladin
step << Warlock
    #xprate >1.59
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 3105 >> Gebt die Quest Besudelter Brief ab
    .train 172 >>Erlernt |T136118:0|t[Verderbnis]
    .target Drusilla La Salle



----End of 2x training section----


step << Priest/Paladin
    .goto Elwynn Forest,48.22,41.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Runenhändler|r
    >>|cRXP_WARN_Passt auf, verkauft keine Ausrüstung, die ihr anlegen könnt|r
    .vendor >> |cRXP_BUY_Verkäufer-Gegenstände verkaufen und kauft alle |T134419:0|t|cRXP_WARN_[Runen]|r, die ihr wollt, von ihm|r
    .target Rune Broker
    .skipgossip
step
    #optional
    #completewith next
    .goto Elwynn Forest,47.63,32.07,20 >> Betretet die Echokammmine
step
    #loop
    .goto 1429,47.784,31.540,0
    .goto 1429,48.659,29.161,0
    .goto 1429,50.491,26.867,0
    .goto 1429,47.784,31.540,30,0
    .goto 1429,47.909,30.850,30,0
    .goto 1429,48.107,30.271,30,0
    .goto 1429,48.428,30.248,30,0
    .goto 1429,48.398,29.842,30,0
    .goto 1429,48.659,29.161,30,0
    .goto 1429,48.245,28.598,30,0
    .goto 1429,48.637,27.354,30,0
    .goto 1429,48.501,26.700,30,0
    .goto 1429,49.979,25.620,30,0
    .goto 1429,50.491,26.867,30,0
    >>Tötet |cRXP_ENEMY_Koboldhilfsarbeiter|r innerhalb der Echokammmine
    .complete 21,1 --Kill Kobold Laborer (x12)
    .mob Kobold Laborer
step
	#softcore
    #completewith next
    .deathskip >> Sterbt und respawnt beim Geistheiler in Nordhain
    .target Geistheiler
step
    #xprate >1.49
    #optional
    #completewith RestandR
    .abandon 3904 >> Brecht die Quest Millys Ernte ab
step
    #xprate >1.49
    #optional
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    .xp 5+1205 >> Farmt bis 1205+/2800xp << Paladin/Warrior
    .xp 5+1040 >> Farmt bis 1040+/2800xp << !Paladin !Warrior !Priest
    .xp 5+875 >> Farmt bis 875+/2800xp << Priest
    .mob Defias Thug
step
    #optional
    #softcore
    #completewith #label RestandR
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .target Geistheiler
    .subzoneskip 59,1
step
    #label RestandR
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marshal McBride|r innerhalb
    .turnin 21,1 >> Gebt die Quest Scharmützel in der Echokammmine ab << Rogue
    .turnin 21,2 >> Gebt die Quest Scharmützel in der Echokammmine ab << Warrior/Paladin
    .turnin 21,3 >> Gebt die Quest Scharmützel in der Echokammmine ab << !Warrior !Paladin !Rogue
    .accept 54 >> Akzeptiert die Quest Meldung in Goldhain
    .target Marshal McBride
step << Priest
    #optional
    #season 2
    .goto Elwynn Forest,49.808,39.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Priesterin Anetta|r innerhalb
    .accept 5623 >> Akzeptiert die Quest Dem Licht geneigt
    .target Priestess Anetta
step
    .goto Elwynn Forest,45.563,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Falkhaan Isenstrider|r
    .accept 2158 >> Akzeptiert die Quest Ruhe und Entspannung
    .target Falkhaan Isenstrider
]])


RXPGuides.RegisterGuide([[
#classic
#season 2
#version 1
<< Alliance
#group RestedXP Allianz 1-20
#groupid RXP-SRGCE-A1
#name 6-12 Wald von Elwynn SoD
#displayname 6-12 Wald von Elwynn
#next 12-13 Dun Morogh SoD
#defaultfor Human

step
    #season 0,1 << Rogue
    #hardcore
    #completewith next
    .subzone 87 >> Lauf nach Goldhain
step
    #hardcore
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .turnin 54 >> Gebt die Quest Meldung in Goldhain ab
    .accept 62 >> Die Fargodeep Mine annehmen
    .target Marshal Dughan
step
    #season 0,1 << Rogue
    #softcore
    #completewith Goldshire
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .target Geistheiler
    .subzoneskip 87
step
    #softcore
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .turnin 54 >> Gebt die Quest Meldung in Goldhain ab
    .accept 62 >> Die Fargodeep Mine annehmen
    .target Marshal Dughan
step << Warrior
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>|cRXP_BUY_Kauft einen|r |T135321:0|t[Gladius] |cRXP_BUY_von ihr, falls ihr es euch leisten könnt|r
    .collect 2488,1 --Collect Gladius (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior
    #completewith next
    +|cRXP_WARN_Legt das|r |T135321:0|t[Gladius] an
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>|cRXP_BUY_Kauft ein|r |T135641:0|t[Stilett] |cRXP_BUY_von ihr, falls ihr es euch leisten könnt|r
    .collect 2494,1 --Collect Stiletto (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0400
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith GSHS
    +|cRXP_WARN_Legt das|r |T135641:0|t[Stilett] an
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Paladin
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>|cRXP_WARN_Kauft einen|r |T133053:0|t[Hölzerner Schlaghammer] |cRXP_BUY_von ihr, falls ihr es euch leisten könnt|r
    .collect 2493,1 --Collect Wooden Mallet (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0631
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #completewith next
    +Legt den |T133053:0|t[Hölzerner Schlaghammer] |cRXP_WARN_an|r
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Warrior/Rogue/Paladin
    .goto Elwynn Forest,41.706,65.544
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Smith Argus|r
    >>|cRXP_WARN_Das wird es dir ermöglichen|r |T135248:0|t[Rauer Wetzstein] |cRXP_WARN_herzustellen, welcher den Nahkampfschaden von Euch um 2 erhöht|r << Warrior/Rogue
    >>|cRXP_WARN_Das wird dir ermöglichen|r |T135255:0|t[Rauer Gewichtsstein] |cRXP_WARN_herzustellen, die Nahkampfschäden von Euch um 2 erhöhen|r << Paladin
    >>|cRXP_WARN_Falls ihr das nicht tun wollt, überspringt diesen Schritt|r
    .train 2018 >> Erlerne |T136241:0|t[Schmiedekunst]
    .target Smith Argus
step << Mage/Priest/Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,41.706,65.786
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Andrew Krighton|r
    .vendor >> Verkauft Müll
    .target Andrew Krighton
--  .money >1.0
step
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_William Pestle|r
    .accept 60 >> Koboldkerzen annehmen
    .target William Pestle
step
    #label GSHS
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Farley|r
    .turnin 2158,1 >> Gebt die Quest Ruhe und Entspannung ab << Rogue/Warrior
    .turnin 2158,2 >> Gebt die Quest Ruhe und Entspannung ab << !Rogue !Warrior
    .home >> Setzt euren Ruhestein in Goldhain
    .target Innkeeper Farley
step
    #optional
    .xp 6 >> Grinde bis 6
step << Rogue
    .goto Elwynn Forest,43.96,65.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brog Hamfist|r
    .vendor 151 >>|cRXP_BUY_Kauft die|r |T135641:0|t[Ausbalancierten Wurfdolche] |cRXP_BUY_von ihm, falls ihr es euch leisten könnt|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .disablecheckbox
    .target Brog Hamfist
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
step << Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >> Geht nach unten
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maximillian Crowe|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Maximillian Crowe
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cylina Darkheart|r
    .vendor 6374 >> |cRXP_BUY_Kauft das|r |T133738:0|t[Zauberfoliant des Blutpakts (Rang 1)] |cRXP_BUY_von ihr, falls ihr es euch leisten könnt. Falls nicht, könnt ihr es später kaufen.|r
    .target Cylina Darkheart
    .money <0.0100
    .itemcount 16321,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20397,1 --Blood Pact (Rank 1)
step << Mage/Rogue/Priest
    #optional
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Geht im Gasthaus nach oben
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Priest
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Priesterin Josetta|r
	.target Priestess Josetta
    .goto Elwynn Forest,43.283,65.721
    .turnin 5623 >> Gebt die Quest Dem Licht geneigt ab
    .accept 5624 >> Gewänder des Lichts annehmen
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Rogue
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Rogue/Warrior
    .money <0.01
    .goto Elwynn Forest,43.877,66.546,9,0 << Warrior
    .goto Elwynn Forest,43.392,65.550
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Michelle Belle|r oben
    .target Michelle Belle
    .train 3273 >> Erlerne |T135966:0|t[Erste Hilfe]
step << Warrior/Rogue
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Farley|r
    .vendor 295 >> |cRXP_BUY_Kauft|r |T133995:0|t[Pikanter Dalarankäse] |cRXP_BUY_von ihm, bis euch nur noch 1 Silber bleibt|r << Warrior
    .vendor 295 >> |cRXP_BUY_Kauft bis zu 20|r |T133995:0|t[Pikanter Dalarankäse] |cRXP_BUY_von ihm|r << Rogue
    .collect 414,20 --Dalaran Sharp (20)
    .disablecheckbox
    .target Innkeeper Farley
    .itemcount 414,<7 --Dalaran Sharp (<7)
    .money < 0.1
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
step
    #requires DeleteOldDaggers << Rogue
    .goto Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Remy "Zweifach"|r
    .accept 47 >> Tauschhandel mit Goldstaub annehmen
    .target Remy "Two Times"
step << Priest
    .goto Elwynn Forest,48.148,68.046
    >>|cRXP_WARN_Wirkt|r |T135929:0|t[Geringes Heilen (Rang 2)] |cRXP_WARN_und|r |T135987:0|t[Machtwort: Seelenstärke] |cRXP_WARN_auf|r |cRXP_FRIENDLY_Wache Roberts|r
    .complete 5624,1 --Heal and fortify Guard Roberts
    .target Guard Roberts
step
    #sticky
    #label BoarMeatQuest
    #loop
    .goto Elwynn Forest,32.516,85.443,0
    .goto Elwynn Forest,31.081,81.488,0
    .goto Elwynn Forest,36.182,87.799,0
    .goto Elwynn Forest,41.733,86.986,0
    .goto Elwynn Forest,37.741,78.265,0
    .goto Elwynn Forest,41.576,69.499,0
    .waypoint Elwynn Forest,31.15,85.36,40,0
    .waypoint Elwynn Forest,33.08,86.64,40,0
    .waypoint Elwynn Forest,33.51,85.22,40,0
    .waypoint Elwynn Forest,32.17,83.88,40,0
    >>Tötet |cRXP_ENEMY_Steinhauereber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    .collect 769,4,86,1 --Chunk of Boar Meat (4)
    .mob Stonetusk Boar
step << Warrior
    #season 2
    #sticky
    #completewith next
    >>Haltet Ausschau nach |cRXP_FRIENDLY_Wandernder Schwertkämpfer|r. Wenn ihr ihn findet und ihn zum Duell herausfordert, gewinnt ihr die Rune |T132334:0|t[|cRXP_FRIENDLY_Blutraserei|r]
    >>|cRXP_WARN_Er hat mehrere Spawn-Punkte und kann sich immer nur an einem davon aufhalten|r
    >>|cRXP_WARN_Ihr werdet ihn wahrscheinlich nicht solo auf diesem Level schlagen können. Überspringt diesen Schritt, wenn niemand da ist, euch zu helfen. Ihr könnt nach Level 10 zurückkommen und schauen, ob er noch da ist.|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 412507,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r und |cRXP_FRIENDLY_Ma Stonefield|r << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tantchen Bernice Stonefield|r << !Rogue
    .accept 85 >> Verlorene Halskette annehmen
    .goto Elwynn Forest,34.486,84.253
    .target +"Auntie" Bernice Stonefield
    .accept 88 >> Prinzessin muss sterben! annehmen << Rogue
	.goto Elwynn Forest,34.660,84.482 << Rogue
    .target +Ma Stonefield << Rogue
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone1
    #completewith NecklaceStart
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r und |cRXP_ENEMY_Koboldminenarbeiter|r. Öffnen |cRXP_PICK_Ramponierte Truhe|r. Plündert sie für |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r << Warrior/Rogue
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r und |cRXP_ENEMY_Kobold Miners|r. Öffnen |cRXP_PICK_Ramponierte Truhe|r. Plündert sie für |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r und |T132889:0|t|cRXP_LOOT_[Leinenstoff]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone1
    #label RoughStoneCraft1
    #completewith NecklaceStart
    +|T136241:0|t[Schmiedet] |cRXP_WARN_den|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r |cRXP_WARN_zu|r |T135248:0|t[Rauer Wetzstein] << Warrior/Rogue
    +|T136241:0|t[Schmiede] |cRXP_WARN_den|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r |cRXP_WARN_und|r |T132889:0|t|cRXP_LOOT_[Leinenstoff]|r |cRXP_WARN_zu|r |T135255:0|t[Rauer Wetzstein] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft1
    #completewith NecklaceStart
    .cast 2828 >>|cRXP_WARN_Benutzt den|r |T135248:0|t[Rauer Wetzstein] |cRXP_WARN_auf der aktuellen Waffe von Euch|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Benutzt den|r |T135255:0|t[Rauer Gewichtsstein] |cRXP_WARN_auf eurer aktuellen Waffe|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
step
    #optional
    #completewith NecklaceStart
    .goto Elwynn Forest,37.81,85.40,0
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r und |cRXP_ENEMY_Koboldminenarbeiter|r. Plündert sie für |cRXP_LOOT_Große Kerze|r und |cRXP_LOOT_Goldstaub|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label NecklaceStart
    .goto Elwynn Forest,43.131,85.722
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 85 >> Gebt die Quest Die verlorene Halskette ab
    .accept 86 >> Kuchen für Billy annehmen
    .target Billy Maclure
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Maybell Maclure|r
    .accept 106 >> Junge liebende annehmen
    .target Maybell Maclure
step
    #optional
    #completewith Lovers
    .goto Elwynn Forest,42.357,89.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Joshua Maclure|r
    .vendor >>|cRXP_BUY_Kauft so viel|r |T132815:0|t[Eiskalt Milk]|cRXP_WARN_wie ihr euch leisten könnt|r << Priest/Warlock/Mage
    .vendor >>|cRXP_WARN_verkauft Schrott|r << !Priest !Warlock !Mage
    .target Joshua Maclure
    .subzoneskip 64,1 --The Maclure Vineyards
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone2
    #completewith Lovers
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r und |cRXP_ENEMY_Koboldminenarbeiter|r. Öffnen |cRXP_PICK_Ramponierte Truhe|r. Plündert sie für |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r << Warrior/Rogue
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r und |cRXP_ENEMY_Kobold Miners|r. Öffnen |cRXP_PICK_Ramponierte Truhe|r. Plündert sie für |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r und |T132889:0|t|cRXP_LOOT_[Leinenstoff]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone2
    #label RoughStoneCraft2
    #completewith Lovers
    +|T136241:0|t[Schmiedet] |cRXP_WARN_den|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r |cRXP_WARN_zu|r |T135248:0|t[Rauer Wetzstein] << Warrior/Rogue
    +|T136241:0|t[Schmiede] |cRXP_WARN_den|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r |cRXP_WARN_und|r |T132889:0|t|cRXP_LOOT_[Leinenstoff]|r |cRXP_WARN_zu|r |T135255:0|t[Rauer Wetzstein] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft2
    #completewith Lovers
    .cast 2828 >>|cRXP_WARN_Benutzt den|r |T135248:0|t[Rauer Wetzstein] |cRXP_WARN_auf der aktuellen Waffe von Euch|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Benutzt den|r |T135255:0|t[Rauer Gewichtsstein] |cRXP_WARN_auf eurer aktuellen Waffe|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
step
    #optional
    #completewith Lovers
    .goto Elwynn Forest,37.81,85.40,0
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r und |cRXP_ENEMY_Koboldminenarbeiter|r. Plündert sie für |cRXP_LOOT_Große Kerze|r und |cRXP_LOOT_Goldstaub|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label Lovers
    .goto Elwynn Forest,29.840,85.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tommy Joe Stonefield|r
    .turnin 106 >> Gebt die Quest Junge Liebende ab
    .accept 111 >> Gespräch mit Oma annehmen
    .target Tommy Joe Stonefield
step
    #requires BoarMeatQuest
    #label Pie
    .goto Elwynn Forest,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tantchen Bernice Stonefield|r
    .turnin 86 >> Gebt die Quest Pastete für Billy ab
    .accept 84 >> Zurück zu Billy annehmen
    .target "Auntie" Bernice Stonefield
step
    .goto 1429,34.945,83.855
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Oma Stonefield|r innerhalb
    .turnin 111 >> Gebt die Quest Gespräch mit Oma ab
    .accept 107 >> Nachricht an William annehmen
    .target Gramma Stonefield
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone3
    #completewith Exchange
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r und |cRXP_ENEMY_Koboldminenarbeiter|r. Öffnen |cRXP_PICK_Ramponierte Truhe|r. Plündert sie für |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r << Warrior/Rogue
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r und |cRXP_ENEMY_Kobold Miners|r. Öffnen |cRXP_PICK_Ramponierte Truhe|r. Plündert sie für |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r und |T132889:0|t|cRXP_LOOT_[Leinenstoff]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
    .subzoneskip 87 --Goldshire
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone3
    #label RoughStoneCraft3
    #completewith Exchange
    +|T136241:0|t[Schmiedet] |cRXP_WARN_den|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r |cRXP_WARN_zu|r |T135248:0|t[Rauer Wetzstein] << Warrior/Rogue
    +|T136241:0|t[Schmiede] |cRXP_WARN_den|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r |cRXP_WARN_und|r |T132889:0|t|cRXP_LOOT_[Leinenstoff]|r |cRXP_WARN_zu|r |T135255:0|t[Rauer Wetzstein] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
    .subzoneskip 87 --Goldshire
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft3
    #completewith Exchange
    .cast 2828 >>|cRXP_WARN_Benutzt den|r |T135248:0|t[Rauer Wetzstein] |cRXP_WARN_auf der aktuellen Waffe von Euch|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Benutzt den|r |T135255:0|t[Rauer Gewichtsstein] |cRXP_WARN_auf eurer aktuellen Waffe|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
    .subzoneskip 87 --Goldshire
step << Warrior
    #season 2
    #sticky
    #label KoboldRune
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .waypoint Elwynn Forest,39.14,82.87,35,0
    .waypoint Elwynn Forest,39.16,84.79,35,0
    .waypoint Elwynn Forest,37.81,85.40,35,0
    .waypoint Elwynn Forest,36.76,83.19,35,0
    .waypoint Elwynn Forest,38.02,81.70,35,0
    >>Tötet |cRXP_ENEMY_Koboldminenarbeiter|r und |cRXP_ENEMY_Koboldtunnelgräber|r. Plündert sie für |T134168:0|t|cRXP_LOOT_[Abgetrennter Koboldkopf]|r
    >>|cRXP_WARN_Das ist einer von drei Gegenständen, die ihr benötigt, um eure|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Verwüstung|r] |cRXP_WARN_freizuschalten, wenn ihr später nach Sturmwind kommt|r
    .collect 204476,1 -- Severed Kobold Head (1)
    .mob Kobold Tunneler
    .mob Kobold Miner
    .mob Goldtooth
    .train 403475,1
step << Rogue
    #season 2
    #sticky
    #label KoboldRune
    #completewith Exchange
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .waypoint Elwynn Forest,39.14,82.87,35,0
    .waypoint Elwynn Forest,39.16,84.79,35,0
    .waypoint Elwynn Forest,37.81,85.40,35,0
    .waypoint Elwynn Forest,36.76,83.19,35,0
    .waypoint Elwynn Forest,38.02,81.70,35,0
    >>|T133644:0|t[Taschendiebstahl] |cRXP_ENEMY_Koboltminenarbeiter |r und |cRXP_ENEMY_Koboldtunnelgräber|r. Plündert sie für |T134327:0|t|cRXP_LOOT_[Rechtes oberes Kartenteil]|r
    >>Ihr müsst |T132320:0|t[Verstohlen] |cRXP_WARN_sein um|r |T133644:0|t[Taschendiebstahl] |cRXP_WARN_zu verwenden|r
    >>|cRXP_ENEMY_NOTE:HINWEIS:|r |cRXP_WARN_Alle der|r |T134327:0|t[|cRXP_LOOT_Map Piece|r] |cRXP_WARN_Schritte sind zum Freischalten des|r |T134536:0|t[Pistolenheld] |cRXP_WARN_Runenstein.|r |cRXP_WARN_Es ist nützlich, aber nicht erforderlich zum Leveln und wird um Stufe 22 nach dem Freischalten der Gifte von Euch obsolet. Ihr könnt gerne alle diese Schritte überspringen, wenn ihr nicht daran interessiert seid, den Runenstein so schnell wie möglich zu erhalten, und Zeit sparen möchtet.|r
    .collect 203784,1 -- Top-Right Map Piece (1)
    .mob Kobold Miner
    .mob Kobold Tunneler
    .train 398196,1
step
    #sticky
    #label KoboldEnd
    #completewith BernicesNecklace
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .waypoint Elwynn Forest,39.14,82.87,35,0
    .waypoint Elwynn Forest,39.16,84.79,35,0
    .waypoint Elwynn Forest,37.81,85.40,35,0
    .waypoint Elwynn Forest,36.76,83.19,35,0
    .waypoint Elwynn Forest,38.02,81.70,35,0
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r und |cRXP_ENEMY_Koboldminenarbeiter|r. Plündert sie für |cRXP_LOOT_Große Kerze|r und |cRXP_LOOT_Goldstaub|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto Elwynn Forest,43.131,85.722
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 84 >> Gebt die Quest Zurück zu Billy ab
    .accept 87 >> Goldzahn annehmen
    .target Billy Maclure
step << Priest
    #sticky
    #label SharedPain
    #completewith BernicesNecklace
    .goto Elwynn Forest,40.6,81.8
    >>Tötet |cRXP_ENEMY_Kobold Miners|r. Plündert sie für |T136222:0|t[|cRXP_FRIENDLY_Memory of an Eingesperrt Retter|r]
    >>|cRXP_WARN_Macht keinen großen Aufwand von Euch, um es jetzt zu farmen. Ihr könnt diese Rune später holen.|r
    .collect 205945,1 -- Memory of an Imprisoned Savior (1)
    .mob Kobold Miner
    .train 402854,1
step << Priest
    #sticky
    #requires SharedPain
    #completewith BernicesNecklace
    .train 402854 >> |cRXP_WARN_Benutzt die|r |T136222:0|t[|cRXP_FRIENDLY_Erinnerung eines Eingesperrten Retters|r] |cRXP_WARN_zum Trainieren|r |T136160:0|t[Geteilter Schmerz]
    >>|cRXP_WARN_Ihr müsst einen|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_Buff haben, indem ihr /knien in einem heiligen Bereich eingebt, zum Beispiel die der Abtei von Nordhain, in der Kathedrale von Sturmwind, die Altäre des Lichts in Ambossar, Loch Modan oder der Mystische Bezirk in Eisenschmiede|r
    .use 205945
    .itemcount 205945,1
step
    .goto Elwynn Forest,39.01,82.20,15,0
    .goto Elwynn Forest,39.92,80.11
    >>BETRETET einen der größeren offenen Räume in der Tiefenschachtmine
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    #season 2
    #label BernicesNecklace
    .goto 1429,41.732,78.024
    >>Tötet |cRXP_ENEMY_Goldzahn|r. Plündert ihn für |cRXP_LOOT_Bernice's Halskette|r << !Warrior !Priest
    >>Tötet |cRXP_ENEMY_Goldzahn|r. Plündert ihn für die |cRXP_LOOT_Bernice's Halskette|r und die |T134419:0|t|cRXP_LOOT_[Rune des wütenden Donners]|r << Warrior
    >>Tötet |cRXP_ENEMY_Goldzahn|r. Plündert ihn für die |cRXP_LOOT_Bernice's Halskette|r und die |T136222:0|t|cRXP_LOOT_[Erinnerung an einen dunklen Zweck]|r << Priest
    >>|cRXP_WARN_Seid vorsichtig, da er normalerweise den |cRXP_ENEMY_Koboldminenarbeiter|r neben ihm mit in den Kampf zieht|r
    .complete 87,1 --Bernice's Necklace (1)
    .collect 204809,1 << Warrior -- Rune of Furious Thunder (1)
    .collect 205940,1 << Priest -- Memory of a Dark Purpose (1)
    .mob Goldtooth
    .train 403476,1 << Warrior
    .train 425216,1 << Priest
step
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .waypoint Elwynn Forest,39.14,82.87,35,0
    .waypoint Elwynn Forest,39.16,84.79,35,0
    .waypoint Elwynn Forest,37.81,85.40,35,0
    .waypoint Elwynn Forest,36.76,83.19,35,0
    .waypoint Elwynn Forest,38.02,81.70,35,0
    >>Beenden off killing |cRXP_ENEMY_Kobold Tunnelers|r und |cRXP_ENEMY_Kobold Miners|r. Plündert sie für |cRXP_LOOT_Kobold Kerzen|r und |cRXP_LOOT_Gold Staub|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step << Rogue
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .waypoint Elwynn Forest,39.14,82.87,35,0
    .waypoint Elwynn Forest,39.16,84.79,35,0
    .waypoint Elwynn Forest,37.81,85.40,35,0
    .waypoint Elwynn Forest,36.76,83.19,35,0
    .waypoint Elwynn Forest,38.02,81.70,35,0
    .xp 9+2000 >> Farmt Kobolde, bis ihr auf Stufe 9 2000 EP habt.
    >> |cRXP_WARN_Falls ihr nicht in der Nähe seid, könnt ihr die Goldtooth-Quest abgeben, aber Mobs zu farmen ist effizienter.|r
step << Warrior
    #season 2
    #sticky
    #label GoldtoothRune
    .train 403476 >>|cRXP_WARN_Benutzt die|r |T134419:0|t|cRXP_LOOT_[Rune des wütenden Donners]|r |cRXP_WARN_um|r |T136048:0|t[Wütender Donner] zu erlernen
    .use 204809
    .itemcount 204809,1
step << Priest
    #season 2
    #sticky
    #label GoldtoothRune
    >>|cRXP_WARN_Ihr müsst einen|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_Buff haben, indem ihr /knien in einem heiligen Bereich wie die Abtei von Nordhain oder die Kathedrale von Sturmwind eingebt|r
    .train 425216 >>|cRXP_WARN_Benutzt die|r |T136222:0|t|cRXP_LOOT_[Erinnerung an einen dunklen Zweck]|r |cRXP_WARN_um|r |T237514:0|t[Pest der Leere] zu erlernen
    .use 205940
step << Warrior
    #season 2
    #optional
    #requires KoboldRune
--XXREQ Placeholder invis step
step
	#softcore
    #completewith next
    .deathskip >> Sterbt und respawnt beim Geistheiler in Goldhain
    .target Geistheiler
step << skip --logout skip
    #xprate >1.49
    #hardcore
    #optional
    .goto Elwynn Forest,41.29,79.85,-1
    .goto Elwynn Forest,41.75,78.49,-1
    .goto Elwynn Forest,41.91,77.81,-1
    .goto Elwynn Forest,40.15,80.12,-1
    .goto Elwynn Forest,39.90,81.46,-1
    .goto Elwynn Forest,40.86,81.24,-1
    .goto Elwynn Forest,40.32,79.31,-1
    .goto Elwynn Forest,39.30,60.48,30 >>|cRXP_WARN_Springt auf einen Schredder, die schwimmenden Baumstämme, die Kisten oder die Lampe am Lorenwagen in der Höhle. Führt einen Logout-Skip durch, indem ihr euch dann abmeldet und wieder anmeldet|r
    .subzoneskip 57,1 --Fargodeep Mine
    .isOnQuest 47
step
    #hardcore
    #optional
    #completewith Exchange
    .goto Elwynn Forest,42.140,67.254,125 >> Kehrt nach Goldhain zurück
    .subzoneskip 87 --Goldshire
step
    #softcore
    #completewith Exchange
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .target Geistheiler
step
    #label Exchange
    .goto Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Remy "Zweifach"|r
    >>|cRXP_WARN_Verkauft|r |T133581:0|t[Tasche of Marbles] NICHT an einen Händler|cRXP_WARN_Dies ist ein unglaublich wervoller Gegenstand bis Level 60|r
    .turnin 47 >> Gebt die Quest Tauschhandel mit Goldstaub ab
    .accept 40 >> Gefahr aus dem Wasser annehmen
    .target Remy "Two Times"
step << Priest
    #season 2
    #optional
    #completewith GoldshireEnd
    +|cRXP_WARN_Falls möglich, findet einen Priester in Goldhain mit anderen|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_Stärkungseffekten|r
    >>|cRXP_WARN_Tippt /knien, dann lasst den anderen Priester /beten auf euch tippen, während ihr kniet, damit ihr ihre|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_Stärkungseffekte erhaltet, die ihr später verwenden könnt|r
step
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .turnin 62 >> Die Fargodeep Mine abgeben
    .accept 76 >> Die Jaspismine annehmen
    .turnin 40 >> Gebt die Quest Gefahr aus dem Wasser ab
    .target Marshal Dughan
step
    #optional << Warrior/Rogue/Paladin
    #completewith CandlesEnd
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corina Steele|r
    .vendor >>Verkauft Müll
    .target Corina Steele
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>3.3 << Rogue
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>3.8 << Warrior
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>5.0 << Paladin
step << Warrior
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>|cRXP_BUY_Kauft einen|r |T135321:0|t[Gladius] |cRXP_BUY_von ihr, falls ihr es euch leisten könnt|r
    .collect 2488,1 --Collect Gladius (1)
    .disablecheckbox
--  .money <0.0536
    .target Corina Steele
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior
    #completewith CandlesEnd
    +|cRXP_WARN_Legt das|r |T135321:0|t[Gladius] an
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>|cRXP_BUY_Kauft einen zweiten|r |T135641:0|t[Stilett] |cRXP_BUY_von ihr, wenn ihr es euch leisten könnt|r
    .collect 2494,1 --Collect Stiletto (1)
    .disablecheckbox
    .target Corina Steele
--   .money <0.0400
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith CandlesEnd
    +|cRXP_WARN_Legt das|r |T135641:0|t[Stilett] an
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith next
    .engrave 10,399960 >> Öffnet das Charakterblatt von Euch und graviert |T132304:0|t[|cRXP_FRIENDLY_Verstümmeln|r] auf den Handschuhen. Es ist bei Weitem die stärkste Rune zum Kämpfen gegen Mobs.
step << Paladin
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>|cRXP_BUY_Kauft einen|r |T133053:0|t[Hölzerner Schlaghammer] |cRXP_BUY_von ihr, falls ihr es euch leisten könnt|r
    .collect 2493,1 --Collect Wooden Mallet (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0631
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #completewith CandlesEnd
    +Legt den |T133053:0|t[Hölzerner Schlaghammer] |cRXP_WARN_an|r
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #season 2
    #xprate >1.59
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bruder Wilhelm|r
    >>|cRXP_WARN_Lernt|r |T135949:0|t[Läutern] |cRXP_WARN_um|r |T133815:0|t[Brustteil prägen - Aegis] |cRXP_WARN_bald zu erhalten|r
    .train 1152 >>Erlernt |T135949:0|t[Läutern]
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Brother Wilhelm
step << Paladin
    #season 0,1
    #xprate >1.59
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bruder Wilhelm|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Brother Wilhelm
step << Warrior
    #xprate >1.59
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Lyria Du Lac
step
    #label CandlesEnd
    #requires GoldtoothRune << Warrior/Priest --Season 2
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_William Pestle|r
    .turnin 60 >> Koboldkerzen abgeben
    .accept 61 >> Lieferung nach Sturmwind annehmen
    .turnin 107 >> Gebt die Quest Nachricht an William ab
    .accept 112 >> Akzeptiert die Quest Die Suche nach dem Tang
    .target William Pestle
step << Warrior
    #xprate <1.59
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Lyria Du Lac
step << Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >> Geht im Gasthaus nach unten
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maximillian Crowe|r
    .target Maximillian Crowe
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cylina Darkheart|r
    .vendor >> |cRXP_BUY_Kauft den|r |T133738:0|t[Zauberfoliant des Feuerblitzes (Rang 2)] |cRXP_BUY_von ihr, falls ihr es euch leisten könnt. Falls nicht, könnt ihr es später kaufen|r
    .target Cylina Darkheart
    .money <0.100
    .itemcount 16302,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20270,1 --Blood Pact (Rank 1)
step << Mage/Priest/Rogue/Warrior/Paladin
    #optional
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Geht im Gasthaus nach oben
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Priest
    .goto Elwynn Forest,43.283,65.721
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Priesterin Josetta|r
	.target Priestess Josetta
    .turnin 5624 >> Gebt die Quest Gewänder des Lichts ab
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Rogue/Warrior/Paladin
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Michelle Belle|r
    .target Michelle Belle
    .goto Elwynn Forest,43.392,65.550
    .train 3273 >> Erlerne |T135966:0|t[Erste Hilfe]
step
    #label GoldshireEnd << Priest --Season 2
    .goto Elwynn Forest,43.96,65.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brog Hamfist|r
    .vendor >> |cRXP_WARN_Kauft einen|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_WARN_falls benötigt|r
	.target Brog Hamfist
    .money <0.2
step
    #completewith next
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Farley|r
    .vendor >> |cRXP_BUY_Kauft bis zu 20|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm, falls ihr es euch leisten könnt|r << !Warrior !Rogue !Paladin
    .vendor >> |cRXP_BUY_Kauft bis zu 20|r |T133995:0|t[Pikanter Dalarankäse] |cRXP_BUY_von ihm, falls ihr es euch leisten könnt|r << Warrior/Rogue
    .vendor >> |cRXP_BUY_Kauft bis zu 10|r |T133995:0|t[Pikanter Dalarankäse] |cRXP_BUY_und 10|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm, falls ihr es euch leisten könnt|r << Paladin
    .target Innkeeper Farley
    .money < 0.1
step << Warrior
    #season 2
    #sticky
    #label MurlocRune
    #loop
    .goto 1429,50.833,65.453,0
    .goto 1429,57.435,63.662,0
    .goto 1429,54.236,66.888,0
    .waypoint 1429,50.833,65.453,50,0
    .waypoint 1429,52.020,65.177,50,0
    .waypoint 1429,54.144,62.468,50,0
    .waypoint 1429,56.332,63.538,50,0
    .waypoint 1429,57.162,62.157,50,0
    .waypoint 1429,57.435,63.662,50,0
    .waypoint 1429,58.237,64.888,50,0
    .waypoint 1429,56.897,67.017,50,0
    .waypoint 1429,55.523,66.707,50,0
    .waypoint 1429,55.203,66.171,50,0
    .waypoint 1429,54.236,66.888,50,0
    >>Tötet |cRXP_ENEMY_Murlocs|r und |cRXP_ENEMY_Murlocbachläufer|r. Plündert sie für |T134169:0|t|cRXP_LOOT_[Abgetrennter Murlockopf]|r
    >>|cRXP_WARN_Dies ist eines von drei Gegenständen, die ihr benötigt, um eure|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Verwüstung|r] |cRXP_WARN_freizuschalten, wenn ihr Sturmwind auf Stufe 10 erreicht|r
    .collect 204477,1 -- Severed Murloc Head (1)
    .mob Murloc Streamrunner
	.mob Murloc
    .train 403475,1
step << Rogue
    #season 2
    #sticky
    #label MurlocRune
    #completewith JasperlodeExplore
    #loop
    .goto 1429,50.833,65.453,0
    .goto 1429,57.435,63.662,0
    .goto 1429,54.236,66.888,0
    .waypoint 1429,50.833,65.453,50,0
    .waypoint 1429,52.020,65.177,50,0
    .waypoint 1429,54.144,62.468,50,0
    .waypoint 1429,56.332,63.538,50,0
    .waypoint 1429,57.162,62.157,50,0
    .waypoint 1429,57.435,63.662,50,0
    .waypoint 1429,58.237,64.888,50,0
    .waypoint 1429,56.897,67.017,50,0
    .waypoint 1429,55.523,66.707,50,0
    .waypoint 1429,55.203,66.171,50,0
    .waypoint 1429,54.236,66.888,50,0
    >>|T133644:0|t[Taschendiebstahl] |cRXP_ENEMY_Murlocbachläufer|r und |cRXP_ENEMY_Murlocs|r. Plündert sie für |T134269:0|t|cRXP_LOOT_[Rechte unteres Kartenteil]|r
    >>Ihr müsst |T132320:0|t[Verstohlen] |cRXP_WARN_sein um|r |T133644:0|t[Taschendiebstahl] |cRXP_WARN_zu verwenden|r
    >>|cRXP_ENEMY_NOTE:HINWEIS:|r |cRXP_WARN_Alle die|r |T134327:0|t[|cRXP_LOOT_Map Piece|r] |cRXP_WARN_Schritte sind zum Freischalten der|r |T134536:0|t[Pistolenheld] |cRXP_WARN_Rune.|r |cRXP_WARN_Es ist nützlich, aber nicht erforderlich zum Leveln und wird etwa um Stufe 22 veraltet, nachdem ihr die Gifte von Euch freigeschaltet habt. Ihr könnt gerne alle diese Schritte überspringen, wenn ihr nicht daran interessiert seid, die Rune so schnell wie möglich zu bekommen, und Zeit sparen möchtet.|r
    .collect 203786,1 -- Bottom-Right Map Piece (1)
    .mob Murloc Streamrunner
    .mob Murloc
--   .mob Murloc Forager
--    .mob Murloc Lurker
    .train 398196,1
step
    #loop
    .goto 1429,50.833,65.453,0
    .goto 1429,57.435,63.662,0
    .goto 1429,54.236,66.888,0
    .goto 1429,50.833,65.453,50,0
    .goto 1429,52.020,65.177,50,0
    .goto 1429,54.144,62.468,50,0
    .goto 1429,56.332,63.538,50,0
    .goto 1429,57.162,62.157,50,0
    .goto 1429,57.435,63.662,50,0
    .goto 1429,58.237,64.888,50,0
    .goto 1429,56.897,67.017,50,0
    .goto 1429,55.523,66.707,50,0
    .goto 1429,55.203,66.171,50,0
    .goto 1429,54.236,66.888,50,0
    >>Tötet |cRXP_ENEMY_Murlocs|r und |cRXP_ENEMY_Murlocbachläufer|r. Plündert sie für |cRXP_LOOT_Kristalltangwedel|r
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
	.mob Murloc
	.mob Murloc Streamrunner
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone4
    #completewith JasperlodeExplore
    >>Tötet |cRXP_ENEMY_Koboltminenarbeiter|r. Öffnet |cRXP_PICK_Ramponierte Truhe|r. Plündert sie für |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r << Warrior/Rogue
    >>Tötet |cRXP_ENEMY_Koboltminenarbeiter|r. Öffnet |cRXP_PICK_Ramponierte Truhe|r. Plündert sie für |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r und |T132889:0|t|cRXP_LOOT_[Leinenstoff]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
    .mob Kobold Miner
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone4
    #label RoughStoneCraft4
    #completewith JasperlodeExplore
    +|T136241:0|t[Schmiedet] |cRXP_WARN_den|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r |cRXP_WARN_zu|r |T135248:0|t[Rauer Wetzstein] << Warrior/Rogue
    +|T136241:0|t[Schmiede] |cRXP_WARN_den|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r |cRXP_WARN_und|r |T132889:0|t|cRXP_LOOT_[Leinenstoff]|r |cRXP_WARN_zu|r |T135255:0|t[Rauer Wetzstein] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft4
    #completewith JasperlodeExplore
    .cast 2828 >>|cRXP_WARN_Benutzt den|r |T135248:0|t[Rauer Wetzstein] |cRXP_WARN_auf der aktuellen Waffe von Euch|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Benutzt den|r |T135255:0|t[Rauer Gewichtsstein] |cRXP_WARN_auf eurer aktuellen Waffe|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
step << Priest
    #sticky
    #label SharedPainTwo
    #completewith JasperlodeExplore
    .goto Elwynn Forest,40.6,81.8
    >>Tötet |cRXP_ENEMY_Kobold Miners|r. Plündert sie für |T136222:0|t[|cRXP_FRIENDLY_Memory of an Eingesperrt Retter|r]
    .collect 205945,1 -- Memory of an Imprisoned Savior (1)
    .mob Kobold Miner
    .train 402854,1
step << Priest
    #sticky
    #requires SharedPainTwo
    #completewith JasperlodeExplore
    .train 402854 >> |cRXP_WARN_Benutzt die|r |T136222:0|t[|cRXP_FRIENDLY_Erinnerung eines Eingesperrten Retters|r] |cRXP_WARN_zum Trainieren|r |T136160:0|t[Geteilter Schmerz]
    >>|cRXP_WARN_Ihr müsst einen|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_Buff haben, indem ihr /knien in einem heiligen Bereich eingebt, zum Beispiel die der Abtei von Nordhain, in der Kathedrale von Sturmwind, die Altäre des Lichts in Ambossar, Loch Modan oder der Mystische Bezirk in Eisenschmiede|r
    .use 205945
    .itemcount 205945,1
step
    #optional
    #requires MurlocRune << Warrior/Rogue --Season 2
    #label Jasperlode
    #completewith JasperlodeExplore
    .goto Elwynn Forest,61.654,53.608,15 >> BETRETET die Jaspismine
step << Mage
    #season 2
    #sticky
    #loop
    #label JasperlodeRune
    .goto 1429,60.599,50.811,0
    .goto 1429,60.789,56.641,0
    .goto 1429,64.528,56.678,0
    .waypoint 1429,62.656,54.266,45,0
    .waypoint 1429,62.121,55.579,45,0
    .waypoint 1429,60.789,56.641,45,0
    .waypoint 1429,62.587,57.974,45,0
    .waypoint 1429,63.724,58.199,45,0
    .waypoint 1429,64.528,56.678,45,0
    .waypoint 1429,62.656,54.266,45,0
    .waypoint 1429,60.599,50.811,45,0
    .waypoint 1429,61.296,51.676,45,0
    >>Tötet |cRXP_ENEMY_Koboldgeomant|r. Plündert sie für |T134939:0|t|cRXP_LOOT_[Zaubernotizen: DEELFANE LMEBM]|r
    .collect 203752,1
    .mob Kobold Geomancer
    .train 401768,1
step
    #label JasperlodeExplore
    .goto Elwynn Forest,61.20,51.46,15,0
    .goto Elwynn Forest,60.72,50.85,15,0
    .goto Elwynn Forest,60.39,50.16
    >>Folgt dem Pfad durch die Mitte, um die Jaspismine zu erkunden
    .complete 76,1 --Scout through the Jasperlode Mine
step << Priest
    .goto Elwynn Forest,62.2,57.4
    >>Tötet |cRXP_ENEMY_Kobold Miners|r. Plündert sie für |T136222:0|t[|cRXP_FRIENDLY_Memory of an Eingesperrt Retter|r]
    .collect 205945,1 -- Memory of an Imprisoned Savior (1)
    .mob Kobold Miner
    .train 402854,1
step << Priest
    #optional
    #completewith next
    .train 402854 >> |cRXP_WARN_Benutzt die|r |T136222:0|t[|cRXP_FRIENDLY_Erinnerung eines Eingesperrten Retters|r] |cRXP_WARN_zum Trainieren|r |T136160:0|t[Geteilter Schmerz]
    >>|cRXP_WARN_Ihr müsst einen|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_Buff haben, indem ihr /knien in einem heiligen Bereich eingebt, zum Beispiel die der Abtei von Nordhain, in der Kathedrale von Sturmwind, die Altäre des Lichts in Ambossar, Loch Modan oder der Mystische Bezirk in Eisenschmiede|r
    .use 205945
    .itemcount 205945,1
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone5
    #completewith Find
    >>Tötet |cRXP_ENEMY_Koboltminenarbeiter|r. Öffnet |cRXP_PICK_Ramponierte Truhe|r. Plündert sie für |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r << Warrior/Rogue
    >>Tötet |cRXP_ENEMY_Koboltminenarbeiter|r. Öffnet |cRXP_PICK_Ramponierte Truhe|r. Plündert sie für |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r und |T132889:0|t|cRXP_LOOT_[Leinenstoff]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
    .mob Kobold Miner
    .subzoneskip 54,1
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone5
    #label RoughStoneCraft5
    #completewith Find
    +|T136241:0|t[Schmiedet] |cRXP_WARN_den|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r |cRXP_WARN_zu|r |T135248:0|t[Rauer Wetzstein] << Warrior/Rogue
    +|T136241:0|t[Schmiede] |cRXP_WARN_den|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r |cRXP_WARN_und|r |T132889:0|t|cRXP_LOOT_[Leinenstoff]|r |cRXP_WARN_zu|r |T135255:0|t[Rauer Wetzstein] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
    .subzoneskip 54,1
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft5
    #completewith Find
    .cast 2828 >>|cRXP_WARN_Benutzt den|r |T135248:0|t[Rauer Wetzstein] |cRXP_WARN_auf der aktuellen Waffe von Euch|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Benutzt den|r |T135255:0|t[Rauer Gewichtsstein] |cRXP_WARN_auf eurer aktuellen Waffe|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
    .subzoneskip 54,1
step << Paladin
    #season 2
    #completewith next
    .goto Elwynn Forest,61.97,47.31
    .cast 1152 >>|cRXP_WARN_Wirkt|r |T135949:0|t[Läutern] |cRXP_WARN_auf den |cRXP_FRIENDLY_Verwundeten Abenteurer|r innen|r
    .target Wounded Adventurer
    .train 425619,1
    .train 1152,3 --Purify Trained
step << Paladin
    #season 2
    .goto Elwynn Forest,61.97,47.31
    >>|cRXP_WARN_Sprecht mit dem |cRXP_FRIENDLY_Verwundeten Abenteurer|r nach dem Wirken von|r |T135949:0|t[Läutern] |cRXP_WARN_auf ihn, um die |T134419:0|t[Rune der Aegis] zu erhalten|r
    .collect 205685,1 --Rune of Aegis (1)
    .target Wounded Adventurer
    .skipgossip
    .train 425619,1
    .train 1152,3 --Purify Trained
--XX gossipoption 109556
step << Paladin
    #season 2
    #completewith Find
    .cast 402265 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[Rune der Aegis] |cRXP_WARN_um|r |T133815:0|t[Brustteil prägen - Aegis] zu erlernen
    .use 205685
    .itemcount 205685,1 --Rune of Aegis (1)
    .train 425619,1
    .train 1152,3 --Purify Trained
step << Mage
    #season 2
    #requires JasperlodeRune
    #completewith Find
    .train 401768 >>|cRXP_WARN_Benutzt|r |T134939:0|t|cRXP_LOOT_[Zaubernotizen: DEELFANE LMEBM]|r |cRXP_WARN_zum Erlernen von|r |T135820:0|t[Lebende Flamme]
    .use 203752
step << Priest
    #optional
    #label ExitJasperlode
    #completewith Find
    .goto 1429,61.820,53.871,15 >> Verlasst die Jaspismine
    .subzoneskip 54,1
step << Priest
    #season 2
    #loop
    .goto 1429,74.015,51.810,0
    .goto 1429,72.561,56.666,55,0
    .goto 1429,72.396,54.428,55,0
    .goto 1429,74.015,51.810,55,0
    .goto 1429,75.155,50.751,55,0
    .goto 1429,76.815,48.877,55,0
    .goto 1429,76.676,53.898,55,0
    >>Tötet |cRXP_ENEMY_Defias Schurke Wizards|r. Plündert sie für |T135975:0|t|cRXP_LOOT_[Prophezeiung einer entweihten Zitadelle]|r
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Defias Rogue Wizard
    .train 402852,1
step << Priest
    #season 2
    #optional
    #completewith BundleOT
    .train 402852 >> |cRXP_WARN_Benutzt das|r |T135975:0|t|cRXP_LOOT_[Prophezeiung einer entweihten Zitadelle]|r |cRXP_WARN_zum Erlernen von|r |T237570:0|t[Homunculi]
    >>|cRXP_WARN_Ihr müsst 2|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_Buffs haben, indem ihr /knien in einem heiligen Bereich eingebt, zum Beispiel die der Abtei von Nordhain, in der Kathedrale von Sturmwind, die Altäre des Lichts in Ambossar, Loch Modan oder der Mystische Bezirk in Eisenschmiede|r
    .use 205947
    .itemcount 205947,1
step << Rogue
    #season 2
    #label GnollMapPiece
    .goto 1429,68.680,54.635,60,0
    .goto 1429,68.135,48.678,60,0
    .goto 1429,68.102,45.049,60,0
    .goto 1429,66.618,40.849
    >>|T133644:0|t[Taschendiebstahl] |cRXP_ENEMY_Riverpaw Outrunners|r und |cRXP_ENEMY_Riverpaw Schlaffi|r. Plündert sie für |T134327:0|t[|cRXP_LOOT_Bottom-Links Karte Piece]|r
    >>|cRXP_WARN_Ihr müsst in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_sein, um|r |T133644:0|t[Taschendiebstahl] zu nutzen
    >>|cRXP_ENEMY_NOTE:HINWEIS:|r |cRXP_WARN_Alle die|r |T134327:0|t[|cRXP_LOOT_Map Piece|r] |cRXP_WARN_Schritte sind zum Freischalten der|r |T134536:0|t[Pistolenheld] |cRXP_WARN_Rune.|r |cRXP_WARN_Es ist nützlich, aber nicht erforderlich zum Leveln und wird etwa um Stufe 22 veraltet, nachdem ihr die Gifte von Euch freigeschaltet habt. Ihr könnt gerne alle diese Schritte überspringen, wenn ihr nicht daran interessiert seid, die Rune so schnell wie möglich zu bekommen, und Zeit sparen möchtet.|r
    >>|cRXP_WARN_Falls ihr beschließt, die Rune zu überspringen, könnt ihr den Weg nach Redridge auslassen und einfach euren Ruhestein benutzen oder deathskippen, um direkt nach Goldhain zurückzukehren.|r
    .collect 203787,1 -- Bottom-Left Map Piece (1)
    .mob Riverpaw Outrunner
    .mob Riverpaw Runt
    .train 398196,1
step << Rogue
    #season 2
    #softcore
    #completewith AcceptBundle
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .target Geistheiler
    .train 398196,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Rogue
    #softcore
    #season 2
    #optional
    .goto Elwynn Forest,83.283,66.089
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rallic Finn|r
    .vendor >> Verkauft trash und repariert
    .target Rallic Finn
    .train 398196,1
    .isQuestAvailable 5545
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Rogue
    #season 2
    .goto Elwynn Forest,67.4,78.6,60,0
    .goto Elwynn Forest,70.8,79.8,60,0
    .goto Elwynn Forest,89.2,78.8
    >>|T133644:0|t[Taschendiebstahl] die |cRXP_ENEMY_Defias|r. Plündert sie für die |T134327:0|t[|cRXP_LOOT_Linkes oberes Kartenteil]|r
    >>|cRXP_WARN_Ihr müsst in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_sein, um|r |T133644:0|t[Taschendiebstahl] zu nutzen
    >>|cRXP_WARN_Hinweis: Dies kann auch von jedem anderen |cRXP_ENEMY_Defias|r-Mitglied in Wald von Elwynn kommen|r
    .collect 203785,1 -- Top-Left Map Piece (1)
    .mob Defias Bandit
    .train 398196,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Rogue
    #season 2
    .cast 401847 >>|cRXP_WARN_Benutzt einen der|r |T134327:0|t[|cRXP_LOOT_Kartenteile]|r |cRXP_WARN_um sie zur|r |T134269:0|t[|cRXP_LOOT_Schatzkarte von Elwynn|r] zu kombinieren
    .collect 203750,1
    .itemcount 203787,1
    .itemcount 203784,1
    .itemcount 203785,1
    .itemcount 203786,1
    .use 203787
    .use 203784
    .use 203785
    .use 203786
    .train 398196,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Rogue
    #season 2
    #completewith next
    .goto Elwynn Forest,80.365,79.134
    .cast 401617 >>|cRXP_WARN_Benutzt die|r |T134269:0|t[|cRXP_LOOT_Elwynn Schatzkarte|r] |cRXP_WARN_an der Position des Pfeils. Das wird einen |cRXP_PICK_Begraben Schatz|r erscheinen lassen|r
    .use 203750
    .itemcount 203750,1
    .train 398196,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Rogue
    #season 2
    .goto Elwynn Forest,80.365,79.134
    >>Öffnet den |cRXP_PICK_Vergrabenen Schatz|r. Plündert ihn für die |T134419:0|t[|cRXP_FRIENDLY_Rune des Pistolenhelden|r]
    .collect 203991,1 -- Rune of Quick Draw (1)
    .train 398196,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Rogue
    #season 2
    .train 400095 >> |cRXP_WARN_Benutzt die|r|T134419:0|t[|cRXP_FRIENDLY_Rune des Pistolenhelden|r] |cRXP_WARN_zum Trainieren von|r |T134536:0|t[Pistolenheld]
    .use 203991
    .itemcount 203991,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Priest
    #softcore
    #label EVDeathskip
    #completewith RedridgeS
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .target Geistheiler
    .zoneskip Redridge Mountains
--XX not worth deathskipping as a warlock due to having to resumm pet
step << Priest/Rogue
    #label RedridgeS
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Reist ins Rotkammgebirge
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Priest/Rogue
    #optional
    .goto Redridge Mountains,17.4,69.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Parker|r
    .accept 244 >> Akzeptiert die Quest Eindringende Gnolle
    .target Guard Parker
    .xp <11,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Priest/Rogue
    #softcore
    #completewith RRFP
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .target Geistheiler
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Priest/Rogue
    #hardcore
    #optional
    #completewith RRFP
    .goto Redridge Mountains,18.581,69.208,15,0
    .goto Redridge Mountains,23.325,71.373,25,0
    .goto Redridge Mountains,29.565,67.930,25,0
    .goto Redridge Mountains,30.590,59.410,15 >>|cRXP_WARN_SEID VORSICHTIG: Bleibt auf der Hauptstraße und weicht allen nahegelegenen Gegnern aus|r
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Priest/Rogue
    #optional
    .goto Redridge Mountains,30.73,59.99
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stellvertreter Feldon|r
    .turnin 244 >> Gebt die Quest Eindringende Gnolle ab
    .target Deputy Feldon
    .isOnQuest 244
    .xp <11,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Priest/Rogue
    #label RRFP
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
    .fp Redridge Mountains >> Erlernt die Flugroute zum Rotkammgebirge
    .target Ariena Stormfeather
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step
    #optional
    #completewith CollectKelp
    .hs >> Ruhestein nach Goldhain
    .subzoneskip 87
step
    #label CollectKelp
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_William Pestle|r
    .turnin 112 >> Gebt die Quest Die Suche nach dem Tang ab
    .timer 9,Tang einsammeln RP
    .accept 114 >> Akzeptiert die Quest Die Flucht
    .target William Pestle
step << Warrior/Rogue
    #optional
    #completewith next << Warrior
    #completewith RogueOptTrain << Rogue
    .goto Elwynn Forest,43.877,66.546,9 >> Geht im Gasthaus nach oben
step << Warrior/Rogue
    .goto Elwynn Forest,43.392,65.550
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Michelle Belle|r
    .train 3273 >> Erlerne |T135966:0|t[Erste Hilfe]
    .target Michelle Belle
step << Rogue
    #optional
    #label RogueOptTrain
    .goto Elwynn Forest,43.872,65.937
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Keryn Sylvius|r
    >>|cRXP_WARN_Trainiert nur|r |T132147:0|t[Beidhändigkeit] |cRXP_WARN_und|r |T132307:0|t[Sprinten] |cRXP_WARN_. Trainiert keine anderen Zauber, um das Geld für später zu sparen|r
    .train 674 >> Erlernt |T132147:0|t[Beidhändigkeit]
    .train 2983 >> Erlernt |T132307:0|t[Sprinten]
    .target Keryn Sylvius
    .xp <10,1
step
    .goto Elwynn Forest,42.105,65.927
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .turnin 76 >> Gebt die Quest Die Jaspismine ab
    .accept 239 >> Akzeptiert die Quest Hilfe für die Weststromgarnison!
    .accept 109 >> Akzeptiert die Quest Meldung bei Gryan Stoutmantle
    .target Marshal Dughan
step
    #sticky
    #label GoldshireVendor
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corina Steele|r
    .vendor >> Verkauft Müll
    .target Corina Steele
    .money >0.75
step
    .goto Elwynn Forest,41.706,65.544
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Smith Argus|r
    .accept 1097 >> Elmores Aufgabe annehmen
    .target Smith Argus
step << Warlock/Warrior
    #requires GoldshireVendor
    #optional
    .xp 10 >> Farmt bis Stufe 10
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lyria Du Lac|r
    >>|cRXP_WARN_Trainiert nicht, da ihr euer Geld für später sparen müsst|r
    .accept 1638 >> Akzeptiert die Quest Die Ausbildung eines Kriegers
    .target Lyria Du Lac
step << Paladin
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bruder Wilhelm|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Brother Wilhelm
    .xp <10,1
    .xp >12,1
step << Paladin
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bruder Wilhelm|r
    .accept 2998 >> Akzeptiert die Quest Der Foliant der Offenbarung
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Brother Wilhelm
    .xp <12,1
step << Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >> Geht im Gasthaus nach unten
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maximillian Crowe|r und |cRXP_FRIENDLY_Remen Marcot|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .goto Elwynn Forest,44.392,66.240
    .target +Maximillian Crowe
    .accept 1685 >> Akzeptiert die Quest Gakins Beschwörung
    .goto Elwynn Forest,44.485,66.268
    .target +Remen Marcot
step << Mage/Priest
    #optional
    #requires GoldshireVendor
    #completewith next
    .goto Elwynn Forest,43.7,66.4,10 >>Geht nach oben
    .xp <10,1
step << Priest
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,43.283,65.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Priesterin Josetta|r
    .accept 5635 >> Akzeptiert die Quest Verzweifeltes Gebet
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Priestess Josetta
    .xp <10,1
step << Mage
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,43.25,66.19
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Zaldimar Wefhellt
    .xp <10,1
step << skip --Rogue
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,43.872,65.937
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Keryn Sylvius|r
    >>|cRXP_WARN_Trainiert nur|r |T132147:0|t[Beidhändigkeit] |cRXP_WARN_und|r |T132307:0|t[Sprinten] |cRXP_WARN_. Trainiert keine anderen Zauber, um das Geld für später zu sparen|r
    .train 674 >> Erlernt |T132147:0|t[Beidhändigkeit]
    .train 2983 >> Erlernt |T132307:0|t[Sprinten]
    .target Keryn Sylvius
--XX skip quest, not worth going inside for
step
    #completewith PrincessFinish
    #optional
    .abandon 59 >> Brecht die Quest Rüstung aus Tuch und aus Leder ab
step << Warrior
    #season 2
    #sticky
    #completewith GoldtoothEnd
    >>Haltet Ausschau nach |cRXP_FRIENDLY_Wandernder Schwertkämpfer|r während des Laufens. Wenn ihr ihn findet und ihn zum Duell herausfordert, gewinnt ihr die Rune |T132334:0|t[|cRXP_FRIENDLY_Blutraserei|r]
    >>|cRXP_WARN_Er hat mehrere Spawnpunkte und kann jeweils nur an einem davon vorhanden sein. Überspringt diesen Schritt, wenn er dort nicht ist|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 412507,1
step
    #optional
    #requires GoldshireVendor
    #completewith next
    .goto Elwynn Forest,43.154,89.625,50 >> Reist zu den Weinbergen der Maclures
step
    #label Escape
    #requires GoldshireVendor
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Maybell Maclure|r
    .turnin 114 >> Gebt die Quest Die Flucht ab
    .target Maybell Maclure
step
    #label GoldtoothEnd
    .goto Elwynn Forest,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tantchen Bernice Stonefield|r
    .turnin 87 >> Gebt die Quest Goldzahn ab
    .turnin 88 >> Gebt die Quest Prinzessin muss sterben! ab << Rogue
    .target "Auntie" Bernice Stonefield
step
    #optional
    #completewith next
    .abandon 88 >> Brecht die Quest Prinzessin muss sterben! ab, da ihr sie noch nicht abgeschlossen habt.
step << Warrior
    #season 2
    .goto Elwynn Forest,30.0,73.4
    >>Überprüft die markierte Stelle für |cRXP_FRIENDLY_Wandernden Schwertkämpfer|r. Falls er dort ist, fordert ihn zu einem Duell heraus, das euch den Runenstein |T132334:0|t[|cRXP_FRIENDLY_Blutraserei|r] verleiht.
    >>|cRXP_WARN_Er hat mehrere Spawnpunkte und kann jeweils nur an einem davon vorhanden sein. Überspringt diesen Schritt, wenn er dort nicht ist|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 412507,1
step
    #optional
    #completewith Garrison
    .goto Elwynn Forest,24.82,76.25,80 >> Reist zur Weststromgarnison


----Start of Paladin 1.5x Martyrdom Rune section----


step << Paladin
    #xprate >1.49
    #season 2
    #optional
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stellvertreter Rainer|r
    .turnin 239 >> Gebt die Quest Hilfe für die Weststromgarnison ab
    .target Deputy Rainer
step << Paladin
    #xprate >1.59
    #season 2
    #loop
    .goto Elwynn Forest,27.0,86.7,0
    .goto Elwynn Forest,26.1,89.9,0
    .goto Elwynn Forest,27.0,93.9,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    >>Tötet die |cRXP_ENEMY_Riverpaw Schlaffi|r und die |cRXP_ENEMY_Riverpaw Outrunners|r. Plündert |T132889:0|t[Leinenstoff] von ihnen. Ihr werdet bald 10 davon für eine Quest brauchen.
    .collect 2589,10,1644,1 --Linen Cloth (10)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .isOnQuest 11
    .isQuestAvailable 1644

----Start of Warrior Gnoll Head section----


step << Warrior
    #xprate >1.49
    #season 2
    #label Garrison
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stellvertreter Rainer|r
    .turnin 239 >> Gebt die Quest Hilfe für die Weststromgarnison ab
    .target Deputy Rainer
step << Warrior
    #season 2
    .goto Elwynn Forest,25.3,70.2
    >>Überprüft die markierte Stelle für den |cRXP_FRIENDLY_Wandernder Schwertkämpfer|r. Falls er dort ist, fordert ihn zum Duell auf, das euch die Rune von |T132334:0|t[|cRXP_FRIENDLY_Blutraserei|r] gewähren wird.
    >>|cRXP_WARN_Er hat mehrere Spawnpunkte und kann jeweils nur an einem davon vorhanden sein. Überspringt diesen Schritt, wenn er dort nicht ist|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 412507,1
step << Warrior
    #season 2
    .goto Elwynn Forest,22.3,73.3
    >>Überprüft die markierte Stelle für den |cRXP_FRIENDLY_Wandernder Schwertkämpfer|r. Falls er dort ist, fordert ihn zum Duell auf, das euch die Rune von |T132334:0|t[|cRXP_FRIENDLY_Blutraserei|r] gewähren wird.
    >>|cRXP_WARN_Er hat mehrere Spawnpunkte und kann jeweils nur an einem davon vorhanden sein. Überspringt diesen Schritt, wenn er dort nicht ist|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 412507,1
step << Warrior
    #xprate >1.49
    #season 2
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
    >>Tötet |cRXP_ENEMY_Riverpaw Schlaffi|r und |cRXP_ENEMY_Riverpaw Outrunners|r. Plündert sie für |T134163:0|t[|cRXP_LOOT_Severed Gnoll Kopf|r]
    >>|cRXP_WARN_Dies ist eines von drei Gegenständen, die ihr benötigt, um eure|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Verwüstung|r] |cRXP_WARN_freizuschalten, wenn ihr Sturmwind auf Stufe 10 erreicht|r
    .collect 204478,1 -- Severed Gnoll Head (1)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .train 403475,1
step
    #label Garrison
    #season 0,1 << Warrior/Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stellvertreter Rainer|r
    .turnin 239 >> Gebt die Quest Hilfe für die Weststromgarnison ab
    .goto Elwynn Forest,24.234,74.450
    .target +Deputy Rainer
    >>Klickt das |cRXP_PICK_Gesucht-Plakat|r << Warlock
    .accept 176 >> Akzeptiert die Quest Gesucht: "Hogger" << Warlock
    .goto Elwynn Forest,24.548,74.672 << Warlock
step << Warlock
    #completewith GnollEnd
    >>Tötet |cRXP_ENEMY_Riverpaw Schlaffi|r und |cRXP_ENEMY_Riverpaw Outrunners|r während running. Plündert sie für |T134939:0|t[|cRXP_LOOT_Gold Pickup Schedule|r]
    .use 1307 >>|cRXP_WARN_Benutzt den |T134939:0|t[|cRXP_LOOT_Goldabholplan|r] um die Quest zu starten|r
    >>|cRXP_WARN_Der |T134939:0|t[|cRXP_LOOT_Goldabholplan|r] ist ein sehr seltener Drop. Ignoriert diesen Schritt, wenn ihr ihn nicht bekommt|r
    >>|cRXP_ENEMY_Gruff Swiftbite|r |cRXP_WARN_ein seltener Spawn, hat aber eine 100% Dropchance|r
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >> Akzeptiert die Quest Der Sammler
    .unitscan Gruff Swiftbite
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
    >>Tötet |cRXP_ENEMY_Hogger|r. Plündert ihn für |cRXP_LOOT_Gewaltige Gnollklaue|r
    >>|cRXP_ENEMY_Hogger|r |cRXP_WARN_kann an mehreren Orten erscheinen|r
    >>|cRXP_WARN_Wirkt |T136183:0|t[Furcht] |cRXP_WARN_auf |cRXP_ENEMY_Hogger|r kontinuierlich und benutzt von Euch reguläre DoTs, um ihn zu töten|r
    >>|cRXP_WARN_Benutzt|r |T136163:0|t[Seelendieb] |cRXP_WARN_während Hogger im Begriff ist zu sterben. Falls er unter dem Effekt stirbt, erhaltet ihr einen|r |T134085:0|t[Besudelt Seelensplitter] |cRXP_WARN_der zur Freischaltung der Rune von|r |T136169:0|t[Seelenentzug] verwendet wird
    >>|cRXP_WARN_Überspringt diesen Schritt, falls ihr den Seelensplitter nicht bekommt oder Hogger nicht verfügbar ist. Die Rune ist nicht sehr stark|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .collect 205019,1 --Tainted Soul shard
    .disablecheckbox
    .unitscan Hogger
step << !Warlock
    #optional
    #completewith WestEntry
    .abandon 123 >> Brecht die Quest Der Sammler ab
step
    #completewith WestEntry
    .goto Westfall,59.95,19.35
    .zone Westfall >> Lauf nach Westfall
step
    #xprate >1.49
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Furlbrow|r und |cRXP_FRIENDLY_Verna Furlbrow|r
    >>|cRXP_WARN_Akzeptiert die anderen Quests nicht|r
    .turnin 184 >> Gebt die Quest Furlbrows Urkunde ab
    .goto Westfall,59.95,19.35
    .target +Farmer Furlbrow
    .accept 36 >> Akzeptiert die Quest Westfalleintopf
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
    .isOnQuest 184
step << !Paladin !Warlock
#xprate >1.49
    #label WestEntry
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verna Brauenwirbel|r
    >>|cRXP_WARN_Akzeptiert die anderen Quests nicht|r
    .accept 36 >> Akzeptiert die Quest Westfalleintopf
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
step << Paladin
    #xprate >1.49
    #season 2
    #optional
    #requires Charred
--XXREQ Placeholder invis step
step
step << !Paladin !Warlock
#xprate >1.49
    .goto Westfall,56.416,30.519
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Salma Saldean|r innerhalb
    >>|cRXP_WARN_Akzeptiert die anderen Quests nicht|r
    .turnin 36 >> Gebt die Quest Westfalleintopf ab
    .target Salma Saldean
step << !Paladin !Warlock
    .goto Westfall,56.04,31.23
    .target Farmer Saldean
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Saldean|r
    .accept 9 >> Akzeptiert die Quest Tod auf den Feldern
step
    #xprate >1.49 << !Paladin
    #xprate 1.49-1.59 << Paladin
    #optional
    #requires Fields
    .goto Westfall,56.327,47.520
    .xp 9+5410 >> Farmt bis 5410+/6500xp
    .subzoneskip 108
step << Paladin
    #xprate >1.59
    #optional
    .goto 1436,48.249,46.729
    .xp 11+5360 >> Farmt bis 5360+/8800xp
--XX 625+210+85+800 = 1720 x2 = 3440
step << Paladin/Warlock
    .goto Westfall,62.3,35.4
    .zone Westfall >> Schwimmt über den Fluss nach Westfall
step
    #softcore
    #completewith next
    .deathskip >> Sterbt und respawnt beim Geistheiler
    .target Geistheiler
-- .subzoneskip 108
step
    #xprate >1.49
    .goto Westfall,56.327,47.520
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .turnin 109 >> Gebt die Quest Meldung bei Gryan Stoutmantle ab
    .target Gryan Stoutmantle
step
    .goto Westfall,57.002,47.169
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rüstmeister Lewis|r
    .accept 6181 >> Akzeptiert die Quest Eine eilige Nachricht << Human
    .target Quartermaster Lewis
    .isQuestAvailable 6181 << Human
step
    .goto Westfall,52.86,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirtin Heather|r
    >>|cRXP_BUY_Kauft bis zu 20|r |T133918:0|t[Roher Langzahniger Matschschnapper] |cRXP_BUY_von ihr. Es ist eine sehr billige Stufe-5-Nahrung|r
    .collect 4592,20,314,1 --Longjaw Mud Snapper (20)
	.target Innkeeper Heather
step
    .goto Westfall,54.00,53.00
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Späher Galiaan|r
    .target Scout Galiaan
    .accept 153 >> Akzeptiert die Quest Rote Lederkopftücher
step << Human
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .turnin 6181 >> Gebt die Quest Eine eilige Nachricht ab
    .accept 6281 >> Akzeptiert die Quest Weiter nach Sturmwind
    .target Thor
step << skip --Rogue
    #season 2
    #completewith FlySW
    #label RoSS
    .goto Westfall,51.540,55.361,30,0
    .goto Westfall,51.093,54.642,30,0
    .goto Westfall,50.81,47.15,50,0
    .goto Westfall,51.093,54.642
    >>|T133644:0|t[Taschendiebstahl] den |cRXP_ENEMY_Späher der Defias|r für die |T134419:0|t[|cRXP_FRIENDLY_Rune des Säbelschlitzers|r]
    >>|cRXP_WARN_Ihr müsst in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_sein, um|r |T133644:0|t[Taschendiebstahl] zu nutzen
    >>|cRXP_WARN_Es gibt eine sehr hohe Chance, dass der|r |T133644:0|t[Taschendiebstahl] |cRXP_WARN_fehlschlägt, weil ihr unterlevelt seid. Falls dies geschieht, überspringt diesen Schritt und fliegt nach Sturmwind. Ihr werdet es bald in Loch Modan abschließen|r
    >>|cRXP_WARN_AGRO NICHT DIE |cRXP_ENEMY_Späher der Defias|r SONST WIRD SIE|r |T132331:0|t[Verschwinden] |cRXP_WARN_UND VERZIEHT SICH FÜR 3-5 MINUTEN. STELLE SICHER, DASS DU IN FRÜH in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_GEHST!|r
    >>|cRXP_WARN_Der |cRXP_ENEMY_Späher der Defias|r kann auf Hügeln spawnen|r
    .collect 208772,1 -- Rune of Saber Slash (1)
    .unitscan Defias Scout
    .train 424785,1
--XX Moved/forced to Loch/Darkshore
step << skip --Rogue
    #season 2
    #completewith next
    #requires RoSS
    .cast 402265 >> |cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Säbelschlitzers|r]
    .use 208772 -- Rune of Saber Slash (1)
    .itemcount 208772,1
    .train 424785,1
step
    #label FlySW
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fliege nach Sturmwind
    .target Thor
step << skip --Human Paladin
    #season 2
    #xprate >1.59
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Stephanie Turner|r
    .turnin 1643 >> Gebt die Quest Der Foliant der Offenbarung ab
    .accept 1644 >> Akzeptiert die Quest Der Foliant der Offenbarung
    .turnin 1644 >> Gebt die Quest Der Foliant der Offenbarung ab
    --.accept 1780 >> Accept The Tome of Divinity
    .target Stephanie Turner
    .isQuestTurnedIn 1643
    .xp 12,1
step
    #xprate >1.49
    #season 2
    #optional
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Morgan Pestle|r
    .turnin 61,1 >> Gebt die Quest Lieferung nach Sturmwind ab
    >>|cRXP_WARN_Wählt die|r |T132383:0|t[Explosiv Raketen] |cRXP_WARN_as the reward. Sie verursachen anständigen Schaden und können für "Teilung pulling" verwendet werden, was unglaublich nützlich ist|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Klickt hier für eine Videoreferenz zu "Split-Pulling". Es ist ein kurzes Video und äußerst lehrreich|r
    .target Morgan Pestle
    .isQuestComplete 61
step << !Rogue
    #optional << Warlock/Warrior
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Erlerne 1h Schwerter und Stäbe << Warlock
    .trainer >>Erlernt Stäbe << Priest
    .trainer >>Erlernt 2h Schwerter << Warrior/Paladin
    .target Woo Ping
    .money <0.2 << Warlock
    .money <0.3 << Warrior/Paladin
step << Warlock
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Erlernt Stäbe
    .target Woo Ping
step
    .goto StormwindClassic,52.623,65.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Allison|r
    .home >> Setzt euren Ruhestein in Sturmwind
    .target Innkeeper Allison
step << Human Paladin
    #xprate >1.59
    #optional
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 2998 >> Gebt die Quest Foliant der Offenbarung ab
    .accept 1641 >> Akzeptiert die Quest Der Foliant der Offenbarung
    .turnin 1641 >> Gebt die Quest Der Foliant der Offenbarung ab
    .target Duthorian Rall
    .isOnQuest 2998
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Duthorian Rall|r
    .accept 1641 >> Akzeptiert die Quest Der Foliant der Offenbarung
    .turnin 1641 >> Gebt die Quest Der Foliant der Offenbarung ab
    .target Duthorian Rall
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|cRXP_WARN_Benutzt |T133739:0|t[|cRXP_LOOT_Der Foliant der Offenbarung|r] um die Quest zu starten|r
    .accept 1642 >>Akzeptiert die Quest Der Foliant der Offenbarung
    .use 6775
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1642 >>Gebt die Quest Der Foliant der Offenbarung ab
    .accept 1643 >>Akzeptiert die Quest Der Foliant der Offenbarung
    .target Duthorian Rall
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Arthur der Treue|r
    .train 19834 >> Trainiere deine Klassenfähigkeiten
    .target Arthur the Faithful
    .xp <12,1
    .xp >14,1
step << Human Paladin
    #xprate >1.59
    #optional
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Arthur der Treue|r
    .train 647 >> Trainiere deine Klassenfähigkeiten
    .target Arthur the Faithful
    .xp <14,1
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Stephanie Turner|r
    .turnin 1643 >> Gebt die Quest Der Foliant der Offenbarung ab
    .accept 1644 >> Akzeptiert die Quest Der Foliant der Offenbarung
    .turnin 1644 >> Gebt die Quest Der Foliant der Offenbarung ab
    --.accept 1780 >> Accept The Tome of Divinity
    .target Stephanie Turner
----XX if ever in the future, add Level 12 xp grind for 1.5x Tome of Divinity




----Warlock Elwynn Voidwalker Section Start----




step << Warlock
    #optional
    #completewith GakinStart
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Geh ins geschlachtete Lamm und dann in den Keller
step << Warlock
    #xprate >1.59
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ursula Deline|r
    .train 705 >> Trainiere deine Klassenfähigkeiten
    .target Ursula Deline
    .xp <12,1
    .xp >14,1
step << Warlock
    #xprate >1.59
    #optional
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ursula Deline|r
    .train 689 >> Trainiere deine Klassenfähigkeiten
    .target Ursula Deline
    .xp <14,1
step << Warlock
    #label GakinStart
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gakin der Dunkelbinder|r
    .turnin 1685 >> Gebt die Quest Gakins Beschwörung ab
    .accept 1688 >> Akzeptiert die Quest Surena Caledon
    .target Gakin the Darkbinder
step << Warlock
    #softcore
    .deathskip >> Sterbt und spawnt  beim |cRXP_FRIENDLY_Geistheiler|r, indem ihr |T136126:0|t[Aderlass] benutzt und ihr euch ins Feuer neben euch stellt
    .target Geistheiler
--  .subzoneskip 87
step << Warlock
    #hardcore
    #completewith WLHoggerEnd
    .goto Elwynn Forest,42.105,65.927
    .zone Elwynn Forest >> Verlasst Sturmwind
step << Warlock
    #completewith WLHoggerEnd
    .goto Elwynn Forest,42.105,65.927
    .subzone 87 >> Lauf nach Goldhain
step << Warlock
    #optional
    #completewith LockGoldshireEnd
    >>Sucht nach beliebigen Tier|cRXP_ENEMY_ in der Nähe vom Geistheiler. Wirkt |T136163:0|t[Seelendieb]|r darauf, um einen |T134095:0|t[Pure Seelensplitter] zu erhalten
    .collect 205020,1 --Pure Soul Shard (1)
    .itemcount 205019,1 --Skip if no Hogger shard
    .train 403920,1
step << Warlock
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    >>|cRXP_WARN_Wählt den|r |T135145:0|t[Ausbalancierter Kampfstecken]
    .turnin 176 >> Gebt die Quest Gesucht: "Hogger" ab
    .turnin 123 >> Gebt die Quest Der Sammler ab
    .target Marshal Dughan
    .isOnQuest 123
step << Warlock
    #label WLHoggerEnd
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    >>|cRXP_WARN_Wählt den|r |T135145:0|t[Ausbalancierter Kampfstecken]
    .turnin 176 >> Gebt die Quest Gesucht: "Hogger" ab
    .target Marshal Dughan
step << Warlock
    #label SoulSiphon
    .goto Elwynn Forest,44.0,66.2
    >>|cRXP_WARN_Geht zum Keller der Goldhain Gasthaus|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Damien Kane <Seelenhändler>|r. Beendet seinen Dialog, um die Seelensplitter gegen |T134419:0|t[Rune of Seelenentzug] einzutauschen
    .collect 205022,1
    .train 403920,1
    .itemcount 205020,1 --Pure Soul Shard (1)
    .itemcount 205019,1 --Tainted Soul Shard (1)
step << Warlock
    #optional
    #requires SoulSiphon
    #completewith next
    .train 403920 >> Benutzt die |T134419:0|t[Rune of Seelenentzug], um |T136169:0|t[Seelenentzug] zu trainieren
    .use 205022
    .train 403920,1
    .itemcount 205022,1
step << Warlock
    #optional
    #completewith WLBandanaEnd
    +|cRXP_WARN_Legt den|r |T135145:0|t[Ausbalancierter Kampfstecken] an
    .use 6215
    .itemcount 6215,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
step << Warlock
    #label LockGoldshireEnd
    --Invisible step
step << Warlock
    #optional
    >>|cRXP_WARN_Grinded auf dem Weg. Versucht eure|r |T135145:0|t[Ausbalancierter Kampfstecken] |cRXP_WARN_Fertigkeit zu erhöhen|r
    .subzone 62 >> Reist zu Brackbrunns Kürbisbeet
    .isOnQuest 1688
step << Warlock
    #xprate <1.5
    #optional
    #completewith SChoker
    >>Tötet |cRXP_ENEMY_Bandit der Defias|r. Plündert sie für |T134939:0|t[|cRXP_LOOT_Westfall-Urkunde|r]
    .use 1972>>Benutzt die |T134939:0|t[|cRXP_WARN_Westfall-Urkunde|cRXP_LOOT_] |rum die Quest zu starten|r
    >>|cRXP_WARN_Die|r |T134939:0|t[|cRXP_LOOT_Westfall-Urkunde|r] |cRXP_WARN_ist ein sehr seltener Drop. Überspringt diesen Schritt, falls ihr sie nicht bekommt|r
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> Furlbrows Urkunde annehmen
step << Warlock
    #label SChoker
    .goto Elwynn Forest,71.10,80.66
    >>Tötet |cRXP_ENEMY_Surena Caledon|r. Plündert sie für |cRXP_LOOT_Surenas Halsschmuck|r
    >>|cRXP_WARN_Fokussiert euch auf das sehr schnelle Töten von |cRXP_ENEMY_Surena Caledon|r |r
    >>|cRXP_WARN_Wirkt|r |T136183:0|t[Furcht] kontinuierlich auf|cRXP_WARN_auf |cRXP_ENEMY_Morgan der Sammler|r|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step << Warlock
    #optional
    #label WlockRedridge
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Reist ins Rotkammgebirge
    >>|cRXP_WARN_Schleifen auf dem Weg. Stellt sicher, dass ihr mindestens 2|r |T134075:0|t[Seelensplitter] |cRXP_WARN_durch die Verwendung von|r |T136163:0|t[Seelendieb]
    .collect 6265,2 --Soul Shard (2)
step << Warlock
    .goto Redridge Mountains,17.4,69.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Parker|r
    .accept 244 >> Akzeptiert die Quest Eindringende Gnolle
    .target Guard Parker
step << Warlock
    #softcore
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stellvertreter Feldon|r
    >>|cRXP_WARN_Seid vorsichtig vor Mobs unterwegs|r
    .turnin 244 >> Gebt die Quest Eindringende Gnolle ab
    .target Deputy Feldon
step << Warlock
    #hardcore
    .goto Redridge Mountains,18.581,69.208,15,0
    .goto Redridge Mountains,23.325,71.373,25,0
    .goto Redridge Mountains,29.565,67.930,25,0
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stellvertreter Feldon|r
    >>|cRXP_WARN_BLEIBT AUF DER HAUPTSTRASSE UND VERMEIDET ALLE NAHEGELEGENEN MOBS AUF DEM WEG|r
    .turnin 244 >> Gebt die Quest Eindringende Gnolle ab
    .target Deputy Feldon
step << Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
    .fp Redridge Mountains >> Erlernt die Flugroute zum Rotkammgebirge
    .target Ariena Stormfeather
step << Warlock
    .hs >> Benutzt euren Ruhestein nach MoP - Objekte, überspringt diesen Schritt und nehmt die Flugroute, falls er auf Abklingzeit ist
step << Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
    .fly Stormwind >> Fliege nach Sturmwind
    .target Ariena Stormfeather
    .zoneskip Stormwind City
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


----Warlock Elwynn Voidwalker Section End----


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
step << Human
    #xprate >1.49
    #label Continue
    .goto StormwindClassic,74.312,47.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osric Strang|r
    .turnin 6281 >> Gebt die Quest Weiter nach Sturmwind ab
    .accept 6261 >> Akzeptiert die Quest Dungar Longdrink
    .target Osric Strang
step << Rogue
    #xprate >1.59
    .goto 1453,74.645,52.818
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osborne der Nachtmensch|r
    >>|cRXP_WARN_Stellt sicher, dass ihr nach dem Training mindestens 24 Silber übrig habt. Ihr werdet es brauchen, um eine Waffe in Eisenschmiede zu kaufen und die Runen von Euch nutzen zu können|r
    .train 674 >> Erlernt |T132147:0|t[Beidhändigkeit]
    .train 2983 >> Erlernt |T132307:0|t[Sprinten]
    .target Osborne the Night Man
    .xp <10,1
    .xp >12,1
step << Rogue
    #xprate >1.59
    .goto 1453,74.645,52.818
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osborne der Nachtmensch|r
    >>|cRXP_WARN_Stellt sicher, dass ihr mindestens 24 Silber nach dem Training übrig habt. Ihr werdet es benötigen, um eine Schusswaffe in Eisenschmiede zu bekommen, um von Euch Runen verwenden zu können|r
    .train 1766 >> Trainiere deine Klassenfähigkeiten
    .target Osborne the Night Man
    .xp <12,1
step << Warrior
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Harry Burlwacht|r
    .turnin 1638 >> Gebt die Quest Die Ausbildung eines Kriegers ab
    .accept 1639 >> Akzeptiert die Quest Bartleby der Trunkenbold
    .target Harry Burlguard
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bartleby|r
    .turnin 1639 >> Gebt die Quest Bartleby der Trunkenbold ab
    .accept 1640 >> Akzeptiert die Quest Besiegt Bartleby
    .target Bartleby
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>Greift |cRXP_ENEMY_Bartleby|r an. Er wird sich bei 1% ergeben
    .complete 1640,1 --Beat Bartleby
    .mob Bartleby
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bartleby|r
    .target Bartleby
    .goto StormwindClassic,73.787,36.323
    .turnin 1640 >> Gebt die Quest Besiegt Bartleby ab
    .accept 1665 >> Akzeptiert die Quest Bartlebys Becher
step << Warrior
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Harry Burlwacht|r
    .turnin 1665 >> Gebt die Quest Bartlebys Becher ab
    .target Harry Burlguard
step << Priest
    #optional
    #completewith Prayer
    .goto StormwindClassic,42.51,33.51,20 >> Betretet die Kathedrale von Sturmwind
step << Priest
    #optional
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hohepriesterin Laurena|r
    .turnin 5635 >> Gebt die Quest Verzweifeltes Gebet ab
    .train 8092 >> Trainiere deine Klassenfähigkeiten
    .target High Priestess Laurena
    .isOnQuest 5635
step << Priest
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hohepriesterin Laurena|r
    .turnin 5634 >> Gebt die Quest Verzweifeltes Gebet ab
    .train 8092 >> Trainiere deine Klassenfähigkeiten
    .target High Priestess Laurena
    .train 13908,1
step << Priest
    #optional
    #label Prayer
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hohepriesterin Laurena|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target High Priestess Laurena
    .train 13908,3
step << Rogue
    #season 2
    #optional
    #completewith next
    .goto Stormwind City,56.93,29.54,8,0
    .goto Stormwind City,58.65,27.56,10 >> BETRETET die Gasse der Halsabschneider im Zwergenviertel von Sturmwind
    .train 400081,1
step << Rogue
    #season 2
    #optional
    .goto Stormwind City,63.201,29.491,5,0
    .goto Stormwind City,61.728,29.190
    >>|cRXP_WARN_Begebt euch die Treppe hinauf im Haus|r
    >>Öffnet die |cRXP_PICK_Verstaubte Kiste|r. Sammelt |T134419:0|t[|cRXP_FRIENDLY_Rune der Präzision|r] daraus
    >>|cRXP_WARN_Dies wird zwei Level-10-|cRXP_ENEMY_Halsabschneider|r beschwören, die dich angreifen werden|r
    .collect 204174,1 -- Rune of Precision (1)
    .mob Cut-throat Mugger
    .train 400081,1
step << Rogue
    #season 2
    #optional
    .train 400081 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Präzision|r] |cRXP_WARN_zum Trainieren von|r |T135610:0|t[Zwischen die Augen]
    .use 204174
    .itemcount 204174,1
step << Paladin
    .goto Stormwind City,74.182,7.465 << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Milton Garbenbund|r << Alliance
    >>Kauft |T133745:0|t|cRXP_LOOT_[Gegenstände]|r von ihm und benutzt es zum Trainieren von |T135961:0|t[Siegel des Märtyrertums] << Paladin
    .collect 226398,1 << Paladin
step << Paladin
    .goto Stormwind City,74.182,7.465 << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Milton Garbenbund|r << Alliance
    >>Falls ihr viel Geld übrig habt, könnt ihr die anderen zwei Testamente von Milton für später kaufen << Paladin
    .collect 216768,1 << Paladin -- Testament of Enhanced Blessings
    .collect 226400,1 << Paladin -- Testament of the Exorcist
    .money <5
step
    .goto StormwindClassic,51.757,12.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 1097 >> Gebt die Quest Elmores Aufgabe ab
    .accept 353 >> Akzeptiert die Quest Stormpikes Lieferung
    .target Grimand Elmore
step << Warrior/Paladin/Rogue
    #optional
    .goto StormwindClassic,56.3,17.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kaita Deepforge|r
    .collect 2901,1,432,1 >>|cRXP_BUY_Kauft eine|r |T134708:0|t[Spitzhacke] |cRXP_BUY_bei ihr|r
    >>|cRXP_WARN_Ihr werdet später|r |T134708:0|t[Bergbau] |cRXP_WARN_lernen|r
    .target Kaita Deepforge
    .train 2018,3 --Blacksmithing
--XX 81c, 1s 75c from 6281
step
    #label DeeprunEnter
    .goto 1453,60.972,11.690,30,0
    .goto 1453,65.933,5.771
    .subzone 2257 >>Betretet die Tiefenbahn
    .zoneskip Ironforge
step
    #xprate <1.59
    #optional
    #label TramEnd
    >>|cRXP_WARN_Nehmt die Tiefenbahn nach Eisenschmiede|r
    >>|cRXP_WARN_Verbessert eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_während ihr auf die Tiefenbahn wartet, falls erforderlich|r << Rogue/Warrior/Paladin
    >>|cRXP_WARN_Ihr benötigt eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_auf Stufe 80 für eine Quest auf Stufe 24|r << Rogue !Dwarf
    >>|cRXP_WARN_Wirkt|r |T136221:0|t[Leerwandler beschwören] |cRXP_WARN_und|r |T135230:0|t[Gesundheitsstein herstellen] |cRXP_WARN_während ihr auf die Tiefenbahn nach Eisenschmiede wartet falls nötig|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Monty|r auf der mittleren Plattform auf der Eisenschmiede-Seite der Tiefenbahn
    .accept 6661 >> Akzeptiert die Quest Tiefenbahn-Ratten-Razzia
    .target Monty
step
    #xprate <1.59
    >>|cRXP_WARN_Benutzt die|r |T133942:0|t[Rattenfänger-Flöte] |cRXP_WARN_gegen |cRXP_ENEMY_Untergrundratte|r in der Tiefenbahn|r
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob Deeprun Rat
step
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Monty|r in der Tiefenbahn
    .turnin 6661 >> Gebt die Quest Tiefenbahn-Ratten-Razzia ab
    .target Monty
step
    #xprate >1.59
    #optional
    #label TramEnd
    >>|cRXP_WARN_Nehmt die Tiefenbahn nach Eisenschmiede|r
    >>|cRXP_WARN_Verbessert eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_während ihr auf die Tiefenbahn wartet, falls erforderlich|r << Rogue/Warrior/Paladin
    >>|cRXP_WARN_Ihr benötigt eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_auf Stufe 80 für eine Quest auf Stufe 24|r << Rogue !Dwarf
    >>|cRXP_WARN_Wirkt|r |T136221:0|t[Leerwandler beschwören] |cRXP_WARN_und|r |T135230:0|t[Gesundheitsstein herstellen] |cRXP_WARN_während ihr auf die Tiefenbahn nach Eisenschmiede wartet falls nötig|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Monty|r auf der mittleren Plattform auf der Eisenschmiede-Seite der Tiefenbahn
    .accept 6661 >> Akzeptiert die Quest Tiefenbahn-Ratten-Razzia
    .target Monty
    .zoneskip Ironforge
step
    #xprate >1.59
    >>|cRXP_WARN_Benutzt die|r |T133942:0|t[Rattenfänger-Flöte] |cRXP_WARN_gegen |cRXP_ENEMY_Untergrundratte|r in der Tiefenbahn|r
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob Deeprun Rat
    .zoneskip Ironforge
step
    #xprate >1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Monty|r in der Tiefenbahn
    .turnin 6661 >> Gebt die Quest Tiefenbahn-Ratten-Razzia ab
    .target Monty
    .zoneskip Ironforge
step
    #completewith next
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    >>|cRXP_WARN_Levelt eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_falls erforderlich, während ihr auf die Straßenbahn wartet|r << Rogue/Warrior/Paladin
    .zone Ironforge >>Nehmt die Tiefenbahn nach Eisenschmiede
step
    .zone Ironforge >>Betretet Eisenschmiede
    .isQuestAvailable 314
step << Warrior
    #optional
    #completewith WarriorTrain
    .goto 1455,67.400,84.909,15,0
    .goto Ironforge,65.905,88.405,12 >> Reise in Richtung |cRXP_FRIENDLY_Bilban Tosslespanner|r
step << Warrior
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bilban Tosslespanner|r
    >>|cRXP_WARN_Stellt sicher, dass ihr 20s 70c für später spart|r
    .train 2687 >> Trainiere deine Klassenfähigkeiten
    .target Bilban Tosslespanner
    .xp <10,1
    .xp >12,1
step << Warrior
    #xprate >1.59
    #optional
    #label WarriorTrain
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bilban Tosslespanner|r
    >>|cRXP_WARN_Stellt sicher, dass ihr 20s 70c für später spart|r
    .train 5242 >> Trainiere deine Klassenfähigkeiten
    .target Bilban Tosslespanner
    .xp <12,1
step << Warrior/Rogue
    #optional
    #completewith next
    .goto 1455,61.552,85.636,10,0
    .goto 1455,61.356,88.398,6 >> Betretet das Gebäude der Timberline Waffen
step << Warrior/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bixi Wobblebonk|r und |cRXP_FRIENDLY_Buliwyf Stonehand|r
    .train 2567 >> Erlernt Wurfwaffen << Warrior
    .goto Ironforge,62.237,89.628
    .target +Bixi Wobblebonk
    .train 199 >> Erlernen 2h Streitkolben << Warrior
    .train 266 >> Erlerne Schusswaffen << Rogue
    .goto Ironforge,61.177,89.508
    .target +Buliwyf Stonehand
step << Warrior
    #xprate >1.49
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brenwyn Winterstahl|r unten
    >>|cRXP_BUY_Kauft die|r |T135425:0|t[Beißendes Wurfmesser] |cRXP_BUY_von ihr|r
    .collect 3107,200 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .xp <10+7310,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #xprate >1.49
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thalgus Donnerfaust|r down stairs
    >>|cRXP_BUY_Kauft ein|r |T135613:0|t[Jägerschießeisen] und |T132384:0|t[Schweres Geschoss] |cRXP_BUY_von ihm|r
    .collect 2511,1 --Collect Hunter's Boomstick (1)
    .collect 2519,200 --Heavy Shot (200)
    .money <0.14
    .target Thalgus Thunderfist
step << Rogue
    #xprate >1.49
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thalgus Donnerfaust|r down stairs
    >>|cRXP_BUY_Kauft eine|r |T135611:0|t[Verschnörkelte Donnerbüchse] und |T132384:0|t[Schweres Geschoss] |cRXP_BUY_von ihm|r
    .collect 2509,1 --Collect Hunter's Boomstick (1)
    .collect 2519,200 --Heavy Shot (200)
    .money >0.14
    .target Thalgus Thunderfist
    .itemcount 2511,<1
step << Warrior
    #xprate >1.49
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brenwyn Winterstahl|r unten
    >>|cRXP_BUY_Kauft|r |T135641:0|t[Ausbalancierter Wurfdolch] |cRXP_BUY_von ihr|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Brenwyn Wintersteel
    .xp >10+7310,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith Rudra
    +Legt die |T135425:0|t[Beißendes Wurfmesser] |cRXP_WARN_an|r
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    #optional
    #completewith Rudra
    +Legt |T135641:0|t[Ausbalancierte Wurfdolche] |cRXP_WARN_an|r
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith next
    .goto 1455,61.356,88.398,6 >> Verlasst das Gebäude der Timberline Waffen
step << Paladin/Warrior
    #season 2
    #optional
    #completewith next
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>Reist zu |cRXP_FRIENDLY_Bruuk Barleybeard|r in das Gasthaus
    .train 425621,1 << Paladin
    .train 425447,1 << Warrior
step << Paladin/Warrior
    #season 2
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>Sprecht mit |cRXP_FRIENDLY_Bruuk Barleybeard|r innerhalb
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425621,1 << Paladin
    .train 425447,1 << Warrior
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step << Paladin/Warrior
    #season 2
    .goto Ironforge,72.40,73.63
    .gossipoption 109084 >>Sprecht mit |cRXP_FRIENDLY_Bruart|r um einen Kampf zu beginnen
    >>Besiegt |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_Seid vorsichtig, wenn er|r |T132939:0|t[Rückhand] wirkt |cRXP_WARN_(es betäubt euch für 2 Sek.)|r
    >>|cRXP_WARN_Erinnert euch,|r |T135924:0|t[Siegel des Kreuzfahrers] |cRXP_WARN_auf ihn zu wirken|r << Paladin
    >>|cRXP_WARN_NICHT versehentlich|r |T135906:0|t[Segen der Macht] |cRXP_WARN_auf ihn wirken|r << Paladin
    >>|cRXP_WARN_Locke ihn nach oben zum Balkon, springe dann vor dem Wirtshaus herab und wirkt|r |T135920:0|t[Heiliges Licht] |cRXP_WARN_wenn nötig|r << Paladin
    >>|cRXP_WARN_Locke ihn nach oben zum Balkon, springe dann vor dem Wirtshaus herab und benutzt|r |T133688:0|t[Bandagen] |cRXP_WARN_falls ihr welche habt/falls nötig|r << Warrior
    >>Versucht, ihn mit |T132316:0|t[|cRXP_WARN_Kniesehne|r] |cRXP_FRIENDLY_und|r |T132324:0|t[|cRXP_WARN_Wurfwaffe|r] |cRXP_FRIENDLY_zu kiten|r << Warrior
    .mob Bruart
    .skipgossip 209004,1
    .train 425621,1 << Paladin
    .train 425447,1 << Warrior
--XX 109084 "Seems you've had a few too many"
--XX Check if another player can skip the "how's business" dialogue for you (paladin, warrior)
step << Paladin/Warrior
    #season 2
    #optional
    .goto Ironforge,72.40,73.63,-1
    .goto Ironforge,72.53,76.94,-1
    >>Besiegt |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_Seid vorsichtig, wenn er|r |T132939:0|t[Rückhand] wirkt |cRXP_WARN_(es betäubt euch für 2 Sek.)|r
    >>|cRXP_WARN_Erinnert euch,|r |T135924:0|t[Siegel des Kreuzfahrers] |cRXP_WARN_auf ihn zu wirken|r << Paladin
    >>|cRXP_WARN_NICHT versehentlich|r |T135906:0|t[Segen der Macht] |cRXP_WARN_auf ihn wirken|r << Paladin
    >>|cRXP_WARN_Locke ihn nach oben zum Balkon, springe dann vor dem Wirtshaus herab und wirkt|r |T135920:0|t[Heiliges Licht] |cRXP_WARN_wenn nötig|r << Paladin
    >>|cRXP_WARN_Locke ihn nach oben zum Balkon, springe dann vor dem Wirtshaus herab und benutzt|r |T133688:0|t[Bandagen] |cRXP_WARN_falls ihr welche habt/falls nötig|r << Warrior
    >>|cRXP_WARN_Nach dem Besiegen von |cRXP_ENEMY_Bruart|r:|r
    >>Sprecht mit |cRXP_FRIENDLY_Bruuk Gerstenbart|r erneut, um die |T134419:0|t[Rune of Zurechtweisung] zu erhalten << Paladin
    >>|cRXP_WARN_Falls er dir die|r |T134419:0|t[Rune of Zurechtweisung]|cRXP_WARN_nicht gibt, müsst ihr möglicherweise |cRXP_ENEMY_Bruart|r erneut bekämpfen|r << Paladin
    >>Sprecht mit |cRXP_FRIENDLY_Bruuk Gerstenbart|r erneut, um die |T134419:0|t[Rune des rasenden Angriffs] zu erhalten << Warrior
    >>|cRXP_WARN_Falls er dir die|r |T134419:0|t[Rune des rasenden Angriffs]|cRXP_WARN_nicht gibt, müsst ihr möglicherweise |cRXP_ENEMY_Bruart|r erneut bekämpfen|r << Warrior
    >>|cRXP_WARN_HINWEIS: Das kann schwierig allein sein. Sucht euch Hilfe, oder ihr werdet aufgefordert, es später erneut zu absolvieren|r << Warrior
    .collect 205683,1 << Paladin --Rune of Rebuke (1)
    .collect 204716,1 << Warrior --Rune of Frenzied Assault (1)
    .target Bruuk Barleybeard
    .train 425621,1 << Paladin
    .train 425447,1 << Warrior
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
step << Paladin
    #season 2
    .cast 402265 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[Rune of Zurechtweisung] |cRXP_WARN_um|r |T134596:0|t[Hosen prägen - Zurechtweisung] zu lernen
    .use 205683
    .itemcount 205683,1 --Rune of Rebuke (1)
    .train 425621,1
step << Paladin
    #season 2
    #completewith Dirt
    .engrave 7 >>|cRXP_WARN_Graviert eure|r |T134596:0|t|cRXP_LOOT_[Hose]|r |cRXP_WARN_mit|r |T134596:0|t[Hosen prägen - Zurechtweisung]
    >>|cRXP_WARN_Erinnert euch|r |T134919:0|t[Zurechtweisung] |cRXP_WARN_auf den Aktionsleisten von Euch zu legen|r
    .train 425621,3
step << Warrior
    #season 2
    .train 425447 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[Rune des rasenden Angriffs] |cRXP_WARN_um|r |T134596:0|t[Hosen prägen - Rasender Angriff] zu lernen
    .use 204716
    .itemcount 204716,1 --Rune of Frenzied Assault (1)
step << Warrior
    #season 2
    #completewith Dirt
    .engrave 7 >>|cRXP_WARN_Graviert eure|r |T134596:0|t|cRXP_LOOT_[Hose]|r |cRXP_WARN_mit|r |T134596:0|t[Hosen prägen - Rasender Angriff]
    .train 425447,3
step
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Holt euch den Flugpunkt in Eisenschmiede
    .target Gryth Thurden
step << Mage/Paladin
    #xprate >1.49
    #optional
    #completewith MageIFTrain << Mage
    #completewith PaladinIFTrain << Paladin
    .goto Ironforge,49.11,56.02,30,0
    .goto Ironforge,44.08,46.60,20,0
    .goto Ironforge,40.84,44.59,20,0
    .goto Ironforge,35.30,32.76,20,0
    .goto Ironforge,27.17,12.58,20,0 << Paladin
    .goto Ironforge,27.60,11.06,20,0 << Mage
    .goto Ironforge,26.8,8.6,12 >>Reist in Richtung |cRXP_FRIENDLY_Dink|r << Mage
    .goto Ironforge,23.131,6.143,12 >>Reist zu |cRXP_FRIENDLY_Brandur Ironhammer|r << Paladin
step << Mage
    #xprate >1.49
    .goto Ironforge,26.8,8.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dink|r innerhalb
    .train 122 >> Trainiere deine Klassenfähigkeiten
    .target Dink
    .xp <10,1
    .xp >12,1
step << Mage
    #xprate >1.49
    .goto Ironforge,26.8,8.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dink|r innerhalb
    .train 145 >> Trainiere deine Klassenfähigkeiten
    .target Dink
    .xp <12,1
    .xp >14,1
step << Mage
    #xprate >1.49
    #label MageIFTrain
    .goto Ironforge,26.8,8.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dink|r innerhalb
    .train 1460 >> Trainiere deine Klassenfähigkeiten
    .target Dink
    .xp <14,1
step << Paladin
    #xprate >1.49
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brandur Ironhammer|r innerhalb
    .train 633 >> Trainiere deine Klassenfähigkeiten
    .target Brandur Ironhammer
    .xp <10,1
    .xp >12,1
step << Paladin
    #xprate >1.49
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Arthur der Treue|r
    .train 19834 >> Trainiere deine Klassenfähigkeiten
    .target Arthur the Faithful
    .xp <12,1
    .xp >14,1
step << Paladin
    #xprate >1.49
    #optional
    #label PaladinIFTrain
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Arthur der Treue|r
    .train 647 >> Trainiere deine Klassenfähigkeiten
    .target Arthur the Faithful
    .xp <14,1
--XX Alternative paladin train if they didn't get 10 in Goldshire
step
    #ssf
    .goto Ironforge,19.11,52.80
    .zone Dun Morogh >>|cRXP_WARN_Exit Eisenschmiede und start heading east towards Vagash|r
step
    #ah
    #optional
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit einem |cRXP_FRIENDLY_Ironforge Auktionator|r
    >>|cRXP_WARN_Falls ihr das nicht wollt oder könnt, überspringt diesen Schritt|r
    >>|cRXP_BUY_Kauft die folgenden Gegenstände für einen schnelleren Abschluss in Loch Modan in Kürze:|r
    >>|T134342:0|t[Ebergedärme]
    >>|T134027:0|t[Bärenfleisch]
    >>|T134437:0|t[Spinnensekret]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .zoneskip Dun Morogh
    .isQuestAvailable 418
step << skip --logout skip
    #ah
    #optional
    .goto 1455,33.220,64.649
    .zone Dun Morogh >>|cRXP_WARN_Springt ganz nach oben auf den |cRXP_PICK_Briefkasten|r, und führt dann einen "Ausloggen Überspringen Skip" durch, indem ihr euch ausloggt und wieder einloggt|r
    .isQuestAvailable 314
    ]])
