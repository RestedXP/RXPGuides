local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end
RXPGuides.RegisterGuide([[

#group RXP Cataclysm 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 1-6 Northshire Valley
#version 1
#next 6-9 Elwynn Forest
#defaultfor Human !DK

<< Alliance

step
    .goto 425,33.56,53.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .accept 28757 >>Accept Beating Them Back! << Human Mage
    .accept 28762 >>Accept Beating Them Back! << Human Paladin
    .accept 28763 >>Accept Beating Them Back! << Human Priest
    .accept 28764 >>Accept Beating Them Back! << Human Rogue
    .accept 28765 >>Accept Beating Them Back! << Human Warlock
    .accept 28766 >>Accept Beating Them Back! << Human Warrior
    .accept 28767 >>Accept Beating Them Back! << Human Hunter
    .accept 29078 >>Accept Beating Them Back! << !Human
    .accept 31139 >>Accept Beating Them Back! << Human Death Knight/Human Monk
    .target Marshal McBride
--XX 31139 only available in MoP+ (Human DKs borked until MoP, blizzard-side)
step
    #loop
    .goto 425,29.58,44.71,0
    .goto 425,31.33,45.67,40,0
    .goto 425,32.52,43.63,40,0
    .goto 425,29.25,38.05,40,0
    .goto 425,26.25,40.59,40,0
    .goto 425,26.09,53.65,40,0
    >>Kill |cRXP_ENEMY_Blackrock Worgs|r << !mop
    >>Kill |cRXP_ENEMY_Blackrock Battle Worgs|r << mop
    .complete 28757,1 << Human Mage --Blackrock Worgs (6)
    .complete 28762,1 << Human Paladin --Blackrock Worgs (6)
    .complete 28763,1 << Human Priest --Blackrock Worgs (6)
    .complete 28764,1 << Human Rogue --Blackrock Worgs (6)
    .complete 28765,1 << Human Warlock --Blackrock Worgs (6)
    .complete 28766,1 << Human Warrior --Blackrock Worgs (6)
    .complete 28767,1 << Human Hunter --Blackrock Worgs (6)
    .complete 29078,1 << !Human --Blackrock Worgs (6)
    .complete 31139,1 << Human Death Knight/Human Monk --Blackrock Worgs (6)
    .mob Blackrock Worg << !mop
    .mob Blackrock Battle Worg << mop
step
    .goto 425,33.56,53.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 28757 >>Turn in Beating Them Back! << Human Mage
    .turnin 28762 >>Turn in Beating Them Back! << Human Paladin
    .turnin 28763 >>Turn in Beating Them Back! << Human Priest
    .turnin 28764 >>Turn in Beating Them Back! << Human Rogue
    .turnin 28765 >>Turn in Beating Them Back! << Human Warlock
    .turnin 28766 >>Turn in Beating Them Back! << Human Warrior
    .turnin 28767 >>Turn in Beating Them Back! << Human Hunter
    .turnin 29078 >>Turn in Beating Them Back! << !Human
    .turnin 31139 >>Turn in Beating Them Back! << Human Death Knight/Human Monk
    .accept 28759 >> Accept Lions for Lambs << Human Hunter
    .accept 28769 >> Accept Lions for Lambs << Human Mage
    .accept 28770 >> Accept Lions for Lambs << Human Paladin
    .accept 28771 >> Accept Lions for Lambs << Human Priest
    .accept 28772 >> Accept Lions for Lambs << Human Rogue
    .accept 28773 >> Accept Lions for Lambs << Human Warlock
    .accept 28774 >> Accept Lions for Lambs << Human Warrior
    .accept 29079 >> Accept Lions for Lambs << !Human
    .accept 31140 >> Accept Lions for Lambs << Human Death Knight/Human Monk
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
    .complete 31140,1 << Human Death Knight/Human Monk --Blackrock Spies (8)
    .complete 28769,1 << Human Mage --Blackrock Spies (8)
    .complete 28759,1 << Human Hunter --Blackrock Spies (8)
    .complete 28770,1 << Human Paladin --Blackrock Spies (8)
    .complete 28771,1 << Human Priest --Blackrock Spies (8)
    .complete 28772,1 << Human Rogue --Blackrock Spies (8)
    .complete 28773,1 << Human Warlock --Blackrock Spies (8)
    .complete 28774,1 << Human Warrior --Blackrock Spies (8)
    .complete 29079,1 << !Human --Blackrock Spies (8)
    .complete 31140,1 << Human Death Knight/Human Monk --Blackrock Spies (8)
    .mob Blackrock Spy
step << skip
    .goto 425,33.56,53.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 28769 >>Turn in Lions for Lambs << Human Mage
    .turnin 28759 >>Turn in Lions for Lambs << Human Hunter
    .turnin 28770 >>Turn in Lions for Lambs << Human Paladin
    .turnin 28771 >>Turn in Lions for Lambs << Human Priest
    .turnin 28772 >>Turn in Lions for Lambs << Human Rogue
    .turnin 28773 >>Turn in Lions for Lambs << Human Warlock
    .turnin 28774 >>Turn in Lions for Lambs << Human Warrior
    .turnin 29079 >>Turn in Lions for Lambs << !Human
    .turnin 31140 >>Turn in Lions for Lambs << Human Death Knight/Human Monk
    .accept 28780 >>Accept Join the Battle! << Human Hunter
    .accept 28784 >>Accept Join the Battle! << Human Mage
    .accept 28785 >>Accept Join the Battle! << Human Paladin
    .accept 28786 >>Accept Join the Battle! << Human Priest
    .accept 28787 >>Accept Join the Battle! << Human Rogue
    .accept 28788 >>Accept Join the Battle! << Human Warlock
    .accept 28789 >>Accept Join the Battle! << Human Warrior
    .accept 29080 >>Accept Join the Battle! << !Human
    .accept 31143 >>Accept Join the Battle! << Human Death Knight/Human Monk
    .target Marshal McBride
step
    .goto 425,33.56,53.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 28769 >>Turn in Lions for Lambs << Human Mage
    .turnin 28759 >>Turn in Lions for Lambs << Human Hunter
    .turnin 28770 >>Turn in Lions for Lambs << Human Paladin
    .turnin 28771 >>Turn in Lions for Lambs << Human Priest
    .turnin 28772 >>Turn in Lions for Lambs << Human Rogue
    .turnin 28773 >>Turn in Lions for Lambs << Human Warlock
    .turnin 28774 >>Turn in Lions for Lambs << Human Warrior
    .turnin 29079 >>Turn in Lions for Lambs << !Human
    .turnin 31140 >>Turn in Lions for Lambs << Human Death Knight/Human Monk
    .accept 3100 >>Accept Simple Letter << Human Warrior
    .accept 3101 >>Accept Consecrated Letter << Human Paladin
    .accept 3102 >>Accept Encrypted Letter << Human Rogue
    .accept 3103 >>Accept Hallowed Letter << Human Priest
    .accept 3104 >>Accept Glyphic Letter << Human Mage
    .accept 3105 >>Accept Tainted Letter << Human Warlock
    .accept 26910 >>Accept Etched Letter << Human Hunter
    .accept 29080 >>Accept Join the Battle! << !Human
    .target Marshal McBride
--XX needs testing on non-human classes. Not needed for Monks/DKs

step << Warrior/Paladin
    #optional
    #completewith next
    .goto 425,35.84,51.87,8,0
    .goto 425,38.46,52.30,8,0
    .goto 425,40.87,53.80,10 >> Travel toward |cRXP_FRIENDLY_Llane Beshere|r inside the Abbey << Warrior
    .goto 425,41.55,53.23,10 >> Travel toward |cRXP_FRIENDLY_Brother Sammuel|r inside the Abbey << Paladin
step << Warrior
    .goto 425,40.87,53.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Llane Beshere|r
    .turnin 3100 >>Turn in Simple Letter << Human
    .accept 26913 >>Accept Charging into Battle << Human
    .train 100 >>Train |T132337:0|t[Charge] << Cata
    .target Llane Beshere
step << Paladin
    .goto 425,41.55,53.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Sammuel|r
    .turnin 3101 >>Turn in Consecrated Letter << Human
    .accept 26918 >>Accept The Power of the Light << Human
    .train 20154 >>Train |T135960:0|t[Seal of Righteousness] << Cata
    .train 20271 >>Train |T135959:0|t[Judgement] << Cata
    .target Brother Sammuel
step << Rogue
    .goto 425,41.13,45.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorik Kerridan|r outside on the opposite side of the Abbey
    .turnin 3102 >>Turn in Encrypted Letter << Human
    .accept 26915 >>Accept The Deepest Cut << Human
    .train 2098 >>Train |T132292:0|t[Eviscerate] << Cata
    .target Jorik Kerridan
step << Human Priest/Human Mage
    #optional
    #completewith next
    .goto 425,35.61,51.32,8,0
    .goto 425,37.20,48.32,8,0
    .goto 425,38.95,46.52,8,0 << Priest
    .goto 425,38.31,46.07,8,0 << Mage
    .goto 425,37.94,45.13,5,0 << Mage
    .goto 425,39.31,43.78,10 >> Travel toward |cRXP_FRIENDLY_Priestess Anetta|r inside the Abbey << Priest
    .goto 425,38.78,43.47,10 >> Travel toward |cRXP_FRIENDLY_Khelden Bremen|r inside the Abbey upstairs. Jump up from the stairs via the rail outside his room if you can << Mage
step << Human Priest
    .goto 425,39.31,43.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Anetta|r
    .turnin 3103 >>Turn in Hallowed Letter << Human
    .accept 26919 >>Accept Healing the Wounded << Human
    .train 2061 >>Train |T135907:0|t[Flash Heal] << Cata
    .target Priestess Anetta
--XX Human Priest only since Flash Heal is somewhat useless when you just smite spam
step << Human Priest
    #loop
    .goto 425,39.31,43.78,0
    .goto 425,38.97,43.16,10,0
    .goto 425,37.82,44.57,10,0
    .goto 425,39.70,44.56,10,0
    .goto 425,37.36,46.34,10,0
    .goto 425,35.08,48.41,10,0
    .goto 425,35.42,49.84,10,0
    .goto 425,37.84,53.31,10,0
    .goto 425,37.00,54.53,10,0
    .goto 425,36.36,53.06,10,0
    >>Cast |T135907:0|t[Flash Heal] on 5 |cRXP_FRIENDLY_Wounded Trainees|r inside the Abbey
    .complete 26919,1 --Cast Flash Heal (5)
    .target Wounded Trainee
step << Human Mage
    .goto 425,38.78,43.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khelden Bremen|r
    .turnin 3104 >>Turn in Glyphic Letter << Human
    .accept 26916 >>Accept Mastering the Arcane << Human
    .train 5143 >>Train |T136096:0|t[Arcane Missiles] << Cata
    .target Khelden Bremen
--XX Human Mage only since Arcane Missiles is somewhat useless when you just fireball spam
step << Warlock
    .goto 425,39.55,55.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 3105 >>Turn in Tainted Letter << Human
    .accept 26914 >>Accept Immolation << Human
    .train 348 >>Train |T135817:0|t[Immolate] << Cata
    .target Drusilla La Salle
step << Hunter
    .goto 425,34.83,54.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ashley Blank|r
    .turnin 26910 >>Turn in Etched Letter << Human
    .accept 26917 >>Accept The Hunter's Path << Human
    .train 56641 >>Train |T132213:0|t[Steady Shot] << Cata
    .target Ashley Blank
step << Human Warrior/Human Paladin/Human Mage
    #optional
    #completewith next
    .goto 425,38.46,52.30,8,0 << Warrior/Paladin
    .goto 425,35.84,51.87,8,0 << Warrior/Paladin
    .goto 425,37.20,48.32,8,0 << Mage
    .goto 425,35.61,51.32,8,0 << Mage
    .goto 425,33.82,53.38,10,0
    .goto 425,35.58,60.57,40 >> Travel toward the |cRXP_ENEMY_Training Dummies|r
step << !Priest Human
    .goto 425,35.58,60.57,-1
    .goto 425,35.82,61.08,-1
    .goto 425,35.81,61.71,-1
    .goto 425,35.55,62.26,-1
    .goto 425,35.13,62.46,-1
    .goto 425,34.74,62.27,-1
    .goto 425,34.48,61.76,-1
    .goto 425,34.46,61.13,-1
    >>Cast |T132337:0|t[Charge] on a |cRXP_ENEMY_Training Dummy|r << Warrior
    >>Cast |T135817:0|t[Immolate] on a |cRXP_ENEMY_Training Dummy|r 5 times << Warlock
    >>Cast |T136189:0|t[Sinister Strike] and then |T132292:0|t[Eviscerate] on a |cRXP_ENEMY_Training Dummy|r 3 times << Rogue
    >>Cast |T135812:0|t[Fireball] and then |T136096:0|t[Arcane Missiles] when it procs on a |cRXP_ENEMY_Training Dummy|r 2 times << Mage
    >>Cast |T132213:0|t[Steady Shot] on a |cRXP_ENEMY_Training Dummy|r 5 times << Hunter
    >>Cast |T135960:0|t[Seal of Righteousness] and then |T135959:0|t[Judgement] on a |cRXP_ENEMY_Training Dummy|r << Paladin
--cata ids
    .complete 26913,1 << Warrior Cata --Cast Charge (1)
    .complete 26914,1 << Warlock Cata --Cast Immolation (5)
    .complete 26915,1 << Rogue Cata --Cast Eviscerate (3)
    .complete 26916,1 << Mage Cata --Cast Arcane Missiles (2)
    .complete 26917,1 << Hunter Cata --Cast Steady Shot (5)
    .complete 26918,1 << Paladin Cata --Cast Judgement (1)
--mop ids
    .complete 26913,2 << Warrior mop --Cast Charge (1)
    .complete 26914,2 << Warlock mop --Cast Immolation (5)
    .complete 26915,2 << Rogue mop --Cast Eviscerate (3)
    .complete 26916,2 << Mage mop --Cast Arcane Missiles (2)
    .complete 26917,2 << Hunter mop --Cast Steady Shot (5)
    .complete 26918,2 << Paladin mop --Cast Judgement (1)
    .mob Training Dummy
step << Human Warrior/Human Paladin/Human Mage
    #optional
    #completewith next
    .goto 425,35.84,51.87,8,0 << Warrior/Paladin
    .goto 425,38.46,52.30,8,0 << Warrior/Paladin
    .goto 425,35.61,51.32,8,0 << Mage
    .goto 425,37.20,48.32,8,0 << Mage
    .goto 425,38.31,46.07,8,0 << Mage
    .goto 425,37.94,45.13,5,0 << Mage
    .goto 425,40.87,53.80,10 >> Return to |cRXP_FRIENDLY_Llane Beshere|r inside the Abbey << Warrior
    .goto 425,41.55,53.23,10 >> Return to |cRXP_FRIENDLY_Brother Sammuel|r inside the Abbey << Paladin
    .goto 425,38.78,43.47,10 >> Return to |cRXP_FRIENDLY_Khelden Bremen|r inside the Abbey << Mage
step << Human Priest
    .goto 425,39.31,43.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Anetta|r
    .turnin 26919 >>Turn in Healing the Wounded
    .accept 28786 >>Accept Join the Battle!
    .target Priestess Anetta
step << Human Mage
    .goto 425,38.78,43.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khelden Bremen|r
    .turnin 26916 >>Turn in Mastering the Arcane
    .accept 28784 >>Accept Join the Battle!
    .target Khelden Bremen
step << Human Warrior
    .goto 425,40.87,53.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Llane Beshere|r
    .turnin 26913 >>Turn in Charging into Battle
    .accept 28789 >>Accept Join the Battle!
    .target Llane Beshere
step << Human Paladin
    .goto 425,41.55,53.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Sammuel|r
    .turnin 26918 >>Turn in The Power of the Light
    .accept 28785 >>Accept Join the Battle!
    .target Brother Sammuel
step << Human Rogue
    .goto 425,41.13,45.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorik Kerridan|r
    .turnin 26915 >>Turn in The Deepest Cut
    .accept 28787 >>Accept Join the Battle!
    .target Jorik Kerridan
step << Human Warlock
    .goto 425,39.55,55.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 26914 >>Turn in Immolation
    .accept 28788 >>Accept Join the Battle!
    .target Drusilla La Salle
--XX May not need to turn in class quest to accept followup (aka can turn in later)
step << Human Hunter
    .goto 425,34.83,54.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ashley Blank|r
    .turnin 26917 >>Turn in The Hunter's Path
    .accept 28780 >>Accept Join the Battle!
    .target Ashley Blank




step
    .goto 425,35.73,39.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Willem|r
    .turnin 28780 >>Turn in Join the Battle! << Human Hunter
    .turnin 28784 >>Turn in Join the Battle! << Human Mage
    .turnin 28785 >>Turn in Join the Battle! << Human Paladin
    .turnin 28786 >>Turn in Join the Battle! << Human Priest
    .turnin 28787 >>Turn in Join the Battle! << Human Rogue
    .turnin 28788 >>Turn in Join the Battle! << Human Warlock
    .turnin 28789 >>Turn in Join the Battle! << Human Warrior
    .turnin 29080 >>Turn in Join the Battle! << !Human
    .turnin 31143 >>Turn in Join the Battle! << Human Death Knight/Human Monk
    .accept 28791 >>Accept They Sent Assassins << Human Hunter
    .accept 28792 >>Accept They Sent Assassins << Human Mage
    .accept 28793 >>Accept They Sent Assassins << Human Paladin
    .accept 28794 >>Accept They Sent Assassins << Human Priest
    .accept 28795 >>Accept They Sent Assassins << Human Rogue
    .accept 28796 >>Accept They Sent Assassins << Human Warlock
    .accept 28797 >>Accept They Sent Assassins << Human Warrior
    .accept 29081 >>Accept They Sent Assassins << !Human
    .accept 31144 >>Accept They Sent Assassins << Human Death Knight/Human Monk
    .target Sergeant Willem
step
    #loop
    .goto 425,34.99,38.24,0
    .goto 425,34.47,39.42,8,0
    .goto 425,34.99,38.24,8,0
    .goto 425,35.55,37.73,8,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Paxton|r
    .accept 28806 >>Accept Fear No Evil << Human Hunter
    .accept 28808 >>Accept Fear No Evil << Human Mage
    .accept 28809 >>Accept Fear No Evil << Human Paladin
    .accept 28810 >>Accept Fear No Evil << Human Priest
    .accept 28811 >>Accept Fear No Evil << Human Rogue
    .accept 28812 >>Accept Fear No Evil << Human Warlock
    .accept 28813 >>Accept Fear No Evil << Human Warrior
    .accept 29082 >>Accept Fear No Evil << !Human
    .accept 63447 >>Accept Fear No Evil << Human Death Knight/Human Monk
    .target Brother Paxton
step << skip
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
    .complete 28806,1 << Human Hunter --Revive Injured Soldiers (4)
    .complete 28808,1 << Human Mage --Revive Injured Soldiers (4)
    .complete 28809,1 << Human Paladin --Revive Injured Soldiers (4)
    .complete 28810,1 << Human Priest --Revive Injured Soldiers (4)
    .complete 28811,1 << Human Rogue --Revive Injured Soldiers (4)
    .complete 28812,1 << Human Warlock --Revive Injured Soldiers (4)
    .complete 28813,1 << Human Warrior --Revive Injured Soldiers (4)
    .complete 63447,1 << Human Death Knight/Human Monk --Revive Injured Soldiers (4)
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
    .complete 28791,1 << Human Hunter --Goblin Assassins (8)
    .complete 28792,1 << Human Mage --Goblin Assassins (8)
    .complete 28793,1 << Human Paladin --Goblin Assassins (8)
    .complete 28794,1 << Human Priest --Goblin Assassins (8)
    .complete 28795,1 << Human Rogue --Goblin Assassins (8)
    .complete 28796,1 << Human Warlock --Goblin Assassins (8)
    .complete 28797,1 << Human Warrior --Goblin Assassins (8)
    .complete 29081,1 << !Human --Goblin Assassins (8)
    .complete 31144,1 << Human Death Knight/Human Monk --Goblin Assassins (8)
    .mob Goblin Assassin
step
    #requires Soldiers
    #loop
    .goto 425,34.99,38.24,0
    .goto 425,35.55,37.73,8,0
    .goto 425,34.99,38.24,8,0
    .goto 425,34.47,39.42,8,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Paxton|r
    .turnin 28806 >>Turn in Fear No Evil << Human Hunter
    .turnin 28808 >>Turn in Fear No Evil << Human Mage
    .turnin 28809 >>Turn in Fear No Evil << Human Paladin
    .turnin 28810 >>Turn in Fear No Evil << Human Priest
    .turnin 28811 >>Turn in Fear No Evil << Human Rogue
    .turnin 28812 >>Turn in Fear No Evil << Human Warlock
    .turnin 28813 >>Turn in Fear No Evil << Human Warrior
    .turnin 29082 >>Turn in Fear No Evil << !Human
    .turnin 63447 >>Turn in Fear No Evil << Human Death Knight/Human Monk
    .target Brother Paxton
step
    #label Rear
    .goto 425,35.73,39.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Willem|r
    .turnin 28791 >>Turn in They Sent Assassins << Human Hunter
    .turnin 28792 >>Turn in They Sent Assassins << Human Mage
    .turnin 28793 >>Turn in They Sent Assassins << Human Paladin
    .turnin 28794 >>Turn in They Sent Assassins << Human Priest
    .turnin 28795 >>Turn in They Sent Assassins << Human Rogue
    .turnin 28796 >>Turn in They Sent Assassins << Human Warlock
    .turnin 28797 >>Turn in They Sent Assassins << Human Warrior
    .turnin 29081 >>Turn in They Sent Assassins << !Human
    .turnin 31144 >>Turn in They Sent Assassins << Human Death Knight/Human Monk
    .accept 28817 >>Accept The Rear is Clear << Human Hunter
    .accept 28818 >>Accept The Rear is Clear << Human Mage
    .accept 28819 >>Accept The Rear is Clear << Human Paladin
    .accept 28820 >>Accept The Rear is Clear << Human Priest
    .accept 28821 >>Accept The Rear is Clear << Human Rogue
    .accept 28822 >>Accept The Rear is Clear << Human Warlock
    .accept 28823 >>Accept The Rear is Clear << Human Warrior
    .accept 29083 >>Accept The Rear is Clear << !Human
    .accept 31145 >>Accept The Rear is Clear << Human Death Knight/Human Monk
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
    #completewith next
    >>Kill |cRXP_ENEMY_Blackrock Invaders|r. Loot them for their |cRXP_LOOT_Blackrock Orc Weapons|r
    .complete 26389,1 --Blackrock Orc Weapon (8)
    .mob Blackrock Invader
step
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
    >>|cRXP_WARN_Channel|r |T308321:0|t[Milly's Fire Extinguisher] |cRXP_WARN_on the fires throughout the Northshire Vineyards|r
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
    >>Kill |cRXP_ENEMY_Blackrock Invaders|r. Loot them for their |cRXP_LOOT_Blackrock Orc Weapons|r
    .complete 26389,1 --Blackrock Orc Weapon (8)
    .mob Blackrock Invader
step
    #completewith next
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milly Osworth|r and |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 26391 >>Turn in Extinguishing Hope
    .target +Milly Osworth
    .goto 425,33.38,54.67
    .turnin 26389 >>Turn in Blackrock Invasion
    .accept 26390 >>Accept Ending the Invasion!
    .goto 425,33.56,53.04
    .target +Marshal McBride
step
    .goto 425,64.97,48.38
    >>Kill |cRXP_ENEMY_Kurtok the Slayer|r
    .complete 26390,1 --Kurtok the Slayer (1)
    .mob Kurtok the Slayer
step
    #completewith next
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step
    .goto 425,33.56,53.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 26390 >>Turn in Ending the Invasion!
    .accept 54 >>Accept Report to Goldshire
    .target Marshal McBride
step
    #optional
    #completewith next
    .goto 37,46.877,48.018,20,0
    .goto 37,45.563,47.738,15 >> Travel toward |cRXP_FRIENDLY_Falkhaan Isenstrider|r
    .skill riding,75,1
step
    .goto 37,45.563,47.738
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falkhaan Isenstrider|r
    .accept 2158 >>Accept Rest and Relaxation
    .target Falkhaan Isenstrider
]])

RXPGuides.RegisterGuide([[
#version 1
#group RXP Cataclysm 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 6-9 Elwynn Forest
#next 9-11 Dun Morogh
#defaultfor Human/Dwarf/Gnome

<< Alliance

step << Dwarf
#xprate >1.19
    .goto 27,53.124,49.995
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharek Blackstone|r
    .turnin 24493 >>Turn in Don't Forget About Us
	.target Tharek Blackstone
    .isOnQuest 24493
step << Dwarf/Gnome
#xprate >1.19
    #optional
    #completewith Belm
    .goto 27,54.083,50.335,8,0
    .goto 27,54.277,50.312,8,0
    .goto 27,54.485,50.847,10 >> Enter the Thunderbrew Distillery. Travel toward |cRXP_FRIENDLY_Innkeeper Belm|r inside
    .subzoneskip 2102
step << Gnome
#xprate >1.19
    .goto 27,54.485,50.847
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r inside
    .turnin 26380,2 >>Turn in Bound for Kharanos
	.target Innkeeper Belm
    .isOnQuest 26380
--XX not sure how to do this otherwise
step << Dwarf/Gnome
#xprate >1.19
    #label Belm
    .goto 27,54.485,50.847
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r inside
    .home >>Set your Hearthstone to Thunderbrew Distillery
	.target Innkeeper Belm
step << Dwarf/Gnome/DarkIronDwarf
#xprate >1.19
    .goto 27,54.723,50.607,8,0
    .goto 27,54.784,50.629,8,0
    .goto 27,54.733,50.815,8,0
    .goto 27,54.733,50.815
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gremlock Pilsnor|r inside in the backroom
    .accept 6387 >>Accept Honor Students
	.target Gremlock Pilsnor
step << cata Shaman
    #xprate <1.2
    .xp 7
step << cata Shaman
    #xprate <1.2
    .goto 1426/0,-536.50000,-5581.50000
    .train 331 >> Train |T136052:0|tHeaing Wave at the Kharanos Inn
step << Gnome
#xprate >1.19
    #optional
    #questguide
    .goto 27,53.713,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tharran|r
    .turnin 26373 >>Turn in On to Kharanos
	.target Captain Tharran
    .isOnQuest 26373
step << Dwarf/Gnome
    .goto 1426/0,-497.50000,-5664.00000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brolan Galebeard|r
    .target Brolan Galebeard
    .turnin 6387 >>Turn in Honor Students
    .accept 6391 >>Accept Ride to Ironforge
step << Dwarf/Gnome
#completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brolan Galebeard|r
    .target Brolan Galebeard
    .goto 1426/0,-497.50000,-5664.00000
    .fly Ironforge >>Fly to Ironforge
step << Dwarf/Gnome
    .goto 1455/0,-1118.50000,-4707.30029
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Golnir Bouldertoe|r
    .target Golnir Bouldertoe
    .turnin 6391 >>Turn in Ride to Ironforge
    .accept 6388 >>Accept Gryth Thurden
step << Dwarf/Gnome
    .goto 1455/0,-1154.90002,-4820.70020
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    .target Gryth Thurden
    .turnin 6388 >>Turn in Gryth Thurden
    .accept 6392 >>Accept Return to Gremlock
step << Dwarf/Gnome
#completewith next
    .goto Ironforge,55.501,47.743
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    .target Gryth Thurden
    .fly Goldshire >> Fly to Goldshire
step << Human
    #completewith GSReport
    .goto 37,41.71,52.74,-1
    .goto 37,39.48,60.53,-1
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .isOnQuest 2158
    .skill riding,75,1
step
    #label GSReport
    .goto 37,42.11,65.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 54 >>Turn in Report to Goldshire << Human
    .accept 62 >>Accept The Fargodeep Mine
	.target Marshal Dughan
step << Human
    .goto 37,41.708,65.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smith Argus|r
    .accept 26393 >>Accept A Swift Message
	.target Smith Argus
step << Human
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
step << Human
    .goto 37,43.77,65.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Farley|r
    .turnin 2158 >>Turn in Rest and Relaxation
    .home >>Set your Hearthstone to Lion's Pride Inn
	.target Innkeeper Farley
step << skip
    #optional
    #completewith RemyTT
    .goto 37,41.95,67.16,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farmer|r next to |cRXP_FRIENDLY_Remy "Two Times"|r if you wish to train Professions
    .target Lien Farner
step
    #optional
    #completewith next
    .goto 37,43.23,65.95,5,0
    .goto 37,43.13,65.74,5,0
    .goto 37,42.93,65.71,6,0
    .goto 37,42.14,67.26,12 >> Travel toward |cRXP_FRIENDLY_Remy "Two Times"|r
step
    #label RemyTT
    .goto 37,42.14,67.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remy "Two Times"|r
    .accept 47 >>Accept Gold Dust Exchange
	.target Remy "Two Times"
step
    #optional
    #completewith Necklace1
    .goto 37,38.22,83.41,0
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r. Loot them for their |cRXP_LOOT_Large Candles|r and |cRXP_LOOT_Gold Dust|r
    .complete 60,1 --8/8 Large Candle
    .complete 47,1 --10/10 Gold Dust
	.mob Kobold Tunneler
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r and |cRXP_FRIENDLY_Ma Stonefield|r
    .accept 85 >>Accept Lost Necklace
    .goto 37,34.486,84.253
    .target +"Auntie" Bernice Stonefield
    .accept 88 >>Accept Princess Must Die!
    .goto 37,34.66,84.48
	.target +Ma Stonefield
    .xp <6,1
step
    #optional
    #label Necklace1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .accept 85 >>Accept Lost Necklace
    .goto 37,34.486,84.253
    .target "Auntie" Bernice Stonefield
step
    #completewith Billy1
    .goto 37,38.22,83.41,0
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r. Loot them for their |cRXP_LOOT_Large Candles|r and |cRXP_LOOT_Gold Dust|r
    .complete 60,1 --8/8 Large Candle
    .complete 47,1 --10/10 Gold Dust
	.mob Kobold Tunneler
	.mob Kobold Miner
step
    #label Billy1
    .goto 37,43.13,85.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 85 >> Turn in Lost Necklace
    .accept 86 >> Accept Pie for Billy
    .target Billy Maclure
step
    #completewith TommyJoe
    .goto 37,41.69,86.91,0
    .goto 37,32.54,85.26,0
    >>Kill |cRXP_ENEMY_Stonetusk Boars|r. Loot them for their |cRXP_LOOT_Tender Boar Meat|r
    .complete 86,1 --Tender Boar Meat (4)
    .mob Stonetusk Boar
step
    .goto 37,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maybell Maclure|r inside
    .accept 106 >> Accept Young Lovers
    .target Maybell Maclure
step
    #optional
    .goto 37,41.69,86.91
    .xp 6 >> Grind to level 6
    .mob Stonetusk Boar
step
    .goto 37,34.66,84.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ma Stonefield|r
    .accept 88 >>Accept Princess Must Die!
	.target Ma Stonefield
step
    #optional
    #completewith PrincessEnd
    .goto 37,38.22,83.41,0
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r. Loot them for their |cRXP_LOOT_Large Candles|r and |cRXP_LOOT_Gold Dust|r
    .complete 60,1 --8/8 Large Candle
    .complete 47,1 --10/10 Gold Dust
	.mob *Kobold Tunneler
step << skip
    .goto 37,33.64,87.76,15 >>|cRXP_WARN_[CHEST] Check for the |cRXP_PICK_Chest|r inside the stables. Loot it if it's up|r
    .isOnQuest 60
step
    #loop
    #optional
	.line 37,32.48,86.81,33.41,86.16,33.32,84.95,32.58,84.26,32.04,85.20,32.48,86.81
    .goto 37,33.32,84.95,0
    .goto 37,32.04,85.20,20,0
    .goto 37,32.58,84.26,20,0
    .goto 37,33.32,84.95,20,0
    .goto 37,33.41,86.16,20,0
    .goto 37,32.48,86.81,20,0
    >>Kill |cRXP_ENEMY_Princess|r. Loot her for her |cRXP_LOOT_Brass Collar|r and |cRXP_LOOT_Tender Boar Meat|r
    .complete 88,1 --1/1 Brass Collar
    .complete 86,1 --Tender Boar Meat (4)
    .disablecheckbox
	.mob Princess
    .itemcount 60401,<4
    .isOnQuest 86
step
    #loop
    #label PrincessEnd
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
--XX Will users struggle if they're still level 6?
step
    #label TommyJoe
    .goto 37,29.840,85.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tommy Joe Stonefield|r
    .turnin 106 >> Turn in Young Lovers
    .accept 111 >> Accept Speak with Gramma
    .target Tommy Joe Stonefield
step
    #loop
    .goto 37,41.69,86.91,0
    .goto 37,32.54,85.26,0
    .goto 37,31.25,85.42,40,0
    .goto 37,32.26,85.70,40,0
    .goto 37,32.35,86.66,40,0
    .goto 37,33.18,86.66,40,0 --Yes it's the same Y coordinate
    .goto 37,33.64,85.47,40,0
    .goto 37,31.93,83.57,40,0
    >>Kill |cRXP_ENEMY_Stonetusk Boars|r. Loot them for their |cRXP_LOOT_Tender Boar Meat|r
    .complete 86,1 --Tender Boar Meat (4)
    .mob Stonetusk Boar
step
#sticky
#label princessT
    .goto 37,34.66,84.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ma Stonefield|r
    .turnin 88 >>Turn in Princess Must Die!
	.target Ma Stonefield
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .goto 37,34.486,84.253
    .turnin 86 >> Turn in Pie for Billy
    .target "Auntie" Bernice Stonefield
step << Human
#xprate <1.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .goto 37,34.486,84.253
    .target "Auntie" Bernice Stonefield
    .accept 84 >> Accept Back to Billy
step
#requires princessT
    .goto 37,34.94,83.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gramma Stonefield|r inside
    .turnin 111 >> Turn in Speak with Gramma
    .accept 107 >> Accept Note to William
    .target Gramma Stonefield
step << Human
#xprate <1.2
    #completewith Goldtooth
    .goto 37,38.22,83.41,0
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r. Loot them for their |cRXP_LOOT_Large Candles|r and |cRXP_LOOT_Gold Dust|r
    .complete 60,1 --8/8 Large Candle
    .complete 47,1 --10/10 Gold Dust
	.mob *Kobold Tunneler
step << Human
#xprate <1.2
    .goto 37,43.13,85.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 84 >> Turn in Back to Billy
    .accept 87 >> Accept Goldtooth
    .target Billy Maclure
step
    #xprate >1.59
    #optional
    .maxlevel 10,endOfTheGuide
step << Human
#xprate <1.2
    #label Goldtooth
    .goto Elwynn Forest,40.08,80.62
    >>Kill |cRXP_ENEMY_Goldtooth|r |cRXP_WARN_outside|r the mine. Loot him for |cRXP_LOOT_Bernice's Necklace|r
    .complete 87,1 --Collect Bernice's Necklace (x1)
    .mob Goldtooth
step << skip
    #optional
    .goto 37,38.22,83.41,40 >>|cRXP_WARN_[RARE] Check for |cRXP_ENEMY_Narg the Taskmaster|r. Kill him if he's up|r
	.unitscan Narg the Taskmaster
    .isOnQuest 60
    .noflyable
step
    #completewith next
    .goto 37,38.37,81.52,30,0
    .goto 37,40.69,81.74
    >>Explore Fargodeep Mine
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
    .mob *Kobold Tunneler
    .mob *Kobold Miner
step
    #label scoutm1
    .goto 37,38.37,81.52,30,0
    .goto 37,40.69,81.74
    >>Explore Fargodeep Mine
    .complete 62,1 --Scout through the Fargodeep Mine
step
#xprate <1.2
#requires scoutm1
    #optional
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
    .xp 6+2275 >> Grind to 2275+/3600xp
    .mob Kobold Tunneler
    .mob Kobold Miner
--XX 625 (Gold Dust) 700 (Goldtooth) - Ensure "A Fishy Peril"
step << Human
#xprate <1.2
    .goto 37,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .turnin 87 >> Turn in Goldtooth
    .target "Auntie" Bernice Stonefield
--XX Early turnin XP gate for level 8? No idea how good/bad xp will be by now. Can be made optional/turned in later but I wanted to skip The Escape since you can fly Eastvale at 6+ and go north for checking rares instead
step << Human
    #completewith Kelp
    .hs >> Hearth to Goldshire
    .subzoneskip 87
step << !Human
#completewith next
    .deathskip >> Die and respawn at Goldshire
    .subzoneskip 87
step
    #label Kelp
    #xprate >1.19 << Human
    .goto 37,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Pestle|r
    .turnin 60 >> Turn in Kobold Candles
    .turnin 107 >> Turn in Note to William
    .target William Pestle
step << Human
    #label Kelp
    #xprate <1.2
    .goto 37,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Pestle|r
    .turnin 60 >> Turn in Kobold Candles
    .turnin 107 >> Turn in Note to William
    .accept 112 >> Accept Collecting Kelp
    .target William Pestle
step
    #completewith next
    .goto 37,43.23,65.95,5,0
    .goto 37,43.13,65.74,5,0
    .goto 37,42.93,65.71,6,0
    .goto 37,42.14,67.26,12 >>Return to |cRXP_FRIENDLY_Remy "Two Times"|r
step
    .goto 37,42.14,67.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remy "Two Times"|r
    .turnin 47 >> Turn in Gold Dust Exchange
    .accept 40 >> Accept A Fishy Peril
	.target Remy "Two Times"
step << Hunter cata
    .goto 37,40.854,65.902
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Benjamin Foxworthy|r
    .trainer >> Train your class spells
    .target Benjamin Foxworthy
step << Paladin cata
    .goto 37,41.074,65.953
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Wilhelm|r
    .trainer >> Train your class spells
    .target Brother Wilhelm
step << Warrior cata
    .goto 37,41.069,65.825
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Train your class spells
    .target Lyria Du Lac
step << Warlock cata
    #completewith next
    .goto 37,44.54,65.76,15 >> Travel down into the Goldshire Inn basement
step << Warlock cata
    .goto 37,44.389,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillian Crowe|r
    .trainer >> Train your class spells
    .target Maximillian Crowe
step << Mage/Priest/Rogue cata
    #completewith next
    .goto 37,43.86,66.40,15 >> Travel up stairs in the Goldshire Inn
step << Mage cata
    .goto 37,43.246,66.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .trainer >> Train your class spells
    .target Zaldimar Wefhellt
step << Priest cata
    .goto 37,43.282,65.720
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Josetta|r
    .trainer >> Train your class spells
    .target Priestess Josetta
step << Rogue cata
    .goto 37,43.872,65.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keryn Sylvius|r
    .trainer >> Train your class spells
    .target Keryn Sylvius
step << Human
    #xprate <1.2
    .goto 37,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 40 >> Turn in A Fishy Peril
    .turnin 62 >> Turn in The Fargodeep Mine
    .accept 35 >> Accept Further Concerns
    .accept 76 >> Accept The Jasperlode Mine
    .target Marshal Dughan
    .isOnQuest 112
step
    #optional << Human
    .goto 37,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 40 >> Turn in A Fishy Peril
    .accept 35 >> Accept Further Concerns
    .turnin 62 >> Turn in The Fargodeep Mine
    .target Marshal Dughan
step
    #xprate >1.59
    #optional
    .maxlevel 10,endOfTheGuide
step << Human
    #xprate <1.2
    #completewith Frond
    #label ChargerMurloc
    .goto 37,42.105,65.927
    >>|cRXP_WARN_When the 20-second timer expires (20 seconds after accepting the ride), log out and then back on whilst on the |cRXP_FRIENDLY_Stormwind Charger|r to dismount it|r
    .vehicle >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r to ride the |cRXP_FRIENDLY_Stormwind Charger|r toward |cRXP_FRIENDLY_Guard Thomas|r
    .timer 20,Start to Logout when timer ends
    .target Marshal Dughan
    .isOnQuest 76
    .skipgossip 240,1
    .skill riding,75,1
step << Human
    #xprate <1.2
    #optional
    #completewith Frond
    #requires ChargerMurloc
    .goto 37,56.23,66.64
    >>|cRXP_WARN_When the 20-second timer expires (20 seconds after accepting the ride), log out and then back on whilst on the |cRXP_FRIENDLY_Stormwind Charger|r to dismount it|r
    .subzone 18 >> Travel to the Crystal Lake
    .isOnQuest 76
    .skill riding,75,1
step << Human
    #xprate <1.2
    #label Frond
    #loop
    .goto 37,56.23,66.64,0
    .goto 37,56.23,66.64,40,0
    .goto 37,57.65,65.14,40,0
    .goto 37,57.29,62.51,40,0
    .goto 37,55.14,63.48,40,0
    .goto 37,54.79,66.42,40,0
    >>Kill |cRXP_ENEMY_Murloc Steamrunners|r and |cRXP_ENEMY_Murlocs|r. Loot them for their |cRXP_LOOT_Crystal Kelp Frond|r
    .complete 112,1 --Crystal Kelp Frond (4)
    .mob Murloc Steamrunner
    .mob Murloc
    .isOnQuest 112
step << Human
    #xprate <1.2
    #optional
    #completewith next
    .goto 37,61.65,53.93,12,0
    .goto 40,48.05,87.33
    .subzone 54 >>Enter the Jasperlode Mine
    .isOnQuest 76
step << Human
    #xprate <1.2
    .goto 40,44.22,67.89,12,0
    .goto 40,38.71,60.84,12,0
    .goto 40,35.92,52.81
    >>Follow the middle path inside Jasperlode Mine
    .complete 76,1 --Scout Through the Jasperlode Mine (1)
    .isOnQuest 76
step << Human
    #xprate <1.2
    #completewith Thomas
    .goto 37,61.58,70.04,0
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .isOnQuest 76
    .skill riding,75,1
step << Human
    #xprate <1.2
    .goto 40,38.71,60.84,12,0
    .goto 40,44.22,67.89,12,0
    .goto 37,61.82,53.88,12,0
    .subzone 54,1 >>Exit Jasperlode Mine
    .isOnQuest 76
    .skill riding,<75,1
step
    #xprate >1.19 << !Human
    #completewith Thomas
    .goto 37,42.105,65.927
    .vehicle >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r to ride the |cRXP_FRIENDLY_Stormwind Charger|r toward |cRXP_FRIENDLY_Guard Thomas|r
    .timer 90,Further Concerns RP
    .target Marshal Dughan
    .skipgossip 240,1
    .subzoneskip 87,1 --Goldshire
step
    #label Thomas
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClick the |cRXP_PICK_Bounty Board|r and talk to |cRXP_FRIENDLY_Guard Thomas|r
    --.accept 46 >>Accept Bounty on Murlocs
    .accept 26152 >>Accept WANTED: James Clark
    .goto 37,74.025,72.310
    .turnin 35 >>Turn in Further Concerns
    .accept 37 >>Accept Find the Lost Guards
    .accept 52 >>Accept Protect the Frontier
    .goto 37,73.973,72.177
    .target +Guard Thomas
step
    #completewith James
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
    .goto 37,72.653,60.323
    >>Click |cRXP_PICK_A half-eaten body|r on the ground
    .turnin 37 >>Turn in Find the Lost Guards
    .accept 45 >>Accept Discover Rolf's Fate
step
    #label James
    .goto 37,78.87,67.20,10,0
    .goto 37,78.637,67.157
    >>Kill |cRXP_FRIENDLY_James Clark|r inside. Loot him for |cRXP_LOOT_James Clark's Head|r and the |T134939:0|t|cRXP_LOOT_[Gold Pickup Schedule]|r
    >>|cRXP_WARN_Use the |T134939:0|t|cRXP_LOOT_[Gold Pickup Schedule]|r to start the quest|r
    .complete 26152,1 --James Clark's Head (1)
    .collect 1307,1,123,1 --Gold Pickup Schedule (1)
    .accept 123 >>Accept The Collector
    .mob James Clark
    .use 1307
--step
--    .goto 37,79.462,68.715
--    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Timberlain|r
--    .accept 83 >>Accept Fine Linen Goods
--    .target Sara Timberlain
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
    #optional
    #completewith StoneCairn
    .goto 37,87.15,64.63,0
    .goto 37,81.56,58.15,0
    .goto 37,87.15,64.63,60,0
    >>Kill |cRXP_ENEMY_Prowlers|r and |cRXP_ENEMY_Gray Forest Wolves|r
    >>Kill any |cRXP_ENEMY_Young Forest Bears|r you see
    .complete 52,1 --Kill Prowler or Forest Wolf (8)
    .mob +*Prowler
    .mob +*Gray Forest Wolf
    .complete 52,2 --Kill Young Forest Bear (5)
    .mob +Young Forest Bear
step
    #completewith next
    .goto 37,80.88,53.78,0
    .goto 37,80.63,62.25,0
    .goto 37,82.79,60.12,0
    .goto 37,84.20,61.55,20,0
    >>Loot |cRXP_LOOT_Bundles of Wood|r on the ground next to the trees
    .complete 5545,1 -- Bundle of Wood (8)
step
    .goto 37,79.795,55.510
    >>Click |cRXP_PICK_Rolf's corpse|r on the ground
    .turnin 45 >>Turn in Discover Rolf's Fate
    .accept 71 >>Accept Report to Thomas
step
    #sticky
    #label PTFrontier
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
step
    #requires PTFrontier
    .goto 37,73.973,72.177
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Thomas|r
    --.turnin 46 >> Turn in Bounty on Murlocs
    .turnin 52 >> Turn in Protect the Frontier
    .turnin 71 >> Turn in Report to Thomas
    .accept 59 >> Accept Cloth and Leather Armor
    .target Guard Thomas
--XX     #optional if above not skipped
step
    .goto 37,71.02,80.67
    >>Kill |cRXP_ENEMY_Morgan the Collector|r inside. Loot him for |cRXP_LOOT_The Collector's Ring|r
    .complete 147,1 --The Collector's Ring (1)
    .mob Morgan the Collector
step
    .goto 37,79.462,68.715
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 59 >> Turn in Cloth and Leather Armor
    .target Sara Timberlain
step
    .goto 37,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Supervisor Raelen|r
    .turnin 5545 >> Turn in A Bundle of Trouble
    .target Supervisor Raelen
step
    .goto 37,81.860,66.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Patterson|r
    .turnin 147 >>Turn in Manhunt
    .target Marshal Patterson
    .isQuestComplete 147
step << Hunter
--TODO: COORDS
    .target Rallic Finn
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rallic Finn|r
    >>Buy a |T135489:0|t[Laminated Recurve Bow]
    .collect 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.6
step << Human
    #optional
    #completewith hs1
    .hs >> hearth to Goldshire
    .cooldown item,6948,<0,1
step << Human
    #completewith hs1
    #xprate <1.2
    .goto 37,81.829,66.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Goss the Swift|r
    .fly Goldshire >> Fly to Goldshire
    .target Goss the Swift
    .subzoneskip 87
    .zoneskip 37,1
    .cooldown item,6948,>0,1
step
    #optional
    #label endOfTheGuide
step << Human !Paladin !Warrior !Rogue
    #xprate >1.19
    .goto 37,81.829,66.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Goss the Swift|r
    .fly Gol'Bolar Quarry >> Fly to Gol'Bolar Quarry
    .target Goss the Swift
    .cooldown item,6948,>0,1
step << Human
#xprate <1.2
    .goto 37,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Pestle|r
    .turnin 112 >> Turn in Collecting Kelp
    .target William Pestle
    .isQuestComplete 112

step << Human
#xprate <1.2
    .goto 37,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 76 >> Turn in The Jasperlode Mine
    --.accept 239 >> Accept Westbrook Garrison Needs Help!
    .target Marshal Dughan
    .isQuestComplete 76
--XX Can skip rest of steps and fly to Dun Morogh from here if level 10+? #Optional if above step not skipped
step
#label hs1
--Melee classes need to buy weapon upgrades:
step << Human
#xprate <1.2
    #completewith next
    #label FlySW
    .goto 37,41.715,64.636
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartlett the Brave|r
    .fly Stormwind >> Fly to Stormwind << Rogue/Paladin/Warrior
    .fly Gol'Bolar Quarry >> Fly to Gol'Bolar Quarry << !Rogue !Paladin !Warrior
	.target Bartlett the Brave
    .zoneskip Stormwind City
    .itemStat 16,QUALITY,<7
step << Human (Warrior/Paladin)
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Buy a|r |T135350:0|t[Claymore] |cRXP_BUY_from her|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 1198,1 -- Claymore (1)
    .money <0.2142
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Marda Weller
step << Human Rogue
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Buy a|r |T135346:0|t[Cutlass] |cRXP_BUY_from her|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 851,1 -- Cutlass (1)
    .money <0.1618
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
    .target Marda Weller
    .xp >11,1
    .xp <10,1
step << Human Rogue
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Buy a|r |T132402:0|t[Hatchet] |cRXP_BUY_from her|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 853,1 -- Hatchet (1)
    .money <0.1927
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .target Marda Weller
    .xp >12,1
    .xp <11,1
step <<Human (Warrior/Paladin)
    #optional
    #completewith end
    +|cRXP_WARN_Equip the|r |T135350:0|t[Claymore]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Human Rogue
    #optional
    #completewith end
    +|cRXP_WARN_Equip the|r |T135346:0|t[Cutlass] |cRXP_WARN_in your mainhand|r
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Human Rogue
    #optional
    #completewith end
    +|cRXP_WARN_Equip the|r |T132402:0|t[Hatchet] |cRXP_WARN_in your mainhand|r
    .use 853
    .itemcount 853,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
step << Human (Rogue/Paladin/Warrior)
    .goto 84,70.938,72.472,-1
    .goto 37,81.829,66.556,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r or |cRXP_FRIENDLY_Goss the Swift|r
    .fly Gol'Bolar Quarry >> Fly to Gol'Bolar Quarry
	.target Dungar Longdrink
    .zoneskip 27 --Dun Morogh
    .target Goss the Swift

step << Dwarf/Gnome
#completewith next
    .hs >> Hearth to Kharanos
    .zoneskip Dun Morogh
step << Dwarf/Gnome
    .goto 27,54.733,50.815
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gremlock Pilsnor|r inside in the backroom
    .turnin 6392 >>Turn in Return to Gremlock
	.target Gremlock Pilsnor
--TODO: Training for dwarf/gnomes
step << Dwarf/Gnome
    .goto 27,53.802,52.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brolan Galebeard|r
    .fly Gol'Bolar Quarry >> Fly to Gol'Bolar Quarry
	.target Brolan Galebeard
step << Human
    .abandon 26394 >> Abandon all the Elwynn Forest quests from your quest log
step
#label end
.zone Dun Morogh >> Head to Eastern Dun Morogh
]])
