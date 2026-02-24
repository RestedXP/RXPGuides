--Nesting
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#subgroup Profession Knowledge Treasures
#name a) Midnight Profession Knowledge Treasures
#displayname Midnight
#chapters a) Eversong Woods Knowledge;a) Zul'aman Knowledge;a) Harandar Knowledge;a) Voidstorm Knowledge
]])


--Eversong Woods
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Eversong Woods Knowledge
#displayname |cFF1EFF001|r - Eversong Woods Knowledge
#next a) Zul'aman Knowledge
#chapter

step
    .isQuestAvailable 89122
    .goto 2393,50.53,56.58
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Sin'dorei Masterwork Chisel|r in the building.
    .turnin 89122 >>Jewelcrafting Knowledge Treasure
    .train 471011,3
step
    .isQuestAvailable 89127
    .goto 2393,55.45,47.82
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Vintage Soul Gem|r.
    .turnin 89127 >>Jewelcrafting Knowledge Treasure
    .train 471011,3
step
    .isQuestAvailable 89117
    .goto 2393,47.75,51.68
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Pristine Potion|r
    .turnin 89117 >>Alchemy Knowledge Treasure
    .train 471003,3
step
    .isQuestAvailable 89073
    .goto 2393,49.11,75.86
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Songwriter's Pen|r
    .turnin 89073 >>Inscription Knowledge Treasure
    .train 471010,3
step
    .isQuestAvailable 89183
    .goto 2393,49.17,61.36
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Sin'dorei Master's Forgemace|r inside the building.
    .turnin 89183 >>Blacksmithing Knowledge Treasure
    .train 471004,3
step
    .isQuestAvailable 89139
    .goto 2393,51.21,57.26
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_What To Do When Nothing Works|r
    .turnin 89139 >>Engineering Knowledge Treasure
    .train 471007,3
step
    .isQuestAvailable 89171
    .goto 2393,43.14,55.63
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Sin'dorei Tanning Oil|r
    .turnin 89171 >>Skinning Knowledge Treasure
    .train 471014,3
step
    .isQuestAvailable 89096
    .goto 2393,44.77,56.28
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Artisan's Considered Order|r
    .turnin 89096 >>Leatherworking Knowledge Treasure
    .train 471012,3
step
    .isQuestAvailable 89115
    .goto 2393,49.11,75.86
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Freshly Plucked Peacebloom|r
    .turnin 89115 >>Alchemy Knowledge Treasure
    .train 471003,3
step
    .isQuestAvailable 89184
    .goto 2393,48.54,74.38
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Silvermoon Blacksmith's Hammer|r
    .turnin 89184 >>Blacksmithing Knowledge Treasure
    .train 471004,3
step
    .isQuestAvailable 89133
    .goto 2393,51.33,74.46
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_One Engineer's Junk|r
    .turnin 89133 >>Engineering Knowledge Treasure
    .train 471007,3
step
    .isQuestAvailable 89160
    .goto 2393,49.01,75.96
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Simple Leaf Pruners|r.
    .turnin 89160 >>Herbalism Knowledge Treasure
    .train 471009,3
step
    .isQuestAvailable 89079
    .goto 2393,35.78,61.2
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_A Really Nice Curtain|r inside the building.
    .turnin 89079 >>Tailoring Knowledge Treasure
    .train 471015,3
step
    .isQuestAvailable 89178
    .goto 2395,48.37,75.83
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Silvermoon Smithing Kit|r.
    .turnin 89178 >>Blacksmithing Knowledge Treasure
    .train 471004,3
step
    .isQuestAvailable 89069
    .goto 2395,48.32,75.55
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Spare Ink|r
    .turnin 89069 >>Inscription Knowledge Treasure
    .train 471010,3
step
    .isQuestAvailable 89173
    .goto 2395,48.4,76.26
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Thalassian Skinning Knife|r
    .turnin 89173 >>Skinning Knowledge Treasure
    .train 471014,3
step
    .isQuestAvailable 89177
    .goto 2393,26.98,60.28
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Deconstructed Forge Techniques|r inside the building.
    .turnin 89177 >>Blacksmithing Knowledge Treasure
    .train 471004,3
step
    .isQuestAvailable 89079
    .goto 2393,35.78,61.2
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_A Really Nice Curtain|r
    .turnin 89079 >>Tailoring Knowledge Treasure
    .train 471015,3
step
    .isQuestAvailable 89084
    .goto 2393,31.8,68.26
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Particularly Enchanting Tablecloth|r inside the building.
    .turnin 89084 >>Tailoring Knowledge Treasure
    .train 471015,3
step
    .isQuestAvailable 89124
    .goto 2393,28.62,46.4
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Dual-Function Magnifiers|r.
    .turnin 89124 >>Jewelcrafting Knowledge Treasure
    .train 471011,3
step
    .isQuestAvailable 89139
    .goto 2393,51.21,57.26
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_What To Do When Nothing Works|r
    .turnin 89139 >>Engineering Knowledge Treasure
    .train 471007,3
step
    .isQuestAvailable 89139
    .goto 2393,51.21,57.26
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_What To Do When Nothing Works|r
    .turnin 89139 >>Engineering Knowledge Treasure
    .train 471007,3
step
    .isQuestAvailable 89127
    .goto 2393,55.45,47.82
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Vintage Soul Gem|r.
    .turnin 89127 >>Jewelcrafting Knowledge Treasure
    .train 471011,3
step
    .isQuestAvailable 89124
    .goto 2393,28.62,46.4
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Dual-Function Magnifiers|r.
    .turnin 89124 >>Jewelcrafting Knowledge Treasure
    .train 471011,3
step
    .isQuestAvailable 89124
    .goto 2393,28.62,46.4
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Dual-Function Magnifiers|r.
    .turnin 89124 >>Jewelcrafting Knowledge Treasure
    .train 471011,3
step
    .isQuestAvailable 89146
    .goto 2393,49.11,75.86
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Lost Voidstorm Satchel|r
    .turnin 89146 >>Mining Knowledge Treasure
    .train 471013,3
step
    .isQuestAvailable 89107
    .goto 2395,63.5,32.6
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Sin'dorei Enchanting Rod|r
    .turnin 89107 >>Enchanting Knowledge Treasure
    .train 471006,3
step
    .isQuestAvailable 89158
    .goto 2395,64.25,30.47
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_A Spade|r.
    .turnin 89158 >>Herbalism Knowledge Treasure
    .train 471009,3
step
    .isQuestAvailable 89180
    .goto 2395,56.84,40.77
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Metalworkming Cheat Sheet|r inside the building.
    .turnin 89180 >>Blacksmithing Knowledge Treasure
    .train 471004,3
step
    .isQuestAvailable 89125
    .goto 2395,56.63,40.88
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Poorly Rounded Vial|r.
    .turnin 89125 >>Jewelcrafting Knowledge Treasure
    .train 471011,3
step
    .isQuestAvailable 89103
    .goto 2395,60.76,53.01
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Everblazing Sunmote|r
    .turnin 89103 >>Enchanting Knowledge Treasure
    .train 471006,3
step
    .isQuestAvailable 89129
    .goto 2395,39.65,38.83
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Sin'dorei Gem Faceters|r.
    .turnin 89129 >>Jewelcrafting Knowledge Treasure
    .train 471011,3
step
    .goto 2395,40.52,44.28
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Telescope|r.
    .complete 87394,1 --1/1 
step
    .isQuestAvailable 89135
    .goto 2395,39.57,45.81
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Manual of Mistakes and Mishaps|r
    .turnin 89135 >>Engineering Knowledge Treasure
    .train 471007,3
step
    .isQuestAvailable 89147
    .goto 2395,37.99,45.37
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Solid Ore Punchers|r
    .turnin 89147 >>Mining Knowledge Treasure
    .train 471013,3
]])
--Zul'aman
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Zul'aman Knowledge
#displayname |cFF1EFF002|r - Zul'aman Knowledge
#next a) Harandar Knowledge
#chapter

step
    .isQuestAvailable 89149
    .goto 2536,33.31,65.9
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Amani Expert's Chisel|r
    .turnin 89149 >>Mining Knowledge Treasure
    .train 471013,3
step
    .isQuestAvailable 89179 
    .goto 2536,33.19,65.73
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Carefully Racked Spear|r.
    .turnin 89179 >>Blacksmithing Knowledge Treasure
    .train 471004,3
step
    .isQuestAvailable 89167
    .goto 2536,44.93,45.19
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Cadre Skinning Knife|r
    .turnin 89167 >>Skinning Knowledge Treasure
    .train 471014,3
step
    .isQuestAvailable 89092
    .goto 2536,45.31,45.58
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bundle of Tanner's Trinkets|r
    .turnin 89092 >>Leatherworking Knowledge Treasure
    .train 471012,3
step
    .isQuestAvailable 89138
    .goto 2536,65.15,34.76
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Offline Helper Bot|r
    .turnin 89138 >>Engineering Knowledge Treasure
    .train 471007,3
step
    .isQuestAvailable 89100
    .goto 2536,48.78,22.5
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Enchanted Amani Mask|r
    .turnin 89100 >>Enchanting Knowledge Treasure
    .train 471006,3
step
    .isQuestAvailable 89116
    .goto 2536,49.09,23.15
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Measured Ladle|r
    .turnin 89116 >>Alchemy Knowledge Treasure
    .train 471003,3
step
    .isQuestAvailable 89085
    .goto 2437,40.53,49.37
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Artisan's Cover Comb|r in the cave.
    .turnin 89085 >>Tailoring Knowledge Treasure
    .train 471015,3
step
    .isQuestAvailable 89106
    .goto 2437,40.42,51.18
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Loa-Blessed Dust|r
    .turnin 89106 >>Enchanting Knowledge Treasure
    .train 471006,3
step
    .isQuestAvailable 89114
    .goto 2437,40.39,51.18
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Vial of Zul'Aman Oddities|r
    .turnin 89114 >>Alchemy Knowledge Treasure
    .train 471003,3
step
    .isQuestAvailable 89068
    .goto 2437,40.49,49.35
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Leather-Bound Techniques|r
    .turnin 89068 >>Inscription Knowledge Treasure
    .train 471010,3
step
    .isQuestAvailable 89149
    .goto 2536,33.31,65.9
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Amani Expert's Chisel|r
    .turnin 89149 >>Mining Knowledge Treasure
    .train 471013,3
step
    .isQuestAvailable 89170
    .goto 2437,40.4,36.02
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Amani Tanning Oil|r
    .turnin 89170 >>Skinning Knowledge Treasure
    .train 471014,3
step
    .isQuestAvailable 89089
    .goto 2437,33.08,78.91
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Amani Leatherworker's Tool|r in the cave.
    .turnin 89089 >>Leatherworking Knowledge Treasure
    .train 471012,3
step
    .isQuestAvailable 89172
    .goto 2437,33.08,79.07
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Amani Skinning Knife|r in the cave.
    .turnin 89172 >>Skinning Knowledge Treasure
    .train 471014,3
step
    .isQuestAvailable 89091
    .goto 2437,30.76,84
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Prestigiously Racked Hide|r in the building.
    .turnin 89091 >>Leatherworking Knowledge Treasure
    .train 471012,3
step
    .isQuestAvailable 89140
    .goto 2437,34.21,87.81
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Handy Wrench|r
    .turnin 89140 >>Engineering Knowledge Treasure
    .train 471007,3
]])
--Harandar
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Harandar Knowledge
#displayname |cFF1EFF003|r - Harandar Knowledge
#next a) Voidstorm Knowledge
#chapter


step
    .isQuestAvailable 89095
    .goto 2413,36.11,25.18
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Haranir Leatherworking Knife|r
    .turnin 89095 >>Leatherworking Knowledge Treasure
    .train 471012,3
step
    .isQuestAvailable 89113
    .goto 2413,34.78,24.71
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Vial of Rootlands Oddities|r
    .turnin 89113 >>Alchemy Knowledge Treasure
    .train 471003,3
step
    .isQuestAvailable 89159
    .goto 2413,36.67,25.06
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Lightbloom Root|r.
    .turnin 89159 >>Herbalism Knowledge Treasure
    .train 471009,3
step
    .isQuestAvailable 89094
    .goto 2413,51.7,51.32
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Haranir Leatherworking Mallet|r
    .turnin 89094 >>Leatherworking Knowledge Treasure
    .train 471012,3
step
    .isQuestAvailable 89155
    .goto 2413,51.12,55.7
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Planting Shovel|r.
    .turnin 89155 >>Herbalism Knowledge Treasure
    .train 471009,3
step
    .isQuestAvailable 89182
    .goto 2413,66.35,50.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rutaani Floratender's Sword|r on the mushroom.
    .turnin 89182 >>Blacksmithing Knowledge Treasure
    .train 471004,3
step
    .isQuestAvailable 89081
    .goto 2413,69.76,51.05
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Wooden Weaving Sword|r
    .turnin 89081 >>Tailoring Knowledge Treasure
    .train 471015,3
step
    .isQuestAvailable 89078
    .goto 2413,70.57,50.91
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_A Child's Stuffy|r in the building.
    .turnin 89078 >>Tailoring Knowledge Treasure
    .train 471015,3
step
    .isQuestAvailable 89105
    .goto 2413,65.73,50.2
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Primal Essence Shard|r
    .turnin 89105 >>Enchanting Knowledge Treasure
    .train 471006,3
step
    .isQuestAvailable 89157
    .goto 2413,76.14,51.06
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Harvester's Sickle|r.
    .turnin 89157 >>Herbalism Knowledge Treasure
    .train 471009,3
step
    .isQuestAvailable 89168
    .goto 2413,69.53,49.18
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Primal Hide|r in the cave.
    .turnin 89168 >>Skinning Knowledge Treasure
    .train 471014,3
step
    .isQuestAvailable 89166
    .goto 2413,76.08,51.08
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Lightbloom Afflicted Hide|r
    .turnin 89166 >>Skinning Knowledge Treasure
    .train 471014,3
step
    .isQuestAvailable 89104
    .goto 2413,37.75,65.24
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Entropic Shard|r
    .turnin 89104 >>Enchanting Knowledge Treasure
    .train 471006,3
step
    .isQuestAvailable 89162
    .goto 2413,38.33,67.06
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bloomed Bud|r.
    .turnin 89162 >>Herbalism Knowledge Treasure
    .train 471009,3
step
    .isQuestAvailable 89151
    .goto 2413,38.85,65.87
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Spare Expedition Torch|r
    .turnin 89151 >>Mining Knowledge Treasure
    .train 471013,3
]])
--Voidstorm
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#name a) Voidstorm Knowledge
#displayname |cFF1EFF004|r - Voidstorm Knowledge
#chapter

step
    .isQuestAvailable 89102
    .goto 2405,35.47,58.83
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Pure Void Crystal|r
    .turnin 89102 >>Enchanting Knowledge Treasure
    .train 471006,3
step
    .isQuestAvailable 89156
    .goto 2405,34.68,56.97
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Peculiar Lotus|r.
    .turnin 89156 >>Herbalism Knowledge Treasure
    .train 471009,3
step
    .isQuestAvailable 89181
    .goto 2444,30.52,69.01
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Voidstorm Defense Spear|r inside the building.
    .turnin 89181 >>Blacksmithing Knowledge Treasure
    .train 471004,3
step
    .isQuestAvailable 89093
    .goto 2444,53.75,51.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Patterns: Beyond the Void|r in the building.
    .turnin 89093 >>Leatherworking Knowledge Treasure
    .train 471012,3
step
    .isQuestAvailable 89090
    .goto 2405,34.72,56.93
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ethereal Leatherworking Knife|r.
    .turnin 89090 >>Leatherworking Knowledge Treasure
    .train 471012,3
step
    .isQuestAvailable 89083
    .goto 2444,61.4,85.12
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Satin Throw Pillow|r in the building.
    .turnin 89083 >>Tailoring Knowledge Treasure
    .train 471015,3
step
    .isQuestAvailable 89092
    .goto 2444,62.01,83.53
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Book of Sin'dorei Stitches|r in the building.
    .turnin 89092 >>Tailoring Knowledge Treasure
    .train 471015,3
step
    .isQuestAvailable 89112
    .goto 2444,41.97,40.61
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Vial of Voidstorm Oddities|r
    .turnin 89112 >>Alchemy Knowledge Treasure
    .train 471003,3
step
    .isQuestAvailable 89067
    .goto 2444,60.7,84.27
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Void-Touched Quill|r in the building.
    .turnin 89067 >>Inscription Knowledge Treasure
    .train 471010,3
step
    .isQuestAvailable 89150
    .goto 2405,41.84,38.23
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Star Metal Deposit|r
    .turnin 89150 >>Mining Knowledge Treasure
    .train 471013,3
step
    .isQuestAvailable 89144
    .goto 2444,30.48,69.08
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Miner's Guide to Voidstorm|r
    .turnin 89144 >>Mining Knowledge Treasure
    .train 471013,3
step
    .isQuestAvailable 89148
    .goto 2444,28.76,38.57
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Glimmering Void Pearl|r
    .turnin 89148 >>Mining Knowledge Treasure
    .train 471013,3

step
    .isQuestAvailable 89146
    .goto 2444,54.24,51.61
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Lost Voidstorm Satchel|r
    .turnin 89146 >>Skinning Knowledge Treasure
    .train 471014,3
]])