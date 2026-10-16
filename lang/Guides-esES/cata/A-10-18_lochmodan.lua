if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fly Gol'Bolar Quarry >> Vuela a Cantera Gol'Bolar
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
    .goto 48,14.025,56.641,12 >> |cRXP_WARN_Viaja montaña arriba y luego déjate caer con cuidado hacia|r |cRXP_FRIENDLY_Piloto Podomartillo|r
    .noflyable
step << Pandaren
    .goto 48,14.006,56.485
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Podomartillo|r
    .accept 26854 >>Acepta la misión El piloto perdido
    .target Pilot Hammerfoot
step << Pandaren
    #optional
    #completewith next
    .goto 48,12.639,58.419,20,0
    .goto 27,89.543,51.716,20,0
    >>Viaja hacia el |cRXP_PICK_Cadáver de enano|r en el suelo
    .noflyable
step << Pandaren
    .goto 27,87.633,50.139
    >>Haz clic en el |cRXP_PICK_Cadáver de enano|r en el suelo
    >>|cRXP_WARN_Esto hará que |cRXP_ENEMY_Sarnagarra|r empiece a correr hacia ti|r
    .turnin 26854 >>Entrega la misión El piloto perdido
    .accept 26855 >>Acepta la misión Vengar al piloto
step << Pandaren
    .goto 27,87.421,50.013,0
    .goto 27,87.357,49.213
    >>Mata a |cRXP_ENEMY_Sarnagarra|r. Despójalo para obtener su |cRXP_LOOT_Garra|r
    .complete 26855,1 --Mangy Claw (1)
    .unitscan Mangeclaw
step << Pandaren
    .goto 48,14.006,56.485
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Podomartillo|r
    .turnin 26855 >>Entrega la misión Vengar al piloto
    .accept 13635 >>Acepta la misión Informe del estado de la Puerta Sur
    .target Pilot Hammerfoot
step
    #completewith next
    .goto 48,21.398,66.390,30,0
    .goto 48,21.559,68.292,30,0
    .goto 48,23.670,75.378,15,0
    .goto 48,23.495,75.054,12 >> Viaja hacia |cRXP_FRIENDLY_Capitán Rugelfuss|r dentro del búnker
    .xp >30,1
    .isOnQuest 13635
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Rugelfuss|r y con el |cRXP_FRIENDLY_Montaraz Pedernal|r dentro
    .turnin -13635 >>Entrega la misión Informe del estado de la Puerta Sur
    .accept 26146 >>Acepta la misión En defensa de las tierras del rey
    .goto 48,23.495,75.054
    .target +Captain Rugelfuss
    .accept 26145 >>Acepta la misión La amenaza trogg
    .goto 48,23.332,74.925
    .target +Mountaineer Cobbleflint
step << Warrior/Paladin
    .goto 48,23.673,74.329
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorvald Forjahonda|r
    >>|cRXP_BUY_Compra un|r |T135350:0|t[Mandoble] |cRXP_BUY_a este vendedor|r
    .collect 1198,1 -- Claymore (1)
    .money <0.2142
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Thorvald Deepforge
step << Rogue/Shaman
    .goto 48,23.673,74.329
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorvald Forjahonda|r
    >>|cRXP_BUY_Compra una|r |T132402:0|t[Hachuela] |cRXP_BUY_a él|r
    .collect 853,1 -- Hatchet (1)
    .money <0.1927
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .target Thorvald Deepforge
    .xp <11,1
step << Warrior/Paladin
    #optional
    #completewith end
    +|cRXP_WARN_Equipa el|r |T135350:0|t[Mandoble]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Rogue/Shaman
    #optional
    #completewith end
    +|cRXP_WARN_Equipa la|r |T132402:0|t[Hachuela] |cRXP_WARN_en tu mano principal|r
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
    .subzone 923 >> Viaja por el camino hacia Stonesplinter Valley
    .xp >30,1
step
#loop
    .goto 48,28.888,86.139,30,0
    .goto 48,32.444,79.051,30,0
    .goto 48,36.068,83.253,30,0
    .goto 48,28.888,86.139,0
    .goto 48,32.444,79.051,0
    .goto 48,36.068,83.253,0
    >>Mata a los |cRXP_ENEMY_Stonesplinter Troggs|r y a los |cRXP_ENEMY_Stonesplinter Exploradores|r
    .complete 26146,1 --|12/12 Stonesplinter Trogg slain
    .complete 26145,1 --|8/8 Trogg Stone Tooth
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step
#xprate <1.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Capitán Rugelfuss|r, |cRXP_FRIENDLY_Montaraz Pedernal|r y |cRXP_FRIENDLY_Capitán Wallbang|r
    .turnin 26146 >>Entrega la misión En defensa de las tierras del rey
    .accept 26148 >>Acepta la misión Un golpe decisivo
    .target +Captain Rugelfuss
    .goto 48,23.359,74.990
    .turnin 26145 >>Entrega la misión La amenaza trogg
    .target +Mountaineer Cobbleflint
    .goto 48,23.332,74.927
    .accept 26147 >>Acepta la misión Más grande y más feo
    .target +Mountaineer Wallbang
    .goto 48,23.298,75.054
step
#xprate >1.299
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Capitán Rugelfuss|r, |cRXP_FRIENDLY_Montaraz Pedernal|r y |cRXP_FRIENDLY_Capitán Wallbang|r
    .turnin 26146 >>Entrega la misión En defensa de las tierras del rey
    .target +Captain Rugelfuss
    .goto 48,23.359,74.990
    .turnin 26145 >>Entrega la misión La amenaza trogg
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
    >>Ve a la cueva al norte de Stonesplinter Valley
    >>Mata a los |cRXP_ENEMY_Shamans|r y a los |cRXP_ENEMY_Bonesnappers|r
    .complete 26147,1 --|8/8 Stonesplinter Shaman slain
    .complete 26147,2 --|8/8 Stonesplinter Bonesnapper slain
    .mob Stonesplinter Shaman
    .mob Stonesplinter Bonesnapper
step
#xprate <1.3
    >>Ve hasta el fondo de la cueva y mata a |cRXP_ENEMY_Gromug|r
    .goto 48,34.289,61.146
    .complete 26148,1 --|1/1 Grawmug slain
    .mob Grawmug
step
#xprate <1.3
#requires troggcave1
    .goto 48,23.321,75.013
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Capitán Rugelfuss|r y |cRXP_FRIENDLY_Capitán Wallbang|r
    .turnin 26148 >>Entrega la misión Un golpe decisivo
    .accept 26176 >>Acepta la misión Hacia Thelsamar
    .target +Captain Rugelfuss
    .goto 48,23.359,74.990
    .turnin 26147 >>Entrega la misión Más grande y más feo
    .target +Mountaineer Wallbang
    .goto 48,23.298,75.054
step
    .goto 48,33.940,50.955
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >> Consigue la ruta de vuelo de Thelsamar
    .target Thorgrum Borrelson
step
    .goto 48,35.079,46.663
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Kadrell|r
    .target Mountaineer Kadrell
    .turnin -26176 >>Entrega la misión Hacia Thelsamar
    .accept 26842 >>Acepta la misión Gnoll sé de dónde salen
    .accept 13636 >>Acepta la misión Órdenes Pico Tormenta
step
    #optional
    .maxlevel 20,endOfTheGuide
step
    .goto 48,35.536,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Hogartufa|r
    .home >>Establece tu Piedra de hogar en Thelsamar
    .target Innkeeper Hearthstove
step
    .goto 48,34.849,49.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vidra Hogartufa|r
    .target Vidra Hearthstove
    .accept 26860 >>Acepta la misión Morcillas de Thelsamar
step << Paladin cata
    .goto 48,35.374,48.810
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Faldoc Piedrafé|r
    .trainer >> Aprende tus hechizos de clase
    .target Faldoc Stonefaith
step << Rogue cata
    .goto 48,34.935,48.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Galda Bronzoja|r
    .trainer >> Aprende tus hechizos de clase
    .target Galda Bronzeblade
step << Mage cata
    .goto 48,35.012,48.445
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gindle el Verde|r
    .trainer >> Aprende tus hechizos de clase
    .target Gindle the Green
step << Hunter cata
    .goto 48,34.553,48.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Belda Corazón Salvaje|r
    .trainer >> Aprende tus hechizos de clase
    .target Belda Wildheart
step << Warrior cata
    .goto 48,33.951,46.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grendin Hachaveloz|r
    .trainer >> Aprende tus hechizos de clase
    .target Grendin Swiftaxe
step << Shaman cata
    .goto 48,36.596,48.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grenhild Garfaoscura|r
    .trainer >> Aprende tus hechizos de clase
    .target Grenhild Darktalon
step << Warlock cata
    .goto 48,35.879,46.199
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Solbin Molaro|r
    .trainer >> Aprende tus hechizos de clase
    .target Solbin Shadowcog
step << Priest cata
    .goto 48,36.108,45.893
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sacerdotisa Baerla|r
    .trainer >> Aprende tus hechizos de clase
    .target Priestess Baerla
step
    .goto 48,37.303,46.517
    >>Haz clic en el póster de |cRXP_PICK_Se busca|r
    .accept 13648 >>Acepta la misión SE BUSCA: El espía Hierro Negro
step
    .goto 48,35.960,44.028
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dakk Rayobestial|r
    .target Dakk Blunderblast
    .accept 25118 >>Acepta la misión En busca de merodeadores
step
    #completewith SilverStreamMine
    >>Mata a los |cRXP_ENEMY_Forest Lurkers|r
    .complete 25118,1 --|8/8 Forest Lurker slain
    .mob Forest Lurker
step
    #completewith SilverStreamMine
    >>Mata a los |cRXP_ENEMY_Black Osos|r. Despójalos para obtener su |cRXP_LOOT_Rump|r
    .complete 26860,1 --|8/8 Bear Rump
    .mob Black Bear
step
    #loop
    .goto 48,26.258,42.477,30,0
    .goto 48,26.888,50.154,30,0
    .goto 48,26.258,42.477,0
    .goto 48,26.888,50.154,0
    >>Mata a los |cRXP_ENEMY_Mosshide Exploradores|r y a los |cRXP_ENEMY_Mosshide Bashers|r. Despójalos para obtener sus |cRXP_LOOT_Orejas|r
    .complete 26842,1 --|12/12 Mosshide Ear
    .mob Mosshide Basher
    .mob Mosshide Scout
step
    .goto 48,25.444,17.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pico Tormenta|r
    .turnin 13636 >>Entrega la misión Órdenes Pico Tormenta
    .accept 26843 >>Acepta la misión Un comandante pequeño pero matón
    .target Mountaineer Stormpike
step
    .goto 48,26.111,31.575
    >>Mata a |cRXP_ENEMY_"Comandante" Nazrim|r
    .complete 26843,1 --|1/1 "Commander" Nazrim slain
    .mob "Commander" Nazrim
step
    .goto 48,25.444,17.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pico Tormenta|r
    .turnin 26843 >>Entrega la misión Un comandante pequeño pero matón
    .accept 26844 >>Acepta la misión Kóbold y más kóbold
    .target Mountaineer Stormpike
step
    .goto 48,31.485,13.582,30,0
    .goto 48,35.425,16.773,30,0
    .goto 48,38.607,15.477,30,0
    .goto 48,38.760,13.619,0
    >>Mata a los |cRXP_ENEMY_Túnel Rata Surveyors|r y a los |cRXP_ENEMY_Túnel Rata Foragers|r
    .complete 26844,1 --|5/5 Tunnel Rat Surveyor slain
    .mob +Tunnel Rat Surveyor
    .complete 26844,2 --|5/5 Tunnel Rat Forager slain
    .mob +Tunnel Rat Forager
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Montaraz Pico Tormenta|r y |cRXP_FRIENDLY_Exploradora Dorli|r
    .turnin 26844 >>Entrega la misión Kóbold y más kóbold
    .accept 26845 >>Acepta la misión ¿Quién está al mando aquí?
    .accept 26863 >>Acepta la misión Zarpas asquerosas
    .goto 48,25.444,17.963
    .target +Mountaineer Stormpike
    .accept 26846 >>Acepta la misión Una sucia explotación
    .goto 48,25.398,17.793
    .target +Scout Dorli
step
    #label SilverStreamMine
    #completewith ForemanSharpsneer
    .goto 48,35.49,19.13,15 >> Entra en la Mina de Fuenteplata
step
    #sticky
    #label koboldmine1
    #loop
    .goto 48,35.623,20.181,20,0
    .goto 48,36.222,24.255,20,0
    .goto 48,34.854,27.180,20,0
    .goto 48,34.752,26.885,20,0
    .goto 48,35.214,20.966,0
    >>Mata a los |cRXP_ENEMY_Túnel Rata Geomancers|r
    >>Abre los |cRXP_PICK_Cajones de la Liga de Mineros|r. Despójalos para obtener el |cRXP_LOOT_Equipamiento de minero|r
    .complete 26846,1 --|5/5 Tunnel Rat Geomancer slain
    .mob +Tunnel Rat Geomancer
    .complete 26863,1 --|6/6 Miners' Gear
step
    #label ForemanSharpsneer
    .goto 48,34.752,26.885
    >>|cRXP_WARN_Dirígete a la parte trasera de Plateado Stream Mina|r
    >>Mata a |cRXP_ENEMY_Supervisor Ceñofruncido|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    .complete 26845,1 --|1/1 Foreman Sharpsneer's Head
    .mob Foreman Sharpsneer
step
    #requires koboldmine1
    #completewith next
    .goto 48,35.49,19.13,15 >> Sal de Plateado Stream Mina
step
    #completewith TheBearer
    >>Mata a los |cRXP_ENEMY_Forest Lurkers|r
    .complete 25118,1 --|8/8 Forest Lurker slain
    .mob Forest Lurker
step
    #completewith TheBearer
    >>Mata a los |cRXP_ENEMY_Black Osos|r. Despójalos para obtener sus |cRXP_LOOT_Rump|r
    .complete 26860,1 --|8/8 Bear Rump
    .mob Black Bear
step
    #requires koboldmine1
    #label TheBearer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Montaraz Pico Tormenta|r y |cRXP_FRIENDLY_Exploradora Dorli|r
    .turnin 26845 >>Entrega la misión ¿Quién está al mando aquí?
    .accept 26864 >>Acepta la misión El portador del gnoll-cimiento
    .turnin 26863 >>Entrega la misión Zarpas asquerosas
    .target +Mountaineer Stormpike
    .goto 48,25.444,17.963
    .turnin 26846 >>Entrega la misión Una sucia explotación
    .goto 48,25.398,17.793
    .target +Scout Dorli
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Forest Lurkers|r
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
    >>Mata a los |cRXP_ENEMY_Black Osos|r. Despójalos para obtener sus |cRXP_LOOT_Rump|r
    .complete 26860,1 --|8/8 Bear Rump
    .mob Black Bear
step
    #loop
    .goto 48,33.55,37.43,60,0
    .goto 48,38.94,30.41,60,0
    .goto 48,35.19,27.68,60,0
    .goto 48,27.64,21.20,70,0
    >>Mata a los |cRXP_ENEMY_Forest Lurkers|r
    .complete 25118,1 --|8/8 Forest Lurker slain
    .mob Forest Lurker
step
    .isOnQuest 26860,25118
    .hs >> Usa tu Piedra de Hogar para ir a Thelsamar
    .cooldown item,6948,>2,1
step
    .goto 48,35.969,44.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dakk Rayobestial|r
    .turnin 25118 >>Entrega la misión En busca de merodeadores
    .target Dakk Blunderblast
step
    .goto 48,35.017,46.663
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Kadrell|r
    .turnin 26842 >>Entrega la misión Gnoll sé de dónde salen
    .turnin 26864 >>Entrega la misión El portador del gnoll-cimiento
    .accept 26927 >>Acepta la misión ¡De pronto, múrlocs!
    .target Mountaineer Kadrell
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cannary Copabarril|r y |cRXP_FRIENDLY_Vidra Hogartufa|r
    .turnin 26927 >>Entrega la misión ¡De pronto, múrlocs!
    .accept 26928 >>Acepta la misión Huele a plan
    .accept 26929 >>Acepta la misión Un montón de crocoliscos
    .target +Cannary Caskshot
    .goto 48,34.789,49.122
    .turnin 26860 >>Entrega la misión Morcillas de Thelsamar
    .target +Vidra Hearthstove
    .goto 48,34.827,49.285
step
    #optional
    .maxlevel 20,endOfTheGuide
step << Paladin cata
    .goto 48,35.374,48.810
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Faldoc Piedrafé|r
    .trainer >> Aprende tus hechizos de clase
    .target Faldoc Stonefaith
step << Rogue cata
    .goto 48,34.935,48.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Galda Bronzoja|r
    .trainer >> Aprende tus hechizos de clase
    .target Galda Bronzeblade
step << Mage cata
    .goto 48,35.012,48.445
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gindle el Verde|r
    .trainer >> Aprende tus hechizos de clase
    .target Gindle the Green
step << Hunter cata
    .goto 48,34.553,48.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Belda Corazón Salvaje|r
    .trainer >> Aprende tus hechizos de clase
    .target Belda Wildheart
step << Warrior cata
    .goto 48,33.951,46.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grendin Hachaveloz|r
    .trainer >> Aprende tus hechizos de clase
    .target Grendin Swiftaxe
step
    .goto 48,35.079,46.663
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Kadrell|r
    .target Mountaineer Kadrell
    .accept 26932 >>Acepta la misión Águilas fuera
step << Shaman cata
    .goto 48,36.596,48.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grenhild Garfaoscura|r
    .trainer >> Aprende tus hechizos de clase
    .target Grenhild Darktalon
step << Warlock cata
    .goto 48,35.879,46.199
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Solbin Molaro|r
    .trainer >> Aprende tus hechizos de clase
    .target Solbin Shadowcog
step << Priest cata
    .goto 48,36.108,45.893
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sacerdotisa Baerla|r
    .trainer >> Aprende tus hechizos de clase
    .target Priestess Baerla
step
    .goto 48,40.642,58.310,15,0
    .goto 48,39.670,62.104,15,0
    .goto 48,36.796,61.173
    >>Sigue la flecha hasta la cima de Zarpagris Risco
    >>Mata a |cRXP_ENEMY_Gorick Agriojarabe|r
    .complete 13648,1 --|1/1 Gorick Guzzledraught slain
    .mob Gorick Guzzledraught
step
    .goto 48,36.752,61.108
    >>Haz clic en el |cRXP_PICK_Documento robado de Explorers' League|r dentro de la Cueva
    .accept 13656>> Acepta la misión Documento de la Liga de Expedicionarios (1 de 6)
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Loch Buzzards|r
    >>|cRXP_WARN_Algunos |cRXP_ENEMY_Loch Buzzards|r pueden estar volando en el aire|r
    .complete 26932,1 --|8/8 Loch Buzzard slain
    .mob Loch Buzzard
step
    #loop
    .goto 48,50.790,63.748,60,0
    .goto 48,55.580,56.273,60,0
    .goto 48,59.933,52.441,60,0
    >>Mata a los |cRXP_ENEMY_Loch Crocolisks|r. Despójalos para obtener las |cRXP_LOOT_Fauces íntegras de Crocolisco|r
    .complete 26929,1 --|6/6 Intact Crocolisk Jaw
    .mob Loch Crocolisk
step
    #loop
    .goto 48,50.790,63.748,60,0
    .goto 48,55.580,56.273,60,0
    .goto 48,59.933,52.441,60,0
    >>Mata a los |cRXP_ENEMY_Loch Buzzards|r
    >>|cRXP_WARN_Algunos |cRXP_ENEMY_Loch Buzzards|r pueden estar volando en el aire|r
    .complete 26932,1 --|8/8 Loch Buzzard slain
    .mob Loch Buzzard
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Bluegill Mudskippers|r y a los |cRXP_ENEMY_Bluegill Wanderers|r. Despójalos para obtener las |cRXP_LOOT_Glándulas de olor|r
    .complete 26928,1 --|7/7 Murloc Scent Gland
    .mob Bluegill Mudskipper
    .mob Bluegill Wanderer
step
    .goto 48,41.379,38.967
    >>Haz clic en el |cRXP_PICK_Documento robado de Explorers' League|r bajo el puente
    .accept 13655 >>Acepta la misión Documento de la Liga de Expedicionarios (2 de 6)
step
    #loop
    .goto 48,42.957,39.201,60,0
    .goto 48,46.231,51.109,60,0
    >>Mata a los |cRXP_ENEMY_Bluegill Mudskippers|r y a los |cRXP_ENEMY_Bluegill Wanderers|r. Despójalos para obtener las |cRXP_LOOT_Glándulas de olor|r
    .complete 26928,1 --|7/7 Murloc Scent Gland
    .mob Bluegill Mudskipper
    .mob Bluegill Wanderer
step
    .goto 48,34.613,44.539
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Magistrado Narizroma|r
    .target Magistrate Bluntnose
    .turnin 13648 >>Entrega la misión SE BUSCA: El espía Hierro Negro
step
    .goto 48,35.079,46.663
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Kadrell|r
    .target Mountaineer Kadrell
    .turnin 26932 >>Entrega la misión Águilas fuera
step
    .goto 48,34.789,49.122
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cannary Copabarril|r
    .turnin 26929 >>Entrega la misión Un montón de crocoliscos
    .turnin 26928 >>Entrega la misión Huele a plan
    .accept 26868 >>Acepta la misión Eje de horror
    .target Cannary Caskshot
step
    .goto 48,37.200,46.363
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Torren Mandicuadrada|r
    .turnin 13656 >>Entrega la misión Documento de la Liga de Expedicionarios (1 de 6)
    .turnin 13655 >>Entrega la misión Documento de la Liga de Expedicionarios (2 de 6)
    .target Torren Squarejaw
step
    #optional
    .maxlevel 20,endOfTheGuide
step
    .isOnQuest 26868
    .use 60681 >> |cRXP_WARN_Abre|r |T133639:0|t[Cannary's Cache] |cRXP_WARN_para|r |T237425:0|t[|cRXP_LOOT_Astuto disfraz de planta|r] |cRXP_WARN_y|r |T134839:0|t[|cRXP_LOOT_Potent Múrloc Feromonas|r]
    .collect 60502,1,26868,1 -- Clever Plant Disguise Kit (1)
    .collect 60503,1,26868,1 -- Potent Murloc Pheromones (1)
step
    .isOnQuest 26868
    .goto 48,50.585,56.048,85 >> |cRXP_WARN_Viaja hacia|r |cRXP_ENEMY_Representante Pellejomusgo|r
step
    .isOnQuest 26868
    .cast 82788 >> |cRXP_WARN_Usa|r |T237425:0|t[|cRXP_LOOT_Astuto disfraz de planta|r] |cRXP_WARN_para disfrazarte|r
    .use 60502
step
    .goto 48,50.585,56.048
    >>|cRXP_WARN_Usa|r |T134839:0|t[|cRXP_LOOT_Potent Múrloc Feromonas|r] |cRXP_WARN_en el|r |cRXP_ENEMY_Representante Pellejomusgo|r
    >>|cRXP_WARN_Esto tiene un alcance de 15 yardas|r
    .complete 26868,1 --|1/1 Mosshide Tagged
    .mob Mosshide Representative
    .use 60503
step
    .goto 48,34.789,49.122
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cannary Copabarril|r
    .turnin 26868 >>Entrega la misión Eje de horror
    .target Cannary Caskshot
step
    .goto 48,36.992,47.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jern Cornamenta|r
    .accept 13639 >>Acepta la misión Aprovisionar la excavación
    .target Jern Hornhelm
step
    .goto 48,56.353,65.959
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Huldar|r
    .target Huldar
    .turnin 13639 >>Entrega la misión Aprovisionar la excavación
    .accept 309 >>Acepta la misión Proteger el envío
step
    .goto 48,56.353,65.959
    >>|cRXP_WARN_Permanece en la Caravana y protege|cRXP_FRIENDLY_ Huldar|r de los|cRXP_ENEMY_ Emboscadores Oscuros de Hierro|r y|r |cRXP_ENEMY_Saean|r
    .complete 309,1 -- Protect the Ironband Caravan (1)
    .mob Dark Iron Ambusher
    .mob Saean
    .target Huldar
step
    .goto 48,58.183,68.975,20,0
    .goto 48,59.722,72.385,20,0
    .goto 48,61.701,73.181
    >>Haz clic en |cRXP_PICK_Documento robado de la Liga de Expedicionarios|r en el suelo
    .accept 13657 >>Acepta la misión Documento de la Liga de Expedicionarios (3 de 6)
step
    .goto 48,64.896,66.659
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Magmar Ceñimal|r
    .target Magmar Fellhew
    .accept 26961 >>Acepta la misión Recoger ídolos
step
    .goto 48,65.336,65.979
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Prospector Vetaferro|r
    .target Prospector Ironband
    .turnin 309 >>Entrega la misión Proteger el envío
    .accept 13650 >>Acepta la misión ¡Esas manos lejos de las mercancías!
step
    #completewith Artifacts
    >>Mata a los |cRXP_ENEMY_Stonesplinter Diggers|r y a los |cRXP_ENEMY_Stonesplinter Geomancers|r. Despójalos para obtener sus |cRXP_LOOT_Carved Piedra Idols|r
    .complete 26961,1 --|8/8 Carved Stone Idol
    .mob Stonesplinter Digger
    .mob Stonesplinter Geomancer
step
    .goto 48,67.610,68.736,20,0
    .goto 48,69.218,66.357,8,0
    .goto 48,68.112,66.143
    >>Haz clic en |cRXP_PICK_Documento robado de la Liga de Expedicionarios|r junto al barril
    .accept 13658 >>Acepta la misión Documento de la Liga de Expedicionarios (4 de 6)
step
    #label Artifacts
    >>|cRXP_WARN_Explora los Artefactos del Sitio de Excavación|r
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
    >>Mata a los |cRXP_ENEMY_Stonesplinter Diggers|r y a los |cRXP_ENEMY_Stonesplinter Geomancers|r. Despójalos para obtener sus |cRXP_LOOT_Carved Piedra Idols|r
    .complete 26961,1 --|8/8 Carved Stone Idol
    .mob Stonesplinter Digger
    .mob Stonesplinter Geomancer
step
    .goto 48,65.336,65.979
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Prospector Vetaferro|r
    .target Prospector Ironband
    .turnin 13650 >>Entrega la misión ¡Esas manos lejos de las mercancías!
step
    .goto 48,64.896,66.659
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Magmar Ceñimal|r
    .target Magmar Fellhew
    .turnin 26961 >>Entrega la misión Recoger ídolos
    .accept 13647 >>Acepta la misión Unirse a la caza
step
    #completewith next
    .goto 48,69.478,51.742,70,0
    .goto 48,83.597,60.675,40 >> Ve a la Posada de Jurocin
    .subzoneskip 147
step
    .goto 48,82.789,63.459
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Celadora de seguridad Pipsy|r
    .target Safety Warden Pipsy
    .accept 27025 >>Acepta la misión Un cardo, dos cardos, tres cardos...
step
    .goto 48,83.428,65.309
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daryl el Jovenzuelo|r
    .target Daryl the Youngling
    .accept 27016 >>Acepta la misión La alegría de la caza del jabalí
step
    .goto 48,81.944,64.505
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vyrin Vientoveloz|r
    .target Vyrin Swiftwind
    .home >>Establece tu Piedra de Hogar en la Posada de Jurocin
step
    .goto 48,81.647,64.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bingles Pimpampum|r
    .target Bingles Blastenheimer
    .accept 27031 >>Acepta la misión Loco por las alas
step
    .goto 48,81.803,61.735
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marek Coracero|r
    .target Marek Ironheart
    .turnin 13647 >>Entrega la misión Unirse a la caza
    .accept 27028 >>Acepta la misión La caza del avispón
    .accept 27030 >>Acepta la misión Puñados de colas de zorro
step
    .goto 48,78.350,69.552,40,0
    .goto 48,77.581,75.929,40,0
    .goto 48,74.254,71.828,40,0
    .goto 48,78.350,69.552,0
    .goto 48,77.581,75.929,0
    .goto 48,74.254,71.828,0
    >>Mata a las |cRXP_ENEMY_Águilas Doradas|r. Despójalas para obtener sus |cRXP_LOOT_Plumas|r
    .complete 27031,1 --|3/3 Pristine Flight Feather
    .mob Golden Eagle
step
    #completewith doc6
    >>Despoja las |cRXP_LOOT_Semillas de Cardo Punzante|r en el suelo
    .complete 27025,1 --|6/6 Stabthistle Seed
step
    #completewith doc6
    >>Mata a los |cRXP_ENEMY_Hill Foxes|r. Despójales de sus |cRXP_LOOT_Cruz|r
    .complete 27030,1 --|7/7 Fluffy Fox Tail
    .mob Hill Fox
step
    #label doc6
    .goto 48,73.188,35.870
    >>Haz clic en el |cRXP_PICK_Stolen Explorers' League Documentar|r en el suelo
    .accept 13659 >>Acepta la misión Documento de la Liga de Expedicionarios (6 de 6)
step
    #completewith next
    >>Despoja las |cRXP_LOOT_Stabthistle Seeds|r en el suelo
    .complete 27025,1 --|6/6 Stabthistle Seed
step
    #loop
    .goto 48,72.311,40.993,0
    .goto 48,75.992,46.409,40,0
    .goto 48,66.113,37.946,40,0
    .goto 48,72.311,40.993,40,0
    .goto 48,76.495,36.873,40,0
    >>Mata a los |cRXP_ENEMY_Hill Foxes|r. Despójales de sus |cRXP_LOOT_Cruz|r
    .complete 27030,1 --|7/7 Fluffy Fox Tail
    .mob Hill Fox
step
    #loop
    .goto 48,72.311,40.993,0
    .goto 48,75.992,46.409,40,0
    .goto 48,66.113,37.946,40,0
    .goto 48,72.311,40.993,40,0
    .goto 48,76.495,36.873,40,0
    >>Despoja las |cRXP_LOOT_Stabthistle Seeds|r en el suelo
    .complete 27025,1 --|6/6 Stabthistle Seed
step
    #completewith doc5
    >>Mata a los |cRXP_ENEMY_Mudbelly Boars|r
    .complete 27016,1 --|10/10 Mudbelly Boar slain
    .mob Mudbelly Boar
step
    #completewith doc5
    >>Mata a los |cRXP_ENEMY_Marsh Hornets|r. Despójales de sus |cRXP_LOOT_Alas|r
    .complete 27028,1 --|6/6 Glassy Hornet Wing
    .mob Marsh Hornet
    .mob Marsh Wasp
step
    #label doc5
    .goto 48,53.707,38.109
    >>Haz clic en el |cRXP_PICK_Stolen Explorers' League Documentar|r en el suelo
    .accept 13660 >>Acepta la misión Documento de la Liga de Expedicionarios (5 de 6)
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Mudbelly Boars|r
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
    >>Mata a los |cRXP_ENEMY_Marsh Hornets|r. Despójales de sus |cRXP_LOOT_Alas|r
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
    >>Mata a los |cRXP_ENEMY_Mudbelly Boars|r
    .complete 27016,1 --|10/10 Mudbelly Boar slain
    .mob Mudbelly Boar
step
    .isOnQuest 27016,27028,13660,27025,27030,27031
    .hs >> Ve a Errante's Lodge
    .cooldown item,6948,>2,1
step
#requires doc5
    .goto 48,82.789,63.459
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Celadora de seguridad Pipsy|r
    .target Safety Warden Pipsy
    .turnin 27025 >>Entrega la misión Un cardo, dos cardos, tres cardos...
    .accept 27026 >>Acepta la misión Alerta: Gato montés
step
    .goto 48,83.462,65.333
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daryl el Jovenzuelo|r
    .target Daryl the Youngling
    .turnin 27016 >>Entrega la misión La alegría de la caza del jabalí
step
    .goto 48,81.756,61.661
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marek Coracero|r
    .target Marek Ironheart
    .turnin 27028 >>Entrega la misión La caza del avispón
    .turnin 27030 >>Entrega la misión Puñados de colas de zorro
step
    .goto 48,81.910,64.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vyrin Vientoveloz|r
    .target Vyrin Swiftwind
    .accept 27036 >>Acepta la misión La venganza de Vyrin
step
    .goto 48,81.647,64.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Bingles Pimpampum|r
    .target Bingles Blastenheimer
    .turnin 27031 >>Entrega la misión Loco por las alas
    .accept 27032 >>Acepta la misión La clave está en el pájaro
step
    #optional
    .maxlevel 20,endOfTheGuide
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Bobcats|r
    .complete 27026,1
    .mob Bobcat
step
    .goto 48,72.590,72.017,70,0
    .goto 48,71.603,77.167,20 >> Ve a Ironwing Cavern
    .subzoneskip 5391
    .isOnQuest 27032
step
    .isOnQuest 27032
    #completewith next
    .goto 48,78.594,76.215,20 >> |cRXP_WARN_Despeja tu camino hacia la parte trasera de la Cueva|r
step
    .goto 48,78.594,76.215
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Caminante del Cielo herrumbroso|r
    .target Rusted Skystrider
    .turnin 27032 >>Entrega la misión La clave está en el pájaro
    .accept 27033 >>Acepta la misión El corazón del zancudo volador
step
    #completewith next
    .goto 48,71.603,77.167,20 >> Sal de la Ironwing Cavern
    .subzoneskip 5391,1
    .isOnQuest 27033
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Bobcats|r
    .complete 27026,1
    .mob Bobcat
step
    .goto 48,80.158,51.943
    >>Mata al |cRXP_ENEMY_Viejo Tiznado|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
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
    >>Mata a los |cRXP_ENEMY_Bobcats|r
    .complete 27026,1
    .mob Bobcat
step
    .isOnQuest 27026,27036
    .hs >> Ve a Errante's Lodge
    .cooldown item,6948,>2,1
step
    .goto 48,82.789,63.459
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Celadora de seguridad Pipsy|r
    .target Safety Warden Pipsy
    .turnin 27026 >>Entrega la misión Alerta: Gato montés
step
    .goto 48,83.435,65.246
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daryl el Jovenzuelo|r
    .target Daryl the Youngling
    .turnin 27036 >>Entrega la misión La venganza de Vyrin
    .accept 27037 >>Acepta la misión La venganza de Vyrin
step
    .goto 48,81.910,64.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vyrin Vientoveloz|r
    .target Vyrin Swiftwind
    .turnin 27037 >>Entrega la misión La venganza de Vyrin
step
#questguide
    .goto 48,81.647,64.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Bingles Pimpampum|r
    .target Bingles Blastenheimer
    .turnin 27033 >>Entrega la misión El corazón del Caminante del Cielo
    .accept 27034 >>Acepta la misión Está en esa edad
step
    .goto 48,81.647,64.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Bingles Pimpampum|r
    .target Bingles Blastenheimer
    .turnin 27033 >>Entrega la misión El corazón del Caminante del Cielo
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Eeryven Plomizo|r
    .goto 48,81.877,64.071
    .fly Thelsamar >>Vuela a Thelsamar
    .target Eeryven Grayer
step
    #label end
    .goto 48,37.200,46.363
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Torren Mandicuadrada|r
    .target Torren Squarejaw
    .turnin 13657 >>Entrega la misión Documento de la Liga de Expedicionarios (3 de 6)
    .turnin 13658 >>Entrega la misión Documento de la Liga de Expedicionarios (4 de 6)
    .turnin 13660 >>Entrega la misión Documento de la Liga de Expedicionarios (5 de 6)
    .turnin 13659 >>Entrega la misión Documento de la Liga de Expedicionarios (6 de 6)
    .accept 13661 >>Acepta la misión Aprecio de corazón
    .turnin 13661 >>Entrega la misión Aprecio de corazón
step
    #optional
    #label endOfTheGuide
step << Paladin cata
    .goto 48,35.374,48.810
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Faldoc Piedrafé|r
    .trainer >> Aprende tus hechizos de clase
    .target Faldoc Stonefaith
step << Rogue cata
    .goto 48,34.935,48.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Galda Bronzoja|r
    .trainer >> Aprende tus hechizos de clase
    .target Galda Bronzeblade
step << Mage cata
    .goto 48,35.012,48.445
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gindle el Verde|r
    .trainer >> Aprende tus hechizos de clase
    .target Gindle the Green
step << Hunter cata
    .goto 48,34.553,48.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Belda Corazón Salvaje|r
    .trainer >> Aprende tus hechizos de clase
    .target Belda Wildheart
step << Warrior cata
    .goto 48,33.951,46.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grendin Hachaveloz|r
    .trainer >> Aprende tus hechizos de clase
    .target Grendin Swiftaxe
step << Shaman cata
    .goto 48,36.596,48.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grenhild Garfaoscura|r
    .trainer >> Aprende tus hechizos de clase
    .target Grenhild Darktalon
step << Warlock cata
    .goto 48,35.879,46.199
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Solbin Molaro|r
    .trainer >> Aprende tus hechizos de clase
    .target Solbin Shadowcog
step << Priest cata
    .goto 48,36.108,45.893
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sacerdotisa Baerla|r
    .trainer >> Aprende tus hechizos de clase
    .target Priestess Baerla
step
#questguide
    .goto 48,33.938,50.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Farstrider Lodge >> Vuela a Cabaña del Errante
    .target Thorgrum Borrelson
step
#questguide
    .goto 48,58.585,29.077
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ando Pimpampum|r
    .target Ando Blastenheimer
    .turnin 27034 >>Entrega la misión Está en esa edad
    .accept 27035 >>Acepta la misión Resistir
step
#questguide
    .goto 48,50.532,23.802
    >>Mata a |cRXP_ENEMY_Moldeatierra Crepuscular|r
    .complete 27035,1 --|1/1 Twilight Landshaper destroyed
    .mob Twilight Landshaper
step
#questguide
    .goto 48,58.551,29.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ando Pimpampum|r
    .target Ando Blastenheimer
    .turnin 27035 >>Entrega la misión Resistir
    .accept 27074 >>Acepta la misión Lucha contra el Martillo
step
#questguide
    .goto 48,64.085,26.707
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ashlan Risapétrea|r
    .target Ashlan Stonesmirk
    .turnin 27074 >>Entrega la misión Lucha contra el Martillo
    .accept 27075 >>Acepta la misión Siervos de Cho'gall
    .accept 27077 >>Acepta la misión Aferrarse al caos

step
#questguide
#loop
    .goto 48,67.559,22.273,40,0
    .goto 48,69.705,25.944,40,0
    .goto 48,74.141,20.405,40,0
    .goto 48,71.035,21.294,0
    >>Mata a los |cRXP_ENEMY_Mo'grosh Ogres|r
    >>Despoja las pequeñas púas negras esparcidas en el suelo
    .complete 27075,1 --|7/7 Mo'grosh Ogre slain
    .complete 27077,1 --|10/10 Nascent Elementium Spike
    .mob Mo'grosh Earthbender
    .mob Mo'grosh Darkmauler


step
#questguide
    .goto 48,64.049,26.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ashlan Risapétrea|r
    .target Ashlan Stonesmirk
    .turnin 27075 >>Entrega la misión Siervos de Cho'gall
    .turnin 27077 >>Entrega la misión Aferrarse al caos
    .accept 27078 >>Acepta la misión Gor'kresh
step
#questguide
    .goto 48,75.212,19.594,20,0
    .goto 48,79.665,14.870
    >>Ve hacia la parte trasera de la cueva al noreste
    >>Mata a |cRXP_ENEMY_Gor'kresh|r
    .complete 27078,1 --|1/1 Gor'kresh slain
    .mob Gor'kresh

step
#questguide
    .goto 48,64.145,26.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ashlan Risapétrea|r
    .target Ashlan Stonesmirk
    .turnin 27078 >>Entrega la misión Gor'kresh
    .accept 27115 >>Acepta la misión La llamada de Ando
step
#questguide
    .goto 48,58.491,29.051
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ando Pimpampum|r
    .target Ando Blastenheimer
    .turnin 27115 >>Entrega la misión La llamada de Ando
    .accept 27116 >>Acepta la misión Las alas de Loch Modan
step
#questguide
    .goto 48,25.444,17.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pico Tormenta|r
    .target Mountaineer Stormpike
    .turnin 27116 >>Entrega la misión Los vientos de Loch Modan
    .accept 26137 >>Acepta la misión Controlar a los chicos
step
#questguide
    .goto 48,25.315,1.591,15,0
    .goto 56,54.873,83.458,15,0
    .zone Wetlands >> Ve al norte hacia Los Humedales
    .isOnQuest 26137
step
#questguide
    .goto 56,49.973,79.288
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Montaraz Rharen|r
    .target Mountaineer Rharen
    .turnin 26137 >>Entrega la misión Controlar a los chicos
    .accept 25395 >>Acepta la misión El barril robado
    .accept 25211 >>Acepta la misión Limpiando las ruinas

--TODO: follow the path to the first quest hub
--fly to gol'bolar quarry (dwarf) or kharanos (gnome)
--buy mount, then fly to SW and do duskwood
]])
