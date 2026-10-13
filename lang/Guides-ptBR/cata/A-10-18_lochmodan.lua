if GetLocale() ~= "ptBR" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end

RXPGuides.RegisterGuide([[

#version 1
#group RXP Cataclismo 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 10-20 Loch Modan
#displayname 10-18 Loch Modan
#next 15-20 Redridge
#defaultfor Human/Dwarf/Gnome/Pandaren

<<Alliance

step
    #optional
    .maxlevel 20,endOfTheGuide
step << Pandaren
    .goto 84,70.94,72.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fly Gol'Bolar Quarry >>Voe para Gol'Bolar Pedreira
	.target Dungar Longdrink
    .zoneskip Dun Morogh
    .zoneskip Loch Modan
step << Pandaren
    #optional
    #completewith next
    .goto 27,87.534,48.059,20,0
    .goto 27,88.331,47.792,12,0
    .goto 27,88.873,48.312,12,0
    .goto 48,12.138,54.947,20,0
    .goto 48,14.025,56.641,12 >>|cRXP_WARN_Viagem para cima da montanha, depois cuidadosamente desça em direção a|r |cRXP_FRIENDLY_Piloto Pisafundo|r
    .noflyable
step << Pandaren
    .goto 48,14.006,56.485
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Piloto Pisafundo|r
    .accept 26854 >>Aceite O Piloto Perdido
    .target Pilot Hammerfoot
step << Pandaren
    #optional
    #completewith next
    .goto 48,12.639,58.419,20,0
    .goto 27,89.543,51.716,20,0
    >>Viaje para |cRXP_PICK_A Enânico Cadáver|r no chão
    .noflyable
step << Pandaren
    .goto 27,87.633,50.139
    >>Clique em |cRXP_PICK_A Enânico Cadáver|r no chão
    >>|cRXP_WARN_Isso fará com que |cRXP_ENEMY_Ronhagarra|r comece a correr em sua direção|r
    .turnin 26854 >>Entregue O Piloto Perdido
    .accept 26855 >>Aceite A Vingança do Piloto
step << Pandaren
    .goto 27,87.421,50.013,0
    .goto 27,87.357,49.213
    >>Mate |cRXP_ENEMY_Ronhagarra|r. Saqueie-o para obter seu |cRXP_LOOT_Mangy Garra|r
    .complete 26855,1 --Mangy Claw (1)
    .unitscan Mangeclaw
step << Pandaren
    .goto 48,14.006,56.485
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Piloto Pisafundo|r
    .turnin 26855 >>Entregue A Vingança do Piloto
    .accept 13635 >>Aceite Relatório Situacional do Portão Sul
    .target Pilot Hammerfoot
step
    #completewith next
    .goto 48,21.398,66.390,30,0
    .goto 48,21.559,68.292,30,0
    .goto 48,23.670,75.378,15,0
    .goto 48,23.495,75.054,12 >>Viaje para |cRXP_FRIENDLY_Capitão Balbúrdia|r dentro do bunker
    .xp >30,1
    .isOnQuest 13635
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Balbúrdia|r e |cRXP_FRIENDLY_Montanhista Sapatorro|r dentro
    .turnin -13635 >>Entregue Relatório Situacional do Portão Sul
    .accept 26146 >>Aceite Em Defesa das Terras do Rei
    .goto 48,23.495,75.054
    .target +Captain Rugelfuss
    .accept 26145 >>Aceite A Ameaça Trogg
    .goto 48,23.332,74.925
    .target +Mountaineer Cobbleflint
step << Warrior/Paladin
    .goto 48,23.673,74.329
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorvald Baixaforja|r
    >>|cRXP_BUY_Compre um|r |T135350:0|t[Espadão] |cRXP_BUY_dele|r
    .collect 1198,1 -- Claymore (1)
    .money <0.2142
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Thorvald Deepforge
step << Rogue/Shaman
    .goto 48,23.673,74.329
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorvald Baixaforja|r
    >>|cRXP_BUY_Compre uma|r |T132402:0|t[Machadinha] |cRXP_BUY_dele|r
    .collect 853,1 -- Hatchet (1)
    .money <0.1927
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .target Thorvald Deepforge
    .xp <11,1
step << Warrior/Paladin
    #optional
    #completewith end
    +|cRXP_WARN_Equipe o|r |T135350:0|t[Espadão]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Rogue/Shaman
    #optional
    #completewith end
    +|cRXP_WARN_Equipe a|r |T132402:0|t[Machadinha] |cRXP_WARN_em sua mão principal|r
    .use 853
    .itemcount 853,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
step
    #completewith next
    .goto 48,22.850,77.894,20,0
    .goto 48,23.693,79.793,20,0
    .goto 48,24.950,78.306,20,0
    .goto 48,27.712,76.586,20,0
    .goto 48,30.076,78.276
    .subzone 923 >>Viaje para cima do caminho em direção a Stonesplinter Valley
    .xp >30,1
step
#loop
    .goto 48,28.888,86.139,30,0
    .goto 48,32.444,79.051,30,0
    .goto 48,36.068,83.253,30,0
    .goto 48,28.888,86.139,0
    .goto 48,32.444,79.051,0
    .goto 48,36.068,83.253,0
    >>Mate e saqueie os |cRXP_ENEMY_Stonesplinter Troggs|r e os |cRXP_ENEMY_Stonesplinter Batedores|r
    .complete 26146,1 --|12/12 Stonesplinter Trogg slain
    .complete 26145,1 --|8/8 Trogg Stone Tooth
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step
#xprate <1.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Balbúrdia|r, |cRXP_FRIENDLY_Montanhista Sapatorro|r e |cRXP_FRIENDLY_Captain Wallbang|r
    .turnin 26146 >>Entregue Em Defesa das Terras do Rei
    .accept 26148 >>Aceite Um Ataque Decisivo
    .target +Captain Rugelfuss
    .goto 48,23.359,74.990
    .turnin 26145 >>Entregue A Ameaça Trogg
    .target +Mountaineer Cobbleflint
    .goto 48,23.332,74.927
    .accept 26147 >>Aceite Agora É Que o Bicho Pega
    .target +Mountaineer Wallbang
    .goto 48,23.298,75.054
step
#xprate >1.299
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Balbúrdia|r, |cRXP_FRIENDLY_Montanhista Sapatorro|r e |cRXP_FRIENDLY_Captain Wallbang|r
    .turnin 26146 >>Entregue Em Defesa das Terras do Rei
    .target +Captain Rugelfuss
    .goto 48,23.359,74.990
    .turnin 26145 >>Entregue A Ameaça Trogg
    .target +Mountaineer Cobbleflint
    .goto 48,23.332,74.927
step
#xprate <1.3
#sticky
#label troggcave1
#loop
    .goto 48,33.657,67.547,25,0
    .goto 48,35.599,63.221,25,0
    .goto 48,35.304,59.151,25,0
    .goto 48,33.289,62.142,25,0
    .goto 48,35.558,61.606,25,0
    .goto 48,34.289,61.146,25,0
    .goto 48,35.995,64.384,25,0
    .goto 48,34.366,66.919,0
    >>Vá para a caverna ao norte de Stonesplinter Valley
    >>Abata os |cRXP_ENEMY_Shamans|r e os |cRXP_ENEMY_Bonesnappers|r
    .complete 26147,1 --|8/8 Stonesplinter Shaman slain
    .complete 26147,2 --|8/8 Stonesplinter Bonesnapper slain
    .mob Stonesplinter Shaman
    .mob Stonesplinter Bonesnapper
step
#xprate <1.3
    >>Vá para o final da caverna e mate |cRXP_ENEMY_Gromug|r
    .goto 48,34.289,61.146
    .complete 26148,1 --|1/1 Grawmug slain
    .mob Grawmug
step
#xprate <1.3
#requires troggcave1
    .goto 48,23.321,75.013
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Balbúrdia|r e |cRXP_FRIENDLY_Captain Wallbang|r
    .turnin 26148 >>Entregue Um Ataque Decisivo
    .accept 26176 >>Aceite Para Thelsamar!
    .target +Captain Rugelfuss
    .goto 48,23.359,74.990
    .turnin 26147 >>Entregue Agora É Que o Bicho Pega
    .target +Mountaineer Wallbang
    .goto 48,23.298,75.054
step
    .goto 48,33.940,50.955
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >>Pegue a rota de voo de Thelsamar
    .target Thorgrum Borrelson
step
    .goto 48,35.079,46.663
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Montanhista Kadrell|r
    .target Mountaineer Kadrell
    .turnin -26176 >>Entregue Para Thelsamar!
    .accept 26842 >>Aceite Está Chovendo Gnoll
    .accept 13636 >>Aceite Ordens dos Lançatroz
step
    #optional
    .maxlevel 20,endOfTheGuide
step
    .goto 48,35.536,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeiro Fornalenha|r
    .home >>Defina sua Pedra de Retorno em Thelsamar
    .target Innkeeper Hearthstove
step
    .goto 48,34.849,49.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vidra Fornalenha|r
    .target Vidra Hearthstove
    .accept 26860 >>Aceite Chouriço de Thelsamar
step << Paladin cata
    .goto 48,35.374,48.810
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Faldoc Petrafé|r
    .trainer >>Treine suas magias de classe
    .target Faldoc Stonefaith
step << Rogue cata
    .goto 48,34.935,48.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Galda Bronzegume|r
    .trainer >>Treine suas magias de classe
    .target Galda Bronzeblade
step << Mage cata
    .goto 48,35.012,48.445
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gindle, o Verde|r
    .trainer >>Treine suas magias de classe
    .target Gindle the Green
step << Hunter cata
    .goto 48,34.553,48.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Belda Selvacuore|r
    .trainer >>Treine suas magias de classe
    .target Belda Wildheart
step << Warrior cata
    .goto 48,33.951,46.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grendin Celeraxa|r
    .trainer >>Treine suas magias de classe
    .target Grendin Swiftaxe
step << Shaman cata
    .goto 48,36.596,48.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grenilda Garranegra|r
    .trainer >>Treine suas magias de classe
    .target Grenhild Darktalon
step << Warlock cata
    .goto 48,35.879,46.199
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Solbin Umbrenagem|r
    .trainer >>Treine suas magias de classe
    .target Solbin Shadowcog
step << Priest cata
    .goto 48,36.108,45.893
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa Baerla|r
    .trainer >>Treine suas magias de classe
    .target Priestess Baerla
step
    .goto 48,37.303,46.517
    >>Clique no |cRXP_PICK_Wanted!|r cartaz
    .accept 13648 >>Aceite Procura-se: Espião dos Ferro Negro
step
    .goto 48,35.960,44.028
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dakk Soltagafe|r
    .target Dakk Blunderblast
    .accept 25118 >>Aceite Aracnofobia
step
    #completewith SilverStreamMine
    >>Abate os |cRXP_ENEMY_Forest Lurkers|r
    .complete 25118,1 --|8/8 Forest Lurker slain
    .mob Forest Lurker
step
    #completewith SilverStreamMine
    >>Mate os |cRXP_ENEMY_Black Ursos|r. Saqueie-os para obter seu |cRXP_LOOT_Rump|r
    .complete 26860,1 --|8/8 Bear Rump
    .mob Black Bear
step
    #loop
    .goto 48,26.258,42.477,30,0
    .goto 48,26.888,50.154,30,0
    .goto 48,26.258,42.477,0
    .goto 48,26.888,50.154,0
    >>Mate os |cRXP_ENEMY_Mosshide Batedores|r e os |cRXP_ENEMY_Mosshide Bashers|r. Saqueie-os para obter suas |cRXP_LOOT_Ears|r
    .complete 26842,1 --|12/12 Mosshide Ear
    .mob Mosshide Basher
    .mob Mosshide Scout
step
    .goto 48,25.444,17.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Montanhista Lançatroz|r
    .turnin 13636 >>Entregue Ordens dos Lançatroz
    .accept 26843 >>Aceite Um Comandante Esperto
    .target Mountaineer Stormpike
step
    .goto 48,26.111,31.575
    >>Abate os |cRXP_ENEMY_"Comandante" Nazrim|r
    .complete 26843,1 --|1/1 "Commander" Nazrim slain
    .mob "Commander" Nazrim
step
    .goto 48,25.444,17.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Montanhista Lançatroz|r
    .turnin 26843 >>Entregue Um Comandante Esperto
    .accept 26844 >>Aceite Aqui Não, Violão!
    .target Mountaineer Stormpike
step
    .goto 48,31.485,13.582,30,0
    .goto 48,35.425,16.773,30,0
    .goto 48,38.607,15.477,30,0
    .goto 48,38.760,13.619,0
    >>Mate os |cRXP_ENEMY_Tunnel Rato Surveyors|r e os |cRXP_ENEMY_Tunnel Rato Foragers|r
    .complete 26844,1 --|5/5 Tunnel Rat Surveyor slain
    .mob +Tunnel Rat Surveyor
    .complete 26844,2 --|5/5 Tunnel Rat Forager slain
    .mob +Tunnel Rat Forager
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r e a |cRXP_FRIENDLY_Batedora Dorli|r
    .turnin 26844 >>Entregue Kobolds e Kobolders
    .accept 26845 >>Aceite O Mandante
    .accept 26863 >>Aceite Patas Nojentas
    .goto 48,25.444,17.963
    .target +Mountaineer Stormpike
    .accept 26846 >>Aceite Abuso de Troggs
    .goto 48,25.398,17.793
    .target +Scout Dorli
step
    #label SilverStreamMine
    #completewith ForemanSharpsneer
    .goto 48,35.49,19.13,15 >>Entre na Prateado Stream Mina
step
    #sticky
    #label koboldmine1
    #loop
    .goto 48,35.623,20.181,20,0
    .goto 48,36.222,24.255,20,0
    .goto 48,34.854,27.180,20,0
    .goto 48,34.752,26.885,20,0
    .goto 48,35.214,20.966,0
    >>Mate os |cRXP_ENEMY_Tunnel Rato Geomancers|r
    >>Abra os |cRXP_PICK_Miners' League Caixotes|r. Saqueie-os pelo |cRXP_LOOT_Miners' Equipamento|r
    .complete 26846,1 --|5/5 Tunnel Rat Geomancer slain
    .mob +Tunnel Rat Geomancer
    .complete 26863,1 --|6/6 Miners' Gear
step
    #label ForemanSharpsneer
    .goto 48,34.752,26.885
    >>|cRXP_WARN_Vá para o fundo da Prateado Stream Mina|r
    >>Mate o |cRXP_ENEMY_Encarregado Zombeteiro|r. Saque-o pela |cRXP_LOOT_Cabeça|r
    .complete 26845,1 --|1/1 Foreman Sharpsneer's Head
    .mob Foreman Sharpsneer
step
    #requires koboldmine1
    #completewith next
    .goto 48,35.49,19.13,15 >>Saia da Prateado Stream Mina
step
    #completewith TheBearer
    >>Mate os |cRXP_ENEMY_Forest Lurkers|r
    .complete 25118,1 --|8/8 Forest Lurker slain
    .mob Forest Lurker
step
    #completewith TheBearer
    >>Mate os |cRXP_ENEMY_Black Ursos|r. Saqueie-os pelo |cRXP_LOOT_Rump|r
    .complete 26860,1 --|8/8 Bear Rump
    .mob Black Bear
step
    #requires koboldmine1
    #label TheBearer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r e a |cRXP_FRIENDLY_Batedora Dorli|r
    .turnin 26845 >>Entregue O Mandante
    .accept 26864 >>Aceite Notícias dos Gnolls
    .turnin 26863 >>Entregue Patas Nojentas
    .target +Mountaineer Stormpike
    .goto 48,25.444,17.963
    .turnin 26846 >>Entregue Abuso de Troggs
    .goto 48,25.398,17.793
    .target +Scout Dorli
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Forest Lurkers|r
    .complete 25118,1 --|8/8 Forest Lurker slain
    .mob Forest Lurker
step
    #loop
    .goto 48,27.649,21.203,40,0
    .goto 48,33.193,31.069,40,0
    .goto 48,35.295,39.016,40,0
    .goto 48,27.649,21.203,0
    .goto 48,33.193,31.069,0
    .goto 48,35.295,39.016,0
    >>Mate os |cRXP_ENEMY_Black Ursos|r. Saqueie-os pelo |cRXP_LOOT_Rump|r
    .complete 26860,1 --|8/8 Bear Rump
    .mob Black Bear
step
    #loop
    .goto 48,33.55,37.43,60,0
    .goto 48,38.94,30.41,60,0
    .goto 48,35.19,27.68,60,0
    .goto 48,27.64,21.20,70,0
    >>Mate os |cRXP_ENEMY_Forest Lurkers|r
    .complete 25118,1 --|8/8 Forest Lurker slain
    .mob Forest Lurker
step
    .isOnQuest 26860,25118
    .hs >>Use sua Pedra de Retorno para ir a Thelsamar
    .cooldown item,6948,>2,1
step
    .goto 48,35.969,44.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dakk Soltagafe|r
    .turnin 25118 >>Entregue Aracnofobia
    .target Dakk Blunderblast
step
    .goto 48,35.017,46.663
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Montanhista Kadrell|r
    .turnin 26842 >>Entregue Está Chovendo Gnoll
    .turnin 26864 >>Entregue Notícias dos Gnolls
    .accept 26927 >>Aceite E, de repente... Murlocs!
    .target Mountaineer Kadrell
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Canária Cascatira|r e |cRXP_FRIENDLY_Vidra Fornalenha|r
    .turnin 26927 >>Entregue E, de repente... Murlocs!
    .accept 26928 >>Aceite Sinto Cheiro de um Plano no Ar
    .accept 26929 >>Aceite Crocodilagem da Boa
    .target +Cannary Caskshot
    .goto 48,34.789,49.122
    .turnin 26860 >>Entregue Chouriço de Thelsamar
    .target +Vidra Hearthstove
    .goto 48,34.827,49.285
step
    #optional
    .maxlevel 20,endOfTheGuide
step << Paladin cata
    .goto 48,35.374,48.810
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Faldoc Petrafé|r
    .trainer >>Treine suas magias de classe
    .target Faldoc Stonefaith
step << Rogue cata
    .goto 48,34.935,48.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Galda Bronzegume|r
    .trainer >>Treine suas magias de classe
    .target Galda Bronzeblade
step << Mage cata
    .goto 48,35.012,48.445
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gindle, o Verde|r
    .trainer >>Treine suas magias de classe
    .target Gindle the Green
step << Hunter cata
    .goto 48,34.553,48.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Belda Selvacuore|r
    .trainer >>Treine suas magias de classe
    .target Belda Wildheart
step << Warrior cata
    .goto 48,33.951,46.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grendin Celeraxa|r
    .trainer >>Treine suas magias de classe
    .target Grendin Swiftaxe
step
    .goto 48,35.079,46.663
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Montanhista Kadrell|r
    .target Mountaineer Kadrell
    .accept 26932 >>Aceite Maldita Urubuzada
step << Shaman cata
    .goto 48,36.596,48.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grenilda Garranegra|r
    .trainer >>Treine suas magias de classe
    .target Grenhild Darktalon
step << Warlock cata
    .goto 48,35.879,46.199
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Solbin Umbrenagem|r
    .trainer >>Treine suas magias de classe
    .target Solbin Shadowcog
step << Priest cata
    .goto 48,36.108,45.893
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa Baerla|r
    .trainer >>Treine suas magias de classe
    .target Priestess Baerla
step
    .goto 48,40.642,58.310,15,0
    .goto 48,39.670,62.104,15,0
    .goto 48,36.796,61.173
    >>Siga a seta até o topo da Serra Pata Parda
    >>Mate |cRXP_ENEMY_Golick Virachope|r
    .complete 13648,1 --|1/1 Gorick Guzzledraught slain
    .mob Gorick Guzzledraught
step
    .goto 48,36.752,61.108
    >>Clique em |cRXP_PICK_Stolen Explorers' League Documentar|r dentro da caverna
    .accept 13656>>Aceite Documento da Liga dos Exploradores (1 de 6)
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Loch Buzzards|r
    >>|cRXP_WARN_Alguns |cRXP_ENEMY_Loch Buzzards|r podem estar voando no ar|r
    .complete 26932,1 --|8/8 Loch Buzzard slain
    .mob Loch Buzzard
step
    #loop
    .goto 48,50.790,63.748,60,0
    .goto 48,55.580,56.273,60,0
    .goto 48,59.933,52.441,60,0
    >>Mate |cRXP_ENEMY_Loch Crocolisks|r. Saqueie-os para obter |cRXP_LOOT_Intact Crocolisco Bocarra|r
    .complete 26929,1 --|6/6 Intact Crocolisk Jaw
    .mob Loch Crocolisk
step
    #loop
    .goto 48,50.790,63.748,60,0
    .goto 48,55.580,56.273,60,0
    .goto 48,59.933,52.441,60,0
    >>Mate os |cRXP_ENEMY_Loch Buzzards|r
    >>|cRXP_WARN_Alguns |cRXP_ENEMY_Loch Buzzards|r podem estar voando no ar|r
    .complete 26932,1 --|8/8 Loch Buzzard slain
    .mob Loch Buzzard
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Bluegill Mudskippers|r e os |cRXP_ENEMY_Bluegill Wanderers|r. Saqueie-os para obter seus |cRXP_LOOT_Scent Glands|r
    .complete 26928,1 --|7/7 Murloc Scent Gland
    .mob Bluegill Mudskipper
    .mob Bluegill Wanderer
step
    .goto 48,41.379,38.967
    >>Clique em |cRXP_PICK_Stolen Explorers' League Documentar|r sob a ponte
    .accept 13655 >>Aceite Documento da Liga dos Exploradores (2 de 6)
step
    #loop
    .goto 48,42.957,39.201,60,0
    .goto 48,46.231,51.109,60,0
    >>Mate os |cRXP_ENEMY_Bluegill Mudskippers|r e os |cRXP_ENEMY_Bluegill Wanderers|r. Saqueie-os para obter seus |cRXP_LOOT_Scent Glands|r
    .complete 26928,1 --|7/7 Murloc Scent Gland
    .mob Bluegill Mudskipper
    .mob Bluegill Wanderer
step
    .goto 48,34.613,44.539
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Magistrado Grã-narina|r
    .target Magistrate Bluntnose
    .turnin 13648 >>Entregue PROCURA-SE: Espião dos Ferro Negro
step
    .goto 48,35.079,46.663
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Montanhista Kadrell|r
    .target Mountaineer Kadrell
    .turnin 26932 >>Entregue Maldita Urubuzada
step
    .goto 48,34.789,49.122
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Canária Cascatira|r
    .turnin 26929 >>Entregue Crocodilagem da Boa
    .turnin 26928 >>Entregue Sinto Cheiro de um Plano no Ar
    .accept 26868 >>Aceite Eixo do Terror
    .target Cannary Caskshot
step
    .goto 48,37.200,46.363
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Torren Queixorreto|r
    .turnin 13656 >>Entregue Documento da Liga dos Exploradores (1 de 6)
    .turnin 13655 >>Entregue Documento da Liga dos Exploradores (2 de 6)
    .target Torren Squarejaw
step
    #optional
    .maxlevel 20,endOfTheGuide
step
    .isOnQuest 26868
    .use 60681 >>|cRXP_WARN_Abra|r |T133639:0|t[Cannary's Cache] |cRXP_WARN_para o|r |T237425:0|t[|cRXP_LOOT_Clever Plantar Disfarce Kit|r] |cRXP_WARN_e|r |T134839:0|t[|cRXP_LOOT_Potent Murloc Feromônios|r]
    .collect 60502,1,26868,1 -- Clever Plant Disguise Kit (1)
    .collect 60503,1,26868,1 -- Potent Murloc Pheromones (1)
step
    .isOnQuest 26868
    .goto 48,50.585,56.048,85 >>|cRXP_WARN_Viagem em direção ao|r |cRXP_ENEMY_Representante Pelemusgo|r
step
    .isOnQuest 26868
    .cast 82788 >>|cRXP_WARN_Use o|r |T237425:0|t[|cRXP_LOOT_Clever Plantar Disfarce Kit|r] |cRXP_WARN_para se disfarçar|r
    .use 60502
step
    .goto 48,50.585,56.048
    >>|cRXP_WARN_Use o|r |T134839:0|t[|cRXP_LOOT_Potent Murloc Feromônios|r] |cRXP_WARN_no|r |cRXP_ENEMY_Mosshide Representative|r
    >>|cRXP_WARN_Isto tem um alcance de 15 jardas|r
    .complete 26868,1 --|1/1 Mosshide Tagged
    .mob Mosshide Representative
    .use 60503
step
    .goto 48,34.789,49.122
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Canária Cascatira|r
    .turnin 26868 >>Entregue Eixo do Terror
    .target Cannary Caskshot
step
    .goto 48,36.992,47.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jern Elmocorno|r
    .accept 13639 >>Aceite Suprimentos para a Escavação
    .target Jern Hornhelm
step
    .goto 48,56.353,65.959
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Huldar|r
    .target Huldar
    .turnin 13639 >>Entregue Suprimentos para a Escavação
    .accept 309 >>Aceite Em Defesa do Carregamento
step
    .goto 48,56.353,65.959
    >>|cRXP_WARN_Permaneça na caravana e proteja |cRXP_FRIENDLY_Huldar|r dos |cRXP_ENEMY_Dark Ferro Ambushers|r e do|r |cRXP_ENEMY_Saean|r
    .complete 309,1 -- Protect the Ironband Caravan (1)
    .mob Dark Iron Ambusher
    .mob Saean
    .target Huldar
step
    .goto 48,58.183,68.975,20,0
    .goto 48,59.722,72.385,20,0
    .goto 48,61.701,73.181
    >>Clique em |cRXP_PICK_Documento Roubado da Liga dos Exploradores|r no chão
    .accept 13657 >>Aceite Documento da Liga dos Exploradores (3 de 6)
step
    .goto 48,64.896,66.659
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Magmar Machadeiro|r
    .target Magmar Fellhew
    .accept 26961 >>Aceite Ídolos
step
    .goto 48,65.336,65.979
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Prospector Bandaferro|r
    .target Prospector Ironband
    .turnin 309 >>Entregue Em Defesa do Carregamento
    .accept 13650 >>Aceite Tire as Mãos Desse Artefato!
step
    #completewith Artifacts
    >>Mate os |cRXP_ENEMY_Stonesplinter Diggers|r e os |cRXP_ENEMY_Stonesplinter Geomancers|r. Saqueie-os para obter seus |cRXP_LOOT_Carved Pedra Idols|r
    .complete 26961,1 --|8/8 Carved Stone Idol
    .mob Stonesplinter Digger
    .mob Stonesplinter Geomancer
step
    .goto 48,67.610,68.736,20,0
    .goto 48,69.218,66.357,8,0
    .goto 48,68.112,66.143
    >>Clique em |cRXP_PICK_Documento Roubado da Liga dos Exploradores|r ao lado do barril
    .accept 13658 >>Aceite Documento da Liga dos Exploradores (4 de 6)
step
    #label Artifacts
    >>|cRXP_WARN_Explore the Artifacts of the Escavação Site|r
    .complete 13650,1 --|1/1 Artifact of the Broken Tablet Inspected
    .goto 48,70.696,67.524
    .complete 13650,3 --|1/1 Artifact of the Overdressed Woman Inspected
    .goto 48,72.759,65.494
    .complete 13650,2 --|1/1 Artifact of the Upturned Giant Inspected
    .goto 48,70.111,59.987
step
    #loop
    .goto 48,69.037,59.360,40,0
    .goto 48,70.633,67.770,40,0
    >>Mate os |cRXP_ENEMY_Stonesplinter Diggers|r e os |cRXP_ENEMY_Stonesplinter Geomancers|r. Saqueie-os para obter seus |cRXP_LOOT_Carved Pedra Idols|r
    .complete 26961,1 --|8/8 Carved Stone Idol
    .mob Stonesplinter Digger
    .mob Stonesplinter Geomancer
step
    .goto 48,65.336,65.979
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Prospector Bandaferro|r
    .target Prospector Ironband
    .turnin 13650 >>Entregue Tire as Mãos Desse Artefato!
step
    .goto 48,64.896,66.659
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Magmar Machadeiro|r
    .target Magmar Fellhew
    .turnin 26961 >>Entregue Ídolos
    .accept 13647 >>Aceite Juntando-se à Caçada
step
    #completewith next
    .goto 48,69.478,51.742,70,0
    .goto 48,83.597,60.675,40 >>Vá para Andarilho Lodge
    .subzoneskip 147
step
    .goto 48,82.789,63.459
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Segurança Guardiã Pipsy|r
    .target Safety Warden Pipsy
    .accept 27025 >>Aceite Perigo na Mata
step
    .goto 48,83.428,65.309
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dário, o Novato|r
    .target Daryl the Youngling
    .accept 27016 >>Aceite Nada como Caçar Javalis!
step
    .goto 48,81.944,64.505
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vyrin Velozvento|r
    .target Vyrin Swiftwind
    .home >>Defina sua Pedra de Retorno em Andarilho Lodge
step
    .goto 48,81.647,64.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gomez Plosivo|r
    .target Bingles Blastenheimer
    .accept 27031 >>Aceite O Aerolouco
step
    .goto 48,81.803,61.735
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marek Ferrocordis|r
    .target Marek Ironheart
    .turnin 13647 >>Entregue Juntando-se à Caçada
    .accept 27028 >>Aceite Caça às Vespas
    .accept 27030 >>Aceite Rabos de Raposa aos Montes!
step
    .goto 48,78.350,69.552,40,0
    .goto 48,77.581,75.929,40,0
    .goto 48,74.254,71.828,40,0
    .goto 48,78.350,69.552,0
    .goto 48,77.581,75.929,0
    .goto 48,74.254,71.828,0
    >>Mate os |cRXP_ENEMY_Golden Eagles|r. Saqueie-os para obter |cRXP_LOOT_Peninha|r
    .complete 27031,1 --|3/3 Pristine Flight Feather
    .mob Golden Eagle
step
    #completewith doc6
    >>Pegue as |cRXP_LOOT_Stabthistle Seeds|r no chão
    .complete 27025,1 --|6/6 Stabthistle Seed
step
    #completewith doc6
    >>Mate os |cRXP_ENEMY_Hill Foxes|r. Saqueie-os para obter |cRXP_LOOT_Caudas|r
    .complete 27030,1 --|7/7 Fluffy Fox Tail
    .mob Hill Fox
step
    #label doc6
    .goto 48,73.188,35.870
    >>Clique em |cRXP_PICK_Documento Roubado da Liga dos Exploradores|r no chão
    .accept 13659 >>Aceite Documento da Liga dos Exploradores (6 de 6)
step
    #completewith next
    >>Pegue as |cRXP_LOOT_Stabthistle Seeds|r no chão
    .complete 27025,1 --|6/6 Stabthistle Seed
step
    #loop
    .goto 48,72.311,40.993,0
    .goto 48,75.992,46.409,40,0
    .goto 48,66.113,37.946,40,0
    .goto 48,72.311,40.993,40,0
    .goto 48,76.495,36.873,40,0
    >>Mate os |cRXP_ENEMY_Hill Foxes|r. Saqueie-os para obter |cRXP_LOOT_Caudas|r
    .complete 27030,1 --|7/7 Fluffy Fox Tail
    .mob Hill Fox
step
    #loop
    .goto 48,72.311,40.993,0
    .goto 48,75.992,46.409,40,0
    .goto 48,66.113,37.946,40,0
    .goto 48,72.311,40.993,40,0
    .goto 48,76.495,36.873,40,0
    >>Pegue as |cRXP_LOOT_Stabthistle Seeds|r no chão
    .complete 27025,1 --|6/6 Stabthistle Seed
step
    #completewith doc5
    >>Mate os |cRXP_ENEMY_Mudbelly Boars|r
    .complete 27016,1 --|10/10 Mudbelly Boar slain
    .mob Mudbelly Boar
step
    #completewith doc5
    >>Mate os |cRXP_ENEMY_Marsh Hornets|r. Saqueie-as para obter |cRXP_LOOT_Asas|r
    .complete 27028,1 --|6/6 Glassy Hornet Wing
    .mob Marsh Hornet
    .mob Marsh Wasp
step
    #label doc5
    .goto 48,53.707,38.109
    >>Clique em |cRXP_PICK_Documento Roubado da Liga dos Exploradores|r no chão
    .accept 13660 >>Aceite Documento da Liga dos Exploradores (5 de 6)
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Mudbelly Boars|r
    .complete 27016,1 --|10/10 Mudbelly Boar slain
    .mob Mudbelly Boar
step
    #loop
    .goto 48,52.298,39.499,40,0
    .goto 48,56.479,31.679,40,0
    .goto 48,58.179,44.704,40,0
    .goto 48,52.298,39.499,0
    .goto 48,56.479,31.679,0
    .goto 48,58.179,44.704,0
    >>Mate os |cRXP_ENEMY_Marsh Hornets|r. Saqueie-as para obter |cRXP_LOOT_Asas|r
    .complete 27028,1 --|6/6 Glassy Hornet Wing
    .mob Marsh Hornet
    .mob Marsh Wasp
step
    #loop
    .goto 48,52.298,39.499,40,0
    .goto 48,56.479,31.679,40,0
    .goto 48,58.179,44.704,40,0
    .goto 48,52.298,39.499,0
    .goto 48,56.479,31.679,0
    .goto 48,58.179,44.704,0
    >>Mate os |cRXP_ENEMY_Mudbelly Boars|r
    .complete 27016,1 --|10/10 Mudbelly Boar slain
    .mob Mudbelly Boar
step
    .isOnQuest 27016,27028,13660,27025,27030,27031
    .hs >>Use sua Pedra de Retorno para ir a Andarilho's Lodge
    .cooldown item,6948,>2,1
step
#requires doc5
    .goto 48,82.789,63.459
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Segurança Guardiã Pipsy|r
    .target Safety Warden Pipsy
    .turnin 27025 >>Entregue Cardo Enquanto Você Trabalha
    .accept 27026 >>Aceite Defcon: Bobcats
step
    .goto 48,83.462,65.333
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dário, o Novato|r
    .target Daryl the Youngling
    .turnin 27016 >>Entregue A Alegria da Caça ao Javali
step
    .goto 48,81.756,61.661
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marek Ferrocordis|r
    .target Marek Ironheart
    .turnin 27028 >>Entregue Caça aos Marimbondos
    .turnin 27030 >>Entregue Rabos de Raposa a Punhados
step
    .goto 48,81.910,64.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vyrin Velozvento|r
    .target Vyrin Swiftwind
    .accept 27036 >>Aceite A Vingança de Vyrin
step
    .goto 48,81.647,64.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gomez Plosivo|r
    .target Bingles Blastenheimer
    .turnin 27031 >>Entregue Porca da Asa
    .accept 27032 >>Aceite A Ave é a Palavra
step
    #optional
    .maxlevel 20,endOfTheGuide
step
    #completewith next
    >>Mate os Bobcats
    .complete 27026,1
    .mob Bobcat
step
    .goto 48,72.590,72.017,70,0
    .goto 48,71.603,77.167,20 >>Vá para a Caverna Asa de Ferro
    .subzoneskip 5391
    .isOnQuest 27032
step
    .isOnQuest 27032
    #completewith next
    .goto 48,78.594,76.215,20 >>|cRXP_WARN_Limpe o caminho até o fundo da caverna|r
step
    .goto 48,78.594,76.215
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Navestruz Enferrujado|r
    .target Rusted Skystrider
    .turnin 27032 >>Entregue A Ave é a Palavra
    .accept 27033 >>Aceite Coração de Navestruz
step
    #completewith next
    .goto 48,71.603,77.167,20 >>Saia da Caverna Asa de Ferro
    .subzoneskip 5391,1
    .isOnQuest 27033
step
    #completewith next
    >>Mate os Bobcats
    .complete 27026,1
    .mob Bobcat
step
    .goto 48,80.158,51.943
    >>Mate o |cRXP_ENEMY_Velho Fumaça|r. Saqueie-o pela |cRXP_LOOT_Cabeça|r
    .complete 27036,1 --|1/1 Ol' Sooty's Head
    .mob Ol' Sooty
step
    #loop
    .goto 48,76.773,58.389,40,0
    .goto 48,78.786,69.272,40,0
    .goto 48,72.778,71.667,40,0
    .goto 48,76.773,58.389,0
    .goto 48,78.786,69.272,0
    .goto 48,72.778,71.667,0
    >>Mate os Bobcats
    .complete 27026,1
    .mob Bobcat
step
    .isOnQuest 27026,27036
    .hs >>Use sua Pedra de Retorno para ir a Andarilho's Lodge
    .cooldown item,6948,>2,1
step
    .goto 48,82.789,63.459
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Segurança Guardiã Pipsy|r
    .target Safety Warden Pipsy
    .turnin 27026 >>Entregue Defcon: Bobcats
step
    .goto 48,83.435,65.246
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dário, o Novato|r
    .target Daryl the Youngling
    .turnin 27036 >>Entregue A Vingança de Vyrin
    .accept 27037 >>Aceite A Vingança de Vyrin
step
    .goto 48,81.910,64.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vyrin Velozvento|r
    .target Vyrin Swiftwind
    .turnin 27037 >>Entregue A Vingança de Vyrin
step
#questguide
    .goto 48,81.647,64.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gomez Plosivo|r
    .target Bingles Blastenheimer
    .turnin 27033 >>Entregue Coração de Navestruz
    .accept 27034 >>Aceite Ele Já Tem Essa Idade
step
    .goto 48,81.647,64.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gomez Plosivo|r
    .target Bingles Blastenheimer
    .turnin 27033 >>Entregue Coração de Navestruz
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eeryven Plumbina|r
    .goto 48,81.877,64.071
    .fly Thelsamar >>Voe para Thelsamar
    .target Eeryven Grayer
step
    #label end
    .goto 48,37.200,46.363
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Torren Queixorreto|r
    .target Torren Squarejaw
    .turnin 13657 >>Entregue Documento da Liga dos Exploradores (3 de 6)
    .turnin 13658 >>Entregue Documento da Liga dos Exploradores (4 de 6)
    .turnin 13660 >>Entregue Documento da Liga dos Exploradores (5 de 6)
    .turnin 13659 >>Entregue Documento da Liga dos Exploradores (6 de 6)
    .accept 13661 >>Aceite Apreciação Sincera
    .turnin 13661 >>Entregue Apreciação Sincera
step
    #optional
    #label endOfTheGuide
step << Paladin cata
    .goto 48,35.374,48.810
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Faldoc Petrafé|r
    .trainer >>Treine suas magias de classe
    .target Faldoc Stonefaith
step << Rogue cata
    .goto 48,34.935,48.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Galda Bronzegume|r
    .trainer >>Treine suas magias de classe
    .target Galda Bronzeblade
step << Mage cata
    .goto 48,35.012,48.445
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gindle, o Verde|r
    .trainer >>Treine suas magias de classe
    .target Gindle the Green
step << Hunter cata
    .goto 48,34.553,48.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Belda Selvacuore|r
    .trainer >>Treine suas magias de classe
    .target Belda Wildheart
step << Warrior cata
    .goto 48,33.951,46.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grendin Celeraxa|r
    .trainer >>Treine suas magias de classe
    .target Grendin Swiftaxe
step << Shaman cata
    .goto 48,36.596,48.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grenilda Garranegra|r
    .trainer >>Treine suas magias de classe
    .target Grenhild Darktalon
step << Warlock cata
    .goto 48,35.879,46.199
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Solbin Umbrenagem|r
    .trainer >>Treine suas magias de classe
    .target Solbin Shadowcog
step << Priest cata
    .goto 48,36.108,45.893
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa Baerla|r
    .trainer >>Treine suas magias de classe
    .target Priestess Baerla
step
#questguide
    .goto 48,33.938,50.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Farstrider Lodge >>Voe para a Pousada do Andarilho
    .target Thorgrum Borrelson
step
#questguide
    .goto 48,58.585,29.077
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Teles Plosivo|r
    .target Ando Blastenheimer
    .turnin 27034 >>Entregue Aborrescência
    .accept 27035 >>Aceite O Revoltado
step
#questguide
    .goto 48,50.532,23.802
    >>Mate a |cRXP_ENEMY_Moldaterra Crepuscular|r
    .complete 27035,1 --|1/1 Twilight Landshaper destroyed
    .mob Twilight Landshaper
step
#questguide
    .goto 48,58.551,29.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Teles Plosivo|r
    .target Ando Blastenheimer
    .turnin 27035 >>Entregue O Revoltado
    .accept 27074 >>Aceite Ataque ao Martelo
step
#questguide
    .goto 48,64.085,26.707
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ashlan Risadura|r
    .target Ashlan Stonesmirk
    .turnin 27074 >>Entregue Ataque ao Martelo
    .accept 27075 >>Aceite Servos de Cho'gall
    .accept 27077 >>Aceite Presos ao Caos

step
#questguide
#loop
    .goto 48,67.559,22.273,40,0
    .goto 48,69.705,25.944,40,0
    .goto 48,74.141,20.405,40,0
    .goto 48,71.035,21.294,0
    >>Mate os |cRXP_ENEMY_Mo'grosh Ogres|r
    >>Pegue os pequenos espinhos pretos espalhados no chão
    .complete 27075,1 --|7/7 Mo'grosh Ogre slain
    .complete 27077,1 --|10/10 Nascent Elementium Spike
    .mob Mo'grosh Earthbender
    .mob Mo'grosh Darkmauler


step
#questguide
    .goto 48,64.049,26.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ashlan Risadura|r
    .target Ashlan Stonesmirk
    .turnin 27075 >>Entregue Servos de Cho'gall
    .turnin 27077 >>Entregue Presos ao Caos
    .accept 27078 >>Aceite Gor'kresh
step
#questguide
    .goto 48,75.212,19.594,20,0
    .goto 48,79.665,14.870
    >>Vá para o fundo da caverna ao nordeste
    >>Mate o |cRXP_ENEMY_Gor'kresh|r
    .complete 27078,1 --|1/1 Gor'kresh slain
    .mob Gor'kresh

step
#questguide
    .goto 48,64.145,26.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ashlan Risadura|r
    .target Ashlan Stonesmirk
    .turnin 27078 >>Entregue Gor'kresh
    .accept 27115 >>Aceite O Chamado de Teles
step
#questguide
    .goto 48,58.491,29.051
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Teles Plosivo|r
    .target Ando Blastenheimer
    .turnin 27115 >>Entregue O Chamado de Teles
    .accept 27116 >>Aceite Os Ventos de Loch Modan
step
#questguide
    .goto 48,25.444,17.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Montanhista Lançatroz|r
    .target Mountaineer Stormpike
    .turnin 27116 >>Entregue Os Ventos de Loch Modan
    .accept 26137 >>Aceite Cuidando dos Rapazes
step
#questguide
    .goto 48,25.315,1.591,15,0
    .goto 56,54.873,83.458,15,0
    .zone Wetlands >>Vá ao norte até Pantanal
    .isOnQuest 26137
step
#questguide
    .goto 56,49.973,79.288
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Rharen|r
    .target Mountaineer Rharen
    .turnin 26137 >>Entregue Cuidando dos Rapazes
    .accept 25395 >>Aceite O Barril Roubado
    .accept 25211 >>Aceite Limpeza Geral nas Ruínas

--TODO: follow the path to the first quest hub
--fly to gol'bolar quarry (dwarf) or kharanos (gnome)
--buy mount, then fly to SW and do duskwood
]])
