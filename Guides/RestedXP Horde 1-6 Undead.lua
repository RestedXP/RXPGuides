RXPGuides.RegisterGuide("RestedXP Horde 1-30",[[
<< Horde
#name 1-6 Tirisfal Glades
#next 6-10 Eversong Woods
step << !Scourge
    #sticky
    #completewith next
.goto Tirisfal Glades,30.2,71.7
    +You have selected a guide meant for Undead. It is recommended you choose the same starter zone that you start in
step
    >>Delete your Hearthstone
>>Run out of the crypt
.goto Tirisfal Glades,30.2,71.7
    .accept 363 >> Accept Rude Awakening
step << Warrior
#sticky
#completewith vendorWar
+Grind mobs until you have 10c of vendorables
    .goto Tirisfal Glades,30.2,65.4
step << Warlock
#sticky
#completewith vendorLock
+Grind mobs until you have 10c of vendorables
    .goto Tirisfal Glades,30.2,65.4
step << Priest/Mage
#sticky
#completewith vendorCaster
+Grind mobs until you have 34c of vendorables
    .goto Tirisfal Glades,30.2,65.4
step << Warrior
    #label vendorWar
.goto Tirisfal Glades,32.3,65.4
    .vendor >> vendor trash
step << Warrior
    .goto Tirisfal Glades,32.7,65.6
    .train 6673 >>Train Battle Shout
step << Priest/Mage
    #label vendorCaster
.goto Tirisfal Glades,32.3,65.4
    .vendor >>vendor trash, buy 5 water
step << Warlock
    #label vendorLock
.goto Tirisfal Glades,30.8,66.4
    .vendor >>vendor trash at Demon Trainer
step << Warlock
    .goto Tirisfal Glades,30.9,66.3
    .train 348 >>Train Immolate
step << Warlock
    .goto Tirisfal Glades,31.0,66.4
    .accept 1470 >>Accept Piercing the Veil
step << Warlock
    .goto Tirisfal Glades,30.8,66.2
    .turnin 363 >> Turn in Rude Awakening
    .accept 364 >> Accept The Mindless Ones
step << Warlock
    .goto Tirisfal Glades,32.5,61.4
    >> Kill Skeletons in the area for Skulls
    .complete 1470,1 --Rattlecage Skull (3)
step << Warlock
    #completewith next
.goto Tirisfal Glades,32.3,65.4,20 >> Grind on your way back to town until 25c+ of vendorables
step << Warlock
    .goto Tirisfal Glades,32.3,65.4
    .vendor >> vendor trash, buy 5 water
step << Warlock
    >>Summon your Imp when you turnin
.goto Tirisfal Glades,31.0,66.4
    .turnin 1470 >>Turn in Piercing the Veil
step << Warlock
    .xp 2 >> Grind to level 2
step << Mage
    .goto Tirisfal Glades,30.9,66.1
    .train 1459 >>Train Arcane Intellect
step << Priest
    .goto Tirisfal Glades,31.1,66.0
    .train 1243 >>Train Power Word: Fortitude
step << !Warlock
    .goto Tirisfal Glades,30.8,66.2
    .turnin 363 >> Turn in Rude Awakening
    .accept 364 >> Accept The Mindless Ones
step
    >> Kill Zombies in the area
    .goto Tirisfal Glades,32.4,62.8
.complete 364,1 --Kill Mindless Zombie (x8)
    .complete 364,2 --Kill Wretched Zombie (x8)
step
    .xp 2 >> Grind to Level 2
step << Mage/Warlock/Priest
    .goto Tirisfal Glades,32.3,65.4
    .vendor >>vendor trash, buy 10 water
step << Warrior/Rogue/Shaman/Paladin/Hunter
    .goto Tirisfal Glades,32.3,65.4
    .vendor >>vendor trash
step << Hunter/Paladin/Shaman
    .goto Tirisfal Glades,30.8,66.2
    .turnin 364 >> Turn in The Mindless Ones
    .accept 3901 >> Accept Rattling the Rattlecages
    .accept 376 >> Accept The Damned
step << Warrior
    .goto Tirisfal Glades,30.8,66.2
    .turnin 364 >> Turn in The Mindless Ones
    .accept 3095 >> Accept Simple Scroll
    .accept 3901 >> Accept Rattling the Rattlecages
    .accept 376 >> Accept The Damned
step << Rogue
    .goto Tirisfal Glades,30.8,66.2
    .turnin 364 >> Turn in The Mindless Ones
    .accept 3096 >> Accept Encrypted Scroll
    .accept 3901 >> Accept Rattling the Rattlecages
    .accept 376 >> Accept The Damned
step << Mage
    .goto Tirisfal Glades,30.8,66.2
    .turnin 364 >> Turn in The Mindless Ones
    .accept 3098 >> Accept Glyphic Scroll
    .accept 3901 >> Accept Rattling the Rattlecages
    .accept 376 >> Accept The Damned 3097
step << Priest
    .goto Tirisfal Glades,30.8,66.2
    .turnin 364 >> Turn in The Mindless Ones
    .accept 3097 >> Accept Hallowed Scroll
    .accept 3901 >> Accept Rattling the Rattlecages
    .accept 376 >> Accept The Damned
step << Warlock
    .goto Tirisfal Glades,30.8,66.2
    .turnin 364 >> Turn in The Mindless Ones
    .accept 3099 >> Accept Tainted Scroll
    .accept 3901 >> Accept Rattling the Rattlecages
    .accept 376 >> Accept The Damned
step << Mage
    .goto Tirisfal Glades,30.9,66.1
    .turnin 3098 >> Turn in Glyphic Scroll
step << Warlock
    .goto Tirisfal Glades,30.9,66.3
    .turnin 3099 >> Turn in Tainted Scroll
step << Priest
    .goto Tirisfal Glades,31.1,66.0
.turnin 3097 >> Turn in Hallowed Scroll
step
.goto Tirisfal Glades,29.5,67.2,40,0
.goto Tirisfal Glades,29.6,61.3,50,0
.goto Tirisfal Glades,32.5,56.7,50,0
.goto Tirisfal Glades,35.2,57.0,50,0
.goto Tirisfal Glades,29.5,67.2,40,0
.goto Tirisfal Glades,29.6,61.3,50,0
.goto Tirisfal Glades,32.5,56.7,50,0
.goto Tirisfal Glades,35.2,57.0,50,0
    >>Grind Wolves and Duskbats
    .complete 376,1 --Collect Scavenger Paw (x6)
.complete 376,2 --Collect Duskbat Wing (x6)
step
.goto Tirisfal Glades,31.9,65.3,40 >>Grind mobs on the way back to town
.xp 3+1230 >>Grind to 1230+/1400xp
step << Mage/Warlock
    .goto Tirisfal Glades,32.3,65.4
    .vendor >>vendor trash, buy water down to no lower than 95c
step << Priest
    .goto Tirisfal Glades,32.3,65.4
    .vendor >>vendor trash, buy water down to no lower than 1s 90c
step
    #label BatsWolves
.goto Tirisfal Glades,30.9,66.1
    .turnin 376 >> Turn in The Damned
    .accept 6395 >> Accept Marla's Last Wish
step
    .xp 4 >> Grind to 4
step << Priest
    .goto Tirisfal Glades,31.1,66.0
.train 589 >>Train Shadow Word: Pain
    .train 2052 >>Train Lesser Heal r2
step << Warlock
    .goto Tirisfal Glades,30.9,66.3
.train 6222 >>Train Corruption
step << Mage
    .goto Tirisfal Glades,30.9,66.1
    .train 116 >>Train Frostbolt
step
    .goto Tirisfal Glades,32.2,66.0
    .accept 380 >> Accept Night Web's Hollow
step << Rogue/Warrior
    .goto Tirisfal Glades,32.3,65.4
    .vendor >>vendor trash
step << Rogue
    .goto Tirisfal Glades,32.5,65.7
    .turnin 3096 >> Turn in Encrypted Scroll
step << Warrior
    .goto Tirisfal Glades,32.7,65.6
    .turnin 3095 >> Turn in Simple Scroll
.train 772 >>Train Rend
    .train 100 >>Train Charge
step
    .goto Tirisfal Glades,31.6,65.6
    .accept 3902 >> Accept Scavenging Deathknell
step
    #sticky
    #label Goods
    >>Collect bundles of brown boxes whilst killing Skeletons. You can find these on the outside walls/inside of buildings
    .goto Tirisfal Glades,32.4,64.4,12,0
    .goto Tirisfal Glades,32.5,64.3,12,0
    .goto Tirisfal Glades,32.9,64.6,12,0
    .goto Tirisfal Glades,33.0,65.4,12,0
    .goto Tirisfal Glades,33.1,65.7,12,0
    .goto Tirisfal Glades,33.8,64.6,12,0
    .goto Tirisfal Glades,34.2,64.2,12,0
    .goto Tirisfal Glades,33.8,64.0,12,0
    .goto Tirisfal Glades,32.8,61.3,12,0
    .goto Tirisfal Glades,31.9,61.5,12,0
    .goto Tirisfal Glades,31.8,62.0,12,0
.complete 3902,1 --Collect Scavenged Goods (x6)
step
    .goto Tirisfal Glades,34.4,64.9,30,0
.goto Tirisfal Glades,34.3,62.8,30,0
.goto Tirisfal Glades,33.8,62.3,30,0
.goto Tirisfal Glades,31.3,60.5,30,0
    .goto Tirisfal Glades,34.4,64.9,30,0
.goto Tirisfal Glades,34.3,62.8,30,0
.goto Tirisfal Glades,33.8,62.3,30,0
.goto Tirisfal Glades,31.3,60.5,30,0
>> Kill Skeletons in the town
.complete 3901,1 --Kill Rattlecage Skeleton (x12)    

step
    #requires Goods
.goto Tirisfal Glades,29.7,57.2,30,0
.goto Tirisfal Glades,28.2,56.0,30,0
.goto Tirisfal Glades,28.3,58.5,30,0
.goto Tirisfal Glades,27.1,59.3,30,0
.goto Tirisfal Glades,29.7,57.2,30,0
.goto Tirisfal Glades,28.2,56.0,30,0
.goto Tirisfal Glades,28.3,58.5,30,0
.goto Tirisfal Glades,27.1,59.3,30,0
>>Kill Young Spiders outside the cave
.complete 380,1 --Kill Young Night Web Spider (x10)
step
    .goto Tirisfal Glades,26.8,59.4,30,0
.goto Tirisfal Glades,24.0,58.2,30,0
>>Go to the cave entrance, enter and kill the spiders inside
.complete 380,2 --Kill Night Web Spider (x8)
step
.goto Tirisfal Glades,31.2,64.9,60 >> Die and respawn at the Spirit Healer, or just run back
step << Rogue/Warrior/Shaman/Paladin/Hunter
    .goto Tirisfal Glades,32.3,65.4
    .vendor >>vendor trash
step << Priest/Mage/Warlock
    .goto Tirisfal Glades,32.3,65.4
    .vendor >>vendor trash, buy 20 water
step
    .goto Tirisfal Glades,31.6,65.6
    .turnin 3902 >> Turn in Scavenging Deathknell
step
    .goto Tirisfal Glades,30.9,66.2
    .turnin 3901 >> Turn in Rattling the Rattlecages
step
    .goto Tirisfal Glades,32.2,66.0
    .turnin 380 >> Turn in Night Web's Hollow
    .accept 381 >> Accept The Scarlet Crusade
step
    .goto Tirisfal Glades,36.6,68.5,30,0
    .goto Tirisfal Glades,37.9,69.9,30,0
    .goto Tirisfal Glades,38.2,67.3,30,0
    .goto Tirisfal Glades,37.2,64.6,30,0
    .goto Tirisfal Glades,36.6,68.5,30,0
    .goto Tirisfal Glades,37.9,69.9,30,0
    .goto Tirisfal Glades,38.2,67.3,30,0
    .goto Tirisfal Glades,37.2,64.6,30,0
>>Kill Scarlet mobs for Armbands
.complete 381,1 --Collect Scarlet Armband (x12)
step
    >>Kill Samuel Fipps and loot him for his remains
.goto Tirisfal Glades,36.7,61.6
    .collect 16333,1 --Collect Samuel's Remains
step
.goto Tirisfal Glades,31.2,64.9,60 >>Die and respawn at the Spirit Healer. If hs is up, then just run
step
    >>Bury Samuel's remains in the dirt
    .goto Tirisfal Glades,31.2,65.1
.complete 6395,1 --Collect Samuel's Remains Buried (x1)
step
    .goto Tirisfal Glades,30.9,66.1
    .turnin 6395 >> Turn in Marla's Last Wish
step
    .goto Tirisfal Glades,32.1,66.0
    .turnin 381 >> Turn in The Scarlet Crusade
    .accept 382 >> Accept The Red Messenger
step
    >>Kill Meven and loot him for the documents
.goto Tirisfal Glades,36.5,68.8
    .complete 382,1 --Collect Scarlet Crusade Documents (x1)
step
    .goto Tirisfal Glades,32.2,66.0
    .turnin 382 >> Turn in The Red Messenger
    .accept 383 >> Accept Vital Intelligence
step
    .goto Tirisfal Glades,38.1,56.6
    .xp 5+2420 >>Grind to 2420+/2800xp en route
step
    .goto Tirisfal Glades,38.2,56.8
    .accept 8 >> Accept A Rogue's Deal
step
    .goto Tirisfal Glades,60.6,51.8
    .turnin 383 >> Turn in Vital Intelligence
step
    .goto Tirisfal Glades,61.7,52.0
    .turnin 8 >>Turn in A Rogue's Deal
    .vendor >>vendor trash
step << Warrior
    .xp 6 >> Grind to 6
step << Warrior
    .goto Tirisfal Glades,61.9,52.5
    .train 3127 >>Train Parry
step
.goto Undercity,66.2,1.1,18 >>Go to Undercity
step
.goto Undercity,62.0,11.3,18 >>Go up the stairs here
step
.goto Undercity,54.9,11.3,18 >>Use the Orb of Translocation
step
    .goto Silvermoon City,63.6,32.2,20 >>Go to Silvermoon
step
    .goto Eversong Woods,56.7,49.6,20 >>Run out of Silvermoon
step
    .goto Eversong Woods,54.4,50.7
    .fp >> Get the Silvermoon City Flight Path
step
    .goto Eversong Woods,50.3,50.8
    .accept 8475 >> Accept The Dead Scar
step
.goto Eversong Woods,46.5,49.2,30 >>Run to Falconwing Square
]],"Scourge")

