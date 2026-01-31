if GetLocale() == "zhCN" then return end
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
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r or |cRXP_FRIENDLY_Mylune|r
    .daily 29125,29147,29164,29101,29161 >> Accept whichever random daily quest is offered
    .disablecheckbox
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
    .use 69234 >> |cRXP_WARN_Use the|r |T132172:0|t[Call the Flock] (1) |cRXP_WARN_ability near |cRXP_FRIENDLY_Alpine Songbirds|r, |cRXP_FRIENDLY_Forest Owls|r and|r |cRXP_FRIENDLY_Goldwing Hawks|r
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
    >>|cRXP_WARN_Stand under |cRXP_FRIENDLY_Tooga's|r shell to protect yourself from|r |cRXP_ENEMY_Nemesis'|r |T135830:0|t[Molten Fury] |cRXP_WARN_cast|r
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
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r or |cRXP_FRIENDLY_Mylune|r
    .daily 29125,29147,29164,29101,29161 >> Accept whichever random daily quest is offered
    .disablecheckbox
    .questcount <1,29125,29147,29164,29101,29161
    .target Matoclaw
    .target Mylune
step
    #loop
    #label HyjalQuests
    .goto 198,27.527,62.510,5,0
    .goto 198,27.172,62.565,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r or |cRXP_FRIENDLY_Dorda'en Nightweaver|r
    .daily 29123,29149,29127,29163,29166,29247,29246,29248 >> Accept whichever random daily quest is offered
    .disablecheckbox
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
    .use 69234 >> |cRXP_WARN_Use the|r |T132172:0|t[Call the Flock] (1) |cRXP_WARN_ability near |cRXP_FRIENDLY_Alpine Songbirds|r, |cRXP_FRIENDLY_Forest Owls|r and|r |cRXP_FRIENDLY_Goldwing Hawks|r
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
    >>|cRXP_WARN_Stand under |cRXP_FRIENDLY_Tooga's|r shell to protect yourself from|r |cRXP_ENEMY_Nemesis'|r |T135830:0|t[Molten Fury] |cRXP_WARN_cast|r
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
    .subzoneskip 5748
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
--#next D_1_TSOM_Wardens
--Making guide not auto change so user has choice of which daily quests they want to do out of Druids/Wardens
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
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r or |cRXP_FRIENDLY_Mylune|r
    .daily 29125,29147,29164,29101,29161 >> Accept whichever random daily quest is offered
    .disablecheckbox
    .questcount <1,29125,29147,29164,29101,29161
    .target Matoclaw
    .target Mylune
step
    #loop
    #label HyjalQuests
    .goto 198,27.527,62.510,5,0
    .goto 198,27.172,62.565,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r or |cRXP_FRIENDLY_Dorda'en Nightweaver|r
    .daily 29123,29149,29127,29163,29166,29247,29246,29248 >> Accept whichever random daily quest is offered
    .disablecheckbox
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
    .use 69234 >> |cRXP_WARN_Use the|r |T132172:0|t[Call the Flock] (1) |cRXP_WARN_ability near |cRXP_FRIENDLY_Alpine Songbirds|r, |cRXP_FRIENDLY_Forest Owls|r and|r |cRXP_FRIENDLY_Goldwing Hawks|r
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
    >>|cRXP_WARN_Stand under |cRXP_FRIENDLY_Tooga's|r shell to protect yourself from|r |cRXP_ENEMY_Nemesis'|r |T135830:0|t[Molten Fury] |cRXP_WARN_cast|r
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
    #completewith RayneFeathersong
    .isQuestComplete 29128
    .goto 198,27.484,56.394
    .zone 338 >> Go through the Portal to the Firelands
step
    .isQuestTurnedIn 29215 -- If turned in quest to unlock Wardens
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avrilla|r
    .daily 29255,29257,29299 >>Accept whichever random daily quest is offered
    .target Avrilla
step
    #label RayneFeathersong
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rayne Feathersong|r
    .daily 29139,29143 >>Accept whichever random daily quest is offered
    .target Rayne Feathersong
step
    .isQuestTurnedIn 29282
    .goto 338,46.758,90.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ricket|r
    .daily 29263,29278,29295,29297 >> Accept whichever random daily quest is offered
    >>|cRXP_WARN_Skip this step if |cRXP_FRIENDLY_Ricket|r isn't offering a quest here today|r
    .target Ricket
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
    >>Kill |cRXP_ENEMY_Charred Soldiers|r and |cRXP_ENEMY_Charred Vanquishers|r. Loot them for their |cRXP_LOOT_Embergris|r
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
step -- Steal Magmolias 29257
    .isOnQuest 29257
    #label StealMagmolias
    #sticky
    #loop
    .goto 338,47.7,59.6,45,0
    .goto 338,41.5,43.6,45,0
    .goto 338,54.5,45.5,45,0
    >>Loot the |cRXP_LOOT_Magmolia|r inside of the small lava pools
    >>|cRXP_WARN_If a |cRXP_ENEMY_Lava Burster|r spawns after looting one, kill it and loot it for the|r |cRXP_LOOT_Magmolia|r
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
    >>|cRXP_WARN_Take your |cRXP_FRIENDLY_Crimson Lasher|r and fight|r |cRXP_ENEMY_Emberspit Scorpions|r << !Hunter
    >>|cRXP_WARN_Cast|r |T135834:0|t[Freezing Trap] |cRXP_WARN_on a |cRXP_ENEMY_Emberspit Scorpion|r. It will cast|r |T135826:0|t[Ember Pools] |cRXP_WARN_continously while your |cRXP_FRIENDLY_Crimson Lasher|r drinks them up, letting you complete this daily with only one|r |cRXP_ENEMY_Emberspit Scorpion|r << Hunter
    >>|cRXP_WARN_The |cRXP_ENEMY_Emberspit Scorpions|r will cast|r |T135826:0|t[Ember Pools] |cRXP_WARN_which your |cRXP_FRIENDLY_Crimson Lasher|r will drink|r
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
    >>Click the |cRXP_PICK_Lava Bubbles|r inside the lava pools to summon a |cRXP_ENEMY_Subterranean Magma Worm|r
    .use 69759 >>|cRXP_WARN_When you see the warning message: "The worm is about to bite! Place the bomb down now!" use|r |T133710:0|t[The Bitter Pill]
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
    >>Click the |cRXP_PICK_Magnetic Stones|r then loot the |cRXP_LOOT_Obsidium Meteorites|r which fall down
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
    >>|cRXP_WARN_Take the |cRXP_FRIENDLY_Hyjal Wisp|r following you to a Fire Portal|r
    >>|cRXP_WARN_Kill the mobs that come out of it. Ensure the |cRXP_FRIENDLY_Hyjal Wisp|r doesn't die!|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29255 >>Turn in Embergris
    .target Avrilla
step
    .isQuestComplete 29257
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29257 >>Turn in Steal Magmolias
    .target Avrilla
step
    .isQuestComplete 29299
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29299 >>Turn in Some Like It Hot
    .target Avrilla
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
    .isQuestComplete 29263
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Damek Bloombeard|r
    .dailyturnin 29263 >> Turn in A Bitter Pill
    .target Damek Bloombeard
step
    .isQuestComplete 29278
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Damek Bloombeard|r
    .dailyturnin 29278 >> Turn in Living Obsidium
    .target Damek Bloombeard
step
    .isQuestComplete 29295
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Damek Bloombeard|r
    .dailyturnin 29295 >> Turn in The Bigger They Are
    .target Damek Bloombeard
step
    .isQuestComplete 29297
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Damek Bloombeard|r
    .dailyturnin 29297 >> Turn in Bye Bye Burdy
    .target Damek Bloombeard
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

-- Checking if can turn in The Shadow Wardens before starting Druids quests for the day
step
    .goto 338,47.017,91.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malfurion Stormrage|r
    .accept 29214 >>Accept The Shadow Wardens
    .target Malfurion Stormrage
step
    #completewith THB
    .goto 338,53.026,83.693
    .zone 198 >> Take the Portal to Mount Hyjal
step
    .isQuestComplete 29214
    .goto 198,26.799,62.157
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Saynna Stormrunner|r
    .turnin 29214 >>Turn in The Shadow Wardens
    .target Captain Saynna Stormrunner

-- Beginning of Wardens questline if turned in
step
    #label THB
    .isQuestTurnedIn 29214
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    >>|cRXP_WARN_NOTE: If you just turned in [The Shadow Wardens] quest and |cRXP_FRIENDLY_Matoclaw|r isn't offering you this quest yet, you can only accept it after the daily quests have reset for the day. Check again tomorrow|r
    .target Matoclaw
    .accept 29215 >>Accept The Hunt Begins
step
    #completewith ITF
    .goto 198,27.484,56.394
    .zone 338 >> Go through the Portal to the Firelands
step
    .isOnQuest 29215
    .goto 338,47.584,90.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Saynna Stormrunner|r
    .turnin 29215 >>Turn in The Hunt Begins
    .target Captain Saynna Stormrunner
step
    #completewith next
    .goto 338,57.02,66.92,40,0
    .goto 338,71.30,38.43
    .subzone 5744 >> Travel to Wildflame Point
step
    .isQuestTurnedIn 29215
    .goto 338,71.309,38.430
    >>Kill a |cRXP_ENEMY_Druid of the Flame|r. It will drop a |cRXP_PICK_Dried Acorn|r on the ground
    >>|cRXP_WARN_You must kill |cRXP_ENEMY_Druids of the Flame|r in Wildflame Point. The ones in the Ashen Fields won't count|r
    >>Click the |cRXP_PICK_Dried Acorn|r on the ground
    .accept 29245 >> Accept The Mysterious Seed
    .mob Druid of the Flame
step
    .isQuestTurnedIn 29215
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avrilla|r
    .turnin 29245 >> Turn in The Mysterious Seed
    .accept 29249 >> Accept Planting Season
    .target Avrilla
step
    .isOnQuest 29249
    .goto 338,53.527,90.736
    .cast 8386,6477,6478 >> Click the |cRXP_PICK_Un'Goro Soil|r on the ground
    .timer 10,Planting Season RP
step
    .isQuestTurnedIn 29215
    .goto 338,53.527,90.736
    >>|cRXP_WARN_Wait out the RP|r
    .complete 29249,1 -- Acorn Planted 1/1
step
    .isQuestTurnedIn 29215
    >>Click the Quest Turn in Pop-Up in your Questlog.
    .turnin 29249 >> Turn in Planting Season
    .accept 29254 >> Accept Little Lasher
    .target Avrilla
step
    .isQuestTurnedIn 29215
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avrilla|r
    .turnin 29254 >> Turn in Little Lasher
    .target Avrilla
step
    .isQuestTurnedIn 29215
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avrilla|r
    .daily 29255,29257,29299 >>Accept whichever random daily quest is offered
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
    >>Kill |cRXP_ENEMY_Charred Soldiers|r and |cRXP_ENEMY_Charred Vanquishers|r. Loot them for their |cRXP_LOOT_Embergris|r
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
    >>Loot the |cRXP_LOOT_Magmolia|r inside of the small lava pools
    >>|cRXP_WARN_If a |cRXP_ENEMY_Lava Burster|r spawns after looting one, kill it and loot it for the|r |cRXP_LOOT_Magmolia|r
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
    >>|cRXP_WARN_Take your |cRXP_FRIENDLY_Crimson Lasher|r and fight|r |cRXP_ENEMY_Emberspit Scorpions|r << !Hunter
    >>|cRXP_WARN_Cast|r |T135834:0|t[Freezing Trap] |cRXP_WARN_on a |cRXP_ENEMY_Emberspit Scorpion|r. It will cast|r |T135826:0|t[Ember Pools] |cRXP_WARN_continously while your |cRXP_FRIENDLY_Crimson Lasher|r drinks them up, letting you complete this daily with only one|r |cRXP_ENEMY_Emberspit Scorpion|r << Hunter
    >>|cRXP_WARN_The |cRXP_ENEMY_Emberspit Scorpions|r will cast|r |T135826:0|t[Ember Pools] |cRXP_WARN_which your |cRXP_FRIENDLY_Crimson Lasher|r will drink|r
    .complete 29299,1 -- Help the Crimson Lasher Drink from Ember Pools (6)
    .mob Emberspit Scorpion
step
    .isQuestComplete 29255
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29255 >>Turn in Embergris
    .target Avrilla
step
    .isQuestComplete 29257
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29257 >>Turn in Steal Magmolias
    .target Avrilla
step
    .isQuestComplete 29299
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29299 >>Turn in Some Like It Hot
    .target Avrilla
step
    #label ITF
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
    .target Windcaller Nordrala
    .target Windcaller Voramus
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
step
    .isQuestTurnedIn 29272
    .goto 338,41.772,61.475
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anren Shadowseeker|r
    >>|cRXP_WARN_NOTE: If |cRXP_FRIENDLY_Anren Shadowseeker|r did not spawn here underground, skip this step|r
    .daily 29274 >>Accept Hounds of Shannox
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
    >>Kill |cRXP_ENEMY_Flamewaker Sentinels|r, |cRXP_ENEMY_Flamewaker Hunters|r and |cRXP_ENEMY_Flamewaker Shaman|r
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
    >>Kill |cRXP_ENEMY_Charhounds|r. Loot them for their |cRXP_LOOT_Houndbone Ash|r
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
    >>Loot the |cRXP_LOOT_Luciferns|r on the ground
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
    .goto 338,35.985,58.974
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tholo Whitehoof|r
    .daily 29273 >>Accept How Hot
    .disablecheckbox
    .target Tholo Whitehoof
    .questcount <1,29273,29274
step
    .isQuestComplete 29265
    .goto 338,36.299,56.344
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Choluna|r
    .dailyturnin 29265 >>Turn in Fire Flowers
    .target Choluna
step -- Ricket @ DRUIDS
    .isQuestTurnedIn 29282
    .goto 338,36.251,56.586
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ricket|r
    >>|cRXP_WARN_Skip this step if she is not here|r
    .daily 29263,29278,29295,29297 >> Accept whichever random daily quest is offered
    .target Ricket
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
    .subzoneskip 5748
step
    #optional
    #sticky
    .isOnQuest 29287,29288,29293,29296,29273
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
    >>Kill |cRXP_ENEMY_Obsidium Punishers|r. Loot their |cRXP_LOOT_Living Obsidium Chip|r debris on the ground after
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
    #optional
    #requires ObsidiumChips
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
    .isQuestTurnedIn 29284
    .goto 338,36.299,56.344
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Choluna|r
    .daily 29305 >>Accept Strike at the Heart
    .target Choluna
step
    .isOnQuest 29305
    .goto 338,50.343,23.036
    >>Kill one of the |cRXP_ENEMY_Lieutenants of Flame|r
    .complete 29305,1 -- Lieutenant of Flame slain
    .mob Ancient Charscale
    .mob Ancient Smoldering Behemoth
    .mob Ancient Firelord
    .mob Cinderweb Queen
    .mob Devout Harbinger
 step
    .isQuestComplete 29305
    .goto 338,43.033,80.597
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skylord Omnuron|r
    .dailyturnin 29305 >>Turn in Strike at the Heart
    .target Skylord Omnuron
step
    .isQuestComplete 29295
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Damek Bloombeard|r
    .dailyturnin 29295 >> Turn in The Bigger They Are
    .target Damek Bloombeard
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

--Calling the Ancients unlock
step
    .isQuestTurnedIn 29182 -- Druids prereq
    .isQuestTurnedIn 29215 -- Warden prereq
    .goto 338,44.434,88.790
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Varlan Highbough|r
    .accept 29283 >>Accept Calling the Ancients
    .target Varlan Highbough
step
    #optional
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >> Take the Portal to Mount Hyjal
    .zoneskip 338,1
step
    .isQuestComplete 29283
    .goto 198,26.005,61.302
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elderlimb|r
    .turnin 29283 >>Turn in Calling the Ancients
    .target Elderlimb
step
    .isQuestTurnedIn 29283
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .accept 29284 >>Accept Aid of the Ancients
step
    #optional
    #completewith WardenEnd
    .isOnQuest 29284
    .goto 198,27.484,56.394
    .zone 338 >> Go through the Portal to the Firelands
step
    .isOnQuest 29284
    .goto 338,43.812,88.964
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elderlimb|r
    .turnin 29284 >>Turn in Aid of the Ancients
    .target Elderlimb
step
    .isQuestTurnedIn 29284
    .goto 338,36.299,56.344
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Choluna|r
    .daily 29305 >>Accept Strike at the Heart
    .target Choluna
step
    .isOnQuest 29305
    .goto 338,50.343,23.036
    >>Kill one of the |cRXP_ENEMY_Lieutenants of Flame|r
    .complete 29305,1 -- Lieutenant of Flame slain
    .mob Ancient Charscale
    .mob Ancient Smoldering Behemoth
    .mob Ancient Firelord
    .mob Cinderweb Queen
    .mob Devout Harbinger
 step
    .isQuestComplete 29305
    .goto 338,43.033,80.597
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skylord Omnuron|r
    .dailyturnin 29305 >>Turn in Strike at the Heart
    .target Skylord Omnuron
--Complete Calling the Ancients unlock

--Additional Armaments unlock
step
    .isQuestTurnedIn 29182 -- Druids prereq
    .isQuestTurnedIn 29215 -- Warden prereq
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Damek Bloombeard|r
    .accept 29281 >>Accept Additional Armaments
    .target Damek Bloombeard
step
    #optional
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >> Take the Portal to Mount Hyjal
    .zoneskip 338,1
step
    .isQuestComplete 29281
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .turnin 29281 >>Turn in Additional Armaments
    .accept 29282 >>Accept Well Armed
step
    .isQuestTurnedIn 29281
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .accept 29282 >>Accept Well Armed
step
    #optional
    #completewith next
    .isOnQuest 29282
    .goto 198,27.484,56.394
    .zone 338 >> Go through the Portal to the Firelands
step
    .isOnQuest 29282
    .goto 338,46.758,90.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ricket|r
    .target Ricket
    .turnin 29282 >>Turn in Well Armed
step
    .isQuestTurnedIn 29282
    .goto 338,46.758,90.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ricket|r
    .daily 29263,29278,29295,29297 >> Accept whichever random daily quest is offered
    .target Ricket
step -- 29263 A Bitter Pill
    .isOnQuest 29263
    #loop
    .goto 338,43.8,46.8,50,0
    .goto 338,53.6,41.8,50,0
    .goto 338,55.6,54.6,50,0
    .goto 338,44.8,54.4,50,0
    >>Click the |cRXP_PICK_Lava Bubbles|r inside the lava pools to summon a |cRXP_ENEMY_Subterranean Magma Worm|r
    .use 69759 >>|cRXP_WARN_When you see the warning message: "The worm is about to bite! Place the bomb down now!" use|r |T133710:0|t[The Bitter Pill]
    .complete 29263,1 -- Subterranean Magma Worm slain 1/1
    .mob Subterranean Magma Worm
step -- 29278 Living Obsidium
    .isOnQuest 29278
    #loop
    .goto 338,41.5,49.8,50,0
    .goto 338,46.6,43.1,50,0
    .goto 338,54.6,43.8,50,0
    .goto 338,51.5,51.2,50,0
    >>Click the |cRXP_PICK_Magnetic Stones|r then loot the |cRXP_LOOT_Obsidium Meteorites|r which fall down
    .complete 29278,1 -- Obsidium Meteorite (10)
    .target Magnetic Stone
step -- 29295 The Bigger They Are -- DRUIDS ONLY
    .isOnQuest 29295
    #loop
    .goto 338,29.7,28.5,50,0
    .goto 338,16.8,32.5,50,0
    .goto 338,19.5,49.5,50,0
    .goto 338,32.7,43.6,50,0
    >>Kill |cRXP_ENEMY_Obsidium Punishers|r. Loot their |cRXP_LOOT_Living Obsidium Chip|r debris on the ground after
    .complete 29295,1 -- Living Obsidium Chip (10)
    .mob Obsidium Punisher
step -- 29297 Bye Bye Burdy -- WARDENS ONLY
    .isOnQuest 29297
    #loop
    .goto 338,73.03,54.88,50,0
    .goto 338,73.82,38.28,50,0
    .goto 338,63.73,38.76,50,0
    .use 69832 >> |cRXP_WARN_Use the|r |T135129:0|t[Burd Sticker] |cRXP_WARN_on |cRXP_ENEMY_Druids of the Flame|r that are flying in the air|r
    .complete 29297,1 -- Druids of the Flame in Fire Crow form slain (3)
    .mob Druid of the Flame
step
    .isQuestComplete 29263
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Damek Bloombeard|r
    .dailyturnin 29263 >> Turn in A Bitter Pill
    .target Damek Bloombeard
step
    .isQuestComplete 29278
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Damek Bloombeard|r
    .dailyturnin 29278 >> Turn in Living Obsidium
    .target Damek Bloombeard
step
    .isQuestComplete 29295
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Damek Bloombeard|r
    .dailyturnin 29295 >> Turn in The Bigger They Are
    .target Damek Bloombeard
step
    .isQuestComplete 29297
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Damek Bloombeard|r
    .dailyturnin 29297 >> Turn in Bye Bye Burdy
    .target Damek Bloombeard
--Complete Additional Armaments unlock

--Filling the Moonwell unlock
step
    .goto 338,44.087,86.321
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ayla Shadowstorm|r
    .accept 29279 >>Accept Filling the Moonwell
    .target Ayla Shadowstorm
step
    #optional
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >> Take the Portal to Mount Hyjal
    .zoneskip 338,1
step
    .isQuestComplete 29279
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    .turnin 29279 >> Turn in Filling the Moonwell
    .accept 29280 >> Accept Nourishing Waters
    .target Matoclaw
step
    .isQuestTurnedIn 29279
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    .accept 29280 >> Accept Nourishing Waters
    .target Matoclaw
step
    #optional
    #completewith next
    .isOnQuest 29280
    .goto 198,27.484,56.394
    .zone 338 >> Go through the Portal to the Firelands
step
    .isOnQuest 29280
    .goto 338,44.087,86.321
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ayla Shadowstorm|r
    .target Ayla Shadowstorm
    .turnin 29280 >>Turn in Nourishing Waters
step
    .isQuestTurnedIn 29280
    .goto 338,47.022,91.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malfurion Stormrage|r
    .target Malfurion Stormrage
    .accept 29203 >> Accept Into the Depths
step
    .isOnQuest 29203
    #completewith next
    .goto 338,57.491,49.532,15 >>Enter the Igneous Depths
step
    .isOnQuest 29203
    .goto 338,64.615,59.216
    >>Kill |cRXP_ENEMY_Leyara|r
    .complete 29203,1 -- Leyara slain 1/1
    .mob Leyara
step
    .isQuestComplete 29203
    #completewith next
    .goto 338,57.491,49.532,15 >>Exit the Igneous Depths
    .subzoneskip 5741,1
step
    .isQuestComplete 29203
    .goto 338,47.022,91.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malfurion Stormrage|r
    .target Malfurion Stormrage
    .turnin 29203 >> Turn in Into the Depths
step
    .isQuestTurnedIn 29203
    >>|cRXP_WARN_You will have now received mail from |cRXP_FRIENDLY_Theresa Barkskin|r with a|r |T514925:0|t[|cRXP_LOOT_Smoke-Stained Locket|r]
    .use 69854 >>|cRXP_WARN_Use the|r |T514925:0|t[|cRXP_LOOT_Smoke-Stained Locket|r] |cRXP_WARN_to start the quest|r
    .collect 69854,1,29298,1 -- Smoke-Stained Locket (1)
    .accept 29298 >> Accept A Smoke-Stained Locket
step
    #optional
    #completewith SecretsWithin
    .goto 338,53.026,83.693
    .zone 198 >> Take the Portal to Mount Hyjal
    .zoneskip 338,1
step
    .isQuestTurnedIn 29203
    #completewith next
    .zone Moonglade >> Travel to Moonglade
step
    #label SecretsWithin
    .isQuestTurnedIn 29203
    .goto Moonglade,51.685,45.098
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rabine Saturna|r
    .turnin 29298 >> Turn in A Smoke-Stained Locket
    .accept 29302 >> Accept Unlocking the Secrets Within
    .timer 42,Unlocking the Secrets Within RP
    .target Rabine Saturna
step
    .isQuestTurnedIn 29203
    >>|cRXP_WARN_Wait out the RP|r
    .complete 29302,1 -- Look into Leyara's memories 1/1
step
    .isQuestTurnedIn 29203
    .goto Moonglade,51.685,45.098
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rabine Saturna|r
    .turnin 29302 >> Turn in Unlocking the Secrets Within
    .accept 29303 >> Accept Tragedy and Family
    .target Rabine Saturna
step
    .isOnQuest 29303
    #completewith next
    .zone Ashenvale >> Travel to Ashenvale
step
    .isOnQuest 29303
    .goto Ashenvale,40.501,53.281
    .cast 6247 >> Click the |cRXP_PICK_Night Elf Grave|r
    .timer 48,Tragedy and Family RP
    .skipgossip
step
    .isOnQuest 29203
    .goto Ashenvale,40.501,53.281
    >>|cRXP_WARN_Wait out the RP|r
    .complete 29303,1 -- Look deeper into Leyara's memories 1/1
    .skipgossip
step
    .isQuestTurnedIn 29203
    >>Click the Quest Turn in Pop-Up in your Questlog.
    .turnin 29303 >> Turn in Tragedy and Family
    .accept 29310 >> Accept The Tipping Point
step
    .isOnQuest 29310
    #completewith next
    .zone 198 >> Travel to Mount Hyjal
step
    .isOnQuest 29310
    .goto 198,7.561,34.582
    .cast 6247 >> Click the |cRXP_PICK_Small Gravestone|r
    .timer 59,The Tipping Point RP
    .skipgossip
step
    .isOnQuest 29310
    .goto 198,7.561,34.582
    >>|cRXP_WARN_Wait out the RP|r
    .complete 29310,1 -- Look deeper into Leyara's memories 1/1
    .skipgossip
step
    .isQuestTurnedIn 29203
    >>Click the Quest Turn in Pop-Up in your Questlog.
    .turnin 29310 >> Turn in The Tipping Point
    .accept 29311 >> Accept The Rest is History
step
    #optional
    #completewith next
    .isOnQuest 29311
    .goto 198,27.484,56.394
    .zone 338 >> Go through the Portal to the Firelands
step
    .isOnQuest 29311
    .goto 338,47.022,91.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malfurion Stormrage|r
    .turnin 29311 >> Turn in The Rest is History
    .target Malfurion Stormrage
--Complete Filling the Moonwell

step
    #optional
    .isQuestTurnedIn 29284
    .isQuestTurnedIn 29282
    .isQuestTurnedIn 29311
    .goto 338,46.932,90.984
    +Congratulations on unlocking all of the Molten Front! Continue to complete either (|cRXP_ENEMY_2.5|r - The Molten Front + Druids) or (|cRXP_PICK_2.5|r - The Molten Front + Wardens) to earn more |T513195:0|t[Marks of the World Tree]
    >>|cRXP_FRIENDLY_Zen'Vorka|r sells |T133654:0|t[|cRXP_FRIENDLY_Zen'Vorka's Cache|r] for 30 |T513195:0|t[Marks of the World Tree] which can contain a random green quality item or the rare companion |T294481:0|t[|cFF0070FFScorched Stone|r]
    .target Zen'Vorka
step
    .isQuestAvailable 29214
    #label DruidEnd
    +|cRXP_WARN_You have completed all the available daily quests for today. Reload this same guide tomorrow (|r|cRXP_ENEMY_2.5|r - The Molten Front + Druids|cRXP_WARN_) to continue completing the daily quests until you have acquired enough|r |T513195:0|t[Marks of the World Tree]
step
    .isQuestTurnedIn 29214
    +|cRXP_WARN_You have unlocked [The Shadow Wardens] daily quests. You have the choice of either completing quests for Druids of the Talon or The Shadow Wardens. If you wish to complete quests for Druids of the Talon, reload this same guide tomorrow (|r|cRXP_ENEMY_2.5|r - The Molten Front + Druids|cRXP_WARN_) or (|r|cRXP_PICK_2.5|r - The Molten Front + Wardens|cRXP_WARN_) tomorrow if you wish to complete The Shadow Wardens quests. Both yield the same amount of|r |T513195:0|t[Marks of the World Tree]
]])

RXPGuides.RegisterGuide([[
#cata
#version 1
#group +The Molten Front
#name D_1_TSOM_Wardens
#displayname |cRXP_PICK_2.5|r - The Molten Front + Wardens

step
    #optional
    .isQuestAvailable 29214
    +|cRXP_WARN_You must first gather 150|r |T513195:0|t[Marks of the World Tree] |cRXP_WARN_and turn in the quest [The Shadow Wardens] in order to complete daily quests for them|r
    .turnin 29214 >>Turn in The Shadow Wardens
    .target Captain Saynna Stormrunner
    .goto 198,26.799,62.157
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
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r or |cRXP_FRIENDLY_Mylune|r
    .daily 29125,29147,29164,29101,29161 >> Accept whichever random daily quest is offered
    .disablecheckbox
    .questcount <1,29125,29147,29164,29101,29161
    .target Matoclaw
    .target Mylune
step
    #loop
    #label HyjalQuests
    .goto 198,27.527,62.510,5,0
    .goto 198,27.172,62.565,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r or |cRXP_FRIENDLY_Dorda'en Nightweaver|r
    .daily 29123,29149,29127,29163,29166,29247,29246,29248 >> Accept whichever random daily quest is offered
    .disablecheckbox
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
    .use 69234 >> |cRXP_WARN_Use the|r |T132172:0|t[Call the Flock] (1) |cRXP_WARN_ability near |cRXP_FRIENDLY_Alpine Songbirds|r, |cRXP_FRIENDLY_Forest Owls|r and|r |cRXP_FRIENDLY_Goldwing Hawks|r
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
    >>|cRXP_WARN_Stand under |cRXP_FRIENDLY_Tooga's|r shell to protect yourself from|r |cRXP_ENEMY_Nemesis'|r |T135830:0|t[Molten Fury] |cRXP_WARN_cast|r
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
    #completewith RayneFeathersong
    .isQuestComplete 29128
    .goto 198,27.484,56.394
    .zone 338 >> Go through the Portal to the Firelands
step
    .isQuestTurnedIn 29215
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avrilla|r
    .daily 29255,29257,29299 >>Accept whichever random daily quest is offered
    .target Avrilla
step
    #label RayneFeathersong
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rayne Feathersong|r
    .daily 29139,29143 >>Accept whichever random daily quest is offered
    .target Rayne Feathersong
step
    .isQuestTurnedIn 29282
    .goto 338,46.758,90.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ricket|r
    .daily 29263,29278,29295,29297 >> Accept whichever random daily quest is offered
    >>|cRXP_WARN_Skip this step if |cRXP_FRIENDLY_Ricket|r isn't offering a quest here today|r
    .target Ricket
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
    >>Kill |cRXP_ENEMY_Charred Soldiers|r and |cRXP_ENEMY_Charred Vanquishers|r. Loot them for their |cRXP_LOOT_Embergris|r
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
step -- Steal Magmolias 29257
    .isOnQuest 29257
    #label StealMagmolias
    #sticky
    #loop
    .goto 338,47.7,59.6,45,0
    .goto 338,41.5,43.6,45,0
    .goto 338,54.5,45.5,45,0
    >>Loot the |cRXP_LOOT_Magmolia|r inside of the small lava pools
    >>|cRXP_WARN_If a |cRXP_ENEMY_Lava Burster|r spawns after looting one, kill it and loot it for the|r |cRXP_LOOT_Magmolia|r
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
    >>|cRXP_WARN_Take your |cRXP_FRIENDLY_Crimson Lasher|r and fight|r |cRXP_ENEMY_Emberspit Scorpions|r << !Hunter
    >>|cRXP_WARN_Cast|r |T135834:0|t[Freezing Trap] |cRXP_WARN_on a |cRXP_ENEMY_Emberspit Scorpion|r. It will cast|r |T135826:0|t[Ember Pools] |cRXP_WARN_continously while your |cRXP_FRIENDLY_Crimson Lasher|r drinks them up, letting you complete this daily with only one|r |cRXP_ENEMY_Emberspit Scorpion|r << Hunter
    >>|cRXP_WARN_The |cRXP_ENEMY_Emberspit Scorpions|r will cast|r |T135826:0|t[Ember Pools] |cRXP_WARN_which your |cRXP_FRIENDLY_Crimson Lasher|r will drink|r
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
    >>Click the |cRXP_PICK_Lava Bubbles|r inside the lava pools to summon a |cRXP_ENEMY_Subterranean Magma Worm|r
    .use 69759 >>|cRXP_WARN_When you see the warning message: "The worm is about to bite! Place the bomb down now!" use|r |T133710:0|t[The Bitter Pill]
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
    >>Click the |cRXP_PICK_Magnetic Stones|r then loot the |cRXP_LOOT_Obsidium Meteorites|r which fall down
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
    >>|cRXP_WARN_Take the |cRXP_FRIENDLY_Hyjal Wisp|r following you to a Fire Portal|r
    >>|cRXP_WARN_Kill the mobs that come out of it. Ensure the |cRXP_FRIENDLY_Hyjal Wisp|r doesn't die!|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29255 >>Turn in Embergris
    .target Avrilla
step
    .isQuestComplete 29257
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29257 >>Turn in Steal Magmolias
    .target Avrilla
step
    .isQuestComplete 29299
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29299 >>Turn in Some Like It Hot
    .target Avrilla
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
    .isQuestComplete 29263
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Damek Bloombeard|r
    .dailyturnin 29263 >> Turn in A Bitter Pill
    .target Damek Bloombeard
step
    .isQuestComplete 29278
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Damek Bloombeard|r
    .dailyturnin 29278 >> Turn in Living Obsidium
    .target Damek Bloombeard
step
    .isQuestComplete 29295
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Damek Bloombeard|r
    .dailyturnin 29295 >> Turn in The Bigger They Are
    .target Damek Bloombeard
step
    .isQuestComplete 29297
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Damek Bloombeard|r
    .dailyturnin 29297 >> Turn in Bye Bye Burdy
    .target Damek Bloombeard
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
    .isQuestTurnedIn 29214
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Taldris Moonfall|r
    .daily 29205 >>Accept The Forlorn Spire
    .target General Taldris Moonfall
step
    .isOnQuest 29205
    .goto 338,54.503,70.816,10,0
    .goto 338,66.301,65.137
    >>Protect one of the |cRXP_FRIENDLY_Druids|r in taking the Forlorn Spire
    >>Kill the |cRXP_ENEMY_Pyrelord|r and |cRXP_ENEMY_Flamewatch Sentinels|r at the end
    .complete 29205,1 -- Druid Assault Group Protected
    .target Keeper Taldros
    .target Turak Runetotem
    .target Deldren Ravenelm
    .mob Pyrelord
    .mob Flamewatch Sentinel
step
    .goto 338,64.855,67.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Bladewing|r
    .dailyturnin 29205 >>Turn in The Forlorn Spire
    .daily 29211,29192 >>Accept whichever random daily quest is offered
    .target Marin Bladewing
step
    .isQuestTurnedIn 29272 -- Only offered if completed Druids questline
    .goto 338,66.259,66.141
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tholo Whitehoof|r
    >>|cRXP_WARN_Skip this step if he is not offering this quest|r
    .daily 29276 >>Accept The Flame Spider Queen
    .target Tholo Whitehoof
step -- Ricket @ WARDENS
    .isQuestTurnedIn 29282
    .goto 338,66.429,65.396
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ricket|r
    >>|cRXP_WARN_Skip this step if she is not here|r
    .daily 29263,29278,29295,29297 >> Accept whichever random daily quest is offered
    .target Ricket
step
    .goto 338,66.100,63.908
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deldren Ravenelm|r
    .daily 29189,29159,29160 >> Accept whichever two random daily quests are offered
    .disablecheckbox
    .target Deldren Ravenelm
    .questcount <2,29189,29159,29160
step -- Solar Core Destruction 29211
    .isOnQuest 29211
    #label SolarCore
    #sticky
    .goto 338,70.815,38.196
    >>Click the |cRXP_PICK_Solar Core|r
    .complete 29211,1 -- Solar Core detonated 1/1
step -- The Wardens are Watching 29192
    .isOnQuest 29192
    #label WardensWatching
    #sticky
    #loop
    .goto 338,71.6,44.6,30,0
    .goto 338,72.0,37.4,30,0
    .goto 338,68.8,41.4,30,0
    >>Attack a |cRXP_ENEMY_Druid of the Flame|r until it is weakened, then walk it into the |cRXP_FRIENDLY_Shadow Wardens|r trap
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
    >>Kill |cRXP_ENEMY_Cinderweb Creepers|r. Loot them for their |cRXP_LOOT_Flame Venom|r
    >>Kill |cRXP_ENEMY_Cinderweb Spinners|r. Loot them for their |cRXP_LOOT_Searing Web Fluid|r
    >>|cRXP_WARN_You will also collect their |cRXP_LOOT_Flame Venom|r and |cRXP_LOOT_Searing Web Fluid|r passively while dealing damage to them|r
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
    >>Kill the |cRXP_ENEMY_Cinderweb Cocoons|r
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
    >>Kill |cRXP_ENEMY_Cinderweb Creepers|r and |cRXP_ENEMY_Cinderweb Spinners|r
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
    >>Open the |cRXP_PICK_Cinderweb Egg Sacs|r. Loot them for the |cRXP_LOOT_Cinderweb Eggs|r
    .complete 29160,1 -- Cinderweb Egg (20)
step -- 29297 Bye Bye Burdy -- WARDENS ONLY
    .isOnQuest 29297
    #label ByeByeBurdy
    #sticky
    #loop
    .goto 338,73.03,54.88,50,0
    .goto 338,73.82,38.28,50,0
    .goto 338,63.73,38.76,50,0
    .use 69832 >> |cRXP_WARN_Use the|r |T135129:0|t[Burd Sticker] |cRXP_WARN_on |cRXP_ENEMY_Druids of the Flame|r that are flying in the air|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deldren Ravenelm|r
    .dailyturnin 29160 >> Turn in Egg-stinction
    .target Deldren Ravenelm
step
    .isQuestComplete 29159
    .goto 338,66.100,63.908
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deldren Ravenelm|r
    .dailyturnin 29159 >> Turn in Pyrorachnophobia
    .target Deldren Ravenelm
step
    .isQuestComplete 29189
    .goto 338,66.100,63.908
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deldren Ravenelm|r
    .dailyturnin 29189 >> Turn in Wicked Webs
    .target Deldren Ravenelm
step
    .isQuestComplete 29192
    .goto 338,64.855,67.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Bladewing|r
    .dailyturnin 29192 >>Turn in The Wardens are Watching
    .target Marin Bladewing
step
    .isQuestComplete 29211
    .goto 338,64.855,67.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Bladewing|r
    .dailyturnin 29211 >>Turn in Solar Core Destruction
    .target Marin Bladewing
step
    .goto 338,64.855,67.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Bladewing|r
    .daily 29210 >> Accept Enduring the Heat
    .target Marin Bladewing
step -- this step will autoskip if they completed 29276 earlier
    .goto 338,65.959,66.093
    .isQuestTurnedIn 29272 -- Only offered if completed Druids questline
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anren Shadowseeker|r
    >>|cRXP_WARN_Skip this step if he is not here|r
    .daily 29275 >>Accept Fandral's Methods
    .disablecheckbox
    .target Anren Shadowseeker
    .questcount <1,29275,29276
step -- Enduring the Heat 29210
    .isOnQuest 29210
    .goto 338,57.491,49.532
    >>|cRXP_WARN_Drop down into the Igneous Depths below|r
    .complete 29210,1 -- All Flame Runes Destroyed 1/1
step
    .isOnQuest 29275
    #completewith next
    >>Loot the |cRXP_LOOT_Flame Druid Staff|r, |cRXP_LOOT_Flame Druid Spellbook|r, |cRXP_LOOT_Flame Druid Reagent Pouch|r and |cRXP_LOOT_Flame Druid Idol|r
    >>|cRXP_WARN_These are scattered around throughout the Igneous Depths|r
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
    >>|cRXP_WARN_Follow the arrow around and click the |cRXP_PICK_Flame Protection Runes|r on the ground|r
    >>|cRXP_WARN_Clicking a |cRXP_PICK_Flame Protection Runes|r will kill all |cRXP_ENEMY_Unstable Flameragers|r attacking you|r
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
    >>Loot the |cRXP_LOOT_Flame Druid Staff|r, |cRXP_LOOT_Flame Druid Spellbook|r, |cRXP_LOOT_Flame Druid Reagent Pouch|r and |cRXP_LOOT_Flame Druid Idol|r
    >>|cRXP_WARN_These are scattered around throughout the Igneous Depths|r
    .complete 29275,1 -- Flame Druid Staff 1/1
    .complete 29275,2 -- Flame Druid Spellbook 1/1
    .complete 29275,3 -- Flame Druid Reagent Pouch 1/1
    .complete 29275,4 -- Flame Druid Idol 1/1
step
    .isQuestComplete 29210
    .goto 338,57.742,49.502
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theresa Barkskin|r
    .dailyturnin 29210 >> Turn in Enduring the Heat
    .target Theresa Barkskin
step
    .isQuestTurnedIn 29284
    .goto 338,57.518,49.478
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shalis Darkhunter|r
    .daily 29243 >>Accept Strike at the Heart
    .target Shalis Darkhunter
step
    .isOnQuest 29243
    .goto 338,50.343,23.036
    >>Kill one of the |cRXP_ENEMY_Lieutenants of Flame|r
    .complete 29243,1 -- Lieutenant of Flame slain
    .mob Ancient Charscale
    .mob Ancient Smoldering Behemoth
    .mob Ancient Firelord
    .mob Cinderweb Queen
    .mob Devout Harbinger
step
    .isQuestComplete 29276
    .goto 338,51.245,85.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anren Shadowseeker|r
    .dailyturnin 29276 >> Turn in The Flame Spider Queen
    .target Anren Shadowseeker
step
    .isQuestComplete 29275
    .goto 338,51.547,85.511
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tholo Whitehoof|r
    .dailyturnin 29275 >> Turn in Fandral's Methods
    .target Tholo Whitehoof
step
    .isQuestComplete 29297
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Damek Bloombeard|r
    .dailyturnin 29297 >> Turn in Bye Bye Burdy
    .target Damek Bloombeard
step
    .isQuestComplete 29243
    .goto 338,47.584,90.552
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Saynna Stormrunner|r
    .dailyturnin 29243 >>Turn in Strike at the Heart
    .target Captain Saynna Stormrunner

--Calling the Ancients unlock
step
    .isQuestTurnedIn 29182 -- Druids prereq
    .isQuestTurnedIn 29215 -- Warden prereq
    .goto 338,44.434,88.790
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Varlan Highbough|r
    .accept 29283 >>Accept Calling the Ancients
    .target Varlan Highbough
step
    #optional
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >> Take the Portal to Mount Hyjal
    .zoneskip 338,1
step
    .isQuestComplete 29283
    .goto 198,26.005,61.302
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elderlimb|r
    .turnin 29283 >>Turn in Calling the Ancients
    .target Elderlimb
step
    .isQuestTurnedIn 29283
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .accept 29284 >>Accept Aid of the Ancients
step
    #optional
    #completewith WardenEnd
    .isOnQuest 29284
    .goto 198,27.484,56.394
    .zone 338 >> Go through the Portal to the Firelands
step
    .isOnQuest 29284
    .goto 338,43.812,88.964
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elderlimb|r
    .turnin 29284 >>Turn in Aid of the Ancients
    .target Elderlimb
step
    .isQuestTurnedIn 29284
    .goto 338,51.713,81.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shalis Darkhunter|r
    .daily 29243 >>Accept Strike at the Heart
    .target Shalis Darkhunter
step
    .isOnQuest 29243
    .goto 338,50.343,23.036
    >>Kill one of the |cRXP_ENEMY_Lieutenants of Flame|r
    .complete 29243,1 -- Lieutenant of Flame slain
    .mob Ancient Charscale
    .mob Ancient Smoldering Behemoth
    .mob Ancient Firelord
    .mob Cinderweb Queen
    .mob Devout Harbinger
 step
    .isQuestComplete 29243
    .goto 338,47.584,90.552
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Saynna Stormrunner|r
    .dailyturnin 29243 >>Turn in Strike at the Heart
    .target Captain Saynna Stormrunner
--Complete Calling the Ancients unlock

--Additional Armaments unlock
step
    .isQuestTurnedIn 29182 -- Druids prereq
    .isQuestTurnedIn 29215 -- Warden prereq
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Damek Bloombeard|r
    .accept 29281 >>Accept Additional Armaments
    .target Damek Bloombeard
step
    #optional
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >> Take the Portal to Mount Hyjal
    .zoneskip 338,1
step
    .isQuestComplete 29281
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .turnin 29281 >>Turn in Additional Armaments
    .accept 29282 >>Accept Well Armed
step
    .isQuestTurnedIn 29281
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    .target Matoclaw
    .accept 29282 >>Accept Well Armed
step
    #optional
    #completewith next
    .isOnQuest 29282
    .goto 198,27.484,56.394
    .zone 338 >> Go through the Portal to the Firelands
step
    .isOnQuest 29282
    .goto 338,46.758,90.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ricket|r
    .target Ricket
    .turnin 29282 >>Turn in Well Armed
step
    .isQuestTurnedIn 29282
    .goto 338,46.758,90.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ricket|r
    .daily 29263,29278,29295,29297 >> Accept whichever random daily quest is offered
    .target Ricket
step -- 29263 A Bitter Pill
    .isOnQuest 29263
    #loop
    .goto 338,43.8,46.8,50,0
    .goto 338,53.6,41.8,50,0
    .goto 338,55.6,54.6,50,0
    .goto 338,44.8,54.4,50,0
    >>Click the |cRXP_PICK_Lava Bubbles|r inside the lava pools to summon a |cRXP_ENEMY_Subterranean Magma Worm|r
    .use 69759 >>|cRXP_WARN_When you see the warning message: "The worm is about to bite! Place the bomb down now!" use|r |T133710:0|t[The Bitter Pill]
    .complete 29263,1 -- Subterranean Magma Worm slain 1/1
    .mob Subterranean Magma Worm
step -- 29278 Living Obsidium
    .isOnQuest 29278
    #loop
    .goto 338,41.5,49.8,50,0
    .goto 338,46.6,43.1,50,0
    .goto 338,54.6,43.8,50,0
    .goto 338,51.5,51.2,50,0
    >>Click the |cRXP_PICK_Magnetic Stones|r then loot the |cRXP_LOOT_Obsidium Meteorites|r which fall down
    .complete 29278,1 -- Obsidium Meteorite (10)
    .target Magnetic Stone
step -- 29295 The Bigger They Are -- DRUIDS ONLY
    .isOnQuest 29295
    #loop
    .goto 338,29.7,28.5,50,0
    .goto 338,16.8,32.5,50,0
    .goto 338,19.5,49.5,50,0
    .goto 338,32.7,43.6,50,0
    >>Kill |cRXP_ENEMY_Obsidium Punishers|r. Loot their |cRXP_LOOT_Living Obsidium Chip|r debris on the ground after
    .complete 29295,1 -- Living Obsidium Chip (10)
    .mob Obsidium Punisher
step -- 29297 Bye Bye Burdy -- WARDENS ONLY
    .isOnQuest 29297
    #loop
    .goto 338,73.03,54.88,50,0
    .goto 338,73.82,38.28,50,0
    .goto 338,63.73,38.76,50,0
    .use 69832 >> |cRXP_WARN_Use the|r |T135129:0|t[Burd Sticker] |cRXP_WARN_on |cRXP_ENEMY_Druids of the Flame|r that are flying in the air|r
    .complete 29297,1 -- Druids of the Flame in Fire Crow form slain (3)
    .mob Druid of the Flame
step
    .isQuestComplete 29263
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Damek Bloombeard|r
    .dailyturnin 29263 >> Turn in A Bitter Pill
    .target Damek Bloombeard
step
    .isQuestComplete 29278
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Damek Bloombeard|r
    .dailyturnin 29278 >> Turn in Living Obsidium
    .target Damek Bloombeard
step
    .isQuestComplete 29295
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Damek Bloombeard|r
    .dailyturnin 29295 >> Turn in The Bigger They Are
    .target Damek Bloombeard
step
    .isQuestComplete 29297
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Damek Bloombeard|r
    .dailyturnin 29297 >> Turn in Bye Bye Burdy
    .target Damek Bloombeard
--Complete Additional Armaments unlock

--Filling the Moonwell unlock
step
    .goto 338,44.087,86.321
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ayla Shadowstorm|r
    .accept 29279 >>Accept Filling the Moonwell
    .target Ayla Shadowstorm
step
    #optional
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >> Take the Portal to Mount Hyjal
    .zoneskip 338,1
step
    .isQuestComplete 29279
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    .turnin 29279 >> Turn in Filling the Moonwell
    .accept 29280 >> Accept Nourishing Waters
    .target Matoclaw
step
    .isQuestTurnedIn 29279
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    .accept 29280 >> Accept Nourishing Waters
    .target Matoclaw
step
    #optional
    #completewith next
    .isOnQuest 29280
    .goto 198,27.484,56.394
    .zone 338 >> Go through the Portal to the Firelands
step
    .isOnQuest 29280
    .goto 338,44.087,86.321
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ayla Shadowstorm|r
    .target Ayla Shadowstorm
    .turnin 29280 >>Turn in Nourishing Waters
step
    .isQuestTurnedIn 29280
    .goto 338,47.022,91.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malfurion Stormrage|r
    .target Malfurion Stormrage
    .accept 29203 >> Accept Into the Depths
step
    .isOnQuest 29203
    #completewith next
    .goto 338,57.491,49.532,15 >>Enter the Igneous Depths
step
    .isOnQuest 29203
    .goto 338,64.615,59.216
    >>Kill |cRXP_ENEMY_Leyara|r
    .complete 29203,1 -- Leyara slain 1/1
    .mob Leyara
step
    .isQuestComplete 29203
    #completewith next
    .goto 338,57.491,49.532,15 >>Exit the Igneous Depths
    .subzoneskip 5741,1
step
    .isQuestComplete 29203
    .goto 338,47.022,91.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malfurion Stormrage|r
    .target Malfurion Stormrage
    .turnin 29203 >> Turn in Into the Depths
step
    .isQuestTurnedIn 29203
    >>|cRXP_WARN_You will have now received mail from |cRXP_FRIENDLY_Theresa Barkskin|r with a|r |T514925:0|t[|cRXP_LOOT_Smoke-Stained Locket|r]
    .use 69854 >>|cRXP_WARN_Use the|r |T514925:0|t[|cRXP_LOOT_Smoke-Stained Locket|r] |cRXP_WARN_to start the quest|r
    .collect 69854,1,29298,1 -- Smoke-Stained Locket (1)
    .accept 29298 >> Accept A Smoke-Stained Locket
step
    #optional
    #completewith SecretsWithin
    .goto 338,53.026,83.693
    .zone 198 >> Take the Portal to Mount Hyjal
    .zoneskip 338,1
step
    .isQuestTurnedIn 29203
    #completewith next
    .zone Moonglade >> Travel to Moonglade
step
    #label SecretsWithin
    .isQuestTurnedIn 29203
    .goto Moonglade,51.685,45.098
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rabine Saturna|r
    .turnin 29298 >> Turn in A Smoke-Stained Locket
    .accept 29302 >> Accept Unlocking the Secrets Within
    .timer 42,Unlocking the Secrets Within RP
    .target Rabine Saturna
step
    .isQuestTurnedIn 29203
    >>|cRXP_WARN_Wait out the RP|r
    .complete 29302,1 -- Look into Leyara's memories 1/1
step
    .isQuestTurnedIn 29203
    .goto Moonglade,51.685,45.098
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rabine Saturna|r
    .turnin 29302 >> Turn in Unlocking the Secrets Within
    .accept 29303 >> Accept Tragedy and Family
    .target Rabine Saturna
step
    .isOnQuest 29303
    #completewith next
    .zone Ashenvale >> Travel to Ashenvale
step
    .isOnQuest 29303
    .goto Ashenvale,40.501,53.281
    .cast 6247 >> Click the |cRXP_PICK_Night Elf Grave|r
    .timer 48,Tragedy and Family RP
    .skipgossip
step
    .isOnQuest 29203
    .goto Ashenvale,40.501,53.281
    >>|cRXP_WARN_Wait out the RP|r
    .complete 29303,1 -- Look deeper into Leyara's memories 1/1
    .skipgossip
step
    .isQuestTurnedIn 29203
    >>Click the Quest Turn in Pop-Up in your Questlog.
    .turnin 29303 >> Turn in Tragedy and Family
    .accept 29310 >> Accept The Tipping Point
step
    .isOnQuest 29310
    #completewith next
    .zone 198 >> Travel to Mount Hyjal
step
    .isOnQuest 29310
    .goto 198,7.561,34.582
    .cast 6247 >> Click the |cRXP_PICK_Small Gravestone|r
    .timer 59,The Tipping Point RP
    .skipgossip
step
    .isOnQuest 29310
    .goto 198,7.561,34.582
    >>|cRXP_WARN_Wait out the RP|r
    .complete 29310,1 -- Look deeper into Leyara's memories 1/1
    .skipgossip
step
    .isQuestTurnedIn 29203
    >>Click the Quest Turn in Pop-Up in your Questlog.
    .turnin 29310 >> Turn in The Tipping Point
    .accept 29311 >> Accept The Rest is History
step
    #optional
    #completewith next
    .isOnQuest 29311
    .goto 198,27.484,56.394
    .zone 338 >> Go through the Portal to the Firelands
step
    .isOnQuest 29311
    .goto 338,47.022,91.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malfurion Stormrage|r
    .turnin 29311 >> Turn in The Rest is History
    .target Malfurion Stormrage
--Complete Filling the Moonwell

step
    #optional
    .isQuestTurnedIn 29284
    .isQuestTurnedIn 29282
    .isQuestTurnedIn 29311
    .goto 338,46.932,90.984
    +Congratulations on unlocking all of the Molten Front! Continue to complete either (|cRXP_ENEMY_2.5|r - The Molten Front + Druids) or (|cRXP_PICK_2.5|r - The Molten Front + Wardens) to earn more |T513195:0|t[Marks of the World Tree]
    >>|cRXP_FRIENDLY_Zen'Vorka|r sells |T133654:0|t[|cRXP_FRIENDLY_Zen'Vorka's Cache|r] for 30 |T513195:0|t[Marks of the World Tree] which can contain a random green quality item or the rare companion |T294481:0|t[|cFF0070FFScorched Stone|r]
    .target Zen'Vorka

step
    #label WardenEnd
    +|cRXP_WARN_You have completed all the available daily quests for today. Reload this same guide tomorrow (|r|cRXP_PICK_2.5|r - The Molten Front + Wardens|cRXP_WARN_) to continue completing the daily quests until you have acquired enough|r |T513195:0|t[Marks of the World Tree]
]])
