if GetLocale() ~= "frFR" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Alliance' then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 1-6 Île de Haut-Soleil
#next 6-10 Bois des Chants éternels
#version 1
--#group RXP Cataclysm (H) << cata
#defaultfor BloodElf
#group RXP Cataclysme 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000


step
    #label SunstriderIsleFirstQuestCheck
    .goto Eversong Woods,38.02,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magistrice Erona|r
    .accept 8325 >>Acceptez la quête La reconquête de l'île de Haut-Soleil
    .target Magistrix Erona
step
    #loop
    .goto Eversong Woods,37.70,23.26,0
    .goto Eversong Woods,37.70,23.26,30,0
    .goto Eversong Woods,38.21,24.56,30,0
    .goto Eversong Woods,37.62,25.77,30,0
    .goto Eversong Woods,37.30,24.54,30,0
    >>Tuez les |cRXP_ENEMY_Mana Wyrms|r
    .complete 8325,1 --6/6 Mana Wyrm slain
    .mob Mana Wyrm
step
    .goto Eversong Woods,38.02,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magistrice Erona|r
    .turnin 8325 >>Rendez la quête La reconquête de l'île de Haut-Soleil
    .accept 8326 >>Acceptez la quête Des mesures regrettables
    .target Magistrix Erona
step
    #loop
    .goto Eversong Woods,39.13,19.06,0
    .goto Eversong Woods,39.13,19.06,30,0
    .goto Eversong Woods,40.36,17.88,30,0
    .goto Eversong Woods,40.54,16.43,30,0
    .goto Eversong Woods,40.05,20.44,30,0
    .goto Eversong Woods,39.32,22.18,30,0
    >>Tuez |cRXP_ENEMY_Springpaw Cubs|r et |cRXP_ENEMY_Lynx Preste-patte|r. Ramassez-les pour leurs |cRXP_LOOT_Collars|r
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
    .xp 2+650 >>Farmez jusqu'à 650/900 xp
step
    .goto Eversong Woods,38.02,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magistrice Erona|r
    .turnin 8326 >>Rendez la quête Des mesures regrettables
    .accept 8327 >>Acceptez la quête Se présenter à Lanthan Perilon
    .accept 31170 >>Acceptez la quête La formation de moine << Monk
    .accept 9393 >>Acceptez la quête La formation de chasseur << Hunter
    .accept 8328 >>Acceptez la quête La formation de mage << Mage
    .accept 9676 >>Acceptez la quête La formation du paladin << Paladin
    .accept 8564 >>Acceptez la quête La formation de prêtre << Priest
    .accept 9392 >>Acceptez la quête La formation de voleur << Rogue
    .accept 8563 >>Acceptez la quête La formation de démoniste << Warlock
    .accept 8329 >>Acceptez la quête La formation de guerrier << Warrior
    .target Magistrix Erona
step << Monk
    .goto 467/0,-3998.000,7978.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pao|r
    .turnin 31170 >>Rendez la quête La formation de moine
    .accept 31171 >>Acceptez la quête Paume du tigre
    .target Pao
step << Hunter
    .goto Eversong Woods,39.05,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Forestier Sallina|r
    .turnin 9393 >>Rendez la quête La formation de chasseur
    .accept 10070 >> Acceptez la quête Tir régulier
    .train 56641 >>S'entraîner |T132213:0|t[Veilleur du puits Solanian] << Cata
    .target Ranger Sallina
step << Mage cata
    .goto Eversong Woods,39.23,21.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Julia Heurtesoleil|r
    .turnin 8328 >>Rendez la quête La formation de mage
    .accept 10068 >>Acceptez la quête Projectiles des Arcanes
    .train 5143 >>Apprenez |T136096:0|t[Projectiles des Arcanes] << Cata
    .target Julia Sunstriker
step << Mage !cata
    .goto Eversong Woods,39.23,21.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Julia Heurtesoleil|r
    .turnin 8328 >>Rendez la quête La formation de mage
    .accept 10068 >>Acceptez la quête Nova de givre
    .target Julia Sunstriker
step << Paladin
    .goto Eversong Woods,39.47,20.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jesthenis Heurtesoleil|r
    .turnin 9676 >>Rendez la quête La formation du paladin
    .accept 10069 >>Acceptez la quête Les voies de la Lumière
    .train 20271 >>Apprenez [Jugement] << Cata
    .train 20154 >>S'entraîner |T135960:0|t[Sceau de piété] << Cata
    .target Jesthenis Sunstriker
step << Priest cata
    .goto Eversong Woods,39.41,20.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matron Arène|r
    .turnin 8564 >>Rendez la quête La formation de prêtre
    .accept 10072 >>Acceptez la quête Soins du Blessé
    .train 2061 >>Entraînez-vous |T135907:0|t[Soins rapides] << Cata
    .target Matron Arena
step << Priest !cata
    .goto Eversong Woods,39.41,20.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matron Arène|r
    .turnin 8564 >>Rendez la quête La formation de prêtre
    .accept 10072 >>Acceptez la quête Apprendre la parole
    .target Matron Arena
step << Rogue
    .goto Eversong Woods,38.93,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pathstalker Avokor|r
    .turnin 9392 >>Rendez la quête La formation de voleur
    .accept 10071 >>Acceptez la quête Éviscération
    .train 2098 >>Entraînez-vous |T132292:0|t[L'éviscération] << Cata
    .target Pathstalker Avokor
step << Warlock cata
    .goto Eversong Woods,38.94,21.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Invocateur Teli'Larien|r
    .turnin 8563 >>Rendez la quête La formation de démoniste
    .accept 10073 >>Acceptez la quête Immoler
    .train 348 >>Apprenez [Immolation] << Cata
    .target Summoner Teli'Larien
step << Warlock !cata
    .goto Eversong Woods,38.94,21.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Invocateur Teli'Larien|r
    .turnin 8563 >>Rendez la quête La formation de démoniste
    .accept 10073 >>Acceptez la quête Veilleur du puits Solanian
    .target Summoner Teli'Larien
step << Warrior
    .goto Eversong Woods,39.29,20.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delios Lame-d'argent|r
    .turnin 8329 >>Rendre la quête La formation de guerrier
    .accept 27091 >>Acceptez la quête À la charge !
    .train 100 >>Apprenez [Charge] << Cata
    .target Delios Silverblade
step << Monk
    .goto Eversong Woods,38.34,20.64
	>>Lancez |T606551:0|t[Paume du tigre] sur un |cRXP_ENEMY_Mannequin d'entraînement|r à l'extérieur
	.complete 31171,2 --Cast Tiger Palm
	.mob Training Dummy
step << Hunter
    .goto Eversong Woods,38.34,20.64
	>>Lancez |T132213:0|t[Veilleur du puits Solanian] sur un |cRXP_ENEMY_Mannequin d'entraînement|r à l'extérieur
	.complete 10070,2 << !Cata --Cast Steady Shot
	.complete 10070,1 << Cata --Cast Steady Shot
	.mob Training Dummy
step << Mage cata
    .goto Eversong Woods,38.34,20.64
	>>Lancez |T136096:0|t[Projectiles des Arcanes] sur un |cRXP_ENEMY_Mannequin d'entraînement|r à l'extérieur
	.complete 10068,1 << Cata --Cast Arcane Missiles
	.mob Training Dummy
step << Mage !cata
    .goto Eversong Woods,38.34,20.64
	>>Lancez |T135848:0|t[Veilleur du puits Solanian] sur un |cRXP_ENEMY_Mannequin d'entraînement|r à l'extérieur
	.complete 10068,2 --Cast Frost Nova
	.mob Training Dummy
step << Paladin cata
    .goto Eversong Woods,38.34,20.64
	>>Lancez |T135960:0|t[Sceau de piété] sur vous-même, puis lancez |T135959:0|t[Jugement] sur un |cRXP_ENEMY_Mannequin d'entraînement|r à l'extérieur
	.complete 10069,1 << Cata --Cast Judgement
	.mob Training Dummy
step << Paladin !cata
    .goto Eversong Woods,38.34,20.64
	>>Lancez |T135961:0|t[Sceau d'autorité], puis attaquez un |cRXP_ENEMY_Mannequin d'entraînement|r à l'extérieur
	.complete 10069,2
	.mob Training Dummy
step << Priest cata
    .goto Eversong Woods,39.49,20.29
	>>Lancez |T135907:0|t[Soins rapides] sur une |cRXP_ENEMY_Estafette blessée|r
	.complete 10072,1 --Cast Flash Heal
	.target Wounded Outrunner
 step << Priest !cata
    .goto Eversong Woods,38.34,20.64
	>>Lancez |T136207:0|t[Mot de l'ombre : Douleur] sur un |cRXP_ENEMY_Mannequin d'entraînement|r à l'extérieur
	.complete 10072,2 --Cast Shadow Word: Pain
	.mob Training Dummy
step << Rogue
    .goto Eversong Woods,38.34,20.64
	>>Lancez |T132292:0|t[L'éviscération] sur un |cRXP_ENEMY_Mannequin d'entraînement|r à l'extérieur
	.complete 10071,2 << !Cata --Cast Eviscerate
	.complete 10071,1 << Cata --Cast Eviscerate
	.mob Training Dummy
step << Warlock cata
    .goto Eversong Woods,38.34,20.64
	>>Lancez |T135817:0|t[Immolation] sur un |cRXP_ENEMY_Mannequin d'entraînement|r à l'extérieur
	.complete 10073,1 --Cast Immolate
	.mob Training Dummy
step << Warlock !cata
    .goto Eversong Woods,38.34,20.64
	>>Lancez |T136118:0|t[Veilleur du puits Solanian] sur un |cRXP_ENEMY_Mannequin d'entraînement|r à l'extérieur
	.complete 10073,2 --Cast Corruption
	.mob Training Dummy
step << Warrior
    .goto Eversong Woods,38.34,20.64
	>>Lancez |T132337:0|t[À la charge !] sur un |cRXP_ENEMY_Mannequin d'entraînement|r à l'extérieur
	.complete 27091,2 << !Cata --Cast Charge
	.complete 27091,1 << Cata --Cast Charge
	.mob Training Dummy
step << Monk
    .goto 467/0,-3998.200,7978.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pao|r
    .turnin 31171 >>Rendre la quête Paume du tigre
    .target Pao
step << Hunter
    .goto Eversong Woods,39.05,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Forestier Sallina|r
    .turnin 10070 >>Rendez la quête Visée
    .target Ranger Sallina
step << Mage cata
    .goto Eversong Woods,39.23,21.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Julia Heurtesoleil|r
    .turnin 10068 >>Rendez la quête Projectiles des Arcanes
    .target Julia Sunstriker
step << Mage !cata
    .goto Eversong Woods,39.23,21.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Julia Heurtesoleil|r
    .turnin 10068 >>Rendez la quête Nova de givre
    .target Julia Sunstriker
step << Paladin
    .goto Eversong Woods,39.47,20.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jesthenis Heurtesoleil|r
    .turnin 10069 >>Rendez la quête La voie de la Lumière
    .target Jesthenis Sunstriker
step << Priest cata
    .goto Eversong Woods,39.41,20.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matron Arène|r
    .turnin 10072 >>Rendre la quête Soins du Blessé
    .target Matron Arena
step << Priest !cata
    .goto Eversong Woods,39.41,20.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matron Arène|r
    .turnin 10072 >>Rendre la quête Veilleur du puits Solanian
    .target Matron Arena
step << Rogue
    .goto Eversong Woods,38.93,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pathstalker Avokor|r
    .turnin 10071 >>Rendez la quête L'éviscération
    .target Pathstalker Avokor
step << Warlock cata
    .goto Eversong Woods,38.94,21.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Invocateur Teli'Larien|r
    .turnin 10073 >>Rendre la quête Immoler
    .target Summoner Teli'Larien
step << Warlock !cata
    .goto Eversong Woods,38.94,21.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Invocateur Teli'Larien|r
    .turnin 10073 >>Rendez la quête Veilleur du puits Solanian
    .target Summoner Teli'Larien
step << Warrior
    .goto Eversong Woods,39.29,20.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delios Lame-d'argent|r
    .turnin 27091 >>Rendre la quête À la charge !
    .target Delios Silverblade
step
    #completewith next
    .goto Eversong Woods,39.44,21.16,10,0
    .goto Eversong Woods,39.44,20.35,10,0
    .goto Eversong Woods,39.10,20.04,10 >>Montez à l'étage
step
    .goto Eversong Woods,38.97,20.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Veilleur du puits Solanian|r
    .accept 8330 >>Acceptez la quête Les possessions de Solanian
    .accept 8345 >>Acceptez la quête Le sanctuaire de Dath'Remar
    .target Well Watcher Solanian
step
    .goto Eversong Woods,38.27,19.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arcaniste Ithanas|r
    .accept 8336 >>Acceptez la quête Pour une poignée d'esquilles
    .target Arcanist Ithanas
step
    .goto Eversong Woods,37.18,18.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arcaniste Helion|r
    .accept 8346 >>Acceptez la quête L'insatiable soif
    .target Arcanist Helion
step
    #completewith Journal
    >>Lancez |T136222:0|t[Torrent arcanique] quand vous êtes à portée de mêlée d'un |cRXP_ENEMY_Wyrm de mana|r
    >>Tuez les |cRXP_ENEMY_Mana Wyrms|r et les |cRXP_ENEMY_Feral Tenders|r. Dépouillez-les pour obtenir leurs |cRXP_LOOT_Slivers|r
    .complete 8346,1 --Cast Arcane Torrent on Mana Wyrm (x1)
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .mob Mana Wyrm
    .mob Feral Tender
step
    .goto Eversong Woods,35.37,22.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lanthan Perilon|r
    .turnin 8327 >>Rendez la quête Se présenter à Lanthan Perilon
    .accept 8334 >>Acceptez la quête Agression
    .target Lanthan Perilon
step
    #label Journal
    .goto Eversong Woods,37.70,24.91
    >>Ramassez le |cRXP_PICK_Journal|r sur le sol
    .complete 8330,3 --Collect Solanian's Journal (x1)
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Tenders|r et les |cRXP_ENEMY_Feral Tenders|r. Dépouillez-les pour obtenir leurs |cRXP_LOOT_Slivers|r
    .complete 8334,1 --Kill Tender (x7)
    .complete 8334,2 --Kill Feral Tender (x7)
    .complete 8336,1--Collect Arcane Sliver (x6)
    .mob Tender
    .mob Feral Tender
step
    #label RedOrb
    .goto Eversong Woods,35.14,28.89
    >>Ramassez le |cRXP_PICK_Scrying Orb|r sur la plateforme
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
    >>Tuez les |cRXP_ENEMY_Tenders|r et les |cRXP_ENEMY_Feral Tenders|r. Dépouillez-les pour obtenir leurs |cRXP_LOOT_Slivers|r
    .complete 8334,1 --Kill Tender (x7)
    .mob +Tender
    .complete 8334,2 --Kill Feral Tender (x7)
    .mob +Feral Tender
    .complete 8336,1--Collect Arcane Sliver (x6)
step
    #label Aggression
    .goto Eversong Woods,35.37,22.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lanthan|r
    .turnin 8334 >>Rendez la quête Agression
    .accept 8335 >>Acceptez la quête Felendren le Banni
    .target Lanthan Perilon
step
    #completewith RunRamp
    >>Tuez les |cRXP_ENEMY_Feral Tenders|r. Dépouillez-les pour obtenir leurs |cRXP_LOOT_Slivers|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .mob Feral Tender
step
    #label Shrine
    .goto Eversong Woods,29.61,19.38
    >>Cliquez sur le |cRXP_PICK_Shrine of Dath'Remar|r
    .complete 8345,1 --Collect Shrine of Dath'Remar Read (x1)
step
    .goto Eversong Woods,31.33,22.74
    >>Ramassez le |cRXP_PICK_Scroll|r sur le sol
    .complete 8330,2 --Collect Scroll of Scourge Magic (x1)
step
    #label RunRamp
    #completewith next
    .goto Eversong Woods,32.57,25.53,20,0
    .goto Eversong Woods,32.02,26.09,20 >>Montez la rampe
step
    #completewith Academy
    >>Tuez un |cRXP_ENEMY_Tainted Arcane Wraith|r. Dépouillez-le pour son [|cRXP_LOOT_Tainted Arcane Sliver|r].
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Tainted Arcane Sliver|r] pour commencer la quête|r
    .collect 20483,1,8338,1 --Tainted Arcane Sliver (1)
    .accept 8338 >>Acceptez la quête L'esquille arcanique contaminée
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
    >>Tuez les |cRXP_ENEMY_Arcane Wraiths|r et les |cRXP_ENEMY_Tainted (Arcanes) Wraiths|r en montant à l'Académie. Dépouillez-les pour obtenir leurs |cRXP_LOOT_Slivers|r
    >>Tuez |cRXP_ENEMY_Felendren the Banished|r tout en haut. Dépouillez-le pour sa |cRXP_LOOT_Head|r
    .complete 8335,1 --Kill Arcane Wraith (x8)
    .complete 8335,2 --Kill Tainted Arcane Wraith (x2)
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .complete 8335,3 --Collect Felendren's Head (x1)
    .mob Arcane Wraith
    .mob Tainted Arcane Wraith
    .mob Felendren the Banished
step
    .goto Eversong Woods,30.84,27.13
    >>Tuez un |cRXP_ENEMY_Tainted Arcane Wraith|r. Dépouillez-le pour son [|cRXP_LOOT_Tainted Arcane Sliver|r].
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Tainted Arcane Sliver|r] pour commencer la quête|r
    .collect 20483,1,8338,1 --Tainted Arcane Sliver (1)
    .accept 8338 >>Acceptez la quête L'esquille arcanique contaminée
    .mob Tainted Arcane Wraith
    .use 20483
step
    #completewith SolanianB
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Mana Wyrms|r. Dépouillez-les pour obtenir leurs |cRXP_LOOT_Slivers|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .mob Mana Wyrm
step
    #loop
    .goto Eversong Woods,36.79,19.88,0
    .goto Eversong Woods,36.79,19.88,40,0
    .goto Eversong Woods,34.64,18.82,40,0
    .goto Eversong Woods,33.78,19.46,40,0
    .goto Eversong Woods,34.17,20.59,40,0
    >>Lancez |T136222:0|t[Torrent arcanique] quand vous êtes à portée de mêlée d'un |cRXP_ENEMY_Wyrm de mana|r
    .complete 8346,1 --Cast Arcane Torrent on Mana Wyrm (x1)
    .mob Mana Wyrm
step
    #loop
    .goto Eversong Woods,36.79,19.88,0
    .goto Eversong Woods,36.79,19.88,40,0
    .goto Eversong Woods,34.64,18.82,40,0
    .goto Eversong Woods,33.78,19.46,40,0
    .goto Eversong Woods,34.17,20.59,40,0
    >>Tuez les |cRXP_ENEMY_Mana Wyrms|r. Ramassez leurs |cRXP_LOOT_Slivers|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .mob Mana Wyrm
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helion|r et |cRXP_FRIENDLY_Ithanas|r
    .turnin 8346 >>Rendez la quête L'insatiable soif
    .turnin 8338 >>Rendez la quête L'esquille arcanique contaminée
    .target +Arcanist Helion
    .goto Eversong Woods,37.18,18.94
    .turnin 8336 >>Rendez la quête Pour une poignée d'esquilles
    .target +Arcanist Ithanas
    .goto Eversong Woods,38.27,19.13
step
    #completewith next
    .goto Eversong Woods,39.44,21.16,10,0
    .goto Eversong Woods,39.44,20.35,10,0
    .goto Eversong Woods,39.10,20.04,10 >>Montez à l'étage
step
    #label SolanianB
    .goto Eversong Woods,38.97,20.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Solanian|r
    .turnin 8330 >>Rendez la quête Les possessions de Solanian
    .turnin 8345 >>Rendez la quête Le sanctuaire de Dath'Remar
    .target Well Watcher Solanian
step << Hunter Cata
    .goto Eversong Woods,39.05,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Forestier Sallina|r
    .train 2973 >>Apprenez [Attaque du Raptor]
    .target Ranger Sallina
    .xp <6,1
step << Mage Cata
    .goto Eversong Woods,39.23,21.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Julia Heurtesoleil|r
    .train 2136 >>Apprenez [Trait de feu]
    .target Julia Sunstriker
    .xp <5,1
step << Paladin Cata
    .goto Eversong Woods,39.47,20.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jesthenis Heurtesoleil|r
    .train 465 >>Apprenez [Aura de dévotion]
    .target Jesthenis Sunstriker
    .xp <5,1
step << Priest Cata
    .goto Eversong Woods,39.41,20.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Matron Arène|r
    .train 17 >>Apprenez [Mot de pouvoir : Bouclier]
    .target Matron Arena
    .xp <5,1
step << Rogue Cata
    .goto Eversong Woods,38.93,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pathstalker Avokor|r
    .train 1784 >>Apprenez [Camouflage]
    .target Pathstalker Avokor
    .xp <5,1
step << Warlock Cata
    .goto Eversong Woods,38.94,21.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Invocateur Teli'Larien|r
    .train 1454 >>Apprenez [Connexion]
    .target Summoner Teli'Larien
    .xp <5,1
step << Warrior Cata
    .goto Eversong Woods,39.29,20.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delios Lame-d'argent|r
    .train 34428 >>Entraînez-vous à |T132342:0|t[Ivresse de la victoire]
    .target Delios Silverblade
    .xp <5,1
step
    .goto Eversong Woods,35.37,22.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lanthan|r
    .turnin 8335 >>Rendez la quête Felendren le Banni
    .accept 8347 >>Acceptez la quête Aider les estafettes
    .target Lanthan Perilon
step
    #completewith next
    .goto Eversong Woods,39.283,30.747,30,0
    .goto Eversong Woods,40.177,31.700,30 >>Passez le Pont
step
    .goto Eversong Woods,40.420,32.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alarion|r
    .turnin 8347 >>Rendez la quête Aider les estafettes
    .accept 9704 >>Acceptez la quête Tuée par les Déshérités
    .target Outrunner Alarion
step
    .goto Eversong Woods,42.020,35.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tInteragissez avec le cadavre du |cRXP_FRIENDLY_Outrunner|r' sur le sol
    .turnin 9704 >>Rendez la quête Tuée par les Déshérités
    .accept 9705 >>Acceptez la quête Récupérer un paquet
    .target Slain Outrunner
step
    .goto Eversong Woods,40.420,32.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alarion|r
    .turnin 9705 >>Rendez la quête Récupérer un paquet
    .accept 8350 >>Acceptez la quête Achever la livraison
    .target Outrunner Alarion


]])

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 6-10 Bois des Chants éternels
#next 10-22 Azshara
#version 1
--#group RXP Cataclysm (H) << cata

#defaultfor BloodElf/Undead
#group RXP Cataclysme 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000

step << Undead
    .goto Eversong Woods,50.331,50.770
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Forestier Jaela|r
    .accept 8475 >>Acceptez la quête La Malebrèche
    .target Ranger Jaela
step << Undead
    #loop
    .goto Eversong Woods,49.857,55.567,0
    .waypoint Eversong Woods,49.699,53.225,40,0
    .waypoint Eversong Woods,49.857,55.567,40,0
    .waypoint Eversong Woods,49.851,57.816,40,0
    .waypoint Eversong Woods,50.095,59.583,40,0
    .waypoint Eversong Woods,51.072,56.126,40,0
    >>Tuez les |cRXP_ENEMY_Plaguebone Pillagers|r
    .complete 8475,1 --8/8 Plaguebone Pillager slain
    .mob Plaguebone Pillager
step << Undead
    .goto Eversong Woods,50.331,50.770
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Forestier Jaela|r
    .turnin 8475 >>Rendez la quête La Malebrèche
    .target Ranger Jaela
step
    #completewith next
    .subzone 3665 >>Dirigez-vous vers la place de l'Epervier
step
    .goto Eversong Woods,47.256,46.314
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jarondis|r
    .accept 8472 >>Acceptez la quête Un mauvais fonctionnement
    .target Magister Jaronis
step << !Undead
    #completewith next
    .goto Eversong Woods,47.771,47.303,8,0
    .goto Eversong Woods,47.823,47.696,8 >>Entrez dans l'auberge
step << !Undead
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delaniel|r
    .turnin 8350 >>Rendez la quête Achever la livraison << BloodElf
    .home >>Liez votre Pierre de foyer à la Place de l'Épervier
    .target Innkeeper Delaniel
    .isQuestAvailable 8885
step << !Undead
    #completewith next
    .goto Eversong Woods,47.823,47.696,8,0
    .goto Eversong Woods,47.771,47.303,8 >>Sortez à l'extérieur
step
    .goto Eversong Woods,48.166,46.311
    >>Cliquez sur l' |cRXP_PICK_l'Affiche de recherche|r
    .accept 8468 >>Acceptez la quête Recherche : Thaelis l'Affameur
step
    .goto Eversong Woods,48.165,45.999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aeldon Signesol|r
    .accept 8463 >> Acceptez la quête Les cristaux de mana instables
    .target Aeldon Sunbrand
step << Rogue
    .goto Eversong Woods,48.492,45.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Geron|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Gladius] (5s 9c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Eversong Woods,48.492,45.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Geron|r
    >>|cRXP_BUY_Achetez un|r [Glaive] |cRXP_BUY_à Geron|r
    .collect 2488,1,8468,1 --Gladius (1)
    .target Geron
    .money <0.0509
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior/Paladin
    .goto Eversong Woods,48.492,45.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Geron|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un |T133053:0|t[Maillet en bois] (6 argent 66 cuivre). Vous reviendrez plus rien si vous n'avez pas encore assez d'argent
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Warrior/Paladin
    .goto Eversong Woods,48.492,45.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Geron|r
    >>|cRXP_BUY_Achetez une|r |T133053:0|t[Massette en bois] |cRXP_BUY_auprès de lui|r
    .collect 2493,1,8468,1 --Collect Wooden Mallet (1)
    .target Geron
    .money <0.0666
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Rogue
    #completewith Thaelis
    +Équipez le |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior/Paladin
    #completewith Thaelis
    +Équipez le |T133053:0|t[Maillet en bois]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step
    #completewith next
    .goto Eversong Woods,46.96,43.56,40,0
    .goto Eversong Woods,47.09,39.00,40,0
    >>Ramassez les |cRXP_PICK_Unstable Mana Crystal Boxes|r sur le sol
    >>Tuez les |cRXP_ENEMY_Arcane Patrollers|r. Dépouillez-les pour leur |cRXP_LOOT_Cores|r
    .complete 8463,1 --Collect Unstable Mana Crystal (x6)
    .complete 8472,1 --Collect Arcane Core (x6)
    .mob Arcane Patroller
step
    #label Thaelis
    .goto Eversong Woods,45.02,37.68
    >>Tuez |cRXP_ENEMY_Thaelis the Hungerer|r. Dépouillez-le pour sa |cRXP_LOOT_Thaelis's Head|r
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
    >>Ramassez les |cRXP_PICK_Unstable Mana Crystal Boxes|r sur le sol
    >>Tuez les |cRXP_ENEMY_Arcane Patrollers|r. Dépouillez-les pour leur |cRXP_LOOT_Cores|r
    .complete 8463,1 --Collect Unstable Mana Crystal (x6)
    .complete 8472,1 --Collect Arcane Core (x6)
    .mob Arcane Patroller
step
    .goto Eversong Woods,47.256,46.314
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jarondis|r
    .turnin 8472 >>Rendez la quête Un mauvais fonctionnement
    .accept 8895 >>Acceptez la quête Une livraison au sanctum septentrional
    .target Magister Jaronis
step
    .goto Eversong Woods,47.77,46.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergent Kan'ren|r
    .turnin 8468 >>Rendez la quête Recherche : Thaelis l'Affameur
    .target Sergeant Kan'ren
step
    .goto Eversong Woods,48.165,45.999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aeldon Signesol|r
    .turnin 8463 >>Rendez la quête Les cristaux de mana instables
    .accept 9352 >>Acceptez la quête Les intrusions darnassiennes
    .target Aeldon Sunbrand
step << Paladin Cata
    .goto Eversong Woods,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Noellene|r
    .train 635 >>Apprenez vos sorts de classe
    .target Noellene
	.xp <7,1
    .xp >9,1
step << Paladin Cata
    #optional
    .goto Eversong Woods,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Noellene|r
    .train 85673 >>Apprenez vos sorts de classe
    .target Noellene
    .xp >7,1
	.xp <9,1
step << Warrior Cata
    .goto Eversong Woods,48.29,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lothan|r
    .train 772 >>Apprenez vos sorts de classe
    .target Lothan Silverblade
	.xp <7,1
    .xp >9,1
step << Warrior Cata
    #optional
    .goto Eversong Woods,48.29,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lothan|r
    .train 6343 >>Apprenez vos sorts de classe
    .target Lothan Silverblade
    .xp >7,1
	.xp <9,1
step << Rogue Cata
    .goto Eversong Woods,48.58,46.29,8,0
    .goto Eversong Woods,48.50,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tannaria|r à l'étage
    .train 5277 >>Apprenez vos sorts de classe
    .target Tannaria
	.xp <9,1
step << Hunter Cata
    .goto Eversong Woods,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hannovia|r
    .train 2973 >>Apprenez vos sorts de classe
    .target Hannovia
    .xp <6,1
    .xp >8,1
step << Hunter Cata
    #optional
    .goto Eversong Woods,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hannovia|r
    .train 5116 >>Apprenez vos sorts de classe
    .target Hannovia
	.xp <8,1
step << Mage Cata/Warlock Cata/Priest Cata
    #optional
    #completewith next
    .goto Eversong Woods,47.771,47.303,8,0
    .goto Eversong Woods,47.823,47.696,8 >>Entrez dans l'auberge
step << Mage Cata/Warlock Cata/Priest Cata
    #optional
    #completewith next
    .goto Eversong Woods,48.286,47.097,8,0
    .goto Eversong Woods,48.054,47.130,8,0
    .goto Eversong Woods,48.074,47.354,8 >>Montez à l'étage
step << Priest Cata
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponaris|r
    .train 588 >>Apprenez vos sorts de classe
    .target Ponaris
	.xp <7,1
    .xp >9,1
step << Priest Cata
    #optional
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponaris|r
    .train 8092 >>Apprenez vos sorts de classe
    .target Ponaris
	.xp >7,1
    .xp <9,1
step << Mage Cata
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Garridel|r
    .train 116 >>Apprenez vos sorts de classe
    .target Garridel
	.xp <7,1
    .xp >8,1
step << Mage Cata
    #optional
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Garridel|r
    .train 122 >>Apprenez vos sorts de classe
    .target Garridel
	.xp >7,1
    .xp <8,1
step << Warlock Cata
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Celoenus|r
    .train 689 >>Apprenez vos sorts de classe
    .target Celoenus
	.xp <6,1
    .xp >8,1
step << Warlock Cata
    #optional
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Celoenus|r
    .train 697 >>Apprenez vos sorts de classe
    .target Celoenus
	.xp >6,1
    .xp <8,1
step << Rogue
    .goto Eversong Woods,48.492,45.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Geron|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Gladius] (5s 9c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Eversong Woods,48.492,45.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Geron|r
    >>|cRXP_BUY_Achetez un|r [Glaive] |cRXP_BUY_à Geron|r
    .collect 2488,1,9062,1 --Gladius (1)
    .target Geron
    .money <0.0509
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior/Paladin
    .goto Eversong Woods,48.492,45.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Geron|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un |T133053:0|t[Maillet en bois] (6 argent 66 cuivre). Vous reviendrez plus rien si vous n'avez pas encore assez d'argent
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Warrior/Paladin
    .goto Eversong Woods,48.492,45.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Geron|r
    >>|cRXP_BUY_Achetez une|r |T133053:0|t[Massette en bois] |cRXP_BUY_chez lui|r
    .collect 2493,1,9062,1 --Collect Wooden Mallet (1)
    .target Geron
    .money <0.0666
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Rogue
    #completewith Caidanis
    +Équipez le |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior/Paladin
    #completewith Caidanis
    +Équipez le |T133053:0|t[Maillet en bois]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step
    #completewith next
    .goto Eversong Woods,46.68,48.07,30,0
    .goto Eversong Woods,44.63,53.13,30 >>Voyagez vers |cRXP_FRIENDLY_Caidanis|r
step
    #label Caidanis
    .goto Eversong Woods,44.63,53.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Telluriste Caidanis|r
    .turnin 8895 >>Rendez la quête Une livraison au sanctum septentrional
    .accept 9119 >>Acceptez la quête Panne au sanctum occidental
    .target Ley-Keeper Caidanis
step
    .goto Eversong Woods,36.70,57.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Telluriste Velania|r
    .turnin 9119 >>Rendez la quête Panne au sanctum occidental
    .accept 8486 >>Acceptez la quête L'instabilité arcanique
    .target Ley-Keeper Velania
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Manawraiths|r et les |cRXP_ENEMY_Mana Stalkers|r
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
    >>Tuez un |cRXP_ENEMY_Darnassian Scout|r. Dépouillez-le pour ses [|cRXP_LOOT_Incriminating Documents|r]
    >>|cRXP_WARN_Utilisez les [|cRXP_LOOT_Incriminating Documents|r] pour commencer la quête|r
    .complete 9352,1 --Intruder Defeated
    .collect 20765,1,8482 --Incriminating Documents (1)
    .accept 8482 >> Acceptez la quête Les documents compromettants
    .mob Darnassian Scout
    .use 20765
step
    #loop
    .goto Eversong Woods,35.759,60.591,0
    .goto Eversong Woods,35.768,57.544,40,0
    .goto Eversong Woods,34.491,60.834,40,0
    .goto Eversong Woods,35.759,60.591,40,0
    .goto Eversong Woods,35.946,59.096,40,0
    >>Tuez les |cRXP_ENEMY_Manawraiths|r et les |cRXP_ENEMY_Mana Stalkers|r
    .complete 8486,1 --Kill Manawraith (x5)
    .mob +Manawraith
    .complete 8486,2 --Kill Mana Stalker (x5)
    .mob +Mana Stalker
step
    .goto Eversong Woods,36.70,57.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Telluriste Velania|r
    .turnin 8486 >>Rendez la quête L'instabilité arcanique
    .turnin 9352 >>Rendez la quête Les intrusions darnassiennes
    .target Ley-Keeper Velania
step
    .goto Eversong Woods,30.22,58.35,10,0
    .goto Eversong Woods,30.23,58.44,10,0
    .goto Eversong Woods,29.90,58.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hathvelion Miresoleil|r
    .accept 8884 >>Acceptez la quête Des têtes de poisson à la pelle
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
    >>Tuez |cRXP_ENEMY_Grimscale Foragers|r et |cRXP_ENEMY_Grimscale Seers|r. Ramassez-les pour leurs |cRXP_LOOT_Murloc Face|r et |T134939:0|t[|cRXP_LOOT_Les portulans perdus du capitaine Kelisendra|r]
    >>|cRXP_WARN_Utilisez [|cRXP_LOOT_Captain Kelisendra's Lost Rutters|r] pour commencer la quête|r
    .complete 8884,1 --Collect Grimscale Murloc Head (x8)
    .collect 21776,1,8887,1 --Captain Kelisendra's Lost Rutters
    .accept 8887 >>Acceptez la quête Les portulans perdus du capitaine Kelisendra
    .mob Grimscale Forager
    .mob Grimscale Seer
    .use 21776
step
    .goto Eversong Woods,29.90,58.45,10,0
    .goto Eversong Woods,30.23,58.44,10,0
    .goto Eversong Woods,30.22,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hathvelion Miresoleil|r
    .turnin 8884 >>Rendez la quête Des têtes de poisson à la pelle
    .accept 8885 >>Acceptez la quête L'anneau de Mmmrrrggglll
    .target Hathvelion Sungaze
step
    #completewith next
    .goto Eversong Woods,27.94,59.41,20,0
    .goto Eversong Woods,28.01,61.01,20,0
    .goto Eversong Woods,26.25,60.46
    .deathskip >>Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
step
    #xprate <1.2
    .goto Eversong Woods,44.718,69.619
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Velan Brillechêne|r
    .accept 8491 >>Acceptez la quête Récupérer des fourrures
    .target Velan Brightoak
step
    #completewith next
    .goto Eversong Woods,43.61,70.66,10 >>Montez à l'étage
step
    .goto Eversong Woods,43.34,70.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Forestier Degolien|r
    .accept 8892 >> Acceptez la quête La situation au mouillage des Voiles du soleil
    .target Ranger Degolien
step << BloodElf
    .goto Eversong Woods,43.698,71.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sathiel|r
    .accept 9130 >>Acceptez la quête Des marchandises de Lune-d’Argent
    .target Sathiel
    --VV TODO: See if this quest chain is live on beta
step << BloodElf
    .goto Eversong Woods,43.949,69.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maître du ciel Brillaube|r.
    .turnin 9130 >>Rendez la quête Des marchandises de Lune-d’Argent
    .accept 9133 >>Acceptez la quête Un vol jusqu'à Lune-d'Argent
    .target Skymaster Brightdawn
step
    #xprate <1.2
    #completewith next
    .goto Eversong Woods,40.742,70.869,0
    >>Tuez les |cRXP_ENEMY_Springpaw Stalkers|r. Dépouillez-les pour leur |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kelisendra|r et |cRXP_FRIENDLY_Velendris|r
    .turnin 8887 >>Rendez la quête Les portulans perdus du capitaine Kelisendra
    .accept 8886 >>Acceptez la quête Les pirates Sinistrécaille !
    .goto Eversong Woods,36.36,66.62
    .accept 8480 >>Acceptez la quête Les armes perdues
    .goto Eversong Woods,36.36,66.78
    .target Captain Kelisendra
    .target Velendris Whitemorn
step
    #completewith Aldaron
    >>Tuez les |cRXP_ENEMY_Wretched Thugs|r et les |cRXP_ENEMY_Wretched Hooligans|r
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
    >>Ramassez les |cRXP_PICK_Armament Boxes|r sur le sol près des |cRXP_ENEMY_Wretched|r et à l'intérieur du bâtiment
    .complete 8480,1 --Collect Sin'dorei Armaments (x8)
step
    .goto Eversong Woods,36.36,66.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Velendris|r
    .turnin 8480 >>Rendez la quête Les armes perdues
    .accept 9076 >>Acceptez la quête Le maître des Déshérités
    .target Velendris Whitemorn
step
    #completewith next
    .goto Eversong Woods,32.80,69.49,40,0
    .goto Eversong Woods,32.77,68.65,10,0
    .goto Eversong Woods,32.24,68.98,10,0
    .goto Eversong Woods,32.30,70.03,10,0
    .goto Eversong Woods,32.78,70.17,10,0
    .goto Eversong Woods,32.82,68.80,10,0
    .goto Eversong Woods,33.19,69.21,10 >>Montez dans le bâtiment
step
    #label Aldaron
    .goto Eversong Woods,32.80,69.40
    >>Tuez |cRXP_ENEMY_Aldaron the Téméraire|r au sommet. Ramassez-le pour le |cRXP_LOOT_Aldaron's Tête|r
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
    >>Tuez les |cRXP_ENEMY_Wretched Thugs|r et les |cRXP_ENEMY_Wretched Hooligans|r
    .complete 8892,1 --Kill Wretched Thug (x5)
    .mob +Wretched Thug
    .complete 8892,2 --Kill Wretched Hooligan (x5)
    .mob +Wretched Hooligan
step
    #xprate <1.2
    #completewith next
    >>Tuez les |cRXP_ENEMY_Springpaw Stalkers|r. Dépouillez-les pour leur |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
step
    #completewith next
    .goto Eversong Woods,24.32,74.07,40,0
    >>Tuez les |cRXP_ENEMY_Grimscale Murlocs|r et les |cRXP_ENEMY_Grimscale Oracles|r. Dépouillez-les pour leur |cRXP_LOOT_Cargo|r
    >>Ramassez les |cRXP_PICK_Cargo Barrels|r sur le sol
    >>Utilisez [Torrent arcanique] pour interrompre le [Soins rapides] du |cRXP_ENEMY_Grimscale Oracles|r << BloodElf
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
    >>Tuez |cRXP_ENEMY_Mmmrrrggglll|r. Dépouillez-le pour son |cRXP_LOOT_Ring of Mmmrrrggglll|r
    >>Il patrouille non loin de sa zone
    >>Utilisez [Torrent arcanique] pour interrompre les [Vagues de soins] de |cRXP_ENEMY_Mmmrrrggglll|r << BloodElf
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
    >>Tuez les |cRXP_ENEMY_Grimscale Murlocs|r et les |cRXP_ENEMY_Grimscale Oracles|r. Dépouillez-les pour leur |cRXP_LOOT_Cargo|r
    >>Ramassez les |cRXP_PICK_Cargo Barrels|r sur le sol
    >>Utilisez [Torrent arcanique] pour interrompre le [Soins rapides] du |cRXP_ENEMY_Grimscale Oracles|r << BloodElf
    .complete 8886,1 --Collect Captain Kelisendra's Cargo (x6)
    .mob Grimscale Murloc
    .mob Grimscale Oracle
step
    .goto Eversong Woods,29.90,58.45,10,0
    .goto Eversong Woods,30.23,58.44,10,0
    .goto Eversong Woods,30.22,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hathvelion|r
    .turnin 8885 >>Rendez la quête L'anneau de Mmmrrrggglll
    .target Hathvelion Sungaze
step
    #xprate <1.2
    #completewith next
    >>Tuez les |cRXP_ENEMY_Springpaw Stalkers|r. Dépouillez-les pour leur |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kelisendra|r et |cRXP_FRIENDLY_Velendris|r
    .turnin 8886 >>Rendez la quête Les pirates Sinistrécaille !
    .goto Eversong Woods,36.36,66.62
    .turnin 9076 >>Rendez la quête Le maître des Déshérités
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
    >>Tuez les |cRXP_ENEMY_Springpaw Stalkers|r. Ramassez-les pour leurs |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
step
    #completewith SunsailTurnin
    .deathskip >> Mourez et réapparaissez à l'|cRXP_FRIENDLY_Esprit Gardien des âmes|r ou courez vers Brise-Clémente
step
    #xprate <1.2
    .goto Eversong Woods,44.72,69.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Velan|r
    .turnin 8491 >>Rendez la quête Récupérer des fourrures
    .target Velan Brightoak
step
    #label SunsailTurnin
    .goto Eversong Woods,43.34,70.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Degolien|r
    .turnin 8892 >>Rendez la quête La situation au mouillage des Voiles du soleil
    .target Ranger Degolien

    --Section below for users who are not level 10 yet

step
    #xprate <1.2
    .goto Eversong Woods,43.675,71.309
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marniel Luminambre|r
    .accept 9358 >>Acceptez la quête Le forestier Sareyn
    .target Marniel Amberlight
    .maxlevel 9
step
    #xprate <1.2
    .goto Eversong Woods,44.030,70.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magistrice Landra Aube-glorieuse|r
    .accept 9254 >>Acceptez la quête L'apprentie égarée
    .target Magistrix Landra Dawnstrider
    .maxlevel 9
step
    #xprate <1.2
    .goto Eversong Woods,46.93,71.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sareyn|r
    .turnin 9358 >>Rendez la quête Le forestier Sareyn
    .accept 9252 >>Acceptez la quête La défense de Brise-Clémente
    .target Ranger Sareyn
    .isOnQuest 9358
step
    #xprate <1.2
    #optional
    .goto Eversong Woods,46.93,71.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sareyn|r
    .accept 9252 >>Acceptez la quête La défense de Brise-Clémente
    .target Ranger Sareyn
    .isQuestTurnedIn 9358
step
    #xprate <1.2
    #completewith Notes
    >>Tuez les |cRXP_ENEMY_Rotlimb Marauders|r
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
    >>Tuez les |cRXP_ENEMY_Darkwraiths|r
    >>Faites attention car les |cRXP_ENEMY_Darkwraiths|r lancent [Enrager] (augmente les dégâts et la vitesse d'attaque) lorsqu'ils sont bas en vie
    .complete 9252,2 --Kill Darkwraith (x4)
    .mob Darkwraith
    .isOnQuest 9252
step
    #xprate <1.2
    .goto Eversong Woods,54.28,70.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mirveda|r
    .turnin 9254 >>Rendez la quête L'apprentie égarée
    .accept 8487 >>Acceptez la quête Le sol contaminé
    .target Apprentice Mirveda
    .isOnQuest 9254
step
    #xprate <1.2
    #optional
    .goto Eversong Woods,54.28,70.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mirveda|r
    .accept 8487 >>Acceptez la quête Le sol contaminé
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
    >>Ramassez les |cRXP_PICK_Tainted Soil Piles|r sur le sol
    .complete 8487,1 --Collect Tainted Soil Sample (x8)
    .isQuestTurnedIn 9254
step
    #xprate <1.2
    .goto Eversong Woods,54.28,70.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mirveda|r
    >>Attendez le temps du RP
    .turnin 8487 >>Rendez la quête Le sol contaminé
    .timer 9,Le sol contaminé RP
    .accept 8488 >>Acceptez la quête Des résultats inattendus
    .target Apprentice Mirveda
    .isQuestTurnedIn 9254
step
    #xprate <1.2
    .goto Eversong Woods,53.66,69.74,20,0
    .goto Eversong Woods,54.28,70.97
    >>Tuez |cRXP_ENEMY_Gharsul the Remorseless|r et les |cRXP_ENEMY_Angershades|r pour protéger |cRXP_FRIENDLY_Mirveda|r
    .complete 8488,1 --Protect Apprentice Mirveda
    .mob Gharsul the Remorseless
    .mob Angershade
    .isQuestTurnedIn 9254
step
    #xprate <1.2
    #label Notes
    .goto Eversong Woods,54.28,70.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mirveda|r
    .turnin 8488 >>Rendez la quête Des résultats inattendus
    .accept 9255 >>Acceptez la quête Les notes de recherche
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
    >>Tuez les |cRXP_ENEMY_Rotlimb Marauders|r
    .complete 9252,1 --Kill Rotlimb Marauder (x4)
    .mob Rotlimb Marauder
    .isOnQuest 9252
step
    #xprate <1.2
    #completewith DefendingFBV
    .deathskip >> Mourez et réapparaissez à l'|cRXP_FRIENDLY_Esprit Gardien des âmes|r ou courez vers Brise-Clémente
    .isQuestComplete 9252
step
    #xprate <1.2
    .goto Eversong Woods,44.029,70.765
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magistrice Landra Aube-glorieuse|r
    .turnin 9255 >>Rendez la quête Les notes de recherche
    .target Magistrix Landra Dawnstrider
    .isQuestComplete 9255
step
    #xprate <1.2
    #label DefendingFBV
    .goto Eversong Woods,46.93,71.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sareyn|r
    .turnin 9252 >> Rendez la quête La défense de Brise-Clémente
    .target Ranger Sareyn
    .isQuestComplete 9252
step << !Undead
    #completewith IncrDocs
    .hs >> Utilisez votre Pierre de foyer pour vous téléporter à la Place de l'Épervier
    .cooldown item,6948,>2,1
step
    #completewith IncrDocs
    .goto Eversong Woods,43.949,69.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maître du ciel Brillaube|r.
    .fly Falconwing Square >>Volez à la place de l’Épervier
    .target Skymaster Brightdawn
    .cooldown item,6948,<0 << !Undead
step
    #label IncrDocs
    .goto Eversong Woods,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aeldon|r
    .turnin 8482 >> Rendez la quête Les documents compromettants
    .target Aeldon Sunbrand
step << Paladin Cata
    .goto Eversong Woods,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Noellene|r
    .train 20473 >>Apprenez vos sorts de classe
    .target Noellene
step << Warrior Cata
    .goto Eversong Woods,48.29,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lothan|r
    .train 71 >>Apprenez vos sorts de classe
    .target Lothan Silverblade
step << Rogue Cata
    .goto Eversong Woods,48.58,46.29,8,0
    .goto Eversong Woods,48.50,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tannaria|r à l'étage
    .train 5277 >>Apprenez vos sorts de classe
    .target Tannaria
step << Hunter Cata
    .goto Eversong Woods,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hannovia|r
    .train 34026 >>Apprenez vos sorts de classe
    .target Hannovia
step << Mage Cata/Warlock Cata/Priest Cata
    #optional
    #completewith next
    .goto Eversong Woods,47.771,47.303,8,0
    .goto Eversong Woods,47.823,47.696,8 >>Entrez dans l'auberge
step << Mage Cata/Warlock Cata/Priest Cata
    #optional
    #completewith next
    .goto Eversong Woods,48.286,47.097,8,0
    .goto Eversong Woods,48.054,47.130,8,0
    .goto Eversong Woods,48.074,47.354,8 >>Montez à l'étage
step << Priest Cata
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponaris|r
    .train 8092 >>Apprenez vos sorts de classe
    .target Ponaris
step << Mage Cata
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Garridel|r
    .train 2139 >>Apprenez vos sorts de classe
    .target Garridel
step << Warlock Cata
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Celoenus|r
    .train 1120 >>Apprenez vos sorts de classe
    .target Celoenus
step << !Undead
    #completewith next
    .goto Eversong Woods,46.244,46.786
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maître du ciel Célestin|r
    .fly Silvermoon >>Volez jusqu'à Lune-d'Argent
    .target Skymaster Skyles
step << !Undead
    .goto Eversong Woods,56.644,49.628,20,0
    .goto Eversong Woods,56.253,49.224,10,0
    .goto 110,70.881,86.623,10,0
    .goto 110,72.396,85.242
    .zone Silvermoon City >>Entrez à Lune-d'Argent
step << BloodElf
    .goto Silvermoon City,53.92,71.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sathren Aube-azur|r
    .turnin 9133 >>Rendez la quête Un vol jusqu'à Lune-d'Argent
    .target Sathren Azuredawn
    .isOnQuest 9133
step << !Undead
    #completewith next
    .goto Silvermoon City,57.53,24.56,10,0
    .goto Silvermoon City,51.77,17.86,10,0
    .goto Silvermoon City,49.48,14.80
    .zone Undercity >>Utilisez l'Orbe de transposition pour vous téléporter à Fossoyeuse
step << !Undead
    #completewith next
    .goto 18,66.17,4.93,10,0
    .goto 18,61.88,64.94,10 >>Sortez de Fossoyeuse
    .zoneskip Tirisfal Glades
step << Undead
    #completewith next
    .hs >>Utilisez votre Pierre de foyer pour revenir à Brill
step << Undead
    .goto 18,60.13,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morris|r
    .turnin 6324 >>Rendez la quête Approvisionner Brill
    .target Deathguard Morris
step
    .goto 18,61.06,58.86,12,0
    .goto 18,61.51,59.01,10,0
    .goto 18,61.27,59.22,8,0
    .goto 18,61.13,58.84,8,0
    .goto 18,61.38,58.71,8,0
    .goto 18,61.34,59.17,8,0
    .goto 18,60.51,58.69
    >>Montez la Tour des Zeppelins
    .zone Orgrimmar >>Prenez le Zeppelin pour Orgrimmar
]])
