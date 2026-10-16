if GetLocale() ~= "deDE" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end
RXPGuides.RegisterGuide([[

#version 1
#group RXP Kataklysmus 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 20-25 Dämmerwald
#displayname 21-26 Dämmerwald
#next 25-30 Nördliches Schlingendorntal


<<Alliance


step
    .goto 47,93.30,12.00
    .zone 47 >> Lauf zum Teufelswald
step
    .goto 47,78.74,44.53,8,0
    .goto 47,79.09,44.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tobias|r im Haus
    .accept 26666 >>Die Legende von Stalvan annehmen
	.target Tobias Mistmantle
step
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Abercrombie|r
    .accept 26653 >>Lieferung aus Dunkelhain annehmen
	.target Abercrombie
step
    .goto 47,77.48,44.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Felicia|r
    .fp Darkshire >>Erlernt die Flugroute nach Dunkelhain
	.target Felicia Maline
step
    .goto 47,75.56,45.37,8,0
    .goto 47,75.83,45.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht im Haus
    .turnin 26653 >>Gebt die Quest Lieferung aus Dunkelhain ab
    .accept 26652 >>Geisterhaarfaden annehmen
	.target Madame Eva
step
	#completewith next
    .goto 47,73.82,45.95,8,0
    .goto 47,74.07,45.32,8 >>Betretet Das Gasthaus
step
    #completewith Daltry1
    .goto 47,73.87,44.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Trelayne|r
    .home >>Setzt den Ruhestein von Euch in der Taverne "Zum Roten Raben"
	.target Innkeeper Trelayne
step
	#label Kabobs
    .goto 47,73.74,43.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grual|r
    .accept 26620 >>Gewürzte Wolfkebabs annehmen
    .accept 26623 >>Schwärzliche Krebsküchlein annehmen
	.target Chef Grual
step
	#completewith Daltry1
    .goto 47,74.07,45.32,8,0
	.goto 47,73.82,45.95,8>>Verlasst das Gasthaus
step
	#label Daltry1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Daltry|r innerhalb und |cRXP_FRIENDLY_Althea|r außerhalb
    .turnin 26666 >>Gebt die Quest Die Legende von Stalvan ab
    .accept 26667 >>Akzeptiert die Quest Die gestohlenen Briefe
    .goto 47,72.448,46.909
	.target +Clerk Daltry
    .turnin -26728 >>Gebt die Quest Heldenaufruf: Dämmerwald! ab
    .accept 26618 >>Wölfe sind uns auf den Fersen annehmen
    .goto 47,73.523,46.925
	.target +Commander Althea Ebonlocke
step
    .goto 47,75.33,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Calor|r
    .accept 26688 >>Akzeptiert die Quest Worgen in den Wäldern
	.target Calor

step
    #optional
    #completewith Letters
    >>Tötet |cRXP_ENEMY_Venom Gespinst Spinnen|r. Plündert sie für |cRXP_LOOT_Lumps|r
    .complete 26623,1 --6/6 Dusky Lump
	.mob Venom Web Spider
step
#completewith next
#optional
    .goto 47,64.12,51.62,0,0
    >>Tötet |cRXP_ENEMY_Nightbane Worgens|r
    .complete 26688,1 --7/7 Nightbane Worgen slain
	.mob Nightbane Worgen
step
	#label Letters
    .goto 47,61.24,40.50
    >>Plündert |cRXP_PICK_Schrotthaufen|r auf dem Boden für |cRXP_LOOT_A Slashed Bundle of Briefe|r
    .complete 26667,1 --1/1 A Slashed Bundle of Letters
step
#loop
    .goto 47,64.12,51.62,40,0
    .goto 47,60.883,40.830,40,0
    .goto 47,65.304,44.317,40,0
    .goto 47,64.12,51.62,0
    .goto 47,60.883,40.830,0
    .goto 47,65.304,44.317,0
    >>Tötet |cRXP_ENEMY_Nightbane Worgens|r
    .complete 26688,1 --7/7 Nightbane Worgen slain
	.mob Nightbane Worgen
step
	#completewith next
    >>Tötet |cRXP_ENEMY_Dire Wolves|r. Plündert sie für |cRXP_LOOT_Steaks|r
    .complete 26618,1 --12/12 Dire Wolf slain
    .complete 26620,1 --5/5 Wolf Skirt Steak
	.mob Dire Wolf
step
#loop
    .goto 47,65.54,30.32,70,0
    .goto 47,73.29,20.23,70,0
    .goto 47,63.90,19.41,70,0
    .goto 47,68.35,19.48,40,0
    .goto 47,60.93,27.34,40,0
    .goto 47,65.54,30.32,40,0
    .goto 47,73.29,20.23,40,0
    .goto 47,63.90,19.41,40,0
    .goto 47,68.35,19.48,40,0
    .goto 47,60.93,27.34,40,0
    .goto 47,65.54,30.32,40,0
    .goto 47,73.29,20.23,40,0
    .goto 47,63.90,19.41,0
    >>Tötet |cRXP_ENEMY_Venom Gespinst Spinnen|r. Plündert sie für |cRXP_LOOT_Lumps|r
    .complete 26623,1 --6/6 Dusky Lump
	.mob Venom Web Spider
step
#loop
    .goto 47,59.00,20.72,40,0
    .goto 47,68.35,19.48,40,0
    .goto 47,60.93,27.34,40,0
    .goto 47,65.54,30.32,40,0
    .goto 47,59.00,20.72,40,0
    .goto 47,63.90,19.41,40,0
    .goto 47,68.35,19.48,40,0
    .goto 47,60.93,27.34,40,0
    .goto 47,65.54,30.32,40,0
    .goto 47,59.00,20.72,0
    >>Tötet |cRXP_ENEMY_Dire Wolves|r. Plündert sie für |cRXP_LOOT_Steaks|r
    .complete 26618,1 --12/12 Dire Wolf slain
    .complete 26620,1 --5/5 Wolf Skirt Steak
	.mob Dire Wolf
step
    .isOnQuest 26620,26618,26623,26688,26667
    .hs >> Benutzt euren Ruhestein nach Dunkelhain
    .cooldown item,6948,>2
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Daltry|r innerhalb und |cRXP_FRIENDLY_Althea|r außerhalb
    .turnin 26667 >>Gebt die Quest Die gestohlenen Briefe ab
    .accept 26669 >>Akzeptiert die Quest In einer dunklen Ecke
    .target +Clerk Daltry
    .goto 47,72.448,46.909
    .turnin 26618 >>Wölfe sind uns auf den Fersen abgeben
    .accept 26645 >>Die Nachtwache annehmen
    .goto 47,73.523,46.925
	.target +Commander Althea Ebonlocke
step
    .goto 47,75.33,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Calor|r
    .turnin 26688 >>Gebt die Quest Worgen in den Wäldern ab
    .accept 26689 >>Akzeptiert die Quest Der Verrottende Obstgarten
	.target Calor
step
    #optional
    .maxlevel 25,endOfTheGuide
step
    .goto 47,79.53,47.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Viktori|r
    .accept 26683 >>Seht zu den Sternen annehmen
	.target Viktori Prism'Antras
step
	#completewith next
    >>Tötet |cRXP_ENEMY_Rotting Horrors|r
	.complete 26645,1 --8/8 Rotting Horror slain
	.mob Rotting Horror
step
    .goto 47,81.66,59.16,8,0
    .goto 47,81.92,58.98,5,0
    .goto 47,82.05,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mary|r im Haus
    .turnin 26652 >>Gebt die Geisterhaarfaden ab
    .accept 26654 >>Rückkehr mit dem Kamm annehmen
    .turnin 26683 >>Gebt die Quest Seht zu den Sternen ab
    .accept 26684 >>Akzeptiert die Quest Der irrsinnige Ghul
	.target Blind Mary
step
#loop
	.line 47,82.30,61.22,82.45,56.25,80.91,56.65,79.48,60.41,82.30,61.22
	.goto 47,82.30,61.22,30,0
	.goto 47,82.45,56.25,30,0
	.goto 47,80.91,56.65,30,0
	.goto 47,79.48,60.41,30,0
	.goto 47,82.30,61.22,30,0
    >>Tötet |cRXP_ENEMY_Rotting Horrors|r
	.complete 26645,1 --8/8 Rotting Horror slain
	.mob Rotting Horror
step
    #completewith next
    .subzone 42 >> Kehrt zu Dunkelhain zurück
step
    .goto 47,75.56,45.37,8,0
    .goto 47,75.83,45.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht im Haus
    .turnin 26654 >>Gebt die Quest Rückkehr mit dem Kamm ab
    .accept 26655 >>Abliefern des Fadens annehmen
	.target Madame Eva
step
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Abercrombie|r
    .turnin 26655 >>Gebt die Quest Faden abliefern ab
    .accept 26660 >>Akzeptiert die Quest Zombiesaft
	.target Abercrombie
step << skip
    #completewith next
    .goto 47,87.98,33.16,20,0
    .goto 47,88.1,31.33,20,0
    .goto 47,90.98,30.53,30 >>Prüft auf |cRXP_ENEMY_Unbekannte Soldatin|r (Selten). Tötet sie, wenn sie verfügbar ist.
	.unitscan Unknown Soldier
step
	#completewith next
    .goto 47,73.82,45.95,8,0
    .goto 47,74.07,45.32,8 >>Betretet Das Gasthaus
step
    .goto 47,74.09,44.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Smitts|r
    .turnin 26660 >>Gebt die Quest Zombiesaft ab
    .accept 26661 >>Akzeptiert die Quest Das Sammeln von Faulblüten
	.target Tavernkeep Smitts
step
	#completewith next
    .goto 47,74.07,45.32,8,0
	.goto 47,73.82,45.95,8 >>Verlasst das Gasthaus
step
    .goto 47,73.523,46.925
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Althea|r
    .turnin 26645 >>Gebt die Quest Die Nachtwache ab
    .accept 26686 >>Akzeptiert die Quest Wandelnde Knochen
	.target Commander Althea Ebonlocke
step
    #optional
    .maxlevel 25,endOfTheGuide
step
#optional
	#completewith next
    >>Tötet |cRXP_ENEMY_Skelettkrieger|r und |cRXP_ENEMY_Skelettmagier|r
	>>Sammelt |cRXP_LOOT_Rot Blossoms|r auf dem Boden
    .complete 26686,1 --5/5 Skeletal Warrior slain
	.mob +Skeletal Warrior
    .complete 26686,2 --5/5 Skeletal Mage
	.mob +Skeletal Mage
    .complete 26661,1 --5/5 Rot Blossom
step
    .goto 47,80.31,71.10,15,0
    .goto 47,80.88,71.58
    >>Tötet |cRXP_ENEMY_Irrsinnigen Ghul|r im Friedhof. Plündert ihn für |cRXP_LOOT_Mary's Sehen Glas|r
    .complete 26684,1 --1/1 Mary's Looking Glass
	.mob Insane Ghoul
step
	.line 47,81.85,68.34,78.33,66.13,77.02,69.85,80.89,74.21,81.85,68.34
    #loop
    .goto 47,81.85,68.34,30,0
    .goto 47,78.33,66.13,30,0
    .goto 47,77.02,69.85,30,0
    .goto 47,80.89,74.21,30,0
    .goto 47,81.85,68.34,30,0
    >>Tötet |cRXP_ENEMY_Skelettkrieger|r und |cRXP_ENEMY_Skelettmagier|r
	>>Sammelt |cRXP_LOOT_Rot Blossoms|r auf dem Boden
    .complete 26686,1 --5/5 Skeletal Warrior slain
	.mob +Skeletal Warrior
    .complete 26686,2 --5/5 Skeletal Mage
	.mob +Skeletal Mage
    .complete 26661,1 --5/5 Rot Blossom
step
#optional
    #completewith journal1
    >>Tötet |cRXP_ENEMY_Nightbane Schatten Weavers|r
    .complete 26689,1 --10/10 Nightbane Shadow Weaver slain
	.mob Nightbane Shadow Weaver
step
	#completewith next
    .goto 47,66.03,75.79,8,0
    .goto 47,65.98,76.42,8 >> Geh in die Scheune
step
#label journal1
    .goto 47,66.59,76.44
    >>Sammelt |cRXP_LOOT_A Torn Tagebuch|r auf dem Boden
    .complete 26669,1 --1/1 A Torn Journal
step
#loop
    .goto 47,63.50,76.61,40,0
    .goto 47,60.88,73.19,40,0
    .goto 47,64.19,65.03,40,0
    .goto 47,63.50,76.61,40,0
    .goto 47,60.88,73.19,40,0
    .goto 47,64.19,65.03,40,0
    .goto 47,63.50,76.61,0
    >>Tötet |cRXP_ENEMY_Nightbane Schatten Weavers|r
    .complete 26689,1 --10/10 Nightbane Shadow Weaver slain
	.mob Nightbane Shadow Weaver
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Althea|r außerhalb und |cRXP_FRIENDLY_Daltry|r innerhalb
    .turnin 26686 >>Gebt die Quest Wandelnde Knochen ab
    .goto 47,73.523,46.925
	.target +Commander Althea Ebonlocke
    .turnin 26669 >>Gebt die Quest In einer dunklen Ecke ab
    .accept 26670 >>Akzeptiert die Quest Rolands Verdammnis
    .goto 47,72.448,46.909
	.target +Clerk Daltry
step
	#completewith next
    .goto 47,73.82,45.95,8,0
    .goto 47,74.07,45.32,8 >>Betretet Das Gasthaus
step
    .goto 47,74.09,44.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Smitts|r
    .turnin 26661 >>Gebt die Quest Das Sammeln von Faulblüten ab
    .accept 26676 >>Akzeptiert die Quest Saftlieferung
	.target Tavernkeep Smitts
step
	#completewith next
    .goto 47,74.07,45.32,8,0
	.goto 47,73.82,45.95,8 >>Verlasst das Gasthaus
step
    .goto 47,75.33,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Calor|r
    .turnin 26689,1 >>Gebt die Quest Der Verrottende Obstgarten ab
    .accept 26690 >>Akzeptiert die Quest Faulig und besudelt
	.target Calor
step
	#label Insane
    .goto 47,79.53,47.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Viktori|r
    .turnin 26684 >>Gebt die Quest Der irrsinnige Ghul ab
    .accept 26685 >>Akzeptiert die Quest Feines Glas
	.target Viktori Prism'Antras
step
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Abercrombie|r
    .turnin 26676 >>Gebt die Quest Saftlieferung ab
    .accept 26680 >>Akzeptiert die Quest Ogerdiebe
	.target Abercrombie
step
    #optional
    .maxlevel 25,endOfTheGuide
step
    #completewith JPages
    >>Tötet |cRXP_ENEMY_Nightbane Ekel Kiefer|r und |cRXP_ENEMY_Besudelter Nachtheuler|r
    .complete 26690,1 --8/8 Nightbane Vile Fang slain
    .mob +Nightbane Vile Fang
    .complete 26690,2 --8/8 Nightbane Tainted One slain
    .mob +Nightbane Tainted One
step
	#label JPages
    .goto 47,73.44,76.86,20,0
    .goto 47,74.26,77.92,20,0
    .goto 47,73.62,79.21
    >>Hebt die |cRXP_LOOT_Muddy Tagebuch Pages|r vom Boden auf
    .complete 26670,1 --1/1 Muddy Journal Pages
step
#loop
    .goto 47,74.84,67.51,40,0
    .goto 47,72.13,67.77,40,0
    .goto 47,72.03,74.77,40,0
    .goto 47,74.25,73.86,40,0
    .goto 47,73.46,73.17,40,0
    .goto 47,74.84,67.51,40,0
    .goto 47,72.13,67.77,40,0
    .goto 47,72.03,74.77,40,0
    .goto 47,74.25,73.86,40,0
    .goto 47,73.46,73.17,0
    >>Tötet |cRXP_ENEMY_Nightbane Ekel Kiefer|r und |cRXP_ENEMY_Besudelter Nachtheuler|r
    .complete 26690,1 --8/8 Nightbane Vile Fang slain
    .mob +Nightbane Vile Fang
    .complete 26690,2 --8/8 Nightbane Tainted One slain
    .mob +Nightbane Tainted One
step
    .goto 47,72.448,46.909
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Daltry|r innerhalb
    .turnin 26670 >>Gebt die Quest Rolands Verdammnis ab
    .accept 26671 >>Nehmt die Quest Das Schicksal von Stalvan Dunstmantel an
	.target Clerk Daltry
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calor|r, then |cRXP_FRIENDLY_Jonathan|r innerhalb
    .turnin 26690 >>Gebt die Quest Faulig und besudelt ab
    .accept 26691 >>Akzeptiert die Quest Worgen in den Wäldern
    .goto 47,75.33,48.02
	.target +Calor
    .turnin 26691 >>Gebt die Quest Worgen in den Wäldern ab
    .goto 47,75.24,48.23,5,0
    .goto 47,75.39,49.00
	.target +Jonathan Carevin
step
    .goto 47,78.74,44.53,8,0
    .goto 47,79.084,44.173
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tobias|r im Haus
    .turnin 26671 >>Gebt die Quest Das Schicksal von Stalvan Dunstmantel ab
    .accept 26672 >>Nehmt die Quest Der Wahrheit auf den Grund gehen an
    .target Tobias Mistmantle
step
	#label Clawing
    .goto 47,75.56,45.37,8,0
    .goto 47,75.83,45.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eva|r im Haus
    .turnin 26672 >>Gebt die Quest Der Wahrheit auf den Grund gehen ab
    .accept 26674 >>Nehmt die Quest Dunstmantels Rache an
	.target Madame Eva
step
    #completewith next
	.cast 82029 >> |cRXP_WARN_Benutzt|r |T133343:0|t[Mistmantle Family Läuten] |cRXP_WARN_um zu beschwören|r |cRXP_ENEMY_Stalvan Dunstmantel|r
	.timer 33,Dunstmantels Rache RP
step
    .goto 47,77.42,35.85,10,0
    .goto 47,77.33,36.18
    .use 59363 >>Tötet |cRXP_ENEMY_Stalvan Mistmantle|r
    .complete 26674,1 --1/1 Stalvan Mistmantle slain
	.mob Stalvan Mistmantle
step
    .goto 47,78.74,44.53,8,0
    .goto 47,79.084,44.173
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tobias|r im Haus
    .turnin 26674 >>Gebt die Quest Dunstmantels Rache ab
    .accept 26785 >>Nehmt die Quest Mitglied der Meute an
	.target Tobias Mistmantle
step
	#completewith next
    .goto 47,69.51,48.83,30 >> Folgt dem Pfad hinter dem Hauptgebäude zu Schattenhain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dodds|r und |cRXP_FRIENDLY_Fess|r
    .accept 25235 >>Nehmt die Quest Vulgäres Vul'Gol an
	.target +Watcher Dodds
    .goto 47,45.12,67.02
    .turnin 26785 >>Gebt die Quest Mitglied der Meute ab
    .accept 26707 >>Nehmt die Quest Eine tödliche Rebe an
    .accept 26717 >>Nehmt die Quest Worgen auf Yorgen an
    .goto 47,44.92,67.43
	.target +Apprentice Fess
step
    #optional
    .maxlevel 25,endOfTheGuide
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Corpseweeds|r. Plündert sie für |cRXP_LOOT_Corpseweed|r
    .complete 26707,1 --5/5 Corpseweed
	.mob Corpseweed
step
    .goto 47,49.86,77.69
    >>Klickt auf den |cRXP_PICK_Mound of Loose Dirt|r am Boden
    .complete 26717,1 --1/1 Mound of Loose Dirt
step
    #loop
    .goto 47,51.99,73.61,60,0
    .goto 47,49.04,70.73,60,0
    .goto 47,47.12,73.79,60,0
    .goto 47,49.28,76.56,60,0
    .goto 47,51.99,73.61,60,0
    .goto 47,49.04,70.73,60,0
    .goto 47,47.12,73.79,60,0
    >>Tötet |cRXP_ENEMY_Corpseweeds|r. Plündert sie für |cRXP_LOOT_Corpseweed|r
    .complete 26707,1 --5/5 Corpseweed
	.mob Corpseweed
step
    #completewith Zzarc
	>>Tötet |cRXP_ENEMY_Splinter Fist Ogres|r, |cRXP_ENEMY_Splinter Fist Firemongers|r, und |cRXP_ENEMY_Splinter Fist Warriors|r
    .complete 25235,1 --15/15 Splinter Fist Ogre slain
	.mob Splinter Fist Ogre
	.mob Splinter Fist Firemonger
	.mob Splinter Fist Warrior
step
    .goto 47,33.52,75.33
    >>Plündert |cRXP_LOOT_Calvinius' Kiste|r auf dem Boden
    .complete 26680,1 --1/1 Abercrombie's Crate
step
    #completewith next
    .goto 47,34.23,77.47,15 >> Betretet die Höhle des Ogers der Splitterfäuste
step
	#label Zzarc
    .goto 47,37.87,84.33
    >>Tötet |cRXP_ENEMY_Zzarc' Vul|r. Plündert ihn für |cRXP_LOOT_Ogermonokel|r
    .complete 26685,1 --1/1 Ogre's Monocle
	.unitscan Zzarc' Vul
step
	#completewith next
    .goto 47,34.20,77.47,15 >>Verlasst die Höhle des Ogers der Splitterfäuste
	.isOnQuest 25235,26685
step
    #loop
    .goto 47,33.32,74.63,60,0
    .goto 47,32.82,68.37,60,0
    .goto 47,39.06,70.59,60,0
    .goto 47,40.66,74.97,60,0
    .goto 47,33.32,74.63,60,0
    .goto 47,32.82,68.37,60,0
    .goto 47,39.06,70.59,60,0
    .goto 47,40.66,74.97,60,0
    .goto 47,34.261,73.014,0
	>>Tötet |cRXP_ENEMY_Splinter Fist Ogres|r, |cRXP_ENEMY_Splinter Fist Firemongers|r, und |cRXP_ENEMY_Splinter Fist Warriors|r
    .complete 25235,1 --15/15 Splinter Fist Ogre slain
	.mob Splinter Fist Ogre
	.mob Splinter Fist Firemonger
	.mob Splinter Fist Warrior
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Fess|r und |cRXP_FRIENDLY_Dodds|r
    .turnin 26707 >>Gebt die Quest Eine tödliche Rebe ab
    .turnin 26717 >>Gebt die Quest Worgen auf Yorgen ab
    .accept 26719 >>Nehmt die Quest Lieferung an Meister Harris an
    .goto 47,44.92,67.43
	.target +Apprentice Fess
    .turnin 25235 >>Gebt die Quest Vulgäres Vul'Gol ab
    .goto 47,45.12,67.02
	.target +Watcher Dodds
step
    .goto 47,20.015,57.884
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sister Elsington|r
    .target Sister Elsington
    .accept 26777 >>Nehmt die Quest Beruhigt die Geister an
step
    .goto 47,18.628,58.335
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jitters|r
    .accept 26721 >>Nehmt die Quest Bibbers Spinnen an
    .target Jitters
step
    .goto 47,18.310,57.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Oliver Harris|r
    .target Oliver Harris
    .turnin 26719 >>Gebt die Quest Lieferung an Meister Harris ab
    .accept 26720 >>Nehmt die Quest Ein Fluch, den wir nicht brechen können an
step
#optional
    #completewith LurkingW
    .use 60225 >>|cRXP_WARN_Benutzt|r |T134547:0|t[Heilig Censer] |cRXP_WARN_auf|r |cRXP_FRIENDLY_Forlorn Geister|r
    .complete 26777,1 --5/5 Forlorn Spirit soothed
	.target Forlorn Spirit
step
#optional
	#completewith next
    .goto 47,21.65,72.34,8,0
    .goto 47,21.29,72.73,8 >>|cRXP_WARN_Geht in den Stall der Scheune|r
step
    #label LurkingW
    .goto 47,21.61,73.15
	>>|cRXP_WARN_Richtet Schaden an|cRXP_ENEMY_ Lauernder Worgen|r , bis sie 20% Leben oder weniger hat, benutzt dann|r |T134825:0|t[Harris' Ampulle]|t |cRXP_WARN_darauf|r
    .complete 26720,1 --1/1 Lurking Worgen captured
	.mob Lurking Worgen
    .use 60206
step
    #loop
    .goto 47,19.20,68.25,60,0
    .goto 47,19.95,64.85,60,0
    .goto 47,23.23,66.58,60,0
    .goto 47,25.13,70.24,60,0
    .goto 47,22.85,72.11,60,0
    .goto 47,19.20,68.25,60,0
    .goto 47,19.95,64.85,60,0
    .goto 47,23.23,66.58,60,0
    .goto 47,25.13,70.24,60,0
    .goto 47,22.85,72.11,60,0
    .goto 47,21.695,68.981,0
    .use 60225 >>|cRXP_WARN_Benutzt|r |T134547:0|t[Heilig Censer] |cRXP_WARN_auf|r |cRXP_FRIENDLY_Forlorn Geister|r
    .complete 26777,1 --5/5 Forlorn Spirit soothed
	.target Forlorn Spirit
    .use 60225
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Oliver Harris|r und |cRXP_FRIENDLY_Sister Elsington|r
    .turnin 26720 >>Gebt die Quest Ein Fluch, den wir nicht brechen können ab
    .accept 26760 >>Nehmt die Quest Das Unmögliche möglich machen an
	.timer 58,Das Unmögliche möglich machen RP
    .goto 47,18.32,57.67
    .turnin 26777 >>Gebt die Quest Beruhigt die Geister ab
    .goto 47,20.03,57.82
	.target Oliver Harris
	.target Sister Elsington
step
    >>Warte auf das RP
    >>|cRXP_WARN_Falls ihr keinen Fortschritt erhaltet, nachdem der Timer abläuft, brecht die Quest "Das Unmögliche möglich machen" ab und nehmt sie erneut an|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Oliver Harris|r, |cRXP_FRIENDLY_Sven Yorgen|r, und |cRXP_FRIENDLY_Sister Elsington|r
    .complete 26760,1 --1/1 Worgen cured
    .turnin 26760 >>Gebt die Quest Das Unmögliche möglich machen ab
    .goto 47,18.32,57.67
    .accept 26723 >>Nehmt die Quest Das Schicksal von Morbent Teufel an
    .goto 47,18.34,58.06
    .accept 26778 >>Nehmt die Quest Die Schreie der Toten an
    .goto 47,20.03,57.82
	.target Oliver Harris
	.target Sven Yorgen
	.target Sister Elsington
step
    #optional
    .maxlevel 25,endOfTheGuide
step
    .goto Duskwood,21.08,56.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_John Zwacki|r
    .target John Shelby
    .fp Raven Hill>>Erlernt die Flugroute Rabenflucht
step
    .goto 47,31.66,50.31,50,0
    .goto 47,37.52,25.18,50,0
    .goto 47,30.98,31.14,50,0
    .goto 47,31.66,50.31,50,0
    .goto 47,37.52,25.18,50,0
    .goto 47,30.98,31.14
    >>Tötet |cRXP_ENEMY_Black Widows|r. Plündert sie für |cRXP_LOOT_Widow Toxin Sacs|r
	>>|cRXP_WARN_Sie verschwinden manchmal für 1-2s im Kampf|r
    .complete 26721,1 --8/8 Widow Venom Sac
	.mob Black Widow
step
    .goto 47,17.72,29.05
    >>Klickt |cRXP_PICK_Ein verwittertes Grab|r
    .accept 26793 >>Akzeptiert die Quest Das verwitterte Grab
step
    .goto 47,17.49,33.40,8,0
    .goto 47,17.44,34.17,5,0
    .goto 47,16.97,33.42
    >>Klickt auf den |cRXP_PICK_Bloodsoaked Hut|r oben auf dem Boden
    .complete 26723,1 --1/1 Remains of Morbent Fel
step
    .isOnQuest 26793,26685,26680
    .hs >> Benutzt euren Ruhestein nach Dunkelhain
    .cooldown item,6948,>2
step
    .goto 47,72.43,46.80,15,0
    .goto 47,72.605,47.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sirra Von'Indi|r
    .turnin 26793 >>Gebt die Quest Das verwitterte Grab ab
    .accept 26794 >>Akzeptiert die Quest Morgan Ladimore
    .target Sirra Von'Indi
step
    .goto 47,73.523,46.925
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kommandantin Althea Schwarzhaupt|r
    .turnin 26794 >>Gebt die Quest Morgan Ladimore ab
    .accept 26795 >>Akzeptiert die Quest Mor'Ladim
    .target Commander Althea Ebonlocke
step
	#sticky
    .destroy 2154 >> Lösche |T133741:0|t[Die Geschichte von Morgan Ladimore]
step
    .goto 47,79.53,47.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .turnin 26685 >>Gebt die Quest Feines Glas ab
	.target Viktori Prism'Antras
step
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Abercrombie|r
    .turnin 26680 >>Gebt Ogerdiebe ab
	.target Abercrombie
step
    #optional
    .maxlevel 25,endOfTheGuide
step
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Abercrombie|r
    .turnin 26680 >>Gebt Ogerdiebe ab
    .accept 26677 >>Akzeptiert die Quest Ein Ghulbildnis
	.target Abercrombie
    .maxlevel 28
step
    .goto 47,77.34,36.27,15,0
    .goto 47,75.08,37.23,40,0
    .goto 47,76.73,30.50,40,0
    .goto 47,81.23,32.15,40,0
    .goto 47,79.79,35.41,40,0
    .goto 47,75.08,37.23,40,0
    .goto 47,76.73,30.50,40,0
    .goto 47,81.23,32.15,40,0
    .goto 47,79.79,35.41,40,0
    .goto 47,77.760,33.889
    >>Tötet |cRXP_ENEMY_Fetid Leichen|r. Plündert sie für |cRXP_LOOT_Ghoul Ribs|r
	>>|cRXP_WARN_Sucht nach einer |cRXP_PICK_Truhe|r in und um das Haus|r
    .complete 26677,1 --7/7 Ghoul Rib
	.mob Fetid Corpse
    .maxlevel 28
step
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Abercrombie|r
    .turnin 26677 >>Gebt Ein Ghulbildnis ab
    .accept 26681 >>Akzeptiert die Quest Ein Brief für den Bürgermeister
	.target Abercrombie
    .maxlevel 28
step
	#completewith next
	.goto 47,72.86,46.82,10,0
	.goto 47,72.53,47.21,8,0
	.goto 47,72.35,47.75,8 >>|cRXP_WARN_Enter the Hauptgebäude|r
    .maxlevel 28
step
    .goto 47,71.93,46.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lord Ello Schwarzhaupt|r
    .turnin 26681 >>Gebt Ein Brief für den Bürgermeister ab
    .accept 26727 >>Akzeptiert die Quest Die Rache des Einbalsamierers
	.target Lord Ello Ebonlocke
    .maxlevel 28
step
	#completewith next
	.goto 47,72.35,47.75,8,0
	.goto 47,72.53,47.21,8,0
	.goto 47,72.86,46.82,10 >>|cRXP_WARN_Exit the Hauptgebäude|r
    .maxlevel 28
step
    .goto 47,74.17,46.47
    >>Tötet |cRXP_ENEMY_Stiches.|r
    .complete 26727,1 --1/1 Stitches slain
	.mob Stitches
    .maxlevel 28
step
	#completewith next
	.goto 47,72.86,46.82,10,0
	.goto 47,72.53,47.21,8,0
	.goto 47,72.35,47.75,8 >>|cRXP_WARN_Enter the Hauptgebäude|r
    .maxlevel 28
step
    .goto 47,71.93,46.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Ello Ebonlocke.|r
    .turnin 26727 >>Gebt die Quest Die Rache des Einbalsamierers ab
	.target Lord Ello Ebonlocke
    .maxlevel 28
step
	#completewith next
    .goto 47,77.48,44.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Felicia Maline.|r
    .fly Raven Hill >>Fliegt nach Rabenflucht
	.target Felicia Maline
    .subzoneskip 94
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sven Yorgen|r und |cRXP_FRIENDLY_Jitters|r
    .turnin 26723 >>Gebt die Quest Das Schicksal von Morbent Teufel ab
    .accept 26724 >>Akzeptiert die Quest Der lauernde Lich
    .goto 47,18.34,58.06
	.target +Sven Yorgen
    .turnin 26721 >>Gebt die Quest Bibbers Spinnen ab
    .accept 26787 >>Akzeptiert die Quest Bärendienst
	.target +Jitters
    .goto 47,18.62,58.36
step
    #optional
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sister Elsington.|r
    .turnin 26778 >>Gebt die Quest Die Schreie der Toten ab
    .isQuestComplete 26778
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sister Elsington.|r
    .turnin 26724 >>Gebt die Quest Der lauernde Lich ab
    .accept 26725 >>Akzeptiert die Quest Vom Lichte geführt
    .goto 47,20.03,57.82
	.target Sister Elsington
step
#optional
    #completewith LightforgedRod
    >>Tötet |cRXP_ENEMY_Plague Spreaders|r, |cRXP_ENEMY_Flesh Eaters|r, |cRXP_ENEMY_Rotted Ones|r, und |cRXP_ENEMY_Bone Chewers.|r
    .complete 26778,1 --20/20 Ghoul slain
	.mob Plague Spreader
	.mob Flesh Eater
	.mob Rotted One
	.mob Bone Chewer
step
#optional
    #completewith LightforgedRod
    >>Tötet |cRXP_ENEMY_Mor'Ladim|r. Plündert ihn für seinen |cRXP_LOOT_Schädel|r
    >>|cRXP_ENEMY_Mor'Ladim|r |cRXP_WARN_patrols the Friedhof von Rabenflucht|r
    .complete 26795,1 --Mor'Ladim's Skull (1)
    .unitscan Mor'Ladim
    .isOnQuest 26795
step
    #label LightforgedRod
    .goto 47,23.45,35.41
    >>Klickt |cRXP_PICK_Lightforged Rod|r auf dem Boden
    .turnin 26725 >>Gebt die Quest Vom Lichte geführt ab
    .accept 26753 >>Akzeptiert die Quest Die Hallen der Toten
step
	#label CatacombsX
	#completewith next
    .goto 47,23.94,34.80,10,0
    .goto 47,25.68,33.76,15,0
    .goto 47,25.46,31.50,15,0
    .goto 47,23.47,27.99,15,0
    .goto 47,20.37,27.46,20 >>|cRXP_WARN_Travel down into the Catacombs. Ausweichen running over beliebig graves as it will spawn|r |cRXP_ENEMY_Buried Leichen|r
step
    .goto 47,20.37,27.46
    >>Klickt |cRXP_PICK_Lightforged Arch|r auf dem Boden
    .turnin 26753 >>Gebt die Quest Die Hallen der Toten ab
    .accept 26722 >>Akzeptiert die Quest Tief vergraben
step
	#completewith next
    .goto 47,20.33,26.81,10,0
    .goto 47,19.47,26.81,10,0
    .goto 47,18.53,24.94,10,0
    .goto 47,18.01,25.37,10 >>|cRXP_WARN_Travel through the hole in the wall|r
step
    .goto 47,18.01,25.37
    >>Klickt |cRXP_FRIENDLY_Lightforged Crest|r auf dem Boden
    .turnin 26722 >>Gebt die Quest Tief vergraben ab
    .accept 26754 >>Akzeptiert die Quest Morbents Bann
step
	#completewith next
    .goto 47,16.53,31.06
    .cast 82130 >>|cRXP_WARN_Benutz|r |T135142:0|t[MorbentsBann] |cRXP_WARN_auf|r |cRXP_ENEMY_Morbent Fel|r |cRXP_WARN_um ihn zu schwächen|r
	.use 60212
    .mob Morbent Fel
step
    .goto 47,16.53,31.06
    .use 60212 >>Töte |cRXP_ENEMY_Morbent Fel|r
    .complete 26754,1 --1/1 Morbent Fel slain
	.mob Morbent Fel
step
	#completewith CoalB
    .goto 47,16.18,33.19,15,0
    .goto 47,15.31,38.48,15,0
    .goto 47,16.09,38.78,15,0
    .subzone 2098,1 >>|cRXP_WARN_Exit the Catacombs|r
step
#sticky
#label morladim
#loop
    .goto 47,20.72,35.33,40,0
    .goto 47,22.70,32.95,40,0
    .goto 47,16.20,33.17,40,0
    .goto 47,14.27,41.46,40,0
    .goto 47,20.72,35.33,40,0
    .goto 47,22.70,32.95,40,0
    .goto 47,16.20,33.17,40,0
    .goto 47,14.27,41.46,40,0
    .goto 47,22.922,37.687,0
    >>Tötet |cRXP_ENEMY_Mor'Ladim|r. Plündert ihn für seinen |cRXP_LOOT_Schädel|r
    >>|cRXP_ENEMY_Mor'Ladim|r |cRXP_WARN_patrols the Friedhof von Rabenflucht|r
    .complete 26795,1 --Mor'Ladim's Skull (1)
	.unitscan Mor'Ladim
    .isOnQuest 26795
step
#loop
    .goto 47,20.72,35.33,40,0
    .goto 47,22.70,32.95,40,0
    .goto 47,16.20,33.17,40,0
    .goto 47,14.27,41.46,40,0
    .goto 47,20.72,35.33,40,0
    .goto 47,22.70,32.95,40,0
    .goto 47,16.20,33.17,40,0
    .goto 47,14.27,41.46,40,0
    .goto 47,22.922,37.687,0
    >>Tötet |cRXP_ENEMY_Plague Spreaders|r, |cRXP_ENEMY_Flesh Eaters|r, |cRXP_ENEMY_Rotted Ones|r, und |cRXP_ENEMY_Bone Chewers.|r
	.complete 26778,1 --20/20 Ghoul slain
	.mob Plague Spreader
	.mob Flesh Eater
	.mob Rotted One
	.mob Bone Chewer
step
#requires morladim
	#label CoalB
    #loop
    .goto 47,10.144,41.314,80,0
    .goto 47,11.636,54.060,80,0
    .goto 47,13.663,69.726,80,0
    .goto 47,10.144,41.314,0
    .goto 47,11.636,54.060,0
    .goto 47,13.663,69.726,0
    >>Tötet |cRXP_ENEMY_Coalpelt Bären|r. Plündert sie für |cRXP_LOOT_Black Bär Brains|r
    .complete 26787,1 --8/8 Black Bear Brain
	.mob Coalpelt Bear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sven Yorgen|r und |cRXP_FRIENDLY_Jitters|r
    .turnin 26754 >>Gebt die Quest Morbents Bann ab
	.target +Sven Yorgen
    .goto 47,18.34,58.06
    .turnin 26787 >>Gebt die Quest Bärendienst ab
    .goto 47,18.62,58.36
	.target +Jitters
step
    .goto 47,19.929,57.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sister Elsington|r
    .target Sister Elsington
    .turnin 26778 >>Gebt die Quest Die Schreie der Toten ab
    .accept 26838 >>Akzeptiert die Quest Wenn man keine Ahnung hat...
step
    #optional
    #label endOfTheGuide
step
    .goto 50,51.88,12.10
    .zone 50 >> Reist nach Nördliches Schlingendorntal
]])
