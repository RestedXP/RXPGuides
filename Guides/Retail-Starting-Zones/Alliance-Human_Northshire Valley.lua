RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Starting Zones
#subgroup Human Starting Zones
#name 2Retail-Alliance-Human_Northshire Valley
#displayname Chapter1-Human_Northshire Valley
#next RestedXP Alliance 10-60\1A_Elwynn Forest
#defaultfor Human

<<Alliance !DK

step
    #completewith next
    +Welcome to the Human Starting Zone Guide of RestedXP.
    +It's highly recommended to NOT level in the Human Starting Zone and instead choose Exile's Reach for faster leveling.
    *The Human Starting Experience requires a lot of experience from Rares and Treasure to be equally efficient.
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Marshal McBride
    .goto 425,33.5,53.0
    .accept 31139 >>Accept Beating Them Back! << Death Knight/Monk/Druid --x Kultiran
    .accept 28757 >>Accept Beating Them Back! << Mage
    .accept 28762 >>Accept Beating Them Back! << Paladin --x Draenei
    .accept 28763 >>Accept Beating Them Back! << Priest
    .accept 28764 >>Accept Beating Them Back! << Rogue
    .accept 28765 >>Accept Beating Them Back! << Warlock --x Warlock
    .accept 28766 >>Accept Beating Them Back! << Warrior
    .accept 28767 >>Accept Beating Them Back! << Hunter
    .target Marshal McBride
 step
    >>Kill Wolves
    .goto 425,28.60,43.57,30,0
    .goto 425,24.71,49.27,30,0
    .goto 425,24.36,38.88,30,0
    .goto 425,29.91,33.30,30,0
    .goto 425,28.60,43.57   
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
    #label HumanExileCheck
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Marshal McBride
    .goto 425,33.6,53.1
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
    >>Kill Blackrock Spies
    .goto 425,28.60,43.57,30,0
    .goto 425,24.71,49.27,30,0
    .goto 425,24.36,38.88,30,0
    .goto 425,29.91,33.30,30,0
    .goto 425,28.60,43.57
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Marshal McBride
    .goto 425,33.5,53.0
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sergeant Willem
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brother Paxton. He patrols around slightly
    .goto 425,34.89,38.38
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
    .goto 425,31.6,16.76,25 >> Old World Enemy Rares and Treasure Chests reward as much as 1 or 2 Quests!
    *Check for Gug Fatcandle (Rare) near the mine
	.unitscan Gug Fatcandle
step
    >>Kill Goblins while clicking on the Injured Soldiers in the area
    .goto 425,36.55,31.33,30,0
    .goto 425,31.68,31.4,30,0
    .goto 425,31.6,16.76,20,0
    .goto 425,36.55,31.33
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
    #label Area1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brother Paxton. He patrols around slightly
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sergeant Willem
    .goto 425,35.7,39.8
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Marshal McBride
    .goto 425,33.5,53.0
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Milly Osworth
    .goto 425,33.4,54.7
    .accept 26391 >>Accept Extinguishing Hope
    .target Milly Osworth
step
    #sticky
    #completewith QuestKeybindingsHuman
    +If you want to make the most of RXP; Press Escape -> Options -> Keybindings -> RestedXP Guides -> Select and Bind Active Button 1,2,3 and 4
    *This will allow you to press a keybind to use a Quest Item rather than manually clicking it
step
    #label QuestKeybindingsHuman
    >>Use the Fire Extinguisher in your bags near an open Fire
    >>Kill and LOOT Orcs. Try to get low health as you near completing the quest, we're deathskipping after.
    .use 58362
    .complete 26389,1 --8/8 Blackrock Orc Weapon
    .complete 26391,1 --8/8 Vineyard Fire extinguished
    .goto 425,48.99,77.06,30,0
    .goto 425,54.01,82.27,30,0
    .goto 425,57.57,76.36,30,0
    .goto 425,53.97,71.43,30,0
    .goto 425,48.99,77.06
    .target Blackrock Invader
step
    #completewith next
    >>RXP Guides often use Deathskips to quickly go to a desired Location
    >>You can Unequip your Gear or repeately spam /sit to die faster
    .deathskip >> Pull as many Enemies as you can, Die, Release and Respawn at the Graveyard
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Milly Osworth
    .goto 425,33.4,54.7
    .turnin 26391 >>Turn in Extinguishing Hope
    .target Milly Osworth
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Marshal McBride
    .goto 425,33.57,53.01
    .turnin 26389 >>Turn in Blackrock Invasion
    .accept 26390 >>Accept Ending the Invasion!
    .target Marshal McBride
step
    >>Kill Kurtok
    .goto 425,65.04,48.37
    .complete 26390,1 --1/1 Kurtok the Slayer slain
    .target Kurtok the Slayer
step
    #completewith next
    .deathskip >> Pull as many Enemies as you can, Die and Respawn at the Graveyard(skip this if no enemies are to be seen)
step
    .goto 425,33.5,53.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Marshal McBride
    .turnin 26390 >>Turn in Ending the Invasion!
    .target Marshal McBride
step
    .goto 425,33.5,53.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Marshal McBride
    .accept 54 >>Accept Report to Goldshire
    .target Marshal McBride
step << Human
    #label HumanElwynnForestIntroduction
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Falkhaan
    .goto 425,29.12,72.38,8,0
    .goto 37,45.37,49.0
    .accept 37112 >>Accept Rest and Relaxation
    .target Falkhaan
]])
