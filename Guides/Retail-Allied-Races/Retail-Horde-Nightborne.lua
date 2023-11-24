RXPGuides.RegisterGuide([[
#df
#version 1
#group Allied Race Unlocks
#subgroup Nightborne
#name 01) Nightborne Unlock Scenario
#displayname Nightborne Questline

<< Horde

step
    #completewith NightborneStartQuestline
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
    #label NightborneStartQuestline
    .goto 85,37.65,81.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .accept 49973 >>Accept Thalyssra's Estate
    .target Ji Firepaw
step << Mage
    #completewith NightborneThalyssraEstate
    .train 224869,3
    .cast 224869 >>Use Teleport: Dalaran - Broken Ilses
step
    #completewith NightborneThalyssraEstate
    .goto 85,53.38,90.45,10,0
    .goto 85,58.90,89.51
    .zone 630 >>Take the Portal to Azsuna
step
    #label NightborneThalyssraEstate
    .goto 680,65.88,63.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Liadrin|r. Press "ESC" to skip the upcoming cutscene
    .turnin 49973 >>Turn in Thalyssra's Estate
    .accept 49613 >>Accept Silvermoon City
    .target Lady Liadrin
step << Mage
    .isOnQuest 49613
    #completewith NightborneThalyssraEstate
    .train 32272,3
    .cast 32272 >>Use Teleport: Silvermoon
step
    .isOnQuest 49613
    .zoneskip 110
    .itemcount 65274,1
    .cooldown item,65274,>0,1
    .goto 680,65.88,63.71
    .zone 85 >>Use the Cloak of Coordination
step
    .isOnQuest 49613
    #completewith next
    .zoneskip 110
    .zone 627 >>Use the Dalaran Hearthstone if you have one (in your toy box)
step 
    .isOnQuest 49613
    .zoneskip 110
    .goto 627,55.27,23.93
    .zone 85 >>Take the Portal to Orgrimmar
step
    .zoneskip 85,1
    .goto 85,56.02,88.25
    .zone 110 >>Take the Portal to Silvermoon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Liadrin|r. Press "ESC" to skip the upcoming cutscene
    .goto 110,58.11,19.87
    .turnin 49613 >>Turn in Silvermoon City
    .accept 49354 >>Accept Remember the Sunwell
    .target Lady Liadrin
step
    #sticky
    #label NightborneRemembertheSunwell
    >>Complete the "Remember the Sunwell" scenario
    .goto 110,53.97,19.51,0,0
    .complete 49354,1 --1/1 "Remember the Sunwell" scenario complete
step
    .isOnQuest 49354
    #completewith next
    .goto 110,56.43,73.10,10,0
    .goto 110,53.97,19.51
    .zone 973 >>Take the Portal to Sunwell
step
    .isOnQuest 49354
    >>Go to the waypoint location. Wait for the RP
    .scenario 3583,1
    .goto 973,49.27,67.10
step
    .isOnQuest 49354
    >>Kill |cRXP_ENEMY_Void Effusions|r and |cRXP_ENEMY_Creeping Void|r
    .goto 973,46.43,74.16,25,0
    .goto 973,36.95,61.32,25,0
    .goto 973,47.16,47.87,25,0
    .goto 973,55.03,59.13,25,0
    .loop 25,973,46.43,74.16,36.95,61.32,47.16,47.87,55.03,59.13
    .scenario 3584,1
    .mob Void Effusion
    .mob Creeping Void
    .mob Void Fragment
step
    .isOnQuest 49354
    >>Kill |cRXP_ENEMY_Aruun the Darkener|r
    .goto 973,49.51,66.10
    .scenario 3585,1
    .mob Aruun the Darkener
step
    .isOnQuest 49354
    >>Go to the waypoint location. Wait for the RP
    .goto 973,62.80,66.16
    .scenario 3663,1 --1/1 Void rift closed
step
    .isOnQuest 49354
    #completewith NightborneRemembertheSunwell
    >>Use the |cRXP_PICK_Silvermoon Translocator|r
    .goto 973,62.58,66.94
    .scenario 3586,1 --1/1 Leave the Sunwell
step
    #requires NightborneRemembertheSunwell
    .goto 110,58.44,19.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Liadrin|r
    .turnin 49354 >>Turn in Remember the Sunwell
    .accept 49614 >>Accept The Nightborne
    .target Lady Liadrin
step << Mage
    .isOnQuest 49614
    #completewith NightborneTheNightborne
    .zoneskip 85
    .goto 110,58.44,19.13
    .cast 3567>>Use Teleport: Orgrimmar
step
    .isOnQuest 49614
    #completewith next
    .zoneskip 85
    .itemcount 140192,1
    .cooldown item,140192,>0,1
    .goto 680,65.88,63.71
    .zone 627 >>Use the Dalaran Hearthstone if you have one (in your toy box)
step 
    .isOnQuest 49614
    .zoneskip 627,1
    .goto 627,55.27,23.93
    .zone 85 >>Take the Portal to Orgrimmar
step
    #completewith next
    .zoneskip 85
    .goto 110,51.93,18.06,10,0
    .goto 110,48.52,14.91,10,0
    .goto 110,49.80,13.85,8,0
    .goto 110,49.52,14.80
    .zone 18 >>Use the |cRXP_PICK_Orb of Translocation|r
step
    #completewith next
    .goto 18,60.74,58.68
    .zone 85 >>Take the Portal to Orgrimmar on top of the tower. |cRXP_WARN_You may have to talk to Zidormi (speech bubble on the map) to get to the correct phase.|r
step
    #label NightborneTheNightborne
    .goto 85,37.76,81.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .turnin 49614 >>Turn in The Nightborne
    .target Ji Firepaw
step
    .isQuestTurnedIn 49614
    +Congratulations! You've unlocked the Nightborne!
]])
