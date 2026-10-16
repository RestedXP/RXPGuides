if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#cata
#version 1
#group Le Front du Magma
#name A_1_TMF_Démarrage
#next B_1_TSOM_Démarrage
#displayname |cRXP_LOOT_1.0|r - L'invasion

step
    #completewith OpeningtheDoor
	.zone 85 >> Voyagez à Orgrimmar << Horde
	.zone 84 >> Voyagez à Stormwind << Alliance
	.zoneskip 198
step
    #completewith OpeningtheDoor
    .goto 85,51.000,38.221 << Horde
    .goto 84,76.178,18.695 << Alliance
	.zone 198 >> Prendre le portail vers Hyjal
step
    #label OpeningtheDoor
    .goto 198/1,-2082.800,4424.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .accept 29145 >>Acceptez la quête Ouvrir la porte
step
    .goto 198/1,-2079.100,4653.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arch Druide Hamuul Totem-runique|r
    .target Arch Druid Hamuul Runetotem
    .turnin 29145 >>Rendez la quête Ouvrir la porte
    .accept 29195 >>Acceptez la quête Un rituel des flammes
step
    .goto 198/1,-2092.900,4621.800
    >>Tuez les |cRXP_ENEMY_Charred Invaders|r jusqu'à ce que votre barre de progression se remplisse. Cela fera venir |cRXP_ENEMY_Leyara|r à travers le portail
    >>Tuez |cRXP_ENEMY_Leyara|r
    >>|cRXP_WARN_You don't need to get the tag on her|r
    .complete 29195,1 -- Open the portal to the Firelands (1)
    .mob Charred Invader
    .mob Leyara
step
    .goto 198/1,-2092.900,4621.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Malfurion Hurlorage|r
    .target Malfurion Stormrage
    .turnin 29195 >>Rendez la quête Un rituel des flammes
    .accept 29196 >>Acceptez la quête Au sanctuaire !
step
    .goto 198/1,-2082.800,4424.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .turnin 29196 >>Rendez la quête Au sanctuaire !
    .accept 29197 >>Acceptez la quête Pris par surprise
step
    .goto 198/1,-1980.300,4628.000
    >>Tuez les |cRXP_ENEMY_Raging Invaders|r près de |cRXP_FRIENDLY_Thisalee Corbeau|r
    .complete 29197,2 --|Kill elementals near Thisalee: 6/6
    .mob Raging Invader
    .target Thisalee Crow
step
    .goto 198/1,-2373.900,4560.100
    >>Tuez les |cRXP_ENEMY_Raging Invaders|r près de |cRXP_FRIENDLY_Vieille-Branche|r
    .complete 29197,1 --|Kill elementals near Elderlimb: 6/6
    .mob Raging Invader
    .target Elderlimb
step
    .goto 198/1,-2699.000,4584.200
    >>Tuez les |cRXP_ENEMY_Raging Invaders|r près de |cRXP_FRIENDLY_Tholo|r et |cRXP_FRIENDLY_Anren|r
    .complete 29197,3 --|Kill elementals near Tholo and Anren: 6/6
    .mob Raging Invader
    .target Tholo
    .target Anren
step
    .goto 198/1,-2082.200,4423.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arch Druide Hamuul Totem-runique|r
    .target Arch Druid Hamuul Runetotem
    .turnin 29197 >>Rendez la quête Pris par surprise
    .accept 29198 >>Acceptez la quête Le sanctuaire ne doit pas tomber
step
    .goto 198/1,-2080.200,4421.700
    >>Attendez le temps du RP
    .complete 29198,1
step
    .goto 198/1,-2080.200,4421.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Malfurion Hurlorage|r
    .target Malfurion Stormrage
    .turnin 29198 >>Rendez la quête Le sanctuaire ne doit pas tomber
step
    .goto 198/1,-2080.200,4417.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arch Druide Hamuul Totem-runique|r
    .target Arch Druid Hamuul Runetotem
    .accept 29199 >>Acceptez la quête Demander des renforts
step
    .goto 198/1,-2082.700,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .daily 29123,29149,29127,29163,29166 >>Acceptez l'une des quêtes quotidiennes aléatoires proposées
step
    #loop
    .goto 198,27.108,62.009,5,0
    .goto 198,27.170,62.563,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r ou |cRXP_FRIENDLY_Mylune|r
    .daily 29125,29147,29164,29101,29161 >> Acceptez l'une des quêtes quotidiennes aléatoires proposées
    .disablecheckbox
    .questcount <1,29125,29147,29164,29101,29161
    .target Matoclaw
    .target Mylune
step
    .isOnQuest 29166
    #completewith KillNemesis
    >>Ramassez le |cRXP_LOOT_Blueroot Vines|r par terre
    .complete 29166,1
step
    .isOnQuest 29123
    #completewith KillNemesis
    >>Tuez les |cRXP_ENEMY_Invaders from the Terres de Feu|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #completewith KillNemesis
    >>Tuez les |cRXP_ENEMY_Invaders from the Terres de Feu|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #completewith KillNemesis
    >>Tuez les |cRXP_ENEMY_Invaders from the Terres de Feu|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #completewith KillNemesis
    >>Tuez les |cRXP_ENEMY_Invaders from the Terres de Feu|r
    .complete 29163,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29101
    #loop
    .goto 198,22.89,59.91,70,0
    .goto 198,18.58,56.71,70,0
    .goto 198,15.11,48.85,70,0
    .goto 198,19.97,46.22,70,0
    >>Cliquez sur un |cRXP_FRIENDLY_Enfant de Tortolla|r
    >>|cRXP_WARN_Visez vers l'eau et lance|r |T132219:0|t[Pousser la tortue] |cRXP_WARN_(1)|r
    .complete 29101,1 -- Child of Tortolla punted into water (5)
    .target Child of Tortolla
step
    .isOnQuest 29164
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Tuez les |cRXP_ENEMY_Invaders from the Terres de Feu|r
    .use 69235 >> |cRXP_WARN_Utilisez le|r |T134298:0|t[Crok of the Loup] |cRXP_WARN_sur leurs cadavres|r
    .complete 29164,1 -- Howl atop an invader's corpse (10)
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29147
    #completewith next
    .cast 97241 >> |cRXP_WARN_Utilisez le|r |T135992:0|t[Plume de la reine oiseau] |cRXP_WARN_pour vous transformer en|r |cRXP_FRIENDLY_Ailes d'Aviana|r
    .use 69234
step
    .isOnQuest 29147
    #loop
    .goto 198,14.90,45.11,80,0
    .goto 198,10.13,36.76,80,0
    .goto 198,13.24,33.64,80,0
    .goto 198,18.65,40.28,80,0
    .use 69234 >> |cRXP_WARN_Utilisez le|r |T132172:0|t[Appel du vol] (1) |cRXP_WARN_aptitude près de |cRXP_FRIENDLY_Alpine Songbirds|r, |cRXP_FRIENDLY_Forest Owls|r et|r |cRXP_FRIENDLY_Goldwing Hawks|r
    .complete 29147,1 -- Alpine Songbird gathered (12)
    .target +Alpine Songbird
    .complete 29147,2 -- Forest Owl gathered (5)
    .target +Forest Owl
    .complete 29147,3 -- Goldwing Hawk gathered (2)
    .target +Goldwing Hawk
step
    .isOnQuest 29125
    #loop
    .goto 198,37.32,54.52,70,0
    .goto 198,40.87,55.93,70,0
    .goto 198,36.43,60.73,70,0
    .goto 198,33.45,64.19,70,0
    >>Placez-vous devant un |cRXP_FRIENDLY_Spirit of Malorne|r
    >>|cRXP_WARN_Ce sont les cerfs fantômes qui chargent au hasard|r
    .complete 29125,1 --Spirit of Malorne captured (3)
step
    #completewith next
    .goto 198,14.310,33.203
    .vehicle >> Cliquez sur |cRXP_PICK_Escalade Arbre|r pour commencer à l'escalader
    .target Climbing Tree
    .isOnQuest 29161
step
    .goto 198,14.310,33.203
    >>Cliquez sur un |cRXP_FRIENDLY_Ourson d'Hyjal|r pendant que vous êtes sur l'arbre
    .collect 54439,1
    .target Hyjal Bear Cub
    .isOnQuest 29161
step
    .isOnQuest 29161
    .goto 198,14.310,33.203
    *|cRXP_WARN_Lancez|r |T450907:0|t[Montée] (1) |cRXP_WARN_jusqu'à ce que vous soyez au sommet, visez la flèche vers le trampoline à côté de |cRXP_FRIENDLY_Gardien Taldros|r, puis lance|r |T446127:0|t[Lancer d'ours] (4)|cRXP_WARN_. Lancez|r |T450905:0|t[Descente] (2) |cRXP_WARN_et recommencez|r
    .complete 29161,1 --6/6 Hyjal Bear Cubs Rescued
step
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Lancez|r |T450905:0|t[Descente] (2) |cRXP_WARN_pour quitter l'arbre|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Lancez|r |T450905:0|t[Descente] (2) |cRXP_WARN_pour quitter l'arbre|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Lancez|r |T450905:0|t[Descente] (2) |cRXP_WARN_pour quitter l'arbre|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Lancez|r |T450905:0|t[Descente] (2) |cRXP_WARN_pour quitter l'arbre|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Lancez|r |T450905:0|t[Descente] (2) |cRXP_WARN_pour quitter l'arbre|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Lancez|r |T450905:0|t[Descente] (2) |cRXP_WARN_pour quitter l'arbre|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Lancez|r |T450905:0|t[Descente] (2) |cRXP_WARN_pour quitter l'arbre|r
step
    .isOnQuest 29161
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .turnin 29161 >>Rendez la quête Nounours-ball
    .accept 29162 >>Acceptez la quête Bénédiction de la nature
step
    .isQuestTurnedIn 29161
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .accept 29162 >>Acceptez la quête Bénédiction de la nature
step
    .isOnQuest 29125
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .turnin 29125 >>Rendez la quête Entre les arbres
    .accept 29126 >>Acceptez la quête La puissance de Malorne
step
    .isQuestTurnedIn 29125
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .accept 29126 >>Acceptez la quête La puissance de Malorne
step
    .isOnQuest 29147
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .turnin 29147 >>Rendez la quête Appel du vol
    .accept 29148 >>Acceptez la quête Ailes de flamme
step
    .isQuestTurnedIn 29147
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .accept 29148 >>Acceptez la quête Ailes de flamme
step
    .isOnQuest 29164
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .turnin 29164 >>Rendez la quête Perfectionner votre hurlement
    .accept 29165 >>Acceptez la quête L'appel de la meute
step
    .isQuestTurnedIn 29164
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .accept 29165 >>Acceptez la quête L'appel de la meute
step
    .isOnQuest 29101
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .turnin 29101 >>Rendez la quête La saison de la plate
    .accept 29122 >>Acceptez la quête Des échos de Némésis
step
    .isQuestTurnedIn 29101
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .accept 29122 >>Acceptez la quête Des échos de Némésis
step
    #completewith next
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .cast 97517 >> |cRXP_WARN_Utilisez l'|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_pour invoquer|r |cRXP_ENEMY_Pyrachnis|r
    .use 69232
step
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .use 69232 >> Tuez |cRXP_ENEMY_Pyrachnis|r
    >>|cRXP_WARN_Utilisez l'|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_pour aussi retirer le|r |T136016:0|t[Éclair de poison bouillant] |cRXP_WARN_débuff que |cRXP_ENEMY_Pyrachnis|r applique|r
    .complete 29162,1 --|Pyrachnis slain: 1/1
    .mob Pyrachnis
step
    #completewith next
    .isOnQuest 29126
    .goto 198,41.667,56.130
    .cast 97012 >> |cRXP_WARN_Utilisez l'|r |T135139:0|t[Bâton du gardien] |cRXP_WARN_à la |cRXP_PICK_Pile of Fum|r pour invoquer|r |cRXP_ENEMY_Galenges|r
    .use 68997
step
    .goto 198,41.667,56.130
    .isOnQuest 29126
    .use 68997 >> Tuez |cRXP_ENEMY_Galenges|r
    .complete 29126,1 -- Galenges slain (1)
    .mob Galenges
step
    .isOnQuest 29148
    #completewith next
    .goto 198/1,-1500.700,4929.300
    .cast 97324 >> |cRXP_WARN_Utilisez l'|r |T135992:0|t[Plume de la reine oiseau] |cRXP_WARN_près du portail de flamme occidental pour invoquer|r |cRXP_ENEMY_Millagazor|r
    .use 69212
step
    .isOnQuest 29148
    .goto 198/1,-1500.700,4929.300
    .use 69212 >> Tuez |cRXP_ENEMY_Millagazor|r
    .complete 29148,1 -- Millagazor slain (1)
    .mob Millagazor
step
    .isOnQuest 29165
    #completewith next
    .goto 198,41.667,56.130
    .cast 97498 >> |cRXP_WARN_Utilisez l'|r |T134298:0|t[Crok of the Loup] |cRXP_WARN_pour invoquer|r |cRXP_ENEMY_Lylagar|r
    .use 69225
step
    .isOnQuest 29165
    .goto 198,41.667,56.130
    .use 69225 >> Tuez |cRXP_ENEMY_Lylagar|r
    .complete 29165,1 -- Lylagar slain (1)
    .mob Lylagar
step
    .isOnQuest 29122
    #completewith next
    .goto 198,24.014,55.803
    .gossip 52425,0 >>Parlez à |cRXP_FRIENDLY_Tooga|r pour invoquer |cRXP_ENEMY_Némésis|r
    .skipgossip
    .target Tooga
step
    #label KillNemesis
    .isOnQuest 29122
    .goto 198,24.760,55.259
    >>Tuez |cRXP_ENEMY_Némésis|r
    >>|cRXP_WARN_Debout|cRXP_FRIENDLY_ sous |rTooga|r's coquille pour vous protéger de |cRXP_ENEMY_Némésis|r's |T135830:0|t[Fureur de lave] |cRXP_WARN_lance|r
    .complete 29122,1 -- Nemesis slain (1)
    .target Tooga
    .mob Nemesis
step
    .isOnQuest 29166
    #loop
    .goto 198,29.53,56.21,70,0
    .goto 198,36.15,52.44,70,0
    .goto 198,35.94,58.80,70,0
    .goto 198,24.27,62.12,70,0
    >>Ramassez le |cRXP_LOOT_Blueroot Vines|r par terre
    .complete 29166,1
step
    .isOnQuest 29123
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Tuez les |cRXP_ENEMY_Invaders from the Terres de Feu|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Tuez les |cRXP_ENEMY_Invaders from the Terres de Feu|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Tuez les |cRXP_ENEMY_Invaders from the Terres de Feu|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Tuez les |cRXP_ENEMY_Invaders from the Terres de Feu|r
    .complete 29163,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isQuestComplete 29162
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29162 >>Rendez la quête Bénédiction de la nature
step
    .isQuestComplete 29122
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29122 >>Rendez la quête Des échos de Némésis
step
    .isQuestComplete 29126
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .dailyturnin 29126 >>Rendez la quête La puissance de Malorne
step
    .isQuestComplete 29165
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .dailyturnin 29165 >>Rendez la quête L'appel de la meute
step
    .isQuestComplete 29148
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .dailyturnin 29148 >>Rendez la quête Ailes de flamme
step
    .isQuestComplete 29166
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .dailyturnin 29166 >>Rendez la quête Fournitures pour l'Autre Côté
step
    .isQuestComplete 29123
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .dailyturnin 29123 >>Rendre la quête Rage Against the Flammes
step
    .isQuestComplete 29149
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .dailyturnin 29149 >>Rendre la quête Rage Against the Flammes
step
    .isQuestComplete 29127
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .dailyturnin 29127 >>Rendre la quête Rage Against the Flammes
step
    .isQuestComplete 29163
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .dailyturnin 29163 >>Rendre la quête Rage Against the Flammes
step
    .goto 198/1,-2080.200,4417.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arch Druide Hamuul Totem-runique|r
    .target Arch Druid Hamuul Runetotem
    .turnin 29199 >>Rendre la quête Demander des renforts
    .accept 29200 >>Acceptez la quête Leyara
step
    .goto 198/1,-1214.200,5236.700
    >>Parlez à |cRXP_ENEMY_Leyara|r
    .complete 29200,1 --|Find Leyara: 1/1
    .mob Leyara
step
    .goto 198/1,-2082.700,4424.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .turnin 29200 >>Rendre la quête Leyara
step
    .goto 198/1,-2076.300,4420.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Malfurion Hurlorage|r
    .target Malfurion Stormrage
    .accept 29201 >>Acceptez la quête Au-delà des portes de l'enfer
step
    #completewith GatesofHell
    .goto 198,27.484,56.394
    .zone 338 >> Franchissez le Portail vers les Terres de Feu
step
    >>Tuez le |cRXP_ENEMY_Seigneur des scories d'obsidienne|r
    .complete 29201,1 --|Secure a foothold in the Firelands: 1/1
    .mob Obsidian Slaglord
step
    #label GatesofHell
    .goto 338,47.151,90.502
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Malfurion Hurlorage|r
    .target Malfurion Stormrage
    .turnin 29201 >>Rendre la quête Au-delà des portes de l'enfer
]])


RXPGuides.RegisterGuide([[
#cata
#version 1
#group Le Front du Magma
#name B_1_TSOM_Démarrage
#next C_1_TSOM_Druids
#displayname |cRXP_FRIENDLY_2.0|r - Le Front du Magma

--Molten Front quests

step
    #completewith WispAway
    .goto 198,27.484,56.394
    .zone 338 >> Franchissez le Portail vers les Terres de Feu
step
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rayne Chanteplume|r
    .daily 29139,29143 >>Acceptez l'une des quêtes quotidiennes aléatoires proposées
    .target Rayne Feathersong
step
    .goto 338,45.626,86.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Capitaine Arbrefer|r
    .daily 29138 >>Acceptez la quête Victimes brûlées
    .target Captain Irontree
step
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Général Taldris Tombelune|r
    .daily 29179 >>Acceptez la quête Hostile Elements
    .daily 29304,29141,29142,29137 >> Acceptez l'une des quêtes quotidiennes aléatoires proposées
    .target General Taldris Moonfall
step -- 29138 Burn Victims
    .isOnQuest 29138
    #sticky
    #label BurnVictims
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .use 69240 >> |cRXP_WARN_Utilisez le|r |T463860:0|t[Baume enchanté] |cRXP_WARN_sur|r |cRXP_FRIENDLY_Wounded Hyjal Defenders|r
    .complete 29138,1 -- Wounded Hyjal Defender saved 1/1
    .target Wounded Hyjal Defender
step -- 29179 Hostile Elements
    .isOnQuest 29179
    #sticky
    #label HostileElements
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>Tuez les |cRXP_ENEMY_Charred Vanquishers|r et les |cRXP_ENEMY_Charred Soldiers|r
    .complete 29179,1 -- Charred Combatant slain (8)
    .mob Charred Vanquisher
    .mob Charred Soldier


step -- 29304 The Dogs of War
    .isOnQuest 29304
    #sticky
    #label TheDogs
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>Tuez les |cRXP_ENEMY_Charhounds|r et les |cRXP_ENEMY_Ancient Charhounds|r
    .complete 29304,1 -- Ancient Charhound slain (5)
    .mob Charhound
    .mob Ancient Charhound
step -- 29141 The Harder They Fall
    .isOnQuest 29141
    #sticky
    #label HarderTheyFall
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>Tuez les |cRXP_ENEMY_Molten Behemoths|r
    .complete 29141,1 -- Molten Behemoth slain (3)
    .mob Molten Behemoth
step -- 29142 Traitors Return
    .isOnQuest 29142
    #sticky
    #label TraitorsReturn
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,71.0,38.6,45,0
    >>Tuez les |cRXP_ENEMY_Druids of the Flamme|r
    .complete 29142,1 -- Druid of the Flame slain (3)
    .mob Druid of the Flame
step -- 29137 Breach in the Defenses
    .isOnQuest 29137
    #sticky
    #label Breach
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>Tuez les |cRXP_ENEMY_Lava Bursters|r
    .complete 29137,1 -- Lava Burster slain (5)
    .mob Lava Burster
step -- 29139 Aggressive Growth
    .isOnQuest 29139
    #sticky
    #label AggressiveGrowth
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>Cliquez sur les |cRXP_PICK_Ash Piles|r sur le sol
    .complete 29139,1 -- Smothervine planted (5)
step -- 29143 Wisp Away
    .isOnQuest 29143
    #sticky
    #label WispAway
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>|cRXP_WARN_Prenez le |cRXP_FRIENDLY_Hyjal Feu follet|r qui vous suit vers un Portail de feu|r
    >>|cRXP_WARN_Tuez les mobs qui sortent de lui. Assurez-vous que le |cRXP_FRIENDLY_Hyjal Feu follet|r ne meurt pas !|r
    .complete 29143,1 -- Close a Fire Portal 1/1
step
    #optional
    #requires BurnVictims
step
    #optional
    #requires HostileElements
step
    #optional
    #requires TheDogs
step
    #optional
    #requires HarderTheyFall
step
    #optional
    #requires TraitorsReturn
step
    #optional
    #requires Breach
step
    #optional
    #requires AggressiveGrowth
step
    #optional
    #requires WispAway
step
    .isQuestComplete 29179
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Général Taldris Tombelune|r
    .dailyturnin 29179 >>Rendre la quête Hostile Elements
    .target General Taldris Moonfall
step
    .isQuestComplete 29304
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Général Taldris Tombelune|r
    .dailyturnin 29304 >> Rendre la quête The Dogs of Guerre
    .target General Taldris Moonfall
step
    .isQuestComplete 29141
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Général Taldris Tombelune|r
    .dailyturnin 29141 >> Rendez la quête The Harder They Chute
    .target General Taldris Moonfall
step
    .isQuestComplete 29142
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Général Taldris Tombelune|r
    .dailyturnin 29142 >> Rendez la quête Traitors Renvoi
    .target General Taldris Moonfall
step
    .isQuestComplete 29137
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Général Taldris Tombelune|r
    .dailyturnin 29137 >> Rendez la quête Une faille dans les défenses
    .target General Taldris Moonfall
step
    .isQuestComplete 29138
    .goto 338,45.626,86.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Capitaine Arbrefer|r
    .dailyturnin 29138 >>Rendez la quête Victimes brûlées
    .target Captain Irontree
step
    .isQuestComplete 29139
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rayne Chanteplume|r
    .dailyturnin 29139 >>Rendez la quête Croissance agressive
    .target Rayne Feathersong
step
    .isQuestComplete 29143
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rayne Chanteplume|r
    .dailyturnin 29143 >>Rendez la quête Feu follet Absent(e)
    .target Rayne Feathersong




--Hyjal quests

step
    #completewith HyjalQuests
    .goto 338,53.026,83.693
    .zone 198 >> Prenez le Portail vers le mont Hyjal
step --accepted back at sanctuary of malorne
    .goto 198/1,-2088.800,4452.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Captain Soren Tombelune|r
    .target Captain Soren Moonfall
    .daily 29128 >>Acceptez la quête Les Protecteurs de Hyjal
step
    #loop
    .goto 198,27.108,62.009,5,0
    .goto 198,27.170,62.563,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r ou |cRXP_FRIENDLY_Mylune|r
    .daily 29125,29147,29164,29101,29161 >> Acceptez l'une des quêtes quotidiennes aléatoires proposées
    .disablecheckbox
    .questcount <1,29125,29147,29164,29101,29161
    .target Matoclaw
    .target Mylune
step
    #loop
    #label HyjalQuests
    .goto 198,27.527,62.510,5,0
    .goto 198,27.172,62.565,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r ou |cRXP_FRIENDLY_Dorda'en Tisselanuit|r
    .daily 29123,29149,29127,29163,29166,29247,29246,29248 >> Acceptez l'une des quêtes quotidiennes aléatoires proposées
    .disablecheckbox
    .questcount <1,29123,29149,29127,29163,29166,29247,29246,29248
    .target Matoclaw
    .target Dorda'en Nightweaver
step
    .isOnQuest 29166
    #completewith KillNemesis
    >>Ramassez le |cRXP_LOOT_Blueroot Vines|r par terre
    .complete 29166,1
step
    .isOnQuest 29123
    #completewith KillNemesis
    >>Tuez les |cRXP_ENEMY_Invaders from the Terres de Feu|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #completewith KillNemesis
    >>Tuez les |cRXP_ENEMY_Invaders from the Terres de Feu|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #completewith KillNemesis
    >>Tuez les |cRXP_ENEMY_Invaders from the Terres de Feu|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #completewith KillNemesis
    >>Tuez les |cRXP_ENEMY_Invaders from the Terres de Feu|r
    .complete 29163,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29101
    #loop
    .goto 198,22.89,59.91,70,0
    .goto 198,18.58,56.71,70,0
    .goto 198,15.11,48.85,70,0
    .goto 198,19.97,46.22,70,0
    >>Cliquez sur un |cRXP_FRIENDLY_Enfant de Tortolla|r
    >>|cRXP_WARN_Visez vers l'eau et lance|r |T132219:0|t[Pousser la tortue] |cRXP_WARN_(1)|r
    .complete 29101,1 -- Child of Tortolla punted into water (5)
    .target Child of Tortolla
step
    .isOnQuest 29164
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Tuez les |cRXP_ENEMY_Invaders from the Terres de Feu|r
    .use 69235 >> |cRXP_WARN_Utilisez le|r |T134298:0|t[Crok of the Loup] |cRXP_WARN_sur leurs cadavres|r
    .complete 29164,1 -- Howl atop an invader's corpse (10)
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29147
    #completewith next
    .cast 97241 >> |cRXP_WARN_Utilisez le|r |T135992:0|t[Plume de la reine oiseau] |cRXP_WARN_pour vous transformer en|r |cRXP_FRIENDLY_Ailes d'Aviana|r
    .use 69234
step
    .isOnQuest 29147
    #loop
    .goto 198,14.90,45.11,80,0
    .goto 198,10.13,36.76,80,0
    .goto 198,13.24,33.64,80,0
    .goto 198,18.65,40.28,80,0
    .use 69234 >> |cRXP_WARN_Utilisez le|r |T132172:0|t[Appel du vol] (1) |cRXP_WARN_aptitude près de |cRXP_FRIENDLY_Alpine Songbirds|r, |cRXP_FRIENDLY_Forest Owls|r et|r |cRXP_FRIENDLY_Goldwing Hawks|r
    .complete 29147,1 -- Alpine Songbird gathered (12)
    .target +Alpine Songbird
    .complete 29147,2 -- Forest Owl gathered (5)
    .target +Forest Owl
    .complete 29147,3 -- Goldwing Hawk gathered (2)
    .target +Goldwing Hawk
step
    .isOnQuest 29125
    #loop
    .goto 198,37.32,54.52,70,0
    .goto 198,40.87,55.93,70,0
    .goto 198,36.43,60.73,70,0
    .goto 198,33.45,64.19,70,0
    >>Placez-vous devant un |cRXP_FRIENDLY_Spirit of Malorne|r
    >>|cRXP_WARN_Ce sont les cerfs fantômes qui chargent au hasard|r
    .complete 29125,1 --Spirit of Malorne captured (3)
step
    #completewith next
    .goto 198,14.310,33.203
    .vehicle >> Cliquez sur |cRXP_PICK_Escalade Arbre|r pour commencer à l'escalader
    .target Climbing Tree
    .isOnQuest 29161
step
    .goto 198,14.310,33.203
    >>Cliquez sur un |cRXP_FRIENDLY_Ourson d'Hyjal|r pendant que vous êtes sur l'arbre
    .collect 54439,1
    .target Hyjal Bear Cub
    .isOnQuest 29161
step
    .isOnQuest 29161
    .goto 198,14.310,33.203
    *|cRXP_WARN_Lancez|r |T450907:0|t[Montée] (1) |cRXP_WARN_jusqu'à ce que vous soyez au sommet, visez la flèche vers le trampoline à côté de |cRXP_FRIENDLY_Gardien Taldros|r, puis lance|r |T446127:0|t[Lancer d'ours] (4)|cRXP_WARN_. Lancez|r |T450905:0|t[Descente] (2) |cRXP_WARN_et recommencez|r
    .complete 29161,1 --6/6 Hyjal Bear Cubs Rescued
step
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Lancez|r |T450905:0|t[Descente] (2) |cRXP_WARN_pour quitter l'arbre|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Lancez|r |T450905:0|t[Descente] (2) |cRXP_WARN_pour quitter l'arbre|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Lancez|r |T450905:0|t[Descente] (2) |cRXP_WARN_pour quitter l'arbre|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Lancez|r |T450905:0|t[Descente] (2) |cRXP_WARN_pour quitter l'arbre|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Lancez|r |T450905:0|t[Descente] (2) |cRXP_WARN_pour quitter l'arbre|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Lancez|r |T450905:0|t[Descente] (2) |cRXP_WARN_pour quitter l'arbre|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Lancez|r |T450905:0|t[Descente] (2) |cRXP_WARN_pour quitter l'arbre|r
step
    .isOnQuest 29161
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .turnin 29161 >>Rendez la quête Nounours-ball
    .accept 29162 >>Acceptez la quête Bénédiction de la nature
step
    .isQuestTurnedIn 29161
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .accept 29162 >>Acceptez la quête Bénédiction de la nature
step
    .isOnQuest 29125
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .turnin 29125 >>Rendez la quête Entre les arbres
    .accept 29126 >>Acceptez la quête La puissance de Malorne
step
    .isQuestTurnedIn 29125
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .accept 29126 >>Acceptez la quête La puissance de Malorne
step
    .isOnQuest 29147
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .turnin 29147 >>Rendez la quête Appel du vol
    .accept 29148 >>Acceptez la quête Ailes de flamme
step
    .isQuestTurnedIn 29147
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .accept 29148 >>Acceptez la quête Ailes de flamme
step
    .isOnQuest 29164
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .turnin 29164 >>Rendez la quête Perfectionner votre hurlement
    .accept 29165 >>Acceptez la quête L'appel de la meute
step
    .isQuestTurnedIn 29164
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .accept 29165 >>Acceptez la quête L'appel de la meute
step
    .isOnQuest 29101
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .turnin 29101 >>Rendez la quête La saison de la plate
    .accept 29122 >>Acceptez la quête Des échos de Némésis
step
    .isQuestTurnedIn 29101
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .accept 29122 >>Acceptez la quête Des échos de Némésis
step
    #completewith next
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .cast 97517 >> |cRXP_WARN_Utilisez l'|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_pour invoquer|r |cRXP_ENEMY_Pyrachnis|r
    .use 69232
step
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .use 69232 >> Tuez |cRXP_ENEMY_Pyrachnis|r
    >>|cRXP_WARN_Utilisez l'|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_pour aussi retirer le|r |T136016:0|t[Éclair de poison bouillant] |cRXP_WARN_débuff que |cRXP_ENEMY_Pyrachnis|r applique|r
    .complete 29162,1 --|Pyrachnis slain: 1/1
    .mob Pyrachnis
step
    #completewith next
    .isOnQuest 29126
    .goto 198,41.667,56.130
    .cast 97012 >> |cRXP_WARN_Utilisez l'|r |T135139:0|t[Bâton du gardien] |cRXP_WARN_à la |cRXP_PICK_Pile of Fum|r pour invoquer|r |cRXP_ENEMY_Galenges|r
    .use 68997
step
    .goto 198,41.667,56.130
    .isOnQuest 29126
    .use 68997 >> Tuez |cRXP_ENEMY_Galenges|r
    .complete 29126,1 -- Galenges slain (1)
    .mob Galenges
step
    .isOnQuest 29148
    #completewith next
    .goto 198/1,-1500.700,4929.300
    .cast 97324 >> |cRXP_WARN_Utilisez l'|r |T135992:0|t[Plume de la reine oiseau] |cRXP_WARN_près du portail de flamme occidental pour invoquer|r |cRXP_ENEMY_Millagazor|r
    .use 69212
step
    .isOnQuest 29148
    .goto 198/1,-1500.700,4929.300
    .use 69212 >> Tuez |cRXP_ENEMY_Millagazor|r
    .complete 29148,1 -- Millagazor slain (1)
    .mob Millagazor
step
    .isOnQuest 29165
    #completewith next
    .goto 198,41.667,56.130
    .cast 97498 >> |cRXP_WARN_Utilisez l'|r |T134298:0|t[Crok of the Loup] |cRXP_WARN_pour invoquer|r |cRXP_ENEMY_Lylagar|r
    .use 69225
step
    .isOnQuest 29165
    .goto 198,41.667,56.130
    .use 69225 >> Tuez |cRXP_ENEMY_Lylagar|r
    .complete 29165,1 -- Lylagar slain (1)
    .mob Lylagar
step
    .isOnQuest 29122
    #completewith next
    .goto 198,24.014,55.803
    .gossip 52425,0 >>Parlez à |cRXP_FRIENDLY_Tooga|r pour invoquer |cRXP_ENEMY_Némésis|r
    .skipgossip
    .target Tooga
step
    #label KillNemesis
    .isOnQuest 29122
    .goto 198,24.760,55.259
    >>Tuez |cRXP_ENEMY_Némésis|r
    >>|cRXP_WARN_Debout|cRXP_FRIENDLY_ sous |rTooga|r's coquille pour vous protéger de |cRXP_ENEMY_Némésis|r's |T135830:0|t[Fureur de lave] |cRXP_WARN_lance|r
    .complete 29122,1 -- Nemesis slain (1)
    .target Tooga
    .mob Nemesis
step
    .isOnQuest 29166
    #loop
    .goto 198,29.53,56.21,70,0
    .goto 198,36.15,52.44,70,0
    .goto 198,35.94,58.80,70,0
    .goto 198,24.27,62.12,70,0
    >>Ramassez le |cRXP_LOOT_Blueroot Vines|r par terre
    .complete 29166,1
step
    .isOnQuest 29123
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Tuez les |cRXP_ENEMY_Invaders from the Terres de Feu|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Tuez les |cRXP_ENEMY_Invaders from the Terres de Feu|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Tuez les |cRXP_ENEMY_Invaders from the Terres de Feu|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Tuez les |cRXP_ENEMY_Invaders from the Terres de Feu|r
    .complete 29163,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step -- 29248 Releasing the Pressure
    .isOnQuest 29248
    .goto 198,32.0,59.8,70,0
    .goto 198,36.6,54.8,70,0
    .goto 198,39.2,62.6,70,0
    .goto 198,34.6,64.6,70,0
    .goto 198,30.6,52.2,70,0
    >>Tuez les |cRXP_ENEMY_Charred Flamewakers|r. Ramassez-les pour leurs |cRXP_LOOT_Flamewaker Sonnette|r
    .complete 29248,1 -- Flamewaker Scale (100)
    .mob Charred Flamewaker
step -- 29128 The Protectors of Hyjal
    .isOnQuest 29128
    #completewith FinishProtector
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Tuez les |cRXP_ENEMY_Fiery Behemoths|r et les |cRXP_ENEMY_Seething Pyrelords|r
    .complete 29128,1 -- Invader slain at Sethria's Roost (6)
    .mob Fiery Behemoth
    .mob Seething Pyrelord
step -- 29247 Treating the Wounds
    .isOnQuest 29247
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Tuez les |cRXP_ENEMY_Fiery Behemoths|r. Ramassez-les pour leurs |cRXP_LOOT_Sulfur-Laced Wrappings|r
    .complete 29247,1 -- Sulfur-Laced Wrapping (4)
    .mob Fiery Behemoth
step -- 29246 Relieving the Pain
    .isOnQuest 29246
    #label FinishProtector
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Tuez les |cRXP_ENEMY_Seething Pyrelords|r. Ramassez-les pour leurs |cRXP_LOOT_Flame-Wreathed Cœurs|r
    .complete 29246,1 -- Flame-Wreathed Heart (4)
    .mob Seething Pyrelord
step -- 29128 The Protectors of Hyjal
    .isOnQuest 29128
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Tuez les |cRXP_ENEMY_Fiery Behemoths|r et les |cRXP_ENEMY_Seething Pyrelords|r
    .complete 29128,1 -- Invader slain at Sethria's Roost (6)
    .mob Fiery Behemoth
    .mob Seething Pyrelord
step
    .isQuestComplete 29162
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29162 >>Rendez la quête Bénédiction de la nature
step
    .isQuestComplete 29122
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29122 >>Rendez la quête Des échos de Némésis
step
    .isQuestComplete 29126
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .dailyturnin 29126 >>Rendez la quête La puissance de Malorne
step
    .isQuestComplete 29165
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .dailyturnin 29165 >>Rendez la quête L'appel de la meute
step
    .isQuestComplete 29148
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .dailyturnin 29148 >>Rendez la quête Ailes de flamme
step
    .isQuestComplete 29166
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .dailyturnin 29166 >>Rendez la quête Fournitures pour l'Autre Côté
step
    .isQuestComplete 29123
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .dailyturnin 29123 >>Rendre la quête Rage Against the Flammes
step
    .isQuestComplete 29149
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .dailyturnin 29149 >>Rendre la quête Rage Against the Flammes
step
    .isQuestComplete 29127
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .dailyturnin 29127 >>Rendre la quête Rage Against the Flammes
step
    .isQuestComplete 29163
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .dailyturnin 29163 >>Rendre la quête Rage Against the Flammes
step
    .isQuestComplete 29246
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dorda'en Tisselanuit|r
    .target Dorda'en Nightweaver
    .dailyturnin 29246 >>Rendez la quête Soulager la douleur
step
    .isQuestComplete 29247
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dorda'en Tisselanuit|r
    .target Dorda'en Nightweaver
    .dailyturnin 29247 >>Rendez la quête Soigner les blessures
step
    .isQuestComplete 29248
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dorda'en Tisselanuit|r
    .target Dorda'en Nightweaver
    .dailyturnin 29248 >>Rendez la quête Relâcher la pression
step
    #completewith next
    .isQuestComplete 29128
    .goto 198,27.484,56.394
    .zone 338 >> Franchissez le Portail vers les Terres de Feu
step
    .isQuestComplete 29128
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Général Taldris Tombelune|r
    .dailyturnin 29128 >>Rendre la quête Les protecteurs de Hyjal
    .target General Taldris Moonfall
step
    #completewith FinishDruids
    .goto 338,47.017,91.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Malfurion Hurlorage|r
    .accept 29181 >>Acceptez la quête Les druides de la Serre
    --.accept 29214 >>Accept The Shadow Wardens
    .target Malfurion Stormrage
step
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >> Prenez le Portail vers le mont Hyjal
step
    .isQuestComplete 29181
    .goto 198,47.017,91.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seigneur du ciel Omnuron|r
    .turnin 29181 >>Rendre la quête Les druides de la Serre
    .target Skylord Omnuron
step
    #label FinishDruids
    .isQuestAvailable 29181
    +|cRXP_WARN_Vous avez terminé toutes les quêtes quotidiennes disponibles pour aujourd'hui. Rechargez ce même guide demain (|r|cRXP_FRIENDLY_2.0|r - Le Front du Magma|cRXP_WARN_) pour continuer à terminer les quêtes quotidiennes jusqu'à ce que vous ayez acquis suffisamment|r |T513195:0|t[Marks of the Monde Arbre]

-- Beginning of Druids questline if turned in
step
    .isQuestTurnedIn 29181
    .goto 198/1,-2740.000,4902.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Isara Valarive|r
    .target Isara Riverstride
    .accept 29182 >>Acceptez la quête Le vol des corbeaux des tempêtes
step
    #completewith next
    .isOnQuest 29182
    .goto 198,27.484,56.394
    .zone 338 >> Franchissez le Portail vers les Terres de Feu
step
    .isQuestComplete 29181
    .goto 338,43.028,80.598
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seigneur du ciel Omnuron|r
    .turnin 29182 >>Rendez la quête Le vol des corbeaux des tempêtes
    .target Skylord Omnuron
step
    .isQuestTurnedIn 29181
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Général Taldris Tombelune|r
    .daily 29206 >>Acceptez la quête Dans les flammes
    .target General Taldris Moonfall
step
    .isOnQuest 29206
    .goto 338,43.15,80.14,10,0
    .goto 338,33.83,67.40
    >>Escortez et protégez le |cRXP_FRIENDLY_Windcaller|r à travers le feu
    >>Tuez le |cRXP_ENEMY_Pyroseigneur|r à la fin
    >>Parlez au |cRXP_FRIENDLY_Seigneur du ciel Omnuron|r juste avant les feux s'il n'y a pas de |cRXP_FRIENDLY_Windcaller|r
    .complete 29206,1 -- Druid of the Talon Windcaller protected 1/1
    .mob Flamewaker Assassin
    .mob Pyrelord
    .target Nordrala
    .skipgossip
step
    #completewith next
    .subzone 5746 >> |cRXP_WARN_Descendez dans le grand trou. Dirigez-vous vers|r |cRXP_FRIENDLY_Thisalee Corbeau|r
step
    .isQuestTurnedIn 29181
    .goto 338,42.541,59.713
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thisalee Corbeau|r
    .dailyturnin 29206 >>Rendez la quête Dans les flammes
    .daily 29264 >>Acceptez la quête Les Attise-flammes du flot de lave
    .daily 29265 >>Acceptez la quête Fleurs de feu
    .target Thisalee Crow
step -- 29264 Flamewakers of the Molten Flow
    .isOnQuest 29264
    #completewith AnrenEscort
    >>Tuez les |cRXP_ENEMY_Flamewaker Sentinels|r, les |cRXP_ENEMY_Flamewaker Hunters|r et les |cRXP_ENEMY_Chaman attise-flammes|r
    .complete 29264,1 -- Flamewaker slain (8)
    .mob Flamewaker Sentinel
    .mob Flamewaker Shaman
    .mob Flamewaker Hunter
step -- 29265 Fire Flowers
    .isOnQuest 29265
    #completewith AnrenEscort
    >>Ramassez les |cRXP_LOOT_Luciferns|r sur le sol
    .complete 29265,1 -- Lucifern (5)
step
    .isQuestTurnedIn 29181
    .goto 338,51.897,30.965
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anren Cherchelombre|r
    .accept 29272 >>Acceptez la quête Besoin… d'eau… vite…
    .target Anren Shadowseeker
step
    .isOnQuest 29272
    .goto 338,51.897,30.965
    .gossip 53233 >> Parlez de nouveau à |cRXP_FRIENDLY_Anren Cherchelombre|r pour débuter l'escorte
    .skipgossip
    .target Anren Shadowseeker
step
    #label AnrenEscort
    .isOnQuest 29272
    .goto 338,42.59,59.85
    >>Escortez |cRXP_FRIENDLY_Anren Cherchelombre|r
    >>|cRXP_WARN_Suis-le de près et sautez sur le|r |T514278:0|t[Puits aérifères] |cRXP_WARN_à côté de lui|r
    .complete 29272,1 -- Escort Anren Shadowseeker to the front of the cave 1/1
    .target Anren Shadowseeker
step -- 29264 Flamewakers of the Molten Flow
    .isOnQuest 29264
    #sticky
    #label FOTMF
    #loop
    .goto 338,50.15,58.80,70,0
    .goto 338,43.39,51.11,70,0
    .goto 338,51.48,39.68,70,0
    .goto 338,52.74,54.06,70,0
    >>Tuez les |cRXP_ENEMY_Flamewaker Sentinels|r, les |cRXP_ENEMY_Flamewaker Hunters|r et les |cRXP_ENEMY_Chaman attise-flammes|r
    .complete 29264,1 -- Flamewaker slain (8)
    .mob Flamewaker Sentinel
    .mob Flamewaker Shaman
    .mob Flamewaker Hunter
step -- 29265 Fire Flowers
    .isOnQuest 29265
    #sticky
    #label Lucifern
    #loop
    .goto 338,50.15,58.80,70,0
    .goto 338,43.39,51.11,70,0
    .goto 338,51.48,39.68,70,0
    .goto 338,52.74,54.06,70,0
    >>Ramassez les |cRXP_LOOT_Luciferns|r sur le sol
    .complete 29265,1 -- Lucifern (5)
step
    #optional
    #requires FOTMF
step
    #optional
    #requires Lucifern
step
    .isQuestComplete 29264
    .goto 338,42.541,59.713
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thisalee Corbeau|r
    .dailyturnin 29264 >>Rendre la quête Flamewakers de l'Ondin En fusion
    .target Thisalee Crow
step
    #label ExitUnderground
    #completewith DruidDailies
    .goto 338,33.08,67.62
    .aura 98833 >> |cRXP_WARN_Retournez à la grande ouverture par laquelle vous êtes descendu. Montez dans le|r |T514278:0|t[Puits aérifère]|cRXP_WARN_, puis sautez pour revenir à la surface du Front du Magma|r
    .subzoneskip 5746,1
step
    #requires ExitUnderground
    #completewith DruidDailies
    .goto 338,33.08,67.62
    +|cRXP_WARN_Sautez pour revenir à la surface du Front du Magma|r
    .subzoneskip 5746,1
step
    .isQuestComplete 29272
    .goto 338,35.983,58.988
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tholo Blanc-Sabot|r
    .turnin 29272 >>Rendre la quête Besoin… d'eau… vite…
    .target Tholo Whitehoof
step
    .isQuestTurnedIn 29272
    .goto 338,35.860,59.235
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tholo Blanc-Sabot|r ou |cRXP_FRIENDLY_Anren Cherchelombre|r
    .daily 29273,29274 >>Acceptez l'une des quêtes quotidiennes aléatoires proposées
    .target Tholo Whitehoof
    .target Anren Shadowseeker
step
    .isQuestComplete 29265
    .goto 338,36.299,56.344
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Choluna|r
    .dailyturnin 29265 >>Rendez la quête Fleurs de feu
    .target Choluna
step
    .isQuestTurnedIn 29181
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morthis Murmedaile|r
    .daily 29290,29287,29288 >> Acceptez l'une des quêtes quotidiennes aléatoires proposées
    .target Morthis Whisperwing
step
    .isQuestTurnedIn 29181
    #label DruidDailies
    .goto 338,34.295,56.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arthorn Chant-du-Vent|r
    .daily 29293,29296 >> Acceptez l'une des quêtes quotidiennes aléatoires proposées
    .target Arthorn Windsong
step
    #completewith next
    .goto 338,33.808,57.177
    .isOnQuest 29290
    .vehicle >> Montez le |cRXP_FRIENDLY_Faucon de feu apprivoisé|r
    .target Trained Fire Hawk
step
    .isOnQuest 29290
    >>|cRXP_WARN_Lancez|r |T135821:0|t[Graine de flammes] (1) |cRXP_WARN_et|r |T451164:0|t[Explosion de flammes] (2) |cRXP_WARN_pour tuer |cRXP_ENEMY_Flamewakers|r, |cRXP_ENEMY_Cinderwebs|r et |cRXP_ENEMY_En fusion Lords|r
    .complete 29290,1 -- Amassing Flamewakers slain  (100)
    .mob +Flamewaker Centurion
    .mob +Flamewaker Cauterizer
    .mob +Flamewaker Incinerator
    .complete 29290,2 -- Amassing Cinderwebs slain  (40)
    .mob +Cinderweb Skitterer
    .mob +Cinderweb Clutchkeeper
    .mob +Cinderweb Matriarch
    .complete 29290,3 -- Molten Lords slain (3)
    .mob +Molten Lord
step
    .isQuestComplete 29290
    .subzone 5745 >>|cRXP_WARN_Lancez|r |T514278:0|t[Retour à la Fournaise] (6) |cRXP_WARN_pour revenir|r
    .subzoneskip 5748
step
    #optional
    #sticky
    .isOnQuest 29287,29288,29293,29296
    .subzone 5748 >> |cRXP_WARN_Utilisez les Pierres de passage pour monter sur la Crête du Panache de feu. Vous devriez viser à utiliser un puits aérifère à la fin des Pierres de passage car cela vous accordera le|r |T236222:0|t[Convalescence des vents] |cRXP_WARN_bonus qui augmente votre vitesse d'attaque et votre rapidité de 100%, et vous permet de sauter beaucoup plus haut et plus loin que d'habitude|r
step
    #sticky
    #label HowHot
    .isOnQuest 29273
    .use 69806 >>|cRXP_WARN_Utilisez|r |T135155:0|t[Thermomètre de Tholo] |cRXP_WARN_au Pic du Panache de feu|r |cRXP_PICK_Lacs de Lave|r
    >>|cRXP_WARN_Vous pouvez utiliser|r |T135155:0|t[Thermomètre de Tholo] |cRXP_WARN_tout en restant sur votre monture|r
    >>|cRXP_WARN_Sautez vers le haut en utilisant les|r |T514278:0|t[Puits aérifères] |cRXP_WARN_situés à travers le Pic du Panache de feu pour vous frayer un chemin vers le sommet|r
    .complete 29273,2 --|Northeastern Lava Pool sampled: 1/1
    .goto 338,30.748,31.572,-1
    .complete 29273,1 --|Northwestern Lava Pool sampled: 1/1
    .goto 338,21.364,29.851,-1
    .complete 29273,3 --|Central Lava Pool sampled: 1/1
    .goto 338,23.276,41.385,-1
step
    #sticky
    #label FireHawkEgg
    .isOnQuest 29287
    .goto 338,23.790,41.557
    >>Ramassez un |cRXP_LOOT_Œuf de faucon de feu|r au sommet du Pic du Panache de feu
    >>|cRXP_WARN_Sautez vers le haut en utilisant les|r |T514278:0|t[Puits aérifères] |cRXP_WARN_situés à travers le Pic du Panache de feu pour vous frayer un chemin vers le sommet|r
    .complete 29287,1 -- Fire Hawk Egg (1)
step
    #sticky
    #label InjuredDruids
    .isOnQuest 29293
    #loop
    .goto 338,28.2,46.7,70,0
    .goto 338,28.5,33.0,70,0
    .goto 338,19.4,29.7,70,0
    .goto 338,16.7,39.4,70,0
    >>Cliquez sur les |cRXP_FRIENDLY_druides blessés de la Serre|r
    .complete 29293,1 -- Druids of the Talon rescued (5)
    .target Druid of the Talon
step
    #sticky
    #label FireHawks
    .isOnQuest 29296
    #loop
    .goto 338,28.2,46.7,70,0
    .goto 338,28.5,33.0,70,0
    .goto 338,19.4,29.7,70,0
    .goto 338,16.7,39.4,70,0
    >>Tuez les |cRXP_ENEMY_Faucons de feu|r
    .complete 29296,1 -- Fire Hawk slain (5)
    .mob Fire Hawk
step
    .isOnQuest 29288
    #label FireHawkHatchling
    #loop
    .goto 338,28.2,46.7,70,0
    .goto 338,28.5,33.0,70,0
    .goto 338,19.4,29.7,70,0
    .goto 338,16.7,39.4,70,0
    >>Cliquez sur les |cRXP_FRIENDLY_Fire Hawk Hatchlings|r
    >>|cRXP_WARN_Le sommet de Pic du Panache de feu en contient une grande quantité|r
    .complete 29288,1 --  Fire Hawk Hatchling (5)
 step
    #optional
    #requires InjuredDruids
step
    #optional
    #requires FireHawkEgg
step
    #optional
    #requires FireHawks
step
    #optional
    #requires HowHot
step
    #optional
    #requires FireHawkHatchling
step
    .isQuestComplete 29290
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morthis Murmedaile|r
    .dailyturnin 29290 >> Rendez la quête Feu dans les cieux
    .target Morthis Whisperwing
step
    .isQuestComplete 29287
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morthis Murmedaile|r
    .dailyturnin 29287 >> Rendre la quête Peaked Interest
    .target Morthis Whisperwing
step
    .isQuestComplete 29288
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morthis Murmedaile|r
    .dailyturnin 29288 >> Rendez la quête Premiers envols
    .target Morthis Whisperwing
step
    .isQuestComplete 29293
    .goto 338,34.295,56.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arthorn Chant-du-Vent|r
    .dailyturnin 29293 >> Rendez la quête Ailes roussies
    .target Arthorn Windsong
step
    .isQuestComplete 29296
    .goto 338,34.295,56.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arthorn Chant-du-Vent|r
    .dailyturnin 29296 >> Rendez la quête Oiseaux territoriaux
    .target Arthorn Windsong
step
    .isQuestComplete 29273
    .goto 338,51.245,85.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anren Cherchelombre|r
    .dailyturnin 29273 >> Rendre la quête How Ça brûle
    .target Anren Shadowseeker
step
    .isQuestComplete 29274
    .goto 338,51.555,85.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tholo Blanc-Sabot|r
    .dailyturnin 29274 >> Rendre la quête Hounds of Shannox
    .target Tholo Whitehoof
step
    .goto 338,47.017,91.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Malfurion Hurlorage|r
    --.accept 29181 >>Accept Druids of the Talon
    .accept 29214 >>Acceptez la quête Les Gardiennes de l'ombre
    .target Malfurion Stormrage
step
    .isQuestTurnedIn 29181
    +|cRXP_WARN_Vous avez terminé toutes les quêtes quotidiennes disponibles pour aujourd'hui. Rechargez le (|r|cRXP_ENEMY_2.5|r - Front du Magma + Druides|cRXP_WARN_) guide demain pour continuer à accomplir les quêtes quotidiennes jusqu'à ce que vous ayez acquis assez|r |T513195:0|t[Marks of the Monde Arbre]
]])

RXPGuides.RegisterGuide([[
#cata
#version 1
#group Le Front du Magma
#name C_1_TSOM_Druids
--#next D_1_TSOM_Wardens
--Making guide not auto change so user has choice of which daily quests they want to do out of Druids/Wardens
#displayname |cRXP_ENEMY_2.5|r - Front du Magma + Druides

step
    #optional
    .isQuestAvailable 29181
    +|cRXP_WARN_Vous devez d'abord récolter 150|r |T513195:0|t[Marks of the Monde Arbre] |cRXP_WARN_et rendre la quête [Les druides de la Serre] afin de terminer les quêtes quotidiennes pour eux|r
    >>|cRXP_WARN_Continuez à compléter le (|r|cRXP_FRIENDLY_2.0|r - Front du Magma|cRXP_WARN_) guide jusqu'à ce que vous ayez assez|r |T513195:0|t[Marks of the Monde Arbre]
    .goto 198,47.017,91.361
    .turnin 29181 >>Rendre la quête Les druides de la Serre
    .target Skylord Omnuron
step
    #optional
    #completewith HyjalQuests
	.zone 85 >> Voyagez à Orgrimmar << Horde
	.zone 84 >> Voyagez à Stormwind << Alliance
	.zoneskip 198
    .zoneskip 338
step
    #optional
    #completewith HyjalQuests
    .goto 85,51.12,38.26 << Horde
    .goto 84,76.199,18.690 << Alliance
    .zone 198 >>Prendre le portail vers Hyjal
    .zoneskip 338
step
    #optional
    #completewith HyjalQuests
    .goto 338,53.026,83.693
    .zone 198 >> Prenez le Portail vers le mont Hyjal
    .zoneskip 338,1
step --accepted back at sanctuary of malorne
    .goto 198/1,-2088.800,4452.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Captain Soren Tombelune|r
    .target Captain Soren Moonfall
    .daily 29128 >>Acceptez la quête Les Protecteurs de Hyjal
step
    #loop
    .goto 198,27.108,62.009,5,0
    .goto 198,27.170,62.563,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r ou |cRXP_FRIENDLY_Mylune|r
    .daily 29125,29147,29164,29101,29161 >> Acceptez l'une des quêtes quotidiennes aléatoires proposées
    .disablecheckbox
    .questcount <1,29125,29147,29164,29101,29161
    .target Matoclaw
    .target Mylune
step
    #loop
    #label HyjalQuests
    .goto 198,27.527,62.510,5,0
    .goto 198,27.172,62.565,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r ou |cRXP_FRIENDLY_Dorda'en Tisselanuit|r
    .daily 29123,29149,29127,29163,29166,29247,29246,29248 >> Acceptez l'une des quêtes quotidiennes aléatoires proposées
    .disablecheckbox
    .questcount <1,29123,29149,29127,29163,29166,29247,29246,29248
    .target Matoclaw
    .target Dorda'en Nightweaver
step
    .isOnQuest 29166
    #completewith KillNemesis
    >>Ramassez le |cRXP_LOOT_Blueroot Vines|r par terre
    .complete 29166,1
step
    .isOnQuest 29123
    #completewith KillNemesis
    >>Tuez les |cRXP_ENEMY_Invaders from the Terres de Feu|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #completewith KillNemesis
    >>Tuez les |cRXP_ENEMY_Invaders from the Terres de Feu|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #completewith KillNemesis
    >>Tuez les |cRXP_ENEMY_Invaders from the Terres de Feu|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #completewith KillNemesis
    >>Tuez les |cRXP_ENEMY_Invaders from the Terres de Feu|r
    .complete 29163,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29101
    #loop
    .goto 198,22.89,59.91,70,0
    .goto 198,18.58,56.71,70,0
    .goto 198,15.11,48.85,70,0
    .goto 198,19.97,46.22,70,0
    >>Cliquez sur un |cRXP_FRIENDLY_Enfant de Tortolla|r
    >>|cRXP_WARN_Visez vers l'eau et lance|r |T132219:0|t[Pousser la tortue] |cRXP_WARN_(1)|r
    .complete 29101,1 -- Child of Tortolla punted into water (5)
    .target Child of Tortolla
step
    .isOnQuest 29164
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Tuez les |cRXP_ENEMY_Invaders from the Terres de Feu|r
    .use 69235 >> |cRXP_WARN_Utilisez le|r |T134298:0|t[Crok of the Loup] |cRXP_WARN_sur leurs cadavres|r
    .complete 29164,1 -- Howl atop an invader's corpse (10)
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29147
    #completewith next
    .cast 97241 >> |cRXP_WARN_Utilisez le|r |T135992:0|t[Plume de la reine oiseau] |cRXP_WARN_pour vous transformer en|r |cRXP_FRIENDLY_Ailes d'Aviana|r
    .use 69234
step
    .isOnQuest 29147
    #loop
    .goto 198,14.90,45.11,80,0
    .goto 198,10.13,36.76,80,0
    .goto 198,13.24,33.64,80,0
    .goto 198,18.65,40.28,80,0
    .use 69234 >> |cRXP_WARN_Utilisez le|r |T132172:0|t[Appel du vol] (1) |cRXP_WARN_aptitude près de |cRXP_FRIENDLY_Alpine Songbirds|r, |cRXP_FRIENDLY_Forest Owls|r et|r |cRXP_FRIENDLY_Goldwing Hawks|r
    .complete 29147,1 -- Alpine Songbird gathered (12)
    .target +Alpine Songbird
    .complete 29147,2 -- Forest Owl gathered (5)
    .target +Forest Owl
    .complete 29147,3 -- Goldwing Hawk gathered (2)
    .target +Goldwing Hawk
step
    .isOnQuest 29125
    #loop
    .goto 198,37.32,54.52,70,0
    .goto 198,40.87,55.93,70,0
    .goto 198,36.43,60.73,70,0
    .goto 198,33.45,64.19,70,0
    >>Placez-vous devant un |cRXP_FRIENDLY_Spirit of Malorne|r
    >>|cRXP_WARN_Ce sont les cerfs fantômes qui chargent au hasard|r
    .complete 29125,1 --Spirit of Malorne captured (3)
step
    #completewith next
    .goto 198,14.310,33.203
    .vehicle >> Cliquez sur |cRXP_PICK_Escalade Arbre|r pour commencer à l'escalader
    .target Climbing Tree
    .isOnQuest 29161
step
    .goto 198,14.310,33.203
    >>Cliquez sur un |cRXP_FRIENDLY_Ourson d'Hyjal|r pendant que vous êtes sur l'arbre
    .collect 54439,1
    .target Hyjal Bear Cub
    .isOnQuest 29161
step
    .isOnQuest 29161
    .goto 198,14.310,33.203
    *|cRXP_WARN_Lancez|r |T450907:0|t[Montée] (1) |cRXP_WARN_jusqu'à ce que vous soyez au sommet, visez la flèche vers le trampoline à côté de |cRXP_FRIENDLY_Gardien Taldros|r, puis lance|r |T446127:0|t[Lancer d'ours] (4)|cRXP_WARN_. Lancez|r |T450905:0|t[Descente] (2) |cRXP_WARN_et recommencez|r
    .complete 29161,1 --6/6 Hyjal Bear Cubs Rescued
step
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Lancez|r |T450905:0|t[Descente] (2) |cRXP_WARN_pour quitter l'arbre|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Lancez|r |T450905:0|t[Descente] (2) |cRXP_WARN_pour quitter l'arbre|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Lancez|r |T450905:0|t[Descente] (2) |cRXP_WARN_pour quitter l'arbre|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Lancez|r |T450905:0|t[Descente] (2) |cRXP_WARN_pour quitter l'arbre|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Lancez|r |T450905:0|t[Descente] (2) |cRXP_WARN_pour quitter l'arbre|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Lancez|r |T450905:0|t[Descente] (2) |cRXP_WARN_pour quitter l'arbre|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Lancez|r |T450905:0|t[Descente] (2) |cRXP_WARN_pour quitter l'arbre|r
step
    .isOnQuest 29161
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .turnin 29161 >>Rendez la quête Nounours-ball
    .accept 29162 >>Acceptez la quête Bénédiction de la nature
step
    .isQuestTurnedIn 29161
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .accept 29162 >>Acceptez la quête Bénédiction de la nature
step
    .isOnQuest 29125
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .turnin 29125 >>Rendez la quête Entre les arbres
    .accept 29126 >>Acceptez la quête La puissance de Malorne
step
    .isQuestTurnedIn 29125
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .accept 29126 >>Acceptez la quête La puissance de Malorne
step
    .isOnQuest 29147
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .turnin 29147 >>Rendez la quête Appel du vol
    .accept 29148 >>Acceptez la quête Ailes de flamme
step
    .isQuestTurnedIn 29147
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .accept 29148 >>Acceptez la quête Ailes de flamme
step
    .isOnQuest 29164
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .turnin 29164 >>Rendez la quête Perfectionner votre hurlement
    .accept 29165 >>Acceptez la quête L'appel de la meute
step
    .isQuestTurnedIn 29164
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .accept 29165 >>Acceptez la quête L'appel de la meute
step
    .isOnQuest 29101
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .turnin 29101 >>Rendez la quête La saison de la plate
    .accept 29122 >>Acceptez la quête Des échos de Némésis
step
    .isQuestTurnedIn 29101
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .accept 29122 >>Acceptez la quête Des échos de Némésis
step
    #completewith next
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .cast 97517 >> |cRXP_WARN_Utilisez l'|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_pour invoquer|r |cRXP_ENEMY_Pyrachnis|r
    .use 69232
step
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .use 69232 >> Tuez |cRXP_ENEMY_Pyrachnis|r
    >>|cRXP_WARN_Utilisez l'|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_pour aussi retirer le|r |T136016:0|t[Éclair de poison bouillant] |cRXP_WARN_débuff que |cRXP_ENEMY_Pyrachnis|r applique|r
    .complete 29162,1 --|Pyrachnis slain: 1/1
    .mob Pyrachnis
step
    #completewith next
    .isOnQuest 29126
    .goto 198,41.667,56.130
    .cast 97012 >> |cRXP_WARN_Utilisez l'|r |T135139:0|t[Bâton du gardien] |cRXP_WARN_à la |cRXP_PICK_Pile of Fum|r pour invoquer|r |cRXP_ENEMY_Galenges|r
    .use 68997
step
    .goto 198,41.667,56.130
    .isOnQuest 29126
    .use 68997 >> Tuez |cRXP_ENEMY_Galenges|r
    .complete 29126,1 -- Galenges slain (1)
    .mob Galenges
step
    .isOnQuest 29148
    #completewith next
    .goto 198/1,-1500.700,4929.300
    .cast 97324 >> |cRXP_WARN_Utilisez l'|r |T135992:0|t[Plume de la reine oiseau] |cRXP_WARN_près du portail de flamme occidental pour invoquer|r |cRXP_ENEMY_Millagazor|r
    .use 69212
step
    .isOnQuest 29148
    .goto 198/1,-1500.700,4929.300
    .use 69212 >> Tuez |cRXP_ENEMY_Millagazor|r
    .complete 29148,1 -- Millagazor slain (1)
    .mob Millagazor
step
    .isOnQuest 29165
    #completewith next
    .goto 198,41.667,56.130
    .cast 97498 >> |cRXP_WARN_Utilisez l'|r |T134298:0|t[Crok of the Loup] |cRXP_WARN_pour invoquer|r |cRXP_ENEMY_Lylagar|r
    .use 69225
step
    .isOnQuest 29165
    .goto 198,41.667,56.130
    .use 69225 >> Tuez |cRXP_ENEMY_Lylagar|r
    .complete 29165,1 -- Lylagar slain (1)
    .mob Lylagar
step
    .isOnQuest 29122
    #completewith next
    .goto 198,24.014,55.803
    .gossip 52425,0 >>Parlez à |cRXP_FRIENDLY_Tooga|r pour invoquer |cRXP_ENEMY_Némésis|r
    .skipgossip
    .target Tooga
step
    #label KillNemesis
    .isOnQuest 29122
    .goto 198,24.760,55.259
    >>Tuez |cRXP_ENEMY_Némésis|r
    >>|cRXP_WARN_Debout|cRXP_FRIENDLY_ sous |rTooga|r's coquille pour vous protéger de |cRXP_ENEMY_Némésis|r's |T135830:0|t[Fureur de lave] |cRXP_WARN_lance|r
    .complete 29122,1 -- Nemesis slain (1)
    .target Tooga
    .mob Nemesis
step
    .isOnQuest 29166
    #loop
    .goto 198,29.53,56.21,70,0
    .goto 198,36.15,52.44,70,0
    .goto 198,35.94,58.80,70,0
    .goto 198,24.27,62.12,70,0
    >>Ramassez le |cRXP_LOOT_Blueroot Vines|r par terre
    .complete 29166,1
step
    .isOnQuest 29123
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Tuez les |cRXP_ENEMY_Invaders from the Terres de Feu|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Tuez les |cRXP_ENEMY_Invaders from the Terres de Feu|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Tuez les |cRXP_ENEMY_Invaders from the Terres de Feu|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Tuez les |cRXP_ENEMY_Invaders from the Terres de Feu|r
    .complete 29163,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step -- 29248 Releasing the Pressure
    .isOnQuest 29248
    .goto 198,32.0,59.8,70,0
    .goto 198,36.6,54.8,70,0
    .goto 198,39.2,62.6,70,0
    .goto 198,34.6,64.6,70,0
    .goto 198,30.6,52.2,70,0
    >>Tuez les |cRXP_ENEMY_Charred Flamewakers|r. Ramassez-les pour leurs |cRXP_LOOT_Flamewaker Sonnette|r
    .complete 29248,1 -- Flamewaker Scale (100)
    .mob Charred Flamewaker
step -- 29128 The Protectors of Hyjal
    .isOnQuest 29128
    #completewith FinishProtector
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Tuez les |cRXP_ENEMY_Fiery Behemoths|r et les |cRXP_ENEMY_Seething Pyrelords|r
    .complete 29128,1 -- Invader slain at Sethria's Roost (6)
    .mob Fiery Behemoth
    .mob Seething Pyrelord
step -- 29247 Treating the Wounds
    .isOnQuest 29247
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Tuez les |cRXP_ENEMY_Fiery Behemoths|r. Ramassez-les pour leurs |cRXP_LOOT_Sulfur-Laced Wrappings|r
    .complete 29247,1 -- Sulfur-Laced Wrapping (4)
    .mob Fiery Behemoth
step -- 29246 Relieving the Pain
    .isOnQuest 29246
    #label FinishProtector
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Tuez les |cRXP_ENEMY_Seething Pyrelords|r. Ramassez-les pour leurs |cRXP_LOOT_Flame-Wreathed Cœurs|r
    .complete 29246,1 -- Flame-Wreathed Heart (4)
    .mob Seething Pyrelord
step -- 29128 The Protectors of Hyjal
    .isOnQuest 29128
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Tuez les |cRXP_ENEMY_Fiery Behemoths|r et les |cRXP_ENEMY_Seething Pyrelords|r
    .complete 29128,1 -- Invader slain at Sethria's Roost (6)
    .mob Fiery Behemoth
    .mob Seething Pyrelord
step
    .isQuestComplete 29162
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29162 >>Rendez la quête Bénédiction de la nature
step
    .isQuestComplete 29122
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29122 >>Rendez la quête Des échos de Némésis
step
    .isQuestComplete 29126
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .dailyturnin 29126 >>Rendez la quête La puissance de Malorne
step
    .isQuestComplete 29165
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .dailyturnin 29165 >>Rendez la quête L'appel de la meute
step
    .isQuestComplete 29148
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .dailyturnin 29148 >>Rendez la quête Ailes de flamme
step
    .isQuestComplete 29166
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .dailyturnin 29166 >>Rendez la quête Fournitures pour l'Autre Côté
step
    .isQuestComplete 29123
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .dailyturnin 29123 >>Rendre la quête Rage Against the Flammes
step
    .isQuestComplete 29149
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .dailyturnin 29149 >>Rendre la quête Rage Against the Flammes
step
    .isQuestComplete 29127
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .dailyturnin 29127 >>Rendre la quête Rage Against the Flammes
step
    .isQuestComplete 29163
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .dailyturnin 29163 >>Rendre la quête Rage Against the Flammes
step
    .isQuestComplete 29246
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dorda'en Tisselanuit|r
    .target Dorda'en Nightweaver
    .dailyturnin 29246 >>Rendez la quête Soulager la douleur
step
    .isQuestComplete 29247
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dorda'en Tisselanuit|r
    .target Dorda'en Nightweaver
    .dailyturnin 29247 >>Rendez la quête Soigner les blessures
step
    .isQuestComplete 29248
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dorda'en Tisselanuit|r
    .target Dorda'en Nightweaver
    .dailyturnin 29248 >>Rendez la quête Relâcher la pression
step
    #completewith RayneFeathersong
    .isQuestComplete 29128
    .goto 198,27.484,56.394
    .zone 338 >> Franchissez le Portail vers les Terres de Feu
step
    .isQuestTurnedIn 29215 -- If turned in quest to unlock Wardens
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Avrilla|r
    .daily 29255,29257,29299 >>Acceptez l'une des quêtes quotidiennes aléatoires proposées
    .target Avrilla
step
    #label RayneFeathersong
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rayne Chanteplume|r
    .daily 29139,29143 >>Acceptez l'une des quêtes quotidiennes aléatoires proposées
    .target Rayne Feathersong
step
    .isQuestTurnedIn 29282
    .goto 338,46.758,90.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Riquette|r
    .daily 29263,29278,29295,29297 >> Acceptez l'une des quêtes quotidiennes aléatoires proposées
    >>|cRXP_WARN_Passez cette étape si |cRXP_FRIENDLY_Riquette|r n'offre pas de quête ici aujourd'hui|r
    .target Ricket
step
    .goto 338,45.626,86.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Capitaine Arbrefer|r
    .daily 29138 >>Acceptez la quête Victimes brûlées
    .target Captain Irontree
step
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Général Taldris Tombelune|r
    .daily 29179 >>Acceptez la quête Hostile Elements
    .daily 29304,29141,29142,29137 >> Acceptez l'une des quêtes quotidiennes aléatoires proposées
    .target General Taldris Moonfall
step
    .isQuestComplete 29128
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Général Taldris Tombelune|r
    .dailyturnin 29128 >>Rendre la quête Les protecteurs de Hyjal
    .target General Taldris Moonfall
step -- 29138 Burn Victims
    .isOnQuest 29138
    #sticky
    #label BurnVictims
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .use 69240 >> |cRXP_WARN_Utilisez le|r |T463860:0|t[Baume enchanté] |cRXP_WARN_sur|r |cRXP_FRIENDLY_Wounded Hyjal Defenders|r
    .complete 29138,1 -- Wounded Hyjal Defender saved 1/1
    .target Wounded Hyjal Defender
step -- Embergris 29255
    .isOnQuest 29255
    #label Embergris
    #sticky
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>Tuez les |cRXP_ENEMY_Charred Soldiers|r et les |cRXP_ENEMY_Charred Vanquishers|r. Ramassez-les pour leur |cRXP_LOOT_Embergris|r
    .complete 29255,1 -- Embergris (5)
    .mob Charred Soldier
    .mob Charred Vanquisher
step -- 29179 Hostile Elements
    .isOnQuest 29179
    #sticky
    #label HostileElements
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>Tuez les |cRXP_ENEMY_Charred Vanquishers|r et les |cRXP_ENEMY_Charred Soldiers|r
    .complete 29179,1 -- Charred Combatant slain (8)
    .mob Charred Vanquisher
    .mob Charred Soldier
step -- 29304 The Dogs of War
    .isOnQuest 29304
    #sticky
    #label TheDogs
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>Tuez les |cRXP_ENEMY_Charhounds|r et les |cRXP_ENEMY_Ancient Charhounds|r
    .complete 29304,1 -- Ancient Charhound slain (5)
    .mob Charhound
    .mob Ancient Charhound
step -- 29141 The Harder They Fall
    .isOnQuest 29141
    #sticky
    #label HarderTheyFall
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>Tuez les |cRXP_ENEMY_Molten Behemoths|r
    .complete 29141,1 -- Molten Behemoth slain (3)
    .mob Molten Behemoth
step -- 29142 Traitors Return
    .isOnQuest 29142
    #sticky
    #label TraitorsReturn
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,71.0,38.6,45,0
    >>Tuez les |cRXP_ENEMY_Druids of the Flamme|r
    .complete 29142,1 -- Druid of the Flame slain (3)
    .mob Druid of the Flame
step -- 29137 Breach in the Defenses
    .isOnQuest 29137
    #sticky
    #label Breach
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>Tuez les |cRXP_ENEMY_Lava Bursters|r
    .complete 29137,1 -- Lava Burster slain (5)
    .mob Lava Burster
step -- 29139 Aggressive Growth
    .isOnQuest 29139
    #sticky
    #label AggressiveGrowth
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>Cliquez sur les |cRXP_PICK_Ash Piles|r sur le sol
    .complete 29139,1 -- Smothervine planted (5)
step -- Steal Magmolias 29257
    .isOnQuest 29257
    #label StealMagmolias
    #sticky
    #loop
    .goto 338,47.7,59.6,45,0
    .goto 338,41.5,43.6,45,0
    .goto 338,54.5,45.5,45,0
    >>Ramassez le |cRXP_LOOT_Magmolia|r dans les petits bassins de lave
    >>|cRXP_WARN_Si un |cRXP_ENEMY_Perceur de lave|r apparaît après avoir pillé un, tuez-le et ramassez-le pour le|r |cRXP_LOOT_Magmolia|r
    .complete 29257,1 -- Magmolia (8)
    .mob Lava Burster
step -- Some Like It Hot 29299
    .isOnQuest 29299
    #label LikeItHot
    #sticky
    #loop
    .goto 338,50.6,68.6,45,0
    .goto 338,42.2,60.2,45,0
    .goto 338,42.8,41.8,45,0
    .goto 338,56.2,46.8,45,0
    .goto 338,54.6,61.6,45,0
    >>|cRXP_WARN_Prenez votre |cRXP_FRIENDLY_Flagellant cramoisi|r et combattez|r |cRXP_ENEMY_Emberspit Scorpions|r << !Hunter
    >>|cRXP_WARN_Lancez|r |T135834:0|t[Piège givrant] |cRXP_WARN_sur un |cRXP_ENEMY_Scorpion crache-braise|r. Il lancera|r |T135826:0|t[Ember Pools] |cRXP_WARN_continuellement pendant que votre |cRXP_FRIENDLY_Flagellant cramoisi|r les absorbe, vous permettant de terminer cette quête quotidienne avec un seul|r |cRXP_ENEMY_Scorpion crache-braise|r << Hunter
    >>|cRXP_WARN_Les |cRXP_ENEMY_Emberspit Scorpions|r lanceront|r |T135826:0|t[Ember Pools] |cRXP_WARN_que votre |cRXP_FRIENDLY_Flagellant cramoisi|r boira|r
    .complete 29299,1 -- Help the Crimson Lasher Drink from Ember Pools (6)
    .mob Emberspit Scorpion
step -- 29263 A Bitter Pill
    .isOnQuest 29263
    #label MagmaWorm
    #sticky
    #loop
    .goto 338,43.8,46.8,50,0
    .goto 338,53.6,41.8,50,0
    .goto 338,55.6,54.6,50,0
    .goto 338,44.8,54.4,50,0
    >>Cliquez sur le |cRXP_PICK_Lave Bubulle|r à l'intérieur des mares de lave pour invoquer un |cRXP_ENEMY_Ver de magma souterrain|r
    .use 69759 >>|cRXP_WARN_Quand vous verrez le message d'avertissement : "Le ver est sur le point de vous mordre ! Placez la bombe maintenant !" utilisez|r |T133710:0|t[La pilule amère]
    .complete 29263,1 -- Subterranean Magma Worm slain 1/1
    .mob Subterranean Magma Worm
step -- 29278 Living Obsidium
    .isOnQuest 29278
    #label ObsidiumMeteorite
    #sticky
    #loop
    .goto 338,41.5,49.8,50,0
    .goto 338,46.6,43.1,50,0
    .goto 338,54.6,43.8,50,0
    .goto 338,51.5,51.2,50,0
    >>Cliquez sur le |cRXP_PICK_Magnetic Stones|r puis ramassez le |cRXP_LOOT_Obsidium Meteorites|r qui tombent
    .complete 29278,1 -- Obsidium Meteorite (10)
    .target Magnetic Stone
step -- 29143 Wisp Away
    .isOnQuest 29143
    #sticky
    #label WispAway
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>|cRXP_WARN_Prenez le |cRXP_FRIENDLY_Hyjal Feu follet|r qui vous suit vers un Portail de feu|r
    >>|cRXP_WARN_Tuez les mobs qui sortent de lui. Assurez-vous que le |cRXP_FRIENDLY_Hyjal Feu follet|r ne meurt pas !|r
    .complete 29143,1 -- Close a Fire Portal 1/1
step
    #optional
    #requires MagmaWorm
step
    #optional
    #requires ObsidiumMeteorite
step
    #optional
    #requires Embergris
step
    #optional
    #requires StealMagmolias
step
    #optional
    #requires LikeItHot
step
    #optional
    #requires BurnVictims
step
    #optional
    #requires HostileElements
step
    #optional
    #requires TheDogs
step
    #optional
    #requires HarderTheyFall
step
    #optional
    #requires TraitorsReturn
step
    #optional
    #requires Breach
step
    #optional
    #requires AggressiveGrowth
step
    #optional
    #requires WispAway
step
    .isQuestComplete 29255
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29255 >>Rendre la quête Embergris
    .target Avrilla
step
    .isQuestComplete 29257
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29257 >>Rendre la quête Steal Magmolias
    .target Avrilla
step
    .isQuestComplete 29299
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29299 >>Rendre la quête Some Like It Ça brûle
    .target Avrilla
step
    .isQuestComplete 29139
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rayne Chanteplume|r
    .dailyturnin 29139 >>Rendez la quête Croissance agressive
    .target Rayne Feathersong
step
    .isQuestComplete 29143
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rayne Chanteplume|r
    .dailyturnin 29143 >>Rendez la quête Feu follet Absent(e)
    .target Rayne Feathersong
step
    .isQuestComplete 29263
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Damek Barbe-en-Fleur|r
    .dailyturnin 29263 >> Rendre la quête A Bitter Pill
    .target Damek Bloombeard
step
    .isQuestComplete 29278
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Damek Barbe-en-Fleur|r
    .dailyturnin 29278 >> Rendre la quête Living Obsidium
    .target Damek Bloombeard
step
    .isQuestComplete 29295
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Damek Barbe-en-Fleur|r
    .dailyturnin 29295 >> Rendre la quête The Bigger They Are
    .target Damek Bloombeard
step
    .isQuestComplete 29297
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Damek Barbe-en-Fleur|r
    .dailyturnin 29297 >> Rendre la quête Adieu Adieu Burdy
    .target Damek Bloombeard
step
    .isQuestComplete 29179
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Général Taldris Tombelune|r
    .dailyturnin 29179 >>Rendre la quête Hostile Elements
    .target General Taldris Moonfall
step
    .isQuestComplete 29304
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Général Taldris Tombelune|r
    .dailyturnin 29304 >> Rendre la quête The Dogs of Guerre
    .target General Taldris Moonfall
step
    .isQuestComplete 29141
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Général Taldris Tombelune|r
    .dailyturnin 29141 >> Rendez la quête The Harder They Chute
    .target General Taldris Moonfall
step
    .isQuestComplete 29142
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Général Taldris Tombelune|r
    .dailyturnin 29142 >> Rendez la quête Traitors Renvoi
    .target General Taldris Moonfall
step
    .isQuestComplete 29137
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Général Taldris Tombelune|r
    .dailyturnin 29137 >> Rendez la quête Une faille dans les défenses
    .target General Taldris Moonfall
step
    .isQuestComplete 29138
    .goto 338,45.626,86.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Capitaine Arbrefer|r
    .dailyturnin 29138 >>Rendez la quête Victimes brûlées
    .target Captain Irontree

-- Checking if can turn in The Shadow Wardens before starting Druids quests for the day
step
    .goto 338,47.017,91.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Malfurion Hurlorage|r
    .accept 29214 >>Acceptez la quête Les Gardiennes de l'ombre
    .target Malfurion Stormrage
step
    #completewith THB
    .goto 338,53.026,83.693
    .zone 198 >> Prenez le Portail vers le mont Hyjal
step
    .isQuestComplete 29214
    .goto 198,26.799,62.157
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Capitaine Saynna Coursetempête|r
    .turnin 29214 >>Rendre la quête Les Gardiennes de l'ombre
    .target Captain Saynna Stormrunner

-- Beginning of Wardens questline if turned in
step
    #label THB
    .isQuestTurnedIn 29214
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    >>|cRXP_WARN_NOTE : Si vous venez de rendre la quête [Les Gardiennes de l'ombre] et |cRXP_FRIENDLY_Matogriffe|r ne vous offre pas encore cette quête, vous pouvez seulement l'accepter après que les quêtes quotidiennes se soient réinitialisées pour la journée. Vérifiez à nouveau demain|r
    .target Matoclaw
    .accept 29215 >>Acceptez la quête La chasse commence
step
    #completewith ITF
    .goto 198,27.484,56.394
    .zone 338 >> Franchissez le Portail vers les Terres de Feu
step
    .isOnQuest 29215
    .goto 338,47.584,90.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Capitaine Saynna Coursetempête|r
    .turnin 29215 >>Rendez la quête La chasse commence
    .target Captain Saynna Stormrunner
step
    #completewith next
    .goto 338,57.02,66.92,40,0
    .goto 338,71.30,38.43
    .subzone 5744 >> Rendez-vous à Halte de Flamme-Sauvage
step
    .isQuestTurnedIn 29215
    .goto 338,71.309,38.430
    >>Tuez un |cRXP_ENEMY_Druide ou druidesse de la Flamme|r. Il laissera tomber un |cRXP_PICK_Dried Gland|r par terre
    >>|cRXP_WARN_Vous devez tuer |cRXP_ENEMY_Druide de la Flamme|r à Halte de Flamme-Sauvage. Ceux aux Champs des Cendres ne compteront pas|r
    >>Cliquez sur |cRXP_PICK_Dried Gland|r par terre
    .accept 29245 >> Acceptez la quête Une graine mystérieuse
    .mob Druid of the Flame
step
    .isQuestTurnedIn 29215
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Avrilla|r
    .turnin 29245 >> Rendre la quête Une graine mystérieuse
    .accept 29249 >> Acceptez la quête La saison des semis
    .target Avrilla
step
    .isOnQuest 29249
    .goto 338,53.527,90.736
    .cast 8386,6477,6478 >> Cliquez sur |cRXP_PICK_Un'Goro Soil|r par terre
    .timer 10,La saison des semis - Jeu de rôle
step
    .isQuestTurnedIn 29215
    .goto 338,53.527,90.736
    >>Attendez le temps du RP
    .complete 29249,1 -- Acorn Planted 1/1
step
    .isQuestTurnedIn 29215
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .turnin 29249 >> Rendre la quête La saison des semis
    .accept 29254 >> Acceptez la quête Petit flagellant deviendra grand
    .target Avrilla
step
    .isQuestTurnedIn 29215
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Avrilla|r
    .turnin 29254 >> Rendez la quête Petit flagellant deviendra grand
    .target Avrilla
step
    .isQuestTurnedIn 29215
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Avrilla|r
    .daily 29255,29257,29299 >>Acceptez l'une des quêtes quotidiennes aléatoires proposées
    .target Avrilla
step -- Embergris 29255
    .isOnQuest 29255
    #sticky
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>Tuez les |cRXP_ENEMY_Charred Soldiers|r et les |cRXP_ENEMY_Charred Vanquishers|r. Ramassez-les pour leur |cRXP_LOOT_Embergris|r
    .complete 29255,1 -- Embergris (5)
    .mob Charred Soldier
    .mob Charred Vanquisher
step -- Steal Magmolias 29257
    .isOnQuest 29257
    #sticky
    #loop
    .goto 338,47.7,59.6,45,0
    .goto 338,41.5,43.6,45,0
    .goto 338,54.5,45.5,45,0
    >>Ramassez le |cRXP_LOOT_Magmolia|r dans les petits bassins de lave
    >>|cRXP_WARN_Si un |cRXP_ENEMY_Perceur de lave|r apparaît après avoir pillé un, tuez-le et ramassez-le pour le|r |cRXP_LOOT_Magmolia|r
    .complete 29257,1 -- Magmolia (8)
    .mob Lava Burster
step -- Some Like It Hot 29299
    .isOnQuest 29299
    #sticky
    #loop
    .goto 338,50.6,68.6,45,0
    .goto 338,42.2,60.2,45,0
    .goto 338,42.8,41.8,45,0
    .goto 338,56.2,46.8,45,0
    .goto 338,54.6,61.6,45,0
    >>|cRXP_WARN_Prenez votre |cRXP_FRIENDLY_Flagellant cramoisi|r et combattez|r |cRXP_ENEMY_Emberspit Scorpions|r << !Hunter
    >>|cRXP_WARN_Lancez|r |T135834:0|t[Piège givrant] |cRXP_WARN_sur un |cRXP_ENEMY_Scorpion crache-braise|r. Il lancera|r |T135826:0|t[Ember Pools] |cRXP_WARN_continuellement pendant que votre |cRXP_FRIENDLY_Flagellant cramoisi|r les absorbe, vous permettant de terminer cette quête quotidienne avec un seul|r |cRXP_ENEMY_Scorpion crache-braise|r << Hunter
    >>|cRXP_WARN_Les |cRXP_ENEMY_Emberspit Scorpions|r lanceront|r |T135826:0|t[Ember Pools] |cRXP_WARN_que votre |cRXP_FRIENDLY_Flagellant cramoisi|r boira|r
    .complete 29299,1 -- Help the Crimson Lasher Drink from Ember Pools (6)
    .mob Emberspit Scorpion
step
    .isQuestComplete 29255
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29255 >>Rendre la quête Embergris
    .target Avrilla
step
    .isQuestComplete 29257
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29257 >>Rendre la quête Steal Magmolias
    .target Avrilla
step
    .isQuestComplete 29299
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29299 >>Rendre la quête Some Like It Ça brûle
    .target Avrilla
step
    #label ITF
    .isQuestTurnedIn 29181
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Général Taldris Tombelune|r
    .daily 29206 >>Acceptez la quête Dans les flammes
    .target General Taldris Moonfall
step
    .isOnQuest 29206
    .goto 338,43.15,80.14,10,0
    .goto 338,33.83,67.40
    >>Escortez et protégez le |cRXP_FRIENDLY_Windcaller|r à travers le feu
    >>Tuez le |cRXP_ENEMY_Pyroseigneur|r à la fin
    >>Parlez au |cRXP_FRIENDLY_Seigneur du ciel Omnuron|r juste avant les feux s'il n'y a pas de |cRXP_FRIENDLY_Windcaller|r
    .complete 29206,1 -- Druid of the Talon Windcaller protected 1/1
    .mob Flamewaker Assassin
    .mob Pyrelord
    .target Windcaller Nordrala
    .target Windcaller Voramus
    .skipgossip
step << skip
    .goto 338,34.400,66.213
    .subzone 5746 >> Cliquez sur |cRXP_PICK_Rappelling Corde|r pour descendre dans En fusion Ondin
step
    #completewith next
    .subzone 5746 >> |cRXP_WARN_Descendez dans le grand trou. Dirigez-vous vers|r |cRXP_FRIENDLY_Thisalee Corbeau|r
step
    .isQuestTurnedIn 29181
    .goto 338,42.541,59.713
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thisalee Corbeau|r
    .dailyturnin 29206 >>Rendez la quête Dans les flammes
    .daily 29264 >>Acceptez la quête Les Attise-flammes du flot de lave
    .daily 29265 >>Acceptez la quête Fleurs de feu
    .target Thisalee Crow
step
    .isQuestTurnedIn 29272
    .goto 338,41.772,61.475
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anren Cherchelombre|r
    >>|cRXP_WARN_NOTE : Si |cRXP_FRIENDLY_Anren Cherchelombre|r n'a pas apparu ici en souterrain, sautez cette étape|r
    .daily 29274 >>Acceptez la quête Hounds of Shannox
    .target Anren Shadowseeker
    .questcount <1,29273,29274
step -- 29264 Flamewakers of the Molten Flow
    .isOnQuest 29264
    #sticky
    #label FOTMF
    #loop
    .goto 338,50.15,58.80,70,0
    .goto 338,43.39,51.11,70,0
    .goto 338,51.48,39.68,70,0
    .goto 338,52.74,54.06,70,0
    >>Tuez les |cRXP_ENEMY_Flamewaker Sentinels|r, les |cRXP_ENEMY_Flamewaker Hunters|r et les |cRXP_ENEMY_Chaman attise-flammes|r
    .complete 29264,1 -- Flamewaker slain (8)
    .mob Flamewaker Sentinel
    .mob Flamewaker Shaman
    .mob Flamewaker Hunter
step
    .isOnQuest 29274
    #sticky
    #label Houndbones
    #loop
    .goto 338,50.15,58.80,70,0
    .goto 338,43.39,51.11,70,0
    .goto 338,51.48,39.68,70,0
    .goto 338,52.74,54.06,70,0
    >>Tuez les |cRXP_ENEMY_Charhounds|r. Ramassez-les pour le |cRXP_LOOT_Houndbone Fum|r
    .complete 29274,1 -- Houndbone Ash (6)
    .mob Charhound
step -- 29265 Fire Flowers
    .isOnQuest 29265
    #sticky
    #label Lucifern
    #loop
    .goto 338,50.15,58.80,70,0
    .goto 338,43.39,51.11,70,0
    .goto 338,51.48,39.68,70,0
    .goto 338,52.74,54.06,70,0
    >>Ramassez les |cRXP_LOOT_Luciferns|r sur le sol
    .complete 29265,1 -- Lucifern (5)
step
    #optional
    #requires FOTMF
step
    #optional
    #requires Lucifern
step
    #optional
    #requires Houndbones
step
    .isQuestComplete 29264
    .goto 338,42.541,59.713
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thisalee Corbeau|r
    .dailyturnin 29264 >>Rendre la quête Flamewakers de l'Ondin En fusion
    .target Thisalee Crow
step
    #label ExitUnderground
    #completewith DruidEnd
    .goto 338,33.08,67.62
    .aura 98833 >> |cRXP_WARN_Retournez à la grande ouverture par laquelle vous êtes descendu. Montez dans le|r |T514278:0|t[Puits aérifère]|cRXP_WARN_, puis sautez pour revenir à la surface du Front du Magma|r
    .subzoneskip 5746,1
step
    #requires ExitUnderground
    #completewith DruidEnd
    .goto 338,33.08,67.62
    +|cRXP_WARN_Sautez pour revenir à la surface du Front du Magma|r
    .subzoneskip 5746,1
step
    .isQuestTurnedIn 29272
    .goto 338,35.985,58.974
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tholo Blanc-Sabot|r
    .daily 29273 >>Acceptez la quête How Ça brûle
    .disablecheckbox
    .target Tholo Whitehoof
    .questcount <1,29273,29274
step
    .isQuestComplete 29265
    .goto 338,36.299,56.344
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Choluna|r
    .dailyturnin 29265 >>Rendez la quête Fleurs de feu
    .target Choluna
step -- Ricket @ DRUIDS
    .isQuestTurnedIn 29282
    .goto 338,36.251,56.586
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Riquette|r
    >>|cRXP_WARN_Passez cette étape si elle n'est pas là|r
    .daily 29263,29278,29295,29297 >> Acceptez l'une des quêtes quotidiennes aléatoires proposées
    .target Ricket
step
    .isQuestTurnedIn 29181
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morthis Murmedaile|r
    .daily 29290,29287,29288 >> Acceptez l'une des quêtes quotidiennes aléatoires proposées
    .target Morthis Whisperwing
step
    .isQuestTurnedIn 29181
    .goto 338,34.295,56.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arthorn Chant-du-Vent|r
    .daily 29293,29296 >> Acceptez l'une des quêtes quotidiennes aléatoires proposées
    .target Arthorn Windsong
step
    #completewith next
    .goto 338,33.808,57.177
    .isOnQuest 29290
    .vehicle >> Montez le |cRXP_FRIENDLY_Faucon de feu apprivoisé|r
    .target Trained Fire Hawk
step
    .isOnQuest 29290
    >>|cRXP_WARN_Lancez|r |T135821:0|t[Graine de flammes] (1) |cRXP_WARN_et|r |T451164:0|t[Explosion de flammes] (2) |cRXP_WARN_pour tuer |cRXP_ENEMY_Flamewakers|r, |cRXP_ENEMY_Cinderwebs|r et |cRXP_ENEMY_En fusion Lords|r
    .complete 29290,1 -- Amassing Flamewakers slain  (100)
    .mob +Flamewaker Centurion
    .mob +Flamewaker Cauterizer
    .mob +Flamewaker Incinerator
    .complete 29290,2 -- Amassing Cinderwebs slain  (40)
    .mob +Cinderweb Skitterer
    .mob +Cinderweb Clutchkeeper
    .mob +Cinderweb Matriarch
    .complete 29290,3 -- Molten Lords slain (3)
    .mob +Molten Lord
step
    .isQuestComplete 29290
    .subzone 5745 >>|cRXP_WARN_Lancez|r |T514278:0|t[Retour à la Fournaise] (6) |cRXP_WARN_pour revenir|r
    .subzoneskip 5748
step
    #optional
    #sticky
    .isOnQuest 29287,29288,29293,29296,29273
    .subzone 5748 >> |cRXP_WARN_Utilisez les Pierres de passage pour monter sur la Crête du Panache de feu. Vous devriez viser à utiliser un puits aérifère à la fin des Pierres de passage car cela vous accordera le|r |T236222:0|t[Convalescence des vents] |cRXP_WARN_bonus qui augmente votre vitesse d'attaque et votre rapidité de 100%, et vous permet de sauter beaucoup plus haut et plus loin que d'habitude|r
step
    #sticky
    #label HowHot
    .isOnQuest 29273
    .use 69806 >>|cRXP_WARN_Utilisez|r |T135155:0|t[Thermomètre de Tholo] |cRXP_WARN_au Pic du Panache de feu|r |cRXP_PICK_Lacs de Lave|r
    >>|cRXP_WARN_Vous pouvez utiliser|r |T135155:0|t[Thermomètre de Tholo] |cRXP_WARN_tout en restant sur votre monture|r
    >>|cRXP_WARN_Sautez vers le haut en utilisant les|r |T514278:0|t[Puits aérifères] |cRXP_WARN_situés à travers le Pic du Panache de feu pour vous frayer un chemin vers le sommet|r
    .complete 29273,2 --|Northeastern Lava Pool sampled: 1/1
    .goto 338,30.748,31.572,-1
    .complete 29273,1 --|Northwestern Lava Pool sampled: 1/1
    .goto 338,21.364,29.851,-1
    .complete 29273,3 --|Central Lava Pool sampled: 1/1
    .goto 338,23.276,41.385,-1
step
    #sticky
    #label FireHawkEgg
    .isOnQuest 29287
    .goto 338,23.790,41.557
    >>Ramassez un |cRXP_LOOT_Œuf de faucon de feu|r au sommet du Pic du Panache de feu
    >>|cRXP_WARN_Sautez vers le haut en utilisant les|r |T514278:0|t[Puits aérifères] |cRXP_WARN_situés à travers le Pic du Panache de feu pour vous frayer un chemin vers le sommet|r
    .complete 29287,1 -- Fire Hawk Egg (1)
step
    #sticky
    #label InjuredDruids
    .isOnQuest 29293
    #loop
    .goto 338,28.2,46.7,70,0
    .goto 338,28.5,33.0,70,0
    .goto 338,19.4,29.7,70,0
    .goto 338,16.7,39.4,70,0
    >>Cliquez sur les |cRXP_FRIENDLY_druides blessés de la Serre|r
    .complete 29293,1 -- Druids of the Talon rescued (5)
    .target Injured Druid of the Talon
step -- 29295 The Bigger They Are -- DRUIDS ONLY
    .isOnQuest 29295
    #sticky
    #label ObsidiumChips
    #loop
    .goto 338,29.7,28.5,50,0
    .goto 338,16.8,32.5,50,0
    .goto 338,19.5,49.5,50,0
    .goto 338,32.7,43.6,50,0
    >>Tuez les |cRXP_ENEMY_Obsidium Punishers|r. Ramassez les |cRXP_LOOT_Living Obsidium Kopo|r débris sur le sol après.
    .complete 29295,1 -- Living Obsidium Chip (10)
    .mob Obsidium Punisher
step
    #sticky
    #label FireHawks
    .isOnQuest 29296
    #loop
    .goto 338,28.2,46.7,70,0
    .goto 338,28.5,33.0,70,0
    .goto 338,19.4,29.7,70,0
    .goto 338,16.7,39.4,70,0
    >>Tuez les |cRXP_ENEMY_Faucons de feu|r
    .complete 29296,1 -- Fire Hawk slain (5)
    .mob Fire Hawk
step
    .isOnQuest 29288
    #label FireHawkHatchling
    #loop
    .goto 338,28.2,46.7,70,0
    .goto 338,28.5,33.0,70,0
    .goto 338,19.4,29.7,70,0
    .goto 338,16.7,39.4,70,0
    >>Cliquez sur les |cRXP_FRIENDLY_Fire Hawk Hatchlings|r
    >>|cRXP_WARN_Le sommet de Pic du Panache de feu en contient une grande quantité|r
    .complete 29288,1 --  Fire Hawk Hatchling (5)
step
    #optional
    #requires InjuredDruids
step
    #optional
    #requires FireHawkEgg
step
    #optional
    #requires FireHawks
step
    #optional
    #requires HowHot
step
    #optional
    #requires FireHawkHatchling
step
    #optional
    #requires ObsidiumChips
step
    .isQuestComplete 29290
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morthis Murmedaile|r
    .dailyturnin 29290 >> Rendez la quête Feu dans les cieux
    .target Morthis Whisperwing
step
    .isQuestComplete 29287
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morthis Murmedaile|r
    .dailyturnin 29287 >> Rendre la quête Peaked Interest
    .target Morthis Whisperwing
step
    .isQuestComplete 29288
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morthis Murmedaile|r
    .dailyturnin 29288 >> Rendez la quête Premiers envols
    .target Morthis Whisperwing
step
    .isQuestComplete 29293
    .goto 338,34.295,56.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arthorn Chant-du-Vent|r
    .dailyturnin 29293 >> Rendez la quête Ailes roussies
    .target Arthorn Windsong
step
    .isQuestComplete 29296
    .goto 338,34.295,56.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arthorn Chant-du-Vent|r
    .dailyturnin 29296 >> Rendez la quête Oiseaux territoriaux
    .target Arthorn Windsong
step
    .isQuestTurnedIn 29284
    .goto 338,36.299,56.344
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Choluna|r
    .daily 29305 >>Acceptez la quête Frappe au Cœur
    .target Choluna
step
    .isOnQuest 29305
    .goto 338,50.343,23.036
    >>Tuez l'un des |cRXP_ENEMY_Lieutenants of Flamme|r
    .complete 29305,1 -- Lieutenant of Flame slain
    .mob Ancient Charscale
    .mob Ancient Smoldering Behemoth
    .mob Ancient Firelord
    .mob Cinderweb Queen
    .mob Devout Harbinger
 step
    .isQuestComplete 29305
    .goto 338,43.033,80.597
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seigneur du ciel Omnuron|r
    .dailyturnin 29305 >>Rendez la quête Frappe au Cœur
    .target Skylord Omnuron
step
    .isQuestComplete 29295
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Damek Barbe-en-Fleur|r
    .dailyturnin 29295 >> Rendre la quête The Bigger They Are
    .target Damek Bloombeard
step
    .isQuestComplete 29273
    .goto 338,51.245,85.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anren Cherchelombre|r
    .dailyturnin 29273 >> Rendre la quête How Ça brûle
    .target Anren Shadowseeker
step
    .isQuestComplete 29274
    .goto 338,51.555,85.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tholo Blanc-Sabot|r
    .dailyturnin 29274 >> Rendre la quête Hounds of Shannox
    .target Tholo Whitehoof

--Calling the Ancients unlock
step
    .isQuestTurnedIn 29182 -- Druids prereq
    .isQuestTurnedIn 29215 -- Warden prereq
    .goto 338,44.434,88.790
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Varlan Hautebranche|r
    .accept 29283 >>Acceptez la quête Appeler les Anciens
    .target Varlan Highbough
step
    #optional
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >> Prenez le Portail vers le mont Hyjal
    .zoneskip 338,1
step
    .isQuestComplete 29283
    .goto 198,26.005,61.302
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vieille-Branche|r
    .turnin 29283 >>Rendez la quête Appeler les Anciens
    .target Elderlimb
step
    .isQuestTurnedIn 29283
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .accept 29284 >>Acceptez la quête L'aide des anciens
step
    #optional
    #completewith WardenEnd
    .isOnQuest 29284
    .goto 198,27.484,56.394
    .zone 338 >> Franchissez le Portail vers les Terres de Feu
step
    .isOnQuest 29284
    .goto 338,43.812,88.964
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vieille-Branche|r
    .turnin 29284 >>Rendez la quête L'aide des anciens
    .target Elderlimb
step
    .isQuestTurnedIn 29284
    .goto 338,36.299,56.344
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Choluna|r
    .daily 29305 >>Acceptez la quête Frappe au Cœur
    .target Choluna
step
    .isOnQuest 29305
    .goto 338,50.343,23.036
    >>Tuez l'un des |cRXP_ENEMY_Lieutenants of Flamme|r
    .complete 29305,1 -- Lieutenant of Flame slain
    .mob Ancient Charscale
    .mob Ancient Smoldering Behemoth
    .mob Ancient Firelord
    .mob Cinderweb Queen
    .mob Devout Harbinger
 step
    .isQuestComplete 29305
    .goto 338,43.033,80.597
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seigneur du ciel Omnuron|r
    .dailyturnin 29305 >>Rendez la quête Frappe au Cœur
    .target Skylord Omnuron
--Complete Calling the Ancients unlock

--Additional Armaments unlock
step
    .isQuestTurnedIn 29182 -- Druids prereq
    .isQuestTurnedIn 29215 -- Warden prereq
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Damek Barbe-en-Fleur|r
    .accept 29281 >>Acceptez la quête Des armes en rab
    .target Damek Bloombeard
step
    #optional
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >> Prenez le Portail vers le mont Hyjal
    .zoneskip 338,1
step
    .isQuestComplete 29281
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .turnin 29281 >>Rendez la quête Des armes en rab
    .accept 29282 >>Acceptez la quête Bien armé
step
    .isQuestTurnedIn 29281
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .accept 29282 >>Acceptez la quête Bien armé
step
    #optional
    #completewith next
    .isOnQuest 29282
    .goto 198,27.484,56.394
    .zone 338 >> Franchissez le Portail vers les Terres de Feu
step
    .isOnQuest 29282
    .goto 338,46.758,90.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Riquette|r
    .target Ricket
    .turnin 29282 >>Rendez la quête Bien armé
step
    .isQuestTurnedIn 29282
    .goto 338,46.758,90.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Riquette|r
    .daily 29263,29278,29295,29297 >> Acceptez l'une des quêtes quotidiennes aléatoires proposées
    .target Ricket
step -- 29263 A Bitter Pill
    .isOnQuest 29263
    #loop
    .goto 338,43.8,46.8,50,0
    .goto 338,53.6,41.8,50,0
    .goto 338,55.6,54.6,50,0
    .goto 338,44.8,54.4,50,0
    >>Cliquez sur le |cRXP_PICK_Lave Bubulle|r à l'intérieur des mares de lave pour invoquer un |cRXP_ENEMY_Ver de magma souterrain|r
    .use 69759 >>|cRXP_WARN_Quand vous verrez le message d'avertissement : "Le ver est sur le point de vous mordre ! Placez la bombe maintenant !" utilisez|r |T133710:0|t[La pilule amère]
    .complete 29263,1 -- Subterranean Magma Worm slain 1/1
    .mob Subterranean Magma Worm
step -- 29278 Living Obsidium
    .isOnQuest 29278
    #loop
    .goto 338,41.5,49.8,50,0
    .goto 338,46.6,43.1,50,0
    .goto 338,54.6,43.8,50,0
    .goto 338,51.5,51.2,50,0
    >>Cliquez sur le |cRXP_PICK_Magnetic Stones|r puis ramassez le |cRXP_LOOT_Obsidium Meteorites|r qui tombent
    .complete 29278,1 -- Obsidium Meteorite (10)
    .target Magnetic Stone
step -- 29295 The Bigger They Are -- DRUIDS ONLY
    .isOnQuest 29295
    #loop
    .goto 338,29.7,28.5,50,0
    .goto 338,16.8,32.5,50,0
    .goto 338,19.5,49.5,50,0
    .goto 338,32.7,43.6,50,0
    >>Tuez les |cRXP_ENEMY_Obsidium Punishers|r. Ramassez les |cRXP_LOOT_Living Obsidium Kopo|r débris sur le sol après.
    .complete 29295,1 -- Living Obsidium Chip (10)
    .mob Obsidium Punisher
step -- 29297 Bye Bye Burdy -- WARDENS ONLY
    .isOnQuest 29297
    #loop
    .goto 338,73.03,54.88,50,0
    .goto 338,73.82,38.28,50,0
    .goto 338,63.73,38.76,50,0
    .use 69832 >> |cRXP_WARN_Utilisez le|r |T135129:0|t[Aiguillon à zoziau] |cRXP_WARN_sur les |cRXP_ENEMY_Druide de la Flamme|r qui volent dans les airs|r
    .complete 29297,1 -- Druids of the Flame in Fire Crow form slain (3)
    .mob Druid of the Flame
step
    .isQuestComplete 29263
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Damek Barbe-en-Fleur|r
    .dailyturnin 29263 >> Rendre la quête A Bitter Pill
    .target Damek Bloombeard
step
    .isQuestComplete 29278
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Damek Barbe-en-Fleur|r
    .dailyturnin 29278 >> Rendre la quête Living Obsidium
    .target Damek Bloombeard
step
    .isQuestComplete 29295
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Damek Barbe-en-Fleur|r
    .dailyturnin 29295 >> Rendre la quête The Bigger They Are
    .target Damek Bloombeard
step
    .isQuestComplete 29297
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Damek Barbe-en-Fleur|r
    .dailyturnin 29297 >> Rendre la quête Adieu Adieu Burdy
    .target Damek Bloombeard
--Complete Additional Armaments unlock

--Filling the Moonwell unlock
step
    .goto 338,44.087,86.321
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ayla Ombretempête|r
    .accept 29279 >>Acceptez la quête Remplir le puits de lune
    .target Ayla Shadowstorm
step
    #optional
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >> Prenez le Portail vers le mont Hyjal
    .zoneskip 338,1
step
    .isQuestComplete 29279
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .turnin 29279 >> Rendez la quête Remplir le puits de lune
    .accept 29280 >> Acceptez la quête Des eaux nourrissantes
    .target Matoclaw
step
    .isQuestTurnedIn 29279
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .accept 29280 >> Acceptez la quête Des eaux nourrissantes
    .target Matoclaw
step
    #optional
    #completewith next
    .isOnQuest 29280
    .goto 198,27.484,56.394
    .zone 338 >> Franchissez le Portail vers les Terres de Feu
step
    .isOnQuest 29280
    .goto 338,44.087,86.321
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ayla Ombretempête|r
    .target Ayla Shadowstorm
    .turnin 29280 >>Rendez la quête Des eaux nourrissantes
step
    .isQuestTurnedIn 29280
    .goto 338,47.022,91.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Malfurion Hurlorage|r
    .target Malfurion Stormrage
    .accept 29203 >> Acceptez la quête Dans les profondeurs
step
    .isOnQuest 29203
    #completewith next
    .goto 338,57.491,49.532,15 >>Entrez dans les Profondeurs ignées
step
    .isOnQuest 29203
    .goto 338,64.615,59.216
    >>Tuez |cRXP_ENEMY_Leyara|r
    .complete 29203,1 -- Leyara slain 1/1
    .mob Leyara
step
    .isQuestComplete 29203
    #completewith next
    .goto 338,57.491,49.532,15 >>Quittez les Profondeurs ignées
    .subzoneskip 5741,1
step
    .isQuestComplete 29203
    .goto 338,47.022,91.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Malfurion Hurlorage|r
    .target Malfurion Stormrage
    .turnin 29203 >> Rendez la quête Dans les profondeurs
step
    .isQuestTurnedIn 29203
    >>|cRXP_WARN_Vous aurez maintenant reçu un courrier de |cRXP_FRIENDLY_Thérésa Dermécorce|r avec un|r |T514925:0|t[|cRXP_LOOT_Médaillon taché par la fumée|r]
    .use 69854 >>|cRXP_WARN_Utilisez le|r |T514925:0|t[|cRXP_LOOT_Médaillon taché par la fumée|r] |cRXP_WARN_pour démarrer la quête|r
    .collect 69854,1,29298,1 -- Smoke-Stained Locket (1)
    .accept 29298 >> Acceptez la quête Un médaillon taché par la fumée
step
    #optional
    #completewith SecretsWithin
    .goto 338,53.026,83.693
    .zone 198 >> Prenez le Portail vers le mont Hyjal
    .zoneskip 338,1
step
    .isQuestTurnedIn 29203
    #completewith next
    .zone Moonglade >> Voyagez à Reflet-de-Lune
step
    #label SecretsWithin
    .isQuestTurnedIn 29203
    .goto Moonglade,51.685,45.098
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rabine Saturna|r
    .turnin 29298 >> Rendez la quête Un médaillon taché par la fumée
    .accept 29302 >> Acceptez la quête Avec une surprise à l’intérieur
    .timer 42,Avec une surprise à l’intérieur RP
    .target Rabine Saturna
step
    .isQuestTurnedIn 29203
    >>Attendez le temps du RP
    .complete 29302,1 -- Look into Leyara's memories 1/1
step
    .isQuestTurnedIn 29203
    .goto Moonglade,51.685,45.098
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rabine Saturna|r
    .turnin 29302 >> Rendre la quête Avec une surprise à l'intérieur
    .accept 29303 >> Accepter Une tragédie dans la famille
    .target Rabine Saturna
step
    .isOnQuest 29303
    #completewith next
    .zone Ashenvale >> Voyagez à Ashenvale
step
    .isOnQuest 29303
    .goto Ashenvale,40.501,53.281
    .cast 6247 >> Cliquez sur la |cRXP_PICK_Tombe d'Elfe de la nuit|r
    .timer 48,Une tragédie dans la famille RP
    .skipgossip
step
    .isOnQuest 29203
    .goto Ashenvale,40.501,53.281
    >>Attendez le temps du RP
    .complete 29303,1 -- Look deeper into Leyara's memories 1/1
    .skipgossip
step
    .isQuestTurnedIn 29203
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .turnin 29303 >> Rendre la quête Une tragédie dans la famille
    .accept 29310 >> Accepter Le point de non retour
step
    .isOnQuest 29310
    #completewith next
    .zone 198 >> Voyage vers Mont Hyjal
step
    .isOnQuest 29310
    .goto 198,7.561,34.582
    .cast 6247 >> Cliquez sur le |cRXP_PICK_Petit Tombeau|r
    .timer 59,Le point de non retour RP
    .skipgossip
step
    .isOnQuest 29310
    .goto 198,7.561,34.582
    >>Attendez le temps du RP
    .complete 29310,1 -- Look deeper into Leyara's memories 1/1
    .skipgossip
step
    .isQuestTurnedIn 29203
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .turnin 29310 >> Rendre la quête Le point de non retour
    .accept 29311 >> Accepter Tout le monde connaît la suite
step
    #optional
    #completewith next
    .isOnQuest 29311
    .goto 198,27.484,56.394
    .zone 338 >> Franchissez le Portail vers les Terres de Feu
step
    .isOnQuest 29311
    .goto 338,47.022,91.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Malfurion Hurlorage|r
    .turnin 29311 >> Rendre la quête Tout le monde connaît la suite
    .target Malfurion Stormrage
--Complete Filling the Moonwell

step
    #optional
    .isQuestTurnedIn 29284
    .isQuestTurnedIn 29282
    .isQuestTurnedIn 29311
    .goto 338,46.932,90.984
    +Félicitations sur le déverrouillage de l'ensemble du Front du Magma! Continuez à compléter l'un des deux (|cRXP_ENEMY_2.5|r - Le Front du Magma + Druides) ou (|cRXP_PICK_2.5|r - Le Front du Magma + Gardiens) pour gagner plus |T513195:0|t[Marques du Monde Arbre]
    >>|cRXP_FRIENDLY_Zen'Vorka|r vend |T133654:0|t[|cRXP_FRIENDLY_Cache de Zen’Vorka|r] pour 30 |T513195:0|t[Marques du Monde Arbre] qui peut contenir un objet aléatoire de qualité verte ou le compagnon rare |T294481:0|t[|cFF0070FFPierre Brûlée|r]
    .target Zen'Vorka
step
    .isQuestAvailable 29214
    #label DruidEnd
    +|cRXP_WARN_Vous avez terminé toutes les quêtes quotidiennes disponibles pour aujourd'hui. Rechargez ce même guide demain (|r|cRXP_ENEMY_2.5|r - Le Front du Magma + Druides|cRXP_WARN_) pour continuer à compléter les quêtes quotidiennes jusqu'à ce que vous ayez acquis assez|r |T513195:0|t[Marques du Monde Arbre]
step
    .isQuestTurnedIn 29214
    +|cRXP_WARN_Vous avez déverrouillé [Les Gardiennes de l'ombre] quêtes quotidiennes. Vous avez le choix de compléter les quêtes pour Les druides de la Serre ou Les Gardiennes de l'ombre. Si vous désirez compléter les quêtes pour Les druides de la Serre, rechargez ce même guide demain (|r|cRXP_ENEMY_2.5|r - Le Front du Magma + Druides|cRXP_WARN_) ou (|r|cRXP_PICK_2.5|r - Le Front du Magma + Gardiens|cRXP_WARN_) demain si vous désirez compléter les quêtes pour Les Gardiennes de l'ombre. Les deux donnent la même quantité de|r |T513195:0|t[Marques du Monde Arbre]
]])

RXPGuides.RegisterGuide([[
#cata
#version 1
#group Le Front du Magma
#name D_1_TSOM_Wardens
#displayname |cRXP_PICK_2.5|r - Le Front du Magma + Gardiens

step
    #optional
    .isQuestAvailable 29214
    +|cRXP_WARN_Vous devez d'abord collecter 150|r |T513195:0|t[Marques du Monde Arbre] |cRXP_WARN_et rendez la quête [Les Gardiennes de l'ombre] afin de compléter les quêtes quotidiennes pour elles|r
    .turnin 29214 >>Rendre la quête Les Gardiennes de l'ombre
    .target Captain Saynna Stormrunner
    .goto 198,26.799,62.157
step
    #optional
    #completewith HyjalQuests
	.zone 85 >> Voyagez à Orgrimmar << Horde
	.zone 84 >> Voyagez à Stormwind << Alliance
	.zoneskip 198
    .zoneskip 338
step
    #optional
    #completewith HyjalQuests
    .goto 85,51.12,38.26 << Horde
    .goto 84,76.199,18.690 << Alliance
    .zone 198 >>Prendre le portail vers Hyjal
    .zoneskip 338
step
    #optional
    #completewith HyjalQuests
    .goto 338,53.026,83.693
    .zone 198 >> Prenez le Portail vers le mont Hyjal
    .zoneskip 338,1
step --accepted back at sanctuary of malorne
    .goto 198/1,-2088.800,4452.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Captain Soren Tombelune|r
    .target Captain Soren Moonfall
    .daily 29128 >>Acceptez la quête Les Protecteurs de Hyjal
step
    #loop
    .goto 198,27.108,62.009,5,0
    .goto 198,27.170,62.563,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r ou |cRXP_FRIENDLY_Mylune|r
    .daily 29125,29147,29164,29101,29161 >> Acceptez l'une des quêtes quotidiennes aléatoires proposées
    .disablecheckbox
    .questcount <1,29125,29147,29164,29101,29161
    .target Matoclaw
    .target Mylune
step
    #loop
    #label HyjalQuests
    .goto 198,27.527,62.510,5,0
    .goto 198,27.172,62.565,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r ou |cRXP_FRIENDLY_Dorda'en Tisselanuit|r
    .daily 29123,29149,29127,29163,29166,29247,29246,29248 >> Acceptez l'une des quêtes quotidiennes aléatoires proposées
    .disablecheckbox
    .questcount <1,29123,29149,29127,29163,29166,29247,29246,29248
    .target Matoclaw
    .target Dorda'en Nightweaver
step
    .isOnQuest 29166
    #completewith KillNemesis
    >>Ramassez le |cRXP_LOOT_Blueroot Vines|r par terre
    .complete 29166,1
step
    .isOnQuest 29123
    #completewith KillNemesis
    >>Tuez les |cRXP_ENEMY_Invaders from the Terres de Feu|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #completewith KillNemesis
    >>Tuez les |cRXP_ENEMY_Invaders from the Terres de Feu|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #completewith KillNemesis
    >>Tuez les |cRXP_ENEMY_Invaders from the Terres de Feu|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #completewith KillNemesis
    >>Tuez les |cRXP_ENEMY_Invaders from the Terres de Feu|r
    .complete 29163,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29101
    #loop
    .goto 198,22.89,59.91,70,0
    .goto 198,18.58,56.71,70,0
    .goto 198,15.11,48.85,70,0
    .goto 198,19.97,46.22,70,0
    >>Cliquez sur un |cRXP_FRIENDLY_Enfant de Tortolla|r
    >>|cRXP_WARN_Visez vers l'eau et lance|r |T132219:0|t[Pousser la tortue] |cRXP_WARN_(1)|r
    .complete 29101,1 -- Child of Tortolla punted into water (5)
    .target Child of Tortolla
step
    .isOnQuest 29164
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Tuez les |cRXP_ENEMY_Invaders from the Terres de Feu|r
    .use 69235 >> |cRXP_WARN_Utilisez le|r |T134298:0|t[Crok of the Loup] |cRXP_WARN_sur leurs cadavres|r
    .complete 29164,1 -- Howl atop an invader's corpse (10)
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29147
    #completewith next
    .cast 97241 >> |cRXP_WARN_Utilisez le|r |T135992:0|t[Plume de la reine oiseau] |cRXP_WARN_pour vous transformer en|r |cRXP_FRIENDLY_Ailes d'Aviana|r
    .use 69234
step
    .isOnQuest 29147
    #loop
    .goto 198,14.90,45.11,80,0
    .goto 198,10.13,36.76,80,0
    .goto 198,13.24,33.64,80,0
    .goto 198,18.65,40.28,80,0
    .use 69234 >> |cRXP_WARN_Utilisez le|r |T132172:0|t[Appel du vol] (1) |cRXP_WARN_aptitude près de |cRXP_FRIENDLY_Alpine Songbirds|r, |cRXP_FRIENDLY_Forest Owls|r et|r |cRXP_FRIENDLY_Goldwing Hawks|r
    .complete 29147,1 -- Alpine Songbird gathered (12)
    .target +Alpine Songbird
    .complete 29147,2 -- Forest Owl gathered (5)
    .target +Forest Owl
    .complete 29147,3 -- Goldwing Hawk gathered (2)
    .target +Goldwing Hawk
step
    .isOnQuest 29125
    #loop
    .goto 198,37.32,54.52,70,0
    .goto 198,40.87,55.93,70,0
    .goto 198,36.43,60.73,70,0
    .goto 198,33.45,64.19,70,0
    >>Placez-vous devant un |cRXP_FRIENDLY_Spirit of Malorne|r
    >>|cRXP_WARN_Ce sont les cerfs fantômes qui chargent au hasard|r
    .complete 29125,1 --Spirit of Malorne captured (3)
step
    #completewith next
    .goto 198,14.310,33.203
    .vehicle >> Cliquez sur |cRXP_PICK_Escalade Arbre|r pour commencer à l'escalader
    .target Climbing Tree
    .isOnQuest 29161
step
    .goto 198,14.310,33.203
    >>Cliquez sur un |cRXP_FRIENDLY_Ourson d'Hyjal|r pendant que vous êtes sur l'arbre
    .collect 54439,1
    .target Hyjal Bear Cub
    .isOnQuest 29161
step
    .isOnQuest 29161
    .goto 198,14.310,33.203
    *|cRXP_WARN_Lancez|r |T450907:0|t[Montée] (1) |cRXP_WARN_jusqu'à ce que vous soyez au sommet, visez la flèche vers le trampoline à côté de |cRXP_FRIENDLY_Gardien Taldros|r, puis lance|r |T446127:0|t[Lancer d'ours] (4)|cRXP_WARN_. Lancez|r |T450905:0|t[Descente] (2) |cRXP_WARN_et recommencez|r
    .complete 29161,1 --6/6 Hyjal Bear Cubs Rescued
step
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Lancez|r |T450905:0|t[Descente] (2) |cRXP_WARN_pour quitter l'arbre|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Lancez|r |T450905:0|t[Descente] (2) |cRXP_WARN_pour quitter l'arbre|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Lancez|r |T450905:0|t[Descente] (2) |cRXP_WARN_pour quitter l'arbre|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Lancez|r |T450905:0|t[Descente] (2) |cRXP_WARN_pour quitter l'arbre|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Lancez|r |T450905:0|t[Descente] (2) |cRXP_WARN_pour quitter l'arbre|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Lancez|r |T450905:0|t[Descente] (2) |cRXP_WARN_pour quitter l'arbre|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Lancez|r |T450905:0|t[Descente] (2) |cRXP_WARN_pour quitter l'arbre|r
step
    .isOnQuest 29161
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .turnin 29161 >>Rendez la quête Nounours-ball
    .accept 29162 >>Acceptez la quête Bénédiction de la nature
step
    .isQuestTurnedIn 29161
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .accept 29162 >>Acceptez la quête Bénédiction de la nature
step
    .isOnQuest 29125
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .turnin 29125 >>Rendez la quête Entre les arbres
    .accept 29126 >>Acceptez la quête La puissance de Malorne
step
    .isQuestTurnedIn 29125
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .accept 29126 >>Acceptez la quête La puissance de Malorne
step
    .isOnQuest 29147
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .turnin 29147 >>Rendez la quête Appel du vol
    .accept 29148 >>Acceptez la quête Ailes de flamme
step
    .isQuestTurnedIn 29147
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .accept 29148 >>Acceptez la quête Ailes de flamme
step
    .isOnQuest 29164
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .turnin 29164 >>Rendez la quête Perfectionner votre hurlement
    .accept 29165 >>Acceptez la quête L'appel de la meute
step
    .isQuestTurnedIn 29164
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .accept 29165 >>Acceptez la quête L'appel de la meute
step
    .isOnQuest 29101
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .turnin 29101 >>Rendez la quête La saison de la plate
    .accept 29122 >>Acceptez la quête Des échos de Némésis
step
    .isQuestTurnedIn 29101
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .accept 29122 >>Acceptez la quête Des échos de Némésis
step
    #completewith next
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .cast 97517 >> |cRXP_WARN_Utilisez l'|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_pour invoquer|r |cRXP_ENEMY_Pyrachnis|r
    .use 69232
step
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .use 69232 >> Tuez |cRXP_ENEMY_Pyrachnis|r
    >>|cRXP_WARN_Utilisez l'|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_pour aussi retirer le|r |T136016:0|t[Éclair de poison bouillant] |cRXP_WARN_débuff que |cRXP_ENEMY_Pyrachnis|r applique|r
    .complete 29162,1 --|Pyrachnis slain: 1/1
    .mob Pyrachnis
step
    #completewith next
    .isOnQuest 29126
    .goto 198,41.667,56.130
    .cast 97012 >> |cRXP_WARN_Utilisez l'|r |T135139:0|t[Bâton du gardien] |cRXP_WARN_à la |cRXP_PICK_Pile of Fum|r pour invoquer|r |cRXP_ENEMY_Galenges|r
    .use 68997
step
    .goto 198,41.667,56.130
    .isOnQuest 29126
    .use 68997 >> Tuez |cRXP_ENEMY_Galenges|r
    .complete 29126,1 -- Galenges slain (1)
    .mob Galenges
step
    .isOnQuest 29148
    #completewith next
    .goto 198/1,-1500.700,4929.300
    .cast 97324 >> |cRXP_WARN_Utilisez l'|r |T135992:0|t[Plume de la reine oiseau] |cRXP_WARN_près du portail de flamme occidental pour invoquer|r |cRXP_ENEMY_Millagazor|r
    .use 69212
step
    .isOnQuest 29148
    .goto 198/1,-1500.700,4929.300
    .use 69212 >> Tuez |cRXP_ENEMY_Millagazor|r
    .complete 29148,1 -- Millagazor slain (1)
    .mob Millagazor
step
    .isOnQuest 29165
    #completewith next
    .goto 198,41.667,56.130
    .cast 97498 >> |cRXP_WARN_Utilisez l'|r |T134298:0|t[Crok of the Loup] |cRXP_WARN_pour invoquer|r |cRXP_ENEMY_Lylagar|r
    .use 69225
step
    .isOnQuest 29165
    .goto 198,41.667,56.130
    .use 69225 >> Tuez |cRXP_ENEMY_Lylagar|r
    .complete 29165,1 -- Lylagar slain (1)
    .mob Lylagar
step
    .isOnQuest 29122
    #completewith next
    .goto 198,24.014,55.803
    .gossip 52425,0 >>Parlez à |cRXP_FRIENDLY_Tooga|r pour invoquer |cRXP_ENEMY_Némésis|r
    .skipgossip
    .target Tooga
step
    #label KillNemesis
    .isOnQuest 29122
    .goto 198,24.760,55.259
    >>Tuez |cRXP_ENEMY_Némésis|r
    >>|cRXP_WARN_Debout|cRXP_FRIENDLY_ sous |rTooga|r's coquille pour vous protéger de |cRXP_ENEMY_Némésis|r's |T135830:0|t[Fureur de lave] |cRXP_WARN_lance|r
    .complete 29122,1 -- Nemesis slain (1)
    .target Tooga
    .mob Nemesis
step
    .isOnQuest 29166
    #loop
    .goto 198,29.53,56.21,70,0
    .goto 198,36.15,52.44,70,0
    .goto 198,35.94,58.80,70,0
    .goto 198,24.27,62.12,70,0
    >>Ramassez le |cRXP_LOOT_Blueroot Vines|r par terre
    .complete 29166,1
step
    .isOnQuest 29123
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Tuez les |cRXP_ENEMY_Invaders from the Terres de Feu|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Tuez les |cRXP_ENEMY_Invaders from the Terres de Feu|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Tuez les |cRXP_ENEMY_Invaders from the Terres de Feu|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Tuez les |cRXP_ENEMY_Invaders from the Terres de Feu|r
    .complete 29163,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step -- 29248 Releasing the Pressure
    .isOnQuest 29248
    .goto 198,32.0,59.8,70,0
    .goto 198,36.6,54.8,70,0
    .goto 198,39.2,62.6,70,0
    .goto 198,34.6,64.6,70,0
    .goto 198,30.6,52.2,70,0
    >>Tuez les |cRXP_ENEMY_Charred Flamewakers|r. Ramassez-les pour leurs |cRXP_LOOT_Flamewaker Sonnette|r
    .complete 29248,1 -- Flamewaker Scale (100)
    .mob Charred Flamewaker
step -- 29128 The Protectors of Hyjal
    .isOnQuest 29128
    #completewith FinishProtector
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Tuez les |cRXP_ENEMY_Fiery Behemoths|r et les |cRXP_ENEMY_Seething Pyrelords|r
    .complete 29128,1 -- Invader slain at Sethria's Roost (6)
    .mob Fiery Behemoth
    .mob Seething Pyrelord
step -- 29247 Treating the Wounds
    .isOnQuest 29247
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Tuez les |cRXP_ENEMY_Fiery Behemoths|r. Ramassez-les pour leurs |cRXP_LOOT_Sulfur-Laced Wrappings|r
    .complete 29247,1 -- Sulfur-Laced Wrapping (4)
    .mob Fiery Behemoth
step -- 29246 Relieving the Pain
    .isOnQuest 29246
    #label FinishProtector
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Tuez les |cRXP_ENEMY_Seething Pyrelords|r. Ramassez-les pour leurs |cRXP_LOOT_Flame-Wreathed Cœurs|r
    .complete 29246,1 -- Flame-Wreathed Heart (4)
    .mob Seething Pyrelord
step -- 29128 The Protectors of Hyjal
    .isOnQuest 29128
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Tuez les |cRXP_ENEMY_Fiery Behemoths|r et les |cRXP_ENEMY_Seething Pyrelords|r
    .complete 29128,1 -- Invader slain at Sethria's Roost (6)
    .mob Fiery Behemoth
    .mob Seething Pyrelord
step
    .isQuestComplete 29162
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29162 >>Rendez la quête Bénédiction de la nature
step
    .isQuestComplete 29122
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29122 >>Rendez la quête Des échos de Némésis
step
    .isQuestComplete 29126
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .dailyturnin 29126 >>Rendez la quête La puissance de Malorne
step
    .isQuestComplete 29165
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .dailyturnin 29165 >>Rendez la quête L'appel de la meute
step
    .isQuestComplete 29148
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .dailyturnin 29148 >>Rendez la quête Ailes de flamme
step
    .isQuestComplete 29166
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .dailyturnin 29166 >>Rendez la quête Fournitures pour l'Autre Côté
step
    .isQuestComplete 29123
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .dailyturnin 29123 >>Rendre la quête Rage Against the Flammes
step
    .isQuestComplete 29149
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .dailyturnin 29149 >>Rendre la quête Rage Against the Flammes
step
    .isQuestComplete 29127
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .dailyturnin 29127 >>Rendre la quête Rage Against the Flammes
step
    .isQuestComplete 29163
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .dailyturnin 29163 >>Rendre la quête Rage Against the Flammes
step
    .isQuestComplete 29246
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dorda'en Tisselanuit|r
    .target Dorda'en Nightweaver
    .dailyturnin 29246 >>Rendez la quête Soulager la douleur
step
    .isQuestComplete 29247
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dorda'en Tisselanuit|r
    .target Dorda'en Nightweaver
    .dailyturnin 29247 >>Rendez la quête Soigner les blessures
step
    .isQuestComplete 29248
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dorda'en Tisselanuit|r
    .target Dorda'en Nightweaver
    .dailyturnin 29248 >>Rendez la quête Relâcher la pression
step
    #completewith RayneFeathersong
    .isQuestComplete 29128
    .goto 198,27.484,56.394
    .zone 338 >> Franchissez le Portail vers les Terres de Feu
step
    .isQuestTurnedIn 29215
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Avrilla|r
    .daily 29255,29257,29299 >>Acceptez l'une des quêtes quotidiennes aléatoires proposées
    .target Avrilla
step
    #label RayneFeathersong
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rayne Chanteplume|r
    .daily 29139,29143 >>Acceptez l'une des quêtes quotidiennes aléatoires proposées
    .target Rayne Feathersong
step
    .isQuestTurnedIn 29282
    .goto 338,46.758,90.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Riquette|r
    .daily 29263,29278,29295,29297 >> Acceptez l'une des quêtes quotidiennes aléatoires proposées
    >>|cRXP_WARN_Passez cette étape si |cRXP_FRIENDLY_Riquette|r n'offre pas de quête ici aujourd'hui|r
    .target Ricket
step
    .goto 338,45.626,86.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Capitaine Arbrefer|r
    .daily 29138 >>Acceptez la quête Victimes brûlées
    .target Captain Irontree
step
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Général Taldris Tombelune|r
    .daily 29179 >>Acceptez la quête Hostile Elements
    .daily 29304,29141,29142,29137 >> Acceptez l'une des quêtes quotidiennes aléatoires proposées
    .target General Taldris Moonfall
step
    .isQuestComplete 29128
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Général Taldris Tombelune|r
    .dailyturnin 29128 >>Rendre la quête Les protecteurs de Hyjal
    .target General Taldris Moonfall
step -- 29138 Burn Victims
    .isOnQuest 29138
    #sticky
    #label BurnVictims
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .use 69240 >> |cRXP_WARN_Utilisez le|r |T463860:0|t[Baume enchanté] |cRXP_WARN_sur|r |cRXP_FRIENDLY_Wounded Hyjal Defenders|r
    .complete 29138,1 -- Wounded Hyjal Defender saved 1/1
    .target Wounded Hyjal Defender
step -- Embergris 29255
    .isOnQuest 29255
    #label Embergris
    #sticky
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>Tuez les |cRXP_ENEMY_Charred Soldiers|r et les |cRXP_ENEMY_Charred Vanquishers|r. Ramassez-les pour leur |cRXP_LOOT_Embergris|r
    .complete 29255,1 -- Embergris (5)
    .mob Charred Soldier
    .mob Charred Vanquisher
step -- 29179 Hostile Elements
    .isOnQuest 29179
    #sticky
    #label HostileElements
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>Tuez les |cRXP_ENEMY_Charred Vanquishers|r et les |cRXP_ENEMY_Charred Soldiers|r
    .complete 29179,1 -- Charred Combatant slain (8)
    .mob Charred Vanquisher
    .mob Charred Soldier
step -- 29304 The Dogs of War
    .isOnQuest 29304
    #sticky
    #label TheDogs
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>Tuez les |cRXP_ENEMY_Charhounds|r et les |cRXP_ENEMY_Ancient Charhounds|r
    .complete 29304,1 -- Ancient Charhound slain (5)
    .mob Charhound
    .mob Ancient Charhound
step -- 29141 The Harder They Fall
    .isOnQuest 29141
    #sticky
    #label HarderTheyFall
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>Tuez les |cRXP_ENEMY_Molten Behemoths|r
    .complete 29141,1 -- Molten Behemoth slain (3)
    .mob Molten Behemoth
step -- 29142 Traitors Return
    .isOnQuest 29142
    #sticky
    #label TraitorsReturn
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,71.0,38.6,45,0
    >>Tuez les |cRXP_ENEMY_Druids of the Flamme|r
    .complete 29142,1 -- Druid of the Flame slain (3)
    .mob Druid of the Flame
step -- 29137 Breach in the Defenses
    .isOnQuest 29137
    #sticky
    #label Breach
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>Tuez les |cRXP_ENEMY_Lava Bursters|r
    .complete 29137,1 -- Lava Burster slain (5)
    .mob Lava Burster
step -- 29139 Aggressive Growth
    .isOnQuest 29139
    #sticky
    #label AggressiveGrowth
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>Cliquez sur les |cRXP_PICK_Ash Piles|r sur le sol
    .complete 29139,1 -- Smothervine planted (5)
step -- Steal Magmolias 29257
    .isOnQuest 29257
    #label StealMagmolias
    #sticky
    #loop
    .goto 338,47.7,59.6,45,0
    .goto 338,41.5,43.6,45,0
    .goto 338,54.5,45.5,45,0
    >>Ramassez le |cRXP_LOOT_Magmolia|r dans les petits bassins de lave
    >>|cRXP_WARN_Si un |cRXP_ENEMY_Perceur de lave|r apparaît après avoir pillé un, tuez-le et ramassez-le pour le|r |cRXP_LOOT_Magmolia|r
    .complete 29257,1 -- Magmolia (8)
    .mob Lava Burster
step -- Some Like It Hot 29299
    .isOnQuest 29299
    #label LikeItHot
    #sticky
    #loop
    .goto 338,50.6,68.6,45,0
    .goto 338,42.2,60.2,45,0
    .goto 338,42.8,41.8,45,0
    .goto 338,56.2,46.8,45,0
    .goto 338,54.6,61.6,45,0
    >>|cRXP_WARN_Prenez votre |cRXP_FRIENDLY_Flagellant cramoisi|r et combattez|r |cRXP_ENEMY_Emberspit Scorpions|r << !Hunter
    >>|cRXP_WARN_Lancez|r |T135834:0|t[Piège givrant] |cRXP_WARN_sur un |cRXP_ENEMY_Scorpion crache-braise|r. Il lancera|r |T135826:0|t[Ember Pools] |cRXP_WARN_continuellement pendant que votre |cRXP_FRIENDLY_Flagellant cramoisi|r les absorbe, vous permettant de terminer cette quête quotidienne avec un seul|r |cRXP_ENEMY_Scorpion crache-braise|r << Hunter
    >>|cRXP_WARN_Les |cRXP_ENEMY_Emberspit Scorpions|r lanceront|r |T135826:0|t[Ember Pools] |cRXP_WARN_que votre |cRXP_FRIENDLY_Flagellant cramoisi|r boira|r
    .complete 29299,1 -- Help the Crimson Lasher Drink from Ember Pools (6)
    .mob Emberspit Scorpion
step -- 29263 A Bitter Pill
    .isOnQuest 29263
    #label MagmaWorm
    #sticky
    #loop
    .goto 338,43.8,46.8,50,0
    .goto 338,53.6,41.8,50,0
    .goto 338,55.6,54.6,50,0
    .goto 338,44.8,54.4,50,0
    >>Cliquez sur le |cRXP_PICK_Lave Bubulle|r à l'intérieur des mares de lave pour invoquer un |cRXP_ENEMY_Ver de magma souterrain|r
    .use 69759 >>|cRXP_WARN_Quand vous verrez le message d'avertissement : "Le ver est sur le point de vous mordre ! Placez la bombe maintenant !" utilisez|r |T133710:0|t[La pilule amère]
    .complete 29263,1 -- Subterranean Magma Worm slain 1/1
    .mob Subterranean Magma Worm
step -- 29278 Living Obsidium
    .isOnQuest 29278
    #label ObsidiumMeteorite
    #sticky
    #loop
    .goto 338,41.5,49.8,50,0
    .goto 338,46.6,43.1,50,0
    .goto 338,54.6,43.8,50,0
    .goto 338,51.5,51.2,50,0
    >>Cliquez sur le |cRXP_PICK_Magnetic Stones|r puis ramassez le |cRXP_LOOT_Obsidium Meteorites|r qui tombent
    .complete 29278,1 -- Obsidium Meteorite (10)
    .target Magnetic Stone
step -- 29143 Wisp Away
    .isOnQuest 29143
    #sticky
    #label WispAway
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>|cRXP_WARN_Prenez le |cRXP_FRIENDLY_Hyjal Feu follet|r qui vous suit vers un Portail de feu|r
    >>|cRXP_WARN_Tuez les mobs qui sortent de lui. Assurez-vous que le |cRXP_FRIENDLY_Hyjal Feu follet|r ne meurt pas !|r
    .complete 29143,1 -- Close a Fire Portal 1/1
step
    #optional
    #requires MagmaWorm
step
    #optional
    #requires ObsidiumMeteorite
step
    #optional
    #requires Embergris
step
    #optional
    #requires StealMagmolias
step
    #optional
    #requires LikeItHot
step
    #optional
    #requires BurnVictims
step
    #optional
    #requires HostileElements
step
    #optional
    #requires TheDogs
step
    #optional
    #requires HarderTheyFall
step
    #optional
    #requires TraitorsReturn
step
    #optional
    #requires Breach
step
    #optional
    #requires AggressiveGrowth
step
    #optional
    #requires WispAway
step
    .isQuestComplete 29255
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29255 >>Rendre la quête Embergris
    .target Avrilla
step
    .isQuestComplete 29257
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29257 >>Rendre la quête Steal Magmolias
    .target Avrilla
step
    .isQuestComplete 29299
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29299 >>Rendre la quête Some Like It Ça brûle
    .target Avrilla
step
    .isQuestComplete 29139
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rayne Chanteplume|r
    .dailyturnin 29139 >>Rendez la quête Croissance agressive
    .target Rayne Feathersong
step
    .isQuestComplete 29143
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rayne Chanteplume|r
    .dailyturnin 29143 >>Rendez la quête Feu follet Absent(e)
    .target Rayne Feathersong
step
    .isQuestComplete 29263
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Damek Barbe-en-Fleur|r
    .dailyturnin 29263 >> Rendre la quête A Bitter Pill
    .target Damek Bloombeard
step
    .isQuestComplete 29278
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Damek Barbe-en-Fleur|r
    .dailyturnin 29278 >> Rendre la quête Living Obsidium
    .target Damek Bloombeard
step
    .isQuestComplete 29295
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Damek Barbe-en-Fleur|r
    .dailyturnin 29295 >> Rendre la quête The Bigger They Are
    .target Damek Bloombeard
step
    .isQuestComplete 29297
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Damek Barbe-en-Fleur|r
    .dailyturnin 29297 >> Rendre la quête Adieu Adieu Burdy
    .target Damek Bloombeard
step
    .isQuestComplete 29179
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Général Taldris Tombelune|r
    .dailyturnin 29179 >>Rendre la quête Hostile Elements
    .target General Taldris Moonfall
step
    .isQuestComplete 29304
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Général Taldris Tombelune|r
    .dailyturnin 29304 >> Rendre la quête The Dogs of Guerre
    .target General Taldris Moonfall
step
    .isQuestComplete 29141
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Général Taldris Tombelune|r
    .dailyturnin 29141 >> Rendez la quête The Harder They Chute
    .target General Taldris Moonfall
step
    .isQuestComplete 29142
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Général Taldris Tombelune|r
    .dailyturnin 29142 >> Rendez la quête Traitors Renvoi
    .target General Taldris Moonfall
step
    .isQuestComplete 29137
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Général Taldris Tombelune|r
    .dailyturnin 29137 >> Rendez la quête Une faille dans les défenses
    .target General Taldris Moonfall
step
    .isQuestComplete 29138
    .goto 338,45.626,86.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Capitaine Arbrefer|r
    .dailyturnin 29138 >>Rendez la quête Victimes brûlées
    .target Captain Irontree
step
    .isQuestTurnedIn 29214
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Général Taldris Tombelune|r
    .daily 29205 >>Acceptez la quête La flèche Lugubre
    .target General Taldris Moonfall
step
    .isOnQuest 29205
    .goto 338,54.503,70.816,10,0
    .goto 338,66.301,65.137
    >>Protégez l'un des |cRXP_FRIENDLY_Druides|r lors de la prise de La flèche Lugubre
    >>Tuez le |cRXP_ENEMY_Pyroseigneur|r et les |cRXP_ENEMY_Flamewatch Sentinels|r à la fin
    .complete 29205,1 -- Druid Assault Group Protected
    .target Keeper Taldros
    .target Turak Runetotem
    .target Deldren Ravenelm
    .mob Pyrelord
    .mob Flamewatch Sentinel
step
    .goto 338,64.855,67.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marine Ailerasoir|r
    .dailyturnin 29205 >>Rendez la quête La flèche Lugubre
    .daily 29211,29192 >>Acceptez l'une des quêtes quotidiennes aléatoires proposées
    .target Marin Bladewing
step
    .isQuestTurnedIn 29272 -- Only offered if completed Druids questline
    .goto 338,66.259,66.141
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tholo Blanc-Sabot|r
    >>|cRXP_WARN_Ne passez pas cette étape si ce PNJ n'offre pas cette quête|r
    .daily 29276 >>Acceptez la quête La Reine des araignées de flammes
    .target Tholo Whitehoof
step -- Ricket @ WARDENS
    .isQuestTurnedIn 29282
    .goto 338,66.429,65.396
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Riquette|r
    >>|cRXP_WARN_Passez cette étape si elle n'est pas là|r
    .daily 29263,29278,29295,29297 >> Acceptez l'une des quêtes quotidiennes aléatoires proposées
    .target Ricket
step
    .goto 338,66.100,63.908
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deldren Ormefreux|r
    .daily 29189,29159,29160 >> Acceptez les deux quêtes quotidiennes aléatoires proposées
    .disablecheckbox
    .target Deldren Ravenelm
    .questcount <2,29189,29159,29160
step -- Solar Core Destruction 29211
    .isOnQuest 29211
    #label SolarCore
    #sticky
    .goto 338,70.815,38.196
    >>Cliquez sur le |cRXP_PICK_Noyau solaire|r
    .complete 29211,1 -- Solar Core detonated 1/1
step -- The Wardens are Watching 29192
    .isOnQuest 29192
    #label WardensWatching
    #sticky
    #loop
    .goto 338,71.6,44.6,30,0
    .goto 338,72.0,37.4,30,0
    .goto 338,68.8,41.4,30,0
    >>Attaquez un |cRXP_ENEMY_Druide de la Flamme|r jusqu'à ce qu'il soit affaibli, puis dirigez-le vers le piège des |cRXP_FRIENDLY_Ombre Wardens|r
    .complete 29192,1 -- Druid of the Flame captured 1/1
    .mob Druid of the Flame
step -- The Flame Spider Queen 29276
    .isOnQuest 29276
    #label FlameSpider
    #sticky
    #loop
    .goto 338,69.6,49.8,40,0
    .goto 338,60.6,40.8,40,0
    .goto 338,60.8,61.0,40,0
    >>Tuez des |cRXP_ENEMY_Cinderweb Creepers|r. Pillez-les pour leur |cRXP_LOOT_Flame Toxine|r
    >>Tuez des |cRXP_ENEMY_Cinderweb Spinners|r. Pillez-les pour leur |cRXP_LOOT_Searing Rets Fluid|r
    >>|cRXP_WARN_Vous collecterez également leur |cRXP_LOOT_Flame Toxine|r et |cRXP_LOOT_Searing Rets Fluid|r passivement en leur infligeant des dégâts|r
    .complete 29276,1 -- Flame Venom (8)
    .mob +Cinderweb Creeper
    .complete 29276,2 -- Searing Web Fluid (8)
    .mob +Cinderweb Spinner
step -- Wicked Webs 29189
    .isOnQuest 29189
    #label WickedWebs
    #sticky
    #loop
    .goto 338,69.6,49.8,40,0
    .goto 338,60.6,40.8,40,0
    .goto 338,60.8,61.0,40,0
    >>Tuez les |cRXP_ENEMY_Cinderweb Cocoons|r
    .complete 29189,1 -- Victims freed  (8)
    .mob Cinderweb Cocoon
step -- Pyrorachnophobia 29159
    .isOnQuest 29159
    #label Pyrorachnophobia
    #sticky
    #loop
    .goto 338,69.6,49.8,40,0
    .goto 338,60.6,40.8,40,0
    .goto 338,60.8,61.0,40,0
    >>Tuez les |cRXP_ENEMY_Cinderweb Creepers|r et les |cRXP_ENEMY_Cinderweb Spinners|r
    .complete 29159,1 -- Cinderweb spider slain  (8)
    .mob Cinderweb Creeper
    .mob Cinderweb Spinner
step -- Egg-stinction 29160
    .isOnQuest 29160
    #label Eggstinction
    #sticky
    #loop
    .goto 338,69.6,49.8,40,0
    .goto 338,60.6,40.8,40,0
    .goto 338,60.8,61.0,40,0
    >>Ouvrez les |cRXP_PICK_Cinderweb Oeuf Sacs|r. Ramassez-les pour les |cRXP_LOOT_Cinderweb Eggs|r
    .complete 29160,1 -- Cinderweb Egg (20)
step -- 29297 Bye Bye Burdy -- WARDENS ONLY
    .isOnQuest 29297
    #label ByeByeBurdy
    #sticky
    #loop
    .goto 338,73.03,54.88,50,0
    .goto 338,73.82,38.28,50,0
    .goto 338,63.73,38.76,50,0
    .use 69832 >> |cRXP_WARN_Utilisez le|r |T135129:0|t[Aiguillon à zoziau] |cRXP_WARN_sur les |cRXP_ENEMY_Druide de la Flamme|r qui volent dans les airs|r
    .complete 29297,1 -- Druids of the Flame in Fire Crow form slain (3)
    .mob Druid of the Flame
step
    #optional
    #requires SolarCore
step
    #optional
    #requires WardensWatching
step
    #optional
    #requires FlameSpider
step
    #optional
    #requires WickedWebs
step
    #optional
    #requires Pyrorachnophobia
step
    #optional
    #requires Eggstinction
step
    #optional
    #requires ByeByeBurdy
step
    .isQuestComplete 29160
    .goto 338,66.100,63.908
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deldren Ormefreux|r
    .dailyturnin 29160 >> Rendre la quête Oeuf-stinction
    .target Deldren Ravenelm
step
    .isQuestComplete 29159
    .goto 338,66.100,63.908
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deldren Ormefreux|r
    .dailyturnin 29159 >> Rendre la quête Pyrorachnophobia
    .target Deldren Ravenelm
step
    .isQuestComplete 29189
    .goto 338,66.100,63.908
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deldren Ormefreux|r
    .dailyturnin 29189 >> Rendez la quête Wicked Rets
    .target Deldren Ravenelm
step
    .isQuestComplete 29192
    .goto 338,64.855,67.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marine Ailerasoir|r
    .dailyturnin 29192 >>Rendez la quête Les Gardiennes are Watching
    .target Marin Bladewing
step
    .isQuestComplete 29211
    .goto 338,64.855,67.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marine Ailerasoir|r
    .dailyturnin 29211 >>Rendez la quête Solar Noyau Destruction
    .target Marin Bladewing
step
    .goto 338,64.855,67.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marine Ailerasoir|r
    .daily 29210 >> Acceptez la quête Enduring the Chaleur
    .target Marin Bladewing
step -- this step will autoskip if they completed 29276 earlier
    .goto 338,65.959,66.093
    .isQuestTurnedIn 29272 -- Only offered if completed Druids questline
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anren Cherchelombre|r
    >>Passez cette étape si il n'est pas là
    .daily 29275 >>Acceptez la quête Fandral's Methods
    .disablecheckbox
    .target Anren Shadowseeker
    .questcount <1,29275,29276
step -- Enduring the Heat 29210
    .isOnQuest 29210
    .goto 338,57.491,49.532
    >>|cRXP_WARN_Descendez dans les Profondeurs ignées ci-dessous|r
    .complete 29210,1 -- All Flame Runes Destroyed 1/1
step
    .isOnQuest 29275
    #completewith next
    >>Ramassez le |cRXP_LOOT_Flame Druide Bâton|r, le |cRXP_LOOT_Flame Druide Grimoire|r, la |cRXP_LOOT_Flame Druide Reagent Pouch|r et l'|cRXP_LOOT_Flame Druide Idole|r
    >>|cRXP_WARN_Ces éléments sont éparpillés dans les Profondeurs ignées|r
    .complete 29275,1 -- Flame Druid Staff 1/1
    .complete 29275,2 -- Flame Druid Spellbook 1/1
    .complete 29275,3 -- Flame Druid Reagent Pouch 1/1
    .complete 29275,4 -- Flame Druid Idol 1/1
step -- Enduring the Heat 29210
    .isOnQuest 29210
    #loop
    .goto 338,61.620,52.938,8,0
    .goto 338,66.330,52.184,8,0
    .goto 338,61.386,48.457,8,0
    .goto 338,64.718,59.267,8,0
    .goto 338,68.854,58.329,8,0
    .goto 338,68.109,66.500,8,0
    .goto 338,64.165,66.062,8,0
    .goto 338,60.547,59.997,8,0
    >>|cRXP_WARN_Suivez la flèche et cliquez sur les |cRXP_PICK_Runes de Protection de Flamme|r sur le sol|r
    >>|cRXP_WARN_Cliquer sur les |cRXP_PICK_Flame Protection Runes|r tuera tous les |cRXP_ENEMY_Unstable Flameragers|r qui vous attaquent|r
    .complete 29210,2 -- All Flame Runes Destroyed 1/1
step
    .isOnQuest 29275
    #loop
    .goto 338,61.620,52.938,20,0
    .goto 338,66.330,52.184,20,0
    .goto 338,61.386,48.457,20,0
    .goto 338,64.718,59.267,20,0
    .goto 338,68.854,58.329,20,0
    .goto 338,68.109,66.500,20,0
    .goto 338,64.165,66.062,20,0
    .goto 338,60.547,59.997,20,0
    >>Ramassez le |cRXP_LOOT_Flame Druide Bâton|r, le |cRXP_LOOT_Flame Druide Grimoire|r, la |cRXP_LOOT_Flame Druide Reagent Pouch|r et l'|cRXP_LOOT_Flame Druide Idole|r
    >>|cRXP_WARN_Ces éléments sont éparpillés dans les Profondeurs ignées|r
    .complete 29275,1 -- Flame Druid Staff 1/1
    .complete 29275,2 -- Flame Druid Spellbook 1/1
    .complete 29275,3 -- Flame Druid Reagent Pouch 1/1
    .complete 29275,4 -- Flame Druid Idol 1/1
step
    .isQuestComplete 29210
    .goto 338,57.742,49.502
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thérésa Dermécorce|r
    .dailyturnin 29210 >> Rendez la quête Enduring the Chaleur
    .target Theresa Barkskin
step
    .isQuestTurnedIn 29284
    .goto 338,57.518,49.478
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shalis Sombrechasse|r
    .daily 29243 >>Acceptez la quête Frappe au Cœur
    .target Shalis Darkhunter
step
    .isOnQuest 29243
    .goto 338,50.343,23.036
    >>Tuez l'un des |cRXP_ENEMY_Lieutenants of Flamme|r
    .complete 29243,1 -- Lieutenant of Flame slain
    .mob Ancient Charscale
    .mob Ancient Smoldering Behemoth
    .mob Ancient Firelord
    .mob Cinderweb Queen
    .mob Devout Harbinger
step
    .isQuestComplete 29276
    .goto 338,51.245,85.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anren Cherchelombre|r
    .dailyturnin 29276 >> Rendez la quête The Flamme Araignée Reine
    .target Anren Shadowseeker
step
    .isQuestComplete 29275
    .goto 338,51.547,85.511
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tholo Blanc-Sabot|r
    .dailyturnin 29275 >> Rendre la quête Fandral's Methods
    .target Tholo Whitehoof
step
    .isQuestComplete 29297
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Damek Barbe-en-Fleur|r
    .dailyturnin 29297 >> Rendre la quête Adieu Adieu Burdy
    .target Damek Bloombeard
step
    .isQuestComplete 29243
    .goto 338,47.584,90.552
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Capitaine Saynna Coursetempête|r
    .dailyturnin 29243 >>Rendez la quête Frappe au Cœur
    .target Captain Saynna Stormrunner

--Calling the Ancients unlock
step
    .isQuestTurnedIn 29182 -- Druids prereq
    .isQuestTurnedIn 29215 -- Warden prereq
    .goto 338,44.434,88.790
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Varlan Hautebranche|r
    .accept 29283 >>Acceptez la quête Appeler les Anciens
    .target Varlan Highbough
step
    #optional
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >> Prenez le Portail vers le mont Hyjal
    .zoneskip 338,1
step
    .isQuestComplete 29283
    .goto 198,26.005,61.302
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vieille-Branche|r
    .turnin 29283 >>Rendez la quête Appeler les Anciens
    .target Elderlimb
step
    .isQuestTurnedIn 29283
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .accept 29284 >>Acceptez la quête L'aide des anciens
step
    #optional
    #completewith WardenEnd
    .isOnQuest 29284
    .goto 198,27.484,56.394
    .zone 338 >> Franchissez le Portail vers les Terres de Feu
step
    .isOnQuest 29284
    .goto 338,43.812,88.964
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vieille-Branche|r
    .turnin 29284 >>Rendez la quête L'aide des anciens
    .target Elderlimb
step
    .isQuestTurnedIn 29284
    .goto 338,51.713,81.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shalis Sombrechasse|r
    .daily 29243 >>Acceptez la quête Frappe au Cœur
    .target Shalis Darkhunter
step
    .isOnQuest 29243
    .goto 338,50.343,23.036
    >>Tuez l'un des |cRXP_ENEMY_Lieutenants of Flamme|r
    .complete 29243,1 -- Lieutenant of Flame slain
    .mob Ancient Charscale
    .mob Ancient Smoldering Behemoth
    .mob Ancient Firelord
    .mob Cinderweb Queen
    .mob Devout Harbinger
 step
    .isQuestComplete 29243
    .goto 338,47.584,90.552
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Capitaine Saynna Coursetempête|r
    .dailyturnin 29243 >>Rendez la quête Frappe au Cœur
    .target Captain Saynna Stormrunner
--Complete Calling the Ancients unlock

--Additional Armaments unlock
step
    .isQuestTurnedIn 29182 -- Druids prereq
    .isQuestTurnedIn 29215 -- Warden prereq
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Damek Barbe-en-Fleur|r
    .accept 29281 >>Acceptez la quête Des armes en rab
    .target Damek Bloombeard
step
    #optional
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >> Prenez le Portail vers le mont Hyjal
    .zoneskip 338,1
step
    .isQuestComplete 29281
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .turnin 29281 >>Rendez la quête Des armes en rab
    .accept 29282 >>Acceptez la quête Bien armé
step
    .isQuestTurnedIn 29281
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .target Matoclaw
    .accept 29282 >>Acceptez la quête Bien armé
step
    #optional
    #completewith next
    .isOnQuest 29282
    .goto 198,27.484,56.394
    .zone 338 >> Franchissez le Portail vers les Terres de Feu
step
    .isOnQuest 29282
    .goto 338,46.758,90.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Riquette|r
    .target Ricket
    .turnin 29282 >>Rendez la quête Bien armé
step
    .isQuestTurnedIn 29282
    .goto 338,46.758,90.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Riquette|r
    .daily 29263,29278,29295,29297 >> Acceptez l'une des quêtes quotidiennes aléatoires proposées
    .target Ricket
step -- 29263 A Bitter Pill
    .isOnQuest 29263
    #loop
    .goto 338,43.8,46.8,50,0
    .goto 338,53.6,41.8,50,0
    .goto 338,55.6,54.6,50,0
    .goto 338,44.8,54.4,50,0
    >>Cliquez sur le |cRXP_PICK_Lave Bubulle|r à l'intérieur des mares de lave pour invoquer un |cRXP_ENEMY_Ver de magma souterrain|r
    .use 69759 >>|cRXP_WARN_Quand vous verrez le message d'avertissement : "Le ver est sur le point de vous mordre ! Placez la bombe maintenant !" utilisez|r |T133710:0|t[La pilule amère]
    .complete 29263,1 -- Subterranean Magma Worm slain 1/1
    .mob Subterranean Magma Worm
step -- 29278 Living Obsidium
    .isOnQuest 29278
    #loop
    .goto 338,41.5,49.8,50,0
    .goto 338,46.6,43.1,50,0
    .goto 338,54.6,43.8,50,0
    .goto 338,51.5,51.2,50,0
    >>Cliquez sur le |cRXP_PICK_Magnetic Stones|r puis ramassez le |cRXP_LOOT_Obsidium Meteorites|r qui tombent
    .complete 29278,1 -- Obsidium Meteorite (10)
    .target Magnetic Stone
step -- 29295 The Bigger They Are -- DRUIDS ONLY
    .isOnQuest 29295
    #loop
    .goto 338,29.7,28.5,50,0
    .goto 338,16.8,32.5,50,0
    .goto 338,19.5,49.5,50,0
    .goto 338,32.7,43.6,50,0
    >>Tuez les |cRXP_ENEMY_Obsidium Punishers|r. Ramassez les |cRXP_LOOT_Living Obsidium Kopo|r débris sur le sol après.
    .complete 29295,1 -- Living Obsidium Chip (10)
    .mob Obsidium Punisher
step -- 29297 Bye Bye Burdy -- WARDENS ONLY
    .isOnQuest 29297
    #loop
    .goto 338,73.03,54.88,50,0
    .goto 338,73.82,38.28,50,0
    .goto 338,63.73,38.76,50,0
    .use 69832 >> |cRXP_WARN_Utilisez le|r |T135129:0|t[Aiguillon à zoziau] |cRXP_WARN_sur les |cRXP_ENEMY_Druide de la Flamme|r qui volent dans les airs|r
    .complete 29297,1 -- Druids of the Flame in Fire Crow form slain (3)
    .mob Druid of the Flame
step
    .isQuestComplete 29263
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Damek Barbe-en-Fleur|r
    .dailyturnin 29263 >> Rendre la quête A Bitter Pill
    .target Damek Bloombeard
step
    .isQuestComplete 29278
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Damek Barbe-en-Fleur|r
    .dailyturnin 29278 >> Rendre la quête Living Obsidium
    .target Damek Bloombeard
step
    .isQuestComplete 29295
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Damek Barbe-en-Fleur|r
    .dailyturnin 29295 >> Rendre la quête The Bigger They Are
    .target Damek Bloombeard
step
    .isQuestComplete 29297
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Damek Barbe-en-Fleur|r
    .dailyturnin 29297 >> Rendre la quête Adieu Adieu Burdy
    .target Damek Bloombeard
--Complete Additional Armaments unlock

--Filling the Moonwell unlock
step
    .goto 338,44.087,86.321
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ayla Ombretempête|r
    .accept 29279 >>Acceptez la quête Remplir le puits de lune
    .target Ayla Shadowstorm
step
    #optional
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >> Prenez le Portail vers le mont Hyjal
    .zoneskip 338,1
step
    .isQuestComplete 29279
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .turnin 29279 >> Rendez la quête Remplir le puits de lune
    .accept 29280 >> Acceptez la quête Des eaux nourrissantes
    .target Matoclaw
step
    .isQuestTurnedIn 29279
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matogriffe|r
    .accept 29280 >> Acceptez la quête Des eaux nourrissantes
    .target Matoclaw
step
    #optional
    #completewith next
    .isOnQuest 29280
    .goto 198,27.484,56.394
    .zone 338 >> Franchissez le Portail vers les Terres de Feu
step
    .isOnQuest 29280
    .goto 338,44.087,86.321
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ayla Ombretempête|r
    .target Ayla Shadowstorm
    .turnin 29280 >>Rendez la quête Des eaux nourrissantes
step
    .isQuestTurnedIn 29280
    .goto 338,47.022,91.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Malfurion Hurlorage|r
    .target Malfurion Stormrage
    .accept 29203 >> Acceptez la quête Dans les profondeurs
step
    .isOnQuest 29203
    #completewith next
    .goto 338,57.491,49.532,15 >>Entrez dans les Profondeurs ignées
step
    .isOnQuest 29203
    .goto 338,64.615,59.216
    >>Tuez |cRXP_ENEMY_Leyara|r
    .complete 29203,1 -- Leyara slain 1/1
    .mob Leyara
step
    .isQuestComplete 29203
    #completewith next
    .goto 338,57.491,49.532,15 >>Quittez les Profondeurs ignées
    .subzoneskip 5741,1
step
    .isQuestComplete 29203
    .goto 338,47.022,91.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Malfurion Hurlorage|r
    .target Malfurion Stormrage
    .turnin 29203 >> Rendez la quête Dans les profondeurs
step
    .isQuestTurnedIn 29203
    >>|cRXP_WARN_Vous aurez maintenant reçu un courrier de |cRXP_FRIENDLY_Thérésa Dermécorce|r avec un|r |T514925:0|t[|cRXP_LOOT_Médaillon taché par la fumée|r]
    .use 69854 >>|cRXP_WARN_Utilisez le|r |T514925:0|t[|cRXP_LOOT_Médaillon taché par la fumée|r] |cRXP_WARN_pour démarrer la quête|r
    .collect 69854,1,29298,1 -- Smoke-Stained Locket (1)
    .accept 29298 >> Acceptez la quête Un médaillon taché par la fumée
step
    #optional
    #completewith SecretsWithin
    .goto 338,53.026,83.693
    .zone 198 >> Prenez le Portail vers le mont Hyjal
    .zoneskip 338,1
step
    .isQuestTurnedIn 29203
    #completewith next
    .zone Moonglade >> Voyagez à Reflet-de-Lune
step
    #label SecretsWithin
    .isQuestTurnedIn 29203
    .goto Moonglade,51.685,45.098
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rabine Saturna|r
    .turnin 29298 >> Rendez la quête Un médaillon taché par la fumée
    .accept 29302 >> Acceptez la quête Avec une surprise à l’intérieur
    .timer 42,Avec une surprise à l’intérieur RP
    .target Rabine Saturna
step
    .isQuestTurnedIn 29203
    >>Attendez le temps du RP
    .complete 29302,1 -- Look into Leyara's memories 1/1
step
    .isQuestTurnedIn 29203
    .goto Moonglade,51.685,45.098
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rabine Saturna|r
    .turnin 29302 >> Rendre la quête Avec une surprise à l'intérieur
    .accept 29303 >> Accepter Une tragédie dans la famille
    .target Rabine Saturna
step
    .isOnQuest 29303
    #completewith next
    .zone Ashenvale >> Voyagez à Ashenvale
step
    .isOnQuest 29303
    .goto Ashenvale,40.501,53.281
    .cast 6247 >> Cliquez sur la |cRXP_PICK_Tombe d'Elfe de la nuit|r
    .timer 48,Une tragédie dans la famille RP
    .skipgossip
step
    .isOnQuest 29203
    .goto Ashenvale,40.501,53.281
    >>Attendez le temps du RP
    .complete 29303,1 -- Look deeper into Leyara's memories 1/1
    .skipgossip
step
    .isQuestTurnedIn 29203
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .turnin 29303 >> Rendre la quête Une tragédie dans la famille
    .accept 29310 >> Accepter Le point de non retour
step
    .isOnQuest 29310
    #completewith next
    .zone 198 >> Voyage vers Mont Hyjal
step
    .isOnQuest 29310
    .goto 198,7.561,34.582
    .cast 6247 >> Cliquez sur le |cRXP_PICK_Petit Tombeau|r
    .timer 59,Le point de non retour RP
    .skipgossip
step
    .isOnQuest 29310
    .goto 198,7.561,34.582
    >>Attendez le temps du RP
    .complete 29310,1 -- Look deeper into Leyara's memories 1/1
    .skipgossip
step
    .isQuestTurnedIn 29203
    >>Cliquez sur la fenêtre contextuelle de rendu de quête dans votre journal de quêtes.
    .turnin 29310 >> Rendre la quête Le point de non retour
    .accept 29311 >> Accepter Tout le monde connaît la suite
step
    #optional
    #completewith next
    .isOnQuest 29311
    .goto 198,27.484,56.394
    .zone 338 >> Franchissez le Portail vers les Terres de Feu
step
    .isOnQuest 29311
    .goto 338,47.022,91.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Malfurion Hurlorage|r
    .turnin 29311 >> Rendre la quête Tout le monde connaît la suite
    .target Malfurion Stormrage
--Complete Filling the Moonwell

step
    #optional
    .isQuestTurnedIn 29284
    .isQuestTurnedIn 29282
    .isQuestTurnedIn 29311
    .goto 338,46.932,90.984
    +Félicitations sur le déverrouillage de l'ensemble du Front du Magma! Continuez à compléter l'un des deux (|cRXP_ENEMY_2.5|r - Le Front du Magma + Druides) ou (|cRXP_PICK_2.5|r - Le Front du Magma + Gardiens) pour gagner plus |T513195:0|t[Marques du Monde Arbre]
    >>|cRXP_FRIENDLY_Zen'Vorka|r vend |T133654:0|t[|cRXP_FRIENDLY_Cache de Zen’Vorka|r] pour 30 |T513195:0|t[Marques du Monde Arbre] qui peut contenir un objet aléatoire de qualité verte ou le compagnon rare |T294481:0|t[|cFF0070FFPierre Brûlée|r]
    .target Zen'Vorka

step
    #label WardenEnd
    +|cRXP_WARN_Vous avez complété toutes les quêtes quotidiennes disponibles pour aujourd'hui. Rechargez ce même guide demain (|r|cRXP_PICK_2.5|r - le Front du Magma + Gardiens|cRXP_WARN_) pour continuer à compléter les quêtes quotidiennes jusqu'à ce que vous ayez acquis assez|r |T513195:0|t[Marks of the Monde Arbre]
]])
