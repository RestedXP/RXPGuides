if GetLocale() ~= "frFR" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end
RXPGuides.RegisterGuide([[

#version 1
#group RXP Cataclysme 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 1-10 Gilnéas
#displayname 1-10 Gilnéas
#next 10-18 Sombrivage
#defaultfor !DK
#next 10-18 Sombrivage

<< Worgen

step
    .goto 202,59.130,23.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prince Liam Grisetête|r
    .accept 14078 >>Acceptez la quête État d'alerte !
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    .goto 202,56.879,17.856,15,0
    .goto 202,54.626,16.717,15 >>Rendez-vous vers le cadavre de |cRXP_FRIENDLY_Lieutenant Walden|r sur le sol
step
    .goto 202,54.626,16.717
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au cadavre de |cRXP_FRIENDLY_Lieutenant Walden|r sur le sol
    .turnin 14078 >>Rendez la quête État d'alerte !
    .accept 14091 >>Acceptez la quête Quelque chose ne va pas
	.target Lieutenant Walden
step
    #optional
    #completewith next
    .goto 202,56.872,17.840,15,0
    .goto 202,58.366,20.712,15,0
    .goto 202,59.830,22.192,15 >>Rendez-vous vers |cRXP_FRIENDLY_Prince Liam Grisetête|r
step
    .goto 202,59.830,22.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prince Liam Grisetête|r
    .turnin 14091 >>Rendez la quête Quelque chose ne va pas
    .accept 14093 >>Acceptez la quête Une pagaille monstrueuse
    .accept 14098 >>Acceptez la quête L'évacuation de la place des Marchands
	.target Prince Liam Greymane
step
    #completewith next
    .goto 202,57.678,23.371,0
    .goto 202,65.642,33.161,0
    .goto 202,57.192,40.351,0
    >>Tuez le |cRXP_ENEMY_Fureur destructrice Worgen déchaîné|r
    .complete 14093,1 --Rampaging Worgen slain (6)
	.mob Rampaging Worgen
step
    .goto 202,59.561,26.776
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwen Armstead|r.
    .accept 14094 >>Acceptez la quête Préserver le ravitaillement
	.target Gwen Armstead
step
    #sticky
    #label Salvaged
    #loop
    .goto 202,58.931,25.445,0
    .goto 202,61.954,36.882,0
    .goto 202,55.539,33.642,0
    .waypoint 202,58.931,25.445,12,0
    .waypoint 202,62.280,26.295,12,0
    .waypoint 202,59.193,28.776,12,0
    .waypoint 202,59.012,35.683,12,0
    .waypoint 202,61.954,36.882,12,0
    .waypoint 202,59.174,38.938,12,0
    .waypoint 202,56.253,42.897,12,0
    .waypoint 202,58.449,36.570,12,0
    .waypoint 202,55.539,33.642,12,0
    .waypoint 202,60.040,20.806,12,0
    >>Ouvrez les |cRXP_PICK_Supply Caisses|r par terre. Ramassez-les pour |cRXP_LOOT_Salvaged Fournitures|r
    .complete 14094,1 --Salvaged Supplies (4)
step
    #sticky
    #label Gwen
    #requires Salvaged
    .goto 202,59.561,26.776,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwen Armstead|r.
    .turnin 14094 >>Rendez la quête Préserver le ravitaillement
	.target Gwen Armstead
step
    #optional
    #sticky
    #label RampWorgen
    #loop
    .goto 202,57.678,23.371,0
    .goto 202,65.642,33.161,0
    .goto 202,57.192,40.351,0
    .waypoint 202,57.678,23.371,45,0
    .waypoint 202,60.799,22.195,45,0
    .waypoint 202,63.387,19.323,45,0
    .waypoint 202,64.497,24.603,45,0
    .waypoint 202,65.642,33.161,45,0
    .waypoint 202,60.451,34.024,45,0
    .waypoint 202,59.696,41.857,45,0
    .waypoint 202,57.192,40.351,45,0
    >>Tuez le |cRXP_ENEMY_Fureur destructrice Worgen déchaîné|r
    .complete 14093,1 --Rampaging Worgen slain (6)
	.mob Rampaging Worgen
step
    #label Area1
    #loop
    .goto 202,63.192,31.620,0
    .goto 202,55.001,26.559,0
    .goto 202,58.493,19.345,0
    .goto 202,63.192,31.620,8,0
    .goto 202,63.199,34.791,8,0
    .goto 202,55.001,26.559,8,0
    .goto 202,55.839,20.215,8,0
    .goto 202,58.493,19.345,8,0
    >>Frappez sur |cRXP_PICK_Marchand Carré Doors|r
    >>|cRXP_WARN_Cela peut faire apparaître|r |cRXP_ENEMY_Fureur destructrice Worgen déchaîné|r
    .complete 14098,1 --Market Homes Evacuated (3)
step
    #optional
    #requires RampWorgen
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires Gwen
    .goto 202,59.561,26.776
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwen Armstead|r.
    .turnin 14094 >>Rendez la quête Préserver le ravitaillement
	.target Gwen Armstead
step
    .goto 202,59.830,22.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prince Liam Grisetête|r
    .turnin 14093 >>Rendez la quête Une pagaille monstrueuse
    .turnin 14098 >>Rendez la quête L'évacuation de la place des Marchands
    .accept 14099 >>Acceptez la quête Des ordres royaux
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    .goto 202,62.290,31.759,15,0
    .goto 202,64.098,34.535,15,0
    .goto 202,68.809,45.472,15,0
    .goto 202,70.770,55.050,15 >> Rendez-vous vers |cRXP_FRIENDLY_Gwen Armstead|r
step
    .goto 202,70.770,55.050
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwen Armstead|r.
    .turnin 14099 >>Rendez la quête Des ordres royaux
    .accept 14265 >>Acceptez la quête Votre instructeur << Warrior
    .accept 14269 >>Acceptez la quête Quelqu’un vous cherche << Rogue
    .accept 14273 >>Acceptez la quête D’obscurs associés << Warlock
    .accept 14275 >>Acceptez la quête Quelqu’un vous suit à la trace << Hunter
    .accept 14277 >>Acceptez la quête Enquêtes arcaniques << Mage
    .accept 14278 >>Acceptez la quête Cherchez la sœur << Priest
    .accept 14280 >>Acceptez la quête Les vents connaissent votre nom... apparemment  << Druid
	.target Gwen Armstead
step << skip
    #completewith next
    .goto 202,71.023,55.221
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marie Allen|r
    .vendor 38853 >>|cRXP_BUY_Achetez-lui une|r [Petite sacoche marron] |cRXP_BUY_si nécessaire|r
	.target Marie Allen
step << Warrior
    .goto 202,67.592,64.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seargent Cleese|r
    .turnin 14265 >>Rendez la quête Votre instructeur
    .accept 14266 >>Acceptez la quête À la charge !
    .train 100 >>Apprenez [Charge] << cata
	.target Sergeant Cleese
step << Rogue
    .goto 202,71.406,65.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loren la Receleuse|r
    >>|cRXP_WARN_Elle est|r |T132320:0|t[Camouflé]
    .turnin 14269 >>Rendez la quête Quelqu’un vous cherche
    .accept 14272 >>Acceptez la quête L'éviscération
    .train 2098 >>Entraînez-vous |T132292:0|t[L'éviscération] << cata
	.target Loren the Fence
step << Warlock
    .goto 202,71.420,64.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vitus Sombremarcheur|r
    .turnin 14273 >>Rendez la quête D'obscurs associés
    .accept 14274 >>Acceptez la quête Immolation
    .train 348 >>Apprenez [Immolation] << cata
	.target Vitus Darkwalker
step << Hunter
    .goto 202,71.503,61.307
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Veneur Blake|r
    .turnin 14275 >>Rendez la quête Quelqu’un vous suit à la trace
    .accept 14276 >>Acceptez la quête Tir régulier
    .train 56641 >>S'entraîner |T132213:0|t[Veilleur du puits Solanian] << cata
	.target Huntsman Blake
step << Mage
    .goto 202,68.043,64.695
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Myriam Eveillesort|r
    .turnin 14277 >>Rendez la quête Enquêtes arcaniques
    .accept 14281 >>Acceptez la quête Projectiles des Arcanes
    .train 5143 >>Apprenez |T136096:0|t[Projectiles des Arcanes] << cata
	.target Myriam Spellwaker
step << Priest
    .goto 202,70.421,65.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sœur Almyra|r
    .turnin 14278 >>Rendez la quête Cherchez la sœur
    .accept 14279 >>Acceptez la quête Soins rapides << cata
    .accept 14279 >>Acceptez la quête Apprendre la parole << !cata
    .train 2061 >>Entraînez-vous |T135907:0|t[Soins rapides] << cata
	.target Sister Almyra
step << Druid
    .goto 202,70.190,65.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Celestine of the Moisson|r
    .turnin 14280 >>Rendez la quête Les vents connaissent votre nom... apparemment
    .accept 14283 >>Acceptez la quête A Régénérant Toucher << cata
    .accept 14283 >>Acceptez la quête Éclat lunaire << !cata
    .train 774 >>Apprenez |T136081:0|t[Récupération] << cata
	.target Celestine of the Harvest
step << !Priest !Druid
    .goto 202,67.168,64.124
    >>Lancez |T132337:0|t[À la charge !] sur un |cRXP_ENEMY_Rougecroc Worgen croc-de-sang|r << Warrior
    >>Lancez |T136189:0|t[Attaque pernicieuse] puis |T132292:0|t[L'éviscération] sur un |cRXP_ENEMY_Rougecroc Worgen croc-de-sang|r << Rogue
    >>Lancez |T135817:0|t[Immolation] sur un |cRXP_ENEMY_Rougecroc Worgen croc-de-sang|r << Warlock
    >>Lancez |T132213:0|t[Veilleur du puits Solanian] sur un |cRXP_ENEMY_Rougecroc Worgen croc-de-sang|r 2 fois << Hunter
    >>Lancez |T135812:0|t[Boule de feu] puis |T136096:0|t[Projectiles des Arcanes] quand c'est déclenché sur un |cRXP_ENEMY_Rougecroc Worgen croc-de-sang|r << Mage
    .complete 14266,1 << Warrior cata --Cast Charge (1)
    .complete 14272,1 << Rogue cata --Cast Eviscerate (1)
    .complete 14274,1 << Warlock cata --Cast Immolate (1)
    .complete 14276,1 << Hunter cata --Cast Steady Shot (2)
    .complete 14281,1 << Mage cata --Cast Arcane Missiles (1)
    .complete 14266,2 << Warrior !cata --Cast Charge (1)
    .complete 14272,2 << Rogue !cata --Cast Eviscerate (1)
    .complete 14274,2 << Warlock !cata --Cast Immolate (1)
    .complete 14276,2 << Hunter !cata --Cast Steady Shot (2)
    .complete 14281,2 << Mage !cata --Cast Arcane Missiles (1)
    .mob Bloodfang Worgen
step << !cata Druid/Priest
    .goto 202,67.168,64.124
    >>Lancez |T136096:0|t[Eclat lunaire] sur un |cRXP_ENEMY_Rougecroc Worgen croc-de-sang|r << Druid
    >>Lancez |T136207:0|t[Mot de l'ombre : Douleur] deux fois sur un |cRXP_ENEMY_Rougecroc Worgen croc-de-sang|r << Priest
    .complete 14279,2 << Priest --Cast Shadow Word: Pain (1)
    .complete 14283,2 << Druid --Cast Moonfire (2)
    .mob Bloodfang Worgen
step << cata Priest/Druid
    #loop
    .goto 202,70.421,65.541,0
    .goto 202,71.003,66.538,8,0
    .goto 202,70.523,67.189,8,0
    .goto 202,69.416,66.577,8,0
    .goto 202,69.782,63.306,5,0
    >>Lancez |T135907:0|t[Soins rapides] sur un |cRXP_FRIENDLY_Blessé Garde|r 2 fois << Priest
    >>Lancez |T136081:0|t[Récupération] sur un |cRXP_FRIENDLY_Blessé Garde|r << Druid
    .complete 14279,1 << Priest --Cast Flash Heal (2)
    .complete 14283,1 << Druid --Cast Rejuvenation (1)
step << Warrior
    .goto 202,67.592,64.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seargent Cleese|r
    .turnin 14266 >>Rendez la quête À la charge !
    .accept 14286 >>Acceptez la quête Le groupe apporte la sécurité
	.target Sergeant Cleese
step << Rogue
    .goto 202,71.406,65.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loren la Receleuse|r
    >>|cRXP_WARN_Elle est|r |T132320:0|t[Camouflé]
    .turnin 14272 >>Rendez la quête L'éviscération
    .accept 14285 >>Acceptez la quête Le groupe apporte la sécurité
	.target Loren the Fence
step << Warlock
    .goto 202,71.420,64.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vitus Sombremarcheur|r
    .turnin 14274 >>Rendez la quête Immolation
    .accept 14287 >>Acceptez la quête Le groupe apporte la sécurité
	.target Vitus Darkwalker
step << Hunter
    .goto 202,71.503,61.307
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Veneur Blake|r
    .turnin 14276 >>Rendez la quête Visée
    .accept 14290 >>Acceptez la quête Le groupe apporte la sécurité
	.target Huntsman Blake
step << Mage
    .goto 202,68.043,64.695
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Myriam Eveillesort|r
    .turnin 14281 >>Rendez la quête Projectiles des Arcanes
    .accept 14288 >>Acceptez la quête Le groupe apporte la sécurité
	.target Myriam Spellwaker
step << Priest
    .goto 202,70.421,65.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sœur Almyra|r
    .turnin 14279 >>Rendez la quête Soins rapides << cata
    .turnin 14279 >>Rendre la quête Veilleur du puits Solanian << !cata
    .accept 14289 >>Acceptez la quête Le groupe apporte la sécurité
	.target Sister Almyra
step << Druid
    .goto 202,70.190,65.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Celestine of the Moisson|r
    .turnin 14283 >> Rendez la quête Un toucher régénérant << cata
    .turnin 14283 >> Rendre la quête Eclat lunaire << !cata
    .accept 14291 >> Acceptez la quête Le groupe apporte la sécurité
	.target Celestine of the Harvest
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_King Genn Grisetête|r et |cRXP_FRIENDLY_Seigneur Godfrey|r
    .turnin 14285 >>Rendez la quête Le groupe apporte la sécurité << Rogue
    .turnin 14286 >>Rendez la quête Le groupe apporte la sécurité << Warrior
    .turnin 14287 >>Rendez la quête Le groupe apporte la sécurité << Warlock
    .turnin 14288 >>Rendez la quête Le groupe apporte la sécurité << Mage
    .turnin 14289 >>Rendez la quête Le groupe apporte la sécurité << Priest
    .turnin 14290 >>Rendez la quête Le groupe apporte la sécurité << Hunter
    .turnin 14291 >>Rendez la quête Le groupe apporte la sécurité << Druid
    .accept 14157 >>Acceptez la quête D'anciennes rancœurs
    .goto 202,65.810,77.714
	.target +King Genn Greymane
    .accept 24930 >>Acceptez la quête Pendant que vous y êtes…
    .goto 202,65.279,77.607
	.target +Lord Godfrey
step
    #sticky
    #label Bloodfang
    #loop
    .goto 202,57.890,72.582,0
    .goto 202,59.334,63.772,0
    .goto 202,61.376,70.799,0
    .goto 202,67.168,64.124,0
    .waypoint 202,57.890,72.582,20,0
    .waypoint 202,55.652,68.601,20,0
    .waypoint 202,56.961,66.801,20,0
    .waypoint 202,58.605,63.555,20,0
    .waypoint 202,59.334,63.772,20,0
    .waypoint 202,61.343,66.187,20,0
    .waypoint 202,61.898,66.760,20,0
    .waypoint 202,59.853,70.005,20,0
    .waypoint 202,61.376,70.799,20,0
    .waypoint 202,61.872,71.789,20,0
    .waypoint 202,64.690,69.474,20,0
    .waypoint 202,67.168,64.124,20,0
	>>Tuez des |cRXP_ENEMY_Worgen croc-de-sang|r
    .complete 24930,1 --Bloodfang Worgen slain (5)
	.mob *Bloodfang Worgen
step
    #optional
    #completewith next
    .goto 202,59.984,71.904,15,0
    .goto 202,58.006,72.476,15,0
    .goto 202,57.736,73.926,15,0
    .goto 202,57.925,75.584,10 >>Rendez-vous vers |cRXP_FRIENDLY_Capitaine Broderick|r à l'intérieur
step
    .goto 202,57.925,75.584
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Capitaine Broderick|r à l'intérieur
    .turnin 14157 >>Rendez la quête D'anciennes rancœurs
    .accept 28850 >>Acceptez la quête Le sommet de la prison
	.target Captain Broderick
step
    #optional
    #completewith Rooftop
    #label Staircase1
    .goto 202,57.001,74.780,5,0
    .goto 202,55.627,72.484,12 >>Montez l'escalier en spirale
step
    #optional
    #completewith Rooftop
    #requires Staircase1
    .goto 202,54.046,69.362,12,0
    .goto 202,53.759,67.454,12,0
    .goto 202,55.224,62.906,12 >>Rendez-vous vers |cRXP_FRIENDLY_Seigneur Darius Crowley|r
step
    #label Rooftop
    .goto 202,55.224,62.906
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seigneur Darius Crowley|r
    .turnin 28850 >>Rendez la quête Le sommet de la prison
    .accept 14154 >>Acceptez la quête Pas passé loin
    .timer 118,RP de Pas passé loin
	.target Lord Darius Crowley
step
    .goto 202,55.224,62.906
    >>Tuez les vagues de |cRXP_ENEMY_Worgen Alphas|r et |cRXP_ENEMY_Bloodfang Gringalet|r pendant 2 minutes
    >>|cRXP_WARN_Reste près de |cRXP_FRIENDLY_Seigneur Darius Crowley|r pour gagner|r |T236310:0|t[Vaillance des rebelles] |cRXP_WARN_(Aura passive : augmente considérablement la hâte, la régénération de santé et la régénération de ressources)|r
    .complete 14154,1 --Survive while holding back the worgen for 2 minutes. (1)
    .mob Worgen Alpha
    .mob Bloodfang Runt
step
    .goto 202,55.224,62.906
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seigneur Darius Crowley|r
    .turnin 14154 >>Rendez la quête Pas passé loin
    .accept 26129 >>Acceptez la quête Frères d'armes
	.target Lord Darius Crowley
step
    #optional
    #completewith Brothers
    #label Staircase2
    .goto 202,53.759,67.454,12,0
    .goto 202,54.046,69.362,12 >>Rendez-vous vers l'escalier en spirale
--XX NOTE: You can longjump up behind Darius to jump down, but I doubt the avg user can do it (evident of Wetlands skip despite it being easier)
step
    #optional
    #completewith Brothers
    #requires Staircase2
    .goto 202,55.627,72.484,15,0
    .goto 202,57.707,74.729,5,0
    .goto 202,59.984,71.904,20 >>Descendez l'escalier en spirale. Sortez
step
    #label Brothers
    #requires Bloodfang
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seigneur Godfrey|r et |cRXP_FRIENDLY_King Genn Grisetête|r
    .turnin 24930 >>Rendez la quête Pendant que vous y êtes…
    .goto 202,65.279,77.607
	.target +Lord Godfrey
    .turnin 26129 >>Rendez la quête Frères d'armes
    .accept 14159 >>Acceptez la quête L'arsenal du seigneur séditieux
    .goto 202,65.810,77.714
	.target +King Genn Greymane
step
    #optional
    #completewith Arsenal
    #requires Cellar1
    .goto 202,61.383,80.814,15,0
    .goto 202,56.181,82.790,15,0
    .goto 202,55.945,81.481,5,0
    .goto 202,56.805,81.599,6,0
    .goto 202,56.768,85.448,10 >>Cliquez sur la |cRXP_PICK_Porte de la cave|r pour l'ouvrir, puis rendez-vous vers |cRXP_FRIENDLY_Josiah Avery|r à l'intérieur
--XX no spell for this
step
    #label Arsenal
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Josiah Avery|r et |cRXP_FRIENDLY_Lorna Crowley|r à l'intérieur
    .turnin 14159 >>Rendez la quête L'arsenal du seigneur séditieux
    .goto 202,56.768,85.448
	.target +Josiah Avery
    .accept 14204 >>Acceptez la quête Dans les ombres
    .goto 202,56.873,81.421
	.target +Lorna Crowley
step << skip
    #completewith next
    +|cRXP_WARN_Pour activer la liaison de touches pour les objets de quête, suivez ces étapes:|r
    *[1] Appuyez sur la |cRXP_WARN_Echap./Esc.|r touche.
    *[2] Sélectionnez |cRXP_WARN_Options|r.
    *[3] Accédez à |cRXP_WARN_Keybindings|r.
    *[4] Dans |cRXP_WARN_Keybindings|r, trouvez |cRXP_WARN_RestedXP Guides|r.
    *[5] Sélectionnez et liez les |cRXP_WARN_Active Boutons|r.
step
    #loop
    .goto 202,54.026,81.617,0
    .goto 202,50.457,81.103,0
    .goto 202,47.100,77.204,0
    .goto 202,53.263,76.819,0
    .goto 202,54.026,81.617,20,0
    .goto 202,55.209,84.131,20,0
    .goto 202,51.607,83.495,20,0
    .goto 202,50.679,83.942,20,0
    .goto 202,50.457,81.103,20,0
    .goto 202,48.050,84.424,20,0
    .goto 202,47.075,81.792,20,0
    .goto 202,46.153,81.533,20,0
    .goto 202,47.100,77.204,20,0
    .goto 202,48.918,76.770,20,0
    .goto 202,51.200,76.089,20,0
    .goto 202,53.263,76.819,20,0
    >>Tuez |cRXP_ENEMY_Bloodfang Lurkers|r
    >>|cRXP_WARN_Soyez prudent car ils sont|r |T132320:0|t[Camouflé]
    >>|cRXP_WARN_Utilisez le sort |T236186:0|t[Attaquer le rôdeur] de votre |cRXP_FRIENDLY_Mastiff gilnéen|r pour aider à localiser |cRXP_ENEMY_Bloodfang Lurkers|r si nécessaire|r
    >>|cRXP_WARN_Si vous perdez votre |cRXP_FRIENDLY_Mastiff gilnéen|r, invoquez-le à nouveau en utilisant le|r |T236926:0|t[Collier du mastiff gilnéen]
    .complete 14204,1 --Bloodfang Lurker slain (6)
	.mob Bloodfang Lurker
    .use 48707
step
    .goto 202,56.873,81.421
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lorna Crowley|r dedans
    .turnin 14204 >>Rendez la quête Dans les ombres
    .accept 14214 >>Acceptez la quête Un message pour Grisetête
	.target Lorna Crowley
step
    #optional
    #completewith next
    .goto 202,55.818,81.572,6,0
    .goto 202,56.184,82.795,12,0
    .goto 202,59.207,83.777,15 >> Rendez-vous vers |cRXP_FRIENDLY_King Genn Grisetête|r
step
    .goto 202,59.207,83.777
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Roi Genn Grisetête|r.
    .turnin 14214 >>Rendez la quête Un message pour Grisetête
    .accept 14293 >>Acceptez la quête Sauver Krennan Aranas
    .timer 16,RP de Sauver Krennan Aranas
	.target King Genn Greymane
step << skip
    #completewith next
    .goto 202,58.710,77.289,0
    .deathskip >> Mourez et réapparaissez auprès du |cRXP_FRIENDLY_Gardien des âmes|r après avoir sauvé |cRXP_FRIENDLY_Krennan Aranas|r
    .target Gardien des âmes
step
    .goto 202,59.207,83.777,0
    .goto 202,66.171,61.811
    >>Tandis que vous êtes sur |cRXP_FRIENDLY_King Greymane's Cheval|r :
    >>Lancez |T134149:0|t[Sauver Krennan] (1) pour sauver |cRXP_FRIENDLY_Krennan Aranas|r quand vous l'approchez
-- >>|cRXP_WARN_After you save him, press dismount |cRXP_FRIENDLY_King Greymane's Horse|r and die to the|r |cRXP_ENEMY_Bloodfang Rippers|r
    >>|cRXP_WARN_Si vous échouez, parlez à |cRXP_FRIENDLY_King Genn Grisetête|r pour réessayer|r
    .complete 14293,1 --Krennan Aranas rescued (1)
    .timer 19,RP de Sauver Krennan Aranas
	.target Krennan Aranas
    .target *King Genn Greymane
    .skipgossip 35550,1
    .timer 16,RP de Sauver Krennan Aranas
--XX 19s slower to not deathskip, not gonna risk it
step << skip
    #optional
    #completewith next
    .goto 202,58.710,77.289
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r APRÈS avoir sauvé |cRXP_FRIENDLY_Krennan Aranas|r
    .target Gardien des âmes
step
    .goto 202,55.715,80.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seigneur Godfrey|r
    .turnin 14293 >>Rendez la quête Sauver Krennan Aranas
    .accept 14294 >>Acceptez la quête Il est temps de se regrouper
	.target Lord Godfrey
--XX 14293 didn't complete after turning in quest, worked again after accepting followup (very minor issue)
step
    #optional
    #completewith next
    .goto 202,53.411,82.729,15,0
    .goto 202,44.351,82.504,15,0
    .goto 202,41.103,81.945,15,0
    .goto 202,30.373,73.142,15 >> Voyagez vers |cRXP_FRIENDLY_King Genn Grisetête|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_King Genn Grisetête|r et |cRXP_FRIENDLY_Seigneur Darius Crowley|r
    .turnin 14294 >>Rendez la quête Il est temps de se regrouper
    .goto 202,30.373,73.142
	.target +King Genn Greymane
    .accept 14212 >>Acceptez la quête Sacrifices
    .goto 202,31.103,72.365
	.target +Lord Darius Crowley
step
    #completewith next
    .goto 202,31.282,72.645
    .vehicle >> Entrez le |cRXP_FRIENDLY_Cheval de Crowley|r
    .timer 79,Jeu de rôle des sacrifices
    .target Crowley's Horse
step
    .goto 202,31.282,72.645,-1
    .goto 202,40.749,39.219,-1
    >>Pendant que vous êtes sur le |cRXP_FRIENDLY_Cheval de Crowley|r:
    >>Rassemblez les |cRXP_ENEMY_Traqueurs croc-de-sang|r
    >>Lancez |T135433:0|t[Lancer une torche] (1) (Instantané à distance : Rassemble les |cRXP_ENEMY_Traqueurs croc-de-sang|r)
    .complete 14212,1 --Bloodfang Stalker rounded up (30)
	.mob Bloodfang Stalker
--XX about 40s slower not to d
step
    #completewith next
    >>Attendez le temps du RP
    .goto 202,40.548,39.446,20 >>Montez le |cRXP_FRIENDLY_Cheval de Crowley|r vers |cRXP_FRIENDLY_Tobias Mantebrume|r
step
    .goto 202,40.548,39.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tobias Mantebrume|r
    .turnin 14212 >>Rendez la quête Sacrifices
    .accept 14218 >>Acceptez la quête Par le sang et les cendres
	.target Tobias Mistmantle
step
    #completewith next
    .goto 202,40.883,36.449,-1
    .goto 202,40.120,36.463,-1
    .goto 202,38.786,37.390,-1
    .goto 202,38.395,38.282,-1
    .goto 202,37.896,39.535,-1
    .goto 202,37.955,40.949,-1
    .vehicle >> Entrez le |cRXP_FRIENDLY_Canon rebelle|r
    .target Rebel Cannon
step
    .goto 202,40.13,36.52
    >>Pendant que vous êtes dans le |cRXP_FRIENDLY_Canon rebelle|r:
    >>Tuez les |cRXP_ENEMY_Traqueurs croc-de-sang|r
    >>Lancez |T252185:0|t[Canon rebelle] (1) (Portée instantanée : Inflige BEAUCOUP de dégâts)
    .complete 14218,1 --Bloodfang Stalker slain (80)
    .mob Bloodfang Stalker
step
    .goto 202,40.548,39.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tobias Mantebrume|r
    .turnin 14218 >>Rendez la quête Par le sang et les cendres
    .accept 14221 >>Acceptez la quête Ne jamais abandonner, mais se replier si nécessaire
	.target Tobias Mistmantle
step
    #optional
    #completewith next
    .goto 202,41.075,40.477,8,0
    .goto 202,43.584,44.647,12 >>Entrez dans la cathédrale
step
    .goto 202,48.936,52.794
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seigneur Darius Crowley|r à l'intérieur
    .turnin 14221 >>Rendez la quête Ne jamais abandonner, mais se replier si nécessaire
    .accept 14222 >>Acceptez la quête Dans les derniers retranchements
	.target Lord Darius Crowley
step
    #loop
    .goto 202,42.708,43.201,0
    .goto 202,46.550,49.292,0
    .goto 202,47.789,46.937,20,0
    .goto 202,43.825,45.568,20,0
    .goto 202,42.708,43.201,20,0
    .goto 202,45.161,50.530,20,0
    >>Tuez les |cRXP_ENEMY_Frenzied Stalkers|r
    >>|cRXP_WARN_Reste près de |cRXP_FRIENDLY_Seigneur Darius Crowley|r pour obtenir|r |T236310:0|t[Vaillance des rebelles] |cRXP_WARN_(Aura passive : Augmente énormément l'hâte, la régénération de points de vie et la régénération de mana)|r
    .complete 14222,1 --Frenzied Stalker slain (8)
	.mob Frenzied Stalker
step
    .goto 202,48.936,52.794
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seigneur Darius Crowley|r à l'intérieur
	>>|cRXP_WARN_Appuyez sur "Échap./Esc." pour passer la cinématique|r
    .turnin 14222 >>Rendez la quête Dans les derniers retranchements
    .timer 46,RP de Dans les derniers retranchements
	.target Lord Daruius Crowley
step
    .goto 179,36.47,61.39
    >>Attendez le temps du RP
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Roi Genn Grisetête|r.
    .accept 14375 >>Acceptez la quête Dernier espoir d'humanité
    .turnin 14375 >>Rendez la quête Dernier espoir d'humanité
    .timer 7,RP de Dernier espoir d'humanité
	.target King Genn Greymane
--XX 2dp waypoints here on out (gc bug)
step
    .goto 179,36.51,62.27
    >>Attendez le temps du RP
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seigneur Godfrey|r
    .accept 14313 >>Acceptez la quête De nouveau parmi les Humains
	.target Lord Godfrey
step
    #optional
    #completewith next
    .goto 179,37.17,63.58,8,0
    .goto 179,37.41,63.24,10 >>Entrez dans la maison
step
    .goto 179,37.41,63.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krennan Aranas|r à l'intérieur
    .turnin 14313 >>Rendez la quête De nouveau parmi les Humains
    .accept 14320 >>Acceptez la quête Il nous faut des ingrédients
	.target Krennan Aranas
step
    #sticky
    #label Professions1
    #completewith Professions3
    .goto 179,37.34,63.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jack "Tous Trades" Derrington|r
    >>|cRXP_WARN_Récolter les herbes et miner les filons fournit de l'XP. Récoltez uniquement les ressources sur votre chemin direct|r
    >>Si vous ne voulez pas le faire, vous pouvez passer cette étape
    .train 2366 >> Apprenez [Herboristerie]
    .train 2575 >> Apprenez [Minage]
    .target Jack "All Trades" Derrington
    .skipgossip 50247,1,1,1
    .train 2366,1 --Herbalism
    .train 2575,1 --Mining
step
    #optional
    #requires Professions1
    #label Professions2
    #completewith Professions3
    .goto 179,37.34,63.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jack "Tous Trades" Derrington|r
    >>|cRXP_WARN_Récolte d'herbes rapporte de l'XP. Récoltez uniquement les ressources sur votre chemin direct|r
    >>Si vous ne voulez pas le faire, vous pouvez passer cette étape
    .train 2366 >> Apprenez [Herboristerie]
    .target Jack "All Trades" Derrington
    .skipgossip 50247,2,2,2
    .train 2575,3 --Mining
step
    #optional
    #requires Professions2
    #label Professions3
    .goto 179,37.34,63.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jack "Tous Trades" Derrington|r
    >>|cRXP_WARN_Minage de gisements rapporte XP. Récoltez uniquement les ressources sur votre chemin direct|r
    >>Si vous ne voulez pas le faire, vous pouvez passer cette étape
    .train 2575 >> Apprenez [Minage]
    .target Jack "All Trades" Derrington
    .skipgossip 50247,2,3,2
    .train 2366,3 --Herbalism
step << Hunter cata
    .goto 179,38.032,63.359
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Veneur Blake|r
    .trainer >> Apprenez vos sorts de classe
    .target Huntsman Blake
step << Warrior cata
    .goto 179,38.278,63.457
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergent Cleese|r
    .trainer >> Apprenez vos sorts de classe
    .target Sergeant Cleese
step
    #completewith INOG
    #optional
    .cast 2383 >> |cRXP_WARN_Lancez|r [Découverte d'herbes]
    .cast 2580 >> |cRXP_WARN_Lancez|r [Découverte de gisements]
    .train 2575,3 --Mining
    .train 2366,3 --Herbalism
    .subzoneskip 4786,1
step
    #optional
    .goto 179,36.228,64.861
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Samantha Buckley|r
    .collect 2901,1 >>|cRXP_BUY_Achetez une|r [Pioche de mineur] |cRXP_BUY_à Brooke|r
    .target Samantha Buckley
    .train 2575,3 --Mining
    .subzoneskip 4786,1
step << Priest cata
    .goto 179,36.015,64.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sœur Almyra|r
    .trainer >> Apprenez vos sorts de classe
    .target Sister Almyra
step << Druid cata
    .goto 179,36.276,64.123
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Célestine de la Moisson|r
    .trainer >> Apprenez vos sorts de classe
    .target Celestine of the Harvest
step << Mage cata
    .goto 179,36.099,63.825
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Myriam Eveillesort|r
    .trainer >> Apprenez vos sorts de classe
    .target Myriam Spellwaker
step << Warlock cata
    .goto 179,35.824,63.866
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vitus Sombremarcheur|r
    .trainer >> Apprenez vos sorts de classe
    .target Vitus Darkwalker
step << Rogue cata
    .goto 179,36.735,65.379
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loren la Receleuse|r
    .trainer >> Apprenez vos sorts de classe
    .target Loren the Fence
step
    #label INOG
    .goto 179,32.77,66.39
    >>Cliquez sur la |cRXP_PICK_Caisse de Mandrake Essence|r sur le sol
	>>|cRXP_WARN_Appuyez sur "Échap./Esc." pour passer la cinématique|r
    .turnin 14320 >>Rendez la quête Il nous faut des ingrédients
step
    #label MiningWorgen
    .goto 179,32.77,66.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au cadavre du |cRXP_FRIENDLY_Guetteur tué|r sur le sol
	>>|cRXP_WARN_Si vous ne pouvez pas faire cela, tapez /relancer dans le chat|r
    .accept 14321 >>Acceptez la quête L'invasion
    .target Slain Watchman
step
    .goto 179,37.41,63.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwen Armstead|r à l'intérieur
    .turnin 14321 >>Rendez la quête L'invasion
    .accept 14336 >>Acceptez la quête Tuer ou être tué
	.target Gwen Armstead
step
    .goto 179,35.94,66.16,15,0
    .goto 179,35.28,66.06,15,0
    .goto 179,35.76,67.31,15,0
    .goto 179,35.94,66.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prince Liam Grisetête|r
    .turnin 14336 >>Rendez la quête Tuer ou être tué
    .accept 14347 >>Acceptez la quête Empêchez-les d'avancer
    .accept 14348 >>Acceptez la quête Impossible de s'en charger seul
	.target Prince Liam Greymane
step
    #sticky
    #label ForsakenInvader
    .goto 179,35.61,66.62,0,0
    >>Tuez les |cRXP_ENEMY_Forsaken Invaders|r
    .complete 14347,1 --Forsaken Invader slain (10)
	.mob Forsaken Invader
step
    #label Abominations
    #loop
    .goto 179,37.77,69.30,0
    .goto 179,34.23,69.98,0
    .goto 179,33.63,64.76,0
    .goto 179,37.77,69.30,30,0
    .goto 179,38.48,71.45,30,0
    .goto 179,37.24,71.34,30,0
    .goto 179,36.02,71.29,30,0
    .goto 179,34.23,69.98,30,0
    .goto 179,33.39,70.65,30,0
    .goto 179,33.33,71.73,30,0
    .goto 179,33.33,67.76,30,0
    .goto 179,33.63,64.76,30,0
    >>Ramassez |T132620:0|t|cRXP_LOOT_[Noir Gunpowder Kegs]|r sur le sol
    >>Lancez les |T132620:0|t|cRXP_LOOT_[Noir Gunpowder Kegs]|r sur les |cRXP_ENEMY_Horrid Abominations|r
    .collect 49202,4,14348,1,-1 --Black Gunpowder Keg (4)
    .complete 14348,1 --Gunpowder thrown at Abominations (4)
    .use 49202
	.mob Horrid Abomination
step
    .goto 179,35.94,66.16,15,0
    .goto 179,35.28,66.06,15,0
    .goto 179,35.76,67.31,15,0
    .goto 179,35.94,66.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prince Liam Grisetête|r
    .turnin 14347 >>Rendez la quête Empêchez-les d'avancer
    .turnin 14348,1 >>Rendez la quête Impossible de s'en charger seul << !Warrior !Rogue !Monk
    .turnin 14348,2 >>Rendez la quête Impossible de s'en charger seul << Warrior/Rogue/Monk
    .accept 14366 >>Acceptez la quête Tenir bon
	.target Prince Liam Greymane
step
    .goto 179,37.41,63.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwen Armstead|r à l'intérieur
    .turnin 14366 >>Rendez la quête Tenir bon
    .accept 14367 >>Acceptez la quête L'abri des Allen
	.target Gwen Armstead
step
    #optional
    #completewith next
    .goto 179,28.41,64.23,8,0
    .goto 179,28.32,63.88,6 >>Entrez dans la cave
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seigneur Godfrey|r et |cRXP_FRIENDLY_Melinda Hammond|r à l'intérieur
    .turnin 14367 >>Rendez la quête L'abri des Allen
    .accept 14369 >>Acceptez la quête Libérer la bête
    .accept 14382 >>Acceptez la quête Deux réprouvés sont dans un bateau...
    .goto 179,28.97,63.93
	.target +Lord Godfrey
    .accept 14368 >>Acceptez la quête Sauvez les enfants !
    .goto 179,28.93,64.04
	.target +Melinda Hammond
step
    #optional
    #label ChildrenHouse1
    #completewith Ashley
    .goto 179,28.32,63.88,6,0
    .goto 179,28.41,64.23,5 >>Sortez de la cave
step
    #optional
	#completewith Cynthia
    >>Tuez |cRXP_ENEMY_Forsaken Footsoldiers|r
    .complete 14369,1 --Forsaken Combatant slain (8)
	.mob Forsaken Footsoldier
step
    #optional
    #label ChildrenHouse2
    #requires ChildrenHouse1
    #completewith Ashley
    .goto 179,27.83,66.83,7 >>Entrez dans la maison
step
    #optional
    #completewith Ashley
    #requires ChildrenHouse2
    .goto 179,27.90,66.12,3,0
    .goto 179,28.19,66.32,3 >>Montez à l'étage
step
    #label Ashley
    .goto 179,27.88,66.66
    .cast 68598 >>Parlez à |cRXP_FRIENDLY_Ashley|r à l'étage
--  .complete 14368,2 --Ashley rescued (1)
	.target Ashley
    .isOnQuest 14368
--XX talk spell is about 0.5s faster than credit
step
    .goto 179,28.53,66.73,8,0
    .goto 179,28.71,66.78
    .cast 68596 >>Parlez à |cRXP_FRIENDLY_James|r à l'extérieur
--  .complete 14368,3 --James rescued (1)
	.target James
    .isOnQuest 14368
step
    #label Cynthia
    .goto 179,29.59,69.31
    .cast 68597 >>Parlez à |cRXP_FRIENDLY_Cynthia|r
--  .complete 14368,1 --Cynthia rescued (1)
	.target Cynthia
    .isOnQuest 14368
step
	#sticky
    #label Combatants
    #loop
    .goto 179,27.59,75.20,0
    .goto 179,26.15,74.55,0
    .goto 179,24.40,70.19,0
    .goto 179,24.55,69.00,0
    .waypoint 179,27.59,75.20,45,0
    .waypoint 179,27.39,73.94,45,0
    .waypoint 179,26.15,74.55,45,0
    .waypoint 179,24.29,73.29,45,0
    .waypoint 179,24.40,70.19,45,0
    .waypoint 179,24.55,69.00,45,0
    >>Tuez |cRXP_ENEMY_Forsaken Footsoldiers|r et |cRXP_ENEMY_Forsaken Sailors|r
    .complete 14369,1 --Forsaken Combatant slain (8)
	.mob *Forsaken Footsoldier
	.mob *Forsaken Sailor
step
    #optional
    #completewith Anson
    #loop
    .goto 179,28.39,72.09,0
    .goto 179,26.90,71.55,0
    .goto 179,26.26,70.66,0
    .goto 179,24.79,68.98,0
    .goto 179,25.13,72.09,0
    .goto 179,26.73,73.45,0
    .goto 179,28.39,72.09,45,0
    .goto 179,26.90,71.55,45,0
    .goto 179,26.26,70.66,45,0
    .goto 179,24.79,68.98,45,0
    .goto 179,25.13,72.09,45,0
    .goto 179,26.73,73.45,45,0
    >>Tuez le |cRXP_ENEMY_Machiniste réprouvé|r (s'il y en a un) pour faire de la place dans la |cRXP_FRIENDLY_Catapulte des Réprouvés|r
    .vehicle >>Entrez dans la |cRXP_FRIENDLY_Catapulte des Réprouvés|r
    .timer 59,La catapulte explose
	.mob Forsaken Machinist
    .target Forsaken Catapult
step
    #optional
    #completewith Anson
    +Tandis que vous êtes dans la |cRXP_FRIENDLY_Catapulte des Réprouvés|r :
    >>Visez soigneusement, puis lancez |T252175:0|t[Projeter] (1) pour être lancé sur le navire nord du |cRXP_ENEMY_Capitaine Anson|r
    *|cRXP_WARN_Souvenez-vous que vous pouvez vous déplacer tandis que vous êtes dans la|r |cRXP_FRIENDLY_Catapulte des Réprouvés|r
    *|cRXP_WARN_Assurez-vous que vous visez soigneusement, car vous pouvez être lancé sur le côté du bateau, ou dans l'eau au-delà du bateau|r
--XX Subzone 4714 (Gilneas) - can tie this to cast ID or subzone ID but there's no good way to hide this/detect if the player gets onto the boat or not
step
    #label Anson
    .goto 179,24.74,76.26,6,0
    .goto 179,24.94,76.50,6,0
    .goto 179,23.77,74.70
    >>Tuez le |cRXP_ENEMY_Capitaine Anson|r à l'étage inférieur du navire nord
    .complete 14382,1 --Captain Anson slain (1)
	.mob Captain Anson
--XX Would add waypoints but the Catapult step gives enough bloat as is
--XX Check if body type 2s can exit via cannon holes
step
    #optional
    #completewith Morris
    #label Catapult3
    .goto 179,24.94,76.50,6 >> Remontez de nouveau les escaliers
step
    #optional
    #requires Catapult3
    #completewith Morris
    #loop
    .goto 179,26.73,73.45,0
    .goto 179,26.90,71.55,0
    .goto 179,28.39,72.09,0
    .goto 179,29.61,74.10,0
    .goto 179,26.26,70.66,0
    .goto 179,24.79,68.98,0
    .goto 179,25.13,72.09,0
    .goto 179,26.73,73.45,45,0
    .goto 179,26.90,71.55,45,0
    .goto 179,28.39,72.09,45,0
    .goto 179,29.61,74.10,45,0
    .goto 179,26.26,70.66,45,0
    .goto 179,24.79,68.98,45,0
    .goto 179,25.13,72.09,45,0
    >>Tuez un |cRXP_ENEMY_Machiniste réprouvé|r pour faire de la place dans la |cRXP_FRIENDLY_Catapulte des Réprouvés|r
    .vehicle >>Entrez dans la |cRXP_FRIENDLY_Catapulte des Réprouvés|r
    .timer 59,La catapulte explose
	.mob Forsaken Machinist
    .target Forsaken Catapult
step
    #optional
    #requires Catapult3
    #completewith Morris
    +Tandis que vous êtes dans la |cRXP_FRIENDLY_Catapulte des Réprouvés|r :
    >>Visez soigneusement, puis lancez |T252175:0|t[Projeter] (1) pour être lancé sur le navire sud du |cRXP_ENEMY_Capitaine Morris|r
    *|cRXP_WARN_Souvenez-vous que vous pouvez vous déplacer tandis que vous êtes dans la|r |cRXP_FRIENDLY_Catapulte des Réprouvés|r
    *|cRXP_WARN_Assurez-vous que vous visez soigneusement, car vous pouvez être lancé sur le côté du bateau, ou dans l'eau au-delà du bateau|r
step
	#label Morris
    .goto 179,27.90,81.11,6,0
    .goto 179,28.06,81.32,6,0
    .goto 179,26.85,79.32
    >>Tuez le |cRXP_ENEMY_Capitaine Morris|r à l'étage inférieur du navire sud
    .complete 14382,2 --Captain Morris slain (1)
	.mob Captain Morris
step << skip
    #requires Combatants
    #completewith Unleash
    .goto 179,27.65,66.05,0
    .deathskip >>Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
    .subzoneskip 4792
--XX not worth the timesave
step
    #optional
    #requires Combatants
    #completewith Unleash
    .goto 179,28.41,64.23,8,0
    .goto 179,28.32,63.88,6 >>Entrez dans la cave
step
    #label Unleash
    #requires Combatants
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Melinda Hammond|r et au |cRXP_FRIENDLY_Seigneur Godfrey|r à l'intérieur
    .turnin 14368 >>Rendez la quête Sauvez les enfants !
    .goto 179,28.93,64.04
	.target +Melinda Hammond
    .turnin 14369 >>Rendez la quête Libérer la bête
    .turnin 14382 >>Rendez la quête Deux réprouvés sont dans un bateau...
    .accept 14386 >>Acceptez la quête Le chef de la meute
    .goto 179,28.97,63.93
	.target +Lord Godfrey
step
    .isOnQuest 14386
    #optional
    #completewith next
    .goto 179,28.32,63.88,6,0
    .goto 179,28.41,64.23,5 >>Sortez de la cave
step
    .isOnQuest 14386
    #completewith Thyala
    .cast 68682 >>Utilisez le |T132161:0|t[Mastiff Sifflet] pour invoquer les |cRXP_FRIENDLY_Attack Mastiffs|r pour attaquer le |cRXP_ENEMY_Forestier-sombre Thyala|r
step
    #label Thyala
    .goto 179,23.48,67.53
    >>Tuez le |cRXP_ENEMY_Forestier-sombre Thyala|r
    .complete 14386,1 --Dark Ranger Thyala slain (1)
    .use 49240
	.mob Dark Ranger Thyala
step
    #optional
    #completewith next
    .goto 179,28.41,64.23,8,0
    .goto 179,28.32,63.88,6 >>Entrez dans la cave
step
    .goto 179,28.97,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seigneur Godfrey|r
    .turnin 14386 >>Rendez la quête Le chef de la meute
    .accept 14396 >>Acceptez la quête Pendant que la terre se fracture
	.target Lord Godfrey
step
    #optional
    #label Cellar6
    #completewith next
    .goto 179,28.32,63.88,6,0
    .goto 179,28.41,64.23,5 >>Sortez de la cave
step
    .goto 179,29.03,65.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prince Liam Grisetête|r
    .turnin 14396 >>Rendez la quête Pendant que la terre se fracture
    .accept 14395 >>Acceptez la quête Besoin d'air
	.target Prince Liam Greymane
step
    #completewith next
    #loop
    .goto 179,27.20,68.79,0
    .goto 179,27.07,65.40,0
    .goto 179,27.93,66.03,0
    .goto 179,28.53,66.66,15,0
    .goto 179,28.64,67.08,15,0
    .goto 179,28.76,67.34,15,0
    .goto 179,28.00,67.26,15,0
    .goto 179,27.20,68.79,15,0
    .goto 179,26.34,68.02,15,0
    .goto 179,26.04,66.63,15,0
    .goto 179,26.45,65.92,15,0
    .goto 179,27.07,65.40,15,0
    .goto 179,27.89,66.66,15,0
    .goto 179,27.93,66.03,15,0
    .cast 68735 >>Ramassez le |cRXP_FRIENDLY_Veilleur qui se noie|r
	.target Drowning Watchman
    .isOnQuest 14395
--XXZ Zarant function
step
    .goto 179,29.03,65.05
    >>Ramenez le |cRXP_FRIENDLY_Veilleur qui se noie|r à |cRXP_FRIENDLY_Prince Liam Grisetête|r
    .complete 14395,1,1 --Drowning Watchman rescued (4)
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    #loop
    .goto 179,27.20,68.79,0
    .goto 179,27.07,65.40,0
    .goto 179,27.93,66.03,0
    .goto 179,28.53,66.66,15,0
    .goto 179,28.64,67.08,15,0
    .goto 179,28.76,67.34,15,0
    .goto 179,28.00,67.26,15,0
    .goto 179,27.20,68.79,15,0
    .goto 179,26.34,68.02,15,0
    .goto 179,26.04,66.63,15,0
    .goto 179,26.45,65.92,15,0
    .goto 179,27.07,65.40,15,0
    .goto 179,27.89,66.66,15,0
    .goto 179,27.93,66.03,15,0
    .cast 68735 >>Ramassez le |cRXP_FRIENDLY_Veilleur qui se noie|r
	.target Drowning Watchman
    .isOnQuest 14395
step
    #optional
    .goto 179,29.03,65.05
    >>Ramenez le |cRXP_FRIENDLY_Veilleur qui se noie|r à |cRXP_FRIENDLY_Prince Liam Grisetête|r
    .complete 14395,1,2 --Drowning Watchman rescued (4)
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    #loop
    .goto 179,27.20,68.79,0
    .goto 179,27.07,65.40,0
    .goto 179,27.93,66.03,0
    .goto 179,28.53,66.66,15,0
    .goto 179,28.64,67.08,15,0
    .goto 179,28.76,67.34,15,0
    .goto 179,28.00,67.26,15,0
    .goto 179,27.20,68.79,15,0
    .goto 179,26.34,68.02,15,0
    .goto 179,26.04,66.63,15,0
    .goto 179,26.45,65.92,15,0
    .goto 179,27.07,65.40,15,0
    .goto 179,27.89,66.66,15,0
    .goto 179,27.93,66.03,15,0
    .cast 68735 >>Ramassez le |cRXP_FRIENDLY_Veilleur qui se noie|r
	.target Drowning Watchman
    .isOnQuest 14395
step
    #optional
    .goto 179,29.03,65.05
    >>Ramenez le |cRXP_FRIENDLY_Veilleur qui se noie|r à |cRXP_FRIENDLY_Prince Liam Grisetête|r
    .complete 14395,1,3 --Drowning Watchman rescued (4)
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    #loop
    .goto 179,27.20,68.79,0
    .goto 179,27.07,65.40,0
    .goto 179,27.93,66.03,0
    .goto 179,28.53,66.66,15,0
    .goto 179,28.64,67.08,15,0
    .goto 179,28.76,67.34,15,0
    .goto 179,28.00,67.26,15,0
    .goto 179,27.20,68.79,15,0
    .goto 179,26.34,68.02,15,0
    .goto 179,26.04,66.63,15,0
    .goto 179,26.45,65.92,15,0
    .goto 179,27.07,65.40,15,0
    .goto 179,27.89,66.66,15,0
    .goto 179,27.93,66.03,15,0
    .cast 68735 >>Ramassez le |cRXP_FRIENDLY_Veilleur qui se noie|r
	.target Drowning Watchman
    .isOnQuest 14395
step
    #optional
    .goto 179,29.03,65.05
    >>Ramenez le |cRXP_FRIENDLY_Veilleur qui se noie|r à |cRXP_FRIENDLY_Prince Liam Grisetête|r
    .complete 14395,1 --Drowning Watchman rescued (4)
	.target Prince Liam Greymane
step
    .goto 179,29.03,65.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prince Liam Grisetête|r
    .turnin 14395,1 >>Rendez la quête Besoin d'air
    .accept 14397 >>Acceptez la quête L'évacuation
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    .goto 179,35.95,63.54,20,0
    .goto 179,37.63,65.23,12 >>Voyagez vers |cRXP_FRIENDLY_Gwen Armstead|r
step
    .goto 179,37.63,65.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwen Armstead|r.
    .turnin 14397 >>Rendez la quête L'évacuation
    .accept 14398 >>Acceptez la quête Grand-maman Wahl
    .accept 14403 >>Acceptez la quête Les frères Hayward
    .accept 14406 >>Acceptez la quête Le verger de Crowley
	.target Gwen Armstead
step
    .goto 179,37.68,72.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lorna Crowley|r.
    .turnin 14406 >>Rendez la quête Le verger de Crowley
    .accept 14416 >>Acceptez la quête L'ettin affamé
	.target Lorna Crowley
step
    #optional
    #completewith next
    #loop
    .goto 179,39.82,75.32,0
    .goto 179,40.11,79.92,0
    .goto 179,39.90,81.96,0
    .goto 179,38.21,81.88,0
    .goto 179,39.82,75.32,20,0
    .goto 179,40.26,75.67,20,0
    .goto 179,40.24,77.06,20,0
    .goto 179,39.72,77.14,20,0
    .goto 179,40.11,79.92,20,0
    .goto 179,39.90,81.96,20,0
    .goto 179,38.21,81.88,20,0
    .vehicle >>Montez sur un |cRXP_FRIENDLY_Cheval des montagnes|r
    .target Mountain Horse
step
    .goto 179,39.82,75.32,0
    .goto 179,40.11,79.92,0
    .goto 179,39.90,81.96,0
    .goto 179,38.21,81.88,0
    .goto 179,40.26,75.67,20,0
    .goto 179,40.24,77.06,20,0
    .goto 179,37.68,72.76
    >>Tandis que vous chevauchez un |cRXP_FRIENDLY_Cheval des montagnes|r :
    >>Lancez |T134326:0|t[Faire suivre le cheval] (1) sur |cRXP_FRIENDLY_Mountain Horses|r pour les faire vous suivre
    >>Guidez 5 |cRXP_FRIENDLY_Mountain Horses|r (y compris le vôtre) vers |cRXP_FRIENDLY_Lorna Crowley|r
    >>|cRXP_WARN_Évitez |cRXP_ENEMY_Koroth le Brise-collines|r
    .complete 14416,1 --Mountain Horse rescued (5)
	.target Mountain Horse
	.target Lorna
    .unitscan Koroth the Hillbreaker
--XXZ Zarant function
step
    .goto 179,37.68,72.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lorna Crowley|r.
    .turnin 14416 >>Rendez la quête L'ettin affamé
	.target Lorna Crowley
step
    #optional
    #completewith next
    .goto 179,33.00,76.02,15,0
    .goto 179,32.57,75.84,6 >>Entrez au Cottage des Wahl
step
    .goto 179,32.52,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grand-maman Wahl|r dedans
    .turnin 14398 >>Rendez la quête Grand-maman Wahl
    .accept 14399 >>Acceptez la quête Grand-maman a complètement perdu l'esprit
	.target Grandma Wahl
step
    .goto 179,33.96,77.38
    >>Ramassez le |cRXP_LOOT_Linen-Wrapped Livre|r sur le sol
    .complete 14399,1 --Linen-Wrapped Book (1)
step
    .goto 179,32.52,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grand-maman Wahl|r dedans
    .turnin 14399 >>Rendez la quête Grand-maman a complètement perdu l'esprit
    .accept 14400 >>Acceptez la quête Je ne peux pas porter ça
	.target Grandma Wahl
step
    #optional
    #completewith next
    .goto 179,32.50,76.06,8,0
    .goto 179,32.27,76.07,10,0
    .goto 179,32.04,75.45,10 >>Voyagez vers les |cRXP_LOOT_Vêtements de bonne qualité de grand-maman|r dehors
step
    .goto 179,32.04,75.45
    >>Ramassez les |cRXP_LOOT_Vêtements de bonne qualité de grand-maman|r dehors
    .complete 14400,1 --Grandma's Good Clothes (1)
step
    .goto 179,32.52,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grand-maman Wahl|r dedans
    .turnin 14400 >>Rendez la quête Je ne peux pas porter ça
    .accept 14401 >>Acceptez la quête Le chat de grand-maman
	.target Grandma Wahl
step
    #optional
    #completewith next
    .goto 179,35.16,74.82
    .cast 68743 >>Cliquez sur |cRXP_FRIENDLY_Chance le chat|r sur le sol pour invoquer |cRXP_ENEMY_Lucius le Cruel|r
	.mob Lucius the Cruel
    .isOnQuest 14401
step
    .goto 179,35.24,74.98
    >>Tuez |cRXP_ENEMY_Lucius le Cruel|r. Dépouillez-le pour |cRXP_LOOT_Chance le chat|r
    .complete 14401,1 --Chance the Cat (1)
	.mob Lucius the Cruel
step
    #optional
    #completewith next
    .goto 179,33.00,76.02,15,0
    .goto 179,32.57,75.84,6 >>Entrez dans le Cottage des Wahl
step
    .goto 179,32.52,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grand-maman Wahl|r à l'intérieur
    .turnin 14401 >>Rendez la quête Le chat de grand-maman
	.target Grandma Wahl
step
    .goto 179,36.89,84.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sebastian Hayward|r
    .turnin 14403 >>Rendez la quête Les frères Hayward
    .accept 14404 >>Acceptez la quête Pas très bon état général
    .accept 14412 >>Acceptez la quête Des Réprouvés à la mer
	.target Sebastian Hayward
step
	#sticky
    #label Castaways
    #loop
    .goto 179,36.89,84.68,0
    .waypoint 179,37.31,84.32,6,0
    .waypoint 179,36.89,84.68,6,0
    .waypoint 179,36.57,84.53,6,0
    >>Tuez |cRXP_ENEMY_Forsaken Castaways|r
    .complete 14412,1 --Forsaken Castaway slain (6)
	.mob Forsaken Castaway
step
    .goto 179,37.58,85.98
    >>Ouvrez le |cRXP_PICK_Barrel of Charbon Goudron|r sur le sol. Ramassez-le pour le |cRXP_LOOT_Coal Goudron|r
    .complete 14404,3 --Coal Tar (1)
step
    #optional
    #completewith next
    .goto 179,37.05,86.81,6 >>Entrez la maison Pêcheries Hayward
step
    .goto 179,37.46,87.15
    >>Ramassez le |cRXP_LOOT_Shipwright's Outils|r sur le sol à l'intérieur
    .complete 14404,1 --Shipwright's Tools (1)
step
    .goto 179,36.09,86.44
    >>Ramassez les |cRXP_LOOT_Planks of Bois|r sur le sol
    .complete 14404,2 --Planks of Wood (1)
step
    #requires Castaways
    .goto 179,36.89,84.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sebastian Hayward|r
    .turnin 14404 >>Rendez la quête Pas très bon état général
    .turnin 14412 >>Rendez la quête Des Réprouvés à la mer
    .accept 14405 >>Acceptez la quête L'évasion par la mer
	.target Sebastian Hayward
step
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour vous téléporter à Havre-du-Soir
step << Priest cata
    .goto 179,36.015,64.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sœur Almyra|r
    .trainer >> Apprenez vos sorts de classe
    .target Sister Almyra
step << Druid cata
    .goto 179,36.276,64.123
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Célestine de la Moisson|r
    .trainer >> Apprenez vos sorts de classe
    .target Celestine of the Harvest
step << Mage cata
    .goto 179,36.099,63.825
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Myriam Eveillesort|r
    .trainer >> Apprenez vos sorts de classe
    .target Celestine of the Harvest
step << Warlock cata
    .goto 179,35.824,63.866
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vitus Sombremarcheur|r
    .trainer >> Apprenez vos sorts de classe
    .target Vitus Darkwalker
step << Rogue cata
    .goto 179,36.735,65.379
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loren la Receleuse|r
    .trainer >> Apprenez vos sorts de classe
    .target Loren the Fence
step << Hunter cata
    .goto 179,38.032,63.359
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Veneur Blake|r
    .trainer >> Apprenez vos sorts de classe
    .target Huntsman Blake
step << Warrior cata
    .goto 179,38.278,63.457
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergent Cleese|r
    .trainer >> Apprenez vos sorts de classe
    .target Sergeant Cleese
step
    .goto 179,37.63,65.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwen Armstead|r.
    .turnin 14405 >>Rendez la quête L'évasion par la mer
    .accept 14465 >>Acceptez la quête Direction le manoir de Grisetête
	.timer 32,RP de Direction le manoir de Grisetête
	.target Gwen Armstead
step << skip
    #optional
    #label Manor01
    #completewith next
    >>Attendez le temps du RP
--XX add waypoint to tie to timer
step
    #optional
    #completewith next
    .goto 179,30.27,52.03,15,0
    .goto 179,29.54,51.55,15,0
    .goto 179,28.67,51.02,10 >>Enter Greymane Manor
step
    .goto 179,28.132,50.021
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Reine Mia Grisetête|r à l'intérieur
    .turnin 14465 >>Rendez la quête Direction le manoir de Grisetête
    .accept 14466 >>Acceptez la quête L'observatoire du roi
	.target Queen Mia Greymane
step
    #optional
    #label Manor1
    #completewith AlasGilneas
    .goto 179,27.89,48.10,15,0
    .goto 179,27.11,48.12,15 >>Montez vers le balcon
step
    #optional
    #label Manor2
    #requires Manor1
    #completewith AlasGilneas
    .goto 179,26.16,46.41,10,0
    .goto 179,26.74,46.34,10 >>Montez au sommet de la tour du Manor
step
    #label AlasGilneas
    .goto 179,26.44,46.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Roi Genn Grisetête|r au sommet de la Tour
	>>|cRXP_WARN_Appuyez sur "Échap./Esc." pour passer la cinématique|r
    .turnin 14466 >>Rendez la quête L'observatoire du roi
    .turnin 14467 >>Rendez la quête Hélas, Gilnéas !
    .accept 24438 >>Acceptez la quête L'exode
	.target King Genn Greymane
step
    #optional
    #completewith next
    .goto 179,29.12,51.80,20,0
    .goto 179,29.86,52.22,15 >>Descend the tower, then exit Greymane Manor. Jump down toward the |cRXP_FRIENDLY_Stagecoach Carriage|r
step
    .goto 179,28.90,54.22
    .isOnQuest 24438
    .vehicle >>Entrez la |cRXP_FRIENDLY_Voiture de la diligence|r
    .timer 80,Voiture de la diligence - Conduite RP
    .target Stagecoach Carriage
step
    .isOnQuest 24438
    .goto 179,51.81,80.49,10 >> Attendez le temps du RP
step
    .goto 179,51.81,80.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prince Liam Grisetête|r
    .turnin 24438 >>Rendez la quête L'exode
    .accept 24468 >>Acceptez la quête Coincés dans les marais
	.target Prince Liam Greymane
step
    #loop
    .goto 179,53.08,74.25,0
    .goto 179,52.73,72.07,0
    .goto 179,52.23,68.59,0
    .goto 179,53.08,74.25,45,0
    .goto 179,52.04,73.67,45,0
    .goto 179,51.75,72.92,45,0
    .goto 179,51.41,71.57,45,0
    .goto 179,52.73,72.07,45,0
    .goto 179,53.59,71.89,45,0
    .goto 179,53.95,73.95,45,0
    .goto 179,53.56,68.69,45,0
    .goto 179,52.23,68.59,45,0
    .goto 179,50.45,68.07,45,0
    .goto 179,51.46,69.67,45,0
    >>Sauvez les |cRXP_FRIENDLY_Crash Survivors|r en tuant les |cRXP_ENEMY_Swamp Crocolisks|r qui les attaquent
    .complete 24468,1 --Crash Survivor rescued (5)
	.mob Swamp Crocolisk
    .target Crash Survivor
step
    .goto 179,51.81,80.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prince Liam Grisetête|r
    .turnin 24468 >>Rendez la quête Coincés dans les marais
    .accept 24472 >>Acceptez la quête Des présentations dans les règles
	.target Prince Liam Greymane
step
    #optional
    #completewith Koroth
    .goto 179,50.38,84.87,15,0
    .goto 179,48.88,84.64,15,0
    .goto 179,48.14,85.41,15,0
    .goto 179,46.74,83.20,12 >>Voyagez vers |cRXP_LOOT_Bannière de Koroth|r au sommet de la montagne
step
    #sticky
    #label Ogres
    #loop
    .goto 179,46.93,85.06,0
    .goto 179,50.56,85.62,0
    .waypoint 179,46.93,85.06,45,0
    .waypoint 179,45.77,87.30,45,0
    .waypoint 179,45.77,88.95,45,0
    .waypoint 179,45.26,87.21,45,0
    .waypoint 179,48.10,86.57,45,0
    .waypoint 179,49.25,83.82,45,0
    .waypoint 179,50.56,85.62,45,0
    >>Tuez |cRXP_ENEMY_Ogre Minions|r
    .complete 24472,1 --Ogre Minion slain (4)
	.mob Ogre Minion
step
    #label Koroth
    .goto 179,46.74,83.20
    >>Ramassez la |cRXP_LOOT_Bannière de Koroth|r sur le sol
    .complete 24472,2 --Koroth's Banner (1)
step
    #requires Ogres
    .goto 179,51.81,80.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prince Liam Grisetête|r
    .turnin 24472 >>Rendez la quête Des présentations dans les règles
    .accept 24483 >>Acceptez la quête Val-Tempête
	.target Prince Liam Greymane
step << !Mage
    #optional
    #completewith next
    .goto 179,53.19,84.01,30,0
    .goto 179,55.27,87.50,30,0
    .goto 179,58.49,91.88,30,0
    .goto 179,59.33,92.34,12,0
    .goto 179,59.84,91.92,6 >>Entrez dans la maison de |cRXP_FRIENDLY_Gwen Armstead|r à Val-Tempête
step << Mage
    .goto 179,59.073,92.955
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Myriam Eveillesort|r
    .trainer >> Apprenez vos sorts de classe
    .target Myriam Spellwaker
step
    .goto 179,59.86,91.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwen Armstead|r à l'intérieur
    .turnin 24483 >>Rendez la quête Val-Tempête
    .accept 24484 >>Acceptez la quête Contrôle des nuisibles
	.target Gwen Armstead
step
    #sticky
    #label Stormglen
    .goto 179,60.06,91.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Willa Arnes|r à l'intérieur
    .home >>Liez votre Pierre de foyer au village de Val-Tempête
    .isQuestAvailable 24495
step
    .goto 179,60.26,91.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lorna Crowley|r dedans
    .accept 24495 >>Acceptez la quête Les fragments du passé
	.target Lorna Crowley
step << Priest
    .goto 179,60.482,91.587
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sœur Almyra|r à l'étage
    .trainer >> Apprenez vos sorts de classe
    .target Sister Almyra
step << Druid
    .goto 179,60.002,92.230
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Célestine de la Moisson|r
    .trainer >> Apprenez vos sorts de classe
    .target Celestine of the Harvest
step << Warrior
    .goto 179,59.500,91.003
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergent Cleese|r
    .trainer >> Apprenez vos sorts de classe
    .target Sergeant Cleese
step << Rogue
    .goto 179,60.255,90.426
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loren la Receleuse|r
    .trainer >> Apprenez vos sorts de classe
    .target Loren the Fence
step << Hunter
    .goto 179,60.468,90.790
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Veneur Blake|r
    .trainer >> Apprenez vos sorts de classe
    .target Huntsman Blake
step << Warlock
    .goto 179,61.723,91.088
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vitus Sombremarcheur|r
    .trainer >> Apprenez vos sorts de classe
    .target Vitus Darkwalker
step
    #sticky
    #requires Stormglen
    #label JournalP
    #loop
    .goto 179,62.32,92.85,0
    .goto 179,65.14,90.76,0
    .goto 179,67.36,92.29,0
    .goto 179,62.32,92.85,15,0
    .goto 179,62.98,92.74,15,0
    .goto 179,63.84,91.65,15,0
    .goto 179,64.33,90.99,15,0
    .goto 179,64.82,90.71,15,0
    .goto 179,65.14,90.76,15,0
    .goto 179,65.45,90.92,15,0
    .goto 179,65.78,90.96,15,0
    .goto 179,65.22,92.46,15,0
    .goto 179,65.48,91.64,15,0
    .goto 179,65.91,90.76,15,0
    .goto 179,66.40,90.82,15,0
    .goto 179,67.18,90.80,15,0
    .goto 179,67.41,91.41,15,0
    .goto 179,67.36,92.29,15,0
    >>Ramassez les |cRXP_LOOT_Old Entités de MoP Pages|r sur le sol
    .complete 24495,1 --Old Journal Page (6)
step
    #requires Stormglen
    #loop
    .goto 179,65.32,92.71,0
    .goto 179,65.53,88.51,0
    .goto 179,65.59,90.93,0
    .goto 179,65.32,92.71,45,0
    .goto 179,66.30,91.16,45,0
    .goto 179,67.59,92.29,45,0
    .goto 179,67.50,88.31,45,0
    .goto 179,65.53,88.51,45,0
    .goto 179,62.70,91.02,45,0
    .goto 179,63.53,89.30,45,0
    .goto 179,63.64,91.38,45,0
    .goto 179,65.12,91.93,45,0
    .goto 179,65.59,90.93,45,0
    >>Tuez |cRXP_ENEMY_Vilebrood Skitterers|r
    .complete 24484,1 --Vilebrood Skitterer slain (6)
	.mob Vilebrood Skitterer
step
    #optional
    #requires JournalP
    #completewith next
    .goto 179,60.37,91.46,8 >>Entrez dans la maison
step
    #requires JournalP
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lorna Crowley|r et |cRXP_FRIENDLY_Gwen Armstead|r à l'intérieur
    .turnin 24495 >>Rendez la quête Les fragments du passé
    .goto 179,60.26,91.85
	.target +Lorna Crowley
    .turnin 24484 >>Rendez la quête Contrôle des nuisibles
    .accept 24501 >>Acceptez la quête La reine des enquiquineuses
    .goto 179,59.86,91.71
	.target +Gwen Armstead
step
    .goto 179,68.35,81.65
    >>Tuez |cRXP_ENEMY_Rygna|r
    .complete 24501,1 --Rygna slain (1)
	.mob Rygna
step
    #optional
    #requires JournalP
    #completewith next
    .goto 179,60.37,91.46,8 >>Entrez dans la maison
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwen Armstead|r et |cRXP_FRIENDLY_Lorna Crowley|r à l'intérieur
    .turnin 24501 >>Rendez la quête La reine des enquiquineuses
    .goto 179,59.86,91.71
	.target +Gwen Armstead
    .accept 24578 >>Acceptez la quête La forêt Noire
    .goto 179,60.26,91.85
	.target +Lorna Crowley
step
    .goto 179,63.35,82.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belysra Soufflétoile|r.
    .turnin 24578 >>Rendez la quête La forêt Noire
    .accept 24616 >>Acceptez la quête Effacez vos traces
	.target Belysra Starbreeze
step
    #optional
    #sticky
    #label Trap1
    #completewith Scout
    .goto 179,63.92,81.25
    .aura 70794 >>|cRXP_WARN_Coursez sur la route pour vous retrouver pris dans|r |T134916:0|t[Piège givrant] |cRXP_WARN_et invoquez le |cRXP_ENEMY_Eclaireur noir|r. Utilisez|r |T133443:0|t[Talisman de Belysra] |cRXP_WARN_pour dissiper le|r |T134916:0|t[Piège givrant]
    .use 49944
step
    #optional
    #sticky
    #requires Trap1
    #completewith Scout
    .goto 179,63.92,81.25
    .aura -70794 >>|cRXP_WARN_Utilisez|r |T133443:0|t[Talisman de Belysra] |cRXP_WARN_pour dissiper le|r |T134916:0|t[Piège givrant]
    .use 49944
--XXZ Currently doesnt work (aura needs to count debuffs)
step
    #label Scout
    .goto 179,64.12,80.52
    >>Tuez le |cRXP_ENEMY_Eclaireur noir|r
    .complete 24616,1 --Dark Scout slain (1)
	.mob Dark Scout
    .use 49944
step
    .goto 179,63.35,82.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belysra Soufflétoile|r.
    .turnin 24616 >>Rendez la quête Effacez vos traces
    .accept 24617 >>Acceptez la quête Tal'doren, le foyer sauvage
	.target Belysra Starbreeze
step
    .goto 179,68.72,73.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seigneur Darius Crowley|r
    .turnin 24617 >>Rendez la quête Tal'doren, le foyer sauvage
    .accept 24627 >>Acceptez la quête À nos portes
	.target Lord Darius Crowley
step
    .goto 179,69.30,72.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vassandra Grifforage|r
    .accept 24628 >>Acceptez la quête Préparations
	.target Vassandra Stormclaw
step
    #sticky
    #label Banshees
    #loop
    .goto 179,64.34,75.55,0
    .goto 179,60.44,78.54,0
    .goto 179,64.23,72.55,0
    .goto 179,64.34,75.55,45,0
    .goto 179,61.21,77.57,45,0
    .goto 179,61.38,79.02,45,0
    .goto 179,61.86,79.10,45,0
    .goto 179,60.44,78.54,45,0
    .goto 179,60.19,80.23,45,0
    .goto 179,60.41,76.88,45,0
    .goto 179,59.79,75.62,45,0
    .goto 179,63.38,74.31,45,0
    .goto 179,64.23,72.55,45,0
    >>Tuez |cRXP_ENEMY_Howling Banshees|r
    .complete 24627,1 --Howling Banshee slain (6)
	.mob Howling Banshee
step
    #optional
    .goto 179,60.64,74.63,0
    .goto 179,63.59,73.45,0
    .goto 179,62.70,76.04,0
    .goto 179,59.97,77.38,0
    .goto 179,60.64,74.63,15,0
    .goto 179,60.95,74.43,15,0
    .goto 179,61.19,74.67,15,0
    .goto 179,61.51,72.89,15,0
    .goto 179,63.38,73.45,15,0
    .goto 179,63.59,73.45,15,0
    .goto 179,66.17,71.64,15,0
    .goto 179,67.04,71.91,15,0
    .goto 179,67.18,75.96,15,0
    .goto 179,65.23,76.21,15,0
    .goto 179,62.70,76.04,15,0
    .goto 179,61.99,75.87,15,0
    .goto 179,61.44,78.34,15,0
    .goto 179,62.27,79.09,15,0
    .goto 179,61.23,79.36,15,0
    .goto 179,60.97,79.56,15,0
    .goto 179,60.06,78.49,15,0
    .goto 179,59.77,78.08,15,0
    .goto 179,59.97,77.38,15,0
    >>Butin |cRXP_LOOT_Feuillelune|r sur le sol
    *|cRXP_WARN_Vous pouvez voir la position de |cRXP_LOOT_Feuillelune|r sur votre minicarte si vous avez|r |T133939:0|t[Découverte d'herbes] |cRXP_WARN_activé|r
    .complete 24628,1 --Moonleaf (6)
	.skill herbalism,1,1
step
    .goto 179,60.64,74.63,0
    .goto 179,63.59,73.45,0
    .goto 179,62.70,76.04,0
    .goto 179,59.97,77.38,0
    .goto 179,60.64,74.63,15,0
    .goto 179,60.95,74.43,15,0
    .goto 179,61.19,74.67,15,0
    .goto 179,61.51,72.89,15,0
    .goto 179,63.38,73.45,15,0
    .goto 179,63.59,73.45,15,0
    .goto 179,66.17,71.64,15,0
    .goto 179,67.04,71.91,15,0
    .goto 179,67.18,75.96,15,0
    .goto 179,65.23,76.21,15,0
    .goto 179,62.70,76.04,15,0
    .goto 179,61.99,75.87,15,0
    .goto 179,61.44,78.34,15,0
    .goto 179,62.27,79.09,15,0
    .goto 179,61.23,79.36,15,0
    .goto 179,60.97,79.56,15,0
    .goto 179,60.06,78.49,15,0
    .goto 179,59.77,78.08,15,0
    .goto 179,59.97,77.38,15,0
    >>Butin |cRXP_LOOT_Feuillelune|r sur le sol
    .complete 24628,1 --Moonleaf (6)
    .skill herbalism,<1,1
step
    #requires Banshees
    .goto 179,68.72,73.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seigneur Darius Crowley|r
    .turnin 24627 >>Rendez la quête À nos portes
    .accept 24646 >>Acceptez la quête Reprendre ce qui nous appartient
	.target Lord Darius Crowley
step
    .goto 179,69.30,72.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vassandra Grifforage|r
    .turnin 24628 >>Rendez la quête Préparations
	.target Vassandra Stormclaw
step
    #optional
    #label Taldoren
    #completewith ScytheOfElune
    .goto 179,58.14,75.79
    .cast 71061 >>|cRXP_WARN_Utilisez le|r |T134229:0|t[Cor de Tal’doren] |cRXP_WARN_pour distraire les|r |cRXP_ENEMY_Veteran Sombre Forestiers|r
    .use 50134
    .unitscan Veteran Dark Ranger
step
    #optional
    #requires Taldoren
    #completewith ScytheOfElune
    .goto 179,57.85,75.95,8 >> Entrez dans la maison
step
    #label ScytheOfElune
    .goto 179,57.51,75.59
	>>Ouvrez le |cRXP_PICK_Worn Coffer|r à l'intérieur. Fouillez-le pour le |cRXP_LOOT_Mysterious Artéfact|r
    .complete 24646,1 --Mysterious Artifact (1)
    .use 50134
step
    .goto 179,68.72,73.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seigneur Darius Crowley|r
    .turnin 24646 >>Rendez la quête Reprendre ce qui nous appartient
    .accept 24593 >>Acceptez la quête Ni homme ni bête
	.target Lord Darius Crowley
step
    >>Buvez du |cRXP_PICK_Well of Fureur|r, du |cRXP_PICK_Well of Tranquillité|r, et du |cRXP_PICK_Well of Rétablir l’équilibre|r
    .complete 24593,1 --Well of Fury (1)
    .goto 179,68.98,72.80,-1
    .complete 24593,2 --Well of Tranquility (1)
    .goto 179,69.26,73.10,-1
    .complete 24593,3 --Well of Balance (1)
    .goto 179,69.14,73.52,-1
step
    .goto 179,68.72,73.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seigneur Darius Crowley|r
    .turnin 24593 >>Rendez la quête Ni homme ni bête
    .accept 24673 >>Acceptez la quête Retour à Val-Tempête
	.target Lord Darius Crowley
step
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour vous téléporter à Val-Tempête
step
    .goto 179,59.86,91.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwen Armstead|r à l'intérieur
    .turnin 24673 >>Rendez la quête Retour à Val-Tempête
    .accept 24672 >>Acceptez la quête En constante progression
	.target Gwen Armstead
step
    #optional
    #completewith next
    .goto 179,60.44,91.30,8,0
    .goto 179,68.80,85.65,45,0
    .goto 179,72.02,82.07,30,0
    .goto 179,72.73,80.05,12 >>Voyagez vers |cRXP_FRIENDLY_Krennas Aranas|r
step
    .goto 179,72.73,80.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krennas Aranas|r
    .turnin 24672 >>Rendez la quête En constante progression
    .accept 24592 >>Acceptez la quête Trahison aux confins de la Tourmente
	.target Krennas Aranas
step
    #optional
    #label Walden1
    #completewith Walden
    .goto 179,74.82,76.94,30,0
    .goto 179,76.67,72.75
    .subzone 4788 >>Voyagez vers Confins de la Tourmente
step
    #optional
    #sticky
    #label KrennanStealth
    #requires Walden1
    #completewith TempestBetrayal
    .cast 70456 >>|cRXP_WARN_Utiliser|r |T135446:0|t[Krennan's Potion of Camouflage] |cRXP_WARN_pour devenir|r |T132320:0|t[Camouflé]
    >>|cRXP_WARN_Tandis que|r |T132320:0|t[Camouflé]|cRXP_WARN_, vous pouvez lancer la plupart des sorts. Le|r |T132320:0|t[Camouflage] |cRXP_WARN_se rompt lors de l'entrée au combat|r
    >>|cRXP_WARN_NOTE :|cRXP_ENEMY_ |rMountain Mastiffs|r ont une détection de |T132320:0|t[Camouflage] |cRXP_WARN_augmentée|r
    .use 50218
step
    #optional
    #sticky
    #requires KrennanStealth
    #completewith TempestBetrayal
    +|cRXP_WARN_Si votre|r |T132320:0|t[Camouflage] |cRXP_WARN_se rompt, utilisez|r |T135446:0|t[Krennan's Potion of Camouflage] |cRXP_WARN_pour devenir|r |T132320:0|t[Camouflé] |cRXP_WARN_à nouveau (fonctionne au combat)|r
    >>|cRXP_WARN_Tandis que|r |T132320:0|t[Camouflé]|cRXP_WARN_, vous pouvez lancer la plupart des sorts. Le|r |T132320:0|t[Camouflage] |cRXP_WARN_se rompt lors de l'entrée au combat|r
    >>|cRXP_WARN_NOTE :|cRXP_ENEMY_ |rMountain Mastiffs|r ont une détection de |T132320:0|t[Camouflage] |cRXP_WARN_augmentée|r
    .use 50218
step
    #optional
    #requires Walden1
    #completewith Walden
    .goto 179,74.82,76.94,30,0
    .goto 179,76.67,72.75,15,0
    .goto 179,76.84,72.10,12,0
    .goto 179,76.88,71.32,12,0
    .goto 179,78.25,70.46,15,0
    .goto 179,79.25,67.92,15,0
    .goto 179,79.29,64.84,35 >>Voyagez avec prudence entre les bâtiments et les collines vers |cRXP_ENEMY_Seigneur Walden|r
step
    #label Walden
    .goto 179,79.29,64.84,30,0
    .goto 179,78.25,65.86,6,0
    .goto 179,78.03,66.47,4,0
    .goto 179,77.83,66.14,4,0
    .goto 179,78.20,65.97,4,0
    .goto 179,78.11,66.23
    >>Tuez |cRXP_ENEMY_Seigneur Walden|r
    >>|cRXP_WARN_Il patrouille entre l'extérieur et l'intérieur de la maison, notamment à l'étage supérieur|r
    >>|cRXP_WARN_Soyez prudent alors qu'il lance|r |T132797:0|t[Brandy vieilli] |cRXP_WARN_(Instant à distance : étourdit pendant 4 secondes et inflige des dégâts)|r
    .complete 24592,2 --Lord Walden slain (1)
	.mob Lord Walden
step
    #optional
    #completewith next
    .goto 179,82.67,69.63,30,0
    .goto 179,84.22,72.50,30,0
    .goto 179,85.47,73.25,15,0
    .goto 179,79.29,64.84,35 >>Voyagez vers |cRXP_ENEMY_Baron Ashbury|r
step
    #label Ashbury
    .goto 179,85.44,74.22,15,0
    .goto 179,84.93,74.37,15,0
    .goto 179,84.21,74.80
    >>Tuez |cRXP_ENEMY_Baron Ashbury|r
    >>|cRXP_WARN_Il patrouille entre les portes de sa maison|r
    .complete 24592,1 --Baron Ashbury slain (1)
	.mob Baron Ashbury
step
    #label TempestBetrayal
    .goto 179,78.28,72.07
    .use 50218 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Roi Genn Grisetête|r.
    .turnin 24592 >>Rendez la quête Trahison aux confins de la Tourmente
    .accept 24677 >>Acceptez la quête Contourner les Réprouvés
	.target King Genn Greymane
step
    #completewith next
    .goto 179,78.33,71.88
    .vehicle >>Parlez à |cRXP_FRIENDLY_Seigneur Hewell|r pour monter sur un |cRXP_FRIENDLY_Cheval des montagnes robuste|r vers |cRXP_FRIENDLY_Lorna Crowley|r
    .timer 100.5,Flank the Forsaken RP
    .target Lord Hewell
    .skipgossip 38764,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lorna Crowley|r, |cRXP_FRIENDLY_Magda Whitewall|r, et |cRXP_FRIENDLY_Marcus|r
    .turnin 24677 >>Rendez la quête Contourner les Réprouvés
    .accept 24575 >>Acceptez la quête Le jour de la libération
    .goto 179,70.88,39.84
	.target +Lorna Crowley
    .accept 24675 >>Acceptez la quête Un dernier repas
    .goto 179,70.65,39.70
	.target +Magda Whitewall
    .accept 24674 >>Acceptez la quête Esclaves de personne
    .goto 179,70.29,40.05,8,0
    .goto 179,70.63,40.12,8,0
    .goto 179,71.25,39.78
	.target +Marcus
step
    #loop
    .goto 179,75.70,39.60,0
    .goto 179,76.24,45.37,0
    .goto 179,77.83,35.81,0
    .goto 179,75.70,39.60,45,0
    .goto 179,76.12,42.77,45,0
    .goto 179,76.24,45.37,45,0
    .goto 179,77.22,46.97,45,0
    .goto 179,78.11,43.54,45,0
    .goto 179,78.05,38.73,45,0
    .goto 179,77.83,35.81,45,0
    >>Tuez |cRXP_ENEMY_Brown Stags|r. Ramassez-les pour |cRXP_LOOT_Sides of Stag Viande|r
    .complete 24675,1 --Side of Stag Meat (10)
	.mob Brown Stag
step
    #sticky
    #label Enslaved
    #loop
    .goto 179,75.71,31.17,0
    .waypoint 179,82.16,30.73,20,0
    .waypoint 179,81.95,26.18,20,0
    .waypoint 179,78.75,25.15,20,0
    .waypoint 179,79.37,27.64,20,0
    >>Tuez |cRXP_ENEMY_Forsaken Slavedrivers|r. Ramassez-les pour |T134247:0|t|cRXP_LOOT_[Slaver's Keys]|r
    >>Utilisez |T134247:0|t|cRXP_LOOT_[Slaver's Keys]|r sur |cRXP_PICK_Ball and Chaîne|r des |cRXP_FRIENDLY_Enslaved Villagers|r à l'intérieur et autour de Mine de Pierrebraise pour les libérer
    .collect 49881,5,24575,1,-1 --Slaver's Key (5)
    .complete 24575,1 --Enslaved Gilnean freed (5)
	.mob Forsaken Slavedriver
	.target Enslaved Villagers
--XX may need key drop
step
    #optional
    #label Emberstone1
    #completewith Brothogg
    .goto 179,76.71,30.84,10 >>Entrez à la Mine de Pierrebraise
    .isOnQuest 24674
step
    #optional
    #requires Emberstone1
    #completewith Brothogg
    .goto 179,78.13,24.95,15,0
    .goto 179,79.39,26.51,15 >>Voyagez vers |cRXP_ENEMY_Brothogg le maître d'esclaves|r à l'intérieur
    .isOnQuest 24674
step
    #label Brothogg
    .goto 179,80.32,32.11
    >>Tuez |cRXP_ENEMY_Brothogg le maître d'esclaves|r à l'intérieur
    .complete 24674,1 --Brothogg the Slavemaster slain (1)
	.mob Brothogg the Slavemaster
step
    #optional
    #requires Enslaved
    #completewith next
    .goto 179,76.71,30.84,10 >>Quittez la Mine de Pierrebraise
    .subzoneskip 4732,1
step << skip
    #requires Enslaved
	#completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .subzoneskip 4732,1
--XX skipping because theres 0 repair vendors in Gilneas past duskhaven?
step
    #requires Enslaved
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magda Whitewall|r, |cRXP_FRIENDLY_Marcus|r, et |cRXP_FRIENDLY_Lorna Crowley|r
    .turnin 24675 >>Rendez la quête Un dernier repas
    .goto 179,70.65,39.70
	.target +Magda Whitewall
    .turnin 24674 >>Rendez la quête Esclaves de personne
    .goto 179,70.29,40.05,8,0
    .goto 179,70.63,40.12,8,0
    .goto 179,71.25,39.78
	.target +Marcus
    .turnin 24575 >>Rendez la quête Le jour de la libération
    .accept 24676 >>Acceptez la quête Repoussez les envahisseurs
    .goto 179,70.88,39.84
	.target +Lorna Crowley
step
    #sticky
    #label Infantry
    #loop
	.goto 179,74.71,27.21,0
	.goto 179,73.51,30.96,0
	.goto 179,71.72,31.08,0
	.waypoint 179,74.71,27.21,45,0
	.waypoint 179,74.95,27.98,45,0
    .waypoint 179,73.54,29.99,45,0
	.waypoint 179,73.51,30.96,45,0
    .waypoint 179,72.88,29.98,45,0
	.waypoint 179,72.30,30.37,45,0
    .waypoint 179,71.90,29.52,45,0
	.waypoint 179,71.72,31.08,45,0
    >>Tuez |cRXP_ENEMY_Soldat d'infanterie réprouvé|r
	.complete 24676,1 --Forsaken Infantry slain (4)
	.mob Forsaken Infantry
step
    #sticky
    #label Cornell
	.goto 179,72.86,28.42
    >>Tuez |cRXP_ENEMY_Exécuteur Cornell|r
    .complete 24676,2 --Executor Cornell (1)
	.mob Executor Cornell
step
	.goto 179,74.15,27.40
    >>Tuez |cRXP_ENEMY_Valov the Mad|r
    .complete 24676,3 --Valnov the Mad slain (1)
	.mob Valnov the Mad
step
    #optional
    #requires Cornell
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires Infantry
    .goto 179,70.88,39.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lorna Crowley|r.
    .turnin 24676 >>Rendez la quête Repoussez les envahisseurs
    .accept 24904 >>Acceptez la quête La bataille pour Gilnéas
	.target Lorna Crowley
step
    .isOnQuest 24904
    .goto 179,70.049,40.897
    .gossip 38553,0 >>Parlez à |cRXP_FRIENDLY_Krennan Aranas|r pour commencer la bataille pour la ville de Gilnéas. Vous pouvez aussi être téléporté à Gilnéas si une bataille est déjà en cours
    >>|cRXP_WARN_Vous n'aurez pas de flèche à suivre pendant ce temps car vous pouvez être téléporté à une position aléatoire de Gilnéas. Suivez |cRXP_FRIENDLY_Prince Liam Grisetête|r et |cRXP_FRIENDLY_Seigneur Darius Crowley|r de près|r
    .skipgossip 38553,1
    .target Krennan Aranas
step
    .isOnQuest 24904
    >>|cRXP_WARN_Suis |cRXP_FRIENDLY_Prince Liam Grisetête|r et |cRXP_FRIENDLY_Seigneur Darius Crowley|r à travers Gilnéas|r
    .use 50334 >>|cRXP_WARN_Utilisez la|r |T135340:0|t[Rapière des patriotes gilnéens] |cRXP_WARN_sur vos |cRXP_FRIENDLY_Milicien gilnéen|r gardiens pour augmenter leur hâte et régénération de santé|r
    >>|cRXP_WARN_Montez dans un |cRXP_FRIENDLY_Canon pierrebraise|r et une |cRXP_FRIENDLY_Catapulte endommagée|r pour vaincre |cRXP_ENEMY_Vile Abominations|r et|r |cRXP_ENEMY_Gorerot|r
    >>|cRXP_WARN_Défaite |cRXP_ENEMY_Lady Sylvanas Coursevent|r en réduisant sa santé à 40%|r
    .complete 24904,1 --Battle for Gilneas City Complete (1)
    .timer 17,RP de La bataille pour Gilnéas
    .target Prince Liam Greymane
    .target Lord Darius Crowley
    .target Emberstone Cannon
    .target Damaged Catapult
    .mob Vile Abomination
    .mob Gorerot
    .mob Lady Sylvanas Windrunner
step
    #optional
    #completewith next
    >>Attendez le temps du RP
    .goto 202,36.89,59.09,8 >>Entrez dans la maison
step
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Parlez à |cRXP_FRIENDLY_Lorna Crowley|r dedans
    .turnin 24904 >>Rendez la quête La bataille pour Gilnéas
    .accept 24902 >>Acceptez la quête À la poursuite de Sylvanas
    .timer 170,À la poursuite de Sylvanas RP
	.target Lorna Crowley
step
    .goto 202,36.17,62.68,0
    .goto 202,36.49,59.34,8,0
    .goto 202,36.44,47.99,12,0
    .goto 202,35.22,41.12,12,0
    .goto 202,40.17,31.05,12,0
    .goto 202,40.82,40.67,10,0
    .goto 202,43.46,44.64,10,0
    .goto 202,45.06,50.85
    >>|cRXP_WARN_Suis |cRXP_FRIENDLY_Tobias Mantebrume|r de près ou il ne bougera pas et peut disparaître|r
    >>|cRXP_WARN_Suis le jusqu'à ce qu'il se cache dans l'eau à l'intérieur de la Cathédrale, puis Attendez la fin du jeu de rôle|r
    >>|cRXP_WARN_Si |cRXP_FRIENDLY_Tobias Mantebrume|r disparaît, sautez cette étape|r
    .complete 24902,1 --Hunt for Sylvanas (1)
	.target Tobias Mistmantle
	.target Lorna Crowley
    .isOnQuest 24902
step
    #optional
    #completewith next
    .goto 202,43.04,44.05,10,0
    .goto 202,40.40,40.31,10,0
    .goto 202,37.25,44.17,12,0
    .goto 202,38.92,59.78,6,0
    .goto 202,38.62,60.25,8 >>Retournez auprès de |cRXP_FRIENDLY_Lorna Crowley|r
    .isQuestComplete 24902
step
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Parlez à |cRXP_FRIENDLY_Lorna Crowley|r dedans
    .turnin 24902 >>Rendez la quête À la poursuite de Sylvanas
    .accept 24903 >>Acceptez la quête La vengeance ou la survie
	.target Lorna Crowley
    .isQuestComplete 24902
step
    #optional
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Parlez à |cRXP_FRIENDLY_Lorna Crowley|r dedans
    .accept 24903 >>Acceptez la quête La vengeance ou la survie
	.target Lorna Crowley
    .isQuestTurnedIn 24902
step
    #optional
    #completewith next
    .abandon 24902 >>Abandonnez la quête À la poursuite de Sylvanas
step
    #optional
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Parlez à |cRXP_FRIENDLY_Lorna Crowley|r dedans
    .accept 24902 >>Acceptez la quête À la poursuite de Sylvanas
    .timer 193.5,The Hunt For Sylvanas RP
	.target Lorna Crowley
step
    #optional
    .goto 202,36.17,62.68,0
    .goto 202,36.49,59.34,8,0
    .goto 202,36.44,47.99,12,0
    .goto 202,35.22,41.12,12,0
    .goto 202,40.17,31.05,12,0
    .goto 202,40.82,40.67,10,0
    .goto 202,43.46,44.64,10,0
    .goto 202,45.06,50.85
    >>|cRXP_WARN_Suis |cRXP_FRIENDLY_Tobias Mantebrume|r de près ou il ne bougera pas et peut disparaître|r
    >>|cRXP_WARN_Suis le jusqu'à ce qu'il se cache dans l'eau à l'intérieur de la Cathédrale, puis Attendez la fin du jeu de rôle|r
    .complete 24902,1 --Hunt for Sylvanas (1)
	.target Tobias Mistmantle
	.target Lorna Crowley
    .isOnQuest 24092
step
    #optional
    #completewith next
    .goto 202,43.04,44.05,10,0
    .goto 202,40.40,40.31,10,0
    .goto 202,37.25,44.17,12,0
    .goto 202,38.92,59.78,6,0
    .goto 202,38.62,60.25,8 >>Retournez auprès de |cRXP_FRIENDLY_Lorna Crowley|r
step
    #optional
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lorna Crowley|r dedans
    .turnin 24902 >>Rendez la quête À la poursuite de Sylvanas
    .accept 24903 >>Acceptez la quête La vengeance ou la survie
	.target Lorna Crowley
step
    #optional
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lorna Crowley|r dedans
    .accept 24903 >>Acceptez la quête La vengeance ou la survie
	.target Lorna Crowley
step
    #optional
    #requires GennHouse1
    #completewith Vengeance
    .goto 202,32.10,58.01,8 >>Entrez dans la maison du |cRXP_FRIENDLY_Roi Genn Grisetête|r
step
    #label Vengeance
    .goto 202,32.36,57.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Roi Genn Grisetête|r.
    .turnin 24903 >>Rendez la quête La vengeance ou la survie
    .accept 24920 >>Acceptez la quête Il faut retarder l'inévitable
	.target King Genn Greymane
step
    #optional
    #label RidingBat
    #completewith Survival
    .goto 202,30.24,60.96
    .vehicle >>Entrez dans la |cRXP_FRIENDLY_Chauve-souris de monte capturée|r
    .timer 21,RP de Il faut retarder l'inévitable
    .target Captured Riding Bat
step
    #optional
    #requires RidingBat
    #completewith Survival
    .goto 179,57.11,39.50,5 >>Attendez le temps du RP
step
    #label Survival
    .goto 179,54.83,35.83,-1
    .goto 179,56.43,28.49,-1
    .goto 179,56.77,20.70,-1
    .goto 179,57.12,15.66,-1
    .goto 179,61.45,19.86,-1
    .goto 179,64.89,27.43,-1
    .goto 179,61.30,35.14,-1
    >>Sur la |cRXP_FRIENDLY_Capturée Chauve-souris de monte|r:
    >>Tuez |cRXP_ENEMY_Forsaken Plaguesmiths|r, |cRXP_ENEMY_Forsaken Invaders|r, et |cRXP_ENEMY_Forsaken Catapults|r
    >>Lancez |T133709:0|t[Bombe en fer] (1) (Portée instantanée : inflige des dégâts)
    .complete 24920,2 --Invading Forsaken (40)
    .complete 24920,1 --Forsaken Catapult slain (6)
    .mob Forsaken Catapult
    .mob Invading Forsaken
step
    #optional
    #completewith next
    >>Sur la |cRXP_FRIENDLY_Capturée Chauve-souris de monte|r:
    .goto 202,30.43,60.88,5 >>Lancez |T132182:0|t[Vol de retour] (2) pour retourner à |cRXP_FRIENDLY_Roi Genn Grisetête|r
step
    .goto 202,32.36,57.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Roi Genn Grisetête|r.
    .turnin 24920 >>Rendez la quête Il faut retarder l'inévitable
    .accept 24678 >>Acceptez la quête Jusqu'au cou
	.target King Genn Greymane
step
    #optional
    #completewith next
    .goto 202,33.75,57.09,6 >>Descendez dans la crypte
step
    #optional
    #completewith Knee
    .goto 179,53.56,55.10,20,0
    .goto 179,49.87,57.26,10,0
    >>|cRXP_WARN_Utilisez le|r |T135432:0|t[Half-Brûlures Torche] |cRXP_WARN_pour repousser les |cRXP_ENEMY_Putrescent Vers|r, |cRXP_ENEMY_Underground Araignées|r, et|r |cRXP_ENEMY_Graveyard Rats|r
    .goto 179,49.78,57.88,6 >>Voyagez vers la fin de la crypte
    .mob Putrescent Maggot
    .mob Underground Spider
    .mob Graveyard Rat
    .use 50220
step
    #label Knee
    .goto 179,49.71,57.28,8,0
    .goto 179,49.84,56.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krennan Aranas|r dehors
    .turnin 24678 >>Rendez la quête Jusqu'au cou
    .accept 24602 >>Acceptez la quête Le repos éternel
    .target Krennan Aranas
step
    #loop
    .goto 179,48.60,54.28,0
    .goto 179,46.85,54.23,0
    .goto 179,46.71,56.03,0
    .goto 179,49.33,49.77,0
    .goto 179,51.18,54.22,0
    .goto 179,48.60,54.28,15,0
    .goto 179,48.08,54.11,15,0
    .goto 179,47.59,53.54,15,0
    .goto 179,46.85,54.23,15,0
    .goto 179,48.04,56.35,15,0
    .goto 179,46.71,56.03,15,0
    .goto 179,45.76,54.87,15,0
    .goto 179,45.80,53.49,15,0
    .goto 179,46.79,53.32,15,0
    .goto 179,48.82,50.70,15,0
    .goto 179,49.33,49.77,15,0
    .goto 179,51.01,53.23,15,0
    .goto 179,51.18,54.22,15,0
    >>Ouvrez le |cRXP_PICK_Disturbed Soil|r sur le sol. Ramassez-le pour obtenir des |cRXP_LOOT_Unearthed Souvenirs|r
    .complete 24602,1 --Unearthed Memento (5)
step
    .goto 179,49.84,56.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krennan Aranas|r.
    .turnin 24602 >>Rendez la quête Le repos éternel
    .accept 24679 >>Acceptez la quête La bénédiction du patriarche
    .target Krennan Aranas
step
    .goto 179,48.89,53.14
    >>Placez les |T134344:0|t[Béni Offerings] au Sanctuaire
	>>|cRXP_WARN_Appuyez sur "Échap./Esc." pour passer la cinématique|r
    .complete 24679,1 --Offering placed (1)
    .use 51956
step
    .goto 179,49.84,56.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krennan Aranas|r.
    .turnin 24679 >>Rendez la quête La bénédiction du patriarche
    .accept 24680 >>Acceptez la quête Quilleport
	.target Krennan Aranas
step
    .goto 179,41.93,37.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seigneur Darius Crowley|r
    .turnin 24680 >>Rendez la quête Quilleport
    .accept 24681 >>Acceptez la quête Ils ont des alliés, mais nous aussi !
	.target Lord Darius Crowley
step
    #optional
    #label Glaive
	#completewith Allies
    .goto 179,42.47,37.84
    .vehicle >>Entrez le |cRXP_FRIENDLY_Lanceur de glaives|r
    .target Glaive Thrower
step
    #optional
    #requires Glaive
    #completewith Allies
    .goto 179,40.32,38.58,20,0
    .goto 179,35.59,35.80
    >>Pendant que vous êtes dans le |cRXP_FRIENDLY_Lanceur de glaives|r:
    .subzone 4725 >>Voyagez vers L'Éminence
step
    #label Allies
    #loop
    .goto 179,35.03,36.16,0
    .goto 179,31.05,20.09,0
    .goto 179,28.07,23.84,0
    .goto 179,26.35,29.74,0
    .goto 179,30.78,38.88,0
    .goto 179,35.03,36.16,60,0
    .goto 179,31.05,20.09,60,0
    .goto 179,29.52,21.20,60,0
    .goto 179,28.07,23.84,60,0
    .goto 179,27.64,25.32,60,0
    .goto 179,26.83,26.13,60,0
    .goto 179,27.64,27.00,60,0
    .goto 179,26.35,29.74,60,0
    .goto 179,26.56,31.40,60,0
    .goto 179,30.78,38.88,60,0
    >>Pendant que vous êtes dans le |cRXP_FRIENDLY_Lanceur de glaives|r:
    >>Tuez |cRXP_ENEMY_Orc Raiders|r, |cRXP_ENEMY_Wolfmaw Outriders|r, et |cRXP_ENEMY_Orcish Machines de guerre|r
    >>Lancez |T132330:0|t[Lancer de glaive] (1) (Distance Instantané: Inflige des dégâts et repousse)
    >>|T236303:0|t[Tir de barrage de glaives] (2) (Distance Instantanée: Inflige BEAUCOUP de dégâts et repousse)
    >>|T136106:0|t[Vitesse doublée] (3) (Personnel Instantané: Augmente la vitesse de déplacement de 100% pendant 10 secondes)
    >>|cRXP_WARN_Ne laissez pas le |cRXP_FRIENDLY_Lanceur de glaives|r mourir|r
    .complete 24681,1 --Orc Raider slain (40)
    .complete 24681,2 --Wolfmaw Outrider slain (8)
    .complete 24681,3 --Orcish War Machine slain (4)
step
    #optional
    #completewith next
    .goto 179,41.93,37.60
    >>Pendant que vous êtes dans le |cRXP_FRIENDLY_Lanceur de glaives|r:
    >>|T136106:0|t[Vitesse doublée] (3) (Personnel Instantané: Augmente la vitesse de déplacement de 100% pendant 10 secondes)
    .subzone 4726 >>Retournez à Quilleport
step
    .goto 179,41.93,37.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seigneur Darius Crowley|r
    .turnin 24681 >>Rendez la quête Ils ont des alliés, mais nous aussi !
	.target Lord Darius Crowley
step
    .goto 179,41.65,36.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lorna Crowley|r.
    .accept 26706 >>Acceptez la quête Les dernières cartes
	.target Lorna Crowley
step
	#completewith next
    .goto 179,41.65,36.14
    >>|cRXP_WARN_NOTE : Cette quête est sur une minuterie indépendante, ce qui signifie que vous devrez attendre jusqu'à 5 minutes pour pouvoir entrer dans le|r |cRXP_FRIENDLY_Hippogriffe|r
    .vehicle >>Entrez le |cRXP_FRIENDLY_Hippogriffe|r
	.timer 58,RP de Les dernières cartes
step
    >>Tuez |cRXP_ENEMY_Gunship Grunts|r sur le pont supérieur
    >>Après avoir nettoyé le pont supérieur, cliquez sur le |cRXP_PICK_Corde|r au milieu du bateau pour suivre |cRXP_FRIENDLY_Lorna Crowley|r
    >>Tuez |cRXP_ENEMY_Gunship Grunts|r en suivant |cRXP_FRIENDLY_Lorna Crowley|r
    >>|cRXP_WARN_Après |cRXP_FRIENDLY_Lorna Crowley|r place les explosifs, attendez la fin du jeu de rôle|r
    .complete 26706,1 --Gunship destroyed (1)
	.timer 43,RP de Les dernières cartes
    .mob Gunship Grunt
    .target Lorna Crowley
--XX Gunship moves, can't use waypoints and timer may be off
step
    .goto 179,41.65,36.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lorna Crowley|r.
    .turnin 26706 >>Rendez la quête Les dernières cartes
	.target Lorna Crowley
step
    .goto 179,42.59,35.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Amiral Ventenuit|r
    .accept 14434 >>Acceptez la quête Rut’theran
    .turnin 14434 >>Rendez la quête Rut’theran
	.target Admiral Nightwind
step
    .goto 57,55.229,89.176
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krennan Aranas|r.
    .accept 28517 >>Acceptez la quête Le Chêne hurlant
    .target Krennan Aranas
step
    #optional
    #label Darnassus
    #completewith Oak
    .goto 57,55.045,88.301
    .zone 89 >>Franchissez le portail vers Darnassus
--XX Training around here
step
    #optional
    #requires Darnassus
    #completewith Oak
    .goto 89,48.960,19.200,20,0
    .goto 89,48.126,14.432,60 >> Entrez Le Chêne hurlant
step
    #label Oak
    .goto 89,48.126,14.432
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Genn Grisetête|r
    .turnin 28517 >>Rendez la quête Le Chêne hurlant
    .accept 26385 >>Acceptez la quête Auberdine au creux de la vague
    .target Genn Greymane
--XX no longer "King"
--XX No need to set hs as it adjusts automatically
--XX Accepting Breaking Waves closes Hero's Call Darkshore (supposedly)
step
    #optional
    #label DarkshoreTravel
    #completewith Darkshore
    .goto 89,48.960,19.200,20 >> Quittez Le Chêne hurlant
step
    #optional
    #requires DarkshoreTravel
    #completewith Darkshore
    .goto 89,36.547,50.413
    .zone 57 >>Repassez par le portail à Rut'Theran Village
step
    #label Darkshore
    .goto 57,55.415,88.398
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vesprystus|r
    .fly Lor'Danel >> Envolez-vous vers Lor’danel
    .target Vesprystus
    .zoneskip 62
]])
