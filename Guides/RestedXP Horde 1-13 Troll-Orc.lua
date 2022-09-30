RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 1-10 Durotar
#version 1
#group RestedXP Horde 1-30
#defaultfor Orc/Troll
#next 10-13 Durotar << Warrior/Shaman
#next 10-20 Eversong Woods / Ghostlands << !Warrior !Shaman
step << !Orc !Troll
    #sticky
    #completewith next
.goto Durotar,43.3,68.5
    +You have selected a guide meant for Orcs and Trolls. You should choose the same starter zone that you start in
step
    >> Talk to Kaltunk
    .goto Durotar,43.3,68.5
    .accept 4641 >>Accept Your Place In The World
step << Warlock tbc
    #sticky
    #completewith next
    +Kill Boars for 10c+ of vendor trash
    .goto Durotar,44.0,71.3,30,0
step << Warlock tbc
    .goto Durotar,42.6,69.0
.accept 1485 >>Accept Vile Familiars
step << Warrior/Shaman
    #sticky
#completewith next
    +Kill Boars for 10c+ of vendor trash
    .goto Durotar,44.2,65.9,30,0
step << Warrior/Shaman
    .goto Durotar,42.6,67.3
    .vendor >> Vendor trash. Vendor armor if less than 10c
step
    >> Talk to Gornek in the Den
    .goto Durotar,42.1,68.4
    .turnin 4641 >>Turn in Your Place In The World
    .accept 788 >>Accept Cutting Teeth
step << Warrior
    .goto Durotar,42.9,69.4
    .train 6673 >>Train Battle Shout
step << Shaman
    .goto Durotar,42.4,69.0
    .train 8017 >>Train Rockbiter Weapon
step << Warlock tbc
    .goto Durotar,40.6,68.4
    .vendor >>Vendor trash at the demon trainer
step << Warlock tbc
     .goto Durotar,40.6,68.5
    .train 348 >>Train Immolate
step << !Warlock
    #sticky
    #label motboars
    >> Kill boars to the north
    .goto Durotar,41.9,63.7,0,0
    .complete 788,1 --Mottled Boar (10)
step << Warlock tbc
    #sticky
    #completewith WarlockBoars
>>Kill Mottled Boars en route to Vile Familiars. Try to ding 2 before getting to Familiars. Don't sit and drink for these
    .complete 788,1 --Mottled Boar (10)
step << Warlock tbc
    #completewith next
    #label WarlockBoars
    .goto Durotar,45.0,57.4,90 >> Run to the Familiars
step << Warlock tbc
    .goto Durotar,45.3,56.9
    >>Kill Vile Familiars for their heads
    .complete 1485,1 --Vile Familiar Head (6)
step << Warlock
    #sticky << tbc
	>>Finish off killing the Mottled Boars << tbc
	>>Kill Mottled Boars << wotlk
	.goto Durotar,41.9,63.7 << wotlk
    #label warlockboarfi
    .complete 788,1 --Mottled Boar (10)
step << Warlock
    >>Grind Boars en route
.goto Durotar,40.6,62.6
    .accept 790 >>Accept Sarkoth
step << !Warlock
    >> Grind boars en route. Talk to Hana'zua by the tree
    .goto Durotar,40.6,62.6
    .accept 790 >>Accept Sarkoth
step
	#sticky
	#completewith next
    .goto Durotar,40.7,65.2,15 >>Go up the path here
step << Warlock
    #requires warlockboarfi
    >>Kill Sarkoth. Loot his claw
	.goto Durotar,40.7,67.3
    .complete 790,1 --Sarkoth's Mangled Claw (1)
step << !Warlock
    >>Kill Sarkoth. Loot his claw
	.goto Durotar,40.7,67.3
    .complete 790,1 --Sarkoth's Mangled Claw (1)
step
    >> Return to Hana'zua
    .goto Durotar,40.6,62.6
    .turnin 790 >>Turn in Sarkoth
    .accept 804 >>Accept Sarkoth
step << Warlock tbc
    .xp 3+850 >> Grind to 850+/1400xp on the way back to town
step << Warlock
    .goto Durotar,42.6,67.3
    .vendor >>Vendor trash, buy 10 water << tbc
    .vendor >>Vendor trash << wotlk
step << Warlock tbc
    .goto Durotar,42.6,69.0
    .turnin 1485 >>Turn in Vile Familiars
    .accept 1499 >>Accept Vile Familiars
step << Warlock tbc
    .cast 688 >>Choose the dagger and equip it. Remember to summon your Imp
	.goto Durotar,42.9,69.1
    .turnin 1499 >>Turn in Vile Familiars
    .accept 794 >>Accept Burning Blade Medallion
step << !Orc !Troll
    #requires motboars
    .goto Durotar,42.1,68.3
    .turnin 788 >>Turn in Cutting Teeth
    .turnin 804 >>Turn in Sarkoth
    .accept 789 >>Accept Sting of the Scorpid
step << Orc Rogue
    #requires motboars
    >> Grind your way back to town
    .goto Durotar,42.1,68.3
    .turnin 788,2 >>Turn in Cutting Teeth
    .turnin 804 >>Turn in Sarkoth
    .accept 3088 >>Accept Encrypted Parchment
    .accept 789 >>Accept Sting of the Scorpid
step << Troll Rogue
    #requires motboars
    >> Grind your way back to town
    .goto Durotar,42.1,68.3
    .turnin 788,2 >>Turn in Cutting Teeth
    .turnin 804 >>Turn in Sarkoth
    .accept 3083 >>Accept Encrypted Tablet
    .accept 789 >>Accept Sting of the Scorpid
step << Orc Hunter
    #requires motboars
    >> Grind your way back to town
    .goto Durotar,42.1,68.3
    .turnin 788,2 >>Turn in Cutting Teeth
    .turnin 804 >>Turn in Sarkoth
    .accept 3087 >>Accept Etched Parchment
    .accept 789 >>Accept Sting of the Scorpid
step << Troll Hunter
    #requires motboars
    >> Grind your way back to town
    .goto Durotar,42.1,68.3
    .turnin 788,2 >>Turn in Cutting Teeth
    .turnin 804 >>Turn in Sarkoth
    .accept 3082 >>Accept Etched Tablet
    .accept 789 >>Accept Sting of the Scorpid
step << Troll Mage
    #requires motboars
    >> Grind your way back to town
    .goto Durotar,42.1,68.3
    .turnin 788 >>Turn in Cutting Teeth
    .turnin 804 >>Turn in Sarkoth
    .accept 3086 >>Accept Glyphic Tablet
    .accept 789 >>Accept Sting of the Scorpid
step << Troll Priest
    #requires motboars
    .goto Durotar,42.1,68.3
    .turnin 788 >>Turn in Cutting Teeth
    .turnin 804 >>Turn in Sarkoth
    .accept 3085 >>Accept Hallowed Tablet
    .accept 789 >>Accept Sting of the Scorpid
step << Troll Shaman
    #requires motboars
    >> Grind your way back to town
    .goto Durotar,42.1,68.3
    .turnin 788,2 >>Turn in Cutting Teeth
    .turnin 804 >>Turn in Sarkoth
    .accept 3084 >>Accept Rune-Inscribed Tablet
    .accept 789 >>Accept Sting of the Scorpid
step << Orc Shaman
    #requires motboars
    >> Grind your way back to town
    .goto Durotar,42.1,68.3
    .turnin 788,2 >>Turn in Cutting Teeth
    .turnin 804 >>Turn in Sarkoth
    .accept 3089 >>Accept Rune-Inscribed Parchment
    .accept 789 >>Accept Sting of the Scorpid
step << Orc Warrior
    #requires motboars
    >> Grind your way back to town
    .goto Durotar,42.1,68.3
    .turnin 788,2 >>Turn in Cutting Teeth
    .turnin 804,2 >>Turn in Sarkoth
    .accept 2383 >>Accept Simple Parchment
    .accept 789 >>Accept Sting of the Scorpid
step << Troll Warrior
    #requires motboars
    >> Grind your way back to town
    .goto Durotar,42.1,68.3
    .turnin 788,2 >>Turn in Cutting Teeth
    .turnin 804,2 >>Turn in Sarkoth
    .accept 3065 >>Accept Simple Tablet
    .accept 789 >>Accept Sting of the Scorpid
step << Orc Warlock
    .goto Durotar,42.1,68.3
    >> Grind your way back to town
    .turnin 788 >>Turn in Cutting Teeth
    .turnin 804 >>Turn in Sarkoth
    .accept 3090>>Accept Tainted Parchment
    .accept 789 >>Accept Sting of the Scorpid
step << Orc Rogue
    .goto Durotar,41.3,68.0
    .turnin 3088 >>Turn in Encrypted Parchment
step << Orc Warlock tbc
    .goto Durotar,40.6,68.4
    .vendor >>Vendor trash at the Demon trainer
step << Warlock wotlk
    .goto Durotar,40.51,68.04
	.money >0.0065
	.vendor >>Grind mobs until you get a total of 65 copper. (After vendoring everything)
	*Sell your starting gear as well to get 95 copper.
--95c for imp, 65c for min before quest gear/starting gear vendor price.
step << Warlock wotlk
	#completewith next
    .goto Tirisfal Glades,32.3,65.4
	.money >0.0095
	.vendor >>Grind mobs until you get a total of 95 copper. Vendor anything you can if it helps you get 95 copper.
--95c for imp
step << Orc Warlock
    .goto Durotar,40.6,68.5
    .turnin 3090>>Turn in Tainted Parchment
    .train 172 >>Train Corruption << tbc
	.train 688 >> Train Summon Imp << wotlk
step << Shaman/Priest/Mage
    .goto Durotar,42.6,67.3
    .vendor >>Vendor trash & buy 10 water
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step << Warrior/Rogue
    .goto Durotar,42.6,67.3
    .vendor >>Vendor trash
step << Hunter
    .goto Durotar,42.6,67.3
    .vendor >> Vendor trash. Buy 1000 arrows 
step << Warlock wotlk
	#completewith next
	.cast 688 >> Summon your Imp
step
    >> Talk to Galgar
.goto Durotar,42.7,67.3
    .accept 4402 >>Accept Galgar's Cactus Apple Surprise
step << Orc Hunter
    >> Talk to Jen'shan under the tent
    .goto Durotar,42.8,69.3
    .turnin 3087 >>Turn in Etched Parchment
step << Troll Hunter
    >> Talk to Jen'shan under the tent
    .goto Durotar,42.8,69.3
    .turnin 3082 >>Turn in Etched Tablet
step << Troll Mage
    .goto Durotar,42.5,69.0
    .turnin 3086 >>Turn in Glyphic Tablet
    .train 1459 >>Train Arcane Intellect
step << Troll Priest
    .goto Durotar,42.4,68.8
    .turnin 3085 >>Turn in Hallowed Tablet
.train 1243 >>Train Power Word: Fortitude
step << Troll Shaman
    .goto Durotar,42.4,69.0
    .turnin 3084 >>Turn in Rune-Inscribed Tablet
step << Orc Shaman
    .goto Durotar,42.4,69.0
    .turnin 3089 >>Turn in Rune-Inscribed Parchment
step << !Warlock tbc/wotlk
    >> Talk to Zureetha Fargaze
    .goto Durotar,42.9,69.1
    .accept 792 >>Accept Vile Familiars
step << Orc Warrior
    .goto Durotar,42.9,69.4
    .turnin 2383 >>Turn in Simple Parchment
step << Troll Warrior
    .goto Durotar,42.9,69.4
    .turnin 3065 >>Turn in Simple Tablet
step
    >> Talk to Foreman Thazz'ril by the bonfire up the road
    .goto Durotar,44.6,68.7
    .accept 5441 >>Accept Lazy Peons
step
    #sticky
    #completewith imps
    .goto Durotar,44.0,65.3,0,0
    >>Loot Cacti that you see with apples on them as you quest
    .complete 4402,1 --Cactus Apple (10)
step
    #sticky
    #completewith imps
    .goto Durotar,47.4,65.7,0,0
    .use 16114 >>Wake up any sleeping Peons around the trees with Foreman's Blackjack (put it on your bars to make using it easier)
    .complete 5441,1 --Peons Awoken (5)
step << !Warlock
#sticky
    #completewith imps
.goto Durotar,47.1,65.2,30,0
>>Kill Scorpions for some tails en route to the cave
.complete 789,1 --Scorpid Worker Tail (10)
step << Warlock
    >>Kill Scorpions for their tails
.complete 789,1 --Scorpid Worker Tail (10)
.goto Durotar,47.1,65.2,40,0
.goto Durotar,46.6,58.2,40,0
.goto Durotar,39.8,63.5

step << !Warlock tbc/wotlk
    #label imps
.goto Durotar,45.2,56.8
    >>Kill Imps in front of the cave
    .complete 792,1 --Vile Familiar (12)
step << !Warlock
    #sticky
    #label scorpytails
>>Finish off the Scorpion Tails
.goto Durotar,39.8,63.5
    .complete 789,1 --Scorpid Worker Tail (10)
step
    #sticky
    #label cactusapples
    .goto Durotar,44.0,65.3,0,0
    >>Loot the Cacti that you see with apples on them
    .complete 4402,1 --Cactus Apple (10)
step
    .goto Durotar,47.4,65.7
    .use 16114 >>Wake up any sleeping Peons around the trees with Foreman's Blackjack (put it on your bars to make using it easier)
    .complete 5441,1 --Peons Awoken (5)
step
    #requires scorpytails
step
    #requires cactusapples
    >> Return to town and talk to Galgar
    .goto Durotar,42.7,67.2
    .turnin 4402 >>Turn in Galgar's Cactus Apple Surprise
step << Warrior/Rogue/Hunter/Druid/Paladin/Shaman
    .goto Durotar,42.6,67.3
.vendor >> Vendor trash
step << Mage/Priest/Warlock
    .goto Durotar,42.6,67.3
    .vendor >> Vendor trash & buy 10 water << tbc
    .vendor >> Vendor trash << wotlk
    .collect 159,10 << tbc --Collect Refreshing Spring Water (x10)
step
    >> Head inside the den
    .goto Durotar,42.1,68.3
    .turnin 789 >>Turn in Sting of the Scorpid
step << Shaman
    .goto Durotar,42.4,69.1
    .accept 1516 >>Accept Call of Earth
    .train 8042 >>Train Earth Shock
step << Mage
    .goto Durotar,42.5,69.0
    .train 116 >>Train Frostbolt
step << Priest
    .money <0.0190
    .goto Durotar,42.4,68.8
    .train 589 >>Train Shadow Word: Pain
step << tbc !Warlock/wotlk
    >> Talk to Zureetha Fargaze
    .goto Durotar,42.9,69.1
    .turnin 792,3 >>Turn in Vile Familiars << Hunter
    .turnin 792 >>Turn in Vile Familiars << !Hunter
    .accept 794 >>Accept Burning Blade Medallion
step << Hunter
    .money <0.0190
.goto Durotar,42.8,69.3
.train 13163 >>Train Aspect of the Monkey
    .train 1978 >>Train Serpent Sting
step << Hunter
.goto Durotar,42.8,69.3
    .train 1978 >>Train Serpent Sting
step << Warrior
    .goto Durotar,42.9,69.4
    .train 772 >>Train Rend
    .train 100 >>Train Charge
step
    .goto Durotar,44.6,68.7
    >> Talk to Foreman Thazz'ril
    .turnin 5441 >>Turn in Lazy Peons
    .accept 6394 >>Accept Thazz'ril's Pick
step
	#completewith next
    .goto Durotar,45.2,56.8,30 >>Run to the cave
step << Shaman
    #sticky
>>Kill Felstalkers for Hooves
.complete 1516,1 --Felstalker Hoof (2)
step
>>Go into the middle room and loot the Pick from the ground
.goto Durotar,43.7,53.8
    .complete 6394,1 --Thazz'ril's Pick (1)
step
    #sticky
    #completewith next
.goto Durotar,44.7,54.0,10,0
    .goto Durotar,43.4,52.0,10 >>Go back to this part of the cave then follow it to here
step
    >>Kill Yarrog. Loot him for the Medallion
.goto Durotar,42.7,53.0
    .complete 794,1 --Burning Blade Medallion (1)
	.unitscan Yarrog Baneshadow
step << !Shaman
    .xp 5+1725 >> Grind to 1725+/2800xp
step << Shaman
    .xp 5+1200 >> Grind to 1200+/2800xp
step << !Paladin
    #completewith next
    .hs >>Hearth to Valley of Trials
    .goto Durotar,43.3,69.0,100,0
step << Paladin
    .goto Durotar,43.3,69.0,140 >>Die near the start of the cave and respawn at the spirit healer or simply run back to town.
step
    #xprate >1.4
    >> Talk to the Foreman. We're turning it in early to hit level 6.
    .goto Durotar,44.6,68.6
    .turnin 6394 >>Turn in Thazz'ril's Pick
step
    >>Save the healing potion you get as you may need it later for the centaurs
.goto Durotar,42.8,69.1
    .turnin 794,2 >>Turn in Burning Blade Medallion << Warrior
    .turnin 794 >> Turn in Burning Blade Medallion << !Warrior
    .accept 805 >>Accept Report to Sen'jin Village
step
	#completewith next
    .goto Durotar,42.6,67.3
	.vendor >> Vendor trash
step << !Shaman
    .xp 6 >> Grind to level 6
step << Priest
	.goto Durotar,42.4,68.8
	.accept 5649 >> In Favor of Spirituality
	.train 591 >>Train Smite rank 2
    .train 17 >>Train Power Word: Shield
step << Mage
    .goto Durotar,42.5,69.0
    .train 143 >>Train Fireball rank 2
    .train 2136 >>Train Fire Blast
step << Shaman
    .goto Durotar,42.4,69.2
    .turnin 1516 >>Turn in Call of Earth
    .accept 1517 >>Accept Call of Earth
step << Hunter
    .goto Durotar,42.8,69.3
    .train 1130 >>Train Hunter's Mark
    .train 3044 >>Train Arcane Shot
step << Warrior
    .goto Durotar,42.9,69.4
    .train 3127 >>Train Parry
step << Rogue
.goto Durotar,41.3,68.0
    .train 1757 >>Train Sinister Strike rank 2
    .train 1776 >>Train Gouge
step << Warlock
    .goto Durotar,40.6,68.5
    .train 695 >>Train Shadow Bolt rank 2
    .train 1454 >>Train Life Tap << tbc
step << Warlock
    .money <0.0095
.goto Durotar,40.6,68.4
    .vendor >>Buy the Blood Pact book and use it
    .use 16321
step << Shaman
    .goto Durotar,43.0,71.2,20 >>Run up the Hidden Path
step << Shaman
.goto Durotar,41.5,73.3,10 >>Run up the Hidden Path
step << Shaman
.goto Durotar,40.8,74.1,8 >>Take a left here
step << Shaman
    .goto Durotar,41.8,74.8,10 >>Run up the Hidden Path
step << Shaman
    >>Use the Earth Sapta in your bags
.goto Durotar,44.0,76.2
    .turnin 1517 >>Turn in Call of Earth
    .accept 1518 >>Accept Call of Earth
step << Shaman
    .goto Durotar,42.4,69.1
    .turnin 1518 >>Turn in Call of Earth
    .train 332 >>Train Healing Wave rank 2
step
    .isOnQuest 6394
    >> Talk to the Foreman.
    .goto Durotar,44.6,68.6
    .turnin 6394 >>Turn in Thazz'ril's Pick
step
    >>Leave the starting area
.goto Durotar,52.1,68.3
    .accept 2161 >>Accept A Peon's Burden
step
    .goto Durotar,54.3,73.3,15,0
    .goto Durotar,54.5,75.0,15,0
    .goto Durotar,54.1,76.6,15,0
    .goto Durotar,54.3,73.3,15,0
    .goto Durotar,54.5,75.0,15,0
    .goto Durotar,54.1,76.6
    >>Talk to Lar Prowltusk. He patrols between 3 points
    .accept 786 >>Accept Thwarting Kolkar Aggression
    .unitscan Lar Prowltusk
step
    >> Speak with Vel'rin Fang in the hut
    .accept 817 >>Accept Practical Prey
    .goto Durotar,56.0,73.9
    >> Speak with Master Vornal and Gadrin by the pool
    .accept 818 >>Accept A Solvent Spirit
    .goto Durotar,55.9,74.4 
    .turnin 805 >>Turn in Report to Sen'jin Village
    .goto Durotar,55.9,74.7
    .accept 808 >>Accept Minshina's Skull
    .accept 826 >>Accept Zalazane
    .accept 823 >>Accept Report to Orgnil
step << Shaman
    .goto Durotar,56.5,73.1
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for Walking Stick (4s 80c). You'll come back later if you don't have enough yet
step << Shaman
    .goto Durotar,56.5,73.1
    .money <0.0480
    >> Buy a Walking Stick and equip it
    .collect 2495,1 --Collect Walking Stick
step << Rogue
.goto Durotar,56.5,73.1
.vendor >> Vendor trash. Sell your weapon if it gives you enough money for Stiletto (3s 82c). You'll come back later if you don't have enough yet
step << Rogue
    .goto Durotar,56.5,73.1
    .money <0.0382
    >> Buy a Stiletto and equip it
    .collect 2494,1 --Collect Stiletto
step << Orc Warrior
    .goto Durotar,56.5,73.1
.vendor >> Vendor trash. Sell your weapon if it gives you enough money for Large Axe (4s 60c). You'll come back later if you don't have enough yet
step << Orc Warrior
    .goto Durotar,56.5,73.1
    .money <0.0460
    >> Buy a Large Axe and equip it
    .collect 2491,1 --Collect Large Axe
step << Paladin
    .goto Durotar,56.5,73.1
.vendor >> Vendor trash. Sell your weapon if it gives you enough money for Gladius (5s 9c). You'll come back later if you don't have enough yet
step << Paladin
    .goto Durotar,56.5,73.1
    .money <0.0509
    >> Buy a Gladius and equip it
    .collect 2488,1 --Collect Gladius
step << Hunter
    .goto Durotar,56.5,73.1
.vendor >> Vendor trash. Sell your weapon if it gives you enough money for Hornwood Recurve Bow (2s 71c). You'll come back later if you don't have enough yet
step << Hunter
    .goto Durotar,56.5,73.1
    .money <0.0271
    >> Buy a Hornwood Recurve Bow and equip it
    .collect 2506,1 --Collect Hornwood Recurve Bow
step
#sticky
#completewith next
.goto Durotar,59.7,71.7,0
    .goto Durotar,57.6,77.9,0
    >> Run down the beach killing as many Crawlers and Makrura as possible for Mucus and Eyes. This quest can be completed later on.
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
step
    .goto Durotar,52.1,83.3,75 >> Reach the end of the beach
step
.goto Durotar,50.9,79.2,15 >>Enter the Kolkar base
step
    #sticky
    #completewith Bonfire
    +If Warlord Kolkanis is up and blocking a plan, kill him when you are level 7. Be sure to use the Cactus Apple Surprise for +2 stam and use the Healing Potion from earlier.
    .unitscan Warlord Kolkanis
step
    >>On the ground inside the tent.
.goto Durotar,49.8,81.2
    .complete 786,1 --Attack Plan: Valley of Trials destroyed (1)
step
    .goto Durotar,47.7,77.4
    .complete 786,2 --Attack Plan: Sen'jin Village destroyed (1)
step
    #label Bonfire
.goto Durotar,46.3,79.0
    .complete 786,3 --Attack Plan: Orgrimmar destroyed (1)
step
    #completewith next
    .deathskip >> Die at the Bonfire and respawn at the Spirit Healer, or run back to Sen'jin Village
step << Shaman
    .goto Durotar,56.6,73.1
    .money <0.0480
    >>Talk to Traxexir from below the stairs outside
    >> Buy a Walking Stick and equip it
    .collect 2495,1 --Collect Walking Stick
step << Rogue
    .goto Durotar,56.5,73.1
    .money <0.0382
    >>Talk to Traxexir from below the stairs outside
    >> Buy a Stiletto and equip it
    .collect 2494,1 --Collect Stiletto
step << Orc Warrior
    .money <0.0460
    .goto Durotar,56.5,73.1
    >>Talk to Traxexir from below the stairs outside
    >> Buy a Large Axe and equip it
    .collect 2491,1 --Collect Large Axe
step << Paladin
    .goto Durotar,56.5,73.1
    .money <0.0509
    >>Talk to Traxexir from below the stairs outside
    >> Buy a Gladius and equip it
    .collect 2488,1 --Collect Gladius
step << Hunter
    .goto Durotar,56.5,73.1
    .money <0.0271
    >> Buy a Hornwood Recurve Bow and equip it
    .collect 2506,1 --Collect Hornwood Recurve Bow
step
    #completewith next
    .goto Durotar,52.5,44.4,100 >>Grind mobs to Razor Hill. Try to focus on Scorpions as they drop Dry Scorpid Eyes that vendor for 95c each.
step
    .isOnQuest 823
    .goto Durotar,52.2,43.2
    .turnin 823 >> Turn in Report to Orgnil
step
    >>Inside the top floor of the bunker
    .goto Durotar,51.9,43.5
    .accept 784 >>Accept Vanquish the Betrayers
step << Shaman/Warrior
    .goto Durotar,52.2,43.2
    .turnin 823 >>Turn in Report to Orgnil
    .accept 806 >>Accept Dark Storms
step << !Shaman !Warrior
    #xprate <1.5
    .goto Durotar,52.2,43.2
    .turnin 823 >>Turn in Report to Orgnil
step
    .goto Durotar,51.1,42.6
    .vendor >>Vendor trash
step
    >> Talk to Cook Torka
    .goto Durotar,51.1,42.4
    .accept 815 >>Accept Break a Few Eggs
step
    .goto Durotar,50.2,43.1,15 >>Go up this path here
step
    >>Go up the tower and talk to Furl Scornbrow
.goto Durotar,49.9,40.3
    .accept 791 >>Accept Carry Your Weight
step << Shaman
    .goto Durotar,52.0,40.5
    .money <0.0480
    >> Buy a Walking Stick and equip it
    .collect 2495,1 --Collect Walking Stick
step << Rogue
    .goto Durotar,52.0,40.5
    .money <0.0382
    >> Buy a Stiletto and equip it
    .collect 2494,1 --Collect Stiletto
step << Orc Warrior
    .goto Durotar,52.0,40.5
    .money <0.0460
    >> Buy a Large Axe and equip it
    .collect 2491,1 --Collect Large Axe
step << Paladin
    .goto Durotar,52.0,40.5
    .money <0.0509
    >> Buy a Gladius and equip it
    .collect 2488,1 --Collect Gladius
step << Hunter
    .goto Durotar,53.0,41.0
    .money <0.0271
    >> Buy a Hornwood Recurve Bow and equip it, stock up on arrows
    .collect 2506,1 --Collect Hornwood Recurve Bow
step << Warrior/Rogue/Paladin
    .goto Durotar,52.0,40.7
    .money <0.0020
    .train 2018 >> Train Blacksmithing. Blacksmithing allows you to make Sharpening stones (+2 weapon damage for 1 hour). You should stop making these around level 20. You can skip Blacksmithing and Mining if you wish
step << Warrior/Rogue/Paladin
    .goto Durotar,51.8,40.9
    .money <0.0010
    .train 2580 >> Train Mining. Cast “Find Minerals” in your spellbook
step << Priest
    .goto Durotar,54.3,42.9
    .turnin 5649 >> In Favor of Spirituality
    .accept 5648 >> Garments of Spirituality
    .train 2052 >> Train Lesser Heal r2
step << Priest
    .goto Durotar,53.1,46.5
    .cast 2052 >>Cast Lesser Heal (Rank 2) on Grunt Kor'ja
    .cast 1243 >>Cast Power Word: Fortitude (Rank 1) on Grunt Kor'ja
    .complete 5648,1 --Heal and cast Fortify on Grunt Kor'ja
step << Priest
    .goto Durotar,54.3,42.9
    .turnin 5648 >> Garments of Spirituality
step << Priest/Mage/Warlock/Shaman/Druid
    .goto Durotar,51.5,41.6
    >> Talk to the innkeeper
    .turnin 2161 >>Turn in A Peon's Burden
    .home >> Set your Hearthstone to Razor Hill
    .vendor >> Buy as much Ice Cold Milk as you can
step << Warrior/Rogue/Hunter
    .goto Durotar,51.5,41.6
    >> Talk to the innkeeper
    .turnin 2161 >>Turn in A Peon's Burden
    .home >> Set your Hearthstone to Razor Hill
    .vendor >> Buy as much Haunch of Meat as you can
step << Paladin
    .goto Durotar,51.5,41.6
    >> Talk to the innkeeper
    .turnin 2161 >>Turn in A Peon's Burden
    .home >> Set your Hearthstone to Razor Hill
step << Warrior/Rogue/Paladin
    .goto Durotar,53.0,42.0
    .money <0.0077
.collect 2901,1 >> Buy a Mining Pick. Keep an eye out for veins to mine to make Sharpening Stones for your weapon with blacksmithing
step << Paladin
    .goto Orgrimmar,49.1,94.7,20 >> Run into Orgrimmar
step << Paladin
    .goto Orgrimmar,32.3,35.7
    .trainer >> Go and train your class spells
step << Paladin
    #completewith next
    .goto Durotar,59.2,58.3,15
    .hs >>Hearth to Razor Hill
step
    #sticky
    #label KulTiras
    .goto Durotar,59.2,58.3
>>Kill Kul Tiras mobs. Loot them for Scraps
    .complete 784,1 --Kul Tiras Sailor (10)
    .complete 784,2 --Kul Tiras Marine (8)
    .complete 791,1 --Canvas Scraps (8)
step
    .goto Durotar,59.7,58.3
    >>Go to the top floor of the Keep. Kill Lieutenant Benedict and loot his key - be careful as he uses Shield Bash (Interrupt)
.complete 784,3 --Lieutenant Benedict (1)
.collect 4882,1 --Collect Benedict's Key (1)
step
.goto Durotar,59.8,57.8,8 >>Go up the stairs here
step
.goto Durotar,59.9,57.5,8 >>Go up the stairs here
step
>>Loot the chest. Accept the quest from the item
.goto Durotar,59.3,57.6
.collect 4881,1,830 --Collect Aged Envelope (1)
    .use 4881
.accept 830 >>Accept The Admiral's Orders
step
    #xprate <1.5
    .goto Durotar,58.4,57.2
.xp 7+2195 >> Grind to 2195+/4500xp
step
    #xprate <1.5
    #requires KulTiras
    #completewith next
.deathskip >> Die and respawn at the Spirit Healer, or run back to Razor Hill
step
    #xprate <1.5
    .goto Durotar,51.9,43.5
    .turnin 784 >>Turn in Vanquish the Betrayers
    .accept 825 >>Accept From The Wreckage....
    .turnin 830 >>Turn in The Admiral's Orders
    .accept 837 >>Accept Encroachment
step << Warlock/Shaman/Warrior
    #xprate <1.5
    .goto Durotar,51.9,43.5
.accept 831 >>Accept The Admiral's Orders
step
    #xprate <1.5
.goto Durotar,49.9,40.3
    .turnin 791 >>Turn in Carry Your Weight
step << !Shaman !Warrior
    #xprate <1.5
    .abandon 806 >>Abandon Dark Storms
step << Shaman
    #xprate <1.5
    .goto Durotar,52.0,40.5
    .money <0.0480
    >> Buy a Walking Stick and equip it
    .collect 2495,1 --Collect Walking Stick
step << Rogue
    #xprate <1.5
    .goto Durotar,52.0,40.5
    .money <0.0382
    >> Buy a Stiletto and equip it
    .collect 2494,1 --Collect Stiletto
step << Orc Warrior
    #xprate <1.5
    .goto Durotar,52.0,40.5
    .money <0.0460
    >> Buy a Large Axe and equip it
    .collect 2491,1 --Collect Large Axe
step << Paladin
    #xprate <1.5
    .goto Durotar,52.0,40.5
    .money <0.0509
    >> Buy a Gladius and equip it
    .collect 2488,1 --Collect Gladius
step << Hunter
    #xprate <1.5
    .goto Durotar,53.0,41.0
    .money <0.0271
    >> Buy a Hornwood Recurve Bow and equip it
    .collect 2506,1 --Collect Hornwood Recurve Bow
step << Warrior/Rogue
    #xprate <1.5
    .goto Durotar,52.0,40.7
    .money <0.0020
    .train 2018 >> Train Blacksmithing. Blacksmithing allows you to make Sharpening stones (+2 weapon damage for 1 hour). You can skip Blacksmithing and Mining if you wish
step << Warrior/Rogue
    #xprate <1.5
.goto Durotar,51.8,40.9
    .money <0.0010
    .train 2580 >> Train Mining.
    .cast 2580 >>Cast “Find Minerals” in your spellbook
step << Warrior/Rogue
    #xprate <1.5
    .goto Durotar,53.0,42.0
    .money <0.0077
.collect 2901,1 >> Buy a Mining Pick. Keep an eye out for veins to mine to make Sharpening Stones for your weapon
step << Shaman
    #xprate <1.5
    .goto Durotar,54.4,42.6
    .train 2484 >>Train Earthbind Totem
    .train 324 >>Train Lightning Shield
    .train 8044 >>Train Earth Shock r2
    .train 8018 >>Train Rockbiter Weapon r2
step << Priest
    #xprate <1.5
    .goto Durotar,54.3,42.9
    .train 139 >>Train Renew
step << Warrior
    #xprate <1.5
.goto Durotar,54.2,42.5
    .train 284 >>Train Heroic Strike r2
    .train 1715 >>Train Hamstring
step << Hunter
    #xprate <1.5
    .goto Durotar,51.8,43.5
    .train 5116 >>Train Concussive Shot
step << Rogue
    #xprate <1.5
.goto Durotar,52.0,43.7
    .train 6760 >>Train Eviscerate r2
    .train 5277 >>Train Evasion
step << Warlock
    #xprate <1.5
    .goto Durotar,54.4,41.2
    .train 980 >>Train Curse of Agony
    .train 5782 >>Train Fear
step << Warrior/Rogue
    #xprate <1.5
    .goto Durotar,54.2,41.9
    .money <0.0095
    .train 3273 >>Train First Aid
step
    #xprate <1.5
    .goto Durotar,54.4,42.2
    .money <0.1184
.vendor >>Buy a 6 slot bag from Jark
step << Priest/Warlock/Mage
    #xprate <1.5
    .goto Durotar,51.5,41.6
    .vendor >> Buy as much Ice Cold Milk as you can
step << Warrior/Rogue
    #xprate <1.5
    .goto Durotar,51.5,41.6
    .vendor >> Buy as much Haunch of Meat as you can
step
    #sticky
    #requires KulTiras
    #completewith Tools
    >>Kill some Makrura here for eyes/Crawlers for Mucus en route to other quests. You don't need to finish it here.
    .complete 818,1 --Intact Makrura Eye (4)
    .complete 818,2 --Crawler Mucus (8)
step
    #xprate <1.5
    #completewith next
    >>Check the boat closest to the shore for the Toolboxes. Check other boats if you can't find these spawns. They can be a bit hard to see
    .goto Durotar,61.9,55.5,10 >> In the window underwater
    .goto Durotar,62.3,56.3,10 >> Underwater
    .goto Durotar,61.4,56.1,10 >> Near the shore
step
    #xprate <1.5
    .goto Durotar,61.9,55.5,10,0
    .goto Durotar,62.3,56.3,10,0
    .goto Durotar,61.4,56.1,10,0
    .complete 825,1 --Gnomish Tools (3)
step
    #requires KulTiras
    #label Tools
    .goto Durotar,67.2,70.0,125 >>Swim to the Island
step
    #sticky
    #completewith Fur
    >>Kill all Tigers that you see for their Fur
    .complete 817,1 --Durotar Tiger Fur (4)
step
    >>Loot Taillasher eggs on the ground on this island. They're usually guarded by a Taillasher
    .goto Durotar,68.8,71.5
    .complete 815,1 --Taillasher Egg (3)
step
    #sticky
    #completewith Swim
    >>Kill some Makrura here for eyes/Crawlers for Mucus
    .complete 818,1 --Intact Makrura Eye (4)
    .complete 818,2 --Crawler Mucus (8)
step
    #label Swim
.goto Durotar,66.9,80.0,80 >>Swim to the other island
step
    #sticky
    #completewith Trolls
    >>Kill the trolls in the area. Be careful as the Voodoo trolls heal
    .complete 826,1 --Hexed Troll (8)
    .complete 826,2 --Voodoo Troll (8)
step << Shaman
    .goto Durotar,67.4,87.8
    >>Kill Zalazane. Save your Earth Shock for when he casts Healing Wave. Loot his head
    .complete 826,3 --Zalazane's Head (1)
step << Rogue
    .goto Durotar,67.4,87.8
    >>Kill Zalazane. Save your Gouge for when he casts Healing Wave. Loot his head
    .complete 826,3 --Zalazane's Head (1)
step << !Rogue !Shaman
    .goto Durotar,67.4,87.8
    >>Kill Zalazane. Be careful as he can heal (you may need a healing potion). Loot his head
    .complete 826,3 --Zalazane's Head (1)
step
    #label Trolls
.goto Durotar,67.4,87.8
    >>Loot one of the skulls on the ground
    .complete 808,1 --Minshina's Skull (1)
step
    #label Fur
>>Kill the rest of the trolls. Be careful as the Voodoo trolls heal
    .complete 826,1 --Hexed Troll (8)
    .complete 826,2 --Voodoo Troll (8)
step
>>Finish getting the rest of the Tiger Fur
    .goto Durotar,64.7,88.5,30,0
    .goto Durotar,65.2,80.8,30,0
    .goto Durotar,59.9,83.6,30,0
    .goto Durotar,64.7,88.5,30,0
    .goto Durotar,65.2,80.8,30,0
    .goto Durotar,59.9,83.6,30,0
    .complete 817,1 --Durotar Tiger Fur (4)
step
     #completewith next
    .deathskip >> Die and respawn at the Spirit Healer, or run back to Sen'jin Village
step
    >> Finish getting the rest of the items from the Makrura and Crawlers
        .goto Durotar,59.7,71.7,50,0
    .goto Durotar,57.6,77.9,50,0
    .goto Durotar,59.7,71.7,50,0
    .goto Durotar,57.6,77.9,50,0
    .goto Durotar,59.7,71.7,50,0
    .goto Durotar,57.6,77.9,50,0
    .goto Durotar,59.7,71.7,50,0
    .goto Durotar,57.6,77.9
    .complete 818,1 --Intact Makrura Eye (4)
    .complete 818,2 --Crawler Mucus (8)
step << Mage
    >>Go inside the tent
.goto Durotar,56.3,75.1
    .train 205 >>Train Frostbolt r2
.train 118 >>Train Polymorph
step
    >>Head back to Sen'jin Village. Save the Faintly Glowing Skull for later
.goto Durotar,55.9,74.7
    .turnin 808 >>Turn in Minshina's Skull
    .turnin 826,1 >>Turn in Zalazane << Warrior
    turnin 826 >>Turn in Zalazane << !Warrior
step
    >> Talk to Master Vornal, Vel'rin, and Lar Prowltusk
    .turnin 818 >>Turn in A Solvent Spirit
    .goto Durotar,56.0,74.3
    .turnin 817 >>Turn in Practical Prey
    .goto Durotar,56.0,73.9
    .unitscan Lar Prowltusk
    .turnin 786 >>Turn in Thwarting Kolkar Aggression
    .goto Durotar,54.3,73.3
step
    #completewith next
    .goto Durotar,48.9,48.5
    .hs >> Hearth back to Razor Hill
step
    #xprate <1.5
    .goto Durotar,48.9,48.5
    >>Kill Quilboars and Scouts in the area
    .complete 837,1 --Razormane Quilboar (4)
    .complete 837,2 --Razormane Scout (4)
step
    #xprate <1.5
    .goto Durotar,43.8,39.1
    >>Kill Dustrunners and Battleguards in the area. Dustrunners have Rejuvenation (Heal) and Battleguards are tanky
    .complete 837,3 --Razormane Dustrunner (4)
    .complete 837,4 --Razormane Battleguard (4)
step
    #xprate <1.5
    .goto Durotar,43.8,39.1
    .xp 9+5175 >>Grind to 5175+/6500xp
step
    #xprate >1.499
    .goto Durotar,51.9,43.5
    >> Head to the bunker
    .turnin 784 >>Turn in Vanquish the Betrayers
    .turnin 830 >>Turn in The Admiral's Orders
    .accept 837 >>Accept Encroachment << Warrior/Shaman
step << Hunter
    .xp <10,1
    .goto Durotar,51.8,43.5
    .accept 6062 >>Accept Taming the Beast
    .train 13165 >>Train Aspect of the Hawk
    .train 13549 >>Train Serpent Sting r2
step << Warlock/Shaman/Warrior/Hunter
    #xprate >1.499
    .goto Durotar,51.9,43.5
.accept 831 >>Accept The Admiral's Orders
step
    >> Talk to Cook Torka
    .goto Durotar,51.1,42.4
        .turnin 815 >>Turn in Break a Few Eggs
step
    #xprate >1.499
    >> Head up the hill and up the tower, talk to Furl Scornbrow equip your new bag after.
.goto Durotar,49.9,40.3
    .turnin 791 >>Turn in Carry Your Weight
step << Hunter
    .isOnQuest 6062
    .use 15917 >>Click the Taming Rod in your bag on a Boar. Try to do it at max range (30 yards)
.goto Durotar,51.5,50.0
.complete 6062,1 --Tame a Dire Mottled Boar
step << !Shaman !Warrior
    #xprate >1.499
    .abandon 806 >>Abandon Dark Storms
step
    #xprate <1.5
    .goto Durotar,51.9,43.5
    .turnin 825 >>Turn in From The Wreckage....
    .turnin 837 >>Turn in Encroachment
step
    .goto Durotar,43.8,39.1
    .xp 10 >>Grind to 10
step << Paladin
    #sticky
    #completewith next
    +If you're afraid of Eversong competition, then manually select 10-13 Durotar->13-23 Barrens now
step << Shaman
    .goto Durotar,54.4,42.5
    .accept 2983 >>Accept Call of Fire
    .train 8075 >>Train Strength of Earth Totem
    .train 8050 >>Train Flame Shock
step << Priest
    .goto Durotar,54.3,42.9
    .train 2053 >>Train Lesser Heal r3
    .train 8092 >>Train Mind Blast
.train 594 >>Train Shadow Word: Pain r2
step << Orc Warrior/Troll Warrior/Undead Warrior
    .goto Durotar,54.2,42.5
    .accept 1505 >>Accept Veteran Uzzek
    .train 2687 >>Train Bloodrage
    .train 6546 >>Train Rend r2
step << Rogue
    .goto Durotar,52.0,43.7
    .train 2983 >>Train Sprint
    .train 674 >>Train Dual Wield
    .train 6770 >>Train Sap
    .train 1784 >>Train Stealth
step << Rogue
    .goto Durotar,56.5,73.1
    .money <0.0382
    .vendor >> Buy another Stiletto and equip it
step << Warrior/Rogue/Paladin
.goto Durotar,54.2,41.9
    .money <0.0095
    .train 3273 >>Train First Aid
step << Warlock
    .goto Durotar,54.4,41.2
    .accept 1506 >>Accept Gan'Rul's Summons
step << Warlock
    .goto Durotar,54.4,41.2
    .train 1120 >>Train Drain Soul
    .train 6201 >> Train Create Healthstone
    .train 696 >>Train Demon Skin r2
    .train 707 >> Train Immolate r2
step << Hunter
    .goto Durotar,51.8,43.5
    .accept 6062 >>Accept Taming the Beast
    .train 13165 >>Train Aspect of the Hawk
    .train 13549 >>Train Serpent Sting r2
step << Hunter
    .goto Durotar,53.0,41.0
    .vendor >> Vendor and stock up on level 10 arrows
step << Hunter
    .use 15917 >>Click the Taming Rod in your bag on a Boar. Try to do it at max range (30 yards)
.goto Durotar,51.5,50.0
.complete 6062,1 --Tame a Dire Mottled Boar
    .unitscan Dire Mottled Boar
step << Hunter
    .goto Durotar,51.8,43.5
.turnin 6062 >>Turn in Taming the Beast
.accept 6083 >>Accept Taming the Beast
step << Hunter
    .use 15919 >>Don't kill the Armored Scorpids you see as you need to tame one next. Head north to the beaches and tame a Surf Crawler.
.goto Durotar,59.3,27.6
.complete 6083,1 --Tame a Surf Crawler
    .unitscan Surf Crawler
step << Hunter
    >> Head back to Razor Hill
    .goto Durotar,51.8,43.5
.turnin 6083 >>Turn in Taming the Beast
.accept 6082 >>Accept Taming the Beast
step << Hunter
    .use 15920 >>Click the Taming Rod in your bag on a Scorpid. Try to do it at max range (30 yards)
    .goto Durotar,59.3,27.6
    .complete 6082,1 --Tame an Armored Scorpid
    .unitscan Armored Scorpid
step << Hunter
    >> Return to Thotar
    .goto Durotar,51.8,43.5
    .turnin 6082 >>Turn in Taming the Beast
    .accept 6081 >>Accept Training the Beast
step << Hunter
    >> Follow the road north and talk to Rezlak
    .goto Durotar,46.4,22.9
    .accept 834 >>Accept Winds in the Desert
step << Warlock/Hunter
    .goto Orgrimmar,49.0,94.2,20 >>Run into Orgrimmar
step << Hunter
    >> Head to the Valley of Honor and talk to Ormak Grimshot
    .goto Orgrimmar,66.0,18.5
    .turnin 6081 >>Turn in Training the Beast
step << Hunter tbc
    >>Put "Beast Training" on your bars. Remember to teach your pet skills later
.goto Orgrimmar,66.3,14.8
    .train 4195 >>Train Great Stamina
    .train 24547 >>Train Natural Armor
step << Warlock
.goto Orgrimmar,48.3,45.3
.turnin 1506 >>Turn in Gan'rul's Summons
.accept 1501 >>Accept Creature of the Void
step << Warlock/Hunter
    .goto Orgrimmar,34.3,36.4
    .turnin 831 >>Turn in The Admiral's Orders
step << Warlock
.goto Orgrimmar,31.6,37.8
.accept 5726 >>Accept Hidden Enemies
step << Warlock
    #sticky
    #completewith next
.goto Orgrimmar,36.0,37.7 >> Click off your Demon Skin buff. Run on top of the brazier, and use Life Tap to die. Respawn outside of orgrimmar
step << Warlock/Hunter
.goto Orgrimmar,49.0,94.2,275 >>Run out of Orgrimmar
step << Warlock
.goto Durotar,55.0,9.7,25 >>Enter Skull Rock
step << Warlock
    #sticky
    #label Collars
>>Kill Burning Blade mobs until Lieutenant's Insignia drops
    .complete 5726,1 --Lieutenant's Insignia (1)
step << Warlock
    #sticky
    #label Eye
    #completewith Skull
    .use 4945 >>Optionally, you can kill Gazz'uz (level 14 warlock) for a quest item. Be sure to use your Skull from earlier, any potions you have, or sticky glue on the voidwalker. You can LoS (Line of Sight) Gazz'uz to avoid his shadowbolts, and fear his pet. If you can't kill him, try to sneak past, or die and respawn past him in the water.
    .collect 4903,1,832 --Collect Eye of Burning Shadow
    .accept 832 >>Accept Burning Shadows
    .unitscan Gazz'uz
step << Warlock
    .goto Durotar,53.6,8.5,10,0
    .goto Durotar,51.8,8.1,10,0
    .goto Durotar,51.6,9.8
    >> Go into the Right path of the cave. Continue following the cave, then loot the Chest at the end of it
    .complete 1501,1 --Tablet of Verga (1)
step << Warlock
    #label Skull
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer, or run to Orgrimmar
step << Warlock
.goto Orgrimmar,49.0,94.2,20 >>Run into Orgrimmar
step << Warlock
    .goto Orgrimmar,31.8,37.8
    .turnin 5726 >>Turn in Hidden Enemies
    .accept 5727 >>Accept Hidden Enemies
step << Warlock
    .goto Orgrimmar,48.3,45.3
    .turnin 1501 >>Turn in Creature of the Void
    .accept 1504 >>Accept The Binding
step << Warlock
    .isOnQuest 832
.goto Orgrimmar,49.5,50.6
    .turnin 832 >>Turn in Burning Shadows
step << Warlock
    >>Talk to Neeru and finish his gossip options
.goto Orgrimmar,49.5,50.6
    .skipgossip
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade (1)
step << Warlock
    .goto Orgrimmar,49.5,50.0
    .use 7464>>Use the Glyphs of Summoning to summon a voidwalker. Kill it
    .complete 1504,1 --Summoned Voidwalker (1)
step << Warlock
    >>You can now summon a Voidwalker
.goto Orgrimmar,48.3,45.3
    .turnin 1504 >>Turn in The Binding
step << Warlock
    .goto Orgrimmar,31.8,37.8
    .turnin 5727 >>Turn in Hidden Enemies
step << Warlock
    #sticky
    #completewith next
    .goto Orgrimmar,36.0,37.7 >> Click off your Demon Skin buff. Run on top of the brazier, and use Life Tap to die. Respawn outside of orgrimmar
step << Warlock
    .goto Orgrimmar,49.0,94.2,275 >>Run out of Orgrimmar
step << !Shaman !Warrior !Warlock !Hunter
    .goto Durotar,46.4,22.9
    .accept 834 >>Accept Winds in the Desert
step << !Shaman !Warrior !Warlock
    >>Loot the small sacks on the ground
.goto Durotar,51.7,27.7
    .complete 834,1 --Sack of Supplies (5)
step << !Shaman !Warrior !Warlock
    .goto Durotar,46.4,22.9
    >> Return to Rezlak
    .turnin 834 >>Turn in Winds in the Desert
    .accept 835 >>Accept Securing the Lines
step << !Shaman !Warrior !Warlock
    .goto Durotar,51.9,27.4,20 >>Go through the cave here
step << !Shaman !Warrior !Warlock
    >>Kill Harpies in the area
    .goto Durotar,54.0,27.7,30,0
    .goto Durotar,51.3,23.5,30,0
    .goto Durotar,51.5,19.1,30,0
    .goto Durotar,54.0,27.7,30,0
    .goto Durotar,51.3,23.5,30,0
    .goto Durotar,51.5,19.1,30,0
    .complete 835,1 --Dustwind Savage (12)
    .complete 835,2 --Dustwind Storm Witch (8)
step << !Shaman !Warrior !Warlock
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer, or run back to Rezlak
step << !Shaman !Warrior !Warlock
    .goto Durotar,46.4,22.9
    >> Return to Rezlak
    .turnin 835,2 >>Turn in Securing the Lines << Hunter
    .turnin 835 >>Turn in Securing the Lines << !Hunter
step << Hunter tbc
    .goto Durotar,57.2,12.0
    .tame 3108 >>Tame an Encrusted Surf Crawler (They have Claw Rank 3)
step << !Shaman !Warrior
    #sticky
    #completewith next
+Go to the Zeppelin tower. Take the zeppelin to Undercity
    .goto Durotar,50.8,13.8
step << !Shaman !Warrior
.zone Tirisfal Glades >>Arrive in Tirisfal
step << !Shaman !Warrior
.goto Undercity,66.2,1.1,18 >>Go to Undercity
step << !Shaman !Warrior
.goto Undercity,62.0,11.3,18 >>Go up the stairs here
step << !Shaman !Warrior
.goto Undercity,54.9,11.3,18 >>Use the Orb of Translocation
step << !Shaman !Warrior
.goto Silvermoon City,62.0,30.1,20 >>Arrive in Silvermoon
step << Paladin
    #completewith next
    .goto Silvermoon City,91.2,36.9
    .trainer >> Go and train your class spells
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 10-13 Durotar
#version 1
#group RestedXP Horde 1-30
#defaultfor Warrior !Tauren/Shaman !Tauren
#next 13-23 The Barrens
step
    .goto Durotar,50.8,43.6
    .accept 840 >>Accept Conscript of the Horde
step << Undead Warrior
    >>Go up the tower
.goto Durotar,49.9,40.3
    .accept 791 >>Accept Carry Your Weight
step << Undead Warrior
    .goto Durotar,52.0,40.7
    .money <0.0020
    .train 2018 >> Train Blacksmithing. Blacksmithing allows you to make Sharpening stones (+2 weapon damage for 1 hour). You can skip Blacksmithing and Mining if you wish
step << Undead Warrior
    .goto Durotar,51.8,40.9
    .money <0.0010
    .train 2580 >> Train Mining.
    .cast 2580 >> Cast “Find Minerals” in your spellbook
step << Undead Warrior
    .goto Durotar,53.0,42.0
    .money <0.0077
.collect 2901,1 >> Buy a Mining Pick. Keep an eye out for veins to mine to make Sharpening Stones for your weapon with blacksmithing
step << Undead Warrior
    .goto Durotar,54.2,42.5
    .accept 1505 >>Accept Veteran Uzzek
step << Undead Warrior
>>Inside the bunker, top floor
.goto Durotar,51.9,43.5
.accept 784 >>Accept Vanquish the Betrayers
step << Undead Warrior
    #sticky
    #label KulTiras
>>Kill Kul Tiras mobs. Loot them for Scraps
    .complete 784,1 --Kul Tiras Sailor (10)
    .complete 784,2 --Kul Tiras Marine (8)
    .complete 791,1 --Canvas Scraps (8)
step << Undead Warrior
.goto Durotar,59.2,58.3,15 >>Go inside the keep
step << Undead Warrior
    .goto Durotar,59.7,58.3
    >>Go to the top floor of the Keep. Kill Lieutenant Benedict and loot his key - be careful as he uses Shield Bash (Interrupt)
.complete 784,3 --Lieutenant Benedict (1)
.collect 4882,1 --Collect Benedict's Key (1)
step << Undead Warrior
.goto Durotar,59.8,57.8,8 >>Go up the stairs here
step << Undead Warrior
.goto Durotar,59.9,57.5,8 >>Go up the stairs here
step << Undead Warrior
>>Loot the chest. Accept the quest from the item
.goto Durotar,59.3,57.6
.collect 4881,1,830 --Collect Aged Envelope (1)
.accept 830 >>Accept The Admiral's Orders
step << Undead Warrior
    >>Run down to Sen'jin
.goto Durotar,55.9,74.7
    .accept 808 >>Accept Minshina's Skull
    .accept 826 >>Accept Zalazane
    .accept 823 >>Accept Report to Orgnil
step << Undead Warrior
    .goto Durotar,67.3,87.1,350 >> Swim to the Island
step << Undead Warrior
    #sticky
    #completewith Trolls
    >>Kill the trolls in the area. Be careful as the Voodoo trolls heal
    .complete 826,1 --Hexed Troll (8)
    .complete 826,2 --Voodoo Troll (8)
step << Undead Warrior
    .goto Durotar,67.4,87.8
    >>Kill Zalazane. Be careful as he can heal (you may need a healing potion). Loot his head
    .complete 826,3 --Zalazane's Head (1)
step << Undead Warrior
    #label Trolls
.goto Durotar,67.4,87.8
    >>Loot one of the skulls on the ground
    .complete 808,1 --Minshina's Skull (1)
step << Undead Warrior
>>Kill the rest of the trolls. Be careful as the Voodoo trolls heal
    .complete 826,1 --Hexed Troll (8)
    .complete 826,2 --Voodoo Troll (8)
step << Undead Warrior
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer, or run back to Sen'jin Village
step << Undead Warrior
    >>Save the Faintly Glowing Skull for later
.goto Durotar,55.9,74.7
    .turnin 808 >>Turn in Minshina's Skull
    .turnin 826 >>Turn in Zalazane
step << Undead Warrior
    >>Run back to Razor Hill
.goto Durotar,52.2,43.2
    .turnin 823 >>Turn in Report to Orgnil
    .accept 806 >>Accept Dark Storms
step
    #xprate >1.499
    .goto Durotar,48.9,48.5
    >>Kill Quilboars and Scouts in the area
    .complete 837,1 --Razormane Quilboar (4)
    .complete 837,2 --Razormane Scout (4)
step
    #xprate >1.499
    .goto Durotar,43.8,39.1
    >>Kill Dustrunners and Battleguards in the area. Dustrunners have Rejuvenation (Heal) and Battleguards are tanky
    .complete 837,3 --Razormane Dustrunner (4)
    .complete 837,4 --Razormane Battleguard (4)
step
    .goto The Barrens,62.2,19.4
    .turnin 840 >>Turn in Conscript of the Horde
    .accept 842 >>Accept Crossroads Conscription
step
    .goto The Barrens,62.2,19.4
    .zone The Barrens >>Run to The Barrens
step << Warrior
    .goto The Barrens,61.4,21.1
    .turnin 1505 >>Turn in Veteran Uzzek
    .accept 1498 >>Accept Path of Defense
step << Orc Shaman/Troll Shaman
    .goto The Barrens,55.8,20.0
    .turnin 2983 >>Turn in Call of Fire
    .accept 1524 >>Accept Call of Fire
step << !Tauren
#xprate <1.5
    .goto The Barrens,52.0,30.5,150 >> Run to the Crossroads
step << !Tauren
#xprate <1.5
    .goto The Barrens,52.2,31.8
    .accept 870 >>Accept The Forgotten Pools
step << !Tauren
#xprate <1.5
    #completewith next
    .goto The Barrens,52.3,32.0
    .vendor >> Purchase as many 6 slot bags as you need
step << !Tauren
#xprate <1.5
    .goto The Barrens,52.2,31.0
    .turnin 842 >>Turn in Crossroads Conscription
    .accept 844 >>Accept Plainstrider Menace
step << Orc/Troll
#xprate <1.5
    .goto The Barrens,52.5,29.8
    .accept 6365 >>Accept Meats to Orgrimmar
step << !Tauren
#xprate <1.5
    .goto The Barrens,51.9,30.3
    .accept 869 >>Accept Raptor Thieves
step << !Tauren
#xprate <1.5
    .goto The Barrens,51.5,30.8
    .accept 871 >>Accept Disrupt the Attacks
    .accept 5041 >>Accept Supplies for the Crossroads
step << !Tauren
#xprate <1.5
    .goto The Barrens,51.5,30.4
    .fp >>Get the The Crossroads Flight Path
step << Orc/Troll
#xprate <1.5
    >>do NOT fly to Orgrimmar
.goto The Barrens,51.5,30.3
    .turnin 6365 >>Turn in Meats to Orgrimmar
    .accept 6384 >>Accept Ride to Orgrimmar
step << !Tauren
#xprate <1.5
.goto The Barrens,51.5,30.1
    .accept 1492 >>Accept Wharfmaster Dizzywig
        .accept 848 >>Accept Fungal Spores
step << !Tauren
#xprate <1.5
    #sticky
    #completewith next
    >>Collect the white mushrooms around The Forgotten Pools. Try to avoid mobs the best you can.
.complete 848,1 --Collect Fungal Spores (x4)
step << !Tauren
#xprate <1.5
>>Dive underwater to the bubble fissure
.goto The Barrens,45.1,22.5
    .complete 870,1 --Explore the waters of the Forgotten Pools
step << !Tauren
#xprate <1.5
>>Collect the white mushrooms around The Forgotten Pools. Try to avoid mobs the best you can.
.goto The Barrens,45.2,23.3,40,0
.goto The Barrens,45.2,22.0,40,0
    .goto The Barrens,44.6,22.5,40,0
    .goto The Barrens,43.9,24.4,40,0
.complete 848,1 --Collect Fungal Spores (x4)
step << !Tauren
#xprate <1.5
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer, or run back to Crossroads
step << !Tauren
#xprate <1.5
    .goto The Barrens,51.5,30.1
    .turnin 848 >>Turn in Fungal Spores
    >> Wait for the roleplay to finish, it takes a couple of seconds. Apothecary Zamah is a TIMED QUEST, if you have to afk at any point before you turn it in, log off.
    .accept 853 >>Accept Apothecary Zamah
step << !Tauren
#xprate <1.5
    .goto The Barrens,52.2,31.8
    .turnin 870 >>Turn in The Forgotten Pools
    .accept 877 >>Accept The Stagnant Oasis
step << !Tauren
#xprate <1.5
    >>Run down the road
.goto The Barrens,44.4,59.2
    .fp >>Get the Camp Taurajo Flight Path
step << !Tauren
#xprate <1.5
    .line Mulgore,69.0,60.0,58.4,61.7,51.9,59.3
    .goto Mulgore,51.4,59.2,50,0
    .goto Mulgore,59.6,62.4,50,0
    .goto Mulgore,51.4,59.2,50,0
    .goto Mulgore,59.6,62.4,50,0
        .goto Mulgore,51.4,59.2
    >> The quest giver patrols along the entire road
    .unitscan Morin Cloudstalker
    .accept 749 >>Accept The Ravaged Caravan
step << !Tauren
#xprate <1.5
    .goto Mulgore,48.2,53.4
    .accept 11129 >>Accept Kyle's Gone Missing!
step << !Tauren
#xprate <1.5
    .goto Mulgore,53.7,48.1
    >> Cross the lake then loot the chest in the middle of the caravan
    .turnin 749 >>Turn in The Ravaged Caravan
    .accept 751 >>Accept The Ravaged Caravan
step << !Tauren
#xprate <1.5
    .goto Mulgore,55.5,55.8
    >>Kill a plainstrider for Tender Strider Meat
    .collect 33009,1 --Collect Tender Strider Meat (1)
step << !Tauren
#xprate <1.5
    .line Mulgore,51.9,59.3,58.4,61.7,69.0,60.0
    .goto Mulgore,51.4,59.2,50,0
    .goto Mulgore,59.6,62.4,50,0
    .goto Mulgore,51.4,59.2,50,0
    .goto Mulgore,59.6,62.4,50,0
        .goto Mulgore,51.4,59.2
    .unitscan Morin Cloudstalker
    .turnin 751 >>Turn in The Ravaged Caravan
step << !Tauren
#xprate <1.5
    .goto Mulgore,47.3,56.9,30,0
    .goto Mulgore,49.4,63.9,30,0
    .goto Mulgore,50.2,60.2,30,0
    .goto Mulgore,46.8,59.6,30,0
    .use 33009 >> Find Kyle the Frenzied. He patrols clockwise throughout the town (so go counter-clockwise). Go up to him and use the Tender Strider Meat
    .unitscan Kyle the Frenzied
.complete 11129,1 --Kyle Fed (1)
step << !Tauren
#xprate <1.5
    .goto Mulgore,48.3,53.3
    .turnin 11129 >>Turn in Kyle's Gone Missing!
step << !Tauren
#xprate <1.5
.goto Thunder Bluff,32.0,66.9,20 >>Run to the lift and take it into Thunder Bluff
step << !Tauren !Paladin
#xprate <1.5
    .goto Thunder Bluff,40.9,62.7
    .train 227 >>Train Staves
    .train 199 >>Train 2h Maces
step << Paladin
#xprate <1.5
    .goto Thunder Bluff,40.9,62.7
    .train 199 >>Train 2h Maces
step << !Tauren
#xprate <1.5
.goto Thunder Bluff,45.6,52.0,15 >>Go up the tower
step << !Tauren
#xprate <1.5
    >>Go to the top floor of the tower
.goto Thunder Bluff,46.8,49.9
    .fp >>Get the Thunder Bluff Flight Path
step << !Tauren
#xprate <1.5
.goto Thunder Bluff,29.6,29.7,15 >>Jump down into the cave
step << !Tauren
#xprate <1.5
    .goto Thunder Bluff,23.0,21.1
    .turnin 853 >>Turn in Apothecary Zamah
step << !Tauren
#xprate <1.5
    #completewith next
    .hs >>Hearth to Razor Hill
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
    .goto Durotar,46.4,22.9
    .turnin 834 >>Turn in Winds in the Desert
    .accept 835 >>Accept Securing the Lines
step << wotlk
    .goto Durotar,40.8,16.3
    .accept 812 >>Accept Need for a Cure
step << tbc
    .goto Durotar,41.5,18.6
    .accept 812 >>Accept Need for a Cure
step
.goto Orgrimmar,49.0,94.2,20 >>Run into Orgrimmar
step << Orc/Troll
#xprate <1.5
    .goto Orgrimmar,54.2,68.6
    .turnin 6384 >>Turn in Ride to Orgrimmar
    .accept 6385 >>Accept Doras the Wind Rider Master
step << Orc/Troll
#xprate <1.5
    .goto Orgrimmar,45.2,64.0
     >> Turn in the quests but do NOT fly back to The Crossroads
    .turnin 6385 >>Turn in Doras the Wind Rider Master
    .accept 6386 >>Accept Return to the Crossroads.
step << Orc/Troll
    .goto Orgrimmar,34.3,36.4
    >> Cross the bridge from the flightpath tower
    .turnin 831 >>Turn in The Admiral's Orders
step
    .goto Orgrimmar,31.9,37.7
    .accept 5726 >>Accept Hidden Enemies
step << Paladin
    .goto Orgrimmar,32.3,35.7
    .trainer >> Go and train your class spells
step
    .goto Orgrimmar,47.2,53.4
    >> Head into the Cleft of Shadow
    .accept 813 >>Accept Finding the Antidote
step
.goto Orgrimmar,49.0,94.2,20 >>Run out of Orgrimmar
step
.goto Durotar,41.7,25.5,30 >>Jump into Thunder Ridge
step
    >>Kill Fizzle and loot him for his Claw. Try to clear the mobs in the surrounding camps to make space
.goto Durotar,41.9,26.0
    .complete 806,1 --Fizzle's Claw (1)
step << !Warrior
.goto Durotar,39.2,32.3,30 >>Leave Thunder Ridge
step << Warrior
    .goto Durotar,39.2,32.3
    >>Kill Lightning Hides for Singed Scales. Follow the arrow towards the exit while doing this.
    .complete 1498,1 --Singed Scale (5)
step << Warrior
    .isQuestComplete 1498
    #sticky
    #completewith next
.goto Durotar,39.2,32.3,30 >>Leave Thunder Ridge
step
>>Start killing crocodiles for the Amulet
    >> Kill them while heading south. We're doing your totem quest next << Troll Shaman/Orc Shaman
    .goto Durotar,35.2,27.5,60,0
    .goto Durotar,35.7,57.8,60,0
    .goto Durotar,35.2,27.5,60,0
    .goto Durotar,35.7,57.8
    .complete 816,1 --Kron's Amulet (1)
step << Troll Shaman/Orc Shaman
.goto Durotar,36.6,58.0,15 >>Run up the mountain path
step << Troll Shaman/Orc Shaman
    .goto Durotar,38.6,59.0
    .turnin 1524 >>Turn in Call of Fire
    .accept 1525 >>Accept Call of Fire
step
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer, or run back to Razor Hill
step
.goto Durotar,52.3,43.1
    .turnin 806 >>Turn in Dark Storms
    .accept 828 >>Accept Margoz
step << Shaman
    #sticky
    #completewith next
    #level 12
    .trainer >>Train Ancestral Spirit if you're going to play with others
step << Shaman
    #level 12
    .goto Durotar,54.3,42.4
    .train 547 >>Train Healing Wave r3
    .train 1535 >>Train Fire Nova Totem
step << Warrior
    #level 12
    .goto Durotar,54.3,42.4
    .train 5242 >>Train Battle Shout r2
    .train 7384 >>Train Overpower
step << !Warrior
    .goto Durotar,54.4,42.2
.vendor >>Buy 6 slot bags from Jark until you can't equip new bags
step
    #xprate >1.499
    .goto Durotar,51.9,43.5
    .turnin 837 >>Turn in Encroachment
step
    >> Head out of Razor Hill to the east then head straight north
    .goto Durotar,55.6,36.6,80,0
    .goto Durotar,56.4,20.1
    .turnin 828 >>Turn in Margoz
    .accept 827 >>Accept Skull Rock
step
    #sticky
    #completewith next
    >>Kill Scorpions for Poison Sacs as you travel
    .goto Durotar,55.7,15.7
    .complete 813,1 --Venomtail Poison Sac (4)
step
    #sticky
    #label Collars2
   .goto Durotar,51.8,10.0
>>Kill Burning Blade mobs in Skull Rock for Searing Collars and until Lieutenant's Insignia drops
    .complete 827,1 --Searing Collar (6)
    .complete 5726,1 --Lieutenant's Insignia (1)
step << Orc Shaman/Troll Shaman/Orc Warrior/Troll Shaman/Troll Warrior
    .use 4945 >>Kill Gazz'uz for Eye of Burning Shadow. He can be in multiple areas of the cave. Use the Faintly Glowing Skull you saved from earlier, sticky glue on the voidwalker to reduce your damage taken, and Healing Potions to restore health. Use LoS (line of sight) to avoid his shadowbolts. Don't be afraid to die if it means killing and looting Gazz'uz
.goto Durotar,51.8,10.0
.collect 4903,1,832 --Collect Eye of Burning Shadow
    .accept 832 >>Accept Burning Shadows
    .unitscan Gazz'uz
step << Tauren Shaman/Tauren Warrior/Undead Warrior/Paladin
    .use 4945 >>Kill Gazz'uz for Eye of Burning Shadow. He can be in multiple areas of the cave. Use healing potions to restore health if you have them. Use LoS (line of sight) to avoid his shadowbolts. Don't be afraid to die if it means killing and looting Gazz'uz
.goto Durotar,51.8,10.0
.collect 4903,1,832 --Collect Eye of Burning Shadow
    .accept 832 >>Accept Burning Shadows
    .unitscan Gazz'uz
step
    #requires Collars2
    #sticky
    #completewith harpingme
    >>Kill Scorpions for Poison Sacs as you travel
    .goto Durotar,55.7,15.7
    .complete 813,1 --Venomtail Poison Sac (4)
step
.goto Durotar,56.4,20.1
    .turnin 827 >>Turn in Skull Rock
    .accept 829 >>Accept Neeru Fireblade
step << Shaman
    .isOnQuest 1525
    .goto Durotar,56.3,28.0,60,0
    .goto Durotar,52.8,28.7,20 >> Head south then into the cave here, above the harpy area
step << Shaman
    >>Kill the Burning Blade Cultists for the Reagent Pouch
.goto Durotar,52.5,26.7
    .complete 1525,2 --Reagent Pouch (1)
step << Shaman
    .isOnQuest 1525
    .goto Durotar,52.8,28.7,20 >> Leave the cave
step
    .goto Durotar,54.0,27.7,30,0
    .goto Durotar,51.3,23.5,30,0
    .goto Durotar,51.5,19.1,30,0
    .goto Durotar,54.0,27.7,30,0
    .goto Durotar,51.3,23.5,30,0
    .goto Durotar,51.5,19.1,30,0
    >>Kill Harpies in the area
    .complete 835,1 --Dustwind Savage (12)
    .complete 835,2 --Dustwind Storm Witch (8)
step
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer, or run back to Rezlak
step
    >>Return to Rezlak
    .goto Durotar,46.4,22.9
    .turnin 835 >>Turn in Securing the Lines
step
    >>Kill Scorpions for Poison Sacs
    .goto Durotar,55.7,15.7
    .complete 813,1 --Venomtail Poison Sac (4)
step << Warrior/Rogue
	.goto Orgrimmar,81.2,19.0
	.collect 25873,1 >> Purchase a Keen Throwing Knife from Zendo'jian
step
    .goto Orgrimmar,31.8,37.8
    .turnin 5726 >>Turn in Hidden Enemies
step
    .goto Orgrimmar,47.0,53.4
    .turnin 813 >>Turn in Finding the Antidote
step
    .goto Orgrimmar,49.4,50.5
    .turnin 829 >>Turn in Neeru Fireblade
    .accept 809 >>Accept Ak'Zeloth
step
    .isOnQuest 832
    .goto Orgrimmar,49.4,50.5
    .turnin 832 >>Turn in Burning Shadows
step << tbc
    .goto Durotar,41.6,18.7
    >>You are still able to turn in this quest even if it shows 'missing pre-req'
    .turnin 812 >>Turn in Need for a Cure
step << wotlk
    .goto Durotar,40.8,16.3
    >>You are still able to turn in this quest even if it shows 'missing pre-req'
    .turnin 812 >>Turn in Need for a Cure
step
    .goto Durotar,43.1,30.3
    .turnin 816 >>Turn in Lost But Not Forgotten
step
    .goto The Barrens,62.3,20.1
    .turnin 809 >>Turn in Ak'Zeloth
    .accept 924 >>Accept The Demon Seed
step
    .goto The Barrens,62.3,20.0
    >>Loot the Purple Stone next to Ak'Zeloth. This item has a 30 minute timer, so be sure to be quick
    .collect 4986,1
    .turnin 926 >>Turn in Flawed Power Stone
step << Warrior
    .goto The Barrens,61.4,21.1
    .turnin 1498 >>Turn in Path of Defense
    .accept 1502 >>Accept Thun'grim Firegaze
]])
