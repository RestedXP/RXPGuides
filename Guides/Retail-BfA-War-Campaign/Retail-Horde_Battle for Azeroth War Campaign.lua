RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP BfA War Campaign
#name 01) Heart of Azeroth
#displayname Chapter 1 - Heart of Azeroth
#next 02) War Campaign Tiragarde Foothold

<< Horde

step
    .goto 1165,50.38,41.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthen Guardian|r
    .accept 53028 >>Accept A Dying World
    .target Earthen Guardian
step
    .isOnQuest 53028
    #completewith next
    .zone 81 >>Take the Portal to Silithus
step
    .goto 81,42.22,44.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magni Bronzebeard|r
    .turnin 53028 >>Turn in A Dying World
    .accept 51211 >>Accept The Heart of Azeroth
    .target Magni Bronzebeard
step
    >>Click on the |cRXP_PICK_Titan Translocator|r
    .goto 81,43.16,44.51
    .complete 51211,1 --1/1 Use device in Silithus  to travel to Chamber of the Heart
step
    .goto 1021,50.17,53.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magni Bronzebeard|r. Press "ESC" on your keyboard to skip the cinematic
    .complete 51211,3 --1/1 Speak to Magni within the Chamber of Heart
    .skipgossip 136907,1
    .target Magni Bronzebeard
step
    .goto 1021,50.17,53.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magni Bronzebeard|r
    .turnin 51211 >>Turn in The Heart of Azeroth
    .target Magni Bronzebeard

]])

RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP BfA War Campaign
#name 02) War Campaign Tiragarde Foothold
#displayname Chapter 2 - Tiragarde Foothold
#next 03) War Campaign Drustvar Foothold

<< Horde

step
    .zoneskip 1021,1
    .goto 1021,50.02,30.69
    .zone 81 >>Use the Titan Translocator
step
    .zoneskip 81,1
    .goto 81,41.61,45.20
    .zone 1163 >>Take the Portal to Zuldazar
step
    .goto 1164,40.28,71.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r inside The Great Seal
    .accept 52749 >>Accept The War Campaign
    .target Nathanos Blightcaller
step
    .isOnQuest 52749
    #completewith next
    .goto 1165,49.91,41.48,18 >>Leave The Great Seal
step
    .noflyable 862
    .isOnQuest 52749
    #completewith next
    .goto 1165,51.92,41.22
    .fly Port of Zandalar >>Fly to Port of Zandalar
step
    .noflyable 862
    .isOnQuest 52749
    #completewith next
    .goto 1165,52.42,84.91
    .home >>Set your Hearthstone to Spirits Be With You
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r on the boat
    .groundgoto 1165,50.26,99.98,10,0
    .goto 862,58.44,62.67
    .turnin 52749 >>Turn in The War Campaign
    .target Nathanos Blightcaller
step
    .isQuestAvailable 51803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .goto 862,58.44,62.67
    .accept 51803 >>Accept The Kul Tiras Campaign
    .target Nathanos Blightcaller
step
    .isQuestAvailable 51801 
    .isQuestTurnedIn 51803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .goto 862,58.44,62.67
    .accept 51979 >>Accept The Ongoing Campaign
    .target Nathanos Blightcaller
step
    .isQuestAvailable 51801 
    .isQuestTurnedIn 51979
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .goto 862,58.44,62.67
    .accept 52444 >>Accept The Final Foothold
    .target Nathanos Blightcaller
step
    >>Interact with the Kultiras Campaign table |cRXP_WARN_and select Tiragarde Sound|r. Click on the popup under your minimap to turn in the quest
    >>|cRXP_WARN_If you've accidently picked a different zone then select the specific zone guide from the guide list|r
    .accept 51800 >>Accept Foothold: Tiragarde Sound
    .turnin 51800 >>Turn in Foothold: Tiragarde Sound
    .complete 51803,2 --1/1 Choose a foothold
    .goto 862,58.44,62.62
step
    .goto 862,58.44,62.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .turnin 51803 >>Turn in The Kul Tiras Campaign
    .accept 51421 >>Accept Shiver Me Timbers
    .target Nathanos Blightcaller
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tattersail|r
    .complete 51421,1 --1/1 Speak with Tattersail to sail to Tiragarde Sound
    .goto 862,58.46,62.99
    .skipgossip
    .target Dread-Admiral Tattersail
step
    .goto 895,89.33,53.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Ty'jin|r
    .turnin 51421 >>Turn in Shiver Me Timbers
    .accept 51435 >>Accept Swashbuckling in Style
    .target Shadow Hunter Ty'jin
step
    .goto 895,89.46,53.67
    >>Loot the |cRXP_PICK_Pirate Garb|r on the ground
    .complete 51435,1 --1/1 Pirate Garb acquired
step
    .goto 895,89.33,53.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Ty'jin|r
    .turnin 51435 >>Turn in Swashbuckling in Style
    .accept 51436 >>Accept Parleyin' Wit Pirates
    .target Shadow Hunter Ty'jin
step
    #completewith next
    .goto 895,89.33,53.36
    .vehicle >>Click the |cRXP_PICK_Rope|r on the ground
    .timer 14,Parleyin' Wit Pirates RP
step
    .goto 895,88.22,51.17
    >>Wait out the RP
    .complete 51436,1 --1/1 Use the Mala's Fortune Rope
step
    .goto 895,88.21,51.11,-1
    .goto 895,87.31,49.99,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Ty'jin|r. Follow him
    .complete 51436,2 --1/1 Walk with Ty'jin
    .skipgossip
    .timer 65, Ty'jin Walk RP
    .target Shadow Hunter Ty'jin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Owings|r and |cRXP_FRIENDLY_Shadow Hunter Ty'jin|r
    .turnin 51436 >>Turn in Parleyin' Wit Pirates
    .accept 51437 >>Accept Spike the Punch
    .goto 895,87.31,49.99
    .accept 51439 >>Accept Cannonball Collection
    .goto 895,87.28,50.01
    .target First Mate Owings
    .target Shadow Hunter Ty'jin
step
    #completewith KegGrog
    >>Kill |cRXP_ENEMY_Fogsail Cannoneers|r. Loot them for their |cRXP_LOOT_Cannonballs|r
    .complete 51439,1 --3/3 Fogsail Cannonball
    .mob Fogsail Cannoneer
step
    #title Keg spiked 1/6
    .goto 895,87.20,50.36
    >>Click the |cRXP_PICK_Keg of Grog|r to spike it
    .complete 51437,1,1 --1/6 Keg of Grog spiked
step
    #title Keg spiked 2/6
    .goto 895,87.53,50.96
    >>Click the |cRXP_PICK_Keg of Grog|r to spike it
    .complete 51437,1,2 --2/6 Keg of Grog spiked
step
    #title Keg spiked 3/6
    .goto 895,87.73,51.59
    >>Click the |cRXP_PICK_Keg of Grog|r to spike it
    .complete 51437,1,3 --3/6 Keg of Grog spiked
step
    #title Keg spiked 4/6
    .goto 895,87.82,50.92
    >>Click the |cRXP_PICK_Keg of Grog|r to spike it
    .complete 51437,1,4 --4/6 Keg of Grog spiked
step
    #title Keg spiked 5/6
    .goto 895,88.01,50.76
    >>Click the |cRXP_PICK_Keg of Grog|r to spike it
    .complete 51437,1,5 --5/6 Keg of Grog spiked
step
    #label KegGrog
    #title Keg spiked 6/6
    .goto 895,88.27,50.74
    >>Click the |cRXP_PICK_Keg of Grog|r to spike it
    .complete 51437,1 --6/6 Keg of Grog spiked
step
    .goto 895,88.51,49.46,26,0
    .goto 895,87.16,49.58,26,0
    .goto 895,87.47,50.84,26,0
    .goto 895,87.76,50.49,26,0
    .goto 895,87.11,51.90,26,0
    .goto 895,87.30,52.93,26,0
    .loop 25,895,88.51,49.46,87.16,49.58,87.47,50.84,87.76,50.49,87.11,51.90,87.30,52.93,
    >>Kill |cRXP_ENEMY_Fogsail Cannoneers|r. Loot them for their |cRXP_LOOT_Cannonballs|r
    .complete 51439,1 --3/3 Fogsail Cannonball
    .mob Fogsail Cannoneer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Ty'jin|r and |cRXP_FRIENDLY_First Mate Owings|r
    .turnin 51439 >>Turn in Cannonball Collection
    .goto 895,87.28,50.01
    .turnin 51437 >>Turn in Spike the Punch
    .accept 51440 >>Accept A Change in Direction
    .goto 895,87.31,49.99
    .accept 51441 >>Accept Thar She Blows!
    .goto 895,87.28,50.01
    .target Shadow Hunter Ty'jin
    .target First Mate Owings
step
    #sticky
    #label FogRowboat
    >>Use the |T252185:0|t[Goblin-Engineered Hand Cannon] on the boats in the water
    .complete 51441,1,2 --3/3 Fogsail Rowboat sunk
    .use 160405
step
    .goto 895,87.47,49.98,10,0
    .goto 895,87.43,49.73,20,0
    .goto 895,87.29,49.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_ENEMY_Navigator Swink|r. Wait out his RP, then kill him
    .complete 51440,3 --1/1 Navigator Swink ordered
    .skipgossip
    .timer 13,Swink RP
    .mob Navigator Swink
step
    #requires FogRowboat
    #completewith KillianMbappe
    >>Use the |T252185:0|t[Goblin-Engineered Hand Cannon] on the boats in the water
    .complete 51441,1 --3/3 Fogsail Rowboat sunk
    .use 160405
step
    #requires FogRowboat
    .goto 895,87.83,50.41,8,0
    .goto 895,87.85,50.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_ENEMY_Boatswain Taryn|r. Wait out her RP, then kill her
    .complete 51440,1 --1/1 Boatswain Taryn ordered
    .skipgossip
    .mob Boatswain Taryn
step
    #label KillianMbappe
    .goto 895,87.00,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Killian|r
    .complete 51440,2 --1/1 Quartermaster Killian ordered
    .skipgossip
    .target Quartermaster Killian
step
    .goto 895,87.21,49.25
    >>Use the |T252185:0|t[Goblin-Engineered Hand Cannon] on the boats in the water
    .complete 51441,1 --3/3 Fogsail Rowboat sunk
    .use 160405
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Ty'jin|r and |cRXP_FRIENDLY_First Mate Owings|r
    .turnin 51441 >>Turn in Thar She Blows!
    .goto 895,87.28,50.01
    .turnin 51440 >>Turn in A Change in Direction
    .accept 51442 >>Accept I'm the Captain Now
    .goto 895,87.31,49.99
    .target Shadow Hunter Ty'jin
    .target First Mate Owings
step
    .goto 895,86.92,53.16
    >>Kill |cRXP_ENEMY_Rhenik|r inside the cave
    .complete 51442,1 --1/1 Captain Rhenik slain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Owings|r and |cRXP_FRIENDLY_Shadow Hunter Ty'jin|r
    >>Talk to Owings and Ty'jin
    .turnin 51442 >>Turn in I'm the Captain Now
    .goto 895,87.31,49.99
    .accept 51438 >>Accept Marking Our Territory
    .goto 895,87.28,50.01
    .target First Mate Owings
    .target Shadow Hunter Ty'jin
step
    .goto 895,87.47,50.41
    >>Click the |cRXP_PICK_banner|r to plant it. Press "Escape" on your keyboard to skip the cinematic
    .complete 51438,1 --1/1 Horde Banner planted
step
    .goto 895,87.28,50.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Ty'jin|r
    .turnin 51438 >>Turn in Marking Our Territory
    .turnin 51975 >>Turn in Champion: Shadow Hunter Ty'jin
    .accept 51984 >>Accept Return to Zuldazar
    .target Shadow Hunter Ty'jin
step
    .goto 895,87.84,51.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tGo outside. Talk to |cRXP_FRIENDLY_Erul Dawnbrook|r
    .complete 51984,1 --Speak to Erul Dawnbrook
    .skipgossip
    .target Erul Dawnbrook
step
    .goto 862,58.44,62.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .turnin 51984 >>Turn in Return to Zuldazar
    .target Nathanos Blightcaller
]])

RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP BfA War Campaign
#name 03) War Campaign Drustvar Foothold
#displayname Chapter 3 - Drustvar Foothold
#next 04) War Campaign Island Expedition

<< Horde

step
    .isQuestAvailable 51801 
    .isQuestAvailable 51803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .goto 862,58.44,62.67
    .accept 51803 >>Accept The Kul Tiras Campaign
    .target Nathanos Blightcaller
step
    .isQuestAvailable 51801 
    .isQuestTurnedIn 51803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .goto 862,58.44,62.67
    .accept 51979 >>Accept The Ongoing Campaign
    .target Nathanos Blightcaller
step
    .isQuestAvailable 51801 
    .isQuestTurnedIn 51979
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .goto 862,58.44,62.67
    .accept 52444 >>Accept The Final Foothold
    .target Nathanos Blightcaller
step
    .isQuestAvailable 51801 
    .isOnQuest 51979
    >>Interact with the Kultiras Campaign table |cRXP_WARN_and select Drustvar|r. Click on the popup under your minimap to turn in the quest
    >>|cRXP_WARN_If you've accidently picked a different zone then select the specific zone guide from the guide list|r
    .accept 51801 >>Accept Foothold: Drustvar
    .turnin 51801 >>Turn in Foothold: Drustvar
    .complete 51979,1 --1/1 Choose a foothold
    .goto 862,58.44,62.62
step
    .isQuestAvailable 51801 
    .isOnQuest 51803
    >>Interact with the Kultiras Campaign table |cRXP_WARN_and select Drustvar|r. Click on the popup under your minimap to turn in the quest
    >>|cRXP_WARN_If you've accidently picked a different zone then select the specific zone guide from the guide list|r
    .accept 51801 >>Accept Foothold: Drustvar
    .turnin 51801 >>Turn in Foothold: Drustvar
    .complete 51803,2 --1/1 Choose a foothold
    .goto 862,58.44,62.62
step
    .isQuestAvailable 51801 
    .isOnQuest 52444
    >>Interact with the Kultiras Campaign table |cRXP_WARN_and select Drustvar|r. Click on the popup under your minimap to turn in the quest
    >>|cRXP_WARN_If you've accidently picked a different zone then select the specific zone guide from the guide list|r
    .accept 51801 >>Accept Foothold: Drustvar
    .turnin 51801 >>Turn in Foothold: Drustvar
    .complete 52444,1 --1/1 Choose a foothold
    .goto 862,58.44,62.62
step
    .isOnQuest 52444
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .goto 862,58.44,62.67
    .turnin 52444 >>Turn in The Final Foothold
    .accept 51332 >>Accept A Trip Across the Ocean
    .target Nathanos Blightcaller
step
    .isOnQuest 51979
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .goto 862,58.44,62.67
    .turnin 51979 >>Turn in The Ongoing Campaign
    .accept 51332 >>Accept A Trip Across the Ocean
    .target Nathanos Blightcaller
step
    .isOnQuest 51803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .goto 862,58.44,62.67
    .turnin 51803 >>Turn in The Kul Tiras Campaign
    .accept 51332 >>Accept A Trip Across the Ocean
    .target Nathanos Blightcaller
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tGo down into the ship. Talk to |cRXP_FRIENDLY_Trade Prince Gallywix|r
    .goto 862,58.50,62.36,8,0
    .goto 862,58.45,62.64
    .turnin 51332 >>Turn in A Trip Across the Ocean
    .accept 51340 >>Accept Drustvar Ho!
    .target Trade Prince Gallywix
step
    #completewith next
    .goto 862,58.39,62.26,10,0
    .goto 862,58.55,62.72
    .gossipoption 49250 >>Go upstairs. Talk to |cRXP_FRIENDLY_Eitrigg|r
step
    .goto 862,58.55,62.72
    .skipgossip 2
    .complete 51340,1 --1/1 Speak with Eitrigg
    .target Eitrigg
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tattersail|r
    .complete 51340,2 --1/1 Speak with Tattersail to sail to Drustvar
    .goto 862,58.46,62.99
    .skipgossip 1
    .target Dread-Admiral Tattersail
step
    #completewith ZandalariTrollProfitandReconnaissanceA
    .noflyable 896
    .goto 896,19.14,43.31
    .fp >>Get the Anyport Flight Path
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r
    .goto 896,20.78,43.85
    .turnin 51340 >>Turn in Drustvar Ho!
    .accept 51224 >>Accept Profit and Reconnaissance
    .target Eitrigg
step
    .isOnQuest 51224
    .vehicle 137090 >>Mount |cRXP_FRIENDLY_Gallywix's War Trike|r
    .goto 896,20.73,43.75
    .target Gallywix's War Trike
step
    #label ZandalariTrollProfitandReconnaissanceA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilgewater Azerite Drudge|r. Wait for the RP
    .goto 896,21.09,44.85,10,0
    .goto 896,20.37,47.28,15,0
    .goto 896,22.28,46.32
    .complete 51224,1 --1/1 Board Gallywix's trike and search for a goblin scout
    .target Bilgewater Azerite Drudge
step
    .isOnQuest 51224
    .vehicle 137090 >>Mount |cRXP_FRIENDLY_Gallywix's War Trike|r
    .goto 896,22.28,46.32
    .target Gallywix's War Trike
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilgewater Azerite Drudge|r. Wait for the RP
    .goto 896,25.47,46.31
    .complete 51224,2 --1/1 Search deeper into the woods
    .target Bilgewater Azerite Drudge
step
    .isOnQuest 51224
    .vehicle 137090 >>Mount |cRXP_FRIENDLY_Gallywix's War Trike|r
    .goto 896,25.47,46.31
    .target Gallywix's War Trike
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilgewater Azerite Drudge|r. Wait for the RP
    .goto 896,29.52,54.84
    .complete 51224,3 --1/1 Find another goblin scout
    .target Bilgewater Azerite Drudge
step
    .isOnQuest 51224
    .vehicle 137090 >>Mount |cRXP_FRIENDLY_Gallywix's War Trike|r
    .goto 896,29.52,54.84
    .target Gallywix's War Trike
step
    >>Follow the arrow to the waypoint location
    .goto 896,32.09,54.48
    .complete 51224,4 --1/1 Find the final goblin scout
step
    .goto 896,32.32,54.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWait for the RP. Talk to |cRXP_FRIENDLY_Eitrigg|r
    .turnin 51224 >>Turn in Profit and Reconnaissance
    .accept 51231 >>Accept Wiccaphobia
    .target Eitrigg
step
    >>Kill the spawning |cRXP_ENEMY_witches|r and |cRXP_ENEMY_Sister Redweather|r
    .goto 896,32.32,54.57
    .complete 51231,1 --1/1 Protect Eitrigg and Gallywix
    .mob Sister Readweather
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r and |cRXP_FRIENDLY_Trade Prince Gallywix|r
    .turnin 51231 >>Turn in Wiccaphobia
    .goto 896,32.32,54.57
    .accept 51233 >>Accept I Hope There's No Witches in the Mountains
    .goto 896,32.35,54.59
    .target Eitrigg
    .target Trade Prince Gallywix
step
    .isOnQuest 51233
    .vehicle 137090 >>Mount |cRXP_FRIENDLY_Gallywix's War Trike|r
    .goto 896,32.33,54.73
    .target Gallywix's War Trike
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart Grapplehammer|r
    .goto 896,28.93,46.48,15,0
    .goto 896,28.21,44.45,15,0
    .goto 896,33.58,37.87
    .skipgossip
    .complete 51233,1 --1/1 Drive Eitrigg and Gallywix to the mountains
    .target Hobart Grapplehammer
step
    >>Follow the arrow up the mountain
    .goto 896,37.22,34.78,30,0
    .goto 896,37.68,31.08,30,0
    .goto 896,37.31,27.86
    .complete 51233,2 --1/1 Bring Eitrigg and Gallywix to Krazzlefrazz Outpost
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWait for the RP. Talk to |cRXP_FRIENDLY_Eitrigg|r and |cRXP_FRIENDLY_Hobart Grapplehammer|r
    .turnin 51233 >>Turn in I Hope There's No Witches in the Mountains
    .goto 896,37.23,27.19
    .accept 51234 >>Accept Krazzlefrazz Outpost
    .goto 896,36.90,27.11
    .target Eitrigg
    .target Hobart Grapplehammer
step
    >>Pick up the |cRXP_PICK_Kyante-Laser Embiggener|r. Use your [ExtraActionButton]
    .goto 896,36.80,26.37
    .complete 51234,1 --1/1 Supply Hut constructed
step
    >>Click on the |cRXP_PICK_Boom Button|r
    .goto 896,36.74,25.13
    .complete 51234,2 --1/1 Engineering Works constructed
step
    >>Click on the |cRXP_PICK_Plunger|r
    .goto 896,37.75,24.62
    .complete 51234,3 --1/1 Fishing Hut constructed
step
    >>Click on the |cRXP_PICK_Wormhole|r. Kill the |cRXP_ENEMY_Interdimensional Abomination|r. Then click on the |cRXP_PICK_Wormhole|r again
    .goto 896,37.62,25.50
    .complete 51234,4 --1/1 Inn constructed
    .skipgossip
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trade Prince Gallywix|r and |cRXP_FRIENDLY_Hobart Grapplehammer|r
    >>You can skip the upcoming cutscene with ESC.
    .turnin 51234 >>Turn in Krazzlefrazz Outpost
    .goto 896,37.18,27.20
    .turnin 51987 >>Turn in Champion: Hobart Grapplehammer
    .goto 896,36.90,27.11
    .accept 51985 >>Accept Return to Zuldazar
    .goto 896,37.18,27.19
    .target Trade Prince Gallywix
    .target Hobart Grapplehammer
step
    #completewith next
    .isOnQuest 51985
    .noflyable 896
    .goto 896,37.38,24.03
    .fp >>Get the Krazzlefrazz Outpost Flight Path
    .fly Anyport >>Fly to Anyport
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Swellthrasher|r
    .goto 896,20.60,43.34
    .skipgossip
    .complete 51985,1 --Speak to Swellthrasher in Anyport
    .target Swellthrasher
step
    .goto 862,58.44,62.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .turnin 51985 >>Turn in Return to Zuldazar
    .target Nathanos Blightcaller

]])

RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP BfA War Campaign
#name 04) War Campaign Island Expedition
#displayname Chapter 4 - Island Expedition
#next 05) War Campaign Stormsong Valley Foothold

<< Horde

step
    .isQuestAvailable 51994
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .goto 862,58.44,62.67
    .accept 51870 >>Accept Island Expedition
    .target Nathanos Blightcaller
step
    .isQuestAvailable 51994
    .goto 1165,44.48,95.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rez'okun|r
    .turnin 51870 >>Turn in Island Expedition
    .accept 51888 >>Accept Island Expedition
    .target Captain Rez'okun
step
    .isQuestAvailable 51994
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rez'okun|r
    .goto 1165,44.48,95.46
    .complete 51888,1 --1/1 Speak with Captain Rez'okun
    .skipgossip 123000,1
    .target Captain Rez'okun
step
    .isOnQuest 51888
    #sticky
    #label ZandalariTrollIslandExpedition
    >>Complete the Island Expedition scenario
    .complete 51888,2 --1/1 Explore the Uncharted Island
step
    .isOnQuest 51888
    >>Follow the arrow to the waypoint location
    .goto 1022,79.23,63.90
    .scenario 3838,1 --1/1 Investigate the Azerite
step
    .isOnQuest 51888
    #title Crystal mined 1/3
    >>Mine the |cRXP_PICK_Azerite Crystal|r
    .goto 1022,79.23,63.90
    .scenario 3839,1,1 --1/3 Mine Azerite Crystals
step
    .isOnQuest 51888
    #title Crystal mined 2/3
    >>Mine the |cRXP_PICK_Azerite Crystal|r
    .goto 1022,75.50,55.76
    .scenario 3839,1,2 --2/3 Mine Azerite Crystals
step
    .isOnQuest 51888
    #title Crystal mined 3/3
    >>Mine the |cRXP_PICK_Azerite Crystal|r
    .goto 1022,77.46,50.15
    .scenario 3839,1 --3/3 Mine Azerite Crystals
step
    .isOnQuest 51888
    >>Follow the arrow to the waypoint location
    .goto 1022,62.41,26.06
    .scenario 3840,1 --1/1 Investigate the second source of Azerite
step
    .isOnQuest 51888
    >>Kill the |cRXP_ENEMY_Encrusted Kingscuttler|r
    .goto 1022,62.41,26.06
    .scenario 3841,1 --1/1 Kil the Encrusted Kingscuttler
    .target Encrusted Kingscuttler
step
    .isOnQuest 51888
    >>Follow the arrow to the waypoint location
    .goto 1022,43.77,47.77
    .scenario 3842,1 --1/1 Investigate the third source of Azerite
step
    .isOnQuest 51888
    >>Kill |cRXP_ENEMY_Akakakoo|r or pick up |cRXP_PICK_Pouches/Sacks of Azerite|r
    .goto 1022,29.49,58.76,15,0
    .goto 1022,36.36,68.65,15,0
    .goto 1022,40.33,52.26,15,0
    .goto 1022,29.49,58.76
    .scenario 3843,1 --500/500 Take the Azerite from the Kunzen hozen tribe.
    .mob Akakakoo
    .mob Kunzen Hozen
    .mob Kunzen Hunter
    .mob Kunzen Leafeater
step
    .isOnQuest 51888
    >>Run back to the ship. You can skip the upcoming cutscene with ESC.
    .goto 1022,77.39,73.61
    .scenario 3844,1 --1/1 Escape from Uncharted Isle before the Horde arrive.
step
    .isQuestAvailable 51994
    .isOnQuest 51888
    #requires ZandalariTrollIslandExpedition
    .goto 1165,44.48,95.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rez'okun|r
    .turnin 51888 >>Turn in Island Expedition
    .target Captain Rez'okun
]])

RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP BfA War Campaign
#name 05) War Campaign Stormsong Valley Foothold
#displayname Chapter 5 - Stormsong Valley Foothold
#next 06) War Campaign Uniting Zandalar

<< Horde

step
    .isQuestAvailable 51802 
    .isQuestAvailable 51803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .goto 862,58.44,62.67
    .accept 51803 >>Accept The Kul Tiras Campaign
    .target Nathanos Blightcaller
step
    .isQuestAvailable 51802 
    .isQuestTurnedIn 51803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .goto 862,58.44,62.67
    .accept 51979 >>Accept The Ongoing Campaign
    .target Nathanos Blightcaller
step
    .isQuestAvailable 51802 
    .isQuestTurnedIn 51979
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .goto 862,58.44,62.67
    .accept 52444 >>Accept The Final Foothold
    .target Nathanos Blightcaller
step
    .isQuestAvailable 51802 
    .isOnQuest 52444
    >>Interact with the Kultiras Campaign table |cRXP_WARN_and select Stormsong Valley|r. Click on the popup under your minimap to turn in the quest
    .accept 51802 >>Accept Foothold: Stormsong Valley
    .turnin 51802 >>Turn in Foothold: Stormsong Valley
    .complete 52444,1 --1/1 Review final foothold
    .goto 862,58.44,62.62
    .turnin 51979 >>Turn in The Final Foothold
    .goto 862,58.44,62.67
step
    .isQuestAvailable 51802 
    .isOnQuest 51979
    >>Interact with the Kultiras Campaign table |cRXP_WARN_and select Stormsong Valley|r. Click on the popup under your minimap to turn in the quest
    .accept 51802 >>Accept Foothold: Stormsong Valley
    .turnin 51802 >>Turn in Foothold: Stormsong Valley
    .complete 51979,1 --1/1 Choose a foothold
    .goto 862,58.44,62.62
    .turnin 51979 >>Turn in The Ongoing Campaign
    .goto 862,58.44,62.67
step
    .isQuestAvailable 51802 
    .isOnQuest 51803
    >>Interact with the Kultiras Campaign table |cRXP_WARN_and select Stormsong Valley|r. Click on the popup under your minimap to turn in the quest
    .accept 51802 >>Accept Foothold: Stormsong Valley
    .turnin 51802 >>Turn in Foothold: Stormsong Valley
    .complete 51803,2 --1/1 Choose a foothold
    .goto 862,58.44,62.62
    .turnin 51803 >>Turn in The Kul Tiras Campaign
    .goto 862,58.44,62.67
step
    .isOnQuest 52444
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .goto 862,58.44,62.67
    .turnin 52444 >>Turn in The Final Foothold
    .accept 51526 >>Accept The Warlord's Call
    .target Nathanos Blightcaller
step
    .isOnQuest 51979
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .goto 862,58.44,62.67
    .turnin 51979 >>Turn in The Ongoing Campaign
    .accept 51526 >>Accept The Warlord's Call
    .target Nathanos Blightcaller
step
    .isOnQuest 51803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .goto 862,58.44,62.67
    .turnin 51803 >>Turn in The Kul Tiras Campaign
    .accept 51526 >>Accept The Warlord's Call
    .target Nathanos Blightcaller
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Warlord Cromush|r
    .turnin 51526 >>Turn in The Warlord's Call
    .accept 51532 >>Accept Storming In
    .goto 862,58.54,62.49
    .target High Warlord Cromush
step
    .groundgoto 862,58.38,62.77,8,0
    .goto 862,58.46,62.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tattersail|r
    .complete 51532,1 --1/1 Speak with Tattersail to sail to Stormsong Valley
    .skipgossip 1
    .target Dread-Admiral Tattersail
step
    .goto 942,51.11,21.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Warlord Cromush|r
    .turnin 51532 >>Turn in Storming In
    .accept 51643 >>Accept A Wall of Iron
    .target High Warlord Cromush
step
    #completewith next
    .goto 942,51.50,20.76,12,0
    .goto 942,51.18,21.12
    >>Go downstairs in the ship. Man the Cannon
    .complete 51643,1 --1/1 Cannon manned
step
    >>Use |T236179:0|t[Cannon Blast] (1) on Kul Tiran Forces
    .complete 51643,2 --40/40 Kul Tiran forces slain
step
    .goto 942,51.53,20.75,10,0
    .goto 942,51.10,20.81,10,0
    .goto 942,51.11,21.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tGo back up. Talk to |cRXP_FRIENDLY_High Warlord Cromush|r
    .turnin 51643 >>Turn in A Wall of Iron
    .accept 51536 >>Accept On the Hunt
    .target High Warlord Cromush
step
    #completewith next
    .noflyable 942
    .goto 942,51.00,21.26
    >>Click the Rope Coil on the ground to take a Landing craft to the Dock
    .complete 51536,1 --1/1 Landing Craft Boarded (1)
	.timer 12,Landing Craft RP
step
    .goto 942,50.88,26.59,30,0
    .goto 942,50.38,26.19
    >>Pull the Harpoon from |cRXP_FRIENDLY_Huelo|r
    .complete 51536,2 --1/1 Seawatch Point investigated
    .timer 28,On the Hunt RP
    .skipgossip
    .target Huelo
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWait for the RP. Talk to |cRXP_FRIENDLY_Rexxar|r
    .goto 942,50.40,26.17
    .turnin 51536 >>Turn in On the Hunt
    .accept 51587 >>Accept Onward!
    .target Rexxar
step
    .goto 942,52.04,29.97
    .complete 51587,1 --1/1 Travel with Rexxar
step
    #completewith next
    .goto 942,52.32,29.57,30,0
    .goto 942,52.10,29.96,30 >> Travel up the Mountain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Centurion Kaga Warmstone|r and |cRXP_FRIENDLY_Rexxar|r
    .turnin 51587 >>Turn in Onward!
    .accept 51691 >>Accept Almost Worth Saving
    .accept 51675 >>Accept Hunt Them Down
    .goto 942,51.65,29.83
    .accept 51674 >>Accept Douse the Flames
    .goto 942,51.68,29.89
    .target Centurion Kaga Warmstone
    .target Rexxar
step
    #completewith Barricade
    >>Kill |cRXP_ENEMY_Storm's Wake Footmen|r and |cRXP_ENEMY_Tidesages|r
    >>Loot the |cRXP_ENEMY_Tidesages|r for |T433449:0|t[|cRXP_LOOT_Fading Umbral Wands|r]. Use the Wands on the Flames. You can get 2 with one use
    .complete 51675,2 --8/8 Storm's Wake Footman slain
    .collect 160565,4,51674,0x1,-1 --Fading Umbral Wand (4)
    .complete 51674,1 --4/4 Flames doused
    .use 160565
    .mob Storm's Wake Tidesage
    .mob Storm's Wake Footmen
step
    #sticky
    #label Ara
    .goto 942,51.73,33.53
    >>Kill |cRXP_ENEMY_Captain Ara|r
    .complete 51675,1 --1/1 Captain Ara slain
    .mob Capatin Ara
step
    #label Barricade
    .goto 942,51.83,33.58
    .cast 272499 >>Destroy the |cRXP_PICK_Barricade|r behind |cRXP_ENEMY_Captain Ara|r
    .isOnQuest 51691
step
    #requires Ara
    .loop 30,942,51.90,32.68,51.80,32.36,51.30,31.63,50.63,30.88,50.23,30.99,50.05,31.76,50.06,32.19,49.72,32.95,49.87,33.13,50.64,33.54,51.06,33.04,51.90,32.68
    >>Kill |cRXP_ENEMY_Storm's Wake Footmen|r and |cRXP_ENEMY_Tidesages|r
    >>Loot the |cRXP_ENEMY_Tidesages|r for |T433449:0|t[|cRXP_LOOT_Fading Umbral Wands|r]. Use the Wands on the Flames. You can get 2 with one use
    >>Click the |cRXP_FRIENDLY_Frightened Peons|r to rescue them
    .complete 51675,2 --8/8 Storm's Wake Footman slain
    .collect 160565,4,51674,0x1,-1 --Fading Umbral Wand (4)
    .complete 51674,1 --4/4 Flames doused
    .complete 51691,1 --6/6 Frightened Peon rescued
    .use 160565
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Centurion Kaga Warmstone|r and |cRXP_FRIENDLY_Rexxar|r accross the small bridge
    .turnin 51675 >>Turn in Hunt Them Down
    .turnin 51691 >>Turn in Almost Worth Saving
    .goto 942,49.19,34.21
    .turnin 51674 >>Turn in Douse the Flames
    .accept 51696 >>Accept Reclaiming What's Ours
    .goto 942,49.24,34.26
    .target Centurion Kaga Warmstone
    .target Rexxar
step
    .goto 942,49.61,34.79
    >>Climb the tower. Click the |cRXP_PICK_Warhorn|r to sound it. Press "ESC" on your keyboard to skip the cinematic
    .complete 51696,1 --1/1 Warhorn of the Hold sounded
step
    .goto 942,52.13,33.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .turnin 51696 >>Turn in Reclaiming What's Ours
    .accept 51753 >>Accept Champion: Rexxar
    .turnin 51753 >>Turn in Champion: Rexxar
    .accept 51986 >>Accept Return to Zuldazar
    .target Rexxar
step
    .goto 942,51.43,33.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tGo outside. Talk to |cRXP_FRIENDLY_Muka Stormbreaker|r
    .complete 51986,1 --Speak to Muka Stormbreaker
    .skipgossip 2
    .target Muka Stormbreaker
step
    .goto 862,58.44,62.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .turnin 51986 >>Turn in Return to Zuldazar
    .target Nathanos Blightcaller
]])

RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP BfA War Campaign
#name 06) War Campaign Uniting Zandalar
#displayname Chapter 6 - Uniting Zandalar
#next 07) War Campaign Ready for War

<< Horde

step
    .isQuestAvailable 52451
    .goto 862,58.44,62.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .daily 52451,51916 >>Accept Uniting Zandalar
    .target Nathanos Blightcaller
step
    .isOnQuest 52451
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .turnin 52451 >>Turn in Uniting Zandalar
    .accept 51589 >>Accept Breaking Kul Tiran Will
    .goto 862,58.44,62.67
    .target Nathanos Blightcaller
step
    .isOnQuest 51916
    .isQuestComplete 51916
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .turnin 51916 >>Turn in Uniting Zandalar
    .goto 862,58.44,62.67
    .target Nathanos Blightcaller
step
    .isOnQuest 51916
    >>Complete quests in |cRXP_WARN_Zuldazar for the Zandalari Empire|r, in |cRXP_WARN_Nazmir for Talanji's Expedition|r and in |cRXP_WARN_Vol'dun for the Voldunai|r
    .complete 51916,1 -- Zandalari Empire (Friendly)
    .complete 51916,2 -- Talanji's Expedition (Friendly)
    .complete 51916,3 -- Voldunai (Friendly)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .turnin 51916 >>Turn in Uniting Zandalar
    .goto 862,58.44,62.67
    .target Nathanos Blightcaller
]])

RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP BfA War Campaign
#name 07) War Campaign Ready for War
#displayname Chapter 7 - Ready For War
#next 08) War Campaign Tides of Vengeance

<< Horde

step
    .goto 862,58.44,62.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTravel to Zuldazar. Talk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .accept 51589 >>Accept Breaking Kul Tiran Will
    .target Nathanos Blightcaller
step
    .goto 862,58.46,62.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tattersail|r
    .complete 51589,1 --1/1 Speak with Tattersail to sail to Tiragarde Sound
    .goto 862,58.46,62.99
    .skipgossip 135690,1
    .target Dread-Admiral Tattersail
step
    #completewith ZandalariTrollIntotheHeartofTiragarde
    .isOnQuest 51589
    .noflyable 895
    .goto 895,87.27,50.66
    .fp >>Get the Plunder Harbor Flight Path
step
    .goto 895,87.37,50.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .turnin 51589 >>Turn in Breaking Kul Tiran Will
    .accept 51590 >>Accept Into the Heart of Tiragarde
    .target Nathanos Blightcaller
step
    #label ZandalariTrollIntotheHeartofTiragarde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFollow the way. Talk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .groundgoto 895,87.59,51.03,13,0
    .groundgoto 895,87.00,51.78,13,0
    .groundgoto 895,83.53,49.96,32,0
    .groundgoto 895,70.54,49.03,25,0
    .goto 895,71.19,50.91
    .turnin 51590 >>Turn in Into the Heart of Tiragarde
    .accept 51591 >>Accept Our Mountain Now
    .target Nathanos Blightcaller
step
    >>Kill |cRXP_ENEMY_Roughneck Loggers|r and |cRXP_ENEMY_Roughneck Goons|r
    .complete 51591,1 --10/10 Roughneck slain
    .goto 895,71.99,51.91
    .mob Roughneck Logger
    .mob Roughneck Goon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r and |cRXP_FRIENDLY_Lilian Voss|r
    .turnin 51591 >>Turn in Our Mountain Now
    .accept 51592 >>Accept Making Ourselves at Home
    .goto 895,72.02,51.85
    .accept 51593 >>Accept Bridgeport Investigation
    .goto 895,72.05,51.77
    .target Nathanos Blightcaller
    .target Lilian Voss
step
    #completewith ZandalariTrollBridgeportInvestigation
    >>Pick up |cRXP_PICK_chests|r, |cRXP_PICK_chains|r and |cRXP_PICK_bolts|r
    .complete 51592,1 --7/7 Length of Chain
    .complete 51592,2 --7/7 Sail Canvas
step
    >>Run into the circle. Press "ESC" to skip the cutscene
    >>|cRXP_WARN_Avoid the elites|r
    .goto 895,75.31,51.13
    .complete 51593,3 --1/1 Investigate the outdoor workshop
step
    >>Run into the circle. Press "ESC" to skip the cutscene
    >>|cRXP_WARN_Avoid the elites|r
    .groundgoto 895,74.58,50.41,10,0
    .groundgoto 895,74.70,50.32,8,0
    .groundgoto 895,74.44,50.15,8,0
    .goto 895,74.62,49.68
    .complete 51593,1 --1/1 Investigate the harbor terrace
step
    #label ZandalariTrollBridgeportInvestigation
    >>Run into the circle. Press "ESC" to skip the cutscene
    .groundgoto 895,73.51,47.16,20,0
    .goto 895,73.46,48.24
    .complete 51593,2 --1/1 Investigate the watchpost cabin
step
    >>Pick up |cRXP_PICK_chests|r, |cRXP_PICK_chains|r and |cRXP_PICK_bolts|r
    .goto 895,75.31,51.13,20,0
    .goto 895,74.62,49.68,20,0
    .goto 895,75.31,51.13,20,0
    .goto 895,75.13,50.57
    .complete 51592,1 --7/7 Length of Chain
    .complete 51592,2 --7/7 Sail Canvas
step
    .groundgoto 895,71.75,48.95,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r and |cRXP_FRIENDLY_Lilian Voss|r
    .turnin 51592 >>Turn in Making Ourselves at Home
    .goto 895,72.02,51.85
    .turnin 51593 >>Turn in Bridgeport Investigation
    .accept 51594 >>Accept Explosives in the Foundry
    .goto 895,72.05,51.77
    .target Nathanos Blightcaller
    .target Lilian Voss
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian Voss|r
    .goto 895,77.50,49.93
    .turnin 51594 >>Turn in Explosives in the Foundry
    .accept 51595 >>Accept Explosivity
    .target Lilian Voss
step
    >>Use your [ExtraActionButton] next to the |cRXP_PICK_Pile of Ashvane Crates|r
    .goto 895,77.69,49.79
    .complete 51595,1 --1/1 Test bomb explosiveness
step
    .goto 895,77.50,49.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian Voss|r
    .turnin 51595 >>Turn in Explosivity
    .accept 51596 >>Accept Ammunition Acquisition
    .accept 51597 >>Accept Gunpowder Research
    .accept 51598 >>Accept A Bit of Chaos
    .target Lilian Voss
step
    #completewith ZandalariTrollGunpowderResearch
    >>Kill |cRXP_ENEMY_Worker|r and pick up |cRXP_PICK_Gunpowder Crates|r
    .complete 51598,1 --15/15 Ashvane workers slain
    .complete 51596,1 --8/8 Ashvane Explosives
    .mob Foundry Worker
    .mob Company Watchman
    .mob Company Enforcer
step
    >>Kill |cRXP_ENEMY_Taskmaster Williams|r. Loot him for the |cRXP_LOOT_Gunpowder Manufacturing Guide|r
    .goto 895,79.36,47.24,20,0
    .goto 895,79.09,46.97
    .complete 51597,2 --1/1 Gunpowder Manufacturing Guide
    .mob Taskmaster Williams
step
    #label ZandalariTrollGunpowderResearch
    >>Kill |cRXP_ENEMY_Forgemaster Farthing|r. Loot him for the |cRXP_LOOT_Ashvane Explosives Formula|r
    .groundgoto 895,81.73,46.54,25,0
    .goto 895,82.18,48.61
    .complete 51597,1 --1/1 Ashvane Explosives Formula
    .mob Forgemaster Farthing
step
    >>Kill |cRXP_ENEMY_Worker|r and pick up |cRXP_PICK_Gunpowder Crates|r
    .complete 51598,1 --15/15 Ashvane workers slain
    .complete 51596,1 --8/8 Ashvane Explosives
    .goto 895,81.81,49.59,20,0
    .goto 895,80.95,49.30,20,0
    .goto 895,79.55,50.17,35,0
    .loop 30,895,79.22,48.34,80.08,47.09,82.18,48.61,81.81,49.59,80.95,49.30,79.55,50.17
    .mob Foundry Worker
    .mob Company Watchman
    .mob Company Enforcer
step
    .goto 895,77.50,49.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian Voss|r
    .turnin 51596 >>Turn in Ammunition Acquisition
    .turnin 51597 >>Turn in Gunpowder Research
    .turnin 51598 >>Turn in A Bit of Chaos
    .accept 51599 >>Accept Death Trap
    .target Lilian Voss
step
    >>Place the |cRXP_PICK_crates|r
    .goto 895,74.23,52.94
    .complete 51599,1 --8/8 Gunpowder Crate placed
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian Voss|r
    .groundgoto 895,76.82,50.51,25,0
    .goto 895,77.00,49.19
    .turnin 51599 >>Turn in Death Trap
    .accept 51601 >>Accept The Bridgeport Ride
    .target Lilian Voss
step
    #completewith next
    .goto 895,76.99,49.23
    .vehicle 138552 >>Mount the |cRXP_FRIENDLY_Stolen Horse|r
step
    >>Follow the arrow to ride past enough |cRXP_ENEMY_guards|r and |cRXP_ENEMY_Captain Amalia Stone|t
    >>Press "ESC" to skip the upcoming cutscene
    .goto 895,75.72,48.87,10,0
    .goto 895,75.55,48.53,10,0
    .goto 895,74.90,50.05,10,0
    .goto 895,75.62,49.90,10,0
    .goto 895,75.81,51.46,20,0
    .goto 895,74.33,53.34
    .complete 51601,1 --10/10 Ride past Bridgeport Guards
    .complete 51601,2 --1/1 Ride past Captain Amalia Stone
    .complete 51601,3 --Complete the Bridgeport Ride (100%)
step
    .goto 895,72.02,51.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .turnin 51601 >>Turn in The Bridgeport Ride
    .target Nathanos Blightcaller
step
    #completewith next
    .zoneskip 862
    .noflyable 895
    .goto 895,72.18,51.91
    .fly Plunder Harbor >>Fly to Plunder Harbor
step
    #completewith next
    .zoneskip 862
    .goto 895,87.84,51.18
    .gossipoption 48794 >>Talk to |cRXP_FRIENDLY_Erul Dawnbrook|r
step
    .goto 862,58.44,62.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .turnin -53065 >>Turn in Operation: Grave Digger (Optional)
    .accept 51784 >>Accept A Stroll Through a Cemetery
    .target Nathanos Blightcaller
step
    .isOnQuest 51784
    .goto 862,58.46,62.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tattersail|r
    .gossipoption 48342
    .complete 51784,1 --1/1 Speak with Tattersail to sail to Drustvar (Optional)
    .target Dread-Admiral Tattersail
step
    #completewith next
    .isOnQuest 51784
    .noflyable 896
    .goto 896,19.69,43.74,10,0
    .goto 896,19.32,43.93,10,0
    .goto 896,19.19,43.33,10,0
    .goto 896,19.15,43.31
    .fly Krazzlefrazz Outpost >>Climb the tower and fly to Krazzlefrazz Outpost
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r and |cRXP_FRIENDLY_Lilian Voss|r
    .groundgoto 896,38.13,34.38,30,0
    .groundgoto 896,45.23,34.79,50,0
    .groundgoto 896,48.38,32.14,30,0
    .turnin 51784 >>Turn in A Stroll Through a Cemetery
    .accept 51785 >>Accept Examining the Epitaphs
    .accept 51786 >>Accept State of Unrest
    .goto 896,61.37,51.09
    .accept 51787 >>Accept Our Lot in Life
    .goto 896,61.32,51.03
    .target Nathanos Blightcaller
    .target Lilian Voss
step
    #completewith ZandalariTrollExaminingtheEpitaphs
    >>Kill |cRXP_ENEMY_Enraged Spirits|r
    .complete 51786,1 --8/8 Enraged Spirit slain
    .mob Enraged Spirit
step
    #title Gravebloom 1/10
    >>Pick up the |cRXP_PICK_Gravebloom|r
    .goto 896,61.16,48.82
    .complete 51787,1,1 --1/10 Gravebloom
step
    #title Geave Plague read 1/4
    >>Read the |cRXP_PICK_Grave Plaque|r
    .goto 896,61.11,48.88
    .complete 51785,1,1 --1/4 Grave Plaque
step
    #title Geave Plague read 2/4
    >>Read the |cRXP_PICK_Grave Plaque|r
    .goto 896,61.91,47.86
    .complete 51785,1,2 --2/4 Grave Plaque
step
    #title Gravebloom 2/10
    >>Pick up the |cRXP_PICK_Gravebloom|r
    .goto 896,61.97,47.71
    .complete 51787,1,2 --2/10 Gravebloom
step
    #title Gravebloom 3/10
    >>Pick up the |cRXP_PICK_Gravebloom|r
    .goto 896,61.29,47.64
    .complete 51787,1,3 --3/10 Gravebloom
step
    #title Gravebloom 4/10
    >>Pick up the |cRXP_PICK_Gravebloom|r
    .goto 896,61.06,47.44
    .complete 51787,1,4 --4/10 Gravebloom
step
    #title Gravebloom 5/10
    >>Pick up the |cRXP_PICK_Gravebloom|r
    .goto 896,60.92,47.07
    .complete 51787,1,5 --5/10 Gravebloom
step
    #title Gravebloom 6/10
    >>Pick up the |cRXP_PICK_Gravebloom|r
    .goto 896,60.49,45.71
    .complete 51787,1,6 --6/10 Gravebloom
step
    #title Gravebloom 7/10
    >>Pick up the |cRXP_PICK_Gravebloom|r
    .goto 896,60.31,44.90
    .complete 51787,1,7 --7/10 Gravebloom
step
    #title Geave Plague read 3/4
    >>Read the |cRXP_PICK_Grave Plaque|r
    .goto 896,60.31,44.95
    .complete 51785,1,3 --3/4 Grave Plaque
step
    #title Gravebloom 8/10
    >>Pick up the |cRXP_PICK_Gravebloom|r
    .goto 896,60.22,45.98
    .complete 51787,1,8 --8/10 Gravebloom
step
    #title Gravebloom 9/10
    >>Pick up the |cRXP_PICK_Gravebloom|r
    .goto 896,60.00,46.33
    .complete 51787,1,9 --9/10 Gravebloom
step
    #title Geave Plague read 4/4
    >>Read the |cRXP_PICK_Grave Plaque|r
    .goto 896,59.54,47.31
    .complete 51785,1 --4/4 Grave Plaque
step
    #label ZandalariTrollExaminingtheEpitaphs
    #title Gravebloom 10/10
    >>Pick up the |cRXP_PICK_Gravebloom|r
    .goto 896,60.26,47.16
    .complete 51787,1 --10/10 Gravebloom
step
    >>Kill |cRXP_ENEMY_Enraged Spirits|r
    .loop 30,896,61.11,48.88,61.91,47.86,60.31,44.95,59.54,47.31
    .complete 51786,1 --8/8 Enraged Spirit slain
    .mob Enraged Spirit
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian Voss|r and |cRXP_FRIENDLY_Nathanos Blightcaller|r 
    .turnin 51787 >>Turn in Our Lot in Life
    .goto 896,61.32,51.03
    .turnin 51785 >>Turn in Examining the Epitaphs
    .turnin 51786 >>Turn in State of Unrest
    .accept 51788 >>Accept The Crypt Keeper
    .goto 896,61.37,51.09
    .target Lilian Voss
    .target Nathanos Blightcaller
step
    >>Kill |cRXP_ENEMY_Brutus Thornton|r. Loot him for |cRXP_LOOT_Valentine's Key|r
    .goto 896,59.24,49.26
    .complete 51788,1 --1/1 Valentine's Key
    .mob Brutus Thronton
step
    .goto 896,61.37,51.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r 
    .turnin 51788 >>Turn in The Crypt Keeper
    .accept 51789 >>Accept What Remains of Marshal M. Valentine
    .target Nathanos Blightcaller
step
    >>Open the |cRXP_PICK_crypt door|r
    .goto 896,61.11,48.88
    .complete 51789,1 --1/1 Crypt Door opened
step
    >>Kill the spawning |cRXP_ENEMY_mobs|r and |cRXP_ENEMY_Echo of Marshal M. Valentine|r.
    .goto 896,61.12,48.75
    .complete 51789,2 --1/1 Echo of Marshal M. Valentine slain
    .mob Echo of Marshal M. Valentine
step
    >>Wait for the RP. Pick up |cRXP_PICK_Valentine's Log|r from the ground inside the crypt
    .goto 896,61.11,48.99
    .complete 51789,3 --1/1 Crypt searched
    .complete 51789,4 --1/1 Valentine's location uncovered
    .complete 51789,5 --1/1 Valentine's Log
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r 
    .goto 896,61.18,48.74
    .turnin 51789 >>Turn in What Remains of Marshal M. Valentine
    .target Nathanos Blightcaller
step << Mage
    .isQuestAvailable 51797
    .flyable 1165,300
    .zoneskip 85
    .cast 3567>>Use Teleport: Orgrimmar
step
    .isQuestAvailable 51797
    .flyable 1165,300
    .zoneskip 85
    .itemcount 65274,1
    .cooldown item,65274,>0,1
    .cast 89158>>Use the Cloak of Coordination
step
    .isQuestAvailable 51797
    .flyable 1165,300
    .zoneskip 896,1
    .itemcount 140192,1
    .cooldown item,140192,>0,1
    .zone 627 >>Use the Dalaran Hearthstone
step
    .isQuestAvailable 51797
    .flyable 1165,300
    .zoneskip 627,1
    .goto 627,55.27,23.97
    .zone 85 >>Use the portal to Orgrimmar
step
    .isQuestAvailable 51797
    .flyable 1165,300
    .zoneskip 85,1
    .goto 85,53.42,90.44,10,0
    .goto 85,58.55,91.31
    .zone 1163 >>Take the Portal to Zuldazar
step
    #completewith next
    .isQuestAvailable 51797
    .zoneskip 896,1
    .noflyable 896
    .groundgoto 896,48.38,32.14,30,0
    .groundgoto 896,45.23,34.79,50,0
    .groundgoto 896,38.13,34.38,30,0
    .goto 896,37.37,24.04
    .fly Anyport >>Fly to Anyport
step
    .isQuestAvailable 51797
    .zoneskip 896,1
    .noflyable 896
    .goto 896,20.60,43.34
    .gossipoption 48793 >>Talk to Swellthrasher
step
    #completewith next
    .flyable 1165,300
    .zoneskip 1163,1
    .isQuestAvailable 51797
    .goto 1165,49.91,41.48,18 >>Leave The Great Seal
step
    .noflyable 862
    .zoneskip 862
    .isQuestAvailable 51797
    #completewith next
    .goto 1165,51.92,41.22
    .fly Port of Zandalar >>Fly to Port of Zandalar
step
    .zoneskip 1165
    .noflyable 1165
    .isQuestAvailable 51797
    .hs >>Hearth to Spirits be With You
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r 
    .goto 862,58.44,62.68
    .accept 51797 >>Accept Tracking Tidesages
    .target Nathanos Blightcaller
step
    .goto 862,58.46,62.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tattersail|r
    .complete 51797,1 --1/1 Speak with Tattersail to sail to Stormsong Valley
    .goto 862,58.46,62.99
    .skipgossip 135690,1
    .target Dread-Admiral Tattersail
step
    #completewith next
    .goto 942,51.79,33.56,10 >>Enter the Great Hall
step
    .goto 942,52.12,33.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .turnin 51797 >>Turn in Tracking Tidesages
    .accept 51798 >>Accept No Price Too High
    .target Rexxar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r. Wait for the RP.
    .goto 942,59.30,30.18
    .complete 51798,1 --1/1 Help Rexxar locate a tidesage
    .skipgossip 1
    .target Rexxar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas Zelling|r. Wait for the RP.
    .goto 942,62.64,31.87
    .complete 51798,2 --1/1 Tidesage located
    .skipgossip 1
    .timer 55,Tidesage RP
    .target Thomas Zelling
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian Voss|r, |cRXP_FRIENDLY_Thomas Zelling|r, and |cRXP_FRIENDLY_Rexxar|r
    .turnin 51798 >>Turn in No Price Too High
    .accept 51805 >>Accept They Will Know Fear
    .goto 942,62.65,31.94
    .accept 51818 >>Accept Commander and Captain
    .goto 942,62.64,31.87
    .accept 51819 >>Accept Scattering Our Enemies
    .goto 942,62.68,31.82
    .target Lilian Voss
    .target Thomas Zelling
    .target Rexxar
step
    #completewith ZandalariTrollCommanderandCaptain
    >>Use the |T134229:0|t[Val'kyr Horn] near |cRXP_ENEMY_Kul Tiran Workers|r
    >>Kill |cRXP_ENEMY_Kul Tiran|r and |cRXP_ENEMY_Alliance|r forces
    .complete 51805,1 --20/20 Civilians terrorized
    .complete 51819,1 --10/10 Alliance and Kul Tiran forces slain
    .use 160901
step
    >>Kill |cRXP_ENEMY_Commander Augustine|r. Loot him for the |cRXP_LOOT_Book of Forbidden Magics|r
    .groundgoto 942,61.69,36.40,15,0
    .groundgoto 942,60.02,38.04,15,0
    .goto 942,58.24,35.52
    .complete 51818,2 --1/1 Book of Forbidden Magics
    .mob Commander Augustine
step
    #label ZandalariTrollCommanderandCaptain
    >>Kill |cRXP_ENEMY_Captain Malia|r.
    .goto 942,62.68,39.55
    .complete 51818,1 --1/1 Captain Malia slain
    .mob Captain Malia
step
    >>Use the |T134229:0|t[Val'kyr Horn] near |cRXP_ENEMY_Kul Tiran Workers|r
    >>Kill |cRXP_ENEMY_Kul Tiran|r and |cRXP_ENEMY_Alliance|r forces
    .goto 942,60.94,42.63,25,0
    .goto 942,60.24,42.75,20,0
    .goto 942,59.36,41.81,20,0
    .goto 942,60.19,40.83,20,0
    .goto 942,59.53,39.39,20,0
    .loop 25,942,62.68,39.55,60.94,42.63,60.24,42.75,59.36,41.81,60.19,40.83,59.53,39.39
    .complete 51805,1 --20/20 Civilians terrorized
    .complete 51819,1 --10/10 Alliance and Kul Tiran forces slain
    .use 160901
step
    .groundgoto 942,62.00,32.02,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian Voss|r, |cRXP_FRIENDLY_Rexxar|r, and |cRXP_FRIENDLY_Thomas Zelling|r
    .turnin 51805 >>Turn in They Will Know Fear
    .goto 942,62.65,31.95
    .turnin 51819 >>Turn in Scattering Our Enemies
    .goto 942,62.68,31.81
    .turnin 51818 >>Turn in Commander and Captain
    .accept 51830 >>Accept Zelling's Potential
    .goto 942,62.64,31.88
    .target Lilian Voss
    .target Rexxar
    .target Thomas Zelling
step
    >>Kill |cRXP_ENEMY_Tidesages|r, |cRXP_ENEMY_Tidebounds|r, |cRXP_ENEMY_Risen Bloodhounds|r, |cRXP_ENEMY_Drowned|r, or |cRXP_ENEMY_Dagrus the Scorned|r to fill the bar
    .groundgoto 942,64.90,38.78,25,0
    .goto 942,65.85,41.71,20,0
    .goto 942,67.95,40.38,20,0
    .goto 942,67.70,42.11,20,0
    .goto 942,65.90,42.96,20,0
    .goto 942,66.17,44.80,20,0
    .loop 25,942,65.85,41.71,67.95,40.38,67.70,42.11,65.90,42.96,66.17,44.80
    .complete 51830,1 --1/1 Void Font filled within Port Fogtide
    .mob Tidebound Corsair
    .mob Frothing Tideblood
    .mob Tidesage Seacaller
    .mob Dagrus the Scorned
step
    >>Use the [ExtraActionButton]
    .goto 942,66.61,42.20
    .complete 51830,2 --1/1 Empowered essence activated within Port Fogtide
step
    .groundgoto 942,62.00,32.02,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWait for the RP. Run up the mountain and talk to |cRXP_FRIENDLY_Thomas Zelling|r and |cRXP_FRIENDLY_Lilian Voss|r
    .turnin 51830 >>Turn in Zelling's Potential
    .goto 942,62.64,31.88
    .accept 51837 >>Accept Whatever Will Be
    .goto 942,62.64,31.95
    .target Thomas Zelling
    .target Lilian Voss
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas Zelling|r. Wait for the RP
    .goto 942,62.64,31.88
    .skipgossip
    .timer 66,Thomas Zelling RP
    .complete 51837,1 --1/1 Thomas Zelling spoken to
step
    .goto 942,62.65,31.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian Voss|r
    .turnin 51837 >>Turn in Whatever Will Be
    .accept 52122 >>Accept To Be Forsaken
    .target Lilian Voss
step
    .goto 942,59.93,30.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian Voss|r. Wait for the RP
    .complete 52122,1 --1/1 Thomas Zelling found
    .skipgossip
    .timer 58,Thomas Zelling RP
    .target Lilian Voss
step
    .zoneskip 942,1
    #completewith next
    .goto 942,51.43,33.74
    .gossipoption 48826 >>Talk to Muka Stormbreaker
step
    .goto 862,58.44,62.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .turnin 52122 >>Turn in To Be Forsaken
    .accept 52764 >>Accept Journey to the Middle of Nowhere
    .target Nathanos Blightcaller
step
    .goto 862,58.46,62.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tattersail|r
    .complete 52764,1 --1/1 Speak with Tattersail to sail to the Great Sea
    .goto 862,58.46,62.99
    .skipgossip 135690,1
    .target Dread-Admiral Tattersail
step
    .goto 1157,40.28,67.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .turnin 52764 >>Turn in Journey to the Middle of Nowhere
    .accept 52765 >>Accept Deep Dive
    .target Nathanos Blightcaller
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart Grapplehammer|r. Wait until you have reached the ocean floor
    .goto 1157,41.62,67.63
    .complete 52765,1 --1/1 Speak with Hobart to dive into the Great Sea
    .complete 52765,2 --1/1 Reach the ocean floor
    .skipgossip 1
    .target Hobart Grapplehammer
step
    >>Use your [ExtraActionButton] twice to activate and deactivate your headlamp
    .goto 1157,41.40,68.24
    .complete 52765,3 --1/1 Test your headlamp
step
    >>Click on the popup or the quest under your minimap/quest log
    .goto 1157,41.40,68.24
    .turnin 52765 >>Turn in Deep Dive
    .accept 52766 >>Accept Seafloor Shipwreck
step
    #completewith ZandalariTrollGrabandGo
    +If you activate your headlamp for too long then you may die. Only activate it when you really need to see something
step
    >>Follow the arrow. Avoid pulling mobs
    .goto 1157,47.17,67.93
    .complete 52766,1 --1/1 Find the shipwreck
step
    >>Click on the popup or the quest under your minimap/quest log
    .goto 1157,47.17,67.93
    .turnin 52766 >>Turn in Seafloor Shipwreck
    .accept 52767 >>Accept Checking Dog Tags
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Drowned Sailor|r
    .goto 1157,48.63,70.79
    .complete 52767,1 --1/1 Find the ship's captain
    .target Drowned Sailor
step
    >>Click on the popup or the quest under your minimap/quest log
    .goto 1157,48.63,70.79
    .turnin 52767 >>Turn in Checking Dog Tags
    .accept 52768 >>Accept The Sunken Graveyard
step
    >>Follow the arrow. Avoid pulling mobs
    .goto 1157,55.87,51.20
    .complete 52768,1 --1/1 Find another shipwreck
step
    .goto 1157,55.87,51.20
    >>Click on the popup or the quest under your minimap/quest log
    .turnin 52768 >>Turn in The Sunken Graveyard
    .accept 52769 >>Accept Captain By Captain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Drowned Sailor|r above the sail
    .goto 1157,54.52,49.65
    .complete 52769,1 --1/1 Identify the first sea captain
    .target Drowned Sailor
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Drowned Sailor|r on the ground
    .goto 1157,56.46,45.03
    .complete 52769,2 --1/1 Identify the second sea captain
    .target Drowned Sailor
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Drowned Sailor|r slightly above the ground
    .goto 1157,66.50,42.30
    .complete 52769,3 --1/1 Identify the third sea captain
    .target Drowned Sailor
step
    .goto 1157,66.50,42.35
    >>Click on the popup or the quest under your minimap/quest log. You may have to wait a bit for the next quest to appear. Star killing mobs if it doesn't popup
    .turnin 52769 >>Turn in Captain By Captain
    .accept 52770 >>Accept Biolumi-Nuisance
step
    >>Kill |cRXP_ENEMY_Luminescent Siltfeeder|r, |cRXP_ENEMY_Deep Ocean Jelly|r, |cRXP_ENEMY_Seafloor Shambleclaw|r, and |cRXP_ENEMY_Underlight Scouts|r
    .complete 52770,1 --10/10 Bioluminescent creature slain
    .goto 1157,64.57,45.60,20,0
    .goto 1157,66.85,51.33,20,0
    .goto 1157,60.98,41.36,25,0
    .goto 1157,59.47,47.72,25,0
    .goto 1157,55.24,61.90,25,0
    .loop 25,1157,64.57,45.60,66.85,51.33,60.98,41.36,59.47,47.72,55.24,61.90
    .mob Luminescent Siltfeeder
    .mob Deep Ocean Jelly
    .mob Seafloor Shambleclaw
    .mob Underlight Scout
step
    .goto 1157,67.03,56.26
    >>Click on the popup or the quest under your minimap/quest log
    .turnin 52770 >>Turn in Biolumi-Nuisance
    .accept 52772 >>Accept The Undersea Ledge
step
    >>Follow the arrow
    .goto 1157,67.03,56.26
    .complete 52772,1 --1/1 Find the shipwreck on the ledge
step
    .goto 1157,67.03,56.26
    >>Click on the popup or the quest under your minimap/quest log
    .turnin 52772 >>Turn in The Undersea Ledge
    .accept 52773 >>Accept Water-Breathing Dragon
step
    >>Kill |cRXP_ENEMY_Daenistrasz|r
    .goto 1157,68.26,55.54
    .complete 52773,1 --1/1 Daenistrasz slain
    .mob Daenistrasz
step
    .goto 1157,68.26,55.54
    >>Click on the popup or the quest under your minimap/quest log
    .turnin 52773 >>Turn in Water-Breathing Dragon
    .accept 52774 >>Accept Grab and Go
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Drowned Sailor|r
    .goto 1157,68.25,55.60
    .complete 52774,1 --1/1 Gather Marshal M. Valentine's body
    .skipgossip
    .target Drowned Sailor
step
    #label ZandalariTrollGrabandGo
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Drowned Sailor|r
    .goto 1157,68.73,55.96
    .complete 52774,2 --1/1 Gather the other sailor's body
    .skipgossip
    .target Drowned Sailor
step
    #completewith next
    +Active your headlamp and wait until you die
    .goto 1157,68.73,55.96,10,0
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tJump down. Talk to |cRXP_FRIENDLY_Lilian Voss|r
    .goto 1157,41.56,66.50
    .turnin 53121 >>Turn in Siege of Boralus
    .target Lilian Voss
step
    .goto 1157,42.08,66.24,8,0
    .goto 1157,40.12,68.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tGo down into the ship. Talk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .turnin 52774 >>Turn in Grab and Go
    .accept 52978 >>Accept With Prince in Tow
    .target Nathanos Blightcaller
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tGo back up. Talk to |cRXP_FRIENDLY_Tattersail|r
    .goto 1157,42.08,66.24,8,0
    .goto 1157,39.91,68.31
    .complete 52978,1 --1/1 Speak with Dread-Admiral Tattersail to return
    .skipgossip 1
    .target Tattersail
step
    .goto 862,58.44,62.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .turnin 52978 >>Turn in With Prince in Tow
    .accept 52183 >>Accept When a Plan Comes Together
    .target Nathanos Blightcaller
step
    .goto 862,58.44,62.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r. Wait for the RP
    .gossipoption 48861
    .timer 30,Nathanos RP
    .complete 52183,1 --1/1 Listen to Nathanos' plan
    .target Nathanos Blightcaller
step
    .goto 862,58.46,62.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tattersail|r
    .complete 52183,2 --1/1 Speak with Tattersail to sail to Tiragarde Sound
    .goto 862,58.46,62.99
    .skipgossip 135690,1
    .target Dread-Admiral Tattersail
step
    .groundgoto 895,87.54,51.52,20,0
    .groundgoto 895,87.20,52.18,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r and |cRXP_FRIENDLY_Captain Amalia Stone|r
    .turnin 52183 >>Turn in When a Plan Comes Together
    .accept 52186 >>Accept The Bulk of the Guard
    .goto 895,86.91,53.15
    .accept 52187 >>Accept Old Colleagues
    .goto 895,86.96,53.12
    .target Nathanos Blightcaller
    .target Captain Amalia Stone
step
    .isOnQuest 52187
    #completewith next
    .goto 895,87.23,52.72
    .gossipoption 48830 >>Talk to |cRXP_FRIENDLY_Hobart Grapplehammer|r
step
    #completewith ZandalariTrollOldColleagues
    >>Kill |cRXP_ENEMY_Proudmoore Guards|r
    .complete 52186,1 --12/12 Proudmoore Guard slain
    .mob Proudmoore Guard
step
    >>Kill |cRXP_ENEMY_Captain Gastrod|r
    .goto 895,91.46,48.44,10,0
    .goto 895,91.40,47.94
    .complete 52187,1 --1/1 Captain Gastrod slain
    .mob Captain Gastrod
step
    #completewith next
    .goto 895,91.85,48.84,12,0
    .goto 895,91.75,48.43,8,0
    .goto 895,92.02,49.44,5,0
    .goto 895,92.24,49.22,10 >>Go down into the ship
step
    >>Go down into the ship. Kill |cRXP_ENEMY_Guard-Commander Trunksal|r
    .goto 895,92.06,49.66
    .complete 52187,2 --1/1 Guard-Commander Trunksal slain
    .mob Guard-Commander Trunksal
step
    #completewith next
    .goto 895,92.24,49.22,8,0
    .goto 895,92.02,49.44,8,0
    .goto 895,91.90,48.66,8,0
    .goto 895,91.75,48.43,8 >>Go back up
step
    #completewith next
    .goto 895,92.20,49.86
    .gossipoption 48789 >>Talk to |cRXP_FRIENDLY_Hobart Grapplehammer|r
step
    #label ZandalariTrollOldColleagues
    >>Kill |cRXP_ENEMY_Helmsman Miria|r
    .groundgoto 895,92.09,51.70,12,0
    .goto 895,92.28,51.12
    .complete 52187,3 --1/1 Helmsman Miria slain
    .mob Helmsman Miria
step
    >>Kill |cRXP_ENEMY_Proudmoore Guards|r on the boat
    .complete 52186,1 --12/12 Proudmoore Guard slain
    .goto 895,92.08,51.44
    .mob Proudmoore Guard
step
    .isQuestComplete 52186
    #completewith next
    .noflyable 895
    .goto 895,91.59,52.16
    .gossipoption 48790 >>Talk to |cRXP_FRIENDLY_Hobart Grapplehammer|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Amalia Stone|r
    .turnin 52187 >>Turn in Old Colleagues
    .goto 895,86.96,53.12
    .turnin 52186 >>Turn in The Bulk of the Guard
    .accept 52185 >>Accept A Well Placed Portal
    .goto 895,86.91,53.15
    .target Captain Amalia Stone
step
    >>Take the Portal to Boralus
    .goto 895,86.94,52.46
    .complete 52185,1 --1/1 Portal to Boralus taken
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas Zelling|r
    .goto 1161,71.19,84.79
    .turnin 52185 >>Turn in A Well Placed Portal
    .accept 52184 >>Accept Relics of Ritual
    .accept 52188 >>Accept Tidesage Teachings
    .accept 52189 >>Accept Forfeit Souls
    .target Thomas Zelling
step
    #title Leave the cellar
    #completewith next
    .goto 1161,70.47,86.07,8,0
    .goto 1161,70.02,85.34,8 >>Leave the cellar
step
    #completewith ZandalariTrollTidesageTeachings
    >>Kill |cRXP_ENEMY_Tidesage Archivists|r
    .complete 52189,1 --8/8 Tidesages slain
step
    #title Tome 1/5
    >>Pick up the |cRXP_PICK_Tome|r on the shelf
    .goto 1161,69.82,83.82
    .complete 52188,1,1 --1/5 Tome of Tidesage Research
step
    >>Kill |cRXP_ENEMY_Archivist Medira|r. Loot her for the |cRXP_LOOT_Compass|r
    .goto 1161,67.69,81.66
    .complete 52184,1 --1/1 Compass of Clarity
step
    #title Tome 2/5
    >>Pick up the |cRXP_PICK_Tome|r on the shelf
    .goto 1161,67.82,82.15
    .complete 52188,1,2 --2/5 Tome of Tidesage Research
step
    #title Tome 3/5
    >>Pick up the |cRXP_PICK_Tome|r on the shelf
    .goto 1161,67.55,81.21
    .complete 52188,1,3 --3/5 Tome of Tidesage Research
step
    >>Kill |cRXP_ENEMY_Brother Marrin|r. Loot him for the |cRXP_LOOT_Curio|r
    .groundgoto 1161,68.75,81.89,15,0
    .groundgoto 1161,67.43,80.01,15,0
    .groundgoto 1161,65.99,82.05,15,0
    .goto 1161,64.01,80.10
    .complete 52184,2 --1/1 Curio of the Depths
step
    #title Tome 4/5
    >>Pick up the |cRXP_PICK_Tome|r on the shelf
    .goto 1161,63.86,79.35
    .complete 52188,1,4 --4/5 Tome of Tidesage Research
step
    >>Kill the 3 |cRXP_ENEMY_Tidesage Summoners|r around the Tidebreaker. Kill |cRXP_ENEMY_Unleashed Tidebreaker|r. Loot it for the |cRXP_LOOT_Key   |r
    .groundgoto 1161,63.63,82.78,15,0
    .goto 1161,59.60,86.54
    .complete 52184,3 --1/1 Key of the Sea
step
    #label ZandalariTrollTidesageTeachings
    #title Tome 5/5
    >>Pick up the |cRXP_PICK_Tome|r on the shelf
    .goto 1161,60.56,85.11
    .complete 52188,1 --5/5 Tome of Tidesage Research
step
    >>Kill |cRXP_ENEMY_Tidesage Archivists|r
    .goto 1161,60.67,81.82,20,0
    .goto 1161,63.74,78.69,20,0
    .goto 1161,66.15,84.98,20,0
    .goto 1161,69.83,84.81,20,0
    .goto 1161,67.10,75.56,20,0
    .goto 1161,62.55,76.37,20,0
    .goto 1161,59.60,86.54,20,0
    .loop 25,1161,60.67,81.82,66.15,84.98,67.10,75.56,59.60,86.54
    .complete 52189,1 --8/8 Tidesages slain
    .mob Tidesage Archivist
    .mob Tidesage Summoner
step
    #title Leave the cellar
    #completewith next
    .goto 1161,70.30,85.73,8 >>Enter the cellar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas Zelling|r
    .goto 1161,71.19,84.78
    .turnin 52184 >>Turn in Relics of Ritual
    .turnin 52188 >>Turn in Tidesage Teachings
    .turnin 52189 >>Turn in Forfeit Souls
    .accept 52190 >>Accept Gaining the Upper Hand
    .target Thomas Zelling
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas Zelling|r
    .goto 1161,71.19,84.78
    .skipgossip 1
    .complete 52190,1 --1/1 Talk to Zelling
    .target Thomas Zelling
step
    #title Leave the cellar
    #completewith next
    .goto 1161,70.47,86.07,8,0
    .goto 1161,70.02,85.34,8 >>Leave the cellar
step
    #title Enter the house
    #completewith next
    .goto 1161,70.74,82.25,8 >>Enter the house
step
    #title Go down into the cellar
    #completewith next
    .goto 1161,71.57,82.63,6,0
    .goto 1161,71.37,81.51,7 >>Go down into the cellar
step
    >>Place the |cRXP_PICK_Key of the Sea|r
    .goto 1161,71.15,82.59
    .complete 52190,2 --1/1 Begin the ritual
step
    >>Defend |cRXP_FRIENDLY_Thomas Zelling|r
    .goto 1161,71.15,82.24
    .complete 52190,3 --Zelling protected (100%)
    .mob Crawling Monstrosity
    .mob K'thir Guardian
step
    >>Pick up the |cRXP_PICK_Abyssal Scepter|r
    .goto 1161,71.14,82.63
    .complete 52190,4 --1/1 Abyssal Scepter
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas Zelling|r
    .goto 1161,71.14,82.63
    .turnin 52190 >>Turn in Gaining the Upper Hand
    .accept 52990 >>Accept Return to the Harbor
    .target Thomas Zelling
step
    #title Leave the cellar + house
    #completewith next
    .goto 1161,71.68,81.67,5,0
    .goto 1161,71.67,82.70,5,0
    .goto 1161,70.62,82.25,5 >>Leave the cellar + house
step
    #title Leave the cellar
    #completewith next
    .goto 1161,70.30,85.73,8,0
    .goto 1161,71.10,85.30,6 >>Enter the cellar
step
    >>Take the Portal to Plunder Harbor
    .goto 1161,70.87,84.32
    .complete 52990,1 --1/1 Portal to Plunder Harbor taken
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .goto 895,86.91,53.14
    .turnin 52990 >>Turn in Return to the Harbor
    .accept 52191 >>Accept Life Held Hostage
    .target Nathanos Blightcaller
step
    >>Wait for the RP
    .goto 895,87.21,52.12
    .complete 52191,1 --1/1 Walk with Nathanos
step
    >>Kill |cRXP_ENEMY_General Cadarin|r
    .goto 895,87.50,52.29
    .complete 52191,2 --1/1 General Cadarin slain
    .mob General Cadarin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .groundgoto 895,87.20,52.18,10,0
    .goto 895,86.91,53.15
    .turnin 52191 >>Turn in Life Held Hostage
    .accept 52192 >>Accept The Aid of the Tides
    .target Nathanos Blightcaller
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .goto 895,86.91,53.15
    .skipgossip
    .complete 52192,1 --1/1 Speak with Nathanos
    .target Nathanos Blightcaller
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .goto 862,58.44,62.67
    .turnin 52192 >>Turn in The Aid of the Tides
    .accept 53003 >>Accept A Cycle of Hatred
    .target Nathanos Blightcaller
step << Mage
    .isOnQuest 53003
    .zoneskip 1164
    .cast 3567>>Use Teleport: Orgrimmar
step
    .isOnQuest 53003
    .zoneskip 1164
    .itemcount 65274,1
    .cooldown item,65274,>0,1
    .cast 89158>>Use the Cloak of Coordination
step
    .isOnQuest 53003
    .zoneskip 1164
    .itemcount 140192,1
    .cooldown item,140192,>0,1
    .zone 627 >>Use the Dalaran Hearthstone
step
    .isOnQuest 53003
    .zoneskip 627,1
    .goto 627,55.27,23.97
    .zone 85 >>Use the portal to Orgrimmar
step
    #completewith next
    .isOnQuest 53003
    .zoneskip 85
    .noflyable 1165
    .goto 1165,50.62,84.87,20,0
    .goto 1165,52.10,90.14
    .fly The Great Seal >>Fly to The Great Seal
step
    #completewith next
    .isOnQuest 53003
    .zoneskip 85
    .goto 1165,49.95,42.16,15 >>Enter The Great Seal
step
    #completewith next
    .isOnQuest 53003
    .zoneskip 85
    .goto 1163,73.94,69.92
    .zone 85 >>Take the Portal to Orgrimmar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r inside Grommash Hold
    .goto 85,53.20,90.46,10,0
    .goto 85,49.83,75.38,10,0
    .goto 85,48.33,71.16
    .turnin 53003 >>Turn in A Cycle of Hatred
    .target Lady Sylvanas Windrunner
]])

RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP BfA War Campaign
#name 08) War Campaign Tides of Vengeance
#displayname Chapter 8 - Tides of Vengeance

<< Horde

step
    .noflyable 864
    #completewith ZandalariTrollOurWarContinues
    .goto 85,48.33,71.16
    .hs >>Hearth to Spirits Be With You
step
    .zoneskip 1165
    #completewith ZandalariTrollOurWarContinues
    #title Take the Portal to Zuldazar
    .goto 85,53.42,90.44,10,0
    .goto 85,58.55,91.31
    .zone 1163 >>Take the Portal to Zuldazar
step
    #label ZandalariTrollOurWarContinues
    .goto 862,58.43,62.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r on the boat
    .accept 53851 >>Accept Our War Continues
    .target Nathanos Blightcaller
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r
    .goto 862,58.44,62.56
    .skipgossip
    .complete 53851,1 --1/1 Speak with Sylvanas Windrunner
    .target Lady Sylvanas Windrunner
step
    .goto 862,58.44,62.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .turnin 53851 >>Turn in Our War Continues
    .accept 53852 >>Accept Azerite Denied
    .target Nathanos Blightcaller
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tattersail|r
    .complete 53852,1 --1/1 Speak with Tattersail to sail to Tiragarde Sound
    .goto 862,58.46,62.99
    .skipgossip 1
    .target Dread-Admiral Tattersail
step
    #completewith next
    .noflyable 895
    .goto 895,87.27,50.66
    .fly Timberfell Outpost >>Fly to Timberfell Outpost
step
    .groundgoto 895,51.10,21.56,25,0
    .groundgoto 895,49.03,19.69,20,0
    .groundgoto 895,38.22,20.23,20,0
    .goto 895,47.52,21.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .turnin 53852 >>Turn in Azerite Denied
    .accept 53856 >>Accept The Fury of the Horde
    .target Rexxar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .goto 895,47.52,21.76
    .skipgossip 145422,1
    .complete 53856,1 --1/1 Horde army deployed
    .target Rexxar
step
    .groundgoto 895,47.04,22.41,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r and |cRXP_FRIENDLY_Thomas Zelling|r
    .turnin 53856 >>Turn in The Fury of the Horde
    .accept 53879 >>Accept Cleaning Out the Estate
    .accept 53880 >>Accept Machines of War and Azerite
    .goto 895,48.92,24.99
    .target Rexxar
    .target Thomas Zelling
step
    #completewith ZandalariTrollMachinesofWarAndAzerite
    >>Kill |cRXP_ENEMY_Lightforged|r and |cRXP_ENEMY_Alliance troops|r
    .complete 53879,1 --Estate defenders disrupted (100%)
step
    #title Azerite Bomb Cluster 1/4
    >>Pick up the |cRXP_PICK_Azerite Bombs|r
    .goto 895,49.33,25.58
    .complete 53880,1,1 --1/4 Azerite Bomb Cluster
step
    #title Azerite Bomb Cluster 2/4
    >>Pick up the |cRXP_PICK_Azerite Bombs|r
    .goto 895,49.76,25.33
    .complete 53880,1,2 --2/4 Azerite Bomb Cluster
step
    #title Azerite Rifle 1/3
    >>Pick up the |cRXP_PICK_Azerite Weapon Cache|r
    .goto 895,49.96,25.86
    .complete 53880,2,1 --1/3 Azerite Rifle
step
    #title Azerite Bomb Cluster 3/4
    >>Pick up the |cRXP_PICK_Azerite Bombs|r
    .goto 895,49.62,26.19
    .complete 53880,1,3 --3/4 Azerite Bomb Cluster
step
    #title Azerite Rifle 2/3
    >>Pick up the |cRXP_PICK_Azerite Weapon Cache|r
    .goto 895,49.83,26.72
    .complete 53880,2,2 --2/3 Azerite Rifle
step
    #title Azerite Bomb Cluster 4/4
    >>Pick up the |cRXP_PICK_Azerite Bombs|r
    .goto 895,50.64,26.57
    .complete 53880,1 --4/4 Azerite Bomb Cluster
step
    #label ZandalariTrollMachinesofWarAndAzerite
    #title Azerite Rifle 3/3
    >>Pick up the |cRXP_PICK_Azerite Weapon Cache|r
    .goto 895,50.86,26.00
    .complete 53880,2 --3/3 Azerite Rifle
step
    >>Kill |cRXP_ENEMY_Lightforged|r and |cRXP_ENEMY_Alliance troops|r
    .goto 895,51.60,25.90,25,0
    .goto 895,51.65,28.24,25,0
    .goto 895,49.76,27.49,25,0
    .goto 895,50.06,24.70,25,0
    .loop 28,895,51.60,25.90,51.65,28.24,49.76,27.49,50.06,24.70
    .complete 53879,1 --Estate defenders disrupted (100%)
step
    .goto 895,51.24,26.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r and |cRXP_FRIENDLY_Thomas Zelling|r
    .turnin 53879 >>Turn in Cleaning Out the Estate
    .turnin 53880 >>Turn in Machines of War and Azerite
    .accept 53913 >>Accept With Honor
    .target Rexxar
    .target Thomas Zelling
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r. Press "ESC" to skip the upcoming cutscene
    .goto 895,51.24,26.56
    .skipgossip 146462,1
    .complete 53913,1 --1/1 Speak with Rexxar to face Lieutenant Cole
    .target Rexxar
step
    >>Kill the |cRXP_ENEMY_Azerite Tank|r and |cRXP_ENEMY_Lieutenant Cole|r
    .goto 895,50.95,26.91
    .complete 53913,2 --1/1 Lieutenant Cole slain
    .mob Azerite Tank
    .mob Lieutenant Cole
step
    .goto 895,50.95,26.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .turnin 53913 >>Turn in With Honor
    .accept 53912 >>Accept The Hunt Never Ends
    .target Rexxar
step
    >>Follow the arrow
    .goto 895,52.86,30.46
    .complete 53912,1 --Approach Norwington manor
step
    .goto 895,53.02,30.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r. Press "ESC" to skip the upcoming cutscene
    .turnin 53912 >>Turn in The Hunt Never Ends
    .accept 53973 >>Accept Ride Out to Meet Them
    .target Rexxar
step
    >>Moun the |cRXP_FRIENDLY_Gyrocopter|r
    .goto 895,53.04,30.33
    .complete 53973,1 --1/1 Goblin gyrocopter boarded
step
    >>Use the |T463515:0|t[Azerite Bombardement] (2) on cooldown. Otherwise spam |T2065561:0|t[Azerite Cannon] (1)
    .goto 895,53.04,30.33
    .complete 53973,2 --Alliance army defeated (100%)
step
    .goto 895,47.41,21.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .turnin 53973 >>Turn in Ride Out to Meet Them
    .accept 53981 >>Accept The Day is Won
    .target Rexxar
step
    #completewith next
    .noflyable 895
    .goto 895,41.19,23.53,25,0
    .goto 895,41.49,22.26,12,0
    .goto 895,39.29,16.56,18,0
    .goto 895,39.60,17.84,11,0
    .goto 895,39.68,18.54
    .fly Plunder Harbor >>Fly to Plunder Harbor
step
    #completewith next
    .goto 895,87.84,51.18
    .gossipoption 48794 >>Talk to |cRXP_FRIENDLY_Erul Dawnbrook|r to return to Zuldazar
step
    .goto 862,58.44,62.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .turnin 53981 >>Turn in The Day is Won
    .accept 53941 >>Accept A Mech for a Goblin
    .target Nathanos Blightcaller
step
    .groundgoto 1165,44.45,81.72,20,0
    .groundgoto 1165,50.92,56.26,30,0
    .groundgoto 1165,47.46,59.69,15,0
    .groundgoto 1165,45.50,60.06,15,0
    .groundgoto 1165,45.50,61.78,15,0
    .groundgoto 1165,41.00,72.33,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trade Prince Gallywix|r and |cRXP_FRIENDLY_Patch|r
    .turnin 53941 >>Turn in A Mech for a Goblin
    .accept 54123 >>Accept It Belongs in My Mech!
    .goto 862,36.32,72.03
    .accept 54124 >>Accept Avoiding Lawsuits 101
    .goto 862,36.25,72.02
    .target Trade Prince Gallywix
    .target Patch
step
    #completewith ZandalariTrollsAvoidingLawsuits
    >>Use the |T134519:0|t[Azerite Vacuumizer] to drain |cRXP_ENEMY_Azerite Mucks|r
    .use 166309
    .complete 54123,1 --Azerite pack fueled (100%)
    .mob Azerite Muck
step
    #title Worker healed 1/6
    >>Heal the |cRXP_FRIENDLY_Uninsured Goblin Worker|r. Either by clicking on it or by using your healing spells
    .goto 862,35.48,70.84
    .complete 54124,1,1 --1/6 Uninsured Goblin Worker healed
    .target Uninsured Goblin Worker
step
    #title Worker healed 2/6
    >>Heal the |cRXP_FRIENDLY_Uninsured Goblin Worker|r. Either by clicking on it or by using your healing spells
    .goto 862,35.16,71.30
    .complete 54124,1,2 --2/6 Uninsured Goblin Worker healed
    .target Uninsured Goblin Worker
step
    #title Worker healed 3/6
    >>Heal the |cRXP_FRIENDLY_Uninsured Goblin Worker|r. Either by clicking on it or by using your healing spells
    .goto 862,35.19,71.99
    .complete 54124,1,3 --3/6 Uninsured Goblin Worker healed
    .target Uninsured Goblin Worker
step
    #title Worker healed 4/6
    >>Heal the |cRXP_FRIENDLY_Uninsured Goblin Worker|r. Either by clicking on it or by using your healing spells
    .goto 862,34.69,71.74
    .complete 54124,1,4 --4/6 Uninsured Goblin Worker healed
    .target Uninsured Goblin Worker
step
    #title Worker healed 5/6
    >>Heal the |cRXP_FRIENDLY_Uninsured Goblin Worker|r. Either by clicking on it or by using your healing spells
    .goto 862,34.94,71.00
    .complete 54124,1,5 --5/6 Uninsured Goblin Worker healed
    .target Uninsured Goblin Worker
step
    #label ZandalariTrollsAvoidingLawsuits
    #title Worker healed 6/6
    >>Heal the |cRXP_FRIENDLY_Uninsured Goblin Worker|r. Either by clicking on it or by using your healing spells
    .goto 862,34.98,70.03
    .complete 54124,1 --6/6 Uninsured Goblin Worker healed
    .target Uninsured Goblin Worker
step
    >>Use the |T134519:0|t[Azerite Vacuumizer] to drain |cRXP_ENEMY_Azerite Mucks|r
    .use 166309
    .goto 862,35.60,69.40,25,0
    .goto 862,32.82,70.35,25,0
    .goto 862,35.08,71.80,25,0
    .loop 25,862,35.60,69.40,32.82,70.35,35.08,71.80
    .complete 54123,1 --Azerite pack fueled (100%)
    .mob Azerite Muck
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Patch|r and |cRXP_FRIENDLY_Trade Prince Gallywix|r
    .turnin 54124 >>Turn in Avoiding Lawsuits 101
    .goto 862,36.25,72.02
    .turnin 54123 >>Turn in It Belongs in My Mech!
    .accept 53942 >>Accept The Right Mech for the Job
    .goto 862,36.31,72.02
    .target Patch
    .target Trade Prince Gallywix
step
    #completewith next
    .goto 862,36.29,72.13
    .vehicle 145754 >>Mount the G.M.O.D
step
    >>Wait for the RP
    .complete 53942,1 --1/1 Fly the G.M.O.D to Drustvar
step
    >>Use |T236171:0|t[Azerite Stomp] (2) on cooldown. Otherwise use |T252185:0|t[Azerite Blast] (1) to kill the mobs
    .goto 896,37.37,24.59,15,0
    .goto 896,37.13,27.57,20,0
    .goto 896,37.62,29.45,20,0
    .loop 20,896,37.37,24.59,37.13,27.57,37.62,29.45
    .complete 53942,2 --30/30 Eliminate mechs within Krazzlefrazz Outpost
step
    >>Use |T236171:0|t[Azerite Stomp] (2) on cooldown. Otherwise use |T252185:0|t[Azerite Blast] (1) to kill the mobs
    .goto 896,37.64,32.50,25,0
    .goto 896,36.37,36.59,25,0
    .goto 896,38.99,35.51,25,0
    .goto 896,40.30,37.86,25,0
    .loop 25,896,37.64,32.50,36.37,36.59,38.99,35.51,40.30,37.86
    .complete 53942,3 --50/50 Repel mech army within Arom's Crossing
step
    >>Use |T237290:0|t[Big Red Button] (3) at your current position
    .goto 896,35.30,35.80
    .complete 53942,4 --1/1 Big red button pushed
step
    .goto 896,37.16,25.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Professor Krazzlefrazz|r
    .turnin 53942 >>Turn in The Right Mech for the Job
    .target Professor Krazzlefrazz
step
    .goto 896,37.30,26.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_G.M.O.D|r
    .accept 54128 >>Accept Necessary Precautions
    .complete 54128,1 --1/1 G.M.O.D reviewed
    .turnin 54128 >>Turn in Necessary Precautions
    .accept 54004 >>Accept Test Case #1; Mech vs. Mekkatorque
    .skipgossip 145816,1
    .target G.M.O.D
step
    #completewith next
    .goto 896,37.30,26.00
    .vehicle 146062 >>Mount the G.M.O.D
step
    >>Wait for the RP. Use |T237290:0|t[Big Red Button] (1) when possible
    .goto 896,75.97,56.01
    .complete 54004,1 --1/1 Ride G.M.O.D to face Mekkatorque
step
    .goto 895,54.60,64.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trade Prince Gallywix|r
    .turnin 54004 >>Turn in Test Case #1; Mech vs. Mekkatorque
    .accept 54007 >>Accept Insurance Policy
    .target Trade Prince Gallywix
step
    >>Interact with the |cRXP_FRIENDLY_G.M.O.D|r 3 times
    .goto 895,54.63,64.42
    .complete 54007,1 --1/1 Call for roadside assistance
    .complete 54007,2 --1/1 Try calling roadside assistance again
    .complete 54007,3 --1/1 Keep pushing buttons until something happens
step
    .goto 895,54.60,64.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trade Prince Gallywix|r
    .turnin 54007 >>Turn in Insurance Policy
    .accept 54009 >>Accept Killing on the Side
    .accept 54008 >>Accept Insurance Renewal
    .target Trade Prince Gallywix
step
    #completewith ZandalariTrollMekkatorquesBattlePlans
    >>Kill |cRXP_ENEMY_Gnomish Engineers|r and |cRXP_ENEMY_Vigil Hill Marines|r
    .complete 54009,1 --15/15 Alliance and Kul Tiran forces slain
    .mob Vigil Hill Marine
    .mob Gnomish Engineer
step
    #completewith ZandalariTrollInsuranceRenewal
    >>Kill Alliance forces. Loot them for the Alliance Battle Plans. Use it to accept the quest
    .accept 54022 >>Accept Mekkatorque's Battle Plans
step
    >>Open the cage
    .goto 895,56.21,64.50
    .complete 54008,1 --1/1 Fizzle rescued
step
    >>Open the cage
    .goto 895,57.08,62.87
    .complete 54008,3 --1/1 Scowler Scampy rescued
step
    #label ZandalariTrollInsuranceRenewal
    >>Open the cage
    .goto 895,58.28,60.66
    .complete 54008,2 --1/1 Puggi Blasthops rescued
step
    >>Kill Alliance forces. Loot them for the Alliance Battle Plans. Use it to accept the quest
    .goto 895,58.96,61.93,20,0
    .goto 895,56.85,59.63,25,0
    .goto 895,55.81,60.55,35,0
    .goto 895,56.16,63.98,25,0
    .goto 895,57.13,63.10,25,0
    .loop 25,895,58.96,61.93,56.85,59.63,55.81,60.55,56.16,63.98,57.13,63.10
    .accept 54022 >>Accept Mekkatorque's Battle Plans
step
    #label ZandalariTrollMekkatorquesBattlePlans
    >>Pick up |cRXP_PICK_Mekkatorque's Battle Plans|r inside the tent
    .goto 895,59.12,61.80
    .complete 54022,1 --1/1 Mekkatorque's Battle Plans
step
    >>Kill |cRXP_ENEMY_Gnomish Engineers|r and |cRXP_ENEMY_Vigil Hill Marines|r
    .goto 895,58.96,61.93,20,0
    .goto 895,56.85,59.63,25,0
    .goto 895,55.81,60.55,35,0
    .goto 895,56.16,63.98,25,0
    .goto 895,57.13,63.10,25,0
    .loop 25,895,58.96,61.93,56.85,59.63,55.81,60.55,56.16,63.98,57.13,63.10
    .complete 54009,1 --15/15 Alliance and Kul Tiran forces slain
    .mob Vigil Hill Marine
    .mob Gnomish Engineer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trade Prince Gallywix|r
    .goto 895,54.60,64.58
    .turnin 54008 >>Turn in Insurance Renewal
    .turnin 54009 >>Turn in Killing on the Side
    .turnin 54022 >>Turn in Mekkatorque's Battle Plans
    .accept 54028 >>Accept Mech versus Airship
    .target Trade Prince Gallywix
step
    >>Mount |cRXP_FRIENDLY_G.M.O.D|r
    .goto 895,54.61,64.65
    .complete 54028,1 --1/1 Board G.M.O.D
    .timer 34,Flight RP
step
    >>Wait for the RP. Aim |T2032581:0|t[Azerite Cannon] (1) at the ship when available
    .goto 895,54.61,64.65
    .complete 54028,2 --Wreck the Alliance Airship (100%)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_G.M.O.D|r
    .goto 895,68.05,84.11
    .skipgossip
    .complete 54028,3 --1/1 Speak with Gallywix to sound the SOS
    .target G.M.O.D
step    
    >>Defeat |cRXP_ENEMY_High Tinker Mekkatorque|r. Kill the |cRXP_ENEMY_Ultra Magnetizer|r
    .goto 895,67.84,84.28
    .complete 54028,4 --1/1 Confront Mekkatorque
    .timer 30, Flight RP
    .mob High Tinker Mekkatorque
    .mob Ultra Magnetizer
step
    .goto 895,87.63,53.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWait for the RP. Talk to |cRXP_FRIENDLY_G.M.O.D|r
    .turnin 54028 >>Turn in Mech versus Airship
    .accept 54094 >>Accept A Goblin's Definition of Success
    .target G.M.O.D
step
    #completewith next
    .goto 895,87.84,51.18
    .gossipoption 48794 >>Talk to |cRXP_FRIENDLY_Erul Dawnbrook|r to return to Zuldazar
step
    .goto 862,58.44,62.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .turnin 54094 >>Turn in A Goblin's Definition of Success
    .accept 54121 >>Accept Breaking Out Ashvane
    .target Nathanos Blightcaller
step
    #completewith next
    .goto 862,58.46,62.99
    .skipgossip 1
    .zone 895 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tattersail|r to sail to Tiragarde Sound
    .target Dread-Admiral Tattersail
step
    .groundgoto 895,87.04,51.89,20,0
    .groundgoto 895,85.28,51.76,20,0
    .groundgoto 895,84.75,51.65,14,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF2NArcanist Valtrois|r and |cFF00FF2NRexxar|r
    .turnin 54121 >>Turn in Breaking Out Ashvane
    .accept 54175 >>Accept Face Your Enemy
    .accept 54176 >>Accept Be More Uniform
    .goto 895,82.94,49.54
    .accept 54177 >>Accept A Brilliant Distraction
    .goto 895,83.00,49.65
    .target Arcanist Valtrois
    .target Rexxar
step
    #completewith ZandalariTrollFaceYourEnemy
    >>Kill |cRXP_ENEMY_Proudmoore|r forces. Loot them for their |cRXP_LOOT_text|r
    .complete 54176,1 --12/12 Proudmoore Equipment
    .mob Proudmoore Sentry
    .mob Proudmoore Infantry
    .mob Proudmoore Defender
step
    >>Use |T135144:0|t[Shard of Vesara] on |cRXP_ENEMY_Ollie Oakman|r
    .goto 895,81.54,48.44
    .use 165702
    .complete 54175,3 --1/1 Ollie Oakman sent
    .mob Ollie Oakman
step
    #title Volatile Azerite 1/8
    >>Pick up the Volatile Azerite Weapons
    .goto 895,81.55,48.62
    .complete 54177,1,1 --1/8 Volatile Azerite
step
    #title Volatile Azerite 2/8
    >>Pick up the Volatile Azerite Weapons
    .goto 895,81.55,49.20
    .complete 54177,1,2 --2/8 Volatile Azerite
step
    #title Volatile Azerite 3/8
    >>Pick up the Volatile Azerite Weapons
    .goto 895,81.16,49.37
    .complete 54177,1,3 --3/8 Volatile Azerite
step
    #title Volatile Azerite 4/8
    >>Pick up the Volatile Azerite Weapons
    .goto 895,80.79,49.52
    .complete 54177,1,4 --4/8 Volatile Azerite
step
    #title Volatile Azerite 5/8
    >>Pick up the Volatile Azerite Weapons
    .goto 895,79.49,49.58
    .complete 54177,1,5 --5/8 Volatile Azerite
step
    >>Use |T135144:0|t[Shard of Vesara] on |cRXP_ENEMY_Drusilla Whiteblade|r
    .goto 895,79.31,49.57
    .use 165702
    .complete 54175,1 --1/1 Drusilla Whiteblade sent
    .mob Drusilla Whiteblade
step
    #title Volatile Azerite 6/8
    >>Pick up the Volatile Azerite Weapons
    .goto 895,79.16,49.24
    .complete 54177,1,6 --6/8 Volatile Azerite
step
    #title Volatile Azerite 7/8
    >>Pick up the Volatile Azerite Weapons
    .goto 895,79.19,49.06
    .complete 54177,1,7 --7/8 Volatile Azerite
step
    #title Volatile Azerite 8/8
    >>Pick up the Volatile Azerite Weapons
    .goto 895,79.24,47.35
    .complete 54177,1 --8/8 Volatile Azerite
step
    >>Kill |cRXP_ENEMY_Captain Serafina|r. Loot her for the |cRXP_LOOT_Overcoat|r
    .goto 895,79.10,46.97
    .complete 54176,2 --1/1 Captain's Overcoat
    .mob Captain Serafina
step
    #label ZandalariTrollFaceYourEnemy
    >>Use |T135144:0|t[Shard of Vesara] on |cRXP_ENEMY_Rosie Walker|r
    .goto 895,80.47,45.95
    .use 165702
    .complete 54175,2 --1/1 Rosie Walker sent
    .mob Rosie Walker
step
    >>Kill |cRXP_ENEMY_Proudmoore|r forces. Loot them for their |cRXP_LOOT_text|r
    .goto 895,81.54,48.44,25,0
    .goto 895,79.31,49.57,25,0
    .goto 895,80.47,45.95,25,0
    .loop 25,895,81.54,48.44,79.31,49.57,80.47,45.95
    .complete 54176,1 --12/12 Proudmoore Equipment
    .mob Proudmoore Sentry
    .mob Proudmoore Infantry
    .mob Proudmoore Defender
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF2NRexxar|r and |cFF00FF2NArcanist Valtrois|r
    .turnin 54177 >>Turn in A Brilliant Distraction
    .goto 895,83.00,49.65
    .turnin 54176 >>Turn in Be More Uniform
    .turnin 54175 >>Turn in Face Your Enemy
    .accept 54178 >>Accept Catching a Ride
    .goto 895,82.95,49.53
    .target Arcanist Valtrois
    .target Rexxar
step
    .groundgoto 895,84.78,51.67,15,0
    .goto 895,88.20,50.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .turnin 54178 >>Turn in Catching a Ride
    .accept 54179 >>Accept Through the Front Door
    .target Nathanos Blightcaller
step
    #completewith ZandalariTrollsEscapefromTolDagor
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r. Complete the scenario
    .goto 895,88.20,50.75,0,0
    .skipgossip 1
    .complete 54179,1 --1/1 Scenario "Escape from Tol Dagor" completed
    .target Nathanos Blightcaller
step
    .isOnQuest 54179
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Amical|r. Wait for the RP
    .goto 1349,32.01,66.37,20,0
    .goto 1349,38.94,70.67
    .skipgossip
    .timer 34,Warden Amical RP
    .scenario 4033,1
    .target Warden Amical
step
    .isOnQuest 54179
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Proudmoore Defender|r or the |cRXP_FRIENDLY_Proudmoore Sentry|r
    .goto 1351,50.17,84.14
    .skipgossip
    .scenario 4035,1
    .target Proudmoore Defender
    .target Proudmoore Sentry
step
    .isOnQuest 54179
    >>Pick up the |cRXP_PICK_Master Key|r from the table
    .goto 1351,50.66,84.43
    .scenario 4035,2
step
    .isOnQuest 54179
    >>Wait for the short RP. Open the cell door
    .goto 1351,47.08,74.90,10,0
    .goto 1351,57.80,58.21
    .scenario 4036,1
step
    .isOnQuest 54179
    #title Prisoner freed 2/10
    >>Open the cell doors
    .goto 1351,54.02,66.55
    .scenario 4037,1,2 --2/10 Ashvane Prisoner freed
step
    .isOnQuest 54179
    #title Prisoner freed 4/10
    >>Open the cell doors
    .goto 1351,52.23,70.67
    .scenario 4037,1,4 --4/10 Ashvane Prisoner freed
step
    .isOnQuest 54179
    #title Prisoner freed 5/10
    >>Open the cell doors
    .goto 1351,50.40,74.96
    .scenario 4037,1,5 --5/10 Ashvane Prisoner freed
step
    .isOnQuest 54179
    #title Prisoner freed 7/10
    >>Open the cell doors
    .goto 1351,35.37,58.81
    .scenario 4037,1,7 --7/10 Ashvane Prisoner freed
step
    .isOnQuest 54179
    #title Prisoner freed 8/10
    >>Open the cell doors
    .goto 1351,37.24,54.57
    .scenario 4037,1,8 --8/10 Ashvane Prisoner freed
step
    .isOnQuest 54179
    #title Prisoner freed 9/10
    >>Open the cell doors
    .goto 1351,41.01,46.23
    .scenario 4037,1,9 --9/10 Ashvane Prisoner freed
step
    .isOnQuest 54179
    #title Prisoner freed 10/10
    >>Open the cell doors
    .goto 1351,42.92,41.94
    .scenario 4037,1 --10/10 Ashvane Prisoner freed
step
    .isOnQuest 54179
    #completewith next
    .goto 1350,50.75,17.71,10,0
    .goto 1350,66.86,35.18,10,0
    .goto 1350,61.45,42.82,8,0
    .goto 1350,50.24,36.71,10 >>Go down
step
    .isOnQuest 54179
    #title Explosives set 1/4
    >>Plant the |cRXP_PICK_Volatile Azerite Weapons|r
    .goto 1350,32.94,71.59
    .scenario 4047,1,1 --1/4 Set explosives in the drain
step
    .isOnQuest 54179
    #title Explosives set 2/4
    >>Plant the |cRXP_PICK_Volatile Azerite Weapons|r
    .goto 1350,46.20,86.12
    .scenario 4047,1,2 --2/4 Set explosives in the drain
step
    .isOnQuest 54179
    #title Explosives set 3/4
    >>Plant the |cRXP_PICK_Volatile Azerite Weapons|r
    .goto 1350,59.69,61.12
    .scenario 4047,1,3 --3/4 Set explosives in the drain
step
    .isOnQuest 54179
    #title Explosives set 4/4
    >>Plant the |cRXP_PICK_Volatile Azerite Weapons|r
    .goto 1350,63.92,44.53
    .scenario 4047,1 --4/4 Set explosives in the drain
step
    .isOnQuest 54179
    >>Leave the sewers
    .goto 1349,51.45,47.96
    .scenario 4047,2
step
    .isOnQuest 54179
    >>Kill |cRXP_ENEMY_Warden Amical|r
    .goto 1349,54.70,54.80
    .scenario 4038,1 --1/1 Kill Warden Amical
    .mob Warden Amical
step
    #label ZandalariTrollsEscapefromTolDagor
    .isOnQuest 54179
    >>Follow the arrow to the ship
    .scenario 4045,1 --1/1 Get to the Ship
    .goto 1349,50.74,72.13
step
    #completewith next
    .goto 895,87.84,51.18
    .gossipoption 48794 >>Talk to |cRXP_FRIENDLY_Erul Dawnbrook|r to return to Zuldazar
step
    .goto 862,58.44,62.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .turnin 54179 >>Turn in Through the Front Door
    .accept 54139 >>Accept War Is Here
    .target Nathanos Blightcaller
step
    #completewith next
    .noflyable 1165
    .goto 1165,50.32,99.92,10,0
    .goto 1165,50.59,85.57,15,0
    .goto 1165,52.09,90.13
    .fly The Great Seal >>Fly to The Great Seal
step
    #completewith next
    .goto 1165,49.95,42.28,10 >>Enter the Great Seal
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Rastakhan|r
    .goto 1164,39.94,70.17
    .complete 54139,1 --1/1 Speak with King Rastakhan
    .skipgossip
    .target King Rastakhan
step
    .goto 1164,41.26,66.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Talanji|r
    .turnin 54139 >>Turn in War Is Here
    .accept 54140 >>Accept Ride of the Zandalari
    .target Princess Talanji
step
    #completewith next
    .goto 1165,49.95,42.28,10 >>Leave the Great Seal
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rez'okun|r. Press "ESC" to skip the upcoming cutscene
    .goto 1165,49.09,41.29
    .complete 54140,1 --1/1 Speak with Captain Rez'okun to mobilize the fleet
    .skipgossip 1
    .target Captain Rez'okun
step
    #completewith next
    .noflyable 1165
    .goto 1165,48.51,38.03,12,0
    .goto 1165,45.26,37.07,20,0
    .goto 1165,42.85,27.88,20,0
    .goto 1165,39.19,26.72,20 >>Jump down the pyramid
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Rakera|r
    .goto 862,52.95,40.16
    .skipgossip 1
    .complete 54140,2 --1/1 Speak with General Rakera to mobilize the army
    .target General Rakera
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hexlord Raal|r
    .groundgoto 1165,39.26,26.76,20,0
    .groundgoto 1165,45.38,23.82,15,0
    .goto 1165,52.82,11.86
    .complete 54140,3 --1/1 Speak with Hexlord Raal to mobilize aerial forces
    .skipgossip 1
    .target Hexlord Raal
step
    #completewith next
    .noflyable 1165
    .goto 1165,52.96,11.67
    .vehicle 149509>>Mount |cRXP_FRIENDLY_Ata the Winglord|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Talanji|r and |cRXP_FRIENDLY_General Rakera|r
    .turnin 54140 >>Turn in Ride of the Zandalari
    .accept 54157 >>Accept No One Left Behind
    .goto 862,57.95,21.26
    .accept 54156 >>Accept A Path of Blood
    .goto 862,57.95,21.31
    .target Princess Talanji
    .target General Rakera
step
    #completewith next
    >>Kill the |cRXP_ENEMY_7th Legion|r forces
    .complete 54156,1 --15/15 Alliance forces slain
    .mob 7th Legion Marine
    .mob 7th Legion Rifleman
step
    >>Weaken |cRXP_ENEMY_Blademaster Telaamon|r to rescue Rokhan
    .goto 862,59.07,18.46
    .complete 54157,1 --1/1 Rokhan rescued
    .mob Blademaster Telaamon
step
    >>Kill the |cRXP_ENEMY_7th Legion|r forces
    .goto 862,58.91,20.89,25,0
    .goto 862,56.85,20.47,35,0
    .goto 862,58.03,18.83,25,0
    .loop 30,862,58.91,20.89,56.85,20.47,58.03,18.83,58.91,20.89
    .complete 54156,1 --15/15 Alliance forces slain
    .mob 7th Legion Marine
    .mob 7th Legion Rifleman
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Talanji|r and |cRXP_FRIENDLY_General Rakera|r
    .turnin 54157 >>Turn in No One Left Behind
    .goto 862,57.95,21.26
    .turnin 54156 >>Turn in A Path of Blood
    .accept 54207 >>Accept Retaking the Outpost
    .goto 862,57.96,21.31
    .target Princess Talanji
    .target General Rakera
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hexlord Raal|r and |cRXP_FRIENDLY_Patch|r
    .turnin 54207 >>Turn in Retaking the Outpost
    .goto 863,50.27,78.47
    .accept 54211 >>Accept Putting the Gob in Gob Squad
    .accept 54212 >>Accept Re-rebuilding the A.F.M.O.D.
    .goto 863,50.30,78.42
    .target Hexlord Raal
    .target Patch
step
    #completewith ZandalariTrollPuttingtheGobinGobSquad
    >>Kill |cRXP_ENEMY_Gilnean Ambushers|r and |cRXP_ENEMY_Night Elf Sentinels|r. Loot them for the |cRXP_LOOT_A.F.M.O.D. Parts|r
    .complete 54212,1 --10/10 A.F.M.O.D. Part
    .mob Gilnean Ambusher
    .mob Night Elf Sentinel
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ticker|r
    .goto 863,49.46,79.75
    .complete 54211,1 --1/1 Ticker found
    .target Ticker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newt|r
    .goto 863,48.26,78.99
    .complete 54211,2 --1/1 Newt found
    .target Newt
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Volt|r
    .goto 863,47.94,76.93
    .complete 54211,4 --1/1 Volt found
    .target Volt
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grit|r
    .goto 863,47.94,76.93
    .complete 54211,3 --1/1 Grit found
    .target Grit
step
    >>Kill |cRXP_ENEMY_Gilnean Ambushers|r and |cRXP_ENEMY_Night Elf Sentinels|r. Loot them for the |cRXP_LOOT_A.F.M.O.D. Parts|r
    .goto 863,45.68,77.56,25,0
    .goto 863,46.61,80.39,25,0
    .goto 863,49.34,80.99,25,0
    .goto 863,49.00,76.49,25,0
    .goto 863,47.50,77.98,25,0
    .loop 25,863,45.68,77.56,46.61,80.39,49.34,80.99,49.00,76.49,47.50,77.98
    .complete 54212,1 --10/10 A.F.M.O.D. Part
    .mob Gilnean Ambusher
    .mob Night Elf Sentinel
step
    .goto 863,50.30,78.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Patch|r
    .turnin 54211 >>Turn in Putting the Gob in Gob Squad
    .turnin 54212 >>Turn in Re-rebuilding the A.F.M.O.D.
    .accept 54213 >>Accept It's Alive!
    .target Patch
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Talanji|r
    .goto 863,50.36,78.46
    .skipgossip 1
    .timer 13,Talanji RP
    .complete 54213,1 --1/1 Speak with Talanji to power up the A.F.M.O.D.
    .target Princess Talanji
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Patch|r and |cRXP_FRIENDLY_Princess Talanji|r
    .turnin 54213 >>Turn in It's Alive!
    .goto 863,50.30,78.41
    .accept 54224 >>Accept The Battle of Zul'jan Ruins
    .goto 863,50.36,78.46
    .target Patch
    .target Princess Talanji
step
    #completewith next
    .goto 863,50.22,78.22
    .vehicle 148769 >>Mount the |cRXP_FRIENDLY_A.F.M.O.D.|r
    .target A.F.M.O.D.
step
    >>Use the |T136050:0|t[Electric Charge] (2) to move faster and the |T252185:0|t[Shotgun Blast] (1) to kill the defenders
    .goto 863,48.04,81.55,25,0
    .goto 863,47.30,79.87,25,0
    .goto 863,46.95,76.06,25,0
    .goto 863,45.84,75.30,20,0
    .goto 863,45.95,79.18,25,0
    .loop 25,863,48.04,81.55,47.30,79.87,46.95,76.06,45.84,75.30,45.95,79.18
    .complete 54224,1 --60/60 Fallen Outpost defenders slain
step
    >>Wait for the short RP. Use the |T136050:0|t[Electric Charge] (2) to move faster and the |T252185:0|t[Shotgun Blast] (1) to kill the defenders
    .goto 863,40.21,81.34,20,0
    .goto 863,39.66,80.52,16,0
    .goto 863,40.41,78.78,20,0
    .goto 863,41.53,78.61,16,0
    .goto 863,39.39,76.85,20,0
    .goto 863,41.33,78.72
    .complete 54224,2 --80/80 Zul'jan ruins defenders slain
step
    .goto 863,39.27,78.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWait for the RP. Talk to |cRXP_FRIENDLY_Princess Talanji|r
    .turnin 54224 >>Turn in The Battle of Zul'jan Ruins
    .accept 54244 >>Accept We Have Them Cornered
    .target Princess Talanji
step
    #completewith next
    .goto 863,39.20,78.01
    .vehicle 147319 >>Mount the Riding Raptor
    .timer 70,Riding RP
step
    >>Enjoy the ride!
    .goto 863,31.40,52.05
    .complete 54244,1 --1/1 Ride to Zalamar on Riding Raptor
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Talanji|r and |cRXP_FRIENDLY_General Rakera|r
    .turnin 54244 >>Turn in We Have Them Cornered
    .accept 54249 >>Accept Zandalari Justice
    .goto 863,30.90,51.87
    .accept 54269 >>Accept None Shall Escape
    .accept 54270 >>Accept Breaking Mirrors
    .goto 863,30.82,51.81
    .target Princess Talanji
    .target General Rakera
step
    #completewith ZandalariTrollNoneShallEscape
    >>Kill |cRXP_ENEMY_Dark Iron Shamans|r, |cRXP_ENEMY_Dark Iron Bruiser|r, and |cRXP_ENEMY_Void Elf Mages|r
    .complete 54249,1 --15/15 Alliance forces slain
    .mob Dark Iron Shaman
    .mob Dark Iron Bruiser
    .mob Void Elf Mage
step
    #title Machine destroyed 1/4
    >>Destroy the |cRXP_PICK_Dark Iron Mole Machine|r
    .goto 863,30.76,48.31
    .complete 54269,1,1 --1/4 Mole machine destroyed
step
    >>Kill |cRXP_ENEMY_Telaamon's Mirror Image|r
    .goto 863,31.04,45.48,8,0
    .goto 863,30.93,45.15
    .complete 54270,1 --1/1 Aid Witch Doctor Kejabu
    .mob Telaamon's Mirror Image
step
    #title Machine destroyed 2/4
    >>Destroy the |cRXP_PICK_Dark Iron Mole Machine|r
    .goto 863,32.58,44.49
    .complete 54269,1,2 --2/4 Mole machine destroyed
step
    >>Kill |cRXP_ENEMY_Telaamon's Mirror Image|r
    .goto 863,33.04,46.36,12,0
    .goto 863,33.36,45.92
    .complete 54270,2 --1/1 Aid Jo'chunga
    .mob Telaamon's Mirror Image
step
    #title Machine destroyed 3/4
    >>Destroy the |cRXP_PICK_Dark Iron Mole Machine|r
    .goto 863,32.91,47.29
    .complete 54269,1,3 --3/4 Mole machine destroyed
step
    #label ZandalariTrollNoneShallEscape
    #title Machine destroyed 4/4
    >>Destroy the |cRXP_PICK_Dark Iron Mole Machine|r
    .goto 863,32.12,48.25
    .complete 54269,1 --4/4 Mole machine destroyed
step
    >>Kill |cRXP_ENEMY_Dark Iron Shamans|r, |cRXP_ENEMY_Dark Iron Bruiser|r, and |cRXP_ENEMY_Void Elf Mages|r
    .goto 863,33.04,50.28,20,0
    .goto 863,30.57,50.00,20,0
    .goto 863,29.81,47.91,20,0
    .goto 863,30.39,46.01,25,0
    .goto 863,32.58,44.49,25,0
    .loop 25,863,33.04,50.28,30.57,50.00,29.81,47.91,30.39,46.01,32.58,44.49
    .complete 54249,1 --15/15 Alliance forces slain
    .mob Dark Iron Shaman
    .mob Dark Iron Bruiser
    .mob Void Elf Mage
step
    >>Jump down. |cRXP_WARN_You are safe from falling damage|r
    .goto 863,31.25,46.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rokhan|r
    .turnin 54249 >>Turn in Zandalari Justice
    .turnin 54270 >>Turn in Breaking Mirrors
    .turnin 54269 >>Turn in None Shall Escape
    .accept 54271 >>Accept Telaamon's Purge
    .target Rokhan
step
    >>Kill |cRXP_ENEMY_Blademaster Telaamon|r
    .goto 863,29.06,46.60
    .complete 54271,1 --1/1 Blademaster Telaamon slain
    .mob Blademaster Telaamon
step
    .goto 863,31.24,46.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rokhan|r
    .turnin 54271 >>Turn in Telaamon's Purge
    .accept 54275 >>Accept Parting Mists
    .target Rokhan
step
    >>Run into the tornado
    .goto 863,31.44,47.02
    .complete 54275,1 --1/1 Use Rokhan's mojo to fly out of Hir'eek's lair (Optional)
step
    #completewith next
    .goto 863,31.78,45.45
    .vehicle 147685 >>Mount the |cRXP_FRIENDLY_Riding Raptor|r
    .timer 48,Riding RP
step
    >>Enjoy the ride!
    .goto 863,31.51,31.90
    .complete 54275,2 --1/1 Ride out to dispel fog voodoo
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Talanji|r
    .goto 863,31.62,31.77
    .skipgossip 146921,1
    .timer 24,Talanji RP
    .complete 54275,3 --1/1 Ask Talanji to nullify the Abyssal Scepter
    .target Princess Talanji
step
    .goto 863,31.62,31.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Talanji|r. Press "ESC" to skip the upcoming cutscene
    .turnin 54275 >>Turn in Parting Mists
    .target Princess Talanji
step
    .goto 863,31.35,31.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Rakera|r
    .accept 54280 >>Accept Fly Out to Meet Them
    .target General Rakera
step
    #completewith next
    .goto 863,31.46,32.05
    .vehicle 147716 >>Mount the |cRXP_FRIENDLY_Pterrordax|r
    .timer 78,Flying RP
    .target Hexlord Raal
step
    .goto 1165,36.86,5.25
    .complete 54280,1 --1/1 Ride back to Zuldazar with Hexlord Raal
step
    .goto 1165,37.02,5.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Talanji|r
    .turnin 54280 >>Turn in Fly Out to Meet Them
    .target Princess Talanji
]])