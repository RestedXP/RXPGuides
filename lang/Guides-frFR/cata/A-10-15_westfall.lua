if GetLocale() ~= "frFR" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end

RXPGuides.RegisterGuide([[

#version 1
#group RXP Cataclysme 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 10-15 Marche de l'Ouest
#next 15-20 Redridge
#defaultfor None
<<Alliance

step
    #completewith WestfallEntry
    .zone 52 >> Voyagez vers les Marches de l'Ouest
step
    .isOnQuest 26378
    .goto 1436/0,914.900,-9849.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lieutenant Horatio Laine|r
    .turnin 26378 >>Rendez la quête L'appel du héros : la marche de l'Ouest !
    .accept 26209 >>Acceptez la quête Meurtre au soleil
	.target Lieutenant Horatio Laine
step
    #label WestfallEntry
    .goto 1436/0,914.900,-9849.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lieutenant Horatio Laine|r
    .accept 26209 >>Acceptez la quête Meurtre au soleil
	.target Lieutenant Horatio Laine
step
    #loop
    .goto 52,58.23,18.12,0
    .goto 52,58.56,16.21,20,0
    .goto 52,59.18,18.16,20,0
    .goto 52,58.12,19.58,20,0
    .goto 52,57.31,18.33,20,0
    .goto 52,58.56,16.21,20,0
    >>Parlez aux |cRXP_FRIENDLY_Homeless Entités de BC Citizens|r, aux |cRXP_FRIENDLY_West Plains Drifters|r et aux |cRXP_FRIENDLY_Transients|r
    >>|cRXP_WARN_Vous devez les payer pour recevoir les indices !|r
    .complete 26209,1 --1/1 Clue #1 obtained
    .complete 26209,2 --1/1 Clue #2 obtained
    .complete 26209,3 --1/1 Clue #3 obtained
    .complete 26209,4 --1/1 Clue #4 obtained
	.target Homeless Stormwind Citizen
	.target West Plains Drifter
    .target Transients
    .skipgossip 2
step
    .goto 1436/0,914.900,-9849.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lieutenant Horatio Laine|r
    .turnin 26209 >>Rendez la quête Meurtre au soleil
    .accept 26213 >>Acceptez la quête Sur la piste du clan Rivepatte
    .accept 26214 >>Acceptez la quête Sur la piste des Murlocs
	.target Lieutenant Horatio Laine
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Riverpaw Repérage|r et les |cRXP_ENEMY_Riverpaw Gnolls|r. Ramassez-les pour l'|cRXP_LOOT_Indice des Gnolls rivepattes|r
    .complete 26213,1 --1/1 Riverpaw Gnoll Clue
	.mob *Riverpaw Scout
	.mob *Riverpaw Gnoll
step
    #loop
    .goto 52,55.51,9.11,0
    .goto 52,56.83,10.35,40,0
    .goto 52,55.82,7.95,40,0
    .goto 52,55.51,9.11,40,0
    .goto 52,53.91,9.68,40,0
    .goto 52,52.37,8.88,40,0
    .goto 52,53.42,11.57,40,0
    .goto 52,56.03,10.85,40,0
    >>Tuez les |cRXP_ENEMY_Murloc Mineure Oracles|r, les |cRXP_ENEMY_Murloc Coastrunners|r et les |cRXP_ENEMY_Murloc Raiders|r. Ramassez-les pour l'|cRXP_LOOT_Murloc Clue|r
    .complete 26214,1 --1/1 Murloc Clue
	.mob Murloc Minor Oracle
    .mob Murloc Coastrunner
    .mob Murloc Raider
step
    .goto 52,56.46,13.26,0
    .waypoint 52,58.16,10.71,40,0
    .waypoint 52,57.17,15.12,40,0
    .waypoint 52,51.38,15.89,40,0
    .waypoint 52,50.68,14.77,40,0
    .waypoint 52,56.46,13.26,40,0
    >>Tuez les |cRXP_ENEMY_Riverpaw Repérage|r et les |cRXP_ENEMY_Riverpaw Gnolls|r. Ramassez-les pour l'|cRXP_LOOT_Indice des Gnolls rivepattes|r
    .complete 26213,1 --1/1 Riverpaw Gnoll Clue
	.mob *Riverpaw Scout
	.mob *Riverpaw Gnoll
step
    .goto 1436/0,914.900,-9849.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lieutenant Horatio Laine|r
    .target Lieutenant Horatio Laine
    .turnin 26213 >>Rendez la quête Sur la piste du clan Rivepatte
    .turnin 26214 >>Rendez la quête Sur la piste des Murlocs
    .accept 26215 >>Acceptez la quête Permettez-moi de vous présenter Lou Deux-Semelles
step
    .goto 1436/0,1278.700,-9852.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lou Deux-Semelles|r
    .target Two-Shoed Lou
    .turnin 26215 >>Rendez la quête Permettez-moi de vous présenter Lou Deux-Semelles
    .accept 26228 >>Acceptez la quête Mener la belle vie
step
    .goto 1436/0,1281.100,-9857.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jimb "Bougies" McHannigan|r
    .target Jimb "Candles" McHannigan
    .accept 26229 >>Acceptez la quête « Moi PRENDRE bougie ! »
step
    .goto 1436/0,1282.800,-9846.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mama Céleste|r
    .target Mama Celeste
    .accept 26230 >>Acceptez la quête Un festin en temps de famine
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Coyotes|r. Ramassez-les pour leur |cRXP_LOOT_Pile|r
    .complete 26230,1 --|Coyote Tail: 6/6
    .mob Coyote
step
    #loop
    .goto 52,51.5,19.8,40,0
    .goto 52,52.3,21.8,40,0
    .goto 52,50.5,22.8,40,0
    .goto 52,50.2,19.8,40,0
    >>Ramassez |cRXP_LOOT_Fresh Dirt|r par terre
    .complete 26230,2 --|Fresh Dirt: 5/5
step
    #loop
    .goto 52,51.6,17.8,50,0
    .goto 52,53.8,20.8,50,0
    .goto 52,50.0,22.4,50,0
    .goto 52,47.0,20.4,50,0
    .goto 52,48.6,16.2,50,0
    >>Tuez les |cRXP_ENEMY_Coyotes|r. Ramassez-les pour leur |cRXP_LOOT_Pile|r
    .complete 26230,1 --|Coyote Tail: 6/6
    .mob Coyote
step
    #completewith BackOfMine
    .goto 52,53.24,92.20 >> Entrée de la mine Veine-de-Jango
step
    #completewith BackOfMine
    >>Tuez les |cRXP_ENEMY_Kobold Diggers|r
    .complete 26229,1 --|Kobold Digger slain: 12/12
    .mob Kobold Digger
step
    #completewith BackOfMine
    .goto 52,46.405,19.289
    .cast 79262 >> |cRXP_WARN_Utilisez|r |T132762:0|t[Ancienne « maison » de Lou Deux-semelles] |cRXP_WARN_à l'arrière de la mine Veine-de-Jango|r
    .use 57761
step
    #label BackOfMine
    .goto 52,46.405,19.289
    .complete 26228,1
    .use 57761 >>Attendez le temps du RP
step
    #loop
    .goto 52,53.24,92.50,0
    .goto 52,46.40,19.28,50,0
    >>Tuez les |cRXP_ENEMY_Kobold Diggers|r
    .complete 26229,1 --|Kobold Digger slain: 12/12
    .mob Kobold Digger
step
    .goto 1436/0,1281.100,-9857.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jimb "Bougies" McHannigan|r
    .target Jimb "Candles" McHannigan
    .turnin 26229 >>Rendez la quête « Moi PRENDRE bougie ! »
step
    .goto 1436/0,1278.800,-9852.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lou Deux-Semelles|r
    .target Two-Shoed Lou
    .turnin 26228 >>Rendez la quête Mener la belle vie
    .accept 26232 >>Acceptez la quête Les bons tuyaux de Lou
step
    .goto 1436/0,1282.700,-9846.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mama Céleste|r
    .target Mama Celeste
    .turnin 26230 >>Rendez la quête Un festin en temps de famine
step
    .goto 1436/0,1334.000,-9861.601
    >>|cRXP_WARN_Allez aux |cRXP_ENEMY_Thugs|r derrière la ferme. Attendez la fin du jeu de rôle, puis tuez-les|r
    .complete 26232,1 --|Eavesdrop on Thugs.: 1/1
    .mob Thug
step
    .goto 1436/0,1276.100,-9855.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lieutenant Horatio Laine|r
    .target Lieutenant Horatio Laine
    .turnin 26232 >>Rendez la quête Les bons tuyaux de Lou
    .accept 26236 >>Acceptez la quête Un interrogatoire chez les Saldean
step
    .goto 1436/0,1055.200,-10128.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Saldean le fermier|r
    .target Farmer Saldean
    .turnin 26236 >>Rendez la quête Un interrogatoire chez les Saldean
    .accept 26237 >>Acceptez la quête Les temps sont durs
step
    .goto 1436/0,1042.100,-10112.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Salma Saldean|r
    .target Salma Saldean
    .accept 26241 >>Acceptez la quête Le ragoût de la marche de l'Ouest
step
    #completewith next
    >>Ramassez |cRXP_LOOT_Okra|r par terre
    .complete 26241,1 --|Okra: 6/6
step
    #loop
    .goto 52,54.6,34.6,50,0
    .goto 52,52.4,31.0,50,0
    .goto 52,55.0,30.0,50,0
    >>Tuez les |cRXP_ENEMY_Harvest Watchers|r. Ramassez-les pour leur |T133862:0|t[|cRXP_LOOT_Cœur de gardien des moissons|r]
    .use 57935 >>|cRXP_WARN_Utilisez le|r |T133862:0|t[|cRXP_LOOT_Cœur de gardien des moissons|r] |cRXP_WARN_pour commencer la quête|r
    .collect 57935,1,26252,1 -- Harvest Watcher Heart (1)
    .accept 26252 >> Acceptez la quête Le cœur du gardien
    .complete 26237,1 --|Harvest Watcher slain: 10/10
    .mob Harvest Watcher
step
    #loop
    .goto 52,54.6,34.6,50,0
    .goto 52,52.4,31.0,50,0
    .goto 52,55.0,30.0,50,0
    >>Ramassez |cRXP_LOOT_Okra|r par terre
    .complete 26241,1 --|Okra: 6/6
step
    .goto 1436/0,1055.200,-10128.700
    .accept 26252 >>Acceptez la quête Le cœur du gardien
    .turnin 26237 >>Rendez la quête Les temps sont durs
    .turnin 26252 >>Rendez la quête Le cœur du gardien
    .accept 26257 >>Acceptez la quête C'est vivant !
step
    #completewith next
    >>Tuez |cRXP_ENEMY_Goretusks|r. Ramassez les pour leurs |cRXP_LOOT_Flanks|r
    >>Tuez |cRXP_ENEMY_Young Fleshrippers|r. Ramassez-les pour leur |cRXP_LOOT_Stringy Eventr'chair Viande|r
    .complete 26241,2 --|Goretusk Flank: 6/6
    .mob +Goretusk
    .complete 26241,3 --|Stringy Fleshripper Meat: 6/6
    .mob +Young Fleshripper
step
    .goto 1436/0,1283.100,-10164.700
    .use 57954 >> |cRXP_WARN_Utilisez le|r |T133862:0|t[Cœur de gardien des moissons] |cRXP_WARN_sur un |cRXP_ENEMY_Overloaded Moisson Golem|r pour le contrôler|r
    .complete 26257,1 --|Overloaded Harvest Golem enabled: 1/1
    .target Overloaded Harvest Golem
step
    .goto 1436/0,1460.500,-10221.601
    >>Tuez les |cRXP_ENEMY_Energized Moisson Reapers|r
    .complete 26257,2 --|Energized Harvest Reaper slain: 25/25
    .mob Energized Harvest Reaper
step
    .isOnQuest 26257
    .exitvehicle >> |cRXP_WARN_Quittez le|r |cRXP_ENEMY_Overloaded Moisson Golem|r
step
    #loop
    .goto 52,41.4,37.4,60,0
    .goto 52,44.6,40.8,60,0
    .goto 52,47.0,46.0,60,0
    .goto 52,51.2,31.2,60,0
    >>Tuez |cRXP_ENEMY_Goretusks|r. Ramassez les pour leurs |cRXP_LOOT_Flanks|r
    >>Tuez |cRXP_ENEMY_Young Fleshrippers|r. Ramassez-les pour leur |cRXP_LOOT_Stringy Eventr'chair Viande|r
    .complete 26241,2 --|Goretusk Flank: 6/6
    .mob +Goretusk
    .complete 26241,3 --|Stringy Fleshripper Meat: 6/6
    .mob +Young Fleshripper
step
    .goto 1436/0,1042.100,-10112.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Salma Saldean|r
    .target Salma Saldean
    .turnin 26241 >>Rendez la quête Le ragoût de la marche de l'Ouest
step
    .goto 1436/0,1055.200,-10128.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Saldean le fermier|r
    .target Farmer Saldean
    .turnin 26257 >>Rendez la quête C'est vivant !
    .accept 26270 >>Acceptez la quête Avec tous nos remerciements…
step
    .goto 1436/0,1040.900,-10110.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Salma Saldean|r
    .target Salma Saldean
    .turnin 26270 >>Rendez la quête Avec tous nos remerciements…
    .accept 26266 >>Acceptez la quête Une nouvelle espérance
step
    .goto 1436/0,1022.700,-10499.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Espérance Saldean|r
    .target Hope Saldean
    .turnin 26266 >>Rendez la quête Une nouvelle espérance
    .accept 26271 >>Acceptez la quête Nourrir les affamés et les infortunés
step
    .goto 1436/0,1042.800,-10504.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Éclaireur Galiaan|r
    .target Scout Galiaan
    .accept 26371 >>Acceptez la quête La légende du capitaine Grayson
step
    .goto 1436/0,1040.600,-10510.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine Danuvin|r
    .target Captain Danuvin
    .accept 26287 >>Acceptez la quête La brigade de la marche de l'Ouest
step
    .goto 1436/0,1045.200,-10508.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maréchal Gryan Roidemantel|r
    .target Marshal Gryan Stoutmantle
    .accept 26286 >>Acceptez la quête Pour la défense de la marche de l'Ouest
step
    #loop
    .goto 52,54.6,44.6,50,0
    .goto 52,55.0,50.6,50,0
    .goto 52,52.2,50.8,50,0
    >>Tuez |cRXP_ENEMY_Riverpaw Brutes|r, |cRXP_ENEMY_Riverpaw Bandits|r et |cRXP_ENEMY_Riverpaw Herbalists|r. Ramassez-les pour les |cRXP_LOOT_Gnoll Ordres d’attaque|r
    .complete 26287,1 --|Attacking Riverpaw Gnoll slain: 12/12
    .complete 26286,1 --|Gnoll Attack Orders: 1/1
    .mob Riverpaw Brute
    .mob Riverpaw Bandit
    .mob Riverpaw Herbalist
step
    #loop
    .goto 52,56.91,57.72,20,0
    .goto 52,53.94,57.06,20,0
    .goto 52,52.20,55.75,20,0
    .use 57991 >> |cRXP_WARN_Utilisez le|r |T237329:0|t[Le ragoût de la marche de l'Ouest] |cRXP_WARN_à côté du |cRXP_FRIENDLY_Homeless|r autour de Colline des Sentinelles|r
    .complete 26271,1 --|Westfall Homeless fed: 20/20
    .target Homeless Stormwind Citizen
    .target West Plains Drifter
    .target Small-time Hustler
step
    .goto 1436/0,1040.700,-10510.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine Danuvin|r
    .target Captain Danuvin
    .turnin 26287 >>Rendez la quête La brigade de la marche de l'Ouest
    .accept 26288 >>Acceptez la quête Jango Salecouenne
step
    .goto 1436/0,1022.700,-10499.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Espérance Saldean|r
    .target Hope Saldean
    .turnin 26271 >>Rendez la quête Nourrir les affamés et les infortunés
step
    .goto 1436/0,1045.000,-10508.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maréchal Gryan Roidemantel|r
    .target Marshal Gryan Stoutmantle
    .turnin 26286 >>Rendez la quête Pour la défense de la marche de l'Ouest
    .accept 26289 >>Acceptez la quête Trouvez l'agent Kearnen
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aubergiste Heather|r
    .target Innkeeper Heather
    .goto 1436/0,1166.400,-10653.200
    .home >>Liez votre Pierre de foyer à Colline des Sentinelles
    .subzoneskip 108,1
step
    >>Tuez |cRXP_ENEMY_Jango Salecouenne|r
    >>Tuez |cRXP_ENEMY_Riverpaw Mystics|r
    >>Tuez |cRXP_ENEMY_Riverpaw Taskmasters|r
    .complete 26288,3 --|Jango Spothide slain: 1/1
    .mob +Jango Spothide
    .goto 52,62.255,76.449
    .complete 26288,1 --|Riverpaw Mystic slain: 5/5
    .mob +Riverpaw Mystic
    .goto 52,60.6,75.6,60,0
    .goto 52,65.8,76.2,60,0
    .goto 52,62.2,70.0,60,0
    .goto 52,60.4,72.2
    .complete 26288,2 --|Riverpaw Taskmaster slain: 5/5
    .mob +Riverpaw Taskmaster
    .goto 52,60.6,75.6,60,0
    .goto 52,65.8,76.2,60,0
    .goto 52,62.2,70.0,60,0
    .goto 52,60.4,72.2
step
    .goto 1436/0,625.100,-11042.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Agent Kearnen|r
    .target Agent Kearnen
    .turnin 26289 >>Rendez la quête Trouvez l'agent Kearnen
    .accept 26290 >>Acceptez la quête Les secrets de la tour
step
    #completewith next
    .isOnQuest 26290
    .goto 52,70.38,74.45
    .subzone 5289 >> Entrée Tour de Morteveille
step
    .isOnQuest 26290
    .goto 52,70.38,74.45
    .cast 79528 >> |cRXP_WARN_Utilisez la|r |T134724:0|t[Potion de dissimulation] |cRXP_WARN_dans Tour de Morteveille|r
    .use 58112 >>|cRXP_WARN_Courez en dépassant le |cRXP_ENEMY_Mercenaire|r à l'avant de la tour. |cRXP_FRIENDLY_Agent Kearnen|r les frappera dès que vous entrerez en combat avec eux|r
step
    .goto 52,70.543,74.060
    >>|cRXP_WARN_Montez au sommet de la tour et attendez la cinématique|r
    .complete 26290,1
step
    #completewith next
    +|cRXP_WARN_Quitter Tour de Morteveille|r
    .subzoneskip 5289,1
step
    .goto 1436/0,625.100,-11042.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Agent Kearnen|r
    .target Agent Kearnen
    .turnin 26290 >>Rendez la quête Les secrets de la tour
    .accept 26291 >>Acceptez la quête Du rififi à Ruisselune
step
    #completewith next
    .hs >> Foyer à Colline des Sentinelles
    .cooldown item,6948,>2,1
step
    .goto 1436/0,1045.300,-10508.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maréchal Gryan Roidemantel|r
    .target Marshal Gryan Stoutmantle
    .turnin 26291 >>Rendre la quête Du rififi à Ruisselune
    .accept 26292 >>Accepter À Ruisselune !
step
    .goto 1436/0,1040.700,-10510.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine Danuvin|r
    .target Captain Danuvin
    .turnin 26288 >>Rendre la quête Jango Salecouenne
step
    .goto 1436/0,1543.000,-10896.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Capitaine Alpert|r
    .target Captain Alpert
    .turnin 26292 >>Rendre la quête À Ruisselune !
    .accept 26295 >>Accepter De la propagande
step
    #completewith MoonbrookThugs
    >>Ramassez le Butin |cRXP_LOOT_Propagande mystérieuse|r sur le mur
    >>Ramassez le Butin |cRXP_LOOT_Fascicule informatif|r sur le tonneau
    >>Ramassez le Butin |cRXP_LOOT_Chroniques de Ruisselune|r sur le sol
    >>Ramassez les |cRXP_LOOT_Secret Entités de MoP|r en haut des escaliers dans la maison
    .complete 26295,4 --|Mysterious Propaganda: 1/1
    .goto 1436/0,1572.500,-10952.101
    .complete 26295,1 --|Informational Pamphlet: 1/1
    .goto 1436/0,1561.000,-10949.101
    .complete 26295,2 --|Issue of the Moonbrook Times: 1/1
    .goto 1436/0,1502.000,-11030.800
    .complete 26295,3 --|Secret Journal: 1/1
    .goto 1436/0,1495.800,-10953.200
step
    #loop
    .goto 52,42.6,69.6,40,0
    .goto 52,45.6,70.8,40,0
    .goto 52,43.8,67.4,40,0
    >>Tuez les |cRXP_ENEMY_Brutes de Ruisselune|r. Ramassez-les pour le |T237277:0|t[|cRXP_LOOT_Foulard rouge|r]
    .use 58117 >> |cRXP_WARN_Utilisez le|r |T237277:0|t[|cRXP_LOOT_Foulard rouge|r] |cRXP_WARN_pour commencer la quête|r
    .collect 58117,1,26296,1 -- Red Bandana (1)
    .disablecheckbox
    .accept 26296 >> Accepter Le ramassage de preuves
    .mob Moonbrook Thug
step
    #label MoonbrookThugs
    #loop
    .goto 52,42.6,69.6,40,0
    .goto 52,45.6,70.8,40,0
    .goto 52,43.8,67.4,40,0
    >>Tuez les |cRXP_ENEMY_Brutes de Ruisselune|r. Ramassez-les pour leur |cRXP_LOOT_Foulard rouge|r
    .complete 26296,1 -- Red Bandana (6)
    .mob Moonbrook Thug
step
    >>Ramassez le Butin |cRXP_LOOT_Propagande mystérieuse|r sur le mur
    >>Ramassez le Butin |cRXP_LOOT_Fascicule informatif|r sur le tonneau
    >>Ramassez le Butin |cRXP_LOOT_Chroniques de Ruisselune|r sur le sol
    >>Ramassez les |cRXP_LOOT_Secret Entités de MoP|r en haut des escaliers dans la maison
    .complete 26295,4 --|Mysterious Propaganda: 1/1
    .goto 1436/0,1572.500,-10952.101
    .complete 26295,1 --|Informational Pamphlet: 1/1
    .goto 1436/0,1561.000,-10949.101
    .complete 26295,2 --|Issue of the Moonbrook Times: 1/1
    .goto 1436/0,1502.000,-11030.800
    .complete 26295,3 --|Secret Journal: 1/1
    .goto 1436/0,1495.800,-10953.200
step
    .goto 1436/0,1543.100,-10896.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Capitaine Alpert|r
    .target Captain Alpert
    .turnin 26296 >>Rendre la quête Le ramassage de preuves
    .turnin 26295 >>Rendre la quête De la propagande
    .accept 26297 >>Accepter L'aube d'un nouveau jour
step
    .goto 1436/0,1484.400,-11020.000
    >>|cRXP_WARN_Rendez-vous au centre de Ruisselune et attendez le RP|r
    .complete 26297,1 --|Information from Moonbrook Rally gathered: 1/1
step
    .goto 1436/0,1543.100,-10896.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Capitaine Alpert|r
    .target Captain Alpert
    .turnin 26297 >>Rendre la quête L'aube d'un nouveau jour
    .accept 26319 >>Accepter Des secrets révélés
step
    .goto 1436/0,1512.500,-10917.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thoralius le Sage|r
    .target Thoralius the Wise
    .turnin 26319 >>Rendre la quête Des secrets révélés
    .accept 26320 >>Accepter Une vision du passé
step
    #completewith next
    .goto 1415,40.85,81.98,15,0
    .goto 1415,40.92,81.99,15,0
    .goto 1415,40.90,82.18,10,0
    .goto 1415,40.77,82.58,15,0
    .goto 1415,40.48,82.44,5 >> Entrez à Mortemines et accédez à l'instance
step
    .isOnQuest 26320
    .cast 79586 >> |cRXP_WARN_Utilisez le|r [Brûle-encens] |cRXP_WARN_à l'intérieur de l'instance Mortemines|r
    .timer 155,Une vision du passé RP
    .use 58147
step
    .use 58147 >>Attendez le temps du RP
    .complete 26320,1 -- Vision of the Past uncovered 1/1
step
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour vous téléporter à Colline des Sentinelles
    .cooldown item,6948,>2,1
step
    .goto 1436/0,1045.100,-10508.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maréchal Gryan Roidemantel|r
    .target Marshal Gryan Stoutmantle
    .turnin 26320 >>Rendre la quête Une vision du passé
    --.accept 26322 >>Accept Rise of the Brotherhood
    --.timer 105,Rise of the Brotherhood RP
step << skip -- quest isn't needed for loremaster
    >>Attendez le temps du RP
    .complete 26322,1 -- Rise of the Brotherhood witnessed 1/1
step
    .goto 1436/0,2110.100,-10514.500
    >>Tuez les |cRXP_ENEMY_Murlocs|r le long de la côte. Ramassez-les pour |T134269:0|t[|cRXP_LOOT_Carte au trésor du Capitaine Sanders|r]
    .use 1357 >> |cRXP_WARN_Utilisez|r |T134269:0|t[|cRXP_LOOT_Carte au trésor du Capitaine Sanders|r] |cRXP_WARN_pour commencer la quête|r
    .collect 1357,1,26353,1 -- Captain Sanders' Treasure Map (1)
    .accept 26353 >> Accepter Le trésor caché du capitaine Sanders
    .mob Murloc Hunter
    .mob Murloc Warrior
step
    .goto 1436/0,2110.100,-10514.500
    >>Cliquez sur |cRXP_PICK_Cantine du Capitaine|r sur le sol
    .turnin 26353 >>Rendre la quête Le trésor caché du capitaine Sanders
    .accept 26354 >>Accepter Le trésor caché du capitaine Sanders
step
    .goto 1436/0,1598.700,-10514.800
    >>Cliquez sur |cRXP_PICK_Tonneau roué|r sur le sol
    .turnin 26354 >>Rendre la quête Le trésor caché du capitaine Sanders
    .accept 26355 >>Accepter Le trésor caché du capitaine Sanders
step
    .goto 1436/0,1594.700,-9797.400
    >>Cliquez sur |cRXP_PICK_Vieux Pichet|r sur le sol
    .turnin 26355 >>Rendre la quête Le trésor caché du capitaine Sanders
    .accept 26356 >>Accepter Le trésor caché du capitaine Sanders
step
    #completewith next
    .goto 52,25.97,16.90,20 >> Nagez vers la petite île
step
    .goto 1436/0,2107.700,-9794.300
    >>Cliquez sur le |cRXP_PICK_Coffre Verrouillé|r sur le sol
    .turnin 26356 >>Rendez la quête Le trésor caché du capitaine Sanders
step
    #completewith next
    .subzone 115 >> Voyagez au Phare de la Marche de l'Ouest
step
    .goto 1436/0,1949.100,-11397.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine Grayson|r
    .target Captain Grayson
    .turnin 26371 >>Rendez la quête La légende du capitaine Grayson
    .accept 26348 >>Acceptez la quête La côte n'est pas sûre
    --.accept 26347 >>Accept Keeper of the Flame
    .accept 26349 >>Acceptez la quête Menace sur la côte
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Murloc Tidehunters|r et les |cRXP_ENEMY_Murloc Oracles|r
    .complete 26348,1 --|Murloc Tidehunter slain: 7/7
    .mob +Murloc Tidehunter
    .complete 26348,2 --|Murloc Oracle slain: 7/7
    .mob +Murloc Oracle
step
    #loop
    .goto 52,35.8,87.2,50,0
    .goto 52,30.6,79.8,50,0
    .goto 52,26.2,63.2,50,0
    >>Tuez le |cRXP_ENEMY_Vieux Troubloeil|r. Dépouillez-le pour son |cRXP_LOOT_Écaille|r
    >>|cRXP_ENEMY_Vieux Troubloeil|r |cRXP_WARN_patrouille le long de la côte|r
    .complete 26349,1 --|Scale of Old Murk-Eye: 1/1
    .unitscan Old Murk-Eye
step
    #loop
    .goto 52,35.8,87.2,50,0
    .goto 52,30.6,79.8,50,0
    .goto 52,26.2,63.2,50,0
    >>Tuez les |cRXP_ENEMY_Murloc Tidehunters|r et les |cRXP_ENEMY_Murloc Oracles|r
    .complete 26348,1 --|Murloc Tidehunter slain: 7/7
    .mob +Murloc Tidehunter
    .complete 26348,2 --|Murloc Oracle slain: 7/7
    .mob +Murloc Oracle
step
    .goto 1436/0,1949.000,-11397.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine Grayson|r
    .target Captain Grayson
    .turnin 26348 >>Rendez la quête La côte n'est pas sûre
    .turnin 26349 >>Rendez la quête Menace sur la côte
]])
