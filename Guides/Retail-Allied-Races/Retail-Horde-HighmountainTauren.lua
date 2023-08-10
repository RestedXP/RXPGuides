RXPGuides.RegisterGuide([[
#df
#version 1
#group Allied Race Unlocks
#subgroup Highmountain Tauren
#name 1) Highmountain Tauren Unlock Questline
#displayname Highmountain Tauren Questline

<< Horde

step
    #completewith HighmountainStartQuestline
    .zone 85 >>Get to Orgrimmar
step
    .isOnQuest 49930
    .isQuestAvailable 49930
    .goto 85,53.23,90.47,10,0
    .goto 85,37.76,81.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .turnin 49930 >>Turn in The Call for Allies
    .target Ji Firepaw
step
    .isQuestAvailable 50242
    .goto 85,37.76,81.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .accept 50242 >>Accept A Choice of Allies
    .target Ji Firepaw
step
    .isOnQuest 50242
    >>Interact with the banners in any order
    .goto 85,37.65,81.43
    .complete 50242,1 -- Learn more about the Highmountain Tauren
    .complete 50242,2 -- Learn more about the nightborne
    .complete 50242,3 -- Learn more about the Maghar Orcs
    .complete 50242,4 -- Learn more about the Zandalari trolls
    .complete 50242,5 -- Learn more about the Vulpera
step
    .isQuestComplete 50242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .goto 85,37.65,81.44
    .turnin 50242 >>Turn in A Choice of Allies
    .target Ji Firepaw
step
    #label HighmountainStartQuestline
    .isQuestTurnedIn 50242
    .goto 85,37.65,81.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .accept 48066 >>Accept A Feast for Our Kin
    .target Ji Firepaw
step
    .isOnQuest 48066
    .goto 85,53.40,90.43,10,0
    .goto 85,58.51,91.26
    .zone 1163 >>Take the portal to Zuldazar
step
    .isOnQuest 48066
    .goto 1163,73.72,77.17
    .zone 88 >>Take the portal to Thunderbluff
step
    .isOnQuest 48066
    #completewith next
    .goto 88,30.21,30.05,10 >>Leave the cave
step
    .isOnQuest 48066
    .goto 88,61.61,52.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bain Bloodhoof|r
    .turnin 48066>>Turn in A Feast for Our Kin
    .target Bain Bloodhoof
step
    .isQuestTurnedIn 48066
    .goto 88,61.52,51.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bain Bloodhoof|r after a short roleplay
    .accept 48067 >>Accept Shadow Over Thunder Bluff
    .target Bain Bloodhoof
step
    >>Kill |cRXP_ENEMY_Dark Tendrils|r or |cRXP_ENEMY_Shadow of Uul|r
    .goto 88,56.02,48.32,25,0
    .goto 88,49.64,50.90,25,0
    .goto 88,49.82,36.89,25,0
    .goto 88,42.96,57.80,25,0
    .goto 88,38.18,53.12
    .complete 48067,1 --4/4 Dark Tendril slain
    .complete 48067,2 --12/12 Shadow of Uul slain
step
    .goto 88,42.18,57.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bain Bloodhoof|r next to you
    .turnin 48066>>Turn in Shadow Over Thunder Bluff
    .accept 49756 >>Accept Dark Forces
    .target Bain Bloodhoof
step
    >>Kill |cRXP_ENEMY_Qy'telek|r
    .goto 88,41.76,59.89
    .complete 49756,1 --1/1 Qy'telek slain
step
    .goto 88,42.18,57.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bain Bloodhoof|r
    .turnin 49756 >>Turn in Dark Forces
    .accept 48079 >>Accept Return to Highmountain
    .target Bain Bloodhoof
step << Mage
    .zoneskip 85
    .cast 3567>>Use Teleport: Orgrimmar
step
    .zoneskip 85
    .itemcount 65274,1
    .cooldown item,65274,>0,1
    .cast 89158>>Use the Cloak of Coordination
step
    .zoneskip 85
    .zone 627 >>Use the Dalaran Hearthstone if you have one (in your toy box)
step
    .zoneskip 627,1
    .goto 627,55.27,23.97
    .zone 85 >>Use the portal to Orgrimmar
step
    .zoneskip 85,1
    .goto 85,58.86,89.52
    .zone 630>>Use the portal to Azsuna
step
    .goto 652,54.92,63.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mayla Highmountain|r
    .turnin 48079 >>Turn in Return to Highmountain
    .target Mayla Highmountain
step
    .goto 652,68.49,73.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritwalker Graysky|r
    .accept 41884 >>Accept Dark Tales
    .target Spiritwalker Graysky
step
    .goto 650,38.51,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritwalker Graysky|r in Riverbend
    .turnin 41884 >>Turn in Dark Tales
    .accept 41764 >>Accept Walking in Their Footsteps
    .target Spiritwalker Graysky
step
    .goto 650,38.53,69.18
    >>Interact with the Water of Vision
    .complete 41764,1 --1/1 Water of Vision used
step
    >>Kill |cRXP_ENEMY_Shadow Lurkers|r and |cRXP_ENEMY_Shadows of Uul|returned
    .goto 650,40.12,71.59,25,0
    .goto 650,41.51,72.60,25,0
    .goto 650,43.75,74.11,12,0
    .goto 650,44.23,75.17,15,0
    .goto 650,45.21,76.24,20,0
    .complete 41764,2 --8/8 Shadow Lurker slain
    .complete 41764,3 --15/15 Shadow of Uul slain
    .mob Shadow Lurker
    .mob Shadow of Uul
step
    >>Place the Bitestone Ward upstairs
    .goto 650,44.23,75.17,15,0
    .goto 650,45.21,76.24,20,0
    .goto 650,46.29,74.35,20,0
    .goto 650,46.16,73.68
    .complete 41764,4 --1/1 Bitestone Ward placed
step
    .goto 650,38.51,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritwalker Graysky|r
    .turnin 41764 >>Turn in Walking in Their Footsteps
    .accept 48185 >>Accept Shadow of the Sepulcher
    .target Spiritwalker Graysky
step
    .goto 650,57.02,46.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritwalker Graysky|r
    .turnin 48185 >>Turn in Shadow of the Sepulcher
    .accept 41799 >>Accept Minions of the Darkness
    .target Spiritwalker Graysky
step
    .goto 650,57.05,46.16
    >>Interact with the Water of Vision
    .complete 41799,1 --1/1 Water of Vision used
step
    >>Kill |cRXP_ENEMY_Dark Spirits|r.
    >>Spam |T132312:0|t[Fury of the Phoenix] (1) or use |T1029585:0|t[Cyclonic Vortex] (2) when multiple mobs are around you
    .complete 41799,2 --12/12 Dark Spirit slain
    .goto 650,56.02,44.26,25,0
    .goto 650,54.76,45.12,25,0
    .goto 650,57.05,46.16,30,0
    .loop 30,650,56.02,44.26,54.76,45.12,57.05,46.16
    .mob Dark Spirit
step
    #completewith next
    .goto 650,54.98,44.11,10 >>Enter the cave
step
    >>Kill |cRXP_ENEMY_Shadowy Tendrils|r
    >>Spam |T132312:0|t[Fury of the Phoenix] (1)
    .goto 650,54.43,43.16,15,0
    .goto 650,55.07,41.90
    .complete 41799,3 --6/6 Shadowy Tendril slain
    .mob Shadowy Tendril
step
    >>Kill the |cRXP_ENEMY_Shadow of the Darkness|r
    >>Keep up 3 stacks of the dot with |T132312:0|t[Fury of the Phoenix] (1) and use |T1029585:0|t[Cyclonic Vortex] (2) on cooldown
    .complete 41799,4 --1/1 Shadow of the Darkness slain
    .goto 650,55.47,40.99
    .mob Shadow of the Darkness
step
    >>Place the Sepulcher Ward
    .complete 41799,5 --1/1 Sepulcher Ward placed
    .goto 650,54.74,40.63
step
    .goto 650,57.02,46.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritwalker Graysky|r
    .turnin 41799 >>Turn in Minions of the Darkness
    .accept 48190 >>Accept Huln's Mountain
    .target Spiritwalker Graysky
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritwalker Graysky|r in Snowblind Mesa
    .goto 650,53.33,64.01
    .turnin 48190 >>Turn in Huln's Mountain
    .accept 41800 >>Accept Servants of the Darkness
    .target Spiritwalker Graysky
step
    .goto 650,53.32,64.00
    >>Interact with |cRXP_FRIENDLY_Spiritwalker Graysky|r
    .complete 41800,1 --1/1 Water of Vision used
step
    >>Kill the |cRXP_ENEMY_Necrotic Defilers|r
    >>Use |T134174:0|t[Gore Charge] (3) on cooldown and spam |T644382:0|t[Wild Carve] (1)
    .goto 650,53.70,66.32,25,0
    .goto 650,52.99,66.76,25,0
    .goto 650,51.50,66.64,25,0
    .loop 30,650,53.70,66.32,52.99,66.76,,51.50,66.64
    .complete 41800,2 --10/10 Necrotic Defiler slain
    .mob Necrotic Defiler
step
    >>Kill |cRXP_ENEMY_Necrogg the Darkspear|r. He's patrolling down the mountain
    >>Use |T135127:0|t[Harpoon Stomp] (2) after the knockback
    .goto 650,53.00,69.40
    .complete 41800,3 --1/1 Necrogg the Darkspear slain
    .mob Necrogg the Darkspear
step
    >>Place the Snowmane Ward
    .goto 650,53.32,69.47
    .complete 41800,4 --1/1 Snowmane Ward placed
step
    .goto 650,57.02,46.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritwalker Graysky|r
    .turnin 41800 >>Turn in Servants of the Darkness
    .accept 48434 >>Accept How Fares Ebonhorn?
    .target Spiritwalker Graysky
step
    #completewith next
    .goto 750,49.30,46.09,5 >>Take the elevator
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritwalker Ebonhorn|r and |cRXP_FRIENDLY_Mayla Highmountain|r
    .turnin 48434 >>Turn in How Fares Ebonhorn?
    .goto 652,67.69,71.39
    .accept 41815 >>Accept Curse of the Necrodark
    .goto 652,68.85,71.08
    .target Spiritwalker Ebonhorn
    .target Mayla Highmountain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r and |cRXP_FRIENDLY_Jale Rivermane|r on top of the mountain
    .turnin 41815 >>Turn in Curse of the Necrodark
    .accept 41840 >>Accept Ice and Shadow
    .goto 650,56.49,89.23
    .accept 41882 >>Accept Whispers of the Darkness
    .goto 650,56.45,89.33
    .target Baine Bloodhoof
    .target Jale Rivermane
step
    #completewith HighmountainTaurenWhispersoftheDarkness
    >>Kill |cRXP_ENEMY_Necrodarks|r or |cRXP_ENEMY_Frozen Mists|r. Loot them for the |cRXP_LOOT_Shadowice Shards|r
    .complete 41840,1 --20/20 Shadowice Shard
step
    #title Protector freed 1/6
    >>Free the |cRXP_FRIENDLY_Highmountain Protector|r. They may attack you
    .goto 650,56.92,89.68
    .complete 41882,1,1 --1/6 Highmountain Protector freed
step
    #title Protector freed 2/6
    >>Free the |cRXP_FRIENDLY_Highmountain Protector|r. They may attack you
    .goto 650,56.83,88.47
    .complete 41882,1,2 --2/6 Highmountain Protector freed
step
    #title Protector freed 3/6
    >>Free the |cRXP_FRIENDLY_Highmountain Protector|r. They may attack you
    .goto 650,57.49,88.95
    .complete 41882,1,3 --3/6 Highmountain Protector freed
step
    #title Protector freed 4/6
    >>Free the |cRXP_FRIENDLY_Highmountain Protector|r. They may attack you
    .goto 650,57.36,90.01
    .complete 41882,1,4 --4/6 Highmountain Protector freed
step
    #title Protector freed 5/6
    >>Free the |cRXP_FRIENDLY_Highmountain Protector|r. They may attack you
    .goto 650,58.16,90.67
    .complete 41882,1,5 --5/6 Highmountain Protector freed
step
    #label HighmountainTaurenWhispersoftheDarkness
    #title Protector freed 6/6
    >>Free the |cRXP_FRIENDLY_Highmountain Protector|r. They may attack you
    .goto 650,57.61,91.11
    .complete 41882,1 --6/6 Highmountain Protector freed
step
    >>Kill |cRXP_ENEMY_Necrodarks|r or |cRXP_ENEMY_Frozen Mists|r. Loot them for the |cRXP_LOOT_Shadowice Shards|r
    >>|cRXP_WARN_|cRXP_ENEMY_Frozen Mists|r are the best source|r
    .complete 41840,1 --20/20 Shadowice Shard
    .goto 650,57.15,94.63,30,0
    .goto 650,54.48,91.85,30,0
    .goto 650,58.22,91.49,30,0
    .loop 30,650,57.15,94.63,54.48,91.85,,58.22,91.49
step
    .goto 650,57.55,92.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritwalker Ebonhorn|r
    .turnin 41840 >>Turn in Ice and Shadow
    .turnin 41882 >>Turn in Whispers of the Darkness
    .accept 41841 >>Accept The Final Ward
    .target Spiritwalker Ebonhorn
step
    #completewith next
    .goto 650,57.28,92.23,10 >>Enter the cave
step
    >>Place the Summit Ward
    .goto 650,56.50,91.45
    .complete 41841,1 --1/1 Place the Summit Ward
step
    .goto 650,56.82,92.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritwalker Ebonhorn|r
    .turnin 41841 >>Turn in The Final Ward
    .accept 48403 >>Accept The Darkness
    .target Spiritwalker Ebonhorn
step
    #completewith next
    .goto 650,57.28,92.23,10 >>Leave the cave
step
    >>Kill |cRXP_ENEMY_Uul'gyneth|r. |cRXP_WARN_You can pick up Baines Totem and throw it|r
    .goto 650,57.94,90.84
    .complete 48403,1 --1/1 Uul'gyneth slain
    .mob Uul'gyneth
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mayla Highmountain|r and |cRXP_FRIENDLY_Bain Bloodhoof|r
    .turnin 48403 >>Turn in The Darkness
    .goto 650,56.66,92.71
    .accept 48433 >>Accept Together We Are the Horde!
    .goto 650,56.70,92.77
    .target Mayla Highmountain
    .target Baine Bloodhoof
step << Mage
    .zoneskip 85
    .cast 3567>>Use Teleport: Orgrimmar
step
    .zoneskip 85
    .itemcount 65274,1
    .cooldown item,65274,>0,1
    .cast 89158>>Use the Cloak of Coordination
step
    .zoneskip 85
    .zone 627 >>Use the Dalaran Hearthstone if you have one (in your toy box)
step
    .zoneskip 627,1
    .goto 627,55.27,23.97
    .zone 85 >>Use the portal to Orgrimmar
step
    .goto 85,37.78,81.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .turnin 48433 >>Turn in Together We Are the Horde!
    .target Ji Firepaw
step
    .isQuestTurnedIn 48433
    +Congratulations! You've unlocked the Highmountain Tauren!
]])