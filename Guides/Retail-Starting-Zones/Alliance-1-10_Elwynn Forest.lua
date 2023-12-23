RXPGuides.RegisterGuide([[
#df
#version 2
#group RestedXP Starting Zones
#subgroup Human Starting Zones
#group weight 9
#name A-Northshire Valley
#displayname Chapter 1 - Northshire Valley
#next B-Elwynn Forest
#defaultfor Human

<<Alliance !DK

step
    #completewith next
    +Welcome to the Human Starting Zone Guide of RestedXP.
    +It's highly recommended to |cRXP_WARN_NOT|r level |cFFfa9602in the Human Starting Zone|r and instead choose |cFFfa9602Exile's Reach|r for faster leveling.
    *|cFFfa9602The Human Starting Experience|r requires a lot of experience from Rares and Treasure to be equally efficient.
step
    .goto 425,33.5,53.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .accept 31139 >>Accept Beating Them Back! << Death Knight/Monk/Druid
    .accept 28757 >>Accept Beating Them Back! << Mage
    .accept 28762 >>Accept Beating Them Back! << Paladin
    .accept 28763 >>Accept Beating Them Back! << Priest
    .accept 28764 >>Accept Beating Them Back! << Rogue
    .accept 28765 >>Accept Beating Them Back! << Warlock
    .accept 28766 >>Accept Beating Them Back! << Warrior
    .accept 28767 >>Accept Beating Them Back! << Hunter
    .target Marshal McBride
 step
    .goto 425,28.60,43.57,30,0
    .goto 425,24.71,49.27,30,0
    .goto 425,24.36,38.88,30,0
    .goto 425,29.91,33.30,30,0
    >>Kill |cRXP_ENEMY_Wolves.|r
    .complete 31139,1 << Death Knight/Monk/Druid --6/6 Blackrock Worg slain
    .complete 28757,1 << Mage --6/6 Blackrock Worg slain
    .complete 28762,1 << Paladin --6/6 Blackrock Worg slain
    .complete 28763,1 << Priest --6/6 Blackrock Worg slain
    .complete 28764,1 << Rogue --6/6 Blackrock Worg slain
    .complete 28765,1 << Warlock --6/6 Blackrock Worg slain
    .complete 28766,1 << Warrior --6/6 Blackrock Worg slain
    .complete 28767,1 << Hunter --6/6 Blackrock Worg slain
    .target Blackrock Worg
step
    .goto 425,33.6,53.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 31139 >>Turn in Beating Them Back! << Death Knight/Monk/Druid
    .turnin 28757 >>Turn in Beating Them Back! << Mage
    .turnin 28762 >>Turn in Beating Them Back! << Paladin
    .turnin 28763 >>Turn in Beating Them Back! << Priest
    .turnin 28764 >>Turn in Beating Them Back! << Rogue
    .turnin 28765 >>Turn in Beating Them Back! << Warlock
    .turnin 28766 >>Turn in Beating Them Back! << Warrior
    .turnin 28767 >>Turn in Beating Them Back! << Hunter
    .accept 31140 >> Accept Lions for Lambs << Death Knight/Monk/Druid
    .accept 28769 >> Accept Lions for Lambs << Mage
    .accept 28759 >> Accept Lions for Lambs << Hunter
    .accept 28770 >> Accept Lions for Lambs << Paladin
    .accept 28771 >> Accept Lions for Lambs << Priest
    .accept 28772 >> Accept Lions for Lambs << Rogue
    .accept 28773 >> Accept Lions for Lambs << Warlock
    .accept 28774 >> Accept Lions for Lambs << Warrior
    .target Marshal McBride
step
    .goto 425,28.60,43.57,30,0
    .goto 425,24.71,49.27,30,0
    .goto 425,24.36,38.88,30,0
    .goto 425,29.91,33.30,30,0
    .goto 425,28.60,43.57
    >>Kill |cRXP_ENEMY_Blackrock Spies.|r
    .complete 31140,1 << Death Knight/Monk/Druid --8/8 Blackrock Spy slain
    .complete 28769,1 << Mage --8/8 Blackrock Spy slain
    .complete 28759,1 << Hunter --8/8 Blackrock Spy slain
    .complete 28770,1 << Paladin --8/8 Blackrock Spy slain
    .complete 28771,1 << Priest --8/8 Blackrock Spy slain
    .complete 28772,1 << Rogue --8/8 Blackrock Spy slain
    .complete 28773,1 << Warlock --8/8 Blackrock Spy slain
    .complete 28774,1 << Warrior --8/8 Blackrock Spy slain
    .target Blackrock Spy
step
    .goto 425,33.5,53.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 31140 >>Turn in Lions for Lambs << Death Knight/Monk/Druid
    .turnin 28769 >>Turn in Lions for Lambs << Mage
    .turnin 28759 >>Turn in Lions for Lambs << Hunter
    .turnin 28770 >>Turn in Lions for Lambs << Paladin
    .turnin 28771 >>Turn in Lions for Lambs << Priest
    .turnin 28772 >>Turn in Lions for Lambs << Rogue
    .turnin 28773 >>Turn in Lions for Lambs << Warlock
    .turnin 28774 >>Turn in Lions for Lambs << Warrior
    .accept 31143 >>Accept Join the Battle! << Death Knight/Monk/Druid
    .accept 28780 >>Accept Join the Battle! << Hunter
    .accept 28784 >>Accept Join the Battle! << Mage
    .accept 28785 >>Accept Join the Battle! << Paladin
    .accept 28786 >>Accept Join the Battle! << Priest
    .accept 28787 >>Accept Join the Battle! << Rogue
    .accept 28788 >>Accept Join the Battle! << Warlock
    .accept 28789 >>Accept Join the Battle! << Warrior
    .target Marshal McBride
step
    .goto 425,35.7,39.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Willem|r
    .turnin 31143 >>Turn in Join the Battle! << Death Knight/Monk/ Druid
    .turnin 28780 >>Turn in Join the Battle! << Hunter
    .turnin 28784 >>Turn in Join the Battle! << Mage
    .turnin 28785 >>Turn in Join the Battle! << Paladin
    .turnin 28786 >>Turn in Join the Battle! << Priest
    .turnin 28787 >>Turn in Join the Battle! << Rogue
    .turnin 28788 >>Turn in Join the Battle! << Warlock
    .turnin 28789 >>Turn in Join the Battle! << Warrior
    .accept 28791 >>Accept They Sent Assassins << Hunter
    .accept 28792 >>Accept They Sent Assassins << Mage
    .accept 28793 >>Accept They Sent Assassins << Paladin
    .accept 28794 >>Accept They Sent Assassins << Priest
    .accept 28795 >>Accept They Sent Assassins << Rogue
    .accept 28796 >>Accept They Sent Assassins << Warlock
    .accept 28797 >>Accept They Sent Assassins << Warrior
    .accept 31144 >>Accept They Sent Assassins << Death Knight/Monk/Druid
    .target Sergeant Willem
step
    .goto 425,34.89,38.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Paxton|r.
    .accept 63447 >>Accept Fear No Evil << Death Knight/Monk/Druid
    .accept 28806 >>Accept Fear No Evil << Hunter
    .accept 28813 >>Accept Fear No Evil << Warrior
    .accept 28808 >>Accept Fear No Evil << Mage
    .accept 28809 >>Accept Fear No Evil << Paladin
    .accept 28810 >>Accept Fear No Evil << Priest
    .accept 28811 >>Accept Fear No Evil << Rogue
    .accept 28812 >>Accept Fear No Evil << Warlock
    .target Brother Paxton
step
    #completewith Area1
    .goto 425,31.6,16.76,25 >> |cRXP_WARN_Old World Enemy Rares and Treasure Chests reward as much as 1 or 2 Quests!|r
    *Check for |cRXP_ENEMY_Gug Fatcandle(Rare)|r |cFFfa9602near the mine.|r
	.unitscan Gug Fatcandle
step
    .goto 425,36.55,31.33,30,0
    .goto 425,31.68,31.4,30,0
    .goto 425,31.6,16.76,20,0
    .goto 425,36.55,31.33
    >>Kill |cRXP_ENEMY_Goblins|r and |TInterface/cursor/crosshair/interact.blp:20|tinteract with |cRXP_FRIENDLY_Injured Soldier.|r
    .complete 28791,1 << Hunter --8/8 Goblin Assassin slain
    .complete 28792,1 << Mage --8/8 Goblin Assassin slain
    .complete 28793,1 << Paladin --8/8 Goblin Assassin slain
    .complete 28794,1 << Priest --8/8 Goblin Assassin slain
    .complete 28795,1 << Rogue --8/8 Goblin Assassin slain
    .complete 28796,1 << Warlock --8/8 Goblin Assassin slain
    .complete 28797,1 << Warrior --8/8 Goblin Assassin slain
    .complete 29081,1 << Shaman --8/8 Goblin Assassin slain
    .complete 31144,1 << Death Knight/Monk/Druid --8/8 Goblin Assassin slain
    .complete 63447,1 << Death Knight/Monk/Druid --4/4 Injured Soldier revived
    .complete 28806,1 << Hunter --4/4 Injured Soldier revived
    .complete 28813,1 << Warrior --4/4 Injured Soldier revived
    .complete 28808,1 << Mage --4/4 Injured Soldier revived
    .complete 28809,1 << Paladin --4/4 Injured Soldier revived
    .complete 28810,1 << Priest --4/4 Injured Soldier revived
    .complete 28811,1 << Rogue --4/4 Injured Soldier revived
    .complete 28812,1 << Warlock --4/4 Injured Soldier revived
    .target Injured Soldier
    .target Goblin Assassin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Paxton|r.
    .goto 425,35.44,37.82
    .turnin 63447 >>Turn in Fear No Evil << Death Knight/Monk/Druid
    .turnin 28806 >>Turn in Fear No Evil << Hunter
    .turnin 28813 >>Turn in Fear No Evil << Shaman
    .turnin 28808 >>Turn in Fear No Evil << Mage
    .turnin 28809 >>Turn in Fear No Evil << Paladin
    .turnin 28810 >>Turn in Fear No Evil << Priest
    .turnin 28811 >>Turn in Fear No Evil << Rogue
    .turnin 28812 >>Turn in Fear No Evil << Warlock
    .turnin 29082 >>Turn in Fear No Evil << Warrior
    .target Brother Paxton
step
    .goto 425,35.7,39.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Willem|r
    .turnin 31144 >>Turn in They Sent Assassins << Death Knight/Monk/Druid
    .turnin 28791 >>Turn in They Sent Assassins << Hunter
    .turnin 28792 >>Turn in They Sent Assassins << Mage
    .turnin 28793 >>Turn in They Sent Assassins << Paladin
    .turnin 28794 >>Turn in They Sent Assassins << Priest
    .turnin 28795 >>Turn in They Sent Assassins << Rogue
    .turnin 28796 >>Turn in They Sent Assassins << Warlock
    .turnin 28797 >>Turn in They Sent Assassins << Warrior
    .accept 31145 >>Accept The Rear is Clear << Death Knight/Monk/Druid
    .accept 28817 >>Accept The Rear is Clear << Hunter
    .accept 28818 >>Accept The Rear is Clear << Mage
    .accept 28819 >>Accept The Rear is Clear << Paladin
    .accept 28820 >>Accept The Rear is Clear << Priest
    .accept 28821 >>Accept The Rear is Clear << Rogue
    .accept 28822 >>Accept The Rear is Clear << Warlock
    .accept 28823 >>Accept The Rear is Clear << Warrior
    .target Sergeant Willem
 step
    .goto 425,33.5,53.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 31145 >>Turn in The Rear is Clear << Death Knight/Monk/Druid
    .turnin 28817 >>Turn in The Rear is Clear << Hunter
    .turnin 28818 >>Turn in The Rear is Clear << Mage
    .turnin 28819 >>Turn in The Rear is Clear << Paladin
    .turnin 28820 >>Turn in The Rear is Clear << Priest
    .turnin 28821 >>Turn in The Rear is Clear << Rogue
    .turnin 28822 >>Turn in The Rear is Clear << Warlock
    .turnin 28823 >>Turn in The Rear is Clear << Warrior
    .accept 26389 >>Accept Blackrock Invasion
    .target Marshal McBride
step
    .goto 425,33.4,54.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milly Osworth|r
    .accept 26391 >>Accept Extinguishing Hope
    .target Milly Osworth
step
    #completewith next
    +|cRXP_WARN_To enable keybinding for quest items, follow these steps:|r
    *[1] Press the |cRXP_WARN_Escape key.|r
    *[2] Select |cRXP_WARN_Options.|r
    *[3] Navigate to |cRXP_WARN_Keybindings.|r
    *[4] Within |cRXP_WARN_Keybindings|r, find |cRXP_WARN_RestedXP Guides.|r
    *[5] Select and bind the |cRXP_WARN_Active Buttons.|r
step
    .goto 425,48.99,77.06,30,0
    .goto 425,54.01,82.27,30,0
    .goto 425,57.57,76.36,30,0
    .goto 425,53.97,71.43,30,0
    .goto 425,48.99,77.06
    >>Use the |T967530:0|t[Fire Extinguisher] near an open Fire
    >>Kill |cRXP_ENEMY_Orcs|r and loot them for |cRXP_LOOT_Blackrock Orc Weapon|r
    >>|cRXP_WARN_Try to get low health as you near completing the quest, we're deathskipping after.|r
    .complete 26389,1 --8/8 Blackrock Orc Weapon
    .complete 26391,1 --8/8 Vineyard Fire extinguished
    .use 58362
    .target Blackrock Invader
step
    #completewith next
    >>|cRXP_WARN_Repeated use of /sit or removing your gear increases the damage you take.|r
    .deathskip >> Pull as many Enemies as you can, Die, Release and Respawn at the Graveyard
step
    .goto 425,33.4,54.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 26391 >>Turn in Extinguishing Hope
    .target Milly Osworth
step
    .goto 425,33.57,53.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 26389 >>Turn in Blackrock Invasion
    .accept 26390 >>Accept Ending the Invasion!
    .target Marshal McBride
step
    .goto 425,65.04,48.37
    >>Kill |cRXP_ENEMY_Kurtok.|r
    .complete 26390,1 --1/1 Kurtok the Slayer slain
    .target Kurtok the Slayer
step
    #completewith next
    >>|cRXP_WARN_Repeated use of /sit or removing your gear increases the damage you take.|r
    .deathskip >> Pull as many Enemies as you can, Die and Respawn at the Graveyard|cRXP_WARN_(skip this if no enemies are to be seen)|r
step
    .goto 425,33.5,53.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 26390 >>Turn in Ending the Invasion!
    .target Marshal McBride
step
    .goto 425,33.5,53.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .accept 54 >>Accept Report to Goldshire
    .target Marshal McBride
step << Human
    .goto 425,29.12,72.38,8,0
    .goto 37,45.37,49.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falkhaan|r
    .accept 37112 >>Accept Rest and Relaxation
    .target Falkhaan
]])

RXPGuides.RegisterGuide([[
#df
#version 2
#group RestedXP Starting Zones
#subgroup Human Starting Zones << Human
#subgroup Allied Race DK << KulTiran DK/DarkIronDwarf DK/LightforgedDraenei DK/Mechagnome DK/VoidElf DK/Pandaren DK
#displayname Chapter 2 - Elwynn Forest
#name B-Elwynn Forest
#next Alliance 10-60\2A_Redridge Mountains
#defaultfor Human/KulTiran DK/DarkIronDwarf DK/LightforgedDraenei DK/Mechagnome DK/VoidElf DK/Pandaren DK

<< Alliance


step
    #veteran
    .goto 84,61.11,70.6
    +The Darkmoon Faire event is now active, |cRXP_WARN_which guarantees you to gain an additional level for free and a temporary 10% experience boost.|r You'll need to purchase |cRXP_WARN_certain items from the auction house to take full advantage of this.|r If necessary,|cRXP_WARN_you can transfer gold from your other characters to make these purchases.|r However, if you find that you can't afford everything, |cRXP_WARN_It's still worthwhile to visit the Darkmoon Faire for the temporary experience buff and to buy only some of the items.|r
    >>|cRXP_WARN_It is recommended to log in with a different character possessing at least 10,000 gold. Use this character to purchase the items and then send them over.|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Auctioneer Fitch|r
    .collect 71715,1
    .collect 71638,1
    .collect 71637,1
    .collect 71636,1
    .collect 71635,1
    .collect 71952,1
    .collect 71951,1
    .collect 71953,1
    .collect 71716,1
    .target Auctioneer Fitch
    .target Auctioneer Jaxon
    .target Auctioneer Chilton
    .dmf
step
    #fresh
    +The Darkmoon Faire event is now active, |cRXP_WARN_which guarantees you to gain an additional level for free and a temporary 10% experience boost.|r
    .dmf
step
    .goto 37,43.10,52.17
    >>|cRXP_WARN_Repeated use of /sit or removing your gear increases the damage you take.|r
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .isOnQuest 37112
step
    .goto 37,41.71,64.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartlett the Brave|r
    .fp Goldshire >> Get the Goldshire Flight Path
	.target Bartlett the Brave
    .isOnQuest 37112
step
    .goto 37,42.11,65.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 54 >>Turn in Report to Goldshire
    .accept 62 >>Accept The Fargodeep Mine
    .accept 26378 >>Accept Hero's Call: Westfall!
	.target Marshal Dughan
    .isQuestTurnedIn 26390
step
    .goto 37,41.71,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smith Argus|r
    .accept 26393 >>Accept A Swift Message << Human
	.target Smith Argus
    .isQuestTurnedIn 26390
step
    .goto 37,41.71,64.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartlett the Brave|r
	.turnin 26393 >>Turn in A Swift Message << Human
    .accept 26394 >>Accept Continue to Stormwind<< Human
	.target Bartlett the Brave
    .isQuestTurnedIn 26390
step
    .goto 37,43.19,65.74,5,0
    .goto 37,43.26,66.1,5,0
    .goto 37,43.32,65.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Pestle|r
    .accept 60 >>Accept Kobold Candles
	.target William Pestle
    .isQuestTurnedIn 26390
step
    #veteran
    #completewith Cooking
    .goto 37,43.77,65.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Farley|r. Buy |T132789:0|t[Moonberry Juice] from him.
    .turnin 37112 >>Turn in Rest and Relaxation
    .collect 1645,5,29506,1 --Moonberry Juice (5)
    .home >>Set your Hearthstone to Lion's Pride Inn
	.target Innkeeper Farley
    .isQuestTurnedIn 26390
    .dmf
step
    .goto 37,43.77,65.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Farley|r
    .turnin 37112 >>Turn in Rest and Relaxation
    .home >>Set your Hearthstone to Lion's Pride Inn
	.target Innkeeper Farley
    .isQuestTurnedIn 26390
step
    #veteran
    #label Cooking
    .goto 37,44.37,65.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tomas|r
    .train 2550 >> Train Cooking
	.target Tomas
    .isQuestTurnedIn 26390
    .dmf
step
    .goto 37,42.14,67.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remy "Two Times"|r
    .accept 40 >>Accept A Fishy Peril
    .accept 47 >>Accept Gold Dust Exchange
	.target Remy "Two Times"
    .isQuestTurnedIn 26390
step
    #veteran
    .goto 37,41.95,67.16
    .train 2259 >> Train |T4620669:0|tAlchemy from |cRXP_FRIENDLY_Lien Farmer|r
	.skipgossip 47384,2,1,1
	.target Lien Farmer
    .isQuestTurnedIn 26390
    .dmf
step
    #veteran
    .goto 37,41.95,67.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farmer|r
    .train 45357 >> Train |T4620676:0|tInscription
	.skipgossip 47384,3,6,2
	.target Lien Farmer
    .isQuestTurnedIn 26390
    .dmf
step
    #veteran
    .goto 37,41.89,67.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharynn Bouden|r. Buy the following items from him:
    .collect 2604,1,29520,1 --Red Dye (1)
    .collect 6260,1,29520,1 --Blue Dye (1)
    .collect 2320,1,29520,1 --Coarse Thread (1)
    .collect 30817,5,29509,1 --Simple Flour (5)
    .collect 39354,5,29515,1 --Light Parchment (1)
	.target Tharynn Bouden
    .isQuestTurnedIn 26390
    .dmf
step
    .goto 37,43.2,65.99,5,0
    .goto 37,43.2,65.63,5,0
    .goto 37,42.9,65.7,5,0
    .goto 37,41.78,69.55
    .zone 407 >>Take the |cRXP_PICK_Darkmoon Faire Portal|r |cFFfa9602to the Darkmoon Island.|r
    .dmf
step
    #completewith next
    +|TInterface/cursor/crosshair/interact.blp:20|tInteract with the |cRXP_FRIENDLY_Strider.|r |cRXP_WARN_only if you don't have a level 1 mount.|r
    .dmf
step
    #veteran
    .goto 407,51.57,24.84,10,0
    .goto 407,55.83,53.02,15,0
    .goto 407,50.44,59.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kae Ti|r and buy a |T133734:0|t[Ride Ticket Book] from her.
    *|cRXP_WARN_buy the cheaper version |cFFfa9602on the left in the window|r|r
    .collect 92788,1,92794,1 --Ride Ticket Book (1)
	.target Kae Ti
    .dmf
step
    #completewith next
    .goto 407,49.45,57.5
    .cast 107829 >> |cRXP_WARN_Open Ride Ticket Book|r
    .dmf
    .use 92788
    .use 92794
step
	#veteran
    .goto 407,49.45,57.5
    >>|cRXP_WARN_Stand on the Carousel and |cRXP_WARN_wait for the Experience Buff to reach 60minutes|r|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the quest items in your bag |cRXP_WARN_and skip the ones you don't have)|
    --x insert macro to accept quests here
    .accept 29464 >>Accept Tools of Divination
    .accept 29451 >>Accept The Master Strategist
    .accept 29456 >>Accept A Captured Banner
    .accept 29457 >>Accept The Enemy's Insignia
    .accept 29458 >>Accept The Captured Journal
    .accept 29443 >>Accept A Curious Crystal
    .accept 29444 >>Accept An Exotic Egg
    .accept 29445 >>Accept An Intriguing Grimoire
    .accept 29446 >>Accept A Wondrous Weapon
    .zoneskip 407,1
    .dmf
step
	#fresh
    .goto 407,49.45,57.5
    >>|cRXP_WARN_Stand on the Carousel and |cRXP_WARN_wait for the Experience Buff to reach 60minutes|r|r
    .zoneskip 407,1
    .dmf
step
	#veteran
    .goto 407,51.91,60.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Professor Paleo|r
    .turnin -29464 >>Turn in Tools of Divination
    .turnin -29451 >>Turn in The Master Strategist
    .turnin -29456 >>Turn in A Captured Banner
    .turnin -29457 >>Turn in The Enemy's Insignia
    .turnin -29458 >>Turn in The Captured Journal
    .turnin -29443 >>Turn in A Curious Crystal
    .turnin -29446 >>Turn in A Wondrous Weapon
    .zoneskip 407,1
    .dmf
step
    #veteran
    .goto 407,47.76,64.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelvas Grimegate|r and buy as many |T669449:0|t[Darkmoon Top Hats] from him as you can.
    .turnin 7905 >>Turn in The Darkmoon Faire
    .collect 171364,1,29506,1 --Darkmoon Top Hat (1)
	.target Gelvas Grimegate
    .zoneskip 407,1
    .dmf
step
    #fresh
    .goto 407,47.76,64.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelvas Grimegate|r
    .turnin 7905 >>Turn in The Darkmoon Faire
	.target Gelvas Grimegate
    .zoneskip 407,1
    .dmf
step
    .goto 407,52.89,67.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stamp Thunderhorn|r
    .accept 29509 >>Accept Putting the Crunch in the Frog
	.target Stamp Thunderhorn
    .zoneskip 407,1
    .dmf
step
    .goto 407,52.88,67.96
    >>Use the |T133642:0|t[Plump Frogs] to turn them into |T237579:0|t[Breaded Frogs].
	.collect 72056,5,29509,1,-1 --Plump Frogs (5)
	.collect 30817,5,29509,1,-1 --Simple Flour (5)
	.collect 72057,5,29509,1 --Breaded Frog (5)
    .use 72056 --Plump Frog
    .zoneskip 407,1
	.dmf
	.isOnQuest 29509
step
    .goto 407,52.88,67.96
	>>Use the |T237579:0|t[Breaded Frogs] near |cRXP_FRIENDLY_Stamp Thunderhorn|r
	.collect 72057,5,29509,1,-1 --Breaded Frog (5)
    .complete 29509,1 --5/5 Crunchy Frog
	.use 72057 --Breaded Frog
    .zoneskip 407,1
    .dmf
	.isOnQuest 29509
step
    .goto 407,52.88,67.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stamp Thunderhorn|r
    .turnin 29509 >>Turn in Putting the Crunch in the Frog
	.target Stamp Thunderhorn
    .zoneskip 407,1
    .dmf
step
    .goto 407,50.54,69.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sylannia|r and buy |T132792:0|t[Fizzy Faire Drinks] from her.
    .accept 29506 >>Accept A Fizzy Fusion
    .collect 19299,5,29506,1 --Fizzy Faire Drinks (5)
	.target Sylannia
    .zoneskip 407,1
    .dmf
step
    .goto 407,50.54,69.56
    >>Use the |T132793:0|t[Cocktail Shaker] to make |T463532:0|t[Moonberry Fizz]
    .collect 1645,5,29506,1,-1 --Moonberry Juice (5)
    .collect 19299,5,29506,1,-1 --Fizzy Faire Drinks (5)
    .complete 29506,1 --5/5 Moonberry Fizz
    .use 72043 --Cocktail Shaker
    .zoneskip 407,1
    .dmf
step
    .goto 407,50.53,69.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sylannia|r
    .turnin 29506 >>Turn in A Fizzy Fusion
	.target Sylannia
    .zoneskip 407,1
    .dmf
step
    .goto 407,53.23,75.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sayge|r
    .turnin 29445 >>Turn in An Intriguing Grimoire
    .accept 29515 >>Accept Writing the Future
	.target Sayge
    .zoneskip 407,1
    .dmf
	.isOnQuest 29445
step
    .goto 407,53.23,75.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sayge|r
    .accept 29515 >>Accept Writing the Future
	.target Sayge
    .zoneskip 407,1
    .dmf
step
    .goto 407,53.23,75.82
	>>Use the |T413571:0|t[Bundle of Exotic Herbs] to make |T237061:0|t[Prophetic Ink]
	.collect 71972,1,29515,1
    .use 71971
    .zoneskip 407,1
	.dmf
	.isOnQuest 29515
step
    .goto 407,53.23,75.82
    >>Use the |T237061:0|t[Prophetic Ink] to make |T134943:0|t[Fortunes]
    .collect 39354,5,29515,1,-1 --Light Parchment
    .complete 29515,1 --5/5 Fortune
    .use 71972
    .zoneskip 407,1
	.dmf
	.isOnQuest 29515
step
    .goto 407,53.23,75.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sayge|r
    .turnin 29515 >>Turn in Writing the Future
	.target Sayge
    .skipgossip
    .zoneskip 407,1
    .dmf
step
    #veteran
    .goto 407,51.11,82.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yebb Neblegear|r
    .turnin 29444 >>Turn in An Exotic Egg
	.target Yebb Neblegear
    .zoneskip 407,1
    .dmf
	.isOnQuest 29444
step
    .goto 407,50.56,90.80
    .zone 37 >>Take the |cRXP_PICK_Darkmoon Faire Portal|r |cFFfa9602to Elwynn Forest.|r
    .zoneskip 407,1
    .dmf
step
    #completewith next
    +|cRXP_WARN_Abandon your Professions|r
    .link /run AbandonSkill(773); AbandonSkill(171); >> |cRXP_WARN_Click this text to receive a macro that will unlearn your professions.|r
    --x .skill 773,<1 >>Unlearn Inscription
    --x .skill 171,<1 >>Unlearn Alchemy
    --x add unlearn logic
    .isOnQuest 60
	.dmf
step
    >>|cRXP_WARN_Do this once you've unlearned your professions|r
    .goto 37,41.95,67.16,5 >> |cRXP_WARN_Walk to the Profession Trainer|r
    .dmf
step
    .goto 37,41.95,67.16
    .train 2366 >> Train |T4620675:0|tHerbalism from |cRXP_FRIENDLY_Lien Farmer|r
	.skipgossip 47384,1,1,1
	.target Lien Farmer
    .dmf
step
    .goto 37,41.95,67.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farmer|r
    .train 2575 >> Train |T4620679:0|tMining
	.skipgossip 47384,2,3,2
	.target Lien Farmer
    .dmf
step
	#veteran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Julia Stevens|r.
    >>|cRXP_WARN_Skip this step if you don't have level 25 Pet Battle Pets.|r
    .goto 37,41.65,83.67
    .accept 31693 >>Accept Julia Stevens
    .target Julia Stevens
    .isQuestTurnedIn 31903 --x Pet Battle Campaign Check
step
	#veteran
    >>Defeat |cRXP_ENEMY_Julia Stevens|r in a Pet Battle.
    .complete 31693,1 --Defeat Julia Stevens
    .target Julia Stevens
    .isOnQuest 31693
step
	#veteran
    .goto 37,41.66,83.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Julia Stevens|r
    .turnin 31693 >>Turn in Julia Stevens
    .target Julia Stevens
    .isQuestComplete 31693
step
    #completewith FargodeepM
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r, |cRXP_ENEMY_Miners|r and loot them for their |cRXP_LOOT_Candles|r and |cRXP_LOOT_Gold Dust.|r
    .complete 60,1 --8/8 Large Candle
    .complete 47,1 --10/10 Gold Dust
	.target Kobold Tunneler
	.target Kobold Miner
step
    >>|cRXP_WARN_Rares and Treasures reward a lot of experience! Be sure to keep an eye out for them|r
    .goto 37,38.06,83.31,40 >>Check for |cRXP_ENEMY_Narg the Taskmaster|r(Rare) |cFFfa9602outside the mine.|r
	.unitscan Narg the Taskmaster
    .isOnQuest 60
step
	#completewith next
    .goto 38,38.93,82.18,15,0
    .goto 38,44.60,63.38,15  >> |cFFfa9602Go into the upper entrance of the Fargodeep Mine.|r
step
    #label FargodeepM
    >>Run |cFFfa9602inside the mine.|r
    .goto 38,54.35,59.63
    .complete 62,1 --Scout through the Fargodeep Mine
step
    .goto 37,37.82,86.14,40,0
    .goto 37,37.89,81.45,40,0
    .goto 39,47.59,68.00,20,0
    .goto 39,60.14,82.29,20,0
    .goto 39,78.65,28.65,20,0
    .goto 39,57.67,25.29,20,0
    .goto 38,53.73,72.25,20,0
    .goto 37,37.82,86.14,40,0
    .goto 37,37.89,81.45,40,0
    .goto 39,47.59,68.00,20,0
    .goto 39,60.14,82.29,20,0
    .goto 39,78.65,28.65,20,0
    .goto 39,57.67,25.29,20,0
    .goto 38,53.73,72.25
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r, |cRXP_ENEMY_Miners|r and loot them for their |cRXP_LOOT_Candles|r and |cRXP_LOOT_Gold Dust.|r
    .complete 60,1 --8/8 Large Candle
    .complete 47,1 --10/10 Gold Dust
	.target Kobold Tunneler
	.target Kobold Miner
step
    .goto 37,34.66,84.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ma Stonefield|r
    .accept 88 >>Accept Princess Must Die!
	.target Ma Stonefield
step
    .goto 37,32.48,86.81,20,0
    .goto 37,33.41,86.16,20,0
    .goto 37,33.32,84.95,20,0
    .goto 37,32.58,84.26,20,0
    .goto 37,32.04,85.20,20,0
    .goto 37,32.48,86.81,20,0
    .goto 37,33.41,86.16,20,0
    .goto 37,33.32,84.95,20,0
    .goto 37,32.58,84.26,20,0
    .goto 37,32.04,85.20
	.line 37,32.48,86.81,33.41,86.16,33.32,84.95,32.58,84.26,32.04,85.20,32.48,86.81
    >>Kill |cRXP_ENEMY_Princess|r and loot her for her |cRXP_LOOT_Collar.|r
    .complete 88,1 --1/1 Brass Collar
	.target Princess
step
    .goto 37,34.66,84.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ma Stonefield|r
    .turnin 88 >>Turn in Princess Must Die!
	.target Ma Stonefield
step
    .goto 37,33.64,87.76,15 >>Check for the |cRXP_PICK_Chest|r |cFFfa9602inside and around the Stables.|r
    .isOnQuest 60
step
    .goto 37,30.73,64.85,40 >>Check for |cRXP_ENEMY_Morgaine the Sly|r (Rare) |cFFfa9602inside the house.|r
	.unitscan Morgaine the Sly
    .isOnQuest 60
step
    .goto 37,27.22,67.51,40 >>Check for the |cRXP_ENEMY_Grizzled Ben|r (Rare).
	.unitscan Grizzled Ben
    .isOnQuest 60
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Wanted Poster|r and |cRXP_FRIENDLY_Deputy Rainer|r
    .accept 176 >>Accept WANTED: "Hogger"
    .goto 37,24.55,74.67
    .accept 11 >>Accept Riverpaw Gnoll Bounty
    .goto 37,24.23,74.45
	.target Deputy Rainer
step
	#completewith Armbands
	+Check for |cRXP_ENEMY_Gruff Swiftbite|r (Rare) and |cRXP_PICK_Chests|r in ALL the camps.
	.unitscan Gruff Swiftbite
step
    #completewith next
    >>Kill |cRXP_ENEMY_Riverpaw Runts|r and |cRXP_ENEMY_Outrunners|r and loot them for their |cRXP_LOOT_Armbands.|r
    .complete 11,1 --8/8 Painted Gnoll Armband
	.target Riverpaw Runt
	.target Riverpaw Outrunner
step
    .goto 37,24.97,95.23
    >>Kill |cRXP_ENEMY_Hogger|r.
    >>|cRXP_WARN_DON'T wait out the RP.|r
    .complete 176,1 --1/1 Dealt with "The Hogger Situation"
step
    .goto 37,24.78,95.26
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_Westfall Deed|r on the ground.
    .accept 184 >>Accept Furlbrow's Deed
step
	#label Armbands
    .goto 37,24.36,93.65,30,0
    .goto 37,26.10,91.95,30,0
    .goto 37,25.30,88.95,30,0
    .goto 37,27.80,88.36,30,0
    .goto 37,27.67,86.21,30,0
    .goto 37,26.32,86.82,30,0
    .goto 37,24.36,93.65,30,0
    .goto 37,26.10,91.95,30,0
    .goto 37,25.30,88.95,30,0
    .goto 37,27.80,88.36,30,0
    .goto 37,27.67,86.21,30,0
    .goto 37,26.32,86.82
    >>Kill |cRXP_ENEMY_Riverpaw Runts|r and |cRXP_ENEMY_Outrunners|r and loot them for their |cRXP_LOOT_Armbands|r
    .complete 11,1 --8/8 Painted Gnoll Armband
step
	#completewith next
    .goto 37,24.36,93.65,30,0
    .goto 37,26.10,91.95,30,0
    .goto 37,25.30,88.95,30,0
    .goto 37,27.80,88.36,30,0
    .goto 37,27.67,86.21,30,0
    .goto 37,26.32,86.82,40 >>Check for |cRXP_ENEMY_Gruff Swiftbite|r(Rare) and |cRXP_PICK_Chests|r in ALL the camps.
	.unitscan Gruff Swiftbite
step
    .goto 37,24.23,74.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 11 >>Turn in Riverpaw Gnoll Bounty
	.target Deputy Rainer
step
	#veteran
    .goto 52,60.85,18.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old MacDonald|r.
    >>|cRXP_WARN_Skip this step if you don't have level 25 Pet Battle Pets.|r
    .accept 31780 >>Accept Old MacDonald
	.target Old MacDonald
    .isQuestTurnedIn 31903
step
	#veteran
    .goto 52,61.04,18.82
    >>Defeat |cRXP_ENEMY_Old MacDonald|r in a Pet Battle.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Old MacDonald
    .complete 31780,1 --Defeat Old MacDonald
	.target Old MacDonald
    .skipgossip 65648,1
    .isOnQuest 31780
step
	#veteran
    .goto 52,61.04,18.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old MacDonald|r
    .turnin 31780 >>Turn in Old MacDonald
	.target Old MacDonald
    .isQuestComplete 31780
step
    .goto 52,60.05,19.28,5,0
    .goto 52,60.18,19.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Horatio Laine|r
    .turnin 184 >>Turn in Furlbrow's Deed
    .turnin 26378 >>Turn in Hero's Call: Westfall!
    .accept 26209 >>Accept Murder Was The Case That They Gave Me
	.target Lieutenant Horatio Laine
step
    .loop 25,52,58.56,16.21,59.18,18.16,58.12,19.58,57.31,18.33,58.56,16.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Homeless Citizens|r, |cRXP_FRIENDLY_West Plains Drifters|r, and |cRXP_FRIENDLY_Transients|r for |cRXP_LOOT_Clues|r.
    >>|cRXP_WARN_Stay mounted and spam talk to them, ignore them if they turn Hostile|r
    .complete 26209,1 --1/1 Clue #1 obtained
    .complete 26209,2 --1/1 Clue #2 obtained
    .complete 26209,3 --1/1 Clue #3 obtained
    .complete 26209,4 --1/1 Clue #4 obtained
	.target Homeless Stormwind Citizen
	.target West Plains Drifter
    .target Transients
    .skipgossip 1
step
    .goto 52,60.05,19.28,5,0
    .goto 52,60.18,19.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Horatio Laine|r
    .turnin 26209 >>Turn in Murder Was The Case That They Gave Me
    .accept 26213 >>Accept Hot On the Trail: The Riverpaw Clan
	.target Lieutenant Horatio Laine
step
	#completewith Horatio
    .goto 52,56.46,13.26,30 >>Check for a |cRXP_PICK_Chest|r |cFFfa9602in the camp.|r
step
    .goto 52,58.16,10.71,40,0
    .goto 52,57.17,15.12,40,0
    .goto 52,51.38,15.89,40,0
    .goto 52,50.68,14.77,40,0
    .goto 52,56.46,13.26,40,0
    .goto 52,58.16,10.71,40,0
    .goto 52,57.17,15.12,40,0
    .goto 52,51.38,15.89,40,0
    .goto 52,50.68,14.77,40,0
    .goto 52,56.46,13.26
    >>Kill |cRXP_ENEMY_Gnolls|r and loot them for the |cRXP_LOOT_Clue.|r
    .complete 26213,1 --1/1 Riverpaw Gnoll Clue
	.target Riverpaw Scout
step
	#label Horatio
    .goto 52,60.05,19.28,5,0
    .goto 52,60.18,19.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Horatio Laine|r
    .turnin 26213 >>Turn in Hot On the Trail: The Riverpaw Clan
    .target Lieutenant Horatio Laine
step
    #completewith next
    .hs >>Hearth to Lion's Pride Inn
step
    .goto 37,43.32,65.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Pestle|r
    .turnin 60 >>Turn in Kobold Candles
    .target William Pestle
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remy "Two Times"|r and |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 47 >>Turn in Gold Dust Exchange
    .goto 37,42.14,67.25
    .turnin 62 >>Turn in The Fargodeep Mine
    .turnin 40 >>Turn in A Fishy Peril
    .accept 35 >>Accept Further Concerns
    .accept 76 >>Accept The Jasperlode Mine
    .turnin 176 >>Turn in WANTED: "Hogger"
    .goto 37,42.11,65.93
	.target Remy "Two Times"
	.target Marshal Dughan
	.isOnQuest 40
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remy "Two Times"|r and |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 47 >>Turn in Gold Dust Exchange
    .goto 37,42.14,67.25
    .turnin 62 >>Turn in The Fargodeep Mine
    .accept 35 >>Accept Further Concerns
    .accept 76 >>Accept The Jasperlode Mine
    .turnin 176 >>Turn in WANTED: "Hogger"
    .goto 37,42.11,65.93
	.target Remy "Two Times"
	.target Marshal Dughan
step
    .goto 37,41.69,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andrew Krighton|r
	.vendor >>Vendor and Repair
    .isOnQuest 35
	.target Andrew Krighton
step
    .goto 37,52.25,62.90,40 >>Check for |cRXP_ENEMY_Lamepaw the Whimperer|r(Rare) and kill him.
	.unitscan Lamepaw the Whimperer
    .isOnQuest 35
step
    .goto 37,57.49,64.61,45 >> |cRXP_WARN_Scan the murloc islands with your mouse for a|r |cRXP_PICK_Chest|r. Your mouse will become a |TInterface/cursor/crosshair/interact.blp:20|tgear icon if there's a |cRXP_PICK_Chest|r. If you find one, kill the |cRXP_ENEMY_Murlocs|r protecting it and loot it.
    .isOnQuest 35
step
    .goto 37,66.51,63.83,40 >> Check for |cRXP_ENEMY_Tarantis|r(Rare).
	.unitscan Tarantis
    .isOnQuest 35
step
    .goto 37,64.7,56.73,30 >>Check for the |cRXP_PICK_Chest|r |cFFfa9602in the Kobold Camp.|r
    .isOnQuest 35
step
    .goto 37,61.70,53.83,20 >> Enter the |cFFfa9602Jasperlode Mine.|r
    .isOnQuest 35
step
    .goto 40,45.11,67.29,20,0
    .goto 40,38.43,61.58,20,0
    .goto 40,37.01,50.26
    >>Keep following |cFFfa9602the middle path inside the mine.|r
    .complete 76,1 --Scout through the Jasperlode Mine
step
	.goto 40,31.02,37.51,20,0
    .goto 40,37.01,50.26,20,0
    .goto 40,47.25,36.66,20,0
    .goto 40,53.93,30.58,20,0
    .goto 40,45.14,21.76,20 >>Check for |cRXP_ENEMY_Mother Fang|r(Rare) |cFFfa9602at the back of the cave.|r
	.unitscan Mother Fang
    .isOnQuest 35
step
    .isOnQuest 35
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Thomas|r and the |cRXP_FRIENDLY_Bounty Board|r
    .turnin 35 >>Turn in Further Concerns
    .accept 37 >>Accept Find the Lost Guards
    .accept 52 >>Accept Protect the Frontier
    .goto 37,73.97,72.18
    .accept 46 >>Accept Bounty on Murlocs
    .accept 26152 >>Accept WANTED: James Clark
    .goto 37,74.03,72.31
	.target Guard Thomas
step
    #completewith next
    >>Kill |cRXP_ENEMY_Prowlers|r and |cRXP_ENEMY_Young Forest Bears|r.
    >>|cRXP_WARN_Prioritize the |cRXP_ENEMY_Bears|r|r
    .complete 52,1 --8/8 Prowler or Forest Wolf slain
    .complete 52,2 --5/5 Young Forest Bear slain
	.target Prowler
	.target Young Forest Bear
step
    .goto 37,82.95,84.82,40 >> Check for |cRXP_ENEMY_Bushtail|r.
    .isOnQuest 52
	.unitscan Bushtail
step
	#completewith next
	>>Kill |cRXP_ENEMY_Murlocs|r and loot them for their |cRXP_LOOT_Fins|r
    .complete 46,1,4 --8/8 Torn Murloc Fin
	.target Murloc Lurker
	.target Murloc Forager
step
    .goto 37,75.71,86.29,30,0
    .goto 37,77.55,85.75
    .deathskip >> Kill|cRXP_ENEMY_Murlocs|r and loot them for their |cRXP_LOOT_Fins|r |cRXP_WARN_while dying to them|r then respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .isOnQuest 46
step
    .goto 37,83.28,66.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rallic Finn|r
    .vendor 1198 >>Vendor and Repair
	.target Rallic Finn
	.isOnQuest 52
step
    .goto 37,79.46,68.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Timberlain|r
    .accept 83 >>Accept Fine Linen Goods
	.target Sara Timberlain
step
    .goto 37,78.87,67.20,10,0
    .goto 37,78.61,67.08
    >>Kill |cRXP_ENEMY_James|r and loot him for his |cRXP_LOOT_Head|r and |cRXP_LOOT_Schedule.|r
    .complete 26152,1 --1/1 James Clark's Head
	.collect 1307,1,123,1 --Gold Pickup Schedule (1)
    .accept 123 >>Accept The Collector
	.target James Clark
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Supervisor Raelen|r and |cRXP_FRIENDLY_Marshal Patterson|r
    .accept 5545 >>Accept A Bundle of Trouble
    .goto 37,81.38,66.11
    .turnin 123 >>Turn in The Collector
    .accept 147 >>Accept Manhunt
    .turnin 26152 >>Turn in WANTED: James Clark
    .goto 37,81.86,66.04
	.target Supervisor Raelen
	.target Marshal Patterson
step
    #completewith Bundles
    >>Kill |cRXP_ENEMY_Prowlers|r and |cRXP_ENEMY_Young Forest Bears|r.
    >>|cRXP_WARN_Prioritize the |cRXP_ENEMY_Bears|r|r
    .complete 52,1 --8/8 Prowler or Forest Wolf slain
    .complete 52,2 --5/5 Young Forest Bear slain
	.target Prowler
	.target Gray Forest Wolf
	.target Young Forest Bear
step
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Bundles of Wood|r |cFFfa9602on the ground|r and |cFFfa9602around the trees.|r
    .complete 5545,1 --8/8 Bundle of Wood
step
    #label LostGuards
    .goto 37,72.65,60.33
    >>Interact with the |cRXP_FRIENDLY_Carcass|r |cFFfa9602on the ground.|r
    .turnin 37 >>Turn in Find the Lost Guards
    .accept 45 >>Accept Discover Rolf's Fate
step
	#label Bundles
    .goto 37,75.92,62.36,40,0
    .goto 37,77.17,63.04,40,0
    .goto 37,78.93,61.10,40,0
    .goto 37,81.27,61.58,40,0
    .goto 37,85.13,61.12,40,0
    .goto 37,83.48,59.18,40,0
    .goto 37,79.77,56.70,40,0
    .goto 37,80.04,50.42,40,0
    .goto 37,75.92,62.36,40,0
    .goto 37,77.17,63.04,40,0
    .goto 37,78.93,61.10,40,0
    .goto 37,81.27,61.58,40,0
    .goto 37,85.13,61.12,40,0
    .goto 37,83.48,59.18,40,0
    .goto 37,79.77,56.70,40,0
    .goto 37,80.04,50.42
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Bundles of Wood|r |cFFfa9602on the ground|r and |cFFfa9602around the trees.|r
    .complete 5545,1 --8/8 Bundle of Wood
step
    .goto 37,81.38,58.74,40,0
    .goto 37,86.59,63.45,40,0
    .goto 37,86.84,64.92,40,0
    .goto 37,88.01,65.01,40,0
    .goto 37,87.16,70.20,40,0
    .goto 37,81.38,58.74,40,0
    .goto 37,86.59,63.45,40,0
    .goto 37,86.84,64.92,40,0
    .goto 37,88.01,65.01,40,0
    .goto 37,87.16,70.20
    >>Kill |cRXP_ENEMY_Prowlers|r and |cRXP_ENEMY_Young Forest Bears|r.
    >>|cRXP_WARN_Prioritize the |cRXP_ENEMY_Bears|r|r
    .complete 52,1 --8/8 Prowler or Forest Wolf slain
    .complete 52,2 --5/5 Young Forest Bear slain
	.target Prowler
	.target Gray Forest Wolf
	.target Young Forest Bear
step
    .goto 37,79.80,55.51
    >>Interact with the |cRXP_FRIENDLY_Carcass|r |cFFfa9602on the ground.|r
    .turnin 45 >>Turn in Discover Rolf's Fate
    .accept 71 >>Accept Report to Thomas
 step
    .goto 37,79.26,54.05,30,0
    .goto 37,78.74,55.90,30,0
    .goto 37,79.31,57.13,30,0
    .goto 37,77.65,57.70,30,0
    .goto 37,79.26,54.05,30,0
    .goto 37,78.74,55.90,30,0
    .goto 37,79.31,57.13,30,0
    .goto 37,77.65,57.70
	>>Kill |cRXP_ENEMY_Murloc Foragers|r and |cRXP_ENEMY_Lurkers|r and loot them for their |cRXP_LOOT_Fins|r
    .complete 46,1 --8/8 Torn Murloc Fin
	.target Murloc Lurker
	.target Murloc Forager
step
    #completewith next
    .goto 37,77.65,57.70
    .deathskip >>Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r.
    >>|cRXP_WARN_Skip this if you're not low on health.|r
step
    .goto 37,73.97,72.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas|r
    .turnin 46,1 >>Turn in Bounty on Murlocs
    .turnin 52 >>Turn in Protect the Frontier
    .accept 59 >>Accept Cloth and Leather Armor
    .turnin 71 >>Turn in Report to Thomas
    .target Thomas
step
    #completewith Morgan
    >>Kill |cRXP_ENEMY_Bandits|r and loot them for their |cRXP_LOOT_Scraps.|r
    .complete 83,1 --6/6 Linen Scrap
	.target Bandit
step
    .goto 37,69.32,79.31,30 >>Check for |cRXP_ENEMY_Snoot the Rooter|r (Rare).
	.unitscan Snoot the Rooter
    .isOnQuest 83
step
	#label Morgan
    .goto 37,71.01,80.69
    >>Kill |cRXP_ENEMY_Morgan the Collector|r |cFFfa9602in the house.|r and loot him for the |cRXP_LOOT_Ring|r.
    >>|cRXP_WARN_Check for a |cRXP_PICK_Chest|r |cFFfa9602in|r and |cFFfa9602around the house.|r|r
    .complete 147,1 --1/1 The Collector's Ring
	.target Morgan the Collector
step
    .goto 37,70.96,77.21,10,0
    .goto 37,71.25,76.82,10,0
    .goto 37,68.12,77.59,30,0
    .goto 37,67.96,81.35,30,0
    .goto 37,68.42,82.69,30,0
    .goto 37,71.02,80.68,30,0
    .goto 37,70.80,77.93,30,0
    .goto 37,68.12,77.59,30,0
    .goto 37,67.96,81.35,30,0
    .goto 37,68.42,82.69,30,0
    .goto 37,71.02,80.68,30,0
    .goto 37,70.80,77.93
    >>Kill |cRXP_ENEMY_Bandits|r and loot them for their |cRXP_LOOT_Scraps.|r
    >>|cRXP_WARN_Check for a |cRXP_PICK_Chest|r |cFFfa9602in|r and |cFFfa9602around the barn.|r|r
    .complete 83,1 --6/6 Linen Scrap
	.target Bandit
step
    .goto 37,75.71,86.29,30,0
    .goto 37,77.55,85.75
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .isOnQuest 83
step
    .goto 37,83.28,66.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rallic Finn|r
    .vendor 1198 >>Vendor and Repair
	.target Rallic Finn
	.isOnQuest 59
step << !DarkIronDwarf !KulTiran !LightforgedDraenei !Mechagnome !VoidElf
    .goto 37,81.81,66.49,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Goss the Swift|r
    .fp Eastvale Logging Camp >> Get the Eastvale Logging Camp flight path
	.target Goss the Swift
    .isOnQuest 147
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Patterson|r and |cRXP_FRIENDLY_Supervisor Raelen|r
    .turnin 147 >>Turn in Manhunt
    .goto 37,81.86,66.04
    .turnin 5545 >>Turn in A Bundle of Trouble
    .goto 37,81.38,66.11
	.target Marshal Patterson
	.target Supervisor Raelen
step
    .goto 37,79.46,68.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 59 >>Turn in Cloth and Leather Armor
    .turnin 83 >>Turn in Fine Linen Goods
	.target Sara Timberlain
]])
