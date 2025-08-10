RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP War Within Campaigns
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
    #label KareshCampaignSkipA
    #completewith next
    .goto 2472,59.55,83.46
    .achievementComplete 41970,3,1
    .isQuestTurnedIn account,89345
    .gossipoption 134153 >>Talk to |cRXP_FRIENDLY_Om'en|r
    .skipgossipid 134142
    .target Om'en
step
    #hidewindow
    #completewith KareshCampaignSkipA
    .accept 85003 >>Accept Restoring Operational Efficiency
step
    .isQuestTurnedIn account,89561
    #completewith next
    #label Reshii Wraps
    .equip 15,235499 >>Equip |T7110834:0|t[Reshii Wraps]
    .use 235499
step
    #completewith Reshii Wraps
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hashim|r
    .collect 235499,1
    .skipgossipid 133897
step
    #requires Reshii Wraps
    .goto 2371,50.34,36.33
    .equip 15,235499 >>Equip |T7110834:0|t[Reshii Wraps]
    .use 235499
    .subzoneskip 15807,1
step
    #requires KareshCampaignSkipA
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
-- step
--     #completewith next
--     .goto 2472,53.42,61.39,0,0
--     +|cRXP_WARN_You can fly here|r. If not then take the portal.
step
    .goto 2472,53.08,64.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ba'ver|r
    .turnin 84959 >>Turn in Lost Lines of Defense
    .complete 85003,2 --1/1 Ba'ver assisted
    .target Ba'ver
-- step
--     #completewith next
--     .goto 2472,57.60,72.84,0,0
--     >>|cRXP_WARN_You can fly here|r. If not then take the portal.
--     .complete 84958,1 --1/1 Take the access to the overlook (Optional)
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
    +Enter the Portal
    .goto 2472,60.17,66,-1
step
    #completewith CompromisedUnboundA
    #hidewindow
    .goto 2472,56.74,72.91,20 >>1
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
    .complete 84960,2 --1/1 Investigate the Void Presence
step
    #completewith next
    #label Locate the source
    #title |cFFFCDC00Follow the Arrow|r
    .complete 84960,3 --1/1 Locate the source
step
    #completewith Locate the source
    .goto 2472,47.81,63.46,20 >>Enter the Room
step
    #requires Locate the source
    .goto 2472,47.43,65.77
    .complete 84960,3 --1/1 Locate the source
step
    .goto 2472,47.43,65.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .complete 84960,4 --1/1 Speak to Locus-Walker
    .timer 50,RP
    .target Locus-Walker
    .skipgossipid 131268
step
    .goto 2472,47.43,65.77
    >>Kill 3 waves of |cRXP_ENEMY_Shadowguard Infiltrators|r and |cRXP_ENEMY_Nyz'raal the Umbral Blade|r
    .complete 84960,5 --1/1 Infiltrator's defeated
    .mob Shadowguard Infiltrator
    .mob Nyz'rall the Umbral Blade
step
    #completewith next
    #label DarknessAmongUsA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Om'en|r
    .turnin 84960 >>Turn in The Darkness Among Us
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
    .goto 2472,40.09,51.51,25,0
    .goto 2472,39.47,41.84,25,0
    .goto 2472,44.43,40.35,25,0
    .goto 2472,44.44,36.23,15,0
    .goto 2472,58.33,32.69,15,0
    .goto 2472,55.74,38.38,25,0
    .goto 2472,51.36,41.17,15,0
    .goto 2472,53.59,40.69,25,0
    .goto 2472,53.23,44.12,25,0
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
#group RestedXP War Within Campaigns
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
    #requires TalkToInkeeperA
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
    #completewith TalkToFlightMasterA
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
    #label startchapter21
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
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Yanhal|r |cRXP_WARN_behind the crates|r.
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
    .timer 5,RP
    .target Xal'atath
    .skipgossipid 131527
-- step
--     .isOnQuest 84856
--     .logout >>Start logging out, cancel it when the timer runs out.
step
    #title |cFFFCDC00Avoid the Void Revealer|r
    .goto 2371,47.21,21.03,15,0
    .goto 2371,46.20,20.73,30,0
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
    #completewith next
    #title |cFFFCDC00Leave Vehicle Fast|r 
    +This only works if you are fast saving 30seconds.
step
    #title |cFFFCDC00Leave Vehicle Fast|r 
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r and |cRXP_FRIENDLY_Locus-Walker|r
    .turnin 84856 >>Turn in Where the Void Gathers
    .goto 2371,48.17,36.64
    .target +Xal'atath
    .accept 84857 >>Accept Eco-Dome: Primus
    .goto 2371,48.19,36.55
    .target +Locus-Walker
step
    #completewith next
    #label Turn in Eco-Dome: Primus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .turnin 84857 >>Turn in Eco-Dome: Primus
    .target Locus-Walker
step
    #hidewindow
    #completewith Turn in Eco-Dome: Primus
    .goto 2371,47.73,52.56,20 >>1
step
    #requires Turn in Eco-Dome: Primus
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
    #completewith next
    #label Speak to Engineer Om'loof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Om'loof|r
    .complete 84858,1 --1/1 Speak to Engineer Om'loof
    .target Engineer Om'loof
    .skipgossipid 125374
step
    #completewith Speak to Engineer Om'loof
    .goto 2371,46.97,54.89,10 >>Go out of the |cRXP_WARN_NO MOUNT ZONE|r
step
    #requires Speak to Engineer Om'loof
    .goto 2371,46.20,57.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Om'loof|r
    .complete 84858,1 --1/1 Speak to Engineer Om'loof
    .target Engineer Om'loof
    .skipgossipid 125374
step
    .goto 2371,46.23,57.30
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rod of Parameters|r
    .complete 84858,3 --1/1 Rod of Parameters used
step
    .goto 2371,46.25,57.29
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rod of Analysis|r
    .complete 84858,4 --1/1 Rod of Analysis used
step
    .goto 2371,47.18,58.59
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rod of Analysis|r
    .complete 84858,5 --1/1 Rod of Analysis acquired

--skyriding glyph eco dome primus
step
    .goto 2371,46.26,57.29
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rod of Analysis|r
    .complete 84858,6 --1/1 Rod of Analysis replaced
step
    .goto 2371,46.26,56.91
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rod of Restart|r
    .complete 84858,7 --1/1 Rod of Restart used
step
    .goto 2371,47.13,54.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ve'nari|r
    .turnin 84858 >>Turn in System Restart
    .accept 84859 >>Accept Damage Report 101
    .accept 84860 >>Accept Eco-Stabilizing
    .target Ve'nari
step
    #completewith next
    #label Botanist Om'nittar found
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Om'nittar|r
    .complete 84859,1 --1/1 Botanist Om'nittar found
    .target Om'nittar
step
    #completewith Botanist Om'nittar found
    .goto 2371,47.35,54.31,10 >>Go out of the |cRXP_WARN_NO MOUNT ZONE|r
step
    #requires Botanist Om'nittar found
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
    #label endchapter21
    .goto 2371,50.01,56.50
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Control Console V-37|r
    .complete 84860,2 --1/1 Biome V-37 stabilized
    .skipgossipid 131301
step
    #completewith next
    #label Biome D-28 stabilized
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rod of Activation|r
    .complete 84860,3 --1/1 Biome D-28 stabilized
step
    .isOnQuest 84860
    #completewith Biome D-28 stabilized
    .goto 2371,48.84,59.03
    .cast 1233199 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rod of Activation|r
step
    #requires Biome D-28 stabilized
    .goto 2371,48.80,59.08
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rod of Activation|r 
    .complete 84860,3 --1/1 Biome D-28 stabilized
step
    #label startchapter22
    .goto 2371,47.13,60.72,20,0
    .goto 2371,45.95,58.83,10,0
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
    #label endchapter22
    .goto 2371,51.00,56.34
    #title Matrix placed (2/4)
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Defense Matrix|r
    .complete 84862,1,2 --2/4 Defense Matrices placed
step
    #label startchapter23
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
    #completewith next
    #label destroyed
    #hidewindow
    .complete 84865,1,1 --3/3 Shadowguard Cannons destroyed
step
    #completewith destroyed
    .goto 2371,47.34,54.24,10 >>Go out of the |cRXP_WARN_NO MOUNT ZONE|r
step
    #requires destroyed
    #completewith Shadowguard Cannons1
    >>Kill the |cRXP_ENEMY_Shadowguard forces|r
    .complete 84863,1 --12/12 Shadowguard forces eliminated
    .mob Shadowguard Speardancer
    .mob Shadowguard Voidblade
    .mob Shadowguard Riftcaller
step
    #requires destroyed
    .goto 2371,52.5,49.81
    >>Use the |T5976941:0|t[|cRXP_WARN_ExtraActionButton|r] and aim it at the |cRXP_PICK_Shadowguard Cannons|r
    .complete 84865,1,1 --3/3 Shadowguard Cannons destroyed
step
    .goto 2371,52.26,48
    >>Use the |T5976941:0|t[|cRXP_WARN_ExtraActionButton|r] and aim it at the |cRXP_PICK_Shadowguard Cannons|r
    .complete 84865,1,2 --3/3 Shadowguard Cannons destroyed
step
    #completewith next
    #hidewindow
    #label Ethereal Siphon Barrier
    .complete 84864,1 --1/1 Ethereal Siphon Barrier removed
step
    #completewith Ethereal Siphon Barrier
    .goto 2371,54.10,48.13
    .cast 473548 >>Use the |T4913234:0|t[|cRXP_WARN_ExtraActionButton|r] at the waypoint location.
    .timer 20,RP
step
    #requires Ethereal Siphon Barrier
    .goto 2371,54.49,50.38
    >>Use the |T5976941:0|t[|cRXP_WARN_ExtraActionButton|r] and aim it at the |cRXP_PICK_Shadowguard Cannons|r
    .complete 84865,1,3 --3/3 Shadowguard Cannons destroyed
step
    #label Shadowguard Cannons1
    .goto 2371,54.10,48.13
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ethereal Siphon Console|r
    .complete 84864,2 --1/1 Ethereal Siphon Console overloaded
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
    #label endchapter23
    .goto 2371,54.27,45.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .turnin 84866 >>Turn in To Purchase Safety
    .accept 86946 >>Accept Unwrapped and Unraveled
    .target Xal'atath
step
    #label startchapter24
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
    #label endchapter24
    .goto 2371,47.12,54.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ve'nari|r
    .turnin 90517 >>Turn in My Part of the Deal
    .target Ve'nari
]])

RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP War Within Campaigns
#subgroup |cFFFCDC00(80)|r 11.2 The Knife's Edge
#name ap) Chapter 3 - Desert Power
#displayname |cFF00CCFF3|r - Desert Power
#next aq) Chapter 4 - Shadows En Garde

step
    .goto 2371,47.08,54.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .accept 84826 >>Accept Eco-Dome: Rhovan
    .target Locus-Walker
step
    #hidewindow
    #completewith next
    #label Eco-Dome: Rhovan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r and |cRXP_FRIENDLY_Om'resh|r
    .turnin 84826 >>Turn in Eco-Dome: Rhovan
    .target +Om'resh
step
    #completewith Eco-Dome: Rhovan
    .goto 2371,47.32,54.87,10 >>Go out of the |cRXP_WARN_NO MOUNT ZONE|r
step
    #requires Eco-Dome: Rhovan
    #label StartTurnEcoDome1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r and |cRXP_FRIENDLY_Om'resh|r
    .turnin 84826 >>Turn in Eco-Dome: Rhovan
    .accept 84827 >>Accept The Shattered Dome
    .goto 2371,70.94,58.11
    .target +Locus-Walker
    .accept 84831 >>Accept The Rhovan Infestation
    .goto 2371,70.98,58.04
    .target +Om'resh
step
    #completewith DaggerCollectedA
    >>Kill the |cRXP_ENEMY_creatures|r in the area
    .complete 84831,1 --10/10 Invasive creatures slain
    .mob Void-touched Hoppling
    .mob Void-touched Hopper
    .mob Death Scavenger
step
    .goto 2371,70.88,54.39
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Om'Bera's Clipboard|r
    .complete 84827,1 --1/1 Clue found
step
    .goto 2371,69.99,53.15
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_FRIENDLY_Om'bera|r
    .complete 84827,2 --1/1 Om'bera found
step
    #label DaggerCollectedA
    .goto 2371,69.99,53.15
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Curved Dagger|r
    .complete 84827,3 --1/1 Dagger collected
step
    #loop
    .goto 2371,70.60,51.67,40,0
    .goto 2371,68.94,52.20,35,0
    .goto 2371,69.20,55.04,35,0
    .goto 2371,71.59,54.20,35,0
    >>Kill the |cRXP_ENEMY_creatures|r in the area
    .complete 84831,1 --10/10 Invasive creatures slain
    .mob Void-touched Hoppling
    .mob Void-touched Hopper
    .mob Death Scavenger
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r and |cRXP_FRIENDLY_Om'resh|r
    .turnin 84827 >>Turn in The Shattered Dome
    .goto 2371,70.94,58.10
    .target +Locus-Walker
    .turnin 84831 >>Turn in The Rhovan Infestation
    .accept 85730 >>Accept Salvaging What's Left
    .goto 2371,70.98,58.05
    .target +Om'resh
step
    #loop
    .goto 2371,67.00,57.66,14,0
    .goto 2371,66.39,58.17,14,0
    .goto 2371,65.81,58.58,14,0
    .goto 2371,65.69,57.09,14,0
    .goto 2371,65.26,57.06,14,0
    .goto 2371,65.22,56.16,14,0
    .goto 2371,64.94,55.01,14,0
    .goto 2371,64.98,52.10,14,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Stolen Research Crates|r
    .complete 85730,1 --5/5 Stolen Research Crate
step
    .goto 2371,68.57,53.96
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Stolen Research Crates|r
    *|cRXP_WARN_You will be attacked by 3 |cRXP_ENEMY_Wastelander Assassins|r
    .complete 85730,2 --1/1 Stolen Crates returned
step
    #completewith next
    #hidewindow
    .gossipoption 131611 >>1
    .timer 29,RP
step
    .goto 2371,68.54,53.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .complete 85730,3 --1/1 Talk to Locus-Walker
    .target Locus-Walker
step
    .goto 2371,68.48,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Om'resh|r |cRXP_WARN_after the roleplay|r.
    .turnin 85730 >>Turn in Salvaging What's Left
    .target Om'resh
step
    .goto 2371,68.41,51.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .accept 86327 >>Accept The Tempest Fields
    .target Xal'atath
step
    .goto 2371,64.11,47.00
    #title |cFFFCDC00Follow the Arrow|r
    .complete 86327,2 --Meet Xal'atath at the Tempest Fields
step
    .goto 2371,64.11,47.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .turnin 86327 >>Turn in The Tempest Fields
    .accept 84834 >>Accept Tempest Clefts
    .accept 84869 >>Accept Hunting on Glass
    .target Xal'atath
step
    #completewith next
    >>Kill |cRXP_ENEMY_Void Terror|r
    .complete 84869,1 --4/4 Void Terror slain
    .complete 84869,2 --8/8 Unreal Observer slain
    .mob Void Terror
    .mob Unreal Observer
step
    #loop
    .goto 2371,63.82,48.49,14,0
    .goto 2371,63.03,47.47,14,0
    .goto 2371,63.29,47.11,14,0
    .goto 2371,64.29,45.75,14,0
    .goto 2371,64.07,44.54,14,0
    .goto 2371,64.86,44.89,14,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Void Clefts|r
    .complete 84834,1 --6/6 Void Cleft Essence
step
    #loop
    .goto 2371,68.03,40.15,40,0
    .goto 2371,64.49,44.76,40,0
    .goto 2371,63.60,48.60,40,0
    .goto 2371,63.72,43.52,40,0
    .goto 2371,62.01,40.35,40,0
    .goto 2371,64.49,44.76,40,0
    >>Kill |cRXP_ENEMY_Void Terror|r
    .complete 84869,1 --4/4 Void Terror slain
    .complete 84869,2 --8/8 Unreal Observer slain
    .mob Void Terror
    .mob Unreal Observer
step
    .goto 2371,64.12,47.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .turnin 84869 >>Turn in Hunting on Glass
    .turnin 84834 >>Turn in Tempest Clefts
    .accept 84838 >>Accept Enemies of Enemies
    .target Xal'atath
step
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Void Clefts|r
    .complete 84838,1 --1/1 Coalesced void energy placed (Optional)
step
    .goto 2371,61.02,38.90
    >>Kill |cRXP_ENEMY_Zagithav|r
    .complete 84838,2 --1/1 Zagithav slain
    .mob Zagithav
step
    .goto 2371,61.25,39.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Soul-Scribe|r
    .complete 84838,3 --1/1 Talk to Soul-Scribe
    .target Soul-Scribe
    .skipgossipid 132980
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Soul-Scribe|r and |cRXP_FRIENDLY_Xal'atath|r
    .turnin 84838 >>Turn in Enemies of Enemies
    .goto 2371,61.26,39.32
    .target +Soul-Scribe
    .accept 84848 >>Accept Before the Void
    .goto 2371,61.28,39.28
    .target +Xal'atath
step
    .goto 2371,61.26,39.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Soul-Scribe|r
    .complete 84848,1 --1/1 Dagger returned
    .target Soul-Scribe
step
    .goto 2371,61.28,39.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Xal'atath|r
    .complete 84848,2 --1/1 Talk to Xal'atath
    .target Xal'atath
    .skipgossipid 125430
step
    .goto 2371,63.18,38.96
    #title |cFFFCDC00Follow the Arrow|r
    .complete 84848,3 --Meet Xal'atath in the upper camp
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soul-Scribe|r and |cRXP_FRIENDLY_Xal'atath|r
    .turnin 84848 >>Turn in Before the Void
    .goto 2371,63.18,38.96
    .target +Soul-Scribe
    .accept 84867 >>Accept Stalking Stalkers
    .goto 2371,63.13,39.01
    .target +Xal'atath
step
    .goto 2371,61.01,39.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narathe|r
    .complete 84867,1 --1/1 Speak to Narathe
    .target Narathe
    .skipgossipid 124848
step
    .goto 2371,61.05,39.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narathe|r
    .accept 86332 >>Accept Distribution of Power
    .target Narathe
step
    #completewith next
    .aura 467420,1 >>|TInterface/cursor/crosshair/interact.blp:20|tDefeat a |cRXP_ENEMY_Escaped Stalker|r and click on it afterwards.
    .mob Escaped Stalker
step
    #loop
    .goto 2371,60.38,44.77,14,0
    .goto 2371,59.55,45.43,14,0
    .goto 2371,60.80,45.59,14,0
    .goto 2371,61.97,46.41,14,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Power Harvester|r
    .complete 86332,1 --4/4 Energy collected
step
    #completewith next
    #hidewindow
    #label BringStalkerToZabtaA
    .complete 84867,3 --1/1 Bring a stalker to Zabta
step
    #completewith BringStalkerToZabtaA
    .isOnQuest 84867
    #loop
    .goto 2371,59.92,44.82,35,0
    .goto 2371,61.93,46.81,35,0
    .goto 2371,67.21,36.89,35,0
    .goto 2371,64.21,37.74,35,0
    .aura 467420,1 >>|TInterface/cursor/crosshair/interact.blp:20|tDefeat a |cRXP_ENEMY_Escaped Stalker|r and click on it afterwards.
    .mob Escaped Stalker
step
    #requires BringStalkerToZabtaA
    .goto 2371,61.04,43.65
    #title |cFFFCDC00Follow the Arrow|r
    .complete 84867,3 --1/1 Bring a stalker to Zabta
step
    #loop
    .goto 2371,60.70,42.97,12,0
    .goto 2371,63.88,42.41,12,0
    .goto 2371,61.57,40.57,12,0
    .goto 2371,62.07,39.20,12,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Empty Crates|r
    .complete 86332,2 --4/4 Crates charged
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soul-Scribe|r and |cRXP_FRIENDLY_Xal'atath|r
    .turnin 84867 >>Turn in Stalking Stalkers
    .turnin 86332 >>Turn in Distribution of Power
    .goto 2371,63.18,38.96
    .target +Soul-Scribe
    .accept 84876 >>Accept The Oasis
    .goto 2371,63.13,39.01
    .target +Xal'atath
step
    .goto 2371,73.67,38.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Om'rajula|r
    .complete 84876,1 --1/1 Report to Om'rajula at the Oasis
    .target Om'rajula
    .skipgossipid 131494
step
    .goto 2371,75.81,34.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Om'talad|r
    .turnin 84876 >>Turn in The Oasis
    .target Om'talad
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r and |cRXP_FRIENDLY_Soul-Scribe|r
    .accept 84879 >>Accept Restoring Hope
    .goto 2371,75.88,34.18,-1
    .target +Xal'atath
    .accept 84883 >>Accept K'aresh That Was
    .goto 2371,75.83,34.29,-1
    .target +Soul-Scribe
step
    #completewith HeartspringWaterA
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Invasive Wurm Eggs|r and |cRXP_PICK_Void Rifts|r
    .complete 84879,1 --Dome cleansed (100%)
step
    #completewith HeartspringWaterA
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Zaranit Buds|r
    .complete 84883,1 --6/6 Zaranit Bud
step
    #label HeartspringWaterA
    .goto 2371,76.78,30.12
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rippling Wellspring|r
    .complete 84883,2 --1/1 Heartspring Water
step
    -- https://i.imgur.com/24Fjv7C.png
    #completewith DomeCleansedA
    #hidewindow
    #loop
    .goto 2371,76.27,30.25,25,0
    .goto 2371,74.78,28.59,30,0
    .goto 2371,73.69,28.88,30,0
    .goto 2371,73.06,29.80,30,0
    .goto 2371,71.82,31.21,30,0
    .goto 2371,74.30,31.13,40,0
    .goto 2371,73.03,32.49,30,0
    .goto 2371,73.07,36.65,30,0
    .goto 2371,75.50,36.19,40,0
    .goto 2371,74.88,34.11,30,0
    .goto 2371,75.69,32.65,30,0
    .goto 2371,77.07,31.44,30,0
    +1
step
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Invasive Wurm Eggs|r and |cRXP_PICK_Void Rifts|r
    .complete 84879,1 --Dome cleansed (100%)
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Zaranit Buds|r
    .complete 84883,1 --6/6 Zaranit Bud
step
    #label DomeCleansedA
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Invasive Wurm Eggs|r and |cRXP_PICK_Void Rifts|r
    *|cRXP_WARN_Don't mount up until the portal is destroyed|r
    .complete 84879,1 --Dome cleansed (100%)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r and |cRXP_FRIENDLY_Soul-Scribe|r
    .turnin 84879 >>Turn in Restoring Hope
    .goto 2371,75.88,34.18
    .target +Xal'atath
    .turnin 84883 >>Turn in K'aresh That Was
    .accept 84910 >>Accept The Tabiqa
    .goto 2371,75.83,34.29
    .target +Soul-Scribe
step
    .goto 2371,74.39,30.43
    #title |cFFFCDC00Follow the Arrow|r
    .complete 84910,1 --Meet Soul-Scribe by the water
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Petals and Pollen|r, |cRXP_PICK_Vial|r, and |cRXP_PICK_Tabiqa Dagger|r on the table
    .complete 84910,2 --1/1 Pollen and petals placed
    .goto 2371,74.40,30.51,-1
    .complete 84910,3 --1/1 Vial of water placed
    .goto 2371,74.38,30.50,-1
    .complete 84910,4 --1/1 Ritual dagger placed
    .goto 2371,74.37,30.51,-1
step
    .goto 2371,74.45,30.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .complete 84910,5 --1/1 Talk to Soul-Scribe
    .target Xal'atath
    .skipgossipid 125067
step
    #label EndTurnEcoDomeRhovan1
    .goto 2371,74.39,30.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soul-Scribe|r
    .turnin 84910 >>Turn in The Tabiqa
    .target Soul-Scribe
step
    .isQuestAvailable account,89380
    .goto 2371,74.90,31.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shad'anis|r
    .accept 89380 >>Accept Another World
    .target Shad'anis
step
    .isQuestAvailable account,89561
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hashim|r
    .accept 89561 >>Accept Wrapped Up
    .target Hashim
step
    .isOnQuest 90938
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hashim|r
    .complete 89561,1 --1/1 Ask Hashim about empowering the Reshii Wraps
    .skipgossipid 132925
step
    .isOnQuest 90938
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hashim|r and select the upgrades.
    .complete 89561,2 --1/1 Ask Hashim about empowering the Reshii Wraps
    .skipgossipid 132925
step
    .isOnQuest 90938
    .goto 2371,50.36,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shad'anis|r
    .turnin 89561 >>Turn in Wrapped Up
    .target Shad'anis
step
    #include RestedXP War Within Loremaster\a) Phase Diving Unlock Free
]])

RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP War Within Campaigns
#subgroup |cFFFCDC00(80)|r 11.2 The Knife's Edge
#name aq) Chapter 4 - Shadows En Garde
#displayname |cFF00CCFF4|r - Shadows En Garde
#next ar) Chapter 5 - The Light of K'aresh

step
    .goto 2371,74.39,30.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soul-Scribe|r
    .accept 84896 >>Accept The Next Dimension
    .target Soul-Scribe
step
    .goto 2371,60.24,29.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soul-Scribe|r
    .turnin 84896 >>Turn in The Next Dimension
    .accept 84897 >>Accept The Calm Before we Storm
    .target Soul-Scribe
step
    .goto 2371,60.74,27.94
    #title |cFFFCDC00Follow the Arrow|r
    .complete 84897,1 --Approach Alleria
step
    .goto 2371,60.74,27.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria|r
    .complete 84897,2 --1/1 Speak with Alleria
    .target Alleria
    .skipgossipid 133244
    .skipgossipid 135471
step
    .goto 2371,60.61,27.70
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Wounded Riftwalker|r
    .complete 84897,4 --1/1 Heal the Wounded Riftwalker
    .skipgossipid 132242
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soul-Scribe|r and |cRXP_FRIENDLY_Alleria Windrunner|r
    .turnin 84897 >>Turn in The Calm Before we Storm
    .accept 84898 >>Accept The Sands of K'aresh
    .goto 2371,60.68,28.00
    .target +Soul-Scribe
    .accept 84899 >>Accept Shadowguard Diffusion
    .goto 2371,60.74,27.94
    .target +Alleria Windrunner
step
    #completewith next
    >>Kill |cRXP_ENEMY_Shadowguard Phaseblade|r, |cRXP_ENEMY_Shadowguard Adept|r, and |cRXP_ENEMY_Shadowguard Voidtamer|r
    .complete 84899,1 --6/6 Shadowguard Phaseblade slain
    .mob +Shadowguard Phaseblade
    .complete 84899,2 --6/6 Shadowguard Adept slain
    .mob +Shadowguard Adept
    .complete 84899,3 --3/3 Shadowguard Voidtamer slain
    .mob +Shadowguard Voidtamer
step
    #loop
    .goto 2371,59.12,28.51,6,0
    .goto 2371,58.68,29.54,6,0
    .goto 2371,58.34,26.30,6,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Sand Piles|r appearing after you are close enough to their position
    .complete 84898,1 --3/3 Shadowguard Weapons
step
    #loop
    .goto 2371,57.74,31.33,35,0
    .goto 2371,61.50,26.58,40,0
    .goto 2371,58.54,25.69,40,0
    >>Kill |cRXP_ENEMY_Shadowguard Phaseblade|r, |cRXP_ENEMY_Shadowguard Adept|r, and |cRXP_ENEMY_Shadowguard Voidtamer|r
    .complete 84899,1 --6/6 Shadowguard Phaseblade slain
    .mob +Shadowguard Phaseblade
    .complete 84899,2 --6/6 Shadowguard Adept slain
    .mob +Shadowguard Adept
    .complete 84899,3 --3/3 Shadowguard Voidtamer slain
    .mob +Shadowguard Voidtamer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soul-Scribe|r and |cRXP_FRIENDLY_Alleria Windrunner|r
    .turnin 84898 >>Turn in The Sands of K'aresh
    .goto 2371,55.19,30.28
    .target +Soul-Scribe
    .turnin 84899 >>Turn in Shadowguard Diffusion
    .goto 2371,55.11,30.45
    .target +Alleria Windrunner
step
    .goto 2371,55.12,30.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .accept 84900 >>Accept Like a Knife Through Aether
    .target Xal'atath
step
    #label StartShadow Point: Darkmend
    .goto 2371,49.95,26.80
    #title |cFFFCDC00Follow the Arrow|r
    .complete 84900,1 --Approach Xal'atath at Shadow Point: Darkmend
step
    #loop
    .goto 2371,49.51,26.81,22,0
    .goto 2371,49.53,28.22,30,0
    .goto 2371,49.62,25.17,30,0
    >>Kill the |cRXP_ENEMY_Shadowguard Forgecasters|r. Loot them for the |T4549241:0|t[|cRXP_LOOT_Forgecaster Wraps|r]
    .complete 84900,2 --4/4 Forgecaster Wraps
step
    .goto 2371,49.54,26.71
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Unwieldy Energies|r
    .complete 84900,3 --4/4 Unwieldy Energy disrupted
step
    .goto 2371,48.65,26.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .turnin 84900 >>Turn in Like a Knife Through Aether
    .target Xal'atath
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r, |cRXP_FRIENDLY_Locus-Walker|r, and |cRXP_FRIENDLY_Soul-Scribe|r
    .accept 84903 >>Accept Until the Sands Bleed Void
    .goto 2371,48.58,26.63,-1
    .target +Alleria Windrunner
    .accept 84902 >>Accept Adverse Instantiation
    .goto 2371,48.58,26.70,-1
    .target +Locus-Walker
    .accept 84904 >>Accept And We Will Answer
    .goto 2371,48.60,26.78,-1
    .target +Soul-Scribe
step
    #completewith Power Pylon disabled
    >>Kill the |cRXP_ENEMY_Shadowguard forces|r
    .complete 84903,1 --Shadowguard extinguished (100%)
    .mob Shadowguard Adept
    .mob Shadowguard Voidcaller
    .mob Shadowguard Colossus
    .mob Shadowguard Bulwark
    .mob Shadowguard Phaseblade
step
    .goto 2371,47.26,21.63
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Shadowguard Power Pylons|r
    .complete 84902,1,1 --6/6 Power Pylon disabled
step
    .goto 2371,46.72,21.24
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Captured Wastelanders|r
    .complete 84904,1,1 --6/6 Trapped Wastelanders rescued
step
    .goto 2371,46.52,20.79
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Captured Wastelanders|r
    .complete 84904,1,2 --6/6 Trapped Wastelanders rescued
step
    .goto 2371,45.93,19.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Shadowguard Power Pylons|r
    .complete 84902,1,2 --6/6 Power Pylon disabled
step
    .goto 2371,45.96,19.23
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Captured Wastelanders|r
    .complete 84904,1,3 --6/6 Trapped Wastelanders rescued
step
    .goto 2371,44.79,18.89
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Shadowguard Power Pylons|r
    .complete 84902,1,3 --6/6 Power Pylon disabled
step
    .goto 2371,44.39,18.95
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Captured Wastelanders|r
    .complete 84904,1,4 --6/6 Trapped Wastelanders rescued
step
    .goto 2371,43.87,19.53
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Shadowguard Power Pylons|r
    .complete 84902,1,4 --6/6 Power Pylon disabled
step
    .goto 2371,45.95,17.88
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Captured Wastelanders|r
    .complete 84904,1,5 --6/6 Trapped Wastelanders rescued
step
    .goto 2371,46.01,17.39
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Shadowguard Power Pylons|r
    .complete 84902,1,5 --6/6 Power Pylon disabled
step
    .goto 2371,47.04,17.85
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Captured Wastelanders|r
    .complete 84904,1,6 --6/6 Trapped Wastelanders rescued
step
    .goto 2371,46.88,18.11
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Shadowguard Power Pylons|r
    .complete 84902,1,6 --6/6 Power Pylon disabled
step
    #label Power Pylon disabled
    .goto 2371,47.51,22.4,40,0
    .goto 2371,43.36,23.69,40,0
    .goto 2371,43.23,19.02,40,0
    >>Kill the |cRXP_ENEMY_Shadowguard forces|r
    .complete 84903,1 --Shadowguard extinguished (100%)
    .mob Shadowguard Adept
    .mob Shadowguard Voidcaller
    .mob Shadowguard Colossus
    .mob Shadowguard Bulwark
    .mob Shadowguard Phaseblade
step
    #loop
    .goto 2371,46.89,16.87,40,0
    .goto 2371,43.25,19.48,45,0
    .goto 2371,43.41,23.74,45,0
    .goto 2371,46.15,21.23,40,0
    >>Kill the |cRXP_ENEMY_Shadowguard forces|r
    .complete 84903,1 --Shadowguard extinguished (100%)
    .mob Shadowguard Adept
    .mob Shadowguard Voidcaller
    .mob Shadowguard Colossus
    .mob Shadowguard Bulwark
    .mob Shadowguard Phaseblade
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r, |cRXP_FRIENDLY_Soul-Scribe|r, and |cRXP_FRIENDLY_Locus-Walker|r
    .turnin 84903 >>Turn in Until the Sands Bleed Void
    .goto 2371,48.16,19.43
    .target +Alleria Windrunner
    .turnin 84904 >>Turn in And We Will Answer
    .goto 2371,48.20,19.52
    .target +Soul-Scribe
    .turnin 84902 >>Turn in Adverse Instantiation
    .accept 84905 >>Accept To Walk Among Shadow
    .goto 2371,48.23,19.43
    .target +Locus-Walker
step
    .goto 2371,48.90,18.68
    #title |cFFFCDC00Follow the Arrow|r
    .complete 84905,1 --Follow Locus-Walker
step
    .goto 2371,49.1,18.57
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Unstable Energy Matrices|r
    .complete 84905,2,2 --4/4 Unstable Energy Matrix overloaded
step
    .goto 2371,49.12,18.37
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Unstable Energy Matrices|r
    .complete 84905,2 --4/4 Unstable Energy Matrix overloaded
step
    .goto 2371,49.25,17.82
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the the |cRXP_PICK_Shadowguard Energy Reserves|r
    *|cRXP_WARN_Avoid the |cRXP_PICK_Tripwires|r, stay on the wall to avoid the lasers and doge the void zones|r
    .complete 84905,3,1 --4/4 Shadowguard Energy Reserves destroyed
step
    .goto 2371,49.46,18.5
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the the |cRXP_PICK_Shadowguard Energy Reserves|r
    *|cRXP_WARN_Avoid the |cRXP_PICK_Tripwires|r, stay on the wall to avoid the lasers and doge the void zones|r
    .complete 84905,3,2 --4/4 Shadowguard Energy Reserves destroyed
step
    .goto 2371,49.08,19.13
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the the |cRXP_PICK_Shadowguard Energy Reserves|r
    *|cRXP_WARN_Avoid the |cRXP_PICK_Tripwires|r, stay on the wall to avoid the lasers and doge the void zones|r
    .complete 84905,3,3 --4/4 Shadowguard Energy Reserves destroyed
step
    .goto 2371,48.72,18.33
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the the |cRXP_PICK_Shadowguard Energy Reserves|r
    *|cRXP_WARN_Avoid the |cRXP_PICK_Tripwires|r, stay on the wall to avoid the lasers and doge the void zones|r
    .complete 84905,3,4 --4/4 Shadowguard Energy Reserves destroyed
step
    .goto 2371,48.25,19.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .turnin 84905 >>Turn in To Walk Among Shadow
    .target Locus-Walker
step
    .goto 2371,48.17,19.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r
    .accept 84906 >>Accept Nexus Regicide
    .target Alleria Windrunner
step
    .goto 2371,44.20,16.79
    #title |cFFFCDC00Follow the Arrow|r
    .complete 84906,1 --Follow Alleria to Umbral Garrison: Apotheosis
step
    .goto 2371,43.80,17.11
    >>Kill |cRXP_ENEMY_Nexus-Prince Azir|r
    *|cRXP_WARN_Drag him to the friendly NPCs to make the help you|r
    .complete 84906,2 --1/1 Nexus-Prince Azir slain
    .mob Nexus-Prince Azir
step
    .goto 2371,44.16,16.86
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Nexus-Prince Azir's Reshii Ribbon|r
    .complete 84906,3 --1/1 Nexus-Prince Azir's Reshii Ribbon
step
    .goto 2371,44.24,18.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r
    .turnin 84906 >>Turn in Nexus Regicide
    .target Alleria Windrunner
step
    .goto 2371,44.24,18.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .accept 85037 >>Accept That's a Wrap
    .target Xal'atath
step
    .goto 2371,42.85,21.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .complete 85037,1 --1/1 Speak to Xal'atath
    .target Xal'atath
    .skipgossipid 131307
step
    .goto 2371,42.82,21.56
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the the |cRXP_PICK_Reshii Ribbons|r
    .complete 85037,2 --1/1 K'areshi Wraps
step
    .goto 2371,42.89,21.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r
    .turnin 85037 >>Turn in That's a Wrap
    .target Alleria Windrunner
]])

RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP War Within Campaigns
#subgroup |cFFFCDC00(80)|r 11.2 The Knife's Edge
#name ar) Chapter 5 - The Light of K'aresh
#displayname |cFF00CCFF5|r - The Light of K'aresh

step
    .goto 2371,42.89,21.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r
    .accept 86820 >>Accept Manaforge Omega: Dimensius Looms
    .target Alleria Windrunner
step
    +|cRXP_WARN_The rest was not yet available on the PTR and will be added once available|r

]])