local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance !Warlock !Hunter
#name 1-6 Coldridge Valley
#next 6-11 Dun Morogh
#version 1
#group RestedXP Alliance 1-20
#defaultfor Gnome/Dwarf
step << !Gnome !Dwarf
    #sticky
    #completewith next
.goto Dun Morogh,29.927,71.201
    +You have selected a guide meant for Gnomes and Dwarves. You should choose the same starter zone that you start in
step
    >>|cRXP_WARN_Delete your Hearthstone|r
    >> Talk to |cRXP_FRIENDLY_Sten Stoutarm|r
    .goto Dun Morogh,29.93,71.20 << tbc
    .goto Dun Morogh,29.87,71.87 << wotlk
    .accept 179 >> Accept Dwarven Outfitters
    .target Sten Stoutarm
step << Warrior
    .goto Dun Morogh,28.6,72.2
    +Kill |cRXP_LOOT_Wolves|r for 10c+ of vendor trash, then enter the building. We are going to train Battle Shout, it speeds up leveling speed a lot.
step << Warrior
    #completewith next
    .goto Dun Morogh,28.8,69.2,20 >>Enter the building
    .goto Dun Morogh,28.7,67.7
    .vendor >> Vendor Trash
step << Warrior
    >> Talk to |cRXP_FRIENDLY_Thran Khorman|r
    .goto Dun Morogh,28.8,67.2
    .train 6673 >>Train Battle Shout
    .target Thran Khorman
step
    >>Kill |cRXP_LOOT_Wolves|r. Loot them for |cRXP_LOOT_Tough Wolf Meat|r
.goto Dun Morogh,28.7,74.8
    .complete 179,1 --Collect Tough Wolf Meat (x8)
step
    .xp 2 >> Grind to 2
step << Priest/Mage
    .goto Dun Morogh,30.0,71.5
    .vendor >>vendor trash, repair. Buy 15 Water. Grind extra wolves if you don't have enough money
    .collect 159,15 --Collect Refreshing Spring Water (x15)
step << Paladin/Warrior
    #completewith next
    .goto Dun Morogh,30.0,71.5
    .vendor >>vendor trash
step << Paladin
    >> Talk to |cRXP_FRIENDLY_Sten Stoutarm|r
    .target Sten Stoutarm
    .goto Dun Morogh,29.93,71.20 << tbc
    .goto Dun Morogh,29.87,71.87 << wotlk
    .turnin 179 >> Turn in Dwarven Outfitters
    .accept 233 >> Accept Coldridge Valley Mail Delivery
    .accept 3107 >> Accept Consecrated Rune
step << Gnome Warrior
    >> Talk to |cRXP_FRIENDLY_Sten Stoutarm|r
    .target Sten Stoutarm
    .goto Dun Morogh,29.93,71.20 << tbc
    .goto Dun Morogh,29.87,71.87 << wotlk
    .turnin 179 >> Turn in Dwarven Outfitters
    .accept 233 >> Accept Coldridge Valley Mail Delivery
    .accept 3112 >> Accept Simple Memorandum
step << Dwarf Warrior
    >> Talk to |cRXP_FRIENDLY_Sten Stoutarm|r
    .target Sten Stoutarm
    .goto Dun Morogh,29.93,71.20 << tbc
    .goto Dun Morogh,29.87,71.87 << wotlk
    .turnin 179 >> Turn in Dwarven Outfitters
    .accept 233 >> Accept Coldridge Valley Mail Delivery
    .accept 3106 >> Accept Simple Rune
step << Mage
    >> Talk to |cRXP_FRIENDLY_Sten Stoutarm|r
    .target Sten Stoutarm
    .goto Dun Morogh,29.93,71.20 << tbc
    .goto Dun Morogh,29.87,71.87 << wotlk
    .turnin 179 >> Turn in Dwarven Outfitters
    .accept 233 >> Accept Coldridge Valley Mail Delivery
    .accept 3114 >> Accept Glyphic Memorandum
step << Priest
    >> Talk to |cRXP_FRIENDLY_Sten Stoutarm|r
    .target Sten Stoutarm
    .goto Dun Morogh,29.93,71.20 << tbc
    .goto Dun Morogh,29.87,71.87 << wotlk
    .turnin 179 >> Turn in Dwarven Outfitters
    .accept 233 >> Accept Coldridge Valley Mail Delivery
    .accept 3110 >> Accept Hallowed Rune
step << Gnome Rogue
    >> Talk to |cRXP_FRIENDLY_Sten Stoutarm|r
    .target Sten Stoutarm
    .goto Dun Morogh,29.93,71.20 << tbc
    .goto Dun Morogh,29.87,71.87 << wotlk
    .turnin 179 >> Turn in Dwarven Outfitters
    .accept 233 >> Accept Coldridge Valley Mail Delivery
    .accept 3113 >> Accept Encrypted Memorandum
step << Dwarf Rogue
    >> Talk to |cRXP_FRIENDLY_Sten Stoutarm|r
    .target Sten Stoutarm
    .goto Dun Morogh,29.93,71.20 << tbc
    .goto Dun Morogh,29.87,71.87 << wotlk
    .turnin 179 >> Turn in Dwarven Outfitters
    .accept 233 >> Accept Coldridge Valley Mail Delivery
    .accept 3109 >> Accept Encrypted Rune
step << !Dwarf !Gnome
    >> Talk to |cRXP_FRIENDLY_Sten Stoutarm|r
    .target Sten Stoutarm
    .goto Dun Morogh,29.93,71.20 << tbc
    .goto Dun Morogh,29.87,71.87 << wotlk
    .turnin 179 >> Turn in Dwarven Outfitters
    .accept 233 >> Accept Coldridge Valley Mail Delivery
step
#xprate <1.5
    >> Talk to |cRXP_FRIENDLY_Sten Stoutarm|r
    .target Sten Stoutarm
    .goto Dun Morogh,29.7,71.2
    .accept 170 >> Accept A New Threat
step
#xprate <1.5
    #sticky
    #completewith Rockjaw
    >>Kill |cRXP_ENEMY_Rockjaw Troggs|r that you see. You may need to kill extra Burly Rockjaw Troggs to force respawns.
    .complete 170,1 --Kill Rockjaw Trogg (x6)
        >>Kill |cRXP_ENEMY_Burly Rockjaw Troggs|r
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .unitscan Rockjaw Trogg
step
    >> Talk to |cRXP_FRIENDLY_Talin Keeneye|r
    .target Talin Keeneye
    .goto Dun Morogh,22.601,71.433
    .turnin 233 >> Turn in Coldridge Valley Mail Delivery
    .accept 183 >> Accept The Boar Hunter
    .accept 234 >> Accept Coldridge Valley Mail Delivery
step
    .goto Dun Morogh,22.2,72.5,40,0
    .goto Dun Morogh,20.5,71.4,40,0
    .goto Dun Morogh,21.1,69.0,40,0
    .goto Dun Morogh,22.8,69.6,40,0
    .goto Dun Morogh,22.2,72.5,40,0
    .goto Dun Morogh,20.5,71.4,40,0
    .goto Dun Morogh,21.1,69.0,40,0
    .goto Dun Morogh,22.8,69.6,40,0
    >>Kill |cRXP_ENEMY_Small Crag Boars|r in the area
    .complete 183,1 --Kill Small Crag Boar (x12)
step
    >> Talk to |cRXP_FRIENDLY_Talin Keeneye|r
    .target Talin Keeneye
    .goto Dun Morogh,22.601,71.433
    .turnin 183 >> Turn in The Boar Hunter
step << Paladin/Mage
.xp 3+860 >> Grind to 860+/1400xp
.goto Dun Morogh,23.0,75.0,40,0
.goto Dun Morogh,24.2,72.5,40,0
.goto Dun Morogh,27.7,76.3,40,0
.goto Dun Morogh,23.0,75.0,40,0
.goto Dun Morogh,24.2,72.5,40,0
.goto Dun Morogh,27.7,76.3,40,0
step
    #label Rockjaw
    .goto Dun Morogh,25.076,75.713
    >> Talk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .target Grelin Whitebeard
    .turnin 234 >> Turn in Coldridge Valley Mail Delivery
    .accept 182 >> Accept The Troll Cave
step << Paladin/Mage
    >> Talk to |cRXP_FRIENDLY_Nori Pridedrift|r
    .target Nori Pridedrift
    .goto Dun Morogh,25.0,76.0
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    >> Once accepted, a 5 minute timer will start. Relax and follow the guide
step << Paladin/Mage
#xprate <1.5
    .goto Dun Morogh,28.7,77.5
    >>Go up here and kill |cRXP_ENEMY_Rockjaw Troggs|r if you're not done with them by now
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step << Paladin/Mage
    #sticky
    #completewith Scalding1
    >> Talk to |cRXP_FRIENDLY_Nori Pridedrift|r
    .target Nori Pridedrift
    >>If you were too slow and failed the timed quest, go and pick it up again
    .goto Dun Morogh,25.0,76.0,0
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    .goto Dun Morogh,28.8,66.4
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
step << Paladin/Mage
    #label Scalding1
    >> Talk to |cRXP_FRIENDLY_Durnan Furcutter|r
    .target Durnan Furcutter
    .goto Dun Morogh,28.8,66.4
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
    .accept 3365 >> Accept Bring Back the Mug
    .vendor >> vendor trash
step << Dwarf Paladin
    .goto Dun Morogh,28.8,68.3
.target Bromos Grummner
>>Talk to |cRXP_FRIENDLY_Bromos Grummner|r
    .turnin 3107 >> Turn in Consecrated Rune
    .train 20271 >>Train Judgement
.train 19740 >>Train Blessing of Might
.train 465 >>Train Devotion Aura
step << Human Paladin/Draenei Paladin
    .goto Dun Morogh,28.8,68.3
    .train 20271 >>Train Judgement
.train 19740 >>Train Blessing of Might
.train 465 >>Train Devotion Aura
step << Gnome Mage
    .goto Dun Morogh,28.709,66.366
.target Marryk Nurribit
>>Talk to |cRXP_FRIENDLY_Marryk Nurribit|r
    .turnin 3114 >> Turn in Glyphic Memorandum
    .train 1459 >>Train Arcane Intellect
    .train 116 >>Train Frostbolt
step << Human Mage/Draenei Mage
    .goto Dun Morogh,28.709,66.366
    .train 1459 >>Train Arcane Intellect
    .train 116 >>Train Frostbolt
step << Paladin/Mage
#xprate <1.5
    .goto Dun Morogh,29.7,71.2
.target Balir Frosthammer
>>Talk to |cRXP_FRIENDLY_Balir Frosthammer|r
    .turnin 170 >> Turn in A New Threat
step << Mage
    .goto Dun Morogh,30.0,71.5
    .vendor >>Vendor, buy 10 water
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step << !Paladin !Mage
#xprate <1.5
    #sticky
    #label TrollTroggs
>>Kill any |cRXP_ENEMY_Rockjaw Troggs|r you see nearby whilst doing Trolls
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step << Paladin/Mage
    .goto Dun Morogh,26.3,79.2,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
>>Kill |cRXP_ENEMY_Frostmane Troll Whelps|r
.complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .goto Dun Morogh,25.076,75.713
step << !Paladin !Mage
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
>>Kill |cRXP_ENEMY_Frostmane Troll Whelp|r
.complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .goto Dun Morogh,25.076,75.713
step << !Paladin !Mage
    .goto Dun Morogh,25.0,76.0
    .abandon 3364 >> Abandon Scalding Mornbrew Delivery - You don't need it yet
step << !Paladin !Mage
    .xp 4 >> Grind to 4
step << !Paladin !Mage
    #requires TrollTroggs
    >> Talk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.076,75.713
    .turnin 182 >> Turn in The Troll Cave
    .accept 218 >> Accept The Stolen Journal
step << Paladin/Mage
    .goto Dun Morogh,25.076,75.713
    >> Talk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .target Grelin Whitebeard
    .turnin 182 >> Turn in The Troll Cave
    .accept 218 >> Accept The Stolen Journal
step << !Paladin !Mage
    >> Talk to |cRXP_FRIENDLY_Nori Pridedrift|r
    .target Nori Pridedrift
    .goto Dun Morogh,25.0,76.0
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    >>You now have 5m to get the Journal, then turnin the Mornbrew. If you fail quest, pick it up again after dying
step << Paladin/Mage
    >> Talk to |cRXP_FRIENDLY_Nori Pridedrift|r
    .target Nori Pridedrift
    .goto Dun Morogh,25.0,76.0
    .turnin 3365 >> Turn in Bring Back the Mug
step
    .goto Dun Morogh,26.8,79.9,30,0
    .goto Dun Morogh,29.0,79.0,15,0
.goto Dun Morogh,30.6,80.3
    >>Enter the Troll cave. Kill |cRXP_LOOT_Grik'nir|r, then loot him for |cRXP_LOOT_Grelin's journal|r
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
step << !Paladin !Mage
    .goto Dun Morogh,29.5,69.8,100 >> Die and respawn at Spirit Healer
step << !Paladin !Mage
#sticky
#completewith Scalding2
    >> If you were too slow and failed the timed quest, go and talk to |cRXP_FRIENDLY_Nori Pridedrift|r
    .target Nori Pridedrift
    .goto Dun Morogh,25.0,76.0,0
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    .goto Dun Morogh,28.8,66.4
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
step << !Paladin !Mage
    #label Scalding2
    >> Talk to |cRXP_FRIENDLY_Durnan Furcutter|r
    .target Durnan Furcutter
    .goto Dun Morogh,28.8,66.4
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
    .accept 3365 >> Accept Bring Back the Mug
    .vendor >> vendor trash
step << Gnome Rogue
.goto Dun Morogh,28.4,67.5
.target Solm Hargrin
>>Talk to |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 3113 >> Turn in Encrypted Memorandum
step << Dwarf Rogue
.goto Dun Morogh,28.4,67.5
.target Solm Hargrin
>>Talk to |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 3109 >> Turn in Encrypted Rune
step << Dwarf Priest
.goto Dun Morogh,28.600,66.385
.target Branstock Khalder
>>Talk to |cRXP_FRIENDLY_Branstock Khalder|r
    .turnin 3110 >> Turn in Hallowed Rune
    .train 1243 >>Train Power Word: Fortitude
.train 589 >>Train Shadow Word: Pain
    .train 2052 >>Train Lesser Heal r2
step << Human Priest/NightElf Priest/Draenei Priest
.goto Dun Morogh,28.600,66.385
    .train 1243 >>Train Power Word: Fortitude
.train 589 >>Train Shadow Word: Pain
    .train 2052 >>Train Lesser Heal r2
step << Gnome Warrior
.goto Dun Morogh,28.8,67.2
.target Thran Khorman
>>Talk to |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 3112 >> Turn in Simple Memorandum
    .train 772 >>Train Rend
    .train 100 >>Train Charge
step << Dwarf Warrior
.goto Dun Morogh,28.8,67.2
.target Thran Khorman
>>Talk to |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 3106 >> Turn in Simple Rune
    .train 772 >>Train Rend
    .train 100 >>Train Charge
step << Human Warrior/NightElf Warrior/Draenei Warrior
.goto Dun Morogh,28.8,67.2
    .train 772 >>Train Rend
    .train 100 >>Train Charge
step << !Paladin !Mage
#xprate <1.5
    .goto Dun Morogh,29.7,71.2
.target Balir Frosthammer
>>Talk to |cRXP_FRIENDLY_Balir Frosthammer|r
    .turnin 170 >> Turn in A New Threat
step << Priest
.money <0.0024
.goto Dun Morogh,30.0,71.5
    .vendor >> Buy 5 water
    .collect 159,5 --Collect Refreshing Spring Water (x5)
step
    >>Grind a bit back to here
    .goto Dun Morogh,25.1,75.8
>>Talk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 218 >> Turn in The Stolen Journal
.target Grelin Whitebeard
    .accept 282 >> Accept Senir's Observations
step << !Paladin !Mage
    >> Talk to |cRXP_FRIENDLY_Nori Pridedrift|r
    .target Nori Pridedrift
    .goto Dun Morogh,25.0,76.0
    .turnin 3365 >> Turn in Bring Back the Mug
step
    >> Grind some mobs up to here
.goto Dun Morogh,33.484,71.841
>>Talk to |cRXP_FRIENDLY_Mountaineer Thalos|r
    .turnin 282 >> Turn in Senir's Observations
.target Mountaineer Thalos
    .accept 420 >> Accept Senir's Observations
step
    .goto Dun Morogh,33.9,72.2
.target Hands Springsprocket
>>Talk to |cRXP_FRIENDLY_Hands Springsprocket|r
    .accept 2160 >> Accept Supplies to Tannok
step
.goto Dun Morogh,34.1,71.6,20,0
.goto Dun Morogh,35.7,66.0,20 >>Go through the tunnel
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance !Warlock !Hunter
#name 6-11 Dun Morogh
#version 1
#group RestedXP Alliance 1-20
#defaultfor Gnome/Dwarf
#next 11-14 Darkshore
step
    #sticky
#completewith BoarMeat3
>> Kill boars to get some Boar Meat for later
.collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    #sticky
#completewith BoarRibs
>> Kill boars to get some Boar Ribs for later
.collect 2886,6 --Collect Crag Boar Rib (x6)
step << Dwarf Priest
>>Grind boars north-east to Kharanos
.goto Dun Morogh,36.4,62.9,45,0
    .goto Dun Morogh,37.7,60.5,45,0
    .goto Dun Morogh,43.9,55.7
    .xp 5+2145 >> Grind to 2145/+2800xp
step << !Dwarf/!Priest
>>grind boars north-east to Kharanos
.goto Dun Morogh,36.4,62.9,45,0
    .goto Dun Morogh,37.7,60.5,45,0
    .goto Dun Morogh,43.9,55.7
    .xp 5+2415 >> Grind to 2415/+2800xp
step
    .goto Dun Morogh,47.0,55.1,75 >> Die and respawn at the Spirit Healer, or run to Kharanos. Make sure your subzone is NOT Coldridge Pass
step
    #label BoarMeat3
.goto Dun Morogh,47.0,55.1,1500 >> .
step
    #label BoarRibs
.goto Dun Morogh,47.0,55.1,1500 >> .
step
.goto Dun Morogh,46.726,53.826
.target Senir Whitebeard
>>Talk to |cRXP_FRIENDLY_Senir Whitebeard|r
    .turnin 420 >> Turn in Senir's Observations
step
    .goto Dun Morogh,46.7,53.5
    .vendor >>vendor trash
step << !Priest
    .goto Dun Morogh,48.3,57.0
.xp 6 >> Grind to 6
step << !Priest
    .goto Dun Morogh,46.8,52.4
.target Ragnar Thunderbrew
>>Talk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r
    .accept 384 >> Accept Beer Basted Boar Ribs
step << !Priest
    .goto Dun Morogh,47.217,52.195
.target Tannok Frosthammer
>>Talk to |cRXP_FRIENDLY_Tannok Frosthammer|r
    .turnin 2160 >> Turn in Supplies to Tannok
step << Rogue
.goto Dun Morogh,47.2,52.4
    .money <0.0028
    .vendor >> Go to Kreg Bilmn, buy and equip a level 3 throw weapon, costs 28c
step << Rogue
.goto Dun Morogh,47.6,52.6
    .train 1757 >>Train Sinister Strike r2
    .train 1776 >>Train Gouge
step << Mage
    .goto Dun Morogh,47.5,52.1
    .train 143 >>Train Fireball r2
    .train 2136 >>Train Fire Blast
step << Paladin
    .goto Dun Morogh,47.6,52.1
    .train 639 >>Train Holy Light r2
    .train 498 >>Train Divine Protection
step << Dwarf Priest
.goto Dun Morogh,47.3,52.2
.target Maxan Anvol
>>Talk to |cRXP_FRIENDLY_Maxan Anvol|r inside
    .accept 5625 >> Garments of the Light
step << Dwarf Priest
    .goto Dun Morogh,45.8,54.6
     .complete 5625,1 --Heal and fortify Mountaineer Dolf
step << Dwarf Priest
.goto Dun Morogh,47.3,52.2
.target Maxan Anvol
>>Talk to |cRXP_FRIENDLY_Maxan Anvol|r inside
    .turnin 5625 >> Garments of the Light
    .train 591 >>Train Smite r2
    .train 17 >>Train Power Word: Shield
    .train 2052 >>Train Lesser Heal r2
step << !Dwarf Priest
.goto Dun Morogh,47.3,52.2
    .train 591 >>Train Smite r2
    .train 17 >>Train Power Word: Shield
    .train 2052 >>Train Lesser Heal r2
step << Priest
    .xp 6 >> Grind to 6
step << Priest/Mage/Shaman/Druid
    .goto Dun Morogh,47.4,52.5
    .home >> Set your Hearthstone to Thunderbrew Distillery
    .vendor >> Buy as much level 5 drink as you can
step << !Mage !Priest
    .goto Dun Morogh,47.4,52.5
    .home >> Set your Hearthstone to Thunderbrew Distillery
    .vendor >> vendor trash
step << Warrior
    .goto Dun Morogh,47.4,52.6
    .train 3127 >>Train Parry
step << Paladin/Warrior/Shaman/Druid
    .goto Dun Morogh,45.8,51.8,20 >> Go into the building
step << Gnome Warrior/Human Warrior/NightElf Warrior
    .goto Dun Morogh,45.3,52.2
.vendor >> vendor trash. Sell your weapon if it gives you enough money for Gladius (5s 9c). You'll come back later if you don't have enough yet
step << Gnome Warrior/Human Warrior/NightElf Warrior
    .goto Dun Morogh,45.3,52.2
    .money <0.0509
    >> Buy Gladius and equip it
    .collect 2488,1 --Collect Gladius
step << Dwarf Warrior
    .goto Dun Morogh,45.3,52.2
.vendor >> vendor trash. Sell your weapon if it gives you enough money for Large Axe (4s 60c). You'll come back later if you don't have enough yet
step << Dwarf Warrior
    .money <0.0460
    .goto Dun Morogh,45.3,52.2
    >> Buy Large Axe and equip it
    .collect 2491,1 --Collect Large Axe
step << Paladin
    .goto Dun Morogh,45.3,52.2
.vendor >> vendor trash. Sell your weapon if it gives you enough money for Wooden Mallet (6s 66c). You'll come back later if you don't have enough yet
step << Paladin
    .money <0.0666
    .goto Dun Morogh,45.3,52.2
    >> Buy Wooden Mallet and equip it
    .collect 2493,1 --Collect Wooden Mallet
.goto Durotar,56.5,73.1
step << Druid/Shaman
.vendor >> vendor trash. Sell your weapon if it gives you enough money for Walking Stick (5s 4c). You'll come back later if you don't have enough yet
step << Druid/Shaman
    .goto Durotar,56.5,73.1
    .money <0.0504
    >> Buy Walking Stick and equip it
    .collect 2495,1 --Collect Walking Stick
step << Warrior/Rogue
    .goto Dun Morogh,45.3,51.9
    .train 2018 >>Train Blacksmithing. You'll get mining later which will allow you to craft Sharpening Stones (+2 weapon damage for 1 hour). You should stop making these around level 20.
step << Paladin
    .goto Dun Morogh,45.3,51.9
    .train 2018 >>Train Blacksmithing. You'll get mining later which will allow you to craft Weightstones (+2 weapon damage for 1 hour). You should stop making these around level 20.
step
    .goto Dun Morogh,46.021,51.676
.target Tharek Blackstone
>>Talk to |cRXP_FRIENDLY_Tharek Blackstone|r
    .accept 400 >> Accept Tools for Steelgrill
step
    #sticky
#completewith next
>> Kill boars to get some Boar Meat for later
.collect 769,4 --Collect Chunk of Boar Meat (x4)
step
.goto Dun Morogh,49.426,48.410
    >>DON'T kill bears en route
.target Pilot Bellowfiz
>>Talk to |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .accept 317 >> Accept Stocking Jetsteam
step
#xprate <1.5
    .goto Dun Morogh,49.622,48.612
.target Pilot Stonegear
>>Talk to |cRXP_FRIENDLY_Pilot Stonegear|r
    .accept 313 >> Accept The Grizzled Den
step
    .goto Dun Morogh,50.4,49.1
.target Beldin Steelgrill
>>Talk to |cRXP_FRIENDLY_Beldin Steelgrill|r
    .turnin 400 >> Turn in Tools for Steelgrill
step
    .goto Dun Morogh,50.084,49.420
.target Loslor Rudge
>>Talk to |cRXP_FRIENDLY_Loslor Rudge|r
    .accept 5541 >> Accept Ammo for Rumbleshot
step << Warrior/Paladin/Rogue
.money <0.0087
    .goto Dun Morogh,50.084,49.420
    .collect 2901,1 >> Buy a Mining Pick
step << Warrior/Paladin/Rogue
.money <0.0010
    .goto Dun Morogh,50.2,50.4
.train 2580 >>Go inside the house. Train Mining, cast Find Minerals
step
    #sticky
#completewith BoarRibs2
>> Kill boars to get Boar Ribs for later
.collect 2886,6 --Collect Crag Boar Rib (x6)
step << Paladin/Warrior/Rogue
    #sticky
    #completewith BoarMeat
>>Get the Boar Meat for Stocking Jetsteam as you quest
.complete 317,1 --Collect Chunk of Boar Meat (x4)
step << Paladin/Warrior/Rogue
    #sticky
    #completewith BearFur
    >>Get the Bear Fur for Stocking Jetsteam as you quest
.complete 317,2 --Collect Thick Bear Fur (x2)
step << !Paladin !Warrior !Rogue
.goto Dun Morogh,52.0,50.1,40,0
.goto Dun Morogh,51.5,53.9,40,0
.goto Dun Morogh,50.1,53.9,40,0
.goto Dun Morogh,49.9,50.9,40,0
.goto Dun Morogh,48.0,49.5,40,0
.goto Dun Morogh,48.2,46.9,40,0
.goto Dun Morogh,43.5,52.5,40,0
.goto Dun Morogh,52.0,50.1,40,0
.goto Dun Morogh,51.5,53.9,40,0
.goto Dun Morogh,50.1,53.9,40,0
.goto Dun Morogh,49.9,50.9,40,0
.goto Dun Morogh,48.0,49.5,40,0
.goto Dun Morogh,48.2,46.9,40,0
.goto Dun Morogh,43.5,52.5,40,0
.goto Dun Morogh,52.0,50.1,40,0
.goto Dun Morogh,51.5,53.9,40,0
.goto Dun Morogh,50.1,53.9,40,0
.goto Dun Morogh,49.9,50.9,40,0
.goto Dun Morogh,48.0,49.5,40,0
.goto Dun Morogh,48.2,46.9,40,0
.goto Dun Morogh,43.5,52.5,40,0
.goto Dun Morogh,52.0,50.1,40,0
.goto Dun Morogh,51.5,53.9,40,0
.goto Dun Morogh,50.1,53.9,40,0
.goto Dun Morogh,49.9,50.9,40,0
.goto Dun Morogh,48.0,49.5,40,0
.goto Dun Morogh,48.2,46.9,40,0
.goto Dun Morogh,43.5,52.5,40,0
    >>Get the items for Stocking Jetsteam
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
.complete 317,2 --Collect Thick Bear Fur (x2)
step << !Paladin !Warrior !Rogue
    .goto Dun Morogh,49.426,48.410
>>Talk to |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .turnin 317 >> Turn in Stocking Jetsteam
.target Pilot Bellowfiz
    .accept 318 >> Accept Evershine
step << Warrior
    .goto Dun Morogh,46.9,52.1,20,0
.goto Dun Morogh,47.4,52.5
    .vendor >> Buy as much level 5 food as you can afford
step << Priest/Mage/Shaman/Druid
    .goto Dun Morogh,46.9,52.1,20,0
.goto Dun Morogh,47.4,52.5
    .vendor >> Buy as much level 5 drink as you can afford.
step << !Paladin !Warrior !Rogue
#xprate <1.5
.goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
.goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
.goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
.goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
    >> Go into the cave. Kill Wendigos. Loot them for their Manes
    >>Keep an eye out for Veins to get rough stones for sharpening/weight stones for your weapon << Paladin/Warrior/Rogue
    .complete 313,1 --Collect Wendigo Mane (x8)
step
    >>Loot the crate
.goto Dun Morogh,44.1,56.9
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #label BearFur
.goto Dun Morogh,40.6,62.6,30,0
.goto Dun Morogh,40.682,65.130
.target Hegnar Rumbleshot
>>Talk to |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    .turnin 5541 >> Turn in Ammo for Rumbleshot
    .vendor >> Vendor and repair
step
    #label BoarMeat
step << !Paladin !Warrior !Rogue
    .xp 7 >> Grind to 7
step << Paladin/Warrior/Rogue
    .goto Dun Morogh,42.5,66.3,40,0
    .goto Dun Morogh,45.1,65.4,40,0
    .goto Dun Morogh,49.4,62.3,40,0
    .goto Dun Morogh,50.8,59.3,40,0
    .goto Dun Morogh,48.0,59.2,40,0
    .goto Dun Morogh,48.2,55.6,40,0
    .goto Dun Morogh,51.4,50.4,40,0
    .goto Dun Morogh,42.5,66.3,40,0
    .goto Dun Morogh,45.1,65.4,40,0
    .goto Dun Morogh,49.4,62.3,40,0
    .goto Dun Morogh,50.8,59.3,40,0
    .goto Dun Morogh,48.0,59.2,40,0
    .goto Dun Morogh,48.2,55.6,40,0
    .goto Dun Morogh,51.4,50.4,40,0
    >>Kill Bears and Boars. Loot them for Fur and Meat
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,49.426,48.410
>>Talk to |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .turnin 317 >> Turn in Stocking Jetsteam
.target Pilot Bellowfiz
    .accept 318 >> Accept Evershine
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,50.084,49.420
    .collect 2901,1 >> Buy a Mining Pick
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,50.2,50.4
.train 2580 >>Go inside the house. Train Mining, cast Find Minerals
step << Warrior/Paladin/Rogue
    .isOnQuest 313
    .goto Dun Morogh,49.622,48.612
.target Pilot Stonegear
>>Talk to |cRXP_FRIENDLY_Pilot Stonegear|r
    .turnin 313 >> Turn in The Grizzled Den
step << Warrior/Paladin/Rogue
    .xp 7 >> Grind to 7
step << Gnome Warrior/Human Warrior/NightElf Warrior
    .goto Dun Morogh,45.3,52.2
    .money <0.0509
    >>Buy Gladius and equip it
    .collect 2488,1 --Collect Gladius
step << Dwarf Warrior
    .money <0.0460
    .goto Dun Morogh,45.3,52.2
    >>Buy Large Axe and equip it
    .collect 2491,1 --Collect Large Axe
step << Paladin
    .money <0.0666
    .goto Dun Morogh,45.3,52.2
    .vendor >>Buy Wooden Mallet and equip it
    .collect 2493,1 --Collect Wooden Mallet
step << Paladin/Warrior/Rogue
    .goto Dun Morogh,47.4,52.5
    .vendor >> Buy as much level 5 food as you can afford.
step << Paladin/Warrior/Rogue
    >>Grind some mobs en route
.goto Dun Morogh,43.0,47.4,50,0
    .goto Dun Morogh,39.6,48.9,50,0
    .goto Dun Morogh,34.6,51.7
.target Tundra MacGrann
>>Talk to |cRXP_FRIENDLY_Tundra MacGrann|r
    .accept 312 >> Accept Tundra MacGrann's Stolen Stash
step << !Paladin !Warrior !Rogue
>>Grind some mobs en route
    .goto Dun Morogh,35.2,56.4,50,0
    .goto Dun Morogh,36.0,52.0,50,0
    .goto Dun Morogh,34.6,51.7
.target Tundra MacGrann
>>Talk to |cRXP_FRIENDLY_Tundra MacGrann|r
    .accept 312 >> Accept Tundra MacGrann's Stolen Stash
step << !Mage !Priest
.goto Dun Morogh,30.5,46.0
    .vendor >> vendor trash
step << Priest/Mage/Shaman/Druid
.goto Dun Morogh,30.5,46.0
    .vendor >> Vendor. Buy 10 level 5 drink
step
.goto Dun Morogh,30.2,45.8
>>Talk to |cRXP_FRIENDLY_Rejold Barleybrew|r
    .turnin 318 >> Turn in Evershine
.target Rejold Barleybrew
    .accept 319 >> Accept A Favor for Evershine
    .accept 315 >> Accept The Perfect Stout
step
    .goto Dun Morogh,30.186,45.531
.target Marleth Barleybrew
>>Talk to |cRXP_FRIENDLY_Marleth Barleybrew|r
    .accept 310 >> Accept Bitter Rivals
step
#label BoarRibs2
.goto Dun Morogh,31.5,38.9,40,0
    .goto Dun Morogh,28.3,39.9,40,0
    .goto Dun Morogh,28.7,43.7,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,30.0,51.8,40,0
.goto Dun Morogh,31.5,38.9,40,0
    .goto Dun Morogh,28.3,39.9,40,0
    .goto Dun Morogh,28.7,43.7,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,30.0,51.8,40,0
    >> Kill Bears, Boars and Leopards
.complete 319,1 --Kill Ice Claw Bear (x6)
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .complete 319,3 --Kill Snow Leopard (x8)
step
>> Finish off getting the Boar Ribs
.complete 384,1 --Collect Crag Boar Rib (x6)
step
.goto Dun Morogh,30.189,45.725
>>Talk to |cRXP_FRIENDLY_Rejold Barleybrew|r
    .turnin 319 >> Turn in A Favor for Evershine
.target Rejold Barleybrew
    .accept 320 >> Accept Return to Bellowfiz
step
.xp 7+3735 >>Grind until 3735+/4500xp
.goto Dun Morogh,31.5,38.9,40,0
    .goto Dun Morogh,28.3,39.9,40,0
    .goto Dun Morogh,28.7,43.7,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,30.0,51.8,40,0
.goto Dun Morogh,31.5,38.9,40,0
    .goto Dun Morogh,28.3,39.9,40,0
    .goto Dun Morogh,28.7,43.7,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,30.0,51.8,40,0
step
    .goto Dun Morogh,30.3,37.5,50 >> Run to here
step
    .isQuestTurnedIn 384
    .xp 7+4360 >>Grind until 4360+/4500xp, then go to here
    .goto Dun Morogh,30.3,37.5,50
step
    .goto Dun Morogh,30.9,33.1,15 >>Run up the mountain north
step
    .goto Dun Morogh,32.4,29.1,15 >>Follow it up to here
step
.goto Dun Morogh,33.0,27.2,15,0
    .goto Dun Morogh,33.0,25.2,15,0
    .goto Wetlands,11.6,43.4,60,0
.deathskip >>Keep running straight north, drop down and die, then respawn
step
.goto Wetlands,12.7,46.7,30 >> Swim to shore
step
.goto Wetlands,9.5,59.7
    .fp Menethil >> Get the Menethil Harbor flight path
step
    #completewith next
.hs >> Hearth to Kharanos
step
.goto Dun Morogh,47.4,52.5
>> Buy a Rhapsody Malt and Thunder Ale from Belm
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1 --Collect Thunder Ale (x1)
step
    .isOnQuest 310
    .goto Dun Morogh,47.6,52.4,10 >>Go in the room behind the innkeeper
step
    >>Go downstairs, then talk to Jarven, and give him the Thunder Ale
    >>Wait for the barrel mouseover to become "unguarded", then handin
    .turnin 310 >> Turn in Bitter Rivals
    .accept 311 >> Accept Return to Marleth
step
.goto Dun Morogh,46.8,52.4
.target Ragnar Thunderbrew
>>Talk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r
    .turnin 384 >> Turn in Beer Basted Boar Ribs
     >>Sell the recipe when you next vendor
step
    .xp 8 >> Grind to 8
step << Rogue
    .goto Dun Morogh,47.6,52.6
    .train 6760 >>Train Eviscerate r2
    .train 5277 >>Train Evasion
step << Mage
    .goto Dun Morogh,47.5,52.1
    .train 205 >>Train Frostbolt r2
.train 118 >>Train Polymorph
step << Paladin
    .train 853 >>Train Hammer of Justice
    .train 1152 >>Train Purify
    .train 3127 >>Train Parry
step << Priest
    .goto Dun Morogh,47.3,52.2
    .train 139 >>Train Renew
step << Warrior
.goto Dun Morogh,47.4,52.6
    .train 284 >>Train Heroic Strike r2
    .train 1715 >>Train Hamstring
step << Warrior/Rogue/Paladin tbc
    .istrained 3273
.money <0.0095
    .goto Dun Morogh,47.2,52.6
    .train 3273 >> Train First Aid
step << Paladin
    .goto Dun Morogh,45.3,52.2
    .vendor >> Buy Wooden Mallet. Vendor and Repair Sell any bags (if you found them) if you need money. or weapon if it makes you able to buy it.
    .collect 2493,1 --Collect Wooden Mallet
step << Paladin/Warrior/Rogue
.goto Dun Morogh,47.4,52.5
    .vendor >> Buy as much level 5 food as you can from the innkeeper
step << Priest/Mage/Shaman/Druid
.goto Dun Morogh,47.4,52.5
    .vendor >> Buy as much level 5 drink as you can from the innkeeper
step
    .goto Dun Morogh,46.726,53.826
.target Senir Whitebeard
>>Talk to |cRXP_FRIENDLY_Senir Whitebeard|r
    .accept 287 >> Accept Frostmane Hold
step
#xprate <1.5
    .goto Dun Morogh,49.622,48.612
.target Pilot Stonegear
>>Talk to |cRXP_FRIENDLY_Pilot Stonegear|r
    .turnin 313 >> Turn in The Grizzled Den
step << !Rogue
    .goto Dun Morogh,49.426,48.410
.target Pilot Bellowfiz
>>Talk to |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .turnin 320 >> Turn in Return to Bellowfiz
step << Rogue
    .goto Dun Morogh,49.426,48.410
    >>Choose the Camping Knife. Save it for later
.target Pilot Bellowfiz
>>Talk to |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .turnin 320 >> Turn in Return to Bellowfiz
step
#xprate <1.5
    .goto Dun Morogh,45.8,49.4
.target Razzle Sprysprocket
>>Talk to |cRXP_FRIENDLY_Razzle Sprysprocket|r
    .accept 412 >> Accept Operation Recombobulation
step
.goto Dun Morogh,43.1,45.0,20,0
.goto Dun Morogh,42.1,45.4,20 >> Run up the ramp to Shimmerweed
step
    .goto Dun Morogh,40.9,45.3,30,0
    .goto Dun Morogh,41.5,43.6,30,0
    .goto Dun Morogh,39.7,40.0,30,0
    .goto Dun Morogh,42.1,34.3,30,0
    >>Clear mobs in this area. Be careful if you need to clear the middle camp. You can pull the mobs in the huts and line of sight (LoS) them behind the huts if you need 2 more mobs. If you get unlucky, run to the other area
    .complete 315,1 --Collect Shimmerweed (x6)
step
.goto Dun Morogh,38.4,49.9,40 >> Run toward Old Icebeard
step << !Mage
    .goto Dun Morogh,38.5,54.0
    >>Wait until Old Icebeard leaves the cave so you can sneak in and loot the chest, or do this
        .link https://www.youtube.com/watch?v=o55Y3LjgKoE >>CLICK HERE
    .complete 312,1 --MacGrann's Dried Meats (1)
step << Mage
    >> Polymorph Old Icebeard, then loot the meats
.goto Dun Morogh,38.5,53.9
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    .goto Dun Morogh,34.6,51.7
.target Tundra MacGrann
>>Talk to |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >> Turn in Tundra MacGrann's Stolen Stash
step << Mage/Priest/Druid/Shaman
.goto Dun Morogh,30.4,45.8
.vendor >> Buy as much level 5 drink as you can afford
step << Warrior/Paladin/Rogue
.goto Dun Morogh,30.4,45.8
.vendor >> vendor trash
step
    .goto Dun Morogh,30.189,45.725
>>Talk to |cRXP_FRIENDLY_Rejold Barleybrew|r
    .turnin 315 >> Turn in The Perfect Stout
.target Rejold Barleybrew
    .accept 413 >> Accept Shimmer Stout
step
    .goto Dun Morogh,30.186,45.531
.target Marleth Barleybrew
>>Talk to |cRXP_FRIENDLY_Marleth Barleybrew|r
    .turnin 311 >> Turn in Return to Marleth
step
#xprate <1.5
    .goto Dun Morogh,27.2,43.0,40,0
    .goto Dun Morogh,24.8,39.3,40,0
    .goto Dun Morogh,25.6,43.4,40,0
    .goto Dun Morogh,24.3,44.0,40,0
    .goto Dun Morogh,25.4,45.4,40,0
    >>Kill Leper Gnomes. Loot them for Gears and Cogs
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
step
    .isOnQuest 287
    .goto Dun Morogh,24.5,50.8,30 >>Enter the cave
step
    .goto Dun Morogh,22.1,50.3,40,0
    .goto Dun Morogh,21.3,52.9,40,0
    >>Kill Headhunters inside the cave
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    step
    .goto Dun Morogh,23.4,51.5,15 >>Go back up the cave
step
    >>Jump down
    .goto Dun Morogh,23.0,52.2
    .complete 287,2 --Fully explore Frostmane Hold
step
    .goto Dun Morogh,23.0,52.2
    .xp 9 >> Grind to level 9
step
    .isOnQuest 287
    .goto Dun Morogh,46.726,53.826
.deathskip >> Die and respawn at the Spirit Healer
step
    .goto Dun Morogh,46.726,53.826
>>Talk to |cRXP_FRIENDLY_Senir Whitebeard|r
    .turnin 287 >> Turn in Frostmane Hold
.target Senir Whitebeard
    .accept 291 >> Accept The Reports
step
#xprate <1.5
    .goto Dun Morogh,45.8,49.4
.target Razzle Sprysprocket
>>Talk to |cRXP_FRIENDLY_Razzle Sprysprocket|r
    .turnin 412 >> Turn in Operation Recombobulation
step << Warrior tbc
    #sticky
    #completewith next
.money >0.0950
    +Start grinding until you have 9s 50c of vendorables, then run into Ironforge
step << Warrior tbc
    .goto Dun Morogh,53.5,34.9,30 >> Run into Ironforge
step << Warrior tbc
.goto Ironforge,61.2,89.5
    .train 199 >>Train 2h Maces
step << Warrior tbc
    #sticky
    #completewith next
.goto Dun Morogh,53.5,34.9,100 >>Run out of Ironforge
step
    .goto Dun Morogh,60.1,52.6,50,0
.goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>Talk to |cRXP_FRIENDLY_Rudra Amberstill|r
    .accept 314 >> Accept Protecting the Herd
step
    #sticky
    #completewith next
    .goto Dun Morogh,62.3,50.3,12,0
    .goto Dun Morogh,62.2,49.4,8 >>Run up this part of the mountain
step
    >>Kill Vagash. Loot him for his Fang
.goto Dun Morogh,62.6,46.1
    .complete 314,1 --Collect Fang of Vagash (x)
step
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>Talk to |cRXP_FRIENDLY_Rudra Amberstill|r
    .turnin 314 >> Turn in Protecting the Herd
step
    >>Grind a little en route
.goto Dun Morogh,68.6,54.7
    .vendor >>vendor trash
step
    .goto Dun Morogh,68.7,56.0
.target Senator Mehr Stonehallow
>>Talk to |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .accept 433 >> Accept The Public Servant
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Talk to |cRXP_FRIENDLY_Foreman Stonebrow|r
    .accept 432 >> Accept Those Blasted Troggs!
step
.goto Dun Morogh,70.6,56.6,30,0
.goto Dun Morogh,70.8,53.3,30,0
.goto Dun Morogh,71.9,50.7,30,0
.goto Dun Morogh,72.9,53.1,30,0
.goto Dun Morogh,70.6,56.6,30,0
.goto Dun Morogh,70.8,53.3,30,0
.goto Dun Morogh,71.9,50.7,30,0
.goto Dun Morogh,72.9,53.1,30,0
    >>Kill Troggs in the cave
.complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Talk to |cRXP_FRIENDLY_Foreman Stonebrow|r
    .turnin 432 >> Turn in Those Blasted Troggs!
step
    .goto Dun Morogh,68.7,56.0
.target Senator Mehr Stonehallow
>>Talk to |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .turnin 433 >> Turn in The Public Servant
step
.goto Dun Morogh,67.1,59.7,40,0
.goto Dun Morogh,70.7,58.2,40,0
.goto Dun Morogh,71.0,53.9,40,0
.xp 10 >> Grind to 10 at the troggs
step << !Warrior !Rogue
    .goto Dun Morogh,68.4,54.5
    .vendor >> Buy x10 level 5 food and drink
step << Warrior/Rogue
    .goto Dun Morogh,68.4,54.5
    .vendor >> Buy x10 level 5 food
step << Priest tbc/Rogue tbc
    .goto Dun Morogh,47.1,55.1,60 >> Die and respawn at the Spirit Healer, or run back
step << Priest tbc
    #sticky
#completewith next
.goto Dun Morogh,47.3,52.2
    .train 2006 >>If you're going to be playing with other players, Train Resurrection
step << !NightElf !Draenei Priest tbc
    .goto Dun Morogh,47.3,52.2
.target Laurna Morninglight
>>Talk to |cRXP_FRIENDLY_Laurna Morninglight|r
    .accept 5636 >> Accept Desperate Prayer
    .train 2053 >>Train Lesser Heal r3
    .train 8092 >>Train Mind Blast
.train 594 >>Train Shadow Word: Pain r2
    .train 13908 >>Train Desperate Prayer
step << !NightElf !Draenei Priest tbc
    .goto Dun Morogh,47.3,52.2
    .train 2053 >>Train Lesser Heal r3
    .train 8092 >>Train Mind Blast
.train 594 >>Train Shadow Word: Pain r2
step << Rogue tbc
    .goto Dun Morogh,47.6,52.5
.target Hogral Bakkan
>>Talk to |cRXP_FRIENDLY_Hogral Bakkan|r inside in the backroom
    .accept 2218 >> Accept Road to Salvation
    .train 2983 >>Train Sprint
    .train 674 >>Train Dual Wield
    .train 6770 >>Train Sap
    .train 1784 >>Train Stealth
    >>Equip Camping Knife
step
    .goto Dun Morogh,81.2,42.7,15 >>Grind a bit en route, go inside the tunnel
step
    .goto Dun Morogh,83.8,39.2
.target Pilot Hammerfoot
>>Talk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .accept 419 >> Accept The Lost Pilot
step
    >>Grind en route
.goto Dun Morogh,79.7,36.2
    .turnin 419 >> Turn in The Lost Pilot
    .accept 417 >> Accept A Pilot's Revenge
step
    >>Kill Mangeclaw. Loot him for his Claw
.goto Dun Morogh,80.0,36.4
    .complete 417,1 --Collect Mangy Claw (x1)
step
    .goto Dun Morogh,83.892,39.188
.target Pilot Hammerfoot
>>Talk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .turnin 417 >> Turn in A Pilot's Revenge
step
    .isOnQuest 413
    .goto Dun Morogh,81.2,42.7,15 >>Go back through the tunnel
step
    .goto Dun Morogh,79.6,50.7,50,0
.goto Dun Morogh,82.3,53.5,25,0
    .goto Dun Morogh,86.278,48.812
    .turnin -413 >> Turn in Shimmer Stout
step
    .isQuestTurnedIn 413
    .goto Dun Morogh,86.278,48.812
.target Mountaineer Barleybrew
>>Talk to |cRXP_FRIENDLY_Mountaineer Barleybrew|r
    .accept 414 >> Accept Stout to Kadrell
step
    .isOnQuest 414
.goto Dun Morogh,86.2,51.3,20 >>Go through the tunnel
step << Mage/Rogue
    .goto Loch Modan,22.071,73.127
.target Mountaineer Cobbleflint
>>Talk to |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .accept 224 >> Accept In Defense of the King's Lands
step << Mage/Rogue
    .goto Loch Modan,22.6,75.4,30,0
.goto Loch Modan,23.233,73.675
    >>Go into the bunker
.target Captain Rugelfuss
>>Talk to |cRXP_FRIENDLY_Captain Rugelfuss|r
    .accept 267 >> Accept The Trogg Threat
step << Mage/Rogue
    .goto Loch Modan,30.0,68.4,30,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    >>Kill Stonesplinter Troggs. Loot them for their Teeth
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
step << Mage/Rogue
    .goto Loch Modan,29.9,68.2,30,0
    .goto Loch Modan,22.2,73.3
.target Mountaineer Cobbleflint
>>Talk to |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .turnin 224 >> Turn in In Defense of the King's Lands
step << Mage/Rogue
    .goto Loch Modan,23.233,73.675
.target Captain Rugelfuss
>>Talk to |cRXP_FRIENDLY_Captain Rugelfuss|r
    .turnin 267 >> Turn in The Trogg Threat
step
    #completewith next
    .goto Loch Modan,35.3,46.9,150 >>Run to Thelsamar
step << Mage
    .goto Loch Modan,35.5,48.4
    .vendor >> Buy 40 level 5 milk
step << Mage
#xprate <1.5
    .goto Loch Modan,34.828,49.283
.target Vidra Hearthstove
>>Talk to |cRXP_FRIENDLY_Vidra Hearthstove|r
    .accept 418 >> Accept Thelsamar Blood Sausages
step << Rogue tbc
    .goto Loch Modan,35.5,48.4
    .home >> Set your Hearthstone to Thelsamar
step << Mage
    .goto Loch Modan,34.8,48.6
    .vendor >> Buy max 3 6 slot bags
step << !Mage/wotlk
#xprate >1.499 << Mage
    .goto Loch Modan,32.6,49.9,40,0
    .goto Loch Modan,37.2,46.1,40,0
    .goto Loch Modan,36.7,41.6,40,0
    .goto Loch Modan,32.6,49.9,40,0
    .goto Loch Modan,37.2,46.1,40,0
    .goto Loch Modan,36.7,41.6,40,0
    >>Find Kadrell, he patrols along the main road
>>Talk to |cRXP_FRIENDLY_Mountaineer Kadrell|r
    .turnin 414 >> Turn in Stout to Kadrell
.target Mountaineer Kadrell
    .accept 1339 >> Accept Mountaineer Stormpike's Task << wotlk/Rogue
step << Mage
#xprate <1.5
    .goto Loch Modan,32.6,49.9,40,0
    .goto Loch Modan,37.2,46.1,40,0
    .goto Loch Modan,36.7,41.6,40,0
    .goto Loch Modan,32.6,49.9,40,0
    .goto Loch Modan,37.2,46.1,40,0
    .goto Loch Modan,36.7,41.6,40,0
    >>Find Kadrell, he patrols along the main road
>>Talk to |cRXP_FRIENDLY_Mountaineer Kadrell|r
    .turnin 414 >> Turn in Stout to Kadrell
.target Mountaineer Kadrell
    .accept 416 >> Accept Rat Catching
    .accept 1339 >> Accept Mountaineer Stormpike's Task
    --Mage needs 12 for r3 fireball
step << Gnome/Dwarf
    >>Go inside the building, then go downstairs. Talk to Brock
    .goto Loch Modan,37.2,46.9,15,0
.goto Loch Modan,37.019,47.806
.target Brock Stoneseeker
>>Talk to |cRXP_FRIENDLY_Brock Stoneseeker|r
    .accept 6387 >> Accept Honor Students
step << Mage
#xprate <1.5
    #sticky
    #completewith ThelsamarFood
    >>Kill Spiders. Loot them for Spider Ichor
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step << Mage
#xprate <1.5
    #sticky
    #completewith ThelsamarFood
    >>Kill Bears. Loot them for Bear Meat
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
step << Mage
#xprate <1.5
    #sticky
    #completewith ThelsamarFood
    >>Kill Boars. Kill them for Boar Intestines
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step << Mage
#xprate <1.5
    #label ThelsamarFood
    .goto Loch Modan,23.3,17.9,30 >>Run to the north bunker. Grind some mobs for Boar Intestines, Bear Meat and Spider Ichor en route
step << Rogue
#xprate <1.5
.goto Loch Modan,23.3,17.9,30 >>Run to the north bunker
step << Rogue/Mage
    .goto Loch Modan,24.1,18.2
    .vendor >> vendor trash, repair
step << Mage
#xprate <1.5
    >>Upstairs
    .goto Loch Modan,24.7,18.3
>>Talk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 1339 >> Turn in Mountaineer Stormpike's Task
.target Mountaineer Stormpike
    .accept 307 >> Accept Filthy Paws
step << Rogue/wotlk
#xprate >1.499 << Mage
    >>Upstairs
    .goto Loch Modan,24.7,18.3
>>Talk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 1339 >> Turn in Mountaineer Stormpike's Task
.target Mountaineer Stormpike
    .accept 1338 >> Accept Stormpike's Order
step << Mage
#xprate <1.5
    #completewith next
    .goto Loch Modan,35.5,18.2,40 >>Go to the entrance of the cave whilst killing rats
step << Mage
#xprate <1.5
.goto Loch Modan,35.5,19.9,12,0
.goto Loch Modan,36.4,20.7,12,0
.goto Loch Modan,35.3,22.0,12,0
.goto Loch Modan,35.9,22.1,12,0
.goto Loch Modan,36.3,24.7,12,0
.goto Loch Modan,35.7,24.3,12,0
.goto Loch Modan,34.9,24.9,12,0
.goto Loch Modan,35.7,24.3,12,0
.goto Loch Modan,36.3,24.7,12,0
.goto Loch Modan,35.9,22.1,12,0
.goto Loch Modan,35.3,22.0,12,0
.goto Loch Modan,36.4,20.7,12,0
.goto Loch Modan,35.5,19.9,12,0
    >>Collect the crates you find in the cave. Be careful because this is difficult at level 11, and the geomancers flame ward (Fire immunity)
    .complete 307,1 --Collect Miners' Gear (x4)
step << Mage
#xprate <1.5
    #label Kobolds
    >> Kill Kobolds. Loot them for their Ears
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
step << Mage
#xprate <1.5
    #sticky
    #completewith Thelsamar3
    >>Kill Spiders in the zone for Thelsamar Blood Sausages
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step << Mage
#xprate <1.5
    #sticky
    #completewith Thelsamar3
    >>Kill Bears in the zone for Thelsamar Blood Sausages
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
step << Mage
#xprate <1.5
    #sticky
    #completewith Thelsamar3
    >>Kill Boars in the zone for Thelsamar Blood Sausages
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step << Mage
#xprate <1.5
    #label Thelsamar3
    .goto Loch Modan,23.3,17.9,40 >>Run back to the bunker, grinding en route
step << Mage
#xprate <1.5
    .goto Loch Modan,24.7,18.3
>>Talk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 307 >> Turn in Filthy Paws
    .turnin 1339 >> Turn in Mountaineer Stormpike's Task
.target Mountaineer Stormpike
    .accept 1338 >> Accept Stormpike's Order << wotlk
step << Mage
#xprate <1.5
    #sticky
    #label Meat9
    .goto Loch Modan,26.9,10.7,40,0
    .goto Loch Modan,30.9,10.6,40,0
    .goto Loch Modan,28.6,15.4,40,0
    .goto Loch Modan,30.5,26.6,40,0
    .goto Loch Modan,33.4,30.3,40,0
    .goto Loch Modan,39.4,33.3,40,0
    .goto Loch Modan,26.9,10.7,40,0
    .goto Loch Modan,30.9,10.6,40,0
    .goto Loch Modan,28.6,15.4,40,0
    .goto Loch Modan,30.5,26.6,40,0
    .goto Loch Modan,33.4,30.3,40,0
    .goto Loch Modan,39.4,33.3,40,0
.goto Loch Modan,26.9,10.7
    >>Kill Bears. Loot them for Meat
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
step << Mage
#xprate <1.5
    #sticky
    #label Ichor9
    .goto Loch Modan,31.9,16.4,40,0
    .goto Loch Modan,28.0,20.6,40,0
    .goto Loch Modan,33.8,40.5,40,0
    .goto Loch Modan,36.2,30.9,40,0
    .goto Loch Modan,39.0,32.1,40,0
    .goto Loch Modan,31.9,16.4,40,0
    .goto Loch Modan,28.0,20.6,40,0
    .goto Loch Modan,33.8,40.5,40,0
    .goto Loch Modan,36.2,30.9,40,0
    .goto Loch Modan,39.0,32.1,40,0
    .goto Loch Modan,31.9,16.4
    >>Kill Spiders. Loot them for Ichor
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step << Mage
#xprate <1.5
    #sticky
    #label Intestines9
    .goto Loch Modan,38.0,34.9,40,0
    .goto Loch Modan,37.1,39.8,40,0
    .goto Loch Modan,29.8,35.9,40,0
    .goto Loch Modan,27.7,25.3,40,0
    .goto Loch Modan,28.6,22.6,40,0
    .goto Loch Modan,38.0,34.9,40,0
    .goto Loch Modan,37.1,39.8,40,0
    .goto Loch Modan,29.8,35.9,40,0
    .goto Loch Modan,27.7,25.3,40,0
    .goto Loch Modan,28.6,22.6,40,0
    .goto Loch Modan,38.0,34.9
    >>Kill Boars. Loot them for Intestines
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step << Mage
#xprate <1.5
    #requires Meat9
    .zone Loch Modan >> .
step << Mage
#xprate <1.5
    #requires Ichor9
    .zone Loch Modan >> .
step << Mage
#xprate <1.5
    #requires Intestines9
    .zone Loch Modan >> .
step << Mage
#xprate <1.5
    .goto Loch Modan,32.6,49.9,40,0
    .goto Loch Modan,37.2,46.1,40,0
    .goto Loch Modan,36.7,41.6,40,0
    .goto Loch Modan,32.6,49.9,40,0
    .goto Loch Modan,37.2,46.1,40,0
    .goto Loch Modan,36.7,41.6,40,0
    >>Find Kadrell, he patrols along the main road
    .goto Loch Modan,36.9,46.1
.target Mountaineer Kadrell
>>Talk to |cRXP_FRIENDLY_Mountaineer Kadrell|r
    .turnin 416 >> Turn in Rat Catching
step << Mage
#xprate <1.5
    .goto Loch Modan,34.828,49.283
.target Vidra Hearthstove
>>Talk to |cRXP_FRIENDLY_Vidra Hearthstove|r
    .turnin 418 >> Turn in Thelsamar Blood Sausages
step << Mage
    .xp 12-420 <<tbc
    .xp 12-2310 << wotlk
step << Rogue/wotlk
    #xprate >1.499 << Mage
    .deathskip >>Die and respawn at Thelsamar
step << Rogue
#xprate <1.5
    #sticky
    #completewith next
    +Grind mobs until you have at least 33 Silver worth of money and vendorables
step << Gnome/Dwarf
    .goto Loch Modan,33.938,50.954
    .fp Thelsamar >> Get the Thelsamar flight path
>>Talk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .turnin 6387 >> Turn in Honor Students
.target Thorgrum Borrelson
    .accept 6391 >> Accept Ride to Ironforge
    .fly Ironforge >> Fly to Ironforge
step << !Gnome !Dwarf
    .goto Loch Modan,33.938,50.954
    .fp Thelsamar >> Get the Thelsamar flight path
    .fly Ironforge >> Fly to Ironforge
step << Gnome/Dwarf
    .goto Ironforge,51.521,26.311
>>Talk to |cRXP_FRIENDLY_Golnir Bouldertoe|r
    .turnin 6391 >> Turn in Ride to Ironforge
.target Golnir Bouldertoe
    .accept 6388 >> Accept Gryth Thurden
step << Dwarf/Gnome
    >>do NOT fly anywhere
.goto Ironforge,55.501,47.742
>>Talk to |cRXP_FRIENDLY_Gryth Thurden|r
    .turnin 6388 >> Turn in Gryth Thurden
.target Gryth Thurden
    .accept 6392 >> Accept Return to Brock << Rogue tbc
step << Paladin
    .goto Ironforge,23.131,6.143
    .trainer >>Visit your class trainer and train spells
step << Mage
    .goto Ironforge,27.2,8.6
    .train 145 >>Train Fireball r3
    .train 604 >>Train Dampen Magic
    .train 7300 >>Train Frost Armor r2
    .train 122 >>Train Frost Nova
    .train 5504 >>Train Conjure Water r1
    .train 5505 >>Train Conjure Water r2
step
    .goto Ironforge,39.550,57.490
.target Senator Barin Redstone
>>Talk to |cRXP_FRIENDLY_Senator Barin Redstone|r
    .turnin 291 >> Turn in The Reports
step << Warrior/Rogue
    .goto Ironforge,62.0,88.8
    .collect 25873,1 >> Buy a Keen Throwing Knife from Brenwyn Wintersteel. Equip it.
step << Warrior
    #sticky
    .goto Ironforge,65.9,88.4
    .train 2687 >>Train Bloodrage
    .train 6546 >>Train Rend r2
step << Warrior
    .goto Ironforge,70.9,89.9
    >>Speak to Muren Stormpike
.target Muren Stormpike
>>Talk to |cRXP_FRIENDLY_Muren Stormpike|r
    .accept 1678 >>Accept Vejrek
step << Warrior
    >>Head back to Dun Morogh
    .goto Dun Morogh,27.8,58.0
    .complete 1678,1 --Vejrek's Head (1)
step << Warrior
    .goto Ironforge,70.767,90.274
>>Talk to |cRXP_FRIENDLY_Muren Stormpike|r
    .turnin 1678 >>Turn in Vejrek
.target Muren Stormpike
    .accept 1680 >>Accept Tormus Deepforge
step << Warrior
    .goto Ironforge,48.642,42.482
.target Tormus Deepforge
>>Talk to |cRXP_FRIENDLY_Tormus Deepforge|r
    .turnin 1680 >>Turn in Tormus Deepforge
step << Rogue/wotlk
.goto Ironforge,77.0,51.0,30 >>Enter the Deeprun Tram
step << Rogue/wotlk
.target Monty
>>Talk to |cRXP_FRIENDLY_Monty|r
    .accept 6661 >> Accept Deeprun Rat Roundup
step << Rogue/wotlk
    .use 17117>>Use your flute on the rats scattered around
    .complete 6661,1 --Rats Captured (x5)
step << Rogue/wotlk
>>Talk to |cRXP_FRIENDLY_Monty|r
    .turnin 6661 >> Turn in Deeprun Rat Roundup
.target Monty
    .accept 6662 >> Accept Me Brother, Nipsy << Rogue/wotlk
step << !Rogue tbc
    .goto Ironforge,55.501,47.742
    >>Go back to Ironforge
    .fly Menethil >> Fly to Menethil
step << Rogue/wotlk
     >> Ride to the other side of the tram and turn in
.target Nipsy
>>Talk to |cRXP_FRIENDLY_Nipsy|r
    .turnin 6662 >> Turn in Me Brother, Nipsy
step << Rogue/wotlk
    .goto StormwindClassic,58.1,16.5
.target Furen Longbeard
>>Talk to |cRXP_FRIENDLY_Furen Longbeard|r
    .turnin 1338 >> Turn in Stormpike's Order
    .isOnQuest 1338
step << Rogue
    .goto StormwindClassic,57.1,57.7
    .train 201 >>Train 1h Swords
step << Rogue
    .goto StormwindClassic,57.6,57.1
    .vendor >> Buy a Cutlass from Gunther and equip it
step << Rogue tbc
    #sticky
    #completewith next
.hs >> Hearth to Thelsamar
step << !NightElf Rogue tbc
    .goto Loch Modan,37.019,47.806
.target Brock Stoneseeker
>>Talk to |cRXP_FRIENDLY_Brock Stoneseeker|r
.turnin 6392 >> Turn in Return to Brock
step << Rogue tbc
    .goto Ironforge,55.501,47.742
    .fly Menethil >> Fly to Menethil
step << Gnome/Dwarf
    .abandon 6392 >> Abandon Return to Brock
step << tbc
    .money <0.076
    .goto Wetlands,10.4,56.0,15,0
.goto Wetlands,10.1,56.9,15,0
.goto Wetlands,10.6,57.2,15,0
.goto Wetlands,10.7,56.8
    .vendor >> If you have 7.6s, Check for Bronze Tube from Neal Allen and buy it if it's there
    .bronzetube
step << tbc
    .money <0.0385
.goto Wetlands,8.1,56.3
    .vendor >> Check Dewin for Heal Potions, buy down to 1s
step << tbc
    #sticky
#completewith Darkshore1
+Wait here for the boat
.goto Wetlands,4.7,57.3
step << tbc
    #label Darkshore1
    .zone Darkshore >>Get onto the boat when it comes. Take it to Darkshore
step << Warlock wotlk/Rogue wotlk
    #xprate <1.5
    .goto StormwindClassic,52.61,65.71
    .home >> Set your Hearthstone to Stormwind City
step << wotlk
    .goto StormwindNew,21.8,56.2
    .zone Darkshore >> Head to the Stormwind Harbor and take the boat to Darkshore
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance Warlock
#name 1-12 Dun Morogh
#version 1
#group RestedXP Alliance 1-20
#defaultfor Gnome Warlock
#next 12-14 Loch Modan Gnome;11-14 Darkshore
step << !Gnome !Dwarf
    #sticky
    #completewith next
.goto Dun Morogh,29.927,71.201
    +You have selected a guide meant for Gnomes and Dwarves. You should choose the same starter zone that you start in
step
    >>Delete your Hearthstone << tbc
    .goto Dun Morogh,29.93,71.20 << tbc
    .goto Dun Morogh,29.87,71.87 << wotlk
.target Sten Stoutarm
>>Talk to |cRXP_FRIENDLY_Sten Stoutarm|r
    .accept 179 >> Accept Dwarven Outfitters
step << tbc
    #sticky
    #completewith next
    .goto Dun Morogh,28.6,72.2,20,0
    +Kill Wolves for 10c+ of vendor trash, then enter the building
step << tbc
    .goto Dun Morogh,28.8,69.2,20 >>Enter the building
step << tbc
    .goto Dun Morogh,28.8,66.2
    .vendor >> Talk to the Demon Book vendor, vendor trash
step << tbc
    .goto Dun Morogh,28.6,66.1
    .train 348 >>Train Immolate
.target Alamar Grimm
>>Talk to |cRXP_FRIENDLY_Alamar Grimm|r
    .accept 1599 >> Accept Beginnings
step
    >>Kill Wolves. Loot them for Meat
.goto Dun Morogh,28.4,75.4
    .complete 179,1 --Collect Tough Wolf Meat (x8)
step
    .xp 2 >> Grind to 2
step << tbc
#sticky
#completewith next
    .goto Dun Morogh,26.8,79.8,30,0
    .goto Dun Morogh,30.1,82.4,30 >> Kill some Wolves en route, then watch this
.link https://www.youtube.com/watch?v=iUvGsRbIVp8 >> CLICK HERE
step << tbc
    >>Kill Frostmane Novices. Loot them for Feather Charms
.goto Dun Morogh,29.0,82.6,20,0
.goto Dun Morogh,29.0,81.2,30,0
.goto Dun Morogh,30.1,82.4,20,0
    .complete 1599,1 --Collect Feather Charm (x3)
step << tbc
    .goto Dun Morogh,29.5,69.8,100 >> Die and respawn at the Spirit Healer
step << tbc
    .goto Dun Morogh,28.6,66.1
.target Alamar Grimm
>>Talk to |cRXP_FRIENDLY_Alamar Grimm|r
    .turnin 1599 >> Turn in Beginnings
step
    .goto Dun Morogh,29.93,71.20 << tbc
    .goto Dun Morogh,29.87,71.87 << wotlk
>>Talk to |cRXP_FRIENDLY_Sten Stoutarm|r
    .turnin 179 >> Turn in Dwarven Outfitters
.target Sten Stoutarm
    .accept 233 >> Accept Coldridge Valley Mail Delivery
    .accept 3115 >> Accept Tainted Memorandum
step << tbc
>>Summon Imp, rebuff
.goto Dun Morogh,30.0,71.5
    .vendor >>vendor trash, buy 15 water. Grind for more money if you don't have enough
    .collect 159,15 --Collect Refreshing Spring Water (x15)
step
#xprate <1.5
    .goto Dun Morogh,29.7,71.2
.target Balir Frosthammer
>>Talk to |cRXP_FRIENDLY_Balir Frosthammer|r
    .accept 170 >> Accept A New Threat
step
#xprate <1.5
    #sticky
    #completewith Rockjaw
    >>Kill Normal Rockjaw Troggs that you see
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step
#xprate <1.5
    .goto Dun Morogh,26.9,72.7,30,0
    .goto Dun Morogh,25.1,72.1,30,0
    .goto Dun Morogh,26.9,72.7,30,0
    .goto Dun Morogh,25.1,72.1,30,0
    >>Kill Burly Rockjaw Troggs
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
step
    .goto Dun Morogh,22.601,71.433
>>Talk to |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 233 >> Turn in Coldridge Valley Mail Delivery
.target Talin Keeneye
    .accept 183 >> Accept The Boar Hunter
    .accept 234 >> Accept Coldridge Valley Mail Delivery
step
    .goto Dun Morogh,22.2,72.5,40,0
    .goto Dun Morogh,20.5,71.4,40,0
    .goto Dun Morogh,21.1,69.0,40,0
    .goto Dun Morogh,22.8,69.6,40,0
    .goto Dun Morogh,22.2,72.5,40,0
    .goto Dun Morogh,20.5,71.4,40,0
    .goto Dun Morogh,21.1,69.0,40,0
    .goto Dun Morogh,22.8,69.6,40,0
    >>Kill Boars in the area
    .complete 183,1 --Kill Small Crag Boar (x12)
step
    .goto Dun Morogh,22.601,71.433
.target Talin Keeneye
>>Talk to |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 183 >> Turn in The Boar Hunter
step
#label Rockjaw
    .goto Dun Morogh,25.076,75.713
>>Talk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 234 >> Turn in Coldridge Valley Mail Delivery
.target Grelin Whitebeard
    .accept 182 >> Accept The Troll Cave
step
#xprate <1.5
    #sticky
    #label Troggs
    .goto Dun Morogh,28.7,77.5
    >>Go up here if you're not done with troggs by now
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step
    .xp 4 >> Grind to 4
step
.goto Dun Morogh,25.0,76.0
.target Nori Pridedrift
>>Talk to |cRXP_FRIENDLY_Nori Pridedrift|r
    .accept 3364 >> Accept Scalding Mornbrew Delivery
>> Once accepted, a 5 minute timer will start. Relax and follow the guide
step << wotlk
    .hs >> Use your Hearthstone
step
    #sticky
    #completewith next
    #requires Troggs
    >>If you were too slow and failed the timed quest, go and pick it up again
    .goto Dun Morogh,25.0,76.0,0
.target Nori Pridedrift
>>Talk to |cRXP_FRIENDLY_Nori Pridedrift|r
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    .goto Dun Morogh,28.8,66.4
.target Durnan Furcutter
>>Talk to |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
step
    #requires Troggs
.goto Dun Morogh,28.8,66.4
>>Talk to |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
.target Durnan Furcutter
    .accept 3365 >> Accept Bring Back the Mug
    .vendor >>vendor trash
step
.goto Dun Morogh,28.6,66.1
    >>Go upstairs
    .train 688 >> Train Summon Imp << wotlk
    .train 172 >>Train Corruption
.target Alamar Grimm
>>Talk to |cRXP_FRIENDLY_Alamar Grimm|r
    .turnin 3115 >> Turn in Tainted Memorandum
step
#xprate <1.5
    .goto Dun Morogh,29.7,71.2
.target Balir Frosthammer
>>Talk to |cRXP_FRIENDLY_Balir Frosthammer|r
    .turnin 170 >> Turn in A New Threat
step << tbc
.goto Dun Morogh,30.0,71.5
    .vendor >>Vendor, buy x5 more water
step
    .goto Dun Morogh,26.3,79.2,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
>>Kill Frostmane Troll Whelps
.complete 182,1 --Kill Frostmane Troll Whelp (x14)
step
    .goto Dun Morogh,25.0,76.0
.target Nori Pridedrift
>>Talk to |cRXP_FRIENDLY_Nori Pridedrift|r
    .turnin 3365 >> Turn in Bring Back the Mug
step
    .goto Dun Morogh,25.076,75.713
>>Talk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 182 >> Turn in The Troll Cave
.target Grelin Whitebeard
    .accept 218 >> Accept The Stolen Journal
step
    .goto Dun Morogh,26.8,79.9,30,0
    .goto Dun Morogh,29.0,79.0,15,0
.goto Dun Morogh,30.6,80.3
    >>Enter the Troll cave. Kill Grik'nir, then loot him for his journal
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
step
.goto Dun Morogh,28.4,79.7,30,0
.goto Dun Morogh,26.8,79.6,20 >>Run back out the cave
step
    .goto Dun Morogh,25.076,75.713
>>Talk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 218 >> Turn in The Stolen Journal
.target Grelin Whitebeard
    .accept 282 >> Accept Senir's Observations
step
    >>Grind some mobs up to here
.goto Dun Morogh,33.484,71.841
>>Talk to |cRXP_FRIENDLY_Mountaineer Thalos|r
    .turnin 282 >> Turn in Senir's Observations
.target Mountaineer Thalos
    .accept 420 >> Accept Senir's Observations
step
    .goto Dun Morogh,33.9,72.2
.target Hands Springsprocket
>>Talk to |cRXP_FRIENDLY_Hands Springsprocket|r
    .accept 2160 >> Accept Supplies to Tannok
step
.goto Dun Morogh,34.1,71.6,20,0
.goto Dun Morogh,35.7,66.0,20 >>Go through the tunnel
step
    #sticky
#completewith BoarMeat3
>> Kill boars to get some Boar Meat for later
.collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    #sticky
#completewith BoarRibs
>> Kill boars to get some Boar Ribs for later
.collect 2886,6 --Collect Crag Boar Rib (x6)
step
>>Grind boars north-east to Kharanos
.goto Dun Morogh,36.4,62.9,45,0
    .goto Dun Morogh,37.7,60.5,45,0
    .goto Dun Morogh,43.9,55.7
    .xp 5+2415 >> Grind to 2415/+2800xp
step
    .goto Dun Morogh,47.0,55.1,75 >> Die and respawn at the Spirit Healer, or run to Kharanos. Make sure your subzone is NOT Coldridge Pass
step
    #label BoarMeat3
    .zone Dun Morogh >> .
step
    #label BoarRibs
    .zone Dun Morogh >> .
step
.goto Dun Morogh,46.726,53.826
.target Senir Whitebeard
>>Talk to |cRXP_FRIENDLY_Senir Whitebeard|r
    .turnin 420 >> Turn in Senir's Observations
step
    .xp 6 >> Grind to 6
step
    .goto Dun Morogh,46.7,53.5
    .vendor >>vendor trash
step << tbc
.goto Dun Morogh,47.3,53.7
    .vendor >>go to Dannie, buy the Blood Pact book and use it
step
.goto Dun Morogh,47.3,53.7
    >>Talk to Gimrizz
    .train 695 >>Train Shadow Bolt r2
    .train 1454 >>Train Life Tap
step
    .goto Dun Morogh,46.021,51.676
.target Tharek Blackstone
>>Talk to |cRXP_FRIENDLY_Tharek Blackstone|r
    .accept 400 >> Accept Tools for Steelgrill
step
    #sticky
#completewith next
>> Kill boars to get some Boar Meat for later
.collect 769,4 --Collect Chunk of Boar Meat (x4)
step
.goto Dun Morogh,49.426,48.410
    >>DON'T kill bears en route
.target Pilot Bellowfiz
>>Talk to |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .accept 317 >> Accept Stocking Jetsteam
step
#xprate <1.5
    .goto Dun Morogh,49.622,48.612
.target Pilot Stonegear
>>Talk to |cRXP_FRIENDLY_Pilot Stonegear|r
    .accept 313 >> Accept The Grizzled Den
step
    .goto Dun Morogh,50.4,49.1
.target Beldin Steelgrill
>>Talk to |cRXP_FRIENDLY_Beldin Steelgrill|r
    .turnin 400 >> Turn in Tools for Steelgrill
step
.goto Dun Morogh,50.084,49.420
.target Loslor Rudge
>>Talk to |cRXP_FRIENDLY_Loslor Rudge|r
    .accept 5541 >> Accept Ammo for Rumbleshot
step
    #sticky
#completewith BoarRibs2
>> Kill boars to get Boar Ribs for later
.collect 2886,6 --Collect Crag Boar Rib (x6)
step
.goto Dun Morogh,52.0,50.1,40,0
.goto Dun Morogh,51.5,53.9,40,0
.goto Dun Morogh,50.1,53.9,40,0
.goto Dun Morogh,49.9,50.9,40,0
.goto Dun Morogh,48.0,49.5,40,0
.goto Dun Morogh,48.2,46.9,40,0
.goto Dun Morogh,43.5,52.5,40,0
.goto Dun Morogh,52.0,50.1,40,0
.goto Dun Morogh,51.5,53.9,40,0
.goto Dun Morogh,50.1,53.9,40,0
.goto Dun Morogh,49.9,50.9,40,0
.goto Dun Morogh,48.0,49.5,40,0
.goto Dun Morogh,48.2,46.9,40,0
.goto Dun Morogh,43.5,52.5,40,0
.goto Dun Morogh,52.0,50.1,40,0
.goto Dun Morogh,51.5,53.9,40,0
.goto Dun Morogh,50.1,53.9,40,0
.goto Dun Morogh,49.9,50.9,40,0
.goto Dun Morogh,48.0,49.5,40,0
.goto Dun Morogh,48.2,46.9,40,0
.goto Dun Morogh,43.5,52.5,40,0
.goto Dun Morogh,52.0,50.1,40,0
.goto Dun Morogh,51.5,53.9,40,0
.goto Dun Morogh,50.1,53.9,40,0
.goto Dun Morogh,49.9,50.9,40,0
.goto Dun Morogh,48.0,49.5,40,0
.goto Dun Morogh,48.2,46.9,40,0
.goto Dun Morogh,43.5,52.5,40,0
    >>Get the items for Stocking Jetsteam
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
.complete 317,2 --Collect Thick Bear Fur (x2)
step
    .goto Dun Morogh,49.426,48.410
>>Talk to |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .turnin 317 >> Turn in Stocking Jetsteam
.target Pilot Bellowfiz
    .accept 318 >> Accept Evershine
step
    #sticky
    #completewith supplies
    +If you weren't able to afford your skills before, go and buy them now
step
    .goto Dun Morogh,46.8,52.4
.target Ragnar Thunderbrew
>>Talk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r
    .accept 384 >> Accept Beer Basted Boar Ribs
step
    #label supplies
.goto Dun Morogh,47.217,52.195
.target Tannok Frosthammer
>>Talk to |cRXP_FRIENDLY_Tannok Frosthammer|r
    .turnin 2160 >> Turn in Supplies to Tannok
step
.goto Dun Morogh,47.4,52.5
    .home >> Set your Hearthstone to Thunderbrew Distillery
step
#xprate <1.5
    .goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
    .goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
    .goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
    .goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
    >> Go into the cave. Kill Wendigos. Loot them for their Manes
    .complete 313,1 --Collect Wendigo Mane (x8)
step
    >>Loot the crate
    .goto Dun Morogh,44.1,56.9
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    .goto Dun Morogh,40.6,62.6,30,0
    .goto Dun Morogh,40.682,65.130
.target Hegnar Rumbleshot
>>Talk to |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    .turnin 5541 >> Turn in Ammo for Rumbleshot
    .vendor >> Vendor and repair
step
    .xp 7 >> Grind to 7
step
>>Grind some mobs en route
    .goto Dun Morogh,35.2,56.4,50,0
    .goto Dun Morogh,36.0,52.0,50,0
    .goto Dun Morogh,34.6,51.7
.target Tundra MacGrann
>>Talk to |cRXP_FRIENDLY_Tundra MacGrann|r
    .accept 312 >> Accept Tundra MacGrann's Stolen Stash
step
.goto Dun Morogh,30.5,46.0
    .vendor >> Vendor. Buy x10 level 5 drink from Kreg
step
    .goto Dun Morogh,30.2,45.8
>>Talk to |cRXP_FRIENDLY_Rejold Barleybrew|r
    .turnin 318 >> Turn in Evershine
.target Rejold Barleybrew
    .accept 319 >> Accept A Favor for Evershine
    .accept 315 >> Accept The Perfect Stout
step
    .goto Dun Morogh,30.186,45.531
.target Marleth Barleybrew
>>Talk to |cRXP_FRIENDLY_Marleth Barleybrew|r
    .accept 310 >> Accept Bitter Rivals
step
#label BoarRibs2
    .goto Dun Morogh,31.5,38.9,40,0
    .goto Dun Morogh,28.3,39.9,40,0
    .goto Dun Morogh,28.7,43.7,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,30.0,51.8,40,0
    .goto Dun Morogh,31.5,38.9,40,0
    .goto Dun Morogh,28.3,39.9,40,0
    .goto Dun Morogh,28.7,43.7,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,30.0,51.8,40,0
    >> Kill Bears, Boars and Leopards
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .complete 319,3 --Kill Snow Leopard (x8)
step
    >> Finish off getting the Boar Ribs
    .complete 384,1 --Collect Crag Boar Rib (x6)
step
    .goto Dun Morogh,30.189,45.725
>>Talk to |cRXP_FRIENDLY_Rejold Barleybrew|r
    .turnin 319 >> Turn in A Favor for Evershine
.target Rejold Barleybrew
    .accept 320 >> Accept Return to Bellowfiz
step
    .xp 7+3735 >>Grind until 3735+/4500xp
    .goto Dun Morogh,31.5,38.9,40,0
    .goto Dun Morogh,28.3,39.9,40,0
    .goto Dun Morogh,28.7,43.7,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,30.0,51.8,40,0
    .goto Dun Morogh,31.5,38.9,40,0
    .goto Dun Morogh,28.3,39.9,40,0
    .goto Dun Morogh,28.7,43.7,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,30.0,51.8,40,0
step
    .goto Dun Morogh,30.3,37.5,50 >> Run to here
step
    .isQuestTurnedIn 384
    .xp 7+4360 >>Grind until 4360+/4500xp, then go to here
    .goto Dun Morogh,30.3,37.5,50
step
    .goto Dun Morogh,30.9,33.1,15 >>Run up the mountain north
step
    .goto Dun Morogh,32.4,29.1,15 >>Follow it up to here
step
    .goto Dun Morogh,33.0,27.2,15,0
    .goto Dun Morogh,33.0,25.2,15,0
    .goto Wetlands,11.6,43.4,60,0
    .deathskip >>Keep running straight north, drop down and die, then respawn
step
    .goto Wetlands,12.7,46.7,30 >> Swim to shore
step
    .goto Wetlands,9.5,59.7
    .fp Menethil >> Get the Menethil Harbor flight path
step
    .hs >> Hearth to Kharanos
step
    .goto Dun Morogh,47.4,52.5
    >> Buy a Rhapsody Malt and Thunder Ale from Belm
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,310,1 --Collect Thunder Ale (x1)
step
    .goto Dun Morogh,47.6,52.4,10 >>Go in the room behind the innkeeper
step
    >>Go downstairs, then talk to Jarven, and give him the Thunder Ale
    >>Wait for the barrel mouseover to become "unguarded", then handin
    .turnin 310 >> Turn in Bitter Rivals
    .accept 311 >> Accept Return to Marleth
step
    .goto Dun Morogh,46.8,52.4
.target Ragnar Thunderbrew
>>Talk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r
    .turnin 384 >> Turn in Beer Basted Boar Ribs
     >>Sell the recipe when you next vendor
step
    .xp 8 >> Grind to 8
step << tbc
    .goto Dun Morogh,47.3,53.7
    .vendor >>go to Dannie, buy the Firebolt r2 book and use it
step
    .goto Dun Morogh,47.3,53.7
    >>Talk to Gimrizz
    .train 980 >>Train Curse of Agony
    .train 5782 >>Train Fear
step
    .goto Dun Morogh,46.726,53.826
.target Senir Whitebeard
>>Talk to |cRXP_FRIENDLY_Senir Whitebeard|r
    .accept 287 >> Accept Frostmane Hold
step
#xprate <1.5
    .goto Dun Morogh,49.622,48.612
.target Pilot Stonegear
>>Talk to |cRXP_FRIENDLY_Pilot Stonegear|r
    .turnin 313 >> Turn in The Grizzled Den
step
    .goto Dun Morogh,49.426,48.410
.target Pilot Bellowfiz
>>Talk to |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .turnin 320 >> Turn in Return to Bellowfiz
step
#xprate <1.5
    .goto Dun Morogh,45.8,49.4
.target Razzle Sprysprocket
>>Talk to |cRXP_FRIENDLY_Razzle Sprysprocket|r
    .accept 412 >> Accept Operation Recombobulation
step
    #completewith next
    .goto Dun Morogh,43.1,45.0,20,0
    .goto Dun Morogh,42.1,45.4,20 >> Run up the ramp to Shimmerweed
step
    .goto Dun Morogh,40.9,45.3,30,0
    .goto Dun Morogh,41.5,43.6,30,0
    .goto Dun Morogh,39.7,40.0,30,0
    .goto Dun Morogh,42.1,34.3,30,0
    >>Clear mobs in this area. Be careful if you need to clear the middle camp. You can pull the mobs in the huts and line of sight (LoS) them behind the huts if you need 2 more mobs. If you get unlucky, run to the other area
    .complete 315,1 --Collect Shimmerweed (x6)
step
    #completewith next
    .goto Dun Morogh,38.4,49.9,40 >> Run toward Old Icebeard
step
    >>Fear Old Icebeard, then loot the chest inside the cave
    .goto Dun Morogh,38.5,53.9
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    .goto Dun Morogh,34.6,51.7
.target Tundra MacGrann
>>Talk to |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >> Turn in Tundra MacGrann's Stolen Stash
step << tbc
    .goto Dun Morogh,30.4,45.8
    .vendor >> Buy as much level 5 drink as you can afford
step
    .goto Dun Morogh,30.189,45.725
>>Talk to |cRXP_FRIENDLY_Rejold Barleybrew|r
    .turnin 315 >> Turn in The Perfect Stout
.target Rejold Barleybrew
    .accept 413 >> Accept Shimmer Stout
step
    .goto Dun Morogh,30.186,45.531
.target Marleth Barleybrew
>>Talk to |cRXP_FRIENDLY_Marleth Barleybrew|r
    .turnin 311 >> Turn in Return to Marleth
step
#xprate <1.5
    .goto Dun Morogh,27.2,43.0,40,0
    .goto Dun Morogh,24.8,39.3,40,0
    .goto Dun Morogh,25.6,43.4,40,0
    .goto Dun Morogh,24.3,44.0,40,0
    .goto Dun Morogh,25.4,45.4,40,0
    >>Kill Leper Gnomes. Loot them for Gears and Cogs
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
step
    .xp 9 >> Grind to 9
step
    #completewith next
    .goto Dun Morogh,24.5,50.8,30 >>Enter the cave
step
    .goto Dun Morogh,22.1,50.3,40,0
       .goto Dun Morogh,21.3,52.9,40,0
    >>Kill Headhunters inside the cave
    .complete 287,1 --Kill Frostmane Headhunter (x5)
step
    >>Jump down into the nook below
    .goto Dun Morogh,23.0,52.2
    .complete 287,2 --Fully explore Frostmane Hold
step
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer
step
    .goto Dun Morogh,46.726,53.826
>>Talk to |cRXP_FRIENDLY_Senir Whitebeard|r
    .turnin 287 >> Turn in Frostmane Hold
.target Senir Whitebeard
    .accept 291 >> Accept The Reports
step
#xprate <1.5
    .goto Dun Morogh,45.8,49.4
.target Razzle Sprysprocket
>>Talk to |cRXP_FRIENDLY_Razzle Sprysprocket|r
    .turnin 412 >> Turn in Operation Recombobulation
step
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>Talk to |cRXP_FRIENDLY_Rudra Amberstill|r
    .accept 314 >> Accept Protecting the Herd
step
    #sticky
    #completewith next
    .goto Dun Morogh,62.3,50.3,12,0
    .goto Dun Morogh,62.2,49.4,8 >>Run up this part of the mountain
step
    >>Kill Vagash. Loot him for his Fang
.goto Dun Morogh,62.6,46.1
    .complete 314,1 --Collect Fang of Vagash (x)
step
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>Talk to |cRXP_FRIENDLY_Rudra Amberstill|r
    .turnin 314 >> Turn in Protecting the Herd
step
    >>Grind a little en route
    .goto Dun Morogh,68.6,54.7
    .vendor >>Vendor, buy x10 level 5 water/x5 level 5 food
step
    .goto Dun Morogh,68.7,56.0
.target Senator Mehr Stonehallow
>>Talk to |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .accept 433 >> Accept The Public Servant
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Talk to |cRXP_FRIENDLY_Foreman Stonebrow|r
    .accept 432 >> Accept Those Blasted Troggs!
step
.goto Dun Morogh,70.6,56.6,30,0
.goto Dun Morogh,70.8,53.3,30,0
.goto Dun Morogh,71.9,50.7,30,0
.goto Dun Morogh,72.9,53.1,30,0
.goto Dun Morogh,70.6,56.6,30,0
.goto Dun Morogh,70.8,53.3,30,0
.goto Dun Morogh,71.9,50.7,30,0
.goto Dun Morogh,72.9,53.1,30,0
    >>Kill Troggs in the cave
.complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Talk to |cRXP_FRIENDLY_Foreman Stonebrow|r
    .turnin 432 >> Turn in Those Blasted Troggs!
step
    .goto Dun Morogh,68.7,56.0
.target Senator Mehr Stonehallow
>>Talk to |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .turnin 433 >> Turn in The Public Servant
step
.xp 10 >> Grind to 10
step
    .goto Dun Morogh,81.2,42.7,15 >>Grind a bit en route, go inside the tunnel
step
    .goto Dun Morogh,83.8,39.2
.target Pilot Hammerfoot
>>Talk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .accept 419 >> Accept The Lost Pilot
step
    >>Grind en route
.goto Dun Morogh,79.7,36.2
    .turnin 419 >> Turn in The Lost Pilot
    .accept 417 >> Accept A Pilot's Revenge
step
    >>Kill Mangeclaw. Loot him for his Claw
.goto Dun Morogh,80.0,36.4
    .complete 417,1 --Collect Mangy Claw (x1)
step
    .goto Dun Morogh,83.892,39.188
.target Pilot Hammerfoot
>>Talk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .turnin 417 >> Turn in A Pilot's Revenge
step
    #completewith next
    .goto Dun Morogh,81.2,42.7,25 >>Go back through the tunnel
step
    .goto Dun Morogh,79.6,50.7,50,0
    .goto Dun Morogh,82.3,53.5,25,0
    .goto Dun Morogh,86.278,48.812
>>Talk to |cRXP_FRIENDLY_Mountaineer Barleybrew|r
    .turnin 413 >> Turn in Shimmer Stout
.target Mountaineer Barleybrew
    .accept 414 >> Accept Stout to Kadrell
step
    #completewith next
    .goto Dun Morogh,86.2,51.3,20 >>Go through the tunnel
step
    .goto Loch Modan,22.071,73.127
.target Mountaineer Cobbleflint
>>Talk to |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .accept 224 >> Accept In Defense of the King's Lands
step
    .goto Loch Modan,22.6,75.4,30,0
    .goto Loch Modan,23.233,73.675
    >>Go into the bunker
.target Captain Rugelfuss
>>Talk to |cRXP_FRIENDLY_Captain Rugelfuss|r
    .accept 267 >> Accept The Trogg Threat
step << wotlk
    .goto Loch Modan,30.0,72.4,100,0
    .goto Loch Modan,34.7,71.6,100,0
    .goto Loch Modan,30.9,81.1,100,0
    .goto Loch Modan,30.0,72.4,100,0
    .goto Loch Modan,34.7,71.6,100,0
    .goto Loch Modan,30.9,81.1,100,0
    >>Kill Stonesplinter Troggs. Loot them for their Teeth
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
step << wotlk
    .goto Loch Modan,22.2,73.3
.target Mountaineer Cobbleflint
>>Talk to |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .turnin 224 >> Turn in In Defense of the King's Lands
step << wotlk
    .goto Loch Modan,23.233,73.675
.target Captain Rugelfuss
>>Talk to |cRXP_FRIENDLY_Captain Rugelfuss|r
    .turnin 267 >> Turn in The Trogg Threat
step
    .goto Loch Modan,35.3,46.9,150 >>Run to Thelsamar
step << tbc
    .goto Loch Modan,35.5,48.4
    .home >> Set your Hearthstone to Thelsamar
step << tbc
#xprate <1.5
    .goto Loch Modan,34.828,49.283
.target Vidra Hearthstove
>>Talk to |cRXP_FRIENDLY_Vidra Hearthstove|r
    .accept 418 >> Accept Thelsamar Blood Sausages
step
    .goto Loch Modan,34.0,46.5
    .vendor >>vendor trash, Repair
step
    .goto Loch Modan,32.6,49.9,40,0
    .goto Loch Modan,37.2,46.1,40,0
    .goto Loch Modan,36.7,41.6,40,0
    .goto Loch Modan,32.6,49.9,40,0
    .goto Loch Modan,37.2,46.1,40,0
    .goto Loch Modan,36.7,41.6,40,0
    >>Find Kadrell, he patrols along the main road
>>Talk to |cRXP_FRIENDLY_Mountaineer Kadrell|r
    .turnin 414 >> Turn in Stout to Kadrell
.target Mountaineer Kadrell
    .accept 416 >> Accept Rat Catching << tbc
    .accept 1339 >> Accept Mountaineer Stormpike's Task
step
    >>Go inside the building, then go downstairs. Talk to Brock
    .goto Loch Modan,37.2,46.9,15,0
    .goto Loch Modan,37.019,47.806
.target Brock Stoneseeker
>>Talk to |cRXP_FRIENDLY_Brock Stoneseeker|r
    .accept 6387 >> Accept Honor Students
step << tbc
    #sticky
    #completewith ThelsamarFood
    >>Kill Spiders. Loot them for Spider Ichor
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step << tbc
    #sticky
    #completewith ThelsamarFood
    >>Kill Bears. Loot them for Bear Meat
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
step << tbc
    #sticky
    #completewith ThelsamarFood
    >>Kill Boars. Kill them for Boar Intestines
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step
    #completewith next
    #label ThelsamarFood
    .goto Loch Modan,23.3,17.9,30 >>Run to the north bunker. Grind some mobs for Boar Intestines, Bear Meat and Spider Ichor en route
step
    .goto Loch Modan,24.1,18.2
    .vendor >>vendor trash, repair
step
    >>Upstairs
    .goto Loch Modan,24.7,18.3
>>Talk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 1339 >> Turn in Mountaineer Stormpike's Task
.target Mountaineer Stormpike
    .accept 307 >> Accept Filthy Paws << tbc
    .accept 1338 >> Accept Stormpike's Order
step
    #label Thelsamar
    .goto Loch Modan,32.0,47.2,150 >>Die and respawn at the Spirit Healer, or run to here
step
    .goto Loch Modan,33.938,50.954
    .fp Thelsamar >> Get the Thelsamar flight path
>>Talk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .turnin 6387 >> Turn in Honor Students
.target Thorgrum Borrelson
    .accept 6391 >> Accept Ride to Ironforge
    .fly Ironforge >> Fly to Ironforge
step
    .goto Ironforge,51.521,26.311
>>Talk to |cRXP_FRIENDLY_Golnir Bouldertoe|r
    .turnin 6391 >> Turn in Ride to Ironforge
.target Golnir Bouldertoe
    .accept 6388 >> Accept Gryth Thurden
step
    >>do NOT fly anywhere
.goto Ironforge,55.501,47.742
>>Talk to |cRXP_FRIENDLY_Gryth Thurden|r
    .turnin 6388 >> Turn in Gryth Thurden
.target Gryth Thurden
    .accept 6392 >> Accept Return to Brock
step
    .goto Ironforge,39.550,57.490
.target Senator Barin Redstone
>>Talk to |cRXP_FRIENDLY_Senator Barin Redstone|r
    .turnin 291 >> Turn in The Reports
step
    #sticky
    #completewith next
+Jump on top of the anvil, then log out and back in
.goto Ironforge,49.7,43.7
step
.goto Ironforge,77.0,51.0,30 >>Enter the Deeprun Tram
step
.target Monty
>>Talk to |cRXP_FRIENDLY_Monty|r
    .accept 6661 >> Accept Deeprun Rat Roundup
step
    .use 17117>>Use your flute on the rats scattered around
    .complete 6661,1 --Rats Captured (x5)
step
>>Talk to |cRXP_FRIENDLY_Monty|r
    .turnin 6661 >> Turn in Deeprun Rat Roundup
.target Monty
    .accept 6662 >> Accept Me Brother, Nipsy
step
     >> Ride to the other side of the tram and turn in
.target Nipsy
>>Talk to |cRXP_FRIENDLY_Nipsy|r
    .turnin 6662 >> Turn in Me Brother, Nipsy
step
    .goto StormwindClassic,58.1,16.5
.target Furen Longbeard
>>Talk to |cRXP_FRIENDLY_Furen Longbeard|r
    .turnin 1338 >> Turn in Stormpike's Order
step
    .goto StormwindClassic,62.5,62.3,30,0
    .goto StormwindClassic,66.3,62.1
    .fp Stormwind >> Get the Stormwind flight path
step
    .money <0.2090
    .goto StormwindClassic,57.1,57.7
    .train 227 >>Train Staves
step
    #sticky
    #completewith next
    .goto StormwindClassic,29.2,74.0,15,0
    .goto StormwindClassic,27.2,78.1,10 >> Go into The Slaughtered Lamb
step
    .goto StormwindClassic,25.2,78.5
.target Gakin the Darkbinder
>>Talk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .accept 1688 >> Accept Surena Caledon
    .train 1120 >>Train Drain Soul
    .train 6201 >> Train Create Healthstone
    .train 696 >>Train Demon Skin r2
    .train 707 >> Train Immolate r2
step
    .deathskip >> Die and respawn at the Spirit Healer by using Life Tap and standing on the Bonfire next to you
step
    .goto Elwynn Forest,41.7,65.9
    .vendor >>vendor trash, repair
step << tbc
#xprate <1.5
    .goto Elwynn Forest,42.105,65.927
.target Marshal Dughan
>>Talk to |cRXP_FRIENDLY_Marshal Dughan|r
    .accept 62 >> Accept The Fargodeep Mine
step << tbc
#xprate <1.5
    .goto Elwynn Forest,42.9,65.7
    .abandon 109 >> Abandon Report to Gryan Stoutmantle
step << tbc
#xprate <1.5
    #completewith next
    .goto Elwynn Forest,42.9,65.7,15 >>Go in the inn
step << tbc
#xprate <1.5
    >>On your close left as you go in
    .goto Elwynn Forest,43.283,65.721
.target William Pestle
>>Talk to |cRXP_FRIENDLY_William Pestle|r
    .accept 60 >> Accept Kobold Candles
step << tbc
#xprate <1.5
    .goto Elwynn Forest,42.1,67.3
.target Remy "Two Times"
>>Talk to |cRXP_FRIENDLY_Remy "Two Times"|r
    .accept 47 >> Accept Gold Dust Exchange
step
.goto Elwynn Forest,42.1,67.3
.target Remy "Two Times"
>>Talk to |cRXP_FRIENDLY_Remy "Two Times"|r
    .accept 40 >> Accept A Fishy Peril
step << tbc
#xprate <1.5
    #sticky
    #completewith Candles
    >> Get Candles from nearby Kobolds
    .complete 60,1 --Collect Kobold Candle (x8)
step << tbc
#xprate <1.5
    #sticky
#completewith Dust
    >> Get Gold Dust from nearby Kobolds
    .complete 47,1 --Collect Gold Dust (x10)
step << tbc
#xprate <1.5
    #completewith next
    .goto Elwynn Forest,38.1,81.6,15 >>Enter through the lower entrance
step << tbc
#xprate <1.5
    >>Keep running through the mine
.goto Elwynn Forest,40.5,82.3
    .complete 62,1 --Scout Through the Fargodeep Mine
step << tbc
#xprate <1.5
    #label Candles
    .goto Elwynn Forest,38.4,83.4,2500 >> .
step << tbc
#xprate <1.5
    #label Dust
    .goto Elwynn Forest,38.4,83.4,2500 >> .
step << tbc
#xprate <1.5
    .goto Elwynn Forest,38.4,83.4
    >>Kill Kobolds. Loot them for Candles and Dust
    .complete 60,1 --Collect Kobold Candle (x8)
    .complete 47,1 --Collect Gold Dust (x10)
step
    .goto Elwynn Forest,34.660,84.482
.target Ma Stonefield
>>Talk to |cRXP_FRIENDLY_Ma Stonefield|r
    .accept 88 >> Accept Princess Must Die!
step
    .goto Elwynn Forest,24.6,78.2
    .accept 176 >> Accept Wanted:   "Hogger"
step
    #sticky
    #completewith next
    >>Keep an eye out for the gold pickup schedule (lucky drop), or a 100% Drop from Gruff Swiftbite (rare). extra 210xp
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >> Accept The Collector
step
    #label Hogger
.goto Elwynn Forest,27.0,86.7,40,0
.goto Elwynn Forest,26.1,89.9,40,0
.goto Elwynn Forest,25.2,92.7,40,0
.goto Elwynn Forest,27.0,93.9,40,0
.goto Elwynn Forest,27.0,86.7,40,0
.goto Elwynn Forest,26.1,89.9,40,0
.goto Elwynn Forest,25.2,92.7,40,0
.goto Elwynn Forest,27.0,93.9,40,0
.goto Elwynn Forest,27.0,86.7,40,0
.goto Elwynn Forest,26.1,89.9,40,0
.goto Elwynn Forest,25.2,92.7,40,0
.goto Elwynn Forest,27.0,93.9,40,0
    >>Hogger can be in multiple spots in the area. Keep him fear chained, and/or kite him at <60% hp to the tower at 24,80. Loot him for his Claw
    .complete 176,1 --Collect Huge Gnoll Claw (x1)
step
#completewith next
    .goto Elwynn Forest,39.5,60.5,200 >> Die and respawn at the Spirit Healer, or run back to Goldshire
step
.goto Elwynn Forest,42.105,65.927
    >>Choose the Staff. Equip it
>>Talk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 176 >> Turn in Wanted:    "Hogger"
    .turnin 40 >> Turn in A Fishy Peril
.target Marshal Dughan
    .accept 35 >> Accept Further Concerns
step
    #sticky
    .isOnQuest 123
    .goto Elwynn Forest,42.105,65.927
.target Marshal Dughan
>>Talk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 123 >> Turn in The Collector, Skip followup
step << tbc
#xprate <1.5
    .goto Elwynn Forest,42.105,65.927
>>Talk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 62 >> Turn in The Fargodeep Mine
.target Marshal Dughan
    .accept 76 >> Accept The Jasperlode Mine
step << tbc
#xprate <1.5
    .goto Elwynn Forest,42.1,67.3
.target Remy "Two Times"
>>Talk to |cRXP_FRIENDLY_Remy "Two Times"|r
    .turnin 47 >> Turn in Gold Dust Exchange
step
    .abandon 147 >> Abandon Manhunt
step << tbc
#xprate <1.5
    .goto Elwynn Forest,43.283,65.721
>>Talk to |cRXP_FRIENDLY_William Pestle|r
    .turnin 60 >> Turn in Kobold Candles
.target William Pestle
    .accept 61 >> Accept Shipment to Stormwind
step
    #sticky
    #completewith soylago
    .goto Elwynn Forest,44.1,66.0,12 >>If you're level 12, go to the room behind the innkeeper, then go downstairs. Otherwise, skip this step
    .goto Elwynn Forest,44.4,66.2
    .train 755 >>Train Health Funnel
    .train 705 >>Train Shadow Bolt r3
    .xp <12,1
step
    .goto Elwynn Forest,43.771,65.803
    .vendor >> Buy x10 level 5 drink
step << tbc
#xprate <1.5
    #label soylago
    .goto Elwynn Forest,47.6,63.3,60,0
    .goto Elwynn Forest,61.8,54.0,20 >>Go toward the outside of the mine
step << tbc
#xprate <1.5
    >>Go in the mine, and keep following the middle path
    .goto Elwynn Forest,60.4,50.2
    .complete 76,1 --Scout through the Jasperlode Mine
step
    .goto Elwynn Forest,61.8,54.0,40,0
    .goto Elwynn Forest,73.973,72.179
    >>Grind a bit en route to here
.target Guard Thomas
>>Talk to |cRXP_FRIENDLY_Guard Thomas|r
    .turnin 35 >> Turn in Further Concerns
step << tbc
    #xprate <1.5
.target Guard Thomas
>>Talk to |cRXP_FRIENDLY_Guard Thomas|r
    .accept 37 >> Accept Find the Lost Guards
    .accept 52 >> Accept Protect the Frontier
step << tbc
#xprate <1.5
    #sticky
    #completewith Prowlers
    >>Kill Prowlers as you do other quests
    .complete 52,1 --Kill Prowler (x8)
step << tbc
#xprate <1.5
    #sticky
    #completewith Bears
    >>Kill Bears as you do other quests. Kill any you see
    .complete 52,2 --Kill Young Forest Bear (x5)
step << tbc
#xprate <1.5
    .goto Elwynn Forest,72.7,60.3
    .turnin 37 >> Turn in Find the Lost Guards
    .accept 45 >> Accept Discover Rolf's Fate
step << tbc
#xprate <1.5
    .goto Elwynn Forest,81.382,66.112
.target Supervisor Raelen
>>Talk to |cRXP_FRIENDLY_Supervisor Raelen|r
    .accept 5545 >> Accept A Bundle of Trouble
step << tbc
#xprate <1.5
    .goto Elwynn Forest,83.3,66.1
    .vendor >> vendor trash and repair if needed
step << tbc
#xprate <1.5
    #sticky
    #completewith next
    >>Keep an eye out for the bundles of logs at the base of the trees.
    .complete 5545,1 --Collect Bundle of Wood (x8)
step << tbc
#xprate <1.5
    #label Bundles
    .goto Elwynn Forest,79.8,55.5
    >> Pull the mobs in front of the huts, move away then keep one feared, and try to keep dots on both. Then loot the carcass on the ground
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step << tbc
#xprate <1.5
.goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
.goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    >>Start running back, finish off the bundles
    .collect 13872,8 --Collect Bundle of Wood (x8)
step << tbc
#xprate <1.5
    .goto Elwynn Forest,81.382,66.112
.target Supervisor Raelen
>>Talk to |cRXP_FRIENDLY_Supervisor Raelen|r
    .turnin 5545 >> Turn in A Bundle of Trouble
step << tbc
#xprate <1.5
    #label Bears
.goto Elwynn Forest,79.457,68.789
.target Sara Timberlain
>>Talk to |cRXP_FRIENDLY_Sara Timberlain|r
    .accept 83 >> Accept Red Linen Goods
step << tbc
#xprate <1.5
    #label Prowlers
    .goto Elwynn Forest,79.457,68.789,10000
    step
    .goto Elwynn Forest,76.7,75.6,40,0
    .goto Elwynn Forest,79.7,83.7,40,0
    .goto Elwynn Forest,82.0,76.8,40,0
    .goto Elwynn Forest,76.7,75.6,40,0
    .goto Elwynn Forest,79.7,83.7,40,0
    .goto Elwynn Forest,82.0,76.8,40,0
    >>Kill the last mobs for Protect the Frontier
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
step << tbc
#xprate <1.5
    .goto Elwynn Forest,73.973,72.179
>>Talk to |cRXP_FRIENDLY_Guard Thomas|r
    .turnin 52 >> Turn in Protect the Frontier
    .turnin 71 >> Turn in Report to Thomas
.target Guard Thomas
    .accept 39 >> Accept Deliver Thomas' Report
step << tbc
#xprate <1.5
    .goto Elwynn Forest,70.5,77.6,40,0
    .goto Elwynn Forest,68.1,77.5,40,0
    .goto Elwynn Forest,68.2,81.4,40,0
    .goto Elwynn Forest,70.8,80.9,40,0
    .goto Elwynn Forest,70.5,77.6,40,0
    .goto Elwynn Forest,68.1,77.5,40,0
    .goto Elwynn Forest,68.2,81.4,40,0
    .goto Elwynn Forest,70.8,80.9,40,0
    .goto Elwynn Forest,70.5,77.6,40,0
    .goto Elwynn Forest,68.1,77.5,40,0
    .goto Elwynn Forest,68.2,81.4,40,0
    .goto Elwynn Forest,70.8,80.9,40,0
    >>Start circling the farm, killing Defias and looting them for Bandanas
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .isOnQuest 83
step
    .goto Elwynn Forest,69.8,79.5
    .abandon 109 >> Abandon Report to Gryan Stoutmantle
step
    >>Kill the mobs inside the house, keep Morgan feared (he gouges and kills pet), nuke Surena. Loot her for her Choker
    .goto Elwynn Forest,71.0,80.8
    .complete 1688,1 --Collect Surena's Choker (x)
step
    #label Deed
    .goto Elwynn Forest,69.8,79.5
    .goto Elwynn Forest,69.5,76.4,0
    .goto Elwynn Forest,71.3,79.2,0
    >>Kill Princess. Loot her for her Collar
    .complete 88,1 --Collect Brass Collar (x1)
step << tbc
#xprate <1.5
    .goto Elwynn Forest,79.5,68.9
.target Sara Timberlain
>>Talk to |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 83 >> Turn in Red Linen Goods
    .isQuestComplete 83
step << tbc
#xprate <1.5
    #sticky
    #completewith next
    .goto Elwynn Forest,83.3,66.1
    .vendor >> vendor trash, repair
step << tbc
    .xp 12
step
    #sticky
    #completewith next
    .goto Elwynn Forest,91.7,72.3,90 >>Grind en route, make sure to have at least 2 Soul Shards (using Drain Soul)
    .collect 6265,2 --Collect Soul Shard (x2)
step
    .goto Redridge Mountains,17.4,69.6
.target Guard Parker
>>Talk to |cRXP_FRIENDLY_Guard Parker|r
    .accept 244 >> Accept Encroaching Gnolls
step
    .abandon 184 >> Abandon Furlbrow's Deed
step
    >>Be careful of the mobs en route
    .goto Redridge Mountains,30.733,59.996
.target Deputy Feldon
>>Talk to |cRXP_FRIENDLY_Deputy Feldon|r
    .turnin 244 >> Turn in Encroaching Gnolls
step
    .goto Redridge Mountains,29.30,53.60
.target Shawn
>>Talk to |cRXP_FRIENDLY_Shawn|r
    .accept 3741 >> Accept Hilary's Necklace
    .xp <12,1
step
    >>Look for Hilary's Necklace underwater. It's in a brown patch of dirt
    .goto Redridge Mountains,27.80,56.05,0
    .goto Redridge Mountains,26.56,50.63,0
    .goto Redridge Mountains,23.96,55.17,0
    .goto Redridge Mountains,19.16,51.75,0
    .goto Redridge Mountains,31.12,54.21,0
    .goto Redridge Mountains,34.03,55.34,0
    .goto Redridge Mountains,38.09,54.49,0
    .goto Redridge Mountains,19.16,51.75,70,0
    .goto Redridge Mountains,38.09,54.49,70,0
    .complete 3741,1 --Hilary's Necklace (1)
    .xp <12,1
step
    .goto Redridge Mountains,29.20,53.60
.target Hilary
>>Talk to |cRXP_FRIENDLY_Hilary|r
    .turnin 3741 >> Turn in Hilary's Necklace
    .xp <12,1
step
    .goto Redridge Mountains,30.6,59.4
    .fp Redridge >> Get the Redridge Mountains flight path
    .fly Stormwind >> Fly to Stormwind
step << wotlk
    .goto StormwindClassic,52.8,65.4
    .home >> Set your Hearthstone to Stormwind
step << tbc
#xprate <1.5
    >>Choose rockets. These have very good damage, and can be used for splitpulling
    .goto StormwindClassic,56.2,64.6
.target Morgan Pestle
>>Talk to |cRXP_FRIENDLY_Morgan Pestle|r
    .turnin 61 >> Turn in Shipment to Stormwind
step
    #sticky
    #completewith next
    .goto StormwindClassic,29.2,74.0,15,0
    .goto StormwindClassic,27.2,78.1,10 >> Go into The Slaughtered Lamb
step
.goto StormwindClassic,25.3,78.2
    .train 755 >>Train Health Funnel
    .train 705 >>Train Shadow Bolt r3
    .xp <12,1
step
    .goto StormwindClassic,25.2,78.5
>>Talk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1688 >> Turn in Surena Caledon
.target Gakin the Darkbinder
    .accept 1689 >> Accept The Binding
step
    .goto StormwindClassic,25.2,80.7,12,0
    .goto StormwindClassic,23.2,79.5,12,0
    .goto StormwindClassic,26.3,79.5,12,0
    .goto StormwindClassic,25.5,78.1
    >>Go to the bottom of the crypt. Summon the Voidwalker using the Bloodstone Choker and kill it
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
step
    .goto StormwindClassic,25.2,78.5
    >>Don't summon your voidwalker once you learn it
.target Gakin the Darkbinder
>>Talk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1689 >> Turn in The Binding
step
    .deathskip >> Die and respawn at the Spirit Healer by using Life Tap and standing on the Bonfire next to the Warlock trainers
step
    .goto Elwynn Forest,41.7,65.9
    .vendor >>vendor trash, repair
step
    .goto Elwynn Forest,42.105,65.927
    .turnin -76 >> Turn in The Jasperlode Mine
    .turnin -39 >> Turn in Deliver Thomas' Report
step
    .goto Elwynn Forest,34.660,84.482
.target Ma Stonefield
>>Talk to |cRXP_FRIENDLY_Ma Stonefield|r
    .turnin 88 >> Turn in Princess Must Die!
step
    .abandon 59 >> Abandon Cloth and Leather Armor
step << wotlk
    .goto Elwynn Forest,27.0,93.9
    .xp 12
step << wotlk
    .goto Elwynn Forest,44.4,66.2
    >>Die on purpose and respawn at goldshire
    >>Head to the basement of the inn
    .train 755 >>Train Health Funnel
    .train 705 >>Train Shadow Bolt r3
step
    .hs >> Hearth to Loch Modan << tbc
    .hs >> Hearth to Stormwind << wotlk
step << wotlk
    .goto StormwindNew,21.8,56.2
    >> Head to Stormwind
    .zone Darkshore >> Take the boat to Darkshore
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance Warlock
#name 12-14 Loch Modan Gnome
#version 1
#group RestedXP Alliance 1-20
#defaultfor Gnome Warlock
#next 14-20 Bloodmyst
step
    .goto Loch Modan,34.8,48.6
    .vendor >> Buy 6 slot bags until all bag slots full
step
    .goto Loch Modan,34.0,46.5
    .vendor >>vendor trash, repair
step
#sticky
#completewith Thelsamar
>>Kill Spiders in the zone for Thelsamar Blood Sausages
.collect 3174,3,418,1 --Collect Spider Ichor (x3)
step
    #sticky
    #completewith Thelsamar
>>Kill Bears in the zone for Thelsamar Blood Sausages
.collect 3173,3,418,1 --Collect Bear Meat (x3)
step
    #sticky
    #completewith Thelsamar
>>Kill Boars in the zone for Thelsamar Blood Sausages
.collect 3172,3,418,1 --Collect Boar Intestines (x3)
step
    #label Thelsamar
.goto Loch Modan,39.3,27.0,100 >>Grind some mobs for Boar Intestines, Bear Meat and Spider Ichor en route
step
.goto Loch Modan,35.5,18.2,30 >>Go to the entrance of the cave whilst killing rats
step
.goto Loch Modan,35.5,19.9,12,0
.goto Loch Modan,36.4,20.7,12,0
.goto Loch Modan,35.3,22.0,12,0
.goto Loch Modan,35.9,22.1,12,0
.goto Loch Modan,36.3,24.7,12,0
.goto Loch Modan,35.7,24.3,12,0
.goto Loch Modan,34.9,24.9,12,0
.goto Loch Modan,35.7,24.3,12,0
.goto Loch Modan,36.3,24.7,12,0
.goto Loch Modan,35.9,22.1,12,0
.goto Loch Modan,35.3,22.0,12,0
.goto Loch Modan,36.4,20.7,12,0
.goto Loch Modan,35.5,19.9,12,0
    >>Collect the crates you find in the cave. Be careful because this can be difficult, and the geomancers flame ward (Fire immunity)
    .complete 307,1 --Collect Miners' Gear (x4)
step
.goto Loch Modan,35.5,18.2,30 >>Go back out the cave
step
    #sticky
    #completewith Kobolds
    .goto Loch Modan,42.9,9.9
    .vendor >> Vendor, repair if needed (optional)
step
    #label Kobolds
    >> Kill Kobolds. Loot them for their Ears
.complete 416,1 --Collect Tunnel Rat Ear (x12)
step
#sticky
#completewith Thelsamar3
>>Kill Spiders in the zone for Thelsamar Blood Sausages
.collect 3174,3,418,1 --Collect Spider Ichor (x3)
step
    #sticky
    #completewith Thelsamar3
>>Kill Bears in the zone for Thelsamar Blood Sausages
.collect 3173,3,418,1 --Collect Bear Meat (x3)
step
    #sticky
    #completewith Thelsamar3
>>Kill Boars in the zone for Thelsamar Blood Sausages
.collect 3172,3,418,1 --Collect Boar Intestines (x3)
step
    #label Thelsamar3
.goto Loch Modan,23.3,17.9,30 >>Run back to the bunker, grinding en route
step
    .goto Loch Modan,24.1,18.2
    .vendor >>vendor and repair
step
    .goto Loch Modan,24.7,18.3
.target Mountaineer Stormpike
>>Talk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 307 >> Turn in Filthy Paws
step
    .xp 13 >> Grind to 13
step
    #sticky
#label Meat9
.goto Loch Modan,26.9,10.7,40,0
    .goto Loch Modan,30.9,10.6,40,0
    .goto Loch Modan,28.6,15.4,40,0
    .goto Loch Modan,30.5,26.6,40,0
    .goto Loch Modan,33.4,30.3,40,0
    .goto Loch Modan,39.4,33.3,40,0
    .goto Loch Modan,26.9,10.7,40,0
    .goto Loch Modan,30.9,10.6,40,0
    .goto Loch Modan,28.6,15.4,40,0
    .goto Loch Modan,30.5,26.6,40,0
    .goto Loch Modan,33.4,30.3,40,0
    .goto Loch Modan,39.4,33.3,40,0
.goto Loch Modan,26.9,10.7
    >>Kill Bears. Loot them for Meat
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
step
    #sticky
#label Ichor9
.goto Loch Modan,31.9,16.4,40,0
    .goto Loch Modan,28.0,20.6,40,0
    .goto Loch Modan,33.8,40.5,40,0
    .goto Loch Modan,36.2,30.9,40,0
    .goto Loch Modan,39.0,32.1,40,0
    .goto Loch Modan,31.9,16.4,40,0
    .goto Loch Modan,28.0,20.6,40,0
    .goto Loch Modan,33.8,40.5,40,0
    .goto Loch Modan,36.2,30.9,40,0
    .goto Loch Modan,39.0,32.1,40,0
.goto Loch Modan,31.9,16.4
    >>Kill Spiders. Loot them for Ichor
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step
    #sticky
#label Intestines9
    .goto Loch Modan,38.0,34.9,40,0
    .goto Loch Modan,37.1,39.8,40,0
    .goto Loch Modan,29.8,35.9,40,0
    .goto Loch Modan,27.7,25.3,40,0
    .goto Loch Modan,28.6,22.6,40,0
    .goto Loch Modan,38.0,34.9,40,0
    .goto Loch Modan,37.1,39.8,40,0
    .goto Loch Modan,29.8,35.9,40,0
    .goto Loch Modan,27.7,25.3,40,0
    .goto Loch Modan,28.6,22.6,40,0
.goto Loch Modan,38.0,34.9
    >>Kill Boars. Loot them for Intestines
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step
    #requires Meat9
.goto Loch Modan,36.9,46.1,2500 >> .
step
    #requires Ichor9
.goto Loch Modan,36.9,46.1,2500 >> .
step
    #requires Intestines9
.goto Loch Modan,36.9,46.1,2500 >> .
step
.goto Loch Modan,32.6,49.9,40,0
.goto Loch Modan,37.2,46.1,40,0
.goto Loch Modan,36.7,41.6,40,0
.goto Loch Modan,32.6,49.9,40,0
.goto Loch Modan,37.2,46.1,40,0
.goto Loch Modan,36.7,41.6,40,0
    >>Find Kadrell, he patrols along the main road
.goto Loch Modan,36.9,46.1
.target Mountaineer Kadrell
>>Talk to |cRXP_FRIENDLY_Mountaineer Kadrell|r
    .turnin 416 >> Turn in Rat Catching
step
    >>Go inside the building
    .goto Loch Modan,37.2,46.9,15,0
    .goto Loch Modan,37.019,47.806
.target Brock Stoneseeker
>>Talk to |cRXP_FRIENDLY_Brock Stoneseeker|r
    .turnin 6392 >> Turn in Return to Brock
step
    .goto Loch Modan,34.828,49.283
.target Vidra Hearthstove
>>Talk to |cRXP_FRIENDLY_Vidra Hearthstove|r
    .turnin 418 >> Turn in Thelsamar Blood Sausages
step
    .goto Loch Modan,30.0,68.4,30,0
.goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
.goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
.goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    >>Kill Stonesplinter Troggs. Loot them for their Teeth
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
step
    #sticky
    #completewith FlyIF
    .money >0.5642
    .goto Loch Modan,30.0,68.4,30,0
.goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
.goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
.goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    +Grind until you have 56s 42c worth of vendorables+money, then skip this step
step
.goto Loch Modan,32.7,76.5,0
.xp 13+9200 >>Grind until 9200+/11000xp
step
.goto Loch Modan,22.2,73.3
.target Mountaineer Cobbleflint
>>Talk to |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .turnin 224 >> Turn in In Defense of the King's Lands
step
.goto Loch Modan,23.233,73.675
.target Captain Rugelfuss
>>Talk to |cRXP_FRIENDLY_Captain Rugelfuss|r
    .turnin 267 >> Turn in The Trogg Threat
step
    .xp 14 >>Grind to 14 at the troggs
step
    #sticky
    #completewith next
    .goto Loch Modan,32.0,47.2,150 >> Run to Thelsamar
step
.goto Loch Modan,33.938,50.954
    .fly Ironforge >> Fly to Ironforge
step
    #sticky
    #label Wand1
    #completewith Wand2
.goto Ironforge,25.8,75.2,0 >> Alternatively, buy a Greater Magic Wand from the AH if it costs <30s 6c
.collect 11288,1 --Collect Greater Magic Wand
step
    #label Wand2
    #completewith Wand1
    .goto Ironforge,24.0,16.7,20,0
.goto Ironforge,22.6,16.5
    .vendor >>Go in the building, then downstairs. Buy a Smoldering Wand
step
    #requires Wand2
.goto Ironforge,51.1,8.7,18 >>Enter the building
.goto Ironforge,50.4,6.3
    .train 6222 >>Train Corruption r2
    .train 755 >>Train Health Funnel
    .train 705 >>Train Shadow Bolt r3
step
    .goto Ironforge,53.2,7.8,18 >>Enter the building
.goto Ironforge,53.0,6.4
    .vendor >>Buy Consume Shadows r1, then Sacrifice r1
step
    .goto Ironforge,55.501,47.742
    .fly Menethil >> Fly to Menethil
step
    .money <0.076
    .goto Wetlands,10.4,56.0,15,0
.goto Wetlands,10.1,56.9,15,0
.goto Wetlands,10.6,57.2,15,0
.goto Wetlands,10.7,56.8
    .vendor >> If you have 7.6s, Check for Bronze Tube from Neal Allen and buy it if it's there
    .bronzetube
step
    .money <0.0385
.goto Wetlands,8.1,56.3
    .vendor >> Check Dewin for Heal Potions, buy down to 1s
step
    #sticky
#completewith next
+Wait here for the boat
.goto Wetlands,4.7,57.3
step
    .zone Darkshore >>Get onto the boat when it comes. Take it to Darkshore
step
    #sticky
    #completewith next
.goto Darkshore,36.8,44.3,0
.vendor >> You can buy cheap food from Laird on the bottom floor of the inn if you wish (20c level 5 food).
step
    >>Top floor of the Inn
.goto Darkshore,37.0,44.1
.target Wizbang Cranktoggle
>>Talk to |cRXP_FRIENDLY_Wizbang Cranktoggle|r
    .accept 983 >> Accept Buzzbox 827
step
    .goto Darkshore,38.8,43.4
.target Tharnariun Treetender
>>Talk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2118 >> Accept Plagued Lands
step
    .goto Darkshore,39.3,43.4
.target Terenthis
>>Talk to |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >> Accept How Big a Threat?
step
    .goto Darkshore,36.621,45.594
.target Gwennyth Bly'Leggonde
>>Talk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Accept Washed Ashore
step
    .goto Darkshore,36.3,45.6
    .fp Auberdine >> Get the Auberdine flight path
step
    #sticky
#completewith Darkshore2
>>Kill Crawlers. Loot them for their Legs whilst doing other quests
    .complete 983,1 --Collect Crawler Leg (x6)
step
    .goto Darkshore,36.4,50.9
    .complete 3524,1 --Collect Sea Creature Bones (x1)
step
    .goto Darkshore,38.3,52.7,30,0
    .goto Darkshore,38.9,62.0,30,0
    .goto Darkshore,38.3,52.7,30,0
    .goto Darkshore,38.9,62.0,30,0
    .goto Darkshore,38.3,52.7
    >>Keep going south until you find a Rabid Bear, use Tharnariun's Hope in your bags when you aggro one
    .complete 2118,1 --Rabid Thistle Bear Captured
step
    #label Darkshore2
.goto Darkshore,39.0,53.2
    .complete 984,1 --Find a corrupt furbolg camp
step
.goto Darkshore,36.7,52.4,40,0
.goto Darkshore,35.6,47.6,40,0
.goto Darkshore,36.2,44.5,40,0
.goto Darkshore,36.7,52.4,40,0
.goto Darkshore,35.6,47.6,40,0
.goto Darkshore,36.2,44.5,40,0
>>Kill Crawlers. Loot them for their Legs
    .complete 983,1 --Collect Crawler Leg (x6)
step
    .goto Darkshore,36.6,46.3
    .turnin 983 >> Turn in Buzzbox 827
step
    .goto Darkshore,36.621,45.594
.target Gwennyth Bly'Leggonde
>>Talk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >> Turn in Washed Ashore
step
    .goto Darkshore,38.8,43.4
.target Tharnariun Treetender
>>Talk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2118 >> Turn in Plagued Lands
step
    .goto Darkshore,39.3,43.4
.target Terenthis
>>Talk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Turn in How Big a Threat?
step
    .goto Darkshore,36.621,45.594
    .abandon 1001 >> Abandon Buzzbox 411
step
    #sticky
#completewith Azuremyst
+Wait here for the boat
.goto Darkshore,30.8,41.0
step
    .goto Darkshore,30.8,41.0
.abandon 4681 >> Abandon Washed Ashore
step
    #label Azuremyst
    .zone Azuremyst Isle >>Get onto the boat when it comes
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance Hunter
#name 1-11 Dun Morogh
#version 1
#group RestedXP Alliance 1-20
#defaultfor Dwarf Hunter
#next 11-14 Darkshore
step << !Gnome !Dwarf
    #sticky
    #completewith next
.goto Dun Morogh,29.927,71.201
    +You have selected a guide meant for Gnomes and Dwarves. You should choose the same starter zone that you start in
step
    .goto Dun Morogh,29.93,71.20 << tbc
    .goto Dun Morogh,29.87,71.87 << wotlk
    >>Speak to Sten Stoutarm
.target Sten Stoutarm
>>Talk to |cRXP_FRIENDLY_Sten Stoutarm|r
    .accept 179 >>Accept Dwarven Outfitters
step
    .goto Dun Morogh,29.0,74.4
    .complete 179,1 --Tough Wolf Meat (8)
step
    .goto Dun Morogh,29.93,71.20 << tbc
    .goto Dun Morogh,29.87,71.87 << wotlk
>>Talk to |cRXP_FRIENDLY_Sten Stoutarm|r
    .turnin 179 >>Turn in Dwarven Outfitters
.target Sten Stoutarm
    .accept 233 >>Accept Coldridge Valley Mail Delivery
    .accept 3108 >>Accept Etched Rune
step
#xprate <1.5
    .goto Dun Morogh,29.7,71.3
    >>Speak to Balir Frosthammer
.target Balir Frosthammer
>>Talk to |cRXP_FRIENDLY_Balir Frosthammer|r
    .accept 170 >>Accept A New Threat
step
#xprate <1.5
    #sticky
    #label Rockjaw
    >>Kill Normal Rockjaw Troggs that you see
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step
#xprate <1.5
    .goto Dun Morogh,26.9,72.7,30,0
    .goto Dun Morogh,25.1,72.1,30,0
    .goto Dun Morogh,26.9,72.7,30,0
    .goto Dun Morogh,25.1,72.1,30,0
    >>Kill Burly Rockjaw Troggs
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
step
    .goto Dun Morogh,22.601,71.433
    >>Speak to Talin Keeneye
>>Talk to |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 233 >>Turn in Coldridge Valley Mail Delivery
.target Talin Keeneye
    .accept 234 >>Accept Coldridge Valley Mail Delivery
    .accept 183 >>Accept The Boar Hunter
step
    .goto Dun Morogh,22.2,72.5,40,0
    .goto Dun Morogh,20.5,71.4,40,0
    .goto Dun Morogh,21.1,69.0,40,0
    .goto Dun Morogh,22.8,69.6,40,0
    .goto Dun Morogh,22.2,72.5,40,0
    .goto Dun Morogh,20.5,71.4,40,0
    .goto Dun Morogh,21.1,69.0,40,0
    .goto Dun Morogh,22.8,69.6,40,0
    >>Kill Boars in the area
    .complete 183,1 --Kill Small Crag Boar (x12)
step
    .goto Dun Morogh,22.601,71.433
.target Talin Keeneye
>>Talk to |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 183 >>Turn in The Boar Hunter
step
    .goto Dun Morogh,25.076,75.713
    >>Speak to Grelin Whitebeard
>>Talk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 234 >>Turn in Coldridge Valley Mail Delivery
.target Grelin Whitebeard
    .accept 182 >>Accept The Troll Cave
step
#completewith next
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
>>Kill Frostmane Troll Whelps
.complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .goto Dun Morogh,25.076,75.713
step
    .xp 4 >> Grind to 4
step
    #requires Rockjaw
    .goto Dun Morogh,25.0,75.9
.target Nori Pridedrift
>>Talk to |cRXP_FRIENDLY_Nori Pridedrift|r
    .accept 3364 >>Accept Scalding Mornbrew Delivery
step
    #completewith next
    .hs >> Hearth back to the starting area
step
#xprate <1.5
    .goto Dun Morogh,29.7,71.3
    >>Speak to Balir Frosthammer
.target Balir Frosthammer
>>Talk to |cRXP_FRIENDLY_Balir Frosthammer|r
    .turnin 170 >>Turn in A New Threat
step
    .goto Dun Morogh,29.1,67.5
    >>Speak to Thorgas Grimson
.target Thorgas Grimson
>>Talk to |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 3108 >>Turn in Etched Rune
        .train 1978 >> Train Serpent Sting
step
    .goto Dun Morogh,28.8,66.5
    >>Speak to Durnan Furcutter
>>Talk to |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >>Turn in Scalding Mornbrew Delivery
.target Durnan Furcutter
    .accept 3365 >>Accept Bring Back the Mug
step
    .goto Dun Morogh,25.0,75.9
.target Nori Pridedrift
>>Talk to |cRXP_FRIENDLY_Nori Pridedrift|r
    .turnin 3365 >>Turn in Bring Back the Mug
step
#completewith next
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
>>Kill Frostmane Troll Whelps
.complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .goto Dun Morogh,25.076,75.713
step
    .goto Dun Morogh,25.0,75.9
>>Talk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 182 >>Turn in The Troll Cave
.target Grelin Whitebeard
    .accept 218 >>Accept The Stolen Journal
step
    .goto Dun Morogh,26.8,79.9,30,0
    .goto Dun Morogh,29.0,79.0,15,0
.goto Dun Morogh,30.6,80.3
    >>Enter the Troll cave. Kill Grik'nir, then loot him for Grelin's journal
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
step
.goto Dun Morogh,28.4,79.7,30,0
.goto Dun Morogh,26.8,79.6,20 >>Run back out the cave
step
    .goto Dun Morogh,25.076,75.713
>>Talk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 218 >> Turn in The Stolen Journal
.target Grelin Whitebeard
    .accept 282 >> Accept Senir's Observations
step
    .goto Dun Morogh,33.484,71.841
    >>Speak to Mountaineer Thalos
>>Talk to |cRXP_FRIENDLY_Mountaineer Thalos|r
    .turnin 282 >>Turn in Senir's Observations
.target Mountaineer Thalos
    .accept 420 >>Accept Senir's Observations
step
    .goto Dun Morogh,33.8,72.2
    >>Speak to Hands Springsprocket
.target Hands Springsprocket
>>Talk to |cRXP_FRIENDLY_Hands Springsprocket|r
    .accept 2160 >>Accept Supplies to Tannok
step
.goto Dun Morogh,34.1,71.6,20,0
.goto Dun Morogh,35.7,66.0,20 >>Go through the tunnel
step
    #sticky
#completewith BoarMeat3
>> Kill boars to get some Boar Meat for later
.collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    #sticky
#completewith BoarRibs
>> Kill boars to get some Boar Ribs for later
.collect 2886,6 --Collect Crag Boar Rib (x6)
step
    #label BoarMeat3
.goto Dun Morogh,46.726,53.826,100 >> Run to Kharanos
step
    #label BoarRibs
.zone Dun Morogh >> .
step
.goto Dun Morogh,46.726,53.826
.target Senir Whitebeard
>>Talk to |cRXP_FRIENDLY_Senir Whitebeard|r
    .turnin 420 >> Turn in Senir's Observations
step
    .goto Dun Morogh,46.8,52.4
    >>Speak to Ragnar Thunderbrew
.target Ragnar Thunderbrew
>>Talk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r
    .accept 384 >>Accept Beer Basted Boar Ribs
step
    .goto Dun Morogh,47.217,52.195
    >>Speak to Tannok Frosthammer
.target Tannok Frosthammer
>>Talk to |cRXP_FRIENDLY_Tannok Frosthammer|r
    .turnin 2160 >>Turn in Supplies to Tannok
step
    .goto Dun Morogh,46.021,51.676
    >>Speak to Tharek Blackstone
.target Tharek Blackstone
>>Talk to |cRXP_FRIENDLY_Tharek Blackstone|r
    .accept 400 >>Accept Tools for Steelgrill
step
    .goto Dun Morogh,49.5,48.3
    >>Speak to Pilot Bellowfiz
.target Pilot Bellowfiz
>>Talk to |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .accept 317 >>Accept Stocking Jetsteam
step
#xprate <1.5
    .goto Dun Morogh,49.6,48.5
    >>Speak to Pilot Stonegear
.target Pilot Stonegear
>>Talk to |cRXP_FRIENDLY_Pilot Stonegear|r
    .accept 313 >>Accept The Grizzled Den
step
    .goto Dun Morogh,50.084,49.420
    >>Speak to Loslor Rudge
.target Loslor Rudge
>>Talk to |cRXP_FRIENDLY_Loslor Rudge|r
    .accept 5541 >>Accept Ammo for Rumbleshot
step
    .goto Dun Morogh,50.4,49.1
    >>Speak to Beldin Steelgrill
.target Beldin Steelgrill
>>Talk to |cRXP_FRIENDLY_Beldin Steelgrill|r
    .turnin 400 >>Turn in Tools for Steelgrill
step
    #sticky
#completewith BoarRibs2
>> Kill boars to get Boar Ribs for later
.collect 2886,6 --Collect Crag Boar Rib (x6)
step
.goto Dun Morogh,52.0,50.1,40,0
.goto Dun Morogh,51.5,53.9,40,0
.goto Dun Morogh,50.1,53.9,40,0
.goto Dun Morogh,49.9,50.9,40,0
.goto Dun Morogh,48.0,49.5,40,0
.goto Dun Morogh,48.2,46.9,40,0
.goto Dun Morogh,43.5,52.5,40,0
.goto Dun Morogh,52.0,50.1,40,0
.goto Dun Morogh,51.5,53.9,40,0
.goto Dun Morogh,50.1,53.9,40,0
.goto Dun Morogh,49.9,50.9,40,0
.goto Dun Morogh,48.0,49.5,40,0
.goto Dun Morogh,48.2,46.9,40,0
.goto Dun Morogh,43.5,52.5,40,0
.goto Dun Morogh,52.0,50.1,40,0
.goto Dun Morogh,51.5,53.9,40,0
.goto Dun Morogh,50.1,53.9,40,0
.goto Dun Morogh,49.9,50.9,40,0
.goto Dun Morogh,48.0,49.5,40,0
.goto Dun Morogh,48.2,46.9,40,0
.goto Dun Morogh,43.5,52.5,40,0
.goto Dun Morogh,52.0,50.1,40,0
.goto Dun Morogh,51.5,53.9,40,0
.goto Dun Morogh,50.1,53.9,40,0
.goto Dun Morogh,49.9,50.9,40,0
.goto Dun Morogh,48.0,49.5,40,0
.goto Dun Morogh,48.2,46.9,40,0
.goto Dun Morogh,43.5,52.5,40,0
    >>Get the items for Stocking Jetsteam
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
.complete 317,2 --Collect Thick Bear Fur (x2)
step
    .goto Dun Morogh,49.426,48.410
    >>Speak to Pilot Bellowfiz
>>Talk to |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .turnin 317 >>Turn in Stocking Jetsteam
.target Pilot Bellowfiz
    .accept 318 >>Accept Evershine
step
    .xp 6
step << Hunter
    .goto Dun Morogh,45.8,53.1
    .train 3044 >> Train Arcane Shot
step
    >>Loot the crate
.goto Dun Morogh,44.1,56.9
    .complete 5541,1 --Rumbleshot's Ammo (1)
step
    .goto Dun Morogh,40.682,65.130
    >>Speak to Hegnar Rumbleshot
.target Hegnar Rumbleshot
>>Talk to |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    .turnin 5541 >>Turn in Ammo for Rumbleshot
step << Hunter
    .goto Dun Morogh,40.682,65.130
    >>Buy the level 4 gun upgrade, skip this step if you don't have the money for it
    .collect 2509,1
step
#xprate <1.5
.goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
.goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
.goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
.goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
    >> Go into the cave. Kill Wendigos. Loot them for their Manes
    .complete 313,1 --Collect Wendigo Mane (x8)
step
    .xp 7
step
>>Grind some mobs en route
    .goto Dun Morogh,35.2,56.4,50,0
    .goto Dun Morogh,36.0,52.0,50,0
    .goto Dun Morogh,34.6,51.7
.target Tundra MacGrann
>>Talk to |cRXP_FRIENDLY_Tundra MacGrann|r
    .accept 312 >> Accept Tundra MacGrann's Stolen Stash
step
    .goto Dun Morogh,38.5,54.0
    >>Wait until Old Icebeard leaves the cave so you can sneak in and loot the chest, or do this
        .link https://www.youtube.com/watch?v=o55Y3LjgKoE >>CLICK HERE
    .complete 312,1 --MacGrann's Dried Meats (1)
step
    .goto Dun Morogh,34.6,51.6
.target Tundra MacGrann
>>Talk to |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >>Turn in Tundra MacGrann's Stolen Stash
step
    .goto Dun Morogh,30.2,45.8
    >>Speak to Rejold Barleybrew
>>Talk to |cRXP_FRIENDLY_Rejold Barleybrew|r
    .turnin 318 >>Turn in Evershine
.target Rejold Barleybrew
    .accept 319 >>Accept A Favor for Evershine
    .accept 315 >>Accept The Perfect Stout
step
    .goto Dun Morogh,30.2,45.4
    >>Speak to Marleth Barleybrew
.target Marleth Barleybrew
>>Talk to |cRXP_FRIENDLY_Marleth Barleybrew|r
    .accept 310 >>Accept Bitter Rivals
    #label BoarRibs2
step
    #title Secondary objective
    #completewith next
    >> Kill Bears, Boars and Leopards
.complete 319,1 --Kill Ice Claw Bear (x6)
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .complete 319,3 --Kill Snow Leopard (x8)
step << Hunter
>>Start moving back to Kharanos while completing your other quest objectives on the way there.
    .xp 8-1400
    .complete 384,1
step << Hunter
#xprate <1.5
    .goto Dun Morogh,49.6,48.5
.target Pilot Stonegear
>>Talk to |cRXP_FRIENDLY_Pilot Stonegear|r
    .turnin 313 >>Turn in The Grizzled Den
step
    .goto Dun Morogh,47.4,52.5
    >>Buy the following items from the innkeeper:
    .complete 384,2 --Rhapsody Malt (1)
    .collect 2686,1,311 --Thunder Ale
step
    .goto Dun Morogh,47.7,52.6
    >>Head downstairs, give the Thunder Ale to Jarven and then click on the Unguarded Barrel
    .turnin 310 >>Turn in Bitter Rivals
    .accept 311 >>Accept Return to Marleth
step
    .goto Dun Morogh,47.3,52.5
    .home >> Set your Hearthstone to Kharanos
step
    .goto Dun Morogh,46.9,52.4
    >>Speak to Ragnar Thunderbrew
.target Ragnar Thunderbrew
>>Talk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r
    .turnin 384 >>Turn in Beer Basted Boar Ribs
step
    .goto Dun Morogh,46.7,53.9
.target Senir Whitebeard
>>Talk to |cRXP_FRIENDLY_Senir Whitebeard|r
    .accept 287 >>Accept Frostmane Hold
step << Hunter
    .goto Dun Morogh,45.810,53.039
    .train 5116>> Train Concussive Shot
step
    .goto Dun Morogh,63.1,49.8
    >>Speak to Rudra Amberstill
.target Rudra Amberstill
>>Talk to |cRXP_FRIENDLY_Rudra Amberstill|r
    .accept 314 >>Accept Protecting the Herd
step
    #sticky
    #completewith next
    .goto Dun Morogh,62.3,50.3,12,0
    .goto Dun Morogh,62.2,49.4,8 >>Run up this part of the mountain
step
    >>Kill Vagash. Loot him for his Fang
.goto Dun Morogh,62.6,46.1
    .complete 314,1 --Collect Fang of Vagash (x)
step
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>Talk to |cRXP_FRIENDLY_Rudra Amberstill|r
    .turnin 314 >> Turn in Protecting the Herd
step
    .goto Dun Morogh,69.084,56.330
    >>Speak to Foreman Stonebrow
.target Foreman Stonebrow
>>Talk to |cRXP_FRIENDLY_Foreman Stonebrow|r
    .accept 432 >>Accept Those Blasted Troggs!
step
    >>Kill Troggs
.goto Dun Morogh,70.6,58.7,40,0
    .goto Dun Morogh,67.2,59.4,40,0
    .complete 432,1 --Rockjaw Skullthumper (6)
step
    .goto Dun Morogh,69.1,56.4
.target Foreman Stonebrow
>>Talk to |cRXP_FRIENDLY_Foreman Stonebrow|r
    .turnin 432 >>Turn in Those Blasted Troggs!
step
    .goto Dun Morogh,68.9,55.9
    .vendor >> vendor trash, repair
step
    #completewith next
    .goto Dun Morogh,81.2,42.7,25 >>Grind a bit en route, go inside the tunnel
step
    .goto Dun Morogh,83.8,39.2
.target Pilot Hammerfoot
>>Talk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .accept 419 >> Accept The Lost Pilot
step
    >>Grind en route
.goto Dun Morogh,79.7,36.2
    .turnin 419 >> Turn in The Lost Pilot
    .accept 417 >> Accept A Pilot's Revenge
step
    >>Kill Mangeclaw. Loot him for his Claw
.goto Dun Morogh,80.0,36.4
    .complete 417,1 --Collect Mangy Claw (x1)
step
    .goto Dun Morogh,83.892,39.188
.target Pilot Hammerfoot
>>Talk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .turnin 417 >> Turn in A Pilot's Revenge
step << tbc
    #sticky
    #completewith next
    .deathskip >> Die on purpose and respawn at Kharanos
step << wotlk
    .goto Loch Modan,23.2,17.7
    .zone Loch Modan >> Take the tunnel northeast to Loch Modan
step << wotlk
    >>Once you get to Loch modan, die on purpose and respawn at Thelsamar
    .goto Loch Modan,33.938,50.954
    .fp Thelsamar >> Get the Thelsamar flight path
step << wotlk
    .hs >> Hearth to Kharanos
step
#xprate <1.5
    .goto Dun Morogh,45.8,49.4
.target Razzle Sprysprocket
>>Talk to |cRXP_FRIENDLY_Razzle Sprysprocket|r
    .accept 412 >> Accept Operation Recombobulation
step
#completewith next
.goto Dun Morogh,43.1,45.0,20,0
.goto Dun Morogh,42.1,45.4,20 >> Run up the ramp to Shimmerweed
step
    .goto Dun Morogh,40.9,45.3,30,0
    .goto Dun Morogh,41.5,43.6,30,0
    .goto Dun Morogh,39.7,40.0,30,0
    .goto Dun Morogh,42.1,34.3,30,0
    >>Clear mobs in this area. Be careful if you need to clear the middle camp. You can pull the mobs in the huts and line of sight (LoS) them behind the huts if you need 2 more mobs. If you get unlucky, run to the other area
    .complete 315,1 --Collect Shimmerweed (x6)
step
    .goto Dun Morogh,30.186,45.531
.target Marleth Barleybrew
>>Talk to |cRXP_FRIENDLY_Marleth Barleybrew|r
    .turnin 311 >>Turn in Return to Marleth
>>Talk to |cRXP_FRIENDLY_Rejold Barleybrew|r
    .turnin 315 >>Turn in The Perfect Stout
.target Rejold Barleybrew
    .accept 413 >>Accept Shimmer Stout << tbc
step
    .goto Dun Morogh,31.5,38.9,40,0
    .goto Dun Morogh,28.3,39.9,40,0
    .goto Dun Morogh,28.7,43.7,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,30.0,51.8,40,0
.goto Dun Morogh,31.5,38.9,40,0
    .goto Dun Morogh,28.3,39.9,40,0
    .goto Dun Morogh,28.7,43.7,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,30.0,51.8,40,0
    >> Kill Bears, Boars and Leopards
.complete 319,1 --Kill Ice Claw Bear (x6)
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .complete 319,3 --Kill Snow Leopard (x8)
step
    .goto Dun Morogh,30.189,45.725
    >>Speak to Rejold Barleybrew
>>Talk to |cRXP_FRIENDLY_Rejold Barleybrew|r
    .turnin 319 >>Turn in A Favor for Evershine
.target Rejold Barleybrew
    .accept 320 >>Accept Return to Bellowfiz
step
    #sticky
#label hh
    .complete 287,2 --Frostmane Headhunter (5)
step
    >>Be very careful not to die here
    .goto Dun Morogh,22.3,50.7,20,0
    .goto Dun Morogh,22.5,51.5,20,0
.goto Dun Morogh,22.7,52.0
    .complete 287,1 --Fully explore Frostmane Hold (1)
step
#xprate <1.5
    #requires hh
    .goto Dun Morogh,27.2,43.0,40,0
    .goto Dun Morogh,24.8,39.3,40,0
    .goto Dun Morogh,25.6,43.4,40,0
    .goto Dun Morogh,24.3,44.0,40,0
    .goto Dun Morogh,25.4,45.4,40,0
.goto Dun Morogh,27.2,43.0,40,0
    .goto Dun Morogh,24.8,39.3,40,0
    .goto Dun Morogh,25.6,43.4,40,0
    .goto Dun Morogh,24.3,44.0,40,0
    .goto Dun Morogh,25.4,45.4,40,0
    >>Kill Leper Gnomes. Loot them for Gears and Cogs
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
step << tbc
    .goto Dun Morogh,30.9,33.1,15 >>Run up the mountain north
step << tbc
    .goto Dun Morogh,32.4,29.1,15 >>Follow it up to here
step << tbc
.goto Dun Morogh,33.0,27.2,15,0
    .goto Dun Morogh,33.0,25.2,15,0
    .goto Wetlands,11.6,43.4,60,0
.deathskip >>Keep running straight north, drop down and die, then respawn
step << tbc
.goto Wetlands,12.7,46.7,30 >> Swim to shore
step << tbc
.goto Wetlands,9.5,59.7
    .fp Menethil >> Get the Menethil Harbor flight path
step << tbc
    #completewith next
    .hs >> Hearth back to Kharanos
step
    .goto Dun Morogh,46.7,53.7
    >>Speak to Senir Whitebeard
>>Talk to |cRXP_FRIENDLY_Senir Whitebeard|r
    .turnin 287 >>Turn in Frostmane Hold
.target Senir Whitebeard
    .accept 291 >>Accept The Reports
step
#xprate <1.5
    .goto Dun Morogh,45.9,49.4
    >>Speak to Razzle Sprysprocket
.target Razzle Sprysprocket
>>Talk to |cRXP_FRIENDLY_Razzle Sprysprocket|r
    .turnin 412 >>Turn in Operation Recombobulation
step
    .goto Dun Morogh,49.4,48.3
    >>Speak to Pilot Bellowfiz
.target Pilot Bellowfiz
>>Talk to |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .turnin 320 >>Turn in Return to Bellowfiz
step
    .goto Dun Morogh,45.810,53.039
    >>Speak to Grif Wildheart
.target Grif Wildheart
>>Talk to |cRXP_FRIENDLY_Grif Wildheart|r
    .accept 6064 >>Accept Taming the Beast
step
    .goto Dun Morogh,48.3,56.9
>>Click the taming rod in your bag on a Large Crag Boar. Try to do it at max range (30 yards)
    .complete 6064,1 --Tame a Large Crag Boar (1)
step
    .goto Dun Morogh,45.810,53.039
>>Talk to |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6064 >>Turn in Taming the Beast
.target Grif Wildheart
    .accept 6084 >>Accept Taming the Beast
step
    .goto Dun Morogh,49.4,59.4
>>Click the taming rod in your bag on a Snow Leopard. Try to do it at max range (30 yards)
    .complete 6084,1 --Tame a Snow Leopard (1)
step
    .goto Dun Morogh,45.810,53.039
>>Talk to |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6084 >>Turn in Taming the Beast
.target Grif Wildheart
    .accept 6085 >>Accept Taming the Beast
step
    .goto Dun Morogh,50.4,59.7
>>Click the taming rod in your bag on an Ice Claw Bear. Try to do it at max range (30 yards)
    .complete 6085,1 --Tame an Ice Claw Bear (1)
step
    .goto Dun Morogh,45.810,53.039
>>Talk to |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6085 >>Turn in Taming the Beast
.target Grif Wildheart
    .accept 6086 >>Accept Training the Beast
step << tbc
    #sticky
#completewith next
    +Tame an Ice Claw Bear or a Winter Wolf on your way to Ironforge
    .goto Dun Morogh,49.0,44.6,30,0
.goto Dun Morogh,45.7,42.2,30,0
step << tbc
    .goto Ironforge,16.5,84.1
.zone Ironforge >> Head to Ironforge
step << wotlk
#completewith next
    .tame >> Tame a level 8+ wolf
step << wotlk
    .goto Dun Morogh,30.9,33.1,15 >>Run up the mountain north
step << wotlk
    .goto Dun Morogh,32.4,29.1,15 >>Follow it up to here
step << wotlk
.goto Dun Morogh,33.0,27.2,15,0
    .goto Dun Morogh,33.0,25.2,15,0
    .goto Wetlands,11.6,43.4,60,0
.deathskip >>Keep running straight north, drop down and die, then respawn
step << wotlk
.goto Wetlands,12.7,46.7,30 >> Swim to shore
step << wotlk
.goto Wetlands,9.5,59.7
    .fp Menethil >> Get the Menethil Harbor flight path
    .fly Ironforge >> Fly to Ironforge
step
    .goto Ironforge,39.6,56.9
.target Senator Barin Redstone
>>Talk to |cRXP_FRIENDLY_Senator Barin Redstone|r
    .turnin 291 >>Turn in The Reports
step
    #sticky
    .money <0.1500
    .goto Ironforge,61.5,89.2
    >>Buy the level 9 gun upgrade
    .collect 2511,1
step
    .goto Ironforge,70.863,85.831
    >>Speak to Belia Thundergranite
.target Belia Thundergranite
>>Talk to |cRXP_FRIENDLY_Belia Thundergranite|r
    .turnin 6086 >>Turn in Training the Beast
step
#completewith next
.goto Ironforge,77.0,51.0,20 >>Enter the Deeprun Tram
step
    >>Speak to the gnome at the middle platform of the train station
.target Monty
>>Talk to |cRXP_FRIENDLY_Monty|r
    .accept 6661 >> Accept Deeprun Rat Roundup
step
    .use 17117>>Use your flute on the rats scattered around
    .complete 6661,1 --Rats Captured (x5)
step << wotlk
>>Talk to |cRXP_FRIENDLY_Monty|r
    .turnin 6661 >> Turn in Deeprun Rat Roundup
.target Monty
    .accept 6662 >> Accept Me Brother, Nipsy
step << wotlk
     >> Ride to the other side of the tram and turn in
.target Nipsy
>>Talk to |cRXP_FRIENDLY_Nipsy|r
    .turnin 6662 >> Turn in Me Brother, Nipsy
step << wotlk
    .zone Stormwind City >> Exit the tram into Stormwind
step << wotlk
    .goto StormwindClassic,57.0,57.6
    .trainer >>Train Crossbows at the trade district
step << wotlk
    >>Head to the Stormwind Harbor
    .goto StormwindNew,21.8,56.2
    .zone Darkshore >> Take the boat to Darkshore
step << tbc
.goto Ironforge,77.0,51.0,40 >>Go back into Ironforge
step << tbc
    .goto Ironforge,55.501,47.742
    .fly Menethil >> Fly to Menethil
step << tbc
    .goto Wetlands,4.6,57.2
    .zone Darkshore >> Take the boat to Darkshore. Make bandages or sharpening stones while you wait.
]])
