if GetLocale() ~= "ptBR" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Alliance' then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 1-6 Sunstrider Isle
#next 6-10 Bosques do Canto Eterno
#version 1
--#group RXP Cataclysm (H) << cata
#defaultfor BloodElf
#group RXP Cataclismo 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000


step
    #label SunstriderIsleFirstQuestCheck
    .goto Eversong Woods,38.02,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Magistra Erona|r
    .accept 8325 >>Aceite Retomada da Ilha Andassol
    .target Magistrix Erona
step
    #loop
    .goto Eversong Woods,37.70,23.26,0
    .goto Eversong Woods,37.70,23.26,30,0
    .goto Eversong Woods,38.21,24.56,30,0
    .goto Eversong Woods,37.62,25.77,30,0
    .goto Eversong Woods,37.30,24.54,30,0
    >>Mate os |cRXP_ENEMY_Mana Wyrms|r
    .complete 8325,1 --6/6 Mana Wyrm slain
    .mob Mana Wyrm
step
    .goto Eversong Woods,38.02,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Magistra Erona|r
    .turnin 8325 >>Entregue Retomada da Ilha Andassol
    .accept 8326 >>Aceite Medidas Drásticas
    .target Magistrix Erona
step
    #loop
    .goto Eversong Woods,39.13,19.06,0
    .goto Eversong Woods,39.13,19.06,30,0
    .goto Eversong Woods,40.36,17.88,30,0
    .goto Eversong Woods,40.54,16.43,30,0
    .goto Eversong Woods,40.05,20.44,30,0
    .goto Eversong Woods,39.32,22.18,30,0
    >>Mate os |cRXP_ENEMY_Springpaw Cubs|r e os |cRXP_ENEMY_Lince Garrataque|r. Saqueie-os pelos seus |cRXP_LOOT_Collars|r
    .complete 8326,1 --8/8 Lynx Collar
    .mob Springpaw Cub
    .mob Springpaw Lynx
step
    #loop
    .goto Eversong Woods,39.13,19.06,0
    .goto Eversong Woods,39.13,19.06,30,0
    .goto Eversong Woods,40.36,17.88,30,0
    .goto Eversong Woods,40.54,16.43,30,0
    .goto Eversong Woods,40.05,20.44,30,0
    .goto Eversong Woods,39.32,22.18,30,0
    .xp 2+650 >>Suba até 650/900 de XP
step
    .goto Eversong Woods,38.02,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Magistra Erona|r
    .turnin 8326 >>Entregue Medidas Drásticas
    .accept 8327 >>Aceite Apresente-se a Lanthan Perilon
    .accept 31170 >>Aceite Treinamento de Monge << Monk
    .accept 9393 >>Aceite Treinamento de Caçador << Hunter
    .accept 8328 >>Aceite Treinamento de Mago << Mage
    .accept 9676 >>Aceite Treinamento de Paladino << Paladin
    .accept 8564 >>Aceite Treinamento de Sacerdote << Priest
    .accept 9392 >>Aceite Treinamento de Ladino << Rogue
    .accept 8563 >>Aceite Treinamento de Bruxo << Warlock
    .accept 8329 >>Aceite Treinamento de Guerreiro << Warrior
    .target Magistrix Erona
step << Monk
    .goto 467/0,-3998.000,7978.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pao|r
    .turnin 31170 >>Entregue Treinamento de Monge
    .accept 31171 >>Aceite Palma do Tigre
    .target Pao
step << Hunter
    .goto Eversong Woods,39.05,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Patrulheira Sallina|r
    .turnin 9393 >>Entregue Treinamento de Caçador
    .accept 10070 >>Aceite Tiro Firme
    .train 56641 >>Treine |T132213:0|t[Tiro Firme] << Cata
    .target Ranger Sallina
step << Mage cata
    .goto Eversong Woods,39.23,21.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Julia Golpessol|r
    .turnin 8328 >>Entregue Treinamento de Mago
    .accept 10068 >>Aceite Mísseis Arcanos
    .train 5143 >>Treine |T136096:0|t[Mísseis Arcanos] << Cata
    .target Julia Sunstriker
step << Mage !cata
    .goto Eversong Woods,39.23,21.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Julia Golpessol|r
    .turnin 8328 >>Entregue Treinamento de Mago
    .accept 10068 >>Aceite Novane Congelante
    .target Julia Sunstriker
step << Paladin
    .goto Eversong Woods,39.47,20.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jesthenis Golpessol|r
    .turnin 9676 >>Entregue Treinamento de Paladino
    .accept 10069 >>Aceite Os Caminhos da Luz
    .train 20271 >>Aprenda |T135959:0|t[Julgamento] << Cata
    .train 20154 >>Treine |T135960:0|t[Selo da Retidão] << Cata
    .target Jesthenis Sunstriker
step << Priest cata
    .goto Eversong Woods,39.41,20.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Máter Arena|r
    .turnin 8564 >>Entregue Treinamento de Sacerdote
    .accept 10072 >>Aceite Cura o Ferido
    .train 2061 >>Treine |T135907:0|t[Cura Célere] << Cata
    .target Matron Arena
step << Priest !cata
    .goto Eversong Woods,39.41,20.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Máter Arena|r
    .turnin 8564 >>Entregue Treinamento de Sacerdote
    .accept 10072 >>Aceite Aprenda a Palavra
    .target Matron Arena
step << Rogue
    .goto Eversong Woods,38.93,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pathstalker Avokor|r
    .turnin 9392 >>Entregue Treinamento de Ladino
    .accept 10071 >>Aceite Eviscerar
    .train 2098 >>Treine |T132292:0|t[Eviscerar] << Cata
    .target Pathstalker Avokor
step << Warlock cata
    .goto Eversong Woods,38.94,21.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Evocador Teli'Larien|r
    .turnin 8563 >>Entregue Treinamento de Bruxo
    .accept 10073 >>Aceite Imolação
    .train 348 >>Treine |T135817:0|t[Imolação] << Cata
    .target Summoner Teli'Larien
step << Warlock !cata
    .goto Eversong Woods,38.94,21.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Evocador Teli'Larien|r
    .turnin 8563 >>Entregue Treinamento de Bruxo
    .accept 10073 >>Aceite Corrupção
    .target Summoner Teli'Larien
step << Warrior
    .goto Eversong Woods,39.29,20.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Delios Espadargenta|r
    .turnin 8329 >>Entregue Treinamento de Guerreiro
    .accept 27091 >>Aceite Investida!
    .train 100 >>Treine |T132337:0|t[Carga] << Cata
    .target Delios Silverblade
step << Monk
    .goto Eversong Woods,38.34,20.64
	>>Use |T606551:0|t[Palma do Tigre] em um |cRXP_ENEMY_Boneco de Treinamento|r lá fora
	.complete 31171,2 --Cast Tiger Palm
	.mob Training Dummy
step << Hunter
    .goto Eversong Woods,38.34,20.64
	>>Use |T132213:0|t[Tiro firme] em um |cRXP_ENEMY_Boneco de Treinamento|r fora
	.complete 10070,2 << !Cata --Cast Steady Shot
	.complete 10070,1 << Cata --Cast Steady Shot
	.mob Training Dummy
step << Mage cata
    .goto Eversong Woods,38.34,20.64
	>>Use |T136096:0|t[Mísseis Arcanos] em um |cRXP_ENEMY_Boneco de Treinamento|r fora
	.complete 10068,1 << Cata --Cast Arcane Missiles
	.mob Training Dummy
step << Mage !cata
    .goto Eversong Woods,38.34,20.64
	>>Use |T135848:0|t[Novane Congelante] em um |cRXP_ENEMY_Boneco de Treinamento|r fora
	.complete 10068,2 --Cast Frost Nova
	.mob Training Dummy
step << Paladin cata
    .goto Eversong Woods,38.34,20.64
	>>Use |T135960:0|t[Selo da Retidão] em você, depois use |T135959:0|t[Julgamento] em um |cRXP_ENEMY_Boneco de Treinamento|r fora
	.complete 10069,1 << Cata --Cast Judgement
	.mob Training Dummy
step << Paladin !cata
    .goto Eversong Woods,38.34,20.64
	>>Use |T135961:0|t[Selo de Comando], depois ataque um |cRXP_ENEMY_Boneco de Treinamento|r fora
	.complete 10069,2
	.mob Training Dummy
step << Priest cata
    .goto Eversong Woods,39.49,20.29
	>>Use |T135907:0|t[Cura Célere] em um |cRXP_ENEMY_Vanguardeiro Ferido|r
	.complete 10072,1 --Cast Flash Heal
	.target Wounded Outrunner
 step << Priest !cata
    .goto Eversong Woods,38.34,20.64
	>>Use |T136207:0|t[Palavra Sombria: Dor] em um |cRXP_ENEMY_Boneco de Treinamento|r fora
	.complete 10072,2 --Cast Shadow Word: Pain
	.mob Training Dummy
step << Rogue
    .goto Eversong Woods,38.34,20.64
	>>Use |T132292:0|t[Eviscerar] em um |cRXP_ENEMY_Boneco de Treinamento|r fora
	.complete 10071,2 << !Cata --Cast Eviscerate
	.complete 10071,1 << Cata --Cast Eviscerate
	.mob Training Dummy
step << Warlock cata
    .goto Eversong Woods,38.34,20.64
	>>Use |T135817:0|t[Imolação] em um |cRXP_ENEMY_Boneco de Treinamento|r fora
	.complete 10073,1 --Cast Immolate
	.mob Training Dummy
step << Warlock !cata
    .goto Eversong Woods,38.34,20.64
	>>Use |T136118:0|t[Corrupção] em um |cRXP_ENEMY_Boneco de Treinamento|r fora
	.complete 10073,2 --Cast Corruption
	.mob Training Dummy
step << Warrior
    .goto Eversong Woods,38.34,20.64
	>>Use |T132337:0|t[Investida] em um |cRXP_ENEMY_Boneco de Treinamento|r fora
	.complete 27091,2 << !Cata --Cast Charge
	.complete 27091,1 << Cata --Cast Charge
	.mob Training Dummy
step << Monk
    .goto 467/0,-3998.200,7978.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pao|r
    .turnin 31171 >>Entregue Palma do Tigre
    .target Pao
step << Hunter
    .goto Eversong Woods,39.05,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Patrulheira Sallina|r
    .turnin 10070 >>Entregue Tiro Firme
    .target Ranger Sallina
step << Mage cata
    .goto Eversong Woods,39.23,21.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Julia Golpessol|r
    .turnin 10068 >>Entregue Mísseis Arcanos
    .target Julia Sunstriker
step << Mage !cata
    .goto Eversong Woods,39.23,21.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Julia Golpessol|r
    .turnin 10068 >>Entregue Novane Congelante
    .target Julia Sunstriker
step << Paladin
    .goto Eversong Woods,39.47,20.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jesthenis Golpessol|r
    .turnin 10069 >>Entregue Os Caminhos da Luz
    .target Jesthenis Sunstriker
step << Priest cata
    .goto Eversong Woods,39.41,20.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Máter Arena|r
    .turnin 10072 >>Entregue Cura do Ferido
    .target Matron Arena
step << Priest !cata
    .goto Eversong Woods,39.41,20.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Máter Arena|r
    .turnin 10072 >>Entregue Aprenda a Palavra
    .target Matron Arena
step << Rogue
    .goto Eversong Woods,38.93,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pathstalker Avokor|r
    .turnin 10071 >>Entregue Eviscerar
    .target Pathstalker Avokor
step << Warlock cata
    .goto Eversong Woods,38.94,21.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Evocador Teli'Larien|r
    .turnin 10073 >>Entregue Imolação
    .target Summoner Teli'Larien
step << Warlock !cata
    .goto Eversong Woods,38.94,21.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Evocador Teli'Larien|r
    .turnin 10073 >>Entregue Corrupção
    .target Summoner Teli'Larien
step << Warrior
    .goto Eversong Woods,39.29,20.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Delios Espadargenta|r
    .turnin 27091 >>Entregue Investida!
    .target Delios Silverblade
step
    #completewith next
    .goto Eversong Woods,39.44,21.16,10,0
    .goto Eversong Woods,39.44,20.35,10,0
    .goto Eversong Woods,39.10,20.04,10 >>Suba
step
    .goto Eversong Woods,38.97,20.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Vigia da Nascente Solanian|r
    .accept 8330 >>Aceite Os Pertences de Solanian
    .accept 8345 >>Aceite O Altar de Dath'Remar
    .target Well Watcher Solanian
step
    .goto Eversong Woods,38.27,19.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arcanista Ithanas|r
    .accept 8336 >>Aceite Um Punhado de Lascas
    .target Arcanist Ithanas
step
    .goto Eversong Woods,37.18,18.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arcanista Helion|r
    .accept 8346 >>Aceite Sede Eterna
    .target Arcanist Helion
step
    #completewith Journal
    >>Use |T136222:0|t[Torrente Arcana] quando em alcance de corpo a corpo de um |cRXP_ENEMY_Moreia de Mana|r
    >>Mate os |cRXP_ENEMY_Moreias de Mana|r e os |cRXP_ENEMY_Feral Tenders|r. Saque-os pelos seus |cRXP_LOOT_Slivers|r
    .complete 8346,1 --Cast Arcane Torrent on Mana Wyrm (x1)
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .mob Mana Wyrm
    .mob Feral Tender
step
    .goto Eversong Woods,35.37,22.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lanthan Perilon|r
    .turnin 8327 >>Entregue Apresente-se a Lanthan Perilon
    .accept 8334 >>Aceite Agressão
    .target Lanthan Perilon
step
    #label Journal
    .goto Eversong Woods,37.70,24.91
    >>Saque o |cRXP_PICK_Diário|r no chão
    .complete 8330,3 --Collect Solanian's Journal (x1)
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Tenders|r e os |cRXP_ENEMY_Feral Tenders|r. Saque-os pelos seus |cRXP_LOOT_Slivers|r
    .complete 8334,1 --Kill Tender (x7)
    .complete 8334,2 --Kill Feral Tender (x7)
    .complete 8336,1--Collect Arcane Sliver (x6)
    .mob Tender
    .mob Feral Tender
step
    #label RedOrb
    .goto Eversong Woods,35.14,28.89
    >>Saque o |cRXP_PICK_Vidência Orbe|r na plataforma
    .complete 8330,1 --Collect Solanian's Scrying Orb (x1)
step
    #loop
	.line Eversong Woods,33.92,26.49,33.97,28.55,35.15,29.78,36.52,29.35,35.58,27.42,33.92,26.49
	.goto Eversong Woods,33.92,26.49,40,0
	.goto Eversong Woods,33.97,28.55,40,0
	.goto Eversong Woods,35.15,29.78,40,0
	.goto Eversong Woods,36.52,29.35,40,0
	.goto Eversong Woods,35.58,27.42,40,0
	.goto Eversong Woods,33.92,26.49,40,0
    >>Mate os |cRXP_ENEMY_Tenders|r e os |cRXP_ENEMY_Feral Tenders|r. Saque-os pelos seus |cRXP_LOOT_Slivers|r
    .complete 8334,1 --Kill Tender (x7)
    .mob +Tender
    .complete 8334,2 --Kill Feral Tender (x7)
    .mob +Feral Tender
    .complete 8336,1--Collect Arcane Sliver (x6)
step
    #label Aggression
    .goto Eversong Woods,35.37,22.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lanthan|r
    .turnin 8334 >>Entregue Agressão
    .accept 8335 >>Aceite Felendren, o Banido
    .target Lanthan Perilon
step
    #completewith RunRamp
    >>Mate os |cRXP_ENEMY_Feral Tenders|r. Saque-os pelos seus |cRXP_LOOT_Slivers|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .mob Feral Tender
step
    #label Shrine
    .goto Eversong Woods,29.61,19.38
    >>Clique em |cRXP_PICK_Altar de Dath'Remar|r
    .complete 8345,1 --Collect Shrine of Dath'Remar Read (x1)
step
    .goto Eversong Woods,31.33,22.74
    >>Saque o |cRXP_PICK_Pergaminho|r no chão
    .complete 8330,2 --Collect Scroll of Scourge Magic (x1)
step
    #label RunRamp
    #completewith next
    .goto Eversong Woods,32.57,25.53,20,0
    .goto Eversong Woods,32.02,26.09,20 >>Suba a rampa
step
    #completewith Academy
    >>Abate a |cRXP_ENEMY_Aparição Arcana Maculada|r. Saque a |T132884:0|t[|cRXP_LOOT_Lasca Arcana Maculada|r].
    >>|cRXP_WARN_Use a |T132884:0|t[|cRXP_LOOT_Lasca Arcana Maculada|r] para começar a missão|r
    .collect 20483,1,8338,1 --Tainted Arcane Sliver (1)
    .accept 8338 >>Aceite Lasca Arcana Maculada
    .mob Tainted Arcane Wraith
    .use 20483
step
    #label Academy
    .goto Eversong Woods,30.79,25.37,20,0
    .goto Eversong Woods,29.35,24.44,20,0
    .goto Eversong Woods,29.32,26.24,20,0
    .goto Eversong Woods,30.75,26.30,10,0
    .goto Eversong Woods,30.13,26.42,10,0
    .goto Eversong Woods,30.09,27.41,10,0
    .goto Eversong Woods,30.48,27.90,10,0
    .goto Eversong Woods,30.84,27.13
    >>Mate os |cRXP_ENEMY_Arcano Espectros|r e os |cRXP_ENEMY_Maculado Arcano Espectros|r ao subir pela Academia. Saque-os para obter os |cRXP_LOOT_Lascas|r.
    >>Mate |cRXP_ENEMY_Felendren, o Banido|r no topo. Saque-o para obter a |cRXP_LOOT_Cabeça|r.
    .complete 8335,1 --Kill Arcane Wraith (x8)
    .complete 8335,2 --Kill Tainted Arcane Wraith (x2)
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .complete 8335,3 --Collect Felendren's Head (x1)
    .mob Arcane Wraith
    .mob Tainted Arcane Wraith
    .mob Felendren the Banished
step
    .goto Eversong Woods,30.84,27.13
    >>Abate a |cRXP_ENEMY_Aparição Arcana Maculada|r. Saque a |T132884:0|t[|cRXP_LOOT_Lasca Arcana Maculada|r].
    >>|cRXP_WARN_Use a |T132884:0|t[|cRXP_LOOT_Lasca Arcana Maculada|r] para começar a missão|r
    .collect 20483,1,8338,1 --Tainted Arcane Sliver (1)
    .accept 8338 >>Aceite Lasca Arcana Maculada
    .mob Tainted Arcane Wraith
    .use 20483
step
    #completewith SolanianB
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Mana Wyrms|r. Saque-os para obter as |cRXP_LOOT_Lascas|r.
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .mob Mana Wyrm
step
    #loop
    .goto Eversong Woods,36.79,19.88,0
    .goto Eversong Woods,36.79,19.88,40,0
    .goto Eversong Woods,34.64,18.82,40,0
    .goto Eversong Woods,33.78,19.46,40,0
    .goto Eversong Woods,34.17,20.59,40,0
    >>Use |T136222:0|t[Torrente Arcana] quando em alcance de corpo a corpo de um |cRXP_ENEMY_Moreia de Mana|r
    .complete 8346,1 --Cast Arcane Torrent on Mana Wyrm (x1)
    .mob Mana Wyrm
step
    #loop
    .goto Eversong Woods,36.79,19.88,0
    .goto Eversong Woods,36.79,19.88,40,0
    .goto Eversong Woods,34.64,18.82,40,0
    .goto Eversong Woods,33.78,19.46,40,0
    .goto Eversong Woods,34.17,20.59,40,0
    >>Mate os |cRXP_ENEMY_Mana Wyrms|r. Saque-os para obter as |cRXP_LOOT_Lascas|r.
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .mob Mana Wyrm
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helion|r e |cRXP_FRIENDLY_Ithanas|r
    .turnin 8346 >>Entregue Sede Eterna
    .turnin 8338 >>Entregue Lasca Arcana Maculada
    .target +Arcanist Helion
    .goto Eversong Woods,37.18,18.94
    .turnin 8336 >>Entregue Um Punhado de Lascas
    .target +Arcanist Ithanas
    .goto Eversong Woods,38.27,19.13
step
    #completewith next
    .goto Eversong Woods,39.44,21.16,10,0
    .goto Eversong Woods,39.44,20.35,10,0
    .goto Eversong Woods,39.10,20.04,10 >>Suba
step
    #label SolanianB
    .goto Eversong Woods,38.97,20.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Solanian|r
    .turnin 8330 >>Entregue Os Pertences de Solanian
    .turnin 8345 >>Entregue O Altar de Dath'Remar
    .target Well Watcher Solanian
step << Hunter Cata
    .goto Eversong Woods,39.05,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Patrulheira Sallina|r
    .train 2973 >>Aprenda |T132223:0|t[Golpe do Raptor]
    .target Ranger Sallina
    .xp <6,1
step << Mage Cata
    .goto Eversong Woods,39.23,21.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Julia Golpessol|r
    .train 2136 >>Aprenda |T135807:0|t[Impacto de Fogo]
    .target Julia Sunstriker
    .xp <5,1
step << Paladin Cata
    .goto Eversong Woods,39.47,20.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jesthenis Golpessol|r
    .train 465 >>Treine |T135893:0|t[Aura de Devoção]
    .target Jesthenis Sunstriker
    .xp <5,1
step << Priest Cata
    .goto Eversong Woods,39.41,20.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Máter Arena|r
    .train 17 >>Treine |T135940:0|t[Palavra de Poder: Escudo]
    .target Matron Arena
    .xp <5,1
step << Rogue Cata
    .goto Eversong Woods,38.93,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pathstalker Avokor|r
    .train 1784 >>Treine |T132320:0|t [Furtividade]
    .target Pathstalker Avokor
    .xp <5,1
step << Warlock Cata
    .goto Eversong Woods,38.94,21.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Evocador Teli'Larien|r
    .train 1454 >>Aprenda |T136126:0|t[Conversão de Vida]
    .target Summoner Teli'Larien
    .xp <5,1
step << Warrior Cata
    .goto Eversong Woods,39.29,20.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Delios Espadargenta|r
    .train 34428 >>Treine |T132342:0|t[Ímpeto da Vitória]
    .target Delios Silverblade
    .xp <5,1
step
    .goto Eversong Woods,35.37,22.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lanthan|r
    .turnin 8335 >>Entregue Felendren, o Banido
    .accept 8347 >>Aceite O Auxílio aos Vanguardeiros
    .target Lanthan Perilon
step
    #completewith next
    .goto Eversong Woods,39.283,30.747,30,0
    .goto Eversong Woods,40.177,31.700,30 >>Atravesse a Ponte
step
    .goto Eversong Woods,40.420,32.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alarion|r
    .turnin 8347 >>Entregue O Auxílio aos Vanguardeiros
    .accept 9704 >>Aceite Ceifado pelos Ignóbeis!
    .target Outrunner Alarion
step
    .goto Eversong Woods,42.020,35.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o cadáver do |cRXP_FRIENDLY_Outrunner|r no chão
    .turnin 9704 >>Entregue Ceifado pelos Ignóbeis!
    .accept 9705 >>Aceite Recuperação do Pacote
    .target Slain Outrunner
step
    .goto Eversong Woods,40.420,32.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alarion|r
    .turnin 9705 >>Entregue Recuperação do Pacote
    .accept 8350 >>Aceite Concluindo a Entrega
    .target Outrunner Alarion


]])

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 6-10 Bosques do Canto Eterno
#next 10-22 Azshara
#version 1
--#group RXP Cataclysm (H) << cata

#defaultfor BloodElf/Undead
#group RXP Cataclismo 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000

step << Undead
    .goto Eversong Woods,50.331,50.770
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Patrulheira Jaela|r
    .accept 8475 >>Aceite A Trilha da Morte
    .target Ranger Jaela
step << Undead
    #loop
    .goto Eversong Woods,49.857,55.567,0
    .waypoint Eversong Woods,49.699,53.225,40,0
    .waypoint Eversong Woods,49.857,55.567,40,0
    .waypoint Eversong Woods,49.851,57.816,40,0
    .waypoint Eversong Woods,50.095,59.583,40,0
    .waypoint Eversong Woods,51.072,56.126,40,0
    >>Mate os |cRXP_ENEMY_Plaguebone Pillagers|r
    .complete 8475,1 --8/8 Plaguebone Pillager slain
    .mob Plaguebone Pillager
step << Undead
    .goto Eversong Woods,50.331,50.770
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Patrulheira Jaela|r
    .turnin 8475 >>Entregue A Trilha da Morte
    .target Ranger Jaela
step
    #completewith next
    .subzone 3665 >>Viaje para Falconwing Square
step
    .goto Eversong Woods,47.256,46.314
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jarondis|r
    .accept 8472 >>Aceite Defeito Grave
    .target Magister Jaronis
step << !Undead
    #completewith next
    .goto Eversong Woods,47.771,47.303,8,0
    .goto Eversong Woods,47.823,47.696,8 >>Entre na Estalagem
step << !Undead
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Delaniel|r
    .turnin 8350 >>Entregue Concluindo a Entrega << BloodElf
    .home >>Defina sua Pedra de Retorno em Falconwing Square
    .target Innkeeper Delaniel
    .isQuestAvailable 8885
step << !Undead
    #completewith next
    .goto Eversong Woods,47.823,47.696,8,0
    .goto Eversong Woods,47.771,47.303,8 >>Vá para fora
step
    .goto Eversong Woods,48.166,46.311
    >>Clique no |cRXP_PICK_Cartaz de Procurado|r
    .accept 8468 >>Aceite Wanted: Thaelis, o Famélico
step
    .goto Eversong Woods,48.165,45.999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Aledon Marcassol|r
    .accept 8463 >>Aceite Cristais de Mana Instáveis
    .target Aeldon Sunbrand
step << Rogue
    .goto Eversong Woods,48.492,45.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Geron|r
    .vendor >>Vendedor de lixo. Venda sua arma se lhe der dinheiro suficiente para um |T135321:0|t[Gládio] (5s 9c). Você voltará mais tarde se ainda não tiver o suficiente
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Eversong Woods,48.492,45.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Geron|r
    >>|cRXP_BUY_Compre um|r |T135321:0|t[Gládio] |cRXP_BUY_dele|r
    .collect 2488,1,8468,1 --Gladius (1)
    .target Geron
    .money <0.0509
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior/Paladin
    .goto Eversong Woods,48.492,45.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Geron|r
    .vendor >>Venda os lixos. Venda sua arma se ela lhe der dinheiro suficiente para uma |T133053:0|t[Marreta de Madeira] (6p 66c). Você voltará depois se ainda não tiver o suficiente
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Warrior/Paladin
    .goto Eversong Woods,48.492,45.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Geron|r
    >>|cRXP_BUY_Compre um|r |T133053:0|t[Marreta de Madeira] |cRXP_BUY_dele|r
    .collect 2493,1,8468,1 --Collect Wooden Mallet (1)
    .target Geron
    .money <0.0666
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Rogue
    #completewith Thaelis
    +Equipe o |T135321:0|t[Gládio]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior/Paladin
    #completewith Thaelis
    +Equipe a |T133053:0|t[Marreta de Madeira]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step
    #completewith next
    .goto Eversong Woods,46.96,43.56,40,0
    .goto Eversong Woods,47.09,39.00,40,0
    >>Pegue as |cRXP_PICK_Caixas de Cristal de Mana Instáveis|r no chão
    >>Abate os |cRXP_ENEMY_Arcane Patrollers|r. Saqueie-os para obter seus |cRXP_LOOT_Cores|r
    .complete 8463,1 --Collect Unstable Mana Crystal (x6)
    .complete 8472,1 --Collect Arcane Core (x6)
    .mob Arcane Patroller
step
    #label Thaelis
    .goto Eversong Woods,45.02,37.68
    >>Abate o |cRXP_ENEMY_Thaelis, o Famélico|r. Saqueie-o para obter a |cRXP_LOOT_Thaelis's Cabeça|r
    .complete 8468,1 --Collect Thaelis's Head (x1)
    .mob Thaelis the Hungerer
step
    #loop
    .goto Eversong Woods,47.22,37.39,0
    .goto Eversong Woods,47.22,37.39,40,0
    .goto Eversong Woods,46.67,35.11,40,0
    .goto Eversong Woods,43.96,34.90,40,0
    .goto Eversong Woods,42.41,38.04,40,0
    .goto Eversong Woods,42.17,40.49,40,0
    .goto Eversong Woods,40.70,41.12,40,0
    .goto Eversong Woods,40.77,43.15,40,0
    .goto Eversong Woods,43.03,42.97,40,0
    .goto Eversong Woods,44.23,45.21,40,0
    .goto Eversong Woods,46.96,43.56,40,0
    .goto Eversong Woods,47.09,39.00,40,0
    .goto Eversong Woods,42.17,40.49,40,0
    >>Pegue as |cRXP_PICK_Caixas de Cristal de Mana Instáveis|r no chão
    >>Abate os |cRXP_ENEMY_Arcane Patrollers|r. Saqueie-os para obter seus |cRXP_LOOT_Cores|r
    .complete 8463,1 --Collect Unstable Mana Crystal (x6)
    .complete 8472,1 --Collect Arcane Core (x6)
    .mob Arcane Patroller
step
    .goto Eversong Woods,47.256,46.314
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jarondis|r
    .turnin 8472 >>Entregue Defeito Grave
    .accept 8895 >>Aceite Entrega para o Sacrário do Norte
    .target Magister Jaronis
step
    .goto Eversong Woods,47.77,46.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sargento Kan'ren|r
    .turnin 8468 >>Entregue Wanted: Thaelis, o Famélico
    .target Sergeant Kan'ren
step
    .goto Eversong Woods,48.165,45.999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Aledon Marcassol|r
    .turnin 8463 >>Entregue Cristais de Mana Instáveis
    .accept 9352 >>Aceite Intrusões Darnassianas
    .target Aeldon Sunbrand
step << Paladin Cata
    .goto Eversong Woods,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Noellene|r
    .train 635 >>Treine suas magias de classe
    .target Noellene
	.xp <7,1
    .xp >9,1
step << Paladin Cata
    #optional
    .goto Eversong Woods,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Noellene|r
    .train 85673 >>Treine suas magias de classe
    .target Noellene
    .xp >7,1
	.xp <9,1
step << Warrior Cata
    .goto Eversong Woods,48.29,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lothan|r
    .train 772 >>Treine suas magias de classe
    .target Lothan Silverblade
	.xp <7,1
    .xp >9,1
step << Warrior Cata
    #optional
    .goto Eversong Woods,48.29,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lothan|r
    .train 6343 >>Treine suas magias de classe
    .target Lothan Silverblade
    .xp >7,1
	.xp <9,1
step << Rogue Cata
    .goto Eversong Woods,48.58,46.29,8,0
    .goto Eversong Woods,48.50,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tannaria|r acima
    .train 5277 >>Treine suas magias de classe
    .target Tannaria
	.xp <9,1
step << Hunter Cata
    .goto Eversong Woods,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hannovia|r
    .train 2973 >>Treine suas magias de classe
    .target Hannovia
    .xp <6,1
    .xp >8,1
step << Hunter Cata
    #optional
    .goto Eversong Woods,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hannovia|r
    .train 5116 >>Treine suas magias de classe
    .target Hannovia
	.xp <8,1
step << Mage Cata/Warlock Cata/Priest Cata
    #optional
    #completewith next
    .goto Eversong Woods,47.771,47.303,8,0
    .goto Eversong Woods,47.823,47.696,8 >>Entre na Estalagem
step << Mage Cata/Warlock Cata/Priest Cata
    #optional
    #completewith next
    .goto Eversong Woods,48.286,47.097,8,0
    .goto Eversong Woods,48.054,47.130,8,0
    .goto Eversong Woods,48.074,47.354,8 >>Suba
step << Priest Cata
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponaris|r
    .train 588 >>Treine suas magias de classe
    .target Ponaris
	.xp <7,1
    .xp >9,1
step << Priest Cata
    #optional
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponaris|r
    .train 8092 >>Treine suas magias de classe
    .target Ponaris
	.xp >7,1
    .xp <9,1
step << Mage Cata
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Garridel|r
    .train 116 >>Treine suas magias de classe
    .target Garridel
	.xp <7,1
    .xp >8,1
step << Mage Cata
    #optional
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Garridel|r
    .train 122 >>Treine suas magias de classe
    .target Garridel
	.xp >7,1
    .xp <8,1
step << Warlock Cata
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Celenos|r
    .train 689 >>Treine suas magias de classe
    .target Celoenus
	.xp <6,1
    .xp >8,1
step << Warlock Cata
    #optional
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Celenos|r
    .train 697 >>Treine suas magias de classe
    .target Celoenus
	.xp >6,1
    .xp <8,1
step << Rogue
    .goto Eversong Woods,48.492,45.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Geron|r
    .vendor >>Vendedor de lixo. Venda sua arma se lhe der dinheiro suficiente para um |T135321:0|t[Gládio] (5s 9c). Você voltará mais tarde se ainda não tiver o suficiente
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Eversong Woods,48.492,45.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Geron|r
    >>|cRXP_BUY_Compre um|r |T135321:0|t[Gládio] |cRXP_BUY_dele|r
    .collect 2488,1,9062,1 --Gladius (1)
    .target Geron
    .money <0.0509
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior/Paladin
    .goto Eversong Woods,48.492,45.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Geron|r
    .vendor >>Venda os lixos. Venda sua arma se ela lhe der dinheiro suficiente para uma |T133053:0|t[Marreta de Madeira] (6p 66c). Você voltará depois se ainda não tiver o suficiente
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Warrior/Paladin
    .goto Eversong Woods,48.492,45.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Geron|r
    >>|cRXP_BUY_Compre um|r |T133053:0|t[Marreta de Madeira] |cRXP_BUY_dele|r
    .collect 2493,1,9062,1 --Collect Wooden Mallet (1)
    .target Geron
    .money <0.0666
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Rogue
    #completewith Caidanis
    +Equipe o |T135321:0|t[Gládio]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior/Paladin
    #completewith Caidanis
    +Equipe a |T133053:0|t[Marreta de Madeira]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step
    #completewith next
    .goto Eversong Woods,46.68,48.07,30,0
    .goto Eversong Woods,44.63,53.13,30 >>Voe para |cRXP_FRIENDLY_Caidanis|r
step
    #label Caidanis
    .goto Eversong Woods,44.63,53.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Protetor de Meridianos Caidanis|r
    .turnin 8895 >>Entregue Entrega para o Sacrário do Norte
    .accept 9119 >>Aceite Defeito no Sacrário do Oeste
    .target Ley-Keeper Caidanis
step
    .goto Eversong Woods,36.70,57.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Protetora de Meridianos Velania|r
    .turnin 9119 >>Entregue Defeito no Sacrário do Oeste
    .accept 8486 >>Aceite Instabilidade Arcana
    .target Ley-Keeper Velania
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Manawraiths|r e os |cRXP_ENEMY_Mana Stalkers|r
    .complete 8486,1 --Kill Manawraith (x5)
    .mob +Manawraith
    .complete 8486,2 --Kill Mana Stalker (x5)
    .mob +Mana Stalker
step
    #loop
    .goto Eversong Woods,36.77,60.99,0
    .goto Eversong Woods,36.77,60.99,30,0
    .goto Eversong Woods,34.65,62.03,30,0
    .goto Eversong Woods,34.04,60.81,30,0
    .goto Eversong Woods,34.19,58.49,30,0
    >>Mate o |cRXP_ENEMY_Darnassian Batedor|r. Saqueie os |T133464:0|t[|cRXP_LOOT_Documentos incriminadores|r]
    >>|cRXP_WARN_Use os |T133464:0|t[|cRXP_LOOT_documentos incriminadores|r] para iniciar a missão|r
    .complete 9352,1 --Intruder Defeated
    .collect 20765,1,8482 --Incriminating Documents (1)
    .accept 8482 >>Aceite Documentos Incriminadores
    .mob Darnassian Scout
    .use 20765
step
    #loop
    .goto Eversong Woods,35.759,60.591,0
    .goto Eversong Woods,35.768,57.544,40,0
    .goto Eversong Woods,34.491,60.834,40,0
    .goto Eversong Woods,35.759,60.591,40,0
    .goto Eversong Woods,35.946,59.096,40,0
    >>Mate os |cRXP_ENEMY_Manawraiths|r e os |cRXP_ENEMY_Mana Stalkers|r
    .complete 8486,1 --Kill Manawraith (x5)
    .mob +Manawraith
    .complete 8486,2 --Kill Mana Stalker (x5)
    .mob +Mana Stalker
step
    .goto Eversong Woods,36.70,57.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Protetora de Meridianos Velania|r
    .turnin 8486 >>Entregue Instabilidade Arcana
    .turnin 9352 >>Entregue Intrusões Darnassianas
    .target Ley-Keeper Velania
step
    .goto Eversong Woods,30.22,58.35,10,0
    .goto Eversong Woods,30.23,58.44,10,0
    .goto Eversong Woods,29.90,58.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hathvelion Mirassol|r
    .accept 8884 >>Aceite Cabeças de Bagre, Cabeças de Bagre...
    .target Hathvelion Sungaze
step
    #loop
    .goto Eversong Woods,25.61,64.29,0
    .goto Eversong Woods,27.47,56.54,40,0
    .goto Eversong Woods,26.45,58.14,40,0
    .goto Eversong Woods,26.35,59.41,40,0
    .goto Eversong Woods,28.20,59.52,40,0
    .goto Eversong Woods,27.96,61.31,40,0
    .goto Eversong Woods,25.70,60.50,40,0
    .goto Eversong Woods,25.36,62.88,40,0
    .goto Eversong Woods,25.61,64.29,40,0
    >>Mate os |cRXP_ENEMY_Grimscale Foragers|r e os |cRXP_ENEMY_Grimscale Seers|r. Saqueie-os pelas |cRXP_LOOT_Murloc Cabeças|r e |T134939:0|t[|cRXP_LOOT_As cartas náuticas perdidas da capitã Kelisendra|r]
    >>Use|cRXP_WARN_ |T134939:0|t[|cRXP_LOOT_Perdidos Rutters do Capitão Kelisendra|r] para iniciar a missão|r
    .complete 8884,1 --Collect Grimscale Murloc Head (x8)
    .collect 21776,1,8887,1 --Captain Kelisendra's Lost Rutters
    .accept 8887 >>Aceite As Cartas Náuticas Perdidas da Capitã Kelisendra
    .mob Grimscale Forager
    .mob Grimscale Seer
    .use 21776
step
    .goto Eversong Woods,29.90,58.45,10,0
    .goto Eversong Woods,30.23,58.44,10,0
    .goto Eversong Woods,30.22,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hathvelion Mirassol|r
    .turnin 8884 >>Entregue Cabeças de Bagre, Cabeças de Bagre...
    .accept 8885 >>Aceite O Anel de Mmmrrrggglll
    .target Hathvelion Sungaze
step
    #completewith next
    .goto Eversong Woods,27.94,59.41,20,0
    .goto Eversong Woods,28.01,61.01,20,0
    .goto Eversong Woods,26.25,60.46
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
step
    #xprate <1.2
    .goto Eversong Woods,44.718,69.619
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Velan Roburclaro|r
    .accept 8491 >>Aceite Caça às Peles
    .target Velan Brightoak
step
    #completewith next
    .goto Eversong Woods,43.61,70.66,10 >>Suba
step
    .goto Eversong Woods,43.34,70.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Patrulheiro Degolien|r
    .accept 8892 >>Aceite Incidente no Ancoradouro Velaclara
    .target Ranger Degolien
step << BloodElf
    .goto Eversong Woods,43.698,71.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sathiel|r
    .accept 9130 >>Aceite Mercadoria de Luaprata
    .target Sathiel
    --VV TODO: See if this quest chain is live on beta
step << BloodElf
    .goto Eversong Woods,43.949,69.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Mestre dos Ares Albafulgis|r
    .turnin 9130 >>Entregue Mercadoria de Luaprata
    .accept 9133 >>Aceite Voo para Luaprata
    .target Skymaster Brightdawn
step
    #xprate <1.2
    #completewith next
    .goto Eversong Woods,40.742,70.869,0
    >>Mate os |cRXP_ENEMY_Springpaw Stalkers|r. Saqueie os |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kelisendra|r e |cRXP_FRIENDLY_Velendris|r
    .turnin 8887 >>Entregue As Cartas Náuticas Perdidas da Capitã Kelisendra
    .accept 8886 >>Aceite Piratas Escamatroz!
    .goto Eversong Woods,36.36,66.62
    .accept 8480 >>Aceite Armamentos Perdidos
    .goto Eversong Woods,36.36,66.78
    .target Captain Kelisendra
    .target Velendris Whitemorn
step
    #completewith Aldaron
    >>Mate os |cRXP_ENEMY_Wretched Thugs|r e os |cRXP_ENEMY_Wretched Hooligans|r
    .complete 8892,1 --Kill Wretched Thug (x5)
    .mob +Wretched Thug
    .complete 8892,2 --Kill Wretched Hooligan (x5)
    .mob +Wretched Hooligan
step
    #loop
    .goto Eversong Woods,34.66,68.00,0
    .goto Eversong Woods,34.66,68.00,25,0
    .goto Eversong Woods,34.11,69.20,25,0
    .goto Eversong Woods,33.01,71.10,25,0
    .goto Eversong Woods,32.39,69.80,25,0
    .goto Eversong Woods,32.76,68.51,10,0
    .goto Eversong Woods,32.21,69.07,10,0
    .goto Eversong Woods,32.40,70.26,10,0
    .goto Eversong Woods,32.77,70.15,10,0
    .goto Eversong Woods,32.74,68.77,10,0
    .goto Eversong Woods,31.71,68.95,25,0
    .goto Eversong Woods,30.54,69.24,25,0
    .goto Eversong Woods,31.40,70.90,25,0
    >>Saqueie os |cRXP_PICK_Caixas de Armamento|r no chão perto dos |cRXP_ENEMY_Wretched|r e dentro da construção
    .complete 8480,1 --Collect Sin'dorei Armaments (x8)
step
    .goto Eversong Woods,36.36,66.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Velendris|r
    .turnin 8480 >>Entregue Armamentos Perdidos
    .accept 9076 >>Aceite O Líder dos Ignóbeis
    .target Velendris Whitemorn
step
    #completewith next
    .goto Eversong Woods,32.80,69.49,40,0
    .goto Eversong Woods,32.77,68.65,10,0
    .goto Eversong Woods,32.24,68.98,10,0
    .goto Eversong Woods,32.30,70.03,10,0
    .goto Eversong Woods,32.78,70.17,10,0
    .goto Eversong Woods,32.82,68.80,10,0
    .goto Eversong Woods,33.19,69.21,10 >>Suba para o topo da construção
step
    #label Aldaron
    .goto Eversong Woods,32.80,69.40
    >>Mate |cRXP_ENEMY_Aldaron, o Estouvado|r no topo. Saqueie a |cRXP_LOOT_Aldaron's Cabeça|r
    .complete 9076,1 --Collect Aldaron's Head (x1)
    .mob Aldaron the Reckless
step
    #loop
    .goto Eversong Woods,31.40,70.90,0
    .goto Eversong Woods,34.66,68.00,30,0
    .goto Eversong Woods,34.11,69.20,30,0
    .goto Eversong Woods,33.01,71.10,30,0
    .goto Eversong Woods,32.39,69.80,30,0
    .goto Eversong Woods,32.76,68.51,10,0
    .goto Eversong Woods,32.21,69.07,10,0
    .goto Eversong Woods,32.40,70.26,10,0
    .goto Eversong Woods,32.77,70.15,10,0
    .goto Eversong Woods,32.74,68.77,10,0
    .goto Eversong Woods,31.71,68.95,30,0
    .goto Eversong Woods,30.54,69.24,30,0
    .goto Eversong Woods,31.40,70.90,30,0
    >>Mate os |cRXP_ENEMY_Wretched Thugs|r e os |cRXP_ENEMY_Wretched Hooligans|r
    .complete 8892,1 --Kill Wretched Thug (x5)
    .mob +Wretched Thug
    .complete 8892,2 --Kill Wretched Hooligan (x5)
    .mob +Wretched Hooligan
step
    #xprate <1.2
    #completewith next
    >>Mate os |cRXP_ENEMY_Springpaw Stalkers|r. Saqueie os |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
step
    #completewith next
    .goto Eversong Woods,24.32,74.07,40,0
    >>Mate os |cRXP_ENEMY_Grimscale Murlocs|r e os |cRXP_ENEMY_Grimscale Oracles|r. Saqueie os |cRXP_LOOT_Cargo|r
    >>Saqueie os |cRXP_PICK_Barris de Carga|r no chão
    >>|cRXP_WARN_Usar|r |T136222:0|t[Torrente Arcana] |cRXP_WARN_para interromper a|r |T135907:0|t[Cura Célere] dos |cRXP_ENEMY_Grimscale Oracles|r << BloodElf
    .complete 8886,1 --Collect Captain Kelisendra's Cargo (x6)
    .mob Grimscale Murloc
    .mob Grimscale Oracle
step
    #loop
    .goto Eversong Woods,24.36,72.66,0
    .goto Eversong Woods,24.36,72.66,40,0
    .goto Eversong Woods,25.09,71.12,40,0
    .goto Eversong Woods,24.32,69.66,40,0
    .goto Eversong Woods,24.66,68.47,40,0
    .goto Eversong Woods,25.68,68.93,40,0
    .goto Eversong Woods,25.81,68.16,40,0
    .goto Eversong Woods,24.89,66.85,40,0
    .goto Eversong Woods,25.24,65.65,40,0
    .goto Eversong Woods,24.89,66.85,40,0
    .goto Eversong Woods,25.81,68.16,40,0
    .goto Eversong Woods,25.68,68.93,40,0
    .goto Eversong Woods,24.66,68.47,40,0
    .goto Eversong Woods,24.32,69.66,40,0
    .goto Eversong Woods,25.09,71.12,40,0
    .goto Eversong Woods,24.36,72.66,40,0
    >>Abate |cRXP_ENEMY_Mmmrrrggglll|r. Saque-o pelo |cRXP_LOOT_Anel de Mmmrrrggglll|r
    >>|cRXP_WARN_Ele patrulha um pouco pela área|r
    >>|cRXP_WARN_Usar|r |T136222:0|t[Torrente Arcana] |cRXP_WARN_para interromper|r |cRXP_ENEMY_Mmmrrrggglll|r de |T136052:0|t[Onda Curativa] << BloodElf
    .complete 8885,1 --Collect Ring of Mmmrrrggglll (x1)
    .unitscan Mmmrrrggglll
step
    #loop
    .goto Eversong Woods,24.36,72.66,0
    .goto Eversong Woods,25.24,65.65,50,0
    .goto Eversong Woods,24.89,66.85,50,0
    .goto Eversong Woods,25.81,68.16,50,0
    .goto Eversong Woods,25.68,68.93,50,0
    .goto Eversong Woods,24.66,68.47,50,0
    .goto Eversong Woods,24.32,69.66,50,0
    .goto Eversong Woods,25.09,71.12,50,0
    .goto Eversong Woods,24.36,72.66,50,0
    >>Mate os |cRXP_ENEMY_Grimscale Murlocs|r e os |cRXP_ENEMY_Grimscale Oracles|r. Saqueie os |cRXP_LOOT_Cargo|r
    >>Saqueie os |cRXP_PICK_Barris de Carga|r no chão
    >>|cRXP_WARN_Usar|r |T136222:0|t[Torrente Arcana] |cRXP_WARN_para interromper a|r |T135907:0|t[Cura Célere] dos |cRXP_ENEMY_Grimscale Oracles|r << BloodElf
    .complete 8886,1 --Collect Captain Kelisendra's Cargo (x6)
    .mob Grimscale Murloc
    .mob Grimscale Oracle
step
    .goto Eversong Woods,29.90,58.45,10,0
    .goto Eversong Woods,30.23,58.44,10,0
    .goto Eversong Woods,30.22,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Hathvelion|r
    .turnin 8885 >>Entregue O Anel de Mmmrrrggglll
    .target Hathvelion Sungaze
step
    #xprate <1.2
    #completewith next
    >>Mate os |cRXP_ENEMY_Springpaw Stalkers|r. Saqueie os |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kelisendra|r e |cRXP_FRIENDLY_Velendris|r
    .turnin 8886 >>Entregue Piratas Escama-cinzenta!
    .goto Eversong Woods,36.36,66.62
    .turnin 9076 >>Entregue O Líder dos Ignóbeis
    .goto Eversong Woods,36.36,66.78
    .target Captain Kelisendra
    .target Velendris Whitemorn
step
    #xprate <1.2
    #loop
    .goto Eversong Woods,36.115,71.876,0
    .goto Eversong Woods,28.840,71.832,0
    .waypoint Eversong Woods,36.115,71.876,60,0
    .waypoint Eversong Woods,34.94,74.229,60,0
    .waypoint Eversong Woods,28.840,71.832,60,0
    .waypoint Eversong Woods,26.134,73.852,60,0
    >>Conclua a eliminação dos |cRXP_ENEMY_Springpaw Stalkers|r. Saqueie-os pelos seus |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
step
    #completewith SunsailTurnin
    .deathskip >>Morra e renasça no |cRXP_FRIENDLY_Anjo da Cura|r ou corra de volta para Vila de Brisabela
step
    #xprate <1.2
    .goto Eversong Woods,44.72,69.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Velan|r
    .turnin 8491 >>Entregue Caça às Peles
    .target Velan Brightoak
step
    #label SunsailTurnin
    .goto Eversong Woods,43.34,70.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Degolien|r
    .turnin 8892 >>Entregue Incidente no Ancoradouro Velaclara
    .target Ranger Degolien

    --Section below for users who are not level 10 yet

step
    #xprate <1.2
    .goto Eversong Woods,43.675,71.309
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Marniel Luminambar|r
    .accept 9358 >>Aceite A Patrulheira Sareyn
    .target Marniel Amberlight
    .maxlevel 9
step
    #xprate <1.2
    .goto Eversong Woods,44.030,70.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com a |cRXP_FRIENDLY_Magistra Landra Albatrilha|r
    .accept 9254 >>Aceite A Aprendiz Desobediente
    .target Magistrix Landra Dawnstrider
    .maxlevel 9
step
    #xprate <1.2
    .goto Eversong Woods,46.93,71.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Sareyn|r
    .turnin 9358 >>Entregue A Patrulheira Sareyn
    .accept 9252 >>Aceite Defendendo a Vila de Brisabela
    .target Ranger Sareyn
    .isOnQuest 9358
step
    #xprate <1.2
    #optional
    .goto Eversong Woods,46.93,71.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Sareyn|r
    .accept 9252 >>Aceite Defendendo a Vila de Brisabela
    .target Ranger Sareyn
    .isQuestTurnedIn 9358
step
    #xprate <1.2
    #completewith Notes
    >>Abate os |cRXP_ENEMY_Rotlimb Marauders|r
    .complete 9252,1 --Kill Rotlimb Marauder (x4)
    .mob Rotlimb Marauder
    .isOnQuest 9252
step
    #xprate <1.2
    #loop
    .goto Eversong Woods,51.07,76.32,0
    .goto Eversong Woods,50.89,80.74,40,0
    .goto Eversong Woods,50.83,78.68,40,0
    .goto Eversong Woods,50.42,77.39,40,0
    .goto Eversong Woods,51.07,76.32,40,0
    .goto Eversong Woods,50.89,80.74,40,0
    .goto Eversong Woods,50.83,78.68,40,0
    .goto Eversong Woods,50.42,77.39,40,0
    .goto Eversong Woods,51.07,76.32,40,0
    >>Abate os |cRXP_ENEMY_Darkwraiths|r
    >>|cRXP_WARN_Cuidado, pois|r |cRXP_ENEMY_Darkwraiths|r |cRXP_WARN_lançam|r |T136224:0|t[Enfurecer] |cRXP_WARN_(dano e velocidade de ataque aumentados) com pouca saúde|r
    .complete 9252,2 --Kill Darkwraith (x4)
    .mob Darkwraith
    .isOnQuest 9252
step
    #xprate <1.2
    .goto Eversong Woods,54.28,70.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Mirveda|r
    .turnin 9254 >>Entregue A Aprendiz Desobediente
    .accept 8487 >>Aceite Solo Conspurcado
    .target Apprentice Mirveda
    .isOnQuest 9254
step
    #xprate <1.2
    #optional
    .goto Eversong Woods,54.28,70.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Mirveda|r
    .accept 8487 >>Aceite Solo Conspurcado
    .target Apprentice Mirveda
    .isQuestTurnedIn 9254
step
    #xprate <1.2
    #loop
    .goto Eversong Woods,53.88,70.03,0
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03,40,0
    >>Saque os |cRXP_PICK_Montes de Terra Maculados|r no chão
    .complete 8487,1 --Collect Tainted Soil Sample (x8)
    .isQuestTurnedIn 9254
step
    #xprate <1.2
    .goto Eversong Woods,54.28,70.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Mirveda|r
    >>|cRXP_WARN_Espere a sequência de RP terminar|r
    .turnin 8487 >>Entregue Solo Conspurcado
    .timer 9,Solo Conspurcado RP
    .accept 8488 >>Aceite Resultados Inesperados
    .target Apprentice Mirveda
    .isQuestTurnedIn 9254
step
    #xprate <1.2
    .goto Eversong Woods,53.66,69.74,20,0
    .goto Eversong Woods,54.28,70.97
    >>Abate |cRXP_ENEMY_Gharsul, o Impiedoso|r e os |cRXP_ENEMY_Angershades|r para proteger |cRXP_FRIENDLY_Mirveda|r
    .complete 8488,1 --Protect Apprentice Mirveda
    .mob Gharsul the Remorseless
    .mob Angershade
    .isQuestTurnedIn 9254
step
    #xprate <1.2
    #label Notes
    .goto Eversong Woods,54.28,70.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Mirveda|r
    .turnin 8488 >>Entregue Resultados Inesperados
    .accept 9255 >>Aceite Anotações de Pesquisa
    .target Apprentice Mirveda
    .isQuestTurnedIn 9254
step
    #xprate <1.2
    #loop
    .goto Eversong Woods,54.13,71.21,0
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03,40,0
    >>Abate os |cRXP_ENEMY_Rotlimb Marauders|r
    .complete 9252,1 --Kill Rotlimb Marauder (x4)
    .mob Rotlimb Marauder
    .isOnQuest 9252
step
    #xprate <1.2
    #completewith DefendingFBV
    .deathskip >>Morra e renasça no |cRXP_FRIENDLY_Anjo da Cura|r ou corra de volta para Vila de Brisabela
    .isQuestComplete 9252
step
    #xprate <1.2
    .goto Eversong Woods,44.029,70.765
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com a |cRXP_FRIENDLY_Magistra Landra Albatrilha|r
    .turnin 9255 >>Entregue Anotações de Pesquisa
    .target Magistrix Landra Dawnstrider
    .isQuestComplete 9255
step
    #xprate <1.2
    #label DefendingFBV
    .goto Eversong Woods,46.93,71.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Sareyn|r
    .turnin 9252 >>Entregue Defendendo a Vila de Brisabela
    .target Ranger Sareyn
    .isQuestComplete 9252
step << !Undead
    #completewith IncrDocs
    .hs >>Use sua Pedra de Retorno para ir a Praça da Asa de Falcão
    .cooldown item,6948,>2,1
step
    #completewith IncrDocs
    .goto Eversong Woods,43.949,69.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Mestre dos Ares Albafulgis|r
    .fly Falconwing Square >>Voe para Falconwing Square
    .target Skymaster Brightdawn
    .cooldown item,6948,<0 << !Undead
step
    #label IncrDocs
    .goto Eversong Woods,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aeldon|r
    .turnin 8482 >>Entregue Documentos Incriminadores
    .target Aeldon Sunbrand
step << Paladin Cata
    .goto Eversong Woods,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Noellene|r
    .train 20473 >>Treine suas magias de classe
    .target Noellene
step << Warrior Cata
    .goto Eversong Woods,48.29,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lothan|r
    .train 71 >>Treine suas magias de classe
    .target Lothan Silverblade
step << Rogue Cata
    .goto Eversong Woods,48.58,46.29,8,0
    .goto Eversong Woods,48.50,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tannaria|r acima
    .train 5277 >>Treine suas magias de classe
    .target Tannaria
step << Hunter Cata
    .goto Eversong Woods,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hannovia|r
    .train 34026 >>Treine suas magias de classe
    .target Hannovia
step << Mage Cata/Warlock Cata/Priest Cata
    #optional
    #completewith next
    .goto Eversong Woods,47.771,47.303,8,0
    .goto Eversong Woods,47.823,47.696,8 >>Entre na Estalagem
step << Mage Cata/Warlock Cata/Priest Cata
    #optional
    #completewith next
    .goto Eversong Woods,48.286,47.097,8,0
    .goto Eversong Woods,48.054,47.130,8,0
    .goto Eversong Woods,48.074,47.354,8 >>Suba
step << Priest Cata
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponaris|r
    .train 8092 >>Treine suas magias de classe
    .target Ponaris
step << Mage Cata
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Garridel|r
    .train 2139 >>Treine suas magias de classe
    .target Garridel
step << Warlock Cata
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Celenos|r
    .train 1120 >>Treine suas magias de classe
    .target Celoenus
step << !Undead
    #completewith next
    .goto Eversong Woods,46.244,46.786
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Mestre dos Ares Celesto|r
    .fly Silvermoon >>Voe para Luaprata
    .target Skymaster Skyles
step << !Undead
    .goto Eversong Woods,56.644,49.628,20,0
    .goto Eversong Woods,56.253,49.224,10,0
    .goto 110,70.881,86.623,10,0
    .goto 110,72.396,85.242
    .zone Silvermoon City >>Entre em Luaprata
step << BloodElf
    .goto Silvermoon City,53.92,71.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sathren Albazul|r
    .turnin 9133 >>Entregue Voo para Luaprata
    .target Sathren Azuredawn
    .isOnQuest 9133
step << !Undead
    #completewith next
    .goto Silvermoon City,57.53,24.56,10,0
    .goto Silvermoon City,51.77,17.86,10,0
    .goto Silvermoon City,49.48,14.80
    .zone Undercity >>Pegue o Orbe da Translocação para ir a Undercity
step << !Undead
    #completewith next
    .goto 18,66.17,4.93,10,0
    .goto 18,61.88,64.94,10 >>Saia de Undercity
    .zoneskip Tirisfal Glades
step << Undead
    #completewith next
    .hs >>Use sua Pedra de Regresso para ir a Montalvo
step << Undead
    .goto 18,60.13,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morris|r
    .turnin 6324 >>Entregue Suprimentos para Montalvo
    .target Deathguard Morris
step
    .goto 18,61.06,58.86,12,0
    .goto 18,61.51,59.01,10,0
    .goto 18,61.27,59.22,8,0
    .goto 18,61.13,58.84,8,0
    .goto 18,61.38,58.71,8,0
    .goto 18,61.34,59.17,8,0
    .goto 18,60.51,58.69
    >>Suba pela Torre do Zepelim
    .zone Orgrimmar >>Pegue o zepelim para Orgrimmar
]])
