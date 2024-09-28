RXPGuides.RegisterGuide([[
#cata
#version 1
#group +The Molten Front
#name A_1_TMF_Start
#next B_1_TSOM_Start
#displayname |cRXP_LOOT_1.0|r - The Invasion

step
    #completewith OpeningtheDoor
	.zone 85 >> Travel to Orgrimmar << Horde
	.zone 84 >> Travel to Stormwind << Alliance
	.zoneskip 198
step
    #completewith OpeningtheDoor
    .goto 85,51.000,38.221 << Horde
    .goto 84,76.178,18.695 << Alliance
	.zone 198 >> Take the Portal to Hyjal
step
    #label OpeningtheDoor
    .goto 198/1,-2082.800,4424.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r 
    .target Matoclaw
    .accept 29145 >>Accept Opening the Door
step
    .goto 198/1,-2079.100,4653.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Hamuul Runetotem|r
    .target Arch Druid Hamuul Runetotem
    .turnin 29145 >>Turn in Opening the Door
    .accept 29195 >>Accept A Ritual of Flame
step
    .goto 198/1,-2092.900,4621.800
    >>Kill |cRXP_ENEMY_Charred Invaders|r until your progress bar completes. This will cause |cRXP_ENEMY_Leyara|r to then come through the portal
    >>Kill |cRXP_ENEMY_Leyara|r
    >>|cRXP_WARN_You don't need to get the tag on her|r
    .complete 29195,1 -- Open the portal to the Firelands (1)
    .mob Charred Invader
    .mob Leyara
step
    .goto 198/1,-2092.900,4621.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malfurion Stormrage|r
    .target Malfurion Stormrage
    .turnin 29195 >>Turn in A Ritual of Flame
    .accept 29196 >>Accept To the Sanctuary!
step
    .goto 198/1,-2082.800,4424.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .turnin 29196 >>Turn in To the Sanctuary!
    .accept 29197 >>Accept Caught Unawares
step
    .goto 198/1,-1980.300,4628.000
    >>Kill the |cRXP_ENEMY_Raging Invaders|r near |cRXP_FRIENDLY_Thisalee Crow|r
    .complete 29197,2 --|Kill elementals near Thisalee: 6/6
    .mob Raging Invader
    .target Thisalee Crow
step
    .goto 198/1,-2373.900,4560.100
    >>Kill the |cRXP_ENEMY_Raging Invaders|r near |cRXP_FRIENDLY_Elderlimb|r
    .complete 29197,1 --|Kill elementals near Elderlimb: 6/6
    .mob Raging Invader
    .target Elderlimb
step
    .goto 198/1,-2699.000,4584.200
    >>Kill the |cRXP_ENEMY_Raging Invaders|r near |cRXP_FRIENDLY_Tholo|r and |cRXP_FRIENDLY_Anren|r
    .complete 29197,3 --|Kill elementals near Tholo and Anren: 6/6
    .mob Raging Invader
    .target Tholo
    .target Anren
step
    .goto 198/1,-2082.200,4423.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Hamuul Runetotem|r
    .target Arch Druid Hamuul Runetotem
    .turnin 29197 >>Turn in Caught Unawares
    .accept 29198 >>Accept The Sanctuary Must Not Fall
step
    .goto 198/1,-2080.200,4421.700
    >>|cRXP_WARN_Wait out the RP|r
    .complete 29198,1
step
    .goto 198/1,-2080.200,4421.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malfurion Stormrage|r
    .target Malfurion Stormrage
    .turnin 29198 >>Turn in The Sanctuary Must Not Fall
step
    .goto 198/1,-2080.200,4417.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Hamuul Runetotem|r 
    .target Arch Druid Hamuul Runetotem
    .accept 29199 >>Accept Calling for Reinforcements
step
    .goto 198/1,-2082.700,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r 
    .target Matoclaw
    .daily 29123,29149,29127,29163,29166 >>Accept whichever random daily quest is offered
step
    #loop
    .goto 198,27.108,62.009,5,0
    .goto 198,27.170,62.563,5,0
    +Talk to |cRXP_FRIENDLY_Matoclaw|r or |cRXP_FRIENDLY_Mylune|r and accept whichever daily quest is available
    .questcount <1,29125,29147,29164,29101,29161
    .target Matoclaw
    .target Mylune
step
    .isOnQuest 29166
    #completewith KillNemesis
    >>Loot the |cRXP_LOOT_Blueroot Vines|r on the ground
    .complete 29166,1
step
    .isOnQuest 29123
    #completewith KillNemesis
    >>Kill the |cRXP_ENEMY_Invaders from the Firelands|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #completewith KillNemesis
    >>Kill the |cRXP_ENEMY_Invaders from the Firelands|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #completewith KillNemesis
    >>Kill the |cRXP_ENEMY_Invaders from the Firelands|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #completewith KillNemesis
    >>Kill the |cRXP_ENEMY_Invaders from the Firelands|r
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
    >>Click on a |cRXP_FRIENDLY_Child of Tortolla|r
    >>|cRXP_WARN_Aim towards the water and cast|r |T132219:0|t[Punt Turtle] |cRXP_WARN_(1)|r
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
    >>Kill the |cRXP_ENEMY_Invaders from the Firelands|r
    .use 69235 >> |cRXP_WARN_Use the|r |T134298:0|t[Fang of the Wolf] |cRXP_WARN_on their corpses|r
    .complete 29164,1 -- Howl atop an invader's corpse (10)
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29147
    #completewith next
    .cast 97241 >> |cRXP_WARN_Use the|r |T135992:0|t[Quill of the Bird-Queen] |cRXP_WARN_to transform into the|r |cRXP_FRIENDLY_Wings of Aviana|r
    .use 69234
step
    .isOnQuest 29147
    #loop
    .goto 198,14.90,45.11,80,0
    .goto 198,10.13,36.76,80,0
    .goto 198,13.24,33.64,80,0
    .goto 198,18.65,40.28,80,0
    .use 69234 >> |cRXP_WARN_Use the|r |T132172:0|t[Call the Flock] (1) |cRXP_WARN_ability near |cRXP_ENEMY_Alpine Songbirds|r, |cRXP_ENEMY_Forest Owls|r and|r |cRXP_ENEMY_Goldwing Hawks|r
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
    >>Stand infront of a |cRXP_FRIENDLY_Spirit of Malorne|r
    >>|cRXP_WARN_These are the ghost deers that are randomly charging around|r
    .complete 29125,1 --Spirit of Malorne captured (3)
step
    #completewith next
    .goto 198,14.310,33.203
    .vehicle >> Click the |cRXP_PICK_Climbing Tree|r to begin climbing it
    .target Climbing Tree
    .isOnQuest 29161
step
    .goto 198,14.310,33.203
    >>Click a |cRXP_FRIENDLY_Hyjal Bear Cub|r while on the tree
    .collect 54439,1
    .target Hyjal Bear Cub
    .isOnQuest 29161
step
    .isOnQuest 29161
    .goto 198,14.310,33.203
    *|cRXP_WARN_Cast|r |T450907:0|t[Climb Up] (1) |cRXP_WARN_until you're at the top, aim the arrow at the trampoline beside |cRXP_FRIENDLY_Keeper Taldros|r, then cast|r |T446127:0|t[Chuck-a-bear] (4)|cRXP_WARN_. Cast|r |T450905:0|t[Climb Down] (2) |cRXP_WARN_and repeat the process|r
    .complete 29161,1 --6/6 Hyjal Bear Cubs Rescued
step
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Cast|r |T450905:0|t[Climb Down] (2) |cRXP_WARN_to exit the tree|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Cast|r |T450905:0|t[Climb Down] (2) |cRXP_WARN_to exit the tree|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Cast|r |T450905:0|t[Climb Down] (2) |cRXP_WARN_to exit the tree|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Cast|r |T450905:0|t[Climb Down] (2) |cRXP_WARN_to exit the tree|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Cast|r |T450905:0|t[Climb Down] (2) |cRXP_WARN_to exit the tree|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Cast|r |T450905:0|t[Climb Down] (2) |cRXP_WARN_to exit the tree|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Cast|r |T450905:0|t[Climb Down] (2) |cRXP_WARN_to exit the tree|r
step
    .isOnQuest 29161
    >>Click the Quest Turn in Pop-Up in your Questlog.
    .turnin 29161 >>Turn in Those Bears Up There
    .accept 29162 >>Accept Nature's Blessing
step
    .isQuestTurnedIn 29161
    >>Click the Quest Turn in Pop-Up in your Questlog.
    .accept 29162 >>Accept Nature's Blessing
step
    .isOnQuest 29125
    >>Click the Quest Turn in Pop-Up in your Questlog.
    .turnin 29125 >>Turn in Between the Trees
    .accept 29126 >>Accept The Power of Malorne
step
    .isQuestTurnedIn 29125
    >>Click the Quest Turn in Pop-Up in your Questlog.
    .accept 29126 >>Accept The Power of Malorne
step
    .isOnQuest 29147
    >>Click the Quest Turn in Pop-Up in your Questlog.
    .turnin 29147 >>Turn in Call the Flock
    .accept 29148 >>Accept Wings Aflame
step
    .isQuestTurnedIn 29147
    >>Click the Quest Turn in Pop-Up in your Questlog.
    .accept 29148 >>Accept Wings Aflame
step
    .isOnQuest 29164
    >>Click the Quest Turn in Pop-Up in your Questlog.
    .turnin 29164 >>Turn in Perfecting Your Howl
    .accept 29165 >>Accept The Call of the Pack
step
    .isQuestTurnedIn 29164
    >>Click the Quest Turn in Pop-Up in your Questlog.
    .accept 29165 >>Accept The Call of the Pack
step
    .isOnQuest 29101
    >>Click the Quest Turn in Pop-Up in your Questlog.
    .turnin 29101 >>Turn in Punting Season
    .accept 29122 >>Accept Echoes of Nemesis
step
    .isQuestTurnedIn 29101
    >>Click the Quest Turn in Pop-Up in your Questlog.
    .accept 29122 >>Accept Echoes of Nemesis
step
    #completewith next
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .cast 97517 >> |cRXP_WARN_Use the|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_to summon|r |cRXP_ENEMY_Pyrachnis|r
    .use 69232
step
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .use 69232 >> Kill |cRXP_ENEMY_Pyrachnis|r
    >>|cRXP_WARN_Use the|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_to also remove the|r |T136016:0|t[Boiling Poison Bolt] |cRXP_WARN_debuff off yourself which |cRXP_ENEMY_Pyrachnis|r applies|r
    .complete 29162,1 --|Pyrachnis slain: 1/1
    .mob Pyrachnis
step
    #completewith next
    .isOnQuest 29126
    .goto 198,41.667,56.130
    .cast 97012 >> |cRXP_WARN_Use the|r |T135139:0|t[Guardian's Staff] |cRXP_WARN_at the |cRXP_PICK_Pile of Ash|r to summon|r |cRXP_ENEMY_Galenges|r
    .use 68997
step
    .goto 198,41.667,56.130
    .isOnQuest 29126
    .use 68997 >> Kill |cRXP_ENEMY_Galenges|r
    .complete 29126,1 -- Galenges slain (1)
    .mob Galenges
step
    .isOnQuest 29148
    #completewith next
    .goto 198/1,-1500.700,4929.300
    .cast 97324 >> |cRXP_WARN_Use the|r |T135992:0|t[Quill of the Bird-Queen] |cRXP_WARN_near the western flame portal to summon|r |cRXP_ENEMY_Millagazor|r
    .use 69212
step
    .isOnQuest 29148
    .goto 198/1,-1500.700,4929.300
    .use 69212 >> Kill |cRXP_ENEMY_Millagazor|r
    .complete 29148,1 -- Millagazor slain (1)
    .mob Millagazor
step
    .isOnQuest 29165
    #completewith next
    .goto 198,41.667,56.130
    .cast 97498 >> |cRXP_WARN_Use the|r |T134298:0|t[Fang of the Wolf] |cRXP_WARN_to summon|r |cRXP_ENEMY_Lylagar|r
    .use 69225
step
    .isOnQuest 29165
    .goto 198,41.667,56.130
    .use 69225 >> Kill |cRXP_ENEMY_Lylagar|r
    .complete 29165,1 -- Lylagar slain (1)
    .mob Lylagar
step
    .isOnQuest 29122
    #completewith next
    .goto 198,24.014,55.803
    .gossip 52425,0 >>Talk to |cRXP_FRIENDLY_Tooga|r to summon |cRXP_ENEMY_Nemesis|r
    .skipgossip
    .target Tooga
step
    #label KillNemesis
    .isOnQuest 29122
    .goto 198,24.760,55.259
    >>Kill |cRXP_ENEMY_Nemesis|r
    >>|cRXP_WARN_Stand under |cRXP_FRIENDLY_Tooga's|r shell to protect you from|r |cRXP_ENEMY_Nemesis'|r |T135830:0|t[Molten Fury] |cRXP_WARN_cast|r
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
    >>Loot the |cRXP_LOOT_Blueroot Vines|r on the ground
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
    >>Kill the |cRXP_ENEMY_Invaders from the Firelands|r
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
    >>Kill the |cRXP_ENEMY_Invaders from the Firelands|r
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
    >>Kill the |cRXP_ENEMY_Invaders from the Firelands|r
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
    >>Kill the |cRXP_ENEMY_Invaders from the Firelands|r
    .complete 29163,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isQuestComplete 29162
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29162 >>Turn in Nature's Blessing
step
    .isQuestComplete 29122
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29122 >>Turn in Echoes of Nemesis
step
    .isQuestComplete 29126
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29126 >>Turn in The Power of Malorne
step
    .isQuestComplete 29165
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29165 >>Turn in The Call of the Pack
step
    .isQuestComplete 29148
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29148 >>Turn in Wings Aflame
step
    .isQuestComplete 29166
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29166 >>Turn in Supplies for the Other Side
step
    .isQuestComplete 29123
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29123 >>Turn in Rage Against the Flames
step
    .isQuestComplete 29149
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29149 >>Turn in Rage Against the Flames
step
    .isQuestComplete 29127
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29127 >>Turn in Rage Against the Flames
step
    .isQuestComplete 29163
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29163 >>Turn in Rage Against the Flames
step
    .goto 198/1,-2080.200,4417.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Hamuul Runetotem|r 
    .target Arch Druid Hamuul Runetotem
    .turnin 29199 >>Turn in Calling for Reinforcements
    .accept 29200 >>Accept Leyara
step
    .goto 198/1,-1214.200,5236.700
    >>Talk to |cRXP_ENEMY_Leyara|r
    .complete 29200,1 --|Find Leyara: 1/1
    .mob Leyara
step
    .goto 198/1,-2082.700,4424.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .turnin 29200 >>Turn in Leyara
step
    .goto 198/1,-2076.300,4420.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malfurion Stormrage|r 
    .target Malfurion Stormrage
    .accept 29201 >>Accept Through the Gates of Hell
step
    #completewith GatesofHell
    .goto 198,27.484,56.394
    .zone 338 >> Go through the Portal to the Firelands
step
    >>Kill the |cRXP_ENEMY_Obsidian Slaglord|r
    .complete 29201,1 --|Secure a foothold in the Firelands: 1/1
    .mob Obsidian Slaglord
step
    #label GatesofHell
    .goto 338,47.151,90.502
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malfurion Stormrage|r 
    .target Malfurion Stormrage
    .turnin 29201 >>Turn in Through the Gates of Hell
]])


RXPGuides.RegisterGuide([[
#cata
#version 1
#group +The Molten Front
#name B_1_TSOM_Start
#next C_1_TSOM_Druids
#displayname |cRXP_FRIENDLY_2.0|r - The Molten Front

--Molten Front quests

step
    #completewith WispAway
    .goto 198,27.484,56.394
    .zone 338 >> Go through the Portal to the Firelands
step
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rayne Feathersong|r 
    .daily 29139,29143 >>Accept whichever random daily quest is offered
    .target Rayne Feathersong
step
    .goto 338,45.626,86.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Irontree|r 
    .daily 29138 >>Accept Burn Victims
    .target Captain Irontree
step
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Taldris Moonfall|r 
    .daily 29179 >>Accept Hostile Elements
    .daily 29304,29141,29142,29137 >> Accept whichever random daily quest is offered
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
    .use 69240 >> |cRXP_WARN_Use the|r |T463860:0|t[Enchanted Salve] |cRXP_WARN_on|r |cRXP_FRIENDLY_Wounded Hyjal Defenders|r
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
    >>Kill |cRXP_ENEMY_Charred Vanquishers|r and |cRXP_ENEMY_Charred Soldiers|r
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
    >>Kill |cRXP_ENEMY_Charhounds|r and |cRXP_ENEMY_Ancient Charhounds|r
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
    >>Kill |cRXP_ENEMY_Molten Behemoths|r
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
    >>Kill |cRXP_ENEMY_Druids of the Flame|r
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
    >>Kill |cRXP_ENEMY_Lava Bursters|r
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
    >>Click the |cRXP_PICK_Ash Piles|r on the ground
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
    >>|cRXP_WARN_Take the |cRXP_FRIENDLY_Hyjal Wisp|r following you to a Fire Portal|r
    >>|cRXP_WARN_Kill the mobs that come out of it. Ensure the |cRXP_FRIENDLY_Hyjal Wisp|r doesn't die!|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Taldris Moonfall|r 
    .dailyturnin 29179 >>Turn in Hostile Elements
    .target General Taldris Moonfall
step
    .isQuestComplete 29304
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Taldris Moonfall|r 
    .dailyturnin 29304 >> Turn in The Dogs of War
    .target General Taldris Moonfall
step
    .isQuestComplete 29141
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Taldris Moonfall|r 
    .dailyturnin 29141 >> Turn in The Harder They Fall
    .target General Taldris Moonfall
step
    .isQuestComplete 29142
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Taldris Moonfall|r 
    .dailyturnin 29142 >> Turn in Traitors Return
    .target General Taldris Moonfall
step
    .isQuestComplete 29137
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Taldris Moonfall|r 
    .dailyturnin 29137 >> Turn in Breach in the Defenses
    .target General Taldris Moonfall
step
    .isQuestComplete 29138
    .goto 338,45.626,86.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Irontree|r 
    .dailyturnin 29138 >>Turn in Burn Victims
    .target Captain Irontree
step
    .isQuestComplete 29139
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rayne Feathersong|r 
    .dailyturnin 29139 >>Turn in Aggressive Growth
    .target Rayne Feathersong
step
    .isQuestComplete 29143
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rayne Feathersong|r 
    .dailyturnin 29143 >>Turn in Wisp Away
    .target Rayne Feathersong




--Hyjal quests
    
step
    #completewith HyjalQuests
    .goto 338,53.026,83.693
    .zone 198 >> Take the Portal to Mount Hyjal
step --accepted back at sanctuary of malorne
    .goto 198/1,-2088.800,4452.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Soren Moonfall|r 
    .target Captain Soren Moonfall
    .daily 29128 >>Accept The Protectors of Hyjal
step
    #loop
    .goto 198,27.108,62.009,5,0
    .goto 198,27.170,62.563,5,0
    +Talk to |cRXP_FRIENDLY_Matoclaw|r or |cRXP_FRIENDLY_Mylune|r and accept whichever daily quest is available
    .questcount <1,29125,29147,29164,29101,29161
    .target Matoclaw
    .target Mylune
step
    #loop
    #label HyjalQuests
    .goto 198,27.527,62.510,5,0
    .goto 198,27.172,62.565,5,0
    +Talk to |cRXP_FRIENDLY_Matoclaw|r or |cRXP_FRIENDLY_Dorda'en Nightweaver|r and accept whichever daily quest is available
    .questcount <1,29123,29149,29127,29163,29166,29247,29246,29248
    .target Matoclaw
    .target Dorda'en Nightweaver
step
    .isOnQuest 29166
    #completewith KillNemesis
    >>Loot the |cRXP_LOOT_Blueroot Vines|r on the ground
    .complete 29166,1
step
    .isOnQuest 29123
    #completewith KillNemesis
    >>Kill the |cRXP_ENEMY_Invaders from the Firelands|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #completewith KillNemesis
    >>Kill the |cRXP_ENEMY_Invaders from the Firelands|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #completewith KillNemesis
    >>Kill the |cRXP_ENEMY_Invaders from the Firelands|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #completewith KillNemesis
    >>Kill the |cRXP_ENEMY_Invaders from the Firelands|r
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
    >>Click on a |cRXP_FRIENDLY_Child of Tortolla|r
    >>|cRXP_WARN_Aim towards the water and cast|r |T132219:0|t[Punt Turtle] |cRXP_WARN_(1)|r
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
    >>Kill the |cRXP_ENEMY_Invaders from the Firelands|r
    .use 69235 >> |cRXP_WARN_Use the|r |T134298:0|t[Fang of the Wolf] |cRXP_WARN_on their corpses|r
    .complete 29164,1 -- Howl atop an invader's corpse (10)
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29147
    #completewith next
    .cast 97241 >> |cRXP_WARN_Use the|r |T135992:0|t[Quill of the Bird-Queen] |cRXP_WARN_to transform into the|r |cRXP_FRIENDLY_Wings of Aviana|r
    .use 69234
step
    .isOnQuest 29147
    #loop
    .goto 198,14.90,45.11,80,0
    .goto 198,10.13,36.76,80,0
    .goto 198,13.24,33.64,80,0
    .goto 198,18.65,40.28,80,0
    .use 69234 >> |cRXP_WARN_Use the|r |T132172:0|t[Call the Flock] (1) |cRXP_WARN_ability near |cRXP_ENEMY_Alpine Songbirds|r, |cRXP_ENEMY_Forest Owls|r and|r |cRXP_ENEMY_Goldwing Hawks|r
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
    >>Stand infront of a |cRXP_FRIENDLY_Spirit of Malorne|r
    >>|cRXP_WARN_These are the ghost deers that are randomly charging around|r
    .complete 29125,1 --Spirit of Malorne captured (3)
step
    #completewith next
    .goto 198,14.310,33.203
    .vehicle >> Click the |cRXP_PICK_Climbing Tree|r to begin climbing it
    .target Climbing Tree
    .isOnQuest 29161
step
    .goto 198,14.310,33.203
    >>Click a |cRXP_FRIENDLY_Hyjal Bear Cub|r while on the tree
    .collect 54439,1
    .target Hyjal Bear Cub
    .isOnQuest 29161
step
    .isOnQuest 29161
    .goto 198,14.310,33.203
    *|cRXP_WARN_Cast|r |T450907:0|t[Climb Up] (1) |cRXP_WARN_until you're at the top, aim the arrow at the trampoline beside |cRXP_FRIENDLY_Keeper Taldros|r, then cast|r |T446127:0|t[Chuck-a-bear] (4)|cRXP_WARN_. Cast|r |T450905:0|t[Climb Down] (2) |cRXP_WARN_and repeat the process|r
    .complete 29161,1 --6/6 Hyjal Bear Cubs Rescued
step
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Cast|r |T450905:0|t[Climb Down] (2) |cRXP_WARN_to exit the tree|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Cast|r |T450905:0|t[Climb Down] (2) |cRXP_WARN_to exit the tree|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Cast|r |T450905:0|t[Climb Down] (2) |cRXP_WARN_to exit the tree|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Cast|r |T450905:0|t[Climb Down] (2) |cRXP_WARN_to exit the tree|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Cast|r |T450905:0|t[Climb Down] (2) |cRXP_WARN_to exit the tree|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Cast|r |T450905:0|t[Climb Down] (2) |cRXP_WARN_to exit the tree|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Cast|r |T450905:0|t[Climb Down] (2) |cRXP_WARN_to exit the tree|r
step
    .isOnQuest 29161
    >>Click the Quest Turn in Pop-Up in your Questlog.
    .turnin 29161 >>Turn in Those Bears Up There
    .accept 29162 >>Accept Nature's Blessing
step
    .isQuestTurnedIn 29161
    >>Click the Quest Turn in Pop-Up in your Questlog.
    .accept 29162 >>Accept Nature's Blessing
step
    .isOnQuest 29125
    >>Click the Quest Turn in Pop-Up in your Questlog.
    .turnin 29125 >>Turn in Between the Trees
    .accept 29126 >>Accept The Power of Malorne
step
    .isQuestTurnedIn 29125
    >>Click the Quest Turn in Pop-Up in your Questlog.
    .accept 29126 >>Accept The Power of Malorne
step
    .isOnQuest 29147
    >>Click the Quest Turn in Pop-Up in your Questlog.
    .turnin 29147 >>Turn in Call the Flock
    .accept 29148 >>Accept Wings Aflame
step
    .isQuestTurnedIn 29147
    >>Click the Quest Turn in Pop-Up in your Questlog.
    .accept 29148 >>Accept Wings Aflame
step
    .isOnQuest 29164
    >>Click the Quest Turn in Pop-Up in your Questlog.
    .turnin 29164 >>Turn in Perfecting Your Howl
    .accept 29165 >>Accept The Call of the Pack
step
    .isQuestTurnedIn 29164
    >>Click the Quest Turn in Pop-Up in your Questlog.
    .accept 29165 >>Accept The Call of the Pack
step
    .isOnQuest 29101
    >>Click the Quest Turn in Pop-Up in your Questlog.
    .turnin 29101 >>Turn in Punting Season
    .accept 29122 >>Accept Echoes of Nemesis
step
    .isQuestTurnedIn 29101
    >>Click the Quest Turn in Pop-Up in your Questlog.
    .accept 29122 >>Accept Echoes of Nemesis
step
    #completewith next
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .cast 97517 >> |cRXP_WARN_Use the|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_to summon|r |cRXP_ENEMY_Pyrachnis|r
    .use 69232
step
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .use 69232 >> Kill |cRXP_ENEMY_Pyrachnis|r
    >>|cRXP_WARN_Use the|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_to also remove the|r |T136016:0|t[Boiling Poison Bolt] |cRXP_WARN_debuff off yourself which |cRXP_ENEMY_Pyrachnis|r applies|r
    .complete 29162,1 --|Pyrachnis slain: 1/1
    .mob Pyrachnis
step
    #completewith next
    .isOnQuest 29126
    .goto 198,41.667,56.130
    .cast 97012 >> |cRXP_WARN_Use the|r |T135139:0|t[Guardian's Staff] |cRXP_WARN_at the |cRXP_PICK_Pile of Ash|r to summon|r |cRXP_ENEMY_Galenges|r
    .use 68997
step
    .goto 198,41.667,56.130
    .isOnQuest 29126
    .use 68997 >> Kill |cRXP_ENEMY_Galenges|r
    .complete 29126,1 -- Galenges slain (1)
    .mob Galenges
step
    .isOnQuest 29148
    #completewith next
    .goto 198/1,-1500.700,4929.300
    .cast 97324 >> |cRXP_WARN_Use the|r |T135992:0|t[Quill of the Bird-Queen] |cRXP_WARN_near the western flame portal to summon|r |cRXP_ENEMY_Millagazor|r
    .use 69212
step
    .isOnQuest 29148
    .goto 198/1,-1500.700,4929.300
    .use 69212 >> Kill |cRXP_ENEMY_Millagazor|r
    .complete 29148,1 -- Millagazor slain (1)
    .mob Millagazor
step
    .isOnQuest 29165
    #completewith next
    .goto 198,41.667,56.130
    .cast 97498 >> |cRXP_WARN_Use the|r |T134298:0|t[Fang of the Wolf] |cRXP_WARN_to summon|r |cRXP_ENEMY_Lylagar|r
    .use 69225
step
    .isOnQuest 29165
    .goto 198,41.667,56.130
    .use 69225 >> Kill |cRXP_ENEMY_Lylagar|r
    .complete 29165,1 -- Lylagar slain (1)
    .mob Lylagar
step
    .isOnQuest 29122
    #completewith next
    .goto 198,24.014,55.803
    .gossip 52425,0 >>Talk to |cRXP_FRIENDLY_Tooga|r to summon |cRXP_ENEMY_Nemesis|r
    .skipgossip
    .target Tooga
step
    #label KillNemesis
    .isOnQuest 29122
    .goto 198,24.760,55.259
    >>Kill |cRXP_ENEMY_Nemesis|r
    >>|cRXP_WARN_Stand under |cRXP_FRIENDLY_Tooga's|r shell to protect you from|r |cRXP_ENEMY_Nemesis'|r |T135830:0|t[Molten Fury] |cRXP_WARN_cast|r
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
    >>Loot the |cRXP_LOOT_Blueroot Vines|r on the ground
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
    >>Kill the |cRXP_ENEMY_Invaders from the Firelands|r
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
    >>Kill the |cRXP_ENEMY_Invaders from the Firelands|r
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
    >>Kill the |cRXP_ENEMY_Invaders from the Firelands|r
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
    >>Kill the |cRXP_ENEMY_Invaders from the Firelands|r
    .complete 29163,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step -- 29128 The Protectors of Hyjal
    .isOnQuest 29128
    #completewith FinishProtector
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Kill |cRXP_ENEMY_Fiery Behemoths|r and |cRXP_ENEMY_Seething Pyrelords|r
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
    >>Kill |cRXP_ENEMY_Fiery Behemoths|r. Loot them for their |cRXP_LOOT_Sulfur-Laced Wrappings|r
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
    >>Kill |cRXP_ENEMY_Seething Pyrelords|r. Loot them for their |cRXP_LOOT_Flame-Wreathed Hearts|r
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
    >>Kill |cRXP_ENEMY_Fiery Behemoths|r and |cRXP_ENEMY_Seething Pyrelords|r
    .complete 29128,1 -- Invader slain at Sethria's Roost (6)
    .mob Fiery Behemoth
    .mob Seething Pyrelord
step -- 29248 Releasing the Pressure
    .isOnQuest 29248
    .goto 198,32.0,59.8,70,0
    .goto 198,36.6,54.8,70,0
    .goto 198,39.2,62.6,70,0
    .goto 198,34.6,64.6,70,0
    .goto 198,30.6,52.2,70,0
    >>Kill |cRXP_ENEMY_Charred Flamewakers|r. Loot them for their |cRXP_LOOT_Flamewaker Scales|r
    .complete 29248,1 -- Flamewaker Scale (100)
    .mob Charred Flamewaker
step
    .isQuestComplete 29162
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29162 >>Turn in Nature's Blessing
step
    .isQuestComplete 29122
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29122 >>Turn in Echoes of Nemesis
step
    .isQuestComplete 29126
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29126 >>Turn in The Power of Malorne
step
    .isQuestComplete 29165
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29165 >>Turn in The Call of the Pack
step
    .isQuestComplete 29148
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29148 >>Turn in Wings Aflame
step
    .isQuestComplete 29166
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29166 >>Turn in Supplies for the Other Side
step
    .isQuestComplete 29123
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29123 >>Turn in Rage Against the Flames
step
    .isQuestComplete 29149
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29149 >>Turn in Rage Against the Flames
step
    .isQuestComplete 29127
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29127 >>Turn in Rage Against the Flames
step
    .isQuestComplete 29163
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29163 >>Turn in Rage Against the Flames
step
    .isQuestComplete 29246
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorda'en Nightweaver|r
    .target Dorda'en Nightweaver
    .dailyturnin 29246 >>Turn in Relieving the Pain
step
    .isQuestComplete 29247
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorda'en Nightweaver|r
    .target Dorda'en Nightweaver
    .dailyturnin 29247 >>Turn in Treating the Wounds
step
    .isQuestComplete 29248
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorda'en Nightweaver|r
    .target Dorda'en Nightweaver
    .dailyturnin 29248 >>Turn in Releasing the Pressure
step
    #completewith next
    .isQuestComplete 29128
    .goto 198,27.484,56.394
    .zone 338 >> Go through the Portal to the Firelands
step
    .isQuestComplete 29128
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Taldris Moonfall|r 
    .dailyturnin 29128 >>Turn in The Protectors of Hyjal
    .target General Taldris Moonfall
step
    #completewith FinishDruids
    .goto 338,47.017,91.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malfurion Stormrage|r 
    .accept 29181 >>Accept Druids of the Talon
    --.accept 29214 >>Accept The Shadow Wardens
    .target Malfurion Stormrage
step
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >> Take the Portal to Mount Hyjal
step
    .isQuestComplete 29181
    .goto 198,47.017,91.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skylord Omnuron|r 
    .turnin 29181 >>Turn in Druids of the Talon
    .target Skylord Omnuron
step
    #label FinishDruids
    .isQuestAvailable 29181
    +|cRXP_WARN_You have completed all the available daily quests for today. Reload this same guide tomorrow (|r|cRXP_FRIENDLY_2.0|r - The Molten Front|cRXP_WARN_) to continue completing the daily quests until you have acquired enough|r |T513195:0|t[Marks of the World Tree]

-- Beginning of Druids questline if turned in
step
    .isQuestTurnedIn 29181
    .goto 198/1,-2740.000,4902.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Isara Riverstride|r 
    .target Isara Riverstride
    .accept 29182 >>Accept Flight of the Storm Crows
step
    #completewith next
    .isOnQuest 29182
    .goto 198,27.484,56.394
    .zone 338 >> Go through the Portal to the Firelands
step
    .isQuestComplete 29181
    .goto 338,43.028,80.598
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skylord Omnuron|r 
    .turnin 29182 >>Turn in Flight of the Storm Crows
    .target Skylord Omnuron
step
    .isQuestTurnedIn 29181
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Taldris Moonfall|r 
    .daily 29206 >>Accept Into the Fire
    .target General Taldris Moonfall
step
    .isOnQuest 29206
    .goto 338,43.15,80.14,10,0
    .goto 338,33.83,67.40
    >>Escort and protect the |cRXP_FRIENDLY_Windcaller|r through the fire
    >>Kill the |cRXP_ENEMY_Pyrelord|r at the end
    >>Talk to |cRXP_FRIENDLY_Skylord Omnuron|r just before the fires if a |cRXP_FRIENDLY_Windcaller|r is not present
    .complete 29206,1 -- Druid of the Talon Windcaller protected 1/1
    .mob Flamewaker Assassin
    .mob Pyrelord
    .target Nordrala
    .skipgossip
step
    #completewith next
    .subzone 5746 >> |cRXP_WARN_Drop down the large hole. Head toward|r |cRXP_FRIENDLY_Thisalee Crow|r
step
    .isQuestTurnedIn 29181
    .goto 338,42.541,59.713
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thisalee Crow|r
    .dailyturnin 29206 >>Turn in Into the Fire
    .daily 29264 >>Accept Flamewakers of the Molten Flow
    .daily 29265 >>Accept Fire Flowers
    .target Thisalee Crow
step -- 29264 Flamewakers of the Molten Flow
    .isOnQuest 29264
    #completewith AnrenEscort
    >>Kill |cRXP_ENEMY_Flamewaker Sentinels|r, |cRXP_ENEMY_Flamewaker Hunters|r and |cRXP_ENEMY_Flamewaker Shaman|r
    .complete 29264,1 -- Flamewaker slain (8)
    .mob Flamewaker Sentinel
    .mob Flamewaker Shaman
    .mob Flamewaker Hunter
step -- 29265 Fire Flowers
    .isOnQuest 29265
    #completewith AnrenEscort
    >>Loot the |cRXP_LOOT_Luciferns|r on the ground
    .complete 29265,1 -- Lucifern (5)
step
    .isQuestTurnedIn 29181
    .goto 338,51.897,30.965
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anren Shadowseeker|r
    .accept 29272 >>Accept Need... Water... Badly...
    .target Anren Shadowseeker
step
    .isOnQuest 29272
    .goto 338,51.897,30.965
    .gossip 53233 >> Talk to |cRXP_FRIENDLY_Anren Shadowseeker|r again to begin the escort
    .skipgossip
    .target Anren Shadowseeker
step
    #label AnrenEscort
    .isOnQuest 29272
    .goto 338,42.59,59.85
    >>Escort |cRXP_FRIENDLY_Anren Shadowseeker|r
    >>|cRXP_WARN_Follow him closely and jump up the|r |T514278:0|t[Thermal Vents] |cRXP_WARN_alongside him|r
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
    >>Kill |cRXP_ENEMY_Flamewaker Sentinels|r, |cRXP_ENEMY_Flamewaker Hunters|r and |cRXP_ENEMY_Flamewaker Shaman|r
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
    >>Loot the |cRXP_LOOT_Luciferns|r on the ground
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thisalee Crow|r
    .dailyturnin 29264 >>Turn in Flamewakers of the Molten Flow
    .target Thisalee Crow
step
    #label ExitUnderground
    #completewith DruidDailies
    .goto 338,33.08,67.62
    .aura 98833 >> |cRXP_WARN_Head back to the large opening where you dropped down. Stand in the|r |T514278:0|t[Thermal Vent]|cRXP_WARN_, then jump to return to the Molten Front surface|r
    .subzoneskip 5746,1
step
    #requires ExitUnderground
    #completewith DruidDailies
    .goto 338,33.08,67.62
    +|cRXP_WARN_Jump to return to the Molten Front surface|r
    .subzoneskip 5746,1
step
    .isQuestComplete 29272
    .goto 338,35.983,58.988
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tholo Whitehoof|r
    .turnin 29272 >>Turn in Need... Water... Badly...
    .target Tholo Whitehoof
step
    .isQuestTurnedIn 29272
    .goto 338,35.860,59.235
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tholo Whitehoof|r or |cRXP_FRIENDLY_Anren Shadowseeker|r
    .daily 29273,29274 >>Accept whichever random daily quest is offered
    .target Tholo Whitehoof
    .target Anren Shadowseeker
step
    .isQuestComplete 29265
    .goto 338,36.299,56.344
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Choluna|r
    .dailyturnin 29265 >>Turn in Fire Flowers
    .target Choluna
step
    .isQuestTurnedIn 29181
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morthis Whisperwing|r
    .daily 29290,29287,29288 >> Accept whichever random daily quest is offered
    .target Morthis Whisperwing
step
    .isQuestTurnedIn 29181
    #label DruidDailies
    .goto 338,34.295,56.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthorn Windsong|r
    .daily 29293,29296 >> Accept whichever random daily quest is offered
    .target Arthorn Windsong
step
    #completewith next
    .goto 338,33.808,57.177
    .isOnQuest 29290
    .vehicle >> Mount the |cRXP_FRIENDLY_Trained Fire Hawk|r
    .target Trained Fire Hawk
step
    .isOnQuest 29290
    >>|cRXP_WARN_Cast|r |T135821:0|t[Flame Seed] (1) |cRXP_WARN_and|r |T451164:0|t[Flame Burst] (2) |cRXP_WARN_to kill |cRXP_ENEMY_Flamewakers|r, |cRXP_ENEMY_Cinderwebs|r and|r |cRXP_ENEMY_Molten Lords|r
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
    .subzone 5745 >>|cRXP_WARN_Cast|r |T514278:0|t[Return to the Furnace] (6) |cRXP_WARN_to return|r
step
    #optional
    #sticky
    .isOnQuest 29287,29288,29293,29296
    .subzone 5748 >> |cRXP_WARN_Use the Stepping Stones to get onto Fireplume Ridge. You should aim to use an airvent at the end of the Stepping Stones as in doing so will grant the|r |T236222:0|t[Convalescence of Winds] |cRXP_WARN_buff which Increases your attack speed and haste by 100% and allows you to jump much higher and farther than normal|r
step
    #sticky
    #label HowHot
    .isOnQuest 29273
    .use 69806 >>|cRXP_WARN_Use|r |T135155:0|t[Tholo's Thermometer] |cRXP_WARN_at the Fireplume Peak|r |cRXP_PICK_Lava Pools|r
    >>|cRXP_WARN_You can use|r |T135155:0|t[Tholo's Thermometer] |cRXP_WARN_while remaining on your mount|r
    >>|cRXP_WARN_Jump up using the|r |T514278:0|t[Thermal Vents] |cRXP_WARN_located through out Fireplume Peak to make your way to the top|r
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
    >>Loot a |cRXP_LOOT_Fire Hawk Egg|r from the top of Fireplume Peak
    >>|cRXP_WARN_Jump up using the|r |T514278:0|t[Thermal Vents] |cRXP_WARN_located through out Fireplume Peak to make your way to the top|r
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
    >>Click the |cRXP_FRIENDLY_Injured Druids of the Talon|r
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
    >>Kill |cRXP_ENEMY_Fire Hawks|r
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
    >>Click the |cRXP_FRIENDLY_Fire Hawk Hatchlings|r
    >>|cRXP_WARN_The top of Fireplume Peak has a large amount of them|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morthis Whisperwing|r
    .dailyturnin 29290 >> Turn in Fire in the Skies
    .target Morthis Whisperwing
step
    .isQuestComplete 29287
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morthis Whisperwing|r
    .dailyturnin 29287 >> Turn in Peaked Interest
    .target Morthis Whisperwing
step
    .isQuestComplete 29288
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morthis Whisperwing|r
    .dailyturnin 29288 >> Turn in Starting Young
    .target Morthis Whisperwing
step
    .isQuestComplete 29293
    .goto 338,34.295,56.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthorn Windsong|r
    .dailyturnin 29293 >> Turn in Singed Wings
    .target Arthorn Windsong
step
    .isQuestComplete 29296
    .goto 338,34.295,56.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthorn Windsong|r
    .dailyturnin 29296 >> Turn in Territorial Birds
    .target Arthorn Windsong
step
    .isOnQuest 29274
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>Kill |cRXP_ENEMY_Charhounds|r and |cRXP_ENEMY_Ancient Charhounds|r. Loot them for their |cRXP_LOOT_Houndbone Ash|r
    .complete 29274,1 -- Houndbone Ash (6)
    .mob Charhound
    .mob Ancient Charhound
step
    .isQuestComplete 29273
    .goto 338,51.245,85.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anren Shadowseeker|r
    .dailyturnin 29273 >> Turn in How Hot
    .target Anren Shadowseeker
step
    .isQuestComplete 29274
    .goto 338,51.555,85.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tholo Whitehoof|r
    .dailyturnin 29274 >> Turn in Hounds of Shannox
    .target Tholo Whitehoof
step
    .goto 338,47.017,91.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malfurion Stormrage|r 
    --.accept 29181 >>Accept Druids of the Talon
    .accept 29214 >>Accept The Shadow Wardens
    .target Malfurion Stormrage
step
    .isQuestTurnedIn 29181
    +|cRXP_WARN_You have completed all the available daily quests for today. Reload the (|r|cRXP_ENEMY_2.5|r - The Molten Front + Druids|cRXP_WARN_) guide tomorrow to continue completing the daily quests until you have acquired enough|r |T513195:0|t[Marks of the World Tree]
]])

RXPGuides.RegisterGuide([[
#cata
#version 1
#group +The Molten Front
#name C_1_TSOM_Druids
#displayname |cRXP_ENEMY_2.5|r - The Molten Front + Druids

step
    #optional
    .isQuestAvailable 29181
    +|cRXP_WARN_You must first gather 150|r |T513195:0|t[Marks of the World Tree] |cRXP_WARN_and turn in the quest [Druids of the Talon] in order to complete daily quests for them|r
    >>|cRXP_WARN_Continue completing the (|r|cRXP_FRIENDLY_2.0|r - The Molten Front|cRXP_WARN_) guide until you have enough|r |T513195:0|t[Marks of the World Tree]
    .goto 198,47.017,91.361
    .turnin 29181 >>Turn in Druids of the Talon
    .target Skylord Omnuron
step
    #optional
    #completewith HyjalQuests
	.zone 85 >> Travel to Orgrimmar << Horde
	.zone 84 >> Travel to Stormwind << Alliance
	.zoneskip 198
    .zoneskip 338
step
    #optional
    #completewith HyjalQuests
    .goto 85,51.12,38.26 << Horde
    .goto 84,76.199,18.690 << Alliance
    .zone 198 >>Take the Portal to Hyjal
    .zoneskip 338
step
    #optional
    #completewith HyjalQuests
    .goto 338,53.026,83.693
    .zone 198 >> Take the Portal to Mount Hyjal
    .zoneskip 338,1
step --accepted back at sanctuary of malorne
    .goto 198/1,-2088.800,4452.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Soren Moonfall|r 
    .target Captain Soren Moonfall
    .daily 29128 >>Accept The Protectors of Hyjal
step
    #loop
    .goto 198,27.108,62.009,5,0
    .goto 198,27.170,62.563,5,0
    +Talk to |cRXP_FRIENDLY_Matoclaw|r or |cRXP_FRIENDLY_Mylune|r and accept whichever daily quest is available
    .questcount <1,29125,29147,29164,29101,29161
    .target Matoclaw
    .target Mylune
step
    #loop
    #label HyjalQuests
    .goto 198,27.527,62.510,5,0
    .goto 198,27.172,62.565,5,0
    +Talk to |cRXP_FRIENDLY_Matoclaw|r or |cRXP_FRIENDLY_Dorda'en Nightweaver|r and accept whichever daily quest is available
    .questcount <1,29123,29149,29127,29163,29166,29247,29246,29248
    .target Matoclaw
    .target Dorda'en Nightweaver
step
    .isOnQuest 29166
    #completewith KillNemesis
    >>Loot the |cRXP_LOOT_Blueroot Vines|r on the ground
    .complete 29166,1
step
    .isOnQuest 29123
    #completewith KillNemesis
    >>Kill the |cRXP_ENEMY_Invaders from the Firelands|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #completewith KillNemesis
    >>Kill the |cRXP_ENEMY_Invaders from the Firelands|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #completewith KillNemesis
    >>Kill the |cRXP_ENEMY_Invaders from the Firelands|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #completewith KillNemesis
    >>Kill the |cRXP_ENEMY_Invaders from the Firelands|r
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
    >>Click on a |cRXP_FRIENDLY_Child of Tortolla|r
    >>|cRXP_WARN_Aim towards the water and cast|r |T132219:0|t[Punt Turtle] |cRXP_WARN_(1)|r
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
    >>Kill the |cRXP_ENEMY_Invaders from the Firelands|r
    .use 69235 >> |cRXP_WARN_Use the|r |T134298:0|t[Fang of the Wolf] |cRXP_WARN_on their corpses|r
    .complete 29164,1 -- Howl atop an invader's corpse (10)
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29147
    #completewith next
    .cast 97241 >> |cRXP_WARN_Use the|r |T135992:0|t[Quill of the Bird-Queen] |cRXP_WARN_to transform into the|r |cRXP_FRIENDLY_Wings of Aviana|r
    .use 69234
step
    .isOnQuest 29147
    #loop
    .goto 198,14.90,45.11,80,0
    .goto 198,10.13,36.76,80,0
    .goto 198,13.24,33.64,80,0
    .goto 198,18.65,40.28,80,0
    .use 69234 >> |cRXP_WARN_Use the|r |T132172:0|t[Call the Flock] (1) |cRXP_WARN_ability near |cRXP_ENEMY_Alpine Songbirds|r, |cRXP_ENEMY_Forest Owls|r and|r |cRXP_ENEMY_Goldwing Hawks|r
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
    >>Stand infront of a |cRXP_FRIENDLY_Spirit of Malorne|r
    >>|cRXP_WARN_These are the ghost deers that are randomly charging around|r
    .complete 29125,1 --Spirit of Malorne captured (3)
step
    #completewith next
    .goto 198,14.310,33.203
    .vehicle >> Click the |cRXP_PICK_Climbing Tree|r to begin climbing it
    .target Climbing Tree
    .isOnQuest 29161
step
    .goto 198,14.310,33.203
    >>Click a |cRXP_FRIENDLY_Hyjal Bear Cub|r while on the tree
    .collect 54439,1
    .target Hyjal Bear Cub
    .isOnQuest 29161
step
    .isOnQuest 29161
    .goto 198,14.310,33.203
    *|cRXP_WARN_Cast|r |T450907:0|t[Climb Up] (1) |cRXP_WARN_until you're at the top, aim the arrow at the trampoline beside |cRXP_FRIENDLY_Keeper Taldros|r, then cast|r |T446127:0|t[Chuck-a-bear] (4)|cRXP_WARN_. Cast|r |T450905:0|t[Climb Down] (2) |cRXP_WARN_and repeat the process|r
    .complete 29161,1 --6/6 Hyjal Bear Cubs Rescued
step
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Cast|r |T450905:0|t[Climb Down] (2) |cRXP_WARN_to exit the tree|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Cast|r |T450905:0|t[Climb Down] (2) |cRXP_WARN_to exit the tree|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Cast|r |T450905:0|t[Climb Down] (2) |cRXP_WARN_to exit the tree|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Cast|r |T450905:0|t[Climb Down] (2) |cRXP_WARN_to exit the tree|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Cast|r |T450905:0|t[Climb Down] (2) |cRXP_WARN_to exit the tree|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Cast|r |T450905:0|t[Climb Down] (2) |cRXP_WARN_to exit the tree|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Cast|r |T450905:0|t[Climb Down] (2) |cRXP_WARN_to exit the tree|r
step
    .isOnQuest 29161
    >>Click the Quest Turn in Pop-Up in your Questlog.
    .turnin 29161 >>Turn in Those Bears Up There
    .accept 29162 >>Accept Nature's Blessing
step
    .isQuestTurnedIn 29161
    >>Click the Quest Turn in Pop-Up in your Questlog.
    .accept 29162 >>Accept Nature's Blessing
step
    .isOnQuest 29125
    >>Click the Quest Turn in Pop-Up in your Questlog.
    .turnin 29125 >>Turn in Between the Trees
    .accept 29126 >>Accept The Power of Malorne
step
    .isQuestTurnedIn 29125
    >>Click the Quest Turn in Pop-Up in your Questlog.
    .accept 29126 >>Accept The Power of Malorne
step
    .isOnQuest 29147
    >>Click the Quest Turn in Pop-Up in your Questlog.
    .turnin 29147 >>Turn in Call the Flock
    .accept 29148 >>Accept Wings Aflame
step
    .isQuestTurnedIn 29147
    >>Click the Quest Turn in Pop-Up in your Questlog.
    .accept 29148 >>Accept Wings Aflame
step
    .isOnQuest 29164
    >>Click the Quest Turn in Pop-Up in your Questlog.
    .turnin 29164 >>Turn in Perfecting Your Howl
    .accept 29165 >>Accept The Call of the Pack
step
    .isQuestTurnedIn 29164
    >>Click the Quest Turn in Pop-Up in your Questlog.
    .accept 29165 >>Accept The Call of the Pack
step
    .isOnQuest 29101
    >>Click the Quest Turn in Pop-Up in your Questlog.
    .turnin 29101 >>Turn in Punting Season
    .accept 29122 >>Accept Echoes of Nemesis
step
    .isQuestTurnedIn 29101
    >>Click the Quest Turn in Pop-Up in your Questlog.
    .accept 29122 >>Accept Echoes of Nemesis
step
    #completewith next
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .cast 97517 >> |cRXP_WARN_Use the|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_to summon|r |cRXP_ENEMY_Pyrachnis|r
    .use 69232
step
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .use 69232 >> Kill |cRXP_ENEMY_Pyrachnis|r
    >>|cRXP_WARN_Use the|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_to also remove the|r |T136016:0|t[Boiling Poison Bolt] |cRXP_WARN_debuff off yourself which |cRXP_ENEMY_Pyrachnis|r applies|r
    .complete 29162,1 --|Pyrachnis slain: 1/1
    .mob Pyrachnis
step
    #completewith next
    .isOnQuest 29126
    .goto 198,41.667,56.130
    .cast 97012 >> |cRXP_WARN_Use the|r |T135139:0|t[Guardian's Staff] |cRXP_WARN_at the |cRXP_PICK_Pile of Ash|r to summon|r |cRXP_ENEMY_Galenges|r
    .use 68997
step
    .goto 198,41.667,56.130
    .isOnQuest 29126
    .use 68997 >> Kill |cRXP_ENEMY_Galenges|r
    .complete 29126,1 -- Galenges slain (1)
    .mob Galenges
step
    .isOnQuest 29148
    #completewith next
    .goto 198/1,-1500.700,4929.300
    .cast 97324 >> |cRXP_WARN_Use the|r |T135992:0|t[Quill of the Bird-Queen] |cRXP_WARN_near the western flame portal to summon|r |cRXP_ENEMY_Millagazor|r
    .use 69212
step
    .isOnQuest 29148
    .goto 198/1,-1500.700,4929.300
    .use 69212 >> Kill |cRXP_ENEMY_Millagazor|r
    .complete 29148,1 -- Millagazor slain (1)
    .mob Millagazor
step
    .isOnQuest 29165
    #completewith next
    .goto 198,41.667,56.130
    .cast 97498 >> |cRXP_WARN_Use the|r |T134298:0|t[Fang of the Wolf] |cRXP_WARN_to summon|r |cRXP_ENEMY_Lylagar|r
    .use 69225
step
    .isOnQuest 29165
    .goto 198,41.667,56.130
    .use 69225 >> Kill |cRXP_ENEMY_Lylagar|r
    .complete 29165,1 -- Lylagar slain (1)
    .mob Lylagar
step
    .isOnQuest 29122
    #completewith next
    .goto 198,24.014,55.803
    .gossip 52425,0 >>Talk to |cRXP_FRIENDLY_Tooga|r to summon |cRXP_ENEMY_Nemesis|r
    .skipgossip
    .target Tooga
step
    #label KillNemesis
    .isOnQuest 29122
    .goto 198,24.760,55.259
    >>Kill |cRXP_ENEMY_Nemesis|r
    >>|cRXP_WARN_Stand under |cRXP_FRIENDLY_Tooga's|r shell to protect you from|r |cRXP_ENEMY_Nemesis'|r |T135830:0|t[Molten Fury] |cRXP_WARN_cast|r
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
    >>Loot the |cRXP_LOOT_Blueroot Vines|r on the ground
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
    >>Kill the |cRXP_ENEMY_Invaders from the Firelands|r
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
    >>Kill the |cRXP_ENEMY_Invaders from the Firelands|r
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
    >>Kill the |cRXP_ENEMY_Invaders from the Firelands|r
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
    >>Kill the |cRXP_ENEMY_Invaders from the Firelands|r
    .complete 29163,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step -- 29128 The Protectors of Hyjal
    .isOnQuest 29128
    #completewith FinishProtector
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Kill |cRXP_ENEMY_Fiery Behemoths|r and |cRXP_ENEMY_Seething Pyrelords|r
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
    >>Kill |cRXP_ENEMY_Fiery Behemoths|r. Loot them for their |cRXP_LOOT_Sulfur-Laced Wrappings|r
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
    >>Kill |cRXP_ENEMY_Seething Pyrelords|r. Loot them for their |cRXP_LOOT_Flame-Wreathed Hearts|r
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
    >>Kill |cRXP_ENEMY_Fiery Behemoths|r and |cRXP_ENEMY_Seething Pyrelords|r
    .complete 29128,1 -- Invader slain at Sethria's Roost (6)
    .mob Fiery Behemoth
    .mob Seething Pyrelord
step -- 29248 Releasing the Pressure
    .isOnQuest 29248
    .goto 198,32.0,59.8,70,0
    .goto 198,36.6,54.8,70,0
    .goto 198,39.2,62.6,70,0
    .goto 198,34.6,64.6,70,0
    .goto 198,30.6,52.2,70,0
    >>Kill |cRXP_ENEMY_Charred Flamewakers|r. Loot them for their |cRXP_LOOT_Flamewaker Scales|r
    .complete 29248,1 -- Flamewaker Scale (100)
    .mob Charred Flamewaker
step
    .isQuestComplete 29162
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29162 >>Turn in Nature's Blessing
step
    .isQuestComplete 29122
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29122 >>Turn in Echoes of Nemesis
step
    .isQuestComplete 29126
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29126 >>Turn in The Power of Malorne
step
    .isQuestComplete 29165
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29165 >>Turn in The Call of the Pack
step
    .isQuestComplete 29148
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29148 >>Turn in Wings Aflame
step
    .isQuestComplete 29166
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29166 >>Turn in Supplies for the Other Side
step
    .isQuestComplete 29123
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29123 >>Turn in Rage Against the Flames
step
    .isQuestComplete 29149
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29149 >>Turn in Rage Against the Flames
step
    .isQuestComplete 29127
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29127 >>Turn in Rage Against the Flames
step
    .isQuestComplete 29163
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .dailyturnin 29163 >>Turn in Rage Against the Flames
step
    .isQuestComplete 29246
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorda'en Nightweaver|r
    .target Dorda'en Nightweaver
    .dailyturnin 29246 >>Turn in Relieving the Pain
step
    .isQuestComplete 29247
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorda'en Nightweaver|r
    .target Dorda'en Nightweaver
    .dailyturnin 29247 >>Turn in Treating the Wounds
step
    .isQuestComplete 29248
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorda'en Nightweaver|r
    .target Dorda'en Nightweaver
    .dailyturnin 29248 >>Turn in Releasing the Pressure
step
    #completewith next
    .isQuestComplete 29128
    .goto 198,27.484,56.394
    .zone 338 >> Go through the Portal to the Firelands
step
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rayne Feathersong|r 
    .daily 29139,29143 >>Accept whichever random daily quest is offered
    .target Rayne Feathersong
step
    .goto 338,45.626,86.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Irontree|r 
    .daily 29138 >>Accept Burn Victims
    .target Captain Irontree
step
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Taldris Moonfall|r 
    .daily 29179 >>Accept Hostile Elements
    .daily 29304,29141,29142,29137 >> Accept whichever random daily quest is offered
    .target General Taldris Moonfall
step
    .isQuestComplete 29128
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Taldris Moonfall|r 
    .dailyturnin 29128 >>Turn in The Protectors of Hyjal
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
    .use 69240 >> |cRXP_WARN_Use the|r |T463860:0|t[Enchanted Salve] |cRXP_WARN_on|r |cRXP_FRIENDLY_Wounded Hyjal Defenders|r
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
    >>Kill |cRXP_ENEMY_Charred Vanquishers|r and |cRXP_ENEMY_Charred Soldiers|r
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
    >>Kill |cRXP_ENEMY_Charhounds|r and |cRXP_ENEMY_Ancient Charhounds|r
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
    >>Kill |cRXP_ENEMY_Molten Behemoths|r
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
    >>Kill |cRXP_ENEMY_Druids of the Flame|r
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
    >>Kill |cRXP_ENEMY_Lava Bursters|r
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
    >>Click the |cRXP_PICK_Ash Piles|r on the ground
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
    >>|cRXP_WARN_Take the |cRXP_FRIENDLY_Hyjal Wisp|r following you to a Fire Portal|r
    >>|cRXP_WARN_Kill the mobs that come out of it. Ensure the |cRXP_FRIENDLY_Hyjal Wisp|r doesn't die!|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Taldris Moonfall|r 
    .dailyturnin 29179 >>Turn in Hostile Elements
    .target General Taldris Moonfall
step
    .isQuestComplete 29304
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Taldris Moonfall|r 
    .dailyturnin 29304 >> Turn in The Dogs of War
    .target General Taldris Moonfall
step
    .isQuestComplete 29141
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Taldris Moonfall|r 
    .dailyturnin 29141 >> Turn in The Harder They Fall
    .target General Taldris Moonfall
step
    .isQuestComplete 29142
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Taldris Moonfall|r 
    .dailyturnin 29142 >> Turn in Traitors Return
    .target General Taldris Moonfall
step
    .isQuestComplete 29137
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Taldris Moonfall|r 
    .dailyturnin 29137 >> Turn in Breach in the Defenses
    .target General Taldris Moonfall
step
    .isQuestComplete 29138
    .goto 338,45.626,86.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Irontree|r 
    .dailyturnin 29138 >>Turn in Burn Victims
    .target Captain Irontree
step
    .isQuestComplete 29139
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rayne Feathersong|r 
    .dailyturnin 29139 >>Turn in Aggressive Growth
    .target Rayne Feathersong
step
    .isQuestComplete 29143
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rayne Feathersong|r 
    .dailyturnin 29143 >>Turn in Wisp Away
    .target Rayne Feathersong
step
    .isQuestTurnedIn 29181
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Taldris Moonfall|r 
    .daily 29206 >>Accept Into the Fire
    .target General Taldris Moonfall
step
    .isOnQuest 29206
    .goto 338,43.15,80.14,10,0
    .goto 338,33.83,67.40
    >>Escort and protect the |cRXP_FRIENDLY_Windcaller|r through the fire
    >>Kill the |cRXP_ENEMY_Pyrelord|r at the end
    >>Talk to |cRXP_FRIENDLY_Skylord Omnuron|r just before the fires if a |cRXP_FRIENDLY_Windcaller|r is not present
    .complete 29206,1 -- Druid of the Talon Windcaller protected 1/1
    .mob Flamewaker Assassin
    .mob Pyrelord
    .target Nordrala
    .skipgossip
step << skip
    .goto 338,34.400,66.213
    .subzone 5746 >> Click the |cRXP_PICK_Rappelling Rope|r to descend into the Molten Flow
step
    #completewith next
    .subzone 5746 >> |cRXP_WARN_Drop down the large hole. Head toward|r |cRXP_FRIENDLY_Thisalee Crow|r
step
    .isQuestTurnedIn 29181
    .goto 338,42.541,59.713
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thisalee Crow|r
    .dailyturnin 29206 >>Turn in Into the Fire
    .daily 29264 >>Accept Flamewakers of the Molten Flow
    .daily 29265 >>Accept Fire Flowers
    .target Thisalee Crow
step -- 29264 Flamewakers of the Molten Flow
    .isOnQuest 29264
    #sticky
    #label FOTMF
    #loop
    .goto 338,50.15,58.80,70,0
    .goto 338,43.39,51.11,70,0
    .goto 338,51.48,39.68,70,0
    .goto 338,52.74,54.06,70,0
    >>Kill |cRXP_ENEMY_Flamewaker Sentinels|r, |cRXP_ENEMY_Flamewaker Hunters|r and |cRXP_ENEMY_Flamewaker Shaman|r
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
    >>Loot the |cRXP_LOOT_Luciferns|r on the ground
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thisalee Crow|r
    .dailyturnin 29264 >>Turn in Flamewakers of the Molten Flow
    .target Thisalee Crow
step
    #label ExitUnderground
    #completewith DruidEnd
    .goto 338,33.08,67.62
    .aura 98833 >> |cRXP_WARN_Head back to the large opening where you dropped down. Stand in the|r |T514278:0|t[Thermal Vent]|cRXP_WARN_, then jump to return to the Molten Front surface|r
    .subzoneskip 5746,1
step
    #requires ExitUnderground
    #completewith DruidEnd
    .goto 338,33.08,67.62
    +|cRXP_WARN_Jump to return to the Molten Front surface|r
    .subzoneskip 5746,1
step
    .isQuestTurnedIn 29272
    .goto 338,35.860,59.235
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tholo Whitehoof|r or |cRXP_FRIENDLY_Anren Shadowseeker|r
    .daily 29273,29274 >>Accept whichever random daily quest is offered
    .target Tholo Whitehoof
    .target Anren Shadowseeker
step
    .isQuestComplete 29265
    .goto 338,36.299,56.344
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Choluna|r
    .dailyturnin 29265 >>Turn in Fire Flowers
    .target Choluna
step
    .isQuestTurnedIn 29181
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morthis Whisperwing|r
    .daily 29290,29287,29288 >> Accept whichever random daily quest is offered
    .target Morthis Whisperwing
step
    .isQuestTurnedIn 29181
    .goto 338,34.295,56.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthorn Windsong|r
    .daily 29293,29296 >> Accept whichever random daily quest is offered
    .target Arthorn Windsong
step
    #completewith next
    .goto 338,33.808,57.177
    .isOnQuest 29290
    .vehicle >> Mount the |cRXP_FRIENDLY_Trained Fire Hawk|r
    .target Trained Fire Hawk
step
    .isOnQuest 29290
    >>|cRXP_WARN_Cast|r |T135821:0|t[Flame Seed] (1) |cRXP_WARN_and|r |T451164:0|t[Flame Burst] (2) |cRXP_WARN_to kill |cRXP_ENEMY_Flamewakers|r, |cRXP_ENEMY_Cinderwebs|r and|r |cRXP_ENEMY_Molten Lords|r
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
    .subzone 5745 >>|cRXP_WARN_Cast|r |T514278:0|t[Return to the Furnace] (6) |cRXP_WARN_to return|r
step
    #optional
    #sticky
    .isOnQuest 29287,29288,29293,29296
    .subzone 5748 >> |cRXP_WARN_Use the Stepping Stones to get onto Fireplume Ridge. You should aim to use an airvent at the end of the Stepping Stones as in doing so will grant the|r |T236222:0|t[Convalescence of Winds] |cRXP_WARN_buff which Increases your attack speed and haste by 100% and allows you to jump much higher and farther than normal|r
step
    #sticky
    #label HowHot
    .isOnQuest 29273
    .use 69806 >>|cRXP_WARN_Use|r |T135155:0|t[Tholo's Thermometer] |cRXP_WARN_at the Fireplume Peak|r |cRXP_PICK_Lava Pools|r
    >>|cRXP_WARN_You can use|r |T135155:0|t[Tholo's Thermometer] |cRXP_WARN_while remaining on your mount|r
    >>|cRXP_WARN_Jump up using the|r |T514278:0|t[Thermal Vents] |cRXP_WARN_located through out Fireplume Peak to make your way to the top|r
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
    >>Loot a |cRXP_LOOT_Fire Hawk Egg|r from the top of Fireplume Peak
    >>|cRXP_WARN_Jump up using the|r |T514278:0|t[Thermal Vents] |cRXP_WARN_located through out Fireplume Peak to make your way to the top|r
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
    >>Click the |cRXP_FRIENDLY_Injured Druids of the Talon|r
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
    >>Kill |cRXP_ENEMY_Fire Hawks|r
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
    >>Click the |cRXP_FRIENDLY_Fire Hawk Hatchlings|r
    >>|cRXP_WARN_The top of Fireplume Peak has a large amount of them|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morthis Whisperwing|r
    .dailyturnin 29290 >> Turn in Fire in the Skies
    .target Morthis Whisperwing
step
    .isQuestComplete 29287
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morthis Whisperwing|r
    .dailyturnin 29287 >> Turn in Peaked Interest
    .target Morthis Whisperwing
step
    .isQuestComplete 29288
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morthis Whisperwing|r
    .dailyturnin 29288 >> Turn in Starting Young
    .target Morthis Whisperwing
step
    .isQuestComplete 29293
    .goto 338,34.295,56.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthorn Windsong|r
    .dailyturnin 29293 >> Turn in Singed Wings
    .target Arthorn Windsong
step
    .isQuestComplete 29296
    .goto 338,34.295,56.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthorn Windsong|r
    .dailyturnin 29296 >> Turn in Territorial Birds
    .target Arthorn Windsong
step
    .isOnQuest 29274
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>Kill |cRXP_ENEMY_Charhounds|r and |cRXP_ENEMY_Ancient Charhounds|r. Loot them for their |cRXP_LOOT_Houndbone Ash|r
    .complete 29274,1 -- Houndbone Ash (6)
    .mob Charhound
    .mob Ancient Charhound
step
    .isQuestComplete 29273
    .goto 338,51.245,85.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anren Shadowseeker|r
    .dailyturnin 29273 >> Turn in How Hot
    .target Anren Shadowseeker
step
    .isQuestComplete 29274
    .goto 338,51.555,85.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tholo Whitehoof|r
    .dailyturnin 29274 >> Turn in Hounds of Shannox
    .target Tholo Whitehoof
step
    #label DruidEnd
    +|cRXP_WARN_You have completed all the available daily quests for today. Reload this same guide tomorrow (|r|cRXP_ENEMY_2.5|r - The Molten Front + Druids|cRXP_WARN_) to continue completing the daily quests until you have acquired enough|r |T513195:0|t[Marks of the World Tree]
]])