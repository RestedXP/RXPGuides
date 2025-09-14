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
--     .isQuestTurnedIn 31903 --x Pet Battle Check
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

--Skyriding Panda
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Skyriding Panda
#internal


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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r and choose one of the mounts.
    *|cRXP_WARN_You can still obtain the other mounts at another time|r.
    .complete 90754,2 --1/1 Acquire a skyriding mount from Lord Andestrasz
    .target Lord Andestrasz
    .skipgossipid 120917
    -- .skipgossipid 120921
    -- .skipgossipid 120920
    -- .skipgossipid 120919
    -- .skipgossipid 120918
step
    .goto 371,65.27,37.18
    >>Right-click to learn your mount.
    .complete 90754,3 --1/1 Learn your new skyriding mount from your 
    .use 194034
    .use 194521
    .use 194106
    .use 194549
    .use 194705
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
]])


-- ##################################################
-- #                  LEGION REMIX                  #
-- ##################################################

-- ================= ARTIFACT WEAPONS ================

-- --------- Death Knight ---------
--Nesting
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name ai) 1
#displayname Death Knight
#chapters a) Order Hall Death Knight;a) Artifact Weapon: Blood;a) Artifact Weapon: Frost DK;a) Artifact Weapon: Unholy



]])
--Blood
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Blood
#displayname Artifact Weapon: Blood
#internal


]])
--Frost
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Frost DK
#displayname Artifact Weapon: Frost
#internal

]])
--Unholy
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Unholy
#displayname Artifact Weapon: Unholy
#internal

]])

-- --------- Demon Hunter ---------
--Nesting
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name aj) 1
#displayname Demon Hunter
#chapters a) Order Hall Demon Hunter;a) Artifact Weapon: Havoc;a) Artifact Weapon: Vengeance



]])
--Havoc
RXPGuides.RegisterGuide([[}
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Havoc
#displayname Artifact Weapon: Havoc
#internal


step
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .complete 40814,1 --1/1 Artifact weapon chosen
    .choose 1390100
    .skipgossipid 45106
step
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .turnin 40814 >>Turn in The Power to Survive
    .target Kayn Sunfury
    .accept 40819 >>Accept Making Arrangements
step}
    .goto 627,65.63,67.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .turnin 40819 >>Turn in Making Arrangements
    .accept 39051 >>Accept By Any Means
step
    .goto 627,66.09,68.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Alturas|r
    .complete 39051,1 --1/1 Convince Warden Alturas
    .skipgossipid 45518
    .skipgossipid 45519
    .target Warden Alturas
step
    .goto 723,50.63,52.64
    #title |cFFFCDC00Follow the Arrow|r
    .complete 39051,2 --1/1 Enter the Violet Hold
    .timer 83,RP
step
    .goto 723,50.63,52.64
    #title |cFFFCDC00Wait for the Roleplay|r
    >>Kill |cRXP_ENEMY_|r
    .complete 39051,3 --1/1 Taldath interrogated
    .mob Taldath the Destroyer
step
    .goto 723,50.32,71.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .turnin 39051 >>Turn in By Any Means
    .target Kayn Sunfury
    .accept 39247 >>Accept The Hunt
step
    #completewith next
    #label Illidari Fel Bat
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Illidari Fel Bat|r
    .complete 39247,1 
    .target Illidari Fel Bat
step
    #completewith Illidari Fel Bat
    .zoneskip 627 >>Leave the Instance(Right-Click your player frame).
step
    #requires Illidari Fel Bat
    .goto 627,75.26,47.61
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Illidari Fel Bat|r
    .complete 39247,1 
    .timer 53,RP
    .target Illidari Fel Bat
step
    .isOnQuest 39247
    .goto 680,25.63,58.94
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .scenario 1808,1
    .target Illidari Fel Bat
step
    .isOnQuest 39247
    .goto 680,25.21,60.8,30,0
    .goto 680,25.87,61.97,30,0
    .goto 680,26.69,63.05,30,0
    .goto 680,27.38,65.03,30,0
    >>Kill ALL |cRXP_ENEMY_Demons|r
    .scenario 1822,2,52
    .mob Felsoul Fleshcarver
step
    .isOnQuest 39247
    .goto 680,28.18,64.48
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crystal|r
    .scenario 1822,1,1
step
    .isOnQuest 39247
    .goto 680,29.32,60.48
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crystal|r
    .scenario 1822,1,2
step
    .isOnQuest 39247
    #loop
    .goto 680,30.09,60.65,20,0
    .goto 680,29.97,63.95,30,0
    .goto 680,30.57,63.9,30,0
    .goto 680,30.3,65.99,30,0
    .goto 680,31.07,66,30,0
    >>Kill |cRXP_ENEMY_Demons|r |cRXP_WARN_but ignore |cRXP_ENEMY_Felsoul Crusher|r the infernal even if you have aggro|r.
    .scenario 1822,2,100
    .mob Fist of the Deceiver
    .mob Living Flame
    .mob Felsoul Ritualist
step
    .isOnQuest 39247
    .goto 680,31.5,66.77
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crystal|r
    .scenario 1822,1,3
step
    .isOnQuest 39247
    .goto 680,32.96,66.96
    >>Kill |cRXP_ENEMY_Varedis Felsoul|r
    .scenario 1825,1
    .mob Varedis Felsoul
step
    .isOnQuest 39247
    .goto 680,32.96,66.96
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Twinblades of the Deceiver|r
    .complete 39247,2 --1/1 Twinblades of the Deceiver
step
    #completewith next
    #label Turn in The Hunt
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'vas Bloodthorn|r
    .turnin 39247 >>Turn in The Hunt
    .target Kor'vas Bloodthorn
    .accept 42869 >>Accept Eternal Vigil
    .disablecheckbox
step
    #completewith Turn in The Hunt
    .zone 627 >>Leave the Instance(Right-Click your player frame).
]])
--Vengeance
RXPGuides.RegisterGuide([[ 
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Vengeance
#displayname Artifact Weapon: Vengeance
#internal


step
    .goto 627,74.40,51.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jace Darkweaver|r
    .turnin 41806 >>Turn in Return to Jace
    .target Jace Darkweaver
    .accept 41807 >>Accept Establishing a Connection
step
    .goto 627,74.37,51.54
    .complete 41807,1 --1/1 Legion Communicator activated
step
    .goto 627,74.02,51.60
    .complete 41807,2 --1/1 Scout's report received
step
    .goto 627,74.54,51.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jace Darkweaver|r
    .turnin 41807 >>Turn in Establishing a Connection
    .target Jace Darkweaver
step
    .goto 627,75.05,48.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .accept 40249 >>Accept Vengeance Will Be Ours
    .target Kayn Sunfury
step
    .goto 627,86.78,50.79
    .complete 40249,1 --1/1 Fly to the Broken Shore
step
    .goto 676,26.77,61.44
    .complete 40249,2 --1/1 Aldrachi Warblades
step
    .goto 619,46.93,64.59
    .complete 40249,3 --1/1 Return to Dalaran
]])

-- --------- Druid ---------
--Nesting
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#subweight 99.6
#name ak) 1
#displayname Druid
#chapters a) Order Hall Druid;a) Artifact Weapon: Balance;a) Artifact Weapon: Feral;a) Artifact Weapon: Guardian;a) Artifact Weapon: Restoration Druids



]])
--Balance
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Balance
#displayname Artifact Weapon: Balance
#internal

]])
--Feral
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Feral
#displayname Artifact Weapon: Feral
#internal

]])
--Guardian
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Guardian
#displayname Artifact Weapon: Guardian
#internal

]])
--Restoration
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Restoration Druids
#displayname Artifact Weapon: Restoration
#internal

]])

-- --------- Hunter ---------
--Nesting
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name al) 1
#displayname Hunter
#chapters a) Order Hall Hunter;a) Artifact Weapon: Beast Mastery;a) Artifact Weapon: Marksmanship;a) Artifact Weapon: Survival



]])
--Beast Mastery
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Beast Mastery
#displayname Artifact Weapon: Beast Mastery
#internal

]])
--Marksmanship
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Marksmanship
#displayname Artifact Weapon: Marksmanship
#internal

]])
--Survival
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Survival
#displayname Artifact Weapon: Survival
#internal

]])

-- --------- Mage ---------
--Nesting
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name am) 1
#displayname Mage
#chapters a) Order Hall Mage;a) Artifact Weapon: Arcane;a) Artifact Weapon: Fire;a) Artifact Weapon: Frost



]])
--Arcane
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Arcane
#displayname Artifact Weapon: Arcane
#internal

]])
--Fire
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Fire
#displayname Artifact Weapon: Fire
#internal

]])
--Frost
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Frost Mage
#displayname Artifact Weapon: Frost
#internal

]])

-- --------- Monk ---------
--Nesting
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name ah) 1
#displayname Monk
#chapters a) Order Hall Monk;a) Artifact Weapon: Windwalker;a) Artifact Weapon: Mistweaver;a) Artifact Weapon: Brewmaster



]])
--Brewmaster
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) Artifact Weapon: Brewmaster
#displayname Artifact Weapon: Brewmaster
#internal

step
    #completewith Dalaran
    #hidewindow
    +test
    .use 245925
    .use 246937
    .openitem 237812
    .openitem 243373
step
    .goto 709,51.41,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .turnin 40236 >>Turn in The Dawning Light
    .target Iron-Body Ponshu
    .accept 40636 >>Accept Prepare To Strike
step
    .goto 709,51.41,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .complete 40636,1 --1/1 Artifact weapon chosen
    .choose 1390109
    .skipgossipid 45061
    .target Iron-Body Ponshu
step
    .goto 709,51.41,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .turnin 40636 >>Turn in Prepare To Strike
    .target Iron-Body Ponshu
    .accept 42762 >>Accept The Wanderer's Companion
step
    #completewith next
    #label Tak-Tak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tak-Tak|r
    .complete 42762,1 --1/1 Speak with Tak-Tak
    .target Tak-Tak
step
    #completewith Tak-Tak
    .goto 709,49.71,47.37,10 >>Leave the House
step
    #requires Tak-Tak
    .goto 709,47.19,47.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tak-Tak|r
    .complete 42762,1 --1/1 Speak with Tak-Tak
    .timer 23,RP
    .skipgossipid 45493
    .target Tak-Tak
step
    .goto 371,41.67,27.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Monkey King|r
    .turnin 42762 >>Turn in The Wanderer's Companion
    .target The Monkey King
    .accept 42768 >>Accept The Riddle of Purity
    .accept 42766 >>Accept The Riddle of the Barrel
    .accept 42767 >>Accept The Riddle of the Land
step
    #completewith next
    #label Pure Water Core
    >>Kill |cRXP_ENEMY_Desecrator Ma'veth|r and |cRXP_ENEMY_Desecrated Water Spirit|r. Loot them for |T132844:0|t[|cRXP_LOOT_Pure Water Core|r].
    .complete 42768,1 --1/1 Pure Water Core
    .mob Desecrator Ma'veth
    .mob Desecrated Water Spirit
step
    #completewith Pure Water Core
    .cast 311850 >>Use |T615341:0|t[Purity Jug]
    .use 173703
step
    #requires Pure Water Core
    .goto 376,63.22,26.04
    >>Kill |cRXP_ENEMY_Desecrator Ma'veth|r and |cRXP_ENEMY_Desecrated Water Spirit|r. Loot them for |T132844:0|t[|cRXP_LOOT_Pure Water Core|r].
    .complete 42768,1 --1/1 Pure Water Core
    .mob Desecrator Ma'veth
    .mob Desecrated Water Spirit
step
    #completewith next
    #label Roasted Grain
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Grain|r
    .complete 42767,1,1 --5/5 Sack of Roasted Grain
step
    #completewith Roasted Grain
    .cast 311857 >>Use |T615341:0|t[Purity Jug]
    .use 173704
step
    #requires Roasted Grain
    #loop
    .goto 376,52.94,60.67,20,0
    .goto 376,51.13,60.79,20,0
    .goto 376,51.08,62.49,20,0
    .goto 376,52.6,63.37,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Grain|r
    .complete 42767,1, --5/5 Sack of Roasted Grain
step
    #completewith next
    #label Vadis
    >>Kill |cRXP_ENEMY_Vadis|r
    *|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Keg|r
    .complete 42766,1 --1/1 Odd Smelling Brew
    .mob Vadis
step
    #completewith Vadis
    .goto 376,51.6,64.28,10,0
    .goto 376,51.43,65.17,10,0
    .goto 376,51.11,64.98,10 >>Enter the House and and go upstairs.
step
    #requires Vadis
    .goto 376,51.50,64.43
    >>Kill |cRXP_ENEMY_Vadis|r
    *|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Keg|r
    .complete 42766,1 --1/1 Odd Smelling Brew
    .mob Vadis
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Monkey King|r |cRXP_WARN_next to you|r.
    .turnin 42766 >>Turn in The Riddle of the Barrel
    .target The Monkey King
    .turnin 42768 >>Turn in The Riddle of Purity
    .turnin 42767 >>Turn in The Riddle of the Land
    .accept 42957 >>Accept Journey to the East
step
    #completewith next
    #label Journey to the East
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Monkey King|r
    .turnin 42957 >>Turn in Journey to the East
    .accept 42868 >>Accept The Monkey King's Challenge
    .disablecheckbox
step
    #completewith Journey to the East
    .cast 311861 >>Use |T615341:0|t[Purity Jug]
    .use 173706
step
    #requires Journey to the East
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Monkey King|r
    .goto 371,55.42,58.14
    .turnin 42957 >>Turn in Journey to the East
    .accept 42868 >>Accept The Monkey King's Challenge
step
    .goto 371,55.31,58.56
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Brewpot|r
    .complete 42868,1 --1/1 Brewpot Set
    .timer 7.5,RP
step
    .goto 371,55.37,58.54
    .isOnQuest 42868
    .cast 217213 >>Click on the |cRXP_PICK_Blue Orb|r
    .timer 12,RP
step
    .goto 371,55.24,58.52
    .isOnQuest 42868
    .cast 217216 >>Click on the |cRXP_PICK_Flour|r
    .timer 10.5,RP
step
    .goto 371,55.21,58.43
    .isOnQuest 42868
    .cast 217219 >>Click on the |cRXP_PICK_Barrel|r
    .timer 11,RP
step
    .goto 371,55.39,58.46
    .isOnQuest 42868
    .cast 217224 >>Click on the |cRXP_PICK_Banana|r
    .timer 10,RP
step
    .goto 371,55.28,58.5
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Objects|r
    .complete 42868,2 --1/1 Brew Completed
step
    .goto 371,55.43,58.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Monkey King|r
    .turnin 42868 >>Turn in The Monkey King's Challenge
    .target The Monkey King
    .accept 42765 >>Accept The Trial at the Temple
step
    .goto 791,30.23,60.31
    #title |cFFFCDC00Follow the Arrow|r
    .complete 42765,1 --1/1 Enter the Temple of the Jade Serpent
    .timer 43,RP
step
    .goto 791,32.38,54.04
    .isOnQuest 42765
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .scenario 2613,1
step
    .isInScenario 1137
    .goto 791,32.09,55.99
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Gate|r and move forward.
    .scenario 2649,1
step
    .goto 791,30.41,59.54,15,0
    .goto 792,40.41,20.97,15,0
    .goto 792,34.88,44.12
    >>Kill |cRXP_ENEMY_Soulflayer of the Inquisiton|r
    .scenario 2649,2,1
    .isInScenario 1137
    .mob Soulflayer of the Inquisiton
step
    .goto 791,30.9,60.83,15,0
    .goto 792,38.99,21.57,15,0
    .goto 792,34.22,42.55
    >>Kill |cRXP_ENEMY_Soulflayer of the Inquisiton|r and his |cRXP_ENEMY_minions|r.
    .scenario 2649,2,1
    .isInScenario 1137
    .mob Soulflayer of the Inquisiton
    .mob Impling Pillager
step
    .goto 792,32.6,63.36,15,0
    .goto 792,51.17,71.47
    >>Kill |cRXP_ENEMY_Torturer of the Inquisition|r and his |cRXP_ENEMY_minions|r.
    .scenario 2649,2,2
    .isInScenario 1137
    .mob Torturer of the Inquisition
    .mob Impling Pillager
step
    .goto 792,61.76,73.56,15,0
    .goto 792,66.55,46.16,15,0
    .goto 792,56.64,42.48
    >>Kill |cRXP_ENEMY_Soulflayer of the Inquisiton|r and his |cRXP_ENEMY_minions|r.
    .scenario 2649,2,3
    .isInScenario 1137
    .mob Soulflayer of the Inquisiton
    .mob Impling Pillager
step
    .goto 791,25.15,66.37,15,0
    .goto 791,27.33,71.8
    >>Kill |cRXP_ENEMY_Belphiar|r
    .scenario 2650,1
    .timer 19,RP
    .isInScenario 1137
    .mob Belphiar
step
    .goto 791,40.59,78.62
    #title |cFFFCDC00Follow the Arrow|r
    .scenario 2684,1
    .isInScenario 1137
step
    .goto 791,45.39,80.88,15,0
    .goto 791,54.79,84.16,15,0
    .goto 791,53.68,75.04,15,0
    .goto 791,48.47,65.14,15,0
    .goto 791,51.32,52.08
    #title |cFFFCDC00Follow the Arrow|r
    .scenario 2661,1
    .isInScenario 1137
step
    .goto 791,51.32,52.08
    >>Kill the waves of |cRXP_ENEMY_Demons|r
    .scenario 2663,2,15
    .isInScenario 1137
    .mob Torturer of the Inquisition
    .mob Wrathguard Felstriker
    .mob Inquisitor's Eye
    .mob Impling Pillager
    .mob Arbiter of the Inquisiiton
step
    .goto 791,46.5,48.86
    >>Kill the waves of |cRXP_ENEMY_Demons|r
    .scenario 2663,2,100
    .scenario 2663,1
    .isInScenario 1137
    .mob Torturer of the Inquisition
    .mob Wrathguard Felstriker
    .mob Inquisitor's Eye
    .mob Impling Pillager
    .mob Arbiter of the Inquisiiton
step
    .goto 791,69.73,60.48
    >>Kill |cRXP_ENEMY_Lord Korthis|r
    *|cRXP_WARN_More accurate arrow is not possible|r.
    .scenario 2665,1
    .isInScenario 1137
    .mob Lord Korthis
step
    .goto 791,69.73,60.48
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Weapon|r
    *|cRXP_WARN_More accurate arrow is not possible|r.
    .scenario 2666,1
    .isInScenario 1137
-- step
--     .goto 791,69.73,60.48
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yu'lon|r
--     *|cRXP_WARN_More accurate arrow is not possible|r.
--     .scenario 2701,1
--     .timer 30,RP
--     .skipgossipid 46181
--     .isInScenario 1137
--     .target Yu'lon
-- step
--     .isInScenario 1137
--     .zone 371 >>Leave the Instance(Right-Click your player frame).
step
    #completewith next
    #label Trial at the Temple
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .turnin 42765 >>Turn in The Trial at the Temple
    .target Iron-Body Ponshu
    .accept 40793 >>Accept A Matter of Planning
    .disablecheckbox
step
    #completewith Trial at the Temple
    .cast 126892 >>Use |T775462:0|t[Zen Pilgrimage]
    .usespell 126892
step
    #requires Trial at the Temple
    .goto 709,51.41,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .turnin 42765 >>Turn in The Trial at the Temple
    .target Iron-Body Ponshu
    .accept 40793 >>Accept A Matter of Planning
]])
--Mistweaver
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Mistweaver
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#displayname Artifact Weapon: Mistweaver
#internal

step
    #completewith Dalaran
    #hidewindow
    +test
    .use 245925
    .use 246937
    .openitem 237812
    .openitem 243373
step
    .goto 709,51.41,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .turnin 40236 >>Turn in The Dawning Light
    .target Iron-Body Ponshu
    .accept 40636 >>Accept Prepare To Strike
step
    .goto 709,51.41,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .complete 40636,1 --1/1 Artifact weapon chosen
    .choose 1390110
    .skipgossipid 45061
    .target Iron-Body Ponshu
step
    .goto 709,51.41,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .turnin 40636 >>Turn in Prepare To Strike
    .target Iron-Body Ponshu
step
    .goto 709,51.41,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .turnin 40636 >>Turn in Prepare To Strike
    .target Iron-Body Ponshu
    .accept 41003 >>Accept The Emperor's Gift
step
    #completewith next
    #label MistweaverScenario
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tak-Tak|r
    .complete 41003,1 --1/1 Speak with Tak-Tak
    .target Tak-Tak
step
    #completewith MistweaverScenario
    #hidewindow
    .goto 709,50.49,47.67,15,0
    .goto 709,49.36,47.43,15 >>1
step
    #requires MistweaverScenario
    .goto 709,47.19,47.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tak-Tak|r
    .complete 41003,1 --1/1 Speak with Tak-Tak
    .timer 90,RP
    .skipgossipid 45491
    .target Tak-Tak
step
    .isOnQuest 41003
    #completewith Aspersius
    +Use |T1360980:0|t[Vivify] on |cRXP_FRIENDLY_Taran Zhu|r to keep him alive and to resurrect him same for all your team membersw.
    *|cRXP_WARN_It's important as you can't progress with him being dead|r.
    .target Taran Zhu
step
    .isOnQuest 41003
    .goto 728,92.14,55.2
    >>Use |T1360980:0|t[Vivify] on |cRXP_FRIENDLY_Taran Zhu|r.
    .scenario 2091,1
    .timer 26.5,RP
    .target Taran Zhu
    .usespell 116670
step
    .isInScenario 1007
    .goto 728,78.47,48.82
    >>Kill |cRXP_ENEMY_Hellwarden Xaphan|r
    .scenario 2098,4
    .timer 30,RP
    .mob Hellwarden Xaphan
step
    .isInScenario 1007
    .goto 728,59.2,51.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fei Li|r
    .scenario 2100,1
    .skipgossipid 44884
    .target Fei Li
step
    .isInScenario 1007
    .goto 728,58.86,48.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r
    .scenario 2100,3
    .skipgossipid 44888
    .target Taoshi
step
    .isInScenario 1007
    .goto 728,58.97,45.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hawkmaster Nurong|r
    .scenario 2100,2
    .skipgossipid 44887
    .target Hawkmaster Nurong
step
    .isInScenario 1007
    .goto 728,61.89,48.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
    .scenario 2131,1
    .skipgossipid 45376
    .target Taran Zhu
step
    #label Aspersius
    .isInScenario 1007
    .goto 728,40.25,48.82
    >>Kill |cRXP_ENEMY_Aspersius|r
    .scenario 2131,2
    .mob Aspersius
step
    .goto 728,39.21,48.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Weapon|r
    .complete 41003,2 --1/1 Acquire Sheilun
step
    .xp <11,1
    #title |cFFFCDC00Spam Macro|r
    .goto 728,44.12,53.64
    >>|cRXP_WARN_In the "Active Items" section|r There is a macro, spam it after talking to |cRXP_FRIENDLY_Taran Zhu|r.
    .complete 41003,3 --1/1 Fly Home with Tak-Tak
    .macro Leave Vehicle,6656430 >> /leavevehicle
    .skipgossipid 45497
    .target Tak-Tak
step
    .xp <11,1
    #title |cFFFCDC00Spam Macro|r
    .isOnQuest 41003
    .cast 126892 >>Use |T775462:0|t[Zen Pilgrimage] to return to your orderhall.
    .usespell 126892
    .macro Leave Vehicle,6656430 >> /leavevehicle
step
    .xp >11,1
    .goto 728,44.12,53.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r.
    .complete 41003,3 --1/1 Fly Home with Tak-Tak
    .timer 53,RP
    .skipgossipid 45497
    .target Tak-Tak
step
    .goto 709,51.40,48.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .turnin 41003 >>Turn in The Emperor's Gift
    .target Iron-Body Ponshu    
]])
--Windwalker
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Windwalker
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#displayname Artifact Weapon: Windwalker
#internal

step
    #completewith Dalaran
    #hidewindow
    +test
    .use 245925
    .use 246937
    .openitem 237812
    .openitem 243373
step
    .goto 709,51.41,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .turnin 40236 >>Turn in The Dawning Light
    .target Iron-Body Ponshu
    .accept 40636 >>Accept Prepare To Strike
step
    .goto 709,51.41,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .complete 40636,1 --1/1 Artifact weapon chosen
    .choose 1390111
    .skipgossipid 45061
    .target Iron-Body Ponshu
step
    #requires Prepare To Strike
    .goto 709,51.4,48.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .turnin 40636 >>Turn in Prepare To Strike
    .target Iron-Body Ponshu
    .accept 40569 >>Accept The Legend of the Sands
step
    #completewith next
    #label Prepare To Strike
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li Stormstout|r
    .complete 40569,1 --1/1 Speak with Li Li Stormstout
    .target Li Li Stormstout
step
    #completewith Prepare To Strike
    .goto 709,51.28,53.77,10,0
    .goto 709,49.91,58.68,10 >>Enter the House
step
    #requires Prepare To Strike
    .goto 709,49.12,58.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li Stormstout|r
    .complete 40569,1 --1/1 Speak with Li Li Stormstout
    .skipgossipid 44948
    .skipgossipid 45131
    .skipgossipid 45128
    .target Li Li Stormstout
step
    .goto 709,49.12,58.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .turnin 40569 >>Turn in The Legend of the Sands
    .accept 40633 >>Accept Off To Adventure!
    .timer 48,RP
    .target Iron-Body Ponshu
step
    .goto 709,50.49,58.61
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Kite|r |cRXP_WARN_after the roleplay|r.
    .complete 40633,1 --1/1 Ride Li Li's kite to Ramkahen (Optional)
    .timer 15,RP
step
    .goto 249,54.85,32.90
    #title |cFFFCDC00Follow the Arrow|r
    .complete 40633,2 --1/1 Meet With Li Li in Ramkahen
    .target Li Li Stormstout
step
    .goto 249,54.85,32.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li Stormstout|r
    .turnin 40633 >>Turn in Off To Adventure!
    .target Li Li Stormstout
step
    .goto 249,54.91,32.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Phaoris|r
    .accept 40634 >>Accept Thunder on the Sands
    .target King Phaoris
step
    #completewith next
    #label Clue Discovered
    >>Kill |cRXP_ENEMY_Nader|r. Loot him for |T348535:0|t[|cRXP_LOOT_Essence of Whirlwind].
    .complete 40634,1 --1/1 Clue Discovered
    .mob Nader
step
    #completewith Clue Discovered
    .goto 249,54.92,33.66,15 >>Leave the House
step
    #requires Clue Discovered
    #title |cFFFCDC00Fly manually|r
    .goto 249,45.65,14.35
    >>Kill |cRXP_ENEMY_Nader|r. Loot him for |T348535:0|t[|cRXP_LOOT_Essence of Whirlwind].
    .complete 40634,1 --1/1 Clue Discovered
step
    #completewith next
    #label Thunder on the Sands
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Phaoris|r
    .turnin 40634 >>Turn in Thunder on the Sands
    .target King Phaoris
    .accept 40570 >>Accept Into The Heavens
    .disablecheckbox
step
    #completewith Thunder on the Sands
    .goto 249,54.92,33.81,15 >>Enter the Building
step
    #requires Thunder on the Sands
    .goto 249,54.91,32.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Phaoris|r
    .turnin 40634 >>Turn in Thunder on the Sands
    .target King Phaoris
    .accept 40570 >>Accept Into The Heavens
step
    #completewith next
    #label Essence of the Whirlwind
    >>Use |T348535:0|t[Essence of the Whirlwind]
    .complete 40570,1 --1/1 Use the Essence of the Whirlwind
step
    #completewith Essence of the Whirlwind
    .goto 249,54.92,33.61,,10 >>Leave the building
step
    #requires Essence of the Whirlwind
    .goto 249,54.92,33.61
    >>Use |T348535:0|t[Essence of the Whirlwind]
    .complete 40570,1 --1/1 Use the Essence of the Whirlwind
    .timer 19,RP
    .use 132745
step
    .isInScenario 983
    .goto 716,30.39,44.18
    >>Kill |cRXP_ENEMY_Howling Winds|r and |cRXP_ENEMY_Lesser Sandling|r.
    .timer 10,RP
    .scenario 2006,1
    .mob Lesser Sandling
    .mob Howling Winds
step
    .isInScenario 983
    .goto 716,29.91,47.18
    .countdown 14 >>Wait infront of the Tornadoes
step
    .isInScenario 983
    .goto 716,29.61,50.7,15,0
    .goto 716,31.34,51.67,15,0
    .goto 716,33.17,50.27,15,0
    .goto 716,30.74,49.37,15,0
    .goto 716,31.03,49.94
    #title |cFFFCDC00Follow the Arrow|r
    >>Avoid the tornadoes and enter the green swirls for a speed boost.
    .scenario 2013,1 
step
    .isInScenario 983
    .goto 716,32.58,52.54
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Stormtouched Orb|r
    .scenario 2007,1,1
step
    .isInScenario 983
    .goto 716,29.3,54.99
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Stormtouched Orb|r
    .scenario 2007,1,2
step
    .isInScenario 983
    .goto 716,25.49,60.28
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Stormtouched Orb|r
    .scenario 2007,1,3
    .timer 20
step
    .isInScenario 983
    .goto 716,26.75,59.97
    .countdown 40 >>Kill |cRXP_ENEMY_Scion of Typhinius|r 
    .mob Scion of Typhinius
step
    .isInScenario 983
    .goto 716,28.93,63.06
    #title |cFFFCDC00Follow the Arrow|r
    .scenario 2007,2
    .timer 10,RP
step
    .isInScenario 983
    .goto 716,31.26,66.71
    >>Kill his |cRXP_ENEMY_Minios|r
    .scenario 2008,1
    .mob Storm Cloud
    .mob Howling Winds
    .mob Na'ser
    .mob Zaurac
step
    .isInScenario 983
    .goto 716,31.26,66.71
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Zaurac|r
    .scenario 2009,1
    .timer 25,RP
    .target Zaurac
step
    .isInScenario 983
    .goto 716,35.76,82.93
    >>Kill |cRXP_ENEMY_Typhinius|r
    .scenario 2010,1
    .mob Typhinius
step
    .isInScenario 983
    .goto 716,35.76,82.93
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Fists|r
    .scenario 2011,1
    .mob Typhinius
step
    .goto 716,35.65,84.21
    .vehicle >>Click on the Kite
step
    .goto 709,49.11,58.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li Stormstout|r
    .turnin 40570 >>Turn in Into The Heavens
    .target Li Li Stormstout
-- step
--     .zone 709 >>Leave the Instance(Right-Click your player frame).
-- step
--     #completewith next
--     #hidewindow
--     #label Into The Heavens
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li Stormstout|r
--     .turnin 40570 >>Turn in Into The Heavens
--     .target Li Li Stormstout
-- step
--     #completewith Into The Heavens
--     .cast 126892 >>Use |T775462:0|t[Zen Pilgrimage]
--     .usespell 126892
-- step
--     #requires Into The Heavens
--     #completewith next
--     #label Into The Heavens2
--     .goto 709,49.11,58.67
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li Stormstout|r
--     .turnin 40570 >>Turn in Into The Heavens
--     .target Li Li Stormstout
-- step
--     #requires Into The Heavens
--     #completewith Into The Heavens2
--     .goto 709,51.28,53.74,30,0
--     .goto 709,49.96,58.69,30,0
--     .goto 709,51.43,48.41,10 >>Enter the House
-- step
--     #requires Into The Heavens2
--     .goto 709,49.11,58.67
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li Stormstout|r
--     .turnin 40570 >>Turn in Into The Heavens
--     .target Li Li Stormstout

]])

-- --------- Paladin ---------
--Nesting
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name an) 1
#displayname Paladin
#chapters a) Order Hall Paladin;a) Artifact Weapon: Holy Paladin;a) Artifact Weapon: Protection;a) Artifact Weapon: Retribution



]])
--Holy
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Holy Paladin
#displayname Artifact Weapon: Holy
#internal

]])
--Protection
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Protection
#displayname Artifact Weapon: Protection
#internal

]])
--Retribution
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Retribution
#displayname Artifact Weapon: Retribution
#internal

]])

-- --------- Priest ---------
--Nesting
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name ao) 1
#displayname Priest
#chapters a) Order Hall Priest;a) Artifact Weapon: Discipline;a) Artifact Weapon: Holy Priest;a) Artifact Weapon: Shadow



]])
--Discipline
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Discipline
#displayname Artifact Weapon: Discipline
#internal

]])
--Holy
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Holy Priest
#displayname Artifact Weapon: Holy
#internal

]])
--Shadow
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Shadow
#displayname Artifact Weapon: Shadow
#internal

]])

-- --------- Rogue ---------
--Nesting
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name ap) 1
#displayname Rogue
#chapters a) Order Hall Rogue;a) Artifact Weapon: Assassination;a) Artifact Weapon: Outlaw;a) Artifact Weapon: Subtlety



]])
--Assassination
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Assassination
#displayname Artifact Weapon: Assassination
#internal

]])
--Outlaw
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Outlaw
#displayname Artifact Weapon: Outlaw
#internal

]])
--Subtlety
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Subtlety
#displayname Artifact Weapon: Subtlety
#internal

]])

-- --------- Shaman ---------
--Nesting
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name aq) 1
#displayname Shaman
#chapters a) Order Hall Shaman;a) Artifact Weapon: Elemental;a) Artifact Weapon: Enhancement;a) Artifact Weapon: Restoration



]])
--Elemental
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Elemental
#displayname Artifact Weapon: Elemental
#internal


step
    #loop
    .goto 725,34.07,74.37,10,0
    .goto 725,34.34,76.12,10,0
    .goto 725,35.76,77.48,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rehgar Earthfury|r
    .accept 43334 >>Accept The Coming Storm
    .target Rehgar Earthfury
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Graddoc|r
    .complete 43334,1 --1/1 Fly with Graddoc (Optional)
step
    .goto 379,66.90,56.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xuen|r
    .turnin 43334 >>Turn in The Coming Storm
    .accept 43338 >>Accept The Codex of Ra
    .target Xuen
step
    .goto 390,22.39,26.70
    >>|cRXP_WARN_Follow the arrow|r
    .complete 43338,1 --1/1 Travel to the Guo-Lai Halls
step
    .zoneskip 395
    .isOnQuest 43338
    .isQuestNotComplete 43338
    .goto 395,55.19,91.12,12 >>Enter the Guo-Lai Halls
step
    #completewith TheEdictsOfXA
    >>Kill the |cRXP_ENEMY_Mogu Spirits|r in the Guo-Lai Halls
    *|cRXP_WARN_Avoid the |cRXP_ENEMY_Mogu Statues|r.|r
    .complete 43338,5 --8/8 Mogu Spirits Purged
    .mob Shao-Tien Spirit Warrior
    .mob Shao-Tien Spirit Wraith
step
    #completewith next
    #label TheEdictOfFireA
    >>Kill |cRXP_ENEMY_Xioliang|r. Loot him for the |T1017867:0|t[|cRXP_LOOT_Edict of Fire|r]
    .complete 43338,2 --1/1 The Edict of Fire
    .mob Xioliang
step
    #completewith next
    .isOnQuest 43338
    .isQuestNotComplete 43338
    .goto 395,47.43,81.40,15,0
    .goto 395,52.13,63.98,25,0
    .goto 395,67.44,68.62,25 >>Enter the Guo-Lai Ritual Chamber
step
    #hidewindow
    #completewith TheEdictOfFireA
    .goto 395,74.25,53.19,50 >>1
step
    #requires TheEdictOfFireA
    .goto 395,74.83,51.02
    >>Kill |cRXP_ENEMY_Xioliang|r. Loot him for the |T1017867:0|t[|cRXP_LOOT_Edict of Fire|r].
    .complete 43338,2 --1/1 The Edict of Fire
    .mob Xioliang
step
    #completewith next
    #label TheEdictOfStoneA
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Statue of Zhu of the Eternal Stone|r.
    >>Kill |cRXP_ENEMY_Zhu of the Eternal Stone|r. Loot him for the |T442737:0|t[|cRXP_LOOT_Edict of Stone|r].
    .complete 43338,3 --1/1 The Edict of Stone
    .mob Xioliang
step
    #completewith next
    .isOnQuest 43338
    .isQuestNotComplete 43338
    .goto 395,64.19,66.71,15,0
    .goto 395,27.75,46.45,15,0
    .goto 395,48.87,30.24,15 >>Enter the Guo-Lai Vault
step
    #hidewindow
    #completewith TheEdictOfStoneA
    .goto 395,48.87,30.24,50 >>1
step
    #requires TheEdictOfStoneA
    .goto 395,48.87,30.24
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Statue of Zhu of the Eternal Stone|r.
    >>Kill |cRXP_ENEMY_Zhu of the Eternal Stone|r. Loot him for the |T442737:0|t[|cRXP_LOOT_Edict of Stone|r].
    .complete 43338,3 --1/1 The Edict of Stone
    .mob Zhu of the Eternal Stone
step
    #completewith next
    #label TheEdictOfStormA
    >>Kill |cRXP_ENEMY_Thunder Serpent Nalak'Ra|r. Loot it for the |T839911:0|t[|cRXP_LOOT_Edict of Storm|r].
    .complete 43338,4 --1/1 The Edict of Storm
    .mob Thunder Serpent Nalak'Ra
step
    --TODO: Color title
    #completewith next
    .isOnQuest 43338
    .isQuestNotComplete 43338
    #title Avoid all runes besides the blue/white ones
    .goto 395,32.94,21.14,15,0
    .goto 395,27.75,46.45,15,0
    .goto 395,51.81,57.95,25,0
    .goto 395,56.24,48.40,15,0
    .goto 395,64.67,23.05,15,0
    .goto 395,68.78,23.98,15,0
    .goto 395,69.57,15.71,15,0
    .goto 396,66.28,19.96,15 >>Enter the Hall of the Serpent
step
    #hidewindow
    #completewith next
    .goto 395,66.57,15.31,15 >>1
step
    #hidewindow
    #completewith TheEdictOfStormA
    .goto 395,62.79,13.12,15 >>1
step
    #requires TheEdictOfStormA
    .goto 396,57.75,50.75
    >>Kill |cRXP_ENEMY_Thunder Serpent Nalak'Ra|r. Loot it for the |T839911:0|t[|cRXP_LOOT_Edict of Storm|r].
    .complete 43338,4 --1/1 The Edict of the Storm
    .mob Thunder Serpent Nalak'Ra
step
    #completewith next
    #label TheCodexofRaA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rehgar Earthfury|r
    .turnin 43338 >>Turn in The Codex of Ra
    .accept 39771 >>Accept The Voice of Thunder
    .target Rehgar Earthfury
step
    #completewith next
    #title Avoid all runes besides the blue/white ones
    .goto 395,67.13,14.55,15,0
    .goto 395,70.22,18.57,15,0
    .goto 395,68.17,24.88,15,0
    .goto 395,63.00,25.50,15 >>Go back upstairs
step
    #hidewindow
    #completewith TheCodexofRaA
    .goto 395,56.24,48.40,30 >>1
step
    #requires TheCodexofRaA
    .goto 395,47.11,83.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rehgar Earthfury|r
    .turnin 43338 >>Turn in The Codex of Ra
    .accept 39771 >>Accept The Voice of Thunder
    .target Rehgar Earthfury
step
    #completewith next
    #label TheVoiceOfThunderA
    >>|cRXP_WARN_Follow the arrow|r
    .complete 39771,1 --1/1 Travel to the Temple of the White Tiger
step
    #completewith TheVoiceOfThunderA
    #title Leave the Guo-Lai Halls
    .goto 390,22.55,27.08,15 >>|cRXP_WARN_Leave the Guo-Lai Halls|r
step
    #requires TheVoiceOfThunderA
    .goto 379,68.63,57.01
    >>|cRXP_WARN_Follow the arrow|r
    .complete 39771,1 --1/1 Travel to the Temple of the White Tiger
step
    .isInScenario 976
    .goto 379,68.6,57.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Xuen|r
    .scenario 1992,1 --Speak with the White Tiger.
    .skipgossipid 45121
    .target Xuen
step
    .isInScenario 976
    #completewith next
    #label DefeatTheGiantslayerA
    >>Defeat |cRXP_ENEMY_Sigurd the Giantslayer|r
    .scenario 1993,1 --Defeat Sigurd the Giantslayer.
    .mob Sigurd the Giantslayer
step
    #completewith DefeatTheGiantslayerA
    .goto 379,69.32,52.72
    .gossipoption 45122 >>Talk to the |cRXP_FRIENDLY_Xuen|r
    .target Xuen
step
    #requires DefeatTheGiantslayerA
    .isInScenario 976
    .goto 379,69.7,53.0
    >>Defeat |cRXP_ENEMY_Sigurd the Giantslayer|r
    .scenario 1993,1 --Defeat Sigurd the Giantslayer.
    .mob Sigurd the Giantslayer
step
    .isInScenario 976
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Xuen|r
    .goto 379,66.7,51.2
    .scenario 1999,1 --Speak with Xuen to Begin
    .target Xuen
    .skipgossipid 45039
step
    .isInScenario 976
    .goto 379,66.7,51.2
    >>Defeat |cRXP_ENEMY_Chen Stormstout|r and |cRXP_ENEMY_Li Li Stormstout|r
    .scenario 1999,2 --Chen Stormstout Defeated
    .scenario 1999,3 --Li Li Stormstout Defeated
    .mob Chen Stormstout
    .mob Li Li Stormstout
step
    #completewith next
    #label WeaponsOfStormA
    .isInScenario 976
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Fists of Ra-den|r
    .scenario 2078,1 --Equip the Weapons of the Storm
step
    #completewith WeaponsOfStormA
    #title Enter the Temple
    .goto 379,68.60,45.89,15 >>Enter the Temple of the White Tiger
step
    #requires WeaponsOfStormA
    .isInScenario 976
    .goto 379,68.79,43.70
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Fists of Ra-den|r
    .scenario 2078,1 --Equip the Weapons of the Storm
step
    .isInScenario 976
    .goto 379,68.8,43.7
    >>Kill |cRXP_ENEMY_Lord Kra'vos|r and the four |cRXP_ENEMY_Low Inquisitors|r
    .scenario 2079,1 --Defeat Lord Kra'vos
    .mob Low Inquisitor
    .mob Kra'vos
step
    .goto 379,68.79,43.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Astral Gate to the Maelstrom|r
    .complete 39771,3 --1/1 Return to the Maelstrom
step
    .goto 726,33.48,74.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rehgar Earthfury|r
    .turnin 39771 >>Turn in The Voice of Thunder
    .target Rehgar Earthfury
]])
--Enhancement
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Enhancement
#displayname Artifact Weapon: Enhancement
#internal

]])
--Restoration
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Restoration Shaman
#displayname Artifact Weapon: Restoration
#internal

]])

-- --------- Warlock ---------
--Nesting
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name ar) 1
#displayname Warlock
#chapters a) Order Hall Warlock;a) Artifact Weapon: Affliction;a) Artifact Weapon: Demonology;a) Artifact Weapon: Destruction



]])
--Affliction
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Affliction
#displayname Artifact Weapon: Affliction
#internal

]])
--Demonology
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Demonology
#displayname Artifact Weapon: Demonology
#internal

]])
--Destruction
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Destruction
#displayname Artifact Weapon: Destruction
#internal

]])

-- --------- Warrior ---------
--Nesting
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name as) 1
#displayname Warrior
#chapters a) Order Hall Warrior;a) Artifact Weapon: Arms;a) Artifact Weapon: Fury;a) Artifact Weapon: Protection



]])
--Arms
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Arms
#displayname Artifact Weapon: Arms
#internal

]])
--Fury
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Fury
#displayname Artifact Weapon: Fury
#internal

]])
--Protection
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Protection
#displayname Artifact Weapon: Protection
#internal

]])