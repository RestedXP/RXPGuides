RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Starting Zones
#subgroup Night Elf Starting Zones
#name 2Retail-Alliance-Night Elf_Shadowglen
#displayname Chapter1-Night Elf_Shadowglen
#next 3Retail-Alliance-Night Elf_Teldrassil
#defaultfor NightElf

<<Alliance !DemonHunter !DK 

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ilthalaine
    .goto 460,45.61,74.52
    .accept 28713 >>Accept The Balance of Nature
step
    >>Kill Young Nightsabers in the Area
    .waypoint 460,42.60,75.63,-35,0
    .complete 28713,1 --6/6 Young Nightsaber slain
step
    .goto 460,45.62,74.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ilthalaine
    .turnin 28713 >>Turn in The Balance of Nature
    .accept 28714 >>Accept Fel Moss Corruption
step
    .goto 460,45.94,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Melithar Staghelm
    .accept 28715 >>Accept Demonic Thieves
step
    #completewith next
    >>Kill and loot Grells
    .goto 460,32.32,72.58,0,0
    .complete 28714,1 --6/6 Fel Moss
step
    >>Loot the four stolen bags around the waypoint
    .goto 460,35.96,79.41
    .complete 28715,1,4 --4/5 Melithar's Stolen Bags
step
    #label Area1
    >>Kill and loot Grells
    .goto 460,32.32,72.58
    .complete 28714,1 --6/6 Fel Moss
step
    .goto 460,34.40,80.70
    .complete 28715,1 --5/5 Melithar's Stolen Bags
step
    #requires Area1
    .goto 460,45.93,72.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Melithar Staghelm
    .turnin 28715 >>Turn in Demonic Thieves
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ilthalaine
    .goto 460,46.28,73.48
    .turnin 28714 >>Turn in Fel Moss Corruption
    .accept 28723 >>Accept Priestess of the Moon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Dentaria Silverglade by the ponds
    .goto 460,42.49,50.51
    .turnin 28723 >>Turn in Priestess of the Moon
    .accept 28724 >>Accept Iverron's Antidote
step
    #title Lily 1
    >>Click the Lily
    .goto 460,41.87,49.37
    .complete 28724,1,1 --1/7 Moonpetal Lily
step
    #title Lily 2
    >>Click the Lily
    .goto 460,40.77,47.27
    .complete 28724,1,2 --2/7 Moonpetal Lily
step
    #title Lily 3
    >>Click the Lily
    .goto 460,39.54,52.27
    .complete 28724,1,3 --3/7 Moonpetal Lily
step
    #title Lily 4
    >>Click the Lily
    .goto 460,40.18,52.64
    .complete 28724,1,4 --4/7 Moonpetal Lily
step
    #title Lily 5
    >>Click the Lily
    .goto 460,40.80,53.32
    .complete 28724,1,5 --5/7 Moonpetal Lily
step
    #title Lily 6
    >>Click the Lily
    .goto 460,42.28,52.68
    .complete 28724,1,6 --6/7 Moonpetal Lily
step
    #title Lily 7
    >>Click the Lily
    .goto 460,43.60,51.83
    .complete 28724,1 --7/7 Moonpetal Lily
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Dentaria Silverglade
    .goto 460,42.49,50.47
    .turnin 28724 >>Turn in Iverron's Antidote
    .accept 28725 >>Accept The Woodland Protector
step
    >>Wait at the Waypoint Location until Tarindrella spawns, then talk to her
    *Don't kill any spiders until you have accepted the quest!
    .goto 58,44.87,88.5
    .turnin 28725 >>Turn in The Woodland Protector
    .accept 28726 >>Accept Webwood Corruption
step
    >>Kill Spiders within the Cave
    >>By using Disengage across the Gap at the Waypoint Location you can save some Time <<Hunter
    >>Make sure that if you do it you don't kill Githyiss the Vile because you need him shortly after << Hunter
    .goto 58,39.44,34.72 <<Hunter
    .goto 58,41.27,33.22,10,0 <<!Hunter
    .goto 58,34.81,15.50,15,0 <<!Hunter
    .waypoint 58,46.33,41.34,-30,0
    .complete 28726,1 --12/12 Webwood Spider slain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tarindrella next to you
    .turnin 28726 >>Turn in Webwood Corruption
    .accept 28727 >>Accept Vile Touch
step
    >>Kill Githyiss the Vile
    .goto 58,34.56,23.87,0 << !Hunter
    .goto 58,42.81,19.50,10,0 << !Hunter
    .goto 58,45.02,31.37
    .complete 28727,1 --1/1 Githyiss the Vile slain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tarindrella next to you
    .turnin 28727,1 >>Turn in Vile Touch
    .accept 28728 >>Accept Signs of Things to Come
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Dentaria Silverglade
    .goto 460,42.50,50.50
    .turnin 28728 >>Turn in Signs of Things to Come
    .accept 28729 >>Accept Teldrassil: Crown of Azeroth
step
    #sticky
    #completewith QuestKeybindingsNightelf2
    +If you want to make the most of RXP; Press Escape -> Options -> Keybindings -> RestedXP Guides -> Select and Bind Active Button 1,2,3 and 4
    *This will allow you to press a keybind to use a Quest Item rather than manually clicking it
step << Hunter
    #completewith next
    +Tame a cat en route to the Moonwell
step
    #label QuestKeybindingsNightelf2
    >>Use the Crystal Phial near the Moonwell
    .use 5185
    .goto 460,50.13,34.49
    .complete 28729,1 --1/1 Filled Crystal Phial
step
    .goto 460,42.49,50.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Dentaria Silverglade
    .turnin 28729 >>Turn in Teldrassil: Crown of Azeroth
    .accept 28730 >>Accept Precious Waters
step
    >>Climb the Tower and Talk to Tenaron Stormgrip
    .goto 460,41.85,63.54,15,0
    .goto 460,46.45,53.43,15,0
    .goto 460,44.44,56.47,15,0
    .goto 460,45.20,60.69,15,0
    .goto 460,48.01,58.75,15,0
    .goto 460,48.14,54.36,15,0
    .goto 460,47.16,55.95
    .turnin 28730 >>Turn in Precious Waters
    .accept 28731 >>Accept Teldrassil: Passing Awareness
step
    >>Jump down and Talk to Porthannius
    .goto 460,54.57,84.78
    .accept 2159 >>Accept Dolanaar Delivery
]])
