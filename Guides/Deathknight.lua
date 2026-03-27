local _, class = UnitClass("player")
if class ~= "DEATHKNIGHT" then return end

if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#version 6
#wotlk
#cata
#mop
<< DK
#group RestedXP Death Knight Start
#next RestedXP Alliance 60-70\59-61 Hellfire Peninsula << Alliance wotlk
#next RestedXP Horde 60-70\59-61 Hellfire Peninsula << Horde wotlk
#next RXP Cataclysm 60-80 (H)\59-61 Hellfire Peninsula << Horde cata
#next RXP Cataclysm 60-80 (A)\59-61 Hellfire Peninsula << Alliance cata
#next RXP MoP 60-80 (H)\59-61 Hellfire Peninsula << Horde !wotlk !cata
#next RXP MoP 60-80 (A)\59-61 Hellfire Peninsula << Alliance !wotlk !cata
#defaultfor DK
#name 55-58 The Scarlet Enclave

step
    .goto 124,51.345,35.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Lich King|r 
    .target The Lich King
    .accept 12593 >>Accept In Service Of The Lich King
step
    #loop
    .goto 124,49.453,28.174,15,0
    .goto 124,48.214,28.301,15,0
    .goto 124,47.714,29.756,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Razuvious|r
    >>|cRXP_FRIENDLY_Instructor Razuvious|r |cRXP_WARN_patrols slightly|r
    .turnin 12593 >>Turn in In Service Of The Lich King
    .target Instructor Razuvious
    .accept 12619 >>Accept The Emblazoned Runeblade
step
    #loop
    .goto 124,47.811,27.771,10,0
    .goto 124,46.8,29.1,40,0
    .goto 124,48.1,27.9,40,0
    .goto 124,49.2,26.5,40,0
    .goto 124,48.1,27.9,40,0
	>>Loot the |T135410:0|t[|cRXP_LOOT_Battle-worn Sword|r] from one of the weapon racks. It has multiple spawn locations around the walls
    .collect 38607,1,12619,1 --Battle-Worn Sword (1)
step
    .isOnQuest 12619
    .goto 124,47.9,27.6
    .cast 51769 >> |cRXP_WARN_Channel the|r |T135410:0|t[|cRXP_LOOT_Battle-worn Sword|r] |cRXP_WARN_at the|r |cRXP_PICK_Runeforge|r
    .timer 8,Emblazon Runeblade RP
	.use 38607 
    .complete 12619,1 --Runebladed Sword (1)
step
    #loop
    .goto 124,49.453,28.174,15,0
    .goto 124,48.214,28.301,15,0
    .goto 124,47.714,29.756,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Razuvious|r
    >>|cRXP_FRIENDLY_Instructor Razuvious|r |cRXP_WARN_patrols slightly|r
    .turnin 12619 >>Turn in The Emblazoned Runeblade
    .target Instructor Razuvious
    .accept 12842 >>Accept Runeforging: Preparation For Battle
step
    .goto 124,47.9,27.5
    >>|cRXP_WARN_Go to the |cRXP_PICK_Runeforge|r again|r
    >>|cRXP_WARN_In your Spellbook (Default: P) click on|r |T237523:0|t[Runeforging]
    >>|cRXP_WARN_Engrave your|r |T135335:0|t[|cFF0070FFRuned Soulblade|r] |cRXP_WARN_with|r |T136130:0|t[Rune of Cinderglacier]
    .complete 12842,1 --Weapon emblazoned (1)
step
    #optional
    #completewith next
    .equip 16,38707 >> |cRXP_WARN_Equip the|r |T135335:0|t[|cFF0070FFRuned Soulblade|r]
    .use 38707
step
    #loop
    .goto 124,49.453,28.174,15,0
    .goto 124,48.214,28.301,15,0
    .goto 124,47.714,29.756,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Razuvious|r
    >>|cRXP_FRIENDLY_Instructor Razuvious|r |cRXP_WARN_patrols slightly|r
    .turnin 12842 >>Turn in Runeforging: Preparation For Battle
    .target Instructor Razuvious
    .accept 12848 >>Accept The Endless Hunger
step
    #optional
    .isOnQuest 12848
    .equip 16,38707 >> |cRXP_WARN_Equip the|r |T135335:0|t[|cFF0070FFRuned Soulblade|r]
    .use 38707
step
    #completewith next
    .cast 54669 >> Click on one of the |cRXP_PICK_Acherus Soul Prisons|r along the central inner wall to release an |cRXP_ENEMY_Unworthy Initiate|r
    .timer 17,Unworthy Initiate RP
step
    .goto 124,48.4,29.0
    >>Kill the |cRXP_ENEMY_Unworthy Initiate|r after the short RP
    .complete 12848,1 --Unworthy Initiate dominated (1)
    .mob Unworthy Initiate
step
    #loop
    .goto 124,49.453,28.174,15,0
    .goto 124,48.214,28.301,15,0
    .goto 124,47.714,29.756,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Razuvious|r
    >>|cRXP_FRIENDLY_Instructor Razuvious|r |cRXP_WARN_patrols slightly|r
    .turnin 12848 >>Turn in The Endless Hunger
    .target Instructor Razuvious
    .accept 12636 >>Accept The Eye Of Acherus
step << wotlk
    .isOnQuest 12636
    .goto 124,48.660,32.765
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Karloff|r
    >>|cRXP_BUY_Buy four|r |T133849:0|t[Corpse Dust] |cRXP_WARN_from him|r
    .collect 37201,4 --Corpse Dust (4)
    .target Alchemist Karloff
step
    .goto 124,51.350,35.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Lich King|r
    .target The Lich King
    .turnin 12636 >>Turn in The Eye Of Acherus
    .accept 12641 >>Accept Death Comes From On High
step
    .isOnQuest 12641
    .goto 124,51.062,36.310,-1
    .goto 124,52.130,35.220,-1
    .aura 51852 >> Click an |cRXP_PICK_Eye of Acherus Control Mechanism|r
step
    .goto 124,61.42,60.12,0
	>>|cRXP_WARN_Cast|r |T136158:0|t[Siphon of Acherus] (1) |cRXP_WARN_on the New Avalon Forge|r
    >>|cRXP_WARN_Avoid the|r |cRXP_ENEMY_Scarlet Crusader|r |cRXP_WARN_at all cost. Casting|r |T136119:0|t[Summon Ghouls] (2) |cRXP_WARN_can also provide a small distraction|r
    >>|cFFFF0000There is no arrow for this step. The location of the building is marked on your map. The building also has a large red Hunter's Mark icon on it|r
    .complete 12641,1 --New Avalon Forge Analyzed (1)
step
    .goto 124,61.7,68.2,0
	>>|cRXP_WARN_Cast|r |T136158:0|t[Siphon of Acherus] (1) |cRXP_WARN_on Scarlet Hold|r
    >>|cRXP_WARN_Avoid the|r |cRXP_ENEMY_Scarlet Crusader|r |cRXP_WARN_at all cost. Casting|r |T136119:0|t[Summon Ghouls] (2) |cRXP_WARN_can also provide a small distraction|r
    >>|cFFFF0000There is no arrow for this step. The location of the building is marked on your map. The building also has a large red Hunter's Mark icon on it|r
    .complete 12641,3 --Scarlet Hold Analyzed (1)
step
    .goto 124,53.4,70.7,0
	>>|cRXP_WARN_Cast|r |T136158:0|t[Siphon of Acherus] (1) |cRXP_WARN_on the New Avalon Town Hall|r
    >>|cRXP_WARN_Avoid the|r |cRXP_ENEMY_Scarlet Crusader|r |cRXP_WARN_at all cost. Casting|r |T136119:0|t[Summon Ghouls] (2) |cRXP_WARN_can also provide a small distraction|r
    >>|cFFFF0000There is no arrow for this step. The location of the building is marked on your map. The building also has a large red Hunter's Mark icon on it|r
    .complete 12641,2 --New Avalon Town Hall Analyzed (1)
step
    .goto 124,52.2,80.7,0
	>>|cRXP_WARN_Cast|r |T136158:0|t[Siphon of Acherus] (1) |cRXP_WARN_on the Chapel of the Crimson Flame|r
    >>|cRXP_WARN_Avoid the|r |cRXP_ENEMY_Scarlet Crusader|r |cRXP_WARN_at all cost. Casting|r |T136119:0|t[Summon Ghouls] (2) |cRXP_WARN_can also provide a small distraction|r
    >>|cFFFF0000There is no arrow for this step. The location of the building is marked on your map. The building also has a large red Hunter's Mark icon on it|r
    .complete 12641,4 --Chapel of the Crimson Flame Analyzed (1)
step
    #optional
	#completewith next
 	.aura -51852 >> |cRXP_WARN_Press Escape or|r |T136190:0|t[Recall Eye of Acherus] (5) |cRXP_WARN_to return to The Ebon Hold|r
step
    .goto 124,51.350,35.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Lich King|r
    .target The Lich King
    .turnin 12641 >>Turn in Death Comes From On High
    .accept 12657 >>Accept The Might Of The Scourge
step
    #completewith next
    .goto 124,50.516,33.404,5 >> Step onto the purple teleporter to travel to the lower level
step
    .goto 124,48.872,29.747
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Darion Mograine|r
    .target Highlord Darion Mograine
    .turnin 12657 >>Turn in The Might Of The Scourge
    .accept 12850 >>Accept Report To Scourge Commander Thalanor
step
    .goto 124,51.055,34.473
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scourge Commander Thalanor|r
    >>|cRXP_FRIENDLY_Scourge Commander Thalanor|r |cRXP_WARN_patrols slightly|r
    .target Scourge Commander Thalanor
    .turnin 12850 >>Turn in Report To Scourge Commander Thalanor
    .accept 12670 >>Accept The Scarlet Harvest
step
	#completewith next
    .goto 124,52.092,35.048,-1
    .goto 124,50.961,36.165,-1
    .fly >> Mount a |cRXP_FRIENDLY_Scourge Gryphon|r to fly to Death's Breach
    .target Scourge Gryphon
    .skipgossip
step
    .goto 124,52.275,33.969
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Valanar|r
    .target Prince Valanar
    .turnin 12670 >>Turn in The Scarlet Harvest
    .accept 12678 >>Accept If Chaos Drives, Let Suffering Hold The Reins
step
    #optional
	#completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salanar the Horseman|r
    >>|cRXP_FRIENDLY_Salanar the Horseman|r |cRXP_WARN_patrols Death's Breach|r
    .accept 12680 >>Accept Grand Theft Palomino
    .target Salanar the Horseman
step
    .goto 124,54.5,34.2
    .target Olrun the Battlecaller
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olrun the Battlecaller|r
    .accept 12733 >>Accept Death's Challenge
step
    #loop
    .goto 124,53.20,33.45,30,0
    .goto 124,51.69,35.67,30,0
    .target Salanar the Horseman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salanar the Horseman|r
    >>|cRXP_FRIENDLY_Salanar the Horseman|r |cRXP_WARN_patrols Death's Breach|r
    .accept 12680 >>Accept Grand Theft Palomino
step
    #loop
    .goto 124,53.7,36.3,50,0
    .goto 124,52.1,38.2,30,0
    .target Orithos the Sky Darkener
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orithos the Sky Darkener|r
    >>|cRXP_FRIENDLY_Orithos the Sky Darkener|r |cRXP_WARN_patrols Death's Breach|r 
    .accept 12679 >>Accept Tonight We Dine In Havenshire
step
	#completewith next
	>>Kill the |cRXP_ENEMY_Scarlet Crusader|r and |cRXP_ENEMY_Citizens of Havenshire|r. Loot the |cRXP_PICK_Saronite Arrows|r on the ground
    >>|cRXP_WARN_Don't go out of your way to complete this now|r
	.complete 12678,1 --Scarlet Crusader (10)
    .mob +Scarlet Peasant
    .mob +Scarlet Infantryman
    .mob +Scarlet Medic
    .mob +Scarlet Captain
    .mob +Scarlet Miner
    .complete 12678,2 --Citizen of Havenshire (10)
    .mob +Citizen of Havenshire
    .complete 12679,1 --Saronite Arrow (15)
step
	.isOnQuest 12680
    .goto 124,57.4,42.3
	.vehicle >>Mount a |cRXP_FRIENDLY_Havenshire Mare|r or |cRXP_FRIENDLY_Havenshire Stallion|r. Ride it back to Death's Breach
    >>|cRXP_WARN_Be sure the avoid the elite |cRXP_ENEMY_Stable Master Kitrik|r which patrols the area|r
    .target Havenshire Mare
    .target Havenshire Stallion
step
    #loop
    .goto 124,51.69,35.67,35,0
    .goto 124,53.20,33.45,35,0
	>>|cRXP_WARN_Ride back to Death's Breach|r
    >>|cRXP_WARN_Cast|r |T132226:0|t[Gallop] (2) |cRXP_WARN_to increase movement speed|r
    >>|cRXP_WARN_Cast|r |T132261:0|t[Deliver Stolen Horse] (1) |cRXP_WARN_once at|r |cRXP_FRIENDLY_Salanar the Horseman|r
    >>|cRXP_FRIENDLY_Salanar the Horseman|r |cRXP_WARN_patrols Death's Breach|r
    .complete 12680,1 --Horse Successfully Stolen (1)
    .target Salanar the Horseman
step
    #loop
    .goto 124,51.69,35.67,30,0
    .goto 124,53.20,33.45,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salanar the Horseman|r
    .turnin 12680 >>Turn in Grand Theft Palomino
    .target Salanar the Horseman
    .accept 12687 >>Accept Into the Realm of Shadows
step
    .isOnQuest 12687
    .goto 124,54.6,46.4
    .vehicle >> Kill a |cRXP_ENEMY_Dark Rider of Acherus|r. Mount the |cRXP_FRIENDLY_Acherus Deathcharger|r after
    .mob Dark Rider of Acherus
    .target Acherus Deathcharger
step
    #optional
    .isOnQuest 12687
    .goto 124,51.70,35.76,20 >> Return to Death's Breach
step
    .goto 124,51.70,35.76
	>>|cRXP_WARN_Cast|r |T136129:0|t[Horseman's Call] (1) |cRXP_WARN_once at Death's Breach. Wait out the short RP|r
    .complete 12687,1 --The Horseman's Challenge (1)
step
    #loop
    .goto 124,51.69,35.67,30,0
    .goto 124,53.20,33.45,30,0
    .target Salanar the Horseman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salanar the Horseman|r
    .turnin 12687 >>Turn in Into the Realm of Shadows
step
	#completewith DuelDK
	.cast 48778 >> |cRXP_WARN_You now have your|r |T237534:0|t[Acherus Deathcharger]|cRXP_WARN_. Be sure to added it to your action bars from your Mounts panel (Default: Shift+P)|r
step
    #loop
    .goto 124,55.9,38.8,50,0
    .goto 124,53.9,45.6,50,0
    .goto 124,56.1,51.9,50,0
	>>Kill the |cRXP_ENEMY_Scarlet Crusader|r and |cRXP_ENEMY_Citizens of Havenshire|r. Loot the |cRXP_PICK_Saronite Arrows|r on the ground
	.complete 12678,1 --Scarlet Crusader (10)
    .mob +Scarlet Peasant
    .mob +Scarlet Infantryman
    .mob +Scarlet Medic
    .mob +Scarlet Captain
    .mob +Scarlet Miner
    .complete 12678,2 --Citizen of Havenshire (10)
    .mob +Citizen of Havenshire
    .complete 12679,1 --Saronite Arrow (15)
step
    #label DuelDK
	#loop
    .goto 124,51.9,35.4,30,0
    .goto 124,51.0,33.6,30,0
    .goto 124,53.8,30.9,30,0
    >>Talk to |cRXP_FRIENDLY_Death Knight Initiates|r and defeat them in a duel
	>>|cRXP_WARN_Do not run out of the 30 yard duel range|r
    .complete 12733,1 --Death Knights defeated in a duel (5)
	.skipgossip
    .target Death Knight Initiate
    .mob Death Knight Initiate
step
    #loop
    .goto 124,53.7,36.3,50,0
    .goto 124,52.1,38.2,30,0
    .target Orithos the Sky Darkener
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orithos the Sky Darkener|r
    >>|cRXP_FRIENDLY_Orithos the Sky Darkener|r |cRXP_WARN_patrols Death's Breach|r 
    .turnin 12679 >>Turn in Tonight We Dine In Havenshire
step
    .goto 124,54.5,34.2
    .target Olrun the Battlecaller
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olrun the Battlecaller|r
    .turnin 12733 >>Turn in Death's Challenge
step
    .goto 124,52.275,33.969
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Valanar|r
    .target Prince Valanar
    .turnin 12678 >>Turn in If Chaos Drives, Let Suffering Hold The Reins
    .accept 12697 >>Accept Gothik the Harvester
step
    .goto 124,54.081,35.034
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gothik the Harvester|r
    .target Gothik the Harvester
    .turnin 12697 >>Turn in Gothik the Harvester
    .accept 12698 >>Accept The Gift That Keeps On Giving
step
    .goto 124,58.396,30.900,20,0
    .goto 124,59.904,31.680,20,0
    .goto 124,60.925,29.682,60,0
    .goto 124,54.1,34.9
    >>|cRXP_WARN_Enter the Havenshire Mine|r
    .use 39253 >> |cRXP_WARN_Use the|r |T133882:0|t[Gift of the Harvester] |cRXP_WARN_on |cRXP_ENEMY_Scarlet Miners|r while they're out of combat. Do NOT kill them or attack them|r
    >>|cRXP_WARN_Once you have 5 |cRXP_FRIENDLY_Scarlet Ghouls|r following you, return to|r |cRXP_ENEMY_Gothik the Harvester|r
    >>|cRXP_WARN_Kill any |cRXP_ENEMY_Scarlet Ghosts|r you are in combat with|r
    .complete 12698,1 --Scarlet Ghoul Returned (5)
step
    .goto 124,54.081,35.034
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gothik the Harvester|r
    .target Gothik the Harvester 
    .turnin 12698 >>Turn in The Gift That Keeps On Giving
    .accept 12700 >>Accept An Attack Of Opportunity
step
    .goto 124,52.273,33.967
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Valanar|r
    .turnin 12700 >>Turn in An Attack Of Opportunity
    .accept 12701 >>Accept Massacre At Light's Point
    .target Prince Valanar
step
    .isOnQuest 12701
    #label Follow1
    #completewith ScarletCannon
    .goto 124,61.597,32.417,35 >>|cRXP_WARN_Follow the arrow to the to the Scarlet Ship. Drop down the small hill|r
step
    .isOnQuest 12701
    #requires Follow1
    #completewith ScarletCannon
    .goto 124,65.376,32.933,35 >> |cRXP_WARN_Drop down below again|r    
step
    .isOnQuest 12701
    #label ScarletCannon
    .goto 124,67.022,38.817,15,0
    .goto 124,67.706,39.023
    .vehicle >> |cRXP_WARN_Run up the ramp onto the Scarlet Ship. Enter the|r |cRXP_PICK_Scarlet Cannon|r
    .target Scarlet Cannon
step
	>>|cRXP_WARN_Cast|r |T136186:0|t[Scarlet Cannon] (1) |cRXP_WARN_to kill the|r |cRXP_ENEMY_Scarlet Fleet Defender|r
    >>|cRXP_WARN_Cast|r |T136099:0|t[Electro-magnetic Pulse] (2) |cRXP_WARN_if any |cRXP_ENEMY_Scarlet Fleet Defender|r start to attack the your cannon in close proximity|r
    .complete 12701,1 --Scarlet Defender (100)
    .mob Scarlet Fleet Defender
step
    .isOnQuest 12701
    .cast vehicle,52588,52589 >>|cRXP_WARN_Cast|r |T135766:0|t[Skeletal Gryphon Escape] (5) |cRXP_WARN_to return to Death's Breach|r
    .timer 70,Death's Breach Flight
step
    .goto 124,52.272,33.965
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Valanar|r
    .target Prince Valanar
    .turnin 12701 >>Turn in Massacre At Light's Point
    .accept 12706 >>Accept Victory At Death's Breach!
step
    #completewith next
    .goto 124,53.094,32.473
    .fly >> Mount a |cRXP_FRIENDLY_Scourge Gryphon|r to return to Acherus
    .skipgossip
    .target Scourge Gryphon
step
    .goto 124,48.873,29.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Darion Mograine|r
    .target Highlord Darion Mograine
    .turnin 12706 >>Turn in Victory At Death's Breach!
    .accept 12714 >>Accept The Will Of The Lich King
step
    .goto 124,47.472,26.550
    .target Lord Thorval
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Thorval|r
    .accept 12849 >>Accept The Power of Blood, Frost And Unholy
	.turnin 12849 >>Turn in The Power of Blood, Frost And Unholy
	.trainer >> Train your class spells << wotlk/cata
step
    #completewith next
    .goto 124,52.092,35.048,-1
    .goto 124,50.961,36.165,-1
    .fly >> Mount a |cRXP_FRIENDLY_Scourge Gryphon|r to fly to Death's Breach
    .target Scourge Gryphon
    .skipgossip
step
    .goto 124,53.459,36.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Valanar|r
    .target Prince Valanar
    .turnin 12714 >>Turn in The Will Of The Lich King
    .accept 12715 >>Accept The Crypt of Remembrance
step << wotlk
    .isOnQuest 12715
    .goto 124,52.896,35.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hargus the Geist|r
    >>|cRXP_BUY_Buy 20|r |T133849:0|t[Corpse Dust] |cRXP_WARN_from him|r
    .collect 37201,20 --Corpse Dust (20)
    .target Hargus the Geist
step
    .goto 124,55.270,46.179
	>>Click the |cRXP_PICK_Abandoned Mail|r
    >>|cRXP_WARN_You can also use this |cRXP_PICK_Mailbox|r if you wish to send yourself any items|r
    .turnin 12711 >>Turn in Abandoned Mail
step
    .goto 124,55.900,52.389
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Noth the Plaguebringer|r 
    .target Noth the Plaguebringer
    .accept 12716 >>Accept The Plaguebringer's Request
step
    #completewith LTTS
    .goto 124,54.007,58.135,20 >> Travel down into the Crypt of Remembrance
step
    .goto 124,54.299,57.302
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Keleseth|r
    .target Prince Keleseth
    .turnin 12715 >>Turn in The Crypt of Remembrance
    .accept 12719 >>Accept Nowhere To Run And Nowhere To Hide
step
    #label LTTS
    .goto 124,54.672,57.440
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Rivendare|r 
    .target Baron Rivendare
    .accept 12722 >>Accept Lambs To The Slaughter
step
	#completewith QuimbyRegistry
	>>Kill the |cRXP_ENEMY_Scarlet Crusade|r and |cRXP_ENEMY_Citizens of New Avalon|r. Loot them for their |cRXP_LOOT_Crusader Skulls|r
    >>|cRXP_WARN_Don't go out of your way to complete this now|r
    .complete 12722,1 --Scarlet Crusade Soldier (10)
    .mob +Scarlet Marksman
    .mob +Scarlet Crusader
    .mob +Scarlet Commander 
    .mob +Scarlet Preacher
    .complete 12722,2 --Citizen of New Avalon (15)
    .mob +Citizen of New Avalon
    .complete 12716,3 --Crusader Skull (10)
step
    #completewith next
    .goto 124,52.924,71.237,25 >> Enter the New Avalon Town Hall
step
    #label QuimbyRegistry
	>>Kill |cRXP_ENEMY_Mayor Quimby|r. Loot the |cRXP_PICK_New Avalon Registry|r on the table
    .complete 12719,1 --Mayor Quimby (1)
    .mob +Mayor Quimby
    .goto 124,52.243,71.152
    .complete 12719,2 --New Avalon Registry (1)
    .goto 124,52.462,71.010
step
    #completewith next
    .goto 124,54.007,58.135,20 >> Return to the Crypt of Remembrance
step
    .goto 124,54.301,57.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Keleseth|r
    .target Prince Keleseth
    .turnin 12719 >>Turn in Nowhere To Run And Nowhere To Hide
    .accept 12720 >>Accept How To Win Friends And Influence Enemies
step
    #optional
    .isQuestComplete 12722
    .goto 124,54.672,57.440
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Rivendare|r 
    .target Baron Rivendare
    .turnin 12722 >>Turn in Lambs To The Slaughter
step
	#completewith Dawn
	>>Kill the |cRXP_ENEMY_Scarlet Crusade|r and |cRXP_ENEMY_Citizens of New Avalon|r. Loot them for their |cRXP_LOOT_Crusader Skulls|r
    .complete 12722,1 --Scarlet Crusade Soldier (10)
    .mob +Scarlet Marksman
    .mob +Scarlet Crusader
    .mob +Scarlet Commander 
    .mob +Scarlet Preacher
    .complete 12722,2 --Citizen of New Avalon (15)
    .mob +Citizen of New Avalon
    .complete 12716,3 --Crusader Skull (10)
step
    .goto 124,61.387,60.722,20,0
    .goto 124,62.065,60.247
	>>Loot the |cRXP_PICK_Iron Chain|r on the wall inside of the Blacksmith
    .complete 12716,2 --Iron Chain (1)
step
    #completewith next
    .goto 124,57.676,64.336,15 >> Head into the Inn
step
    .goto 124,57.847,62.617,10,0
    .goto 124,57.521,61.883,10,0
    .goto 124,57.856,61.842
	>>Loot the |cRXP_PICK_Empty Cauldron|r in the basement
    .complete 12716,1 --Empty Cauldron (1)
step
    .isOnQuest 12720
	.use 39418 >> |cRXP_WARN_Open the|r |T132595:0|t[Ornately Jeweled Box] |cRXP_WARN_for 2|r |T135271:0|t[Keleseth's Persuader]
    .collect 39371,2 -- Keleseth's Persuader
step
    .isOnQuest 12720
    .equip 16,39371 >> |cRXP_WARN_Equip|r |T135271:0|t[Keleseth's Persuader] |cRXP_WARN_in your Main Hand|r
    .equip 17,39371 >> |cRXP_WARN_Equip|r |T135271:0|t[Keleseth's Persuader] |cRXP_WARN_in your Off Hand|r
    .use 39371
step
	#label Dawn
    .goto 124,62.4,68.2
	>>|cRXP_WARN_Attack any of the |cRXP_ENEMY_Scarlet Crusade|r until the quest completes. This can take a short while to complete if unlucky|r
    >>|cRXP_WARN_You must have|r |T135271:0|t[Keleseth's Persuader] |cRXP_WARN_equiped to complete the objective|r
    .complete 12720,1 --"Crimson Dawn" Revealed (1)
step
    #optional
    .isOnQuest 12720
    .equip 16,38707 >> |cRXP_WARN_Equip the|r |T135335:0|t[|cFF0070FFRuned Soulblade|r]
    .use 38707
step
    #loop
    .goto 124,53.8,71.6,60,0
    .goto 124,54.6,63.8,60,0
    .goto 124,60.6,63.8,60,0
    .goto 124,57.0,68.6,60,0
	>>Kill the |cRXP_ENEMY_Scarlet Crusade|r and |cRXP_ENEMY_Citizens of New Avalon|r. Loot them for their |cRXP_LOOT_Crusader Skulls|r
    >>|cRXP_ENEMY_Citizens of New Avalon|r |cRXP_WARN_can be found inside the buildings|r
    .complete 12722,1 --Scarlet Crusade Soldier (10)
    .mob +Scarlet Marksman
    .mob +Scarlet Crusader
    .mob +Scarlet Commander 
    .mob +Scarlet Preacher
    .complete 12722,2 --Citizen of New Avalon (15)
    .mob +Citizen of New Avalon
    .complete 12716,3 --Crusader Skull (10)
step
    .goto 124,55.894,52.395
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Noth the Plaguebringer|r
    .target Noth the Plaguebringer
    .turnin 12716 >>Turn in The Plaguebringer's Request
    .accept 12717 >>Accept Noth's Special Brew
step
    .goto 124,56.157,52.008
    >>Click the |cRXP_PICK_Plague Cauldron|r
    .turnin 12717 >>Turn in Noth's Special Brew
step
    #optional
    .goto 124,56.157,52.008
    >>Click the |cRXP_PICK_Plague Cauldron|r again
    .turnin 12718 >>Turn in More Skulls For Brew
    .itemcount 39328,20
step
    #completewith BSL
    .goto 124,54.007,58.135,20 >> Return to the Crypt of Remembrance
step
    .goto 124,54.678,57.437
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Rivendare|r
    .target Baron Rivendare
    .turnin 12722 >>Turn in Lambs To The Slaughter
step
    #label BSL
    .goto 124,54.299,57.301
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Keleseth|r
    .target Prince Keleseth
    .turnin 12720 >>Turn in How To Win Friends And Influence Enemies
    .accept 12723 >>Accept Behind Scarlet Lines
step
    #completewith next
    .goto 124,56.150,79.986,15 >> Travel to the Scarlet Tavern. Talk to |cRXP_FRIENDLY_Orbaz Bloodbane|r and |cRXP_FRIENDLY_Thassarian|r upstairs
step
    .goto 124,56.249,79.847
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbaz Bloodbane|r upstairs
    .target Orbaz Bloodbane
    .turnin 12723 >>Turn in Behind Scarlet Lines
    .accept 12724 >>Accept The Path Of The Righteous Crusader
step
    .goto 124,56.266,80.161
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r upstairs
    .target Thassarian
    .accept 12725 >>Accept Brothers In Death
step
    #completewith next
    .goto 124,61.752,68.157,20,0
    .goto 124,62.876,68.650,10 >> Enter the Scarlet Hold Keep. Go down into the basement
    >>|cRXP_WARN_Do NOT release spirit if you die. A |cRXP_FRIENDLY_Val'kyr Battle-maiden|r will resurrect you|r
step
    .goto 124,62.954,67.856
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koltira Deathweaver|r in the basement
    .target Koltira Deathweaver
    .turnin 12725 >>Turn in Brothers In Death
    .accept 12727 >>Accept Bloody Breakout
step
	#completewith next
    .goto 124,63.1,68.2,10,0
    .goto 124,62.7,68.6,10,0
    .goto 124,62.983,68.309
	>>|cRXP_WARN_Don't defend|r |cRXP_FRIENDLY_Koltira Deathweaver|r
    >>Go to the top floor. Loot the |cRXP_PICK_New Avalon Patrol Schedule|r on the table
    .complete 12724,1 --New Avalon Patrol Schedule (1)
  step
    .goto 124,62.898,68.109
	>>Return to |cRXP_FRIENDLY_Koltira Deathweaver|r in the basement
    >>Kill |cRXP_ENEMY_Valroth|r. Loot |cRXP_PICK_High Inquisitor Valroth's Remains|r on the ground for |cRXP_LOOT_Valroth's Head|r
	>>|cRXP_WARN_You may need to kill adds attacking |cRXP_FRIENDLY_Koltira Deathweaver|r as you wait for |cRXP_ENEMY_Valroth|r to spawn|r
    >>|cRXP_WARN_If the RP has finished, talk to |cRXP_FRIENDLY_Koltira Deathweaver|r again to start it|r
    >>|cRXP_WARN_Stand in the|r |T136178:0|t[Anti-Magic Zone] |cRXP_WARN_to reduce spell damage|r
    .complete 12727,1 --Valroth's Head (1)
    .skipgossip
step
    .goto 124,63.1,68.2,10,0
    .goto 124,62.7,68.6,10,0
    .goto 124,62.983,68.309
    >>Go to the top floor. Loot the |cRXP_PICK_New Avalon Patrol Schedule|r on the table
    .complete 12724,1 --New Avalon Patrol Schedule (1)
step
    #optional
    .goto 124,56.157,52.008
    >>Click the |cRXP_PICK_Plague Cauldron|r
    .turnin 12718 >>Turn in More Skulls For Brew
    .itemcount 39328,20
step
    #completewith ACFV
    .goto 124,56.150,79.986,15 >> Return to the Scarlet Tavern. Talk to |cRXP_FRIENDLY_Orbaz Bloodbane|r and |cRXP_FRIENDLY_Thassarian|r upstairs
step
	#completewith ACFV
	.destroy 39328 >> Delete any leftover |T133730:0|t[Crusader Skulls] that you have
step
    .goto 124,56.254,79.845
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbaz Bloodbane|r upstairs
    .target Orbaz Bloodbane
    .turnin 12724 >>Turn in The Path Of The Righteous Crusader
step
    #label ACFV
    .goto 124,56.266,80.160
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r upstairs
    .target Thassarian
    .turnin 12727 >>Turn in Bloody Breakout
    .accept 12738 >>Accept A Cry For Vengeance!
step
    .goto 124,52.6,80.7,40,0
    .goto 124,53.1,82.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Knight Commander Plaguefist|r
    >>|cRXP_FRIENDLY_Knight Commander Plaguefist|r |cRXP_WARN_patrols the Chapel|r
    .turnin 12738 >>Turn in A Cry For Vengeance!
    .target Knight Commander Plaguefist
    .accept 12748 >>Accept A Special Surprise << Orc
    .accept 12739 >>Accept A Special Surprise << Tauren
    .accept 12742 >>Accept A Special Surprise << Human
    .accept 12743 >>Accept A Special Surprise << NightElf
    .accept 12744 >>Accept A Special Surprise << Dwarf
    .accept 12745 >>Accept A Special Surprise << Gnome
    .accept 12746 >>Accept A Special Surprise << Draenei
    .accept 12747 >>Accept A Special Surprise << BloodElf
    .accept 12749 >>Accept A Special Surprise << Troll
    .accept 12750 >>Accept A Special Surprise << Undead
    .accept 28649 >>Accept A Special Surprise << Worgen
    .accept 28650 >>Accept A Special Surprise << Goblin
step << Orc
    .goto 124,53.771,83.274
	>>Kill |cRXP_ENEMY_Kug Ironjaw|r after the short RP
    .complete 12748,1 --Kug Ironjaw (1)
    .mob Kug Ironjaw
step << Tauren
    .goto 124,54.505,83.856
	>>Kill |cRXP_ENEMY_Malar Bravehorn|r after the short RP
    .complete 12739,1 -- Malar Bravehorn (1)
    .mob Malar Bravehorn
step << Human
    .goto 124,53.536,83.785
	>>Kill |cRXP_ENEMY_Ellen Stanbridge|r after the short RP
    .complete 12742,1 --|Ellen Stanbridge slain: 1/1
    .mob Ellen Stanbridge
step << NightElf
    .goto 124,54.246,83.908
	>>Kill |cRXP_ENEMY_Yazmina Oakenthorn|r after the short RP
    .complete 12743,1 -- Yazmina Oakenthorn (1)
    .mob Yazmina Oakenthorn
step << Dwarf
    .goto 124,54.018,83.285
	>>Kill |cRXP_ENEMY_Donovan Pulfrost|r after the short RP
    .complete 12744,1 --Donovan Pulfrost (1)
    .mob Donovan Pulfrost
step << Gnome
    .goto 124,53.928,83.803
	>>Kill |cRXP_ENEMY_Goby Blastenheimer|r after the short RP
    .complete 12745,1 -- Goby Blastenheimer  (1)
    .mob Goby Blastenheimer
step << Draenei
    .goto 124,54.538,83.423
	>>Kill |cRXP_ENEMY_Valok the Righteous|r after the short RP
    .complete 12746,1 -- Valok the Righteous (1)
    .mob Valok the Righteous
step << BloodElf
    .goto 124,54.285,83.303
	>>Kill |cRXP_ENEMY_Lady Eonys|r after the short RP
    .complete 12747,1 --Lady Eonys (1)
    .mob Lady Eonys
step << Troll
    .goto 124,53.801,83.756
	>>Kill |cRXP_ENEMY_Iggy Darktusk|r after the short RP
    .complete 12749,1 --Iggy Darktusk(1)
    .mob Iggy Darktusk
step << Undead
    .goto 124,53.542,83.304
	>>Kill |cRXP_ENEMY_Antoine Brack|r after the short RP
    .complete 12750,1 -- Antoine Brack (1)
    .mob Antoine Brack
step << Worgen
    .goto 124,54.144,83.282
	>>Kill |cRXP_ENEMY_Lord Harford|r after the short RP
    .complete 28649,1 -- Lord Harford (1)
    .mob Lord Harford
step << Goblin
    .goto 124,54.113,83.753
	>>Kill |cRXP_ENEMY_Gally Lumpstain|r after the short RP
    .complete 28650,1 -- Gally Lumpstain (1)
    .mob Gally Lumpstain
step
    .goto 124,53.1,82.1,40,0
    .goto 124,52.6,80.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Knight Commander Plaguefist|r
    >>|cRXP_FRIENDLY_Knight Commander Plaguefist|r |cRXP_WARN_patrols the Chapel|r
    .turnin 12748 >>Turn in A Special Surprise << Orc
    .turnin 12739 >>Turn in A Special Surprise << Tauren
    .turnin 12742 >>Turn in A Special Surprise << Human
    .turnin 12743 >>Turn in A Special Surprise << Nightelf
    .turnin 12744 >>Turn in A Special Surprise << Dwarf
    .turnin 12745 >>Turn in A Special Surprise << Gnome
    .turnin 12746 >>Turn in A Special Surprise << Draenei
    .turnin 12747 >>Turn in A Special Surprise << Bloodelf
    .turnin 12749 >>Turn in A Special Surprise << Troll
    .turnin 12750 >>Turn in A Special Surprise << Undead
    .turnin 28649 >>Turn in A Special Surprise << Worgen
    .turnin 28650 >>Turn in A Special Surprise << Goblin
    .target Knight Commander Plaguefist
	.accept 12751 >>Accept A Sort Of Homecoming
step
    #completewith AATO
    .goto 124,56.150,79.986,15 >> Return to the Scarlet Tavern. Talk to |cRXP_FRIENDLY_Orbaz Bloodbane|r and |cRXP_FRIENDLY_Thassarian|r upstairs
step
    .goto 124,56.268,80.157
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r
    .target Thassarian
    .turnin 12751 >>Turn in A Sort Of Homecoming
step
    #label AATO
    .goto 124,56.251,79.847
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbaz Bloodbane|r 
    .target Orbaz Bloodbane
    .accept 12754 >>Accept Ambush At The Overlook
step
    #completewith ScarletCourier
    .subzone 4360 >> Travel to the Scarlet Overlook
step
    #completewith ScarletCourier
    .cast 53061 >> |cRXP_WARN_Use the|r |T136065:0|t[Makeshift Cover] |cRXP_WARN_at the Scarlet Overlook|r
    .use 39645
step
    #label ScarletCourier
    .goto 124,59.715,76.335
	.use 39645 >>Kill the |cRXP_ENEMY_Scarlet Courier|r. Loot him for the |cRXP_LOOT_Scarlet Courier's Belongings|r and |cRXP_LOOT_Scarlet Courier's Message|r
    .complete 12754,1 --Scarlet Courier's Belongings (1)
    .complete 12754,2 --Scarlet Courier's Message (1)
    .mob Scarlet Courier
step
    #completewith next
    .goto 124,56.150,79.986,15 >> Return to the Scarlet Tavern. Talk to |cRXP_FRIENDLY_Orbaz Bloodbane|r upstairs
step
    .goto 124,56.253,79.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbaz Bloodbane|r upstairs
    .target Orbaz Bloodbane
    .turnin 12754 >>Turn in Ambush At The Overlook
    .accept 12755 >>Accept A Meeting With Fate
step
    .goto 124,65.663,83.812
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High General Abbendis|r
    .target High General Abbendis
    .turnin 12755 >>Turn in A Meeting With Fate
    .accept 12756 >>Accept The Scarlet Onslaught Emerges
step
    #completewith next
    .goto 124,56.150,79.986,15 >> Return to the Scarlet Tavern. Talk to |cRXP_FRIENDLY_Orbaz Bloodbane|r upstairs
step
    .goto 124,56.251,79.846
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbaz Bloodbane|r upstairs
    .target Orbaz Bloodbane
    .turnin 12756 >>Turn in The Scarlet Onslaught Emerges
    .accept 12757 >>Accept Scarlet Armies Approach...
step
    #completewith next
    .goto 124,56.180,80.036
    .subzone 4281 >> |cRXP_WARN_Go through the |cRXP_PICK_Portal to Acherus|r behind|r |cRXP_FRIENDLY_Orbaz Bloodbane|r
step
    .goto 124,48.872,29.749
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Darion Mograine|r
    .target Highlord Darion Mograine
    .turnin 12757 >>Turn in Scarlet Armies Approach...
    .accept 12778 >>Accept The Scarlet Apocalypse
step << wotlk/cata
    .goto 124,46.697,31.934
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amal'thazad|r
    .target Amal'thazad
    .trainer >> Train your class spells
step
    #completewith next
    .goto 124,52.092,35.048,-1
    .goto 124,50.961,36.165,-1
    .fly >> Mount a |cRXP_FRIENDLY_Scourge Gryphon|r to fly to Death's Breach
    .target Scourge Gryphon
    .skipgossip
step
    .goto 124,53.575,36.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Lich King|r
    .target The Lich King
    .turnin 12778 >>Turn in The Scarlet Apocalypse
    .accept 12779 >>Accept An End To All Things...
step
	#completewith next
	.use 39700
	.vehicle >> |cRXP_WARN_Use the|r |T134228:0|t[Horn of the Frostbrood] |cRXP_WARN_to mount the|r |cRXP_FRIENDLY_Frostbrood Vanquisher|r
step
    #loop
    .goto 124,56.0,62.2,100,0
    .goto 124,55.4,64.8,100,0
    .goto 124,54.8,66.8,100,0
    .goto 124,54.6,69.9,100,0
    .goto 124,54.4,75.6,100,0
    .goto 124,57.0,74.8,100,0
    .goto 124,57.3,71.8,100,0
    .goto 124,60.0,72.2,100,0
    .goto 124,62.6,75.1,100,0
    .goto 124,59.5,66.1,100,0
    .goto 124,59.5,60.2,100,0
    >>|cRXP_WARN_Cast|r |T135851:0|t[Frozen Deathbolt] (1) |cRXP_WARN_to kill |cRXP_ENEMY_Scarlet Soldiers|r and destroy|r |cRXP_ENEMY_Scarlet Ballistas|r
    >>|cRXP_WARN_Cast|r |T136217:0|t[Devour Humanoid] (3) |cRXP_WARN_on a |cRXP_ENEMY_Scarlet Crusader|r to restore health and mana|r
    .complete 12779,2 --Scarlet Ballista destroyed (10)
    .mob +Scarlet Ballista
    .complete 12779,1 --Scarlet Soldiers (150)
step
    #completewith TLKC
    .goto 124,53.575,36.865,30 >> Fly back to |cRXP_FRIENDLY_The Lich King|r
step
    #completewith TLKC
    .exitvehicle >> |cRXP_WARN_Exit the|r |cRXP_FRIENDLY_Frostbrood Vanquisher|r
step
    #label TLKC
    .goto 124,53.575,36.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Lich King|r
    .turnin 12779 >>Turn in An End To All Things...
    .target The Lich King
    .accept 12800 >>Accept The Lich King's Command
step
    #completewith next
    .goto 124,49.3,28.7,45,0
    .goto 124,47.1,24.1,45,0
    .goto 124,39.430,21.142,70,0
    .goto 124,35.161,26.725,80 >> Travel through The Noxious Pass to Browman Mill
step
    .goto 124,34.1,30.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scourge Commander Thalanor|r
    .turnin 12800 >>Turn in The Lich King's Command
    .target Scourge Commander Thalanor
    .accept 12801 >>Accept The Light of Dawn
step
	#completewith next
    .goto 124,34.441,31.107
	.gossipoption 93584 >> |cRXP_WARN_Talk to |cRXP_FRIENDLY_Highlord Darion Mograine|r to begin the RP|r
    >>|cRXP_WARN_If he is not standing next to |cRXP_FRIENDLY_Scourge Commander Thalanor|r it means the battle is ongoing or in preparation. The information for this should be at the top of your screen. Move to Light's Hope Chapel and wait out the RP|r
    .skipgossip
    .subzoneskip 2268
    .target Highlord Darion Mograine
step
    .goto 124,39.0,38.5
	>>|cRXP_WARN_Wait out the RP at Light's Hope Chapel. You can sit back and stay out of combat during the battle|r
    .complete 12801,1 --The Light of Dawn Uncovered (1)
step
    .goto 124,39.119,39.069
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Darion Mograine|r
    .turnin 12801 >>Turn in The Light of Dawn
    .target Highlord Darion Mograine
    .accept 13165 >>Accept Taking Back Acherus
step
    #optional
    .equip 16,38633 >> |cRXP_WARN_Equip the|r |T132480:0|t[|cFF0070FFGreataxe of the Ebon Blade|r]
    .use 38633
    .itemcount 38633,1
step
    #optional
    .equip 16,38632 >> |cRXP_WARN_Equip the|r |T135335:0|t[|cFF0070FFGreatsword of the Ebon Blade|r]
    .use 38632
    .itemcount 38632,1
step
	#completewith next
	.cast 50977 >> |cRXP_WARN_Cast|r |T135766:0|t[Death Gate]
    .usespell 50977
	.subzoneskip 4281
step
	#completewith next
    .subzone 4281 >> |cRXP_WARN_Go through the|r |T135766:0|t[Death Gate]
step
    .goto 23/0,-5650.600,2375.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Darion Mograine|r
    .target Highlord Darion Mograine
    .turnin 13165 >>Turn in Taking Back Acherus
    .accept 13166 >>Accept The Battle For The Ebon Hold
    .trainer >> Train your class spells << wotlk/cata
step
    #completewith Pwerk
    .goto 23,83.179,48.888,5 >> Step onto the purple teleporter to travel to the upper level
step
    .isOnQuest 13166
    #sticky
    #label Cinderglacier
    #loop
    .waypoint 23,80.873,47.435,20,0
    .waypoint 23,81.227,44.550,20,0
    .waypoint 23,83.156,45.121,20,0
    .cast 53341 >>|cRXP_WARN_Engrave your new weapon with|r |T136130:0|t[Rune of Cinderglacier] |cRXP_WARN_at the|r |cRXP_PICK_Runeforge|r
step
	#completewith Pwerk
	>>Kill the |cRXP_ENEMY_Scourge|r
    .complete 13166,2 --Scourge (10)
    .mob +Val'kyr Battle-maiden
    .mob +Terrifying Abomination
    .mob +Scourge Necromancer
step
    #label Pwerk
    .goto 23,81.954,46.315
	>>Kill |cRXP_ENEMY_Patchwerk|r
    .complete 13166,1 --Patchwerk (1)
    .mob Patchwerk
step
    #loop
    .goto 23,80.873,47.435,45,0
    .goto 23,81.227,44.550,45,0
    .goto 23,83.156,45.121,45,0
	>>Kill the |cRXP_ENEMY_Scourge|r
    .complete 13166,2 --Scourge (10)
    .mob +Val'kyr Battle-maiden
    .mob +Terrifying Abomination
    .mob +Scourge Necromancer
step
    #requires Cinderglacier
	#completewith next
    .goto 23,83.179,48.888,5 >> Step onto the purple teleporter to travel to the lower level
step
    #requires Cinderglacier
    .goto 23/0,-5650.700,2375.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Darion Mograine|r
    .turnin 13166 >>Turn in The Battle For The Ebon Hold
    .target Highlord Darion Mograine
    .accept 13188 >>Accept Where Kings Walk << Alliance
    .accept 13189 >>Accept Warchief's Blessing << Horde
step << Horde
    .isOnQuest 13189
    .goto 23/0,-5696.000,2348.200
	.zone Durotar >>Take the portal to Orgrimmar
step << Horde
    .goto Orgrimmar,31.74,37.82 << wotlk/cata
    .goto Orgrimmar,48.112,70.480 << mop
    .target Thrall << wotlk/cata
    .target Garrosh Hellscream << mop
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 13189 >>Turn in Warchief's Blessing
step << Horde
    .goto Orgrimmar,38.1,85.8 << wotlk
    .goto Orgrimmar,35.478,69.111 << cata/mop
	.zone Blasted Lands >> Take the Portal to Blasted Lands
    .zoneskip Orgrimmar,1
step << Alliance
    .isOnQuest 13188
    .goto 23/0,-5659.900,2324.400
	.zone Elwynn Forest >>Take the portal to Stormwind
step << Alliance
    .goto Stormwind City,79.989,38.468 << wotlk
    .goto 84/0,232.200,-8363.000 << cata/mop
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Varian Wrynn|r
    .target King Varian Wrynn
    .turnin 13188 >>Turn in Where Kings Walk
step << Alliance
    .goto Stormwind City,48.99,87.36
	.zone Blasted Lands >> Take the Portal to Blasted Lands in the Mage Tower
    .zoneskip Stormwind City,1
]])