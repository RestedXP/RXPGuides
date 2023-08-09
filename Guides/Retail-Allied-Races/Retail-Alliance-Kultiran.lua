RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Allied Race Unlocks
#subgroup Kultiran
#name Z13) Kultiran Questline
#displayname Final Chapter

<< Alliance 

step
    #completewith next
    .zone 84 >>Travel to |cFFfa9602to Stormwind.|r
step
    .accept 49929 >>Accept The Call for Allies
step
    .goto 84,52.05,13.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r |cFFfa9602inside the Stormwind Embassy.|r
    .turnin 49929 >>Turn in The Call for Allies
    .accept 50239 >>Accept A Choice of Allies
    .target Aysa Cloudsinger
step
    .goto 84,52.22,13.20
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Void Elf Banner.|r
    .complete 50239,2 --1/1 Learn about the Void Elves
step
    .goto 84,52.34,13.05
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Kul Tiran Banner.|r
    .complete 50239,4 --1/1 Learn about the Kul Tirans
step
    .goto 84,51.73,13.34
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Mechagnome Banner.|r
    .complete 50239,5 --1/1 Learn about the Mechagnomes
step
    .goto 84,51.78,13.73
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Dark Iron Dwarf Banner.|r
    .complete 50239,3 --1/1 Learn about the Dark Iron Dwarves
step
    .goto 84,51.86,13.55
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Lightforged Draenei Banner.|r
    .complete 50239,1 --1/1 Learn about the Lightforged Draenei
step
    .goto 84,52.06,13.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger.|r
    .turnin 50239 >>Turn in A Choice of Allies
    .accept 54706 >>Accept Made in Kul Tiras
    .target Aysa Cloudsinger
step
    .goto 84,52.82,14.57,5,0
    .goto 84,49.35,86.91,5 >>Travel |cFFfa9602to Mage Tower.|r
    .isOnQuest 54706
step
    .goto 84,48.83,86.9,5,0 
    .goto 84,49.15,87.77,5, >>Ascend |cFFfa9602the Spiral staircase.|r
    .isOnQuest 54706
step
    .goto 84,48.75,88.07,3 >>Walk through |cFFfa9602the Portal.|r
    .isOnQuest 54706
step
    .goto 84,46.77,89.79,5,0
    .goto 84,48.74,95.18
    .zone 1161 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Boralus Portal.|r
    .isOnQuest 54706
step
    .goto 1161,68.85,21.18,5,0
    .goto 1161,67.44,21.29,5,0
    .goto 1161,67.99,21.90,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus Crestfall.|r
    .skipgossip 122370,1
    .complete 54706,2 --1/1 Speak to Cyrus
    .target Cyrus Crestfall
step
    .goto 1161,67.99,21.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus Crestfall.|r
    .turnin 54706 >>Turn in Made in Kul Tiras
    .accept 55039 >>Accept The Master Shipwright
    .target Cyrus Crestfall
step
    .goto 1161,67.95,22.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore.|r
    .skipgossip 
    .complete 55039,1 --1/1 Letter from the Lord Admiral
    .target Lady Jaina Proudmoore
-- step
--     #completewith next
--     .goto 1161,67.09,23.33,5,0
--     .goto 1161,66.98,14.99
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joan Weber|r |cRXP_WARN_and if you don't have the flightpath you can just fly.|r
--     .fly Brennadam >>Fly |cFFfa9602to Brennadam.|r
--     .target Joan Weber
step
    .goto 1161,67.09,23.33,5 >> Leave |cFFfa9602the Office.|r
    .isOnQuest 55043
step
    .goto 942,59.39,70.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus Crestfall|r |cFFfa9602inside the Brennadam.|r
    .turnin 55039 >>Turn in The Master Shipwright
    .accept 55043 >>Accept Fish Tales and Distant Sails
    .target Cyrus Crestfall
step
    .goto 942,59.39,69.36
    .gossipoption 50031 >>Talk to |cRXP_FRIENDLY_Talkative Brennadam Citizen 1.|r
    .target Talkative Brennadam Citizen
    .isOnQuest 55043
step
    .goto 942,59.61,68.62
    .gossipoption 50031 >>Talk to |cRXP_FRIENDLY_Talkative Brennadam Citizen 2.|r
    .target Talkative Brennadam Citizen
    .isOnQuest 55043
step
    .goto 942,59.41,68.73
    .gossipoption 50031 >>Talk to |cRXP_FRIENDLY_Talkative Brennadam Citizen 3.|r
    .target Talkative Brennadam Citizen
    .isOnQuest 55043
step
    .goto 942,59.08,69.95
    .gossipoption 50031 >>Talk to |cRXP_FRIENDLY_Talkative Brennadam Citizen 4.|r
    .target Talkative Brennadam Citizen
    .isOnQuest 55043
step
    .goto 942,58.79,70.2
    .gossipoption 50031 >>Talk to |cRXP_FRIENDLY_Talkative Brennadam Citizen 5.|r
    .target Talkative Brennadam Citizen
    .isOnQuest 55043
step
    .goto 942,58.53,70.23
    .gossipoption 50031 >>Talk to |cRXP_FRIENDLY_Talkative Brennadam Citizen 6.|r
    .target Talkative Brennadam Citizen
    .isOnQuest 55043
step
    .goto 942,58.17,70.59
    .gossipoption 50031 >>Talk to |cRXP_FRIENDLY_Talkative Brennadam Citizen 7.|r
    .target Talkative Brennadam Citizen
    .isOnQuest 55043
step
    .goto 942,58.42,70.87
    .gossipoption 50031 >>Talk to |cRXP_FRIENDLY_Talkative Brennadam Citizen 8.|r
    .target Talkative Brennadam Citizen
    .isOnQuest 55043
step
    .goto 942,58.66,70.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus Crestfall|r |cFFfa9602inside the Hut.|r
    .turnin 55043 >>Turn in Fish Tales and Distant Sails
    .accept 54708 >>Accept Home, Home On the Range
    .target Cyrus Crestfall
step
    .goto 942,49.95,50.03
    >>|cRXP_WARN_Head to the location indicated by the arrow.|r
    .complete 54708,1 --1/1 Find the homestead
step
    .goto 942,49.94,50.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sal Atwater|r |cFFfa9602infront of the House.|r
    .skipgossip
    .complete 54708,2 --1/1 Meet the shipwright
    .target Sal Atwater
step
    .goto 942,50.23,49.88
    >>|cRXP_WARN_Head to the location indicated by the arrow|r |cFFfa9602inside the the House.|r
    .complete 54708,3 --1/1 Meet the actual shipwright
    .timer 10, Shipwright RP
step
    .goto 942,50.22,49.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorian Atwater.|r
    .turnin 54708 >>Turn in Home, Home On the Range
    .accept 54721 >>Accept I'm Too Old for This Ship
    .target Dorian Atwater
step
    .goto 942,50.41,49.87,5,0
    .goto 942,50.38,50.47
    .cast 291980 >>Interact with |cRXP_FRIENDLY_Hurricane|r |cFFfa9602outside the House.|r
    .isOnQuest 54721
step
    .goto 942,50.46,50.29
    >>|TInterface/cursor/crosshair/interact.blp:20|tInteract with |cRXP_FRIENDLY_Hurricane.|r
    .complete 54721,1 --1/1 Hurricane saddled
step
    .goto 942,66.13,47.37
    >>|TInterface/cursor/crosshair/interact.blp:20|tInteract with |cRXP_FRIENDLY_Dorian Atwater.|r
    .accept 54723 >>Accept Covering Our Masts
    .accept 54725 >>Accept The Deep Ones
    .target Dorian Atwater
step
    #completewith Ward
    >>Kill |cRXP_ENEMY_Drowned Harbinger|r and |cRXP_ENEMY_Drowned Convert.|r
    .complete 54725,1 --12/12 Drowned forces slain
    .mob Drowned Harbinger
    .mob Drowned Convert
    .mob Grasp of the Deep
step
    .goto 942,65.91,43.50
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Western Fog Ward.|r
    .complete 54723,2 --1/1 Western Fog Ward placed
step
    .goto 942,66.90,44.71
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Southern Fog Ward.|r
    .complete 54723,1 --1/1 Southern Fog Ward placed
step
    #label Ward
    .goto 942,67.99,41.97
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Northern Fog Ward.|r
    .complete 54723,3 --1/1 Northern Fog Ward placed
step
    .goto 942,65.91,43.50,10,0
    .goto 942,66.90,44.71,10,0
    .goto 942,67.99,41.97
    >>Kill |cRXP_ENEMY_Drowned Harbinger|r and |cRXP_ENEMY_Drowned Convert.|r
    .complete 54725,1 --12/12 Drowned forces slain
    .mob Drowned Harbinger
    .mob Drowned Convert
    .mob Grasp of the Deep
step
    .goto 942,66.09,47.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorian Atwater.|r
    .turnin 54723 >>Turn in Covering Our Masts
    .turnin 54725 >>Turn in The Deep Ones
    .accept 54726 >>Accept Frame Work
    .target Dorian Atwater
step
    .goto 895,68.95,20.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorian Atwater|r |cFFfa9602on the bottom floor inside of the house.|r |cRXP_WARN_Be aware that there may be a brief roleplay sequence before you are able to turn in the quest.|r
    .turnin 54726 >>Turn in Frame Work
    .accept 54727 >>Accept Team Carr
    .target Dorian Atwater
step
    .goto 895,68.73,19.03
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Heavy Lumber.|r
    .complete 54727,1,1 --1/1 Follow Dorian to the drop point
step
    .goto 895,68.71,17.36
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Heavy Lumber.|r
    .complete 54727,1,2 --1/1 Follow Dorian to the drop point
step
    .goto 895,67.31,17.54
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Heavy Lumber.|r
    .complete 54727,1,3 --1/1 Follow Dorian to the drop point
step
    .goto 895,67.99,16.1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Heavy Lumber.|r
    .complete 54727,1,4 --1/1 Follow Dorian to the drop point
step
    .goto 895,67.22,12.52
    >>|cRXP_WARN_Follow |cRXP_FRIENDLY_Dorian|r and use|r |cRXP_WARN_|T236188:0|t[Call for Help](1) to instruct him to kill|r |cRXP_ENEMY_the attackers.|r
    .complete 54727,2 --1/1 Follow Dorian to the drop point
    .timer 5,Short Roleplay
    .target Dorian Atwater
step
    .goto 895,67.10,12.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorian Atwater.|r
    .turnin 54727 >>Turn in Team Carry
    .accept 54728 >>Accept This Lumber is Haunted
    .accept 54729 >>Accept The Bleak Hills
    .target Dorian Atwater
step
    .goto 896,33.25,30.57
    >>|cRXP_WARN_Head to the location indicated by the arrow.|r
    .complete 54729,1 --1/1 Find Chelsea Wright
step
    .goto 896,33.17,30.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chelsea Wright.|r
    .turnin 54729 >>Turn in The Bleak Hills
    .accept 54732 >>Accept Drop It!
    .target Chelsea Wright
step
    .goto 896,34.19,30.47,10,0
    .goto 896,34.52,29.77,10,0
    .goto 896,35.9,30.32,10,0
    .goto 896,36.65,29.98,10,0
    .goto 896,36.60,28.88,5 >>|cRXP_WARN_Follow the |cRXP_ENEMY_Wicker Beast|r |cFFfa9602inside the cave.|r
    .timer 3,Short Roleplay
    .mob Wicker Beast
    .target Wicker Beast
    .isOnQuest 54732
step
    .goto 896,36.6,28.88
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Storehouse Key|r |cFFfa9602on the ground.|r
    .complete 54732,1 --1/1 Storehouse Key
step
    .goto 896,36.62,28.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wicker Beast.|r
    .turnin 54732 >>Turn in Drop It!
    .accept 55136 >>Accept Her Dog Days Are Over
    .target Wicker Beast
step
    .goto 896,35.31,28.90
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Gnawed Bone|r |cFFfa9602on the ground.|r
    .complete 55136,3 --1/1 Gnawed Bone
step
    .goto 896,35.99,30.96
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Worn Collar|r |cFFfa9602around a tree branch.|r
    .complete 55136,1 --1/1 Worn Collar
step
    .goto 896,34.64,30.49,5 >> Find |cFFfa9602the house.|r
    .isOnQuest 55136
step
    .goto 896,34.60,30.56
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Worn Collar|r |cFFfa9602inside a house.|r
    .complete 55136,2 --1/1 Squeaky Toy
step
    .goto 896,33.17,30.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chelsea Wright.|r
    .turnin 55136 >>Turn in Her Dog Days Are Over
    .accept 54733 >>Accept Make it Wright
    .target Chelsea Wright
step
    .goto 896,33.12,30.29
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Chest.|r
    .turnin 54733 >>Turn in Make it Wright
step
    .goto 896,61.88,59.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thornspeaker Birchgrove.|r
    .turnin 54728 >>Turn in This Lumber is Haunted
    .accept 54730 >>Accept Gorak Tul's Influence
    .target Thornspeaker Birchgrove
step
    .goto 896,60.86,61.1,10,0
    .goto 896,59.48,63.85,10,0
    .goto 896,61.39,64.81,10,0
    .goto 896,62.19,63.1,10,0
    .goto 896,61.88,59.32
    >>Kill |cRXP_ENEMY_Vengeful Bones|r and |cRXP_ENEMY_Awoken Guardian|r. |cRXP_WARN_In addition, clicking on the stones near them will help you further fill your Drust Vessel.|r
    .complete 54730,1 --1/1 Drust Vessel filled
    .mob Awoken Guardian
    .mob Vengeful Bones
step
    .goto 896,61.88,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thornspeaker Birchgrove.|r
    .turnin 54730 >>Turn in Gorak Tul's Influence
    .accept 54731 >>Accept Balance in All Things
    .target Thornspeaker Birchgrove
step
    .goto 942,59.39,69.36
    .gossipoption 50185 >>Talk to |cRXP_FRIENDLY_Arthur Tradewind.|r
    .timer 4, Short Roleplay
    .target Arthur Tradewind
    .isOnQuest 54731
step
    .goto 942,59.39,69.36
    .vehicle >>Interact with |cRXP_FRIENDLY_Arthur Tradewind.|r
    .timer 94, Arthur Roleplay
    .isOnQuest 54731
step
    .goto 942,59.39,69.36
    .gossipoption 49067 >>Talk to |cRXP_FRIENDLY_Ulfar.|r
    .timer 8, Short Roleplay
    .target Ulfar
    .isOnQuest 54731
step
    .goto 896,44.97,45.83
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Nut.|r
    .complete 54731,2 --1/1 Begin the ritual
step
    .goto 896,44.97,45.83
    >>Kill |cRXP_ENEMY_Drust Manifestations.|r
    .complete 54731,3 --1/1 Balance restored
    .mob Drust Manifestation
step
    .goto 896,45.18,45.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ulfar.|r
    .turnin 54731 >>Turn in Balance in All Things
step
    .goto 896,45.43,45.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bound Sky.|r
    .accept 54734 >>Accept Summons from Dorian
    .target Bound Sky
step
    .goto 942,66.51,44.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorian Atwater.|r
    .turnin 54734 >>Turn in Summons from Dorian
    .target Dorian Atwater
step
    .goto 942,66.5,44.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore.|r
    .accept 54735 >>Accept A Worthy Crew
    .target Lady Jaina Proudmoore
step
    .goto 1161,43.00,56.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tandred Proudmoore.|r
    .skipgossip
    .complete 54735,1 --1/1 Speak to Tandred Proudmoore
    .target Tandred Proudmoore
step
    .goto 1161,75.94,22.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Pike.|r
    .skipgossip
    .complete 54735,2 --1/1 Brother Pike recruited
    .target Brother Pike
step
    .goto 895,56.68,61.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Tarenfold.|r
    .skipgossip
    .complete 54735,3 --1/1 Lieutenant Tarenfold recruited
    .target Lieutenant Tarenfold
step
    .goto 895,35.26,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rosaline Madison.|r
    .skipgossip
    .complete 54735,4 --1/1 Outriggers recruited
    .target Rosaline Madison
step
    .goto 942,67.62,44.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorian Atwater.|r
    .skipgossip
    .complete 54735,5 --1/1 Boatswain recruited
    .target Dorian Atwater
step
    .goto 942,67.62,44.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore.|r
    .turnin 54735 >>Turn in A Worthy Crew
    .accept 54851 >>Accept Blessing of the Tides
    .target Lady Jaina Proudmoore
step
    .goto 942,59.39,69.36
    .gossipoption 50743 >>Talk to |cRXP_FRIENDLY_Lady Jaina Proudmoore.|r
    .target Lady Jaina Proudmoore
    .isOnQuest 54851
step
    .goto 942,71.17,43.99
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Boat.|r
    >>|cFFFCDC00Press "Escape" on your keyboard to skip the cinematic.|r
    .complete 54851,2 --1/1 Vessel blessed
step
    .goto 942,71.13,44.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore.|r
    .turnin 54851 >>Turn in Blessing of the Tides
    .accept 53720 >>Accept Allegiance of Kul Tiras
    .target Lady Jaina Proudmoore
step
    .goto 942,71.18,44.03
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Steering Wheel.|r
    .complete 53720,1 --1/1 Sail to Stormwind Harbor
step
    .goto 84,22.53,18.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin Wrynn.|r
    .turnin 53720 >>Turn in Allegiance of Kul Tiras
    .target Anduin Wrynn
]])