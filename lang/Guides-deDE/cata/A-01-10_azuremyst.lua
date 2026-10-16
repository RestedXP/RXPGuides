if GetLocale() ~= "deDE" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end
--TODO: skip the furbolg quests if xp rate is greater than 1x
RXPGuides.RegisterGuide([[
<< Alliance
#name 1-10 Azurmythosinsel
#version 1
#group RXP Kataklysmus 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#defaultfor Draenei
#next 10-18 Dunkelküste
step
    .goto Azuremyst Isle,84.19,43.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Megelon|r
    .accept 9279 >> Akzeptiert die Quest Ihr habt überlebt!
    .target Megelon
step
    .goto Azuremyst Isle,80.419,45.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Proenitus|r
    .turnin 9279 >> Gebt die Quest Ihr habt überlebt! ab
    .accept 9280 >> Akzeptiert die Quest Wiederaufladen der Heilkristalle
    .target Proenitus
step
    #loop
    .goto Azuremyst Isle,80.14,41.70,50,0
    .goto Azuremyst Isle,75.27,43.70,50,0
    >>Tötet |cRXP_ENEMY_Vale Moths|r. Plündert sie für |cRXP_LOOT_Blood|r
    .complete 9280,1 --Collect Vial of Moth Blood (x8)
    .mob Vale Moth
step
    .goto Azuremyst Isle,80.419,45.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Proenitus|r
    .turnin 9280 >> Gebt die Quest Wiederaufladen der Heilkristalle ab
    .accept 9409 >> Akzeptiert die Quest Eilige Lieferung!
    .target Proenitus
step
    .goto Azuremyst Isle,79.139,46.536
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Botanist Taerix|r
    .accept 10302 >> Akzeptiert die Quest Unberechenbare Mutanten
    .target Botanist Taerix
step
    #loop
    .goto Azuremyst Isle,80.14,41.70,50,0
    .goto Azuremyst Isle,75.27,43.70,50,0
    .goto Azuremyst Isle,73.4,51.4,50,0
    >>Tötet |cRXP_ENEMY_Volatile Mutations|r
    .complete 10302,1 --Kill Volatile Mutation (x8)
    .mob Volatile Mutation
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Botanist Taerix|r und |cRXP_FRIENDLY_Apprentice Vishael|r
    .turnin 10302 >> Gebt die Quest Unberechenbare Mutanten ab
    .accept 9293 >> Akzeptiert die Quest Was getan werden muss...
    .target +Botanist Taerix
    .goto Azuremyst Isle,79.139,46.536
    .accept 9799 >> Akzeptiert die Quest Botanische Hilfsarbeit
    .target +Apprentice Vishael
    .goto Azuremyst Isle,79.071,46.624
step
    #loop
    .goto Azuremyst Isle,74.5,48.5,50,0
    .goto Azuremyst Isle,72.94,52.21,50,0
    .goto Azuremyst Isle,72.26,49.29,50,0
    >>Tötet |cRXP_ENEMY_Mutated Festwurzeln Lashers|r. Plündert sie für |cRXP_LOOT_Lasher Samples|r
    >>Plündert die |cRXP_LOOT_Corrupted Blumen|r auf dem Boden
    .complete 9293,1 --Collect Lasher Sample (x10)
    .complete 9799,1 --Collect Corrupted Flower (x3)
    .mob Mutated Root Lasher
step << cata Priest/Shaman
    .goto Azuremyst Isle,79.1,46.5
	.xp 4-470 >>Farmt bis noch 470 XP zum Level 4 (930/1400)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Botanist Taerix|r und |cRXP_FRIENDLY_Apprentice Vishael|r
    .turnin 9293 >> Gebt die Quest Was getan werden muss... ab
    .accept 9294 >> Akzeptiert die Quest Die Heilung des Sees
    .target +Botanist Taerix
    .goto Azuremyst Isle,79.139,46.536
    .turnin 9799 >> Gebt die Quest Botanische Hilfsarbeit ab
    .target +Apprentice Vishael
    .goto Azuremyst Isle,79.071,46.624
step
	#completewith next
	.goto Azuremyst Isle,79.987,47.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aurok|r
	.vendor >> Verkauft Müll
    .target Aurok
step
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrouilliert leicht|r
    .turnin 9409 >> Gebt die Quest Eilige Lieferung! ab
    .accept 9283 >> Akzeptiert die Quest Rettet die Überlebenden!
    .accept 26970 >> Akzeptiert die Quest Hilfe für Verletzte << cata Priest
    .accept 26970 >> Akzeptiert die Quest Das Wort lernen << !cata Priest
    .train 2061 >> Erlernen |T135907:0|t[Blitzheilung] << cata Priest
    .train 589 >> Erlernt |T136207:0|t[Schattenwort: Schmerz] << cata Priest
    .target Zalduun
step << Priest cata
    .goto Azuremyst Isle,80.32,48.30,10,0
    .goto Azuremyst Isle,80.12,49.23
    >>|cRXP_WARN_Wirkt|r |T135907:0|t[Blitzheilung] |cRXP_WARN_5-mal auf einen |cRXP_FRIENDLY_Verletzter Draenei|r neben euch|r
    .complete 26970,1 -- Heal Injured Draenei
    .target Injured Draenei
step << Priest cata
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrouilliert leicht|r
    .turnin 26970 >> Gebt die Quest Hilfe für Verletzte ab
    .target Zalduun
step << Mage
	.goto Azuremyst Isle,79.582,48.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Valaatu|r
    .accept 26968 >> Akzeptiert die Quest Arkane Geschosse << cata
    .accept 26968 >> Akzeptiert die Quest Frostnova << !cata
	.train 5143 >> Erlernen |T136096:0|t[Arkane Geschosse] << cata
    .target Valaatu
step << Paladin
    #loop
    .goto Azuremyst Isle,79.695,48.236,7,0
    .goto Azuremyst Isle,80.12,49.13,7,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aurelon|r
    >>|cRXP_FRIENDLY_Aurelon|r |cRXP_WARN_kann leicht patrouillieren|r
    .accept 26966 >> Akzeptiert die Quest Die Macht des Lichts
    .train 20154 >> Erlernen |T135960:0|t[Siegel der Rechtschaffenheit] << cata
	.train 20271 >> Erlernt |T135959:0|t[Richturteil] << cata
    .target Aurelon
step << Warrior
    .goto Azuremyst Isle,79.587,49.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kore|r
    .accept 26958 >> Akzeptiert die Quest Die erste Lektion
	.train 100 >> Erlernt |T132337:0|t[Sturmangriff] << cata
    .target Kore
step << Shaman
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Firmanvaar|r
    .accept 26969 >> Akzeptiert die Quest Urtümlicher Schlag
    .train 8075 >> Erlernen |T136023:0|t[Totem der Erdstärke] << cata
    .train 73899 >> Erlernen |T460956:0|t[Urtümlicher Schlag] << cata
    .target Firmanvaar
step << Hunter
	.goto Azuremyst Isle,79.886,49.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Keilnei|r
	.accept 26963 >> Akzeptiert die Quest Verfeinerung Eurer Schüsse
    .train 56641 >> Erlernen |T132213:0|t[Zuverlässiger Schuss] << cata
    .target Keilnei
step
    .goto Azuremyst Isle,79.419,51.235
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Technician Zhanaa|r
    .accept 9305 >> Akzeptiert die Quest Ersatzteile
    .target Technician Zhanaa
step
    .goto Azuremyst Isle,79.486,51.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vindicator Aldar|r
    .accept 9303 >> Akzeptiert die Quest Immunisierung
    .target Vindicator Aldar
step
    #completewith Owlkininoculated
    >>|cRXP_WARN_Wirkt|r |T135923:0|t[Gabe der Naaru] |cRXP_WARN_auf einen|r |cRXP_FRIENDLY_Draenei Überlebender|r |cRXP_WARN_. Sie sind überall in der Startzone verstreut|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
    .subzoneskip 3559 -- Nestlewood Hills
step
    .goto Azuremyst Isle,77.390,58.779
	>>Klickt auf den |cRXP_PICK_Irradiated Macht Kristall|r im See
    .complete 9294,1 --Collect Disperse the Neutralizing Agent (x1)
step
    #completewith next
	.use 22962 >>|cRXP_WARN_Kanalisiert den|r |T132775:0|t[Immunisierungskristall] |cRXP_WARN_auf |cRXP_ENEMY_Nestlewood Owlkins|r für 4 Sek.|r
    .complete 9303,1 --Nestlewood Owlkin inoculated (x6)
    .mob Nestlewood Owlkin
step
    .goto Azuremyst Isle,80.92,58.89,20,0
    .goto Azuremyst Isle,82.27,59.43,30,0
    .goto Azuremyst Isle,82.93,61.46,30,0
    .goto Azuremyst Isle,85.49,68.25,50,0
    .goto Azuremyst Isle,88.33,62.21
	>>Plündert die |cRXP_LOOT_Emitter Ersatzteile|r auf dem Boden
    .complete 9305,1 --Collect Emitter Spare Part (x4)
step
    #label Owlkininoculated
    .goto Azuremyst Isle,80.92,58.89,20,0
    .goto Azuremyst Isle,82.27,59.43,30,0
    .goto Azuremyst Isle,82.93,61.46,30,0
    .goto Azuremyst Isle,85.49,68.25,50,0
    .goto Azuremyst Isle,88.33,62.21
	.use 22962 >>|cRXP_WARN_Kanalisiert den|r |T132775:0|t[Immunisierungskristall] |cRXP_WARN_auf |cRXP_ENEMY_Nestlewood Owlkins|r für 4 Sek.|r
    .complete 9303,1 --Nestlewood Owlkin inoculated (x6)
    .mob Nestlewood Owlkin
step
	#completewith next
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step
    .goto Azuremyst Isle,79.139,46.536
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Botanist Taerix|r
    .turnin 9294 >> Gebt die Quest Die Heilung des Sees ab
    .target Botanist Taerix
step << Mage
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_Wirkt|r |T135812:0|t[Feuerball] |cRXP_WARN_auf die |cRXP_ENEMY_Trainingsattrappe|r, bis ihr einen|r |T135731:0|t[Arkan Missles!] |cRXP_WARN_Proc erhaltet, dann wirkt|r |T136096:0|t[Arkane Geschosse]|cRXP_WARN_. Wiederholt das zweimal|r
    >>|cRXP_WARN_Wirkt|r |T135848:0|t[Brunnenbehüter Solanian] |cRXP_WARN_auf die |cRXP_ENEMY_Training Attrappe|r. Wiederholt dies zweimal|r
    .complete 26968,1 << cata -- Practice Arcane Missles (1)
    .complete 26968,2 << !cata -- Practice Frost Nova (1)
    .mob Training Dummy
step << Shaman
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_Wirkt|r |T460956:0|t[Urtümlicher Schlag] |cRXP_WARN_auf die |cRXP_ENEMY_Übung Attrappe|r 3-mal|r
    .complete 26969,1 << cata -- Practice Primal Strike (1)
    .complete 26969,2 << !cata -- Practice Primal Strike (1)
    .mob Training Dummy
step << Hunter
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_Wirkt|r |T132213:0|t[Brunnenbehüter Solanian] |cRXP_WARN_auf die |cRXP_ENEMY_Trainingsattrappe|r 5 Mal|r
    .complete 26963,1 << cata -- Practice Steady Shot (1)
    .complete 26963,2 << !cata -- Practice Steady Shot (1)
    .mob Training Dummy
step << Warrior
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_Wirkt|r |T132337:0|t[Ansturm] |cRXP_WARN_auf den|r |cRXP_ENEMY_Übung Attrappe|r
    .complete 26958,1 << cata -- Practice Charge (1)
    .complete 26958,2 << !cata -- Practice Charge (1)
    .mob Training Dummy
step << Paladin
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_Wirkt|r |T135960:0|t[Siegel der Rechtschaffenheit] |cRXP_WARN_gefolgt von|r |T135959:0|t[Richturteil] |cRXP_WARN_auf die|r |cRXP_ENEMY_Übung Attrappe|r
    .complete 26966,1 << cata -- Practice Charge (1)
    .complete 26966,2 << !cata -- Practice Charge (1)
    .mob Training Dummy
step << Priest !cata
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_Cast|r |T136207:0|t[Schattenwort: Schmerz] |cRXP_WARN_on a |cRXP_ENEMY_Training Attrappe|r 5 times|r
    .complete 26970,2 -- Shadow Word: Pain (5)
    .mob Training Dummy
step
	#completewith SpareParts
	.goto Azuremyst Isle,79.987,47.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aurok|r
	.vendor >> Verkauft Müll
    .target Aurok
step
    .isQuestComplete 9283
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrouilliert leicht|r
    .turnin 9283 >> Gebt die Quest Rettet die Überlebenden! ab
    .target Zalduun
step << !cata Priest
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrouilliert leicht|r
    .turnin 26970 >> Gebt die Quest Das Wort lernen ab
    .target Zalduun
step << Mage
	.goto Azuremyst Isle,79.582,48.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Valaatu|r
    .turnin 26968 >> Gebt die Quest Arkane Geschosse ab << cata
    .turnin 26968 >> Gebt die Quest Frostnova ab << !cata
    .target Valaatu
step << Shaman
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Firmanvaar|r
    .turnin 26969 >> Gebt die Quest Urtümlicher Schlag ab
    .target Firmanvaar
step << Hunter
	.goto Azuremyst Isle,79.886,49.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Keilnei|r
	.turnin 26963 >> Gebt die Quest Verfeinerung Eurer Schüsse ab
    .target Keilnei
step << Warrior
    .goto Azuremyst Isle,79.587,49.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kore|r
    .turnin 26958 >> Gebt die Quest Die erste Lektion ab
    .target Kore
step << Paladin
    #loop
    .goto Azuremyst Isle,79.695,48.236,7,0
    .goto Azuremyst Isle,80.12,49.13,7,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aurelon|r
    >>|cRXP_FRIENDLY_Aurelon|r |cRXP_WARN_kann leicht patrouillieren|r
    .turnin 26966 >> Gebt die Quest Die Macht des Lichts ab
    .target Aurelon
step
    #label SpareParts
    .goto Azuremyst Isle,79.419,51.235
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Technician Zhanaa|r
    .turnin 9305 >> Gebt die Quest Ersatzteile ab
    .target Technician Zhanaa
step
    .goto Azuremyst Isle,79.486,51.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vindicator Aldar|r
    .turnin 9303 >> Gebt die Quest Immunisierung ab
    .accept 9309 >> Akzeptiert die Quest Der vermisste Späher
    .target Vindicator Aldar
step
    #completewith SurveyorCandress
    >>|cRXP_WARN_Wirkt|r |T135923:0|t[Gabe der Naaru] |cRXP_WARN_auf einen|r |cRXP_FRIENDLY_Draenei Überlebender|r |cRXP_WARN_. Sie sind überall in der Startzone verstreut|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
step
    .goto Azuremyst Isle,71.998,60.856
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tolaan|r
    .turnin 9309 >> Gebt die Quest Der vermisste Späher ab
    .accept 10303 >> Akzeptiert die Quest Die Blutelfen
    .target Tolaan
step
    .goto Azuremyst Isle,69.420,64.608
    >>Tötet |cRXP_ENEMY_Blood Elf Späher|r
    .complete 10303,1 --Kill Blood Elf Scout (x10)
    .mob Blood Elf Scout
step
    .goto Azuremyst Isle,71.998,60.856
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tolaan|r
    .turnin 10303 >> Gebt die Quest Die Blutelfen ab
    .accept 9311 >> Akzeptiert die Quest Blutelfenspionage
    .target Tolaan
step
    #label SurveyorCandress
    .goto Azuremyst Isle,69.271,65.772
    >>Tötet |cRXP_ENEMY_Surveyor Candress|r. Plündert sie für |T132319:0|t[|cRXP_LOOT_Blood Elf Plans|r]
    .use 24414 >>|cRXP_WARN_Benutzt|r |T132319:0|t[|cRXP_LOOT_Blood Elf Plans|r] |cRXP_WARN_um die Quest zu starten|r
    .complete 9311,1 --Kill Surveyor Candress (x1)
    .collect 24414,1,9798,1 -- Blood Elf Plans
    .accept 9798 >> Akzeptiert die Quest Blutelfenpläne
    .mob Surveyor Candress
step
    #loop
    .goto Azuremyst Isle,71.8,55.8,80,0
    .goto Azuremyst Isle,77.6,56.0,80,0
    .goto Azuremyst Isle,74.8,43.4,80,0
    .goto Azuremyst Isle,80.2,42.6,80,0
    >>|cRXP_WARN_Wirkt|r |T135923:0|t[Gabe der Naaru] |cRXP_WARN_auf einen|r |cRXP_FRIENDLY_Draenei Überlebender|r |cRXP_WARN_. Sie sind überall in der Startzone verstreut|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
step
	#completewith BloodElfSpy
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrouilliert leicht|r
    .turnin 9283 >> Gebt die Quest Rettet die Überlebenden! ab
    .target Zalduun
step
    #label BloodElfSpy
    .goto Azuremyst Isle,79.488,51.622
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vindicator Aldar|r
    .turnin 9311 >> Gebt die Quest Blutelfenspionage ab
    .turnin 9798 >> Gebt die Quest Blutelfenpläne ab
    .accept 9312 >> Akzeptiert die Quest Der Emitter
    .target Vindicator Aldar
step
    .goto Azuremyst Isle,79.422,51.234
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Technician Zhanaa|r
    .turnin 9312 >> Gebt die Quest Der Emitter ab
    .accept 9313 >> Akzeptiert die Quest Reise zur Azurwacht
    .target Technician Zhanaa
step << Mage cata
	.goto Azuremyst Isle,79.582,48.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Valaatu|r
	.train 2136 >> Erlernt |T135807:0|t[Feuerschlag]
    .target Valaatu
step << Priest cata
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrouilliert leicht|r
    .train 17 >> Erlernt |T135940:0|t[Machtwort: Schild]
    .target Zalduun
step << Paladin cata
    #loop
    .goto Azuremyst Isle,79.695,48.236,7,0
    .goto Azuremyst Isle,80.12,49.13,7,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aurelon|r
    >>|cRXP_FRIENDLY_Aurelon|r |cRXP_WARN_kann leicht patrouillieren|r
	.train 465 >> Erlernen |T135893:0|t[Aura der Hingabe]
    .target Aurelon
step << Warrior cata
    .goto Azuremyst Isle,79.587,49.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kore|r
	.train 34428 >> Erlernen |T132342:0|t[Siegesrausch]
    .target Kore
step << Shaman cata
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Firmanvaar|r
	.train 8042 >> |T136026:0|t[Erdschock]
    .target Firmanvaar
step
    .goto Azuremyst Isle,64.497,54.037
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aeun|r
    .accept 9314 >> Akzeptiert die Quest Nachricht von der Azurwacht
    .target Aeun
step
    .goto Azuremyst Isle,61.052,54.248
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Diktynna|r
    .accept 9452 >> Akzeptiert die Quest Schnapper - sehr, sehr lecker!
    .target Diktynna
step
    .isOnQuest 9452
    .goto Azuremyst Isle,62.38,51.93,40,0
    .goto Azuremyst Isle,61.87,41.62,60 >> |cRXP_WARN_Schwimmt nach Norden den Fluss hinauf|r
    .use 23654 >>|cRXP_WARN_Benutzt|r |T134325:0|t[Draenei Angeln Netz] |cRXP_WARN_auf|r |cRXP_PICK_Schools of Schnapper|r |cRXP_WARN_die ihr unterwegs seht. Überspringt diesen Schritt, sobald ihr oben am Fluss ankommt; ihr werdet ihn später abschließen|r
	.collect 23614,10 -- Red Snapper (10)
    .disablecheckbox
step
	#completewith next
    >>|cRXP_WARN_Achtet auf a|r |cRXP_FRIENDLY_Draenei Youngling|r
    >>|cRXP_WARN_Während sie im Kampf sind, wirkt|r |T135923:0|t[Gabe der Naaru] |cRXP_WARN_auf sie, dann akzeptiert die Quest|r
	.accept 9612 >> Akzeptiert die Quest Herzlichen Dank!
	.unitscan Draenei Youngling
step
    .goto Azuremyst Isle,53.9,34.4
    >>Tötet |cRXP_ENEMY_Infected Nachtpirscher Schlaffi|r. Plündert sie für |T134072:0|t[|cRXP_LOOT_Faintly Glowing Kristall|r]
    .use 23678 >>|cRXP_WARN_Benutzt|r |T134072:0|t[|cRXP_LOOT_Schwach leuchtender Kristall|r] |cRXP_WARN_um die Quest zu starten|r
	.collect 23678,1,9455,1 -- Faintly Glowing Crystal (1)
    .accept 9455 >> Akzeptiert die Quest Seltsame Funde
    .mob Infected Nightstalker Runt
step
	#completewith NightstalkerCleanUp
    .goto Azuremyst Isle,56.1,39.3
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    >>|cRXP_WARN_Sterbt in der Nähe des Teichs an der Bergseite|r
step
    #completewith NightstalkerCleanUp
    .subzone 3576 >> Reise zur Azurwacht
--not sure what the deal with weapons are
step << Shaman
    .goto Azuremyst Isle,49.577,53.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nabek|r
    >>|cRXP_BUY_Buy und equip a|r |T135145:0|t[Wanderstecken]
    .collect 2495,1 --Walking Stick (1)
    .target Nabek
    .money <0.0480
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Shaman
    +Legt den |T135145:0|t[Wanderstecken] an
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step
    .goto Azuremyst Isle,48.960,51.063
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dulvi|r
    .train 2575 >>Erlerne |T134708:0|t[Bergbau]
    .target Dulvi
step
    .goto Azuremyst Isle,48.391,51.771
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Anchorite Fateema|r
    .accept 9463 >> Akzeptiert die Quest Medizinische Notwendigkeit
    .target Anchorite Fateema
step
	.isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Exarch Menelaous|r
	.turnin 9612 >> Gebt die Quest Herzlichen Dank! ab
    .turnin 9455 >> Gebt die Quest Seltsame Funde ab
    .accept 9456 >> Akzeptiert die Quest Nachtpirscherjagd
    .target Exarch Menelaous
step
    #label NightstalkerCleanUp
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9455 >> Gebt die Quest Seltsame Funde ab
    .accept 9456 >> Akzeptiert die Quest Nachtpirscherjagd
    .target Exarch Menelaous
step << Shaman cata
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tuluun|r
    .train 331 >> Erlernt |T136052:0|t[Welle der Heilung]
    .target Tuluun
    .xp <7,1
step
    .goto Azuremyst Isle,48.7,50.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Technician Dyvuun|r
    .turnin 9313 >> Gebt die Quest Reise zur Azurwacht ab
    .target Technician Dyvuun
step
    .goto Azuremyst Isle,48.4,49.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Caregiver Chellan|r
    .turnin 9314 >> Gebt die Quest Nachricht von der Azurwacht ab
    .accept 9603 >>Akzeptiert die Quest Betten, Verbände und noch viel mehr
    .target Caregiver Chellan
step
	.goto Azuremyst Isle,48.336,49.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Caregiver Chellan|r
    .home >> Setzt den Ruhestein von Euch in Azurwacht
    .target Caregiver Chellan
step
    .goto Azuremyst Isle,49.67,49.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zaldaan|r
    .turnin 9603 >>Gebt die Quest Betten, Verbände und noch viel mehr ab
    .target Zaldaan
step << Paladin cata
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tullas|r
    .train 635 >> Erlernen |T135920:0|t[Heiliges Licht]
    .target Tullas
    .xp <7,1
step << Priest cata
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Guvan|r
    .accept 9586 >> Akzeptiert die Quest Helft Tavara
    .train 588 >> Erlernt |T135926:0|t[Inneres Feuer]
    .target Guvan
    .xp <7,1
step << Priest cata
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Guvan|r
    .accept 9586 >> Akzeptiert die Quest Helft Tavara
    .target Guvan
step << Warrior cata
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ruada|r
    .train 772 >> Erlernt |T132155:0|t[Verwunden]
    .target Ruada
    .xp <7,1
step << Hunter cata
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Acteon|r
    .train 2973 >> Erlernen |T132223:0|t[Raptorstoß]
    .target Acteon
step
	#completewith level8
    >>|cRXP_WARN_Achtet auf a|r |cRXP_FRIENDLY_Draenei Youngling|r
    >>|cRXP_WARN_Während sie im Kampf sind, wirkt|r |T135923:0|t[Gabe der Naaru] |cRXP_WARN_auf sie, dann akzeptiert die Quest|r
	.accept 9612 >> Akzeptiert die Quest Herzlichen Dank!
	.unitscan Draenei Youngling
step
    #completewith LeavesTree
    >>Tötet |cRXP_ENEMY_Root Trappers|r. Plündert sie für |cRXP_LOOT_Vines|r
    >>Tötet |cRXP_ENEMY_Moongraze Stags|r. Plündert sie für |cRXP_LOOT_Tenderloins|r
    .complete 9463,1 -- Root Trapper (6)
    .mob +Root Trapper
    .collect 23676,6,9454,1 -- Moongraze Stag Tenderloin (6)
    .mob +Moongraze Stag
step << Priest
    .goto Azuremyst Isle,56.224,48.879
    >>|cRXP_WARN_Cast|r |T135907:0|t[Blitzheilung] |cRXP_WARN_on|r |cRXP_FRIENDLY_Tavara|r
    .complete 9586,1 --Heal Tavara
    .target Tavara
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Admiral Odesyus|r
    .accept 9506 >> Akzeptiert die Quest Ein kleiner Anfang
    .target Admiral Odesyus
step
    .goto Azuremyst Isle,46.681,70.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_"Krümel" McWeaksauce|r
    .accept 9512 >> Akzeptiert die Quest Kräckas Jumboeintopf
    .target "Cookie" McWeaksauce
step << Warrior/Rogue/Paladin
    .goto Azuremyst Isle,46.355,71.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Blacksmith Calypso|r
    >>|cRXP_WARN_Das wird es dir ermöglichen|r |T135248:0|t[Rauer Wetzstein] |cRXP_WARN_herzustellen, welcher den Nahkampfschaden von Euch um 2 erhöht|r << Warrior/Rogue
    >>|cRXP_WARN_Das wird dir ermöglichen|r |T135255:0|t[Rauer Gewichtsstein] |cRXP_WARN_herzustellen, die Nahkampfschäden von Euch um 2 erhöhen|r << Paladin
    >>|cRXP_WARN_Falls ihr das nicht tun wollt, überspringt diesen Schritt|r
    .train 2018 >> Erlerne |T136241:0|t[Schmiedekunst]
    .target Blacksmith Calypso
    .train 2575,3 --Mining
step
    .goto Azuremyst Isle,58.607,66.372
	>>Plündert die |cRXP_LOOT_Nautical Karte|r auf dem kleinen Käfig
    .complete 9506,2 --Collect Nautical Map (x1)
step
    .goto Azuremyst Isle,59.578,67.648
	>>Plündert den |cRXP_LOOT_Nautical Compass|r auf der kleinen Kiste
    .complete 9506,1 --Collect Nautical Compass (x1)
step
    #loop
    .goto Azuremyst Isle,57.0,69.2,70,0
    .goto Azuremyst Isle,50.8,69.4,70,0
    .goto Azuremyst Isle,46.0,75.6,70,0
	>>Tötet |cRXP_ENEMY_Skittering Crawlers|r. Plündert sie für |cRXP_LOOT_Crawler Fleisch|r
    .complete 9512,1 --Collect Skittering Crawler Meat (x6)
    .mob Skittering Crawler
step
    .goto Azuremyst Isle,46.681,70.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_"Krümel" McWeaksauce|r
    .turnin 9512 >> Gebt die Quest Kräckas Jumboeintopf ab
    .target "Cookie" McWeaksauce
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Admiral Odesyus|r und |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .turnin 9506 >> Gebt die Quest Ein kleiner Anfang ab
    .target +Admiral Odesyus
    .goto Azuremyst Isle,47.038,70.206
    .accept 9530 >> Akzeptiert die Quest Einen Plan aus Hecken
    .accept 9513 >> Akzeptiert die Quest Die Rückeroberung der Ruinen
    .target +Priestess Kyleen Il'dinare
    .goto Azuremyst Isle,47.131,70.289
step
    .goto Azuremyst Isle,47.243,69.998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Archaeologist Adamant Ironheart|r
    .accept 9523 >> Akzeptiert die Quest Marmor, Stein und Eisen bricht, aber uralte Nachtelfenrelikte nicht...
    .target Archaeologist Adamant Ironheart
step
    #label LeavesTree
    #loop
    .goto Azuremyst Isle,51.5,66.0,0
    .goto Azuremyst Isle,40.0,69.2,0
    .goto Azuremyst Isle,51.5,66.0,50,0
    .goto Azuremyst Isle,49.2,61.9,50,0
    .goto Azuremyst Isle,40.0,69.2,50,0
	>>Beute a |cRXP_LOOT_Hollowed Raus Baum|r auf dem Boden
    >>Plündert die |cRXP_LOOT_Piles of Leaves|r vom Boden
    .complete 9530,1 --Collect Hollowed Out Tree (x1)
    .complete 9530,2 --Collect Pile of Leaves (x5)
step
    #loop
    .goto Azuremyst Isle,51.5,66.0,0
    .goto Azuremyst Isle,40.0,69.2,0
    .goto Azuremyst Isle,51.5,66.0,50,0
    .goto Azuremyst Isle,49.2,61.9,50,0
    .goto Azuremyst Isle,40.0,69.2,50,0
    >>Tötet |cRXP_ENEMY_Root Trappers|r. Plündert sie für |cRXP_LOOT_Vines|r
    >>Tötet |cRXP_ENEMY_Moongraze Stags|r. Plündert sie für |cRXP_LOOT_Tenderloins|r
    .complete 9463,1 -- Root Trapper (6)
    .mob +Root Trapper
    .collect 23676,6,9454,1 -- Moongraze Stag Tenderloin (6)
    .mob +Moongraze Stag
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Admiral Odesyus|r
    .turnin 9530 >> Gebt die Quest Einen Plan aus den Hecken ab
    .accept 9531 >> Akzeptiert die Quest Laubangriff
    .target Admiral Odesyus
step
    #label level8
	.xp 8-950 >> Farmt bis Stufe 8 (3550/4500)
    >>|cRXP_WARN_Versucht, in der Nähe von Azurwacht zu beenden|r
step
	#completewith next
    .goto Azuremyst Isle,50.43,63.70
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn ihr bereits nah bei Azurwacht seid|r
step
	.goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Acteon|r
	.accept 9454 >> Akzeptiert die Quest Die große Mondweidenjagd
    .turnin 9454 >> Gebt die Quest Die große Mondweidenjagd ab
    .accept 10324 >> Akzeptiert die Quest Die große Mondweidenjagd
    .target Acteon
step << Hunter cata
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Acteon|r
    .train 5116 >> Erlernen |T135860:0|t[Erschütternder Schuss]
    .train 82243 >> Erlernt |T132269:0|t[Parieren]
    .target Acteon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Anchorite Fateema|r und |cRXP_FRIENDLY_Daedal|r
    .turnin 9463 >> Gebt die Quest Medizinische Notwendigkeit ab
    .target +Anchorite Fateema
    .goto Azuremyst Isle,48.390,51.770
    .accept 9473 >> Akzeptiert die Quest Eine alternative Alternative
    .target +Daedal
    .goto Azuremyst Isle,48.392,51.482
step << Shaman cata
    .train 331,1
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tuluun|r
    .train 331 >> Erlernt |T136052:0|t[Welle der Heilung]
    .train 324 >> Erlernen |T136051:0|t[Blitzschlagschild]
    .target Tuluun
step << Shaman cata
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tuluun|r
    .train 324 >> Erlernen |T136051:0|t[Blitzschlagschild]
    .target Tuluun
step << Paladin cata
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tullas|r
    .train 635 >> Erlernen |T135920:0|t[Heiliges Licht]
    .target Tullas
step << Priest cata
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Guvan|r
    .turnin 9586 >> Gebt die Quest Helft Tavara ab
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Guvan
step << Mage cata
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Semid|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Semid
step << Warrior cata
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ruada|r
    .train 772 >> Erlernt |T132155:0|t[Verwunden]
    .target Ruada
step
    .goto Azuremyst Isle,48.9,51.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dulvi|r
    .accept 10428 >> Akzeptiert die Quest Der vermisste Fischer
    .target Dulvi
step
    .goto Azuremyst Isle,49.365,51.086
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cryptographer Aurren|r
    .accept 9538 >> Akzeptiert die Quest Erlernen der Sprache
    .target Cryptographer Aurren
step
	.use 23818 >>|cRXP_WARN_Benutzt die|r |T133741:0|t[Übersetzungsfibel der Tannenruhfeste]
    .complete 9538,1 --Stillpine Furbolg Language Primer Read
step
    .goto Azuremyst Isle,49.439,50.977
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Totem von Akida|r
    .turnin 9538 >> Gebt die Quest Erlernen der Sprache ab
    .accept 9539 >> Akzeptiert die Quest Totem von Coo
    .target Totem of Akida
step
	#completewith AncientRelics
    >>|cRXP_WARN_Achtet auf a|r |cRXP_FRIENDLY_Draenei Youngling|r
    >>|cRXP_WARN_Während sie im Kampf sind, wirkt|r |T135923:0|t[Gabe der Naaru] |cRXP_WARN_auf sie, dann akzeptiert die Quest|r
	.accept 9612 >> Akzeptiert die Quest Herzlichen Dank!
	.unitscan Draenei Youngling
step
	#completewith TotemofTikti
    >>Tötet |cRXP_ENEMY_Infected Nachtpirscher Schlaffi|r
	>>Tötet |cRXP_ENEMY_Moongraze Bucks|r. Plündert sie für |cRXP_LOOT_Hides|r
    .complete 9456,1 --Kill Infected Nightstalker Runt (x8)
    .mob +Infected Nightstalker Runt
	.complete 10324,1 -- Moongraze Buck Hide (6)
    .mob +Moongraze Buck
step
	.goto Azuremyst Isle,49.9,45.9,100,0
    .goto Azuremyst Isle,55.233,41.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Totem von Coo|r
    .turnin 9539 >> Gebt die Quest Totem von Coo ab
    .accept 9540 >> Akzeptiert die Quest Totem von Tikti
    .target Totem of Coo
step
    #completewith next
    .goto Azuremyst Isle,54.531,40.493,10 >> |cRXP_WARN_Springt vorsichtig die Bergseite hinab|r
step
    #loop
    .goto Azuremyst Isle,51.9,32.4,60,0
    .goto Azuremyst Isle,44.2,37.5,60,0
	>>Plündert die |cRXP_LOOT_Azure Snapdragons|r vom Boden
    .complete 9473,1 --Collect Azure Snapdragon Bulb (x5)
step
    #label TotemofTikti
    .goto Azuremyst Isle,64.475,39.772
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Totem von Tikti|r
    .turnin 9540 >> Gebt die Quest Totem von Tikti ab
    .accept 9541 >> Akzeptiert die Quest Totem von Yor
    .timer 30,Totem von Yor RP
    .target Totem of Tikti
step
    .isOnQuest 9541
    .goto Azuremyst Isle,63.64,40.09
    .aura 30430 >> |cRXP_WARN_Folgen|r |cRXP_FRIENDLY_Ahne Tikti der Tannenruhfeste|r |cRXP_WARN_. Er wird dich mit|r |T132107:0|t[Umarmung der Schlange] |cRXP_WARN_welches 150 % erhöhte Schwimmgeschwindigkeit und Wasserwatmung gewährt|r
step
    .goto Azuremyst Isle,63.2,68.0
    .use 23654 >>|cRXP_WARN_Benutzt das|r |T134325:0|t[Draenei Angeln Netz] |cRXP_WARN_auf|r |cRXP_PICK_Schulen von Schnapper|r
    >>|cRXP_WARN_Wenn ein |cRXP_ENEMY_Murloc|r aus dem Pool erscheint, schwimmt schnell weg! Das Wirken feindseliger Zauber wird euch die|r |T132107:0|t[Umarmung der Schlange] |cRXP_WARN_Verstärkung|r wegnehmen
    .complete 9452,1 --Collect Red Snapper (x10)
step
    .goto Azuremyst Isle,61.052,54.248
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Diktynna|r
    .turnin 9452 >> Gebt die Quest Schnapper - sehr, sehr lecker! ab
    .accept 9453 >> Akzeptiert die Quest Findet Acteon!
    .target Diktynna
step
    .goto Azuremyst Isle,63.116,67.880
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Totem von Yor|r unter Wasser
    .turnin 9541 >> Gebt die Quest Totem von Yor ab
    .accept 9542 >> Akzeptiert die Quest Totem von Vark
    .timer 71,Totem von Vark RP
    .target Totem of Yor
step
    .isOnQuest 9542
    .goto Azuremyst Isle,60.971,69.354
    .aura 30448 >> |cRXP_WARN_Folgen|r |cRXP_FRIENDLY_Ahne Yor der Tannenruhfeste|r |cRXP_WARN_. Er wird dich mit|r |T132142:0|t[Schatten des Waldes] |cRXP_WARN_welches erhöhte Bewegungsgeschwindigkeit und Unsichtbarkeit verleiht|r
step
    #completewith next
    .goto Azuremyst Isle,28.115,62.391,30 >> |cRXP_WARN_Reisen zur westlichen Azurmythosinsel|r
step
    .goto Azuremyst Isle,28.115,62.391
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Totem von Vark|r
    .turnin 9542 >> Gebt die Quest Totem von Vark ab
    .accept 9544 >> Akzeptiert die Quest Die Prophezeiung von Akida
    .target Totem of Vark
step
    .aura -30448
    +|cRXP_WARN_Klickt den|r |T132142:0|t[Schatten des Waldes] |cRXP_WARN_Stärkungszauber ab|r
step
    #loop
    .goto Azuremyst Isle,27.43,63.24,70,0
    .goto Azuremyst Isle,27.87,66.78,70,0
    .goto Azuremyst Isle,25.04,67.67,70,0
	>>Tötet |cRXP_ENEMY_Bristlelimb Furbolgs|r, |cRXP_ENEMY_Bristlelimb Windcallers|r und |cRXP_ENEMY_Bristlelimb Ursas|r. Plündert sie für |cRXP_LOOT_Bristlelimb Keys|r
    >>Öffnet die |cRXP_PICK_Bristlelimb Cages|r, um die |cRXP_FRIENDLY_Stillpine Captives|r zu befreien
    .collect 23801,8,9544,1,-1 -- Bristlelimb Key
    .complete 9544,1 --Stillpine Captive Freed (x8)
step
    #loop
    .goto Azuremyst Isle,25.6,73.8,80,0
    .goto Azuremyst Isle,31.6,70.4,80,0
    .goto Azuremyst Isle,33.6,60.4,80,0
    >>Tötet |cRXP_ENEMY_Infected Nachtpirscher Schlaffi|r
	>>Tötet |cRXP_ENEMY_Moongraze Bucks|r. Plündert sie für |cRXP_LOOT_Hides|r
    .complete 9456,1 --Kill Infected Nightstalker Runt (x8)
    .mob +Infected Nightstalker Runt
	.complete 10324,1 -- Moongraze Buck Hide (6)
    .mob +Moongraze Buck
step
    #completewith next
    >>Plündert die |cRXP_LOOT_Uralte Relikte|r auf dem Boden
    .complete 9523,1 --Collect Ancient Relic (x8)
step
    #loop
    .goto Azuremyst Isle,28.9,79.5,55,0
    .goto Azuremyst Isle,31.9,76.5,55,0
    .goto Azuremyst Isle,35.8,79.0,55,0
    >>Tötet |cRXP_ENEMY_Wrathscale Nagas|r, |cRXP_ENEMY_Wrathscale Myrmidons|r und |cRXP_ENEMY_Wrathscale Sirens|r. Plündert sie für |T134462:0|t[|cRXP_LOOT_Rune Covered Tafel|r]
    .use 23759 >>|cRXP_WARN_Benutzt die|r |T134462:0|t[|cRXP_LOOT_Rune Covered Tafel|r] |cRXP_WARN_um die Quest zu starten|r
    .collect 23759,1,9514 --Collect Rune Covered Tablet (x1)
    .accept 9514>> Runenbesetzte Schrifttafel
    .complete 9513,1 --Kill Wrathscale Myrmidon (x5)
    .mob +Wrathscale Myrmidon
    .complete 9513,2 --Kill Wrathscale Naga (x5)
    .mob +Wrathscale Naga
    .complete 9513,3 --Kill Wrathscale Siren (x5)
    .mob +Wrathscale Siren
step
    #label AncientRelics
    #loop
    .goto Azuremyst Isle,28.9,79.5,55,0
    .goto Azuremyst Isle,31.9,76.5,55,0
    .goto Azuremyst Isle,35.8,79.0,55,0
    >>Plündert die |cRXP_LOOT_Uralte Relikte|r auf dem Boden
    .complete 9523,1 --Collect Ancient Relic (x8)
step
    #completewith next
    .subzone 3579 >> Schwimmt nach Verräterbucht
step
    .isOnQuest 9531
    .goto Azuremyst Isle,18.473,84.349
    .cast 30298 >> |cRXP_WARN_Benutzt die|r |T132288:0|t[Baumverkleidung] |cRXP_WARN_bei der Naga-Flagge|r
    .timer 73,Laubangriff RP
    .use 23792
step
    >>Warte auf das RP
    .complete 9531,1 -- The Traitor Uncovered
step
    +|cRXP_WARN_Klickt den|r |T132288:0|t[Baumverkleidung] |cRXP_WARN_Stärkungszauber ab|r
    .aura -30298
step
    .goto Azuremyst Isle,16.587,94.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cowlen|r
    .turnin 10428 >> Gebt die Quest Der vermisste Fischer ab
    .accept 9527 >> Akzeptiert die Quest Was noch bleibt
    .target Cowlen
step
    .goto Azuremyst Isle,13.209,89.742
	>>Tötet |cRXP_ENEMY_Owlbeasts|r. Plündert |cRXP_LOOT_Überreste von Cowlens Familie|r.
    .complete 9527,1 --Collect Remains of Cowlen's Family (x1)
    .mob Aberrant Owlbeast
    .mob Raving Owlbeast
    .mob Deranged Owlbeast
step
    .goto Azuremyst Isle,16.587,94.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cowlen|r
    .turnin 9527 >> Gebt die Quest Was noch bleibt ab
    .target Cowlen
step
	#completewith next
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step
    .goto Azuremyst Isle,47.243,69.998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Archaeologist Adamant Ironheart|r
    .turnin 9523 >> Gebt die Quest Marmor, Stein und Eisen bricht, aber uralte Nachtelfenrelikte nicht... ab
    .target Archaeologist Adamant Ironheart
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Admiral Odesyus|r
    .turnin 9531 >> Gebt die Quest Laubangriff ab
    .accept 9537 >> Akzeptiert die Quest Keine Gnade mit dem Gnom
    .target Admiral Odesyus
step
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .turnin 9513 >> Gebt die Quest Die Rückeroberung der Ruinen ab
    .target Priestess Kyleen Il'dinare
step -- to avoid long RP incase turned in in above step
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .turnin 9514 >> Gebt die Quest Runenbesetzte Schrifttafel ab
    .target Priestess Kyleen Il'dinare
step
    .goto Azuremyst Isle,50.2,70.6,40,0
    .goto Azuremyst Isle,45.7,73.2,40,0
    .goto Azuremyst Isle,50.2,70.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ingenieur "Funks" Oberschleif|r am Strand
    >>Tötet |cRXP_ENEMY_Ingenieur "Funks" Oberschleif|r nach dem kurzen Rollenspiel. Plündert |cRXP_LOOT_Traitor's Communication|r
    .complete 9537,1 --Collect Traitor's Communication (x1)
    .skipgossip 17243
    .timer 18,Traitor's Communication RP
    .unitscan Engineer "Spark" Overgrind
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Admiral Odesyus|r
    .turnin 9537 >> Gebt die Quest Keine Gnade mit dem Gnom ab
    .accept 9602 >> Akzeptiert die Quest Unheilvolle Mitteilung
    .target Admiral Odesyus
step
    .goto Azuremyst Isle,49.9,51.9
    .xp 9+2430 >> Schleifen until 2430+/6500xp
step
    #completewith next
    .hs >> Benutzt euren Ruhestein zum Azurwacht
step
    .goto Azuremyst Isle,49.367,51.082
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Arugoo von der Tannenruhfeste|r
    .turnin 9544 >> Gebt die Quest Die Prophezeiung von Akida ab
    .target Arugoo of the Stillpine
step
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Acteon|r
    .turnin 9453 >> Gebt die Quest Findet Acteon! ab
    .turnin 10324 >> Gebt die Quest Die große Mondweidenjagd ab
    .target Acteon
step
    .goto Azuremyst Isle,48.392,51.482
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Daedal|r
    .turnin 9473 >> Gebt die Quest Eine alternative Alternative ab
    .target Daedal
step
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9456 >> Gebt die Quest Nachtpirscherjagd ab
    .turnin 9602 >> Gebt die Quest Unheilvolle Mitteilung ab
    .target Exarch Menelaous
step
    .isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9612 >> Gebt die Quest Herzlichen Dank! ab
    .target Exarch Menelaous
step << Shaman cata
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tuluun|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Tuluun
step << Paladin cata
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tullas|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Tullas
step << Priest cata
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Guvan|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Guvan
step << Mage cata
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Semid|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Semid
step << Warrior cata
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ruada|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Ruada
step << Hunter cata
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Acteon|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Acteon
step
    .goto Azuremyst Isle,49.712,49.102
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zaldaan|r
    .accept 9604 >>Akzeptiert die Quest Auf dem Rücken eines Hippogryphen
    .target Zaldaan
step
    .goto Azuremyst Isle,49.712,49.102
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zaldaan|r
    .fly The Exodar >> Fliegt nach Die Exodar
    .target Zaldaan
step
    .goto The Exodar,57.016,50.081
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nurguni|r
    .turnin 9604 >> Gebt die Quest Auf dem Rücken eines Hippogryphen ab
    .accept 9605 >> Akzeptiert die Quest Hippogryphenmeister Stephanos
    .target Nurguni
step << Warrior/Paladin
    .goto The Exodar,69.945,90.749
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ven|r
    >>|cRXP_BUY_Kauft eine|r |T135350:0|t[Claymore] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Alternativ könnt ihr bald das Auktionshaus nach etwas Besserem oder Billigerem durchsuchen|r
    .collect 1198,1 -- Claymore (1)
    .money <0.2142
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Ven
step << Shaman
    .goto The Exodar,69.945,90.749
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ven|r
    >>|cRXP_BUY_Kauft ein|r |T132402:0|t[Kriegsbeil] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Alternativ könnt ihr bald das Auktionshaus nach etwas Besserem oder Billigerem durchsuchen|r
    .collect 853,1 -- Hatchet (1)
    .money <0.1927
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .target Ven
step << Hunter
    .goto The Exodar,47.904,89.780
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ven|r
    >>|cRXP_BUY_Kauft|r |T135499:0|t[Laminierter Doppelbogen] |cRXP_BUY_bei ihr|r
    >>|cRXP_WARN_Alternativ könnt ihr bald das Auktionshaus nach etwas Besserem oder Billigerem durchsuchen|r
    .collect 2507,1 --Collect Laminated Recurve Bow (1)
    .money <0.1402
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .target Ven
step << Warrior/Paladin
    #optional
    #completewith end
    +|cRXP_WARN_Rüstet das|r |T135350:0|t[Claymore] aus
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Shaman
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Stephanos|r
    .goto The Exodar,54.488,36.285
    .turnin 9605 >>Gebt die Quest Hippogryphenmeister Stephanos ab
    .target Stephanos
step
    #label end
    .goto The Exodar,54.488,36.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Stephanos|r
    .fly Lor'danel >> Fliegt nach Lor'danel
    .target Stephanos
]])
