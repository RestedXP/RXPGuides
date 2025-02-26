RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP The War Within
#subgroup 11.1 Underground Campaign (80)
#name a) Chapter 1 - Trust Issues
#displayname |cRXP_WARN_Chapter 1|r - Trust Issues
#next b) Chapter 2 - Undermine Awaits
#subweight 4.6

-----------------------------------------------------
--- START CHAPTER 1
-----------------------------------------------------


step
    .goto 2339,42.22,26.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renzik "The Shiv"|r.
    .accept 83137 >>Accept When Opportunity Explodes
    .target Renzik "The Shiv"
step
    .isQuestTurnedIn 78546
    .goto 2248,37.60,72.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oathsworn Earthen|r.
    .turnin 84220 >>Accept & Turn in Passage to the Ringing Deeps
    .target Oathsworn Earthen
step
    .isQuestTurnedIn 84220
    #label WhenOpportunityExplodes
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r.
    .turnin 83137 >>Turn in When Opportunity Explodes
    .accept 83139 >>Accept Mixed Messages
    .target Monte Gazlowe
step
    .isQuestTurnedIn 84220
    #completewith WhenOpportunityExplodes
    .goto 2248,37.40,72.88
    .zone 2214 >>Click on the |cRXP_PICK_Elevator Lever|r.
step
    .isOnQuest 83137
    .isQuestAvailable 84220
    .goto 2339,63.61,52.69
    #title Portal to Azj-Kahet
    .zone 2255 >>Go through the Portal to Azj-Kahet
step
    #title |cFFFCDC00Fly to The Ringing Deeps|r
    .isOnQuest 83137
    .isQuestAvailable 84220
    .goto 2255,59.23,42.38,40,0
    .goto 2255,65.48,21.53,70,0
    .goto 2214,49.32,67.56,40,0
    *|cRXP_WARN_Fly through the slipstream|r.
    .zone 2214 >>Follow the arrow to The Ringing Deeps
step
    #requires WhenOpportunityExplodes
    .goto 2214,63,78.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r.
    .turnin 83137 >>Turn in When Opportunity Explodes
    .accept 83139 >>Accept Mixed Messages
    .target Monte Gazlowe
step
    .goto 2214,63.05,78.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tollbooth Entrepreneur|r.
    .complete 83139,1 --1/1 Speak to Tollbooth Entrepreneur
    .target Tollbooth Entrepreneur
    .skipgossipid 124980
step
    #title |cFFFCDC00Follow the arrow|r
    .goto 2214,65.8,75.3
    .complete 83139,2 --Locate Mining Camp
step
    #loop
    .goto 2214,65.8,75.3,10,0
    .goto 2214,65.97,75.25,10,0
    .goto 2214,65.98,75.6,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trella|r, |cRXP_FRIENDLY_Ishqikle|r, and |cRXP_FRIENDLY_Aberee|r.
    .complete 83139,3 --3/3 Investigate mining operation
    .skipgossipid 123393
    .skipgossipid 123394
    .skipgossipid 123395
    .skipgossipid 123396
    .skipgossipid 123397
    .skipgossipid 123398
    .target Trella
    .target Ishqikle
    .target Aberee
step
    .goto 2214,65.92,75.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83139 >>Turn in Mixed Messages
    .accept 83140 >>Accept Hostile Work Environment
    .target Monte Gazlowe
step
    .goto 2214,65.87,75.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orweyna|r
    .accept 83141 >>Accept Miner Investigations
    .target Orweyna
step
    #completewith WorkerTimecard
    >>Kill |cRXP_ENEMY_Darkfuse Managers|r, |cRXP_ENEMY_Darkfuse Muscles|r, and |cRXP_ENEMY_Compliance Enforcer|r. Loot them for the |T133468:0|t[|cRXP_LOOT_Bounty from Gallywix|r].
    .complete 83140,2 --5/5 Darkfuse Manager slain
    .mob +Darkfuse Manager
    .complete 83140,1 --5/5 Darkfuse Muscle slain
    .mob +Darkfuse Muscle
    .complete 83140,3 --2/2 Compliance Enforcer slain
    .mob +Compliance Enforcer
    .collect 224772,1,83142,0
    .accept 83142 >>Accept Order of Magnitude
step
    .goto 2214,70.83,76.79
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Suspicious Canister|r.
    .complete 83141,1 --1/1 Suspicious Canister
step
    .goto 2214,72.13,73.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zirdo|r.
    .complete 83141,2 --1/1 Ask about shipments
    .skipgossipid 124999
step
    #label WorkerTimecard
    .goto 2214,72.15,78.62
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Worker Timecard|r.
    .complete 83141,3 --1/1 Worker Timecard inspected
step
    #loop
    .goto 2214,74.04,76.81,40,0
    .goto 2214,72.62,75.75,40,0
    .goto 2214,72.21,74.39,40,0
    .goto 2214,71.83,72.66,40,0
    .goto 2214,69.75,75.99,40,0
    .goto 2214,72.04,77.36,40,0
    >>Kill |cRXP_ENEMY_Darkfuse Managers|r, |cRXP_ENEMY_Darkfuse Muscles|r, and |cRXP_ENEMY_Compliance Enforcer|r. Loot them for the |T133468:0|t[|cRXP_LOOT_Bounty from Gallywix|r].
    .complete 83140,2 --5/5 Darkfuse Manager slain
    .mob +Darkfuse Manager
    .complete 83140,1 --5/5 Darkfuse Muscle slain
    .mob +Darkfuse Muscle
    .complete 83140,3 --2/2 Compliance Enforcer slain
    .mob +Compliance Enforcer
    .collect 224772,1,83142,0
    .accept 83142 >>Accept Order of Magnitude
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orweyna|r and |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83141 >>Turn in Miner Investigations
    .goto 2214,72.56,79.33
    .target +Orweyna
    .turnin 83140 >>Turn in Hostile Work Environment
    .turnin 83142 >>Turn in Order of Magnitude
    .goto 2214,72.53,79.24
    .target +Monte Gazlowe
step
    .goto 2214,72.54,79.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zirdo|r.
    .accept 83143 >>Accept Good Honest Work
    .target Zirdo
step
    #hidewindow
    #completewith next
    .gossipoption 123518 >>Talk to |cRXP_FRIENDLY_Zirdo|r.
    .timer 17,Roleplay
step
    .goto 2214,72.54,79.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zirdo|r.
    .complete 83143,1 --1/1 Begin the tour
    .target Zirdo
    .skipgossipid 123518
step
    #title Follow the arrow
    .goto 2214,72.27,80.17
    >>|cRXP_WARN_Wait at the waypoint for the roleplay|r
    .complete 83143,2 --1/1 Follow Zirdo's tour
step
    .goto 2214,72.25,80.17
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Extractor Drill X-78|r.
    .complete 83143,3 --1/1 Extractor Drill X-78 tested
    .timer 27,Roleplay
    .mob Extractor Drill X-78
step
    .goto 2214,72.22,80.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zirdo|r |cRXP_WARN_after the roleplay|r.
    .complete 83143,4 --1/1 Continue Zirdo's tour
    .target Zirdo
    .skipgossipid 125018
step
    .goto 2214,71.87,80.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orweyna|r
    .turnin 83143 >>Turn in Good Honest Work
    .accept 83144 >>Accept Bloodletting
    .target Orweyna
step
    #completewith PipelineValves
    >>Kill |cRXP_ENEMY_Giant Gorewalker|r and |cRXP_ENEMY_Forming Pusglob|r
    .complete 83144,2 --2/2 Giant Gorewalker slain
    .mob +Giant Gorewalker
    .complete 83144,1 --6/6 Forming Pusglob slain
    .mob +Forming Pusglob
step
    #title Pipeline Valve (1/4)
    .goto 2214,70.15,81.76
    >>Use the |T132106:0|t[|cRXP_WARN_ExtraActionButton]|r and aim it at the valve.
    .complete 83144,3,1 --1/4 Target attack on Pipeline Valve
step
    #title Pipeline Valve (2/4)
    .goto 2214,69.9,82.33
    >>Use the |T132106:0|t[|cRXP_WARN_ExtraActionButton]|r and aim it at the valve.
    .complete 83144,3,2 --2/4 Target attack on Pipeline Valve
step
    #title Pipeline Valve (3/4)
    .goto 2214,69.18,82.85
    >>Use the |T132106:0|t[|cRXP_WARN_ExtraActionButton]|r and aim it at the valve.
    .complete 83144,3,3 --3/4 Target attack on Pipeline Valve
step
    #label PipelineValves
    #title Pipeline Valve (4/4)
    .goto 2214,69.53,84.25
    >>Use the |T132106:0|t[|cRXP_WARN_ExtraActionButton]|r and aim it at the valve.
    .complete 83144,3 --4/4 Target attack on Pipeline Valve
    .timer 15,Roleplay
step
    #loop
    .goto 2214,70.93,82.88,30,0
    .goto 2214,70.31,81.12,35,0
    .goto 2214,68.07,83.52,35,0
    .goto 2214,69.95,85.88,35,0
    >>Kill |cRXP_ENEMY_Giant Gorewalker|r and |cRXP_ENEMY_Forming Pusglob|r
    .complete 83144,2 --2/2 Giant Gorewalker slain
    .mob +Giant Gorewalker
    .complete 83144,1 --6/6 Forming Pusglob slain
    .mob +Forming Pusglob
step
    .goto 2214,69.55,84.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orweyna|r
    .turnin 83144 >>Turn in Bloodletting
    .target Orweyna
step
    .goto 2214,69.55,84.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamsy|r
    .accept 84683 >>Accept Into the Gutter
    .target Pamsy
step
    .goto 2214,71.47,83.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamsy|r
    .turnin 84683 >>Turn in Into the Gutter
    .accept 85409 >>Accept Snitches Get Stitches
    .target Pamsy
step
    .goto 2214,71.42,83.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .accept 83145 >>Accept Paranoia Prevention
    .target Monte Gazlowe
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greedy Turncoat|r. 
    >>Afterwards kill the hostile |cRXP_ENEMY_Greedy Turncoat|r
    .complete 85409,1 --6/6 Greedy Turncoat slain
    .mob Greedy Turncoat
    .skipgossipid 132096
step
    .goto 2214,71.88,84.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeble|r
    .complete 83145,1 --1/1 Speak with Keeble
    .target Keeble
    .skipgossipid 124904
step
    #loop
    .goto 2214,72.01,82.72,15,0
    .goto 2214,71.03,83.67,15,0
    .goto 2214,70.54,84.97,20,0
    .goto 2214,71.32,84.04,20,0
    .goto 2214,72.02,84.25,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greedy Turncoat|r. 
    >>Afterwards kill the hostile |cRXP_ENEMY_Greedy Turncoat|r
    .complete 85409,1 --6/6 Greedy Turncoat slain
    .mob Greedy Turncoat
    .skipgossipid 132096
step
    #completewith next
    #label SpeakBinni
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Conspiracy Theory" Binni|r
    .complete 83145,2 --1/1 Speak with "Conspiracy Theory" Binni
    .timer 15,Roleplay
    .target "Conspiracy Theory" Binni
    .skipgossipid 124901
    .skipgossipid 124900
step
    #completewith SpeakBinni
    #title |cFFFCDC00Enter Cave|r
    .goto 2214,72.24,82.42,10 >>Enter the cave
step
    #requires SpeakBinni
    .goto 2214,72.34,82.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Conspiracy Theory" Binni|r
    .complete 83145,2 --1/1 Speak with "Conspiracy Theory" Binni
    .timer 14,Roleplay
    .target "Conspiracy Theory" Binni
    .skipgossipid 124900
    .skipgossipid 124901
step
    .goto 2214,72.21,82.48
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Extractor Drill X-71|r |cRXP_WARN_after the roleplay|r.
    .complete 83145,3 --1/1 Stop the drill
    .timer 4,Roleplay
    .mob Extractor Drill X-71
step
    .goto 2214,72.3,82.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamsy|r.
    .turnin 83145 >>Turn in Paranoia Prevention
    .turnin 85409 >>Turn in Snitches Get Stitches
    .accept 83146 >>Accept Pamsy's Prized Pump
    .target Pamsy
step
    #completewith next
    #title |cFFFCDC00Leave Cave|r
    .goto 2214,71.98,82.96,15 >>Leave the cave
step
    .goto 2214,70.58,88.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamsy|r.
    .turnin 83146 >>Turn in Pamsy's Prized Pump
    .accept 85444 >>Accept Found Family
step
    .goto 2214,70.58,88.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orweyna|r.
    .accept 83147 >>Accept Bloody Business
    .target Orweyna
step
    #completewith FoundFamily
    >>Kill |cRXP_ENEMY_Engorged Bloodticks|r, |cRXP_ENEMY_Enveloping Bloodeater|r, |cRXP_ENEMY_Guttergorger|r, and |cRXP_ENEMY_Bloated Abcesses|r
    .complete 83147,1 --Kill Blood Monstrosities (100%)
    .mob Bloated Abcess
    .mob Guttergorger
    .mob Enveloping Bloodeater
step
    .goto 2214,68.7,90.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keets|r.
    .complete 85444,2 --1/1 Keets saved
    .target Keets
    .skipgossipid 124963
step
    .goto 2214,70.25,92.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razi|r.
    .complete 85444,1 --1/1 Razi saved
    .target Razi
    .skipgossipid 124964
step
    #label FoundFamily
    #loop
    .goto 2214,71.46,94.75,15,0
    .goto 2214,71.55,95.38,15,0
    .goto 2214,71,95.04,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glizza|r.
    .complete 85444,3 --1/1 Glizza saved
    .target Glizza
    .skipgossipid 124962
step
    #loop
    .goto 2214,72.85,94.8,40,0
    .goto 2214,73.63,93.52,40,0
    .goto 2214,72.98,91.92,40,0
    .goto 2214,71.59,91.8,40,0
    .goto 2214,70.2,91.66,40,0
    .goto 2214,69.11,89.47,40,0
    .goto 2214,69.61,87.1,40,0
    .goto 2214,70.85,87.13,40,0
    .goto 2214,68.13,91.25,40,0
    .goto 2214,68.88,94.81,40,0
    .goto 2214,69.87,98.01,40,0
    .goto 2214,71.88,96.5,40,0
    >>Kill |cRXP_ENEMY_Engorged Bloodticks|r, |cRXP_ENEMY_Enveloping Bloodeater|r, |cRXP_ENEMY_Guttergorger|r, and |cRXP_ENEMY_Bloated Abcesses|r
    .complete 83147,1 --Kill Blood Monstrosities (100%)
    .mob Bloated Abcess
    .mob Guttergorger
    .mob Enveloping Bloodeater
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orweyna|r and |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83147 >>Turn in Bloody Business
    .goto 2214,70.58,88.69
    .target +Orweyna
    .turnin 85444 >>Turn in Found Family
    .accept 83148 >>Accept X-Treme Chill
    .timer 5,Roleplay
    .goto 2214,70.53,88.75
    .target +Monte Gazlowe
step
    .goto 2214,70.5,88.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renzik "The Shiv"|r.
    .accept 83149 >>Accept Avenge Them
    .target Renzik "The Shiv"
step
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Chillburst Canister|r.
    >>Kill |cRXP_ENEMY_Chillgut Slimes|r. Loot them for the |T237030:0|t[|cRXP_LOOT_Chillburst Canister|r].
    .complete 83148,1 --12/12 Chillburst Canister
    .mob Chillgut Slime
step
    #loop
    .goto 2214,72.53,97.05,6,0
    .goto 2214,72.36,97.41,6,0
    >>Kill |cRXP_ENEMY_Gozzic Cogcrane|r. Loot him for the |T237245:0|t[|cRXP_LOOT_Correspondence from Zirdo|r].
    .complete 83149,1 --1/1 Gozzic Cogcrane slain
    .complete 83149,2 --1/1 Correspondence from Zirdo
    .mob Gozzic's Bloody Shredder
    .mob Gozzic Cogcrane
step
    #loop
    .goto 2214,73.02,97.31,40,0
    .goto 2214,73.72,97,40,0
    .goto 2214,73.31,95.61,40,0
    .goto 2214,73.53,94.25,40,0
    .goto 2214,72.59,93.02,40,0
    .goto 2214,72.35,96.05,40,0
    .goto 2214,71.59,97.48,40,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Chillburst Canister|r.
    >>Kill |cRXP_ENEMY_Chillgut Slimes|r. Loot them for the |T237030:0|t[|cRXP_LOOT_Chillburst Canister|r].
    .complete 83148,1 --12/12 Chillburst Canister
    .mob Chillgut Slime
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renzik "The Shiv"|r and |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83149 >>Turn in Avenge Them
    .goto 2214,70.5,88.77
    .target +Renzik "The Shiv"
    .turnin 83148 >>Turn in X-Treme Chill
    .accept 83150 >>Accept Expanding the Plan
    .goto 2214,70.53,88.75
    .target +Monte Gazlowe
step
    .goto 2214,70.33,89.56
    >>|Tinterface/cursor/crosshair/driver.blp:20|tClick on |cRXP_PICK_Pamsy's Rocketboard|r
    .complete 83150,1 --1/1 Ride Pamsy's Rocketboard
    .target Pamsy's Rocketboard
step
    #loop
    .goto 2214,71.27,90.7,40,0
    .goto 2214,71.76,88.95,40,0
    .goto 2214,70.92,87.97,40,0
    .goto 2214,70.49,86.21,40,0
    .goto 2214,70.01,84.5,40,0
    .goto 2214,70.09,82.97,40,0
    .goto 2214,70.98,82.18,40,0
    .goto 2214,71.05,79.74,40,0
    .goto 2214,71.11,77.01,40,0
    .goto 2214,70.13,77.2,40,0
    .goto 2214,70.4,80.63,40,0
    .goto 2214,69.49,81.94,40,0
    .goto 2214,68.66,83.45,40,0
    .goto 2214,69.56,85.64,40,0
    .goto 2214,70.21,87.21,40,0
    >>Use |T429385:0|t[Chillburst Toss] (1) and aim it at the green arrows
    .complete 83150,2 --12/12 Freeze the pipes
step
    .goto 2214,74.28,82.87
    .complete 83150,3 --Return to Gazlowe
step
    .goto 2214,70.35,89.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r.
    .turnin 83150 >>Turn in Expanding the Plan
    .target Monte Gazlowe
step
    .goto 2214,70.29,89.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renzik "The Shiv"|r.
    .accept 85410 >>Accept Undermine's Long Shadow
    .target Renzik "The Shiv"
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keets|r, |cRXP_FRIENDLY_Glizza|r, and |cRXP_FRIENDLY_Razi|r.
    .complete 85410,2 --1/1 Speak to Keets
    .target +Keets
    .goto 2214,70.35,89.51,-1
    .complete 85410,3 --1/1 Speak to Glizza
    .target +Glizza
    .goto 2214,70.38,89.09,-1
    .complete 85410,1 --1/1 Speak to Razi
    .target +Razi
    .goto 2214,70.19,89.51,-1
    .skipgossipid 124928
    .skipgossipid 124929
    .skipgossipid 124930
step
    .goto 2214,70.29,89.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renzik "The Shiv"|r.
    .turnin 85410 >>Turn in Undermine's Long Shadow
    .accept 83151 >>Accept Down Undermine
    .target Renzik "The Shiv"
step
    .goto 2214,70.36,89.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r.
    .complete 83151,1 --1/1 Speak to Gazlowe
    .target Monte Gazlowe
    .skipgossipid 123805
-- step
--     .goto 2214,70.33,89.59
--     >>|Tinterface/cursor/crosshair/driver.blp:20|tClick on |cRXP_PICK_Pamsy's Rocketboard|r
--     .complete 83151,2 --1/1 Ride Pamsy's Rocketboard (Optional)
--     .timer 20,RP
--     .target Pamsy's Rocketboard
step
    .goto 2214,72.96,73.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stelliya|r.
    .complete 83151,3 --1/1 Rocket Drill used
    .target Stelliya
    .skipgossipid 123817
step
    .goto 2346,24.11,51.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r.
    .turnin 83151 >>Turn in Down Undermine
    .target Monte Gazlowe

-----------------------------------------------------
--- END CHAPTER 1
-----------------------------------------------------
]])

RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP The War Within
#subgroup 11.1 Underground Campaign (80)
#name b) Chapter 2 - Undermine Awaits
#displayname |cRXP_WARN_Chapter 2|r - Undermine Awaits
#next c) Chapter 3 - Uncovering the Truth
#subweight 4.6

-----------------------------------------------------
--- START CHAPTER 2
-----------------------------------------------------
step
    .goto 2346,24.15,51.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimla Fizzlecrank|r
    .accept 83096 >>Accept Welcome to Undermine
    .target Grimla Fizzlecrank
step
    #completewith next
    .goto 2346,24.25,51.56
    .vehicle >>|Tinterface/cursor/crosshair/driver.blp:20|tClick on the |cRXP_PICK_Gramps|r
    .timer 28,RP
step
    .goto 2346,39.65,53.29
    >>|cRXP_WARN_Wait for the roleplay.|r
    .complete 83096,1 --1/1 Ride the hot rod
    .target Gramps
step
    .goto 2346,42.90,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaydee Racketring|r
    .complete 83096,5 --1/1 Speak to Kaydee Racketring
    .target Kaydee Racketring
    .skipgossipid 131682
step
    .goto 2346,43.51,51.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Paks Topskimmer|r
    .complete 83096,2 --1/1 Speak to Paks Topskimmer
    .target Paks Topskimmer
    .skipgossipid 131273
step
    .goto 2346,43.84,50.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smaks Topskimmer|r
    .complete 83096,4 --1/1 Speak to Smaks Topskimmer
    .target Smaks Topskimmer
    .skipgossipid 131276
step
    .goto 2346,42.68,51.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gas Grimeshank|r
    .complete 83096,3 --1/1 Speak to Gas Grimeshank
    .timer 24,Roleplay
    .target Gas Grimeshank
    .skipgossipid 131277
step
    .goto 2346,39.97,53.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimla Fizzlecrank|r |cRXP_WARN_after the roleplay|r
    .turnin 83096 >>Turn in Welcome to Undermine
    .accept 83109 >>Accept The Grimla Express
    .target Grimla Fizzlecrank
step
    #completewith next
    .goto 2346,39.80,53.04
    .vehicle >>|Tinterface/cursor/crosshair/driver.blp:20|tClick on the |cRXP_PICK_Gramps|r
    .timer 37,RP
step
    .goto 2346,45.21,42.12
    >>|cRXP_WARN_Wait for the roleplay.|r
    .complete 83109,1 --1/1 Ride the hot rod
    .target Gramps
step
    .goto 2346,45.21,42.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimla Fizzlecrank|r |cRXP_WARN_after the roleplay|r
    .turnin 83109 >>Turn in The Grimla Express
    .target Grimla Fizzlecrank
    .accept 85941 >>Accept Attitude Adjustment
step
    .goto 2346,45.55,41.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .accept 86297 >>Accept Morale Reflects Leadership
    .target Monte Gazlowe
step
    #completewith DelbyOverbiteQuestioned
    >>Kill |cRXP_ENEMY_Darkfuse forces|r in the area.
    .complete 85941,1 --12/12 Darkfuse slain
    .mob Darkfuse Harasser
    .mob Darkfuse Oppressor
    .mob Darkfuse Enforcer
step
    .goto 2346,48.88,41.44,10,0
    .goto 2346,49.09,42.71,6,0
    .goto 2346,49.29,42.22,6,0
    .goto 2346,48.94,42.19
    #title |cFFFCDC00Follow the arrow upstairs|r
    .complete 86297,1 --Search upstairs for information
step
    #label DelbyOverbiteQuestioned
    .goto 2346,48.94,42.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delby Overbite|r
    .complete 86297,2 --1/1 Delby Overbite questioned
    .target Delby Overbite
    .skipgossipid 125518
    .skipgossipid 125517
step
    #completewith next
    #label DarkfuseSlainA
    >>Kill the |cRXP_ENEMY_Darkfuse forces|r in the area
    .complete 85941,1 --12/12 Darkfuse slain
    .mob Darkfuse Harasser
    .mob Darkfuse Oppressor
    .mob Darkfuse Enforcer
step
    #completewith DarkfuseSlainA
    #title Leave the house
    .goto 2346,48.92,42.76,5,0
    .goto 2346,48.78,41.22,10 >>Leave the house
step
    #requires DarkfuseSlainA
    #loop
    .goto 2346,51.42,38.79,30,0
    .goto 2346,45.26,30.03,30,0
    .goto 2346,43.81,39.57,45,0
    >>Kill the |cRXP_ENEMY_Darkfuse forces|r in the area
    .complete 85941,1 --12/12 Darkfuse slain
    .mob Darkfuse Harasser
    .mob Darkfuse Oppressor
    .mob Darkfuse Enforcer
    .mob Darkfuse Growler
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r and |cRXP_FRIENDLY_Grimla Fizzlecrank|r
    .turnin 86297 >>Turn in Morale Reflects Leadership
    .goto 2346,45.28,42.33
    .target +Monte Gazlowe
    .turnin 85941 >>Turn in Attitude Adjustment
    .accept 83163 >>Accept Split Venture
    .goto 2346,45.24,42.15
    .target +Grimla Fizzlecrank
step
    #completewith next
    .goto 2346,45.08,42.05
    .vehicle >>|Tinterface/cursor/crosshair/driver.blp:20|tClick on the |cRXP_PICK_Gramps|r
    .timer 27,Roleplay
step
    .goto 2346,43.05,59.56
    >>|cRXP_WARN_Wait for the roleplay.|r
    .complete 83163,1 --1/1 Ride the hot rod
    .target Gramps
step
    #hidewindow
    #completewith next
    .gossipoption 124998 >>Talk to |cRXP_FRIENDLY_Pamsy|r
    .timer 17,Roleplay
step
    .goto 2346,43.74,60.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamsy|r
    .complete 83163,2 --1/1 Talk to Pamsy
    .target Pamsy
    .skipgossipid 124998
step
    .goto 2346,43.51,60.96
    >>|cRXP_WARN_Wait for the roleplay.|r
    .complete 83163,3 --1/1 Confront Nikki the Fixer
step
    #loop
    .goto 2346,43.47,61.33,5,0
    .goto 2346,44.69,60.82,5,0
    .goto 2346,43.72,59.52,5,0
    .goto 2346,42.68,63.26,5,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_FRIENDLY_Magsy Bootstrap|r, |cRXP_FRIENDLY_Waxle Bangsaw|r, |cRXP_FRIENDLY_Evwix Bentrocket|r, and |cRXP_FRIENDLY_Mux Skullskipper|r
    .complete 83163,4 --4/4 Aid Venture Co Goblins
    .target Magsy Bootstrap
    .target Waxle Bangsaw
    .target Evwix Bentrocket
    .target Mux Skullskipper
step
    .goto 2346,43.49,60.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimla Fizzlecrank|r
    .turnin 83163 >>Turn in Split Venture
    .target Grimla Fizzlecrank
step
    .goto 2346,43.75,61.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamsy|r
    .accept 83167 >>Accept Eyes from Above
    .target Pamsy
step
    #loop
    .goto 2346,47.87,58.00,30,0
    .goto 2346,47.71,70.77,40,0
    .goto 2346,43.59,66.27,35,0
    .goto 2346,45.83,62.50
    >>Kill the |cRXP_ENEMY_Darkfuse Spy-copters|r. Loot them for the |T4548884:0|t[|cRXP_LOOT_Spy-copter Footage Rolls|r].
    .complete 83167,1 --8/8 Spy-copter Footage Roll
    .mob Darkfuse Sky-copter
step
    .goto 2346,43.76,60.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamsy|r
    .turnin 83167 >>Turn in Eyes from Above
    .timer 7,Roleplay
    .target Pamsy
step
    .goto 2346,43.46,61.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orweyna|r
    .accept 83168 >>Accept A Trail of Black Blood
    .target Orweyna
step
    .isQuestAvailable account 86618
    .goto 2346,43.26,59.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gas Grimeshank|r
    .accept 87581 >>Accept No More Walkin' Here
    .target Gas Grimeshank
step
    .isQuestAvailable account 86618
    #completewith next
    #label NoMoreWalkinHere
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nanny Talullah|r
    .dailyturnin 84352,87581 >>Turn in No More Walkin' Here
    .accept 86618 >>Accept License Not Required
    .target Nanny Talullah
step
    .isQuestAvailable account 86618
    #completewith NoMoreWalkinHere
    .goto 2346,35.40,48.84,15,0
    .goto 2346,36.49,46.12,15,0
    .goto 2346,37.65,48.06,5,0
    .goto 2346,37.89,47.56,5,0
    .goto 2346,37.51,47.13,5,0
    .goto 2346,37.78,46.73,5,0
    .goto 2346,38.11,47.25,5 >>Climb the stairs of the house
step
    .isQuestAvailable account 86618
    #requires NoMoreWalkinHere
    .goto 2346,37.42,48.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nanny Talullah|r
    .dailyturnin 84352,87581 >>Turn in No More Walkin' Here
    .accept 86618 >>Accept License Not Required
    .target Nanny Talullah
step
    .isOnQuest 86618
    .goto 2346,37.42,48.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nanny Talullah|r
    .complete 86618,1 --1/1 Talk to Nanny Talullah
    .target Nanny Talullah
    .skipgossipid 131561
step
    .isOnQuest 86618
    #hidewindow
    #completewith next
    #label GetInG99Breakneck
    .complete 86618,2 --1/1 Get in the G-99 Breakneck
step
    .isOnQuest 86618
    #completewith GetInG99Breakneck
    .goto 2346,37.31,49.09
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Escape Chains|r
    .complete 86618,3 --1/1 Use the escape chains to reach the streets of Undermine (Optional)
step
    .isOnQuest 86618
    #requires GetInG99Breakneck
    .goto 2346,36.90,50.03
    >>Use the |T1408996:0|t[G-99 Breakneck] button (zone button)
    .complete 86618,2 --1/1 Get in the G-99 Breakneck
step
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,33.46,48.27
    .complete 83168,1 --Investigate Hovel Hill
step
    .goto 2346,33.55,48.12
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ethereal Warning Letter|r
    .complete 83168,2 --1/1 Ethereal Warning Letter
step
    #loop
    .goto 2346,33.80,48.20,6,0
    .goto 2346,34.10,47.58,6,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Labeled Black Blood Shipments|r
    .complete 83168,3 --3/3 Shipment Labels investigated
step
    .goto 2346,34.00,47.42
    >>Kill the |cRXP_ENEMY_Anti-Ethereal Unit|r
    .complete 83168,4 --1/1 Defend yourself
    .mob Anti-Ethereal Unit
step
    .goto 2346,33.04,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83168 >>Turn in A Trail of Black Blood
    .accept 83169 >>Accept Long Way from Booty Bay
    .target Monte Gazlowe

-----------------------
--- INSERT G-99 Questline
-----------------------
step
    #completewith next
    #label SpeakBaronRevilgazA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .complete 83169,1 --1/1 Speak with Baron Revilgaz
    .target Baron Revilgaz
step
    #completewith SpeakBaronRevilgazA
    #title |cFFFCDC00Use the G-99 Breakneck|r
    .goto 2346,26.28,50.01,20,0
    .goto 2346,31.22,38.08,15 >>Follow the arrow
step
    #requires SpeakBaronRevilgazA
    .goto 2346,30.76,39.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .complete 83169,1 --1/1 Speak with Baron Revilgaz
    .target Baron Revilgaz
    .skipgossipid 123665
    .skipgossipid 123666
step
    .goto 2346,30.76,39.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 83169 >>Turn in Long Way from Booty Bay
    .target Baron Revilgaz
    .accept 83170 >>Accept Not Again!
    .accept 83171 >>Accept Eye Sores for Sore Eyes
step
    #completewith next
    >>Kill |cRXP_ENEMY_Recruitment Enforcer|r, |cRXP_ENEMY_Arrogant Intruder|r, and |cRXP_ENEMY_Propaganda Pusher|r
    .complete 83170,3 --2/2 Recruitment Enforcer slain
    .mob +Recruitment Enforcer
    .complete 83170,1 --6/6 Arrogant Intruder slain
    .mob +Arrogant Intruder
    .complete 83170,2 --6/6 Propaganda Pusher slain
    .mob +Propaganda Pusher
step
    #loop
    .goto 2346,30.97,40.20,8,0
    .goto 2346,29.89,39.62,8,0
    .goto 2346,30.49,43.25,8,0
    .goto 2346,31.66,45.23,8,0
    .goto 2346,33.92,42.21,8,0
    .goto 2346,37.05,43.20,8,0
    .goto 2346,33.88,36.07,8,0
    .goto 2346,31.97,37.10,8,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Darkfuse Recruitment Papers|r
    .complete 83171,1 --8/8 Darkfuse Recruitment Posters burned
step
    #loop
    .goto 2346,33.28,39.01,30,0
    .goto 2346,38.75,35.88,35,0
    .goto 2346,33.28,39.01,30,0
    .goto 2346,30.29,37.60,30,0
    .goto 2346,30.39,42.62,30,0
    .goto 2346,34.59,48.18,35,0
    >>Kill |cRXP_ENEMY_Recruitment Enforcer|r, |cRXP_ENEMY_Arrogant Intruder|r, and |cRXP_ENEMY_Propaganda Pusher|r
    .complete 83170,3 --2/2 Recruitment Enforcer slain
    .mob +Recruitment Enforcer
    .complete 83170,1 --6/6 Arrogant Intruder slain
    .mob +Arrogant Intruder
    .complete 83170,2 --6/6 Propaganda Pusher slain
    .mob +Propaganda Pusher
step
    .goto 2346,30.71,39.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 83170 >>Turn in Not Again!
    .target Baron Revilgaz
    .turnin 83171 >>Turn in Eye Sores for Sore Eyes
step
    .goto 2346,30.79,39.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renzik "The Shiv"|r
    .accept 83172 >>Accept Black Blood Baton Pass
    .target Renzik "The Shiv"
step
    .isOnQuest 86618
    #title |cFFFCDC00Use the|r |T6383558:0|t[G-99 Breakneck]
    #loop
    .goto 2346,37.27,46.46,40,0
    .goto 2346,37.07,41.26,30,0
    .complete 86618,4 --Drive around Undermine (100%)
step
    .isOnQuest 86618
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,37.27,46.46
    .complete 86618,5 --Reach the D.R.I.V.E.
step
    .isOnQuest 86618
    .goto 2346,37.72,47.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mobber|r
    >>|cRXP_WARN_Install the |T4548870:0|t[Turbo: Wildfuel Mk. 0]|r
    .complete 86618,6 --1/1 Exit the G-99 Breakneck and install a turbo at the D.R.I.V.E.
    .target Mobber
    .skipgossipid 125367
step
    .isOnQuest 86618
    #completewith next
    >>Use the |T1408996:0|t[G-99 Breakneck] button (zone button)
    >>Drive around and drift (hold space) to gain Turbo (or pick up cans). Use the |T4548870:0|t[Boost] (1) when you have enough Turbo.
    .complete 86618,7 --1/1 Get back in the G-99 Breakneck and activate your boost
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renzik "The Shiv"|r and |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83172 >>Turn in Black Blood Baton Pass
    .accept 83173 >>Accept Clearing Out the Depot
    .goto 2346,61.78,71.87
    .accept 83174 >>Accept Our Good Pal
    .goto 2346,61.73,72.02
    .target Monte Gazlowe
step
    #completewith next
    >>Kill the |cRXP_ENEMY_Depot Goblin forces|r
    .complete 83173,1 --Clear the Heaps Depot (100%)
    .mob Depot Infuser
    .mob Depot Igniter
    .mob Heaps Crusher
step
    .goto 2346,65.76,81.94
    >>Kill |cRXP_ENEMY_Zirdo|r
    .complete 83174,1 --1/1 Zirdo slain
    .mob Zirdo
step
    .goto 2346,65.59,80.98
    >>|TInterface/cursor/crosshair/interact.blp:20|tTalk on the |cRXP_PICK_Zirdo's Ledger|r
    .accept 83175 >>Accept Another Piece of the Puzzle
    .target Zirdo's Ledger
step
    #loop
    .goto 2346,67.74,86.35,35,0
    .goto 2346,62.51,71.32,35,0
    .goto 2346,60.51,80.84,35,0
    >>Kill the |cRXP_ENEMY_Depot Goblin forces|r
    .complete 83173,1 --Clear the Heaps Depot (100%)
    .mob Depot Infuser
    .mob Depot Igniter
    .mob Heaps Crusher
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r and |cRXP_FRIENDLY_Renzik "The Shiv"|r
    .turnin 83175 >>Turn in Another Piece of the Puzzle
    .turnin 83174 >>Turn in Our Good Pal
    .goto 2346,61.74,72.01
    .target +Monte Gazlowe
    .turnin 83173 >>Turn in Clearing Out the Depot
    .accept 83176 >>Accept Just a Hunch
    .goto 2346,61.78,71.87
    .target +Renzik "The Shiv"
    .skipgossipid 132221
step
    .goto 2346,61.78,71.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renzik "The Shiv"|r
    .complete 83176,1 --1/1 Listen to Renzik
    .target Renzik "The Shiv"
    .skipgossipid 132221
step
    #hidewindow
    #completewith next
    .gossipoption 131173 >>Talk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .timer 15,Roleplay
step
    .goto 2346,53.25,60.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .complete 83176,2 --1/1 Meet outside the Heaps
    .target Monte Gazlowe
    .skipgossipid 131173
step
    .goto 2346,53.01,59.36
    >>|cRXP_WARN_Wait for the roleplay|r
    .complete 83176,3 --1/1 Look for Renzik... quietly
    .complete 83176,4 --1/1 Watch Out!
step
    .goto 2346,53.05,59.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renzik "The Shiv"|r
    .complete 83176,5 --1/1 Check in with Renzik
    .target Renzik "The Shiv"
    .skipgossipid 124342
step
    .goto 2346,42.33,51.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83176 >>Turn in Just a Hunch
    .target Monte Gazlowe

-----------------------------------------------------
--- END CHAPTER 2
-----------------------------------------------------
]])

RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP The War Within
#subgroup 11.1 Underground Campaign (80)
#name c) Chapter 3 - Uncovering the Truth
#displayname |cRXP_WARN_Chapter 3|r - Uncovering the Truth
#next d) Chapter 4 - Breaking the Shackles
#subweight 4.6

-----------------------------------------------------
--- START CHAPTER 3
-----------------------------------------------------

step
    .goto 2346,42.33,51.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .accept 83114 >>Accept Red Tape
    .target Monte Gazlowe
step
    .isQuestAvailable account 86535
    .goto 2346,27.67,54.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rustol|r
    .accept 86535 >>Accept Test Run
    .target Rustol
step
    .isOnQuest 86535
    #title |cFFFCDC00Walk onto the teleporter|r
    .goto 2346,27.82,54.03
    .complete 86535,1 --1/1 Use the teleporter to travel to Dornogal
step
    .isOnQuest 86535
    .goto 2339,52.63,50.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kenzi|r
    .turnin 86535 >>Turn in Test Run
    .target Kenzi
step
    #hidewindow
    #completewith next
    #label FindAlleriaAtSlamCentralStation
    #title |cFFFCDC00Follow the arrow|r
    .complete 83114,1 --1/1 Find Alleria at Slam Central Station
step
    .zoneskip 2339,1
    #completewith FindAlleriaAtSlamCentralStation
    .goto 2339,52.53,50.58
    .zone 2346 >>|cRXP_WARN_Walk onto the teleporter|r
step
    #requires FindAlleriaAtSlamCentralStation
    .goto 2346,17.66,50.96
    #title |cFFFCDC00Follow the arrow|r
    .complete 83114,1 --1/1 Find Alleria at Slam Central Station
step
    .goto 2346,17.79,50.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Customs Agents|r. Defeat the ones that turn hostile
    .complete 83114,2 --4/4 Customs Agents convinced to leave
    .timer 17,RP
    .target Custom Agent
    .skipgossipid 124207
    .skipgossipid 124208
    .skipgossipid 132331
    .skipgossipid 124200
step
    .goto 2346,18.13,50.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r |cRXP_WARN_after the roleplay|r
    .turnin 83114 >>Turn in Red Tape
    .accept 83115 >>Accept In the Mix
    .target Monte Gazlowe
step
    .isOnQuest 86618
    #completewith next
    >>Drive around and drift (hold space) to gain Turbo (boost meter).
    .complete 86618,8 --30/30 Regain boost meter by drifting
step
    #completewith next
    #label FindNoggenfoggerInVatworks
    .complete 83115,1 --1/1 Find Noggenfogger in the Vatworks
step
    #completewith FindNoggenfoggerInVatworks
    #title |cFFFCDC00Enter the house|r
    .goto 2346,25.19,53.24,30,0
    .goto 2346,29.06,69.60,5 >>Enter the house
step
    #requires FindNoggenfoggerInVatworks
    .goto 2346,27.63,71.03
    #title |cFFFCDC00Follow the arrow|r
    .complete 83115,1 --1/1 Find Noggenfogger in the Vatworks
step
    #title |cFFFCDC00Below the stairs|r
    .goto 2346,27.46,70.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r |cRXP_WARN_below|r
    .complete 83115,2 --1/1 Ask Noggenfogger to say more
    .target Marin Noggenfogger
    .skipgossipid 123596
step
    .goto 2346,27.46,71.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83115 >>Turn in In the Mix
    .target Monte Gazlowe
step
    .goto 2346,27.47,70.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r
    .accept 83116 >>Accept Potion Commotion
    .target Marin Noggenfogger
step
    .goto 2346,27.62,70.66
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Semi-Deluxe Noggenfogger Elixirs|r
    .complete 83116,1 --1/1 Semi-Deluxe Noggenfogger Elixirs
step
    #loop
    .goto 2346,27.81,71.46,10,0
    .goto 2346,27.77,72.95,12,0
    .goto 2346,26.80,72.26,12,0
    >>Use the |T413575:0|t[Semi-Deluxe Noggenfogger Elixirs] and aim it at the |cRXP_ENEMY_Stationed Labguard|r
    .complete 83116,2,3 --3/8 Stationed Labguards distracted
    .mob Splashed Droplet
    .use 226157
step
    #completewith next
    #label StationLabguardsA
    >>Use the |T413575:0|t[Semi-Deluxe Noggenfogger Elixirs] and aim it at the |cRXP_ENEMY_Stationed Labguard|r
    .complete 83116,2 --8/8 Stationed Labguards distracted
    .mob Splashed Droplet
    .use 226157
step
    #completewith StationLabguardsA
    #title |cFFFCDC00Leave the laboratory|r
    .goto 2346,27.07,71.21,5,0
    .goto 2346,27.41,70.83,5,0
    .goto 2346,27.86,70.82,5,0
    .goto 2346,29.02,69.64,5 >>Leave the laboratory
step
    #requires StationLabguardsA
    #loop
    .goto 2346,31.88,67.46,30,0
    .goto 2346,32.19,72.89,30,0
    .goto 2346,28.28,66.42,30,0
    >>Use the |T413575:0|t[Semi-Deluxe Noggenfogger Elixirs] and aim it at the |cRXP_ENEMY_Stationed Labguard|r
    .complete 83116,2 --8/8 Stationed Labguards distracted
    .mob Splashed Droplet
    .use 226157
step
    #completewith next
    #label PotionCommotion
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83116 >>Turn in Potion Commotion
    .accept 83117 >>Accept Chasing a Lead
    .target Monte Gazlowe
step
    #completewith PotionCommotion
    #title |cFFFCDC00Enter the laboratory|r
    .goto 2346,29.00,69.66,5 >>Enter the laboratory
step
    #requires PotionCommotion
    #title |cFFFCDC00Below the stairs|r
    .goto 2346,27.47,71.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83116 >>Turn in Potion Commotion
    .accept 83117 >>Accept Chasing a Lead
    .target Monte Gazlowe
step
    #completewith next
    #label ChasingaLeadA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83117 >>Turn in Chasing a Lead
    .accept 83118 >>Accept Check the Schedule
    .target Monte Gazlowe
step
    #completewith ChasingaLeadA
    #title |cFFFCDC00Leave the laboratory|r
    .goto 2346,27.07,71.21,5,0
    .goto 2346,27.41,70.83,5,0
    .goto 2346,27.86,70.82,5,0
    .goto 2346,29.02,69.64,5 >>Leave the laboratory
step
    .isOnQuest 86618
    #requires ChasingaLeadA
    #completewith next
    >>Drive around and drift (hold space) to gain Turbo (boost meter).
    .complete 86618,8 --30/30 Regain boost meter by drifting
step
    #requires ChasingaLeadA
    .goto 2346,46.08,78.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83117 >>Turn in Chasing a Lead
    .accept 83118 >>Accept Check the Schedule
    .target Monte Gazlowe
step
    .goto 2346,45.94,78.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimla Fizzlecrank|r
    .accept 83119 >>Accept It's Worth a Shot
    .target Grimla Fizzlecrank
step
    .goto 2346,45.94,78.93
    >>Use the |T6323360:0|t[Spare Venture Co. Uniform]
    .complete 83119,1 --1/1 Venture Co. uniform equipped
    .use 226358
step
    #completewith EmployeeSchedules
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Underpaid Workers|r. |cRXP_WARN_Kill the ones that turn hostile|r
    *Use the |T6323360:0|t[Spare Venture Co. Uniform] if you loose the buff
    .complete 83119,2 --10/10 Venture employees confronted
    .target Underpaid Worker
    .skipgossipid 123439
    .skipgossipid 123440
    .skipgossipid 123441
    .use 226358
step
    #title |cFFFCDC00Avoid the |cFFFF5722Hyenas|r|r. Schedule (1/3)
    .goto 2346,46.82,83.82,10,0
    .goto 2346,46.6,86.1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Employee Schedule|r
    .complete 83118,1,1 --1/3 Employee Schedule
step
    #title |cFFFCDC00Avoid the |cFFFF5722Hyenas|r|r. Schedule (2/3)
    .goto 2346,47.98,85.87
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Employee Schedule|r
    .complete 83118,1,2 --2/3 Employee Schedule
step
    #label EmployeeSchedules
    #title |cFFFCDC00Avoid the |cFFFF5722Hyenas|r|r. Schedule (3/3)
    .goto 2346,49.44,88.02
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Employee Schedule|r
    .complete 83118,1 --3/3 Employee Schedule
step
    #loop
    .goto 2346,44.95,88.03,25,0
    .goto 2346,50.19,86.74,20,0
    .goto 2346,46.89,85.85,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Underpaid Workers|r. |cRXP_WARN_Kill the ones that turn hostile|r
    *Use the |T6323360:0|t[Spare Venture Co. Uniform] if you loose the buff
    .complete 83119,2 --10/10 Venture employees confronted
    .target Underpaid Worker
    .skipgossipid 123439
    .skipgossipid 123440
    .skipgossipid 123441
    .use 226358
step
    #completewith next
    .aura -458737 >>Remove the |T6323360:0|t[Venture Co. Disguise] buff
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r and |cRXP_FRIENDLY_Grimla Fizzlecrank|r
    .turnin 83118 >>Turn in Check the Schedule
    .goto 2346,53.35,71.04
    .target +Monte Gazlowe
    .turnin 83119 >>Turn in It's Worth a Shot
    .accept 83120 >>Accept Stealing the Keys
    .goto 2346,53.46,71.10
    .target +Grimla Fizzlecrank
step
    .goto 2346,51.56,70.65,8,0
    .goto 2346,51.89,72.72
    >>Kill |cRXP_ENEMY_Lead Foreman Krome|r. Loot him for the |T5770743:0|t[|cRXP_LOOT_Sputtering Taserblade|r].
    .complete 83120,1 --1/1 Lead Foreman Krome slain
    .complete 83120,2 --1/1 Sputtering Taserblade
    .mob Lead Foreman Krome
step
    .goto 2346,53.35,71.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83120 >>Turn in Stealing the Keys
    .accept 83933 >>Accept The Kaja'Coast
    .target Monte Gazlowe
step
    .isOnQuest 86618
    >>Drive around and drift (hold space) to gain Turbo (boost meter).
    .complete 86618,8 --30/30 Regain boost meter by drifting
step
    .isOnQuest 86618
    #include RestedXP The War Within\Unlock G-99 Breakneck@UnlockG99BreakneckB-UnlockG99BreakneckC
step
    .goto 2346,18.80,52.21
    #title |cFFFCDC00Follow the arrow|r
    .complete 83933,1 --1/1 Get to Slam Central Station
step
    .goto 2346,18.80,52.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bigz Speedtrack|r
    .complete 83933,2 --1/1 Board the Coastside Drill to travel to Zuldazar
    .target Bigz Speedtrack
    .skipgossipid 125410
step
    .goto 862,22.41,54.26
    #title |cFFFCDC00Follow the arrow|r
    .complete 83933,3 --1/1 Regroup with Gazlowe and Renzik
    .timer 18,RP
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r and |cRXP_FRIENDLY_Renzik "The Shiv"|r
    .turnin 83933 >>Turn in The Kaja'Coast
    .accept 84122 >>Accept Cut the Cameras
    .goto 862,22.23,54.47
    .target +Monte Gazlowe
    .accept 84121 >>Accept Blowing a Path Through
    .goto 862,22.20,54.43
    .target Renzik "The Shiv"
step
    #completewith DarkfuseSlainB
    #hidewindow
    #loop
    .goto 862,21.52,57.43,25,0
    .goto 862,19.10,56.40,35,0
    .goto 862,19.01,59.14,35,0
    +1
step
    #completewith next
    >>Kill |cRXP_ENEMY_Darkfuse|r
    .complete 84121,1 --10/10 Darkfuse slain
    .mob Darkfuse
step
    #title |cFFFCDC00You can fly here|r
    >>Kill the |cRXP_ENEMY_Surveillance B.I.R.D.s|r. Loot them for the |T4548891:0|t[|cRXP_LOOT_Handful of B.I.R.D. Parts]
    >>Use the |T1373906:0|t[Bilgewater Auto-Grappler] or click on the |cRXP_ENEMY_Surveillance B.I.R.D.s|r to ground them.
    .complete 84122,1 --6/6 Handful of B.I.R.D. Parts
    .mob Surveillance B.I.R.D.
step
    #label DarkfuseSlainB
    >>Kill |cRXP_ENEMY_Darkfuse|r
    .complete 84121,1 --10/10 Darkfuse slain
    .mob Darkfuse
step
    #title |cFFFCDC00You can fly here|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r and |cRXP_FRIENDLY_Renzik "The Shiv"|r
    .turnin 84122 >>Turn in Cut the Cameras
    .goto 862,22.09,57.73
    .target +Monte Gazlowe
    .turnin 84121 >>Turn in Blowing a Path Through
    .goto 862,22.11,57.69
    .target +Renzik "The Shiv"
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r and |cRXP_FRIENDLY_Renzik "The Shiv"|r
    .accept 83122 >>Accept Crashing the Market
    .goto 862,22.09,57.73
    .target +Monte Gazlowe
    .accept 83121 >>Accept Asset Management
    .goto 862,22.11,57.69
    .target +Renzik "The Shiv"
---add teleport outside mine here
step
    #hidewindow
    #completewith next
    #label VentureStockpiles
    .complete 83121,1 --6/6 Venture Supervisor slain
    .complete 83122,1 --5/5 Kaja'mite Stockpiles destroyed
step
    #completewith VentureStockpiles
    #title Enter the mine
    .goto 862,23.18,60.14,10 >>Enter the mine
step
    #requires VentureStockpiles
    #hidewindow
    #completewith VentureSupervisors
    #loop
    .goto 862,23.84,60.21,15,0
    .goto 862,24.24,59.32,15,0
    .goto 862,24.75,60.49,15,0
    .goto 862,25.27,59.80,15,0
    .goto 862,25.17,58.96,15,0
    .goto 862,25.02,59.83,15,0
    .goto 862,25.25,58.34,15,0
    .goto 862,24.30,58.29,20,0
    .goto 862,23.53,59.14,15,0
    +1
step
    #requires VentureStockpiles
    #completewith next
    >>Kill |cRXP_ENEMY_Venture Supervisor|r. Loot them for the |T133469:0|t[|cRXP_LOOT_Crumpled Paystub|r].
    .complete 83121,1 --6/6 Venture Supervisor slain
    .collect 232464,1,83123,0
    .accept 83123 >>Accept A Miner Mistake
    .mob Venture Supervisor
step
    #requires VentureStockpiles
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Kaja'mite Stockpiles|r
    .complete 83122,1 --5/5 Kaja'mite Stockpiles destroyed
step
    #label VentureSupervisors
    >>Kill |cRXP_ENEMY_Venture Supervisor|r. Loot them for the |T133469:0|t[|cRXP_LOOT_Crumpled Paystub|r].
    .complete 83121,1 --6/6 Venture Supervisor slain
    .collect 232464,1,83123,0
    .accept 83123 >>Accept A Miner Mistake
    .mob Venture Supervisor
step
    >>Use the |T133469:0|t[Crumbled Paystub]
    .complete 83123,1 --1/1 Read the note on the paystub
    .use 232464
step
    .isOnQuest 83121,83123,83122
    #label EmergencyExit
    #completewith TooFarFromTeleporter
    .goto 862,25.36,58.98
    .cast 3365 >>Click on the |cRXP_PICK_Emergency Exit|r
step
    .isOnQuest 83121,83123,83122
    #hidewindow
    #completewith EmergencyExit
    #label TooFarFromTeleporter
    .goto 862,23.49,60.19,80 >>1
step
    #requires TooFarFromTeleporter
    #completewith next
    #label CrashingMinerBIRD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renzik "The Shiv"|r and |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83121 >>Turn in Asset Management
    .goto 862,22.10,57.69
    .target +Renzik "The Shiv"
    .turnin 83122 >>Turn in Crashing the Market
    .turnin 83123 >>Turn in A Miner Mistake
    .accept 83124 >>Accept B.I.R.D. Watching
    .target +Monte Gazlowe
step
    #requires TooFarFromTeleporter
    #completewith CrashingMinerBIRD
    #title Leave the mine
    .goto 862,22.94,60.12,10 >>Leave the mine
step
    #requires CrashingMinerBIRD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renzik "The Shiv"|r and |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83121 >>Turn in Asset Management
    .target +Renzik "The Shiv"
    .turnin 83122 >>Turn in Crashing the Market
    .turnin 83123 >>Turn in A Miner Mistake
    .accept 83124 >>Accept B.I.R.D. Watching
    .goto 862,22.09,57.72
    .target +Monte Gazlowe
step
    .goto 862,22.09,57.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Surveillance B.I.R.D.|r
    .complete 83124,1 --1/1 Hotwired B.I.R.D. activated
    .target Surveillance B.I.R.D.
step
    .goto 862,22.08,57.69
    >>|Tinterface/cursor/crosshair/driver.blp:20|tClick on the |cRXP_PICK_Surveillance B.I.R.D.|r
    .complete 83124,2 --1/1 Take control of the Hotwired B.I.R.D.
    .target Surveillance B.I.R.D.
step
    .goto 862,18.94,55.49
    #title |cFFFCDC00Follow the arrow|r
    >>|cRXP_WARN_Use |T878211:0|t[E.N.H.A.N.C.E.] (1)|r. Avoid the |cRXP_ENEMY_B.I.R.D. Watchers|r
    *- |cRXP_WARN_Collect treats in the air to refill your energy bar|r
    *- Use |T965900:0|t[Jailbreak] (2) for a speed buff
    .complete 83124,3 --1/1 Northern beach investigated
step
    .goto 862,18.85,58.15
    #title |cFFFCDC00Follow the arrow|r
    >>|cRXP_WARN_Use |T878211:0|t[E.N.H.A.N.C.E.] (1)|r. Avoid the |cRXP_ENEMY_B.I.R.D. Watchers|r
    *- |cRXP_WARN_Collect treats in the air to refill your energy bar|r
    *- Use |T965900:0|t[Jailbreak] (2) for a speed buff
    .complete 83124,4 --1/1 Shipping vessel investigated
step
    .goto 862,20.77,54.48
    #title |cFFFCDC00Follow the arrow|r
    >>|cRXP_WARN_Use |T878211:0|t[E.N.H.A.N.C.E.] (1)|r. Avoid the |cRXP_ENEMY_B.I.R.D. Watchers|r
    *- |cRXP_WARN_Collect treats in the air to refill your energy bar|r
    *- Use |T965900:0|t[Jailbreak] (2) for a speed buff
    .complete 83124,5 --1/1 Spy on Overseer Dritz
step
    .goto 862,22.09,57.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83124 >>Turn in B.I.R.D. Watching
    .accept 83125 >>Accept Price Hike
    .target Monte Gazlowe
step
    #loop
    .goto 862,17.85,60.52,20,0
    .goto 862,17.95,61.50,20,0
    >>Kill |cRXP_ENEMY_Overseer Dritz|r
    .complete 83125,1 --1/1 Overseer Dritz slain
    .mob Overseer Dritz
-- step
--     .goto 862,18.10,60.43
--     >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Spare Excavation Rocket|r
--     .complete 83125,2 --1/1 Ride rocket back to the Coastside Drill (Optional)
step
    .isOnQuest 83125
    .goto 862,22.55,54.07
    #title |cFFFCDC00Follow the arrow|r
    .zone 2346 >>Click on the |cRXP_PICK_Coastside Drill Control Panel|r
    .skipgossipid 125429
step
    .goto 2346,29.22,69.55
    #title |cFFFCDC00Follow the arrow|r
    .complete 83125,3 --1/1 Meet Gazlowe at the Vatworks
step
    .goto 2346,29.22,69.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83125 >>Turn in Price Hike
    .target Monte Gazlowe
-----------------------------------------------------
--- END CHAPTER 3
-----------------------------------------------------
]])

RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP The War Within
#subgroup 11.1 Underground Campaign (80)
#name d) Chapter 4 - Breaking the Shackles
#displayname |cRXP_WARN_Chapter 4|r - Breaking the Shackles
#next e) Chapter 5 - Ignite the Fuel of Change
#subweight 4.6

--------------------------------------------------
--- START CHAPTER 4
-----------------------------------------------------
step
    .goto 2346,29.47,69.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r
    .accept 83126 >>Accept Ethereal Invasion
    .accept 85449 >>Accept Phase Shift
    .target Alleria Windrunner
step
    #completewith next
    >>Kill the |cRXP_ENEMY_Ethereals|r
    .complete 83126,1 --10/10 Ethereals slain
    .mob Ethereal Warpblade
    .mob Ethereal Mind-Scraper
step
    #loop
    .goto 2346,30.47,74.80,15,0
    .goto 2346,34.10,69.96,15,0
    .goto 2346,28.81,63.09,15,0
    .goto 2346,26.31,69.16,15,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Phase Resonance|r
    .complete 85449,1 --4/4 Phase Resonance destroyed
step
    #loop
    .goto 2346,28.81,63.09,25,0
    .goto 2346,34.10,69.96,25,0
    .goto 2346,30.47,74.80,25,0
    .goto 2346,30.64,69.69,25,0
    .goto 2346,26.31,69.16,25,0
    >>Kill the |cRXP_ENEMY_Ethereals|r
    .complete 83126,1 --10/10 Ethereals slain
    .mob Ethereal Warpblade
    .mob Ethereal Mind-Scraper
step
    .goto 2346,29.50,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r |cRXP_WARN_next to you|r
    .turnin 85449 >>Turn in Phase Shift
    .turnin 83126 >>Turn in Ethereal Invasion
    .accept 85450 >>Accept Evacuation Plan
    .target Alleria Windrunner
step
    #completewith next
    #label SpeakGazloweLaboratory
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .complete 85450,1 --1/1 Speak to Gazlowe inside the laboratory
    .target Monte Gazlowe
step
    #completewith SpeakGazloweLaboratory
    #title Enter the laboratory
    .goto 2346,29.00,69.66,5 >>Enter the laboratory
step
    #requires SpeakGazloweLaboratory
    #completewith next
    #hidewindow
    .gossipoption 125342 >>Talk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .timer 29,Roleplay
step
    #requires SpeakGazloweLaboratory
    .goto 2346,26.92,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .complete 85450,1 --1/1 Speak to Gazlowe inside the laboratory
    .target Monte Gazlowe
    .skipgossipid 125342
step
    .goto 2346,26.92,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 85450 >>Turn in Evacuation Plan
    .accept 83127 >>Accept Racing the Clock
    .target Monte Gazlowe
step
    #completewith next
    #label RacingPeopleOut
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83127 >>Turn in Racing the Clock
    .accept 83128 >>Accept Get Our People Out
    .target Monte Gazlowe
step
    #completewith RacingPeopleOut
    #title Leave the laboratory
    .goto 2346,27.07,71.21,5,0
    .goto 2346,27.41,70.83,5,0
    .goto 2346,27.86,70.82,5,0
    .goto 2346,29.02,69.64,5 >>Leave the laboratory
step
    #requires RacingPeopleOut
    .goto 2346,55.67,63.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83127 >>Turn in Racing the Clock
    .accept 83128 >>Accept Get Our People Out
    .target Monte Gazlowe
step
    #completewith HostagesRescued
    >>Kill the |cRXP_ENEMY_Ethereal Heartseeker|r by using the |T458733:0|t[|cRXP_WARN_ExtraActionButton|r] on them. 
    *- |cRXP_WARN_Running into the hidden |cRXP_ENEMY_Ethereal Heartseeker|r will stun you|r
    .complete 83128,2 --10/10 Ethereal Heartseeker slain
    .mob Ethereal Heartseeker
-- step
    -- #title Hostages rescued (1/3)
    -- .goto 2346,53.41,59.78,10,0
    -- .goto 2346,54.37,59.76,5,0
    -- .goto 2346,55.23,58.73,5,0
    -- .goto 2346,54.42,59.57,10,0
    -- .goto 2346,55.67,58.8
    -- >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bomb-and-Chain|r
    -- *|cRXP_WARN_This will cause nearby |cRXP_ENEMY_Ethereal Heartseeker|r to become hostile|r
    -- .complete 83128,1,1 --1/3 Hostages rescued
step
    #title |cFFFCDC00Click on the |cFFDB2EEFDoor|r|r. Hostages rescued (1/3)
    .goto 2346,56.51,60.59,10,0
    .goto 2346,55.64,58.80
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bomb-and-Chain|r
    *|cRXP_WARN_This will cause nearby |cRXP_ENEMY_Ethereal Heartseeker|r to become hostile|r
    .complete 83128,1,1 --1/3 Hostages rescued
-- step
--     #title |cFFFCDC00Follow the way to the second floor|r. Hostages rescued (2/3)
--     .goto 2346,55.23,58.73,5,0
--     .goto 2346,54.37,59.76,5,0
--     .goto 2346,53.41,59.78,10,0
--     .goto 2346,56.14,57.14,10,0
--     .goto 2346,56.76,57.71,5,0
--     .goto 2346,56.38,57.11,5,0
--     .goto 2346,56.8,57.59,5,0
--     .goto 2346,57.01,56.71,5,0
--     .goto 2346,56.85,57.46,7,0
--     .goto 2346,57.16,56.91
--     >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bomb-and-Chains|r
--     *|cRXP_WARN_This will cause nearby |cRXP_ENEMY_Ethereal Heartseeker|r to become hostile|r
--     .complete 83128,1,2 --2/3 Hostages rescued
step
    #title |cFFFCDC00Follow the way to the second floor|r. Hostages rescued (2/3)
    .goto 2346,57.41,57.36,8,0
    .goto 2346,57.46,56.25,5,0
    .goto 2346,57.17,55.96,5,0
    .goto 2346,56.98,56.80,5,0
    .goto 2346,56.74,57.29,5,0
    .goto 2346,57.15,56.96
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bomb-and-Chains|r
    *|cRXP_WARN_This will cause nearby |cRXP_ENEMY_Ethereal Heartseeker|r to become hostile|r
    .complete 83128,1,2 --2/3 Hostages rescued
step
    #label HostagesRescued
    #title |cFFFCDC00Jump down|r. Hostages rescued (3/3)
    .goto 2346,57.43,57.62,5,0
    .goto 2346,57.89,54.93,10,0
    .goto 2346,57.59,54.63
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bomb-and-Chain|r and |cRXP_PICK_Padlock|r
    *|cRXP_WARN_This will cause nearby |cRXP_ENEMY_Ethereal Heartseeker|r to become hostile|r
    .complete 83128,1 --3/3 Hostages rescued
step
    #loop
    .goto 2346,57.99,63.45,30,0
    .goto 2346,54.93,59.30,30,0
    .goto 2346,58.98,56.15,30,0
    >>Kill the |cRXP_ENEMY_Ethereal Heartseeker|r by using the |T458733:0|t[|cRXP_WARN_ExtraActionButton|r] on them. 
    *- |cRXP_WARN_Running into the hidden |cRXP_ENEMY_Ethereal Heartseeker|r will stun you|r
    .complete 83128,2 --10/10 Ethereal Heartseeker slain
    .mob Ethereal Heartseeker
step
    .goto 2346,58.59,59.43
    #title |cFFFCDC00Follow the arrow|r
    .complete 83128,3 --1/1 Cave entrance found
    .timer 4,Roleplay
step
    .goto 2346,58.63,59.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83128 >>Turn in Get Our People Out
    .target Monte Gazlowe
    .accept 83129 >>Accept Nowhere Left to Hide
step
    .goto 2346,58.69,59.43
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Improvised Explosives|r
    .complete 83129,1 --3/3 Light the Improvised Explosives
step
    #completewith next
    #label GallywixConfronted
    #hidewindow
    .complete 83129,2 --1/1 Gallywix confronted
step
    #completewith GallywixConfronted
    #title |cFFFCDC00Enter the cave|r
    .goto 2346,59.47,59.10,8 >>Enter the cave
step
    #requires GallywixConfronted
    .goto 2346,61.74,62.09
    #title |cFFFCDC00Follow the arrow|r
    .complete 83129,2 --1/1 Gallywix confronted
step
    .goto 2346,61.71,62.69
    >>Kill the |cRXP_ENEMY_Ultra-Deluxe Riotguards|r
    .complete 83129,3 --1/1 Hold off Gallywix's riotguards
step
    .goto 2346,61.63,62.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83129 >>Turn in Nowhere Left to Hide
    .accept 83130 >>Accept Sour Victory
    .target Monte Gazlowe
step
    #completewith next
    #label SourVictory
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83130 >>Turn in Sour Victory
    .target Monte Gazlowe
step
    #completewith SourVictory
    #title |cFFFCDC00Leave the cave|r
    .goto 2346,59.47,59.10,10,0
    .goto 2346,58.51,59.45,10 >>Leave the cave
step
    #requires SourVictory
    .goto 2346,38.97,24.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83130 >>Turn in Sour Victory
    .target Monte Gazlowe
-----------------------------------------------------
--- END CHAPTER 4
-----------------------------------------------------
]])

RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP The War Within
#subgroup 11.1 Underground Campaign (80)
#name e) Chapter 5 - Ignite the Fuel of Change
#displayname |cRXP_WARN_Chapter 5|r - Ignite the Fuel of Change
#subweight 4.6

-----------------------------------------------------
--- START CHAPTER 5
-----------------------------------------------------
step
    .goto 2346,38.97,24.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .accept 83138 >>Accept End of the Day
    .target Monte Gazlowe
step
    #hidewindow
    #completewith next
    .gossipoption 123568 >>Talk to |cRXP_FRIENDLY_Renzik|r
    .timer 50,Roleplay
    .target Renzik
step
    .goto 2346,38.96,24.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renzik|r
    .complete 83138,1 --1/1 Speak to Renzik
    .target Renzik
    .skipgossipid 123568
step
    .goto 2346,39.67,24.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83138 >>Turn in End of the Day
    .accept 83194 >>Accept Under Fire
    .target Monte Gazlowe
step
    #completewith next
    #hidewindow
    .gossipoption 131237 >>Talk to |cRXP_FRIENDLY_Gazlowe|r
    .timer 8,Roleplay
step
    .goto 2346,39.67,24.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazlowe|r
    .complete 83194,1 --1/1 Talk to Gazlowe
    .target Gazlowe
    .skipgossipid 131237
step
    .goto 2346,39.96,24.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r, |cRXP_FRIENDLY_Grimla Fizzlecrank|r, and |cRXP_FRIENDLY_Baron Revilgaz|r
    .complete 83194,3 --1/1 Affirm Revilgaz's Support
    .complete 83194,4 --1/1 Affirm Grimla's Support
    .complete 83194,2 --1/1 Affirm Noggenfogger's Support
    .target Marin Noggenfogger
    .target Grimla Fizzlecrank
    .target Baron Revilgaz
    .skipgossipid 123820
    .skipgossipid 123821
    .skipgossipid 123822
step
    .goto 2346,39.81,24.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83194 >>Turn in Under Fire
    .accept 85174 >>Accept Get Out There
    .target Monte Gazlowe
step
    .goto 2346,39.81,24.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    >>|cRXP_WARN_Click on "Yes" on the popup|r
    .complete 85174,1 --1/1 Begin the Revolution
    .target Monte Gazlowe
    .skipgossipid 132094
step
    #completewith next
    #label GetRayyDisperse
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirk Greasedealer|r
    .turnin 85174 >>Turn in Get Out There
    .accept 83195 >>Accept Rally the People
    .accept 83196 >>Accept Disperse!
    .target Dirk Greasedealer
step
    #completewith GetRayyDisperse
    #title |cFFFCDC00Leave the house|r
    .goto 2346,39.27,24.00,5 >>Leave the house
step
    #requires GetRayyDisperse
    .goto 2346,47.77,40.99,8,0
    .goto 2346,48.67,40.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirk Greasedealer|r
    .turnin 85174 >>Turn in Get Out There
    .accept 83195 >>Accept Rally the People
    .accept 83196 >>Accept Disperse!
    .target Dirk Greasedealer
step
    .goto 2346,48.67,40.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirk Greasedealer|r
    .complete 83195,1 --1/1 Speak to Dirk Greasedealer
    .target Dirk Greasedealer
    .skipgossipid 123181
step
    #completewith DarkfuseRiotForcesSlain
    #hidewindow
    #loop
    .goto 2346,44.55,38.54,30,0
    .goto 2346,43.00,33.65,35,0
    .goto 2346,46.16,30.45,35,0
    .goto 2346,51.99,41.24,40,0
    +1
step
    #completewith DefacePropaganda
    >>Kill the |cRXP_ENEMY_Darkfuse Riot Forces|r
    .complete 83196,1 --20/20 Darkfuse Riot Forces slain
    .mob Darkfuse Riotstomper
    .mob Darkfuse Smashcaster
step
    #completewith DefacePropaganda
    >>Use the |T1506452:0|t[Anti-Darkfuse Pamphlets] and aim it at the |cRXP_FRIENDLY_Terrified Citizens|r
    .complete 83195,3 --10/10 Throw pamphlets to Terrified Citizens
    .target Terrified Citizen
    .use 228196
step
    #label DefacePropaganda
    #loop
    .goto 2346,51.94,40.48,0
    .goto 2346,49.17,40.79,0
    .goto 2346,47.87,41.66,0
    .goto 2346,44.27,38.04,0
    .goto 2346,46.03,34.95,0
    .goto 2346,43.38,35.91,0
    .goto 2346,42.20,33.49,0
    .goto 2346,43.85,30.79,0
    .goto 2346,43.92,27.68,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Revolution Graffiti|r
    *- |cRXP_WARN_The locations are marked on your map/minimap|r
    .complete 83195,2 --5/5 Deface Darkfuse Propaganda
step
    #completewith next
    >>Kill the |cRXP_ENEMY_Darkfuse Riot Forces|r
    .complete 83196,1 --20/20 Darkfuse Riot Forces slain
    .mob Darkfuse Riotstomper
    .mob Darkfuse Smashcaster
step
    >>Use the |T1506452:0|t[Anti-Darkfuse Pamphlets] and aim it at the |cRXP_FRIENDLY_Terrified Citizens|r
    .complete 83195,3 --10/10 Throw pamphlets to Terrified Citizens
    .target Terrified Citizen
    .use 228196
step
    #label DarkfuseRiotForcesSlain
    >>Kill the |cRXP_ENEMY_Darkfuse Riot Forces|r
    .complete 83196,1 --20/20 Darkfuse Riot Forces slain
    .mob Darkfuse Riotstomper
    .mob Darkfuse Smashcaster
step
    #title |cFFFCDC00Click on the |cFFDB2EEFDoor|r|r
    .goto 2346,51.10,35.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83195 >>Turn in Rally the People
    .turnin 83196 >>Turn in Disperse!
    .timer 15,Roleplay
    .target Monte Gazlowe
step
    #title |cFFFCDC00Click on the |cFFDB2EEFDoor|r|r
    .goto 2346,50.86,34.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r |cRXP_WARN_after the roleplay|r
    .accept 83197 >>Accept Who Owns the Streets?
    .timer 10,Roleplay
    .target Monte Gazlowe
step
    .goto 2346,50.18,32.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazlowe and confront Nikki|r
    .complete 83197,1 --1/1 Speak to Gazlowe and confront Nikki
    .target Gazlowe and confront Nikki
step
    .goto 2346,50.15,32.20
    >>Kill the |cRXP_ENEMY_Vile Refuses|r and the |cRXP_ENEMY_Gatgloop|r
    .complete 83197,2 --Defeat Nikki's Monstrosities (100%)
    .mob Vile Refuse
    .mob Gatgloop
step
    .goto 2346,58.45,33.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 83197 >>Turn in Who Owns the Streets?
    .accept 83198 >>Accept Backyard Navy
    .target Baron Revilgaz
step
    .goto 2346,58.49,33.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r
    .accept 83199 >>Accept Been Savin' This One
    .target Marin Noggenfogger
step
    #completewith next
    >>Use the |T369278:0|t[Blackwater Blast] and aim it at the |cRXP_ENEMY_Darkfuse Joyrider|r
    *|cRXP_WARN_There are 2 ways to collect |T252185:0|t[|cRXP_LOOT_Blackwater Cannonballs|r]:|r
    *- Kill |cRXP_ENEMY_Darkfuse Mariner|r.
    *- Click on the |cRXP_PICK_Blackwater Ordinances|r
    .complete 83198,2 --6/6 Darkfuse Joyrider sunk
    .collect 228975,6,83198,0x2,-1
    .mob Darkfuse Joyrider
step
    #loop
    .goto 2346,61.21,17.20,30,0
    .goto 2346,58.82,27.29,30,0
    *|cRXP_WARN_There are 3 ways to collect Sliced Limes:|r
    >>- Kill the |cRXP_ENEMY_Darkfuse "Waiter"|r
    >>- Click on the |cRXP_PICK_Overpriced Tropical Punches|r
    >>- Talk to |cRXP_FRIENDLY_Frustrated Vacationer|r
    .complete 83199,1 --12/12 Sliced Limes
    .skipgossipid 125254
step
    #loop
    .goto 2346,61.21,17.20,40,0
    .goto 2346,66.35,19.27,40,0
    .goto 2346,61.21,17.20,40,0
    .goto 2346,60.90,26.30,40,0
    >>Use the |T369278:0|t[Blackwater Blast] and aim it at the |cRXP_ENEMY_Darkfuse Joyrider|r
    *|cRXP_WARN_There are 2 ways to collect |T252185:0|t[|cRXP_LOOT_Blackwater Cannonballs|r]:|r
    *- Kill |cRXP_ENEMY_Darkfuse Mariner|r.
    *- Click on the |cRXP_PICK_Blackwater Ordinances|r
    .complete 83198,2 --6/6 Darkfuse Joyrider sunk
    .collect 228975,6,83198,0x2,-1
    .mob Darkfuse Joyrider
step
    #completewith next
    #label NavyOneSwabs
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
    .turnin 83198 >>Turn in Backyard Navy
    .turnin 83199 >>Turn in Been Savin' This One
    .accept 83200 >>Accept A Vast, Ye Swabs
    .target Fleet Master Seahorn
step
    #completewith NavyOneSwabs
    #title |cFFFCDC00Enter the house|r
    .goto 2346,63.11,18.18,5 >>Enter the house
step
    #requires NavyOneSwabs
    .goto 2346,63.98,17.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
    .turnin 83198 >>Turn in Backyard Navy
    .turnin 83199 >>Turn in Been Savin' This One
    .accept 83200 >>Accept A Vast, Ye Swabs
    .target Fleet Master Seahorn
step
    .goto 2346,63.98,17.19
    >>Use the |T413581:0|t[|cRXP_WARN_ExtraActionButton|r]
    .complete 83200,1 --1/1 Noggenfogger Deluxe Mixed
step
    .goto 2346,63.98,17.19
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_FRIENDLY_Fleet Master Seahorn|r
    .complete 83200,2 --1/1 Give the potion to Seahorn
    .timer 15,Roleplay
    .target Fleet Master Seahorn
step
    .goto 2346,63.98,17.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
    .turnin 83200 >>Turn in A Vast, Ye Swabs
    .accept 85562 >>Accept Tougher Than We Thought
    .accept 85724 >>Accept Repel the Invaders
    .target Fleet Master Seahorn
step
    #completewith next
    #label SmugglerSkeez
    #hidewindow
    .complete 85562,1 --12/12 Black Blood Smugglers slain
    .complete 85724,1 --1/1 Dockmaster Skeez slain
step
    #completewith SmugglerSkeez
    #title |cFFFCDC00Leave the house|r
    .goto 2346,63.49,17.55,5,0
    .goto 2346,63.53,15.45,5,0
    .goto 2346,63.95,15.16,5 >>Leave the house
step
    #requires SmugglerSkeez
    #completewith next
    >>Kill |cRXP_ENEMY_Black Blood Smugglers|r
    .complete 85562,1 --12/12 Black Blood Smugglers slain
    .mob Darkfuse Muscle
    .mob Darkfuse Dockworker
    .mob Darkfuse Racketeer
step
    #requires SmugglerSkeez
    .goto 2346,60.64,10.01
    >>Kill |cRXP_ENEMY_Dockmaster Skeez|r
    .complete 85724,1 --1/1 Dockmaster Skeez slain
    .mob Dockmaster Skeez
step
    #loop
    .goto 2346,60.53,14.64,35,0
    .goto 2346,64.83,14.82,35,0
    .goto 2346,64.66,17.84,35,0
    .goto 2346,62.50,7.29,35,0
    >>Kill |cRXP_ENEMY_Black Blood Smugglers|r
    .complete 85562,1 --12/12 Black Blood Smugglers slain
    .mob Darkfuse Muscle
    .mob Darkfuse Dockworker
    .mob Darkfuse Racketeer
step
    .goto 2346,62.43,15.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r |cRXP_WARN_next to you|r.
    .turnin 85562 >>Turn in Tougher Than We Thought
    .turnin 85724 >>Turn in Repel the Invaders
    .accept 83201 >>Accept Expedited Delivery
    .target Fleet Master Seahorn
step
    .goto 2346,62.43,15.28
    >>|Tinterface/cursor/crosshair/driver.blp:20|tClick on the |cRXP_PICK_Malfunctioning Cratemover|r
    .complete 83201,1 --1/1 Hijack a Venture Cratemover
    .timer 38,Roleplay
    .target Mulfunctioning Cratemover
step
    .goto 2346,45.11,56.72
    >>|cRXP_WARN_Wait for the Roleplay|r
    .complete 83201,2 --1/1 Seek the Black Blood's destination
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimla Fizzlecrank|r and |cRXP_FRIENDLY_Orweyna|r
    .turnin 83201 >>Turn in Expedited Delivery
    .accept 83202 >>Accept Punching Up
    .goto 2346,45.32,57.51
    .target +Grimla Fizzlecrank
    .accept 83203 >>Accept Weapons Hot
    .goto 2346,45.22,57.57
    .target +Orweyna
step
    #completewith PunchingUp
    >>Kill the |cRXP_ENEMY_Black Blood forces|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Black Blood Shipments|r
    .complete 83203,1 --Black Blood Weapons Eliminated (100%)
    .mob Bloodfueled Sapper
    .mob Bloodarmed Tester
    .mob Loyalist Scrapper
step
    #title |cFFFCDC00Go up the stairs|r
    .goto 2346,50.26,59.20,5,0
    .goto 2346,49.80,59.87
    >>Kill |cRXP_ENEMY_Fusetwister Trish|r
    .complete 83202,3 --1/1 Fusetwister Trish slain
    .mob Fusetwister Trish
step
    #title |cFFFCDC00Go up the stairs|r
    .goto 2346,48.15,65.35,10,0
    .goto 2346,48.82,65.72,10,0
    .goto 2346,48.91,65.15
    >>Kill |cRXP_ENEMY_Underboss Paulie|r
    .complete 83202,2 --1/1 Underboss Paulie slain
    .mob Underboss Paulie
step
    #label PunchingUp
    .goto 2346,44.24,68.06
    >>Kill |cRXP_ENEMY_Foreman Luddy|r
    .complete 83202,1 --1/1 Foreman Luddy slain
    .mob Foreman Luddy
step
    #loop
    .goto 2346,47.45,55.45,30,0
    .goto 2346,43.46,66.60,30,0
    .goto 2346,48.35,67.76,40,0
    >>Kill the |cRXP_ENEMY_Black Blood forces|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Black Blood Shipments|r and |cRXP_PICK_Black Blood Grenades|r
    .complete 83203,1 --Black Blood Weapons Eliminated (100%)
    .mob Bloodfueled Sapper
    .mob Bloodarmed Tester
    .mob Loyalist Scrapper
    .mob Bloodfused Hoverturret
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orweyna|r and |cRXP_FRIENDLY_Grimla Fizzlecrank|r
    .turnin 83203 >>Turn in Weapons Hot
    .goto 2346,48.55,77.36
    .target +Orweyna
    .turnin 83202 >>Turn in Punching Up
    .goto 2346,48.55,77.50
    .target +Grimla Fizzlecrank
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamsy|r and |cRXP_FRIENDLY_Orweyna|r
    .accept 83204 >>Accept The Thingamajig
    .goto 2346,48.53,77.63
    .target Pamsy
    .accept 83205 >>Accept Production Halted
    .goto 2346,48.56,77.35
    .target +Orweyna
step
    #completewith ProductionHalted
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Venture Cratemover|r
    >>Kill |cRXP_ENEMY_Bloodfueled Junkers|r. Loot them for the |T4548883:0|t[|cRXP_LOOT_Reactive Platings|r].
    >>Kill |cRXP_ENEMY_Loyalist Tankfillers|r. Loot them for the |T133027:0|t[|cRXP_LOOT_Dented Bloodhose|r].
    .complete 83204,2 --2/2 Kaja'fused Coupling
    .target +Venture Cratemover
    .complete 83204,1 --4/4 Reactive Plating
    .mob +Bloodfueled Junker
    .complete 83204,4 --1/1 Dented Bloodhose
    .mob +Loyalist Tankfiller
step
    >>Use the |T132106:0|t[|cRXP_WARN_ExtraActionButton|r]. Aim it at the |cRXP_PICK_Stockpile|r
    .complete 83205,2 --1/1 South Stockpile destroyed
    .goto 2346,55.77,80.66,-1
    .complete 83205,3 --1/1 West Stockpile destroyed
    .goto 2346,57.62,82.08,-1
    .complete 83205,1 --1/1 North Stockpile destroyed
    .goto 2346,57.37,79.77,-1
step
    #label ProductionHalted
    .goto 2346,57.09,81.62
    >>Kill |cRXP_ENEMY_Bloody Amalgam|r
    .complete 83205,4 --1/1 Bloody Amalgam slain
    .mob Bloody Amalgam
step
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Venture Cratemover|r
    >>Kill |cRXP_ENEMY_Bloodfueled Junkers|r. Loot them for the |T4548883:0|t[|cRXP_LOOT_Reactive Platings|r].
    >>Kill |cRXP_ENEMY_Loyalist Tankfillers|r. Loot them for the |T133027:0|t[|cRXP_LOOT_Dented Bloodhose|r].
    .complete 83204,2 --2/2 Kaja'fused Coupling
    .target +Venture Cratemover
    .complete 83204,1 --4/4 Reactive Plating
    .mob +Bloodfueled Junker
    .complete 83204,4 --1/1 Dented Bloodhose
    .mob +Loyalist Tankfiller
step
    #title |cFFFCDC00You can still use the ExtraActionButton|r
    .goto 2346,58.18,73.86
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Heat-Beater 2001
    .complete 83204,3 --1/1 Coolant Core
step
    #completewith next
    >>Kill |cRXP_ENEMY_Bloodfueled Junkers|r. Loot them for the |T4548883:0|t[|cRXP_LOOT_Reactive Platings|r].
    >>Kill |cRXP_ENEMY_Loyalist Tankfillers|r. Loot them for the |T133027:0|t[|cRXP_LOOT_Dented Bloodhose|r].
    .complete 83204,1 --4/4 Reactive Plating
    .mob +Bloodfueled Junker
    .complete 83204,4 --1/1 Dented Bloodhose
    .mob +Loyalist Tankfiller
step
    #title |cFFFCDC00You can still use the ExtraActionButton|r
    #loop
    .goto 2346,58.20,76.84,25,0
    .goto 2346,55.57,76.23,25,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Venture Cratemover|r
    .complete 83204,2 --2/2 Kaja'fused Coupling
    .target +Venture Cratemover
step
    #title |cFFFCDC00You can still use the ExtraActionButton|r
    #loop
    .goto 2346,54.83,79.37,30,0
    .goto 2346,59.27,77.44,30,0
    .goto 2346,56.88,73.31,30,0
    >>Kill |cRXP_ENEMY_Bloodfueled Junkers|r. Loot them for the |T4548883:0|t[|cRXP_LOOT_Reactive Platings|r].
    >>Kill |cRXP_ENEMY_Loyalist Tankfillers|r. Loot them for the |T133027:0|t[|cRXP_LOOT_Dented Bloodhose|r].
    .complete 83204,1 --4/4 Reactive Plating
    .mob +Bloodfueled Junker
    .complete 83204,4 --1/1 Dented Bloodhose
    .mob +Loyalist Tankfiller
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamsy|r and |cRXP_FRIENDLY_Grimla Fizzlecrank|r
    .turnin 83204 >>Turn in The Thingamajig
    .goto 2346,56.46,67.62
    .target +Pamsy
    .turnin 83205 >>Turn in Production Halted
    .accept 86417 >>Accept Ready Check
    .goto 2346,56.41,67.69
    .target +Grimla Fizzlecrank
step
    .goto 2346,56.41,67.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimla Fizzlecrank|r
    .complete 86417,1 --1/1 Talk to Grimla
    .target Grimla Fizzlecrank
    .skipgossipid 131200
step
    .goto 2346,56.31,67.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 86417 >>Turn in Ready Check
    .accept 83206 >>Accept We Own the Streets
    .target Monte Gazlowe
step
    #loop
    .goto 2346,52.95,62.36,15,0
    .goto 2346,51.60,61.90,15,0
    .goto 2346,53.19,59.33,15,0
    .goto 2346,53.31,57.55,15,0
    .goto 2346,47.51,51.93,15,0
    .goto 2346,46.34,53.60,15,0
    .goto 2346,45.99,46.42,15,0
    .goto 2346,48.27,47.18,15,0
    .goto 2346,47.51,51.93,15,0
    .goto 2346,53.19,59.33,15,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Abandoned Strike Breaker|r, |cRXP_FRIENDLY_Uncertain Citizens|r, and |cRXP_PICK_Darkfuse Crowd Gasser|r
    >>Use the |T236550:0|t[|cRXP_WARN_ExtraActionButton] when it shows up
    .complete 83206,1 --Rabble Roused (100%)
    .mob Abandoned Strike Breaker
    .mob Darkfuse Crowd Gasser
    .target Uncertain Citizen
step
    #hidewindow
    #completewith next
    #label GallywixStatueDemolished
    .complete 83206,2 --1/1 Gallywix Statue Demolished
step
    #completewith GallywixStatueDemolished
    .goto 2346,54.20,44.47
    .cast 463646 >>Click on the |cRXP_PICK_Riot-Grade Rope Coil|r
step
    #requires GallywixStatueDemolished
    .goto 2346,52.92,44.64
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Riot-Grade Rope Coil|r and run away from the statue
    .complete 83206,2 --1/1 Gallywix Statue Demolished
step
    .goto 2346,56.54,44.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83206 >>Turn in We Own the Streets
    .accept 83207 >>Accept My Top Gal
    .timer 11,Roleplay
    .target Monte Gazlowe
step
    #hidewindow
    #completewith next
    .gossipoption 124314 >>Talk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .timer 5,Roleplay
step
    #title |cFFFCDC00Attack |cFFFF5722Nikki the Fixer|r immediately|r
    .goto 2346,56.70,44.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .complete 83207,1 --1/1 Talk to Gazlowe to confront Nikki the Fixer
    .target Monte Gazlowe
    .skipgossipid 124314
step
    #completewith next
    #label NikkiFixerSlain
    >>Kill |cRXP_ENEMY_Nikki the Fixer|r
    .complete 83207,2 --1/1 Nikki the Fixer slain
    .mob Nikki the Fixer
step
    #completewith NikkiFixerSlain
    .goto 2346,57.27,44.68
    .cast 1214213 >>Use the |T999951:0|t[|cRXP_WARN_ExtraActionButton|r]
step
    #requires NikkiFixerSlain
    .goto 2346,57.27,44.68
    >>Kill |cRXP_ENEMY_Nikki the Fixer|r
    .complete 83207,2 --1/1 Nikki the Fixer slain
    .mob Nikki the Fixer
step
    .goto 2346,57.27,44.68
    >>|cRXP_WARN_Wait for the roleplay.|r
    .complete 83207,3 --1/1 Watch Gallywix squirm
step
    .goto 2346,57.22,44.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83207 >>Turn in My Top Gal
    .accept 85780 >>Accept Right Where We Want Him
    .target Monte Gazlowe
step
    .goto 2346,43.61,51.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 85780 >>Turn in Right Where We Want Him
    .accept 86204 >>Accept Liberation of Undermine: The House Loses
    .target Monte Gazlowe

-----------------------------------------------------
--- END CHAPTER 5
-----------------------------------------------------
]])

RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP The War Within
#name Unlock G-99 Breakneck
#displayname G-99 Breakneck Unlock
#internal

step
    #label UnlockG99BreakneckA
    .goto 2346,42.68,51.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gas Grimeshank|r
    .accept 84352 >>Accept No More Walkin' Here
    .target Gas Grimeshank
step
    #completewith next
    #label NoMoreWalkinHere
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nanny Talullah|r
    .turnin 84352 >>Turn in No More Walkin' Here
    .accept 86618 >>Accept License Not Required
    .target Nanny Talullah
step
    #completewith NoMoreWalkinHere
    .goto 2346,35.40,48.84,15,0
    .goto 2346,36.49,46.12,15,0
    .goto 2346,37.65,48.06,5,0
    .goto 2346,37.89,47.56,5,0
    .goto 2346,37.51,47.13,5,0
    .goto 2346,37.78,46.73,5,0
    .goto 2346,38.11,47.25,5 >>Climb the stairs of the house
step
    #requires NoMoreWalkinHere
    .goto 2346,37.42,48.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nanny Talullah|r
    .turnin 84352 >>Turn in No More Walkin' Here
    .accept 86618 >>Accept License Not Required
    .target Nanny Talullah
step
    .goto 2346,37.42,48.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nanny Talullah|r
    .complete 86618,1 --1/1 Talk to Nanny Talullah
    .target Nanny Talullah
    .skipgossipid 131561
step
    #hidewindow
    #completewith next
    #label GetInG99Breakneck
    .complete 86618,2 --1/1 Get in the G-99 Breakneck
step
    #completewith GetInG99Breakneck
    .goto 2346,37.31,49.09
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Escape Chains|r
    .complete 86618,3 --1/1 Use the escape chains to reach the streets of Undermine (Optional)
step
    #requires GetInG99Breakneck
    .goto 2346,36.90,50.03
    >>Use the |T1408996:0|t[G-99 Breakneck] button (zone button)
    .complete 86618,2 --1/1 Get in the G-99 Breakneck
step
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,25.64,49.51,40,0
    .goto 2346,29.31,36.76,40,0
    .goto 2346,37.27,46.46
    .complete 86618,4 --Drive around Undermine (100%)
step
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,37.27,46.46
    .complete 86618,5 --Reach the D.R.I.V.E.
step
    .goto 2346,37.72,47.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mobber|r
    >>|cRXP_WARN_Install the |T4548870:0|t[Turbo: Wildfuel Mk. 0]|r
    .complete 86618,6 --1/1 Exit the G-99 Breakneck and install a turbo at the D.R.I.V.E.
    .target Mobber
    .skipgossipid 125367
step
    #completewith RegainBoostMeter
    #hidewindow
    #loop
    .goto 2346,35.28,50.32,35,0
    .goto 2346,25.83,49.98,35,0
    .goto 2346,36.85,27.64,35,0
    .goto 2346,42.42,35.87,35,0
    .goto 2346,42.31,44.47,35,0
    .goto 2346,38.29,50.19,35,0
    +1
step
    >>Use the |T1408996:0|t[G-99 Breakneck] button (zone button)
    >>Drive around and drift (hold space) to gain Turbo. Use the |T4548870:0|t[Boost] (1) when you have enough Turbo.
    .complete 86618,7 --1/1 Get back in the G-99 Breakneck and activate your boost
step
    #label RegainBoostMeter
    >>Drive around and drift (hold space) to gain Turbo (boost meter).
    .complete 86618,8 --30/30 Regain boost meter by drifting
step
    #label UnlockG99BreakneckB
    .goto 2346,36.82,46.23
    >>Use the |T3610511:0|t[Start Job] (5) button. Get a job (in-game)!
    .complete 86618,9 --1/1 Get a job from Nanny Talullah
step
    .isOnQuest 86618
    #completewith UnlockG99BreakneckC
    >>|cRXP_WARN_It's possible that not all jobs are included in this guide. Just follow the green arrow and the instructions|r
    .complete 86618,10 --1/1 Complete your job from Nanny Talullah
--step
--    .isOnQuest 83055
--    #title |cFFFCDC00Follow the arrow|r
--    .goto 2346,51.37,70.02
--    .complete 83055,1 --Package acquired
--step
--    .isOnQuest 83055
--    #title |cFFFCDC00Follow the arrow|r
--    .goto 2346,46.01,42.96,35,0
--    .goto 2346,51.31,38.26
--    .turnin 83055 >>Package Delivered
step
    .isOnQuest 85732
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,51.48,66.47
    .complete 85732,1 --1/1 Arrived at Venturewood
step
    .isOnQuest 85732
    #loop
    .goto 2346,50.33,62.19,30,0
    .goto 2346,45.41,57.37,30,0
    .goto 2346,43.31,66.03,30,0
    >>Drive over the |cRXP_PICK_Subborn Roaches|r
    .complete 85732,2 --20/20 Roaches "Diffused"
step
    .isOnQuest 86315
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,44.71,68.50
    .complete 86315,1 --1/1 Arrived at Venturewood
step
    .isOnQuest 86315
    #loop
    .goto 2346,44.71,68.50,30,0
    .goto 2346,44.98,61.37,35,0
    .goto 2346,47.99,68.35,35,0
    >>Kill the |cRXP_ENEMY_Underriders|r
    .complete 86315,2 --Underriders defeated (100%)
step
    #title |cFFFCDC00Follow the arrow|r
    .isOnQuest 84791
    .goto 2346,56.34,29.66
    .complete 84791,1 --1/1 Arrived at Blackwater Marina
step
    .isOnQuest 84791
    #completewith next
    #label CustomersFed
    .goto 2346,56.60,29.98,0
    >>Use the |T237335:0|t[|cRXP_WARN_ExtraActionButton|r]. Aim it at the |cRXP_FRIENDLY_Hungry Goblins|r
    .complete 84791,2 --5/5 Customers fed
step
    .isOnQuest 84791
    #completewith CustomersFed
    .goto 2346,56.60,29.98
    .aura -460013 >>Exit the G-99 Breakneck by using |T4200126:0|t[Eject] (6)
step
    .isOnQuest 84791
    #requires CustomersFed
    .goto 2346,56.60,29.98
    >>Use the |T237335:0|t[|cRXP_WARN_ExtraActionButton|r]. Aim it at the |cRXP_FRIENDLY_Hungry Goblins|r
    .complete 84791,2 --5/5 Customers fed
step
    .isOnQuest 84788
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,56.33,29.68
    .complete 84788,1 --1/1 Arrived at Blackwater Marina
step
    .isOnQuest 84788
    #completewith next
    #label CustomersFed
    .goto 2346,56.60,29.98,0
    >>Use the |T1046253:0|t[|cRXP_WARN_ExtraActionButton|r]. Aim it at the |cRXP_FRIENDLY_Hungry Goblins|r
    .complete 84788,2 --5/5 Customers fed
step
    .isOnQuest 84788
    #completewith CustomersFed
    .goto 2346,56.60,29.98
    .aura -460013 >>Exit the G-99 Breakneck by using |T4200126:0|t[Eject] (6)
step
    .isOnQuest 84788
    #requires CustomersFed
    .goto 2346,56.60,29.98
    >>Use the |T1046253:0|t[|cRXP_WARN_ExtraActionButton|r]. Aim it at the |cRXP_FRIENDLY_Hungry Goblins|r
    .complete 84788,2 --5/5 Customers fed
step
    .isOnQuest 86311
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,63.91,76.28
    .complete 86311,1 --Arrived at the Heaps
step
    .isOnQuest 86311
    #loop
    .goto 2346,63.91,76.28,25,0
    .goto 2346,67.68,87.01,35,0
    >>Kill the |cRXP_ENEMY_enemies|r in The Heap
    .complete 86311,2 --Heaps enemies defeated (100%)

step
    .isOnQuest 86319
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,47.00,60.44
    .complete 86319,1 --Arrived at the Heaps
step
    .isOnQuest 86319
    #loop
    .goto 2346,44.69,64.03,30,0
    .goto 2346,48.95,66.08,35,0
    .goto 2346,49.03,58.42,35,0
    >>Kill the |cRXP_ENEMY_Darkfuse Sky-copter|r
    .complete 86319,2 --3/3 Darkfuse Spy-copter slain
    .mob Darkfuse Sky-copter
step
    .isOnQuest 86313
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,47.19,81.59
    .complete 86313,1 --Arrived at the Heaps
step
    .isOnQuest 86313
    #loop
    .goto 2346,47.54,82.71,35,0
    .goto 2346,51.35,85.28,35,0
    .goto 2346,45.48,87.14,35,0
    >>Kill the |cRXP_ENEMY_Darkfuse forces|r
    .complete 86313,2 --Darkfuse defeated (100%)
    .mob Watchful Hyena
    .mob Darkfuse Taskmaster
step
    .isOnQuest 87588
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,46.77,79.42
    .complete 87588,1 --Arrived at The Heaps
step
    .isOnQuest 87588
    #title |cFFFCDC00Jump repeatedly|r
    .goto 2346,47.05,78.37
    .complete 87588,2 --Trash Compacted (100%)
step
    .isOnQuest 85888
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,65.30,86.74
    .complete 85888,1 --Arrived at the Heaps
step
    .isOnQuest 85888
    .goto 2346,64.77,87.06
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Pile of Unsorted Trash|r.
    *|cRXP_WARN_There are 2 possibilities:|r
    *- If it's trash then go to the "Trash This Way!" sign
    *- If it's art then go into the cave next to you
    .complete 85888,2 --5/5 Junk Sorted
step
    .isOnQuest 86318
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,46.08,40.03
    .complete 86318,1 --Arrived at Tailgate Park
step
    .isOnQuest 86318
    #loop
    .goto 2346,42.65,29.33,40,0
    .goto 2346,51.77,40.64,40,0
    .goto 2346,46.10,40.06,40,0
    >>Kill the |cRXP_ENEMY_Darkfuse forces|r
    .complete 86318,2 --Darkfuse defeated (100%)
    .mob Darkfuse Harasser
    .mob Darkfuse Growler
    .mob Darkfuse Oppressor
    .mob Darkfuse Enforcer
step
    .isOnQuest 85946
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,48.88,51.52
    .complete 85946,1 --Arrived at Pleasent Heights
step
    .isOnQuest 85946
    .goto 2346,49.48,51.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Bored Teenagers|r and |cRXP_FRIENDLY_Dweebus Fizzlewit|r
    .complete 85946,2 --3/3 Supermarket Crabs recovered for
    .target Bored Teenager
    .target Dweebus Fizzlewit
    .skipgossipid 125525
    .skipgossipid 125524
    .skipgossipid 125543
step
    .isOnQuest 85733
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,52.32,53.04
    .complete 85733,1 --Arrived at Pleasent Heights
step
    .isOnQuest 85733
    #title |cFFFCDC00Jump repeatedly|r
    .goto 2346,52.51,54.12
    .complete 85733,2 --Fruit Mashed (100%)
step
    .isOnQuest 85797
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,25.28,59.63
    .complete 85797,1 --Arrived at Vatworks
step
    .isOnQuest 85797
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garbo Punchgut|r.
    >>Kill |cRXP_ENEMY_Pierce Punchgut|r.
    .complete 85797,2 --1/1 Knife Tested
    .target Garbo Punchgut
    .mob Pierce Punchgut
    .skipgossipid 125403
step
    .isOnQuest 85874
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,41.27,85.29
    .complete 85874,1 --Arrived at Vatworks
step
    .isOnQuest 85874
    .goto 2346,41.61,85.02
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Fishin Pole|r
    >>Kill the |cRXP_ENEMY_Sewer Slinker|r. Loot it for |T133895:0|t[Gary the Goldfish]
    .complete 85874,2 --1/1 Gary the Goldfish rescued
    .mob Sewer Slinker
step
    .isOnQuest 86320
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,36.66,59.76
    .complete 86320,1 --Arrived at Vatworks
step
    .isOnQuest 86320
    #loop
    .goto 2346,40.41,57.34,25,0
    .goto 2346,37.35,64.17,25,0
    .goto 2346,41.23,62.47,25,0
    >>Kill the |cRXP_ENEMY_Emboldened bullies|r
    .mob Emboldened Bully
    .mob Emboldened Browbeater
step
    .isOnQuest 86410
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,38.23,64.69
    .complete 86410,1 --Arrived at Vatworks
step
    .isOnQuest 86410
    #loop
    .goto 2346,36.62,61.20,25,0
    .goto 2346,34.38,58.86,25,0
    .goto 2346,34.75,66.52,30,0
    .goto 2346,40.04,62.73,25,0
    >>Kill the |cRXP_ENEMY_Runaway Sewage|r
    .complete 86410,2 --Defeat the Slimes! (100%)
    .mob Runaway Sewage
step
    .isOnQuest 86412
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,32.44,68.54
    .complete 86412,1 --Arrived at the Vatworks
step
    .isOnQuest 86412
    #loop
    .goto 2346,31.66,64.55,20,0
    .goto 2346,25.21,64.55,25,0
    .goto 2346,32.04,76.12,25,0
    .goto 2346,34.47,67.11,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on 5 |cRXP_FRIENDLY_Destitute Residents|r
    .complete 86412,2 --New Outfits Distributed (100%)
    .target Destitute Resident
step
    .isOnQuest 85717
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,36.90,55.80
    .complete 85717,1 --Arrived at the Vatworks
step
    .isOnQuest 85717
    #completewith DaisyRescuedRunOntoPipe
    #label DaisyRescued
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_FRIENDLY_Daisy|r
    .complete 85717,2 --1/1 Daisy Rescued
    .target Daisy
step
    .isOnQuest 85717
    #label DaisyRescuedGoUpstairs
    #completewith DaisyRescued
    #title |cFFFCDC00Go upstairs|r
    .goto 2346,37.18,57.18,6,0
    .goto 2346,37.22,58.27,6,0
    .goto 2346,37.49,58.59,6,0
    .goto 2346,37.65,57.60,6,0
    .goto 2346,37.83,57.26,6 >>Go upstairs
step
    .isOnQuest 85717
    #requires DaisyRescuedGoUpstairs
    #label DaisyRescuedRunOntoPipe
    #completewith DaisyRescued
    #title |cFFFCDC00Run onto the pipe|r
    .goto 2346,37.01,56.54,3 >>Run onto the pipe |cRXP_WARN_with base movement speed|r.
step
    #requires DaisyRescuedRunOntoPipe
    .isOnQuest 85717
    .goto 2346,37.27,55.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_FRIENDLY_Daisy|r.
    .complete 85717,2 --1/1 Daisy Rescued
    .target Daisy
step
    .isOnQuest 85715
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,29.61,30.30
    .complete 85715,1 --Arrived at Hovel Hill
step
    .isOnQuest 85715
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on to the |cRXP_PICK_Artist Prop|r
    .goto 2346,28.93,29.06
    .complete 85715,2 --1/1 Model for Painting
step
    .isOnQuest 85771
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,28.70,46.76
    .complete 85771,1 --Arrived at Hovel Hill
step
    .isOnQuest 85771
    #title |cFFFCDC00Follow the arrow|r
    #loop
    .goto 2346,26.17,38.88,30,0
    .goto 2346,25.49,46.47,25,0
    .goto 2346,32.91,48.18,35,0
    .goto 2346,28.35,41.46,30,0
    >>Drive around near the |cRXP_FRIENDLY_Citizens|r
    .complete 85771,2 --6/6 Newspapers delivered to citizens of Undermine
step
    .isOnQuest 85759
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,32.72,34.82
    .complete 85759,1 --Arrived at Hovel Hill
step
    .isOnQuest 85759
    #loop
    .goto 2346,33.15,36.28,5,0
    .goto 2346,32.68,36.00,5,0
    .goto 2346,32.64,36.60,5,0
    >>Use the |T612393:0|t[|cRXP_WARN_ExtraActionButton|r] next to the pink and purple crystals
    .complete 85759,2 --3/3 Crystals Aligned
step
    .isOnQuest 86321
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,34.09,34.51
    .complete 86321,1 --Arrived at Hovel Hill
step
    .isOnQuest 86321
    #loop
    .goto 2346,34.44,34.63,30,0
    .goto 2346,39.94,36.10,30,0
    .goto 2346,34.24,47.43,30,0
    >>Kill |cRXP_ENEMY_Gallywix's forces|r
    .complete 86321,2 --Recruiters defeated (100%)
    .mob Arrogant Intruder
    .mob Recruitment Enforcer
    .mob Propaganda Pusher
step
    .isOnQuest 85854
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,28.02,47.54
    .complete 85854,1 --Arrived at Hovel Hill
step
    .isOnQuest 85854
    .goto 2346,28.16,48.61
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Books|r, |cRXP_PICK_Papers|r and |cRXP_PICK_Scrolls|r on the ground in the room
    .complete 85854,2 --Names Suggested (100%)
step
    .isOnQuest 85861
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,30.83,39.40
    .complete 85861,1 --Arrived at Hovel Hill
step
    .isOnQuest 85861
    .goto 2346,31.31,41.32
    >>Kill the |cRXP_ENEMY_Imagined Rug Monster|r
    .complete 85861,2 --1/1 Rug Monster defeated
    .mob Imagined Rug Monster
step
    .isOnQuest 86314
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,35.88,81.88
    .complete 86314,1 --Arrived at destination
step
    .isOnQuest 86314
    #loop
    .goto 2346,35.27,81.81,25,0
    .goto 2346,40.48,88.32,25,0
    .goto 2346,42.20,84.47,28,0
    >>Kill the |cRXP_ENEMY_Acidic Salvage|r
    .complete 86314,2 --5/5 Acidic Salvage slain
    .mob Acidic Salvage
step
    .isOnQuest 87569
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,37.29,46.49
    .complete 87569,1 --Arrived at Shipping and Handling Garage
step
    .isOnQuest 87569
    .goto 2346,37.81,47.24
    >>Use the |T443395:0|t[|cRXP_WARN_ExtraActionButton|r]
    .complete 87569,2 --1/1 Take your Legally Mandated Break
step
    .isOnQuest 86317
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,60.88,14.34
    .complete 86317,1 --Arrived at Castaway Cove
step
    .isOnQuest 86317
    #loop
    .goto 2346,61.66,13.47,30,0
    .goto 2346,62.58,6.84,35,0
    .goto 2346,61.66,13.47,30,0
    .goto 2346,65.62,15.50,35,0
    >>Kill the |cRXP_ENEMY_Darkfuse Smuggler
    .complete 86317,2 --4/4 Darkfuse Smuggler slain
    .mob Darkfuse Smuggler
step
    .isOnQuest 85758
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,39.03,50.96
    .complete 85758,1 --Arrived at the Incontinental Hotel
step
    .isOnQuest 85758
    #loop
    .goto 2346,39.59,51.89,6,0
    .goto 2346,40.19,51.71,6,0
    .goto 2346,40.39,50.59,6,0
    .goto 2346,39.96,50.14,6,0
    .goto 2346,39.60,50.70,5,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Dirt Spots|r
    .complete 85758,2 --5/5 Dirt Spots Polished
step
    .isOnQuest 86418
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,43.13,51.09
    .complete 86418,1 --Arrived at the Incontinental Hotel
step
    .isOnQuest 86418
    #loop
    .goto 2346,44.30,49.21,15,0
    .goto 2346,40.28,56.15,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Hotel Guests|r
    .complete 86418,2 --
    .target Hotel Guest
step
    .isOnQuest 85826
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,45.04,45.71
    .complete 85826,1 --Arrived at the Incontinental Hotel
step
    .isOnQuest 85826
    #completewith next
    #label OldLadyEscorted
    >>Defend |cRXP_FRIENDLY_Old Lady Greasewheel|r
    .complete 85826,2 --1/1 Old Lady Greasewheel Escorted
    .target Old Lady Greasewheel
step
    .isOnQuest 85826
    #completewith OldLadyEscorted
    .goto 2346,45.03,46.36
    .gossipoption 125426 >>Talk to |cRXP_FRIENDLY_Old Lady Greasewheel|r
    .timer 16,Roleplay
step
    .isOnQuest 85826
    #requires OldLadyEscorted
    .goto 2346,46.43,43.22
    >>Defend |cRXP_FRIENDLY_Old Lady Greasewheel|r
    .complete 85826,2 --1/1 Old Lady Greasewheel Escorted
    .target Old Lady Greasewheel
step
    .isOnQuest 85826
    .goto 2346,46.43,43.22
    >>Kill |cRXP_ENEMY_Vengeful Crocheters|r
    .complete 85826,3 --2/2 Old Lady Greasewheel's Enemies Slain
    .mob Vengeful Crocheter
step
    #completewith next
    #label LicenseNotRequiredB
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nanny Talullah|r
    .turnin 86618 >>Turn in License Not Required
    .target Nanny Talullah
step
    #completewith LicenseNotRequiredB
    .goto 2346,36.95,46.39,15,0
    .goto 2346,37.65,48.06,6,0
    .goto 2346,37.89,47.56,6,0
    .goto 2346,37.51,47.13,6,0
    .goto 2346,37.78,46.73,6,0
    .goto 2346,38.11,47.25,6 >>Climb the stairs of the house
step
    #requires LicenseNotRequiredB
    #label UnlockG99BreakneckC
    .goto 2346,37.43,48.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nanny Talullah|r
    .turnin 86618 >>Turn in License Not Required
    .target Nanny Talullah
]])