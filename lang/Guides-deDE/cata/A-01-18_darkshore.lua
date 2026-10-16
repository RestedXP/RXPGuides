if GetLocale() ~= "deDE" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end


RXPGuides.RegisterGuide([[

#version 1
#group RXP Kataklysmus 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 10-18 Dunkelküste
#next 15-20 Redridge
#defaultfor NightElf/Worgen/Draenei
<< Alliance


step
    #optional
    .goto 62,51.785,18.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dentaria Silverglade|r
    .turnin 26383 >>Gebt die Quest Unaufhaltsame Veränderungen ab << !Worgen
    .turnin 26385 >>Gebt die Quest Unaufhaltsame Veränderungen ab << Worgen
    .accept 13518 >>Akzeptiert die Quest Die letzte Welle Überlebender
	.target Dentaria Silverglade
    .isOnQuest 26383 << !Worgen
    .isOnQuest 26385 << Worgen
step
    .goto 62,51.785,18.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dentaria Silverglade|r
    .accept 13518 >>Akzeptiert die Quest Die letzte Welle Überlebender
	.target Dentaria Silverglade
step
    .goto 62,50.22,19.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ranger Glynda Nal'Shea|r
    .accept 13522 >>Akzeptiert die Quest Gefahr aus dem Wasser
	.target Ranger Glynda Nal'Shea
step
    #completewith finalrescue
    >>Tötet |cRXP_ENEMY_Vile Sprays|r
    .complete 13522,1 --8/8 Vile Spray slain
	.mob Vile Spray
step
    .goto 62,45.02,18.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Volcor|r
    .complete 13518,4 --1/1 Volcor rescued
	.target Volcor
step
    .goto 62,44.11,17.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gershala|r
    .complete 13518,2 --1/1 Gershala Nightwhisper rescued
	.target Gershala Nightwhisper
step
    .goto 62,44.58,19.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Whiteclaw|r
    .complete 13518,1 --1/1 Cerellean Whiteclaw rescued
	.target Cerellean Whiteclaw
step
	#label finalrescue
    .goto 62,42.91,21.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shaldyn|r
    .complete 13518,3 --1/1 Shaldyn rescued
	.target Shaldyn
step
    .goto 62,46.22,17.15,40,0
    .goto 62,44.85,17.07
    .goto 62,44.06,20.31
    .goto 62,42.91,21.51
    .goto 62,46.22,17.15
    >>Tötet |cRXP_ENEMY_Vile Sprays|r
    .complete 13522,1 --8/8 Vile Spray slain
	.mob Vile Spray
step
    .goto 62,50.21,19.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ranger Glynda Nal'Shea|r
    .turnin 13522 >>Gebt die Quest Gefahr aus dem Wasser ab
	.target Ranger Glynda Nal'Shea
step
    .goto 62,51.78,17.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dentaria Silverglade|r
    .turnin 13518 >>Gebt die Quest Die letzte Welle Überlebender ab
	.target Dentaria Silverglade
step
    .goto 62,51.8,18.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Serendia Eichwisper|r |cFFfa9602läuft die Treppe in der Taverne hinauf und hinunter|r
    .accept 13520 >>Akzeptiert die Quest Der Segen der Meere
	.target Serendia Oakwhisper
step
    .goto 62,50.964,18.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Innkeeper Kyteran|r
    .home >>Setzt von Euch Ruhestein in Lor'danel
    .target Innkeeper Kyteran
step
    .goto 62,51.14,19.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wizbang Cranktoggle|r
    .accept 13521 >>Akzeptiert die Quest Dröhnkiste 413
	.target Wizbang Cranktoggle
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Corrupted Tide Crawlers|r. Plündert sie für |cRXP_LOOT_Crawler Flesh|r
    .complete 13521,1 --4/4 Corrupted Tide Crawler Flesh
	.mob Corrupted Tide Crawler
step
    .goto 62,52.41,19.60,20,0
    .goto 62,52.50,16.62,20,0
    .goto 62,52.57,17.53,20,0
    .goto 62,53.18,18.53,20,0
    .goto 62,52.41,19.60
    >>Sammelt Beute von den |cRXP_PICK_Encrusted Clams|r unter Wasser
    .complete 13520,1 --16/16 Encrusted Clam Muscle
step
    .goto 62,52.41,19.60,20,0
    .goto 62,52.50,16.62,20,0
    .goto 62,52.57,17.53,20,0
    .goto 62,53.18,18.53,20,0
    .goto 62,52.41,19.60
    >>Tötet |cRXP_ENEMY_Corrupted Tide Crawlers|r. Plündert sie für |cRXP_LOOT_Crawler Flesh|r
    .complete 13521,1 --4/4 Corrupted Tide Crawler Flesh
	.mob Corrupted Tide Crawler
step
    .goto 62,53.24,19.64
    >>Klickt |cRXP_PICK_Dröhnkiste 413|r auf dem Boden
    .turnin 13521 >>Gebt die Quest Dröhnkiste 413 ab
    .accept 13527 >>Akzeptiert die Quest Über Geschmack lässt sich nicht streiten
step
    .goto 62,55.1,21.0
    >>Sammelt Beute von |cRXP_FRIENDLY_Verrottenden Distelbären|r
    .complete 13527,1 --1/1 Foul Bear Carcass Sample
	.target Decomposing Thistle Bear
step
    .goto 62,51.17,19.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wizbang Cranktoggle|r
    .turnin 13527 >>Gebt die Quest Über Geschmack lässt sich nicht streiten ab
    .accept 13528 >>Akzeptiert die Quest Dröhnkiste 723
	.target Wizbang Cranktoggle
step
    #xprate >1.59
    #optional
    .maxlevel 18,DarkshoreEnd
step
    .goto 62,50.90,18.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Serendia Eichwisper|r |cFFfa9602läuft die Treppe in der Taverne hinauf und hinunter.|r
    .turnin 13520 >>Gebt die Quest Der Segen der Meere ab
	.target Serendia Oakwhisper
step << Priest
    .goto 62,50.647,19.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Irlara Morninglight|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Irlara Morninglight
step << Hunter
    .goto 62,50.352,19.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lanla Bowleaf|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Lanla Bowleaf
step << Mage
    .goto 62,50.465,19.210
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lareth Beld|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Lareth Beld
step << Warlock
    .goto 62,50.487,19.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Laera Dubois|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Laera Dubois
step << Rogue
    .goto 62,50.684,18.509
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kenral Nightwind|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Kenral Nightwind
step << Warrior
    .goto 62,50.831,18.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sentinel Moonwing|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Sentinel Moonwing
step << Druid
    .goto 62,50.120,19.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dular|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Dular
step
    .goto 62,52.96,25.46,40,0
    .goto 62,54.02,25.28,40,0
    .goto 62,55.73,23.95,40,0
    .goto 62,54.87,27.67,40,0
    .goto 62,52.96,25.46
    >>Tötet |cRXP_ENEMY_Bears|r. Plündert sie für |cRXP_LOOT_Corrupted Distelbär Fledder|r
    .complete 13528,1 --6/6 Corrupted Thistle Bear Guts
	.mob Corrupted Thistle Bear
	.mob Corrupted Thistle Bear Matriarch
	.mob Thistle Bear Cub
step
    .goto 62,54.17,29.24
    >>Klickt |cRXP_PICK_Dröhnkiste 723|r auf dem Boden
    .turnin 13528 >>Gebt die Quest Dröhnkiste 723 ab
    .accept 13554 >>Akzeptiert die Quest Heilung im Dunkeln
step
    #label itall
    .goto 62,56.26,27.41,40,0
    .goto 62,56.78,30.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun|r
    .accept 13529 >>Akzeptiert die Quest Der Ursprung der Verderbnis
	.target Tharnariun
step
    #completewith GrellsIchor
	>>Tötet |cRXP_ENEMY_Vile Grells|r und |cRXP_ENEMY_Vile Corrupters|r. Beutet sie nach |cRXP_LOOT_Foul Ichor|r und dem |T134245:0|t[|cRXP_LOOT_Generalschlüssel des Verderbers|r] aus
    .use 44927 >>|cRXP_WARN_Use the|r |T134245:0|t[|cRXP_LOOT_Generalschlüssel des Verderbers|r] |cRXP_WARN_to start the quest|r
    .complete 13529,2 --8/8 Vile Grell slain
    .complete 13554,1 --6/6 Foul Ichor
	.collect 44927,1,13557
    .accept 13557 >>Akzeptiert die Quest Der Wächter des Glücks
	.mob Vile Grell
	.mob Vile Corruptor
step
    .goto 62,57.51,32.31,15,0
    .goto 62,58.58,32.24,15,0
    .goto 62,58.13,32.84,15,0
    .goto 62,57.34,33.00,15,0
    .goto 62,57.17,32.12,15,0
    .goto 62,56.97,32.66,15,0
    .goto 62,56.58,33.64,15,0
    .goto 62,57.10,34.18
    >>Öffnet |cRXP_PICK_Käfige|r überall in der Höhle
	.complete 13557,1
step
    .goto 62,58.41,33.08
    >>Tötet |cRXP_ENEMY_Zenn Foulhoof|r
    >>|cRXP_ENEMY_Zenn Faulhuf|r |cRXP_WARN_ist auf der untersten Ebene der Höhle|r
    .complete 13529,1 --1/1 Zenn Foulhoof slain
	.mob Zenn Foulhoof
step
    #label GrellsIchor
    .goto 62,56.79,33.52,20,0
    .goto 62,57.43,33.75
    >>Klickt |cRXP_PICK_Ekelhafte Werkbank|r am hinteren Ende der Höhle
    .accept 13831 >>Akzeptiert die Quest Besorgniserregende Rezepte
step
    .goto 62,57.51,32.31,30,0
    .goto 62,58.58,32.24,30,0
    .goto 62,58.13,32.84,30,0
    .goto 62,57.34,33.0,30,0
    .goto 62,57.17,32.12,30,0
    .goto 62,56.97,32.66,30,0
    .goto 62,56.58,33.64,30,0
    .goto 62,57.10,34.18
	>>Tötet |cRXP_ENEMY_Vile Grells|r und |cRXP_ENEMY_Vile Corrupters|r. Beutet sie nach |cRXP_LOOT_Foul Ichor|r und dem |T134245:0|t[|cRXP_LOOT_Generalschlüssel des Verderbers|r] aus
    .use 44927 >>|cRXP_WARN_Use the|r |T134245:0|t[|cRXP_LOOT_Generalschlüssel des Verderbers|r] |cRXP_WARN_to start the quest|r
    .complete 13529,2 --8/8 Vile Grell slain
    .complete 13554,1 --6/6 Foul Ichor
	.collect 44927,1,13557
    .accept 13557 >>Akzeptiert die Quest Der Wächter des Glücks
	.mob Vile Grell
	.mob Vile Corruptor
step
    #completewith next
    .hs >> Benutzt euren Ruhestein zum Lor'Danel
    .cooldown item,6948,>2
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wizbang Cranktoggle|r und |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 13554 >>Gebt die Quest Heilung im Dunkeln ab
	.target +Wizbang Cranktoggle
    .goto 62,51.142,19.658
    .turnin 13557 >>Gebt die Quest Besorgniserregende Rezepte ab
    .turnin 13831 >>Gebt die Quest Besorgniserregende Rezepte ab
    .turnin 13529 >>Gebt die Quest Der Ursprung der Verderbnis ab
	.target +Tharnariun Treetender
    .goto 62,51.134,19.709
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Volcor|r
    .target Volcor
    .accept 13564 >>Akzeptiert die Quest Ein verlorener Freund
    .goto 62,50.943,18.026
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .target Cerellean Whiteclaw
    .accept 13563 >>Akzeptiert die Quest Ewige Liebe
    .goto 62,50.821,17.884
step
    .goto 62,50.649,19.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ranger Glynda Nal'Shea|r
    >>|cRXP_FRIENDLY_Waldläuferin Glynda Nal'Shea|r |cRXP_WARN_patrols throughout Lor'danel|r
    .target Ranger Glynda Nal'Shea
    .accept 13562 >>Akzeptiert die Quest Die letzte Flamme von Bashal'Aran
step
    .goto 62,46.807,33.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Arya Autumnlight|r
    .target Arya Autumnlight
    .accept 13561 >>Akzeptiert die Quest Trost für die Hochgeborenen
step
    .goto 62,45.958,34.240
    >>Klickt |cRXP_PICK_Die letzte Flamme von Bashal'Aran|r auf dem Boden
    .complete 13562,1
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Verfluchte Hochgeborene|r und |cRXP_ENEMY_Zuckender Hochgeborener|r
    .complete 13561,1 --|6/6 Cursed Highborne slain
    .mob +Cursed Highborne
    .complete 13561,2 --|6/6 Writhing Highborne slain
    .mob +Writhing Highborne
step
    .goto 62,48.482,36.634
    >>Tötet |cRXP_ENEMY_Anaya Dawnrunner|r. Plündert sie für |cRXP_LOOT_Anayas Anhänger|r
    .complete 13563,1 --|1/1 Anaya Dawnrunner slain
    .complete 13563,2 --|1/1 Anaya's Pendant
    .unitscan Anaya Dawnrunner
step
    .goto 62,47.180,35.201
    >>Tötet |cRXP_ENEMY_Verfluchte Hochgeborene|r und |cRXP_ENEMY_Zuckender Hochgeborener|r
    .complete 13561,1 --|6/6 Cursed Highborne slain
    .mob +Cursed Highborne
    .complete 13561,2 --|6/6 Writhing Highborne slain
    .mob +Writhing Highborne
step
    .goto 62,46.807,33.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Arya Autumnlight|r
    .target Arya Autumnlight
    .turnin 13561 >>Gebt die Quest Trost für die Hochgeborenen ab
step
    .goto 62,42.954,39.006
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Keeper Karithus|r
    .target Keeper Karithus
    .turnin 13564 >>Gebt die Quest Ein verlorener Freund ab
    .accept 13566 >>Akzeptiert die Quest Ritualmaterialien
    .accept 13598 >>Akzeptiert die Quest Widerliche Arznei
step
    .goto 62,42.932,38.958
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Seraphine|r
    .target Seraphine
    .accept 13565 >>Akzeptiert die Quest Zweiten Grades
step
    .goto 62,40.944,38.615
    >>Klickt |cRXP_PICK_Moonstalkers|r, die neben den Bäumen schlafen, um ihre |cRXP_LOOT_Schnurri|r zu plündern
    *|cRXP_WARN_Nur manche der Mobs sind neutral und können geplündert werden|r
    .complete 13566,1 --|3/3 Moonstalker Whisker
    .mob Moonstalker
step
    .goto 62,45.206,41.222
    >>Sammelt die |cRXP_PICK_Mottled Does|r für ihre |cRXP_LOOT_Haare|r
    .complete 13566,2 --|3/3 Tuft of Mottled Doe Hair
    .mob Mottled Doe
step
    #label janira
    #sticky
    .goto 62,48.554,40.330
    >>Tötet |cRXP_ENEMY_Lady Janira|r
    .complete 13565,1 --|1/1 Lady Janira slain
    .unitscan Lady Janira
step
#loop
    .goto 62,47.071,41.609,0
    .goto 62,47.429,40.389,0
    .goto 62,48.422,40.225,0
    .goto 62,49.074,39.158,0
    .goto 62,47.071,41.609,30,0
    .goto 62,47.429,40.389,30,0
    .goto 62,48.422,40.225,30,0
    .goto 62,49.074,39.158,30,0
    .goto 62,48.422,40.225,30,0
    .goto 62,48.422,40.225,30,0
    >>Plündert die |cRXP_LOOT_Fuming Toadstools|r vom Boden
    .use 45911 >>Tötet die |cRXP_ENEMY_Darkscale-Späher|r. |cRXP_WARN_Benutzt den|r |T134413:0|t[Versteinerte Wurzel] |cRXP_WARN_auf ihren Leichen|r
    .complete 13598,1 --|6/6 Fuming Toadstool
    .complete 13565,2 --|6/6 Withered Ents called
    .mob Darkscale Scout
step
#loop
    .goto 62,48.579,38.630,0
    .goto 62,46.459,38.829,0
    .goto 62,48.579,38.630,30,0
    .goto 62,46.459,38.829,30,0
    >>Sammelt die |cRXP_PICK_Hungrige Thistle-Bären|r neben dem Fluss für ihr |cRXP_LOOT_Fell|r
    *|cRXP_WARN_Nur manche der Mobs sind neutral und können geplündert werden|r
    .complete 13566,3 --|3/3 Thistle Bear Fur
step
    #requires janira
    .goto 62,42.932,38.958
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Seraphine|r
    .target Seraphine
    .turnin 13565 >>Gebt die Quest Zweiten Grades ab
step
    .goto 62,42.954,39.006
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Keeper Karithus|r
    .target Keeper Karithus
    .turnin 13566 >>Gebt die Quest Ritualmaterialien ab
    .turnin 13598 >>Gebt die Quest Widerliche Arznei ab
    .accept 13569 >>Akzeptiert die Quest Der Bund des Rituales
step
    #completewith next
    .goto 62,42.938,39.031
    .aura 64198 >> Sammelt das |cRXP_PICK_Grovekeeper's Räucherwerk|r vom Boden
    .skipgossip
step
    .goto 62,43.683,39.926
    .turnin 13567>>Sprecht mit dem |cRXP_FRIENDLY_Großer Hirschgeist|r
    .disablecheckbox
    .complete 13569,1
    .target Great Stag Spirit
step
#requires janira
    .goto 62,42.960,38.956
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Keeper Karithus|r
    .target Keeper Karithus
    .turnin 13569 >>Gebt die Quest Der Bund des Rituales ab
    .accept 13599 >>Akzeptiert die Quest Grimmklaues Rückkehr
step
    .xp 13
--Grinding checkpoint, likely won't be needed at all
----CENTRAL DARKSHORE

step
    .isOnQuest 13601
    .goto 62,42.596,45.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Priestess Alinya|r
    .target Priestess Alinya
    .turnin 13601 >>Gebt die Quest Hilfe für die Flüchtlinge ab
step
    #xprate >1.59
    #optional
    .maxlevel 18,DarkshoreEnd
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sentinel Selarin|r und |cRXP_FRIENDLY_Corvine Moonrise|r
    .accept 13542 >>Akzeptiert die Quest Gegen den Wind
    .goto 62,42.513,45.154
    .target +Sentinel Selarin
    .accept 13543 >>Akzeptiert die Quest Drei Hammer zu Brechen...
    .accept 13573 >>Akzeptiert die Quest Malfurions Rückkehr
    .goto 62,42.681,45.151
    .target +Corvine Moonrise
step
    #completewith WindmasterTzuTzu
    >>Tötet |cRXP_ENEMY_Frenzied Cyclones|r. Plündert sie für |T236968:0|t[|cRXP_LOOT_Frenzied Wirbelsturm Bracers|r]
    .collect 44868,8,13542,1
    .mob Frenzied Cyclone
step
    .goto 62,40.818,41.476
    >>Tötet |cRXP_ENEMY_Cloudtamer Wildmane|r
    .complete 13543,1 --|1/1 Cloudtamer Wildmane slain
    .mob Cloudtamer Wildmane
step
    .goto 62,39.159,38.314
    >>Tötet |cRXP_ENEMY_Skylord Braax|r
    .complete 13543,3 --|1/1 Skylord Braax slain
    .mob Skylord Braax
step
    #label WindmasterTzuTzu
    .goto 62,37.829,42.721
    >>Tötet |cRXP_ENEMY_Cloudtamer Wildmane|r
    .complete 13543,2 --|1/1 Windmaster Tzu-Tzu slain
    .mob Windmaster Tzu-Tzu
step
    #loop
    .goto 62,39.466,42.096,0
    .goto 62,40.585,41.779,40,0
    .goto 62,39.379,39.127,40,0
    .goto 62,37.963,43.867,40,0
    >>Tötet |cRXP_ENEMY_Frenzied Cyclones|r. Plündert sie für |T236968:0|t[|cRXP_LOOT_Frenzied Wirbelsturm Bracers|r]
    .collect 44868,8,13542,1
    .mob Frenzied Cyclone
step
    .goto 62,39.466,42.096
    .use 44868 >>|cRXP_WARN_Benutzt die|r |T236968:0|t[Armschienen des rasenden Zyklons] |cRXP_WARN_neben dem Auberdine Mondquell|r
    .complete 13542,1 --|8/8 Frenzied Cyclone bracers destroyed
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sentinel Selarin|r und |cRXP_FRIENDLY_Corvine Moonrise|r
    .turnin 13542 >>Gebt die Quest Gegen den Wind ab
    .goto 62,42.513,45.154
    .target +Sentinel Selarin
    .turnin 13543 >>Gebt die Quest Drei Hammer zu Brechen... ab
    .goto 62,42.681,45.151
    .target +Corvine Moonrise

--
step
    .goto 62,43.662,53.441
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Malfurion Sturmgrimm|r
    .target Malfurion Stormrage
    .turnin 13573 >>Gebt die Quest Malfurions Rückkehr ab
    .accept 13575 >>Akzeptiert die Quest Das Landen liegt in ihrem Blut
    .accept 13577 >>Akzeptiert die Quest Der letzte Wildekin
    .accept 13579 >>Akzeptiert die Quest Der Beschützer von Ameth'Aran
--
step
    .goto 62,45.584,48.470
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aroom|r
    .target Aroom
    .turnin 13577 >>Gebt die Quest Der letzte Wildekin ab
    .accept 13578 >>Akzeptiert die Quest Arooms Abschied
step
#loop
    .goto 62,45.015,47.835,0
    .goto 62,44.704,45.966,40,0
    .goto 62,46.463,47.371,40,0
    .goto 62,45.046,49.702,40,0
    .goto 62,43.670,47.028,40,0
    >>Plündert die |cRXP_LOOT_Slain Wildkin Federn|r vom Boden
    .complete 13578,1 --|8/8 Slain Wildkin Feather
step
    .goto 62,45.584,48.470
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aroom|r
    .target Aroom
    .turnin 13578 >>Gebt die Quest Arooms Abschied ab
    .accept 13582 >>Akzeptiert die Quest Das Feuer Elunes
step
#loop
    .goto 62,46.875,50.147,0
    .goto 62,46.875,50.147,40,0
    .goto 62,45.698,52.584,40,0
    .goto 62,46.867,50.276,40,0
    >>Tötet |cRXP_ENEMY_Horoo der Flammenbewahrer|r. Plündert ihn für |cRXP_LOOT_Elunes Fackel|r
    >>|cRXP_ENEMY_Horoo der Flammenbewahrer|r |cRXP_WARN_patrouilliert leicht|r
    .complete 13582,1 --|1/1 Elune's Torch
    .unitscan Horoo the Flamekeeper
step
    .goto 62,45.584,48.470
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aroom|r
    .target Aroom
    .turnin 13582 >>Gebt die Quest Das Feuer Elunes ab
    .accept 13583 >>Akzeptiert die Quest Der Schwur der Wildekin
--
step
    .goto 62,40.945,56.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elder Brownpaw|r
    .target Elder Brownpaw
    .turnin 13575 >>Gebt die Quest Das Landen liegt in ihrem Blut ab
    .accept 13576 >>Akzeptiert die Quest Gegenseitige Hilfe

step
#loop
    .goto 62,40.288,61.724,0
    .goto 62,40.576,59.527,40,0
    .goto 62,39.982,63.824,40,0
    .use 44959 >>Tötet |cRXP_ENEMY_Unbound Feuer Elementals|r
    >>|cRXP_WARN_Benutzt das|r |T136061:0|t[Besänftigung Totem] |cRXP_WARN_auf ihren Leichen|r
    .complete 13576,1 --|8/8 Unbound Fire Elemental absorbed
    .mob Unbound Fire Elemental
step
    .goto 62,40.945,56.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elder Brownpaw|r
    .target Elder Brownpaw
    .turnin 13576 >>Gebt die Quest Gegenseitige Hilfe ab
    .accept 13580 >>Akzeptiert die Quest Die Elemente beruhigen
step
    #completewith next
    .goto 62,38.77,60.82,25,0
    .goto 62,39.66,62.12,30 >> Reist zum Altar an der Spitze des kleinen Hügels
step
    .goto 62,39.66,62.12
    .cast 65361 >> |cRXP_WARN_Benutzt das|r |T135839:0|t[Aufgeladenes Beruhigungstotem] |cRXP_WARN_neben dem Altar und verteidigt es dann|r
    .use 46546
    .isOnQuest 13580
step
    .goto 62,39.66,62.12
    .use 46546 >> |cRXP_WARN_Verteidigt das|r |T135839:0|t[Aufgeladenes Beruhigungstotem] |cRXP_WARN_gegen die Angreifer|r
    .complete 13580,1 --|1/1 Ritual of Soothing complete
    .mob Fire Elemental Remnant
    .mob Fire Elemental Rager
step
    .goto 62,40.945,56.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elder Brownpaw|r
    .target Elder Brownpaw
    .turnin 13580 >>Gebt die Quest Die Elemente beruhigen ab
    .accept 13581 >>Akzeptiert die Quest Der Schwur der Schwarzfelle
--
step
    .goto 62,44.442,56.757
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Selenn|r
    .target Selenn
    .turnin 13579 >>Gebt die Quest Der Beschützer von Ameth'Aran ab
    .accept 13584 >>Akzeptiert die Quest Die Erde beruhigen
step
#loop
    .goto 62,43.922,59.006,0
    .goto 62,45.281,58.363,40,0
    .goto 62,42.966,60.120,40,0
    .goto 62,45.190,56.295,40,0
    >>Tötet |cRXP_ENEMY_Enraged Erde Elementals|r
    .complete 13584,1 --|8/8 Enraged Earth Elemental slain
    .mob Enraged Earth Elemental
step
    .goto 62,44.442,56.757
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Selenn|r
    .target Selenn
    .turnin 13584 >>Gebt die Quest Die Erde beruhigen ab
    .accept 13585 >>Akzeptiert die Quest Schwur der Wache
step
    .goto 62/1,192.60001,5918.10010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Malfurion Sturmgrimm|r
    .target Malfurion Stormrage
    .turnin 13581 >>Gebt die Quest Der Schwur der Schwarzfelle ab
    .turnin 13583 >>Gebt die Quest Der Schwur der Wildekin ab
    .turnin 13585 >>Gebt die Quest Der Eid, zu beschützen ab
    .accept 13586 >>Akzeptiert die Quest Der Smaragdgrüne Traum
--
step
#completewith next
    .goto 62,46.620,54.478,25,0
    .goto 62,47.366,55.964,25 >> Geht zur Erdspaltergrotte
    .subzoneskip 4708
step
    .goto 62,49.003,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tKlickt das Alptraumportal und sprecht mit |cRXP_FRIENDLY_Thessera|r
    .target Thessera
    .turnin 13586 >>Gebt die Quest Der Smaragdgrüne Traum ab
    .accept 13587 >>Akzeptiert die Quest Der erwachende Alptraum
step
    .goto 62,49.06,55.97,40,0
    .goto 62,50.115,55.431
    >>Tötet die |cRXP_ENEMY_Nightmare Wächter|r. Plündert sie für |cRXP_LOOT_Emerald Rolle|r
    .complete 13587,1 --|1/1 Emerald Scroll
    .mob Nightmare Guardian
step
    .goto 62,49.210,56.935
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thessera|r
    .target Thessera
    .turnin 13587 >>Gebt die Quest Der erwachende Alptraum ab
    .accept 13940 >>Akzeptiert die Quest Den Traum verlassen
    .timer 30,Den Traum verlassen RP
step
    .goto 62/1,192.60001,5918.10010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Malfurion Sturmgrimm|r
    .target Malfurion Stormrage
    .turnin 13940 >> Gebt die Quest Den Traum verlassen ab
    .accept 13588 >> Akzeptiert die Quest Das Auge aller Stürme
step
    .goto 62,43.555,53.701
    >>Sprecht mit |cRXP_FRIENDLY_Thessera|r, um zu fliegen. Benutzt ihre erste Fähigkeit, um die |cRXP_ENEMY_Zwielicht-Reiter|r und das |cRXP_ENEMY_Zwielichtportal|r in der Mitte zu töten
    .complete 13588,1 --|1/1 Twilight Portal slain
    .mob +Twilight Portal
    .complete 13588,2 --|12/12 Twilight Rider slain
    .mob +Twilight Rider
    .target Thessera
step
    .goto 62,43.647,53.432
    >>Benutzt die zweite Fähigkeit, um den Drachen von Euch zu landen
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Malfurion Sturmgrimm|r
    .target Malfurion Stormrage
    .turnin 13588 >>Gebt die Quest Das Auge aller Stürme ab
    .usespell 65579--landing spell, not sure if it works

----
step
    #completewith next
    .hs >> Benutzt euren Ruhestein zum Lor'danel
step
#sticky
#label glynda2
    .goto 62,50.649,19.992,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ranger Glynda Nal'Shea|r
    >>|cRXP_FRIENDLY_Waldläuferin Glynda Nal'Shea|r |cRXP_WARN_patrols throughout Lor'danel|r
    .target Ranger Glynda Nal'Shea
    .turnin 13562 >>Gebt die Quest Die letzte Flamme von Bashal'Aran ab
    .accept 13589 >>Akzeptiert die Quest Die Eindringlinge der Splitterspeere
step
    .goto 62,50.90,18.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Serendia Eichwisper|r |cFFfa9602läuft die Treppe in der Taverne hinauf und hinunter.|r
    .turnin 13599 >>Gebt die Quest Grimmklaues Rückkehr ab
	.target Serendia Oakwhisper
step
    .goto 62,50.825,17.935
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .target Cerellean Whiteclaw
    .turnin 13563 >>Gebt die Quest Ewige Liebe ab
step << skip
#requires glynda2
    .goto 62,50.986,19.229
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gorbold Steelhand|r
    .target Gorbold Steelhand
    .accept 13560 >>Akzeptiert die Quest Der nicht so tiefe Ozean
step << skip--terrible xp/hr
    .goto 62,52.954,11.045,0
    .goto 62,52.954,11.045,15,0
    >>Klickt die |cRXP_PICK_Lockvogel-Bot-Steuerkonsole|r neben Gary
    .target Gary
    >>Benutzt den Roboter, um Murlocs in der Nähe der versunkenen Schiffe zu töten
    .complete 13560,1

step << Priest
    .goto 62,50.647,19.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Irlara Morninglight|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Irlara Morninglight
step << Hunter
    .goto 62,50.352,19.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lanla Bowleaf|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Lanla Bowleaf
step << Mage
    .goto 62,50.465,19.210
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lareth Beld|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Lareth Beld
step << Warlock
    .goto 62,50.487,19.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Laera Dubois|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Laera Dubois
step << Rogue
    .goto 62,50.684,18.509
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kenral Nightwind|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Kenral Nightwind
step << Warrior
    .goto 62,50.831,18.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sentinel Moonwing|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Sentinel Moonwing
step << Druid
    .goto 62,50.120,19.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dular|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Dular
step
    #optional
    .maxlevel 18,DarkshoreEnd
step
#requires glynda2
    .goto 62,58.912,19.448
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lieutenant Morra Starbreeze|r
    .target Lieutenant Morra Starbreeze
    .turnin 13589 >>Gebt die Quest Die Eindringlinge der Splitterspeere ab
step
    .goto 62,58.893,19.411
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Tysha Moonblade|r
    .accept 13504 >>Akzeptiert die Quest Arbeiter der Splitterspeere
    .target Sentinel Tysha Moonblade
step
    .goto 62,58.880,19.530
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Balthule Schattenhieb|r
    .accept 13505 >>Akzeptiert die Quest Relikte der Hochgeborenen
    .target Balthule Shadowstrike
step
    #sticky
    #label overseer
#loop
    .waypoint 62,60.342,17.689,45,0
    .waypoint 62,60.691,13.745,45,0
    .waypoint 62,63.258,15.511,45,0
    .waypoint 62,62.593,19.890,45,0
    .goto 62,61.832,17.573,0,0
    .use 44979>>Tötet |cRXP_ENEMY_Shatterspear Overseers|r. Plündert sie für |T134939:0|t[|cRXP_LOOT_Overseer's Orders|r]
    >>|cRXP_WARN_Benutzt|r |T134939:0|t[|cRXP_LOOT_Befehle des Aufsehers|r] |cRXP_WARN_um die Quest zu starten|r
    .unitscan Shatterspear Overseer
    .collect 44979,1,13506
    .accept 13506 >>Akzeptiert die Quest Grund zur Sorge

step
#loop
    .goto 62,60.342,17.689,45,0
    .goto 62,60.691,13.745,45,0
    .goto 62,63.258,15.511,45,0
    .goto 62,62.593,19.890,45,0
    .line 62,60.342,17.689,60.691,13.745,63.258,15.511,62.593,19.890,60.342,17.689
    >>Tötet |cRXP_ENEMY_Shatterspear Laborers|r
    >>Plündert |cRXP_LOOT_Relikte der Hochgeborenen|r vom Boden
    .complete 13504,1 --|10/10 Shatterspear Laborer slain
    .complete 13505,1 --|8/8 Highborne Relic
    .mob Shatterspear Laborer
step
    #requires overseer
    .goto 62,58.880,19.530
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Balthule Schattenhieb|r
    .turnin 13505 >>Gebt die Quest Relikte der Hochgeborenen ab
    .target Balthule Shadowstrike
step
    .goto 62,58.893,19.411
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Tysha Moonblade|r
    .turnin 13504 >>Gebt die Quest Arbeiter der Splitterspeere ab
    .accept 13507 >>Akzeptiert die Quest Verwehrt ihnen die Arbeit
    .target Sentinel Tysha Moonblade
step
    .goto 62,58.912,19.448
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lieutenant Morra Starbreeze|r
    .target Lieutenant Morra Starbreeze
    .turnin 13506 >>Gebt die Quest Grund zur Sorge ab
    .accept 13508 >>Akzeptiert die Quest Schnelle Reaktion
    .turnin 13505 >>Gebt die Quest Relikte der Hochgeborenen ab
    .accept 13509 >>Akzeptiert die Quest Kriegsvorräte
step
#completewith escort1a
    .goto 62,62.143,9.604,0
    >>Tötet |cRXP_ENEMY_Horde Enforcers|r und |cRXP_ENEMY_Shatterspear Mystics|r
    .use 44999 >> |cRXP_WARN_Benutzt|r |T135433:0|t[Wächtereule Fackel] |cRXP_WARN_auf die |cRXP_PICK_Shatterspear Armaments|r um das Horde-Lager|r
    .complete 13507,1 --|6/6 Horde Enforcer slain
    .mob +Horde Enforcer
    .complete 13507,2 --|6/6 Shatterspear Mystic slain
    .mob +Shatterspear Mystic
    .complete 13509,1 --|12/12 Shatterspear Armaments burned
step
    .goto 62,63.757,6.014
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .target Alanndarian Nightsong
    .turnin 13508 >>Gebt die Quest Schnelle Reaktion ab
    .accept 13511 >>Akzeptiert die Quest Ein verbitterter Wunsch
step
    .goto 62,64.122,5.336
    >>Tötet |cRXP_ENEMY_Rit'ko|r. Plündert sie für |cRXP_LOOT_Shatterspear Torturer's Käfigschlüssel|r
    .complete 13511,1 --|1/1 Rit'ko slain
    .collect 45040,1,13510--Key
    .mob Rit'ko
step
    .goto 62,64.500,5.455
    >>Klickt |cRXP_PICK_Splitterspeeren-Käfig|r
    .target Sentinel Aynasha
    .accept 13510 >>Akzeptiert die Quest Rechtzeitige Ankunft
step
    #label escort1a
    .goto 62,60.21,6.9
    >>|cRXP_WARN_Begleitet|r |cRXP_FRIENDLY_Schildwache Aynasha|r
    .complete 13510,1
    .target Sentinel Aynasha
step
#loop
    .goto 62,62.929,8.213,30,0
    .goto 62,61.720,11.021,30,0
    .goto 62,62.143,9.604,0
    >>Tötet |cRXP_ENEMY_Horde Enforcers|r und |cRXP_ENEMY_Shatterspear Mystics|r
    .use 44999 >> |cRXP_WARN_Benutzt|r |T135433:0|t[Wächtereule Fackel] |cRXP_WARN_auf die |cRXP_PICK_Shatterspear Armaments|r um das Horde-Lager|r
    .complete 13507,1 --|6/6 Horde Enforcer slain
    .mob +Horde Enforcer
    .complete 13507,2 --|6/6 Shatterspear Mystic slain
    .mob +Shatterspear Mystic
    .complete 13509,1 --|12/12 Shatterspear Armaments burned
step
    .goto 62,58.893,19.411
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Tysha Moonblade|r
    .turnin 13507 >>Gebt die Quest Verwehrt ihnen die Arbeit ab
    .target Sentinel Tysha Moonblade
step
    .goto 62,58.912,19.448
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lieutenant Morra Starbreeze|r
    .target Lieutenant Morra Starbreeze
    .turnin 13509 >>Gebt die Quest Kriegsvorräte ab
    .turnin 13510 >>Gebt die Quest Rechtzeitige Ankunft ab
    .turnin 13511 >>Gebt die Quest Ein verbitterter Wunsch ab
    .accept 13512 >>Akzeptiert die Quest Strategische Schläge
step
    .goto 62,58.880,19.530
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Balthule Schattenhieb|r
    .accept 13513 >>Akzeptiert die Quest Kein Zurück
    .target Balthule Shadowstrike
step
    .goto 62,59.154,19.624
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mathas Wildwood|r
    .target Mathas Wildwood
    .accept 13844 >>Akzeptiert die Quest Althalaxx plündern
step
#sticky
#label sheya
    .goto 62,61.233,20.367
    .use 44995 >> |cRXP_WARN_Benutzt|r |T136021:0|t[Dryadenspeer] |cRXP_WARN_um zu töten|r |cRXP_ENEMY_Sheya Sturmwirker|r
    .complete 13512,2 --|1/1 Sheya Stormweaver slain
    .mob Sheya Stormweaver
step
#sticky
#loop
#label shamans
    .waypoint 62,61.233,20.367,20,0
    .waypoint 62,56.801,25.781,20,0
    .waypoint 62,61.233,20.367,0
    .waypoint 62,56.801,25.781,0
    >>Tötet |cRXP_ENEMY_Shatterspear Shamans|r. Plündert sie für |cRXP_LOOT_Shatterspear Amulets|r
    .complete 13513,1 --|6/6 Shatterspear Amulet
    .mob Shatterspear Shaman
step
#requires sheya
    .goto 62,58.242,23.971
    >>Tötet |cRXP_ENEMY_Teegan Holloway|r oben auf dem Turm
    >>Beute |cRXP_LOOT_Narassin's Foliant|r auf der mittleren Ebene des Turms
    .complete 13844,1 --|1/1 Teegan Holloway slain
    .complete 13844,2 --|1/1 Narassin's Tome
    .mob Teegan Holloway
step
    .goto 62,56.801,25.781
    .use 44995 >> |cRXP_WARN_Benutzen|r |T136021:0|t[Dryadenspeer] |cRXP_WARN_um zu töten|r |cRXP_ENEMY_Lorenth Donnerruf|r
    .complete 13512,1 --|1/1 Lorenth Thundercall slain
    .mob Lorenth Thundercall
step--TODO: Fix this bit
#requires shamans
    .goto 1439/1,-804.20001,7376.39990
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mathas Wildwood|r
    .target Mathas Wildwood
    .turnin 13844 >>Gebt die Quest Althalaxx Plündern ab
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Balthule Schattenhieb|r
    .goto 1439/1,-791.50000,7381.60010
    .turnin 13513 >>Gebt die Quest Kein Zurück ab
    .target Balthule Shadowstrike
step
    .goto 1439/1,-792.79999,7384.80029
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lieutenant Morra Starbreeze|r
    .turnin 13512 >>Gebt die Quest Strategische Schläge ab
    .accept 13590 >>Akzeptiert die Quest An vorderster Front
    .target Lieutenant Morra Starbreeze
step
    .goto 1439/1,-1450.59998,7392.20020
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kerlonian Evershade|r
    .accept 13514 >>Akzeptiert die Quest Der Zorn der Urtume
    .target Kerlonian Evershade
step
#completewith next
    .goto 62,69.435,19.546
    .vehicle >> |cRXP_WARN_Aufsitzen|r |cRXP_FRIENDLY_Rachsüchtiger Beschützer|r
    .target Vengeful Protector
step
    .goto 62,70.684,20.841,0
    .goto 62,70.589,16.872,0
    .goto 62,70.684,20.841,50,0
    .goto 62,70.589,16.872,50,0
    >>|cRXP_WARN_Benutzt|r |T136025:0|t[Schockwelle] (1) |cRXP_WARN_um zu töten|r |cRXP_ENEMY_Shatterspear Trolls|r
    >>|cRXP_WARN_Benutzt|r |T135734:0|t[Mondwoge] (2) |cRXP_WARN_um Shatterspear-Gebäude zu verbrennen|r
    .complete 13514,1 --|30/30 Shatterspear Vale Trolls killed
    .mob +Shatterspear Champion
    .mob +Shatterspear Priestess
    .mob +Shatterspear Raider
    .complete 13514,2 --|6/6 Shatterspear Structures destroyed
step
    .isOnQuest 13514
    .exitvehicle >> |cRXP_WARN_Verlassen|r |cRXP_FRIENDLY_Rachsüchtiger Beschützer|r
step
    .goto 62,72.263,19.096
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Huntress Sandrya Mondsturz|r
    .target Huntress Sandrya Moonfall
    .turnin 13590 >>Gebt die Quest An vorderster Front ab
    .accept 13515 >>Akzeptiert die Quest Das Ende der Bedrohung
step
    .isOnQuest 13515
    .goto 62,72.263,19.096
    .gossip 33178,0 >> Sprecht mit |cRXP_FRIENDLY_Jägerin Sandrya Mondsturz|r, um den Angriff zu beginnen
    .skipgossip 33178,1
    .target Huntress Sandrya Moonfall
step
    .goto 62,72.857,18.019
    >>Tötet |cRXP_ENEMY_Jor'kil der Seelenreißer|r. Plündert ihn nach |T133466:0|t[|cRXP_LOOT_Höllschreis Brief|r]
    .use 46318 >>|cRXP_WARN_Benutzen|r |T133466:0|t[|cRXP_LOOT_Höllschreis Brief|r] |cRXP_WARN_um die Quest zu starten|r
    .complete 13515,1 --|1/1 Jor'kil the Soulripper slain
    .collect 46318,1,13591
    .accept 13591 >>Akzeptiert die Quest Beunruhigende Verbindungen
    .mob Jor'kil the Soulripper
step
    .goto 62,72.251,19.095
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Huntress Sandrya Mondsturz|r
    .target Huntress Sandrya Moonfall
    .turnin 13515 >>Gebt die Quest Das Ende der Bedrohung ab
--TODO: Test Logout skip
step
    .goto 62,69.109,19.249
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kerlonian Evershade|r
    .target Kerlonian Evershade
    .turnin 13514 >>Gebt die Quest Der Zorn der Urtume ab
step
    #completewith next
    .hs >> Benutzt euren Ruhestein zum Lor'danel
step << skip
    .goto 62,51.004,19.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gorbold Steelhand|r
    .target Gorbold Steelhand
    .turnin 13560 >>Gebt die Quest Der nicht so tiefe Ozean ab
step
    .goto 62,50.684,19.712
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Waldläuferin Glynda Nal'Shea|r, sie patrouilliert in der Gegend um den Mondbrunnen herum.
    .target Ranger Glynda Nal'Shea
    .turnin 13591 >>Gebt die Quest Beunruhigende Verbindungen ab
step
    .goto 62,50.129,19.461
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .target Cerellean Whiteclaw
    .accept 13570 >>Akzeptiert die Quest Zum Andenken an Auberdine
    .turnin 13570 >>Gebt die Quest Zum Andenken an Auberdine ab
step << Priest
    .goto 62,50.647,19.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Irlara Morninglight|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Irlara Morninglight
step << Hunter
    .goto 62,50.352,19.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lanla Bowleaf|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Lanla Bowleaf
step << Mage
    .goto 62,50.465,19.210
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lareth Beld|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Lareth Beld
step << Warlock
    .goto 62,50.487,19.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Laera Dubois|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Laera Dubois
step << Rogue
    .goto 62,50.684,18.509
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kenral Nightwind|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Kenral Nightwind
step << Warrior
    .goto 62,50.831,18.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sentinel Moonwing|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Sentinel Moonwing
step << Druid
    .goto 62,50.120,19.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dular|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Dular
step
    #optional
    #label DarkshoreEnd

--NORTHERN DARKSHORE END
step
#questguide
#completewith next
    .goto 62,51.724,17.651
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Teldira Moonfeather|r
    .target Teldira Moonfeather
    .fly Grove of the Ancients >>Fliegt nach Der Hain der Uralten
step
#questguide
    .goto 62,45.141,75.174
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Foriel Broadleaf|r
    .target Foriel Broadleaf
    .accept 13525 >>Akzeptiert die Quest Was ist mit den Furbolgs der Schwarzfelle los?
step
#questguide
    .goto 62,45.311,75.131
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Balren von der Klaue|r
    .target Balren of the Claw
    .turnin -13902 >>Gebt die Quest Die Offensive festigen ab
    .accept 13892 >>Akzeptiert die Quest Keine Spuren hinterlassen
step
#questguide
    .goto 62,45.198,74.627
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kathrena Winterwisp|r
    .target Kathrena Winterwisp
    .accept 13881 >>Akzeptiert die Quest Verschlungen
step
#questguide
#completewith furbolgs
    >>Tötet |cRXP_ENEMY_Consumed Thistle Bären|r
    .complete 13881,1
    .mob Consumed Thistle Bear
step
#questguide
    .goto 62,45.031,79.192
    >>|cRXP_WARN_Schwimmt zum |cRXP_PICK_Verschlingendes Artefakt|r unter Wasser|r
    .complete 13881,2 --|Watering Hole Investigated
step
#questguide
    .goto 62,43.524,80.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elder Brolg|r
    .target Elder Brolg
    .turnin 13525 >>Gebt die Quest Was ist mit den Furbolgs der Schwarzfelle los? ab
    .accept 13526 >>Akzeptiert die Quest Der Bärenklau
step
#questguide
#loop
#label furbolgs
    .goto 62,44.749,82.357,40,0
    .goto 62,45.929,83.041,40,0
    .goto 62,45.275,85.286,40,0
    .goto 62,44.143,81.923,40,0
    .goto 62,44.828,83.242,0
    >>Plündert |cRXP_LOOT_Bear's Paws|r vom Boden
    >>|cRXP_WARN_Sie sehen aus wie kleine Pflanzen|r
    .complete 13526,1 --|8/8 Bear's Paw
step
#questguide
    .goto 62,40.634,84.297
    .subzone 449 >> Reist zur Meistergleve
    .isOnQuest 13892
step
#questguide
    #completewith next
    .cast 65426 >> |cRXP_WARN_Benutzt|r |T133236:0|t[Pantherfigur] |cRXP_WARN_um euch in einen Panther zu verwandeln|r
    .use 46696
step
#questguide
    .goto 62,40.634,84.297
    >>|cRXP_WARN_Geht zu |cRXP_ENEMY_Vorarbeiter Balsoth|r und wartet auf das Ende des Rollenspiels|r
    >>|cRXP_WARN_Hinweis: Falls ihr Fallschaden nehmt, verliert ihr den Panther-Buff|r
    .complete 13892,1 --|1/1 Twilight's Hammer surveillance
    .target Foreman Balsoth
    .use 46696
step
#questguide
    .goto 62,45.311,75.131
    >>Klickt auf das Questpopup unter der Minikarte von Euch, um die Quest abzugeben
    >>|cRXP_WARN_Falls ihr dies nicht tun könnt, geht zurück und sprecht mit|r |cRXP_FRIENDLY_Balren von der Klaue|r
    .turnin 13892 >>Gebt die Quest Keine Spuren hinterlassen ab
    .accept 13948 >>Akzeptiert die Quest Verbesserte Beobachtungen
    .target Balren of the Claw
step
#questguide
    .goto 62,39.658,86.384,10,0
    .goto 62,41.056,86.360,10,0
    .goto 62,40.733,85.046,10,0
    .goto 62,39.809,85.356,10,0
    .goto 62,40.101,84.651
    .use 46696 >> |cRXP_WARN_Benutzt|r |T133236:0|t[Pantherfigur] |cRXP_WARN_um euch erneut in einen Panther zu verwandeln|r
    >>|cRXP_WARN_Schleicht zu|r |cRXP_ENEMY_Unheilsbote Trevellion|r |cRXP_WARN_über das ganze Gerüst hinauf und wartet auf das Ende des Rollenspiels|r
    >>|cRXP_WARN_Meidet |cRXP_ENEMY_Faceless Ones|r as they have stealth detection|r
    .target Doomspeaker Trevellion
    .complete 13948,1
step
#questguide
    .goto 62,43.535,81.019
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elder Brolg|r
    .target Elder Brolg
    .turnin 13526 >>Gebt die Quest Der Bärenklau ab
    .accept 13544 >>Akzeptiert die Quest Der Bärensegen
step
#questguide
#sticky
#label fleetfoot
    .goto 62,45.103,78.471
    >>Tötet |cRXP_ENEMY_Fleetfoot|r. Plündert sie für |cRXP_LOOT_Tailfeathers|r
    .collect 44886,1,13544,1
    .mob Fleetfoot
step
#questguide
#loop
    .goto 62,45.945,78.353,0
    .goto 62,42.014,76.593,0
    .goto 62,45.945,78.353,40,0
    .goto 62,42.014,76.593,40,0
    >>Tötet |cRXP_ENEMY_Consumed Thistle Bären|r
    .complete 13881,1
    .mob Consumed Thistle Bear
step
#questguide
#requires fleetfoot
    .goto 62,45.300,76.734
    .use 44888 >> |cRXP_WARN_Benutzt|r |T134189:0|t[Bär's Paw Bundle] |cRXP_WARN_neben der|r |cRXP_PICK_Uralte Bärenstatue|r
    .complete 13544,1
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Balren von der Klaue|r und |cRXP_FRIENDLY_Larien|r
    .turnin 13948 >>Gebt die Quest Verbesserte Beobachtungen ab
    .target +Balren of the Claw
    .goto 62,45.284,75.170
    .accept 13896 >>Akzeptiert die Quest Ausgegrabenes Wissen
    .target +Larien
    .goto 62,45.324,75.050
step
#questguide
    .goto 62,45.194,74.629
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kathrena Winterwisp|r
    .target Kathrena Winterwisp
    .turnin 13881 >>Gebt die Quest Verschlungen ab
    .accept 13882 >>Akzeptiert die Quest Die Samenkörner des Lebens
step
#questguide
    .goto 62,45.405,74.859
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Onu|r, um |cRXP_LOOT_Samen der Erde|r zu erhalten
    .complete 13882,1
    .skipgossip
    .target Onu
step
#questguide
    #sticky
    #label skyseed
    #loop
    .goto 62,41.860,77.050,0
    .goto 62,44.292,78.937,0
    .goto 62,40.902,79.825,0
    .waypoint 62,41.860,77.050,40,0
    .waypoint 62,44.292,78.937,40,0
    .waypoint 62,40.902,79.825,40,0
    >>|cRXP_WARN_Sucht nach den |cRXP_FRIENDLY_Dunkelküste Irrlichte|r, die herumfliegen. Klickt sie an, sobald sie den Boden erreichen|r
    .unitscan Darkshore Wisp
    .complete 13882,3
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elder Brolg|r und |cRXP_FRIENDLY_Gren Tornfur|r
    .turnin 13544 >>Gebt die Quest Der Bärensegen ab
    .accept 13545 >>Akzeptiert die Quest Die Befallenen reinigen
    .target +Elder Brolg
    .goto 62,43.515,81.018
    .accept 13572 >>Akzeptiert die Quest Jadefeuerkohlenpfannen
    .target +Gren Tornfur
    .goto 62,43.576,81.023
step
#questguide
    #loop
    #sticky
    #label braziers
    .goto 62,44.749,82.357,40,0
    .goto 62,45.929,83.041,40,0
    .goto 62,45.275,85.286,40,0
    .goto 62,44.143,81.923,40,0
    .goto 62,44.828,83.242,0
    >>Klickt die |cRXP_PICK_Jadefeuer Kohlebecken|r, die um das Lager herum verstreut sind
    .complete 13572,1 --|8/8 Jadefire Brazier
step
#questguide
#loop
    .goto 62,44.749,82.357,40,0
    .goto 62,45.929,83.041,40,0
    .goto 62,45.275,85.286,40,0
    .goto 62,44.143,81.923,40,0
    .goto 62,44.828,83.242,0
    .use 44889>>|cRXP_WARN_Benutzt|r |T237425:0|t[Gesegnetes Kräuterbündel] |cRXP_WARN_auf einen |cRXP_ENEMY_Furbolg der Schwarzfelle|r, tötet dann den |cRXP_ENEMY_Geist der Verderbnis|r, |cRXP_WARN_der auftaucht|r
    .complete 13545,1
    .mob Spirit of Corruption
    .target Maddened Blackwood
    .target Corrupted Blackwood
step
#questguide
#requires braziers
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gren Tornfur|r und |cRXP_FRIENDLY_Elder Brolg|r
    .turnin 13572 >>Gebt die Quest Jadefeuerkohlenpfannen ab
    .target +Gren Tornfur
    .goto 62,43.576,81.023
    .turnin 13545 >>Gebt die Quest Die Befallenen reinigen ab
    .accept 13546 >>Akzeptiert die Quest Der Schänder
    .target +Elder Brolg
    .goto 62,43.515,81.018
step
#questguide
    .goto 62,46.754,84.038
    >>Tötet |cRXP_ENEMY_Sharax der Schänder|r
    .complete 13546,1 --|1/1 Sharax the Defiler slain
    .mob Sharax the Defiler
step
#questguide
    .goto 62,43.526,80.990
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elder Brolg|r
    .target Elder Brolg
    .turnin 13546 >>Gebt die Quest Der Schänder ab
step
#questguide
#loop
    .goto 62,38.060,79.195,0
    .goto 62,38.645,78.225,0
    .goto 62,37.263,76.834,0
    .goto 62,37.999,74.396,0
    .goto 62,38.060,79.195,20,0
    .goto 62,38.645,78.225,20,0
    .goto 62,37.263,76.834,20,0
    .goto 62,37.999,74.396,20,0
    >>Öffnet die |cRXP_PICK_Funkelnde Muscheln|r auf dem Boden. Sammelt sie für die |cRXP_LOOT_Samen des Meeres|r
    .complete 13882,2 --|1/1 Seed of the Sea
step
#questguide
#requires skyseed
    .goto 62,37.626,82.824
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Archaeologist Groff|r
    .target Archaeologist Groff
    .turnin 13896 >>Gebt die Quest Ausgegrabenes Wissen ab
    .accept 13893 >>Akzeptiert die Quest Soggoth und Kronn
    .accept 13907 >>Akzeptiert die Quest Die Ruinen säubern
step
#questguide
    .goto 62,37.747,82.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jr. Archaeologist Ferd|r
    .target Jr. Archaeologist Ferd
    .accept 13912 >>Akzeptiert die Quest Schlammige Geheimnisse
step
#questguide
    .goto 62,37.695,82.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ausgrabungsleiter Remtravel|r
    .target Prospector Remtravel
    .accept 13911 >>Akzeptiert die Quest Der geistesabwesende Ausgrabungsleiter
    >>Dies startet eine Escort Quest
step
#questguide
    #completewith prospector
    #optional
    >>Tötet |cRXP_ENEMY_Greymist Refugees|r und |cRXP_ENEMY_Greymist Orakel|r
    .complete 13907,1
    .mob Greymist Refugee
    .mob Greymist Oracle
step
#questguide
    >>|cRXP_WARN_Begleitet |cRXP_FRIENDLY_Ausgrabungsleiter Wirrbart|r durch die Ausgrabungsstätte|r
    .complete 13911,1
    .target Prospector Remtravel
step
#questguide
    .goto 62,37.747,82.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jr. Archaeologist Ferd|r
    .target Jr. Archaeologist Ferd
    .turnin 13911 >>Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
step
#questguide
#label prospector
    .goto 62,37.023,83.441
    >>Klickt die |cRXP_PICK_Schlammverkrustete uralte Scheibe|r unter Wasser
    .complete 13912,1 --|1/1 Mud-Crusted Ancient Disc
step
#questguide
#loop
    .goto 62,36.355,83.599,20,0
    .goto 62,37.393,82.425,20,0
    .goto 62,36.572,84.501,20,0
    .goto 62,37.669,84.418,0
    >>Tötet |cRXP_ENEMY_Greymist Refugees|r und |cRXP_ENEMY_Greymist Orakel|r
    .complete 13907,1
    .mob Greymist Refugee
    .mob Greymist Oracle
step
#questguide
    .goto 62,37.626,82.824
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Archaeologist Groff|r
    .target Archaeologist Groff
    .turnin 13907 >>Gebt die Quest Die Ruinen säubern ab
    .accept 13909 >>Akzeptiert die Quest Treibgut übrig?
step
#questguide
    .goto 62,37.747,82.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jr. Archaeologist Ferd|r
    .target Jr. Archaeologist Ferd
    .turnin 13912 >>Gebt die Quest Schlammige Geheimnisse ab
    .accept 13918 >>Akzeptiert die Quest Die Verbindung der Titanen
step
#questguide
#completewith next
    >>Sammelt die |cRXP_PICK_Schwebenden Graufellen-Trümmer|r entlang der Küste
    .complete 13909,1
step
#questguide
#loop
    .goto 62,38.407,78.988,0
    .goto 62,36.452,81.574,0
    .goto 62,36.126,84.743,0
    .goto 62,37.149,86.795,0
    .goto 62,38.407,78.988,40,0
    .goto 62,36.452,81.574,40,0
    .goto 62,36.126,84.743,40,0
    .goto 62,37.149,86.795,40,0
    .use 46388 >>|cRXP_WARN_Benutzt|r |T134519:0|t[Begraben Artefakt Detektor] |cRXP_WARN_um die |cRXP_PICK_Verschüttete Trümmer|r entlang der Küste aufzudecken. Sammelt sie für das |cRXP_LOOT_Uraltes Gerätefragment|r
    .collect 46702,5,13918,1
    .isOnQuest 13918
step
#questguide
#loop
    .goto 62,38.407,78.988,0
    .goto 62,36.452,81.574,0
    .goto 62,36.126,84.743,0
    .goto 62,37.149,86.795,0
    .goto 62,38.407,78.988,40,0
    .goto 62,36.452,81.574,40,0
    .goto 62,36.126,84.743,40,0
    .goto 62,37.149,86.795,40,0
    >>Sammelt die |cRXP_PICK_Schwebenden Graufellen-Trümmer|r entlang der Küste
    .complete 13909,1
step
#questguide
    .use 46702 >> |cRXP_WARN_Benutzt|r |T132997:0|t[Uraltes Gerätefragment] |cRXP_WARN_um sie zu|r |cRXP_LOOT_Uraltes geschlitztes Gerät|r
    .complete 13918,1
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Archaeologist Groff|r und |cRXP_FRIENDLY_Jr. Archaeologist Ferd|r
    .turnin 13909 >>Gebt die Quest Treibgut übrig? ab
    .accept 13910 >>Akzeptiert die Quest Ein neues Zuhause
    .target +Archaeologist Groff
    .goto 62,37.645,82.832
    .turnin 13918 >>Gebt die Quest Die Verbindung der Titanen ab
    .target +Jr. Archaeologist Ferd
    .goto 62,37.747,82.932
step
#questguide
    .goto 62,35.905,81.942
    .use 46385 >> |cRXP_WARN_Benutzt|r |T132281:0|t[Marvelous Mobile Murloc Manor Maker] |cRXP_WARN_neben der|r |cRXP_PICK_Grauflossenwurf Murloc-Baustelle|r
    .complete 13910,1 --|1/1 Greymist Murloc Home Built
step
#questguide
    .goto 62,37.643,82.805
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Archaeologist Groff|r
    .target Archaeologist Groff
    .turnin 13910 >>Gebt die Quest Ein neues Zuhause ab
step
#questguide
    .goto 62,45.310,75.054
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Larien|r
    .target Larien
    .turnin 13893 >>Gebt die Quest Soggoth und Kronn ab
step
#questguide
    .goto 62,45.210,74.633
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kathrena Winterwisp|r
    .target Kathrena Winterwisp
    .turnin 13882 >>Gebt die Quest Die Samenkörner des Lebens ab
    .accept 13925 >>Akzeptiert die Quest Ein Stückchen Vorbeugen
step
#questguide
    .goto 62,45.405,74.864
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Onu|r
    .target Onu
    .accept 13895 >>Akzeptiert die Quest Die schlummernden Uralten
step
#questguide
    .goto 62,45.683,71.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aros|r
    .target Aros
    .turnin 13895 >>Gebt die Quest Die schlummernden Uralten ab
step
#questguide
    .goto 62,45.568,71.637
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Darkscale Assassine|r
    .target Darkscale Assassin
    .accept 13953 >>Akzeptiert die Quest Naga unter uns
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Balren der Klaue|r und |cRXP_FRIENDLY_Felros|r
    .turnin 13953 >>Gebt die Quest Naga unter uns ab
    .accept 13899 >>Akzeptiert die Quest Der Kriegsfürst der Dunkelschuppen
    .target +Balren of the Claw
    .goto 62,45.303,75.129
    .accept 13898 >>Akzeptiert die Quest Das Blatt wendet sich gegen uns
    .target +Felros
    .goto 62,45.352,75.115
step
#questguide
#loop
    .goto 62,41.893,75.131,0
    .goto 62,40.264,73.207,0
    .goto 62,41.893,75.131,30,0
    .goto 62,40.264,73.207,30,0
    .use 46363 >>|cRXP_WARN_Benutzt|r |T133749:0|t[Lebensbringerschössling] |cRXP_WARN_auf einen |cRXP_ENEMY_Weißschwanzhirsch|r, einen |cRXP_ENEMY_Ergrauten Distelbären|r, eine |cRXP_ENEMY_Mondpirschermatriarchin|r oder einen |cRXP_ENEMY_Mondpirscherpatriarch|r
    .complete 13925,1 --|1/1 Lifebringer Sapling Tested
    .target Whitetail Stag
    .target Grizzled Thistle Bear
    .target Moonstalker Matriarch
    .target Moonstalker Sire
step
#questguide
    .goto 62,45.197,74.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kathrena Winterwisp|r
    .target Kathrena Winterwisp
    .turnin 13925 >>Gebt die Quest Ein Stückchen Vorbeugen ab
    .accept 13885 >>Akzeptiert die Quest Verteidigung der Dunkelküste
step
#questguide
#completewith next
    .goto 62,44.474,75.350
    .vehicle >> |cRXP_WARN_Sprecht mit |cRXP_FRIENDLY_Orseus|r, um einen |rHippogryph|cRXP_FRIENDLY_ zu besteigen|r
    .skipgossip
step
#questguide
    >>|cRXP_WARN_Cast|r |T136065:0|t[Wildtiere schützen] (1) |cRXP_WARN_on |cRXP_ENEMY_Grizzled Thistle Bären|r, |cRXP_ENEMY_Moonstalkers|r und|r |cRXP_ENEMY_Whitetail Reh|r
    .complete 13885,1 -- Grizzled Thistle Bear Protected (8)
    .target +Grizzled Thistle Bear
    .complete 13885,2 -- Moonstalker Protected (8)
    .target +Moonstalker
    .complete 13885,3 -- Whitetail Deer Protected (8)
    .target +Whitetail Deer
step
#questguide
    .goto 62,45.198,74.627
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kathrena Winterwisp|r
    .target Kathrena Winterwisp
    .turnin 13885 >>Gebt die Quest Verteidigung der Dunkelküste ab
    .accept 13891 >>Akzeptiert die Quest Der Verschlinger der Dunkelküste
step
#questguide
    #completewith next
    .goto 62,45.031,79.192
    .cast 65207 >> |cRXP_WARN_Benutzt den|r |T133749:0|t[Lebensbringerschössling] |cRXP_WARN_bei dem |cRXP_PICK_Verschlingen Artefakt|r unter Wasser um zu beschwören|r |cRXP_ENEMY_Yoth'al der Verschlinger|r
    .timer 10,Der Verschlinger der Dunkelküste RP
    .use 46370
step
#questguide
    .goto 62,45.031,79.192
    .use 46370 >> Tötet |cRXP_ENEMY_Yoth'al der Verschlinger|r
    .complete 13891,1
    .mob Yoth'al the Devourer
step
#questguide
    #completewith AzsharaOffering
    >>Tötet |cRXP_ENEMY_Darkscale Myrmidons|r
    .complete 13898,1 --|8/8 Darkscale Myrmidon slain
    .mob Darkscale Myrmidon
step
#questguide
    .goto 62,33.43,83.65,50,0
    .goto 62,33.040,83.773,15,0
    .goto 62,32.269,84.069,15,0
    .goto 62,32.263,85.379
    >>Tötet |cRXP_ENEMY_Warlord Wrathspine|r
    >>Zwicken |cRXP_FRIENDLY_Warlord Wrathspines|r corpse after
    .mob Warlord Wrathspine
    .turnin 13899 >>Gebt die Quest Der Kriegsfürst der Dunkelschuppen ab
    .accept 13900 >>Akzeptiert die Quest Das Opfer für Azshara
step
#questguide
    #label AzsharaOffering
    .goto 62,32.874,84.131
    >>|cRXP_WARN_Verlasst die Höhle und geht zur Terrasse oberhalb des Eingangs|r
    >>Tötet die |cRXP_ENEMY_Darkscale Priestesses|r
    .complete 13900,1 --|1/1 Offering to Azshara prevented
    .timer 64,Das Opfer für Azshara RP
    .mob Darkscale Priestess
step
#questguide
#completewith next
    +|cRXP_WARN_Wartet das Rollenspiel mit |cRXP_ENEMY_Königin Azshara|r ab und wartet auf |cRXP_FRIENDLY_Malfurion Sturmgrimm|r anzukommen|r
step
#questguide
    .goto 62,32.796,84.294
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Malfurion Sturmgrimm|r
    .turnin 13900 >>Gebt die Quest Das Opfer für Azshara ab
    .accept 13897 >> Akzeptiert die Quest Die Schlacht um die Dunkelküste
    .target Malfurion Stormrage
step
#questguide
    .goto 62,32.874,84.131
    >>Tötet |cRXP_ENEMY_Darkscale Myrmidons|r
    .complete 13898,1 --|8/8 Darkscale Myrmidon slain
    .mob Darkscale Myrmidon
step
#questguide
#completewith next
    .cast 80230 >>|cRXP_WARN_Reist zur Meistergleve und benutzt|r |T237377:0|t[Horn der Urtume]
    .use 58365
step
#questguide
    .goto 62,40.552,83.946
    .use 58365 >>Tötet |cRXP_ENEMY_Avatar von Soggoth|r
    .mob Avatar of Soggoth
    .complete 13897,1 --|1/1 Avatar of Soggoth slain
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Balren von der Klaue|r
    .turnin 13897 >>Gebt die Quest Die Schlacht um die Dunkelküste ab
    --.accept 26408 >> Accept Ashes in Ashenvale
    .target Balren of the Claw
    .goto 62,45.305,75.134
step
#questguide
    .goto 62,45.352,75.115
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Felros|r
    .turnin 13898 >>Gebt die Quest Das Blatt wendet sich gegen uns ab
    .target Felros
step
#questguide
    .goto 62,45.198,74.627
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kathrena Winterwisp|r
    .target Kathrena Winterwisp
    .turnin 13891 >>Gebt die Quest Der Verschlinger der Dunkelküste ab
step
#questguide
    #completewith next
    .hs >> Benutzt euren Ruhestein zum Lor'danel
]])
