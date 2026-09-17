RXPGuides.RegisterGuide([[
#classic
#version 1
#name 1-10 Zephras Isle
#displayname 1-10 Skyborne
#group RestedXP Alliance 1-20
#internal

step
    .goto Zephras Isle,42.07,23.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rorian the Dayseeker|r.
    .turnin 92460 >>Turn in Coming of Age
    .target Rorian the Dayseeker
step
    .goto Zephras Isle,42.07,23.49
    .accept 92461 >>Accept Harmony in Balance
step
    .goto Zephras Isle,43.44,24.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elatrell Featherlight|r.
    .accept 92462 >>Accept Infestation Investigation
    .target Elatrell Featherlight
step
    .goto Zephras Isle,44.64,22.11
    >>Kill |cRXP_ENEMY_Juvenile Vuldren|r.
    .complete 92461,1 --8/8 Juvenile Vuldren slain
    .mob Juvenile Vuldren
step
    .goto Zephras Isle,46.87,29.14
    >>Kill |cRXP_ENEMY_Pesky Cirrusfly|r.
    .complete 92462,1 --8/8 Pesky Cirrusfly slain
    .mob Pesky Cirrusfly
step
    .goto Zephras Isle,43.44,24.79
    .turnin 92462 >>Turn in Infestation Investigation
step
    .goto Zephras Isle,43.44,24.79
    .accept 92463 >>Accept The Cirrusfly Queen
step
    .goto Zephras Isle,43.78,24.04
    .accept 94414 >>Accept The Anchors of Zephras
step
    .complete 94414,1 --View the Anchor Pylon
    .skipgossipid 13720,1
step
    .goto Zephras Isle,43.80,24.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halaan Hawk-Eye|r.
    .turnin 94414 >>Turn in The Anchors of Zephras
    .target Halaan Hawk-Eye
step
    .goto Zephras Isle,43.64,24.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Myriaal Mistwake|r.
    .accept 92474 >>Accept Falling With Style
    .target Myriaal Mistwake
step
    .goto Zephras Isle,43.52,24.09
    .complete 92474,1 --Use Walk on Air
step
    .goto Zephras Isle,42.06,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rorian the Dayseeker|r.
    .turnin 92461 >>Turn in Harmony in Balance
    .target Rorian the Dayseeker
step
    .goto Zephras Isle,42.06,23.48
    .turnin 92474 >>Turn in Falling With Style

step
    .goto Zephras Isle,42.06,23.48
    .accept 92464 >>Accept Elemental Unrest
step << Mage
    .goto Zephras Isle,42.06,23.48
    .accept 92481 >>Accept A Student of the Arcane
step >> Mage
    .goto Zephras Isle,41.55,23.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorii Brightwhisper|r.
    .turnin 92481 >>Turn in A Student of the Arcane
    .target Dorii Brightwhisper
step
    .goto Zephras Isle,43.37,23.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalia the Collector|r.
    .accept 93552 >>Accept Harvesting Windstones
    .target Dalia the Collector
step
    .goto Zephras Isle,43.33,24.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falorne Fallwind|r.
    .accept 92597 >>Accept Reading the Ley Lines
    .target Falorne Fallwind
]])