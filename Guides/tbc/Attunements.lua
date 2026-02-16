if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Attunement Guide
#name 1. Karazhan
#title Karazhan

step
    #optional
    +|cRXP_WARN_You must be at least level 68 to begin the Karazhan attunement questline|r
    .xp >68,1
step
    #label Deadwind1
    #completewith Kara1
    .goto Deadwind Pass,42.88,34.52
    .zone Deadwind Pass >> Travel to Deadwind Pass in Eastern Kingdoms
step
    #requires Deadwind1
    #completewith Kara1
    .subzone 2562 >> Travel to Karazhan
step
    .goto Deadwind Pass,47.0,75.6
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Alturus|r
    .accept 9824 >> Accept Arcane Disturbances
    .accept 9825 >> Accept Restless Activity
    .target Archmage Alturus
step
    #completewith PondReading
    .goto Deadwind Pass,47.710,78.267
    .subzone 2837 >> Go down the stairs into the Master's Cellar
step
    #optional
    #completewith Reading2
    >>Kill the |cRXP_ENEMY_Ghosts|r surrounding Karazhan. Loot them for their |cRXP_LOOT_Ghostly Essences|r
    .complete 9825,1 -- Ghostly Essence (10)
    .mob Unliving Caretaker
    .mob Damned Soul
    .mob Restless Shade
    .mob Wailing Spectre
step
    #label PondReading
    .goto Deadwind Pass,42.910,78.275
    .use 24474 >> |cRXP_WARN_Use the|r |T134075:0|t[Violet Scrying Crystal] |cRXP_WARN_while standing in the|r |cRXP_PICK_Underground Pond|r
    .complete 9824,2 -- Underground Pond Reading (1)
step
    .isOnQuest 9824
    .goto Deadwind Pass,43.75,70.74,20,0
    .goto Deadwind Pass,42.99,73.44,20,0
    .goto Deadwind Pass,46.84,74.90,25,0
    .goto Deadwind Pass,45.84,78.04,15,0
    .goto Deadwind Pass,48.74,78.87,10,0
    .subzone 2562 >> |cRXP_WARN_Head back the way you came from to exit the Master's Cellar. You will shortly enter another enterance into the Master's Callar again|r
    .subzoneskip 2837,1
step
    #completewith next
    .goto Deadwind Pass,48.887,78.881
    .subzone 2837 >> Go down the other set of stairs into the Master's Cellar
step
    #label Reading2
    .goto Deadwind Pass,54.56,82.09,25,0
    .goto Deadwind Pass,53.200,90.211
    .use 24474 >> |cRXP_WARN_Use the|r |T134075:0|t[Violet Scrying Crystal] |cRXP_WARN_next to the|r |cRXP_PICK_Underground Well|r
    .complete 9824,1 -- Underground Well Reading (1)
step
    #loop
    .goto Deadwind Pass,55.09,74.81,0
    .goto Deadwind Pass,53.20,90.21,0
    .goto Deadwind Pass,48.88,78.88,0
    .goto Deadwind Pass,42.91,78.27,0
    .goto Deadwind Pass,55.09,74.81,70,0
    .goto Deadwind Pass,53.20,90.21,70,0
    .goto Deadwind Pass,48.88,78.88,70,0
    .goto Deadwind Pass,42.91,78.27,70,0
    >>Kill the |cRXP_ENEMY_Ghosts|r surrounding Karazhan. Loot them for their |cRXP_LOOT_Ghostly Essences|r
    .complete 9825,1 -- Ghostly Essence (10)
    .mob Unliving Caretaker
    .mob Damned Soul
    .mob Restless Shade
    .mob Wailing Spectre
step
    #label Kara1
    .goto Deadwind Pass,47.0,75.6
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Alturus|r
    .turnin 9824 >> Turn in Arcane Disturbances
    .turnin 9825 >> Turn in Restless Activity
    .accept 9826 >> Accept Contact from Dalaran
    .target Archmage Alturus
step
    #completewith next
    .zone Alterac Mountains >> Travel to Alterac Mountains
step
    .goto Alterac Mountains,15.6,54.6
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Cedric|r
    .turnin 9826 >> Turn in Contact from Dalaran
    .accept 9829 >> Accept Khadgar
    .target Archmage Cedric
step
    #completewith next
    .zone Shattrath City >> Travel to Shattrath
step
    .goto Shattrath City,54.751,44.322
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khadgar's Servant|r
    .turnin 9829 >> Turn in Khadgar
    .accept 9831 >> Accept Entry Into Karazhan
    .target Khadgar
step
    .isOnQuest 9831
    .goto Terokkar Forest,39.634,73.553
    .subzone 3789 >> |cRXP_WARN_Find a group for the Shadow Labyrinth dungeon in Terokkar Forest. Once you have found a group, zone into the Shadow Labyrinth|r
step
    .isOnQuest 9831
    >>|cRXP_WARN_After you kill |cRXP_ENEMY_Murmur|r, open the |cRXP_PICK_Arcane Container|r on the ground to spawn the|r |cRXP_ENEMY_First Fragment Guardian|r
    >>Kill the |cRXP_ENEMY_First Fragment Guardian|r. Loot it for the |cRXP_LOOT_First Key Fragment|r
    .complete 9831,1 -- First Key Fragment (1)
    .mob First Fragment Guardian
step
    #completewith next
    .zone Shattrath City >> Travel to Shattrath
step
    .goto Shattrath City,54.751,44.322
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khadgar's Servant|r
    .turnin 9831 >> Turn in Entry Into Karazhan
    .accept 9832 >> Accept The Second and Third Fragments
    .target Khadgar
step << !Druid
    #completewith next
    +|cRXP_WARN_NOTE: To get to Arcatraz you must have purchased flying training as well as a flying mount from Shadowmoon Valley|r
    .skill riding,225,1
    .goto Shadowmoon Valley,37.6,56.0,0 << Alliance
    .goto Shadowmoon Valley,29.2,29.4,0 << Horde
    .target Brunn Flamebeard << Alliance
    .target Ilsa Blusterbrew << Alliance
    .target Dama Wildmane << Horde
    .target Olrokk << Horde
step
    >>You must now run the Steamvault and the Arcatraz. It does not matter which you do first
    >>Once inside either dungeon, open the |cRXP_PICK_Arcane Container|r to spawn the |cRXP_ENEMY_Fragment Guardian|r
    >>Kill the |cRXP_ENEMY_Fragment Guardian|r. Loot them for the |cRXP_LOOT_Second Key Fragment|r and |cRXP_LOOT_Third Key Fragment|r
    .complete 9832,1 -- Second Key Fragment (1) The Steamvault
    .complete 9832,2 -- Third Key Fragment (1) The Arcatraz
    .mob Second Fragment Guardian
    .mob Third Fragment Guardian
step
    #completewith next
    .zone Shattrath City >> Travel to Shattrath
step
    .goto Shattrath City,54.751,44.322
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khadgar's Servant|r
    .turnin 9832 >> Turn in The Second and Third Fragments
    .accept 9836 >> Accept The Master's Touch
    .target Khadgar
step
    #optional
    .isQuestAvailable 10284
    +|cRXP_WARN_You must now complete the Black Morass, however in order to enter the Black Morass, you must complete the quest Escape from Durnholde by completing the Old Hillsbrad dungeon in Caverns of Time|r
step
    .isOnQuest 9836
    .goto Tanaris,57.270,62.872
    .subzone 2300 >> |cRXP_WARN_Find a group for the Black Morass dungeon. Once you have found a group, zone into the Black Morass|r
step
    >>Complete the Black Morass
    >>|cRXP_WARN_Ensure you are standing beside |cRXP_FRIENDLY_Medivh|r once you have killed|r |cRXP_ENEMY_Aeonus|r
    .complete 9836,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Medivh|r
    .turnin 9836 >> Turn in The Master's Touch
    .accept 9837 >> Accept Return to Khadgar
    .target Medivh
step
    #completewith next
    .zone Shattrath City >> Travel to Shattrath
step
    .goto Shattrath City,54.751,44.322
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khadgar's Servant|r
    .turnin 9837 >> Turn in Return to Khadgar
    .accept 9838 >> Accept The Violet Eye
    .target Khadgar
step
    .isQuestTurnedIn 9837
    +|cRXP_WARN_Congratulations! You are now attuned for Karazhan|r
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Attunement Guide
#name 2. Serpentshrine Cavern
#title Serpentshrine Cavern

step
    #completewith next
    .goto Zangarmarsh,50.37,40.90,20,0 -- coilfang reservoir enterance
    .goto Zangarmarsh,49.018,35.631 -- slave pens
    .subzone 3717 >> |cRXP_WARN_Find a group for HEROIC: Slave Pens in Zangarmarsh. Once you have found a group, zone into the Slave Pens|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skar'this the Heretic|r
    .accept 10901 >> Accept The Cudgel of Kar'desh
    .target Skar'this the Heretic
step
    >>|cRXP_WARN_Find raids for both Gruul the Dragonslayer and Karazhan|r
    >>Kill |cRXP_ENEMY_Gruul|r. Loot him for the |cRXP_LOOT_Earthen Signet|r
    >>Kill |cRXP_ENEMY_Nightbane|r. Loot him for the |cRXP_LOOT_Blazing Signet|r
    .complete 10901,1 -- Earthen Signet (1)
    .complete 10901,2 -- Blazing Signet (2)
step
    .goto Zangarmarsh,50.37,40.90,20,0 -- coilfang reservoir enterance
    .goto Zangarmarsh,49.018,35.631 -- slave pens
    >>|cRXP_WARN_Return to |cRXP_FRIENDLY_Skar'this the Heretic|r inside HEROIC: Slave Pens|r
    .turnin 10901 >> Turn in The Cudgel of Kar'desh
    .target Skar'this the Heretic
step
    .isQuestTurnedIn 10901
    +|cRXP_WARN_Congratulations! You are now attuned for Serpentshrine Cavern|r
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Attunement Guide
#name 3. Tempest Keep
#title Tempest Keep

step
    #completewith next
    .zone Shadowmoon Valley >> Travel to Shadowmoon Valley
step << Alliance
    .goto Shadowmoon Valley,36.368,56.953
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Sophurus|r
    .accept 10680 >> Accept The Hand of Gul'dan
	.target Earthmender Sophurus
step << Horde
    .goto Shadowmoon Valley,28.489,26.573
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Splinthoof|r
    .accept 10681 >> Accept The Hand of Gul'dan
	.target Earthmender Splinthoof
step
    .goto Shadowmoon Valley,42.190,45.060
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Torlok|r
    .turnin 10680 >> Turn in The Hand of Gul'dan << Alliance
    .turnin 10681 >> Turn in The Hand of Gul'dan << Horde
    .accept 10458 >> Accept Enraged Spirits of Fire and Earth
	.target Earthmender Torlok
step
    .use 30094 >>|cRXP_WARN_Use the|r |T135462:0|t[Totem of Spirits] |cRXP_WARN_and kill|r |cRXP_ENEMY_Enraged Fire Spirits|r and |cRXP_ENEMY_Enraged Earth Spirits|r
    >>|cRXP_WARN_Ensure you kill them while they are beside the|r |T135462:0|t[Totem of Spirits]
    .complete 10458,1 --Earthen Soul Captured (x8)
    .goto Shadowmoon Valley,45.8,47.6,70,0
    .goto Shadowmoon Valley,51.6,53.8,70,0
    .goto Shadowmoon Valley,47.0,41.6,70,0
    .goto Shadowmoon Valley,45.8,47.6,70,0
    .goto Shadowmoon Valley,51.6,53.8,70,0
    .goto Shadowmoon Valley,47.0,41.6
    .mob +Enraged Earth Spirit
    .complete 10458,2 --Fiery Soul Captured (x8)
    .goto Shadowmoon Valley,45.8,47.6,70,0
    .goto Shadowmoon Valley,51.6,53.8,70,0
    .goto Shadowmoon Valley,47.0,41.6,70,0
    .goto Shadowmoon Valley,49.2,36.6
    .goto Shadowmoon Valley,45.8,47.6,70,0
    .goto Shadowmoon Valley,51.6,53.8,70,0
    .goto Shadowmoon Valley,47.0,41.6
    .goto Shadowmoon Valley,49.2,36.6
	.mob +Enraged Fire Spirit
step
    .goto Shadowmoon Valley,42.190,45.060
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Torlok|r
    .turnin 10458 >> Turn in Enraged Spirits of Fire and Earth
    .accept 10480 >> Accept Enraged Spirits of Water
	.target Earthmender Torlok
step
    #loop
    .goto Shadowmoon Valley,47.6,29.8,0
    .goto Shadowmoon Valley,50.2,23.8,0
    .goto Shadowmoon Valley,44.7,34.1,70,0
    .goto Shadowmoon Valley,44.6,28.6,70,0
    .goto Shadowmoon Valley,47.6,29.8,70,0
    .goto Shadowmoon Valley,46.8,23.6,70,0
    .goto Shadowmoon Valley,50.2,23.8,70,0
    .goto Shadowmoon Valley,52.4,27.4,70,0
    .use 30094 >>|cRXP_WARN_Use the|r |T135462:0|t[Totem of Spirits] |cRXP_WARN_and kill|r |cRXP_ENEMY_Enraged Water Spirits|r
    >>|cRXP_WARN_Ensure you kill them while they are beside the|r |T135462:0|t[Totem of Spirits]
    .complete 10480,1 --Watery Soul Captured (x5)
	.mob Enraged Water Spirit
step
    .goto Shadowmoon Valley,42.190,45.060
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Torlok|r
    .turnin 10480 >> Turn in Enraged Spirits of Water
    .accept 10481 >> Accept Enraged Spirits of Air
	.target Earthmender Torlok
step
    #loop
    .line Shadowmoon Valley,59.6,70.2,62.4,63.6,65.0,61.8,64.6,53.6,58.8,54.8,62.4,62.8
    .goto Shadowmoon Valley,58.8,54.8,70,0
    .goto Shadowmoon Valley,62.4,62.8,70,0
    .goto Shadowmoon Valley,65.0,61.8,70,0
    .goto Shadowmoon Valley,64.6,53.6,70,0
    .goto Shadowmoon Valley,62.4,63.6,70,0
    .goto Shadowmoon Valley,59.6,70.2,70,0
    .use 30094 >>|cRXP_WARN_Use the|r |T135462:0|t[Totem of Spirits] |cRXP_WARN_and kill|r |cRXP_ENEMY_Enraged Air Spirits|r
    >>|cRXP_WARN_Ensure you kill them while they are beside the|r |T135462:0|t[Totem of Spirits]
    .complete 10481,1 --Airy Soul Captured (x10)
	.mob Enraged Air Spirit
step
    .goto Shadowmoon Valley,42.190,45.060
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Torlok|r
    .turnin 10481 >> Turn in Enraged Spirits of Air
    .accept 10513 >> Accept Oronok Torn-heart
	.target Earthmender Torlok
step
    .goto Shadowmoon Valley,53.918,23.529
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oronok Torn-heart|r
    .turnin 10513 >> Turn in Oronok Torn-heart
    .accept 10514 >> Accept I Was A Lot Of Things...
	.target Oronok Torn-heart
step
    #loop
    .goto Shadowmoon Valley,51.8,18.4,0
    .goto Shadowmoon Valley,51.1,15.4,0
    .goto Shadowmoon Valley,55.0,14.2,0
    .goto Shadowmoon Valley,53.8,17.7,0
    .goto Shadowmoon Valley,51.8,18.4,60,0
    .goto Shadowmoon Valley,51.1,15.4,60,0
    .goto Shadowmoon Valley,55.0,14.2,60,0
    .goto Shadowmoon Valley,53.8,17.7,60,0
    .use 30462 >>|cRXP_WARN_Stand on top of the small plants on the ground and use|r |T132161:0|t[Oronok's Boar Whistle] |cRXP_WARN_to have a nearby Domesticated Felboars dig out|r |cRXP_LOOT_Shadowmoon Tubers|r
    >>|cRXP_WARN_It is very important you do NOT kill any Domesticated Felboars|r
    >>Loot the |cRXP_LOOT_Shadowmoon Tubers|r that appear on the ground after
    .complete 10514,1 --Collect Shadowmoon Tuber (x10)
step
    .goto Shadowmoon Valley,53.918,23.529
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oronok Torn-heart|r
    .turnin 10514 >> Turn in I Was A Lot Of Things...
    .accept 10515 >> Accept A Lesson Learned
	.target Oronok Torn-heart
step
    #loop
    .goto Shadowmoon Valley,56.5,14.6,0
    .goto Shadowmoon Valley,57.6,18.6,0
    .goto Shadowmoon Valley,57.2,21.3,0
    .goto Shadowmoon Valley,56.5,14.6,70,0
    .goto Shadowmoon Valley,57.6,18.6,70,0
    .goto Shadowmoon Valley,57.2,21.3,70,0
    .goto Shadowmoon Valley,58.5,14.8,70,0
    >>Click |cRXP_ENEMY_Ravenous Flayer Eggs|r on the ground to destroy them
    >>|cRXP_WARN_Be aware of the elite|r |cRXP_ENEMY_Ravenous Flayer Matriarch|r |cRXP_WARN_that patrols the area|r
    .complete 10515,1 --Collect Ravenous Flayer Egg Destroyed (x10)
step
    .goto Shadowmoon Valley,53.918,23.529
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oronok Torn-heart|r
    .turnin 10515 >> Turn in A Lesson Learned
    .accept 10519 >> Accept The Cipher of Damnation - Truth and History
    .complete 10519,1 --The Cipher of Damnation - History and Truth
	.skipgossip
	.target Oronok Torn-heart
step
    .goto Shadowmoon Valley,53.918,23.529
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oronok Torn-heart|r
    .turnin 10519 >> Turn in The Cipher of Damnation - Truth and History
    .accept 10521 >> Accept Grom'tor, Son of Oronok
    .accept 10527 >> Accept Ar'tor, Son of Oronok
    .accept 10546 >> Accept Borak, Son of Oronok
	.target Oronok Torn-heart
step
    .goto Shadowmoon Valley,44.576,23.614
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grom'tor, Son of Oronok|r
    .turnin 10521 >> Turn in Grom'tor, Son of Oronok
    .accept 10522 >> Accept The Cipher of Damnation - Grom'tor's Charge
	.target Grom'tor, Son of Oronok
step
    #loop
    .goto Shadowmoon Valley,45.98,28.74,0
    .goto Shadowmoon Valley,46.1,31.6,70,0
    .goto Shadowmoon Valley,47.6,31.9,70,0
    .goto Shadowmoon Valley,46.8,26.0,70,0
    .goto Shadowmoon Valley,45.5,26.6,70,0
    >>Kill |cRXP_ENEMY_Coilskar Nagas|r. Loot them for their |cRXP_LOOT_Coilskar Chest Keys|r
    >>Open the |cRXP_PICK_Coilskar Chests|r until you loot the |cRXP_LOOT_First Fragment of the Cipher of Damnation|r
    .complete 10522,1 --Collect First Fragment of the Cipher of Damnation (x1)
	.mob Coilskar Defender
	.mob Coilskar Muckwatcher
	.mob Coilskar Myrmidon
	.mob Coilskar Siren
	.mob Coilskar Sorceress
	.mob Coilskar Waterkeeper
step
    .goto Shadowmoon Valley,44.576,23.614
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grom'tor, Son of Oronok|r
    .turnin 10522 >> Turn in The Cipher of Damnation - Grom'tor's Charge
    .accept 10523 >> Accept The Cipher of Damnation - The First Fragment Recovered
	.target Grom'tor, Son of Oronok
step
    .goto Shadowmoon Valley,29.617,50.397
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ar'tor, Son of Oronok|r
    .turnin 10527 >> Turn in Ar'tor, Son of Oronok
    .accept 10528 >> Accept Demonic Crystal Prisons
	.target Ar'tor, Son of Oronok
step
    .goto Shadowmoon Valley,28.005,47.568
    >>Kill |cRXP_ENEMY_Painmistress Gabrissa|r. Loot her for the |cRXP_LOOT_Crystalline Key|r
    .complete 10528,1 --Collect Crystalline Key (x1)
	.mob Painmistress Gabrissa
step
    .goto Shadowmoon Valley,29.617,50.397
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ar'tor, Son of Oronok|r
    .turnin 10528 >> Turn in Demonic Crystal Prisons
	.target Ar'tor, Son of Oronok
step
    .isQuestTurnedIn 10528
    .goto Shadowmoon Valley,29.539,50.560
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Spirit of Ar'tor|r
    .accept 10537 >> Accept Lohn'goron, Bow of the Torn-heart
	.target Spirit of Ar'tor
step
    #loop
    .goto Shadowmoon Valley,30.2,56.8,0
    .goto Shadowmoon Valley,32.0,50.4,0
    .goto Shadowmoon Valley,27.2,52.6,0
    .goto Shadowmoon Valley,30.2,56.8,70,0
    .goto Shadowmoon Valley,32.0,50.4,70,0
    .goto Shadowmoon Valley,27.2,52.6,70,0
    >>Kill the |cRXP_ENEMY_Illidari|r. Loot them for |cRXP_LOOT_Lohn'goron, Bow of the Torn-heart|r
    .complete 10537,1 --Collect Lohn'goron, Bow of the Torn-heart (x1)
	.mob Illidari Dreadbringer
	.mob Illidari Painlasher
	.mob Illidari Shadowstalker
	.mob Illidari Shocktrooper
step
    .goto Shadowmoon Valley,29.539,50.560
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Spirit of Ar'tor|r
    .turnin 10537 >> Turn in Lohn'goron, Bow of the Torn-heart
    .accept 10540 >> Accept The Cipher of Damnation - Ar'tor's Charge
	.target Spirit of Ar'tor
step
    .goto Shadowmoon Valley,29.5,57.5
    >>|cRXP_WARN_Head southeast while the |cRXP_FRIENDLY_Spirit of Ar'tor|r follows you, walk around this area until he summons|r |cRXP_ENEMY_Veneratus the Many|r
    >>Kill |cRXP_ENEMY_Veneratus the Many|r. Loot him for the |cRXP_LOOT_Second Fragment of the Cipher of Damnation|r
    .complete 10540,1 --Collect Second Fragment of the Cipher of Damnation (x1)
	.mob Veneratus the Many
	.target Spirit of Ar'tor
step
    .goto Shadowmoon Valley,29.539,50.560
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Spirit of Ar'tor|r
    .turnin 10540 >> Turn in The Cipher of Damnation - Ar'tor's Charge
    .accept 10541 >> Accept The Cipher of Damnation - The Second Fragment Recovered
	.target Spirit of Ar'tor
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .turnin 10546 >> Turn in Borak, Son of Oronok
    .accept 10547 >> Accept Of Thistleheads and Eggs...
	.target Borak, Son of Oronok
step
    #loop
    .goto Shadowmoon Valley,43.7,53.3,55,0
    .goto Shadowmoon Valley,42.4,58.3,55,0
    .goto Shadowmoon Valley,43.7,60.7,55,0
    .goto Shadowmoon Valley,46.1,59.2,55,0
    >>Loot the |cRXP_PICK_Rotten Arakkoa Eggs|r on the ground
    >>|cRXP_WARN_Be careful because they can damage you upon looting|r
    .complete 10547,1 --Collect Rotten Arakkoa Egg (x1)
step
    #completewith next
    .zone Shattrath City >> Travel to Shattrath
step
    .goto Shattrath City,63.944,70.028
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tobias the Filth Gorger|r
    .turnin 10547 >> Turn in Of Thistleheads and Eggs...
    .accept 10550 >> Accept The Bundle of Bloodthistle
	.target Tobias the Filth Gorger
step
    #completewith next
    .zone Shadowmoon Valley >> Return to Shadowmoon Valley
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .turnin 10550 >> Turn in The Bundle of Bloodthistle
    .accept 10570 >> Accept To Catch A Thistlehead
	.target Borak, Son of Oronok
step
    #completewith next
    .goto Shadowmoon Valley,48.959,57.495
    .cast 37062 >>|cRXP_WARN_Use the|r |T133651:0|t[Bundle of Bloodthistle] |cRXP_WARN_at the end of the bridge|r
    .timer 78,To Catch A Thistlehead RP
    .use 30616
step
    .goto Shadowmoon Valley,48.959,57.495
    .use 30616 >>Kill |cRXP_ENEMY_Envoy Icarius|r when he becomes attackable. Loot him for the |cRXP_LOOT_Stormrage Missive|r
    .complete 10570,1 --Collect Stormrage Missive (x1)
    .mob Envoy Icarius
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .turnin 10570 >> Turn in To Catch A Thistlehead
    .accept 10576 >> Accept The Shadowmoon Shuffle
	.target Borak, Son of Oronok
step
    #loop
    .goto Shadowmoon Valley,49.6,60.6,0
    .goto Shadowmoon Valley,47.6,66.4,0
    .goto Shadowmoon Valley,44.4,67.4,0
    .goto Shadowmoon Valley,47.6,70.6,0
    .goto Shadowmoon Valley,49.6,60.6,70,0
    .goto Shadowmoon Valley,47.6,66.4,70,0
    .goto Shadowmoon Valley,44.4,67.4,70,0
    .goto Shadowmoon Valley,47.6,70.6,70,0
	>>Kill |cRXP_ENEMY_Eclipsions|r. Loot them for their |cRXP_LOOT_Armor|r
    .complete 10576,1 --Collect Eclipsion Armor (x6)
	.mob Eclipsion Archmage
	.mob Eclipsion Blood Knight
	.mob Eclipsion Bloodwarder
	.mob Eclipsion Centurion
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .turnin 10576 >> Turn in The Shadowmoon Shuffle
    .accept 10577 >> Accept What Illidan Wants, Illidan Gets...
	.target Borak, Son of Oronok
step
    #completewith next
    .cast 37096 >>|cRXP_WARN_Use the|r |T133564:0|t[Blood Elf Disguise]
    .use 30639
step
    .goto Shadowmoon Valley,46.458,71.944
	.use 30639 >>Talk to |cRXP_FRIENDLY_Grand Commander Ruusk|r
    >>|cRXP_WARN_Ensure you have the|r |T133564:0|t[Blood Elf Disguise] |cRXP_WARN_on|r
    .complete 10577,1 --Illidan's Message Delivered
	.skipgossip
	.target Grand Commander Ruusk
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .turnin 10577 >> Turn in What Illidan Wants, Illidan Gets...
    .accept 10578 >> Accept The Cipher of Damnation - Borak's Charge
	.target Borak, Son of Oronok
step
    #loop
    .goto Shadowmoon Valley,59.2,55.8,60,0
    .goto Shadowmoon Valley,65.8,59.8,60,0
    >>Kill |cRXP_ENEMY_Ruul the Darkener|r. Loot him for the |cRXP_LOOT_Third Fragment of the Cipher of Damnation|r
    >>|cRXP_ENEMY_Ruul the Darkener|r |cRXP_WARN_hits very hard. It is recommended you complete this with a full group including a tank and healer|r
    .complete 10578,1 -- Third Fragment of the Cipher of Damnation (1)
    .mob Ruul the Darkener
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .turnin 10578 >> Turn in The Cipher of Damnation - Borak's Charge
    .accept 10579 >> Accept The Cipher of Damnation - The Third Fragment Recovered
	.target Borak, Son of Oronok
step
    .goto Shadowmoon Valley,53.918,23.529
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oronok Torn-heart|r
    .turnin 10523 >> Turn in The Cipher of Damnation - The First Fragment Recovered
    .turnin 10541 >> Turn in The Cipher of Damnation - The Second Fragment Recovered
    .turnin 10579 >> Turn in The Cipher of Damnation - The Third Fragment Recovered
    .accept 10588 >> Accept The Cipher of Damnation
	.target Oronok Torn-heart
step
    #completewith next
    .cast 37236 >>|cRXP_WARN_Channel the|r |T134423:0|t[The Cipher of Damnation] |cRXP_WARN_for 20 seconds to summon|r |cRXP_ENEMY_Cyrukh the Firelord|r
    .use 30657
step
    .goto Shadowmoon Valley,43.249,44.834
    .use 30657 >>Kill |cRXP_ENEMY_Cyrukh the Firelord|r
    >>|cRXP_ENEMY_Cyrukh the Firelord|r |cRXP_WARN_has 369k HP. It is recommended you complete this with a full group including a tank and healer. The NPCs will also assist you|r
    .complete 10588,1 -- Cyrukh the Firelord slain
    .mob Cyrukh the Firelord
step
    .goto Shadowmoon Valley,42.190,45.060
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Torlok|r
    .turnin 10588 >> Turn in The Cipher of Damnation
	.target Earthmender Torlok
step
    #completewith next
    .zone Shattrath City >> Travel to Shattrath
step
    .goto Shattrath City,54.751,44.322
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khadgar|r
    .accept 10883 >> Accept The Tempest Key
    .target Khadgar
step
    .goto Shattrath City,53.991,44.743
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A'dal|r
    .turnin 10883 >> Turn in The Tempest Key
    .accept 10884 >> Accept Trial of the Naaru: Mercy
    .accept 10885 >> Accept Trial of the Naaru: Strength
    .accept 10886 >> Accept Trial of the Naaru: Tenacity
    .target A'dal
step
    >>|cRXP_WARN_You now have the 3 Trial quests. These quests all require to be completed while running the dungeons on HEROIC difficulty|r
    >>|cRXP_WARN_The dungeons you must complete are: Shattered Halls, Steamvaults, Arcatraz and the Shadow Labyrinth|r
    >>Complete Shattered Halls within 55 minutes after killing |cRXP_ENEMY_Grand Warlock Nethekurse|r. You must kill the |cRXP_ENEMY_Shattered Hand Executioner|r at the end of the dungeon within the time limit. Loot him for the |cRXP_LOOT_Unused Axe of the Executioner|r
    >>Kill |cRXP_ENEMY_Warlord Kalithresh|r in the Steamvaults. Loot him for |cRXP_LOOT_Kalithresh's Trident|r
    >>Kill |cRXP_ENEMY_Murmur|r in the Shadow Labyrinth. Loot him for |cRXP_LOOT_Murmur's Essence|r
    >>Complete the Arcatraz. Ensure |cRXP_FRIENDLY_Millhouse Manastorm|r stays alive after defeating the final boss, |cRXP_ENEMY_Harbinger Skyriss|r
    .complete 10884,1 -- Unused Axe of the Executioner (1)
    .complete 10885,1 -- Kalithresh's Trident (1)
    .complete 10885,2 -- Murmur's Essence (1)
    .complete 10886,1 -- Millhouse Manastorm Rescued
step
    .goto Shattrath City,53.991,44.743
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A'dal|r
    .turnin 10884 >> Turn in Trial of the Naaru: Mercy
    .turnin 10885 >> Turn in Trial of the Naaru: Strength
    .turnin 10886 >> Turn in Trial of the Naaru: Tenacity
    .accept 10888 >> Accept Trial of the Naaru: Magtheridon
    .target A'dal
step
    >>Kill |cRXP_ENEMY_Magtheridon|r
    .complete 10888,1 -- Magtheridon slain
step
    .goto Shattrath City,53.991,44.743
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A'dal|r
    .turnin 10888 >> Turn in Trial of the Naaru: Magtheridon
    .target A'dal
step
    .isQuestTurnedIn 10888
    +|cRXP_WARN_Congratulations! You are now attuned for The Eye: Tempest Keep|r
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Attunement Guide
#name 4. Mount Hyjal
#title Mount Hyjal

step
    #completewith next
    .goto Tanaris,65.669,49.940,50 >> Travel to the Caverns of Time
    .subzoneskip 1941
step
    #loop
    .goto Tanaris,58.86,54.22,20,0
    .goto Tanaris,58.21,54.79,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soridormi|r
    >>|cRXP_FRIENDLY_Soridormi|r |cRXP_WARN_patrols slightly|r
    .accept 10445 >> Accept The Vials of Eternity
    .target Soridormi
step
    >>Kill |cRXP_ENEMY_Lady Vashj|r. Loot her for |cRXP_LOOT_Vashj's Vial Remnant|r
    >>Kill |cRXP_ENEMY_Kael'thas Sunstrider|r. Loot him for |cRXP_LOOT_Kael's Vial Remnant|r
    .complete 10445,1 -- Vashj's Vial Remnant (1)
    .complete 10445,2 -- Kael's Vial Remnant (1)
step
    #completewith next
    .goto Tanaris,65.669,49.940,50 >> Return to the Caverns of Time
    .subzoneskip 1941
step
    #loop
    .goto Tanaris,58.86,54.22,20,0
    .goto Tanaris,58.21,54.79,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soridormi|r
    >>|cRXP_FRIENDLY_Soridormi|r |cRXP_WARN_patrols slightly|r
    .turnin 10445 >> Turn in The Vials of Eternity
    .target Soridormi
step
    .isQuestTurnedIn 10445
    +|cRXP_WARN_Congratulations! You are now attuned for Mount Hyjal|r
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Attunement Guide
#name 5. Black Temple
#title Black Temple

step
#aldor
    #completewith SeerUdalo
    .zone Shadowmoon Valley >> Travel to Shadowmoon Valley
step
#aldor
    .goto Shadowmoon Valley,62.648,28.445
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Ceyla|r
    .accept 10568 >> Accept Tablets of Baa'ri
	.target Anchorite Ceyla
step
#scryer
    #completewith SeerUdalo
    .zone Shadowmoon Valley >> Travel to Shadowmoon Valley
step
#scryer
    .goto Shadowmoon Valley,56.258,59.586
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Thelis|r
    .accept 10683 >> Accept Tablets of Baa'ri
    .target Arcanist Thelis
step
#aldor
    #loop
    .goto Shadowmoon Valley,56.0,37.1,0
    .goto Shadowmoon Valley,59.0,34.9,70,0
    .goto Shadowmoon Valley,56.0,37.1,70,0
    .goto Shadowmoon Valley,59.1,39.3,70,0
    >>Loot the |cRXP_PICK_Baa'ri Tablet Fragments|r on the ground
    .complete 10568,1 --Collect Baa'ri Tablet Fragment (x12)
step
#scryer
    #loop
    .goto Shadowmoon Valley,57.6,39.2,0
    .goto Shadowmoon Valley,57.6,39.2,70,0
    .goto Shadowmoon Valley,60.8,34.6,70,0
    .goto Shadowmoon Valley,55.8,39.4,70,0
    .goto Shadowmoon Valley,60.6,38.2,70,0
    >>Loot the |cRXP_PICK_Baa'ri Tablet Fragments|r on the ground
    .complete 10683,1 --Collect Baa'ri Tablet Fragment (x12)
step
#aldor
    .goto Shadowmoon Valley,62.648,28.445
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Ceyla|r
    .turnin 10568 >> Turn in Tablets of Baa'ri
    .accept 10571 >> Accept Oronu the Elder
	.target Anchorite Ceyla
step
#scryer
    .goto Shadowmoon Valley,56.258,59.586
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Thelis|r
    .turnin 10683 >> Turn in Tablets of Baa'ri
    .accept 10684 >> Accept Oronu the Elder
    .target Arcanist Thelis
step
#aldor
    .goto Shadowmoon Valley,57.191,32.877
    >>Kill |cRXP_ENEMY_Oronu|r on the balcony
    .complete 10571,1 --Collect Orders From Akama (x1)
	.mob Oronu the Elder
step
#scryer
    .goto Shadowmoon Valley,57.191,32.877
    >>Kill |cRXP_ENEMY_Oronu|r on the balcony
    .complete 10684,1 --Collect Orders From Akama (x1)
	.mob Oronu the Elder
step
#aldor
    .goto Shadowmoon Valley,62.648,28.445
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Ceyla|r
    .turnin 10571 >> Turn in Oronu the Elder
    .accept 10574 >> Accept The Ashtongue Corruptors
	.target Anchorite Ceyla
step
#scryer
    .goto Shadowmoon Valley,56.258,59.586
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Thelis|r
    .turnin 10684 >> Turn in Oronu the Elder
    .accept 10685 >> Accept The Ashtongue Corruptors
    .target Arcanist Thelis
step
#aldor
    .goto Shadowmoon Valley,49.887,23.012
    >>Destroy the totems protecting |cRXP_ENEMY_Lakaan|r. Kill and loot him for his |cRXP_LOOT_Medallion Fragment|r
    .complete 10574,3 --Collect Lakaan's Medallion Fragment (x1)
	.mob Lakaan
step
#aldor
    .goto Shadowmoon Valley,48.289,39.564
    >>Destroy the totems protecting |cRXP_ENEMY_Uylaru|r. Kill and loot him for his |cRXP_LOOT_Medallion Fragment|r
    .complete 10574,4 --Collect Uylaru's Medallion Fragment (x1)
	.mob Uylaru
step
#aldor
    .goto Shadowmoon Valley,51.164,52.840
    >>Destroy the totems protecting |cRXP_ENEMY_Eykenen|r. Kill and loot him for his |cRXP_LOOT_Medallion Fragment|r
    .complete 10574,1 --Collect Eykenen's Medallion Fragment (x1)
	.mob Eykenen
step
#aldor
    .goto Shadowmoon Valley,57.083,73.687
    >>Destroy the totems protecting |cRXP_ENEMY_Haalum|r. Kill and loot him for |cRXP_LOOT_Haalum's Medallion Fragment|r
    .complete 10574,2 --Collect Haalum's Medallion Fragment (x1)
	.mob Haalum
step
#scryer
    .goto Shadowmoon Valley,57.083,73.687
    >>Destroy the totems protecting |cRXP_ENEMY_Haalum|r. Kill and loot him for |cRXP_LOOT_Haalum's Medallion Fragment|r
    .complete 10685,2 --Collect Haalum's Medallion Fragment (x1)
	.mob Haalum
step
#scryer
    .goto Shadowmoon Valley,51.164,52.840
    >>Destroy the totems protecting |cRXP_ENEMY_Eykenen|r. Kill and loot him for his |cRXP_LOOT_Medallion Fragment|r
    .complete 10685,1 --Collect Eykenen's Medallion Fragment (x1)
	.mob Eykenen
step
#scryer
    .goto Shadowmoon Valley,48.289,39.564
    >>Destroy the totems protecting |cRXP_ENEMY_Uylaru|r. Kill and loot him for his |cRXP_LOOT_Medallion Fragment|r
    .complete 10685,4 --Collect Uylaru's Medallion Fragment (x1)
	.mob Uylaru
step
#scryer
    .goto Shadowmoon Valley,49.887,23.012
    >>Destroy the totems protecting |cRXP_ENEMY_Lakaan|r. Kill and loot him for his |cRXP_LOOT_Medallion Fragment|r
    .complete 10685,3 --Collect Lakaan's Medallion Fragment (x1)
	.mob Lakaan
step
#aldor
    .goto Shadowmoon Valley,62.648,28.445
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Ceyla|r
    .turnin 10574 >> Turn in The Ashtongue Corruptors
    .accept 10575 >> Accept The Warden's Cage
	.target Anchorite Ceyla
step
#scryer
    .goto Shadowmoon Valley,56.258,59.586
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Thelis|r
    .turnin 10685 >> Turn in The Ashtongue Corruptors
    .accept 10686 >> Accept The Warden's Cage
    .target Arcanist Thelis
step
#aldor
    .goto Shadowmoon Valley,57.328,49.577
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sanoru|r
    .turnin 10575 >> Turn in The Warden's Cage
    .accept 10622 >> Accept Proof of Allegiance
	.target Sanoru
step
#scryer
    .goto Shadowmoon Valley,57.328,49.577
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sanoru|r
    .turnin 10686 >> Turn in The Warden's Cage
    .accept 10622 >> Accept Proof of Allegiance
	.target Sanoru
step
    #loop
    .goto Shadowmoon Valley,57.02,48.71,0
    .goto Shadowmoon Valley,56.35,49.98,50,0
    .goto Shadowmoon Valley,57.02,48.71,50,0
    .goto Shadowmoon Valley,58.09,49.78,50,0
    >>Kill |cRXP_ENEMY_Zandras|r
    >>|cRXP_ENEMY_Zandras|r |cRXP_WARN_patrols the rooftop upstairs|r
    .complete 10622,1 --Kill Zandras (x1)
	.mob Zandras
step
    .goto Shadowmoon Valley,57.328,49.577
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sanoru|r
    .turnin 10622 >> Turn in Proof of Allegiance
    .accept 10628 >> Accept Akama
	.target Sanoru
step
    #label SeerUdalo
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akama|r
    >>|cRXP_FRIENDLY_Akama|r |cRXP_WARN_is further inside Warden's Cage|r
    .turnin 10628 >> Turn in Akama
    .accept 10705 >> Accept Seer Udalo
	.target Akama
step
    #completewith next
    .isOnQuest 10705
    .subzone 3846 >> |cRXP_WARN_Find a group for the Arcatraz. You must talk with |cRXP_FRIENDLY_Udalo|r inside the dungeon|r
    .subzoneskip 3848
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Udalo|r
    .turnin 10705 >> Turn in Seer Udalo
    .accept 10706 >> Accept A Mysterious Portent
	.target Udalo
step
    #completewith next
    .zone Shadowmoon Valley >> Return to Shadowmoon Valley
step
    .goto Shadowmoon Valley,57.328,49.577,10,0
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akama|r
    .turnin 10706 >> Turn in A Mysterious Portent
    .accept 10707 >> Accept The Ata'mal Terrace
	.target Akama
step
    .goto Shadowmoon Valley,71.597,35.508
    >>|cRXP_WARN_Kill the three |cRXP_ENEMY_Shadowmoon Soulstealers|r to make |cRXP_ENEMY_Shadowlord Deathwail|r land on the ground|r
    >>Kill |cRXP_ENEMY_Shadowlord Deathwail|r. Loot him for the |cRXP_LOOT_Heart of Fury|r
    >>|cRXP_WARN_It is recommended you complete this with a full group including a tank and healer|r
    .complete 10707,1 -- Heart of Fury (1)
    .mob Shadowlord Deathwail
step
    .goto Shadowmoon Valley,57.328,49.577,10,0
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akama|r
    .turnin 10707 >> Turn in The Ata'mal Terrace
    .accept 10708 >> Accept Akama's Promise
	.target Akama
step
    #completewith next
    .zone Shattrath City >> Travel to Shattrath
step
    .goto Shattrath City,53.98,44.73
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A'dal|r
    .turnin 10708 >> Turn in Akama's Promise
	.target A'dal
step
    #completewith next
    .subzone 3607 >> |cRXP_WARN_Enter the Serpentshrine Cavern raid. You must defeat the boss |cRXP_ENEMY_Fathom-Lord Karathress|r, then talk to |cRXP_FRIENDLY_Seer Olum|r who is located behind him|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seer Olum|r
    .accept 10944 >> Accept The Secret Compromised
step
    #completewith next
    .zone Shadowmoon Valley >> Return to Shadowmoon Valley
step
    .goto Shadowmoon Valley,57.328,49.577,10,0
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akama|r
    .turnin 10944 >> Turn in The Secret Compromised
    .accept 10946 >> Accept Ruse of the Ashtongue
	.target Akama
step
    .use 31946 >>Kill |cRXP_ENEMY_A'lar|r in Tempest Keep while wearing the |T133132:0|t[Ashtongue Cowl]
    .complete 10946,1 -- Ruse of the Ashtongue 1/1
step
    #completewith next
    .zone Shadowmoon Valley >> Return to Shadowmoon Valley
step
    .goto Shadowmoon Valley,57.328,49.577,10,0
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akama|r
    .turnin 10946 >> Turn in Ruse of the Ashtongue
    .accept 10947 >> Accept An Artifact From the Past
	.target Akama
step
    >>Kill |cRXP_ENEMY_Rage Winterchill|r in Mount Hyjal. Loot him for the |cRXP_LOOT_Time-Phased Phylactery|r
    .complete 10947,1 -- Time-Phased Phylactery (1)
step
    #completewith next
    .zone Shadowmoon Valley >> Return to Shadowmoon Valley
step
    .goto Shadowmoon Valley,57.328,49.577,10,0
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akama|r
    .turnin 10947 >> Turn in An Artifact From the Past
    .accept 10948 >> Accept The Hostage Soul
	.target Akama
step
    #completewith next
    .zone Shattrath City >> Travel to Shattrath
step
    .goto Shattrath City,53.98,44.73
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A'dal|r
    .turnin 10948 >> Turn in The Hostage Soul
    .accept 10949 >> Accept Entry Into the Black Temple
	.target A'dal
step
    #completewith next
    .zone Shadowmoon Valley >> Return to Shadowmoon Valley
step
    .goto Shadowmoon Valley,65.233,43.956
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xi'ri|r
    >>|cRXP_WARN_If you are in a group, ensure other party members have turned in before accepting the next quest. Auto accept has been turned off for this step|r
    .turnin 10949 >> Turn in Entry Into the Black Temple
    .accept 10985,1 >> Accept A Distraction for Akama
    .target Xi'ri
step
    .goto Shadowmoon Valley,65.233,43.956
    >>|cRXP_WARN_Talk to |cRXP_FRIENDLY_Xi'ri|r to begin the RP. You may need to wait beside him for 1-2 minutes for |cRXP_FRIENDLY_Akama|r to turn up. Once |cRXP_FRIENDLY_Akama|r has arrived, follow him and continue through the RP|r
    .complete 10985,1 -- Help Akama and Maiev enter the Black Temple.
    .skipgossip
    .target Xi'ri
    .target Akama
step
    .goto Shadowmoon Valley,65.233,43.956
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xi'ri|r
    .turnin 10985 >> Turn in A Distraction for Akama
    .accept 10958 >> Accept Seek Out the Ashtongue
    .target Xi'ri
step
    .isQuestTurnedIn 10985
    +|cRXP_WARN_Congratulations! You are now attuned for Black Temple|r
]])
