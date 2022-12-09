RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Starting Zones
#subgroup Demon Hunter Starting Zones
#name 1Retail-Demon Hunter_Mardum
#displayname Demon Hunter Mardum
#next RestedXP Alliance 10-60\1A_Elwynn Forest << Alliance
#next RestedXP Horde 10-60\1 BfA Intro << Horde

<<DemonHunter

step
    #sticky
    #completewith DemonHunterIntroduction
    +Welcome to the Demon Hunter Starting Zone Guide of RestedXP.
step
    #completewith next
    +|cfff78300 In this zone look out for green crystals that remove the cooldown of your Fel Rush ability for 2 minutes|r
    .link https://gyazo.com/6cedfe6dd0314f2d85731f829b322e35 >> Picture Link: Empowered Fel Crystal
step
    #label DemonHunterIntroduction
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kayn Sunfury there will be a short roleplay before you can accept the Kayn's Quest
    >>By using Spectral Sight quickly you can bypass the roleplay timer
    .goto 672,22.07,55.82
    .accept 40077 >>Accept The Invasion Begins
step
    >>Kill Demons on the way to the next waypoint
    .goto 672,23.85,57.20,30,0
    .goto 672,28.46,65.88,30,0
    .goto 672,28.67,62.9
    .complete 40077,1 --15/15 Demons slain
step
    #completewith next
    +You can skip the next cutscene (Esc -> Yes)
step
    >>Click the Legion Gateway
    .goto 672,28.67,62.9
    .complete 40077,2 --Change the Legion Banner
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kayn
    .goto 672,28.6,63.07
    .turnin 40077 >>Turn in The Invasion Begins
    .accept 40378 >>Accept Enter the Illidari: Ashtongues
step
    #sticky
    #label MardumAssaultonMardum
    >>Kill mobs in the area and click Legion Communicator around the zone (they are worth a lot)
    .goto 672,38.73,45.39,0,0
    .accept 39279 >>Accept Assault on Mardum (Bonus Objective)
    .complete 39279,1 --Assault the Legion in the lowlands (100%)
step
    #title Check Fel Crystal Location
    #completewith next
    .goto 672,29.73,62.37,10,0
    .goto 672,28.83, 61.25,8 >>Check for Empowered Fel Crystal(Green Fel Crystal). You can manually skip this step if it's not there
step
    >>Click the Legion Banner
    .goto 672,31.57,61.91
    .complete 40378,1 --1/1 Ashtongue forces
step
    >>Click on the Felsaber
    .goto 672,31.51,62.34
    .complete 40378,2 --1/1 Accept Illidan's Gift
step
    #title Check Fel Crystal Location
    #completewith next
    .goto 672,31.97,65.82,8 >>Check for Empowered Fel Crystal(Green Fel Crystal). You can manually skip this step if it's not there
step
    >>Click the Legion Gateway
    .goto 672,31.83,65.43,5,0
    .goto 672,33.94,70.05
    .complete 40378,3 --1/1 Find Allari to the southeast
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Allari and Sevis
    .turnin 40378 >>Turn in Enter the Illidari: Ashtongue
    .accept 38759 >>Accept Set Them Free
    .accept 39049 >>Accept Eye On the Prize
    .goto 672,33.94,70.05
    .accept 40379 >>Accept Enter the Illidari: Coilskar
    .goto 672,33.94,69.96
step
    .goto 672,34.86,70.21
    .turnin 39970 >> Open the chest in the back of the cave
step
    #completewith next
    .goto 672,33.82,70.10,10 >>Leave the small cave
step
    #completewith next
    .cast 193547 >>Use the |T441143:0|t[Fell Crystal Fragments] in your Bags for a Movement Speed and Damage buff (use it again when the buff expires)
step
    >>Kill an |cff00ecffAnguish Jailer|r. Loot him for his key
    .goto 672,39.00,73.24
    .complete 38759,1 --1/1 Soulwrought Key
step
    >>Open the cage
    .goto 672,39.34,71.64
    .complete 38759,3 --1/1 Cyana Nightglaive freed
step
    >>Open the cage and destroy the Legion Communicator next to it
    .goto 672,41.74,73.22
    .complete 38759,2 --1/1 Belath Dawnblade freed
step
    >>Kill |cff00ecffInquisitor Baleful|r. Don't move away from him while he is immune as he may evade
    .goto 672,42.63,79.37
    .complete 39049,1 --1/1 Inquisitor Baleful slain & power taken
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ashtongue Mystic
    .goto 672,43.43,72.68
    .skipgossip
    .complete 40379,1 --1/1 Soul sacrificed
step
    >>Click the Legion Gateway
    .goto 672,43.75,72.07
    .complete 40379,2 --1/1 Coilskar forces
step
    #title Check Fel Crystal Location
    #completewith next
    .goto 672,42.38,70.68,10 >>Check for Empowered Fel Crystal(Green Fel Crystal) |cfff78300inside the lava|r. You can manually skip this step if it's not there
step
    >>Open the cage
    .goto 672,41.56,66.60
    .complete 38759,5 --1/1 Mannethrel Darkstar freed
step
    #title Check Fel Crystal Location
    #completewith next
    .goto 672,41.31,67.02,10,0
    .goto 672,38.74,68.27,10 >>Check for Empowered Fel Crystal(Green Fel Crystal) |cfff78300above the cave|r. You can manually skip this step if it's not there
step
    >>Click the cage
    .goto 672,38.58,67.85
    .complete 38759,4 --1/1 Izal Whitemoon freed
step
    #completewith next
    .goto 672,39.20,68.70,10 >>Leave the small cave
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jace
    .goto 672,38.8,60.6
    .turnin 38759 >>Turn in Set Them Free
    .turnin 39049 >>Turn in Eye On the Prize
    .turnin 40379 >>Turn in Enter the Illidari: Coilskar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jace
    .goto 672,38.8,60.6
    .accept 39050 >>Accept Meeting With the Queen
step
    #completewith next
    +You can skip the next cutscene (Esc -> Yes)
step
    >>Click the Nether Crucible
    .goto 672,38.75,60.53
    .complete 39050,1 --1/1 Ritual completed
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jace
    .goto 672,38.8,60.64
    .turnin 39050 >>Turn in Meeting With the Queen
    .accept 38765 >>Accept Enter the Illidari: Shivarra
    .accept 38766 >>Accept Before We're Overrun
step
    #title Check Fel Crystal Location
    #completewith next
    .goto 672,41.13,52.29,10 >>Check for Empowered Fel Crystal(Green Fel Crystal) |cfff78300above the cave|r. You can manually skip this step if it's not there
step
    >>Kill |cff00ecffBeliash|r
    .goto 672,35.16,39.30
    .complete 38766,1 --1/1 Beliash slain & power taken
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sevis
    >>During the cast of "Eye Beam" you can walk
    .goto 672,39.69,39.47
    .skipgossip 1
    .complete 38765,1 --1/1 Sacrifice made
step
    >>Click Legion Gateway
    .goto 672,40.33,38.41
    .complete 38765,2 --1/1 Shivarra forces
step
    #title Check Fel Crystal Location
    #completewith next
    .goto 672,42.03,39.31,10 >>Check for Empowered Fel Crystal(Green Fel Crystal) |cfff78300above the cave|r. You can manually skip this step if it's not there
step
    #rqeuires MardumAssaultonMardum
    #completewith next
    +|cfff78300Mount up and follow the way|r
step
    #rqeuires MardumAssaultonMardum
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kayn
    .goto 672,60.51,44.75
    .turnin 38765 >>Turn in Enter the Illidari: Shivarra
    .turnin 38766 >>Turn in Before We're Overrun
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kayn
    .goto 672,60.51,44.75
    .accept 38813 >>Accept Orders for Your Captains
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lady S'theno
    .goto 672,59.23,46.16
    .skipgossip
    .complete 38813,2 --1/1 Lady S'theno briefed
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Matron Mother
    .goto 672,61.0,46.98
    .skipgossip
    .complete 38813,3 --1/1 Matron Mother Malevolence briefed
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Battlelord Gaardoun
    .goto 672,62.2,46.3
    .skipgossip
    .complete 38813,1 --1/1 Battlelord Gaardoun briefed
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kay
    .goto 672,60.51,44.75
    .turnin 38813 >>Turn in Orders for Your Captains
    .accept 39262 >>Accept Give Me Sight Beyond Sight
step
    #completewith next
    .cast 200749 >>Press N and select a specialization (Recommendation: Havoc)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jace
    .goto 672,64.05,52.29
    .skipgossip 96436,1
    .complete 39262,1 --1/1 Speak with Jace Darkweaver
step
    >>Use |T188501:0|tSpectral Sight while facing the cave
    .goto 672,63.97,52.73
    .complete 39262,2 --1/1 Face the Cave & Use Spectral Sight
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jace
    .goto 672,64.05,52.29
    .turnin 39262 >>Turn in Give Me Sight Beyond Sight
    .accept 39495 >>Accept Hidden No More
step
    #completewith next
    .goto 673,44.24,51.08,8,0
    .goto 673,51.31,55.88,8,0
    .goto 673,55.17,56.64,8 >>Enter the cave and Double Jump up the ledge on your left
step
    >>Kill |cff00ecffFel Lord Caza|r
    .goto 673,59.1,61.9
    .complete 39495,1 --1/1 Caza slain & power taken
step
    >>Open the chest for a ring
    .goto 673,54.77,58.28
    .turnin 39973,1 >> Click the Chest
step
    #completewith next
    .hs >> Use Hearthstone to Illidari Foothold
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kayn
    .goto 672,60.51,44.76
    .turnin 39495 >>Turn in Hidden No More
    .accept 38727 >>Accept Stop the Bombardment
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Cyana
    .goto 672,60.56,44.86
    .accept 38819 >>Accept Their Numbers Are Legion
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Allari
    .goto 672,60.52,44.66
    .accept 38725 >>Accept Into the Foul Creche
step
    #completewith
    >>Kill mobs in the area
    .complete 38819,1 --War progress (100%)
step
    >>Follow the arrow and place the banner
    .goto 672,69.26,48.72
    .complete 38727,1 --1/1 Doom Fortress Devastator
step
    #completewith next
    .goto 672,72.39,46.87,15,0
    .goto 672,73.13,45.85,15 >>Double Jump up the wall
step
    #completewith next
    .goto 672,75.01,41.08
    .cast 6477 >>Place the banner
step
    #completewith next
    .complete 38727,2 --1/1 Forge of Corruption Devastator
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kor'vas
    .goto 672,73.15,33.83
    .turnin 38725 >>Turn in Into the Foul Creche
    .accept 40222 >>Accept The Imp Mother's Tome
step
    >>Enter the Cave. Kill |cff00ecffProlifica|r. Loot her for the tome
    .goto 672,77.05,28.04
    .complete 40222,1 --1/1 Tome of Fel Secrets
step
    #completewith next
    .goto 672,73.68,32.16,10 >>Leave the cave
step
    #label MardumStoptheBombardment
    #completewith next
    .goto 672,66.39,30.40
    .cast 6477 >>Place the banner
step
    #sticky
    #label Area1
    >>Kill mobs in the area
    .goto 672,68.21,28.06,25,0
    .goto 672,66.23,25.97,25,0
    .goto 672,64.89,27.25,30,0
    .goto 672,63.71,29.63
    .complete 38819,1 --War progress (100%)
step
    .complete 38727,3 --1/1 Soul Engine Devastator
step
    #requires Area1
    #completewith next
    +|cfff78300Mount up and follow the arrow|r
step
    #requires Area1
    >>If you still have the Felrush Buff you can Felrush over the Abyss directly to Kayn
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kayn and Kor'vas
    .turnin 38727 >>Turn in Stop the Bombardment
    .turnin 38819 >>Turn in Their Numbers Are Legion
    .goto 672,60.52,44.76
    .turnin 40222 >>Turn in The Imp Mother's Tome
    .accept 40051 >>Accept Fel Secrets
    .goto 672,60.5,44.8
step
    >>Click on the book and choose a specialization (Recommendation: Havoc)
    .goto 672,60.56,44.76
    .complete 40051,1 --1/1 Choose between Havoc & Vengeance
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kayn
    .goto 672,60.52,44.76
    .turnin 40051 >>Turn in Fel Secrets
    .accept 39516 >>Accept Cry Havoc and Let Slip the Illidari!
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the NPC's
    .goto 672,60.52,44.76
    .skipgossip 1
    .skipgossip 93127,2
    .complete 39516,4 --1/1 Kor'vas taught
    .complete 39516,1 --1/1 Allari taught
    .complete 39516,3 --1/1 Kayn taught
    .complete 39516,2 --1/1 Cyana taught
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mannethrel Darkstar
    .goto 672,60.25,44.59
    .skipgossip 2
    .complete 39516,5 --1/1 Mannethrel taught
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kayn
    .goto 672,60.52,44.76
    .turnin 39516 >>Turn in Cry Havoc and Let Slip the Illidari!
    .accept 39663 >>Accept On Felbat Wings
step
    >>/sit infront of Izal Whitemoon then talk to her. This skips the flight!
    .goto 672,62.52,44.91
    .skipgossip
    .complete 39663,1 --1/1 Ride to the Fel Hammer
step
    #completewith next
    .goto 672,69.9,44.2,40,0
    +Leap to your Death by jumping into the Abyss, wait on the Resurrection
step
    >>Attack the Brood Queen until she hides in the shadows then run and talk to Cyana. Be quick!
    .goto 672,69.93,44.23
    .turnin 39663 >>Turn in On Felbat Wings
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Cyana
    .goto 672,69.9,44.2
    .accept 38728 >>Accept The Keystone
step
    >>Kill the |cff00ecffBrood Queen|r. Loot her for the Keystone
    .goto 672,70.0,40.6
    .complete 38728,1 --1/1 Sargerite Keystone
step
    >>Go downstairs
    .goto 672,70.88,39.09,-1
    .goto 672,70.95,41.90,-1
    .goto 672,68.84,41.97,-1
    .goto 672,68.80,39.13,-1
    .complete 38728,2 --1/1 Find the way downstairs
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kayn then wait for the roleplay to finish then accept the new quest
    .goto 672,69.86,37.9
    .turnin 38728 >>Turn in The Keystone
    .timer 7,Roleplay Duration
    .accept 38729 >>Accept Return to the Black Temple
step
    >>Click the Sargerite Keystone
    .goto 672,69.85,37.81
    .complete 38729,1 --1/1 Sargerite Keystone activated
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tInteract with the Fel Portal
    .goto 672,69.85,37.54
    .turnin 38729 >>Turn in Return to the Black Temple
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Maiev
    .goto 677,80.09,36.55
    .accept 38672 >>Accept Breaking Out
step
    >>Open Altruis's Cell
    .goto 677,78.63,38.31
    .complete 38672,1 --1/1 Altruis freed
step
    >>Open Kayn's Cell
    .goto 677,78.59,34.86
    .complete 38672,2 --1/1 Kayn freed
step
    >>Wait for the Roleplay and Click the Lever
    .goto 677,77.8,35.7
    .turnin 38672 >>Turn in Breaking Out
    .timer 8,Roleplay Duration
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kayn
    .goto 677,74.47,35.92
    .accept 38690 >>Accept Rise of the Illidari
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Altruis
    .goto 677,74.42,37.09
    .accept 38689 >>Accept Fel Infusion
step
    #completewith next
    >>It's important to get some progress for it but not finish it
    .complete 39742,1 -- Repel the Legion Attackers
step
    #sticky
    #label Area2
    >>Tag as many Savage Stalkers as possible and kill them while opening cells
    .complete 38689,1 --100/100 Fel Energy regained
step
    >>Open the Warden Cell
    .goto 677,75.04,39.27
    .complete 38690,1,1 --8/8 Imprisoned Illidari freed
step
    >>Open the Warden Cell
    >>Double Jump up the Ledge
    .goto 677,74.46,32.53,8,0
    .goto 677,72.14,32.03
    .complete 38690,1,2 --8/8 Imprisoned Illidari freed
step
    >>Open the Warden Cell
    .goto 677,71.01,27.55
    .complete 38690,1,3 --8/8 Imprisoned Illidari freed
step
    >>Open the Warden Cell
    .goto 677,66.10,31.88
    .complete 38690,1,4 --8/8 Imprisoned Illidari freed
step
    >>Open the Warden Cell
    .goto 677,63.12,33.82
    .complete 38690,1,5 --8/8 Imprisoned Illidari freed
step
    >>Double Jump the Ledge
    >>Open the Warden Cell
    .goto 677,63.55,39.87,8,0
    .goto 677,65.95,40.93
    .complete 38690,1,6 --8/8 Imprisoned Illidari freed
step
    >>Open the Warden Cell below
    .goto 677,66.37,43.05
    .complete 38690,1,7 --8/8 Imprisoned Illidari freed
step
    >>Open the Warden Cell
    .goto 677,71.87,43.27
    .complete 38690,1,8 --8/8 Imprisoned Illidari freed
step
    #requires Area2
    #completewith next
    .goto 677,61.52,36.49,20,0
    .goto 677,51.23,37.05,20 >>Follow the arrow
step
    #requires Area2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Altruis, Kayn and Maiev
    .turnin 38689 >>Turn in Fel Infusion
    .goto 677,49.68,49.3
    .turnin 38690 >>Turn in Rise of the Illidari
    .goto 677,49.17,49.48
    .accept 38723 >>Accept Stop Gul'dan! << Female
    .accept 40253 >>Accept Stop Gul'dan! << Male
    .goto 677,49.46,49.76
step
    >>Kill |cff00ecffCrusher & Sledge|r. They share HP
    .goto 677,50.1,74.5
    .complete 38723,2 << Female --1/1 Crusher & Sledge slain & power taken
    .complete 40253,2 << Male --1/1 Crusher & Sledge slain & power taken
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kayn
    .goto 677,50.75,72.87
    .turnin 38723 >>Turn in Stop Gul'dan! << Female
    .turnin 40253 >>Turn in Stop Gul'dan! << Male
    .accept 39682 >>Accept Grand Theft Felbat
step
    #completewith next
    .goto 677,50.06,37.06,15,0
    .goto 677,42.93,32.10,15,0
    .goto 677,54.04,29.34,15 >>Follow the way up
step
    >>It's time to finish it
    .goto 677,49.58,30.63
    .complete 39742,1 -- Repel the Legion Attackers
step
    >>Mount the Vampiric Felbat
    .goto 677,54.27,29.14,15,0
    .goto 677,48.51,20.14
    .complete 39682,1 --1/1 Ride a Vampiric Felbat to the Upper Vault
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kor'vas and Allari
    .goto 678,41.33,47.33
    .turnin 39682 >>Turn in Grand Theft Felbat
    .accept 39685 >>Accept Frozen in Time
    .accept 39684 >>Accept Beam Me Up
    .accept 39683 >>Accept Forged in Fire << Female
    .accept 40254 >>Accept Forged in Fire << Male
    .goto 678,41.12,47.17
step
    >>Kill |cff00ecffImmolanth|r
    .goto 678,46.77,36.91,15,0
    .goto 678,46.7,17.8
    .complete 39683,1 << Female --1/1 Immolanth slain & power taken
    .complete 40254,1 << Male --1/1 Immolanth slain & power taken
step
    >>Click the Mirror. Make sure to dodge the discs
    .goto 678,46.74,36.41,15,0
    .goto 678,54.76,48.15,15,0
    .goto 678,70.54,49.62
    .complete 39684,1 --1/1 Mirror rotated
step
    >>Click the Orb
    .goto 678,59.05,48.2,10,0
    .goto 678,52.93,58.45,15,0
    .goto 678,46.84,66.84,10,0
    .goto 678,50.1,78.2
    .complete 39685,1 --1/1 Eastern Countermeasure activated
step
    >>Click the Orb
    .goto 678,56.77,51.86,15,0
    .goto 678,48.44,63.66,15,0
    .goto 678,46.8,84.1
    .complete 39685,2 --1/1 Southern Countermeasure activated
step
    >>Click the Orb
    .goto 678,43.4,78.2
    .complete 39685,3 --1/1 Western Countermeasure activated
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Allari
    .goto 678,46.63,66.17,8,0
    .goto 678,46.83,60.12,8,0
    .goto 678,41.1,47.2
    .turnin 39685 >>Turn in Frozen in Time
    .turnin 39683 >>Turn in Forged in Fire << Alliance
    .turnin 40254 >>Turn in Forged in Fire << Horde
    .turnin 39684 >>Turn in Beam Me Up
    .accept 39686 >>Accept All The Way Up
step
    >>Go to the Elevator Location and wait for the elevator
    .goto 678,46.69,48.12
    .complete 39686,1 --1/1 Ascend to the Hall of Judgment
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kor'vas
    .goto 679,24.41,55.79
    .turnin 39686 >>Turn in All The Way Up
    .accept 40373 >>Accept A New Direction
step
    >>Click the Pool of Judgment
    .goto 679,24.52,53.05
    .complete 40373,1 --1/1 Pool of Judgment viewed
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kor'vas and select either Kayn or Altruis
    .goto 679,24.52,53.05
    .complete 40373,2 --1/1 Choose between Kayn and Altruis
step

    >>Skip the quest that you couldn't accept manually
    .goto 679,24.4,55.8
    .turnin 40373 >>Turn in A New Direction
    .accept 39688 >>Accept Between Us and Freedom << NightElf
    .accept 40255 >>Accept Between Us and Freedom << NightElf
    .accept 39694 >>Accept Between Us and Freedom << BloodElf
    .accept 40256 >>Accept Between Us and Freedom << BloodElf
step
    #completewith MardumBetweenUsAndFreedom
    .goto 679,24.44,72.11,10,0
    .goto 679,32.57,77.47,10,0
    .goto 679,39.46,80.59,20 >>Follow the arrow
step
    .isOnQuest 40256
    >>Kill |cff00ecffBastillax|r
    .goto 679,50.34,77.76
    .complete 40256,1 --1/1 Bastillax slain & power taken
step
    .isOnQuest 39694
    >>Kill |cff00ecffBastillax|r
    .goto 679,50.34,77.76
    .complete 39694,1 --1/1 Bastillax slain & power taken
step
    .isOnQuest 40255
    >>Kill |cff00ecffBastillax|r
    .goto 679,50.34,77.76
    .complete 40255,1 --1/1 Bastillax slain & power taken
step
    .isOnQuest 39688
    >>Kill |cff00ecffBastillax|r
    .goto 679,50.34,77.76
    .complete 39688,1 --1/1 Bastillax slain & power taken
step
    #completewith next
    >>Follow the Waypoints closely
    .goto 679,63.39,80.28,10,0
    .goto 679,72.67,78.62,5,0
    .goto 679,78.89,80.04,5,0
    .goto 679,78.22,87.79,5 >>Double Jump + Felrush to make it up the Mountain to force Khadgar to spawn early
step
    #label MardumBetweenUsAndFreedom
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Altruis the Sufferer
    .goto 679,83.98,82.78
    .turnin -39688 >>Turn in Between Us and Freedom << NightElf
    .turnin -40255 >>Turn in Between Us and Freedom << NightElf
    .turnin -40256 >>Turn in Between Us and Freedom << BloodElf
    .turnin -39694 >>Turn in Between Us and Freedom << BloodElf
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khadgar
    .goto 679,85.98,84.31
    .accept 39689 >>Accept Illidari, We Are Leaving
    .turnin 39689 >>Turn in Illidari, We Are Leaving
step << Alliance
    .goto 84,72.55,47.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Archmage Khadgar
    .accept 39691 >>Accept The Call of War
step << Alliance
    .goto 84,83.73,34.40
    .complete 39691,1 --1/1 Enter the Throne Room
step << Alliance
    .goto 84,84.39,33.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jace Darkweaver
    .turnin 39691 >>Turn in The Call of War
    .accept 44471 >>Accept Second Sight
step << Alliance
    >>Use Spectral Sight
    .complete 44471,1 --1/1 Spectral Sight used
step << Alliance
    .goto 84,84.39,33.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jace Darkweaver
    .turnin 44471 >>Turn in Second Sight
    .accept 44463 >>Accept Demons Among Them
step << Alliance
    >> Speak to Anduin Wrynn
    .goto 84,85.90,31.60
    .skipgossip
    .complete 44463,1 --1/1 Warn Anduin Wrynn
step << Alliance
    .complete 44463,2 --5/5 Demons slain
step << Alliance
    .goto 84,85.75,31.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Anduin Wrynn
    .turnin 44463 >>Turn in Demons Among Them
step << Alliance
    .nodmf
    .isQuestTurnedIn 44463 --x DH Check
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Renato
    .accept 332 >>Accept Wine Shop Advert
step <<Alliance
    .nodmf
    .isQuestTurnedIn 44463 --x DH Check
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bartlett in Goldshire
    .goto 84,73.04,47.56,25,0
    .goto 84,67.45,57.19,25,0
    .goto 84,68.59,62.19,25,0
    .goto 84,66.03,64.49,25,0
    .goto 84,64.39,67.14,25,0
    .goto 84,63.89,72.21,35,0
    .goto 84,68.07,79.75,25,0
    .goto 84,70.1,79.88,25,0
    .goto 84,70.41,84.03,25,0
    .goto 84,70.92,72.45
    .fp >>Get the Goldshire Flight Path
step <<Alliance
    .isQuestTurnedIn 40378 --x Demon Hunter Check
    .dmf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Darkmoon Faire Mystic Mage
    .goto 84,80.46,37.71,10,0
    .goto 84,72.51,46.59,30,0
    .goto 84,70.27,46.83,10,0
    .goto 84,62.1,32.16
    .accept 7905 >>Accept The Darkmoon Faire
step <<Alliance
    .dmf
    .isQuestTurnedIn 31450 --x dh check
    +Talk to Darkmoon Faire Mystic Mage and press accept
    .skipgossip
    .zoneskip 37
    .goto 84,62.25,72.96
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khadgar
    .goto 679,85.98,84.31
    .accept 39690 >>Accept Illidari, We Are Leaving
    .turnin 39690 >>Turn in Illidari, We Are Leaving
step << Horde
    .goto 85,52.53,88.17
    .accept 40976 >>Accept Audience with the Warchief
step << Horde
    #completewith next
    +You can skip the next cutscene (Esc -> Yes)
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Saurfang
    .goto 85,50.0,76.0
    .complete 40976,1 --1/1 Report to Saurfang
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Allari the Souleater
    .goto 1,45.8,15.1
    .turnin 40976 >>Turn in Audience with the Warchief
    .accept 40982 >>Accept Second Sight
step << Horde
    >>Use your ability 'Spectral Sight'
    .goto 1,45.8,15.1
    .complete 40982,1 --1/1 Spectral Sight used
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Allari the Souleater
    .goto 1,45.8,15.1
    .turnin 40982 >>Turn in Second Sight
    .accept 40983 >>Accept Demons Among Them
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lady Sylvanas Windrunner
    .goto 1,45.7,15.9
    .complete 40983,1 --1/1 Warn Warchief Sylvanas
step << Horde
    .goto 1,45.80,14.77,15,0
    .goto 1,46.67,14.75,15,0
    .goto 1,46.94,16.50,15,0
    .goto 1,46.41,17.88,15,0
    .goto 1,45.60,16.47,15,0
    .goto 1,46.19,15.65
    .complete 40983,2 --12/12 Demons slain
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lady Sylvanas Windrunner
    .goto 1,45.68,15.93
    .turnin 40983 >>Turn in Demons Among Them
    .accept 41002 >>Accept A Weapon for the Horde
]])
