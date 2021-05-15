RXPGuides.RegisterGuide("RestedXP Horde 1-30",[[
<< Horde
#name 1-10 Durotar
#next 10-13 Durotar << Warrior/Shaman
#next 10-20 Eversong Woods-Ghostlands << !Warrior !Shaman
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
.goto Durotar,44.0,71.3,30,0
step << Warlock
    .goto Durotar,42.6,69.0
.accept 1485 >>Accept Vile Familiars
step << Warrior/Shaman
    #sticky
#completewith next
+Kill Boars for 10c+ of vendor trash
.goto Durotar,44.2,65.9,30,0
step << Warrior/Shaman
.goto Durotar,42.6,67.3
.vendor >> vendor trash. Vendor armor if less than 10c
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
step << !Warlock
    .goto Durotar,44.2,65.9,40,0
step << Warlock
    .goto Durotar,40.6,68.4
    .vendor >>vendor trash at the demon trainer
step << Warlock
     .goto Durotar,40.6,68.5
    .train 348 >>Train Immolate
step << !Warlock
    .goto Durotar,41.9,63.7
    .complete 788,1 --Mottled Boar (10)
step << Warlock
    #sticky
    #completewith WarlockBoars
>>Kill Mottled Boars en route to Vile Familiars. Try to ding 2 before getting to Familiars. Don’t sit and drink for these
    .complete 788,1 --Mottled Boar (10)
step << Warlock
    #label WarlockBoars
.goto Durotar,45.0,57.4,90 >> Run to the Familiars
step << Warlock
.goto Durotar,45.3,56.9
    >>Kill Vile Familiars for their heads
    .complete 1485,1 --Vile Familiar Head (6)
step << Warlock
    #sticky
>>Finish off killing the Mottled Boars
    .complete 788,1 --Mottled Boar (10)
step << Warlock
    >>Grind Boars en route
.goto Durotar,40.6,62.6
    .accept 790 >>Accept Sarkoth
step << !Warlock
.goto Durotar,40.6,62.6
    .accept 790 >>Accept Sarkoth
step
.goto Durotar,40.7,65.2,15 >>Go up the path here
step
    >>Kill Sarkoth. Loot his claw
.goto Durotar,40.7,67.3
    .complete 790,1 --Sarkoth's Mangled Claw (1)
step
    .goto Durotar,40.6,62.6
    .turnin 790 >>Turn in Sarkoth
    .accept 804 >>Accept Sarkoth
step << Warlock
    #sticky
.xp 3+685 >> Grind to 685+/1400xp on the way back to town
step << Warlock
    .goto Durotar,42.6,67.3
    .vendor >>vendor trash, buy 10 water
step << Warlock
.goto Durotar,42.6,69.0
.turnin 1485 >>Turn in Vile Familiars
.accept 1499 >>Accept Vile Familiars
step << Warlock
    >>Choose the dagger and equip it. Remember to summon your Imp
.goto Durotar,42.9,69.1
    .turnin 1499 >>Turn in Vile Familiars
    .accept 794 >>Accept Burning Blade Medallion
step << Orc Rogue
    .goto Durotar,42.1,68.3
    .turnin 788 >>Turn in Cutting Teeth
    .turnin 804 >>Turn in Sarkoth
    .accept 3088 >>Accept Encrypted Parchment
    .accept 789 >>Accept Sting of the Scorpid
step << Troll Rogue
    .goto Durotar,42.1,68.3
    .turnin 788 >>Turn in Cutting Teeth
    .turnin 804 >>Turn in Sarkoth
    .accept 3083 >>Accept Encrypted Tablet
    .accept 789 >>Accept Sting of the Scorpid
step << Orc Hunter
    .goto Durotar,42.1,68.3
    .turnin 788 >>Turn in Cutting Teeth
    .turnin 804 >>Turn in Sarkoth
    .accept 3087 >>Accept Etched Parchment
    .accept 789 >>Accept Sting of the Scorpid
step << Troll Hunter
    .goto Durotar,42.1,68.3
    .turnin 788 >>Turn in Cutting Teeth
    .turnin 804 >>Turn in Sarkoth
    .accept 3082 >>Accept Etched Tablet
    .accept 789 >>Accept Sting of the Scorpid
step << Troll Mage
    .goto Durotar,42.1,68.3
    .turnin 788 >>Turn in Cutting Teeth
    .turnin 804 >>Turn in Sarkoth
    .accept 3086 >>Accept Glyphic Tablet
    .accept 789 >>Accept Sting of the Scorpid
step << Troll Priest
    .goto Durotar,42.1,68.3
    .turnin 788 >>Turn in Cutting Teeth
    .turnin 804 >>Turn in Sarkoth
    .accept 3085 >>Accept Hallowed Tablet
    .accept 789 >>Accept Sting of the Scorpid
step << Troll Shaman
    .goto Durotar,42.1,68.3
    .turnin 788 >>Turn in Cutting Teeth
    .turnin 804 >>Turn in Sarkoth
    .accept 3084 >>Accept Rune-Inscribed Tablet
    .accept 789 >>Accept Sting of the Scorpid
step << Orc Shaman
    .goto Durotar,42.1,68.3
    .turnin 788 >>Turn in Cutting Teeth
    .turnin 804 >>Turn in Sarkoth
    .accept 3089 >>Accept Rune-Inscribed Parchment
    .accept 789 >>Accept Sting of the Scorpid
step << Orc Warrior
    .goto Durotar,42.1,68.3
    .turnin 788 >>Turn in Cutting Teeth
    .turnin 804 >>Turn in Sarkoth
    .accept 2383 >>Accept Simple Parchment
    .accept 789 >>Accept Sting of the Scorpid
step << Troll Warrior
    .goto Durotar,42.1,68.3
    .turnin 788 >>Turn in Cutting Teeth
    .turnin 804 >>Turn in Sarkoth
    .accept 3065 >>Accept Simple Tablet
    .accept 789 >>Accept Sting of the Scorpid
step << Troll Warlock
    .goto Durotar,42.1,68.3
    .turnin 788 >>Turn in Cutting Teeth
    .turnin 804 >>Turn in Sarkoth
    .accept 3090>>Accept Tainted Parchment
    .accept 789 >>Accept Sting of the Scorpid
step << Orc Rogue
      .goto Durotar,41.3,68.0
    .turnin 3088 >>Turn in Encrypted Parchment
step << Troll Rogue
      .goto Durotar,41.3,68.0
.turnin 3083 >>Turn in Encrypted Tablet
step << Orc Warlock
    .goto Durotar,40.6,68.4
    .vendor >>vendor trash at the demon trainer
step << Orc Warlock
     .goto Durotar,40.6,68.5
    .turnin 3090>>Turn in Tainted Parchment
    .train 172 >>Train Corruption
step << Shaman/Priest/Mage
    .goto Durotar,42.6,67.3
    .vendor >>vendor trash, buy 10 water
step << Warrior/Rogue
    .goto Durotar,42.6,67.3
    .vendor >>vendor trash
step << Hunter
    .goto Durotar,42.6,67.3
    .vendor >>vendor trash. Buy arrows until your Quiver is full (1000 arrows)
step
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
    #sticky
    #completewith Apples
    >>Loot Cactuses that you see with apples on them
    .complete 4402,1 --Cactus Apple (10)
step
    #sticky
    #completewith Peons
>>Wake up any sleeping peons around the trees with Foreman’s Blackjack (put it on your bars)
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
.goto Durotar,47.1,65.2,30,0
.goto Durotar,46.6,58.2,30,0
.goto Durotar,39.8,63.5
step << !Warlock
    #label imps
.goto Durotar,45.2,56.8
    >>Kill Imps in front of the cave
    .complete 792,1 --Vile Familiar (12)
step <<!Warlock
>>Finish off the Scorpion Tails
.goto Durotar,39.8,63.5
    .complete 789,1 --Scorpid Worker Tail (10)
step
    #label Apples
.goto Durotar,39.8,63.5,2000,0
step
    #label Peons
.goto Durotar,39.8,63.5,2000,0
step
    .goto Durotar,44.0,65.3
    >>Finish looting the Cactus Apples
    .complete 4402,1 --Cactus Apple (10)
step
>>Finish waking the peons around the trees. Backtrack if you are struggling
    .complete 5441,1 --Peons Awoken (5)
step
    .goto Durotar,42.7,67.2
    .turnin 4402 >>Turn in Galgar's Cactus Apple Surprise
step << Warrior/Rogue/Hunter
    .goto Durotar,42.6,67.3
.vendor >>vendor trash
step << Mage/Priest/Warlock
    .goto Durotar,42.6,67.3
.vendor >>vendor trash. Buy 10 water
step
    .goto Durotar,42.1,68.3
    .turnin 789 >>Turn in Sting of the Scorpid
step << Shaman
    .goto Durotar,42.4,69.1
    .accept 1516 >>Accept Call of Earth
    .train 8042 >>Train Earth Shock
step << Shaman
    .goto Durotar,42.9,69.1
    >>Choose the staff
    .turnin 792 >>Turn in Vile Familiars
    .accept 794 >>Accept Burning Blade Medallion
step << Mage
    .goto Durotar,42.5,69.0
    .train 116 >>Train Frostbolt
step << Priest
    .money <0.0190
    .goto Durotar,42.4,68.8
    .train 589 >>Train Shadow Word: Pain
    .train 2052 >>Train Lesser Heal r2
step << Priest
    .istrained 589
    .goto Durotar,42.4,68.8
    .train 589 >>Train Shadow Word: Pain
step << !Shaman !Warlock
    .goto Durotar,42.9,69.1
    .turnin 792 >>Turn in Vile Familiars
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
    .turnin 5441 >>Turn in Lazy Peons
    .accept 6394 >>Accept Thazz'ril's Pick
step
    .goto Durotar,45.2,56.8,30 >>Run to the cave
step << Shaman
    #sticky
>>Kill Felstalkers for Hooves
.complete 1516,1 --Felstalker Hoof (2)
step
>>Go into the middle room and loot the Pick
.goto Durotar,43.7,53.8
    .complete 6394,1 --Thazz'ril's Pick (1)
step
    .goto Durotar,44.7,54.0,10 >>Go back to this part of the cave
step
    .goto Durotar,43.4,52.0,10 >>Follow it to here
step
    >>Kill Yarrog. Loot him for the Medallion
.goto Durotar,42.7,53.0
    .complete 794,1 --Burning Blade Medallion (1)
step << !Shaman
    .xp 5+1680 >> Grind to 1680+/2800xp
step << Shaman
    .xp 5+690 >> Grind to 690+/2800xp
step
    .hs >>Hearth to Valley of Trials
    .goto Durotar,43.3,69.0,100,0
step
    .goto Durotar,44.6,68.6
    .turnin 6394 >>Turn in Thazz'ril's Pick
step
    .goto Durotar,42.6,67.3
.vendor >>vendor trash
step
    >>Save the healing potion you get, you might need it later for the centaurs
.goto Durotar,42.8,69.1
    .turnin 794 >>Turn in Burning Blade Medallion
    .accept 805 >>Accept Report to Sen'jin Village
step << !Shaman
    .xp 6 >> Grind to 6
step << Priest
    .istrained 2052
.goto Durotar,42.4,68.8
.accept 5649 >> In Favor of Spirituality
.train 591 >>Train Smite r2
    .train 17 >>Train Power Word: Shield
    .train 2052 >>Train Lesser Heal r2
step << Priest
    .istrained 591,17
.goto Durotar,42.4,68.8
.accept 5649 >> In Favor of Spirituality
.train 591 >>Train Smite r2
    .train 17 >>Train Power Word: Shield
step << Mage
    .goto Durotar,42.5,69.0
    .train 143 >>Train Fireball r2
    .train 2136 >>Train Fire Blast
step << Shaman
    .goto Durotar,42.4,69.2
    .turnin 1516 >>Turn in Call of Earth
    .accept 1517 >>Accept Call of Earth
step << Hunter
    .goto Durotar,42.8,69.3
    .train 1130 >>Train Hunter’s Mark
    .train 3044 >>Train Arcane Shot
step << Warrior
    .goto Durotar,42.9,69.4
    .train 3127 >>Train Parry
step << Rogue
    .money <0.0190
.goto Durotar,41.3,68.0
    .train 1757 >>Train Sinister Strike r2
    .train 1776 >>Train Gouge
step << Rogue
.istrained 1757
.goto Durotar,41.3,68.0
    .train 1757 >>Train Sinister Strike r2
step << Warlock
    .goto Durotar,40.6,68.5
    .train 695 >>Train Shadow Bolt r2
    .train 1454 >>Train Life Tap
step << Warlock
    .money <0.0095
.goto Durotar,40.6,68.4
    .vendor >>Buy the Blood Pact book and use it
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
    .train 332 >>Train Healing Wave r2
step
    >>Leave the starting area
.goto Durotar,52.1,68.3
    .accept 2161 >>Accept A Peon's Burden
step
.goto Durotar,54.3,73.3,15,0
.goto Durotar,54.5,75.0,15,0
.goto Durotar,54.1,76.6,15,0
>>Quest giver patrols between 3 points
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
step << Shaman
.goto Durotar,56.5,73.1
.vendor >> vendor trash. Sell your weapon if it gives you enough money for Walking Stick (4s 80c). You'll come back later if you don't have enough yet
step << Shaman
    .goto Durotar,56.5,73.1
    .money <0.0480
    >> Buy Walking Stick and equip it
    .collect 2495,1 --Collect Walking Stick
step << Rogue
.goto Durotar,56.5,73.1
.vendor >> vendor trash. Sell your weapon if it gives you enough money for Stiletto (3s 82c). You'll come back later if you don't have enough yet
step << Rogue
    .goto Durotar,56.5,73.1
    .money <0.0382
    >> Buy Stiletto and equip it
    .collect 2494,1 --Collect Stiletto
step << Orc Warrior
    .goto Durotar,56.5,73.1
.vendor >> vendor trash. Sell your weapon if it gives you enough money for Large Axe (4s 60c). You'll come back later if you don't have enough yet
step << Orc Warrior
    .goto Durotar,56.5,73.1
    .money <0.0460
    >> Buy Large Axe and equip it
    .collect 2491,1 --Collect Large Axe
step << Troll Warrior
    .goto Durotar,56.5,73.1
.vendor >> vendor trash. Sell your weapon if it gives you enough money for Gladius (5s 9c). You'll come back later if you don't have enough yet
step << Troll Warrior
    .goto Durotar,56.5,73.1
    .money <0.0509
    >> Buy Gladius and equip it
    .collect 2488,1 --Collect Gladius
step << Hunter
    .goto Durotar,56.5,73.1
.vendor >> vendor trash. Sell your weapon if it gives you enough money for Hornwood Recurve Bow (2s 71c). You'll come back later if you don't have enough yet
step << Hunter
    .goto Durotar,56.5,73.1
    .money <0.0271
    >> Buy Hornwood Recurve Bow and equip it
    .collect 2506,1 --Collect Hornwood Recurve Bow
step
#sticky
#completewith next
.goto Durotar,59.7,71.7,50,0
    .goto Durotar,57.6,77.9,50,0
    >> Run down the beach, killing as many Crawlers and Makrura as possible for Mucus and Eyes
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
step
    .goto Durotar,52.1,83.3,75 >> Reach the end of the beach
step
.goto Durotar,50.9,79.2,15 >>Enter the Kolkar base
step
     #sticky
    #completewith Bonfire
 >> If the rare is up, kill it when you are level 7. Be sure to use the Cactus Apple Surprise for +2 stam and use the Healing Potion from earlier.
step
    >>Inside the tent, on the ground
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
    .goto Durotar,57.5,73.3,200 >> Die at the Bonfire and respawn at the Spirit Healer, or run back
step << Shaman
    .goto Durotar,56.6,73.1
    .money <0.0480
    >>Talk to Traxexir from below the stairs outside
    >> Buy Walking Stick and equip it
    .collect 2495,1 --Collect Walking Stick
step << Rogue
    .goto Durotar,56.5,73.1
    .money <0.0382
    >>Talk to Traxexir from below the stairs outside
    >> Buy Stiletto and equip it
    .collect 2494,1 --Collect Stiletto
step << Orc Warrior
    .money <0.0460
    .goto Durotar,56.5,73.1
    >>Talk to Traxexir from below the stairs outside
    >> Buy Large Axe and equip it
    .collect 2491,1 --Collect Large Axe
step << Troll Warrior
    .goto Durotar,56.5,73.1
    .money <0.0509
    >>Talk to Traxexir from below the stairs outside
    >> Buy Gladius and equip it
    .collect 2488,1 --Collect Gladius
step << Hunter
    .goto Durotar,56.5,73.1
    .money <0.0271
    >> Buy Hornwood Recurve Bow and equip it
    .collect 2506,1 --Collect Hornwood Recurve Bow
step
.goto Durotar,52.5,44.4,100 >>Grind to Razor Hill
step
>>Inside the bunker, top floor
.goto Durotar,51.9,43.5
.accept 784 >>Accept Vanquish the Betrayers
step
.goto Durotar,51.1,42.6
.vendor >>vendor trash
step
.goto Durotar,50.2,43.1,10 >>Go up this path here
step
    >>Go up the tower
.goto Durotar,49.9,40.3
    .accept 791 >>Accept Carry Your Weight
step << Shaman
    .goto Durotar,52.0,40.5
    .money <0.0480
    >> Buy Walking Stick and equip it
    .collect 2495,1 --Collect Walking Stick
step << Rogue
    .goto Durotar,52.0,40.5
    .money <0.0382
    >> Buy Stiletto and equip it
    .collect 2494,1 --Collect Stiletto
step << Orc Warrior
    .goto Durotar,52.0,40.5
    .money <0.0460
    >> Buy Large Axe and equip it
    .collect 2491,1 --Collect Large Axe
step << Troll Warrior
    .goto Durotar,52.0,40.5
    .money <0.0509
    >> Buy Gladius and equip it
    .collect 2488,1 --Collect Gladius
step << Hunter
    .goto Durotar,53.0,41.0
    .money <0.0271
    >> Buy Hornwood Recurve Bow and equip it
    .collect 2506,1 --Collect Hornwood Recurve Bow
step << Warrior/Rogue
    .goto Durotar,52.0,40.7
    .money <0.0020
    .train 2018 >> Train Blacksmithing. Blacksmithing allows you to make Sharpening stones (+2 weapon damage for 1 hour). You can skip Blacksmithing and Mining if you wish
step << Warrior/Rogue
    .goto Durotar,51.8,40.9
    .money <0.0010
    .train 2580 >> Train Mining. Cast “Find Minerals” in your spellbook
step << Warrior/Rogue
    .goto Durotar,53.0,42.0
    .money <0.0077
.collect 2901,1 >> Buy a Mining Pick. Keep an eye out for veins to mine to make Sharpening Stones for your weapon with blacksmithing
step << Priest/Mage/Warlock/Shaman
    .goto Durotar,51.5,41.6
    .turnin 2161 >>Turn in A Peon's Burden
    .home >> Set your Hearthstone to Razor Hill
    .vendor >> Buy as much Ice Cold Milk as you can
step << Warrior/Rogue/Hunter
    .goto Durotar,51.5,41.6
    .turnin 2161 >>Turn in A Peon's Burden
    .home >> Set your Hearthstone to Razor Hill
    .vendor >> Buy as much Haunch of Meat as you can
step << Priest
    .goto Durotar,54.3,42.9
    .turnin 5649 >> In Favor of Spirituality
    .accept 5648 >> Garments of Spirituality
step << Priest
    .goto Durotar,53.1,46.5
 .complete 5648,1 --Heal and fortify Grunt Kor’ja
step << Priest
    .goto Durotar,54.3,42.9
    .turnin 5649 >> In Favor of Spirituality
step
    #sticky
    #completewith next
>>Kill Kul Tiras mobs. Loot them for Scraps
    .complete 784,2 --Kul Tiras Marine (8)
    .complete 784,1 --Kul Tiras Sailor (10)
    .complete 791,1 --Canvas Scraps (8)
step
.goto Durotar,59.3,58.3,10 >>Go inside the keep
step
    .goto Durotar,59.7,58.3
    >>Go to the top floor of the Keep. Kill Lieutenant Benedict and loot his key - be careful as he uses Shield Bash (Interrupt)
.complete 784,3 --Lieutenant Benedict (1)
.collect 4882,1 --Collect Benedict’s Key (1)
step
.goto Durotar,59.8,57.8,8 >>Go up the stairs here
step
.goto Durotar,59.9,57.5,8 >>Go up the stairs here
step
>>Loot the chest. Accept the quest from the item
.goto Durotar,59.3,57.6
.collect 4881,1,830 --Collect Aged Envelope (1)
.accept 830 >>Accept The Admiral's Orders
step
    .xp 7+2195 >> Grind to 2195+/4500xp
step
    .goto Durotar,53.5,44.5,120 >> Die and respawn at the Spirit Healer, or run back
step
    .goto Durotar,52.2,43.2
    .turnin 823 >>Turn in Report to Orgnil
    .accept 806 >>Accept Dark Storms
step
    .goto Durotar,51.9,43.5
    .turnin 784 >>Turn in Vanquish the Betrayers
    .accept 825 >>Accept From The Wreckage....
    .turnin 830 >>Turn in The Admiral's Orders
    .accept 831 >>Accept The Admiral's Orders
    .accept 837 >>Accept Encroachment
step
    .goto Durotar,51.1,42.4
    .accept 815 >>Accept Break a Few Eggs
step
.goto Durotar,49.9,40.3
    .turnin 791 >>Turn in Carry Your Weight
step << Shaman
    .goto Durotar,52.0,40.5
    .money <0.0480
    >> Buy Walking Stick and equip it
    .collect 2495,1 --Collect Walking Stick
step << Rogue
    .goto Durotar,52.0,40.5
    .money <0.0382
    >> Buy Stiletto and equip it
    .collect 2494,1 --Collect Stiletto
step << Orc Warrior
    .goto Durotar,52.0,40.5
    .money <0.0460
    >> Buy Large Axe and equip it
    .collect 2491,1 --Collect Large Axe
step << Troll Warrior
    .goto Durotar,52.0,40.5
    .money <0.0509
    >> Buy Gladius and equip it
    .collect 2488,1 --Collect Gladius
step << Hunter
    .goto Durotar,53.0,41.0
    .money <0.0271
    >> Buy Hornwood Recurve Bow and equip it
    .collect 2506,1 --Collect Hornwood Recurve Bow
step << Warrior/Rogue
    .istrained 2018
.goto Durotar,52.0,40.7
    .money <0.0020
    .train 2018 >> Train Blacksmithing. Blacksmithing allows you to make Sharpening stones (+2 weapon damage for 1 hour). You can skip Blacksmithing and Mining if you wish
step << Warrior/Rogue
    .istrained 2580
.goto Durotar,51.8,40.9
    .money <0.0010
    .train 2580 >> Train Mining. Cast “Find Minerals” in your spellbook
step << Warrior/Rogue
    .goto Durotar,53.0,42.0
    .money <0.0077
.collect 2901,1 >> Buy a Mining Pick. Keep an eye out for veins to mine to make Sharpening Stones for your weapon
step << Shaman
    .goto Durotar,54.4,42.6
    .train 2484 >>Train Earthbind Totem
    .train 324 >>Train Lightning Shield
    .train 8044 >>Train Earth Shock r2
    .train 8018 >>Train Rockbiter Weapon r2
step << Priest
    .istrained 2052
    .goto Durotar,54.3,42.9
    .train 139 >>Train Renew
    .train 2052 >>Train Lesser Heal r2
step << Priest
    .istrained 139
    .goto Durotar,54.3,42.9
    .train 139 >>Train Renew
step << Warrior
    .istrained 3127
.goto Durotar,54.2,42.5
.train 3127 >>Train Parry
step << Warrior
    .istrained 3127
.goto Durotar,54.2,42.5
    .train 284 >>Train Heroic Strike r2
    .train 1715 >>Train Hamstring
    .train 3127 >>Train Parry
step << Warrior
.istrained 284
.istrained 1715
.goto Durotar,54.2,42.5
    .train 284 >>Train Heroic Strike r2
    .train 1715 >>Train Hamstring
step << Hunter
    .istrained 13163
.goto Durotar,51.8,43.5
.train 5116 >>Train Concussive Shot
.train 13163 >>Train Aspect of the Monkey
step << Hunter
    .istrained 5116
.goto Durotar,51.8,43.5
.train 5116 >>Train Concussive Shot
step << Rogue
    .istrained 1776
.goto Durotar,52.0,43.7
    .train 6760 >>Train Eviscerate r2
    .train 5277 >>Train Evasion
.train 1776 >>Train Gouge
step << Rogue
    .istrained 6760,5277
.goto Durotar,52.0,43.7
    .train 6760 >>Train Eviscerate r2
    .train 5277 >>Train Evasion
step << Warlock
    .goto Durotar,54.4,41.2
    .train 980 >>Train Curse of Agony
    .train 5782 >>Train Fear
step << Warlock
    .istrained 6307
.goto Durotar,54.7,41.5
    .vendor >>Buy the Blood Pact, Firebolt r2 books and use them
step << Warlock
    .istrained 7832
.goto Durotar,54.7,41.5
    .vendor >>Buy the Firebolt r2 book and use it
step << Warrior/Rogue
    .goto Durotar,54.2,41.9
    .money <0.0095
    .train 3273 >>Train First Aid
step
    .goto Durotar,54.4,42.2
    .money <0.1184
.vendor >>Buy a 6 slot bag from Jark
step << Priest/Warlock/Mage
    .goto Durotar,51.5,41.6
    .vendor >> Buy as much Ice Cold Milk as you can
step << Warrior/Rogue
    .goto Durotar,51.5,41.6
    .vendor >> Buy as much Haunch of Meat as you can
    --I don’t think shaman or hunter would need? - they have to meet money gates too
step
    #sticky
    #completewith Tools
    >>Kill some Makrura here for eyes/Crawlers for Mucus
    .complete 818,1 --Intact Makrura Eye (4)
    .complete 818,2 --Crawler Mucus (8)
step
    #label Tools
>>Check the boat closest to the shore for the Toolboxes. Check other boats if you can’t find these spawns
.goto Durotar,61.9,55.5,8,0
    .goto Durotar,62.3,56.3,8,0
    .goto Durotar,61.4,56.1,8,0
    .complete 825,1 --Gnomish Tools (3)
step
    .goto Durotar,67.2,70.0,60 >>Swim to the Island
step
    #sticky
    #completewith Fur
    >>Kill all Tigers that you see for their Fur
    .complete 817,1 --Durotar Tiger Fur (4)
step
    >>Loot Taillasher eggs on the ground on this island. They’re usually guarded by a Taillasher
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
.goto Durotar,53.1,46.5,60 >>Swim to the other island
step
    #sticky
    #completewith Trolls
    >>Kill the trolls in the area
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
    >>Kill Zalazane. (You may need a pot). Loot his head
    .complete 826,3 --Zalazane's Head (1)
step
    #label Trolls
.goto Durotar,67.4,87.8
    >>Loot one of the skulls on the ground
    .complete 808,1 --Minshina's Skull (1)
step
    #label Fur
>>Kill the rest of the trolls
    .complete 826,1 --Hexed Troll (8)
    .complete 826,2 --Voodoo Troll (8)
step
>>Get the rest of the Tiger Fur
.goto Durotar,64.7,88.5,30,0
    .goto Durotar,65.2,80.8,30,0
    .goto Durotar,59.9,83.6,30,0
.goto Durotar,64.7,88.5,30,0
    .goto Durotar,65.2,80.8,30,0
    .goto Durotar,59.9,83.6,30,0
    .complete 817,1 --Durotar Tiger Fur (4)
step
    .goto Durotar,57.5,73.3,200 >> Die and respawn at the Spirit Healer, or run back
step
    >> Get the rest of the items from the Makrura and Crawlers
    .complete 818,1 --Intact Makrura Eye (4)
    .complete 818,2 --Crawler Mucus (8)
.goto Durotar,59.7,71.7,50,0
    .goto Durotar,57.6,77.9,50,0
.goto Durotar,59.7,71.7,50,0
    .goto Durotar,57.6,77.9,50,0
step << Mage
    >>Go inside the tent
.goto Durotar,56.3,75.1
    .train 205 >>Train Frostbolt r2
.train 118 >>Train Polymorph
step
    >>Save the Faintly Glowing Skull for later
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
    .goto Durotar,54.3,73.3
    .turnin 786 >>Turn in Thwarting Kolkar Aggression
step
    .goto Durotar,48.9,48.5
    >>Kill Quilboars and Scouts in the area
    .complete 837,1 --Razormane Quilboar (4)
    .complete 837,2 --Razormane Scout (4)
step
    .goto Durotar,43.8,39.1
    >>Kill Dustrunners and Battleguards in the area. Dustrunners have Rejuvenation (Heal) and Battleguards are tanky
    .complete 837,3 --Razormane Dustrunner (4)
    .complete 837,4 --Razormane Battleguard (4)
step
.xp 9+4475 >>Grind to 4475+/6500xp
step
.goto Durotar,51.1,42.4
    .turnin 815 >>Turn in Break a Few Eggs
step
    .goto Durotar,51.9,43.5
    .turnin 825 >>Turn in From The Wreckage....
    .turnin 837 >>Turn in Encroachment
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
    step << Rogue
    .goto Durotar,56.5,73.1
    .money <0.0382
    .vendor >> Buy another Stiletto and equip it
step << Warrior/Rogue
    .istrained 3273
.goto Durotar,54.2,41.9
    .money <0.0095
    .train 3273 >>Train First Aid
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
    >>Click the Taming Rod in your bag on a Boar. Try to do it at max range (30 yards)
.goto Durotar,51.5,50.0
.complete 6062,1 --Tame a Dire Mottled Boar
step << Hunter
    .goto Durotar,51.8,43.5
.turnin 6062 >>Turn in Taming the Beast
.accept 6083 >>Accept Taming the Beast
step << Hunter
    >>Don’t kill the Armored Scorpids you see
.goto Durotar,59.3,27.6
.complete 6083,1 --Tame a Surf Crawler
step << Hunter
    .goto Durotar,51.8,43.5
.turnin 6083 >>Turn in Taming the Beast
.accept 6082 >>Accept Taming the Beast
step << Hunter
    >>Click the Taming Rod in your bag on a Scorpid. Try to do it at max range (30 yards)
.goto Durotar,59.3,27.6
.complete 6083,1 --Tame an Armored Scorpid
step << Hunter
    .goto Durotar,51.8,43.5
.turnin 6082 >>Turn in Taming the Beast
.accept 6081 >>Accept Training the Beast
step << Hunter
.goto Durotar,46.4,22.9
    .accept 834 >>Accept Winds in the Desert
step << Warlock/Hunter
.goto Orgrimmar,49.0,94.2,20 >>Run into Orgrimmar
step << Hunter
    .goto Orgrimmar,66.0,18.5
    .turnin 6081 >>Turn in Training the Beast
step << Hunter
    >>Put "Beast Training" on your bars. Remember to teach your pet skills later
.goto Orgrimmar,66.3,14.8
    .train 4195 >>Train Great Stamina
    .train 24547 >>Train Natural Armor
step << Warlock
.goto Orgrimmar,48.3,45.3
.turnin 1506 >>Turn in Gan'rul's Summons
.accept 1501 >>Accept Creature of the Void
step << Warlock
.goto Orgrimmar,31.6,37.8
.accept 5726 >>Accept Hidden Enemies
step << Warlock
.goto Orgrimmar,49.0,94.2,20 >>Run out of Orgrimmar
step << Warlock
    .goto Durotar,56.4,20.1
    .turnin 828 >>Turn in Margoz
    .accept 827 >>Accept Skull Rock
step << Warlock
.goto Durotar,55.0,9.7,20 >>Enter Skull Rock
step << Warlock
    #sticky
    #label Collars
>>Kill Burning Blade mobs in Skull Rock for Searing Collars, and until Lieutenant’s Insignia drops
    .complete 827,1 --Searing Collar (6)
    .complete 5726,1 --Lieutenant's Insignia (1)
step << Warlock
    #sticky
    #label Eye
    #completewith Skull
    >>Optionally, you can kill Gazz’uz (level 14 warlock) for a quest item. Be sure to use your skull from earlier, any potions you have, or sticky glue on the voidwalker. You can LoS (Line of Sight) Gazz’uz to avoid his shadowbolts, and fear his pet. If you can’t kill him, try to sneak past, or die and respawn past him in the water.
    .collect 4903,1 --Collect Eye of Burning Shadow
step << Warlock
#requires Eye
#label Shadows
    .accept 832 >>Accept Burning Shadows
step << Warlock 
.goto Durotar,53.6,8.5,10 >> Go into the Right path of the cave
step << Warlock
.goto Durotar,51.8,8.1,10 >> Continue hugging right
step << Warlock
    >>Loot the chest
.goto Durotar,51.6,9.8
    .complete 1501,1 --Tablet of Verga (1)
step << Warlock
    #requires Collars
#label Skull
.goto Durotar,47.2,17.7,225 >> Die and respawn at the Spirit Healer, or run back
step << Warlock
    .goto Durotar,56.4,20.1
    .turnin 827 >>Turn in Skull Rock
    .accept 829 >>Accept Neeru Fireblade
step << Warlock
.goto Orgrimmar,49.0,94.2,20    >>Run into Orgrimmar
step << Warlock
    .goto Orgrimmar,48.3,45.3
    .turnin 1501 >>Turn in Creature of the Void
    .accept 1504 >>Accept The Binding
step << Warlock
    #requires Shadows
.goto Orgrimmar,49.5,50.6
    .turnin 832 >>Turn in Burning Shadows
    .turnin 829 >>Turn in Neeru Fireblade
step << Warlock
.goto Orgrimmar,49.5,50.6
    .turnin 829 >>Turn in Neeru Fireblade
step << Warlock
    .goto Orgrimmar,49.5,50.0
    >>Use the Glyphs of Summoning to summon a voidwalker. Kill it
    .complete 1504,1 --Summoned Voidwalker (1)
step << Warlock
    .goto Orgrimmar,48.3,45.3
.abandon 809 >> Abandon Ak'Zeloth
step << Warlock
    >>You can now summon a Voidwalker
.goto Orgrimmar,48.3,45.3
    .turnin 1504 >>Turn in The Binding
step << Warlock
    .goto Orgrimmar,31.8,37.8
    .turnin 5726 >>Turn in Hidden Enemies
step << !Shaman !Warrior !Warlock !Hunter
.goto Durotar,46.4,22.9
    .accept 834 >>Accept Winds in the Desert
step << !Shaman !Warrior !Warlock
    >>Loot the small sacks on the ground
.goto Durotar,51.7,27.7
    .complete 834,1 --Sack of Supplies (5)
step << !Shaman !Warrior !Warlock
    .goto Durotar,46.4,22.9
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
    .goto Durotar,47.2,17.6,60 >> Die and respawn at the Spirit Healer, or run back
step << !Shaman !Warrior !Warlock
    .goto Durotar,46.4,22.9
    .turnin 835 >>Turn in Securing the Lines
step << Hunter
    .goto Durotar,57.2,12.0
    +Tame A Surf Crawler
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
]],"Orc/Troll")
RXPGuides.RegisterGuide("RestedXP Horde 1-30",[[
<< Horde Warrior/Shaman
#name 10-13 Durotar
#next 13-23 The Barrens
step << Shaman/Warrior
    .goto Durotar,50.8,43.6
    .accept 840 >>Accept Conscript of the Horde
step << Shaman/Warrior
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
step << !Tauren
    .goto The Barrens,50.8,32.6,200 >> Die and respawn at the Spirit Healer, or run back
step << !Tauren
    .goto The Barrens,52.2,31.8
    .accept 870 >>Accept The Forgotten Pools
step << !Tauren
    .goto The Barrens,52.2,31.0
    .turnin 842 >>Turn in Crossroads Conscription
    .accept 844 >>Accept Plainstrider Menace
step << Orc/Troll
    .goto The Barrens,52.5,29.8
    .accept 6365 >>Accept Meats to Orgrimmar
step << !Tauren
    .goto The Barrens,51.9,30.3
    .accept 869 >>Accept Raptor Thieves
step << !Tauren
    .goto The Barrens,51.5,30.8
    .accept 871 >>Accept Disrupt the Attacks
    .accept 5041 >>Accept Supplies for the Crossroads
step << !Tauren
    .goto The Barrens,51.5,30.4
    .fp >>Get the The Crossroads Flight Path
step << Orc/Troll
    >>do NOT fly to Orgrimmar
.goto The Barrens,51.5,30.3
    .turnin 6365 >>Turn in Meats to Orgrimmar
    .accept 6384 >>Accept Ride to Orgrimmar
step << !Tauren
.goto The Barrens,51.5,30.1
    .accept 848 >>Accept Fungal Spores
    .accept 1492 >>Accept Wharfmaster Dizzywig
step << !Tauren
    #sticky
    #completewith next
    >>Collect the white mushrooms around The Forgotten Pools
.complete 848,1 --Collect Fungal Spores (x4)
step << !Tauren
>>Dive underwater to the bubble fissure
.goto The Barrens,45.1,22.5
    .complete 870,1 --Explore the waters of the Forgotten Pools
step << !Tauren
>>Collect the white mushrooms around The Forgotten Pools
.goto The Barrens,45.2,23.3,40,0
.goto The Barrens,45.2,22.0,40,0
    .goto The Barrens,44.6,22.5,40,0
    .goto The Barrens,43.9,24.4,40,0
.complete 848,1 --Collect Fungal Spores (x4)
step << !Tauren
    .goto The Barrens,52.0,30.6,150 >> Die and respawn at the Spirit Healer, or run back
step << !Tauren
    .turnin 848 >>Turn in Fungal Spores
    .accept 853 >>Accept Apothecary Zamah
step << !Tauren
    .goto The Barrens,52.2,31.8
    .turnin 870 >>Turn in The Forgotten Pools
    .accept 877 >>Accept The Stagnant Oasis
step << !Tauren
    >>Run down the road
.goto The Barrens,44.4,59.2
    .fp >>Get the Camp Taurajo Flight Path
step << !Tauren
    .goto Mulgore,58.4,61.7
    .accept 749 >>Accept The Ravaged Caravan
step << !Tauren
    .goto Mulgore,47.5,60.1
    .accept 767 >>Accept Rite of Vision
step << !Tauren
    .goto Mulgore,47.8,57.6
    .turnin 767 >>Turn in Rite of Vision
    .accept 771 >>Accept Rite of Vision
step << !Tauren
    .goto Mulgore,48.2,53.4
    .accept 11129 >>Accept Kyle's Gone Missing!
step << !Tauren
    >>Loot the stones on the ground
.goto Mulgore,44.9,45.8
    .complete 771,1 --Well Stone (2)
step << !Tauren
    .goto Mulgore,53.7,48.1
    .turnin 749 >>Turn in The Ravaged Caravan
    .accept 751 >>Accept The Ravaged Caravan
step << !Tauren
.goto Mulgore,56.3,50.9,8,0
    .goto Mulgore,56.1,52.6,8,0
    .goto Mulgore,53.5,58.0,8,0
    .goto Mulgore,52.0,61.1,8,0
    >>Collect the two "Acorns" on the ground
    .complete 771,2 --Collect Ambercorn (2)
step << !Tauren
    .goto Mulgore,55.5,55.8
    >>Kill a plainstrider for Tender Strider Meat
    .collect 33009,1 --Collect Tender Strider Meat (1)
step << !Tauren
    .goto Mulgore,58.4,61.7
    .turnin 751 >>Turn in The Ravaged Caravan
step << !Tauren
    .goto Mulgore,47.3,56.9,30,0
    .goto Mulgore,49.4,63.9,30,0
    .goto Mulgore,50.2,60.2,30,0
    .goto Mulgore,46.8,59.6,30,0
    >>"Fine Kyle" the Frenzied. He patrols clockwise throughout the town (so go anti-clockwise). Go up to him and use the Tender Strider Meat
.complete 11129,1 --Kyle Fed (1)
step << !Tauren
    .goto Mulgore,47.8,57.5
    .turnin 771 >>Turn in Rite of Vision
    .accept 772 >>Accept Rite of Vision
step << !Tauren
    .goto Mulgore,48.3,53.3
    .turnin 11129 >>Turn in Kyle's Gone Missing!
step << !Tauren
    .goto Mulgore,32.7,36.2
    .turnin 772 >>Turn in Rite of Vision
step << !Tauren
.goto Thunder Bluff,32.0,66.9,20 >>Run to the lift and take it into Thunder Bluff
step << !Tauren
    .goto Thunder Bluff,40.9,62.7
    .train 227 >>Train Staves
    .train 199 >>Train 2h Maces
step << !Tauren
.goto Thunder Bluff,45.6,52.0,15 >>Go up the tower
step << !Tauren
    >>Go to the top floor of the tower
.goto Thunder Bluff,46.8,49.9
    .fp >>Get the Thunder Bluff Flight Path
step << !Tauren
.goto Thunder Bluff,29.6,29.7,15 >>Jump down into the cave
step << !Tauren
    .goto Thunder Bluff,23.0,21.1
    .turnin 853 >>Turn in Apothecary Zamah
step << !Tauren
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
step
    .goto Durotar,41.5,18.6
    .accept 812 >>Accept Need for a Cure
step
.goto Orgrimmar,49.0,94.2,20 >>Run into Orgrimmar
step << Orc/Troll
    .goto Orgrimmar,54.2,68.6
    .turnin 6384 >>Turn in Ride to Orgrimmar
    .accept 6385 >>Accept Doras the Wind Rider Master
step << Orc/Troll
    .goto Orgrimmar,45.2,64.0
    .turnin 6385 >>Turn in Doras the Wind Rider Master
    .accept 6386 >>Accept Return to the Crossroads.
step << Orc/Troll
    .goto Orgrimmar,34.3,36.4
    .turnin 831 >>Turn in The Admiral's Orders
step
    .goto Orgrimmar,31.9,37.7
    .accept 5726 >>Accept Hidden Enemies
step
    .goto Orgrimmar,47.2,53.4
    .accept 813 >>Accept Finding the Antidote
step
    #sticky
    #completewith next
+Abandon Need for a Cure. This will remove the timer on the quest, but still allow you to still do it 
step
    .abandon 812 >>Abandon Need for a Cure
step
.goto Orgrimmar,49.0,94.2,20 >>Run out of Orgrimmar
step
.goto Durotar,41.7,25.5,20 >>Jump into Thunder Ridge
step
    >>Kill Fizzle. Try to clear the mobs in the surrounding camps to make space
.goto Durotar,41.9,26.0
    .complete 806,1 --Fizzle's Claw (1)
step << Shaman
.goto Durotar,39.2,32.3,30 >>Leave Thunder Ridge
step << Warrior
    #sticky
.goto Durotar,39.2,32.3,30 >>Leave Thunder Ridge
step << Warrior
    >>Kill Lightning Hides for Singed Scales
    .complete 1498,1 --Singed Scale (5)
step
>>Start killing crocodiles for the Amulet
    .goto Durotar,35.2,27.5,60,0
    .goto Durotar,35.7,57.8,60,0
    .complete 816,1 --Kron's Amulet (1)
step << Troll Shaman/Orc Shaman
.goto Durotar,36.6,58.0,15 >>Run up the mountain path
step << Troll Shaman/Orc Shaman
    .goto Durotar,38.6,59.0
    .turnin 1524 >>Turn in Call of Fire
    .accept 1525 >>Accept Call of Fire
step
    .goto Durotar,53.5,44.5,60 >> Die and respawn at the Spirit Healer, or run back
step
.goto Durotar,52.3,43.1
    .turnin 806 >>Turn in Dark Storms
    .accept 828 >>Accept Margoz
step << Shaman
    #sticky
    #completewith next
    .trainer >>Train Ancestral Spirit if you’re going to play with others
step << Shaman
    .goto Durotar,54.3,42.4
    .train 547 >>Train Healing Wave r3
    .train 1535 >>Train Fire Nova Totem
step << Warrior
    .goto Durotar,54.3,42.4
    .train 5242 >>Train Battle Shout r2
    .train 7384 >>Train Overpower
step << Shaman
    .goto Durotar,54.4,42.2
.vendor >>Buy 6 slot bags from Jark until you can’t equip new bags
step << Shaman/Warrior
    .goto Durotar,56.4,20.1
    .turnin 828 >>Turn in Margoz
    .accept 827 >>Accept Skull Rock
step << Shaman/Warrior
    >>Kill Scorpions for Poison Sacs
.goto Durotar,55.7,15.7
    .complete 813,1 --Venomtail Poison Sac (4)
step << Shaman/Warrior
    #sticky
    #label Collars2
>>Kill Burning Blade mobs in Skull Rock for Searing Collars, and until Lieutenant’s Insignia drops
    .complete 827,1 --Searing Collar (6)
    .complete 5726,1 --Lieutenant's Insignia (1)
step << Orc Shaman/Troll Shaman/Orc Warrior/Troll Shaman
    >>Kill Gazz’uz for Eye of Burning Shadow. He can be in multiple areas of the cave. Use the Faintly Glowing Skull you saved from earlier, sticky glue on the voidwalker to reduce your damage taken, and Healing Potions to restore health. Use LoS (line of sight) to avoid his shadowbolts. Don’t be afraid to die if it means killing and looting Gazz’uz
.goto Durotar,51.8,10.0
.collect 4903,1,832 --Collect Eye of Burning Shadow
    .accept 832 >>Accept Burning Shadows
step << Tauren Shaman/Tauren Warrior/Undead Warrior
    >>Kill Gazz’uz for Eye of Burning Shadow. He can be in multiple areas of the cave. Use healing potions to restore health if you have them. Use LoS (line of sight) to avoid his shadowbolts. Don’t be afraid to die if it means killing and looting Gazz’uz
.goto Durotar,51.8,10.0
.collect 4903,1,832 --Collect Eye of Burning Shadow
    .accept 832 >>Accept Burning Shadows
step << Shaman/Warrior
    #requires Collars2
.goto Durotar,56.4,20.1
    .turnin 827 >>Turn in Skull Rock
    .accept 829 >>Accept Neeru Fireblade
step << Shaman
    .goto Durotar,52.8,28.7,20 >> Go into the cave here
step << Shaman
    >>Kill the Burning Blade Cultists for the Pouch
.goto Durotar,52.5,26.7
    .complete 1525,2 --Reagent Pouch (1)
step << Shaman
    .goto Durotar,52.8,28.7,20 >> Leave the cave
step << Shaman/Warrior
    .goto Durotar,54.0,27.7,30,0
    .goto Durotar,51.3,23.5,30,0
    .goto Durotar,51.5,19.1,30,0
    .goto Durotar,54.0,27.7,30,0
    .goto Durotar,51.3,23.5,30,0
    .goto Durotar,51.5,19.1,30,0
    >>Kill Harpies in the area
    .complete 835,1 --Dustwind Savage (12)
    .complete 835,2 --Dustwind Storm Witch (8)
step << Shaman/Warrior
    .goto Durotar,47.2,17.6,60 >> Die and respawn at the Spirit Healer, or run back
step << Shaman/Warrior
    .goto Durotar,46.4,22.9
    .turnin 835 >>Turn in Securing the Lines
step << Shaman/Warrior
    .goto Orgrimmar,31.8,37.8
    .turnin 5726 >>Turn in Hidden Enemies
step << Shaman/Warrior
    .goto Orgrimmar,47.0,53.4
    .turnin 813 >>Turn in Finding the Antidote
step << Shaman/Warrior
    .goto Orgrimmar,49.4,50.5
    .turnin 829 >>Turn in Neeru Fireblade
    .accept 809 >>Accept Ak'Zeloth
    .turnin 832 >>Turn in Burning Shadows
step << Shaman/Warrior
    .goto Durotar,41.6,18.7
    .turnin 812 >>Turn in Need for a Cure
step << Shaman/Warrior
    .goto Durotar,43.1,30.3
    .turnin 816 >>Turn in Lost But Not Forgotten
step << Shaman/Warrior
    .goto The Barrens,62.3,20.1
    .turnin 809 >>Turn in Ak'Zeloth
    .accept 924 >>Accept The Demon Seed
step << Shaman/Warrior
    .goto The Barrens,62.3,20.0
    >>Loot the Purple Stone next to Ak’Zeloth. This item has a 30 minute timer, so be sure to be quick
    .turnin 926 >>Turn in Flawed Power Stone
step << Warrior
    .goto The Barrens,61.4,21.1
    .turnin 1498 >>Turn in Path of Defense
    .accept 1502 >>Accept Thun'grim Firegaze
]],"Warrior !Tauren/Shaman !Tauren")
