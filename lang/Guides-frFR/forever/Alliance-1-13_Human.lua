if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#season 0,1
<< Alliance
#name 1-6 Comté-du-nord
#version 1
#group RestedXP Guide Forever (A)
#subgroup Guide Speedrun 1-20
--#groupid RXP-SRGCE-A1
#defaultfor Human
#next 6-11 Forêt d'Elwynn


step << !Human
    #completewith next
    +Vous avez sélectionné un guide conçu pour les Humains. Vous devriez choisir la même zone de départ que celle par laquelle vous commencez
step << Mage
    #completewith next
    +Vous avez sélectionné le guide Mage mono-cible. Le monocible est beaucoup plus sûr qu'un Mage AoE, mais BEAUCOUP plus lent
step << !Human Mage
    #season 2
    #completewith next
    +Dans Season of Discovery, vous ne devez PAS commencer hors de la zone de départ de votre race en tant que Mage, car vous serez incapable d'obtenir votre première rune (|T135844:0|t[Javelot de glace])
step
    #softcore << Warlock
    #optional
    #completewith Within
    .destroy 6948 >> Détruisez la [Pierre de foyer] dans votre sac, elle n'est plus nécessaire
step
    .goto 1429/0,-136.48,-8933.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Willem|r
    .accept 783 >> Acceptez la quête Menace intérieure
    .target Deputy Willem
step << Warrior
    .goto 1429/0,-75.05,-8872.36,35,0
    >>Tuez les |cRXP_ENEMY_Young Wolves|r jusqu'à ce que vous puissiez vendre jusqu'à 10+ pièces de cuivre au marchand
    >>Vous allez apprendre [Cri de guerre] qui augmente votre efficacité de manière considérable dans les premiers niveaux
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Danil|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target +Brother Danil
    .goto 1429/0,-112.74,-8901.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Llane Beshere|r en bas des escaliers à l'intérieur
    .train 6673 >>Apprenez [Cri de guerre]
    .target +Llane Beshere
    .goto 1429/0,-208.40,-8918.35
    .mob Young Wolf
step
    #label Within
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 783 >> Rendez la quête Menace intérieure
    .accept 7 >> Acceptez la quête Nettoyer le camp des kobolds
    .target Marshal McBride
step
    .goto 1429/0,-136.52,-8933.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Willem|r
    .accept 5261 >> Acceptez la quête Eagan Tannepeau
    .target Deputy Willem
step
    #label EaganWolves
    .goto 1429/0,-163.24,-8869.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eagan Peltskinner|r
    .turnin 5261 >> Rendez la quête Eagan Tannepeau
    .accept 33 >> Acceptez la quête Les loups derrière la frontière
    .target Eagan Peltskinner
step << Priest/Mage/Warlock
    #completewith next
    .goto 1429/0,-68.11,-8874.67,40,0
    .goto 1429/0,-112.74,-8901.66
    >>Dès que vous avez au moins 50 pièces de cuivre à disposition:
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Danil|r
    >>Vendez tout ce dont nous n'avez pas besoin
    >>|cRXP_BUY_Achetez 10|r [Refreshing Spring Water] |cRXP_BUY_à Brother Danil|r
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
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
    >>Tuez des |cRXP_ENEMY_Young Wolves|r et des |cRXP_ENEMY_Timber Wolves|r. Dépouillez-les pour leur |cRXP_LOOT_Tough Wolf Meat|r
    .complete 33,1 --Collect Tough Wolf Meat (x8)
	.mob Young Wolf
	.mob Timber Wolf
step
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
    >>Tuez les |cRXP_ENEMY_Vermines kobolds|r. Dépouillez-les pour |T133736:0|t[|cRXP_LOOT_Un livre grignoté|r]
    .use 247834 >> |cRXP_WARN_Utilisez le|r |T133736:0|t[|cRXP_LOOT_Livre grignoté|r] |cRXP_WARN_pour lancer la quête|r
    >>|cRXP_WARN_Vous devez rendre cette quête dès que vous obtenez le|r |T133736:0|t[|cRXP_LOOT_Livre grignoté|r] |cRXP_WARN_|r
    .collect 247834,1,91741,1 -- Nibbled-On Book (1)
    .accept 91741 >> Acceptez la quête Un livre grignoté
    .complete 7,1 --Kill Kobold Vermin (x10)
    .disablecheckbox
    .mob Kobold Vermin
step
    #completewith next
    .goto 1429/0,-136.900,-8913.800,10,0
    .goto 1429/0,-176.000,-8880.900,10 >> |cRXP_WARN_Allez vers le |cRXP_FRIENDLY_Frère Paxton|r à l'Abbaye de Northshire. Ne cherchez pas à terminer de tuer les |cRXP_ENEMY_Vermines|r ou les |cRXP_ENEMY_Loups|r pour le moment|r
step
    .goto 1429/0,-186.12,-8874.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Frère Paxton|r.
    .turnin 91741 >> Rendez la quête Un livre grignoté
    .accept 92124 >> Acceptez la quête Inventaire des livres
    .target Brother Paxton
step
    .goto 1429/0,-182.65,-8881.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daniel|r
    .turnin 92124 >> Rendez la quête Inventaire des livres
    .target Daniel
step
    .goto 1429/0,-186.12,-8874.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Frère Paxton|r.
    .accept 91743 >> Acceptez la quête Rongeurs retors
    .target Brother Paxton
step
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
    >>Tuez les |cRXP_ENEMY_Vermines kobolds|r. Dépouillez-les pour leur |cRXP_LOOT_Livres dérobés|r
    >>|cRXP_WARN_Ne vous focalisez pas sur les |cRXP_LOOT_Livres dérobés|r pour l'instant|r
    .complete 7,1 --Kill Kobold Vermin (x10)
    .complete 91743,1 -- Stolen Book (8)
    .disablecheckbox
    .mob Kobold Vermin
step
    #requires WolfMeatEnd
    .goto 1429/0,-163.24,-8869.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eagan Peltskinner|r
    .turnin 33,2 >> Rendez la quête Les loups derrière la frontière << Warrior/Paladin/Rogue
    .turnin 33,1 >> Rendez la quête Les loups derrière la frontière << !Warrior !Paladin !Rogue
    .target Eagan Peltskinner
step << Priest/Mage/Warlock
    .goto 1429/0,-112.74,-8901.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Danil|r
    >>Vendez tout ce dont nous n'avez pas besoin
    >>|cRXP_BUY_Achetez 10|r [Refreshing Spring Water] |cRXP_BUY_à Brother Danil|r
    >>Faites en sorte de garder 10 pièces de cuivre ou plus pour plus tard << Priest/Mage
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step << !Priest !Mage !Warlock !Rogue
    .goto 1429/0,-119.86,-8898.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Godric Rothgar|r
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .target Godric Rothgar
step << Rogue
    #season 0,1
    .goto 1429/0,-104.21,-8909.39--c:Elwynn Forest,47.240,41.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Janos Hammerknuckle|r
    .vendor 78 >>|cRXP_BUY_Achetez-lui une|r |T135650:0|t[Miséricorde] |cRXP_BUY_ou une|r |T132410:0|t[Hache courte] |cRXP_BUY_si vous pouvez pour le permettre|r
    --.collect 2139,1 -- Dirk (1)
    --.disablecheckbox
    .target Janos Hammerknuckle
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.5
step << Rogue
    #season 0,1
    #completewith CleanupEnd
    +Équipez le [Miséricorde]
    .use 2139
    .itemcount 2139,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.5
step << Rogue
    #season 0,1
    #completewith CleanupEnd
    +|cRXP_WARN_Équipez la|r |T132410:0|t[Hache courte]
    .use 2134
    .itemcount 2134,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.5
step
    #label CleanupEnd
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 7 >> Rendez la quête Nettoyer le camp des kobolds
    .accept 15 >> Acceptez la quête Enquête sur la crête aux échos
    .accept 3100 >> Acceptez la quête Lettre simple << Human Warrior
    .accept 3101 >> Acceptez la quête Lettre consacrée << Human Paladin
    .accept 3102 >> Acceptez Lettre codée << Human Rogue
    .accept 3103 >> Acceptez la quête Lettre bénie << Human Priest
    .accept 3104 >> Acceptez la quête Lettre glyphée << Human Mage
    .accept 3105 >> Acceptez la quête Lettre contaminée << Human Warlock
    .accept 92479 >>Acceptez la quête Une lettre écrite à la hâte << Human Hunter
    .target Marshal McBride

step << Warlock
    .goto 1429/0,-136.52,-8933.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Willem|r à l'extérieur
    .accept 18 >> Acceptez la quête La confrérie des voleurs
    .target Deputy Willem
step << Warlock
    .goto 1429/0,-195.59,-8926.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 3105 >> Rendez la quête Lettre contaminée
    .accept 1598 >> Acceptez la quête Le Tome dérobé
    .train 348 >> Apprenez [Immolation]
    .target Drusilla La Salle


step << Warlock
    #hardcore
--   .goto 1429/0,-300.65,-8964.94,60,0
    .goto 1429/0,-432.55,-8958.00
    >>Ouvrez les |cRXP_PICK_Stolen Books|r. Récupérez les |cRXP_LOOT_Powers of the Void|r
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock
    #softcore
--  .goto 1429/0,-300.65,-8964.94,60,0
    .goto 1429/0,-432.55,-8958.00
    >>Ouvrez les |cRXP_PICK_Stolen Books|r. Récupérez les |cRXP_LOOT_Powers of the Void|r
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock
    #softcore
    #completewith next
    .goto 1429,49.527,43.491,0
    .deathskip >> Mourez et ressuscitez au Gardien des âmes
    >>|cRXP_WARN_S'il n'y a pas de |cRXP_ENEMY_Défias|r à proximité, rebroussez chemin|r
    .target Gardien des âmes
step << Warlock
    #season 0,1
    .goto 1429/0,-195.59,-8926.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 1598 >> Rendez la quête Le Tome dérobé
    .target Drusilla La Salle
step << Warlock
    #optional
    #completewith next
    .cast 688 >> Lancez [Invocation d'un diablotin]
    .usespell 688

step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Kobolds|r. Dépouillez-les pour leur |cRXP_LOOT_Livres dérobés|r
    .complete 91743,1 -- Stolen Book (8)
step
    #season 0,1 << Priest/Warrior
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
    >>Tuez les |cRXP_ENEMY_Kobold Workers|r
    .complete 15,1 --Kill Kobold Worker (x10)
    .mob Kobold Worker

----Start of 1x train section----




step
    #label xp3
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
    .xp 3+1110 >>|cRXP_WARN_Montez votre expérience jusqu'à 1110+/1400xp|r
    >>Tuez les |cRXP_ENEMY_Ouvriers kobolds|r pour les |cRXP_LOOT_Livres dérobés|r s'il vous en faut toujours
    .complete 91743,1 -- Stolen Book (8)
    .disablecheckbox
    .mob Kobold Worker
step << !Hunter
    #season 0,1 << Warrior
    #completewith next
    .goto 1429/0,-119.86,-8898.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Godric Rothgar|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Godric Rothgar
step << Hunter
    .goto 1429/0,-112.800,-8901.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Danil|r
    .vendor >> |cRXP_BUY_Achetez 2 stacks de|r |T132382:0|t[Flèches grossières]
    .target Brother Danil
step
    #requires xp3
    #label Investigate
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 15 >> Rendez la quête Enquête sur la crête aux échos
    .accept 21 >> Acceptez la quête La bataille de la Crête aux échos
    .target Marshal McBride

step
    .isQuestComplete 91743
    .goto 1429/0,-186.12,-8874.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Frère Paxton|r.
    .turnin 91743 >> Rendez la quête Rongeurs retors
    .accept 91745 >>Acceptez la quête Consultant en minage
    .target Brother Paxton
step
    .isQuestTurnedIn 91743
    .goto 1429/0,-186.12,-8874.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Frère Paxton|r.
    .accept 91745 >>Acceptez la quête Consultant en minage
    .target Brother Paxton

step << Mage
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
    .goto 1429/0,-188.23,-8851.58,12 >>Dirigez-vous vers |cRXP_FRIENDLY_Khelden Bremen|r en haut des escaliers
step << Mage
    #season 0,1
    .goto 1429/0,-188.23,-8851.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tDirigez-vous vers |cRXP_FRIENDLY_Khelden Bremen|r en haut des escaliers
    .turnin 3104 >> Rendez la quête Lettre glyphée
    .trainer >> Apprenez vos sorts de classe
    .target Khelden Bremen
step << Priest
    #optional
    #completewith next
    .goto 1429/0,-175.70,-8881.62,15,0
    .goto 1429/0,-193.06,-8870.05,10 >> Dirigez-vous |cRXP_FRIENDLY_Priestess Anetta|r en bas des escaliers
step << Priest
    .goto 1429/0,-193.34,-8853.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tDirigez-vous |cRXP_FRIENDLY_Priestess Anetta|r en bas des escaliers
    .turnin 3103 >> Rendez la quête Lettre bénie
    .trainer >> Apprenez vos sorts de classe
    .target Priestess Anetta
step << Warrior/Paladin
    #optional
    #completewith next
    .goto 1429/0,-186.12,-8907.08,15 >> Dirigez-vous vers |cRXP_FRIENDLY_Llane Beshere|r en bas des escaliers << Warrior
    .goto 1429/0,-186.12,-8907.08,15 >> Dirigez-vous vers |cRXP_FRIENDLY_Brother Sammuel|r en bas des escaliers << Paladin
step << Warrior
    #season 0,1
    .goto 1429/0,-208.40,-8918.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Llane Beshere|r en bas des escaliers à l'intérieur
    .turnin 3100 >> Rendez la quête Lettre simple
    .trainer >> Apprenez vos sorts de classe
    .target Llane Beshere
step << Paladin
    #season 0,1
    .goto 1429/0,-215.03,-8914.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Sammuel|r
    .turnin 3101 >> Rendez la quête Lettre consacrée
    .trainer >> Apprenez vos sorts de classe
    .target Brother Sammuel
step
    #season 0,1 << Warrior
    .goto 1429/0,-136.52,-8933.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Willem|r à l'extérieur
    .accept 18 >> Acceptez la quête La confrérie des voleurs
    .target Deputy Willem
step << Hunter
    .goto 1429/0,-242.100,-8884.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tordrin Durelame::248415|r
    .target Tordrin Sternblade::248415
    .turnin 92479 >>Rendez la quête Une lettre écrite à la hâte
    .trainer >> Apprenez vos sorts de classe
step << Warlock
    .goto 1429/0,-195.59,-8926.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Drusilla La Salle|r
    .train 172 >>Apprenez [Corruption]
    .target Drusilla La Salle



----End of 1x train section----




step
    #season 0,1
    #loop
    .goto 1429/0,-288.51,-9068.87,0
    .goto 1429/0,-388.47,-9001.28,0
    .goto 1429/0,-288.51,-9068.87,30,0
    .goto 1429/0,-335.02,-9108.91,30,0
    .goto 1429/0,-376.67,-9073.73,30,0
    .goto 1429/0,-388.47,-9001.28,30,0
    .goto 1429/0,-333.97,-9028.59,30,0
    >>Tuez les |cRXP_ENEMY_Defias Thugs|r. Dépouillez-les pour leur |cRXP_LOOT_Red Burlap Bandanas|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
    .mob Defias Thug
step << Rogue
    #optional
    #loop
    .goto 1429/0,-288.51,-9068.87,0
    .goto 1429/0,-388.47,-9001.28,0
    .goto 1429/0,-288.51,-9068.87,30,0
    .goto 1429/0,-335.02,-9108.91,30,0
    .goto 1429/0,-376.67,-9073.73,30,0
    .goto 1429/0,-388.47,-9001.28,30,0
    .goto 1429/0,-333.97,-9028.59,30,0
    .xp 4 >> Montez jusqu'au niveau 4
step
    #season 0,1
    .goto 1429/0,-136.48,-8933.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Willem|r
    .turnin 18,1 >> Rendez la quête La confrérie des voleurs << Rogue/Warlock
    .turnin 18,2 >> Rendez la quête La confrérie des voleurs << Priest
    .turnin 18,3 >> Rendez la quête La confrérie des voleurs << Warrior
    .turnin 18,4 >> Rendez la quête La confrérie des voleurs << Paladin
    .turnin 18,5 >> Rendez la quête La confrérie des voleurs << Mage
    .turnin 18 >> Rendez la quête La confrérie des voleurs << !Warrior !Priest !Mage !Rogue !Warlock !Paladin
    .accept 3903 >> Acceptez la quête Milly Osworth
    .accept 6 >> Acceptez la quête La prime pour Garrick Padfoot
    .target Deputy Willem
step << Paladin
    #season 0,1
    #completewith RestandR
    .equip 16,5579 >> Équipez le [Marteau de la milice]
    .use 5579
    .itemcount 5579,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.6
step << Rogue
    #season 0,1
    #completewith RestandR
    .equip 16,2224 >> Équipez la [Dague de la milice]
    .use 2224
    .itemcount 2224,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.0
step << Warrior
    #completewith RestandR
    .equip 16,1161 >> Équipez l'[Epée courte de la milice]
    .use 1161
    .itemcount 1161,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.0
step
    #optional
    .isOnQuest 91745
    .goto 1429/0,-102.300,-8684.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kelsey Fond::247226|r
    .target Kelsey Fargo::247226
    .turnin 91745 >>Rendez la quête Consultant en minage
    .accept 91752 >>Acceptez la quête Un peu de recul
step
    #optional
    .isQuestTurnedIn 91745
    .goto 1429/0,-102.300,-8684.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kelsey Fond::247226|r
    .target Kelsey Fargo::247226
    .accept 91752 >>Acceptez la quête Un peu de recul
step
    #optional
    #completewith KoboldLaborers
    .goto 1429/0,-117.74,-8681.87,20 >> Entrez dans la Mine de la crête aux échos
step
    #completewith KoboldLaborers
    .isOnQuest 91752
    .goto 1429/0,-172.700,-8587.601
    >>Tuez |cRXP_ENEMY_Trouve-qui-brille Narf|r. Dépouillez-le pour le |cRXP_LOOT_Sac de livres « d’images »|r
    .complete 91752,1 --|1/1 Sack of "Picture" Books
    .target Shinyfinder Narf
step
    #completewith KoboldLaborers
    .isOnQuest 91743
    >>Tuez les |cRXP_ENEMY_Travailleurs kobolds|r et les |cRXP_ENEMY_Ouvriers kobolds|r. Dépouillez-les pour leur |cRXP_LOOT_Livres dérobés|r
    .complete 91743,1 -- Stolen Book (8)
step
    #label KoboldLaborers
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
    >>Tuez les |cRXP_ENEMY_Kobold Laborers|r à l'intérieur de la Mine de la crête aux échos
    .complete 21,1 --Kill Kobold Laborer (x12)
    .mob Kobold Laborer
step
    .isOnQuest 91743
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
    >>Tuez les |cRXP_ENEMY_Travailleurs kobolds|r et les |cRXP_ENEMY_Ouvriers kobolds|r. Dépouillez-les pour leur |cRXP_LOOT_Livres dérobés|r
    .complete 91743,1 -- Stolen Book (8)
    .mob Kobold Laborer
    .mob Kobold Worker
step
    .isOnQuest 91752
    .goto 1429/0,-172.700,-8587.601
    >>Tuez |cRXP_ENEMY_Trouve-qui-brille Narf|r. Dépouillez-le pour le |cRXP_LOOT_Sac de livres « d’images »|r
    .complete 91752,1 --|1/1 Sack of "Picture" Books
    .target Shinyfinder Narf

step
    .goto 1429/0,-224.02,-8850.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Milly Osworth|r
    >>Passez la suite << !Priest !Mage
    .turnin 3903 >> Rendez la quête Milly Osworth
    .accept 3904 >> Acceptez la quête La récolte de Milly << Priest/Mage
    .target Milly Osworth
step << Rogue
    #season 0,1
    .goto 1429/0,-210.90,-8863.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorik Kerridan|r
    .turnin 3102 >> Rendez Lettre codée
    .train 1784 >>Apprenez [Camouflage]
    .train 921 >>Apprenez [Vol à la tire]
    .target Jorik Kerridan
step << Priest/Mage
    #loop
    .goto 1429/0,-288.51,-9068.87,0
    .goto 1429/0,-388.47,-9001.28,0
    .goto 1429/0,-288.51,-9068.87,30,0
    .goto 1429/0,-335.02,-9108.91,30,0
    .goto 1429/0,-376.67,-9073.73,30,0
    .goto 1429/0,-388.47,-9001.28,30,0
    .goto 1429/0,-333.97,-9028.59,30,0
    >>Ramassez les |cRXP_PICK_Milly's Harvest|r sur le sol
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto 1429,57.518,48.253
    >>Tuez |cRXP_ENEMY_Garrick Padfoot|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    .complete 6,1 --Collect Garrick's Head (x1)
    .mob Garrick Padfoot
step
    #requires CuttyNote << Rogue --Season 2
    #optional
    #loop
    .goto 1429/0,-288.51,-9068.87,0
    .goto 1429/0,-388.47,-9001.28,0
    .goto 1429/0,-288.51,-9068.87,30,0
    .goto 1429/0,-335.02,-9108.91,30,0
    .goto 1429/0,-376.67,-9073.73,30,0
    .goto 1429/0,-388.47,-9001.28,30,0
    .goto 1429/0,-333.97,-9028.59,30,0
    .xp 5 >> Montez jusqu'au niveau 5
    .mob Defias Thug
    --no need for extra grinding. being level 5 and doing the kobold quest chain will get you 6 once you arrive in goldshire
step
    #optional
    #softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
-- .subzoneskip 59,1
step << Priest/Mage
    .goto 1429/0,-224.02,-8850.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3904 >>Rendez la quête La récolte de Milly
    .accept 3905 >>Acceptez la quête Manifeste des vendanges
    .target Milly Osworth
step
    .goto 1429/0,-136.48,-8933.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Willem|r
    .turnin 6,2 >> Rendez la quête La prime pour Garrick Padfoot << Warrior/Rogue/Paladin
    .turnin 6,1 >> Rendez la quête La prime pour Garrick Padfoot << !Warrior !Rogue !Paladin
    .target Deputy Willem
step
    #optional
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal McBride|r à l'intérieur
    .turnin 91752 >>Rendez la quête Un peu de recul
    .accept 91758 >>Acceptez la quête Suivez ce Kobold !
    .target Marshal McBride
    .isOnQuest 91752
step
    #optional
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal McBride|r à l'intérieur
    .accept 91758 >>Acceptez la quête Suivez ce Kobold !
    .target Marshal McBride
    .isQuestTurnedIn 91752
step
    #label RestandR
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal McBride|r à l'intérieur
    .turnin 21,1 >> Rendez la quête La bataille de la Crête aux échos << Rogue
    .turnin 21,2 >> Rendez la quête La bataille de la Crête aux échos << Warrior/Paladin
    .turnin 21,3 >> Rendez la quête La bataille de la Crête aux échos << !Warrior !Paladin !Rogue
    .accept 54 >> Acceptez la quête Rapport pour Goldshire
    .accept 96627 >> Acceptez la quête L'aventurier
    .target Marshal McBride
step
    #optional
    .isQuestComplete 91743
    .goto 1429/0,-186.12,-8874.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Frère Paxton|r.
    .turnin 91743 >> Rendez la quête Rongeurs retors
    .accept 91745 >>Acceptez la quête Consultant en minage
    .target Brother Paxton
step
    #optional
    .isQuestTurnedIn 91743
    .goto 1429/0,-186.12,-8874.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Frère Paxton|r.
    .accept 91745 >>Acceptez la quête Consultant en minage
    .target Brother Paxton
step << Priest/Mage
    #optional
    #completewith next
    .goto 1429/0,-186.12,-8902.45,15,0
    .goto 1429/0,-161.82,-8895.51,10 >>Allez en haut des escaliers
step << Priest/Mage
    .goto 1429/0,-181.64,-8902.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Neals|r à l'étage
    .turnin 3905,1 >>Rendez la quête Manifeste des vendanges
    .target Brother Neals
step << Priest
    #season 0,1
    .goto 1429/0,-193.34,-8853.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Prêtresse Anetta|r à l'intérieur
    .accept 5623 >> Acceptez la quête Au service de la Lumière
    .target Priestess Anetta
step
    #optional
    .isOnQuest 91745
    .goto 1429/0,-102.300,-8684.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kelsey Fond::247226|r
    .target Kelsey Fargo::247226
    .turnin 91745 >>Rendez la quête Consultant en minage
    .accept 91752 >>Acceptez la quête Un peu de recul
step
    #optional
    .isQuestTurnedIn 91745
    .goto 1429/0,-102.300,-8684.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kelsey Fond::247226|r
    .target Kelsey Fargo::247226
    .accept 91752 >>Acceptez la quête Un peu de recul
step
    #optional
    #completewith KoboldLaborers
    .goto 1429/0,-117.74,-8681.87,20 >> Entrez dans la Mine de la crête aux échos
step
    .isOnQuest 91752
    .goto 1429/0,-172.700,-8587.601
    >>Tuez |cRXP_ENEMY_Trouve-qui-brille Narf|r. Dépouillez-le pour le |cRXP_LOOT_Sac de livres « d’images »|r
    .complete 91752,1 --|1/1 Sack of "Picture" Books
    .target Shinyfinder Narf
step
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
step
    #optional
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal McBride|r à l'intérieur
    .turnin 91752 >>Rendez la quête Un peu de recul
    .accept 91758 >>Acceptez la quête Suivez ce Kobold !
    .target Marshal McBride
    .isOnQuest 91752
step
    #optional
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal McBride|r à l'intérieur
    .accept 91758 >>Acceptez la quête Suivez ce Kobold !
    .target Marshal McBride
    .isQuestTurnedIn 91752
step
    .isOnQuest 91758
    .goto 1429/0,-242.000,-8884.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tordrin Durelame::248415|r hors de l'abbaye
    .target Tordrin Sternblade::248415
    .turnin 91758 >>Rendez la quête Suivez ce Kobold !
    .accept 91772 >>Acceptez la quête Chut, on chasse le Kobold
step
    .isQuestTurnedIn 91758
    .goto 1429/0,-242.000,-8884.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tordrin Durelame::248415|r hors de l'abbaye
    .target Tordrin Sternblade::248415
    .accept 91772 >>Acceptez la quête Chut, on chasse le Kobold
step
    #completewith RnR
    .cast 1246031 >> |cRXP_WARN_Utilisez le|r |T132995:0|t[Kit de pistage des Kobolds] |cRXP_WARN_pour voir les |cRXP_PICK_empreintes de Kobolds|r sur votre minicarte|r
    .use 247970
step
    #completewith RnR
    .isOnQuest 91772
    .goto 1429/0,-46.00,-9044.61,5 >>Cliquez sur les |cRXP_PICK_Empreintes de kobolds|r vertes au sol en vous dirigeant vers Goldshire
    .use 247970 
    .complete 91772,1 -- Followed Kobold Tracks 6/6
    .disablecheckbox
step
    #label RnR
    .goto 1429/0,-46.00,-9044.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falkhaan Isenstrider|r
    .accept 2158 >> Acceptez la quête Repos et détente
    .target Falkhaan Isenstrider
]])


RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
<< Alliance
#group RestedXP Guide Forever (A)
#subgroup Guide Speedrun 1-20
--#groupid RXP-SRGCE-A1
#name 6-11 Forêt d'Elwynn
#displayname 6-13 Forêt d'Elwynn << SoD
#next 11-13 Loch Modan
#defaultfor Human

step << skip -- removing for now for camp fire buff/questline
    #season 0,1 << Rogue
    #softcore
    #completewith Goldshire
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
    .subzoneskip 87

step
    #completewith CampQuest
    .isOnQuest 91772
    >>Cliquez sur les |cRXP_PICK_Empreintes de kobolds|r vertes au sol en vous dirigeant vers Goldshire
    .use 247970 >> |cRXP_WARN_Utilisez le|r |T132995:0|t[Kit de pistage des Kobolds] |cRXP_WARN_pour les localiser sur votre minicarte|r
    .complete 91772,1 -- Followed Kobold Tracks 6/6
step
    --#optional
    #completewith CampQuest
    +|cRXP_WARN_Utilisez la|r |T4624731:0|t[Récolte sauvage] |cRXP_WARN_pour augmenter votre compétence en|r |T136065:0|t[Herboristerie] |cRXP_WARN_de 2 points ou pour apprendre l'|r |T136065:0|t[Herboristerie] |cRXP_WARN_si vous n'avez pas déjà deux métiers|r
    .itemcount 247841,1 -- Wild Harvest
    .use 247841
step
    --#optional
    #completewith CampQuest
    +|cRXP_WARN_Utilisez le|r |T4625106:0|t[Le B.a.-ba de la collecte de peaux] |cRXP_WARN_pour augmenter votre compétence en|r |T134366:0|t[Dépeçage] |cRXP_WARN_de 2 points ou pour apprendre le|r |T134366:0|t[Dépeçage] |cRXP_WARN_si vous n'avez pas déjà deux métiers|r
    .itemcount 247846,1 -- Pelt Collecting for Beginners
    .use 247846
step
    --#optional
    #completewith CampQuest
    +|cRXP_WARN_Utilisez le|r |T4625105:0|t[Le Minage pour les nuls] |cRXP_WARN_pour augmenter votre compétence de|r |T136248:0|t[Minage] |cRXP_WARN_de 2 points ou pour apprendre le|r |T136248:0|t[Minage] |cRXP_WARN_si vous n'avez pas déjà deux métiers|r
    .itemcount 247840,1 -- Mining for Dummies
    .use 247840

step
    #label CampQuest
    .goto 1429/0,-22.99,-9404.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sam Salsepareille|r
    .turnin 96627 >> Rendez la quête L'aventurier
    .accept 95998 >> Acceptez la quête Les grands espaces sauvages
    .target Sam Sarsaparilla
step
    .goto 1429/0,-22.99,-9402.40
    >>|cRXP_WARN_Tapez "/assis" dans le chat et attendez une minute autour du feu de camp|r
    .complete 95998,1 -- /sit emote in chat 1/1
    .complete 95998,2 -- Gain boosted rest buff 1/1

step
    .goto 1429/0,-22.99,-9404.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sam Salsepareille|r
    .turnin 95998 >> Rendez la quête Les grands espaces sauvages
    .accept 96626 >> Acceptez la quête Introduction au camping : la cuisine
    .accept 97924 >> Acceptez la quête Introduction au camping : le dépeçage
    .target Sam Sarsaparilla
    .skill skinning,<1,1 -- shows if skinning is >1
step
    .goto 1429/0,-22.99,-9404.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sam Salsepareille|r
    .turnin 95998 >> Rendez la quête Les grands espaces sauvages
    .accept 96626 >> Acceptez la quête Introduction au camping : la cuisine
    .accept 97921 >> Acceptez la quête Introduction au camping : l'herboristerie
    .target Sam Sarsaparilla
    .skill herbalism,<1,1 -- shows if herbalism is >1
step
    .goto 1429/0,-22.99,-9404.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sam Salsepareille|r
    .turnin 95998 >> Rendez la quête Les grands espaces sauvages
    .accept 96626 >> Acceptez la quête Introduction au camping : la cuisine
    .accept 97923 >> Acceptez la quête Introduction au camping : le minage
    .target Sam Sarsaparilla
    .skill mining,<1,1 -- shows if mining is >1

--Add turnins for skinning/herb/mining later

step
    .goto 1429/0,-22.99,-9404.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sam Salsepareille|r
    .turnin 95998 >> Rendez la quête Les grands espaces sauvages
    .accept 96626 >> Acceptez la quête Introduction au camping : la cuisine
    .target Sam Sarsaparilla


step
    .isOnQuest 91772
    #loop
    .goto 1429/0,-77.600,-9140.900,55,0
    .goto 1429/0,-44.100,-9246.500,55,0
    .goto 1429/0,8.800,-9327.900,55,0
    .goto 1429/0,66.000,-9374.000,55,0
    >>Cliquez sur l' |cRXP_PICK_Empreinte de Kobold|r verte au sol
    .use 247970 >> |cRXP_WARN_Utilisez le|r |T132995:0|t[Kit de pistage des Kobolds] |cRXP_WARN_pour les localiser sur votre minicarte|r
    .complete 91772,1 -- Followed Kobold Tracks 6/6

step << Warrior/Rogue/Paladin
    .goto 1429/0,87.87,-9456.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Smith Argus|r
    >>Ceci vous permettra de créer des [Pierre à aiguiser brute] qui vont augmenter vos dégâts des armes de 2 << Warrior/Rogue
    >>Ceci pour permettra de créer des [Caillou brut] qui vont augmenter vos dégâts des armes de 2 << Paladin
    >>Si vous ne voulez pas le faire, vous pouvez passer cette étape
    .train 2018 >> Apprenez [Forge]
    .target Smith Argus
step << Warrior
    .goto 1429/0,94.01,-9464.8900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>|cRXP_BUY_Achetez un|r [Glaive] |cRXP_BUY_à Corina si vous pouvez vous le permettre|r
    .collect 2488,1 --Collect Gladius (1)
    .disablecheckbox
    .target Corina Steele
    .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior
    #completewith next
    +Équipez le [Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto 1429/0,94.01,-9464.8900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>|cRXP_BUY_Achetez-lui une|r |T135421:0|t[Tomahawk] |cRXP_BUY_ou un|r |T135641:0|t[Stylet] |cRXP_BUY_si vous pouvez vous le permettre|r
    .target Corina Steele
--  .money <0.0540
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #label RogueTomahawk
    #completewith GSHS
    +Équipez la [Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #completewith GSHS
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Paladin
    .goto 1429/0,94.01,-9464.8900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>Achetez un [Maillet en bois] |cRXP_BUY_à Corina si vous pouvez vous le permettre|r
    .collect 2493,1 --Collect Wooden Mallet (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0631
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #completewith next
    +Équipez le [Maillet en bois]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Mage/Priest/Warlock
    #optional
    #completewith next
    .goto 1429/0,87.87,-9462.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Andrew Krighton|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Andrew Krighton
--  .money >1.0
step
    .isOnQuest 91772
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 54 >> Rendez la quête Rapport pour Goldshire
    .turnin 91772 >>Rendez la quête Chut, on chasse le Kobold
    .accept 62 >> Acceptez la quête La mine de Fondugouffre
    .accept 91775 >>Acceptez la quête Restitution de livres
    .target Marshal Dughan
step
    .isQuestTurnedIn 91772
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 54 >> Rendez la quête Rapport pour Goldshire
    .accept 62 >> Acceptez la quête La mine de Fondugouffre
    .accept 91775 >>Acceptez la quête Restitution de livres
    .target Marshal Dughan
step
    #label Goldshire
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 54 >> Rendez la quête Rapport pour Goldshire
    .accept 62 >> Acceptez la quête La mine de Fondugouffre
    .target Marshal Dughan
step
    .goto 1429/0,31.92,-9460.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_William Pestle|r
    .accept 60 >> Acceptez la quête Les bougies de Kobolds
    .target William Pestle
step
    #label GSHS
    .goto 1429/0,16.20,-9462.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Farley|r
    .turnin 2158,1 >> Rendez la quête Repos et détente << Rogue/Warrior
    .turnin 2158,2 >> Rendez la quête Repos et détente << !Rogue !Warrior
    .home >> Liez votre Pierre de foyer à Comté-de-l'or
    .target Innkeeper Farley

step
    .goto 1429/0,-5.63,-9467.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tomas|r
    >>|cRXP_WARN_Passez cette étape si vous n'avez pas 1 pièce d'argent, ou si vous préférez le faire plus tard|r
    .train 2550 >> Apprenez [Cuisine]
    .turnin 96626 >> Rendez la quête Introduction au camping : la cuisine
    .target Tomas
    .money <0.0100
step
    #optional
    .isQuestComplete 96626
    .goto 1429/0,-5.63,-9467.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tomas|r
    .turnin 96626 >> Rendez la quête Introduction au camping : la cuisine
    .target Tomas
step
    #optional
    .xp 6 >> Montez jusqu'au niveau 6
step << Rogue
    .goto 1429/0,9.64,-9465.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brog Hamfist|r
    .vendor 151 >>|cRXP_BUY_Achetez des|r [Dague de lancer équilibrée] |cRXP_BUY_à Brog si vous pouvez vous le permettre|r
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
    .disablecheckbox
    .target Brog Hamfist
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #label BalancedDaggers1
    +Équipez les [Dague de lancer équilibrée]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #requires BalancedDaggers1
    #label DeleteOldDaggers
    .destroy 2947 >> |cRXP_WARN_Détruisez le|r |T135426:0|t[Small Throwing Knife] |cRXP_WARN_dans vos sacs, comme vous n'en avez plus besoin|r
    .itemcount 2946,1
step << Warlock
    #optional
    #completewith next
    .goto 1429/0,-5.63,-9460.26,5 >> Allez en bas des escaliers
step << Warlock
    .goto 1429/0,-5.36,-9472.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maximillian Crowe|r en bas
    .trainer >> Apprenez vos sorts de classe
    .target Maximillian Crowe
step << Warlock
    .goto 1429/0,-5.53,-9466.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cylina Darkheart|r
    .vendor 6374 >> |cRXP_BUY_Achetez le|r [Grimoire de Pacte de Sang (Rang 1)] |cRXP_BUY_à Cylina si vous pouvez vous le permettre. Sinon vous pourrez l'acheter plus tard|r
    .target Cylina Darkheart
    .money <0.0100
    .itemcount 16321,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20397,1 --Blood Pact (Rank 1)
step << Mage/Rogue/Priest
    #optional
    #completewith next
    .goto 1429/0,12.52,-9479.85,9 >> Montez en haut des escaliers dans l'auberge
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto 1429/0,34.28,-9471.61
    .trainer >> Apprenez vos sorts de classe
step << Priest
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess Josetta|r
	.target Priestess Josetta
    .goto 1429/0,33.14,-9460.75
    .turnin 5623 >> Rendez la quête Au service de la Lumière
    .accept 5624 >> Acceptez la quête Vêtements de la Lumière
    .trainer >> Apprenez vos sorts de classe
step << Rogue
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto 1429/0,12.69,-9465.75
    .trainer >> Apprenez vos sorts de classe
step << Warrior/Rogue
    .goto 1429/0,16.20,-9462.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Farley|r
    .vendor 295 >> |cRXP_BUY_Achetez des|r [Dalaran piquant] |cRXP_BUY_à Farley jusqu'à ce qu'il ne vous reste qu'1 pièce d'argent|r << Warrior
    .vendor 295 >> |cRXP_BUY_Achetez jusqu'à 20|r [Dalaran piquant] |cRXP_BUY_à Farley|r << Rogue
    .collect 414,20 --Dalaran Sharp (20)
    .disablecheckbox
    .target Innkeeper Farley
    .itemcount 414,<7 --Dalaran Sharp (<7)
step << Warrior
    .goto 1429/0,109.36,-9461.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Apprenez vos sorts de classe
    .target Lyria Du Lac
step << Paladin
    .goto 1429/0,109.04,-9468.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Wilhelm|r
    .trainer >> Apprenez vos sorts de classe
    .target Brother Wilhelm
step
    #requires DeleteOldDaggers << Rogue
    .goto 1429/0,72.81,-9496.23--c:Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Remy "Two Times"|r
    .accept 47 >> Acceptez la quête L'échange de poussière d'or
    .target Remy "Two Times"
step << Hunter
    .goto 1429/0,75.400,-9480.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nordun Fixevision|r
    >>|cRXP_BUY_Achetez et équipez un|r [Arc courbe en bois de corne]
    >>|cRXP_BUY_Achetez|r [Rough Arrows] |cRXP_BUY_jusqu'à ce que votre carquois soit plein|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Nordun Steadysight
    .money <0.0281
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Hunter
    .goto 1438/1,968.85,9821.98--c:Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jeena Featherbow|r
    .vendor >>|cRXP_BUY_Achetez|r [Rough Arrows] |cRXP_BUY_jusqu'à ce que votre carquois soit plein|r
    .target Jeena Featherbow
step << Hunter
    #completewith next
    .equip 18,2506 >> Équipez le [Arc courbe en bois de corne]
    .use 2506
    .itemcount 2506,1 --Hornwood Recurve Bow (1)
step << Hunter
    .goto 1429/0,107.200,-9472.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Joséphine Carson|r
    .trainer >> Apprenez vos sorts de classe
    .target Josephine Carson
step << Priest
    .goto 1429/0,-135.72,-9514.56
    >>Lancez [Soins inférieurs (Rang 2)] et [Mot de pouvoir : Robustesse] sur |cRXP_FRIENDLY_Guard Roberts|r
    .complete 5624,1 --Heal and fortify Guard Roberts
    .target Guard Roberts
step
    #sticky
    #label BoarMeatQuest
    #loop
    .goto 1429/0,406.84,-9917.23,0
    .goto 1429/0,456.65,-9825.69,0
    .goto 1429/0,279.60,-9971.76,0
    .goto 1429/0,86.93,-9952.95,0
    .goto 1429/0,225.49,-9751.09,0
    .goto 1429/0,92.38,-9548.20,0
    .waypoint 1429/0,454.25,-9915.31,40,0
    .waypoint 1429/0,387.26,-9944.94,40,0
    .waypoint 1429/0,372.34,-9912.07,40,0
    .waypoint 1429/0,418.85,-9881.06,40,0
    >>Tuez les |cRXP_ENEMY_Stonetusk Boars|r. Dépouillez-les pour leur |cRXP_LOOT_[Chunks of Boar Meat]|r
    .collect 769,4,86,1 --Chunk of Boar Meat (4)
    .mob Stonetusk Boar
step
    #optional
    #requires BoarMeatQuest
    #label BoarMeatCooking1
    #completewith Pie
    .goto 1429/0,406.84,-9917.23,0
    .goto 1429/0,456.65,-9825.69,0
    .goto 1429/0,279.60,-9971.76,0
    .goto 1429/0,86.93,-9952.95,0
    .goto 1429/0,225.49,-9751.09,0
    .goto 1429/0,92.38,-9548.20,0
    >>Tuez les |cRXP_ENEMY_Stonetusk Boars|r. Dépouillez-les pour leur |cRXP_LOOT_[Chunks of Boar Meat]|r
    >>Ils seront utilisés pour monter votre niveau de [Cuisine] plus tard
    >>Vous aurez besoin d'un niveau de 10 en [Cuisine] pour une quête à Auberdine plus tard
    .collect 769,10,86,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Stonetusk Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires BoarMeatCooking1
    #completewith Pie
    .goto 1429/0,406.84,-9917.23,0
    .goto 1429/0,456.65,-9825.69,0
    .goto 1429/0,279.60,-9971.76,0
    .goto 1429/0,86.93,-9952.95,0
    .goto 1429/0,225.49,-9751.09,0
    .goto 1429/0,92.38,-9548.20,0
    >>Tuez les |cRXP_ENEMY_Stonetusk Boars|r. Dépouillez-les pour leur |cRXP_LOOT_[Chunks of Boar Meat]|r
    >>Ils seront utilisés pour monter votre niveau de [Cuisine] plus tard
    >>|cRXP_WARN_Vous aurez besoin d'un niveau de compétence de 50|r en |T133971:0|t[Cuisine] |cRXP_WARN_pour une quête au Bois de la Pénombre plus tard|r
    >>|cRXP_WARN_Ne changez pas votre route pour le faire maintenant. Tuez et dépouillez simplement tous les sangliers que vous rencontrez|r
    .collect 769,50,86,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Stonetusk Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r et à |cRXP_FRIENDLY_Ma Stonefield|r
    .accept 85 >> Acceptez la quête Le collier perdu
    .goto 1429/0,338.47,-9889.69
    .target +"Auntie" Bernice Stonefield
    .accept 88 >> Acceptez la quête Princesse doit mourir !
	.goto 1429/0,332.43,-9894.99--c:Elwynn Forest,34.660,84.482
    .target +Ma Stonefield
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone1
    #completewith NecklaceStart
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Ouvrez les |cRXP_PICK_Battered Chests|r. Ramassez les |cRXP_LOOT_[Rough Stones]|r << Warrior/Rogue
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Ouvrez les |cRXP_PICK_Battered Chests|r. Récupérez les |cRXP_LOOT_[Rough Stones]|r et les |cRXP_LOOT_[Linen Cloth]|r << Paladin
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
    +|T136241:0|tÀ l'aide de votre [Forge], transformez les |cRXP_LOOT_[Rough Stones]|r en [Pierre à aiguiser brute] << Warrior/Rogue
    +|T136241:0|tÀ l'aide de votre [Forge], transformez les |cRXP_LOOT_[Rough Stones]|r et les |cRXP_LOOT_[Linen Cloth]|r en [Caillou brut] << Paladin
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
    .cast 2828 >>Utilisez la [Pierre à aiguiser brute] sur votre arme actuelle << Warrior/Rogue
    .cast 3112 >>Utilisez les [Caillou brut] sur votre arme actuelle << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
step
    .isNotOnQuest 91775
    #optional
    #completewith NecklaceStart
    .goto 1429/0,223.09,-9916.240,0
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Dépouillez-les pour leur |cRXP_LOOT_Kobold Candles|r et leur |cRXP_LOOT_Gold Dust|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .isOnQuest 91775
    #optional
    #completewith NecklaceStart
    .goto 1429/0,223.09,-9916.240,0
    >>Tuez les |cRXP_ENEMY_Tunneliers kobolds|r et les |cRXP_ENEMY_Mineurs kobolds|r. Dépouillez-les pour leur |cRXP_LOOT_Bougie|r, leur |cRXP_LOOT_Poussière d'or|r et les |cRXP_LOOT_Livres perdus|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .complete 91775,2 -- Lost Book (6)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label NecklaceStart
    .goto 1429/0,38.41,-9923.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 85 >> Rendez la quête Le collier perdu
    .accept 86 >> Acceptez la quête Une tourte pour Billy
    .target Billy Maclure
step
    .goto 1429/0,37.61,-10014.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maybell Maclure|r
    .accept 106 >> Acceptez la quête Jeunes amoureux
    .target Maybell Maclure
step
    #optional
    #completewith Lovers
    .goto 1429/0,65.28,-10008.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Joshua Maclure|r
    .vendor >>|cRXP_BUY_Achetez autant de|r [Lait glacé] que vous le pouvez << Priest/Warlock/Mage
    .vendor >>Vendez tout ce dont nous n'avez pas besoin << !Priest !Warlock !Mage
    .target Joshua Maclure
    .subzoneskip 64,1 --The Maclure Vineyards
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone2
    #completewith Lovers
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Ouvrez les |cRXP_PICK_Battered Chests|r. Ramassez les |cRXP_LOOT_[Rough Stones]|r << Warrior/Rogue
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Ouvrez les |cRXP_PICK_Battered Chests|r. Récupérez les |cRXP_LOOT_[Rough Stones]|r et les |cRXP_LOOT_[Linen Cloth]|r << Paladin
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
    +|T136241:0|tÀ l'aide de votre [Forge], transformez les |cRXP_LOOT_[Rough Stones]|r en [Pierre à aiguiser brute] << Warrior/Rogue
    +|T136241:0|tÀ l'aide de votre [Forge], transformez les |cRXP_LOOT_[Rough Stones]|r et les |cRXP_LOOT_[Linen Cloth]|r en [Caillou brut] << Paladin
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
    .cast 2828 >>Utilisez la [Pierre à aiguiser brute] sur votre arme actuelle << Warrior/Rogue
    .cast 3112 >>Utilisez les [Caillou brut] sur votre arme actuelle << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
step
    .isNotOnQuest 91775
    #optional
    #completewith Lovers
    .goto 1429/0,223.09,-9916.240,0
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Dépouillez-les pour leur |cRXP_LOOT_Kobold Candles|r et leur |cRXP_LOOT_Gold Dust|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .isOnQuest 91775
    #optional
    #completewith Lovers
    .goto 1429/0,223.09,-9916.240,0
    >>Tuez les |cRXP_ENEMY_Tunneliers kobolds|r et les |cRXP_ENEMY_Mineurs kobolds|r. Dépouillez-les pour leur |cRXP_LOOT_Bougie|r, leur |cRXP_LOOT_Poussière d'or|r et les |cRXP_LOOT_Livres perdus|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .complete 91775,2 -- Lost Book (6)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label Lovers
    .goto 1429/0,499.72,-9930.05--c:Elwynn Forest,29.840,85.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tommy Joe Stonefield|r
    .turnin 106 >> Rendez la quête Jeunes amoureux
    .accept 111 >> Acceptez la quête Discuter avec Mamie
    .target Tommy Joe Stonefield
step
    #requires BoarMeatQuest
    #label Pie
    .goto 1429/0,338.47,-9889.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .turnin 86 >> Rendez la quête Une tourte pour Billy
    .accept 84 >> Acceptez la quête Revenir voir Billy
    .target "Auntie" Bernice Stonefield
step
    .goto 1429,34.945,83.855
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gramma Stonefield|r à l'intérieur
    .turnin 111 >> Rendez la quête Discuter avec Mamie
    .accept 107 >> Acceptez la quête Note pour William
    .target Gramma Stonefield
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone3
    #completewith Exchange
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Ouvrez les |cRXP_PICK_Battered Chests|r. Ramassez les |cRXP_LOOT_[Rough Stones]|r << Warrior/Rogue
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Ouvrez les |cRXP_PICK_Battered Chests|r. Récupérez les |cRXP_LOOT_[Rough Stones]|r et les |cRXP_LOOT_[Linen Cloth]|r << Paladin
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
    +|T136241:0|tÀ l'aide de votre [Forge], transformez les |cRXP_LOOT_[Rough Stones]|r en [Pierre à aiguiser brute] << Warrior/Rogue
    +|T136241:0|tÀ l'aide de votre [Forge], transformez les |cRXP_LOOT_[Rough Stones]|r et les |cRXP_LOOT_[Linen Cloth]|r en [Caillou brut] << Paladin
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
    .cast 2828 >>Utilisez la [Pierre à aiguiser brute] sur votre arme actuelle << Warrior/Rogue
    .cast 3112 >>Utilisez les [Caillou brut] sur votre arme actuelle << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
    .subzoneskip 87 --Goldshire
step
    .isNotOnQuest 91775
    #sticky
    #label KoboldEnd1
    #loop
    .goto 1429/0,223.09,-9916.240,0
    .waypoint 1429/0,176.93,-9857.68,35,0
    .waypoint 1429/0,176.24,-9902.12,35,0
    .waypoint 1429/0,223.09,-9916.240,35,0
    .waypoint 1429/0,259.54,-9865.09,35,0
    .waypoint 1429/0,215.81,-9830.600,35,0
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Dépouillez-les pour leur |cRXP_LOOT_Kobold Candles|r et leur |cRXP_LOOT_Gold Dust|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .isOnQuest 91775
    #sticky
    #label KoboldEnd2
    #loop
    .goto 1429/0,223.09,-9916.240,0
    .waypoint 1429/0,176.93,-9857.68,35,0
    .waypoint 1429/0,176.24,-9902.12,35,0
    .waypoint 1429/0,223.09,-9916.240,35,0
    .waypoint 1429/0,259.54,-9865.09,35,0
    .waypoint 1429/0,215.81,-9830.600,35,0
    >>Tuez les |cRXP_ENEMY_Tunneliers kobolds|r et les |cRXP_ENEMY_Mineurs kobolds|r. Dépouillez-les pour leur |cRXP_LOOT_Bougie|r, leur |cRXP_LOOT_Poussière d'or|r et les |cRXP_LOOT_Livres perdus|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .complete 91775,2 -- Lost Book (6)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto 1429/0,38.41,-9923.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 84 >> Rendez la quête Revenir voir Billy
    .accept 87 >> Acceptez la quête Dent-d'or
    .target Billy Maclure
step
    .goto 1429/0,181.44,-9842.170,15,0
    .goto 1429/0,149.86,-9793.80
    >>Entrez dans l'un dans des grands espaces ouverts dans la mine de Fargodeep
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    #season 0,1
    .goto 1429,41.732,78.024
    >>Tuez |cRXP_ENEMY_Goldtooth|r. Dépouillez-le pour le |cRXP_LOOT_Bernice's Necklace|r
    >>|cRXP_WARN_Faites attention car il arrive souvent avec les |cRXP_ENEMY_Kobold Miner|r proches de lui|r
    .complete 87,1 --Bernice's Necklace (1)
    .mob Goldtooth
step
    .isOnQuest 91775
    .goto 1429/0,91.200,-9788.500
    >>Tuez |cRXP_ENEMY_Nimsy|r à l'intérieur de la Mine de Fargodeep. Dépouillez-le pour le |cRXP_LOOT_Livre d’images : Les Joyeux Élémentaires|r
    >>|cRXP_WARN_Essayez de trouver un groupe pour cette étape. Les |cRXP_ENEMY_Kobolds|r peuvent réapparaître très vite dans la grotte|r
    >>|cRXP_WARN_Il va aussi invoquer un add |cRXP_ENEMY_Grondeur|r. Faites attention si vous essayez de le faire seul. Passez cette étape si vous n'arrivez pas à le tuer|r
    .complete 91775,1 --|1/1 Picture Book: Fun with Elementals
    .mob Nimsy
step << Warrior
    #optional
    #completewith Exchange
    +Essayez de garder une [Potion de soins mineure] à partir de maintenir, vous en aurez besoin pour le Cadavre de Rolf plus tard
    .subzoneskip 87 --Goldshire
step
    #requires KoboldEnd1
step
    #requires KoboldEnd2
step
    #loop
    .goto 1429/0,223.09,-9916.240,0
    .goto 1429/0,176.93,-9857.68,35,0
    .goto 1429/0,176.24,-9902.12,35,0
    .goto 1429/0,223.09,-9916.240,35,0
    .goto 1429/0,259.54,-9865.09,35,0
    .goto 1429/0,215.81,-9830.600,35,0
    .xp 7+1140 >>Montez votre expérience jusqu'à 1140+/4500xp
    .mob Kobold Tunneler
    .mob Kobold Miner
    .isQuestComplete 91775 -- elite quest
step
    #loop
    .goto 1429/0,223.09,-9916.240,0
    .goto 1429/0,176.93,-9857.68,35,0
    .goto 1429/0,176.24,-9902.12,35,0
    .goto 1429/0,223.09,-9916.240,35,0
    .goto 1429/0,259.54,-9865.09,35,0
    .goto 1429/0,215.81,-9830.600,35,0
    .xp 7+1815 >>Montez votre expérience jusqu'à 1815+/4500xp
    .mob Kobold Tunneler
    .mob Kobold Miner
    .isQuestNotComplete 91775 -- elite quest
step
    #label Goldtooth
    .goto 1429/0,338.47,-9889.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .turnin 87 >> Rendez la quête Dent-d'or
    .target "Auntie" Bernice Stonefield
step
    #optional
    #label BoarMeatCooking2
    #completewith Exchange
    .goto 1429/0,406.84,-9917.23,0
    .goto 1429/0,456.65,-9825.69,0
    .goto 1429/0,279.60,-9971.76,0
    .goto 1429/0,86.93,-9952.95,0
    .goto 1429/0,225.49,-9751.09,0
    .goto 1429/0,92.38,-9548.20,0
    >>Tuez les |cRXP_ENEMY_Stonetusk Boars|r. Dépouillez-les pour leur |cRXP_LOOT_[Chunks of Boar Meat]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Stonetusk Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 57 --Fargodeep Mine
step
    #optional
    #requires BoarMeatCooking2
    #completewith Exchange
    .goto 1429/0,406.84,-9917.23,0
    .goto 1429/0,456.65,-9825.69,0
    .goto 1429/0,279.60,-9971.76,0
    .goto 1429/0,86.93,-9952.95,0
    .goto 1429/0,225.49,-9751.09,0
    .goto 1429/0,92.38,-9548.20,0
    >>Tuez les |cRXP_ENEMY_Stonetusk Boars|r. Dépouillez-les pour leur |cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|cRXP_WARN_Ne changez pas votre route pour le faire maintenant. Tuez et dépouillez simplement tous les sangliers que vous rencontrez|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Stonetusk Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 57 --Fargodeep Mine
step
    #hardcore
    #optional
    #completewith Exchange
    .goto 1429/0,72.81,-9496.23,125 >> Retourner à Comté-de-l'Or--c:Elwynn Forest,42.140,67.254
    .subzoneskip 87 --Goldshire
step
    #softcore
    #completewith Exchange
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
step
    #label Exchange
    .goto 1429/0,72.81,-9496.23--c:Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Remy "Two Times"|r
    >>Ne vendez PAS le [Sac de billes]. C'est un objet incroyablement précieux jusqu'au niveau 60
    .turnin 47 >> Rendez la quête L'échange de poussière d'or
    .accept 40 >> Acceptez la quête Péril en la rivière
    .target Remy "Two Times"
step
    .isQuestComplete 91775
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 62 >> Rendez la quête La mine de Fondugouffre
    .accept 76 >> Acceptez la quête La mine Veine-de-jaspe
    .turnin 40 >> Rendez la quête Péril en la rivière
    .accept 35 >> Acceptez la quête Inquiétudes supplémentaires
    .turnin 91775 >>Rendez la quête Restitution de livres
    .accept 91777 >>Acceptez la quête Des livres rares
    .target Marshal Dughan
step
    .isQuestTurnedIn 91775
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .accept 91777 >>Acceptez la quête Des livres rares
    .target Marshal Dughan
step
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 62 >> Rendez la quête La mine de Fondugouffre
    .accept 76 >> Acceptez la quête La mine Veine-de-jaspe
    .turnin 40 >> Rendez la quête Péril en la rivière
    .accept 35 >> Acceptez la quête Inquiétudes supplémentaires
    .target Marshal Dughan
step
    #optional << Warrior/Rogue/Paladin
    #completewith CandlesEnd
    .goto 1429/0,94.01,-9464.8900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corina Steele|r
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .target Corina Steele
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>3.3 << Rogue
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>3.8 << Warrior
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>5.0 << Paladin
step << Warrior
    .goto 1429/0,94.01,-9464.8900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>|cRXP_BUY_Achetez un|r [Glaive] |cRXP_BUY_à Corina si vous pouvez vous le permettre|r
    .collect 2488,1 --Collect Gladius (1)
    .disablecheckbox
--  .money <0.0536
    .target Corina Steele
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior
    #completewith CandlesEnd
    +Équipez le [Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto 1429/0,94.01,-9464.8900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>|cRXP_BUY_Achetez-lui une|r |T135421:0|t[Tomahawk] |cRXP_BUY_si vous pouvez vous le permettre|r
    .collect 2490,1 --Collect Tomahawk (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0540
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #label RogueTomahawk2
    +Équipez la [Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #requires RogueTomahawk2
    .goto 1429/0,94.01,-9464.8900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>|cRXP_BUY_Achetez un|r [Stylet] |cRXP_BUY_à Corina si vous pouvez vous le permettre|r
    .collect 2494,1 --Collect Stiletto (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0400
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith CandlesEnd
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Paladin
    .goto 1429/0,94.01,-9464.8900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>|cRXP_BUY_Achetez un|r [Maillet en bois] |cRXP_BUY_à Corina si vous pouvez vous le permettre|r
    .collect 2493,1 --Collect Wooden Mallet (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0631
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #completewith CandlesEnd
    +Équipez le [Maillet en bois]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step
    #label CandlesEnd
    #requires GoldtoothRune << Warrior/Priest --Season 2
    .goto 1429/0,31.92,-9460.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_William Pestle|r
    .turnin 60 >> Rendez la quête Les bougies de Kobolds
    .accept 61 >> Acceptez la quête Une cargaison pour Hurlevent
    .turnin 107 >> Rendez la quête Note pour William
    .accept 112 >> Acceptez la quête À la recherche du varech
    .target William Pestle
step
    #optional
    .xp 8 >> Montez jusqu'au niveau 8
step << Hunter
    .goto 1429/0,107.200,-9472.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Joséphine Carson|r
    .trainer >> Apprenez vos sorts de classe
    .target Josephine Carson
step << Warrior
    .goto 1429/0,109.36,-9461.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Apprenez vos sorts de classe
    .target Lyria Du Lac
step << Paladin
    #season 0,1
    .goto 1429/0,109.04,-9468.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Wilhelm|r
    .trainer >> Apprenez vos sorts de classe
    .target Brother Wilhelm
step << Warlock
    #optional
    #completewith next
    .goto 1429/0,4.78,-9467.21,10 >> Descendez les escaliers dans l'auberge
step << Warlock
    .goto 1429/0,-5.36,-9472.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maximillian Crowe|r
    .target Maximillian Crowe
    .trainer >> Apprenez vos sorts de classe
step << Warlock
    .goto 1429/0,-5.53,-9466.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cylina Darkheart|r
    .vendor >> |cRXP_BUY_Achetez le|r [Grimoire de Pacte de Sang (Rang 2)] |cRXP_BUY_à Cylina si vous pouvez vous le permettre. Sinon vous pourrez l'acheter plus tard|r
    .target Cylina Darkheart
    .money <0.100
    .itemcount 16302,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20270,1 --Blood Pact (Rank 1)
step << Mage/Priest/Rogue/Warrior/Paladin
    #optional
    #completewith next
    .goto 1429/0,12.52,-9479.85,9 >> Montez en haut des escaliers dans l'auberge
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto 1429/0,34.28,-9471.61
    .trainer >> Apprenez vos sorts de classe
step << Priest
    .goto 1429/0,33.14,-9460.75
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess Josetta|r
	.target Priestess Josetta
    .turnin 5624 >> Rendez la quête Vêtements de la Lumière
    .trainer >> Apprenez vos sorts de classe
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto 1429/0,12.69,-9465.75
    .trainer >> Apprenez vos sorts de classe
step << Rogue/Warrior/Paladin
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Michelle Belle|r
    .target Michelle Belle
    .goto 1429/0,29.35,-9456.790
    .train 3273 >> Apprenez [Premiers soins]
step
    #label GoldshireEnd << Priest --Season 2
    .goto 1429/0,9.64,-9465.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brog Hamfist|r
    .vendor >> Achetez une [Petite sacoche marron] si nécessaire
	.target Brog Hamfist
    .money <0.1250
step
    #completewith next
    .goto 1429/0,16.20,-9462.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Farley|r
    .vendor >> |cRXP_BUY_Achetez jusqu'à 20|r [Lait glacé] |cRXP_BUY_à Farley si vous pouvez vous le permettre|r << !Warrior !Rogue !Paladin !Hunter
    .vendor >> |cRXP_BUY_Achetez jusqu'à 20|r [Dalaran piquant] |cRXP_BUY_à Farley|r << Warrior/Rogue
    .vendor >> |cRXP_BUY_Achetez jusqu'à 10|r [Dalaran piquant] |cRXP_BUY_et 10|r [Lait glacé] |cRXP_BUY_à Farley si vous pouvez vous le permettre|r << Paladin/Hunter
    .target Innkeeper Farley
step
    #optional
    #label WolfMeatCooking1
    #completewith Jasperlode
    .goto 1429,52.242,62.919,0
    .goto 1429,53.837,60.950,0
    .goto 1429,56.793,60.340,0
    .goto 1429,59.033,60.673,0
    >>Tuez les |cRXP_ENEMY_Loups galeux|r. Dépouillez-les pour leur |T133970:0|t|cRXP_LOOT_[Viandes de loup maigre]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Mangy Wolf
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 54
step
    #optional
    #requires WolfMeatCooking1
    #completewith Jasperlode
    .goto 1429,52.242,62.919,0
    .goto 1429,53.837,60.950,0
    .goto 1429,56.793,60.340,0
    .goto 1429,59.033,60.673,0
    >>Tuez les |cRXP_ENEMY_Loups galeux|r. Dépouillez-les pour leur |T133970:0|t|cRXP_LOOT_[Viandes de loup maigre]|r
    >>|cRXP_WARN_Ne changez pas votre route pour le faire maintenant. Tuez et dépouillez simplement tous les loups que vous rencontrez|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Mangy Wolf
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 54


step
    .goto 1429,47.5,62.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jason Mathers|r
    .accept 99127 >> Acceptez la quête Filet sans arêtes
    .target Jason Mathers
step
    #softcore
    .goto 1429,47.6,62.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lee Brown|r
    .accept 99143 >> Acceptez la quête Appâts de pacotille
    .target Lee Brown
step
    #loop
    .goto 1429,48.5,58.3,40,0
    .goto 1429,47.7,65.9,40,0
    .goto 1429,49.9,66.5,40,0
    >>Ramassez les |cRXP_PICK_Filets de pêche|r dans l'eau pour les |cRXP_LOOT_Poissons à moitié dévorés|r
    >>|cRXP_WARN_Ils peuvent être difficiles à voir|r
    .complete 99127,1 -- Half-Eaten Fish (7)
step
    .goto 1429,47.5,62.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jason Mathers|r
    .turnin 99127 >> Rendez la quête Filet sans arêtes
    .accept 99128 >> Acceptez la quête Menace visqueuse
    .target Jason Mathers
step
    #softcore
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
    >>Tuez les |cRXP_ENEMY_Murlocs|r et les |cRXP_ENEMY_Murloc Streamrunners|r. Dépouillez-les pour leur |cRXP_LOOT_Crystal Kelp Fronds|r
    >>Ramassez les |cRXP_PICK_Tas de camelote|r au sol pour la |cRXP_LOOT_Camelote rutilante|r. |cRXP_WARN_Si vous ne pouvez pas les ramasser comme il y a trop de |cRXP_ENEMY_Murlocs|r, passez cet objectif|r
    .complete 99128,2 -- Murloc slain (7)
    .mob +Murloc
    .complete 99128,1 -- Murloc Streamrunners slain (4)
    .mob +Murloc Streamrunner
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
    .mob +Murloc
    .mob +Murloc Streamrunner
    .complete 99143,1 -- Shiny Junk (6)
    .disablecheckbox
step
    #hardcore
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
    >>Tuez les |cRXP_ENEMY_Murlocs|r et les |cRXP_ENEMY_Murloc Streamrunners|r. Dépouillez-les pour leur |cRXP_LOOT_Crystal Kelp Fronds|r
    .complete 99128,2 -- Murloc slain (7)
    .mob +Murloc
    .complete 99128,1 -- Murloc Streamrunners slain (4)
    .mob +Murloc Streamrunner
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
    .mob +Murloc
    .mob +Murloc Streamrunner
step
    #softcore
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
    >>Ramassez les |cRXP_PICK_Tas de camelote|r au sol pour la |cRXP_LOOT_Camelote rutilante|r
    >>|cRXP_WARN_Si vous ne pouvez pas les ramasser comme il y a trop de |cRXP_ENEMY_Murlocs|r, passez cette étape|r
    .complete 99143,1 -- Shiny Junk (6)
step
    .isQuestComplete 99143
    .goto 1429,47.6,62.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lee Brown|r
    .turnin 99143 >> Rendez la quête Appâts de pacotille
    .target Lee Brown
--xx abandon if didnt complete/check routing for potential later turnin
step
    .goto 1429,47.5,62.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jason Mathers|r
    .turnin 99128 >> Rendez la quête Menace visqueuse
    .accept 99129 >> Acceptez la quête Solution anti-Murloc
    .target Jason Mathers

step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone4
    #completewith JasperlodeExplore
    >>Tuez les |cRXP_ENEMY_Kobold Miners|r. Ouvrez les |cRXP_PICK_Battered Chests|r. Dépouillez-les pour leur |cRXP_LOOT_[Rough Stones]|r << Warrior/Rogue
    >>Tuez les |cRXP_ENEMY_Kobold Miners|r. Ouvrez les |cRXP_PICK_Battered Chests|r. Dépouillez-les pour leur |cRXP_LOOT_[Rough Stones]|r et leur |cRXP_LOOT_[Linen Cloth]|r << Paladin
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
    +|T136241:0|tÀ l'aide de votre [Forge], transformez les |cRXP_LOOT_[Rough Stones]|r en [Pierre à aiguiser brute] << Warrior/Rogue
    +|T136241:0|tÀ l'aide de votre [Forge], transformez les |cRXP_LOOT_[Rough Stones]|r et les |cRXP_LOOT_[Linen Cloth]|r en [Caillou brut] << Paladin
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
    .cast 2828 >>Utilisez la [Pierre à aiguiser brute] sur votre arme actuelle << Warrior/Rogue
    .cast 3112 >>Utilisez les [Caillou brut] sur votre arme actuelle << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
step
    #optional
    #requires MurlocRune << Warrior/Rogue --Season 2
    #label Jasperlode
    #completewith JasperlodeExplore
    .goto 1429/0,-604.49,-9180.39,15 >> Entrez dans la mine de Jasperlode
step
    #label JasperlodeExplore
    .goto 1429/0,-588.73,-9130.67,15,0
    .goto 1429/0,-572.07,-9116.55,15,0
    .goto 1429/0,-560.62,-9100.58
    >>Suivez le chemin au milieu pour explorer la mine de Jasperlode
    .complete 76,1 --Scout through the Jasperlode Mine
step
    .isOnQuest 91777
    .goto 1429/0,-595.100,-9072.200
    >>Tuez le |cRXP_ENEMY_Géosculpteur Yip|r. Dépouillez-le pour |cRXP_LOOT_La Géomancie pour les jeunes sorciers curieux|r
    >>|cRXP_WARN_Il invoquera trois |cRXP_ENEMY_Grondeurs|r. Passez cette étape si vous n'arrivez pas à le tuer|r
    .complete 91777,1 --|1/1 Geomancy for Curious Young Wizards
    .mob Geosculptor Yip
step
    .isOnQuest 91777
    .goto 1429/0,-620.200,-9050.800
    >>Tuez la |cRXP_ENEMY_Mère Croc|r. Dépouillez-la pour le |cRXP_LOOT_Petit manuel des arcanes : La Magie en toute simplicité|r
    >>|cRXP_WARN_Elle vous immobilisera et vous empoisonnera. Passez cette étape si vous n'arrivez pas à la tuer|r
    .complete 91777,2 --|1/1 Arcane Explainer: Magical Stuff in Simple Words
    .mob Mother Fang
step
    .isQuestComplete 91777
    #completewith next
    .goto 1429/0,-590.300,-9208.101,10,0
    .goto 1429/0,-508.400,-9249.101,10,0
    .goto 1429/0,-493.900,-9208.000,10,0
    .goto 1429/0,-493.000,-9157.400,18 >> |cRXP_WARN_Suivez la flèche de près pour retourner à Northshire afin de rendre la quête que vous venez de terminer pour une arme en récompense|r
step
    .isQuestComplete 91777
    .goto 1429/0,-135.800,-8913.700,10,0
    .goto 1429/0,-186.200,-8874.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Frère Paxton::951|r
    .target Brother Paxton::951
    .turnin 91777 >>Rendez la quête Des livres rares
step
    .isQuestTurnedIn 91777
    #completewith Find
    .goto 1429/0,-439.500,-9118.500,25,0
    .goto 1429/0,-468.400,-9147.200,10,0
    .goto 1429/0,-497.100,-9173.000,20 >>|cRXP_WARN_Retournez aux collines que vous venez de traverser pour prendre un raccourci vers l'est de la Forêt d'Elwynn|r
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone5
    #completewith Find
    >>Tuez les |cRXP_ENEMY_Kobold Miners|r. Ouvrez les |cRXP_PICK_Battered Chests|r. Dépouillez-les pour leur |cRXP_LOOT_[Rough Stones]|r << Warrior/Rogue
    >>Tuez les |cRXP_ENEMY_Kobold Miners|r. Ouvrez les |cRXP_PICK_Battered Chests|r. Dépouillez-les pour leur |cRXP_LOOT_[Rough Stones]|r et leur |cRXP_LOOT_[Linen Cloth]|r << Paladin
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
    +|T136241:0|tÀ l'aide de votre [Forge], transformez les |cRXP_LOOT_[Rough Stones]|r en [Pierre à aiguiser brute] << Warrior/Rogue
    +|T136241:0|tÀ l'aide de votre [Forge], transformez les |cRXP_LOOT_[Rough Stones]|r et les |cRXP_LOOT_[Linen Cloth]|r en [Caillou brut] << Paladin
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
    .cast 2828 >>Utilisez la [Pierre à aiguiser brute] sur votre arme actuelle << Warrior/Rogue
    .cast 3112 >>Utilisez les [Caillou brut] sur votre arme actuelle << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
    .subzoneskip 54,1
step
    #optional
    #label ExitJasperlode
    #completewith Find
    .goto 1429,61.820,53.871,15 >> Quittez la mine de Jasperlode
    .subzoneskip 54,1
step
    #optional
    #requires ExitJasperlode
    #label WolfMeatCooking2
    #completewith Find
    .goto 1429,69.348,67.452,0
    .goto 1429,67.244,63.880,0
    .goto 1429,63.748,64.710,0
    >>Tuez les |cRXP_ENEMY_Loups forestiers gris|r. Dépouillez-les pour leur |T133970:0|t|cRXP_LOOT_[Viandes de loup maigre]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Gray Forest Wolf
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires WolfMeatCooking2
    #completewith Find
    .goto 1429,69.348,67.452,0
    .goto 1429,67.244,63.880,0
    .goto 1429,63.748,64.710,0
    >>Tuez les |cRXP_ENEMY_Loups forestiers gris|r. Dépouillez-les pour leur |T133970:0|t|cRXP_LOOT_[Viandes de loup maigre]|r
    >>|cRXP_WARN_Ne changez pas votre route pour le faire maintenant. Tuez et dépouillez simplement tous les loups que vous rencontrez|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Gray Forest Wolf
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #optional
    #completewith Find
    +|cRXP_WARN_Ramenez (Kite) un |cRXP_ENEMY_Young Forest Bear|r jusqu'au|r |cRXP_FRIENDLY_Guard Thomas|r
    >>|cRXP_WARN_Essayez de parler au |cRXP_FRIENDLY_Guard Thomas|r avant que le |cRXP_ENEMY_Young Forest Bear|r ne meurt par les |cRXP_FRIENDLY_Stormwind Guards|r pour obtenir le crédit pour la quête|r
    >>Faites en sorte de lui infliger au moins 51%+ dégâts pour qu'il compte pour la quête
    .mob Young Forest Bear
step
    #label Find
    #requires JasperlodeRune << Mage --Season 2
    .goto 1429/0,-1032.06,-9610.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Thomas|r
    .turnin 35 >> Rendez la quête Inquiétudes supplémentaires
    .accept 37 >> Acceptez la quête Trouver les gardes disparus
    .accept 52 >> Acceptez la quête Protéger la frontière
    .target Guard Thomas
step
    #season 0,1 << Rogue/Priest
    #completewith AcceptBundle
    >>Tuez les |cRXP_ENEMY_Prowlers|r et les |cRXP_ENEMY_Young Forest Bears|r
    >>|cRXP_WARN_Tuez en priorité tous les |cRXP_ENEMY_Young Forest Bears|r que vous voyez|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    #optional
    #label WolfMeatCooking3
    #completewith LostGuards
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>Tuez les |cRXP_ENEMY_Loups forestiers gris|r et les |cRXP_ENEMY_Rôdeurs|r . Dépouillez-les pour leur |T133970:0|t|cRXP_LOOT_[Viandes de loup maigre]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Gray Forest Wolf
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires WolfMeatCooking3
    #completewith LostGuards
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>Tuez les |cRXP_ENEMY_Loups forestiers gris|r et les |cRXP_ENEMY_Rôdeurs|r . Dépouillez-les pour leur |T133970:0|t|cRXP_LOOT_[Viandes de loup maigre]|r
    >>|cRXP_WARN_Ne changez pas votre route pour le faire maintenant. Tuez et dépouillez simplement tous les loups que vous rencontrez|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Gray Forest Wolf
    .mob Prowler
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #label LostGuards
    .goto 1429/0,-986.35,-9336.06
    >>Cliquez sur |cRXP_PICK_A half-eaten body|r sur le sol
    .turnin 37 >> Acceptez la quête Trouver les gardes disparus
    .accept 45 >> Acceptez la quête La destinée de Rolf
step
    #optional
    #label WolfMeatCooking4
    #completewith AcceptBundle
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>Tuez les |cRXP_ENEMY_Rôdeurs|r. Dépouillez-les pour leur |T133970:0|t|cRXP_LOOT_[Viandes de loup maigre]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 88 --Eastvale Logging Camp
step
    #optional
    #requires WolfMeatCooking4
    #completewith AcceptBundle
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>Tuez les |cRXP_ENEMY_Rôdeurs|r. Dépouillez-les pour leur |T133970:0|t|cRXP_LOOT_[Viandes de loup maigre]|r
    >>|cRXP_WARN_Ne changez pas votre route pour le faire maintenant. Tuez et dépouillez simplement tous les loups que vous rencontrez|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Prowler
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 88 --Eastvale Logging Camp
step
    #label AcceptBundle
    .goto 1429/0,-1289.22,-9469.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Supervisor Raelen|r
    .accept 5545 >> Acceptez la quête Un sac d'embrouilles
    .target Supervisor Raelen
step
    #season 0,1 << Rogue
    #optional
    .goto 1429/0,-1355.20,-9469.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rallic Finn|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Rallic Finn
    .subzoneskip 88,1
step
    #optional
    #label WolfMeatCooking5
    #completewith Prowlers
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>Tuez les |cRXP_ENEMY_Rôdeurs|r. Dépouillez-les pour leur |T133970:0|t|cRXP_LOOT_[Viandes de loup maigre]|r
    >>|cRXP_WARN_Ne changez pas votre route pour le faire maintenant. Tuez et dépouillez simplement tous les loups que vous rencontrez|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 86 --Stone Cairn Lake
step
    #optional
    #requires WolfMeatCooking5
    #completewith Prowlers
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>Tuez les |cRXP_ENEMY_Rôdeurs|r. Dépouillez-les pour leur |T133970:0|t|cRXP_LOOT_[Viandes de loup maigre]|r
    >>|cRXP_WARN_Ne changez pas votre route pour le faire maintenant. Tuez et dépouillez simplement tous les loups que vous rencontrez|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Prowler
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 86 --Stone Cairn Lake
step
    #completewith Prowlers
    >>Tuez les |cRXP_ENEMY_Prowlers|r et les |cRXP_ENEMY_Young Forest Bears|r
    >>|cRXP_WARN_Tuez en priorité tous les |cRXP_ENEMY_Young Forest Bears|r que vous voyez|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
    .subzoneskip 86 --Stone Cairn Lake
step
    #completewith next
    .goto 1429/0,-1257.91,-9216.77,0
    .goto 1429/0,-1246.46,-9329.03,0
    .goto 1429/0,-1362.03,-9309.59,0
    >>Ramassez les |cRXP_LOOT_Bundles of Wood|r sur le sol, à la base des arbres
    .complete 5545,1 -- Bundle of Wood (8)
step << Paladin
    #softcore
    #label Prowlers
    .goto 1429/0,-1234.31,-9224.180
    >>|cRXP_WARN_Courez sur le|cRXP_PICK_Rolf's corpse|r, puis lancez|r [Protection Divine] et cliquez immédiatement sur |cRXP_PICK_Rolf's corpse|r
    >>|cRXP_WARN_Courez et enfuyez-vous des |cRXP_ENEMY_Murlocs|r après avoir complété la quête|r
    .turnin 45 >> Rendez la quête La destinée de Rolf
    .accept 71 >> Acceptez la quête Faire son rapport au garde Thomas
step << Paladin
    #hardcore
    #label Prowlers
    .goto 1429/0,-1234.31,-9224.180
    >>Cliquez sur le |cRXP_PICK_Rolf's corpse|r sur le sol
    >>|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Murloc Foragers|r vont lancer|r [Boire une potion mineure] qui les soignera de 61-68 points de vie
    >>Engagez les 2 |cRXP_ENEMY_Murlocs|r devant les huttes, écartez-vous et tuez rapidement l'un des deux. Utilisez [Protection Divine] et vos soins lorsque ceux-ci sont requis. C'est une bonne opportunité pour utiliser votre [Sac de billes]. Enfuyez-vous après avoir tué le premier << Paladin
    >>Rappelez-vous que vous ne pouvez pas attaquer après avoir lancé [Protection Divine] << Paladin
    .turnin 45 >> Rendez la quête La destinée de Rolf
    .accept 71 >> Acceptez la quête Faire son rapport au garde Thomas
step << !Paladin
    #label Prowlers
    .goto 1429/0,-1234.31,-9224.180
    >>Cliquez sur le |cRXP_PICK_Rolf's corpse|r sur le sol
    >>|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Murloc Foragers|r vont lancer|r [Boire une potion mineure] qui les soignera de 61-68 points de vie
    >>Lancez [Rénovation] et [Mot de pouvoir : Bouclier] |cRXP_WARN_puis remontez votre barre de mana à fond. Engagez les 2 |cRXP_ENEMY_Murlocs|r devant les huttes, écartez-vous, tuez-en un rapidement. Enfuyez-vous après en avoir tué un, puis tuez l'autre|r << Priest
    >>Engagez les 2 |cRXP_ENEMY_Murlocs|r devant les huttes, sortez et lancez [Métamorphone] sur l'un des deux avant de tuer l'autre. Tuez celui qui est Métamorphosé ensuite << Mage
    >>Gardez 100 points de rage. Engagez les 2 |cRXP_ENEMY_Murlocs|r devant les huttes, écartez-vous et maintenez [Brise-genou] sur l'un des deux avant de tuer l'autre. Utilisez le [Sac de billes] sur celui que vous tuez. Enfuyez-vous de celui que vous avez ralenti après avoir tué le premier << Warrior
    >>Engagez les 2 |cRXP_ENEMY_Murlocs|r devant les huttes, écartez-vous et concentrez-vous sur l'un des deux. Utilisez [Évasion] une fois qu'ils vous attaquent tous les deux. C'est une bonne opportunité pour utiliser votre [Sac de billes]. Enfuyez-vous après avoir tué le premier << Rogue
    >>Engagez les 2 |cRXP_ENEMY_Murlocs|r devant la hutte, écartez-vous et maintenez [Peur] sur l'un des deux, et essayez de maintenir vos DoTs sur les deux << Warlock
    .turnin 45 >> Rendez la quête La destinée de Rolf
    .accept 71 >> Acceptez la quête Faire son rapport au garde Thomas
step
    #optional
    #label WolfMeatCooking6
    #completewith BundleOT
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>Tuez les |cRXP_ENEMY_Rôdeurs|r. Dépouillez-les pour leur |T133970:0|t|cRXP_LOOT_[Viandes de loup maigre]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires WolfMeatCooking6
    #completewith BundleOT
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>Tuez les |cRXP_ENEMY_Rôdeurs|r. Dépouillez-les pour leur |T133970:0|t|cRXP_LOOT_[Viandes de loup maigre]|r
    >>|cRXP_WARN_Ne changez pas votre route pour le faire maintenant. Tuez et dépouillez simplement tous les loups que vous rencontrez|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Prowler
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #completewith BundleOT
    >>Tuez les |cRXP_ENEMY_Prowlers|r et les |cRXP_ENEMY_Young Forest Bears|r
    >>|cRXP_WARN_Tuez en priorité tous les |cRXP_ENEMY_Young Forest Bears|r que vous voyez|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    #loop
    .goto 1429/0,-1257.91,-9216.77,0
    .goto 1429/0,-1246.46,-9329.03,0
    .goto 1429/0,-1362.03,-9309.59,0
    .goto 1429/0,-1257.91,-9216.77,40,0
    .goto 1429/0,-1271.79,-9186.68,40,0
    .goto 1429/0,-1230.14,-9150.34,40,0
    .goto 1429/0,-1271.10,-9147.10,40,0
    .goto 1429/0,-1271.79,-9186.68,40,0
    .goto 1429/0,-1257.91,-9216.77,40,0
    .goto 1429/0,-1232.92,-9251.950,40,0
    .goto 1429/0,-1246.46,-9329.03,40,0
    .goto 1429/0,-1249.58,-9362.13,40,0
    .goto 1429/0,-1285.33,-9365.14,40,0
    .goto 1429/0,-1296.09,-9389.44,40,0
    .goto 1429/0,-1338.09,-9331.11,40,0
    .goto 1429/0,-1354.05,-9354.26,40,0
    .goto 1429/0,-1362.03,-9309.59,40,0
    .goto 1429/0,-1302.68,-9309.12,40,0
    .goto 1429/0,-1257.91,-9216.77,40,0
    .goto 1429/0,-1354.05,-9354.26,40,0
    .goto 1429/0,-1362.03,-9309.59,40,0
    >>Ramassez les |cRXP_LOOT_Bundles of Wood|r sur le sol, à la base des arbres
    .complete 5545,1 -- Bundle of Wood (8)
step
    #label BundleOT
    .goto 1429/0,-1289.22,-9469.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Supervisor Raelen|r
    .turnin 5545 >> Rendez la quête Un sac d'embrouilles
    .target Supervisor Raelen
step
    #xprate <1.5 << !Warlock
    .goto 1429/0,-1222.40,-9531.76
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sara Timberlain|r
    .accept 83 >> Acceptez la quête Articles rouges en lin
    .target Sara Timberlain
step
    #optional
    #label WolfMeatCooking7
    #completewith DeliverStart
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>Tuez les |cRXP_ENEMY_Rôdeurs|r. Dépouillez-les pour leur |T133970:0|t|cRXP_LOOT_[Viandes de loup maigre]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires WolfMeatCooking7
    #completewith DeliverStart
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>Tuez les |cRXP_ENEMY_Rôdeurs|r. Dépouillez-les pour leur |T133970:0|t|cRXP_LOOT_[Viandes de loup maigre]|r
    >>|cRXP_WARN_Ne changez pas votre route pour le faire maintenant. Tuez et dépouillez simplement tous les loups que vous rencontrez|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Prowler
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #completewith WaterloggedToolbox
    >>Tuez les |cRXP_ENEMY_Prowlers|r et les |cRXP_ENEMY_Young Forest Bears|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear

step
    .goto 1429/0,-1119.7708,-9603.7687
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormin Pelford|r
    .accept 91733 >> Acceptez la quête En aval
    .target Ormin Pelford
step
    >>Ramassez la |cRXP_PICK_Scie détrempée|r au sol
    .complete 91733,2 -- Waterlogged Saw 1/1
    .goto 1429,74.3,76.4
step
    >>Ramassez la |cRXP_PICK_Hache détrempée|r au sol
    .complete 91733,1 -- Waterlogged Axe 1/1
    .goto 1429,76.7,82.5
step
    #label WaterloggedToolbox
    >>Ramassez la |cRXP_PICK_Boîte à outils détrempée|r au sol
    .complete 91733,3 -- Waterlogged Toolbox 1/1
    .goto 1429,77.3,86.8
step
    .group 3
    .goto 1429/0,-1119.800,-9931.300
    >>Tuez |cRXP_ENEMY_Coassie|r. Dépouillez-le pour la |T134169:0|t[|cRXP_LOOT_Tête de Coassie|r]
    .use 247826 >> |cRXP_WARN_Utilisez la|r |T134169:0|t[|cRXP_LOOT_Tête de Coassie|r] |cRXP_WARN_pour lancer une quête|r
    >>|cRXP_WARN_Il s'agit d'un élite de niveau 11. Passez cette étape si vous n'arrivez pas à le tuer|r
    .collect 247826,1,91740,1 -- Croaky's Head (1)
    .accept 91740 >>Acceptez la quête La tête de Coassie
    .mob Croaky
step
    #loop
    .goto 1429,77.499,74.518,0
    .goto 1429,80.496,78.223,0
    .goto 1429,87.342,63.763,0
    .goto 1429,77.499,74.518,55,0
    .goto 1429,77.222,77.499,55,0
    .goto 1429,78.483,79.323,55,0
    .goto 1429,80.496,78.223,55,0
    .goto 1429,81.434,76.695,55,0
    .goto 1429,87.145,69.922,55,0
    .goto 1429,87.342,63.763,55,0
    >>Tuez les |cRXP_ENEMY_Prowlers|r et les |cRXP_ENEMY_Young Forest Bears|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear

step
    #completewith Level9Grind << Warlock/Warrior/Rogue
    #completewith DefiasBandits << !Warlock !Warrior !Rogue
    >>Tuez les |cRXP_ENEMY_Defias Bandits|r. Dépouillez-les pour leur [|cRXP_LOOT_Westfall Deed|r]
    .use 1972>>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Westfall Deed|r] pour commencer la quête|r
    >>Le [|cRXP_LOOT_Westfall Deed|r] ne tombe que très rarement. Ignorez cette étape si vous n'arrivez pas à l'avoir
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> Acceptez la quête Titre de propriété de Froncebouille
step
    #xprate <1.5 << !Warlock
    #completewith next
    >>Tuez les |cRXP_ENEMY_Defias Bandits|r. Dépouillez-les pour leur |cRXP_LOOT_Red Linen Bandanas|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step
    #label PrincessC
    .goto 1429/0,-869.87,-9768.10
    >>Tuez |cRXP_ENEMY_Princess|r. Dépouillez-la pour son |cRXP_LOOT_Collar|r
    >>|cRXP_ENEMY_Princesse|r |cRXP_WARN_ramènera avec elle ses deux|r |cRXP_ENEMY_Entourage porcin|r
    >>|cRXP_ENEMY_Princess|r utilisera aussi [Assaut fulgurant] qui inflige de lourd dégâts
    >>Gardez 100 points de rage avant d'engager |cRXP_ENEMY_Princess|r << Warrior
    >>|cRXP_WARN_Soyez sûrs que [Évasion] soit prêt. Si vous avez du mal, vous pouvez utiliser la barrière avec des Armes de Jet, elle n'arrivera pas à vous toucher et vous pourrez gagner du temps << Rogue
    >>Soyez prêt à utiliser une [Potion de soins mineure]
    .link https://www.youtube.com/watch?v=GRrXOV-UvD4 >> Cliquez ici pour un exemple vidéo << !Warrior
    .complete 88,1 --Collect Brass Collar (x1)
    .mob Princess
step
    #label DefiasBandits
    >>Tuez les |cRXP_ENEMY_Defias Bandits|r. Dépouillez-les pour leur |cRXP_LOOT_Red Linen Bandanas|r
    .goto 1429/0,-911.52,-9735.70,60,0
    .goto 1429/0,-828.22,-9733.39,60,0
    .goto 1429/0,-831.69,-9823.65,60,0
    .goto 1429/0,-921.93,-9812.08,60,0
    .goto 1429/0,-911.52,-9735.70,60,0
    .goto 1429/0,-828.22,-9733.39,60,0
    .goto 1429/0,-831.69,-9823.65,60,0
    .goto 1429/0,-921.93,-9812.08,60,0
    .goto 1429/0,-911.52,-9735.70,60,0
    .goto 1429/0,-828.22,-9733.39,60,0
    .goto 1429/0,-831.69,-9823.65,60,0
    .goto 1429/0,-921.93,-9812.08,60,0
    .goto 1429/0,-869.87,-9768.10
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Thomas|r
    .target Guard Thomas
    .goto 1429/0,-1032.06,-9610.23
    .turnin 52 >> Rendez la quête Protéger la frontière
    .turnin 71 >> Rendez la quête Faire son rapport au garde Thomas
    .accept 39 >> Acceptez la quête Remettre le rapport de Thomas
    .accept 109 >> Acceptez la quête Aller voir Gryan Roidemantel
    .xp <9,1
step
    #label DeliverStart
    .goto 1429/0,-1032.06,-9610.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Thomas|r
    .turnin 52 >> Rendez la quête Protéger la frontière
    .turnin 71 >> Rendez la quête Faire son rapport au garde Thomas
    .accept 39 >> Acceptez la quête Remettre le rapport de Thomas
    .target Guard Thomas
step
    .goto 1429/0,-1119.7708,-9603.7687
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormin Pelford|r
    .turnin 91733 >> Rendez la quête En aval
    .target Ormin Pelford
step << Warlock/Warrior/Rogue/Hunter
    .isQuestNotComplete 91740
	.goto 1429/0,-877.85,-9778.98
    .xp 9+3510 >> Monter votre expérience jusqu'à 3510+/6500xp << Warlock/Hunter
    .xp 9+3420 >> Monter votre expérience jusqu'à 3420+/6500xp << Warrior/Rogue
step << Warlock/Warrior/Rogue/Hunter
    .isQuestComplete 91740
    #label Level9Grind
	.goto 1429/0,-877.85,-9778.98
    .xp 9+2670 >> Montez votre expérience jusqu'à 2670+/6500xp << Warlock/Hunter
    .xp 9+2580 >> Montez votre expérience jusqu'à 2580+/6500xp << Warrior/Rogue
step << !Warlock
    #season 0,1 << Rogue
    #softcore
    #label EVDeathskip
    #completewith RedridgeS
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
    .zoneskip Redridge Mountains
    .xp >10,1 -- shows to 9 and under
--XX not worth deathskipping as a warlock due to having to resumm pet
step
    #xprate <1.5 << !Warlock
    #optional << Warlock
    .goto 1429/0,-1222.40,-9531.76
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 83 >> Rendez la quête Articles rouges en lin
    .target Sara Timberlain
    .isQuestComplete 83
step
    #optional
    #completewith next
    .subzone 798 >> Voyagez à la tour de Crête
step
    #optional
    .isQuestComplete 91740
    .goto 1429/0,-1406.200,-9775.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Merell Ross::248277|r
    .target Merell Ross::248277
    .turnin 91740 >>Rendez la quête La tête de Coassie
step << !Warlock
    #optional
    #label WolfMeatCooking8
    #requires EVDeathskip
    #completewith RedridgeS
    .goto 1429,84.448,72.486,0
    .goto 1429,88.611,71.379,0
    .goto 1429,89.657,75.373,0
    .goto 1429,87.250,75.853,0
    >>Tuez les |cRXP_ENEMY_Rôdeurs|r. Dépouillez-les pour leur |T133970:0|t|cRXP_LOOT_[Viandes de loup maigre]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step << !Warlock
    #optional
    #requires WolfMeatCooking8
    #completewith RedridgeS
    .goto 1429,84.448,72.486,0
    .goto 1429,88.611,71.379,0
    .goto 1429,89.657,75.373,0
    .goto 1429,87.250,75.853,0
    >>Tuez les |cRXP_ENEMY_Rôdeurs|r. Dépouillez-les pour leur |T133970:0|t|cRXP_LOOT_[Viandes de loup maigre]|r
    >>|cRXP_WARN_Ne changez pas votre route pour le faire maintenant. Tuez et dépouillez simplement tous les loups que vous rencontrez|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Prowler
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step << !Warlock
    #label RedridgeS
    .goto 1433/0,-1948.56,-9582.75
    .zone Redridge Mountains >> Voyagez vers Les Carmines
step << !Warlock
    #optional
    .goto 1433/0,-1906.400,-9606.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Parker|r
    .accept 244 >> Acceptez la quête Des gnolls encombrants
    .target Guard Parker
    .xp <11,1
step << !Warlock
    #softcore
    #completewith RRFP
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
    .xp >10,1 -- shows to 9 and under
step << !Warlock
    #hardcore
    #optional
    #completewith RRFP
    .goto 1433/0,-1974.20,-9577.07,15,0
    .goto 1433/0,-2077.18,-9608.42,25,0
    .goto 1433/0,-2212.64,-9558.570,25 >>|cRXP_WARN_ATTENTION: Restez vers la route principale et évitez tous les mobs à proximité sur la route|r
step << !Warlock
    #optional
    .goto 1433/0,-2237.93,-9443.60
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Feldon|r
    .turnin 244 >> Rendez la quête Des gnolls encombrants
    .target Deputy Feldon
    .isOnQuest 244
    .xp <11,1
step << !Warlock
    #season 0,1 << Paladin
    #label RRFP
    .goto 1433/0,-2234.900,-9435.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Prenez le chemin de vol des Carmines
    .target Ariena Stormfeather
step
    #optional
    #completewith CollectKelp
    .hs >> Utilisez votre Pierre de foyer pour revenir au Comté-de-l'or
step << Warrior/Rogue
    #optional
    #completewith Escape
    +|cRXP_WARN_Faites attention à votre argent, vous devriez essayer d'économiser 32s 8c pour Hurlevent plus tard|r << Rogue
    +|cRXP_WARN_Faites attention à votre argent, vous devriez essayer d'économiser 31s 85c pour Forgefer plus tard|r << Warrior
    >>|cRXP_WARN_Vous recevrez 16s 50c en rendant les quêtes d'ici là|r << Rogue
    >>|cRXP_WARN_Vous recevrez 18s 25c en rendant les quêtes d'ici là|r << Warrior
    .money >0.50
--XX 1s 10c flight to SW, 20s 23c cutlass, 10s 1h sword, 30c/75c level 3/11 thrown - Rogue
--XX 1s 10c flight to SW, 10s 2h sword, 10s 2h mace, 10s thrown, 30c/75c level 3/11 thrown, 81c mining pick - Warrior
--XX 7s from 39, 3.5s from 76, 3.5s from 61, 2.5s from 109, 1.75 from 6281 (warrior)
step
    #label CollectKelp
    .goto 1429/0,31.92,-9460.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_William Pestle|r
    .turnin 112 >> Rendez la quête À la recherche du varech
    .timer 9,À la recherche du varech RP
    .accept 114 >> Acceptez la quête La fuite
    .target William Pestle
step << Warrior/Rogue
    #optional
    #completewith next << Warrior
    #completewith RogueOptTrain << Rogue
    .goto 1429/0,12.52,-9479.85,9 >> Montez en haut des escaliers dans l'auberge
step << Warrior/Rogue
    .goto 1429/0,29.35,-9456.790
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Michelle Belle|r
    .train 3273 >> Apprenez [Premiers soins]
    .target Michelle Belle
step << Rogue
    #optional
    #label RogueOptTrain
    .goto 1429/0,12.69,-9465.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keryn Sylvius|r
    >>N'apprenez que [Ambidextrie] et [Sprint]. N'apprenez pas les autres sors pour garder votre argent pour plus tard
    .train 674 >> Apprenez [Ambidextrie]
    .train 2983 >> Apprenez [Sprint]
    .target Keryn Sylvius
    .xp <10,1
step
    .goto 1429/0,74.02,-9465.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 39 >> Rendez la quête Remettre le rapport de Thomas
    .turnin 76 >> Rendez la quête La mine Veine-de-jaspe
    .accept 239 >> Acceptez la quête Au secours de la garnison du ruisseau de l'ouest !
    .accept 59 >> Acceptez la quête Les armures de cuir et d'étoffe << Warlock
    .accept 109 >> Acceptez la quête Aller voir Gryan Roidemantel
    .target Marshal Dughan
step
    #sticky
    #label GoldshireVendor
    .goto 1429/0,94.01,-9464.8900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corina Steele|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Corina Steele
    .money >0.75
step
    .goto 1429/0,87.87,-9456.65
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Smith Argus|r
    .accept 1097 >> Acceptez la quête La quête d'Elmore
    .target Smith Argus
step
    #optional
    #completewith RoughWolfPelts
    .goto 1429/0,-81.900,-9381.800,5 >> Dirigez-vous vers |cRXP_FRIENDLY_Helene Peltskinner|r dans la maison
step
    #optional
    .goto 1429/0,-69.500,-9380.200
    .isQuestComplete 91746
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helene Peltskinner|r
    .turnin 91746 >> Rendez la quête La tête d’Ormepatte
    .target Helene Peltskinner
step
    #optional
    .goto 1429/0,-69.500,-9380.200
    .isQuestComplete 97924
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helene Peltskinner|r
    .turnin 97924 >> Rendez la quête Introduction au camping : le dépeçage
    .target Helene Peltskinner
step
    #label RoughWolfPelts
    #optional
    .goto 1429/0,-69.500,-9380.200
    .isQuestComplete 91751
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helene Peltskinner|r
    .turnin 91751 >> Rendez la quête Des peaux de loups rugueuses
    .target Helene Peltskinner
step << Warlock/Warrior/Hunter
    #requires GoldshireVendor
    #optional
    .xp 10 >> Montez jusqu'au niveau 10
step << Hunter
    .goto 1429/0,107.200,-9472.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Joséphine Carson::251507|r
    .target Josephine Carson::251507
    .accept 94792 >>Acceptez la quête Dompter la bête
    .trainer >> Apprenez vos sorts de classe
step << Hunter
    #loop
    .goto 1429/0,28.100,-9768.101,40,0
    .goto 1429/0,-36.100,-9814.500,40,0
    .use 266158 >> |cRXP_WARN_Utilisez le|r |T132164:0|t[Bâtonnet de domptage] |cRXP_WARN_sur un|r |cRXP_ENEMY_Sanglier Rochecuir|r
    .complete 94792,1 -- Tame a Rockhide Boar (1)
    .mob Rockhide Boar
step << Hunter
    .goto 1429/0,107.200,-9472.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Joséphine Carson::251507|r
    .target Josephine Carson::251507
    .turnin 94792 >>Rendez la quête Dompter la bête
    .accept 94863 >>Acceptez la quête Dompter la bête
step << Hunter
    #loop
    .goto 1429/0,-556.600,-9524.300,40,0
    .goto 1429/0,-626.200,-9430.800,40,0
    .use 266253 >> |cRXP_WARN_Utilisez le|r |T132164:0|t[Bâtonnet de domptage] |cRXP_WARN_sur un|r |cRXP_ENEMY_Loup forestier gris|r
    >>|cRXP_WARN_Assurez-vous d'avoir renvoyé votre|r |cRXP_ENEMY_Sanglier Rochecuir|r
    .complete 94863,1 -- Tame a Gray Forest Wolf (1)
    .mob Gray Forest Wolf
step << Hunter
    .goto 1429/0,107.200,-9472.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Joséphine Carson::251507|r
    .target Josephine Carson::251507
    .turnin 94863 >>Rendez la quête Dompter la bête
    .accept 94864 >>Acceptez la quête Dompter la bête
step << Hunter
    #loop
    .goto 1429/0,-14.600,-9797.800,40,0
    .goto 1429/0,-146.800,-9784.500,40,0
    .goto 1429/0,-325.300,-9844.300,40,0
    .use 266254 >> |cRXP_WARN_Utilisez le|r |T132164:0|t[Bâtonnet de domptage] |cRXP_WARN_sur un|r |cRXP_ENEMY_Jeune ours des forêts|r
    >>|cRXP_WARN_Assurez-vous d'avoir renvoyé votre|r |cRXP_ENEMY_Loup forestier gris|r
    .complete 94864,1 -- Tame a Young Forest Bear (1)
    .mob Young Forest Bear
step << Hunter
    .goto 1429/0,107.200,-9472.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Joséphine Carson::251507|r
    .target Josephine Carson::251507
    .turnin 94864 >>Rendez la quête Dompter la bête
    .accept 94793 >>Acceptez la quête Entraîner la bête
step << Hunter
    .goto 1429/0,85.000,-9475.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Isaac Chan::258930|r
    .target Isaac Chan::258930
    .turnin 94793 >>Rendez la quête Entraîner la bête
    .trainer >> Apprenez les compétences de votre familier
step << Warrior
    .goto 1429/0,109.36,-9461.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lyria Du Lac|r
    .accept 1638 >> Acceptez la quête L'entraînement du guerrier
    .trainer >> Apprenez vos sorts de classe
    .target Lyria Du Lac
    .money <0.5
step << Warrior
    #optional
    .goto 1429/0,109.36,-9461.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lyria Du Lac|r
    >>|cRXP_WARN_N'apprenez pas vos sorts de classe comme vous devez économiser votre argent pour plus tard|r
    .accept 1638 >> Acceptez la quête L'entraînement du guerrier
    .target Lyria Du Lac
step << Paladin
    #optional
    #requires GoldshireVendor
    .goto 1429/0,109.04,-9468.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Wilhelm|r
    .trainer >> Apprenez vos sorts de classe
    .target Brother Wilhelm
    .xp <10,1
    .xp >12,1
step << Paladin
    #optional
    #requires GoldshireVendor
    .goto 1429/0,109.04,-9468.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Wilhelm|r
    .accept 2998 >> Acceptez la quête Le Tome de divinité
    .trainer >> Apprenez vos sorts de classe
    .target Brother Wilhelm
    .xp <12,1
step << Warlock
    #optional
    #completewith next
    .goto 1429/0,4.78,-9467.21,10 >> Descendez les escaliers dans l'auberge
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maximillian Crowe|r et à |cRXP_FRIENDLY_Remen Marcot|r
    .trainer >> Apprenez vos sorts de classe
    .goto 1429/0,-5.36,-9472.760
    .target +Maximillian Crowe
    .accept 1685 >> Acceptez la quête Convocation de Gakin
    .goto 1429/0,-8.58,-9473.41
    .target +Remen Marcot
step << Mage/Priest
    #optional
    #requires GoldshireVendor
    #completewith next
    .goto 1429/0,18.66,-9476.47,10 >>Montez à l'étage
    .xp <10,1
step << Priest
    #optional
    #requires GoldshireVendor
    .goto 1429/0,33.14,-9460.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess Josetta|r
    .accept 5635 >> Acceptez la quête Prière du désespoir
    .trainer >> Apprenez vos sorts de classe
    .target Priestess Josetta
    .xp <10,1
step << Mage
    #optional
    #requires GoldshireVendor
    .goto 1429/0,34.28,-9471.61
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .trainer >> Apprenez vos sorts de classe
    .target Zaldimar Wefhellt
    .xp <10,1
step << skip --Rogue
    #optional
    #requires GoldshireVendor
    .goto 1429/0,12.69,-9465.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keryn Sylvius|r
    >>N'apprenez que [Ambidextrie] et [Sprint]. N'apprenez pas les autres sors pour garder votre argent pour plus tard
    .train 674 >> Apprenez [Ambidextrie]
    .train 2983 >> Apprenez [Sprint]
    .target Keryn Sylvius
--XX skip quest, not worth going inside for
step << !Warlock
    #completewith PrincessFinish
    #optional
    .abandon 59 >> Abandonnez la quête Les armures de cuir et d'étoffe

step
    .goto 1429/0,72.81,-9496.23--c:Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Remy "Two Times"|r
    .turnin 99129 >> Rendez la quête Solution anti-Murloc
    --.accept 99130 >> Accept An Enticing Offer
    .target Remy "Two Times"
    --skipping the follow up. terrible drop rates/respawn times

step << skip
    >>Ramassez les |cRXP_PICK_Pétales de brunelle|r dans les fermes de la Forêt d'Elwynn
    >>Tuez les Sangliers Brocherocs|cRXP_ENEMY_. Dépouillez-les pour leur |rFioles de sang d’animal|cRXP_LOOT_ [|r
    .complete 99130,1 -- Duskweed Petal 18/18
    .complete 99130,2 -- Vial of Animal Blood 6/6
    .mob +Stonetusk Boar
step << skip
    .goto 1429/0,72.81,-9496.23--c:Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Remy "Two Times"|r
    .turnin 99130 >> Rendez la quête Une proposition alléchante
    .accept 99131 >> Acceptez la quête Appâter pour mieux tuer
    .target Remy "Two Times"
sstep << skip
    .goto 1429,47.5,62.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jason Mathers|r
    .turnin 99131 >> Rendez la quête Appâter pour mieux tuer
    .target Jason Mathers



step
    #optional
    #label BoarMeatCooking3
    #completewith Garrison
    .goto 1429/0,406.84,-9917.23,0
    .goto 1429/0,456.65,-9825.69,0
    .goto 1429/0,279.60,-9971.76,0
    .goto 1429/0,86.93,-9952.95,0
    .goto 1429/0,225.49,-9751.09,0
    .goto 1429/0,92.38,-9548.20,0
    >>Tuez les |cRXP_ENEMY_Stonetusk Boars|r. Dépouillez-les pour leur |cRXP_LOOT_[Chunks of Boar Meat]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Stonetusk Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires BoarMeatCooking3
    #completewith Garrison
    .goto 1429/0,406.84,-9917.23,0
    .goto 1429/0,456.65,-9825.69,0
    .goto 1429/0,279.60,-9971.76,0
    .goto 1429/0,86.93,-9952.95,0
    .goto 1429/0,225.49,-9751.09,0
    .goto 1429/0,92.38,-9548.20,0
    >>Tuez les |cRXP_ENEMY_Stonetusk Boars|r. Dépouillez-les pour leur |cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|cRXP_WARN_Ne changez pas votre route pour le faire maintenant. Tuez et dépouillez simplement tous les sangliers que vous rencontrez|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Stonetusk Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #optional
    #requires GoldshireVendor
    #completewith next
    .goto 1429/0,37.61,-10014.03,50 >> Voyagez jusqu'aux vignes des Maclure
step
    #label Escape
    #requires GoldshireVendor
    .goto 1429/0,37.61,-10014.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maybell Maclure|r
    .turnin 114 >> Rendez la quête La fuite
    .target Maybell Maclure
step
    #label PrincessFinish
    .goto 1429/0,332.43,-9894.99--c:Elwynn Forest,34.660,84.482
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ma Stonefield|r
    .turnin 88,1 >> Rendez la quête Princesse doit mourir ! << Rogue/Hunter
    .turnin 88,2 >> Rendez la quête Princesse doit mourir ! << Warrior/Paladin
    .turnin 88,3 >> Rendez la quête Princesse doit mourir ! << !Rogue !Hunter !Warrior !Paladin
    .target Ma Stonefield
step << !Warrior !Warlock
    #optional
    #completewith Garrison
    .xp 9+4510 >> Monter votre expérience sur la route jusqu'à 4510+/6500xp
    .itemcount 1971,1 --Westfall Deed (1)
step << !Warrior !Warlock
    #optional
    #completewith Garrison
    .xp 9+5110 >> Monter votre expérience sur la route jusqu'à 5110+/6500xp
    .itemcount 1971,<1 --Westfall Deed (0)
step
    #optional
    #completewith Garrison
    .goto 1429/0,673.96,-9704.45,80 >> Voyagez jusqu'à la garnison du ruisseau de l'ouest
step
    #label Garrison
    #season 0,1 << Warrior/Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 239 >> Rendez la quête Au secours de la garnison du ruisseau de l'ouest !
    .accept 11 >> Acceptez la quête Une prime pour les Gnolls rivepatte << Warlock
    .goto 1429/0,694.29,-9662.790
    .target +Deputy Rainer
    >>Cliquez sur l' |cRXP_PICK_l'Affiche de recherche|r << Warlock
    .accept 176 >> Acceptez la quête On recherche : "Lardeur" << Warlock
    .goto 1429/0,683.40,-9667.93 << Warlock
step << Warlock
    #completewith GnollEnd
    >>Tuez |cRXP_ENEMY_Riverpaw Runts|r et les |cRXP_ENEMY_Riverpaw Outrunners|r. Dépouillez-les pour leur [|cRXP_LOOT_Gold Pickup Schedule|r]
    .use 1307 >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Gold Pickup Schedule|r] pour commencer la quête|r
    >>Le [|cRXP_LOOT_Gold Pickup Schedule|r] ne tombe que très rarement. Ignorez cette étape si vous n'arrivez pas à l'avoir
    >>|cRXP_ENEMY_Gruff Swiftbite|r est un mob rare, qui possède un taux de chance de tomber cet objet de 100%
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >> Acceptez la quête Le collecteur
    .unitscan Gruff Swiftbite
step << Warlock
    #completewith next
    >>Tuez les |cRXP_ENEMY_Riverpaw Runts|r et les |cRXP_ENEMY_Riverpaw Outrunners|r. Dépouillez-les pour leur |cRXP_LOOT_Armbands|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step << Warlock
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    .goto 1429/0,636.47,-10112.98
    >>Tuez |cRXP_ENEMY_Hogger|r. Dépouillez-les pour leur |cRXP_LOOT_Claw|r
    >>|cRXP_ENEMY_Hogger|r peut apparaître à de nombreux endroits
    >>Lancez [Peur] |cRXP_WARN_sur |cRXP_ENEMY_Hogger|r en boucle et utilisez vos DoTs pour le tuer|r
    >>|cRXP_WARN_Amenez-le à la tour de garde si nécessaire en vous assurant de lui avoir infligé au moins 50% des dégâts|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step << Warlock
    #label GnollEnd
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    .goto 1429/0,636.47,-10112.98
    >>Tuez les |cRXP_ENEMY_Riverpaw Runts|r et les |cRXP_ENEMY_Riverpaw Outrunners|r. Dépouillez-les pour leur |cRXP_LOOT_Armbands|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .isOnQuest 11
step << Warlock
    .goto 1429/0,694.29,-9662.790
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 11 >> Rendez la quête Une prime pour les Gnolls rivepatte
    .target Deputy Rainer
step << !Warrior !Warlock !Hunter
    #xprate <1.5
    #optional
    #completewith WestEntry
    .xp 9+4575 >> Monter votre expérience sur la route jusqu'à 4575+/6500xp
    .itemcount 1971,1 --Westfall Deed (1)
step << !Warrior !Warlock !Hunter
    #xprate <1.5
    #optional
    #completewith WestEntry
    .xp 9+5175 >> Monter votre expérience sur la route jusqu'à 5175+/6500xp
    .itemcount 1971,<1 --Westfall Deed (0)
step << !Warlock
    #optional
    #completewith WestEntry
    .abandon 123 >> Abandonnez Le collecteur
step << !Hunter
    #completewith WestEntry
    .goto 1436/0,918.42,-9851.50
    .zone Westfall >> Voyagez vers les Marches de l'Ouest
step << !Hunter
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Farmer Furlbrow|r et à |cRXP_FRIENDLY_Verna Furlbrow|r
    .accept 64 >> Acceptez la quête Le cadeau oublié
    .turnin 184 >> Rendez la quête Titre de propriété de Froncebouille
    .goto 1436/0,918.42,-9851.50
    .target +Farmer Furlbrow
    .accept 151 >> Acceptez la quête Pauvre Vieille Blanchette !
    .accept 36 >> Acceptez la quête Le ragoût de la marche de l'Ouest
    .goto 1436/0,919.47,-9853.13
	.target +Verna Furlbrow
    .isOnQuest 184
step << !Hunter
    #label WestEntry
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Farmer Furlbrow|r et à |cRXP_FRIENDLY_Verna Furlbrow|r
    .accept 64 >> Acceptez la quête Le cadeau oublié
    .goto 1436/0,918.42,-9851.50
    .target +Farmer Furlbrow
    .accept 151 >> Acceptez la quête Pauvre Vieille Blanchette !
    .accept 36 >> Acceptez la quête Le ragoût de la marche de l'Ouest
    .goto 1436/0,919.47,-9853.13
	.target +Verna Furlbrow
step << !Hunter
    #optional
    #completewith next
    +|cRXP_WARN_Ne ramassez pas les|r |T134059:0|t[|cRXP_PICK_Sacs d'avoine|r] |cRXP_WARN_pour le moment à moins que vous ayez des grands sacs de grande capacité comme vous devez gardez de l'espace libre pour les étapes à venir|r
    .isOnQuest 151
step << !Hunter
    #sticky
    #label Fields
    .goto 1436/0,1055.27,-10128.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Saldean le fermier|r
    .accept 9 >> Acceptez la quête Les champs de mort
    .target Farmer Saldean
step << !Hunter
    .goto 1436/0,1042.11,-10112.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Salma Saldean|r à l'intérieur
    .turnin 36 >> Rendez la quête Le ragoût de la marche de l'Ouest
    .accept 38 >> Acceptez la quête Le ragoût de la marche de l'Ouest
    .accept 22 >>Acceptez la quête La tourte au foie de broche-tripes
    .target Salma Saldean
step << !Hunter
    #requires Fields
    .goto 1436/0,1045.22,-10508.800
    .xp 9+5775 >> Montez votre expérience jusqu'à 5775+/6500xp
    .subzoneskip 108
step << !Hunter
    #xprate >1.49 << !Paladin
    #xprate 1.49-1.59 << Paladin
    #optional
    #requires Fields
    .goto 1436/0,1045.22,-10508.800
    .xp 9+5410 >> Monter votre expérience jusqu'à 5410+/6500xp
    .subzoneskip 108
step << Paladin
    #xprate >1.59
    #optional
    .goto 1436,48.249,46.729
    .xp 11+5360 >> Monter votre expérience jusqu'à 5360+/8800xp
--XX 625+210+85+800 = 1720 x2 = 3440
step << skip
    #softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au Gardien des âmes
    .target Gardien des âmes
-- .subzoneskip 108
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Roidemantel|r et au |cRXP_FRIENDLY_Capitaine Danuvin|r << !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r << Hunter
    .turnin 109 >> Rendez la quête Aller voir Gryan Roidemantel
    .accept 12 >> Acceptez la quête La milice du peuple << !Hunter
    .goto 1436/0,1045.22,-10508.800
    .target +Gryan Stoutmantle
    .accept 102 >> Acceptez la quête Patrouilles dans la marche de l'Ouest << !Hunter
    .goto 1436/0,1041.93,-10511.20 << !Hunter
    .target +Captain Danuvin << !Hunter
step << Human
    #optional
    .goto 1436/0,1055.27,-10128.70
    .xp 10 >> Montez jusqu'au niveau 10
step
    .goto 1436/0,1021.60,-10500.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quartermaster Lewis|r
    .accept 6181 >> Acceptez la quête Un message rapide << Human
    .target Quartermaster Lewis
    .isQuestAvailable 6181 << Human
step << Human
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .turnin 6181 >> Rendez la quête Un message rapide
    .accept 6281 >> Acceptez la quête Continuer vers Hurlevent
    .target Thor
step
    #label FlySW
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Volez à Stormwind
    .target Thor
step
    #season 0,1 << Paladin
    .goto 1453/0,625.48,-8857.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morgan Pestle|r
    .turnin 61,1 >> Rendez la quête Une cargaison pour Hurlevent
    >>Choisissez en récompense de quête les [Roquette explosive]. Elles infligent de bon dégâts et peuvent être utilisées pour "Split pull" ce qui peut être incroyablement utile
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> Cliquez ici pour un exemple vidéo du "Split pulling", cette vidéo est courte et très utile à apprendre
    .target Morgan Pestle
step << Rogue
    .goto 1453/0,596.43,-8831.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thurman Mullby|r
    >>|cRXP_BUY_Achetez-lui les|r |T135425:0|t[Couteaux de lancer effilé] |cRXP_BUY_|r
    .collect 3107,1 --Collect Keen Throwing Knife (1)
    .target Thurman Mullby
    .xp <10+5890,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
--XX 420 6281, 110 1097, 900 6661, 85 IF, 65 Gate IF, 65 refuge, 65 Amberstill
--XX (WARR ONLY): 90 1638, 90 1639, 210 1640, 420 1665
step << Rogue
    .goto 1453/0,596.43,-8831.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thurman Mullby|r
    >>|cRXP_BUY_Achetez-lui les|r |T135641:0|t[Dagues de lancer équilibrées] |cRXP_BUY_chez lui|r
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
    .target Thurman Mullby
    .xp >10+5890,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #completewith Continue
    +Équipez les [Couteau de lancer perçant]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Rogue
    #optional
    #completewith Continue
    +Équipez les [Dague de lancer équilibrée]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #optional << Warlock/Mage/Warrior/Rogue
    .goto 1453/0,613.0,-8796.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Achetez la compétence pour porter les Épées à une main et les Bâtons << Warlock/Mage
    .trainer >>Achetez la compétence pour porter des épées à une main << Rogue
    .trainer >>Apprenez la compétence Bâtons << Priest
    .trainer >>Achetez la compétence pour porter des épées à deux mains << Warrior/Paladin
    .target Woo Ping
    .money <0.2 << Warlock/Mage
    .money <0.3 << Warrior
    .money <0.55 << Rogue
step << Warlock/Mage
    .goto 1453/0,613.0,-8796.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Apprenez la compétence Bâtons
    .target Woo Ping
step << Priest/Mage/Warlock
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>|cRXP_WARN_Achetez les objets suivants si vous pouvez vous les permettre :|r
    >>|T134711:0|t[Huile de sorcier mineure] |cRXP_WARN_et|r |T133906:0|t[Sagerelle fumée]
    >>|cRXP_WARN_Regardez aussi si vous pouvez trouver une|r |T132317:0|t[Baguette] |cRXP_WARN_avec un DPS important que vous pouvez équiper maintenant/bientôt|r
    >>|cRXP_WARN_Elles vous procureront une grande augmentation de vos dégâts dans les premiers niveaux. Si vous ne désirez pas le faire ou ne pouvez pas le faire, passez cette étape.|r
    .collect 20744,1 -- Minor Wizard Oil (1)
    .collect 21072,20 -- Smoked Sagefish (20)
    .target Auctioneer Jaxon
step << Rogue
    #ssf
    #optional
    .goto 1453/0,607.38,-8790.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Achetez-lui une|r |T132402:0|t[Hachette] |cRXP_BUY_. Équipez-la plus tard lorsque vous passez au niveau 11|r
    .collect 853,1 -- Hatchet (1)
    .target Gunther Weller
    .money <0.2490
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .xp >11,1
step << Rogue
    #ssf
    #optional
    .goto 1453/0,607.38,-8790.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Achetez-lui une|r |T132402:0|t[Hachette] |cRXP_BUY_|r
    .collect 853,1 -- Hatchet (1)
    .target Gunther Weller
    .money <0.2490
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .xp <11,1
step << Rogue
    #optional
    #ah
    .goto 1453/0,607.38,-8790.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Achetez-lui une|r |T132402:0|t[Hachette] |cRXP_BUY_. Équipez-la plus tard lorsque vous passez au niveau 11|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    >>Gardez bien 6 pièces d'argent pour apprendre vos sorts plus tard
    .collect 853,1 -- Hatchet (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.2
    .xp >11,1
step << Rogue
    #optional
    #ah
    .goto 1453/0,607.38,-8790.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Achetez-lui une|r |T132402:0|t[Hachette] |cRXP_BUY_|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    >>Gardez bien 6 pièces d'argent pour apprendre vos sorts plus tard
    .collect 853,1 -- Hatchet (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.2
    .xp <11,1
step << Rogue
    #optional
    #completewith Continue
    +|cRXP_WARN_Équipez la|r |T132402:0|t[Hachette]
    .use 853
    .itemcount 853,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.2
    .xp <11,1
step
    .goto 1453/0,673.58,-8867.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aubergiste Allison|r
    .home >> Liez votre Pierre de foyer à Stormwind
    .target Innkeeper Allison
    .bindlocation 16509
step << Hunter
    .goto 1453/0,702.700,-8791.800
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lina Stover|r
    >>|cRXP_BUY_Achetez et équipez un|r [Arc courbe composite]
    .collect 2507,1
    .target Lina Stover
    .money <0.1664
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77
step << Hunter
    .goto 1453/0,702.700,-8791.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lina Stover|r
	.vendor >>|cRXP_BUY_Achetez 6 stacks de|r |T132382:0|t[Flèches pointues] |cRXP_BUY_et détruisez les |r |T132382:0|t[Flèches grossières] qu'il vous reste
    .target Lina Stover
step << Hunter
    #completewith next
    .equip 18,2507 >> Équipez l'[Arc courbe composite]
    .use 2507
    .itemcount 2507,1 --Hornwood Recurve Bow (1)


----Warlock Elwynn Voidwalker Section Start----
step << Warlock
    #optional
    #completewith GakinStart
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Rendez vous à L'Agneau Assassiné. Descendez les escaliers
step << Warlock
    #xprate >1.59
    .goto 1453/0,1029.98,-8971.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursula Deline|r
    .train 705 >> Apprenez vos sorts de classe
    .target Ursula Deline
    .xp <12,1
    .xp >14,1
step << Warlock
    #xprate >1.59
    #optional
    .goto 1453/0,1029.98,-8971.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursula Deline|r
    .train 689 >> Apprenez vos sorts de classe
    .target Ursula Deline
    .xp <14,1
step << Warlock
    #label GakinStart
    .goto 1453/0,1041.54,-8983.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1685 >> Rendez la quête Convocation de Gakin
    .accept 1688 >> Acceptez la quête Surena Caledon
    .target Gakin the Darkbinder
step << Warlock skip
    #softcore
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Spirit Healer|r en utilisant [Connexion] et en vous tenant sur le bûcher près de vous
    .target Gardien des âmes
--  .subzoneskip 87
step << Warlock
    #hardcore
    #completewith WLHoggerEnd
    .goto 1429/0,74.02,-9465.52
    .zone Elwynn Forest >> Quittez Stormwind
step << Warlock
    #completewith WLHoggerEnd
    .goto 1429/0,74.02,-9465.52
    .subzone 87 >> Voyagez vers Goldshire
step << Warlock
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    -->>|cRXP_WARN_Choose the|r |T135145:0|t[Balanced Fighting Stick]
    .turnin 176 >> Rendez la quête On recherche : "Lardeur"
    .turnin 123 >> Rendez la quête Le collecteur
    .target Marshal Dughan
    .isOnQuest 123
step << Warlock
    #label WLHoggerEnd
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    -->>|cRXP_WARN_Choose the|r |T135145:0|t[Balanced Fighting Stick]
    .turnin 176 >> Rendez la quête On recherche : "Lardeur"
    .target Marshal Dughan
step << Warlock
    #optional
    #completewith WLBandanaEnd
    +Équipez le [Bâton de combat équilibré]
    .use 6215
    .itemcount 6215,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
step << Warlock
    #optional
    #label BoarMeatCooking4
    #completewith SChoker
    .goto 1429,49.917,72.959,0
    .goto 1429,54.444,75.879,0
    .goto 1429,57.620,76.213,0
    .goto 1429,61.911,78.274,0
    .goto 1429,65.619,78.388,0
    >>Tuez les |cRXP_ENEMY_Sangliers Rochecuirs|r. Dépouillez-les pour obtenir leur |T133970:0|t|cRXP_LOOT_[Morceaux de viande de sanglier]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Rockhide Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 62 --Brackwell Pumpkin Patch
step << Warlock
    #optional
    #requires BoarMeatCooking4
    #completewith SChoker
    .goto 1429,49.917,72.959,0
    .goto 1429,54.444,75.879,0
    .goto 1429,57.620,76.213,0
    .goto 1429,61.911,78.274,0
    .goto 1429,65.619,78.388,0
    >>Tuez les |cRXP_ENEMY_Sangliers Rochecuirs|r. Dépouillez-les pour obtenir leur |T133970:0|t|cRXP_LOOT_[Morceaux de viande de sanglier]|r
    >>|cRXP_WARN_Ne changez pas votre route pour le faire maintenant. Tuez et dépouillez simplement tous les sangliers que vous rencontrez|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Rockhide Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 62 --Brackwell Pumpkin Patch
step << Warlock
    #optional
    #completewith SChoker
    .subzone 62 >> Voyagez au Champ de Potirons des Saumepuits
    .isOnQuest 1688
step << Warlock
    #optional
    #completewith SChoker
    >>Tuez les |cRXP_ENEMY_Defias Bandits|r. Dépouillez-les pour leur [|cRXP_LOOT_Westfall Deed|r]
    .use 1972>>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Westfall Deed|r] pour commencer la quête|r
    >>Le [|cRXP_LOOT_Westfall Deed|r] ne tombe que très rarement. Ignorez cette étape si vous n'arrivez pas à l'avoir
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> Acceptez la quête Titre de propriété de Froncebouille
step << Warlock
    #sticky
    #label WLBandanaEnd
    #loop
    .goto 1429/0,-911.52,-9735.70,0
    .goto 1429/0,-921.93,-9812.08,0
    .waypoint 1429/0,-911.52,-9735.70,60,0
    .waypoint 1429/0,-828.22,-9733.39,60,0
    .waypoint 1429/0,-831.69,-9823.65,60,0
    .waypoint 1429/0,-921.93,-9812.08,60,0
    >>Tuez les |cRXP_ENEMY_Defias Bandits|r. Dépouillez-les pour leur |cRXP_LOOT_Red Linen Bandanas|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step << Warlock
    #label SChoker
    .goto 1429/0,-932.35,-9806.53
    >>Tuez |cRXP_ENEMY_Surena Caledon|r. Dépouillez-la pour son |cRXP_LOOT_Choker|r
    >>|cRXP_WARN_Concentrez-vous sur le fait de tuer |cRXP_ENEMY_Surena Caledon|r très rapidement|r
    >>Lancez [Peur] |cRXP_WARN_sur |cRXP_ENEMY_Morgan the Collector|r en boucle|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step << Warlock
    #optional
    #label WolfMeatCooking9
    #completewith WlockRedridge
    .goto 1429,84.448,72.486,0
    .goto 1429,88.611,71.379,0
    .goto 1429,89.657,75.373,0
    .goto 1429,87.250,75.853,0
    >>Tuez les |cRXP_ENEMY_Rôdeurs|r. Dépouillez-les pour leur |T133970:0|t|cRXP_LOOT_[Viandes de loup maigre]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step << Warlock
    #optional
    #requires WolfMeatCooking8
    #completewith WlockRedridge
    .goto 1429,84.448,72.486,0
    .goto 1429,88.611,71.379,0
    .goto 1429,89.657,75.373,0
    .goto 1429,87.250,75.853,0
    >>Tuez les |cRXP_ENEMY_Rôdeurs|r. Dépouillez-les pour leur |T133970:0|t|cRXP_LOOT_[Viandes de loup maigre]|r
    >>|cRXP_WARN_Ne changez pas votre route pour le faire maintenant. Tuez et dépouillez simplement tous les loups que vous rencontrez|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Prowler
    .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step << Warlock
    #requires WLBandanaEnd
    .goto 1429/0,-1222.40,-9531.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 59 >> Rendez la quête Les armures de cuir et d'étoffe
    .turnin 83 >> Rendez la quête Articles rouges en lin
    .target Sara Timberlain
    .isOnQuest 83
step << Warlock
    #optional
    #requires WLBandanaEnd
    .goto 1429/0,-1222.40,-9531.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 59 >> Rendez la quête Les armures de cuir et d'étoffe
    .target Sara Timberlain
step << Warlock
    #optional
    #completewith Gnolls
    #label SoulShards
    >>|cRXP_WARN_Tuez des mobs sur la route. Assurez-vous d'avoir au moins 2|r |T134075:0|t[|cRXP_LOOT_Fragments d'âme|r] avant d'atteindre les Carmines |cRXP_WARN_en utilisant|r |T136163:0|t[|cRXP_FRIENDLY_Drain d'âme|r] sur les ennemis sur le point de mourir
    .collect 6265,2 --Soul Shard (2)
step << Warlock
    #optional
    #label WlockRedridge
    #completewith next
    .goto 1433/0,-1948.56,-9582.75
    .zone Redridge Mountains >> Voyagez vers Les Carmines
step << Warlock
    #label Gnolls
    #requires SoulShards
    .goto 1433/0,-1906.400,-9606.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Parker|r
    .accept 244 >> Acceptez la quête Des gnolls encombrants
    .target Guard Parker
step << Warlock
    .goto 1433/0,-1974.20,-9577.07,15,0
    .goto 1433/0,-2077.18,-9608.42,25,0
    .goto 1433/0,-2212.64,-9558.570,25,0
    .goto 1433/0,-2238.00,-9443.69,25 >> Voyagez jusqu'à Comté-du-Lac
    >>RESTEZ SUR LA ROUTE PRINCIPALE ET ÉVITEZ TOUTES LES CRÉATURES PROCHE SUR LA ROUTE
    .target Deputy Feldon
step << Warlock
    .goto 1433/0,-2238.00,-9443.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Feldon|r
    .turnin 244 >> Rendez la quête Des gnolls encombrants
step << Warlock
    .goto 1433/0,-2234.900,-9435.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Prenez le chemin de vol des Carmines
    .fly Stormwind >> Volez à Stormwind
    .target Ariena Stormfeather
step << Warlock
    #completewith TheBinding
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Rendez vous à L'Agneau Assassiné. Descendez les escaliers
step << Warlock
    #optional
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Apprenez vos sorts de classe
    .target Ursula Deline
    .xp <12,1
step << Warlock
    #label TheBinding
    .goto 1453/0,1041.54,-8983.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1688 >> Rendez la quête Surena Caledon
    .accept 1689 >> Acceptez la quête Le lien
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto 1453/0,1042.22,-9002.21,18,0
    .goto 1453/0,1069.1,-8991.45,18,0
    .goto 1453/0,1027.43,-8991.45,18,0
    .goto 1453/0,1042.83,-8972.68
    >>Descendez tout en bas de l'Agneau assassiné
    .cast 7728 >> Utilisez l'[Echarpe de pierre de sang] pour invoquer un |cRXP_ENEMY_Summoned Voidwalker|r
    .use 6928
step << Warlock
    .goto 1453/0,1042.83,-8972.68
    .use 6928 >> Tuez le |cRXP_ENEMY_Summoned Voidwalker|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .mob Summoned Voidwalker
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .target Gakin the Darkbinder
    .goto 1453/0,1041.54,-8983.29
    .turnin 1689 >> Rendez la quête Le lien


----Warlock Elwynn Voidwalker Section End----

step << Rogue
    #xprate <1.59
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne the Night Man|r
    >>|cRXP_WARN_N'apprenez que|r |T132147:0|t[Ambidextrie] |cRXP_WARN_et|r |T132307:0|t[Sprint]
    .train 674 >> Apprenez [Ambidextrie]
    .train 2983 >> Apprenez [Sprint]
    .target Osborne the Night Man
step << Rogue
    #xprate >1.59
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne the Night Man|r
    .train 674 >> Apprenez [Ambidextrie]
    .train 2983 >> Apprenez [Sprint]
    .target Osborne the Night Man
    .xp <10,1
    .xp >12,1
step << Rogue
    #xprate >1.59
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne the Night Man|r
    .train 1766 >> Apprenez vos sorts de classe
    .target Osborne the Night Man
    .xp <12,1
    .xp >14,1
step << Rogue
    #xprate >1.59
    #optional
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne the Night Man|r
    .trainer >> Apprenez vos sorts de classe
    .target Osborne the Night Man
    .xp <14,1
step << Rogue
    #optional
    #label StilettoDW
    #completewith Continue
    +|cRXP_WARN_Équipez le|r |T135346:0|t[Stylet] |cRXP_WARN_dans votre main gauche|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>6.7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #requires StilettoDW
    #completewith Continue
    +|cRXP_WARN_Ne vous inquiétez pas si vous n'avez pas|r |T132147:0|t[Ambidextrie] |cRXP_WARN_pour le moment, vous achèterez une arme plus tard si nécessaire|r
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.4
step << Human
    #label Continue
    .goto 1453/0,382.02,-8702.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osric Strang|r
    .turnin 6281 >> Rendez la quête Continuer vers Hurlevent
    .accept 6261 >> Acceptez la quête Dungar Grangodet << !Hunter
    .target Osric Strang
step << Warrior
    .goto 1453/0,382.86,-8612.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harry Burlguard|r
    .turnin 1638 >> Rendez la quête L'entraînement du guerrier
    .accept 1639 >> Acceptez la quête Bartleby le poivrot
    .target Harry Burlguard
step << Warrior
    .goto 1453/0,389.07,-8604.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bartleby|r
    .turnin 1639 >> Rendez la quête Bartleby le poivrot
    .accept 1640 >> Acceptez la quête Battre Bartleby
    .target Bartleby
step << Warrior
    .goto 1453/0,389.07,-8604.43
    >>Attaquez |cRXP_ENEMY_Bartleby|r. Il se rendra à 1%
    .complete 1640,1 --Beat Bartleby
    .mob Bartleby
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bartleby|r
    .target Bartleby
    .goto 1453/0,389.07,-8604.43
    .turnin 1640 >> Rendez la quête Battre Bartleby
    .accept 1665 >> Acceptez la quête Tasse de Bartleby
step << Warrior
    .goto 1453/0,382.86,-8612.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harry Burlguard|r
    .turnin 1665 >> Rendez la quête Tasse de Bartleby
    .target Harry Burlguard
step << Priest
    #optional
    #completewith Prayer
    .goto 1453/0,809.52,-8579.22,20 >> Entrez dans la Cathédrale de Stormwind
step << Priest
    #optional
    .goto 1453/0,862.89,-8519.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_High Priestess Laurena|r
    .turnin 5635 >> Rendez la quête Prière du désespoir
    .train 8092 >> Apprenez vos sorts de classe
    .target High Priestess Laurena
    .isOnQuest 5635
step << Priest
    .goto 1453/0,862.89,-8519.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_High Priestess Laurena|r
    .turnin 5634 >> Rendez la quête Prière du désespoir
    .train 8092 >> Apprenez vos sorts de classe
    .target High Priestess Laurena
    .train 13908,1
step << Priest
    #optional
    #label Prayer
    .goto 1453/0,862.89,-8519.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_High Priestess Laurena|r
    .trainer >> Apprenez vos sorts de classe
    .target High Priestess Laurena
    .train 13908,3
step
    .goto 1453/0,685.22,-8387.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 1097 >> Rendez la quête La quête d’Elmore
    .accept 353 >> Acceptez la quête Livraison pour Foudrepique
    .target Grimand Elmore
step << Warrior
    #season 0,1
    #optional
    #completewith DeeprunEnter
    +Mettez [Fracasser Armure] sur votre barre d'action pour vous assurez de l'utiliser constamment. Ce sort est beaucoup plus efficace que [Frappe Héroïque]
step << Warrior/Paladin/Rogue
    #optional
    .goto 1453/0,624.15,-8431.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kaita Deepforge|r
    .collect 2901,1,432,1 >>|cRXP_BUY_Achetez une|r [Pioche de mineur] |cRXP_BUY_à Brooke|r
    >>|cRXP_WARN_Vous apprendrez|r |T134708:0|t[Minage] |cRXP_WARN_plus tard|r
    .target Kaita Deepforge
    .train 2018,3 --Blacksmithing
--XX 81c, 1s 75c from 6281
step
    #label DeeprunEnter
    .goto 1453/0,562.300,-8385.300,20,0
    .goto 1453/0,522.000,-8352.101
    .subzone 2257 >>Entrez dans le Tram des profondeurs
    .zoneskip Ironforge
step << skip
    #optional
    #label TramCook1
    #completewith TramEnd
    >>|cRXP_WARN_Sur le tram lorsqu'il arrive :|r
    .cast 818 >>Fabriquez un [Feu de camp basique] (dans l'onglet Général de votre Grimoire)
    .usespell 818
    .zoneskip Ironforge
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << skip
    #optional
    #requires TramCook1
    #label TramCook2
    #completewith TramEnd
    >>|cRXP_WARN_Sur le tram lorsqu'il arrive :|r
    .cast 818 >>Fabriquez un [Feu de camp basique] (dans l'onglet Général de votre Grimoire)
    .usespell 818
    .zoneskip Ironforge
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << skip
    #optional
    #requires TramCook2
    #label TramCook3
    #completewith TramEnd
    >>|cRXP_WARN_Sur le tram lorsqu'il arrive :|r
    .cast 818 >>Fabriquez un [Feu de camp basique] (dans l'onglet Général de votre Grimoire)
    .usespell 818
    .zoneskip Ironforge
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << skip
    #optional
    #requires TramCook3
    #label TramCook4
    #completewith TramEnd
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les objets suivants:
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Morceau de viande de sanglier]|r en [Viande de sanglier rôtie]
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Viande de loup maigre]|r en [Viande de loup grillée]
    .usespell 2550
    .zoneskip Ironforge
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << skip
    #optional
    #requires TramCook4
    #label TramCook5
    #completewith TramEnd
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Viande de loup maigre]|r en [Viande de loup grillée]
    .usespell 2550
    .zoneskip Ironforge
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << skip
    #optional
    #requires TramCook5
    #label TramCook6
    #completewith TramEnd
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Morceau de viande de sanglier]|r en [Viande de sanglier rôtie]
    .usespell 2550
    .zoneskip Ironforge
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    #label TramEnd
    >>Prenez le Tram des profondeurs pour Ironforge
    >>Montez vos [Premiers soins] en attendant le Tram pour Ironforge si nécessaire << Rogue/Warrior/Paladin
    >>Vous aurez besoin d'un niveau de compétence en [Premiers soins] de 80 pour une quête au niveau 24 << Rogue !Dwarf
    >>Lancez [Invocation : marcheur du vide] et [Création d'une pierre de soin] en attendant le Tram pour Ironforge si nécessaire << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Monty|r sur la plateforme du milieu du côté Ironforge dans le Tram des Profondeurs
    .accept 6661 >> Acceptez la quête Chasse au rat dans les profondeurs
    .target Monty
step
    #xprate <1.59
    >>Utilisez le [Pipeau du dératiseur] |cRXP_WARN_sur les |cRXP_ENEMY_Deeprun Rats|r à l'intérieur du Tram des Profondeurs|r
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob Deeprun Rat
step
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Monty|r à l'intérieur du Tram des Profondeurs
    .turnin 6661 >> Rendez la quête Chasse au rat dans les profondeurs
    .target Monty
step
    .zone Ironforge >>Entrez dans Ironforge
    .isQuestAvailable 314
step << Warrior
    #optional
    #completewith next
    .goto 1455,67.400,84.909,15,0
    .goto 1455/0,-1234.65,-5035.67,12 >> Dirigez-vous vers |cRXP_FRIENDLY_Bilban Cléamornifles|r
step << Warrior
    .goto 1455/0,-1234.65,-5035.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bilban Tosslespanner|r
    >>|cRXP_WARN_Assurez-vous de garder 20s 70c pour plus tard|r
    .train 2687 >> Apprenez vos sorts de classe
    .target Bilban Tosslespanner
    .xp <10,1
    .xp >12,1
step << Warrior
    #optional
    #completewith next
    .goto 1455,61.552,85.636,10,0
    .goto 1455,61.356,88.398,6 >> Entrez dans le bâtiment des Marchand d'armes
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bixi Wobblebonk|r et à |cRXP_FRIENDLY_Buliwyf Stonehand|r
    .train 2567 >> Apprenez la compétence Armes de jet
    .goto 1455/0,-1205.65,-5042.12
    .target +Bixi Wobblebonk
    .train 199 >> Acheter la compétence pour porter des masses à deux mains
    .goto 1455/0,-1197.27,-5041.49
    .target +Buliwyf Stonehand
step << Warrior
    .goto 1455/0,-1206.74,-5037.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brenwyn Wintersteel|r en bas des escaliers
    >>|cRXP_BUY_Achetez des|r [Couteau de lancer perçant] |cRXP_BUY_à Brenwyn|r
    .collect 3107,1 --Collect Keen Throwing Knife (1)
    .target Brenwyn Wintersteel
    .xp <10+7405,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
--XX 420 6281, 110 1097, 900 6661, 85 IF, 65 Gate IF, 65 refuge, 65 Amberstill
--XX (WARR ONLY): 90 1638, 90 1639, 210 1640, 420 1665
step << Warrior
    #xprate <1.5
    .goto 1455/0,-1206.74,-5037.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brenwyn Wintersteel|r en bas des escaliers
    >>|cRXP_BUY_Achetez des|r [Dague de lancer équilibrée] |cRXP_BUY_à Brenwyn|r
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
    .target Brenwyn Wintersteel
    .xp >10+7405,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith Rudra
    +Équipez les [Couteau de lancer perçant]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    #optional
    #completewith Rudra
    +Équipez les [Dague de lancer équilibrée]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith next
    .goto 1455,61.356,88.398,6 >> Quittez le bâtiment des Marchand d'armes
step
    .goto 1455/0,-1152.40,-4821.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Prenez le chemin de vol de Forgefer
    .target Gryth Thurden
step << Mage/Paladin
    #optional
    #completewith next
    .goto 1455/0,-1101.87,-4864.81,30,0
    .goto 1455/0,-1062.10,-4815.100,20,0
    .goto 1455/0,-1036.48,-4804.50,20,0
    .goto 1455/0,-992.68,-4742.08,20,0
    .goto 1455/0,-928.40,-4635.61,20,0 << Paladin
    .goto 1455/0,-931.8,-4627.59,20,0 << Mage
    .goto 1455/0,-928.40,-4614.51,12 >>Voyagez vers |cRXP_FRIENDLY_Dink|r << Mage
    .goto 1455/0,-896.47,-4601.65,12 >>Voyagez vers |cRXP_FRIENDLY_Brandur Martel-de-fer|r << Paladin
step << Mage
    .goto 1455/0,-928.40,-4614.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dink|r à l'intérieur
    .train 122 >> Apprenez vos sorts de classe
    .target Dink
step << Paladin
    .goto 1455/0,-896.47,-4601.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brandur Ironhammer|r à l'intérieur
    .train 633 >> Apprenez vos sorts de classe
    .target Brandur Ironhammer
step << skip -- for dungeon route only
    .goto 1455/0,-856.69,-4841.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Firebrew|r
    .home >> Liez votre Pierre de Foyer à Ironforge
    .target Innkeeper Firebrew
    .bindlocation 1537
step
    #ah
    .goto 1455/0,-917.57,-4967.58,-1--c:Ironforge,25.800,75.500
    .goto 1455/0,-904.92,-4962.83,-1--c:Ironforge,24.200,74.600
    .goto 1455/0,-901.76,-4948.06,-1--c:Ironforge,23.800,71.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à un |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>|cRXP_BUY_Achetez des|r |cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_BUY_et/ou|r |cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_BUY_pour monter le niveau de compétence de votre|r [Cuisine] |cRXP_BUY_plus tard|r
    >>Vous aurez besoin d'un niveau de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes plus rapidement au Loch Modan très bientôt et pour augmenter votre compétence de|r |T133971:0|t[Cuisine] |cRXP_BUY_|r
    >>|T134342:0|t[Tripes de Sanglier]
    >>|T134027:0|t[Viande d'ours]
    >>|T134437:0|t[Ichor d'araignée]
    >>|T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .zoneskip Dun Morogh
    .isQuestAvailable 418
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #ah
    #optional
    .goto 1455/0,-917.57,-4967.58,-1--c:Ironforge,25.800,75.500
    .goto 1455/0,-904.92,-4962.83,-1--c:Ironforge,24.200,74.600
    .goto 1455/0,-901.76,-4948.06,-1--c:Ironforge,23.800,71.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à un |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes plus rapidement au Loch Modan très bientôt:|r
    >>|T134342:0|t[Tripes de Sanglier]
    >>|T134027:0|t[Viande d'ours]
    >>|T134437:0|t[Ichor d'araignée]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .zoneskip Dun Morogh
    .isQuestAvailable 418
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step
    .goto 1426,53.47,35.02
    >>Quittez Ironforge
    .zone Dun Morogh >> Voyagez vers Dun Morogh
--logout skip - remove if logout skips re-added
step
    .goto 1426/0,-682.300,-5489.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beldin Steelgrill::1376|r 
    .target Beldin Steelgrill::1376
    .accept 96408 >>Acceptez la quête Une visite à Dun Morogh
step
    #optional
    #label BoarMeatDunMorogh1
    #completewith Dirt
    .goto 1426,57.936,50.787,0
    >>Tuez les |cRXP_ENEMY_Elder Crag Boars|r. Dépouillez-les pour leur|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>Ils seront utilisés pour monter votre niveau de [Cuisine] plus tard
    >>Vous aurez besoin d'un niveau de 10 en [Cuisine] pour une quête à Auberdine plus tard
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Elder Crag Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires BoarMeatDunMorogh1
    #completewith Dirt
    .goto 1426,57.936,50.787,0
    >>Tuez les |cRXP_ENEMY_Elder Crag Boars|r. Dépouillez-les pour leur|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>Ils seront utilisés pour monter votre niveau de [Cuisine] plus tard
    >>Vous aurez besoin d'un niveau de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|cRXP_WARN_Ne changez pas votre route pour le faire maintenant. Tuez et dépouillez simplement tous les sangliers que vous rencontrez|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Elder Crag Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #optional
    #label Dirt
    #completewith Rudra
    .goto 1426/0,-1145.04,-5504.30,40,0
    .goto 1426/0,-1219.90,-5422.55,40 >>Montez le chemin de terre
    .isQuestAvailable 314
step
    #completewith VagashEnd
    #requires Dirt
    .goto 1426,62.778,54.591,0
    .goto 1426,62.538,46.195,0
    +|cRXP_WARN_Ramenez (Kite) |cRXP_ENEMY_Vagash|r jusqu'à|r |cRXP_FRIENDLY_Rudra|r en bas
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>CLIQUEZ ICI pour la méthode << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> Cliquez ici pour un exemple vidéo << !Mage
    .mob Vagash
step << Warrior/Rogue
    #optional
    #requires Dirt
    #completewith VagashEnd
    +Équipez les [Couteau de lancer perçant]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step
    #label Rudra
    .goto 1426/0,-1304.71,-5513.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rudra Amberstill|r
    .accept 314 >> Acceptez la quête Protection du troupeau
    .target Rudra Amberstill
step
    #label VagashEnd
    .goto 1426,62.778,54.591,0
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Tuez |cRXP_ENEMY_Vagash|r. Dépouillez-le pour sa |cRXP_LOOT_Fang|r
    >>Guidez-le (Kite) vers le garde au sud du ranch. Faites bien en sorte de lui infliger au moins 51%+ de dégâts
    >>|cRXP_WARN_Regardez bien la vidéo avant de tenter de tuer|cRXP_ENEMY_Vagash|r. Il peut être tuer en solo par n'importe quelle classe|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >> Cliquez ici pour un exemple vidéo << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> Cliquez ici pour un exemple vidéo << !Mage
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    .goto 1426/0,-1304.71,-5513.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rudra Amberstill|r
    .turnin 314 >> Rendez la quête Protection du troupeau
    .target Rudra Amberstill
step
    #optional
    #label BoarMeatDunMorogh2
    #completewith QuarryStart
    .goto 1426,66.356,51.02,0
    >>Tuez les |cRXP_ENEMY_Elder Crag Boars|r. Dépouillez-les pour leur|cRXP_LOOT_[Chunks of Boar Meat]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Large Crag Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 134 --Gol'Bolar Quarry
step
    #optional
    #requires BoarMeatDunMorogh2
    #completewith QuarryStart
    .goto 1426,66.356,51.02,0
    >>Tuez les |cRXP_ENEMY_Elder Crag Boars|r. Dépouillez-les pour leur|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|cRXP_WARN_Ne changez pas votre route pour le faire maintenant. Tuez et dépouillez simplement tous les sangliers que vous rencontrez|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Large Crag Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 134 --Gol'Bolar Quarry
step
    #label QuarryStart
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Terre-voyant Farsen|r
    .turnin -96408 >> Rendez la quête Une visite à Dun Morogh
    .accept 96392 >> Acceptez la quête Le guet de Farsen
    .target Earthseer Farsen
step
    .isOnQuest 96392
    .goto 1426/0,-1394.24,-5797.83
    .gossipoption 139831 >> Parlez au |cRXP_FRIENDLY_Terre-voyant Farsen|r pour voir sa double vie
    >>|cRXP_WARN_Vous pouvez sortir de sa Double vue dès que l'objectif se complète|r
    .target Earthseer Farsen
step
    .isOnQuest 96392
    .aura -1293681 >> |cRXP_WARN_Appuyez sur Echap pour sortir de la Double vue|r
step << skip
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Terre-voyant Farsen|r
    >>|cRXP_WARN_Vous pouvez sortir de sa Double vue dès que l'objectif se complète|r
    .complete 96392,1 -- Use Farsen's Farsight
    .skipgossip
    .target Earthseer Farsen
step
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Terre-voyant Farsen|r
    >>|cRXP_WARN_Appuyez sur Echap pour sortir de la Double vue|r
    .turnin 96392 >> Rendez la quête Le guet de Farsen
    .accept 96390 >> Acceptez la quête Étouffer le mal dans l’œuf
    .target Earthseer Farsen
step
    #optional
    .goto 1426/0,-1565.58,-5666.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cook Ghilm|r
    .train 2550 >> Apprenez [Cuisine]
    .target Cook Ghilm
step << !Human
    .goto 1426/0,-1577.16,-5671.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor >> |cRXP_BUY_Achetez des|r [Pain sorti du four] |cRXP_BUY_si nécessaire|r << Warrior/Rogue
    .vendor >> |cRXP_BUY_Achetez des|r [Pain sorti du four] |cRXP_BUY_et du|r [Lait frais] |cRXP_BUY_si nécessaire|r << !Warrior !Rogue
    .target Kazan Mogosh
    .xp >15,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senator Mehr Stonehallow|r et à |cRXP_FRIENDLY_Foreman Stonebrow|r
    .accept 433 >> Acceptez la quête Le serviteur public
    .goto 1426/0,-1579.96,-5714.73
    .target +Senator Mehr Stonehallow
    .accept 432 >> Acceptez la quête Ces satanés Troggs !
    .goto 1426/0,-1600.30,-5726.590
    .target +Foreman Stonebrow
step << Warrior/Paladin/Rogue
    .goto 1426/0,-1612.12,-5697.89
    #requires RogueWep << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dank Coupebruine|r.
    .train 2575 >>Apprenez [Minage]
    >>Il sera utilisé avec votre [Forge] pour fabriquer les [Pierre à aiguiser brute] et les [Caillou brut] pour augmenter votre dégâts des armes
    >>Si vous ne voulez pas le faire, vous pouvez passer cette étape
    .target Dank Drizzlecut
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    #completewith QuarryEnd
    .cast 2580 >> Lancez [Découverte de gisements]
    .usespell 2580
    .train 2575,3 --Mining Trained
step
    .goto 1426/0,-1679.89,-5728.88,40,0
    .goto 1426/0,-1675.95,-5597.22,25,0
    .goto 1426/0,-1679.89,-5728.88
    >>Tuez les |cRXP_ENEMY_Rockjaw Skullthumpers|r et les |cRXP_ENEMY_Rockjaw Bonesnappers|r à l'intérieur de la grotte
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob +Rockjaw Skullthumper
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob +Rockjaw Bonesnapper
step
    #label QuarryEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Foreman Stonebrow|r et à |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .turnin 432 >> Rendez la quête Ces satanés Troggs !
    .goto 1426/0,-1600.30,-5726.590
    .target +Foreman Stonebrow
    .turnin 433 >> Rendez la quête Le serviteur public
    .goto 1426/0,-1579.96,-5714.73
    .target +Senator Mehr Stonehallow
step << !Warrior !Rogue !Paladin !Hunter
    .goto 1426/0,-1577.16,-5671.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor >> |cRXP_BUY_Achetez jusqu'à 20|r [Ice Cold Milk] |cRXP_BUY_à Kazan|r
    .target Kazan Mogosh
    .xp >15,1
step
    #completewith OII
    >>Tuez les |cRXP_ENEMY_Embusqués Mâcherocs|r. Dépouillez-les pour le |T132621:0|t[|cRXP_LOOT_Baril de poudre vide|r]
    .use 268548 >> |cRXP_WARN_Utilisez le|r |T132621:0|t[|cRXP_LOOT_Baril de poudre vide|r] |cRXP_WARN_pour lancer une quête|r
    >>|cRXP_WARN_NOTE: Cet objet a très peu de chance de tomber. Passez cette étape si vous ne le trouvez pas après en avoir fini avec les|r |cRXP_ENEMY_Espions Sombrefers|r
    .collect 268548,1,95213,1 -- Empty Powder Keg (1)
    .accept 95213 >> Acceptez la quête Poudre explosive volée
    .mob Rockjaw Ambusher
step
    .goto 1426/0,-2009.87,-5860.22,40,0
    .goto 1426/0,-2034.49,-5922.60
    >>Tuez les |cRXP_ENEMY_Espions Sombrefers|r. Dépouillez-les pour la |T237385:0|t[|cRXP_LOOT_Carte sombrefer|r]
    .use 274268 >>|cRXP_WARN_Utilisez la|r |T237385:0|t[|cRXP_LOOT_Carte sombrefer|r] |cRXP_WARN_pour lancer une quête|r
    .complete 96390,1 -- Dark Iron Spy slain 10/10
    .collect 274268,1,96391,1 -- Dark Iron Map (1)
    .accept 96391 >> Acceptez la quête La carte souterraine
    .mob Dark Iron Spy
step
    #label OII
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Terre-voyant Farsen|r
    .turnin 96390 >> Rendez la quête Étouffer le mal dans l’œuf
    .turnin 96391 >> Rendez la quête La carte souterraine
    .accept 96393 >> Acceptez la quête Incursion dans le Vieux Forgefer
    .target Earthseer Farsen
step
    .isOnQuest 95213
    .goto 1426/0,-1606.02,-5676.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Responsable Thesten|r
    .turnin 95213 >> Rendez la quête Poudre explosive volée
    .accept 95214 >> Acceptez la quête Poudre explosive volée
    .target Quarrymaster Thesten
step
    .isQuestTurnedIn 95213
    .goto 1426/0,-1606.02,-5676.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Responsable Thesten|r
    .accept 95214 >> Acceptez la quête Poudre explosive volée
    .target Quarrymaster Thesten
step
    .isOnQuest 95214
    #loop
    .goto 1426/0,-1881.82,-5735.45,50,0
    .goto 1426/0,-1832.57,-5571.28,50,0
    .goto 1426/0,-1724.22,-5636.95,50,0
    .goto 1426/0,-1881.82,-5735.45,0
    .goto 1426/0,-1832.57,-5571.28,0
    .goto 1426/0,-1724.22,-5636.95,0
    >>Tuez les |cRXP_ENEMY_Embusqués Mâcherocs|r. Dépouillez-les pour leur |cRXP_LOOT_Poudre explosive volée|r
    .complete 95214,1 -- Stolen Blasting Powder (16)
    .mob Rockjaw Ambusher
step
    .isQuestComplete 95214
    .goto 1426/0,-1606.02,-5676.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Responsable Thesten|r
    .turnin 95214 >> Rendez la quête Poudre explosive volée
    .target Quarrymaster Thesten
step
    .goto 1426/0,-2197.02,-5279.07,45,0
    .goto 1426/0,-2329.60,-5163.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .accept 419 >> Acceptez la quête Le pilote perdu
    .target Pilot Hammerfoot
step
    .goto 1426/0,-2121.76,-5064.70
    >>Cliquez sur le |cRXP_PICK_Dwarven Corpse|r sur le sol
    .turnin 419 >> Rendez la quête Le pilote perdu
    .accept 417 >> Acceptez la quête La revanche du pilote
step
    .goto 1426/0,-2087.19,-5096.51
    >>Tuez |cRXP_ENEMY_Mangeclaw|r. Dépouillez-le pour sa |cRXP_LOOT_Claw|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step
    #label Revenge
    .goto 1426/0,-2329.60,-5163.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .turnin 417,1 >> Rendez la quête La revanche du pilote << Rogue
    .turnin 417 >> Rendez la quête La revanche du pilote << !Rogue
    .target Pilot Hammerfoot
step << Rogue
    #optional
    #completewith next
    +|cRXP_WARN_Équipez la|r |T135641:0|t[Dague d'artisan] |cRXP_WARN_dans votre main gauche|r
    .use 2218
    .itemcount 2218,1
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step
    #label enterloch
    .goto 1426/0,-2354.62,-4898.20,25 >>Allez à travers le tunnel pour le Loch Modan
    .zoneskip Loch Modan
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
<< Alliance
#group RestedXP Guide Forever (A)
#subgroup Guide Speedrun 1-20
--#groupid RXP-SRGCE-A1
#name 11-13 Loch Modan
#displayname 13-15 Loch Modan << SoD
#next 13-15 Marche de l’Ouest << !Hunter
#next 14-16 Sombrivage << Hunter
#defaultfor Human

step -- dont delete
    #label NormalRouteStart
step
    #optional
    #completewith next
    .goto 1432/0,-2659.45,-4822.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>Vendez et réparez
    .target Gothor Brumn
step
    .goto 1432/0,-2676.82,-4825.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Mountaineer Stormpike|r
    >>|cRXP_WARN_N'acceptez pas encore la quête La mission de Foudrepique|r
    .turnin 353 >> Rendez la quête Livraison pour Foudrepique
    .accept 307 >> Acceptez la quête Bas les pattes !
    .target Mountaineer Stormpike
step
    #optional
    #label BoarMeatLoch1
    #completewith ThelsamarFirst
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Tuez  les|cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>Ils seront utilisés pour monter votre niveau de [Cuisine] plus tard
    >>Vous aurez besoin d'un niveau de 10 en [Cuisine] pour une quête à Auberdine plus tard
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Mountain Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 144 --Thelsamar
step
    #optional
    #requires BoarMeatLoch1
    #completewith ThelsamarFirst
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Tuez  les|cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>Ils seront utilisés pour monter votre niveau de [Cuisine] plus tard
    >>Vous aurez besoin d'un niveau de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|cRXP_WARN_Ne changez pas votre route pour le faire maintenant. Tuez et dépouillez simplement tous les sangliers que vous rencontrez|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 144
step
    #optional
    #completewith ThelsamarFirst
    >>Tuez les |cRXP_ENEMY_Ancien ours noir|r. Dépouillez-les pour leur |T134027:0|t|cRXP_LOOT_Viande d'ours|r
    >>Tuez les |cRXP_ENEMY_Sangliers des montagnes|r. Dépouillez-les pour leur |T134342:0|t|cRXP_LOOT_Tripes de sanglier|r
    >>Tuez les |cRXP_ENEMY_Rôdeuses des forêts|r. Dépouillez-les pour leur |T134437:0|t|cRXP_LOOT_Ichor d'araignée|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .subzoneskip 144
step
    #optional
    #completewith next
    #label Thelsamar
    .subzone 144 >> Voyagez à Thelsamar
    .isQuestAvailable 1339
step
    #requires Thelsamar
    #completewith next
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_FRIENDLY_Mountaineer Kadrell|r patrouille le long de la route pour Thelsamar
    .accept 416 >> Acceptez la quête Chasse au rat
    .accept 1339 >> Acceptez la quête La mission du Montagnard Foudrepique
    .target Mountaineer Kadrell
step
    .goto 1432/0,-3003.30,-5376.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grenhild Sombreserre|r
    .accept 86667 >> Acceptez la quête Enneigement
    .target Grenhild Darktalon
step
    #label ThelsamarFirst
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vidra Hearthstove|r
    .accept 418 >> Acceptez la quête Les boudins de Thelsamar
    .target Vidra Hearthstove
step
    #optional
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vidra Hearthstove|r
    .turnin 418 >> Rendez la quête Les boudins de Thelsamar
    .target Vidra Hearthstove
    .isQuestComplete 418
step
    #optional
    #completewith StormpikeO
    .abandon 1338 >> Abandonnez La mission de Stormpike. Celle-ci sert à débloquer La mission du Montagnard Stormpike qui se rend pour 550xp
step
    #completewith next
    .goto 1432/0,-2952.46,-5381.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yanni Stoutheart|r
    .vendor 1682 >> |cRXP_BUY_Achetez jusqu'à 2|r [Petite sacoche marron] |cRXP_BUY_à Yanni si nécessaire|r
    .target Yanni Stoutheart
step << !Warrior !Rogue !Hunter
    .goto 1432/0,-2973.90,-5377.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Hearthstove|r
    .vendor 6734 >> |cRXP_BUY_Achetez des|r |T132815:0|t[Lait glacé] |cRXP_BUY_. Essayez d'en avoir environ 20|r
    .target Innkeeper Hearthstove
    .xp >15,1
step
    #label StormpikeO
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto 1432/0,-3006.61,-5259.57,15,0
    .goto 1432/0,-3020.95,-5282.02,15,0
    .goto 1432/0,-3023.44,-5326.90,15,0
    .goto 1432/0,-3007.99,-5337.390,15,0
    .goto 1432/0,-2964.41,-5349.90,15,0
    .goto 1432/0,-2894.90,-5401.96,20,0
    .goto 1432/0,-3007.99,-5337.390
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_FRIENDLY_Mountaineer Kadrell|r patrouille le long de la route pour Thelsamar
    .accept 416 >> Acceptez la quête Chasse au rat
    .accept 1339 >> Acceptez la quête La mission du Montagnard Foudrepique
    .target Mountaineer Kadrell
step
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >> Prenez le chemin de vol de Thelsamar
    .target Thorgrum Borrelson
step
    #optional
    #completewith next
    .goto 1432/0,-2677.26,-5778.34,10,0
    .goto 1432/0,-2648.30,-5876.75,15 >> |cRXP_WARN_Montez le chemin de terre et ensuite descendez dans le bunker|r
step
    .goto 1432/0,-2634.59,-5842.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Captain Rugelfuss|r dans le bunker
    .accept 267 >> Acceptez la quête La menace trogg
    .target Captain Rugelfuss
step
    #label DefenseStart
    .goto 1432/0,-2602.54,-5832.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .accept 224 >> Acceptez la quête À la défense des terres du roi
    .target Mountaineer Cobbleflint
step
    #completewith next
    .goto 1432/0,-2534.38,-5648.28,5 >>Allez jusqu'au tas de neige au sol juste à l'extérieur du tunnel de la porte sud
step
    .goto 1432/0,-2534.38,-5648.28
    .use 279380 >> |cRXP_WARN_Utilisez le|r |T1387609:0|t[Bocal en céramique] |cRXP_WARN_en vous plaçant sur le tas de neige pour récupérer le|r |T1387609:0|t[Bocal de neige]
    .complete 86667,1 -- Jar of Snow 1/1
step
    #optional
    #label BoarMeatLoch2
    #completewith SilverStream
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Tuez  les|cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur|cRXP_LOOT_[Chunks of Boar Meat]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Mountain Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    #optional
    #requires BoarMeatLoch2
    #completewith SilverStream
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Tuez  les|cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|cRXP_WARN_Ne changez pas votre route pour le faire maintenant. Tuez et dépouillez simplement tous les sangliers que vous rencontrez|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    #optional
    #sticky
    #label BoarBearSpider
    >>Tuez les |cRXP_ENEMY_Ancien ours noir|r. Dépouillez-les pour leur |T134027:0|t|cRXP_LOOT_Viande d'ours|r
    >>Tuez les |cRXP_ENEMY_Sangliers des montagnes|r. Dépouillez-les pour leur |T134342:0|t|cRXP_LOOT_Tripes de sanglier|r
    >>Tuez les |cRXP_ENEMY_Rôdeuses des forêts|r. Dépouillez-les pour leur |T134437:0|t|cRXP_LOOT_Ichor d'araignée|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    #completewith MinerGear
    >>Tuez les |cRXP_ENEMY_Rats des tunnels|r. Dépouillez-les pour leur |T133854:0|t|cRXP_LOOT_Oreilles de Rat des tunnels|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    .goto 1432/0,-3146.73,-4837.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Norric Lochthane|r
    .turnin 86667 >> Rendez la quête Enneigement
    .target Norric Lochthane
step
    #requires BoarBearSpider
    #label SilverStream
    #completewith MinerGear
    .goto 1432/0,-2972.96,-4835.187,20 >> Entrez dans la Mine du Ru d'argent, tuez les |cRXP_ENEMY_Kobolds|r pour leurs |T133854:0|t[|cRXP_LOOT_Oreilles|r] sur la route
step
    #label MinerGear
    .goto 1432/0,-2984.82,-4902.33
    >>Ouvrez les |cRXP_PICK_Miners' League Crates|r. Récupérez les |cRXP_LOOT_Miners' Gear|r
    >>|cRXP_WARN_Les |cRXP_PICK_Miners' League Crates|r peuvent se trouver tout au long de la Mine|r
    >>|cRXP_WARN_Vous pourrez faire cette quête à un niveau supérieur si vous souhaitez la passer pour l'instant|r
    .complete 307,1 -- Miners' Gear (4)
step << Paladin/Warrior
    #label BuyMace
    .goto 1432/0,-3176.16,-4669.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nillen Andemar|r
    >>|cRXP_BUY_Achetez-lui|r |T133476:0|t[Lourde masse à pointes] |cRXP_BUY_OU le|r |T133053:0|t[Maillet en bois de fer] |cRXP_BUY_s'ils sont disponibles|r
    >>|cRXP_WARN_Si vous ne pouvez pas vous le permettre, alors gagnez de l'argent en tuant les |cRXP_ENEMY_Rats des tunnels|r à proximité jusqu'à ce que vous en ayez assez|r
    >>|cRXP_WARN_Faites cela rapidement comme un autre joueur pourrait l'acheter avant vous|r
    >>|cRXP_WARN_Si vous ne souhaitez pas le faire, passez cette étape|r
    .collect 4778,1,307,1 --Heavy Spiked Mace (1)
    .collect 4777,1,307,1 --Ironwood Maul (1)
    .target Nillen Andemar
    .itemcount 4778,<1 --Heavy Spiked Mace (<1)
    .itemcount 4777,<1 --Ironwood Maul (<1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Paladin/Warrior
    #optional
    #completewith StormpikeDelivery
    +|cRXP_WARN_Équipez la|r |T133476:0|t[Lourde masse à pointes]
    .use 4778
    .itemcount 4778,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <14,1
step << Paladin/Warrior
    #optional
    #completewith StormpikeDelivery
    +|cRXP_WARN_Équipez le|r |T133053:0|t[Maillet en bois de fer]
    .use 4777
    .itemcount 4777,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .xp <13,1
step
    .goto 1432/0,-2684.71,-5042.87,0
    .goto 1432/0,-2712.57,-5286.61,0
    .goto 1432/0,-3033.92,-4797.29,0
    .goto 1432/0,-3033.92,-4797.29,50,0
    .goto 1432/0,-2972.41,-4796.92,50,0
    .goto 1432/0,-2684.71,-5042.87,50,0
    .goto 1432/0,-2712.57,-5286.61,50,0
    .goto 1432/0,-3033.92,-4797.29,50,0
    .goto 1432/0,-2972.41,-4796.92
    >>Tuez les |cRXP_ENEMY_Rats des tunnels|r. Dépouillez-les pour leur |T133854:0|t|cRXP_LOOT_Oreilles|r
    >>|cRXP_WARN_Assurez-vous d'avoir 10|r |T132889:0|t[Etoffes de lin] |cRXP_WARN_pour votre prochaine quête de classe (Paladin)|r << Paladin
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .collect 2589,10,1644,1,1 << Human Paladin -- Linen Cloth (10)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #optional
    #completewith StormpikeDelivery
    >>Tuez les |cRXP_ENEMY_Ancien ours noir|r. Dépouillez-les pour leur |T134027:0|t|cRXP_LOOT_Viande d'ours|r
    >>Tuez les |cRXP_ENEMY_Sangliers des montagnes|r. Dépouillez-les pour leur |T134342:0|t|cRXP_LOOT_Tripes de sanglier|r
    >>Tuez les |cRXP_ENEMY_Rôdeuses des forêts|r. Dépouillez-les pour leur |T134437:0|t|cRXP_LOOT_Ichor d'araignée|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    #completewith StormpikeDelivery
    #label StormpikeStop
    .goto 1432/0,-2659.45,-4822.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>Vendez et réparez votre équipement si nécessaire
    .target Gothor Brumn
step << Human
    #label StormpikeDelivery
    .goto 1432/0,-2676.99,-4825.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 307 >> Rendez la quête Bas les pattes !
    .turnin 1339 >> Rendez la quête La mission du Montagnard Foudrepique
    .accept 1338 >> Acceptez la quête La mission de Foudrepique
    .target Mountaineer Stormpike
step
    #optional
    #label BoarMeatLoch3
    #completewith FlintTinder
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Tuez  les|cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur|cRXP_LOOT_[Chunks of Boar Meat]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Mountain Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 144 --Thelsamar
    .subzoneskip 925 --Algaz Station
step
    #optional
    #requires BoarMeatLoch3
    #completewith FlintTinder
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Tuez  les|cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|cRXP_WARN_Ne changez pas votre route pour le faire maintenant. Tuez et dépouillez simplement tous les sangliers que vous rencontrez|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
    .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 144 --Thelsamar
    .subzoneskip 925 --Algaz Station
step
    #loop
    >>Tuez les |cRXP_ENEMY_Ancien ours noir|r. Dépouillez-les pour leur |T134027:0|t|cRXP_LOOT_Viande d'ours|r
    >>Tuez les |cRXP_ENEMY_Sangliers des montagnes|r. Dépouillez-les pour leur |T134342:0|t|cRXP_LOOT_Tripes de sanglier|r
    >>Tuez les |cRXP_ENEMY_Rôdeuses des forêts|r. Dépouillez-les pour leur |T134437:0|t|cRXP_LOOT_Ichor d'araignée|r
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .goto 1432/0,-2735.74,-4684.34,0
    .goto 1432/0,-2782.63,-4770.80,0
    .goto 1432/0,-3080.53,-5100.08,0
    .waypoint 1432/0,-2735.74,-4684.34,90,0
    .waypoint 1432/0,-2846.07,-4682.50,90,0
    .waypoint 1432/0,-2782.63,-4770.80,90,0
    .waypoint 1432/0,-2835.04,-4976.83,90,0
    .waypoint 1432/0,-2915.03,-5044.89,90,0
    .waypoint 1432/0,-3080.53,-5100.08,90,0
    .mob +Elder Black Bear
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .goto 1432/0,-3041.92,-5129.51,0
    .goto 1432/0,-2815.73,-5147.91,0
    .goto 1432/0,-2782.63,-4903.25,0
    .waypoint 1432/0,-3041.92,-5129.51,90,0
    .waypoint 1432/0,-3017.09,-5219.65,90,0
    .waypoint 1432/0,-2815.73,-5147.91,90,0
    .waypoint 1432/0,-2757.81,-4952.91,90,0
    .waypoint 1432/0,-2782.63,-4903.25,90,0
    .mob +Mountain Boar
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .goto 1432/0,-2873.66,-4789.19,0
    .goto 1432/0,-2926.07,-5232.53,0
    .goto 1432/0,-3069.5,-5078.01,0
    .waypoint 1432/0,-2873.66,-4789.19,90,0
    .waypoint 1432/0,-2766.08,-4866.45,90,0
    .waypoint 1432/0,-2926.07,-5232.53,90,0
    .waypoint 1432/0,-2992.27,-5055.93,90,0
    .waypoint 1432/0,-3069.5,-5078.01,90,0
    .mob +Forest Lurker
step
    #completewith FlintTinder
    .subzone 144 >> Retournez à Thelsamar
step
    #completewith FlintTinder
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_FRIENDLY_Mountaineer Kadrell|r patrouille le long de la route pour Thelsamar
    .target Mountaineer Kadrell
    .turnin 416 >> Rendez la quête Chasse au rat
    .isQuestComplete 416
step
    #optional
    #completewith FlintTinder
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >> Entrez dans l'auberge de Thelsamar
step
    .isQuestComplete 418
    #label FlintTinder
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vidra Hearthstove|r
    .turnin 418 >> Rendez la quête Les boudins de Thelsamar
    .target Vidra Hearthstove
step
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto 1432/0,-3006.61,-5259.57,15,0
    .goto 1432/0,-3020.95,-5282.02,15,0
    .goto 1432/0,-3023.44,-5326.90,15,0
    .goto 1432/0,-3007.99,-5337.390,15,0
    .goto 1432/0,-2964.41,-5349.90,15,0
    .goto 1432/0,-2894.90,-5401.96,20,0
    .goto 1432/0,-3007.99,-5337.390
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_FRIENDLY_Mountaineer Kadrell|r patrouille le long de la route pour Thelsamar
    .target Mountaineer Kadrell
    .turnin 416 >> Rendez la quête Chasse au rat
    .isQuestComplete 416
step
    .goto 1432/0,-2747.60,-5530.540
    >>Tuez les |cRXP_ENEMY_Stonesplinter Troggs|r et les |cRXP_ENEMY_Stonesplinter Scouts|r. Dépouillez-les pour leur |cRXP_LOOT_Teeth|r
    >>|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Stonesplinter Scouts|r lancent|r [Tirer] (Coup à distance: Inflige 14-20 dégâts)
    >>Il s'agit d'une zone d'hyperspawn. Vous n'aurez pas besoin de bouger d'ici
    >>|cRXP_WARN_Assurez-vous d'avoir 10|r |T132889:0|t[Etoffes de lin] |cRXP_WARN_pour votre prochaine quête de classe (Paladin)|r << Paladin
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
    .collect 2589,10,1644,1,1 << Human Paladin -- Linen Cloth (10)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
step
    #optional
    #completewith next
    .goto 1432/0,-2677.26,-5778.34,10,0
    .goto 1432/0,-2648.30,-5876.75,15 >> |cRXP_WARN_Montez le chemin de terre et ensuite descendez dans le bunker|r
step
    .goto 1432/0,-2634.59,-5842.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Captain Rugelfuss|r
    .turnin 267 >> Rendez la quête La menace trogg
    .target Captain Rugelfuss
    .isQuestComplete 267
step
    .goto 1432/0,-2602.54,-5832.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .turnin 224 >> Rendez la quête À la défense des terres du roi
    .target Mountaineer Cobbleflint
    .isQuestComplete 224

step << Warlock
    #optional
    #completewith next
    .goto 1432/0,-2747.60,-5530.540,0
    +Tuez des |cRXP_ENEMY_Troggs|r jusqu'à avoir 75s 79c d'objets à vendre
    .money >0.7579
step << Warlock
    #optional
    .goto 1432/0,-2747.60,-5530.540
    .xp 14 >>Montez jusqu'au niveau 14
    >>|cRXP_WARN_Volez à Ironforge et passez cette étape si vous prévoyez de faire le donjon Salle des Thanes à Ironforge|r

step << !Warrior
    #optional
    .goto 1432/0,-2747.60,-5530.540
    +Continuez de tuer les |cRXP_ENEMY_Troggs|r jusqu'à ce que votre |T134414:0|t[Pierre de foyer] soit disponible
    .cooldown item,6948,<1
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout

step << Human Warrior -- flying IF to train thrown before going westfall/darkshore
    #completewith next
    #optional
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Volez à Ironforge
    .target Thorgrum Borrelson
    .zoneskip Ironforge
step << Human Warrior
    #optional
    .goto 1455/0,-1203.78,-5041.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bixi Wobblebonk|r
    .train 2567 >>Apprenez la compétence Armes de jet
    .target Bixi Wobblebonk
step << Human Warrior
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bilban Tosslespanner|r
    .goto 1455/0,-1234.65,-5035.67
    .trainer >> Apprenez vos sorts de classe
    .target Bilban Tosslespanner
    .zoneskip Ironforge,1

step -- dont delete
    #label NormalRouteEnd

step
    .hs >> Utilisez votre Pierre de foyer pour revenir à Hurlevent
    .zoneskip Stormwind City
    .zoneskip Darkshore
    .zoneskip Westfall

step << Hunter
    .goto 1453/0,596.400,-8831.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thurman Mullby|r
    >>|cRXP_BUY_Achetez un|r [Bois simple] |cRXP_BUY_et un|r [Silex et amadou] |cRXP_BUY_ à Neal|r
    >>|cRXP_WARN_Ils sont utilisés pour fabriquer des|r |T135805:0|t[Feu de camp basique] |cRXP_WARN_sur les bateaux pour monter le niveau de votre|r |T133971:0|t[Cuisine] |cRXP_WARN_sans perdre de temps|r
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Thurman Mullby
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step << Hunter
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>|cRXP_BUY_Achetez des|r |cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_BUY_et/ou|r |cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_BUY_pour monter le niveau de compétence de votre|r [Cuisine] |cRXP_BUY_plus tard|r
    >>Vous aurez besoin d'un niveau de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes à venir plus facilement à la Marche de l'Ouest et à Sombrivage:|r
    >>|T133972:0|t[Viande de trotteur]
    >>|T133912:0|t[Mérou de Sombrivage]
    >>|T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Jaxon
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Hunter
    #ah
    #optional
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes à venir plus facilement à la Marche de l'Ouest et à Sombrivage:|r
    >>|T133972:0|t[Viande de trotteur]
    >>|T133912:0|t[Mérou de Sombrivage]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step << Warlock/Mage/Rogue/Priest/Warrior/Paladin
    #optional
    .goto 1453/0,613.0,-8796.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Achetez la compétence pour porter les Épées à une main et les Bâtons << Warlock/Mage
    .trainer >>Achetez la compétence pour porter des épées à une main << Rogue
    .trainer >>Apprenez la compétence Bâtons << Priest
    .trainer >>Achetez la compétence pour porter des épées à deux mains << Warrior/Paladin
    .target Woo Ping
step
    .isOnQuest 6261
    .goto 1453/0,489.99,-8835.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .turnin 6261 >> Rendez la quête Dungar Grangodet
    .target Dungar Longdrink
    .xp <15,1
step << Warlock/Priest
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ardwyn Cailen|r
    >>|cRXP_BUY_Achetez-lui une|r [Baguette fumante] |cRXP_BUY_|r
    .goto 1453/0,807.64,-8880.84,14,0
    .goto 1453/0,804.55,-8862.47
    .collect 5208,1 --Smoldering Wand (1)
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
step << Warlock/Priest
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ardwyn Cailen|r
    >>|cRXP_BUY_Achetez une|r |T135468:0|t[Baguette fumante] |cRXP_BUY_au marchand ou vérifiez l'Hôtel des Ventes pour une|r |T135144:0|t[Baguette magique supérieure]
    .goto 1453/0,807.64,-8880.84,14,0
    .goto 1453/0,804.55,-8862.47
    .collect 5208,1 --Smoldering Wand (1)
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    --not adding .money tag to this step. user could have less silver than vendor wand but cheaper ones may exist on the AH
step << Warlock/Priest
    #optional
    #completewith next
    +Équipez la [Baguette de fonte]
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp <15,1
step << Warlock/Priest
    #optional
    #completewith next
    +N'oubliez pas d'équiper la [Baguette de fonte] quand vous atteindrez le niveau 15 plus tard
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp >15,1
step << Warlock
    #optional
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Rendez vous à L'Agneau Assassiné. Descendez les escaliers
step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Apprenez vos sorts de classe
    .target Ursula Deline
step << Warlock
    .goto 1453/0,1035.96,-8974.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Crépi Roncebaie|r
    .vendor >> |cRXP_BUY_Achetez un|r |T133738:0|t[Grimoire de Consumer les ombres (rang 1)] |cRXP_BUY_et un|r |T133738:0|t[Grimoire de sacrifice (Rang 1)] |cRXP_BUY_si vous avez les moyens de vous les permettre. Sinon, vous pourrez les acheter plus tard|r
    .target Spackle Thornberry
step << Mage
    #optional
    #completewith next
    .goto 1453/0,874.32,-9014.67,10 >> Allez à la Tour des Mages
step << Mage
    .goto 1453/0,885.34,-9006.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Apprenez vos sorts de classe
    .target Elsharin
step << Priest/Paladin
    #optional
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Voyagez jusqu'à la Cathédrale de Stormwind
step << Human Paladin
    .goto 1453/0,845.95,-8545.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duthorian Rall|r
    .accept 1641 >> Acceptez la quête Le Tome de divinité
    .turnin 1641 >> Rendez la quête Le Tome de divinité
    .target Duthorian Rall
step << Human Paladin
    .goto 1453/0,845.95,-8545.70
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_The Tome of Divinity|r] pour commencer la quête|r
    .accept 1642 >>Acceptez la quête Le Tome de divinité
    .use 6775
step << Human Paladin
    .goto 1453/0,845.95,-8545.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1642 >>Rendez la quête Le Tome de divinité
    .accept 1643 >>Acceptez la quête Le Tome de divinité
    .target Duthorian Rall
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arthur the Faithful|r
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    .trainer >> Apprenez vos sorts de classe
    .target Arthur the Faithful
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Joshua|r
    .goto 1453/0,862.89,-8519.61
    .trainer >> Apprenez vos sorts de classe
    .target Brother Joshua
step << !Hunter
    #label HumbleBeginnings
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Baros Alexston|r
    .accept 399 >> Acceptez la quête Débuts modestes
    .target Baros Alexston
    .xp >15,1 -- shows to 14 and under
step
    .goto 1453/0,600.07,-8427.22
    .target Furen Longbeard
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Furen Longbeard|r
    .turnin 1338 >> Rendez la quête La mission de Foudrepique
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Einris Brightspear|r
    .trainer >> Apprenez vos sorts de classe
    .target Einris Brightspear
step << Hunter
    .goto 1453/0,553.22,-8422.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Karrina Mekenda|r
    .trainer >> Apprenez les compétences de votre familier
    .target Karrina Mekenda
step << Rogue
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne l'homme de la nuit|r
    .trainer >> Apprenez vos sorts de classe
    .target Osborne the Night Man
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wu|r ou |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .trainer >> Apprenez vos sorts de classe
    .target Wu Shen
    .target Ilsa Corbin
step << Human Paladin
    .goto 1453/0,613.66,-8832.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Stephanie Turner|r
    .turnin 1643 >> Rendez la quête Le Tome de divinité
    .target Stephanie Turner
    .accept 1644 >> Acceptez la quête Le Tome de divinité
    .turnin 1644 >> Rendez la quête Le Tome de divinité
    .accept 1780 >> Acceptez la quête Le Tome de divinité
step << Rogue
    #ah
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Achetez-lui jusqu'à 2|r |T135343:0|t[Cimeterres] |cRXP_BUY_si vous pouvez vous le permettre, ou vous pouvez acheter quelque chose de mieux/moins cher à l'Hôtel des ventes|r
    >>|cRXP_WARN_Équipez-les lorsque vous atteignez le niveau 14|r
    .collect 2027,2 --Scimitar
    .target Marda Weller
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #ssf
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Achetez-lui jusqu'à 2|r |T135343:0|t[Cimeterres] |cRXP_BUY_si vous pouvez vous le permettre|r
    >>|cRXP_WARN_Équipez-les lorsque vous atteignez le niveau 14|r
    .collect 2027,2 --Scimitar
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << Rogue
    #optional
    #completewith next
    +Équipez la [Cimeterre]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1

--Hunter going Darkshore, rest Westfall
step << Hunter
    .goto 1453/0,765.700,-8804.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Catherine Leland|r
    >>|cRXP_BUY_Achetez-lui une|r |T134335:0|t[Verroterie brillante] |cRXP_BUY_et trois|r |T134324:0|t[Asticots] |cRXP_BUY_. Ils servent pour une quête donnant 900xp|r
    .collect 6529,1,95065,1 --|1/1 Shiny Bauble
    .collect 6530,3,95065,1 --|3/3 Nightcrawlers
    .target Catherine Leland
step << Hunter
    .goto 1453/0,1269.100,-8540.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gilbert Gray::267118|r
    .target Gilbert Gray::267118
    .accept 95065 >>Acceptez la quête L'heure de la pêche
    .turnin 95065 >>Rendez la quête L'heure de la pêche
step << Hunter
    #optional
    #requires DockTravel
    #label DarkshoreCook1
    #completewith DarkshoreBoat
    >>Sur le bateau si il vient d'arriver, ou sur le quai si le bateau vient de partir:
    .cast 818 >>|cRXP_WARN_Fabriquez un|r |T135805:0|t[Feu de camp basique] |cRXP_WARN_(dans votre onglet de Cuisine)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Hunter
    #optional
    #requires DarkshoreCook1
    #label DarkshoreCook2
    #completewith DarkshoreBoat
    >>Sur le bateau si il vient d'arriver, ou sur le quai si le bateau vient de partir:
    .cast 818 >>|cRXP_WARN_Fabriquez un|r |T135805:0|t[Feu de camp basique] |cRXP_WARN_(dans votre onglet de Cuisine)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Hunter
    #optional
    #requires DarkshoreCook2
    #label DarkshoreCook3
    #completewith DarkshoreBoat
    >>Sur le bateau si il vient d'arriver, ou sur le quai si le bateau vient de partir:
    .cast 818 >>|cRXP_WARN_Fabriquez un|r |T135805:0|t[Feu de camp basique] |cRXP_WARN_(dans votre onglet de Cuisine)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Hunter
    #optional
    #requires DarkshoreCook3
    #label DarkshoreCook4
    #completewith DarkshoreBoat
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les objets suivants:
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Morceau de viande de sanglier]|r en [Viande de sanglier rôtie]
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Viande de loup maigre]|r en [Viande de loup grillée]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << Hunter
    #optional
    #requires DarkshoreCook4
    #label DarkshoreCook5
    #completewith DarkshoreBoat
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Viande de loup maigre]|r en [Viande de loup grillée]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << Hunter
    #optional
    #requires DarkshoreCook5
    #label DarkshoreCook6
    #completewith DarkshoreBoat
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Morceau de viande de sanglier]|r en [Viande de sanglier rôtie]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << Hunter
    #optional
    .goto 1453/0,1330.100,-8645.400
    >>|cRXP_WARN_Augmentez votre niveau de|r |T135966:0|t[Premiers soins] |cRXP_WARN_en attendant le bateau pour Sombrivage si nécessaire|r
    .zone Darkshore >> Prenez le bateau pour Sombrivage
    .skill firstaid,<1,1 -- shows if firstaid is >1
step << Hunter
    #label DarkshoreBoat
    .goto 1453/0,1330.100,-8645.400
    .zone Darkshore >> Prenez le bateau pour Sombrivage
]])
