local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end

RXPGuides.RegisterGuide([[

#version 1
#group RXP Cataclysm 1-80 (A)
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Gol'Bolar Quarry >> Fly to Gol'Bolar Quarry
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
    .goto 48,14.025,56.641,12 >> |cRXP_WARN_Travel up the mountain, then carefully drop down toward|r |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .noflyable
step << Pandaren
    .goto 48,14.006,56.485
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .accept 26854 >>Accept The Lost Pilot
    .target Pilot Hammerfoot
step << Pandaren
    #optional
    #completewith next
    .goto 48,12.639,58.419,20,0
    .goto 27,89.543,51.716,20,0
    >>Travel toward |cRXP_PICK_A Dwarven Corpse|r on the ground
    .noflyable
step << Pandaren
    .goto 27,87.633,50.139
    >>Click |cRXP_PICK_A Dwarven Corpse|r on the ground
    >>|cRXP_WARN_This will make |cRXP_ENEMY_Mangeclaw|r start running towards you|r
    .turnin 26854 >>Turn in The Lost Pilot
    .accept 26855 >>Accept A Pilot's Revenge
step << Pandaren
    .goto 27,87.421,50.013,0
    .goto 27,87.357,49.213
    >>Kill |cRXP_ENEMY_Mangeclaw|r. Loot him for his |cRXP_LOOT_Mangy Claw|r
    .complete 26855,1 --Mangy Claw (1)
    .unitscan Mangeclaw
step << Pandaren
    .goto 48,14.006,56.485
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .turnin 26855 >>Turn in A Pilot's Revenge
    .accept 13635 >>Accept South Gate Status Report
    .target Pilot Hammerfoot
step
    #completewith next
    .goto 48,21.398,66.390,30,0
    .goto 48,21.559,68.292,30,0
    .goto 48,23.670,75.378,15,0
    .goto 48,23.495,75.054,12 >> Travel toward |cRXP_FRIENDLY_Captain Rugelfuss|r inside the bunker
    .xp >30,1
    .isOnQuest 13635
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rugelfuss|r and |cRXP_FRIENDLY_Mountaineer Cobbleflint|r inside
    .turnin -13635 >>Turn in South Gate Status Report
    .accept 26146 >>Accept In Defense of the King's Lands
    .goto 48,23.495,75.054
    .target +Captain Rugelfuss
    .accept 26145 >>Accept The Trogg Threat
    .goto 48,23.332,74.925
    .target +Mountaineer Cobbleflint
step << Warrior/Paladin
    .goto 48,23.673,74.329
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorvald Deepforge|r
    >>|cRXP_BUY_Buy a|r |T135350:0|t[Claymore] |cRXP_BUY_from him|r
    .collect 1198,1 -- Claymore (1)
    .money <0.2142
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Thorvald Deepforge
step << Rogue/Shaman
    .goto 48,23.673,74.329
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorvald Deepforge|r
    >>|cRXP_BUY_Buy a|r |T132402:0|t[Hatchet] |cRXP_BUY_from him|r
    .collect 853,1 -- Hatchet (1)
    .money <0.1927
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .target Thorvald Deepforge
    .xp <11,1
step << Warrior/Paladin
    #optional
    #completewith end
    +|cRXP_WARN_Equip the|r |T135350:0|t[Claymore]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Rogue/Shaman
    #optional
    #completewith end
    +|cRXP_WARN_Equip the|r |T132402:0|t[Hatchet] |cRXP_WARN_in your mainhand|r
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
    .subzone 923 >> Travel up the path toward Stonesplinter Valley
    .xp >30,1
step
#loop
    .goto 48,28.888,86.139,30,0
    .goto 48,32.444,79.051,30,0
    .goto 48,36.068,83.253,30,0
    .goto 48,28.888,86.139,0
    .goto 48,32.444,79.051,0
    .goto 48,36.068,83.253,0
    >>Kill and loot |cRXP_ENEMY_Stonesplinter Troggs|r and |cRXP_ENEMY_Stonesplinter Scouts|r
    .complete 26146,1 --|12/12 Stonesplinter Trogg slain
    .complete 26145,1 --|8/8 Trogg Stone Tooth
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step
#xprate <1.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rugelfuss|r, |cRXP_FRIENDLY_Mountaineer Cobbleflint|r and |cRXP_FRIENDLY_Captain Wallbang|r
    .turnin 26146 >>Turn in In Defense of the King's Lands
    .accept 26148 >>Accept A Decisive Strike
    .target +Captain Rugelfuss
    .goto 48,23.359,74.990
    .turnin 26145 >>Turn in The Trogg Threat
    .target +Mountaineer Cobbleflint
    .goto 48,23.332,74.927
    .accept 26147 >>Accept Bigger and Uglier
    .target +Mountaineer Wallbang
    .goto 48,23.298,75.054
step
#xprate >1.299
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rugelfuss|r, |cRXP_FRIENDLY_Mountaineer Cobbleflint|r and |cRXP_FRIENDLY_Captain Wallbang|r
    .turnin 26146 >>Turn in In Defense of the King's Lands
    .target +Captain Rugelfuss
    .goto 48,23.359,74.990
    .turnin 26145 >>Turn in The Trogg Threat
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
    >>Head to the cave north of the Stonesplinter Valley
    >>Kill |cRXP_ENEMY_Shamans|r and |cRXP_ENEMY_Bonesnappers|r
    .complete 26147,1 --|8/8 Stonesplinter Shaman slain
    .complete 26147,2 --|8/8 Stonesplinter Bonesnapper slain
    .mob Stonesplinter Shaman
    .mob Stonesplinter Bonesnapper
step
#xprate <1.3
    >>Go to the very end of the cave and kill |cRXP_ENEMY_Grawmug|r
    .goto 48,34.289,61.146
    .complete 26148,1 --|1/1 Grawmug slain
    .mob Grawmug
step
#xprate <1.3
#requires troggcave1
    .goto 48,23.321,75.013
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rugelfuss|r and |cRXP_FRIENDLY_Captain Wallbang|r
    .turnin 26148 >>Turn in A Decisive Strike
    .accept 26176 >>Accept Onward to Thelsamar
    .target +Captain Rugelfuss
    .goto 48,23.359,74.990
    .turnin 26147 >>Turn in Bigger and Uglier
    .target +Mountaineer Wallbang
    .goto 48,23.298,75.054
step
    .goto 48,33.940,50.955
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >> Get the Thelsamar flight path
    .target Thorgrum Borrelson
step
    .goto 48,35.079,46.663
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Kadrell|r
    .target Mountaineer Kadrell
    .turnin -26176 >>Turn in Onward to Thelsamar
    .accept 26842 >>Accept Out of Gnoll-where
    .accept 13636 >>Accept Stormpike's Orders
step
    #optional
    .maxlevel 20,endOfTheGuide
step
    .goto 48,35.536,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Hearthstove|r
    .home >>Set your Hearthstone to Thelsamar
    .target Innkeeper Hearthstove
step
    .goto 48,34.849,49.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vidra Hearthstove|r
    .target Vidra Hearthstove
    .accept 26860 >>Accept Thelsamar Blood Sausages
step << Paladin
    .goto 48,35.374,48.810
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faldoc Stonefaith|r
    .trainer >> Train your class spells
    .target Faldoc Stonefaith
step << Rogue
    .goto 48,34.935,48.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galda Bronzeblade|r
    .trainer >> Train your class spells
    .target Galda Bronzeblade
step << Mage
    .goto 48,35.012,48.445
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gindle the Green|r
    .trainer >> Train your class spells
    .target Gindle the Green
step << Hunter
    .goto 48,34.553,48.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belda Wildheart|r
    .trainer >> Train your class spells
    .target Belda Wildheart
step << Warrior
    .goto 48,33.951,46.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grendin Swiftaxe|r
    .trainer >> Train your class spells
    .target Grendin Swiftaxe
step << Shaman
    .goto 48,36.596,48.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grenhild Darktalon|r
    .trainer >> Train your class spells
    .target Grenhild Darktalon
step << Warlock
    .goto 48,35.879,46.199
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Solbin Shadowcog|r
    .trainer >> Train your class spells
    .target Solbin Shadowcog
step << Priest
    .goto 48,36.108,45.893
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Baerla|r
    .trainer >> Train your class spells
    .target Priestess Baerla
step
    .goto 48,37.303,46.517
    >>Click the |cRXP_PICK_Wanted!|r poster
    .accept 13648 >>Accept WANTED: The Dark Iron Spy
step
    .goto 48,35.960,44.028
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dakk Blunderblast|r
    .target Dakk Blunderblast
    .accept 25118 >>Accept Looking for Lurkers
step
    #completewith SilverStreamMine
    >>Kill |cRXP_ENEMY_Forest Lurkers|r
    .complete 25118,1 --|8/8 Forest Lurker slain
    .mob Forest Lurker
step
    #completewith SilverStreamMine
    >>Kill |cRXP_ENEMY_Black Bears|r. Loot them for their |cRXP_LOOT_Rump|r
    .complete 26860,1 --|8/8 Bear Rump
    .mob Black Bear
step
    #loop
    .goto 48,26.258,42.477,30,0
    .goto 48,26.888,50.154,30,0
    .goto 48,26.258,42.477,0
    .goto 48,26.888,50.154,0
    >>Kill |cRXP_ENEMY_Mosshide Scouts|r and |cRXP_ENEMY_Mosshide Bashers|r. Loot them for their |cRXP_LOOT_Ears|r
    .complete 26842,1 --|12/12 Mosshide Ear
    .mob Mosshide Basher
    .mob Mosshide Scout
step
    .goto 48,25.444,17.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 13636 >>Turn in Stormpike's Orders
    .accept 26843 >>Accept A Tiny, Clever Commander
    .target Mountaineer Stormpike
step
    .goto 48,26.111,31.575
    >>Kill |cRXP_ENEMY_"Commander" Nazrim|r
    .complete 26843,1 --|1/1 "Commander" Nazrim slain
    .mob "Commander" Nazrim
step
    .goto 48,25.444,17.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 26843 >>Turn in A Tiny, Clever Commander
    .accept 26844 >>Accept Kobold and Kobolder
    .target Mountaineer Stormpike
step
    .goto 48,31.485,13.582,30,0
    .goto 48,35.425,16.773,30,0
    .goto 48,38.607,15.477,30,0
    .goto 48,38.760,13.619,0
    >>Kill |cRXP_ENEMY_Tunnel Rat Surveyors|r and |cRXP_ENEMY_Tunnel Rat Foragers|r
    .complete 26844,1 --|5/5 Tunnel Rat Surveyor slain
    .mob +Tunnel Rat Surveyor
    .complete 26844,2 --|5/5 Tunnel Rat Forager slain
    .mob +Tunnel Rat Forager
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Stormpike|r and |cRXP_FRIENDLY_Scout Dorli|r
    .turnin 26844 >>Turn in Kobold and Kobolder
    .accept 26845 >>Accept Who's In Charge Here?
    .accept 26863 >>Accept Filthy Paws
    .goto 48,25.444,17.963
    .target +Mountaineer Stormpike
    .accept 26846 >>Accept A Nasty Exploit
    .goto 48,25.398,17.793
    .target +Scout Dorli
step
    #label SilverStreamMine
    #completewith ForemanSharpsneer
    .goto 48,35.49,19.13,15 >> Enter the Silver Stream Mine
step
    #sticky
    #label koboldmine1
    #loop
    .goto 48,35.623,20.181,20,0
    .goto 48,36.222,24.255,20,0
    .goto 48,34.854,27.180,20,0
    .goto 48,34.752,26.885,20,0
    .goto 48,35.214,20.966,0
    >>Kill |cRXP_ENEMY_Tunnel Rat Geomancers|r
    >>Open the |cRXP_PICK_Miners' League Crates|r. Loot them for the |cRXP_LOOT_Miners' Gear|r
    .complete 26846,1 --|5/5 Tunnel Rat Geomancer slain
    .mob +Tunnel Rat Geomancer
    .complete 26863,1 --|6/6 Miners' Gear
step
    #label ForemanSharpsneer
    .goto 48,34.752,26.885
    >>|cRXP_WARN_Head to the back of the Silver Stream Mine|r
    >>Kill |cRXP_ENEMY_Foreman Sharpsneer|r. Loot him for his |cRXP_LOOT_Head|r
    .complete 26845,1 --|1/1 Foreman Sharpsneer's Head
    .mob Foreman Sharpsneer
step
    #requires koboldmine1
    #completewith next
    .goto 48,35.49,19.13,15 >> Exit the Silver Stream Mine
step
    #completewith TheBearer
    >>Kill |cRXP_ENEMY_Forest Lurkers|r
    .complete 25118,1 --|8/8 Forest Lurker slain
    .mob Forest Lurker
step
    #completewith TheBearer
    >>Kill |cRXP_ENEMY_Black Bears|r. Loot them for their |cRXP_LOOT_Rump|r
    .complete 26860,1 --|8/8 Bear Rump
    .mob Black Bear
step
    #requires koboldmine1
    #label TheBearer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Stormpike|r and |cRXP_FRIENDLY_Scout Dorli|r
    .turnin 26845 >>Turn in Who's In Charge Here?
    .accept 26864 >>Accept The Bearer of Gnoll-edge
    .turnin 26863 >>Turn in Filthy Paws
    .target +Mountaineer Stormpike
    .goto 48,25.444,17.963
    .turnin 26846 >>Turn in A Nasty Exploit
    .goto 48,25.398,17.793
    .target +Scout Dorli
step
    #completewith next
    >>Kill |cRXP_ENEMY_Forest Lurkers|r
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
    >>Kill |cRXP_ENEMY_Black Bears|r. Loot them for their |cRXP_LOOT_Rump|r
    .complete 26860,1 --|8/8 Bear Rump
    .mob Black Bear
step
    #loop
    .goto 48,33.55,37.43,60,0
    .goto 48,38.94,30.41,60,0
    .goto 48,35.19,27.68,60,0
    .goto 48,27.64,21.20,70,0
    >>Kill |cRXP_ENEMY_Forest Lurkers|r
    .complete 25118,1 --|8/8 Forest Lurker slain
    .mob Forest Lurker
step
    .isOnQuest 26860,25118
    .hs >> Hearth to Thelsemar
    .cooldown item,6948,>2,1
step
    .goto 48,35.969,44.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dakk Blunderblast|r
    .turnin 25118 >>Turn in Looking for Lurkers
    .target Dakk Blunderblast
step
    .goto 48,35.017,46.663
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Kadrell|r
    .turnin 26842 >>Turn in Out of Gnoll-where
    .turnin 26864 >>Turn in The Bearer of Gnoll-edge
    .accept 26927 >>Accept Suddenly, Murlocs!
    .target Mountaineer Kadrell
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cannary Caskshot|r and |cRXP_FRIENDLY_Vidra Hearthstove|r
    .turnin 26927 >>Turn in Suddenly, Murlocs!
    .accept 26928 >>Accept Smells Like A Plan
    .accept 26929 >>Accept A Load of Croc
    .target +Cannary Caskshot
    .goto 48,34.789,49.122
    .turnin 26860 >>Turn in Thelsamar Blood Sausages
    .target +Vidra Hearthstove
    .goto 48,34.827,49.285
step
    #optional
    .maxlevel 20,endOfTheGuide
step << Paladin
    .goto 48,35.374,48.810
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faldoc Stonefaith|r
    .trainer >> Train your class spells
    .target Faldoc Stonefaith
step << Rogue
    .goto 48,34.935,48.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galda Bronzeblade|r
    .trainer >> Train your class spells
    .target Galda Bronzeblade
step << Mage
    .goto 48,35.012,48.445
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gindle the Green|r
    .trainer >> Train your class spells
    .target Gindle the Green
step << Hunter
    .goto 48,34.553,48.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belda Wildheart|r
    .trainer >> Train your class spells
    .target Belda Wildheart
step << Warrior
    .goto 48,33.951,46.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grendin Swiftaxe|r
    .trainer >> Train your class spells
    .target Grendin Swiftaxe
step
    .goto 48,35.079,46.663
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Kadrell|r
    .target Mountaineer Kadrell
    .accept 26932 >>Accept Buzz Off
step << Shaman
    .goto 48,36.596,48.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grenhild Darktalon|r
    .trainer >> Train your class spells
    .target Grenhild Darktalon
step << Warlock
    .goto 48,35.879,46.199
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Solbin Shadowcog|r
    .trainer >> Train your class spells
    .target Solbin Shadowcog
step << Priest
    .goto 48,36.108,45.893
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Baerla|r
    .trainer >> Train your class spells
    .target Priestess Baerla
step
    .goto 48,40.642,58.310,15,0
    .goto 48,39.670,62.104,15,0
    .goto 48,36.796,61.173
    >>Follow the arrow up to the top of Grizzlepaw Ridge
    >>Kill |cRXP_ENEMY_Gorick Guzzledraught|r
    .complete 13648,1 --|1/1 Gorick Guzzledraught slain
    .mob Gorick Guzzledraught
step
    .goto 48,36.752,61.108
    >>Click the |cRXP_PICK_Stolen Explorers' League Document|r inside of the Cave
    .accept 13656>> Accept Explorers' League Document (1 of 6)
step
    #completewith next
    >>Kill |cRXP_ENEMY_Loch Buzzards|r
    >>|cRXP_WARN_Some |cRXP_ENEMY_Loch Buzzards|r can be flying in the air|r
    .complete 26932,1 --|8/8 Loch Buzzard slain
    .mob Loch Buzzard
step
    #loop
    .goto 48,50.790,63.748,60,0
    .goto 48,55.580,56.273,60,0
    .goto 48,59.933,52.441,60,0
    >>Kill |cRXP_ENEMY_Loch Crocolisks|r. Loot them for their |cRXP_LOOT_Intact Crocolisk Jaws|r
    .complete 26929,1 --|6/6 Intact Crocolisk Jaw
    .mob Loch Crocolisk
step
    #loop
    .goto 48,50.790,63.748,60,0
    .goto 48,55.580,56.273,60,0
    .goto 48,59.933,52.441,60,0
    >>Kill |cRXP_ENEMY_Loch Buzzards|r
    >>|cRXP_WARN_Some |cRXP_ENEMY_Loch Buzzards|r can be flying in the air|r
    .complete 26932,1 --|8/8 Loch Buzzard slain
    .mob Loch Buzzard
step
    #completewith next
    >>Kill |cRXP_ENEMY_Bluegill Mudskippers|r and |cRXP_ENEMY_Bluegill Wanderers|r. Loot them for their |cRXP_LOOT_Scent Glands|r
    .complete 26928,1 --|7/7 Murloc Scent Gland
    .mob Bluegill Mudskipper
    .mob Bluegill Wanderer
step
    .goto 48,41.379,38.967
    >>Click the |cRXP_PICK_Stolen Explorers' League Document|r under the bridge
    .accept 13655 >>Accept Explorers' League Document (2 of 6)
step
    #loop
    .goto 48,42.957,39.201,60,0
    .goto 48,46.231,51.109,60,0
    >>Kill |cRXP_ENEMY_Bluegill Mudskippers|r and |cRXP_ENEMY_Bluegill Wanderers|r. Loot them for their |cRXP_LOOT_Scent Glands|r
    .complete 26928,1 --|7/7 Murloc Scent Gland
    .mob Bluegill Mudskipper
    .mob Bluegill Wanderer
step
    .goto 48,34.613,44.539
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Bluntnose|r
    .target Magistrate Bluntnose
    .turnin 13648 >>Turn in WANTED: The Dark Iron Spy
step
    .goto 48,35.079,46.663
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Kadrell|r
    .target Mountaineer Kadrell
    .turnin 26932 >>Turn in Buzz Off
step
    .goto 48,34.789,49.122
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cannary Caskshot|r
    .turnin 26929 >>Turn in A Load of Croc
    .turnin 26928 >>Turn in Smells Like A Plan
    .accept 26868 >>Accept Axis of Awful
    .target Cannary Caskshot
step
    .goto 48,37.200,46.363
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torren Squarejaw|r
    .turnin 13656 >>Turn in Explorers' League Document (1 of 6)
    .turnin 13655 >>Turn in Explorers' League Document (2 of 6)
    .target Torren Squarejaw
step
    #optional
    .maxlevel 20,endOfTheGuide
step
    .isOnQuest 26868
    .use 60681 >> |cRXP_WARN_Open|r |T133639:0|t[Cannary's Cache] |cRXP_WARN_for the|r |T237425:0|t[|cRXP_LOOT_Clever Plant Disguise Kit|r] |cRXP_WARN_and|r |T134839:0|t[|cRXP_LOOT_Potent Murloc Pheromones|r]
    .collect 60502,1,26868,1 -- Clever Plant Disguise Kit (1)
    .collect 60503,1,26868,1 -- Potent Murloc Pheromones (1)
step
    .isOnQuest 26868
    .goto 48,50.585,56.048,85 >> |cRXP_WARN_Travel toward the|r |cRXP_ENEMY_Mosshide Representative|r
step
    .isOnQuest 26868
    .cast 82788 >> |cRXP_WARN_Use the|r |T237425:0|t[|cRXP_LOOT_Clever Plant Disguise Kit|r] |cRXP_WARN_to disguise yourself|r
    .use 60502
step
    .goto 48,50.585,56.048
    >>|cRXP_WARN_Use the|r |T134839:0|t[|cRXP_LOOT_Potent Murloc Pheromones|r] |cRXP_WARN_on the|r |cRXP_ENEMY_Mosshide Representative|r
    >>|cRXP_WARN_This has a 15 yard range|r
    .complete 26868,1 --|1/1 Mosshide Tagged
    .mob Mosshide Representative
    .use 60503
step
    .goto 48,34.789,49.122
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cannary Caskshot|r
    .turnin 26868 >>Turn in Axis of Awful
    .target Cannary Caskshot
step
    .goto 48,36.992,47.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jern Hornhelm|r
    .accept 13639 >>Accept Resupplying the Excavation
    .target Jern Hornhelm
step
    .goto 48,56.353,65.959
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huldar|r
    .target Huldar
    .turnin 13639 >>Turn in Resupplying the Excavation
    .accept 309 >>Accept Protecting the Shipment
step
    .goto 48,56.353,65.959
    >>|cRXP_WARN_Remain at the Caravan and protect |cRXP_FRIENDLY_Huldar|r from the |cRXP_ENEMY_Dark Iron Ambushers|r and|r |cRXP_ENEMY_Saean|r
    .complete 309,1 -- Protect the Ironband Caravan (1)
    .mob Dark Iron Ambusher
    .mob Saean
    .target Huldar
step
    .goto 48,58.183,68.975,20,0
    .goto 48,59.722,72.385,20,0
    .goto 48,61.701,73.181
    >>Click the |cRXP_PICK_Stolen Explorers' League Document|r on the ground
    .accept 13657 >>Accept Explorers' League Document (3 of 6)
step
    .goto 48,64.896,66.659
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magmar Fellhew|r
    .target Magmar Fellhew
    .accept 26961 >>Accept Gathering Idols
step
    .goto 48,65.336,65.979
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironband|r
    .target Prospector Ironband
    .turnin 309 >>Turn in Protecting the Shipment
    .accept 13650 >>Accept Keep Your Hands Off The Goods!
step
    #completewith Artifacts
    >>Kill |cRXP_ENEMY_Stonesplinter Diggers|r and |cRXP_ENEMY_Stonesplinter Geomancers|r. Loot them for their |cRXP_LOOT_Carved Stone Idols|r
    .complete 26961,1 --|8/8 Carved Stone Idol
    .mob Stonesplinter Digger
    .mob Stonesplinter Geomancer
step
    .goto 48,67.610,68.736,20,0
    .goto 48,69.218,66.357,8,0
    .goto 48,68.112,66.143
    >>Click the |cRXP_PICK_Stolen Explorers' League Document|r next to the barrel
    .accept 13658 >>Accept Explorers' League Document (4 of 6)
step
    #label Artifacts
    >>|cRXP_WARN_Explore the Artifacts of the Excavation Site|r
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
    >>Kill |cRXP_ENEMY_Stonesplinter Diggers|r and |cRXP_ENEMY_Stonesplinter Geomancers|r. Loot them for their |cRXP_LOOT_Carved Stone Idols|r
    .complete 26961,1 --|8/8 Carved Stone Idol
    .mob Stonesplinter Digger
    .mob Stonesplinter Geomancer
step
    .goto 48,65.336,65.979
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironband|r
    .target Prospector Ironband
    .turnin 13650 >>Turn in Keep Your Hands Off The Goods!
step
    .goto 48,64.896,66.659
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magmar Fellhew|r
    .target Magmar Fellhew
    .turnin 26961 >>Turn in Gathering Idols
    .accept 13647 >>Accept Joining the Hunt
step
    #completewith next
    .goto 48,69.478,51.742,70,0
    .goto 48,83.597,60.675,40 >> Head to The Farstrider Lodge
    .subzoneskip 147
step
    .goto 48,82.789,63.459
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Safety Warden Pipsy|r
    .target Safety Warden Pipsy
    .accept 27025 >>Accept Thistle While You Work
step
    .goto 48,83.428,65.309
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryl the Youngling|r
    .target Daryl the Youngling
    .accept 27016 >>Accept The Joy of Boar Hunting
step
    .goto 48,81.944,64.505
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vyrin Swiftwind|r
    .target Vyrin Swiftwind
    .home >>Set your Hearthstone to Farstrider Lodge
step
    .goto 48,81.647,64.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bingles Blastenheimer|r
    .target Bingles Blastenheimer
    .accept 27031 >>Accept Wing Nut
step
    .goto 48,81.803,61.735
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marek Ironheart|r
    .target Marek Ironheart
    .turnin 13647 >>Turn in Joining the Hunt
    .accept 27028 >>Accept Hornet Hunting
    .accept 27030 >>Accept Foxtails By The Handful
step
    .goto 48,78.350,69.552,40,0
    .goto 48,77.581,75.929,40,0
    .goto 48,74.254,71.828,40,0
    .goto 48,78.350,69.552,0
    .goto 48,77.581,75.929,0
    .goto 48,74.254,71.828,0
    >>Kill |cRXP_ENEMY_Golden Eagles|r. Loot them for their |cRXP_LOOT_Feathers|r
    .complete 27031,1 --|3/3 Pristine Flight Feather
    .mob Golden Eagle
step
    #completewith doc6
    >>Loot the |cRXP_LOOT_Stabthistle Seeds|r on the ground
    .complete 27025,1 --|6/6 Stabthistle Seed
step
    #completewith doc6
    >>Kill |cRXP_ENEMY_Hill Foxes|r. Loot them for their |cRXP_LOOT_Tails|r
    .complete 27030,1 --|7/7 Fluffy Fox Tail
    .mob Hill Fox
step
    #label doc6
    .goto 48,73.188,35.870
    >>Click the |cRXP_PICK_Stolen Explorers' League Document|r on the ground
    .accept 13659 >>Accept Explorers' League Document (6 of 6)
step
    #completewith next
    >>Loot the |cRXP_LOOT_Stabthistle Seeds|r on the ground
    .complete 27025,1 --|6/6 Stabthistle Seed
step
    #loop
    .goto 48,72.311,40.993,0
    .goto 48,75.992,46.409,40,0
    .goto 48,66.113,37.946,40,0
    .goto 48,72.311,40.993,40,0
    .goto 48,76.495,36.873,40,0
    >>Kill |cRXP_ENEMY_Hill Foxes|r. Loot them for their |cRXP_LOOT_Tails|r
    .complete 27030,1 --|7/7 Fluffy Fox Tail
    .mob Hill Fox
step
    #loop
    .goto 48,72.311,40.993,0
    .goto 48,75.992,46.409,40,0
    .goto 48,66.113,37.946,40,0
    .goto 48,72.311,40.993,40,0
    .goto 48,76.495,36.873,40,0
    >>Loot the |cRXP_LOOT_Stabthistle Seeds|r on the ground
    .complete 27025,1 --|6/6 Stabthistle Seed
step
    #completewith doc5
    >>Kill |cRXP_ENEMY_Mudbelly Boars|r
    .complete 27016,1 --|10/10 Mudbelly Boar slain
    .mob Mudbelly Boar
step
    #completewith doc5
    >>Kill |cRXP_ENEMY_Marsh Hornets|r. Loot them for their |cRXP_LOOT_Wings|r
    .complete 27028,1 --|6/6 Glassy Hornet Wing
    .mob Marsh Hornet
    .mob Marsh Wasp
step
    #label doc5
    .goto 48,53.707,38.109
    >>Click the |cRXP_PICK_Stolen Explorers' League Document|r on the ground
    .accept 13660 >>Accept Explorers' League Document (5 of 6)
step
    #completewith next
    >>Kill |cRXP_ENEMY_Mudbelly Boars|r
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
    >>Kill |cRXP_ENEMY_Marsh Hornets|r. Loot them for their |cRXP_LOOT_Wings|r
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
    >>Kill |cRXP_ENEMY_Mudbelly Boars|r
    .complete 27016,1 --|10/10 Mudbelly Boar slain
    .mob Mudbelly Boar
step
    .isOnQuest 27016,27028,13660,27025,27030,27031
    .hs >> Hearth to Farstrider's Lodge
    .cooldown item,6948,>2,1
step
#requires doc5
    .goto 48,82.789,63.459
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Safety Warden Pipsy|r
    .target Safety Warden Pipsy
    .turnin 27025 >>Turn in Thistle While You Work
    .accept 27026 >>Accept Defcon: Bobcat
step
    .goto 48,83.462,65.333
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryl the Youngling|r
    .target Daryl the Youngling
    .turnin 27016 >>Turn in The Joy of Boar Hunting
step
    .goto 48,81.756,61.661
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marek Ironheart|r
    .target Marek Ironheart
    .turnin 27028 >>Turn in Hornet Hunting
    .turnin 27030 >>Turn in Foxtails By The Handful
step
    .goto 48,81.910,64.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vyrin Swiftwind|r
    .target Vyrin Swiftwind
    .accept 27036 >>Accept Vyrin's Revenge
step
    .goto 48,81.647,64.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bingles Blastenheimer|r
    .target Bingles Blastenheimer
    .turnin 27031 >>Turn in Wing Nut
    .accept 27032 >>Accept Bird is the Word
step
    #optional
    .maxlevel 20,endOfTheGuide
step
    #completewith next
    >>Kill |cRXP_ENEMY_Bobcats|r
    .complete 27026,1
    .mob Bobcat
step
    .goto 48,72.590,72.017,70,0
    .goto 48,71.603,77.167,20 >> Head to the Ironwing Cavern
    .subzoneskip 5391
    .isOnQuest 27032
step
    .isOnQuest 27032
    #completewith next
    .goto 48,78.594,76.215,20 >> |cRXP_WARN_Clear your way to the back of the Cave|r
step
    .goto 48,78.594,76.215
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Rusted Skystrider|r
    .target Rusted Skystrider
    .turnin 27032 >>Turn in Bird is the Word
    .accept 27033 >>Accept Skystrider's Heart
step
    #completewith next
    .goto 48,71.603,77.167,20 >> Exit the Ironwing Cavern
    .subzoneskip 5391,1
    .isOnQuest 27033
step
    #completewith next
    >>Kill |cRXP_ENEMY_Bobcats|r
    .complete 27026,1
    .mob Bobcat
step
    .goto 48,80.158,51.943
    >>Kill |cRXP_ENEMY_Ol' Sooty|r. Loot him for his |cRXP_LOOT_Head|r
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
    >>Kill |cRXP_ENEMY_Bobcats|r
    .complete 27026,1
    .mob Bobcat
step
    .isOnQuest 27026,27036
    .hs >> Hearth to Farstrider's Lodge
    .cooldown item,6948,>2,1
step
    .goto 48,82.789,63.459
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Safety Warden Pipsy|r
    .target Safety Warden Pipsy
    .turnin 27026 >>Turn in Defcon: Bobcat
step
    .goto 48,83.435,65.246
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryl the Youngling|r
    .target Daryl the Youngling
    .turnin 27036 >>Turn in Vyrin's Revenge
    .accept 27037 >>Accept Vyrin's Revenge
step
    .goto 48,81.910,64.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vyrin Swiftwind|r
    .target Vyrin Swiftwind
    .turnin 27037 >>Turn in Vyrin's Revenge
step
#questguide
    .goto 48,81.647,64.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bingles Blastenheimer|r
    .target Bingles Blastenheimer
    .turnin 27033 >>Turn in Skystrider's Heart
    .accept 27034 >>Accept He's That Age
step
    .goto 48,81.647,64.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bingles Blastenheimer|r
    .target Bingles Blastenheimer
    .turnin 27033 >>Turn in Skystrider's Heart
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eeryven Grayer|r
    .goto 48,81.877,64.071
    .fly Thelsamar >>Fly to Thelsamar
    .target Eeryven Grayer
step
    #label end
    .goto 48,37.200,46.363
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torren Squarejaw|r
    .target Torren Squarejaw
    .turnin 13657 >>Turn in Explorers' League Document (3 of 6)
    .turnin 13658 >>Turn in Explorers' League Document (4 of 6)
    .turnin 13660 >>Turn in Explorers' League Document (5 of 6)
    .turnin 13659 >>Turn in Explorers' League Document (6 of 6)
    .accept 13661 >>Accept Heartfelt Appreciation
    .turnin 13661 >>Turn in Heartfelt Appreciation
step
    #optional
    #label endOfTheGuide
step << Paladin
    .goto 48,35.374,48.810
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faldoc Stonefaith|r
    .trainer >> Train your class spells
    .target Faldoc Stonefaith
step << Rogue
    .goto 48,34.935,48.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galda Bronzeblade|r
    .trainer >> Train your class spells
    .target Galda Bronzeblade
step << Mage
    .goto 48,35.012,48.445
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gindle the Green|r
    .trainer >> Train your class spells
    .target Gindle the Green
step << Hunter
    .goto 48,34.553,48.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belda Wildheart|r
    .trainer >> Train your class spells
    .target Belda Wildheart
step << Warrior
    .goto 48,33.951,46.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grendin Swiftaxe|r
    .trainer >> Train your class spells
    .target Grendin Swiftaxe
step << Shaman
    .goto 48,36.596,48.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grenhild Darktalon|r
    .trainer >> Train your class spells
    .target Grenhild Darktalon
step << Warlock
    .goto 48,35.879,46.199
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Solbin Shadowcog|r
    .trainer >> Train your class spells
    .target Solbin Shadowcog
step << Priest
    .goto 48,36.108,45.893
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Baerla|r
    .trainer >> Train your class spells
    .target Priestess Baerla
step
#questguide
    .goto 48,33.938,50.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Farstrider Lodge >> Fly to Farstrider Lodge
    .target Thorgrum Borrelson
step
#questguide
    .goto 48,58.585,29.077
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ando Blastenheimer|r
    .target Ando Blastenheimer
    .turnin 27034 >>Turn in He's That Age
    .accept 27035 >>Accept Standing Up
step
#questguide
    .goto 48,50.532,23.802
    >>Kill |cRXP_ENEMY_Twilight Landshaper|r
    .complete 27035,1 --|1/1 Twilight Landshaper destroyed
    .mob Twilight Landshaper
step
#questguide
    .goto 48,58.551,29.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ando Blastenheimer|r
    .target Ando Blastenheimer
    .turnin 27035 >>Turn in Standing Up
    .accept 27074 >>Accept Fight the Hammer
step
#questguide
    .goto 48,64.085,26.707
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ashlan Stonesmirk|r
    .target Ashlan Stonesmirk
    .turnin 27074 >>Turn in Fight the Hammer
    .accept 27075 >>Accept Servants of Cho'gall
    .accept 27077 >>Accept Clutching at Chaos

step
#questguide
#loop
    .goto 48,67.559,22.273,40,0
    .goto 48,69.705,25.944,40,0
    .goto 48,74.141,20.405,40,0
    .goto 48,71.035,21.294,0
    >>Kill |cRXP_ENEMY_Mo'grosh Ogres|r
    >>Loot the small black spikes scattered on the ground
    .complete 27075,1 --|7/7 Mo'grosh Ogre slain
    .complete 27077,1 --|10/10 Nascent Elementium Spike
    .mob Mo'grosh Earthbender
    .mob Mo'grosh Darkmauler


step
#questguide
    .goto 48,64.049,26.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ashlan Stonesmirk|r
    .target Ashlan Stonesmirk
    .turnin 27075 >>Turn in Servants of Cho'gall
    .turnin 27077 >>Turn in Clutching at Chaos
    .accept 27078 >>Accept Gor'kresh
step
#questguide
    .goto 48,75.212,19.594,20,0
    .goto 48,79.665,14.870
    >>Head towards the back of the cave northeast
    >>Kill |cRXP_ENEMY_Gor'kresh|r
    .complete 27078,1 --|1/1 Gor'kresh slain
    .mob Gor'kresh

step
#questguide
    .goto 48,64.145,26.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ashlan Stonesmirk|r
    .target Ashlan Stonesmirk
    .turnin 27078 >>Turn in Gor'kresh
    .accept 27115 >>Accept Ando's Call
step
#questguide
    .goto 48,58.491,29.051
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ando Blastenheimer|r
    .target Ando Blastenheimer
    .turnin 27115 >>Turn in Ando's Call
    .accept 27116 >>Accept The Winds of Loch Modan
step
#questguide
    .goto 48,25.444,17.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .target Mountaineer Stormpike
    .turnin 27116 >>Turn in The Winds of Loch Modan
    .accept 26137 >>Accept Checking on the Boys
step
#questguide
    .goto 48,25.315,1.591,15,0
    .goto 56,54.873,83.458,15,0
    .zone Wetlands >> Head north to Wetlands
    .isOnQuest 26137
step
#questguide
    .goto 56,49.973,79.288
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Rharen|r
    .target Mountaineer Rharen
    .turnin 26137 >>Turn in Checking on the Boys
    .accept 25395 >>Accept The Stolen Keg
    .accept 25211 >>Accept Cleaning Hovel

--TODO: follow the path to the first quest hub
--fly to gol'bolar quarry (dwarf) or kharanos (gnome)
--buy mount, then fly to SW and do duskwood
]])
