RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP BfA War Campaign
#name 1) Heart of Azeroth
#displayname Chapter 1 - Heart of Azeroth
#next 2) Vol'dun Foothold

<<Alliance

step
    .goto 1161,75.06,14.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthen Guardian|r
    .accept 53028 >>Accept A Dying World
    .target Earthen Guardian
step
    .goto 1161,67.08,23.58,5,0
    .goto 1161,69.09,25.08,30,0
    .goto 1161,69.65,15.92
    .isOnQuest 53028
    .zone 81 >>Take the Portal to Silithus
step
    .goto 81,42.22,44.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magni Bronzebeard|r
    .turnin 53028 >>Turn in A Dying World
    .accept 51211 >>Accept The Heart of Azeroth
    .target Magni Bronzebeard
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Titan Translocator|r
    .goto 81,43.16,44.51
    .complete 51211,1 --1/1 Use device in Silithus  to travel to Chamber of the Heart
step
    .goto 1021,50.17,53.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magni Bronzebeard|r.
    >>|cRXP_WARN_Press "ESC" on your keyboard to skip the cinematic|r
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
#name 2) Vol'dun Foothold
#displayname Chapter 2 - Vol'dun Foothold
#next 3) Nazmir Foothold

<<Alliance

step
    .zoneskip 1021,1
    .goto 1021,50.02,30.69
    .zone 81 >>Use the Titan Translocator
step
    .zoneskip 81,1
    .goto 81,41.49,44.85
    .zone 1163 >>Take the Portal to Tiragarde
step
    .isQuestAvailable 51569
    .goto 1161,69.27,27.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .accept 51569 >>Accept The Zandalar Campaign
    .target Halford Wyrmbane
step
    .isQuestAvailable 51571
    .isQuestTurnedIn 51569
    .goto 1161,69.26,27.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .accept 51961 >>Accept The Ongoing Campaign
    .target Halford Wyrmbane
step
    .isQuestAvailable 51571
    .isQuestTurnedIn 51961
    .goto 1161,69.28,27.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .accept 52443 >>Accept The Final Foothold
    .target Halford Wyrmbane
step
    .goto 1161,69.36,26.93
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Zandalar Campaign Table|r and select |cRXP_WARN_Vol'dun|r. Click on the popup under your minimap to turn in the quest.
    >>|cRXP_WARN_If you've accidently picked a different zone then select the specific zone guide from the guide list|r
    .accept 51572 >>Accept Foothold: Vol'dun
    .turnin 51572 >>Turn in Foothold: Vol'dun
step
    .goto 1161,69.26,26.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 51569 >>Turn in The Zandalar Campaign
    .accept 51283 >>Accept Voyage to the West
    .target Halford Wyrmbane
step
    .isOnQuest 51283
    .goto 1161,67.95,26.71
    .gossipoption 48162 >>Talk to |cRXP_FRIENDLY_Grand Admiral Jes-Tereth|r
    .target Grand Admiral Jes-Tereth
step
    .goto 864,32.91,34.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 51283 >>Turn in Voyage to the West
    .accept 51170 >>Accept Ooh Rah!
    .target Halford Wyrmbane
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Rope.|r
    >>|cRXP_WARN_If you happen to fall, a ladder is conveniently located next to the boat.|r
    .goto 864,32.99,34.87
    .complete 51170,1 --1/1 Landing craft boarded
    .timer 20.5, Boat RP
step
    >>|cRXP_ENEMY_Kill Sethrak's|r
    .goto 864,36.94,33.05,30,0
    .goto 864,37.5,33.27,30,0
    .goto 864,38.1,34.45,30,0
    .goto 864,39.11,35.56,15,0
    .loop 30,864,36.94,33.05,37.5,33.27,38.1,34.45,37.69,35.66,36.91,34.85
    .complete 51170,2 --15/15 Sethrak forces slain
    .mob Sethrak Raider
    .mob Sethrak Mender
    .mob Krolusk Warcrawler
    .mob Sethrak Battle Rider
step
    .goto 864,39.65,35.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Ermey|r
    .turnin 51170 >>Turn in Ooh Rah!
    .accept 51229 >>Accept Establish a Beachhead
    .target Sergeant Ermey
step
    .goto 864,37.55,35.32
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Alliance Banner|r
    .complete 51229,1 --1/1 Plant the Alliance Banner
step
    .goto 864,37.72,35.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 51229 >>Turn in Establish a Beachhead
    .accept 51349 >>Accept Honor Bound
    .target Halford Wyrmbane
step
    .goto 864,38.96,42.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Ermey|r
    .turnin 51349 >>Turn in Honor Bound
    .accept 51350 >>Accept Unexpected Aid
    .accept 51351 >>Accept Poisoned Barbs
    .target Sergeant Ermey
step
    #completewith Saltspine Barb
    >>Kill |cRXP_ENEMY_Saltspine Krolusks|r and loot them for their |T132274:0|t|cRXP_LOOT_Barb|r
    .complete 51351,1 --8/8 Saltspine Barb
step
    .goto 864,39.6,42.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Prickly Pear|r on the Ground.
    .complete 51350,1,1 --8/8 Prickly Pear Root
step
    .goto 864,40.28,42.88
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Prickly Pear|r on the Ground.
    .complete 51350,1,2 --8/8 Prickly Pear Root
step
    .goto 864,40.51,41.92
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Prickly Pear|r on the Ground.
    .complete 51350,1,3 --8/8 Prickly Pear Root
step
    .goto 864,40.9,41.71
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Prickly Pear|r on the Ground.
    .complete 51350,1,4 --8/8 Prickly Pear Root
step
    .goto 864,41.46,42.04
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Prickly Pear|r on the Ground.
    .complete 51350,1,5 --8/8 Prickly Pear Root
step
    .goto 864,41.68,41.49
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Prickly Pear|r on the Ground.
    .complete 51350,1,6 --8/8 Prickly Pear Root
step
    .goto 864,41.64,40.04
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Prickly Pear|r on the Ground.
    .complete 51350,1,7 --8/8 Prickly Pear Root
step
    .goto 864,40.9,40.57
    #label Saltspine Barb
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Prickly Pear|r on the Ground.
    .complete 51350,1,8 --8/8 Prickly Pear Root
step
    .loop 15,864,40.2,40.58,39.6,42.03,40.96,42.31,41.95,41.24
    >>Kill |cRXP_ENEMY_Saltspine Krolusks|r and loot them for their |T132274:0|t|cRXP_LOOT_[Barb|r
    .complete 51351,1 --8/8 Saltspine Barb
step
    .goto 864,38.95,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Ermey|r
    .turnin 51350 >>Turn in Unexpected Aid
    .turnin 51351 >>Turn in Poisoned Barbs
    .accept 51366 >>Accept Antidote Application
    .target Sergeant Ermey
step
    #title Interact with |cRXP_FRIENDLY_Vorrik|r
    >>Interact with |cRXP_FRIENDLY_Vorrik.|r
    .goto 864,38.96,42.98
    .use 160045
    .complete 51366,1 --1/1 Antidote Salve applied
    .target Vorrik
    .timer 4, Vorrik RP
step
    .goto 864,38.96,42.98
    >>|cRXP_WARN_Wait for the brief roleplay, which will be completed when the timer runs out.|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vorrik|r
    .turnin 51366 >>Turn in Antidote Application
    .accept 51369 >>Accept Friends in Strange Places
    .target Vorrik
    .timer 6,Pterrordax RP
step
    #title Interact |cRXP_FRIENDLY_Pterrordax|r
    .goto 864,39.08,43.06
    >>|cRXP_WARN_Wait for the brief roleplay, which will be completed when the timer runs out.|r
    >>Interact with the |cRXP_FRIENDLY_Tamed Pterrordax.|r
    .complete 51369,1 --1/1 Pterrordax mounted
    .timer 55,Pterrordax Flight
step
    .goto 864,27.24,54.15
    >>|cRXP_WARN_Wait for the brief roleplay, which will be completed when the timer runs out.|r
    .complete 51369,2 --1/1 Fly to the Sanctuary of the Devoted
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vorrik|r and |cRXP_FRIENDLY_Sergeant Ermey.|r
    .turnin 51369 >>Turn in Friends in Strange Places
    .accept 51391 >>Accept Defang the Faithless
    .accept 51394 >>Accept Break the Siege
    .goto 864,27.23,53.94
    .accept 51389 >>Accept Breaking Free
    .goto 864,27.18,53.91
    .target Vorrik
    .target Sergeant Ermey
step
    #completewith Spires
    >>Kill |cRXP_ENEMY_Faithless|r
    .complete 51391,1 --12/12 Faithless slain
    .mob Faithless Warden
    .mob Faithless Skycaller
    .mob Faithless Ravager
    .mob Faithless Agressor
step
    #title Spire
    .goto 864,29.08,54.95
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Spire|r
    .complete 51394,3,1 --2/2 Spires shattered
step
    #title Banner
    .goto 864,29.37,54.00
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Banner|r
    .complete 51394,1,1 --4/4 Banners burned
step
    #title Cannon
    .goto 864,29.49,53.83
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Cannon|r
    .complete 51394,2,1 --4/4 Cannons crushed
step
    #title Cannon
    .goto 864,29.64,53.67
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Cannon|r
    .complete 51394,2,2 --4/4 Cannons crushed
step
    #title Cage
    .goto 864,30.08,53.66
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Cage|r to rescue |cRXP_FRIENDLY_Private James.|r
    .complete 51389,1 --1/1 Private James rescued
step
    #title Banner
    .goto 864,29.75,53.04
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Banner|r
    .complete 51394,1,2 --4/4 Banners burned
step
    #title Banner
    .goto 864,29.74,52.09
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Banner|r
    .complete 51394,1,3 --4/4 Banners burned
step
    #title Cannon
    .goto 864,29.67,51.53
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Cannon|r
    .complete 51394,2,3 --4/4 Cannons crushed
step
    #title Cannon
    .goto 864,29.53,51.34
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Cannon|r
    .complete 51394,2,4 --4/4 Cannons crushed
step
    #title Banner
    .goto 864,29.42,51.17
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Banner|r
    .complete 51394,1,4 --4/4 Banners burned
step
    #label Spires
    #title Spire
    .goto 864,28.89,51.46
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Spire|r
    .complete 51394,3,2 --2/2 Spires shattered
step
    .loop 30,864,28.97,54.75,30.43,54.54,30.01,51.35,29.02,51.91
    >>Kill |cRXP_ENEMY_Faithless|r
    .complete 51391,1 --12/12 Faithless slain
    .mob Faithless Warden
    .mob Faithless Skycaller
    .mob Faithless Ravager
    .mob Faithless Agressor
step
    #completewith next
    .goto 864,27.22,51.39,10 >> Enter the first floor of the |cFFfa9602pyramid.|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private James|r and |cRXP_FRIENDLY_Vorrik|r inside the pyramid.
    .turnin 51389 >>Turn in Breaking Free
    .goto 864,27.56,52.61
    .turnin 51391 >>Turn in Defang the Faithless
    .turnin 51394 >>Turn in Break the Siege
    .accept 51395 >>Accept The Keepers' Keys
    .goto 864,27.62,52.57
    .target Vorrik
    .target Private James
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private James|r
    .goto 864,27.56,52.61
    .skipgossip
    .complete 51395,1 --1/1 Speak to Private James
    .timer 92,Follow Vorrik RP
    .target Private James
step
    .goto 864,26.54,51.97,10,0
    .goto 864,26.72,52.58,10,0
    .goto 864,27.11,52.57
    >>Follow the Arrow.
    >>|cRXP_WARN_Then wait for |cRXP_FRIENDLY_Vorrik|r to arrive, which will be completed when the timer runs out.|r
    .complete 51395,2 --1/1 Follow Vorrik
step
    .goto 864,27.11,52.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vorrik|r
    .turnin 51395 >>Turn in The Keepers' Keys
    .target Vorrik
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Ermey|r
    .goto 864,27.02,52.50
    .accept 51402 >>Accept Reporting In
    .target Sergeant Ermey
step
    .goto 864,26.69,52.56,10,0
    .goto 864,37.71,35.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 51402 >>Turn in Reporting In
    .target Halford Wyrmbane
step
    .goto 864,37.47,35.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Umbric|r
    .turnin 52008 >>Turn in Champion: Magister Umbric
    .target Magister Umbric
step
    .goto 864,37.71,35.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .accept 51969 >>Accept Return to Boralus
    .target Halford Wyrmbane
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Admiral Jes-Tereth|r
    .goto 864,34.91,33.76
    .skipgossip 135681,1
    .complete 51969,1 --Speak to Jes-Tereth
    .target Grand Admiral Jes-Tereth
step
    .goto 1161,69.26,27.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 51969,3 >>Turn in Return to Boralus
    .target Halford Wyrmbane
]])

RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP BfA War Campaign
#name 3) Nazmir Foothold
#displayname Chapter 3 - Nazmir Foothold
#next 4) Island Expedition

<<Alliance

step
    .isQuestAvailable 51571
    .isQuestAvailable 51569
    .goto 1161,69.27,27.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .accept 51569 >>Accept The Zandalar Campaign
    .target Halford Wyrmbane
step
    .isQuestAvailable 51571
    .isQuestTurnedIn 51569
    .goto 1161,69.26,27.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .accept 51961 >>Accept The Ongoing Campaign
    .target Halford Wyrmbane
step
    .isQuestAvailable 51571
    .isQuestTurnedIn 51961
    .goto 1161,69.28,27.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .accept 52443 >>Accept The Final Foothold
    .target Halford Wyrmbane
step
    .isQuestAvailable 51571
    .isOnQuest 51569
    .goto 1161,69.38,26.96
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Zandalar Campaign table|r and |cRXP_WARN_select Nazmir|r. Click on the popup under your minimap to turn in the quest.
    >>|cRXP_WARN_If you've accidently picked a different zone then select the specific zone guide from the guide list|r
    .accept 51571 >>Accept Foothold: Nazmir
    .turnin 51571 >>Turn in Foothold: Nazmir
step
    .isQuestAvailable 51571
    .isOnQuest 51961
    .goto 1161,69.38,26.96
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Zandalar Campaign table|r and |cRXP_WARN_select Nazmir|r. Click on the popup under your minimap to turn in the quest.
    >>|cRXP_WARN_If you've accidently picked a different zone then select the specific zone guide from the guide list|r
    .accept 51571 >>Accept Foothold: Nazmir
    .turnin 51571 >>Turn in Foothold: Nazmir
step
    .isQuestAvailable 51571
    .isOnQuest 52443
    .goto 1161,69.38,26.96
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Zandalar Campaign table|r and |cRXP_WARN_select Nazmir|r. Click on the popup under your minimap to turn in the quest.
    >>|cRXP_WARN_If you've accidently picked a different zone then select the specific zone guide from the guide list|r
    .accept 51571 >>Accept Foothold: Nazmir
    .turnin 51571 >>Turn in Foothold: Nazmir
step
    .isOnQuest 52443
    .goto 1161,69.27,26.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 52443 >>Turn in The Final Foothold
    .target Halford Wyrmbane
step
    .isOnQuest 51961
    .goto 1161,69.27,26.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 51961 >>Turn in The Ongoing Campaign
    .accept 51088 >>Accept Heart of Darkness
    .target Halford Wyrmbane
step
    .isOnQuest 51689
    .goto 1161,69.26,26.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 51569 >>Turn in The Zandalar Campaign
    .accept 51283 >>Accept Voyage to the West
    .target Halford Wyrmbane
step
    #completewith next
    .goto 1161,67.95,26.69
    .gossipoption 48164 >>Talk to |cRXP_FRIENDLY_Grand Admiral Jes-Tereth|r
    .timer 83,Travel to Fort Victory RP
    .target Grand Admiral Jes-Tereth
step
    .goto 863,61.45,39.92
    >>|cRXP_WARN_Wait for the boat to arrive, which will be completed when the timer runs out.|r
    .complete 51088,2 --Travel to Fort Victory
step
    .goto 863,62.03,41.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann Bronzebeard|r
    .turnin 51088 >>Turn in Heart of Darkness
    .accept 51129 >>Accept Dubious Offering
    .target Brann Bronzebeard
step
    #title Interact with the |cRXP_FRIENDLY_Bat|r
    .goto 863,62.11,42.51
    >>Interact with the |cRXP_FRIENDLY_Bat|r
    .complete 51129,1 --1/1 Bat flown to Zalamar
    .timer 60,Bat Flight RP
    .target Zalamar Messenger Bat
step
    .goto 863,31.16,46.71
    >>|cRXP_WARN_Wait for the |cRXP_FRIENDLY_Bat|r to arrive, which will be completed when the timer runs out.|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann Bronzebeard|r
    .turnin 51129 >>Turn in Dubious Offering
    .accept 51167 >>Accept Blood of Hir'eek
    .accept 51150 >>Accept Honoring the Fallen
    .target Brann Bronzebeard
step
    #title |cRXP_FRIENDLY_Soldier 1|r
    .goto 863,31.11,46.74
    >>Interact with the |cRXP_FRIENDLY_Soldier|r
    .complete 51150,1,1 --7/7 Dog Tag recovered
step
    #title |cRXP_FRIENDLY_Soldier 2|r
    .goto 863,31.10,47.22
    >>Interact with the |cRXP_FRIENDLY_Soldier|r
    .complete 51150,1,2 --7/7 Dog Tag recovered
step
    #title |cRXP_FRIENDLY_Soldier 3|r
    .goto 863,31.42,47.6
    >>Interact with the |cRXP_FRIENDLY_Soldier|r
    .complete 51150,1,3 --7/7 Dog Tag recovered
step
    #title |cRXP_FRIENDLY_Soldier 4|r
    .goto 863,31.75,47.14
    >>Interact with the |cRXP_FRIENDLY_Soldier|r
    .complete 51150,1,4 --7/7 Dog Tag recovered
step
    #title |cRXP_FRIENDLY_Soldier 5|r
    .goto 863,30.72,45.84
    >>Interact with the |cRXP_FRIENDLY_Soldier|r
    .complete 51150,1,5 --7/7 Dog Tag recovered
step
    #title |cRXP_FRIENDLY_Soldier 6|r
    .goto 863,30.58,46.18
    >>Interact with the |cRXP_FRIENDLY_Soldier|r
    .complete 51150,1,6 --7/7 Dog Tag recovered
step
    #title |cRXP_FRIENDLY_Soldier 7|r
    .goto 863,29.64,46.05
    >>Interact with the |cRXP_FRIENDLY_Soldier|r
    .complete 51150,1,7 --7/7 Dog Tag recovered
step
    .goto 863,29.22,46.52
    >>Kill |cRXP_ENEMY_Blood Witch Pakkala|r
    .complete 51167,1 --1/1 Blood Witch Pakkala slain
    .mob Blood Witch Pakkala
step
    .goto 863,31.16,46.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann Bronzebeard|r
    .turnin 51167 >>Turn in Blood of Hir'eek
    .turnin 51150 >>Turn in Honoring the Fallen
    .accept 51168 >>Accept Zealots of Zalamar
    .target Brann Bronzebeard
step
    .goto 863,31.52,46.14,10,0
    .goto 863,31.82,45.6,10,0
    .goto 863,32.3,46.15,10,0
    .goto 863,32.12,47.34,10,0
    .goto 863,31.69,48.19,10,0
    .loop 15,863,31.52,46.14,31.82,45.6,32.3,46.15,32.12,47.34,31.69,48.19
    >>Kill |cRXP_ENEMY_Zalamar Zealots|r
    .complete 51168,1 --10/10 Zalamar Zealot slain
    .mob Zalamar Zealot
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann Bronzebeard|r next to you.
    .turnin 51168 >>Turn in Zealots of Zalamar
    .accept 51169 >>Accept Flight from the Fall
    .target Brann Bronzebeard
step
    #title Interact with the Bat
    .goto 863,31.14,47.99
    >>Interact with the |cRXP_FRIENDLY_Bat|r
    .complete 51169,1 --1/1 Bat flown to Fort Victory
    .timer 63,Bat Flight RP
    .target Zalamar Messenger Bat
step
    .goto 863,62.03,41.60
    >>|cRXP_WARN_Wait for the |cRXP_FRIENDLY_Bat|r to arrive, which will be completed when the timer runs out.|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann Bronzebeard|r
    .turnin 51169 >>Turn in Flight from the Fall
    .accept 51281 >>Accept Zul'Nazman
    .target Brann Bronzebeard
step
    .goto 863,49.97,50.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann Bronzebeard|r
    .turnin 51281 >>Turn in Zul'Nazman
    .accept 51279 >>Accept Nazmani Cultists
    .accept 51280 >>Accept Offerings to G'huun
    .target Brann Bronzebeard
step
    #completewith offering
    >>Kill |cRXP_ENEMY_Nazmani trolls|r
    .complete 51279,1 --15/15 Nazmani troll slain
    .mob Nazmani Warrior
    .mob Sanguine Disciple
    .mob Nazmani Drudge
    .mob Nazmani Ritualist
step
    .goto 863,48.03,52.03
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_vase|r inside the |cFFfa9602tent.|r
    .complete 51280,1,1 --8/8 Offering to G'huun destroyed
step
    .goto 863,47.92,52.38
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_vase|r inside the |cFFfa9602tent.|r
    .complete 51280,1,2 --8/8 Offering to G'huun destroyed
step
    .goto 863,47.77,52.11,5,0
    .goto 863,47.46,52.78
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_vase|r inside the |cFFfa9602tent.|r
    .complete 51280,1,3 --8/8 Offering to G'huun destroyed
step
    .goto 863,47.25,52.91
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_vase|r inside the |cFFfa9602tent.|r
    .complete 51280,1,4 --8/8 Offering to G'huun destroyed
step
    .goto 863,46.99,52.09
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_vase|r inside the |cFFfa9602tent.|r
    .complete 51280,1,5 --8/8 Offering to G'huun destroyed
step
    .goto 863,46.31,50.56
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_vase|r in the |cFFfa9602open world.|r
    .complete 51280,1,6 --8/8 Offering to G'huun destroyed
step
    .goto 863,45.6,51.44
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_vase|r in the |cFFfa9602open world.|r
    .complete 51280,1,7 --8/8 Offering to G'huun destroyed
step
    #label offering
    .goto 863,46.17,52.43
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_vase|r in the |cFFfa9602open world.|r
    .complete 51280,1,8 --8/8 Offering to G'huun destroyed
step
    .loop 30,863,46.17,52.43,48.65,52.43,45.50,59.64,45.8,53.58,47.33,51.20
    >>Kill |cRXP_ENEMY_Nazmani trolls|r
    .complete 51279,1 --15/15 Nazmani troll slain
    .mob Nazmani Warrior
    .mob Sanguine Disciple
    .mob Nazmani Drudge
    .mob Nazmani Ritualist
step
    .goto 863,45.71,57.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann Bronzebeard|r
    .turnin 51279 >>Turn in Nazmani Cultists
    .turnin 51280 >>Turn in Offerings to G'huun
    .accept 51282 >>Accept Captain Conrad
    .target Brann Bronzebeard
step
    .goto 863,44.98,57.64,5,0
    .goto 863,45.00,57.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Conrad|r inside the |cFFfa9602tent.|r
    .turnin 51282 >>Turn in Captain Conrad
    .accept 51177 >>Accept Lessons of the Damned
    .timer 63,Follow Captain Conrad RP
    .target Captain Conrad
step
    .goto 863,45.70,59.73
    >>Follow |cRXP_FRIENDLY_Captain Conrad|r
    .complete 51177,1 --1/1 Follow Captain Conrad
    .timer 8, Captain Conrad RP
    .target Captain Conrad
step
    >>Kill |cRXP_ENEMY_Captain Conrad|r
    .complete 51177,2 --1/1 Captain Conrad slain
    .mob Captain Conrad
step
    .goto 863,62.03,41.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann Bronzebeard|r
    .turnin 51177 >>Turn in Lessons of the Damned
    .target Brann Bronzebeard
step
    .goto 863,61.79,41.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r
    .turnin 52013 >>Turn in Champion: John J. Keeshan
    .target John J. Keeshan
step
    .goto 863,62.03,41.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann Bronzebeard|r
    .accept 51967 >>Accept Return to Boralus
    .target Brann Bronzebeard
step
    .goto 863,62.06,40.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Desha Stormwallow|r
    .skipgossip
    .complete 51967,1 --Speak to Desha Stormwallow
    .target Desha Stormwallow
step
    .goto 1161,69.27,27.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 51967 >>Turn in Return to Boralus
    .target Halford Wyrmbane
]])

RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP BfA War Campaign
#name 4) Island Expedition
#displayname Chapter 4 - Island Expedition
#next 5) Zuldazar Foothold

<< Alliance

step
    .isQuestAvailable 51994
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .goto 1161,69.27,27.01
    .accept 51903 >>Accept Island Expedition
    .target Halford Wyrmbane
step
    .goto 1161,66.87,33.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flynn Fairwind|r
    .turnin 51903 >>Turn in Island Expedition
    .accept 51904 >>Accept Island Expedition
    .target Flynn Fairwind
step
    .goto 1161,66.86,33.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flynn Fairwind|r
    .complete 51904,1 --1/1 Speak with Flynn Fairwind
    .skipgossip 1
    .target Flynn Fairwind
step
    .isOnQuest 51904
    #sticky
    #label AllianceIslandExpedition
    >>Complete the Island Expedition scenario
    >>|cRXP_WARN_If you are in combat, it's important to kill them to avoid being stuck in battle.|r
    .complete 51904,2 --1/1 Explore the Uncharted Island
step
    .isOnQuest 51904
    #title Go to Crystal 1
    .goto 1022,79.25,63.92
    >>|cRXP_WARN_Follow the Arrow.|r
    .scenario 3838,1 --1/1 Investigate the Azerite
step
    .isOnQuest 51904
    #title Mine Crystal 1
    .goto 1022,79.25,63.92
    >>Mine the |cRXP_PICK_Azerite Crystal|r
    .scenario 3839,1,1 --1/3 Mine Azerite Crystals
step
    .isOnQuest 51904
    #title Mine Crystal 2
    .goto 1022,75.62,55.55
    >>Mine the |cRXP_PICK_Azerite Crystal|r
    .scenario 3839,1,2 --2/3 Mine Azerite Crystals
step
    .isOnQuest 51904
    #title Mine Crystal 3
    .goto 1022,77.56,50.15
    >>Mine the |cRXP_PICK_Azerite Crystal|r
    .scenario 3839,1,3 --3/3 Mine Azerite Crystals
step
    .isOnQuest 51904
    #title Azerite Source 2
    .goto 1022,67.19,33.93
    >>|cRXP_WARN_Follow the Arrow.|r
    .scenario 3840,1 --1/1 Investigate the second source of Azerite
    .mob Encrusted Kingscuttler
step
    .isOnQuest 51904
    #title Kill |cRXP_ENEMY_Crab|r
    .goto 1022,64.84,28.35
    >>Kill |cRXP_ENEMY_Encrusted Kingscuttler|r
    .scenario 3841,1 --1/1 Kil the Encrusted Kingscuttler
    .mob Encrusted Kingscuttler
step
    .isOnQuest 51904
    #title Azerite source 3
    .goto 1022,44.96,46.08
    >>|cRXP_WARN_Follow the Arrow.|r
    .scenario 3842,1 --1/1 Investigate the third source of Azerite
    .mob Kunzen Leafeater
step
    .isOnQuest 51904
    >>Kill |cRXP_ENEMY_Akakakoo|r and |TInterface/cursor/crosshair/interact.blp:20|tclick |cRXP_PICK_Pouches/Sacks of Azerite|r
    .goto 1022,28.63,60.76,15,0
    .goto 1022,31.75,58.73,15,0
    .goto 1022,28.8,55.96,15,0
    .scenario 3843,1 --500/500 Take the Azerite from the Kunzen hozen tribe.
    .mob Kunzen Leafeater
    .mob Akakaboo
    .mob Kunzen Hozen
step
    .isOnQuest 51904
    .goto 1022,75.74,73.72
    >>Run back to the |cFFfa9602ship.|r
    >>|cRXP_WARN_You can skip the upcoming cutscene with ESC.|r
    .scenario 3844,1 --1/1 Escape from Uncharted Isle before the Horde arrive.
step
    --x(shiek) insert hidden quest here
    .isOnQuest 51904
    #requires AllianceIslandExpedition
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flynn|r
    .goto 1161,66.86,33.24
    .turnin 51904 >>Turn in Island Expedition
    .target Flynn Fairwind
]])

RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP BfA War Campaign
#name 5) Zuldazar Foothold
#displayname Chapter 5 - Zuldazar Foothold
#next 6) Uniting Kultiras

<<Alliance

step
    .isQuestAvailable 51308
    .isQuestAvailable 51569
    .goto 1161,69.27,27.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .accept 51569 >>Accept The Zandalar Campaign
step
    .isQuestAvailable 51308
    .isQuestTurnedIn 51569
    .goto 1161,69.26,27.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .accept 51961 >>Accept The Ongoing Campaign
    .target Halford Wyrmbane
step
    .isQuestAvailable 51308
    .isQuestTurnedIn 51961
    .goto 1161,69.28,27.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .accept 52443 >>Accept The Final Foothold
    .target Halford Wyrmbane
step
    .isQuestAvailable 51308
    .isOnQuest 52443
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Zandalar Campaign table|r and |cRXP_WARN_select Zuldazar|r. Click on the popup under your minimap to turn in the quest.
    .accept 51570 >>Accept Foothold: Zuldazar
    .turnin 51570 >>Turn in Foothold: Zuldazar
    .goto 1161,69.39,26.98
    .turnin 52443 >>Turn in The Final Foothold
    .goto 1161,69.27,26.98
    .target Halford Wyrmbane
    .timer 45,Halford Speech RP
step
    .isQuestAvailable 51308
    .isOnQuest 51961
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Zandalar Campaign table|r and |cRXP_WARN_select Zuldazar|r. Click on the popup under your minimap to turn in the quest.
    .goto 1161,69.39,26.98
    .turnin 51961 >>Turn in The Ongoing Campaign
    .goto 1161,69.27,26.98
    .target Halford Wyrmbane
    .timer 45,Halford Speech RP
step
    .isQuestAvailable 51308
    .isOnQuest 51569
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Zandalar Campaign table|r and |cRXP_WARN_select Zuldazar|r. Click on the popup under your minimap to turn in the quest.
    .accept 51570 >>Accept Foothold: Zuldazar
    .turnin 51570 >>Turn in Foothold: Zuldazar
    .goto 1161,69.39,26.98
    .turnin 51569 >>Turn in The Zandalar Campaign
    .goto 1161,69.27,26.98
    .target Halford Wyrmbane
    .timer 45,Halford Speech RP
step
    .isOnQuest 51569
    .goto 1161,69.27,27.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 51569 >>Turn in The Zandalar Campaign
step
    .isOnQuest 51961
    .goto 1161,69.26,27.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 51961 >>Turn in The Ongoing Campaign
    .target Halford Wyrmbane
step
    .isOnQuest 52443
    .goto 1161,69.28,27.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 52443 >>Turn in The Final Foothold
    .target Halford Wyrmbane
step
    #completewith Brigadier Thom
    .goto 1161,69.27,26.98
    .gossipoption 49384 >>Talk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .timer 44, Halford Wyrmbane RP
    .complete 51308,1 --1/1 Listen to Halford Wyrmbane's battle plan
    .target Halford Wyrmbane
step
    #completewith Brigadier Thom
    .goto 1161,67.96,26.66
    .gossipoption 48168 >>Talk to |cRXP_FRIENDLY_Grand Admiral Jes-Tereth|r
    .target Grand Admiral Jes-Tereth
step
    #label Brigadier Thom
    .goto 862,77.54,54.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brigadier Thom|r
    .turnin 51308 >>Turn in Zuldazar Foothold
    .accept 51201 >>Accept The Troll's Tale
    .target Brigadier Thom
step
    .goto 862,77.51,54.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_ENEMY_Captured Zandalari Troll|r
    >>|cRXP_WARN_You can skip the upcoming cutscene with ESC.|r
    .skipgossip 1
    .complete 51201,1 --1/1 Speak with Captured Zandalari Troll
    .target Captured Zandalari Troll
step
    .goto 862,77.54,54.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brigadier Thom|r
    .turnin 51201 >>Turn in The Troll's Tale
    .accept 51190 >>Accept Granting a Reprieve
    .accept 51544 >>Accept Disarming the Cannons
    .target Brigadier Thom
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Medic Feorea|r and |cRXP_FRIENDLY_Degdod|r
    .accept 51191 >>Accept Save Them All
    .goto 862,77.13,55.54
    .accept 51192 >>Accept A Lack of Surplus
    .accept 51193 >>Accept That One's Mine
    .goto 862,77.13,55.59
    .target Degdod
    .target Medic Feorea
step
    #completewith ZandalariForsakens
    >>Kill |cRXP_ENEMY_Zandalari|r and |cRXP_ENEMY_Forsakens.|r
    .complete 51190,2 --8/8 Zandalari slain
    .complete 51190,1 --8/8 Forsaken slain
    .mob Zandalari Quickblade
    .mob Forsaken Deathguard
    .mob Zandalari Axe Thrower
    .mob Bleak Conjurer
step
    .goto 862,78.46,52.01
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Crate|r on the Ground.
    .complete 51192,1,1 --8/8 Bundle of Supplies
step
    .goto 862,78.51,51.95
    >>Interact with the |cRXP_FRIENDLY_Injured Sailor|r
    .complete 51191,1,1 --8/8 Injured Sailor Healed
    .use 160433
    .target Injured Shipwrecked Sailor
step
    .goto 862,78.55,53.05
    >>Interact with the |cRXP_FRIENDLY_Injured Sailor|r
    .complete 51191,1,2 --8/8 Injured Sailor Healed
    .use 160433
    .target Injured Shipwrecked Sailor
step
    .goto 862,79.00,53.96
    >>Interact with the |cRXP_FRIENDLY_Injured Sailor|r
    .complete 51191,1,3 --8/8 Injured Sailor Healed
    .use 160433
    .target Injured Shipwrecked Sailor
step
    .goto 862,79.71,53.63
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Crate|r on the Ground.
    .complete 51192,1,2 --8/8 Bundle of Supplies
step
    .goto 862,79.52,55.02
    >>Interact with the |cRXP_FRIENDLY_Injured Sailor|r
    .complete 51191,1,4 --8/8 Injured Sailor Healed
    .use 160433
    .target Injured Shipwrecked Sailor
step
    .goto 862,80.14,55.02
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Crate|r on the Ground.
    .complete 51192,1,3 --8/8 Bundle of Supplies
step
    .goto 862,80.19,55.26
    >>Interact with the |cRXP_FRIENDLY_Injured Sailor|r
    .complete 51191,1,5 --8/8 Injured Sailor Healed
    .use 160433
    .target Injured Shipwrecked Sailor
step
    .goto 862,80.96,54.31
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Crate|r on the Ground.
    .complete 51192,1,4 --8/8 Bundle of Supplies
step
    .goto 862,80.90,53.69
    >>Interact with the |cRXP_FRIENDLY_Injured Sailor|r
    .complete 51191,1,5 --8/8 Injured Sailor Healed
    .use 160433
    .target Injured Shipwrecked Sailor
step
    .goto 862,80.90,53.69
    >>Interact with the |cRXP_FRIENDLY_Injured Sailor|r
    .complete 51191,1,6 --8/8 Injured Sailor Healed
    .use 160433
    .target Injured Shipwrecked Sailor
step
    .goto 862,80.81,53.27
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Crate|r on the Ground.
    .complete 51192,1,5 --8/8 Bundle of Supplies
step
    .goto 862,80.93,53.44
    >>Interact with the |cRXP_FRIENDLY_Injured Sailor|r
    .complete 51191,1,7 --8/8 Injured Sailor Healed
    .use 160433
    .target Injured Shipwrecked Sailor
step
    .goto 862,80.89,53.39
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Crate|r on the Ground.
    .complete 51192,1,6 --8/8 Bundle of Supplies
step
    .goto 862,81.09,53.86
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Crate|r on the Ground.
    .complete 51192,1,7 --8/8 Bundle of Supplies
step
    .goto 862,81.47,53.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Crate|r on the Ground.
    .complete 51192,1,8 --8/8 Bundle of Supplies
step
    .goto 862,81.52,53.78
    >>Interact with the |cRXP_FRIENDLY_Injured Sailor|r
    .complete 51191,1,8 --8/8 Injured Sailor Healed
    .use 160433
    .target Injured Shipwrecked Sailor
step
    .goto 862,83.35,54.73
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Cannon|r
    .complete 51544,1,1 --3/3 Cannons destroyed
step
    .goto 862,83.34,54.4
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Cannon|r
    .complete 51544,1,2 --3/3 Cannons destroyed
step
    .goto 862,83.34,54.21
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Cannon|r
    .complete 51544,1,3 --3/3 Cannons destroyed
step
    #label ZandalariForsakens
    .goto 862,81.94,51.43
    >>Kill|cRXP_ENEMY_ Major Alan Hawkins|r and loot him for his |T133041:0|t|cRXP_LOOT_Hammer|r
    |cRXP_WARN_Kill the remaining Zandalari and Forsakens|r
    .complete 51193,1 --1/1 Degdod's Hammer
step
    .loop 15,862,80.71,52.64;79.85,53.56,80.82,55.67,82.23,54.63
    >>Kill |cRXP_ENEMY_Zandalari|r and |cRXP_ENEMY_Forsakens.|r
    .complete 51190,2 --8/8 Zandalari slain
    .complete 51190,1 --8/8 Forsaken slain
    .mob Zandalari Quickblade
    .mob Forsaken Deathguard
    .mob Zandalari Axe Thrower
    .mob Bleak Conjurer
step
    .goto 862,77.54,54.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brigadier Thom|r
    .turnin 51190 >>Turn in Granting a Reprieve
    .turnin 51544 >>Turn in Disarming the Cannons
    .target Brigadier Thom
step
    .goto 862,77.12,55.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Medic Feorea|r
    .turnin 51191 >>Turn in Save Them All
    .target Medic Feorea
step
    .goto 862,77.13,55.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Degdod|r
    .turnin 51192 >>Turn in A Lack of Surplus
    .turnin 51193 >>Turn in That One's Mine
    .target Degdod
step
    .goto 862,77.50,55.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark|r
    .accept 51418 >>Accept Xibala
    .target Kelsey Steelspark
step
    .goto 862,80.35,55.41
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_boat|r
    .complete 51418,1 --1/1 Take rowboat to Xibala
    .timer 128,Travel to Xibala RP
step
    .goto 862,40.74,70.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anvil-Thane Thurgaden|r
    .turnin 51418 >>Turn in Xibala
    .accept 51331 >>Accept Mole Machinations
    .accept 51309 >>Accept Rocks of Ragnaros
    .target Anvil-Thane Thurgaden
step
    .goto 862,39.56,72.78
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Slag|r
    .complete 51309,1,1 --9/9 Firelands Slag
step
    .goto 862,39.62,72.86
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Slag|r
    .complete 51309,1,2 --9/9 Firelands Slag
step
    .goto 862,39.57,73.13
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Mole Machine|r
    .complete 51331,1,1 --4/4 Dark Iron Mole Machine
step
    .goto 862,39.63,73.45
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Slag|r
    .complete 51309,1,3 --9/9 Firelands Slag
step
    .goto 862,39.63,73.52
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Slag|r
    .complete 51309,1,4 --9/9 Firelands Slag
step
    .goto 862,39.58,73.61
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Slag|r
    .complete 51309,1,5 --9/9 Firelands Slag
step
    .goto 862,39.37,73.7
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Mole Machine|r
    .complete 51331,1,2 --4/4 Dark Iron Mole Machine
step
    .goto 862,39.15,73.86
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Slag|r
    .complete 51309,1,6 --9/9 Firelands Slag
step
    .goto 862,39.11,73.82
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Slag|r
    .complete 51309,1,7 --9/9 Firelands Slag
step
    .goto 862,39.05,73.79
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Slag|r
    .complete 51309,1,8 --9/9 Firelands Slag
step
    .goto 862,39.12,73.67
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Slag|r
    .complete 51309,1,9 --9/9 Firelands Slag
step
    .goto 862,39.1,72.98
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Mole Machine|r
    .complete 51331,1,3 --4/4 Dark Iron Mole Machine
step
    .goto 862,39.03,72.35
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Mole Machine|r
    .complete 51331,1,4 --4/4 Dark Iron Mole Machine
step
    .goto 862,40.74,70.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anvil-Thane Thurgaden|r
    .turnin 51331 >>Turn in Mole Machinations
    .turnin 51309 >>Turn in Rocks of Ragnaros
    .accept 51359 >>Accept Fragment of the Firelands
    .target Anvil-Thane Thurgaden
step
    .goto 862,40.65,70.88
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_Unstable Magma|r
    .complete 51359,1 --Magma Elemental stabilized
    .use 160058
    .target Unstable Magma
step
    .goto 862,32.92,69.69
    >>To effectively kill the |cRXP_ENEMY_Goblins|r, use |T135808:0|t(2) when it's available and switch to |T525023:0|t(1) when |T135808:0|t(2) is on cooldown.
    .complete 51359,2 --200/200 Bilgewater Goblin slain
step
    #completewith next
    +Press the ability |T236372:0|tDismiss Magma Elemental
step
    .goto 862,40.74,70.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anvil-Thane Thurgaden|r
    .turnin 51359 >>Turn in Fragment of the Firelands
    .target Anvil-Thane Thurgaden
step
    .goto 862,40.77,70.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark|r
    .turnin 52003 >>Turn in Champion: Kelsey S
    .accept 51968 >>Accept Talk to Boralus
    .target Kelsey Steelspark
step
    .goto 862,40.46,71.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daria|r
    .complete 51968,1 --Speak to Daria Smithson
    .skipgossip 1
    .target Daria Smithson
step
    .goto 1161,69.29,26.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 51968 >>Turn in Return to Boralus
    .target Halford Wyrmbane
]])

RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP BfA War Campaign
#name 6) Uniting Kultiras
#displayname Chapter 6 - Uniting Kultiras
#next 7) Ready for War

step
    .isOnQuest 51918
    >>Complete quests in |cRXP_WARN_Tiragarde Sound for Proudmoore Admiralty|r, in |cRXP_WARN_Stormsong for Storm's Wake|r and in |cRXP_WARN_Drustvar for Order of Embers.|r
    .complete 51918,1 -- Proudmoore Admiralty (Friendly)
    .complete 51918,2 -- Storm's Wake (Friendly)
    .complete 51918,3 -- Order of Embers (Friendly)
]])

RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP BfA War Campaign
#name 7) Ready for War
#displayname Chapter 7 - Ready for War
#next 8) Tides of Vengeance

<< Alliance

step
    .goto 1161,69.28,26.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .accept 52026 >>Accept Overseas Assassination
    .target Halford Wyrmbane
step
    .isOnQuest 52026
    .goto 1161,67.95,26.71
    .gossipoption 48163 >>Talk to |cRXP_FRIENDLY_Grand Admiral Jes-Tereth|r
    .target Grand Admiral Jes-Tereth
step
    .goto 864,37.71,35.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 52026 >>Turn in Overseas Assassination
    .accept 52027 >>Accept The Vol'dun Plan
    .target Halford Wyrmbane
step
    .isOnQuest 52027
    .goto 864,37.71,35.95
    .gossipoption 48912 >>Talk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .timer 34, Halford Wyrmbane RP
    .target Halford Wyrmbane
step
    .goto 864,37.71,35.95
    >>|cRXP_WARN_Wait for the brief roleplay, which will be completed when the timer runs out.|r
    .complete 52027,1 --1/1 Discuss Halford's strategy
step
    .isOnQuest 52027
    .goto 864,37.76,35.92
    .gossipoption 48913 >>Talk to |cRXP_FRIENDLY_Shandris Feathermoon|r
    .timer 6,Shandris RP
    .target Shandris Feathermoon
step
    .goto 864,37.76,35.92
    >>|cRXP_WARN_Wait for the brief roleplay, which will be completed when the timer runs out.|r
    .complete 52027,2 --1/1 Discuss Shandris's strategy
step
    .goto 864,37.70,35.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 52027 >>Turn in The Vol'dun Plan
    .accept 52028 >>Accept Comb the Desert
    .target Halford Wyrmbane
step
    .goto 864,41.06,47.64
    >>|cRXP_WARN_Follow the Arrow.|r
    .complete 52028,1 --1/1 Search for Horde activity
    .timer 5, Shandris RP
step
    .goto 864,41.06,47.64,5,0
    .goto 864,40.75,47.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r
    .turnin 52028 >>Turn in Comb the Desert
    .accept 52029 >>Accept Dirty Work
    .target Shandris Feathermoon
step
    .goto 864,41.09,48.75
    >>Kill |cRXP_ENEMY_Nazlara|r and loot him for |T1505954:0|t|cRXP_LOOT_Reliquary Orders.|r
    .complete 52029,1 --1/1 Reliquary Orders
    .mob Nazlara
step
    .goto 864,40.70,47.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 52029 >>Turn in Dirty Work
    .accept 52030 >>Accept Keep Combing
    .target Halford Wyrmbane
step
    .goto 864,45.11,58.91
    >>|cRXP_WARN_Follow the Arrow.|r
    .complete 52030,1 --1/1 Search for more Reliquary operatives
step
    .goto 864,44.99,58.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r
    .turnin 52030 >>Turn in Keep Combing
    .accept 52031 >>Accept Classic Reliquary
    .target Shandris Feathermoon
step
    .goto 864,45.25,60.61
    >>Kill |cRXP_ENEMY_Elisa Veilsong|r and loot him for |T237388:0|t|cRXP_LOOT_[Reliquary Map: Vol'dun]|r
    .complete 52031,1 --1/1 Reliquary Map: Vol'dun
    .mob Elisa Veilsong
step
    .goto 864,44.96,58.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 52031 >>Turn in Classic Reliquary
    .accept 52032 >>Accept Never Stop Combing
    .target Halford Wyrmbane
step
    .goto 864,41.08,72.38
    >>|cRXP_WARN_Follow the Arrow.|r
    .complete 52032,1 --1/1 Find the Exiles' Enclave
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r, |cRXP_FRIENDLY_Shandris Feathermoon|r and |cRXP_FRIENDLY_Explosioneer Zoidfuse.|r
    .turnin 52032 >>Turn in Never Stop Combing
    .accept 52035 >>Accept Improvised Survival
    .goto 864,41.08,72.62
    .accept 52034 >>Accept A Message to the Zandalari
    .goto 864,41.12,72.57
    .accept 52036 >>Accept They Have Alpacas Here
    .goto 864,41.14,72.41
    .target Halford Wyrmbane
    .target Shandris Feathermoon
    .target Explosioneer Zoidfuse
step
    .goto 864,40.65,72.51,5,0
    .goto 864,41.08,72.62
    >>Interact with a |cRXP_ENEMY_Lost Alpaca.|r and bring him back to |cRXP_FRIENDLY_Explosioneer Zoidfuse|r
    .complete 52036,1 --1/1 Bring a Lost Alpaca back to Explosioneer Zoidfuse
    .use 161633
    .mob Lost Alpaca
    .target Explosioneer Zoidfuse
step
    .goto 864,41.08,72.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 52036 >>Turn in They Have Alpacas Here
    .target Halford Wyrmbane
step
    #completewith jug
    >>Kill |cRXP_ENEMY_Zandalari Exile|r
    .complete 52034,1 --12/12 Zandalari Exile slain
    --x shiek review: better logic here
    .mob Zandalari Exile
step
    .isOnQuest 52035
    .goto 864,40.9,74.26
    .cast 6478 >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Zandalari Water Jug|r
step
    .isOnQuest 52035
    .goto 864,40.86,74.19
    .cast 6478 >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Zandalari Dunemelon|r
step
    .isOnQuest 52035
    .goto 864,40.58,74.27
    .cast 6478 >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Zandalari Water Jug|r
step
    .isOnQuest 52035
    .goto 864,40.74,74.75,5,0
    .goto 864,40.55,74.73
    .cast 6478 >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Zandalari Dunemelon|r
step
    .isOnQuest 52035
    .goto 864,40.3,75.17
    .cast 6478 >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Zandalari Dunemelon|r
step
    .isOnQuest 52035
    .goto 864,40.23,75.46
    .cast 6478 >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Zandalari Water Jug|r
step
    .isOnQuest 52035
    .goto 864,40.04,75.57,5,0
    .goto 864,40.4,75.51,5,0
    .goto 864,40.66,75.53,5,0
    .goto 864,40.43,75.27,5,0
    .goto 864,40.23,75.36,5,0
    .cast 6478 >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Zandalari Dunemelon|r or |cRXP_PICK_Zandalari Water Jug|r
step
    .isOnQuest 52035
    .goto 864,40.04,75.57,5,0
    .goto 864,40.4,75.51,5,0
    .goto 864,40.66,75.53,5,0
    .goto 864,40.43,75.27,5,0
    .goto 864,40.23,75.36,5,0
    .cast 6478 >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Zandalari Dunemelon|r or |cRXP_PICK_Zandalari Water Jug|r
step
    .isOnQuest 52035
    .goto 864,40.66,75.53,5,0
    .goto 864,40.42,75.28,5,0
    .goto 864,40.25,75.35,5,0
    .cast 6478 >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Zandalari Water Jug|r
step
    #label jug
    .isOnQuest 52035
    .goto 864,40.42,75.28,5,0
    .goto 864,40.25,75.35,5,0
    .cast 6478 >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Zandalari Water Jug|r
    >>|cRXP_WARN_manually skip this step if the quest is complete.|r
step
    .loop 15,864,40.02,76.13,40.73,76.73,41.12,76.11,41.12,73.76
    >>Kill |cRXP_ENEMY_Zandalari Exile|r
    .complete 52034,1 --12/12 Zandalari Exile slain
    .mob Zandalari Exile
step
    .goto 864,41.1,72.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r
    .turnin 52034 >>Turn in A Message to the Zandalariw
    .target Shandris Feathermoon
step
    .goto 864,41.08,72.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 52035 >>Turn in Improvised Survival
    .target Halford Wyrmbane
step
    .goto 864,41.08,72.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .accept 52038 >>Accept Splitting Up
    .target Halford Wyrmbane
step
    .goto 864,29.93,78.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r
    .turnin 52038 >>Turn in Splitting Up
    .accept 52039 >>Accept Delayed Deathification
    .accept 52040 >>Accept Full of Arrows
    .target Shandris Feathermoon
step
    .goto 864,29.56,77.1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Remote-Detonation Deathbomb.|r
    .complete 52039,1,1 --8/8 Remote-Detonation Deathbomb buried
step
    .goto 864,29.01,76.43
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Remote-Detonation Deathbomb.|r
    .complete 52039,1,2 --8/8 Remote-Detonation Deathbomb buried
step
    .goto 864,28.84,75.79
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Remote-Detonation Deathbomb.|r
    .complete 52039,1,3 --8/8 Remote-Detonation Deathbomb buried
step
    .goto 864,28.7,75.62
    >>Kill |cRXP_ENEMY_Arlethal Sunwatcher|r
    .complete 52040,1 --1/1 Arlethal Sunwatcher slain
    .mob Arlethal Sunwatcher
step
    .goto 864,28.69,75.53
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Remote-Detonation Deathbomb.|r
    .complete 52039,1,4 --8/8 Remote-Detonation Deathbomb buried
step
    .goto 864,28.56,75.8
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Remote-Detonation Deathbomb.|r
    .complete 52039,1,5 --8/8 Remote-Detonation Deathbomb buried
step
    .goto 864,28.19,76.13
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Remote-Detonation Deathbomb.|r
    .complete 52039,1,6 --8/8 Remote-Detonation Deathbomb buried
step
    .goto 864,28.68,76.55
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Remote-Detonation Deathbomb.|r
    .complete 52039,1,7 --8/8 Remote-Detonation Deathbomb buried
step
    .goto 864,28.91,77.28
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Remote-Detonation Deathbomb.|r
    .complete 52039,1,8 --8/8 Remote-Detonation Deathbomb buried
step
    .goto 864,29.93,78.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r
    .turnin 52039 >>Turn in Delayed Deathification
    .turnin 52040 >>Turn in Full of Arrows
    .accept 52041 >>Accept Report to Wyrmbane
    .target Shandris Feathermoon
step
    .goto 864,39.65,83.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 52041 >>Turn in Report to Wyrmbane
    .accept 52042 >>Accept The Big Boom
    .target Halford Wyrmbane
step
    .isOnQuest 52042
    .goto 864,39.79,83.82
    .gossipoption 48925 >>Talk to |cRXP_FRIENDLY_Explosioneer Zoidfuse|r
    .timer 96, Vol'dun Explosion Protocol
    .target Explosioneer Zoidfuse
step
    >>|cRXP_WARN_Spam |T133015:0|t(1),|T132995:0|t(2) and |T237290:0|t(3)|r
    >>|cFFEB144CAfter completing the quest they will be an unskippable cutscene.|r
    .complete 52042,1 --1/1 Initiate the Vol'dun Explosion Protocol
step
    .goto 864,39.64,83.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 52042 >>Turn in The Big Boom
    .accept 52146 >>Accept Blood on the Sand
    .target Halford Wyrmbane
step
    .goto 864,38.69,83.01
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_7th Legion Spyglass|r
    >>|cRXP_WARN_Press "Escape" on your keyboard to skip the cinematic.|r
    .complete 52146,2 --1/1 Wait for Kelsey Steelspark to Talk
    .complete 52146,1 --1/1 Wait for Guzbert Gizmoflank to Talk
step
    .goto 864,39.65,83.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 52146 >>Turn in Blood on the Sand
    .accept 53069 >>Accept Operation: Blood Arrow
    .target Halford Wyrmbane
step
    #completewith next
    .cooldown item,6948,>0,1
    .hs >> Hearthstone to Boralus
step
    .goto 864,39.65,83.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 52146 >>Turn in Blood on the Sand
    .accept 53069 >>Accept Operation: Blood Arrow
    .target Halford Wyrmbane
step
    .goto 1161,69.28,26.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 53069 >>Turn in Operation: Blood Arrow
    .accept 52147 >>Accept Crippling the Horde
    .target Halford Wyrmbane
step
    .isOnQuest 52147
    .goto 1161,67.95,26.71
    .gossipoption 48165 >>Talk to |cRXP_FRIENDLY_Grand Admiral Jes-Tereth|r
    .target Grand Admiral Jes-Tereth
step
    .goto 863,61.98,41.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r
    .turnin 52147 >>Turn in Crippling the Horde
    .accept 52150 >>Accept How to Kill a Dark Ranger
    .target Shandris Feathermoon
step
    .isOnQuest 52150
    .goto 863,61.98,41.25
    .gossipoption 48904 >>Talk to |cRXP_FRIENDLY_Shandris Feathermoon|r
    .timer 32, Shandris RP
    .target Shandris Feathermoon
step
    #completewith next
    .goto 863,62.34,41.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Selina Duskraven|r
    .fp >>Get the Fort Victory Flight Path
    .target Selina Duskraven
step
    .goto 863,61.98,41.25
    >>|cRXP_WARN_Wait for the brief roleplay, which will be completed when the timer runs out.|r
    .complete 52150,1 --1/1 Shandris's plan explained
step
    .goto 863,61.97,41.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r
    .turnin 52150 >>Turn in How to Kill a Dark Ranger
    .accept 52156 >>Accept Tortollans in Distress
    .target Shandris Feathermoon
step
    .goto 863,61.78,41.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann Bronzebeard|r
    .accept 52158 >>Accept The Savage Hunt
    .target Brann Bronzebeard
step
    #completewith Tortollan
    >>Kill |cRXP_ENEMY_Blood Crawgs|r, |cRXP_ENEMY_Loa-Gutter Scavengers|r and |cRXP_ENEMY_Crawg Riders.|r
    .complete 52158,1 --15/15 Blood trolls and allies slain
    .mob Blood Crawgs
    .mob Loa-Gutter Scavengers
    .mob Crawg Riders
step
    .goto 863,58.91,28.52
    >>Interact with |cRXP_FRIENDLY_Tortollan Captive|r
    .complete 52156,1,1 --6/6 Tortollan captive rescued
    .target Tortollan Captive
step
    .goto 863,59.58,27.77
    >>Interact with |cRXP_FRIENDLY_Tortollan Captive|r
    .complete 52156,1,2 --6/6 Tortollan captive rescued
    .target Tortollan Captive
step
    .goto 863,60.87,27.47
    >>Interact with |cRXP_FRIENDLY_Tortollan Captive|r
    .complete 52156,1,3 --6/6 Tortollan captive rescued
    .target Tortollan Captive
step
    .goto 863,61.73,26.24
    >>Interact with |cRXP_FRIENDLY_Tortollan Captive|r
    .complete 52156,1,4 --6/6 Tortollan captive rescued
    .target Tortollan Captive
step
    .goto 863,61.62,25.06
    >>Interact with |cRXP_FRIENDLY_Tortollan Captive|r
    .complete 52156,1,5 --6/6 Tortollan captive rescued
    .target Tortollan Captive
step
    #label Tortollan
    .goto 863,59.76,25.16
    >>Interact with |cRXP_FRIENDLY_Tortollan Captive|r
    .complete 52156,1,6 --6/6 Tortollan captive rescued
    .target Tortollan Captive
step
    .loop 15,863,60.76,26.64,61.98,27.78,63.06,26.52,62.95,24.34
    >>Kill |cRXP_ENEMY_Blood Crawgs|r, |cRXP_ENEMY_Loa-Gutter Scavengers|r and |cRXP_ENEMY_Crawg Riders|r
    .complete 52158,1 --15/15 Blood trolls and allies slain
    .mob Blood Crawgs
    .mob Loa-Gutter Scavengers
    .mob Crawg Riders
step
    .isOnQuest 52156
    .goto 863,51.27,21.8
    .gossipoption 49091 >>Talk to |cRXP_FRIENDLY_Rescued Tortollan|r
    .timer 43, Tortollan
    .target Rescued Tortollan
step
    .goto 863,51.27,21.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r
    .turnin 52158 >>Turn in The Savage Hunt
    .target John J. Keeshan
step
    #completewith next
    .goto 863,50.81,20.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joseph Redfield|r
    .fp >>Get the Redfield's Watch Flight Path
    .target Joseph Redfield
step
    .goto 863,51.27,21.8
    >>|cRXP_WARN_Wait for the brief roleplay, which will be completed when the timer runs out.|r
    .complete 52156,2 --1/1 Speak to the rescued tortollan in Redfield's Watch
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r and |cRXP_FRIENDLY_John J. Keeshan|r
    .turnin 52156 >>Turn in Tortollans in Distress
    .accept 52170 >>Accept Ending Areiel
    .goto 863,51.34,21.86
    .accept 52171 >>Accept One Option: Fire
    .accept 52172 >>Accept They Can't Stay Here
    .goto 863,51.27,21.89
    .target Shandris Feathermoon
    .target John J. Keeshan
step
    #completewith Armory supplies
    >>Kill |cRXP_ENEMY_Horde soldiers|r
    .complete 52172,1 --12/12 Horde soldiers slain
    .mob Darkspear Hunter
    .mob Horde Warbringer
    .mob Horde Shaman
step
    .goto 863,41.26,27.56
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Food cache|r
    .complete 52171,3 --1/1 Food cache destroyed
step
    .goto 863,39.93,28.52
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Bwonsamdi offerings.|r
    .complete 52171,1 --1/1 Bwonsamdi offerings destroyed
step
    .goto 863,37.67,28.86
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Medicinal supplies|r
    .complete 52171,2 --1/1 Medicinal supplies destroyed
step
    .goto 863,35.90,29.28
    >>Kill |cRXP_ENEMY_Ranger Captain Areiel|r and loot |T237446:0|t|cRXP_LOOT_[Horde Missive]|r
    .complete 52170,1 --1/1 Horde Missive
    .mob Ranger Captain Areie
step
    #label Armory supplies
    .goto 863,37.87,32.31
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Armory supplies|r
    .complete 52171,4 --1/1 Armory supplies destroyed
step
    #completewith
    >>Kill |cRXP_ENEMY_Horde soldiers|r
    .complete 52172,1 --12/12 Horde soldiers slain
    .mob Darkspear Hunter
    .mob Horde Warbringer
    .mob Horde Shaman
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r and |cRXP_FRIENDLY_Shandris Feathermoon|r
    .turnin 52171 >>Turn in One Option: Fire
    .turnin 52172 >>Turn in They Can't Stay Here
    .goto 863,51.28,21.90
    .turnin 52170 >>Turn in Ending Areiel
    .accept 52208 >>Accept Meeting of the Minds
    .goto 863,51.34,21.87
    .target John J. Keeshan
    .target Shandris Feathermoon
step
    .goto 863,42.13,39.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r
    .skipgossip 140519,1
    .complete 52208,1 --1/1 Speak with Shandris Feathermoon
    .target Shandris Feathermoon
step
    .isOnQuest 52208
    .goto 863,40.56,43.76,10 >>Use the |T236875:0|t[Invisibility Flask] near the |cFFfa9602horde camp.|r
    .use 163196
step
    .isOnQuest 52208
    .goto 863,40.02,43.77,10 >>Go near |cRXP_ENEMY_Princess Talanji|r and |cRXP_ENEMY_Rokhan.|r
    >>|cRXP_WARN_Use the |r |T236875:0|t[Invisibility Flask] |cRXP_WARN_if you haven't yet near the |cFFfa9602horde camp.|r|r
    .timer 66, Horde Meeting RP
step
    .isOnQuest 52208
    >>|cRXP_WARN_Wait for the brief roleplay, which will be completed when the timer runs out.|r
    .complete 52208,2 --1/1 Listen on Horde Meeting
step
    .goto 863,42.14,39.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r
    .turnin 52208 >>Turn in Meeting of the Minds
    .accept 52219 >>Accept Target: Blood Prince Dreven
    .target Shandris Feathermoon
step
    .isOnQuest 52219
    .goto 863,20.14,60.75
    .gossipoption 48851 >>Talk to |cRXP_FRIENDLY_John J. Keeshan|r
    .timer 20, Blood Prince RP
    .target John J. Keeshan
step
    .goto 863,20.34,60.80,10,0
    .goto 863,20.62,60.74
    >>Damage |cRXP_ENEMY_Blood Prince Dreven.|r below 60%.
    .complete 52219,2 --1/1 Kill Blood Prince Dreven and cohorts
    .mob Blood Prince Dreven
    .mob Blood Marquis
    .mob Blood Marquess
step
    .goto 863,61.97,41.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r
    .turnin 52219 >>Turn in Target: Blood Prince Dreven
    .target Shandris Feathermoon
step
    #completewith next
    .goto 863,62.06,40.08
    .gossipoption 48827 >> Talk to |cRXP_FRIENDLY_Desha Stormwallow|r
    .target Desha Stormwallow
step
    .goto 1161,69.29,26.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .accept 52154 >>Accept Our Next Target
    .timer 50, Debate RP
step
    .goto 1161,69.29,26.98
    >>|cRXP_WARN_Wait for the brief roleplay, which will be completed when the timer runs out.|r
    .complete 52154,1 --1/1 Debate resolved
step
    .goto 1161,69.29,26.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 52154 >>Turn in Our Next Target
    .target Halford Wyrmbane
step
    .goto 1161,69.32,26.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Umbric|r
    .accept 52173 >>Accept The Void Elves Stand Ready
    .target Magister Umbric
step
    .isOnQuest 52173
    .goto 1161,67.93,26.69
    .gossipoption 48167 >>Talk to |cRXP_FRIENDLY_Grand Admiral Jes-Tereth|r
    .complete 52173,1 --1/1 Speak with Jes-Tereth to sail to Zuldazar (Optional)
    .target Grand Admiral Jes-Tereth
step
    .goto 862,40.69,70.82
    >>|cRXP_WARN_Follow the Arrow.|r
    .complete 52173,2 --1/1 Meet Magister Umbric in Xibala
step
    .goto 862,40.59,70.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Umbric|r
    .turnin 52173 >>Turn in The Void Elves Stand Ready
    .accept 52205 >>Accept Bilgewater Bonanza Go Boom
    .accept 52204 >>Accept The Void Solution
    .accept 52203 >>Accept Find the Paper Trail
    .target Magister Umbric
step
    #completewith gryphon
    .isWorldQuestAvailable 862,52250
    +|cFFEB144CIgnore the world quest, as it doesn't impact your progress toward unlocking allied races.|r
step
    #completewith Orders
    >>Kill |cRXP_ENEMY_Goblins|r
    .complete 52205,1 --12/12 Bilgewater goblin slain
    .mob Bilgewater Hauler
    .mob Bilgewater Boomer
    .mob Bilgewater Driller
step
    #completewith Orders
    >>Kill |cRXP_ENEMY_Bilgewater Fracker|r or |TInterface/cursor/crosshair/interact.blp:20|tClick them.
    .complete 52204,1 --4/4 Bilgewater Fracker destroyed
    .use 161422
    .mob Bilgewater Fracker
step
    #label Orders
    .goto 862,38.69,72.21,25,0
    .goto 862,36.74,71.47,25,0
    .goto 862,35.29,66.65
    >>Kill |cRXP_ENEMY_Boss Blastmouth|r and loot them for |T134328:0|t|cRXP_LOOT_Orders from Gallywix.|r
    .complete 52203,1 --1/1 Orders from Gallywix
    .mob Boss Blastmouth
step
    #completewith next
    >>Kill |cRXP_ENEMY_Goblins|r
    .complete 52205,1 --12/12 Bilgewater goblin slain
    .mob Bilgewater Hauler
    .mob Bilgewater Boomer
    .mob Bilgewater Driller
step
    .loop 25,862,34.9,69.06,34.52,70.6,33.88,71.61,36.89,71.35,35.8,72.14
    >>Kill |cRXP_ENEMY_Bilgewater Fracker|r or |TInterface/cursor/crosshair/interact.blp:20|tClick them.
    .complete 52204,1 --4/4 Bilgewater Fracker destroyed
    .use 161422
    .mob Bilgewater Fracker
step
    .loop 25,862,34.9,69.06,34.52,70.6,33.88,71.61,36.89,71.35,35.8,72.14
    >>Kill |cRXP_ENEMY_Goblin|r
    .complete 52205,1 --12/12 Bilgewater goblin slain
    .mob Bilgewater Hauler
    .mob Bilgewater Boomer
    .mob Bilgewater Driller
step
    #label gryphon
    .goto 862,40.59,70.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Umbric|r
    .turnin 52205 >>Turn in Bilgewater Bonanza Go Boom
    .turnin 52204 >>Turn in The Void Solution
    .turnin 52203 >>Turn in Find the Paper Trail
    .accept 52241 >>Accept A Greedy Goblin's Paradise
    .timer 8, Void Portal RP
    .target Magister Umbric
step
    .goto 862,40.55,70.64
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Void Portal.|r
    .complete 52241,1 --1/1 Use Void Portal in Xibala (Optional)
    .complete 52241,2 --1/1 Meet Umbric in Atal'Dazar
step
    .goto 862,40.33,39.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Umbric|r
    .turnin 52241 >>Turn in A Greedy Goblin's Paradise
    .accept 52247 >>Accept Chasing Gallywix
    .target Magister Umbric
step
    .goto 862,40.38,43.28
    >>|cRXP_WARN_Follow the Arrow.|r
    >>|cRXP_WARN_Don't go through the tunnel.|r
    .complete 52247,1 --1/1 Gallywix found
step
    .goto 862,40.41,44.31
    >>|cRXP_WARN_Follow the Arrow.|r
    .complete 52247,2 --1/1 Gallywix's Personal Teleporter used
step
    .goto 76,21.63,52.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Umbric|r near you.
    .turnin 52247 >>Turn in Chasing Gallywix
    .accept 52259 >>Accept I Take No Pleasure In This
    .target Magister Umbric
step
    .goto 76,21,60.14
    >>Kill |cRXP_ENEMY_Pleasure Palace Visitors.|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Party Objects.|r
    .complete 52259,1 --Crash Gallywix's Party (100%)
    .mob Pleasure Palace Golfer
    .mob Pleasure Palace Caddie
    .mob Pleasure Palace VIP
step
    .goto 76,21.39,58.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Umbric|r near you.
    .turnin 52259 >>Turn in I Take No Pleasure In This
    .accept 52260 >>Accept We Have Him Cornered
    .target Magister Umbric
step
    .goto 76,21.07,60.56
    >>Kill |cRXP_ENEMY_Trade Prince Gallywix.|r
    .complete 52260,1 --1/1 Trade Prince Gallywix slain
    .mob Trade Prince Gallywix
step
    .goto 76,21.07,60.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Umbric|r near you.
    .turnin 52260 >>Turn in We Have Him Cornered
    .accept 52261 >>Accept Gallywix Got Away
    .timer 8, Void Portal RP
    .target Magister Umbric
step
    .isOnQuest 52261
    .goto 76,21.07,60.69
    .zone Boralus >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Void Portal.|r
step
    .goto 1161,69.28,27.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 52261 >>Turn in Gallywix Got Away
    .target Halford Wyrmbane
step
    .goto 1161,69.28,27.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 52261 >>Turn in Gallywix Got Away
    .accept 52308 >>Accept Intercepted Orders
    .target Halford Wyrmbane
    .timer 37, Halford RP
step
    >>|cRXP_WARN_Wait for the brief roleplay, which will be completed when the timer runs out.|r
    .complete 52308,1 --1/1 Listen to Halford's report
step
    .goto 1161,69.28,27.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 52308 >>Turn in Intercepted Orders
    .target Halford Wyrmbane
step
    .goto 1161,69.29,27.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r
    .accept 52489 >>Accept Hunting Blood Prince Dreven
    .target Shandris Feathermoon
step
    .goto 1161,69.76,27.58
    >>Interact with |cRXP_FRIENDLY_Swiftwing.|r
    .complete 52489,1 --1/1 Mount Swiftwing
    .timer 57.5, Swiftwing RP
    .target Swiftwing
step
    >>|cRXP_WARN_Wait for the brief roleplay, which will be completed when the timer runs out.|r
    .complete 52489,2 --1/1 Locate Horde ships
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r near you.
    .turnin 52489 >>Turn in Hunting Blood Prince Dreven
    .target Shandris Feathermoon
step
    #completewith warning
    |cFFd0342cIf you fall off the boat at any time and can't get back up, it's recommended to swim between the two boats. Your |cRXP_WARN_[Extra Action Button]|r will be available, allowing |cRXP_FRIENDLY_Falstad Wildhammer|r to pick you up.|r
step
    .goto 1156,38.42,45.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r next to you.
    .accept 52490 >>Accept Behind Enemy Boats
    .timer 13, Falstad RP
    .target Shandris Feathermoon
step
    .goto 1156,36.65,52.24
    >>Use |T1126431:0|t(1) to command |cRXP_FRIENDLY_Falstad Wildhammer|r to drop you off near |cFFfa9602Banshee's Wail.|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Ladder.|r
    .complete 52490,1 --1/1 Climb in the Banshee's Wail gunport
step
    #completewith next
    >>Kill |cRXP_ENEMY_Sailors|r
    .complete 52490,2 --10/10 Sailors on the Banshee's Wail slain
    .mob Banshee's Wail Deckhand
step
    .goto 1156,36.92,52.45
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_Banshee's Wail Cannon.|r
    .accept 52491 >>Accept Broadside Bedlam
step
    #completewith Fired
    >>Kill |cRXP_ENEMY_Sailors|r
    .complete 52490,2 --10/10 Sailors on the Banshee's Wail slain
    .mob Banshee's Wail Deckhand
step
    .goto 1156,36.97,52.01
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_Azerite-Infused Cannonballs.|r
    .complete 52491,1 --1/1 Azerite-Infused Cannonballs
    .mob Banshee's Wail Swabby
step
    .goto 1156,36.82,52.85
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_Azerite-Infused Gunpowder.|r
    .complete 52491,2 --1/1 Azerite-Infused Gunpowder
    .mob Banshee's Wail Swabby
step
    .goto 1156,36.62,53.32
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_Banshee's Wail Torch.|r
    .complete 52491,3 --1/1 Banshee's Wail Torch
    .mob Banshee's Wail Swabby
step
    .goto 1156,36.76,52.95
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_The Banshee's Wail Cannon.|r
    .complete 52491,4,1 --3/3 Cannons fired
    .mob Banshee's Wail Swabby
step
    .goto 1156,36.83,52.7
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_The Banshee's Wail Cannon.|r
    .complete 52491,4,2 --3/3 Cannons fired
    .mob Banshee's Wail Swabby
step
    .goto 1156,36.92,52.47
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_The Banshee's Wail Cannon.|r
    .complete 52491,4,3 --3/3 Cannons fired
    .mob Banshee's Wail Swabby
step
    #label Fired
    .goto 1156,36.46,53.57,5,0
    .goto 1156,36.62,53
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_Battlechest of the Horde.|r
    .complete 52490,3 --1/1 Battlechest of the Horde opened
    .timer 34, Nathanos RP
step
    .goto 1156,42.26,47.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falstad Wildhammer|r next to you.
    .turnin 52490 >>Turn in Behind Enemy Boats
    .target Falstad Wildhammer
step
    .goto 1156,42.32,47.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falstad Wildhammer|r next to you.
    .turnin 52491 >>Turn in Broadside Bedlam
    .accept 52492 >>Accept The Wildhammer Specialty
    .target Falstad Wildhammer
step
    .goto 1156,43.10,49.53
    >>Use |T132222:0|t(1) to start the attack!
    .complete 52492,1 --1/1 Order Falstad to start the attack
step
    #completewith Deck
    >>Use |T132314:0|t(1) to deal damage and |T136051:0|t(2) to heal yourself,|cRXP_WARN_unable to use |T132314:0|t(1) while healing yourself.|r
    .complete 52492,3 --15/15 Horde rowboats destroyed
    .complete 52492,2 --60/60 Horde sailors slain
step
    .goto 1156,41.62,56.18
    >>Use |T132314:0|t(1) to burn the sail.
    .complete 52492,5 --1/1 The Crimson Squall sails burned
step
    #label Deck
    .goto 1156,36.71,52.8
    >>Use |T132314:0|t(1) to burn the deck.
    .complete 52492,4 --1/1 The Crimson Squall deck burned
step
    >>Use |T132314:0|t(1) to deal damage to nearby |cRXP_ENEMY_boats|r, |cRXP_ENEMY_sailors|r and |T136051:0|(2) to heal yourself,|cRXP_WARN_unable to use |T132314:0|t(1) while healing yourself.|r
    .complete 52492,3 --15/15 Horde rowboats destroyed
    .complete 52492,2 --60/60 Horde sailors slain
step
    .goto 1156,41.75,57.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r
    .turnin 52492 >>Turn in The Wildhammer Specialty
    .accept 52493 >>Accept An Unnatural Crew
    .accept 52494 >>Accept Foul Crystals for Foul People
    .turnin 53131 >>Turn in Kings' Rest
    .target Shandris Feathermoon
step
    #completewith San
    >>Kill every |cRXP_ENEMY_Soldier|r that you see.
    .complete 52493,1 --12/12 Kill Horde on The Crimson Squall
    .mob San'layn Neophyte
    .mob Crimson Squall Deck Hand
step
    .goto 1156,41.74,56.6
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_San'layn Crystals.|r
    .complete 52494,1,1 --5/5 San'layn Crystals destroyed
step
    .goto 1156,41.71,56.35,5,0
    .goto 1156,41.47,56.23
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_San'layn Crystals.|r
    .complete 52494,1,2 --5/5 San'layn Crystals destroyed
step
    .goto 1156,41.47,55.89,5,0
    .goto 1156,41.61,55.58
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_San'layn Crystals.|r
    .complete 52494,1,3 --5/5 San'layn Crystals destroyed
step
    .goto 1156,41.72,56.08
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_San'layn Crystals.|r
    .complete 52494,1,4 --5/5 San'layn Crystals destroyed
step
    #label San
    .goto 1156,41.46,55.66
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_San'layn Crystals.|r
    .complete 52494,1,5 --5/5 San'layn Crystals destroyed
step
    .goto 1156,41.53,56.55,5,0
    .goto 1156,41.7,56.33,5,0
    .goto 1156,41.63,55.67,5,0
    .goto 1156,41.49,55.87,5,0
    .goto 1156,41.7,55.67,5,0
    .goto 1156,41.49,55.88
    >>Kill |cRXP_ENEMY_Soldiers|r
    .complete 52493,1 --12/12 Kill Horde on The Crimson Squall
    .mob San'layn Neophyte
    .mob Crimson Squall Deck Hand
step
    .goto 1156,41.65,55.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r
    .turnin 52493 >>Turn in An Unnatural Crew
    .turnin 52494 >>Turn in Foul Crystals for Foul People
    .accept 52495 >>Accept Ending the San'layn Threat
    .timer 9.5, Opening the Door RP
    .target Shandris Feathermoon
step
    #completewith next
    .goto 1156,41.54,55.57,5,0
    .goto 1156,41.47,55.87,5,0
    .goto 1156,41.62,56.92,5,0
    .goto 1156,41.68,56.75,5,0
    .goto 1156,41.69,56.63,5 >> Blood Prince Dreven RP
    .timer 12, Blood Prince Dreven RP
step
    .goto 1156,41.58,55.67
    >>Kill |cRXP_ENEMY_Blood Prince Dreven.|r
    .complete 52495,1 --1/1 Blood Prince Dreven slain
    .mob Blood Prince Dreven
step
    .goto 1156,41.39,55.87,5,0
    .goto 1156,40.55,55.8
    >>Jump through the window, and as soon as your |cRXP_WARN_[ExtraActionButton]|r becomes available, press it.
    .complete 52495,2 --1/1 Escape the ship and signal Falstad
    .timer 18, Falstad RP
step
    .goto 1156,38.56,48.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r
    .turnin 52495 >>Turn in Ending the San'layn Threat
    .target Shandris Feathermoon
step
    .goto 1156,38.13,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r
    .accept 52496 >>Accept A Clean Escape
    .target Shandris Feathermoon
step
    .isOnQuest 52496
    .zone Boralus >>Use |T135764:0|t[Return to Boralus]
    .use 276830
step
    .goto 1161,69.28,26.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 52496 >>Turn in A Clean Escape
    .accept 52473 >>Accept Bringing Down the Fleet
    .target Halford Wyrmbane
step
    .isOnQuest 52473
    .goto 1161,67.95,26.71
    .gossipoption 48166 >>Talk to |cRXP_FRIENDLY_Grand Admiral Jes-Tereth|r
    .target Grand Admiral Jes-Tereth
step
    .goto 862,40.77,70.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 52473 >>Turn in Bringing Down the Fleet
    .accept 52282 >>Accept How to Sink a Zandalari Battleship
step
    .isOnQuest 52282
    .goto 862,40.77,70.85
    .gossipoption 48931 >>Talk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .timer 63, Plan discussed
    .target Halford Wyrmbane
step
    >>|cRXP_WARN_Wait for the brief roleplay, which will be completed when the timer runs out.|r
    .complete 52282,1 --1/1 Plan discussed
step
    .goto 862,40.77,70.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 52282 >>Turn in How to Sink a Zandalari Battleship
    .target Halford Wyrmbane
step
    .goto 862,40.8,70.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Umbric|r
    .accept 52281 >>Accept Under the Cover of Swiftwing
    .target Magister Umbric
step
    .isOnQuest 52281
    .goto 862,57.68,87.50
    .vehicle >>Interact with |cRXP_FRIENDLY_Swiftwing|r
    .timer 95, Swiftwing Ride
step
    >>|cRXP_WARN_Wait for the brief roleplay, which will be completed when the timer runs out.|r
    .complete 52281,1 --1/1 Ride Swiftwing to Isle of Fangs
step
    .goto 862,57.64,87.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark|r
    .turnin 52281 >>Turn in Under the Cover of Swiftwing
    .accept 52284 >>Accept Ship Logs
    .target Kelsey Steelspark
step
    .goto 862,57.64,87.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r
    .accept 52283 >>Accept Sabotaging the Pa'ku
    .target John J. Keeshan
step
    #completewith Remote
    >>Kill |cRXP_ENEMY_Lei-zhi enemies|r and loot them for |T237020:0|t|cRXP_LOOT_Naval Records|r
    .complete 52284,1 --6/6 Naval Records
    .mob Zulian Crewman
    .mob Lei-zhi Oppressor
step
    .goto 862,54.11,84.72,10,0
    .goto 862,53.09,85.49,10,0
    .goto 862,51.94,86.88
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the Remote-Detonation Deathbomb
    .complete 52283,1,1 --4/4 Remote-detonation deathbomb planted
step
    .goto 862,51.55,86.76
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the Remote-Detonation Deathbomb
    .complete 52283,1,2 --4/4 Remote-detonation deathbomb planted
step
    .goto 862,51.52,86.96
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the Remote-Detonation Deathbomb
    .complete 52283,1,3 --4/4 Remote-detonation deathbomb planted
step
    #label Remote
    .goto 862,51.91,87.45
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the Remote-Detonation Deathbomb
    .complete 52283,1,4 --4/4 Remote-detonation deathbomb planted
step
    .goto 862,52.45,87.56,10,0
    .goto 862,54.16,84.83
    >>Kill |cRXP_ENEMY_Lei-zhi enemies|r and loot them for |T237020:0|t|cRXP_LOOT_Naval Records|r
    .complete 52284,1 --6/6 Naval Records
    --x .mob
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r and |cRXP_FRIENDLY_Kelsey Steelspark|r
    .turnin 52283 >>Turn in Sabotaging the Pa'ku
    .goto 862,57.64,87.55
    .turnin 52284 >>Turn in Ship Logs
    .accept 52285 >>Accept The Enlarged Miniaturized Submarine
    .goto 862,57.64,87.59
    .target John J. Keeshan
    .target Kelsey Steelspark
step
    .isOnQuest 52285
    .goto 862,57.41,85.9
    .vehicle >>Click the |cRXP_FRIENDLY_Submarine|r
    .timer 54, Submarine RP
step
    >>|cRXP_WARN_Wait for the brief roleplay, which will be completed when the timer runs out.|r
    .complete 52285,1 --1/1 Crossed Bay of Kings in the Enlarged Miniaturized Submarine
step
    .goto 862,48.89,68.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r
    .turnin 52285 >>Turn in The Enlarged Miniaturized Submarine
    .accept 52290 >>Accept My Enemy's Enemy is My Disguise
    .target Shandris Feathermoon
step
    .isOnQuest 52290
    .goto 862,48.91,68.59
    .gossipoption 49422 >>Talk to |cRXP_FRIENDLY_Magister Umbric|r
    .timer 12, Disguise RP
    .target Magister Umbric
step
    >>|cRXP_WARN_Wait for the brief roleplay, which will be completed when the timer runs out.|r
    .complete 52290,1 --1/1 Blood troll disguise complete
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r and |cRXP_FRIENDLY_Magister Umbric|r
    .turnin 52290 >>Turn in My Enemy's Enemy is My Disguise
    .accept 52286 >>Accept Right Beneath Their Nose
    .accept 52287 >>Accept Intelligence Denial
    .goto 862,48.89,68.57
    .accept 52288 >>Accept Void Vacation
    .goto 862,48.90,68.59
    .target Magister Umbric
    .target Shandris Feathermoon
step
    .goto 862,48.08,66.76
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_ENEMY_Horde Emissary|r
    >>|cRXP_WARN_You can use your [Extra Action Button] to stealth|r
    .complete 52288,1,1 --6/6 Horde emissaries thrown in void rift
    .use 162450
    .mob Horde Emissary
step
    .goto 862,47.54,66.86
    >>Kill |cRXP_ENEMY_Spymaster Stormhorn|r
    .complete 52287,1 --1/1 Spymaster Stormhorn slain
    .mob Spymaster Stormhorn
step
    .goto 862,46.89,63.41
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_ENEMY_Horde Emissary|r
    >>|cRXP_WARN_You can use your |r [Extra Action Button] |cRXP_WARN_to stealth.|r
    .complete 52288,1,2 --6/6 Horde emissaries thrown in void rift
    .use 162450
    .mob Horde Emissary
step
    .goto 862,45.84,62.12
    >>Kill |cRXP_ENEMY_Spymaster Bloodsnarl|r inside the |cFFfa9602building.|r
    .complete 52287,2 --1/1 Spymaster Bloodsnarl slain
    .mob Spymaster Bloodsnarl
step
    .goto 862,46.08,62.13,5,0
    .goto 862,45.93,62.33
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_ENEMY_Horde Emissary|r
    >>|cRXP_WARN_You can use your |r [Extra Action Button] |cRXP_WARN_to stealth.|r
    .complete 52288,1,3 --6/6 Horde emissaries thrown in void rift
    .use 162450
    .mob Horde Emissary
step
    .goto 862,46.34,59.98
    >>Kill |cRXP_ENEMY_Spymaster Bilespreader|r inside the |cFFfa9602building.|r
    .complete 52287,3 --1/1 Spymaster Bilespreader slain
    .mob Spymaster Bilespreader
step
    .goto 862,46.34,60.26,5,0
    .goto 862,48.05,63.05
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_ENEMY_Horde Emissary|r
    >>|cRXP_WARN_You can use your |r [Extra Action Button] |cRXP_WARN_to stealth.|r
    .complete 52288,1,4 --6/6 Horde emissaries thrown in void rift
    .use 162450
    .mob Horde Emissary
step
    .goto 862,48.98,64.74
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_ENEMY_Horde Emissary|r
    >>|cRXP_WARN_You can use your |r [Extra Action Button] |cRXP_WARN_to stealth.|r
    .complete 52288,1,5 --6/6 Horde emissaries thrown in void rift
    .use 162450
    .mob Horde Emissary
step
    .goto 862,49.74,64.68
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_ENEMY_Horde Emissary|r
    >>|cRXP_WARN_You can use your |r [Extra Action Button] |cRXP_WARN_to stealth.|r
    .complete 52288,1,6 --6/6 Horde emissaries thrown in void rift
    .use 162450
    .mob Horde Emissary
step
    .goto 862,49.95,65.03
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_bomb.|r under the |cFFfa9602water|r near the |cFFfa9602ship.|r
    .complete 52286,1,1 --3/3 Remote-detonation deathbomb planted
step
    .goto 862,50.64,65.05
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_bomb.|r under the |cFFfa9602water|r near the |cFFfa9602ship.|r
    .complete 52286,1,2 --3/3 Remote-detonation deathbomb planted
step
    .goto 862,50.32,65.82
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_bomb.|r under the |cFFfa9602water|r near the |cFFfa9602ship.|r
    .complete 52286,1,3 --3/3 Remote-detonation deathbomb planted
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r and |cRXP_FRIENDLY_Magister Umbric|r
    .turnin 52288 >>Turn in Void Vacation
    .goto 862,48.91,68.59
    .turnin 52286 >>Turn in Right Beneath Their Nose
    .turnin 52287 >>Turn in Intelligence Denial
    .accept 52289 >>Accept Victory is Assured
    .goto 862,48.90,68.59
    .target Shandris Feathermoon
    .target Magister Umbric
step
    .goto 862,40.47,71.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 52289 >>Turn in Victory is Assured
    .accept 52291 >>Accept Victory Was Assured
    .target Halford Wyrmbane
step
    .isOnQuest 52291
    .goto 862,40.52,71.34
    .vehicle >>Interact with |cRXP_FRIENDLY_Swiftwing.|r
    .timer 70, Ride Swiftwing to Gral's Call
    .target Swiftwing
step
    .goto 862,35.10,77.32
    >>|cRXP_WARN_Wait for the brief roleplay, which will be completed when the timer runs out.|r
    .complete 52291,1 --1/1 Ride Swiftwing to Gral's Call
step
    .goto 862,35.14,77.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 52291 >>Turn in Victory Was Assured
    .accept 52788 >>Accept Leave None Alive
    .target Halford Wyrmbane
step
    .goto 862,34.74,76.85,10,0
    .goto 862,34.96,77.01,10,0
    .goto 862,34.46,76.51,10,0
    .goto 862,34.33,75.87,10,0
    .goto 862,34.98,77.03
    >>Kill |cRXP_ENEMY_Zandalari enemies.|r
    >>|cRXP_WARN_Follow the Arrow.|r
    .complete 52788,1 --10/10 Zandalari slain
    .mob Zandalari Hexxer
    .mob Zandalari Honorguard
step
    .goto 862,35.04,76.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r |cFFfa9602next to you.|r
    .turnin 52788 >>Turn in Leave None Alive
    .accept 52789 >>Accept Silencing the Advisor
    .target Halford Wyrmbane
step
    .goto 862,34.74,76.85,10,0
    .goto 862,34.96,77.01,10,0
    .goto 862,34.46,76.51,10,0
    .goto 862,34.33,75.87,10,0
    .goto 862,34.98,77.03
    >>Kill |cRXP_ENEMY_Advisor Ko'jan|r inside |cFFfa9602ship.|r
    .complete 52789,1 --1/1 Advisor Ko'jan slain
    .mob Advisor Ko'jan
step
    .goto 862,34.98,76.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r |cFFfa9602next to you.|r
    .turnin 52789 >>Turn in Silencing the Advisor
    .accept 52790 >>Accept An End to the Killing
    .target Halford Wyrmbane
step
    .goto 862,34.33,75.88,10,0
    .goto 862,34.96,76.99,10,0
    .goto 862,34.91,76.69,10,0
    .goto 862,34.92,76.68
    >>|cRXP_WARN_Follow the Arrow.|r
    .complete 52790,1 --Travel to Gral's Call upper deck
step
    .isOnQuest 52790
    .goto 862,34.83,76.32
    .gossipoption 49425 >>Talk to |cRXP_FRIENDLY_Shandris Feathermoon|r
    .timer 58, Assess situation RP.
    .target Shandris Feathermoon
step
    >>|cRXP_WARN_Wait for the brief roleplay, which will be completed when the timer runs out.|r
    .complete 52790,2 --1/1 Assess situation with Shandris Feathermoon
step
    .goto 862,34.84,76.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    >>|cRXP_WARN_Press "Escape" on your keyboard to skip the cinematic|r
    .complete 52790,3 --1/1 Tell Halford to blow up the ship
    .skipgossip
    .target Halford Wyrmbane
step
    .isOnQuest 52790
    .goto 862,40.46,71.03
    .gossipoption 49161 >>Talk to |cRXP_FRIENDLY_Daria Smithson|r
    .target Daria Smithson
step
    .isOnQuest 52790
    .goto 1161,70.55,17.18,5,0
    .goto 1161,70.1,16.8,5,0
    .goto 84,85.92,31.57
    .zone 84 >>Click the |cRXP_PICK_Stormwind Portal|r
step
    .goto 84,49.34,86.77,5,0
    .goto 84,48.84,86.78,5,0
    .goto 84,49.34,87.03,5,0
    .goto 84,85.92,31.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin Wrynn|r
    .turnin 52790 >>Turn in An End to the Killing
    .target Anduin Wrynn
]])

RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP BfA War Campaign
#name 8) Tides of Vengeance
#displayname Chapter 8 - Tides of Vengeance

<< Alliance

step
    .goto 1161,70.72,27.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 53986 >>Accept The Calm Before
    .target Master Mathias Shaw
step
    .isOnQuest 53986
    .goto 1161,66.98,15.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joan Weber|r
    .fly Proudmoore Keep >>Fly to Proudmoore Keep
    .target Joan Weber
step
    .goto 895,67.26,36.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
    .complete 53986,1 --1/1 Take the report to Jaina
    .skipgossip 145580,1
    .timer 73, Jaina RP
    .target Lady Jaina Proudmoore
step
    .goto 895,67,36.24
    >>|cRXP_WARN_Wait for the brief roleplay, which will be completed when the timer runs out.|r
    .complete 53986,2 --1/1 Wait a moment
step
    .goto 895,66.99,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
    .turnin 53986 >>Turn in The Calm Before
    .accept 53888 >>Accept To Anglepoint
    .target Lady Jaina Proudmoore
step
    .goto 1161,63.32,54.94
    >>|cRXP_WARN_Follow the Arrow.|r
    .complete 53888,1 --1/1 Meet Jaina at the canal by Crosswind Commons
step
    .isOnQuest 53888
    .goto 1161,63.73,52.95
    .vehicle >>Click the |cRXP_PICK_Boat|r
    .timer 120, Boat to Anglepoint Wharf
step
    >>|cRXP_WARN_Wait for the brief roleplay, which will be completed when the timer runs out.|r
    .complete 53888,2 --1/1 Take Boat to Anglepoint Wharf
step
    .goto 895,42.17,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
    .turnin 53888 >>Turn in To Anglepoint
    .accept 53896 >>Accept Stand Fast
    .target Lady Jaina Proudmoore
step
    .goto 895,42.17,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
    .complete 53896,1 --1/1 Speak with Jaina Proudmoore
    .skipgossip 145580,1
    .target Lady Jaina Proudmoore
step
    .goto 895,42.44,29.63
    >>Kill successive |cRXP_ENEMY_enemy waves|r. Kill |cRXP_ENEMY_Zanda Frostsong|r in the final wave.
    .complete 53896,2 --1/1 Jaina Proudmoore Protected
    .mob Invading Berserker
    .mob Invading Spirit-mender
    .mob Invading Warrior
    .mob Zanda Frostsong
step
    .goto 895,42.13,29.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
    .turnin 53896 >>Turn in Stand Fast
    .accept 53909 >>Accept Besieged Allies
    .accept 53910 >>Accept Repel the Horde!
    .target Lady Jaina Proudmoore
step
    .goto 895,42.14,29.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taelia Fordragon|r
    .accept 54519 >>Accept Squad Goals
    .target Taelia Fordragon
step
    .goto 895,42.17,29.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Okri Putterwrench|r
    .accept 54518 >>Accept Zero Zeppelins
    .target Okri Putterwrench
    .timer 30, Okri Putterwrench RP
step
    #completewith Emma
    .loop 15,895,43.39,27.88,42.99,27.00,42.35,26.56,41.84,27.37
    >>Kill |cRXP_ENEMY_Invading Shaman|r and |cRXP_ENEMY_Invading Berserker|r
    .complete 53910,1 --Defeat Axe Throwers and Berserkers (100%)
    .mob Invading Shaman
    .mob Invading Berserker
step
    .goto 895,41.84,27.37
    >>Interact with |cRXP_FRIENDLY_Emma Swiftwind|r
    .complete 54519,2 --1/1 Emma Swiftwind found
    .goto 895,41.84,27.39
    .target Emma Swiftwind
step
    .goto 895,42.35,26.56
    >>Interact with |cRXP_FRIENDLY_Edward Nash|r
    .complete 54519,4 --1/1 Edward Nash found
    .target Edward Nash
step
    .goto 895,41.69,29.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Okri Putterwrench|r
    .complete 54518,1 --1/1 Get a Jury-Rigged Hand Cannon from Okri
    .skipgossip 145632,1
step
    .goto 895,41.68,29.71
    >>Use your |cRXP_WARN_Extra Action Button]|r on the Iceberg.
    .complete 54518,2 --1/1 Test the Jury-Rigged Hand Cannon
    .mob Horde Bombardier
step
    .goto 895,42.99,28.24
    >>Use your |cRXP_WARN_[Extra Action Button]|r to destory |cRXP_ENEMY_Horde Zepplins|r
    .complete 54518,3,1 --4/4 Horde Bombardier slain
    .mob Horde Bombardier
step
    .goto 895,43.39,27.88
    >>Interact with |cRXP_FRIENDLY_Carter Riptide|r
    .complete 54519,1 --1/1 Carter Riptide found
    .target Carter Riptide
step
    .goto 895,43.14,27.32
    >>Use your |cRXP_WARN_[Extra Action Button]|r to destory |cRXP_ENEMY_Horde Zepplins|r
    .complete 54518,3,2 --4/4 Horde Bombardier slain
    .mob Horde Bombardier
step
    .goto 895,42.99,27.00
    >>Interact with |cRXP_FRIENDLY_Tamara Barrie|r
    .complete 54519,3 --1/1 Tamara Barrie found
    .target Tamara Barrie
step
    .goto 895,43.01,26.54
    >>Use your |cRXP_WARN_[Extra Action Button]|r to destory |cRXP_ENEMY_Horde Zepplins|r
    .complete 54518,3,3 --4/4 Horde Bombardier slain
    .mob Horde Bombardier
step
    #label Emma
    .goto 895,42.58,26.95
    >>Use your |cRXP_WARN_[Extra Action Button]|r to destory |cRXP_ENEMY_Horde Zepplins|r
    .complete 54518,3,4 --4/4 Horde Bombardier slain
    .mob Horde Bombardier
step
    .goto 895,41.54,27.08,20,0
    .loop 15,895,43.39,27.88,42.99,27.00,42.35,26.56,41.84,27.37
    >>Kill |cRXP_ENEMY_Invading Shaman|r and |cRXP_ENEMY_Invading Berserker|r
    .complete 53910,1 --Defeat Axe Throwers and Berserkers (100%)
    .mob Invading Shaman
    .mob Invading Berserker
step
    .goto 895,41.53,27.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Okri Putterwrench|r
    .turnin 54518 >>Turn in Zero Zeppelins
    .target Okri Putterwrench
step
    .goto 895,41.52,27.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rosaline Madison|r
    .turnin 53909 >>Turn in Besieged Allies
    .turnin 53910 >>Turn in Repel the Horde!
    .turnin 54519 >>Turn in Squad Goals
    .accept 53916 >>Accept Outrigger Outfitters
    .target Rosaline Madison
step
    .goto 895,41.94,27.31
   >>|TInterface/cursor/crosshair/interact.blp:20|tCllick |cRXP_PICK_Outrigger Weapon.|r
    .complete 53916,1,1 --10/10 Outrigger Weapon recovered
step
    .goto 895,42.1,27.25
   >>|TInterface/cursor/crosshair/interact.blp:20|tCllick |cRXP_PICK_Outrigger Weapon.|r
    .complete 53916,1,2 --10/10 Outrigger Weapon recovered
step
    .goto 895,42.24,27.38
    >>|TInterface/cursor/crosshair/interact.blp:20|tCllick |cRXP_PICK_Outrigger Weapon.|r
    .complete 53916,1,3 --10/10 Outrigger Weapon recovered
step
    .goto 895,42.53,27.31
    >>|TInterface/cursor/crosshair/interact.blp:20|tCllick |cRXP_PICK_Outrigger Weapon.|r
    .complete 53916,1,4 --10/10 Outrigger Weapon recovered
step
    .goto 895,42.71,27.43
    >>|TInterface/cursor/crosshair/interact.blp:20|tCllick |cRXP_PICK_Outrigger Weapon.|r
    .complete 53916,1,5 --10/10 Outrigger Weapon recovered
step
    .goto 895,42.77,26.39
    >>|TInterface/cursor/crosshair/interact.blp:20|tCllick |cRXP_PICK_Outrigger Weapon.|r
    .complete 53916,1,6 --10/10 Outrigger Weapon recovered
step
    .goto 895,42.59,26.67
    >>|TInterface/cursor/crosshair/interact.blp:20|tCllick |cRXP_PICK_Outrigger Weapon.|r
    .complete 53916,1,7 --10/10 Outrigger Weapon recovered
step
    .goto 895,42.39,26.55
    >>|TInterface/cursor/crosshair/interact.blp:20|tCllick |cRXP_PICK_Outrigger Weapon.|r
    .complete 53916,1,8 --10/10 Outrigger Weapon recovered
step
    .goto 895,42.2,26.76
    >>|TInterface/cursor/crosshair/interact.blp:20|tCllick |cRXP_PICK_Outrigger Weapon.|r
    .complete 53916,1,9 --10/10 Outrigger Weapon recovered
step
    .goto 895,42.08,26.8
    >>|TInterface/cursor/crosshair/interact.blp:20|tCllick |cRXP_PICK_Outrigger Weapon.|r
    .complete 53916,1,10 --10/10 Outrigger Weapon recovered
step
    .goto 895,41.51,27.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rosaline Madison|r
    .turnin 53916 >>Turn in Outrigger Outfitters
    .accept 53978 >>Accept Gunpowder Plots
    .accept 54787 >>Accept Masking For a Friend
    .target Rosaline Madison
step
    .goto 895,41.53,27.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Okri Putterwrench|r
    .accept 54559 >>Accept Free Plumeria!
    .target Okri Putterwrench
step
    #completewith Mask
    >>Kill |cRXP_ENEMY_Invading Blight Specialist|r and loot them for |T133145:0|t|cRXP_LOOT_Blight Specialist Mask|r
    .complete 54787,1 --4/4 Blight Specialist Mask collected
    .mob Invading Blight Specialist
step
    .goto 895,40.46,26.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Gunpowder Keg|r
    .complete 53978,1,1 --6/6 Gunpowder Keg Collected
step
    .goto 895,40.22,26.31
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Ball & Chain|r
    .complete 54559,2,1 --2/2 Plumeria's Chains released
step
    .goto 895,40.23,26.15
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Ball & Chain|r
    .complete 54559,2,2 --2/2 Plumeria's Chains released
step
    .goto 895,40.17,26.22
    >>Kill |cRXP_ENEMY_Maurizio Deaththrill|r
    .complete 54559,1 --1/1 Maurizio Deaththrill slain
    .mob Maurizio Deaththrill
step
    .goto 895,40.31,26.39
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Gunpowder Keg|r
    .complete 53978,1,2 --6/6 Gunpowder Keg Collected
step
    .goto 895,39.89,26.28
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Gunpowder Keg|r
    .complete 53978,1,3 --6/6 Gunpowder Keg Collected
step
    .goto 895,39.53,26.75
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Gunpowder Keg|r
    .complete 53978,1,4 --6/6 Gunpowder Keg Collected
step
    .goto 895,39.11,25.3
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Gunpowder Keg|r
    .complete 53978,1,5 --6/6 Gunpowder Keg Collected
step
    #label Mask
    .goto 895,38.43,25.65
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Gunpowder Keg|r
    .complete 53978,1,6 --6/6 Gunpowder Keg Collected
step
    .loop 20,895,37.50,24.89,38.43,25.65,39.11,25.3,39.53,26.75,39.89,26.28,40.31,26.39,40.46,26.84
    >>Kill |cRXP_ENEMY_Invading Blight Specialist|r and loot them for |T133145:0|t|cRXP_LOOT_Blight Specialist Mask|r
    .complete 54787,1 --4/4 Blight Specialist Mask collected
    .mob Invading Blight Specialist
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Okri Putterwrench|r and |cRXP_FRIENDLY_Rosaline Madison.|r
    .turnin 54559 >>Turn in Free Plumeria!
    .goto 895,37.48,24.99
    .turnin 54787 >>Turn in Masking For a Friend
    .turnin 53978 >>Turn in Gunpowder Plots
    .accept 53919 >>Accept Shots Fired
    .goto 895,37.50,24.89
    .target Okri Putterwrench
    .target Rosaline Madison
step
    .goto 895,37.46,24.97
    .isOnQuest 53919
    .vehicle >> Click the |cRXP_PICK_Outrigger Cannon|r
step
    >>Use |T252185:0|t(1) to destroy |cRXP_ENEMY_Motorboats.|r
    .complete 53919,1 --10/10 Horde Motorboats Sunk
step
    .goto 895,37.40,24.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
    .complete 53919,2 --1/1 Speak with Jaina
    .skipgossip 145580,1
    .target Lady Jaina Proudmoore
step
    .goto 895,37.40,24.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
    .turnin 53919 >>Turn in Shots Fired
    .accept 53936 >>Accept Stopping the Sappers
    .target Lady Jaina Proudmoore
step
    .goto 895,36.47,28.37
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Large Azerite Bomb|r
    .complete 53936,2,4 --40/40 Large Azerite Bomb
step
    .goto 895,36.15,29.86
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Large Azerite Bomb|r
    .complete 53936,2,8 --40/40 Large Azerite Bomb
step
    .goto 895,35.98,30.17
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Large Azerite Bomb|r
    .complete 53936,2,12 --40/40 Large Azerite Bomb
step
    .goto 895,35.65,30.18
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Large Azerite Bomb|r
    .complete 53936,2,16 --40/40 Large Azerite Bomb
step
    .goto 895,35.56,30.27
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Large Azerite Bomb|r
    .complete 53936,2,20 --40/40 Large Azerite Bomb
step
    .goto 895,35.46,30.77
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Large Azerite Bomb|r
    .complete 53936,2,24 --40/40 Large Azerite Bomb
step
    .goto 895,35.19,30.92
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Large Azerite Bomb|r
    .complete 53936,2,28 --40/40 Large Azerite Bomb
step
    .goto 895,34.96,30.97
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Large Azerite Bomb|r
    .complete 53936,2,32 --40/40 Large Azerite Bomb
step
    .goto 895,34.76,30.73
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Large Azerite Bomb|r
    .complete 53936,2,36 --40/40 Large Azerite Bomb
step
    .goto 895,34.47,31.08
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Large Azerite Bomb|r
    .complete 53936,2,40 --40/40 Large Azerite Bomb
step
    .goto 895,34.45,29.95
    >>Kill |cRXP_ENEMY_Nebbik Megafuel|r
    .complete 53936,1 --1/1 Nebbik Megafuel slain
    .mob Nebbik Megafuel
step
    .goto 895,35.81,28.05
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Arcane Teleport Beacon|r
    .complete 53936,3 --1/1 Use Arcane Teleport Beacon
step
    .goto 895,36.25,29.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
    .turnin 53936 >>Turn in Stopping the Sappers
    .accept 54703 >>Accept Express Delivery
    .target Lady Jaina Proudmoore
step
    .isOnQuest 54703
    .goto 895,36.3,29.76
    .vehicle >>Click the |cRXP_PICK_Harpoon|r
step
    >>|T1911518:0|t(1) Shoot the 3 |cRXP_ENEMY_ships.|r
    >>|cFFd0342cUnskipable cutscene ahead|r
    .complete 54703,1 --3/3 Ships marked
step
    .goto 895,36.42,30.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
    .turnin 54703 >>Turn in Express Delivery
    .accept 53887 >>Accept War Marches On
    .target Lady Jaina Proudmoore
step
    .isOnQuest 53887
    .goto 895,42.48,23.02
    .cooldown item,6948,<1,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dagin|r
    .fly Tradewinds Market >>Fly to Tradewinds Market
    .target Dagin
step
    .isOnQuest 53887
    .cooldown item,6948,>0,1
    .hs >> Hearthstone to Boralus
step
    .goto 1161,69.27,27.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 53887 >>Turn in War Marches On
    .accept 54192 >>Accept Sensitive Intel
    .target Halford Wyrmbane
step
    .isOnQuest 54192
    .goto 1161,67.95,26.71
    .gossipoption 48166 >>Talk to |cRXP_FRIENDLY_Grand Admiral Jes-Tereth|r
    .target Grand Admiral Jes-Tereth
step
    .goto 862,41.08,70.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark|r
    .turnin 54192 >>Turn in Sensitive Intel
    .accept 54193 >>Accept This is Huge!
step
    .isOnQuest 54193
    .goto 862,41.1,70.61
    .gossipoption 50536 >>Talk to |cRXP_FRIENDLY_Megs|r
    .timer 24, Megs Dialogue
    .target Megs
step
    .goto 862,41.08,70.65
    >>|cRXP_WARN_Wait for the brief roleplay, which will be completed when the timer runs out.|r
    .complete 54193,1 --1/1 Listen to Megs and Morton's plan
step
    .goto 862,41.08,70.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark|r
    .turnin 54193 >>Turn in This is Huge!
    .target Kelsey Steelspark
step
    .goto 862,41.1,70.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Megs|r
    .accept 54194 >>Accept Real Big Power
    .target Megs
step
    .goto 862,41.22,70.51
    >>Interact with a |cRXP_FRIENDLY_Kul Tiran Clucker|r
    .complete 54194,1 --1/1 Embiggifier tested
    .mob Kul Tiran Clucker
step
    >>Kill |cRXP_ENEMY_Kul Tiran Clucker|r
    .complete 54194,2 --1/1 Kul Tiran Clucker slain
    .mob Kul Tiran Clucker
step
    .goto 862,41.10,70.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Megs|r
    .turnin 54194 >>Turn in Real Big Power
    .accept 54195 >>Accept A Beast with Brains
    .target Megs
step
    .goto 862,48.21,55.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grong|r
    .turnin 54195 >>Turn in A Beast with Brains
    .accept 54196 >>Accept Out of Options
    .accept 54197 >>Accept Freedom for the Da'kani
    .target Grong
step
    #completewith Da'kani Highbrow
    >>Kill |cRXP_ENEMY_Bilgewater Poacher|r
    .complete 54196,1 --12/12 Bilgewater Poacher slain
step
    .goto 862,48.81,55.15
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Cage|r
    .complete 54197,1,1 --8/8 Da'kani Highbrow freed
step
    .goto 862,49.06,54.81
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Cage|r
    .complete 54197,1,2 --8/8 Da'kani Highbrow freed
step
    .goto 862,49.62,54.11
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Cage|r
    .complete 54197,1,3 --8/8 Da'kani Highbrow freed
step
    .goto 862,49.53,54.03
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Cage|r
    .complete 54197,1,4 --8/8 Da'kani Highbrow freed
step
    .goto 862,49.22,53.49
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Cage|r
    .complete 54197,1,5 --8/8 Da'kani Highbrow freed
step
    .goto 862,48.6,53.91
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Cage|r
    .complete 54197,1,6 --8/8 Da'kani Highbrow freed
step
    .goto 862,48.07,53.95
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Cage|r
    .complete 54197,1,7 --8/8 Da'kani Highbrow freed
step
    .goto 862,48.09,53.13
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Cage|r
    .complete 54197,1,8 --8/8 Da'kani Highbrow freed
step
    .loop 15,862,48.06,52.3,48.14,51.29,47.7,52.07,47.09,52.12
    >>Kill |cRXP_ENEMY_Bilgewater Poacher|r
    .complete 54196,1 --12/12 Bilgewater Poacher slain
    .mob Bilgewater Poacher
step
    .goto 862,48.84,53.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grong|r
    .turnin 54197 >>Turn in Freedom for the Da'kani
    .turnin 54196 >>Turn in Out of Options
    .accept 54198 >>Accept Bittersweet Goodbyes
    .target Grong
step
    .goto 862,46.80,50.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grong|r
    .turnin 54198 >>Turn in Bittersweet Goodbyes
    .accept 54199 >>Accept The Needs of the Many
step
    .goto 862,46.8,50.5
    .isOnQuest 54199
    .vehicle >> Interact with |cRXP_FRIENDLY_Grong|r
    .timer 109, Grong RP
step
    .goto 862,41.21,70.54
    >>|cRXP_WARN_Wait for the brief roleplay, which will be completed when the timer runs out.|r
    .complete 54199,1 --1/1 Accompany Grong to Xibala
step
    .goto 862,41.07,70.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morton Cogswald|r
    .turnin 54199 >>Turn in The Needs of the Many
    .accept 54200 >>Accept Bring the Base
step
    .goto 862,41.07,70.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morton Cogswald|r
    .complete 54200,1 --1/1 Speak to Morton Cogswalt
step
    .goto 862,41.90,73.61
    >>|cRXP_WARN_Follow the Arrow.|r
    >>Use |T463836:0|t(1) to leap a distance.
    .complete 54200,2 --1/1 Reach the marker
step
    .goto 862,42.37,72.97
    >>Use |T589118:0|t(4) to to speak to |cRXP_FRIENDLY_Grong|r
    .complete 54200,3 --1/1 Speak to Grong
step
    .goto 862,42.37,72.97
    >>Use |T463836:0|t(1) to leap a distance.
    >>Use |T1058933:0|t(2) to deal damage around you.
    >>Use |T236164:0|t(3) to deal damage infront of you.
    >>Kill |cRXP_ENEMY_Xibalan Ravasaur|r
    .complete 54200,4 --1/1 Xibalan Ravasaur slain
step
    .isOnQuest 54200
    .exitvehicle >> |cRXP_WARN_Dismount Grong by pressing the |r[Exit] |cRXP_WARN_button on your action bars.|r
    *|cRXP_WARN_Alternatively, you can use this macro;|r
    .link /leavevehicle>> CLICK HERE FOR MACRO.
    *|cRXP_WARN_It's recommended to safe this macro for future use.|r
step
    .goto 862,41.07,70.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morton Cogswald|r
    .turnin 54200 >>Turn in Bring the Base
    .accept 54201 >>Accept Fit for Grong
    .target Morton Cogswald
step
    .goto 862,41.1,70.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Megs|r
    .accept 54202 >>Accept Calibrate the Core
    .target Megs
step
    #completewith crates
    >>|cRXP_WARN_Bilgewater Fracker might not work|r
    >>Kill |cRXP_ENEMY_Bilgewater enemies|r, click to calibrate them.
    .complete 54202,1 --10/10 Embiggifier Core calibrated
    .mob Bilgewater Fracker
    .mob Bilgewater Driller
    .mob Bilgewater Boomer
step
    .goto 862,36.42,70.44
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Crate of Ore|r
    >>|cRXP_WARN_Don't pick up the |cRXP_PICK_Azerite Infused Ore.|r|r
    .complete 54201,1,3 --12/12 Azerite Infused Ore
step
    .goto 862,35.52,69.95
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Crate of Ore|r
    >>|cRXP_WARN_Don't pick up the |cRXP_PICK_Azerite Infused Ore.|r|r
    .complete 54201,1,6 --12/12 Azerite Infused Ore
step
    .goto 862,35.35,69.51
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Crate of Ore|r
    >>|cRXP_WARN_Don't pick up the |cRXP_PICK_Azerite Infused Ore.|r|r
    .complete 54201,1,9 --12/12 Azerite Infused Ore
step
    #label crates
    .goto 862,35.64,71.15
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Crate of Ore|r
    >>|cRXP_WARN_Don't pick up the |cRXP_PICK_Azerite Infused Ore.|r|r
    .complete 54201,1,12 --12/12 Azerite Infused Ore
step
    .loop 20,862,35.33,72.67,34.45,71.86,33.65,70.29,34.74,69.39
    >>|cRXP_WARN_Bilgewater Fracker might not work|r
    >>Kill |cRXP_ENEMY_Bilgewater enemies|r, click to calibrate them.
    .complete 54202,1 --10/10 Embiggifier Core calibrated
    .mob Bilgewater Fracker
    .mob Bilgewater Driller
    .mob Bilgewater Boomer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morton Cogswald|r and |cRXP_FRIENDLY_Megs|r
    .turnin 54201 >>Turn in Fit for Grong
    .goto 862,41.07,70.62
    .turnin 54202 >>Turn in Calibrate the Core
    .accept 54203 >>Accept The Embiggining
step
    .goto 862,41.1,70.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Megs|r
    .complete 54203,1 --1/1 Speak to Megs
    .skipgossip 147148,1
step
    .goto 862,41.88,73.65
    >>Use |T133015:0|t(5) to Embiggify Grong.
    .complete 54203,5 --1/1 Embiggify Grong
step
    .goto 862,41.88,73.65
    >>Use |T463836:0|t(1) to leap a distance.
    .complete 54203,3 --1/1 Reach the marker
step
    .goto 862,41.1,70.61
    >>Use |T589118:0|t(4) to to speak to |cRXP_FRIENDLY_Grong|r
    .complete 54203,4 --1/1 Speak to Grong
step
    .goto 862,41.1,70.61
    >>Use |T133015:0|t(5) to Embiggify Grong.
    .complete 54203,5 --1/1 Embiggify Grong
step
    .isOnQuest 54203
    .goto 862,41.1,70.61
    .exitvehicle >> |cRXP_WARN_Dismount Grong by pressing the |r[Exit] |cRXP_WARN_button on your action bars.|r
    *|cRXP_WARN_Alternatively, you can use this macro;|r
    .link /leavevehicle>> CLICK HERE FOR MACRO.
    *|cRXP_WARN_It's recommended to safe this macro for future use.|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Megs|r
    .turnin 54203 >>Turn in The Embiggining
    .accept 54204 >>Accept Total Temple Destruction
    .target Megs
step
    .goto 862,41.19,70.72
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Void Portal|r
    .complete 54204,1 --1/1 Umbric's portal used
step
    .loop 15,862,49.76,41.46,50.05,43.08,49.1,43.03,49.79,40.57
    >>Use |T463836:0|t(1) to leap a distance, also deals damage.
    >>Use |T1058933:0|t(2) to deal damage around you.
    >>Use |T236164:0|t(3) to deal damage infront of you.
    .complete 54204,2 --Temple forces destroyed (100%)
step
    .goto 862,41.14,70.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark|r
    .turnin 54204 >>Turn in Total Temple Destruction
    .accept 54205 >>Accept A Nice Nap
    .target Kelsey Steelspark
step
    .goto 862,41.15,70.68
    >>Interact with |cRXP_FRIENDLY_Grong|r
    .complete 54205,1 --1/1 Grong tranquilized
step
    .goto 862,41.15,70.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark|r
    .turnin 54205 >>Turn in A Nice Nap
    .accept 54206 >>Accept The Sleeper Agent
    .target Kelsey Steelspark
step
    .isOnQuest 54206
    .goto 862,40.46,71.02
    .gossipoption 49161 >>Talk to |cRXP_FRIENDLY_Daria|r
    .target Daria Smithson
step
    .goto 1161,69.25,27.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 54206 >>Turn in The Sleeper Agent
    .accept 54171 >>Accept The Abyssal Scepter
    .target Halford Wyrmbane
step
    .isOnQuest 54171
    .goto 1161,67.95,26.71
    .gossipoption 48166 >>Talk to |cRXP_FRIENDLY_Grand Admiral Jes-Tereth|r
    .target Grand Admiral Jes-Tereth
step
    .goto 862,40.59,70.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
    .turnin 54171 >>Turn in The Abyssal Scepter
    .accept 54169 >>Accept The Treasury Heist
    .target Lady Jaina Proudmoore
step
    .isOnQuest 54169
    .goto 862,40.59,70.70
    .gossipoption 50525 >>Talk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
    .timer , Jaina Dialogue
    .target Lady Jaina Proudmoore
step
    .goto 862,40.61,70.7
    >>|cRXP_WARN_Wait for the brief roleplay, which will be completed when the timer runs out.|r
    .complete 54169,1 --1/1 Speak with Jaina Proudmoore
step
    .isOnQuest 54169
    .goto 862,40.61,70.7
    .zone 1348 >>Click the |cRXP_PICK_Entrance Portal.|r
    .timer 20, Golem activation RP
step
    #completewith Zepter
    .isOnQuest 54169
    >>|cRXP_WARN_Complete the Scenario.|r
    .complete 54169,2 --1/1 Retrieve the Abyssal Scepter from the Zandalari Treasury.
    .mob Treasury Protector
step
    .isOnQuest 54169
    .goto 1348,24.36,81.55
    >>|cRXP_WARN_Wait for the brief roleplay, which will be completed when the timer runs out.|r
    >>Kill the |cRXP_ENEMY_Treasury Protector|r
    .scenario 4021,1 --Golem Destroyed
    .mob Treasury Protector
step
    .isOnQuest 54169
    .goto 1348,28.23,82.44
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Control Switch.|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Security Door.|r
    .scenario 4022,1,1 -- Trap 1
    .mob Baleful Guardian Spirit
step
    .isOnQuest 54169
    .goto 1348,33.23,82.44
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Control Switch.|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Security Door.|r
    .scenario 4022,1,2 -- Trap 2
    .mob Baleful Guardian Spirit
step
    .isOnQuest 54169
    .goto 1348,37.38,79.57
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Control Switch.|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Security Door.|r
    .scenario 4022,1,3 -- Trap 3
step
    .isOnQuest 54169
    .goto 1348,41.97,81.01
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Security Door.|r
    >>Follow the Arrow.
    .scenario 4022,1,4 -- End of the hall reached
step
    .isOnQuest 54169
    .goto 1348,41.23,74.68,10,0
    .goto 1348,41.19,68.22,10,0
    .goto 1348,42.06,61.09
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Security Door.|r
    >>Kill the |cRXP_ENEMY_Treasury Protector|r
    .scenario 4023,1 -- central chamber reached.
    .mob Treasury Protector
    .mob Mighty Guardian Spirit
    .mob Furious Guardian Spirit
step
    .isOnQuest 54169
    .goto 1348,42.09,77.44
    >>|cRXP_WARN_Follow the Arrow.|r
    .scenario 4024,1 -- Return to outer hallway
    .mob Treasury Protector
    .mob Mighty Guardian Spirit
    .mob Furious Guardian Spirit
step
    .isOnQuest 54169
    .goto 1348,42.24,85.52
    >>Kill |cRXP_ENEMY_Treasure Sentinel|r
    .scenario 4046,1 -- Treasury Sentinel defeated.
    .mob Treasury Sentinel
step
    .isOnQuest 54169
    .goto 1348,46.5,82.3,15,0
    .goto 1348,50.43,82.44
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Control Switch.|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Security Door.|r
    .scenario 4048,1,1 -- Trap 1
    .mob Baleful Guardian Spirit
step
    .isOnQuest 54169
    .goto 1348,55.55,82.43
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Control Switch.|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Security Door.|r
    .scenario 4048,1,2 -- Trap 2
step
    .isOnQuest 54169
    .goto 1348,59.59,82.48
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Control Switch.|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Security Door.|r
    .scenario 4048,1,3 -- Trap 3
step
    .isOnQuest 54169
    .goto 1348,60.94,78.15
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Control Switch.|r
    >>Kill |cRXP_ENEMY_Spirits.|r
    .scenario 4051,1 -- Spirits
    .mob Furious Guardian Spirit
    .mob Baleful Guardian Spirit
step
    .isOnQuest 54169
    .goto 1348,60.95,58.58
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Control Switch.|r
    >>|cRXP_WARN_Don't get hit by the beams they oneshot you. the swirls are dangerous too but don't oneshot|r
    >>|cRXP_WARN_Run through the fog, try a camera top-down view to make the fog disappear and be able to see the beams|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Security Door.|r
    .scenario 4052,1 -- Gauntlet
step
    .goto 1348,62.02,52.37
    .isOnQuest 54169
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Security Door.|r
    .gossipoption 50747 >>Talk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .timer 45, Protect Shaw
    .target Master Mathias Shaw
step
    .isOnQuest 54169
    .goto 1348,61.94,51.65
    >>Kill successive |cRXP_ENEMY_enemy waves|r. Kill |cRXP_ENEMY_Treasury Defender|r in the final wave.
    .scenario 4055,1 -- Protect Shaw
    .mob Treasury Protector
    .mob Baleful Guardian Spirit
    .mob Mighty Guardian Spirit
    .mob Treasury Defender
step
    .isOnQuest 54169
    .goto 1348,61.99,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    >>|cRXP_WARN_Press "Escape" on your keyboard to skip the cinematic.|r
    .skipgossip 1
    .scenario 4056,2 -- End
    .target Master Mathias Shaw
step
    .goto 862,40.56,70.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
    .turnin 54169 >>Turn in The Treasury Heist
    .accept 54510 >>Accept Mischief Managed
step
    .isOnQuest 54510
    .goto 862,40.46,71.02
    .gossipoption 49161 >>Talk to |cRXP_FRIENDLY_Daria|r
    .target Daria Smithson
step
    .goto 1161,69.24,26.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 54510,3 >>Turn in Mischief Managed
    .accept 54302 >>Accept The Fall of Zuldazar
    .target Halford Wyrmbane
step
    .isOnQuest 54302
    .goto 1161,66.97,14.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joan Weber|r
    .fly Proudmoore Keep >>Fly to Proudmoore Keep
    .target Joan Weber
step
    .goto 1161,39.20,77.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .complete 54302,1 --1/1 Speak with Mathias Shaw near Proudmoore Keep
    .skipgossip 1
    .target Master Mathias Shaw
step
    .goto 1161,38.98,77.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 54302 >>Turn in The Fall of Zuldazar
    .target Halford Wyrmbane
step
    .goto 1161,38.97,76.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blademaster Telaamon|r
    .accept 54303 >>Accept The March to Nazmir
    .target Blademaster Telaamon
step
    .isOnQuest 54303
    .goto 1161,47.75,65.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessica Clarke|r
    .fly Tradewinds Market >>Fly to Tradewinds Market
    .target Jessica Clarke
step
    .isOnQuest 54303
    .goto 1161,67.95,26.71
    .gossipoption 48165 >>Talk to |cRXP_FRIENDLY_Grand Admiral Jes-Tereth|r
    .target Grand Admiral Jes-Tereth
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r and |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 54303 >>Turn in The March to Nazmir
    .accept 54310 >>Accept Repurposing Their Village
    .goto 863,31.03,29.49
    .accept 54404 >>Accept Dark Iron Machinations
    .goto 863,30.96,29.45
    .target Lady Jaina Proudmoore
    .target Master Mathias Shaw
step
    #completewith Mole Machine
    >>Kill |cRXP_ENEMY_Blood trolls.|r
    .complete 54310,1 --12/12 Defeat blood trolls within Zalamar
    .mob Warspawn Rider
    .mob Zalamar Warrior
    .mob Zalamar Bloodsinger
    .mob Obedient Drudge
step
    .goto 863,32.57,44.53
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Mole Machine.|r
    .complete 54404,1,1 --3/3 Mole machines signalled
step
    .goto 863,30.77,48.32
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Mole Machine.|r
    .complete 54404,1,2 --3/3 Mole machines signalled
step
    #label Mole Machine
    .goto 863,32.87,47.5
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Mole Machine.|r
    .complete 54404,1,3 --3/3 Mole machines signalled
step
    .loop 15,863,33.89,48.39,34.27,47.04,32.24,46.33,32.06,44.15
    >>Kill |cRXP_ENEMY_Blood trolls.|r
    .complete 54310,1 --12/12 Defeat blood trolls within Zalamar
    .mob Warspawn Rider
    .mob Zalamar Warrior
    .mob Zalamar Bloodsinger
    .mob Obedient Drudge
step
    .goto 863,33.36,45.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blademaster Telaamon|r
    .turnin 54310 >>Turn in Repurposing Their Village
    .turnin 54404 >>Turn in Dark Iron Machinations
    .accept 54312 >>Accept Fog of War
    .target Blademaster Telaamon
step
    .isOnQuest 54312
    .goto 863,33.15,46.22,5,0
    .goto 863,33.67,47.71
    .gossipoption 50606 >>Talk to |cRXP_FRIENDLY_Brother Pike|r
    .target Brother Pike
    .timer 13, Brother Pike RP
step
    >>|cRXP_WARN_Wait for the brief roleplay, which will be completed when the timer runs out.|r
    .complete 54312,1 --1/1 Have Brother Pike use the Abyssal Scepter
step
    .goto 863,33.65,47.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
    .turnin 54312 >>Turn in Fog of War
    .accept 54407 >>Accept Lurking in the Swamp
    .target Lady Jaina Proudmoore
step
    .goto 863,35.77,68.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
    .turnin 54407 >>Turn in Lurking in the Swamp
    .accept 54412 >>Accept Zul'jan Deluge
    .target Lady Jaina Proudmoore
step
    .goto 863,35.77,68.08
    >>Interact with |cRXP_FRIENDLY_Jaina's Water Elemental.|r
    .complete 54412,1 --1/1 Command Jaina's Water Elemental
    .timer 44, Water Elemental RP
step
    .goto 863,39.66,76.92,10,0
    .goto 863,40.22,77.33,10,0
    .goto 863,41.13,77.61,10,0
    .goto 863,41.5,78.65
    >>Use |T132298:0|t(1) to damage enemies infront of you.
    >>Use |T893777:0|t(2) to damage enemies around you.
    >>Use |T512902:0|t(3) to damage area in a specific area.
    >>|cRXP_WARN_Spam |T132298:0|t(1) and |T893777:0|t(2), keep |T512902:0|t(3) on cooldown.|r
    .complete 54412,2 --50/50 Enemies slain in Zul'jan ruins
    .timer 10, ELemental RP
step
    .goto 863,44.24,78.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
    .turnin 54412 >>Turn in Zul'jan Deluge
    .accept 54417 >>Accept Showing Our Might
    .target Lady Jaina Proudmoore
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r and |cRXP_FRIENDLY_Blademaster Telaamon|r
    .accept 54421 >>Accept Taming their Beasts
    .goto 863,44.2,78.62
    .accept 54418 >>Accept The Mech of Death
    .goto 863,44.28,78.55
    .target Master Mathias Shaw
    .target Blademaster Telaamon
step
    #completewith beast
    >>Kill |cRXP_ENEMY_Zandalari|r
    .complete 54417,1 --12/12 Zandalari slain
    .mob Zandalari Witch Doctor
    .mob Zandalari Prelate
step
    .goto 863,45.38,72.51
    >>Kill |cRXP_ENEMY_A.M.O.D.|r
    .complete 54418,1 --1/1 A.M.O.D. slain
    .mob A.M.O.D.
    .mob Grit
step
    .goto 863,46.64,76.31
    >>Interact with |cRXP_ENEMY_Resting Battlebeast|r
    .complete 54421,1,1 --3/3 Resting Battlebeast tamed
    .mob Resting Battlebeast
step
    .goto 863,48.85,76.49
    >>Interact with |cRXP_ENEMY_Resting Battlebeast|r
    .complete 54421,1,2 --3/3 Resting Battlebeast tamed
    .mob Resting Battlebeast
step
    #label beast
    .goto 863,47.31,79.84
    >>Interact with |cRXP_ENEMY_Resting Battlebeast|r
    .complete 54421,1,3 --3/3 Resting Battlebeast tamed
    .mob Resting Battlebeast
step
    .loop 20,863,48.76,79.98,48.79,76.91,46.79,76.32,45.97,78.32
    >>Kill |cRXP_ENEMY_Zandalari|r
    .complete 54417,1 --12/12 Zandalari slain
    .mob Zandalari Witch Doctor
    .mob Zandalari Prelate
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blademaster Telaamon|r, |cRXP_FRIENDLY_Master Mathias Shaw.|r and |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
    .turnin 54418 >>Turn in The Mech of Death
    .goto 863,50.37,84.17
    .turnin 54421 >>Turn in Taming their Beasts
    .goto 863,50.43,84.09
    .turnin 54417 >>Turn in Showing Our Might
    .accept 54441 >>Accept Taking the Blood Gate
    .goto 863,50.45,84.24
    .target Blademaster Telaamon
    .target Lady Jaina Proudmoore
    .target Master Mathias Shaw
step
    .goto 863,50.43,84.82
    >>Interact with the |cRXP_FRIENDLY_Controlled Beast.|r
    .complete 54441,1 --1/1 Ride controlled battlebeast
step
    .goto 862,57.76,20.42
    >>Use |T132226:0|t(1) on cd and |T252174:0|t(2) to thunderstruck enemies in the designated area.
    .complete 54441,2 --Blood Gates cleared (100%)
step
    .exitvehicle >> |cRXP_WARN_Dismount the |cRXP_FRIENDLY_Controlled Beast|r by pressing the |r[Exit] |cRXP_WARN_button on your action bars.|r
    *|cRXP_WARN_Alternatively, you can use this macro;|r
    .link /leavevehicle>> CLICK HERE FOR MACRO.
    *|cRXP_WARN_It's recommended to safe this macro for future use.|r
step
    .goto 863,50.45,84.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 54441 >>Turn in Taking the Blood Gate
    .target Master Mathias Shaw
step
    .goto 863,50.37,84.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
    .accept 54459 >>Accept He Who Walks in the Light
    .target Lady Jaina Proudmoore
step
    .isOnQuest 54459
    .goto 863,50.38,84.08
    .zone Boralus >>Click the |cRXP_PICK_Boralus.|r
step
    .goto 1161,69.27,27.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
    .turnin 54459 >>Turn in He Who Walks in the Light
    .target Halford Wyrmbane
]])
