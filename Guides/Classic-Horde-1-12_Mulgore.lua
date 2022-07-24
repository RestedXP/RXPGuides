RXPGuides.RegisterGuide([[
#classic
#era/som
<< Horde
#name 1-12 Mulgore
#version 1
#group RestedXP Horde 1-22
#defaultfor Tauren
#next 12-17 The Barrens
step << !Tauren
    #sticky
    #completewith next
    .goto Mulgore,44.9,77.1
    +You have selected a guide meant for Tauren. This zone will NOT work well for you due to missing one of the main questlines that are gated for Tauren only. It is recommended you choose the same starter zone that you start in
step
    .goto Mulgore,44.9,77.1
    .accept 747 >>Accept The Hunt Begins
step
    .goto Mulgore,44.2,76.1
    .accept 752 >>Accept A Humble Task
step << Warrior/Shaman
    #sticky
    #completewith next
    +Kill Plainstriders for 10c+ of vendor trash
    .goto Mulgore,45.6,74.0,30,0
step << Warrior/Shaman
    .goto Mulgore,45.3,76.5
    .vendor >> vendor trash
step << Warrior
    .goto Mulgore,44.0,76.1
    .train 6673 >>Train Battle Shout
step << Shaman
    .goto Mulgore,45.0,75.9
    .train 8017 >>Train Rockbiter Weapon
step
    #sticky
    #completewith Plainstrider
    >>Kill Plainstriders en route to next quests
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
step
    .goto Mulgore,50.0,81.1
    .turnin 752 >>Turn in A Humble Task
    .accept 753 >>Accept A Humble Task
step
    #label Plainstrider
    >>Loot the Water Pitcher on the well behind Hawkwind
    .goto Mulgore,50.2,81.4
    .complete 753,1 --Water Pitcher (1)
step
     >>Finish killing Plainstriders
    .goto Mulgore,44.8,77.0
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
step
    .goto Mulgore,44.8,77.0
    .turnin 747 >>Turn in The Hunt Begins
    .accept 3091 >>Accept Simple Note << Warrior
    .accept 3092 >>Accept Etched Note << Hunter
    .accept 3093 >>Accept Rune-Inscribed Note << Shaman
    .accept 3094 >>Accept Verdant Note << Druid
    .accept 750 >>Accept The Hunt Continues
step << Hunter
    .goto Mulgore,45.3,76.5
    .vendor >>vendor trash. Buy 1000 bullets (5 stacks)
step
    .goto Mulgore,44.2,76.1
    .turnin 753 >>Turn in A Humble Task
    .accept 755 >>Accept Rites of the Earthmother
step << Warrior
    .goto Mulgore,44.0,76.1
    .turnin 3091 >>Turn in Simple Note
step << Hunter
    .goto Mulgore,44.3,75.7
    .turnin 3092 >>Turn in Etched Note
step << Warrior
    .goto Mulgore,44.7,77.9
    .vendor >>vendor trash
step << Druid/Shaman
    .goto Mulgore,44.7,77.9
    .vendor >>vendor trash. Do NOT buy water
step
    #completewith next
    >>Kill Cougars for their Pelts
    .goto Mulgore,47.7,91.9,0
    .complete 750,1 --Mountain Cougar Pelt (10)
step
    >>Grind mobs en route
    .goto Mulgore,42.6,92.2
    .turnin 755 >>Turn in Rites of the Earthmother
    .accept 757 >>Accept Rite of Strength
step
    .goto Mulgore,45.44,90.56
    >>Kill Cougars for their Pelts
    .complete 750,1 --Mountain Cougar Pelt (10)
step << !Druid !Shaman
    .goto Mulgore,44.9,77.0
    .xp 3+1150 >> Grind to 1150+/1400xp
step << Druid/Shaman
    .goto Mulgore,44.9,77.0
    .xp 3+1110 >> Grind to 1110+/1400xp
step << Warrior/Hunter
    >>Make sure you have 1s 90c worth of vendorables. If not, grind more
    .goto Mulgore,44.9,77.0
    .turnin 750 >>Turn in The Hunt Continues
    .accept 780 >>Accept The Battleboars
step << Druid
    >>Make sure you have 2s worth of vendorables. If not, grind more
    .goto Mulgore,44.9,77.0
    .turnin 750 >>Turn in The Hunt Continues
    .accept 780 >>Accept The Battleboars
step << Shaman
    .goto Mulgore,44.9,77.0
    .turnin 750 >>Turn in The Hunt Continues
    .accept 780 >>Accept The Battleboars
step
    .goto Mulgore,45.3,76.5
    .vendor >> vendor trash
step << Druid
    .goto Mulgore,45.1,75.9
    .turnin 3094 >>Turn in Verdant Note
    .train 8921 >>Train Moonfire
step << Shaman
    .goto Mulgore,45.0,75.9
    .turnin 3093 >>Turn in Rune-Inscribed Note
    .trainer >> Train your class spells
step << Shaman
    .goto Mulgore,44.7,76.2
    .accept 1519 >>Accept Call of Earth
step
    .goto Mulgore,45.0,76.4
    .accept 3376 >>Accept Break Sharptusk!
step << Hunter
    .goto Mulgore,44.3,75.7
    .trainer >> Train your class spells
step << Warrior
    .goto Mulgore,44.0,76.1
    .trainer >> Train your class spells
step
    .goto Mulgore,58.2,85.0
    >>Kill Battleboars outside the cave for Flanks and Snouts
    .complete 780,2 --Battleboar Flank (8)
    .complete 780,1 --Battleboar Snout (8)
step
    .goto Mulgore,59.7,83.2,40 >>Go through the cave
step
    #sticky
    #label Belt
    >>Kill Bristlebacks for their Belts
    .complete 757,1 --Bristleback Belt (12)
step << Shaman
    #sticky
    #label Salve
    >>Kill Bristleback Shamans for their Salves
    .complete 1519,1 --Ritual Salve (2)
step
    >>Kill Sharptusk in the big hut
    .goto Mulgore,64.3,77.9
    .complete 3376,1 --Chief Sharptusk Thornmantle's Head (1)
step << !Shaman
    #requires Belt
    >>Go into the cave. Loot the map on the ground, then click it
    .goto Mulgore,63.2,82.7
    .collect 4851,1,781 --Collect Dirt-Stained Map
    .accept 781 >>Accept Attack on Camp Narache
step << Shaman
    #requires Belt
step << Shaman
    #requires Salve
    >>Go into the cave. Loot the map on the ground, then click it
    .goto Mulgore,63.2,82.7
    .collect 4851,1,781 --Collect Dirt-Stained Map
    .accept 781 >>Accept Attack on Camp Narache
step
    .hs >> Hearth to Camp Narache
step
    .goto Mulgore,44.9,77.0
    .turnin 780 >>Turn in The Battleboars
step << Shaman
    .goto Mulgore,44.7,76.2
    .turnin 1519 >>Turn in Call of Earth
    .accept 1520 >>Accept Call of Earth
step << Shaman
    .goto Mulgore,53.9,80.5,90 >>Run to the Rock
step << Shaman
    >>Use the Earth Sapta in your bags
    .goto Mulgore,53.9,80.5
    .turnin 1520 >>Turn in Call of Earth
    .accept 1521 >>Accept Call of Earth
step << Shaman
    .goto Mulgore,44.7,76.2
    .turnin 1521 >>Turn in Call of Earth
step
    .goto Mulgore,44.5,76.5
    .turnin 3376 >>Turn in Break Sharptusk!
step
    .goto Mulgore,44.2,76.1
    .turnin 781 >>Turn in Attack on Camp Narache
    .turnin 757 >>Turn in Rite of Strength
    .accept 763 >>Accept Rites of the Earthmother
step
    .goto Mulgore,38.5,81.6
    .accept 1656 >>Accept A Task Unfinished
step
    .xp 5+2395 >>Grind to 2395+/2800xp
step
	#completewith next
	#softcore
    .goto Mulgore,46.5,55.5,300 >> Die and respawn at the Spirit Healer, or run to Bloodhoof Village
step
	#hardcore
	#completewith next
    .goto Mulgore,48.3,53.3,100 >> Run to Bloodhoof Village << !Hunter
    .goto Mulgore,47.3,62.0,100 >> Run to Bloodhoof Village << Hunter
step << !Hunter
    .goto Mulgore,47.0,57.0
    .accept 766 >>Accept Mazzranache
step << Shaman/Druid
    .goto Mulgore,45.7,58.6
      .vendor >> vendor trash. Sell your weapon if it gives you enough money for Walking Stick (5s 4c). Skip this step if you don't have enough
    .collect 2495,1 --Collect Walking Stick
step << Warrior
    .goto Mulgore,45.7,58.6
        .vendor >> vendor trash. Sell your weapon if it gives you enough money for Wooden Mallet (7s 1c). Skip this step if you don't have enough
    .collect 2493,1 --Collect Wooden Mallet
step << !Hunter
    .goto Mulgore,46.6,61.1
    .turnin 1656 >>Turn in A Task Unfinished
    .home >>Set your Hearthstone to Bloodhoof Village
step << !Hunter
    .goto Mulgore,47.5,60.2
    .turnin 763 >>Turn in Rites of the Earthmother
    .accept 745 >>Accept Sharing the Land
    .accept 767 >>Accept Rite of Vision
    .accept 746 >>Accept Dwarven Digging
step << !Hunter
    .goto Mulgore,47.8,57.6
    .turnin 767 >>Turn in Rite of Vision
    .accept 771 >>Accept Rite of Vision
step << Shaman
    .goto Mulgore,48.4,59.2
    .trainer >> Train your class spells
step << !Hunter
    .goto Mulgore,48.7,59.3
    .accept 761 >>Accept Swoop Hunting
step << Druid
    .goto Mulgore,48.5,59.6
    .trainer >> Train your class spells
step << Tauren/!Hunter
    .goto Mulgore,48.6,60.4
    .accept 748 >>Accept Poison Water
step << Warrior
    .goto Mulgore,49.5,60.6
    .trainer >> Train your class spells
step
    .goto Mulgore,47.3,62.0
    .accept 743 >>Accept Dangers of the Windfury
step << Hunter
    .goto Mulgore,47.5,60.2
    .turnin 763 >>Turn in Rites of the Earthmother
    .accept 745 >>Accept Sharing the Land
    .accept 767 >>Accept Rite of Vision
    .accept 746 >>Accept Dwarven Digging
step << Hunter
    .goto Mulgore,46.6,61.1
    .turnin 1656 >>Turn in A Task Unfinished
    .home >>Set your Hearthstone to Bloodhoof Village
step << Tauren Hunter
    .goto Mulgore,48.6,60.4
    .accept 748 >>Accept Poison Water
step << Hunter
    .goto Mulgore,48.7,59.3
    .accept 761 >>Accept Swoop Hunting
step << Hunter
    .goto Mulgore,47.8,57.6
    .turnin 767 >>Turn in Rite of Vision
    .accept 771 >>Accept Rite of Vision
step << Hunter
    .goto Mulgore,45.5,58.5
    .vendor >> vendor trash. Sell your weapon if it gives you enough money for Ornate Blunderbuss (4s 14c). Skip this step if you don't have enough
    .collect 2509,1 --Collect Ornate Blunderbuss
step << Hunter
    .goto Mulgore,47.0,57.0
    .accept 766 >>Accept Mazzranache
step << Hunter
    #completewith next
    .goto Mulgore,47.8,55.7
    .trainer >> Train your class spells if you still have to train some
step << Hunter
    .goto Mulgore,49.3,56.2,10,0
    .goto Mulgore,52.0,61.1,10,0
    .goto Mulgore,50.0,66.4,10,0
    .goto Mulgore,50.4,66.5,10,0
    >>Collect the 'Acorn' looking items on the ground, below the trees
    .complete 771,2 --Ambercorn (2)
step << !Hunter
    .goto Mulgore,52.0,61.1,10,0
    .goto Mulgore,50.0,66.4,10,0
    .goto Mulgore,50.4,66.5,10,0
    >>Collect the 'Acorn' looking items on the ground, below the trees
    .complete 771,2 --Ambercorn (2)
step
    #sticky
    #completewith Well
    >>Get the items for Mazzranache as you quest throughout the zone
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Tauren
    .goto Mulgore,55.9,63.1,90,0
    .goto Mulgore,51.1,66.5,90,0
    .goto Mulgore,40.7,73.0,90,0
    .goto Mulgore,55.9,63.1
    >>Kill Wolves for Paws and Plainstriders for Talons. Kill a Plainstrider for Tender Strider Meat
    .complete 748,1 --Prairie Wolf Paw (6)
    .complete 748,2 --Plainstrider Talon (4)
step << Tauren
    .goto Mulgore,48.5,60.4
    .turnin 748 >>Turn in Poison Water
    .accept 754 >>Accept Winterhoof Cleansing
step
    #sticky
    #label Stones
    .goto Mulgore,53.7,66.3
    >>Loot the stones around the Well
    .complete 771,1 --Well Stone (2)
step << Tauren
    #label Well
    .goto Mulgore,53.7,66.3
    >>Use the Winterhoof Cleansing Totem at the Well
    .complete 754,1 --Cleanse the Winterhoof Water Well (1)
step
    #label Gnolls
    #requires Stones
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0
    >>Go back and forth between the two camps, killing Gnolls. Be aware of Snagglespear (Level 9 rare). He's too difficult to kill.
    .complete 745,1 --Palemane Tanner (10)
    .complete 745,2 --Palemane Skinner (8)
    .complete 745,3 --Palemane Poacher (5)
    .unitscan Snagglespear
step
    .goto Mulgore,47.6,61.5
    .vendor >>vendor trash
step << Tauren
    .goto Mulgore,48.5,60.4
    .turnin 754 >>Turn in Winterhoof Cleansing
    .accept 756 >>Accept Thunderhorn Totem
step << Warrior
    #completewith next
    .goto Mulgore,49.5,60.6
    .trainer >> Train your class spells if you still have to train some
step << Shaman
    #completewith next
    .goto Mulgore,48.4,59.2
    .trainer >> Train your class spells if you still have to train some
step << Druid
    #completewith next
    .goto Mulgore,48.5,59.6
    .trainer >> Train your class spells if you still have to train some
step
    .goto Mulgore,47.5,60.2
    .turnin 745 >>Turn in Sharing the Land
step << Warrior
    .goto Mulgore,46.8,60.8
    .money <0.01
    .trainer >> Train First Aid
step << Shaman/Druid
    .goto Mulgore,45.7,58.6
     >> vendor trash. Sell your weapon if it gives you enough money for Walking Stick (5s 4c). Skip this step if you don't have enough
    .collect 2495,1 --Collect Walking Stick
step << Warrior
    .goto Mulgore,45.7,58.6
    .money <0.0701
    >> Buy Wooden Mallet and equip it
    .collect 2493,1 --Collect Wooden Mallet
step << Hunter
    .goto Mulgore,45.5,58.5
    .money <0.0414
    >> Buy Ornate Blunderbuss and equip it
    .collect 2509,1 --Collect Ornate Blunderbuss
step
    #label Vision
    >>Dont follow the wolf that spawns
    .goto Mulgore,47.8,57.5
    .turnin 771 >>Turn in Rite of Vision
    .accept 772 >>Accept Rite of Vision
step << Hunter
    .goto Mulgore,47.8,55.7
    .money <0.01
    .trainer >> Train your class spells if you still have to train some
step
    >>Look for Morin Cloudstalker. He patrols along the eastern road
    .goto Mulgore,51.1,58.6,50,0
    .goto Mulgore,59.7,62.5,50,0
    .goto Mulgore,51.1,58.6
    .accept 749 >>Accept The Ravaged Caravan
	.unitscan Morin Cloudstalker
step
    .goto Mulgore,53.8,48.3
    .turnin 749 >>Turn in The Ravaged Caravan
    .accept 751 >>Accept The Ravaged Caravan
step
    #completewith Clawsx
    >>Get the items for Mazzranache as you quest throughout the zone
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
	#completewith Burial
    .goto Mulgore,54.15,27.81,0
	>>Kill Swoops throughout Mulgore. Loot them for their Quills
    .complete 761,1 --Trophy Swoop Quill (8)
step
	#label Clawsx
    >>Kill Stalkers, Cougars, and Swoops in the area. Loot them for their claws and quills
    .goto Mulgore,58.1,48.6,60,0
    .goto Mulgore,54.5,40.1,60,0
    .goto Mulgore,46.4,50.7,60,0
    .goto Mulgore,58.1,48.6
    .complete 756,1 --Stalker Claws (6)
    .complete 756,2 --Cougar Claws (6)
step
    #softcore
    #completewith next
    .goto Mulgore,46.5,55.5,200 >> Die and respawn at the Spirit Healer, or run to Bloodhoof Village
step
    #hardcore
    #completewith next
    .goto Mulgore,46.5,55.5,200 >> Run back to Bloodhoof Village
step
    .isQuestComplete 766
    .goto Mulgore,47.0,57.2
    .turnin 766 >>Turn in Mazzranache
step
    #completewith next
    .goto Mulgore,46.2,58.2
    .vendor >>vendor trash
step
	#era/som
    .goto Mulgore,48.5,60.4
    .turnin 756 >>Turn in Thunderhorn Totem
    .accept 758 >>Accept Thunderhorn Cleansing
step
	.isQuestComplete 761
    .goto Mulgore,48.7,59.4
    .turnin 761 >>Turn in Swoop Hunting
step << Shaman
    .goto Mulgore,48.4,59.2
    .trainer >> Train your class spells
step << Druid
    .goto Mulgore,48.5,59.6
    .trainer >> Train your class spells
step << Warrior
    .goto Mulgore,49.5,60.6
    .trainer >> Train your class spells
step << Shaman/Druid
    .goto Mulgore,45.7,58.6
    .money <0.0504
    >> Buy Walking Stick and equip it
    .collect 2495,1 --Collect Walking Stick
step << Warrior
    .goto Mulgore,45.7,58.6
    .money <0.0701
    >> Buy Wooden Mallet and equip it
    .collect 2493,1 --Collect Wooden Mallet
step << Hunter
    .goto Mulgore,45.5,58.5
    .money <0.0414
    >> Buy Ornate Blunderbuss and equip it
    .collect 2509,1 --Collect Ornate Blunderbuss
step << Warrior
    .goto Mulgore,46.7,60.7
    .vendor >> vendor trash. Buy as much Freshly Baked Bread as you can afford
step << Druid/Shaman
    .goto Mulgore,46.7,60.7
    .vendor >> vendor trash. Buy as much Ice Cold Milk as you can afford
step << Tauren
	#era/som
    .goto Mulgore,44.5,45.3
    >>Use the Thunderhorn Cleansing Totem at the Well
    .complete 758,1 --Cleanse the Thunderhorn Water Well (1)
step
    #completewith Burial
    >>Finish getting the items for Mazzranache
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    .goto Mulgore,31.3,49.9
   >>Kill Dwarf mobs for Prospector's Picks
    >>Use the Picks on the Forge until you've broken 5 of them
    .complete 746,1 --Broken Tools (5)
step
    >>Kill Harpies. Loot them for their Talons
    .goto Mulgore,31.9,41.7
    .complete 743,1 --Windfury Talon (8)
step
	#label Burial
    .goto Mulgore,32.7,36.1
    .turnin 772 >>Turn in Rite of Vision
    .accept 773 >>Accept Rite of Wisdom
step
	#completewith next
    .goto Mulgore,54.15,27.81
	>>Kill Swoops throughout Mulgore. Loot them for their Quills
    .complete 761,1 --Trophy Swoop Quill (8)
step
    .goto Mulgore,54.15,27.81
    >>Finish getting the items for Mazzranache
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    .goto Mulgore,54.15,27.81
	>>Kill Swoops throughout Mulgore. Loot them for their Quills
    .complete 761,1 --Trophy Swoop Quill (8)
step
    .goto Mulgore,59.9,25.6
    .accept 833 >>Accept A Sacred Burial
step
    >>Kill Bristleback Interlopers in the area
    .goto Mulgore,61.5,21.9
    .complete 833,1 --Bristleback Interloper (8)
step
    .goto Mulgore,61.5,21.1
    .turnin 773 >>Turn in Rite of Wisdom
    .accept 775 >>Accept Journey into Thunder Bluff
step
    .goto Mulgore,59.8,25.6
    .turnin 833 >>Turn in A Sacred Burial
step
   .goto Mulgore,61.5,21.9
    .xp 9+4400 >> Grind to 4400+/6500xp
step << !Druid
    #completewith next
    .hs >>Hearth to Bloodhoof Village
step << Druid
    #softcore
    #completewith next
    .goto Mulgore,54.76,35.10
    .deathskip >> Die and respawn at the Spirit Healer, or run to Bloodhoof Village
step << Druid
    #hardcore
    .goto Mulgore,46.5,55.5,300 >> Run back to Bloodhoof Village
step << !Hunter
    .goto Mulgore,47.0,57.2
    .turnin 766 >>Turn in Mazzranache
step
    .goto Mulgore,48.7,59.4
    .turnin 761 >>Turn in Swoop Hunting
step
    .goto Mulgore,46.9,60.2
    .accept 861 >>Accept The Hunter's Way
step
    .goto Mulgore,48.5,60.4
    .turnin 758 >>Turn in Thunderhorn Cleansing
    .accept 759 >>Accept Wildmane Totem << !Hunter
step << !Hunter
    .goto Mulgore,47.5,60.2
    .turnin 746 >>Turn in Dwarven Digging
step
    .goto Mulgore,47.4,62.0
    .turnin 743 >>Turn in Dangers of the Windfury
step << Shaman
    .goto Mulgore,48.4,59.2
    .accept 2984 >>Accept Call of Fire
     .trainer >> Train your class spells
step << Druid
    .goto Mulgore,48.5,59.6
    .accept 5928 >>Accept Heeding the Call
     .trainer >> Train your class spells
step << Warrior
    .goto Mulgore,49.5,60.6
    .accept 1505 >>Accept Veteran Uzzek
     .trainer >> Train your class spells
step << Hunter
    .goto Mulgore,47.5,60.2
    .turnin 746 >>Turn in Dwarven Digging
step << Tauren Hunter
    .goto Mulgore,48.5,60.4
    .turnin 758 >>Turn in Thunderhorn Cleansing
step << Hunter
    .goto Mulgore,47.0,57.2
    .turnin 766 >>Turn in Mazzranache
step << Hunter
    .goto Mulgore,47.7,55.7
     .trainer >> Train your pet spells
step << Hunter
    .goto Mulgore,47.8,55.7
    .accept 6061 >>Accept Taming the Beast
     .trainer >> Train your class spells
step << Hunter
    >>Click the Taming Rod in your bag on a Plainstrider. Try to do it at max range (30 yards)
    .goto Mulgore,53.7,62.2
    .complete 6061,1 --Tame an Adult Plainstrider (1)
step << Hunter
    .goto Mulgore,47.8,55.7
    .turnin 6061 >>Turn in Taming the Beast
    .accept 6087 >>Accept Taming the Beast
step << Hunter
    >>Click the Taming Rod in your bag on a Stalker. Try to do it at max range (30 yards)
    .goto Mulgore,47.1,48.3
    .complete 6087,1 --Tame a Prairie Stalker (1)
step << Hunter
    .goto Mulgore,47.8,55.7
    .turnin 6087 >>Turn in Taming the Beast
    .accept 6088 >>Accept Taming the Beast
step << Hunter
    >>Click the Taming Rod in your bag on a Swoop. Do it at max range, and re-cast it immediately if they knock you down. If you fail and run out of Taming Rod Charges, abandon the quest, then pick it up again and come back
    .goto Mulgore,43.3,51.4
    .complete 6088,1 --Tame a Swoop (1)
step << Hunter
    .goto Mulgore,47.8,55.7
    .turnin 6088 >>Turn in Taming the Beast
    .accept 6089 >>Accept Training the Beast
step
    >>Look for Morin Cloudstalker. He patrols along the eastern road
    .goto Mulgore,51.1,58.6,30,0
    .goto Mulgore,59.7,62.5,30,0
    .goto Mulgore,51.1,58.6,30,0
    .goto Mulgore,59.7,62.5,30,0
    .goto Mulgore,51.1,58.6,30,0
    .goto Mulgore,59.7,62.5,30,0
    .turnin 751 >> Turn in The Ravaged Caravan
    .accept 764 >>Accept The Venture Co.
    .accept 765 >>Accept Supervisor Fizsprocket
step
    >>Kill Wolves in the area. Loot them for teeth
    .goto Mulgore,66.9,67.2
    .complete 759,1 --Prairie Alpha Tooth (8)
step
    #softcore
    #completewith next
    .goto Mulgore,46.5,55.5,200 >> Die and respawn at the Spirit Healer, or run to Bloodhoof Village
step
    #hardcore
    #completewith next
    .goto Mulgore,46.5,55.5,200 >> Run back to Bloodhoof Village
step
    .goto Mulgore,48.5,60.4
    .turnin 759 >>Turn in Wildmane Totem
    .accept 760 >>Accept Wildmane Cleansing
step
    .goto Mulgore,69.6,60.4,100,0
    .zone The Barrens >> Run into The Barrens
step << !Druid
    .goto The Barrens,44.5,59.1
    .fp Camp Taurajo >> Get the Camp Taurajo flight path
step << Druid
    .goto The Barrens,44.5,59.1
    .fp Camp Taurajo >> Get the Camp Taurajo flight path
    .fly Thunder Bluff >>Fly to Thunder Bluff
step << Druid
    .goto Thunder Bluff,45.8,64.4
    .home >>Set your Hearthstone to Thunder Bluff
step << Druid
    .goto Thunder Bluff,78.1,28.6
    .accept 886 >>Accept The Barrens Oases
step << Druid
    .goto Thunder Bluff,76.7,27.3
    .turnin 5928 >>Turn in Heeding the Call
step << Druid
    .goto Thunder Bluff,77.0,27.5
    .accept 5922 >>Accept Moonglade
step << Druid
    >>Use your new spell to teleport to Moonglade
    .goto Moonglade,56.2,30.7
    .turnin 5922 >>Turn in Moonglade
    .accept 5930 >>Accept Great Bear Spirit
step << Druid
    .goto Moonglade,39.2,27.5
    .complete 5930,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear. (1)
step << Druid
    >> Teleport back to Moonglade
    .goto Moonglade,56.2,30.7
    .turnin 5930 >>Turn in Great Bear Spirit
    .accept 5932 >>Accept Back to Thunder Bluff
step << Druid
    .hs >>Hearth to Thunder Bluff
step << Druid
    .goto Thunder Bluff,76.5,27.3
    .turnin 5932 >>Turn in Back to Thunder Bluff
    .accept 6002 >>Accept Body and Heart
step << Druid
    .goto Thunder Bluff,47.0,49.8
    .fly Camp Taurajo >>Fly to Camp Taurajo
step << Druid
    >>Run to the Moonkin Stone, and use the Cenarion Lunardust in your inventory. Kill Lunaclaw, then talk to her
    .goto The Barrens,42.0,60.9
    .complete 6002,1 --Face Lunaclaw and earn the strength of body and heart it possesses. (1)
step << Tauren
    .goto The Barrens,44.9,58.6
    .accept 854 >>Accept Journey to the Crossroads
step << Druid
    .goto The Barrens,52.2,31.9
    .turnin 886 >>Turn in The Barrens Oases
    .accept 870 >>Accept The Forgotten Pools
step << !Druid
    .goto The Barrens,52.2,31.9
    .accept 870 >>Accept The Forgotten Pools
step
    .goto The Barrens,51.5,30.1
    .accept 848 >>Accept Fungal Spores
step << Tauren
    .goto The Barrens,51.5,30.8
    .turnin 854 >>Turn in Journey to the Crossroads
step
    .goto The Barrens,51.5,30.4
    .fp The Crossroads >> Get the The Crossroads flight path
step
    .goto The Barrens,51.1,29.0
    .accept 6361 >>Accept A Bundle of Hides
step
    #sticky
    #completewith next
    >>Collect the white mushrooms around The Forgotten Pools
    .complete 848,1 --Collect Fungal Spores (x4)
step
    >>Dive underwater to the bubble fissure
    .goto The Barrens,45.1,22.5
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    >>Collect the white mushrooms around The Forgotten Pools
    .goto The Barrens,45.2,23.3,40,0
    .goto The Barrens,45.2,22.0,40,0
    .goto The Barrens,44.6,22.5,40,0
    .goto The Barrens,43.9,24.4,40,0
    .goto The Barrens,45.2,23.3,40,0
    .goto The Barrens,45.2,22.0,40,0
    .goto The Barrens,44.6,22.5,40,0
    .goto The Barrens,43.9,24.4,40,0
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #softcore
    .goto The Barrens,52.0,30.6,150 >> Die and respawn at the Spirit Healer, or run back
step
    #softcore
    .goto The Barrens,52.3,31.9
    .turnin 870 >>Turn in The Forgotten Pools
    .accept 877 >>Accept The Stagnant Oasis
step
    #hardcore
    >>Run back to The Crossroads
    .goto The Barrens,52.3,31.9
    .turnin 870 >>Turn in The Forgotten Pools
    .accept 877 >>Accept The Stagnant Oasis
step
    .goto The Barrens,52.0,29.9
    .home >>Set your Hearthstone to Crossroads
step
    >>This starts a timed quest
    .goto The Barrens,51.4,30.2
    .turnin 848 >>Turn in Fungal Spores
    .accept 853 >>Accept Apothecary Zamah
step
    .goto The Barrens,51.5,30.3
    .turnin 6361 >>Turn in A Bundle of Hides
    .accept 6362 >>Accept Ride to Thunder Bluff
step
    .fly Thunder Bluff >>Fly to Thunder Bluff
step << Hunter
	.goto Thunder Bluff,57.4,89.4
	.turnin 6089 >> Turn in Training the Beast
step
    .goto Thunder Bluff,45.6,55.9
    .turnin 6362 >>Turn in Ride to Thunder Bluff
    .accept 6363 >>Accept Tal the Wind Rider Master
step
    .goto Thunder Bluff,37.8,59.4
    .accept 744 >>Accept Preparation for Ceremony
step
    .goto Thunder Bluff,29.6,29.7,15 >>Go into the cave
step << Druid
    >>Equip the Staff
    .goto Thunder Bluff,23.0,21.0
    .turnin 853 >>Turn in Apothecary Zamah
step << !Druid
    >>You'll equip the staff soon, make sure you keep it
    .goto Thunder Bluff,23.0,21.0
    .turnin 853 >>Turn in Apothecary Zamah
step
    .goto Thunder Bluff,46.8,49.7
    .turnin 6363 >>Turn in Tal the Wind Rider Master
    .accept 6364 >>Accept Return to Jahan
step
    .goto Thunder Bluff,60.0,51.7
    .turnin 775 >>Turn in Journey into Thunder Bluff
    .accept 776 >>Accept Rites of the Earthmother
step << Druid
    .money <0.1154
    .goto Thunder Bluff,40.9,62.7
    .train 199 >>Train 2h Maces
step << Warrior/Hunter
    .goto Thunder Bluff,40.9,62.7
    .train 227 >>Train Staves
step << Druid
    .goto Thunder Bluff,76.5,27.3
    .turnin 6002 >>Turn in Body and Heart
step
    #sticky
    #completewith ThunderBluff
    >>Keep an eye out for Ghost Howl (white wolf rare). Loot him for Demon Scarred Cloak. Skip this step if you're unable to find him.
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .accept 770 >>Accept The Demon Scarred Cloak
step
    .goto Mulgore,31.7,28.2,90,0
    .goto Mulgore,30.2,19.5,90,0
    .goto Mulgore,31.7,28.2
    >>Kill Harpies. Loot them for their Feathers
    .complete 744,1 --Azure Feather (6)
    .complete 744,2 --Bronze Feather (6)
step
    #sticky
    #label Prowlers
    >>Kill Flatland Prowlers. Loot them for their Claws
    .complete 861,1 --Flatland Prowler Claw (4)
step

	#era/som
    .goto Mulgore,42.5,13.8
    >>Use the Wildmane Cleansing Totem at the Well
    .complete 760,1 --Cleanse the Wildmane Well (1)
step
    .goto Mulgore,52.6,12.2,90,0
    .goto Mulgore,48.6,16.1,90,0
    .goto Mulgore,51.8,33.8,90,0
    .goto Mulgore,56.2,32.9,90,0
    .goto Mulgore,52.6,12.2,90,0
    .goto Mulgore,48.6,16.1,90,0
    .goto Mulgore,51.8,33.8,90,0
    .goto Mulgore,56.2,32.9
    >>Look around for Arra'Chea (Big black kodo). He walks clockwise. Kill and Loot him for his horn
    .complete 776,1 --Horn of Arra'chea (1)
    .unitscan Arra'chea
step
    #requires Prowlers
    #label ThunderBluff
    >>Go back into Thunder Bluff
    .goto Thunder Bluff,60.1,51.7
    .turnin 776 >>Turn in Rites of the Earthmother
step
    .goto Thunder Bluff,37.9,59.6
    .turnin 744 >>Turn in Preparation for Ceremony
step
    .goto Thunder Bluff,61.3,80.9
    .turnin 861 >>Turn in The Hunter's Way
step
    .goto Thunder Bluff,61.2,81.2
    .accept 860 >>Accept Sergra Darkthorn
step
    .isOnQuest 770
    >>Run to Bloodhoof Village
    .goto Mulgore,46.8,60.2
    .turnin 770 >>Turn in The Demon Scarred Cloak
step
	#era/som
    .goto Mulgore,48.6,60.4
    .turnin 760 >>Turn in Wildmane Cleansing
step
    .goto Mulgore,61.5,47.2,110 >>Run to the mine
step
    #sticky
    #label Workers
    >>Kill the Venture Co mobs
    .goto Mulgore,63.0,44.3
    .complete 764,1 --Venture Co. Worker (14)
    .complete 764,2 --Venture Co. Supervisor (6)
step
    >>Run into the mine, then hug the right/east side. Kill Supervisor Fizsprocket. Loot him for his Clipboard
    .goto Mulgore,64.9,43.3
    .complete 765,1 --Fizsprocket's Clipboard (1)
step
    #requires Workers
    .xp 11+7150 >> Grind to 7150+/8700xp
step
    #sticky
    #completewith next
    >>Look for Morin Cloudstalker. He patrols along the eastern road
    .goto Mulgore,51.1,58.6,30,0
    .goto Mulgore,59.7,62.5,30,0
    .goto Mulgore,51.1,58.6,30,0
    .goto Mulgore,59.7,62.5,30,0
    .goto Mulgore,51.1,58.6,30,0
    .goto Mulgore,59.7,62.5,30,0
    .goto Mulgore,51.1,58.6,30,0
    .goto Mulgore,59.7,62.5,30,0
    .turnin 764 >>Turn in The Venture Co.
    .turnin 765 >>Turn in Supervisor Fizsprocket
step << Shaman
    .goto Mulgore,48.4,59.2
     .trainer >> Train your class spells
step << Warrior
    .goto Mulgore,49.5,60.6
     .trainer >> Train your class spells
step << Druid
    .goto Mulgore,48.5,59.6
    .trainer >> Train your class spells
step << Hunter
    .goto Mulgore,47.8,55.7
     .trainer >> Train your class spells
step
    #sticky
    #completewith next
    .goto The Barrens,52.0,29.9,150 >>Hearth or fly back to Crossroads
step
    .goto The Barrens,51.2,29.1
    .turnin 6364 >>Turn in Return to Jahan
step
    .goto The Barrens,51.5,30.9
    .accept 871 >>Accept Disrupt the Attacks
    .accept 5041 >>Accept Supplies for the Crossroads
step
    .goto The Barrens,51.62,30.89
    >>Go upstairs
    .accept 867 >>Accept Harpy Raiders
step
    .goto The Barrens,52.2,31.0
    .turnin 860 >>Turn in Sergra Darkthorn
    .accept 844 >>Accept Plainstrider Menace
step
    .goto The Barrens,52.0,30.3
    .accept 869 >>Accept Raptor Thieves
step << Shaman
    .goto The Barrens,55.9,19.9
    .turnin 2984 >>Turn in Call of Fire
    .accept 1524 >>Accept Call of Fire
step << Shaman
    .goto Durotar,36.6,58.0,25 >>Run up the mountain path
step << Shaman
    .goto Durotar,38.5,58.9
    .turnin 1524 >>Turn in Call of Fire
    .accept 1525 >>Accept Call of Fire
step << Warrior
    .goto The Barrens,61.4,21.1
    .turnin 1505 >>Turn in Veteran Uzzek
    .accept 1498 >>Accept Path of Defense
step << Warrior
    >>Kill Lightning Hides for Singed Scales
    .complete 1498,1 --Singed Scale (5)
step << Warrior
    .goto The Barrens,61.4,21.1
    .turnin 1498 >>Turn in Path of Defense
    .accept 1502 >>Accept Thun'grim Firegaze
]])

RXPGuides.RegisterGuide([[
#classic
#som
#phase 3-6
<< Horde
#name 1-13 Mulgore
#version 1
#group RestedXP Horde 1-22
#defaultfor Tauren
#next 12-17 The Barrens
step << !Tauren
    #sticky
    #completewith next
    .goto Mulgore,44.9,77.1
    +You have selected a guide meant for Tauren. This zone will NOT work well for you due to missing one of the main questlines that are gated for Tauren only. It is recommended you choose the same starter zone that you start in
step
    .goto Mulgore,44.9,77.1
    .accept 747 >>Accept The Hunt Begins
step
    .goto Mulgore,44.2,76.1
    .accept 752 >>Accept A Humble Task
step << Warrior/Shaman
    #sticky
    #completewith next
    +Kill Plainstriders for 10c+ of vendor trash
    .goto Mulgore,45.6,74.0,30,0
step << Warrior/Shaman
    .goto Mulgore,45.3,76.5
    .vendor >> vendor trash
step << Warrior
    .goto Mulgore,44.0,76.1
    .train 6673 >>Train Battle Shout
step << Shaman
    .goto Mulgore,45.0,75.9
    .train 8017 >>Train Rockbiter Weapon
step
    #sticky
    #completewith Plainstrider
    >>Kill Plainstriders en route to next quests
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
step
    .goto Mulgore,50.0,81.1
    .turnin 752 >>Turn in A Humble Task
    .accept 753 >>Accept A Humble Task
step
    #label Plainstrider
    >>Loot the Water Pitcher on the well behind Hawkwind
    .goto Mulgore,50.2,81.4
    .complete 753,1 --Water Pitcher (1)
step
     >>Finish killing Plainstriders
    .goto Mulgore,44.8,77.0
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
step
    .goto Mulgore,44.8,77.0
    .turnin 747 >>Turn in The Hunt Begins
    .accept 3091 >>Accept Simple Note << Warrior
    .accept 3092 >>Accept Etched Note << Hunter
    .accept 3093 >>Accept Rune-Inscribed Note << Shaman
    .accept 3094 >>Accept Verdant Note << Druid
    .accept 750 >>Accept The Hunt Continues
step << Hunter
    .goto Mulgore,45.3,76.5
    .vendor >>vendor trash. Buy 1000 bullets (5 stacks)
step
    .goto Mulgore,44.2,76.1
    .turnin 753 >>Turn in A Humble Task
    .accept 755 >>Accept Rites of the Earthmother
step << Warrior
    .goto Mulgore,44.0,76.1
    .turnin 3091 >>Turn in Simple Note
step << Hunter
    .goto Mulgore,44.3,75.7
    .turnin 3092 >>Turn in Etched Note
step << Warrior
    .goto Mulgore,44.7,77.9
    .vendor >>vendor trash
step << Druid/Shaman
    .goto Mulgore,44.7,77.9
    .vendor >>vendor trash. Do NOT buy water
step
    #completewith next
    >>Kill Cougars for their Pelts
    .goto Mulgore,47.7,91.9,0
    .complete 750,1 --Mountain Cougar Pelt (10)
step
    >>Grind mobs en route
    .goto Mulgore,42.6,92.2
    .turnin 755 >>Turn in Rites of the Earthmother
    .accept 757 >>Accept Rite of Strength
step
    .goto Mulgore,45.44,90.56
    >>Kill Cougars for their Pelts
    .complete 750,1 --Mountain Cougar Pelt (10)
step << Warrior/Hunter
    >>Make sure you have 1s 90c worth of vendorables. If not, grind more
    .goto Mulgore,44.9,77.0
    .turnin 750 >>Turn in The Hunt Continues
    .accept 780 >>Accept The Battleboars
step << Druid
    >>Make sure you have 2s worth of vendorables. If not, grind more
    .goto Mulgore,44.9,77.0
    .turnin 750 >>Turn in The Hunt Continues
    .accept 780 >>Accept The Battleboars
step << Shaman
    .goto Mulgore,44.9,77.0
    .turnin 750 >>Turn in The Hunt Continues
    .accept 780 >>Accept The Battleboars
step
    .goto Mulgore,45.3,76.5
    .vendor >> vendor trash
step << Druid
    .goto Mulgore,45.1,75.9
    .turnin 3094 >>Turn in Verdant Note
    .trainer >> Train your class spells
step << Shaman
    .goto Mulgore,45.0,75.9
    .turnin 3093 >>Turn in Rune-Inscribed Note
    .trainer >> Train your class spells
step << Shaman
    .goto Mulgore,44.7,76.2
    .accept 1519 >>Accept Call of Earth
step
    .goto Mulgore,45.0,76.4
    .accept 3376 >>Accept Break Sharptusk!
step << Hunter
    .goto Mulgore,44.3,75.7
    .trainer >> Train your class spells
step << Warrior
    .goto Mulgore,44.0,76.1
    .trainer >> Train your class spells
step
    .goto Mulgore,58.2,85.0
    >>Kill Battleboars outside the cave for Flanks and Snouts
    .complete 780,2 --Battleboar Flank (8)
    .complete 780,1 --Battleboar Snout (8)
step
    .goto Mulgore,59.7,83.2,40 >>Go through the cave
step
    #sticky
    #label Belt
    >>Kill Bristlebacks for their Belts
    .complete 757,1 --Bristleback Belt (12)
step << Shaman
    #sticky
    #label Salve
    >>Kill Bristleback Shamans for their Salves
    .complete 1519,1 --Ritual Salve (2)
step
    >>Kill Sharptusk in the big hut
    .goto Mulgore,64.3,77.9
    .complete 3376,1 --Chief Sharptusk Thornmantle's Head (1)
step << !Shaman
    #requires Belt
    >>Go into the cave. Loot the map on the ground, then click it
    .goto Mulgore,63.2,82.7
    .collect 4851,1,781 --Collect Dirt-Stained Map
    .accept 781 >>Accept Attack on Camp Narache
step << Shaman
    #requires Belt
step << Shaman
    #requires Salve
    >>Go into the cave. Loot the map on the ground, then click it
    .goto Mulgore,63.2,82.7
    .collect 4851,1,781 --Collect Dirt-Stained Map
    .accept 781 >>Accept Attack on Camp Narache
step
    #requires Belt
	.zone The Barrens >>Jump onto the mushroom at the end of the cave. Logout on top of it to Camp Taurajo (The Barrens)
    .goto Mulgore,63.10,83.03
	.link https://www.youtube.com/watch?v=NfLrBPzt56s >> CLICK HERE for reference
step
    .goto The Barrens,44.5,59.1
    .fp Camp Taurajo >> Get the Camp Taurajo flight path
step
	#completewith next
	#softcore
    .goto The Barrens,50.43,44.01
	.deathskip >> Die and respawn in The Crossroads
step
    .goto The Barrens,51.49,31.00,8 >> Go to The Crossroads and check for the weapon or armor crate next to the other uninteractable crate
step
    .goto The Barrens,51.5,30.4
    .fp The Crossroads >> Get the The Crossroads flight path
step
    .hs >> Hearth to Camp Narache
step
    .goto Mulgore,44.9,77.0
    .turnin 780 >>Turn in The Battleboars
step << Shaman
    .goto Mulgore,44.7,76.2
    .turnin 1519 >>Turn in Call of Earth
    .accept 1520 >>Accept Call of Earth
step << Shaman
    .goto Mulgore,53.9,80.5,90 >>Run to the Rock
step << Shaman
    >>Use the Earth Sapta in your bags
    .goto Mulgore,53.9,80.5
    .turnin 1520 >>Turn in Call of Earth
    .accept 1521 >>Accept Call of Earth
step << Shaman
    .goto Mulgore,44.7,76.2
    .turnin 1521 >>Turn in Call of Earth
step
    .goto Mulgore,44.5,76.5
    .turnin 3376 >>Turn in Break Sharptusk!
step
    .goto Mulgore,44.2,76.1
    .turnin 781 >>Turn in Attack on Camp Narache
    .turnin 757 >>Turn in Rite of Strength
    .accept 763 >>Accept Rites of the Earthmother
step
    .goto Mulgore,38.5,81.6
    .accept 1656 >>Accept A Task Unfinished
step
    .xp 5+2395 >>Grind to 2395+/2800xp
step
    .goto Mulgore,46.5,55.5,300 >> Die and respawn at the Spirit Healer, or run to Bloodhoof Village
    #softcore
step << !Hunter
    .goto Mulgore,47.0,57.0
    .accept 766 >>Accept Mazzranache
step << Shaman/Druid
    .goto Mulgore,45.7,58.6
      .vendor >> vendor trash. Sell your weapon if it gives you enough money for Walking Stick (5s 4c). Skip this step if you don't have enough
    .collect 2495,1 --Collect Walking Stick
step << Warrior
    .goto Mulgore,45.7,58.6
        .vendor >> vendor trash. Sell your weapon if it gives you enough money for Wooden Mallet (7s 1c). Skip this step if you don't have enough
    .collect 2493,1 --Collect Wooden Mallet
step << !Hunter
    .goto Mulgore,46.6,61.1
    .turnin 1656 >>Turn in A Task Unfinished
    .home >>Set your Hearthstone to Bloodhoof Village
step << !Hunter
    .goto Mulgore,47.5,60.2
    .turnin 763 >>Turn in Rites of the Earthmother
    .accept 745 >>Accept Sharing the Land
    .accept 767 >>Accept Rite of Vision
    .accept 746 >>Accept Dwarven Digging
step << !Hunter
    .goto Mulgore,47.8,57.6
    .turnin 767 >>Turn in Rite of Vision
    .accept 771 >>Accept Rite of Vision
step << Shaman
    .money <0.01
    .goto Mulgore,48.4,59.2
    .trainer >> Train your class spells
step << !Hunter
    .goto Mulgore,48.7,59.3
    .accept 761 >>Accept Swoop Hunting
step << Druid
    .money <0.01
    .goto Mulgore,48.5,59.6
    .trainer >> Train your class spells
step << Warrior
    .money <0.01
    .goto Mulgore,49.5,60.6
    .trainer >> Train your class spells
step
    .goto Mulgore,47.3,62.0
    .accept 743 >>Accept Dangers of the Windfury
step << Hunter
    .goto Mulgore,47.5,60.2
    .turnin 763 >>Turn in Rites of the Earthmother
    .accept 745 >>Accept Sharing the Land
    .accept 767 >>Accept Rite of Vision
    .accept 746 >>Accept Dwarven Digging
step << Hunter
    .goto Mulgore,46.6,61.1
    .turnin 1656 >>Turn in A Task Unfinished
    .home >>Set your Hearthstone to Bloodhoof Village
step << Hunter
    .goto Mulgore,48.7,59.3
    .accept 761 >>Accept Swoop Hunting
step << Hunter
    .goto Mulgore,47.8,57.6
    .turnin 767 >>Turn in Rite of Vision
    .accept 771 >>Accept Rite of Vision
step << Hunter
    .goto Mulgore,45.5,58.5
    .vendor >> vendor trash. Sell your weapon if it gives you enough money for Ornate Blunderbuss (4s 14c). Skip this step if you don't have enough
    .collect 2509,1 --Collect Ornate Blunderbuss
step << Hunter
    .goto Mulgore,47.0,57.0
    .accept 766 >>Accept Mazzranache
step << Hunter
    #completewith next
    .money <0.01
    .goto Mulgore,47.8,55.7
    .trainer >> Train your class spells if you still have to train some
step << Hunter
    .goto Mulgore,49.3,56.2,15,0
    .goto Mulgore,52.0,61.1,15,0
    .goto Mulgore,50.0,66.4,15,0
    .goto Mulgore,50.4,66.5,15,0
    >>Collect the 'Acorn' looking items on the ground, below the trees
    .complete 771,2 --Ambercorn (2)
step << !Hunter
    .goto Mulgore,52.0,61.1,15,0
    .goto Mulgore,50.0,66.4,15,0
    .goto Mulgore,50.4,66.5,15,0
    >>Collect the 'Acorn' looking items on the ground, below the trees
    .complete 771,2 --Ambercorn (2)
step
    #sticky
    #completewith Stones
    >>Get the items for Mazzranache as you quest throughout the zone
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    .goto Mulgore,53.7,66.3
    >>Loot the stones around the Well
    .complete 771,1 --Well Stone (2)
step
    #label Gnolls
    .unitscan Snagglespear
    .goto Mulgore,53.5,73.0,60,0
    .goto Mulgore,48.3,72.0,60,0
    .goto Mulgore,53.5,73.0,60,0
    .goto Mulgore,48.3,72.0,60,0
    .goto Mulgore,53.5,73.0,60,0
    .goto Mulgore,48.3,72.0,60,0
    >>Go back and forth between the two camps, killing Gnolls. Be aware of Snagglespear (Level 9 rare). He's too difficult to kill.
    .complete 745,1 --Palemane Tanner (10)
    .complete 745,2 --Palemane Skinner (8)
    .complete 745,3 --Palemane Poacher (5)
step
    .goto Mulgore,47.6,61.5
    .vendor >>vendor trash
step << Warrior
    #completewith next
    .money <0.01
    .goto Mulgore,49.5,60.6
    .trainer >> Train your class spells if you still have to train some
step << Shaman
    #completewith next
    .money <0.01
    .goto Mulgore,48.4,59.2
    .trainer >> Train your class spells if you still have to train some
step << Druid
    #completewith next
    .money <0.01
    .goto Mulgore,48.5,59.6
    .trainer >> Train your class spells if you still have to train some
step
    .goto Mulgore,47.5,60.2
    .turnin 745 >>Turn in Sharing the Land
step << Warrior
    .goto Mulgore,46.8,60.8
    .money <0.01
    .trainer >> Train First Aid
step << Shaman/Druid
    .goto Mulgore,45.7,58.6
     >> vendor trash. Sell your weapon if it gives you enough money for Walking Stick (5s 4c). Skip this step if you don't have enough
    .collect 2495,1 --Collect Walking Stick
step << Warrior
    .goto Mulgore,45.7,58.6
    .money <0.0701
    >> Buy Wooden Mallet and equip it
    .collect 2493,1 --Collect Wooden Mallet
step << Hunter
    .goto Mulgore,45.5,58.5
    .money <0.0414
    >> Buy Ornate Blunderbuss and equip it
    .collect 2509,1 --Collect Ornate Blunderbuss
step
    #label Vision
    >>Dont follow the wolf that spawns
    .goto Mulgore,47.8,57.5
    .turnin 771 >>Turn in Rite of Vision
    .accept 772 >>Accept Rite of Vision
step << Hunter
    .goto Mulgore,47.8,55.7
    .money <0.01
    .trainer >> Train your class spells if you still have to train some
step
    >>Look for Morin Cloudstalker. He patrols along the eastern road
    .goto Mulgore,51.1,58.6,30,0
    .goto Mulgore,59.7,62.5,30,0
    .goto Mulgore,51.1,58.6,30,0
    .goto Mulgore,59.7,62.5,30,0
    .goto Mulgore,51.1,58.6,30,0
    .goto Mulgore,59.7,62.5,30,0
    .accept 749 >>Accept The Ravaged Caravan
step
    .goto Mulgore,53.8,48.3
    .turnin 749 >>Turn in The Ravaged Caravan
    .accept 751 >>Accept The Ravaged Caravan
step
	#completewith Burial
    >>Get the items for Mazzranache as you quest throughout the zone. Wolves for Hearts, Cougars for Femurs, Plainstriders for Scales, and Swoops for Gizzards
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
	#completewith Burial
    >>Kill Swoops. Loot them for their quills
    .goto Mulgore,58.1,48.6,0
    .complete 761,1 --Trophy Swoop Quill (8)
	.unitscan Swoop
step
    .goto Mulgore,31.3,49.9
    >>Kill Dwarf mobs for Prospector's Picks
    >>Use the Picks on the Forge until you've broken 5 of them
    .complete 746,1 --Broken Tools (5)
step
    >>Kill Harpies. Loot them for their Talons
    .goto Mulgore,31.9,41.7
    .complete 743,1 --Windfury Talon (8)
step
    .goto Mulgore,32.7,36.1
    .turnin 772 >>Turn in Rite of Vision
    .accept 773 >>Accept Rite of Wisdom
step
	#completewith next
    >>Kill Swoops in the area. Loot them for their quills
    .goto Mulgore,58.1,48.6,0
    .complete 761,1 --Trophy Swoop Quill (8)
	.unitscan Swoop
step
    >>Get the items for Mazzranache as you quest throughout the zone. Wolves for Hearts, Cougars for Femurs, Plainstriders for Scales, and Swoops for Gizzards
	>>They can be found all over central Mulgore
    .goto Mulgore,49.7,32.2
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    >>Kill Swoops in the area. Loot them for their quills
	>>They're found all over the lower-central half of Mulgore
    .goto Mulgore,42.6,52.4
    .complete 761,1 --Trophy Swoop Quill (8)
	.unitscan Swoop
step
	#label Burial
    .goto Mulgore,59.9,25.6
    .accept 833 >>Accept A Sacred Burial
step
    >>Kill Bristleback Interlopers in the area
    .goto Mulgore,61.5,21.9
    .complete 833,1 --Bristleback Interloper (8)
step
    .goto Mulgore,61.5,21.1
    .turnin 773 >>Turn in Rite of Wisdom
    .accept 775 >>Accept Journey into Thunder Bluff
step << !Druid
    .goto Mulgore,61.5,21.1
    .xp 9+5240 >> Grind to 5240+/6500xp
step
    .goto Mulgore,59.8,25.6
    .turnin 833 >>Turn in A Sacred Burial
step
	#softcore
    .goto Mulgore,59.8,25.6
	.deathskip >> Die and respawn at Thunder Bluff
step
	#completewith next
    .goto Mulgore,41.00,22.22,30 >> Take the lift up to Thunder Bluff
step << !Hunter
    .goto Thunder Bluff,45.82,64.73
	.home >> Set your Hearthstone to Thunder Bluff
step << Druid
    .goto Thunder Bluff,77.0,27.5
    .accept 5922 >>Accept Moonglade
	.trainer >> Train your class spells
step << Druid
    >>Use your new spell to teleport to Moonglade
    .goto Moonglade,56.2,30.7
    .turnin 5922 >>Turn in Moonglade
    .accept 5930 >>Accept Great Bear Spirit
step << Druid
    .goto Moonglade,39.2,27.5
    .complete 5930,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear. (1)
step << Druid
    >> Teleport back to Moonglade
    .goto Moonglade,56.2,30.7
    .turnin 5930 >>Turn in Great Bear Spirit
    .accept 5932 >>Accept Back to Thunder Bluff
step << Druid
	.hs >> Hearth to Thunder Bluff
step << Druid
    .goto Thunder Bluff,76.5,27.3
    .turnin 5932 >>Turn in Back to Thunder Bluff
    .accept 6002 >>Accept Body and Heart
step
    .goto Thunder Bluff,45.83,51.59,30,0
    .goto Thunder Bluff,47.00,49.83
	.fly Crossroads >> Fly to Crossroads << !Druid
	.fly Camp T >> Fly to Camp Taurajo << Druid
step << Druid
    >>Run to the Moonkin Stone, and use the Cenarion Lunardust in your inventory. Kill Lunaclaw, then talk to her
    .goto The Barrens,42.0,60.9
    .complete 6002,1 --Face Lunaclaw and earn the strength of body and heart it possesses. (1)
step << Druid
    .goto The Barrens,44.9,58.6
    .accept 854 >>Accept Journey to the Crossroads
step << Druid
    .goto The Barrens,44.5,59.1
	.fly Crossroads >> Fly to Crossroads
step
    .goto The Barrens,52.2,31.9
    .turnin 886 >>Turn in The Barrens Oases << Druid
    .accept 870 >>Accept The Forgotten Pools
step
    .goto The Barrens,51.5,30.1
    .accept 848 >>Accept Fungal Spores
step << Druid
    .goto The Barrens,51.5,30.8
    .turnin 854 >>Turn in Journey to the Crossroads
step
    .goto The Barrens,51.1,29.0
    .accept 6361 >>Accept A Bundle of Hides
step
    #sticky
    #completewith next
    >>Collect the white mushrooms around The Forgotten Pools
    .complete 848,1 --Collect Fungal Spores (x4)
step
    >>Dive underwater to the bubble fissure
    .goto The Barrens,45.1,22.5
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    >>Collect the white mushrooms around The Forgotten Pools
    .goto The Barrens,45.2,23.3,40,0
    .goto The Barrens,45.2,22.0,40,0
    .goto The Barrens,44.6,22.5,40,0
    .goto The Barrens,43.9,24.4,40,0
    .goto The Barrens,45.2,23.3,40,0
    .goto The Barrens,45.2,22.0,40,0
    .goto The Barrens,44.6,22.5,40,0
    .goto The Barrens,43.9,24.4,40,0
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #softcore
    .goto The Barrens,52.0,30.6,150 >> Die and respawn at the Spirit Healer, or run back
step
    #softcore
    .goto The Barrens,52.3,31.9
    .turnin 870 >>Turn in The Forgotten Pools
    .accept 877 >>Accept The Stagnant Oasis
step
    #hardcore
    >>Run back to The Crossroads
    .goto The Barrens,52.3,31.9
    .turnin 870 >>Turn in The Forgotten Pools
    .accept 877 >>Accept The Stagnant Oasis
step << skip
    .goto The Barrens,52.0,29.9
    .home >>Set your Hearthstone to Crossroads
step
    >>This starts a timed quest
    .goto The Barrens,51.4,30.2
    .turnin 848 >>Turn in Fungal Spores
    .accept 853 >>Accept Apothecary Zamah
step
    .goto The Barrens,51.5,30.3
    .turnin 6361 >>Turn in A Bundle of Hides
    .accept 6362 >>Accept Ride to Thunder Bluff
step << Hunter
    .goto The Barrens,51.5,30.4
    .fly Thunder Bluff >>Fly to Thunder Bluff
step << !Hunter
	.hs >> Hearth to Thunder Bluff
step << Hunter
	.goto Thunder Bluff,57.4,89.4
	.turnin 6089 >> Turn in Training the Beast
step
    .goto Thunder Bluff,45.6,55.9
    .turnin 6362 >>Turn in Ride to Thunder Bluff
    .accept 6363 >>Accept Tal the Wind Rider Master
step
    .goto Thunder Bluff,29.6,29.7,15 >>Go into the cave
step << Druid
    >>Equip the Staff
    .goto Thunder Bluff,23.0,21.0
    .turnin 853 >>Turn in Apothecary Zamah
step << !Druid
    >>You'll equip the staff soon, make sure you keep it
    .goto Thunder Bluff,23.0,21.0
    .turnin 853 >>Turn in Apothecary Zamah
step
    .goto Thunder Bluff,46.8,49.7
    .turnin 6363 >>Turn in Tal the Wind Rider Master
    .accept 6364 >>Accept Return to Jahan
step
    .goto Thunder Bluff,60.0,51.7
    .turnin 775 >>Turn in Journey into Thunder Bluff
step << Druid
    .money <0.1154
    .goto Thunder Bluff,40.9,62.7
    .train 199 >>Train 2h Maces
step << Warrior/Hunter
    .goto Thunder Bluff,40.9,62.7
    .train 227 >>Train Staves
step << Druid
    .goto Thunder Bluff,76.5,27.3
    .turnin 6002 >>Turn in Body and Heart
step << !Hunter
    #completewith next
    >>Keep an eye out for Ghost Howl (white wolf rare). Loot him for Demon Scarred Cloak. Skip this step if you're unable to find him.
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .accept 770 >>Accept The Demon Scarred Cloak
	.unitscan Ghost Howl
step << Hunter
    #completewith next
    .hs >>Hearth to Bloodhoof Village
step << skip
    .goto Mulgore,52.6,12.2,90,0
    .goto Mulgore,48.6,16.1,90,0
    .goto Mulgore,51.8,33.8,90,0
    .goto Mulgore,56.2,32.9,90,0
    .goto Mulgore,52.6,12.2,90,0
    .goto Mulgore,48.6,16.1,90,0
    .goto Mulgore,51.8,33.8,90,0
    .goto Mulgore,56.2,32.9
    >>Look around for Arra'Chea (Big black kodo). He walks clockwise. Kill and Loot him for his horn
    .complete 776,1 --Horn of Arra'chea (1)
    .unitscan Arra'chea
step << !Hunter
    .goto Mulgore,46.5,55.5,200 >> Run back to Bloodhoof Village
step << !Hunter
    .goto Mulgore,47.0,57.2
    .turnin 766 >>Turn in Mazzranache
step << !Hunter
    .goto Mulgore,47.5,60.2
    .turnin 746 >>Turn in Dwarven Digging
step
    .goto Mulgore,47.4,62.0
    .turnin 743 >>Turn in Dangers of the Windfury
step << Hunter
    .goto Mulgore,45.5,58.5
    .money <0.0414
    >> Buy Ornate Blunderbuss and equip it
    .collect 2509,1 --Collect Ornate Blunderbuss
step << Shaman
    .goto Mulgore,48.4,59.2
    .accept 2984 >>Accept Call of Fire
     .trainer >> Train your class spells
step << Druid
    .goto Mulgore,48.5,59.6
     .trainer >> Train your class spells
step << Warrior
    .goto Mulgore,49.5,60.6
    .accept 1505 >>Accept Veteran Uzzek
     .trainer >> Train your class spells
step << Hunter
    .goto Mulgore,47.5,60.2
    .turnin 746 >>Turn in Dwarven Digging
step << Hunter
    .goto Mulgore,47.0,57.2
    .turnin 766 >>Turn in Mazzranache
step << Hunter
    .goto Mulgore,47.7,55.7
     .trainer >> Train your pet spells
step << Hunter
    .goto Mulgore,47.8,55.7
    .accept 6061 >>Accept Taming the Beast
     .trainer >> Train your class spells
step << Hunter
    >>Click the Taming Rod in your bag on a Plainstrider. Try to do it at max range (30 yards)
    .goto Mulgore,53.7,62.2
    .complete 6061,1 --Tame an Adult Plainstrider (1)
step << Hunter
    .goto Mulgore,47.8,55.7
    .turnin 6061 >>Turn in Taming the Beast
    .accept 6087 >>Accept Taming the Beast
step << Hunter
    >>Click the Taming Rod in your bag on a Stalker. Try to do it at max range (30 yards)
    .goto Mulgore,47.1,48.3
    .complete 6087,1 --Tame a Prairie Stalker (1)
step << Hunter
    .goto Mulgore,47.8,55.7
    .turnin 6087 >>Turn in Taming the Beast
    .accept 6088 >>Accept Taming the Beast
step << Hunter
    >>Click the Taming Rod in your bag on a Swoop. Do it at max range, and re-cast it immediately if they knock you down. If you fail and run out of Taming Rod Charges, abandon the quest, then pick it up again and come back
    .goto Mulgore,43.3,51.4
    .complete 6088,1 --Tame a Swoop (1)
step << Hunter
    .goto Mulgore,47.8,55.7
    .turnin 6088 >>Turn in Taming the Beast
    .accept 6089 >>Accept Training the Beast
step << !Hunter
    .isOnQuest 770
    .goto Mulgore,46.8,60.2
    .turnin 770 >>Turn in The Demon Scarred Cloak
step
    >>Look for Morin Cloudstalker. He patrols along the eastern road
    .goto Mulgore,51.1,58.6,30,0
    .goto Mulgore,59.7,62.5,30,0
    .goto Mulgore,51.1,58.6,30,0
    .goto Mulgore,59.7,62.5,30,0
    .goto Mulgore,51.1,58.6,30,0
    .goto Mulgore,59.7,62.5,30,0
    .goto Mulgore,51.1,58.6,30,0
    .goto Mulgore,59.7,62.5,30,0
    .turnin 751 >>Turn in The Ravaged Caravan
    .accept 764 >>Accept The Venture Co.
    .accept 765 >>Accept Supervisor Fizsprocket
step
    .goto Mulgore,61.5,47.2,110 >>Run to the mine
step
    #completewith next
    >>Kill the Venture Co mobs
    .complete 764,1 --Venture Co. Worker (14)
    .complete 764,2 --Venture Co. Supervisor (6)
step
    >>Run into the mine, then hug the right/east side. Kill Supervisor Fizsprocket. Loot him for his Clipboard
    .goto Mulgore,64.9,43.3
    .complete 765,1 --Fizsprocket's Clipboard (1)
step
    >>Kill the Venture Co mobs
    .goto Mulgore,63.0,44.3
    .complete 764,1 --Venture Co. Worker (14)
    .complete 764,2 --Venture Co. Supervisor (6)
step
    .goto Mulgore,63.0,44.3
    .xp 11+5620 >> Grind to 5620+/8700xp
step
    >>Look for Morin Cloudstalker. He patrols along the eastern road
    .goto Mulgore,51.1,58.6,30,0
    .goto Mulgore,59.7,62.5,30,0
    .goto Mulgore,51.1,58.6,30,0
    .goto Mulgore,59.7,62.5,30,0
    .goto Mulgore,51.1,58.6,30,0
    .goto Mulgore,59.7,62.5,30,0
    .goto Mulgore,51.1,58.6,30,0
    .goto Mulgore,59.7,62.5,30,0
    .turnin 764 >>Turn in The Venture Co.
    .turnin 765 >>Turn in Supervisor Fizsprocket
step << Shaman
    .goto Mulgore,48.4,59.2
     .trainer >> Train your class spells
step << Warrior
    .goto Mulgore,49.5,60.6
     .trainer >> Train your class spells
step << DruidSKIP
    .goto Mulgore,48.5,59.6
    .trainer >> Train your class spells
step << HunterSKIP
    .goto Mulgore,47.8,55.7
     .trainer >> Train your class spells
step
    .goto The Barrens,44.5,59.1
    .fly Thunder Bluff >>Fly to Thunder Bluff << Druid/Hunter
	.fly Crossroads >> Fly to The Crossroads << !Hunter !Druid
step << Druid
    .goto Thunder Bluff,76.5,27.3
    .turnin 6002 >>Turn in Body and Heart
	.trainer >> Train your class spells
step << Hunter
	.goto Thunder Bluff,57.4,89.4
	.turnin 6089 >> Turn in Training the Beast
	.trainer >> Train your class spells
step << Hunter/Druid
    .goto Thunder Bluff,45.83,51.59,30,0
    .goto Thunder Bluff,47.00,49.83
	.fly Crossroads >> Fly to Crossroads
step
    .goto The Barrens,51.2,29.1
    .turnin 6364 >>Turn in Return to Jahan
step
    .goto The Barrens,51.5,30.9
    .accept 871 >>Accept Disrupt the Attacks
    .accept 5041 >>Accept Supplies for the Crossroads
step
    .goto The Barrens,51.62,30.89
    >>Go upstairs
    .accept 867 >>Accept Harpy Raiders
step
    .goto The Barrens,52.0,29.9
    .home >>Set your Hearthstone to Crossroads
step
    .goto The Barrens,52.2,31.0
    .accept 844 >>Accept Plainstrider Menace
step
    .goto The Barrens,52.0,30.3
    .accept 869 >>Accept Raptor Thieves
step << Shaman
    .goto The Barrens,55.9,19.9
    .turnin 2984 >>Turn in Call of Fire
    .accept 1524 >>Accept Call of Fire
step << Shaman
    .goto Durotar,36.6,58.0,25 >>Run up the mountain path
step << Shaman
    .goto Durotar,38.5,58.9
    .turnin 1524 >>Turn in Call of Fire
    .accept 1525 >>Accept Call of Fire
step << Warrior
    .goto The Barrens,61.4,21.1
    .turnin 1505 >>Turn in Veteran Uzzek
    .accept 1498 >>Accept Path of Defense
step << Warrior
    >>Kill Lightning Hides for Singed Scales
    .complete 1498,1 --Singed Scale (5)
step << Warrior
    .goto The Barrens,61.4,21.1
    .turnin 1498 >>Turn in Path of Defense
    .accept 1502 >>Accept Thun'grim Firegaze
]])

