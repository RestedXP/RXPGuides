if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#cata
#version 1
#group Die Geschmolzene Front
#name A_1_TMF_Start
#next B_1_TSOM_Start
#displayname |cRXP_LOOT_1.0|r - Die Invasion der Geißel der Geißel

step
    #completewith OpeningtheDoor
	.zone 85 >> Reist nach Orgrimmar << Horde
	.zone 84 >> Lauf nach Sturmwind << Alliance
	.zoneskip 198
step
    #completewith OpeningtheDoor
    .goto 85,51.000,38.221 << Horde
    .goto 84,76.178,18.695 << Alliance
	.zone 198 >> Nehmt das Portal nach Hyjal
step
    #label OpeningtheDoor
    .goto 198/1,-2082.800,4424.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .accept 29145 >>Akzeptiert die Quest Tor öffnen
step
    .goto 198/1,-2079.100,4653.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Arch Druide Hamuul Runentotem|r
    .target Arch Druid Hamuul Runetotem
    .turnin 29145 >>Gebt die Quest Tor öffnen ab
    .accept 29195 >>Akzeptiert die Quest Ein Ritual der Flamme
step
    .goto 198/1,-2092.900,4621.800
    >>Tötet |cRXP_ENEMY_Charred Invaders|r bis eure Fortschrittsleiste voll ist. Das bewirkt, dass |cRXP_ENEMY_Leyara|r dann durch das Portal kommt
    >>Tötet |cRXP_ENEMY_Leyara|r
    >>|cRXP_WARN_Ihr braucht sie nicht zu taggen|r
    .complete 29195,1 -- Open the portal to the Firelands (1)
    .mob Charred Invader
    .mob Leyara
step
    .goto 198/1,-2092.900,4621.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Malfurion Sturmgrimm|r
    .target Malfurion Stormrage
    .turnin 29195 >>Gebt die Quest Ein Ritual der Flamme ab
    .accept 29196 >>Akzeptiert die Quest Zum Heiligtum!
step
    .goto 198/1,-2082.800,4424.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .turnin 29196 >>Gebt die Quest Zum Heiligtum! ab
    .accept 29197 >>Akzeptiert die Quest Kalt erwischt
step
    .goto 198/1,-1980.300,4628.000
    >>Tötet die |cRXP_ENEMY_Raging Invaders|r in der Nähe von |cRXP_FRIENDLY_Thisalee Krähe|r
    .complete 29197,2 --|Kill elementals near Thisalee: 6/6
    .mob Raging Invader
    .target Thisalee Crow
step
    .goto 198/1,-2373.900,4560.100
    >>Tötet die |cRXP_ENEMY_Raging Invaders|r in der Nähe von |cRXP_FRIENDLY_Ahnenzweig|r
    .complete 29197,1 --|Kill elementals near Elderlimb: 6/6
    .mob Raging Invader
    .target Elderlimb
step
    .goto 198/1,-2699.000,4584.200
    >>Tötet die |cRXP_ENEMY_Raging Invaders|r in der Nähe von |cRXP_FRIENDLY_Tholo|r und |cRXP_FRIENDLY_Anren|r
    .complete 29197,3 --|Kill elementals near Tholo and Anren: 6/6
    .mob Raging Invader
    .target Tholo
    .target Anren
step
    .goto 198/1,-2082.200,4423.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Arch Druide Hamuul Runentotem|r
    .target Arch Druid Hamuul Runetotem
    .turnin 29197 >>Gebt die Quest Kalt erwischt ab
    .accept 29198 >>Akzeptiert die Quest Das Heiligtum darf nicht fallen
step
    .goto 198/1,-2080.200,4421.700
    >>Warte auf das RP
    .complete 29198,1
step
    .goto 198/1,-2080.200,4421.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Malfurion Sturmgrimm|r
    .target Malfurion Stormrage
    .turnin 29198 >>Gebt die Quest Das Heiligtum darf nicht fallen ab
step
    .goto 198/1,-2080.200,4417.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Arch Druide Hamuul Runentotem|r
    .target Arch Druid Hamuul Runetotem
    .accept 29199 >>Akzeptiert die Quest Verstärkung rufen
step
    .goto 198/1,-2082.700,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .daily 29123,29149,29127,29163,29166 >>Akzeptiert eine beliebige tägliche Quest
step
    #loop
    .goto 198,27.108,62.009,5,0
    .goto 198,27.170,62.563,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r oder |cRXP_FRIENDLY_Mylune|r
    .daily 29125,29147,29164,29101,29161 >> Akzeptiert eine beliebige tägliche Quest
    .disablecheckbox
    .questcount <1,29125,29147,29164,29101,29161
    .target Matoclaw
    .target Mylune
step
    .isOnQuest 29166
    #completewith KillNemesis
    >>Plündert die |cRXP_LOOT_Blueroot Vines|r auf dem Boden
    .complete 29166,1
step
    .isOnQuest 29123
    #completewith KillNemesis
    >>Tötet |cRXP_ENEMY_Eindringlinge aus den Feuerlanden|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #completewith KillNemesis
    >>Tötet |cRXP_ENEMY_Eindringlinge aus den Feuerlanden|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #completewith KillNemesis
    >>Tötet |cRXP_ENEMY_Eindringlinge aus den Feuerlanden|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #completewith KillNemesis
    >>Tötet |cRXP_ENEMY_Eindringlinge aus den Feuerlanden|r
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
    >>Klickt auf |cRXP_FRIENDLY_Abkömmling von Tortolla|r
    >>|cRXP_WARN_Zielt auf das Wasser und wirkt|r |T132219:0|t[Schildkröte kicken] |cRXP_WARN_(1)|r
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
    >>Tötet |cRXP_ENEMY_Eindringlinge aus den Feuerlanden|r
    .use 69235 >> |cRXP_WARN_Benutzt die|r |T134298:0|t[Zerrender Biss of the Wolf] |cRXP_WARN_auf ihren Leichen|r
    .complete 29164,1 -- Howl atop an invader's corpse (10)
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29147
    #completewith next
    .cast 97241 >> |cRXP_WARN_Benutzt die|r |T135992:0|t[Federkiel der Vogelkönigin] |cRXP_WARN_um euch in|r Schwingen von Aviana|cRXP_FRIENDLY_ zu verwandeln|r
    .use 69234
step
    .isOnQuest 29147
    #loop
    .goto 198,14.90,45.11,80,0
    .goto 198,10.13,36.76,80,0
    .goto 198,13.24,33.64,80,0
    .goto 198,18.65,40.28,80,0
    .use 69234 >> |cRXP_WARN_Benutzt|r |T132172:0|t[Schwarmruf] (1) |cRXP_WARN_Fähigkeit bei|cRXP_FRIENDLY_ |rAlpine Songbirds|cRXP_FRIENDLY_, |rForest Owls|r und |cRXP_FRIENDLY_Goldwing Hawks|r
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
    >>Steht vor einem |cRXP_FRIENDLY_Spirit of Malorne|r
    >>|cRXP_WARN_Das sind die Geisterhirsche, die wild herumrennen|r
    .complete 29125,1 --Spirit of Malorne captured (3)
step
    #completewith next
    .goto 198,14.310,33.203
    .vehicle >> Klickt |cRXP_PICK_Kletterbaum|r an, um ihn zu erklimmen
    .target Climbing Tree
    .isOnQuest 29161
step
    .goto 198,14.310,33.203
    >>Klickt |cRXP_FRIENDLY_Hyjalbärenjunges|r, während ihr auf dem Baum seid
    .collect 54439,1
    .target Hyjal Bear Cub
    .isOnQuest 29161
step
    .isOnQuest 29161
    .goto 198,14.310,33.203
    *|cRXP_WARN_Wirkt|r |T450907:0|t[Hinaufklettern] (1) |cRXP_WARN_bis ihr an der Spitze seid, zielt mit dem Pfeil auf das Trampolin neben |cRXP_FRIENDLY_Bewahrer Taldros|r, dann wirkt|r |T446127:0|t[Wirf-Den-Bären] (4)|cRXP_WARN_. Wirkt|r |T450905:0|t[Hinunterklettern] (2) |cRXP_WARN_und wiederholt den Vorgang|r
    .complete 29161,1 --6/6 Hyjal Bear Cubs Rescued
step
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Wirkt|r |T450905:0|t[Hinunterklettern] (2) |cRXP_WARN_um den Baum zu verlassen|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Wirkt|r |T450905:0|t[Hinunterklettern] (2) |cRXP_WARN_um den Baum zu verlassen|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Wirkt|r |T450905:0|t[Hinunterklettern] (2) |cRXP_WARN_um den Baum zu verlassen|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Wirkt|r |T450905:0|t[Hinunterklettern] (2) |cRXP_WARN_um den Baum zu verlassen|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Wirkt|r |T450905:0|t[Hinunterklettern] (2) |cRXP_WARN_um den Baum zu verlassen|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Wirkt|r |T450905:0|t[Hinunterklettern] (2) |cRXP_WARN_um den Baum zu verlassen|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Wirkt|r |T450905:0|t[Hinunterklettern] (2) |cRXP_WARN_um den Baum zu verlassen|r
step
    .isOnQuest 29161
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .turnin 29161 >>Abgeben Die Bären da in den Bäumen
    .accept 29162 >>Akzeptiert die Quest Segen der Natur
step
    .isQuestTurnedIn 29161
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .accept 29162 >>Akzeptiert die Quest Segen der Natur
step
    .isOnQuest 29125
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .turnin 29125 >>Gebt die Quest Zwischen den Bäumen ab
    .accept 29126 >>Akzeptiert die Quest Die Macht von Malorne
step
    .isQuestTurnedIn 29125
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .accept 29126 >>Akzeptiert die Quest Die Macht von Malorne
step
    .isOnQuest 29147
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .turnin 29147 >>Gebt die Quest Schwarmruf ab
    .accept 29148 >>Akzeptiert die Quest Flammende Schwingen
step
    .isQuestTurnedIn 29147
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .accept 29148 >>Akzeptiert die Quest Flammende Schwingen
step
    .isOnQuest 29164
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .turnin 29164 >>Gebt die Quest Gut heulen will geübt sein ab
    .accept 29165 >>Akzeptiert die Quest Der Ruf des Rudels
step
    .isQuestTurnedIn 29164
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .accept 29165 >>Akzeptiert die Quest Der Ruf des Rudels
step
    .isOnQuest 29101
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .turnin 29101 >>Gebt die Quest Ab ins Wasser! ab
    .accept 29122 >>Akzeptiert die Quest Echos von Nemesis
step
    .isQuestTurnedIn 29101
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .accept 29122 >>Akzeptiert die Quest Echos von Nemesis
step
    #completewith next
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .cast 97517 >> |cRXP_WARN_Benutzt die|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_um|r Pyrachnis|cRXP_ENEMY_ zu beschwören|r
    .use 69232
step
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .use 69232 >> Tötet |cRXP_ENEMY_Pyrachnis|r
    >>|cRXP_WARN_Benutzt den|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_um auch den|r |T136016:0|t[Kochender Giftblitz] |cRXP_WARN_Debuff von euch entfernen, das|cRXP_ENEMY_ Pyrachnis|r wirkt|r
    .complete 29162,1 --|Pyrachnis slain: 1/1
    .mob Pyrachnis
step
    #completewith next
    .isOnQuest 29126
    .goto 198,41.667,56.130
    .cast 97012 >> |cRXP_WARN_Benutzt den|r |T135139:0|t[Stab des Wächters] |cRXP_WARN_beim |cRXP_PICK_Pile of Asche|r um zu beschwören|r |cRXP_ENEMY_Galenges|r
    .use 68997
step
    .goto 198,41.667,56.130
    .isOnQuest 29126
    .use 68997 >> Tötet |cRXP_ENEMY_Galenges|r
    .complete 29126,1 -- Galenges slain (1)
    .mob Galenges
step
    .isOnQuest 29148
    #completewith next
    .goto 198/1,-1500.700,4929.300
    .cast 97324 >> |cRXP_WARN_Benutzt den|r |T135992:0|t[Federkiel der Vogelkönigin] |cRXP_WARN_beim westlichen Flammenportal um zu beschwören|r |cRXP_ENEMY_Millagazor|r
    .use 69212
step
    .isOnQuest 29148
    .goto 198/1,-1500.700,4929.300
    .use 69212 >> Tötet |cRXP_ENEMY_Millagazor|r
    .complete 29148,1 -- Millagazor slain (1)
    .mob Millagazor
step
    .isOnQuest 29165
    #completewith next
    .goto 198,41.667,56.130
    .cast 97498 >> |cRXP_WARN_Benutzt den|r |T134298:0|t[Zerrender Biss of the Wolf] |cRXP_WARN_um zu beschwören|r |cRXP_ENEMY_Lylagar|r
    .use 69225
step
    .isOnQuest 29165
    .goto 198,41.667,56.130
    .use 69225 >> Tötet |cRXP_ENEMY_Lylagar|r
    .complete 29165,1 -- Lylagar slain (1)
    .mob Lylagar
step
    .isOnQuest 29122
    #completewith next
    .goto 198,24.014,55.803
    .gossip 52425,0 >>Sprecht mit |cRXP_FRIENDLY_Tooga|r um |cRXP_ENEMY_Nemesis|r zu beschwören
    .skipgossip
    .target Tooga
step
    #label KillNemesis
    .isOnQuest 29122
    .goto 198,24.760,55.259
    >>Tötet |cRXP_ENEMY_Nemesis|r
    >>|cRXP_WARN_Steht unter|cRXP_FRIENDLY_ Tooga's|r Schale, um euch vor|r |cRXP_ENEMY_Nemesis'|r |T135830:0|t[Glühender Zorn]|cRXP_WARN_-Kanalisierung zu schützen|r
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
    >>Plündert die |cRXP_LOOT_Blueroot Vines|r auf dem Boden
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
    >>Tötet |cRXP_ENEMY_Eindringlinge aus den Feuerlanden|r
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
    >>Tötet |cRXP_ENEMY_Eindringlinge aus den Feuerlanden|r
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
    >>Tötet |cRXP_ENEMY_Eindringlinge aus den Feuerlanden|r
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
    >>Tötet |cRXP_ENEMY_Eindringlinge aus den Feuerlanden|r
    .complete 29163,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isQuestComplete 29162
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29162 >>Gebt die Quest Segen der Natur ab
step
    .isQuestComplete 29122
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29122 >>Gebt die Quest Echos von Nemesis ab
step
    .isQuestComplete 29126
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29126 >>Gebt die Quest Die Macht von Malorne ab
step
    .isQuestComplete 29165
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29165 >>Gebt die Quest Der Ruf des Rudels ab
step
    .isQuestComplete 29148
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29148 >>Gebt die Quest Flammende Schwingen ab
step
    .isQuestComplete 29166
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29166 >>Gebt die Quest Vorräte für die andere Seite ab
step
    .isQuestComplete 29123
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29123 >>Gebt die Quest Wut gegen die Flammen ab
step
    .isQuestComplete 29149
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29149 >>Gebt die Quest Wut gegen die Flammen ab
step
    .isQuestComplete 29127
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29127 >>Gebt die Quest Wut gegen die Flammen ab
step
    .isQuestComplete 29163
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29163 >>Gebt die Quest Wut gegen die Flammen ab
step
    .goto 198/1,-2080.200,4417.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Arch Druide Hamuul Runentotem|r
    .target Arch Druid Hamuul Runetotem
    .turnin 29199 >>Gebt die Quest Verstärkung rufen ab
    .accept 29200 >>Akzeptiert die Quest Leyara
step
    .goto 198/1,-1214.200,5236.700
    >>Sprecht mit |cRXP_ENEMY_Leyara|r
    .complete 29200,1 --|Find Leyara: 1/1
    .mob Leyara
step
    .goto 198/1,-2082.700,4424.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .turnin 29200 >>Gebt die Quest Leyara ab
step
    .goto 198/1,-2076.300,4420.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Malfurion Sturmgrimm|r
    .target Malfurion Stormrage
    .accept 29201 >>Akzeptiert die Quest Durch die Tore der Hölle
step
    #completewith GatesofHell
    .goto 198,27.484,56.394
    .zone 338 >> Geht durch das Portal in die Feuerlande
step
    >>Tötet die |cRXP_ENEMY_Obsidian Slaglord|r
    .complete 29201,1 --|Secure a foothold in the Firelands: 1/1
    .mob Obsidian Slaglord
step
    #label GatesofHell
    .goto 338,47.151,90.502
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Malfurion Sturmgrimm|r
    .target Malfurion Stormrage
    .turnin 29201 >>Gebt die Quest Durch die Tore der Hölle ab
]])


RXPGuides.RegisterGuide([[
#cata
#version 1
#group Die Geschmolzene Front
#name B_1_TSOM_Start
#next C_1_TSOM_Druids
#displayname |cRXP_FRIENDLY_2.0|r - Die Geschmolzene Front

--Molten Front quests

step
    #completewith WispAway
    .goto 198,27.484,56.394
    .zone 338 >> Geht durch das Portal in die Feuerlande
step
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rayne Feathersong|r
    .daily 29139,29143 >>Akzeptiert eine beliebige tägliche Quest
    .target Rayne Feathersong
step
    .goto 338,45.626,86.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Irontree|r
    .daily 29138 >>Akzeptiert die Quest Brandopfer
    .target Captain Irontree
step
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_General Taldris Mondsturz|r
    .daily 29179 >>Akzeptiert die Quest Feindselige Elemente
    .daily 29304,29141,29142,29137 >> Akzeptiert eine beliebige tägliche Quest
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
    .use 69240 >> |cRXP_WARN_Benutzt den|r |T463860:0|t[Verzauberte Salbe] |cRXP_WARN_auf|r |cRXP_FRIENDLY_Verwundete Hyjal-Verteidiger|r
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
    >>Tötet |cRXP_ENEMY_Charred Vanquishers|r und |cRXP_ENEMY_Charred Soldiers|r
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
    >>Tötet |cRXP_ENEMY_Charhounds|r und |cRXP_ENEMY_Ancient Charhounds|r
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
    >>Tötet |cRXP_ENEMY_Molten Behemoths|r
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
    >>Tötet |cRXP_ENEMY_Druide der Flamme|r
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
    >>Tötet |cRXP_ENEMY_Lava Bursters|r
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
    >>Sammelt |cRXP_PICK_Ash Piles|r vom Boden
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
    >>|cRXP_WARN_Nehmt den|cRXP_FRIENDLY_ Hyjal Irrwisch|r zum Feuerportal auf|r
    >>|cRXP_WARN_Tötet die Mobs, die daraus herauskommen. Sorgt dafür, dass|cRXP_FRIENDLY_ Hyjal Irrwisch|r nicht stirbt!|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_General Taldris Mondsturz|r
    .dailyturnin 29179 >>Gebt die Quest Feindselige Elemente ab
    .target General Taldris Moonfall
step
    .isQuestComplete 29304
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_General Taldris Mondsturz|r
    .dailyturnin 29304 >> Gebt die Quest Die Hunde des Krieges ab
    .target General Taldris Moonfall
step
    .isQuestComplete 29141
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_General Taldris Mondsturz|r
    .dailyturnin 29141 >> Gebt die Quest Desto härter der Fallen ab
    .target General Taldris Moonfall
step
    .isQuestComplete 29142
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_General Taldris Mondsturz|r
    .dailyturnin 29142 >> Gebt die Quest Verräter Zurückkehren ab
    .target General Taldris Moonfall
step
    .isQuestComplete 29137
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_General Taldris Mondsturz|r
    .dailyturnin 29137 >> Gebt die Quest Durchbruch der Verteidigung ab
    .target General Taldris Moonfall
step
    .isQuestComplete 29138
    .goto 338,45.626,86.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Irontree|r
    .dailyturnin 29138 >>Gebt die Quest Brandopfer ab
    .target Captain Irontree
step
    .isQuestComplete 29139
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rayne Feathersong|r
    .dailyturnin 29139 >>Gebt die Quest Aggressives Wachstum ab
    .target Rayne Feathersong
step
    .isQuestComplete 29143
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rayne Feathersong|r
    .dailyturnin 29143 >>Gebt die Quest Fort mit den Irrwischen ab
    .target Rayne Feathersong




--Hyjal quests

step
    #completewith HyjalQuests
    .goto 338,53.026,83.693
    .zone 198 >> Portal nehmen zum Hyjal
step --accepted back at sanctuary of malorne
    .goto 198/1,-2088.800,4452.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Soren Mondsturz|r
    .target Captain Soren Moonfall
    .daily 29128 >>Akzeptiert die Quest Die Beschützer von Hyjal
step
    #loop
    .goto 198,27.108,62.009,5,0
    .goto 198,27.170,62.563,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r oder |cRXP_FRIENDLY_Mylune|r
    .daily 29125,29147,29164,29101,29161 >> Akzeptiert eine beliebige tägliche Quest
    .disablecheckbox
    .questcount <1,29125,29147,29164,29101,29161
    .target Matoclaw
    .target Mylune
step
    #loop
    #label HyjalQuests
    .goto 198,27.527,62.510,5,0
    .goto 198,27.172,62.565,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r oder |cRXP_FRIENDLY_Dorda'en Nightweaver|r
    .daily 29123,29149,29127,29163,29166,29247,29246,29248 >> Akzeptiert eine beliebige tägliche Quest
    .disablecheckbox
    .questcount <1,29123,29149,29127,29163,29166,29247,29246,29248
    .target Matoclaw
    .target Dorda'en Nightweaver
step
    .isOnQuest 29166
    #completewith KillNemesis
    >>Plündert die |cRXP_LOOT_Blueroot Vines|r auf dem Boden
    .complete 29166,1
step
    .isOnQuest 29123
    #completewith KillNemesis
    >>Tötet |cRXP_ENEMY_Eindringlinge aus den Feuerlanden|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #completewith KillNemesis
    >>Tötet |cRXP_ENEMY_Eindringlinge aus den Feuerlanden|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #completewith KillNemesis
    >>Tötet |cRXP_ENEMY_Eindringlinge aus den Feuerlanden|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #completewith KillNemesis
    >>Tötet |cRXP_ENEMY_Eindringlinge aus den Feuerlanden|r
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
    >>Klickt auf |cRXP_FRIENDLY_Abkömmling von Tortolla|r
    >>|cRXP_WARN_Zielt auf das Wasser und wirkt|r |T132219:0|t[Schildkröte kicken] |cRXP_WARN_(1)|r
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
    >>Tötet |cRXP_ENEMY_Eindringlinge aus den Feuerlanden|r
    .use 69235 >> |cRXP_WARN_Benutzt die|r |T134298:0|t[Zerrender Biss of the Wolf] |cRXP_WARN_auf ihren Leichen|r
    .complete 29164,1 -- Howl atop an invader's corpse (10)
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29147
    #completewith next
    .cast 97241 >> |cRXP_WARN_Benutzt die|r |T135992:0|t[Federkiel der Vogelkönigin] |cRXP_WARN_um euch in|r Schwingen von Aviana|cRXP_FRIENDLY_ zu verwandeln|r
    .use 69234
step
    .isOnQuest 29147
    #loop
    .goto 198,14.90,45.11,80,0
    .goto 198,10.13,36.76,80,0
    .goto 198,13.24,33.64,80,0
    .goto 198,18.65,40.28,80,0
    .use 69234 >> |cRXP_WARN_Benutzt|r |T132172:0|t[Schwarmruf] (1) |cRXP_WARN_Fähigkeit bei|cRXP_FRIENDLY_ |rAlpine Songbirds|cRXP_FRIENDLY_, |rForest Owls|r und |cRXP_FRIENDLY_Goldwing Hawks|r
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
    >>Steht vor einem |cRXP_FRIENDLY_Spirit of Malorne|r
    >>|cRXP_WARN_Das sind die Geisterhirsche, die wild herumrennen|r
    .complete 29125,1 --Spirit of Malorne captured (3)
step
    #completewith next
    .goto 198,14.310,33.203
    .vehicle >> Klickt |cRXP_PICK_Kletterbaum|r an, um ihn zu erklimmen
    .target Climbing Tree
    .isOnQuest 29161
step
    .goto 198,14.310,33.203
    >>Klickt |cRXP_FRIENDLY_Hyjalbärenjunges|r, während ihr auf dem Baum seid
    .collect 54439,1
    .target Hyjal Bear Cub
    .isOnQuest 29161
step
    .isOnQuest 29161
    .goto 198,14.310,33.203
    *|cRXP_WARN_Wirkt|r |T450907:0|t[Hinaufklettern] (1) |cRXP_WARN_bis ihr an der Spitze seid, zielt mit dem Pfeil auf das Trampolin neben |cRXP_FRIENDLY_Bewahrer Taldros|r, dann wirkt|r |T446127:0|t[Wirf-Den-Bären] (4)|cRXP_WARN_. Wirkt|r |T450905:0|t[Hinunterklettern] (2) |cRXP_WARN_und wiederholt den Vorgang|r
    .complete 29161,1 --6/6 Hyjal Bear Cubs Rescued
step
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Wirkt|r |T450905:0|t[Hinunterklettern] (2) |cRXP_WARN_um den Baum zu verlassen|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Wirkt|r |T450905:0|t[Hinunterklettern] (2) |cRXP_WARN_um den Baum zu verlassen|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Wirkt|r |T450905:0|t[Hinunterklettern] (2) |cRXP_WARN_um den Baum zu verlassen|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Wirkt|r |T450905:0|t[Hinunterklettern] (2) |cRXP_WARN_um den Baum zu verlassen|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Wirkt|r |T450905:0|t[Hinunterklettern] (2) |cRXP_WARN_um den Baum zu verlassen|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Wirkt|r |T450905:0|t[Hinunterklettern] (2) |cRXP_WARN_um den Baum zu verlassen|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Wirkt|r |T450905:0|t[Hinunterklettern] (2) |cRXP_WARN_um den Baum zu verlassen|r
step
    .isOnQuest 29161
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .turnin 29161 >>Abgeben Die Bären da in den Bäumen
    .accept 29162 >>Akzeptiert die Quest Segen der Natur
step
    .isQuestTurnedIn 29161
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .accept 29162 >>Akzeptiert die Quest Segen der Natur
step
    .isOnQuest 29125
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .turnin 29125 >>Gebt die Quest Zwischen den Bäumen ab
    .accept 29126 >>Akzeptiert die Quest Die Macht von Malorne
step
    .isQuestTurnedIn 29125
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .accept 29126 >>Akzeptiert die Quest Die Macht von Malorne
step
    .isOnQuest 29147
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .turnin 29147 >>Gebt die Quest Schwarmruf ab
    .accept 29148 >>Akzeptiert die Quest Flammende Schwingen
step
    .isQuestTurnedIn 29147
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .accept 29148 >>Akzeptiert die Quest Flammende Schwingen
step
    .isOnQuest 29164
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .turnin 29164 >>Gebt die Quest Gut heulen will geübt sein ab
    .accept 29165 >>Akzeptiert die Quest Der Ruf des Rudels
step
    .isQuestTurnedIn 29164
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .accept 29165 >>Akzeptiert die Quest Der Ruf des Rudels
step
    .isOnQuest 29101
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .turnin 29101 >>Gebt die Quest Ab ins Wasser! ab
    .accept 29122 >>Akzeptiert die Quest Echos von Nemesis
step
    .isQuestTurnedIn 29101
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .accept 29122 >>Akzeptiert die Quest Echos von Nemesis
step
    #completewith next
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .cast 97517 >> |cRXP_WARN_Benutzt die|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_um|r Pyrachnis|cRXP_ENEMY_ zu beschwören|r
    .use 69232
step
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .use 69232 >> Tötet |cRXP_ENEMY_Pyrachnis|r
    >>|cRXP_WARN_Benutzt den|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_um auch den|r |T136016:0|t[Kochender Giftblitz] |cRXP_WARN_Debuff von euch entfernen, das|cRXP_ENEMY_ Pyrachnis|r wirkt|r
    .complete 29162,1 --|Pyrachnis slain: 1/1
    .mob Pyrachnis
step
    #completewith next
    .isOnQuest 29126
    .goto 198,41.667,56.130
    .cast 97012 >> |cRXP_WARN_Benutzt den|r |T135139:0|t[Stab des Wächters] |cRXP_WARN_beim |cRXP_PICK_Pile of Asche|r um zu beschwören|r |cRXP_ENEMY_Galenges|r
    .use 68997
step
    .goto 198,41.667,56.130
    .isOnQuest 29126
    .use 68997 >> Tötet |cRXP_ENEMY_Galenges|r
    .complete 29126,1 -- Galenges slain (1)
    .mob Galenges
step
    .isOnQuest 29148
    #completewith next
    .goto 198/1,-1500.700,4929.300
    .cast 97324 >> |cRXP_WARN_Benutzt den|r |T135992:0|t[Federkiel der Vogelkönigin] |cRXP_WARN_beim westlichen Flammenportal um zu beschwören|r |cRXP_ENEMY_Millagazor|r
    .use 69212
step
    .isOnQuest 29148
    .goto 198/1,-1500.700,4929.300
    .use 69212 >> Tötet |cRXP_ENEMY_Millagazor|r
    .complete 29148,1 -- Millagazor slain (1)
    .mob Millagazor
step
    .isOnQuest 29165
    #completewith next
    .goto 198,41.667,56.130
    .cast 97498 >> |cRXP_WARN_Benutzt den|r |T134298:0|t[Zerrender Biss of the Wolf] |cRXP_WARN_um zu beschwören|r |cRXP_ENEMY_Lylagar|r
    .use 69225
step
    .isOnQuest 29165
    .goto 198,41.667,56.130
    .use 69225 >> Tötet |cRXP_ENEMY_Lylagar|r
    .complete 29165,1 -- Lylagar slain (1)
    .mob Lylagar
step
    .isOnQuest 29122
    #completewith next
    .goto 198,24.014,55.803
    .gossip 52425,0 >>Sprecht mit |cRXP_FRIENDLY_Tooga|r um |cRXP_ENEMY_Nemesis|r zu beschwören
    .skipgossip
    .target Tooga
step
    #label KillNemesis
    .isOnQuest 29122
    .goto 198,24.760,55.259
    >>Tötet |cRXP_ENEMY_Nemesis|r
    >>|cRXP_WARN_Steht unter|cRXP_FRIENDLY_ Tooga's|r Schale, um euch vor|r |cRXP_ENEMY_Nemesis'|r |T135830:0|t[Glühender Zorn]|cRXP_WARN_-Kanalisierung zu schützen|r
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
    >>Plündert die |cRXP_LOOT_Blueroot Vines|r auf dem Boden
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
    >>Tötet |cRXP_ENEMY_Eindringlinge aus den Feuerlanden|r
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
    >>Tötet |cRXP_ENEMY_Eindringlinge aus den Feuerlanden|r
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
    >>Tötet |cRXP_ENEMY_Eindringlinge aus den Feuerlanden|r
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
    >>Tötet |cRXP_ENEMY_Eindringlinge aus den Feuerlanden|r
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
    >>Tötet |cRXP_ENEMY_Charred Flamewakers|r. Plündert sie für |cRXP_LOOT_Flamewaker Schuppen|r
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
    >>Tötet |cRXP_ENEMY_Fiery Behemoths|r und |cRXP_ENEMY_Seething Pyrelords|r
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
    >>Tötet |cRXP_ENEMY_Fiery Behemoths|r. Plündert sie für |cRXP_LOOT_Sulfur-Laced Wrappings|r
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
    >>Tötet |cRXP_ENEMY_Seething Pyrelords|r. Plündert sie für |cRXP_LOOT_Flame-Wreathed Herzen|r
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
    >>Tötet |cRXP_ENEMY_Fiery Behemoths|r und |cRXP_ENEMY_Seething Pyrelords|r
    .complete 29128,1 -- Invader slain at Sethria's Roost (6)
    .mob Fiery Behemoth
    .mob Seething Pyrelord
step
    .isQuestComplete 29162
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29162 >>Gebt die Quest Segen der Natur ab
step
    .isQuestComplete 29122
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29122 >>Gebt die Quest Echos von Nemesis ab
step
    .isQuestComplete 29126
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29126 >>Gebt die Quest Die Macht von Malorne ab
step
    .isQuestComplete 29165
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29165 >>Gebt die Quest Der Ruf des Rudels ab
step
    .isQuestComplete 29148
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29148 >>Gebt die Quest Flammende Schwingen ab
step
    .isQuestComplete 29166
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29166 >>Gebt die Quest Vorräte für die andere Seite ab
step
    .isQuestComplete 29123
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29123 >>Gebt die Quest Wut gegen die Flammen ab
step
    .isQuestComplete 29149
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29149 >>Gebt die Quest Wut gegen die Flammen ab
step
    .isQuestComplete 29127
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29127 >>Gebt die Quest Wut gegen die Flammen ab
step
    .isQuestComplete 29163
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29163 >>Gebt die Quest Wut gegen die Flammen ab
step
    .isQuestComplete 29246
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dorda'en Nightweaver|r
    .target Dorda'en Nightweaver
    .dailyturnin 29246 >>Gebt die Quest Linderung des Schmerzes ab
step
    .isQuestComplete 29247
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dorda'en Nightweaver|r
    .target Dorda'en Nightweaver
    .dailyturnin 29247 >>Gebt die Quest Versorgung der Wunden ab
step
    .isQuestComplete 29248
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dorda'en Nightweaver|r
    .target Dorda'en Nightweaver
    .dailyturnin 29248 >>Gebt die Quest Druckablassung ab
step
    #completewith next
    .isQuestComplete 29128
    .goto 198,27.484,56.394
    .zone 338 >> Geht durch das Portal in die Feuerlande
step
    .isQuestComplete 29128
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_General Taldris Mondsturz|r
    .dailyturnin 29128 >>Gebt die Quest Die Beschützer von Hyjal ab
    .target General Taldris Moonfall
step
    #completewith FinishDruids
    .goto 338,47.017,91.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Malfurion Sturmgrimm|r
    .accept 29181 >>Akzeptiert die Quest Druiden der Kralle
    --.accept 29214 >>Accept The Shadow Wardens
    .target Malfurion Stormrage
step
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >> Portal nehmen zum Hyjal
step
    .isQuestComplete 29181
    .goto 198,47.017,91.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Skylord Omnuron|r
    .turnin 29181 >>Gebt die Quest Druiden der Kralle ab
    .target Skylord Omnuron
step
    #label FinishDruids
    .isQuestAvailable 29181
    +|cRXP_WARN_Ihr habt alle verfügbaren täglichen Quests für heute abgeschlossen. Ladet diesen Guide morgen erneut (|r|cRXP_FRIENDLY_2.0|r - The Geschmolzene Front|cRXP_WARN_) um die täglichen Quests weiterhin abzuschließen, bis ihr genug|r |T513195:0|t[Marks of the Welt Baum]

-- Beginning of Druids questline if turned in
step
    .isQuestTurnedIn 29181
    .goto 198/1,-2740.000,4902.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Isara Riverstride|r
    .target Isara Riverstride
    .accept 29182 >>Akzeptiert die Quest Der Flug der Sturmkrähen
step
    #completewith next
    .isOnQuest 29182
    .goto 198,27.484,56.394
    .zone 338 >> Geht durch das Portal in die Feuerlande
step
    .isQuestComplete 29181
    .goto 338,43.028,80.598
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Skylord Omnuron|r
    .turnin 29182 >>Gebt die Quest Der Flug der Sturmkrähen ab
    .target Skylord Omnuron
step
    .isQuestTurnedIn 29181
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_General Taldris Mondsturz|r
    .daily 29206 >>Akzeptiert die Quest Ins Feuer
    .target General Taldris Moonfall
step
    .isOnQuest 29206
    .goto 338,43.15,80.14,10,0
    .goto 338,33.83,67.40
    >>Eskortet und beschützt |cRXP_FRIENDLY_Windcaller|r durch das Feuer
    >>Tötet |cRXP_ENEMY_Pyrolord|r am Ende
    >>Sprecht mit |cRXP_FRIENDLY_Himmelsfürst Omnuron|r kurz vor den Feuern, falls kein |cRXP_FRIENDLY_Windcaller|r vorhanden ist
    .complete 29206,1 -- Druid of the Talon Windcaller protected 1/1
    .mob Flamewaker Assassin
    .mob Pyrelord
    .target Nordrala
    .skipgossip
step
    #completewith next
    .subzone 5746 >> |cRXP_WARN_Fallt herunter in das große Loch. Begebt euch zu|r |cRXP_FRIENDLY_Thisalee Krähe|r
step
    .isQuestTurnedIn 29181
    .goto 338,42.541,59.713
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thisalee Krähe|r
    .dailyturnin 29206 >>Gebt die Quest Ins Feuer ab
    .daily 29264 >>Akzeptiert die Quest Flammenwacher des geschmolzenen Flusses
    .daily 29265 >>Akzeptiert die Quest Feuer Blumen
    .target Thisalee Crow
step -- 29264 Flamewakers of the Molten Flow
    .isOnQuest 29264
    #completewith AnrenEscort
    >>Tötet |cRXP_ENEMY_Flamewaker Sentinels|r, |cRXP_ENEMY_Flamewaker Hunters|r und |cRXP_ENEMY_Flamewaker Schamane|r
    .complete 29264,1 -- Flamewaker slain (8)
    .mob Flamewaker Sentinel
    .mob Flamewaker Shaman
    .mob Flamewaker Hunter
step -- 29265 Fire Flowers
    .isOnQuest 29265
    #completewith AnrenEscort
    >>Sammelt |cRXP_LOOT_Luciferns|r vom Boden
    .complete 29265,1 -- Lucifern (5)
step
    .isQuestTurnedIn 29181
    .goto 338,51.897,30.965
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Anren Shadowseeker|r
    .accept 29272 >>Akzeptiert die Quest Brauche... Wasser... Dringend...
    .target Anren Shadowseeker
step
    .isOnQuest 29272
    .goto 338,51.897,30.965
    .gossip 53233 >> Sprecht mit |cRXP_FRIENDLY_Anren Schattensucher|r erneut, um die Eskorte zu beginnen
    .skipgossip
    .target Anren Shadowseeker
step
    #label AnrenEscort
    .isOnQuest 29272
    .goto 338,42.59,59.85
    >>Eskortet |cRXP_FRIENDLY_Anren Schattensucher|r
    >>|cRXP_WARN_Folgt ihm dicht und springt auf die|r |T514278:0|t[Thermalquelle] |cRXP_WARN_neben ihm|r
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
    >>Tötet |cRXP_ENEMY_Flamewaker Sentinels|r, |cRXP_ENEMY_Flamewaker Hunters|r und |cRXP_ENEMY_Flamewaker Schamane|r
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
    >>Sammelt |cRXP_LOOT_Luciferns|r vom Boden
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thisalee Krähe|r
    .dailyturnin 29264 >>Gebt die Quest Flamewakers of the Geschmolzen Fluss ab
    .target Thisalee Crow
step
    #label ExitUnderground
    #completewith DruidDailies
    .goto 338,33.08,67.62
    .aura 98833 >> |cRXP_WARN_Geht zur großen Öffnung zurück, in der ihr hinuntergefallen seid. Steht im|r |T514278:0|t[Thermalauftrieb]|cRXP_WARN_, dann springt, um zur Geschmolzene Front surface zurückzukehren|r
    .subzoneskip 5746,1
step
    #requires ExitUnderground
    #completewith DruidDailies
    .goto 338,33.08,67.62
    +|cRXP_WARN_Springt, um zur Geschmolzene Front surface zurückzukehren|r
    .subzoneskip 5746,1
step
    .isQuestComplete 29272
    .goto 338,35.983,58.988
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tholo Whitehoof|r
    .turnin 29272 >>Gebt die Quest Brauche... Wasser... Dringend ab
    .target Tholo Whitehoof
step
    .isQuestTurnedIn 29272
    .goto 338,35.860,59.235
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tholo Whitehoof|r oder |cRXP_FRIENDLY_Anren Shadowseeker|r
    .daily 29273,29274 >>Akzeptiert eine beliebige tägliche Quest
    .target Tholo Whitehoof
    .target Anren Shadowseeker
step
    .isQuestComplete 29265
    .goto 338,36.299,56.344
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Choluna|r
    .dailyturnin 29265 >>Gebt die Quest Feuer Blumen ab
    .target Choluna
step
    .isQuestTurnedIn 29181
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Morthis Whisperwing|r
    .daily 29290,29287,29288 >> Akzeptiert eine beliebige tägliche Quest
    .target Morthis Whisperwing
step
    .isQuestTurnedIn 29181
    #label DruidDailies
    .goto 338,34.295,56.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Arthorn Windweise|r
    .daily 29293,29296 >> Akzeptiert eine beliebige tägliche Quest
    .target Arthorn Windsong
step
    #completewith next
    .goto 338,33.808,57.177
    .isOnQuest 29290
    .vehicle >> Setzt euch auf den |cRXP_FRIENDLY_Trainierter Feuerfalke|r
    .target Trained Fire Hawk
step
    .isOnQuest 29290
    >>|cRXP_WARN_Wirkt|r |T135821:0|t[Flammensamen] (1) |cRXP_WARN_und|r |T451164:0|t[Flammenexplosion] (2) |cRXP_WARN_um die|cRXP_ENEMY_ Flamewakers|r, |cRXP_ENEMY_Cinderwebs|r und|r |cRXP_ENEMY_Geschmolzen Lords|r
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
    .subzone 5745 >>|cRXP_WARN_Wirkt|r |T514278:0|t[Rückkehr zum Schmelzofen] (6) |cRXP_WARN_um zurückzukehren|r
    .subzoneskip 5748
step
    #optional
    #sticky
    .isOnQuest 29287,29288,29293,29296
    .subzone 5748 >> |cRXP_WARN_Benutzt die Trittsteine, um auf den Fireplume Kamm zu gelangen. Ihr solltet versuchen, einen Luftschacht am Ende der Trittsteine zu benutzen, da dies den|r |T236222:0|t[Konvaleszenz der Winde] |cRXP_WARN_Buff verleiht, der eure Angriffsgeschwindigkeit und Eile um 100% erhöht und es euch ermöglicht, viel höher und weiter zu springen als Normal|r
step
    #sticky
    #label HowHot
    .isOnQuest 29273
    .use 69806 >>|cRXP_WARN_Benutzt|r |T135155:0|t[Tholos Thermometer] |cRXP_WARN_am Schwarzrauchgipfel|r |cRXP_PICK_Lava Pools|r
    >>|cRXP_WARN_Ihr könnt use|r |T135155:0|t[Tholos Thermometer] |cRXP_WARN_while remaining on von Euch mount|r
    >>|cRXP_WARN_Springt hoch mit den|r |T514278:0|t[Thermalquelle] |cRXP_WARN_, die am Schwarzrauchgipfel zu finden sind, um nach oben zu gelangen|r
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
    >>Sammelt |cRXP_LOOT_Fire Hawk Ei|r vom Gipfel des Schwarzrauchgipfel
    >>|cRXP_WARN_Springt hoch mit den|r |T514278:0|t[Thermalquelle] |cRXP_WARN_, die am Schwarzrauchgipfel zu finden sind, um nach oben zu gelangen|r
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
    >>Klickt auf den |cRXP_FRIENDLY_Verletzten Druiden der Kralle|r
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
    >>Tötet |cRXP_ENEMY_Fire Hawks|r
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
    >>Klickt auf die |cRXP_FRIENDLY_Feuer Falkenküken|r
    >>|cRXP_WARN_Der Gipfel des Schwarzrauchgipfel hat eine große Menge von ihnen|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Morthis Whisperwing|r
    .dailyturnin 29290 >> Gebt die Quest Feuer im Himmel ab
    .target Morthis Whisperwing
step
    .isQuestComplete 29287
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Morthis Whisperwing|r
    .dailyturnin 29287 >> Gebt die Quest Peaked Interest ab
    .target Morthis Whisperwing
step
    .isQuestComplete 29288
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Morthis Whisperwing|r
    .dailyturnin 29288 >> Gebt die Quest Started Young ab
    .target Morthis Whisperwing
step
    .isQuestComplete 29293
    .goto 338,34.295,56.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Arthorn Windweise|r
    .dailyturnin 29293 >> Gebt die Quest Angesengt Schwingen ab
    .target Arthorn Windsong
step
    .isQuestComplete 29296
    .goto 338,34.295,56.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Arthorn Windweise|r
    .dailyturnin 29296 >> Gebt die Quest Territorial Birds ab
    .target Arthorn Windsong
step
    .isQuestComplete 29273
    .goto 338,51.245,85.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Anren Shadowseeker|r
    .dailyturnin 29273 >> Gebt die Quest How Heiß ab
    .target Anren Shadowseeker
step
    .isQuestComplete 29274
    .goto 338,51.555,85.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tholo Whitehoof|r
    .dailyturnin 29274 >> Gebt die Quest Hounds of Shannox ab
    .target Tholo Whitehoof
step
    .goto 338,47.017,91.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Malfurion Sturmgrimm|r
    --.accept 29181 >>Accept Druids of the Talon
    .accept 29214 >>Akzeptiert die Quest Die Schattenwächterinnen
    .target Malfurion Stormrage
step
    .isQuestTurnedIn 29181
    +|cRXP_WARN_Ihr habt alle verfügbaren Tagesquests für heute abgeschlossen. Ladet die (|r|cRXP_ENEMY_2.5|r - The Geschmolzene Front + Druids|cRXP_WARN_) Anleitung morgen neu, um Tagesquests weiterhin abzuschließen, bis Ihr genug habt|r |T513195:0|t[Marks of the Welt Baum]
]])

RXPGuides.RegisterGuide([[
#cata
#version 1
#group Die Geschmolzene Front
#name C_1_TSOM_Druids
--#next D_1_TSOM_Wardens
--Making guide not auto change so user has choice of which daily quests they want to do out of Druids/Wardens
#displayname |cRXP_ENEMY_2.5|r - The Geschmolzene Front + Druids

step
    #optional
    .isQuestAvailable 29181
    +|cRXP_WARN_Ihr müsst zuerst 150|r |T513195:0|t[Marks of the Welt Baum] |cRXP_WARN_sammeln und die Quest [Druiden der Kralle] abgeben, um diese Tagesquests abzuschließen|r
    >>|cRXP_WARN_Macht weiter mit der (|r|cRXP_FRIENDLY_2.0|r - The Geschmolzene Front|cRXP_WARN_) Anleitung, bis Ihr genug habt|r |T513195:0|t[Marks of the Welt Baum]
    .goto 198,47.017,91.361
    .turnin 29181 >>Gebt die Quest Druiden der Kralle ab
    .target Skylord Omnuron
step
    #optional
    #completewith HyjalQuests
	.zone 85 >> Reist nach Orgrimmar << Horde
	.zone 84 >> Lauf nach Sturmwind << Alliance
	.zoneskip 198
    .zoneskip 338
step
    #optional
    #completewith HyjalQuests
    .goto 85,51.12,38.26 << Horde
    .goto 84,76.199,18.690 << Alliance
    .zone 198 >>Nehmt das Portal nach Hyjal
    .zoneskip 338
step
    #optional
    #completewith HyjalQuests
    .goto 338,53.026,83.693
    .zone 198 >> Portal nehmen zum Hyjal
    .zoneskip 338,1
step --accepted back at sanctuary of malorne
    .goto 198/1,-2088.800,4452.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Soren Mondsturz|r
    .target Captain Soren Moonfall
    .daily 29128 >>Akzeptiert die Quest Die Beschützer von Hyjal
step
    #loop
    .goto 198,27.108,62.009,5,0
    .goto 198,27.170,62.563,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r oder |cRXP_FRIENDLY_Mylune|r
    .daily 29125,29147,29164,29101,29161 >> Akzeptiert eine beliebige tägliche Quest
    .disablecheckbox
    .questcount <1,29125,29147,29164,29101,29161
    .target Matoclaw
    .target Mylune
step
    #loop
    #label HyjalQuests
    .goto 198,27.527,62.510,5,0
    .goto 198,27.172,62.565,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r oder |cRXP_FRIENDLY_Dorda'en Nightweaver|r
    .daily 29123,29149,29127,29163,29166,29247,29246,29248 >> Akzeptiert eine beliebige tägliche Quest
    .disablecheckbox
    .questcount <1,29123,29149,29127,29163,29166,29247,29246,29248
    .target Matoclaw
    .target Dorda'en Nightweaver
step
    .isOnQuest 29166
    #completewith KillNemesis
    >>Plündert die |cRXP_LOOT_Blueroot Vines|r auf dem Boden
    .complete 29166,1
step
    .isOnQuest 29123
    #completewith KillNemesis
    >>Tötet |cRXP_ENEMY_Eindringlinge aus den Feuerlanden|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #completewith KillNemesis
    >>Tötet |cRXP_ENEMY_Eindringlinge aus den Feuerlanden|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #completewith KillNemesis
    >>Tötet |cRXP_ENEMY_Eindringlinge aus den Feuerlanden|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #completewith KillNemesis
    >>Tötet |cRXP_ENEMY_Eindringlinge aus den Feuerlanden|r
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
    >>Klickt auf |cRXP_FRIENDLY_Abkömmling von Tortolla|r
    >>|cRXP_WARN_Zielt auf das Wasser und wirkt|r |T132219:0|t[Schildkröte kicken] |cRXP_WARN_(1)|r
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
    >>Tötet |cRXP_ENEMY_Eindringlinge aus den Feuerlanden|r
    .use 69235 >> |cRXP_WARN_Benutzt die|r |T134298:0|t[Zerrender Biss of the Wolf] |cRXP_WARN_auf ihren Leichen|r
    .complete 29164,1 -- Howl atop an invader's corpse (10)
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29147
    #completewith next
    .cast 97241 >> |cRXP_WARN_Benutzt die|r |T135992:0|t[Federkiel der Vogelkönigin] |cRXP_WARN_um euch in|r Schwingen von Aviana|cRXP_FRIENDLY_ zu verwandeln|r
    .use 69234
step
    .isOnQuest 29147
    #loop
    .goto 198,14.90,45.11,80,0
    .goto 198,10.13,36.76,80,0
    .goto 198,13.24,33.64,80,0
    .goto 198,18.65,40.28,80,0
    .use 69234 >> |cRXP_WARN_Benutzt|r |T132172:0|t[Schwarmruf] (1) |cRXP_WARN_Fähigkeit bei|cRXP_FRIENDLY_ |rAlpine Songbirds|cRXP_FRIENDLY_, |rForest Owls|r und |cRXP_FRIENDLY_Goldwing Hawks|r
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
    >>Steht vor einem |cRXP_FRIENDLY_Spirit of Malorne|r
    >>|cRXP_WARN_Das sind die Geisterhirsche, die wild herumrennen|r
    .complete 29125,1 --Spirit of Malorne captured (3)
step
    #completewith next
    .goto 198,14.310,33.203
    .vehicle >> Klickt |cRXP_PICK_Kletterbaum|r an, um ihn zu erklimmen
    .target Climbing Tree
    .isOnQuest 29161
step
    .goto 198,14.310,33.203
    >>Klickt |cRXP_FRIENDLY_Hyjalbärenjunges|r, während ihr auf dem Baum seid
    .collect 54439,1
    .target Hyjal Bear Cub
    .isOnQuest 29161
step
    .isOnQuest 29161
    .goto 198,14.310,33.203
    *|cRXP_WARN_Wirkt|r |T450907:0|t[Hinaufklettern] (1) |cRXP_WARN_bis ihr an der Spitze seid, zielt mit dem Pfeil auf das Trampolin neben |cRXP_FRIENDLY_Bewahrer Taldros|r, dann wirkt|r |T446127:0|t[Wirf-Den-Bären] (4)|cRXP_WARN_. Wirkt|r |T450905:0|t[Hinunterklettern] (2) |cRXP_WARN_und wiederholt den Vorgang|r
    .complete 29161,1 --6/6 Hyjal Bear Cubs Rescued
step
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Wirkt|r |T450905:0|t[Hinunterklettern] (2) |cRXP_WARN_um den Baum zu verlassen|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Wirkt|r |T450905:0|t[Hinunterklettern] (2) |cRXP_WARN_um den Baum zu verlassen|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Wirkt|r |T450905:0|t[Hinunterklettern] (2) |cRXP_WARN_um den Baum zu verlassen|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Wirkt|r |T450905:0|t[Hinunterklettern] (2) |cRXP_WARN_um den Baum zu verlassen|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Wirkt|r |T450905:0|t[Hinunterklettern] (2) |cRXP_WARN_um den Baum zu verlassen|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Wirkt|r |T450905:0|t[Hinunterklettern] (2) |cRXP_WARN_um den Baum zu verlassen|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Wirkt|r |T450905:0|t[Hinunterklettern] (2) |cRXP_WARN_um den Baum zu verlassen|r
step
    .isOnQuest 29161
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .turnin 29161 >>Abgeben Die Bären da in den Bäumen
    .accept 29162 >>Akzeptiert die Quest Segen der Natur
step
    .isQuestTurnedIn 29161
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .accept 29162 >>Akzeptiert die Quest Segen der Natur
step
    .isOnQuest 29125
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .turnin 29125 >>Gebt die Quest Zwischen den Bäumen ab
    .accept 29126 >>Akzeptiert die Quest Die Macht von Malorne
step
    .isQuestTurnedIn 29125
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .accept 29126 >>Akzeptiert die Quest Die Macht von Malorne
step
    .isOnQuest 29147
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .turnin 29147 >>Gebt die Quest Schwarmruf ab
    .accept 29148 >>Akzeptiert die Quest Flammende Schwingen
step
    .isQuestTurnedIn 29147
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .accept 29148 >>Akzeptiert die Quest Flammende Schwingen
step
    .isOnQuest 29164
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .turnin 29164 >>Gebt die Quest Gut heulen will geübt sein ab
    .accept 29165 >>Akzeptiert die Quest Der Ruf des Rudels
step
    .isQuestTurnedIn 29164
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .accept 29165 >>Akzeptiert die Quest Der Ruf des Rudels
step
    .isOnQuest 29101
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .turnin 29101 >>Gebt die Quest Ab ins Wasser! ab
    .accept 29122 >>Akzeptiert die Quest Echos von Nemesis
step
    .isQuestTurnedIn 29101
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .accept 29122 >>Akzeptiert die Quest Echos von Nemesis
step
    #completewith next
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .cast 97517 >> |cRXP_WARN_Benutzt die|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_um|r Pyrachnis|cRXP_ENEMY_ zu beschwören|r
    .use 69232
step
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .use 69232 >> Tötet |cRXP_ENEMY_Pyrachnis|r
    >>|cRXP_WARN_Benutzt den|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_um auch den|r |T136016:0|t[Kochender Giftblitz] |cRXP_WARN_Debuff von euch entfernen, das|cRXP_ENEMY_ Pyrachnis|r wirkt|r
    .complete 29162,1 --|Pyrachnis slain: 1/1
    .mob Pyrachnis
step
    #completewith next
    .isOnQuest 29126
    .goto 198,41.667,56.130
    .cast 97012 >> |cRXP_WARN_Benutzt den|r |T135139:0|t[Stab des Wächters] |cRXP_WARN_beim |cRXP_PICK_Pile of Asche|r um zu beschwören|r |cRXP_ENEMY_Galenges|r
    .use 68997
step
    .goto 198,41.667,56.130
    .isOnQuest 29126
    .use 68997 >> Tötet |cRXP_ENEMY_Galenges|r
    .complete 29126,1 -- Galenges slain (1)
    .mob Galenges
step
    .isOnQuest 29148
    #completewith next
    .goto 198/1,-1500.700,4929.300
    .cast 97324 >> |cRXP_WARN_Benutzt den|r |T135992:0|t[Federkiel der Vogelkönigin] |cRXP_WARN_beim westlichen Flammenportal um zu beschwören|r |cRXP_ENEMY_Millagazor|r
    .use 69212
step
    .isOnQuest 29148
    .goto 198/1,-1500.700,4929.300
    .use 69212 >> Tötet |cRXP_ENEMY_Millagazor|r
    .complete 29148,1 -- Millagazor slain (1)
    .mob Millagazor
step
    .isOnQuest 29165
    #completewith next
    .goto 198,41.667,56.130
    .cast 97498 >> |cRXP_WARN_Benutzt den|r |T134298:0|t[Zerrender Biss of the Wolf] |cRXP_WARN_um zu beschwören|r |cRXP_ENEMY_Lylagar|r
    .use 69225
step
    .isOnQuest 29165
    .goto 198,41.667,56.130
    .use 69225 >> Tötet |cRXP_ENEMY_Lylagar|r
    .complete 29165,1 -- Lylagar slain (1)
    .mob Lylagar
step
    .isOnQuest 29122
    #completewith next
    .goto 198,24.014,55.803
    .gossip 52425,0 >>Sprecht mit |cRXP_FRIENDLY_Tooga|r um |cRXP_ENEMY_Nemesis|r zu beschwören
    .skipgossip
    .target Tooga
step
    #label KillNemesis
    .isOnQuest 29122
    .goto 198,24.760,55.259
    >>Tötet |cRXP_ENEMY_Nemesis|r
    >>|cRXP_WARN_Steht unter|cRXP_FRIENDLY_ Tooga's|r Schale, um euch vor|r |cRXP_ENEMY_Nemesis'|r |T135830:0|t[Glühender Zorn]|cRXP_WARN_-Kanalisierung zu schützen|r
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
    >>Plündert die |cRXP_LOOT_Blueroot Vines|r auf dem Boden
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
    >>Tötet |cRXP_ENEMY_Eindringlinge aus den Feuerlanden|r
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
    >>Tötet |cRXP_ENEMY_Eindringlinge aus den Feuerlanden|r
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
    >>Tötet |cRXP_ENEMY_Eindringlinge aus den Feuerlanden|r
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
    >>Tötet |cRXP_ENEMY_Eindringlinge aus den Feuerlanden|r
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
    >>Tötet |cRXP_ENEMY_Charred Flamewakers|r. Plündert sie für |cRXP_LOOT_Flamewaker Schuppen|r
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
    >>Tötet |cRXP_ENEMY_Fiery Behemoths|r und |cRXP_ENEMY_Seething Pyrelords|r
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
    >>Tötet |cRXP_ENEMY_Fiery Behemoths|r. Plündert sie für |cRXP_LOOT_Sulfur-Laced Wrappings|r
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
    >>Tötet |cRXP_ENEMY_Seething Pyrelords|r. Plündert sie für |cRXP_LOOT_Flame-Wreathed Herzen|r
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
    >>Tötet |cRXP_ENEMY_Fiery Behemoths|r und |cRXP_ENEMY_Seething Pyrelords|r
    .complete 29128,1 -- Invader slain at Sethria's Roost (6)
    .mob Fiery Behemoth
    .mob Seething Pyrelord
step
    .isQuestComplete 29162
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29162 >>Gebt die Quest Segen der Natur ab
step
    .isQuestComplete 29122
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29122 >>Gebt die Quest Echos von Nemesis ab
step
    .isQuestComplete 29126
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29126 >>Gebt die Quest Die Macht von Malorne ab
step
    .isQuestComplete 29165
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29165 >>Gebt die Quest Der Ruf des Rudels ab
step
    .isQuestComplete 29148
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29148 >>Gebt die Quest Flammende Schwingen ab
step
    .isQuestComplete 29166
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29166 >>Gebt die Quest Vorräte für die andere Seite ab
step
    .isQuestComplete 29123
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29123 >>Gebt die Quest Wut gegen die Flammen ab
step
    .isQuestComplete 29149
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29149 >>Gebt die Quest Wut gegen die Flammen ab
step
    .isQuestComplete 29127
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29127 >>Gebt die Quest Wut gegen die Flammen ab
step
    .isQuestComplete 29163
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29163 >>Gebt die Quest Wut gegen die Flammen ab
step
    .isQuestComplete 29246
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dorda'en Nightweaver|r
    .target Dorda'en Nightweaver
    .dailyturnin 29246 >>Gebt die Quest Linderung des Schmerzes ab
step
    .isQuestComplete 29247
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dorda'en Nightweaver|r
    .target Dorda'en Nightweaver
    .dailyturnin 29247 >>Gebt die Quest Versorgung der Wunden ab
step
    .isQuestComplete 29248
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dorda'en Nightweaver|r
    .target Dorda'en Nightweaver
    .dailyturnin 29248 >>Gebt die Quest Druckablassung ab
step
    #completewith RayneFeathersong
    .isQuestComplete 29128
    .goto 198,27.484,56.394
    .zone 338 >> Geht durch das Portal in die Feuerlande
step
    .isQuestTurnedIn 29215 -- If turned in quest to unlock Wardens
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Avrilla|r
    .daily 29255,29257,29299 >>Akzeptiert eine beliebige tägliche Quest
    .target Avrilla
step
    #label RayneFeathersong
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rayne Feathersong|r
    .daily 29139,29143 >>Akzeptiert eine beliebige tägliche Quest
    .target Rayne Feathersong
step
    .isQuestTurnedIn 29282
    .goto 338,46.758,90.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ricket|r
    .daily 29263,29278,29295,29297 >> Akzeptiert eine beliebige tägliche Quest
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn |cRXP_FRIENDLY_Ricket|r heute keine Quest anbietet|r
    .target Ricket
step
    .goto 338,45.626,86.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Irontree|r
    .daily 29138 >>Akzeptiert die Quest Brandopfer
    .target Captain Irontree
step
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_General Taldris Mondsturz|r
    .daily 29179 >>Akzeptiert die Quest Feindselige Elemente
    .daily 29304,29141,29142,29137 >> Akzeptiert eine beliebige tägliche Quest
    .target General Taldris Moonfall
step
    .isQuestComplete 29128
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_General Taldris Mondsturz|r
    .dailyturnin 29128 >>Gebt die Quest Die Beschützer von Hyjal ab
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
    .use 69240 >> |cRXP_WARN_Benutzt den|r |T463860:0|t[Verzauberte Salbe] |cRXP_WARN_auf|r |cRXP_FRIENDLY_Verwundete Hyjal-Verteidiger|r
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
    >>Tötet |cRXP_ENEMY_Charred Soldiers|r und |cRXP_ENEMY_Charred Vanquishers|r. Plündert sie für |cRXP_LOOT_Embergris|r
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
    >>Tötet |cRXP_ENEMY_Charred Vanquishers|r und |cRXP_ENEMY_Charred Soldiers|r
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
    >>Tötet |cRXP_ENEMY_Charhounds|r und |cRXP_ENEMY_Ancient Charhounds|r
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
    >>Tötet |cRXP_ENEMY_Molten Behemoths|r
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
    >>Tötet |cRXP_ENEMY_Druide der Flamme|r
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
    >>Tötet |cRXP_ENEMY_Lava Bursters|r
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
    >>Sammelt |cRXP_PICK_Ash Piles|r vom Boden
    .complete 29139,1 -- Smothervine planted (5)
step -- Steal Magmolias 29257
    .isOnQuest 29257
    #label StealMagmolias
    #sticky
    #loop
    .goto 338,47.7,59.6,45,0
    .goto 338,41.5,43.6,45,0
    .goto 338,54.5,45.5,45,0
    >>Plündert |cRXP_LOOT_Magmolia|r in den kleinen Lavabecken
    >>|cRXP_WARN_Falls ein Lavabohrer nach dem Plündern eines erscheint, tötet es und plündert es für|r |cRXP_LOOT_Magmolia|r
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
    >>|cRXP_WARN_Take von Euch |cRXP_FRIENDLY_Crimson Peitscher|r und fight|r |cRXP_ENEMY_Emberspit Scorpions|r << !Hunter
    >>|cRXP_WARN_Werft|r |T135834:0|t[Eiskältefalle] |cRXP_WARN_auf einen |cRXP_ENEMY_Glutspeiskorpion|r. Es wirkt|r |T135826:0|t[Ember Pools] |cRXP_WARN_kontinuierlich, während euer |cRXP_FRIENDLY_Purpurpeitscher|r sie trinkt, sodass ihr diesen Tagesauftrag mit nur einem|r |cRXP_ENEMY_Glutspeiskorpion|r abschließen könnt << Hunter
    >>|cRXP_WARN_The |cRXP_ENEMY_Emberspit Scorpions|r will wirkt|r |T135826:0|t[Glutlaches] |cRXP_WARN_which von Euch |cRXP_FRIENDLY_Crimson Peitscher|r will drink|r
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
    >>Klickt |cRXP_PICK_Lava Blasen|r in den Lavabecken, um einen |cRXP_ENEMY_Unterirdischen Magmawurm|r hervorzurufen
    .use 69759 >>|cRXP_WARN_Wenn die Warnmeldung erscheint: "Der Wurm wird gleich zubeißen! Legt die Bombe jetzt ab!" benutzt|r |T133710:0|t[Die bittere Pille]
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
    >>Klickt |cRXP_PICK_Magnetic Stones|r, dann plündert die |cRXP_LOOT_Obsidium-Meteoriten|r, welche herunterfallen
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
    >>|cRXP_WARN_Nehmt den|cRXP_FRIENDLY_ Hyjal Irrwisch|r zum Feuerportal auf|r
    >>|cRXP_WARN_Tötet die Mobs, die daraus herauskommen. Sorgt dafür, dass|cRXP_FRIENDLY_ Hyjal Irrwisch|r nicht stirbt!|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29255 >>Gebt die Quest Embergris ab
    .target Avrilla
step
    .isQuestComplete 29257
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29257 >>Gebt die Quest Steal Magmolias ab
    .target Avrilla
step
    .isQuestComplete 29299
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29299 >>Gebt die Quest Some Like It Heiß ab
    .target Avrilla
step
    .isQuestComplete 29139
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rayne Feathersong|r
    .dailyturnin 29139 >>Gebt die Quest Aggressives Wachstum ab
    .target Rayne Feathersong
step
    .isQuestComplete 29143
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rayne Feathersong|r
    .dailyturnin 29143 >>Gebt die Quest Fort mit den Irrwischen ab
    .target Rayne Feathersong
step
    .isQuestComplete 29263
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Damek Bloombeard|r
    .dailyturnin 29263 >> Gebt die Quest A Bitter Pill ab
    .target Damek Bloombeard
step
    .isQuestComplete 29278
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Damek Bloombeard|r
    .dailyturnin 29278 >> Gebt die Quest Living Obsidium ab
    .target Damek Bloombeard
step
    .isQuestComplete 29295
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Damek Bloombeard|r
    .dailyturnin 29295 >> Gebt die Quest The Bigger They Are ab
    .target Damek Bloombeard
step
    .isQuestComplete 29297
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Damek Bloombeard|r
    .dailyturnin 29297 >> Gebt die Quest Tschö Tschö Burdy ab
    .target Damek Bloombeard
step
    .isQuestComplete 29179
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_General Taldris Mondsturz|r
    .dailyturnin 29179 >>Gebt die Quest Feindselige Elemente ab
    .target General Taldris Moonfall
step
    .isQuestComplete 29304
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_General Taldris Mondsturz|r
    .dailyturnin 29304 >> Gebt die Quest Die Hunde des Krieges ab
    .target General Taldris Moonfall
step
    .isQuestComplete 29141
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_General Taldris Mondsturz|r
    .dailyturnin 29141 >> Gebt die Quest Desto härter der Fallen ab
    .target General Taldris Moonfall
step
    .isQuestComplete 29142
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_General Taldris Mondsturz|r
    .dailyturnin 29142 >> Gebt die Quest Verräter Zurückkehren ab
    .target General Taldris Moonfall
step
    .isQuestComplete 29137
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_General Taldris Mondsturz|r
    .dailyturnin 29137 >> Gebt die Quest Durchbruch der Verteidigung ab
    .target General Taldris Moonfall
step
    .isQuestComplete 29138
    .goto 338,45.626,86.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Irontree|r
    .dailyturnin 29138 >>Gebt die Quest Brandopfer ab
    .target Captain Irontree

-- Checking if can turn in The Shadow Wardens before starting Druids quests for the day
step
    .goto 338,47.017,91.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Malfurion Sturmgrimm|r
    .accept 29214 >>Akzeptiert die Quest Die Schattenwächterinnen
    .target Malfurion Stormrage
step
    #completewith THB
    .goto 338,53.026,83.693
    .zone 198 >> Portal nehmen zum Hyjal
step
    .isQuestComplete 29214
    .goto 198,26.799,62.157
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Saynna Stormrunner|r
    .turnin 29214 >>Gebt die Quest Die Schattenwächterinnen ab
    .target Captain Saynna Stormrunner

-- Beginning of Wardens questline if turned in
step
    #label THB
    .isQuestTurnedIn 29214
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    >>|cRXP_WARN_HINWEIS: Falls ihr die Quest [Die Schattenwächterinnen] gerade abgegeben habt und |cRXP_FRIENDLY_Matookla|r euch diese Quest noch nicht anbietet, könnt ihr sie erst akzeptieren, nachdem die täglichen Quests für den Tag zurückgesetzt wurden. Überprüft morgen erneut|r
    .target Matoclaw
    .accept 29215 >>Akzeptiert die Quest Die Jagd beginnt
step
    #completewith ITF
    .goto 198,27.484,56.394
    .zone 338 >> Geht durch das Portal in die Feuerlande
step
    .isOnQuest 29215
    .goto 338,47.584,90.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Saynna Stormrunner|r
    .turnin 29215 >>Gebt die Quest Die Jagd beginnt ab
    .target Captain Saynna Stormrunner
step
    #completewith next
    .goto 338,57.02,66.92,40,0
    .goto 338,71.30,38.43
    .subzone 5744 >> Reist nach Wildflammenspitze
step
    .isQuestTurnedIn 29215
    .goto 338,71.309,38.430
    >>Tötet den |cRXP_ENEMY_Druide der Flamme|r. Es wirft eine |cRXP_PICK_Getrocknete Eichel|r auf den Boden
    >>|cRXP_WARN_Tötet die |cRXP_ENEMY_Druiden der Flamme|r in Wildflammenspitze. Die in den Aschenfeldern zählen nicht|r
    >>Hebt die |cRXP_PICK_Getrocknete Eichel|r vom Boden auf
    .accept 29245 >> Akzeptiert die Quest Das mysteriöse Samenkorn
    .mob Druid of the Flame
step
    .isQuestTurnedIn 29215
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Avrilla|r
    .turnin 29245 >> Gebt die Quest Das mysteriöse Samenkorn ab
    .accept 29249 >> Akzeptiert die Quest Pflanzzeit
    .target Avrilla
step
    .isOnQuest 29249
    .goto 338,53.527,90.736
    .cast 8386,6477,6478 >> Hebt die |cRXP_PICK_Erde von Un'Goro|r vom Boden auf
    .timer 10,Pflanzen Season RP
step
    .isQuestTurnedIn 29215
    .goto 338,53.527,90.736
    >>Warte auf das RP
    .complete 29249,1 -- Acorn Planted 1/1
step
    .isQuestTurnedIn 29215
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .turnin 29249 >> Gebt die Quest Pflanzzeit ab
    .accept 29254 >> Akzeptiert die Quest Kleiner Peitscher
    .target Avrilla
step
    .isQuestTurnedIn 29215
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Avrilla|r
    .turnin 29254 >> Gebt die Quest Kleiner Peitscher ab
    .target Avrilla
step
    .isQuestTurnedIn 29215
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Avrilla|r
    .daily 29255,29257,29299 >>Akzeptiert eine beliebige tägliche Quest
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
    >>Tötet |cRXP_ENEMY_Charred Soldiers|r und |cRXP_ENEMY_Charred Vanquishers|r. Plündert sie für |cRXP_LOOT_Embergris|r
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
    >>Plündert |cRXP_LOOT_Magmolia|r in den kleinen Lavabecken
    >>|cRXP_WARN_Falls ein Lavabohrer nach dem Plündern eines erscheint, tötet es und plündert es für|r |cRXP_LOOT_Magmolia|r
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
    >>|cRXP_WARN_Take von Euch |cRXP_FRIENDLY_Crimson Peitscher|r und fight|r |cRXP_ENEMY_Emberspit Scorpions|r << !Hunter
    >>|cRXP_WARN_Werft|r |T135834:0|t[Eiskältefalle] |cRXP_WARN_auf einen |cRXP_ENEMY_Glutspeiskorpion|r. Es wirkt|r |T135826:0|t[Ember Pools] |cRXP_WARN_kontinuierlich, während euer |cRXP_FRIENDLY_Purpurpeitscher|r sie trinkt, sodass ihr diesen Tagesauftrag mit nur einem|r |cRXP_ENEMY_Glutspeiskorpion|r abschließen könnt << Hunter
    >>|cRXP_WARN_The |cRXP_ENEMY_Emberspit Scorpions|r will wirkt|r |T135826:0|t[Glutlaches] |cRXP_WARN_which von Euch |cRXP_FRIENDLY_Crimson Peitscher|r will drink|r
    .complete 29299,1 -- Help the Crimson Lasher Drink from Ember Pools (6)
    .mob Emberspit Scorpion
step
    .isQuestComplete 29255
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29255 >>Gebt die Quest Embergris ab
    .target Avrilla
step
    .isQuestComplete 29257
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29257 >>Gebt die Quest Steal Magmolias ab
    .target Avrilla
step
    .isQuestComplete 29299
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29299 >>Gebt die Quest Some Like It Heiß ab
    .target Avrilla
step
    #label ITF
    .isQuestTurnedIn 29181
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_General Taldris Mondsturz|r
    .daily 29206 >>Akzeptiert die Quest Ins Feuer
    .target General Taldris Moonfall
step
    .isOnQuest 29206
    .goto 338,43.15,80.14,10,0
    .goto 338,33.83,67.40
    >>Eskortet und beschützt |cRXP_FRIENDLY_Windcaller|r durch das Feuer
    >>Tötet |cRXP_ENEMY_Pyrolord|r am Ende
    >>Sprecht mit |cRXP_FRIENDLY_Himmelsfürst Omnuron|r kurz vor den Feuern, falls kein |cRXP_FRIENDLY_Windcaller|r vorhanden ist
    .complete 29206,1 -- Druid of the Talon Windcaller protected 1/1
    .mob Flamewaker Assassin
    .mob Pyrelord
    .target Windcaller Nordrala
    .target Windcaller Voramus
    .skipgossip
step << skip
    .goto 338,34.400,66.213
    .subzone 5746 >> Benutzt das |cRXP_PICK_Abseil-Seil|r, um in den Geschmolzenen Fluss hinabzusteigen
step
    #completewith next
    .subzone 5746 >> |cRXP_WARN_Fallt herunter in das große Loch. Begebt euch zu|r |cRXP_FRIENDLY_Thisalee Krähe|r
step
    .isQuestTurnedIn 29181
    .goto 338,42.541,59.713
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thisalee Krähe|r
    .dailyturnin 29206 >>Gebt die Quest Ins Feuer ab
    .daily 29264 >>Akzeptiert die Quest Flammenwacher des geschmolzenen Flusses
    .daily 29265 >>Akzeptiert die Quest Feuer Blumen
    .target Thisalee Crow
step
    .isQuestTurnedIn 29272
    .goto 338,41.772,61.475
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Anren Shadowseeker|r
    >>|cRXP_WARN_HINWEIS: Falls |cRXP_FRIENDLY_Anren Schattensucher|r hier nicht unterirdisch spawnt, überspringt diesen Schritt|r
    .daily 29274 >>Akzeptiert die Quest Hounds of Shannox
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
    >>Tötet |cRXP_ENEMY_Flamewaker Sentinels|r, |cRXP_ENEMY_Flamewaker Hunters|r und |cRXP_ENEMY_Flamewaker Schamane|r
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
    >>Tötet |cRXP_ENEMY_Charhounds|r. Plündert sie für |cRXP_LOOT_Houndbone Asche|r
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
    >>Sammelt |cRXP_LOOT_Luciferns|r vom Boden
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thisalee Krähe|r
    .dailyturnin 29264 >>Gebt die Quest Flamewakers of the Geschmolzen Fluss ab
    .target Thisalee Crow
step
    #label ExitUnderground
    #completewith DruidEnd
    .goto 338,33.08,67.62
    .aura 98833 >> |cRXP_WARN_Geht zur großen Öffnung zurück, in der ihr hinuntergefallen seid. Steht im|r |T514278:0|t[Thermalauftrieb]|cRXP_WARN_, dann springt, um zur Geschmolzene Front surface zurückzukehren|r
    .subzoneskip 5746,1
step
    #requires ExitUnderground
    #completewith DruidEnd
    .goto 338,33.08,67.62
    +|cRXP_WARN_Springt, um zur Geschmolzene Front surface zurückzukehren|r
    .subzoneskip 5746,1
step
    .isQuestTurnedIn 29272
    .goto 338,35.985,58.974
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tholo Whitehoof|r
    .daily 29273 >>Akzeptiert die Quest How Heiß
    .disablecheckbox
    .target Tholo Whitehoof
    .questcount <1,29273,29274
step
    .isQuestComplete 29265
    .goto 338,36.299,56.344
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Choluna|r
    .dailyturnin 29265 >>Gebt die Quest Feuer Blumen ab
    .target Choluna
step -- Ricket @ DRUIDS
    .isQuestTurnedIn 29282
    .goto 338,36.251,56.586
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ricket|r
    >>|cRXP_WARN_Überspringt diesen Schritt if she is not here|r
    .daily 29263,29278,29295,29297 >> Akzeptiert eine beliebige tägliche Quest
    .target Ricket
step
    .isQuestTurnedIn 29181
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Morthis Whisperwing|r
    .daily 29290,29287,29288 >> Akzeptiert eine beliebige tägliche Quest
    .target Morthis Whisperwing
step
    .isQuestTurnedIn 29181
    .goto 338,34.295,56.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Arthorn Windweise|r
    .daily 29293,29296 >> Akzeptiert eine beliebige tägliche Quest
    .target Arthorn Windsong
step
    #completewith next
    .goto 338,33.808,57.177
    .isOnQuest 29290
    .vehicle >> Setzt euch auf den |cRXP_FRIENDLY_Trainierter Feuerfalke|r
    .target Trained Fire Hawk
step
    .isOnQuest 29290
    >>|cRXP_WARN_Wirkt|r |T135821:0|t[Flammensamen] (1) |cRXP_WARN_und|r |T451164:0|t[Flammenexplosion] (2) |cRXP_WARN_um die|cRXP_ENEMY_ Flamewakers|r, |cRXP_ENEMY_Cinderwebs|r und|r |cRXP_ENEMY_Geschmolzen Lords|r
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
    .subzone 5745 >>|cRXP_WARN_Wirkt|r |T514278:0|t[Rückkehr zum Schmelzofen] (6) |cRXP_WARN_um zurückzukehren|r
    .subzoneskip 5748
step
    #optional
    #sticky
    .isOnQuest 29287,29288,29293,29296,29273
    .subzone 5748 >> |cRXP_WARN_Benutzt die Trittsteine, um auf den Fireplume Kamm zu gelangen. Ihr solltet versuchen, einen Luftschacht am Ende der Trittsteine zu benutzen, da dies den|r |T236222:0|t[Konvaleszenz der Winde] |cRXP_WARN_Buff verleiht, der eure Angriffsgeschwindigkeit und Eile um 100% erhöht und es euch ermöglicht, viel höher und weiter zu springen als Normal|r
step
    #sticky
    #label HowHot
    .isOnQuest 29273
    .use 69806 >>|cRXP_WARN_Benutzt|r |T135155:0|t[Tholos Thermometer] |cRXP_WARN_am Schwarzrauchgipfel|r |cRXP_PICK_Lava Pools|r
    >>|cRXP_WARN_Ihr könnt use|r |T135155:0|t[Tholos Thermometer] |cRXP_WARN_while remaining on von Euch mount|r
    >>|cRXP_WARN_Springt hoch mit den|r |T514278:0|t[Thermalquelle] |cRXP_WARN_, die am Schwarzrauchgipfel zu finden sind, um nach oben zu gelangen|r
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
    >>Sammelt |cRXP_LOOT_Fire Hawk Ei|r vom Gipfel des Schwarzrauchgipfel
    >>|cRXP_WARN_Springt hoch mit den|r |T514278:0|t[Thermalquelle] |cRXP_WARN_, die am Schwarzrauchgipfel zu finden sind, um nach oben zu gelangen|r
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
    >>Klickt auf den |cRXP_FRIENDLY_Verletzten Druiden der Kralle|r
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
    >>Tötet |cRXP_ENEMY_Obsidium Punishers|r. Beute their |cRXP_LOOT_Living Obsidium Splitter|r debris auf dem Boden nach
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
    >>Tötet |cRXP_ENEMY_Fire Hawks|r
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
    >>Klickt auf die |cRXP_FRIENDLY_Feuer Falkenküken|r
    >>|cRXP_WARN_Der Gipfel des Schwarzrauchgipfel hat eine große Menge von ihnen|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Morthis Whisperwing|r
    .dailyturnin 29290 >> Gebt die Quest Feuer im Himmel ab
    .target Morthis Whisperwing
step
    .isQuestComplete 29287
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Morthis Whisperwing|r
    .dailyturnin 29287 >> Gebt die Quest Peaked Interest ab
    .target Morthis Whisperwing
step
    .isQuestComplete 29288
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Morthis Whisperwing|r
    .dailyturnin 29288 >> Gebt die Quest Started Young ab
    .target Morthis Whisperwing
step
    .isQuestComplete 29293
    .goto 338,34.295,56.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Arthorn Windweise|r
    .dailyturnin 29293 >> Gebt die Quest Angesengt Schwingen ab
    .target Arthorn Windsong
step
    .isQuestComplete 29296
    .goto 338,34.295,56.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Arthorn Windweise|r
    .dailyturnin 29296 >> Gebt die Quest Territorial Birds ab
    .target Arthorn Windsong
step
    .isQuestTurnedIn 29284
    .goto 338,36.299,56.344
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Choluna|r
    .daily 29305 >>Akzeptiert die Quest Angriff auf das Herz
    .target Choluna
step
    .isOnQuest 29305
    .goto 338,50.343,23.036
    >>Tötet einen der |cRXP_ENEMY_Lieutenants of Flamme|r
    .complete 29305,1 -- Lieutenant of Flame slain
    .mob Ancient Charscale
    .mob Ancient Smoldering Behemoth
    .mob Ancient Firelord
    .mob Cinderweb Queen
    .mob Devout Harbinger
 step
    .isQuestComplete 29305
    .goto 338,43.033,80.597
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Skylord Omnuron|r
    .dailyturnin 29305 >>Gebt die Quest Angriff auf das Herz ab
    .target Skylord Omnuron
step
    .isQuestComplete 29295
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Damek Bloombeard|r
    .dailyturnin 29295 >> Gebt die Quest The Bigger They Are ab
    .target Damek Bloombeard
step
    .isQuestComplete 29273
    .goto 338,51.245,85.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Anren Shadowseeker|r
    .dailyturnin 29273 >> Gebt die Quest How Heiß ab
    .target Anren Shadowseeker
step
    .isQuestComplete 29274
    .goto 338,51.555,85.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tholo Whitehoof|r
    .dailyturnin 29274 >> Gebt die Quest Hounds of Shannox ab
    .target Tholo Whitehoof

--Calling the Ancients unlock
step
    .isQuestTurnedIn 29182 -- Druids prereq
    .isQuestTurnedIn 29215 -- Warden prereq
    .goto 338,44.434,88.790
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Varlan Highbough|r
    .accept 29283 >>Akzeptiert die Quest Rufen der Urtume
    .target Varlan Highbough
step
    #optional
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >> Portal nehmen zum Hyjal
    .zoneskip 338,1
step
    .isQuestComplete 29283
    .goto 198,26.005,61.302
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elderlimb|r
    .turnin 29283 >>Gebt die Quest Rufen der Urtume ab
    .target Elderlimb
step
    .isQuestTurnedIn 29283
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .accept 29284 >>Akzeptiert die Quest Hilfe der Urtume
step
    #optional
    #completewith WardenEnd
    .isOnQuest 29284
    .goto 198,27.484,56.394
    .zone 338 >> Geht durch das Portal in die Feuerlande
step
    .isOnQuest 29284
    .goto 338,43.812,88.964
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elderlimb|r
    .turnin 29284 >>Gebt die Quest Hilfe der Urtume ab
    .target Elderlimb
step
    .isQuestTurnedIn 29284
    .goto 338,36.299,56.344
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Choluna|r
    .daily 29305 >>Akzeptiert die Quest Angriff auf das Herz
    .target Choluna
step
    .isOnQuest 29305
    .goto 338,50.343,23.036
    >>Tötet einen der |cRXP_ENEMY_Lieutenants of Flamme|r
    .complete 29305,1 -- Lieutenant of Flame slain
    .mob Ancient Charscale
    .mob Ancient Smoldering Behemoth
    .mob Ancient Firelord
    .mob Cinderweb Queen
    .mob Devout Harbinger
 step
    .isQuestComplete 29305
    .goto 338,43.033,80.597
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Skylord Omnuron|r
    .dailyturnin 29305 >>Gebt die Quest Angriff auf das Herz ab
    .target Skylord Omnuron
--Complete Calling the Ancients unlock

--Additional Armaments unlock
step
    .isQuestTurnedIn 29182 -- Druids prereq
    .isQuestTurnedIn 29215 -- Warden prereq
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Damek Bloombeard|r
    .accept 29281 >>Akzeptiert die Quest Verstärkung
    .target Damek Bloombeard
step
    #optional
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >> Portal nehmen zum Hyjal
    .zoneskip 338,1
step
    .isQuestComplete 29281
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .turnin 29281 >>Gebt die Quest Verstärkung ab
    .accept 29282 >>Akzeptiert die Quest Gut bewaffnet
step
    .isQuestTurnedIn 29281
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .accept 29282 >>Akzeptiert die Quest Gut bewaffnet
step
    #optional
    #completewith next
    .isOnQuest 29282
    .goto 198,27.484,56.394
    .zone 338 >> Geht durch das Portal in die Feuerlande
step
    .isOnQuest 29282
    .goto 338,46.758,90.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ricket|r
    .target Ricket
    .turnin 29282 >>Gebt die Quest Gut bewaffnet ab
step
    .isQuestTurnedIn 29282
    .goto 338,46.758,90.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ricket|r
    .daily 29263,29278,29295,29297 >> Akzeptiert eine beliebige tägliche Quest
    .target Ricket
step -- 29263 A Bitter Pill
    .isOnQuest 29263
    #loop
    .goto 338,43.8,46.8,50,0
    .goto 338,53.6,41.8,50,0
    .goto 338,55.6,54.6,50,0
    .goto 338,44.8,54.4,50,0
    >>Klickt |cRXP_PICK_Lava Blasen|r in den Lavabecken, um einen |cRXP_ENEMY_Unterirdischen Magmawurm|r hervorzurufen
    .use 69759 >>|cRXP_WARN_Wenn die Warnmeldung erscheint: "Der Wurm wird gleich zubeißen! Legt die Bombe jetzt ab!" benutzt|r |T133710:0|t[Die bittere Pille]
    .complete 29263,1 -- Subterranean Magma Worm slain 1/1
    .mob Subterranean Magma Worm
step -- 29278 Living Obsidium
    .isOnQuest 29278
    #loop
    .goto 338,41.5,49.8,50,0
    .goto 338,46.6,43.1,50,0
    .goto 338,54.6,43.8,50,0
    .goto 338,51.5,51.2,50,0
    >>Klickt |cRXP_PICK_Magnetic Stones|r, dann plündert die |cRXP_LOOT_Obsidium-Meteoriten|r, welche herunterfallen
    .complete 29278,1 -- Obsidium Meteorite (10)
    .target Magnetic Stone
step -- 29295 The Bigger They Are -- DRUIDS ONLY
    .isOnQuest 29295
    #loop
    .goto 338,29.7,28.5,50,0
    .goto 338,16.8,32.5,50,0
    .goto 338,19.5,49.5,50,0
    .goto 338,32.7,43.6,50,0
    >>Tötet |cRXP_ENEMY_Obsidium Punishers|r. Beute their |cRXP_LOOT_Living Obsidium Splitter|r debris auf dem Boden nach
    .complete 29295,1 -- Living Obsidium Chip (10)
    .mob Obsidium Punisher
step -- 29297 Bye Bye Burdy -- WARDENS ONLY
    .isOnQuest 29297
    #loop
    .goto 338,73.03,54.88,50,0
    .goto 338,73.82,38.28,50,0
    .goto 338,63.73,38.76,50,0
    .use 69832 >> |cRXP_WARN_Benutzt den|r |T135129:0|t[Vogelpiekser] |cRXP_WARN_auf |cRXP_ENEMY_Druiden der Flamme|r, die in der Luft fliegen|r
    .complete 29297,1 -- Druids of the Flame in Fire Crow form slain (3)
    .mob Druid of the Flame
step
    .isQuestComplete 29263
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Damek Bloombeard|r
    .dailyturnin 29263 >> Gebt die Quest A Bitter Pill ab
    .target Damek Bloombeard
step
    .isQuestComplete 29278
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Damek Bloombeard|r
    .dailyturnin 29278 >> Gebt die Quest Living Obsidium ab
    .target Damek Bloombeard
step
    .isQuestComplete 29295
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Damek Bloombeard|r
    .dailyturnin 29295 >> Gebt die Quest The Bigger They Are ab
    .target Damek Bloombeard
step
    .isQuestComplete 29297
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Damek Bloombeard|r
    .dailyturnin 29297 >> Gebt die Quest Tschö Tschö Burdy ab
    .target Damek Bloombeard
--Complete Additional Armaments unlock

--Filling the Moonwell unlock
step
    .goto 338,44.087,86.321
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ayla Schattensturm|r
    .accept 29279 >>Akzeptiert die Quest Befüllung des Mondbrunnens
    .target Ayla Shadowstorm
step
    #optional
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >> Portal nehmen zum Hyjal
    .zoneskip 338,1
step
    .isQuestComplete 29279
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .turnin 29279 >> Gebt die Quest Befüllung des Mondbrunnens ab
    .accept 29280 >> Akzeptiert die Quest Lebensspendende Wasser
    .target Matoclaw
step
    .isQuestTurnedIn 29279
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .accept 29280 >> Akzeptiert die Quest Lebensspendende Wasser
    .target Matoclaw
step
    #optional
    #completewith next
    .isOnQuest 29280
    .goto 198,27.484,56.394
    .zone 338 >> Geht durch das Portal in die Feuerlande
step
    .isOnQuest 29280
    .goto 338,44.087,86.321
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ayla Schattensturm|r
    .target Ayla Shadowstorm
    .turnin 29280 >>Gebt die Quest Lebensspendende Wasser ab
step
    .isQuestTurnedIn 29280
    .goto 338,47.022,91.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Malfurion Sturmgrimm|r
    .target Malfurion Stormrage
    .accept 29203 >> Akzeptiert die Quest In die Tiefen
step
    .isOnQuest 29203
    #completewith next
    .goto 338,57.491,49.532,15 >>Betretet die Feurigen Tiefen
step
    .isOnQuest 29203
    .goto 338,64.615,59.216
    >>Tötet |cRXP_ENEMY_Leyara|r
    .complete 29203,1 -- Leyara slain 1/1
    .mob Leyara
step
    .isQuestComplete 29203
    #completewith next
    .goto 338,57.491,49.532,15 >>Verlasst die Feurigen Tiefen
    .subzoneskip 5741,1
step
    .isQuestComplete 29203
    .goto 338,47.022,91.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Malfurion Sturmgrimm|r
    .target Malfurion Stormrage
    .turnin 29203 >> Gebt die Quest In die Tiefen ab
step
    .isQuestTurnedIn 29203
    >>|cRXP_WARN_Ihr werdet jetzt Post von |cRXP_FRIENDLY_Theresa Baumrinde|r mit einem|r |T514925:0|t[|cRXP_LOOT_Verrußtes Medaillon|r]
    .use 69854 >>|cRXP_WARN_Benutzt das|r |T514925:0|t[|cRXP_LOOT_Verrußtes Medaillon|r] |cRXP_WARN_um die Quest zu starten|r
    .collect 69854,1,29298,1 -- Smoke-Stained Locket (1)
    .accept 29298 >> Akzeptiert die Quest Verrußtes Medaillon
step
    #optional
    #completewith SecretsWithin
    .goto 338,53.026,83.693
    .zone 198 >> Portal nehmen zum Hyjal
    .zoneskip 338,1
step
    .isQuestTurnedIn 29203
    #completewith next
    .zone Moonglade >> Reist zur Mondlichtung
step
    #label SecretsWithin
    .isQuestTurnedIn 29203
    .goto Moonglade,51.685,45.098
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rabine Saturna|r
    .turnin 29298 >> Gebt die Quest Verrußtes Medaillon ab
    .accept 29302 >> Akzeptiert die Quest Aufdecken verborgener Geheimnisse
    .timer 42,Aufdecken verborgener Geheimnisse RP
    .target Rabine Saturna
step
    .isQuestTurnedIn 29203
    >>Warte auf das RP
    .complete 29302,1 -- Look into Leyara's memories 1/1
step
    .isQuestTurnedIn 29203
    .goto Moonglade,51.685,45.098
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rabine Saturna|r
    .turnin 29302 >> Gebt die Quest Aufdecken verborgener Geheimnisse ab
    .accept 29303 >> Akzeptiert die Quest Tragödie und Familie
    .target Rabine Saturna
step
    .isOnQuest 29303
    #completewith next
    .zone Ashenvale >> Reist nach Eschental
step
    .isOnQuest 29303
    .goto Ashenvale,40.501,53.281
    .cast 6247 >> Klickt |cRXP_PICK_Night Elf Grave|r
    .timer 48,Tragedy und Family RP
    .skipgossip
step
    .isOnQuest 29203
    .goto Ashenvale,40.501,53.281
    >>Warte auf das RP
    .complete 29303,1 -- Look deeper into Leyara's memories 1/1
    .skipgossip
step
    .isQuestTurnedIn 29203
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .turnin 29303 >> Gebt die Quest Tragödie und Familie ab
    .accept 29310 >> Akzeptiert die Quest Die Trendwende
step
    .isOnQuest 29310
    #completewith next
    .zone 198 >> Reist nach Hyjal
step
    .isOnQuest 29310
    .goto 198,7.561,34.582
    .cast 6247 >> Klickt |cRXP_PICK_Small Gravestone|r
    .timer 59,Die Trendwende RP
    .skipgossip
step
    .isOnQuest 29310
    .goto 198,7.561,34.582
    >>Warte auf das RP
    .complete 29310,1 -- Look deeper into Leyara's memories 1/1
    .skipgossip
step
    .isQuestTurnedIn 29203
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .turnin 29310 >> Gebt die Quest Die Trendwende ab
    .accept 29311 >> Akzeptiert die Quest Der Ausruhen ist Geschichte
step
    #optional
    #completewith next
    .isOnQuest 29311
    .goto 198,27.484,56.394
    .zone 338 >> Geht durch das Portal in die Feuerlande
step
    .isOnQuest 29311
    .goto 338,47.022,91.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Malfurion Sturmgrimm|r
    .turnin 29311 >> Gebt die Quest Der Ausruhen ist Geschichte ab
    .target Malfurion Stormrage
--Complete Filling the Moonwell

step
    #optional
    .isQuestTurnedIn 29284
    .isQuestTurnedIn 29282
    .isQuestTurnedIn 29311
    .goto 338,46.932,90.984
    +Glückwunsch zum Freischalten der Geschmolzenen Front! Fahrt fort, um entweder (|cRXP_ENEMY_2.5|r - The Geschmolzene Front + Druiden) oder (|cRXP_PICK_2.5|r - The Geschmolzene Front + Wardens) abzuschließen, um mehr |T513195:0|t[Marks of the Welt Baum] zu verdienen
    >>|cRXP_FRIENDLY_Zen'Vorka|r verkauft |T133654:0|t[|cRXP_FRIENDLY_Zen'Vorka-Truhe|r] für 30 |T513195:0|t[Marks of the Welt Baum], die einen zufälligen grünen Gegenstand oder den seltenen Begleiter |T294481:0|t[|cFF0070FFVerbrannter Stein|r] enthalten kann
    .target Zen'Vorka
step
    .isQuestAvailable 29214
    #label DruidEnd
    +|cRXP_WARN_Ihr habt alle verfügbaren Tagesquests für heute abgeschlossen. Ladet diese Anleitung morgen (|r|cRXP_ENEMY_2.5|r - Die Geschmolzene Front + Druiden|cRXP_WARN_) erneut, um die Tagesquests weiterhin abzuschließen, bis ihr genug|r |T513195:0|t[Marks of the Welt Baum] erworben habt
step
    .isQuestTurnedIn 29214
    +|cRXP_WARN_Ihr habt die Tagesquests [Die Schattenwächterinnen] freigeschaltet. Ihr habt die Wahl, Quests für Druiden der Kralle oder Die Schattenwächterinnen abzuschließen. Ladet diese Anleitung morgen (|r|cRXP_ENEMY_2.5|r - Die Geschmolzene Front + Druiden|cRXP_WARN_) oder (|r|cRXP_PICK_2.5|r - Die Geschmolzene Front + Warden|cRXP_WARN_) erneut, je nachdem, ob ihr Quests für Druiden der Kralle oder Die Schattenwächterinnen abschließen möchtet. Beides ergibt die gleiche Menge an|r |T513195:0|t[Marks of the Welt Baum]
]])

RXPGuides.RegisterGuide([[
#cata
#version 1
#group Die Geschmolzene Front
#name D_1_TSOM_Wardens
#displayname |cRXP_PICK_2.5|r - Die Geschmolzene Front + Warden

step
    #optional
    .isQuestAvailable 29214
    +|cRXP_WARN_Ihr müsst zuerst 150|r |T513195:0|t[Marks of the Welt Baum] |cRXP_WARN_sammeln und die Quest [Die Schattenwächterinnen] abgeben, um Tagesquests für sie abschließen zu können|r
    .turnin 29214 >>Gebt die Quest Die Schattenwächterinnen ab
    .target Captain Saynna Stormrunner
    .goto 198,26.799,62.157
step
    #optional
    #completewith HyjalQuests
	.zone 85 >> Reist nach Orgrimmar << Horde
	.zone 84 >> Lauf nach Sturmwind << Alliance
	.zoneskip 198
    .zoneskip 338
step
    #optional
    #completewith HyjalQuests
    .goto 85,51.12,38.26 << Horde
    .goto 84,76.199,18.690 << Alliance
    .zone 198 >>Nehmt das Portal nach Hyjal
    .zoneskip 338
step
    #optional
    #completewith HyjalQuests
    .goto 338,53.026,83.693
    .zone 198 >> Portal nehmen zum Hyjal
    .zoneskip 338,1
step --accepted back at sanctuary of malorne
    .goto 198/1,-2088.800,4452.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Soren Mondsturz|r
    .target Captain Soren Moonfall
    .daily 29128 >>Akzeptiert die Quest Die Beschützer von Hyjal
step
    #loop
    .goto 198,27.108,62.009,5,0
    .goto 198,27.170,62.563,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r oder |cRXP_FRIENDLY_Mylune|r
    .daily 29125,29147,29164,29101,29161 >> Akzeptiert eine beliebige tägliche Quest
    .disablecheckbox
    .questcount <1,29125,29147,29164,29101,29161
    .target Matoclaw
    .target Mylune
step
    #loop
    #label HyjalQuests
    .goto 198,27.527,62.510,5,0
    .goto 198,27.172,62.565,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r oder |cRXP_FRIENDLY_Dorda'en Nightweaver|r
    .daily 29123,29149,29127,29163,29166,29247,29246,29248 >> Akzeptiert eine beliebige tägliche Quest
    .disablecheckbox
    .questcount <1,29123,29149,29127,29163,29166,29247,29246,29248
    .target Matoclaw
    .target Dorda'en Nightweaver
step
    .isOnQuest 29166
    #completewith KillNemesis
    >>Plündert die |cRXP_LOOT_Blueroot Vines|r auf dem Boden
    .complete 29166,1
step
    .isOnQuest 29123
    #completewith KillNemesis
    >>Tötet |cRXP_ENEMY_Eindringlinge aus den Feuerlanden|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #completewith KillNemesis
    >>Tötet |cRXP_ENEMY_Eindringlinge aus den Feuerlanden|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #completewith KillNemesis
    >>Tötet |cRXP_ENEMY_Eindringlinge aus den Feuerlanden|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #completewith KillNemesis
    >>Tötet |cRXP_ENEMY_Eindringlinge aus den Feuerlanden|r
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
    >>Klickt auf |cRXP_FRIENDLY_Abkömmling von Tortolla|r
    >>|cRXP_WARN_Zielt auf das Wasser und wirkt|r |T132219:0|t[Schildkröte kicken] |cRXP_WARN_(1)|r
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
    >>Tötet |cRXP_ENEMY_Eindringlinge aus den Feuerlanden|r
    .use 69235 >> |cRXP_WARN_Benutzt die|r |T134298:0|t[Zerrender Biss of the Wolf] |cRXP_WARN_auf ihren Leichen|r
    .complete 29164,1 -- Howl atop an invader's corpse (10)
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29147
    #completewith next
    .cast 97241 >> |cRXP_WARN_Benutzt die|r |T135992:0|t[Federkiel der Vogelkönigin] |cRXP_WARN_um euch in|r Schwingen von Aviana|cRXP_FRIENDLY_ zu verwandeln|r
    .use 69234
step
    .isOnQuest 29147
    #loop
    .goto 198,14.90,45.11,80,0
    .goto 198,10.13,36.76,80,0
    .goto 198,13.24,33.64,80,0
    .goto 198,18.65,40.28,80,0
    .use 69234 >> |cRXP_WARN_Benutzt|r |T132172:0|t[Schwarmruf] (1) |cRXP_WARN_Fähigkeit bei|cRXP_FRIENDLY_ |rAlpine Songbirds|cRXP_FRIENDLY_, |rForest Owls|r und |cRXP_FRIENDLY_Goldwing Hawks|r
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
    >>Steht vor einem |cRXP_FRIENDLY_Spirit of Malorne|r
    >>|cRXP_WARN_Das sind die Geisterhirsche, die wild herumrennen|r
    .complete 29125,1 --Spirit of Malorne captured (3)
step
    #completewith next
    .goto 198,14.310,33.203
    .vehicle >> Klickt |cRXP_PICK_Kletterbaum|r an, um ihn zu erklimmen
    .target Climbing Tree
    .isOnQuest 29161
step
    .goto 198,14.310,33.203
    >>Klickt |cRXP_FRIENDLY_Hyjalbärenjunges|r, während ihr auf dem Baum seid
    .collect 54439,1
    .target Hyjal Bear Cub
    .isOnQuest 29161
step
    .isOnQuest 29161
    .goto 198,14.310,33.203
    *|cRXP_WARN_Wirkt|r |T450907:0|t[Hinaufklettern] (1) |cRXP_WARN_bis ihr an der Spitze seid, zielt mit dem Pfeil auf das Trampolin neben |cRXP_FRIENDLY_Bewahrer Taldros|r, dann wirkt|r |T446127:0|t[Wirf-Den-Bären] (4)|cRXP_WARN_. Wirkt|r |T450905:0|t[Hinunterklettern] (2) |cRXP_WARN_und wiederholt den Vorgang|r
    .complete 29161,1 --6/6 Hyjal Bear Cubs Rescued
step
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Wirkt|r |T450905:0|t[Hinunterklettern] (2) |cRXP_WARN_um den Baum zu verlassen|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Wirkt|r |T450905:0|t[Hinunterklettern] (2) |cRXP_WARN_um den Baum zu verlassen|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Wirkt|r |T450905:0|t[Hinunterklettern] (2) |cRXP_WARN_um den Baum zu verlassen|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Wirkt|r |T450905:0|t[Hinunterklettern] (2) |cRXP_WARN_um den Baum zu verlassen|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Wirkt|r |T450905:0|t[Hinunterklettern] (2) |cRXP_WARN_um den Baum zu verlassen|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Wirkt|r |T450905:0|t[Hinunterklettern] (2) |cRXP_WARN_um den Baum zu verlassen|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Wirkt|r |T450905:0|t[Hinunterklettern] (2) |cRXP_WARN_um den Baum zu verlassen|r
step
    .isOnQuest 29161
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .turnin 29161 >>Abgeben Die Bären da in den Bäumen
    .accept 29162 >>Akzeptiert die Quest Segen der Natur
step
    .isQuestTurnedIn 29161
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .accept 29162 >>Akzeptiert die Quest Segen der Natur
step
    .isOnQuest 29125
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .turnin 29125 >>Gebt die Quest Zwischen den Bäumen ab
    .accept 29126 >>Akzeptiert die Quest Die Macht von Malorne
step
    .isQuestTurnedIn 29125
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .accept 29126 >>Akzeptiert die Quest Die Macht von Malorne
step
    .isOnQuest 29147
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .turnin 29147 >>Gebt die Quest Schwarmruf ab
    .accept 29148 >>Akzeptiert die Quest Flammende Schwingen
step
    .isQuestTurnedIn 29147
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .accept 29148 >>Akzeptiert die Quest Flammende Schwingen
step
    .isOnQuest 29164
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .turnin 29164 >>Gebt die Quest Gut heulen will geübt sein ab
    .accept 29165 >>Akzeptiert die Quest Der Ruf des Rudels
step
    .isQuestTurnedIn 29164
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .accept 29165 >>Akzeptiert die Quest Der Ruf des Rudels
step
    .isOnQuest 29101
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .turnin 29101 >>Gebt die Quest Ab ins Wasser! ab
    .accept 29122 >>Akzeptiert die Quest Echos von Nemesis
step
    .isQuestTurnedIn 29101
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .accept 29122 >>Akzeptiert die Quest Echos von Nemesis
step
    #completewith next
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .cast 97517 >> |cRXP_WARN_Benutzt die|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_um|r Pyrachnis|cRXP_ENEMY_ zu beschwören|r
    .use 69232
step
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .use 69232 >> Tötet |cRXP_ENEMY_Pyrachnis|r
    >>|cRXP_WARN_Benutzt den|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_um auch den|r |T136016:0|t[Kochender Giftblitz] |cRXP_WARN_Debuff von euch entfernen, das|cRXP_ENEMY_ Pyrachnis|r wirkt|r
    .complete 29162,1 --|Pyrachnis slain: 1/1
    .mob Pyrachnis
step
    #completewith next
    .isOnQuest 29126
    .goto 198,41.667,56.130
    .cast 97012 >> |cRXP_WARN_Benutzt den|r |T135139:0|t[Stab des Wächters] |cRXP_WARN_beim |cRXP_PICK_Pile of Asche|r um zu beschwören|r |cRXP_ENEMY_Galenges|r
    .use 68997
step
    .goto 198,41.667,56.130
    .isOnQuest 29126
    .use 68997 >> Tötet |cRXP_ENEMY_Galenges|r
    .complete 29126,1 -- Galenges slain (1)
    .mob Galenges
step
    .isOnQuest 29148
    #completewith next
    .goto 198/1,-1500.700,4929.300
    .cast 97324 >> |cRXP_WARN_Benutzt den|r |T135992:0|t[Federkiel der Vogelkönigin] |cRXP_WARN_beim westlichen Flammenportal um zu beschwören|r |cRXP_ENEMY_Millagazor|r
    .use 69212
step
    .isOnQuest 29148
    .goto 198/1,-1500.700,4929.300
    .use 69212 >> Tötet |cRXP_ENEMY_Millagazor|r
    .complete 29148,1 -- Millagazor slain (1)
    .mob Millagazor
step
    .isOnQuest 29165
    #completewith next
    .goto 198,41.667,56.130
    .cast 97498 >> |cRXP_WARN_Benutzt den|r |T134298:0|t[Zerrender Biss of the Wolf] |cRXP_WARN_um zu beschwören|r |cRXP_ENEMY_Lylagar|r
    .use 69225
step
    .isOnQuest 29165
    .goto 198,41.667,56.130
    .use 69225 >> Tötet |cRXP_ENEMY_Lylagar|r
    .complete 29165,1 -- Lylagar slain (1)
    .mob Lylagar
step
    .isOnQuest 29122
    #completewith next
    .goto 198,24.014,55.803
    .gossip 52425,0 >>Sprecht mit |cRXP_FRIENDLY_Tooga|r um |cRXP_ENEMY_Nemesis|r zu beschwören
    .skipgossip
    .target Tooga
step
    #label KillNemesis
    .isOnQuest 29122
    .goto 198,24.760,55.259
    >>Tötet |cRXP_ENEMY_Nemesis|r
    >>|cRXP_WARN_Steht unter|cRXP_FRIENDLY_ Tooga's|r Schale, um euch vor|r |cRXP_ENEMY_Nemesis'|r |T135830:0|t[Glühender Zorn]|cRXP_WARN_-Kanalisierung zu schützen|r
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
    >>Plündert die |cRXP_LOOT_Blueroot Vines|r auf dem Boden
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
    >>Tötet |cRXP_ENEMY_Eindringlinge aus den Feuerlanden|r
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
    >>Tötet |cRXP_ENEMY_Eindringlinge aus den Feuerlanden|r
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
    >>Tötet |cRXP_ENEMY_Eindringlinge aus den Feuerlanden|r
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
    >>Tötet |cRXP_ENEMY_Eindringlinge aus den Feuerlanden|r
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
    >>Tötet |cRXP_ENEMY_Charred Flamewakers|r. Plündert sie für |cRXP_LOOT_Flamewaker Schuppen|r
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
    >>Tötet |cRXP_ENEMY_Fiery Behemoths|r und |cRXP_ENEMY_Seething Pyrelords|r
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
    >>Tötet |cRXP_ENEMY_Fiery Behemoths|r. Plündert sie für |cRXP_LOOT_Sulfur-Laced Wrappings|r
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
    >>Tötet |cRXP_ENEMY_Seething Pyrelords|r. Plündert sie für |cRXP_LOOT_Flame-Wreathed Herzen|r
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
    >>Tötet |cRXP_ENEMY_Fiery Behemoths|r und |cRXP_ENEMY_Seething Pyrelords|r
    .complete 29128,1 -- Invader slain at Sethria's Roost (6)
    .mob Fiery Behemoth
    .mob Seething Pyrelord
step
    .isQuestComplete 29162
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29162 >>Gebt die Quest Segen der Natur ab
step
    .isQuestComplete 29122
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29122 >>Gebt die Quest Echos von Nemesis ab
step
    .isQuestComplete 29126
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29126 >>Gebt die Quest Die Macht von Malorne ab
step
    .isQuestComplete 29165
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29165 >>Gebt die Quest Der Ruf des Rudels ab
step
    .isQuestComplete 29148
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29148 >>Gebt die Quest Flammende Schwingen ab
step
    .isQuestComplete 29166
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29166 >>Gebt die Quest Vorräte für die andere Seite ab
step
    .isQuestComplete 29123
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29123 >>Gebt die Quest Wut gegen die Flammen ab
step
    .isQuestComplete 29149
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29149 >>Gebt die Quest Wut gegen die Flammen ab
step
    .isQuestComplete 29127
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29127 >>Gebt die Quest Wut gegen die Flammen ab
step
    .isQuestComplete 29163
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29163 >>Gebt die Quest Wut gegen die Flammen ab
step
    .isQuestComplete 29246
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dorda'en Nightweaver|r
    .target Dorda'en Nightweaver
    .dailyturnin 29246 >>Gebt die Quest Linderung des Schmerzes ab
step
    .isQuestComplete 29247
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dorda'en Nightweaver|r
    .target Dorda'en Nightweaver
    .dailyturnin 29247 >>Gebt die Quest Versorgung der Wunden ab
step
    .isQuestComplete 29248
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dorda'en Nightweaver|r
    .target Dorda'en Nightweaver
    .dailyturnin 29248 >>Gebt die Quest Druckablassung ab
step
    #completewith RayneFeathersong
    .isQuestComplete 29128
    .goto 198,27.484,56.394
    .zone 338 >> Geht durch das Portal in die Feuerlande
step
    .isQuestTurnedIn 29215
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Avrilla|r
    .daily 29255,29257,29299 >>Akzeptiert eine beliebige tägliche Quest
    .target Avrilla
step
    #label RayneFeathersong
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rayne Feathersong|r
    .daily 29139,29143 >>Akzeptiert eine beliebige tägliche Quest
    .target Rayne Feathersong
step
    .isQuestTurnedIn 29282
    .goto 338,46.758,90.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ricket|r
    .daily 29263,29278,29295,29297 >> Akzeptiert eine beliebige tägliche Quest
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn |cRXP_FRIENDLY_Ricket|r heute keine Quest anbietet|r
    .target Ricket
step
    .goto 338,45.626,86.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Irontree|r
    .daily 29138 >>Akzeptiert die Quest Brandopfer
    .target Captain Irontree
step
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_General Taldris Mondsturz|r
    .daily 29179 >>Akzeptiert die Quest Feindselige Elemente
    .daily 29304,29141,29142,29137 >> Akzeptiert eine beliebige tägliche Quest
    .target General Taldris Moonfall
step
    .isQuestComplete 29128
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_General Taldris Mondsturz|r
    .dailyturnin 29128 >>Gebt die Quest Die Beschützer von Hyjal ab
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
    .use 69240 >> |cRXP_WARN_Benutzt den|r |T463860:0|t[Verzauberte Salbe] |cRXP_WARN_auf|r |cRXP_FRIENDLY_Verwundete Hyjal-Verteidiger|r
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
    >>Tötet |cRXP_ENEMY_Charred Soldiers|r und |cRXP_ENEMY_Charred Vanquishers|r. Plündert sie für |cRXP_LOOT_Embergris|r
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
    >>Tötet |cRXP_ENEMY_Charred Vanquishers|r und |cRXP_ENEMY_Charred Soldiers|r
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
    >>Tötet |cRXP_ENEMY_Charhounds|r und |cRXP_ENEMY_Ancient Charhounds|r
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
    >>Tötet |cRXP_ENEMY_Molten Behemoths|r
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
    >>Tötet |cRXP_ENEMY_Druide der Flamme|r
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
    >>Tötet |cRXP_ENEMY_Lava Bursters|r
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
    >>Sammelt |cRXP_PICK_Ash Piles|r vom Boden
    .complete 29139,1 -- Smothervine planted (5)
step -- Steal Magmolias 29257
    .isOnQuest 29257
    #label StealMagmolias
    #sticky
    #loop
    .goto 338,47.7,59.6,45,0
    .goto 338,41.5,43.6,45,0
    .goto 338,54.5,45.5,45,0
    >>Plündert |cRXP_LOOT_Magmolia|r in den kleinen Lavabecken
    >>|cRXP_WARN_Falls ein Lavabohrer nach dem Plündern eines erscheint, tötet es und plündert es für|r |cRXP_LOOT_Magmolia|r
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
    >>|cRXP_WARN_Take von Euch |cRXP_FRIENDLY_Crimson Peitscher|r und fight|r |cRXP_ENEMY_Emberspit Scorpions|r << !Hunter
    >>|cRXP_WARN_Werft|r |T135834:0|t[Eiskältefalle] |cRXP_WARN_auf einen |cRXP_ENEMY_Glutspeiskorpion|r. Es wirkt|r |T135826:0|t[Ember Pools] |cRXP_WARN_kontinuierlich, während euer |cRXP_FRIENDLY_Purpurpeitscher|r sie trinkt, sodass ihr diesen Tagesauftrag mit nur einem|r |cRXP_ENEMY_Glutspeiskorpion|r abschließen könnt << Hunter
    >>|cRXP_WARN_The |cRXP_ENEMY_Emberspit Scorpions|r will wirkt|r |T135826:0|t[Glutlaches] |cRXP_WARN_which von Euch |cRXP_FRIENDLY_Crimson Peitscher|r will drink|r
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
    >>Klickt |cRXP_PICK_Lava Blasen|r in den Lavabecken, um einen |cRXP_ENEMY_Unterirdischen Magmawurm|r hervorzurufen
    .use 69759 >>|cRXP_WARN_Wenn die Warnmeldung erscheint: "Der Wurm wird gleich zubeißen! Legt die Bombe jetzt ab!" benutzt|r |T133710:0|t[Die bittere Pille]
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
    >>Klickt |cRXP_PICK_Magnetic Stones|r, dann plündert die |cRXP_LOOT_Obsidium-Meteoriten|r, welche herunterfallen
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
    >>|cRXP_WARN_Nehmt den|cRXP_FRIENDLY_ Hyjal Irrwisch|r zum Feuerportal auf|r
    >>|cRXP_WARN_Tötet die Mobs, die daraus herauskommen. Sorgt dafür, dass|cRXP_FRIENDLY_ Hyjal Irrwisch|r nicht stirbt!|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29255 >>Gebt die Quest Embergris ab
    .target Avrilla
step
    .isQuestComplete 29257
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29257 >>Gebt die Quest Steal Magmolias ab
    .target Avrilla
step
    .isQuestComplete 29299
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29299 >>Gebt die Quest Some Like It Heiß ab
    .target Avrilla
step
    .isQuestComplete 29139
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rayne Feathersong|r
    .dailyturnin 29139 >>Gebt die Quest Aggressives Wachstum ab
    .target Rayne Feathersong
step
    .isQuestComplete 29143
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rayne Feathersong|r
    .dailyturnin 29143 >>Gebt die Quest Fort mit den Irrwischen ab
    .target Rayne Feathersong
step
    .isQuestComplete 29263
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Damek Bloombeard|r
    .dailyturnin 29263 >> Gebt die Quest A Bitter Pill ab
    .target Damek Bloombeard
step
    .isQuestComplete 29278
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Damek Bloombeard|r
    .dailyturnin 29278 >> Gebt die Quest Living Obsidium ab
    .target Damek Bloombeard
step
    .isQuestComplete 29295
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Damek Bloombeard|r
    .dailyturnin 29295 >> Gebt die Quest The Bigger They Are ab
    .target Damek Bloombeard
step
    .isQuestComplete 29297
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Damek Bloombeard|r
    .dailyturnin 29297 >> Gebt die Quest Tschö Tschö Burdy ab
    .target Damek Bloombeard
step
    .isQuestComplete 29179
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_General Taldris Mondsturz|r
    .dailyturnin 29179 >>Gebt die Quest Feindselige Elemente ab
    .target General Taldris Moonfall
step
    .isQuestComplete 29304
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_General Taldris Mondsturz|r
    .dailyturnin 29304 >> Gebt die Quest Die Hunde des Krieges ab
    .target General Taldris Moonfall
step
    .isQuestComplete 29141
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_General Taldris Mondsturz|r
    .dailyturnin 29141 >> Gebt die Quest Desto härter der Fallen ab
    .target General Taldris Moonfall
step
    .isQuestComplete 29142
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_General Taldris Mondsturz|r
    .dailyturnin 29142 >> Gebt die Quest Verräter Zurückkehren ab
    .target General Taldris Moonfall
step
    .isQuestComplete 29137
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_General Taldris Mondsturz|r
    .dailyturnin 29137 >> Gebt die Quest Durchbruch der Verteidigung ab
    .target General Taldris Moonfall
step
    .isQuestComplete 29138
    .goto 338,45.626,86.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Irontree|r
    .dailyturnin 29138 >>Gebt die Quest Brandopfer ab
    .target Captain Irontree
step
    .isQuestTurnedIn 29214
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_General Taldris Mondsturz|r
    .daily 29205 >>Akzeptiert die Quest Der Einsame Turm
    .target General Taldris Moonfall
step
    .isOnQuest 29205
    .goto 338,54.503,70.816,10,0
    .goto 338,66.301,65.137
    >>Beschützt einen der |cRXP_FRIENDLY_Druiden|r bei der Quest Der Einsame Turm
    >>Tötet den |cRXP_ENEMY_Pyrolord|r und die |cRXP_ENEMY_Flamewatch-Wächter|r am Ende
    .complete 29205,1 -- Druid Assault Group Protected
    .target Keeper Taldros
    .target Turak Runetotem
    .target Deldren Ravenelm
    .mob Pyrelord
    .mob Flamewatch Sentinel
step
    .goto 338,64.855,67.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marin Bladewing|r
    .dailyturnin 29205 >>Gebt die Quest Der Einsame Turm ab
    .daily 29211,29192 >>Akzeptiert eine beliebige tägliche Quest
    .target Marin Bladewing
step
    .isQuestTurnedIn 29272 -- Only offered if completed Druids questline
    .goto 338,66.259,66.141
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tholo Whitehoof|r
    >>|cRXP_WARN_Überspringt diesen Schritt, falls er diese Quest nicht anbietet|r
    .daily 29276 >>Akzeptiert die Quest Flammen-Spinnenkönigin
    .target Tholo Whitehoof
step -- Ricket @ WARDENS
    .isQuestTurnedIn 29282
    .goto 338,66.429,65.396
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ricket|r
    >>|cRXP_WARN_Überspringt diesen Schritt if she is not here|r
    .daily 29263,29278,29295,29297 >> Akzeptiert eine beliebige tägliche Quest
    .target Ricket
step
    .goto 338,66.100,63.908
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Deldren Ravenelm|r
    .daily 29189,29159,29160 >> Akzeptiert zwei beliebige Tagesquests, die angeboten werden
    .disablecheckbox
    .target Deldren Ravenelm
    .questcount <2,29189,29159,29160
step -- Solar Core Destruction 29211
    .isOnQuest 29211
    #label SolarCore
    #sticky
    .goto 338,70.815,38.196
    >>Klickt |cRXP_PICK_Solarkern|r
    .complete 29211,1 -- Solar Core detonated 1/1
step -- The Wardens are Watching 29192
    .isOnQuest 29192
    #label WardensWatching
    #sticky
    #loop
    .goto 338,71.6,44.6,30,0
    .goto 338,72.0,37.4,30,0
    .goto 338,68.8,41.4,30,0
    >>Greift |cRXP_ENEMY_Flammen-Druide|r an, bis er geschwächt ist, dann führt ihn in die |cRXP_FRIENDLY_Schatten-Wächter|r-Falle
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
    >>Tötet |cRXP_ENEMY_Cinderweb Creepers|r. Plündert sie für |cRXP_LOOT_Flame Toxin|r
    >>Tötet |cRXP_ENEMY_Cinderweb Spinners|r. Plündert sie für |cRXP_LOOT_Searing Gespinst Fluid|r
    >>|cRXP_WARN_Ihr werdet auch ihre |cRXP_LOOT_Flammen-Toxin|r und |cRXP_LOOT_Sengendes-Netz-Flüssigkeit|r passiv sammeln, während ihr ihnen Schaden zufügt|r
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
    >>Tötet die |cRXP_ENEMY_Cinderweb Cocoons|r
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
    >>Tötet |cRXP_ENEMY_Cinderweb Creepers|r und |cRXP_ENEMY_Cinderweb Spinners|r
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
    >>Öffnet |cRXP_PICK_Aschenweberei-Säcke|r. Plündert sie für die |cRXP_LOOT_Aschenweberei-Eier|r
    .complete 29160,1 -- Cinderweb Egg (20)
step -- 29297 Bye Bye Burdy -- WARDENS ONLY
    .isOnQuest 29297
    #label ByeByeBurdy
    #sticky
    #loop
    .goto 338,73.03,54.88,50,0
    .goto 338,73.82,38.28,50,0
    .goto 338,63.73,38.76,50,0
    .use 69832 >> |cRXP_WARN_Benutzt den|r |T135129:0|t[Vogelpiekser] |cRXP_WARN_auf |cRXP_ENEMY_Druiden der Flamme|r, die in der Luft fliegen|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Deldren Ravenelm|r
    .dailyturnin 29160 >> Gebt die Quest Ei-stinction ab
    .target Deldren Ravenelm
step
    .isQuestComplete 29159
    .goto 338,66.100,63.908
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Deldren Ravenelm|r
    .dailyturnin 29159 >> Gebt die Quest Pyrorachnophobia ab
    .target Deldren Ravenelm
step
    .isQuestComplete 29189
    .goto 338,66.100,63.908
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Deldren Ravenelm|r
    .dailyturnin 29189 >> Gebt die Quest Wicked Spinnweben ab
    .target Deldren Ravenelm
step
    .isQuestComplete 29192
    .goto 338,64.855,67.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marin Bladewing|r
    .dailyturnin 29192 >>Gebt die Quest Die Wächterinnen beobachten euch ab
    .target Marin Bladewing
step
    .isQuestComplete 29211
    .goto 338,64.855,67.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marin Bladewing|r
    .dailyturnin 29211 >>Gebt die Quest Zerstörung des Solarkerns ab
    .target Marin Bladewing
step
    .goto 338,64.855,67.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marin Bladewing|r
    .daily 29210 >> Akzeptiert die Quest Die Hitze ertragen
    .target Marin Bladewing
step -- this step will autoskip if they completed 29276 earlier
    .goto 338,65.959,66.093
    .isQuestTurnedIn 29272 -- Only offered if completed Druids questline
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Anren Shadowseeker|r
    >>|cRXP_WARN_Überspringt diesen Schritt if he is not here|r
    .daily 29275 >>Akzeptiert die Quest Fandrals Methoden
    .disablecheckbox
    .target Anren Shadowseeker
    .questcount <1,29275,29276
step -- Enduring the Heat 29210
    .isOnQuest 29210
    .goto 338,57.491,49.532
    >>|cRXP_WARN_Fällt hinab in die Feurigen Tiefen|r
    .complete 29210,1 -- All Flame Runes Destroyed 1/1
step
    .isOnQuest 29275
    #completewith next
    >>Plündert |cRXP_LOOT_Flammen-Druiden-Stab|r, |cRXP_LOOT_Flammen-Druiden-Zauberbuch|r, |cRXP_LOOT_Flammen-Druiden-Reagent-Beutel|r und |cRXP_LOOT_Flammen-Druiden-Götze|r
    >>|cRXP_WARN_Diese sind überall in den Feurigen Tiefen verteilt|r
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
    >>|cRXP_WARN_Folgt dem Pfeil herum und klickt die |cRXP_PICK_Flammen-Schutz-Runen|r auf dem Boden|r
    >>|cRXP_WARN_Das Klicken einer |cRXP_PICK_Flammen-Schutz-Rune|r wird alle angreifenden |cRXP_ENEMY_Instabilen Flameragers|r töten|r
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
    >>Plündert |cRXP_LOOT_Flammen-Druiden-Stab|r, |cRXP_LOOT_Flammen-Druiden-Zauberbuch|r, |cRXP_LOOT_Flammen-Druiden-Reagent-Beutel|r und |cRXP_LOOT_Flammen-Druiden-Götze|r
    >>|cRXP_WARN_Diese sind überall in den Feurigen Tiefen verteilt|r
    .complete 29275,1 -- Flame Druid Staff 1/1
    .complete 29275,2 -- Flame Druid Spellbook 1/1
    .complete 29275,3 -- Flame Druid Reagent Pouch 1/1
    .complete 29275,4 -- Flame Druid Idol 1/1
step
    .isQuestComplete 29210
    .goto 338,57.742,49.502
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Theresa Baumrinde|r
    .dailyturnin 29210 >> Gebt die Quest Die Hitze ertragen ab
    .target Theresa Barkskin
step
    .isQuestTurnedIn 29284
    .goto 338,57.518,49.478
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shalis Darkhunter|r
    .daily 29243 >>Akzeptiert die Quest Angriff auf das Herz
    .target Shalis Darkhunter
step
    .isOnQuest 29243
    .goto 338,50.343,23.036
    >>Tötet einen der |cRXP_ENEMY_Lieutenants of Flamme|r
    .complete 29243,1 -- Lieutenant of Flame slain
    .mob Ancient Charscale
    .mob Ancient Smoldering Behemoth
    .mob Ancient Firelord
    .mob Cinderweb Queen
    .mob Devout Harbinger
step
    .isQuestComplete 29276
    .goto 338,51.245,85.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Anren Shadowseeker|r
    .dailyturnin 29276 >> Gebt die Quest Flammen-Spinnenkönigin ab
    .target Anren Shadowseeker
step
    .isQuestComplete 29275
    .goto 338,51.547,85.511
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tholo Whitehoof|r
    .dailyturnin 29275 >> Gebt die Quest Fandrals Methoden ab
    .target Tholo Whitehoof
step
    .isQuestComplete 29297
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Damek Bloombeard|r
    .dailyturnin 29297 >> Gebt die Quest Tschö Tschö Burdy ab
    .target Damek Bloombeard
step
    .isQuestComplete 29243
    .goto 338,47.584,90.552
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Saynna Stormrunner|r
    .dailyturnin 29243 >>Gebt die Quest Angriff auf das Herz ab
    .target Captain Saynna Stormrunner

--Calling the Ancients unlock
step
    .isQuestTurnedIn 29182 -- Druids prereq
    .isQuestTurnedIn 29215 -- Warden prereq
    .goto 338,44.434,88.790
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Varlan Highbough|r
    .accept 29283 >>Akzeptiert die Quest Rufen der Urtume
    .target Varlan Highbough
step
    #optional
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >> Portal nehmen zum Hyjal
    .zoneskip 338,1
step
    .isQuestComplete 29283
    .goto 198,26.005,61.302
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elderlimb|r
    .turnin 29283 >>Gebt die Quest Rufen der Urtume ab
    .target Elderlimb
step
    .isQuestTurnedIn 29283
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .accept 29284 >>Akzeptiert die Quest Hilfe der Urtume
step
    #optional
    #completewith WardenEnd
    .isOnQuest 29284
    .goto 198,27.484,56.394
    .zone 338 >> Geht durch das Portal in die Feuerlande
step
    .isOnQuest 29284
    .goto 338,43.812,88.964
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elderlimb|r
    .turnin 29284 >>Gebt die Quest Hilfe der Urtume ab
    .target Elderlimb
step
    .isQuestTurnedIn 29284
    .goto 338,51.713,81.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shalis Darkhunter|r
    .daily 29243 >>Akzeptiert die Quest Angriff auf das Herz
    .target Shalis Darkhunter
step
    .isOnQuest 29243
    .goto 338,50.343,23.036
    >>Tötet einen der |cRXP_ENEMY_Lieutenants of Flamme|r
    .complete 29243,1 -- Lieutenant of Flame slain
    .mob Ancient Charscale
    .mob Ancient Smoldering Behemoth
    .mob Ancient Firelord
    .mob Cinderweb Queen
    .mob Devout Harbinger
 step
    .isQuestComplete 29243
    .goto 338,47.584,90.552
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Saynna Stormrunner|r
    .dailyturnin 29243 >>Gebt die Quest Angriff auf das Herz ab
    .target Captain Saynna Stormrunner
--Complete Calling the Ancients unlock

--Additional Armaments unlock
step
    .isQuestTurnedIn 29182 -- Druids prereq
    .isQuestTurnedIn 29215 -- Warden prereq
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Damek Bloombeard|r
    .accept 29281 >>Akzeptiert die Quest Verstärkung
    .target Damek Bloombeard
step
    #optional
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >> Portal nehmen zum Hyjal
    .zoneskip 338,1
step
    .isQuestComplete 29281
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .turnin 29281 >>Gebt die Quest Verstärkung ab
    .accept 29282 >>Akzeptiert die Quest Gut bewaffnet
step
    .isQuestTurnedIn 29281
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .accept 29282 >>Akzeptiert die Quest Gut bewaffnet
step
    #optional
    #completewith next
    .isOnQuest 29282
    .goto 198,27.484,56.394
    .zone 338 >> Geht durch das Portal in die Feuerlande
step
    .isOnQuest 29282
    .goto 338,46.758,90.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ricket|r
    .target Ricket
    .turnin 29282 >>Gebt die Quest Gut bewaffnet ab
step
    .isQuestTurnedIn 29282
    .goto 338,46.758,90.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ricket|r
    .daily 29263,29278,29295,29297 >> Akzeptiert eine beliebige tägliche Quest
    .target Ricket
step -- 29263 A Bitter Pill
    .isOnQuest 29263
    #loop
    .goto 338,43.8,46.8,50,0
    .goto 338,53.6,41.8,50,0
    .goto 338,55.6,54.6,50,0
    .goto 338,44.8,54.4,50,0
    >>Klickt |cRXP_PICK_Lava Blasen|r in den Lavabecken, um einen |cRXP_ENEMY_Unterirdischen Magmawurm|r hervorzurufen
    .use 69759 >>|cRXP_WARN_Wenn die Warnmeldung erscheint: "Der Wurm wird gleich zubeißen! Legt die Bombe jetzt ab!" benutzt|r |T133710:0|t[Die bittere Pille]
    .complete 29263,1 -- Subterranean Magma Worm slain 1/1
    .mob Subterranean Magma Worm
step -- 29278 Living Obsidium
    .isOnQuest 29278
    #loop
    .goto 338,41.5,49.8,50,0
    .goto 338,46.6,43.1,50,0
    .goto 338,54.6,43.8,50,0
    .goto 338,51.5,51.2,50,0
    >>Klickt |cRXP_PICK_Magnetic Stones|r, dann plündert die |cRXP_LOOT_Obsidium-Meteoriten|r, welche herunterfallen
    .complete 29278,1 -- Obsidium Meteorite (10)
    .target Magnetic Stone
step -- 29295 The Bigger They Are -- DRUIDS ONLY
    .isOnQuest 29295
    #loop
    .goto 338,29.7,28.5,50,0
    .goto 338,16.8,32.5,50,0
    .goto 338,19.5,49.5,50,0
    .goto 338,32.7,43.6,50,0
    >>Tötet |cRXP_ENEMY_Obsidium Punishers|r. Beute their |cRXP_LOOT_Living Obsidium Splitter|r debris auf dem Boden nach
    .complete 29295,1 -- Living Obsidium Chip (10)
    .mob Obsidium Punisher
step -- 29297 Bye Bye Burdy -- WARDENS ONLY
    .isOnQuest 29297
    #loop
    .goto 338,73.03,54.88,50,0
    .goto 338,73.82,38.28,50,0
    .goto 338,63.73,38.76,50,0
    .use 69832 >> |cRXP_WARN_Benutzt den|r |T135129:0|t[Vogelpiekser] |cRXP_WARN_auf |cRXP_ENEMY_Druiden der Flamme|r, die in der Luft fliegen|r
    .complete 29297,1 -- Druids of the Flame in Fire Crow form slain (3)
    .mob Druid of the Flame
step
    .isQuestComplete 29263
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Damek Bloombeard|r
    .dailyturnin 29263 >> Gebt die Quest A Bitter Pill ab
    .target Damek Bloombeard
step
    .isQuestComplete 29278
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Damek Bloombeard|r
    .dailyturnin 29278 >> Gebt die Quest Living Obsidium ab
    .target Damek Bloombeard
step
    .isQuestComplete 29295
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Damek Bloombeard|r
    .dailyturnin 29295 >> Gebt die Quest The Bigger They Are ab
    .target Damek Bloombeard
step
    .isQuestComplete 29297
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Damek Bloombeard|r
    .dailyturnin 29297 >> Gebt die Quest Tschö Tschö Burdy ab
    .target Damek Bloombeard
--Complete Additional Armaments unlock

--Filling the Moonwell unlock
step
    .goto 338,44.087,86.321
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ayla Schattensturm|r
    .accept 29279 >>Akzeptiert die Quest Befüllung des Mondbrunnens
    .target Ayla Shadowstorm
step
    #optional
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >> Portal nehmen zum Hyjal
    .zoneskip 338,1
step
    .isQuestComplete 29279
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .turnin 29279 >> Gebt die Quest Befüllung des Mondbrunnens ab
    .accept 29280 >> Akzeptiert die Quest Lebensspendende Wasser
    .target Matoclaw
step
    .isQuestTurnedIn 29279
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matoclaw|r
    .accept 29280 >> Akzeptiert die Quest Lebensspendende Wasser
    .target Matoclaw
step
    #optional
    #completewith next
    .isOnQuest 29280
    .goto 198,27.484,56.394
    .zone 338 >> Geht durch das Portal in die Feuerlande
step
    .isOnQuest 29280
    .goto 338,44.087,86.321
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ayla Schattensturm|r
    .target Ayla Shadowstorm
    .turnin 29280 >>Gebt die Quest Lebensspendende Wasser ab
step
    .isQuestTurnedIn 29280
    .goto 338,47.022,91.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Malfurion Sturmgrimm|r
    .target Malfurion Stormrage
    .accept 29203 >> Akzeptiert die Quest In die Tiefen
step
    .isOnQuest 29203
    #completewith next
    .goto 338,57.491,49.532,15 >>Betretet die Feurigen Tiefen
step
    .isOnQuest 29203
    .goto 338,64.615,59.216
    >>Tötet |cRXP_ENEMY_Leyara|r
    .complete 29203,1 -- Leyara slain 1/1
    .mob Leyara
step
    .isQuestComplete 29203
    #completewith next
    .goto 338,57.491,49.532,15 >>Verlasst die Feurigen Tiefen
    .subzoneskip 5741,1
step
    .isQuestComplete 29203
    .goto 338,47.022,91.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Malfurion Sturmgrimm|r
    .target Malfurion Stormrage
    .turnin 29203 >> Gebt die Quest In die Tiefen ab
step
    .isQuestTurnedIn 29203
    >>|cRXP_WARN_Ihr werdet jetzt Post von |cRXP_FRIENDLY_Theresa Baumrinde|r mit einem|r |T514925:0|t[|cRXP_LOOT_Verrußtes Medaillon|r]
    .use 69854 >>|cRXP_WARN_Benutzt das|r |T514925:0|t[|cRXP_LOOT_Verrußtes Medaillon|r] |cRXP_WARN_um die Quest zu starten|r
    .collect 69854,1,29298,1 -- Smoke-Stained Locket (1)
    .accept 29298 >> Akzeptiert die Quest Verrußtes Medaillon
step
    #optional
    #completewith SecretsWithin
    .goto 338,53.026,83.693
    .zone 198 >> Portal nehmen zum Hyjal
    .zoneskip 338,1
step
    .isQuestTurnedIn 29203
    #completewith next
    .zone Moonglade >> Reist zur Mondlichtung
step
    #label SecretsWithin
    .isQuestTurnedIn 29203
    .goto Moonglade,51.685,45.098
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rabine Saturna|r
    .turnin 29298 >> Gebt die Quest Verrußtes Medaillon ab
    .accept 29302 >> Akzeptiert die Quest Aufdecken verborgener Geheimnisse
    .timer 42,Aufdecken verborgener Geheimnisse RP
    .target Rabine Saturna
step
    .isQuestTurnedIn 29203
    >>Warte auf das RP
    .complete 29302,1 -- Look into Leyara's memories 1/1
step
    .isQuestTurnedIn 29203
    .goto Moonglade,51.685,45.098
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rabine Saturna|r
    .turnin 29302 >> Gebt die Quest Aufdecken verborgener Geheimnisse ab
    .accept 29303 >> Akzeptiert die Quest Tragödie und Familie
    .target Rabine Saturna
step
    .isOnQuest 29303
    #completewith next
    .zone Ashenvale >> Reist nach Eschental
step
    .isOnQuest 29303
    .goto Ashenvale,40.501,53.281
    .cast 6247 >> Klickt |cRXP_PICK_Night Elf Grave|r
    .timer 48,Tragedy und Family RP
    .skipgossip
step
    .isOnQuest 29203
    .goto Ashenvale,40.501,53.281
    >>Warte auf das RP
    .complete 29303,1 -- Look deeper into Leyara's memories 1/1
    .skipgossip
step
    .isQuestTurnedIn 29203
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .turnin 29303 >> Gebt die Quest Tragödie und Familie ab
    .accept 29310 >> Akzeptiert die Quest Die Trendwende
step
    .isOnQuest 29310
    #completewith next
    .zone 198 >> Reist nach Hyjal
step
    .isOnQuest 29310
    .goto 198,7.561,34.582
    .cast 6247 >> Klickt |cRXP_PICK_Small Gravestone|r
    .timer 59,Die Trendwende RP
    .skipgossip
step
    .isOnQuest 29310
    .goto 198,7.561,34.582
    >>Warte auf das RP
    .complete 29310,1 -- Look deeper into Leyara's memories 1/1
    .skipgossip
step
    .isQuestTurnedIn 29203
    >>Klickt das Quest-Abgeben-Pop-Up in eurem Questtagebuch an
    .turnin 29310 >> Gebt die Quest Die Trendwende ab
    .accept 29311 >> Akzeptiert die Quest Der Ausruhen ist Geschichte
step
    #optional
    #completewith next
    .isOnQuest 29311
    .goto 198,27.484,56.394
    .zone 338 >> Geht durch das Portal in die Feuerlande
step
    .isOnQuest 29311
    .goto 338,47.022,91.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Malfurion Sturmgrimm|r
    .turnin 29311 >> Gebt die Quest Der Ausruhen ist Geschichte ab
    .target Malfurion Stormrage
--Complete Filling the Moonwell

step
    #optional
    .isQuestTurnedIn 29284
    .isQuestTurnedIn 29282
    .isQuestTurnedIn 29311
    .goto 338,46.932,90.984
    +Glückwunsch zum Freischalten der Geschmolzenen Front! Fahrt fort, um entweder (|cRXP_ENEMY_2.5|r - The Geschmolzene Front + Druiden) oder (|cRXP_PICK_2.5|r - The Geschmolzene Front + Wardens) abzuschließen, um mehr |T513195:0|t[Marks of the Welt Baum] zu verdienen
    >>|cRXP_FRIENDLY_Zen'Vorka|r verkauft |T133654:0|t[|cRXP_FRIENDLY_Zen'Vorka-Truhe|r] für 30 |T513195:0|t[Marks of the Welt Baum], die einen zufälligen grünen Gegenstand oder den seltenen Begleiter |T294481:0|t[|cFF0070FFVerbrannter Stein|r] enthalten kann
    .target Zen'Vorka

step
    #label WardenEnd
    +|cRXP_WARN_Ihr habt alle verfügbaren täglichen Quests für heute abgeschlossen. Ladet diesen Leitfaden morgen neu (|r|cRXP_PICK_2.5|r - Geschmolzene Front + Wardens|cRXP_WARN_) um die täglichen Quests weiterhin abzuschließen, bis ihr genug|r |T513195:0|t[Marken des Weltbaums] gesammelt habt
]])
