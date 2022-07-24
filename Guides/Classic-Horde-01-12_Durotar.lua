RXPGuides.RegisterGuide([[
#classic
<< Horde
#name 1-10 Durotar
#version 1
#group RestedXP Horde 1-22
#defaultfor Troll/Orc
#next 10-12 Durotar

step << !Orc !Troll
    #sticky
    #completewith next
    .goto Durotar,43.3,68.5
    +You have selected a guide meant for Orcs and Trolls. You should choose the same starter zone that you start in
step
    .goto Durotar,43.3,68.5
    .accept 4641 >>Accept Your Place In The World
step << Warlock
    #sticky
    #completewith next
    +Kill Boars for 10c+ of vendor trash
    .goto Durotar,44.0,71.3,60,0
step << Warlock
    .goto Durotar,42.6,69.0
    .accept 1485 >>Accept Vile Familiars
step << Warrior/Shaman
    #sticky
    #completewith next
    +Kill Boars for 10c+ of vendor trash
    .goto Durotar,44.2,65.9,40,0
step << Warrior/Shaman
    .goto Durotar,42.6,67.3
    .vendor >>Vendor trash. Vendor armor if less than 10c
step << Warrior
    .goto Durotar,42.9,69.4
    .train 6673 >>Train Battle Shout
step << Shaman
    .goto Durotar,42.4,69.0
    .train 8017 >>Train Rockbiter Weapon
step
    .goto Durotar,42.1,68.4
    .turnin 4641 >>Turn in Your Place In The World
    .accept 788 >>Accept Cutting Teeth
step << Warlock
    .goto Durotar,40.6,68.4
    .vendor >>vendor trash at the demon trainer
step << Warlock
     .goto Durotar,40.6,68.5
    .train 348 >>Train Immolate
step << !Warlock
	#som
	#phase 3-6
	#completewith BoarsX
    .goto Durotar,41.9,63.7,0
	>>Kill Boars whilst doing other quests
    .complete 788,1 --Mottled Boar (10)
step << !Warlock
    #sticky
    #label mboars
	#era/som
    .goto Durotar,41.9,63.7
    .complete 788,1 --Mottled Boar (10)
step << Warlock
    #completewith next
	>>Kill Mottled Boars en route to Vile Familiars. Try to get level 2 before getting to Familiars. Don't sit and drink for these
    .complete 788,1 --Mottled Boar (10)
step << Warlock
    #label WarlockBoars
    .goto Durotar,45.0,57.4,90 >> Run to the Familiars
step << Warlock
    .goto Durotar,45.3,56.9
    >>Kill Vile Familiars for their heads
    .complete 1485,1 --Vile Familiar Head (6)
step << Warlock
	#completewith BoarAndyW
    .goto Durotar,40.6,62.6,0
    >>Finish off killing the Mottled Boars
    .complete 788,1 --Mottled Boar (10)
step << Warlock
	>>Grind boars en route
    .goto Durotar,40.6,62.6
    .accept 790 >>Accept Sarkoth
step << !Warlock
    .goto Durotar,40.6,62.6
    .accept 790 >>Accept Sarkoth
step
    >>Kill Sarkoth. Loot his claw
    .goto Durotar,40.7,65.2,30,0
    .goto Durotar,40.7,67.3
    .complete 790,1 --Sarkoth's Mangled Claw (1)
step
    #label BoarAndyW
    .goto Durotar,40.6,62.6
    .turnin 790 >>Turn in Sarkoth
    .accept 804 >>Accept Sarkoth
step << !Warlock
    #requires mboars
step << Warlock
    .goto Durotar,40.6,62.6
    >>Finish off killing the Mottled Boars
    .complete 788,1 --Mottled Boar (10)
step << Warlock
	#era/som
    .xp 3+850 >> Grind to 850+/1400xp on the way back to town
step << Warlock
	#som
	#phase 3-6
    .xp 3 >> Grind to level 3 on the way back to town
step << Warlock
	#era/som
	.goto Durotar,42.6,67.3
    .vendor >>Vendor trash & buy 10 water
step << Warlock
	#som
	#phase 3-6
	.goto Durotar,42.6,67.3
    .vendor >>Vendor trash & buy 10 water
step << Warlock
    .goto Durotar,42.6,69.0
    .turnin 1485 >>Turn in Vile Familiars
    .accept 1499 >>Accept Vile Familiars
step << Warlock
    >>Choose the dagger and equip it. Remember to summon your Imp
	.goto Durotar,42.9,69.1
    .turnin 1499 >>Turn in Vile Familiars
    .accept 794 >>Accept Burning Blade Medallion
step
	#era/som
    .goto Durotar,42.1,68.3
    .turnin 788 >>Turn in Cutting Teeth
    .turnin 804 >>Turn in Sarkoth
    .accept 789 >>Accept Sting of the Scorpid
    .accept 2383 >>Accept Simple Parchment << Orc Warrior
    .accept 3065 >>Accept Simple Tablet << Troll Warrior
    .accept 3082 >>Accept Etched Tablet << Troll Hunter
    .accept 3083 >>Accept Encrypted Tablet << Troll Rogue
    .accept 3084 >>Accept Rune-Inscribed Tablet << Troll Shaman
    .accept 3085 >>Accept Hallowed Tablet << Troll Priest
    .accept 3086 >>Accept Glyphic Tablet << Troll Mage
    .accept 3087 >>Accept Etched Parchment << Orc Hunter
    .accept 3088 >>Accept Encrypted Parchment << Orc Rogue
    .accept 3089 >>Accept Rune-Inscribed Parchment << Orc Shaman
    .accept 3090 >>Accept Tainted Parchment << Orc Warlock
step
	#som
	#phase 3-6
    .goto Durotar,42.1,68.3
    .turnin 804 >>Turn in Sarkoth
    .turnin 788 >>Turn in Cutting Teeth
    .accept 2383 >>Accept Simple Parchment << Orc Warrior
    .accept 3065 >>Accept Simple Tablet << Troll Warrior
    .accept 3082 >>Accept Etched Tablet << Troll Hunter
    .accept 3083 >>Accept Encrypted Tablet << Troll Rogue
    .accept 3084 >>Accept Rune-Inscribed Tablet << Troll Shaman
    .accept 3085 >>Accept Hallowed Tablet << Troll Priest
    .accept 3086 >>Accept Glyphic Tablet << Troll Mage
    .accept 3087 >>Accept Etched Parchment << Orc Hunter
    .accept 3088 >>Accept Encrypted Parchment << Orc Rogue
    .accept 3089 >>Accept Rune-Inscribed Parchment << Orc Shaman
    .accept 3090 >>Accept Tainted Parchment << Orc Warlock
	.isQuestComplete 788
step
	#som
	#phase 3-6
    .goto Durotar,42.1,68.3
    .turnin 804 >>Turn in Sarkoth
    .accept 2383 >>Accept Simple Parchment << Orc Warrior
    .accept 3065 >>Accept Simple Tablet << Troll Warrior
    .accept 3082 >>Accept Etched Tablet << Troll Hunter
    .accept 3083 >>Accept Encrypted Tablet << Troll Rogue
    .accept 3084 >>Accept Rune-Inscribed Tablet << Troll Shaman
    .accept 3085 >>Accept Hallowed Tablet << Troll Priest
    .accept 3086 >>Accept Glyphic Tablet << Troll Mage
    .accept 3087 >>Accept Etched Parchment << Orc Hunter
    .accept 3088 >>Accept Encrypted Parchment << Orc Rogue
    .accept 3089 >>Accept Rune-Inscribed Parchment << Orc Shaman
    .accept 3090 >>Accept Tainted Parchment << Orc Warlock
step << Orc Rogue
      .goto Durotar,41.3,68.0
    .turnin 3088 >>Turn in Encrypted Parchment
step << Troll Rogue
      .goto Durotar,41.3,68.0
    .turnin 3083 >>Turn in Encrypted Tablet
step << Orc Warlock
    #completewith next
	.goto Durotar,40.6,68.4
    .vendor >>Vendor trash at the demon trainer
step << Orc Warlock
     .goto Durotar,40.6,68.5
    .turnin 3090>>Turn in Tainted Parchment
    .trainer >> Train your class spells
step << Shaman/Priest/Mage
    .goto Durotar,42.6,67.3
    .vendor >>Vendor trash & buy 10 water
step << Warrior/Rogue
    .goto Durotar,42.6,67.3
    .vendor >>Vendor trash
step << Hunter
    .goto Durotar,42.6,67.3
    .vendor >>Vendor trash. Buy arrows until your Quiver is full (1000 arrows)
step
    #era
	.goto Durotar,42.7,67.3
    .accept 4402 >>Accept Galgar's Cactus Apple Surprise
step << Orc Hunter
    .goto Durotar,42.8,69.3
    .turnin 3087 >>Turn in Etched Parchment
step << Troll Hunter
    .goto Durotar,42.8,69.3
    .turnin 3082 >>Turn in Etched Tablet
step << Troll Mage
    .goto Durotar,42.5,69.0
    .turnin 3086 >>Turn in Glyphic Tablet
    .trainer >> Train your class spells
step << Troll Priest
    .goto Durotar,42.4,68.8
    .turnin 3085 >>Turn in Hallowed Tablet
    .trainer >> Train your class spells
step << Troll Shaman
    .goto Durotar,42.4,69.0
    .turnin 3084 >>Turn in Rune-Inscribed Tablet
step << Orc Shaman
    .goto Durotar,42.4,69.0
    .turnin 3089 >>Turn in Rune-Inscribed Parchment
step << Orc Warrior
    .goto Durotar,42.9,69.4
    .turnin 2383 >>Turn in Simple Parchment
step << Troll Warrior
    .goto Durotar,42.9,69.4
    .turnin 3065 >>Turn in Simple Tablet
step << !Warlock
    .goto Durotar,42.9,69.1
    .accept 792 >>Accept Vile Familiars
step
    .goto Durotar,44.6,68.7
    .accept 5441 >>Accept Lazy Peons
step
       #era
	#sticky
    #label Apples
    >>Loot the Cacti that you see with apples on them
    .complete 4402,1 --Cactus Apple (10)
step
    #sticky
    #label Peons
   .use 16114 >>Wake up any sleeping Peons around the trees with Foreman's Blackjack (put it on your bars to make using it easier)
    .complete 5441,1 --Peons Awoken (5)
step << !Warlock
	#era/som
    #sticky
    #completewith imps
    .goto Durotar,47.1,65.2,30,0
    >>Kill Scorpions for some tails en route to the cave
    .complete 789,1 --Scorpid Worker Tail (10)
step << Warlock
	#era/som
    >>Kill Scorpions for their tails
    .complete 789,1 --Scorpid Worker Tail (10)
    .goto Durotar,47.1,65.2,80,0
    .goto Durotar,46.6,58.2,80,0
    .goto Durotar,39.8,63.5
step << !Warlock
    #label imps
    .goto Durotar,45.2,56.8
    >>Kill Imps in front of the cave
    .complete 792,1 --Vile Familiar (12)
step << !Warlock
	#era/som
    >>Finish off the Scorpion Tails
    .goto Durotar,39.8,63.5
    .complete 789,1 --Scorpid Worker Tail (10)
step
    #era
    #requires Apples
step
    #requires Peons
step
    #era
    .goto Durotar,44.0,65.3
    >>Finish looting the Cactus Apples
    .complete 4402,1 --Cactus Apple (10)
step
	#label BoarsX
    .goto Durotar,47.09,57.93
   .use 16114 >>Finish waking the Peons around the trees. Backtrack if you are struggling to find any sleeping.
    .complete 5441,1 --Peons Awoken (5)
step << !Warlock
	#som
	#phase 3-6
    .goto Durotar,41.9,63.7
	>>Finish killing Boars
    .complete 788,1 --Mottled Boar (10)
step
    #era
    .goto Durotar,42.7,67.2
    .turnin 4402 >>Turn in Galgar's Cactus Apple Surprise
step << !Mage !Priest !Warlock
    .goto Durotar,42.6,67.3
    .vendor >>Vendor trash
step << Mage/Priest/Warlock
    .goto Durotar,42.6,67.3
    .vendor >>Vendor trash. Buy 10 water
step
	#era/som
    .goto Durotar,42.1,68.3
    .turnin 789 >>Turn in Sting of the Scorpid
step << !Warlock
	#som
	#phase 3-6
    .goto Durotar,42.1,68.3
    .turnin 788 >>Turn in Cutting Teeth
step << Shaman
    .goto Durotar,42.4,69.1
    .accept 1516 >>Accept Call of Earth
    .trainer >> Train your class spells
step << Shaman
    .goto Durotar,42.9,69.1
    >>Choose the staff
    .turnin 792 >>Turn in Vile Familiars
    .accept 794 >>Accept Burning Blade Medallion
step << Mage
    .goto Durotar,42.5,69.0
    .trainer >> Train your class spells
step << Priest
    .goto Durotar,42.4,68.8
    .trainer >> Train your class spells
step << !Shaman !Warlock
    .goto Durotar,42.9,69.1
    .turnin 792 >>Turn in Vile Familiars
    .accept 794 >>Accept Burning Blade Medallion
step << Hunter
    .goto Durotar,42.8,69.3
    .trainer >> Train your class spells
step << Warrior
    .goto Durotar,42.9,69.4
    .trainer >> Train your class spells
step
    .goto Durotar,44.6,68.7
    .turnin 5441 >>Turn in Lazy Peons
    .accept 6394 >>Accept Thazz'ril's Pick
step << Shaman
    #sticky
	#label Hooves
    >>Kill Felstalkers for Hooves
    .complete 1516,1 --Felstalker Hoof (2)
step
    >>Run into the cave. Go into the middle room and loot the Pick
    .goto Durotar,45.2,56.8,60,0
    .goto Durotar,43.7,53.8
    .complete 6394,1 --Thazz'ril's Pick (1)
step
    #sticky
	#label Yarrog
    .goto Durotar,44.7,54.0,30,0
    .goto Durotar,43.4,52.0,30,0
    >>Kill Yarrog. Loot him for the Medallion
    .goto Durotar,42.7,53.0
    .complete 794,1 --Burning Blade Medallion (1)
step << !Shaman
	#som
	#phase 3-6
    .xp 5+650 >> Grind to 650+/2800xp
step << !Shaman
	#som
	#phase 1-2
    .xp 5+1225 >> Grind to 1225+/2800xp
step << !Shaman
	#era
    .xp 5+1680 >> Grind to 1680+/2800xp
step << Shaman
	#era/som
	#requires Hooves
    .xp 5+690 >> Grind to 690+/2800xp
step << Shaman
	#som
	#phase 3-6
	#requires Hooves
    .xp 5+200 >> Grind to 200+/2800xp
step
    #requires Yarrog
	.hs >>Hearth to Valley of Trials
step
    .goto Durotar,44.6,68.6
    .turnin 6394 >>Turn in Thazz'ril's Pick
step
    >>Save the healing potion you get, you might need it later for the centaurs
    .goto Durotar,42.8,69.1
    .turnin 794 >>Turn in Burning Blade Medallion
    .accept 805 >>Accept Report to Sen'jin Village
step << !Shaman
    .xp 6 >> Grind to level 6
step << Priest
    .goto Durotar,42.4,68.8
    .accept 5649 >> In Favor of Spirituality
    .trainer >> Train your class spells
step << Mage
    .goto Durotar,42.5,69.0
    .trainer >> Train your class spells
step << Shaman
    .goto Durotar,42.4,69.2
    .turnin 1516 >>Turn in Call of Earth
    .accept 1517 >>Accept Call of Earth
step << Hunter
    .goto Durotar,42.8,69.3
    .trainer >> Train your class spells
step << Warrior
    .goto Durotar,42.9,69.4
    .trainer >> Train your class spells
step << Rogue
    .goto Durotar,41.3,68.0
    .trainer >> Train your class spells
step << Warlock
    .goto Durotar,40.6,68.5
    .trainer >> Train your class spells
    .goto Durotar,40.6,68.4
    .vendor >> Buy the Blood Pact book if you have money after training (otherwise buy it later)
step << Shaman
    .goto Durotar,43.0,71.2,22,0
    .goto Durotar,41.5,73.3,14,0
    .goto Durotar,40.8,74.1,14,0
    .goto Durotar,41.8,74.8,14 >>Run up the Hidden Path
step << Shaman
    >>Use the Earth Sapta in your bags
    .goto Durotar,44.0,76.2
    .turnin 1517 >>Turn in Call of Earth
    .accept 1518 >>Accept Call of Earth
step << Shaman
    .goto Durotar,42.4,69.1
    .turnin 1518 >>Turn in Call of Earth
    .trainer >> Train your class spells
step
    >>Leave the starting area
    .goto Durotar,52.1,68.3
    .accept 2161 >>Accept A Peon's Burden
step
	#era/som
    .goto Durotar,54.3,73.3,25,0
    .goto Durotar,54.5,75.0,25,0
    .goto Durotar,54.1,76.6,25,0
    .goto Durotar,54.1,76.6,0
    >>The Questgiver patrols a little
    .accept 786 >>Accept Thwarting Kolkar Aggression
step
    .goto Durotar,56.0,73.9
    .accept 817 >>Accept Practical Prey
step
    .goto Durotar,55.9,74.4
    .accept 818 >>Accept A Solvent Spirit
step
    .goto Durotar,55.9,74.7
    .turnin 805 >>Turn in Report to Sen'jin Village
    .accept 808 >>Accept Minshina's Skull
    .accept 826 >>Accept Zalazane
    .accept 823 >>Accept Report to Orgnil
step << Rogue
    .goto Durotar,56.29,73.40
    .vendor >> Buy the level 3 thrown from K'Waii and Equip them
step << Shaman
    .goto Durotar,56.5,73.1
    >>Repair your weapon. If you have enough money (5s 4c) buy a Walking Stick from Traxexir. Otherwise, skip this step (you'll come back later)
    .collect 2495,1 --Collect Walking Stick
step << Rogue
    .goto Durotar,56.5,73.1
     >>Repair your weapon. If you have enough money (4s 1c) buy a Stiletto from Traxexir. Otherwise, skip this step (you'll come back later)
    .collect 2494,1 --Collect Stiletto
step << Orc Warrior
    .goto Durotar,56.5,73.1
    >>Repair your weapon. If you have enough money (4s 84c) buy a Large Axe from Traxexir. Otherwise, skip this step (you'll come back later)
    .collect 2491,1 --Collect Large Axe
step << Troll Warrior
    .goto Durotar,56.5,73.1
    >>Repair your weapon. If you have enough money (5s 40c) buy a Tomahawk from Traxexir. Otherwise, skip this step (you'll come back later)
    .collect 2490,1 --Collect Tomahawk
step << Hunter
    .goto Durotar,56.5,73.1
    >>Repair your weapon. If you have enough money (2s 85c) buy a Hornwood Recurve Bow from Traxexir. Otherwise, skip this step (you'll come back later)
    .collect 2506,1 --Collect Hornwood Recurve Bow
step
	#era/som
    #sticky
    #completewith next
    .goto Durotar,59.7,71.7,50,0
    .goto Durotar,57.6,77.9,50,0
    >> Run down the beach, killing as many Crawlers and Makrura as possible for Mucus and Eyes. You do not have to finish this step here.
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
step
	#era/som
    .goto Durotar,52.1,83.3,75 >> Reach the end of the beach
step
	#era/som
    .goto Durotar,50.9,79.2,30 >>Enter the Kolkar base
step << Priest
	#era/som
    #sticky
	#softcore
    >>Start collecting 3 stacks of linen cloth as you quest throughout Durotar. This will be used to make your wand later
    >>Skip this step if you've already bought a wand or can get one cheap from the AH.
    .collect 2589,60 --Linen Cloth (60)
step << Priest
	#era/som
    #sticky
	#hardcore
    >>Start collecting 3 stacks of linen cloth as you quest throughout Durotar. This will be used to make your wand later
    .collect 2589,60 --Linen Cloth (60)
step
	#era/som
    .unitscan Warlord Kolkanis
    #sticky
    #completewith Bonfire
    +If the rare is up, kill it when you are level 7. Be sure to use the Healing Potion from earlier.
step
	#era/som
    >>Burn the scroll inside the tent, on the ground
    .goto Durotar,49.8,81.2
    .complete 786,1 --Attack Plan: Valley of Trials destroyed (1)
step
	#era/som
    >>Burn the scroll on the ground
    .goto Durotar,47.7,77.4
    .complete 786,2 --Attack Plan: Sen'jin Village destroyed (1)
step
	#era/som
    #label Bonfire
    >>Burn the scroll on the ground
    .goto Durotar,46.3,79.0
    .complete 786,3 --Attack Plan: Orgrimmar destroyed (1)
step
	#era/som
    #softcore
    .goto Durotar,57.5,73.3,200 >> Die at the Bonfire and respawn at the Spirit Healer, or run back
step << Shaman
	#era/som
    #softcore
    .goto Durotar,56.5,73.1
    >>Repair your weapon. If you have enough money (5s 4c) buy a Walking Stick from Traxexir. Otherwise, skip this step (you'll come back later)
	>>You can talk to him from outside
    .collect 2495,1 --Collect Walking Stick
step << Rogue
	#era/som
    #softcore
    .goto Durotar,56.5,73.1
     >>Repair your weapon. If you have enough money (4s 1c) buy a Stiletto from Traxexir. Otherwise, skip this step (you'll come back later)
	>>You can talk to him from outside
    .collect 2494,1 --Collect Stiletto
step << Orc Warrior
	#era/som
    #softcore
    .goto Durotar,56.5,73.1
    >>Repair your weapon. If you have enough money (4s 84c) buy a Large Axe from Traxexir. Otherwise, skip this step (you'll come back later)
	>>You can talk to him from outside
    .collect 2491,1 --Collect Large Axe
step << Troll Warrior
	#era/som
    #softcore
    .goto Durotar,56.5,73.1
    >>Repair your weapon. If you have enough money (5s 40c) buy a Tomahawk from Traxexir. Otherwise, skip this step (you'll come back later)
	>>You can talk to him from outside
    .collect 2490,1 --Collect Tomahawk
step << Hunter
	#era/som
    #softcore
    .goto Durotar,56.5,73.1
    >>Repair your weapon. If you have enough money (2s 85c) buy a Hornwood Recurve Bow from Traxexir. Otherwise, skip this step (you'll come back later)
	>>You can talk to him from outside
    .collect 2506,1 --Collect Hornwood Recurve Bow
step
    #softcore
    #completewith next
    .goto Durotar,57.3,53.5,120 >>Die at the northern tower outside of Tiragarde Keep. Respawn in Razor Hill
step
	#era/som
    #hardcore
    #completewith next
    .goto Durotar,50.9,79.2,50,0
    .goto Durotar,52.5,44.4,120 >>Leave the Kol'Kar base. Grind mobs on your way to Razor Hill
step
	#som
	#phase 3-6
    #hardcore
    #completewith next
    .goto Durotar,52.2,43.2,120 >>Travel to Razor Hill
step
    .goto Durotar,52.2,43.2
    .turnin 823 >>Turn in Report to Orgnil
    .accept 806 >>Accept Dark Storms
step
    >>Inside the bunker, top floor
    .goto Durotar,51.9,43.5
    .accept 784 >>Accept Vanquish the Betrayers
    .accept 837 >>Accept Encroachment
step
    .goto Durotar,51.1,42.4
    .accept 815 >>Accept Break a Few Eggs
step
    #completewith next
    .goto Durotar,50.2,43.1,15 >>Go up this path here
step
    >>Go up the tower
    .goto Durotar,49.9,40.3
    .accept 791 >>Accept Carry Your Weight
step << Shaman
    .goto Durotar,52.0,40.5
    >>Repair your weapon. If you have enough money (5s 4c) buy a Walking Stick from Uhgar. Otherwise, skip this step (you'll come back later)
    .collect 2495,1 --Collect Walking Stick
step << Rogue
    .goto Durotar,52.0,40.5
     >>Repair your weapon. If you have enough money (4s 1c) buy a Stiletto from Uhgar. Otherwise, skip this step (you'll come back later)
    .collect 2494,1 --Collect Stiletto
step << Orc Warrior
    .goto Durotar,52.0,40.5
    >>Repair your weapon. If you have enough money (4s 84c) buy a Large Axe from Uhgar. Otherwise, skip this step (you'll come back later)
    .collect 2491,1 --Collect Large Axe
step << Troll Warrior
    .goto Durotar,52.0,40.5
    >>Repair your weapon. If you have enough money (5s 40c) buy a Tomahawk from Uhgar. Otherwise, skip this step (you'll come back later)
    .collect 2490,1 --Collect Tomahawk
step << Hunter
	#completewith next
    .goto Durotar,53.0,41.0
    >>Repair your weapon. If you have enough money (2s 85c) buy a Hornwood Recurve Bow from Ghrawt. Otherwise, skip this step (you'll come back later)
    .collect 2506,1 --Collect Hornwood Recurve Bow
step << Hunter
    .goto Durotar,53.0,41.0
    .vendor >> Buy enough arrows from Ghrawt to fill your quiver with
step << Warrior/Rogue
    .goto Durotar,52.0,40.7
    .money <0.0020
    .train 2018 >> Train Blacksmithing. Blacksmithing allows you to make Sharpening stones (+2 weapon damage for 1 hour). You can skip Blacksmithing and Mining if you wish
step << Warrior/Rogue
    .goto Durotar,51.8,40.9
    .money <0.0010
    .trainer 2580 >> Train Mining. Cast “Find Minerals” in your spellbook
step << Warrior/Rogue
    .goto Durotar,53.0,42.0
    .money <0.0081
    .collect 2901,1 >> Buy a Mining Pick. Keep an eye out for veins to mine to make Sharpening Stones for your weapon with blacksmithing
step << !Warrior !Rogue !Hunter
    .goto Durotar,51.5,41.6
    .turnin 2161 >>Turn in A Peon's Burden
    .home >> Set your Hearthstone to Razor Hill
    .vendor >> Buy as much level 5 water as you can
step << Warrior/Rogue/Hunter
    .goto Durotar,51.5,41.6
    .turnin 2161 >>Turn in A Peon's Burden
    .home >> Set your Hearthstone to Razor Hill
    .vendor >> Buy up to 20 level 5 food
step << Priest
    .goto Durotar,54.3,42.9
    .turnin 5649 >> In Favor of Spirituality
    .accept 5648 >> Garments of Spirituality
step << Priest
    >>Use Lesser Heal Rank 2 and then Power Word: Fortitude on Grunt Kor'ja
    .goto Durotar,53.1,46.5
    .complete 5648,1 --Heal and fortify Grunt Kor'ja
step << Priest
    .goto Durotar,54.3,42.9
    .turnin 5648 >>Turn in Garments of Spirituality
step << Priest
	#som
	#phase 3-6
    #sticky
	#softcore
    >>Start collecting 3 stacks of linen cloth as you quest throughout Durotar. This will be used to make your wand later
    >>Skip this step if you've already bought a wand or can get one cheap from the AH.
    .collect 2589,60 --Linen Cloth (60)
step << Priest
	#som
	#phase 3-6
    #sticky
	#hardcore
    >>Start collecting 3 stacks of linen cloth as you quest throughout Durotar. This will be used to make your wand later
    .collect 2589,60 --Linen Cloth (60)
step
    #sticky
    #label KulTiras
    .goto Durotar,58.14,57.56,0
    >>Kill Kul Tiras mobs. Loot them for Scraps
    .complete 784,1 --Kul Tiras Sailor (10)
    .complete 784,2 --Kul Tiras Marine (8)
    .complete 791,1 --Canvas Scraps (8)
step
    .goto Durotar,59.2,58.3,25 >>Go inside the keep
step
    .goto Durotar,59.7,58.3
    >>Go to the top floor of the Keep. Kill Lieutenant Benedict and loot his key - be careful as he uses Shield Bash (Interrupt)
    .complete 784,3 --Lieutenant Benedict (1)
    .collect 4882,1 --Collect Benedict's Key (1)
step
    .goto Durotar,59.8,57.8,12,0
    .goto Durotar,59.9,57.5,12 >>Go up the stairs here
    >>Loot the chest. Accept the quest from the item
    .goto Durotar,59.3,57.6
    .collect 4881,1,830 --Collect Aged Envelope (1)
    .accept 830 >>Accept The Admiral's Orders
step
	#era
    .goto Durotar,58.4,57.2
    .xp 7+2195 >> Grind to 2195+/4500xp
step
	#som
	#phase 1-2
    .goto Durotar,58.4,57.2
    .xp 7+1890 >> Grind to 1890+/4500xp
step
	#som
	#phase 3-6
    .goto Durotar,58.4,57.2
    .xp 7+750 >> Grind to 750+/4500xp
step
    #softcore
    #requires KulTiras
    .goto Durotar,53.5,44.5,120 >> Die and respawn at the Spirit Healer, or run back
step
    #softcore
    .goto Durotar,51.9,43.5
    .turnin 784 >>Turn in Vanquish the Betrayers
    .accept 825 >>Accept From The Wreckage....
    .turnin 830 >>Turn in The Admiral's Orders
    .accept 831 >>Accept The Admiral's Orders
step
    #hardcore
    #requires KulTiras
    >>Run back to Razor Hill
    .goto Durotar,51.9,43.5
    .turnin 784 >>Turn in Vanquish the Betrayers
    .accept 825 >>Accept From The Wreckage....
    .turnin 830 >>Turn in The Admiral's Orders
    .accept 831 >>Accept The Admiral's Orders
step
    .goto Durotar,49.9,40.3
    .turnin 791 >>Turn in Carry Your Weight
step << Shaman
    .goto Durotar,52.0,40.5
    >>Repair your weapon. If you have enough money (5s 4c) buy a Walking Stick from Uhgar. Otherwise, skip this step (you'll come back later)
    .collect 2495,1 --Collect Walking Stick
step << Rogue
    .goto Durotar,52.0,40.5
     >>Repair your weapon. If you have enough money (4s 1c) buy a Stiletto from Uhgar. Otherwise, skip this step (you'll come back later)
    .collect 2494,1 --Collect Stiletto
step << Orc Warrior
    .goto Durotar,52.0,40.5
    >>Repair your weapon. If you have enough money (4s 84c) buy a Large Axe from Uhgar. Otherwise, skip this step (you'll come back later)
    .collect 2491,1 --Collect Large Axe
step << Troll Warrior
    .goto Durotar,52.0,40.5
    >>Repair your weapon. If you have enough money (5s 40c) buy a Tomahawk from Uhgar. Otherwise, skip this step (you'll come back later)
    .collect 2490,1 --Collect Tomahawk
step << Hunter
	#completewith next
    .goto Durotar,53.0,41.0
    >>Repair your weapon. If you have enough money (2s 85c) buy a Hornwood Recurve Bow from Ghrawt. Otherwise, skip this step (you'll come back later)
    .collect 2506,1 --Collect Hornwood Recurve Bow
step << Hunter
    .goto Durotar,53.0,41.0
    .vendor >> Buy enough arrows from Ghrawt to fill your quiver with
step << Warrior/Rogue
    .goto Durotar,52.0,40.7
    .money <0.0020
    .train 2018 >> Train Blacksmithing. Blacksmithing allows you to make Sharpening stones (+2 weapon damage for 1 hour). You can skip Blacksmithing and Mining if you wish
step << Warrior/Rogue
    .goto Durotar,51.8,40.9
    .money <0.0010
    .trainer 2580 >> Train Mining. Cast “Find Minerals” in your spellbook
step << Warrior/Rogue
    .goto Durotar,53.0,42.0
    .money <0.0081
    .collect 2901,1 >> Buy a Mining Pick. Keep an eye out for veins to mine to make Sharpening Stones for your weapon with blacksmithing
step << Shaman
    .goto Durotar,54.4,42.6
    .trainer >> Train your class spells
step << Priest
    .goto Durotar,54.3,42.9
    .trainer >> Train your class spells
step << Warrior
    .goto Durotar,54.2,42.5
    .trainer >> Train your class spells
step << Hunter
    .goto Durotar,51.8,43.5
    .trainer >> Train your class spells
step << Rogue
    .goto Durotar,52.0,43.7
    .trainer >> Train your class spells
step << Warlock
    .goto Durotar,54.4,41.2
    .trainer >> Train your class spells
    .goto Durotar,54.7,41.5
    .vendor >> Buy the Firebolt book if you have money after training (otherwise buy it later)
step << Warrior/Rogue
    .goto Durotar,54.2,41.9
    .money <0.01
    .trainer >>Train First Aid
step
    .goto Durotar,54.4,42.2
    .money <0.1250
    .vendor >>Buy a 6 slot bag from Jark
step << Priest/Warlock/Mage
    .goto Durotar,51.5,41.6
    .vendor >> Buy as much level 5 water as you can
step << Warrior/Rogue/Hunter
    .goto Durotar,51.5,41.6
    .vendor >> Buy up to 20 level 5 food
step
    #sticky
    #completewith Tools
    >>Kill some Makrura here for eyes/Crawlers for Mucus
    .complete 818,1 --Intact Makrura Eye (4)
    .complete 818,2 --Crawler Mucus (8)
step
    #label Tools
    >>Check the boat closest to the shore for the Toolboxes. Check other boats if you can't find these spawns. They can be a bit hard to see
    .goto Durotar,61.9,55.5,12 >> In the window underwater
    .goto Durotar,62.3,56.3,12 >> Underwater
    .goto Durotar,61.4,56.1,12 >> Near the shore
    .complete 825,1 --Gnomish Tools (3)
step
    #sticky
    #completewith Fur
    >>Kill all Tigers that you see for their Fur. This does not need to be finished now.
    .complete 817,1 --Durotar Tiger Fur (4)
step
    >>Swim to the Island. Loot Taillasher eggs on the ground on this island. They're usually guarded by a Taillasher
    .goto Durotar,68.8,71.5
    .complete 815,1 --Taillasher Egg (3)
step
    #sticky
    #completewith next
    >>Kill some Makrura here for Eyes & Crawlers for Mucus. This does not need to be finished now.
    .complete 818,1 --Intact Makrura Eye (4)
    .complete 818,2 --Crawler Mucus (8)
step
    .goto Durotar,66.9,80.0,175 >>Swim to the other island
step
    #sticky
    #completewith Trolls
    >>Kill the trolls in the area. Be careful as the Voodoo trolls heal
    .complete 826,1 --Hexed Troll (8)
    .complete 826,2 --Voodoo Troll (8)
step
    .goto Durotar,67.4,87.8
    >>Kill Zalazane. Save your Earth Shock for when he casts Healing Wave. Loot his head << Shaman
    >>Kill Zalazane. Save your Gouge for when he casts Healing Wave. Loot his head << Rogue
    >>Kill Zalazane. Be careful as he can heal (you may need a healing potion). Loot his head << !Shaman !Rogue
    .complete 826,3 --Zalazane's Head (1)
step
    #label Trolls
    .goto Durotar,67.4,87.8
    >>Loot one of the skulls on the ground
    .complete 808,1 --Minshina's Skull (1)
step
    #label Fur
    .goto Durotar,68.34,83.54
    >>Kill the rest of the trolls. Be careful as the Voodoo Trolls heal
    .complete 826,1 --Hexed Troll (8)
    .complete 826,2 --Voodoo Troll (8)
step
    >>Get the rest of the Tiger Fur
    .goto Durotar,64.7,88.5,90,0
    .goto Durotar,65.2,80.8,90,0
    .goto Durotar,59.9,83.6,90,0
    .goto Durotar,64.7,88.5,90,0
    .goto Durotar,65.2,80.8,90,0
    .goto Durotar,59.9,83.6,90,0
    .goto Durotar,59.9,83.6
    .complete 817,1 --Durotar Tiger Fur (4)
step
    #softcore
    .goto Durotar,57.5,73.3,200 >> Die and respawn at the Spirit Healer, or run back
step
    >> Loot the remaining Eyes and Mucus from the Makrura/Crawlers
    .goto Durotar,59.7,71.7,100,0
    .goto Durotar,57.6,77.9,100,0
    .goto Durotar,59.7,71.7,100,0
    .goto Durotar,57.6,77.9,100,0
    .goto Durotar,59.7,71.7
    .complete 818,1 --Intact Makrura Eye (4)
    .complete 818,2 --Crawler Mucus (8)
step
    .goto Durotar,56.48,73.11
    .vendor >> Vendor trash and repair at Trayexir. You can talk to him from outside the hut
step << Mage
    >>Go inside the tent
    .goto Durotar,56.3,75.1
    .trainer >> Train your class spells
step
	#completewith SkullX
    +Save the Faintly Glowing Skull from the turnin for later (you'll be told when to use it)
step
    .goto Durotar,55.9,74.7
    .turnin 808 >>Turn in Minshina's Skull
    .turnin 826 >>Turn in Zalazane
step
    .goto Durotar,56.0,74.3
    .turnin 818 >>Turn in A Solvent Spirit
step
    .goto Durotar,56.0,73.9
    .turnin 817 >>Turn in Practical Prey
step
	#era/som
    .goto Durotar,54.3,73.3
    .turnin 786 >>Turn in Thwarting Kolkar Aggression
step
	#som
	#phase 3-6
    .goto Durotar,43.8,39.1
    .xp 9+4500 >> Grind to 4500+/6500xp
step
	#som
	#phase 3-6
    .goto Durotar,51.1,42.4
    .turnin 815 >>Turn in Break a Few Eggs
step
	#som
	#phase 3-6
    .goto Durotar,51.9,43.5
    .turnin 825 >>Turn in From The Wreckage....
step << Shaman
	#som
	#phase 3-6
    .goto Durotar,54.4,42.5
    .accept 2983 >>Accept Call of Fire
    .trainer >> Train your class spells
step << Priest
	#som
	#phase 3-6
    .goto Durotar,54.3,42.9
    .trainer >> Train your class spells
step << Orc Warrior/Troll Warrior
	#som
	#phase 3-6
    .goto Durotar,54.2,42.5
    .accept 1505 >>Accept Veteran Uzzek
    .trainer >> Train your class spells
step << Rogue
	#som
	#phase 3-6
    .goto Durotar,52.0,43.7
    .trainer >> Train your class spells
step << Warrior/Rogue
	#som
	#phase 3-6
    .goto Durotar,54.2,41.9
    .money <0.01
    .train 3273 >>Train First Aid
step << Warlock
	#som
	#phase 3-6
    .goto Durotar,54.4,41.2
    .trainer >> Train your class spells
    .accept 1506 >>Accept Gan'Rul's Summons
step << Hunter
	#som
	#phase 3-6
    .goto Durotar,51.8,43.5
    .trainer >> Train your class spells
    .accept 6062 >>Accept Taming the Beast
step << Hunter
	#som
	#phase 3-6
    .goto Durotar,51.8,43.5
    .trainer >> Train your class spells
    .accept 6062 >>Accept Taming the Beast
step << Hunter
	#som
	#phase 3-6
    >>Click the Taming Rod in your bag on a Boar. Try to do it at max range (30 yards)
    .goto Durotar,51.5,50.0
    .complete 6062,1 --Tame a Dire Mottled Boar
step << Hunter
	#som
	#phase 3-6
    .goto Durotar,51.8,43.5
    .turnin 6062 >>Turn in Taming the Beast
    .accept 6083 >>Accept Taming the Beast
step << Hunter
	#som
	#phase 3-6
    >>Don't kill the Armored Scorpids you see. You'll need them later
    .goto Durotar,59.3,27.6
    .complete 6083,1 --Tame a Surf Crawler
step << Hunter
	#som
	#phase 3-6
    .goto Durotar,51.8,43.5
    .turnin 6083 >>Turn in Taming the Beast
    .accept 6082 >>Accept Taming the Beast
step << Hunter
	#som
	#phase 3-6
    .use 15920 >>Click the Taming Rod in your bag on a Scorpid. Try to do it at max range (30 yards)
    .goto Durotar,59.3,27.6
    .complete 6082,1 --Tame an Armored Scorpid
step << Hunter
	#som
	#phase 3-6
    .goto Durotar,51.8,43.5
    .turnin 6082 >>Turn in Taming the Beast
    .accept 6081 >>Accept Training the Beast
step << Hunter
	#som
	#phase 3-6
    .goto Durotar,53.0,41.0
    .vendor >>vendor trash. Buy level 10 arrows until your Quiver is full (1000 arrows)
step
    .goto Durotar,48.9,48.5
    >>Kill Quilboars and Scouts in the area
    .complete 837,1 --Razormane Quilboar (4)
    .complete 837,2 --Razormane Scout (4)
step
    .goto Durotar,43.8,39.1
    >>Kill Dustrunners and Battleguards in the area. Dustrunners cast Rejuvenation (Heal) and Battleguards are tanky.
    .complete 837,3 --Razormane Dustrunner (4)
    .complete 837,4 --Razormane Battleguard (4)
step << Warlock/Hunter
	#era/som
    .xp 9+4500 >> Grind to 4500+/6500xp
step << Warlock/Hunter
	#era/som
    .goto Durotar,51.1,42.4
    .turnin 815 >>Turn in Break a Few Eggs
step << Warlock/Hunter
	#era/som
    .goto Durotar,51.9,43.5
    .turnin 825 >>Turn in From The Wreckage....
    .turnin 837 >>Turn in Encroachment
step << Warlock
	#era/som
    .goto Durotar,54.4,41.2
    .trainer >> Train your class spells
    .accept 1506 >>Accept Gan'Rul's Summons
step << Hunter
	#era/som
    .goto Durotar,51.8,43.5
    .trainer >> Train your class spells
    .accept 6062 >>Accept Taming the Beast
step << Hunter
	#era/som
    .use 15917 >>Click the Taming Rod in your bag on a Boar. Try to do it at max range (30 yards)
    .goto Durotar,51.5,50.0
    .complete 6062,1 --Tame a Dire Mottled Boar
step << Hunter
	#era/som
    .goto Durotar,51.8,43.5
    .turnin 6062 >>Turn in Taming the Beast
    .accept 6083 >>Accept Taming the Beast
step << Hunter
	#era/som
   .use 15919 >>Don't kill the Armored Scorpids you see. You'll need them later
    .goto Durotar,59.3,27.6
    .complete 6083,1 --Tame a Surf Crawler
step << Hunter
	#era/som
    .goto Durotar,51.8,43.5
    .turnin 6083 >>Turn in Taming the Beast
    .accept 6082 >>Accept Taming the Beast
step << Hunter
	#era/som
    .use 15920 >>Click the Taming Rod in your bag on a Scorpid. Try to do it at max range (30 yards)
    .goto Durotar,59.3,27.6
    .complete 6082,1 --Tame an Armored Scorpid
step << Hunter
	#era/som
    .goto Durotar,51.8,43.5
    .turnin 6082 >>Turn in Taming the Beast
    .accept 6081 >>Accept Training the Beast
step << Hunter
	#era/som
    .goto Durotar,53.0,41.0
    .vendor >>vendor trash. Buy level 10 arrows until your Quiver is full (1000 arrows)
step
    .goto Durotar,43.1,30.3
    .accept 816 >>Accept Lost But Not Forgotten
step
    .goto Durotar,46.4,22.9
    .accept 834 >>Accept Winds in the Desert
step
    >>Loot the small sacks on the ground
    .goto Durotar,51.7,27.7
    .complete 834,1 --Sack of Supplies (5)
step
	#label SkullX
    .goto Durotar,46.4,22.9
    .turnin 834 >>Turn in Winds in the Desert
    .accept 835 >>Accept Securing the Lines
step << Warlock
	#som
	#phase 3-6
	>>Run into Orgrimmar
    .goto Orgrimmar,48.3,45.3
    .turnin 1506 >>Turn in Gan'rul's Summons
    .accept 1501 >>Accept Creature of the Void
step << Warlock
	#softcore
	#som
	#phase 3-6
	#completewith next
	+Run onto a nearby Brazier. Spam Life Tap so you lose health, then die to the fire
	>>Alternatively, run into Ragefire Chasm and die to the mobs inside
step << Warlock
	#som
	#phase 3-6
    .goto Durotar,47.3,17.9,200 >> Exit Orgrimmar
step
    #completewith next
    .goto Durotar,41.7,25.5,120 >>Jump into Thunder Ridge
step
	#softcore
    .use 4945 >>Kill Fizzle and loot him for his Claw. Try to clear the mobs in the surrounding camps to make space. Killing his pet first makes sense a lot of the time. Use your Skull & health pot if needed. A good opener is to Sticky Glue him and walk back out of Shadow bolt range to kill his pet without getting hit by him.
	>>Group up for this quest if you're struggling
    .goto Durotar,41.9,26.0
    .complete 806,1 --Fizzle's Claw (1)
step
	#hardcore
    .use 4945 >>Kill Fizzle and loot him for his Claw. Try to clear the mobs in the surrounding camps to make space. Killing his pet first makes sense a lot of the time & use your Skull & healthpot if needed. A good opener is to Sticky Glue him and walk back out of Shadow bolt range to kill his pet without getting hit by him.
    .goto Durotar,41.9,26.0
    .complete 806,1 --Fizzle's Claw (1)
--N add a link for warrior/rogue? Also needs more specific wording per class
step
    #softcore
	#era/som
	.goto Durotar,41.5,18.6
    >> Fight your way out of the Thunder Ridge area or deathskip to the graveyard.
    .accept 812 >>Accept Need for a Cure
step << !Warrior !Shaman
	#som
	#phase 3-6
	.hs >> Hearth to Razor Hill
step
    #hardcore
	#era/som
    .goto Durotar,39.18,31.65,90,0
	.goto Durotar,41.5,18.6
    >> Fight your way out of the Thunder Ridge area
    .accept 812 >>Accept Need for a Cure
step
	#era/som
    #completewith next
    .goto Orgrimmar,49.0,94.2,80 >>Run into Orgrimmar
step << Rogue
	#era/som
    .goto Orgrimmar,48.13,80.55
    .vendor >> Buy your level 11 thrown from Trak'gen. Equip it when you're level 11
step << Hunter
	#era/som
    #completewith next
    .goto Orgrimmar,37.40,52.32
    .vendor >> Buy some apples from Shan'ti to feed to your pet
    .collect 4536,10 --Shiny Red Apple (10)
step
	#era/som
    .goto Orgrimmar,34.3,36.4
    .turnin 831 >>Turn in The Admiral's Orders
step
	#era/som
    .goto Orgrimmar,31.9,37.7
    .accept 5726 >>Accept Hidden Enemies
step << Hunter
	#era/som
    .goto Orgrimmar,66.0,18.5
    .turnin 6081 >>Turn in Training the Beast
step << Warlock
	#era/som
    .goto Orgrimmar,48.3,45.3
    .turnin 1506 >>Turn in Gan'rul's Summons
    .accept 1501 >>Accept Creature of the Void
step << Rogue
	#era/som
    .goto Orgrimmar,42.72,53.56
	.accept 1963 >> Accept The Shattered Hand
	.trainer >> Train your class spells
step
	#era/som
    .goto Orgrimmar,47.2,53.4
    .accept 813 >>Accept Finding the Antidote
    >>Put "Beast Training" on your bars. Remember to teach your pet skills later << Hunter
step
	#era/som
    >>Abandon Need for a Cure. This will remove the timer on the quest, but still allow you to still do it
    .abandon 812 >>Abandon Need for a Cure
step
	#era/som
    #completewith next
    .hs >> Hearth to Razor Hill
step << !Warlock !Hunter
	#era/som
    .goto Durotar,51.1,42.4
    .turnin 815 >>Turn in Break a Few Eggs
step << !Warlock !Hunter
	#era/som
    .goto Durotar,51.9,43.5
    .turnin 825 >>Turn in From The Wreckage....
    .turnin 837 >>Turn in Encroachment
step
	#som
	#phase 3-6
    .goto Durotar,51.9,43.5
    .turnin 837 >>Turn in Encroachment
step
    .goto Durotar,52.3,43.1
    .turnin 806 >>Turn in Dark Storms
    .accept 828 >>Accept Margoz
step << Shaman
	#era/som
    .goto Durotar,54.4,42.5
    .accept 2983 >>Accept Call of Fire
    .trainer >> Train your class spells
step << Priest
	#era/som
    .goto Durotar,54.3,42.9
    .trainer >> Train your class spells
step << Orc Warrior/Troll Warrior
	#era/som
    .goto Durotar,54.2,42.5
    .accept 1505 >>Accept Veteran Uzzek
    .trainer >> Train your class spells
step << Rogue
	#era/som
    .goto Durotar,52.0,43.7
    .trainer >> Train your class spells
step << Warrior/Rogue
	#era/som
    .goto Durotar,54.2,41.9
    .money <0.01
    .train 3273 >>Train First Aid
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde
#name 10-12 Durotar
#version 1
#group RestedXP Horde 1-22
#defaultfor Troll/Orc
#next 11-14 Silverpine Forest << Troll Rogue/Orc Rogue
#next 12-17 The Barrens << Troll !Rogue/Orc !Rogue

step << Hunter
    #completewith next
    .goto Durotar,52.98,41.03
    >>Buy the Laminated Recurve Bow (and arrows) from the vendor if you can afford it
    .collect 2507,1 --Laminated Recurve Bow (1)
step
    .goto Durotar,50.8,43.6
    .accept 840 >>Accept Conscript of the Horde
step << Warrior/Shaman
    .goto The Barrens,62.2,19.4
    .turnin 840 >>Turn in Conscript of the Horde
    .accept 842 >>Accept Crossroads Conscription
step << Warrior
    .goto The Barrens,61.4,21.1
    .turnin 1505 >>Turn in Veteran Uzzek
    .accept 1498 >>Accept Path of Defense
step << Orc Shaman/Troll Shaman
    .goto The Barrens,55.8,20.0
    .turnin 2983 >>Turn in Call of Fire
    .accept 1524 >>Accept Call of Fire
step << Warrior/Shaman
    .goto The Barrens,52.0,30.5,150 >> Run to the Crossroads
step << Warrior/Shaman
    .goto The Barrens,52.2,31.8
    .accept 870 >>Accept The Forgotten Pools
step << Warrior/Shaman
    .goto The Barrens,52.2,31.0
    .turnin 842 >>Turn in Crossroads Conscription
    .accept 844 >>Accept Plainstrider Menace
step << !Tauren Warrior/!Tauren Shaman
    .goto The Barrens,52.5,29.8
    .accept 6365 >>Accept Meats to Orgrimmar
step << Warrior/Shaman
    .goto The Barrens,51.9,30.3
    .accept 869 >>Accept Raptor Thieves
step << Warrior/Shaman
    .goto The Barrens,51.5,30.8
    .accept 871 >>Accept Disrupt the Attacks
    .accept 5041 >>Accept Supplies for the Crossroads
step << Warrior/Shaman
    .goto The Barrens,51.5,30.4
    .fp The Crossroads >> Get the The Crossroads flight path
step << !Tauren Warrior/!Tauren Shaman
    >>do NOT go to Orgrimmar
    .goto The Barrens,51.5,30.3
    .turnin 6365 >>Turn in Meats to Orgrimmar
    .accept 6384 >>Accept Ride to Orgrimmar << !Rogue
step << Warrior/Shaman
    .goto The Barrens,51.5,30.1
    .accept 848 >>Accept Fungal Spores
    .accept 1492 >>Accept Wharfmaster Dizzywig
step << Warrior/Shaman
    #hardcore
    #sticky
    #completewith next
    +This next quest can be quite hard, be extra careful
step << Warrior/Shaman
    #sticky
    #completewith next
    >>Collect the white mushrooms around The Forgotten Pools
    .complete 848,1 --Collect Fungal Spores (x4)
step << Warrior/Shaman
    >>Dive underwater to the bubble fissure
    .goto The Barrens,45.1,22.5
    .complete 870,1 --Explore the waters of the Forgotten Pools
step << Warrior/Shaman
    >>Collect the white mushrooms around The Forgotten Pools
    .goto The Barrens,45.2,23.3,40,0
    .goto The Barrens,45.2,22.0,40,0
    .goto The Barrens,44.6,22.5,40,0
    .goto The Barrens,43.9,24.4,40,0
    .goto The Barrens,45.2,23.3
    .complete 848,1 --Collect Fungal Spores (x4)
step << Warrior/Shaman
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer
step << Warrior/Shaman
    #softcore
    .turnin 848 >>Turn in Fungal Spores
    .accept 853 >>Accept Apothecary Zamah
step << Warrior/Shaman
    #hardcore
    >>Run back to The Crossroads
    .goto The Barrens,51.5,30.1
    .turnin 848 >>Turn in Fungal Spores
    .accept 853 >>Accept Apothecary Zamah
step << Warrior/Shaman
    .goto The Barrens,52.2,31.8
    .turnin 870 >>Turn in The Forgotten Pools
    .accept 877 >>Accept The Stagnant Oasis
step << Warrior/Shaman
    >>Run down the road. Be careful of higher level mobs en route
    .goto The Barrens,44.4,59.2
    .fp Camp Taurajo >> Get the Camp Taurajo flight path
step << Warrior/Shaman
    >>Go west into Mulgore and Look for Morin Cloudstalker. He patrols along the eastern road
    .goto Mulgore,59.7,62.5,70,0
    .goto Mulgore,51.1,58.6,70,0
    .goto Mulgore,51.1,58.6
    .accept 749 >>Accept The Ravaged Caravan
	.unitscan Morin Cloudstalker
step << Warrior/Shaman
	#som
	#phase 3-6
    .goto Mulgore,53.7,48.1
    .turnin 749 >>Turn in The Ravaged Caravan
step << Warrior/Shaman
	#era/som
    .goto Mulgore,48.7,59.3
    .accept 761 >>Accept Swoop Hunting
step << Warrior/Shaman
	#era/som
    .goto Mulgore,47.5,60.2
    .accept 767 >>Accept Rite of Vision
    .accept 746 >>Accept Dwarven Digging
step << Warrior/Shaman
	#era/som
    .goto Mulgore,47.3,62.0
    .accept 743 >>Accept Dangers of the Windfury
step << Warrior/Shaman
	#era/som
    .goto Mulgore,47.8,57.6
    .turnin 767 >>Turn in Rite of Vision
    .accept 771 >>Accept Rite of Vision
step << Warrior/Shaman
	#era/som
    .goto Mulgore,47.0,57.0
    .accept 766 >>Accept Mazzranache
step << Warrior/Shaman
	#era/som
    #sticky
    #label Mulgoreall
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
    .complete 761,1 --Trophy Swoop Quill (8)
step << Warrior/Shaman
	#era/som
	#completewith CaravanR
	.use 4854 >>Keep an eye out for Ghost Howl (rare wolf). He patrols all over northern Mulgore. Kill and loot him for the Demon Scarred Cloak. Accept the quest from the item
	.collect 4854,1,770
	.unitscan Ghost Howl
step << Warrior/Shaman
	#era/som
    .goto Mulgore,52.0,61.1,10,0
    .goto Mulgore,50.0,66.4,10,0
    .goto Mulgore,50.4,66.5,10,0
    .goto Mulgore,52.0,61.1,10,0
    .goto Mulgore,50.0,66.4,10,0
    .goto Mulgore,50.4,66.5,0
    >>Collect the 'Acorn' looking items on the ground, below the trees
    .complete 771,2 --Ambercorn (2)
step << Warrior/Shaman
	#era/som
    .goto Mulgore,53.7,66.3
    >>Loot the stones around the Well
    .complete 771,1 --Well Stone (2)
step << Warrior/Shaman
	#era/som
   .goto Mulgore,47.8,57.5
    .turnin 771 >>Turn in Rite of Vision
    .accept 772 >>Accept Rite of Vision
step << Warrior/Shaman
    .goto Thunder Bluff,32.0,66.9,60 >>Run to the lift and take it into Thunder Bluff
step << Warrior
    .goto Thunder Bluff,40.9,62.7
    .train 227 >>Train Staves
    .train 199 >>Train 2h Maces
step << Warrior/Shaman
    >>Go to the top floor of the tower
    .goto Thunder Bluff,45.6,52.0,25,0
    .goto Thunder Bluff,46.8,49.9
    .fp Thunder Bluff >> Get the Thunder Bluff flight path
step << Warrior/Shaman
	>>Go into the Thunder Bluff cave
    .goto Thunder Bluff,29.6,29.7,25,0
    .goto Thunder Bluff,23.0,21.1
    .turnin 853 >>Turn in Apothecary Zamah
step << Warrior/Shaman
	#era/som
	>>Run out of the cave, then leave Thunder Bluff by jumping down somewhere under the bridge
	>>Run to the cave south of you
    .goto Thunder Bluff,29.04,37.68,55,0
    .goto Mulgore,33.48,36.68,40,0
    .goto Mulgore,32.7,36.1
    .turnin 772 >>Turn in Rite of Vision
    .accept 773 >>Accept Rite of Wisdom
step << Warrior/Shaman
	#era/som
    >>Kill Harpies. Loot them for their Talons
    .goto Mulgore,31.9,41.7
    .complete 743,1 --Windfury Talon (8)
step << Warrior/Shaman
	#era/som
    .goto Mulgore,31.3,49.9
   >>Kill Dwarf mobs for Prospector's Picks
   .use 4702 >>Use the Picks on the Forge until you've broken 5 of them. This is done in the Dwarf camp.
	.collect 4702,5,746,1
    .complete 746,1 --Broken Tools (5)
--N needs testing
step << Warrior/Shaman
	#era/som
    .goto Mulgore,59.9,25.6
    .accept 833 >>Accept A Sacred Burial
step << Warrior/Shaman
	#era/som
    >>Kill Bristleback Interlopers in the area
    .goto Mulgore,61.5,21.9
    .complete 833,1 --Bristleback Interloper (8)
step << Warrior/Shaman
	#era/som
    .goto Mulgore,61.5,21.1
    .turnin 773 >>Turn in Rite of Wisdom
step << Warrior/Shaman
	#era/som
    .goto Mulgore,59.8,25.6
    .turnin 833 >>Turn in A Sacred Burial
step << Warrior/Shaman
	#era/som
    #requires Mulgoreall
	#label CaravanR
    .goto Mulgore,53.7,48.1
    .turnin 749 >>Turn in The Ravaged Caravan
    .accept 751 >>Accept The Ravaged Caravan
step << Warrior/Shaman
	#era/som
    .goto Mulgore,47.0,57.2
    .turnin 766 >>Turn in Mazzranache
step << Warrior/Shaman
	#era/som
	.isOnQuest 770
	.goto Mulgore,46.75,60.23
	>>Turn in the cloak. Be careful as this removes it from your character/inventory
    .turnin 770 >>Turn in The Demon Scarred Cloak
step << Warrior/Shaman
	#era/som
    .goto Mulgore,47.5,60.2
    .turnin 746 >>Turn in Dwarven Digging
step << Warrior/Shaman
	#era/som
    .goto Mulgore,47.4,62.0
    .turnin 743 >>Turn in Dangers of the Windfury
step << Warrior/Shaman
	#era/som
    .goto Mulgore,48.7,59.4
    .turnin 761 >>Turn in Swoop Hunting
step << Warrior/Shaman
	#era/som
    >>Look for Morin Cloudstalker. He patrols along the eastern road
    .goto Mulgore,51.1,58.6,70,0
    .goto Mulgore,59.7,62.5,70,0
    .goto Mulgore,51.1,58.6,70,0
    .goto Mulgore,59.7,62.5,70,0
    .goto Mulgore,51.1,58.6,70,0
    .goto Mulgore,59.7,62.5,70,0
    .goto Mulgore,59.7,62.5
    .turnin 751 >> Turn in The Ravaged Caravan
    .accept 764 >>Accept The Venture Co.
    .accept 765 >>Accept Supervisor Fizsprocket
	.unitscan Morin Cloudstalker
step << Warrior/Shaman
	#era/som
    #sticky
    #label Workers
    >>Kill the Venture Co mobs
    .goto Mulgore,63.0,44.3
    .complete 764,1 --Venture Co. Worker (14)
    .complete 764,2 --Venture Co. Supervisor (6)
step << Warrior/Shaman
	#era/som
    >>Run into the mine, then hug the right/east side. Kill Supervisor Fizsprocket. Loot him for his Clipboard
    .goto Mulgore,64.9,43.3
    .complete 765,1 --Fizsprocket's Clipboard (1)
step << Warrior/Shaman
	#era/som
    #requires Workers
    .xp 11+7150 >> Grind to 7150+/8700xp
step << Warrior/Shaman
	#era/som
    >>Look for Morin Cloudstalker. He patrols along the eastern road
    .goto Mulgore,51.1,58.6,70,0
    .goto Mulgore,59.7,62.5,70,0
    .goto Mulgore,51.1,58.6,70,0
    .goto Mulgore,59.7,62.5,70,0
    .goto Mulgore,51.1,58.6,70,0
    .goto Mulgore,59.7,62.5,70,0
    .goto Mulgore,59.7,62.5
    .turnin 764 >>Turn in The Venture Co.
    .turnin 765 >>Turn in Supervisor Fizsprocket
	.unitscan Morin Cloudstalker
step << Warrior/Shaman
    #completewith next
    .hs >>Hearth to Razor Hill
step << Shaman
	#level 12
    .goto Durotar,54.4,42.5
  .trainer >> Train your class spells
step << Orc Warrior/Troll Warrior
	#level 12
    .goto Durotar,54.2,42.5
    .trainer >> Train your class spells
step << Priest
    #sticky
    #label Linen
    >>Start collecting 3 stacks of linen cloth as you quest throughout Durotar. This will be used to make your wand later
    >>Skip this step if you already bought a wand, or can get one cheap from the AH
    .collect 2589,60 --Linen Cloth (60)
step << Troll Shaman/Orc Shaman
    .goto Durotar,36.6,58.0,25 >>Run up the mountain path
step << Troll Shaman/Orc Shaman
    .goto Durotar,38.6,59.0
    .turnin 1524 >>Turn in Call of Fire
    .accept 1525 >>Accept Call of Fire
step << Warrior
    .goto Durotar,54.4,42.2
    .vendor >>Buy 6 slot bags from Jark until you can't equip new bags
step << Hunter
    .goto Durotar,53.0,41.0
    .vendor >> Buy Laminated Recurve Bow if you have the money.
step
    .goto Durotar,56.4,20.1
    .turnin 828 >>Turn in Margoz
    .accept 827 >>Accept Skull Rock
step << Hunter
    .goto Durotar,57.2,12.0
    .spell 1515 >>Tame A Surf Crawler
step
	#era/som
    #label scorp2
    #sticky
    >>Kill Scorpions in the area for Poison Sacs
    .goto Durotar,55.7,15.7,0
    .goto Durotar,39.67,18.83,0
    .complete 813,1 --Venomtail Poison Sac (4)
step << Hunter
    .goto Durotar,55.06,9.91,60 >> Run to Skull Rock
step
	#era/som
    #sticky
    #label Collars2
    .goto Durotar,53.08,9.19,0
    >>Kill Burning Blade mobs in Skull Rock for Searing Collars, and until Lieutenant's Insignia drops
    .complete 827,1 --Searing Collar (6)
    .complete 5726,1 --Lieutenant's Insignia (1)
step
	#som
	#phase 3-6
    #sticky
    #label Collars2
    .goto Durotar,53.08,9.19,0
    >>Kill Burning Blade mobs in Skull Rock for Searing Collars
    .complete 827,1 --Searing Collar (6)
step << Warlock
    .goto Durotar,53.6,8.5,25,0
    .goto Durotar,51.8,8.1,25,0
    .goto Durotar,51.6,9.8
    >> Take the right path of the cave. Continue following the cave to loot the chest at the end of it.
    .complete 1501,1 --Tablet of Verga (1)
step
    >>Kill Gazz'uz for Eye of Burning Shadow. He can be in multiple areas of the cave.
    >>Use sticky glue on the Voidwalker to avoid being hit, and Healing Potions to restore health. Use LoS (line of sight) to avoid Gazz'uz's Shadow Bolts
    >>You can run to bodies of water found within the cave to evade the Voidwalker after killing Gazz'uz
    >>Be careful as he is VERY difficult. You can skip this quest if you need
    .goto Durotar,51.8,10.0
    .collect 4903,1,832 --Collect Eye of Burning Shadow
    .accept 832 >>Accept Burning Shadows
	.unitscan Gazz'uz
step
    #requires Collars2
    .goto Durotar,56.4,20.1
    .turnin 827 >>Turn in Skull Rock
    .accept 829 >>Accept Neeru Fireblade
step << Shaman
    #completewith next
    .goto Durotar,52.8,28.7,40 >> Go into the cave here
step << Shaman
    >>Kill the Burning Blade Cultists for the Pouch
    .goto Durotar,52.5,26.7
    .complete 1525,2 --Reagent Pouch (1)
step
    .goto Durotar,54.0,27.7,90,0
    .goto Durotar,51.3,23.5,90,0
    .goto Durotar,51.5,19.1,90,0
    .goto Durotar,54.0,27.7,90,0
    .goto Durotar,51.3,23.5,90,0
    .goto Durotar,51.5,19.1,90,0
    .goto Durotar,51.3,23.5
    >>Kill Harpies in the area
    .complete 835,1 --Dustwind Savage (12)
    .complete 835,2 --Dustwind Storm Witch (8)
step
    #softcore
    .deathskip >> Die and respawn at the Spirit Healer
step
    #softcore
    .goto Durotar,46.4,22.9
    .turnin 835 >>Turn in Securing the Lines
step
    #hardcore
    >>Run back through the cave, then back to the Goblin
    .goto Durotar,53.75,27.74,60,0
    .goto Durotar,51.75,27.40,60,0
    .goto Durotar,46.4,22.9
    .turnin 835 >>Turn in Securing the Lines
step
    #completewith next
	#requires scorp2
    .goto Durotar,45.50,11.70,70 >> Run into Orgrimmar
step << Rogue
	#som
	#phase 3-6
    .goto Orgrimmar,48.13,80.55
    .vendor >> Buy your level 11 thrown from Trak'gen. Equip it when you're level 11
step << Hunter
	#som
	#phase 3-6
    #completewith next
    .goto Orgrimmar,37.40,52.32
    .vendor >> Buy some apples from Shan'ti to feed to your pet
    .collect 4536,10 --Shiny Red Apple (10)
step
	#som
	#phase 3-6
    .goto Orgrimmar,34.3,36.4
    .turnin 831 >>Turn in The Admiral's Orders
step << Hunter
	#som
	#phase 3-6
    .goto Orgrimmar,66.0,18.5
    .turnin 6081 >>Turn in Training the Beast
step << Warrior/Shaman
    #requires scorp2
    .goto Orgrimmar,54.2,68.4
    .turnin 6384 >>Turn in Ride to Orgrimmar
    .accept 6385 >> Accept Doras the Wind Rider Master
step << Warrior/Shaman
    .goto Orgrimmar,45.2,63.8
    .turnin 6385 >> Turn in Doras the Wind Rider Master
    .accept 6386 >> Accept Return to the Crossroads
step
	#era/som
    #requires scorp2
    .goto Orgrimmar,31.8,37.8
    .turnin 5726 >>Turn in Hidden Enemies
step << Rogue
	#level 12
    .goto Orgrimmar,42.8,53.4
    .accept 1963 >> Accept The Shattered Hand
	.trainer >> Train your class spells
step << Rogue
    .goto Orgrimmar,42.8,53.4
    .accept 1963 >> Accept The Shattered Hand
step << Priest
    #sticky
    #label Robes
    #requires Linen
    >>Skip this step if you already bought a wand, or can get one cheap from the AH
    >>Go to the Tailoring trainer and learn Tailoring.
    >>Turn all of your linen into bolts. Learn Brown Linen Robe from the trainer & buy as many coarse thread as you need to make all the robes you can
    .goto Orgrimmar,63.28,50.68
    .collect 6238,9 --Brown Linen Robe (9)
step << Priest
    #sticky
    #requires Robes
    >>Skip this step if you already bought a wand or can get one cheap from the AH
    >>Train Enchanting. Start disenchanting all of the Brown Linen Robes you made earlier. If you didn't get any Lesser Magic Essence, check the vendor for one and buy it, or come back later
    >>Buy a Copper Rod, then make a Runed Copper Rod.
    >>Train Lesser Magic Wand from the trainer. Craft a Lesser Magic Wand.
    .goto Orgrimmar,53.77,38.37
    .collect 11287,1 --Lesser Magic Wand (1)
step
	#era/som
    .goto Orgrimmar,47.0,53.4
    .turnin 813 >>Turn in Finding the Antidote
step << Warlock
    .goto Orgrimmar,48.3,45.3
    .turnin 1501 >>Turn in Creature of the Void
    .accept 1504 >>Accept The Binding
step
	.isOnQuest 832
	.goto Orgrimmar,49.4,50.5
    .turnin 832 >>Turn in Burning Shadows
step
	.goto Orgrimmar,49.4,50.5
    .turnin 829 >>Turn in Neeru Fireblade
    .accept 809 >>Accept Ak'Zeloth
step
	.goto Orgrimmar,49.4,50.5
    .turnin 829 >>Turn in Neeru Fireblade
    .accept 809 >>Accept Ak'Zeloth
step << Warlock
    .goto Orgrimmar,49.5,50.0
    >>Use the Glyphs of Summoning to summon a voidwalker. Kill it
    .complete 1504,1 --Summoned Voidwalker (1)
step << Warlock
    >>You can now summon a Voidwalker
    .goto Orgrimmar,48.3,45.3
    .turnin 1504 >>Turn in The Binding
step
	#softcore
	#completewith next
    .goto Orgrimmar,52.76,48.95
	.deathskip >> Go into Ragefire Chasm in the Cleft of Shadow. Die to the mobs inside & respawn at the Spirit Healer.
step
	#era/som
	#softcore
    .goto Durotar,41.6,18.7
    .accept 812 >>Accept Need for a Cure
    .turnin 812 >>Turn in Need for a Cure
step
	#era/som
	#hardcore
	>>Run out of Orgrimmar
    .goto Durotar,41.6,18.7
    .accept 812 >>Accept Need for a Cure
    .turnin 812 >>Turn in Need for a Cure
step << Warrior
    .goto Durotar,42.01,24.33,90,0
    .goto Durotar,39.18,31.65
    >>Drop down into Thunder Ridge. Kill Lightning Hides and Thunder Lizards. Loot them for Singed Scales
    .complete 1498,1 --Singed Scale (5)
step
    >>Start killing crocodiles for the Amulet
    .goto Durotar,35.2,27.5,60,0
    .goto Durotar,35.7,57.8
    .complete 816,1 --Kron's Amulet (1)
step
    .goto Durotar,43.1,30.3
    .turnin 816 >>Turn in Lost But Not Forgotten
step << !Shaman !Warrior
    .goto The Barrens,62.2,19.4
    .turnin 840 >>Turn in Conscript of the Horde
    .accept 842 >>Accept Crossroads Conscription
step
    .goto The Barrens,62.3,20.1
    .turnin 809 >>Turn in Ak'Zeloth
    .accept 924 >>Accept The Demon Seed
step
    .goto The Barrens,62.3,20.0
    >>Loot the Purple Stone next to Ak'Zeloth. This item has a 30 minute timer, so be sure to be quick
    .turnin 926 >>Turn in Flawed Power Stone
step << Warrior
    .goto The Barrens,61.4,21.1
    .turnin 1498 >>Turn in Path of Defense
    .accept 1502 >>Accept Thun'grim Firegaze
step << Rogue
    #label BeakCave
    .goto The Barrens,47.6,19.2,70 >>Go to the cave surrounded by Burning Blade orcs
step << Rogue
    >>Right click the Altar
    .goto The Barrens,48.0,19.1
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
step << !Shaman !Warrior
    .goto The Barrens,52.0,30.5,150 >> Run to the Crossroads
step << !Shaman !Warrior
    .goto The Barrens,52.2,31.8
    .accept 870 >>Accept The Forgotten Pools
step << !Shaman !Warrior
    .goto The Barrens,52.2,31.0
    .turnin 842 >>Turn in Crossroads Conscription
    .accept 844 >>Accept Plainstrider Menace
step << Orc !Warrior !Shaman/Troll !Warrior !Shaman
    .goto The Barrens,52.5,29.8
    .accept 6365 >>Accept Meats to Orgrimmar
step << Shaman Troll/Shaman Orc/Warrior Orc/Warrior Troll
    .goto The Barrens,52.5,29.8
    .turnin 6386 >> Turn in Return to the Crossroads
step
    .goto The Barrens,51.99,29.89
	.home >> Set your hearth to Crossroads
step << !Shaman !Warrior
    .goto The Barrens,51.9,30.3
    .accept 869 >>Accept Raptor Thieves
step << !Shaman !Warrior
    .goto The Barrens,51.5,30.8
    .accept 871 >>Accept Disrupt the Attacks
    .accept 5041 >>Accept Supplies for the Crossroads
step << !Shaman !Warrior
    .goto The Barrens,51.5,30.4
    .fp The Crossroads >> Get the The Crossroads flight path
step << Orc !Warrior !Shaman/Troll !Warrior !Shaman
    >>do NOT go to Orgrimmar
    .goto The Barrens,51.5,30.3
    .turnin 6365 >>Turn in Meats to Orgrimmar
    .accept 6384 >>Accept Ride to Orgrimmar << !Rogue
step << !Shaman !Warrior
    .goto The Barrens,51.5,30.1
    .accept 848 >>Accept Fungal Spores
    .accept 1492 >>Accept Wharfmaster Dizzywig
step << Mage
	#era/som
    +If you're planning on leveling via AoE, choose the Barrens AoE Guide manually. Otherwise, choose the 12-17 Barrens Guide
step << Mage
	#som
	#phase 3-6
    +If you're planning on leveling via AoE, choose the Barrens AoE Guide manually. Otherwise, choose the 12-17 Barrens Guide. Do note with recent 100% quest xp SoM changes, Mage AoE grinding is worse than the quest route
step << Rogue
    .goto The Barrens,51.5,30.3
    .fly >> Fly to Orgrimmar
step << Rogue
    .goto Orgrimmar,54.2,68.4
    .turnin 6384 >>Turn in Ride to Orgrimmar
    .accept 6385 >> Accept Doras the Wind Rider Master
step << Rogue
    .goto Orgrimmar,45.2,63.8
    .turnin 6385 >> Turn in Doras the Wind Rider Master
    .accept 6386 >> Accept Return to the Crossroads
step << Rogue
    #sticky
    #completewith next
    .goto Durotar,50.8,13.8,40 >> Go to the Zeppelin tower. Take the zeppelin to Undercity
step << Rogue
    .zone Tirisfal Glades >>Arrive in Tirisfal
step << Rogue
	#som
	#phase 3-6
    .goto Tirisfal Glades,61.87,65.02,40 >> Run to Undercity
step << Rogue
	#som
	#phase 3-6
    .goto Tirisfal Glades,61.81,74.42,30 >> Run to the Elevator room
step << Rogue
	#som
	#phase 3-6
    >>Take one of the elevators down
    .goto Undercity,63.25,48.56
    .fp Undercity >> Get the Undercity flight path
step << Rogue
	#som
	#phase 3-6
    .money <0.3023
    .goto Tirisfal Glades,64.16,75.54
    >>Talk to Charles. Buy a Cutlass or Scimitar. You'll train Swords soon (Save 10 silver). Skip this if your weapon is better, or there's something better on the AH
    .vendor >> Buy a Cutlass or Scimitar & Ensure you still have 10 silver left.
step << Rogue
	#som
	#phase 3-6
    #softcore
    .goto Undercity,57.32,32.77
    .trainer >> Train Swords. If you didn't have enough to buy a cutlass earlier, check the AH for a weapon after
step << Rogue
	#completewith Barrens
    #som
    #phase 3-6
	.hs >> Hearth back to Crossroads if your hearth is up
step << Rogue
	#completewith next
    #som
    #phase 3-6
    .goto Tirisfal Glades,60.89,59.06,30,0
    .goto Tirisfal Glades,60.73,58.76
    .zone Durotar >> Take the zeppelin to Durotar
step << Rogue
    #som
    #phase 3-6
    >>Run to Razor Hill
    .goto Durotar,50.85,43.59
    .accept 840 >>Accept Conscript of the Horde
step << Rogue
	#label Barrens
    #som
    #phase 3-6
    .goto The Barrens,62.26,19.38
	.zone The Barrens >> Travel to The Barrens
step << Rogue
    #som
    #phase 3-6
    >>Run to The Barrens
    .goto The Barrens,62.26,19.38
    .turnin 840 >>Turn in Conscript of the Horde
    .accept 842 >>Accept Crossroads Conscription
step << Rogue
    #som
    #phase 3-6
    .goto The Barrens,52.23,31.01
    .turnin 842 >>Turn in Crossroads Conscription
    .accept 844 >>Accept Plainstrider Menace
]])
