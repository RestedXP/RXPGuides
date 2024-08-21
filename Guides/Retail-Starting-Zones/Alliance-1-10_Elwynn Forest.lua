RXPGuides.RegisterGuide([[
#df
#version 2
#group RestedXP Starting Zones
#groupweight 8
#subgroup Human Starting Zones
#group weight 9
#name A-Northshire Valley
#displayname Chapter 1 - Northshire Valley
#next B-Elwynn Forest
#defaultfor Human !DK

<< Alliance

step
    #completewith next
    +Welcome to the Human Starting Zone Guide of RestedXP.
    +It's highly recommended to |cRXP_WARN_NOT|r level |cFFfa9602in the Human Starting Zone|r and instead choose |cFFfa9602Exile's Reach|r for faster leveling.
    *|cFFfa9602The Human Starting Experience|r requires a lot of experience from Rares and Treasure to be equally efficient.
step
    .goto 425,33.56,53.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .accept 28757 >>Accept Beating Them Back! << Human Mage/KulTiran Mage
    .accept 28762 >>Accept Beating Them Back! << Human Paladin
    .accept 28763 >>Accept Beating Them Back! << Human Priest/KulTiran Priest
    .accept 28764 >>Accept Beating Them Back! << Human Rogue/KulTiran Rogue
    .accept 28765 >>Accept Beating Them Back! << Human Warlock/KulTiran Warlock
    .accept 28766 >>Accept Beating Them Back! << Human Warrior/KulTiran Warrior
    .accept 28767 >>Accept Beating Them Back! << Human Hunter/KulTiran Hunter
    .accept 29078 >>Accept Beating Them Back! << !Human !KulTiran
    .accept 31139 >>Accept Beating Them Back! << Human Death Knight/Human Monk/KulTiran Death Knight/KulTiran Monk/KulTiran Druid/KulTiran Shaman
    .target Marshal McBride
step
    #loop
    .goto 425,29.58,44.71,0
    .goto 425,31.33,45.67,40,0
    .goto 425,32.52,43.63,40,0
    .goto 425,29.25,38.05,40,0
    .goto 425,26.25,40.59,40,0
    .goto 425,26.09,53.65,40,0
    >>Kill |cRXP_ENEMY_Blackrock Worgs|r
    .complete 28757,1 << Human Mage/KulTiran Mage --Blackrock Worgs (6)
    .complete 28762,1 << Human Paladin --Blackrock Worgs (6)
    .complete 28763,1 << Human Priest/KulTiran Priest --Blackrock Worgs (6)
    .complete 28764,1 << Human Rogue/KulTiran Rogue --Blackrock Worgs (6)
    .complete 28765,1 << Human Warlock/KulTiran Warlock --Blackrock Worgs (6)
    .complete 28766,1 << Human Warrior/KulTiran Warrior --Blackrock Worgs (6)
    .complete 28767,1 << Human Hunter/KulTiran Hunter --Blackrock Worgs (6)
    .complete 29078,1 << !Human !KulTiran --Blackrock Worgs (6)
    .complete 31139,1 << Human Death Knight/Human Monk/KulTiran Death Knight/KulTiran Monk/KulTiran Druid/KulTiran Shaman --Blackrock Worgs (6)
    .mob Blackrock Worg
step
    .goto 425,33.56,53.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 28757 >>Turn in Beating Them Back! << Human Mage/KulTiran Mage
    .turnin 28762 >>Turn in Beating Them Back! << Human Paladin
    .turnin 28763 >>Turn in Beating Them Back! << Human Priest/KulTiran Priest
    .turnin 28764 >>Turn in Beating Them Back! << Human Rogue/KulTiran Rogue
    .turnin 28765 >>Turn in Beating Them Back! << Human Warlock/KulTiran Warlock
    .turnin 28766 >>Turn in Beating Them Back! << Human Warrior/KulTiran Warrior
    .turnin 28767 >>Turn in Beating Them Back! << Human Hunter/KulTiran Hunter
    .turnin 29078 >>Turn in Beating Them Back! << !Human !KulTiran
    .turnin 31139 >>Turn in Beating Them Back! << Human Death Knight/Human Monk/KulTiran Death Knight/KulTiran Monk/KulTiran Druid/KulTiran Shaman
    .accept 28759 >> Accept Lions for Lambs << Human Hunter/KulTiran Hunter
    .accept 28769 >> Accept Lions for Lambs << Human Mage/KulTiran Mage
    .accept 28770 >> Accept Lions for Lambs << Human Paladin
    .accept 28771 >> Accept Lions for Lambs << Human Priest/KulTiran Priest
    .accept 28772 >> Accept Lions for Lambs << Human Rogue/KulTiran Rogue
    .accept 28773 >> Accept Lions for Lambs << Human Warlock/KulTiran Warlock
    .accept 28774 >> Accept Lions for Lambs << Human Warrior/KulTiran Warrior
    .accept 29079 >> Accept Lions for Lambs << !Human !KulTiran
    .accept 31140 >> Accept Lions for Lambs << Human Death Knight/Human Monk/KulTiran Death Knight/KulTiran Monk/KulTiran Druid/KulTiran Shaman
    .target Marshal McBride
step
    #loop
    .goto 425,27.23,40.41,0
    .goto 425,31.76,41.17,40,0
    .goto 425,30.32,38.01,40,0
    .goto 425,27.23,40.41,40,0
    .goto 425,27.40,42.45,40,0
    .goto 425,26.49,44.73,40,0
    .goto 425,28.86,47.41,40,0
    .goto 425,24.84,50.52,40,0
    .goto 425,23.64,51.42,40,0
    .goto 425,26.60,54.71,40,0
    >>Kill |cRXP_ENEMY_Blackrock Spies|r
    >>|cRXP_WARN_They are|r |T132320:0|t[Stealthed] |cRXP_WARN_(but easily visible)|r
    .complete 28759,1 << Human Hunter/KulTiran Hunter --Blackrock Spies (8)
    .complete 28769,1 << Human Mage/KulTiran Mage--Blackrock Spies (8)
    .complete 28770,1 << Human Paladin --Blackrock Spies (8)
    .complete 28771,1 << Human Priest/KulTiran Priest --Blackrock Spies (8)
    .complete 28772,1 << Human Rogue/KulTiran Rogue --Blackrock Spies (8)
    .complete 28773,1 << Human Warlock/KulTiran Warlock --Blackrock Spies (8)
    .complete 28774,1 << Human Warrior/KulTiran Warrior --Blackrock Spies (8)
    .complete 29079,1 << !Human !KulTiran --Blackrock Spies (8)
    .complete 31140,1 << Human Death Knight/Human Monk/KulTiran Death Knight/KulTiran Monk/KulTiran Druid/KulTiran Shaman --Blackrock Spies (8)
    .mob Blackrock Spy
step
    .goto 425,33.56,53.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 28759 >>Turn in Lions for Lambs << Human Hunter/KulTiran Hunter
    .turnin 28769 >>Turn in Lions for Lambs << Human Mage/KulTiran Mage
    .turnin 28770 >>Turn in Lions for Lambs << Human Paladin
    .turnin 28771 >>Turn in Lions for Lambs << Human Priest/KulTiran Priest
    .turnin 28772 >>Turn in Lions for Lambs << Human Rogue/KulTiran Rogue
    .turnin 28773 >>Turn in Lions for Lambs << Human Warlock/KulTiran Warlock
    .turnin 28774 >>Turn in Lions for Lambs << Human Warrior/KulTiran Warrior
    .turnin 29079 >>Turn in Lions for Lambs << !Human !KulTiran
    .turnin 31140 >>Turn in Lions for Lambs << Human Death Knight/Human Monk/KulTiran Death Knight/KulTiran Monk/KulTiran Druid/KulTiran Shaman
    .accept 28780 >>Accept Join the Battle! << Human Hunter/KulTiran Hunter
    .accept 28784 >>Accept Join the Battle! << Human Mage/KulTiran Mage
    .accept 28785 >>Accept Join the Battle! << Human Paladin
    .accept 28786 >>Accept Join the Battle! << Human Priest/KulTiran Priest
    .accept 28787 >>Accept Join the Battle! << Human Rogue/KulTiran Rogue
    .accept 28788 >>Accept Join the Battle! << Human Warlock/KulTiran Warlock
    .accept 28789 >>Accept Join the Battle! << Human Warrior/KulTiran Warrior
    .accept 29080 >>Accept Join the Battle! << !Human !KulTiran
    .accept 31143 >>Accept Join the Battle! << Human Death Knight/Human Monk/KulTiran Death Knight/KulTiran Monk/KulTiran Druid/KulTiran Shaman
    .target Marshal McBride
step
    .goto 425,35.73,39.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Willem|r
    .turnin 28780 >>Turn in Join the Battle! << Human Hunter/KulTiran Hunter
    .turnin 28784 >>Turn in Join the Battle! << Human Mage/KulTiran Mage
    .turnin 28785 >>Turn in Join the Battle! << Human Paladin
    .turnin 28786 >>Turn in Join the Battle! << Human Priest/KulTiran Priest
    .turnin 28787 >>Turn in Join the Battle! << Human Rogue/KulTiran Rogue
    .turnin 28788 >>Turn in Join the Battle! << Human Warlock/KulTiran Warlock
    .turnin 28789 >>Turn in Join the Battle! << Human Warrior/KulTiran Warrior
    .turnin 29080 >>Turn in Join the Battle! << !Human !KulTiran
    .turnin 31143 >>Turn in Join the Battle! << Human Death Knight/Human Monk/KulTiran Death Knight/KulTiran Monk/KulTiran Druid/KulTiran Shaman
    .accept 28791 >>Accept They Sent Assassins << Human Hunter/KulTiran Hunter
    .accept 28792 >>Accept They Sent Assassins << Human Mage/KulTiran Mage
    .accept 28793 >>Accept They Sent Assassins << Human Paladin
    .accept 28794 >>Accept They Sent Assassins << Human Priest/KulTiran Priest
    .accept 28795 >>Accept They Sent Assassins << Human Rogue/KulTiran Rogue
    .accept 28796 >>Accept They Sent Assassins << Human Warlock/KulTiran Warlock
    .accept 28797 >>Accept They Sent Assassins << Human Warrior/KulTiran Warrior
    .accept 29081 >>Accept They Sent Assassins << !Human !KulTiran
    .accept 31144 >>Accept They Sent Assassins << Human Death Knight/Human Monk/KulTiran Death Knight/KulTiran Monk/KulTiran Druid/KulTiran Shaman
    .target Sergeant Willem
step
    #loop
    .goto 425,34.99,38.24,0
    .goto 425,34.47,39.42,8,0
    .goto 425,34.99,38.24,8,0
    .goto 425,35.55,37.73,8,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Paxton|r
    .accept 28806 >>Accept Fear No Evil << Human Hunter/KulTiran Hunter
    .accept 28808 >>Accept Fear No Evil << Human Mage/KulTiran Mage
    .accept 28809 >>Accept Fear No Evil << Human Paladin
    .accept 28810 >>Accept Fear No Evil << Human Priest/KulTiran Priest
    .accept 28811 >>Accept Fear No Evil << Human Rogue/KulTiran Rogue
    .accept 28812 >>Accept Fear No Evil << Human Warlock/KulTiran Warlock
    .accept 28813 >>Accept Fear No Evil << Human Warrior/KulTiran Warrior
    .accept 29082 >>Accept Fear No Evil << !Human !KulTiran
    .accept 63447 >>Accept Fear No Evil << Human Death Knight/Human Monk/KulTiran Death Knight/KulTiran Monk/KulTiran Druid/KulTiran Shaman
    .target Brother Paxton
step
    #optional
    #completewith Rear
    .goto 425,31.59,16.72,40 >> |cRXP_WARN_[RARE] Check for |cRXP_ENEMY_Gug Fatcandle|r. Kill him if he's up|r
    *|cRXP_WARN_It's important to kill Rares and loot Treasure Chests, as they award a lot of experience|r
	.unitscan Gug Fatcandle
    .noflyable
step
    #sticky
    #label Soldiers
    #loop
    .goto 425,31.99,28.69,0
    .goto 425,31.00,22.28,15,0
    .goto 425,29.16,25.64,15,0
    .goto 425,28.94,30.20,15,0
    .goto 425,30.49,30.95,15,0
    .goto 425,32.00,28.75,15,0
    .goto 425,31.56,25.82,15,0
    .goto 425,33.45,24.77,15,0
    .goto 425,36.08,23.69,15,0
    >>Click the |cRXP_PICK_Injured Stormwind Infantries|r on the ground to revive them
    .complete 28806,1 << Human Hunter/KulTiran Hunter --Revive Injured Soldiers (4)
    .complete 28808,1 << Human Mage/KulTiran Mage --Revive Injured Soldiers (4)
    .complete 28809,1 << Human Paladin --Revive Injured Soldiers (4)
    .complete 28810,1 << Human Priest/KulTiran Priest --Revive Injured Soldiers (4)
    .complete 28811,1 << Human Rogue/KulTiran Rogue --Revive Injured Soldiers (4)
    .complete 28812,1 << Human Warlock/KulTiran Warlock --Revive Injured Soldiers (4)
    .complete 28813,1 << Human Warrior/KulTiran Warrior --Revive Injured Soldiers (4)
    .complete 29082,1 << !Human !KulTiran --Revive Injured Soldiers (4)
    .complete 63447,1 << Human Death Knight/Human Monk/KulTiran Death Knight/KulTiran Monk/KulTiran Druid/KulTiran Shaman --Revive Injured Soldiers (4)
    .target Injured Stormwind Infantry
step
    #loop
    .goto 425,31.99,28.69,0
    .goto 425,33.00,21.94,45,0
    .goto 425,35.59,23.73,45,0
    .goto 425,36.54,27.68,45,0
    .goto 425,35.12,31.40,45,0
    .goto 425,33.27,32.25,45,0
    .goto 425,35.59,23.73,45,0
    .goto 425,29.65,31.64,45,0
    .goto 425,28.45,27.49,45,0
    .goto 425,27.16,18.98,45,0
    >>Kill |cRXP_ENEMY_Goblin Assassins|r
    .complete 28791,1 << Human Hunter/KulTiran Hunter --Goblin Assassins (8)
    .complete 28792,1 << Human Mage/KulTiran Mage --Goblin Assassins (8)
    .complete 28793,1 << Human Paladin --Goblin Assassins (8)
    .complete 28794,1 << Human Priest/KulTiran Priest --Goblin Assassins (8)
    .complete 28795,1 << Human Rogue/KulTiran Rogue --Goblin Assassins (8)
    .complete 28796,1 << Human Warlock/KulTiran Warlock --Goblin Assassins (8)
    .complete 28797,1 << Human Warrior/KulTiran Warrior --Goblin Assassins (8)
    .complete 29081,1 << !Human !KulTiran --Goblin Assassins (8)
    .complete 31144,1 << Human Death Knight/Human Monk/KulTiran Death Knight/KulTiran Monk/KulTiran Druid/KulTiran Shaman --Goblin Assassins (8)
    .mob Goblin Assassin
step
    #requires Soldiers
    #loop
    .goto 425,34.99,38.24,0
    .goto 425,35.55,37.73,8,0
    .goto 425,34.99,38.24,8,0
    .goto 425,34.47,39.42,8,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Paxton|r
    .turnin 28806 >>Turn in Fear No Evil << Human Hunter/KulTiran Hunter
    .turnin 28808 >>Turn in Fear No Evil << Human Mage/KulTiran Mage
    .turnin 28809 >>Turn in Fear No Evil << Human Paladin
    .turnin 28810 >>Turn in Fear No Evil << Human Priest/KulTiran Priest
    .turnin 28811 >>Turn in Fear No Evil << Human Rogue/KulTiran Rogue
    .turnin 28812 >>Turn in Fear No Evil << Human Warlock/KulTiran Warlock
    .turnin 28813 >>Turn in Fear No Evil << Human Warrior/KulTiran Warrior
    .turnin 29082 >>Turn in Fear No Evil << !Human !KulTiran
    .turnin 63447 >>Turn in Fear No Evil << Human Death Knight/Human Monk/KulTiran Death Knight/KulTiran Monk/KulTiran Druid/KulTiran Shaman
    .target Brother Paxton
step
    #label Rear
    .goto 425,35.73,39.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Willem|r
    .turnin 28791 >>Turn in They Sent Assassins << Human Hunter/KulTiran Hunter
    .turnin 28792 >>Turn in They Sent Assassins << Human Mage/KulTiran Mage
    .turnin 28793 >>Turn in They Sent Assassins << Human Paladin
    .turnin 28794 >>Turn in They Sent Assassins << Human Priest/KulTiran Priest
    .turnin 28795 >>Turn in They Sent Assassins << Human Rogue/KulTiran Rogue
    .turnin 28796 >>Turn in They Sent Assassins << Human Warlock/KulTiran Warlock
    .turnin 28797 >>Turn in They Sent Assassins << Human Warrior/KulTiran Warrior
    .turnin 29081 >>Turn in They Sent Assassins << !Human !KulTiran
    .turnin 31144 >>Turn in They Sent Assassins << Human Death Knight/Human Monk/KulTiran Death Knight/KulTiran Monk/KulTiran Druid/KulTiran Shaman
    .accept 28817 >>Accept The Rear is Clear << Human Hunter/KulTiran Hunter
    .accept 28818 >>Accept The Rear is Clear << Human Mage/KulTiran Mage
    .accept 28819 >>Accept The Rear is Clear << Human Paladin
    .accept 28820 >>Accept The Rear is Clear << Human Priest/KulTiran Priest
    .accept 28821 >>Accept The Rear is Clear << Human Rogue/KulTiran Rogue
    .accept 28822 >>Accept The Rear is Clear << Human Warlock/KulTiran Warlock
    .accept 28823 >>Accept The Rear is Clear << Human Warrior/KulTiran Warrior
    .accept 29083 >>Accept The Rear is Clear << !Human !KulTiran
    .accept 31145 >>Accept The Rear is Clear << Human Death Knight/Human Monk/KulTiran Death Knight/KulTiran Monk/KulTiran Druid/KulTiran Shaman
    .target Sergeant Willem
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r and |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 28817 >>Turn in The Rear is Clear << Human Hunter
    .turnin 28818 >>Turn in The Rear is Clear << Human Mage
    .turnin 28819 >>Turn in The Rear is Clear << Human Paladin
    .turnin 28820 >>Turn in The Rear is Clear << Human Priest
    .turnin 28821 >>Turn in The Rear is Clear << Human Rogue
    .turnin 28822 >>Turn in The Rear is Clear << Human Warlock
    .turnin 28823 >>Turn in The Rear is Clear << Human Warrior
    .turnin 29083 >>Turn in The Rear is Clear << !Human
    .turnin 31145 >>Turn in The Rear is Clear << Human Death Knight/Human Monk
    .accept 26389 >>Accept Blackrock Invasion
    .goto 425,33.56,53.04
    .target +Marshal McBride
    .accept 26391 >>Accept Extinguishing Hope
    .goto 425,33.38,54.67
    .target +Milly Osworth
step << skip
    #completewith next
    +|cRXP_WARN_To enable keybinding for quest items, follow these steps:|r
    *[1] Press the |cRXP_WARN_Escape key.|r
    *[2] Select |cRXP_WARN_Options.|r
    *[3] Navigate to |cRXP_WARN_Keybindings.|r
    *[4] Within |cRXP_WARN_Keybindings|r, find |cRXP_WARN_RestedXP Guides.|r
    *[5] Select and bind the |cRXP_WARN_Active Buttons.|r
step
    #sticky
    #label Fire
    .goto 425,57.48,71.22,0
    .goto 425,49.10,78.42,20,0
    .goto 425,50.78,75.57,20,0
    .goto 425,51.22,77.49,20,0
    .goto 425,51.82,78.93,20,0
    .goto 425,50.59,80.71,20,0
    .goto 425,52.81,80.56,20,0
    .goto 425,52.53,82.55,20,0
    .goto 425,53.04,84.89,20,0
    .goto 425,54.33,85.93,20,0
    .goto 425,54.67,83.87,20,0
    .goto 425,56.91,82.37,20,0
    .goto 425,56.39,80.99,20,0
    .goto 425,56.96,78.82,20,0
    .goto 425,58.94,75.77,20,0
    .goto 425,55.12,73.91,20,0
    .goto 425,55.49,70.94,20,0
    .goto 425,53.67,68.68,20,0
    .goto 425,50.63,73.13,20,0
    >>Use and then channel |T308321:0|t[Milly's Fire Extinguisher] near the |cRXP_PICK_Vineyard Fires|r
    .complete 26391,1 --Vineyard Fire extinguished (8)
    .use 58362
step
    #loop
    .goto 425,54.27,77.40,0
    .goto 425,47.40,70.76,50,0
    .goto 425,46.82,75.39,50,0
    .goto 425,50.12,78.58,50,0
    .goto 425,53.79,84.88,50,0
    .goto 425,57.63,77.83,50,0
    .goto 425,57.48,71.22,50,0
    .goto 425,56.07,62.66,50,0
    >>Kill |cRXP_ENEMY_Blackrock Invaders|r. Loot them for |cRXP_LOOT_Blackrock Orc Weapons|r
    .complete 26389,1 --Blackrock Orc Weapon (8)
    .mob Blackrock Invader
step
    #requires Fire
    #completewith next
    .goto 425,54.27,77.40,0
    .goto 425,38.29,58.12,0
-- .goto 425,38.29,58.12
    *|cRXP_WARN_Spamming /sit or removing your gear will make you die faster|r
    .deathskip >> Die and Respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .skill riding,75,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milly Osworth|r and |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 26391 >>Turn in Extinguishing Hope
    .goto 425,33.38,54.67
    .turnin 26389 >>Turn in Blackrock Invasion
    .accept 26390 >>Accept Ending the Invasion!
    .goto 425,33.56,53.04
    .target Milly Osworth
    .target Marshal McBride
step
    .goto 425,64.97,48.38
    >>Kill |cRXP_ENEMY_Kurtok the Slayer|r
    .complete 26390,1 --Kill Kurtok the Slayer (1)
    .mob Kurtok the Slayer
step
    #completewith next
    .goto 425,54.27,77.40,0
    .goto 425,38.29,58.12,0
-- .goto 425,38.29,58.12
    .deathskip >> Die and Respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .skill riding,75,1
step
    .goto 425,33.56,53.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 26390 >>Turn in Ending the Invasion!
    .accept 54 >>Accept Report to Goldshire
    .target Marshal McBride
step
    #optional
    #completewith next
    .goto 425,29.17,72.43,15,0
    .goto 425,28.28,73.45,15,0
    .goto 425,24.47,74.67,15,0
    .goto 37,45.37,49.00,15 >> Travel toward |cRXP_FRIENDLY_Falkhaan Isenstrider|r
step
    .goto 37,45.37,49.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falkhaan Isenstrider|r
    .accept 37112 >>Accept Rest and Relaxation
    .target Falkhaan Isenstrider
]])

RXPGuides.RegisterGuide([[
#df
#version 2
#group RestedXP Starting Zones
#groupweight 8
#subgroup Human Starting Zones << !KulTiran !DK/!DarkIronDwarf !DK/!LightforgedDraenei !DK/!Mechagnome !DK/!VoidElf !DK/!Pandaren !DK
#subgroup Allied Race DK << KulTiran DK/DarkIronDwarf DK/LightforgedDraenei DK/Mechagnome DK/VoidElf DK/Pandaren DK
#displayname Chapter 2 - Elwynn Forest
#name B-Elwynn Forest
#next RestedXP Speedrun Guide\a) The Waking Shores Fresh (A)
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
    .goto 37,41.71,52.74,-1
    .goto 37,39.48,60.53,-1
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .isOnQuest 37112 --Rest and Relaxation (Breadcrumb to Goldshire quest)
    .skill riding,75,1
step << !Human !KulTiran
    .goto 37,41.715,64.636
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartlett the Brave|r
    .fp Goldshire >> Get the Goldshire Flight Path
	.target Bartlett the Brave
step
    #optional
    .goto 37,42.11,65.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 54 >>Turn in Report to Goldshire
    .accept 62 >>Accept The Fargodeep Mine
    .accept 26378 >>Accept Hero's Call: Westfall!
	.target Marshal Dughan
    .isOnQuest 54
--  .isQuestTurnedIn 26390 --Ending the Invasion! (Human Starter Zone final quest)
step
    .goto 37,42.11,65.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .accept 62 >>Accept The Fargodeep Mine
    .accept 26378 >>Accept Hero's Call: Westfall!
	.target Marshal Dughan
step << Human/KulTiran
    .goto 37,41.708,65.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smith Argus|r
    .accept 26393 >>Accept A Swift Message
	.target Smith Argus
step << Human/KulTiran
    .goto 37,41.715,64.636
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartlett the Brave|r
	.turnin 26393 >>Turn in A Swift Message
    .accept 26394 >>Accept Continue to Stormwind
	.target Bartlett the Brave
step
    #optional
    #completewith next
    .goto 37,43.19,65.74,5,0
    .goto 37,43.23,65.95,5,0
    .goto 37,43.318,65.705,4 >> Travel toward |cRXP_FRIENDLY_William Pestle|r
step
    .goto 37,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Pestle|r
    .accept 60 >>Accept Kobold Candles
	.target William Pestle
step
    #veteran
    #completewith Cooking
    .goto 37,43.77,65.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Farley|r.
    >>|cRXP_BUY_Buy 5|r |T132789:0|t[Moonberry Juice] |cRXP_BUY_from him|r
    >>|cRXP_WARN_The|r |T132789:0|t[Moonberry Juice] |cRXP_WARN_is for an|r |T4620669:0|t[Alchemy] |cRXP_WARN_Darkmoon Faire quest. If you don't want to train|r |T4620669:0|t[Alchemy]|cRXP_WARN_, skip the objective|r
    .turnin 37112 >>Turn in Rest and Relaxation
    .collect 1645,5,29506,1 --Moonberry Juice (5)
    .home >>Set your Hearthstone to Lion's Pride Inn
	.target Innkeeper Farley
    .isQuestAvailable 47
    .dmf
step
    #veteran
    .goto 37,43.77,65.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Farley|r
    .turnin 37112 >>Turn in Rest and Relaxation
    .home >>Set your Hearthstone to Lion's Pride Inn
	.target Innkeeper Farley
    .isQuestAvailable 47
    .nodmf
step
    #veteran
    #label Cooking
    .goto 37,44.37,65.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tomas|r
    .train 2550 >> Train Cooking
	.target Tomas
    .dmf
step
    #fresh
    .goto 37,43.77,65.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Farley|r
    .turnin 37112 >>Turn in Rest and Relaxation
    .home >>Set your Hearthstone to Lion's Pride Inn
	.target Innkeeper Farley
    .isQuestAvailable 47
step
    #optional
    #completewith next
    .goto 37,43.23,65.95,5,0
    .goto 37,43.13,65.74,5,0
    .goto 37,42.93,65.71,6,0
    .goto 37,42.14,67.26,12 >> Travel toward |cRXP_FRIENDLY_Remy "Two Times"|r
step
    .goto 37,42.14,67.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remy "Two Times"|r
    .accept 40 >>Accept A Fishy Peril
    .accept 47 >>Accept Gold Dust Exchange
	.target Remy "Two Times"
step
    #veteran
    .goto 37,41.95,67.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farmer|r
    >>|cRXP_WARN_These professions are used for Darkmoon Faire quests later. If you don't want to do this, skip this step|r
    .train 2259 >> Train |T4620669:0|t[Alchemy] and |T4620676:0|t[Inscription]
	.skipgossip 47384,2,1,1
	.target Lien Farmer
    .dmf
step
    #veteran
    .goto 37,41.95,67.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farmer|r
    .train 45357 >> Train |T4620676:0|t[Inscription]
	.skipgossip 47384,3,6,2
	.target Lien Farmer
    .dmf
    .train 2259,3 --Only show if you have Alchemy
step
    #veteran
    .goto 37,41.89,67.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharynn Bouden|r. Buy the following items from him:
--    .collect 2604,1,29520,1 --Red Dye (1)
--    .collect 6260,1,29520,1 --Blue Dye (1)
--  .collect 2320,1,29520,1 --Coarse Thread (1)
    .collect 30817,5,29509,1 --Simple Flour (5)
    .collect 39354,5,29515,1 --Light Parchment (1)
	.target Tharynn Bouden
    .dmf
    .train 45357,3 --Only show if you have Inscription
--XX 29520 needs to be added
--XX DMF section needs a polish at some point. Coords to 3dp, new formatting, #optional on steps
step
    #veteran
    .goto 37,41.89,67.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharynn Bouden|r. Buy the following items from him:
--    .collect 2604,1,29520,1 --Red Dye (1)
--    .collect 6260,1,29520,1 --Blue Dye (1)
--  .collect 2320,1,29520,1 --Coarse Thread (1)
    .collect 30817,5,29509,1 --Simple Flour (5)
	.target Tharynn Bouden
    .dmf
--XX 29520 needs to be added
--XX DMF section needs a polish at some point. Coords to 3dp, new formatting, #optional on steps
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
    .train 2259,3 --Only show if you have Alchemy
step
    .goto 407,50.54,69.56
    >>Use the |T132793:0|t[Cocktail Shaker] to make |T463532:0|t[Moonberry Fizz]
    .collect 1645,5,29506,1,-1 --Moonberry Juice (5)
    .collect 19299,5,29506,1,-1 --Fizzy Faire Drinks (5)
    .complete 29506,1 --5/5 Moonberry Fizz
    .use 72043 --Cocktail Shaker
    .zoneskip 407,1
    .dmf
    .isOnQuest 29506
step
    .goto 407,50.53,69.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sylannia|r
    .turnin 29506 >>Turn in A Fizzy Fusion
	.target Sylannia
    .zoneskip 407,1
    .dmf
    .isOnQuest 29506
step
    .goto 407,53.23,75.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sayge|r
    .turnin 29445 >>Turn in An Intriguing Grimoire
    .accept 29515 >>Accept Writing the Future
	.target Sayge
    .zoneskip 407,1
    .dmf
	.isOnQuest 29445
    .train 45357,3 --Only show if you have Inscription
step
    #optional
    .goto 407,53.23,75.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sayge|r
    .turnin 29445 >>Turn in An Intriguing Grimoire
	.target Sayge
    .zoneskip 407,1
    .dmf
	.isOnQuest 29445
step
    #optional
    .goto 407,53.23,75.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sayge|r
    .accept 29515 >>Accept Writing the Future
	.target Sayge
    .zoneskip 407,1
    .dmf
    .train 45357,3 --Only show if you have Inscription
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
    #sticky
    #label Professions1
    #completewith Professions3
    .goto 37,41.95,67.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farmer|r
    >>|cRXP_WARN_Herbing Herbs and Mining Veins provides XP. Only gather resources in your direct path|r
    >>|cRXP_WARN_If you don't want to do this, skip this step|r
    .train 2366 >> Train |T4620675:0|t[Herbalism]
    .train 2575 >> Train |T4620679:0|t[Mining]
    .target Lien Farmer
    .skipgossip 47396,1,1,1
    .train 2366,1 --Herbalism
    .train 2575,1 --Mining
step
    #optional
    #requires Professions1
    #label Professions2
    #completewith Professions3
    .goto 37,41.95,67.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farmer|r
    >>|cRXP_WARN_Herbing Herbs provides XP. Only gather resources in your direct path|r
    >>|cRXP_WARN_If you don't want to do this, skip this step|r
    .train 2366 >> Train |T4620675:0|t[Herbalism]
    .target Lien Farmer
    .skipgossip 47396,2,2,2
    .train 2575,3 --Mining
step
    #optional
    #requires Professions2
    #label Professions3
    .goto 37,41.95,67.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farmer|r
    >>|cRXP_WARN_Mining Veins provides XP. Only gather resources in your direct path|r
    >>|cRXP_WARN_If you don't want to do this, skip this step|r
    .train 2575 >> Train |T4620679:0|t[Mining]
    .target Lien Farmer
    .skipgossip 47396,2,3,2
    .train 2366,3 --Herbalism
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
    .goto 37,38.22,83.41,0
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r. Loot them for their |cRXP_LOOT_Large Candles|r and |cRXP_LOOT_Gold Dust|r
    .complete 60,1 --8/8 Large Candle
    .complete 47,1 --10/10 Gold Dust
	.mob Kobold Tunneler
	.mob Kobold Miner
step
    #optional
    .goto 37,38.22,83.41,40 >>|cRXP_WARN_[RARE] Check for |cRXP_ENEMY_Narg the Taskmaster|r. Kill him if he's up|r
	.unitscan Narg the Taskmaster
    .isOnQuest 60
    .noflyable
step
    #optional
	#completewith next
    .goto 37,38.94,82.23,12,0
    .goto 38,42.52,71.63
    .subzone 54 >> Enter the upper level of the Fargodeep Mine
step
    #label FargodeepM
    .goto 38,54.31,59.56,-1
    .goto 39,66.53,66.18,-1
    >>Enter one of the central rooms inside Fargodeep Mine
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
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r. Loot them for their |cRXP_LOOT_Large Candles|r and |cRXP_LOOT_Gold Dust|r
    .complete 60,1 --8/8 Large Candle
    .complete 47,1 --10/10 Gold Dust
	.mob Kobold Tunneler
	.mob Kobold Miner
step
    .goto 37,34.66,84.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ma Stonefield|r
    .accept 88 >>Accept Princess Must Die!
	.target Ma Stonefield
step
    #optional
    .goto 37,33.64,87.76,15 >>|cRXP_WARN_[CHEST] Check for the |cRXP_PICK_Chest|r inside the stables. Loot it if it's up|r
    .isOnQuest 60
    .noflyable
step
    #loop
    .line 37,32.48,86.81,33.41,86.16,33.32,84.95,32.58,84.26,32.04,85.20,32.48,86.81
    .goto 37,33.32,84.95,0
    .goto 37,32.04,85.20,20,0
    .goto 37,32.58,84.26,20,0
    .goto 37,33.32,84.95,20,0
    .goto 37,33.41,86.16,20,0
    .goto 37,32.48,86.81,20,0
    >>Kill |cRXP_ENEMY_Princess|r. Loot her for her |cRXP_LOOT_Brass Collar|r
    .complete 88,1 --1/1 Brass Collar
	.mob Princess
step
    .goto 37,34.66,84.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ma Stonefield|r
    .turnin 88 >>Turn in Princess Must Die!
	.target Ma Stonefield
step
    #optional
    .goto 37,30.81,64.65,40 >>|cRXP_WARN_[RARE] Check for |cRXP_ENEMY_Morgaine the Sly|r inside. Kill her if she's up|r
    .unitscan Morgaine the Sly
    .isOnQuest 60
    .noflyable
step
    #optional
    .goto 37,27.22,67.51,40 >>|cRXP_WARN_[RARE] Check for |cRXP_ENEMY_Grizzled Ben|r. Kill him if he's up|r
	.unitscan Grizzled Ben
    .isOnQuest 60
    .noflyable
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Wanted Poster|r and |cRXP_FRIENDLY_Deputy Rainer|r
    .accept 176 >>Accept WANTED: "Hogger"
    .goto 37,24.55,74.67
    .accept 11 >>Accept Riverpaw Gnoll Bounty
    .goto 37,24.23,74.45
	.target Deputy Rainer
step
    #optional
	#completewith Bounty
    .goto 37,24.36,93.65,0
    .goto 37,26.10,91.95,0
    .goto 37,25.30,88.95,0
    .goto 37,27.80,88.36,0
    .goto 37,27.67,86.21,0
    .goto 37,26.32,86.82,0
    +|cRXP_WARN_[RARE & CHEST] Keep an eye out for the |cRXP_PICK_Chest|r and |cRXP_ENEMY_Gruff Swiftbite|r in the camps. Loot the |cRXP_PICK_Chest|r if you find one, and kill |cRXP_ENEMY_Gruff Swiftbite|r if he's up|r
	.unitscan Gruff Swiftbite
    .noflyable
step
    #sticky
    #label Armbands
    #loop
    .goto 37,24.36,93.65,0
    .goto 37,26.10,91.95,0
    .goto 37,25.30,88.95,0
    .goto 37,27.80,88.36,0
    .goto 37,27.67,86.21,0
    .goto 37,26.32,86.82,0
    .waypoint 37,24.36,93.65,40,0
    .waypoint 37,26.10,91.95,40,0
    .waypoint 37,25.30,88.95,40,0
    .waypoint 37,27.80,88.36,40,0
    .waypoint 37,27.67,86.21,40,0
    .waypoint 37,26.32,86.82,40,0
    >>Kill |cRXP_ENEMY_Riverpaw Outrunners|r and |cRXP_ENEMY_Riverpaw Runts|r. Loot them for their |cRXP_LOOT_Painted Gnoll Armbands|r
    .complete 11,1 --8/8 Painted Gnoll Armband
	.mob *Riverpaw Outrunner
	.mob *Riverpaw Runt
step
    #sticky
    #label Deed
    .goto 37,24.78,95.26
    >>Click the |cRXP_PICK_Westfall Deed|r on the ground
    .accept 184 >>Accept Furlbrow's Deed
step
    #label Hogger
    .goto 37,24.85,95.14
    >>Defeat |cRXP_ENEMY_Hogger|r
    >>|cRXP_WARN_DON'T wait out the RP after you defeat him|r
    .complete 176,1 --1/1 Dealt with "The Hogger Situation"
    .mob Hogger
    .mob Minion of Hogger
step
    #optional
    #requires Deed
--XXREQ Placeholder invis step until multiple requires per step
step
    #label Bounty
    #requires Armbands
    .goto 37,24.23,74.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 11 >>Turn in Riverpaw Gnoll Bounty
	.target Deputy Rainer
step
	#veteran
    .goto 52,60.85,18.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old MacDonald|r
    >>|cRXP_WARN_Skip this step if you don't have level 25 Pet Battle Pets.|r
    .accept 31780 >>Accept Old MacDonald
	.target Old MacDonald
    .isQuestTurnedIn 31903
step
	#veteran
    .goto 52,61.04,18.82
    >>Defeat |cRXP_ENEMY_Old MacDonald|r in a Pet Battle
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
    #loop
    .goto 52,58.23,18.12,0
    .goto 52,58.56,16.21,20,0
    .goto 52,59.18,18.16,20,0
    .goto 52,58.12,19.58,20,0
    .goto 52,57.31,18.33,20,0
    .goto 52,58.56,16.21,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Homeless Stormwind Citizens|r, |cRXP_FRIENDLY_West Plains Drifters|r, and |cRXP_FRIENDLY_Transients|r. Pay them for their |cRXP_LOOT_Clues|r.
    .complete 26209,1 --1/1 Clue #1 obtained
    .complete 26209,2 --1/1 Clue #2 obtained
    .complete 26209,3 --1/1 Clue #3 obtained
    .complete 26209,4 --1/1 Clue #4 obtained
	.target Homeless Stormwind Citizen
	.target West Plains Drifter
    .target Transients
    .skipgossip 42383,1 --Transient
    .skipgossip 42384,1 --Homeless Stormwind Citizen
    .skipgossip 42386,1 --Homeless Stormwind Citizen
    .skipgossip 42391,1 --West Plains Drifter
    .skill riding,75,1
step
    #loop
    #optional
    .goto 52,58.23,18.12,0
    .goto 52,58.56,16.21,20,0
    .goto 52,59.18,18.16,20,0
    .goto 52,58.12,19.58,20,0
    .goto 52,57.31,18.33,20,0
    .goto 52,58.56,16.21,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Homeless Stormwind Citizens|r, |cRXP_FRIENDLY_West Plains Drifters|r, and |cRXP_FRIENDLY_Transients|r for their |cRXP_LOOT_Clues|r.
    >>|cRXP_WARN_Stay mounted and spam talk to them, ignore them if they turn hostile|r
    .complete 26209,1 --1/1 Clue #1 obtained
    .complete 26209,2 --1/1 Clue #2 obtained
    .complete 26209,3 --1/1 Clue #3 obtained
    .complete 26209,4 --1/1 Clue #4 obtained
	.target Homeless Stormwind Citizen
	.target West Plains Drifter
    .target Transients
    .skipgossip 2
    .skill riding,<75,1
step
    .goto 52,60.05,19.28,5,0
    .goto 52,60.18,19.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Horatio Laine|r
    .turnin 26209 >>Turn in Murder Was The Case That They Gave Me
    .accept 26213 >>Accept Hot On the Trail: The Riverpaw Clan
	.target Lieutenant Horatio Laine
step
    #optional
	#completewith Horatio
    .goto 52,56.46,13.26,30 >>|cRXP_WARN_[CHEST] Check for a |cRXP_PICK_Chest|r in the camp|r
    .noflyable
step
    #loop
    .goto 52,56.46,13.26,0
    .goto 52,58.16,10.71,40,0
    .goto 52,57.17,15.12,40,0
    .goto 52,51.38,15.89,40,0
    .goto 52,50.68,14.77,40,0
    .goto 52,56.46,13.26,40,0
    >>Kill |cRXP_ENEMY_Riverpaw Scouts|r and |cRXP_ENEMY_Riverpaw Gnolls|r. Loot them for the |cRXP_LOOT_Riverpaw Gnoll Clue|r
    .complete 26213,1 --1/1 Riverpaw Gnoll Clue
	.mob Riverpaw Scout
	.mob Riverpaw Gnoll
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
	.target +Remy "Two Times"
    .turnin 62 >>Turn in The Fargodeep Mine
    .turnin 40 >>Turn in A Fishy Peril
    .accept 35 >>Accept Further Concerns
    .accept 76 >>Accept The Jasperlode Mine
    .turnin 176 >>Turn in WANTED: "Hogger"
    .goto 37,42.11,65.93
	.target +Marshal Dughan
	.isOnQuest 40
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remy "Two Times"|r and |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 47 >>Turn in Gold Dust Exchange
    .goto 37,42.14,67.25
	.target +Remy "Two Times"
    .turnin 62 >>Turn in The Fargodeep Mine
    .accept 35 >>Accept Further Concerns
    .accept 76 >>Accept The Jasperlode Mine
    .turnin 176 >>Turn in WANTED: "Hogger"
    .goto 37,42.11,65.93
	.target +Marshal Dughan
step
    .goto 37,41.69,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andrew Krighton|r
	.vendor >>Vendor and Repair
    .isOnQuest 35
	.target Andrew Krighton
    .noflyable --Azeroth Flying
step
    #optional
    .goto 37,52.25,62.90,40 >>|cRXP_WARN_[RARE] Check for |cRXP_ENEMY_Lamepaw the Whimperer|r. Kill him if he's up|r
	.unitscan Lamepaw the Whimperer
    .isOnQuest 35
    .noflyable
step
    #optional
    .goto 37,57.49,64.61,45 >> |cRXP_WARN_[CHEST] Scan the murloc islands with your mouse for a|r |cRXP_PICK_Chest|r. Your mouse will become a |TInterface/cursor/crosshair/interact.blp:20|tgear icon if there's a |cRXP_PICK_Chest|r. If you find one. Loot it if it's up|r
    .isOnQuest 35
    .noflyable
step
    #optional
    .goto 37,66.51,63.83,40 >>|cRXP_WARN_[RARE] Check for |cRXP_ENEMY_Tarantis|r. Kill him if he's up|r
	.unitscan Tarantis
    .isOnQuest 35
    .noflyable
step
    #optional
    .goto 37,64.7,56.73,30 >>|cRXP_WARN_[CHEST] Check for the |cRXP_PICK_Chest|r inside the Kobold Camp. Loot it if it's up|r
    .isOnQuest 35
    .noflyable
step
    #completewith next
    .goto 37,61.65,53.93,12,0
    .goto 40,48.05,87.33
    .subzone 54 >>Enter the Jasperlode Mine
step
    .goto 40,44.22,67.89,12,0
    .goto 40,38.71,60.84,12,0
    .goto 40,35.92,52.81
    >>Follow the middle path inside Jasperlode Mine
    .complete 76,1 --Scout Through the Jasperlode Mine (1)
step
    #optional
	.goto 40,31.02,37.51,20,0
    .goto 40,37.01,50.26,20,0
    .goto 40,47.25,36.66,20,0
    .goto 40,53.93,30.58,20,0
    .goto 40,45.14,21.76,20 >>|cRXP_WARN_[RARE] Check for |cRXP_ENEMY_Mother Fang|r at the back of Jasperlode Mine. Kill her if she's up|r
	.unitscan Mother Fang
    .isOnQuest 35
    .noflyable
step
    #completewith next
    .goto 37,61.58,70.04,0
    .deathskip >> Die and Respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .isOnQuest 35
    .skill riding,75,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Thomas|r and the |cRXP_FRIENDLY_Bounty Board|r
    .turnin 35 >>Turn in Further Concerns
    .accept 37 >>Accept Find the Lost Guards
    .accept 52 >>Accept Protect the Frontier
    .goto 37,73.973,72.177
	.target +Guard Thomas
    .accept 46 >>Accept Bounty on Murlocs
    .accept 26152 >>Accept WANTED: James Clark
    .goto 37,74.025,72.310
step
    #completewith next
    >>Kill |cRXP_ENEMY_Prowlers|r and |cRXP_ENEMY_Gray Forest Wolves|r
    >>Kill any |cRXP_ENEMY_Young Forest Bears|r you see
    .complete 52,1 --Kill Prowler or Forest Wolf (8)
    .mob +*Prowler
    .mob +*Gray Forest Wolf
    .complete 52,2 --Kill Young Forest Bear (5)
    .mob +Young Forest Bear
step
    #optional
    .goto 37,82.95,84.82,40 >>|cRXP_WARN_[RARE] Check for |cRXP_ENEMY_Bushtail|r. Kill him if he's up|r
    .isOnQuest 52
	.unitscan Bushtail
    .noflyable
step
	#completewith next
    .goto 37,75.71,86.29,0
    >>Kill |cRXP_ENEMY_Murloc Foragers|r and |cRXP_ENEMY_Murloc Lurkers|r. Loot them for their |cRXP_LOOT_Torn Murloc Fins|r
    .complete 46,1,4 --Torn Murloc Fin (4/8)
    .mob Murloc Forager
    .mob Murloc Lurker
step
    .goto 37,75.71,86.29,30,0
    .goto 37,77.55,85.75
    .deathskip >> Whilst killing |cRXP_ENEMY_Murloc Foragers|r and |cRXP_ENEMY_Murloc Lurkers|r, die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .isOnQuest 46
    .skill riding,75,1
step
    .goto 37,83.283,66.089
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rallic Finn|r
    .vendor 1198 >> Vendor and Repair
	.target Rallic Finn
	.isOnQuest 52
    .noflyable --Azeroth Flying
step
    .goto 37,79.462,68.715
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Timberlain|r
    .accept 83 >>Accept Fine Linen Goods
    .target Sara Timberlain
step
    .goto 37,78.87,67.20,10,0
    .goto 37,78.637,67.157
    >>Kill |cRXP_FRIENDLY_James Clark|r inside. Loot him for |cRXP_LOOT_James Clark's Head|r and the |T134939:0|t|cRXP_LOOT_[Gold Pickup Schedule]|r
    >>|cRXP_WARN_Use the |T134939:0|t|cRXP_LOOT_[Gold Pickup Schedule]|r to start the quest|r
    .complete 26152,1 --James Clark's Head (1)
    .collect 1307,1,123,1 --Gold Pickup Schedule (1)
    .accept 123 >>Accept The Collector
    .mob James Clark
    .use 1307
step
    .goto 37,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Supervisor Raelen|r
    .accept 5545 >> Accept A Bundle of Trouble
    .target Supervisor Raelen
step
    .goto 37,81.860,66.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Patterson|r
    .turnin 26152 >>Turn in WANTED: James Clark
    .turnin 123 >>Turn in The Collector
    .accept 147 >>Accept Manhunt
    .target Marshal Patterson
step
    #completewith StoneCairn
    .goto 37,81.72,58.57,0
    .goto 37,77.99,60.59,0
    .goto 37,71.58,60.84,0
    .goto 37,74.75,67.13,0
    .goto 37,87.15,64.63,0
    >>Kill |cRXP_ENEMY_Prowlers|r and |cRXP_ENEMY_Gray Forest Wolves|r
    >>Kill any |cRXP_ENEMY_Young Forest Bears|r you see
    .complete 52,1 --Kill Prowler or Forest Wolf (8)
    .mob +*Prowler
    .mob +*Gray Forest Wolf
    .complete 52,2 --Kill Young Forest Bear (5)
    .mob +Young Forest Bear
step
    #completewith MurlocFins
    .goto 37,80.88,53.78,0
    .goto 37,80.63,62.25,0
    .goto 37,82.79,60.12,0
    >>Loot |cRXP_LOOT_Bundles of Wood|r on the ground next to the trees
    .complete 5545,1 -- Bundle of Wood (8)
step
    #label LostGuards
    .goto 37,72.653,60.323
    >>Click |cRXP_PICK_A half-eaten body|r on the ground
    .turnin 37 >>Turn in Find the Lost Guards
    .accept 45 >>Accept Discover Rolf's Fate
step
    #label StoneCairn
    .goto 37,79.795,55.510
    .subzone 86 >> Travel toward Stone Cairn Lake
    .isOnQuest 45
step
    #sticky
    #label MurlocFins
    #loop
    .goto 37,78.837,55.770,0
    .waypoint 37,80.004,53.783,40,0
    .waypoint 37,79.222,54.041,40,0
    .waypoint 37,78.554,55.834,40,0
    .waypoint 37,77.474,57.257,40,0
    .waypoint 37,77.991,58.108,40,0
    .waypoint 37,79.370,57.016,40,0
    >>Kill |cRXP_ENEMY_Murloc Foragers|r and |cRXP_ENEMY_Murloc Lurkers|r. Loot them for their |cRXP_LOOT_Torn Murloc Fins|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Murloc Foragers|r will cast|r |T135915:0|t[Drink Minor Potion] |cRXP_WARN_which heals themselves for 61-68 health|r
    .complete 46,1 --Torn Murloc Fin (8)
    .mob Murloc Forager
    .mob Murloc Lurker
step
    .goto 37,79.795,55.510
    >>Click |cRXP_PICK_Rolf's corpse|r on the ground
    .turnin 45 >>Turn in Discover Rolf's Fate
    .accept 71 >>Accept Report to Thomas
step
    #sticky
    #label PTFrontier
    #requires MurlocFins
    #loop
    .goto 37,81.72,58.57,0
    .goto 37,77.99,60.59,0
    .goto 37,71.58,60.84,0
    .goto 37,74.75,67.13,0
    .goto 37,87.15,64.63,0
    .waypoint 37,81.72,58.57,60,0
    .waypoint 37,77.99,60.59,60,0
    .waypoint 37,71.58,60.84,60,0
    .waypoint 37,74.75,67.13,60,0
    .waypoint 37,87.15,64.63,60,0
    >>Kill |cRXP_ENEMY_Prowlers|r and |cRXP_ENEMY_Gray Forest Wolves|r
    >>Kill any |cRXP_ENEMY_Young Forest Bears|r you see
    .complete 52,1 --Kill Prowler or Forest Wolf (8)
    .mob +*Prowler
    .mob +*Gray Forest Wolf
    .complete 52,2 --Kill Young Forest Bear (5)
    .mob +Young Forest Bear
step
    #loop
    #requires MurlocFins
    .goto 37,80.88,53.78,0
    .goto 37,80.63,62.25,0
    .goto 37,82.79,60.12,0
    .goto 37,80.88,53.78,20,0
    .goto 37,80.48,55.18,20,0
    .goto 37,79.79,56.71,20,0 --Not Exact
    .goto 37,79.04,59.56,20,0
    .goto 37,77.30,59.56,20,0 --Not Exact/Real
    .goto 37,77.18,60.65,20,0 --Not Exact/Real
    .goto 37,76.75,61.76,20,0
    .goto 37,77.13,63.00,20,0
    .goto 37,78.38,62.35,20,0
    .goto 37,79.30,63.34,20,0
    .goto 37,80.24,61.47,20,0
    .goto 37,80.63,62.25,20,0
    .goto 37,81.57,62.64,20,0
    .goto 37,81.27,61.59,20,0
    .goto 37,82.00,61.01,20,0
    .goto 37,83.27,61.12,20,0
    .goto 37,84.20,61.55,20,0
    .goto 37,83.85,60.48,20,0
    .goto 37,82.79,60.12,20,0
    >>Loot |cRXP_LOOT_Bundles of Wood|r on the ground next to the trees
    .complete 5545,1 -- Bundle of Wood (8)
step << skip
    #requires MurlocFins
    #completewith next
    .goto 37,77.65,57.70
    >>|cRXP_WARN_Skip this if you're not low at health|r
    .deathskip >>Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step
    .goto 37,73.973,72.177
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Thomas|r
    .turnin 46 >> Turn in Bounty on Murlocs
    .turnin 52 >> Turn in Protect the Frontier
    .turnin 71 >> Turn in Report to Thomas
    .accept 59 >> Accept Cloth and Leather Armor
    .target Guard Thomas
step
    #completewith Morgan
    .goto 37,68.56,82.68,0
    .goto 37,67.63,78.01,0
    .goto 37,68.23,76.33,0
    .goto 37,71.31,76.93,0
    .goto 37,71.81,78.51,0
    >>Kill |cRXP_ENEMY_Bandits|r, |cRXP_ENEMY_Erlan Drudgemoor|r inside, and |cRXP_ENEMY_Surena Caledon|r inside. Loot them for their |cRXP_LOOT_Linen Scraps|r
    .complete 83,1 --Collect Linen Scrap (6)
    .mob Bandit
    .mob Erlan Drudgemoor
    .mob Surena Caledon
step
    #optional
    #label Morgan
    .goto 37,71.02,80.67
    >>Kill |cRXP_ENEMY_Morgan the Collector|r inside. Loot him for |cRXP_LOOT_The Collector's Ring|r and |cRXP_LOOT_Linen Scraps|r
    >>|cRXP_WARN_[CHEST] Check for the |cRXP_PICK_Chest|r in and around the house. Loot it if it's up|r
    .complete 147,1 --The Collector's Ring (1)
    .complete 83,1 --Collect Linen Scrap (6)
    .disablecheckbox
    .mob Morgan the Collector
    .itemcount 1019,<6
    .isOnQuest 83
step
    .goto 37,71.02,80.67
    >>Kill |cRXP_ENEMY_Morgan the Collector|r inside. Loot him for |cRXP_LOOT_The Collector's Ring|r
    >>|cRXP_WARN_[CHEST] Check for the |cRXP_PICK_Chest|r in and around the house. Loot it if it's up|r
    .complete 147,1 --The Collector's Ring (1)
    .mob Morgan the Collector
step
    #optional
    #sticky
    #label Snoot
    .goto 37,69.32,79.31,30 >>|cRXP_WARN_[RARE] Check for |cRXP_ENEMY_Snoot the Rooter|r. Kill him if he's up|r
	.unitscan Snoot the Rooter
    .isOnQuest 83
    .noflyable
step
    #loop
    .goto 37,68.56,82.68,0
    .goto 37,67.63,78.01,0
    .goto 37,68.23,76.33,0
    .goto 37,71.31,76.93,0
    .goto 37,71.81,78.51,0
    .goto 37,70.62,80.73,50,0
    .goto 37,68.56,82.68,50,0
    .goto 37,67.83,80.86,50,0
    .goto 37,67.63,78.01,50,0
    .goto 37,68.55,77.39,50,0
    .goto 37,68.23,76.33,50,0
    .goto 37,70.97,77.21,10,0
    .goto 37,71.31,76.93,10,0
    .goto 37,70.84,78.22,50,0
    .goto 37,71.81,78.51,50,0
    >>Kill |cRXP_ENEMY_Bandits|r. Loot them for their |cRXP_LOOT_Linen Scraps|r
    >>|cRXP_WARN_[CHEST] Check for the |cRXP_PICK_Chest|r in and around the barn. Loot it if it's up|r
    .complete 83,1 --Collect Linen Scrap (6)
    .mob Bandit
step
    #completewith next
    #requires Snoot
    .goto 37,75.71,86.29,30,0
    .goto 37,77.55,85.75,-1
    .goto 37,83.68,69.74,-1
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .isOnQuest 83
    .skill riding,75
step
    #requires Snoot
    .goto 37,83.283,66.089
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rallic Finn|r
    .vendor 1198 >>Vendor and Repair
	.target Rallic Finn
    .isOnQuest 83
    .noflyable --Azeroth Flying
step << !DarkIronDwarf !KulTiran !LightforgedDraenei !Mechagnome !VoidElf
    .goto 37,81.829,66.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Goss the Swift|r
    .fp Eastvale Logging Camp >> Get the Eastvale Logging Camp flight path
	.target Goss the Swift
step
    .goto 37,81.860,66.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Patterson|r
    .turnin 147 >>Turn in Manhunt
    .target Marshal Patterson
step
    .goto 37,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Supervisor Raelen|r
    .turnin 5545 >> Turn in A Bundle of Trouble
    .target Supervisor Raelen
step
    .goto 37,79.462,68.715
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 83 >> Turn in Fine Linen Goods
    .turnin 59 >> Turn in Cloth and Leather Armor
    .target Sara Timberlain
]])
