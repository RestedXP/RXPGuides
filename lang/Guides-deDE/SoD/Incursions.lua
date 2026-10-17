if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#classic
#season 2
#group RestedXP Alptraum Incursion Dailies
#name (25-32) Dämmerwald Alptraum Incursion

step
    #optional
    #completewith travel
    +|cRXP_WARN_Ihr habt diese Eindringlingszone übertroffen und die XP-Belohnungen für das Questen hier lassen nach. Wählt eine andere Eindringlingszone aus der Liste, die besser für von Euch geeignet ist.|r
    >>|cRXP_WARN_Ruf-Gewinne sind gleich, unabhängig von der Stufe von Euch. Sobald ihr Stufe 53 erreicht, könnt ihr einfach eine unendliche Berufsrohstoff-Abgabequeste für extrem schnellen Ruf machen.|r
    .xp <33,1
    .xp >53,1
step
#ah
    >>Kauft 10 |T133852:0|t[|cRXP_LOOT_Alptraum-Moos|r], 10 |T134314:0|t[|cRXP_LOOT_Traum-berührte Drachenschuppe|r] und 10 |T134575:0|t[|cRXP_LOOT_Kalt-Eisenerz|r] vom Auktionshaus, bevor ihr nach Dämmerwald aufbrecht.
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn ihr nicht in der Nähe eines Auktionshaus-Ort seid oder die Preise nicht lohnenswert sind. Diese drei Quests geben zusammen 16.000 XP und 225 Ruf.|r
    .collect 219399,10 --Nightmare Moss
    .collect 219402,10 --Dream-Touched Dragonscale
    .collect 219401,10 --Cold Iron Ore
    .maxlevel 53
step
#completewith next
.zone Duskwood >> |cRXP_WARN_Reist nach Dämmerwald. Stellt sicher, dass ihr genug Platz in eurem Questtagebuch habt. Ihr werdet 12 bis 15 Quests gleichzeitig aus der Eindringlingzone halten müssen.|r
.maxlevel 53
step
    #label travel
  .goto 1431/0,-438.800,-10793.400,30 >> Geht zum Weg, der zum Zwielichtshain führt.
  .maxlevel 53
step
    .goto 1431/0,-376.600,-10768.500,30 >> Geht den Weg hinauf.
    .maxlevel 53
step
    >>Sucht einen Quartiermeister der |cRXP_FRIENDLY_The Emerald Wardens|r am Ort auf und kauft von ihm eine Rune für von Euch.
    .goto Duskwood,45.6,51.2
    .target Quartermaster Falinar
    .collect 221480,1 << Mage --Spell Notes: Molten Armor
    .collect 221481,1 << Priest --Nihilist Epiphany
    .collect 221482,1 << Warlock --Rune of Affliciton
    .collect 221483,1 << Shaman --Rune of Burn
    .collect 221511,1 << Warrior --Rune of the Protector
    .collect 221512,1 << Rogue --Rune of Alacrity
    .collect 221515,1 << Hunter --Rune of Detonation
    .collect 221517,1 << Druid --Rune of Bloodshed
    .collect 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .maxlevel 53
step
    #completewith next
    .train 431705 >>|cRXP_WARN_Benutzt die|r |T135791:0|t[|cRXP_FRIENDLY_Nihilist Offenbarung|r] |cRXP_WARN_zum Erlernen von|r |T132886:0|t[Zone der Leere] << Priest
    .train 429308 >>|cRXP_WARN_Benutzt die|r |T134939:0|t[|cRXP_FRIENDLY_Zauber-Notizen: Glühende Rüstung|r] |cRXP_WARN_zum Erlernen von|r |T132221:0|t[Glühende Rüstung] << Mage
    .train 431747 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Gebrechen|r] |cRXP_WARN_zum Erlernen von|r |T136228:0|t[Instabiles Gebrechen] << Warlock
    .train 416066 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Brandes|r] |cRXP_WARN_zum Erlernen von|r |T135822:0|t[Brand] << Shaman
    .train 432297 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Eifers|r] |cRXP_WARN_um zu trainieren|r |T236269:0|t[In Stücke schneiden] << Rogue
    .train 431611 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Detonation|r] |cRXP_WARN_um zu trainieren|r |T133713:0|t[T.N.T.] << Hunter
    .train 431447 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Blutvergießens|r] |cRXP_WARN_um zu trainieren|r |T304501:0|t[Aufspießen] << Druid
    .train 429261 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Hammers|r] |cRXP_WARN_um zu trainieren|r |T236262:0|t[Verbesserter Hammer des Zorns] << Paladin
    .use 221480 << Mage -- Spell Notes: Molten Armor
    .use 221481 << Priest --Nihilist Epiphany
    .use 221482 << Warlock --Rune of Affliciton
    .use 221483 << Shaman --Rune of Burn
    .use 221512 << Rogue --Rune of Alacrity
    .use 221515 << Hunter --Rune of Detonation
    .use 221517 << Druid --Rune of Bloodshed
    .use 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .maxlevel 53
step
    .goto Duskwood,45.6,51.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Quartermaster Falinar|r
    .vendor >> |cRXP_BUY_Kauft bis zu 5|r |T134718:0|t[Greater Heilung Potions] |cRXP_BUY_von ihm, wenn ihr wollt.|r |cRXP_WARN_Diese können nur in den Eindringlingszonen verwendet werden|r
    .target Quartermaster Falinar
    .xp >40,1
    .maxlevel 53
step
    .goto Duskwood,45.6,51.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Quartermaster Falinar|r
    .vendor >> |cRXP_BUY_Kauft bis zu 5|r |T236885:0|t[Erhebliche Heilung Potions] |cRXP_BUY_von ihm, wenn ihr wollt.|r |cRXP_WARN_Diese können nur in den Eindringlingszonen verwendet werden|r
    .target Quartermaster Falinar
    .xp <40,1
    .maxlevel 53
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Field Captain Palandar|r
    .goto Duskwood,45.6,51.2
    .accept 81739 >> Akzeptiert die Quest Dämmerwaldmission X: Alptraummoos
    .accept 81740 >> Akzeptiert die Quest Dämmerwaldmission XI: Kalteisenerz
    .accept 81741 >> Akzeptiert die Quest Dämmerwaldmission XII: Traumberührte Drachenschuppe
    .itemcount 219399,10 --Nightmare Moss
    .itemcount 219401,10 --Cold Iron Ore
    .itemcount 219402,10 --Dream-Touched Dragonscale
    .maxlevel 53
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Field Captain Palandar|r
    .goto Duskwood,45.6,51.2
    .accept 81739 >> Akzeptiert die Quest Dämmerwaldmission X: Alptraummoos
    .itemcount 219399,10 --Nightmare Moss
    .maxlevel 53
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Field Captain Palandar|r
    .goto Duskwood,45.6,51.2
    .accept 81740 >> Akzeptiert die Quest Dämmerwaldmission XI: Kalteisenerz
    .itemcount 219401,10 --Cold Iron Ore
    .maxlevel 53
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Field Captain Palandar|r
    .goto Duskwood,45.6,51.2
    .accept 81741 >> Akzeptiert die Quest Dämmerwaldmission XII: Traumberührte Drachenschuppe
    .itemcount 219402,10 --Dream-Touched Dragonscale
    .maxlevel 53
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Field Captain Palandar|r
    .goto Duskwood,45.6,51.2
    .turnin -81739 >> Gebt die Quest Dämmerwaldmission X: Alptraummoos ab
    .turnin -81740 >> Gebt die Quest Dämmerwaldmission XI: Kalteisenerz ab
    .turnin -81741 >> Gebt die Quest Dämmerwaldmission XII: Traumberührte Drachenschuppe ab
    .isOnQuest 81739
    .isOnQuest 81740
    .maxlevel 53
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Field Captain Palandar|r
    >>|cRXP_WARN_Ihr werdet nun eine Endlosschleife von Eindringlingszonen-Quests machen. Alle diese Quests können in einer Gruppe gemacht werden, was sie noch effizienter macht. Wenn ihr Spieler neben dem Quest-Geber seht, versucht eine Gruppe zu bilden. Wenn ihr ein paar Spieler findet, könnt ihr auch die Boss-Quests machen, die sonst nicht zu bewältigen wären.|r
    .goto Duskwood,45.6,51.2
    .target Field Captain Palandar
    .accept 81730 >> Akzeptiert die Quest Dämmerwaldmission I: Worgen besiegen
    .accept 81731 >> Akzeptiert die Quest Dämmerwaldmission II: Oger besiegen
    .accept 81732 >> Akzeptiert die Quest Dämmerwaldmission III: Drachkin besiegen
    .accept 81733 >> Akzeptiert die Quest Dämmerwaldmission IV: Oger ausspionieren
    .accept 81734 >> Akzeptiert die Quest Dämmerwaldmission V: Worgen ausspionieren
    .accept 81735 >> Akzeptiert die Quest Dämmerwaldmission VI: Drachen ausspionieren
    .accept 81736 >> Akzeptiert die Quest Dämmerwaldmission VII: Schattensichel beschaffen
    .accept 81737 >> Akzeptiert die Quest Dämmerwald Mission VIII: Oger Magi Text erholen
    .accept 81738 >> Akzeptiert die Quest Dämmerwaldmission IX: Drachenei beschaffen
    .accept 81745 >> Akzeptiert die Quest Dämmerwaldmission XVI: Kroll Bergschatten retten
    .accept 81746 >> Akzeptiert die Quest Dämmerwaldmission XVII: Alara Hainheiler retten
    .accept 81747 >> Akzeptiert die Quest Dämmerwald Mission XVII: NPCs retten
    .maxlevel 53
step
.group 3
    .goto Duskwood,45.6,51.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Field Captain Palandar|r
    >>|cRXP_WARN_Wenn ihr in einer Gruppe seid, erwägt auch die Elite-Tötungsquests anzunehmen. Die Bosse, die ihr für diese Quests töten müsst, haben massive HP und könnten abhängig von eurer Gruppe eine Herausforderung sein|r
    .accept 81742 >> Akzeptiert die Quest Dämmerwaldmission XIII: Ylanthrius besiegen
    .accept 81743 >> Akzeptiert die Quest Dämmerwaldmission XIV: Vvarc'zul besiegen
    .accept 81744 >> Akzeptiert die Quest Dämmerwaldmission XV: Amokarok besiegen
    .maxlevel 53
step
    #completewith next
    +|cRXP_WARN_Klickt|r auf das Portal neben dem Quest-Geber, um in den Smaragdgrünen Traum versetzt zu werden.
    .maxlevel 53
step
    .goto Duskwood,47.07,49.64,10 >> Verlasst den Zwielichtshain |cRXP_WARN_sobald ihr im Smaragdgrünen Traum seid|r.
    .maxlevel 53
step
    #sticky
    #label Ogres
    >>Tötet |cRXP_ENEMY_Verwirrte Oger|r und |cRXP_ENEMY_Demented Feuer Weavers|r während ihr andere Aufgaben abschließt.
    .complete 81731,1
    .complete 81731,2
    .mob Deranged Ogre
    .mob Demented Fire Weaver
    .maxlevel 53
step
    .goto Duskwood,32.48,69.60
    .gossipoption 122140 >> Sprecht mit |cRXP_FRIENDLY_Elenora Marshwalker|r, die auf dem Boden liegt. Sie sollte euch folgen.
    >>|cRXP_WARN_Falls she's not there that means someone else is escorting her, skip this step if u can't find her|r
    .target Elenora Marshwalker
    .maxlevel 53
step
    #completewith next
    +|cRXP_WARN_Seid vorsichtig, wenn ihr sterbt, werden alle Eskorte-NPCs, die euch folgen, zu den Orten zurückkehren, an denen ihr sie aufgegriffen habt, und ihr müsst sie erneut suchen|r
    >>|cRXP_WARN_Der Eskorte-NPC stoppt auch nach 15 Minuten damit, euch zu folgen, also versucht schnell zu sein!|r
    .maxlevel 53
step
    .goto Duskwood,35.67,80.35
    >>Betretet die Höhle und plündert das [|cRXP_LOOT_Oger Magi Text|r], das auf der Plattform in der Mitte liegt
    .complete 81737,1 --Ogre Magi Text(1)
    .maxlevel 53
step
    .goto Duskwood,36.62,83.75
    >>Geht tiefer in die Höhle und sprecht mit |cRXP_FRIENDLY_Dreamwarden Thalinar|r, um den |T134939:0|t[|cRXP_LOOT_Intelligenz-Bericht|r] zu erhalten
    .complete 81733,1
    .target Dreamwarden Thalinar
    .skipgossip
    .maxlevel 53
step
    .goto Duskwood,37.6,84.6
    .group 3
    >>|cRXP_WARN_Tötet|r |cRXP_ENEMY_Vvarc'Zul|r |cRXP_WARN_. Seid vorsichtig, da er einen enormen Lebenspunkte-Vorrat hat und wirkt|r |T135812:0|t[Feuerball] |cRXP_WARN_und beschwört|r |T135819:0|t[Feuerelementar] |cRXP_WARN_Zusätze|r
    .complete 81743,1 --Vvarc'Zul slain
    .target Vvarc'Zul
    .isOnQuest 81743
    .maxlevel 53
step
    #sticky
    #label Dragons
    #requires Ogres
    >>Tötet die |cRXP_ENEMY_Nightterror Whelps|r und die |cRXP_ENEMY_Wyrmkin Terrorwalkers|r, während ihr andere Aufgaben erfüllt
    .complete 81732,1
    .complete 81732,2
    .mob Nightterror Whelp
    .mob Wyrmkin Terrorwalker
    .maxlevel 53
step
    #requires Ogres
    .goto Duskwood,48.92,72.97
    >>Plündert das [|cRXP_LOOT_Unbefruchtetes Grüner-Drachen-Ei|r], das auf dem Boden neben dem Baumstumpf liegt
    .complete 81738,1
    .maxlevel 53
step
    .goto Duskwood,49.13,77.41
    .gossipoption 122136 >> Sprecht mit |cRXP_FRIENDLY_Alara Grovemender|r, die auf dem Boden liegt. Sie sollte anfangen, euch zu folgen
    >>|cRXP_WARN_Falls she's not there that means someone else is escorting her, skip this step if u can't find her|r
    .target Alara Grovemender
    .maxlevel 53
step
    .goto Duskwood,50.6,77.0
    >>Geht ins Bauernhaus und sprecht mit |cRXP_FRIENDLY_Dreamwarden Amalia|r, um den |T134939:0|t[|cRXP_LOOT_Intelligenz-Bericht|r] zu erhalten
    .complete 81735,1
    .target Dreamwarden Amalia
    .skipgossip
    .maxlevel 53
step
    .goto Duskwood,49.8,74.4
    .group 3
    >>|cRXP_WARN_Töten|r |cRXP_ENEMY_Ylanthrius|r. |cRXP_WARN_Ein grüner Drache fliegt über dem Bauernhof|r|cRXP_WARN_. Er hat einen massiven Gesundheitspool, ist immun gegen Naturzauber, hat einen|r|T132338:0|t[Spalten]|cRXP_WARN_,|r |T134307:0|t[Schwanzfeger] |cRXP_WARN_und|r |T135745:0|t[Herbeiruf.] |cRXP_WARN_einen|r |cRXP_ENEMY_Drache|r |cRXP_WARN_Add, der einen Frontalangriff wirkt, der enormen Schaden verursacht|r
    .complete 81742,1 --Ylanthrius (1)
    .maxlevel 53
    .isOnQuest 81742
step
    #sticky
    #label Worgen
    #requires Dragons
    >>Tötet die |cRXP_ENEMY_Alptraum-Läufer|r und die |cRXP_ENEMY_Alptraum-Weber|r, während ihr andere Aufgaben erfüllt
    .complete 81730,1
    .complete 81730,2
    .mob Nightmare Runner
    .mob Nightmare Weaver
    .maxlevel 53
step
    #requires Dragons
    .goto Duskwood,66.32,76.09
    >>Geht in die Scheune und sprecht mit |cRXP_FRIENDLY_Dreamwarden Dorilar|r, um den |T134939:0|t[|cRXP_LOOT_Intelligenz-Bericht|r] zu erhalten
    >>|cRXP_WARN_Betretet die Scheune nicht zu tief. Ihr könnt mit dem NPC durch die Innenwand sprechen, indem ihr ihn anvisiert und dann eure Interaktionstaste verwendet|r
    >>|cRXP_WARN_Seid vorsichtig, da der Boss|r |cRXP_ENEMY_Amokarok|r |cRXP_WARN_direkt neben dem NPC steht|r
    .complete 81734,1
    .target Dreamwarden Dorilar
    .skipgossip
    .maxlevel 53
step
    .goto Duskwood,66.0,76.4
    >>|cRXP_WARN_Tötet|r |cRXP_ENEMY_Amokarok|r |cRXP_WARN_in der Scheune. Seid vorsichtig, da er einen enormen Lebenspunkte-Vorrat hat und wirkt einen Flächenzauber|r |T136183:0|t[Furcht]
    .complete 81744,1 --Amokarok (1)
    .maxlevel 53
    .isOnQuest 81744
    .group 3
step
    .goto Duskwood,65.99,69.36
    .gossipoption 122146 >> Sprecht mit |cRXP_FRIENDLY_Kroll Mountainshade|r, der auf dem Boden liegt. Er sollte anfangen, euch zu folgen
    >>|cRXP_WARN_Falls he's not there that means someone else is escorting him, skip this step if u can't find him|r
    .target Kroll Mountainshade
    .maxlevel 53
step
    .goto Duskwood,65.60,67.30
    >>Geht zum zweiten Stock des größeren Hauses und plündert die Kiste dort für das |T135138:0|t[|cRXP_LOOT_Shadowscythe|r]
    .complete 81736,1
    .maxlevel 53
step
    #requires Worgen
    .goto Duskwood,70.93,65.90
    .goto Duskwood,44.60,65.80,50 >> Geht nach Westen, bis ihr einen Bereich außerhalb der Spielwelt des Albtraums erreicht. Euer Bildschirm wird grün leuchten und ihr werdet in die Nähe des Eingangs zurückteleportiert. |cRXP_WARN_Macht euch keine Sorgen, die NPCs, die ihr eskortiert, werden euch folgen|r
    .maxlevel 53
step
    #completewith next
    .goto 1431/0,-421.400,-10360.601,5 >> Geht zurück zum Alptraum-Portal. |cRXP_WARN_Sterbt nicht auf dem Weg, oder die Eskorte-Quests scheitern! Wenn ihr das Portal sicher erreicht, sollten alle drei Quests abgeschlossen werden|r
    .maxlevel 53
step
    .goto 1431/0,-421.400,-10360.601
    >>Achtet darauf, dass ihr für alle Eskorte-Quests die Questanerkennung erhaltet. Sie sollten alle abgeschlossen sein, sobald ihr das Portal erreicht. |cRXP_WARN_Wenn ihr die Questanerkennung nicht erhaltet, versucht, ein wenig hin und her zu laufen|r
    .complete 81745,1
    .complete 81746,1
    .complete 81747,1
    .maxlevel 53
step
    .goto Duskwood,46.63,47.90,5 >> Kehrt zum Portal zurück, das ihr benutzt habt, um in den Smaragdgrünen Traum einzutreten, und |cRXP_WARN_klickt darauf, um in die normale Welt zurückzukehren|r
    .maxlevel 53
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Field Captain Palandar|r
    .goto Duskwood,45.6,51.2
    .target Field Captain Palandar
    .turnin 81730 >> Gebt die Quest Dämmerwaldmission I: Worgen besiegen ab
    .turnin 81731 >> Gebt die Quest Dämmerwaldmission II: Oger besiegen ab
    .turnin 81732 >> Gebt die Quest Dämmerwaldmission III: Drachkin besiegen ab
    .turnin 81733 >> Gebt die Quest Dämmerwaldmission IV: Oger ausspionieren ab
    .turnin 81734 >> Gebt die Quest Dämmerwaldmission V: Worgen ausspionieren ab
    .turnin 81735 >> Gebt die Quest Dämmerwaldmission VI: Drachen ausspionieren ab
    .turnin 81736 >> Gebt die Quest Dämmerwaldmission VII: Schattensichel beschaffen ab
    .turnin 81737 >> Gebt die Quest Dämmerwaldmission VIII: Ogermagi-Texte beschaffen ab
    .turnin 81738 >> Gebt die Quest Dämmerwaldmission IX: Dracheneier beschaffen ab
    .turnin 81745 >> Gebt die Quest Dämmerwaldmission XVI: Kroll Bergschatten retten ab
    .turnin 81746 >> Gebt die Quest Dämmerwaldmission XVII: Alara Hainheiler retten ab
    .turnin 81747 >> Gebt die Quest Dämmerwaldmission XVII: Elenora Marschwandler retten ab
    .maxlevel 53
step
    #optional
    .goto Duskwood,45.6,51.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Field Captain Palandar|r
    >>|cRXP_WARN_Wenn ihr in einer Gruppe seid, erwägt auch die Elite-Tötungsquests anzunehmen. Die Bosse, die ihr für diese Quests töten müsst, haben massive HP und könnten abhängig von eurer Gruppe eine Herausforderung sein|r
    .turnin -81742 >> Gebt die Quest Dämmerwaldmission XIII: Ylanthrius besiegen ab
    .turnin -81743 >> Gebt die Quest Dämmerwaldmission XIV: Vvarc'zul besiegen ab
    .turnin -81744 >> Gebt die Quest Dämmerwaldmission XV: Amokarok besiegen ab
    .maxlevel 53
    .target Field Captain Palandar
step
    #optional
    +|cRXP_WARN_Ihr seid zu hochstufig für alle Einfallszonen und könnt die regulären Quests nicht mehr annehmen|r
    >>Wenn ihr euch einen Ruf bei den |cRXP_FRIENDLY_Emerald Wardens|r erwerben möchtet, gibt es in Feralas unendlich wiederholbare Quests, bei denen ihr 10 von entweder |T134186:0|t[|cRXP_LOOT_Moonroot|r], |T133594:0|t[|cRXP_LOOT_Greater Moonstones|r] oder |T134312:0|t[|cRXP_LOOT_Moondragon Schuppen|r] abgeben könnt
    >>Diese Quests bringen kein XP oder Gold, belohnen aber 100 Ruf pro Abgabe. Kauft so viele der kostengünstigsten Materialien vom Auktionshaus wie nötig und geht nach Feralas, um sie abzugeben
    .xp <53,1
step
    #optional
    +Ihr habt diese Alptraum-Incursion-Schleife abgeschlossen. Die Quests werden nach der täglichen Zurücksetzung wieder verfügbar sein. |cRXP_WARN_Wählt einen anderen Guide aus der Liste, um fortzufahren|r
]])

RXPGuides.RegisterGuide([[
#classic
#season 2
#group RestedXP Alptraum Incursion Dailies
#name (40-49) Eschental Alptraum Incursion

step
    #optional
    #completewith next
    +|cRXP_WARN_Ihr seid zu hochstufig für diese Incursion-Zone und erhaltet verringerte XP-Belohnungen für Quests hier. Wählt eine andere Incursion aus der Liste, die für eure Stufe besser geeignet ist.|r
    >>|cRXP_WARN_Ruf-Gewinne sind gleich, unabhängig von eurer Stufe. Aber wenn ihr Level 53 erreicht, könnt ihr einfach eine unendlich wiederholbare Berufsmaterial-Abgabe-Quest machen für extrem schnelle Rufgewinne|r
    .xp <48,1
    .xp >53,1
step
    #ah
    >>Kauft 10 |T132106:0|t[|cRXP_LOOT_Traumwurzel|r], 10 |T134306:0|t[|cRXP_LOOT_Traum-Energieerfüllte Drachenschuppen|r] und 10 |T133848:0|t[|cRXP_LOOT_Dummkopfs Goldstaub|r] vom Auktionshaus, bevor ihr nach Eschental geht
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn ihr nicht in der Nähe eines Auktionshaus-Ortes seid, oder die Preise scheinen nicht lohnenswert. Diese drei Quests geben eine kombinierte Menge von 25.875 XP und 225 Ruf|r
    .collect 219444,10 --Dreamroot
    .collect 219446,10 --Dream-Infused Dragonscale
    .collect 219445,10 --Fool's Gold Dust
    .maxlevel 53
step
    #season 2
    #label travel
    .zone Ashenvale >> Reist nach Eschental. |cRXP_WARN_Stellt sicher, dass ihr genug Questtagebuch-Platz habt. Ihr müsst 12 bis 15 Quests auf einmal aus der Incursion im Tagebuch halten|r
    >>Wenn ihr die Azshara-Flugroute habt, fliegt dorthin und lauft dann zu Eschental – das ist schneller als nach Astranaar zu fliegen << Alliance
    .maxlevel 53
step
    .goto Ashenvale,88.9,42.0,65 >>Reist zum Smaragdgrüner-Alptraum-Portalgebiet im Nordosten von Eschental
    .maxlevel 53
step
    .goto Ashenvale,89.60,40.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Quartermaster Kyleen|r
    .target Quartermaster Kyleen
    .collect 221480,1 << Mage --Spell Notes: Molten Armor
    .collect 221481,1 << Priest --Nihilist Epiphany
    .collect 221482,1 << Warlock --Rune of Affliciton
    .collect 221483,1 << Shaman --Rune of Burn
    .collect 221511,1 << Warrior --Rune of the Protector
    .collect 221512,1 << Rogue --Rune of Alacrity
    .collect 221515,1 << Hunter --Rune of Detonation
    .collect 221517,1 << Druid --Rune of Bloodshed
    .collect 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .maxlevel 53
step
    #completewith next
    .train 431705 >>|cRXP_WARN_Benutzt die|r |T135791:0|t[|cRXP_FRIENDLY_Nihilist Offenbarung|r] |cRXP_WARN_zum Erlernen von|r |T132886:0|t[Zone der Leere] << Priest
    .train 429308 >>|cRXP_WARN_Benutzt die|r |T134939:0|t[|cRXP_FRIENDLY_Zauber-Notizen: Glühende Rüstung|r] |cRXP_WARN_zum Erlernen von|r |T132221:0|t[Glühende Rüstung] << Mage
    .train 431747 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Gebrechen|r] |cRXP_WARN_zum Erlernen von|r |T136228:0|t[Instabiles Gebrechen] << Warlock
    .train 416066 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Brandes|r] |cRXP_WARN_zum Erlernen von|r |T135822:0|t[Brand] << Shaman
    .train 432297 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Eifers|r] |cRXP_WARN_um zu trainieren|r |T236269:0|t[In Stücke schneiden] << Rogue
    .train 431611 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Detonation|r] |cRXP_WARN_um zu trainieren|r |T133713:0|t[T.N.T.] << Hunter
    .train 431447 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Blutvergießens|r] |cRXP_WARN_um zu trainieren|r |T304501:0|t[Aufspießen] << Druid
    .train 429261 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Hammers|r] |cRXP_WARN_um zu trainieren|r |T236262:0|t[Verbesserter Hammer des Zorns] << Paladin
    .use 221480 << Mage -- Spell Notes: Molten Armor
    .use 221481 << Priest --Nihilist Epiphany
    .use 221482 << Warlock --Rune of Affliciton
    .use 221483 << Shaman --Rune of Burn
    .use 221512 << Rogue --Rune of Alacrity
    .use 221515 << Hunter --Rune of Detonation
    .use 221517 << Druid --Rune of Bloodshed
    .use 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .maxlevel 53
step
    #season 2
    #optional
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Field K??pt'n Hannalah|r
    .accept 81777 >> Akzeptiert die Quest Eschental-Mission X: Traumwurzeln
    .accept 81778 >> Akzeptiert die Quest Eschental-Mission XI: Katzengoldstaub
    .accept 81779 >> Akzeptiert die Quest Eschental-Mission XII: Traumerfüllte Drachenschuppe
    .itemcount 219444,10 --Dreamroot
    .itemcount 219446,10 --Dream-Infused Dragonscale
    .itemcount 219445,10 --Fool's Gold Dust
    .maxlevel 53
step
    #season 2
    #optional
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Field K??pt'n Hannalah|r
    .accept 81777 >> Akzeptiert die Quest Eschental-Mission X: Traumwurzeln
    .itemcount 219444,10 --Dreamroot
    .maxlevel 53
step
    #season 2
    #optional
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Field K??pt'n Hannalah|r
    .accept 81778 >> Akzeptiert die Quest Eschental-Mission XI: Katzengoldstaub
    .itemcount 219445,10 --Fool's Gold Dust
    .maxlevel 53
step
    #season 2
    #optional
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Field K??pt'n Hannalah|r
    .accept 81779 >> Akzeptiert die Quest Eschental-Mission XII: Traumerfüllte Drachenschuppe
    .itemcount 219446,10 --Dream-Infused Dragonscale
    .maxlevel 53
step
    #season 2
    #optional
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Field K??pt'n Hannalah|r
    .turnin -81777 >> Gebt die Quest Eschental-Mission X: Traumwurzeln ab
    .turnin -81778 >> Gebt die Quest Eschental-Mission XI: Katzengoldstaub ab
    .turnin -81779 >> Gebt die Quest Eschental-Mission XII: Traumerfüllte Drachenschuppe ab
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Field K??pt'n Hannalah|r
    .accept 81772 >>Akzeptiert die Quest Eschental-Mission V: Satyrn ausspionieren
    .accept 81785 >>Akzeptiert die Quest Eschental-Mission XVIII: Maseara Herbstmond retten
    .accept 81784 >>Akzeptiert die Quest Eschental-Mission XVII: Doran Traumzweig retten
    .accept 81783 >>Akzeptiert die Quest Eschental-Mission XVI: Alyssian Windrufer retten
    .accept 81776 >>Akzeptiert die Quest Eschental-Mission IX: Traumberührtes Drachenei beschaffen
    .accept 81775 >>Akzeptiert die Quest Eschental-Mission VIII: Azsharische Prophezeiung beschaffen
    .accept 81774 >>Akzeptiert die Quest Eschental-Mission VII: Traummotor beschaffen
    .accept 81773 >>Akzeptiert die Quest Eschental-Mission VI: Treants ausspionieren
    .accept 81771 >>Akzeptiert die Quest Eschental-Mission IV: Drachen ausspionieren
    .accept 81768 >>Akzeptiert die Quest Eschental-Mission I: Satyrn besiegen
    .accept 81769 >>Akzeptiert die Quest Eschental-Mission II: Treants besiegen
    .accept 81770 >>Akzeptiert die Quest Eschental-Mission III: Drachkin besiegen
    .target Field Captain Hannalah
    .maxlevel 53
step
    #season 2
    #optional
    .group 3
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Field K??pt'n Hannalah|r
    >>|cRXP_WARN_Wenn ihr in einer Gruppe seid, erwägt auch die Elite-Tötungsquests anzunehmen. Die Bosse, die ihr für diese Quests töten müsst, haben massive HP und könnten abhängig von eurer Gruppe eine Herausforderung sein|r
    .accept 81780 >> Akzeptiert die Quest Eschental-Mission XIII: Larsera besiegen
    .accept 81781 >> Akzeptiert die Quest Eschental-Mission XIV: Zalius besiegen
    .accept 81782 >> Akzeptiert die Quest Eschental-Mission XV: Schredder 9000
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,89.60,40.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Quartermaster Kyleen|r
    .vendor >>|cRXP_BUY_Kauft bis zu 5|r |T236885:0|t[Erhebliche Heilung Potions] |cRXP_BUY_von ihr, wenn ihr möchtet|r
    >>|cRXP_WARN_Diese können nur in den Einbruch-Zonen verwendet werden|r
    .target Quartermaster Kyleen
    .maxlevel 53
step
    #season 2
    #completewith IncursionsComplete
    .goto Ashenvale,93.94,38.21,25,0
    .goto Ashenvale,94.27,35.13,20 >>Betretet |cRXP_PICK_Emerald Traumportal|r
    >>|cRXP_WARN_Lauft direkt an den |cRXP_ENEMY_Satyrs|r, den |cRXP_ENEMY_Felhounds|r und den |cRXP_ENEMY_Imps|r vorbei. Sie werden ihre Aggro zurücksetzen, wenn ihr das Portal betretet|r
    .aura 444759
    .maxlevel 53
step
    #season 2
    #completewith EllodarReport
    >>Tötet |cRXP_ENEMY_Wyrmkin Nightstalkers|r und |cRXP_ENEMY_Terror Whelps|r
    >>|cRXP_WARN_Seid vorsichtig.|r |cRXP_ENEMY_Wyrmkin Nightstalkers|r |cRXP_WARN_sind Stufe 41 Elites|r
    .complete 81770,1 --Wyrmkin Nightstalker slain: 3/3
    .mob +Wyrmkin Nightstalker
    .complete 81770,2 --Terror Whelp slain: 10/10
    .mob +Terror Whelp
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,87.24,43.58
    .gossipoption 122139 >>Sprecht mit |cRXP_FRIENDLY_Doran Dreambough|r. Er sollte anfangen, euch zu folgen.
    .target Doran Dreambough
    .isOnQuest 81784
    .maxlevel 53
step
    #completewith next
    +|cRXP_WARN_Seid vorsichtig, wenn ihr sterbt, werden alle Eskorte-NPCs, die euch folgen, zu den Orten zurückkehren, an denen ihr sie aufgegriffen habt, und ihr müsst sie erneut suchen|r
    >>|cRXP_WARN_Der Eskorte-NPC stoppt auch nach 15 Minuten damit, euch zu folgen, also versucht schnell zu sein!|r
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,86.11,45.87
    >>Beute a |cRXP_LOOT_Dream-Touched Drache Ei|r auf dem Boden
    .complete 81776,1 --Dream-Touched Dragon Egg: 1/1
    .maxlevel 53
step
    #season 2
    .group 3
    .goto Ashenvale,86.0,46.0
    >>|cRXP_WARN_Töten|r |cRXP_ENEMY_Larsera|r|cRXP_WARN_. Sie hat einen massiven Gesundheitspool, ist immun gegen Naturzauber, hat einen|r|T132338:0|t[Spalten]|cRXP_WARN_,|r |T134307:0|t[Schwanzfeger] |cRXP_WARN_und|r |T135745:0|t[Herbeiruf.] |cRXP_WARN_einen|r |cRXP_ENEMY_Drache|r |cRXP_WARN_Add, der einen Frontalangriff wirkt, der enormen Schaden verursacht|r
    .complete 81780,1 --Defeat Larsera
    .isOnQuest 81780
    .maxlevel 53
step
    #season 2
    #label EllodarReport
    .goto Ashenvale,83.64,45.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dreamwarden Ellodar|r
    .complete 81771,1 --Intelligence Report: Forest Song: 1/1
    .target Dreamwarden Ellodar
    .skipgossip
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,81.54,48.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dreamwarden Mandoran|r
    .complete 81772,1 --Intelligence Report: Satyrnaar: 1/1
    .target Dreamwarden Mandoran
    .skipgossip
    .maxlevel 53
step
    #season 2
    #completewith MasearaAut
    .goto Ashenvale,80.74,51.19,0
    .goto Ashenvale,80.72,50.24,0
    .goto Ashenvale,80.74,51.19,0
    .goto Ashenvale,79.89,49.31,0
    .goto Ashenvale,80.78,48.47,0
    .goto Ashenvale,81.72,48.52,0
    .goto Ashenvale,82.20,50.18,0
    .goto Ashenvale,80.00,46.71,0
    .goto Ashenvale,78.29,44.73,0
    .goto Ashenvale,80.72,50.24,0
    >>Tötet |cRXP_ENEMY_Dreamfire Betrayers|r und |cRXP_ENEMY_Dreamfire Hellcallers|r
    .complete 81768,2 --Dreamfire Betrayer slain: 10/10
    .mob +Dreamfire Betrayer
    .complete 81768,1 --Dreamfire Hellcaller slain: 10/10
    .mob +Dreamfire Hellcaller
    .maxlevel 53
step
    #season 2
    .goto 1440/1,-2950.700,2791.700
    >>Plündert |cRXP_LOOT_Azsharan Prophecy|r vom Boden
    .complete 81775,1 --Azsharan Prophecy: 1/1
    .maxlevel 53
step
    #season 2
    #label MasearaAut
    #season 2
    .goto 1440/1,-2978.000,2739.500
    .gossipoption 122150 >>Sprecht mit |cRXP_FRIENDLY_Maseara Autumnmoon|r. Sie sollte anfangen, euch zu folgen.
    .target Maseara Autumnmoon
    .isOnQuest 81785
    .maxlevel 53
step
    #season 2
    #loop
    .goto Ashenvale,80.74,51.19,0
    .goto Ashenvale,80.72,50.24,0
    .goto Ashenvale,80.74,51.19,50,0
    .goto Ashenvale,79.89,49.31,50,0
    .goto Ashenvale,80.78,48.47,50,0
    .goto Ashenvale,81.72,48.52,50,0
    .goto Ashenvale,82.20,50.18,50,0
    .goto Ashenvale,80.00,46.71,50,0
    .goto Ashenvale,78.29,44.73,50,0
    .goto Ashenvale,80.72,50.24,50,0
    >>Tötet |cRXP_ENEMY_Dreamfire Betrayers|r und |cRXP_ENEMY_Dreamfire Hellcallers|r
    .complete 81768,2 --Dreamfire Betrayer slain: 10/10
    .mob +Dreamfire Betrayer
    .complete 81768,1 --Dreamfire Hellcaller slain: 10/10
    .mob +Dreamfire Hellcaller
    .maxlevel 53
step
    #season 2
    .goto 1440/1,-3394.600,2540.900
    >>Öffnet |cRXP_PICK_Vibrating Kiste|r. Plündert |cRXP_LOOT_Dreamengine|r daraus
    .complete 81774,1 --Dreamengine: 1/1
    .maxlevel 53
step
    #season 2
    #completewith next
    .goto Ashenvale,90.14,58.08,10 >>Betretet Burg Kargathia
    >>|cRXP_WARN_Der Eingang ist blockiert durch|r |cRXP_ENEMY_NPCs|r|cRXP_WARN_ (Stufe 41 Elite). Wendet Menge Control an oder tötet sie während ihr hineinlauft|r
    .mob Dreamharvester
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,91.23,58.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dreamwarden Lanaria|r
    .complete 81773,1 --Intelligence Report: Warsong Lumber Camp: 1/1
    .target Dreamwarden Lanaria
    .skipgossip
    .maxlevel 53
step
.group 3
    #season 2
    .goto Ashenvale,87.6,62.2
    >>Tötet Schredder 9000. Passt auf, da er einen riesigen Gesundheitspool hat, |T132338:0|t[Spalten]|cRXP_WARN_,|r und |T132338:0|t[Wirkungsbereich Rückstoß]|cRXP_ENEMY_.|r
    .complete 81782,1 --Defeat Shredder 9000
    .isOnQuest 81782
    .maxlevel 53
step
    #sticky
    #label Treants
    .goto Ashenvale,85.6,65.6,0
    .goto Ashenvale,86.6,59.6,0
    .goto Ashenvale,90.0,50.2,0
    >>Tötet die |cRXP_ENEMY_Rachsüchtige Ancients|r in der Gegend
    >>|cRXP_WARN_Passt auf, da sie Eliten sind. Überspringt diesen Schritt, wenn Ihr nicht stark genug seid, um sie solo zu besiegen|r
    .complete 81769,1 --Vengeful Ancient slain (7)
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,92.11,54.21
    .gossipoption 122138 >>Sprecht mit |cRXP_FRIENDLY_Alyssian Windcaller|r. Er sollte anfangen, euch zu folgen.
    .target Alyssian Windcaller
    .isOnQuest 81783
    .maxlevel 53
step
    #season 2
    #requires Treants
    .goto Ashenvale,81.0,50.6
    .group 3
    >>Tötet |cRXP_ENEMY_Zalius|r |cRXP_WARN_.Be careful as he has a massive health pool|r
    .complete 81781,1 --Defeat Zalius (1)
    .isOnQuest 81781
    .maxlevel 53
step
    #season 2
    #loop
    .goto Ashenvale,86.31,43.07,0
    .goto Ashenvale,86.57,47.66,50,0
    .goto Ashenvale,87.03,45.92,50,0
    .goto Ashenvale,88.26,42.14,50,0
    .goto Ashenvale,86.31,43.07,50,0
    .goto Ashenvale,84.36,45.06,50,0
    .goto Ashenvale,83.90,47.38,50,0
    >>Beenden killing |cRXP_ENEMY_Wyrmkin Nightstalkers|r und |cRXP_ENEMY_Terror Whelps|r
    >>|cRXP_WARN_Seid vorsichtig.|r |cRXP_ENEMY_Wyrmkin Nightstalkers|r |cRXP_WARN_sind Stufe 41 Elites|r
    .complete 81770,1 --Wyrmkin Nightstalker slain: 3/3
    .mob +Wyrmkin Nightstalker
    .complete 81770,2 --Terror Whelp slain: 10/10
    .mob +Terror Whelp
    .maxlevel 53
step
    #season 2
    #requires Treants
    #label IncursionsComplete
    .goto Ashenvale,93.97,38.02
    >>Reist zu |cRXP_PICK_Emerald Traumportal|r
    >>|cRXP_WARN_Falls |cRXP_FRIENDLY_Maseara|r, |cRXP_FRIENDLY_Alyssian|r oder |cRXP_FRIENDLY_Doran|r euch nicht mehr folgen, geht zurück und sprecht erneut mit ihnen|r
    >>|cRXP_WARN_Geht hin und her auf der stelle, die von Eurem Pfeil markiert wird (am Fuße der Portal-Rampe), ein paar Mal. Dies wird die NPCs über die Schwelle bringen und Euch den Fortschritt geben|r
    .complete 81783,1 --Rescue Alyssian Windcaller: 1/1
    .target +Alyssian Windcaller
    .goto Ashenvale,92.11,54.21,0
    .complete 81784,1 --Rescue Doran Dreambough: 1/1
    .goto Ashenvale,87.24,43.58,0
    .target +Doran Dreambough
    .complete 81785,1 --Rescue Maseara Autumnmoon: 1/1
    .goto Ashenvale,81.16,50.28,0
    .target +Maseara Autumnmoon
    .maxlevel 53
step
    #season 2
    #completewith next
    .goto Ashenvale,93.94,38.21,25,0
    .goto Ashenvale,94.27,35.13,20 >>Verlasst |cRXP_PICK_Emerald Traumportal|r
    .aura -444759
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,89.57,40.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Field K??pt'n Hannalah|r
    .turnin 81771 >>Gebt die Quest Eschental-Mission IV: Drachen ausspionieren ab
    .turnin 81772 >>Gebt die Quest Eschental-Mission V: Satyrn ausspionieren ab
    .turnin 81773 >>Gebt die Quest Eschental-Mission VI: Treants ausspionieren ab
    .turnin 81774 >>Gebt die Quest Eschental-Mission VII: Traummotor beschaffen ab
    .turnin 81775 >>Gebt die Quest Eschental-Mission VIII: Azsharische Prophezeiung beschaffen ab
    .turnin 81776 >>Gebt die Quest Eschental-Mission IX: Traumberührtes Drachenei beschaffen ab
    .turnin 81783 >>Gebt die Quest Eschental-Mission XVI: Alyssian Windrufer retten ab
    .turnin 81784 >>Gebt die Quest Eschental-Mission XVII: Doran Traumzweig retten ab
    .turnin 81785 >>Gebt die Quest Eschental-Mission XVIII: Maseara Herbstmond retten ab
    .turnin 81768 >>Gebt die Quest Eschental-Mission I: Satyrn besiegen ab
    .turnin 81769 >>Gebt die Quest Eschental-Mission II: Treants besiegen ab
    .turnin 81770 >>Gebt die Quest Eschental-Mission III: Drachkin besiegen ab
    .target Field Captain Hannalah
    .maxlevel 53
step
    #season 2
    #optional
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Field K??pt'n Hannalah|r
    .turnin -81780 >> Gebt die Quest Eschental-Mission XIII: Larsera besiegen ab
    .turnin -81781 >> Gebt die Quest Eschental-Mission XIV: Zalius besiegen ab
    .turnin -81782 >> Gebt die Quest Eschental Mission XV: Schredder 9000 ab
    .target Field Captain Hannalah
    .maxlevel 53
step
    #optional
    +|cRXP_WARN_Ihr seid zu hochstufig für alle Einfallszonen und könnt die regulären Quests nicht mehr annehmen|r
    >>Wenn ihr euch einen Ruf bei den |cRXP_FRIENDLY_Emerald Wardens|r erwerben möchtet, gibt es in Feralas unendlich wiederholbare Quests, bei denen ihr 10 von entweder |T134186:0|t[|cRXP_LOOT_Moonroot|r], |T133594:0|t[|cRXP_LOOT_Greater Moonstones|r] oder |T134312:0|t[|cRXP_LOOT_Moondragon Schuppen|r] abgeben könnt
    >>Diese Quests bringen kein XP oder Gold, belohnen aber 100 Ruf pro Abgabe. Kauft so viele der kostengünstigsten Materialien vom Auktionshaus wie nötig und geht nach Feralas, um sie abzugeben
    .xp <53,1
step
    #optional
    +Ihr habt diese Alptraum-Incursion-Schleife abgeschlossen. Die Quests werden nach der täglichen Zurücksetzung wieder verfügbar sein. |cRXP_WARN_Wählt einen anderen Guide aus der Liste, um fortzufahren|r
]])

RXPGuides.RegisterGuide([[
#classic
#season 2
#group RestedXP Alptraum Incursion Dailies
#name (50-53) Das Hinterland Alptraum Incursion


step
    #ah
    >>Kauft 10 |T134207:0|t[|cRXP_LOOT_Stern Lotus|r], 10 |T134964:0|t[|cRXP_LOOT_Starshells|r] und 10 |T237436:0|t[|cRXP_LOOT_Starsilver Ore|r] beim Auktionshaus, bevor ihr ins Hinterland geht
    >>|cRXP_WARN_Überspringt diesen Schritt, falls ihr nicht in der Nähe eines Ortes mit Auktionshaus seid oder die Preise sich nicht lohnen. Diese drei Quests geben zusammen 38.250 EP und 300 Ruf|r
    .collect 219454,10 --Star Lotus
    .collect 219487,10 --Starshell
    .collect 219486,10 --Starsilver Ore
    .maxlevel 53
step
    #completewith next
    #label travel
    .zone The Hinterlands >> Reist zum Hinterland
    .maxlevel 53
step
    .goto The Hinterlands,60.81,37.86,20 >> Geht zur Brücke, die nach Seradane führt
    .maxlevel 53
step
    .goto The Hinterlands,61.4,34.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Quartermaster Alandra|r
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
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .maxlevel 53
step
    #completewith next
    .train 431705 >>|cRXP_WARN_Benutzt die|r |T135791:0|t[|cRXP_FRIENDLY_Nihilist Offenbarung|r] |cRXP_WARN_zum Erlernen von|r |T132886:0|t[Zone der Leere] << Priest
    .train 429308 >>|cRXP_WARN_Benutzt die|r |T134939:0|t[|cRXP_FRIENDLY_Zauber-Notizen: Glühende Rüstung|r] |cRXP_WARN_zum Erlernen von|r |T132221:0|t[Glühende Rüstung] << Mage
    .train 431747 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Gebrechen|r] |cRXP_WARN_zum Erlernen von|r |T136228:0|t[Instabiles Gebrechen] << Warlock
    .train 416066 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Brandes|r] |cRXP_WARN_zum Erlernen von|r |T135822:0|t[Brand] << Shaman
    .train 432297 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Eifers|r] |cRXP_WARN_um zu trainieren|r |T236269:0|t[In Stücke schneiden] << Rogue
    .train 431611 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Detonation|r] |cRXP_WARN_um zu trainieren|r |T133713:0|t[T.N.T.] << Hunter
    .train 431447 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Blutvergießens|r] |cRXP_WARN_um zu trainieren|r |T304501:0|t[Aufspießen] << Druid
    .train 429261 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Hammers|r] |cRXP_WARN_um zu trainieren|r |T236262:0|t[Verbesserter Hammer des Zorns] << Paladin
    .use 221480 << Mage -- Spell Notes: Molten Armor
    .use 221481 << Priest --Nihilist Epiphany
    .use 221482 << Warlock --Rune of Affliciton
    .use 221483 << Shaman --Rune of Burn
    .use 221512 << Rogue --Rune of Alacrity
    .use 221515 << Hunter --Rune of Detonation
    .use 221517 << Druid --Rune of Bloodshed
    .use 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .maxlevel 53
step
    #optional
    >>Überquert die Brücke und |Tinterface/worldmap/chatbubble_64grey.blp:20|tsprecht mit |cRXP_FRIENDLY_Field Captain Korlian|r
    .goto The Hinterlands,61.4,34.6
    .accept 81833 >> Akzeptiert die Quest Hinterlandmission X: Sternenlotus
    .accept 81834 >> Akzeptiert die Quest Hinterlandmission XI: Sternensilbererz
    .accept 81835 >> Akzeptiert die Quest Hinterlandmission XII: Sternenmuscheln
    .itemcount 219454,10 --Star Lotus
    .itemcount 219487,10 --Starshell
    .itemcount 219486,10 --Starsilver Ore
    .target Field Captain Korlian
    .maxlevel 53
step
    #optional
    >>Überquert die Brücke und |Tinterface/worldmap/chatbubble_64grey.blp:20|tsprecht mit |cRXP_FRIENDLY_Field Captain Korlian|r
    .goto The Hinterlands,61.4,34.6
    .accept 81833 >> Akzeptiert die Quest Hinterlandmission X: Sternenlotus
    .itemcount 219454,10 --Star Lotus
    .target Field Captain Korlian
    .maxlevel 53
step
    #optional
    >>Überquert die Brücke und |Tinterface/worldmap/chatbubble_64grey.blp:20|tsprecht mit |cRXP_FRIENDLY_Field Captain Korlian|r
    .goto The Hinterlands,61.4,34.6
    .accept 81834 >> Akzeptiert die Quest Hinterlandmission XI: Sternensilbererz
    .itemcount 219486,10 --Starsilver Ore
    .target Field Captain Korlian
    .maxlevel 53
step
    #optional
    >>Überquert die Brücke und |Tinterface/worldmap/chatbubble_64grey.blp:20|tsprecht mit |cRXP_FRIENDLY_Field Captain Korlian|r
    .goto The Hinterlands,61.4,34.6
    .accept 81835 >> Akzeptiert die Quest Hinterlandmission XII: Sternenmuscheln
    .itemcount 219487,10 --Starshell
    .target Field Captain Korlian
    .maxlevel 53
step
    #optional
    >>Überquert die Brücke und |Tinterface/worldmap/chatbubble_64grey.blp:20|tsprecht mit |cRXP_FRIENDLY_Field Captain Korlian|r
    .goto The Hinterlands,61.4,34.6
    .turnin -81833 >> Gebt die Quest Hinterlandmission X: Sternenlotus ab
    .turnin -81834 >> Gebt die Quest Hinterlandmission XI: Sternensilbererz ab
    .turnin -81835 >> Gebt die Quest Hinterlandmission XII: Sternenmuscheln ab
    .target Field Captain Korlian
step
    >>Überquert die Brücke und |Tinterface/worldmap/chatbubble_64grey.blp:20|tsprecht mit |cRXP_FRIENDLY_Field Captain Korlian|r
    .goto The Hinterlands,61.4,34.6
    .accept 82068 >> Akzeptiert die Quest Alptraumeinfälle abwehren
    .accept 81786 >> Akzeptiert die Quest Hinterlandmission I: Mondkin besiegen
    .accept 81787 >> Akzeptiert die Quest Hinterlandmission II: Riesenschildkröten besiegen
    .accept 81788 >> Akzeptiert die Quest Hinterlandmission III: Drachkin besiegen
    .accept 81789 >> Akzeptiert die Quest Hinterlandmission IV: Drachen ausspionieren
    .accept 81817 >> Akzeptiert die Quest Hinterlandmission V: Schildkröte ausspionieren
    .accept 81820 >> Akzeptiert die Quest Hinterlandmission VI: Mondkin ausspionieren
    .accept 81826 >> Akzeptiert die Quest Hinterlandmission VII: Sternenberührtes Drachenei beschaffen
    .accept 81830 >> Akzeptiert die Quest Hinterlandmission VIII: Elunarisches Relikt beschaffen
    .accept 81832 >> Akzeptiert die Quest Hinterlandmission IX: Traumperle beschaffen
    .accept 81850 >> Akzeptiert die Quest Hinterlandmission XVI: Elianar Schattentrinker retten
    .accept 81851 >> Akzeptiert die Quest Hinterlandmission XVII: Serlina Sternenhell retten
    .accept 81852 >> Akzeptiert die Quest Hinterlandmission XVIII: Veanna Wolkenschläfer retten
    .target Field Captain Korlian
    .maxlevel 53
step
    #optional
    .group 3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Field K??pt'n Korlian|r
    >>|cRXP_WARN_Wenn ihr in einer Gruppe seid, erwägt auch die Elite-Tötungsquests anzunehmen. Die Bosse, die ihr für diese Quests töten müsst, haben massive HP und könnten abhängig von eurer Gruppe eine Herausforderung sein|r
    .accept 81837 >> Akzeptiert die Quest Hinterlandmission XIII: Florius besiegen
    .accept 81838 >> Akzeptiert die Quest Hinterlandmission XIV: Verdammniskin besiegen
    .accept 81839 >> Akzeptiert die Quest Hinterlandmission XV: Ghamoo-Raja besiegen
    .goto The Hinterlands,61.4,34.6
    .target Field Captain Korlian
    .maxlevel 53
step
    .goto The Hinterlands,61.4,34.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Quartermaster Alandra|r
    .vendor >> |cRXP_BUY_Kauft bis zu 5|r |T236885:0|t[Erhebliche Heiltränke] |cRXP_BUY_bei ihr, wenn ihr wollt.|r |cRXP_WARN_Diese können nur innerhalb der Invasionszonen verwendet werden|r
    .target Quartermaster Alandra
    .maxlevel 53
step
    #completewith next
    +|cRXP_WARN_Klickt|r auf das Portal neben dem Quest-Geber, um in den Smaragdgrünen Traum versetzt zu werden.
step
    .goto 1425/0,-3788.100,468.800,20 >> Lauft zu Lauerfels. |cRXP_WARN_Weicht dem |cRXP_ENEMY_Instabilen Irrwisch|r aus, oder sie explodieren und verursachen dir ca. 700 Schaden|r
    .maxlevel 53
step
    #sticky
    #label Moonkin
    .goto The Hinterlands,57.9,39.6,0
    >>Tötet |cRXP_ENEMY_Fallen Mondkin|r innerhalb Lauerfels
    .complete 81786,1 --Fallen Moonkin slain (20)
    .mob Fallen Moonkin
    .maxlevel 53
step
    >>Betretet die Höhle und räumt die rechte Rampe auf. Sammelt die Beute aus der Truhe - das |T133247:0|t[|cRXP_PICK_Elunar Relikt|r]
    .goto 1425/0,-3799.300,354.700
    .complete 81830,1 --|Elunar Relic: 1/1
    .maxlevel 53
step
    .solo
    >>Geht zum großen Raum am Boden der Höhle und sprecht mit |cRXP_FRIENDLY_Dreamwarden Valori|r, um seinen |T134939:0|t[|cRXP_LOOT_Intelligenzbericht|r] zu erhalten
    >>|cRXP_WARN_Er ist verborgen direkt neben dem|r |cRXP_ENEMY_Verdammniskin|r |cRXP_WARN_Boss. Versucht schnell, die Intelligenz zu bekommen und rennt weg. Kämpft nicht gegen den Boss|r
    >>|cRXP_WARN_Ihr werdet wahrscheinlich bei dieser Quest aufgrund des|r |cRXP_ENEMY_Verdammniskin|r |cRXP_WARN_hohen Schadens sterben, aber der Rückweg ist sehr kurz|r
    .goto 1425/0,-3756.200,357.000
    .complete 81820,1 --|Intelligence Report: Skulk Rock: 1/1
    .target Dreamwarden Valori
    .skipgossip
    .maxlevel 53
step
    #sticky
    #label groupSkulk
    .group 3
    >>Geht zum großen Raum am Boden der Höhle und sprecht mit |cRXP_FRIENDLY_Dreamwarden Valori|r, um seinen |T134939:0|t[|cRXP_LOOT_Intelligenzbericht|r] zu erhalten
    >>|cRXP_WARN_Er ist getarnt direkt neben dem|r Verdammniskin|cRXP_ENEMY_ |rBoss.|cRXP_WARN_
    .goto 1425/0,-3756.200,357.000
    .complete 81820,1 --|Intelligence Report: Skulk Rock: 1/1
    .target Dreamwarden Valori
    .skipgossip
    .maxlevel 53
step
    .group 3
    .goto The Hinterlands,56.6,44.6
    >>Tötet den |cRXP_ENEMY_Verdammniskin|r Boss im großen Raum am Boden der Höhle.
    >>|cRXP_WARN_Seid vorsichtig, da er|r |T136096:0|t[Mondfeuer] |cRXP_WARN_und|r |T136006:0|t[Zorn] |cRXP_WARN_wirkt, was hohen Schaden verursacht und ein Wirkungsbereich|r |T136183:0|t[Furcht]
    .complete 81838,1 --Defeat Doomkin
    .mob Doomkin
    .isOnQuest 81838
    .maxlevel 53
step
    #requires Moonkin
    #requires groupSkulk
    .goto The Hinterlands,53.58,39.10
    .gossipoption 122141 >> Sprecht mit |cRXP_FRIENDLY_Elianar Shadowdrinker|r, der auf dem Boden liegt. Er sollte anfangen, euch zu folgen.
    >>|cRXP_WARN_Ihr könnt mit ihm durch die Rückseite des hölzernen Zauns sprechen, ohne hineingehen zu müssen|r
    >>|cRXP_WARN_Falls he's not there that means someone else is escorting him, skip this step if u can't find him|r
    .target Elianar Shadowdrinker
    .maxlevel 53
step
    #sticky
    #label Dragonkin
    .goto The Hinterlands,46.7,39.9,0
    >>Tötet |cRXP_ENEMY_Zorn-Junge|r und |cRXP_ENEMY_Wyrmkin-Sternenjäger|r in den Ruinen
    >>|cRXP_WARN_Seid vorsichtig, da die|r |cRXP_ENEMY_Wyrmkin-Sternenjäger|r |cRXP_WARN_Elite sind und wirkt|r |T135812:0|t[Feuerball] |cRXP_WARN_, das bis zu 500 Schaden anrichtet. Überspringt diese Quest, wenn ihr sie nicht allein bewältigen könnt|r
    .complete 81788,1 --Wrath Whelp Slain (10)
    .complete 81788,2 --Wyrmkin Starhunter SLain (3)
    .mob Wrath Whelp
    .mob Wyrmkin Starhunter
    .maxlevel 53
step
    #completewith next
    +|cRXP_WARN_Seid vorsichtig, wenn ihr sterbt, werden alle Eskorte-NPCs, die euch folgen, zu den Orten zurückkehren, an denen ihr sie aufgegriffen habt, und ihr müsst sie erneut suchen|r
    >>|cRXP_WARN_Der Eskorte-NPC stoppt auch nach 15 Minuten damit, euch zu folgen, also versucht schnell zu sein!|r
    .maxlevel 53
step
    .goto The Hinterlands,46.85,41.17
    >>Sprecht mit |cRXP_FRIENDLY_Dreamwarden Laninar|r, der am markierten Ort verborgen ist, um seinen |T134939:0|t[|cRXP_LOOT_Intelligenzbericht|r] zu erhalten.
    .complete 81789,1 --|Intelligence Report: Agol'watha: 1/1
    .target Dreamwarden Laninar
    .skipgossip
    .maxlevel 53
step
    >>Plündert die |T236997:0|t[|cRXP_PICK_Stern-gezeichnete Drachenegg|r] aus dem Zelt
    >>|cRXP_WARN_Versucht, um die äußere Kante der Mauern herumzugehen, um zu vermeiden, Elite-Drachenkin anzugreifen. Ihr könnt das Ei durch die Rückseite des Zeltes plündern, ohne mit Elite-Gegnern kämpfen zu müssen|r
    .goto 1425/0,-3320.800,474.500
    .complete 81826,1 --|Star-Touched Dragonegg: 1/1
    .maxlevel 53
step
    .group 3
    .goto The Hinterlands,46.0,39.8
    >>Tötet |cRXP_ENEMY_Florius|r, den grünen Drachen, der über den Ruinen fliegt
    >>|cRXP_WARN_Passt auf, denn er hat einen massiven Gesundheitspool, ist immun gegen Naturzauber, hat einen|r|T132338:0|t[Spalten]|cRXP_WARN_,|r |T134307:0|t[Schwanzfeger] |cRXP_WARN_und|r |T135745:0|t[Herbeiruf.] |cRXP_WARN_einen|r |cRXP_ENEMY_Drache|r |cRXP_WARN_Add, der einen Frontalangriff wirkt, der enormen Schaden verursacht|r
    .complete 81837,1 --Defeat Florius
    .mob Florius
    .isOnQuest 81837
    .maxlevel 53
step
    #requires Dragonkin
    .goto The Hinterlands,42.31,31.43
    .goto The Hinterlands,60.67,38.32,150 >> Geht westlich in die Berge, bis euer Bildschirm grün glüht. Ihr werdet näher zum Startort teleportiert.
    >>|cRXP_WARN_Keine Sorge, alle Eskorte-NPCs werden euch schließlich folgen|r
    .maxlevel 53
step
    #sticky
    #label Turtles
    .goto The Hinterlands,62.9,41.0,0
    .goto The Hinterlands,62.9,45.0,0
    .goto The Hinterlands,67.1,41.5,0
    .goto The Hinterlands,66.0,47.5,0
    .goto The Hinterlands,71.5,45.3,0
    .goto The Hinterlands,69.8,51.2,0
    .goto The Hinterlands,65.1,39.1,0
    .goto The Hinterlands,58.6,36.0,0
    >>Tötet |cRXP_ENEMY_Dreamwater Vicejaws|r während ihr die anderen Ziele erfüllt
    .complete 81787,1 --Dreamwater Vicejaw slain (20)
    .mob Dreamwater Vicejaw
    .maxlevel 53
step
    .goto The Hinterlands,57.30,42.95
    .gossipoption 122151 >>Klettert zur Spitze des Hügels. Sprecht mit |cRXP_FRIENDLY_Veanna Cloudsleeper|r, die auf dem Boden liegt. Sie sollte anfangen, euch zu folgen.
    >>|cRXP_WARN_Falls she's not there that means someone else is escorting her, skip this step if u can't find her|r
    .target Veanna Cloudsleeper
    .maxlevel 53
step
    .goto The Hinterlands,71.09,48.14
    .gossipoption 122149 >> Betretet die kleine hölzerne Festung. Sprecht mit |cRXP_FRIENDLY_Serlina Starbright|r, die auf dem Boden liegt. Sie sollte anfangen, euch zu folgen.
    >>|cRXP_WARN_Falls she's not there that means someone else is escorting her, skip this step if u can't find her|r
    .target Serlina Starbright
    .maxlevel 53
step
    >>Betretet die Ruinen Shaol'wathas und plündert das |T237371:0|t[|cRXP_PICK_Dreampearl|r]. |cRXP_WARN_Passt auf, dass ihr|r Ghamoo-Raja|cRXP_ENEMY_ |cRXP_WARN|nicht aggriert|r
    .goto 1425/0,-4355.400,79.400
    .complete 81832,1 --|Dreampearl: 1/1
    .maxlevel 53
step
    .group 3
    .goto The Hinterlands,72.7,54.2
    >>Tötet |cRXP_ENEMY_Ghamoo-Raja|r
    >>|cRXP_WARN_Seid vorsichtig, da sie|r |T136231:0|t[Rüstung durchstechen] |cRXP_WARN_und|r|T132270:0|t[Dreifachbiss] |cRXP_WARN_wirkt, ein Angriff, der euch 3 Mal in schneller Abfolge treffen wird.|r |T132270:0|t[Dreifachbiss] |cRXP_WARN_kann euch auch aus der Ferne treffen|r
    .complete 81839,1 --Defeat Ghamoo-Raja
    .isOnQuest 81839
    .maxlevel 53
step
    >>Sprecht mit |cRXP_FRIENDLY_Dreamwarden Sanathel|r, der am markierten Ort verborgen ist, um seinen |T134939:0|t[|cRXP_LOOT_Intelligenzbericht|r] zu erhalten.
    .goto 1425/0,-4389.800,81.400
    .complete 81817,1 --|Intelligence Report: Shaol'watha: 1/1
    .target Dreamwarden Sanathel
    .skipgossip
    .maxlevel 53
step
    .goto The Hinterlands,77.13,54.35
    .goto The Hinterlands,60.67,38.32,150 >> Geht östlich, bis euer Bildschirm grün glüht. Ihr werdet näher zum Startort teleportiert.
    >>|cRXP_WARN_Keine Sorge, alle Eskorte-NPCs werden euch schließlich folgen|r
    .maxlevel 53
step
    #requires Turtles
    .goto 1425/0,-4010.800,758.000
    >>Stellt sicher, dass ihr alle Escorte-Quests abgeschlossen habt. Sie sollten alle abgeschlossen sein, wenn ihr zum großen Traum-Portal kommt
    >>|cRXP_WARN_Wenn einer der drei NPCs euch nicht mehr folgt, geht zurück und sprecht wieder mit ihm|r
    >>|cRXP_WARN_Geht hin und her auf der stelle, die von Eurem Pfeil markiert wird (am Fuße der Portal-Rampe), ein paar Mal. Dies wird die NPCs über die Schwelle bringen und Euch den Fortschritt geben|r
    .complete 81850,1
    .complete 81851,1
    .complete 81852,1
    .maxlevel 53
step
    .goto The Hinterlands,61.35,34.58,5 >> Kehrt durch das Portal zur echten Version von Das Hinterland zurück
    .maxlevel 53
step
    >>Sprecht mit |cRXP_FRIENDLY_Field Captain Korlian|r
    .goto The Hinterlands,61.4,34.6
    .turnin 82068 >> Gebt die Quest Alptraumeinfälle abwehren ab
    .turnin 81786 >> Gebt die Quest Hinterlandmission I: Mondkin besiegen ab
    .turnin 81787 >> Gebt die Quest Hinterlandmission II: Riesenschildkröten besiegen ab
    .turnin 81788 >> Gebt die Quest Hinterlandmission III: Drachkin besiegen ab
    .turnin 81789 >> Gebt die Quest Hinterlandmission IV: Drachen ausspionieren ab
    .turnin 81817 >> Gebt die Quest Hinterlandmission V: Schildkröte ausspionieren ab
    .turnin 81820 >> Gebt die Quest Hinterlandmission VI: Mondkin ausspionieren ab
    .turnin 81826 >> Gebt die Quest Hinterlandmission VII: Sternenberührtes Drachenei beschaffen ab
    .turnin 81830 >> Gebt die Quest Hinterlandmission VIII: Elunarisches Relikt beschaffen ab
    .turnin 81832 >> Gebt die Quest Hinterlandmission IX: Traumperle beschaffen ab
    .turnin 81850 >> Gebt die Quest Hinterlandmission XVI: Elianar Schattentrinker retten ab
    .turnin 81851 >> Gebt die Quest Hinterlandmission XVII: Serlina Sternenhell retten ab
    .turnin 81852 >> Gebt die Quest Hinterlandmission XVII: Veanna Wolkenrufer retten ab
    .target Field Captain Korlian
    .maxlevel 53
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Field K??pt'n Korlian|r
    .turnin -81837 >> Gebt die Quest Hinterlandmission XIII: Florius besiegen ab
    .turnin -81838 >> Gebt die Quest Hinterlandmission XIV: Verdammniskin besiegen ab
    .turnin -81839 >> Gebt die Quest Hinterlandmission XV: Ghamoo-Raja besiegen ab
    .goto The Hinterlands,61.4,34.6
    .target Field Captain Korlian
    .maxlevel 53

step
    #optional
    +|cRXP_WARN_Ihr seid zu hochstufig für alle Einfallszonen und könnt die regulären Quests nicht mehr annehmen|r
    >>Wenn ihr euch einen Ruf bei den |cRXP_FRIENDLY_Emerald Wardens|r erwerben möchtet, gibt es in Feralas unendlich wiederholbare Quests, bei denen ihr 10 von entweder |T134186:0|t[|cRXP_LOOT_Moonroot|r], |T133594:0|t[|cRXP_LOOT_Greater Moonstones|r] oder |T134312:0|t[|cRXP_LOOT_Moondragon Schuppen|r] abgeben könnt
    >>Diese Quests bringen kein XP oder Gold, belohnen aber 100 Ruf pro Abgabe. Kauft so viele der kostengünstigsten Materialien vom Auktionshaus wie nötig und geht nach Feralas, um sie abzugeben
    .xp <53,1
step
    #optional
    +Ihr habt diese Alptraum-Incursion-Schleife abgeschlossen. Die Quests werden nach der täglichen Zurücksetzung wieder verfügbar sein. |cRXP_WARN_Wählt einen anderen Guide aus der Liste, um fortzufahren|r
    ]])

RXPGuides.RegisterGuide([[
#classic
#season 2
#group RestedXP Alptraum Incursion Dailies
#name (50-53) Feralas Alptraum Incursion

step
    #ah
    >>Kauft 10 |T134186:0|t[|cRXP_LOOT_Moonroot|r], |T133594:0|t[|cRXP_LOOT_Greater Moonstones|r] und |T134312:0|t[|cRXP_LOOT_Moondragon Schuppen|r] beim Auktionshaus, bevor ihr zum Hinterland geht
    >>|cRXP_WARN_Überspringt diesen Schritt, falls ihr nicht in der Nähe eines Ortes mit Auktionshaus seid oder die Preise sich nicht lohnen. Diese drei Quests geben zusammen 38.250 EP und 300 Ruf|r
    .maxlevel 53
    .collect 219514,10 --Moonroot
    .collect 219517,10 --Moondragon Scale
    .collect 219515,10 --Greater Moonstone
step
    #completewith next
    .zone Feralas >> Reist nach Feralas
    .maxlevel 53
step
    .goto Feralas,48.0,13.2,50 >> Reist zum Portalgebiet des Smaragdgrünen Alptraums im Nordwesten von Feralas
    .maxlevel 53
step
    .goto Feralas,48.6,12.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Quartermaster Valdane|r
    .collect 221480,1 << Mage --Spell Notes: Molten Armor
    .collect 221481,1 << Priest --Nihilist Epiphany
    .collect 221482,1 << Warlock --Rune of Affliciton
    .collect 221483,1 << Shaman --Rune of Burn
    .collect 221511,1 << Warrior --Rune of the Protector
    .collect 221512,1 << Rogue --Rune of Alacrity
    .collect 221515,1 << Hunter --Rune of Detonation
    .collect 221517,1 << Druid --Rune of Bloodshed
    .collect 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .target Quartermaster Valdane
    .maxlevel 53
step
    #completewith next
    .train 431705 >>|cRXP_WARN_Benutzt die|r |T135791:0|t[|cRXP_FRIENDLY_Nihilist Offenbarung|r] |cRXP_WARN_zum Erlernen von|r |T132886:0|t[Zone der Leere] << Priest
    .train 429308 >>|cRXP_WARN_Benutzt die|r |T134939:0|t[|cRXP_FRIENDLY_Zauber-Notizen: Glühende Rüstung|r] |cRXP_WARN_zum Erlernen von|r |T132221:0|t[Glühende Rüstung] << Mage
    .train 431747 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Gebrechen|r] |cRXP_WARN_zum Erlernen von|r |T136228:0|t[Instabiles Gebrechen] << Warlock
    .train 416066 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Brandes|r] |cRXP_WARN_zum Erlernen von|r |T135822:0|t[Brand] << Shaman
    .train 432297 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Eifers|r] |cRXP_WARN_um zu trainieren|r |T236269:0|t[In Stücke schneiden] << Rogue
    .train 431611 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Detonation|r] |cRXP_WARN_um zu trainieren|r |T133713:0|t[T.N.T.] << Hunter
    .train 431447 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Blutvergießens|r] |cRXP_WARN_um zu trainieren|r |T304501:0|t[Aufspießen] << Druid
    .train 429261 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Hammers|r] |cRXP_WARN_um zu trainieren|r |T236262:0|t[Verbesserter Hammer des Zorns] << Paladin
    .use 221480 << Mage -- Spell Notes: Molten Armor
    .use 221481 << Priest --Nihilist Epiphany
    .use 221482 << Warlock --Rune of Affliciton
    .use 221483 << Shaman --Rune of Burn
    .use 221512 << Rogue --Rune of Alacrity
    .use 221515 << Hunter --Rune of Detonation
    .use 221517 << Druid --Rune of Bloodshed
    .use 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .maxlevel 53
step
    #season 2
    #optional
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Field K??pt'n Arunnel|r
    .accept 81865 >> Akzeptiert die Quest Feralasmission X: Moonroot
    .accept 81866 >> Akzeptiert die Quest Feralasmission XI: Greater Moonstones
    .accept 81867 >> Akzeptiert die Quest Feralasmission XII: Greater Mond Dragon Schuppen
    .itemcount 219514,10 --Moonroot
    .itemcount 219517,10 --Moondragon Scale
    .itemcount 219515,10 --Greater Moonstone
    .target Field Captain Arunnel
    .maxlevel 53
step
    #season 2
    #optional
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Field K??pt'n Arunnel|r
    .accept 81865 >> Akzeptiert die Quest Feralasmission X: Moonroot
    .itemcount 219514,10 --Moonroot
    .target Field Captain Arunnel
    .maxlevel 53
step
    #season 2
    #optional
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Field K??pt'n Arunnel|r
    .accept 81866 >> Akzeptiert die Quest Feralasmission XI: Greater Moonstones
    .itemcount 219515,10 --Greater Moonstone
    .target Field Captain Arunnel
    .maxlevel 53
step
    #season 2
    #optional
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Field K??pt'n Arunnel|r
    .accept 81867 >> Akzeptiert die Quest Feralasmission XII: Greater Mond Dragon Schuppen
    .itemcount 219517,10 --Moondragon Scale
    .target Field Captain Arunnel
    .maxlevel 53
step
    #season 2
    #optional
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Field K??pt'n Arunnel|r
    .turnin -81865 >> Gebt die Quest Feralasmission X: Moonroot ab
    .turnin -81866 >> Gebt die Quest Feralasmission XI: Greater Moonstones ab
    .turnin -81867 >> Gebt die Quest Feralasmission XII: Greater Mond Dragon Schuppen ab
    .target Field Captain Arunnel
    .maxlevel 53
step
    #season 2
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Field K??pt'n Arunnel|r
    .accept 81855 >>Akzeptiert die Quest Feralasmission I: Kinder von Cenarius besiegen
    .accept 81856 >>Akzeptiert die Quest Feralasmission II: Harpyien besiegen
    .accept 81857 >>Akzeptiert die Quest Feralasmission III: Drachkin besiegen
    .accept 81858 >>Akzeptiert die Quest Feralasmission IV: Drachen ausspionieren
    .accept 81859 >>Akzeptiert die Quest Feralasmission V: Cenarische Spionage
    .accept 81860 >>Akzeptiert die Quest Feralasmission IV: Harpyien ausspionieren
    .accept 81861 >>Akzeptiert die Quest Feralasmission VII: Mondscheindrachenei beschaffen
    .accept 81863 >>Akzeptiert die Quest Feralasmission VIII: Notizen des Bewahrers beschaffen
    .accept 81864 >>Akzeptiert die Quest Feralasmission IX: Harpyienschrift beschaffen
    .accept 81872 >>Akzeptiert die Quest Feralasmission XVI: Mellias Erdpfleger retten
    .accept 81873 >>Akzeptiert die Quest Feralasmission XVII: Nerene Bachsänger retten
    .accept 81874 >>Akzeptiert die Quest Feralasmission XVIII: Jamniss Baumheiler retten
    .accept 82068 >>Akzeptiert die Quest Alptraumeinfälle abwehren
    .target Field Captain Arunnel
    .maxlevel 53
step
    #optional
    .group 3
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Field K??pt'n Arunnel|r
    >>|cRXP_WARN_Wenn ihr in einer Gruppe seid, erwägt auch die Elite-Tötungsquests anzunehmen. Die Bosse, die ihr für diese Quests töten müsst, haben massive HP und könnten abhängig von eurer Gruppe eine Herausforderung sein|r
    .accept 81868 >> Akzeptiert die Quest Feralasmission XIII: Tyrannikus besiegen
    .accept 81870 >> Akzeptiert die Quest Feralas Mission XIV: Niederlage NPCs
    .accept 81871 >> Akzeptiert die Quest Feralasmission XV: Slirena <Harpyienkönigin> <Harpyienkönigin> besiegen
    .target Field Captain Arunnel
    .maxlevel 53
step
    #season 2
    #completewith IncursionsComplete3
    .goto Feralas,50.95,11.67,30,0
    .goto Feralas,51.28,10.64,20 >>Betretet |cRXP_PICK_Emerald Traumportal|r
    >>|cRXP_WARN_Lauft direkt an den |cRXP_ENEMY_Satyrs|r, den |cRXP_ENEMY_Felhounds|r und den |cRXP_ENEMY_Imps|r vorbei. Sie werden ihre Aggro zurücksetzen, wenn ihr das Portal betretet|r
    .aura 444762
    .maxlevel 53
step
    #season 2
    #completewith DreamWardenGorlas
    >>Tötet |cRXP_ENEMY_Frenzied Whelps|r und |cRXP_ENEMY_Wyrmkin Berserkers|r
    >>|cRXP_WARN_Seid vorsichtig.|r |cRXP_ENEMY_Wyrmkin Berserkers|r |cRXP_WARN_sind Elitefeinde. Sie können schwierig alleine zu bekämpfen sein|r
    .complete 81857,1 --Frenzied Whelp slain 10/10
    .mob +Frenzied Whelp
    .complete 81857,2 --Wyrmkin Berserker slain 10/10
    .mob +Wyrmkin Berserker
    .maxlevel 53
step
    #season 2
    .goto Feralas,49.64,15.44
    .gossipoption 122147 >>Sprecht mit |cRXP_FRIENDLY_Mellias Earthtender|r. Sie wird euch folgen.
    .target Mellias Earthtender
    .isOnQuest 81872
    .maxlevel 53
step
    #completewith next
    +|cRXP_WARN_Seid vorsichtig, wenn ihr sterbt, werden alle Eskorte-NPCs, die euch folgen, zu den Orten zurückkehren, an denen ihr sie aufgegriffen habt, und ihr müsst sie erneut suchen|r
    >>|cRXP_WARN_Der Eskorte-NPC stoppt auch nach 15 Minuten damit, euch zu folgen, also versucht schnell zu sein!|r
    .maxlevel 53
step
    #season 2
    .goto Feralas,50.71,17.17
    >>Beute a |cRXP_LOOT_Moonglow Drache Ei|r auf dem Boden
    .complete 81861,1 --Moonglow Dragonegg: 1/1
    .maxlevel 53
step
    #optional
    .group 3
    .goto Feralas,53.2,16.6
    >>Tötet die boss dragon |cRXP_ENEMY_Tyrannikus|r
    >>|cRXP_WARN_Passt auf, denn er hat einen massiven Gesundheitspool, ist immun gegen Naturzauber, hat einen|r|T132338:0|t[Spalten]|cRXP_WARN_,|r |T134307:0|t[Schwanzfeger] |cRXP_WARN_und|r |T135745:0|t[Herbeiruf.] |cRXP_WARN_einen|r |cRXP_ENEMY_Drache|r |cRXP_WARN_Add, der einen Frontalangriff wirkt, der enormen Schaden verursacht|r
    .complete 81868,1 --Tyrannikus slain
    .mob Tyrannikus
    .maxlevel 53
step
    #season 2
    .goto Feralas,50.73,19.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dreamwarden Sheldryn|r
    .complete 81858,1 --Intelligence Report: Oneiros: 1/1
    .target Dreamwarden Sheldryn
    .skipgossip
    .maxlevel 53
step
    .solo
    #completewith RuinsofRav
    #season 2
    +|cRXP_WARN_Seid vorsichtig vor|r |cRXP_WARN_NPCs|r|cRXP_WARN_, einem Eliteboss, der die Straße patrouilliert. Versucht, ihn zu vermeiden|r
    .unitscan Alondrius
    .maxlevel 53
step
    .group 3
    #completewith RuinsofRav
    #season 2
    #label Alondrius
    .goto Feralas,46.8,19.6
    .line Feralas,47.6,25.5,48.1,24.2,48.0,23.0,46.9,22.2,46.2,20.9,46.3,18.1,46.3,16.2,46.1,14.1
    >>|cRXP_WARN_Sucht nach|r |cRXP_WARN_Alondrius|r|cRXP_WARN_, dem Boss-Elite auf der Straße. Tötet ihn.|r
    .complete 81870,1 --Alondrius Slain
    .unitscan Alondrius
    .maxlevel 53
step
    #season 2
    #label DreamWardenGorlas
    .goto Feralas,47.14,21.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dreamwarden Gorlas|r
    .complete 81859,1 --Intelligence Report: Twin Colossals: 1/1
    .target Dreamwarden Gorlas
    .skipgossip
    .maxlevel 53
step
    #season 2
    #completewith RuinsofRav
    #requires Alondrius
    >>Tötet |cRXP_ENEMY_Lost Daughters|r und |cRXP_ENEMY_Vengeful Sons|r
    .complete 81855,1 --Lost Daughter slain 10/10
    .mob +Lost Daughter
    .complete 81855,2 --Vengeful Son slain 10/10
    .mob +Vengeful Son
    .maxlevel 53
step
    #season 2
    #requires Alondrius
    .goto Feralas,46.63,18.94
    >>Plündert |cRXP_LOOT_Mad Keeper's Notes|r vom Boden
    .complete 81863,1 --Mad Keeper's Notes: 1/1
    .maxlevel 53
step
    #season 2
    .goto Feralas,45.81,16.47
    .gossipoption 122148 >>Sprecht mit |cRXP_FRIENDLY_Nerene Brooksinger|r. Sie wird euch folgen.
    .target Nerene Brooksinger
    .skipgossip
    .isOnQuest 81873
    .maxlevel 53
step
    #season 2
    #label RuinsofRav
    .goto Feralas,41.94,12.93
    .subzone 1114 >>Reist zu den Ruinen von Rabenwind
    .maxlevel 53
step
    #season 2
    #completewith IncursionsComplete3
    >>Tötet |cRXP_ENEMY_Dreamspring Roguefeathers|r und |cRXP_ENEMY_Dreamspring Stormcallers|r
    .complete 81856,1 --Dreamspring Roguefeather 10/10
    .mob +Dreamspring Roguefeather
    .complete 81856,2 --Dreamspring Stormcaller 10/10
    .mob +Dreamspring Stormcaller
    .maxlevel 53
step
    #season 2
    .goto Feralas,38.94,13.13
    >>Plündert |cRXP_LOOT_Harpyie Screed|r vom Boden
    >>|cRXP_WARN_Das wird sofort geplündert.|r |cRXP_ENEMY_Slirena <Harpyienkönigin>|r |cRXP_WARN_könnte euch angreifen, stellt sicher, dass ihr einen Fluchtweg frei habt|r
    .complete 81864,1 --Harpy Screed: 1/1
    .maxlevel 53
step
    #optional
    .group 3
    .goto Feralas,39.6,13.8
    >>Tötet die Harpyie boss |cRXP_ENEMY_Slirena|r
    >>|cRXP_WARN_Passt auf, wenn sie wirkt|r |T136015:0|t[Kettenblitzschlag], |T136018:0|t[Einhüllende Winde] |cRXP_WARN_ein 10-Sekunden-Wirbelwind, und|r |T132104:0|t[Saurer Regen] |cRXP_WARN_ein Kreis, der Schaden macht, wenn ihr ihn nicht verlasst|r
    .complete 81871,1 --Slirena slain
    .mob Slirena
    .maxlevel 53
step
    #season 2
    .goto Feralas,37.71,12.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dreamwarden Anadelle|r
    .complete 81860,1 --Intelligence Report: Ruins of Ravenwind: 1/1
    .target Dreamwarden Anadelle
    .skipgossip
    .maxlevel 53
step
    #season 2
    #label IncursionsComplete3
    .goto Feralas,40.58,8.09
    .gossipoption 122145 >>Sprecht mit |cRXP_FRIENDLY_Jamniss Treemender|r. Sie wird euch folgen.
    .target Jamniss Treemender
    .isOnQuest 81874
    .maxlevel 53
step
    #season 2
    #loop
    .goto Feralas,42.11,9.07,0
    .goto Feralas,38.98,16.20,0
    .goto Feralas,42.11,9.07,60,0
    .goto Feralas,42.19,11.58,60,0
    .goto Feralas,41.02,13.08,60,0
    .goto Feralas,40.19,15.21,60,0
    .goto Feralas,38.98,16.20,60,0
    .goto Feralas,38.31,15.77,60,0
    .goto Feralas,37.95,14.21,60,0
    .goto Feralas,39.42,13.77,60,0
    .goto Feralas,39.58,10.69,60,0
    >>Tötet |cRXP_ENEMY_Dreamspring Roguefeathers|r und |cRXP_ENEMY_Dreamspring Stormcallers|r
    .complete 81856,1 --Dreamspring Roguefeather 10/10
    .mob +Dreamspring Roguefeather
    .complete 81856,2 --Dreamspring Stormcaller 10/10
    .mob +Dreamspring Stormcaller
    .maxlevel 53
step
    #season 2
    #loop
    .goto Feralas,46.44,15.89,0
    .goto Feralas,45.36,22.36,0
    .goto Feralas,44.45,12.29,50,0
    .goto Feralas,46.44,15.89,50,0
    .goto Feralas,46.35,18.82,50,0
    .goto Feralas,45.36,22.36,50,0
    .goto Feralas,45.55,19.10,50,0
    >>Tötet |cRXP_ENEMY_Lost Daughters|r und |cRXP_ENEMY_Vengeful Sons|r
    .complete 81855,1 --Lost Daughter slain 10/10
    .mob +Lost Daughter
    .complete 81855,2 --Vengeful Son slain 10/10
    .mob +Vengeful Son
    .maxlevel 53
step
    #season 2
    #loop
    .goto Feralas,49.81,15.80,0
    .goto Feralas,53.85,12.74,0
    .goto Feralas,49.81,15.80,50,0
    .goto Feralas,50.68,17.37,50,0
    .goto Feralas,51.62,19.54,50,0
    .goto Feralas,52.76,16.27,50,0
    .goto Feralas,53.68,15.81,50,0
    .goto Feralas,53.85,12.74,50,0
    .goto Feralas,54.32,10.44,50,0
    >>Tötet |cRXP_ENEMY_Frenzied Whelps|r und |cRXP_ENEMY_Wyrmkin Berserkers|r
    >>|cRXP_WARN_Seid vorsichtig.|r |cRXP_ENEMY_Wyrmkin Berserkers|r |cRXP_WARN_sind Elitefeinde. Sie können schwierig alleine zu bekämpfen sein|r
    .complete 81857,1 --Frenzied Whelp slain 10/10
    .mob +Frenzied Whelp
    .complete 81857,2 --Wyrmkin Berserker slain 10/10
    .mob +Wyrmkin Berserker
    .maxlevel 53
step
    #season 2
    .goto Feralas,51.00,11.69
    >>Reist zu |cRXP_PICK_Emerald Traumportal|r
    >>|cRXP_WARN_Falls |cRXP_FRIENDLY_Mellias|r, |cRXP_FRIENDLY_Nerene|r oder |cRXP_FRIENDLY_Jamniss|r euch nicht mehr folgen, geht zurück und sprecht mit ihnen erneut|r
    >>|cRXP_WARN_Geht hin und her auf der stelle, die von Eurem Pfeil markiert wird (am Fuße der Portal-Rampe), ein paar Mal. Dies wird die NPCs über die Schwelle bringen und Euch den Fortschritt geben|r
    .complete 81872,1 --Rescue Mellias Earthtender: 1/1
    .goto Feralas,49.64,15.44,0
    .target +Mellias Earthtender
    .complete 81873,1 --Rescue Nerene Brooksinger: 1/1
    .goto Feralas,45.81,16.47,0
    .target +Nerene Brooksinger
    .complete 81874,1 --Rescue Jamniss Treemender: 1/1
    .goto Feralas,40.58,8.09,0
    .target
    .target +Jamniss Treemender
    .maxlevel 53
step
    #season 2
    #completewith next
    .goto Feralas,50.95,11.67,30,0
    .goto Feralas,51.28,10.64,20 >>Verlasst |cRXP_PICK_Emerald Traumportal|r
    .aura -444762
    .maxlevel 53
step
    #season 2
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Field K??pt'n Arunnel|r
    .turnin 81855 >>Gebt die Quest Feralasmission I: Kinder von Cenarius besiegen ab
    .turnin 81856 >>Gebt die Quest Feralasmission II: Harpyien besiegen ab
    .turnin 81857 >>Gebt die Quest Feralasmission III: Drachkin besiegen ab
    .turnin 81858 >>Gebt die Quest Feralasmission IV: Drachen ausspionieren ab
    .turnin 81859 >>Gebt die Quest Feralasmission V: Cenarische Spionage ab
    .turnin 81860 >>Gebt die Quest Feralasmission VI: Harpyien ausspionieren ab
    .turnin 81861 >>Gebt die Quest Feralasmission VII: Mondscheindrachenei beschaffen ab
    .turnin 81863 >>Gebt die Quest Feralasmission VIII: Notizen des Bewahrers beschaffen ab
    .turnin 81864 >>Gebt die Quest Feralasmission IX: Harpyienschrift beschaffen ab
    .turnin 81872 >>Gebt die Quest Feralasmission XVI: Mellias Erdpfleger retten ab
    .turnin 81873 >>Gebt die Quest Feralasmission XVII: Nerene Bachsänger retten ab
    .turnin 81874 >>Gebt die Quest Feralasmission XVIII: Jamniss Baumheiler retten ab
    .turnin 82068 >>Gebt die Quest Alptraumeinfälle abwehren ab
    .target Field Captain Arunnel
    .maxlevel 53
step
    #optional
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Field K??pt'n Arunnel|r
    >>|cRXP_WARN_Wenn ihr in einer Gruppe seid, erwägt auch die Elite-Tötungsquests anzunehmen. Die Bosse, die ihr für diese Quests töten müsst, haben massive HP und könnten abhängig von eurer Gruppe eine Herausforderung sein|r
    .turnin -81868 >> Gebt die Quest Feralasmission XIII: Tyrannikus besiegen ab
    .turnin -81870 >> Gebt die Quest Feralas Mission XIV: Niederlage NPCs ab
    .turnin -81871 >> Gebt die Quest Feralasmission XV: Slirena <Harpyienkönigin> <Harpyienkönigin> besiegen ab
    .target Field Captain Arunnel
    .maxlevel 53
step
    #optional
    +|cRXP_WARN_Ihr seid zu hochstufig für alle Einfallszonen und könnt die regulären Quests nicht mehr annehmen|r
    >>Wenn ihr euch einen Ruf bei den |cRXP_FRIENDLY_Emerald Wardens|r erwerben möchtet, gibt es in Feralas unendlich wiederholbare Quests, bei denen ihr 10 von entweder |T134186:0|t[|cRXP_LOOT_Moonroot|r], |T133594:0|t[|cRXP_LOOT_Greater Moonstones|r] oder |T134312:0|t[|cRXP_LOOT_Moondragon Schuppen|r] abgeben könnt
    >>Diese Quests bringen kein XP oder Gold, belohnen aber 100 Ruf pro Abgabe. Kauft so viele der kostengünstigsten Materialien vom Auktionshaus wie nötig und geht nach Feralas, um sie abzugeben
    .xp <53,1
step
    #optional
    +Ihr habt diese Alptraum-Incursion-Schleife abgeschlossen. Die Quests werden nach der täglichen Zurücksetzung wieder verfügbar sein. |cRXP_WARN_Wählt einen anderen Guide aus der Liste, um fortzufahren|r
]])
