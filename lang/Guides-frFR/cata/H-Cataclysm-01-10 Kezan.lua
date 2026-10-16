if GetLocale() ~= "frFR" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Alliance' then return end

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 1-6 Kezan
#next 6-11 Les îles Perdues
#version 1
--#group RXP Cataclysm (H) << cata

#defaultfor Goblin
#group RXP Cataclysme 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000


step
    .goto 194,56.44,76.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Sassy|r
    .accept 14138 >>Acceptez la quête La main à la pâte
    .target Sassy Hardwrench
step
    .goto 194,60.21,74.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Dampwick|r
    .turnin 14138 >>Rendez la quête La main à la pâte
    .accept 14069 >>Acceptez la quête L'aide n'est plus ce qu'elle était
    .accept 14075 >>Acceptez la quête Des problèmes dans les mines
    .target Foreman Dampwick
step
    #completewith next
    .goto 194,65.52,87.82,10 >>Entrez dans les mines
step
    #completewith KezanTroubleintheMines
    >>Cliquez sur les |cRXP_FRIENDLY_Defiant Trolls|r. On les trouve également en dehors des mines.
    .goto 194,66.02,82.39,0,0
    .complete 14069,1 --8/8 Attitudes Adjusted
    .target Defiant Troll
step
    #label KezanTroubleintheMines
    >>Tuez les |cRXP_ENEMY_Tunneling Worms|r
    .goto 197,50.73,59.55
    .complete 14075,1 --6/6 Tunneling Worm slain
    .mob Tunneling Worm
step
    #completewith next
    .goto 194,65.52,87.82,8 >>Quittez les mines
step
    >>Cliquez sur les |cRXP_FRIENDLY_Defiant Trolls|r
    .goto 194,72.45,83.45,50,0
    .goto 194,70.39,77.73,30,0
    .goto 194,68.74,82.87
    .complete 14069,1 --8/8 Attitudes Adjusted
    .target Defiant Troll
step
    .goto 194,60.21,74.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Dampwick|r
    .turnin 14075 >>Rendez la quête Des problèmes dans les mines
    .turnin 14069 >>Rendez la quête L'aide n'est plus ce qu'elle était
    .accept 25473 >>Acceptez la quête Le Kaja’Cola
    .target Foreman Dampwick
step
    .goto 194,56.4,76.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Chipie Serrelavis|r
    .turnin 25473 >>Rendez la quête Le Kaja’Cola
    .accept 28349 >>Acceptez la quête Megs, du marketing
    .target Sassy Hardwrench
step
    .goto 194,58.3,76.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Megs Déchiqueffroi|r
    .turnin 28349 >>Rendez la quête Megs, du marketing
    .accept 14071 >>Acceptez la quête Rouler avec mes potes
    .target Megs Dreadshredder
step
    .goto 194,58.9,76.3
    >>Utilisez les |T134246:0|t[Clés de la voiture de sport]
    >>|cRXP_WARN_Vous pouvez créer un raccourci clavier pour la fenêtre "Objets actifs" dans RestedXP en appuyant sur Échap, puis en allant dans Options->Raccourcis clavier->RestedXP Guides.|r
    .use 46856
    .complete 14071,1 --1/1 Keys to the Hot Rod used
step
    .goto 194,59.93,85.52,15,0
    .goto 194,58.9,85.5
    >>Voyagez vers |cRXP_FRIENDLY_Izzy|r
    >>|cRXP_WARN_Utiliser|r |T135788:0|t[Coup de poing] |cRXP_WARN_pour augmenter votre vitesse|r
    .complete 14071,2 --1/1 Izzy picked up
    .target Izzy
step
    .goto 194,59.93,85.52,15,0
    .goto 194,57.95,70.46,20,0
    .goto 194,60.6,49.9
    >>Voyagez vers |cRXP_FRIENDLY_Gobeur|r
    >>|cRXP_WARN_Utiliser|r |T135788:0|t[Coup de poing] |cRXP_WARN_pour augmenter votre vitesse|r
    .complete 14071,4 --1/1 Gobber picked up
    .target Gobber
step
    .goto 194,48.5,38.3
    >>Voyagez vers |cRXP_FRIENDLY_Crack|r
    >>|cRXP_WARN_Utilisez|r |T135788:0|t[Coup de poing] |cRXP_WARN_pour augmenter votre vitesse|r
    .complete 14071,3 --1/1 Ace picked up
    .target Ace
step
    #completewith next
    .goto 194,61.98,54.83,30,0
    .goto 194,60.13,64.59,30,0
    .goto 194,57.90,71.12,20 >>Remontez la rue
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Megs|r, |cFF00FF25Sassy|r et |cFF00FF25Kopo|r << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Megs|r, |cFF00FF25Sassy|r et |cFF00FF25Candy|r << Male
    .turnin 14071 >>Rendez la quête Rouler avec mes potes
    .accept 24567 >>Acceptez la quête Match de sélection
    .goto 194,58.28,76.57
    .accept 14070 >>Acceptez la quête Faites-le vous-même
    .goto 194,56.43,76.95
    .accept 26711 >>Acceptez la quête Retrait bancaire << Female
    .goto 194,56.32,76.77 << Female
    .accept 26712 >>Acceptez la quête Retrait bancaire << Male
    .goto 194,56.30,77.12 << Male
    .target Megs Dreadshredder
    .target Sassy Handwrench
    .target Chip Endale << Female
    .target Candy Cane << Male
step
    #completewith next
    .vehicle 34840 >>|cFFFCDC00Assurez-vous d'utiliser votre|r |T134246:0|t[Clés de la voiture de sport]
    .use 46856
step
    #completewith next
    .goto 194,57.10,78.44,10,0
    .goto 194,53.39,75.13,20,0
    .goto 194,47.36,78.46,30 >> Suivez la flèche autour de la maison
step
    .goto 194,45.19,74.76
    >>Attaquez |cFFFF5722Bruno|r
    .complete 14070,1 --1/1 Bruno Flameretardant beaten down
    .mob Bruno Flameretardant
step
    .goto 194,41.6,81.9
    >>Attaquez |cFFFF5722Mousseux|r
    .complete 14070,4 --1/1 Sudsy Magee beaten down
    .mob Sudsy Magee
step
    .goto 194,37.47,75.97,15,0
    .goto 194,35.0,77.8
    >>Attaquez |cFFFF5722Jack'o|r
    .complete 14070,3 --1/1 Jack the Hammer beaten down
    .mob Jack the Hammer
step
    .goto 194,36.84,69.95
    >>Attaquez |cFFFF5722Frankei|r
    .complete 14070,2 --1/1 Frankie Gearslipper beaten down
    .mob Frankie Gearslipper
step
    #completewith next
    .vehicle 34840 >>|cFFFCDC00Assurez-vous d'utiliser votre|r |T134246:0|t[Clés de la voiture de sport]
    .use 46856
step
    .goto 194,34.16,69.32,10,0
    .goto 194,32.27,63.79,12,0
    .goto 194,29.72,64.52,16,0
    .goto 194,30.11,71.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEntrez dans la banque et parlez à |cFF00FF25Caissier de la BCK|r
    .turnin 26711 >>Rendez la quête Retrait bancaire <<Female
    .accept 14110 >>Acceptez la quête Un nouveau vous <<Female
    .turnin 26712 >>Rendez la quête Retrait bancaire <<Male
    .accept 14109 >>Acceptez la quête Un nouveau vous <<Male
    .target FBok Bank Teller
step
    #completewith TheNewYou
    .vehicle 34840 >>|cFFFCDC00Veillez à utiliser|r |T134246:0|t[Clés de la voiture de sport]
    .use 46856
step
    .goto 194,29.80,63.62,16,0
    .goto 194,34.66,54.73,10,0
    .goto 194,37.63,55.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Szabo|r
    >>Obtenez |cRXP_LOOT_a Hip Nouveau Vêtements|r de lui
    .complete 14110,2 << Female --1/1 Hip New Outfit
    .complete 14109,2 << Male --1/1 Hip New Outfit
    .use 46856
    .skipgossip
    .target Szabo
step
    .goto 194,34.87,45.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Gappy|r
    >>Obtenez |cRXP_LOOT_Shiny Bling|r de lui
    .complete 14110,1 << Female --1/1 Shiny Bling
    .complete 14109,1 << Male --1/1 Shiny Bling
    .skipgossip
    .target Gappy Silvertooth
step
    #label TheNewYou
    .goto 194,40.43,45.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Missa|r
    >>Obtenez |cRXP_LOOT_Lunettes de soleil cool|r d'elle
    .complete 14110,3 << Female --1/1 Cool Shades
    .complete 14109,3 << Male --1/1 Cool Shades
    .skipgossip
    .target Missa Spekkies
step
    .goto 194,42.57,55.34,20,0
    .goto 194,48.79,57.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Crosscheck|r
    .turnin 24567 >>Rendez la quête Match de sélection
    .accept 24488 >>Acceptez la quête Remplacements
    .target Coach Crosscheck
step
    #loop
    .goto 194,51.883,60.156,0
    .goto 194,46.133,63.902,0
    .waypoint 194,51.883,60.156,25,0
    .waypoint 194,49.085,69.812,25,0
    .waypoint 194,46.133,63.902,25,0
    .waypoint 194,43.062,62.732,25,0
    .waypoint 194,44.868,54.606,25,0
    >>Ramassez les |cFFDB2EEFPièces de rechange|r par terre en restant sur la |cFFFCDC00Voiture de sport|r
    .complete 24488,1 --6/6 Replacement Parts
step
    .goto 194,48.79,57.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Crosscheck|r
    .turnin 24488 >>Rendez la quête Remplacements
    .accept 24502 >>Acceptez la quête Une brutalité nécessaire
    .target Coach Crosscheck
step
    #completewith next
    .goto 194,47.71,57.76
    >>Montez dans le |cRXP_FRIENDLY_Boucanier de Baille-Fonds|r
    .complete 24502,1 --1/1 Bilgewater Buccaneer
    .target Bilgewater Buccaneer
step
    >>Utilisez |T134480:0|t[Lancer la bomballe] (1) pour tuer les |cRXP_ENEMY_Steamwheedle Sharks|r devant vous
    .goto 194,47.7,57.7
    .complete 24502,2 --8/8 Steamwheedle Shark Footbombed
step
    >>Cliquez sur la quête dans votre journal de quêtes. Vous devrez peut-être descendre de votre monture pour accepter la quête suivante de |cFF00FF25Crosscheck|r
    .goto 194,48.79,57.79
    .turnin 24502 >>Rendez la quête Une brutalité nécessaire en cliquant sur la quête sous votre minicarte
    --.accept 24503 >>Accept Fourth and Goal << Male
    .accept 28414 >>Acceptez la quête Et c'est le buuuuuuuuuuut !
    .target Coach Crosscheck
step
    #completewith next
    .goto 194,47.71,57.76
    .vehicle >> Montez à bord du |cRXP_FRIENDLY_Bilgewater Boucanier|r
    .target Bilgewater Buccaneer
step
    >>Utilisez |T134480:0|tTaper dans la bomballe (1)
    --.complete 24503,1 << Male --1/1 Footbomb Kicked Through Smokestacks
    .complete 28414,1 --1/1 Footbomb Kicked Through Smokestacks
step
    #completewith next
    +|cFFFCDC00Sortez du véhicule|r
step
    .goto 194,48.79,57.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Crosscheck|r
    .turnin 24503 >>Rendez la quête Et c'est le buuuuuuuuuuut !
    --.turnin 28414 >>Turn in Fourth and Goal << Male
    .accept 24520 >>Acceptez la quête Une bonne nouvelle pour Chipie
    .target Coach Crosscheck
step
    #completewith next
    .hs >>Utilisez votre Pierre de foyer pour vous téléporter à Quartier général de la SCK
    .use 6948
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Sassy|r et |cFF00FF25Kopo|r << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Sassy|r et |cFF00FF25Candy|r << Male
    .turnin 24520 >>Rendez la quête Une bonne nouvelle pour Chipie
    .turnin 14070 >>Rendez la quête Faites-le vous-même
    .goto 194,56.42,76.94
    .turnin 14110 >>Rendez la quête Un nouveau vous << Female
    .goto 194,56.32,76.77 << Female
    .turnin 14109 >>Rendez la quête Un nouveau vous << Male
    .goto 194,56.30,77.12 << Male
    .target Sassy Handwrench
    .target Chip Endale << Female
    .target Candy Cane << Male
step << Rogue
    .goto 194,59.47,77.73,-1
    .goto 194,58.27,73.10,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Slinky|r
    .accept 14010 >>Acceptez la quête L'éviscération
    .train 2098 >> Entraînez-vous |T132292:0|t[L'éviscération] << Cata
    .target Slinky Sharpshiv
step << Warrior
    .goto 194,60.27,77.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cFF00FF25Mécano-guerrier NX-01|r
    .accept 14013 >>Acceptez la quête À la charge !
    .train 100 >> |T132337:0|t[À la charge !] << Cata
    .target Warrior-Matic NX-01
step << Hunter
    .goto 194,60.42,77.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Bamm|r
    .accept 14007 >>Acceptez la quête Tir régulier
    .train 56641 >>S'entraîner |T132213:0|t[Veilleur du puits Solanian] << Cata
    .target Bamm Megabomb
step << Shaman
    .goto 194,59.68,75.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Maxx|r
    .accept 14011 >>Acceptez la quête La frappe primordiale
    .train 73899 >>S'entraîner |T460956:0|t[La frappe primordiale] << Cata
    .target Maxx Avalanche
step << Mage cata
    .goto 194,59.37,73.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Fizz|r
    .accept 14008 >>Acceptez la quête Projectiles des Arcanes
    .train 5143 >>Apprenez |T136096:0|t[Projectiles des Arcanes] << Cata
    .target Fizz Lighter
step << Mage !cata
    .goto 194,59.37,73.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Fizz|r
    .accept 14008 >>Acceptez la quête Nova de givre
    .target Fizz Lighter
step << Warlock cata
    .goto 194,57.96,74.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Evol|r
    .accept 14012 >>Acceptez la quête Immolation
    .train 348 >>Apprenez [Immolation] << Cata
    .target Evol Fingers
step << Warlock !cata
    .goto 194,57.96,74.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Evol|r
    .accept 14012 >>Acceptez la quête Veilleur du puits Solanian
    .target Evol Fingers
step << Priest cata
    .goto 194,57.87,77.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Goldskimmer|r
    .accept 14009 >>Acceptez la quête Soins rapides
    .train 2061 >>Entraînez-vous |T135907:0|t[Soins rapides] << Cata
    .target Sister Goldskimmer
step << Priest !cata
    .goto 194,57.87,77.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Goldskimmer|r
    .accept 14009 >>Acceptez la quête Apprendre la parole
    .target Sister Goldskimmer
step << Rogue
    .goto 194,60.91,77.39
	>>Lancez |T132292:0|t[L'éviscération] sur un |cFFFF5722Mannequin d'entraînement|r
	.complete 14010,2 << !Cata --Cast Eviscerate (x3)
	.complete 14010,1 << Cata --Cast Eviscerate (x3)
	.mob Training Dummy
step << Warrior
    .goto 194,60.91,77.39
	>>Lancez |T132337:0|t[À la charge !] sur un |cFFFF5722Mannequin d'entraînement|r
	.complete 14013,2 << !Cata --Cast Charge (x3)
	.complete 14013,1 << Cata --Cast Charge (x3)
	.mob Training Dummy
step << Hunter
    .goto 194,60.91,77.39
	>>Lancez |T132213:0|t[Veilleur du puits Solanian] sur un |cFFFF5722Mannequin d'entraînement|r
	.complete 14007,2 << !Cata --Steady Shot (x3)
	.complete 14007,1 << Cata --Steady Shot (x3)
	.mob Training Dummy
step << Shaman
    .goto 194,60.91,77.39
	>>Lancez |T460956:0|t[La frappe primordiale] sur un |cFFFF5722Mannequin d'entraînement|r
	.complete 14011,2 << !Cata --Cast Primal Strike (x3)
	.complete 14011,1 << Cata --Cast Primal Strike (x3)
	.mob Training Dummy
step << Mage cata
    .goto 194,60.91,77.39
	>>Lancez |T136096:0|t[Projectiles des Arcanes] sur un |cFFFF5722Mannequin d'entraînement|r
	.complete 14008,2 << !Cata --Cast Arcane Missiles (x3)
	.complete 14008,1 << Cata --Cast Arcane Missiles (x3)
	.mob Training Dummy
step << Mage !cata
    .goto 194,60.91,77.39
	>>Lancez |T135848:0|t[Veilleur du puits Solanian] sur un |cFFFF5722Mannequin d'entraînement|r
	.complete 14008,2 << !Cata --Cast Arcane Missiles (x3)
	.complete 14008,1 << Cata --Cast Arcane Missiles (x3)
	.mob Training Dummy
step << Warlock cata
    .goto 194,60.91,77.39
	>>Lancez |T135817:0|t[Immolation] sur un |cFFFF5722Mannequin d'entraînement|r
	.complete 14012,1 --Cast Immolate (x3)
	.mob Training Dummy
step << Warlock !cata
    .goto 194,60.91,77.39
	>>Lancez |T136118:0|t[Veilleur du puits Solanian] sur un |cFFFF5722Mannequin d'entraînement|r
	.complete 14012,2 << !Cata --Cast Corruption (x3)
	.mob Training Dummy
step << Priest cata
    .goto 194,58.24,77.40
	>>Lancez |T135907:0|t[Soins rapides] sur un |cFF00FF25Employé blessé|r
	.complete 14009,1 --Cast Flash Heal (x5)
	.target Injured Employee
step << Priest !cata
    .goto 194,60.91,77.39
	>>Lancez |T136207:0|t[Mot de l'ombre : Douleur] sur un |cFFFF5722Mannequin d'entraînement|r
	.complete 14009,2 --Cast Shadow Word: Pain
	.mob Training Dummy
step << Rogue
    .goto 194,59.47,77.73,-1
    .goto 194,58.27,73.10,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Slinky|r
    .turnin 14010 >>Rendez la quête L'éviscération
    .target Slinky Sharpshiv
step << Warrior
    .goto 194,60.27,77.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Mécano-guerrier NX-01|r
    .turnin 14013 >>Rendez la quête À la charge !
    .target Warrior-Matic NX-01
step << Hunter
    .goto 194,60.42,77.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Bamm|r
    .turnin 14007 >>Rendez la quête Visée
    .target Bamm Megabomb
step << Shaman
    .goto 194,59.68,75.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Maxx|r
    .turnin 14011 >>Rendre la quête La frappe primordiale
    .target Maxx Avalanche
step << Mage cata
    .goto 194,59.37,73.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Fizz|r
    .turnin 14008 >>Rendez la quête Projectiles des Arcanes
    .target Fizz Lighter
step << Mage !cata
    .goto 194,59.37,73.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Fizz|r
    .turnin 14008 >>Rendez la quête Nova de givre
    .target Fizz Lighter
step << Warlock cata
    .goto 194,57.96,74.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Evol|r
    .turnin 14012 >>Rendez la quête Immolation
    .target Evol Fingers
step << Warlock !cata
    .goto 194,57.96,74.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Evol|r
    .turnin 14012 >>Rendez la quête Immolation
    .target Evol Fingers
step << Priest cata
    .goto 194,57.87,77.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Goldskimmer|r
    .turnin 14009 >>Rendez la quête Soins rapides
    .target Sister Goldskimmer
step << Priest !cata
    .goto 194,57.87,77.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Goldskimmer|r
    .turnin 14009 >>Rendre la quête Veilleur du puits Solanian
    .target Sister Goldskimmer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Kopo|r << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Candy|r << Male
    .accept 14153 >>Acceptez la quête Membre d'honneur << Female
    .goto 194,56.32,76.77 << Female
    .accept 14113 >>Acceptez la quête Membre d'honneur << Male
    .goto 194,56.30,77.12 << Male
    .target Chip Endale << Female
    .target Candy Cane << Male
step
    >>Utilisez |T132809:0|t[Boisson pétillante] (1) sur les |cRXP_FRIENDLY_Goblins|r qui boivent
    >>Utilisez le |T132806:0|t[Seau] (2) sur les |cRXP_FRIENDLY_Goblins|r ivres/confus
    >>|T133836:0|t[Danse] (3) avec les |cRXP_FRIENDLY_Goblins|r qui dansent
    >>Utilisez |T134285:0|t[Feux d'artifice] (4) sur les |cRXP_FRIENDLY_Goblins|r avec des étincelles
    >>Utilisez |T237329:0|t[Petits fours] (5) sur les |cRXP_FRIENDLY_Goblins|r qui mangent
    .goto 194,59.56,78.75,15,0
    .goto 194,59.09,80.31,10,0
    .goto 194,60.59,82.98,15,0
    .goto 194,60.82,86.33,15,0
    .goto 194,60.6,83.4
    .complete 14153,1 << Female --10/10 Partygoer entertained
	.complete 14113,1 << Male --10/10 Partygoer entertained
    .target Kezan Partygoer
step
    .goto 194,56.42,76.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Sassy|r
    .turnin 14153 >>Rendez la quête Membre d'honneur << Female
	.turnin 14113 >>Rendez la quête Membre d'honneur << Male
    .accept 14115 >>Acceptez la quête Les trouble-fête pirates
    .target Sassy Hardwrench
step
    #loop
    .goto 194/648,1329.20007,-8457.50000,0
    .waypoint 194/648,1329.20007,-8457.50000,20,0
    .waypoint 194/648,1354.90002,-8454.50000,20,0
    .waypoint 194/648,1382.70007,-8468.70020,20,0
    .waypoint 194/648,1377.70007,-8508.90039,20,0
    .waypoint 194/648,1340.09998,-8512.29980,20,0
    .waypoint 194/648,1302.09998,-8503.70020,20,0
    .waypoint 194/648,1304.90002,-8457.29980,20,0
    >>Tuez Pirate Groupe Crashers|cRXP_ENEMY_
    .complete 14115,1 --12/12 Pirate Party Crasher slain
    .target Pirate Party Crasher
step
    .goto 194,56.42,76.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Sassy|r
    .turnin 14115 >>Rendez la quête Les trouble-fête pirates
    .accept 14116 >>Acceptez la quête Un invité indésirable
    .target Sassy Hardwrench
step
    #completewith next
    .goto 194,56.41,75.33,5,0
    .goto 194,55.99,75.65,4,0
    .goto 194,55.96,77.07,5 >>Montez les escaliers
step
    .goto 194,56.77,76.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Gallywix|r
    .turnin 14116 >>Rendez la quête Un invité indésirable
    .accept 14120 >>Acceptez la quête Mille milliards de radis ?!
    .target Trade Prince Gallywix
step
    .goto 194,59.67,77.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSautez par la fenêtre et parlez à |cFF00FF25Sassy|r
    .turnin 14120 >>Rendez la quête Mille milliards de radis ?!
    .accept 14122 >>Acceptez la quête Le casse du jour
    .target Sassy Hardwrench
step
    .goto 194,60.054,78.092
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Megs Déchiqueffroi|r
    .accept 14121 >>Acceptez la quête Robin des bois moderne
    .target Megs Dreadshredder
step
    .goto 194,62.965,77.824
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Contremaître Mèchumide|r
    .accept 14124 >>Acceptez la quête L'extraction de la kaja'mite
    .target Foreman Dampwick
step
    #completewith next
    .use 46856
    .vehicle 34840 >>|cRXP_WARN_Assurez-vous d'utiliser votre|r |T134246:0|t[Clés de la voiture de sport]|cRXP_WARN_. Tandis que vous êtes dans le véhicule, vous êtes immunisé contre les chutes|r
step
    .goto 194,67.27,77.69,10,0
    .goto 194,69.59,79.35,10,0
    .goto 194,69.03,83.16,10,0
    .goto 194,66.64,84.03,10,0
    .goto 194,66.09,87.34,10,0
    .goto 194,64.34,83.48,10,0
    .goto 194,64.44,83.52
    >>Visez les |T133712:0|t[Bombes krak'boum] sur |cRXP_PICK_Kaja'mite Deposits|r et ramassez les |cFF00BCD4Kaja'mite Chunks|r par terre près des mines
    .use 48768
    .complete 14124,1 --12/12 Kaja'mite Chunk
step
    .goto 194,59.47,77.73,-1
    .goto 194,58.27,73.10,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Slinky|r. Elle se déplace
    .accept 14123 >>Acceptez la quête On entre et on ressort
    .target Slinky Sharpshiv
step
    #completewith next
    .vehicle 34840 >>|cRXP_WARN_Assurez-vous d'utiliser votre|r |T134246:0|t[Clés de la voiture de sport]|cRXP_WARN_. Pendant que vous êtes dans le véhicule, vous êtes immunisé contre les dégâts de chute|r
step
    #completewith next
    .goto 194,57.94,69.61,15,0
    .goto 194,47.67,60.09,25,0
    .goto 194,38.63,78.42,25,0
    .goto 194,32.71,63.68,10,0
    .goto 194,29.79,63.75,10,0
    >>Écrasez les |cFFFF5722Hired Looters|r quand vous les voyez
    .complete 14121,1 --12/12 Stolen Loot
    .mob Hired Looter
step
    .goto 194,29.35,69.57
    >>Cliquez sur le |cRXP_PICK_First Banque of Kezan Vault|r
    >>|cRXP_WARN_Suivez les instructions affichées au centre de votre écran|r
    .complete 14122,1 --1/1 First Bank of Kezan Vault
    .complete 14122,2 --1/1 Personal Riches
step
    .goto 194,35.91,53.68,20,0
    .goto 194,41.33,53.03,20,0
    .goto 194,41.16,42.01,20,0
    .goto 194,35.96,44.39
    >>Roulez sur les |cFFFF5722Hired Looters|r quand vous les voyez
    .complete 14121,1 --12/12 Stolen Loot
    .mob Hired Looter
step
    #completewith next
    .vehicle 34840 >>|cFFFCDC00Utilisez les Clés de la voiture de sport|r.
step
    #completewith KezanWaltzRightIn
    +|cFFFCDC00Évitez les patrouilles|r |cFFFF5722Villa Mooks|r |cFFFCDC00et|r |cFFFF5722Keensnout Potbellies|r |cFFFCDC00car elles peuvent vous détecter et vous tuer|r
    .mob Keensnout Potbelly
step
    .goto 194,24.20,40.67,30,0
    .goto 194,19.89,30.65
    >>Ramassez |cFF00BCD4The Ultimate Bombe|r
    .complete 14123,3 --1/1 The Ultimate Bomb
step
    .goto 194,12.88,35.18
    >>Ramassez |cFF00BCD4The Gobelin Lisa|r
    .complete 14123,2 --1/1 The Goblin Lisa
step
    #completewith next
    .goto 194,17.66,44.49,10,0
    .goto 194,17.66,45.92,10,0
    .goto 194,16.79,46.89,8,0
    .goto 194,17.84,46.82,8,0
    .goto 194,17.34,45.91,8 >>Montez les escaliers
step
    #label KezanWaltzRightIn
    .goto 194,16.72,46.26
    >>Ramassez le |cFF00BCD4Maldy's Falcon|r
    .complete 14123,1 --1/1 Maldy's Falcon
step
    #completewith next
    >>Sautez par la fenêtre et courez vers les |cFFFF5722Villa Mooks|r ou |cFFFF5722Keensnout Potbellies|r hostiles
    .deathskip >>Mourez et ressuscitez au |cFF00FF25Gardien des âmes|r
    .goto 194,17.65,45.94,5,0
    .goto 194,17.00,33.96
    .mob Keensnout Potbelly
step
    #completewith next
    .goto 194,61.89,54.13,25,0
    .goto 194,57.90,71.17,15 >>Suivez la chemin pour retourner aux Quartiers généraux
step
    .goto 194,59.47,77.73,-1
    .goto 194,58.27,73.10,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Slinky|r. Elle se déplace
    .turnin 14123 >>Rendez la quête On entre et on ressort
    .target Slinky Sharpshiv
step
    .goto 194,62.965,77.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Contremaître Mèchumide|r
    .target Foreman Dampwick
    .turnin 14124 >>Rendez la quête L'extraction de la kaja'mite
step
    .goto 194,60.036,78.125
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Megs Déchiqueffroi|r
    .target Megs Dreadshredder
    .turnin 14121 >>Rendez la quête Robin des bois moderne
step
    .goto 194,59.607,77.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chipie Serrelavis|r.
    .target Sassy Hardwrench
    .turnin 14122 >>Rendez la quête Le casse du jour
    .accept 14125 >>Acceptez la quête 447
step
    .goto 194/648,1371.00000,-8420.79980
    >>Entrez dans la maison et cliquez sur le |cFF00BCD4Defective Generator|r
    .complete 14125,1 --1/1 Overload the Defective Generator
step
    .goto 194,56.05,74.67
    >>Cliquez sur le |cFF00BCD4Leaky Stove|r
    .complete 14125,2 --1/1 Activate the Leaky Stove
step
    .goto 194,55.98,77.11,5,0
    .goto 194,56.64,76.33,5,0
    .goto 194,56.61,74.85
    >>Montez l'escalier et cliquez sur le |cFF00BCD4Flammable Bed|r
    .complete 14125,3 --1/1 Drop a Cigar on the Flammable Bed
step
    .goto 194,56.60,76.93,8,0
    .goto 194,59.49,76.81
    >>Sautez par la fenêtre et cliquez sur le |cFF00BCD4Gasbot Panneau de contrôle|r
    >>|cRXP_WARN_Attendez la cinématique|r
    .timer 17,447 RP
    .complete 14125,4 --1/1 KTC Headquarters Set Ablaze with Gasbot!
step
    .goto 194,59.521,76.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Expert en sinistres|r
    .target Claims Adjuster
    .turnin 14125 >>Rendez la quête 447
step
    .goto 194,59.607,77.106
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chipie Serrelavis|r.
    .target Sassy Hardwrench
    .accept 14126 >>Acceptez la quête Les économies de toute une vie
step
    #completewith next
    .vehicle 34840 >>|cFFFCDC00Assurez-vous d'utiliser votre|r |T134246:0|t[Clés de la voiture de sport]
step
    #completewith next
    .goto 194,23.18,39.30,15 >>Voyagez vers la Villa de Gallywix
    .subzoneskip 4768
step
    #completewith next
    .goto 194,22.31,16.78
    .cast 92633 >> Cliquez sur le canon
step
    .goto 194,20.76,13.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Gallywix|r
    .turnin 14126 >>Rendez la quête Les économies de toute une vie
    .target Trade Prince Gallywix
    ]])

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 6-11 Les îles Perdues
#next 10-22 Azshara
#version 1
--#group RXP Cataclysm (H) << cata

#defaultfor Goblin
#group RXP Cataclysme 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000

step
    #completewith next
    >>Vous pouvez parfois rester bloqué et devoir vous reconnecter ou faire /reload
    .timer 45 >> N'entrez pas dans la Lumière RP
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Zapnozzle|r et |cFF00FF25Gadget|r
    .turnin 14239 >>Rendez la quête N'allez pas vers la Lumière !
    .goto 174,24.62,77.86
    .accept 14001 >>Acceptez la quête Les capsules de sauvetage gobelines
    .goto 174,24.65,77.94
    .target Doc Zapnozzle
    .target Geargrinder Gizmo
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Doc Paflepif|r
    >>Vous pouvez parfois rester bloqué et devoir vous reconnecter ou faire /reload
    .goto 174,24.6,77.9
    .turnin 14239 >>Rendez la quête N'allez pas vers la Lumière !
    .target Doc Zapnozzle
step
    .goto 174,24.65,77.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ecrouabouille Gadget|r
    .accept 14001 >>Acceptez la quête Les capsules de sauvetage gobelines
    .target Geargrinder Gizmo
step
    >>Cliquez sur |cRXP_PICK_Capsules de sauvetage gobelines|r
    .goto 174,22.99,75.62,30,0
    .goto 174,25.50,77.65,30,0
    .goto 174,25.37,75.44
    .complete 14001,1 --6/6 Goblin Survivors Rescued
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chipie Serrelavis|r.
    .goto 174,27.9,75.5
    .turnin 14001 >>Rendez la quête Les capsules de sauvetage gobelines
    .accept 14014 >>Acceptez la quête Rapportez-nous nos affaires !
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maxx Avalanche|r
    .goto 174,27.85,74.29
    .accept 14473 >>Acceptez la quête C'est notre problème, maintenant
    .trainer >>Apprenez vos sorts de classe << Shaman Cata
    .target Maxx Avalanche
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bamm Mégabombe|r
    .goto 174,27.95,74.43
    .accept 14019 >>Acceptez la quête Arrêtez leurs singeries
    .trainer >>Apprenez vos sorts de classe << Hunter Cata
    .target Bamm Megabomb
step << Priest Cata
    .goto 174,27.697,74.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sœur Ecumelor|r
    .trainer >>Apprenez vos sorts de classe
    .target Sister Goldskimmer
step << Mage Cata
    .goto 174,27.715,74.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bulle Briquet|r
    .trainer >>Apprenez vos sorts de classe
    .target Fizz Lighter
step << Warlock Cata
    .goto 174,28.419,75.648
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Doigt Bolik|r
    .trainer >>Apprenez vos sorts de classe
    .target Evol Fingers
step << Warrior Cata
    .goto 174,28.656,76.161
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mécano-guerrier NX-01|r
    .trainer >>Apprenez vos sorts de classe
    .target Warrior-Matic NX-01
step << Rogue Cata
    .goto 174,28.654,76.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fugace Coutelard|r
    .trainer >>Apprenez vos sorts de classe
    .target Slinky Sharpshiv
    --VV Add appropriate .train ID's
--step << Hunter
    --#completewith next
    --.cast 1515 >>Tame a |cRXP_ENEMY_Teraptor Hatchling|r
    --.mob Teraptor Hatchling
    --VV See if this is needed in Cataclysm
step
    #sticky
    #label TheLostIslesTeraMonkeys
    >>Utilisez |T133979:0|t[Bananes au nitro-potassium] sur |cRXP_ENEMY_Bomb Lancer Monkeys|r et tuez |cRXP_ENEMY_Teraptor Hatchlings|r
    .use 49028
    .goto 174,27.32,70.14,0,0
    .complete 14473,1 --6/6 Teraptor Hatchling slain
    .complete 14019,1 --10/10 Bomb-Throwing Monkeys Fed
    .mob Bomb Throwing Monkeys
    .mob Teraptor Hatchlings
step
    #loop
    .goto 174,29.73,75.42,15,0
    .goto 174,30.35,74.49,15,0
    .goto 174,30.10,72.55,20,0
    .goto 174,28.44,70.88,20,0
    .goto 174,27.32,70.14,20,0
    >>Collectez |cRXP_LOOT_Crates of Outils|r
    .complete 14014,1 --8/8 Crate of Tools
step
    #requires TheLostIslesTeraMonkeys
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maxx Avalanche|r et |cRXP_FRIENDLY_Bamm Mégabombe|r
    .turnin 14473 >>Rendez la quête C'est notre problème, maintenant
    .goto 174,27.85,74.29
    .turnin 14019 >>Rendez la quête Arrêtez leurs singeries
    .goto 174,27.95,74.43
    .target Maxx Avalanche
    .target Bamm Megabomb
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chipie Serrelavis|r.
    .goto 174,27.9,75.5
    .turnin 14014 >>Rendez la quête Rapportez-nous nos affaires !
    .accept 14248 >>Acceptez la quête Besoin d'aide
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Contremaître Mèchumide|r
    .goto 174,31.27,79.26
    .turnin 14248 >>Rendez la quête Besoin d'aide
    .accept 14021 >>Acceptez la quête Troubles mineurs
    .accept 14031 >>Acceptez la quête Immortaliser l’inconnu
    .target Foreman Dampwick
step
    #completewith DeadOrc
    >>Suivez et protégez le |cRXP_FRIENDLY_Mineur effrayé|r
    .complete 14021,1 --1/1 Kaja'mite Ore mining a success!
    .target Frightened Miner
step
    .goto 174/648,2946.00000,568.60004
    >>Utilisez le |T134442:0|t[Clic-clac-flash de la SCK] pour prendre une photo de la peinture sur le mur marqué avec un appareil photo flottant
    .use 49887
    .complete 14031,1 --1/1 Cave Painting 1 Captured
step
    .goto 174/648,2914.50000,573.20001
    >>Utilisez le |T134442:0|t[Clic-clac-flash de la SCK] pour prendre une photo du tableau au plafond marqué par une caméra flottante
    .use 49887
    .complete 14031,2 --1/1 Cave Painting 2 Captured
step
    .goto 174/648,2857.00000,615.29999
    >>Utilisez le |T134442:0|t[Clic-clac-flash de la SCK] pour prendre une photo de la peinture sur le mur marqué avec un appareil photo flottant
    .goto 175,86.331,44.317
    .complete 14031,3 --1/1 Cave Painting 3 Captured
step
    .goto 174/648,2969.80005,654.90002
    >>Utilisez le |T134442:0|t[Clic-clac-flash de la SCK] pour prendre une photo de la peinture sur le mur marqué avec un appareil photo flottant
    .use 49887
    .complete 14031,4 --1/1 Pygmy Altar Captured
step
    #label DeadOrc
    .goto 174/648,2975.60010,651.10004
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEssayez de parler à l'|cRXP_FRIENDLY_Eclaireur orc mort|r
    .accept 14233 >>Acceptez la quête Les Orcs savent écrire ?
    .target Dead Orc Scout
step
    .goto 174/648,2969.80005,654.90002
    >>Suivez et protégez le |cRXP_FRIENDLY_Mineur effrayé|r
    .complete 14021,1 --1/1 Kaja'mite Ore mining a success!
    .target Frightened Miner
step
    .goto 174/648,2971.60010,495.10001
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSortez de la grotte et parlez à |cRXP_FRIENDLY_Contremaître Mèchumide|r
    .turnin 14021 >>Rendez la quête Troubles mineurs
    .target Foreman Dampwick
step
    .goto 174,27.88,75.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chipie Serrelavis|r.
    .turnin 14031 >>Rendez la quête Immortaliser l’inconnu
    .turnin 14233 >>Rendez la quête Les Orcs savent écrire ?
    .accept 14234 >>Acceptez la quête L'ennemi de mon ennemi
    .target Sassy Hardwrench
step
    #completewith next
    .goto 174,32.73,80.53,30,0
    .goto 174,34.36,80.78,30,0
    .goto 174,36.96,77.02,20 >>Suivez le chemin pour monter la montagne
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aggra|r.
    .goto 174,37.63,78.02
    .turnin 14234 >>Rendez la quête L'ennemi de mon ennemi
    .accept 14235 >>Acceptez la quête Le val Vicieux
    .target Aggra
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kilag Sangrecroc|r
    .goto 174,35.43,75.71
    .turnin 14235 >>Rendez la quête Le val Vicieux
    .accept 14236 >>Acceptez la quête Un désherbant radical
    .target Kilag Gorefang
step
    #loop
    .goto 174/648,2813.30005,653.40002,0
    .waypoint 174/648,2813.30005,653.40002,40,0
    .waypoint 174/648,2846.10010,706.79999,40,0
    .waypoint 174/648,2884.69995,661.79999,40,0
    .waypoint 174/648,2922.40015,579.10004,40,0
    >>Utilisez l'|cRXP_FRIENDLY_Un désherbant radical|r et courez à travers les |cRXP_ENEMY_plants|r pour les tuer
    .use 49108
    .complete 14236,1 --100/100 Deadly Jungle Plants mowed down
    .mob Deadly Jungle Plant
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kilag Sangrecroc|r
    .goto 174,35.43,75.71
    .turnin 14236 >>Rendez la quête Un désherbant radical
    .accept 14303 >>Acceptez la quête Retourner voir Aggra
    .target Kilag Gorefang
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aggra|r.
    .goto 174,37.63,78.02
    .turnin 14303 >>Rendez la quête Retourner voir Aggra
    .accept 14237 >>Acceptez la quête Déplacement offensif
    .target Aggra
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kilag Sangrecroc|r
    .goto 174,34.62,66.85
    .turnin 14237 >>Rendez la quête Déplacement offensif
    .accept 14238 >>Acceptez la quête Infrarouge = Inframort
    .target Kilag Gorefang
step
    #loop
    .goto 174,31.252,65.272,0
    .waypoint 174,32.264,67.282,50,0
    .waypoint 174,30.783,67.512,50,0
    .waypoint 174,31.252,65.272,50,0
    .waypoint 174,30.712,64.450,50,0
    .waypoint 174,29.589,62.824,50,0
    .waypoint 174,33.536,64.171,50,0
    >>Tuez les |cRXP_ENEMY_SI:7 Assassins|r
    >>|cRXP_WARN_Utilisez vos|r |T133149:0|t[Jumelles à infrarouges] |cRXP_WARN_pour les voir|r
    .use 49611
    .complete 14238,1 --10/10 SI:7 Assassin slain
    .mob SI:7 Assassin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kilag Sangrecroc|r
    .goto 174,34.61,66.85
    .turnin 14238 >>Rendez la quête Infrarouge = Inframort
    .accept 14240 >>Acceptez la quête Vers les falaises
    .timer 52,Chevauchez Bastia
    .target Kilag Gorefang
step
    #completewith next
    .goto 174,25.28,59.84,50 >>Attendez jusqu'à votre arrivée à |cRXP_FRIENDLY_Eclaireur Brax|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eclaireur Brax|r
    .goto 174,25.28,59.84
    .turnin 14240 >>Rendez la quête Vers les falaises
    .accept 14241 >>Acceptez la quête Au gyrocoptère !
    .target Scout Brax
step
    >>Tuez les |cRXP_ENEMY_SI:7 Operatives|r et les |cRXP_ENEMY_Gyrochopper Pilots|r. Ramassez-les pour les |cRXP_LOOT_Clés du gyrocoptère|r
    .goto 174,23.23,67.50
    .complete 14241,1 --1/1 Gyrochoppa Keys
    .mob SI:7 Operative
    .mob Gyrochopper Pilot
step
    .goto 174,23.2,67.5
    >>Interagissez avec le |cRXP_FRIENDLY_Gyrocoptère|r
    >>|cRXP_WARN_Vous pouvez ignorer le|r |cRXP_ENEMY_Gyrochoppa Pilote|r
    .turnin 14241 >>Rendez la quête Au gyrocoptère !
    .accept 14242 >>Acceptez la quête Une cargaison précieuse
    .target Gyrochoppa
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tDescendez dans le navire et parlez à |cRXP_FRIENDLY_Thrall|r
    .goto 174,11.8,62.7
    .complete 14242,1 --1/1 Precious Cargo located
    .target Thrall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .goto 174,11.8,62.8
    .turnin 14242 >>Rendez la quête Une cargaison précieuse
    .accept 14326 >>Acceptez la quête Rencontre au sommet
    .target Thrall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSortez et rencontrez |cRXP_FRIENDLY_Thrall|r sur le pont
    .goto 174,12.68,63.33,10,0
    .goto 174,12.4,63.1
    .turnin 14326 >>Rendez la quête Rencontre au sommet
    .accept 14243 >>Acceptez la quête La vengeance du chef de guerre
    .target Thrall
step
    >>Utilisez |T237589:0|t[Foudre] (1) pour tuer les |cRXP_FRIENDLY_Alliance Sailors|r.
    >>|cRXP_WARN_Visez les plus petits bateaux|r
    .complete 14243,1 --50/50 Alliance Sailor slain
    .mob Alliance Sailor
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .goto 174,35.92,66.72
    .turnin 14243 >>Rendez la quête La vengeance du chef de guerre
    .accept 14445 >>Acceptez la quête Adieu, pour l'instant
    .target Thrall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chipie Serrelavis|r.
    .goto 174,36.02,67.53
    .turnin 14445 >>Rendez la quête Adieu, pour l'instant
    .accept 14244 >>Acceptez la quête Les Gobelins s'envolent vers d'autres cieux
    .target Sassy Hardwrench
step
    >>Cliquez sur la |cRXP_PICK_Fusée Sling|r
    .goto 174,36.34,66.55
    .skipgossip
    .complete 14244,1 --1/1 Rocket Sling Trip Survived
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Contremaître Mèchumide|r
    .goto 174,44.54,64.36
    .turnin 14244 >>Rendez la quête Les Gobelins s'envolent vers d'autres cieux
    .accept 14245 >>Acceptez la quête C'est une Ville-en-Boîte
    .target Foreman Dampwick
step
    >>Cliquez sur la |cRXP_PICK_Ville-en-Boîte Plunger|r
    .goto 174,45.40,65.36
    .complete 14245,1 --1/1 Town-In-A-Box Set Off!
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Contremaître Mèchumide|r
    .goto 174,45.36,64.74
    .turnin 14245 >>Rendez la quête C'est une Ville-en-Boîte
    .accept 27139 >>Acceptez la quête Hobart a besoin de vous
    .target Foreman Dampwick
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hobart Martelutte|r.
    .goto 174,45.34,65.22
    .turnin 27139 >>Rendez la quête Hobart a besoin de vous
    .accept 24671 >>Acceptez la quête Cot-cot en cocotte
    .target Hobart Grapplehammer
step
    .goto 174,44.928,65.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Crassouille Doigts-graisseux|r
    .home >>Définissez votre Pierre de foyer à Ville-en-Boîte
    .target Grimy Greasefingers
    .isQuestAvailable 24925
step << Priest Cata
    .goto 174,45.586,65.375
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sœur Ecumelor|r
    .trainer >>Apprenez vos sorts de classe
    .target Sister Goldskimmer
step << Hunter Cata
    .goto 174,45.246,64.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bamm Mégabombe|r
    .trainer >>Apprenez vos sorts de classe
    .target Bamm Megabomb
step << Mage Cata
    .goto 174,45.119,65.123
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bulle Briquet|r
    .trainer >>Apprenez vos sorts de classe
    .target Fizz Lighter
step << Warlock Cata
    .goto 174,45.492,65.593
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Doigt Bolik|r
    .trainer >>Apprenez vos sorts de classe
    .target Evol Fingers
step << Shaman Cata
    .goto 174,45.106,65.270
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maxx Avalanche|r
    .trainer >>Apprenez vos sorts de classe
    .target Maxx Avalanche
step << Warrior Cata
    .goto 174,28.656,76.161
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mécano-guerrier NX-01|r
    .trainer >>Apprenez vos sorts de classe
    .target Warrior-Matic NX-01
step << Rogue Cata
    .goto 174,45.055,65.524
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fugace Coutelard|r
    .trainer >>Apprenez vos sorts de classe
    .target Slinky Sharpshiv
    --VV Add appropriate .train ID's
step
    #loop
    .goto 174,46.490,65.922,0
    .goto 174,44.482,64.109,0
    .waypoint 174,45.178,63.335,40,0
    .waypoint 174,45.938,61.535,40,0
    .waypoint 174,47.170,62.983,40,0
    .waypoint 174,46.490,65.922,40,0
    .waypoint 174,44.674,67.001,40,0
    .waypoint 174,44.482,64.109,40,0
    .use 52712 >>Utilisez votre |T134273:0|t[Feu d'artifice télécommandé] pour capturer |cRXP_PICK_Poulets sauvages|r autour de la ville
    .complete 24671,1 --10/10 Wild Cluckers captured
    .target Wild Clucker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hobart Martelutte|r et |cRXP_FRIENDLY_Bamm Mégabombe|r
    .turnin 24671 >>Rendez la quête Cot-cot en cocotte
    .goto 174,45.34,65.22
    .accept 24741 >>Acceptez la quête Un échange en notre faveur
    .goto 174,45.25,64.85
    .target Hobart Grapplehammer
    .target Bamm Megabomb
step
    #loop
    .goto 174,45.93,69.88,0
    .waypoint 174,49.64,63.45,20,0
    .waypoint 174,50.25,65.80,20,0
    .waypoint 174,50.64,68.35,20,0
    .waypoint 174,47.83,69.14,20,0
    .waypoint 174,45.93,69.88,20,0
    >>Utilisez les |T236997:0|t[Sauvage Cluster Eggs] pour placer un œuf dans un piège. Puis attendez jusqu'à ce qu'un |cRXP_ENEMY_Spiny Raptor|r entre dans le piège et dépouillez le |cRXP_PICK_Spiny Raptor Oeuf|r
    .use 50232
    .complete 24741,1 --5/5 Spiny Raptor Egg
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bamm Mégabombe|r et |cRXP_FRIENDLY_Hobart Martelutte|r
    .turnin 24741 >>Rendez la quête Un échange en notre faveur
    .goto 174,45.25,64.85
    .accept 24744 >>Acceptez la quête Le plus gros œuf du monde
    .goto 174,45.34,65.21
    .target Bamm Megabomb
    .target Hobart Grapplehammer
step
    .goto 174,43.667,54.169
    >>Tuez le |cRXP_ENEMY_Mécapoulet|r. Ramassez |cRXP_LOOT_Le plus gros œuf du monde|r qui tombe par terre
    .complete 24744,1 --1/1 The Biggest Egg Ever
    .unitscan Mechachicken
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hobart Martelutte|r.
    .goto 174,45.34,65.21
    .turnin 24744 >>Rendez la quête Le plus gros œuf du monde
    .accept 24816 >>Acceptez la quête Qui est au sommet de la chaîne alimentaire, maintenant ?
    .target Hobart Grapplehammer
step
    #loop
    .goto 174/648,2455.80005,861.90002,0
    .waypoint 174/648,2415.60010,795.60004,50,0
    .waypoint 174/648,2467.00000,730.10004,50,0
    .waypoint 174/648,2578.30005,794.20001,50,0
    .waypoint 174/648,2455.80005,861.90002,50,0
    >>Tuez les |cRXP_ENEMY_Ravenous Lurkers|r. Dépouillez-les pour obtenir leurs |cRXP_LOOT_Shark Parts|r
    .complete 24816,1 --5/5 Shark Parts
    .mob Ravenous Lurker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Assistante Greely|r
    .goto 174,45.27,65.57
    .turnin 24816 >>Rendez la quête Qui est au sommet de la chaîne alimentaire, maintenant ?
    .accept 24817 >>Acceptez la quête Un Gobelin dans la peau d’un requin
    .target Assistant Greely
step
    >>Cliquez sur le |cRXP_PICK_Mechshark X-Vapeur Contrôleur|r
    .goto 174,43.68,65.50
    .complete 24817,1 --1/1 Use the Mechashark X-Steam Controller
step
    >>Utilisez le |T132345:0|t[Rayon laser de-la-mort-qui-tue-grave] (1) et le |T135821:0|t[Tir de barrage explosœuf] (2) pour tuer le |cRXP_ENEMY_Le Marteau|r
    >>|cRXP_WARN_Utilisez|r le |T132996:0|t[Réparations] |cRXP_WARN_pour soigner si nécessaire|r
    .goto 174,41.7,66.7
    .complete 24817,2 --1/1 The Hammer slain
    .mob The Hammer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hobart Martelutte|r.
    .goto 174,45.34,65.21
    .turnin 24817 >>Rendez la quête Un Gobelin dans la peau d’un requin
    .accept 24856 >>Acceptez la quête Invasion imminente !
    .target Hobart Grapplehammer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Megs Déchiqueffroi|r
    .goto 174,52.2,73.2
    .turnin 24856 >>Rendez la quête Invasion imminente !
    .accept 24858 >>Acceptez la quête Représentant du cartel Baille-Fonds
    .target Megs Dreadshredder
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brett « Pièces » McPognon|r
    .goto 174,52.20,73.22
    .accept 24859 >>Acceptez la quête De la peau de Naga
    .target Brett "Coins" McQuid
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Vashj'elan Warriors|r et les |cRXP_ENEMY_Vashj'elan Sirens|r. Ramassez-les pour leur |cRXP_LOOT_Hides|r
    .complete 24859,1 --5/5 Intact Naga Hide
    .mob Vashj'elan Warriors
    .mob Vashj'elan Siren
step
    #loop
    .goto 174,53.477,80.146,0
    .waypoint 174,52.22,79.19,10,0
    .waypoint 174,52.76,78.97,10,0
    .waypoint 174,53.47,80.15,10,0
    .waypoint 174,54.14,79.91,10,0
    .waypoint 174,54.81,79.39,10,0
    .waypoint 174,55.50,79.54,10,0
    .waypoint 174,55.49,77.98,10,0
    .waypoint 174,54.86,76.94,10,0
    .waypoint 174,55.04,76.25,10,0
    .waypoint 174,53.53,76.90,10,0
    >>Cliquez sur |cRXP_PICK_Naga Banners|r
    .complete 24858,1 --10/10 Naga Banners replaced
step
    #loop
    .goto 174/648,2004.30005,498.39999,0
    .waypoint 174/648,2004.30005,498.39999,40,0
    .waypoint 174/648,1873.00000,503.00000,40,0
    .waypoint 174/648,1897.90002,591.50000,40,0
    >>Tuez les |cRXP_ENEMY_Vashj'elan Warriors|r et les |cRXP_ENEMY_Vashj'elan Sirens|r. Ramassez-les pour leur |cRXP_LOOT_hides|r
    .complete 24859,1 --5/5 Intact Naga Hide
    .mob Vashj'elan Warriors
    .mob Vashj'elan Siren
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brett « Pièces » McPognon|r et |cRXP_FRIENDLY_Megs Déchiqueffroi|r
    .turnin 24859 >>Rendez la quête De la peau de Naga
    .goto 174,52.2,73.22
    .turnin 24858 >>Rendez la quête Représentant du cartel Baille-Fonds
    .accept 24864 >>Acceptez la quête Un poney gonflable irrésistible
    .goto 174,52.20,73.14
    .target Brett "Coins" McQuid
    .target Megs Dreadshredder
step
    #completewith next
    .use 50602
    .cast 71914 >>Utilisez le |T132261:0|t[Poney gonflable irrésistible] une fois que vous avez atteint l'eau.
step
    #loop
    .goto 174/648,1713.59998,401.10001,0
    .waypoint 174/648,1766.20007,387.50000,30,0
    .waypoint 174/648,1713.59998,401.10001,30,0
    .waypoint 174/648,1684.20007,416.89999,30,0
    .waypoint 174/648,1661.20007,386.00000,30,0
    .waypoint 174/648,1619.50000,380.10001,30,0
    .waypoint 174/648,1594.09998,415.60001,30,0
    .waypoint 174/648,1567.59998,351.70001,30,0
    .waypoint 174/648,1689.50000,325.50000,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez aux |cRXP_FRIENDLY_Naga Hatchlings|r
    >>|cRXP_WARN_Ne tuez PAS les jeunes avec les capacités de zone|r
    .use 50602
    .complete 24864,1 --12/12 Naga Hatchlings lured
    .target Naga Hatchling
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Megs Déchiqueffroi|r
    .goto 174,52.2,73.15
    .turnin 24864 >>Rendez la quête Un poney gonflable irrésistible
    .accept 24868 >>Acceptez la quête Rendez-vous, sinon !... Exactement !
    .target Megs Dreadshredder
step
    #completewith next
    .goto 174,54.07,90.06,30 >>Voyagez au sud vers les Ruines de Vashj'elan
step
    .goto 174,54.07,90.06
    >>Tuez le |cRXP_ENEMY_Sans-visage des profondeurs|r
    >>|cRXP_WARN_Attendez l'animation d'apparition (cercle violet). Il sautera peu après|r
    .complete 24868,1 --1/1 Leader of the naga dealt with
    .mob Faceless of the Deep
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Megs Déchiqueffroi|r
    .goto 174,52.20,73.15
    .turnin 24868 >>Rendez la quête Rendez-vous, sinon !... Exactement !
    .accept 24897 >>Acceptez la quête Retour en ville
    .target Megs Dreadshredder
step
    #completewith next
    .subzone 4871 >>Renvoyez-vous à Town-in-a-Boîte
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chipie Serrelavis|r.
    .goto 174,45.18,64.91
    .turnin 24897 >>Rendez la quête Retour en ville
    .accept 24901 >>Acceptez la quête Ville-en-Boîte est attaquée !
    .target Sassy Hardwrench
step
    >>Cliquez sur |cRXP_PICK_G.C. Eliminator|r pour entrer et tirer sur les |cRXP_ENEMY_Oomlot Warriors|r
    .goto 174,45.7,65.0
    .complete 24901,1 --30/30 Oomlot Warriors defeated
step
    #completewith next
    +|cRXP_WARN_Quittez le véhicule|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chipie Serrelavis|r.
    .goto 174,45.2,64.9
    .turnin 24901 >>Rendez la quête Ville-en-Boîte est attaquée !
    .accept 24924 >>Acceptez la quête Oomlot
    .target Sassy Hardwrench
step
    #completewith next
    .subzone 4886 >>Rendez-vous à Oomlot
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Izzy|r.
    .goto 174,56.56,71.96
    .turnin 24924 >>Rendez la quête Oomlot
    .accept 24925 >>Acceptez la quête Libérez les prisonniers
    .accept 24929 >>Acceptez la quête Envoyez un message
    .target Izzy
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Oomlot Shamans|r pour libérer les |cRXP_FRIENDLY_Gobelin Captives|r
    .complete 24925,1 --5/5 Goblin Captives freed
    .mob Oomlot Shaman
step
    >>Tuez |cRXP_ENEMY_Yngwie|r
    .goto 174/648,1710.70007,843.79999,20,0
    .goto 174/648,1543.20007,817.29999
    .complete 24929,1 --1/1 Yngwie slain
    .mob Yngwie
step
    #loop
    .goto 174/648,1753.00000,746.50000,0
    .waypoint 174/648,1593.59998,754.90002,35,0
    .waypoint 174/648,1661.90002,717.40002,35,0
    .waypoint 174/648,1753.00000,746.50000,35,0
    .waypoint 174/648,1698.59998,802.10004,35,0
    >>Tuez les |cRXP_ENEMY_Oomlot Shamans|r pour libérer les |cRXP_FRIENDLY_Gobelin Captives|r
    .complete 24925,1 --5/5 Goblin Captives freed
    .mob Oomlot Shaman
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Izzy|r.
    .goto 174,56.56,71.96
    .turnin 24925 >>Rendez la quête Libérez les prisonniers
    .turnin 24929 >>Rendez la quête Envoyez un message
    .accept 24937 >>Acceptez la quête Gobelins 1 - 0 Oomlot
    .target Izzy
step
    #completewith next
    .hs >>Utilisez votre Pierre de foyer pour revenir à Ville-en-Boîte
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chipie Serrelavis|r.
    .goto 174,45.2,64.9
    .turnin 24937 >>Rendez la quête Gobelins 1 - 0 Oomlot
    .accept 24940 >>Acceptez la quête En haut du volcan
    .target Sassy Hardwrench
step
    #completewith next
    +|cRXP_WARN_Évitement des |cRXP_ENEMY_Gobelin Zombies|r en montant la montagne|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Entraîneur Sainturrébreutel|r, |cRXP_FRIENDLY_Contremaître Mèchumide|r et |cRXP_FRIENDLY_Assistante Greely|r
    .turnin 24940 >>Rendez la quête En haut du volcan
    .accept 24942 >>Acceptez la quête Zombies contre Super-bottes à fusée d'appoint
    .goto 174,51.8,47.1
    .accept 24945 >>Acceptez la quête Les trois petits pygmées
    .goto 174,51.85,47.19
    .accept 24946 >>Acceptez la quête La poudre Kislapet'
    .goto 174,51.73,47.38
    .target Coach Crosscheck
    .target Foreman Dampwick
    .target Assistant Greely
step
    #completewith next
    >>|cRXP_WARN_Vous devez annuler Forme d'Ombre si vous êtes un prêtre ombre avant de pouvoir utiliser les bottes|r <<Priest
    .use 52013
    .goto 174,51.77,46.97
    .cast 72891 >>|cRXP_WARN_Utilisez les |T133029:0|t[Super-bottes à fusée d'appoint]|r
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Gobelin Zombies|r en marchant dessus avec les Bottes-fusées
    >>|cRXP_WARN_Évitement des |cRXP_ENEMY_Oostan Headhunters|r|cRXP_WARN_. Ils peuvent vous tuer très facilement|r
    .use 52013
    .complete 24942,1 --50/50 Goblin Zombies slain
step
    #completewith TheLostIslesGaahl
    >>Ramassez |cRXP_PICK_La poudre Kislapet'|r par terre
    .complete 24946,1 --5/5 Rockin' Powder
step
    >>Tuez |cRXP_ENEMY_Malmo|r
    .goto 174,58.74,47.16
    .complete 24945,2 --1/1 Malmo slain
    .mob Malmo
step
    >>Tuez |cRXP_ENEMY_Teloch|r
    .goto 174,63.7,52.76
    .complete 24945,3 --1/1 Teloch slain
    .mob Teloch
step
    #label TheLostIslesGaahl
    >>Tuez |cRXP_ENEMY_Gaahl|r
    .goto 174,59.59,40.20
    .complete 24945,1 --1/1 Gaahl slain
    .mob Gaahl
step
    #loop
    .goto 174/648,1677.50000,1457.09998,0
    .waypoint 174/648,1647.40002,1657.00000,50,0
    .waypoint 174/648,1695.30005,1522.70007,50,0
    .waypoint 174/648,1677.50000,1457.09998,50,0
    .waypoint 174/648,1479.59998,1285.90002,50,0
    .waypoint 174/648,1753.30005,1427.80005,50,0
    >>Regardez autour et ramassez les |cRXP_PICK_Rockin' Powders|r restants
    .complete 24946,1 --5/5 Rockin' Powder
step
    #loop
    .goto 174/648,1677.50000,1457.09998,0
    .waypoint 174/648,1647.40002,1657.00000,50,0
    .waypoint 174/648,1695.30005,1522.70007,50,0
    .waypoint 174/648,1677.50000,1457.09998,50,0
    .waypoint 174/648,1479.59998,1285.90002,50,0
    .waypoint 174/648,1753.30005,1427.80005,50,0
    >>Tuez les |cRXP_ENEMY_Gobelin Zombies|r en marchant dessus avec les Bottes-fusées
    .use 52013
    .complete 24942,1 --50/50 Goblin Zombies slain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Contremaître Mèchumide|r, |cRXP_FRIENDLY_Assistant Greedy|r, et |cRXP_FRIENDLY_Entraîneur Sainturrébreutel|r
    .turnin 24945 >>Rendez la quête Les trois petits pygmées
    .goto 174,51.85,47.20
    .turnin 24946 >>Rendez la quête La poudre Kislapet'
    .goto 174,51.73,47.38
    .turnin 24942 >>Rendez la quête Zombies contre Super-bottes à fusée d'appoint
    .accept 24952 >>Acceptez la quête Les bottes-fusées fusent
    .goto 174,51.8,47.1
    .target Foreman Dampwick
    .target Assistant Greedy
    .target Coach Crosscheck
step
    .goto 174/648,2044.80005,1463.09998
    >>Utilisez les |T133029:0|t[Bottes-fusées imprégnées de poudre à trembler]
    .use 52032
    .complete 24952,1 --1/1 Rockin' Powder Infused Rocket Boots used
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hobart Martelutte|r.
    .goto 174,68.93,46.44
    .turnin 24952 >>Rendez la quête Les bottes-fusées fusent
    .accept 24954 >>Acceptez la quête Les enfants d'un dieu tortue
    .target Hobart Grapplehammer
step
    #loop
    .goto 174/648,1333.30005,1529.30005,0
    .waypoint 174/648,1333.30005,1529.30005,40,0
    .waypoint 174/648,1368.00000,1597.70007,40,0
    .waypoint 174/648,1263.20007,1570.70007,40,0
    >>Tuez les |cRXP_ENEMY_Enfant de Volcanoth|r. Butin-les pour les |cRXP_LOOT_Glands|r
    .complete 24954,1 --5/5 Fire Gland
    .mob Childs of Volcanoth
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hobart Martelutte|r.
    .goto 174,68.93,46.44
    .turnin 24954 >>Rendez la quête Les enfants d'un dieu tortue
    .accept 24958 >>Acceptez la quête Volcanoth !
    .target Hobart Grapplehammer
step
    .goto 174/648,1180.20007,1309.70007
    >>Spammez |T135624:0|t[Bottzooka] à l'emplacement du waypoint sur |cRXP_ENEMY_Volcanoth|r
    .use 52043
    .complete 24958,1 --1/1 Volcanoth slain
    .mob Volcanoth
step
    .goto 174/648,1094.00000,1163.09998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chipie Serrelavis|r.
    .turnin 24958 >>Rendez la quête Volcanoth !
    .accept 25023 >>Acceptez la quête De vieux amis
    .timer 110,Vol vers de vieux amis
    .target Sassy Hardwrench
step
    .goto 174,36.79,43.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 25023 >>Rendez la quête De vieux amis
    .accept 25024 >>Acceptez la quête La chute des parachutistes
    .target Thrall
step
    .goto 174,37.349,41.922
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chipie Serrelavis|r.
    .accept 25058 >>Acceptez la quête Déminage, façon Gobelins
    .target Sassy Hardwrench
step
    .goto 174,36.248,43.380
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aggra|r.
    .accept 25093 >>Acceptez la quête Les chefs du SI :7
    .target Aggra
step
    #completewith Paratroopers
    >>Utilisez la |T133716:0|t[Sacoche de grenades] pour détruire les |cRXP_PICK_Les Les Mines|r par terre
    .goto 174,32.38,36.34,0,0
    .use 52280
    .complete 25058,1 --10/10 Land Mines detonated
step
    #completewith TheLostIslesCyn
    >>Tuez le |cRXP_ENEMY_Parachutiste de l'Alliance|r
    .complete 25024,1 --10/10 Alliance Paratrooper slain
    .mob Alliance Paratrooper
step
    >>Tuez le |cRXP_ENEMY_Commandant Arrington|r. Butin-le pour sa |cRXP_LOOT_Tête|r
    .goto 174,32.29,42.89
    .complete 25093,1 --1/1 Commander Arrington's Head
    .target Commander Arrington
step
    >>Tuez le |cRXP_ENEMY_Alexi Grondesilence|r. Butin-le pour sa |cRXP_LOOT_Tête|r
    .goto 174,30.80,33.92
    .complete 25093,3 --1/1 Alexi Silenthowl's Head
    .mob Alexi Silenthowl
step
    #label TheLostIslesCyn
    >>Tuez le |cRXP_ENEMY_Sombrelame Cyn|r. Butin-le pour sa |cRXP_LOOT_Tête|r
    .goto 174,33.44,27.88
    .complete 25093,2 --1/1 Darkblade Cyn's Head
    .mob Darkblade Cyn
step
    #loop
    .goto 174/648,2887.40015,1875.80005,0
    .waypoint 174/648,2822.19995,1920.09998,40,0
    .waypoint 174/648,2887.40015,1875.80005,40,0
    .waypoint 174/648,2920.69995,1819.30005,40,0
    .waypoint 174/648,2911.90015,1718.70007,40,0
    .waypoint 174/648,2871.30005,1639.40002,40,0
    .waypoint 174/648,2884.80005,1523.70007,40,0
    .waypoint 174/648,2883.50000,1522.30005,40,0
    >>Tuez |cRXP_ENEMY_Parachutiste de l'Alliance|r
    .complete 25024,1 --10/10 Alliance Paratrooper slain
    .mob Alliance Paratrooper
step
    #loop
    .goto 174/648,2887.40015,1875.80005,0
    .waypoint 174/648,2822.19995,1920.09998,40,0
    .waypoint 174/648,2887.40015,1875.80005,40,0
    .waypoint 174/648,2920.69995,1819.30005,40,0
    .waypoint 174/648,2911.90015,1718.70007,40,0
    .waypoint 174/648,2871.30005,1639.40002,40,0
    .waypoint 174/648,2884.80005,1523.70007,40,0
    .waypoint 174/648,2883.50000,1522.30005,40,0
    .use 52280 >>Utilisez la |T133716:0|t[Sacoche de grenades] pour détruire |cRXP_PICK_Les Les Mines|r par terre
    .complete 25058,1 --10/10 Land Mines detonated
step
    #completewith next
    .subzone 4912 >>Rendez-vous à Poste de guet du Chef de guerre
step
    .goto 174,36.248,43.380
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aggra|r.
    .turnin 25093 >>Rendez la quête Les chefs du SI :7
    .target Aggra
step
    .goto 174,36.79,43.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 25024 >>Rendez la quête La chute des parachutistes
    .target Thrall
step
    .goto 174,37.349,41.922
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chipie Serrelavis|r.
    .turnin 25058 >>Rendez la quête Déminage, façon Gobelins
    .accept 25066 >>Acceptez la quête La fierté de Kezan
    .target Sassy Hardwrench
step
    #completewith next
    .skipgossip 38387,1
    .vehicle 39074 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chipie Serrelavis|r pour entrer dans le véhicule
    .target Sassy Hardwrench
step
    >>Détruisez les |cRXP_ENEMY_Gnomeregan Camouflage Fighters|r
    >>|cRXP_WARN_Utiliser|r |T134273:0|t[Roquettes de la belette furieuse] |cRXP_WARN_(2)|r |cRXP_WARN_en continu sans arrêt|r |T135627:0|t[Mitrailleuse] |cRXP_WARN_(1)|r
    .goto 174,30.37,39.89
    .complete 25066,1 --10/10 Gnomeregan Stealth Fighters shot down
    .mob Gnomeregan Stealth Fighter
step
    #completewith next
    .subzone 4912 >>Envolez-vous vers Poste de guet du Chef de guerre
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chipie Serrelavis|r.
    .goto 174,37.36,41.92
    .turnin 25066 >>Rendez la quête La fierté de Kezan
    .accept 25098 >>Acceptez la quête Le chef de guerre a besoin de vous
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .goto 174,36.79,43.13
    .turnin 25098 >>Rendez la quête Le chef de guerre a besoin de vous
    .accept 25099 >>Acceptez la quête Empruntez Bastia
    .target Thrall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kilag Sangrecroc|r
    .goto 174,33.8,38.8
    .turnin 25099 >>Rendez la quête Empruntez Bastia
    .accept 25100 >>Acceptez la quête En route pour l'aventure
    .timer 87,Chevauche de la panthère
    .target Kilag Gorefang
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fugace Coutelard|r après avoir monté avec la panthère
    .goto 174,53.71,34.94
    .turnin 25100 >>Rendez la quête En route pour l'aventure
    .accept 25109 >>Acceptez la quête La mine de travail de Gallywix
    .target Slinky Sharpshiv
step << Priest Cata
    .goto 174,53.760,35.798
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sœur Ecumelor|r
    .trainer >>Apprenez vos sorts de classe
    .target Sister Goldskimmer
step << Hunter Cata
    .goto 174,53.744,35.882
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bamm Mégabombe|r
    .trainer >>Apprenez vos sorts de classe
    .target Bamm Megabomb
step << Mage Cata
    .goto 174,53.754,33.614
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bulle Briquet|r
    .trainer >>Apprenez vos sorts de classe
    .target Fizz Lighter
step << Warlock Cata
    .goto 174,54.087,34.662
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Doigt Bolik|r
    .trainer >>Apprenez vos sorts de classe
    .target Evol Fingers
step << Shaman Cata
    .goto 174,53.245,35.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maxx Avalanche|r
    .trainer >>Apprenez vos sorts de classe
    .target Maxx Avalanche
step << Warrior Cata
    .goto 174,53.810,35.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mécano-guerrier NX-01|r
    .trainer >>Apprenez vos sorts de classe
    .target Warrior-Matic NX-01
step << Rogue Cata
    .goto 174,53.716,34.928
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fugace Coutelard|r
    .trainer >>Apprenez vos sorts de classe
    .target Slinky Sharpshiv
    --VV Add appropriate .train ID's
step
    #completewith next
    .goto 174,54.09,36.01,10,0
    .goto 174,54.94,33.72,10 >>Entrez dans la grotte et sautez en bas
step
    .goto 174,53.17,36.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Assistante Greely|r
    .turnin 25109 >>Rendez la quête La mine de travail de Gallywix
    .accept 25110 >>Acceptez la quête Kaja'Cola, ça vous donne des IDÉES ! (TM)
    .target Assistant Greely
step
    >>Ramassez |T132808:0|t[|cRXP_LOOT_Le Le Kaja’Cola Zéro-Un|r] sur le sol
    .goto 174,53.59,37.41,10,0
    .goto 174,53.94,37.46,10,0
    .goto 174,53.70,36.67
    .complete 25110,1 --1/1 Kaja'Cola Zero-One
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Assistante Greely|r
    .goto 174,53.17,36.55
    .turnin 25110 >>Rendez la quête Kaja'Cola, ça vous donne des IDÉES ! (TM)
    .accept 25122 >>Acceptez la quête Gonflés à bloc
    .accept 25123 >>Acceptez la quête Jetez-la par terre !
    .target Assistant Greely
step
    #completewith FreeGobber
    >>Butin |T132808:0|t[|cRXP_LOOT_Le Le Kaja’Cola Zéro-Un|r] sur le sol
    >>Ciblez |cRXP_FRIENDLY_Kezan Citizens|r et utilisez le |T132808:0|t[|cRXP_LOOT_Le Le Kaja’Cola Zéro-Un|r]
    .use 52484
    .collect 52484,9,25122,0xF
    .complete 25122,4 --6/6 Other goblin's minds freed
    .target Kezan Citizen
step
    #title Libérez Crack
    >>Ciblez |cRXP_FRIENDLY_Crack|r et utilisez |T132808:0|t[|cRXP_LOOT_Le Le Kaja’Cola Zéro-Un|r]
    .goto 174,57.1,36.9
    .use 52484
    .complete 25122,1 --1/1 Ace's mind freed
    .target Ace
step
    #title Libérez Izzy
    >>Ciblez |cRXP_FRIENDLY_Izzy|r et utilisez |T132808:0|t[|cRXP_LOOT_Le Le Kaja’Cola Zéro-Un|r]
    .goto 174,57.01,35.02
    .use 52484
    .complete 25122,2 --1/1 Izzy's mind freed
    .target Izzy
step
    >>Tuez |cRXP_ENEMY_Splozombre le Meneur de brutes|r et ramassez la |cRXP_PICK_Pierre d'âme de Splozombre|r.
    .use 52481 >>|cRXP_WARN_Utilisez|r |T134336:0|t[Pierre d'âme de Splozombre] |cRXP_WARN_sur le cadavre de|r |cRXP_ENEMY_Splozombre le Meneur de brutes|r
    .goto 174,56.18,32.29
    .complete 25123,1 --1/1 Blastshadow's Soulstone destroyed
    .mob Blastshadow the Brutemaster
step
    #label FreeGobber
    >>Ciblez |cRXP_FRIENDLY_Gobeur|r et utilisez |T132808:0|t[|cRXP_LOOT_Le Le Kaja’Cola Zéro-Un|r]
    .goto 174,57.04,32.17
    .use 52484
    .complete 25122,3 --1/1 Gobber's mind freed
    .target Gobber
step
    #loop
    .goto 174/648,1807.59998,1983.59998,0
    .waypoint 174/648,1807.59998,1983.59998,25,0
    .waypoint 174/648,1830.20007,1860.80005,25,0
    .waypoint 174/648,1820.40002,1784.20007,25,0
    .waypoint 174/648,1917.40002,1809.40002,25,0
    >>Butin |T132808:0|t[|cRXP_LOOT_Le Le Kaja’Cola Zéro-Un|r] sur le sol
    >>Ciblez |cRXP_FRIENDLY_Kezan Citizens|r et utilisez le |T132808:0|t[|cRXP_LOOT_Le Le Kaja’Cola Zéro-Un|r]
    .use 52484
    .collect 52484,9,25122,0xF
    .complete 25122,4 --6/6 Other goblin's minds freed
    .target Kezan Citizen
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Assistante Greely|r
    .turnin 25123 >>Rendez la quête Jetez-la par terre !
    .turnin 25122 >>Rendez la quête Gonflés à bloc
    .accept 25125 >>Acceptez la quête De la lumière au bout du tunnel
    .target Assistant Greely
step
    >>Interagissez avec la |cRXP_PICK_Mine Chariot|r
    .goto 174,56.29,27.33
    .turnin 25125 >>Rendez la quête De la lumière au bout du tunnel
    .accept 25184 >>Acceptez la quête Le petit train de la mine
step
    >>Faites le trajet avec le chariot de mine
    .goto 174,54.2,17.0
    .complete 25184,1 --1/1 Mine Cart ridden
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Assistante Greely|r
    .goto 174,54.4,16.9
    .turnin 25184 >>Rendez la quête Le petit train de la mine
    .accept 25200 >>Acceptez la quête Panne de déchiqueteur
    .target Assistant Greely
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Entraîneur Sainturrébreutel|r
    .goto 174,54.44,16.93
    .accept 25201 >>Acceptez la quête La tenue de footbombe ultime
    .target Coach Crosscheck
step
    #sticky
    #label TheLostIslesShredderShutdown
    >>Tuez |cRXP_ENEMY_Steamwheedle Sharks|r
    .goto 174,53.5,18.9,0,0
    .complete 25200,1 --8/8 Steamwheedle Shark slain
    .mob Steamwheedle Shark
step
    >>Ramassez les |cRXP_LOOT_Spare Déchiqueteur Parts|r
    .goto 174,53.24,19.55,20,0
    .goto 174,52.16,20.68,20,0
    .goto 174,51.85,19.17,20,0
    .goto 174,52.64,16.93,20,0
    .goto 174,53.13,18.70
    .complete 25201,1 --8/8 Spare Shredder Parts
step
    #requires TheLostIslesShredderShutdown
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Entraîneur Sainturrébreutel|r
    .goto 174,54.44,16.93
    .turnin 25201 >>Rendez la quête La tenue de footbombe ultime
    .target Coach Crosscheck
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Assistante Greely|r
    .goto 174,54.4,16.93
    .turnin 25200 >>Rendez la quête Panne de déchiqueteur
    .accept 25204 >>Acceptez la quête Ouvrez les valves
    .target Assistant Greely
step << Male
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Crack|r
    .goto 174,54.16,17.21
    .accept 25203 >>Acceptez la quête Et puis d'abord, Benji, c'est vraiment un nom ridicule !
    .target Ace
step << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Izzy|r.
    .goto 174,54.01,16.98
    .accept 25202 >>Acceptez la quête Le plus court chemin vers son cœur
    .target Izzy
step
    >>Cliquez sur la |cRXP_PICK_Valve|r
    .goto 174,50.85,15.86,10,0
    .goto 174,50.72,13.81
    .complete 25204,1 --1/1 Valve #1 released
step
    >>Cliquez sur la |cRXP_PICK_Valve|r
    .goto 174,50.5,13.2
    .complete 25204,3 --1/1 Valve #3 released
step << Female
    >>Tuez |cRXP_ENEMY_Benji Golo|r. Dépouillez-le pour son |cRXP_LOOT_Cœur|r
    .goto 174,50.1,13.8
    .complete 25202,1 --1/1 Still-Beating Heart
    .mob Chip Endale
step << Male
    >>Tuez |cRXP_ENEMY_Benji Golo|r. Dépouillez-le pour son |cRXP_LOOT_Cœur|r
    .goto 174,50.1,13.8
    .complete 25203,1 --1/1 Still-Beating Heart
    .mob Chip Endale
step
    >>Cliquez sur la |cRXP_PICK_Valve|r
    .goto 174,49.9,12.8
    .complete 25204,4 --1/1 Valve #4 released
step
    >>Cliquez sur la |cRXP_PICK_Valve|r
    .goto 174,50.2,11.8
    .complete 25204,2 --1/1 Valve #2 released
step
    >>Interagissez avec le |cRXP_PICK_Platform Panneau de contrôle|r
    .goto 174,51.4,13.1
    .turnin 25204 >>Rendez la quête Ouvrez les valves
    .accept 25207 >>Acceptez la quête Ce n'est qu'un au revoir, mon fuel
step
    >>Cliquez sur |cRXP_PICK_Red Button|r
    .goto 174,51.4,13.1
    .complete 25207,1 --1/1 KTC Oil Platform destroyed
step << Male
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Crack|r
    .goto 174,54.16,17.19
    .turnin 25203 >>Rendez la quête Et puis d'abord, Benji, c'est vraiment un nom ridicule !
    .target Ace
step << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Izzy|r.
    .goto 174,54.01,16.97
    .turnin 25202 >>Rendez la quête Le plus court chemin vers son cœur
    .target Izzy
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Assistante Greely|r
    .goto 174,54.4,16.9
    .turnin 25207 >>Rendez la quête Ce n'est qu'un au revoir, mon fuel
    .accept 25213 >>Acceptez la quête Les fosses à esclaves
    .timer 24,Dans le déchiqueteur
    .target Assistant Greely
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chipie Serrelavis|r après la balade en réducteur
    .goto 174,43.63,25.32
    .turnin 25213 >>Rendez la quête Les fosses à esclaves
    .accept 25244 >>Acceptez la quête Et puis d'abord, Peggy, c'est vraiment un nom ridicule ! << Female
	.accept 25243 >>Acceptez la quête Elle m'aime un peu, beaucoup, PAS DU TOUT ! << Male
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hobart|r
    .goto 174,43.85,25.30
    .accept 25214 >>Acceptez la quête La vitesse de l'évasion
    .target Hobart Grapplehammer
step
    #completewith next
    >>Cliquez sur les |cRXP_FRIENDLY_Captured Goblins|r
    .complete 25214,1 --8/8 Cages launched
    .target Captured Goblin
step
    >>Tuez |cRXP_ENEMY_Sucre d'orge|r
    .goto 174,39.68,27.18
    .complete 25244,1 << Female --1/1 Candy Cane slain
	.complete 25243,1 << Male --1/1 Candy Cane slain
    .mob Candy Cane
step
    >>Cliquez sur les |cRXP_FRIENDLY_Captured Goblins|r
    .goto 174,40.03,26.08,10,0
    .goto 174,41.03,25.24,15,0
    .goto 174,41.24,26.35
    .complete 25214,1 --8/8 Cages launched
    .target Captured Goblin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hobart|r
    .goto 174,43.85,25.30
    .turnin 25214 >>Rendez la quête La vitesse de l'évasion
    .target Hobart Grapplehammer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chipie Serrelavis|r.
    .goto 174,43.63,25.32
    .turnin 25244 >>Rendez la quête Et puis d'abord, Peggy, c'est vraiment un nom ridicule ! << Female
	.turnin 25243 >>Rendez la quête Elle m'aime un peu, beaucoup, PAS DU TOUT ! << Male
    .accept 25251 >>Acceptez la quête L'affrontement final
    .target Sassy Hardwrench
step
    >>Entrez dans la |cRXP_FRIENDLY_Tenue de footbombe ultime|r
    .goto 174,43.86,25.16
    .complete 25251,1 --1/1 Ultimate Footbomb Uniform
    .target Ultimate Footbomb Uniform
step
    >>Ciblez |cRXP_ENEMY_Prince marchand Gallywix|r et utilisez toutes vos capacités dès qu'elles sont disponibles
    .goto 174,41.87,17.61,10,0
    .goto 174,43.4,19.9
    .complete 25251,2 --1/1 Trade Prince Gallywix dealt with
    .mob Trade Prince Gallywix
step
    #completewith next
    .goto 174,42.76,18.61,10,0
    .goto 174,42.24,19.45,20 >>Sautez en bas
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chipie Serrelavis|r.
    .goto 174,43.6,25.3
    .turnin 25251 >>Rendez la quête L'affrontement final
    .accept 25265 >>Acceptez la quête Victoire !
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .goto 174,42.16,17.37
    .turnin 25265 >>Rendez la quête Victoire !
    .accept 25266 >>Acceptez la quête L'émissaire du chef de guerre
    .target Thrall
step
    #completewith next
    .goto 174,42.57,16.37
    .skipgossip
    .zone 1 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chipie Serrelavis|r.
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kor'Kron Loyalist|r
    .goto 1,57.65,9.78
    .turnin 25266 >>Rendez la quête L'émissaire du chef de guerre
    .accept 25267 >>Acceptez la quête Un message pour Saurcroc
    .timer 75,Rendez-vous à Orgrimmar
    .target Kor'Kron Loyalist
step
    #completewith next
    .goto 1,45.506,11.949,30,0
    .zone Orgrimmar >>Entrez dans Orgrimmar
step
    .goto 1454/1,-4343.20020,1669.20007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Garrosh Hurlenfer|r.
    .turnin 25267 >>Rendez la quête Un message pour Saurcroc
    .accept 25275 >>Acceptez un rapport au capitaine d'ouvrage
    .target Garrosh Hellscream
]])
