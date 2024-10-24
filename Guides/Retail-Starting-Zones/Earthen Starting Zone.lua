RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Starting Zones
#name 1) Earthen Intro
#displayname Earthen Intro
#next RestedXP Speedrun Guide\a) The Waking Shores Fresh (A) <<Alliance
#next RestedXP Speedrun Guide\a) BfA Intro;RestedXP Speedrun Guide\a) The Waking Shores Fresh (H) << Horde

<<EarthenDwarf

step
    .goto 2322,89.47,48.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dawn|r.
    .accept 79200 >>Accept Who am I?
    .target Dawn
step
    .goto 2322,87.04,49.47
    >>Step on the scanner and |TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Diagnostics Scan|r.
    .complete 79200,1 --1/1 Diagnostics Scan completed
    .target Diagnostics Scanner
step
    .goto 2322,83.70,60.93
    >>Step on the scanner and |TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Cognitive Scan|r.
    .complete 79200,2 --1/1 Cognitive Scan completed
    .target Cognitive Scan
step
    .goto 2322,83.77,37.91
    >>Step on the scanner and |TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Anomaly Scan|r.
    .complete 79200,3 --1/1 Anomaly Scan completed
    .target Anomaly Scan
step
    .goto 2322,83.77,37.91
    >>|cRXP_WARN_Use the|r. [ExtraActionButton] when it appears.
    .complete 79200,4 --1/1 Containment Protocol disrupted
step
    .goto 2322,77.74,47.98,10,0
    .goto 2322,75.05,47.28,10,0
    .goto 2322,73.42,44.47,10,0
    .goto 2322,67.84,48.14,10,0
    .goto 2322,62.64,49.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dawn|r.
    .turnin 79200 >>Turn in Who am I?
    .target Dawn
step
    .goto 2322,62.61,49.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Uzjax|r.
    .accept 79201 >>Accept The Analysis Interface
    .target Foreman Uzjax
step
    .goto 2322,61.40,47.07
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Primary Interface|r.
    .complete 79201,1 --1/1 Primary analysis completed
    .skipgossip 224809,1,1,1
    .target Primary Interface
step
    .goto 2322,61.40,51.92
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Secondary Interface|r.
    .complete 79201,2 --1/1 Secondary analysis completed
    .skipgossip 224797,1,1,1
    .target Secondary Interface
step
    .goto 2322,57.37,49.55
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Tertiary Interface|r.
    .complete 79201,3 --1/1 Tertiary analysis completed
    .skipgossip 224810,1,1,1
    .target Tertiary Interface
step
    .goto 2322,48.29,51.51,10,0
    .goto 2322,47.77,54.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dawn|r.
    .turnin 79201 >>Turn in The Analysis Interface
    .target Dawn
    .accept 79202 >>Accept Rock Beats Rock
step
    #loop
    .goto 2322,46.06,57.69,10,0
    .goto 2322,42.75,59.04,10,0
    .goto 2322,41.89,55.26,10,0
    .goto 2322,40.86,53.62,10,0
    .goto 2322,42.87,51.96,10,0
    .goto 2322,45.57,52.53,10,0
    .goto 2322,45.94,49.31,10,0
    .goto 2322,47.17,48.85,10,0
    .goto 2322,48.34,46.44,10,0
    .goto 2322,47.55,43.92,10,0
    .goto 2322,45.94,41.24,10,0
    .goto 2322,42.74,39.91,10,0
    .goto 2322,41.86,42.16,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Awakened Stormhands|r and |cRXP_FRIENDLY_Awakened Machinist|r and defeat them.
    *|cRXP_WARN_only speak to one at a time|r.
    .complete 79202,1 --6/6 Earthen defeated in combat
    .mob Awakened Stormhand
    .mob Awakened Machinist
    .target Awakened Machinist
    .target Awakened Stormhand
    .skipgossip
step
    .goto 2322,36.05,49.9,10,0
    .goto 2322,30.75,48.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dawn|r.
    .turnin 79202 >>Turn in Rock Beats Rock
    .target Dawn
step
    .goto 2322,30.95,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Speaker Kuldas|r.
    .accept 79203 >>Accept Authorization: Negated
    .timer 6,RP
    .target Speaker Kuldas
step
    .goto 2322,25.91,49.65
    >>Kill |cRXP_ENEMY_Phalanx of Authorization|r.
    .complete 79203,1 --1/1 Phalanx of Authorization slain
    .timer 22,RP
    .mob Phalanx of Authorization
step
    .goto 2322,16.33,48.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Speaker Kuldas|r.
    .turnin 79203 >>Turn in Authorization: Negated
    .target Speaker Kuldas
    .accept 79204 >>Accept Whoever You Want to Be
step
    .goto 2322,8.62,49.68
    #title |cFFFCDC00Follow the Arrow|r.
    .complete 79204,1 --1/1 Meet Dawn in the Awakening Vestibule
step
    .goto 2322,8.63,49.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dawn|r.
    .turnin 79204 >>Turn in Whoever You Want to Be
    .target Dawn
    .accept 81886 >>Accept For the Alliance << Alliance
    .accept 81888 >>Accept For the Horde << Horde
step << Alliance
    #completewith next
    .goto 2322,7.3,46.27
    .zone 84 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r.
step << Alliance
    .goto 84,53.03,15.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Moorgard|r.
    .turnin 81886 >>Turn in For the Alliance
    .target Ambassador Moorgard
    .accept 81887 >>Accept Stranger in a Strange Land
step << Alliance
    .goto 84,56.24,17.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r.
    .complete 81887,1 --1/1 Talk to Chromie
    .skipgossip
    .target Chromie
step << Alliance
    .goto 84,56.19,17.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adhelda|r.
    .turnin 81887 >>Turn in Stranger in a Strange Land
    .target Adhelda
step << Horde
    #completewith next
    .goto 2322,7.16,52.62
    .zone 85 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r.
step << Horde
    .goto 85,39.40,79.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Blackguard|r.
    .turnin 81888 >>Turn in For the Horde
    .target Ambassador Blackguard
    .accept 81889 >>Accept Stranger in a Strange Land
step << Horde
    .goto 85,40.82,80.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r.
    .complete 81889,1 --1/1 Talk to Chromie
    .skipgossip 167032,1
    .target Chromie
step << Horde
    .goto 85,40.77,80.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brunhold|r.
    .turnin 81889 >>Turn in Stranger in a Strange Land
    .target Brunhold
]])
