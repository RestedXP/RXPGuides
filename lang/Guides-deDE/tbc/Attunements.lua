if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Attunement Dungeonführer
#name 1. Karazhan
#title Karazhan

step
    #optional
    +|cRXP_WARN_Ihr müsst mindestens Stufe 68 sein, um die Karazhan-Attunement-Questreihe zu beginnen|r
    .xp >68,1
step
    #label Deadwind1
    #completewith Kara1
    .goto Deadwind Pass,42.88,34.52
    .zone Deadwind Pass >> Reist zum Gebirgspass der Totenwinde in den Östlichen Königreichen
step
    #requires Deadwind1
    #completewith Kara1
    .subzone 2562 >> Reist nach Karazhan
step
    .goto Deadwind Pass,47.0,75.6
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archmage Alturus|r
    .accept 9824 >> Arkane Störungen annehmen
    .accept 9825 >> Rastlose Aktivität annehmen
    .target Archmage Alturus
step
    #completewith PondReading
    .goto Deadwind Pass,47.710,78.267
    .subzone 2837 >> Geht die Treppe hinunter in den Meisterkeller
step
    #optional
    #completewith Reading2
    >>Tötet die |cRXP_ENEMY_Ghosts|r surrounding Karazhan. Plündert sie für |cRXP_LOOT_Ghostly Essences|r
    .complete 9825,1 -- Ghostly Essence (10)
    .mob Unliving Caretaker
    .mob Damned Soul
    .mob Restless Shade
    .mob Wailing Spectre
step
    #label PondReading
    .goto Deadwind Pass,42.910,78.275
    .use 24474 >> |cRXP_WARN_Benutzt den|r |T134075:0|t[Violetter Aufzeichnungskristall] |cRXP_WARN_während ihr im|r |cRXP_PICK_Unterirdisch-Teich|r steht
    .complete 9824,2 -- Underground Pond Reading (1)
step
    .isOnQuest 9824
    .goto Deadwind Pass,43.75,70.74,20,0
    .goto Deadwind Pass,42.99,73.44,20,0
    .goto Deadwind Pass,46.84,74.90,25,0
    .goto Deadwind Pass,45.84,78.04,15,0
    .goto Deadwind Pass,48.74,78.87,10,0
    .subzone 2562 >> |cRXP_WARN_Geht denselben Weg zurück, um die Meister's Cellar zu verlassen. Ihr werdet in Kürze erneut einen weiteren Eingang zur Meister's Cellar betreten.|r
    .subzoneskip 2837,1
step
    #completewith next
    .goto Deadwind Pass,48.887,78.881
    .subzone 2837 >> Geht die andere Treppe hinunter in den Meisterkeller
step
    #label Reading2
    .goto Deadwind Pass,54.56,82.09,25,0
    .goto Deadwind Pass,53.200,90.211
    .use 24474 >> |cRXP_WARN_Benutzt den|r |T134075:0|t[Violetter Aufzeichnungskristall] |cRXP_WARN_neben dem|r |cRXP_PICK_Unterirdisch-Brunnen|r
    .complete 9824,1 -- Underground Well Reading (1)
step
    #loop
    .goto Deadwind Pass,55.09,74.81,0
    .goto Deadwind Pass,53.20,90.21,0
    .goto Deadwind Pass,48.88,78.88,0
    .goto Deadwind Pass,42.91,78.27,0
    .goto Deadwind Pass,55.09,74.81,70,0
    .goto Deadwind Pass,53.20,90.21,70,0
    .goto Deadwind Pass,48.88,78.88,70,0
    .goto Deadwind Pass,42.91,78.27,70,0
    >>Tötet die |cRXP_ENEMY_Ghosts|r surrounding Karazhan. Plündert sie für |cRXP_LOOT_Ghostly Essences|r
    .complete 9825,1 -- Ghostly Essence (10)
    .mob Unliving Caretaker
    .mob Damned Soul
    .mob Restless Shade
    .mob Wailing Spectre
step
    #label Kara1
    .goto Deadwind Pass,47.0,75.6
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archmage Alturus|r
    .turnin 9824 >> Gebt die Quest Arkane Störungen ab
    .turnin 9825 >> Gebt die Quest Rastlose Aktivität ab
    .accept 9826 >> Dalarankontaktpersonen annehmen
    .target Archmage Alturus
step
    #completewith next
    .zone Alterac Mountains >> Reist ins Alterac-Gebirge
step
    .goto Alterac Mountains,15.6,54.6
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archmage Cedric|r
    .turnin 9826 >> Gebt die Quest Dalarankontaktpersonen ab
    .accept 9829 >> Akzeptiert die Quest Khadgar
    .target Archmage Cedric
step
    #completewith next
    .zone Shattrath City >> Reist nach Shattrath
step
    .goto Shattrath City,54.751,44.322
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Khadgar|r
    .turnin 9829 >> Gebt die Quest Khadgar ab
    .accept 9831 >> Akzeptiert die Quest Nach Karazhan
    .target Khadgar
step
    .isOnQuest 9831
    .goto Terokkar Forest,39.634,73.553
    .subzone 3789 >> |cRXP_WARN_Sucht eine Gruppe für das Schattenlabyrinth in Wälder von Terokkar. Sobald ihr eine Gruppe gefunden habt, betretet das Schattenlabyrinth|r
step
    .isOnQuest 9831
    >>|cRXP_WARN_Nachdem ihr |cRXP_ENEMY_Murmur|r besiegt habt, öffnet den |cRXP_PICK_Arkanen Behälter|r auf dem Boden, um|r |cRXP_ENEMY_Wächter des ersten Teils|r zu beschwören
    >>Tötet die |cRXP_ENEMY_First Bruchstück Wächter|r. Plündert sie für |cRXP_LOOT_First Schlüssel Bruchstück|r
    .complete 9831,1 -- First Key Fragment (1)
    .mob First Fragment Guardian
step
    #completewith next
    .zone Shattrath City >> Reist nach Shattrath
step
    .goto Shattrath City,54.751,44.322
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Khadgar|r
    .turnin 9831 >> Gebt die Quest Nach Karazhan ab
    .accept 9832 >> Akzeptiert die Quest Das zweite und das dritte Bruchstück
    .target Khadgar
step << !Druid
    #completewith next
    +|cRXP_WARN_HINWEIS: Um Die Arkatraz zu erreichen, müsst ihr eine Flugausbildung sowie ein Flugreittier in Schattenmondtal gekauft haben|r
    .skill riding,225,1
    .goto Shadowmoon Valley,37.6,56.0,0 << Alliance
    .goto Shadowmoon Valley,29.2,29.4,0 << Horde
    .target Brunn Flamebeard << Alliance
    .target Ilsa Blusterbrew << Alliance
    .target Dama Wildmane << Horde
    .target Olrokk << Horde
step
    >>Ihr müsst jetzt Steamvault und Die Arkatraz abschließen. Es spielt keine Rolle, womit ihr zuerst beginnt
    >>Sobald ihr in einer der beiden Instanzen seid, öffnet den |cRXP_PICK_Arkan-Behälter|r, um den |cRXP_ENEMY_Bruchstück-Wächter|r erscheinen zu lassen
    >>Töte die |cRXP_ENEMY_Fragment Guardian|r. Loote sie für den |cRXP_LOOT_Second Key Fragment|r und |cRXP_LOOT_Third Key Fragment|r
    .complete 9832,1 -- Second Key Fragment (1) The Steamvault
    .complete 9832,2 -- Third Key Fragment (1) The Arcatraz
    .mob Second Fragment Guardian
    .mob Third Fragment Guardian
step
    #completewith next
    .zone Shattrath City >> Reist nach Shattrath
step
    .goto Shattrath City,54.751,44.322
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Khadgar|r
    .turnin 9832 >> Gebt die Quest Das zweite und das dritte Bruchstück ab
    .accept 9836 >> Die Berührung des Meisters annehmen
    .target Khadgar
step
    #optional
    .isQuestAvailable 10284
    +|cRXP_WARN_Ihr müsst jetzt den Schwarz Morass abschließen. Um den Schwarz Morass betreten zu können, müsst ihr jedoch die Quest Flucht aus Durnholde abschließen, indem ihr Das Alte Hügelland in Höhlen der Zeit abschließt|r
step
    .isOnQuest 9836
    .goto Tanaris,57.270,62.872
    .subzone 2300 >> |cRXP_WARN_Sucht eine Gruppe für den Schwarz Morass. Sobald ihr eine Gruppe gefunden habt, betretet den Schwarz Morass|r
step
    >>Schließt Schwarz Morass ab
    >>|cRXP_WARN_Stellt sicher, dass ihr neben |cRXP_FRIENDLY_Medivh|r steht, sobald ihr|r |cRXP_ENEMY_Aeonus|r besiegt habt
    .complete 9836,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Medivh|r
    .turnin 9836 >> Gebt die Quest Die Berührung des Meisters ab
    .accept 9837 >> Rückkehr zu Khadgar annehmen
    .target Medivh
step
    #completewith next
    .zone Shattrath City >> Reist nach Shattrath
step
    .goto Shattrath City,54.751,44.322
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Khadgar|r
    .turnin 9837 >> Gebt die Quest Rückkehr zu Khadgar ab
    .accept 9838 >> Das Violette Auge annehmen
    .target Khadgar
step
    .isQuestTurnedIn 9837
    +|cRXP_WARN_Glückwunsch! Ihr seid jetzt für Karazhan eingestimmt|r
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Attunement Dungeonführer
#name 2. Höhle des Schlangenschreins
#title Höhle des Schlangenschreins

step
    #completewith next
    .goto Zangarmarsh,50.37,40.90,20,0 -- coilfang reservoir entrance
    .goto Zangarmarsh,49.018,35.631 -- slave pens
    .subzone 3717 >> |cRXP_WARN_Sucht eine Gruppe für HEROIC: Slave Pens in Zangarmarschen. Sobald ihr eine Gruppe gefunden habt, betretet Slave Pens|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Skar'this the Heretic|r
    .accept 10901 >> Der Knüppel von Kar'desh annehmen
    .target Skar'this the Heretic
step
    >>|cRXP_WARN_Findet Raids für Gruul den Drachenschlächter und Karazhan|r
    >>Kill |cRXP_ENEMY_Gruul|r. Loote ihn für den |cRXP_LOOT_Earthen Signet|r
    >>Kill |cRXP_ENEMY_Nightbane|r. Loote ihn für den |cRXP_LOOT_Blazing Signet|r
    .complete 10901,1 -- Earthen Signet (1)
    .complete 10901,2 -- Blazing Signet (2)
step
    .goto Zangarmarsh,50.37,40.90,20,0 -- coilfang reservoir entrance
    .goto Zangarmarsh,49.018,35.631 -- slave pens
    >>|cRXP_WARN_Kehrt zu |cRXP_FRIENDLY_Nar'biss der Ketzer|r in HEROIC: Slave Pens zurück|r
    .turnin 10901 >> Gebt die Quest Der Knüppel von Kar'desh ab
    .target Skar'this the Heretic
step
    .isQuestTurnedIn 10901
    +|cRXP_WARN_Glückwunsch! Ihr seid jetzt für Höhle des Schlangenschreins eingestimmt|r
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Attunement Dungeonführer
#name 3. Festung der Stürme
#title Festung der Stürme

step
    #completewith next
    .zone Shadowmoon Valley >> Reist nach Schattenmondtal
step << Alliance
    .goto Shadowmoon Valley,36.368,56.953
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Erdheiler Sophurus|r
    .accept 10680 >> Die Hand von Gul'dan annehmen
	.target Earthmender Sophurus
step << Horde
    .goto Shadowmoon Valley,28.489,26.573
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Erdheiler Griffelhuf|r
    .accept 10681 >> Die Hand von Gul'dan annehmen
	.target Earthmender Splinthoof
step
    .goto Shadowmoon Valley,42.190,45.060
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Erdheiler Torlok|r
    .turnin 10680 >> Gebt die Quest Die Hand von Gul'dan ab << Alliance
    .turnin 10681 >> Gebt die Quest Die Hand von Gul'dan ab << Horde
    .accept 10458 >> Wütende Geister des Feuers und der Erde annehmen
	.target Earthmender Torlok
step
    .use 30094 >>|cRXP_WARN_Benutzt das|r |T135462:0|t[Totem der Geister] |cRXP_WARN_und tötet|r |cRXP_ENEMY_Wütend Feuer-Geister|r und |cRXP_ENEMY_Wütend Erde-Geister|r
    >>|cRXP_WARN_Stellt sicher, dass ihr sie tötet, während sie neben dem|r |T135462:0|t[Totem der Geister] stehen
    .complete 10458,1 --Earthen Soul Captured (x8)
    .goto Shadowmoon Valley,45.8,47.6,70,0
    .goto Shadowmoon Valley,51.6,53.8,70,0
    .goto Shadowmoon Valley,47.0,41.6,70,0
    .goto Shadowmoon Valley,45.8,47.6,70,0
    .goto Shadowmoon Valley,51.6,53.8,70,0
    .goto Shadowmoon Valley,47.0,41.6
    .mob +Enraged Earth Spirit
    .complete 10458,2 --Fiery Soul Captured (x8)
    .goto Shadowmoon Valley,45.8,47.6,70,0
    .goto Shadowmoon Valley,51.6,53.8,70,0
    .goto Shadowmoon Valley,47.0,41.6,70,0
    .goto Shadowmoon Valley,49.2,36.6
    .goto Shadowmoon Valley,45.8,47.6,70,0
    .goto Shadowmoon Valley,51.6,53.8,70,0
    .goto Shadowmoon Valley,47.0,41.6
    .goto Shadowmoon Valley,49.2,36.6
	.mob +Enraged Fire Spirit
step
    .goto Shadowmoon Valley,42.190,45.060
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Erdheiler Torlok|r
    .turnin 10458 >> Gebt die Quest Wütende Geister des Feuers und der Erde ab
    .accept 10480 >> Wütende Geister des Wassers annehmen
	.target Earthmender Torlok
step
    #loop
    .goto Shadowmoon Valley,47.6,29.8,0
    .goto Shadowmoon Valley,50.2,23.8,0
    .goto Shadowmoon Valley,44.7,34.1,70,0
    .goto Shadowmoon Valley,44.6,28.6,70,0
    .goto Shadowmoon Valley,47.6,29.8,70,0
    .goto Shadowmoon Valley,46.8,23.6,70,0
    .goto Shadowmoon Valley,50.2,23.8,70,0
    .goto Shadowmoon Valley,52.4,27.4,70,0
    .use 30094 >>|cRXP_WARN_Use the|r |T135462:0|t[Totem of Spirits] |cRXP_WARN_and kill|r |cRXP_ENEMY_Wütender Wassergeist|r
    >>|cRXP_WARN_Stellt sicher, dass ihr sie tötet, während sie neben dem|r |T135462:0|t[Totem der Geister] stehen
    .complete 10480,1 --Watery Soul Captured (x5)
	.mob Enraged Water Spirit
step
    .goto Shadowmoon Valley,42.190,45.060
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Erdheiler Torlok|r
    .turnin 10480 >> Gebt die Quest Wütende Geister des Wassers ab
    .accept 10481 >> Wütende Geister der Luft annehmen
	.target Earthmender Torlok
step
    #loop
    .line Shadowmoon Valley,59.6,70.2,62.4,63.6,65.0,61.8,64.6,53.6,58.8,54.8,62.4,62.8
    .goto Shadowmoon Valley,58.8,54.8,70,0
    .goto Shadowmoon Valley,62.4,62.8,70,0
    .goto Shadowmoon Valley,65.0,61.8,70,0
    .goto Shadowmoon Valley,64.6,53.6,70,0
    .goto Shadowmoon Valley,62.4,63.6,70,0
    .goto Shadowmoon Valley,59.6,70.2,70,0
    .use 30094 >>|cRXP_WARN_Use the|r |T135462:0|t[Totem of Spirits] |cRXP_WARN_and kill|r |cRXP_ENEMY_Wütender Luftgeist|r
    >>|cRXP_WARN_Stellt sicher, dass ihr sie tötet, während sie neben dem|r |T135462:0|t[Totem der Geister] stehen
    .complete 10481,1 --Airy Soul Captured (x10)
	.mob Enraged Air Spirit
step
    .goto Shadowmoon Valley,42.190,45.060
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Erdheiler Torlok|r
    .turnin 10481 >> Gebt die Quest Wütende Geister der Luft ab
    .accept 10513 >> Oronok Herzeleid annehmen
	.target Earthmender Torlok
step
    .goto Shadowmoon Valley,53.918,23.529
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Oronok Torn-heart|r
    .turnin 10513 >> Gebt die Quest Oronok Herzeleid ab
    .accept 10514 >> Ich war schon vieles... annehmen
	.target Oronok Torn-heart
step
    #loop
    .goto Shadowmoon Valley,51.8,18.4,0
    .goto Shadowmoon Valley,51.1,15.4,0
    .goto Shadowmoon Valley,55.0,14.2,0
    .goto Shadowmoon Valley,53.8,17.7,0
    .goto Shadowmoon Valley,51.8,18.4,60,0
    .goto Shadowmoon Valley,51.1,15.4,60,0
    .goto Shadowmoon Valley,55.0,14.2,60,0
    .goto Shadowmoon Valley,53.8,17.7,60,0
    .use 30462 >>|cRXP_WARN_Stellt euch auf die kleinen Pflanzen auf dem Boden und benutzt|r |T132161:0|t[Oronok's Eber Pfeife] |cRXP_WARN_, damit ein naher Domesticated Felboar|r Shadowmoon Tubers|cRXP_LOOT_ ausgräbt|r
    >>|cRXP_WARN_Es ist sehr wichtig, dass ihr keine Domesticated Felboars tötet|r
    >>Plündert die |cRXP_LOOT_Shadowmoon Tubers|r, die danach auf dem Boden erscheinen
    .complete 10514,1 --Collect Shadowmoon Tuber (x10)
step
    .goto Shadowmoon Valley,53.918,23.529
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Oronok Torn-heart|r
    .turnin 10514 >> Gebt die Quest Ich war schon vieles... ab
    .accept 10515 >> Eine Lektion gelernt annehmen
	.target Oronok Torn-heart
step
    #loop
    .goto Shadowmoon Valley,56.5,14.6,0
    .goto Shadowmoon Valley,57.6,18.6,0
    .goto Shadowmoon Valley,57.2,21.3,0
    .goto Shadowmoon Valley,56.5,14.6,70,0
    .goto Shadowmoon Valley,57.6,18.6,70,0
    .goto Shadowmoon Valley,57.2,21.3,70,0
    .goto Shadowmoon Valley,58.5,14.8,70,0
    >>Klickt |cRXP_ENEMY_Ravenous Schinder Eggs|r auf dem Boden, um sie zu zerstören
    >>|cRXP_WARN_Achtet auf die Elite|r |cRXP_ENEMY_Ravenous Schinder Matriarch|r |cRXP_WARN_that patrols the area|r
    .complete 10515,1 --Collect Ravenous Flayer Egg Destroyed (x10)
step
    .goto Shadowmoon Valley,53.918,23.529
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Oronok Torn-heart|r
    .turnin 10515 >> Gebt die Quest Eine Lektion gelernt ab
    .accept 10519 >> Die Litanei der Verdammnis - Wahrheit und Geschichte annehmen
    .complete 10519,1 --The Cipher of Damnation - History and Truth
	.skipgossip
	.target Oronok Torn-heart
step
    .goto Shadowmoon Valley,53.918,23.529
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Oronok Torn-heart|r
    .turnin 10519 >> Gebt die Quest Die Litanei der Verdammnis - Wahrheit und Geschichte ab
    .accept 10521 >> Grom'tor, Sohn des Oronok annehmen
    .accept 10527 >> Ar'tor, Sohn des Oronok annehmen
    .accept 10546 >> Borak, Sohn des Oronok annehmen
	.target Oronok Torn-heart
step
    .goto Shadowmoon Valley,44.576,23.614
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grom'tor, Sohn des Oronok|r
    .turnin 10521 >> Gebt die Quest Grom'tor, Sohn des Oronok ab
    .accept 10522 >> Die Litanei der Verdammnis - Grom'tors Angriff annehmen
	.target Grom'tor, Son of Oronok
step
    #loop
    .goto Shadowmoon Valley,45.98,28.74,0
    .goto Shadowmoon Valley,46.1,31.6,70,0
    .goto Shadowmoon Valley,47.6,31.9,70,0
    .goto Shadowmoon Valley,46.8,26.0,70,0
    .goto Shadowmoon Valley,45.5,26.6,70,0
    >>Kill |cRXP_ENEMY_Coilskar Nagas|r. Loote sie für ihre |cRXP_LOOT_Coilskar Chest Keys|r
    >>Öffnet die |cRXP_PICK_Coilskar Chests|r, bis ihr das |cRXP_LOOT_First Bruchstück of the Cipher of Verdammnis|r erhalten habt
    .complete 10522,1 --Collect First Fragment of the Cipher of Damnation (x1)
	.mob Coilskar Defender
	.mob Coilskar Muckwatcher
	.mob Coilskar Myrmidon
	.mob Coilskar Siren
	.mob Coilskar Sorceress
	.mob Coilskar Waterkeeper
step
    .goto Shadowmoon Valley,44.576,23.614
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grom'tor, Sohn des Oronok|r
    .turnin 10522 >> Gebt die Quest Die Litanei der Verdammnis - Grom'tors Angriff ab
    .accept 10523 >> Akzeptiert die Quest Die Litanei der Verdammnis - Erster Teil
	.target Grom'tor, Son of Oronok
step
    .goto Shadowmoon Valley,29.617,50.397
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ar'tor, Sohn des Oronok|r
    .turnin 10527 >> Gebt die Quest Ar'tor, Sohn des Oronok ab
    .accept 10528 >> Dämonische Kristallgefängnisse annehmen
	.target Ar'tor, Son of Oronok
step
    .goto Shadowmoon Valley,28.005,47.568
    >>Tötet |cRXP_ENEMY_Painmistress Gabrissa|r. Plündert sie für |cRXP_LOOT_Crystalline Schlüssel|r
    .complete 10528,1 --Collect Crystalline Key (x1)
	.mob Painmistress Gabrissa
step
    .goto Shadowmoon Valley,29.617,50.397
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ar'tor, Sohn des Oronok|r
    .turnin 10528 >> Gebt die Quest Dämonische Kristallgefängnisse ab
	.target Ar'tor, Son of Oronok
step
    .isQuestTurnedIn 10528
    .goto Shadowmoon Valley,29.539,50.560
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit dem |cRXP_FRIENDLY_Geist von Ar'tor|r
    .accept 10537 >> Lohn'goron, Bogen des Herzeleid annehmen
	.target Spirit of Ar'tor
step
    #loop
    .goto Shadowmoon Valley,30.2,56.8,0
    .goto Shadowmoon Valley,32.0,50.4,0
    .goto Shadowmoon Valley,27.2,52.6,0
    .goto Shadowmoon Valley,30.2,56.8,70,0
    .goto Shadowmoon Valley,32.0,50.4,70,0
    .goto Shadowmoon Valley,27.2,52.6,70,0
    >>Tötet |cRXP_ENEMY_Illidari|r. Beute sie für |cRXP_LOOT_Lohn'goron, Bogen des Herzeleid|r
    .complete 10537,1 --Collect Lohn'goron, Bow of the Torn-heart (x1)
	.mob Illidari Dreadbringer
	.mob Illidari Painlasher
	.mob Illidari Shadowstalker
	.mob Illidari Shocktrooper
step
    .goto Shadowmoon Valley,29.539,50.560
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit dem |cRXP_FRIENDLY_Geist von Ar'tor|r
    .turnin 10537 >> Gebt die Quest Lohn'goron, Bogen des Herzeleid ab
    .accept 10540 >> Die Litanei der Verdammnis - Ar'tors Angriff annehmen
	.target Spirit of Ar'tor
step
    .goto Shadowmoon Valley,29.5,57.5
    >>|cRXP_WARN_Head southeast while the |cRXP_FRIENDLY_Geist von Ar'tor|r follows you, walk around this area until he summons|r |cRXP_ENEMY_Veneratus der Vielgesichtige|r
    >>Kill |cRXP_ENEMY_Veneratus der Vielgesichtige|r. Loote ihn für den |cRXP_LOOT_Second Fragment of the Cipher of Damnation|r
    .complete 10540,1 --Collect Second Fragment of the Cipher of Damnation (x1)
	.mob Veneratus the Many
	.target Spirit of Ar'tor
step
    .goto Shadowmoon Valley,29.539,50.560
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit dem |cRXP_FRIENDLY_Geist von Ar'tor|r
    .turnin 10540 >> Gebt die Quest Die Litanei der Verdammnis - Ar'tors Angriff ab
    .accept 10541 >> Die Litanei der Verdammnis - Zweiter Teil annehmen
	.target Spirit of Ar'tor
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Borak, Sohn des Oronok|r
    .turnin 10546 >> Gebt die Quest Borak, Sohn des Oronok ab
    .accept 10547 >> Akzeptiert die Quest Von Distelköpfen und Eiern...
	.target Borak, Son of Oronok
step
    #loop
    .goto Shadowmoon Valley,43.7,53.3,55,0
    .goto Shadowmoon Valley,42.4,58.3,55,0
    .goto Shadowmoon Valley,43.7,60.7,55,0
    .goto Shadowmoon Valley,46.1,59.2,55,0
    >>Loote die |cRXP_PICK_Rotten Arakkoa Eggs|r auf dem Boden
    >>|cRXP_WARN_Passt auf, denn sie können euch beim Plündern Schaden zufügen|r
    .complete 10547,1 --Collect Rotten Arakkoa Egg (x1)
step
    #completewith next
    .zone Shattrath City >> Reist nach Shattrath
step
    .goto Shattrath City,63.944,70.028
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tobias der Faulfraß|r
    .turnin 10547 >> Gebt die Quest Von Distelköpfen und Eiern... ab
    .accept 10550 >> Akzeptiert die Quest Ein Bündel von Blutdisteln
	.target Tobias the Filth Gorger
step
    #completewith next
    .zone Shadowmoon Valley >> Reist nach Schattenmondtal zurück
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Borak, Sohn des Oronok|r
    .turnin 10550 >> Gebt die Quest Ein Bündel von Blutdisteln ab
    .accept 10570 >> Akzeptiert die Quest Einen Distelsüchtigen fangen
	.target Borak, Son of Oronok
step
    #completewith next
    .goto Shadowmoon Valley,48.959,57.495
    .cast 37062 >>|cRXP_WARN_Benutzt|r |T133651:0|t[Blutdistelbündel] |cRXP_WARN_am Ende der Brücke|r
    .timer 78,Einen Distelsüchtigen fangen RP
    .use 30616
step
    .goto Shadowmoon Valley,48.959,57.495
    .use 30616 >>Tötet |cRXP_ENEMY_Envoy Icarius|r when he becomes attackable. Plündert sie für |cRXP_LOOT_Stormrage Missive|r
    .complete 10570,1 --Collect Stormrage Missive (x1)
    .mob Envoy Icarius
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Borak, Sohn des Oronok|r
    .turnin 10570 >> Gebt die Quest Einen Distelsüchtigen fangen ab
    .accept 10576 >> Akzeptiert die Quest Unterwürfigkeit in Schattenmond
	.target Borak, Son of Oronok
step
    #loop
    .goto Shadowmoon Valley,49.6,60.6,0
    .goto Shadowmoon Valley,47.6,66.4,0
    .goto Shadowmoon Valley,44.4,67.4,0
    .goto Shadowmoon Valley,47.6,70.6,0
    .goto Shadowmoon Valley,49.6,60.6,70,0
    .goto Shadowmoon Valley,47.6,66.4,70,0
    .goto Shadowmoon Valley,44.4,67.4,70,0
    .goto Shadowmoon Valley,47.6,70.6,70,0
	>>Tötet |cRXP_ENEMY_Eclipsions|r. Plündert sie für |cRXP_LOOT_Armor|r
    .complete 10576,1 --Collect Eclipsion Armor (x6)
	.mob Eclipsion Archmage
	.mob Eclipsion Blood Knight
	.mob Eclipsion Bloodwarder
	.mob Eclipsion Centurion
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Borak, Sohn des Oronok|r
    .turnin 10576 >> Gebt die Quest Unterwürfigkeit in Schattenmond ab
    .accept 10577 >> Akzeptiert die Quest Was Illidan will, soll Illidan bekommen...
	.target Borak, Son of Oronok
step
    #completewith next
    .cast 37096 >>|cRXP_WARN_Benutzt|r |T133564:0|t[Blutelfenverkleidung]
    .use 30639
step
    .goto Shadowmoon Valley,46.458,71.944
	.use 30639 >>Sprecht mit |cRXP_FRIENDLY_Grand Rittmeister Ruusk|r
    >>|cRXP_WARN_Achtet darauf, dass ihr die|r |T133564:0|t[Blutelfenverkleidung] |cRXP_WARN_anhabt|r
    .complete 10577,1 --Illidan's Message Delivered
	.skipgossip
	.target Grand Commander Ruusk
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Borak, Sohn des Oronok|r
    .turnin 10577 >> Gebt die Quest Was Illidan will, soll Illidan bekommen... ab
    .accept 10578 >> Die Litanei der Verdammnis - Boraks Angriff annehmen
	.target Borak, Son of Oronok
step
    #loop
    .goto Shadowmoon Valley,59.2,55.8,60,0
    .goto Shadowmoon Valley,65.8,59.8,60,0
    >>Kill |cRXP_ENEMY_Ruul the Darkener|r. Loote ihn für den |cRXP_LOOT_Third Fragment of the Cipher of Damnation|r
    >>|cRXP_ENEMY_Ruul der Verfinsterer|r |cRXP_WARN_verursacht sehr großen Schaden. Es wird empfohlen, dies mit einer vollständigen Gruppe abzuschließen, einschließlich Tank und Heiler|r
    .complete 10578,1 -- Third Fragment of the Cipher of Damnation (1)
    .mob Ruul the Darkener
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Borak, Sohn des Oronok|r
    .turnin 10578 >> Gebt die Quest Die Litanei der Verdammnis - Boraks Angriff ab
    .accept 10579 >> Die Litanei der Verdammnis - Dritter Teil annehmen
	.target Borak, Son of Oronok
step
    .goto Shadowmoon Valley,53.918,23.529
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Oronok Torn-heart|r
    .turnin 10523 >> Gebt die Quest Die Litanei der Verdammnis - Erster Teil ab
    .turnin 10541 >> Gebt die Quest Die Litanei der Verdammnis - Zweiter Teil ab
    .turnin 10579 >> Gebt die Quest Die Litanei der Verdammnis - Dritter Teil ab
    .accept 10588 >> Die Litanei der Verdammnis annehmen
	.target Oronok Torn-heart
step
    #completewith next
    .cast 37236 >>|cRXP_WARN_Kanalisiert die|r |T134423:0|t[Die Litanei der Verdammnis] |cRXP_WARN_für 20 Sek., um|r |cRXP_ENEMY_Cyrukh der Feuerlord|r zu beschwören
    .use 30657
step
    .goto Shadowmoon Valley,43.249,44.834
    .use 30657 >>Kill |cRXP_ENEMY_Cyrukh the Firelord|r
    >>|cRXP_ENEMY_Cyrukh der Feuerlord|r |cRXP_WARN_hat 369k LP. Es wird empfohlen, dies mit einer vollständigen Gruppe abzuschließen, einschließlich Tank und Heiler. Die NPCs werden euch auch helfen|r
    .complete 10588,1 -- Cyrukh the Firelord slain
    .mob Cyrukh the Firelord
step
    .goto Shadowmoon Valley,42.190,45.060
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Erdheiler Torlok|r
    .turnin 10588 >> Gebt die Quest Die Litanei der Verdammnis ab
	.target Earthmender Torlok
step
    #completewith next
    .zone Shattrath City >> Reist nach Shattrath
step
    .goto Shattrath City,54.751,44.322
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Khadgar|r
    .accept 10883 >> Der Schlüssel der Stürme annehmen
    .target Khadgar
step
    .goto Shattrath City,53.991,44.743
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_A'dal|r
    .turnin 10883 >> Gebt die Quest Der Schlüssel der Stürme ab
    .accept 10884 >> Die Prüfung der Naaru: Erbarmen annehmen
    .accept 10885 >> Die Prüfung der Naaru: Stärke annehmen
    .accept 10886 >> Die Prüfung der Naaru: Zuverlässigkeit annehmen
    .target A'dal
step
    >>|cRXP_WARN_Ihr habt nun die 3 Prozess-Quests. Diese Quests müssen alle in den Dungeons auf HEROISCH-Schwierigkeit abgeschlossen werden|r
    >>|cRXP_WARN_Die Dungeons, die ihr abschließen müsst, sind: Die Zerschmetterten Hallen, Dampfkammer, Die Arkatraz und das Schattenlabyrinth|r
    >>Schließt Die Zerschmetterten Hallen innerhalb von 55 Minuten ab, nachdem ihr |cRXP_ENEMY_Grand Hexenmeister Nethekurse|r getötet habt. Ihr müsst den |cRXP_ENEMY_Shattered Hand Scharfrichter|r am Ende des Dungeons innerhalb des Zeitlimits töten. Plündert |cRXP_LOOT_Unused Axt of the Scharfrichter|r von ihm.
    >>Tötet |cRXP_ENEMY_Kriegsherr Kalithresh|r in der Dampfkammer. Plündert |cRXP_LOOT_Kalithreshs Dreizack|r von ihm.
    >>Tötet |cRXP_ENEMY_Murmur|r im Schattenlabyrinth. Plündert |cRXP_LOOT_Murmur's Essenz|r von ihm.
    >>Schließt Die Arkatraz ab. Achtet darauf, dass |cRXP_FRIENDLY_Millhouse Manasturm|r nach dem Besiegen von |cRXP_ENEMY_Vorbote Skyriss|r am Leben bleibt.
    .complete 10884,1 -- Unused Axe of the Executioner (1)
    .complete 10885,1 -- Kalithresh's Trident (1)
    .complete 10885,2 -- Murmur's Essence (1)
    .complete 10886,1 -- Millhouse Manastorm Rescued
step
    .goto Shattrath City,53.991,44.743
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_A'dal|r
    .turnin 10884 >> Gebt die Quest Die Prüfung der Naaru: Erbarmen ab
    .turnin 10885 >> Gebt die Quest Die Prüfung der Naaru: Stärke ab
    .turnin 10886 >> Gebt die Quest Die Prüfung der Naaru: Zuverlässigkeit ab
    .accept 10888 >> Die Prüfung der Naaru: Magtheridon annehmen
    .target A'dal
step
    >>Kill |cRXP_ENEMY_Magtheridon|r
    .complete 10888,1 -- Magtheridon slain
step
    .goto Shattrath City,53.991,44.743
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_A'dal|r
    .turnin 10888 >> Gebt die Quest Die Prüfung der Naaru: Magtheridon ab
    .target A'dal
step
    .isQuestTurnedIn 10888
    +|cRXP_WARN_Glückwunsch! Ihr seid nun auf Das Auge: Festung der Stürme eingestimmt|r
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Attunement Dungeonführer
#name 4. Hyjal
#title Hyjal

step
    #completewith next
    .goto Tanaris,65.669,49.940,50 >> Reist zu den Höhlen der Zeit
    .subzoneskip 1941
step
    #loop
    .goto Tanaris,58.86,54.22,20,0
    .goto Tanaris,58.21,54.79,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Soridormi|r
    >>|cRXP_FRIENDLY_Soridormi|r |cRXP_WARN_patrouilliert leicht|r
    .accept 10445 >> Die Phiolen der Ewigkeit annehmen
    .target Soridormi
step
    >>Tötet |cRXP_ENEMY_Lady Vashj|r. Plündert sie für |cRXP_LOOT_Vashj's Vial Remnant|r
    >>Tötet |cRXP_ENEMY_Kael'thas Sunstrider|r. Plündert sie für |cRXP_LOOT_Kael's Vial Remnant|r
    .complete 10445,1 -- Vashj's Vial Remnant (1)
    .complete 10445,2 -- Kael's Vial Remnant (1)
step
    #completewith next
    .goto Tanaris,65.669,49.940,50 >> Reist zu den Höhlen der Zeit zurück
    .subzoneskip 1941
step
    #loop
    .goto Tanaris,58.86,54.22,20,0
    .goto Tanaris,58.21,54.79,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Soridormi|r
    >>|cRXP_FRIENDLY_Soridormi|r |cRXP_WARN_patrouilliert leicht|r
    .turnin 10445 >> Gebt die Quest Die Phiolen der Ewigkeit ab
    .target Soridormi
step
    .isQuestTurnedIn 10445
    +|cRXP_WARN_Glückwunsch! Ihr seid nun auf Hyjal eingestimmt|r
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Attunement Dungeonführer
#name 5. Der Schwarze Tempel
#title Der Schwarze Tempel

step
#aldor
    #completewith SeerUdalo
    .zone Shadowmoon Valley >> Reist nach Schattenmondtal
step
#aldor
    .goto Shadowmoon Valley,62.648,28.445
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Anchorite Ceyla|r
    .accept 10568 >> Akzeptiert die Quest Schrifttafeln von Baa'ri
	.target Anchorite Ceyla
step
#scryer
    #completewith SeerUdalo
    .zone Shadowmoon Valley >> Reist nach Schattenmondtal
step
#scryer
    .goto Shadowmoon Valley,56.258,59.586
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Arcanist Thelis|r
    .accept 10683 >> Akzeptiert die Quest Schrifttafeln von Baa'ri
    .target Arcanist Thelis
step
#aldor
    #loop
    .goto Shadowmoon Valley,56.0,37.1,0
    .goto Shadowmoon Valley,59.0,34.9,70,0
    .goto Shadowmoon Valley,56.0,37.1,70,0
    .goto Shadowmoon Valley,59.1,39.3,70,0
    >>Plündert |cRXP_PICK_Baa'ri Tafel Fragmente|r vom Boden
    .complete 10568,1 --Collect Baa'ri Tablet Fragment (x12)
step
#scryer
    #loop
    .goto Shadowmoon Valley,57.6,39.2,0
    .goto Shadowmoon Valley,57.6,39.2,70,0
    .goto Shadowmoon Valley,60.8,34.6,70,0
    .goto Shadowmoon Valley,55.8,39.4,70,0
    .goto Shadowmoon Valley,60.6,38.2,70,0
    >>Plündert |cRXP_PICK_Baa'ri Tafel Fragmente|r vom Boden
    .complete 10683,1 --Collect Baa'ri Tablet Fragment (x12)
step
#aldor
    .goto Shadowmoon Valley,62.648,28.445
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Anchorite Ceyla|r
    .turnin 10568 >> Gebt die Quest Schrifttafeln von Baa'ri ab
    .accept 10571 >> Akzeptiert die Quest Oronu der Älteste
	.target Anchorite Ceyla
step
#scryer
    .goto Shadowmoon Valley,56.258,59.586
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Arcanist Thelis|r
    .turnin 10683 >> Gebt die Quest Schrifttafeln von Baa'ri ab
    .accept 10684 >> Akzeptiert die Quest Oronu der Älteste
    .target Arcanist Thelis
step
#aldor
    .goto Shadowmoon Valley,57.191,32.877
    >>Tötet |cRXP_ENEMY_Oronu|r auf dem Balkon
    .complete 10571,1 --Collect Orders From Akama (x1)
	.mob Oronu the Elder
step
#scryer
    .goto Shadowmoon Valley,57.191,32.877
    >>Tötet |cRXP_ENEMY_Oronu|r auf dem Balkon
    .complete 10684,1 --Collect Orders From Akama (x1)
	.mob Oronu the Elder
step
#aldor
    .goto Shadowmoon Valley,62.648,28.445
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Anchorite Ceyla|r
    .turnin 10571 >> Gebt die Quest Oronu der Älteste ab
    .accept 10574 >> Akzeptiert die Quest Die Verderber der Aschenzungen
	.target Anchorite Ceyla
step
#scryer
    .goto Shadowmoon Valley,56.258,59.586
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Arcanist Thelis|r
    .turnin 10684 >> Gebt die Quest Oronu der Älteste ab
    .accept 10685 >> Akzeptiert die Quest Die Verderber der Aschenzungen
    .target Arcanist Thelis
step
#aldor
    .goto Shadowmoon Valley,49.887,23.012
    >>Zerstört die Totems, die |cRXP_ENEMY_Lakaan|r beschützen. Tötet und plündert ihn für sein |cRXP_LOOT_Medallion Bruchstück|r
    .complete 10574,3 --Collect Lakaan's Medallion Fragment (x1)
	.mob Lakaan
step
#aldor
    .goto Shadowmoon Valley,48.289,39.564
    >>Zerstört die Totems, die |cRXP_ENEMY_Uylaru|r beschützen. Tötet und plündert ihn für sein |cRXP_LOOT_Medallion Bruchstück|r
    .complete 10574,4 --Collect Uylaru's Medallion Fragment (x1)
	.mob Uylaru
step
#aldor
    .goto Shadowmoon Valley,51.164,52.840
    >>Zerstört die Totems, die |cRXP_ENEMY_Eykenen|r beschützen. Tötet und plündert ihn für sein |cRXP_LOOT_Medallion Bruchstück|r
    .complete 10574,1 --Collect Eykenen's Medallion Fragment (x1)
	.mob Eykenen
step
#aldor
    .goto Shadowmoon Valley,57.083,73.687
    >>Zerstört die Totems, die |cRXP_ENEMY_Haalum|r beschützen. Tötet und plündert ihn für |cRXP_LOOT_Haalums Medaillonfragment|r
    .complete 10574,2 --Collect Haalum's Medallion Fragment (x1)
	.mob Haalum
step
#scryer
    .goto Shadowmoon Valley,57.083,73.687
    >>Zerstört die Totems, die |cRXP_ENEMY_Haalum|r beschützen. Tötet und plündert ihn für |cRXP_LOOT_Haalums Medaillonfragment|r
    .complete 10685,2 --Collect Haalum's Medallion Fragment (x1)
	.mob Haalum
step
#scryer
    .goto Shadowmoon Valley,51.164,52.840
    >>Zerstört die Totems, die |cRXP_ENEMY_Eykenen|r beschützen. Tötet und plündert ihn für sein |cRXP_LOOT_Medallion Bruchstück|r
    .complete 10685,1 --Collect Eykenen's Medallion Fragment (x1)
	.mob Eykenen
step
#scryer
    .goto Shadowmoon Valley,48.289,39.564
    >>Zerstört die Totems, die |cRXP_ENEMY_Uylaru|r beschützen. Tötet und plündert ihn für sein |cRXP_LOOT_Medallion Bruchstück|r
    .complete 10685,4 --Collect Uylaru's Medallion Fragment (x1)
	.mob Uylaru
step
#scryer
    .goto Shadowmoon Valley,49.887,23.012
    >>Zerstört die Totems, die |cRXP_ENEMY_Lakaan|r beschützen. Tötet und plündert ihn für sein |cRXP_LOOT_Medallion Bruchstück|r
    .complete 10685,3 --Collect Lakaan's Medallion Fragment (x1)
	.mob Lakaan
step
#aldor
    .goto Shadowmoon Valley,62.648,28.445
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Anchorite Ceyla|r
    .turnin 10574 >> Gebt die Quest Die Verderber der Aschenzungen ab
    .accept 10575 >> Akzeptiert die Quest Der Kerker des Wächters
	.target Anchorite Ceyla
step
#scryer
    .goto Shadowmoon Valley,56.258,59.586
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Arcanist Thelis|r
    .turnin 10685 >> Gebt die Quest Die Verderber der Aschenzungen ab
    .accept 10686 >> Akzeptiert die Quest Der Kerker des Wächters
    .target Arcanist Thelis
step
#aldor
    .goto Shadowmoon Valley,57.328,49.577
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sanoru|r
    .turnin 10575 >> Gebt die Quest Der Kerker des Wächters ab
    .accept 10622 >> Akzeptiert die Quest Ein Beweis der Treue
	.target Sanoru
step
#scryer
    .goto Shadowmoon Valley,57.328,49.577
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sanoru|r
    .turnin 10686 >> Gebt die Quest Der Kerker des Wächters ab
    .accept 10622 >> Akzeptiert die Quest Ein Beweis der Treue
	.target Sanoru
step
    #loop
    .goto Shadowmoon Valley,57.02,48.71,0
    .goto Shadowmoon Valley,56.35,49.98,50,0
    .goto Shadowmoon Valley,57.02,48.71,50,0
    .goto Shadowmoon Valley,58.09,49.78,50,0
    >>Tötet |cRXP_ENEMY_Zandras|r
    >>|cRXP_ENEMY_Zandras|r |cRXP_WARN_patrouilliert auf dem Dach oben|r
    .complete 10622,1 --Kill Zandras (x1)
	.mob Zandras
step
    .goto Shadowmoon Valley,57.328,49.577
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sanoru|r
    .turnin 10622 >> Gebt die Quest Ein Beweis der Treue ab
    .accept 10628 >> Akzeptiert die Quest Akama
	.target Sanoru
step
    #label SeerUdalo
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Akama|r
    >>|cRXP_FRIENDLY_Akama|r |cRXP_WARN_ist weiter im Inneren des Kerkers des Wächters|r
    .turnin 10628 >> Gebt die Quest Akama ab
    .accept 10705 >> Seher Udalo annehmen
	.target Akama
step
    #completewith next
    .isOnQuest 10705
    .subzone 3846 >> |cRXP_WARN_Sucht eine Gruppe für Die Arkatraz. Ihr müsst im Dungeon mit |cRXP_FRIENDLY_Udalo|r sprechen|r
    .subzoneskip 3848
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Udalo|r
    .turnin 10705 >> Gebt die Quest Seher Udalo ab
    .accept 10706 >> Ein mysteriöses Omen annehmen
	.target Udalo
step
    #completewith next
    .zone Shadowmoon Valley >> Reist nach Schattenmondtal zurück
step
    .goto Shadowmoon Valley,57.328,49.577,10,0
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Akama|r
    .turnin 10706 >> Gebt die Quest Ein mysteriöses Omen ab
    .accept 10707 >> Die Terrasse von Ata'mal annehmen
	.target Akama
step
    .goto Shadowmoon Valley,71.597,35.508
    >>|cRXP_WARN_Tötet die drei |cRXP_ENEMY_Shadowmoon Soulstealers|r, damit |cRXP_ENEMY_Schattenfürst Todesklage|r auf dem Boden landet|r
    >>Kill |cRXP_ENEMY_Shadowlord Deathwail|r. Loote ihn für den |cRXP_LOOT_Herz des Zorns|r
    >>|cRXP_WARN_Es wird empfohlen, dass ihr dies mit einer vollständigen Gruppe einschließlich eines Tanks und Heilers abschließt|r
    .complete 10707,1 -- Heart of Fury (1)
    .mob Shadowlord Deathwail
step
    .goto Shadowmoon Valley,57.328,49.577,10,0
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Akama|r
    .turnin 10707 >> Gebt die Quest Die Terrasse von Ata'mal ab
    .accept 11052 >> Akamas Versprechen annehmen
	.target Akama
step
    #completewith next
    .zone Shattrath City >> Reist nach Shattrath
step
    .goto Shattrath City,53.98,44.73
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_A'dal|r
    .turnin 11052 >> Gebt die Quest Akamas Versprechen ab
	.target A'dal
step
    #completewith next
    .subzone 3607 >> |cRXP_WARN_Betretet den Schlachtzug Höhle des Schlangenschreins. Ihr müsst den Boss |cRXP_ENEMY_Tiefenlord Karathress|r besiegen und dann mit |cRXP_FRIENDLY_Seher Olum|r sprechen, der sich hinter ihm befindet|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Seer Olum|r
    .accept 10944 >> Das gefährdete Geheimnis annehmen
step
    #completewith next
    .zone Shadowmoon Valley >> Reist nach Schattenmondtal zurück
step
    .goto Shadowmoon Valley,57.328,49.577,10,0
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Akama|r
    .turnin 10944 >> Gebt die Quest Das gefährdete Geheimnis ab
    .accept 10946 >> Die List der Aschenzungen annehmen
	.target Akama
step
    .use 31946 >>Tötet |cRXP_ENEMY_A'lar|r in Festung der Stürme, während ihr |T133132:0|t[Ashtongue Cowl] tragt
    .complete 10946,1 -- Ruse of the Ashtongue 1/1
step
    #completewith next
    .zone Shadowmoon Valley >> Reist nach Schattenmondtal zurück
step
    .goto Shadowmoon Valley,57.328,49.577,10,0
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Akama|r
    .turnin 10946 >> Gebt die Quest Die List der Aschenzungen ab
    .accept 10947 >> Ein Artefakt aus der Vergangenheit annehmen
	.target Akama
step
    >>Tötet |cRXP_ENEMY_Rage Winterchill|r in Hyjal. Plündert ihn für das |cRXP_LOOT_Time-Phasenverschoben Phylakterium|r
    .complete 10947,1 -- Time-Phased Phylactery (1)
step
    #completewith next
    .zone Shadowmoon Valley >> Reist nach Schattenmondtal zurück
step
    .goto Shadowmoon Valley,57.328,49.577,10,0
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Akama|r
    .turnin 10947 >> Gebt die Quest Ein Artefakt aus der Vergangenheit ab
    .accept 10948 >> Die Seelengeisel annehmen
	.target Akama
step
    #completewith next
    .zone Shattrath City >> Reist nach Shattrath
step
    .goto Shattrath City,53.98,44.73
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_A'dal|r
    .turnin 10948 >> Gebt die Quest Die Seelengeisel ab
    .accept 10949 >> Zutritt zum Schwarzen Tempel annehmen
	.target A'dal
step
    #completewith next
    .zone Shadowmoon Valley >> Reist nach Schattenmondtal zurück
step
    .goto Shadowmoon Valley,65.233,43.956
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Xi'ri|r
    >>|cRXP_WARN_Falls ihr in einer Gruppe seid, stellt sicher, dass andere Gruppenmitglieder abgegeben haben, bevor ihr die nächste Quest akzeptiert. Auto-Akzeptieren wurde für diesen Schritt deaktiviert.|r
    .turnin 10949 >> Gebt die Quest Zutritt zum Schwarzen Tempel ab
    .accept 10985,1 >> Ein Ablenkungsmanöver für Akama annehmen
    .target Xi'ri
step
    .goto Shadowmoon Valley,65.233,43.956
    >>|cRXP_WARN_Sprecht mit |cRXP_FRIENDLY_Xi'ri|r, um das Rollenspiel zu beginnen. Ihr müsst möglicherweise neben ihm für 1-2 Minuten warten, bis |cRXP_FRIENDLY_Akama|r auftaucht. Sobald |cRXP_FRIENDLY_Akama|r angekommen ist, folgt ihm und setzt das Rollenspiel fort.|r
    .complete 10985,1 -- Help Akama and Maiev enter the Black Temple.
    .skipgossip
    .target Xi'ri
    .target Akama
step
    .goto Shadowmoon Valley,65.233,43.956
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Xi'ri|r
    .turnin 10985 >> Gebt die Quest Ein Ablenkungsmanöver für Akama ab
    .accept 10958 >> Sucht die Aschenzungen auf annehmen
    .target Xi'ri
step
    .isQuestTurnedIn 10985
    +|cRXP_WARN_Glückwunsch! Ihr habt jetzt Zutritt zum Schwarzen Tempel.|r
]])
