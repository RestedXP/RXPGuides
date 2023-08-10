
RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Allied Race Unlocks
#subgroup Lightforged Draenei
#name 5) Lightforged Draenei Scenario Questline
#displayname Final Chapter

<Alliance

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
    .accept 49698 >>Accept The Lightforged
    .target Aysa Cloudsinger
step
    .goto 84,52.81,14.57,5,0
    .goto 84,51.88,14.06
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Stormwind Embassy Beacon.|r
    .complete 49698,1 --1/1 Stormwind Embassy Beacon used
    .isOnQuest 49698
step
    .goto 940,43.77,26.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Fareeya.|r
    >>|cFFFCDC00Press "Escape" on your keyboard to skip the cinematic.|r
    .turnin 49698 >>Turn in The Lightforged
    .accept 49266 >>Accept Forge of Aeons
    .target Captain Fareeya
step
    .goto 940,49.99,46.24
    .cast 253751 >>Click on the |cRXP_PICK_Lightforged Beacon.|r
    .isOnQuest 49266 
step
    .goto 933,88.51,36.44,10 >>|cRXP_WARN_Head to the location indicated by the arrow.|r
    .timer 27,Duration until continuation.
    -- .scenario 3547,1 >>|cRXP_WARN_Head to the location indicated by the arrow.|r
    .isOnQuest 49266 
step
    .goto 933,87.42,29.73
    .scenario 3549,1 >>|cRXP_WARN_Wait |cFFfa9602infront of the building.|r|r
    .isOnQuest 49266 
step
    .goto 933,89.13,28.53,5 >>|cRXP_WARN_Head to the location indicated by the arrow.|r
    .timer 14,Duration until continuation.
step
    .goto 933,75.78,31.33,5 >>|cRXP_WARN_Head to the location indicated by the arrow.|r
    .isOnQuest 49266 
step
    .goto 933,75.78,31.33
    .scenario 3550,1 >>|cRXP_WARN_Wait for the remaining time.|r
    .isOnQuest 49266 
step
    .goto 933,66.81,29.77,5 >>Find the |cRXP_FRIENDLY_Child.|r
    .timer 15,Duration until continuation.
    .target T'paartos
    .isOnQuest 49266 
step
    .goto 933,66.87,29.96
    .scenario 3553,1 >>|cRXP_WARN_Kill the |cRXP_ENEMY_Swamp Serpent.|r|r
    .mob Swamp Serpent
    .isOnQuest 49266 
 step
    .goto 933,56.43,23.82,5 >>|cRXP_WARN_Head to the location indicated by the arrow.|r
    .isOnQuest 49266 
step
    .goto 933,56.43,23.82
    .scenario 3554,1 >>|cRXP_WARN_Wait for |cRXP_FRIENDLY_T'paartos|r to arrive.|r
    .isOnQuest 49266 
step
    .goto 933,46.96,27.4
    .scenario 3555,1 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crystal|r inside |cFFfa9602the cave.|r
    .isOnQuest 49266 
step
    .goto 933,46.96,27.4
    .scenario 3561,1 >>Kill the |cRXP_ENEMY_Crystal Fury.|r
    .mob Crystal Fury
    .isOnQuest 49266 
step
    .goto 933,57.03,23.41,5 >>Leave |cFFfa9602the cave.|r
    .isOnQuest 49266 
step
    .goto 933,52.93,31.59,20,0
    .goto 933,41.26,46.52,20,0
    .goto 933,27.44,36.56
    .scenario 3556,1 >>Kill |cRXP_ENEMY_Doubts|r and |cRXP_ENEMY_Fears.|r
    .mob Fear
    .mob Doubt
    .isOnQuest 49266 
step
    .goto 933,16.92,46.28,5 >>|cRXP_WARN_Head to the location indicated by the arrow.|r
    .isOnQuest 49266 
step
    .goto 933,16.92,46.28
    .scenario 3570,1 >>|cRXP_WARN_Wait for |cRXP_FRIENDLY_T'paartos|r to arrive.|r
    .isOnQuest 49266 
step
    .goto 933,11.35,50.13,5 >>Enter |cFFfa9602the cave.|r
    .timer 3, Terror activates in...
    .isOnQuest 49266 
step
    .goto 933,8.57,50.04
    .scenario 3571,1 >>|cRXP_WARN_Kill |cRXP_ENEMY_Terror.|r|r
    .mob Terror
    .isOnQuest 49266 
step
    .goto 933,17.25,46.42,10 >>Leave |cFFfa9602the cave.|r
    .isOnQuest 49266 
step
    .goto 933,41.85,58.85,10 >>|cRXP_WARN_Head to the location indicated by the arrow.|r
    .isOnQuest 49266 
step
    .goto 933,41.85,58.85
    .scenario 3572,1 >>|cRXP_WARN_Wait for |cRXP_FRIENDLY_T'paartos|r to arrive.|r
    .isOnQuest 49266 
step
    .goto 933,46.79,65.98
    .scenario 3573,1 >>|TInterface/cursor/crosshair/interact.blp:20|tInteract with |cRXP_FRIENDLY_T'paartos.|r
    .target T'paartos
    .isOnQuest 49266 
step
    .goto 933,66.37,77.37,10 >>|cRXP_WARN_Head to the location indicated by the arrow.|r
    .isOnQuest 49266 
step
    .goto 933,66.37,77.37
    .scenario 3579,1 >>|cRXP_WARN_Wait for |cRXP_FRIENDLY_T'paartos|r to arrive.|r
    .isOnQuest 49266 
step
    .goto 933,68.51,77,5 >>|cRXP_WARN_Descend the spiral staircase.|r
    .isOnQuest 49266 
step
    .goto 933,63.78,71.47,5,0
    .goto 933,61.53,75.87,5,0
    .goto 933,68.36,77.08
    .scenario 3574,1 >>|cRXP_WARN_Interact with |cRXP_FRIENDLY_T'paartos.|r|r(1)
    .target T'paartos
    .isOnQuest 49266 
step
    .goto 933,61.53,75.87,5 >>|cRXP_WARN_Descend deeper |cFFfa9602into the cave.|r|r
    .isOnQuest 49266 
step
    .goto 933,65.73,73.57
    .scenario 3574,2 >>|cRXP_WARN_Interact with |cRXP_FRIENDLY_T'paartos.|r|r(2)
    .target T'paartos
    .isOnQuest 49266 
step
    .goto 933,72.31,86.51
    .scenario 3574,3 >>|cRXP_WARN_Interact with |cRXP_FRIENDLY_T'paartos.|r|r(3)
    .target T'paartos
    .isOnQuest 49266 
step
    .goto 933,73.59,75.21,15,0
    .goto 933,69.63,68.27
    .scenario 3574,4 >>|cRXP_WARN_Interact with |cRXP_FRIENDLY_T'paartos.|r|r(4)
    .target T'paartos
    .isOnQuest 49266 
step
    .goto 933,65.16,71.82,15,0
    .goto 933,63.03,74.51
    .scenario 3574,5 >>|cRXP_WARN_Interact with |cRXP_FRIENDLY_T'paartos.|r|r(5)
    .target T'paartos
    .isOnQuest 49266 
step
    .goto 933,64.02,81.39,15,0
    .goto 933,69.6,77.79
    .scenario 3574,6 >>|cRXP_WARN_Interact with |cRXP_FRIENDLY_T'paartos.|r|r(6)
    .target T'paartos
    .isOnQuest 49266 
step
    .goto 933,68.59,88.86,15,0
    .goto 933,73.39,94.59
    >>Kill |cRXP_ENEMY_T'paartos the Fallen|r
    .complete 49266,1 --Forge of Aeons scenario completed 
    .mob T'paartos the Fallen
    .isOnQuest 49266 
    --x wrong scenaruio id fix
step
    #completewith next
    .link /script C_PartyInfo.LeaveParty() >> |cRXP_WARN_Click here to obtain a macro that lets you exit the group by typing it in chat.|r 
    +|cRXP_WARN_You can also leave using other standard methods.|r
    .isOnQuest 49266
step
    .goto 940,48.35,39.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Fareeya.|r
    .turnin 49266 >>Turn in Forge of Aeons
    .target Captain Fareeya
step
    .goto 940,47.56,40.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Exarch Turalyon.|r
    .accept 50071 >>Accept For the Light!
    .target High Exarch Turalyon
step
    .goto 941,45.75,58.15,10,0
    .goto 941,54.36,60.68,5,0
    .goto 941,43.17,24.76
    .zone 84 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Stormwind Portal.|r
step
    .goto 84,52.79,14.51,5,0
    .goto 84,52.05,13.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger.|r
    .turnin 50071 >>Turn in For the Light!
    .target Aysa Cloudsinger
]])