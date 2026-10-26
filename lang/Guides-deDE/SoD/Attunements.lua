if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#classic
#season 2
#group RestedXP Endgame Guides
#subgroup Zutrittsvoraussetzungen
#name Karazhan Crypts Attunement
#guideKind attunement

step
    #completewith next
    .subzone 2268 >> Reist zur |cRXP_LOOT_Kapelle des Hoffnungsvollen Lichts|r in den |cRXP_PICK_Östlichen Pestländern|r
step
    .goto Eastern Plaguelands,81.3,58.75
    >>Klickt auf das Billboard |cRXP_FRIENDLY_Seeking Seasoned Adventurers|r rechts vom Eingang der Kapelle
    .accept 86964 >> Akzeptiert die Quest For Gold and Ruhm
step
    .goto Deadwind Pass,43.08,34.22 << Alliance
    .goto Deadwind Pass,51.01,42.19 << Horde
    .zone Deadwind Pass >> Reist zu |cRXP_PICK_Todwindpass|r
    .isOnQuest 86964
step
    .goto Deadwind Pass,47.36,75.60,100 >> Reisen south towards |cRXP_LOOT_Karazhan|r
    .isOnQuest 86964
step
    .goto Deadwind Pass,39,74
    >>Sucht nach der Leiche eines |cRXP_FRIENDLY_Verstorbener Abenteurer|r
    .turnin 86964 >> Gebt die Quest For Gold and Ruhm ab
    .accept 86965 >> Akzeptiert die Quest Keine natürlichen Schatten
    .target Deceased Adventurer
step
    .goto Deadwind Pass,51.28,39.91,20,0
    .goto Deadwind Pass,52.09,34.10
    >>Reist nach Norden zum Lager des Dalaran-Agenten
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Agent Keanna|r
    .turnin 86965 >> Gebt die Quest Keine natürlichen Schatten ab
    .accept 86966 >> Akzeptiert die Quest Die Überlebenden suchen
step
    .goto Deadwind Pass,59.2,73.4,30 >> Reist nach Süden zum Eingang der Oger-Höhle
    .isOnQuest 86966
step
    .goto Deadwind Pass,65.0,78.0
    >>BETRETET die Höhle, sucht nach dem |cRXP_FRIENDLY_Verletzter Abenteurer|r, er sitzt in einem Käfig
    .turnin 86966 >> Gebt die Quest Die Überlebenden suchen ab
    .accept 86967 >> Akzeptiert die Quest Zur Hilfe
    .target Injured Adventurer
step
    .goto Deadwind Pass,65.0,78.0
    >>Tötet beliebige |cRXP_ENEMY_Ogres|r und plündert sie, bis ihr einen |cRXP_LOOT_Deadwind Käfig "Schlüssel"|r findet. Benutzt ihn am Käfig, um die Quest abzuschließen.
    >>|cRXP_WARN_Falls jemand anderes diese Aufgabe abschließt, während ihr in der Nähe seid, erhaltet ihr Kredit, auch wenn ihr nicht in einer Gruppe mit dieser Person seid|r
    .complete 86967,1
    .collect 235785,1 --Deadwind Cage "Key"
    .disablecheckbox
    .mob Deadwind Warlock
    .mob Deadwind Mauler
    .mob Deadwind Ogre Mage
    .mob Deadwind Brute
step
    .goto Deadwind Pass,51.28,39.91,20,0
    .goto Deadwind Pass,52.32,34.09
    >>Reist nördlich zurück zum Lager des Dalaran-Agenten
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harrison Jones|r
    .turnin 86967 >> Gebt die Quest Zur Hilfe ab
    .accept 86968 >> Akzeptiert die Quest Angst vor der Dunkelheit
    .target Harrison Jones
step
    .goto Deadwind Pass,52.09,34.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Agent Keanna|r
    .turnin 86968 >> Gebt die Quest Angst vor der Dunkelheit ab
    .accept 86969 >> Akzeptiert die Quest Die Hypothese
    .target Agent Keanna
step
    #optional
    #completewith Hypothesis
    #label Wetlands
    .zone Wetlands >> Reist nach |cRXP_PICK_Sumpfland|r, um die |T132839:0|t[Flamme des Lebens] zu suchen
    .isOnQuest 86969
step
    #optional
    #completewith Hypothesis
    #requires Wetlands
    #label GrimBatol
    .goto 1437/0,-3451.700,-3450.800,40 >> Geht zum Anfang des Weges zu |cRXP_LOOT_Grim Batol|r
    .isOnQuest 86969
step
    #optional
    #completewith Hypothesis
    #requires GrimBatol
    .goto Wetlands,52.55,41.62,0
    .goto Wetlands,88.07,60.72,0
    .goto Wetlands,85.72,69.33,0
    .goto Wetlands,87.04,51.45
    >>Tötet die |cRXP_ENEMY_Drachkin|r in der Gegend, bis ihr |T132839:0|t[|cRXP_LOOT_Flamme des Lebens|r] plündert
    .collect 235789,1 --Flame of Life
    .mob Red Scalebane
    .mob Scalebane Lieutenant
    .mob Wyrmkin Firebrand
    .mob Red Dragonspawn
    .mob Scalebane Royal Guard
    .isOnQuest 86969
step
    #optional
    #completewith Hypothesis
    #label EnterDungeon
    .subzoneskip 2557 --Dire Maul
    .subzoneskip 15475 --Demon Fall Canyon
    .goto Kalimdor,42.98,67.51,0 --Dire Maul Entrance
    .goto Ashenvale,84.5,75.0,0 --Demon Fall Canyon Entrance
    +Sucht nach einer Gruppe entweder für |cRXP_LOOT_Dire Zermalmen West|r oder |cRXP_LOOT_Dämonensturz|r und betretet das Verlies
    >>|cRXP_WARN_Behaltet im Hinterkopf, dass ihr bestätigt sein müsst, um Dämonensturz zu betreten.|r Ihr könnt einen Leitfaden dafür in den Endspiel Guides > Erreichungen Bereich finden
    .isOnQuest 86969
step
    #optional
    #completewith Hypothesis
    #requires EnterDungeon
    >>Tötet |cRXP_ENEMY_Tendris Wucherborke|r, den ersten Boss in der Instanz. Plündert ihn für die |T135139:0|t[Ironwood Branch]
    .complete 86969,2
    .subzoneskip 2557,1 --Only shows in Dire Maul
    .isOnQuest 86969
step
    #optional
    #completewith Hypothesis
    #requires EnterDungeon
    >>Tötet |cRXP_ENEMY_Grimmwurzel <Der trauernde Wächter>|r, den ersten Boss in der Instanz. Plündert ihn für die |T135139:0|t[Ironwood Branch]
    .complete 86969,2
    .subzoneskip 15475,1 --Only shows in Demon Fall Canyon
    .isOnQuest 86969
step
    #optional
    #completewith Hypothesis
    #label Winterspring
    .zone Winterspring >> Reist zu Winterquell|cRXP_PICK_, um nach dem |T136116:0|t[Enthusiastischer Irrwisch]|r zu suchen
    .isOnQuest 86969
    .itemcount 235788,<1
step
    #optional
    #completewith Hypothesis
    #requires Winterspring
    #label Darkwhisper
    .goto Winterspring,60.39,73.95,50 >> Reist zur |cRXP_LOOT_Die Flüsternde Schlucht|r
    .isOnQuest 86969
    .itemcount 235788,<1
step
    #optional
    #completewith Hypothesis
    #requires Darkwhisper
    .goto Winterspring,59.78,75.92,20,0
    .goto Winterspring,60.18,78.08,20,0
    .goto Winterspring,60.74,79.11,20,0
    .goto Winterspring,61.16,80.19,20,0
    .goto Winterspring,61.21,82.13,20,0
    .goto Winterspring,59.09,83.57,20,0
    .goto Winterspring,58.93,85.67,20,0
    .goto Winterspring,56.06,84.80,20,0
    .goto Winterspring,55.13,84.21,20,0
    .goto Winterspring,53.88,84.77,20,0
    .goto Winterspring,53.08,86.33,20,0
    .goto Winterspring,52.68,88.38,20,0
    .goto Winterspring,52.2,90.4
    .target Enthusiastic Wisp
    >>Reist nach Süden und sucht nach dem |cRXP_FRIENDLY_Enthusiastischer Irrwisch|r. Interagiert mit ihm, um ihn aufzuheben
    >>|cRXP_WARN_Weicht dem Kampf gegen die Elite-Dämonen in der Gegend aus. Ihr könnt einfach an ihnen vorbeilaufen|r
    .complete 86969,3 --Enthusiastic Wisp
    .isOnQuest 86969
    .itemcount 235788,<1
step
    #label Hypothesis
    >>Sammelt die |T132839:0|t[Flamme des Lebens]. Sie fällt von |cRXP_ENEMY_Elite-Drachkin|r in der Nähe von |cRXP_LOOT_Grim Batol|r im |cRXP_PICK_Sumpfland|r
    >>Sammelt die |T135139:0|t[Ironwood Branch]. Sie fällt entweder von |cRXP_ENEMY_Grimmwurzel <Der trauernde Wächter>|r im |cRXP_LOOT_Dämonensturz|r|cRXP_WARN_(dungeon)|r oder von |cRXP_ENEMY_Tendris Wucherborke|r im |cRXP_LOOT_Dire Zermalmen West|r|cRXP_WARN_(dungeon)|r
    >>Sammelt den |T136116:0|t[Enthusiastischer Irrwisch]. Dies ist ein interaktionsfähiger |cRXP_FRIENDLY_friendly NPC|r im |cRXP_LOOT_Die Flüsternde Schlucht|r im |cRXP_PICK_Winterquell|r
    >>|cRXP_WARN_Diese Items können in beliebiger Reihenfolge gesammelt werden|r
    .complete 86969,1 --Flame of Life
    .complete 86969,2 --Ancient Ironwood Branch
    .complete 86969,3 --Enthusiastic Wisp
    .mob Grimroot
    .mob Tendris Warpwood
    .isOnQuest 86969
step
    .goto Deadwind Pass,43.08,34.22 << Alliance
    .goto Deadwind Pass,51.01,42.19 << Horde
    .zone Deadwind Pass >> Kehrt zum |cRXP_PICK_Deadwind Weitergeben|r zurück
    .isQuestComplete 86969
step
    .goto Deadwind Pass,51.28,39.91,20,0
    .goto Deadwind Pass,52.09,34.10
    >>Reist zum Dalaran-Agentenlager
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Agent Keanna|r
    .turnin 86969 >> Gebt die Quest Die Hypothese ab
    .accept 86970 >> Akzeptiert die Quest Testen unserer Hypothese
step
    .goto Deadwind Pass,45.10,77.96,20,0
    .goto Deadwind Pass,42.20,77.41,20,0
    .goto Deadwind Pass,39.98,75.36,20,0
    .goto Deadwind Pass,39.93,74.24
    >>Reist zu Morgans Grund, das westlich von Karazhan liegt. |cRXP_WARN_Geht in die massive Schatten-Kugel dort|r
    >>Benutzt von Euch |T135432:0|t[|cRXP_FRIENDLY_Verzauberter Feuerbrand|r] einmal, sobald ihr drin seid, und wartet auf das Ende des Rollenspiels
    .complete 86970,1
    .use 235790 --Enchanted Firebrand
step
    .goto Deadwind Pass,45.10,77.96,20,0
    .goto Deadwind Pass,55.40,78.75,20,0
    .goto Deadwind Pass,51.28,39.91,20,0
    .goto Deadwind Pass,52.32,34.09
    >>Reist zurück nach Norden zum Dalaran-Agentenlager
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Agent Keanna|r
    .turnin 86970 >> Gebt die Quest Testen unserer Hypothese ab
    .target Agent Keanna
step
    >>|cRXP_WARN_Glückwunsch, ihr seid jetzt bestätigt für die Karazhan Krypten!|r
    >>Ihr könnt |Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harrison Jones|r, um eine Quest von ihm aufzunehmen, die in der Instanz abgeschlossen werden kann
    .accept 86971 >> Akzeptiert die Quest Kuriose Karazhankuriositäten!
    .target Harrison Jones
]])

RXPGuides.RegisterGuide([[
#classic
#season 2
#group RestedXP Endgame Guides
#subgroup Zutrittsvoraussetzungen
#name Scarlet Enclave Vorstellung
#guideKind attunement

step
   #completewith next
   .subzone 2268 >> Reist zur |cRXP_LOOT_Kapelle des Hoffnungsvollen Lichts|r im |cRXP_PICK_Die Östlichen Pestländer|r
step
   .goto Eastern Plaguelands,81.73,57.84
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Leonidas Bartholomäus der Geachtete|r in der Kapelle
   .accept 87459 >> Akzeptiert die Quest Scharlachrote Aktivitäten
   .target Leonid Barthalomew the Revered
step
    #optional
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jessica Chambers|r
    .home >> Falls ihr es möchtet, könnt ihr |cRXP_WARN_den Ruhestein von Euch hier setzen|r. Das wird euch helfen, schneller von Tirisfal zurückzukehren.
    .target Jessica Chambers
step << Alliance
    .goto Eastern Plaguelands,81.64,59.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Khaelyn Steelwing|r außerhalb
    .fly Chillwind >> Flieg in die Westlichen Pestländer
    .target Khaelyn Steelwing
    .isOnQuest 87459
step << Horde
    .goto Eastern Plaguelands,80.23,57.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Georgia|r außerhalb
    .target Georgia
    .fly Undercity >> Fliegt nach Unterstadt
    .isOnQuest 87459
step << Horde
    .goto Tirisfal Glades,61.85,66.59,60 >> Verlasst Unterstadt
    .isOnQuest 87459
step << Alliance
   #completewith next
   .goto Tirisfal Glades,84.85,70.57
   .zone Tirisfal Glades >> Reist nach Tirisfal
   .isOnQuest 87459
step
   .goto Tirisfal Glades,81.76,58.06
   >>Geht nach Norden zum scharlachroten Lager << Alliance
   >>Geht nach Osten zum scharlachroten Lager << Horde
   >>Klickt |cRXP_PICK_Ball und Kette|r außerhalb des kleinen Zelts. Es wird einen |cRXP_WARN_Elite|r |cRXP_ENEMY_Scharlachroter Spitzel|r spawnen, der euch angreift
   >>Tötet ihn und |cRXP_LOOT_loot|r nehmt die Beute für |T133471:0|t[Orders from the Rittmeister]
   .complete 87459,1 --Orders from the Commander
   .mob Scarlet Infiltrator
   .isOnQuest 87459
step
   #completewith next
   .subzone 2268 >> Kehrt zur |cRXP_LOOT_Kapelle des Hoffnungsvollen Lichts|r in |cRXP_PICK_Eastern Plaguelands|r zurück
   .isOnQuest 87459
step
   .goto Eastern Plaguelands,81.73,57.84
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Leonidas Bartholomäus der Geachtete|r in der Kapelle
    .turnin 87459 >> Gebt die Quest Scharlachrote Aktivitäten ab
    .accept 87493 >> Akzeptiert die Quest Unruhe bei Tyrs Hand
    .target Leonid Barthalomew the Revered
step
    .goto Eastern Plaguelands,67.8,83.2
    >>Reist nach Süden zum scharlachroten Basislager
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Commander Beatrix|r
    .turnin 87493 >> Gebt die Quest Unruhe bei Tyrs Hand ab
    .accept 87497 >> Akzeptiert die Quest Die Spaltung
    .target Commander Beatrix
step
    .goto Eastern Plaguelands,67.8,83.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Commander Beatrix|r und complete her dialogue
    .complete 87497,1
    .skipgossip
    .target Commander Beatrix
step
   .goto Eastern Plaguelands,81.73,57.84
   >>Kehrt zurück zur Kapelle des Hoffnungsvollen Lichts
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Leonidas Bartholomäus der Geachtete|r drinnen
    .turnin 87497 >> Gebt die Quest Die Spaltung ab
    .accept 87498 >> Akzeptiert die Quest Der Scharlachrote Rückeroberung
    .target Leonid Barthalomew the Revered
step
    .goto Eastern Plaguelands,67.8,83.2
    >>Kehrt zum Scarlet Base Camp zurück
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Commander Beatrix|r
    .turnin 87498 >> Gebt die Quest Der Scharlachrote Rückeroberung ab
    .target Commander Beatrix
step
    .goto Eastern Plaguelands,68.25,82.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Scarlet Inquisitor Caldoran|r
    .accept 87502 >> Akzeptiert die Quest Informationsbeschaffung
    .target Scarlet Inquisitor Caldoran
step
    .goto Eastern Plaguelands,68.18,82.43
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Inquisitorin Jociphine|r |cRXP_WARN_um eine temporäre scharlachrote Verkleidung zu erhalten|r
    .aura 1231929 --Scarlet Illusion
    .skipgossip
    .target Inquisitor Jociphine
step
    >>Geht nach Tyrs Hand und reist zur Kathedrale im Zentrum
    .goto Eastern Plaguelands,85.27,83.98
    .complete 87502,1 --Scout the Cathedral in Tyr's Hand: 1/1
step
    .goto Eastern Plaguelands,89.76,81.41,30 >>Nehmt den linken Weg nach Neu-Avalon
step
    >>Geht zum Schloss in Neu-Avalon
    >>|cRXP_WARN_Passt auf vor |r|cRXP_ENEMY_Scharlachrote Bluthunde|r |cRXP_WARN_sie werden die Verkleidung von Euch durchschauen!|r
    >>Ihr könnt |T132328:0|t[Wildtiere aufspüren] benutzen, um die Position der Hunde zu verfolgen << Hunter
    .goto Eastern Plaguelands,96.66,83.06
    .complete 87502,3 --Scout the Keep in New Avalon: 1/1
    .unitscan Sarlet Bloodhound
step
    >>Geht zum Magierturm
    >>|cRXP_WARN_Vorsicht vor |r|cRXP_ENEMY_Scarlet Bloodhounds|r |cRXP_WARN_sie werden die Verkleidung von Euch durchschauen!|r
    >>Ihr könnt |T132328:0|t[Wildtiere aufspüren] benutzen, um die Position der Bluthunde zu verfolgen << Hunter
    .goto Eastern Plaguelands,98.14,87.88
    .complete 87502,2 --Scout the Mage Tower in New Avalon: 1/1
    .unitscan Sarlet Bloodhound
step
    >>Kehrt zurück zum scharlachroten Basislager
    .goto Eastern Plaguelands,68.25,82.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Scarlet Inquisitor Caldoran|r
    .turnin 87502 >> Gebt die Quest Informationsbeschaffung ab
    .accept 87506 >> Akzeptiert die Quest Schwächung der Verteidigung
    .target Scarlet Inquisitor Caldoran
    .unitscan Sarlet Bloodhound
step
    #optional
    #completewith next
    >>|cRXP_WARN_Ihr könnt jetzt die permanente Scharlachrote Verkleidung freischalten, indem ihr 4 Teile eines handwerkbaren scharlachroten Sets sammelt und dann die bereitgestellte|r |T134503:0|t[|cFF0070FFScharlachrote Insignie|r]
    >>Ihr solltet diese im Auktionshaus finden können. Es ist nicht erforderlich, aber das wird das Durchqueren von Neu-Avalon in Zukunft viel einfacher machen.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Inquisitor Jociphine|r
    .accept 90510 >> Akzeptiert die Quest Neu-Avalon
    .use 237020 --Scarlet Insignia
step
    >>Betretet Tyrs Hand und sucht nach |cRXP_ENEMY_Scharlachrote Belagerungs-Kommandanten|r
    >>|cRXP_WARN_Sie sind häufiger in der Nähe von Belagerungswaffen oder auf den Mauern zu finden|r
    .complete 87506,1 --Scarlet Siege Commander (3)
    .target Scarlet Siege Commander
step
    .goto Eastern Plaguelands,67.8,83.2
    >>Kehrt zum Scarlet Base Camp zurück
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Commander Beatrix|r
    .turnin 87506 >> Gebt die Quest Schwächung der Verteidigung ab
    .target Commander Beatrix
step
    .goto Eastern Plaguelands,67.8,83.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Argent Kontaktaufnahme|r
    .accept 87508 >> Akzeptiert die Quest Bericht an Lord Tyrosus
step
    >>Reist zurück zur Kapelle des Hoffnungsvollen Lichts
    .goto Eastern Plaguelands,81.74,57.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Ludwig Tyrosus|r drinnen
    .turnin 87508 >> Gebt die Quest Bericht an Lord Tyrosus ab
    .accept 87509 >> Akzeptiert die Quest Der Zorn der Dämmerung
    .target Lord Maxwell Tyrosus
step
    .goto Eastern Plaguelands,67.8,83.2
    >>Kehrt zum Scarlet Base Camp zurück
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Commander Beatrix|r
    .skipgossip
    .complete 87509,1 --Report back to Commander Beatrix
step
    .goto Eastern Plaguelands,67.8,83.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Commander Beatrix|r
    .turnin 87509 >> Gebt die Quest Der Zorn der Dämmerung ab
    .accept 87516 >> Akzeptiert die Quest Den Kopf abschlagen
    .target Commander Beatrix
step
    .goto Eastern Plaguelands,68.36,87.58
    >>Diese Quest erfordert, dass ihr |cRXP_ENEMY_Balnazzar|r |cRXP_WARN_den ersten Boss im neuen Scarlet Enclave Raid|r tötet
    >>Find a raid group und happy hunting!
    .complete 87516,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Ludwig Tyrosus|r im Gefängnis, in das ihr verlegt werdet, nachdem ihr Balnazzar im Raid besiegt habt
    .turnin 87516 >> Gebt die Quest Den Kopf abschlagen ab
    .target Lord Maxwell Tyrosus
step
    +|cRXP_WARN_Glückwunsch, ihr habt die Scarlet Enclave Einführungsquestreihe abgeschlossen!|r
]])
