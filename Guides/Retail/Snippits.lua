--DawnBreakerTeleport
RXPGuides.RegisterGuide([[
#retail
#version 3
#group RestedXP War Within Endgame
#name a) DawnBreakerTeleport
#internal

step
    .zoneskip 2215
    .zone 2359 >>Open the Dungeon Finder, navigate to Follower Dungeons, and queue for |cRXP_WARN_'The Dawnbreaker'|r.
step
    .zoneskip 2215
    .gossipoption 124142 >>Talk to |cRXP_FRIENDLY_General Steelstrike|r inside Dawnbreaker. |cRXP_WARN_She should be visible from the entrance. Use the Active Targets frame to mark her.|r
    .target General Steelstrik
]])

--Lost Dragonscale
RXPGuides.RegisterGuide([[
#retail
#version 4
#group RestedXP Speed Leveling
#name a) Lost Dragonscale Alliance
#internal

<< Alliance

step
    .accept 65436 >>Accept The Dragon Isles Await
step
    >>Use |T134309:0|t[Lost Dragonscale] to teleport to Stormwind.
    .complete 65436,1 --1/1 Lost Dragonscale used to teleport to near Wrathion's location (Optional)
    .use 205456
step
    .isOnQuest 65436
    .abandon 65436,1
-- step
--     .goto 84,79.83,27.08
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wrathion|r to receive another |T134309:0|t[Lost Dragonscale] for future use.
--     .accept 65436 >>Accept The Dragon Isles Await
--     .target Wrathion
]])

--DMF Alliance
RXPGuides.RegisterGuide([[
#retail
#version 4
#group RestedXP Speed Leveling
#name a) DMF Alliance
#internal

<< Alliance

-- step
--     #veteran
--     .goto 84,61.11,70.6
--     +The Darkmoon Faire event is now active, |cRXP_WARN_which guarantees you to gain an additional level for free and a temporary 10% experience boost|r. You'll need to purchase |cRXP_WARN_certain items from the auction house to take full advantage of this|r. If necessary,|cRXP_WARN_you can transfer gold from your other characters to make these purchases|r. However, if you find that you can't afford everything, |cRXP_WARN_It's still worthwhile to visit the Darkmoon Faire for the temporary experience buff and to buy only some of the items|r.
--     >>|cRXP_WARN_It is recommended to log in with a different character possessing at least 10,000 gold. Use this character to purchase the items and then send them over|r.
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Auctioneer Fitch|r.
--     .collect 71715,1
--     .collect 71638,1
--     .collect 71637,1
--     .collect 71636,1
--     .collect 71635,1
--     .collect 71952,1
--     .collect 71951,1
--     .collect 71953,1
--     .collect 71716,1
--     .target Auctioneer Fitch
--     .target Auctioneer Jaxon
--     .target Auctioneer Chilton
--     .dmf
-- step
--     #fresh
--     +The Darkmoon Faire event is now active, |cRXP_WARN_which guarantees you to gain an additional level for free and a temporary 10% experience boost|r.
--     .dmf
-- step
--     #veteran
--     .goto 37,41.95,67.16
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farmer|r.
--     >>|cRXP_WARN_These professions are used for Darkmoon Faire quests later. If you don't want to do this, skip this step|r.
--     .train 2259 >> Train |T4620669:0|t[Alchemy] and |T4620676:0|t[Inscription]
--     .skipgossip 47384,2,1,1
--     .target Lien Farmer
--     .dmf
-- step
--     #veteran
--     .goto 37,41.95,67.16
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farmer|r.
--     .train 45357 >> Train |T4620676:0|t[Inscription]
--     .skipgossip 47384,3,6,2
--     .target Lien Farmer
--     .dmf
--     .train 2259,3 --Only show if you have Alchemy
-- step
--     #veteran
--     .goto 37,41.89,67.10
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharynn Bouden|r. Buy the following items from him:
-- --    .collect 2604,1,29520,1 --Red Dye (1)
-- --    .collect 6260,1,29520,1 --Blue Dye (1)
-- --  .collect 2320,1,29520,1 --Coarse Thread (1)
--     .collect 30817,5,29509,1 --Simple Flour (5)
--     .collect 39354,5,29515,1 --Light Parchment (1)
--     .target Tharynn Bouden
--     .dmf
--     .train 45357,3 --Only show if you have Inscription
-- --XX 29520 needs to be added
-- --XX DMF section needs a polish at some point. Coords to 3dp, new formatting, #optional on steps
-- step
--     #veteran
--     .goto 37,41.89,67.10
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharynn Bouden|r. Buy the following items from him:
-- --    .collect 2604,1,29520,1 --Red Dye (1)
-- --    .collect 6260,1,29520,1 --Blue Dye (1)
-- --  .collect 2320,1,29520,1 --Coarse Thread (1)
--     .collect 30817,5,29509,1 --Simple Flour (5)
--     .target Tharynn Bouden
--     .dmf
-- --XX 29520 needs to be added
-- --XX DMF section needs a polish at some point. Coords to 3dp, new formatting, #optional on steps
-- step
--     .goto 37,43.2,65.99,5,0
--     .goto 37,43.2,65.63,5,0
--     .goto 37,42.9,65.7,5,0
--     .goto 37,41.78,69.55
--     .zone 407 >>Take the |cRXP_PICK_Darkmoon Faire Portal|r |cRXP_WARN_to the Darkmoon Island|r.
--     .dmf
-- step
--     #completewith next
--     +|TInterface/cursor/crosshair/interact.blp:20|tInteract with the |cRXP_FRIENDLY_Strider|r |cRXP_WARN_only if you don't have a level 1 mount|r.
--     .dmf
-- step
--     #veteran
--     .goto 407,51.57,24.84,10,0
--     .goto 407,55.83,53.02,15,0
--     .goto 407,50.44,59.33
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kae Ti|r and buy a |T133734:0|t[Ride Ticket Book] from her.
--     *|cRXP_WARN_buy the cheaper version |cRXP_WARN_on the left in the window|r|r.
--     .collect 92788,1,92794,1 --Ride Ticket Book (1)
--     .target Kae Ti
--     .dmf
-- step
--     #completewith next
--     .goto 407,49.45,57.5
--     .cast 107829 >> |cRXP_WARN_Open Ride Ticket Book|r.
--     .dmf
--     .use 92788
--     .use 92794
-- step
--     #veteran
--     .goto 407,49.45,57.5
--     >>|cRXP_WARN_Stand on the Carousel and |cRXP_WARN_wait for the Experience Buff to reach 60minutes|r|r.
--     >>|TInterface/cursor/crosshair/interact.blp:20|tClick the quest items in your bag |cRXP_WARN_and skip the ones you don't have)|
--     --x insert macro to accept quests here
--     .accept 29464 >>Accept Tools of Divination
--     .accept 29451 >>Accept The Master Strategist
--     .accept 29456 >>Accept A Captured Banner
--     .accept 29457 >>Accept The Enemy's Insignia
--     .accept 29458 >>Accept The Captured Journal
--     .accept 29443 >>Accept A Curious Crystal
--     .accept 29444 >>Accept An Exotic Egg
--     .accept 29445 >>Accept An Intriguing Grimoire
--     .accept 29446 >>Accept A Wondrous Weapon
--     .zoneskip 407,1
--     .dmf
-- step
--     #fresh
--     .goto 407,49.45,57.5
--     >>|cRXP_WARN_Stand on the Carousel and |cRXP_WARN_wait for the Experience Buff to reach 60minutes|r|r.
--     .zoneskip 407,1
--     .dmf
-- step
--     #veteran
--     .goto 407,51.91,60.94
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Professor Paleo|r.
--     .turnin -29464 >>Turn in Tools of Divination
--     .turnin -29451 >>Turn in The Master Strategist
--     .turnin -29456 >>Turn in A Captured Banner
--     .turnin -29457 >>Turn in The Enemy's Insignia
--     .turnin -29458 >>Turn in The Captured Journal
--     .turnin -29443 >>Turn in A Curious Crystal
--     .turnin -29446 >>Turn in A Wondrous Weapon
--     .zoneskip 407,1
--     .dmf
-- step
--     #veteran
--     .goto 407,47.76,64.76
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelvas Grimegate|r and buy as many |T669449:0|t[Darkmoon Top Hats] from him as you can.
--     .turnin 7905 >>Turn in The Darkmoon Faire
--     .collect 171364,1,29506,1 --Darkmoon Top Hat (1)
--     .target Gelvas Grimegate
--     .zoneskip 407,1
--     .dmf
-- step
--     #fresh
--     .goto 407,47.76,64.76
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelvas Grimegate|r.
--     .turnin 7905 >>Turn in The Darkmoon Faire
--     .target Gelvas Grimegate
--     .zoneskip 407,1
--     .dmf
-- step
--     .goto 407,52.89,67.96
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stamp Thunderhorn|r.
--     .accept 29509 >>Accept Putting the Crunch in the Frog
--     .target Stamp Thunderhorn
--     .zoneskip 407,1
--     .dmf
-- step
--     .goto 407,52.88,67.96
--     >>Use the |T133642:0|t[Plump Frogs] to turn them into |T237579:0|t[Breaded Frogs].
--     .collect 72056,5,29509,1,-1 --Plump Frogs (5)
--     .collect 30817,5,29509,1,-1 --Simple Flour (5)
--     .collect 72057,5,29509,1 --Breaded Frog (5)
--     .use 72056 --Plump Frog
--     .zoneskip 407,1
--     .dmf
--     .isOnQuest 29509
-- step
--     .goto 407,52.88,67.96
--     >>Use the |T237579:0|t[Breaded Frogs] near |cRXP_FRIENDLY_Stamp Thunderhorn|r.
--     .collect 72057,5,29509,1,-1 --Breaded Frog (5)
--     .complete 29509,1 --5/5 Crunchy Frog
--     .use 72057 --Breaded Frog
--     .zoneskip 407,1
--     .dmf
--     .isOnQuest 29509
-- step
--     .goto 407,52.88,67.96
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stamp Thunderhorn|r.
--     .turnin 29509 >>Turn in Putting the Crunch in the Frog
--     .target Stamp Thunderhorn
--     .zoneskip 407,1
--     .dmf
-- step
--     .goto 407,50.54,69.56
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sylannia|r and buy |T132792:0|t[Fizzy Faire Drinks] from her.
--     .accept 29506 >>Accept A Fizzy Fusion
--     .collect 19299,5,29506,1 --Fizzy Faire Drinks (5)
--     .target Sylannia
--     .zoneskip 407,1
--     .dmf
--     .train 2259,3 --Only show if you have Alchemy
-- step
--     .goto 407,50.54,69.56
--     >>Use the |T132793:0|t[Cocktail Shaker] to make |T463532:0|t[Moonberry Fizz]
--     .collect 1645,5,29506,1,-1 --Moonberry Juice (5)
--     .collect 19299,5,29506,1,-1 --Fizzy Faire Drinks (5)
--     .complete 29506,1 --5/5 Moonberry Fizz
--     .use 72043 --Cocktail Shaker
--     .zoneskip 407,1
--     .dmf
--     .isOnQuest 29506
-- step
--     .goto 407,50.53,69.56
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sylannia|r.
--     .turnin 29506 >>Turn in A Fizzy Fusion
--     .target Sylannia
--     .zoneskip 407,1
--     .dmf
--     .isOnQuest 29506
-- step
--     .goto 407,53.23,75.82
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sayge|r.
--     .turnin 29445 >>Turn in An Intriguing Grimoire
--     .accept 29515 >>Accept Writing the Future
--     .target Sayge
--     .zoneskip 407,1
--     .dmf
--     .isOnQuest 29445
--     .train 45357,3 --Only show if you have Inscription
-- step
--     #optional
--     .goto 407,53.23,75.82
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sayge|r.
--     .turnin 29445 >>Turn in An Intriguing Grimoire
--     .target Sayge
--     .zoneskip 407,1
--     .dmf
--     .isOnQuest 29445
-- step
--     #optional
--     .goto 407,53.23,75.82
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sayge|r.
--     .accept 29515 >>Accept Writing the Future
--     .target Sayge
--     .zoneskip 407,1
--     .dmf
--     .train 45357,3 --Only show if you have Inscription
-- step
--     .goto 407,53.23,75.82
--     >>Use the |T413571:0|t[Bundle of Exotic Herbs] to make |T237061:0|t[Prophetic Ink]
--     .collect 71972,1,29515,1
--     .use 71971
--     .zoneskip 407,1
--     .dmf
--     .isOnQuest 29515
-- step
--     .goto 407,53.23,75.82
--     >>Use the |T237061:0|t[Prophetic Ink] to make |T134943:0|t[Fortunes]
--     .collect 39354,5,29515,1,-1 --Light Parchment
--     .complete 29515,1 --5/5 Fortune
--     .use 71972
--     .zoneskip 407,1
--     .dmf
--     .isOnQuest 29515
-- step
--     .goto 407,53.23,75.82
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sayge|r.
--     .turnin 29515 >>Turn in Writing the Future
--     .target Sayge
--     .skipgossip
--     .zoneskip 407,1
--     .dmf
-- step
--     #veteran
--     .goto 407,51.11,82.04
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yebb Neblegear|r.
--     .turnin 29444 >>Turn in An Exotic Egg
--     .target Yebb Neblegear
--     .zoneskip 407,1
--     .dmf
--     .isOnQuest 29444
-- step
--     .goto 407,50.56,90.80
--     .zone 37 >>Take the |cRXP_PICK_Darkmoon Faire Portal|r |cRXP_WARN_to Elwynn Forest|r.
--     .zoneskip 407,1
--     .dmf
-- step
--     #completewith next
--     +|cRXP_WARN_Abandon your Professions|r
--     .link /run AbandonSkill(773); AbandonSkill(171); >> |cRXP_WARN_Click this text to receive a macro that will unlearn your professions|r.
--     --x .skill 773,<1 >>Unlearn Inscription
--     --x .skill 171,<1 >>Unlearn Alchemy
--     --x add unlearn logic
--     .isOnQuest 60
--     .dmf
-- step
--     #sticky
--     #label Professions1
--     #completewith Professions3
--     .goto 37,41.95,67.16
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farmer|r.
--     >>|cRXP_WARN_Herbing Herbs and Mining Veins provides XP. Only gather resources in your direct path|r.
--     >>|cRXP_WARN_If you don't want to do this, skip this step|r.
--     .train 2366 >> Train |T4620675:0|t[Herbalism]
--     .train 2575 >> Train |T4620679:0|t[Mining]
--     .target Lien Farmer
--     .skipgossip 47396,1,1,1
--     .train 2366,1 --Herbalism
--     .train 2575,1 --Mining
-- step
--     #optional
--     #requires Professions1
--     #label Professions2
--     #completewith Professions3
--     .goto 37,41.95,67.16
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farmer|r.
--     >>|cRXP_WARN_Herbing Herbs provides XP. Only gather resources in your direct path|r.
--     >>|cRXP_WARN_If you don't want to do this, skip this step|r.
--     .train 2366 >> Train |T4620675:0|t[Herbalism]
--     .target Lien Farmer
--     .skipgossip 47396,2,2,2
--     .train 2575,3 --Mining
-- step
--     #optional
--     #requires Professions2
--     #label Professions3
--     .goto 37,41.95,67.16
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farmer|r.
--     >>|cRXP_WARN_Mining Veins provides XP. Only gather resources in your direct path|r.
--     >>|cRXP_WARN_If you don't want to do this, skip this step|r.
--     .train 2575 >> Train |T4620679:0|t[Mining]
--     .target Lien Farmer
--     .skipgossip 47396,2,3,2
--     .train 2366,3 --Herbalism
-- step
--     #veteran
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Julia Stevens|r.
--     >>|cRXP_WARN_Skip this step if you don't have level 25 Pet Battle Pets|r.
--     .goto 37,41.65,83.67
--     .accept 31693 >>Accept Julia Stevens
--     .target Julia Stevens
--     .isQuestTurnedIn 31903 --x Pet Battle Campaign Check
-- step
--     #veteran
--     >>Defeat |cRXP_ENEMY_Julia Stevens|r in a Pet Battle.
--     .complete 31693,1 --Defeat Julia Stevens
--     .target Julia Stevens
--     .isOnQuest 31693
-- step
--     #veteran
--     .goto 37,41.66,83.66
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Julia Stevens|r.
--     .turnin 31693 >>Turn in Julia Stevens
--     .target Julia Stevens
--     .isQuestComplete 31693
]])

--Lost Dragonscale
RXPGuides.RegisterGuide([[
#retail
#version 4
#group RestedXP Speed Leveling
#name a) Lost Dragonscale Horde
#internal

<< Horde

step
    .accept 65436 >>Accept The Dragon Isles Await
step
    .isOnQuest 65435
    >>Use |T134309:0|t[Lost Dragonscale] to teleport to Orgrimmar.
    .complete 65436,1 --1/1 Lost Dragonscale used to teleport to near Wrathion's location (Optional)
step
    .isOnQuest 65435
    .abandon 65435,1
-- step
--     .goto 84,79.83,27.08
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wrathion|r to receive another |T134309:0|t[Lost Dragonscale] for future use.
--     .accept 65436 >>Accept The Dragon Isles Await
--     .target Wrathion
]])

--Phase Diving
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP War Within Loremaster
#name a) Phase Diving Unlock Free
#internal


step
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hashim|r
    .turnin 90938 >>Turn in A Skip Through the Void
    .target Hashim
    .isOnQuest 90938
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
    .goto 2371,74.90,31.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shad'anis|r
    .accept 89380 >>Accept Another World
    .target Shad'anis
step
    .isOnQuest 89380
    .goto 2371,50.36,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shad'anis|r
    .turnin 89380 >>Turn in Another World
    .accept 89343 >>Accept The Untethered Void
    .target Shad'anis
step
    .goto 2371,50.41,36.40
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Phase Conduit|r
    .complete 89343,2 --1/1 Untethered Space entered
step
    .goto 2371,50.41,36.40
    >>Use the |T4913234:0|t[|cRXP_WARN_ExtraActionButton|r]
    *|cRXP_WARN_Relog if you can't turn in the quest after using the |cRXP_WARN_ExtraActionButton|r|r
    .complete 89343,3 --1/1 Return to Normal Space
step
    .goto 2371,50.36,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shad'anis|r
    .turnin 89343 >>Turn in The Untethered Void
    .accept 89344 >>Accept What Doesn't See You
    .target Shad'anis
step
    #completewith next
    #label WhatDoesntSeeYouA
    #hidewindow
    .complete 89344,1 --4/4 Untethered Observers slain
    .complete 89344,2 --1/1 Phase Energy collected
step
    #completewith WhatDoesntSeeYouA
    .goto 2371,50.41,36.40
    .aura 1214374,1 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Phase Conduit|r
step
    #requires WhatDoesntSeeYouA
    #completewith next
    >>Kill |cRXP_ENEMY_Untethered Observers|r
    .complete 89344,1 --4/4 Untethered Observers slain
    .mob Untethered Observer
step
    #requires WhatDoesntSeeYouA
    .goto 2371,49.10,37.81
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Phase Energy|r
    .complete 89344,2 --1/1 Phase Energy collected
step
    #loop
    .goto 2371,48.33,37.15,30,0
    .goto 2371,49.39,36.27,35,0
    .goto 2371,49.20,39.49,35,0
    .goto 2371,48.06,38.61,35,0
    >>Kill |cRXP_ENEMY_Untethered Observers|r
    .complete 89344,1 --4/4 Untethered Observers slain
    .mob Untethered Observer
step
    #completewith next
    #label WhatDoesntSeeYouB
    #hidewindow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shad'anis|r
    .turnin 89344 >>Turn in What Doesn't See You
    .accept 89345 >>Accept The Untethered Horror
    .target Shad'anis
step
    #completewith next
    .aura -1214374 >>Remove the |T135752:0|t[Phase Diving] buff (with Right-Click)
step
    #requires WhatDoesntSeeYouB
    .goto 2371,50.36,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shad'anis|r
    .turnin 89344 >>Turn in What Doesn't See You
    .accept 89345 >>Accept The Untethered Horror
    .target Shad'anis
step
    #completewith next
    #label Netherdeath
    >>Kill |cRXP_ENEMY_Netherdeath|r
    .complete 89345,1 --1/1 Netherdeath slain within Untethered Space
    .mob Netherdeath
step
    #completewith Netherdeath
    .goto 2371,50.41,36.41
    .cast 1239390 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Phase Conduit|r.
step
    #requires Netherdeath
    .goto 2371,48.44,39.56,30,0
    .goto 2371,47.90,40.57
    >>Kill |cRXP_ENEMY_Netherdeath|r
    .complete 89345,1 --1/1 Netherdeath slain within Untethered Space
    .mob Netherdeath
step
    #completewith next
    #label TheUntetheredHorrorA
    #hidewindow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shad'anis|r
    .turnin 89345 >>Turn in The Untethered Horror
    .target Shad'anis
step
    #completewith next
    .aura -1214374 >>Remove the |T135752:0|t[Phase Diving] buff (with Right-Click)
step
    #completewith TheUntetheredHorrorA
    #hidewindow
    .goto 2371,50.36,36.31,20 >>1
step
    #requires TheUntetheredHorrorA
    .goto 2371,50.36,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shad'anis|r
    .turnin 89345 >>Turn in The Untethered Horror
    .target Shad'anis
step
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hashim|r
    .accept 89561 >>Accept Wrapped Up
    .target Hashim
step
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hashim|r
    .complete 89561,1 --1/1 Ask Hashim about empowering the Reshii Wraps
    .skipgossipid 132925
step
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hashim|r and select the upgrades.
    .complete 89561,2 --1/1 Ask Hashim about empowering the Reshii Wraps
    .skipgossipid 132925
step
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hashim|r
    .turnin 89561 >>Turn in Wrapped Up
    .target Hashim


]])

--Skyriding Panda Shiek
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Skyriding Panda
#internal

step
    .goto 627,72.04,41.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moratari|r
    .accept 90754 >>Accept Skyriding
    .target Moratari
step
    .goto 627,72.44,41.33
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 90754,1 --1/1 Take Moratari's portal
step
    >>Learn the Mount from your Inventory
    .complete 90754,3 --1/1 Learn your new skyriding mount from your inventory
step
    .goto 371,65.26,37.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
    .complete 90754,4 --1/1 Speak to Lord Andestrasz about Skyriding
    .target Lord Andestrasz
step
    .goto 371,65.27,37.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz about Skyriding|r
    .complete 90754,4 --1/1 Speak to Lord Andestrasz about Skyriding
    .target Lord Andestrasz about Skyriding
    .skipgossipid 120916
step
    .goto 371,65.27,37.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
    .turnin 90754 >>Turn in Skyriding
    .accept 80013 >>Accept How to Glide with Your Dragon
    .target Lord Andestrasz
step
    >>Use your Skyriding Mount
    .complete 80013,1 --1/1 Mount your drake from your collection [Shift+P]
step
    #loop
    .goto 371,65.44,37.23,10,0
    .goto 371,66.67,37.01,10,0
    .goto 371,67.5,36.07,10,0
    .goto 371,67.58,34.7,10,0
    .goto 371,67.33,33.9,10,0
    #title |cFFFCDC00Follow the Arrow|r
    .complete 80013,2 --5/5 Glide through the Rings
step
    .goto 371,66.75,33.39
    #title |cFFFCDC00Follow the Arrow|r
    .complete 80013,3 --1/1 Land in the target area
step
    .goto 371,66.75,33.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celormu|r
    .turnin 80013 >>Turn in How to Glide with Your Dragon
    .target Celormu
step
    .goto 371,65.23,37.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
    .accept 80015 >>Accept How to Dive with Your Dragon
    .target Lord Andestrasz
step
    >>Use your Skyriding Mount
    .complete 80015,1 --1/1 Hop on your Dragonriding mount (Optional)
step
    #loop
    .goto 371,65.39,37.21,10,0
    .goto 371,66.66,37.2,10,0
    .goto 371,67.96,37.32,10,0
    .goto 371,68.98,38.25,10,0
    .goto 371,69.71,39.84,10,0
    .goto 371,69.93,44.16,10,0
    .goto 371,68.08,46.86,10,0
    .goto 371,66.25,49.52,10,0
    #title |cFFFCDC00Follow the Arrow|r
    .complete 80015,2 --7/7 Glide through the Rings
step
    #loop
    .goto 371,66.25,49.52
    #title |cFFFCDC00Follow the Arrow|r
    .complete 80015,3 --1/1 Land in the Target Area
step
    .goto 371,66.23,49.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celormu|r
    .turnin 80015 >>Turn in How to Dive with Your Dragon
    .target Celormu
step
    .goto 371,65.24,37.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
    .accept 80016 >>Accept The Need For Higher Velocities
    .target Lord Andestrasz
step
    #loop
    .goto 371,65.38,37.28,10,0
    .goto 371,66.41,37.05,10,0
    .goto 371,68.28,36.07,10,0
    .goto 371,68.63,32.35,10,0
    .goto 371,67.26,27.22,10,0
    .goto 371,66,25.59,10,0
    .goto 371,64.98,24.26,10,0
    #title |cFFFCDC00Follow the Arrow|r
    .complete 80016,2 --6/6 Glide through the Rings
step
    .goto 371,64.98,24.26
    #title |cFFFCDC00Follow the Arrow|r
    .complete 80016,3 --1/1 Land in the Target Area
step
    .complete 80016,1 --1/1 Hop on your Dragonriding mount (Optional)
step
    .goto 371,64.98,24.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celormu|r
    .turnin 80016 >>Turn in The Need For Higher Velocities
    .target Celormu
step
    .goto 371,65.26,37.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
    .accept 80017 >>Accept The Need For Higher Altitudes
    .target Lord Andestrasz
step
    #title |cFFFCDC00Follow the Arrow|r
    .goto 371,65.43,37.16,10,0
    .goto 371,66.31,37.04,10,0
    .goto 371,67.87,35.49,10,0
    .goto 371,68.78,33.12,10,0
    .goto 371,68.19,29.91,10,0
    .goto 371,65.34,29.59,10,0
    .goto 371,65.35,29.6,10,0
    .complete 80017,2 --6/6 Glide through the Rings
step
    .goto 371,62.51,28.65
    #title |cFFFCDC00Follow the Arrow|r
    .complete 80017,3 --1/1 Land in the Target Area
step
    .complete 80017,1 --1/1 Hop on your Dragonriding mount (Optional)
step
    .goto 371,62.51,28.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celormu|r
    .turnin 80017 >>Turn in The Need For Higher Altitudes
    .target Celormu
step
    .goto 371,65.25,37.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
    .accept 80018 >>Accept Fashionable Flying
    .target Lord Andestrasz
step
    .goto 371,65.06,37.04
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rostrum of Transformation|r and exit it.
    .complete 80018,1 --1/1 Rostrum of Transformation used
step
    .goto 371,65.24,37.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
    .turnin 80018 >>Turn in Fashionable Flying
    .target Lord Andestrasz
    .accept 90755 >>Accept Time Flies
step
    .goto 627,72.16,41.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moratari|r
    .turnin 90755 >>Turn in Time Flies
    .target Moratari
step
    .goto 371,65.14,37.09
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .zone 627
    .cast 1246470


]])

--Skyriding Panda Permok
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Skyriding Panda
#internal


--skyriding start
step
    .goto 627,72.05,41.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moratari|r
    .accept 90754 >>Accept Skyriding
    .target Moratari
step
    .goto 627,72.41,41.40
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 90754,1 --1/1 Take Moratari's portal
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
    .complete 90754,2 --1/1 Acquire a skyriding mount from Lord Andestrasz
    .target Lord Andestrasz
    .skipgossipid 120917
    .skipgossipid 120921
    .skipgossipid 120920
    .skipgossipid 120919
    .skipgossipid 120918
step
    .goto 371,65.27,37.18
    .complete 90754,3 --1/1 Learn your new skyriding mount from your 
    >>Use your collected mount
    .use 194034
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
    .complete 90754,4 --1/1 Speak to Lord Andestrasz about Skyriding
    .target Lord Andestrasz
    .skipgossipid 120916
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
    .turnin 90754 >>Turn in Skyriding
    .accept 80013 >>Accept How to Glide with Your Dragon
    .target Lord Andestrasz
step
    .goto 371,65.27,37.27
    >>Mount up
    .complete 80013,1 --1/1 Mount your drake from your collection [Shift+P]
step
    .goto 371,66.51,37.16,10,0
    .goto 371,67.46,36.29
    >>Follow the rings. Use |T4640490:0|t[Surge Forward] or |T4640498:0|t[Skyward Ascent] to maintain your speed.
    .complete 80013,2,2 --2/5 Glide through the Rings
step
    .goto 371,67.46,36.29,10,0
    .goto 371,67.80,34.64
    >>Follow the rings. Use |T4640490:0|t[Surge Forward] or |T4640498:0|t[Skyward Ascent] to maintain your speed.
    .complete 80013,2,3 --3/5 Glide through the Rings
step
    .goto 371,67.80,34.64,10,0
    .goto 371,67.41,33.91
    >>Follow the rings. Use |T4640490:0|t[Surge Forward] or |T4640498:0|t[Skyward Ascent] to maintain your speed.
    .complete 80013,2,4 --4/5 Glide through the Rings
step
    .goto 371,67.41,33.91
    >>Follow the rings. Use |T4640490:0|t[Surge Forward] or |T4640498:0|t[Skyward Ascent] to maintain your speed.
    .complete 80013,2 --5/5 Glide through the Rings
step
    .goto 371,66.73,33.58
    >>Land on the hill
    .complete 80013,3 --1/1 Land in the target area
step
    .goto 371,66.75,33.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celormu|r
    .turnin 80013 >>Turn in How to Glide with Your Dragon
    .target Celormu
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
    .accept 80015 >>Accept How to Dive with Your Dragon
    .target Lord Andestrasz
step
    .goto 371,66.64,37.18,10,0
    .goto 371,67.90,37.18
    >>Follow the rings. Use |T4640490:0|t[Surge Forward] to maintain your speed.
    .complete 80015,2,2 --2/7 Glide through the Rings
step
    .goto 371,67.90,37.18,10,0
    .goto 371,68.95,37.95
    >>Follow the rings. Use |T4640490:0|t[Surge Forward] to maintain your speed.
    .complete 80015,2,3 --3/7 Glide through the Rings
step
    .goto 371,68.95,37.95,10,0
    .goto 371,69.83,39.60
    >>Follow the rings. Use |T4640490:0|t[Surge Forward] to maintain your speed.
    .complete 80015,2,4 --4/7 Glide through the Rings
step
    .goto 371,69.83,39.60,10,0
    .goto 371,70.00,43.96
    >>Follow the rings. Use |T4640490:0|t[Surge Forward] to maintain your speed.
    .complete 80015,2,5 --5/7 Glide through the Rings
step
    .goto 371,70.00,43.96,10,0
    .goto 371,68.31,46.92
    >>Follow the rings. Use |T4640490:0|t[Surge Forward] to maintain your speed.
    .complete 80015,2,6 --6/7 Glide through the Rings
step
    .goto 371,68.31,46.92
    >>Follow the rings. Use |T4640490:0|t[Surge Forward] to maintain your speed.
    .complete 80015,2 --7/7 Glide through the Rings
step
    .goto 371,66.29,49.31
    >>Follow the arrow
    .complete 80015,3 --1/1 Land in the Target Area
step
    .goto 371,66.25,49.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celormu|r
    .turnin 80015 >>Turn in How to Dive with Your Dragon
    .target Celormu
step
    .goto 371,65.27,37.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
    .accept 80016 >>Accept The Need For Higher Velocities
    .target Lord Andestrasz
step
    .goto 371,66.29,37.21,10,0
    .goto 371,68.27,36.26
    >>Follow the rings. Use |T4640490:0|t[Surge Forward] or |T4640498:0|t[Skyward Ascent] to maintain your speed.
    .complete 80016,2,2 --2/6 Glide through the Rings
step
    .goto 371,68.27,36.26,10,0
    .goto 371,68.81,32.48
    >>Follow the rings. Use |T4640490:0|t[Surge Forward] or |T4640498:0|t[Skyward Ascent] to maintain your speed.
    .complete 80016,2,3 --3/6 Glide through the Rings
step
    .goto 371,68.81,32.48,10,0
    .goto 371,67.41,27.37
    >>Follow the rings. Use |T4640490:0|t[Surge Forward] or |T4640498:0|t[Skyward Ascent] to maintain your speed.
    .complete 80016,2,4 --4/6 Glide through the Rings
step
    .goto 371,67.41,27.37,15,0
    .goto 371,66.02,25.50
    >>Follow the rings. Use |T4640490:0|t[Surge Forward] or |T4640498:0|t[Skyward Ascent] to maintain your speed.
    .complete 80016,2,5 --5/6 Glide through the Rings
step
    .goto 371,66.02,25.50
    >>Follow the rings. Use |T4640490:0|t[Surge Forward] or |T4640498:0|t[Skyward Ascent] to maintain your speed.
    .complete 80016,2 --6/6 Glide through the Rings
step
    .goto 371,65.01,24.46
    >>Follow the arrow.
    .complete 80016,3 --1/1 Land in the Target Area
step
    .goto 371,64.98,24.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celormu|r
    .turnin 80016 >>Turn in The Need For Higher Velocities
    .target Celormu
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
    .accept 80017 >>Accept The Need For Higher Altitudes
    .target Lord Andestrasz
step
    .goto 371,66.32,37.22,15,0
    .goto 371,67.93,35.70
    >>Let yourself glide down
    .complete 80017,2,2 --2/6 Glide through the Rings
step
    .goto 371,67.93,35.70,15,0
    .goto 371,68.77,33.45
    >>Follow the rings. Use |T4640498:0|t[Skyward Ascent] after reaching the ring.
    .complete 80017,2,3 --3/6 Glide through the Rings
step
    .goto 371,68.77,33.45,15,0
    .goto 371,68.51,29.83
    >>Follow the rings. Use |T4640490:0|t[Surge Forward] or |T4640498:0|t[Skyward Ascent] to maintain your speed.
    .complete 80017,2,4 --4/6 Glide through the Rings
step
    .goto 371,68.51,29.83,15,0
    .goto 371,65.39,29.58
    >>Follow the rings. Use |T4640490:0|t[Surge Forward] or |T4640498:0|t[Skyward Ascent] to maintain your speed.
    .complete 80017,2,5 --5/6 Glide through the Rings
step
    .goto 371,65.39,29.58
    >>Follow the rings. Use |T4640490:0|t[Surge Forward] or |T4640498:0|t[Skyward Ascent] to maintain your speed.
    .complete 80017,2 --6/6 Glide through the Rings
step
    .goto 371,62.59,28.66
    >>Follow the arrow
    .complete 80017,3 --1/1 Land in the Target Area
step
    .goto 371,62.47,28.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celormu|r
    .turnin 80017 >>Turn in The Need For Higher Altitudes
    .target Celormu
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
    .accept 80018 >>Accept Fashionable Flying
    .target Lord Andestrasz
step
    .goto 371,65.07,36.97
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rostrum of Transformation|r |cRXP_WARN_and leave it immediately|r
    .complete 80018,1 --1/1 Rostrum of Transformation used
step
    .goto 371,65.28,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
    .turnin 80018 >>Turn in Fashionable Flying
    .accept 90755 >>Accept Time Flies
    .target Lord Andestrasz
step
    #completewith next
    #label TimeFliesA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moratari|r
    .turnin 90755 >>Turn in Time Flies
    .target Moratari
step
    #completewith TimeFliesA
    .goto 371,65.13,37.09
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal to Dalaran|r
step
    #requires TimeFliesA
    .goto 627,72.04,41.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moratari|r
    .turnin 90755 >>Turn in Time Flies
    .target Moratari

--skyriding end

]])
