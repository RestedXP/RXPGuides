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
    #completewith Champion: Archmage Modera
    #hidewindow
    +test
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    .openitem 237812 -- Cache of Infinite Treasure
    .openitem 243373 -- Timerunner's Weaponry
    .openitem 246814 -- Bronze Cache
    .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .goto 627,72.05,41.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moratari|r
    .accept 90754 >>Accept Skyriding
    .timer 5,RP
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
    .timer 3,RP
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
    .timer 3,RP
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
    .timer 3,RP
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
    .timer 3,RP
    .target Celormu
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
    .accept 80018 >>Accept Fashionable Flying
    .target Lord Andestrasz
step
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rostrum of Transformation|r |cRXP_WARN_and leave it immediately|r
    .complete 80018,1 --1/1 Rostrum of Transformation used
step
    .goto 371,65.07,36.97,10,0
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
    #label Skyriding
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
#chapters a) Order Hall Death Knight Part 1;ab) Order Hall Death Knight Part 2;ac) Order Hall Death Knight;a) Artifact Weapon: Blood;a) Artifact Weapon: Frost DK;a) Artifact Weapon: Unholy



]])
--Blood
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name a) Artifact Weapon: Blood
#displayname Artifact Weapon: Blood
#next


]])
--Frost
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Frost DK
#displayname Artifact Weapon: Frost
#next

step
    .goto 627,73.09,46.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chakheg|r
    .accept 38990 >>Accept The Call of Icecrown
    .target Chakheg
step
    .goto 627,73.60,46.85
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Death Gate|r
    .complete 38990,1 --1/1 Use Death Gate
step
    .goto 698,59.7,17.3
    .isInScenario 901
    >>|cRXP_WARN_Step on the button|r
    .scenario 1809,1 --Open the Gate to Icecrown
step
    .goto 698,59.74,0.36
    .scenario 1973,1 --1/1 Enter Icecrown Citadel
step
    #completewith next
    +|cRXP_WARN_To open the door, kill the |cRXP_ENEMY_Stoneskin Gatekeeper|r on top of at least one button (or use |T237532:0|t|r[Death Grip] |cRXP_WARN_to grip them onto one) and stand on top of the second one.
step
    .goto 700,52.16,66.08
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Fragments of Frostmourne|r
    .scenario 1810,1,1 --1/4 Collect Fragments within Icecrown Citadel
step
    .goto 700,59.89,53.69
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Fragments of Frostmourne|r
    .scenario 1810,1,2 --2/4 Collect Fragments within Icecrown Citadel
step
    .goto 700,51.27,41.31
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Fragments of Frostmourne|r
    .scenario 1810,1,3 --3/4 Collect Fragments within Icecrown Citadel
step
    .goto 700,51.33,49.96
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Fragments of Frostmourne|r
    .scenario 1810,1 --4/4 Collect Fragments within Icecrown Citadel
step
    .goto 700,51.82,53.41
    .isInScenario 901
    >>|cRXP_WARN_Walk onto the teleporter|r
    .scenario 1811,1 --Use the Scourge Teleporter within the Spire
step
    #completewith next
    #hidewindow
    .cast 186253 >>1
    .timer 24,Roleplay
step
    .goto 701,49.82,51.71
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Hilt of Frostmourne|r
    .scenario 1812,1 --Reforge the fragments and form your weapon
step
    .goto 701,49.82,51.71
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Blades of the Fallen Prince|r
    >>Kill the |cRXP_ENEMY_Echo of Arthas Menethil|r
    *Kill the |cRXP_ENEMY_Source|r before they reach him.
    .scenario 1814,1 --Purge the blades of the malevolent souls within
    .timer 8,Teleport in
    .mob Echo of Arthas Menethil
    .mob Mindless Ghoul
    .mob Icefallen Geist
    .mob Enraged Zombie
step
    .isInScenario 901
    .goto 701,49.85,51.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Blades of the Fallen Prince|r
    .complete 38990,2 --1/1 Obtain the Blades of the Fallen Prince
step
    .goto 701,49.8,51.7
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Blades of the Fallen Prince|r
    .scenario 2224,1 --Take the Blades of the Fallen Prince.
step
    .goto 701,49.52,90.69
    .isInScenario 901
    >>|cRXP_WARN_Wait for the roleplay|r
    .scenario 1827,1 --Obtain the Lich King's blessing
step
    .goto 701,47.64,90.58
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Archerus Waygate|r
    .scenario 2923,1 --1/1 Acherus Waygate taken
step
    .goto 648,51.01,50.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Darion Mograine|r
    .turnin 38990 >>Turn in The Call of Icecrown
    .target Highlord Darion Mograine
]])
--Unholy
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Unholy
#displayname Artifact Weapon: Unholy
#next

]])
--Death Knight Intro 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) Order Hall Death Knight Part 1
#displayname |cFF00CCFF1|r - Order Hall Intro 1|r
#next ab) Order Hall Death Knight Part 2

step
    #include RestedXP Legion Remix\ab) Order Hall Death Knight Part 1
]])
--Death Knight Intro 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name ab) Order Hall Death Knight Part 2
#displayname |cFF00CCFF2|r - Order Hall Intro 2|r
#next ac) Order Hall Death Knight


step
    #include RestedXP Legion Remix\ac) Order Hall Death Knight Part 2
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
#chapters a) Order Hall Demon Hunter Part 1;ab) Order Hall Demon Hunter Part 2;ac) Order Hall Demon Hunter;a) Artifact Weapon: Havoc;a) Artifact Weapon: Vengeance



]])
--Havoc
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Havoc
#displayname Artifact Weapon: Havoc
#next ac) Order Hall Demon Hunter

step
    #completewith Champion: Archmage Modera
    #hidewindow
    +test
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    .openitem 237812 -- Cache of Infinite Treasure
    .openitem 243373 -- Timerunner's Weaponry
    .openitem 246814 -- Bronze Cache
    .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .zoneskip 720,1
    .isQuestTurnedIn 40814
    .isQuestAvailable 44383
    .goto 720,58.62,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .accept 44383 >>Accept In Pursuit of Power
    .target Kayn Sunfury
step
    .zoneskip 720,1
    .isQuestTurnedIn 40814
    .isQuestAvailable 44383
    .isOnQuest 44383
    .goto 720,58.62,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .complete 44383,1 --1/1 Artifact weapon chosen
    .choose 1390100
    .skipgossipid 45738
step
    .zoneskip 720,1
    .isQuestTurnedIn 40814
    .isQuestAvailable 44383
    .isQuestComplete 44383
    .goto 720,58.62,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .turnin 44383 >>Turn in Pursuit of Power
    .target Kayn Sunfury
step
    .zoneskip 627,1
    .isQuestAvailable 40814
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .target Kayn Sunfury
    .accept 40814 >>Accept The Power to Survive
step
    .zoneskip 627,1
    .isQuestAvailable 40814
    .isOnQuest 40814
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .complete 40814,1 --1/1 Artifact weapon chosen
    .choose 1390100
    .skipgossipid 45106
step
    .zoneskip 627,1
    .isQuestAvailable 40814
    .isQuestComplete 40814
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .turnin 40814 >>Turn in The Power to Survive
    .target Kayn Sunfury
step
    .isQuestAvailable 40249
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .target Kayn Sunfury
    .accept 40819 >>Accept Making Arrangements
step
    .isQuestTurnedIn 40249
    .goto 720,58.61,57.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .target Kayn Sunfury
    .accept 40819 >>Accept Making Arrangements
step
    .isQuestTurnedIn 40249
    #completewith next
    #label Making Arrangements
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .turnin 40819 >>Turn in Making Arrangements
    .accept 39051 >>Accept By Any Means
step
    .isQuestTurnedIn 40249
    #completewith Making Arrangements
    .goto 720,59.31,91.85
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
step
    .isQuestTurnedIn 40249
    #requires Making Arrangements
    .goto 627,65.63,67.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .turnin 40819 >>Turn in Making Arrangements
    .accept 39051 >>Accept By Any Means
step
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
    .goto 627,66.63,68.84
    #title |cFFFCDC00Follow the Arrow|r
    .complete 39051,2 --1/1 Enter the Violet Hold
    .timer 83,RP
step
    .goto 723,50.63,52.64
    #title |cFFFCDC00Wait for the Roleplay|r
    >>Kill |cRXP_ENEMY_Taldath the Destroyer|r
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
    .zone 627 >>Leave the Instance(Right-Click your player frame) or press the macro.
    .macro Leave Instance,236367 >> /run C_PartyInfo.LeaveParty()
step
    #requires Illidari Fel Bat
    .goto 627,75.26,47.61
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Illidari Fel Bat|r
    .complete 39247,1 
    .timer 53,RP
    .target Illidari Fel Bat
step
    .isOnQuest 39247
    .countdown 8 >>|cRXP_WARN_Wait for the Roleplay|r.
step
    .isOnQuest 39247
    .goto 680,25.63,58.94
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .scenario 1808,1
    .target Illidari Fel Bat
step
    .isInScenario 900
    .goto 680,25.21,60.8,30,0
    .goto 680,25.87,61.97,30,0
    .goto 680,26.69,63.05,30,0
    .goto 680,27.38,65.03
    >>Kill ALL |cRXP_ENEMY_Demons|r
    .scenario 1822,2,52
    .mob Felsoul Fleshcarver
    .mob Felsoul Berserker
step
    .isInScenario 900
    .goto 680,28.18,64.48
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crystal|r
    .scenario 1822,1,1
step
    .isInScenario 900
    .goto 680,29.16,61.02,10,0
    .goto 680,29.32,60.48
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crystal|r
    .scenario 1822,1,2
step
    .isInScenario 900
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
    .isInScenario 900
    .goto 680,31.25,66.26,10,0
    .goto 680,31.5,66.77
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crystal|r
    .scenario 1822,1,3
step
    .isInScenario 900
    .goto 680,32.96,66.96
    >>Kill |cRXP_ENEMY_Varedis Felsoul|r
    .scenario 1825,1
    .mob Varedis Felsoul
step
    .isInScenario 900
    .goto 680,32.96,66.96
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Twinblades of the Deceiver|r
    .complete 39247,2 --1/1 Twinblades of the Deceiver
    .scenario 2712,1
step
    .isInScenario 900
    .zone 627 >>Leave the Instance(Right-Click your player frame) or press the macro.
    .macro Leave Instance,236367 >> /run C_PartyInfo.LeaveParty()
step
    .isQuestAvailable 40249
    .goto 627,73.86,46.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'vas Bloodthorn|r
    .turnin 39247 >>Turn in The Hunt
    .target Kor'vas Bloodthorn
step
    #completewith next
    #label Turn in The Hunt
    .isQuestTurnedIn 40249
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'vas Bloodthorn|r
    .turnin 39247 >>Turn in The Hunt
    .target Kor'vas Bloodthorn
step
    #completewith Turn in The Hunt
    .isQuestTurnedIn 40249
    .goto 627,98.13,69.47
    .zone 720 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
step
    #requires Turn in The Hunt
    .isQuestTurnedIn 40249
    .goto 720,59.31,57.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'vas Bloodthorn|r
    .turnin 39247 >>Turn in The Hunt
    .target Kor'vas Bloodthorn
]])
--Vengeance
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Vengeance
#displayname Artifact Weapon: Vengeance
#next ac) Order Hall Demon Hunter

step
    #completewith Champion: Archmage Modera
    #hidewindow
    +test
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    .openitem 237812 -- Cache of Infinite Treasure
    .openitem 243373 -- Timerunner's Weaponry
    .openitem 246814 -- Bronze Cache
    .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .zoneskip 720,1
    .isQuestTurnedIn 40814
    .isQuestAvailable 44383
    .goto 720,58.62,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .accept 44383 >>Accept In Pursuit of Power
    .target Kayn Sunfury
step
    .zoneskip 720,1
    .isQuestTurnedIn 40814
    .isQuestAvailable 44383
    .isOnQuest 44383
    .goto 720,58.62,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .complete 44383,1 --1/1 Artifact weapon chosen
    .choose 1390101
    .skipgossipid 45738
step
    .zoneskip 720,1
    .isQuestTurnedIn 40814
    .isQuestAvailable 44383
    .isQuestComplete 44383
    .goto 720,58.62,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .turnin 44383 >>Turn in Pursuit of Power
    .target Kayn Sunfury
step
    .zoneskip 627,1
    .isQuestAvailable 40814
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .target Kayn Sunfury
    .accept 40814 >>Accept The Power to Survive
step
    .zoneskip 627,1
    .isQuestAvailable 40814
    .isOnQuest 40814
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .complete 40814,1 --1/1 Artifact weapon chosen
    .choose 1390101
    .skipgossipid 45106
step
    .zoneskip 627,1
    .isQuestAvailable 40814
    .isQuestComplete 40814
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .turnin 40814 >>Turn in The Power to Survive
    .target Kayn Sunfury
step
    .goto 627,74.98,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r
    .accept 40247 >>Accept Asking a Favor
    .target Kayn Sunfury
step
    .isQuestAvailable 39247
    .goto 627,28.53,48.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Khadgar|r
    .turnin 40247 >>Turn in Asking a Favor
    .accept 41804 >>Accept Ask and You Shall Receive
    .timer 57.5,RP
    .target Archmage Khadgar
step
    .isQuestTurnedIn 39247
    #completewith next
    #label Turn in Asking a Favor
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Khadgar|r
    .turnin 40247 >>Turn in Asking a Favor
    .accept 41804 >>Accept Ask and You Shall Receive
    .disablecheckbox
    .target Archmage Khadgar
step
    #completewith Turn in Asking a Favor
    .goto 720,59.25,91.82
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
step
    .isQuestTurnedIn 39247
    #requires Turn in Asking a Favor
    .goto 627,28.53,48.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Khadgar|r
    .turnin 40247 >>Turn in Asking a Favor
    .accept 41804 >>Accept Ask and You Shall Receive
    .timer 57.5,RP
    .target Archmage Khadgar
step
    .goto 627,25.35,47.24,15,0
    .goto 627,26.78,44.84
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 41804,1 --1/1 Follow Archmage Khadgar
step
    .goto 627,26.78,44.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crate|r
    .complete 41804,2 --1/1 Crystallized Soul
    .timer 15.5,RP
step
    .goto 627,28.49,48.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Khadgar|r
    .turnin 41804 >>Turn in Ask and You Shall Receive
    .target Archmage Khadgar
    .accept 41806 >>Accept Return to Jace
step
    .goto 627,74.40,51.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jace Darkweaver|r
    .turnin 41806 >>Turn in Return to Jace
    .accept 41807 >>Accept Establishing a Connection
    .target Jace Darkweaver
step
    .goto 627,74.35,52.07
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Legion Communicator|r
    .complete 41807,1 --1/1 Legion Communicator activated
    .timer 19,RP
step
    .goto 627,74.43,51.31
    >>|cRXP_WARN_Wait for the Roleplay|r.
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
    #completewith next
    #label Fly to the Broken Shore
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 40249,1 --1/1 Fly to the Broken Shore
step
    #completewith Fly to the Broken Shore
    .goto 627,75.28,47.58
    .vehicle >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Illidari Fel Bat|r
    .timer 28,RP
    .target Illidari Fel Bat
step
    #requires Fly to the Broken Shore
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 40249,1 --1/1 Fly to the Broken Shore
step
    .isOnQuest 40249
    .countdown 12 >>|cRXP_WARN_Wait for the Roleplay|r.
step
    .goto 676,15.09,51.77
    .isOnQuest 40249
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Allari the Souleater|r
    .scenario 1939,1 --Free Allari the Souleater.
    .target Allari the Souleater
step
    .goto 676,16.02,54.95,15,0
    .goto 676,16.04,56.14,20,0
    .goto 676,17.61,57.44
    .isInScenario 961
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portals|r
    .scenario 1940,1, --Destroy the Legion portals.
step
    .goto 676,20.19,61.38
    .isInScenario 961
    >>Kill |cRXP_ENEMY_Doomherald Saera|r and |cRXP_ENEMY_Doomherald Taraar|r
    .scenario 2299,2 --Eliminate Doomherald Taraar.
    .scenario 2299,1 --Eliminate Doomherald Saera.
    .mob Doomherald Saera
    .mob Doomherald Taraar
step
    .goto 676,20.69,62.76
    .isInScenario 961
    >>Kill |cRXP_ENEMY_Gorgonnash|r
    .scenario 1948,1 --Destroy Gorgonnash.
    .mob Gorgonnash
step
    .isInScenario 961
    .goto 676,21.92,61.12
    >>Use |T1247266:0|t[Spectral Sight] infront of the cave.
    .scenario 1941,1 --Find Caria's trail.
    .usespell 188501
step
    .isInScenario 961
    .goto 676,21.92,61.12
    .cast 207965 >>Click on the |cRXP_PICK_Rubble|r
step
    #completewith next
    #label Caria Felsoul
    .isInScenario 961
    >>Kill |cRXP_ENEMY_Caria Felsoul|r
    .scenario 1942,1 --Destroy Caria Felsoul.
    .mob Caria Felsoul
step
    .isInScenario 961
    #completewith Caria Felsoul
    .goto 676,23.26,62.14,15,0
    .goto 676,23.73,63.82,15,0
    .goto 676,24.3,64.04,15,0
    .goto 676,25.11,63.11,30 >>Follow the Arrow
    .timer 11,RP
step
    #requires Caria Felsoul
    .goto 676,26.82,61.37
    >>Kill |cRXP_ENEMY_Caria Felsoul|r
    .isInScenario 961
    .scenario 1942,1 --Destroy Caria Felsoul.
    .mob Caria Felsoul
step
    .goto 676,26.77,61.44
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Weapon|r
    .complete 40249,2 --1/1 Aldrachi Warblades
    .scenario 2302,1
step
    .zone 627 >>Leave the Instance(Right-Click your player frame) or press the macro.
    .macro Leave Instance,236367 >> /run C_PartyInfo.LeaveParty()
    .complete 40249,3 --1/1 Return to Dalaran
step
    .isQuestAvailable 39247
    #completewith next
    #label Vengeance Will Be Ours
    .goto 627,73.83,46.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'vas Bloodthorn|r
    .turnin 40249 >>Turn in Vengeance Will Be Ours
    .target Kor'vas Bloodthorn
step
    .isQuestAvailable 39247
    #completewith Vengeance Will Be Ours
    .goto 720,59.25,91.82
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|
step
    .isQuestAvailable 39247
    #requires Vengeance Will Be Ours
    .goto 627,73.83,46.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'vas Bloodthorn|r
    .turnin 40249 >>Turn in Vengeance Will Be Ours
    .target Kor'vas Bloodthorn
]])
--Havoc 2 
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Artifact Weapon: Havoc
#displayname Artifact Weapon: Havoc
#next ac) Order Hall Demon Hunter Part 2

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Havoc
]])
--Vengeance 2
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Artifact Weapon: Vengeance
#displayname Artifact Weapon: Vengeance
#next ac) Order Hall Demon Hunter Part 2

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Vengeance
]])
--Demon Hunter Intro 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) Order Hall Demon Hunter Part 1
#displayname |cFF00CCFF1|r - Order Hall Intro 1|r
#next ab) Order Hall Demon Hunter Part 2

step
    #include RestedXP Legion Remix\ab) Order Hall Demon Hunter Part 1
]])
--Demon Hunter Intro 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name ab) Order Hall Demon Hunter Part 2
#displayname |cFF00CCFF2|r - Order Hall Intro 2|r
#next ac) Order Hall Demon Hunter


step
    #include RestedXP Legion Remix\ac) Order Hall Demon Hunter Part 2
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
#chapters a) Order Hall Druid Part 1;ab) Order Hall Druid Part 2;ac) Order Hall Druid;a) Artifact Weapon: Balance;a) Artifact Weapon: Feral;a) Artifact Weapon: Guardian;a) Artifact Weapon: Restoration Druids



]])
--Balance
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Balance
#displayname Artifact Weapon: Balance
#next

]])
--Feral
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Feral
#displayname Artifact Weapon: Feral
#next

step
    .isOnQuest 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rensar Greathoof|r.
    .turnin 40646 >>Turn in Weapons of Legend
    .accept 42428 >>Accept The Shrine of Ashamane
    .target Rensar Greathoof
step
    .isOnQuest 43980
    .goto 747,44.68,51.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rensar Greathoof|r.
    .turnin 43980 >>Turn in Another Weapon of Old
    .accept 42428 >>Accept The Shrine of Ashamane
    .target Rensar Greathoof
step
    .goto 747,61.73,33.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danise Stargazer|r.
    .complete 42428,1 --1/1 Hippogryph taken to Ashamane's Fall
    .timer 40,Flight Duration
    .target Danise Stargazer
    .skipgossipid 45654
step
    .goto 641,70.39,46.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delandros Shimmermoon|r.
    .turnin 42428 >>Turn in The Shrine of Ashamane
    .target Delandros Shimmermoon
    .accept 42439 >>Accept Aid for the Ashen
    .accept 42438 >>Accept Seeds of Renewal
step
    #completewith SeedsOfRenewalA
    >>Kill the |cRXP_ENEMY_Eredar Soul Lashers|r.
    .complete 42439,1 --4/4 Ashen Rescued
    .mob Eredar Soul Lasher
step
    #title Seed (1/3)
    .goto 641,71.69,43.08
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_corpse|r of |cRXP_FRIENDLY_Emtheas Trueeye|r.
    .complete 42438,1,1 --1/3 Tel'andu Seed
    .target Emtheas Trueeye
step
    #title Seed (2/3)
    .goto 641,70.04,42.44
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_corpse|r of |cRXP_FRIENDLY_Asthalor Duskmoon|r.
    .complete 42438,1,2 --2/3 Tel'andu Seed
    .target Asthalor Duskmoon
step
    #label SeedsOfRenewalA
    #title Seed (3/3)
    .goto 641,71.00,38.25
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_corpse|r of |cRXP_FRIENDLY_Iyseelar Dewsong|r.
    .complete 42438,1 --3/3 Tel'andu Seed
    .target Iyseelar Dewsong
step
    #loop
    .goto 641,71.70,38.40,35,0
    .goto 641,71.55,42.50,35,0
    .goto 641,70.24,41.08,35,0
    >>Kill the |cRXP_ENEMY_Eredar Soul Lashers|r.
    .complete 42439,1 --4/4 Ashen Rescued
    .mob Eredar Soul Lasher
step
    .goto 641,73.23,42.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delandros Shimmermoon|r
    .turnin 42439 >>Turn in Aid for the Ashen
    .turnin 42438 >>Turn in Seeds of Renewal
    .accept 42440 >>Accept The Shrine in Peril
    .target Delandros Shimmermoon
step
    .goto 641,73.75,40.59
    >>|cRXP_WARN_Follow the arrow.|r
    .complete 42440,1 --1/1 Investigate Ashamane's Fall
step
    .goto 641,73.82,39.02
    >>Kill |cRXP_ENEMY_Algromon|r
    .complete 42440,2 --1/1 Algromon slain
    .mob Algromon
step
    .goto 641,73.83,38.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delandros Shimmermoon|r
    .turnin 42440 >>Turn in The Shrine in Peril
    .target Delandros Shimmermoon
    .accept 42430 >>Accept The Fangs of Ashamane
step
    .goto 641,73.75,38.40
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_FRIENDLY_Ebonfang|r
    .complete 42430,1 --1/1 Ebonfang Mounted
    .target Ebonfang
step
    .isInScenario 1108
    .goto 680,21.70,39.36
    >>|cRXP_WARN_If it doesn't trigger then 
    .scenario 2506,1 --Followed Verstok's scent
step
    #completewith DoorSwitchB
    #label DoorwayOpenedA
    .isInScenario 1108
    .scenario 2525,1 --Doorway Opened
step
    .isInScenario 1108
    .isOnQuest 42430
    #completewith DoorwayOpenedA
    #label DoorSwitchA
    .goto 680,21.88,37.24
    .cast 116401 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Door Switch|r
step
    #requires DoorSwitchA
    #completewith DoorwayOpenedA
    #label DoorSwitchB
    .goto 680,23.14,37.77
    .cast 116401 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Door Switch|r
    .timer 12,Door opens in
step
    #requires DoorwayOpenedA
    .isInScenario 1108
    .goto 680,22.80,35.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the two |cRXP_PICK_Door Switches|r
    >>|cRXP_WARN_Wait for the door to open after clicking the two switches|r
    .scenario 2525,1 --Doorway Opened
step
    .isInScenario 1108
    #completewith next
    #label FollowVerstoksTrailA
    >>|cRXP_WARN_Follow the arrow|r
    .scenario 2533,1 --Follow Verstok's trail into the temple depths
step
    #completewith FollowVerstoksTrailA
    .goto 692,54.48,40.91
    .cast 214240 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Platform|r
    *- |cRXP_WARN_Make sure to be in cat form|r
step
    #requires FollowVerstoksTrailA
    .isInScenario 1108
    .goto 692,45.45,29.90
    >>|cRXP_WARN_Follow the arrow|r
    .scenario 2533,1 --Follow Verstok's trail into the temple depths
step
    .isInScenario 1108
    .goto 692,43.10,21.57
    >>Defeat |cRXP_ENEMY_Verstok|r
    .scenario 2534,1 --Defeat Verstok
    .mob Verstok
step
    .isInScenario 1108
    .goto 692,41.89,33.91,15,0
    .goto 692,31.11,72.27,15,0
    .goto 692,33.74,72.68
    >>|cRXP_WARN_Follow the arrow|r
    .scenario 2545,1 --Chase after Verstok
step
    .isInScenario 1108
    .goto 693,53.19,18.21
    >>Kill |cRXP_ENEMY_Webmistress Shinaris|r.
    .scenario 2546,1 --Webmistress Shinaris Slain
    .mob Webmistress Shinaris
step
    .isInScenario 1108
    .goto 693,54.72,20.48
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Fangs of Ashamane|r
]])
--Guardian
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Guardian
#displayname Artifact Weapon: Guardian
#next

]])
--Restoration
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Restoration Druids
#displayname Artifact Weapon: Restoration
#next

]])
--Druid Intro 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) Order Hall Druid Part 1
#displayname |cFF00CCFF1|r - Order Hall Intro 1|r
#next ab) Order Hall Druid Part 2

step
    #include RestedXP Legion Remix\ab) Order Hall Druid Part 1
]])
--Druid Intro 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name ab) Order Hall Druid Part 2
#displayname |cFF00CCFF2|r - Order Hall Intro 2|r
#next ac) Order Hall Druid


step
    #include RestedXP Legion Remix\ac) Order Hall Druid Part 2
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
#chapters a) Order Hall Hunter Part 1;ab) Order Hall Hunter Part 2;ac) Order Hall Hunter;a) Artifact Weapon: Beast Mastery;a) Artifact Weapon: Marksmanship;a) Artifact Weapon: Survival



]])
--Beast Mastery
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Beast Mastery
#displayname Artifact Weapon: Beast Mastery
#next

]])
--Marksmanship
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Marksmanship
#displayname Artifact Weapon: Marksmanship
#next

]])
--Survival
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Survival
#displayname Artifact Weapon: Survival
#next

]])
--Hunter Intro 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) Order Hall Hunter Part 1
#displayname |cFF00CCFF1|r - Order Hall Intro 1|r
#next ab) Order Hall Hunter Part 2

step
    #include RestedXP Legion Remix\ab) Order Hall Hunter Part 1
]])
--Hunter Intro 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name ab) Order Hall Hunter Part 2
#displayname |cFF00CCFF2|r - Order Hall Intro 2|r
#next ac) Order Hall Hunter


step
    #include RestedXP Legion Remix\ac) Order Hall Hunter Part 2
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
#chapters a) Order Hall Mage Part 1;ab) Order Hall Mage Part 2;ac) Order Hall Mage;a) Artifact Weapon: Arcane;a) Artifact Weapon: Fire;a) Artifact Weapon: Frost Mage



]])
--Arcane
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Arcane
#displayname Artifact Weapon: Arcane
#next ac) Order Hall Mage

step
    #completewith Champion: Archmage Modera
    #hidewindow
    +test
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    .openitem 237812 -- Cache of Infinite Treasure
    .openitem 243373 -- Timerunner's Weaponry
    .openitem 246814 -- Bronze Cache
    .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .isQuestTurnedIn 41113
    .zoneskip 734
    .zoneskip 735
    .zone 734 >>Use |T1536440:0|t[Teleport: Hall of the Guardian].
    .usespell 193759
step
    .subzoneskip 7879,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .goto 735,55.21,38.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meryl Felstorm|r  
    .target Meryl Felstorm
    .accept 44310 >>Accept Thrice the Power
step
    .subzoneskip 7879,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .isOnQuest 44310
    .goto 735,55.21,38.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meryl Felstorm|r 
    .complete 44310,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 46450
    .choose 1389389
step
    .subzoneskip 7879,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .isQuestComplete 44310
    .goto 735,55.21,38.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meryl Felstorm|r
    .target Meryl Felstorm
    .turnin 44310 >>Turn in Thrice the Power
step
    .subzoneskip 7879,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .goto 735,55.21,38.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meryl Felstorm|r   
    .accept 43441 >>Accept A Second Weapon
    .target Meryl Felstorm
step
    .subzoneskip 7879,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .isOnQuest 43441
    .goto 735,55.21,38.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meryl Felstorm|r   
    .complete 43441,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 46450
    .choose 1389389
step
    .subzoneskip 7879,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .isQuestComplete 43441
    .goto 735,55.21,38.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meryl Felstorm|r  
    .turnin 43441 >>Turn in A Second Weapon
    .target Meryl Felstorm
step
    .subzoneskip 7879,1
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meryl Felstorm|r   
    .target Meryl Felstorm
    .accept 41085 >>Accept A Mage's Weapon
step
    .subzoneskip 7879,1
    .isQuestAvailable 41085
    .isOnQuest 41085
    .goto 735,61.22,25.88
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Book|r
    .complete 41085,1 --1/1 Artifact chosen
    .skipgossipid 46450
    .choose 1389389
step 
    .subzoneskip 7879,1
    .isQuestComplete 41085
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meryl Felstorm|r   
    .target Meryl Felstorm
    .turnin 41085 >>Turn in A Mage's Weapon
step
    .isQuestAvailable 41113
    .goto 735,59.15,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meryl Felstorm|r   
    .target Meryl Felstorm
    .accept 42001 >>Accept Aluneth, Greatstaff of the Magna
step
    .isQuestTurnedIn 41113
    .goto 735,55.32,38.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meryl Felstorm|r   
    .target Meryl Felstorm
    .accept 42001 >>Accept Aluneth, Greatstaff of the Magna
step
    .isQuestAvailable 41113
    .goto 735,62.48,51.16
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .usespell 224869
step
    .isQuestTurnedIn 41113
    .goto 734,57.36,90.36
    .zone 627 >>Use |T1535374:0|t[Teleport: Dalaran - Broken Isles] or |TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .usespell 224869
step
    #requires Greatstaff of the Magna
    .goto 627,28.54,49.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Kalec|r
    .turnin 42001 >>Turn in Aluneth, Greatstaff of the Magna
    .target Archmage Kalec
    .accept 42006 >>Accept A New Threat
step
    #completewith next
    #label Wyrmrest Temple
    .goto 627,46.37,53.12,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 42006,1 --1/1 Take the Dalaran portal to Wyrmrest Temple
step
    #completewith Wyrmrest Temple
    .goto 627,49.47,47.22,10 >>Go to the center of Dalaran
step
    #requires Wyrmrest Temple
    .goto 629,30.71,84.37
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 42006,1 --1/1 Take the Dalaran portal to Wyrmrest Temple
step
    .goto 115,56.4,65.86
    #title |cFFFCDC00Follow the Arrow|r
    .complete 42006,2 --1/1 Travel to the Azure Dragonshrine
step
    .goto 115,56.4,65.86
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Clue|r
    .complete 42006,3,1 --3/3 Clues Found
step
    .goto 115,56.29,66.46
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Clue|r
    .complete 42006,3,2 --3/3 Clues Found
step
    .goto 115,56.04,67.53
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Clue|r
    .complete 42006,3,3 --3/3 Clues Found
step
    .goto 115,56.69,69.10
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Device|r
    .turnin 42006 >>Turn in A New Threat
    .accept 42007 >>Accept A Forgotten Enemy
step
    #completewith next
    #label Communication Device
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 42007,1 --1/1 Activate the communication device
step
    #completewith Communication Device
    .goto 115,56.66,69.11
    .cast 3365 >>Click on the |cRXP_PICK_Communication Device|r
    .timer 26,RP
step
    #requires Communication Device
    .goto 115,56.66,69.11
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Communication Device|r
    .complete 42007,1 --1/1 Activate the communication device
step
    >>Click the Quest Turnin Pop-Up in your Questlog.
    .turnin 42007 >>Turn in A Forgotten Enemy
    .accept 42008 >>Accept Eyes of the Dragon
step
    #completewith next
    #label Nexus spire
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 42008,1 --1/1 Nexus spire scouted
step
    #completewith Nexus spire
    .cast 311678 >>Use |T254294:0|t[Nexus Teleport Scroll]
    .use 173430
step
    #requires Nexus spire
    .goto 114,29.02,28.45
    #title |cFFFCDC00Follow the Arrow|r
    .complete 42008,1 --1/1 Nexus spire scouted
    .use 173430
step
    .goto 114,32.29,28.47
    #title |cFFFCDC00Follow the Arrow|r
    .complete 42008,2 --1/1 Surge Needle scouted
step
    .goto 114,29.02,27.16
    #title |cFFFCDC00Follow the Arrow|r
    .complete 42008,3 --1/1 Nexus foundation scouted
step
    >>Click the Quest Turnin Pop-Up in your Questlog.
    .turnin 42008 >>Turn in Eyes of the Dragon
    .accept 42009 >>Accept Harnessing the Arcane
step
    #loop
    .goto 114,29.2,25.94,35,0
    .goto 114,28.08,24.32,35,0
    .goto 114,26.5,24.85,35,0
    .goto 114,26.02,27.6,35,0
    .goto 114,27.11,29.21,35,0
    >>Kill |cRXP_ENEMY_Arcane Aberrant|r to fill the bar.
    .complete 42009,1 --1/1 Empowered with Unstable Arcane Energy
    .mob Arcane Aberrant
    .mob Arcane Aberrant
step
    >>Click the Quest Turnin Pop-Up in your Questlog.
    .turnin 42009 >>Turn in Harnessing the Arcane
    .accept 42010 >>Accept Arcane Unleashed
step
    .goto 114,27.32,20.4
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Focused Void|r
    .complete 42010,3 --1/1 North Surge Needle destroyed
step
    .goto 114,32.71,27.83
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Focused Void|r
    .complete 42010,1 --1/1 East Surge Needle destroyed
step
    .goto 114,24.14,29.59
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Focused Void|r
    .complete 42010,2 --1/1 West Surge Needle destroyed
step
    >>Click the Quest Turnin Pop-Up in your Questlog.
    .turnin 42010 >>Turn in Arcane Unleashed
    .accept 42011 >>Accept The Nexus Vault
step
    .isOnQuest 42011
    .goto 114,26.36,27.6,20,0
    .goto 114,27.52,26.16 
    .zone 736 >>Enter the Nexus
step
    #loop
    .goto 736,36.1,69.38,15,0
    .goto 736,35.24,66.21,15,0
    .goto 736,37.45,66.22,15,0
    .isInScenario 1101
    >>Kill |cRXP_ENEMY_Scions|r
    .scenario 2466,1 --Azuregos Freed
    .mob Scion of Fire
    .mob Scion of Ice
    .mob Scion of Magic
step
    .isInScenario 1101
    .goto 736,23.74,67.39,15,0
    .goto 736,22.07,66.29,15,0
    .goto 736,21.49,58.31,15,0
    .goto 736,19.1,51.58,25,0
    .goto 736,20.16,47.84,25,0
    .goto 736,21.75,40.63,25,0
    .goto 736,22.48,35.61,25,0
    .goto 736,26.55,34.35
    #title |cFFFCDC00Follow the Arrow|r
    >>Use |T135739:0|t[Shimmer] or |T135736:0|t[Blink] through the Barriers or jump with your back towards them to pass them.
    .usespell 1953
    .scenario 2467,1 --Reach the Librarium
    .timer 45,RP
step
    .goto 736,27.62,39.99
    .isInScenario 1101
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .scenario 2467,2 --Find a way into the vault
step
    .goto 736,27.62,39.99
    .isInScenario 1101
    >>Kill |cRXP_ENEMY_Echo of Aluneth|r
    .scenario 2468,1 --Echo of Aluneth defeated
    .mob Echo of Aluneth
step
    #completewith next
    #label Reach the Rift
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .scenario 2469,1 --Reach the Rift
step
    #completewith Reach the Rift
    .isInScenario 1101
    .goto 736,26.92,25.76,15,0
    .goto 736,31.06,22.83,15 >>Follow the arrow then wait for |cRXP_FRIENDLY_Azuregos|r to appear
    .timer 38,RP
    .target Azuregos
step
    #requires Reach the Rift
    .goto 736,31.06,22.83
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .scenario 2469,1 --Reach the Rift
step
    #completewith next
    #label Nexus-Prince Bilaal
    .isInScenario 1101
    >>Kill |cRXP_ENEMY_Nexus-Prince Bilaal|r
    .scenario 2470,1 --Nexus-Prince Bilaal Defeated
    .complete 42011,1 --1/1 Nexus-Prince Bilaal slain
    .mob Nexus-Prince Bilaal
step
    #completewith Nexus-Prince Bilaal
    .isInScenario 1101
    .goto 736,31.32,22.37
    *|cRXP_WARN_Wait for|r |cRXP_FRIENDLY_Azuregos|r |cRXP_WARN_to appear|r.
    .vehicle >>Click on |cRXP_PICK_Azuregos|r
    .timer 35,RP
    .target Azuregos
step
    #requires Nexus-Prince Bilaal
    .goto 736,59.19,20.4
    .isInScenario 1101
    >>Kill |cRXP_ENEMY_Nexus-Prince Bilaal|r
    .scenario 2470,1 --Nexus-Prince Bilaal Defeated
    .timer 28,RP
    .complete 42011,1 --1/1 Nexus-Prince Bilaal slain
    .mob Nexus-Prince Bilaal
step
    .isInScenario 1101
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    *Use the |cRXP_WARN_|T237448:0|t[ExtraActionButton]|r inside the purple Magic Fields.
    *|cRXP_WARN_Be aware of the floating bubbles, as they knock you back|r.
    .scenario 2471,1 --Place the First Scroll of Meitre
    .scenario 2471,2 --Place the Second Scroll of Meitre
    .scenario 2471,3 --Place the Third Scroll of Meitre
    .usespell 225025
step
    .isInScenario 1101
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Weapon|r in the middle.
    .complete 42011,2 --1/1 Aluneth
step
    #completewith next
    #label Nexus Vault
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Kalec|r
    .turnin 42011 >>Turn in The Nexus Vault
    .target Archmage Kalec
    .accept 41114 >>Accept The Champion's Return
    .disablecheckbox
step
    #completewith Nexus Vault
    .zoneskip 627
    .cast 224869 >>Use |T1535374:0|t[Teleport: Dalaran - Broken Isles]
    .usespell 224869
step
    #requires Nexus Vault
    .goto 627,28.62,49.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Kalec|r inside the Violet Citadel.
    .turnin 42011 >>Turn in The Nexus Vault
    .timer 10,RP
    .target Archmage Kalec
]])
--Fire
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Fire
#displayname Artifact Weapon: Fire
#next ac) Order Hall Mage 

step
    #completewith Champion: Archmage Modera
    #hidewindow
    +test
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    .openitem 237812 -- Cache of Infinite Treasure
    .openitem 243373 -- Timerunner's Weaponry
    .openitem 246814 -- Bronze Cache
    .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .isQuestTurnedIn 41113
    .zoneskip 734
    .zoneskip 735
    .zone 734 >>Use |T1536440:0|t[Teleport: Hall of the Guardian].
    .usespell 193759
step
    .zoneskip 735,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meryl Felstorm|r  
    .target Meryl Felstorm
    .accept 44310 >>Accept Thrice the Power
step
    .zoneskip 735,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .isOnQuest 44310
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meryl Felstorm|r 
    .complete 44310,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 46450
    .choose 1389390
step
    .zoneskip 735,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .isQuestComplete 44310
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meryl Felstorm|r
    .target Meryl Felstorm
    .turnin 44310 >>Turn in Thrice the Power
step
    .zoneskip 735,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meryl Felstorm|r   
    .accept 43441 >>Accept A Second Weapon
    .target Meryl Felstorm
step
    .zoneskip 735,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .isOnQuest 43441
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meryl Felstorm|r   
    .complete 43441,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 46450
    .choose 1389390
step
    .zoneskip 735,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .isQuestComplete 43441
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meryl Felstorm|r  
    .turnin 43441 >>Turn in A Second Weapon
    .target Meryl Felstorm
step
    .zoneskip 735,1
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meryl Felstorm|r   
    .target Meryl Felstorm
    .accept 41085 >>Accept A Mage's Weapon
step
    .zoneskip 735,1
    .isQuestAvailable 41085
    .isOnQuest 41085
    .goto 735,61.22,25.88
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Book|r
    .complete 41085,1 --1/1 Artifact chosen
    .skipgossipid 46450
    .choose 1389390
step    
    .zoneskip 735,1
    .isQuestComplete 41085
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meryl Felstorm|r   
    .target Meryl Felstorm
    .turnin 41085 >>Turn in A Mage's Weapon
step
    .isQuestAvailable 41113
    .goto 735,59.15,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meryl Felstorm|r
    .target Meryl Felstorm
    .accept 40267 >>Accept An Unexpected Message
step
    .isQuestTurnedIn 41113
    .goto 735,55.32,38.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meryl Felstorm|r
    .target Meryl Felstorm
    .accept 40267 >>Accept An Unexpected Message
step
    #completewith next
    #hidewindow
    #label Crystal's Message
    .complete 40267,1 --1/1 Discover the Crystal's Message
step
    #completewith Crystal's Message
    .cast 195264 >>Use |T132776:0|t[Glowing Resonate Crystal]
    .timer 40,RP
    .use 130131
-- step
--     #requires Crystal's Message
--     .isQuestTurnedIn 42479
--     .goto 735,53.2,41.44
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Fillmaff|r
--     .accept 42429 >>Accept Memories of Ebonchill
--     .target Old Fillmaff
step
    #requires Crystal's Message
    #completewith next
    #label Orange is the New Purple
    .isQuestTurnedIn 41113
    .goto 735,54.59,55.34,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jackson Watkins|r
    .accept 44240 >>Accept Orange is the New Purple
    .turnin 44240 >>Turn in Orange is the New Purple
    .target Jackson Watkins
step
    #requires Crystal's Message
    #completewith Orange is the New Purple
    .isQuestTurnedIn 41113
    .goto 735,44.66,57.89,40 >>Follow the Arrow
step
    #requires Orange is the New Purple
    .isQuestTurnedIn 41113
    .goto 735,44.54,57.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jackson Watkins|r
    .accept 44240 >>Accept Orange is the New Purple
    .turnin 44240 >>Turn in Orange is the New Purple
    .target Jackson Watkins
step
    #requires Crystal's Message
    .isQuestTurnedIn 41113
    #title |cFFFCDC00Follow the Arrow|r
    .goto 735,55.6,56.06,15,0
    .goto 734,59.95,56.3
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 40267,1 --1/1 Discover the Crystal's Message
step
    #requires Crystal's Message
    .isQuestAvailable 41113
    #title |cFFFCDC00Follow the Arrow|r
    .goto 735,62.63,51.41
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 40267,1 --1/1 Discover the Crystal's Message
step
    .isQuestAvailable 41113
    .goto 735,62.63,51.41
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
step
    .isQuestTurnedIn 41113
    .goto 734,57.31,90.48
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
-- step
--     .isQuestTurnedIn 42479
--     #loop
--     .goto 627,48.04,16.94,30,0
--     .goto 627,24.58,50.15,30,0
--     .goto 627,46.85,69.23,30,0
--     .goto 627,60.1,63.38,30,0
--     .goto 627,68.45,44.91,30,0
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiora Ar'nareth|r |cRXP_WARN_found anywhere in dalaran|r.
--     .complete 42429,1 --Speak to a Reflection of the Council of Tirisfal
--     .skipgossipid 45655
--     .target Fiora Ar'nareth
step
    #completewith next
    #label Dalaran Crater
    >>Go to the center of dalaran and |TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 40267,3 --Optional: Take Portal to Dalaran Crater
step
    #completewith Dalaran Crater
    .goto 734,57.28,90.47
    .zone 627 >>Click on the |cRXP_PICK_Portal|r
step
    #requires Dalaran Crater
    .goto 627,53.13,52.24,10,0
    .goto 627,49.01,47.36,10,0
    .goto 629,36.82,72.57,10,0
    .goto 629,28.76,77.32
    >>Go to the center of dalaran and |TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 40267,3 --Optional: Take Portal to Dalaran Crater
step
    .goto 25,28.74,37.33
    #title |cFFFCDC00Follow the Arrow|r
    .complete 40267,2 --1/1 Meet Archmage Modera in Hillsbrad
step
    .goto 25,28.74,37.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Modera|r
    .turnin 40267 >>Turn in An Unexpected Message
    .target Archmage Modera
    .accept 40270 >>Accept The Path of Atonement
    .timer 99,RP
step
    .goto 25,28.74,37.33
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 40270,1 --1/1 Discover the location of Felo'melorn
step
    .goto 25,28.73,37.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aethas Sunreaver|r
    .turnin 40270 >>Turn in The Path of Atonement
    .target Aethas Sunreaver
    .accept 11997 >>Accept The Frozen Flame
    .timer 12,RP
step
    .goto 25,28.76,37.26
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 11997,1 --1/1 Mage Portal Taken
step
    .goto 700,76.67,63.89
    .isOnQuest 11997
    >>Kill |cRXP_ENEMY_Iceborn Conjurer|r dodge the windstreams
    .scenario 1926,1 --Defeat the Iceborn Conjurer and enter into Icecrown Citadel
    .mob Iceborn Conjurer
step
    .goto 700,76.73,62.14
    .isInScenario 957
    >>Destroy |cRXP_ENEMY_Permafrost Wall|r
    .scenario 1927,1,1 --Destroy Permafrost Walls
    .mob Permafrost Wall
step
    .goto 700,76.08,55.91,10,0
    .goto 700,73.6,54.72
    .isInScenario 957
    >>Destroy |cRXP_ENEMY_Permafrost Wall|r
    .scenario 1927,1,2 --Destroy Permafrost Walls
    .mob Permafrost Wall
step
    .goto 700,62.12,53.59
    .isInScenario 957
    >>Destroy |cRXP_ENEMY_Permafrost Wall|r
    .scenario 1927,1,3 --Destroy Permafrost Walls
    .mob Permafrost Wall
step
    .goto 700,52.47,38.37
    .isInScenario 957
    >>Destroy |cRXP_ENEMY_Permafrost Wall|r
    .scenario 1927,1,4 --Destroy Permafrost Walls
    .mob Permafrost Wall
step
    .goto 700,51.9,29.32
    .isInScenario 957
    >>Kill the incoming |cRXP_ENEMY_waves|r of enemies
    .scenario 1928,1 --Defeat waves of enemies
    .mob Exploding Ghoul
    .mob Burning Skeleton
    .mob Charbone
step
    .goto 700,51.84,17.39
    .isInScenario 957
    >>Kill |cRXP_ENEMY_Lyandra Sunstrider|r
    .scenario 1929,1 --Slay Lyandra Sunstrider
    .mob Lyandra Sunstrider
step
    .goto 700,51.8,16.4
    .isInScenario 957
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Felo'melorn|r
    .scenario 1930,1 --Take Felo'melorn
    .complete 11997,2 --1/1 Obtain Felo'melorn
step
    #completewith next
    #label Frozen Flame
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Modera|r
    .turnin 11997 >>Turn in The Frozen Flame
    .target Archmage Modera
step
    #completewith Frozen Flame
    .goto 700,51.85,18.65
    .zoneskip 627
    .cast 224869 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r or Use |T1535374:0|t[Teleport: Dalaran - Broken Isles]
    .usespell 224869
step
    #requires Frozen Flame
    .goto 627,28.40,48.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Modera|r
    .turnin 11997 >>Turn in The Frozen Flame
    .target Archmage Modera
]])
--Frost
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Frost Mage
#displayname Artifact Weapon: Frost
#next ac) Order Hall Mage

step
    #completewith Champion: Archmage Modera
    #hidewindow
    +test
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    .openitem 237812 -- Cache of Infinite Treasure
    .openitem 243373 -- Timerunner's Weaponry
    .openitem 246814 -- Bronze Cache
    .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .isQuestTurnedIn 41113
    .zoneskip 734
    .zoneskip 735
    .zone 734 >>Use |T1536440:0|t[Teleport: Hall of the Guardian].
    .usespell 193759
step
    .zoneskip 735,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meryl Felstorm|r
    .target Meryl Felstorm
    .accept 44310 >>Accept Thrice the Power
step
    .zoneskip 735,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .isOnQuest 44310
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meryl Felstorm|r
    .complete 44310,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 46450
    .choose 1389391
step
    .zoneskip 735,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .isQuestComplete 44310
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meryl Felstorm|r
    .target Meryl Felstorm
    .turnin 44310 >>Turn in Thrice the Power
step
    .zoneskip 735,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meryl Felstorm|r
    .accept 43441 >>Accept A Second Weapon
    .target Meryl Felstorm
step
    .zoneskip 735,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .isOnQuest 43441
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meryl Felstorm|r
    .complete 43441,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 46450
    .choose 1389391
step
    .zoneskip 735,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .isQuestComplete 43441
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meryl Felstorm|r
    .turnin 43441 >>Turn in A Second Weapon
    .target Meryl Felstorm
step
    .zoneskip 735,1
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meryl Felstorm|r
    .target Meryl Felstorm
    .accept 41085 >>Accept A Mage's Weapon
step
    .zoneskip 735,1
    .isQuestAvailable 41085
    .isOnQuest 41085
    .goto 735,61.22,25.88
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Book|r
    .complete 41085,1 --1/1 Artifact chosen
    .skipgossipid 46450
    .choose 1389391
step
    .zoneskip 735,1
    .isQuestComplete 41085
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meryl Felstorm|r
    .target Meryl Felstorm
    .turnin 41085 >>Turn in A Mage's Weapon
step
    .isQuestAvailable 41113
    .goto 735,59.15,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meryl Felstorm|r
    .target Meryl Felstorm
    .accept 42452 >>Accept Finding Ebonchill
step
    .isQuestTurnedIn 41113
    .goto 735,55.32,38.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meryl Felstorm|r
    .target Meryl Felstorm
    .accept 42452 >>Accept Finding Ebonchill
step
    #loop
    .goto 735,55.14,34.77,5,0
    .goto 735,52.65,41.84,10,0
    .goto 735,66.62,40.84,10,0
    .goto 735,53.89,49.19,10,0
    .goto 735,65.02,49.44,10,0
    .goto 735,66.53,40.82,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Clues|r
    .complete 42452,1 --3/3 Find information on Arrexis
step
    #completewith next
    #label Speak with Meryl
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 42452,2 --1/1 Speak with Meryl
    -- .skipgossipid 46445
step
    #completewith Speak with Meryl
    .isQuestAvailable 41113
    .goto 735,59.12,43.03
    .gossipoption 45566 >>Talk to |cRXP_FRIENDLY_Meryl|r
    .timer 54,RP
    .target Meryl
step
    #completewith Speak with Meryl
    .isQuestTurnedIn 41113
    .goto 735,55.36,38.2
    .gossipoption 46445 >>Talk to |cRXP_FRIENDLY_Meryl|r
    -- .timer 55,RP
    .target Meryl
step
    #requires Speak with Meryl
    .goto 735,59.15,42.94
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 42452,2 --1/1 Speak with Meryl
step
    .isQuestAvailable 41113
    .goto 735,59.15,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meryl Felstorm|r
    .turnin 42452 >>Turn in Finding Ebonchill
    .target Meryl Felstorm
    .accept 42477 >>Accept Daio the Decrepit
    .accept 42476 >>Accept The Deadwind Site
step
    .isQuestTurnedIn 41113
    .goto 735,55.32,38.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meryl Felstorm|r
    .turnin 42452 >>Turn in Finding Ebonchill
    .target Meryl Felstorm
    .accept 42477 >>Accept Daio the Decrepit
    .accept 42476 >>Accept The Deadwind Site
step
    .goto 735,60.64,43.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alodi|r
    .accept 42455 >>Accept Alodi's Gems
    .target Alodi
step
    .isQuestAvailable 41113
    #completewith next
    #hidewindow
    #label Bank of Dalaran
    .complete 42455,1 --1/1 Go to the Bank of Dalaran
step
    .isQuestAvailable 41113
    #completewith Bank of Dalaran
    .goto 735,63.77,49.66
    .zone 627 >>Click on the |cRXP_PICK_Portal|r or Use |T1535374:0|t[Teleport: Dalaran - Broken Isles]
    -- .cast 224869 >>Use |T1535374:0|t[Teleport: Dalaran - Broken Isles].
    -- .usespell 224869
step
    .isQuestAvailable 41113
    #requires Bank of Dalaran
    #title |cFFFCDC00Follow the Arrow|r
    .goto 627,51.66,22.26,20,0
    .goto 627,52.88,19.12
    .complete 42455,1 --1/1 Go to the Bank of Dalaran
step
    .isQuestTurnedIn 41113
    #completewith next
    #hidewindow
    #label Bank of Dalaran
    .complete 42455,1 --1/1 Go to the Bank of Dalaran
step
    .isQuestTurnedIn 41113
    #completewith Bank of Dalaran
    .goto 734,57.34,90.63
    .zone 627 >>Click on the |cRXP_PICK_Portal|r or Use |T1535374:0|t[Teleport: Dalaran - Broken Isles]
    -- .cast 224869 >>Use |T1535374:0|t[Teleport: Dalaran - Broken Isles].
    -- .usespell 224869
step
    .isQuestTurnedIn 41113
    #requires Bank of Dalaran
    #title |cFFFCDC00Follow the Arrow|r
    .goto 627,51.66,22.26,20,0
    .goto 627,52.88,19.12
    .complete 42455,1 --1/1 Go to the Bank of Dalaran
step
    #completewith next
    #label manager
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 42455,2 --1/1 Speak with the manager
step
    #completewith manager
    #loop
    .goto 627,52.42,18.04,10,0
    .goto 627,52.25,14.72,10,0
    .goto 627,50.32,16.94,10,0
    .gossipoption 45770 >>Talk to |cRXP_FRIENDLY_Glutonia|r
    .timer 26,RP
    .target Glutonia
step
    #requires manager
    .goto 627,55.08,16.45
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 42455,2 --1/1 Speak with the manager
step
    .goto 627,55.08,16.45
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 42455,3 --1/1 Enter Alodi's personal vault
step
    #loop
    .goto 627,50.78,15.72,10,0
    .goto 627,54.31,14.99,10,0
    .goto 627,53.92,18.72,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Gems|r
    .complete 42455,4 --3/3 Find the Mana Gems
step
    #completewith next
    #hidewindow
    #label Blasted Lands Scroll
    .complete 42477,2 --1/1 Fly to the Tainted Scar and find Daio
step
    #completewith Blasted Lands Scroll
    .goto 627,54.22,19.39
    .cast 311800 >>Use |T254294:0|t[Blasted Lands Scroll]
    .use 173699
step
    #requires Blasted Lands Scroll
    .goto 17,32.51,45.14
    #title |cFFFCDC00Follow the Arrow|r
    .complete 42477,2 --1/1 Fly to the Tainted Scar and find Daio
step
    .goto 17,32.51,45.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daio|r
    .complete 42477,3 --1/1 Speak with Daio
    .timer 15,RP
    .skipgossipid 45996
    .skipgossipid 45997
    .skipgossipid 45998
    .target Daio
step
    #loop
    .goto 17,32.97,44.98,10,0
    .goto 17,32.22,45.76,10,0
    .goto 17,32.77,45.79,10,0
    >>Kill the incoming waves of enemies.
    .complete 42477,4 --1/1 Survive Daio's Challenge
    .timer 30,RP
    .mob Fiendish Trickster
    .mob Empowered Wrathguard
    .mob Eredar Mage
step
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 42477,5 --1/1 Get the Demon Stone
step
    >>Use |T254294:0|t[Karazhan Scroll]
    .complete 42476,2 --1/1 Fly to the abandoned Kirin Tor camp near Karazhan
    .use 173698
step
    .goto 42,35.83,64.06
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Pole|r
    .complete 42476,3 --1/1 Find remaining ritual items
step
    .goto 42,35.04,62.53
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Note|r in the tent.
    .complete 42476,4 --1/1 Find any text on the ritual
    .timer 30,RP
step
    .goto 42,34.16,59.67
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 42476,5 --1/1 Listen to Merina
step
    .goto 42,34.14,59.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crystal|r
    .complete 42476,6 --1/1 Take the Ritual Focusing Crystal
step
    #completewith next
    #label Turn in Alodi's Gems
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alodi|r
    .turnin 42455 >>Turn in Alodi's Gems
    .target Alodi
step
    #completewith Turn in Alodi's Gems
    .zoneskip 734
    .cast 193759 >>Use |T1536440:0|t[Teleport: Hall of the Guardian].
    .usespell 193759
step
    #requires Turn in Alodi's Gems
    .goto 734,53.54,70.05,20,0
    .goto 735,56.68,70.92,20,0
    .goto 735,60.77,43.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alodi|r
    .turnin 42455 >>Turn in Alodi's Gems
    .target Alodi
step
    .isQuestAvailable 41113
    .goto 735,59.15,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meryl Felstorm|r
    .turnin 42476 >>Turn in The Deadwind Site
    .target Meryl Felstorm
    .turnin 42477 >>Turn in Daio the Decrepit
    .accept 42479 >>Accept The Mage Hunter
    .target Meryl Felstorm
step
    .isQuestTurnedIn 41113
    .goto 735,55.32,38.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meryl Felstorm|r
    .turnin 42476 >>Turn in The Deadwind Site
    .target Meryl Felstorm
    .turnin 42477 >>Turn in Daio the Decrepit
    .accept 42479 >>Accept The Mage Hunter
    .target Meryl Felstorm
step
    #completewith next
    #label Dalaran to Faronaar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aludane Whitecloud|r
    .complete 42479,1 --1/1 Take the hippogryph in Dalaran to Faronaar
-- step
--     #completewith Dalaran to Faronaar
--     .cast 224869 >>Use |T1535374:0|t[Teleport: Dalaran - Broken Isles]
--     .usespell 224869
step
    .isQuestAvailable 41113
    #completewith Dalaran to Faronaar
    .goto 735,62.44,51.32
    .zone 627 >>Click on the |cRXP_PICK_Portal|r
step
    .isQuestTurnedIn 41113
    #completewith Dalaran to Faronaar
    .goto 734,57.39,90.1
    .zone 627 >>Click on the |cRXP_PICK_Portal|r
step
    #requires Dalaran to Faronaar
    .goto 627,69.82,51.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aludane Whitecloud|r
    .complete 42479,1 --1/1 Take the hippogryph in Dalaran to Faronaar
    .timer 200,RP
    .skipgossipid 44179
    .target Aludane Whitecloud
step
    .isOnQuest 42479
    .goto 630,26.79,49.02
    #title |cFFFCDC00Follow the Arrow|r
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .scenario 2526,1 --Speak with Meryl and Alodi
    .target Meryl and Alodi
step
    .isOnQuest 42479
    .goto 630,30.11,48.35
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Fel Dampening Ward|r
    *|cRXP_WARN_Try flying sometimes some parts of this scenario allow it|r.
    .scenario 2528,1,1 --Wards set up
    .target Fel Dampening Ward
step
    .isInScenario 1122
    .goto 630,29.6,50.36,15,0
    .goto 630,29.96,51.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Fel Dampening Ward|r
    *|cRXP_WARN_Try flying sometimes some parts of this scenario allow it|r.
    .scenario 2528,1,2 --Wards set up
    .target Fel Dampening Ward
step
    .isInScenario 1122
    .goto 630,26.79,49.02
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Fel Dampening Ward|r
    *|cRXP_WARN_Try flying sometimes some parts of this scenario allow it|r.
    .scenario 2528,1,3 --Wards set up
    .target Fel Dampening Ward
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    #title |cFFFCDC00Follow the Arrow|r
    .scenario 2529,1 --Go to the center of the Altar of End Times.
    .timer 55,RP
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crystal|r
    .scenario 2529,2 --Activate the Ritual Focus
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crystal|r, finishing channeling and kill the incoming enemies.
    .scenario 2530,1,15 --Activate the Ritual Focus
    .mob Wrathguard
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crystal|r finishing channeling and kill the incoming enemies.
    .scenario 2530,1,45 --Activate the Ritual Focus
    .mob Wrathguard
    .mob Netherflame Infernal
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crystal|r finishing channeling and kill the incoming enemies.
    .scenario 2530,1,75 --Activate the Ritual Focus
    .mob Netherflame Infernal
    .mob Legion Jailer
    .mob Fiendish Trickster
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crystal|r finishing channeling and kill the incoming enemies.
    .scenario 2530,1,87 --Activate the Ritual Focus
    .timer 15,RP
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .scenario 2530,1 --Activate the Ritual Focus
step
    .goto 619,67.0,92.9
    .isInScenario 1122
    >>Kill |cRXP_ENEMY_Balaadur|r
    .scenario 2531,1 --Slay Balaadur
    .mob Balaadur
step
    .goto 619,67.05,92.74
    .isInScenario 1122
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Weapon|r
    .scenario 2532,1 --Claim Ebonchill.
    .complete 42479,2 --1/1 Claim Ebonchill
step
    #completewith next
    #label Mage Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meryl Felstorm|r
    .turnin 42479 >>Turn in The Mage Hunter
    .target Meryl Felstorm
step
    #completewith Mage Hunter
    .zoneskip 734
    .cast 193759 >>Use |T1536440:0|t[Teleport: Hall of the Guardian].
    .usespell 193759
step
    #requires Mage Hunter
    .goto 734,53.3,72.2,20,0
    .goto 734,59.04,56.7,20,0
    .goto 735,56.68,33.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meryl Felstorm|r
    .turnin 42479 >>Turn in The Mage Hunter
    .target Meryl Felstorm
-- step
--     .goto 735,53.2,41.44
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Fillmaff|r
--     .accept 42429 >>Accept Memories of Ebonchill
--     .target Old Fillmaff
-- step
--     #completewith next
--     #label Council of Tirisfal
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiora Ar'nareth|r |cRXP_WARN_found anywhere in dalaran|r.
--     .complete 42429,1 --Speak to a Reflection of the Council of Tirisfal
-- step
--     #completewith Council of Tirisfal
--     .zoneskip 627
--     .cast 224869 >>Use |T1535374:0|t[Teleport: Dalaran - Broken Isles]
--     .usespell 224869
-- step
--     #requires Council of Tirisfal
--     #loop
--     .goto 627,48.04,16.94,30,0
--     .goto 627,24.58,50.15,30,0
--     .goto 627,46.85,69.23,30,0
--     .goto 627,60.1,63.38,30,0
--     .goto 627,68.45,44.91,30,0
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiora Ar'nareth|r |cRXP_WARN_found anywhere in dalaran|r.
--     .complete 42429,1 --Speak to a Reflection of the Council of Tirisfal
--     .skipgossipid 45655
--     .target Fiora Ar'nareth
-- step
--     #completewith next
--     #label Memories of Ebonchill
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Fillmaff|r
--     .turnin 42429 >>Turn in Memories of Ebonchill
--     .target Old Fillmaff
-- step
--     #completewith Memories of Ebonchill
--     .zoneskip 734
--     .cast 193759 >>Use |T1536440:0|t[Teleport: Hall of the Guardian].
--     .usespell 193759
-- step
--     #requires Memories of Ebonchill
--     .goto 734,53.25,70.58,20,0
--     .goto 734,59.56,56.41,20,0
--     .goto 735,53.30,41.40
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Fillmaff|r
--     .turnin 42429 >>Turn in Memories of Ebonchill
--     .target Old Fillmaff
]])
--Arcane 2
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Artifact Weapon: Arcane
#displayname Artifact Weapon: Arcane
#next ac) Order Hall Mage Part 2

step
    #include a) Artifact Weapon: Arcane
]])
--Fire 2
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Artifact Weapon: Fire
#displayname Artifact Weapon: Fire
#next ac) Order Hall Mage Part 2

step
    #include a) Artifact Weapon: Fire
]])
--Frost 2
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Artifact Weapon: Frost Mage
#displayname Artifact Weapon: Frost
#next ac) Order Hall Mage Part 2

step
    #include a) Artifact Weapon: Frost Mage
]])
--Mage Intro 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) Order Hall Mage Part 1
#displayname |cFF00CCFF1|r - Order Hall Intro 1|r
#next ab) Order Hall Mage Part 2

step
    #include RestedXP Legion Remix\ab) Order Hall Mage Part 1
]])
--Mage Intro 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name ab) Order Hall Mage Part 2
#displayname |cFF00CCFF2|r - Order Hall Intro 2|r
#next ac) Order Hall Mage


step
    #include RestedXP Legion Remix\ac) Order Hall Mage Part 2
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
#chapters a) Order Hall Monk Part 1;ab) Order Hall Monk Part 2;ac) Order Hall Monk;a) Artifact Weapon: Windwalker;a) Artifact Weapon: Mistweaver;a) Artifact Weapon: Brewmaster



]])
--Brewmaster
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) Artifact Weapon: Brewmaster
#displayname Artifact Weapon: Brewmaster
#next ac) Order Hall Monk

step
    #completewith Champion: Archmage Modera
    #hidewindow
    +test
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    .openitem 237812 -- Cache of Infinite Treasure
    .openitem 243373 -- Timerunner's Weaponry
    .openitem 246814 -- Bronze Cache
    .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .zoneskip 709
    .isQuestAvailable 40569
    .cast 126892 >>Use |T775462:0|t[Zen Pilgrimage]
    .usespell 126892
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .target Iron-Body Ponshu
    .accept 44424 >>Accept Three Paths, Three Weapons
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .isOnQuest 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .target Iron-Body Ponshu
    .complete 44424,1 --1/1 Choose a third artifact to pursue
    .choose 1390109
    .skipgossipid 45061
    .skipgossipid 45063
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .isQuestComplete 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .target Iron-Body Ponshu
    .turnin 44424 >>Turn in Three Paths, Three Weapons
    .target Li Li Stormstout
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .target Iron-Body Ponshu
    .accept 43973 >>Accept Two Paths, Two Weapons
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .isOnQuest 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .target Iron-Body Ponshu
    .complete 43973,1 --1/1 Choose a second artifact to pursue
    .choose 1390109
    .skipgossipid 45061
    .skipgossipid 45063
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .isQuestComplete 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .target Iron-Body Ponshu
    .turnin 43973 >>Turn in Two Paths, Two Weapons
step
    .subzoneskip 7902,1
    .isQuestAvailable 40636
    .goto 709,51.41,48.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .accept 40636 >>Accept Prepare To Strike
    .target Iron-Body Ponshu
step
    .subzoneskip 7902,1
    .isQuestAvailable 40636
    .isOnQuest 40636
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .complete 40636,1 --1/1 Choose a artifact to pursue
    .choose 1390109
    .skipgossipid 45061
    .skipgossipid 45063
    .target Iron-Body Ponshu
step
    .isQuestComplete 40636
    .isQuestAvailable 40636
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .target Iron-Body Ponshu
    .turnin 40636 >>Turn in Prepare to Strike
step
    #completewith The Wanderer's Companion
    +|cRXP_WARN_Check you have a usable weapon equipped; if not, equip one until you get your artifact|r.
step
    .goto 709,51.41,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .accept 42762 >>Accept The Wanderer's Companion
    .target Iron-Body Ponshu
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
    #label The Wanderer's Companion
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
    >>Kill |cRXP_ENEMY_Vadis|r and |TInterface/cursor/crosshair/interact.blp:20|tclick on the |cRXP_PICK_Keg|r.
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
    >>Kill |cRXP_ENEMY_Vadis|r and |TInterface/cursor/crosshair/interact.blp:20|tclick on the |cRXP_PICK_Keg|r.
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
    .zoneskip 376,1
    .cast 311861 >>Use |T615341:0|t[Purity Jug]
    .use 173706
step
    #requires Journey to the East
    #completewith next
    #label Journey to the East2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Monkey King|r
    .turnin 42957 >>Turn in Journey to the East
    .accept 42868 >>Accept The Monkey King's Challenge
step
    #completewith Journey to the East2
    #hidewindow
    #requires Journey to the East
    .goto 371,55.03,60.75,30 >>1
step
    #requires Journey to the East2
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
    #completewith next
    #label Jade Serpent
    #title |cFFFCDC00Follow the Arrow|r
    .complete 42765,1 --1/1 Enter the Temple of the Jade Serpent
step
    #completewith Jade Serpent
    .goto 791,34.58,43.45,10 >>Enter the Temple of the Jade Serpent
    .timer 40,RP
step
    #requires Jade Serpent
    .goto 371,56.19,57.98
    #title |cFFFCDC00Follow the Arrow|r
    .complete 42765,1 --1/1 Enter the Temple of the Jade Serpent
step
    .goto 791,32.38,54.04
    .isOnQuest 42765
    >>|cRXP_WARN_Wait for the Roleplay|r.
    *|cRXP_WARN_You can't mount in this scenario|r.
    .scenario 2613,1
step
    .isInScenario 1137
    .goto 791,30.45,59.97
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
    .mob Impling Pillager
step
    .goto 791,30.9,60.83,15,0
    .goto 792,38.99,21.57,15,0
    .goto 792,34.22,42.55
    >>Kill |cRXP_ENEMY_Soulflayer of the Inquisiton|r and his |cRXP_ENEMY_minions|r.
    .scenario 2649,2,1
    .isInScenario 1137
    .mob Soulflayer of the Inquisiton
    .mob Impling Pillager
    .mob Inquisitor's Eye
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
    .timer 20,RP
    .isInScenario 1137
    .mob Belphiar
step
    .goto 791,40.59,78.62
    #title |cFFFCDC00Follow the Arrow|r
    >>|cRXP_WARN_Wait for the Roleplay|r.
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
    .timer 22,RP
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
    .isInScenario 1137
    .goto 791,69.73,60.48
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Weapon|r
    *|cRXP_WARN_More accurate arrow is not possible|r.
    .scenario 2666,1
    .complete 42765,2 --1/1 Obtain Fu Zan
step
    #completewith next
    #label Yu'lon
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yu'lon|r
    *|cRXP_WARN_More accurate arrow is not possible|r.
    .scenario 2701,1
    .skipgossipid 46181
    .isInScenario 1137
step
    #completewith Yu'lon
    .goto 791,69.73,60.48
    .vehicle >>Click on |cRXP_PICK_Yu'lon|r
    .timer 30,RP
    .target Yu'lon
step
    #requires Yu'lon
    .goto 791,69.73,60.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yu'lon|r
    *|cRXP_WARN_More accurate arrow is not possible|r.
    .scenario 2701,1
    .timer 30,RP
    .skipgossipid 46181
    .isInScenario 1137
    .target Yu'lon
step
    .goto 709,51.41,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .turnin 42765 >>Turn in The Trial at the Temple
    .target Iron-Body Ponshu
]])
--Mistweaver
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Mistweaver
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#displayname Artifact Weapon: Mistweaver
#next ac) Order Hall Monk

step
    #completewith Champion: Archmage Modera
    #hidewindow
    +test
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    .openitem 237812 -- Cache of Infinite Treasure
    .openitem 243373 -- Timerunner's Weaponry
    .openitem 246814 -- Bronze Cache
    .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .zoneskip 709
    .isQuestAvailable 40569
    .cast 126892 >>Use |T775462:0|t[Zen Pilgrimage]
    .usespell 126892
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .target Iron-Body Ponshu
    .accept 44424 >>Accept Three Paths, Three Weapons
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .isOnQuest 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .target Iron-Body Ponshu
    .complete 44424,1 --1/1 Choose a third artifact to pursue
    .choose 1390110
    .skipgossipid 45061
    .skipgossipid 45063
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .isQuestComplete 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .target Iron-Body Ponshu
    .turnin 44424 >>Turn in Three Paths, Three Weapons
    .target Li Li Stormstout
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .target Iron-Body Ponshu
    .accept 43973 >>Accept Two Paths, Two Weapons
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .isOnQuest 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .target Iron-Body Ponshu
    .complete 43973,1 --1/1 Choose a second artifact to pursue
    .choose 1390110
    .skipgossipid 45061
    .skipgossipid 45063
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .isQuestComplete 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .target Iron-Body Ponshu
    .turnin 43973 >>Turn in Two Paths, Two Weapons
step
    .subzoneskip 7902,1
    .isQuestAvailable 40636
    .goto 709,51.41,48.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .accept 40636 >>Accept Prepare To Strike
    .target Iron-Body Ponshu
step
    .subzoneskip 7902,1
    .isQuestAvailable 40636
    .isOnQuest 40636
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .complete 40636,1 --1/1 Choose a artifact to pursue
    .choose 1390110
    .skipgossipid 45061
    .skipgossipid 45063
    .target Iron-Body Ponshu
step
    .subzoneskip 7902,1
    .isQuestComplete 40636
    .isQuestAvailable 40636
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .target Iron-Body Ponshu
    .turnin 40636 >>Turn in Prepare to Strike
step
    .goto 709,51.41,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .accept 41003 >>Accept The Emperor's Gift
    .target Iron-Body Ponshu
step
    #completewith Taran Zhu
    +|cRXP_WARN_Check you have a usable weapon equipped; if not, equip one until you get your artifact|r.
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
    .goto 709,47.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tak-Tak|r
    .complete 41003,1 --1/1 Speak with Tak-Tak
    .timer 84.5,RP
    .skipgossipid 45491
    .target Tak-Tak
step
    .isOnQuest 41003
    .countdown 29 >>|cRXP_WARN_Wait for the Roleplay|r.
step
    #label Taran Zhu
    .isOnQuest 41003
    .goto 728,92.14,55.2
    >>Use |T1360980:0|t[Vivify] on |cRXP_FRIENDLY_Taran Zhu|r.
    .scenario 2091,1
    .timer 26.5,RP
    .target Taran Zhu
    .usespell 116670
step
    .isOnQuest 41003
    #completewith Aspersius
    +Use |T1360980:0|t[Vivify] on |cRXP_FRIENDLY_Taran Zhu|r and your team to keep them alive or to resurrect.
    *|cRXP_WARN_It's important as you can't progress with him being dead|r.
    .target Taran Zhu
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
    .scenario 2157,1
step
    .goto 728,44.12,53.64
    >>|cRXP_WARN_In the "Active Items" section|r There is a macro, spam it after talking to |cRXP_FRIENDLY_Taran Zhu|r.
    .complete 41003,3 --1/1 Fly Home with Tak-Tak
    .macro Leave Instance,236367 >> /run C_PartyInfo.LeaveParty()
    .skipgossipid 45497
    .target Tak-Tak
step
    #completewith next
    #label The Emperor's Gift
    #title |cFFFCDC00Spam Macro|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .turnin 41003 >>Turn in The Emperor's Gift
    .macro Leave Instance,236367 >> /run C_PartyInfo.LeaveParty()
    .target Iron-Body Ponshu
step
    #completewith The Emperor's Gift
    .goto 709,49.76,47.48,15 >>Enter the Temple
step
    #requires The Emperor's Gift
    .goto 709,51.40,48.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .turnin 41003 >>Turn in The Emperor's Gift
    .target Iron-Body Ponshu    
]])
--Windwalker
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Windwalker
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#displayname Artifact Weapon: Windwalker
#next ac) Order Hall Monk

step
    #completewith Champion: Archmage Modera
    #hidewindow
    +test
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    .openitem 237812 -- Cache of Infinite Treasure
    .openitem 243373 -- Timerunner's Weaponry
    .openitem 246814 -- Bronze Cache
    .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .zoneskip 709
    .isQuestAvailable 40569
    .cast 126892 >>Use |T775462:0|t[Zen Pilgrimage]
    .usespell 126892
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .target Iron-Body Ponshu
    .accept 44424 >>Accept Three Paths, Three Weapons
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .isOnQuest 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .target Iron-Body Ponshu
    .complete 44424,1 --1/1 Choose a third artifact to pursue
    .choose 1390111
    .skipgossipid 45061
    .skipgossipid 45063
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .isQuestComplete 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .target Iron-Body Ponshu
    .turnin 44424 >>Turn in Three Paths, Three Weapons
    .target Li Li Stormstout
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .target Iron-Body Ponshu
    .accept 43973 >>Accept Two Paths, Two Weapons
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .isOnQuest 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .target Iron-Body Ponshu
    .complete 43973,1 --1/1 Choose a second artifact to pursue
    .choose 1390111
    .skipgossipid 45061
    .skipgossipid 45063
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .isQuestComplete 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .target Iron-Body Ponshu
    .turnin 43973 >>Turn in Two Paths, Two Weapons
step
    .subzoneskip 7902,1
    .isQuestAvailable 40636
    .goto 709,51.41,48.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .accept 40636 >>Accept Prepare To Strike
    .target Iron-Body Ponshu
step
    .isQuestAvailable 40636
    .isOnQuest 40636
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .complete 40636,1 --1/1 Choose a artifact to pursue
    .choose 1390111
    .skipgossipid 45061
    .skipgossipid 45063
    .target Iron-Body Ponshu
step
    .isQuestComplete 40636
    .isQuestAvailable 40636
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .target Iron-Body Ponshu
    .turnin 40636 >>Turn in Prepare to Strike
step
    #completewith Legend of the Sands
    +|cRXP_WARN_Check you have a usable weapon equipped; if not, equip one until you get your artifact|r.
step
    .goto 709,51.4,48.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
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
    #label Legend of the Sands
    .goto 709,49.12,58.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron-Body Ponshu|r
    .turnin 40569 >>Turn in The Legend of the Sands
    .accept 40633 >>Accept Off To Adventure!
    .timer 48,RP
    .target Iron-Body Ponshu
--rp shenagans possible
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
    .goto 249,54.93,33.94,13 >>Leave the building
step
    #requires Essence of the Whirlwind
    .goto 249,54.93,33.94
    >>Use |T348535:0|t[Essence of the Whirlwind]
    .complete 40570,1 --1/1 Use the Essence of the Whirlwind
    .timer 19,RP
    .use 132745
step
    .isInScenario 983
    .goto 716,30.9,45.18
    >>Kill |cRXP_ENEMY_Howling Winds|r and |cRXP_ENEMY_Lesser Sandling|r.
    .scenario 2006,1
    .mob Lesser Sandling
    .mob Howling Winds
step
    #completewith next
    #label Tornadoes
    .isInScenario 983
    #title |cFFFCDC00Follow the Arrow|r
    >>Avoid the tornadoes and enter the green swirls for a speed boost.
    .scenario 2013,1
step
    #completewith Tornadoes
    .isInScenario 983
    .goto 716,29.91,47.18
    .countdown 21 >>Wait infront of the Tornadoes
    .timer 21
step
    #requires Tornadoes
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
    .mob Lesser Sandling
    .mob Howling Winds
step
    .isInScenario 983
    .goto 716,29.3,54.99
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Stormtouched Orb|r
    .scenario 2007,1,2
    .mob Storm Cloud
    .mob Howling Winds
step
    .isInScenario 983
    .goto 716,25.49,60.28
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Stormtouched Orb|r
    .scenario 2007,1,3
    .timer 34,RP
    .mob Storm Cloud
    .mob Howling Winds
    .mob Lesser Sandling
step
    #completewith next
    #hidewindow
    #label Scion of Typhinius
    .isInScenario 983
    #title |cFFFCDC00Follow the Arrow|r
    .scenario 2007,2
    .timer 8,RP
step
    #completewith Scion of Typhinius
    .isInScenario 983
    .goto 716,26.75,59.97
    .countdown 34 >>Wait for |cRXP_ENEMY_Scion of Typhinius|r to spawn.
    .mob Scion of Typhinius
step
    #requires Scion of Typhinius
    .isInScenario 983
    .goto 716,28.93,63.06
    #title |cFFFCDC00Follow the Arrow|r
    >>Kill |cRXP_ENEMY_Scion of Typhinius|r
    .scenario 2007,2
    .timer 9,RP
    .mob Scion of Typhinius
step
    .isInScenario 983
    .goto 716,31.6,66.01
    >>Kill his |cRXP_ENEMY_Minios|r
    .scenario 2008,1,1
    .timer 5,RP
    .mob Kaeled
    .mob Howling Winds
step
    .isInScenario 983
    .goto 716,31.26,66.71
    >>Kill his |cRXP_ENEMY_Minios|r
    .scenario 2008,1,2
    .timer 7,RP
    .mob Storm Cloud
    .mob Na'ser
    .mob Howling Winds
step
    .isInScenario 983
    .goto 716,31.88,67.53
    >>Kill his |cRXP_ENEMY_Minios|r
    .scenario 2008,1,3
    .timer 15,RP
    .mob Melezan
    .mob Storm Cloud
step
    .isInScenario 983
    .goto 716,32.16,66.89
    >>Kill |cRXP_ENEMY_Zaurac|r
    .scenario 2008,1,4
    .timer 3,RP
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
    .complete 40570,2 --1/1 Obtain the Fists of the Heavens
    .scenario 2011,1
    .mob Typhinius
step
    #completewith next
    #label Into The Heavens1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li Stormstout|r
    .turnin 40570 >>Turn in Into The Heavens
    .target Li Li Stormstout
step
    #completewith Into The Heavens1
    .goto 716,35.65,84.21
    .vehicle >>Click on the Kite
    .timer 28,RP
step
    #requires Into The Heavens1
    .goto 709,49.11,58.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li Stormstout|r
    .turnin 40570 >>Turn in Into The Heavens
    .target Li Li Stormstout
-- step
--     .isOnQuest 40570
--     .zone 249 >>Leave the Instance(Right-Click your player frame) or press the macro.
--     .macro Leave Instance,236367 >> /run C_PartyInfo.LeaveParty()
-- step
--     -- .xp <11,1
--     #completewith next
--     #hidewindow
--     #label Into The Heavens
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li Stormstout|r
--     .turnin 40570 >>Turn in Into The Heavens
--     .target Li Li Stormstout
-- step
--     -- .xp <11,1
--     #completewith Into The Heavens
--     .cast 126892 >>Use |T775462:0|t[Zen Pilgrimage]
--     .usespell 126892
-- step
--     -- .xp <11,1
--     #requires Into The Heavens
--     #completewith next
--     #label Into The Heavens2
--     .goto 709,49.11,58.67
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li Stormstout|r
--     .turnin 40570 >>Turn in Into The Heavens
]])
--Brewmaster 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name z) Artifact Weapon: Brewmaster
#displayname Artifact Weapon: Brewmaster
#next ac) Order Hall Monk Part 2


step
    #include RestedXP Legion Remix\a) Artifact Weapon: Brewmaster
]])
--Mistweaver 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Artifact Weapon: Mistweaver
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#displayname Artifact Weapon: Mistweaver
#next ac) Order Hall Monk Part 2


step
    #include RestedXP Legion Remix\a) Artifact Weapon: Mistweaver
]])
--Windwalker 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Artifact Weapon: Windwalker
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#displayname Artifact Weapon: Windwalker
#next ac) Order Hall Monk Part 2


step
    #include RestedXP Legion Remix\a) Artifact Weapon: Windwalker
]])
--Monk Order Hall Intro 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) Order Hall Monk Part 1 
#displayname |cFF00CCFF1|r - Order Hall Intro 1|r
#next ab) Order Hall Monk Part 2 

step
    #include RestedXP Legion Remix\ab) Order Hall Monk Part 1
]])
--Monk Order Hall Intro 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name ab) Order Hall Monk Part 2 
#displayname |cFF00CCFF2|r - Order Hall Intro 2|r
#next ac) Order Hall Monk

step
    #include RestedXP Legion Remix\ac) Order Hall Monk Part 2
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
#chapters a) Order Hall Paladin Part 1;ab) Order Hall Paladin Part 2;ac) Order Hall Paladin;a) Artifact Weapon: Holy Paladin;a) Artifact Weapon: Paladin Protection;a) Artifact Weapon: Retribution



]])
--Holy
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Holy Paladin
#displayname Artifact Weapon: Holy
#next ac) Order Hall Paladin

step
    #completewith Champion: Archmage Modera
    #hidewindow
    +test
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    .openitem 237812 -- Cache of Infinite Treasure
    .openitem 243373 -- Timerunner's Weaponry
    .openitem 246814 -- Bronze Cache
    .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
-- step
--     .subzoneskip 2268,1
--     .goto 24,39.52,93.31,10,0
--     .goto 24,44.67,85.24,10 >>Enter the Order Hall
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .accept 44370 >>Accept Completing Your Arsenal
    .skipgossipid 45133
    .choose 1271766
    .target Lord Maxwell Tyrosus
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .isOnQuest 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .target Lord Maxwell Tyrosus
    .complete 44370,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 45133
    .choose 1271766
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .isQuestComplete 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 44370 >>Turn in Completing Your Arsenal
    .target Lord Maxwell Tyrosus
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .accept 44063 >>Accept Bolstering Your Arsenal
    .choose 1271766
    .skipgossipid 45133
    .target Lord Maxwell Tyrosus
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .isOnQuest 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .target Lord Maxwell Tyrosus
    .complete 44063,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 45133 -- I'm ready to make a decision.
    .choose 1271766
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .isQuestComplete 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 44063 >>Turn in Bolstering Your Arsenal
    .target Lord Maxwell Tyrosus
step
    .subzoneskip 4564,1
    .isQuestAvailable 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .accept 40408,1 >>Accept Weapons of Legend
    .skipgossipid 45133
    .choose 1271766
    .target Lord Maxwell Tyrosus
step
    .subzoneskip 4564,1
    .isQuestAvailable 40408
    .isOnQuest 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .complete 40408,1 --1/1 Artifact weapon chosen
    .skipgossipid 45133
    .choose 1271766
step
    .subzoneskip 4564,1
    .isQuestComplete 40408
    .isQuestAvailable 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 40408,1 >>Turn in Weapons of Legend
    .target Lord Maxwell Tyrosus
step
    .goto 627,74.99,48.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .target Lord Maxwell Tyrosus
    .accept 42231 >>Accept The Mysterious Paladin
step
    .isOnQuest 42881
    .goto 24,38.22,64.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Liadrin|r
    .accept 42881 >>Accept Champion: Lady Liadrin
    .turnin 42881 >>Turn in Champion: Lady Liadrin
    .target Lady Liadrin
    .complete 42846,1 --1/1 Enlist Lady Liadrin
step
    .zoneskip 24,1
    .goto 24,37.63,63.97
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 42231,1 --1/1 Travel to Dalaran
step
    .zoneskip 24,1
    .goto 24,37.63,63.97
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 39864,1 --1/1 Travel to Dalaran
step << Alliance
    .goto 627,72.01,49.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Travard|r
    .turnin 42231 >>Turn in The Mysterious Paladin
    .target Travard
    .accept 42377 >>Accept The Brother's Trail
step << Horde
    #completewith next
    #label Mysterious Paladin
    .goto 627,59,21.04,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Travard|r
    .turnin 42231 >>Turn in The Mysterious Paladin
    .target Travard
    .accept 42377 >>Accept The Brother's Trail
    .disablecheckbox
step << Horde
    #completewith Mysterious Paladin
    #hidewindow
    .goto 627,72.01,49.34,40 >>1
step << Horde
    #requires Mysterious Paladin
    .goto 627,72.01,49.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Travard|r
    .turnin 42231 >>Turn in The Mysterious Paladin
    .target Travard
    .accept 42377 >>Accept The Brother's Trail
step
    #completewith next
    #label Wyrmrest Temple 
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 42377,1 --1/1 Take the Portal to Wyrmrest Temple (Optional)
step
    #completewith Wyrmrest Temple 
    .goto 627,52.75,51.91,20,0
    .goto 627,49,47.36,5 >>Enter the center of Dalaran
step
    #requires Wyrmrest Temple
    .goto 629,30.72,84.46
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 42377,1 --1/1 Take the Portal to Wyrmrest Temple (Optional)
step
    #completewith next
    #label Lanigosa
    #hidewindow
    .complete 42377,2 --1/1 Speak with Lanigosa
    .skipgossipid 45272
step
    #completewith Lanigosa
    .goto 115,59.95,53.08
    .gossipoption 45405 >>Talk to |cRXP_FRIENDLY_Lanigosa|r
    .target Lanigosa
step
    #requires Lanigosa
    .goto 115,56.48,26.96
    #title |cFFFCDC00Follow the Arrow|r
    .complete 42377,2 --1/1 Speak with Lanigosa
    .skipgossipid 45272
    .target Lanigosa
step
    #completewith next
    #label Galford's location
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Note|r
    .complete 42377,3 --1/1 Find clues to Galford's location
step
    #completewith Galford's location
    .goto 115,56.57,28.64,10 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Broken Statue|r |cRXP_WARN_you might need to do it twice|r.
    .timer 53,RP
step
    #requires Galford's location
    .goto 115,60.04,36.19
    #title |cFFFCDC00Follow the Arrow|r
    >>|cRXP_WARN_Make sure you clicked the|r |cRXP_PICK_Broken Statue|r before moving on.
    .complete 42377,3 --1/1 Find clues to Galford's location
step
    .goto 115,61.05,38.05
    #title |cFFFCDC00Follow the Arrow|r
    .complete 42377,4 --1/1 Go to the chasm on the Path of Giants
    .timer 25,RP
step
    .goto 115,61.05,38.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanigosa|r
    .complete 42377,5 --1/1 Speak with Lanigosa
    .timer 17,RP
    .skipgossipid 45651
    .target Lanigosa
step
    .goto 115,61.16,38.14
    >>Kill |cRXP_ENEMY_Jotun|r
    *|cRXP_WARN_Heal |cRXP_FRIENDLY_Lanigosa|r if needed|r.
    .complete 42377,6 --1/1 Defeat Jotun
    .mob Jotun
    .target Lanigosa
step
    .goto 115,61.16,38.14
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Spark|r
    .complete 42377,7 --1/1 Take the Spark of Tyr
step
    .goto 115,60.95,38.21
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Lanigosa|r
    .complete 42377,8 --1/1 Take Lanigosa's ride to Dalaran. (Optional)
    .timer 25
    .target Lanigosa
step
    .goto 627,79.17,46.08
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 42377,9 --1/1 Return to Dalaran.
step
    .goto 627,72.03,49.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Travard|r
    .turnin 42377 >>Turn in The Brother's Trail
    .target Travard
    .accept 42120 >>Accept The Silver Hand
step 
    #completewith next
    #label in Tirisfal Glades
    #title |cFFFCDC00Follow the Arrow|r
    .complete 42120,2 --1/1 Go to the marked location in Tirisfal Glades
step
    #completewith in Tirisfal Glades
    .cast 311681 >>Use |T254294:0|t[Tirisfal Camp Scroll]
    .use 173523
step 
    #requires in Tirisfal Glades
    .isOnQuest 42120
    .goto 18,13.45,56.68
    #title |cFFFCDC00Follow the Arrow|r
    .complete 42120,2 --1/1 Go to the marked location in Tirisfal Glades
    .target Travard
step
    .isOnQuest 42120
    .goto 18,13.45,56.68,10 >>|cRXP_WARN_Follow the Arrow|r.
    .timer 30,RP
step 
    .isInScenario 1092
    .goto 18,14.09,56.5
    .gossipoption 45511 >>Talk to |cRXP_FRIENDLY_Travard.|r
    .target Travard
step
    .goto 20,37.35,12.43,15,0
    .goto 20,35.12,20.33,15,0
    .goto 20,34.78,26.48,15,0
    .goto 20,37.19,43.18
    .isInScenario 1092
    #title |cFFFCDC00Follow the Arrow|r
    >>Enter the Tomb, Kill |cRXP_ENEMY_Masterless Faceless One|r and |cRXP_ENEMY_Flesh Spawn|r
    .scenario 2444,1 --Go to the tomb of Tyr with Travard.
    .mob Masterless Faceless One
    .mob Flesh Spawn
step
    .goto 20,38.28,48.13,25,0
    .goto 20,40.34,55.04,25,0
    .goto 20,37.42,61.01,25,0
    .goto 20,34.49,54.46,25,0
    .goto 20,37.74,64.36
    .isInScenario 1092
    >>Kill |cRXP_ENEMY_Masterless Faceless One|r, |cRXP_ENEMY_Flesh Spawn|r and |cRXP_ENEMY_G'norz the Crazed|r
    *|cRXP_WARN_heal your team when they’re injured|r.
    .scenario 2447,1 --Tyr's Crypt cleared.
    .timer 65,RP
    .mob Masterless Faceless Corrupter
    .mob Flesh Spawn
    .mob G'norz the Crazed
step
    .isInScenario 1092
    .goto 20,37.64,65.74
    >>|cRXP_WARN_Wait for the Roleplay|r  — |cRXP_WARN_heal your team when they’re injured|r.
    .scenario 2448,1 --Listen to Travard.
step
    .goto 20,38.77,77.48,15,0
    .goto 20,42.9,85.49,20,0 
    .goto 20,47.49,75.46,15,0
    .goto 20,52.02,74.87
    .isInScenario 1092
    >>Escort |cRXP_FRIENDLY_Travard|r — |cRXP_WARN_heal your team when they’re injured.|r.
    .scenario 2449,1 --Find the final piece to the ritual.
    .mob Masterless Faceless Corrupter
step
    .isInScenario 1092
    .goto 20,62.67,74.52
    >>Kill |cRXP_ENEMY_Horrific Aberration|r — |cRXP_WARN_heal your team when they’re injured.|r.
    .scenario 2453,1,1
    .timer 30,RP
    .mob Horrific Aberration
step
    .isInScenario 1092
    .goto 20,47.33,75.56,20,0
    #title |cFFFCDC00Follow the Arrow|r
    .scenario 2453,1,2
step
    .isInScenario 1092
    .goto 20,47.33,75.56,20,0
    .goto 20,41.81,82.42
    #title |cFFFCDC00Follow the Arrow|r
    .scenario 2454,1
step
    .isInScenario 1092
    .goto 20,42.94,84.92
    >>Cleanse |cRXP_FRIENDLY_Righteous Crusaders|r and heal |cRXP_FRIENDLY_Argent Dawnbringer|r
    .scenario 2455,1
    .scenario 2455,2
    .usespell 19750
    .usespell 4987
    .target Righteous Crusader
    .target Argent Dawnbringer
step
    .isInScenario 1092
    .goto 20,38.63,76.01,20,0
    .goto 20,37.68,63.55
    #title |cFFFCDC00Follow the Arrow|r
    .scenario 2456,1
    .timer 180,RP
step
    .isInScenario 1092
    .goto 20,37.61,65.32
    >>Kill the waves of enemies |cRXP_WARN_and heal your team|r.
    .scenario 2457,1,100
    .mob Flesh Spawn
    .mob Masterless Faceless Corrupter
    .mob Mordoth the Hunter
step
    .goto 20,37.43,55.14
    .isInScenario 1092
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Weapon|r
    .scenario 2458,1 --Claim the Silver Hand.
    .complete 42120,3 --1/1 Claim the Silver Hand
step
    .isInScenario 1092
    .zone 627 >>Leave the Instance(Right-Click your player frame) or press the macro.
    .macro Leave Instance,236367 >> /run C_PartyInfo.LeaveParty()
step
    .isQuestAvailable 44370,44063
    .goto 627,71.83,45.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 42120 >>Turn in The Silver Hand
    .target Lord Maxwell Tyrosus
    .accept 38576 >>Accept We Meet at Light's Hope
step << Horde
    .isQuestTurnedIn 40408
    .goto 627,58.5,20.55,10,0
    .goto 627,61.89,13.63
    .zone 24 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
step << Alliance
    .isQuestTurnedIn 40408
    .goto 627,36.64,65.28,15,0
    .goto 627,32.64,69.87
    .zone 24 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
step
    .isQuestTurnedIn 44370,44063
    .goto 24,49.86,72.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 42120 >>Turn in The Silver Hand
    .target Lord Maxwell Tyrosus
step << Alliance
    #completewith next
    #label Light's Hope Sanctum 
    .goto 627,34.98,66.58,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 38576,2 --1/1 Enter Light's Hope Sanctum
step << Alliance
    #completewith Light's Hope Sanctum 
    #hidewindow
    .goto 627,32.65,69.91,30 >>1
step << Alliance
    #requires Light's Hope Sanctum 
    .goto 627,32.65,69.91
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 38576,2 --1/1 Enter Light's Hope Sanctum
step << Alliance
    #completewith next
    #label A United Force
    .goto 24,47.59,62.28,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 38576 >>Turn in We Meet at Light's Hope
    .target Lord Maxwell Tyrosus
step << Alliance
    #completewith A United Force
    #hidewindow
    .goto 24,63.15,37.22,40 >>1
step << Alliance
    #requires A United Force
    .goto 24,63.15,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 38576 >>Turn in We Meet at Light's Hope
    .target Lord Maxwell Tyrosus
]])
--Protection
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Paladin Protection 
#displayname Artifact Weapon: Protection
#next ac) Order Hall Paladin

step
    #completewith Champion: Archmage Modera
    #hidewindow
    +test
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    .openitem 237812 -- Cache of Infinite Treasure
    .openitem 243373 -- Timerunner's Weaponry
    .openitem 246814 -- Bronze Cache
    .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
-- step
--     .subzoneskip 2268,1
--     .goto 24,39.52,93.31,10,0
--     .goto 24,44.67,85.24,10 >>Enter the Order Hall
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .accept 44370 >>Accept Completing Your Arsenal
    .skipgossipid 45133
    .choose 1271767
    .target Lord Maxwell Tyrosus
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .isOnQuest 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .target Lord Maxwell Tyrosus
    .complete 44370,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 45133
    .choose 1271767
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .isQuestComplete 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 44370 >>Turn in Completing Your Arsenal
    .target Lord Maxwell Tyrosus
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .accept 44063 >>Accept Bolstering Your Arsenal
    .choose 1271767
    .skipgossipid 45133
    .target Lord Maxwell Tyrosus
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .isOnQuest 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .target Lord Maxwell Tyrosus
    .complete 44063,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 45133 -- I'm ready to make a decision.
    .choose 1271767
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .isQuestComplete 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 44063 >>Turn in Bolstering Your Arsenal
    .target Lord Maxwell Tyrosus
step
    .subzoneskip 4564,1
    .isQuestAvailable 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .accept 40408,1 >>Accept Weapons of Legend
    .skipgossipid 45133
    .choose 1271767
    .target Lord Maxwell Tyrosus
step
    .subzoneskip 4564,1
    .isQuestAvailable 40408
    .isOnQuest 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .complete 40408,1 --1/1 Artifact weapon chosen
    .skipgossipid 45133
    .choose 1271767
step
    .subzoneskip 4564,1
    .isQuestComplete 40408
    .isQuestAvailable 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 40408,1 >>Turn in Weapons of Legend
    .target Lord Maxwell Tyrosus
step
    .isOnQuest 42881
    .goto 24,38.22,64.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Liadrin|r
    .accept 42881 >>Accept Champion: Lady Liadrin
    .turnin 42881 >>Turn in Champion: Lady Liadrin
    .target Lady Liadrin
    .complete 42846,1 --1/1 Enlist Lady Liadrin
step
    .zoneskip 24,1
    .goto 24,37.63,63.97
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 42000,1,1 --1/1 Travel to Dalaran
-- step
--     .zoneskip 24,1
--     .goto 24,37.63,63.97
--     >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
--     .complete 42000,1,1 --1/1 Travel to Dalaran
step
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .accept 42000 >>Accept Seeker of Truth
    .target Lord Maxwell Tyrosus
step
    #completewith next
    #label Orik and Tahu
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 42000,1 --1/1 Speak with Orik and Tahu.
    .target Orik and Tahu
step
    #completewith Orik and Tahu
    .goto 627,72.69,50.01
    .gossipoption 45806 >>Talk to |cRXP_FRIENDLY_Orik and Tahu|r
    .timer 39,RP
step
    #requires Orik and Tahu
    .goto 627,72.69,50.01
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 42000,1 --1/1 Speak with Orik and Tahu.
    .target Orik and Tahu
step
    .goto 627,72.67,49.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orik Trueheart|r
    .turnin 42000 >>Turn in Seeker of Truth
    .target Orik Trueheart
    .accept 42002 >>Accept To Northrend
step
    #completewith next
    #label Argent Hippogryph
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 42002,2 --1/1 Find Orik Trueheart at Shield Hill
step
    #completewith Argent Hippogryph
    .goto 627,72.96,50.08
    .vehicle >>Click on |cRXP_PICK_Argent Hippogryph|r
    .timer 13,RP
    .target Argent Hippogryph
step
    #requires Argent Hippogryph
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 42002,2 --1/1 Find Orik Trueheart at Shield Hill
step
    .goto 117,56.88,78.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orik Trueheart|r
    .turnin 42002 >>Turn in To Northrend
    .target Orik Trueheart
    .accept 42005 >>Accept The End of the Saga
step
    .goto 117,56.88,78.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tahu Sagewind|r
    .complete 42005,1 --1/1 Speak with Tahu Sagewind
    .skipgossipid 45439
    .skipgossipid 45440
    .target Tahu Sagewind
step
    .goto 117,62.27,82.13
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Grave|r
    .complete 42005,2 --1/1 Find the hero's grave
    .timer 68.5,RP
step
    .goto 117,62.27,82.13
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 42005,3 --1/1 Complete the ritual
step
    .goto 627,72.52,50.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orik Trueheart|r in dalaran.
    .turnin 42005 >>Turn in The End of the Saga
    .target Orik Trueheart
    .accept 42017 >>Accept Shrine of the Truthguard
-- step
--     #completewith next
--     #label to Stormheim
--     >>|cRXP_WARN_Wait for the Roleplay|r.
--     .complete 42017,1 --1/1 Take the Argent Hippogryph to Stormheim
step
    -- #completewith to Stormheim
    .goto 627,72.18,50.45
    .vehicle >>Click on |cRXP_PICK_Argent Hippogryph|r
    .timer 29,RP
-- step
--     #requires to Stormheim
--     >>|cRXP_WARN_Wait for the Roleplay|r.
--     .complete 42017,1 --1/1 Take the Argent Hippogryph to Stormheim
step
    .isOnQuest 42017
    .goto 634,85.5,10.65,40 >>|cRXP_WARN_Wait for the Roleplay|r.
    .timer 16,RP
step
    #title |cFFFCDC00Follow the Arrow|r
    .goto 634,83.93,9.52
    .isOnQuest 42017
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .scenario 2390,1 --Speak with Orik.
    .target Orik
step
    #hidewindow
    #completewith next
    #label Inna the Cryptstalker
    .isInScenario 1082
    #title |cFFFCDC00Follow the Arrow|r
    .scenario 2391,1 --Get to the shrine.
step
    #completewith Inna the Cryptstalker
    .isInScenario 1082
    .goto 635,74.6,58.74,25 >>Kill the |cRXP_ENEMY_Gatekeepers|r
    .mob Inna the Cryptstalker
    .mob Shae
step
    #requires Inna the Cryptstalker
    #hidewindow
    #completewith next
    #label Inna the Cryptstalker2
    .isInScenario 1082
    .scenario 2391,1 --Get to the shrine.
step
    #requires Inna the Cryptstalker
    #completewith Inna the Cryptstalker2
    .isInScenario 1082
    #title |cFFFCDC00Follow the Arrow|r
    .goto 635,62.96,53.11,20,0
    .goto 635,57.63,50.72,20,0
    .goto 635,51.99,49.86,20,0
    .goto 635,52.28,53.36,10  >>Dodge the tornadoes by keeping to the right side near the wall.
    .timer 35,RP
    *Kill |cRXP_ENEMY_Drekirjar Shieldbearer|r and |cRXP_ENEMY_Spectral Windshaper|r
    .mob Drekirjar Shieldbearer
    .mob Spectral Windshaper
step
    #requires Inna the Cryptstalker2
    .isInScenario 1082
    .goto 635,51.52,52.04
    >>|cRXP_WARN_Wait for the Roleplay near the door|r.
    .scenario 2391,1 --Get to the shrine.
step
    #completewith next
    #label magic and survive
    .isInScenario 1082
    >>Use |T524354:0|t[Divine Shield] or another strong defensive, and heal yourself if needed.
    *|cRXP_WARN_Heavy damage hits shortly after clicking the door.|r
    .scenario 2407,1 --Activate the door's magic and survive.
    .usespell 642
    .usespell 471195
    .usespell 1022
    .usespell 86659
    .usespell 31850
step
    #completewith magic and survive
    .goto 635,51.03,51.74
    .isInScenario 1082
    .aura 210223 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Door|r
    .timer 10,Survive
    .usespell 642
    .usespell 471195
    .usespell 1022
    .usespell 86659
    .usespell 31850
step
    #requires magic and survive
    .goto 635,51.03,51.74
    .isInScenario 1082
    #title |cFFFCDC00Big Defensive|r
    >>Use |T524354:0|t[Divine Shield] or another strong defensive, and heal yourself if needed.
    *|cRXP_WARN_Heavy damage hits shortly after clicking the door.|r
    .scenario 2407,1 --Activate the door's magic and survive.
    .usespell 642
    .usespell 471195
    .usespell 1022
    .usespell 86659
    .usespell 31850
step
    .goto 635,27.89,45.25
    .isInScenario 1082
    #title |cFFFCDC00Follow the Arrow|r
    .scenario 2392,1 --Investigate the shrine.
step
    #completewith next
    #label Yrgrim the Truthseeker
    .isInScenario 1082
    >>Defeat |cRXP_ENEMY_Yrgrim the Truthseeker|r |cRXP_WARN_if he is frozen kill |cRXP_ENEMY_Runeshaper Griselda|r |r
    .scenario 2394,1 --Yrgrim Defeated.
    .mob Yrgrim the Truthseeker
step
    #completewith Yrgrim the Truthseeker
    .isInScenario 1082
    .goto 635,25.93,44.53
    .gossipoption 45218 >>Talk to |cRXP_FRIENDLY_Yrgrim the Truthseeker|r
    .timer 4.5,RP
    .target Yrgrim the Truthseeker
step
    #requires Yrgrim the Truthseeker
    .goto 635,25.93,44.53,10,0
    .goto 635,28.05,45.03
    .isInScenario 1082
    >>Defeat |cRXP_ENEMY_Yrgrim the Truthseeker|r |cRXP_WARN_if he is frozen kill |cRXP_ENEMY_Runeshaper Griselda|r|r
    .scenario 2394,1 --Yrgrim Defeated.
    .mob Yrgrim the Truthseeker
    .mob Runeshaper Griselda
step
    .goto 635,28.05,45.03
    .isInScenario 1082
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Weapon|r
    .scenario 2395,1 --Take up Truthguard.
    .complete 42017,2 --1/1 Claim the Truthguard
step
    .goto 627,71.74,45.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r |cRXP_WARN_in Dalaran|r.
    .turnin 42017 >>Turn in Shrine of the Truthguard
    .target Lord Maxwell Tyrosus
    .accept 38576 >>Accept We Meet at Light's Hope
-- step
--     .goto 24,49.86,72.29
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r |cRXP_WARN_in Dalaran|r.
--     .turnin 42017 >>Turn in Shrine of the Truthguard
--     .target Lord Maxwell Tyrosus
--     .accept 38576 >>Accept We Meet at Light's Hope
step << Alliance
    #completewith next
    #label Light's Hope Sanctum 
    .goto 627,34.98,66.58,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 38576,2 --1/1 Enter Light's Hope Sanctum
step << Alliance
    #completewith Light's Hope Sanctum 
    #hidewindow
    .goto 627,32.65,69.91,30 >>1
step << Alliance
    #requires Light's Hope Sanctum 
    .goto 627,32.65,69.91
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 38576,2 --1/1 Enter Light's Hope Sanctum
step << Horde
    #completewith next
    #label Light's Hope Sanctum 
    .goto 627,58.71,20.66,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 38576,2 --1/1 Enter Light's Hope Sanctum
step << Horde
    #completewith Light's Hope Sanctum 
    #hidewindow
    .goto 627,61.93,13.5,30 >>1
step << Horde
    #requires Light's Hope Sanctum 
    .goto 627,61.93,13.5
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 38576,2 --1/1 Enter Light's Hope Sanctum
step
    #completewith next
    #label A United Force
    .goto 24,47.59,62.28,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 38576 >>Turn in We Meet at Light's Hope
    .target Lord Maxwell Tyrosus
step
    #completewith A United Force
    #hidewindow
    .goto 24,63.15,37.22,40 >>1
step
    #requires A United Force
    .goto 24,63.15,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 38576 >>Turn in We Meet at Light's Hope
    .target Lord Maxwell Tyrosus
]])
--Retribution
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Retribution
#displayname Artifact Weapon: Retribution
#next ac) Order Hall Paladin

step
    #completewith Champion: Archmage Modera
    #hidewindow
    +test
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    .openitem 237812 -- Cache of Infinite Treasure
    .openitem 243373 -- Timerunner's Weaponry
    .openitem 246814 -- Bronze Cache
    .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
-- step
--     .subzoneskip 2268,1
--     .goto 24,39.52,93.31,10,0
--     .goto 24,44.67,85.24,10 >>Enter the Order Hall
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .accept 44370 >>Accept Completing Your Arsenal
    .skipgossipid 45133
    .choose 1271768
    .target Lord Maxwell Tyrosus
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .isOnQuest 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .target Lord Maxwell Tyrosus
    .complete 44370,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 45133
    .choose 1271768
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .isQuestComplete 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 44370 >>Turn in Completing Your Arsenal
    .target Lord Maxwell Tyrosus
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .accept 44063 >>Accept Bolstering Your Arsenal
    .choose 1271768
    .skipgossipid 45133
    .target Lord Maxwell Tyrosus
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .isOnQuest 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .target Lord Maxwell Tyrosus
    .complete 44063,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 45133 -- I'm ready to make a decision.
    .choose 1271768
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .isQuestComplete 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 44063 >>Turn in Bolstering Your Arsenal
    .target Lord Maxwell Tyrosus
step
    .subzoneskip 4564,1
    .isQuestAvailable 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .accept 40408,1 >>Accept Weapons of Legend
    .skipgossipid 45133
    .choose 1271768
    .target Lord Maxwell Tyrosus
step
    .subzoneskip 4564,1
    .isQuestAvailable 40408
    .isOnQuest 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .complete 40408,1 --1/1 Artifact weapon chosen
    .skipgossipid 45133
    .choose 1271768
step
    .subzoneskip 4564,1
    .isQuestComplete 40408
    .isQuestAvailable 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 40408,1 >>Turn in Weapons of Legend
    .target Lord Maxwell Tyrosus
step
    .goto 627,74.92,48.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .target Lord Maxwell Tyrosus
    .accept 42770 >>Accept Seeking Guidance
step
    >>Use |T413582:0|t[Glowing Hearthstone]
    .complete 42770,1 --1/1 Hearth to Uther's Tomb
    .use 173537
step
    .goto 22,51.55,79.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 42770 >>Turn in Seeking Guidance
    .target Lord Maxwell Tyrosus
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priest Thel'danis|r and |cRXP_FRIENDLY_Mehlar Dawnblade|r
    .accept 42772 >>Accept Sacred Ground
    .goto 22,51.45,79.02
    .target +High Priest Thel'danis
    .accept 42771 >>Accept Keeping the Peace
    .goto 22,51.36,79
    .target +Mehlar Dawnblade
step
    #completewith Spirits exorcised
    >>Kill |cRXP_ENEMY_Anguished Spectre|r and |cRXP_ENEMY_Disturbed Resident|r
    .complete 42771,1 --9/9 Spirits exorcised
    .mob Anguished Spectre
    .mob Disturbed Resident
step
    .goto 22,50.34,80.28
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Gravestone|r
    .complete 42772,1,1 --3/3 Graveyards purified
step
    .goto 22,49.84,77.6
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Gravestone|r
    .complete 42772,1,2 --3/3 Graveyards purified
step
    #label Spirits exorcised
    .goto 22,51.04,76.18
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Gravestone|r
    .complete 42772,1,3 --3/3 Graveyards purified
step
    #loop
    .goto 22,53.96,79.94,40,0
    .goto 22,47.73,81.17,40,0
    .goto 22,50.3,75.3,40,0
    >>Kill |cRXP_ENEMY_Anguished Spectre|r and |cRXP_ENEMY_Disturbed Resident|r
    .complete 42771,1 --9/9 Spirits exorcised
    .mob Anguished Spectre
    .mob Disturbed Resident
step
    >>Kill |cRXP_ENEMY_Cannoneer Dargal|r |cRXP_WARN_next to you|r
    .complete 42771,2 --1/1 Cannoneer Dargal slain
    .mob Cannoneer Dargal
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priest Thel'danis|r and |cRXP_FRIENDLY_Mehlar Dawnblade|r.
    .turnin 42772 >>Turn in Sacred Ground
    .goto 22,51.44,79.02
    .target +High Priest Thel'danis
    .turnin 42771 >>Turn in Keeping the Peace
    .goto 22,51.35,78.99
    .target +Mehlar Dawnblade
step
    .goto 22,51.62,81.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .accept 42773 >>Accept The Light Reveals
    .timer 27,RP
    .target Lord Maxwell Tyrosus
step
    .goto 22,52.08,83.26
    #title |cFFFCDC00Follow the Arrow|r
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 42773,1 --1/1 Join Maxwell Tyrosus in the tomb
step
    #completewith next
    #label Commune with Uther
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 42773,2 --1/1 Commune with Uther
step
    #completewith Commune with Uther
    .goto 22,52.08,83.26
    .cast 216268 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Memorial Plaque|r
    .timer 27,RP
step
    #requires Commune with Uther
    .goto 22,52.08,83.26
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 42773,2 --1/1 Commune with Uther
step
    .goto 22,52.11,83.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 42773 >>Turn in The Light Reveals
    .target Lord Maxwell Tyrosus
    .accept 42774 >>Accept Hope Prevails
step
    .isOnQuest 42774
    .cast 311750 >>Use |T132161:0|t[Hippogryph Whistle]
    .timer 20,Countdown for Logout
    .use 311750
step
    .isOnQuest 42774
    .logout >>Log out and relog for a teleport.
    .timer 20,RP
    .macro Logout,638661 >>/logout
-- step
--     .isOnQuest 42774
--     .countdown 20 >>
step
    .goto 23,74.28,53.25
    *|cRXP_WARN_Wait for the logout timer to end, then log back in.|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 42774 >>Turn in Hope Prevails
    .accept 38376 >>Accept The Search for the Highlord
    .target Lord Maxwell Tyrosus
step
    #completewith next
    #label Argent Hippogryph
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 38376,1 --1/1 Fly to the Broken Shore
step
    #completewith Argent Hippogryph
    .goto 23,74.17,53.07
    .cast 183677 >>Click on the |cRXP_PICK_Argent Hippogryph|r
    .timer 20,RP
    .target Argent Hippogryph
step
    #requires Argent Hippogryph
    .goto 23,70.19,55.87
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 38376,1 --1/1 Fly to the Broken Shore
step
    .goto 676,15.69,51.36
    .isOnQuest 38376
    #title |cFFFCDC00Follow the Arrow|r
    .scenario 1488,1 --Lead the paladins of the Argent Crusade into battle
step
    #loop
    .goto 676,15.21,51.51,20,0
    .goto 676,16.52,51.94,20,0
    .isInScenario 775
    >>Kill |cRXP_ENEMY_Demons|r
    .scenario 1485,1,100
    .mob Wrathguard Cleaver
    .mob Mo'arg Brutalizer
    .mob Ravenous Felstalker
    .mob Burning Crusher
step
    #loop
    .goto 676,20.04,61.69,20,0
    .goto 676,20.52,62.46,20,0
    .isInScenario 775
    >>Kill |cRXP_ENEMY_Jailer Zerus|r
    .scenario 1486,1 --Destroy Jailer Zerus
    .mob Jailer Zerus
step
    .isInScenario 775
    .goto 676,22.26,61.13,15 >>Enter the Cave
step
    #requires Ashbringer
    .isInScenario 775
    .goto 676,23.42,62.88,15,0
    .goto 676,23.83,63.9,15,0
    .goto 676,24.23,63.98,15,0
    .goto 676,26.84,61.33
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ashbringer|r
    .scenario 1487,1
    .timer 55,RP
    .complete 38376,2 --1/1 Obtain the Ashbringer
step
    .goto 676,26.87,61.25
    .isInScenario 775
    .countdown 55 >>|cRXP_WARN_Wait for the Roleplay|r.
step
    .goto 676,26.87,61.25
    .isInScenario 775
    >>Use the |cRXP_WARN_ExtraActionButton|r
    .scenario 2632,1 --Break free from Balnazzar's control.
    .mob Balnazzar
    .usespell 216693
step
    .goto 676,26.87,61.25
    .isInScenario 775
    >>Kill |cRXP_ENEMY_Balnazzar|r
    .complete 38376,3 --1/1 Balnazzar slain
    .mob Balnazzar
-- step
--     .isInScenario 775
--     .goto 676,25.42,61.5,15,0
--     .goto 676,25.43,62.75,15,0
--     .goto 676,24.02,64.03,15,0
--     .goto 676,23.47,63.08,15,0
--     .goto 676,23.08,61.81,15,0
--     .goto 676,21.93,61.06,10 >>Leave the Cave
-- step
--     .isInScenario 775
--     .goto 676,20.44,61.55,20 >>Follow the Arrow
--     .timer 27,RP
-- step
--     .goto 676,20.44,61.55
--     .isInScenario 775
--     >>|cRXP_WARN_Wait for the Roleplay|r.
--     .scenario 1854,1 --Return to Tirion Fordring
step
    .isInScenario 775
    .zone 23 >>Leave the Instance(Right-Click your player frame) or press the macro.
    .macro Leave Instance,236367 >> /run C_PartyInfo.LeaveParty()
step
    #completewith next
    #label Search for the Highlord
    .goto 23,75.43,52.65,10,0
    .goto 24,41.98,89.52,5,0
    .goto 24,45.4,83.87,5,0
    .goto 24,41.73,72.95,5,0
    .goto 24,44.64,70.09,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 38376 >>Turn in The Search for the Highlord
    .target Lord Maxwell Tyrosus
    .accept 42811 >>Accept We Meet at Light's Hope
step
    #completewith Search for the Highlord
    .goto 24,49.9,72.38,20 >>Enter the Light's Hope Chapel and go through the tunnel
step
    #requires Search for the Highlord
    .goto 24,49.9,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 38376 >>Turn in The Search for the Highlord
    .target Lord Maxwell Tyrosus
    .accept 42811 >>Accept We Meet at Light's Hope
step
    #completewith next
    #label Chapel
    .complete 42811,2 --1/1 Enter Light's Hope Sanctum
step
    #completewith Chapel
    .goto 24,40.06,92.46,10 >>Enter the Chapel
step
    #requires Chapel
    .goto 24,41.52,90.27
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Secret Door|r
    .complete 42811,2 --1/1 Enter Light's Hope Sanctum
step
    #completewith next
    #label Light's Hope
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 42811 >>Turn in We Meet at Light's Hope
    .target Lord Maxwell Tyrosus
    .disablecheckbox
step
    #completewith Light's Hope
    .goto 24,46.48,82.49,15,0
    .goto 24,41.21,73.21,15,0
    .goto 24,63.20,37.34,40 >>Follow the Arrow
step
    #requires Light's Hope
    .goto 24,63.20,37.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 42811 >>Turn in We Meet at Light's Hope
    .target Lord Maxwell Tyrosus
]])
--Holy 2
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Artifact Weapon: Holy Paladin
#displayname Artifact Weapon: Holy
#next ac) Order Hall Paladin Part 2

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Holy Paladin
]])
--Protection 2
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Artifact Weapon: Paladin Protection 
#displayname Artifact Weapon: Paladin Protection
#next ac) Order Hall Paladin Part 2

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Paladin Protection 
]])
--Retribution 2
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Artifact Weapon: Retribution
#displayname Artifact Weapon: Retribution
#next ac) Order Hall Paladin Part 2

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Retribution
]])
--Paladin Intro 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) Order Hall Paladin Part 1
#displayname |cFF00CCFF1|r - Order Hall Intro 1|r
#next ab) Order Hall Paladin Part 2

step
    #include RestedXP Legion Remix\ab) Order Hall Paladin Part 1
]])
--Paladin Intro 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name ab) Order Hall Paladin Part 2
#displayname |cFF00CCFF2|r - Order Hall Intro 2|r
#next ac) Order Hall Paladin


step
    #include RestedXP Legion Remix\ac) Order Hall Paladin Part 2
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
#chapters a) Order Hall Priest Part 1;ab) Order Hall Priest Part 2;ac) Order Hall Priest;a) Artifact Weapon: Discipline;a) Artifact Weapon: Holy Priest;a) Artifact Weapon: Shadow



]])
--Discipline
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Discipline
#displayname Artifact Weapon: Discipline
#next

]])
--Holy
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Holy Priest
#displayname Artifact Weapon: Holy
#next

]])
--Shadow
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Shadow
#displayname Artifact Weapon: Shadow
#next

]])
--Priest Intro 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) Order Hall Priest Part 1
#displayname |cFF00CCFF1|r - Order Hall Intro 1|r
#next ab) Order Hall Priest Part 2

step
    #include RestedXP Legion Remix\ab) Order Hall Priest Part 1
]])
--Priest Intro 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name ab) Order Hall Priest Part 2
#displayname |cFF00CCFF2|r - Order Hall Intro 2|r
#next ac) Order Hall Priest


step
    #include RestedXP Legion Remix\ac) Order Hall Priest Part 2
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
#chapters a) Order Hall Rogue Part 1;ab) Order Hall Rogue Part 2;ac) Order Hall Rogue;a) Artifact Weapon: Assassination;a) Artifact Weapon: Outlaw;a) Artifact Weapon: Subtlety



]])
--Assassination
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Assassination
#displayname Artifact Weapon: Assassination
#next ac) Order Hall Rogue

step
    #completewith Champion: Archmage Modera
    #hidewindow
    +test
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    .openitem 237812 -- Cache of Infinite Treasure
    .openitem 243373 -- Timerunner's Weaponry
    .openitem 246814 -- Bronze Cache
    .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .accept 44375 >>Accept The Final Blade
    .skipgossipid 45233
    .choose 1389395
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.48,78.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .target Lord Jorach Ravenholdt
    .complete 44375,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 45233 -- I'm ready to make a decision.
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .turnin 44375 >>Turn in The Final Blade
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .accept 44034 >>Accept Another Worthy Blade
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.48,78.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .target Lord Jorach Ravenholdt
    .complete 44034,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 45232 -- I'm ready to make a decision.
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .turnin 44034 >>Turn in Another Worthy Blade
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestAvailable 40840
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .accept 40840 >>Accept Worthy Blade
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestAvailable 40840
    .goto 626,41.37,77.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .complete 40840,4 --1/1 Artifact weapon chosen
    .choose 1389395
    .skipgossipid 45230
step
    .subzoneskip 8012,1
    .isQuestComplete 40840
    .isQuestAvailable 40840
    .goto 626,41.57,77.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .turnin 40840 >>Turn in A Worthy Blade
    .target Lord Jorach Ravenholdt
step
    .goto 626,42.37,76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Tess Greymane|r
    .target Princess Tess Greymane
    .accept 42501 >>Accept Finishing the Job
    .accept 42502 >>Accept No Sanctuary
step
    .isOnQuest 42139
    .goto 626,42.30,74.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garona Halforcen|r
    *|cRXP_WARN_relog if the npc's isn't there|r
    .accept 43262 >>Accept Champion: Garona Halforcen
    .turnin 43262 >>Turn in Champion: Garona Halforcen
    .target Garona Halforcen
    .complete 42139,1 --1/1 Garona Halforcen recruited
step
    .isOnQuest 42139
    .goto 626,42.43,68.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vanessa VanCleef|r
    .accept 43261 >>Accept Champion: Vanessa VanCleef
    .turnin 43261 >>Turn in Champion: Vanessa VanCleef
    .target Vanessa VanCleef
    .complete 42139,2 --1/1 Vanessa VanCleef recruited
step
    .isOnQuest 42502
    .cast 311709 >>Use |T254294:0|t[Duskwood Scroll]
    .use 173530
step
    #completewith next
    #label Felcaller Whitley
    .goto 47,19.14,56.43,10,0 
    .goto 47,19.62,54.83,10,0
    .goto 47,19.55,54.47,5,0
    .goto 47,19.36,54.99,5,0
    >>Kill |cRXP_ENEMY_Felcaller Whitley|r. Loot him for |T134937:0|t[|cRXP_LOOT_Fel Cipher|r].
    .complete 42502,2 --1/1 Felcaller Whitley slain
    .complete 42502,3 --1/1 Information found
    .mob Felcaller Whitley
step
    #completewith Felcaller Whitley
    .goto 47,19.06,53.88,20 >>Enter House and go upstairs
step
    #requires Felcaller Whitley
    .goto 47,19.06,53.88
    >>Kill |cRXP_ENEMY_Felcaller Whitley|r. Loot him for |T134937:0|t[|cRXP_LOOT_Fel Cipher|r].
    .complete 42502,2 --1/1 Felcaller Whitley slain
    .complete 42502,3 --1/1 Information found
    .mob Felcaller Whitley
step
    .goto 47,19.06,53.88
    >>Click the Quest Turnin Pop-Up in your Questlog.
    .turnin 42502 >>Turn in No Sanctuary
step
    >>Use |T254294:0|t[Blasted Lands Scroll]
    .complete 42501,1 --1/1 Travel to Blasted Lands
    .use 173531
step
    .goto 17,37.03,29.04
    >>Kill |cRXP_ENEMY_Caden Shadowgaze|r. Loot him for |T666475:0|t[|cRXP_LOOT_Coded Message|r].
    .complete 42501,2 --1/1 Caden Shadowgaze slain
    .mob Caden Shadowgaze
step
    .goto 17,37.01,30.04
    >>Click the Quest Turnin Pop-Up in your Questlog.
    .turnin 42501 >>Turn in Finishing the Job
    .accept 42503 >>Accept Codebreaker
step
    #completewith next
    #label Coded Message
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 42503,3 --1/1 Information found
step
    #completewith Coded Message
    .goto 17,37.04,30.41
    .cast 214079 >>Use |T666475:0|t[|cRXP_LOOT_Coded Message|r]
    .timer 25,RP
    .use 138102
step
    #requires Coded Message
    .goto 17,37.04,30.41
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 42503,3 --1/1 Information found
    .use 138102
 step
    .goto 17,36.98,29.09
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 42503,1 --1/1 Read the Coded Message
step
    .goto 17,37.21,29.05
    >>Click the Quest Turnin Pop-Up in your Questlog.
    .turnin 42503 >>Turn in Codebreaker
    .accept 42539 >>Accept Cloak and Dagger
    .target Malton
step
    #completewith next
    #hidewindow
    #label Blood of the Innocent
    .complete 42539,2 --1/1 Blood of the Innocent
step
    #completewith Blood of the Innocent
    .cast 311704 >>Use |T254294:0|t[Duskwood Scroll]
    .use 173527
step
    #requires Blood of the Innocent
    #completewith next
    #label Blood of the Innocent2
    .goto 47,73.83,46.01,5,0
    .goto 47,73.87,45.53,5,0
    .goto 47,74.27,44.22,5,0
    .goto 47,74.01,44.76,5,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bowl|r
    .complete 42539,2 --1/1 Blood of the Innocent
step
    #requires Blood of the Innocent
    #completewith Blood of the Innocent2
    .goto 47,73.67,44.08,5 >>Enter the House and go upstairs
step
    #requires Blood of the Innocent2
    .goto 47,73.64,43.59
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bowl|r upstairs.
    .complete 42539,2 --1/1 Blood of the Innocent
step
    #completewith next
    #hidewindow
    #label Althea Ebonlocke
    >>Defeat |cRXP_ENEMY_Althea Ebonlocke|r
    .complete 42539,3 --1/1 Attempt to kill Althea Ebonlocke
    .mob Althea Ebonlocke
step
    #completewith Althea Ebonlocke
    .goto 47,73.71,44.23,5,0
    .goto 47,74.07,44.69,5,0
    .goto 47,74.29,44.28,5,0
    .goto 47,73.88,45.62,5,0
    .goto 47,73.72,46.12,5 >>Leave the House
step
    #requires Althea Ebonlocke
    #completewith next
    #label Althea Ebonlocke2
    >>Defeat |cRXP_ENEMY_Althea Ebonlocke|r
    .complete 42539,3 --1/1 Attempt to kill Althea Ebonlocke
    .mob Althea Ebonlocke
step
    #requires Althea Ebonlocke
    #completewith Althea Ebonlocke2
    .goto 47,72.83,46.9,5,0
    .goto 47,72.5,47.26,5,0
    .goto 47,72.34,47.7,5,0
    .goto 47,71.88,46.78,15 >>Enter the House
step
    #requires Althea Ebonlocke2
    .goto 47,71.94,46.43
    >>Defeat |cRXP_ENEMY_Althea Ebonlocke|r
    .complete 42539,3 --1/1 Attempt to kill Althea Ebonlocke
    .mob Althea Ebonlocke
step
    #completewith next
    #label Skull of the Innocent
    .goto 47,72.38,47.75,5,0
    .goto 47,72.55,47.18,5,0
    .goto 47,73.01,46.9,5,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Skull|r
    .complete 42539,1 --1/1 Skull of the Innocent
step
    #completewith Skull of the Innocent
    .goto 47,73.99,48.27,10 >>Enter the Forge
step
    #requires Skull of the Innocent
    .goto 47,73.85,48.67
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Skull|r
    .complete 42539,1 --1/1 Skull of the Innocent
step
    .goto 47,71.91,47.69
    >>Click the Quest Turnin Pop-Up in your Questlog.
    .turnin 42539 >>Turn in Cloak and Dagger
    .accept 42568 >>Accept Preparation
    .target Malton
step
    #completewith next
    #label Preparation
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garona Halforcen|r
    .turnin 42568 >>Turn in Preparation
    .target Garona Halforcen
    .accept 42504 >>Accept The Unseen Blade
    .disablecheckbox
step
    #completewith Preparation
    .cast 311712 >>Use |T254294:0|t[Elwynn Forest Scroll]
    .use 173532
step
    #requires Preparation
    .goto 37,36.79,52.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garona Halforcen|r
    .turnin 42568 >>Turn in Preparation
    .target Garona Halforcen
    .accept 42504 >>Accept The Unseen Blade
step
    #completewith next
    #label Confront Mathias Shaw.
    .zoneskip 37,1
    .isOnQuest 42504
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .scenario 2548,1 --Confront Mathias Shaw.
step
    .isOnQuest 42504
    .zoneskip 37,1
    #completewith Confront Mathias Shaw.
    .goto 37,32.05,49.23,30 >>Follow the Arrow
    .timer 43,RP
step
    #requires Confront Mathias Shaw.
    .goto 37,31.92,48.99
    .isOnQuest 42504
    .zoneskip 37,1
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .scenario 2548,1 --Confront Mathias Shaw.
step
    .isInScenario 1123
    #completewith Obtain the Kingslayers
    +|cRXP_WARN_You can only use ground mounts in this scenario|r.
    *Enter Stealth and dodge the guards. Be especially careful of the ones with eyes on top of their heads, as they have increased stealth detection.
step
    .isInScenario 1123
    .goto 84,72.35,88.62,15 >>Follow the Arrow
step
    #completewith next
    #label smoke bomb
    .isInScenario 1123
    .goto 84,70.05,83.16,15,0
    .goto 84,69.96,79.58,15,0
    .goto 84,68.03,79.8,15,0
    .goto 84,66.49,76.54,15,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crate|r
    .scenario 2549,1 --Obtain a smoke bomb from Elling Trias.
step
    .isInScenario 1123
    #completewith smoke bomb
    #title |cFFFCDC00Follow the Arrow|r
    .goto 84,66.07,74.13,10 >>Enter Stormwind and the house.
step
    #requires smoke bomb
    .isInScenario 1123
    .goto 84,66.81,73.89,8,0
    .goto 84,66.12,74.41
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crate|r
    .scenario 2549,1 --Obtain a smoke bomb from Elling Trias.
step
    #completewith next
    #label Trader's Hall
    .goto 84,63.72,72.99,15,0
    .isInScenario 1123
    >>Use the |T458733:0|t[Smoke Bomb] inside the Auction House.  |cRXP_WARN_There is a button underneath the quest objective|r.
    .scenario 2550,1 --Use the smoke bomb in the Trader's Hall.
step
    .isInScenario 1123
    #completewith Trader's Hall
    .goto 84,65.6,74.23,5 >>Leave the House
step
    #requires Trader's Hall
    .goto 84,63.29,72.95,10,0
    .goto 84,61.65,72.46,10,0
    .goto 84,61.35,71.29
    .isInScenario 1123
    >>Use the |T458733:0|t[Smoke Bomb] inside the Auction House. |cRXP_WARN_There is a button underneath the quest objective|r.
    .scenario 2550,1 --Use the smoke bomb in the Trader's Hall.
    .usespell 214645
step
    .goto 84,61.76,72.68,5,0
    .goto 84,62.5,72.22,5,0
    .goto 84,62.7,68.93
    .isInScenario 1123
    >>Use |T133644:0|t[Pick pocket] on |cRXP_ENEMY_Suspicious City Guard|r
    .scenario 2711,1 --Pickpocket Guards until you find information
    .mob Suspicious City Guard
    .usespell 921
step
    .isInScenario 1123
    #hidewindow
    #completewith Garona
    .goto 84,64.1,70.02,15,0
    .goto 84,64.87,69.13,15,0
    .goto 84,64.36,66.58,15,0
    .goto 84,66.17,64.29,15,0
    .goto 84,67.28,64.26,15,0
    .goto 84,69.96,62.17,15,0
    .goto 84,71.93,60.61,15,0
    .goto 84,73.79,61.84,15,0
    .goto 84,73.96,60.64,15,0
    .goto 84,73.53,57.77,15,0
    .goto 84,75.18,55.28
    +1
step
    .isInScenario 1123
    >>Use |T666475:0|t[Coded Message]. |cRXP_WARN_There is a button underneath the quest objective|r.
    .scenario 2711,2 --Read the Coded Message
step
    #label Garona
    .isInScenario 1123
    #title |cFFFCDC00Follow the Arrow|r
    .scenario 2558,1 --Meet Garona at the Pig and Whistle Tavern in Old Town.
step
    .goto 84,75.18,55.28
    .isInScenario 1123
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Door|r
    .scenario 2560,1 --Open the tavern door.
step
    .goto 84,75.96,53.37
    .isInScenario 1123
    >>Kill the waves of enemies
    .scenario 2560,2 --Make Althea Ebonlocke talk.
    .mob Sister Althea Ebonlocke
    .mob Veiled Fanatic
    .mob Gloom
    .mob Sister Althea Ebonlocke
step
    .goto 84,75.04,55.42,5,0
    .goto 84,71.57,55.66,10,0
    .goto 84,70.08,52.68,15,0
    .goto 84,73.22,47.34,20,0
    .goto 84,76.22,44.27,20,0
    .goto 84,78.73,44.86,20,0
    .goto 84,80.77,37.82,20,0
    .goto 84,84.14,33.42,20,0
    .goto 84,83.65,30.31
    .isInScenario 1123
    #title |cFFFCDC00Follow the Arrow|r
    >>Use |T132307:0|t[Sprint] to bypass the wind or kill |cRXP_ENEMY_Fatigued Ritualist|r
    .scenario 2561,1 --Find the Herald in Stormwind Keep.
    .mob Fatigued Ritualist
step
    .goto 84,82.6,28.2
    .isInScenario 1123
    >>Kill |cRXP_ENEMY_Melris Malagan|r
    .scenario 2562,1 --Assassinate Melris Malagan
    .timer 30,RP
    .mob Melris Malagan
step
    #label Obtain the Kingslayers
    .goto 84,82.83,27.93
    .isInScenario 1123
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Weapon|r
    .complete 42504,1 --1/1 Obtain the Kingslayers
    .scenario 2563,1 --Wield the Kingslayers.
step
    .goto 84,86.9,37.2
    .isInScenario 1123
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .scenario 2564,1 --Take the portal to Dalaran.
step
    #completewith next
    #label Hall of Shadows
    #hidewindow
    .goto 627,44.1,29.8,15,0
    .goto 627,45.43,26.39,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garona Halforcen|r
    .turnin 42504 >>Turn in The Unseen Blade
    .target Garona Halforcen
step
    #completewith Hall of Shadows
    .goto 627,46.57,26.96,5,0
    .goto 627,46.62,25.77
    #title |cFFFCDC00Enter Forge|r
    .cast 6477 >>Click on the |cRXP_PICK_Knocker|r
    .gossipoption 45145 >>Talk to |cRXP_FRIENDLY_Mongar|r
    .target Mongar
step
    #requires Hall of Shadows
    #completewith next
    #label Hall of Shadows2
    .goto 626,48.79,33.36,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garona Halforcen|r
    .turnin 42504 >>Turn in The Unseen Blade
    .target Garona Halforcen
step
    #requires Hall of Shadows
    #completewith Hall of Shadows2
    #title |cFFFCDC00Follow the Arrow|r
    .goto 626,43.32,63.3,10 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Torch|r to exit secret room.
step
    #requires Hall of Shadows2
    .goto 626,42.43,74.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garona Halforcen|r
    .turnin 42504 >>Turn in The Unseen Blade
    .target Garona Halforcen
]])
--Outlaw
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Outlaw
#displayname Artifact Weapon: Outlaw
#next ac) Order Hall Rogue

step
    #completewith Champion: Archmage Modera
    #hidewindow
    +test
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    .openitem 237812 -- Cache of Infinite Treasure
    .openitem 243373 -- Timerunner's Weaponry
    .openitem 246814 -- Bronze Cache
    .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .accept 44375 >>Accept The Final Blade
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.48,78.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .target Lord Jorach Ravenholdt
    .complete 44375,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 45233 -- I'm ready to make a decision. --3rd
    -- .skipgossipid 45232 -- I'm ready to make a decision. 2nd
    -- .skipgossipid 45230 -- 1st
    .choose 1389396
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .turnin 44375 >>Turn in The Final Blade
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .accept 44034 >>Accept Another Worthy Blade
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.48,78.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .target Lord Jorach Ravenholdt
    .complete 44034,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 45232
    .choose 1389396
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .turnin 44034 >>Turn in Another Worthy Blade
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestAvailable 40840
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .accept 40840 >>Accept Worthy Blade
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestAvailable 40840
    .goto 626,41.37,77.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .complete 40840,4 --1/1 Artifact weapon chosen
    .skipgossipid 45230 --1st
    .choose 1389396
step
    .subzoneskip 8012,1
    .isQuestComplete 40840
    .isQuestAvailable 40840
    .goto 626,41.57,77.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .turnin 40840 >>Turn in A Worthy Blade
    .target Lord Jorach Ravenholdt
step
    .goto 626,41.28,74.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Admiral Tethys|r
    .accept 40847 >>Accept A Friendly Accord
    .target Fleet Admiral Tethys
step
    .isOnQuest 42139
    .goto 626,42.30,74.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garona Halforcen|r
    *|cRXP_WARN_relog if the npc's isn't there|r
    .accept 43262 >>Accept Champion: Garona Halforcen
    .turnin 43262 >>Turn in Champion: Garona Halforcen
    .target Garona Halforcen
    .complete 42139,1 --1/1 Garona Halforcen recruited
step
    .isOnQuest 42139
    .goto 626,42.43,68.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vanessa VanCleef|r
    .accept 43261 >>Accept Champion: Vanessa VanCleef
    .turnin 43261 >>Turn in Champion: Vanessa VanCleef
    .target Vanessa VanCleef
    .complete 42139,2 --1/1 Vanessa VanCleef recruited
step
    .isOnQuest 40847
    .cast 311705 >>Use |T413582:0|t[Gilded Hearthstone]
    .use 173528
step
    #completewith next
    #label Board the Crimson Veil
    #title |cFFFCDC00Follow the Arrow|r
    .complete 40847,2 --1/1 Board the Crimson Veil
step
    #completewith Board the Crimson Veil
    .goto 210,40.95,74.28,10 >>Leave the House
step
    #requires Board the Crimson Veil
    .goto 210,40.77,69.12
    #title |cFFFCDC00Follow the Arrow|r
    .complete 40847,2 --1/1 Board the Crimson Veil
step
    .goto 210,40.77,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Admiral Tethys|r
    .turnin 40847 >>Turn in A Friendly Accord
    .target Fleet Admiral Tethys
    .accept 40849 >>Accept The Dreadblades
step
    .goto 210,40.77,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Admiral Tethys|r
    .complete 40849,1 --1/1 Set sail (Optional)
    .skipgossipid 44882 -- Set sail for Azsuna!
    .target Fleet Admiral Tethys
step
    #completewith Fly to Dalaran
    +You can only use Ground Mounts in this scenario.
step
    #completewith next
    #label the Horizon's Edge
    .isOnQuest 40849
    >>Kill |cRXP_ENEMY_First Mate DeGauza|r
    .scenario 2101,1 --Commandeer the Horizon's Edge
    .mob First Mate DeGauza
step
    .isOnQuest 40849
    #completewith the Horizon's Edge
    .goto 630,60.73,68.3,20 >>Board the Ship
step
    #requires the Horizon's Edge
    .goto 630,61.13,68.67,10,0
    .goto 630,58.56,67.81
    .isOnQuest 40849
    >>Kill |cRXP_ENEMY_First Mate DeGauza|r then follow the arrow.
    .scenario 2101,1 --Commandeer the Horizon's Edge
    .mob First Mate DeGauza
step
    .goto 630,58.34,67.48,10,0
    .goto 630,58.25,66.97,10,0
    .goto 630,58.11,66.8,10,0
    .goto 630,57.96,66.85,10,0
    .goto 630,57.9,66.59,10,0
    .goto 630,56.43,67.28
    .isInScenario 1012
    #title |cFFFCDC00Follow the Arrow|r
    .scenario 2117,1 --Find the Dread Admiral Eliza
    .timer 28,RP
step
    .goto 630,56.41,67.29
    .isInScenario 1012
    >>Kill |cRXP_ENEMY_Lord Brinebeard|r
    .scenario 2132,1 --Defeat Lord Brinebeard
    .mob Lord Brinebeard
step
    .goto 630,56.02,68.72,5,0
    .goto 630,55.27,69.92,5,0
    .goto 630,55.27,69.94,5,0
    .goto 630,55.49,70.61,5,0
    .goto 630,55.14,71.37,5,0
    .goto 630,54.05,71.48
    .isInScenario 1012
    #title |cFFFCDC00Follow the Arrow|r
    >>Kill ALL |cRXP_ENEMY_Dread Squallshaper|r and avoid the |cRXP_WARN_water jet|r.
    .scenario 2133,1 --Pursue the Dread Admiral Eliza into the temple depths
    .mob Dread Squallshaper
step
    .goto 630,53.25,72.06
    .isInScenario 1012
    >>Kill |cRXP_ENEMY_Dread Admiral Eliza|r
    .scenario 2150,1 --Defeat Eliza
    .mob Dread Admiral Eliza
step
    .goto 630,53.5,71.89
    .isInScenario 1012
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Weapon|r
    .complete 40849,2 --1/1 Dreadblades obtained
    .scenario 2150,2 --Claim the Dreadblades
step
    #completewith next
    #label Fly to Dalaran
    .goto 630,54.17,71.4,10,0
    .goto 630,55.19,71.34,10,0
    .goto 630,56.04,68.68,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bloodsail Gryphon|r
    .complete 40849,3 --1/1 Fly to Dalaran
    .target Bloodsail Gryphon
step
    #completewith Fly to Dalaran
    .goto 630,56.25,67.9,35 >>Leave the Temple
step
    #requires Fly to Dalaran
    .goto 630,56.25,67.9
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bloodsail Gryphon|r
    .complete 40849,3 --1/1 Fly to Dalaran
    .timer 12,RP
    .target Bloodsail Gryphon
step
    #completewith next
    #hidewindow
    #label The Dreadblades
    .goto 627,52.61,34.02,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Admiral Tethys|r
    .turnin 40849 >>Turn in The Dreadblades
    .target Fleet Admiral Tethys
step
    #completewith The Dreadblades
    .goto 627,54.51,31.42,5,0
    .goto 627,54.32,32.84,5,0
    -- .gossipoption 45226 >>Talk to |cRXP_FRIENDLY_Ravenholdt Courier|r to open the secret door.
    .cast 6477 >>Click on the |cRXP_PICK_Knocker|r
    .gossipoption 45402 >>Talk to |cRXP_FRIENDLY_Lucian Trias|r.
    .target Lucian Trias
step
    #requires The Dreadblades
    #completewith next
    #label The Dreadblades2
    .goto 626,48.76,33.81,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Admiral Tethys|r
    .turnin 40849 >>Turn in The Dreadblades
    .target Fleet Admiral Tethys
step
    #requires The Dreadblades
    #completewith The Dreadblades2
    .goto 626,40.88,75.51,30 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Torch|r to open the door to the secret room.
step
    #requires The Dreadblades2
    .goto 626,41.14,74.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Admiral Tethys|r
    .turnin 40849 >>Turn in The Dreadblades
    .target Fleet Admiral Tethys
]])
--Subtlety
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Subtlety
#displayname Artifact Weapon: Subtlety
#next ac) Order Hall Rogue

step
    #completewith Champion: Archmage Modera
    #hidewindow
    +test
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    .openitem 237812 -- Cache of Infinite Treasure
    .openitem 243373 -- Timerunner's Weaponry
    .openitem 246814 -- Bronze Cache
    .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .accept 44375 >>Accept The Final Blade
    .skipgossipid 45233
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.48,78.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .target Lord Jorach Ravenholdt
    .complete 44375,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 45232 -- I'm ready to make a decision. --2nd
    .skipgossipid 45233 -- I'm ready to make a decision. --3rd
    .skipgossipid 45230 -- I'm ready to make a decision. --1st
    .choose 1389397
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .turnin 44375 >>Turn in The Final Blade
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .accept 44034 >>Accept Another Worthy Blade
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.48,78.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .target Lord Jorach Ravenholdt
    .complete 44034,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 45232 -- I'm ready to make a decision. --2nd
    .skipgossipid 45233 -- I'm ready to make a decision. --3rd
    .skipgossipid 45230 -- I'm ready to make a decision. --1st
    .choose 1389397
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .turnin 44034 >>Turn in Another Worthy Blade
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestAvailable 40840
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .accept 40840 >>Accept Worthy Blade
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestAvailable 40840
    .goto 626,41.37,77.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .complete 40840,4 --1/1 Artifact weapon chosen
    -- .choose 1389395
    .choose 1389397
    .skipgossipid 45232 -- I'm ready to make a decision. --2nd
    .skipgossipid 45233 -- I'm ready to make a decision. --3rd
    .skipgossipid 45230 -- I'm ready to make a decision. --1st
step
    .subzoneskip 8012,1
    .isQuestComplete 40840
    .isQuestAvailable 40840
    .goto 626,41.57,77.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .turnin 40840 >>Turn in A Worthy Blade
    .target Lord Jorach Ravenholdt
step
    .goto 626,41.04,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valeera Sanguinar|r
    .accept 41919 >>Accept The Shadows Reveal
    .target Valeera Sanguinar
step
    .isOnQuest 42139
    .goto 626,42.30,74.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garona Halforcen|r
    *|cRXP_WARN_relog if the npc's isn't there|r
    .accept 43262 >>Accept Champion: Garona Halforcen
    .turnin 43262 >>Turn in Champion: Garona Halforcen
    .target Garona Halforcen
    .complete 42139,1 --1/1 Garona Halforcen recruited
step
    .isOnQuest 42139
    .goto 626,42.43,68.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vanessa VanCleef|r
    .accept 43261 >>Accept Champion: Vanessa VanCleef
    .turnin 43261 >>Turn in Champion: Vanessa VanCleef
    .target Vanessa VanCleef
    .complete 42139,2 --1/1 Vanessa VanCleef recruited
step
    #completewith next
    #label Lucian Trias'
    #hidewindow
    .goto 626,45.01,57.61,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucian Trias|r
    .complete 41919,3 --1/1 Lucian Trias' intel
    .target Lucian Trias
step
    #completewith Lucian Trias'
    .goto 626,29.48,22.39
    .cast 6477 >>Click on the |cRXP_PICK_Knocker|r
step
    #requires Lucian Trias' 
    #completewith next
    #label Lucian Trias'2
    .goto 627,45.6,28.53,10,0
    .goto 627,46.84,28.87,8,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucian Trias|r
    .complete 41919,3 --1/1 Lucian Trias' intel
    .target Lucian Trias
step
    #requires Lucian Trias' 
    #completewith Lucian Trias'2
    .goto 627,53.16,33.12,10 >>Follow the Arrow
step
    #requires Lucian Trias'2
    .goto 627,54.39,31.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucian Trias|r
    .complete 41919,3 --1/1 Lucian Trias' intel
    .skipgossipid 45401 -- The shadows reveal.
    .target Lucian Trias
step
    #completewith next
    #hidewindow
    #label Val'zuun's intel
    .goto 627,52.78,33.64,5,0
    .goto 628,74.85,64.13,5,0
    .goto 628,73.26,65.67,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Val'zuun|r
    .complete 41919,2 --1/1 Val'zuun's intel
    .target Val'zuun
step
    #completewith Val'zuun's intel
    .goto 628,67.4,63.13,15 >>Enter the Sewer
step
    #requires Val'zuun's intel
    .isOnQuest 41919
    .goto 628,67.4,63.13
    .gossipoption 45397 >>Talk to |cRXP_FRIENDLY_Val'zuun|r
    .timer 26,RP
    .target Val'zuun
step
    #completewith next
    #label The Shadows Reveal
    .goto 628,73.57,65.69,5,0
    .goto 628,76.45,67.51,5,0
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 41919,2 --1/1 Val'zuun's intel
    .target Val'zuun
step
    #completewith The Shadows Reveal
    .goto 628,75.2,65.08,5 >>Stand near the sewer exit |cRXP_WARN_don't go too far|r
step
    #requires The Shadows Reveal
    .goto 628,74.05,63.8
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 41919,2 --1/1 Val'zuun's intel
    .target Val'zuun
step
    .goto 627,27.36,64.15
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Desmond Gravesorrow|r
    .target Desmond Gravesorrow
    .complete 41919,1 --1/1 Desmond Gravesorrow's intel
    .skipgossipid 45396 -- <Search the body for clues.
step
    #completewith next
    #label The Shadows Reveal2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41919 >>Turn in The Shadows Reveal
    .target Valeera Sanguinar
    .accept 41920 >>Accept A Matter of Finesse
step
    #completewith The Shadows Reveal2
    .goto 627,51.62,68.76,5 >>Enter the House
step
    #requires The Shadows Reveal2
    .goto 627,51.67,70.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41919 >>Turn in The Shadows Reveal
    .target Valeera Sanguinar
    .accept 41920 >>Accept A Matter of Finesse
step
    #completewith next
    #label Rune of Portals
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crystal|r
    *|cRXP_WARN_Dodge the Arcane Sentries and fire swirlies|r.
    .complete 41920,1 --1/1 Rune of Portals
step
    #completewith Rune of Portals
    #title |cFFFCDC00Follow the Arrow|r
    .goto 627,56.97,46.87
    .cast 1784 >>Use |T132320:0|t[Stealth] before entering the House.
    .usespell 1784
step
    #requires Rune of Portals
    .goto 627,53.60,47.42
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crystal|r
    *|cRXP_WARN_Dodge the Arcane Sentries and fire swirlies|r.
    .complete 41920,1 --1/1 Rune of Portals
    .target Arcane Sentry
step
    #completewith next
    #label Portals delivered
    .goto 628,74.43,64.05,5,0
    .goto 628,73.03,65.41,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Val'zuun|r
    .target Val'zuun
    .complete 41920,2 --1/1 Rune of Portals delivered
step
    #completewith Portals delivered
    .goto 628,67.2,63.23,5 >>Enter the Sewer
step
    #requires Portals delivered
    .goto 628,67.2,63.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Val'zuun|r
    .target Val'zuun
    .complete 41920,2 --1/1 Rune of Portals delivered
    .skipgossipid 45398 -- <Hand the Rune of Portals to Val'zuun.>
step
    .goto 628,67.82,63.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41920 >>Turn in A Matter of Finesse
    .target Valeera Sanguinar
    .accept 41921 >>Accept Closing In
step
    #completewith next
    #label Akaari confronted
    .goto 628,73.34,65.55,5,0
    .goto 628,76.49,67.38,5,0
    >>Kill |cRXP_ENEMY_Akaari Shadowgore|r
    .complete 41921,1 --1/1 Akaari confronted
step
    #completewith Akaari confronted
    .goto 627,59.7,48.09,5 >>Leave the Sewer
step
    #requires Akaari confronted
    .goto 627,49.89,37.93,5,0
    .goto 627,50.69,40.98,5,0
    .goto 627,49.48,41.21,5,0
    .goto 627,47.78,40.7
    >>Enter the house and go upstaris to kill |cRXP_ENEMY_Akaari Shadowgore|r
    .complete 41921,1 --1/1 Akaari confronted
    .mob Akaari Shadowgore
step
    .goto 627,49.48,41.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41921 >>Turn in Closing In
    .target Valeera Sanguinar
    .accept 41922 >>Accept Traitor!
step
    #completewith next
    #label Traitor!
    .goto 627,48.3,40.41,5,0
    .goto 627,48.17,38.22,5,0
    .goto 628,74.48,63.87,5,0
    .goto 628,72.98,65.34,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41922 >>Turn in Traitor!
    .target Valeera Sanguinar
step
    #completewith Traitor!
    .goto 628,67.53,62.39,5 >>Enter the Sewer
step
    #requires Traitor!
    .goto 628,67.53,62.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41922 >>Turn in Traitor!
    .target Valeera Sanguinar
step
    .goto 628,67.22,62.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Val'zuun|r
    .accept 41924 >>Accept Fangs of the Devourer
    .timer 15,RP
    .target Val'zuun
step
    .goto 628,66.73,61.50
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 41924,1 --1/1 Use the Twisted Gateway
step
    #completewith next
    #label Akaari Shadowgore
    .isOnQuest 41924
    >>Traverse to |cRXP_ENEMY_Akaari Shadowgore|r, dodge the eyes as they knock you out of stealth.
    *Defeat |cRXP_ENEMY_Akaari Shadowgore|r
    .scenario 2363,1 --Engage Akaari Shadowgore.
    .mob Akaari Shadowgore
step
    #completewith Akaari Shadowgore
    .isOnQuest 41924
    .goto 740,63.59,52.98
    .cast 1784 >>Use |T132320:0|t[Stealth] to stealth to |cRXP_ENEMY_Akaari Shadowgore|r
    .usespell 1784
step
    #requires Akaari Shadowgore
    .isOnQuest 41924
    .goto 740,63.59,52.98
    >>Traverse to |cRXP_ENEMY_Akaari Shadowgore|r, dodge the eyes as they knock you out of stealth.
    *Defeat |cRXP_ENEMY_Akaari Shadowgore|r
    .scenario 2363,1 --Engage Akaari Shadowgore.
    .timer 5,RP
step
    .goto 741,67.4,55.3
    .isInScenario 1078
    .cast 1784 >>Use |T132320:0|t[Stealth] and |T133644:0|t[Pick Pocket] the |cRXP_ENEMY_Soulkeeper|r.
    .scenario 2364,1 --Use Pick Pocket on the Soulkeeper.
    .usespell 1784
    .usespell 921
    .mob Soulkeeper
step
    .goto 741,67.4,55.3
    .isInScenario 1078
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Cage|r
    .scenario 2473,1 --Escape the Jailer's Prison.
step
    .goto 741,64.5,47.39
    .isInScenario 1078
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crate|r
    .scenario 2473,2 --Reclaim your weapons.
step
    .goto 741,59.76,51.71
    .isInScenario 1078
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Gate|r
    .scenario 2473,3 --Open the Holding Cell door.
    .timer 10,RP
step
    .goto 741,51.3,52.8
    .isInScenario 1078
    >>Kill |cRXP_ENEMY_Xirus|r
    .scenario 2366,1 --Slay Inquisitor Xirus.
    .mob Xirus
step
    .goto 740,52.3,70.38,10,0
    .goto 740,58.4,66.7
    .isInScenario 1078
    #title |cFFFCDC00Follow the Arrow|r
    .goto 740,58.7,66.87
    .scenario 2367,2 --Find Akaari Shadowgore.
step
    .goto 740,63.61,53.24
    .isInScenario 1078
    >>Kill |cRXP_ENEMY_Akaari Shadowgore|r
    .scenario 2368,1 --Kill Akaari Shadowgore.
    .mob Akaari Shadowgore
step
    .goto 740,63.21,53.00
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Weapon|r
    .complete 41924,2 --1/1 Fangs of the Devourer
    .scenario 2369,1 --Wield the Fangs of the Devourer.
step
    #completewith next
    #hidewindow
    #label Fangs of the Devourer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41924 >>Turn in Fangs of the Devourer
    .target Valeera Sanguinar
step
    #completewith Fangs of the Devourer
    .zone 628 >>Leave the Instance(Right-Click your player frame) or press the macro.
    .macro Leave Instance,236367 >> /run C_PartyInfo.LeaveParty()
step
    #requires Fangs of the Devourer
    #hidewindow
    #completewith next
    #label Fangs of the Devourer2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41924 >>Turn in Fangs of the Devourer
    .target Valeera Sanguinar
step
    #requires Fangs of the Devourer
    #completewith Fangs of the Devourer2
    .goto 628,73.27,65.13,5,0
    .goto 628,76.51,67.51,5,0
    .goto 627,59.65,47.69,5 >>Leave the Sewer
step
    #requires Fangs of the Devourer2
    #hidewindow
    #completewith next
    #label Fangs of the Devourer3
    .goto 627,52.8,33.78,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41924 >>Turn in Fangs of the Devourer
    .target Valeera Sanguinar
step
    #requires Fangs of the Devourer2
    #completewith Fangs of the Devourer3
    .goto 627,54.5,31.45,5,0
    .goto 627,54.32,32.81
    .cast 6477 >>Click on the |cRXP_PICK_Knocker|r
    .gossipoption 45402 >>Talk to |cRXP_FRIENDLY_Lucian Trias|r
    .target Lucian Trias
 step
    #requires Fangs of the Devourer3
    #hidewindow
    #completewith next
    #label Fangs of the Devourer4
    .goto 627,52.8,33.78,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41924 >>Turn in Fangs of the Devourer
    .target Valeera Sanguinar
step
    #requires Fangs of the Devourer3
    #completewith Fangs of the Devourer4
    .goto 626,40.88,75.51,30 
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Torch|r to open the door to the secret room.
step
    #requires Fangs of the Devourer4
    .goto 626,40.88,75.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41924 >>Turn in Fangs of the Devourer
    .target Valeera Sanguinar
]])
--Assassination 2
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Artifact Weapon: Assassination
#displayname Artifact Weapon: Assassination
#next ac) Order Hall Rogue Part 2

step
    #include a) Artifact Weapon: Assassination
]])
--Outlaw 2
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Artifact Weapon: Outlaw
#displayname Artifact Weapon: Outlaw
#next ac) Order Hall Rogue Part 2

step
    #include a) Artifact Weapon: Outlaw
]])
--Subtlety 2
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Artifact Weapon: Subtlety
#displayname Artifact Weapon: Subtlety
#next ac) Order Hall Rogue Part 2

step
    #include a) Artifact Weapon: Subtlety
]])
--Rogue Intro 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) Order Hall Rogue Part 1
#displayname |cFF00CCFF1|r - Order Hall Intro 1|r
#next ab) Order Hall Rogue Part 2

step
    #include RestedXP Legion Remix\ab) Order Hall Rogue Part 1
]])
--Rogue Intro 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name ab) Order Hall Rogue Part 2
#displayname |cFF00CCFF2|r - Order Hall Intro 2|r
#next ac) Order Hall Rogue


step
    #include RestedXP Legion Remix\ac) Order Hall Rogue Part 2
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
#chapters a) Order Hall Shaman Part 1;ab) Order Hall Shaman Part 2;ac) Order Hall Shaman;a) Artifact Weapon: Elemental;a) Artifact Weapon: Enhancement;a) Artifact Weapon: Restoration Shaman



]])
--Elemental
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Elemental
#displayname Artifact Weapon: Elemental
#next


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
#chapter
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Enhancement
#displayname Artifact Weapon: Enhancement
#next

]])
--Restoration
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Restoration Shaman
#displayname Artifact Weapon: Restoration
#next

]])
--Shaman Intro 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) Order Hall Shaman Part 1
#displayname |cFF00CCFF1|r - Order Hall Intro 1|r
#next ab) Order Hall Shaman Part 2

step
    #include RestedXP Legion Remix\ab) Order Hall Shaman Part 1
]])
--Shaman Intro 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name ab) Order Hall Shaman Part 2
#displayname |cFF00CCFF2|r - Order Hall Intro 2|r
#next ac) Order Hall Shaman


step
    #include RestedXP Legion Remix\ac) Order Hall Shaman Part 2
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
#chapters a) Order Hall Warlock Part 1;ab) Order Hall Warlock Part 2;ac) Order Hall Warlock;a) Artifact Weapon: Affliction;a) Artifact Weapon: Demonology;a) Artifact Weapon: Destruction



]])
--Affliction
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Affliction
#displayname Artifact Weapon: Affliction
#next

step
    +1

]])
--Demonology
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Demonology
#displayname Artifact Weapon: Demonology
#next

]])
--Destruction
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Destruction
#displayname Artifact Weapon: Destruction
#next

]])
--Warlock Intro 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) Order Hall Warlock Part 1
#displayname |cFF00CCFF1|r - Order Hall Intro 1|r
#next ab) Order Hall Warlock Part 2

step
    #include RestedXP Legion Remix\ab) Order Hall Warlock Part 1
]])
--Warlock Intro 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name ab) Order Hall Warlock Part 2
#displayname |cFF00CCFF2|r - Order Hall Intro 2|r
#next ac) Order Hall Warlock


step
    #include RestedXP Legion Remix\ac) Order Hall Warlock Part 2
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
#chapters a) Order Hall Warrior Part 1;ab) Order Hall Warrior Part 2;ac) Order Hall Warrior;a) Artifact Weapon: Arms;a) Artifact Weapon: Fury;a) Artifact Weapon: Warrior Protection 



]])
--Arms
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Arms
#displayname Artifact Weapon: Arms
#next ac) Order Hall Warrior

step
    #completewith Champion: Archmage Modera
    #hidewindow
    +test
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    .openitem 237812 -- Cache of Infinite Treasure
    .openitem 243373 -- Timerunner's Weaponry
    .openitem 246814 -- Bronze Cache
    .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 43949
    .isQuestAvailable 44417
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Odyn|r
    .accept 44417 >>Accept One More Legend
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 43949
    .isQuestAvailable 44417
    .isOnQuest 44417
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Odyn|r
    .target Odyn
    .complete 44417,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 45055 -- I'm ready to make a decision.
    .skipgossipid 45058
    .choose 1389404
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 43949
    .isQuestAvailable 44417
    .isQuestComplete 44417
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Odyn|r
    .turnin 44417 >>Turn in One More Legend
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Odyn|r
    .accept 43949 >>Accept More Weapons of Legend
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .isOnQuest 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Odyn|r
    .target Odyn
    .complete 43949,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 45055
    .skipgossipid 45058
    .choose 1389404
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .isQuestComplete 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Odyn|r
    .turnin 43949 >>Turn in More Weapons of Legend
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestAvailable 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Odyn|r
    .accept 40579,1 >>Accept Weapons of Legend
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestAvailable 40579
    .isOnQuest 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Odyn|r
    .complete 40579,1 --1/1 Artifact weapon chosen
    .skipgossipid 45055
    .skipgossipid 45058
    .choose 1389404
step
    .subzoneskip 13637,1
    .isQuestComplete 40579
    .isQuestAvailable 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Odyn|r
    .turnin 40579,1 >>Turn in Weapons of Legend
    .target Odyn
step
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Odyn|r
    .accept 41105 >>Accept The Sword of Kings
    .target Odyn
step
    #completewith next
    #label Tirisfal Glades
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 41105,1 --1/1 Speak with Aerylia to go to Tirisfal Glades (Optional)
step
    #completewith Tirisfal Glades
    .goto 695,58.37,25
    .gossipoption 44742 >>Talk to |cRXP_FRIENDLY_Aerylia|r
    .timer 11,RP
    .target Aerylia
step
    #requires Tirisfal Glades
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 41105,1 --1/1 Speak with Aerylia to go to Tirisfal Glades (Optional)
step
    .isOnQuest 41105
    #title |cFFFCDC00Follow the Arrow|r
    .goto 18,13.5,56.65,100 >>Follow the Arrow
    *|cRXP_WARN_if you are stuck;relog|r
step
    .isOnQuest 41105
    #title |cFFFCDC00Follow the Arrow|r
    .goto 18,13.5,56.65
    .scenario 2237,1 --Investigate the camp.
step
    .isInScenario 1037
    .goto 18,13.5,56.65
    .isOnQuest 41105
    >>Kill |cRXP_ENEMY_Twilight Ritualist|r
    .scenario 2203,1 --Slay the ritualists torturing Thoradin.
    .mob Twilight Ritualist
    .timer 62,RP
step
    .goto 18,15.3,56.11
    .isInScenario 1037
    #title |cFFFCDC00Follow the Arrow|r
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .scenario 2204,1 --Follow and listen to Thoradin.
step
    .goto 20,37.46,13.1,10,0
    .goto 20,37.29,13.18,15,0
    .goto 20,35.33,20.04,15,0
    .goto 20,34.6,25.07,15,0
    .goto 20,37.1,45.3
    .isInScenario 1037
    #title |cFFFCDC00Follow the Arrow|r
    >>Enter the Tomb
    .scenario 2210,1 --Enter the Tomb of Tyr.
step
    #loop
    .goto 20,39.88,52.69,15,0
    .goto 20,39.29,58.06,15,0
    .goto 20,34.81,57.54,15,0
    .goto 20,35.1,51.59,15,0
    .isInScenario 1037
    >>Interrupt & stun |cRXP_ENEMY_Void Tendril|r then kill them.
    .scenario 2211,1 --Void Tendrils killed
    .usespell 107570
    .usespell 6552
    .timer 8,RP
    .mob Void Tendril
step
    .goto 20,37.51,54.88
    .isInScenario 1037
    >>Kill |cRXP_ENEMY_Soth'ozz the Guardian|r and |cRXP_ENEMY_Flesh Spawn|r
    .scenario 2212,1 --Kill Soth'ozz
    .mob Soth'ozz the Guardian
    .mob Flesh Spawn
step
    .goto 20,37.61,67.86,15,0
    .goto 20,41.57,82.39,15,0
    .goto 20,44.23,89.03,15,0
    .goto 20,47.55,76.18
    .isInScenario 1037
    #title |cFFFCDC00Follow the Arrow|r
    >>Kill any |cRXP_ENEMY_Faceless Illusionist|r
    .scenario 2213,1 --Reach the prison chamber.
    .mob Faceless Illusionist
step
    .goto 20,61.31,74.33
    .isInScenario 1037
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Zakajz the Corruptor|r
    .scenario 2214,1 --Take the sword
    .timer 15,RP
    .mob Zakajz the Corruptor
step
    .goto 20,62.54,74.72
    .isInScenario 1037
    >>Kill |cRXP_ENEMY_Zakajz the Corruptor|r
    .scenario 2215,1 --Defeat Zakajz
    .mob Zakajz the Corruptor
step
    .goto 20,61.49,73.48
    .isInScenario 1037
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Weapon|r
    .scenario 2216,1 --Take Strom'kar, the Warbreaker.
step
    .goto 20,58.07,76.26
    .isInScenario 1037
    >>Use the |cRXP_WARN_ExtraActionButton|r
    .scenario 2216,2 --Zakajz killed permanently.
    .usespell 206455
step
    .goto 20,58.01,74.18
    .isInScenario 1037
    >>Enter the light and use the |cRXP_WARN_ExtraActionButton|r
    .complete 41105,5 --1/1 Take Odyn's portal back to Skyhold
    .usespell 192085
step
    .goto 695,58.36,84.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Odyn|r
    .turnin 41105 >>Turn in The Sword of Kings
    .target Odyn
]])
--Fury
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Fury
#displayname Artifact Weapon: Fury
#next ac) Order Hall Warrior


step
    #completewith Champion: Archmage Modera
    #hidewindow
    +test
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    .openitem 237812 -- Cache of Infinite Treasure
    .openitem 243373 -- Timerunner's Weaponry
    .openitem 246814 -- Bronze Cache
    .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 43949
    .isQuestAvailable 44417
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Odyn|r
    .accept 44417 >>Accept One More Legend
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 43949
    .isQuestAvailable 44417
    .isOnQuest 44417
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Odyn|r
    .target Odyn
    .complete 44417,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 45055 -- I'm ready to make a decision.
    .skipgossipid 45058
    .choose 1389405
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 43949
    .isQuestAvailable 44417
    .isQuestComplete 44417
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Odyn|r
    .turnin 44417 >>Turn in One More Legend
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Odyn|r
    .accept 43949 >>Accept More Weapons of Legend
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .isOnQuest 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Odyn|r
    .target Odyn
    .complete 43949,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 45055
    .skipgossipid 45058
    .choose 1389405
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .isQuestComplete 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Odyn|r
    .turnin 43949 >>Turn in More Weapons of Legend
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestAvailable 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Odyn|r
    .accept 40579,1 >>Accept Weapons of Legend
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestAvailable 40579
    .isOnQuest 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Odyn|r
    .complete 40579,1 --1/1 Artifact weapon chosen
    .skipgossipid 45055
    .skipgossipid 45058
    .choose 1389405
step
    .subzoneskip 13637,1
    .isQuestComplete 40579
    .isQuestAvailable 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Odyn|r
    .turnin 40579,1 >>Turn in Weapons of Legend
    .target Odyn
step
    .goto 695,58.35,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Odyn|r
    .accept 40043 >>Accept The Hunter of Heroes
    .target Odyn
step
    #completewith next
    #label Aerylia 
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 40043,1 --1/1 Speak with Aerylia to go to Tideskorn Harbor
    .skipgossipid 44731
step
    #completewith Aerylia
    .goto 695,58.37,24.95
    .gossipoption 44731 >>Talk to |cRXP_FRIENDLY_Aerylia|r
    .timer 30,RP
    .target Aerylia 
step
    #requires Aerylia 
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 40043,1 --1/1 Speak with Aerylia to go to Tideskorn Harbor
    .timer 10,RP
step
    .isOnQuest 40043
    .countdown 10 >>|cRXP_WARN_Wait for the Roleplay|r.
step
    .goto 634,61.34,45.87
    .isOnQuest 40043
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bonfire|r
    .scenario 1888,1 --Light the bonfire.
step
    #loop
    .goto 634,61.67,46.62,20,0
    .goto 634,61.1,45.11,20,0
    .isInScenario 944
    >>Kill the waves of enemies.
    .scenario 1889,2,1 --Kill the leader of the attackers
    .mob Mist Watchhound
    .mob Veteran Harpooner
step
    .goto 634,60.86,45.42
    .isInScenario 944
    >>Kill the waves of enemies.
    .scenario 1889,2,2 --Kill the leader of the attackers
    .mob Mist Watchhound
    .mob Veteran Harpooner
    .mob Elder Runecarver
step
    #loop
    .goto 634,60.95,46.73,25,0
    .goto 634,60.9,45.2,25,0
    .isInScenario 944
    >>Kill the waves of enemies.
    .scenario 1889,2,3 --Kill the leader of the attackers
    .mob Mist Watchhound
    .mob Veteran Harpooner
    .mob Elder Runecarver
step
    .goto 634,61.4,47.17
    .isInScenario 944
    >>Kill |cRXP_ENEMY_Aspiring Helarjar|r
    .scenario 1889,1,1 --Kill the leader of the attackers
    .mob Aspiring Helarjar
step
    .isInScenario 944
    .goto 634,61.35,48.52
    >>Kill |cRXP_ENEMY_Necromantic Mystic|r
    .scenario 1943,1,1 --Kill the mystics and reach the docks
    .mob Necromantic Mystic
step
    .isInScenario 944
    .goto 634,60.03,47.45
    >>Kill |cRXP_ENEMY_Necromantic Mystic|r
    .scenario 1943,1,2 --Kill the mystics and reach the docks
    .mob Necromantic Mystic
step
    .isInScenario 944
    .goto 634,59.37,46.7,15,0
    .goto 634,58.9,46.81
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rune|r
    .scenario 1891,1,1 --Destroy the Prison Runestones
step
    .isInScenario 944
    .goto 634,58.61,46.15,15,0
    .goto 634,58.63,45.76
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rune|r
    .scenario 1891,1,2 --Destroy the Prison Runestones
step
    .isInScenario 944
    .goto 634,59,44.47,15,0
    .goto 634,58.62,43.54
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rune|r
    .scenario 1891,1,3 --Destroy the Prison Runestones
step
    .isInScenario 944
    .goto 634,59.37,43.61,15,0
    .goto 634,60.03,43.23,15,0
    .goto 634,60.13,42.07
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rune|r
    .scenario 1891,1,4 --Destroy the Prison Runestones
step
    .goto 634,59.54,43.82
    .isInScenario 944
    >>Defeat |cRXP_ENEMY_Vigfus Bladewind|r |cRXP_WARN_don't oneshot him|r.
    *|cRXP_WARN_If the npcs gets stuck; relog|r
    .scenario 1912,1 --Defeat Vigfus Bladewind
    .mob Vigfus Bladewind
step
    .isInScenario 944
    .goto 694/1220,1705.2569,3440.3982
    .goto 694/1511,1705.2569,3440.3982,20 >>Defeat |cRXP_ENEMY_Vigfus Bladewind|r |cRXP_WARN_again|r.
step
    .isInScenario 944
    .goto 694/1220,1799.2506,3515.4520
    .goto 694/1511,1799.2506,3515.4520
    >>|cRXP_WARN_Wait for the Roleplay|r
    >>Kill |cRXP_ENEMY_Vigfus Bladewind|r.
    .scenario 1913,1 --Chase and kill Vigfus
    .mob Vigfus Bladewinds
step
    .goto 694/1220,1799.2506,3515.4520
    .goto 694/1511,1799.2506,3515.4520
    .isInScenario 944
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Weapon|r
    .scenario 1914,1 --Take the Warswords
    .complete 40043,2 --1/1 Deal with Vigfus Bladewind and his warband
step
    >>Leave the Instance(Right-Click your player frame) or press the macro.
    .complete 40043,3 --1/1 Return to Skyhold
    .macro Leave Instance,236367 >> /run C_PartyInfo.LeaveParty()
step
    .goto 695,58.35,84.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Odyn|r
    .turnin 40043 >>Turn in The Hunter of Heroes
    .target Odyn
]])
--Protection
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Warrior Protection
#displayname Artifact Weapon: Protection
#next ac) Order Hall Warrior


step
    #completewith Champion: Archmage Modera
    #hidewindow
    +test
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    .openitem 237812 -- Cache of Infinite Treasure
    .openitem 243373 -- Timerunner's Weaponry
    .openitem 246814 -- Bronze Cache
    .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 43949
    .isQuestAvailable 44417
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Odyn|r
    .accept 44417 >>Accept One More Legend
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 43949
    .isQuestAvailable 44417
    .isOnQuest 44417
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Odyn|r
    .target Odyn
    .complete 44417,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 45058 -- I'm ready to make a decision.
    .skipgossipid 45058
    .choose 1389406
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 43949
    .isQuestAvailable 44417
    .isQuestComplete 44417
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Odyn|r
    .turnin 44417 >>Turn in One More Legend
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Odyn|r
    .accept 43949 >>Accept More Weapons of Legend
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .isOnQuest 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Odyn|r
    .target Odyn
    .complete 43949,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 45058
    .skipgossipid 45058
    .choose 1389406
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .isQuestComplete 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Odyn|r
    .turnin 43949 >>Turn in More Weapons of Legend
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestAvailable 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Odyn|r
    .accept 40579,1 >>Accept Weapons of Legend
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestAvailable 40579
    .isOnQuest 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Odyn|r
    .complete 40579,1 --1/1 Artifact weapon chosen
    .skipgossipid 45058
    .skipgossipid 45058
    .choose 1389406
step
    .subzoneskip 13637,1
    .isQuestComplete 40579
    .isQuestAvailable 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Odyn|r
    .turnin 40579,1 >>Turn in Weapons of Legend
    .target Odyn
step
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Odyn|r
    .accept 39191 >>Accept Legacy of the Icebreaker
    .target Odyn
step
    .isOnQuest 39191
    .goto 695,59.35,26.3
    .gossipoption 44315 >>Talk to |cRXP_FRIENDLY_Hruthnir|r
    .timer 20,RP
step
    .goto 695,56.06,27.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Durnolf|r
    .accept 44255 >>Accept Axe and You Shall Receive
    .target Quartermaster Durnolf
step
    .goto 695,56.06,27.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Durnolf|r
    .turnin 44255 >>Turn in Axe and You Shall Receive
    .target Quartermaster Durnolf
step
    .goto 695,59.36,25.30
    >>|cRXP_WARN_Wait for the Roleplay|r
    .complete 39191,1,1 --1/1 Speak with Hruthnir
    .skipgossipid 44315
    .target Hruthnir
step
    #completewith Pillik
    .isOnQuest 39191
    +|cRXP_WARN_You can skyride here|r.
step
    .goto 634,84.34,9.52
    .isOnQuest 39191
    >>Kill |cRXP_ENEMY_Pillik|r
    .scenario 1856,1 --Defeat Pillik
    .timer 50,RP
    .mob Pillik
step
    #label Pillik
    .goto 634,83.85,9.5
    .countdown 50
step
    #completewith next
    #label Find Magnar
    .isInScenario 909
    >>Kill |cRXP_ENEMY_Swirling Storms|r on the door.
    .scenario 1829,1 --Find Magnar
    .mob Swirling Storms
step
    #completewith Find Magnar
    *|cRXP_WARN_Wait for the Door to open|r.
    .goto 635,64.31,55.79,10,0
    .goto 635,53.54,56.17,15 >>Kill |cRXP_ENEMY_Spectral Windshaper|r to get rid of the winds.
    .usespell 57755
    .mob Spectral Windshaper
step
    #requires Find Magnar
    .goto 635,52.31,63.89
    .isInScenario 909
    >>Kill |cRXP_ENEMY_Swirling Storms|r on the door.
    .scenario 1829,1 --Find Magnar
    .timer 30,RP
step
    #completewith next
    #label Hruthnir
    .isInScenario 909
    >>Kill |cRXP_ENEMY_Magnar Icebreaker|r and the waves of enemies.
    .scenario 1830,1 --Defend Hruthnir
    .mob Magnar Icebreaker
    .mob Icebreaker Champion
    .mob Icebreaker Tombguard
    .mob Spectral Windshaper
step
    #completewith Hruthnir
    .goto 635,51.4,71.07
    .gossipoption 44546 >>Talk to |cRXP_FRIENDLY_Hruthnir|r
    .timer 85,RP
    .target Hruthnir
step
    #requires Hruthnir
    .goto 635,50.59,87.12
    .isInScenario 909
    >>Defeat |cRXP_ENEMY_Magnar Icebreaker|r and the waves of enemies.
    *Kill |cRXP_ENEMY_Spectral Windshaper|r to get rid of the winds.
    .scenario 1830,1 --Defend Hruthnir
    .mob Magnar Icebreaker
    .mob Icebreaker Champion
    .mob Icebreaker Tombguard
    .mob Spectral Windshaper
step
    .isInScenario 909
    .goto 635,50.12,82.45
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .scenario 1869,1
    .mob Magnar Icebreaker
    .mob Spectral Windshaper
step
    .goto 635,49.95,82.61
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Weapon|r
    .complete 39191,2 --1/1 Deal with Magnar Icebreaker
    -- .scenario 1833,1
step
    .goto 635,49.95,82.61
    >>Use the |cRXP_WARN_ExtraActionButton|r
    .complete 39191,3 --1/1 Take Odyn's portal back to Skyhold
    .usespell 192085
step
    .goto 695,58.35,84.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Odyn|r
    .turnin 39191 >>Turn in Legacy of the Icebreaker
    .target Odyn
]])
--Arms 2
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Artifact Weapon: Arms
#displayname Artifact Weapon: Arms
#next ac) Order Hall Warrior Part 2

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Arms
]])
--Fury 2
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Artifact Weapon: Fury
#displayname Artifact Weapon: Fury
#next ac) Order Hall Warrior Part 2

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Fury
]])
--Protection 2
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Artifact Weapon: Warrior Protection
#displayname Artifact Weapon: Protection
#next ac) Order Hall Warrior Part 2

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Warrior Protection
]])
--Warrior Intro 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) Order Hall Warrior Part 1
#displayname |cFF00CCFF1|r - Order Hall Intro 1|r
#next ab) Order Hall Warrior Part 2

step
    #include RestedXP Legion Remix\ab) Order Hall Warrior Part 1
]])
--Warrior Intro 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name ab) Order Hall Warrior Part 2
#displayname |cFF00CCFF2|r - Order Hall Intro 2|r
#next ac) Order Hall Warrior


step
    #include RestedXP Legion Remix\ac) Order Hall Warrior Part 2
]])


-- --------- Random ---------

-- Order Hall Infinite Bazaar Portal
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Protection22222222
#displayname Artifact Weapon: Protection222222222
#internal

step << Paladin
    .goto 23,73.06,54.03
    .zone 619 >>Click Portal
step << Rogue
    .goto 17,39.5,36.47
    .zone 619 >>Click Portal
]])

-- Trial of Valor Questline
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artifact Weapon: Protection22222222233333333333
#displayname Artifact Weapon: Protection2222222222222222223
#internal


step
    .goto 627,73.94,41.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muninn|r
    .accept 44720 >>Accept A Call to Action
    .target Muninn
step
    .goto 634,60.15,50.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Havi|r
    .turnin 44720 >>Turn in A Call to Action
    .target Havi
    .accept 44771 >>Accept A Threat Rises
step
    .goto 634,60.23,50.88
    .complete 44771,1 --1/1 Brought Havi Grog
step
    .goto 634,60.17,50.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Havi|r
    .turnin 44771 >>Turn in A Threat Rises
    .target Havi
    .accept 44721 >>Accept Helya's Conquest
step
    .goto 634,57.31,46.52
    .complete 44721,1 --1/1 Investigate Tideskorn Harbor
step
    .goto 634,55.97,41.05
    >>Kill |cRXP_ENEMY_Vagnhild|r
    .complete 44721,3 --1/1 Vagnhild slain
    .mob Vagnhild
step
    .goto 634,55.99,40.32
    >>Kill |cRXP_ENEMY_Helarjar Soulthief|r
    .complete 44721,2 --4/4 Helarjar Soulthief slain
    .mob Helarjar Soulthief
step
    .goto 634,60.15,50.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Havi|r
    .complete 44721,4 --1/1 Speak with Havi
    .target Havi
step
    .goto 634,60.14,50.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Havi|r
    .turnin 44721 >>Turn in Helya's Conquest
    .target Havi
    .accept 44729 >>Accept Trial of Valor: Odyn's Favor
    .complete 40072,1 --1/1 Claim the Aegis of Aggramar
    .complete 40072,2 --1/1 Odyn defeated
    .accept 43349 >>Accept The Aegis of Aggramar.complete 42733,1 --15/15 Sovereign Soul
]])
