RXPGuides.RegisterGuide("RestedXP Horde 1-30",[[
<< Horde 
#name 1-10 Mulgore
#next 10-20 Eversong Woods - Ghostlands << !Warrior !Shaman
#next 10-13 Mulgore << Warrior/Shaman
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
step << !Druid !Warrior !Hunter !Shaman
    .goto Mulgore,44.8,77.0
    .turnin 747 >>Turn in The Hunt Begins
    .accept 750 >>Accept The Hunt Continues
step << Druid
    .goto Mulgore,44.8,77.0
    .turnin 747 >>Turn in The Hunt Begins
    .accept 3094 >>Accept Verdant Note
    .accept 750 >>Accept The Hunt Continues
step << Warrior
    .goto Mulgore,44.8,77.0
    .turnin 747 >>Turn in The Hunt Begins
    .accept 3091 >>Accept Simple Note
    .accept 750 >>Accept The Hunt Continues
step << Hunter
    .goto Mulgore,44.8,77.0
    .turnin 747 >>Turn in The Hunt Begins
    .accept 3092 >>Accept Etched Note
    .accept 750 >>Accept The Hunt Continues
step << Shaman
    .goto Mulgore,44.8,77.0
    .turnin 747 >>Turn in The Hunt Begins
    .accept 3093 >>Accept Rune-Inscribed Note
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
    #sticky
    #completewith Cougar
>>Kill Cougars for their Pelts
.goto Mulgore,47.7,91.9
    .complete 750,1 --Mountain Cougar Pelt (10)
step
    #label Cougar
>>Grind mobs en route
.goto Mulgore,42.6,92.2
    .turnin 755 >>Turn in Rites of the Earthmother
    .accept 757 >>Accept Rite of Strength
step
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
    .train 1126 >>Train Mark of the Wild
    .train 774 >>Train Rejuvenation
step << Shaman
    .goto Mulgore,45.0,75.9
    .turnin 3093 >>Turn in Rune-Inscribed Note
    .train 8042 >>Train Earth Shock
step << Shaman
    .goto Mulgore,44.7,76.2
.accept 1519 >>Accept Call of Earth
step
    .goto Mulgore,45.0,76.4
    .accept 3376 >>Accept Break Sharptusk!
step << Hunter
    .goto Mulgore,44.3,75.7
    .train 1978 >>Train Serpent Sting
    .train 13163 >>Train Aspect of the Monkey
step << Warrior
    .goto Mulgore,44.0,76.1
    .train 772 >>Train Rend
    .train 100 >>Train Charge
step
    .goto Mulgore,58.2,85.0
    >>Kill Battleboars outside the cave for Flanks and Snouts
    .complete 780,2 --Battleboar Flank (8)
    .complete 780,1 --Battleboar Snout (8)
step
.goto Mulgore,59.7,83.2,20 >>Go through the cave
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
.goto Mulgore,62.6,78.7,30 >>Follow the path straight ahead
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
    #require Belt
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
step << !Hunter
    .goto Mulgore,48.3,53.3
    .accept 11129 >>Accept Kyle's Gone Missing!
step << !Hunter
    .goto Mulgore,47.0,57.0
    .accept 766 >>Accept Mazzranache
step << Shaman/Druid
.goto Mulgore,45.7,58.6
.vendor >> vendor trash. Sell your weapon if it gives you enough money for Walking Stick (4s 80c). You'll come back later if you don't have enough yet
step << Shaman/Druid
    .goto Mulgore,45.7,58.6
    .money <0.0480
    >> Buy Walking Stick and equip it
.collect 2495,1 --Collect Walking Stick
step << Warrior
.goto Mulgore,45.7,58.6
.vendor >> vendor trash. Sell your weapon if it gives you enough money for Wooden Mallet (6s 66c). You'll come back later if you don't have enough yet
step << Warrior
.goto Mulgore,45.7,58.6
    .money <0.0666
    >> Buy Wooden Mallet and equip it
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
    .money <0.0095
.goto Mulgore,48.4,59.2
    .train 332 >>Train Healing Wave r2
step << !Hunter
    .goto Mulgore,48.7,59.3
    .accept 761 >>Accept Swoop Hunting
step << Druid
    .money <0.0190
.goto Mulgore,48.5,59.6
    .train 5177 >>Train Wrath r2
    .train 467 >>Train Thorns
step << Druid
    .istrained 5177
.money <0.0095
.goto Mulgore,48.5,59.6
    .train 5177 >>Train Wrath r2
step << Tauren/!Hunter
    .goto Mulgore,48.6,60.4
    .accept 748 >>Accept Poison Water
step << Warrior
    .money <0.0095
.goto Mulgore,49.5,60.6
.train 3127 >>Train Parry
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
.vendor >> vendor trash. Sell your weapon if it gives you enough money for Ornate Blunderbuss (3s 93c). You'll come back later if you don't have enough yet
step << Hunter
    .goto Mulgore,45.5,58.5
    .money <0.0393
    >> Buy Ornate Blunderbuss and equip it
    .collect 2509,1 --Collect Ornate Blunderbuss
step << Hunter
    .goto Mulgore,47.0,57.0
    .accept 766 >>Accept Mazzranache
step << Hunter
    .money <0.0190
.goto Mulgore,47.8,55.7
    .train 3044 >>Train Arcane Shot
    .train 1130 >>Train Hunter's Mark
step << Hunter
    .money <0.0095
.goto Mulgore,47.8,55.7
    .train 3044 >>Train Arcane Shot
step << Hunter
    .goto Mulgore,48.3,53.3
    .accept 11129 >>Accept Kyle's Gone Missing!
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
.goto Mulgore,55.9,63.1,60,0
    .goto Mulgore,51.1,66.5,60,0
    .goto Mulgore,40.7,73.0,60,0
.goto Mulgore,55.9,63.1,60,0
    .goto Mulgore,51.1,66.5,60,0
    .goto Mulgore,40.7,73.0,60,0
>>Kill Wolves for Paws and Plainstriders for Talons. Kill a Plainstrider for Tender Strider Meat
    .complete 748,1 --Prairie Wolf Paw (6)
    .complete 748,2 --Plainstrider Talon (4)
    .collect 33009,1 --Collect Tender Strider Meat (1)
step << !Tauren
>>Kill Striders for Tender Strider Meat
.goto Mulgore,53.8,62.0
.collect 33009,1 --Collect Tender Strider Meat (1)
step
    #sticky
    #completewith Well
    >>If you see Kyle the Frenzied. Go up to him and use the Tender Strider Meat
    .complete 11129,1 --Kyle Fed (1)
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
.goto Mulgore,53.5,73.0,60,0
    .goto Mulgore,48.3,72.0,60,0
.goto Mulgore,53.5,73.0,60,0
    .goto Mulgore,48.3,72.0,60,0
.goto Mulgore,53.5,73.0,60,0
    .goto Mulgore,48.3,72.0,60,0
    >>Go back and forth between the two camps, killing Gnolls. Be aware of Snagglespear (Level 9 rare). He hits very hard and nets.
    .complete 745,1 --Palemane Tanner (10)
    .complete 745,2 --Palemane Skinner (8)
.complete 745,3 --Palemane Poacher (5)
step
    #sticky
    #label Kyle
    #completewith Vision
    >>If you see Kyle the Frenzied. Go up to him and use the Tender Strider Meat
    .complete 11129,1 --Kyle Fed (1)
step
    .goto Mulgore,47.6,61.5
.vendor >>vendor trash
step << Tauren
    .goto Mulgore,48.5,60.4
    .turnin 754 >>Turn in Winterhoof Cleansing
    .accept 756 >>Accept Thunderhorn Totem
step << Warrior
    .istrained 3127
.money <0.0095
.goto Mulgore,49.5,60.6
.train 3127 >>Train Parry
step << Shaman
    .istrained 332
.goto Mulgore,48.4,59.2
    .train 332 >>Train Healing Wave r2
step << Druid
    .istrained 5177,467
.money <0.0190
.goto Mulgore,48.5,59.6
    .train 5177 >>Train Wrath r2
    .train 467 >>Train Thorns
step << Druid
    .istrained 5177
.money <0.0095
.goto Mulgore,48.5,59.6
    .train 5177 >>Train Wrath r2
step
    .goto Mulgore,47.5,60.2
    .turnin 745 >>Turn in Sharing the Land
step << Warrior
    .goto Mulgore,46.8,60.8
    .money <0.0095
    .train 3273 >>Train First Aid
step << Shaman/Druid
    .goto Mulgore,45.7,58.6
    .money <0.0480
    >> Buy Walking Stick and equip it
.collect 2495,1 --Collect Walking Stick
step << Warrior
.goto Mulgore,45.7,58.6
    .money <0.0666
    >> Buy Wooden Mallet and equip it
.collect 2493,1 --Collect Wooden Mallet
step << Hunter
    .goto Mulgore,45.5,58.5
    .money <0.0393
    >> Buy Ornate Blunderbuss and equip it
    .collect 2509,1 --Collect Ornate Blunderbuss
step
    #label Vision
    >>Dont follow the wolf that spawns
.goto Mulgore,47.8,57.5
    .turnin 771 >>Turn in Rite of Vision
    .accept 772 >>Accept Rite of Vision
step
    #sticky
    #completewith next
    .goto Mulgore,47.3,56.9,30,0    
    .goto Mulgore,49.4,63.9,30,0
    .goto Mulgore,50.2,60.2,30,0
    .goto Mulgore,46.8,59.6,30,0
    >>Look for Kyle the Frenzied. He patrols clockwise throughout the town (so go anti-clockwise). Go up to him and use the Tender Strider Meat
.complete 11129,1 --Kyle Fed (1)
step << Hunter
.goto Mulgore,47.8,55.7
    .train 3044 >>Train Arcane Shot
    .train 1130 >>Train Hunter's Mark
step
    .goto Mulgore,48.2,53.3
    .turnin 11129 >>Turn in Kyle's Gone Missing!
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
    #sticky
    #label Mazzranache
    #completewith deathwarp
    >>Get the items for Mazzranache as you quest throughout the zone
.complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
    --might have issues with prairie hearts and plainstriders? Can add them later?
step << Tauren
    #sticky
    #completewith Stalkers
>>Kill Stalkers, Cougars, and Swoops in the area. Loot them for their claws and quills
.goto Mulgore,58.1,48.6,60,0
    .goto Mulgore,54.5,40.1,60,0
    .goto Mulgore,46.4,50.7,60,0
    --Choosing to do swoops now and make it painful, but in return getting 2s 50c for the handin to try to avoid money problems
step << Tauren
#label Stalkers
.complete 761,1 --Trophy Swoop Quill (8)
.complete 756,1 --Stalker Claws (6)
    .complete 756,2 --Cougar Claws (6)
step << !Tauren
    #sticky
    #completewith Stalkers
>>Kill Swoops in the area. Loot them for their Quills
.goto Mulgore,58.1,48.6,60,0
    .goto Mulgore,54.5,40.1,60,0
    .goto Mulgore,46.4,50.7,60,0
step << !Tauren
#label Stalkers
.complete 761,1 --Trophy Swoop Quill (8)
step
#label deathwarp
>> Die and respawn at the Spirit Healer, or run to Bloodhoof Village
.goto Mulgore,46.5,55.5,200
step
    .isQuestComplete 766
.goto Mulgore,47.0,57.2
    .turnin 766 >>Turn in Mazzranache
step
    .goto Mulgore,46.2,58.2
    .vendor >>vendor trash
step << Tauren
    .goto Mulgore,48.5,60.4
    .turnin 756 >>Turn in Thunderhorn Totem
    .accept 758 >>Accept Thunderhorn Cleansing
step
    .goto Mulgore,48.7,59.4
    .turnin 761 >>Turn in Swoop Hunting
step << Shaman
.goto Mulgore,48.4,59.2
    .train 2484 >>Train Earthbind Totem
    .train 8018 >>Train Rockbiter Weapon r2
    .train 8044 >>Train Earth Shock r2
    .train 324 >>Train Lightning Shield
step << Druid
.goto Mulgore,48.5,59.6
    .train 5186 >>Train Healing Touch r2
    .train 339 >>Train Entangling Roots
step << Warrior
.goto Mulgore,49.5,60.6
    .train 284 >>Train Heroic Strike r2
    .train 1715 >>Train Hamstring
step << Shaman/Druid
    .goto Mulgore,45.7,58.6
    .money <0.0480
    >> Buy Walking Stick and equip it
.collect 2495,1 --Collect Walking Stick
step << Warrior
.goto Mulgore,45.7,58.6
    .money <0.0666
    >> Buy Wooden Mallet and equip it
.collect 2493,1 --Collect Wooden Mallet
step << Hunter
    .goto Mulgore,45.5,58.5
    .money <0.0393
    >> Buy Ornate Blunderbuss and equip it
    .collect 2509,1 --Collect Ornate Blunderbuss
step << Warrior
    .goto Mulgore,46.7,60.7
    .vendor >> vendor trash. Buy as much Freshly Baked Bread as you can afford
step << Druid/Shaman
    .goto Mulgore,46.7,60.7
    .vendor >> vendor trash. Buy as much Ice Cold Milk as you can afford
step << Tauren
    .goto Mulgore,44.5,45.3
    >>Use the Thunderhorn Cleansing Totem at the Well
    .complete 758,1 --Cleanse the Thunderhorn Water Well (1)
step
    #sticky
    >>Finish getting the items for Mazzranache
.complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    >>Kill Dwarf mobs for Prospector's Picks. Use them on the Forge until you've broken 5 of them
.goto Mulgore,31.3,49.9
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
    .xp 9+4400 >> Grind to 4400+/6500xp
step << !Druid
    #completewith next
    .hs >>Hearth to Bloodhoof Village
step << Druid
.goto Mulgore,46.5,55.5,300 >> Die and respawn at the Spirit Healer, or run to Bloodhoof Village
step << !Hunter
.goto Mulgore,47.0,57.2
    .turnin 766 >>Turn in Mazzranache
step << !Hunter !Druid
    .goto Mulgore,46.9,60.2
    .accept 861 >>Accept The Hunter's Way
step << Tauren Shaman/Tauren Warrior
    .goto Mulgore,48.5,60.4
    .turnin 758 >>Turn in Thunderhorn Cleansing
    .accept 759 >>Accept Wildmane Totem
step << Tauren Druid
    .goto Mulgore,48.5,60.4
    .turnin 758 >>Turn in Thunderhorn Cleansing
step << !Hunter
    .goto Mulgore,47.5,60.2
    .turnin 746 >>Turn in Dwarven Digging
step 
    .goto Mulgore,47.4,62.0
    .turnin 743 >>Turn in Dangers of the Windfury
step << Tauren Druid
    .abandon 759 >>Abandon Wildmane Totem
step << Shaman
    .goto Mulgore,48.4,59.2
    .accept 2984 >>Accept Call of Fire
    .train 8075 >>Train Strength of Earth Totem
    .train 8050 >>Train Flame Shock
step << Druid
    .goto Mulgore,48.5,59.6
    .accept 5926 >>Accept Heeding the Call
    .train 5232 >>Train Mark of the Wild r2
    .train 8924 >>Train Moonfire r2
    .train 1058 >>Train Rejuvenation r2
step << Warrior
    .goto Mulgore,49.5,60.6
    .accept 1505 >>Accept Veteran Uzzek
    .train 2687 >>Train Bloodrage
    .train 6546 >>Train Rend r2
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
    .train 4195 >>Train Great Stamina
    .train 24547 >>Train Natural Armor
step << Tauren Hunter
    .abandon 759 >>Abandon Wildmane Totem
step << Hunter
    .goto Mulgore,47.8,55.7
    .accept 6061 >>Accept Taming the Beast
    .train 13165 >>Train Aspect of the Hawk
    .train 13549 >>Train Serpent Sting r2
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
step << Warrior/Shaman
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
step << Druid/Hunter
    >>Look for Morin Cloudstalker. He patrols along the eastern road. Skip followups
.goto Mulgore,51.1,58.6,30,0
    .goto Mulgore,59.7,62.5,30,0
.goto Mulgore,51.1,58.6,30,0
    .goto Mulgore,59.7,62.5,30,0
.goto Mulgore,51.1,58.6,30,0
    .goto Mulgore,59.7,62.5,30,0
.turnin 751 >> Turn in The Ravaged Caravan
step << Tauren Warrior/Tauren Shaman
    >>Kill Wolves in the area. Loot them for teeth
.goto Mulgore,66.9,67.2
    .complete 759,1 --Prairie Alpha Tooth (8)
step << Warrior/Shaman
    #sticky
    #completewith next
.goto Mulgore,46.5,55.5,200 >> Die and respawn at the Spirit Healer, or run to Bloodhoof Village
step << Tauren Warrior/Tauren Shaman
    .goto Mulgore,48.5,60.4
    .turnin 759 >>Turn in Wildmane Totem
    .accept 760 >>Accept Wildmane Cleansing
step
.goto Mulgore,69.6,60.4,100 >>Run into The Barrens
step << Druid/Hunter
    .abandon 765 >>Abandon Supervisor Fizsprocket
    .abandon 764 >>Abandon The Venture Co.
step << !Druid
    .goto The Barrens,44.5,59.1
    .fp >>Get the Camp Taurajo Flight Path
step << Druid
    .goto The Barrens,44.5,59.1
    .fp >>Get the Camp Taurajo Flight Path
    .fly >>Fly to Thunder Bluff
step << Druid
    .goto Thunder Bluff,45.8,64.4
    .home >>Set your Hearthstone to Thunder Bluff
step << Druid
    .goto Thunder Bluff,78.1,28.6
    .accept 886 >>Accept The Barrens Oases
step << Druid
    .goto Thunder Bluff,76.7,27.3
    .turnin 5926 >>Turn in Heeding the Call
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
.fly >>Fly to Camp Taurajo
step << Druid
    >>Run to the Moonkin Stone, and use the Cenarion Lunardust in your inventory. Kill Lunaclaw, then talk to her
.goto The Barrens,42.0,60.9
.complete 6002,1 --Face Lunaclaw and earn the strength of body and heart it possesses.
--This complete has been added manually, might be scuffed
step << Tauren
.goto The Barrens,44.9,58.6
.accept 854 >>Accept Journey to the Crossroads
step << Druid
    .goto Thunder Bluff,78.1,28.6
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
.fp >>Get the The Crossroads Flight Path
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
    .goto The Barrens,52.0,30.6,150 >> Die and respawn at the Spirit Healer, or run back
step
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
    .fly Thunder Bluff >>Fly to Thunder Bluff
step
    .goto Thunder Bluff,45.6,55.9
    .turnin 6362 >>Turn in Ride to Thunder Bluff
    .accept 6363 >>Accept Tal the Wind Rider Master
step << Warrior/Shaman
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
step << !Warrior !Shaman
    .goto Thunder Bluff,60.0,51.7
    .turnin 775 >>Turn in Journey into Thunder Bluff
step << Warrior/Shaman
    .goto Thunder Bluff,60.0,51.7
    .turnin 775 >>Turn in Journey into Thunder Bluff
    .accept 776 >>Accept Rites of the Earthmother
step << Druid
    .money <0.1054
.goto Thunder Bluff,40.9,62.7
    .train 199 >>Train 2h Maces
step << Warrior/Shaman/Hunter
.goto Thunder Bluff,40.9,62.7
    .train 227 >>Train Staves
step << Druid
.goto Thunder Bluff,76.5,27.3
.turnin 6002 >>Turn in Body and Heart
step << Druid/Hunter
    #sticky
    #completewith next
.goto The Barrens,52.0,29.9,100 >>Hearth or fly back to Crossroads
step << Druid/Hunter
    .goto The Barrens,51.2,29.1
    .turnin 6364 >>Turn in Return to Jahan
step << Druid/Hunter
    #sticky
    #completewith next
+Run all the way to the Zeppelin tower. Take the zeppelin to Undercity. Abandon all your quests
    .goto Durotar,50.8,13.8
step << Druid/Hunter
.goto Tirisfal Glades,60.7,58.8,1500 >>Arrive in Tirisfal
step << Druid/Hunter
.goto Undercity,66.2,1.1,18 >>Go to Undercity
step << Druid/Hunter
.goto Undercity,62.0,11.3,18 >>Go up the stairs here
step << Druid/Hunter
.goto Undercity,54.9,11.3,18 >>Use the Orb of Translocation
step << Druid/Hunter
.goto Silvermoon City,62.0,30.1,20 >>Go to Silvermoon
]],"Tauren")
RXPGuides.RegisterGuide("RestedXP Horde 1-30",[[
<< Horde 
#name 10-13 Mulgore
#next 13-23 The Barrens
step
    #sticky
    #completewith ThunderBluff
    >>Keep an eye out for Ghost Howl (white wolf rare). Loot him for Demon Scarred Cloak
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .accept 770 >>Accept The Demon Scarred Cloak
step
.goto Mulgore,31.7,28.2,40,0
    .goto Mulgore,30.2,19.5,40,0
.goto Mulgore,31.7,28.2,40,0
    .goto Mulgore,30.2,19.5,40,0
.goto Mulgore,31.7,28.2,40,0
    .goto Mulgore,30.2,19.5,40,0
    >>Kill Harpies. Loot them for their Feathers
    .complete 744,1 --Azure Feather (6)
    .complete 744,2 --Bronze Feather (6)
step
    #sticky
    #label Prowlers
    >>Kill Flatland Prowlers. Loot them for their Claws
    .complete 861,1 --Flatland Prowler Claw (4)
step
    .goto Mulgore,42.5,13.8
>>Use the Wildmane Cleansing Totem at the Well
    .complete 760,1 --Cleanse the Wildmane Well (1)
step
.goto Mulgore,52.6,12.2,40,0
    .goto Mulgore,48.6,16.1,40,0
    .goto Mulgore,51.8,33.8,40,0
    .goto Mulgore,56.2,32.9,40,0
.goto Mulgore,52.6,12.2,40,0
    .goto Mulgore,48.6,16.1,40,0
    .goto Mulgore,51.8,33.8,40,0
    .goto Mulgore,56.2,32.9,40,0
>>Look around for Arra'Chea (Big black kodo). He walks clockwise. Kill and Loot him for his horn
    .complete 776,1 --Horn of Arra'chea (1)
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
.train 1535 >>Train Fire Nova Totem
.train 547 >>Train Healing Wave r3
step << Warrior
.goto Mulgore,49.5,60.6
.train 5242 >>Train Battle Shout r2
.train 7384 >>Train Overpower 
step
    #sticky
    #completewith next
.goto The Barrens,52.0,29.9,100 >>Hearth or fly back to Crossroads
step
    .goto The Barrens,51.2,29.1
    .turnin 6364 >>Turn in Return to Jahan
step
    .goto The Barrens,51.5,30.9
    .accept 871 >>Accept Disrupt the Attacks
    .accept 5041 >>Accept Supplies for the Crossroads
step
    >>Upstairs
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
.goto Durotar,36.6,58.0,15 >>Run up the mountain path
step << Shaman
    .goto Durotar,38.5,58.9
    .turnin 1524 >>Turn in Call of Fire
    .accept 1525 >>Accept Call of Fire
step << Warrior
    .goto The Barrens,61.4,21.1
    .turnin 1505 >>Turn in Veteran Uzzek
    .accept 1498 >>Accept Path of Defense
]],"Tauren")


