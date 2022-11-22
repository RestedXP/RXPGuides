RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Starting Zones
#subgroup Death Knight Starting Zones
#name 1Retail-Alliance-Death Knight_Plaguelands The Scarlet Enclave
#displayname Death Knight Plaguelands
#next RestedXP Alliance 10-60\1A_Elwynn Forest << Alliance
#next RestedXP Horde 10-60\1 BfA Intro << Horde

<<DK !Pandaren !KulTiran !DarkIronDwarf !LightforgedDraenei !Mechagnome !VoidElf !HighmountainTauren !ZandalariTroll !Nightborne !Vulpera !MagharOrc

step
    .goto 124,51.33,35.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to The Lich King
    .accept 12593 >>Accept In Service Of The Lich King
step
    .goto 124,47.59,28.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Instructor Razuvious patrolling from left to Right
    .turnin 12593 >>Turn in In Service Of The Lich King
    .accept 12619 >>Accept The Emblazoned Runeblade
step
    #completewith next
    >>Click a Battle-Worn Sword in the Area
    .collect 38607,1
step
    >>Go to the Runeforge and use the Battle-Worn Sword
    .use 38607
    .goto 124,47.88,27.54
    .complete 12619,1 --1/1 Runebladed Sword
step
    .goto 124,47.59,28.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Instructor Razuvious
    .turnin 12619 >>Turn in The Emblazoned Runeblade
    .accept 12842 >>Accept Runeforging: Preparation For Battle
step
    >>Go to the Runeforge and open your Spellbook and use the Enchant Razorice on your weapon
    .goto 124,47.88,27.54
    .complete 12842,1 --Weapon emblazoned (1)
step
    .goto 124,47.59,28.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Instructor Razuvious
    .turnin 12842 >>Turn in Runeforging: Preparation For Battle
    .accept 12848 >>Accept The Endless Hunger
step
    >>Click the Acherus Soul Prison to free an Initiate
    .goto 124,48.59,28.73
    .complete 12848,1 --1/1 Unworthy Initiate dominated
step
    .goto 124,47.69,29.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Instructor Razuvious
    .turnin 12848 >>Turn in The Endless Hunger
    .accept 12636 >>Accept The Eye Of Acherus
step
    .goto 124,51.35,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to The Lich King
    .turnin 12636 >>Turn in The Eye Of Acherus
    .accept 12641 >>Accept Death Comes From On High
step
    >>Click the Eye of Acherus Control Mechanism
    >>Use Siphon of Acherus (1) near the Red Arrows(not too close or you will be attacked, 45yards range) to analyze it
    >>Summon Ghouls (2) to distract the Knights
    >>Shroud (3)  to hide(can be used while walking)
    >>Recall Eye of Acherus (4) when you are finished
    .goto 124,51.04,36.32
    .complete 12641,1 --1/1 New Avalon Forge Analyzed
    .complete 12641,3 --1/1 Scarlet Hold Analyzed
    .complete 12641,2 --1/1 New Avalon Town Hall Analyzed
    .complete 12641,4 --1/1 Chapel of the Crimson Flame Analyzed
step
    .goto 124,51.34,35.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to The Lich King. Press (4) to exit the Eyeball.
    .turnin 12641 >>Turn in Death Comes From On High
    .accept 12657 >>Accept The Might Of The Scourge
step
    .goto 124,50.43,33.2,10,0
    .goto 124,48.88,29.75
    >>Walk on the Purple Teleporter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Highlord Darion Mograine
    .turnin 12657 >>Turn in The Might Of The Scourge
    .accept 12850 >>Accept Report To Scourge Commander Thalanor
step
    .goto 124,47.47,26.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Thorval
    .turnin 12849 >>Turn in The Power Of Blood, Frost And Unholy
step
    .goto 124,50.68,34.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scourge Commander Thalanor he patrols on the balcony
    .turnin 12850 >>Turn in Report To Scourge Commander Thalanor
    .accept 12670 >>Accept The Scarlet Harvest
step
    #fresh
    >>Click the Scourge Gryphon on the Balcony
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Prince Valanar
    .goto 124,52.08,35.04
    .turnin 12670 >>Turn in The Scarlet Harvest
    .accept 12678 >>Accept If Chaos Drives, Let Suffering Hold The Reins
step
    #veteran
    >>Click the Scourge Gryphon on the Balcony
    >>You can already mount up, you don't need to wait to unlock the DK mount.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Prince Valanar
    .goto 124,52.08,35.04
    .turnin 12670 >>Turn in The Scarlet Harvest
    .accept 12678 >>Accept If Chaos Drives, Let Suffering Hold The Reins
step
    .goto 124,52.67,34.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Salanar the Horseman, he patrols the street
    .accept 12680 >>Accept Grand Theft Palomino
step
    .goto 124,54.44,33.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Olrun the Battlecaller
    .accept 12733 >>Accept Death's Challenge
step
    >>Talk to the Death Knight Initiates in the area and defeat them in a duel
    .skipgossip
    .goto 124,52.79,34.16
    .complete 12733,1 --5/5 Death Knights defeated in a duel
step
    .goto 124,52.31,38.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Orithos the Sky Darkener. He patrols a little
    .accept 12679 >>Accept Tonight We Dine In Havenshire
step
    #sticky
    #completewith arrowspart2time
    >>Click the Arrows on the Ground
    .complete 12679,1 --15/15 Saronite Arrow
step
    #completewith next
    >>Kill Crusaders and Citizens
    .goto 124,55.25,46.16,10,0
    .goto 124,54.11,52.21
    .complete 12678,1 --10/10 Scarlet Crusader slain
    .complete 12678,2 --10/10 Citizen of Havenshire slain
step
    goto 124,55.25,46.16
    >>Click the Abandoned Mail on the Mailbox
    .turnin 12711 >>Turn in Abandoned Mail
step
    #label arrowspart2time
    >>Kill Crusaders and Citizens
    .goto 124,55.25,46.16,10,0
    .goto 124,54.11,52.21
    .complete 12678,1 --10/10 Scarlet Crusader slain
    .complete 12678,2 --10/10 Citizen of Havenshire slain
step
    #label Area1
    >>Click the Arrows on the Ground
    .goto 124,58.75,50.49,60,0
    .goto 124,55.96,55.93,60,0
    .goto 124,53.93,51.15,60,0
    .goto 124,57.76,47.14
    .complete 12679,1 --15/15 Saronite Arrow
step
    #requires Area1
    >>Click a Horse near the Stables be careful of the Stable Master Kitrik
    >>on the Horse use Gallop (2) for increased Movement Speed and Deliver the Stolen Horse (1) when you are infront of Salanar he is patrolling the street
    .goto 124,55.4,41.6,30,0
    .goto 124,51.41,41.09,30,0
    .goto 124,52.83,34.04
    .complete 12680,1 --1/1 Horse Successfully Stolen
step
    .goto 124,53.00,33.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Salanar the Horseman
    .turnin 12680 >>Turn in Grand Theft Palomino
    .accept 12687 >>Accept Into the Realm of Shadows
step
    >>Kill a Dark Rider of Acherus near the stables and mount the horse
    >>Use the Horseman's Call to deliver the Horse once you're back in thown
    .goto 124,55.4,41.6,30,0
    .goto 124,51.16,37.82
    .complete 12687,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Salanar the Horseman
    .goto 124,51.84,35.58
    .turnin 12687 >>Turn in Into the Realm of Shadows
step
    .goto 124,52.43,37.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Orithos the Sky Darkener. He patrols a little
    .turnin 12679,1 >>Turn in Tonight We Dine In Havenshire
step
    .goto 124,54.60,33.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Olrun the Battlecaller
    .turnin 12733 >>Turn in Death's Challenge
step
    .goto 124,52.28,34.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Prince Valanar
    .turnin 12678 >>Turn in If Chaos Drives, Let Suffering Hold The Reins
    .accept 12697 >>Accept Gothik the Harvester
step
    .goto 124,54.09,35.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gothik the Harvester
    .turnin 12697 >>Turn in Gothik the Harvester
    .accept 12698 >>Accept The Gift That Keeps On Giving
step
    #sticky
    #completewith QuestKeybindingsDK
    +If you want to make the most of RXP; Press Escape -> Options -> Keybindings -> RestedXP Guides -> Select and Bind Active Button 1,2,3 and 4
    *This will allow you to press a keybind to use a Quest Item rather than manually clicking it
step
    #label QuestKeybindingsDK
    >>Go into the Mine and use the item in your bags on the Miners. hope for them to be turned into Ghouls. Kill the ghosts.
    >>Don't get in combat with the miners or the item won't work
    >>Once you have 5 ghouls head back to Gothik in town
    .goto 124,58.27,30.98,5,0
    .use 39253
    .complete 12698,1 --5/5 Scarlet Ghoul Returned
step
    .goto 124,54.07,35.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gothik the Harvester
    .turnin 12698 >>Turn in The Gift That Keeps On Giving
    .accept 12700 >>Accept An Attack Of Opportunity
step
    .goto 124,52.28,33.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Prince Valanar
    .turnin 12700 >>Turn in An Attack Of Opportunity
    .accept 12701 >>Accept Massacre At Light's Point
step
    >>Ride to the Ship avoiding as many enemies as possible
    >>Click a Cannon and use (1) to kill enemies, use (2) if they get too close.
    >>Once you are done press (3)
    .goto 124,67.78,39.25
    .complete 12701,1 --100/100 Scarlet Defender slain
step
    .goto 124,52.28,33.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Prince Valanar. Press (3) to be flown back to town.
    .turnin 12701 >>Turn in Massacre At Light's Point
    .accept 12706 >>Accept Victory At Death's Breach!
step
    #completewith next
    .hs >> Scourgestone hearth to Acherus(don't use a hearthstone toy!)
step
    .goto 124,50.43,33.23,10,0
    .goto 124,48.87,29.75
    >>Walk on the Purple Teleporter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Highlord Darion Mograine
    .turnin 12706 >>Turn in Victory At Death's Breach!
    .accept 12714 >>Accept The Will Of The Lich King
step
    .goto 124,53.46,36.56
    >>Click the Skeleton Gryphon
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Prince Valanar
    .turnin 12714 >>Turn in The Will Of The Lich King
    .accept 12715 >>Accept The Crypt of Remembrance
step
    .goto 124,55.91,52.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Noth the Plaguebringer
    .accept 12716 >>Accept The Plaguebringer's Request
step
    .goto 124,54.06,58.14,10,0
    .goto 124,54.30,57.31
    >>Go down into the Crypt
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Prince Keleseth
    .turnin 12715 >>Turn in The Crypt of Remembrance
    .accept 12719 >>Accept Nowhere To Run And Nowhere To Hide
step
    .goto 124,54.66,57.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Baron Rivendare
    .accept 12722 >>Accept Lambs To The Slaughter
step
    #completewith citizenrequirementtime
    >>Kill and LOOT Scarlet Crusaders and Citizens
    .complete 12722,1 --10/10 Scarlet Crusade Soldier slain
    .complete 12716,3 --10/10 Crusader Skull
    .complete 12722,2 --15/15 Citizen of New Avalon slain
step
    >>Kill Mayor Quimby inside the city hall
    .goto 124,52.61,71.72
    .complete 12719,1 --1/1 Mayor Quimby slain
step
    >>Click the Book
    .goto 124,52.46,71.01
    .complete 12719,2 --1/1 New Avalon Registry
step
    >>Go into the inn and then into the basement
    >>Click the Empty Cauldron
    .goto 124,57.77,61.90
    .complete 12716,1 --1/1 Empty Cauldron
step
    #label citizenrequirementtime
    >>Go into the blacksmith
    >>Click the Iron Chain
    .goto 124,62.03,60.24
    .complete 12716,2 --1/1 Iron Chain
step
    >> Finish killing Citizens and Crusaders. Loot them for their skulls.
    .goto 124,57.77,61.90,40,0
    .goto 124,52.61,71.72,80,0
    .goto 124,62.03,60.24
    .complete 12722,1 --10/10 Scarlet Crusade Soldier slain
    .complete 12716,3 --10/10 Crusader Skull
    .complete 12722,2 --15/15 Citizen of New Avalon slain
step
    .goto 124,54.29,57.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Prince Keleseth inside the Crypt
    .turnin 12719 >>Turn in Nowhere To Run And Nowhere To Hide
    .accept 12720 >>Accept How To Win Friends And Influence Enemies
step
    .goto 124,54.67,57.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Baron Rivendare
    .turnin 12722 >>Turn in Lambs To The Slaughter
step
    .goto 124,55.88,52.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Noth the Plaguebringer outside of the Crypt
    .turnin 12716 >>Turn in The Plaguebringer's Request
    .accept 12717 >>Accept Noth's Special Brew
step
    .goto 124,56.15,52.01
    >>Click the Plague Cauldron
    .turnin 12717 >>Turn in Noth's Special Brew
step
    #completewith next
    .use 39418 >>Use the Ornately Jeweled Box in your Bag and equip the Weapons
    .collect 39371,2
    .collect 142274,1
step
    >>Autohit Scarlet Enemies until they talk. Don't use abilities. (This can take awhile if you are unlucky)
    .goto 124,55.79,65.73
    .complete 12720,1
step
    >>Don't forget to re-equip your weapons!!
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Prince Keleseth in the Crypt
    .goto 124,54.29,57.31
    .turnin 12720 >>Turn in How To Win Friends And Influence Enemies
    .accept 12723 >>Accept Behind Scarlet Lines
step
    >>Go into the house and head upstairs
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Orbaz Bloodbane
    .goto 124,56.26,79.84
    .turnin 12723 >>Turn in Behind Scarlet Lines
    .accept 12724 >>Accept The Path Of The Righteous Crusader
step
    .goto 124,56.27,80.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thassarian
    .accept 12725 >>Accept Brothers In Death
step
    .goto 124,62.95,67.87
    >>Go inside the keep and down into the basement
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Koltira Deathweaver you might have to wait for him to respawn
    .turnin 12725 >>Turn in Brothers In Death
    .accept 12727 >>Accept Bloody Breakout
step
    >>Kill the waves of enemies and kill Valroth. Click his remains after.
    .complete 12727,1 --1/1 Valroth's Head
step
    >>Go upstairs within the keep and click the book
    .goto 124,62.98,68.31
    .complete 12724,1 --1/1 New Avalon Patrol Schedule
step
    .goto 124,56.24,79.84
    >>Go Upstairs to the roof and jump off the keep
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Orbaz Bloodbane
    .turnin 12724 >>Turn in The Path Of The Righteous Crusader
step
    .goto 124,56.28,80.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thassarian
    .turnin 12727 >>Turn in Bloody Breakout
    .accept 12738 >>Accept A Cry For Vengeance!
step
    .goto 124,52.97,82.19
    >>Go outside the house
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Knight Commander Plaguefist
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
step
    >>Go inside the House wait infront of Lord Harford then kill them << Worgen
    >>Go inside the House wait infront of Lady Eonys then kill them << BloodElf
    >>Go inside the House wait infront of Donovan Pulfrost then kill them << Dwarf
    >>Go inside the House wait infront of Kug Ironjaw then kill them << Orc
    >>Go inside the House wait infront of Antoine Brack then kill them << Undead
    >>Go inside the House wait infront of Ellen Stanbridge then kill them << Human
    >>Go inside the House wait infront of Iggy Darktusk then kill them << Troll
    >>Go inside the House wait infront of Goby Blastenheimer then kill them << Gnome
    >>Go inside the House wait infront of Gally Lumpstain then kill them << Goblin
    >>Go inside the House wait infront of Yazmina Oakenthorn then kill them << NightElf
    >>Go inside the House wait infront of Malar Bravehorn then kill them << Tauren
    >>Go inside the House wait infront of Valok the Righteous then kill them << Draenei
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Knight Commander Plaguefist
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
step
    .goto 124,56.26,80.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thassarian
    .turnin 12751 >>Turn in A Sort Of Homecoming
step
    .goto 124,56.25,79.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Orbaz Bloodbane
    .accept 12754 >>Accept Ambush At The Overlook
step
    >>Follow the arrow then use the item to summon the Courier. Kill and loot him
    .use 39645
    .goto 124,59.69,76.6
    .complete 12754,1 --1/1 Scarlet Courier's Belongings
    .complete 12754,2 --1/1 Scarlet Courier's Message
step
    .goto 124,56.27,79.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Orbaz Bloodbane
    .turnin 12754 >>Turn in Ambush At The Overlook
    .accept 12755 >>Accept A Meeting With Fate
step
    .goto 124,65.66,83.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to High General Abbendis. You can mount while disguised.
    .turnin 12755 >>Turn in A Meeting With Fate
    .accept 12756 >>Accept The Scarlet Onslaught Emerges
step
    .goto 124,56.26,79.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Orbaz Bloodbane
    .turnin 12756 >>Turn in The Scarlet Onslaught Emerges
    .accept 12757 >>Accept Scarlet Armies Approach...
step
    .goto 124,56.14,80.11,5,0
    .goto 124,48.88,29.75
    >>Wait for a short time and then click the Portal to Acherus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Highlord Darion Mograine
    .turnin 12757 >>Turn in Scarlet Armies Approach...
    .accept 12778 >>Accept The Scarlet Apocalypse
step
    .goto 124,52.08,35.04,10,0
    .goto 124,53.58,36.87
    >>Click a Skeleton Gryphon
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to The Lich King
    .turnin 12778 >>Turn in The Scarlet Apocalypse
    .accept 12779 >>Accept An End To All Things...
step
    >>Use the item in your bags to jump on a frost wyrm
    >>Use (1) to kill enemies
    >>Use (2) on an enemy to regenrate mana
    >>Once you are done fly back with the Frost Wyrm
    .use 39700
    .goto 124,54.62,65.81
    .complete 12779,2 --10/10 Scarlet Ballista destroyed
    .complete 12779,1 --150/150 Scarlet Soldiers slain
step
    .goto 124,53.55,36.83
    >>Fly to the Lich King
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to The Lich King
    .turnin 12779 >>Turn in An End To All Things...
    .accept 12800 >>Accept The Lich King's Command
step
    .goto 124,49.28,28.68,10,0
    .goto 124,34.27,30.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scourge Commander Thalanor. Go through the cave to pass the mountains.
    .turnin 12800 >>Turn in The Lich King's Command
    .accept 12801 >>Accept The Light of Dawn
step
    >>Talk to Highlord Darion Mograine if he's here. The Countdown for this Quests starts when someone, not just you, talks to him. it's possible that you have to wait to start the event if someone else recently finished it. If the event is currently going, go join the fight.
    >>Once the Event starts just follow the NPC's and wait until it's done
    .goto 124,39.10,38.94
    .complete 12801,1 --1/1 The Light of Dawn Uncovered
step
    .goto 124,39.10,39.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Highlord Darion Mograine
    .turnin 12801,1 >>Turn in The Light of Dawn
    .accept 13165 >>Accept Taking Back Acherus
step
    >>Open up your Spellbook and use your Death Gate
    .goto 23,83.44,49.45
    .turnin 13165 >>Turn in Taking Back Acherus
    .accept 13166 >>Accept The Battle For The Ebon Hold
step
    >>Walk on the Purple Teleporter then slay the abominations in the room
    .goto 23,83.15,48.75,10,0
    .goto 23,81.72,46.70
    .complete 13166,2 --10/10 Scourge slain
    .complete 13166,1 --1/1 Patchwerk slain
step
    .goto 23,83.43,49.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Highlord Darion Mograine
    .turnin 13166 >>Turn in The Battle For The Ebon Hold
step
    .accept 13188 >>Accept Where Kings Walk << Alliance
    .accept 13189 >>Accept Saurfang's Blessing << Horde
step
    >>Click the Portal to Stormwind << Alliance
    >>Click the Portal to Orgrimmar << Horde
    .goto 23,84.56,50.45,10,0 << Orgrimmar
    .goto 23,83.65,51.28,10,0 << Alliance
    .goto 84,85.91,31.57 << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Anduin Wrynn << Alliance
    .turnin 13188 >>Turn in Where Kings Walk << Alliance
    .goto 85,48.53,70.71 << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to High Overlord Saurfang << Horde
    .turnin 13189 >>Turn in Saurfang's Blessing << Horde
step <<Alliance <<DK
    .nodmf
    .isQuestTurnedIn 12801 --x Traditional DK Check
    .goto 84,73.04,47.56,25,0
    .goto 84,67.45,57.19,25,0
    .goto 84,68.59,62.19,25,0
    .goto 84,66.03,64.49,25,0
    .goto 84,64.39,67.14,25,0
    .goto 84,68.29,74.57,25,0
    .goto 84,70.92,72.45
    .fly Goldshire >>Fly to Goldshire
step <<Alliance <<DK
    .dmf
    .isQuestTurnedIn 31450 --x Old DK
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Darkmoon Faire Mystic Mage
    .goto 84,80.46,37.71,10,0
    .goto 84,72.51,46.59,30,0
    .goto 84,70.27,46.83,10,0
    .goto 84,62.1,32.16
    .accept 7905 >>Accept The Darkmoon Faire
step <<Alliance <<DK
    .dmf
    .isQuestTurnedIn 31450 --x Old DK
    +Talk to Darkmoon Faire Mystic Mage and press accept
    .skipgossip
    .zoneskip 37
    .goto 84,62.25,72.96
]])
