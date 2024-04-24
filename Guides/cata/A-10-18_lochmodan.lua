local _,addon = ...
if addon.game ~= "CATA" or addon.player.faction ~= 'Alliance' then return end

RXPGuides.RegisterGuide([[

#version 1
#group RXP Cataclysm 1-80 (A)
#cata
#name 10-20 Loch Modan
#displayname 10-18 Loch Modan
#next 15-20 Redridge
#defaultfor Human/Dwarf/Gnome

<<Alliance


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
    .goto 48,23.359,74.990
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rugelfuss|r
    .target Captain Rugelfuss
    .turnin 26146 >>Turn in In Defense of the King's Lands
    .accept 26148 >>Accept A Decisive Strike
    .turnin 26145 >>Turn in The Trogg Threat
    .accept 26147 >>Accept Bigger and Uglier


step
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
    >>Go to the very end of the cave and kill |cRXP_ENEMY_Grawmug|r
    .goto 48,34.289,61.146
    .complete 26148,1 --|1/1 Grawmug slain
    .mob Grawmug
step
#requires troggcave1
    .goto 48,23.321,75.013
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Wallbang|r
    .target Mountaineer Wallbang
    .turnin 26147 >>Turn in Bigger and Uglier
    .turnin 26148 >>Turn in A Decisive Strike
    .accept 26176 >>Accept Onward to Thelsamar

step
    .goto 48,35.079,46.663
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Kadrell|r
    .target Mountaineer Kadrell
    .turnin 26176 >>Turn in Onward to Thelsamar
    .accept 26842 >>Accept Out of Gnoll-where
    .accept 13636 >>Accept Stormpike's Orders
step
    .goto 48,35.503,48.359
    .home >>Set your Hearthstone to Thelsamar
step
    .goto 48,34.849,49.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vidra Hearthstove|r 
    .target Vidra Hearthstove
    .accept 26860 >>Accept Thelsamar Blood Sausages
step
    .goto 48,35.911,44.437
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dakk Blunderblast|r 
    .target Dakk Blunderblast
    .accept 25118 >>Accept Looking for Lurkers
step
    .goto 48,37.229,46.402
    .accept 13648 >>Accept WANTED: The Dark Iron Spy

step
#completewith sausage1
    >>Kill |cRXP_ENEMY_Forest Lurkers|r and |cRXP_ENEMY_Black Bears|r as you quest
    >>Loot the bears for |T237350:0|t[Bear Rump]
    .complete 25118,1 --|8/8 Forest Lurker slain
    .mob Forest Lurker
    .complete 26860,1 --|8/8 Bear Rump

step
#loop
    .goto 48,26.258,42.477,30,0
    .goto 48,26.888,50.154,30,0
    .goto 48,26.258,42.477,0
    .goto 48,26.888,50.154,0
    >>Kill |cRXP_ENEMY_Mosshide Gnolls|r
    .complete 26842,1 --|12/12 Mosshide Ear
    .mob Mosshide Basher
    .mob Mosshide Scout
step
    .goto 48,25.557,18.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .target Mountaineer Stormpike
    .turnin 13636 >>Turn in Stormpike's Orders
    .accept 26843 >>Accept A Tiny, Clever Commander

step
    .goto 48,26.111,31.575
    .complete 26843,1 --|1/1 "Commander" Nazrim slain
    .mob "Commander" Nazrim
step
    .goto 48,25.444,17.857
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .target Mountaineer Stormpike
    .turnin 26843 >>Turn in A Tiny, Clever Commander
    .accept 26844 >>Accept Kobold and Kobolder

step
    .goto 48,31.485,13.582,30,0
    .goto 48,35.425,16.773,30,0
    .goto 48,38.607,15.477,30,0
    .goto 48,38.760,13.619,0
    >>Kill |cRXP_ENEMY_Surveyors|r and |cRXP_ENEMY_Foragers|r
    .complete 26844,1 --|5/5 Tunnel Rat Surveyor slain
    .complete 26844,2 --|5/5 Tunnel Rat Forager slain
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Surveyor

step
#label sausage1
    .goto 48,25.522,17.747
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .target Mountaineer Stormpike
    .turnin 26844 >>Turn in Kobold and Kobolder
    .accept 26845 >>Accept Who's In Charge Here?
    .accept 26863 >>Accept Filthy Paws
    .accept 26846 >>Accept A Nasty Exploit
step
#sticky
#label koboldmine1
#loop
    .goto 48,35.623,20.181,20,0
    .goto 48,36.222,24.255,20,0
    .goto 48,34.854,27.180,20,0
    .goto 48,34.752,26.885,20,0
    .goto 48,35.214,20.966,0
    >>Loot the |cRXP_PICK_wooden crates|r inside the mine
    >>Kill |cRXP_ENEMY_Tunnel Rat Geomancers|r
    .complete 26846,1 --|5/5 Tunnel Rat Geomancer slain
    .complete 26863,1 --|6/6 Miners' Gear
    .mob Tunnel Rat Geomancer
step
    .goto 48,34.752,26.885
    >>Dive deep into the mine tunnel and kill and loot |cRXP_ENEMY_Foreman Sharpsneer|r
    .complete 26845,1 --|1/1 Foreman Sharpsneer's Head
    .unitscan Foreman Sharpsneer
step
#requires koboldmine1
    .goto 48,25.541,17.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .target Mountaineer Stormpike
    .turnin 26845 >>Turn in Who's In Charge Here?
    .accept 26864 >>Accept The Bearer of Gnoll-edge
    .turnin 26863 >>Turn in Filthy Paws
    .turnin 26846 >>Turn in A Nasty Exploit
step
#loop
    .goto 48,27.649,21.203,40,0
    .goto 48,33.193,31.069,40,0
    .goto 48,35.295,39.016,40,0
    .goto 48,27.649,21.203,0
    .goto 48,33.193,31.069,0
    .goto 48,35.295,39.016,0

    >>Kill |cRXP_ENEMY_Forest Lurkers|r and |cRXP_ENEMY_Black Bears|r
    >>Loot the bears for |T237350:0|t[Bear Rump]
    .complete 25118,1 --|8/8 Forest Lurker slain
    .mob Forest Lurker
    .complete 26860,1 --|8/8 Bear Rump
--TODO: Maybe Hearth here? tbd
step
    .goto 48,35.969,44.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dakk Blunderblast|r
    .target Dakk Blunderblast
    .turnin 25118 >>Turn in Looking for Lurkers
step
    .goto 48,35.017,46.663
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Kadrell|r
    .target Mountaineer Kadrell
    .turnin 26842 >>Turn in Out of Gnoll-where
    .turnin 26864 >>Turn in The Bearer of Gnoll-edge
    .accept 26927 >>Accept Suddenly, Murlocs!
step
    .goto 48,34.913,49.013
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cannary Caskshot|r
    .target Cannary Caskshot
    .turnin 26927 >>Turn in Suddenly, Murlocs!
    .accept 26928 >>Accept Smells Like A Plan
    .accept 26929 >>Accept A Load of Croc
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vidra Hearthstove|r
    .target Vidra Hearthstove
    .turnin 26860 >>Turn in Thelsamar Blood Sausages
step
    .goto 48,35.058,46.632
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Kadrell|r 
    .target Mountaineer Kadrell
    .accept 26932 >>Accept Buzz Off
step
#label gorick
#sticky
    .goto 48,40.642,58.310,15,0
    .goto 48,39.670,62.104,15,0
    .goto 48,36.796,61.173
    >>Climb to the top of Grizzlepaw Ridge and kill |cRXP_ENEMY_Gorick Guzzledraught|r
    .complete 13648,1 --|1/1 Gorick Guzzledraught slain
    .mob Gorick Guzzledraught
step
    .goto 48,36.752,61.108
    >>Click on the small scroll located inside the cave at the top of the hill
    .accept 13656>> Accept Explorers' League Document (1 of 6)


step
#requires gorick
    .goto 48,50.790,63.748,40,0
    .goto 48,55.580,56.273,40,0
    .goto 48,59.933,52.441,40,0
    .goto 48,50.790,63.748,0
    .goto 48,55.580,56.273,0
    .goto 48,59.933,52.441,0
    >>Kill |cRXP_ENEMY_Loch Crocolisks|r and loot them for |cRXP_LOOT_Intact Crocolisk Jaw|r
    >>Kill |cRXP_ENEMY_Loch Buzzard|r, most of them are flying up in the sky, use a ranged ability to pull them down
    .complete 26932,1 --|8/8 Loch Buzzard slain
    .complete 26929,1 --|6/6 Intact Crocolisk Jaw
    .mob Loch Buzzard
    .mob Loch Crocolisk
step
#label scroll2
#sticky
    .goto 48,41.351,39.019
    >>Click on the small scroll under the bridge, between the 2 support columns
    .accept 13655 >>Accept Explorers' League Document (2 of 6)
step
    .goto 48,46.231,51.109,0
    .goto 48,42.957,39.201,0
    .goto 48,42.957,39.201,40,0
    .goto 48,46.231,51.109,40,0
    >>Kill |cRXP_ENEMY_Scouts|r and |cRXP_ENEMY_Wanderers|r loot them for their |cRXP_LOOT_Scent Glands|r
    .complete 26928,1 --|7/7 Murloc Scent Gland
    .mob Bluegill Scout
    .mob Bluegill Wanderer
step
    .goto 48,35.191,46.577
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Kadrell|r
    .target Mountaineer Kadrell
    .turnin 26932 >>Turn in Buzz Off
step
    .goto 48,34.613,44.539
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Bluntnose|r
    .target Magistrate Bluntnose
    .turnin 13648 >>Turn in WANTED: The Dark Iron Spy
step
    .goto 48,34.861,49.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cannary Caskshot|r
    .target Cannary Caskshot
    .turnin 26929 >>Turn in A Load of Croc
    .turnin 26928 >>Turn in Smells Like A Plan
    .accept 26868 >>Accept Axis of Awful
step
    .goto 48,50.428,56.633
    >>Open the |T133639:0|t[Cannary's Cache]
    >>Use the |T237425:0|t[Clever Plant Disguise Kit] to get close to the |cRXP_ENEMY_Mosshide Representative|r
    >>Once you get close, use the |T134839:0|t[Potent Murloc Pheromones] to tag it
    .complete 26868,1 --|1/1 Mosshide Tagged
    .mob Mosshide Representative
    .use 60681
    .use 60502
    .use 60503
step
    .goto 48,34.840,49.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cannary Caskshot|r
    .target Cannary Caskshot
    .turnin 26868 >>Turn in Axis of Awful

step
    .goto 48,37.238,47.478
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torren Squarejaw|r
    .target Torren Squarejaw
    .turnin 13656 >>Turn in Explorers' League Document (1 of 6)
    .turnin 13655 >>Turn in Explorers' League Document (2 of 6)
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jern Hornhelm|r 
    .target Jern Hornhelm
    .accept 13639 >>Accept Resupplying the Excavation
step
    .goto 48,56.353,65.959
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huldar|r
    .target Huldar
    .turnin 13639 >>Turn in Resupplying the Excavation
    .accept 309 >>Accept Protecting the Shipment
step
    .goto 48,56.353,65.959
    >>Protect the caravan from the incoming enemies, then defeat |cRXP_ENEMY_Saean|r on the last wave
    .complete 309,1
    .mob Saean
step
    .goto 48,58.183,68.975,20,0
    .goto 48,59.722,72.385,20,0
    .goto 48,61.686,73.166
    >>Click on the small scroll next to the wooden crate
    .accept 13657 >>Accept Explorers' League Document (3 of 6)
step
    .goto 48,64.807,66.525
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magmar Fellhew|r 
    .target Magmar Fellhew
    .accept 26961 >>Accept Gathering Idols
step
    .goto 48,65.282,65.939
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironband|r
    .target Prospector Ironband
    .turnin 309 >>Turn in Protecting the Shipment
    .accept 13650 >>Accept Keep Your Hands Off The Goods!

step
#label doc4
#sticky
    .goto 48,67.610,68.736,20,0
    .goto 48,69.218,66.357,8,0
    .goto 48,68.122,66.036
    >>Click on the small scroll next to the wooden barrel
    .accept 13658 >>Accept Explorers' League Document (4 of 6)
step
#loop
    >>Visit the 3 artifacts around the digsite
    >>Kill and loot |cRXP_ENEMY_Troggs|r for their |cRXP_LOOT_Carved Stone Idols|r
    .complete 13650,1 --|1/1 Artifact of the Broken Tablet Inspected
    .goto 48,70.696,67.524
    .complete 13650,3 --|1/1 Artifact of the Overdressed Woman Inspected
    .goto 48,72.759,65.494
    .complete 13650,2 --|1/1 Artifact of the Upturned Giant Inspected
    .goto 48,70.111,59.987
    .complete 26961,1 --|8/8 Carved Stone Idol
    .goto 48,69.037,59.360,40,0
    .goto 48,70.633,67.770,40,0
    .mob Stonesplinter Digger
    .mob Stonesplinter Geomancer
step
#requires doc4
    .goto 48,65.298,66.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironband|r
    .target Prospector Ironband
    .turnin 13650 >>Turn in Keep Your Hands Off The Goods!
step
    .goto 48,64.943,66.597
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
    .goto 48,82.824,63.414
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Safety Warden Pipsy|r 
    .target Safety Warden Pipsy
    .accept 27025 >>Accept Thistle While You Work
step
    .goto 48,81.803,61.735
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marek Ironheart|r
    .target Marek Ironheart
    .turnin 13647 >>Turn in Joining the Hunt
    .accept 27028 >>Accept Hornet Hunting
    .accept 27030 >>Accept Foxtails By The Handful
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
    .goto 48,81.678,64.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bingles Blastenheimer|r 
    .target Bingles Blastenheimer
    .accept 27031 >>Accept Wing Nut

step
    .goto 48,77.978,73.633
    .complete 27031,1 --|3/3 Pristine Flight Feather
step
    .goto 48,78.350,69.552,40,0
    .goto 48,77.581,75.929,40,0
    .goto 48,74.254,71.828,40,0
    .goto 48,78.350,69.552,0
    .goto 48,77.581,75.929,0
    .goto 48,74.254,71.828,0
    >>Kill and loot |cRXP_ENEMY_Golden Eagle|r
    .complete 27031,1 --|3/3 Pristine Flight Feather
    .mob Golden Eagle
step
#sticky
#label doc6
    .goto 48,73.188,35.870
    >>Loot the small scroll next to the stone monument
    .accept 13659 >>Accept Explorers' League Document (6 of 6)
step
#loop
    .goto 48,72.311,40.993,0
    .goto 48,75.992,46.409,40,0
    .goto 48,66.113,37.946,40,0
    .goto 48,72.311,40.993,40,0
    .goto 48,76.495,36.873,40,0
    >>Kill |cRXP_ENEMY_Hill Foxes|r and loot their |cRXP_LOOT_tails|r
    >>Loot the big spiky seeds next to the trees around the area
    .complete 27030,1 --|7/7 Fluffy Fox Tail
    .complete 27025,1 --|6/6 Stabthistle Seed
step
#sticky
#label doc5
    .goto 48,53.703,38.173
    >>Click the small scroll next the 3 small trees
    .accept 13660 >>Accept Explorers' League Document (5 of 6)
step
#loop
    .goto 48,52.298,39.499,40,0
    .goto 48,56.479,31.679,40,0
    .goto 48,58.179,44.704,40,0  
    .goto 48,52.298,39.499,0
    .goto 48,56.479,31.679,0
    .goto 48,58.179,44.704,0
    >>Kill |cRXP_ENEMY_Mudbelly Boars|r
    >>Kill |cRXP_ENEMY_Marsh Hornets|r and loot their |cRXP_LOOT_Wings|r
    .complete 27016,1 --|10/10 Mudbelly Boar slain
    .mob +Mudbelly Boar
    .complete 27028,1 --|6/6 Glassy Hornet Wing
    .mob +Marsh Hornet
    .mob +Marsh Wasp
step
#requires doc5
    #completewith next
    .hs >> Hearth to Farstrider's Lodge
step
#requires doc5
    .goto 48,82.758,63.695
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
    .goto 48,81.810,61.814
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marek Ironheart|r
    .target Marek Ironheart
    .turnin 27028 >>Turn in Hornet Hunting
    .turnin 27030 >>Turn in Foxtails By The Handful
step
    .goto 48,81.937,64.479
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vyrin Swiftwind|r 
    .target Vyrin Swiftwind
    .accept 27036 >>Accept Vyrin's Revenge
step
    .goto 48,81.777,64.602
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bingles Blastenheimer|r
    .target Bingles Blastenheimer
    .turnin 27031 >>Turn in Wing Nut
    .accept 27032 >>Accept Bird is the Word
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
    .goto 48,78.594,76.215
    >>Head towards the back of the cave
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rusted Skystrider|r
    .target Rusted Skystrider
    .turnin 27032 >>Turn in Bird is the Word
    .accept 27033 >>Accept Skystrider's Heart
--TODO: Test logout skip

step
#label olsooty
#sticky
    .goto 48,80.158,51.943
    >>Kill and loot |cRXP_ENEMY_Ol' Sooty|r
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
#requires olsooty
    .goto 48,82.657,63.364
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
    .goto 48,82.007,64.553
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vyrin Swiftwind|r
    .target Vyrin Swiftwind
    .turnin 27037 >>Turn in Vyrin's Revenge
step
#questguide
    .goto 48,81.702,64.687
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bingles Blastenheimer|r
    .target Bingles Blastenheimer
    .turnin 27033 >>Turn in Skystrider's Heart
    .accept 27034 >>Accept He's That Age
step
    .goto 48,81.702,64.687
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bingles Blastenheimer|r
    .target Bingles Blastenheimer
    .turnin 27033 >>Turn in Skystrider's Heart
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eeryven Grayer|r
.target Eeryven Grayer
    .goto 1432/0,-4255.70020,-5667.39990
    .fly Thelsamar >>Fly to Thelsamar
step
    .goto 48,37.228,47.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torren Squarejaw|r
    .target Torren Squarejaw
    .turnin 13657 >>Turn in Explorers' League Document (3 of 6)
    .turnin 13658 >>Turn in Explorers' League Document (4 of 6)
    .turnin 13659 >>Turn in Explorers' League Document (6 of 6)
    .turnin 13660 >>Turn in Explorers' League Document (5 of 6)
    .turnin 13661 >>Turn in Heartfelt Appreciation
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
    .goto 48,25.513,17.887
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