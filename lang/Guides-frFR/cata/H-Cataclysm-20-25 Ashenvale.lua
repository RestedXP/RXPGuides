if GetLocale() ~= "frFR" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Alliance' then return end

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 22-27 Orneval
#next 27-31 Strangleronce septentrionale
#version 1
--#group RXP Cataclysm (H) << cata

#group RXP Cataclysme 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000

step
    #optional
    .goto 63,94.410,46.819
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kulg Crachetripes|r
    .gossipoption 111683 >>Envolez-vous vers les Remparts de Mor'shan
    .target Kulg Gorespatter
    .subzoneskip 2457,1
    .subzoneskip 1703
    .isOnQuest 13866
step
    .goto 1413/1,-2251.30005,1236.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kadrak|r
    .turnin 13866 >>Rendre la quête Au Rempart !
    .accept 13612 >>Acceptez la quête La défense de Mor'shan
    .accept 13618 >>Acceptez la quête Trouvez Gorat !
    .target Kadrak
    .isOnQuest 13866
step
    .goto 1413/1,-2251.30005,1236.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kadrak|r
    .turnin 28493 >>Rendre la quête Ordre du chef de guerre : Orneval !
    .accept 13612 >>Acceptez la quête La défense de Mor'shan
    .accept 13618 >>Acceptez la quête Trouvez Gorat !
    .target Kadrak
    .isOnQuest 28493
step
    .goto 1413/1,-2251.30005,1236.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kadrak|r
    .accept 13612 >>Acceptez la quête La défense de Mor'shan
    .accept 13618 >>Acceptez la quête Trouvez Gorat !
    .target Kadrak
step
    .goto 10,42.27,15.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Truun|r
    .accept 13615 >>Acceptez la quête Des carquois vides
    .target Truun
step
    .goto 10,42.43,15.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dinah|r
    .accept 13613 >>Acceptez la quête Sauvez les blessés
    .target Dinah Halfmoon
step
    .goto 10,41.99,15.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gort|r
    .fp The Mor'shan Rampart >> Apprenez le trajet de vol vers Le Rempart de Mor'shan
    .target Gort Goreflight
    .subzoneskip 1703,1
step
    #completewith FindGorat
    >>Tuez les |cRXP_ENEMY_Ashenvale Skirmishers|r et les |cRXP_ENEMY_Ashenvale Bowmen|r
    .complete 13612,1 --5/5 Ashenvale Skirmishers Slain
    .mob +Ashenvale Skirmisher
    .complete 13612,2 --5/5 Ashenvale Bowmen Slain
    .mob +Ashenvale Bowman
step
    #completewith Skirmishers
    .use 45001 >> |cRXP_WARN_Utiliser|r |T133690:0|t[Medicated Salve] |cRXP_WARN_on|r |cRXP_FRIENDLY_Wounded Mor'shan Defenders|r
    .complete 13613,1 --5/5 Wounded Mor'shan Defenders Rescued
    .target Wounded Mor'shan Defender
step
    #completewith MorshanDefenders
    >>Butin |cRXP_PICK_Flèches|r sur le sol
    .complete 13615,1 --10/10 Serviceable Arrow
step
    #label FindGorat
    .goto 63,64.19,84.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gorat|r
    .turnin 13618 >>Rendre la quête Trouvez Gorat !
    .accept 13619 >>Acceptez la quête Le dernier rapport
    .target Gorat
step
    #label Skirmishers
    #loop
    .goto 63,68.816,82.328,0
    .waypoint 63,66.454,85.871,50,0
    .waypoint 63,70.033,85.211,50,0
    .waypoint 63,68.816,82.328,50,0
    .waypoint 63,67.731,82.870,50,0
    .waypoint 63,66.784,84.708,50,0
    >>Tuez les |cRXP_ENEMY_Ashenvale Skirmishers|r et les |cRXP_ENEMY_Ashenvale Bowmen|r
    .complete 13612,1 --5/5 Ashenvale Skirmishers Slain
    .mob +Ashenvale Skirmisher
    .complete 13612,2 --5/5 Ashenvale Bowmen Slain
    .mob +Ashenvale Bowman
step
    #label MorshanDefenders
    #loop
    .goto 63,66.934,86.130,0
    .waypoint 63,65.370,85.300,20,0
    .waypoint 63,66.934,86.130,20,0
    .waypoint 63,66.813,84.329,20,0
    .waypoint 63,67.587,83.172,20,0
    .waypoint 63,69.001,83.160,20,0
    .waypoint 63,68.994,86.080,20,0
    .waypoint 10,40.760,12.633,20,0
    .waypoint 63,65.280,86.817,20,0
    .use 45001 >> Utilisez le |T133690:0|t[Medicated Salve] sur |cRXP_FRIENDLY_Wounded Mor'shan Defenders|r
    .complete 13613,1 --5/5 Wounded Mor'shan Defenders Rescued
    .target Wounded Mor'shan Defender
step
    #loop
    .goto 1440/1,-2057.00000,1391.50000,15,0
    .waypoint 1440/1,-2057.00000,1391.50000,15,0
    .waypoint 1440/1,-2082.40015,1365.00000,15,0
    .waypoint 1440/1,-2105.19995,1352.90002,15,0
    .waypoint 1440/1,-2154.69995,1411.90002,15,0
    .waypoint 1440/1,-2240.50000,1383.09998,15,0
    .waypoint 1440/1,-2280.10010,1393.00000,15,0
    .waypoint 1440/1,-2315.60010,1391.40002,15,0
    .waypoint 1440/1,-2341.69995,1376.00000,15,0
    .waypoint 1440/1,-2344.50000,1410.59998,15,0
    >>Butin |cRXP_PICK_Flèches|r sur le sol
    .complete 13615,1 --10/10 Serviceable Arrow
step
    .goto 1413/1,-2251.30005,1236.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kadrak|r
    .turnin 13612 >>Rendre la quête La défense de Mor'shan
    .turnin 13619 >>Rendre la quête Le dernier rapport
    .accept 13620 >>Acceptez la quête Livraison expresse
    .target Kadrak
step
    .goto 10,42.25,15.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Truun|r
    .turnin 13615 >>Rendre la quête Des carquois vides
    .target Truun
step
    .goto 10,42.43,15.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dinah|r
    .turnin 13620 >>Rendre la quête Livraison expresse
    .turnin 13613 >>Rendre la quête Sauvez les blessés
    .accept 13621 >>Acceptez la quête La vengeance de Gorat
    .target Dinah Halfmoon
step
    #completewith next
    .goto 63,64.16,84.50
    .cast 62772 >> |cRXP_WARN_Utiliser|r |T134719:0|t[Gorat's Imprégné de Sang] |cRXP_WARN_on|r |cRXP_FRIENDLY_Gorat|r
    .timer 103,La vengeance de Gorat RP
    .use 45023
step
    .goto 63,65.72,82.20
    >>Suivez l' |cRXP_FRIENDLY_Esprit de Gorat|r et tuez |cRXP_ENEMY_Capitaine Elendilad|r une fois qu'il apparaît
    .complete 13621,1 --1/1 Captain Elendilad slain
    .mob Captain Elendilad
    .target Gorat
    .target Spirit of Gorat
    .use 45023
step
    .goto 1413/1,-2251.30005,1236.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kadrak|r
    .turnin 13621 >>Rendre la quête La vengeance de Gorat
    .target Kadrak
step
    .goto 10,42.26,15.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Truun|r
    .accept 13628 >>Acceptez la quête Z'avez du bois ?
    .target Truun
step
    .goto 1413/1,-2251.30005,1236.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kadrak|r
    >>Obtenez |cRXP_LOOT_Kadrak's Rênes|r de lui
    .collect 45051,1,13628,1 --Kadrak's Reins (1)
    .target Kadrak
    .skipgossip
step
    .goto 10,42.84,16.15
    >>Montez |cRXP_FRIENDLY_Brutusk|r
    .complete 13628,1 --1/1 Brutusk mounted
    .timer 39,Got Bois? RP
    .target Brutusk
    --VV Timer
step
    .goto 63,72.93,80.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gorka|r
    .turnin 13628 >>Rendre la quête Z'avez du bois ?
    .accept 13640 >>Acceptez la quête Gestion des ressources
    .target Gorka
step
    #loop
    .goto 1440/1,-2385.00000,1520.30005,0
    .goto 1440/1,-2437.60010,1554.80005,30,0
    .goto 1440/1,-2417.50000,1496.09998,30,0
    .goto 1440/1,-2385.00000,1520.30005,30,0
    .goto 1440/1,-2373.19995,1467.50000,30,0
    .goto 1440/1,-2383.90015,1405.90002,30,0
    .goto 1440/1,-2323.00000,1496.50000,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Démoralisé Peons|r
    >>|cRXP_WARN_Suivez et protégez-les contre|r |cRXP_ENEMY_Orneval Stalkers|r |cRXP_WARN_alors qu'ils commencent à couper du bois. Ramassez le|r |cRXP_LOOT_Bois fraîchement coupé|r |cRXP_WARN_par terre à mesure qu'il apparaît|r
    .complete 13640,1 --5/5 Freshly Cut Wood
    .skipgossip
    .target Demoralized Peon
    .mob Ashenvale Stalker
step
    .goto 63,72.93,80.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gorka|r
    .turnin 13640 >>Rendre la quête Gestion des ressources
    .accept 13651 >>Acceptez la quête De l'huile de coude
    .target Gorka
step
    #completewith next
    >>Tuez |cRXP_ENEMY_Serres-tranchantes|r s'il est disponible. Ramassez |T136063:0|t[|cRXP_LOOT_La griffe de Serres-tranchantes|r] et utilisez-la pour commencer la quête
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >> Acceptez la quête La griffe de Serres-tranchantes
    .unitscan Sharptalon
    .use 16305
    .maxlevel 24
step
    #loop
    .goto 1440/1,-2566.90015,1799.70007,0
    .waypoint 1440/1,-2514.19995,1700.09998,50,0
    .waypoint 1440/1,-2566.90015,1799.70007,50,0
    .waypoint 1440/1,-2615.00000,1843.20007,50,0
    .waypoint 1440/1,-2497.90015,1864.70007,50,0
    .waypoint 1440/1,-2522.19995,1952.50000,50,0
    .waypoint 1440/1,-2606.50000,1940.30005,50,0
    .waypoint 1440/1,-2615.00000,1855.50000,50,0
    >>Tuez les |cRXP_ENEMY_Gelée pourrissante|r. Ramassez-les pour leur |cRXP_LOOT_Huile naturelle|r
    .complete 13651,1 --5/5 Natural Oil
    .mob Rotting Slime
step
    .goto 63,72.93,80.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gorka|r
    .turnin 13651 >>Rendre la quête De l'huile de coude
    .accept 13653 >>Acceptez la quête Crise à Bois-Brisé
    .target Gorka
step
    .goto 63,72.93,80.44
    .gossipoption 111661 >>Parlez à |cRXP_FRIENDLY_Gorka|r
    .timer 79,Crise à Bois-Brisé jeu de rôle
    .target Gorka
    .isOnQuest 13653
step
    .goto 63,72.93,80.44
    >>Rendez-vous à Mor'shan Ramparts avec |cRXP_FRIENDLY_Gorka|r
    >>|cRXP_WARN_Assurez-vous de ne pas être monté!|r
    .complete 13653,1 --1/1 Gorka accompanied to Mor'shan Ramparts
    .target Gorka
    .skipgossip
    --VV Timer
step
    .goto 10,42.71,14.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kadrak|r
    .turnin 13653 >>Rendre la quête Crise à Bois-Brisé
    .target Kadrak
    .accept 13712 >>Acceptez la quête Prêter main-forte
    --VV Timer
step
    .goto 10,42.71,14.95
    .gossipoption 111656 >>Parlez à |cRXP_FRIENDLY_Kadrak|r pour voyager vers Poste de Bois-Brisé
    .timer 110,Prêter main-forte jeu de rôle
    >>|cRXP_WARN_Cette quête peut être défaillante! Passez cette étape si c'est le cas|r
    .target Kadrak
    .isOnQuest 13712
step
    .goto 63,73.59,62.19
    >>Arrivez à Poste de Bois-Brisé
    >>|cRXP_WARN_Cette quête peut être défaillante! Passez cette étape si c'est le cas|r
    .complete 13712,1 --1/1 Splintertree Post Siege Broken
step
    .goto 63,73.61,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kadrak|r
    .turnin 13712 >>Rendre la quête Prêter main-forte
    .accept 13803 >>Acceptez la quête Le sang des faibles
    .target Kadrak
    .isQuestComplete 13712
step
    #optional
    .goto 63,73.61,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kadrak|r
    .accept 13803 >>Acceptez la quête Le sang des faibles
    .target Kadrak
    .isQuestTurnedIn 13712
step
    #completewith next
    .subzone 431 >>Voyagez au poste de Bois-brisé
    .isQuestAvailable 13712
step
    .goto 63,73.19,61.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vhulgra|r
    .fp >>Apprenez le trajet aérien vers Poste de Bois-Brisé
    .target Vhulgra
    .isQuestAvailable 6503
step
    .goto 63,73.56,60.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kuray'bin|r
    .accept 6503 >>Acceptez la quête Les estafettes d'Ashenvale
    .target Kuray'bin
    .isQuestTurnedIn 13712
step
    .goto 63,74.00,60.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aubergiste Kaylisk|r
    .home >>Liez votre Pierre de foyer au Poste de Bois-Brisé
    .target Innkeeper Kaylisk
    .isQuestTurnedIn 13712
    .isQuestAvailable 6503
step
    .goto 63,73.19,60.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valusha|r
    .accept 26448 >>Acceptez la quête Détruire la Légion
    .target Valusha
    .isQuestTurnedIn 13712
step
    .goto 63,72.20,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Durak|r dans la caverne
    .turnin 13803 >>Rendre la quête Le sang des faibles
    .accept 13805 >>Acceptez la quête Transpercez leur cœur !
    .target Durak
    .isQuestTurnedIn 13712
step
    .goto 63,73.83,62.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pixel|r
    .accept 13801 >>Acceptez la quête La nuit des Elfes morts-vivants
    .target Pixel
    .isQuestTurnedIn 13712
step
    .goto 63,73.34,62.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Démolisseur de Bois-Brisé|r
    .accept 13730 >>Acceptez la quête Jouer avec le gangrefeu
    .target Splintertree Demolisher
    .isQuestTurnedIn 13712
step
    #completewith FelFires
    >>Tuez les |cRXP_ENEMY_Demons|r dans Colline Gangrefeu
    .complete 26448,1 --15/15 Demons Slain
    .mob Mannaroc Lasher
    .mob Roaming Felguard
    .mob Searing Infernal
step
    #completewith KillDemons
    >>L'un des |cRXP_ENEMY_Demons|r peut laisser tomber les |T134943:0|t[|cRXP_LOOT_Les plans diaboliques|r]. Utilisez-les pour commencer la quête
    .collect 23798,1,26447 --Diabolical Plans (1)
    .accept 26447 >>Acceptez la quête Les plans diaboliques
    .isQuestTurnedIn 13712
step
    #label FelFires
    #loop
    .goto 63,81.928,66.385,0
    .waypoint 63,83.797,70.490,30,0
    .waypoint 63,84.297,67.684,30,0
    .waypoint 63,83.339,66.328,30,0
    .waypoint 63,82.818,66.955,30,0
    .waypoint 63,81.928,66.385,30,0
    .waypoint 63,81.788,65.245,30,0
    .waypoint 63,80.768,64.565,30,0
    .waypoint 63,80.654,67.347,30,0
    .waypoint 63,81.829,69.984,30,0
    .use 45478 >>|cRXP_WARN_Utilisez le|r |T237030:0|t[Renforcé Cartouche] |cRXP_WARN_sur les feux verts|r
    .complete 13730,1 --7/7 Fel Fires Siphoned
    .isQuestTurnedIn 13712
step
    #label KillDemons
    .goto 63,81.928,66.385,0
    .waypoint 63,83.797,70.490,50,0
    .waypoint 63,84.297,67.684,50,0
    .waypoint 63,83.339,66.328,50,0
    .waypoint 63,82.818,66.955,50,0
    .waypoint 63,81.928,66.385,50,0
    .waypoint 63,81.788,65.245,50,0
    .waypoint 63,80.768,64.565,50,0
    .waypoint 63,80.654,67.347,50,0
    .waypoint 63,81.829,69.984,50,0
    >>Tuez les |cRXP_ENEMY_Demons|r dans Colline Gangrefeu
    .complete 26448,1 --15/15 Demons Slain
    .mob Mannaroc Lasher
    .mob Roaming Felguard
    .mob Searing Infernal
    .isQuestTurnedIn 13712
step
    #completewith DorDanilDen
    >>Tuez |cRXP_ENEMY_Sharptalon|r. Dépouillez-le pour sa [|cRXP_LOOT_Sharptalon's Claw|r] et utilisez-la pour commence la quête
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >> Acceptez la quête La griffe de Serres-tranchantes
    .unitscan Sharptalon
    .use 16305
    .maxlevel 24
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Ashenvale Outrunners|r
    >>|cRXP_WARN_Ils sont cachés près des arbres|r
    .complete 6503,1 --9/9 Ashenvale Outrunners Killed
    .unitscan Ashenvale Outrunner
step
    #label DorDanilDen
    .goto 63,75.66,75.32,20 >>Entrez au Refuge des saisons de Dor'danil
    .isQuestTurnedIn 13712
    .isOnQuest 13805
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Severed Keepers|r et les |cRXP_ENEMY_Severed Druids|r
    .complete 13801,1 --15/15 Night Elf Ghosts Slain
    .mob Severed Druid
    .mob Severed Keeper
step
    .goto 63,75.52,74.20
    .use 45683 >> |cRXP_WARN_Utilisez le|r |T134840:0|t[Corruption sanguine des Kaldoreis]|cRXP_WARN_ au centre de la grotte|r
    .complete 13805,1 --1/1 Forest Heart Corrupted
    .isQuestTurnedIn 13712
step
    #loop
    .goto 63,76.929,74.847,0
    .waypoint 63,75.394,75.203,15,0
    .waypoint 63,75.842,76.211,15,0
    .waypoint 63,76.208,75.300,15,0
    .waypoint 63,76.929,74.847,15,0
    .waypoint 63,77.356,75.219,15,0
    .waypoint 63,77.359,75.949,15,0
    .waypoint 63,76.722,75.943,15,0
    .waypoint 63,77.401,74.644,15,0
    >>Tuez les |cRXP_ENEMY_Severed Keepers|r et les |cRXP_ENEMY_Severed Druids|r
    .complete 13801,1 --15/15 Night Elf Ghosts Slain
    .mob Severed Druid
    .mob Severed Keeper
    .isQuestTurnedIn 13712
step
    #completewith next
    >>Tuez |cRXP_ENEMY_Sharptalon|r. Dépouillez-le pour sa [|cRXP_LOOT_Sharptalon's Claw|r] et utilisez-la pour commence la quête
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >> Acceptez la quête La griffe de Serres-tranchantes
    .unitscan Sharptalon
    .use 16305
    .maxlevel 24
step
    #loop
    .goto 63,74.504,72.562,0
    .waypoint 63,74.504,72.562,30,0
    .waypoint 63,71.936,73.893,30,0
    .waypoint 63,71.127,73.817,30,0
    .waypoint 63,71.392,72.955,30,0
    .waypoint 63,71.921,70.364,30,0
    .waypoint 63,72.913,70.286,30,0
    .waypoint 63,73.638,70.814,30,0
    .waypoint 63,74.243,69.532,30,0
    .waypoint 63,75.577,70.316,30,0
    .waypoint 63,74.493,72.447,30,0
    >>Tuez les |cRXP_ENEMY_Les estafettes d'Orneval|r
    >>|cRXP_WARN_Ils sont invisibles près des arbres|r
    .complete 6503,1 --9/9 Ashenvale Outrunners Killed
    .unitscan Ashenvale Outrunner
    .isQuestTurnedIn 13712
step
    #loop
    .goto 1440/1,-2557.50000,1751.50000,0
    .waypoint 1440/1,-2525.19995,1684.30005,40,0
    .waypoint 1440/1,-2557.50000,1751.50000,40,0
    .waypoint 1440/1,-2578.90015,1805.80005,40,0
    .waypoint 1440/1,-2494.19995,1868.70007,40,0
    .waypoint 1440/1,-2416.10010,1835.40002,40,0
    .waypoint 1440/1,-2387.90015,1787.09998,40,0
    .waypoint 1440/1,-2480.90015,1737.70007,40,0
    >>Tuez |cRXP_ENEMY_Sharptalon|r. Dépouillez-le pour sa [|cRXP_LOOT_Sharptalon's Claw|r] et utilisez-la pour commence la quête
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >> Acceptez la quête La griffe de Serres-tranchantes
    .unitscan Sharptalon
    .use 16305
    .isQuestTurnedIn 13712
    .maxlevel 24
step << skip
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir au poste de Bois-brisé
    .use 6948
    .subzoneskip 431
    --Need hearth cd for zoram strand
step
    .goto 63,73.87,62.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pixel|r
    .turnin 13801 >>Rendez la quête La nuit des Elfes morts-vivants
    .target Pixel
    .isQuestTurnedIn 13712
step
    .goto 63,73.61,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kadrak|r
    .turnin 13805 >>Rendez la quête Transpercez leur cœur !
    --.accept 13808 >>Accept Mission Improbable
    .accept 13848 >>Acceptez la quête Un oiseau de mauvais augure
    .target Kadrak
    .isQuestTurnedIn 13712
step
    #questguide
    .goto 63,73.61,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kadrak|r
    .turnin 13805 >>Rendez la quête Transpercez leur cœur !
    .accept 13808 >>Acceptez la quête Mission improbable
    .accept 13848 >>Acceptez la quête Un oiseau de mauvais augure
    .target Kadrak
    .isQuestTurnedIn 13712
step
    .goto 63,73.32,62.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Démolisseur de Bois-Brisé|r
    .turnin 13730 >>Rendez la quête Jouer avec le gangrefeu
    --.accept 13751 >>Accept Tell No One! -- Optional skip
    .target Splintertree Demolisher
    .isQuestTurnedIn 13712
step
    #questguide
    .goto 63,73.32,62.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Démolisseur de Bois-Brisé|r
    .turnin 13730 >>Rendez la quête Jouer avec le gangrefeu
    .accept 13751 >>Acceptez la quête Ne le dis à personne !
    .target Splintertree Demolisher
    .isQuestTurnedIn 13712
step
    .goto 63,73.56,60.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kuray'bin|r
    .turnin 6503 >>Rendez la quête Les estafettes d'Ashenvale
    .target Kuray'bin
    .isQuestTurnedIn 13712
step
    .goto 63,73.16,60.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valusha|r
    .turnin 26448 >>Rendez la quête Détruire la Légion
    .turnin 26447 >>Rendez la quête Les plans diaboliques
    --.accept 26449 >>Accept Never Again!
    .target Valusha
    .isOnQuest 26447
step
    .goto 63,73.16,60.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valusha|r
    .turnin 26448 >>Rendez la quête Détruire la Légion
    .target Valusha
    .isQuestTurnedIn 13712
--step
    --.goto 63,73.16,60.10
    -->>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valusha|r
    --.accept 26449 >>Accept Never Again!
    --.target Valusha
    --.isQuestTurnedIn 26447
    --Not worth doing

    --Could go straight to Zoram Strand from here. The 13751 chain is bad xp/hr (13751/13797/13798/13841/13842)

step
    #questguide
    .goto 63,72.20,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Durak|r dans la caverne
    .turnin 13751 >>Rendez la quête Ne le dis à personne !
    .accept 13797 >>Acceptez la quête Des tâches ingrates
    .target Durak
step
    #questguide
    .goto 63,72.62,58.34
    >>Ramassez le butin des |cRXP_PICK_Débris frais|r dispersés dans la grotte pour |cRXP_LOOT_Blocs de minerai|r
    .complete 13797,1 --10/10 Chunk of Ore
step
    #questguide
    .goto 63,72.20,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Durak|r
    .turnin 13797 >>Rendez la quête Des tâches ingrates
    .accept 13798 >>Acceptez la quête La pluie de destruction
    .target Durak
step
    #questguide
    .goto 63,74.09,62.92
    .use 45598 >> |cRXP_WARN_Escaladez la tour et visez le|r |T134569:0|t[Maudit Ore] |cRXP_WARN_sur|r |cRXP_ENEMY_Raging Ancients|r |cRXP_WARN_et|r |cRXP_ENEMY_Attacking Elves|r
    .complete 13798,2 --5/5 Raging Ancients Slain
    .complete 13798,1 --30/30 Attacking Elves Slain
    .mob Raging Ancients
    .mob Ashenvale Assailant
    .mob Ashenvale Bowman
    --VV Dogshit quest, item has 15sec cd and must be used like 10+ times. But good quest rewards
step
    #questguide
    .goto 63,72.18,57.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Durak|r
    .turnin 13798 >>Rendez la quête La pluie de destruction
    .target Durak
step
    #questguide
    .goto 63,73.34,62.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Démolisseur de Bois-Brisé|r
    .accept 13841 >>Acceptez la quête Toutes mes confuses
    .target Splintertree Demolisher
    .isQuestTurnedIn 13798
step
    #questguide
    .goto 63,82.55,53.63
    .use 45710 >>|cRXP_WARN_Utilisez votre|r |T133639:0|t[Poudre de signal secret]|cRXP_WARN_ au Brasero en train de se consumer|r
    .complete 13808,1 --1/1 Smoldering Brazier lit
step
    #questguide
    .goto 63,82.54,53.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krokk|r
    .turnin 13808 >>Rendez la quête Mission improbable
    .accept 13815 >>Acceptez la quête De quel bois on se chauffe
    .accept 13865 >>Acceptez la quête Un boulot salissant
    .target Krokk
step
    #questguide
    #completewith ChopSomeTrees
    >>Tuez les |cRXP_ENEMY_Ashenvale Repérage|r
    .complete 13865,4 --12/12 Ashenvale Scouts defeated
    .mob Ashenvale Scout
step
    #questguide
    #completewith next
    .use 45807 >> |cRXP_WARN_Utilisez votre|r |T132399:0|t[Splintertree Hache] |cRXP_WARN_pour abattre|r |cRXP_FRIENDLY_Ashenvale Oaks|r
    .complete 13815,1 --6/6 Ashenvale Oaks Chopped Down
    .target Ashenvale Oak
step
    #questguide
    >>Tuez |cRXP_ENEMY_Endolar|r, |cRXP_ENEMY_Arminon|r et |cRXP_ENEMY_Dorinar|r
    .goto 63,85.46,56.04
    .complete 13865,1 --1/1 Protector Endolar slain
    .goto 63,85.74,57.97
    .complete 13865,3 --1/1 Protector Arminon slain
    .goto 63,85.36,60.68
    .complete 13865,2 --1/1 Protector Dorinar slain
    .mob Protector Endolar
    .mob Protector Arminon
    .mob Protector Dorinar
step
    #questguide
    #label ChopSomeTrees
    .goto 63,86.51,54.67
    .use 45807 >> |cRXP_WARN_Utilisez votre|r |T132399:0|t[Splintertree Hache] |cRXP_WARN_pour abattre|r |cRXP_FRIENDLY_Ashenvale Oaks|r
    .complete 13815,1 --6/6 Ashenvale Oaks Chopped Down
    .target Ashenvale Oak
step
    #questguide
    .goto 63,85.53,56.74
    >>Tuez les |cRXP_ENEMY_Ashenvale Repérage|r
    .complete 13865,4 --12/12 Ashenvale Scouts defeated
    .mob Ashenvale Scout

    --Quest below (26449) not worth, too much travel

step
    #questguide
    #completewith next
    .subzone 435 >> Voyagez vers Canyon de la Malechute
step
    #questguide
    .goto 63,89.75,76.72
    >>Tuez |cRXP_ENEMY_Gorgannon|r. Ramassez-le pour son |cRXP_LOOT_Blade|r
    .complete 26449,1 --1/1 Gorgannon's Flaming Blade
    .mob Gorgannon
    .isQuestTurnedIn 26447
step
    #questguide
    .goto 63,78.46,83.89
    >>Tuez |cRXP_ENEMY_Diathorus le Chercheur|r. Ramassez-le pour son |cRXP_LOOT_Lance|r.
    >>|cRXP_WARN_Il se trouve de l'autre côté du premier pont que vous rencontrez en entrant dans la grotte|r
    .complete 26449,2 --1/1 Seeker's Fel Spear
    .mob Diathorus the Seeker
    .isQuestTurnedIn 26447
step
    #questguide
    .goto 63,82.54,53.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krokk|r
    .use 45710 >>|cRXP_WARN_Utilisez votre|r |T133639:0|t[Secret Signal Powder] |cRXP_WARN_au Brasero en train de se consumer pour invoquer|r |cRXP_FRIENDLY_Krokk|r
    .turnin 13815 >>Rendre la quête De quel bois on se chauffe
    .turnin 13865 >>Rendre la quête Un boulot salissant
    .accept 13870 >>Accepter Le nec plus ultra
    .target Krokk
step
    #questguide
    .goto 63,90.94,58.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Surveillant Gorthak|r au Camp de bûcherons Chanteguerre
    .turnin 13870 >>Rendre la quête Le nec plus ultra
    .accept 13871 >>Accepter Sécurité !
    .target Overseer Gorthak
step
    #questguide
    .goto 63,89.97,59.10
    >>Courez dehors et tournez à gauche. Tuez l'|cRXP_ENEMY_Assassin|r qui vous saute dessus
    .complete 13871,1 --1/1 Kaldorei Assassin's Head
    .unitscan Kaldorei Assassin
step
    #questguide
    .goto 63,90.94,58.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Surveillant Gorthak|r
    .turnin 13871 >>Rendre la quête Sécurité !
    .target Overseer Gorthak
step
    #questguide
    .goto 63,90.75,58.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gardien Ménérin|r
    .accept 13873 >>Accepter La dernière volonté de Sheelah
    .target Guardian Menerin
step
    #questguide
    .goto 63,89.60,48.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gardien Gurtar|r
    .turnin 13873 >>Rendre la quête La dernière volonté de Sheelah
    .accept 13875 >>Accepter La demande de Gurtar
    .target Guardian Gurtar
step
    #label Bloodcups
    #questguide
    .goto 63,73.29,60.22
    >>Ramassez les |cRXP_PICK_Bloodcups épineux|r sur le sol
    >>|cRXP_WARN_Beaucoup se trouvent le long de la route vers Poste de Bois-Brisé|r
    .collect 46315,8,13875,1 --Thorned Bloodcup (8)
step
    #questguide
    #requires Bloodcups
    .use 46316 >>Utilisez le |T134892:0|t[Tresse de cheveux orcs] pour créer une |cRXP_LOOT_Sanguinette tressée|r
    .complete 13875,1 --1/1 Bloodcup Braid
step
    #questguide
    .goto 63,73.34,62.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Démolisseur de Bois-Brisé|r
    .turnin 13875 >>Rendre la quête La demande de Gurtar
    .target Splintertree Demolisher
step
    #questguide
    .goto 63,73.15,60.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valusha|r
    .turnin 26449 >>Rendre la quête Plus jamais !
    .target Valusha
    .isQuestComplete 26447
step
    #questguide
    .goto 63,73.74,61.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Locke Okarr|r
    .accept 13806 >>Accepter Les faunes et la flore
    .target Locke Okarr
    .isQuestTurnedIn 26449
step
    #questguide
    .goto 63,73.86,62.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pixel|r
    .accept 6441 >>Acceptez la quête Cornes de satyre
    .target Pixel
    .isQuestTurnedIn 26449
step
    #questguide
    #completewith next
    .subzone 430 >>Voyagez vers Satyrnaar au nord
    .isQuestTurnedIn 26449
step
    #questguide
    #completewith next
    >>Tuez les |cRXP_ENEMY_Satyrs|r. Dépouillez-les pour leur |cRXP_LOOT_Horns|r
    .complete 6441,1 --16/16 Satyr Horns
    .mob Bleakheart Hellcaller
    .mob Bleakheart Satyr
    .mob Bleakheart Trickster
    .mob Bleakheart Shadowstalker
    .isQuestTurnedIn 26449
step
    #questguide
    .goto 63,79.48,50.21
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tCliquez sur les |cRXP_FRIENDLY_Ritual Gemmes|r violets
    .complete 13806,1 --12/12 Demon Portals Interrupted
    .isQuestTurnedIn 26449
step
    #questguide
    .goto 63,81.69,49.40
    >>Tuez les |cRXP_ENEMY_Satyrs|r. Ramassez-les pour leurs |cRXP_LOOT_Horns|r
    .complete 6441,1 --16/16 Satyr Horns
    .mob Bleakheart Hellcaller
    .mob Bleakheart Satyr
    .mob Bleakheart Trickster
    .mob Bleakheart Shadowstalker
    .isQuestTurnedIn 26449
step
    #questguide
    .goto 63,73.87,62.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pixel|r
    .turnin 6441 >>Rendez la quête Cornes de satyre
    .target Pixel
step
    #questguide
    .goto 63,73.78,61.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Locke Okarr|r
    .turnin 13806 >>Rendre la quête Les faunes et la flore
    .target Locke Okarr
    .isQuestTurnedIn 26449
step
    #xprate >1.19
    .maxlevel 24,AshenvaleEnd
    .goto 63,73.19,61.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vhulgra|r
    .gossipoption 111682 >> Envolez-vous vers Zoram Strand
    .timer 165,Zoram Strand, Orneval
    .target Vhulgra
    .subzoneskip 414
    .isQuestTurnedIn 13712
step
    #xprate <1.2
    .maxlevel 25,AshenvaleEnd
    .goto 63,73.19,61.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vhulgra|r
    .gossipoption 111682 >> Envolez-vous vers Zoram Strand
    .timer 165,Zoram Strand, Orneval
    .target Vhulgra
    .subzoneskip 414
    .isQuestTurnedIn 13712
step
    #completewith next
    .subzone 2897 >>Voyagez vers Avant-poste de Zoram'gar
    .isQuestAvailable 13712
step
    .goto 63,11.16,34.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Andruk|r
    .fp >>Apprenez le Trajet aérien d'Avant-poste de Zoram'gar
    .target Andruk
    .isQuestAvailable 26890
step
    .goto 63,12.11,33.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Commandant Croc-sinistre|r
    .turnin 13848 >>Rendre la quête Un oiseau de mauvais augure
    .accept 13890 >>Accepter Jeter de l'huile sur le feu
    --.accept 26894 >>Accept Blackfathom Deeps
    .target Commander Grimfang
    --26894 BFD dungeon quest
step
    .goto 63,11.64,35.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dagrun Marteau-rageur|r
    .accept 13883 >>Accepter Mené en bateau
    .accept 26890 >>Acceptez la quête L'Essence d'Aku'Mai
    .target Dagrun Ragehammer
step
    .goto 63,12.66,35.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marukai|r
    .accept 6442 >>Acceptez la quête Des nagas sur la grève de Zoram
    .target Marukai
step
    .goto 63,12.99,34.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aubergiste Duras|r
    .home >>Liez votre Pierre de foyer à Avant-poste de Zoram'gar
    .target Innkeeper Duras
    .isQuestAvailable 26890
step
    .goto 63,12.77,34.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Muglash|r
    >>Ceci va commencer une quête d'escorte. Faites attention car elle est difficile
    .accept 6641,1 >> Acceptez la quête Vorsha la Flagellante
    .target Muglash
step
    #completewith LitLightHouse
    >>Tuez les |cRXP_ENEMY_Wrathtail Nagas|r. Dépouillez-les pour leur |cRXP_LOOT_Tête|r
    .complete 6442,1 --20/20 Wrathtail Head
    .mob Wrathtail Waverider
    .mob Wrathtail Sorceress
step
    .goto 63,9.66,27.64
    >>Suivez |cRXP_FRIENDLY_Muglash|r. Cliquez sur |cRXP_PICK_Naga Brasero|r quand vous y arrivez
    >>|cRXP_WARN_Il y aura des vagues de|r |cRXP_ENEMY_Naga|r |cRXP_WARN_qui apparaissent. Soyez prudent quand|r |cRXP_ENEMY_Vorsha|r |cRXP_WARN_apparaît, il frappe fort|r
    .complete 6641,1 --Defeat Vorsha the Lasher
    .mob Vorsha the Lasher
step
    #completewith next
    >>Ramassez |cRXP_LOOT_Sunken Débris Métal|r du fond océanique
    .complete 13883,1 --10/10 Sunken Scrap Metal
step
    #loop
    .goto 1440/1,1237.40002,3394.30005,0
    .waypoint 1440/1,1159.70007,3451.69995,50,0
    .waypoint 1440/1,1237.40002,3394.30005,50,0
    .waypoint 1440/1,1316.80005,3368.30005,50,0
    .waypoint 1440/1,1395.90002,3382.90015,50,0
    >>Tuez |cRXP_ENEMY_Mystlash Hydras|r. Ramassez-les pour leur |cRXP_LOOT_Blubber|r
    .collect 46365,10,13890,1 --Mystlash Hydra Blubber (10)
    .mob Mystlash Hydra
step
    #loop
    .goto 1440/1,1372.59998,3405.80005,0
    .waypoint 1440/1,1372.59998,3405.80005,40,0
    .waypoint 1440/1,1201.90002,3394.40015,40,0
    .waypoint 1440/1,1350.70007,3329.19995,40,0
    >>Terminez de ramasser |cRXP_LOOT_Sunken Débris Métal|r du fond océanique
    .complete 13883,1 --10/10 Sunken Scrap Metal
step
    #completewith next
    .goto 63,11.69,35.36,30 >> Rendez-vous à la forge de Zoram'Gar Avant-poste
step
    .goto 63,11.69,35.36
    .use 46365 >>|cRXP_WARN_Utilisez la|r |T237338:0|t[Graisse d'hydre fouettebrume] |cRXP_WARN_pour créer|r |cRXP_LOOT_Huile d'hydre fouettebrume|r
    >>|cRXP_WARN_Vous devez être à la forge de Zoram'Gar Avant-poste pour faire cela|r
    .collect 46366,1,13890,1 --Mystlash Hydra Oil (1)
step
    .goto 63,11.57,35.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dagrun Marteau-rageur|r
    .turnin 13883 >>Rendez la quête Mené en bateau
    .target Dagrun Ragehammer
step
    #label LitLightHouse
    .goto 63,6.74,28.97
    >>Rendez-vous au sommet du phare et allumez le feu
    .complete 13890,1 --1/1 Lighthouse Fire Lit
step
    #loop
    .goto 1440/1,954.29999,3590.19995,0
    .waypoint 1440/1,1234.80005,3533.40015,50,0
    .waypoint 1440/1,1061.30005,3553.60010,50,0
    .waypoint 1440/1,954.29999,3590.19995,50,0
    .waypoint 1440/1,889.79999,3661.40015,50,0
    .waypoint 1440/1,814.90002,3866.40015,50,0
    >>Terminez de tuer |cRXP_ENEMY_Wrathtail Nagas|r. Ramassez-les pour obtenir leurs |cRXP_LOOT_Face|r
    .complete 6442,1 --20/20 Wrathtail Head
    .mob Wrathtail Waverider
    .mob Wrathtail Sorceress
step
    .goto 63,12.11,33.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Commandant Croc-sinistre|r
    .turnin 13890 >>Rendez la quête Jeter de l'huile sur le feu
    .accept 13920 >>Acceptez la quête Avant de partir...
    .target Commander Grimfang
step
    .goto 63,12.46,35.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Warsong Runner|r
    .turnin 6641 >>Rendez la quête Vorsha la Flagellante
    .target Warsong Runner
step
    .goto 63,12.66,35.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marukai|r
    .turnin 6442 >>Rendez la quête Des nagas sur la grève de Zoram
    .accept 13901 >>Acceptez la quête Un désespoir intense
    .target Marukai
step
    #loop
    .goto 1440/1,394.10001,3549.50000,0
    .waypoint 1440/1,682.60004,3480.60010,50,0
    .waypoint 1440/1,584.60004,3343.60010,50,0
    .waypoint 1440/1,394.10001,3549.50000,50,0
    .waypoint 1440/1,558.50000,3604.00000,50,0
    .waypoint 1440/1,661.20001,3772.90015,50,0
    .waypoint 1440/1,643.00000,3932.40015,50,0
    >>Tuez |cRXP_ENEMY_Wild Bucks|r. Ramassez-les pour leur |cRXP_LOOT_Steak|r
    .complete 13920,1 --5/5 Venison Steak
    .mob Wild Buck
step
    #completewith next
    .goto 63,14.20,13.85,30 >>Sautez dans les Profondeurs de Brassenoire
    .subzoneskip 5517
step
    #completewith next
    >>Ramassez le |cRXP_PICK_Saphir d'Aku'Mai|r des murs
    .complete 26890,1 --20/20 Sapphire of Aku'Mai
step
    #loop
    .goto 1414/1,902.00000,4265.50000,0
    .waypoint 1414/1,940.70001,4170.10010,20,0
    .waypoint 1414/1,902.00000,4265.50000,20,0
    .waypoint 1414/1,898.00000,4319.10010,20,0
    .waypoint 1414/1,821.90002,4252.50000,20,0
    .waypoint 1414/1,742.60004,4223.00000,20,0
    >>Tuez |cRXP_ENEMY_Blackfathom Tide Priestesses|r
    .complete 13901,1 --6/6 Blackfathom Tide Priestesses slain
    .mob Blackfathom Tide Priestess
step
    #loop
    .goto 1414/1,902.00000,4265.50000,0
    .waypoint 1414/1,940.70001,4170.10010,20,0
    .waypoint 1414/1,902.00000,4265.50000,20,0
    .waypoint 1414/1,898.00000,4319.10010,20,0
    .waypoint 1414/1,821.90002,4252.50000,20,0
    .waypoint 1414/1,742.60004,4223.00000,20,0
    >>Terminez de ramasser |cRXP_PICK_Saphir d'Aku'Mai|r des murs
    .complete 26890,1 --20/20 Sapphire of Aku'Mai
step
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour vous téléporter à Zoram Strand
    .use 6948
    .subzoneskip 2897
step
    .goto 63,12.11,33.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Commandant Croc-sinistre|r
    .turnin 13920 >>Rendez la quête Avant de partir...
    .accept 13923 >>Acceptez la quête En route pour le Guet de Hurlenfer
    .target Commander Grimfang
step
    .goto 63,12.66,35.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marukai|r
    .turnin 13901 >>Rendez la quête Un désespoir intense
    .target Marukai
step
    .goto 63,11.57,35.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dagrun Marteau-rageur|r
    .turnin 26890 >>Rendez la quête L'Essence d'Aku'Mai
    .target Dagrun Ragehammer
step
    #completewith HellscreamsWatchPickups
    .goto 63,11.16,34.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Andruk|r
    .gossipoption 111691 >>Envolez-vous vers Guet de Hurlenfer
    .target Andruk
step
    .goto 63,38.08,42.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thraka|r
    .fp >>Apprenez le trajet de vol vers Guet de Hurlenfer
    .target Thraka
    .isQuestAvailable 6462
step
    .goto 63,38.60,42.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aubergiste Linkasa|r
    .home >>Liez votre Pierre de foyer à Guet de Hurlenfer
    .target Innkeeper Linkasa
    .isQuestAvailable 6462
step
    .goto 63,38.01,42.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Capitaine Goggath|r
    >>|cRXP_WARN_Il patrouille dans les alentours|r
    .turnin 13923 >>Rendez la quête En route pour le Guet de Hurlenfer
    .accept 13936 >>Acceptez la quête Gluon englué
    .target Captain Goggath
step
    .goto 63,37.77,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Karang Amakkar|r
    .accept 216 >>Acceptez la quête Entre un roc et un Crin-de-Chardon
    .target Karang Amakkar
step
    .goto 63,37.98,43.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gluon|r
    .turnin 13936 >>Rendez la quête Gluon englué
    .accept 13942 >>Acceptez la quête Je vais l'exploser, façon puzzle !
    .target Tweedle
step
    .goto 63,38.00,42.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Capitaine Goggath|r
    >>|cRXP_WARN_Il patrouille dans les alentours|r
    .accept 13943 >>Acceptez la quête Trêve de plaisanterie !
    .target Captain Goggath
step
    #label HellscreamsWatchPickups
    .goto 63,38.89,42.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mitsuwa|r
    .accept 6462 >>Acceptez la quête Charme troll
    .target Mitsuwa
step
    #loop
    .goto 1440/1,-360.50000,2929.60010,0
    .waypoint 1440/1,-298.20001,2929.19995,35,0
    .waypoint 1440/1,-360.50000,2929.60010,35,0
    .waypoint 1440/1,-433.80002,2897.00000,35,0
    .waypoint 1440/1,-571.00000,2871.19995,35,0
    .waypoint 1440/1,-592.50000,2821.19995,35,0
    >>Tuez |cRXP_ENEMY_Astranaar Officers|r et |cRXP_ENEMY_Astranaar Skirmishers|r
    >>Ramassez |cRXP_PICK_Moon-Kissed Clay|r sur le sol
    .complete 13943,2 --3/3 Astranaar Officers slain
    .mob +Astranaar Officer
    .complete 13943,1 --10/10 Astranaar Skirmishers slain
    .mob +Astranaar Skirmisher
    .complete 13942,1 --10/10 Moon-Kissed Clay
step
    #completewith next
    >>Tuez |cRXP_ENEMY_Thistlefur Furbolgs|r
    .complete 216,1 --15/15 Thistlefur Village Furbolgs killed
    .mob Thistlefur Pathfinder
    .mob Thistlefur Shaman
    .mob Thistlefur Avenger
step
    #completewith next
    .goto 63,38.37,30.59,40 >>Entrez dans le repaire des Crins-de-chardons
step
    #loop
    .goto 1440/1,-627.70001,3394.69995,0
    .waypoint 1440/1,-605.60004,3401.69995,15,0
    .waypoint 1440/1,-627.70001,3394.69995,15,0
    .waypoint 1440/1,-631.79999,3349.30005,15,0
    .waypoint 1440/1,-574.70001,3385.60010,15,0
    .waypoint 1440/1,-676.70001,3314.19995,15,0
    .waypoint 1440/1,-683.60004,3359.00000,15,0
	>>Ouvrez les |cRXP_PICK_Troll Chests|r sur le sol pour les |cRXP_LOOT_Troll Charms|r
	.complete 6462,1 --Collect Troll Charm (x8)
step
    .goto 63,41.49,34.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ruul|r au fond de la grotte. Cela va commencer une escorte
    .accept 6482 >> Acceptez la quête Liberté pour Ruul
    .target Ruul Snowhoof
step
    .goto 63,40.68,33.21,20,0
    .goto 63,40.29,32.25,20,0
    .goto 63,39.41,31.00,20,0
    .goto 63,38.28,30.68,20,0
    .goto 63,37.39,32.74,30,0
    .goto 63,37.30,34.49,30,0
    .goto 63,38.73,36.86,50,0
    .goto 63,38.35,38.55
    >>Escortez |cRXP_FRIENDLY_Ruul|r hors du Village des Crins-de-chardons
    >>|cFFFCDC00Attention ! 3|r |cRXP_ENEMY_Thistlefurs|r |cFFFCDC00apparaîtront une fois que vous êtes à mi-chemin dans la caverne et 3 autres en dehors du portail du Village des Crins-de-Chardon|r
    .complete 6482,1 --Escort Ruul from the Thistlefurs
    .target Ruul Snowhoof
step
    .goto 63,39.45,36.62
    >>Tuez |cRXP_ENEMY_Thistlefur Furbolgs|r
    .complete 216,1 --15/15 Thistlefur Village Furbolgs killed
    .mob Thistlefur Pathfinder
    .mob Thistlefur Shaman
    .mob Thistlefur Avenger
step
    .goto 63,38.00,42.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Capitaine Goggath|r
    >>|cRXP_WARN_Il patrouille dans les alentours|r
    .turnin 13943 >>Rendez la quête Trêve de plaisanterie !
    .target Captain Goggath
step
    .goto 63,37.77,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Karang Amakkar|r
    .turnin 216 >>Rendez la quête Entre un roc et un Crin-de-Chardon
    .target Karang Amakkar
step
    .goto 63,37.98,43.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gluon|r
    .turnin 13942 >>Rendez la quête Je vais l'exploser, façon puzzle !
    .accept 13944 >>Acceptez la quête Petit, mais costaud !
    .target Tweedle
step
    .goto 63,38.89,42.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mitsuwa|r
    .turnin 6462 >>Rendez la quête Charme troll
    .target Mitsuwa
step
    .goto 63,38.47,44.22
    .use 46701 >>|cRXP_WARN_Utilisez|r |T133711:0|t[Explosif improvisé de Gluon] |cRXP_WARN_au chariot brisé|r
    .complete 13944,1 --1/1 Broken Wagon exploded
step
    .goto 63,38.00,42.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Capitaine Goggath|r
    >>|cRXP_WARN_Il patrouille dans les alentours|r
    .turnin 13944 >>Rendez la quête Petit, mais costaud !
    .accept 13947 >>Acceptez la quête Écrastranaar !
    .target Captain Goggath
step
    .goto 63,38.08,42.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thraka|r
    .gossipoption 111697 >>Prenez le coursier du vent pour bombarder Astranaar
    .target Thraka
    .isOnQuest 13947
step
    .goto 63,36.24,51.03
    >>Utilisez |T133711:0|t[Lancement d'explosif] sur |cRXP_ENEMY_Astranaar Sentinels|r et |cRXP_ENEMY_Astranaar Throwers|r
    .complete 13947,1 --20/20 Astranaar Sentinels slain
    .mob +Astranaar Sentinel
    .complete 13947,2 --10/10 Astranaar Throwers destroyed
    .mob +Astranaar Thrower
step
    #completewith next
    .cast vehicle,65481 >>|cRXP_WARN_Utilisez|r |T136011:0|t[Retour à la base !] |cRXP_WARN_pour revenir à Guet de Hurlenfer|r
    .subzoneskip 4691
step
    .goto 63,37.99,42.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Capitaine Goggath|r
    >>|cRXP_WARN_Il patrouille dans les alentours|r
    .turnin 13947 >>Rendez la quête Écrastranaar !
    .accept 13958 >>Acceptez la quête La situation est critique !
    .target Captain Goggath
step
    .goto 63,37.98,43.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gluon|r
    .accept 13974 >>Acceptez la quête Le petit paquet de Gluon
    .target Tweedle
step
    #questguide
    .goto 63,38.79,43.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Broyk|r
    .accept 13879 >>Acceptez la quête Le Pic-Tonnerre
    .target Broyk
step
    #questguide
    #completewith next
    .goto 63,52.08,56.50,50 >>Rendez-vous au Pic-Tonnerre
step
    #questguide
    .goto 63,52.08,56.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Stikwad|r
    .turnin 13879 >>Rendez la quête Le Pic-Tonnerre
    .target Stikwad
step
    #questguide
    .goto 63,52.08,56.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arctanus|r
    .accept 13884 >>Acceptez la quête Ils ne feront pas long feu
    .target Arctanus
step
    #questguide
    .goto 63,52.31,56.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Noyau|r
    .accept 13880 >>Acceptez la quête Chaud devant !
    .target Core
step
    #questguide
    #completewith LavaRagers
    .goto 63,52.08,56.71,0
    +|cRXP_WARN_Si vous perdez votre|r |cRXP_FRIENDLY_Surgisseur glacial|r|cRXP_WARN_, parlez à|r |cRXP_FRIENDLY_Arctanus|r |cRXP_WARN_à nouveau pour en obtenir un autre|r
    .skipgossipid 111688
    .target Arctanus
step
    #questguide
    #completewith next
    >>Tuez |cRXP_ENEMY_Lava Ragers|r
    .complete 13884,1 --10/10 Lava Rager slain
    .mob Lava Rager
step
    #questguide
    #loop
    .goto 1440/1,-1165.50000,2678.50000,0
    .waypoint 1440/1,-1189.80005,2600.30005,30,0
    .waypoint 1440/1,-1165.50000,2678.50000,30,0
    .waypoint 1440/1,-1048.50000,2761.10010,30,0
    .waypoint 1440/1,-1122.09998,2828.30005,30,0
    .waypoint 1440/1,-1247.30005,2860.00000,30,0
    .waypoint 1440/1,-1300.80005,2733.19995,30,0
    .waypoint 1440/1,-1323.30005,2631.60010,30,0
    .use 46352 >> |cRXP_WARN_Utilisez le|r |T237588:0|t[Don de la Terre] |cRXP_WARN_sur|r |cRXP_PICK_Lava Fissures|r
    .complete 13880,1 --8/8 Lava fissures filled
step
    #questguide
    #label LavaRagers
    #loop
    .goto 1440/1,-1165.50000,2678.50000,0
    .waypoint 1440/1,-1189.80005,2600.30005,50,0
    .waypoint 1440/1,-1165.50000,2678.50000,50,0
    .waypoint 1440/1,-1048.50000,2761.10010,50,0
    .waypoint 1440/1,-1122.09998,2828.30005,50,0
    .waypoint 1440/1,-1247.30005,2860.00000,50,0
    .waypoint 1440/1,-1300.80005,2733.19995,50,0
    .waypoint 1440/1,-1323.30005,2631.60010,50,0
    >>Tuez |cRXP_ENEMY_Lava Ragers|r
    .complete 13884,1 --10/10 Lava Rager slain
    .mob Lava Rager
step
    #questguide
    .goto 63,52.08,56.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arctanus|r
    .turnin 13884 >>Rendez la quête Ils ne feront pas long feu
    .target Arctanus
step
    #questguide
    .goto 63,52.32,56.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Noyau|r
    .turnin 13880 >>Rendez la quête Chaud devant !
    .target Core
step
    #questguide
    .goto 63,52.34,56.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Le Le vortex|r
    .accept 13888 >>Acceptez la quête Le vortex
    .target The Vortex
step
    #questguide
    .goto 63,52.34,56.79
    .gossipoption 111689 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Le Le vortex|r à nouveau pour commencer l'affrontement avec |cRXP_ENEMY_Seigneur Magmathar|r
    .target The Vortex
step
    #questguide
    .goto 63,49.19,39.86
    >>Tuez |cRXP_ENEMY_Seigneur Magmathar|r
    >>|cRXP_WARN_Utilisez|r |T252174:0|t[Éclair céleste] |cRXP_WARN_et|r |T236154:0|t[Revanche du Le vortex] |cRXP_WARN_Recharge…|r
    >>|cRXP_WARN_Utilisez|r |T135833:0|t[Extinction des flammes] |cRXP_WARN_quand affligé par|r |T135817:0|t[Immolation seigneuriale]
    .complete 13888,1 --1/1 Lord Magmathar slain
    .mob Lord Magmathar
step
    #questguide
    .goto 63,52.09,56.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Stikwad|r
    .turnin 13888 >>Rendez la quête Le vortex
    .target Stikwad
step
    #completewith SilverwindPickups
    .goto 63,49.96,67.25,100 >> Rendez-vous à Refuge de Vent-d'Argent
step
    .goto 63,49.79,65.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senani Cœur-de-tonnerre|r
    .turnin 2 >>Rendez la quête La griffe de Serres-tranchantes
    .accept 13967 >>Acceptez la quête Prendre du poil de la bête
    .target Senani Thunderheart
    .isOnQuest 2
step
    #optional
    .goto 63,49.79,65.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senani Cœur-de-tonnerre|r
    .accept 13967 >>Acceptez la quête Prendre du poil de la bête
    .target Senani Thunderheart
step
    .goto 63,49.29,65.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dompteur des vents Shoshok|r
    .fp >>Apprenez le trajet de vol vers Refuge de Vent-d'Argent
    .target Wind Tamer Shoshok
    .subzoneskip 420,1
step
    .goto 63,49.96,67.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Flouz|r
    .turnin 13974 >>Rendez la quête Le petit paquet de Gluon
    .target Flooz
step
    .goto 63,50.14,67.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Capitaine Tarkan|r
    .accept 25 >>Acceptez la quête Y a du gaz dans l'eau
    .target Captain Tarkan
step
    .goto 63,49.98,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Flouz|r
    .accept 13977 >>Acceptez la quête Production de masse
    .target Flooz
step
    #label SilverwindPickups
    .goto 1440/1,-1225.90002,2092.80005,0
    .goto 1440/1,-1152.09998,2093.80005,0
    .goto 1440/1,-1225.90002,2092.80005,5,0
    .goto 1440/1,-1152.09998,2093.80005,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cromula|r
    .accept 26416 >>Acceptez la quête À la rescousse de la cambrousse !
    .target Cromula
step << skip
    .goto 63,49.88,65.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Garde de sang Aldo Pluie-de-Pierres|r
    .accept 25945 >>Acceptez la quête On est juste là pour faire deux, trois petites choses…
    .target Blood Guard Aldo Rockrain
    --Stonetalon Breadcrumb
step
    #loop
    .goto 1440/1,-1432.70007,2296.40015,0
    .waypoint 1440/1,-1405.90002,2233.69995,50,0
    .waypoint 1440/1,-1432.70007,2296.40015,50,0
    .waypoint 1440/1,-1569.30005,2259.90015,50,0
    .waypoint 1440/1,-1581.09998,2184.90015,50,0
    .waypoint 1440/1,-1530.30005,2218.90015,50,0
    >>Tuez les |cRXP_ENEMY_Furbolgs|r. Ramassez les |cRXP_LOOT_Piercings|r
    .complete 13967,1 --15/15 Furbolg Ear
    .mob Foulweald Totemic
    .mob Foulweald Warrior
    .mob Foulweald Pathfinder
step
    .goto 63,49.74,65.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senani Cœur-de-tonnerre|r
    .turnin 13967 >>Rendez la quête Prendre du poil de la bête
    .accept 6621 >>Acceptez la quête Le roi des Vile-sylve
    .target Senani Thunderheart
step
    #optional
    .goto 63,49.74,65.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senani Cœur-de-tonnerre|r
    .turnin 2 >>Rendez la quête La griffe de Serres-tranchantes
    .turnin 13967 >>Rendez la quête Prendre du poil de la bête
    .accept 6621 >>Acceptez la quête Le roi des Vile-sylve
    .target Senani Thunderheart
    .isOnQuest 2
step
    .goto 63,49.74,65.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senani Cœur-de-tonnerre|r
    .turnin 13967 >>Rendez la quête Prendre du poil de la bête
    .accept 6621 >>Acceptez la quête Le roi des Vile-sylve
    .target Senani Thunderheart
step
    .goto 63,56.37,63.54
    .use 16972 >> |cRXP_WARN_Utilisez le|r |T237588:0|t[Don de la Terre] |cRXP_WARN_sur le Totem Mound et protégez-le de l'arrivée des|r |cRXP_ENEMY_Furbolgs|r
    >>Tuez |cRXP_ENEMY_Chef Murgut|r dès qu'il apparaît. Ramassez le |cRXP_PICK_Basket|r pour le |cRXP_LOOT_Murgut's Totem|r
    .complete 6621,1 --1/1 Murgut's Totem
    .mob Chief Murgut
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_élémentaires d'eau|r
    .complete 25,1 --12/12 Befouled Water Elemental slain
    .mob Befouled Water Elemental
step
    .goto 1440/1,-1079.70007,1994.20007
    >>Tuez |cRXP_ENEMY_Tideress|r. Dépouillez-la pour le [|cRXP_LOOT_Befouled Water Globe|r]. Utilisez-le pour commencer la quête
    .complete 25,2 --1/1 Tideress slain
    .collect 16408,1,1918 --Collect Befouled Water Globe (x1)
    .accept 1918 >>Acceptez la quête Les éléments souillés
    .mob Tideress
step
    #loop
    .goto 1440/1,-978.50000,2019.70007,0
    .waypoint 1440/1,-973.10004,1947.70007,50,0
    .waypoint 1440/1,-978.50000,2019.70007,50,0
    .waypoint 1440/1,-1233.80005,2025.00000,50,0
    .waypoint 1440/1,-1177.59998,1928.59998,50,0
    >>Terminez de tuer les |cRXP_ENEMY_élémentaires d'eau|r
    .complete 25,1 --12/12 Befouled Water Elemental slain
    .mob Befouled Water Elemental
step
    .goto 63,46.16,63.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Contremaître Laguigne|r
    .turnin 13977 >>Rendez la quête Production de masse
    .accept 13980 >>Acceptez la quête À l'assaut de l'invisible
    .accept 13983 >>Acceptez la quête Creuser sa propre tombe
    .target Foreman Jinx
step
    #completewith KillAssassins
    >>Tuez |cRXP_ENEMY_Ursangous|r. Dépouillez-le pour la [|cRXP_LOOT_Ursangous's Paw|r] et utilisez-la pour commencer la quête
    >>Il patrouille non loin de sa zone
    .collect 16303,1,23 --Collect Ursangous's Paw (x1)
    .accept 23 >> Acceptez la quête La patte d'Ursangous
    .unitscan Ursangous
    .use 16303
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Assassins d'Orneval|r
    .use 46776 >>|cRXP_WARN_Ils sont invisibles ! Utilisez|r |T133023:0|t[Laguigne's Lunettes] |cRXP_WARN_pour les détecter|r
    .complete 13980,1 --12/12 Ashenvale Assassin slain
    .unitscan Ashenvale Assassin
step
    #loop
    .goto 1440/1,-715.10004,1985.59998,0
    .waypoint 1440/1,-846.40002,1993.70007,40,0
    .waypoint 1440/1,-779.10004,1977.80005,40,0
    .waypoint 1440/1,-715.10004,1985.59998,40,0
    .waypoint 1440/1,-545.20001,2052.00000,40,0
    .waypoint 1440/1,-448.70001,2060.90015,40,0
    .waypoint 1440/1,-589.79999,2194.10010,40,0
    .waypoint 1440/1,-628.10004,2297.69995,40,0
    >>Ramassez |cRXP_PICK_Bronze Cogs|r, |cRXP_PICK_Locking Bolts|r et |cRXP_PICK_Copper Platings|r du sol
    .complete 13983,1 --3/3 Bronze Cog
    .complete 13983,3 --5/5 Locking Bolt
    .complete 13983,2 --3/3 Copper Plating
step
    #label KillAssassins
    #loop
    .goto 1440/1,-715.10004,1985.59998,0
    .waypoint 1440/1,-846.40002,1993.70007,40,0
    .waypoint 1440/1,-779.10004,1977.80005,40,0
    .waypoint 1440/1,-715.10004,1985.59998,40,0
    .waypoint 1440/1,-545.20001,2052.00000,40,0
    .waypoint 1440/1,-448.70001,2060.90015,40,0
    .waypoint 1440/1,-685.79999,2128.40015,40,0
    .waypoint 1440/1,-726.40002,2037.50000,40,0
    >>Terminez de tuer les |cRXP_ENEMY_Assassins d'Orneval|r
    .use 46776 >>|cRXP_WARN_Ils sont invisibles ! Utilisez|r |T133023:0|t[Laguigne's Lunettes] |cRXP_WARN_pour les détecter|r
    .complete 13980,1 --12/12 Ashenvale Assassin slain
    .unitscan Ashenvale Assassin
step
    #loop
    .goto 1440/1,-597.40002,2149.40015,0
    .waypoint 1440/1,-585.00000,2234.40015,30,0
    .waypoint 1440/1,-597.40002,2149.40015,30,0
    .waypoint 1440/1,-653.40002,2121.30005,30,0
    .waypoint 1440/1,-693.90002,2149.00000,30,0
    >>Tuez |cRXP_ENEMY_Ursangous|r. Dépouillez-le pour la [|cRXP_LOOT_Ursangous's Paw|r] et utilisez-la pour commencer la quête
    >>Il patrouille non loin de sa zone
    .collect 16303,1,23 --Collect Ursangous's Paw (x1)
    .accept 23 >> Acceptez la quête La patte d'Ursangous
    .unitscan Ursangous
    .use 16303
step
    .goto 63,46.16,63.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Contremaître Laguigne|r
    .turnin 13980 >>Rendez la quête À l'assaut de l'invisible
    .turnin 13983 >>Rendez la quête Creuser sa propre tombe
    .target Foreman Jinx
step
    .goto 63,49.75,65.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senani Cœur-de-Tonnerre|r
    .turnin 6621 >>Rendez la quête Le roi des Vile-sylve
    .target Senani Thunderheart
step
    .goto 63,50.13,67.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Capitaine Tarkan|r
    .turnin 25 >>Rendez la quête Y a du gaz dans l'eau
    .turnin 23 >>Rendez la quête La patte d'Ursangous
    .target Captain Tarkan
step
    #completewith next
    .goto 63,60.65,52.69,100 >> Rendez-vous à Retraite de Raynebois
step
    .goto 63,60.65,52.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thagg|r
    .turnin 13958 >>Rendez la quête La situation est critique !
    .accept 13962 >>Acceptez la quête Status quo
    .target Thagg
step
    #completewith next
    >>Tuez |cRXP_ENEMY_Shadumbra|r. Dépouillez-la pour sa [|cRXP_LOOT_Shadumbra's Head|r] et utilisez-la pour commencer la quête
    >>|cRXP_ENEMY_Shadumbra|r patrouille légèrement dans les alentours
    .collect 16304,1,24 --Collect Shadumbra's Head
	.accept 24 >> Acceptez la quête La tête de Shadumbra
	.unitscan Shadumbra
    .use 16304
step
    .goto 63,62.04,51.41
    >>Tuez |cRXP_ENEMY_Gardien Ordanus|r au sommet du bâtiment
    .complete 13962,1 --1/1 Keeper Ordanus slain
    .mob Keeper Ordanus
step
    #loop
    .goto 1440/1,-1825.50000,2708.69995,0
    .waypoint 1440/1,-1867.09998,2752.19995,30,0
    .waypoint 1440/1,-1825.50000,2708.69995,30,0
    .waypoint 1440/1,-1857.90002,2660.80005,30,0
    >>Tuez |cRXP_ENEMY_Shadumbra|r. Dépouillez-la pour sa [|cRXP_LOOT_Shadumbra's Head|r] et utilisez-la pour commencer la quête
    >>|cRXP_ENEMY_Shadumbra|r patrouille autour du bâtiment
    .collect 16304,1,24 --Collect Shadumbra's Head
	.accept 24 >> Acceptez la quête La tête de Shadumbra
	.unitscan Shadumbra
    .use 16304
step
    .goto 63,60.67,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thagg|r
    .turnin 13962 >>Rendez la quête Status quo
    .target Thagg
step
    #completewith FlytoSP
    .hs >> Liez votre foyer à Guet de Hurlenfer
    .use 6948
    .subzoneskip 4691
    .cooldown item,6948,>0,1
step
    #completewith FlytoSP
    .subzone 4691 >>Rendez-vous à Guet de Hurlenfer
    .cooldown item,6948,<0
step
    .goto 63,38.56,42.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Capitaine Goggath|r
    >>|cRXP_WARN_Il patrouille dans les alentours|r
    .turnin 24 >>Rendez la quête La tête de Shadumbra
    .target Captain Goggath
    .isOnQuest 24
step
    #label FlytoSP
    #completewith next
    .goto 63,38.08,42.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thraka|r
    .fly Splintertree Post >>Volez au poste de Bois-brisé
    .target Thraka
step
    .goto 63,74.12,60.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yama|r
    .turnin 6482 >> Rendez la quête Liberté pour Ruul
    .target Yama Snowhoof
step
    .goto 63,74.19,60.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mastok Torvesiffle|r
    .accept 1918 >>Acceptez la quête Les éléments souillés
    .turnin 1918 >>Rendez la quête Les éléments souillés
    .target Mastok Wrilehiss
    .itemcount 16408,1
step
    #optional
    #label AshenvaleEnd
step
    #optional
    #sticky
    .abandon 2 >>Abandonnez la quête La griffe de Serres-tranchantes car vous ne pourrez plus la rendre
step
    #completewith STV1
    .goto 63,73.18,61.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vhulgra|r
    .fly Orgrimmar >>Volez à Orgrimmar
    .target Vhulgra
    .zoneskip Orgrimmar
step << Rogue Cata/Warlock Cata
    #completewith next
    .goto 1454,45.81,66.88,40 >> Rendez-vous vers la Faille de l'Ombre
step << Shaman Cata/Druid Cata/Paladin Cata/Warrior Cata/Hunter Cata/Priest Cata
    #completewith next
    .goto 1454/1,-4291.89990,1876.70007,50 >> Rendez-vous à la Vallée de la Sagesse
step << Rogue Cata
    .goto 1454,44.65,61.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gordul|r
    .trainer >> Apprenez vos sorts de classe
    .target Gordul
step << Rogue Cata
    .goto 1454,29.60,50.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rekkul|r.
    .vendor >>|cRXP_BUY_Achetez des réserves de|r |T132273:0|t[Poisons]
    .target Rekkul
step << Shaman Cata
    .goto 1454/1,-4282.60010,1884.09998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sahi|r
    .trainer >> Apprenez vos sorts de classe
    .target Sahi Cloudsinger
step << Druid Cata
    .goto 1454/1,-4285.10010,1889.09998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shalla|r
    .trainer >> Apprenez vos sorts de classe
    .target Shalla Whiteleaf
step << Mage Cata
    .goto 1454/1,-4125.10010,1690.59998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Uthel'nay|r
    .trainer >> Apprenez vos sorts de classe
    .target Uthel'nay
step << Mage Cata
    .goto 1454/1,-4128.89990,1692.09998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zirazi l'Astronome|r
    .train 3567 >>Apprenez [Téléportation : Orgrimmar]
    .train 3563 >>Apprenez [Téléportation : Undercity]
    .train 3566 >>Apprenez [Téléportation : Thunder Bluff]
    .train 32272 >>Apprenez [Téléportation : Lune-d'argent]
    .target Zirazi the Star-Gazer
    .xp <24,1
step << Mage Cata
    .goto 1454/1,-4382.50000,1673.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Horthus|r
    .collect 17031,20 >>|cRXP_BUY_Achetez une pile de|r |T134419:0|t[Rune de téléportation] |cRXP_BUY_chez lui|r
    .target Horthus
step << Priest Cata
    .goto 1454/1,-4297.60010,1863.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Liwatha|r
    .trainer >> Apprenez vos sorts de classe
    .target Seer Liwatha
step << Warlock Cata
    .goto 1454,54.49,39.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mirket|r
    .trainer >> Apprenez vos sorts de classe
    .target Mirket
step << Paladin Cata
    .goto 1454/1,-4292.50000,1863.70007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Atohmo|r
    .trainer >> Apprenez vos sorts de classe
    .target Sunwalker Atohmo
step << Hunter Cata
    .goto 1454/1,-4281.00000,1872.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nohi|r
    .trainer >> Apprenez vos sorts de classe
    .target Nohi Plainswalker
step << Warrior Cata
    .goto 1454/1,-4284.00000,1867.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nahu|r
    .trainer >> Apprenez vos sorts de classe
    .target Nahu Ragehoof


    --Next section is flying back only for final Ashenvale quest, not worth xp wise. Nice bow reward for hunters though..

step
    #questguide
    .goto 85,49.21,72.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eitrigg|r dans Fort Grommash
    .turnin 13841 >>Rendez la quête Toutes mes confuses
    .accept 13842 >>Acceptez la quête Prenez-lui la tête !
    .target Eitrigg
    .isQuestTurnedIn 13798
step
    #questguide
    .goto 85,53.62,78.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryshka l'aubergiste|r
    .home >>Liez votre Pierre de foyer à Orgrimmar
    .target Innkeeper Gryshka
    .isQuestTurnedIn 13841
step
    #questguide
    #completewith STV1
    .goto 85,49.64,59.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Doras|r
    .fly Splintertree Post >>Volez au poste de Bois-brisé
    .target Doras
    .zoneskip Ashenvale
    .isQuestTurnedIn 13841
step
    #questguide
    .goto 63,72.20,57.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Durak|r dans la caverne
    .complete 13842,1 --1/1 Durak Persuaded
    .skipgossip
    .target Durak
    .isQuestTurnedIn 13841
step
    #questguide
    .goto 63,72.22,56.76
    >>Suivez |cRXP_ENEMY_Durak|r jusqu'à ce qu'il devienne hostile, puis tuez-le
    .complete 13842,2 --1/1 Durak slain
    .mob Durak
    .isQuestTurnedIn 13841
step
    #questguide
    .hs >> Utilisez votre Pierre de foyer pour revenir à Orgrimmar
    .use 6948
    .cooldown item,6948,>2
    .zoneskip Orgrimmar
    .isQuestTurnedIn 13841
step
    #questguide
    #completewith STV1
    .goto 63,73.18,61.58
    .fly Orgrimmar >>Volez à Orgrimmar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vhulgra|r
    .target Vhulgra
    .cooldown item,6948,<0
    .zoneskip Orgrimmar
    .isQuestTurnedIn 13841
step
    #questguide
    .goto 85,49.20,72.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eitrigg|r
    .turnin 13842 >>Rendez la quête Prenez-lui la tête !
    .target Eitrigg
    .isQuestTurnedIn 13841
step
    .goto 85,51.31,56.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bort|r
    .turnin 26416 >>Rendez la quête À la rescousse de la cambrousse !
    .target Bort
    .isOnQuest 26416
    --STV breadcrumb quest
step
    #label STV1
    #optional
    .goto 85,51.31,56.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bort|r
    .accept 26417 >>Acceptez la quête L'empire déchu
    .target Bort
    .isQuestTurnedIn 26416
    .isNotOnQuest 28688
    ]])
