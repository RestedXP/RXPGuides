RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP War Within Endgame
#subgroup |cFFFCDC00(80)|r 11.2 The Knife's Edge
#subweight 999.59
#name an) Chapter 1 - A Shadowy Invitation
#displayname |cFF00CCFF1|r - A Shadowy Invitation
#next ao) Chapter 2 - Void Alliance

step
    #completewith next
    #label Shadowy Invitation
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .turnin 84956 >>Turn in A Shadowy Invitation
    .target Locus-Walker
    .accept 84957 >>Accept Return to the Veiled Market
    .disablecheckbox
step
    #completewith Shadowy Invitation
    .zone 2339 >>Enter Dornogal
step
    #requires Shadowy Invitation
    .goto 2339,42.11,26.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .turnin 84956 >>Turn in A Shadowy Invitation
    .target Locus-Walker
    .accept 84957 >>Accept Return to the Veiled Market
    .timer 23,RP
step
    .goto 2339,40.41,22.89
    #title |cFFFCDC00Follow the Arrow|r
    .complete 84957,1 --1/1 Follow Locus-Walker
step
    .goto 2339,40.30,22.71
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 84957,2 --1/1 Take the Spatial Rift to Tazavesh
step
    .goto 2472,59.75,83.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .turnin 84957 >>Turn in Return to the Veiled Market
    .target Locus-Walker
step
    #hidewindow
    #completewith next
    #label Restoring Operational Efficiency
    .accept 85003 >>Accept Restoring Operational Efficiency
step
    #completewith Restoring Operational Efficiency
    .achievementComplete 41970,4,1
    .gossipoption 134153 >>Talk to |cRXP_FRIENDLY_Om'en|r
    .target Om'en
step
    #requires Restoring Operational Efficiency
    .goto 2472,59.55,83.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Om'en|r
    .accept 85003 >>Accept Restoring Operational Efficiency
    .target Om'en
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ta'ka|r and |cRXP_FRIENDLY_Xy'bin|r
    .accept 84958 >>Accept Beasts Unbound
    .goto 2472,56.86,73.02
    .target +Ta'ka
    .accept 85039 >>Accept Compromised Containment
    .goto 2472,56.64,72.88
    .target +Xy'bin
step
    .goto 2472,53.15,64.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ba'ver|r
    .accept 84959 >>Accept Lost Lines of Defense
    .target Ba'ver
step
    #completewith UnstableArtifactSealedB
    >>Kill |cRXP_ENEMY_Unstable Motes|r, |cRXP_ENEMY_Enchanted Ledgers|r, and |cRXP_ENEMY_Unstable Manifestations|r
    .complete 85039,1 --Arcane entities destroyed (100%)
    .mob Unstable Mote
    .mob Enchanted Ledger
    .mob Unstable Manifestation
step
    #completewith UnstableArtifactSealedB
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Stolen Barrier Projectors|r
    .complete 84959,1 --8/8 Stolen Barrier Projector
step
    #completewith next
    #label UnstableArtifactSealedA
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Unstable Artifact|r
    .complete 85039,2 --1/1 Unstable Artifact sealed
step
    #title |cFFFCDC00Enter the chamber|r
    #completewith UnstableArtifactSealedA
    .goto 2472,56.50,52.65,12 >>Enter the chamber
step
    #requires UnstableArtifactSealedA
    #label UnstableArtifactSealedB
    .goto 2472,59.59,46.81
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Unstable Artifact|r
    .complete 85039,2 --1/1 Unstable Artifact sealed
step
    #completewith next
    >>Kill |cRXP_ENEMY_Unstable Motes|r, |cRXP_ENEMY_Enchanted Ledgers|r, and |cRXP_ENEMY_Unstable Manifestations|r
    .complete 85039,1 --Arcane entities destroyed (100%)
    .mob Unstable Mote
    .mob Enchanted Ledger
    .mob Unstable Manifestation
step
    #completewith next
    #label StolenBarrierProjectorA
    .goto 2472,61.74,48.11,12,0
    .goto 2472,60.03,44.92,12,0
    .goto 2472,55.60,44.03,12,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Stolen Barrier Projectors|r
    .complete 84959,1 --8/8 Stolen Barrier Projector
step
    #hidewindow
    #completewith StolenBarrierProjectorA
    .goto 2472,53.43,44.91,15 >>1
step
    #requires StolenBarrierProjectorA
    #hidewindow
    #completewith ArcaneEntitiesA
    #loop
    .goto 2472,52.87,51.01,18,0
    .goto 2472,53.80,54.57,18,0
    .goto 2472,56.46,54.52,18,0
    .goto 2472,57.58,56.78,18,0
    .goto 2472,53.04,57.61,18,0
    .goto 2472,50.78,54.68,18,0
    +1
step
    #requires StolenBarrierProjectorA
    #completewith next
    >>Kill |cRXP_ENEMY_Unstable Motes|r, |cRXP_ENEMY_Enchanted Ledgers|r, and |cRXP_ENEMY_Unstable Manifestations|r
    .complete 85039,1 --Arcane entities destroyed (100%)
    .mob Unstable Mote
    .mob Enchanted Ledger
    .mob Unstable Manifestation
step
    #requires StolenBarrierProjectorA
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Stolen Barrier Projectors|r
    .complete 84959,1 --8/8 Stolen Barrier Projector
step
    #label ArcaneEntitiesA
    >>Kill |cRXP_ENEMY_Unstable Motes|r, |cRXP_ENEMY_Enchanted Ledgers|r, and |cRXP_ENEMY_Unstable Manifestations|r
    .complete 85039,1 --Arcane entities destroyed (100%)
    .mob Unstable Mote
    .mob Enchanted Ledger
    .mob Unstable Manifestation
step
    #completewith next
    .goto 2472,53.42,61.39,0,0
    +|cRXP_WARN_You can fly here|r. If not then take the portal.
step
    .goto 2472,53.08,64.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ba'ver|r
    .turnin 84959 >>Turn in Lost Lines of Defense
    .complete 85003,2 --1/1 Ba'ver assisted
    .target Ba'ver
step
    #completewith next
    .goto 2472,57.60,72.84,0,0
    >>|cRXP_WARN_You can fly here|r. If not then take the portal.
    .complete 84958,1 --1/1 Take the access to the overlook (Optional)
step
    #loop
    .goto 2472,62.71,59.51,30,0
    .goto 2472,66.38,77.05,40,0
    .goto 2472,51.43,86.23,40,0
    .goto 2472,42.70,70.01,40,0
    >>Kill the |cRXP_ENEMY_Escaped Creatures|r
    .complete 84958,2 --8/8 Escaped creatures recovered
    .mob Escaped Creature
step
    #completewith next
    #label CompromisedUnboundA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xy'bin|r and |cRXP_FRIENDLY_Ta'ka|r
    .turnin 85039 >>Turn in Compromised Containment
    .complete 85003,1 --1/1 Xy'bin assisted
    .target +Xy'bin
    .turnin 84958 >>Turn in Beasts Unbound
    .complete 85003,3 --1/1 Ta'ka assisted
    .target +Ta'ka
step
    #completewith next
    +Enter the room
    .goto 2472,57.37,75.58,-1
    .goto 2472,56.14,71.13,-1
step
    #completewith CompromisedUnboundA
    #hidewindow
    .goto 2472,56.74,72.97,30 >>1
step
    #requires CompromisedUnboundA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xy'bin|r and |cRXP_FRIENDLY_Ta'ka|r
    .turnin 85039 >>Turn in Compromised Containment
    .complete 85003,1 --1/1 Xy'bin assisted
    .goto 2472,56.65,72.84,-1
    .target +Xy'bin
    .turnin 84958 >>Turn in Beasts Unbound
    .complete 85003,3 --1/1 Ta'ka assisted
    .goto 2472,56.86,72.99,-1
    .target +Ta'ka
step
    .goto 2472,59.45,83.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Om'en|r
    .turnin 85003 >>Turn in Restoring Operational Efficiency
    .target Om'en
step
    .goto 2472,59.74,83.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .accept 84960 >>Accept The Darkness Among Us
    .target Locus-Walker
step
    .goto 2472,54.81,66.26
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Void Presence|r
    .complete 84960,1 --1/1 Investigate the Void Presence
step
    .goto 2472,47.81,63.46
    #title |cFFFCDC00Follow the Arrow|r
    .complete 84960,2 --1/1 Locate the source
step
    .goto 2472,47.43,65.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .complete 84960,3 --1/1 Speak to Locus-Walker
    .target Locus-Walker
    .skipgossipid 131268
step
    .goto 2472,47.43,65.77
    >>Kill 3 waves of |cRXP_ENEMY_Shadowguard Infiltrators|r and |cRXP_ENEMY_Nyz'raal the Umbral Blade|r
    .complete 84960,4 --1/1 Infiltrator's defeated
    .mob Shadowguard Infiltrator
    .mob Nyz'rall the Umbral Blade
step
    #completewith next
    #label DarknessAmongUsA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Om'en|r
    .turnin 84960 >>Turn in The Darkness Among Us
    .accept 84966 >>Accept Break the Assault
    .target Om'en
step
    #title |cFFFCDC00Leave the chamber|r
    #completewith DarknessAmongUsA
    .goto 2472,48.05,62.88,10 >>Leave the chamber
step
    #requires DarknessAmongUsA
    .goto 2472,54.06,63.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Om'en|r
    .turnin 84960 >>Turn in The Darkness Among Us
    .accept 84966 >>Accept Break the Assault
    .target Om'en
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Om'en|r, |cRXP_FRIENDLY_Alleria Windrunner|r, and |cRXP_FRIENDLY_Locus-Walker|r
    .accept 84963 >>Accept Sealing the Shadows
    .goto 2472,54.08,63.68,-1
    .target +Om'en
    .accept 84964 >>Accept Heroes Among Shadow
    .goto 2472,53.76,63.24,-1
    .target +Alleria Windrunner
    .accept 84961 >>Accept Barriers to Entry
    .goto 2472,54.17,63.09,-1
    .target +1Locus-Walker
step
    -- https://i.imgur.com/sYulo55.png (Minimap screenshot of Citizens (green), Projectors (blue))
    #completewith SaturatedEntropicCores
    #hidewindow
    #loop
    .goto 2472,49.92,57.97,15,0
    .goto 2472,46.03,51.34,15,0
    .goto 2472,41.39,49.02,15,0
    .goto 2472,40.09,51.51,15,0
    .goto 2472,39.47,41.84,15,0
    .goto 2472,44.43,40.35,18,0
    .goto 2472,44.44,36.23,15,0
    .goto 2472,58.33,32.69,15,0
    .goto 2472,55.74,38.38,18,0
    .goto 2472,51.36,41.17,15,0
    .goto 2472,53.59,40.69,18,0
    .goto 2472,53.23,44.12,18,0
    .goto 2472,52.49,46.77,15,0
    .goto 2472,49.85,58.03,15,0
    +1
step
    #completewith next
    >>Kill the |cRXP_ENEMY_Shadowguard forces|r. Loot them for the |T4037125:0|t[|cRXP_LOOT_Saturated Entropic Cores|r]
    .complete 84963,1 --5/5 Saturated Entropic Core
    .mob Shadowguard Duskwalker
    .mob Shadowguard Darkweaver
    .mob Shadowguard Voidripper
step
    -- There are exactly 8 projectors and there are enough citizens on the loop
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Barrier Projectors|r and |cRXP_FRIENDLY_Tazavesh Citizens|r
    .complete 84964,1 --8/8 Tazavesh Civilians rescued
    .complete 84961,1 --8/8 Barrier Projector placed
    .target Tazavesh Citizen
step
    #label SaturatedEntropicCores
    >>Kill the |cRXP_ENEMY_Shadowguard forces|r. Loot them for the |T4037125:0|t[|cRXP_LOOT_Saturated Entropic Cores|r]
    .complete 84963,1 --5/5 Saturated Entropic Core
    .mob Shadowguard Duskwalker
    .mob Shadowguard Darkweaver
    .mob Shadowguard Voidripper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r |cRXP_WARN_next to you|r.
    .turnin 84964 >>Turn in Heroes Among Shadow
    .turnin 84961 >>Turn in Barriers to Entry
    .turnin 84963 >>Turn in Sealing the Shadows
    .accept 84965 >>Accept Core Contributions
    .target Alleria Windrunner
step
    -- https://i.imgur.com/t9Ek1fB.png (Guardian position + loop, maybe change loop to only go to guardians on the roof)
    #loop
    .goto 2472,48.91,51.99,12,0
    .goto 2472,47.48,57.16,12,0
    .goto 2472,44.02,56.05,12,0
    .goto 2472,39.10,54.79,12,0
    .goto 2472,38.44,54.12,12,0
    .goto 2472,39.43,49.49,12,0
    .goto 2472,42.79,45.97,12,0
    .goto 2472,44.61,47.68,12,0
    .goto 2472,51.25,50.05,12,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Market Guardians|r
    .complete 84965,1 --5/5 Guardians activated
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r |cRXP_WARN_next to you|r.
    .turnin 84965 >>Turn in Core Contributions
    .accept 86835 >>Accept Regroup!
    .target Alleria Windrunner
step
    .goto 2472,40.53,67.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .turnin 86835 >>Turn in Regroup!
    .accept 84967 >>Accept The Shadowguard Shattered
    .target Locus-Walker
step
    #completewith next
    #label ShadowlordAlzarA
    >>Kill |cRXP_ENEMY_Shadowlord Al'zar|r
    .complete 84967,1 --1/1 Shadowlord Al'zar slain
    .mob Shadowlord Al'zar
step
    #completewith ShadowlordAlzarA
    #title |cFFFCDC00Enter the boss room|r
    .goto 2472,39.03,67.82,8 >>Enter the boss room
step
    #requires ShadowlordAlzarA
    .goto 2472,36.34,74.69
    >>Kill |cRXP_ENEMY_Shadowlord Al'zar|r
    .complete 84967,1 --1/1 Shadowlord Al'zar slain
    .mob Shadowlord Al'zar
step
    .goto 2472,37.80,74.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .turnin 84967 >>Turn in The Shadowguard Shattered
    .target Locus-Walker
]])

RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP War Within Endgame
#subgroup |cFFFCDC00(80)|r 11.2 The Knife's Edge
#name ao) Chapter 2 - Void Alliance
#displayname |cFF00CCFF2|r - Void Alliance
#next ap) Chapter 3 - Desert Power

step
    .goto 2472,37.68,74.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r.
    .accept 85032 >>Accept What Is Left of Home
    .target Locus-Walker
step
    #completewith next
    #label TalkToInkeeperA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_the Innkeeper|r.
    .complete 85032,1 --1/1 Talk to the Innkeeper
    .target the Innkeeper
step
    #completewith next
    #title |cFFFCDC00Leave the house|r
    .goto 2472,38.80,69.82,10,0
    .goto 2472,40.66,70.56,10,0
    .goto 2472,39.12,67.59,10,0
    .goto 2472,40.82,65.83,10 >>Leave the house
step
    #hidewindow
    #completewith next
    .goto 2472,40.82,65.83,10 >>1
step
    #hidewindow
    #completewith TalkToInkeeperA
    .goto 2472,41.12,25.09,120 >>1
step
    #requires TalkToInkeeperA
    #completewith next
    #label TalkToInkeeperB
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_the Innkeeper|r.
    .complete 85032,1 --1/1 Talk to the Innkeeper
    .target the Innkeeper
step
    #completewith next
    #title |cFFFCDC00Enter the house|r
    .goto 2472,42.71,31.57,10 >>Enter the house
step
    #hidewindow
    #completewith TalkToInkeeperB
    .goto 2472,41.12,25.09,50 >>1
step
    #requires TalkToInkeeperB
    .goto 2472,41.12,25.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ba'orr|r.
    .complete 85032,1 --1/1 Talk to the Innkeeper
    .target Ba'orr
    .skipgossipid 133203
    .skipgossipid 133205
    .skipgossipid 133223
step
    .goto 2472,40.62,29.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Om'sirik|r.
    .complete 85032,3 --1/1 Talk to the Quartermaster
    .target Om'sirik
    .skipgossipid 133225
step
    #completewith next
    #label TalkToFlightMasterA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Flight Master|r.
    .complete 85032,4 --1/1 Talk to the Flight Master
    .target the Flight Master
step
    #completewith next
    #title |cFFFCDC00Leave the hall|r
    .goto 2472,39.10,18.53,10 >>Leave the hall
step
    #completewith TalkToInkeeperA
    #hidewindow
    .goto 2472,34.76,9.96,50 >>1
step
    #requires TalkToFlightMasterA
    .goto 2472,34.75,10.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flight Master|r.
    .complete 85032,4 --1/1 Talk to the Flight Master
    .target the Flight Master
    .skipgossipid 133617
step
    .goto 2472,33.97,10.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .turnin 85032 >>Turn in What Is Left of Home
    .accept 85961 >>Accept Moving the Pawns
    .target Locus-Walker
step
    .goto 2371,48.23,36.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .turnin 85961 >>Turn in Moving the Pawns
    .accept 84855 >>Accept Dead Silence
    .target Locus-Walker
step
    .goto 2371,48.28,39.21
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Lo'shah|r
    .complete 84855,1 --1/1 Scout Lo'shah found
    .target Lo'shah
step
    .goto 2371,49.43,36.78
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Yanhal|r
    .complete 84855,2 --1/1 Scout Yanhal found
    .target Yanhal
step
    .goto 2371,50.68,35.14
    >>Kill |cRXP_ENEMY_Raz'ida|r
    .complete 84855,3 --1/1 Scout Raz'ida found
    .mob Raz'ida
step
    .goto 2371,48.19,36.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .turnin 84855 >>Turn in Dead Silence
    .accept 86495 >>Accept The Reshii Ribbon
    .target Locus-Walker
step
    .goto 2371,48.25,36.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r
    .complete 86495,2 --1/1 Alleria convinced
    .target Alleria Windrunner
    .skipgossipid 132007
    .skipgossip 233945,1
step
    .goto 2371,48.20,36.58
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Locus-Walker's Reshii Ribbon|r
    .complete 86495,3 --1/1 Locus-Walker's Reshii Ribbon acquired
step
    .goto 2371,48.18,36.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .turnin 86495 >>Turn in The Reshii Ribbon
    .accept 84856 >>Accept Where the Void Gathers
    .target Xal'atath
step
    .goto 2371,48.18,36.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .complete 84856,1 --1/1 Talk to Xal'atath
    .target Xal'atath
    .skipgossipid 131527
step
    #title |cFFFCDC00Avoid the Void Revealer|r
    .goto 2371,47.21,21.03,15,0
    .goto 2371,46.20,20.73,12,0
    .goto 2371,45.89,20.06,15,0
    .goto 2371,45.24,19.92
    >>Use the |T6654410:0|t[|cRXP_WARN_ExtraActionButton|r]
    .complete 84856,2 --1/1 Conduit examined
step
    #title |cFFFCDC00Avoid the Void Revealer|r
    .goto 2371,44.12,21.60,20,0
    .goto 2371,42.74,22.15,20,0
    .goto 2371,42.62,22.63
    >>Use the |T6654410:0|t[|cRXP_WARN_ExtraActionButton|r]
    .complete 84856,3 --1/1 Manaforge entrance examined
    .timer 30,RP
    -- Fix RP Duration
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r and |cRXP_FRIENDLY_Locus-Walker|r
    .turnin 84856 >>Turn in Where the Void Gathers
    .goto 2371,48.17,36.64
    .target +Xal'atath
    .accept 84857 >>Accept Eco-Dome: Primus
    .goto 2371,48.19,36.55
    .target +Locus-Walker
step
    .goto 2371,47.08,54.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .turnin 84857 >>Turn in Eco-Dome: Primus
    .target Locus-Walker
step
    .goto 2371,47.13,54.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ve'nari|r
    .accept 84858 >>Accept System Restart
    .target Ve'nari
step
    .goto 2371,46.20,57.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Om'loof|r
    .complete 84858,1 --1/1 Speak to Engineer Om'loof
    .target Engineer Om'loof
    .skipgossipid 125374
step
    .goto 2371,46.23,57.30
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rod of Parameters|r
    .complete 84858,2 --1/1 Rod of Parameters used
step
    .goto 2371,46.25,57.29
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rod of Analysis|r
    .complete 84858,3 --1/1 Rod of Analysis used
step
    .goto 2371,47.18,58.59
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rod of Analysis|r
    .complete 84858,4 --1/1 Rod of Analysis acquired
step
    .goto 2371,46.26,57.29
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rod of Analysis|r
    .complete 84858,5 --1/1 Rod of Analysis replaced
step
    .goto 2371,46.26,56.91
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rod of Restart|r
    .complete 84858,6 --1/1 Rod of Restart used
step
    .goto 2371,47.13,54.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ve'nari|r
    .turnin 84858 >>Turn in System Restart
    .accept 84859 >>Accept Damage Report 101
    .accept 84860 >>Accept Eco-Stabilizing
    .target Ve'nari
step
    .goto 2371,48.42,53.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Om'nittar|r
    .complete 84859,1 --1/1 Botanist Om'nittar found
    .target Om'nittar
step
    #loop
    .goto 2371,48.74,53.14,12,0
    .goto 2371,48.68,53.90,15,0
    .goto 2371,48.74,53.14,12,0
    .goto 2371,48.21,52.98,12,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Void Creeper|r
    .complete 84859,2 --6/6 Void Creepers dealt with
    .target Void Creeper
step
    .goto 2371,48.42,53.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Om'nittar|r
    .complete 84859,3 --1/1 Botanic report received
    .target Om'nittar
    .skipgossipid 125356
step
    .goto 2371,49.19,54.48
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Shadowguard Device|r
    .complete 84860,1 --1/1 Biome Z-22 stabilized
step
    .goto 2371,50.01,56.50
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Control Console V-37|r
    .complete 84860,2 --1/1 Biome V-37 stabilized
    .skipgossipid 131301
step
    #completewith next
    #label BiomeD28A
    #hidewindow
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rod of Activation|r
    .complete 84860,3 --1/1 Biome D-28 stabilized
step
    .isOnQuest 84860
    #completewith BiomeD28A
    .goto 2371,48.84,59.03
    .cast 1233199 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rod of Activation|r
step
    #requires BiomeD28A
    .goto 2371,48.80,59.08
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rod of Activation|r
    .complete 84860,3 --1/1 Biome D-28 stabilized
step
    .goto 2371,46.05,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Om'door|r
    .complete 84859,4 --1/1 Technician Om'door found
    .target Om'door
    .skipgossipid 131437
step
    #loop
    .goto 2371,45.88,57.84,18,0
    .goto 2371,46.66,59.21,18,0
    >>Use the |T4914669:0|t[|cRXP_WARN_ExtraActionButton|r] and aim at the |cRXP_PICK_Void Spores|r
    *|cRXP_WARN_If you don't have the ExtraActionButton then talk to |cRXP_FRIENDLY_Om'door|r again|r
    .complete 84859,5 --8/8 Void Spores collected
    .skipgossipid 131437
step
    .goto 2371,46.05,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Om'door|r
    .complete 84859,6 --1/1 Technician report received
    .target Om'door
    .skipgossipid 125353
step
    .goto 2371,47.11,54.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ve'nari|r
    .turnin 84860 >>Turn in Eco-Stabilizing 101
    .turnin 84859 >>Turn in Damage Report 101
    .accept 84861 >>Accept This Is Our Dome!
    .target Ve'nari
step
    .goto 2371,47.09,54.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .accept 84862 >>Accept Void Alliance
    .target Xal'atath
step
    #completewith DefenseMatricesPlacedA
    >>Kill the |cRXP_ENEMY_Shadowguard forces|r
    .complete 84861,1 --7/7 Shadowguard forces slain
    .mob Shadowguard forces
step
    .goto 2371,50.45,54.15
    #title Matrix placed (1/4)
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Defense Matrix|r
    .complete 84862,1,1 --1/4 Defense Matrices placed
step
    .goto 2371,51.00,56.34
    #title Matrix placed (2/4)
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Defense Matrix|r
    .complete 84862,1,2 --2/4 Defense Matrices placed
step
    .goto 2371,50.29,58.83
    #title Matrix placed (3/4)
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Defense Matrix|r
    .complete 84862,1,3 --3/4 Defense Matrices placed
step
    #label DefenseMatricesPlacedA
    .goto 2371,49.29,60.53
    #title Matrix placed (4/4)
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Defense Matrix|r
    .complete 84862,1 --4/4 Defense Matrices placed
step
    #loop
    .goto 2371,50.20,61.98,35,0
    .goto 2371,51.31,55.93,35,0
    .goto 2371,50.50,53.12,35,0
    .goto 2371,51.31,55.93,35,0
    >>Kill |cRXP_ENEMY_Shadowguard forces|r. |cRXP_WARN_A lot of them are invisible|r
    .complete 84861,1 --7/7 Shadowguard forces slain
    .mob Shadowguard Saboteur
    .mob Shadowguard Scout
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ve'nari|r and |cRXP_FRIENDLY_Xal'atath|r
    .turnin 84861 >>Turn in This Is Our Dome!
    .goto 2371,47.13,54.56
    .target +Ve'nari
    .turnin 84862 >>Turn in Void Alliance
    .accept 84865 >>Accept Divide and Conquer
    .accept 84864 >>Accept Her Dark Side
    .goto 2371,47.09,54.60
    .target +Xal'atath
    .accept 84863 >>Accept Counter Measures
    .goto 2371,47.13,54.56
    .target +Ve'nari
step
    #completewith EtherealConsoleOverloadedA
    >>Kill the |cRXP_ENEMY_Shadowguard forces|r
    .complete 84863,1 --12/12 Shadowguard forces eliminated
    .mob Shadowguard Speardancer
    .mob Shadowguard Voidblade
    .mob Shadowguard Riftcaller
step
    #completewith EtherealConsoleOverloadedA
    >>Use the |T5976941:0|t[|cRXP_WARN_ExtraActionButton|r] and aim it at the |cRXP_PICK_Shadowguard Cannons|r
    .complete 84865,1 --3/3 Shadowguard Cannons destroyed
step
    .goto 2371,54.10,48.13
    >>Use the |T4913234:0|t[|cRXP_WARN_ExtraActionButton|r] at the waypoint location
    .complete 84864,1 --1/1 Ethereal Siphon Barrier removed
    -- TODO: Add RP timer
step
    #label EtherealConsoleOverloadedA
    .goto 2371,54.10,48.13
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ethereal Siphon Console|r
    .complete 84864,2 --1/1 Ethereal Siphon Console overloaded
step
    #completewith next
    >>Kill the |cRXP_ENEMY_Shadowguard forces|r
    .complete 84863,1 --12/12 Shadowguard forces eliminated
    .mob Shadowguard Speardancer
    .mob Shadowguard Voidblade
    .mob Shadowguard Riftcaller
step
    #loop
    .goto 2371,54.52,50.42,25,0
    .goto 2371,52.53,49.75,25,0
    .goto 2371,52.30,48.08,25,0
    >>Use the |T5976941:0|t[|cRXP_WARN_ExtraActionButton|r] and aim it at the |cRXP_PICK_Shadowguard Cannons|r
    .complete 84865,1 --3/3 Shadowguard Cannons destroyed
step
    #loop
    .goto 2371,53.67,45.18,35,0
    .goto 2371,54.44,50.84,35,0
    .goto 2371,52.58,50.18,35,0
    .goto 2371,52.12,47.58,35,0
    >>Kill the |cRXP_ENEMY_Shadowguard forces|r
    .complete 84863,1 --12/12 Shadowguard forces eliminated
    .mob Shadowguard Speardancer
    .mob Shadowguard Voidblade
    .mob Shadowguard Riftcaller

step
    .goto 2371,54.47,46.95,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r |cRXP_WARN_next to you|r
    .turnin 84863 >>Turn in Counter Measures
    .turnin 84865 >>Turn in Divide and Conquer
    .turnin 84864 >>Turn in Her Dark Side
    .accept 84866 >>Accept To Purchase Safety
    .target Alleria Windrunner
step
    .goto 2371,54.48,46.63
    >>Kill |cRXP_ENEMY_Shadow-Captain Lakheesh|r
    .complete 84866,1 --1/1 Shadow-Captain Lakheesh slain
    .mob Shadow-Captain Lakheesh
step
    .goto 2371,54.27,45.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .turnin 84866 >>Turn in To Purchase Safety
    .accept 86946 >>Accept Unwrapped and Unraveled
    .target Xal'atath
step
    .goto 2371,47.07,54.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r
    .complete 86946,1 --1/1 Find Alleria in Eco-Dome Primus
    .skipgossipid 132658
step
    .goto 2371,47.12,54.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ve'nari|r
    .turnin 86946 >>Turn in Unwrapped and Unraveled
    .accept 90517 >>Accept My Part of the Deal
    .target Ve'nari
step
    .goto 2371,47.12,54.53
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ve'nari's Reshii Ribbon|r
    .complete 90517,1 --1/1 Ve'nari's Reshii Ribbon acquired
step
    .goto 2371,47.12,54.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ve'nari|r
    .turnin 90517 >>Turn in My Part of the Deal
    .target Ve'nari
]])

RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP War Within Endgame
#subgroup |cFFFCDC00(80)|r 11.2 The Knife's Edge
#name ap) Chapter 3 - Desert Power
#displayname |cFF00CCFF3|r - Desert Power
#next aq) Chapter 4 - Shadows En Garde
#internal

step
    .goto 2371,47.08,54.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .accept 84826 >>Accept Eco-Dome: Rhovan
    .target Locus-Walker
step
    .goto 2371,70.95,58.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .turnin 84826 >>Turn in Eco-Dome: Rhovan
    .target Locus-Walker
    .accept 84827 >>Accept The Shattered Dome
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Om'resh|r
    .accept 84831 >>Accept The Rhovan Infestation
    .target Om'resh
step
    .goto 2371,70.88,54.39
    .complete 84827,1 --1/1 Clue found
step
    .goto 2371,70.05,53.13
    .complete 84827,2 --1/1 Om'bera found
    .complete 84827,3 --1/1 Dagger collected
step
    .goto 2371,69.77,52.44
    >>Kill |cRXP_ENEMY_Invasive creatures|r
    .complete 84831,1 --10/10 Invasive creatures slain
    .mob Invasive creatures
step
    .goto 2371,70.98,58.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Om'resh|r
    .turnin 84831 >>Turn in The Rhovan Infestation
    .target Om'resh
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .turnin 84827 >>Turn in The Shattered Dome
    .target Locus-Walker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Om'resh|r
    .accept 85730 >>Accept Salvaging What's Left
    .target Om'resh
step
    .goto 2371,65.25,56.98
    .complete 85730,1 --5/5 Stolen Research Crate
step
    .goto 2371,68.53,53.96
    .complete 85730,2 --1/1 Stolen Crates returned
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .complete 85730,3 --1/1 Talk to Locus-Walker
    .target Locus-Walker
step
    .goto 2371,68.48,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Om'resh|r
    .turnin 85730 >>Turn in Salvaging What's Left
    .target Om'resh
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .accept 86327 >>Accept The Tempest Fields
    .target Xal'atath
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath (Optional)|r
    .complete 86327,1 --1/1 Talk to Xal'atath (Optional)
    .target Xal'atath (Optional)
step
    .goto 2371,64.18,47.19
    .complete 86327,2 --Meet Xal'atath at the Tempest Fields
step
    .goto 2371,64.10,47.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .turnin 86327 >>Turn in The Tempest Fields
    .target Xal'atath
    .accept 84834 >>Accept Tempest Clefts
    .accept 84869 >>Accept Hunting on Glass
step
    .goto 2371,67.05,41.09
    >>Kill |cRXP_ENEMY_Void Terror|r
    .complete 84869,1 --4/4 Void Terror slain
    .mob Void Terror
step
    .goto 2371,63.34,47.07
    .complete 84834,1 --6/6 Void Cleft Essence
step
    .goto 2371,64.33,45.90
    >>Kill |cRXP_ENEMY_Unreal Observer|r
    .complete 84869,2 --8/8 Unreal Observer slain
    .mob Unreal Observer
step
    .goto 2371,64.12,47.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .turnin 84869 >>Turn in Tempest Clefts
    .target Xal'atath
    .turnin 84834 >>Turn in Tempest Clefts

    .accept 84838 >>Accept Enemies of Enemies
step
    .goto 2371,61.06,38.92
    .complete 84838,1 --1/1 Coalesced void energy placed (Optional)
    >>Kill |cRXP_ENEMY_Zagithav|r
    .complete 84838,2 --1/1 Zagithav slain
    .mob Zagithav
step
    .goto 2371,61.25,39.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soul-Scribe|r
    .complete 84838,3 --1/1 Talk to Soul-Scribe
    .target Soul-Scribe
step
    .goto 2371,61.22,39.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soul-Scribe|r
    .turnin 84838 >>Turn in Enemies of Enemies
    .target Soul-Scribe
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .accept 84848 >>Accept Before the Void
    .target Xal'atath
    .complete 84848,1 --1/1 Dagger returned
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .complete 84848,2 --1/1 Talk to Xal'atath
    .target Xal'atath
step
    .goto 2371,63.13,38.97
    .complete 84848,3 --Meet Xal'atath in the upper camp
step
    .goto 2371,63.16,38.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soul-Scribe|r
    .turnin 84848 >>Turn in Before the Void
    .target Soul-Scribe
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .accept 84867 >>Accept Stalking Stalkers
    .target Xal'atath
step
    .goto 2371,61.03,39.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narathe|r
    .complete 84867,1 --1/1 Speak to Narathe
    .target Narathe
step
    .goto 2371,61.05,39.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narathe|r
    .accept 86332 >>Accept Distribution of Power
    .target Narathe
step
    .goto 2371,63.11,39.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath (Optional)|r
    .complete 84867,2 --1/1 Talk to Xal'atath (Optional)
    .target Xal'atath (Optional)
step
    .goto 2371,59.29,42.65
    .complete 86332,1 --4/4 Energy collected
step
    .goto 2371,60.99,43.67

    .complete 84867,3 --1/1 Bring a stalker to Zabta
step
    .goto 2371,62.05,39.14
    .complete 86332,2 --4/4 Crates charged
step
    .goto 2371,63.15,38.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soul-Scribe|r
    .turnin 84867 >>Turn in Distribution of Power
    .target Soul-Scribe
    .turnin 86332 >>Turn in Distribution of Power

    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .accept 84876 >>Accept The Oasis
    .target Xal'atath
step
    .goto 2371,73.67,38.23
    .complete 84876,1 --1/1 Report to Om'rajula at the Oasis
step
    .goto 2371,75.81,34.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Om'talad|r
    .turnin 84876 >>Turn in The Oasis
    .target Om'talad
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .accept 84879 >>Accept Restoring Hope
    .target Xal'atath
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soul-Scribe|r
    .accept 84883 >>Accept K'aresh That Was
    .target Soul-Scribe
step
    .goto 2371,76.79,30.17
    .complete 84883,2 --1/1 Heartspring Water
step
    .goto 2371,72.40,31.14
    .complete 84883,1 --6/6 Zaranit Bud
step
    .goto 2371,75.96,29.52
    .complete 84879,1 --Dome cleansed (100%)
step
    .goto 2371,75.84,34.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soul-Scribe|r
    .turnin 84883 >>Turn in K'aresh That Was
    .target Soul-Scribe
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .turnin 84879 >>Turn in Restoring Hope
    .target Xal'atath
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soul-Scribe|r
    .accept 84910 >>Accept The Tabiqa
    .target Soul-Scribe
step
    .goto 2371,74.41,30.41
    .complete 84910,1 --Meet Soul-Scribe by the water
    .complete 84910,2 --1/1 Pollen and petals placed
    .complete 84910,3 --1/1 Vial of water placed
    .complete 84910,4 --1/1 Ritual dagger placed
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soul-Scribe|r
    .complete 84910,5 --1/1 Talk to Soul-Scribe
    .target Soul-Scribe
step
    .goto 2371,74.38,30.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soul-Scribe|r
    .turnin 84910 >>Turn in The Tabiqa
    .target Soul-Scribe
    .accept 84896 >>Accept The Next Dimension
step
    .goto 2371,75.88,33.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shad'anis|r
    .accept 89380 >>Accept Another World
    .target Shad'anis
step
    .goto 2371,60.24,29.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soul-Scribe|r
    .turnin 84896 >>Turn in The Next Dimension
    .target Soul-Scribe
    .accept 84897 >>Accept The Calm Before we Storm
step
    .goto 2371,60.64,28.18
    .complete 84897,1 --Approach Alleria
step
    .goto 2371,60.74,27.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria|r
    .complete 84897,2 --1/1 Speak with Alleria
    .target Alleria
    .complete 84897,4 --1/1 Heal the Wounded Riftwalker
step
    .goto 2371,60.67,27.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soul-Scribe|r
    .turnin 84897 >>Turn in The Calm Before we Storm
    .target Soul-Scribe
    .accept 84898 >>Accept The Sands of K'aresh
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r
    .accept 84899 >>Accept Shadowguard Diffusion
    .target Alleria Windrunner
step
    .goto 2371,59.57,27.63
    >>Kill |cRXP_ENEMY_Shadowguard Phaseblade|r
    .complete 84899,1 --6/6 Shadowguard Phaseblade slain
    .mob Shadowguard Phaseblade
step
    .goto 2371,58.59,29.51
    >>Kill |cRXP_ENEMY_Shadowguard Adept|r
    .complete 84899,2 --6/6 Shadowguard Adept slain
    .mob Shadowguard Adept
step
    .goto 2371,57.72,28.23
    >>Kill |cRXP_ENEMY_Shadowguard Voidtamer|r
    .complete 84899,3 --3/3 Shadowguard Voidtamer slain
    .mob Shadowguard Voidtamer
step
    .goto 2371,58.34,26.30
    .complete 84898,1 --3/3 Shadowguard Weapons
step
    .goto 2371,55.19,30.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soul-Scribe|r
    .turnin 84898 >>Turn in The Sands of K'aresh
    .target Soul-Scribe
step
    .goto 2371,55.10,30.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r
    .turnin 84899 >>Turn in Shadowguard Diffusion
    .target Alleria Windrunner
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .accept 84900 >>Accept Like a Knife Through Aether
    .target Xal'atath
step
    .goto 2371,49.95,26.68
    .complete 84900,1 --Approach Xal'atath at Shadow Point: Darkmend
step
    .goto 2371,49.59,26.14
    .complete 84900,2 --4/4 Forgecaster Wraps
step
    .goto 2371,49.63,26.79
    .complete 84900,3 --4/4 Unwieldy Energy disrupted
step
    .goto 2371,48.65,26.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .turnin 84900 >>Turn in Like a Knife Through Aether
    .target Xal'atath
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r
    .accept 84903 >>Accept Until the Sands Bleed Void
    .target Alleria Windrunner
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soul-Scribe|r
    .accept 84904 >>Accept And We Will Answer
    .target Soul-Scribe
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .accept 84902 >>Accept Adverse Instantiation
    .target Locus-Walker
step
    .goto 2371,46.20,21.42
    .complete 84903,1 --Shadowguard extinguished (100%)
step
    .goto 2371,45.86,19.81
    .complete 84902,1 --6/6 Power Pylon disabled
step
    .goto 2371,44.01,22.50
    .complete 84904,1 --6/6 Trapped Wastelanders rescued
step
    .goto 2371,48.16,19.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r
    .turnin 84903 >>Turn in Until the Sands Bleed Void
    .target Alleria Windrunner
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soul-Scribe|r
    .turnin 84904 >>Turn in And We Will Answer
    .target Soul-Scribe
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .turnin 84902 >>Turn in Adverse Instantiation
    .target Locus-Walker
    .accept 84905 >>Accept To Walk Among Shadow
step
    .goto 2371,48.75,18.80
    .complete 84905,1 --Follow Locus-Walker
step
    .goto 2371,49.12,18.35
    .complete 84905,2 --4/4 Unstable Energy Matrix overloaded
step
    .goto 2371,49.24,17.89
    .complete 84905,3 --4/4 Shadowguard Energy Reserves destroyed
step
    .goto 2371,48.25,19.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .turnin 84905 >>Turn in To Walk Among Shadow
    .target Locus-Walker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r
    .accept 84906 >>Accept Nexus Regicide
    .target Alleria Windrunner
step
    .goto 2371,44.41,16.70
    .complete 84906,1 --Follow Alleria to Umbral Garrison: Apotheosis
step
    .goto 2371,43.77,16.94
    >>Kill |cRXP_ENEMY_Nexus-Prince Azir|r
    .complete 84906,2 --1/1 Nexus-Prince Azir slain
    .mob Nexus-Prince Azir
step
    .goto 2371,44.16,16.86
    .complete 84906,3 --1/1 Nexus-Prince Azir's Reshii Ribbon
step
    .goto 2371,44.24,18.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r
    .turnin 84906 >>Turn in Nexus Regicide
    .target Alleria Windrunner
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .accept 85037 >>Accept That's a Wrap
    .target Xal'atath
step
    .goto 2371,42.89,21.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus Walker (Optional)|r
    .complete 85037,1 --1/1 Speak with Locus Walker (Optional)
    .target Locus Walker (Optional)
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .complete 85037,2 --1/1 Speak to Xal'atath
    .target Xal'atath
    .complete 85037,3 --1/1 K'areshi Wraps
step
    .goto 2371,42.90,21.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r
    .turnin 85037 >>Turn in That's a Wrap
    .target Alleria Windrunner
step
    .goto 2472,39.44,24.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Om'talad|r
    .accept 87290 >>Accept The Oasis
    .target Om'talad
step
    .goto 2371,75.88,34.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cartel Om Custodian|r
    .turnin 87290 >>Turn in The Oasis
    .target Cartel Om Custodian
    .accept 87337 >>Accept Custodian Duties
step
    .goto 2371,74.27,34.07
    .complete 87337,1 --Clean up Hope's Oasis (100%)
step
    .goto 2371,75.89,34.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ve'nari|r
    .turnin 87337 >>Turn in Custodian Duties
    .target Ve'nari
    .accept 87339 >>Accept Ongoing Activities
    .accept 87338 >>Accept Day One Orientation
    .complete 87338,3 --1/1 The Oasis Console
step
    .goto 2371,72.53,34.78
    .complete 87339,1 --1/1 Torn-up Earth
step
    .goto 2371,72.99,33.00
    .complete 87339,3 --1/1 Watering Jug
step
    .goto 2371,73.09,32.78
    .complete 87339,4 --1/1 Use Watering Jug to water plants
step
    .goto 2371,73.63,34.37
    .complete 87339,2 --1/1 Collect Data
step
    .goto 2371,73.10,32.64
    .complete 87338,2 --1/1 Meet the Slateback Alpha
step
    .goto 2371,72.07,30.84
    .complete 87338,1 --1/1 Meet the Thorntail Matriarch
step
    .goto 2371,75.89,34.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ve'nari|r
    .turnin 87338 >>Turn in Ongoing Activities
    .target Ve'nari
    .turnin 87339 >>Turn in Ongoing Activities

    .accept 87340 >>Accept Junk Mail
step
    .goto 2472,64.24,26.94
    .complete 87340,1 --Distribute advertising in Tazavesh (100%)
step
    .goto 2371,75.90,34.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ve'nari|r
    .turnin 87340 >>Turn in Junk Mail
    .target Ve'nari
    .accept 85075 >>Accept To Stormsong
step
    .goto 876,63.18,33.71
    .complete 85075,1 --1/1 Travel to Stormsong Valley
step
    .goto 942,72.45,69.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Alaenra|r
    .turnin 85075 >>Turn in To Stormsong
    .target Botanist Alaenra
    .accept 85077 >>Accept Sticky Fingers
    .accept 85076 >>Accept Don't Bee Crazy
step
    .goto 942,68.32,67.66
    .complete 85077,1 --7/7 Honey Globule
step
    .goto 942,69.44,73.30
    >>Kill |cRXP_ENEMY_Maulers|r
    .complete 85076,1 --10/10 Maulers slain
    .mob Maulers
step
    .goto 942,72.43,69.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Alaenra|r
    .turnin 85076 >>Turn in Sticky Fingers
    .target Botanist Alaenra
    .turnin 85077 >>Turn in Sticky Fingers

    .accept 85079 >>Accept Such a Sleebee-head
    .accept 85078 >>Accept Bee in the Bonnet
    .complete 85079,1 --1/1 Find a way to deal with the bees
    .complete 85079,2 --1/1 Tranquilizing Dart (Optional)
step
    .goto 942,74.15,70.15
    >>Kill |cRXP_ENEMY_Hive Guardian tranquilized or|r
    .complete 85079,3 --5/5 Hive Guardian tranquilized or slain
    .mob Hive Guardian tranquilized or
step
    .goto 942,74.28,69.39
    .complete 85078,1 --3/3 Bee Hives investigated
step
    .goto 942,72.51,65.88
    .complete 85078,2 --1/1 Final Hive investigated
step
    .goto 942,72.56,65.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Alaenra|r
    .turnin 85079 >>Turn in Such a Sleebee-head
    .target Botanist Alaenra
    .turnin 85078 >>Turn in Bee in the Bonnet

    .accept 85080 >>Accept An Un-Bee-lievable Solution
    .accept 85081 >>Accept Beehemian Rhapsody
    .complete 85080,1 --1/1 Ve'nari contacted
step
    .goto 942,72.63,66.01
    .complete 85081,1 --1/1 Honey Pot placed
    .complete 85081,2 --1/1 Queen Bee rescued
step
    .goto 942,72.56,65.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Alaenra|r
    .turnin 85081 >>Turn in Beehemian Rhapsody
    .target Botanist Alaenra
    .complete 85080,2 --1/1 Anima Vacuum
step
    .goto 942,72.51,69.77
    .complete 85080,3 --15/15 Honey Bees vacuumed
step
    .goto 942,72.57,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Alaenra|r
    .turnin 85080 >>Turn in An Un-Bee-lievable Solution
    .target Botanist Alaenra
    .accept 85082 >>Accept To K'aresh
    .complete 85082,1 --1/1 Take the portal to K'aresh (Optional)
step
    .goto 2371,75.90,34.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ve'nari|r
    .turnin 85082 >>Turn in To K'aresh
    .target Ve'nari
    .accept 85249 >>Accept A Bee Test
step
    .goto 2371,48.38,61.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Alaenra|r
    .turnin 85249 >>Turn in A Bee Test
    .target Botanist Alaenra
    .accept 85083 >>Accept Photogra-Bee
    .accept 85084 >>Accept Bee Strong
step
    .goto 2371,47.79,63.80
    .complete 85083,1 --10/10 Honey Bees documented
step
    .goto 2371,48.38,61.29
    .complete 85084,1 --1/1 Honey collected
step
    .goto 2371,48.05,62.68
    .complete 85084,2 --1/1 Queen fed
step
    .goto 2371,48.38,61.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Alaenra|r
    .turnin 85083 >>Turn in Bee Strong
    .target Botanist Alaenra
    .turnin 85084 >>Turn in Bee Strong

    .accept 85257 >>Accept Primus Buzzness
step
    .goto 2371,48.95,57.23
    .turnin 85257 >>Turn in Primus Buzzness

    .accept 85256 >>Accept Botany, Finally
    .accept 85255 >>Accept Tranquila-Bee
step
    .goto 2371,48.55,53.93
    .complete 85255,1 --10/10 Honey Bees tranquilized and tagged
step
    .goto 2371,46.84,58.79
    .complete 85256,1 --10/10 K'aresh Flora Cutting
step
    .goto 2371,48.96,57.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Alaenra|r
    .turnin 85255 >>Turn in Botany, Finally
    .target Botanist Alaenra
    .turnin 85256 >>Turn in Botany, Finally

    .accept 89348 >>Accept Let There Bee Love
step
    .goto 2371,75.76,33.85
    .turnin 89348 >>Turn in Let There Bee Love

    .accept 85258 >>Accept Oh Honey Honey
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alaenra (Optional)|r
    .complete 85258,1 --1/1 Talk to Alaenra (Optional)
    .target Alaenra (Optional)
step
    .goto 2371,76.31,29.72
    .complete 85258,3 --1/1 Queen Bee petted
step
    .goto 2371,75.83,30.93
    .complete 85258,2 --8/8 Honeycomb
step
    .goto 2371,75.81,34.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Om'talad|r
    .turnin 85258 >>Turn in Oh Honey Honey
    .target Om'talad
    .accept 85259 >>Accept Waggle Dance
step
    .goto 2371,76.67,32.93
    .complete 85259,3 --1/1 Eastern Waggle Dance
step
    .goto 2371,74.59,30.36
    .complete 85259,1 --1/1 Northern Waggle Dance
step
    .goto 2371,71.81,32.20
    .complete 85259,2 --1/1 Western Waggle Dance
step
    .goto 2371,75.76,33.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Alaenra|r
    .turnin 85259 >>Turn in Waggle Dance
    .target Botanist Alaenra
    .accept 85260 >>Accept Hiving a Hard Day
step
    .goto 2371,72.53,35.00
    .complete 85260,1 --10/10 Overworked Honey Bees picked up
step
    .goto 2371,75.76,33.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Alaenra|r
    .accept 85260 >>Accept Hiving a Hard Day
    .target Botanist Alaenra
]])


RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP War Within Endgame
#subgroup |cFFFCDC00(80)|r 11.2 The Knife's Edge
#name aq) Chapter 4 - Shadows En Garde
#displayname |cFF00CCFF4|r - Shadows En Garde
#next ar) Chapter 5 - The Light of K'aresh
#internal


]])

RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP War Within Endgame
#subgroup |cFFFCDC00(80)|r 11.2 The Knife's Edge
#name ar) Chapter 5 - The Light of K'aresh
#displayname |cFF00CCFF5|r - The Light of K'aresh
#internal

]])