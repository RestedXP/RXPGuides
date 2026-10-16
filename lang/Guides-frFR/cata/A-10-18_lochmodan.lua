if GetLocale() ~= "frFR" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end

RXPGuides.RegisterGuide([[

#version 1
#group RXP Cataclysme 1-80 (A) << cata
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Gol'Bolar Quarry >> Envolez-vous vers Carrière de Gol'Bolar
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
    .goto 48,14.025,56.641,12 >> |cRXP_WARN_Voyagez vers le haut de la montagne, puis descendez soigneusement vers|r |cRXP_FRIENDLY_Pilote Martèlepied|r
    .noflyable
step << Pandaren
    .goto 48,14.006,56.485
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .accept 26854 >>Acceptez la quête Le pilote perdu
    .target Pilot Hammerfoot
step << Pandaren
    #optional
    #completewith next
    .goto 48,12.639,58.419,20,0
    .goto 27,89.543,51.716,20,0
    >>Voyagez vers |cRXP_PICK_un Cadavre de Nain|r sur le sol
    .noflyable
step << Pandaren
    .goto 27,87.633,50.139
    >>Cliquez sur |cRXP_PICK_un Cadavre de Nain|r par terre
    >>|cRXP_WARN_Cela fera |cRXP_ENEMY_Griffe galeuse|r courir vers vous|r
    .turnin 26854 >>Rendez la quête Le pilote perdu
    .accept 26855 >>Acceptez la quête La revanche du pilote
step << Pandaren
    .goto 27,87.421,50.013,0
    .goto 27,87.357,49.213
    >>Tuez |cRXP_ENEMY_Mangeclaw|r. Dépouillez-le pour son |cRXP_LOOT_Mangy Claw|r
    .complete 26855,1 --Mangy Claw (1)
    .unitscan Mangeclaw
step << Pandaren
    .goto 48,14.006,56.485
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .turnin 26855 >>Rendez la quête La revanche du pilote
    .accept 13635 >>Acceptez la quête Rapport sur la porte sud
    .target Pilot Hammerfoot
step
    #completewith next
    .goto 48,21.398,66.390,30,0
    .goto 48,21.559,68.292,30,0
    .goto 48,23.670,75.378,15,0
    .goto 48,23.495,75.054,12 >> Envolez-vous vers |cRXP_FRIENDLY_Capitaine Rudagite|r à l'intérieur du bunker
    .xp >30,1
    .isOnQuest 13635
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Capitaine Rudagite|r et |cRXP_FRIENDLY_Montagnard Pave-silex|r à l'intérieur
    .turnin -13635 >>Rendez la quête Rapport sur la porte sud
    .accept 26146 >>Acceptez la quête À la défense des terres du roi
    .goto 48,23.495,75.054
    .target +Captain Rugelfuss
    .accept 26145 >>Acceptez la quête La menace trogg
    .goto 48,23.332,74.925
    .target +Mountaineer Cobbleflint
step << Warrior/Paladin
    .goto 48,23.673,74.329
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorvald Forge-profonde|r
    >>|cRXP_BUY_Achetez une|r [Claymore] |cRXP_BUY_au marchand|r
    .collect 1198,1 -- Claymore (1)
    .money <0.2142
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Thorvald Deepforge
step << Rogue/Shaman
    .goto 48,23.673,74.329
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorvald Forge-profonde|r
    >>|cRXP_BUY_Achetez-lui une|r |T132402:0|t[Hachette] |cRXP_BUY_|r
    .collect 853,1 -- Hatchet (1)
    .money <0.1927
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .target Thorvald Deepforge
    .xp <11,1
step << Warrior/Paladin
    #optional
    #completewith end
    +Équipez la [Claymore]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Rogue/Shaman
    #optional
    #completewith end
    +|cRXP_WARN_Équipez la|r |T132402:0|t[Hachette] |cRXP_WARN_à votre main principale|r
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
    .subzone 923 >> Remontez le chemin vers Vallée des Brisepierre
    .xp >30,1
step
#loop
    .goto 48,28.888,86.139,30,0
    .goto 48,32.444,79.051,30,0
    .goto 48,36.068,83.253,30,0
    .goto 48,28.888,86.139,0
    .goto 48,32.444,79.051,0
    .goto 48,36.068,83.253,0
    >>Tuez et ramassez |cRXP_ENEMY_Stonesplinter Troggs|r et |cRXP_ENEMY_Stonesplinter Repérage|r
    .complete 26146,1 --|12/12 Stonesplinter Trogg slain
    .complete 26145,1 --|8/8 Trogg Stone Tooth
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step
#xprate <1.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Capitaine Rudagite|r, |cRXP_FRIENDLY_Montagnard Pave-silex|r et |cRXP_FRIENDLY_Capitaine Wallbang|r
    .turnin 26146 >>Rendez la quête À la défense des terres du roi
    .accept 26148 >>Acceptez la quête Une frappe décisive
    .target +Captain Rugelfuss
    .goto 48,23.359,74.990
    .turnin 26145 >>Rendez la quête La menace trogg
    .target +Mountaineer Cobbleflint
    .goto 48,23.332,74.927
    .accept 26147 >>Acceptez la quête Plus c'est grand, plus c'est laid
    .target +Mountaineer Wallbang
    .goto 48,23.298,75.054
step
#xprate >1.299
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Capitaine Rudagite|r, |cRXP_FRIENDLY_Montagnard Pave-silex|r et |cRXP_FRIENDLY_Capitaine Wallbang|r
    .turnin 26146 >>Rendez la quête À la défense des terres du roi
    .target +Captain Rugelfuss
    .goto 48,23.359,74.990
    .turnin 26145 >>Rendez la quête La menace trogg
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
    >>Allez à la grotte au nord de la Vallée des Brisepierre
    >>Tuez |cRXP_ENEMY_Shamans|r et |cRXP_ENEMY_Bonesnappers|r
    .complete 26147,1 --|8/8 Stonesplinter Shaman slain
    .complete 26147,2 --|8/8 Stonesplinter Bonesnapper slain
    .mob Stonesplinter Shaman
    .mob Stonesplinter Bonesnapper
step
#xprate <1.3
    >>Allez au fond de la grotte et tuez |cRXP_ENEMY_Grawmug|r
    .goto 48,34.289,61.146
    .complete 26148,1 --|1/1 Grawmug slain
    .mob Grawmug
step
#xprate <1.3
#requires troggcave1
    .goto 48,23.321,75.013
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Capitaine Rudagite|r et |cRXP_FRIENDLY_Capitaine Wallbang|r
    .turnin 26148 >>Rendez la quête Une frappe décisive
    .accept 26176 >>Acceptez la quête En route pour Thelsamar
    .target +Captain Rugelfuss
    .goto 48,23.359,74.990
    .turnin 26147 >>Rendez la quête Plus c'est grand, plus c'est laid
    .target +Mountaineer Wallbang
    .goto 48,23.298,75.054
step
    .goto 48,33.940,50.955
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >> Prenez le chemin de vol de Thelsamar
    .target Thorgrum Borrelson
step
    .goto 48,35.079,46.663
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Kadrell|r
    .target Mountaineer Kadrell
    .turnin -26176 >>Rendez la quête En route pour Thelsamar
    .accept 26842 >>Acceptez la quête Passe-moi la Gnolle
    .accept 13636 >>Acceptez la quête Les ordres des Foudrepiques
step
    #optional
    .maxlevel 20,endOfTheGuide
step
    .goto 48,35.536,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Hearthstove|r
    .home >>Liez votre Pierre de Foyer à Thelsamar
    .target Innkeeper Hearthstove
step
    .goto 48,34.849,49.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vidra Hearthstove|r
    .target Vidra Hearthstove
    .accept 26860 >>Acceptez la quête Les boudins de Thelsamar
step << Paladin cata
    .goto 48,35.374,48.810
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Faldoc Foi-de-Roc|r
    .trainer >> Apprenez vos sorts de classe
    .target Faldoc Stonefaith
step << Rogue cata
    .goto 48,34.935,48.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Galda Lame-de-bronze|r
    .trainer >> Apprenez vos sorts de classe
    .target Galda Bronzeblade
step << Mage cata
    .goto 48,35.012,48.445
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gindle le Vert|r
    .trainer >> Apprenez vos sorts de classe
    .target Gindle the Green
step << Hunter cata
    .goto 48,34.553,48.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belda Cœur-Sauvage|r
    .trainer >> Apprenez vos sorts de classe
    .target Belda Wildheart
step << Warrior cata
    .goto 48,33.951,46.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grendin Vivehache|r
    .trainer >> Apprenez vos sorts de classe
    .target Grendin Swiftaxe
step << Shaman cata
    .goto 48,36.596,48.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grenhild Sombreserre|r
    .trainer >> Apprenez vos sorts de classe
    .target Grenhild Darktalon
step << Warlock cata
    .goto 48,35.879,46.199
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Solbin Ombrécrou|r
    .trainer >> Apprenez vos sorts de classe
    .target Solbin Shadowcog
step << Priest cata
    .goto 48,36.108,45.893
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prêtresse Baerla|r
    .trainer >> Apprenez vos sorts de classe
    .target Priestess Baerla
step
    .goto 48,37.303,46.517
    >>Cliquez sur l'|cRXP_PICK_Wanted!|r affiche
    .accept 13648 >>Acceptez la quête AVIS DE RECHERCHE : l'espion Sombrefer
step
    .goto 48,35.960,44.028
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dakk Tromblexplose|r
    .target Dakk Blunderblast
    .accept 25118 >>Acceptez la quête Sur la piste des rôdeuses
step
    #completewith SilverStreamMine
    >>Tuez |cRXP_ENEMY_Forest Lurkers|r
    .complete 25118,1 --|8/8 Forest Lurker slain
    .mob Forest Lurker
step
    #completewith SilverStreamMine
    >>Tuez |cRXP_ENEMY_Black Ours|r. Ramassez-les pour en obtenir le |cRXP_LOOT_Rump|r
    .complete 26860,1 --|8/8 Bear Rump
    .mob Black Bear
step
    #loop
    .goto 48,26.258,42.477,30,0
    .goto 48,26.888,50.154,30,0
    .goto 48,26.258,42.477,0
    .goto 48,26.888,50.154,0
    >>Tuez |cRXP_ENEMY_Mosshide Repérage|r et |cRXP_ENEMY_Mosshide Bashers|r. Ramassez-les pour en obtenir les |cRXP_LOOT_Piercings|r
    .complete 26842,1 --|12/12 Mosshide Ear
    .mob Mosshide Basher
    .mob Mosshide Scout
step
    .goto 48,25.444,17.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 13636 >>Rendez la quête Les ordres des Foudrepiques
    .accept 26843 >>Acceptez la quête Un commandant petit, mais malin
    .target Mountaineer Stormpike
step
    .goto 48,26.111,31.575
    >>Tuez |cRXP_ENEMY_« Commandant » Nazrim|r
    .complete 26843,1 --|1/1 "Commander" Nazrim slain
    .mob "Commander" Nazrim
step
    .goto 48,25.444,17.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 26843 >>Rendez la quête Un commandant petit, mais malin
    .accept 26844 >>Acceptez la quête À Kobold, Kobold et demi
    .target Mountaineer Stormpike
step
    .goto 48,31.485,13.582,30,0
    .goto 48,35.425,16.773,30,0
    .goto 48,38.607,15.477,30,0
    .goto 48,38.760,13.619,0
    >>Tuez |cRXP_ENEMY_Tunnel Rat Surveyors|r et |cRXP_ENEMY_Tunnel Rat Foragers|r
    .complete 26844,1 --|5/5 Tunnel Rat Surveyor slain
    .mob +Tunnel Rat Surveyor
    .complete 26844,2 --|5/5 Tunnel Rat Forager slain
    .mob +Tunnel Rat Forager
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Montagnard Foudrepique|r et |cRXP_FRIENDLY_Éclaireur Dorli|r
    .turnin 26844 >>Rendez la quête À Kobold, Kobold et demi
    .accept 26845 >>Acceptez la quête C'est qui qui commande, ici ?
    .accept 26863 >>Acceptez la quête Bas les pattes !
    .goto 48,25.444,17.963
    .target +Mountaineer Stormpike
    .accept 26846 >>Acceptez la quête Une vilaine exploitation
    .goto 48,25.398,17.793
    .target +Scout Dorli
step
    #label SilverStreamMine
    #completewith ForemanSharpsneer
    .goto 48,35.49,19.13,15 >> Entrez dans la mine du Ru d'argent
step
    #sticky
    #label koboldmine1
    #loop
    .goto 48,35.623,20.181,20,0
    .goto 48,36.222,24.255,20,0
    .goto 48,34.854,27.180,20,0
    .goto 48,34.752,26.885,20,0
    .goto 48,35.214,20.966,0
    >>Tuez |cRXP_ENEMY_Tunnel Rat Geomancers|r
    >>Ouvrez les |cRXP_PICK_Miners' League Crates|r. Récupérez les |cRXP_LOOT_Miners' Gear|r
    .complete 26846,1 --|5/5 Tunnel Rat Geomancer slain
    .mob +Tunnel Rat Geomancer
    .complete 26863,1 --|6/6 Miners' Gear
step
    #label ForemanSharpsneer
    .goto 48,34.752,26.885
    >>|cRXP_WARN_Allez au fond de la mine du Ru d'argent|r
    >>Tuez |cRXP_ENEMY_Contremaître Cruelrictus|r. Fouillez-le pour sa |cRXP_LOOT_Tête|r
    .complete 26845,1 --|1/1 Foreman Sharpsneer's Head
    .mob Foreman Sharpsneer
step
    #requires koboldmine1
    #completewith next
    .goto 48,35.49,19.13,15 >> Quittez la Mine du Ru d'argent
step
    #completewith TheBearer
    >>Tuez |cRXP_ENEMY_Forest Lurkers|r
    .complete 25118,1 --|8/8 Forest Lurker slain
    .mob Forest Lurker
step
    #completewith TheBearer
    >>Tuez |cRXP_ENEMY_Black Ours|r. Fouillez-les pour leur |cRXP_LOOT_Rump|r
    .complete 26860,1 --|8/8 Bear Rump
    .mob Black Bear
step
    #requires koboldmine1
    #label TheBearer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Montagnard Foudrepique|r et |cRXP_FRIENDLY_Éclaireur Dorli|r
    .turnin 26845 >>Rendez la quête C'est qui qui commande, ici ?
    .accept 26864 >>Acceptez la quête Transport d'organes
    .turnin 26863 >>Rendez la quête Bas les pattes !
    .target +Mountaineer Stormpike
    .goto 48,25.444,17.963
    .turnin 26846 >>Rendez la quête Une vilaine exploitation
    .goto 48,25.398,17.793
    .target +Scout Dorli
step
    #completewith next
    >>Tuez |cRXP_ENEMY_Forest Lurkers|r
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
    >>Tuez |cRXP_ENEMY_Black Ours|r. Fouillez-les pour leur |cRXP_LOOT_Rump|r
    .complete 26860,1 --|8/8 Bear Rump
    .mob Black Bear
step
    #loop
    .goto 48,33.55,37.43,60,0
    .goto 48,38.94,30.41,60,0
    .goto 48,35.19,27.68,60,0
    .goto 48,27.64,21.20,70,0
    >>Tuez |cRXP_ENEMY_Forest Lurkers|r
    .complete 25118,1 --|8/8 Forest Lurker slain
    .mob Forest Lurker
step
    .isOnQuest 26860,25118
    .hs >> Utilisez votre Pierre de foyer pour revenir à Thelsamar
    .cooldown item,6948,>2,1
step
    .goto 48,35.969,44.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dakk Tromblexplose|r
    .turnin 25118 >>Rendez la quête Sur la piste des rôdeuses
    .target Dakk Blunderblast
step
    .goto 48,35.017,46.663
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Kadrell|r
    .turnin 26842 >>Rendez la quête Passe-moi la Gnolle
    .turnin 26864 >>Rendez la quête Transport d'organes
    .accept 26927 >>Acceptez la quête Soudain… Des Murlocs !!
    .target Mountaineer Kadrell
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calamy Tirebière|r et à |cRXP_FRIENDLY_Vidra Poêlâtre|r
    .turnin 26927 >>Rendez la quête Soudain… Des Murlocs !!
    .accept 26928 >>Acceptez la quête Si ça a l'odeur d'un plan et la forme d'un plan, c'est que c'est un plan
    .accept 26929 >>Acceptez la quête Une demi-douzaine de crocos
    .target +Cannary Caskshot
    .goto 48,34.789,49.122
    .turnin 26860 >>Rendez la quête Les boudins de Thelsamar
    .target +Vidra Hearthstove
    .goto 48,34.827,49.285
step
    #optional
    .maxlevel 20,endOfTheGuide
step << Paladin cata
    .goto 48,35.374,48.810
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Faldoc Foi-de-Roc|r
    .trainer >> Apprenez vos sorts de classe
    .target Faldoc Stonefaith
step << Rogue cata
    .goto 48,34.935,48.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Galda Lame-de-bronze|r
    .trainer >> Apprenez vos sorts de classe
    .target Galda Bronzeblade
step << Mage cata
    .goto 48,35.012,48.445
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gindle le Vert|r
    .trainer >> Apprenez vos sorts de classe
    .target Gindle the Green
step << Hunter cata
    .goto 48,34.553,48.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belda Cœur-Sauvage|r
    .trainer >> Apprenez vos sorts de classe
    .target Belda Wildheart
step << Warrior cata
    .goto 48,33.951,46.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grendin Vivehache|r
    .trainer >> Apprenez vos sorts de classe
    .target Grendin Swiftaxe
step
    .goto 48,35.079,46.663
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Kadrell|r
    .target Mountaineer Kadrell
    .accept 26932 >>Acceptez la quête Au revoir, les busards
step << Shaman cata
    .goto 48,36.596,48.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grenhild Sombreserre|r
    .trainer >> Apprenez vos sorts de classe
    .target Grenhild Darktalon
step << Warlock cata
    .goto 48,35.879,46.199
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Solbin Ombrécrou|r
    .trainer >> Apprenez vos sorts de classe
    .target Solbin Shadowcog
step << Priest cata
    .goto 48,36.108,45.893
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prêtresse Baerla|r
    .trainer >> Apprenez vos sorts de classe
    .target Priestess Baerla
step
    .goto 48,40.642,58.310,15,0
    .goto 48,39.670,62.104,15,0
    .goto 48,36.796,61.173
    >>Suivez la flèche jusqu'au sommet de Falaise de Vieillegriffe
    >>Tuez |cRXP_ENEMY_Gorick Siffle-breuvage|r
    .complete 13648,1 --|1/1 Gorick Guzzledraught slain
    .mob Gorick Guzzledraught
step
    .goto 48,36.752,61.108
    >>Cliquez sur |cRXP_PICK_Stolen Explorers' League Documentation|r à l'intérieur de la caverne
    .accept 13656>> Acceptez la quête Documentation de la Ligue des explorateurs (1 sur 6)
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Loch Buzzards|r
    >>|cRXP_WARN_Certains |cRXP_ENEMY_Loch Buzzards|r volent dans l'air|r
    .complete 26932,1 --|8/8 Loch Buzzard slain
    .mob Loch Buzzard
step
    #loop
    .goto 48,50.790,63.748,60,0
    .goto 48,55.580,56.273,60,0
    .goto 48,59.933,52.441,60,0
    >>Tuez les |cRXP_ENEMY_Loch Crocolisks|r. Ramassez leurs |cRXP_LOOT_Intact Crocilisque Mâchoires|r
    .complete 26929,1 --|6/6 Intact Crocolisk Jaw
    .mob Loch Crocolisk
step
    #loop
    .goto 48,50.790,63.748,60,0
    .goto 48,55.580,56.273,60,0
    .goto 48,59.933,52.441,60,0
    >>Tuez les |cRXP_ENEMY_Loch Buzzards|r
    >>|cRXP_WARN_Certains |cRXP_ENEMY_Loch Buzzards|r volent dans l'air|r
    .complete 26932,1 --|8/8 Loch Buzzard slain
    .mob Loch Buzzard
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Bluegill Mudskippers|r et les |cRXP_ENEMY_Bluegill Wanderers|r. Ramassez les |cRXP_LOOT_Scent Glands|r
    .complete 26928,1 --|7/7 Murloc Scent Gland
    .mob Bluegill Mudskipper
    .mob Bluegill Wanderer
step
    .goto 48,41.379,38.967
    >>Cliquez sur la |cRXP_PICK_Stolen Explorers' League Documentation|r sous le pont
    .accept 13655 >>Acceptez la quête Documentation de la Ligue des explorateurs (2 sur 6)
step
    #loop
    .goto 48,42.957,39.201,60,0
    .goto 48,46.231,51.109,60,0
    >>Tuez les |cRXP_ENEMY_Bluegill Mudskippers|r et les |cRXP_ENEMY_Bluegill Wanderers|r. Ramassez-les pour leurs |cRXP_LOOT_Scent Glands|r
    .complete 26928,1 --|7/7 Murloc Scent Gland
    .mob Bluegill Mudskipper
    .mob Bluegill Wanderer
step
    .goto 48,34.613,44.539
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Magistrat Courtnez|r
    .target Magistrate Bluntnose
    .turnin 13648 >>Rendez la quête AVIS DE RECHERCHE : l'espion Sombrefer
step
    .goto 48,35.079,46.663
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Kadrell|r
    .target Mountaineer Kadrell
    .turnin 26932 >>Rendez la quête Au revoir, les busards
step
    .goto 48,34.789,49.122
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calamy Tirebière|r
    .turnin 26929 >>Rendez la quête Une demi-douzaine de crocos
    .turnin 26928 >>Rendez la quête Si ça a l'odeur d'un plan et la forme d'un plan, c'est que c'est un plan
    .accept 26868 >>Acceptez la quête L'axe de la puanteur
    .target Cannary Caskshot
step
    .goto 48,37.200,46.363
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Torren Gueule-carrée|r
    .turnin 13656 >>Rendez la quête Documentation de la Ligue des explorateurs (1 sur 6)
    .turnin 13655 >>Rendez la quête Documentation de la Ligue des explorateurs (2 sur 6)
    .target Torren Squarejaw
step
    #optional
    .maxlevel 20,endOfTheGuide
step
    .isOnQuest 26868
    .use 60681 >> |cRXP_WARN_Open|r |T133639:0|t[Cannary's Cache] |cRXP_WARN_for the|r |T237425:0|t[|cRXP_LOOT_Déguisement astucieux en plante|r] |cRXP_WARN_and|r |T134839:0|t[|cRXP_LOOT_Potent Murloc Phéromones|r]
    .collect 60502,1,26868,1 -- Clever Plant Disguise Kit (1)
    .collect 60503,1,26868,1 -- Potent Murloc Pheromones (1)
step
    .isOnQuest 26868
    .goto 48,50.585,56.048,85 >> |cRXP_WARN_Voyage|r vers le|cRXP_ENEMY_ Représentant poil-moussu|r
step
    .isOnQuest 26868
    .cast 82788 >> |cRXP_WARN_Use the|r |T237425:0|t[|cRXP_LOOT_Déguisement astucieux en plante|r] |cRXP_WARN_to disguise yourself|r
    .use 60502
step
    .goto 48,50.585,56.048
    >>|cRXP_WARN_Utilisez le|r |T134839:0|t[|cRXP_LOOT_Potent Murloc Phéromones|r] |cRXP_WARN_sur le|r |cRXP_ENEMY_Représentant poil-moussu|r
    >>|cRXP_WARN_Cela a une portée de 15 mètres|r
    .complete 26868,1 --|1/1 Mosshide Tagged
    .mob Mosshide Representative
    .use 60503
step
    .goto 48,34.789,49.122
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calamy Tirebière|r
    .turnin 26868 >>Rendez la quête L'axe de la puanteur
    .target Cannary Caskshot
step
    .goto 48,36.992,47.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jern Casque-à-cornes|r
    .accept 13639 >>Acceptez la quête Approvisionnement du site de fouilles
    .target Jern Hornhelm
step
    .goto 48,56.353,65.959
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Huldar|r
    .target Huldar
    .turnin 13639 >>Rendez la quête Approvisionnement du site de fouilles
    .accept 309 >>Acceptez la quête Protection de la cargaison
step
    .goto 48,56.353,65.959
    >>|cRXP_WARN_Restez à la Caravane et protégez |cRXP_FRIENDLY_Huldar|r contre les |cRXP_ENEMY_Sombre Fer Ambushers|r et|r |cRXP_ENEMY_Saean|r
    .complete 309,1 -- Protect the Ironband Caravan (1)
    .mob Dark Iron Ambusher
    .mob Saean
    .target Huldar
step
    .goto 48,58.183,68.975,20,0
    .goto 48,59.722,72.385,20,0
    .goto 48,61.701,73.181
    >>Cliquez sur la |cRXP_PICK_Stolen Explorers' League Documentation|r par terre
    .accept 13657 >>Acceptez la quête Documentation de la Ligue des explorateurs (3 sur 6)
step
    .goto 48,64.896,66.659
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magmar Tombebranche|r
    .target Magmar Fellhew
    .accept 26961 >>Acceptez la quête Réunir les idoles
step
    .goto 48,65.336,65.979
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prospector Ironband|r
    .target Prospector Ironband
    .turnin 309 >>Rendez la quête Protection de la cargaison
    .accept 13650 >>Acceptez la quête Pas touche à la marchandise !
step
    #completewith Artifacts
    >>Tuez les |cRXP_ENEMY_Stonesplinter Diggers|r et les |cRXP_ENEMY_Stonesplinter Geomancers|r. Ramassez-les pour leurs |cRXP_LOOT_Carved Pierre Idols|r
    .complete 26961,1 --|8/8 Carved Stone Idol
    .mob Stonesplinter Digger
    .mob Stonesplinter Geomancer
step
    .goto 48,67.610,68.736,20,0
    .goto 48,69.218,66.357,8,0
    .goto 48,68.112,66.143
    >>Cliquez sur la |cRXP_PICK_Stolen Explorers' League Documentation|r à côté du tonneau
    .accept 13658 >>Acceptez la quête Documentation de la Ligue des explorateurs (4 sur 6)
step
    #label Artifacts
    >>|cRXP_WARN_Explorez les artefacts du site de fouilles|r
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
    >>Tuez les |cRXP_ENEMY_Stonesplinter Diggers|r et les |cRXP_ENEMY_Stonesplinter Geomancers|r. Ramassez-les pour leurs |cRXP_LOOT_Carved Pierre Idols|r
    .complete 26961,1 --|8/8 Carved Stone Idol
    .mob Stonesplinter Digger
    .mob Stonesplinter Geomancer
step
    .goto 48,65.336,65.979
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prospector Ironband|r
    .target Prospector Ironband
    .turnin 13650 >>Rendez la quête Pas touche à la marchandise !
step
    .goto 48,64.896,66.659
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magmar Tombebranche|r
    .target Magmar Fellhew
    .turnin 26961 >>Rendez la quête Réunir les idoles
    .accept 13647 >>Acceptez la quête Participer à la chasse
step
    #completewith next
    .goto 48,69.478,51.742,70,0
    .goto 48,83.597,60.675,40 >> Rendez-vous au Pavillon des Pérégrins
    .subzoneskip 147
step
    .goto 48,82.789,63.459
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gardienne de sécurité Pipsy|r
    .target Safety Warden Pipsy
    .accept 27025 >>Acceptez la quête Siffler en échardonnant
step
    .goto 48,83.428,65.309
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daryl le Jeune|r
    .target Daryl the Youngling
    .accept 27016 >>Acceptez la quête Les joies saines de la chasse au sanglier
step
    .goto 48,81.944,64.505
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vyrin Vent-vif|r
    .target Vyrin Swiftwind
    .home >>Liez votre Pierre de foyer au Pavillon des Pérégrins
step
    .goto 48,81.647,64.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bingles Explonheimer|r
    .target Bingles Blastenheimer
    .accept 27031 >>Acceptez la quête Le fou du ciel
step
    .goto 48,81.803,61.735
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marek Cœur-de-fer|r
    .target Marek Ironheart
    .turnin 13647 >>Rendre la quête Participer à la chasse
    .accept 27028 >>Acceptez la quête Chasse au frelon des marais
    .accept 27030 >>Acceptez la quête Des queues de renard par brassées
step
    .goto 48,78.350,69.552,40,0
    .goto 48,77.581,75.929,40,0
    .goto 48,74.254,71.828,40,0
    .goto 48,78.350,69.552,0
    .goto 48,77.581,75.929,0
    .goto 48,74.254,71.828,0
    >>Tuez |cRXP_ENEMY_Golden Eagles|r. Ramassez-les pour obtenir le Butin de leurs |cRXP_LOOT_Plumes|r
    .complete 27031,1 --|3/3 Pristine Flight Feather
    .mob Golden Eagle
step
    #completewith doc6
    >>Ramassez le Butin de |cRXP_LOOT_Stabthistle Seeds|r au sol
    .complete 27025,1 --|6/6 Stabthistle Seed
step
    #completewith doc6
    >>Tuez |cRXP_ENEMY_Hill Foxes|r. Ramassez-les pour obtenir le Butin de leurs |cRXP_LOOT_Pile|r
    .complete 27030,1 --|7/7 Fluffy Fox Tail
    .mob Hill Fox
step
    #label doc6
    .goto 48,73.188,35.870
    >>Cliquez sur le |cRXP_PICK_Stolen Explorers' League Documentation|r au sol
    .accept 13659 >>Acceptez la quête Documentation de la Ligue des explorateurs (6 sur 6)
step
    #completewith next
    >>Ramassez le Butin de |cRXP_LOOT_Stabthistle Seeds|r au sol
    .complete 27025,1 --|6/6 Stabthistle Seed
step
    #loop
    .goto 48,72.311,40.993,0
    .goto 48,75.992,46.409,40,0
    .goto 48,66.113,37.946,40,0
    .goto 48,72.311,40.993,40,0
    .goto 48,76.495,36.873,40,0
    >>Tuez |cRXP_ENEMY_Hill Foxes|r. Ramassez-les pour obtenir le Butin de leurs |cRXP_LOOT_Pile|r
    .complete 27030,1 --|7/7 Fluffy Fox Tail
    .mob Hill Fox
step
    #loop
    .goto 48,72.311,40.993,0
    .goto 48,75.992,46.409,40,0
    .goto 48,66.113,37.946,40,0
    .goto 48,72.311,40.993,40,0
    .goto 48,76.495,36.873,40,0
    >>Ramassez le Butin de |cRXP_LOOT_Stabthistle Seeds|r au sol
    .complete 27025,1 --|6/6 Stabthistle Seed
step
    #completewith doc5
    >>Tuez les |cRXP_ENEMY_Mudbelly Boars|r
    .complete 27016,1 --|10/10 Mudbelly Boar slain
    .mob Mudbelly Boar
step
    #completewith doc5
    >>Tuez |cRXP_ENEMY_Marsh Hornets|r. Ramassez-les pour obtenir le Butin de leurs |cRXP_LOOT_Ailes|r
    .complete 27028,1 --|6/6 Glassy Hornet Wing
    .mob Marsh Hornet
    .mob Marsh Wasp
step
    #label doc5
    .goto 48,53.707,38.109
    >>Cliquez sur le |cRXP_PICK_Stolen Explorers' League Documentation|r au sol
    .accept 13660 >>Acceptez la quête Documentation de la Ligue des explorateurs (5 sur 6)
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Mudbelly Boars|r
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
    >>Tuez |cRXP_ENEMY_Marsh Hornets|r. Ramassez-les pour obtenir le Butin de leurs |cRXP_LOOT_Ailes|r
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
    >>Tuez les |cRXP_ENEMY_Mudbelly Boars|r
    .complete 27016,1 --|10/10 Mudbelly Boar slain
    .mob Mudbelly Boar
step
    .isOnQuest 27016,27028,13660,27025,27030,27031
    .hs >> Utilisez votre Pierre de foyer pour vous téléporter au Pavillon des Longs-voyants
    .cooldown item,6948,>2,1
step
#requires doc5
    .goto 48,82.789,63.459
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gardienne de sécurité Pipsy|r
    .target Safety Warden Pipsy
    .turnin 27025 >>Rendez la quête Siffler en échardonnant
    .accept 27026 >>Acceptez la quête Niveau d'alerte : code lynx
step
    .goto 48,83.462,65.333
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daryl le Jeune|r
    .target Daryl the Youngling
    .turnin 27016 >>Rendez la quête Les joies saines de la chasse au sanglier
step
    .goto 48,81.756,61.661
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marek Cœur-de-fer|r
    .target Marek Ironheart
    .turnin 27028 >>Rendez la quête Chasse au frelon des marais
    .turnin 27030 >>Rendez la quête Des queues de renard par brassées
step
    .goto 48,81.910,64.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vyrin Vent-vif|r
    .target Vyrin Swiftwind
    .accept 27036 >>Acceptez la quête La vengeance de Vyrin
step
    .goto 48,81.647,64.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bingles Explonheimer|r
    .target Bingles Blastenheimer
    .turnin 27031 >>Rendez la quête Le fou du ciel
    .accept 27032 >>Acceptez la quête L'enfant et l'oiseau
step
    #optional
    .maxlevel 20,endOfTheGuide
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Bobcats|r
    .complete 27026,1
    .mob Bobcat
step
    .goto 48,72.590,72.017,70,0
    .goto 48,71.603,77.167,20 >> Rendez-vous à la Grotte Aile-de-fer
    .subzoneskip 5391
    .isOnQuest 27032
step
    .isOnQuest 27032
    #completewith next
    .goto 48,78.594,76.215,20 >> |cRXP_WARN_Effacez votre chemin vers l'arrière de la grotte|r
step
    .goto 48,78.594,76.215
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Trotte-ciel rouillé|r
    .target Rusted Skystrider
    .turnin 27032 >>Rendez la quête L'enfant et l'oiseau
    .accept 27033 >>Acceptez la quête Le cœur du trotte-ciel
step
    #completewith next
    .goto 48,71.603,77.167,20 >> Quittez la Grotte Aile-de-fer
    .subzoneskip 5391,1
    .isOnQuest 27033
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Bobcats|r
    .complete 27026,1
    .mob Bobcat
step
    .goto 48,80.158,51.943
    >>Tuez le |cRXP_ENEMY_Vieux Noiraud|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
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
    >>Tuez les |cRXP_ENEMY_Bobcats|r
    .complete 27026,1
    .mob Bobcat
step
    .isOnQuest 27026,27036
    .hs >> Utilisez votre Pierre de foyer pour vous téléporter au Pavillon des Longs-voyants
    .cooldown item,6948,>2,1
step
    .goto 48,82.789,63.459
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gardienne de sécurité Pipsy|r
    .target Safety Warden Pipsy
    .turnin 27026 >>Rendez la quête Niveau d'alerte : code lynx
step
    .goto 48,83.435,65.246
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daryl le Jeune|r
    .target Daryl the Youngling
    .turnin 27036 >>Rendez la quête La vengeance de Vyrin
    .accept 27037 >>Acceptez la quête La vengeance de Vyrin
step
    .goto 48,81.910,64.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vyrin Vent-vif|r
    .target Vyrin Swiftwind
    .turnin 27037 >>Rendez la quête La vengeance de Vyrin
step
#questguide
    .goto 48,81.647,64.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bingles Explonheimer|r
    .target Bingles Blastenheimer
    .turnin 27033 >>Rendre la quête Le cœur du trotte-ciel
    .accept 27034 >>Accepter L'âge ingrat
step
    .goto 48,81.647,64.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bingles Explonheimer|r
    .target Bingles Blastenheimer
    .turnin 27033 >>Rendre la quête Le cœur du trotte-ciel
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eeryven Grayer|r
    .goto 48,81.877,64.071
    .fly Thelsamar >>Volez à Thelsamar
    .target Eeryven Grayer
step
    #label end
    .goto 48,37.200,46.363
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Torren Gueule-carrée|r
    .target Torren Squarejaw
    .turnin 13657 >>Rendre la quête Documentation de la Ligue des explorateurs (3 sur 6)
    .turnin 13658 >>Rendre la quête Documentation de la Ligue des explorateurs (4 sur 6)
    .turnin 13660 >>Rendre la quête Documentation de la Ligue des explorateurs (5 sur 6)
    .turnin 13659 >>Rendre la quête Documentation de la Ligue des explorateurs (6 sur 6)
    .accept 13661 >>Accepter Notre appréciation la plus sincère
    .turnin 13661 >>Rendre la quête Notre appréciation la plus sincère
step
    #optional
    #label endOfTheGuide
step << Paladin cata
    .goto 48,35.374,48.810
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Faldoc Foi-de-Roc|r
    .trainer >> Apprenez vos sorts de classe
    .target Faldoc Stonefaith
step << Rogue cata
    .goto 48,34.935,48.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Galda Lame-de-bronze|r
    .trainer >> Apprenez vos sorts de classe
    .target Galda Bronzeblade
step << Mage cata
    .goto 48,35.012,48.445
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gindle le Vert|r
    .trainer >> Apprenez vos sorts de classe
    .target Gindle the Green
step << Hunter cata
    .goto 48,34.553,48.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belda Cœur-Sauvage|r
    .trainer >> Apprenez vos sorts de classe
    .target Belda Wildheart
step << Warrior cata
    .goto 48,33.951,46.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grendin Vivehache|r
    .trainer >> Apprenez vos sorts de classe
    .target Grendin Swiftaxe
step << Shaman cata
    .goto 48,36.596,48.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grenhild Sombreserre|r
    .trainer >> Apprenez vos sorts de classe
    .target Grenhild Darktalon
step << Warlock cata
    .goto 48,35.879,46.199
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Solbin Ombrécrou|r
    .trainer >> Apprenez vos sorts de classe
    .target Solbin Shadowcog
step << Priest cata
    .goto 48,36.108,45.893
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prêtresse Baerla|r
    .trainer >> Apprenez vos sorts de classe
    .target Priestess Baerla
step
#questguide
    .goto 48,33.938,50.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Farstrider Lodge >> Envolez-vous vers Pérégrin Lodge
    .target Thorgrum Borrelson
step
#questguide
    .goto 48,58.585,29.077
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ando Explonheimer|r
    .target Ando Blastenheimer
    .turnin 27034 >>Rendre la quête L'âge ingrat
    .accept 27035 >>Accepter Monter au créneau
step
#questguide
    .goto 48,50.532,23.802
    >>Tuez |cRXP_ENEMY_Forme-terre du Crépuscule|r
    .complete 27035,1 --|1/1 Twilight Landshaper destroyed
    .mob Twilight Landshaper
step
#questguide
    .goto 48,58.551,29.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ando Explonheimer|r
    .target Ando Blastenheimer
    .turnin 27035 >>Rendre la quête Monter au créneau
    .accept 27074 >>Accepter Combattre le Marteau
step
#questguide
    .goto 48,64.085,26.707
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ashlan Rictus-de-pierre|r
    .target Ashlan Stonesmirk
    .turnin 27074 >>Rendre la quête Combattre le Marteau
    .accept 27075 >>Accepter Les serviteurs de Cho’gall
    .accept 27077 >>Accepter Prendre le chaos à la gorge

step
#questguide
#loop
    .goto 48,67.559,22.273,40,0
    .goto 48,69.705,25.944,40,0
    .goto 48,74.141,20.405,40,0
    .goto 48,71.035,21.294,0
    >>Tuez |cRXP_ENEMY_Mo'grosh Ogres|r
    >>Ramassez les petites épines noires dispersées sur le sol
    .complete 27075,1 --|7/7 Mo'grosh Ogre slain
    .complete 27077,1 --|10/10 Nascent Elementium Spike
    .mob Mo'grosh Earthbender
    .mob Mo'grosh Darkmauler


step
#questguide
    .goto 48,64.049,26.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ashlan Rictus-de-pierre|r
    .target Ashlan Stonesmirk
    .turnin 27075 >>Rendre la quête Les serviteurs de Cho’gall
    .turnin 27077 >>Rendre la quête Prendre le chaos à la gorge
    .accept 27078 >>Accepter Gor’kresh
step
#questguide
    .goto 48,75.212,19.594,20,0
    .goto 48,79.665,14.870
    >>Allez vers l'arrière de la caverne au nord-est
    >>Tuez |cRXP_ENEMY_Gor’kresh|r
    .complete 27078,1 --|1/1 Gor'kresh slain
    .mob Gor'kresh

step
#questguide
    .goto 48,64.145,26.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ashlan Rictus-de-pierre|r
    .target Ashlan Stonesmirk
    .turnin 27078 >>Rendre la quête Gor’kresh
    .accept 27115 >>Accepter L'appel d'Ando
step
#questguide
    .goto 48,58.491,29.051
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ando Explonheimer|r
    .target Ando Blastenheimer
    .turnin 27115 >>Rendre la quête L'appel d'Ando
    .accept 27116 >>Accepter Les vents du loch Modan
step
#questguide
    .goto 48,25.444,17.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .target Mountaineer Stormpike
    .turnin 27116 >>Rendre la quête Les vents du loch Modan
    .accept 26137 >>Accepter Inspection-surprise
step
#questguide
    .goto 48,25.315,1.591,15,0
    .goto 56,54.873,83.458,15,0
    .zone Wetlands >> Allez vers le nord, aux Paluns
    .isOnQuest 26137
step
#questguide
    .goto 56,49.973,79.288
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Montagnard Rharen|r
    .target Mountaineer Rharen
    .turnin 26137 >>Rendez la quête Vérifier les recrues
    .accept 25395 >>Acceptez la quête Le Tonneau volé
    .accept 25211 >>Acceptez la quête Nettoyer le taudis

--TODO: follow the path to the first quest hub
--fly to gol'bolar quarry (dwarf) or kharanos (gnome)
--buy mount, then fly to SW and do duskwood
]])
