RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Starting Zones
#subgroup Death Knight Starting Zones
#name 1Retail-Alliance-Death Knight_Plaguelands The Scarlet Enclave
#displayname Death Knight Plaguelands
#next RestedXP Alliance 10-60\1A_Elwynn Forest << Alliance
#next RestedXP Horde 10-60\1 BfA Intro << Horde
#defaultfor DK !Pandaren !KulTiran !DarkIronDwarf !LightforgedDraenei !Mechagnome !VoidElf !HighmountainTauren !ZandalariTroll !Nightborne !Vulpera !MagharOrc

<<DK !Pandaren !KulTiran !DarkIronDwarf !LightforgedDraenei !Mechagnome !VoidElf !HighmountainTauren !ZandalariTroll !Nightborne !Vulpera !MagharOrc

step
    #completewith next
    +Welcome to the |cFFfa9602Death Knight Starting Zone|r Guide of RestedXP.
step
    .goto 124,51.33,35.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Lich King|r
    .accept 12593 >>Accept In Service Of The Lich King
    .target The Lich King
step
    .goto 124,47.59,28.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Razuvious|r|cRXP_WARN_, who is walking back and forth from left to right.|r
    .turnin 12593 >>Turn in In Service Of The Lich King
    .accept 12619 >>Accept The Emblazoned Runeblade
    .target Instructor Razuvious
step
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick a |cRXP_PICK_Battle-Worn Sword|r |cFFfa9602found in the area.|r
    .collect 38607,1
step
    .goto 124,47.88,27.54
    >>|cFFfa9602Go to the Runeforge|r and use the |T135410:0|t[Battle-Worn Sword]
    .complete 12619,1 --1/1 Runebladed Sword
    .use 38607
step
    .goto 124,47.59,28.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Razuvious|r
    .turnin 12619 >>Turn in The Emblazoned Runeblade
    .accept 12842 >>Accept Runeforging: Preparation For Battle
    .target Instructor Razuvious
step
    .goto 124,47.88,27.54
    >>|cFFfa9602Go to the Runeforge|r open your Spellbook and use the [Enchant Razorice] on your weapon.
    .complete 12842,1 --Weapon emblazoned (1)
step
    .goto 124,47.59,28.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Razuvious|r
    .turnin 12842 >>Turn in Runeforging: Preparation For Battle
    .accept 12848 >>Accept The Endless Hunger
    .target Instructor Razuvious
step
    .goto 124,48.59,28.73
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Acherus Soul Prison |r to free an |cRXP_ENEMY_Initiate.|r
    .complete 12848,1 --1/1 Unworthy Initiate dominated
    .mob Unworthy Initiate
step
    .goto 124,47.69,29.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Razuvious|r
    .turnin 12848 >>Turn in The Endless Hunger
    .accept 12636 >>Accept The Eye Of Acherus
    .target Instructor Razuvious
step
    .goto 124,51.35,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Lich King|r
    .turnin 12636 >>Turn in The Eye Of Acherus
    .accept 12641 >>Accept Death Comes From On High
    .target The Lich King
step
    .goto 124,51.04,36.32
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Eye of Acherus Control Mechanism.|r
    >>Use |T136158:0|t[Siphon of Acherus](1) |cFFfa9602near the Red Arrows|r |cRXP_WARN_(not too close or you will be attacked, 45yards range)|r to analyze it.
    >>Use |T136187:0|t[Summon Ghouls](2) to distract the Knights.
    >>Use [Shroud](3) to hide |cRXP_WARN_(can be used while walking)|r
    >>Use |T136190:0|t[Recall Eye of Acherus] (4) when you are finished.
    .complete 12641,1 --1/1 New Avalon Forge Analyzed
    .complete 12641,3 --1/1 Scarlet Hold Analyzed
    .complete 12641,2 --1/1 New Avalon Town Hall Analyzed
    .complete 12641,4 --1/1 Chapel of the Crimson Flame Analyzed
step
    .goto 124,51.34,35.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Lich King|r and press (4) to exit the Eyeball.
    .turnin 12641 >>Turn in Death Comes From On High
    .accept 12657 >>Accept The Might Of The Scourge
    .target The Lich King
step
    .goto 124,50.43,33.2,10,0
    .goto 124,48.88,29.75
    >>Walk on the |cFFfa9602Purple Teleporter|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Darion Mograine|r
    .turnin 12657 >>Turn in The Might Of The Scourge
    .accept 12850 >>Accept Report To Scourge Commander Thalanor
    .target Highlord Darion Mograine
step
    .goto 124,47.47,26.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Thorval|r
    .turnin 12849 >>Turn in The Power Of Blood, Frost And Unholy
    .target Lord Thorval
step
    .goto 124,50.68,34.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scourge Commander Thalanor|r, who is patrolling on the balcony.
    .turnin 12850 >>Turn in Report To Scourge Commander Thalanor
    .accept 12670 >>Accept The Scarlet Harvest
step
    #fresh
    .goto 124,52.08,35.04
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_Scourge Gryphon|r |cFFfa9602on the Balcony.|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Valanar|r
    .turnin 12670 >>Turn in The Scarlet Harvest
    .accept 12678 >>Accept If Chaos Drives, Let Suffering Hold The Reins
    .target Prince Valanar
step
    #veteran
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_Scourge Gryphon|r |cFFfa9602on the Balcony.|r
    >>|cRXP_WARN_You can already mount up, you don't need to wait to unlock the DK mount.|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Valanar|r
    .goto 124,52.08,35.04
    .turnin 12670 >>Turn in The Scarlet Harvest
    .accept 12678 >>Accept If Chaos Drives, Let Suffering Hold The Reins
    .target Prince Valanar
step
    .goto 124,52.67,34.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salanar the Horseman|r, who is |cFFfa9602patrolling on the streets.|r
    .accept 12680 >>Accept Grand Theft Palomino
    .target Salanar the Horseman
step
    .goto 124,54.44,33.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olrun the Battlecaller|r
    .accept 12733 >>Accept Death's Challenge
    .target Olrun the Battlecaller
step
    .goto 124,52.79,34.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Death Knight Initiates|r found in the area |cRXP_WARN_and defeat them in a duel|r
    .complete 12733,1 --5/5 Death Knights defeated in a duel
    .skipgossip
    .mob Death Knight Initiate
step
    .goto 124,52.31,38.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orithos the Sky Darkener|r, who patrols a little.
    .accept 12679 >>Accept Tonight We Dine In Havenshire
    .target Orithos the Sky Darkener
step
    #completewith arrowspart2time
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the Arrows |cFFfa9602on the Ground.|r
    .complete 12679,1 --15/15 Saronite Arrow
step
    #completewith next
    .goto 124,55.25,46.16,10,0
    .goto 124,54.11,52.21
    >>Kill |cRXP_ENEMY_Crusaders|r and |cRXP_ENEMY_Citizens|r
    .complete 12678,1 --10/10 Scarlet Crusader slain
    .complete 12678,2 --10/10 Citizen of Havenshire slain
    .target Scarlet Crusader
    .target Citizen of Havenshire
step
    goto 124,55.25,46.16
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Abandoned Mail|r |cFFfa9602on the Mailbox.|r
    .turnin 12711 >>Turn in Abandoned Mail
step
    #label arrowspart2time
    .goto 124,55.25,46.16,10,0
    .goto 124,54.11,52.21
    >>Kill |cRXP_ENEMY_Crusaders|r and |cRXP_ENEMY_Citizens|r
    .complete 12678,1 --10/10 Scarlet Crusader slain
    .complete 12678,2 --10/10 Citizen of Havenshire slain
    .target Scarlet Crusader
    .target Citizen of Havenshire
step
    #label Area1
    .goto 124,58.75,50.49,60,0
    .goto 124,55.96,55.93,60,0
    .goto 124,53.93,51.15,60,0
    .goto 124,57.76,47.14
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the Arrows |cFFfa9602on the Ground.|r
    .complete 12679,1 --15/15 Saronite Arrow
step
    #requires Area1
    .goto 124,55.4,41.6,30,0
    .goto 124,51.41,41.09,30,0
    .goto 124,52.83,34.04
    >>|TInterface/cursor/crosshair/interact.blp:20|tInteract with a |cRXP_FRIENDLY_Horse|r |cFFfa9602near the Stables|r be careful of |cRXP_ENEMY_Stable Master Kitrik|r
    >>Use |T135788:0|t[Gallop](2) for increased Movement Speed and Deliver the |T132261:0|t[Stolen Horse](1) when you are infront of |cRXP_FRIENDLY_Salanar the Horseman|r, who is patrolling |cFFfa9602in the streets.|r
    .complete 12680,1 --1/1 Horse Successfully Stolen
    .target Salanar the Horseman
step
    .goto 124,53.00,33.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salanar the Horseman|r
    .turnin 12680 >>Turn in Grand Theft Palomino
    .accept 12687 >>Accept Into the Realm of Shadows
    .target Salanar the Horseman
step
    .goto 124,55.4,41.6,30,0
    .goto 124,51.16,37.82
    >>Kill a |cRXP_ENEMY_Dark Rider of Acherus|r |cFFfa9602near the stables|r and |TInterface/cursor/crosshair/interact.blp:20|tInteract with the horse
    >>Use the |T136129:0|t[Horseman's Call] to deliver the Horse |cFFfa9602once you're back in town.|r
    .complete 12687,1
step
    .goto 124,51.84,35.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salanar the Horseman|r
    .turnin 12687 >>Turn in Into the Realm of Shadows
    .target Salanar the Horseman
step
    .goto 124,52.43,37.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orithos the Sky Darkener|r, who is patrolling a little.
    .turnin 12679,1 >>Turn in Tonight We Dine In Havenshire
    .target Orithos the Sky Darkener
step
    .goto 124,54.60,33.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olrun the Battlecaller|r
    .turnin 12733 >>Turn in Death's Challenge
    .target Olrun the Battlecaller
step
    .goto 124,52.28,34.00|cFFfa9602|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Valanar|r
    .turnin 12678 >>Turn in If Chaos Drives, Let Suffering Hold The Reins
    .accept 12697 >>Accept Gothik the Harvester
    .target Prince Valanar
step
    .goto 124,54.09,35.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gothik the Harvester|r
    .turnin 12697 >>Turn in Gothik the Harvester
    .accept 12698 >>Accept The Gift That Keeps On Giving
    .target Gothik the Harvester
step
    #completewith next
    +|cRXP_WARN_To enable keybinding for quest items, follow these steps:|r
    *[1] Press the |cRXP_WARN_Escape key.|r 
    *[2] Select |cRXP_WARN_Options.|r
    *[3] Navigate to |cRXP_WARN_Keybindings.|r
    *[4] Within |cRXP_WARN_Keybindings|r, find |cRXP_WARN_RestedXP Guides.|r
    *[5] Select and bind the |cRXP_WARN_Active Buttons.|r
step
    .goto 124,58.27,30.98,5,0
    --x insert more goto's
    >>Use |T133882:0|t[Gift of the Harvester] on |cRXP_ENEMY_Miner|r until you have [5] |cRXP_FRIENDLY_Scarlet Ghouls|r following you then return to |cRXP_FRIENDLY_Gothik the Harvester|r.
    >>|cRXP_WARN_Miners don't always turn into friendly |cRXP_FRIENDLY_Scarlet Ghouls|r |r
    .complete 12698,1 --5/5 Scarlet Ghoul Returned
    .use 39253
    .mob Scarlet Ghoul
    .mob Scarlet Infantryman 
    .target Gothik the Harvester
step
    .goto 124,54.07,35.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gothik the Harvester|r
    .turnin 12698 >>Turn in The Gift That Keeps On Giving
    .accept 12700 >>Accept An Attack Of Opportunity
    .target Gothik the Harvester
step
    .goto 124,52.28,33.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Valanar|r
    .turnin 12700 >>Turn in An Attack Of Opportunity
    .accept 12701 >>Accept Massacre At Light's Point
    .target Prince Valanar
step
    .goto 124,67.78,39.25
    >>|cRXP_WARN_Travel to the ship, making sure to evade as many foes as you can.|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Cannon|r and use (1) to kill enemies, use (2) if they get too close, use (3) to escape.
    .complete 12701,1 --100/100 Scarlet Defender slain
    .mob Scarlet Defender
step
    .goto 124,52.28,33.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Valanar|r
    .turnin 12701 >>Turn in Massacre At Light's Point
    .accept 12706 >>Accept Victory At Death's Breach!
    .target Prince Valanar 
step
    #completewith next
    .hs >> Scourgestone hearth to Acherus|cRXP_WARN_(don't use a hearthstone toy!)|r
step
    .goto 124,50.43,33.23,10,0
    .goto 124,48.87,29.75
    >>Walk on the |cFFfa9602Purple Teleporter|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Darion Mograine|r
    .turnin 12706 >>Turn in Victory At Death's Breach!
    .accept 12714 >>Accept The Will Of The Lich King
    .target Highlord Darion Mograine
step
    .goto 124,53.46,36.56
    >>|TInterface/cursor/crosshair/interact.blp:20|tInteract with the |cRXP_FRIENDLY_Skeleton Gryphon|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Valanar|r
    .turnin 12714 >>Turn in The Will Of The Lich King
    .accept 12715 >>Accept The Crypt of Remembrance
    .target Skeleton Gryphon
    .target Prince Valanar
step
    .goto 124,55.91,52.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Noth the Plaguebringer|r
    .accept 12716 >>Accept The Plaguebringer's Request
    .target Noth the Plaguebringer
step
    .goto 124,54.06,58.14,10 >>|cFFfa9602Go down into the Crypt.|r
step
    .goto 124,54.30,57.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Keleseth|r
    .turnin 12715 >>Turn in The Crypt of Remembrance
    .accept 12719 >>Accept Nowhere To Run And Nowhere To Hide
    .target Prince Keleseth
step
    .goto 124,54.66,57.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Rivendare|r
    .accept 12722 >>Accept Lambs To The Slaughter
    .target Baron Rivendare
step
    #completewith citizenrequirementtime
    >>Kill |cRXP_ENEMY_Scarlet Crusaders|r, |cRXP_ENEMY_Citizens|r and loot them for |cRXP_LOOT_Crusader Skull|r
    .complete 12722,1 --10/10 Scarlet Crusade Soldier slain
    .complete 12716,3 --10/10 Crusader Skull
    .complete 12722,2 --15/15 Citizen of New Avalon slain
    .mob Scarlet Crusade Soldier
    .mob Citizen of New Avalon
step
    .goto 124,52.61,71.72
    >>Kill |cRXP_ENEMY_Mayor Quimby|r |cFFfa9602inside the city hall|r
    .complete 12719,1 --1/1 Mayor Quimby slain
    .mob Mayor Quimby
step
    .goto 124,52.46,71.01
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Book|r
    .complete 12719,2 --1/1 New Avalon Registry
step
    .goto 124,57.77,61.90
    >>|cFFfa9602Go into the inn and then into the basement.|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Empty Cauldron|r
    .complete 12716,1 --1/1 Empty Cauldron
step
    #label citizenrequirementtime
    .goto 124,62.03,60.24
    >>|cFFfa9602Go into the blacksmith.|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Iron Chain.|r
    .complete 12716,2 --1/1 Iron Chain
step
    .goto 124,57.77,61.90,40,0
    .goto 124,52.61,71.72,80,0
    .goto 124,62.03,60.24
    >>Kill |cRXP_ENEMY_Scarlet Crusaders|r, |cRXP_ENEMY_Citizens|r and loot them for |cRXP_LOOT_Crusader Skull|r
    .complete 12722,1 --10/10 Scarlet Crusade Soldier slain
    .complete 12716,3 --10/10 Crusader Skull
    .complete 12722,2 --15/15 Citizen of New Avalon slain
    .mob Scarlet Crusade Soldier
    .mob Citizen of New Avalon
step
    .goto 124,54.29,57.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Keleseth|r |cFFfa9602inside the Crypt.|r
    .turnin 12719 >>Turn in Nowhere To Run And Nowhere To Hide
    .accept 12720 >>Accept How To Win Friends And Influence Enemies
    .target Prince Keleseth
step
    .goto 124,54.67,57.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Rivendare|r
    .turnin 12722 >>Turn in Lambs To The Slaughter
    .target Baron Rivendare
step
    .goto 124,55.88,52.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Noth the Plaguebringer|r |cFFfa9602outside of the Crypt.|r
    .turnin 12716 >>Turn in The Plaguebringer's Request
    .accept 12717 >>Accept Noth's Special Brew
    .target outside of the Crypt
step
    .goto 124,56.15,52.01
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Plague Cauldron.|r
    .turnin 12717 >>Turn in Noth's Special Brew
step
    #completewith next
    .use 39418 >>Use the |T132595:0|tOrnately Jeweled Box and equip the Weapons
    .collect 39371,2
    .collect 142274,1
step
    .goto 124,55.79,65.73
    >>Autohit |cRXP_ENEMY_Scarlet Enemies|r until they talk. Don't use abilities. |cRXP_WARN_(This can take awhile if you are unlucky)|r
    .complete 12720,1
step
    .goto 124,54.29,57.31
    >>|cRXP_WARN_Don't forget to re-equip your weapons!!|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Keleseth|r |cFFfa9602inside the Crypt.|r
    .turnin 12720 >>Turn in How To Win Friends And Influence Enemies
    .accept 12723 >>Accept Behind Scarlet Lines
    .target Prince Keleseth
step
    .goto 124,56.26,79.84
    >>|cFFfa9602Go into the house and head upstairs.|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbaz Bloodbane|r
    .turnin 12723 >>Turn in Behind Scarlet Lines
    .accept 12724 >>Accept The Path Of The Righteous Crusader
    .target Orbaz Bloodbane
step
    .goto 124,56.27,80.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r
    .accept 12725 >>Accept Brothers In Death
    .target Thassarian
step
    .goto 124,62.95,67.87
    >>|cFFfa9602Go inside the keep and down into the basement|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koltira Deathweaver|r 
    >>|cRXP_WARN_you might have to wait for him to respawn.|r
    .turnin 12725 >>Turn in Brothers In Death
    .accept 12727 >>Accept Bloody Breakout
    .target Koltira Deathweaver
step
    >>Kill |cRXP_ENEMY_the waves of enemies|r and kill |cRXP_ENEMY_Valroth|r and |TInterface/cursor/crosshair/interact.blp:20|tClick his remains after.
    .complete 12727,1 --1/1 Valroth's Head
step
    .goto 124,62.98,68.31
    >>|cFFfa9602Go upstairs within the keep|r and |TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_book.|r
    .complete 12724,1 --1/1 New Avalon Patrol Schedule
step
    .goto 124,56.24,79.84
    >>|cFFfa9602Go Upstairs to the roof and jump off the keep|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbaz Bloodbane|r
    .turnin 12724 >>Turn in The Path Of The Righteous Crusader
    .target Orbaz Bloodbane
step
    .goto 124,56.28,80.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r
    .turnin 12727 >>Turn in Bloody Breakout
    .accept 12738 >>Accept A Cry For Vengeance!
    .target Thassarian
step
    .goto 124,52.97,82.19
    >>|cFFfa9602Go outside the house.|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Knight Commander Plaguefist|r
    .turnin 12738 >>Turn in A Cry For Vengeance!
    .accept 28650 >>Accept A Special Surprise << Goblin
    .accept 28649 >>Accept A Special Surprise << Worgen
    .accept 12739 >>Accept A Special Surprise << Tauren
    .accept 12742 >>Accept A Special Surprise << Human
    .accept 12743 >>Accept A Special Surprise << NightElf
    .accept 12744 >>Accept A Special Surprise << Dwarf
    .accept 12745 >>Accept A Special Surprise << Gnome
    .accept 12746 >>Accept A Special Surprise << Draenei
    .accept 12747 >>Accept A Special Surprise << BloodElf
    .accept 12748 >>Accept A Special Surprise << Orc
    .accept 12749 >>Accept A Special Surprise << Troll
    .accept 12750 >>Accept A Special Surprise << Undead
    .target Knight Commander Plaguefist
step
    .goto 124,54.30,83.31 << BloodElf
    .goto 124,54.14,83.28 << Worgen
    .goto 124,53.54,83.79 << Human
    .goto 124,54.54,83.43 << Draenei
    .goto 124,54.02,83.29 << Dwarf
    .goto 124,53.77,83.28 << Orc
    .goto 124,53.54,83.31 << Undead
    .goto 124,53.79,83.7 << Troll
    .goto 124,53.93,83.8 << Gnome
    .goto 124,54.25,83.91 << NightElf
    .goto 124,54.11,83.75 << Goblin
    .goto 124,54.5,83.85 << Tauren
    >>Go inside the House wait infront of |cRXP_FRIENDLY_Lord Harford|r then kill them << Worgen
    >>Go inside the House wait infront of |cRXP_FRIENDLY_Lady Eonys|r then kill them << BloodElf
    >>Go inside the House wait infront of |cRXP_FRIENDLY_Donovan Pulfrost|r then kill them << Dwarf
    >>Go inside the House wait infront of |cRXP_FRIENDLY_Kug Ironjaw|r then kill them << Orc
    >>Go inside the House wait infront of |cRXP_FRIENDLY_Antoine Brack|r then kill them << Undead
    >>Go inside the House wait infront of |cRXP_FRIENDLY_Ellen Stanbridge|r then kill them << Human
    >>Go inside the House wait infront of |cRXP_FRIENDLY_Iggy Darktusk|r then kill them << Troll
    >>Go inside the House wait infront of |cRXP_FRIENDLY_Goby Blastenheimer |rthen kill them << Gnome
    >>Go inside the House wait infront of |cRXP_FRIENDLY_Gally Lumpstain|r then kill them << Goblin
    >>Go inside the House wait infront of |cRXP_FRIENDLY_Yazmina Oakenthorn|r then kill them << NightElf
    >>Go inside the House wait infront of |cRXP_FRIENDLY_Malar Bravehorn|r then kill them << Tauren
    >>Go inside the House wait infront of |cRXP_FRIENDLY_Valok the Righteous|r then kill them << Draenei
    .complete 28650,1 >>Complete A Special Surprise << Goblin
    .complete 28649,1 >>Complete A Special Surprise << Worgen
    .complete 12739,1 >>Complete A Special Surprise << Tauren
    .complete 12742,1 >>Complete A Special Surprise << Human
    .complete 12743,1 >>Complete A Special Surprise << NightElf
    .complete 12744,1 >>Complete A Special Surprise << Dwarf
    .complete 12745,1 >>Complete A Special Surprise << Gnome
    .complete 12746,1 >>Complete A Special Surprise << Draenei
    .complete 12747,1 >>Complete A Special Surprise << BloodElf
    .complete 12748,1 >>Complete A Special Surprise << Orc
    .complete 12749,1 >>Complete A Special Surprise << Troll
    .complete 12750,1 >>Complete A Special Surprise << Undead
step
    .goto 124,52.94,81.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Knight Commander Plaguefist|r
    .turnin 28650,1 >>Turn in A Special Surprise << Goblin
    .turnin 28649,1 >>Turn in A Special Surprise << Worgen
    .turnin 12739,1 >>Turn in A Special Surprise << Tauren
    .turnin 12742,1 >>Turn in A Special Surprise << Human
    .turnin 12743,1 >>Turn in A Special Surprise << NightElf
    .turnin 12744,1 >>Turn in A Special Surprise << Dwarf
    .turnin 12745,1 >>Turn in A Special Surprise << Gnome
    .turnin 12746,1 >>Turn in A Special Surprise << Draenei
    .turnin 12747,1 >>Turn in A Special Surprise << BloodElf
    .turnin 12748,1 >>Turn in A Special Surprise << Orc
    .turnin 12749,1 >>Turn in A Special Surprise << Troll
    .turnin 12750,1 >>Turn in A Special Surprise << Undead
    .accept 12751 >>Accept A Sort Of Homecoming
    .target Knight Commander Plaguefist
step
    .goto 124,56.26,80.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r
    .turnin 12751 >>Turn in A Sort Of Homecoming
    .target Thassarian
step
    .goto 124,56.25,79.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbaz Bloodbane|r
    .accept 12754 >>Accept Ambush At The Overlook
    .target Orbaz Bloodbane
step
    .goto 124,59.69,76.6
    >>Use 136065|T967530:0|t[Makeshift Cover] to summon the |cRXP_ENEMY_Courier.|r then kill and |cRXP_LOOT_loot him|r
    .complete 12754,1 --1/1 Scarlet Courier's Belongings
    .complete 12754,2 --1/1 Scarlet Courier's Message
    .use 39645
step
    .goto 124,56.27,79.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbaz Bloodbane|r
    .turnin 12754 >>Turn in Ambush At The Overlook
    .accept 12755 >>Accept A Meeting With Fate
    .target Orbaz Bloodbane
step
    .goto 124,65.66,83.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High General Abbendis.|r 
    *|cRXP_WARN_You can mount while disguised.|r
    .turnin 12755 >>Turn in A Meeting With Fate
    .accept 12756 >>Accept The Scarlet Onslaught Emerges
    .target High General Abbendis
step
    .goto 124,56.26,79.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbaz Bloodbane|r
    .turnin 12756 >>Turn in The Scarlet Onslaught Emerges
    .accept 12757 >>Accept Scarlet Armies Approach...
    .target Orbaz Bloodbane
step
    .goto 124,56.14,80.11,5,0
    .goto 124,48.88,29.75
    >>Wait for a short time and then |TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Portal to Acherus|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Darion Mograine|r 
    .turnin 12757 >>Turn in Scarlet Armies Approach...
    .accept 12778 >>Accept The Scarlet Apocalypse
    .target Highlord Darion Mograine
step
    .goto 124,52.08,35.04,10,0
    .goto 124,53.58,36.87
    >>|TInterface/cursor/crosshair/interact.blp:20|tInteract with the |cRXP_FRIENDLY_Skeleton Gryphon|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Lich King|r
    .turnin 12778 >>Turn in The Scarlet Apocalypse
    .accept 12779 >>Accept An End To All Things...
    .target Skeleton Gryphon
    .target The Lich King
step
    .goto 124,54.62,65.81
    >>Use |T134228:0|t[Horn of the Frostbrood] to mount a |cRXP_FRIENDLY_Frostwyrm|r
    >>Use (1) to kill enemies and (2) on an enemy to regenerate mana.
    >>|cRXP_WARN_Once you are done fly back with the Frost Wyrm.|r
    .complete 12779,2 --10/10 Scarlet Ballista destroyed
    .complete 12779,1 --150/150 Scarlet Soldiers slain
    .use 39700
step
    .goto 124,53.55,36.83
    >>Fly to the |cRXP_FRIENDLY_Lich King|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Lich King|r
    .turnin 12779 >>Turn in An End To All Things...
    .accept 12800 >>Accept The Lich King's Command
    .target The Lich King
step
    .goto 124,49.28,28.68,10,0
    .goto 124,34.27,30.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scourge Commander Thalanor|r. |cFFfa9602Go through the cave to pass the mountains.|r
    .turnin 12800 >>Turn in The Lich King's Command
    .accept 12801 >>Accept The Light of Dawn
    .target Scourge Commander Thalanor
step
    .goto 124,39.10,38.94
    >>Talk to |cRXP_FRIENDLY_Highlord Darion Mograine|r |cRXP_WARN_if he's here.|r 
    >>|cRXP_WARN_The quest countdown begins when anyone speaks to him, not just you. If the event has just finished, you might need to wait before starting. If the event is underway, jump in and join the fight.|r
    >>|cRXP_WARN_Once the Event starts just follow the NPC's and wait until it's done.|r
    .complete 12801,1 --1/1 The Light of Dawn Uncovered
step
    .goto 124,39.10,39.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Darion Mograine|r
    .turnin 12801,1 >>Turn in The Light of Dawn
    .accept 13165 >>Accept Taking Back Acherus
    .target Highlord Darion Mograine
step
    .goto 23,83.44,49.45
    >>|cRXP_WARN_Open up your Spellbook and use your Death Gate.|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Darion Mograine|r
    .turnin 13165 >>Turn in Taking Back Acherus
    .accept 13166 >>Accept The Battle For The Ebon Hold
    .target Highlord Darion Mograine
step
    .goto 23,83.15,48.75,10,0
    .goto 23,81.72,46.70
    >>Walk on the |cFFfa9602Purple Teleporter|r then slay the |cRXP_ENEMY_abominations|r |cFFfa9602in the room.|r
    .complete 13166,2 --10/10 Scourge slain
    .complete 13166,1 --1/1 Patchwerk slain
    .target Patchwerk
step
    .goto 23,83.43,49.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Darion Mograine|r
    .turnin 13166 >>Turn in The Battle For The Ebon Hold
    .target Highlord Darion Mograine
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Darion Mograine|r << Alliance
    .accept 13188 >>Accept Where Kings Walk << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Darion Mograine|r << Horde
    .accept 13189 >>Accept Saurfang's Blessing << Horde
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Portal to Stormwind|r << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Anduin Wrynn << Alliance
    .turnin 13188 >>Turn in Where Kings Walk << Alliance
    .goto 23,83.65,51.28,10,0 << Alliance
    .goto 84,85.91,31.57 << Alliance
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Portal to Orgrimmar|r << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to High Overlord Saurfang << Horde
    .turnin 13189 >>Turn in Saurfang's Blessing << Horde
    .goto 85,48.53,70.71 << Horde
    .goto 23,84.56,50.45,10,0 << Horde
step <<Alliance <<DK
    #veteran
    .goto 84,61.48,31.72,5,0
    .goto 84,60.1,32.22
    +The Darkmoon Faire event is now active, |cRXP_WARN_which guarantees you to gain an additional level for free and a temporary 10% experience boost.|r You'll need to purchase |cRXP_WARN_certain items from the auction house to take full advantage of this.|r If necessary,|cRXP_WARN_you can transfer gold from your other characters to make these purchases.|r However, if you find that you can't afford everything, |cRXP_WARN_It's still worthwhile to visit the Darkmoon Faire for the temporary experience buff and to buy only some of the items.|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Auctioneer Lauffer|r
    .collect 71715,1
    .collect 71638,1
    .collect 71637,1
    .collect 71636,1
    .collect 71635,1
    .collect 71952,1
    .collect 71951,1
    .collect 71953,1
    .collect 71716,1
    .target Auctioneer Lauffer
    .target Auctioneer Hesse
    .target Auctioneer Fitzgerald
    .dmf
    .isQuestTurnedIn 31450 --x Old DK
step <<Alliance <<DK
    #fresh
    #completewith DarkMoonFaire
    +The Darkmoon Faire event is now active, |cRXP_WARN_which guarantees you to gain an additional level for free and a temporary 10% experience boost.|r
    .isQuestTurnedIn 31450 --x Old DK
step <<Alliance <<DK
    #completewith next
    .link /run AbandonSkill(186); AbandonSkill(182);>> |cRXP_WARN_Click this text to receive a macro that will unlearn your professions.|r
    .dmf
    .isQuestTurnedIn 31450 --x Old DK
step <<Alliance <<DK
    #label DarkMoonFaire
    .goto 84,80.46,37.71,10,0
    .goto 84,72.51,46.59,30,0
    .goto 84,70.27,46.83,10,0
    .goto 84,62.1,32.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage|r
    .accept 7905 >>Accept The Darkmoon Faire
    .target Darkmoon Faire Mystic Mage
    .dmf
    .isQuestTurnedIn 31450 --x Old DK
step <<Alliance <<DK
    .goto 84,62.25,72.96
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_ENEMY_Darkmoon Faire Mystic Mage|r
    .skipgossip
    .zoneskip 37
    .target Darkmoon Faire Mystic Mage
    .dmf
    .isQuestTurnedIn 31450 --x Old DK
step <<Alliance <<DK
    .goto 84,73.04,47.56,25,0
    .goto 84,67.45,57.19,25,0
    .goto 84,68.59,62.19,25,0
    .goto 84,66.03,64.49,25,0
    .goto 84,64.39,67.14,25,0
    .goto 84,68.29,74.57,25,0
    .goto 84,70.92,72.45
    .fly Goldshire >>Fly to |cFFfa9602Goldshire.|r
    .nodmf
    .isQuestTurnedIn 12801 --x Traditional DK Check
]])
