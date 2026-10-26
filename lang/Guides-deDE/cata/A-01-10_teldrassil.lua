if GetLocale() ~= "deDE" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end
RXPGuides.RegisterGuide([[
#version 1
#group RXP Kataklysmus 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 1-6 Laubschattental
#next 6-10 Teldrassil
#defaultfor NightElf
<<Alliance
step
    .goto 460,45.61,74.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ilthalaine|r
    .accept 28713 >>Akzeptiert die Quest Das Gleichgewicht der Natur
	.target Ilthalaine
step
    .goto 460,42.44,76.29,20,0
    .goto 460,46.63,79.57,20,0
    .goto 460,50.63,76.87,20,0
    .goto 460,42.44,76.29
    >>Tötet |cRXP_ENEMY_Young Nightsabers|r
    .complete 28713,1 --6/6 Young Nightsaber slain
	.mob Young Nightsaber
step
    .goto 460,45.62,74.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ilthalaine|r
    .turnin 28713 >>Gebt die Quest Das Gleichgewicht der Natur ab
    .accept 28714 >>Akzeptiert die Quest Verderbtes Teufelsmoos
	.target Ilthalaine
step
    .goto 460,45.94,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Melithar Staghelm|r
    .accept 28715 >>Akzeptiert die Quest Dämonische Diebe
	.target Melithar Staghelm
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Grell|r und |cRXP_ENEMY_Grellkins|r. Plündert sie für |cRXP_LOOT_Fel Moss|r
    .complete 28714,1 --6/6 Fel Moss
	.mob Grell
	.mob Grellkin
step
    .goto 460,36.66,79.84,15,0
    .goto 460,34.82,80.53,15,0
    .goto 460,31.70,74.85,15,0
    .goto 460,30.66,70.55,20,0
    .goto 460,36.66,79.84
    >>Beute |cRXP_LOOT_Melithar's Stolen Bags|r auf dem Boden
    .complete 28715,1 --5/5 Melithar's Stolen Bags
step
    .goto 460,36.66,79.84,15,0
    .goto 460,34.82,80.53,15,0
    .goto 460,31.70,74.85,15,0
    .goto 460,30.66,70.55,20,0
    .goto 460,36.66,79.84
    >>Tötet |cRXP_ENEMY_Grell|r und |cRXP_ENEMY_Grellkins|r. Plündert sie für |cRXP_LOOT_Fel Moss|r
    .complete 28714,1 --6/6 Fel Moss
	.mob Grell
	.mob Grellkin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ilthalaine|r und |cRXP_FRIENDLY_Melithar Staghelm|r
    .turnin 28714 >>Gebt die Quest Verderbtes Teufelsmoos ab
    .target +Ilthalaine
    .goto 460,46.28,73.48
    .turnin 28715 >>Gebt die Quest Dämonische Diebe ab
	.target +Melithar Staghelm
    .goto 460,45.93,72.86
    .accept 3116 >> Akzeptiert die Quest Einfaches Siegelzeichen << Warrior
    .accept 3117 >> Akzeptiert die Quest Geätztes Siegelzeichen << Hunter
    .accept 3118 >> Akzeptiert die Quest Verschlüsseltes Siegelzeichen << Rogue
    .accept 3119 >> Akzeptiert die Quest Geheiligtes Siegelzeichen << Priest
    .accept 3120 >> Akzeptiert die Quest Tiefgrünes Siegelzeichen << Druid
    .accept 26841 >> Akzeptiert die Quest Das verbotene Siegelzeichen << Mage
    --class quests are auto from either npc
step << Priest/Mage
    #completewith next
    .goto 1438/1,761.79999,10415.60059,10 >> Reist die Rampe hinauf zu |cRXP_FRIENDLY_Shanda|r << Priest
    .goto 1438/1,761.79999,10415.60059,10 >> Reist die Rampe hinauf zu |cRXP_FRIENDLY_Rhyanda|r << Mage
step << Priest
    .goto 1438/1,801.60004,10458.79980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shanda|r
    .turnin 3119 >> Gebt die Quest Geheiligtes Siegelzeichen ab
    .accept 26949 >> Akzeptiert die Quest Heilung für die Verwundeten << cata
    .accept 26949 >> Akzeptiert die Quest Das Wort lernen << !cata
    .train 2061 >> Erlernen |T135907:0|t[Blitzheilung] << cata
    .target Shanda
step << Priest cata
    .goto 1438/1,797.70001,10464.60059
    >>|cRXP_WARN_Wirkt|r |T135907:0|t[Blitzheilung] |cRXP_WARN_5 Mal auf eine |cRXP_FRIENDLY_Verwundete Schildwache|r neben euch|r
    .complete 26949,1 -- Heal Wounded Sentinel
    .target Wounded Sentinel
step << Priest !cata
    .goto 1438/1,813.50000,10417.29980,-1
    .goto 1438/1,808.29999,10412.70020,-1
    .goto 1438/1,803.90002,10407.60059,-1
    .goto 1438/1,798.60004,10402.70020,-1
    .goto 1438/1,793.29999,10397.10059,-1
    .goto 1438/1,787.40002,10393.00000,-1
    .goto 1438/1,781.90002,10389.90039,-1
    >>|cRXP_WARN_Cast|r |T136207:0|t[Schattenwort: Schmerz] |cRXP_WARN_5 times on a|r |cRXP_ENEMY_Training Attrappe|r
    .complete 26949,2 -- Heal Wounded Sentinel
    .target Training Dummy
step << Priest
    .goto 1438/1,801.60004,10458.79980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shanda|r
    .turnin 26949 >> Gebt die Quest Heilung für die Verwundeten ab << cata
    .turnin 26949 >> Gebt die Quest Das Wort lernen ab << !cata
    .accept 28723 >> Akzeptiert die Quest Mondpriesterin
    .target Shanda
step << Mage
    .goto 1438/1,804.79999,10456.29980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rhyanda|r
    .turnin 26841 >> Gebt die Quest Das verbotene Siegelzeichen ab
    .accept 26940 >> Akzeptiert die Quest Arkane Geschosse
    .train 5143 >> Erlernen |T136096:0|t[Arkane Geschosse] << cata
    .target Rhyanda
step << Mage
    .goto 1438/1,813.50000,10417.29980,-1
    .goto 1438/1,808.29999,10412.70020,-1
    .goto 1438/1,803.90002,10407.60059,-1
    .goto 1438/1,798.60004,10402.70020,-1
    .goto 1438/1,793.29999,10397.10059,-1
    .goto 1438/1,787.40002,10393.00000,-1
    .goto 1438/1,781.90002,10389.90039,-1
    >>|cRXP_WARN_Wirkt|r |T135812:0|t[Feuerball] |cRXP_WARN_auf die |cRXP_ENEMY_Trainingsattrappe|r, bis ihr einen|r |T135731:0|t[Arkan Missles!] |cRXP_WARN_Proc erhaltet, dann wirkt|r |T136096:0|t[Arkane Geschosse]|cRXP_WARN_. Wiederholt das zweimal|r
    .complete 26940,1 << cata -- Practice Arcane Missiles (1)
    .complete 26940,2 << !cata -- Practice Arcane Missiles (1)
    .mob Training Dummy
step << Mage
    #completewith next
    .goto 1438/1,761.79999,10415.60059,10 >> Reist die Rampe hinauf zu |cRXP_FRIENDLY_Rhyanda|r
step << Mage
    .goto 1438/1,804.79999,10456.29980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rhyanda|r
    .turnin 26940 >> Gebt die Quest Arkane Geschosse ab
    .accept 28723 >> Akzeptiert die Quest Mondpriesterin
    .target Rhyanda
step << Warrior/Rogue
    #completewith next
    .goto 1438/1,797.20001,10458.90039,15,0
    .goto 1438/1,794.60004,10506.90039,10 >> Reisen toward |cRXP_FRIENDLY_Alyissia|r inside << Warrior
    .goto 1438/1,794.60004,10506.90039,10 >> Reisen toward |cRXP_FRIENDLY_Frahun Shadewhisper|r inside << Rogue
step << Warrior
    .goto 1438/1,778.10004,10526.60059
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alyissia|r
    .turnin 3116 >> Gebt die Quest Einfaches Siegelzeichen ab
    .accept 26945 >> Akzeptiert die Quest Neue Techniken lernen
	.train 100 >> Erlernt |T132337:0|t[Sturmangriff] << cata
    .target Alyissia
step << Warrior
    .goto 1438/1,808.79999,10460.79980
    >>|cRXP_WARN_Wirkt|r |T132337:0|t[Ansturm] |cRXP_WARN_auf den|r |cRXP_ENEMY_Übung Attrappe|r
    .complete 26945,1 << cata -- Practice Charge (1)
    .complete 26945,2 << !cata -- Practice Charge (1)
    .mob Training Dummy
step << Warrior
    .goto 1438/1,778.10004,10526.60059
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alyissia|r
    .turnin 26945 >> Gebt die Quest Neue Techniken lernen ab
    .accept 28723 >> Akzeptiert die Quest Mondpriesterin
    .target Alyissia
step << Rogue
    .goto 1438/1,778.00000,10519.20020
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Frahun Shadewhisper|r
    .turnin 3118 >> Gebt die Quest Verschlüsseltes Siegelzeichen ab
    .accept 26946 >> Akzeptiert die Quest Der Vorteil eines Schurken
	.train 2098 >> Erlernen |T132292:0|t[Ausweiden] << cata
    .target Frahun Shadewhisper
step << Rogue
    .goto 1438/1,808.79999,10486.00000,-1
    .goto 1438/1,805.60004,10481.79980,-1
    >>|cRXP_WARN_Wirkt|r |T136189:0|t[Finsterer Stoß] |cRXP_WARN_gefolgt von|r |T132292:0|t[Ausweiden] |cRXP_WARN_3 Mal auf den|r |cRXP_ENEMY_Übung Attrappe|r
    .complete 26946,1 << cata -- Practice Eviscerate (1)
    .complete 26946,2 << !cata -- Practice Eviscerate (1)
    .mob Training Dummy
step << Rogue
    .goto 1438/1,778.00000,10519.20020
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Frahun Shadewhisper|r
    .turnin 26946 >> Gebt die Quest Der Vorteil eines Schurken ab
    .accept 28723 >> Akzeptiert die Quest Mondpriesterin
    .target Frahun Shadewhisper
step << Hunter
    .goto 1438/1,778.00000,10448.10059
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ayanna Everstride|r
    .turnin 3117 >> Gebt die Quest Geätztes Siegelzeichen ab
    .accept 26947 >> Akzeptiert die Quest Ausbildung eines Waldhirten
	.train 56641 >> Erlernen |T132213:0|t[Zuverlässiger Schuss] << cata
    .target Ayanna Everstride
step << Hunter
    .goto 1438/1,801.20001,10454.90039
    >>|cRXP_WARN_Wirkt|r |T132213:0|t[Brunnenbehüter Solanian] |cRXP_WARN_auf die |cRXP_ENEMY_Trainingsattrappe|r 5 Mal|r
    .complete 26947,1 << cata-- Practice Steady Shot (1)
    .complete 26947,2 << !cata -- Practice Steady Shot (1)
    .mob Training Dummy
step << Hunter
    .goto 1438/1,778.00000,10448.10059
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ayanna Everstride|r
    .turnin 26947 >> Gebt die Quest Ausbildung eines Waldhirten ab
    .accept 28723 >> Akzeptiert die Quest Mondpriesterin
    .target Ayanna Everstride
step << Druid
    #completewith next
    .goto 1438/1,797.20001,10458.90039,15 >> Reisen toward |cRXP_FRIENDLY_Mardant Strongoak|r inside
step << Druid
    .goto 1438/1,816.00000,10485.90039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mardant Strongoak|r
    .turnin 3120 >> Gebt die Quest Tiefgrünes Siegelzeichen ab
    .accept 26948 >> Akzeptiert Verjüngende Berührung << cata
    .accept 26948 >> Akzeptiert die Quest Mondfeuer << !cata
	.train 774 >> Erlernen |T136081:0|t[Verjüngung] << cata
    .target Mardant Strongoak
step << Druid cata
    .goto 1438/1,769.79999,10436.29980,-1
    .goto 1438/1,788.29999,10417.90039,-1
    >>|cRXP_WARN_Cast|r |T136081:0|t[Verjüngung] |cRXP_WARN_on a|r |cRXP_FRIENDLY_Wounded Wächtereule|r
    .complete 26948,1 -- Heal Wounded Sentinel
    .target Wounded Sentinel
step << !cata Druid
    .goto 460,46.003,56.584
    >>|cRXP_WARN_Cast|r |T136096:0|t[Mondfeuer] |cRXP_WARN_on a|r |cRXP_ENEMY_Training Attrappe|r
    .complete 26948,2 -- Heal Wounded Sentinel
    .target Training Dummy
step << Druid
    .goto 1438/1,816.00000,10485.90039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mardant Strongoak|r
    .turnin 26948 >> Gebt die Quest Verjüngende Berührung ab << cata
    .turnin 26948 >> Gebt die Quest Mondfeuer ab << !cata
    .accept 28723 >> Akzeptiert die Quest Mondpriesterin
    .target Mardant Strongoak
step
    .goto 460,42.49,50.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dentaria Silverglade|r
    .turnin 28723 >>Gebt die Quest Mondpriesterin ab
    .accept 28724 >>Akzeptiert die Quest Iverrons Gegengift
	.target Dentaria Silverglade
step
    .goto 460,41.87,49.37,5,0
    .goto 460,40.77,47.27,5,0
    .goto 460,39.54,52.27,5,0
    .goto 460,40.18,52.64,5,0
    .goto 460,40.80,53.32,5,0
    .goto 460,42.28,52.68,5,0
    .goto 460,43.60,51.83,5,0
    .goto 460,41.87,49.37
    >>Sammelt |cRXP_LOOT_Mondblütenlilien|r vom Boden
    .complete 28724,1 -- 7/7 Moonpetal Lily
step
    .goto 460,42.49,50.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dentaria Silverglade|r
    .turnin 28724 >>Gebt die Quest Iverrons Gegengift ab
    .accept 28725 >>Akzeptiert die Quest Die Beschützerin des Waldlandes
	.target Dentaria Silverglade
step
	#completewith next
	.goto 58,56.34,27.51,5 >> ENTER die Höhle dann wartet|cRXP_WARN_ auf |cRXP_FRIENDLY_Tarindrella|r zum Erscheinen|r
step
    .goto 58,56.34,27.51
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarindrella|r beim Pfeil-Ort. Sie wird nach ein paar Sek. erscheinen
    .turnin 28725 >>Gebt die Quest Die Beschützerin des Waldlandes ab
    .accept 28726 >>Nehmt die Quest Waldwebergift an
	.target Tarindrella
step
    .goto 58,41.27,33.22,10,0
    .goto 58,34.81,15.50,15,0
    .waypoint 58,46.33,41.34
    >>Tötet |cRXP_ENEMY_Webwood Spinnen|r
    .complete 28726,1 --12/12 Webwood Spider slain
	.mob Webwood Spider
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarindrella|r neben euch
    .turnin 28726 >>Gebt die Quest Waldwebergift ab
    .accept 28727 >>Nehmt die Quest Abscheuliche Berührung an
	.target Tarindrella
step
    .goto 58,34.56,23.87,0
    .goto 58,42.81,19.50,10,0
    .goto 58,45.02,31.37
    >>Tötet |cRXP_ENEMY_Githyiss die Üble|r
    .complete 28727,1 --1/1 Githyiss the Vile slain
	.mob Githyiss the Vile
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarindrella|r neben euch
    .turnin 28727,1 >>Gebt die Quest Abscheuliche Berührung ab
    .accept 28728 >>Nehmt die Quest Anzeichen der Dinge, die da kommen werden an
	.target Tarindrella
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dentaria Silverglade|r
    .goto 460,42.50,50.50
    .turnin 28728 >>Gebt die Quest Anzeichen der Dinge, die da kommen werden ab
    .accept 28729 >>Nehmt die Quest Teldrassil: Krone von Azeroth an
	.target Dentaria Silverglade
step
    #completewith next
    +|cRXP_WARN_Um Tastenbelegung für Questgegenstände zu aktivieren, folgt diesen Schritten:|r
    *[1] Drückt die |cRXP_WARN_Escape key.|r
    *[2] Auswählen |cRXP_WARN_Options.|r
    *[3] Geht zu |cRXP_WARN_Keybindings|r.
    *[4] In |cRXP_WARN_Keybindings|r findet |cRXP_WARN_RestedXP Guides|r.
    *[5] Wählt die |cRXP_WARN_Active Knöpfchen.|r aus und bindet sie.
step
    .goto 460,50.13,34.49
    .use 5185 >>|cRXP_WARN_Benutzt die|r |T134776:0|t[Kristallphiole] |cRXP_WARN_am Mondbrunnen|r
    .complete 28729,1 --1/1 Filled Crystal Phial
step
    .goto 460,42.49,50.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dentaria Silverglade|r
    .turnin 28729 >>Gebt die Quest Teldrassil: Krone von Azeroth ab
    .accept 28730 >>Nehmt die Quest Wertvolle Wasser an
	.target Dentaria Silverglade
step
    .goto 460,41.85,63.54,15,0
    .goto 460,46.45,53.43,15,0
    .goto 460,44.44,56.47,15,0
    .goto 460,45.20,60.69,15,0
    .goto 460,48.01,58.75,15,0
    .goto 460,48.14,54.36,15,0
    .goto 460,47.16,55.95
    >>Lauft die Rampe des Baumes hinauf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tenaron Stormgrip|r
    .turnin 28730 >>Gebt die Quest Wertvolle Wasser ab
    .accept 28731 >>Nehmt die Quest Teldrassil: Gebt das Wissen weiter an
	.target Tenaron Stormgrip
step
    .goto 460,54.57,84.78
	>>|cRXP_WARN_Springt vom Baum. Ihr habt einen Schwebfall, also werdet ihr nicht sterben|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Porthannius|r
    .accept 2159 >>Akzeptiert die Quest Lieferung für Dolanaar
	.target Porthannius
]])

RXPGuides.RegisterGuide([[

#version 1
#group RXP Kataklysmus 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 6-10 Teldrassil
#next 10-18 Dunkelküste
#defaultfor NightElf

<<Alliance

step
    .goto 57,59.56,49.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zenn Foulhoof|r
    .accept 488 >>Akzeptiert die Quest Zenns Aufträge
	.target Zenn Foulhoof
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Webwood Lurkers|r. Plündert sie für |cRXP_LOOT_Webwood Spinnenseide|r
    >>Tötet |cRXP_ENEMY_Nightsabers|r. Plündert sie für |cRXP_LOOT_Nightsaber Kiefer|r
    >>Tötet |cRXP_ENEMY_Strigid Owls|r. Plündert sie für |cRXP_LOOT_Strigid Owl Feders|r
    >>|cRXP_WARN_Ihr bekommt später mehr Gelegenheiten, diese abzuschließen|r
    .complete 488,3 --2/2 Webwood Spider Silk
    .mob +Webwood Lurker
    .complete 488,1 --2/2 Nightsaber Fang
    .mob +Nightsaber
    .complete 488,2 --2/2 Strigid Owl Feather
    .mob +Strigid Owl
step
    .goto 57,55.56,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tallonkai Swiftroot|r
    .accept 2438 >>Akzeptiert die Quest Der smaragdgrüne Traumfänger
	.target Tallonkai Swiftroot
step << !NightElf
    #completewith next
    .goto 57,55.48,50.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Fidelio|r
    .fp Dolanaar >>Erlernt die Flugroute nach Dolanaar
	.target Fidelio
step
    .goto 57,55.70,51.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Athridas Bearmantle|r
    .accept 475 >>Akzeptiert die Quest Ein beunruhigender Wind
	.target Athridas Bearmantle
step
    .goto 57,55.37,52.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Innkeeper Keldamyr|r
    .turnin 2159,1 >>Gebt die Quest Lieferung für Dolanaar ab
	.target Innkeeper Keldamyr
step
    #completewith next
    .goto 57,55.36,52.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Innkeeper Keldamyr|r
    .home >>Setzt euren Ruhestein in Dolanaar
	.target Innkeeper Keldamyr
step
	#completewith next
    .goto 57,56.00,52.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iranis Shadebloom|r
    .train 2366 >> Erlernt |T136065:0|t[Kräuterkunde]
	.skipgossip 47420,1,1,1
	.target Iranis Shadebloom
step
    .goto 57,56.00,52.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iranis Shadebloom|r
    .train 2575 >> Erlernt |T136248:0|t[Bergbau]
	.skipgossip 47420,2,3,2
	.target Iranis Shadebloom
step << Warrior cata
    .goto 57,55.887,51.720
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kyra Windblade|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Kyra Windblade
step << Mage cata
    .goto 57,55.816,51.389
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Irriende|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Irriende
step << Priest cata
    .goto 57,55.319,49.594
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Laurna Morninglight|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Laurna Morninglight
step << Rogue cata
    .goto 57,56.027,52.534
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jannok Breezesong|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Jannok Breezesong
step << Hunter cata
    .goto 57,56.284,51.973
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jannok Breezesong|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Jannok Breezesong
step
    .goto 57,55.82,53.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 28731 >>Gebt die Quest Teldrassil: Gebt das Wissen weiter ab
    .accept 929 >>Nehmt die Quest Teldrassil: Die Verweigerung der Aspekte an
	.target Corithras Moonrage
step << Druid cata
    .goto 57,55.650,53.771
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kal|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Kal
step
    #completewith TeldrassilEmeraldDreamcatcher
    >>Tötet |cRXP_ENEMY_Webwood Lurkers|r. Plündert sie für |cRXP_LOOT_Webwood Spinnenseide|r
    >>Tötet |cRXP_ENEMY_Nightsabers|r. Plündert sie für |cRXP_LOOT_Nightsaber Kiefer|r
    >>Tötet |cRXP_ENEMY_Strigid Owls|r. Plündert sie für |cRXP_LOOT_Strigid Owl Feders|r
    .complete 488,3 --2/2 Webwood Spider Silk
    .mob +Webwood Lurker
    .complete 488,1 --2/2 Nightsaber Fang
    .mob +Nightsaber
    .complete 488,2 --2/2 Strigid Owl Feather
    .mob +Strigid Owl
step
    .goto 57,61.92,50.69
    .use 5619 >>|cRXP_WARN_Benutzt die|r |T134721:0|t[Jadephiole] |cRXP_WARN_beim Moonwell|r
    .complete 929,1 --1/1 Filled Jade Phial
step
    .goto 57,64.73,51.70,5,0
    .goto 57,64.90,51.61,5,0
    .goto 57,64.59,51.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gaerolas Talvethren|r
    .turnin 475 >>Gebt die Quest Ein beunruhigender Wind ab
    .accept 476 >>Akzeptiert die Quest Die Verderbnis der Knarzklauen
	.target Gaerolas Talvethren
step
    #label TeldrassilEmeraldDreamcatcher
    .goto 57,66.10,52.10
    >>Öffnet |cRXP_PICK_Tailonkai's Kommode|r. Plündert sie für |cRXP_LOOT_Emerald Traumfänger|r
    .complete 2438,1 --1/1 Emerald Dreamcatcher
step
    #completewith next
    .deathskip >> Sterbt und respawnt beim Geistheiler
    .subzoneskip 186
step
    .goto 57,55.82,53.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 929 >>Gebt die Quest Teldrassil: Die Verweigerung der Aspekte ab
	.target Corithras Moonrage
step
    .goto 57,55.69,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Athridas Bearmantle|r
    .turnin 476 >>Gebt die Quest Die Verderbnis der Knarzklauen ab
	.target Athridas Bearmantle
step
    .goto 57,55.56,50.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tallonkai|r
    .turnin 2438 >>Gebt die Quest Der smaragdgrüne Traumfänger ab
    .accept 2459 >>Akzeptiert die Quest Ferocitas der Traumfresser
	.target Tallonkai
step
    #xprate >1.59
    #optional
    .maxlevel 10,Teldskip
step
    #loop
    .goto 57,57.48,48.54,50,0
    .goto 57,58.21,49.79,50,0
    .goto 57,58.23,52.16,50,0
    .goto 57,59.97,53.47,50,0
    .goto 57,61.28,51.69,50,0
    .goto 57,60.21,50.03,50,0
    .goto 57,57.48,48.54,50,0
    >>Tötet |cRXP_ENEMY_Webwood Lurkers|r. Plündert sie für |cRXP_LOOT_Webwood Spinnenseide|r
    >>Tötet |cRXP_ENEMY_Nightsabers|r. Plündert sie für |cRXP_LOOT_Nightsaber Kiefer|r
    >>Tötet |cRXP_ENEMY_Strigid Owls|r. Plündert sie für |cRXP_LOOT_Strigid Owl Feders|r
    .complete 488,3 --2/2 Webwood Spider Silk
    .mob +Webwood Lurker
    .complete 488,1 --2/2 Nightsaber Fang
    .mob +Nightsaber
    .complete 488,2 --2/2 Strigid Owl Feather
    .mob +Strigid Owl
step
    .isQuestComplete 488
    .goto 57,59.52,49.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 488 >>Gebt die Quest Zenns Aufträge ab
	.target Zenn Foulhoof
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Mystiker der Knarzklauen|r
    .complete 2459,1 --7/7 Gnarlpine Mystic slain
	.mob Gnarlpine Mystic
step
    .goto 57,67.26,46.83
    >>Tötet |cRXP_ENEMY_Ferocitas der Traumfresser|r. Plündert ihn für |cRXP_LOOT_Tallonkais Juwel|r
    .complete 2459,2 --1/1 Tallonkai's Jewel
	.mob Ferocitas the Dream Eater
step
    .goto 57,66.88,46.87,40,0
    .goto 57,65.76,46.40,40,0
    .goto 57,65.75,44.83,40,0
    .goto 57,67.26,46.83
    >>Tötet |cRXP_ENEMY_Mystiker der Knarzklauen|r
    >>|cRXP_WARN_Habt nur noch wenig Leben, sobald es fast abgeschlossen ist. Ihr werdet danach über den Geistheiler skippen.|r
    .complete 2459,1 --7/7 Gnarlpine Mystic slain
	.mob Gnarlpine Mystic
step
    #completewith next
    .goto 57,66.13,45.25,25,0
    .deathskip >> Sterbt und respawnt beim Geistheiler
step
    .goto 57,55.55,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tallonkai Swiftroot|r
    .turnin 2459 >>Gebt die Quest Ferocitas der Traumfresser ab
	.target Tallonkai Swiftroot
step << Priest cata
    .goto 57,55.319,49.594
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Laurna Morninglight|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Laurna Morninglight
step
    .goto 57,55.72,50.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Syral Bladeleaf|r
    .accept 489 >>Akzeptiert die Quest Sucht Befreiung!
	.target Syral Bladeleaf
step << Warrior cata
    .goto 57,55.887,51.720
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kyra Windblade|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Kyra Windblade
step << Mage cata
    .goto 57,55.816,51.389
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Irriende|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Irriende
step << Rogue cata
    .goto 57,56.027,52.534
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jannok Breezesong|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Jannok Breezesong
step << Hunter cata
    .goto 57,56.284,51.973
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jannok Breezesong|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Jannok Breezesong
step << Druid cata
    .goto 57,55.650,53.771
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kal|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Kal
step
#loop
    .goto 57,55.94,55.82,20,0
    .goto 57,55.30,56.98,20,0
    .goto 57,55.32,57.04,20,0
    .goto 57,54.22,53.89,20,0
    .goto 57,56.51,55.80,20,0
    .goto 57,57.18,55.55,20,0
    .goto 57,55.94,55.82,20,0
    .goto 57,55.94,55.82,0
    >>Plündert die |cRXP_LOOT_Teufelszapfen|r vom Boden
    .complete 489,1 --3/3 Fel Cone
step
    .goto 57,59.51,49.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 489 >>Gebt die Quest Sucht Befreiung! ab
	.target Zenn Foulhoof
step
    .goto Teldrassil,55.77,50.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Syral Bladeleaf|r
    .target Syral Bladeleaf
    .accept 13946 >>Nehmt die Quest Vergeltung der Natur an
step
    .goto 57,55.55,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tallonkai Swiftroot|r
    .accept 932 >>Akzeptiert die Quest Krankhafter Hass
	.target Tallonkai Swiftroot
step
#completewith melenas
    .goto 57,54.45,45.43,40 >> Geht nach Norden zur Höhle
    .subzoneskip 258--Fel Rock
step
    #label ireroot
    #sticky
    .goto 57,51.82,43.85
    .use 46716 >>|cRXP_WARN_Benutzt die|r |T134217:0|t[Ireroot Seeds] |cRXP_WARN_um |cRXP_ENEMY_Grellkin|r im Inneren der Höhle zu töten|r
    .complete 13946,1 --12/12 Fel Rock grellkin killed with Ireroot Seeds
step
#label melenas
    .goto 57,51.82,43.85
    >>Tötet |cRXP_ENEMY_Lord Melenas|r. Plündert sie für ihren |cRXP_LOOT_Kopf|r
    .complete 932,1 --Collect Melenas' Head (x1)
    .mob Lord Melenas
step
    #requires ireroot
    #completewith next
    .hs >> Benutzt euren Ruhestein nach Dolanaar
    .cooldown item,6948,>2,1
step
    .goto 57,55.77,50.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Syral Bladeleaf|r
    .target Syral Bladeleaf
    .turnin 13946 >>Gebt die Quest Vergeltung der Natur ab
step
    .goto 57,55.55,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tallonkai Swiftroot|r
    .turnin 932 >>Gebt die Quest Krankhafter Hass ab
	.target Tallonkai Swiftroot
step
    #xprate >1.59
    #optional
    .maxlevel 10,Teldskip
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Athridas Bearmantle|r und |cRXP_FRIENDLY_Sentinel Kyra Starsong|r
    .accept 483 >>Akzeptiert die Quest Die Relikte des Erwachens
    .target +Athridas Bearmantle
    .goto 57,55.70,51.99
    .accept 13945 >>Akzeptiert die Quest Gefahr vor Ort
    .target +Sentinel Kyra Starsong
    .goto 57,55.656,51.991
step
    #completewith sleepingd
    >>|cRXP_WARN_Tötet alle |cRXP_ENEMY_Furbolg|r auf eurem Weg zu |cRXP_FRIENDLY_Oben Zornklaue|r
    .complete 13945,1
    .mob Gnarlpine Shaman
	.mob Gnarlpine Defender
	.mob Gnarlpine Augur
step
    #completewith next
    .goto 57,48.61,47.92,100,0
    .goto 57,46.03,47.99,100,0
    .goto 57,45.488,50.760,25 >> Betretet den Tunnel im Baumhaus
    .subzoneskip 262
step
    #label sleepingd
    .goto 57,45.038,53.480
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Oben Zornklaue|r
    .target Oben Rageclaw
    .accept 2541 >>Akzeptiert die Quest Der schlafende Druide
step
    #label shamans
    #sticky
    >>Tötet |cRXP_ENEMY_Gnarlpine Shamans|r. Plündert sie für |cRXP_LOOT_Shaman Voodoo Bezauberung|r
    .complete 2541,1 --|1/1 Shaman Voodoo Charm
    .mob Gnarlpine Shaman
step
    #sticky
    #requires shamans
    #label furbolgs
    >>Tötet |cRXP_ENEMY_Furbolgs|r
    .complete 13945,1
    .mob Gnarlpine Shaman
	.mob Gnarlpine Defender
	.mob Gnarlpine Augur
--Gossip Ids:
--exit 37751
--raven claw 37753
--black feather quill 37754
--Sapphire of the sky 37755
--Rune of nesting 37756
--TODO: check on beta if gossip id match
step
    .goto 61,54.999,75.209
    >>|cRXP_WARN_Folgt dem Pfad tiefer in den Grabhügel von Ban'ethil. Lauft über die Brücke auf der oberen Etage|r
    >>Öffnet die |cRXP_PICK_Truhe des Nestens|r. Plündert die |cRXP_LOOT_Rune des Nestens|r.
    >>|cRXP_WARN_Ihr könnt auch mit der |cRXP_FRIENDLY_Jägerin der Schildwache|r Gefährtin sprechen und sie wird euch den Weg zeigen|r
    .complete 483,4 --|1/1 Rune of Nesting
    .target Sentinel Huntress
    .skipgossipid 37756
step
    .goto 61,51.956,86.565
    >>|cRXP_WARN_Geht nach unten zur untersten Ebene|r
    >>Öffnet die |cRXP_PICK_Truhe der Schwarzen Feder|r. Plündert die |cRXP_LOOT_Black Feather Quill|r.
    >>|cRXP_WARN_Ihr könnt auch mit der |cRXP_FRIENDLY_Jägerin der Schildwache|r Gefährtin sprechen und sie wird euch den Weg zeigen|r
    .complete 483,2 --|1/1 Black Feather Quill
step
    .goto 61,49.887,36.749
    >>|cRXP_WARN_Kopft zum großen zentralen Raum|r
    >>Öffnet die |cRXP_PICK_Truhe des Himmels|r. Plündert die |cRXP_LOOT_Sapphire of Himmel|r.
    >>|cRXP_WARN_Ihr könnt auch mit der |cRXP_FRIENDLY_Jägerin der Schildwache|r Gefährtin sprechen und sie wird euch den Weg zeigen|r
    .complete 483,3 --|1/1 Sapphire of Sky
step
    .goto 61,64.380,19.281
    >>|cRXP_WARN_Geht nach oben zur zentralen Plattform, lauft über die Brücke nach Osten|r
    >>Öffnet die |cRXP_PICK_Truhe der Rabenklaue|r. Plündert die |cRXP_LOOT_Raven Klaue Talisman|r.
    >>|cRXP_WARN_Ihr könnt auch mit der |cRXP_FRIENDLY_Jägerin der Schildwache|r Gefährtin sprechen und sie wird euch den Weg zeigen|r
    .complete 483,1 --|1/1 Raven Claw Talisman
step
    .goto 57,45.053,53.464
    >>Kopft zum Ausgang des Tunnels
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Oben Zornklaue|r
    .target Oben Rageclaw
    .turnin 2541 >>Gebt die Quest Der schlafende Druide ab
    .accept 2561 >>Akzeptiert die Quest Druide der Klaue
    .skipgossipid 37751
step
    .goto 57,45.581,52.704
    >>|cRXP_WARN_Lauft über die Brücke auf der anderen Seite und wartet bis sich die gesperrte Tür selbst öffnet|r
    >>Tötet |cRXP_ENEMY_Rageclaw|r
    .use 8149 >>|cRXP_WARN_Benutzt die|r |T132502:0|t[Voodoo Bezauberung] |cRXP_WARN_auf der Leiche von |cRXP_ENEMY_Zornklaue|r|r
    .complete 2561,1 --|
    .mob Rageclaw
step
    .goto 57,45.053,53.464
    >>Kopft zum Ausgang des Tunnels
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Oben Zornklaue|r
    .target Oben Rageclaw
    .turnin 2561 >>Gebt die Quest Druide der Klaue ab
step
    .isQuestComplete 483
    #completewith next
    .hs >> Benutzt euren Ruhestein nach Dolanaar
    .cooldown item,6948,>2,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Athridas Bearmantle|r und |cRXP_FRIENDLY_Sentinel Kyra Starsong|r
    .turnin 483 >>Gebt die Quest Die Relikte des Erwachens ab
    .accept 486 >>Akzeptiert die Quest Ursal der Raufer
    .target +Athridas Bearmantle
    .goto 57,55.70,51.99
    .turnin 13945 >>Gebt die Quest Gefahr vor Ort ab
    .target +Sentinel Kyra Starsong
    .goto 57,55.656,51.991
step << Warrior cata
    .goto 57,55.887,51.720
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kyra Windblade|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Kyra Windblade
step << Mage cata
    .goto 57,55.816,51.389
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Irriende|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Irriende
step << Priest cata
    .goto 57,55.319,49.594
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Laurna Morninglight|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Laurna Morninglight
step << Rogue cata
    .goto 57,56.027,52.534
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jannok Breezesong|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Jannok Breezesong
step << Hunter cata
    .goto 57,56.284,51.973
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jannok Breezesong|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Jannok Breezesong
step << Druid cata
    .goto 57,55.650,53.771
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kal|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Kal
step
    .goto 57,49.351,44.672
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mondpriesterin Amara|r
    .target Moon Priestess Amara
    .accept 487 >>Akzeptiert die Quest Die Straße nach Darnassus
step
    #sticky
    #label ambushers
    .goto 57,50.578,36.548,0,0
    >>Tötet |cRXP_ENEMY_Gnarlpine Ambushers|r auf eurem Weg durch den Bergpfad
    .complete 487,1 --|8/8 Gnarlpine Ambusher slain
    .mob Gnarlpine Ambusher
step
    .goto 57,51.693,39.805
    >>|cRXP_WARN_Folgt dem Pfad den Hang hinauf zur Höhle oben auf dem Berg|r
    >>Tötet |cRXP_ENEMY_Ursal der Raufer|r
    .complete 486,1 --|1/1 Ursal the Mauler slain
    .mob Ursal the Mauler
step
    .goto 57,49.359,44.663
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mondpriesterin Amara|r
    .target Moon Priestess Amara
    .turnin 487 >>Gebt die Quest Die Straße nach Darnassus ab
step
    #completewith next
    #requires ambushers
    .deathskip >> Sterbt und respawnt in Dolanaar
step
    #requires ambushers
    .goto 57,55.715,51.981
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Athridas Bearmantle|r
    .target Athridas Bearmantle
    .turnin 486 >>Gebt die Quest Ursal der Raufer ab
step
    #optional
    .maxlevel 10,Teldskip
step
    .goto 57,55.759,50.467
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Syral Bladeleaf|r
    .target Syral Bladeleaf
    .accept 997 >>Akzeptiert die Quest Denalans Erde
step
    .goto 57,59.929,59.738
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Denalan|r
    .target Denalan
    .turnin 997 >>Gebt die Quest Denalans Erde ab
    .accept 918 >>Akzeptiert die Quest Bäumlingssamenkörner
    .accept 919 >>Akzeptiert die Quest Bäumlingssprossen
step
    #sticky
    #label fruit1
    .goto 57,57.689,63.063
	>>Hebt die |cRXP_PICK_Sonderbare fruchtbeladene Pflanze|r auf
    .accept 930 >>Akzeptiert die Quest Die leuchtende Frucht
step
    #loop
    .goto 57,57.689,63.063,55,0
    .goto 57,57.249,56.903,55,0
    .goto 57,60.263,58.219,55,0
    .goto 57,57.249,56.903,0
    .goto 57,60.263,58.219,0
    .goto 57,57.689,63.063,0
    >>Tötet |cRXP_ENEMY_Bäumlinge|r. Plündert sie für |cRXP_LOOT_Samenkörner|r
    >>Plündert |cRXP_LOOT_Bäumlingssprossen|r vom Boden
    .complete 918,1 --Collect Timberling Seed (x8)
    .complete 919,1 --Collect Timberling Sprout (x12)
    .mob Timberling
step
    #requires fruit1
    .goto 57,59.929,59.738
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Denalan|r
    .target Denalan
    .turnin 918 >>Gebt die Quest Bäumlingssamenkörner ab
    .turnin 919 >>Gebt die Quest Bäumlingssprossen ab
    .accept 922 >>Akzeptiert die Quest Rellian Greenspyre
step
    .goto 57,59.929,59.738
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Denalan|r
    .target Denalan
    .turnin 930 >>Gebt die Quest Die leuchtende Frucht ab
step
    .goto 57,56.74,53.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nyoma|r
    .accept 6344 >>Akzeptiert Erinnerungen an die Heimat
	.target Nyoma
step
    #optional
    .maxlevel 10,Teldskip
step
    .goto 57,55.871,53.901
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corithras Moonrage|r
    .target Corithras Moonrage
    .accept 7383 >>Akzeptiert die Quest Teldrassil: Die Bürde der Kaldorei
step
    .goto 57,55.47,50.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Fidelio.|r
    .turnin 6344 >>Gebt die Quest Erinnerungen an die Heimat ab
    .accept 6341 >>Akzeptiert die Quest Auf nach Darnassus
	.target Fidelio
--TODO: should be level 10 here, skip the rest of teldrassil?
step
    .goto 57,43.956,44.178
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rellian Greenspyre|r
    .target Rellian Greenspyre
    .turnin 922 >>Gebt die Quest Rellian Greenspyre ab
    .accept 923 >>Akzeptiert die Quest Moosartige Tumore
step << skip
    .goto 57,39.482,29.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Arynia Cloudsbreak|r
    .target Sentinel Arynia Cloudsbreak
    .accept 937 >>Akzeptiert die Quest Die verzauberte Lichtung
step
    .goto 57,39.199,29.871,5,0
    .goto 57,39.174,29.898
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Priesterin A'moora|r
    .target Priestess A'moora
    .accept 2518 >>Akzeptiert die Quest Tränen des Mondes
step
    #loop
    .goto 57,45.297,23.695,40,0
    .goto 57,44.446,30.394,40,0
    .goto 57,45.297,23.695,0
    .goto 57,44.446,30.394,0
    >>Tötet |cRXP_ENEMY_Bäumlingtrampler|r, |cRXP_ENEMY_Morastbäumling|r und |cRXP_ENEMY_Alter Bäumling|r. Plündert sie für ihre|cRXP_LOOT_Tumore|r
    .complete 923,1 --|5/5 Mossy Tumor
    .mob Timberling Mire Beast
    .mob Timberling Bark Ripper
    .mob Timberling Trampler
step
    >>Tötet |cRXP_ENEMY_Lady Sathrah|r. Plündert sie für |cRXP_LOOT_Silvery Spinnerets|r
    .goto 57,40.754,22.233
    .complete 2518,1 --|1/1 Silvery Spinnerets
    .mob Lady Sathrah
step
    #label frond2
    #sticky
    .goto 57,37.131,25.434
    >>Klickt die |cRXP_PICK_Sonderbare wedelbestückte Pflanze|r an
    .accept 931 >>Akzeptiert die Quest Der schimmernde Wedel
step
    #loop
    >>Tötet |cRXP_ENEMY_Harpyie der Blutfedern|r. Plündert sie für ihre |cRXP_LOOT_Gürtel|r
    .goto 57,36.775,24.398,30,0
    .goto 57,35.843,26.095,30,0
    .goto 57,35.063,28.517,30,0
    .goto 57,35.793,26.151,30,0
    .goto 57,35.793,26.151,0
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step
#requires frond2
    .goto 57,34.487,27.811
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mist|r
    >>Dies startet eine Escort Quest
    .target Mist
    .accept 938 >>Akzeptiert die Quest Nebel
step
    .goto 57,39.199,29.871,5,0
    .goto 57,39.174,29.898
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Priesterin A'moora|r
    .target Priestess A'moora
    .turnin 2518 >>Gebt die Quest Tränen des Mondes ab
step
    .goto 57,39.448,29.823
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Arynia Cloudsbreak|r
    .target Sentinel Arynia Cloudsbreak
    .turnin 937 >>Gebt die Quest Die verzauberte Lichtung ab << skip
    .turnin -938 >>Gebt die Quest Nebel ab
step
    .goto 57,40.471,29.942
    .use 18152 >>|cRXP_WARN_Benutzt die|r |T134798:0|t[Amethystphiole] |cRXP_WARN_am Mondbrunnen der Lichtung des Orakels|r
    .complete 7383,1 --|1/1 Filled Amethyst Phial
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rellian Greenspyre|r und |cRXP_FRIENDLY_Denalan|r
    .turnin 923 >>Gebt die Quest Moosartige Tumore ab
    .target +Rellian Greenspyre
    .goto 57,43.960,44.161
    .turnin 931 >>Gebt die Quest Der schimmernde Wedel ab
    .accept 2499 >>Akzeptiert die Quest Grimmeiche
    .target +Denalan
    .goto 57,43.936,44.196
step
    .goto 57,47.403,35.829,40,0
    .goto 57,47.39,34.47
    >>Tötet |cRXP_ENEMY_Oakenscowl|r. Plündert sie für |cRXP_LOOT_Gargantuan Tumor|r
    >>|cRXP_ENEMY_Grimmeiche|r |cRXP_WARN_patrouilliert etwas|r
    .complete 2499,1 --|1/1 Gargantuan Tumor
    .mob Oakenscowl
step
    .goto 57,43.936,44.196
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Denalan|r
    .target Denalan
    .turnin 2499 >>Gebt die Quest Grimmeiche ab
step
    .goto 57,40.999,45.531
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corithras Moonrage|r
    .target Corithras Moonrage
    .turnin 7383 >>Gebt die Quest Teldrassil: Die Bürde der Kaldorei ab
    .accept 933 >>Akzeptiert die Quest Teldrassil: Der Anbruch des Tages << skip

--skipping following chain. very long rp / bad xphr
step << skip
    .goto 57,43.939,58.534
    .use 5621 >>|cRXP_WARN_Benutzt die|r |T134765:0|t[Turmalinphiole] |cRXP_WARN_am Mondbrunnen bei den Teichen von Arlithrien|r
	.complete 933,1
step << skip
    .goto 57,42.525,58.213
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarindrella|r
    .target Tarindrella
    .turnin 933 >>Gebt die Quest Teldrassil: Der Anbruch des Tages ab
    .accept 14005 >>Akzeptiert die Quest Elunes Rache
step << skip
--TODO: Big RP quest, might be a huge waste of time, test on beta
    .goto 57,40.909,69.647
    .complete 14005,1 --|1/1 Bough of Corruption slain
step << skip
    .goto 57,42.507,58.184
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarindrella|r
    .target Tarindrella
    .turnin 14005 >>Gebt die Quest Elunes Rache ab
    .accept 935 >>Akzeptiert die Quest Die Wasser von Teldrassil
step << skip
    .goto 57,41.007,45.528
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corithras Moonrage|r
    .target Corithras Moonrage
    .turnin 935 >>Gebt die Quest Die Wasser von Teldrassil ab
    .accept 14039 >>Akzeptiert die Quest Die Heimat der Kaldorei
step
    .goto 89,35.993,50.342
    .zone 89 >> Reist nach Darnassus
    .isOnQuest 6341
step
    #optional
    #label Teldskip
step
    .goto 57,56.74,53.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nyoma|r
    .accept 6344 >>Akzeptiert Erinnerungen an die Heimat
	.target Nyoma
step
    .goto 57,55.47,50.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Fidelio|r
    .turnin 6344 >>Gebt die Quest Erinnerungen an die Heimat ab
    .accept 6341 >>Akzeptiert die Quest Auf nach Darnassus
	.target Fidelio
step
    #completewith end
    .goto 57,55.47,50.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Fidelio|r
    .fly Darnassus >> Fliege nach Darnassus
	.target Fidelio
    .zoneskip 89
step << Warrior
    .goto 89,56.327,52.547
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariyell Himmelsschatten|r
    >>|cRXP_BUY_Kauft|r |T135350:0|t[Claymore] |cRXP_BUY_bei ihr|r
    >>|cRXP_WARN_Alternativ könnt ihr bald das Auktionshaus nach etwas Besserem oder Billigerem durchsuchen|r
    .collect 1198,1 -- Claymore (1)
    .money <0.2142
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Ariyell Skyshadow
step << Rogue
    .goto 89,56.327,52.547
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariyell Himmelsschatten|r
    >>|cRXP_BUY_Kauft|r |T135346:0|t[Entersäbel] |cRXP_BUY_bei ihr|r
    >>|cRXP_WARN_Alternativ könnt ihr bald das Auktionshaus nach etwas Besserem oder Billigerem durchsuchen|r
    .collect 851,1 -- Cutlass (1)
    .money <0.1618
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
    .target Ariyell Skyshadow
    .xp >11,1
    .xp <10,1
step << Rogue
    .goto 89,56.327,52.547
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariyell Himmelsschatten|r
    >>|cRXP_BUY_Kauft|r |T132402:0|t[Kriegsbeil] |cRXP_BUY_bei ihr|r
    >>|cRXP_WARN_Alternativ könnt ihr bald das Auktionshaus nach etwas Besserem oder Billigerem durchsuchen|r
    .collect 853,1 -- Hatchet (1)
    .money <0.1927
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .target Ariyell Skyshadow
    .xp >12,1
    .xp <11,1
step << Hunter
    .goto 89,56.327,52.547
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariyell Himmelsschatten|r
    >>|cRXP_BUY_Kauft|r |T135499:0|t[Laminierter Doppelbogen] |cRXP_BUY_bei ihr|r
    >>|cRXP_WARN_Alternativ könnt ihr bald das Auktionshaus nach etwas Besserem oder Billigerem durchsuchen|r
    .collect 2507,1 --Collect Laminated Recurve Bow (1)
    .money <0.1402
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .target Ariyell Skyshadow
step << Warrior
    #optional
    #completewith end
    +|cRXP_WARN_Rüstet das|r |T135350:0|t[Claymore] aus
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Rogue
    #optional
    #completewith end
    +|cRXP_WARN_Rüstet den|r |T135346:0|t[Entersäbel] |cRXP_WARN_in der Haupthand aus|r
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Rogue
    #optional
    #completewith end
    +|cRXP_WARN_Legt an|r |T132402:0|t[Kriegsbeil] |cRXP_WARN_in der Haupthand|r
    .use 853
    .itemcount 853,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
step << Hunter
    #optional
    #completewith end
    +|cRXP_WARN_Legt |r |T135499:0|t[Laminierter Doppelbogen] an
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step
    .goto 89,43.913,76.149
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sentinel Cordressa Briarbow|r up stairs
    .target Sentinel Cordressa Briarbow
    .accept 26383 >>Akzeptiert die Quest Unaufhaltsame Veränderungen
step
    .isQuestComplete 14039
    .goto 89,43.062,77.971
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tyrande Whisperwind|r
    .target Tyrande Whisperwind
    .turnin 14039 >>Gebt die Quest Die Heimat der Kaldorei ab
    .isQuestComplete 14039
step
    .isOnQuest 6341
    .goto 89,36.090,53.496
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sister Aquinne|r
    .target Sister Aquinne
    .turnin 6341 >>Gebt die Quest Auf nach Darnassus ab
    .accept 6342 >>Akzeptiert die Quest Ein unerwartetes Geschenk
step
    .isQuestTurnedIn 6341
    .goto 89,36.090,53.496
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sister Aquinne|r
    .target Sister Aquinne
    .accept 6342 >>Akzeptiert die Quest Ein unerwartetes Geschenk
step
    .isOnQuest 6342
    .goto 89,36.641,48.036
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Leora|r
    .target Leora
    .turnin 6342 >>Gebt die Quest Ein unerwartetes Geschenk ab
step
    .goto 89,35.993,50.342
    .subzone 702 >>Begebt euch in das lila Portal neben dem Meister
    .zoneskip Darkshore
step
    #label end
    .goto 57,55.406,88.415
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vesprystus|r
    .fly Lor'danel >>Fliegt nach Lor'danel
    .zoneskip Darkshore
    .target Vesprystus
]])
