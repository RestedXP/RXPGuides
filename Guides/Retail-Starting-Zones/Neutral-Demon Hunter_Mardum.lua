RXPGuides.RegisterGuide([[
#df
#version 2
#group RestedXP Starting Zones
#name 1Retail-Demon Hunter_Mardum
#displayname Demon Hunter Starting Zone
#next RestedXP Alliance 10-60\1A_Elwynn Forest << Alliance
#next RestedXP Horde 10-60\1 BfA Intro << Horde

<<DemonHunter

step
    #completewith DemonHunterIntroduction
    +Welcome to the |cFFfa9602Demon Hunter Starting Zone|r Guide of RestedXP.
step
    #completewith next
    +|cRXP_WARN_In speedrun terms, always be on the lookout for green crystals in this area. These crystals give your Fel Rush ability a significant boost by eliminating its cooldown for two whole minutes. This allows you to zip through the zone at a quicker pace and clear obstacles more efficiently.|r
    .link https://gyazo.com/6cedfe6dd0314f2d85731f829b322e35 >> Picture Link: Empowered Fel Crystal
step
    #label DemonHunterIntroduction
    .goto 672,22.07,55.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    *|cRXP_WARN_Be prepared for a brief roleplay segment before you can take on Kayn's Quest. If you use your Spectral Sight ability swiftly you can skip the initial roleplay.|r
    .accept 40077 >>Accept The Invasion Begins
    .target Kayn Sunfury
step
    .goto 672,23.85,57.20,30,0
    .goto 672,28.46,65.88,30,0
    .goto 672,28.67,62.9
    >>Kill |cRXP_ENEMY_Demons|r
    .complete 40077,1 --15/15 Demons slain
    --x .mobs
step
    .goto 672,28.67,62.9
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Legion Gateway.|r
    >>|cRXP_WARN_Press "Escape" on your keyboard to skip the cinematic.|r
    .complete 40077,2 --Change the Legion Banner
step
    .goto 672,28.6,63.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .turnin 40077 >>Turn in The Invasion Begins
    .accept 40378 >>Accept Enter the Illidari: Ashtongues
    .target Kayn Sunfury
step
    #sticky
    #label MardumAssaultonMardum
    .goto 672,38.73,45.39,0,0
    >>Kill |cRXP_ENEMY_enemies|r and |TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Legion Communicator|r in the area.
    .accept 39279 >>Accept Assault on Mardum (Bonus Objective)
    .complete 39279,1 --Assault the Legion in the lowlands (100%)
    --x .mob
step
    #title Check Fel Crystal Location
    #completewith next
    .goto 672,29.73,62.37,10,0
    .goto 672,28.83, 61.25,8 >>Check for Empowered Fel Crystal(Green Fel Crystal).
step
    .goto 672,31.57,61.91
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Legion Banner|r
    .complete 40378,1 --1/1 Ashtongue forces
step
    .goto 672,31.51,62.34
    >>|TInterface/cursor/crosshair/interact.blp:20|tInteract with the |cRXP_FRIENDLY_Felsaber.|r
    .complete 40378,2 --1/1 Accept Illidan's Gift
    .target Felsaber
step
    #title Check for Fel Crystal
    #completewith next
    .goto 672,31.97,65.82,8 >>Check for Empowered Fel Crystal(Green Fel Crystal).
step
    .goto 672,31.83,65.43,5,0
    .goto 672,33.94,70.05
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Legion Gateway.|r
    .complete 40378,3 --1/1 Find Allari to the southeast
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Allari the Souleater|r and |cRXP_FRIENDLY_Sevis Brightflame|r
    .turnin 40378 >>Turn in Enter the Illidari: Ashtongue
    .accept 38759 >>Accept Set Them Free
    .accept 39049 >>Accept Eye On the Prize
    .goto 672,33.94,70.05
    .accept 40379 >>Accept Enter the Illidari: Coilskar
    .goto 672,33.94,69.96
    .target Allari the Souleater
    .target Sevis Brightflame
step
    .goto 672,34.86,70.21
    .turnin 39970 >> Open the chest |cFFfa9602in the back of the cave.|r
step
    #completewith next
    .goto 672,33.82,70.10,10 >>Leave the small cave
step
    #completewith next
    .cast 193547 >>Use the |T441143:0|t[Fel Crystal Fragments]  for a Movement Speed and Damage buff
    *|cRXP_WARN_Refresh when buff is fading.|r
step
    .goto 672,39.00,73.24
    >>Kill an |cff00ecffAnguish Jailer|r and loot him for |cRXP_LOOT_Soulwrought Key|r
    .complete 38759,1 --1/1 Soulwrought Key
step
    .goto 672,39.34,71.64
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Cage|r
    .complete 38759,3 --1/1 Cyana Nightglaive freed
step
    .goto 672,41.74,73.22
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Cage|r and the |cRXP_PICK_Legion Communicator|r
    .complete 38759,2 --1/1 Belath Dawnblade freed
step
    .goto 672,42.63,79.37
    >>Kill |cff00ecffInquisitor Baleful|r.
    *|cRXP_WARN_While he is immune, refrain from moving away from him to prevent him from evading.|r
    .complete 39049,1 --1/1 Inquisitor Baleful slain & power taken
    .mob Inquisitor Baleful
step
    .goto 672,43.43,72.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ashtongue Mystic|r
    .complete 40379,1 --1/1 Soul sacrificed
    .skipgossip
    .target Ashtongue Mystic
step
    .goto 672,43.75,72.07
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Legion Gateway|r
    .complete 40379,2 --1/1 Coilskar forces
step
    #title Check Fel Crystal Location
    #completewith next
    .goto 672,42.38,70.68,10 >>Check for Empowered Fel Crystal(Green Fel Crystal) |cfff78300inside the lava|r.
step
    .goto 672,41.56,66.60
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Cage.|r
    .complete 38759,5 --1/1 Mannethrel Darkstar freed
step
    #title Check Fel Crystal Location
    #completewith next
    .goto 672,41.31,67.02,10,0
    .goto 672,38.74,68.27,10 >>Check for Empowered Fel Crystal(Green Fel Crystal) |cfff78300above the cave|r. You can manually skip this step if it's not there
step
    .goto 672,38.58,67.85
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Cage|r
    .complete 38759,4 --1/1 Izal Whitemoon freed
step
    #completewith next
    .goto 672,39.20,68.70,10 >>Leave the small cave
step
    .goto 672,38.8,60.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jace Darkweaver|r
    .turnin 38759 >>Turn in Set Them Free
    .turnin 39049 >>Turn in Eye On the Prize
    .turnin 40379 >>Turn in Enter the Illidari: Coilskar
    .target Jace Darkweaver
step
    .goto 672,38.8,60.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jace Darkweaver|r
    .accept 39050 >>Accept Meeting With the Queen
    .target Jace Darkweaver
step
    .goto 672,38.75,60.53
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Nether Crucible|r
    >>|cRXP_WARN_Press "Escape" on your keyboard to skip the cinematic.|r
    .complete 39050,1 --1/1 Ritual completed
step
    .goto 672,38.8,60.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jace Darkweaver|r
    .turnin 39050 >>Turn in Meeting With the Queen
    .accept 38765 >>Accept Enter the Illidari: Shivarra
    .accept 38766 >>Accept Before We're Overrun
    .target Jace Darkweaver
step
    #title Check Fel Crystal Location
    #completewith next
    .goto 672,41.13,52.29,10 >>Check for Empowered Fel Crystal(Green Fel Crystal) |cfff78300above the cave|r.
step
    >>Kill |cff00ecffBeliash|r
    .goto 672,35.16,39.30
    .complete 38766,1 --1/1 Beliash slain & power taken
    .mob Beliash
step
    .goto 672,39.69,39.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sevis|r
    >>|cRXP_WARN_During the "Eye Beam" cast you can walk|r
    .complete 38765,1 --1/1 Sacrifice made
    .skipgossip 1
step
    .goto 672,40.33,38.41
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Legion Gateway|r
    .complete 38765,2 --1/1 Shivarra forces
step
    #title Check Fel Crystal Location
    #completewith next
    .goto 672,42.03,39.31,10 >>Check for Empowered Fel Crystal(Green Fel Crystal) |cfff78300above the cave|r.
step
    #rqeuires MardumAssaultonMardum
    #completewith next
    +|cfff78300Mount up and follow the way|r
step
    #rqeuires MardumAssaultonMardum
    .goto 672,60.51,44.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .turnin 38765 >>Turn in Enter the Illidari: Shivarra
    .turnin 38766 >>Turn in Before We're Overrun
    .target Kayn Sunfury
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .goto 672,60.51,44.75
    .accept 38813 >>Accept Orders for Your Captains
step
    .goto 672,59.23,46.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady S'theno|r
    .complete 38813,2 --1/1 Lady S'theno briefed
    .skipgossip
    .target Lady S'theno
step
    .goto 672,61.0,46.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matron Mother|r
    .complete 38813,3 --1/1 Matron Mother Malevolence briefed
    .skipgossip
step
    .goto 672,62.2,46.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Battlelord Gaardoun|r
    .complete 38813,1 --1/1 Battlelord Gaardoun briefed
    .skipgossip
    .target Battlelord Gaardoun
step
    .goto 672,60.51,44.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .turnin 38813 >>Turn in Orders for Your Captains
    .accept 39262 >>Accept Give Me Sight Beyond Sight
    .target Kayn Sunfury
step
    #completewith next
    .cast 200749 >>Press N and select a specialization (Recommendation: Havoc)
step
    .goto 672,64.05,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jace Darkweaver|r
    .complete 39262,1 --1/1 Speak with Jace Darkweaver
    .skipgossip 96436,1
    .target Jace Darkweaver
step
    .goto 672,63.97,52.73
    >>Use |T188501:0|tSpectral Sight |cRXP_WARN_while facing the cave.|r
    .complete 39262,2 --1/1 Face the Cave & Use Spectral Sight
    .usespell 188501
step
    .goto 672,64.05,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jace Darkweaver|r
    .turnin 39262 >>Turn in Give Me Sight Beyond Sight
    .accept 39495 >>Accept Hidden No More
    .target Jace Darkweaver
step
    #completewith next
    .goto 673,44.24,51.08,8,0
    .goto 673,51.31,55.88,8,0
    .goto 673,55.17,56.64,8 >>Enter the cave and use double jump to ascend the ledge on your left.
step
    .goto 673,59.1,61.9
    >>Kill |cff00ecffFel Lord Caza|r
    .complete 39495,1 --1/1 Caza slain & power taken
    .target Fel Lord Caza
step
    .goto 673,54.77,58.28
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_chest|r for a ring.
    .turnin 39973,1 >> Click the Chest
step
    #completewith next
    .hs >> Use Hearthstone |cFFfa9602to Illidari Foothold|r
step
    .goto 672,60.51,44.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .turnin 39495 >>Turn in Hidden No More
    .accept 38727 >>Accept Stop the Bombardment
    .target Kayn Sunfury
step
    .goto 672,60.56,44.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyana Nightglaive|r
    .accept 38819 >>Accept Their Numbers Are Legion
    .target Cyana Nightglaive
step
    .goto 672,60.52,44.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Allari the Souleater|r
    .accept 38725 >>Accept Into the Foul Creche
    .target Allari the Souleater
step
    #completewith
    >>Kill |cRXP_ENEMY_mobs|r in the area
    .complete 38819,1 --War progress (100%)
    --x .mob
step
    .goto 672,69.26,48.72
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Object|r
    .complete 38727,1 --1/1 Doom Fortress Devastator
step
    #completewith next
    .goto 672,72.39,46.87,15,0
    .goto 672,73.13,45.85,15 >> Use double jump to climb the wall.
step
    #completewith next
    .goto 672,75.01,41.08
    .cast 6477 >>Place the banner
step
    #completewith next
    .complete 38727,2 --1/1 Forge of Corruption Devastator
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'vas|r
    .goto 672,73.15,33.83
    .turnin 38725 >>Turn in Into the Foul Creche
    .accept 40222 >>Accept The Imp Mother's Tome
step
    .goto 672,77.05,28.04
    >>Kill |cff00ecffProlifica|r and loot her for |cRXP_LOOT_Tome of Fel Secrets|r
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
    .goto 672,68.21,28.06,25,0
    .goto 672,66.23,25.97,25,0
    .goto 672,64.89,27.25,30,0
    .goto 672,63.71,29.63
    >>Kill |cRXP_ENEMY_mobs|r in the area
    .complete 38819,1 --War progress (100%)
    --x .mob
step
    .complete 38727,3 --1/1 Soul Engine Devastator
step
    #requires Area1
    #completewith next
    +|cfff78300Mount up and follow the arrow|r
step
    #requires Area1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r and |cRXP_FRIENDLY_Kor'vas|r
    >>|cRXP_WARN_If you still have the Felrush Buff you can Felrush over the Abyss directly to Kayn|r
    .turnin 38727 >>Turn in Stop the Bombardment
    .turnin 38819 >>Turn in Their Numbers Are Legion
    .goto 672,60.52,44.76
    .turnin 40222 >>Turn in The Imp Mother's Tome
    .accept 40051 >>Accept Fel Secrets
    .goto 672,60.5,44.8
    .target Kayn Sunfury
    .target Kor'vas Blodthorn
step
    .goto 672,60.56,44.76
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_book|r and choose a specialization |cRXP_WARN_(Recommendation: Havoc)|r
    .complete 40051,1 --1/1 Choose between Havoc & Vengeance
step
    .goto 672,60.52,44.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .turnin 40051 >>Turn in Fel Secrets
    .accept 39516 >>Accept Cry Havoc and Let Slip the Illidari!
    .target Kayn Sunfury
step
    .goto 672,60.52,44.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_NPC's|r
    .complete 39516,4 --1/1 Kor'vas taught
    .complete 39516,1 --1/1 Allari taught
    .complete 39516,3 --1/1 Kayn taught
    .complete 39516,2 --1/1 Cyana taught
    .skipgossip 1
    .skipgossip 93127,2
    .target Kor'vas Bloodthorn
    .target Allari the Souleater
    .target Kayn Sunfury
    .target Cyana Nightglaive
    --x fix npc order / talk to
step
    .goto 672,60.25,44.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mannethrel Darkstar|r
    .complete 39516,5 --1/1 Mannethrel taught
    .skipgossip 2
    .target Mannethrel Darkstar
step
    .goto 672,60.52,44.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .turnin 39516 >>Turn in Cry Havoc and Let Slip the Illidari!
    .accept 39663 >>Accept On Felbat Wings
    .target Kayn Sunfury
step
    .goto 672,62.52,44.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Izal Whitemoon|r |cRXP_WARN_after doing /sit.|r
    .complete 39663,1 --1/1 Ride to the Fel Hammer
    .skipgossip
step
    #completewith next
    .goto 672,69.9,44.2,40,0
    +Leap to your Death by jumping into the Abyss, wait on the Resurrection
step
    .goto 672,69.93,44.23
    >>Engage the |cRXP_ENEMY_Brood Queen Tyranna|r in combat and persist until she retreats into the shadows then |Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyana Nightglaive|r
    .turnin 39663 >>Turn in On Felbat Wings
    .target Cyana Nightglaive
    .mob Brood Queen Tyranna
step
    .goto 672,69.9,44.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyana Nightglaive|r
    .accept 38728 >>Accept The Keystone
    .target Cyana Nightglaive
step
    .goto 672,70.0,40.6
    >>Kill the |cff00ecffBrood Queen Tyranna|r and loot her for |cRXP_LOOT_Sargerite Keystone|r
    .complete 38728,1 --1/1 Sargerite Keyston
    .mob Brood Queen Tyranna
step
    .goto 672,70.88,39.09,-1
    .goto 672,70.95,41.90,-1
    .goto 672,68.84,41.97,-1
    .goto 672,68.80,39.13,-1
    >>Go |cRXP_WARN_downstairs|r
    .complete 38728,2 --1/1 Find the way downstairs
step
    .goto 672,69.86,37.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    >>|cRXP_WARN_Wait for the brief roleplay, which will be completed when the timer runs out.|r
    .turnin 38728 >>Turn in The Keystone
    .timer 7,Roleplay Duration
    .accept 38729 >>Accept Return to the Black Temple
step
    .goto 672,69.85,37.81
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Sargerite Keystone.|r
    .complete 38729,1 --1/1 Sargerite Keystone activated
step
    .goto 672,69.85,37.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClick the |cRXP_WARN_Fel Portal|r
    .turnin 38729 >>Turn in Return to the Black Temple
step
    .goto 677,80.09,36.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maiev Shadowsong|r
    .accept 38672 >>Accept Breaking Out
    .target Maiev Shadowsong
step
    .goto 677,78.63,38.31
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Altruis's Cell.|r
    .complete 38672,1 --1/1 Altruis freed
step
    .goto 677,78.59,34.86
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Kayn's Cell.|r
    .complete 38672,2 --1/1 Kayn freed
step
    .goto 677,77.8,35.7
    >>|cRXP_WARN_Wait for the brief roleplay, which will be completed when the timer runs out.|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Lever.|r
    .turnin 38672 >>Turn in Breaking Out
    .timer 8,Roleplay Duration
step
    .goto 677,74.47,35.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .accept 38690 >>Accept Rise of the Illidari
    .target Kayn Sunfury
step
    .goto 677,74.42,37.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
    .accept 38689 >>Accept Fel Infusion
    .target Altruis the Sufferer
step
    #completewith next
    >>|cRXP_WARN_It's crucial to make some progress on it, but avoid completing it entirely.|r
    .complete 39742,1 -- Repel the Legion Attackers
step
    #sticky
    #label Area2
    >>Tag as many |cRXP_ENEMY_Savage Stalkers|r as possible and kill them while |TInterface/cursor/crosshair/interact.blp:20|tclicking |cRXP_PICK_cells|r
    .complete 38689,1 --100/100 Fel Energy regained
    .mob Savage Stalker
step
    .goto 677,75.04,39.27
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Warden Cell|r
    .complete 38690,1,1 --8/8 Imprisoned Illidari freed
step
    .isOnQuest 38690
    .goto 677,74.46,32.53,8 >>Use double jump to ascend the ledge.
step
    .goto 677,72.14,32.03
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Warden Cell|r
    .complete 38690,1,2 --8/8 Imprisoned Illidari freed
step
    .goto 677,71.01,27.55
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Warden Cell|r
    .complete 38690,1,3 --8/8 Imprisoned Illidari freed
step
    .goto 677,66.10,31.88
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Warden Cell|r
    .complete 38690,1,4 --8/8 Imprisoned Illidari freed
step
    .goto 677,63.12,33.82
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Warden Cell|r
    .complete 38690,1,5 --8/8 Imprisoned Illidari freed
step
    .isOnQuest 38690
    .goto 677,63.55,39.87,8 >>Double Jump the Ledge
step
    .goto 677,65.95,40.93
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Warden Cell|r
    .complete 38690,1,6 --8/8 Imprisoned Illidari freed
step
    .goto 677,66.37,43.05
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Warden Cell|r
    .complete 38690,1,7 --8/8 Imprisoned Illidari freed
step
    .goto 677,71.87,43.27
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Warden Cell|r
    .complete 38690,1,8 --8/8 Imprisoned Illidari freed
step
    #requires Area2
    #completewith next
    .goto 677,61.52,36.49,20,0
    .goto 677,51.23,37.05,20 >>|cRXP_WARN_Follow the arrow|r
step
    #requires Area2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r,|cRXP_FRIENDLY_Kayn Sunfury|r and |cRXP_FRIENDLY_Maiev Shadowsong|r
    .turnin 38689 >>Turn in Fel Infusion
    .goto 677,49.68,49.3
    .turnin 38690 >>Turn in Rise of the Illidari
    .goto 677,49.17,49.48
    .accept 38723 >>Accept Stop Gul'dan! << Female
    .accept 40253 >>Accept Stop Gul'dan! << Male
    .goto 677,49.46,49.76
    .target Altruis the Sufferer
    .target Kayn Sunfury
    .target Maiev Shadowsong
step
    .goto 677,50.1,74.5
    >>Kill |cff00ecffCrusher & Sledge|r.
    *|cRXP_WARN_They have shared HP|r
    .complete 38723,2 << Female --1/1 Crusher & Sledge slain & power taken
    .complete 40253,2 << Male --1/1 Crusher & Sledge slain & power taken
    .mob Crusher
    .mob Sledge
step
    .goto 677,50.75,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .turnin 38723 >>Turn in Stop Gul'dan! << Female
    .turnin 40253 >>Turn in Stop Gul'dan! << Male
    .accept 39682 >>Accept Grand Theft Felbat
    .target Kayn Sunfury
step
    #completewith next
    .goto 677,50.06,37.06,15,0
    .goto 677,42.93,32.10,15,0
    .goto 677,54.04,29.34,15 >>|cRXP_WARN_Follow the way up|r
step
    .goto 677,49.58,30.63
    >>|cRXP_WARN_Last chance to complete this.|r
    .complete 39742,1 -- Repel the Legion Attackers
step
    .goto 677,54.27,29.14,15,0
    .goto 677,48.51,20.14
    >>|TInterface/cursor/crosshair/interact.blp:20|tInteract with the |cRXP_FRIENDLY_Vampiric Felbat|r
    .complete 39682,1 --1/1 Ride a Vampiric Felbat to the Upper Vault
    .target Vampiric Felbat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'vas Bloodthorn|r and |cRXP_FRIENDLY_Allari the Souleater|r
    .goto 678,41.33,47.33
    .turnin 39682 >>Turn in Grand Theft Felbat
    .accept 39685 >>Accept Frozen in Time
    .accept 39684 >>Accept Beam Me Up
    .accept 39683 >>Accept Forged in Fire << Female
    .accept 40254 >>Accept Forged in Fire << Male
    .goto 678,41.12,47.17
    .target Kor'vas Bloodthorn
    .target Allari the Souleater
step
    .goto 678,46.77,36.91,15,0
    .goto 678,46.7,17.8
    >>Kill |cff00ecffImmolanth|r
    .complete 39683,1 << Female --1/1 Immolanth slain & power taken
    .complete 40254,1 << Male --1/1 Immolanth slain & power taken
    .mob Immolanth
step
    .goto 678,46.74,36.41,15,0
    .goto 678,54.76,48.15,15,0
    .goto 678,70.54,49.62
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Mirror|r
    *|cRXP_WARN_Make sure to dodge the discs|r
    .complete 39684,1 --1/1 Mirror rotated
step
    .goto 678,59.05,48.2,10,0
    .goto 678,52.93,58.45,15,0
    .goto 678,46.84,66.84,10,0
    .goto 678,50.1,78.2
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Orb|r
    .complete 39685,1 --1/1 Eastern Countermeasure activated
step
    .goto 678,56.77,51.86,15,0
    .goto 678,48.44,63.66,15,0
    .goto 678,46.8,84.1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Orb|r
    .complete 39685,2 --1/1 Southern Countermeasure activated
step
    .goto 678,43.4,78.2
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Orb|r
    .complete 39685,3 --1/1 Western Countermeasure activated
step
    .goto 678,46.63,66.17,8,0
    .goto 678,46.83,60.12,8,0
    .goto 678,41.1,47.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Allari the Souleater|r
    .turnin 39685 >>Turn in Frozen in Time
    .turnin 39683 >>Turn in Forged in Fire << Alliance
    .turnin 40254 >>Turn in Forged in Fire << Horde
    .turnin 39684 >>Turn in Beam Me Up
    .accept 39686 >>Accept All The Way Up
    .target Allari the Souleater
step
    .goto 678,46.69,48.12
    >>|cRXP_WARN_Proceed to the location of the elevator and patiently await its arrival.|r
    .complete 39686,1 --1/1 Ascend to the Hall of Judgment
step
    .goto 679,24.41,55.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'vas Bloodthorn|r
    .turnin 39686 >>Turn in All The Way Up
    .accept 40373 >>Accept A New Direction
    .target Kor'vas Bloodthorn
step
    .goto 679,24.52,53.05
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Pool of Judgment.|r
    .complete 40373,1 --1/1 Pool of Judgment viewed
step
    .goto 679,24.52,53.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'vas Bloodthorn|r and select either |cRXP_FRIENDLY_Kayn|r or |cRXP_FRIENDLY_Altruis.|r
    .complete 40373,2 --1/1 Choose between Kayn and Altruis
    .target Kor'vas Bloodthorn
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
    .goto 679,39.46,80.59,20 >>|cRXP_WARN_Follow the arrow|r
step
    .isOnQuest 40256
    >>Kill |cff00ecffBastillax|r
    .goto 679,50.34,77.76
    .complete 40256,1 --1/1 Bastillax slain & power taken
    .mob Bastillax
step
    .isOnQuest 39694
    >>Kill |cff00ecffBastillax|r
    .goto 679,50.34,77.76
    .complete 39694,1 --1/1 Bastillax slain & power taken
    .mob Bastillax
step
    .isOnQuest 40255
    >>Kill |cff00ecffBastillax|r
    .goto 679,50.34,77.76
    .complete 40255,1 --1/1 Bastillax slain & power taken
    .mob Bastillax
step
    .isOnQuest 39688
    >>Kill |cff00ecffBastillax|r
    .goto 679,50.34,77.76
    .complete 39688,1 --1/1 Bastillax slain & power taken
    .mob Bastillax
step
    #completewith next
    .goto 679,63.39,80.28,10,0
    .goto 679,72.67,78.62,5,0
    .goto 679,78.89,80.04,5,0
    .goto 679,78.22,87.79,5 >>Double Jump + Felrush to make it up the Mountain to force Khadgar to spawn early
    >>|cRXP_WARN_Follow the Waypoints closely|r
step
    #label MardumBetweenUsAndFreedom
    .goto 679,83.98,82.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
    .turnin -39688 >>Turn in Between Us and Freedom << NightElf
    .turnin -40255 >>Turn in Between Us and Freedom << NightElf
    .turnin -40256 >>Turn in Between Us and Freedom << BloodElf
    .turnin -39694 >>Turn in Between Us and Freedom << BloodElf
    .target Altruis the Sufferer
step << Alliance
    .goto 679,85.98,84.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Khadgar|r
    .accept 39689 >>Accept Illidari, We Are Leaving
    .turnin 39689 >>Turn in Illidari, We Are Leaving
    .target Archmage Khadgar
step << Alliance
    .goto 84,72.55,47.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Khadgar|r
    .accept 39691 >>Accept The Call of War
    .target Archmage Khadgar
step << Alliance
    .goto 84,83.73,34.40
    .complete 39691,1 --1/1 Enter |cFFfa9602the Throne Room.|r
step << Alliance
    .goto 84,84.39,33.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jace Darkweaver|r
    .turnin 39691 >>Turn in The Call of War
    .accept 44471 >>Accept Second Sight
    .target Jace Darkweaver
step << Alliance
    >>|cRXP_WARN_Use Spectral Sight|r
    .complete 44471,1 --1/1 Spectral Sight used
    .usespell 188501
step << Alliance
    .goto 84,84.39,33.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jace Darkweaver|r
    .turnin 44471 >>Turn in Second Sight
    .accept 44463 >>Accept Demons Among Them
    .target Jace Darkweaver
step << Alliance
    .goto 84,85.90,31.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin Wrynn|r
    .complete 44463,1 --1/1 Warn Anduin Wrynn
    .skipgossip
    .target Anduin Wrynn
step << Alliance
    >>Kill |cRXP_ENEMY_Demons|r
    .complete 44463,2 --5/5 Demons slain
    --x .mob
step << Alliance
    .goto 84,85.75,31.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin Wrynn|r
    .turnin 44463 >>Turn in Demons Among Them
    Anduin Wrynn
step << Alliance
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renato Gallina|r
    .accept 332 >>Accept Wine Shop Advert
    .nodmf
    .isQuestTurnedIn 44463 --x DH Check
    .target Renato Gallina
step <<Alliance
    #completewith next
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartlett the Brave|r |cFFfa9602in Goldshire.|r
    .fp >>Get the Goldshire Flight Path
    .nodmf
    .isQuestTurnedIn 44463 --x DH Check
    .target Bartlett the Brave
step <<Alliance
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
    .isQuestTurnedIn 31450 --x dh check
step <<Alliance
    #fresh
    #completewith DarkMoonFaire
    +The Darkmoon Faire event is now active, |cRXP_WARN_which guarantees you to gain an additional level for free and a temporary 10% experience boost.|r
    .isQuestTurnedIn 31450 --x dh check
step <<Alliance
    #completewith next
    .link /run AbandonSkill(186); AbandonSkill(182);>> |cRXP_WARN_Click this text to receive a macro that will unlearn your professions.|r
    .dmf
    .isQuestTurnedIn 31450 --x dh check
step <<Alliance
    #label DarkMoonFaire
    .goto 84,80.46,37.71,10,0
    .goto 84,72.51,46.59,30,0
    .goto 84,70.27,46.83,10,0
    .goto 84,62.1,32.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage|r
    .accept 7905 >>Accept The Darkmoon Faire
    .isQuestTurnedIn 40378 --x Demon Hunter Check
    .dmf
    .target Darkmoon Faire Mystic Mage
step <<Alliance
    .goto 84,62.25,72.96
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage|r
    .skipgossip
    .zoneskip 37
    .dmf
    .isQuestTurnedIn 31450 --x dh check
    .target Darkmoon Faire Mystic Mage
step << Horde
    .goto 679,85.98,84.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Khadgar|r
    .accept 39690 >>Accept Illidari, We Are Leaving
    .turnin 39690 >>Turn in Illidari, We Are Leaving
    .target Archmage Khadgar
step << Horde
    .goto 85,52.53,88.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Khadgar|r
    .accept 40976 >>Accept Audience with the Warchief
    .target Archmage Khadgar
step << Horde
    .goto 85,50.0,76.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Saurfang|r
    .complete 40976,1 --1/1 Report to Saurfang
    .target Saurfang
step << Horde
    .goto 1,45.8,15.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Allari the Souleater|r
    .turnin 40976 >>Turn in Audience with the Warchief
    .accept 40982 >>Accept Second Sight
    .target Allari the Souleater
step << Horde
    .goto 1,45.8,15.1
    >>|cRXP_WARN_Use Spectral Sight|r
    .complete 40982,1 --1/1 Spectral Sight used
    .usespell 188501
step << Horde
    .goto 1,45.8,15.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Allari the Souleater|r
    .turnin 40982 >>Turn in Second Sight
    .accept 40983 >>Accept Demons Among Them
    .target Allari the Souleater
step << Horde
    .goto 1,45.7,15.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r
    .complete 40983,1 --1/1 Warn Warchief Sylvanas
    .target Lady Sylvanas Windrunner
step << Horde
    .goto 1,45.80,14.77,15,0
    .goto 1,46.67,14.75,15,0
    .goto 1,46.94,16.50,15,0
    .goto 1,46.41,17.88,15,0
    .goto 1,45.60,16.47,15,0
    .goto 1,46.19,15.65
    >>Kill |cRXP_ENEMY_Demons|r
    .complete 40983,2 --12/12 Demons slain
    --x .mob
step << Horde
    .goto 1,45.68,15.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r
    .turnin 40983 >>Turn in Demons Among Them
    .accept 41002 >>Accept A Weapon for the Horde
    .target Lady Sylvanas Windrunner
]])
