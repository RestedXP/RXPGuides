RXPGuides.RegisterGuide([[
#classic
#group RestedXP Endgame Guides
#subgroup Feralheart Set Guide << Druid
#subgroup Beastmaster Set Guide << Hunter
#subgroup Sorcerer's Set Guide << Mage
#subgroup Soulforge Set Guide << Paladin
#subgroup Darkmantle Set Guide << Rogue
#subgroup The Five Thunders Set Guide << Shaman
#subgroup Deathmist Set Guide << Warlock
#subgroup Heroism Set Guide << Warrior
#subgroup Virtuous Set Guide << Priest
#name Part 1: Bracers
#next Part 2: Belt & Gloves


step
    >>Obtain the |T132608:0|t[|cRXP_LOOT_Wildheart Bracers|r]. This is a Bind-on-Equip drop in |cFFfa9602Stratholme|r << Druid
    >>Obtain the |T132616:0|t[|cRXP_LOOT_Beaststalker's Bindings|r]. This is a Bind-on-Equip drop in |cFFfa9602Stratholme|r and |cFFfa9602Blackrock Spire|r << Hunter
    >>Obtain the |T133365:0|t[|cRXP_LOOT_Magister's Bindings|r]. This is a Bind-on-Equip drop in |cFFfa9602Blackrock Spire|r << Mage
    >>Obtain the |T132613:0|t[|cRXP_LOOT_Lightforge Bracers|r]. This is a Bind-on-Equip drop in |cFFfa9602Stratholme|r << Paladin
    >>Obtain the |T132520:0|t[|cRXP_LOOT_Devout Bracers|r]. This is a Bind-on-Equip drop in |cFFfa9602Stratholme|r << Priest
    >>Obtain the |T132606:0|t[|cRXP_LOOT_Shadowcraft Bracers|r]. This is a Bind-on-Equip drop in |cFFfa9602Scholomance|r << Rogue
    >>Obtain the |T132601:0|t[|cRXP_LOOT_Bindings of Elements|r]. This is a Bind-on-Equip drop in |cFFfa9602Stratholme|r << Shaman
    >>Obtain the |T132612:0|t[|cRXP_LOOT_Dreadmist Bracers|r]. This is a Bind-on-Equip drop in |cFFfa9602Blackrock Spire|r << Warlock
    >>Obtain the |T132617:0|t[|cRXP_LOOT_Bracers of Valor|r]. This is a Bind-on-Equip drop in |cFFfa9602Blackrock Spire|r << Warrior
    >>|cRXP_WARN_Alternatively buy them from the Auction House << !sod
    >>|cRXP_WARN_Alternatively buy them from the Auction House or from |cRXP_FRIENDLY_Pix Xizzix|r in Booty Bay in exchange for|r |T133799:0|t[|cRXP_FRIENDLY_Tarnished Undermine Real|r] << sod
    .collect 16714,1,8905,1 << Alliance Druid --Wildheart Bracers (x1)
    .collect 16681,1,8906,1 << Alliance Hunter --Beaststalker's Bindings (x1)
    .collect 16683,1,8907,1 << Alliance Mage --Magister's Bindings (x1)
    .collect 16722,1,8908,1 << Alliance Paladin --Lightforge Bracers (x1)
    .collect 16697,1,8909,1 << Alliance Priest --Devout Bracers (x1)
    .collect 16710,1,8910,1 << Alliance Rogue --Shadowcraft Bracers (x1)
    .collect 16703,1,8911,1 << Alliance Warlock --Dreadmist Bracers (x1)
    .collect 16735,1,8912,1 << Alliance Warrior --Bracers of Valor (x1)
    .collect 16714,1,8913,1 << Horde Druid --Wildheart Bracers (x1)
    .collect 16681,1,8914,1 << Horde Hunter --Beaststalker's Bindings (x1)
    .collect 16683,1,8915,1 << Horde Mage --Magister's Bindings (x1)
    .collect 16697,1,8916,1 << Horde Priest --Devout Bracers (x1)
    .collect 16710,1,8917,1 << Horde Rogue --Shadowcraft Bracers (x1)
    .collect 16671,1,8918,1 << Horde Shaman --Bindings of Elements (x1)
    .collect 16703,1,8919,1 << Horde Warlock --Dreadmist Bracers (x1)
    .collect 16735,1,8920,1 << Horde Warrior --Bracers of Valor (x1)
    .equip 9,16714 << Druid
    .equip 9,16681 << Hunter
    .equip 9,16683 << Mage
    .equip 9,16722 << Paladin
    .equip 9,16697 << Priest
    .equip 9,16710 << Rogue
    .equip 9,16703 << Warlock
    .equip 9,16735 << Warrior
    .equip 9,16671 << Shaman
step << Alliance
    #completewith next
    .zone Ironforge >>Travel to |cFFfa9602Ironforge|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deliana|r
    .accept 8905 >>Accept An Earnest Proposition << Druid
    .accept 8906 >>Accept An Earnest Proposition << Hunter
    .accept 8907 >>Accept An Earnest Proposition << Mage
    .accept 8908 >>Accept An Earnest Proposition << Paladin
    .accept 8909 >>Accept An Earnest Proposition << Priest
    .accept 8910 >>Accept An Earnest Proposition << Rogue
    .accept 8911 >>Accept An Earnest Proposition << Warlock
    .accept 8912 >>Accept An Earnest Proposition << Warrior
    .target Deliana
step << Alliance
    #completewith next
    .zone Winterspring >>Travel to |cFFfa9602Winterspring|r
step << Alliance
    #loop
    .goto Winterspring,50.54,14.27,0
    .goto Winterspring,50.54,14.27,50,0
    .goto Winterspring,48.52,12.15,50,0
    .goto Winterspring,49.72,8.84,50,0
    .goto Winterspring,48.54,7.89,50,0
    .goto Winterspring,49.67,7.03,50,0
    .goto Winterspring,51.94,9.31,50,0
    .goto Winterspring,51.64,11.34,50,0
    >>Kill all types of |cRXP_ENEMY_Shardtooth Bears|r and |cRXP_ENEMY_Frostsabers|r. Loot them for their |cRXP_LOOT_Winterspring Blood Samples|r
    .complete 8905,1 << Druid --Winterspring Blood Sample (x15)
    .complete 8906,1 << Hunter --Winterspring Blood Sample (x15)
    .complete 8907,1 << Mage --Winterspring Blood Sample (x15)
    .complete 8908,1 << Paladin --Winterspring Blood Sample (x15)
    .complete 8909,1 << Priest --Winterspring Blood Sample (x15)
    .complete 8910,1 << Rogue --Winterspring Blood Sample (x15)
    .complete 8911,1 << Warlock --Winterspring Blood Sample (x15)
    .complete 8912,1 << Warrior --Winterspring Blood Sample (x15)
    .mob Frostsaber Cub
    .mob Frostsaber
    .mob Frostsaber Stalker
    .mob Frostsaber Huntress
    .mob Frostsaber Pride Watcher
    .mob Shardtooth Mauler
    .mob Elder Shardtooth
    .mob Rabid Shardtooth
    .mob Shardtooth Bear
step << Alliance
    #completewith next
    .zone Ironforge >>Travel to |cFFfa9602Ironforge|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deliana|r
    >>|cRXP_WARN_You will need 20 gold and|r |T132608:0|t[|cRXP_LOOT_Wildheart Bracers|r] |cRXP_WARN_to turn in this quest|r << Druid
    >>|cRXP_WARN_You will need 20 gold and|r |T132616:0|t[|cRXP_LOOT_Beaststalker's Bindings|r] |cRXP_WARN_to turn in this quest|r << Hunter
    >>|cRXP_WARN_You will need 20 gold and|r |T133365:0|t[|cRXP_LOOT_Magister's Bindings|r] |cRXP_WARN_to turn in this quest|r << Mage
    >>|cRXP_WARN_You will need 20 gold and|r |T132613:0|t[|cRXP_LOOT_Lightforge Bracers|r] |cRXP_WARN_to turn in this quest|r << Paladin
    >>|cRXP_WARN_You will need 20 gold and|r |T132520:0|t[|cRXP_LOOT_Devout Bracers|r] |cRXP_WARN_to turn in this quest|r << Priest
    >>|cRXP_WARN_You will need 20 gold and|r |T132606:0|t[|cRXP_LOOT_Shadowcraft Bracers|r] |cRXP_WARN_to turn in this quest|r << Rogue
    >>|cRXP_WARN_You will need 20 gold and|r |T132612:0|t[|cRXP_LOOT_Dreadmist Bracers|r] |cRXP_WARN_to turn in this quest|r << Warlock
    >>|cRXP_WARN_You will need 20 gold and|r |T132617:0|t[|cRXP_LOOT_Bracers of Valor|r] |cRXP_WARN_to turn in this quest|r << Warrior
    .collect 16714,1,8905,1 << Druid --Wildheart Bracers (x1)
    .collect 16681,1,8906,1 << Hunter --Beaststalker's Bindings (x1)
    .collect 16683,1,8907,1 << Mage --Magister's Bindings (x1)
    .collect 16722,1,8908,1 << Paladin --Lightforge Bracers (x1)
    .collect 16697,1,8909,1 << Priest --Devout Bracers (x1)
    .collect 16710,1,8910,1 << Rogue --Shadowcraft Bracers (x1)
    .collect 16703,1,8911,1 << Warlock --Dreadmist Bracers (x1)
    .collect 16735,1,8912,1 << Warrior --Bracers of Valor (x1)
    .turnin 8905 >>Turn in An Earnest Proposition << Druid
    .turnin 8906 >>Turn in An Earnest Proposition << Hunter
    .turnin 8907 >>Turn in An Earnest Proposition << Mage
    .turnin 8908 >>Turn in An Earnest Proposition << Paladin
    .turnin 8909 >>Turn in An Earnest Proposition << Priest
    .turnin 8910 >>Turn in An Earnest Proposition << Rogue
    .turnin 8911 >>Turn in An Earnest Proposition << Warlock
    .turnin 8912 >>Turn in An Earnest Proposition << Warrior
    .accept 8922 >>Accept A Supernatural Device
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>Travel to |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mokvar|r
    .accept 8913 >>Accept An Earnest Proposition << Druid
    .accept 8914 >>Accept An Earnest Proposition << Hunter
    .accept 8915 >>Accept An Earnest Proposition << Mage
    .accept 8916 >>Accept An Earnest Proposition << Priest
    .accept 8917 >>Accept An Earnest Proposition << Rogue
    .accept 8918 >>Accept An Earnest Proposition << Shaman
    .accept 8919 >>Accept An Earnest Proposition << Warlock
    .accept 8920 >>Accept An Earnest Proposition << Warrior
    .target Mokvar
step << Horde
    #completewith next
    .zone Silithus >>Travel to |cFFfa9602Silithus|r
step << Horde
    #loop
    .goto Silithus,64.82,41.47,0
    .goto Silithus,58.38,21.10,0
    .goto Silithus,33.34,35.27,0
    .goto Silithus,36.65,62.73,0
    .goto Silithus,28.52,77.73,0
    .goto Silithus,45.40,80.20,0
    .goto Silithus,58.80,61.99,0
    .goto Silithus,64.82,41.47,90,0
    .goto Silithus,58.38,21.10,90,0
    .goto Silithus,33.34,35.27,90,0
    .goto Silithus,36.65,62.73,90,0
    .goto Silithus,28.52,77.73,90,0
    .goto Silithus,45.40,80.20,90,0
    .goto Silithus,58.80,61.99,90,0
    >>Kill all types of |cRXP_ENEMY_Spiders|r and |cRXP_ENEMY_Scorpids|r. Loot them for their |cRXP_LOOT_Silithus Venom Samples|r
    .complete 8913,1 << Druid --Silithus Venom Sample (x15)
    .complete 8914,1 << Hunter --Silithus Venom Sample (x15)
    .complete 8915,1 << Mage --Silithus Venom Sample (x15)
    .complete 8916,1 << Priest --Silithus Venom Sample (x15)
    .complete 8917,1 << Rogue --Silithus Venom Sample (x15)
    .complete 8918,1 << Shaman --Silithus Venom Sample (x15)
    .complete 8919,1 << Warlock --Silithus Venom Sample (x15)
    .complete 8920,1 << Warrior --Silithus Venom Sample (x15)
    .mob Sand Skitterer
    .mob Stonelash Pincer
    .mob Stonelash Scorpid
    .mob Stonelash Flayer
    .mob Rock Stalker
step << Horde
    #completewith next
    .zone Orgrimmar >>Travel to |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mokvar|r
    >>|cRXP_WARN_You will need 20 gold and|r |T132608:0|t[|cRXP_LOOT_Wildheart Bracers|r] |cRXP_WARN_to turn in this quest|r << Druid
    >>|cRXP_WARN_You will need 20 gold and|r |T132616:0|t[|cRXP_LOOT_Beaststalker's Bindings|r] |cRXP_WARN_to turn in this quest|r << Hunter
    >>|cRXP_WARN_You will need 20 gold and|r |T133365:0|t[|cRXP_LOOT_Magister's Bindings|r] |cRXP_WARN_to turn in this quest|r << Mage
    >>|cRXP_WARN_You will need 20 gold and|r |T132520:0|t[|cRXP_LOOT_Devout Bracers|r] |cRXP_WARN_to turn in this quest|r << Priest
    >>|cRXP_WARN_You will need 20 gold and|r |T132606:0|t[|cRXP_LOOT_Shadowcraft Bracers|r] |cRXP_WARN_to turn in this quest|r << Rogue
    >>|cRXP_WARN_You will need 20 gold and|r |T132601:0|t[|cRXP_LOOT_Bindings of Elements|r] |cRXP_WARN_to turn in this quest|r << Shaman
    >>|cRXP_WARN_You will need 20 gold and|r |T132612:0|t[|cRXP_LOOT_Dreadmist Bracers|r] |cRXP_WARN_to turn in this quest|r << Warlock
    >>|cRXP_WARN_You will need 20 gold and|r |T132617:0|t[|cRXP_LOOT_Bracers of Valor|r] |cRXP_WARN_to turn in this quest|r << Warrior
    .collect 16714,1,8913,1 << Druid --Wildheart Bracers (x1)
    .collect 16681,1,8914,1 << Hunter --Beaststalker's Bindings (x1)
    .collect 16683,1,8915,1 << Mage --Magister's Bindings (x1)
    .collect 16697,1,8916,1 << Priest --Devout Bracers (x1)
    .collect 16710,1,8917,1 << Rogue --Shadowcraft Bracers (x1)
    .collect 16671,1,8918,1 << Shaman --Bindings of Elements (x1)
    .collect 16703,1,8919,1 << Warlock --Dreadmist Bracers (x1)
    .collect 16735,1,8920,1 << Warrior --Bracers of Valor (x1)
    .turnin 8913 >>Turn in An Earnest Proposition << Druid
    .turnin 8914 >>Turn in An Earnest Proposition << Hunter
    .turnin 8915 >>Turn in An Earnest Proposition << Mage
    .turnin 8916 >>Turn in An Earnest Proposition << Priest
    .turnin 8917 >>Turn in An Earnest Proposition << Rogue
    .turnin 8918 >>Turn in An Earnest Proposition << Shaman
    .turnin 8919 >>Turn in An Earnest Proposition << Warlock
    .turnin 8920 >>Turn in An Earnest Proposition << Warrior
    .accept 8923 >>Accept A Supernatural Device
    .target Mokvar

    ]])


RXPGuides.RegisterGuide([[
#classic
#group RestedXP Endgame Guides
#subgroup Feralheart Set Guide << Druid
#subgroup Beastmaster Set Guide << Hunter
#subgroup Sorcerer's Set Guide << Mage
#subgroup Soulforge Set Guide << Paladin
#subgroup Darkmantle Set Guide << Rogue
#subgroup The Five Thunders Set Guide << Shaman
#subgroup Deathmist Set Guide << Warlock
#subgroup Heroism Set Guide << Warrior
#subgroup Virtuous Set Guide << Priest
#name Part 2: Belt & Gloves
#next Part 3: Pants, Shoulders & Boots


step
    #optional
    +|cRXP_WARN_You must complete Part 1: Bracers before starting this part of the guide|r
    .isQuestAvailable 8905 << Alliance Druid
    .isQuestAvailable 8906 << Alliance Hunter
    .isQuestAvailable 8907 << Alliance Mage
    .isQuestAvailable 8908 << Alliance Paladin
    .isQuestAvailable 8909 << Alliance Priest
    .isQuestAvailable 8910 << Alliance Rogue
    .isQuestAvailable 8911 << Alliance Warlock
    .isQuestAvailable 8912 << Alliance Warrior
    .isQuestAvailable 8913 << Horde Druid
    .isQuestAvailable 8914 << Horde Hunter
    .isQuestAvailable 8915 << Horde Mage
    .isQuestAvailable 8916 << Horde Priest
    .isQuestAvailable 8917 << Horde Rogue
    .isQuestAvailable 8918 << Horde Shaman
    .isQuestAvailable 8919 << Horde Warlock
    .isQuestAvailable 8920 << Horde Warrior
step
    >>Obtain the |T132504:0|t[|cRXP_LOOT_Wildheart Belt|r]. This is a Bind-on-Equip drop in |cFFfa9602Scholomance|r and |cFFfa9602Blackrock Spire|r << Druid
    >>Obtain the |T132517:0|t[|cRXP_LOOT_Beaststalker's Belt|r]. This is a Bind-on-Equip drop in |cFFfa9602Blackrock Spire|r << Hunter
    >>Obtain the |T132497:0|t[|cRXP_LOOT_Magister's Belt|r]. This is a Bind-on-Equip drop in |cFFfa9602Stratholme|r and |cFFfa9602Blackrock Spire|r << Mage
    >>Obtain the |T132500:0|t[|cRXP_LOOT_Lightforge Belt|r]. This is a Bind-on-Equip drop in |cFFfa9602Stratholme|r << Paladin
    >>Obtain the |T132499:0|t[|cRXP_LOOT_Devout Belt|r]. This is a Bind-on-Equip drop in |cFFfa9602Blackrock Spire|r << Priest
    >>Obtain the |T132492:0|t[|cRXP_LOOT_Shadowcraft Belt|r]. This is a Bind-on-Equip drop in |cFFfa9602Blackrock Spire|r << Rogue
    >>Obtain the |T132505:0|t[|cRXP_LOOT_Cord of Elements|r]. This is a Bind-on-Equip drop in |cFFfa9602Blackrock Spire|r << Shaman
    >>Obtain the |T132501:0|t[|cRXP_LOOT_Dreadmist Belt|r]. This is a Bind-on-Equip drop in |cFFfa9602Stratholme|r << Warlock
    >>Obtain the |T132523:0|t[|cRXP_LOOT_Belt of Valor|r]. This is a Bind-on-Equip drop in |cFFfa9602Blackrock Spire|r and |cFFfa9602Stratholme|r << Warrior
    >>|cRXP_WARN_Alternatively buy them from the Auction House << !sod
    >>|cRXP_WARN_Alternatively buy them from the Auction House or from |cRXP_FRIENDLY_Pix Xizzix|r in Booty Bay in exchange for|r |T133799:0|t[|cRXP_FRIENDLY_Tarnished Undermine Real|r] << sod
    .collect 16716,1,8926,1 << Alliance Druid --Wildheart Belt (x1)
    .collect 16680,1,8931,1 << Alliance Hunter --Beaststalker's Belt (x1)
    .collect 16685,1,8932,1 << Alliance Mage --Magister's Belt (x1)
    .collect 16723,1,8933,1 << Alliance Paladin --Lightforge Belt (x1)
    .collect 16696,1,8934,1 << Alliance Priest --Devout Belt (x1)
    .collect 16713,1,8935,1 << Alliance Rogue --Shadowcraft Belt (x1)
    .collect 16702,1,8936,1 << Alliance Warlock --Dreadmist Belt (x1)
    .collect 16736,1,8937,1 << Alliance Warrior --Belt of Valor (x1)
    .collect 16716,1,8927,1 << Horde Druid --Wildheart Belt (x1)
    .collect 16680,1,8938,1 << Horde Hunter --Beaststalker's Belt (x1)
    .collect 16685,1,8939,1 << Horde Mage --Magister's Belt (x1)
    .collect 16696,1,8940,1 << Horde Priest --Devout Belt (x1)
    .collect 16713,1,8941,1 << Horde Rogue --Shadowcraft Belt (x1)
    .collect 16673,1,8942,1 << Horde Shaman --Cord of Elements (x1)
    .collect 16702,1,8943,1 << Horde Warlock --Dreadmist Belt (x1)
    .collect 16736,1,8944,1 << Horde Warrior --Belt of Valor (x1)
    .equip 6,16716 << Druid
    .equip 6,16680 << Hunter
    .equip 6,16685 << Mage
    .equip 6,16723 << Paladin
    .equip 6,16696 << Priest
    .equip 6,16713 << Rogue
    .equip 6,16702 << Warlock
    .equip 6,16736 << Warrior
    .equip 6,16673 << Shaman
step
    >>Obtain the |T132951:0|t[|cRXP_LOOT_Wildheart Gloves|r]. This is a Bind-on-Equip drop in |cFFfa9602Stratholme|r << Druid
    >>Obtain the |T132944:0|t[|cRXP_LOOT_Beaststalker's Gloves|r]. This is a Bind-on-Equip drop in |cFFfa9602Blackrock Spire|r << Hunter
    >>Obtain the |T132951:0|t[|cRXP_LOOT_Magister's Gloves|r]. This is a Bind-on-Equip drop in |cFFfa9602Scholomance|r << Mage
    >>Obtain the |T132953:0|t[|cRXP_LOOT_Lightforge Gauntlets|r]. This is a Bind-on-Equip drop in |cFFfa9602Stratholme|r << Paladin
    >>Obtain the |T132948:0|t[|cRXP_LOOT_Devout Gloves|r]. This is a Bind-on-Equip drop in |cFFfa9602Stratholme|r << Priest
    >>Obtain the |T132958:0|t[|cRXP_LOOT_Shadowcraft Gloves|r]. This is a Bind-on-Equip drop in |cFFfa9602Blackrock Spire|r << Rogue
    >>Obtain the |T132945:0|t[|cRXP_LOOT_Gauntlets of Elements|r]. This is a Bind-on-Equip drop in |cFFfa9602Upper Blackrock Spire|r << Shaman
    >>Obtain the |T132966:0|t[|cRXP_LOOT_Dreadmist Wraps|r]. This is a Bind-on-Equip drop in |cFFfa9602Scholomance|r << Warlock
    >>Obtain the |T132960:0|t[|cRXP_LOOT_Gauntlets of Valor|r]. This is a Bind-on-Equip drop in |cFFfa9602Stratholme|r << Warrior
    >>|cRXP_WARN_Alternatively buy them from the Auction House << !sod
    >>|cRXP_WARN_Alternatively buy them from the Auction House or from |cRXP_FRIENDLY_Pix Xizzix|r in Booty Bay in exchange for|r |T133799:0|t[|cRXP_FRIENDLY_Tarnished Undermine Real|r] << sod
    .collect 16717,1,8926,1 << Alliance Druid --Wildheart Gloves (x1)
    .collect 16676,1,8931,1 << Alliance Hunter --Beaststalker's Gloves (x1)
    .collect 16684,1,8932,1 << Alliance Mage --Magister's Gloves (x1)
    .collect 16724,1,8933,1 << Alliance Paladin --Lightforge Gauntlets (x1)
    .collect 16692,1,8934,1 << Alliance Priest --Devout Gloves (x1)
    .collect 16712,1,8935,1 << Alliance Rogue --Shadowcraft Gloves (x1)
    .collect 16705,1,8936,1 << Alliance Warlock --Dreadmist Wraps (x1)
    .collect 16737,1,8937,1 << Alliance Warrior --Gauntlets of Valor (x1)
    .collect 16717,1,8927,1 << Horde Druid --Wildheart Gloves (x1)
    .collect 16676,1,8938,1 << Horde Hunter --Beaststalker's Gloves (x1)
    .collect 16684,1,8939,1 << Horde Mage --Magister's Gloves (x1)
    .collect 16692,1,8940,1 << Horde Priest --Devout Gloves (x1)
    .collect 16712,1,8941,1 << Horde Rogue --Shadowcraft Gloves (x1)
    .collect 16672,1,8942,1 << Horde Shaman --Gauntlets of Elements (x1)
    .collect 16705,1,8943,1 << Horde Warlock --Dreadmist Wraps (x1)
    .collect 16737,1,8944,1 << Horde Warrior --Gauntlets of Valor (x1)
    .equip 10,16717 << Druid
    .equip 10,16676 << Hunter
    .equip 10,16684 << Mage
    .equip 10,16724 << Paladin
    .equip 10,16692 << Priest
    .equip 10,16712 << Rogue
    .equip 10,16705 << Warlock
    .equip 10,16737 << Warrior
    .equip 10,16672 << Shaman
step
    >>|cRXP_BUY_Collect the following items|r:
    >>|T133001:0|t[Delicate Arcanite Converters] |cRXP_WARN_are made by engineers|r
    >>|T132864:0|t[|cRXP_FRIENDLY_Greater Eternal Essences|r] |cRXP_WARN_are obtained by enchanters|r
    >>|T134848:0|t[Stonescale Oil] |cRXP_WARN_is made by alchemists|r
    >>|T132621:0|t[Goblin Rocket Fuel] |cRXP_WARN_is made by engineers|r
    >>|cRXP_WARN_Buy them from the Auction House if possible|r
    .collect 16006,1,8921,1 --Delicate Arcanite Converter (x1)
    .collect 16203,4,8921,1 --Greater Eternal Essence (x4)
    .collect 13423,10,8921,1 --Stonescale Oil (x10)
    .collect 9061,6,8924,1 --Goblin Rocket Fuel (x6)
step << Alliance
    #completewith next
    .zone Ironforge >>Travel to |cFFfa9602Ironforge|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deliana|r
    .accept 8922 >>Accept A Supernatural Device
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>Travel to |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mokvar|r
    .accept 8923 >>Accept A Supernatural Device
    .target Mokvar
step
    #completewith next
    .subzone 976 >>Travel to Gadgetzan in |cFFfa9602Tanaris|r
step
    .goto Tanaris,52.47,27.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mux Manascrambler|r
    .turnin 8922 >>Turn in A Supernatural Device << Alliance
    .turnin 8923 >>Turn in A Supernatural Device << Horde
    .accept 8921 >>Accept The Ectoplasmic Distiller
    .target Mux Manascrambler
step
    #completewith next
    .zone Burning Steppes >>Travel to |cFFfa9602Burning Steppes|r
step
    #loop
    .goto Burning Steppes,71.87,29.57,0
    .goto Burning Steppes,64.74,33.56,0
    .goto Burning Steppes,50.35,35.24,0
    .goto Burning Steppes,52.08,42.58,0
    .goto Burning Steppes,40.66,43.78,0
    .goto Burning Steppes,34.95,47.61,0
    .goto Burning Steppes,23.40,46.28,0
    .goto Burning Steppes,34.32,58.78,0
    .goto Burning Steppes,55.26,47.90,0
    .goto Burning Steppes,71.87,29.57,60,0
    .goto Burning Steppes,64.74,33.56,60,0
    .goto Burning Steppes,50.35,35.24,60,0
    .goto Burning Steppes,52.08,42.58,60,0
    .goto Burning Steppes,40.66,43.78,60,0
    .goto Burning Steppes,34.95,47.61,60,0
    .goto Burning Steppes,23.40,46.28,60,0
    .goto Burning Steppes,34.32,58.78,60,0
    .goto Burning Steppes,55.26,47.90,60,0
    >>Loot |cRXP_LOOT_Volcanic Ash|r on the ground
    >>|cRXP_WARN_They look like large piles of grey dirt and can be found in mainly in Northern Burning Steppes among the lava pools and rivers|r
    .collect 22338,25,8921,1 --Volcanic Ash (x25)
step
    >>|cRXP_BUY_Collect the following items|r:
    >>|T133001:0|t[Delicate Arcanite Converters] |cRXP_WARN_are made by engineers|r
    >>|T132864:0|t[|cRXP_FRIENDLY_Greater Eternal Essences|r] |cRXP_WARN_are obtained by enchanters|r
    >>|T134848:0|t[Stonescale Oil] |cRXP_WARN_is made by alchemists|r
    >>|T132621:0|t[Goblin Rocket Fuel] |cRXP_WARN_is made by engineers|r
    >>|cRXP_WARN_Buy them from the Auction House if possible|r
    .collect 16006,1,8921,1 --Delicate Arcanite Converter (x1)
    .collect 16203,4,8921,1 --Greater Eternal Essence (x4)
    .collect 13423,10,8921,1 --Stonescale Oil (x10)
    .collect 9061,6,8924,1 --Goblin Rocket Fuel (x6)
step
    #completewith next
    .subzone 976 >>Travel to Gadgetzan in |cFFfa9602Tanaris|r
step
    .goto Tanaris,52.47,27.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mux Manascrambler|r
    >>|cRXP_WARN_You will need 40 gold to turn in this quest|r
    .turnin 8921 >>Turn in The Ectoplasmic Distiller
    .accept 8924 >>Accept Hunting for Ectoplasm
    .target Mux Manascrambler
step
    #optional
    >>|cRXP_WARN_Collect at least 3|r |T132621:0|t[Goblin Rocket Fuel]|cRXP_WARN_. It is made by engineers|r
    >>|cRXP_WARN_Buy them from the Auction House if possible|r
    .collect 9061,3,8924,1 --Goblin Rocket Fuel (x3)
step
    #completewith next
    .subzone 2738 >>Travel to Southwind Village in |cFFfa9602Silithus|r
step
    #completewith next
    .cast 27433 >>|cRXP_WARN_Place the|r |T133882:0|t[Ectoplasmic Distiller] |cRXP_WARN_on the ground. It lasts for 5 minutes|r
    .use 21946 >>|cRXP_WARN_One|r |T132621:0|t[Goblin Rocket Fuel] |cRXP_WARN_is needed each time you use the|r |T133882:0|t[Ectoplasmic Distiller]
step
    #loop
	.goto Silithus,61.60,48.60,0
	.goto Silithus,61.60,48.60,60,0
	.goto Silithus,63.80,48.60,60,0
	.goto Silithus,63.60,51.60,60,0
	.goto Silithus,62.60,55.60,60,0
	.goto Silithus,62.60,58.60,60,0
	.goto Silithus,60.00,55.80,60,0
	.goto Silithus,60.60,52.80,60,0
    >>Kill |cRXP_ENEMY_Tortured Druids|r and |cRXP_ENEMY_Tortured Sentinels|r. Loot them for their |cRXP_LOOT_Scorched Ectoplasms|r
    >>|cRXP_WARN_Pull them to the|r |T133882:0|t[Ectoplasmic Distiller] |cRXP_WARN_as you kill them|r
    .complete 8924,1 --Scorched Ectoplasm (x12)
	.mob Tortured Druid
	.mob Tortured Sentinel
step
    #completewith next
    .zone Winterspring >>Travel to |cFFfa9602Winterspring|r
step
    #completewith next
    .cast 27433 >>|cRXP_WARN_Place the|r |T133882:0|t[Ectoplasmic Distiller] |cRXP_WARN_on the ground. It lasts for 5 minutes|r
    .use 21946 >>|cRXP_WARN_One|r |T132621:0|t[Goblin Rocket Fuel] |cRXP_WARN_is needed each time you use the|r |T133882:0|t[Ectoplasmic Distiller]
step
    #loop
    .goto Winterspring,55.42,43.41,0
    .goto Winterspring,53.29,43.82,0
    .goto Winterspring,52.60,40.59,0
    .goto Winterspring,55.42,43.41,50,0
    .goto Winterspring,53.29,43.82,50,0
    .goto Winterspring,52.60,40.59,50,0
    >>Kill |cRXP_ENEMY_Suffering Highborne|r and |cRXP_ENEMY_Anguished Highborne|r. Loot them for their |cRXP_LOOT_Frozen Ectoplasms|r
    >>|cRXP_WARN_Pull them to the|r |T133882:0|t[Ectoplasmic Distiller] |cRXP_WARN_as you kill them|r
    .complete 8924,2 --Frozen Ectoplasm (x12)
    .mob Suffering Highborne
    .mob Anguished Highborne
step
    #completewith FelElemRod
    .subzone 2256 >>Travel to Darkwhisper Gorge in |cFFfa9602Winterspring|r
step
    #hardcore
    #completewith next
    +|cRXP_WARN_Be careful! You will encounter level 60 mobs on the way to|r |cRXP_FRIENDLY_Vi'el|r|cRXP_WARN_. Avoid them as much as possible|r
step
    #label FelElemRod
    .goto Winterspring,58.87,78.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vi'el|r
    >>|cRXP_BUY_Buy a|r |T135155:0|t[|cRXP_LOOT_Fel Elemental Rod|r] |cRXP_BUY_from him|r
    >>|cRXP_WARN_This will cost 40 gold|r
    .collect 21939,1,8928,1 --Fel Elemental Rod (x1)
    .target Vi'el
step
    #optional
    >>|cRXP_WARN_Collect at least 2|r |T132621:0|t[Goblin Rocket Fuel]|cRXP_WARN_. It is made by engineers|r
    >>|cRXP_WARN_Buy them from the Auction House if possible|r
    .collect 9061,2,8924,1 --Goblin Rocket Fuel (x2)
step
    #completewith next
    .subzone 2264 >>Travel to Corin's Crossing in |cFFfa9602Eastern Plaguelands|r
step
    #completewith next
    .cast 27433 >>|cRXP_WARN_Place the|r |T133882:0|t[Ectoplasmic Distiller] |cRXP_WARN_on the ground. It lasts for 5 minutes|r
    .use 21946 >>|cRXP_WARN_One|r |T132621:0|t[Goblin Rocket Fuel] |cRXP_WARN_is needed each time you use the|r |T133882:0|t[Ectoplasmic Distiller]
step
    #loop
    .goto Eastern Plaguelands,60.67,67.35,0
    .goto Eastern Plaguelands,60.67,67.35,50,0
    .goto Eastern Plaguelands,58.55,70.50,50,0
    >>Kill |cRXP_ENEMY_Unseen Servants|r and |cRXP_ENEMY_Hate Shriekers|r. Loot them for their |cRXP_LOOT_Stable Ectoplasms|r
    >>|cRXP_WARN_Pull them to the|r |T133882:0|t[Ectoplasmic Distiller] |cRXP_WARN_as you kill them|r
    .complete 8924,3 --Stable Ectoplasm (x12)
    .mob Unseen Servant
    .mob Hate Shrieker
step
    #completewith next
    .subzone 976 >>Travel to Gadgetzan in |cFFfa9602Tanaris|r
step
    .goto Tanaris,52.47,27.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mux Manascrambler|r
    .turnin 8924 >>Turn in Hunting for Ectoplasm
    .accept 8925 >>Accept A Portable Power Source
    .target Mux Manascrambler
step
    #completewith next
    .zone Burning Steppes >>Travel to |cFFfa9602Burning Steppes|r
step
    .goto Burning Steppes,35.38,57.73
    >>Kill |cRXP_ENEMY_Magma Lord Bokk|r. Loot him for his |cRXP_LOOT_Magma Core|r
    .complete 8925,1 --Magma Core (x1)
    .mob Magma Lord Bokk
step
    #completewith next
    .subzone 976 >>Travel to Gadgetzan in |cFFfa9602Tanaris|r
step
    .goto Tanaris,52.47,27.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mux Manascrambler|r
    .turnin 8925 >>Turn in A Portable Power Source
    .accept 8928 >>Accept A Shifty Merchant
    .target Mux Manascrambler
step
    #optional
    #completewith FelElemRod2
    .subzone 2256 >>Travel to Darkwhisper Gorge in |cFFfa9602Winterspring|r
step
    #optional
    #hardcore
    #completewith next
    +|cRXP_WARN_Be careful! You will encounter level 60 mobs on the way to|r |cRXP_FRIENDLY_Vi'el|r|cRXP_WARN_. Avoid them as much as possible|r
step
    #label FelElemRod2
    #optional --user should already have bought this during .complete 8924,2 earlier in Winterspring
    .goto Winterspring,58.87,78.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vi'el|r
    >>|cRXP_BUY_Buy a|r |T135155:0|t[|cRXP_LOOT_Fel Elemental Rod|r] |cRXP_BUY_from him|r
    >>|cRXP_WARN_This will cost 40 gold|r
    .collect 21939,1,8928,1 --Fel Elemental Rod (x1)
    .target Vi'el
step
    #optional
    #completewith next
    .subzone 976 >>Travel to Gadgetzan in |cFFfa9602Tanaris|r
    .zoneskip Winterspring,1
step
    .goto Tanaris,52.47,27.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mux Manascrambler|r
    .turnin 8928 >>Turn in A Shifty Merchant
    .accept 8977 >>Accept Return to Deliana << Alliance
    .accept 8978 >>Accept Return to Mokvar << Horde
    .target Mux Manascrambler
step << Alliance
    #completewith next
    .zone Ironforge >>Travel to |cFFfa9602Ironforge|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deliana|r
    .turnin 8977 >>Turn in Return to Deliana
    .accept 8926 >>Accept Just Compensation << Druid
    .accept 8931 >>Accept Just Compensation << Hunter
    .accept 8932 >>Accept Just Compensation << Mage
    .accept 8933 >>Accept Just Compensation << Paladin
    .accept 8934 >>Accept Just Compensation << Priest
    .accept 8935 >>Accept Just Compensation << Rogue
    .accept 8936 >>Accept Just Compensation << Warlock
    .accept 8937 >>Accept Just Compensation << Warrior
    .target Deliana
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deliana|r
    >>You will need |T132504:0|t[|cRXP_LOOT_Wildheart Belt|r] and |T132951:0|t[|cRXP_LOOT_Wildheart Gloves|r] to turn in this quest << Druid
    >>You will need |T132517:0|t[|cRXP_LOOT_Beaststalker's Belt|r] and |T132944:0|t[|cRXP_LOOT_Beaststalker's Gloves|r] to turn in this quest << Hunter
    >>You will need |T132497:0|t[|cRXP_LOOT_Magister's Belt|r] and |T132951:0|t[|cRXP_LOOT_Magister's Gloves|r] to turn in this quest << Mage
    >>You will need |T132500:0|t[|cRXP_LOOT_Lightforge Belt|r] and |T132953:0|t[|cRXP_LOOT_Lightforge Gauntlets|r] to turn in this quest << Paladin
    >>You will need |T132499:0|t[|cRXP_LOOT_Devout Belt|r] and |T132948:0|t[|cRXP_LOOT_Devout Gloves|r] to turn in this quest << Priest
    >>You will need |T132492:0|t[|cRXP_LOOT_Shadowcraft Belt|r] and |T132958:0|t[|cRXP_LOOT_Shadowcraft Gloves|r] to turn in this quest << Rogue
    >>You will need |T132501:0|t[|cRXP_LOOT_Dreadmist Belt|r] and |T132966:0|t[|cRXP_LOOT_Dreadmist Wraps|r] to turn in this quest << Warlock
    >>You will need |T132523:0|t[|cRXP_LOOT_Belt of Valor|r] and |T132960:0|t[|cRXP_LOOT_Gauntlets of Valor|r]r to turn in this quest << Warrior
    .collect 16716,1,8926,1 << Alliance Druid --Wildheart Belt (x1)
    .collect 16717,1,8926,1 << Alliance Druid --Wildheart Gloves (x1)
    .collect 16680,1,8931,1 << Alliance Hunter --Beaststalker's Belt (x1)
    .collect 16676,1,8931,1 << Alliance Hunter --Beaststalker's Gloves (x1)
    .collect 16685,1,8932,1 << Alliance Mage --Magister's Belt (x1)
    .collect 16684,1,8932,1 << Alliance Mage --Magister's Gloves (x1)
    .collect 16723,1,8933,1 << Alliance Paladin --Lightforge Belt (x1)
    .collect 16724,1,8933,1 << Alliance Paladin --Lightforge Gauntlets (x1)
    .collect 16696,1,8934,1 << Alliance Priest --Devout Belt (x1)
    .collect 16692,1,8934,1 << Alliance Priest --Devout Gloves (x1)
    .collect 16713,1,8935,1 << Alliance Rogue --Shadowcraft Belt (x1)
    .collect 16712,1,8935,1 << Alliance Rogue --Shadowcraft Gloves (x1)
    .collect 16702,1,8936,1 << Alliance Warlock --Dreadmist Belt (x1)
    .collect 16705,1,8936,1 << Alliance Warlock --Dreadmist Wraps (x1)
    .collect 16736,1,8937,1 << Alliance Warrior --Belt of Valor (x1)
    .collect 16737,1,8937,1 << Alliance Warrior --Gauntlets of Valor (x1)
    .turnin 8926 >>Turn in Just Compensation << Druid
    .turnin 8931 >>Turn in Just Compensation << Hunter
    .turnin 8932 >>Turn in Just Compensation << Mage
    .turnin 8933 >>Turn in Just Compensation << Paladin
    .turnin 8934 >>Turn in Just Compensation << Priest
    .turnin 8935 >>Turn in Just Compensation << Rogue
    .turnin 8936 >>Turn in Just Compensation << Warlock
    .turnin 8937 >>Turn in Just Compensation << Warrior
    .accept 8929 >>Accept In Search of Anthion
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>Travel to |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mokvar|r
    .turnin 8978 >>Turn in Return to Mokvar
    .accept 8927 >>Accept Just Compensation << Druid
    .accept 8938 >>Accept Just Compensation << Hunter
    .accept 8939 >>Accept Just Compensation << Mage
    .accept 8940 >>Accept Just Compensation << Priest
    .accept 8941 >>Accept Just Compensation << Rogue
    .accept 8942 >>Accept Just Compensation << Shaman
    .accept 8943 >>Accept Just Compensation << Warlock
    .accept 8944 >>Accept Just Compensation << Warrior
    .target Mokvar
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mokvar|r
    >>You will need |T132504:0|t[|cRXP_LOOT_Wildheart Belt|r] and |T132951:0|t[|cRXP_LOOT_Wildheart Gloves|r] to turn in this quest << Druid
    >>You will need |T132517:0|t[|cRXP_LOOT_Beaststalker's Belt|r] and |T132944:0|t[|cRXP_LOOT_Beaststalker's Gloves|r] to turn in this quest << Hunter
    >>You will need |T132497:0|t[|cRXP_LOOT_Magister's Belt|r] and |T132951:0|t[|cRXP_LOOT_Magister's Gloves|r] to turn in this quest << Mage
    >>You will need |T132499:0|t[|cRXP_LOOT_Devout Belt|r] and |T132948:0|t[|cRXP_LOOT_Devout Gloves|r] to turn in this quest << Priest
    >>You will need |T132492:0|t[|cRXP_LOOT_Shadowcraft Belt|r] and |T132958:0|t[|cRXP_LOOT_Shadowcraft Gloves|r] to turn in this quest << Rogue
    >>You will need |T132505:0|t[|cRXP_LOOT_Cord of Elements|r] and |T132945:0|t[|cRXP_LOOT_Gauntlets of Elements|r] to turn in this quest << Shaman
    >>You will need |T132501:0|t[|cRXP_LOOT_Dreadmist Belt|r] and |T132966:0|t[|cRXP_LOOT_Dreadmist Wraps|r] to turn in this quest << Warlock
    >>You will need |T132523:0|t[|cRXP_LOOT_Belt of Valor|r] and |T132960:0|t[|cRXP_LOOT_Gauntlets of Valor|r]r to turn in this quest << Warrior
    .collect 16716,1,8927,1 << Horde Druid --Wildheart Belt (x1)
    .collect 16717,1,8927,1 << Horde Druid --Wildheart Gloves (x1)
    .collect 16680,1,8938,1 << Horde Hunter --Beaststalker's Belt (x1)
    .collect 16676,1,8938,1 << Horde Hunter --Beaststalker's Gloves (x1)
    .collect 16685,1,8939,1 << Horde Mage --Magister's Belt (x1)
    .collect 16684,1,8939,1 << Horde Mage --Magister's Gloves (x1)
    .collect 16696,1,8940,1 << Horde Priest --Devout Belt (x1)
    .collect 16692,1,8940,1 << Horde Priest --Devout Gloves (x1)
    .collect 16713,1,8941,1 << Horde Rogue --Shadowcraft Belt (x1)
    .collect 16712,1,8941,1 << Horde Rogue --Shadowcraft Gloves (x1)
    .collect 16673,1,8942,1 << Horde Shaman --Cord of Elements (x1)
    .collect 16672,1,8942,1 << Horde Shaman --Gauntlets of Elements (x1)
    .collect 16702,1,8943,1 << Horde Warlock --Dreadmist Belt (x1)
    .collect 16705,1,8943,1 << Horde Warlock --Dreadmist Wraps (x1)
    .collect 16736,1,8944,1 << Horde Warrior --Belt of Valor (x1)
    .collect 16737,1,8944,1 << Horde Warrior --Gauntlets of Valor (x1)
    .turnin 8927 >>Turn in Just Compensation << Druid
    .turnin 8938 >>Turn in Just Compensation << Hunter
    .turnin 8939 >>Turn in Just Compensation << Mage
    .turnin 8940 >>Turn in Just Compensation << Priest
    .turnin 8941 >>Turn in Just Compensation << Rogue
    .turnin 8942 >>Turn in Just Compensation << Shaman
    .turnin 8943 >>Turn in Just Compensation << Warlock
    .turnin 8944 >>Turn in Just Compensation << Warrior
    .accept 8930 >>Accept In Search of Anthion
    .target Mokvar

    ]])


RXPGuides.RegisterGuide([[
#classic
#group RestedXP Endgame Guides
#subgroup Feralheart Set Guide << Druid
#subgroup Beastmaster Set Guide << Hunter
#subgroup Sorcerer's Set Guide << Mage
#subgroup Soulforge Set Guide << Paladin
#subgroup Darkmantle Set Guide << Rogue
#subgroup The Five Thunders Set Guide << Shaman
#subgroup Deathmist Set Guide << Warlock
#subgroup Heroism Set Guide << Warrior
#subgroup Virtuous Set Guide << Priest
#name Part 3: Pants, Shoulders & Boots
#next Part 4: Helm & Chest

step
    #optional
    +|cRXP_WARN_You must complete Part 2: Belt & Gloves before starting this part of the guide|r
    .isQuestAvailable 8926 << Alliance Druid
    .isQuestAvailable 8931 << Alliance Hunter
    .isQuestAvailable 8932 << Alliance Mage
    .isQuestAvailable 8933 << Alliance Paladin
    .isQuestAvailable 8934 << Alliance Priest
    .isQuestAvailable 8935 << Alliance Rogue
    .isQuestAvailable 8936 << Alliance Warlock
    .isQuestAvailable 8937 << Alliance Warrior
    .isQuestAvailable 8927 << Horde Druid
    .isQuestAvailable 8938 << Horde Hunter
    .isQuestAvailable 8939 << Horde Mage
    .isQuestAvailable 8940 << Horde Priest
    .isQuestAvailable 8941 << Horde Rogue
    .isQuestAvailable 8942 << Horde Shaman
    .isQuestAvailable 8943 << Horde Warlock
    .isQuestAvailable 8944 << Horde Warrior
step
    >>Obtain the |T132542:0|t[|cRXP_LOOT_Wildheart Boots|r]. This gets dropped by |cRXP_ENEMY_Mother Smolderweb|r in |cFFfa9602Lower Blackrock Spire|r << Druid
    >>Obtain the |T132588:0|t[|cRXP_LOOT_Beaststalker's Boots|r]. This gets dropped by |cRXP_ENEMY_Nerub'enkan|r in |cFFfa9602Stratholme|r << Hunter
    >>Obtain the |T132536:0|t[|cRXP_LOOT_Magister's Boots|r]. This gets dropped by |cRXP_ENEMY_Hearthsinger Forresten|r (rare) in |cFFfa9602Stratholme|r << Mage
    >>|cRXP_WARN_Note that before the AQ patch, this item is supposed to drop from|r |cRXP_ENEMY_Postmaster Malown|r<<Mage
    >>Obtain the |T132584:0|t[|cRXP_LOOT_Lightforge Boots|r]. This gets dropped by |cRXP_ENEMY_Grand Crusader Dathrohan|r and |cRXP_ENEMY_Balnazzar|r in |cFFfa9602Stratholme|r << Paladin
    >>Obtain the |T132539:0|t[|cRXP_LOOT_Devout Sandals|r]. This gets dropped by |cRXP_ENEMY_Maleki the Pallid|r in |cFFfa9602Stratholme| << Priest
    >>Obtain the |T132542:0|t[|cRXP_LOOT_Shadowcraft Boots|r]. This gets dropped by |cRXP_ENEMY_Rattlegore|r in |cFFfa9602Scholomance|r << Rogue
    >>Obtain the |T132592:0|t[|cRXP_LOOT_Boots of Elements|r]. This gets dropped by |cRXP_ENEMY_Highlord Omokk|r in |cFFfa9602Lower Blackrock Spire|r << Shaman
    >>Obtain the |T132539:0|t[|cRXP_LOOT_Dreadmist Sandals|r]. This gets dropped by |cRXP_ENEMY_Baroness Anastari|r in |cFFfa9602Stratholme|r << Warlock
    >>Obtain the |T132584:0|t[|cRXP_LOOT_Boots of Valor|r]. This gets dropped by |cRXP_ENEMY_Kirtonos the Herald|r in |cFFfa9602Scholomance|r << Warrior
    >>|cRXP_WARN_Alternatively buy them from |cRXP_FRIENDLY_Pix Xizzix|r in Booty Bay in exchange for|r |T133799:0|t[|cRXP_FRIENDLY_Tarnished Undermine Real|r] << sod
    .collect 16715,1,8951,1 << Alliance Druid --Wildheart Boots (x1)
    .collect 16675,1,8952,1 << Alliance Hunter --Beaststalker's Boots (x1)
    .collect 16682,1,8953,1 << Alliance Mage --Magister's Boots (x1)
    .collect 16725,1,8954,1 << Alliance Paladin --Lightforge Boots (x1)
    .collect 16691,1,8955,1 << Alliance Priest --Devout Sandals (x1)
    .collect 16711,1,8956,1 << Alliance Rogue --Shadowcraft Boots (x1)
    .collect 16704,1,8958,1 << Alliance Warlock --Dreadmist Sandals (x1)
    .collect 16734,1,8959,1 << Alliance Warrior --Boots of Valor (x1)
    .collect 16670,1,8957,1 << Horde Shaman --Boots of Elements (x1)
    .collect 16715,1,9016,1 << Horde Druid --Wildheart Boots (x1)
    .collect 16675,1,9017,1 << Horde Hunter --Beaststalker's Boots (x1)
    .collect 16682,1,9018,1 << Horde Mage --Magister's Boots (x1)
    .collect 16691,1,9019,1 << Horde Priest --Devout Sandals (x1)
    .collect 16711,1,9020,1 << Horde Rogue --Shadowcraft Boots (x1)
    .collect 16704,1,9021,1 << Horde Warlock --Dreadmist Sandals (x1)
    .collect 16734,1,9022,1 << Horde Warrior --Boots of Valor (x1)
    .equip 8,16715 << Druid
    .equip 8,16675 << Hunter
    .equip 8,16682 << Mage
    .equip 8,16725 << Paladin
    .equip 8,16691 << Priest
    .equip 8,16711 << Rogue
    .equip 8,16704 << Warlock
    .equip 8,16734 << Warrior
    .equip 8,16670 << Shaman
step
    >>Obtain the |T134588:0|t[|cRXP_LOOT_Wildheart Kilt|r]. This gets dropped by |cRXP_ENEMY_Baron Rivendare|r in |cFFfa9602Stratholme|r << Druid
    >>Obtain the |T134583:0|t[|cRXP_LOOT_Beaststalker's Pants|r]. This gets dropped by |cRXP_ENEMY_Baron Rivendare|r in |cFFfa9602Stratholme|r << Hunter
    >>Obtain the |T134586:0|t[|cRXP_LOOT_Magister's Leggings|r]. This gets dropped by |cRXP_ENEMY_Baron Rivendare|r in |cFFfa9602Stratholme|r << Mage
    >>Obtain the |T134584:0|t[|cRXP_LOOT_Lightforge Legplates|r]. This gets dropped by |cRXP_ENEMY_Baron Rivendare|r in |cFFfa9602Stratholme|r << Paladin
    >>Obtain the |T134588:0|t[|cRXP_LOOT_Devout Skirt|r]. This gets dropped by |cRXP_ENEMY_Baron Rivendare|r in |cFFfa9602Stratholme|r << Priest
    >>Obtain the |T134582:0|t[|cRXP_LOOT_Shadowcraft Pants|r]. This gets dropped by |cRXP_ENEMY_Baron Rivendare|r in |cFFfa9602Stratholme|r << Rogue
    >>Obtain the |T134583:0|t[|cRXP_LOOT_Kilt of Elements|r]. This gets dropped by |cRXP_ENEMY_Baron Rivendare|r in |cFFfa9602Stratholme|r << Shaman
    >>Obtain the |T134588:0|t[|cRXP_LOOT_Dreadmist Leggings|r]. This gets dropped by |cRXP_ENEMY_Baron Rivendare|r in |cFFfa9602Stratholme|r << Warlock
    >>Obtain the |T134584:0|t[|cRXP_LOOT_Legplates of Valor|r]. This gets dropped by |cRXP_ENEMY_Baron Rivendare|r in |cFFfa9602Stratholme|r << Warrior
    >>|cRXP_WARN_Alternatively buy them from |cRXP_FRIENDLY_Pix Xizzix|r in Booty Bay in exchange for|r |T133799:0|t[|cRXP_FRIENDLY_Tarnished Undermine Real|r] << sod
    .collect 16719,1,8951,1 << Alliance Druid --Wildheart Kilt (x1)
    .collect 16678,1,8952,1 << Alliance Hunter --Beaststalker's Pants (x1)
    .collect 16687,1,8953,1 << Alliance Mage --Magister's Leggings (x1)
    .collect 16728,1,8954,1 << Alliance Paladin --Lightforge Legplates (x1)
    .collect 16694,1,8955,1 << Alliance Priest --Devout Skirt (x1)
    .collect 16709,1,8956,1 << Alliance Rogue --Shadowcraft Pants (x1)
    .collect 16699,1,8958,1 << Alliance Warlock --Dreadmist Leggings (x1)
    .collect 16732,1,8959,1 << Alliance Warrior --Legplates of Valor (x1)
    .collect 16668,1,8957,1 << Horde Shaman --Kilt of Elements (x1)
    .collect 16719,1,9016,1 << Horde Druid --Wildheart Kilt (x1)
    .collect 16678,1,9017,1 << Horde Hunter --Beaststalker's Pants (x1)
    .collect 16687,1,9018,1 << Horde Mage --Magister's Leggings (x1)
    .collect 16694,1,9019,1 << Horde Priest --Devout Skirt (x1)
    .collect 16709,1,9020,1 << Horde Rogue --Shadowcraft Pants (x1)
    .collect 16699,1,9021,1 << Horde Warlock --Dreadmist Leggings (x1)
    .collect 16732,1,9022,1 << Horde Warrior --Legplates of Valor (x1)
    .equip 7,16719 << Druid
    .equip 7,16678 << Hunter
    .equip 7,16687 << Mage
    .equip 7,16728 << Paladin
    .equip 7,16694 << Priest
    .equip 7,16709 << Rogue
    .equip 7,16699 << Warlock
    .equip 7,16732 << Warrior
    .equip 7,16668 << Shaman
step
    >>Obtain the |T135032:0|t[|cRXP_LOOT_Wildheart Spaulders|r]. This gets dropped by |cRXP_ENEMY_Gizrul the Slavener|r in |cFFfa9602Lower Blackrock Spire|r << Druid
    >>Obtain the |T135041:0|t[|cRXP_LOOT_Beaststalker's Mantle|r]. This gets dropped by |cRXP_ENEMY_Overlord Wyrmthalak|r in |cFFfa9602Lower Blackrock Spire|r << Hunter
    >>Obtain the |T135054:0|t[|cRXP_LOOT_Magister's Mantle|r]. This gets dropped by |cRXP_ENEMY_Ras Frostwhisper|r in |cFFfa9602Scholomance|r << Mage
    >>Obtain the |T135041:0|t[|cRXP_LOOT_Lightforge Spaulders|r]. This gets dropped by |cRXP_ENEMY_The Beast|r in |cFFfa9602Upper Blackrock Spire|r << Paladin
    >>Obtain the |T135033:0|t[|cRXP_LOOT_Devout Mantle|r]. This gets dropped by |cRXP_ENEMY_Solakar Flamewreath|r in |cFFfa9602Upper Blackrock Spire|r << Priest
    >>Obtain the |T135038:0|t[|cRXP_LOOT_Shadowcraft Spaulders|r]. This gets dropped by |cRXP_ENEMY_Cannon Master Willey|r in |cFFfa9602Stratholme|r << Rogue
    >>Obtain the |T135060:0|t[|cRXP_LOOT_Pauldrons of Elements|r]. This gets dropped by |cRXP_ENEMY_Gyth|r in |cFFfa9602Upper Blackrock Spire|r << Shaman
    >>Obtain the |T133732:0|t[|cRXP_LOOT_Dreadmist Mantle|r]. This gets dropped by |cRXP_ENEMY_Jandice Barov|r in |cFFfa9602Scholomance|r << Warlock
    >>Obtain the |T135061:0|t[|cRXP_LOOT_Spaulders of Valor|r]. This gets dropped by |cRXP_ENEMY_Warchief Rend Blackhand|r in |cFFfa9602Upper Blackrock Spire|r << Warrior
    >>|cRXP_WARN_Alternatively buy them from |cRXP_FRIENDLY_Pix Xizzix|r in Booty Bay in exchange for|r |T133799:0|t[|cRXP_FRIENDLY_Tarnished Undermine Real|r] << sod
    .collect 16718,1,8951,1 << Alliance Druid --Wildheart Spaulders (x1)
    .collect 16679,1,8952,1 << Alliance Hunter --Beaststalker's Mantle (x1)
    .collect 16689,1,8953,1 << Alliance Mage --Magister's Mantle (x1)
    .collect 16729,1,8954,1 << Alliance Paladin --Lightforge Spaulders (x1)
    .collect 16695,1,8955,1 << Alliance Priest --Devout Mantle (x1)
    .collect 16708,1,8956,1 << Alliance Rogue --Shadowcraft Spaulders (x1)
    .collect 16701,1,8958,1 << Alliance Warlock --Dreadmist Mantle (x1)
    .collect 16733,1,8959,1 << Alliance Warrior --Spaulders of Valor (x1)
    .collect 16669,1,8957,1 << Horde Shaman --Pauldrons of Elements (x1)
    .collect 16718,1,9016,1 << Horde Druid --Wildheart Spaulders (x1)
    .collect 16679,1,9017,1 << Horde Hunter --Beaststalker's Mantle (x1)
    .collect 16689,1,9018,1 << Horde Mage --Magister's Mantle (x1)
    .collect 16695,1,9019,1 << Horde Priest --Devout Mantle (x1)
    .collect 16708,1,9020,1 << Horde Rogue --Shadowcraft Spaulders (x1)
    .collect 16701,1,9021,1 << Horde Warlock --Dreadmist Mantle (x1)
    .collect 16733,1,9022,1 << Horde Warrior --Spaulders of Valor (x1)
    .equip 3,16718 << Druid
    .equip 3,16679 << Hunter
    .equip 3,16689 << Mage
    .equip 3,16729 << Paladin
    .equip 3,16695 << Priest
    .equip 3,16708 << Rogue
    .equip 3,16701 << Warlock
    .equip 3,16733 << Warrior
    .equip 3,16669 << Shaman
step
    >>|cRXP_BUY_Collect the following items|r:
    >>|T133233:0|t[Dark Iron Bars] |cRXP_WARN_are created by miners|r
    >>|T134418:0|t[Enchanted Leather] |cRXP_WARN_and|r |T132873:0|t[Large Brilliant Shards] |cRXP_WARN_are created by enchanters|r
    >>|T132895:0|t[Mooncloth] |cRXP_WARN_is created by tailors|r
    >>|T134355:0|t[Cured Rugged Hides] |cRXP_WARN_are created by leatherworkers|r
    >>|T136192:0|t[|cRXP_FRIENDLY_Dark Runes|r] |cRXP_WARN_are random drops in|r |cFFfa9602Scholomance|r
    >>|cRXP_WARN_Buy them from the Auction House if possible|r
    .collect 11371,3,8947,1 --Dark Iron Bar (x3)
    .collect 12810,20,8947,1 --Enchanted Leather (x20)
    .collect 14344,8,8950,1 --Large Brilliant Shard (x8)
    .collect 14342,3,8947,1 --Mooncloth (x3)
    .collect 15407,4,8947,1 --Cured Rugged Hide (x4)
    .collect 20520,4,8950,1 --Dark Rune (x4)
step << Alliance
    #completewith next
    .zone Ironforge >>Travel to |cFFfa9602Ironforge|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deliana|r
    .accept 8929 >>Accept In Search of Anthion
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>Travel to |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mokvar|r
    .accept 8930 >>Accept In Search of Anthion
    .target Mokvar
step
    #completewith FindingAnthion
    +|cRXP_WARN_Start looking for a solid 5-man group capable of clearing the undead side of Stratholme within 45 minutes|r
step
    #completewith next
    .zone Eastern Plaguelands >>Travel to |cFFfa9602Eastern Plaguelands|r
step
    #label FindingAnthion
    .goto Eastern Kingdoms,55.06,17.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anthion|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Anthion|r
    .turnin 8929 >>Turn in In Search of Anthion << Alliance
    .turnin 8930 >>Turn in Search of Anthion << Horde
    .accept 8945 >>Accept Dead Man's Plea
    .target Anthion Harmon
step
    #completewith next
    .subzone 2017 >>Enter Stratholme
    >>|cRXP_WARN_Make sure you have a group ready|r
step
    >>Kill |cRXP_ENEMY_Baron Rivendare|r within 45 minutes to save |cRXP_FRIENDLY_Ysida Harmon|r
    >>|cRXP_WARN_The timer starts as you get the|r |T136129:0|t[The Baron's Ultimatum] |cRXP_WARN_debuff upon entering the undead side|r
    .complete 8945,1 --Ysida Freed (x1)
    .mob Baron Rivendare
    .target Ysida Harmon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysida Harmon|r
    .turnin 8945 >>Turn in Dead Man's Plea
    .accept 8946 >>Accept Proof of Life
    .target Ysida Harmon
step
    .goto Eastern Kingdoms,55.06,17.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anthion|r outside Stratholme
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Anthion|r
    .turnin 8946 >>Turn in Proof of Life
    .accept 8947 >>Accept Anthion's Strange Request
    .target Anthion Harmon
step
    >>|cRXP_BUY_Collect the following items|r:
    >>|T133233:0|t[Dark Iron Bars] |cRXP_WARN_are created by miners|r
    >>|T134418:0|t[Enchanted Leather] |cRXP_WARN_is created by enchanters|r
    >>|T132895:0|t[Mooncloth] |cRXP_WARN_is created by tailors|r
    >>|T134355:0|t[Cured Rugged Hides] |cRXP_WARN_are created by leatherworkers|r
    >>|T136192:0|t[|cRXP_FRIENDLY_Dark Runes|r] |cRXP_WARN_are random drops in|r |cFFfa9602Scholomance|r
    >>|cRXP_WARN_Buy them from the Auction House if possible|r
    .collect 11371,3,8947,1 --Dark Iron Bar (x3)
    .collect 12810,20,8947,1 --Enchanted Leather (x20)
    .collect 14344,8,8950,1 --Large Brilliant Shard (x8)
    .collect 14342,3,8947,1 --Mooncloth (x3)
    .collect 15407,4,8947,1 --Cured Rugged Hide (x4)
    .collect 20520,4,8950,1 --Dark Rune (x4)
step
    .goto Eastern Kingdoms,55.06,17.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anthion|r outside Stratholme
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Anthion|r
    .turnin 8947 >>Turn in Anthion's Strange Request
    .accept 8948 >>Accept Anthion's Old Friend
    .target Anthion Harmon
step
    #softcore
    #completewith AnthionsFriend
    .zone Feralas >>Travel to |cFFfa9602Feralas|r
    >>|cRXP_WARN_This next section takes place in Dire Maul. It is possible to solo but grouping up is strongly recommended|r
    .subzoneskip 2557
step
    #hardcore
    #completewith AnthionsFriend
    .zone Feralas >>Travel to |cFFfa9602Feralas|r
    >>|cRXP_WARN_This next section takes place in Dire Maul. Make sure you have a group ready of at least 3 players|r
    .subzoneskip 2557
step
    #completewith AnthionsFriend
    .goto Kalimdor,43.39,66.52,20 >>Enter the Northern entrance of Dire Maul
    >>|cRXP_WARN_You must have the|r |T134244:0|t[Crescent Key] |cRXP_WARN_to be able to open the door into Dire Maul North and into the library|r << !Rogue
    >>|cRXP_WARN_You must have the|r |T134244:0|t[Crescent Key] |cRXP_WARN_or have 300 skill in lockpicking to be able to open the door into Dire Maul North and into the library|r << Rogue
    >>|cRXP_WARN_Alternatively ask another player to open the doors for you|r
    .itemcount 18249,<1 << !Rogue --Crescent Key
    .skill lockpicking,300,1 << Rogue
step
    #optional
    #completewith AnthionsFriend
    .goto Kalimdor,43.39,66.52,20 >>Enter the Northern entrance of Dire Maul
    .itemcount 18249,1 << !Rogue --Crescent Key
    .skill lockpicking,<300,1 << Rogue
step
    #label AnthionsFriend
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falrin Treeshaper|r in the Dire Maul library
    .turnin 8948 >>Turn in Anthion's Old Friend
    .accept 8949 >>Accept Falrin's Vendetta
    .target Falrin Treeshaper
    --.link  >> |cRXP_WARN_You can reach the library without killing any mobs. Click here for video reference|r
    --VV TODO: Library skip video
step
    >>Kill |cRXP_ENEMY_Gordok Ogres|r in |cFFfa9602Dire Maul North|r. Loot them for their |cRXP_LOOT_Warbeads|r
    >>|cRXP_WARN_Alternatively you can kill|r |cRXP_ENEMY_Spirestone Ogres|r |cRXP_WARN_in|r |cFFfa9602Lower Blackrock Spire|r
    .complete 8949,1 --Ogre Warbeads (x25)
    .mob Gordok Mage-Lord
    .mob Gordok Brute
    .mob Gordok Ogre-Mage
    .mob Gordok Enforcer
    .mob Gordok Mauler
    .mob Gordok Warlock
    .mob Gordok Captain
    .mob Gordok Reaver
    .mob Spirestone Battle Mage
    .mob Spirestone Reaver
    .mob Spirestone Enforcer
    .mob Spirestone Ogre Magus
    .mob Spirestone Mystic
    .mob Spirestone Warlord
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falrin Treeshaper|r in the Dire Maul library
    .turnin 8949 >>Turn in Falrin's Vendetta
    .accept 8950 >>Accept The Instigator's Enchantment
    .target Falrin Treeshaper
step
    #completewith next
    .goto Kalimdor,42.98,67.73,20 >>Enter the Western instance of Dire Maul
    >>|cRXP_WARN_You must have the|r |T134244:0|t[Crescent Key] |cRXP_WARN_to be able to open the door into Dire Maul West|r << !Rogue
    >>|cRXP_WARN_You must have the|r |T134244:0|t[Crescent Key] |cRXP_WARN_or have 300 skill in lockpicking to be able to open the door into Dire Maul West|r << Rogue
    >>|cRXP_WARN_Alternatively ask another player to open the door for you|r
    .itemcount 18249,<1 << !Rogue --Crescent Key
    .skill lockpicking,300,1 << Rogue
 step
    #completewith AnthionsFriend2
    .goto Kalimdor,42.98,67.73,20 >>Enter the Western entrance of Dire Maul
    .itemcount 18249,1 << !Rogue --Crescent Key
    .skill lockpicking,<300,1 << Rogue
step
    >>Kill |cRXP_ENEMY_Eldreth Ghosts|r in |cFFfa9602Dire Maul West|r. Loot them for |cRXP_LOOT_Jeering Spectre's Essence|r
    .complete 8950,1 --Jeering Spectre's Essence (x1)
    .mob Eldreth Wraith
    .mob Eldreth Seether
    .mob Eldreth Spectre
    .mob Eldreth Spirit
    .mob Eldreth Phantasm
    .mob Eldreth Apparition
    .mob Eldreth Sorcerer
step
    >>|cRXP_BUY_Collect the following items|r:
    >>|T132873:0|t[Large Brilliant Shards] |cRXP_WARN_are created by enchanters|r
    >>|T136192:0|t[|cRXP_FRIENDLY_Dark Runes|r] |cRXP_WARN_are random drops in|r |cFFfa9602Scholomance|r
    >>|cRXP_WARN_Buy them from the Auction House if possible|r
    .collect 14344,8,8950,1 --Large Brilliant Shard (x8)
    .collect 20520,4,8950,1 --Dark Rune (x4)
step
    #completewith AnthionsFriend2
    .goto Kalimdor,43.39,66.52,20 >>Enter the Northern entrance of Dire Maul
    >>|cRXP_WARN_You must have the|r |T134244:0|t[Crescent Key] |cRXP_WARN_to be able to open the door into Dire Maul North and into the library|r << !Rogue
    >>|cRXP_WARN_You must have the|r |T134244:0|t[Crescent Key] |cRXP_WARN_or have 300 skill in lockpicking to be able to open the door into Dire Maul North and into the library|r << Rogue
    >>|cRXP_WARN_Alternatively ask another player to open the doors for you|r
    .itemcount 18249,<1 << !Rogue --Crescent Key
    .skill lockpicking,300,1 << Rogue
step
    #optional
    #completewith AnthionsFriend2
    .goto Kalimdor,43.39,66.52,20 >>Enter the Northern entrance of Dire Maul
    .itemcount 18249,1 << !Rogue --Crescent Key
    .skill lockpicking,<300,1 << Rogue
step
    #label AnthionsFriend2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falrin Treeshaper|r in the Dire Maul library
    .turnin 8950 >>Turn in The Instigator's Enchantment
    .accept 9015 >>Accept The Challenge
    .target Falrin Treeshaper
    --.link  >> |cRXP_WARN_You can reach the library without killing any mobs. Click here for video reference|r
    --VV TODO: Library skip video
step
    #completewith next
    .subzone 254 >>Travel to |cFFfa9602Blackrock Mountain|r
step
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>Enter Blackrock Depths
    >>|cRXP_WARN_Make sure you have a group ready|r
step
    .use 21986 >>Enter the Ring of Law arena and use the |T132619:0|t[Banner of Provocation]
    >>This will summon |cRXP_ENEMY_Theldren|r. Kill him and loot him for the |cRXP_LOOT_Top Piece of Lord Valthalak's Amulet|r
    >>|cRXP_WARN_This fight is hard. |cRXP_ENEMY_Theldren|r will spawn with multiple level 60 elite adds. Make sure your group has enough crowd control for them|r
    .complete 9015,1 --Theldren's Team Defeated
    .complete 9015,2 --Top Piece of Lord Valthalak's Amulet (x1)
    .mob Theldren
step
    #completewith next
    .zone Eastern Plaguelands >>Travel to Eastern Plaguelands
step
    .goto Eastern Kingdoms,55.06,17.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anthion|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Anthion|r
    .turnin 9015 >>Turn in The Challenge
    .accept 8951 >>Accept Anthion's Parting Words << Alliance Druid
    .accept 8952 >>Accept Anthion's Parting Words << Alliance Hunter
    .accept 8953 >>Accept Anthion's Parting Words << Alliance Mage
    .accept 8954 >>Accept Anthion's Parting Words << Alliance Paladin
    .accept 8955 >>Accept Anthion's Parting Words << Alliance Priest
    .accept 8956 >>Accept Anthion's Parting Words << Alliance Rogue
    .accept 8958 >>Accept Anthion's Parting Words << Alliance Warlock
    .accept 8959 >>Accept Anthion's Parting Words << Alliance Warrior
    .accept 8957 >>Accept Anthion's Parting Words << Horde Shaman
    .accept 9016 >>Accept Anthion's Parting Words << Horde Druid
    .accept 9017 >>Accept Anthion's Parting Words << Horde Hunter
    .accept 9018 >>Accept Anthion's Parting Words << Horde Mage
    .accept 9019 >>Accept Anthion's Parting Words << Horde Priest
    .accept 9020 >>Accept Anthion's Parting Words << Horde Rogue
    .accept 9021 >>Accept Anthion's Parting Words << Horde Warlock
    .accept 9022 >>Accept Anthion's Parting Words << Horde Warrior
    .target Anthion Harmon
step << Alliance
    #completewith next
    .zone Ironforge >>Travel to |cFFfa9602Ironforge|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deliana|r
    >>You will need |T132542:0|t[|cRXP_LOOT_Wildheart Boots|r], |T134588:0|t[|cRXP_LOOT_Wildheart Kilt|r] and |T135032:0|t[|cRXP_LOOT_Wildheart Spaulders|r] to turn in this quest << Druid
    >>You will need |T132588:0|t[|cRXP_LOOT_Beaststalker's Boots|r], |T134583:0|t[|cRXP_LOOT_Beaststalker's Pants|r] and |T135041:0|t[|cRXP_LOOT_Beaststalker's Mantle|r] to turn in this quest << Hunter
    >>You will need |T132536:0|t[|cRXP_LOOT_Magister's Boots|r], |T134586:0|t[|cRXP_LOOT_Magister's Leggings|r] and |T135054:0|t[|cRXP_LOOT_Magister's Mantle|r] to turn in this quest << Mage
    >>You will need |T132584:0|t[|cRXP_LOOT_Lightforge Boots|r], |T134584:0|t[|cRXP_LOOT_Lightforge Legplates|r] and |T135041:0|t[|cRXP_LOOT_Lightforge Spaulders|r] to turn in this quest << Paladin
    >>You will need |T132539:0|t[|cRXP_LOOT_Devout Sandals|r], |T134588:0|t[|cRXP_LOOT_Devout Skirt|r] and |T135033:0|t[|cRXP_LOOT_Devout Mantle|r] to turn in this quest << Priest
    >>You will need |T132542:0|t[|cRXP_LOOT_Shadowcraft Boots|r], |T134582:0|t[|cRXP_LOOT_Shadowcraft Pants|r] and |T135038:0|t[|cRXP_LOOT_Shadowcraft Spaulders|r] to turn in this quest << Rogue
    >>You will need |T132539:0|t[|cRXP_LOOT_Dreadmist Sandals|r], |T134588:0|t[|cRXP_LOOT_Dreadmist Leggings|r] and |T133732:0|t[|cRXP_LOOT_Dreadmist Mantle|r] to turn in this quest << Warlock
    >>You will need |T132584:0|t[|cRXP_LOOT_Boots of Valor|r], |T134584:0|t[|cRXP_LOOT_Legplates of Valor|r] and |T135061:0|t[|cRXP_LOOT_Spaulders of Valor|r] to turn in this quest << Warrior
    .collect 16715,1,8951,1 << Alliance Druid --Wildheart Boots (x1)
    .collect 16719,1,8951,1 << Alliance Druid --Wildheart Kilt (x1)
    .collect 16718,1,8951,1 << Alliance Druid --Wildheart Spaulders (x1)
    .collect 16675,1,8952,1 << Alliance Hunter --Beaststalker's Boots (x1)
    .collect 16678,1,8952,1 << Alliance Hunter --Beaststalker's Pants (x1)
    .collect 16679,1,8952,1 << Alliance Hunter --Beaststalker's Mantle (x1)
    .collect 16682,1,8953,1 << Alliance Mage --Magister's Boots (x1)
    .collect 16687,1,8953,1 << Alliance Mage --Magister's Leggings (x1)
    .collect 16689,1,8953,1 << Alliance Mage --Magister's Mantle (x1)
    .collect 16725,1,8954,1 << Alliance Paladin --Lightforge Boots (x1)
    .collect 16728,1,8954,1 << Alliance Paladin --Lightforge Legplates (x1)
    .collect 16729,1,8954,1 << Alliance Paladin --Lightforge Spaulders (x1)
    .collect 16691,1,8955,1 << Alliance Priest --Devout Sandals (x1)
    .collect 16694,1,8955,1 << Alliance Priest --Devout Skirt (x1)
    .collect 16695,1,8955,1 << Alliance Priest --Devout Mantle (x1)
    .collect 16711,1,8956,1 << Alliance Rogue --Shadowcraft Boots (x1)
    .collect 16709,1,8956,1 << Alliance Rogue --Shadowcraft Pants (x1)
    .collect 16708,1,8956,1 << Alliance Rogue --Shadowcraft Spaulders (x1)
    .collect 16704,1,8958,1 << Alliance Warlock --Dreadmist Sandals (x1)
    .collect 16699,1,8958,1 << Alliance Warlock --Dreadmist Leggings (x1)
    .collect 16701,1,8958,1 << Alliance Warlock --Dreadmist Mantle (x1)
    .collect 16734,1,8959,1 << Alliance Warrior --Boots of Valor (x1)
    .collect 16732,1,8959,1 << Alliance Warrior --Legplates of Valor (x1)
    .collect 16733,1,8959,1 << Alliance Warrior --Spaulders of Valor (x1)
    .turnin 8951 >>Turn in Anthion's Parting Words << Druid
    .turnin 8952 >>Turn in Anthion's Parting Words << Hunter
    .turnin 8953 >>Turn in Anthion's Parting Words << Mage
    .turnin 8954 >>Turn in Anthion's Parting Words << Paladin
    .turnin 8955 >>Turn in Anthion's Parting Words << Priest
    .turnin 8956 >>Turn in Anthion's Parting Words << Rogue
    .turnin 8958 >>Turn in Anthion's Parting Words << Warlock
    .turnin 8959 >>Turn in Anthion's Parting Words << Warrior
    .accept 8960 >>Accept Bodley's Unfortunate Fate
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>Travel to |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mokvar|r
    >>You will need |T132542:0|t[|cRXP_LOOT_Wildheart Boots|r], |T134588:0|t[|cRXP_LOOT_Wildheart Kilt|r] and |T135032:0|t[|cRXP_LOOT_Wildheart Spaulders|r] to turn in this quest << Druid
    >>You will need |T132588:0|t[|cRXP_LOOT_Beaststalker's Boots|r], |T134583:0|t[|cRXP_LOOT_Beaststalker's Pants|r] and |T135041:0|t[|cRXP_LOOT_Beaststalker's Mantle|r] to turn in this quest << Hunter
    >>You will need |T132536:0|t[|cRXP_LOOT_Magister's Boots|r], |T134586:0|t[|cRXP_LOOT_Magister's Leggings|r] and |T135054:0|t[|cRXP_LOOT_Magister's Mantle|r] to turn in this quest << Mage
    >>You will need |T132539:0|t[|cRXP_LOOT_Devout Sandals|r], |T134588:0|t[|cRXP_LOOT_Devout Skirt|r] and |T135033:0|t[|cRXP_LOOT_Devout Mantle|r] to turn in this quest << Priest
    >>You will need |T132542:0|t[|cRXP_LOOT_Shadowcraft Boots|r], |T134582:0|t[|cRXP_LOOT_Shadowcraft Pants|r] and |T135038:0|t[|cRXP_LOOT_Shadowcraft Spaulders|r] to turn in this quest << Rogue
    >>You will need |T132592:0|t[|cRXP_LOOT_Boots of Elements|r], |T134583:0|t[|cRXP_LOOT_Kilt of Elements|r] and  |T135060:0|t[|cRXP_LOOT_Pauldrons of Elements|r] to turn in this quest << Shaman
    >>You will need |T132539:0|t[|cRXP_LOOT_Dreadmist Sandals|r], |T134588:0|t[|cRXP_LOOT_Dreadmist Leggings|r] and |T133732:0|t[|cRXP_LOOT_Dreadmist Mantle|r] to turn in this quest << Warlock
    >>You will need |T132584:0|t[|cRXP_LOOT_Boots of Valor|r], |T134584:0|t[|cRXP_LOOT_Legplates of Valor|r] and |T135061:0|t[|cRXP_LOOT_Spaulders of Valor|r] to turn in this quest << Warrior
    .collect 16670,1,8957,1 << Horde Shaman --Boots of Elements (x1)
    .collect 16668,1,8957,1 << Horde Shaman --Kilt of Elements (x1)
    .collect 16669,1,8957,1 << Horde Shaman --Pauldrons of Elements (x1)
    .collect 16715,1,9016,1 << Horde Druid --Wildheart Boots (x1)
    .collect 16719,1,9016,1 << Horde Druid --Wildheart Kilt (x1)
    .collect 16718,1,9016,1 << Horde Druid --Wildheart Spaulders (x1)
    .collect 16675,1,9017,1 << Horde Hunter --Beaststalker's Boots (x1)
    .collect 16678,1,9017,1 << Horde Hunter --Beaststalker's Pants (x1)
    .collect 16679,1,9017,1 << Horde Hunter --Beaststalker's Mantle (x1)
    .collect 16682,1,9018,1 << Horde Mage --Magister's Boots (x1)
    .collect 16687,1,9018,1 << Horde Mage --Magister's Leggings (x1)
    .collect 16689,1,9018,1 << Horde Mage --Magister's Mantle (x1)
    .collect 16691,1,9019,1 << Horde Priest --Devout Sandals (x1)
    .collect 16694,1,9019,1 << Horde Priest --Devout Skirt (x1)
    .collect 16695,1,9019,1 << Horde Priest --Devout Mantle (x1)
    .collect 16711,1,9020,1 << Horde Rogue --Shadowcraft Boots (x1)
    .collect 16709,1,9020,1 << Horde Rogue --Shadowcraft Pants (x1)
    .collect 16708,1,9020,1 << Horde Rogue --Shadowcraft Spaulders (x1)
    .collect 16704,1,9021,1 << Horde Warlock --Dreadmist Sandals (x1)
    .collect 16699,1,9021,1 << Horde Warlock --Dreadmist Leggings (x1)
    .collect 16701,1,9021,1 << Horde Warlock --Dreadmist Mantle (x1)
    .collect 16734,1,9022,1 << Horde Warrior --Boots of Valor (x1)
    .collect 16732,1,9022,1 << Horde Warrior --Legplates of Valor (x1)
    .collect 16733,1,9022,1 << Horde Warrior --Spaulders of Valor (x1)
    .turnin 8957 >>Turn in Anthion's Parting Words << Shaman
    .turnin 9016 >>Turn in Anthion's Parting Words << Druid
    .turnin 9017 >>Turn in Anthion's Parting Words << Hunter
    .turnin 9018 >>Turn in Anthion's Parting Words << Mage
    .turnin 9019 >>Turn in Anthion's Parting Words << Priest
    .turnin 9020 >>Turn in Anthion's Parting Words << Rogue
    .turnin 9021 >>Turn in Anthion's Parting Words << Warlock
    .turnin 9022 >>Turn in Anthion's Parting Words << Warrior
    .accept 8960 >>Accept Bodley's Unfortunate Fate
    .target Mokvar

]])


RXPGuides.RegisterGuide([[
#classic
#group RestedXP Endgame Guides
#subgroup Feralheart Set Guide << Druid
#subgroup Beastmaster Set Guide << Hunter
#subgroup Sorcerer's Set Guide << Mage
#subgroup Soulforge Set Guide << Paladin
#subgroup Darkmantle Set Guide << Rogue
#subgroup The Five Thunders Set Guide << Shaman
#subgroup Deathmist Set Guide << Warlock
#subgroup Heroism Set Guide << Warrior
#subgroup Virtuous Set Guide << Priest
#name Part 4: Helm & Chest


step
    #optional
    +|cRXP_WARN_You must complete Part 3: Pants, Shoulders & Boots before starting this part of the guide|r
    .isQuestAvailable 8951 << Alliance Druid
    .isQuestAvailable 8952 << Alliance Hunter
    .isQuestAvailable 8953 << Alliance Mage
    .isQuestAvailable 8954 << Alliance Paladin
    .isQuestAvailable 8955 << Alliance Priest
    .isQuestAvailable 8956 << Alliance Rogue
    .isQuestAvailable 8958 << Alliance Warlock
    .isQuestAvailable 8959 << Alliance Warrior
    .isQuestAvailable 8957 << Horde Shaman
    .isQuestAvailable 9016 << Horde Druid
    .isQuestAvailable 9017 << Horde Hunter
    .isQuestAvailable 9018 << Horde Mage
    .isQuestAvailable 9019 << Horde Priest
    .isQuestAvailable 9020 << Horde Rogue
    .isQuestAvailable 9021 << Horde Warlock
    .isQuestAvailable 9022 << Horde Warrior
step
    >>Obtain the |T133129:0|t[|cRXP_LOOT_Wildheart Cowl|r]. This gets dropped by |cRXP_ENEMY_Darkmaster Gandling|r in |cFFfa9602Scholomance|r << Druid
    >>Obtain the |T133126:0|t[|cRXP_LOOT_Beaststalker's Cap|r]. This gets dropped by |cRXP_ENEMY_Darkmaster Gandling|r in |cFFfa9602Scholomance|r << Hunter
    >>Obtain the |T133076:0|t[|cRXP_LOOT_Lightforge Helm|r]. This gets dropped by |cRXP_ENEMY_Darkmaster Gandling|r in |cFFfa9602Scholomance|r << Paladin
    >>Obtain the |T132767:0|t[|cRXP_LOOT_Devout Crown|r]. This gets dropped by |cRXP_ENEMY_Darkmaster Gandling|r in |cFFfa9602Scholomance|r << Priest
    >>Obtain the |T133143:0|t[|cRXP_LOOT_Shadowcraft Cap|r]. This gets dropped by |cRXP_ENEMY_Darkmaster Gandling|r in |cFFfa9602Scholomance|r << Rogue
    >>Obtain the |T133072:0|t[|cRXP_LOOT_Coif of Elements|r]. This gets dropped by |cRXP_ENEMY_Darkmaster Gandling|r in |cFFfa9602Scholomance|r << Shaman
    >>Obtain the |T133131:0|t[|cRXP_LOOT_Dreadmist Mask|r]. This gets dropped by |cRXP_ENEMY_Darkmaster Gandling|r in |cFFfa9602Scholomance|r << Warlock
    >>Obtain the |T133070:0|t[|cRXP_LOOT_Helm of Valor|r]. This gets dropped by |cRXP_ENEMY_Darkmaster Gandling|r in |cFFfa9602Scholomance|r << Warrior
    >>Obtain the |T132768:0|t[|cRXP_LOOT_Magister's Crown|r]. This gets dropped by |cRXP_ENEMY_Darkmaster Gandling|r in |cFFfa9602Scholomance|r << Mage
    >>|cRXP_WARN_Alternatively buy them from |cRXP_FRIENDLY_Pix Xizzix|r in Booty Bay in exchange for|r |T133799:0|t[|cRXP_FRIENDLY_Tarnished Undermine Real|r] << sod
    .collect 16727,1,9002,1 << Alliance Paladin --Lightforge Helm (x1)
    .collect 16720,1,8999,1 << Alliance Druid --Wildheart Cowl (x1)
    .collect 16677,1,9000,1 << Alliance Hunter --Beaststalker's Cap (x1)
    .collect 16693,1,9003,1 << Alliance Priest --Devout Crown (x1)
    .collect 16707,1,9004,1 << Alliance Rogue --Shadowcraft Cap (x1)
    .collect 16698,1,9005,1 << Alliance Warlock --Dreadmist Mask (x1)
    .collect 16731,1,9006,1 << Alliance Warrior --Helm of Valor (x1)
    .collect 16686,1,9001,1 << Alliance Mage --Magister's Crown (x1)
    .collect 16720,1,9007,1 << Horde Druid --Wildheart Cowl (x1)
    .collect 16677,1,9008,1 << Horde Hunter --Beaststalker's Cap (x1)
    .collect 16693,1,9009,1 << Horde Priest --Devout Crown (x1)
    .collect 16707,1,9010,1 << Horde Rogue --Shadowcraft Cap (x1)
    .collect 16667,1,9011,1 << Horde Shaman --Coif of Elements (x1)
    .collect 16698,1,9012,1 << Horde Warlock --Dreadmist Mask (x1)
    .collect 16731,1,9013,1 << Horde Warrior --Helm of Valor (x1)
    .collect 16686,1,9014,1 << Horde Mage --Magister's Crown (x1)
    .equip 1,16727 << Paladin
    .equip 1,16720 << Druid
    .equip 1,16677 << Hunter
    .equip 1,16693 << Priest
    .equip 1,16707 << Rogue
    .equip 1,16698 << Warlock
    .equip 1,16731 << Warrior
    .equip 1,16686 << Mage
    .equip 1,16667 << Shaman
step
    >>Obtain the |T132741:0|t[|cRXP_LOOT_Wildheart Vest|r]. This gets dropped by |cRXP_ENEMY_General Drakkisath|r in |cFFfa9602Upper Blackrock Spire|r << Druid
    >>Obtain the |T132625:0|t[|cRXP_LOOT_Beaststalker's Tunic|r]. This gets dropped by |cRXP_ENEMY_General Drakkisath|r in |cFFfa9602Upper Blackrock Spire|r << Hunter
    >>Obtain the |T132738:0|t[|cRXP_LOOT_Lightforge Breastplate|r]. This gets dropped by |cRXP_ENEMY_General Drakkisath|r in |cFFfa9602Upper Blackrock Spire|r << Paladin
    >>Obtain the |T132652:0|t[|cRXP_LOOT_Devout Robe|r]. This gets dropped by |cRXP_ENEMY_General Drakkisath|r in |cFFfa9602Upper Blackrock Spire|r << Priest
    >>Obtain the |T132722:0|t[|cRXP_LOOT_Shadowcraft Tunic|r]. This gets dropped by |cRXP_ENEMY_General Drakkisath|r in |cFFfa9602Upper Blackrock Spire|r << Rogue
    >>Obtain the |T132633:0|t[|cRXP_LOOT_Vest of Elements|r]. This gets dropped by |cRXP_ENEMY_General Drakkisath|r in |cFFfa9602Upper Blackrock Spire|r << Shaman
    >>Obtain the |T132690:0|t[|cRXP_LOOT_Dreadmist Robe|r]. This gets dropped by |cRXP_ENEMY_General Drakkisath|r in |cFFfa9602Upper Blackrock Spire|r << Warlock
    >>Obtain the |T132738:0|t[|cRXP_LOOT_Breastplate of Valor|r]. This gets dropped by |cRXP_ENEMY_General Drakkisath|r in |cFFfa9602Upper Blackrock Spire|r << Warrior
    >>Obtain the |T132666:0|t[|cRXP_LOOT_Magister's Robes|r]. This gets dropped by |cRXP_ENEMY_General Drakkisath|r in |cFFfa9602Upper Blackrock Spire|r << Mage
    >>|cRXP_WARN_Alternatively buy them from |cRXP_FRIENDLY_Pix Xizzix|r in Booty Bay in exchange for|r |T133799:0|t[|cRXP_FRIENDLY_Tarnished Undermine Real|r] << sod
    .collect 16726,1,9002,1 << Alliance Paladin --Lightforge Breastplate (x1)
    .collect 16706,1,8999,1 << Alliance Druid --Wildheart Vest (x1)
    .collect 16674,1,9000,1 << Alliance Hunter --Beaststalker's Tunic (x1)
    .collect 16690,1,9003,1 << Alliance Priest --Devout Robe (x1)
    .collect 16721,1,9004,1 << Alliance Rogue --Shadowcraft Tunic (x1)
    .collect 16700,1,9005,1 << Alliance Warlock --Dreadmist Robe (x1)
    .collect 16730,1,9006,1 << Alliance Warrior --Breastplate of Valor (x1)
    .collect 16688,1,9001,1 << Alliance Mage --Magister's Robes (x1)
    .collect 16706,1,9007,1 << Horde Druid --Wildheart Vest (x1)
    .collect 16674,1,9008,1 << Horde Hunter --Beaststalker's Tunic (x1)
    .collect 16690,1,9009,1 << Horde Priest --Devout Robe (x1)
    .collect 16721,1,9010,1 << Horde Rogue --Shadowcraft Tunic (x1)
    .collect 16666,1,9011,1 << Horde Shaman --Vest of Elements (x1)
    .collect 16700,1,9012,1 << Horde Warlock --Dreadmist Robe (x1)
    .collect 16730,1,9013,1 << Horde Warrior --Breastplate of Valor (x1)
    .collect 16688,1,9014,1 << Horde Mage --Magister's Robes (x1)
    .equip 5,16726 << Paladin
    .equip 5,16706 << Druid
    .equip 5,16674 << Hunter
    .equip 5,16690 << Priest
    .equip 5,16721 << Rogue
    .equip 5,16700 << Warlock
    .equip 5,16730 << Warrior
    .equip 5,16688 << Mage
    .equip 5,16666 << Shaman
step << Alliance
    #completewith next
    .zone Ironforge >>Travel to |cFFfa9602Ironforge|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deliana|r
    .accept 8960 >>Accept Bodley's Unfortunate Fate
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>Travel to |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mokvar|r
    .accept 8960 >>Accept Bodley's Unfortunate Fate
    .target Mokvar
step
    >>|cRXP_BUY_Collect the following items|r:
    >>|cRXP_WARN_At least one|r |T132873:0|t[Large Brilliant Shard]
    >>|cRXP_WARN_A|r |T134821:0|t[Flask of Supreme Power]
    >>|cRXP_WARN_Buy it from the auction house if possible|r
    .collect 14344,1,8961,1 --Large Brilliant Shard (x1)
    .collect 13512,1,8994,1 --Flask of Supreme Power (x1)
step
    .reputation 529,honored >>|cRXP_WARN_Get an honored reputation with the Argent Dawn|r
step << Alliance
    #completewith next
    .subzone 3197 >>Travel to Chillwind Camp in |cFFfa9602Western Plaguelands|r
step << Alliance
    .goto Western Plaguelands,42.84,83.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Quartermaster Lightspark|r
    >>|cRXP_BUY_Buy a|r |T133879:0|t[Hallowed Brazier] |cRXP_BUY_from him|r
    >>|cRXP_WARN_This costs 120 gold|r
    .collect 22014,1,8961,1 --Hallowed Brazier (x1)
    .target Argent Quartermaster Lightspark
step << Horde
    #completewith next
    .subzone 2268 >>Travel to Light's Hope Chapel in |cFFfa9602Eastern Plaguelands|r
step << Horde
    .goto Eastern Plaguelands,81.63,60.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Miranda Breechlock|r
    >>|cRXP_BUY_Buy a|r |T133879:0|t[Hallowed Brazier] |cRXP_BUY_from her|r
    >>|cRXP_WARN_This costs 120 gold|r
    .collect 22014,1,8961,1 --Hallowed Brazier (x1)
    .target Quartermaster Miranda Breechlock
step
    #completewith next
    .subzone 254 >>Travel to |cFFfa9602Blackrock Mountain|r
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8960 >>Turn in Bodley's Unfortunate Fate
    .accept 8961 >>Accept Three Kings of Flame
    .target Bodley
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Enter Upper Blackrock Spire
    >>|cRXP_WARN_This is a 10-man dungeon. You or somebody in your party must have the|r |T133343:0|t[|cRXP_LOOT_Seal of Ascension|r] |cRXP_WARN_to be able to enter Upper Blackrock Spire|r
step
    >>Kill |cRXP_ENEMY_Pyroguard Emberseer|r. Loot him for the |cRXP_LOOT_Ember of Emberseer|r
    >>|cRXP_WARN_This is the first boss in|r |cFFfa9602Upper Blackrock Spire|r
    .complete 8961,2 --Ember of Emberseer (x1)
    .mob Pyroguard Emberseer
step
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>Enter Blackrock Depths
    >>|cRXP_WARN_Make sure you have a group ready|r
step
    >>Kill |cRXP_ENEMY_Lord Incendius|r. Loot him for the |cRXP_LOOT_Incendicite of Incendius|r
    .complete 8961,1 --Incendicite of Incendius (x1)
    .mob Lord Incendius
step
    #completewith DukeofCynders
    .zone Silithus >>Travel to |cFFfa9602Silithus|r
step
    #loop
    .goto Silithus,38.31,46.42,0
    .goto Silithus,27.93,30.66,0
    .goto Silithus,20.47,86.11,0
    .goto Silithus,38.31,46.42,80,0
    .goto Silithus,27.93,30.66,80,0
    .goto Silithus,20.47,86.11,80,0
    >>Kill |cRXP_ENEMY_Twilight|r mobs in |cFFfa9602Silithus|r. Loot them for their |T132658:0|t[|cRXP_FRIENDLY_Twilight Cultist|r] gear
    >>|cRXP_WARN_You are going to need multiple|r |T132658:0|t[|cRXP_FRIENDLY_Twilight Cultist|r] |cRXP_WARN_sets. It is recommended for your group to have at least 5 sets|r
    >>|cRXP_WARN_Alternatively buy them from the auction house|r
    .collect 20407,1,8961,1 --Twilight Cultist Robe (x1)
    .collect 20406,1,8961,1 --Twilight Cultist Mantle (x1)
    .collect 20408,1,8961,1 --Twilight Cultist Cowl (x1)
    .mob Twilight Marauder
    .mob Twilight Marauder Morna
    .mob Twilight Avenger
    .mob Twilight Geolord
    .mob Twilight Stonecaller
    .mob Twilight Overlord
    .mob Twilight Flamereaver
    .mob Twilight Master
step
    .reputation 609,friendly >>Get a friendly reputation with the Cenarion Circle
    >>|cRXP_WARN_Grind |cRXP_ENEMY_Twilight|r mobs or complete Cenarion Circle quests in Silithus to obtain reputation|r
step
    .goto Silithus,48.62,37.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huum Wildmane|r
    .accept 8331 >>Accept Aurel Goldleaf
    .target Huum Wildmane
    .itemcount 20422,<1
step
    .goto Silithus,51.96,38.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurel Goldleaf|r
    .turnin 8331 >>Turn in Aurel Goldleaf
    .accept 8332 >>Accept Dukes of the Council
    .target Aurel Goldleaf
    .itemcount 20422,<1
step
    .goto Silithus,38.31,46.42
    .goto Silithus,38.31,46.42,0
    .goto Silithus,27.93,30.66,0
    .goto Silithus,20.47,86.11,0
    >>Travel to a |cRXP_PICK_Lesser Wind Stone|r in one of the three |cRXP_ENEMY_Twilight|r camps. They are marked on your map
    >>Summon |cRXP_ENEMY_Templars|r and kill them. Loot them for their |T133438:0|t[|cRXP_LOOT_Abyssal Crests|r]
    >>|cRXP_WARN_You or somebody in your group must equip a|r |T132658:0|t[|cRXP_FRIENDLY_Twilight Cultist|r] |cRXP_WARN_set every time to summon a|r |cRXP_ENEMY_Templar|r
    .collect 20513,3 --Abyssal Crest (x3)
    .itemcount 20422,<1
    .mob Earthen Templar
    .mob Crimson Templar
    .mob Hoary Templar
    .mob Azure Templar
step
    .goto Silithus,51.96,38.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurel Goldleaf|r
    .turnin 8332 >>Turn in Dukes of the Council
    .target Aurel Goldleaf
    .itemcount 20513,3
step
    .goto Silithus,51.96,38.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurel Goldleaf|r
    .turnin 8333 >>Turn in Medallion of Station
    .target Aurel Goldleaf
    .itemcount 20513,3
step
    #label DukeofCynders
    .goto Silithus,37.67,44.81
    .goto Silithus,37.67,44.81,0
    .goto Silithus,24.74,32.68,0
    .goto Silithus,17.24,84.75,0
    >>Travel to a |cRXP_PICK_Wind Stone|r in one of the three |cRXP_ENEMY_Twilight|r camps. They are marked on your map
    >>Summon |cRXP_ENEMY_Dukes|r until the |cRXP_ENEMY_The Duke of Cynders|r spawns |cRXP_WARN_(25% spawn chance)|r. Kill him and loot him for the |cRXP_LOOT_Cinder of Cynders|r
    >>|cRXP_WARN_You or somebody in your group must have a|r |T133281:0|t[|cRXP_LOOT_Twilight Cultist Medallion of Station|r] |cRXP_WARN_and must equip a|r |T132658:0|t[|cRXP_FRIENDLY_Twilight Cultist|r] |cRXP_WARN_set every time to summon a new|r |cRXP_ENEMY_Duke|r
    >>|cRXP_WARN_You may need to collect more|r |T133281:0|t[|cRXP_LOOT_Twilight Cultist Medallion of Stations|r] |cRXP_WARN_and|r |T132658:0|t[|cRXP_FRIENDLY_Twilight Cultist|r] |cRXP_WARN_sets if unlucky|r
    .complete 8961,3 --Cinder of Cynders (x1)
    .mob The Duke of Cynders
step
    #completewith next
    .subzone 254 >>Travel to |cFFfa9602Blackrock Mountain|r
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8961 >>Turn in Three Kings of Flame
    .acceptmultiple 8962,8963,8964,8965 >>Accept Components of Importance
    .target Bodley
step
    #completewith next
    .subzone 2744 >>Travel to Hive'Regal in |cFFfa9602Silithus|r
    .isOnQuest 8962
step
    #loop
    .goto Silithus,55.77,71.71,0
    .goto Silithus,60.92,82.04,0
    .goto Silithus,60.43,89.80,0
    .goto Silithus,56.57,86.74,0
    .goto Silithus,54.55,82.84,0
    .goto Silithus,55.77,71.71,70,0
    .goto Silithus,60.92,82.04,70,0
    .goto Silithus,60.43,89.80,70,0
    .goto Silithus,56.57,86.74,70,0
    .goto Silithus,54.55,82.84,70,0
    >>Kill |cRXP_ENEMY_Hive'Regal|r mobs (elite). Loot them for the |cRXP_LOOT_Druidical Remains|r
    >>|cRXP_WARN_This has a very low droprate and can take quite some time. It is recommended to grind them in a 5-man group|r
    .complete 8962,1 --Druidical Remains (x1)
    .mob Hive'Regal Spitfire
    .mob Hive'Regal Hive Lord
    .mob Hive'Regal Slavemaker
    .mob Hive'Regal Ambusher
    .mob Hive'Regal Burrower
    .isOnQuest 8962
step
    #completewith next
    .subzone 2249 >>Travel to Frostwhisper Gorge in |cFFfa9602Winterspring|r
    .isOnQuest 8963
step
    #loop
    .goto Winterspring,61.44,68.26,0
    .goto Winterspring,59.64,67.32,60,0
    .goto Winterspring,61.44,68.26,60,0
    .goto Winterspring,63.62,69.30,60,0
    .goto Winterspring,61.44,68.26,60,0
    .goto Winterspring,59.64,67.32,60,0
    .goto Winterspring,60.19,64.96,60,0
    .goto Winterspring,64.06,66.80,60,0
    .goto Winterspring,65.81,69.15,60,0
    .goto Winterspring,65.10,72.07,60,0
    .goto Winterspring,61.50,72.64,60,0
    .goto Winterspring,59.60,69.74,60,0
    .goto Winterspring,58.20,67.59,60,0
    >>Kill |cRXP_ENEMY_Frostmaul Giants|r and |cRXP_ENEMY_Frostmaul Preservers|r (elite). Loot them for the |cRXP_LOOT_Starbreeze Village Relic|r
    >>|cRXP_WARN_This has a very low droprate and can take quite some time. It is recommended to grind them in a 5-man group|r
    .complete 8963,1 --Starbreeze Village Relic (x1)
    .mob Frostmaul Giant
    .mob Frostmaul Preserver
    .isOnQuest 8963
step
    #completewith next
    .subzone 2266 >>Travel to Tyr's Hand in |cFFfa9602Eastern Plaguelands|r
    .isOnQuest 8964
step
    #loop
    .goto Eastern Plaguelands,84.17,83.38,0
    .goto Eastern Plaguelands,84.17,83.38,60,0
    .goto Eastern Plaguelands,86.39,84.86,20,0
    .goto Eastern Plaguelands,87.36,85.57,15,0
    .goto Eastern Plaguelands,85.23,86.80,30,0
    .goto Eastern Plaguelands,87.16,87.39,30,0
    .goto Eastern Plaguelands,86.36,82.80,30,0
    .goto Eastern Plaguelands,87.69,81.23,40,0
    >>Kill |cRXP_ENEMY_Scarlet Praetorians|r (elite). Loot them for the |cRXP_ENEMY_Brilliant Sword of Zealotry|r
    >>|cRXP_WARN_This has a very low droprate and can take quite some time. It is recommended to grind them in a 5-man group|r
    .complete 8964,1 --Brilliant Sword of Zealotry (x1)
    .mob Scarlet Praetorian
    .isOnQuest 8964
step
    #completewith next
    .goto Hillsbrad Foothills,19.67,76.92
    .subzone 896 >>Travel to Purgation Isle in |cFFfa9602Hillsbrad Foothills|r
    .isOnQuest 8965
step
    #loop
    .goto Hillsbrad Foothills,15.72,81.41,0
    .goto Hillsbrad Foothills,19.67,76.92,30,0
    .goto Hillsbrad Foothills,15.50,77.64,30,0
    .goto Hillsbrad Foothills,13.16,81.53,30,0
    .goto Hillsbrad Foothills,14.53,84.33,30,0
    .goto Hillsbrad Foothills,16.14,84.13,30,0
    .goto Hillsbrad Foothills,16.84,81.48,30,0
    .goto Hillsbrad Foothills,15.72,81.41,40,0
    >>Kill |cRXP_ENEMY_Undead Ghosts|r (elite) on the island. Loot them for |cRXP_LOOT_Soul Ashes of the Banished|r
    >>|cRXP_WARN_This has a very low droprate and can take quite some time. It is recommended to grind them in a 5-man group|r
    .complete 8965,1 --Soul Ashes of the Banished (x1)
    .mob Cursed Paladin
    .mob Writhing Mage
    .mob Condemned Acolyte
    .mob Condemned Monk
    .mob Cursed Justicar
    .isOnQuest 8965
step
    #completewith LeftPiecePU
    .subzone 254 >>Travel to |cFFfa9602Blackrock Mountain|r
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8962 >>Turn in Components of Importance
    .target Bodley
    .isQuestComplete 8962
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8963 >>Turn in Components of Importance
    .target Bodley
    .isQuestComplete 8963
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8964 >>Turn in Components of Importance
    .target Bodley
    .isQuestComplete 8964
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8965 >>Turn in Components of Importance
    .target Bodley
    .isQuestComplete 8965
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .acceptmultiple 8966,8967,8968,8969 >>Accept The Left Piece of Lord Valthalak's Amulet
    .target Bodley
    .isQuestTurnedIn 8962
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .acceptmultiple 8966,8967,8968,8969 >>Accept The Left Piece of Lord Valthalak's Amulet
    .target Bodley
    .isQuestTurnedIn 8963
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .acceptmultiple 8966,8967,8968,8969 >>Accept The Left Piece of Lord Valthalak's Amulet
    .target Bodley
    .isQuestTurnedIn 8964
step
    #label LeftPiecePU
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .acceptmultiple 8966,8967,8968,8969 >>Accept The Left Piece of Lord Valthalak's Amulet
    .target Bodley
    .isQuestTurnedIn 8965
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Enter Blackrock Spire
    >>|cRXP_WARN_Make sure you have a group ready|r
    .isOnQuest 8966
step
    >>Kill |cRXP_ENEMY_Mor Grayhoof|r. Loot him for the |T133320:0|t[|cRXP_LOOT_Left Piece of Lord Valthalak's Amulet|r]
    .use 22049 >>|cRXP_WARN_Use the|r |T133881:0|t[Brazier of Beckoning] |cRXP_WARN_in|r |cRXP_ENEMY_War Master Voone's|r |cRXP_WARN_room to summon|r |cRXP_ENEMY_Mor Grayhoof|r
    .complete 8966,1 --Mor Grayhoof Slain (x1)
    .complete 8966,2 --Left Piece of Lord Valthalak's Amulet (x1)
    .mob War Master Voone
    .mob Mor Grayhoof
    .isOnQuest 8966
step
    #completewith next
    .zone Feralas >>Travel to |cFFfa9602Feralas|r
    .subzoneskip 2557
    .isOnQuest 8967
step
    #completewith next
    .goto Kalimdor,43.84,67.41,20 >>Enter the Eastern entrance of Dire Maul
    >>|cRXP_WARN_Make sure you have a group ready|r
    .isOnQuest 8967
step
    >>Kill |cRXP_ENEMY_Isalien|r. Loot her for the |T133320:0|t[|cRXP_LOOT_Left Piece of Lord Valthalak's Amulet|r]
    .use 22050 >>|cRXP_WARN_Use the|r |T133881:0|t[Brazier of Beckoning] |cRXP_WARN_in|r |cRXP_ENEMY_Alzzin the Wildshaper's|r |cRXP_WARN_room to summon|r |cRXP_ENEMY_Isalien|r
    .complete 8967,1 --Isalien slain (x1)
    .complete 8967,2 --Left Piece of Lord Valthalak's Amulet (x1)
    .mob Alzzin the Wildshaper
    .mob Isalien
    .isOnQuest 8967
step
    #completewith next
    .zone Eastern Plaguelands >>Travel to |cFFfa9602Eastern Plaguelands|r
    .subzoneskip 2017
    .isOnQuest 8968
step
    #completewith next
    .goto Eastern Kingdoms,55.06,17.51
    .subzone 2017 >>Enter Stratholme
    >>|cRXP_WARN_Make sure you have a group ready|r
    .isOnQuest 8968
step
    >>Kill |cRXP_ENEMY_Jarien|r and |cRXP_ENEMY_Sothos|r. Loot them for the |T133320:0|t[|cRXP_LOOT_Left Piece of Lord Valthalak's Amulet|r]
    .use 22051 >>|cRXP_WARN_Use the|r |T133881:0|t[Brazier of Beckoning] |cRXP_WARN_in|r |cRXP_ENEMY_Balnazzar's|r |cRXP_WARN_room to summon|r |cRXP_ENEMY_Jarien|r |cRXP_WARN_and|r |cRXP_ENEMY_Sothos|r
    .complete 8968,1 --Jarien slain (x1)
    .complete 8968,2 --Sothos slain (x1)
    .complete 8968,3 --Left Piece of Lord Valthalak's Amulet (x1)
    .mob Balnazzara
    .mob Jarien
    .mob Sothos
    .isOnQuest 8968
step
    #completewith next
    .zone Western Plaguelands >>Travel to |cFFfa9602Western Plaguelands|r
    .subzoneskip 2057
    .isOnQuest 8969
step
    #completewith next
    .goto Eastern Kingdoms,52.75,26.41
    .subzone 2057 >>Enter Scholomance
    >>|cRXP_WARN_Make sure you have a group ready|r
    .isOnQuest 8969
step
    >>Kill |cRXP_ENEMY_Kormok|r. Loot him for the |T133320:0|t[|cRXP_LOOT_Left Piece of Lord Valthalak's Amulet|r]
    .use 22052 >>|cRXP_WARN_Use the|r |T133881:0|t[Brazier of Beckoning] |cRXP_WARN_in|r |cRXP_ENEMY_Ras Frostwhisper's|r |cRXP_WARN_room to summon|r |cRXP_ENEMY_Kormok|r
    .complete 8969,1 --Kormok slain (x1)
    .complete 8969,2 --Left Piece of Lord Valthalak's Amulet (x1)
    .mob Ras Frostwhisper
    .mob Kormok
    .isOnQuest 8969
step
    #completewith AlcazIslandPU
    .subzone 254 >>Travel to |cFFfa9602Blackrock Mountain|r
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8966 >>Turn in The Left Piece of Lord Valthalak's Amulet
    .accept 8970 >>Accept I See Alcaz Island In Your Future...
    .target Bodley
    .isQuestComplete 8966
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8967 >>Turn in The Left Piece of Lord Valthalak's Amulet
    .accept 8970 >>Accept I See Alcaz Island In Your Future...
    .target Bodley
    .isQuestComplete 8967
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8968 >>Turn in The Left Piece of Lord Valthalak's Amulet
    .accept 8970 >>Accept I See Alcaz Island In Your Future...
    .target Bodley
    .isQuestComplete 8968
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8969 >>Turn in The Left Piece of Lord Valthalak's Amulet
    .accept 8970 >>Accept I See Alcaz Island In Your Future...
    .target Bodley
    .isQuestComplete 8969
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .accept 8970 >>Accept I See Alcaz Island In Your Future...
    .target Bodley
    .isQuestTurnedIn 8966
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .accept 8970 >>Accept I See Alcaz Island In Your Future...
    .target Bodley
    .isQuestTurnedIn 8967
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .accept 8970 >>Accept I See Alcaz Island In Your Future...
    .target Bodley
    .isQuestTurnedIn 8968
step
    #label AlcazIslandPU
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .accept 8970 >>Accept I See Alcaz Island In Your Future...
    .target Bodley
    .isQuestTurnedIn 8969
step
    #completewith next
    .goto Dustwallow Marsh,72.26,18.28
    .subzone 2079 >>Travel to Alcaz Island in |cFFfa9602Dustwallow Marsh|r
step
    #loop
    .goto Dustwallow Marsh,76.91,18.24,0
    .goto Dustwallow Marsh,74.38,17.99,50,0
    .goto Dustwallow Marsh,74.89,14.68,50,0
    .goto Dustwallow Marsh,74.38,17.99,50,0
    .goto Dustwallow Marsh,76.91,18.24,50,0
    .goto Dustwallow Marsh,76.56,22.15,50,0
    .goto Dustwallow Marsh,75.49,21.75,50,0
    >>Kill |cRXP_ENEMY_Strashaz Naga|r (elite). Loot them for their |cRXP_LOOT_Bloodkelp|r
    >>|cRXP_WARN_This has a very low droprate and can take quite some time. It is recommended to grind them in a 5-man group|r
    .complete 8970,1 --Bloodkelp (x20)
    .mob Strashaz Warrior
    .mob Strashaz Myrmidon
    .mob Strashaz Siren
    .mob Strashaz Sorceress
    .mob Strashaz Serpent Guard
step
    #completewith next
    .subzone 254 >>Travel to |cFFfa9602Blackrock Mountain|r
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8970 >>Turn in I See Alcaz Island In Your Future...
    .target Bodley
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .acceptmultiple 8985,8986,8987,8988 >>Accept More Components of Importance
    .target Bodley
    .isQuestTurnedIn 8970
step
    #completewith next
    .subzone 2744 >>Travel to Hive'Regal in |cFFfa9602Silithus|r
    .isOnQuest 8986
step
    #loop
    .goto Silithus,55.77,71.71,0
    .goto Silithus,60.92,82.04,0
    .goto Silithus,60.43,89.80,0
    .goto Silithus,56.57,86.74,0
    .goto Silithus,54.55,82.84,0
    .goto Silithus,55.77,71.71,70,0
    .goto Silithus,60.92,82.04,70,0
    .goto Silithus,60.43,89.80,70,0
    .goto Silithus,56.57,86.74,70,0
    .goto Silithus,54.55,82.84,70,0
    >>Kill |cRXP_ENEMY_Hive'Regal|r mobs (elite). Loot them for the |cRXP_LOOT_Druidical Remains|r
    >>|cRXP_WARN_This has a very low droprate and can take quite some time. It is recommended to grind them in a 5-man group|r
    .complete 8986,1 --Druidical Remains (x1)
    .mob Hive'Regal Spitfire
    .mob Hive'Regal Hive Lord
    .mob Hive'Regal Slavemaker
    .mob Hive'Regal Ambusher
    .mob Hive'Regal Burrower
    .isOnQuest 8986
step
    #completewith next
    .subzone 2249 >>Travel to Frostwhisper Gorge in |cFFfa9602Winterspring|r
    .isOnQuest 8985
step
    #loop
    .goto Winterspring,61.44,68.26,0
    .goto Winterspring,59.64,67.32,60,0
    .goto Winterspring,61.44,68.26,60,0
    .goto Winterspring,63.62,69.30,60,0
    .goto Winterspring,61.44,68.26,60,0
    .goto Winterspring,59.64,67.32,60,0
    .goto Winterspring,60.19,64.96,60,0
    .goto Winterspring,64.06,66.80,60,0
    .goto Winterspring,65.81,69.15,60,0
    .goto Winterspring,65.10,72.07,60,0
    .goto Winterspring,61.50,72.64,60,0
    .goto Winterspring,59.60,69.74,60,0
    .goto Winterspring,58.20,67.59,60,0
    >>Kill |cRXP_ENEMY_Frostmaul Giants|r and |cRXP_ENEMY_Frostmaul Preservers|r (elite). Loot them for the |cRXP_LOOT_Starbreeze Village Relic|r
    >>|cRXP_WARN_This has a very low droprate and can take quite some time. It is recommended to grind them in a 5-man group|r
    .complete 8985,1 --Starbreeze Village Relic (x1)
    .mob Frostmaul Giant
    .mob Frostmaul Preserver
    .isOnQuest 8985
step
    #completewith next
    .subzone 2266 >>Travel to Tyr's Hand in |cFFfa9602Eastern Plaguelands|r
    .isOnQuest 8987
step
    #loop
    .goto Eastern Plaguelands,84.17,83.38,0
    .goto Eastern Plaguelands,84.17,83.38,60,0
    .goto Eastern Plaguelands,86.39,84.86,20,0
    .goto Eastern Plaguelands,87.36,85.57,15,0
    .goto Eastern Plaguelands,85.23,86.80,30,0
    .goto Eastern Plaguelands,87.16,87.39,30,0
    .goto Eastern Plaguelands,86.36,82.80,30,0
    .goto Eastern Plaguelands,87.69,81.23,40,0
    >>Kill |cRXP_ENEMY_Scarlet Praetorians|r (elite). Loot them for the |cRXP_ENEMY_Brilliant Sword of Zealotry|r
    >>|cRXP_WARN_This has a very low droprate and can take quite some time. It is recommended to grind them in a 5-man group|r
    .complete 8987,1 --Brilliant Sword of Zealotry (x1)
    .mob Scarlet Praetorian
    .isOnQuest 8987
step
    #completewith next
    .goto Hillsbrad Foothills,19.67,76.92
    .subzone 896 >>Travel to Purgation Isle in |cFFfa9602Hillsbrad Foothills|r
    .isOnQuest 8988
step
    #loop
    .goto Hillsbrad Foothills,15.72,81.41,0
    .goto Hillsbrad Foothills,19.67,76.92,30,0
    .goto Hillsbrad Foothills,15.50,77.64,30,0
    .goto Hillsbrad Foothills,13.16,81.53,30,0
    .goto Hillsbrad Foothills,14.53,84.33,30,0
    .goto Hillsbrad Foothills,16.14,84.13,30,0
    .goto Hillsbrad Foothills,16.84,81.48,30,0
    .goto Hillsbrad Foothills,15.72,81.41,40,0
    >>Kill |cRXP_ENEMY_Undead Ghosts|r (elite) on the island. Loot them for |cRXP_LOOT_Soul Ashes of the Banished|r
    >>|cRXP_WARN_This has a very low droprate and can take quite some time. It is recommended to grind them in a 5-man group|r
    .complete 8988,1 --Soul Ashes of the Banished (x1)
    .mob Cursed Paladin
    .mob Writhing Mage
    .mob Condemned Acolyte
    .mob Condemned Monk
    .mob Cursed Justicar
    .isOnQuest 8988
step
    #completewith RightPiecePU
    .subzone 254 >>Travel to |cFFfa9602Blackrock Mountain|r
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8985 >>Turn in More Components of Importance
    .target Bodley
    .isQuestComplete 8985
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8986 >>Turn in More Components of Importance
    .target Bodley
    .isQuestComplete 8986
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8987 >>Turn in More Components of Importance
    .target Bodley
    .isQuestComplete 8987
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8988 >>Turn in More Components of Importance
    .target Bodley
    .isQuestComplete 8988
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .acceptmultiple 8989,8990,8991,8992 >>Accept The Right Piece of Lord Valthalak's Amulet
    .target Bodley
    .isQuestTurnedIn 8985
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .acceptmultiple 8989,8990,8991,8992 >>Accept The Right Piece of Lord Valthalak's Amulet
    .target Bodley
    .isQuestTurnedIn 8986
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .acceptmultiple 8989,8990,8991,8992 >>Accept The Right Piece of Lord Valthalak's Amulet
    .target Bodley
    .isQuestTurnedIn 8987
step
    #label RightPiecePU
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .acceptmultiple 8989,8990,8991,8992 >>Accept The Right Piece of Lord Valthalak's Amulet
    .target Bodley
    .isQuestTurnedIn 8988
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Enter Blackrock Spire
    >>|cRXP_WARN_Make sure you have a group ready|r
    .isOnQuest 8989
step
    >>Kill |cRXP_ENEMY_Mor Grayhoof|r. Loot him for the |T133318:0|t[|cRXP_LOOT_Right Piece of Lord Valthalak's Amulet|r]
    .use 22049 >>|cRXP_WARN_Use the|r |T133881:0|t[Brazier of Beckoning] |cRXP_WARN_in|r |cRXP_ENEMY_War Master Voone's|r |cRXP_WARN_room to summon|r |cRXP_ENEMY_Mor Grayhoof|r
    .complete 8989,1 --Mor Grayhoof Slain (x1)
    .collect 22046,1,8989,1 --Right Piece of Lord Valthalak's Amulet (x1)
    .mob War Master Voone
    .mob Mor Grayhoof
    .isOnQuest 8989
step
    #optional
    .use 22046 >>|cRXP_WARN_Use the|r |T133320:0|t[|cRXP_LOOT_Left Piece of Lord Valthalak's Amulet|r]|cRXP_WARN_, |r|T133318:0|t[|cRXP_LOOT_Right Piece of Lord Valthalak's Amulet|r] |cRXP_WARN_and|r |T133316:0|t[|cRXP_LOOT_Top Piece of Lord Valthalak's Amulet|r] |cRXP_WARN_to create|r |T133314:0|t[|cRXP_LOOT_Lord Valthalak's Amulet|r]
    .complete 8989,2 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,1
    .isOnQuest 8989
step
    .use 22046 >>|cRXP_WARN_Use the|r |T133320:0|t[|cRXP_LOOT_Left Piece of Lord Valthalak's Amulet|r]|cRXP_WARN_, |r|T133318:0|t[|cRXP_LOOT_Right Piece of Lord Valthalak's Amulet|r] |cRXP_WARN_and|r |T133316:0|t[|cRXP_LOOT_Top Piece of Lord Valthalak's Amulet|r] |cRXP_WARN_to create|r |T133314:0|t[|cRXP_LOOT_Lord Valthalak's Amulet|r]
    >>|cRXP_WARN_If you lost the|r |T133316:0|t[|cRXP_LOOT_Top Piece of Lord Valthalak's Amulet|r]|cRXP_WARN_, talk to|r |cRXP_FRIENDLY_Bodley|r |cRXP_WARN_to obtain it again|r
    .complete 8989,2 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,<1
    .isOnQuest 8989
step
    #completewith next
    .zone Feralas >>Travel to |cFFfa9602Feralas|r
    .subzoneskip 2557
    .isOnQuest 8990
step
    #completewith next
    .goto Kalimdor,43.84,67.41,20 >>Enter the Eastern entrance of Dire Maul
    >>|cRXP_WARN_Make sure you have a group ready|r
    .isOnQuest 8990
step
    >>Kill |cRXP_ENEMY_Isalien|r. Loot her for the |T133318:0|t[|cRXP_LOOT_Right Piece of Lord Valthalak's Amulet|r]
    .use 22050 >>|cRXP_WARN_Use the|r |T133881:0|t[Brazier of Beckoning] |cRXP_WARN_in|r |cRXP_ENEMY_Alzzin the Wildshaper's|r |cRXP_WARN_room to summon|r |cRXP_ENEMY_Isalien|r
    .complete 8990,1 --Isalien slain (x1)
    .collect 22046,1,8990,1 --Right Piece of Lord Valthalak's Amulet (x1)
    .mob Alzzin the Wildshaper
    .mob Isalien
    .isOnQuest 8990
step
    #optional
    .use 22046 >>|cRXP_WARN_Use the|r |T133320:0|t[|cRXP_LOOT_Left Piece of Lord Valthalak's Amulet|r]|cRXP_WARN_, |r|T133318:0|t[|cRXP_LOOT_Right Piece of Lord Valthalak's Amulet|r] |cRXP_WARN_and|r |T133316:0|t[|cRXP_LOOT_Top Piece of Lord Valthalak's Amulet|r] |cRXP_WARN_to create|r |T133314:0|t[|cRXP_LOOT_Lord Valthalak's Amulet|r]
    .complete 8990,2 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,1
    .isOnQuest 8990
step
    .use 22046 >>|cRXP_WARN_Use the|r |T133320:0|t[|cRXP_LOOT_Left Piece of Lord Valthalak's Amulet|r]|cRXP_WARN_, |r|T133318:0|t[|cRXP_LOOT_Right Piece of Lord Valthalak's Amulet|r] |cRXP_WARN_and|r |T133316:0|t[|cRXP_LOOT_Top Piece of Lord Valthalak's Amulet|r] |cRXP_WARN_to create|r |T133314:0|t[|cRXP_LOOT_Lord Valthalak's Amulet|r]
    >>|cRXP_WARN_If you lost the|r |T133316:0|t[|cRXP_LOOT_Top Piece of Lord Valthalak's Amulet|r]|cRXP_WARN_, talk to|r |cRXP_FRIENDLY_Bodley|r |cRXP_WARN_to obtain it again|r
    .complete 8990,2 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,<1
    .isOnQuest 8990
step
    #completewith next
    .zone Eastern Plaguelands >>Travel to |cFFfa9602Eastern Plaguelands|r
    .subzoneskip 2017
    .isOnQuest 8991
step
    #completewith next
    .goto Eastern Kingdoms,55.06,17.51
    .subzone 2017 >>Enter Stratholme
    >>|cRXP_WARN_Make sure you have a group ready|r
    .isOnQuest 8991
step
    >>Kill |cRXP_ENEMY_Jarien|r and |cRXP_ENEMY_Sothos|r. Loot them for the |T133318:0|t[|cRXP_LOOT_Right Piece of Lord Valthalak's Amulet|r]
    .use 22051 >>|cRXP_WARN_Use the|r |T133881:0|t[Brazier of Beckoning] |cRXP_WARN_in|r |cRXP_ENEMY_Balnazzar's|r |cRXP_WARN_room to summon|r |cRXP_ENEMY_Jarien|r |cRXP_WARN_and|r |cRXP_ENEMY_Sothos|r
    .complete 8991,1 --Jarien slain (x1)
    .complete 8991,2 --Sothos slain (x1)
    .collect 22046,1,8991,1 --Right Piece of Lord Valthalak's Amulet (x1)
    .mob Balnazzara
    .mob Jarien
    .mob Sothos
    .isOnQuest 8991
step
    #optional
    .use 22046 >>|cRXP_WARN_Use the|r |T133320:0|t[|cRXP_LOOT_Left Piece of Lord Valthalak's Amulet|r]|cRXP_WARN_, |r|T133318:0|t[|cRXP_LOOT_Right Piece of Lord Valthalak's Amulet|r] |cRXP_WARN_and|r |T133316:0|t[|cRXP_LOOT_Top Piece of Lord Valthalak's Amulet|r] |cRXP_WARN_to create|r |T133314:0|t[|cRXP_LOOT_Lord Valthalak's Amulet|r]
    .complete 8991,3 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,1
    .isOnQuest 8991
step
    .use 22046 >>|cRXP_WARN_Use the|r |T133320:0|t[|cRXP_LOOT_Left Piece of Lord Valthalak's Amulet|r]|cRXP_WARN_, |r|T133318:0|t[|cRXP_LOOT_Right Piece of Lord Valthalak's Amulet|r] |cRXP_WARN_and|r |T133316:0|t[|cRXP_LOOT_Top Piece of Lord Valthalak's Amulet|r] |cRXP_WARN_to create|r |T133314:0|t[|cRXP_LOOT_Lord Valthalak's Amulet|r]
    >>|cRXP_WARN_If you lost the|r |T133316:0|t[|cRXP_LOOT_Top Piece of Lord Valthalak's Amulet|r]|cRXP_WARN_, talk to|r |cRXP_FRIENDLY_Bodley|r |cRXP_WARN_to obtain it again|r
    .complete 8991,3 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,<1
    .isOnQuest 8991
step
    #completewith next
    .zone Western Plaguelands >>Travel to |cFFfa9602Western Plaguelands|r
    .subzoneskip 2057
    .isOnQuest 8992
step
    #completewith next
    .goto Eastern Kingdoms,52.75,26.41
    .subzone 2057 >>Enter Scholomance
    >>|cRXP_WARN_Make sure you have a group ready|r
    .isOnQuest 8992
step
    >>Kill |cRXP_ENEMY_Kormok|r. Loot him for the |T133318:0|t[|cRXP_LOOT_Right Piece of Lord Valthalak's Amulet|r]
    .use 22052 >>|cRXP_WARN_Use the|r |T133881:0|t[Brazier of Beckoning] |cRXP_WARN_in|r |cRXP_ENEMY_Ras Frostwhisper's|r |cRXP_WARN_room to summon|r |cRXP_ENEMY_Kormok|r
    .complete 8992,1 --Kormok slain (x1)
    .collect 22046,1,8992,1 --Right Piece of Lord Valthalak's Amulet (x1)
    .mob Ras Frostwhisper
    .mob Kormok
    .isOnQuest 8992
step
    #optional
    .use 22046 >>|cRXP_WARN_Use the|r |T133320:0|t[|cRXP_LOOT_Left Piece of Lord Valthalak's Amulet|r]|cRXP_WARN_, |r|T133318:0|t[|cRXP_LOOT_Right Piece of Lord Valthalak's Amulet|r] |cRXP_WARN_and|r |T133316:0|t[|cRXP_LOOT_Top Piece of Lord Valthalak's Amulet|r] |cRXP_WARN_to create|r |T133314:0|t[|cRXP_LOOT_Lord Valthalak's Amulet|r]
    .complete 8992,2 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,1
    .isOnQuest 8992
step
    .use 22046 >>|cRXP_WARN_Use the|r |T133320:0|t[|cRXP_LOOT_Left Piece of Lord Valthalak's Amulet|r]|cRXP_WARN_, |r|T133318:0|t[|cRXP_LOOT_Right Piece of Lord Valthalak's Amulet|r] |cRXP_WARN_and|r |T133316:0|t[|cRXP_LOOT_Top Piece of Lord Valthalak's Amulet|r] |cRXP_WARN_to create|r |T133314:0|t[|cRXP_LOOT_Lord Valthalak's Amulet|r]
    >>|cRXP_WARN_If you lost the|r |T133316:0|t[|cRXP_LOOT_Top Piece of Lord Valthalak's Amulet|r]|cRXP_WARN_, talk to|r |cRXP_FRIENDLY_Bodley|r |cRXP_WARN_to obtain it again|r
    .complete 8992,2 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,<1
    .isOnQuest 8992
step
    #completewith FinalPrepPU
    .subzone 254 >>Travel to |cFFfa9602Blackrock Mountain|r
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8989 >>Turn in The Right Piece of Lord Valthalak's Amulet
    .accept 8994 >>Accept Final Preparations
    .target Bodley
    .isQuestComplete 8989
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8990 >>Turn in The Right Piece of Lord Valthalak's Amulet
    .accept 8994 >>Accept Final Preparations
    .target Bodley
    .isQuestComplete 8990
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8991 >>Turn in The Right Piece of Lord Valthalak's Amulet
    .accept 8994 >>Accept Final Preparations
    .target Bodley
    .isQuestComplete 8991
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8992 >>Turn in The Right Piece of Lord Valthalak's Amulet
    .accept 8994 >>Accept Final Preparations
    .target Bodley
    .isQuestComplete 8992
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .accept 8994 >>Accept Final Preparations
    .target Bodley
    .isQuestTurnedIn 8989
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .accept 8994 >>Accept Final Preparations
    .target Bodley
    .isQuestTurnedIn 8990
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .accept 8994 >>Accept Final Preparations
    .target Bodley
    .isQuestTurnedIn 8991
step
    #label FinalPrepPU
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .accept 8994 >>Accept Final Preparations
    .target Bodley
    .isQuestTurnedIn 8992
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Enter Blackrock Spire
    >>|cRXP_WARN_Make sure you have a group ready|r
step
    >>Kill |cRXP_ENEMY_Orcs|r in Blackrock Spire. Loot them for their |cRXP_LOOT_Blackrock Bracers|r
    .complete 8994,1 --Blackrock Bracer (x40)
    --too many .mobs, would cause clutter
step
    >>|cRXP_BUY_Collect a |r |T134821:0|t[Flask of Supreme Power]
    >>|cRXP_WARN_Buy it from the auction house if possible|r
    .collect 13512,1,8994,1 --Flask of Supreme Power (x1)
step
    #completewith next
    .subzone 254 >>Travel to |cFFfa9602Blackrock Mountain|r
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8994 >>Turn in Final Preparations
    .accept 8995 >>Accept Mea Culpa, Lord Valthalak
    .target Bodley
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Enter Upper Blackrock Spire
    >>|cRXP_WARN_This is a 10-man dungeon. You or somebody in your party must have the|r |T133343:0|t[|cRXP_LOOT_Seal of Ascension|r] |cRXP_WARN_to be able to enter Upper Blackrock Spire|r
step
    .use 22048 >>Kill |cRXP_ENEMY_Lord Valthalak|r. |cRXP_WARN_Then use|r |T133314:0|t[Lord Valthalak's Amulet] |cRXP_WARN_on his corpse|r
    .use 22056 >>|cRXP_WARN_Use the|r |T133881:0|t[Brazier of Beckoning] |cRXP_WARN_in|r |cRXP_ENEMY_The Beast's|r |cRXP_WARN_room to summon|r |cRXP_ENEMY_Lord Valthalak|r
    .complete 8995,1 --Lord Valthalak slain (x1)
    .complete 8995,2 --Lord Valthalak's Amulet (x1)
    .mob The Beast
    .mob Lord Valthalak
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Spirit of Lord Valthalak|r that appears
    .turnin 8995 >>Turn in Mea Culpa, Lord Valthalak
    .accept 8996 >>Accept Return to Bodley
    .target Spirit of Lord Valthalak
step
    #completewith next
    .subzone 254 >>Travel to |cFFfa9602Blackrock Mountain|r
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8996 >>Turn in Accept Return to Bodley
    .accept 8997 >>Accept Back to the Beginning << Alliance
    .accept 8998 >>Accept Back to the Beginning << Horde
    .target Bodley
step << Alliance
    #completewith next
    .zone Ironforge >>Travel to |cFFfa9602Ironforge|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deliana|r
    .turnin 8997 >>Turn in Back to the Beginning
    .accept 8999 >>Accept Saving the Best for Last << Druid
    .accept 9000 >>Accept Saving the Best for Last << Hunter
    .accept 9001 >>Accept Saving the Best for Last << Mage
    .accept 9002 >>Accept Saving the Best for Last << Paladin
    .accept 9003 >>Accept Saving the Best for Last << Priest
    .accept 9004 >>Accept Saving the Best for Last << Rogue
    .accept 9005 >>Accept Saving the Best for Last << Warlock
    .accept 9006 >>Accept Saving the Best for Last << Warrior
    .target Deliana
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deliana|r
    >>You will need |T133129:0|t[|cRXP_LOOT_Wildheart Cowl|r] and |T132741:0|t[|cRXP_LOOT_Wildheart Vest|r] to turn in this quest << Druid
    >>You will need |T133126:0|t[|cRXP_LOOT_Beaststalker's Cap|r] and |T132625:0|t[|cRXP_LOOT_Beaststalker's Tunic|r] to turn in this quest <<  Hunter
    >>You will need |T132768:0|t[|cRXP_LOOT_Magister's Crown|r] and |T132666:0|t[|cRXP_LOOT_Magister's Robes|r] to turn in this quest << Mage
    >>You will need |T133076:0|t[|cRXP_LOOT_Lightforge Helm|r] and |T132738:0|t[|cRXP_LOOT_Lightforge Breastplate|r] to turn in this quest << Paladin
    >>You will need |T132767:0|t[|cRXP_LOOT_Devout Crown|r] and |T132652:0|t[|cRXP_LOOT_Devout Robe|r] to turn in this quest << Priest
    >>You will need |T133143:0|t[|cRXP_LOOT_Shadowcraft Cap|r] and |T132722:0|t[|cRXP_LOOT_Shadowcraft Tunic|r] to turn in this quest << Rogue
    >>You will need |T133131:0|t[|cRXP_LOOT_Dreadmist Mask|r] and |T132690:0|t[|cRXP_LOOT_Dreadmist Robe|r] to turn in this quest << Warlock
    >>You will need |T133070:0|t[|cRXP_LOOT_Helm of Valor|r] and |T132738:0|t[|cRXP_LOOT_Breastplate of Valor|r] to turn in this quest << Warrior
    .collect 16720,1,8999,1 << Alliance Druid --Wildheart Cowl (x1)
    .collect 16677,1,9000,1 << Alliance Hunter --Beaststalker's Cap (x1)
    .collect 16686,1,9001,1 << Alliance Mage --Magister's Crown (x1)
    .collect 16727,1,9002,1 << Alliance Paladin --Lightforge Helm (x1)
    .collect 16693,1,9003,1 << Alliance Priest --Devout Crown (x1)
    .collect 16707,1,9004,1 << Alliance Rogue --Shadowcraft Cap (x1)
    .collect 16698,1,9005,1 << Alliance Warlock --Dreadmist Mask (x1)
    .collect 16731,1,9006,1 << Alliance Warrior --Helm of Valor (x1)
    .collect 16726,1,9002,1 << Alliance Paladin --Lightforge Breastplate (x1)
    .collect 16688,1,9001,1 << Alliance Mage --Magister's Robes (x1)
    .collect 16706,1,8999,1 << Alliance Druid --Wildheart Vest (x1)
    .collect 16674,1,9000,1 << Alliance Hunter --Beaststalker's Tunic (x1)
    .collect 16690,1,9003,1 << Alliance Priest --Devout Robe (x1)
    .collect 16721,1,9004,1 << Alliance Rogue --Shadowcraft Tunic (x1)
    .collect 16700,1,9005,1 << Alliance Warlock --Dreadmist Robe (x1)
    .collect 16730,1,9006,1 << Alliance Warrior --Breastplate of Valor (x1)
    .turnin 8999 >>Turn in Saving the Best for Last << Druid
    .turnin 9000 >>Turn in Saving the Best for Last << Hunter
    .turnin 9001 >>Turn in Saving the Best for Last << Mage
    .turnin 9002 >>Turn in Saving the Best for Last << Paladin
    .turnin 9003 >>Turn in Saving the Best for Last << Priest
    .turnin 9004 >>Turn in Saving the Best for Last << Rogue
    .turnin 9005 >>Turn in Saving the Best for Last << Warlock
    .turnin 9006 >>Turn in Saving the Best for Last << Warrior
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>Travel to |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mokvar|r
    .turnin 8998 >>Turn in Back to the Beginning
    .accept 9007 >>Accept Saving the Best for Last << Druid
    .accept 9008 >>Accept Saving the Best for Last << Hunter
    .accept 9009 >>Accept Saving the Best for Last << Priest
    .accept 9010 >>Accept Saving the Best for Last << Rogue
    .accept 9011 >>Accept Saving the Best for Last << Shaman
    .accept 9012 >>Accept Saving the Best for Last << Warlock
    .accept 9013 >>Accept Saving the Best for Last << Warrior
    .accept 9014 >>Accept Saving the Best for Last << Mage
    .target Mokvar
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mokvar|r
    >>You will need |T133129:0|t[|cRXP_LOOT_Wildheart Cowl|r] and |T132741:0|t[|cRXP_LOOT_Wildheart Vest|r] to turn in this quest << Druid
    >>You will need |T133126:0|t[|cRXP_LOOT_Beaststalker's Cap|r] and |T132625:0|t[|cRXP_LOOT_Beaststalker's Tunic|r] to turn in this quest <<  Hunter
    >>You will need |T132768:0|t[|cRXP_LOOT_Magister's Crown|r] and |T132666:0|t[|cRXP_LOOT_Magister's Robes|r] to turn in this quest << Mage
    >>You will need |T132767:0|t[|cRXP_LOOT_Devout Crown|r] and |T132652:0|t[|cRXP_LOOT_Devout Robe|r] to turn in this quest << Priest
    >>You will need |T133143:0|t[|cRXP_LOOT_Shadowcraft Cap|r] and |T132722:0|t[|cRXP_LOOT_Shadowcraft Tunic|r] to turn in this quest << Rogue
    >>You will need |T133072:0|t[|cRXP_LOOT_Coif of Elements|r] and |T132633:0|t[|cRXP_LOOT_Vest of Elements|r] to turn in this quest << Shaman
    >>You will need |T133131:0|t[|cRXP_LOOT_Dreadmist Mask|r] and |T132690:0|t[|cRXP_LOOT_Dreadmist Robe|r] to turn in this quest << Warlock
    >>You will need |T133070:0|t[|cRXP_LOOT_Helm of Valor|r] and |T132738:0|t[|cRXP_LOOT_Breastplate of Valor|r] to turn in this quest << Warrior
    .collect 16720,1,9007,1 << Horde Druid --Wildheart Cowl (x1)
    .collect 16677,1,9008,1 << Horde Hunter --Beaststalker's Cap (x1)
    .collect 16693,1,9009,1 << Horde Priest --Devout Crown (x1)
    .collect 16707,1,9010,1 << Horde Rogue --Shadowcraft Cap (x1)
    .collect 16667,1,9011,1 << Horde Shaman --Coif of Elements (x1)
    .collect 16698,1,9012,1 << Horde Warlock --Dreadmist Mask (x1)
    .collect 16731,1,9013,1 << Horde Warrior --Helm of Valor (x1)
    .collect 16686,1,9014,1 << Horde Mage --Magister's Crown (x1)
    .collect 16706,1,9007,1 << Horde Druid --Wildheart Vest (x1)
    .collect 16674,1,9008,1 << Horde Hunter --Beaststalker's Tunic (x1)
    .collect 16690,1,9009,1 << Horde Priest --Devout Robe (x1)
    .collect 16721,1,9010,1 << Horde Rogue --Shadowcraft Tunic (x1)
    .collect 16666,1,9011,1 << Horde Shaman --Vest of Elements (x1)
    .collect 16700,1,9012,1 << Horde Warlock --Dreadmist Robe (x1)
    .collect 16730,1,9013,1 << Horde Warrior --Breastplate of Valor (x1)
    .collect 16688,1,9014,1 << Horde Mage --Magister's Robes (x1)
    .turnin 9007 >>Turn in Saving the Best for Last << Druid
    .turnin 9008 >>Turn in Saving the Best for Last << Hunter
    .turnin 9009 >>Turn in Saving the Best for Last << Priest
    .turnin 9010 >>Turn in Saving the Best for Last << Rogue
    .turnin 9011 >>Turn in Saving the Best for Last << Shaman
    .turnin 9012 >>Turn in Saving the Best for Last << Warlock
    .turnin 9013 >>Turn in Saving the Best for Last << Warrior
    .turnin 9014 >>Turn in Saving the Best for Last << Mage
    .target Mokvar

]])
