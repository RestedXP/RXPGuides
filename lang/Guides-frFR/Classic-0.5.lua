if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#classic
#tbc
#group RestedXP Guides Endgame
#subgroup Guide du Set Cœur-Farouche << Druid
#subgroup Guide du Set Armure de belluaire << Hunter
#subgroup Guide du Set Parade du sorcier << Mage
#subgroup Guide du Set Armure d'Âmeforge << Paladin
#subgroup Guide du Set Armure Sombremante << Rogue
#subgroup Guide du Set Les Cinq tonnerres << Shaman
#subgroup Guide du Set Mortebrume << Warlock
#subgroup Guide du Set Tenue de combat d'héroïsme << Warrior
#subgroup Guide du Set Habits du Vertueux << Priest
#name Partie 1 : Brassards
#next Partie 2 : Ceinture et Gants


step
    >>Obtenez les |T132608:0|t[|cRXP_LOOT_Brassards du Cœur-sauvage|r]. Ils peuvent tomber à |cFFfa9602Stratholme|r et est lié quand équipé << Druid
    >>Obtenez les |T132616:0|t[|cRXP_LOOT_Manchettes de bestiaire|r]. Ils peuvent tomber à |cFFfa9602Stratholme|r et au |cFFfa9602Pic Rochenoire|r et sont liés quand équipés << Hunter
    >>Obtenez les |T133365:0|t[|cRXP_LOOT_Manchettes de magistère|r]. Ils peuvent tomber au |cFFfa9602Pic Rochenoire|r et sont liés quand équipés << Mage
    >>Obtenez les |T132613:0|t[|cRXP_LOOT_Brassards de Sancteforge|r]. Ils peuvent tomber à |cFFfa9602Stratholme|r et sont liés quand équipés << Paladin
    >>Obtenez les |T132520:0|t[|cRXP_LOOT_Brassards de dévot|r]. Ils peuvent tomber à |cFFfa9602Stratholme|r et sont liés quand équipés << Priest
    >>Obtenez les |T132606:0|t[|cRXP_LOOT_Brassards Sombreruse|r]. Ils peuvent tomber à |cFFfa9602Scholomance|r et sont liés quand équipés << Rogue
    >>Obtenez les |T132601:0|t[|cRXP_LOOT_Manchettes des éléments|r]. Ils peuvent se trouver à |cFFfa9602Stratholme|r et sont liés quand équipés << Shaman
    >>Obtenez les |T132612:0|t[|cRXP_LOOT_Brassards de Brume-funeste|r]. Ils peuvent tomber au |cFFfa9602Pic Rochenoire|r et sont liés quand équipés << Warlock
    >>Obtenez les |T132617:0|t[|cRXP_LOOT_Brassards de vaillance|r]. Ils peuvent tomber au |cFFfa9602Pic Rochenoire|r et sont liés quand équipés << Warrior
    >>|cRXP_WARN_Sinon, vous pouvez les acheter à l'Hôtel des ventes << !sod
    >>|cRXP_WARN_Sinon, vous pouvez les acheter à l'Hôtel des ventes ou à |cRXP_FRIENDLY_Pix Xizzix|r à Baie-du-Butin en échange de|r |T133799:0|t[|cRXP_FRIENDLY_Réal de Terremine terni|r] << sod
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
    .zone Ironforge >>Voyagez à |cFFfa9602Forgefer|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deliana|r
    .accept 8905 >>Acceptez la quête Une proposition sérieuse << Druid
    .accept 8906 >>Acceptez la quête Une proposition sérieuse << Hunter
    .accept 8907 >>Acceptez la quête Une proposition sérieuse << Mage
    .accept 8908 >>Acceptez la quête Une proposition sérieuse << Paladin
    .accept 8909 >>Acceptez la quête Une proposition sérieuse << Priest
    .accept 8910 >>Acceptez la quête Une proposition sérieuse << Rogue
    .accept 8911 >>Acceptez la quête Une proposition sérieuse << Warlock
    .accept 8912 >>Acceptez la quête Une proposition sérieuse << Warrior
    .target Deliana
step << Alliance
    #completewith next
    .zone Winterspring >>Voyagez au |cFFfa9602Berceau-de-l'Hiver|r
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
    >>Tuez tous les types de |cRXP_ENEMY_Ours Crocs acérés|r et de |cRXP_ENEMY_Sabre-de-givre|r. Dépouillez-les pour obtenir leurs |cRXP_LOOT_Echantillons de sang de Berceau-de-l'Hiver|r
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
    .zone Ironforge >>Voyagez à |cFFfa9602Forgefer|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deliana|r
    >>|cRXP_WARN_Vous aurez besoin de 20 pièces d'or et des|r |T132608:0|t[|cRXP_LOOT_Brassards du Cœur-sauvage|r] |cRXP_WARN_pour rendre cette quête|r << Druid
    >>|cRXP_WARN_Vous aurez besoin de 20 pièces d'or et des|r |T132616:0|t[|cRXP_LOOT_Manchettes de bestiaire|r] |cRXP_WARN_pour rendre cette quête|r << Hunter
    >>|cRXP_WARN_Vous aurez besoin de 20 pièces d'or et des|r |T133365:0|t[|cRXP_LOOT_Manchettes de magistère|r] |cRXP_WARN_pour rendre cette quête|r << Mage
    >>|cRXP_WARN_Vous aurez besoin de 20 pièces d'or et des|r |T132613:0|t[|cRXP_LOOT_Brassards de Sancteforge|r] |cRXP_WARN_pour rendre cette quête|r << Paladin
    >>|cRXP_WARN_Vous aurez besoin de 20 pièces d'or et des|r |T132520:0|t[|cRXP_LOOT_Brassards de dévot|r] |cRXP_WARN_pour rendre cette quête|r << Priest
    >>|cRXP_WARN_Vous aurez besoin de 20 pièces d'or et des|r |T132606:0|t[|cRXP_LOOT_Brassards Sombreruse|r] |cRXP_WARN_pour rendre cette quête|r << Rogue
    >>|cRXP_WARN_Vous aurez besoin de 20 pièces d'or et des|r |T132612:0|t[|cRXP_LOOT_Brassards de Brume-funeste|r] |cRXP_WARN_pour rendre cette quête|r << Warlock
    >>|cRXP_WARN_Vous aurez besoin de 20 pièces d'or et des|r |T132617:0|t[|cRXP_LOOT_Brassards de vaillance|r] |cRXP_WARN_pour rendre cette quête|r << Warrior
    .collect 16714,1,8905,1 << Druid --Wildheart Bracers (x1)
    .collect 16681,1,8906,1 << Hunter --Beaststalker's Bindings (x1)
    .collect 16683,1,8907,1 << Mage --Magister's Bindings (x1)
    .collect 16722,1,8908,1 << Paladin --Lightforge Bracers (x1)
    .collect 16697,1,8909,1 << Priest --Devout Bracers (x1)
    .collect 16710,1,8910,1 << Rogue --Shadowcraft Bracers (x1)
    .collect 16703,1,8911,1 << Warlock --Dreadmist Bracers (x1)
    .collect 16735,1,8912,1 << Warrior --Bracers of Valor (x1)
    .turnin 8905 >>Rendez la quête Une proposition sérieuse << Druid
    .turnin 8906 >>Rendez la quête Une proposition sérieuse << Hunter
    .turnin 8907 >>Rendez la quête Une proposition sérieuse << Mage
    .turnin 8908 >>Rendez la quête Une proposition sérieuse << Paladin
    .turnin 8909 >>Rendez la quête Une proposition sérieuse << Priest
    .turnin 8910 >>Rendez la quête Une proposition sérieuse << Rogue
    .turnin 8911 >>Rendez la quête Une proposition sérieuse << Warlock
    .turnin 8912 >>Rendez la quête Une proposition sérieuse << Warrior
    .accept 8922 >>Acceptez la quête Un objet surnaturel
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>Voyagez à |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mokvar|r
    .accept 8913 >>Acceptez la quête Une proposition sérieuse << Druid
    .accept 8914 >>Acceptez la quête Une proposition sérieuse << Hunter
    .accept 8915 >>Acceptez la quête Une proposition sérieuse << Mage
    .accept 8916 >>Acceptez la quête Une proposition sérieuse << Priest
    .accept 8917 >>Acceptez la quête Une proposition sérieuse << Rogue
    .accept 8918 >>Acceptez la quête Une proposition sérieuse << Shaman
    .accept 8919 >>Acceptez la quête Une proposition sérieuse << Warlock
    .accept 8920 >>Acceptez la quête Une proposition sérieuse << Warrior
    .target Mokvar
step << Horde
    #completewith next
    .zone Silithus >>Voyagez à |cFFfa9602Silithus|r
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
    >>Tuez tous les types d'|cRXP_ENEMY_Araignées|r et de |cRXP_ENEMY_Scorpides|r. Dépouillez-les pour leur |cRXP_LOOT_Echantillons de venin de Silithus|r
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
    .zone Orgrimmar >>Voyagez à |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mokvar|r
    >>|cRXP_WARN_Vous aurez besoin de 20 pièces d'or et des|r |T132608:0|t[|cRXP_LOOT_Brassards du Cœur-sauvage|r] |cRXP_WARN_pour rendre cette quête|r << Druid
    >>|cRXP_WARN_Vous aurez besoin de 20 pièces d'or et des|r |T132616:0|t[|cRXP_LOOT_Manchettes de bestiaire|r] |cRXP_WARN_pour rendre cette quête|r << Hunter
    >>|cRXP_WARN_Vous aurez besoin de 20 pièces d'or et des|r |T133365:0|t[|cRXP_LOOT_Manchettes de magistère|r] |cRXP_WARN_pour rendre cette quête|r << Mage
    >>|cRXP_WARN_Vous aurez besoin de 20 pièces d'or et des|r |T132520:0|t[|cRXP_LOOT_Brassards de dévot|r] |cRXP_WARN_pour rendre cette quête|r << Priest
    >>|cRXP_WARN_Vous aurez besoin de 20 pièces d'or et des|r |T132606:0|t[|cRXP_LOOT_Brassards Sombreruse|r] |cRXP_WARN_pour rendre cette quête|r << Rogue
    >>|cRXP_WARN_Vous aurez besoin de 20 pièces d'or et des|r |T132601:0|t[|cRXP_LOOT_Manchettes des éléments|r] |cRXP_WARN_pour rendre cette quête|r << Shaman
    >>|cRXP_WARN_Vous aurez besoin de 20 pièces d'or et des|r |T132612:0|t[|cRXP_LOOT_Brassards de Brume-funeste|r] |cRXP_WARN_pour rendre cette quête|r << Warlock
    >>|cRXP_WARN_Vous aurez besoin de 20 pièces d'or et des|r |T132617:0|t[|cRXP_LOOT_Brassards de vaillance|r] |cRXP_WARN_pour rendre cette quête|r << Warrior
    .collect 16714,1,8913,1 << Druid --Wildheart Bracers (x1)
    .collect 16681,1,8914,1 << Hunter --Beaststalker's Bindings (x1)
    .collect 16683,1,8915,1 << Mage --Magister's Bindings (x1)
    .collect 16697,1,8916,1 << Priest --Devout Bracers (x1)
    .collect 16710,1,8917,1 << Rogue --Shadowcraft Bracers (x1)
    .collect 16671,1,8918,1 << Shaman --Bindings of Elements (x1)
    .collect 16703,1,8919,1 << Warlock --Dreadmist Bracers (x1)
    .collect 16735,1,8920,1 << Warrior --Bracers of Valor (x1)
    .turnin 8913 >>Rendez la quête Une proposition sérieuse << Druid
    .turnin 8914 >>Rendez la quête Une proposition sérieuse << Hunter
    .turnin 8915 >>Rendez la quête Une proposition sérieuse << Mage
    .turnin 8916 >>Rendez la quête Une proposition sérieuse << Priest
    .turnin 8917 >>Rendez la quête Une proposition sérieuse << Rogue
    .turnin 8918 >>Rendez la quête Une proposition sérieuse << Shaman
    .turnin 8919 >>Rendez la quête Une proposition sérieuse << Warlock
    .turnin 8920 >>Rendez la quête Une proposition sérieuse << Warrior
    .accept 8923 >>Acceptez la quête Un objet surnaturel
    .target Mokvar

    ]])


RXPGuides.RegisterGuide([[
#classic
#tbc
#group RestedXP Guides Endgame
#subgroup Guide du Set Cœur-Farouche << Druid
#subgroup Guide du Set Armure de belluaire << Hunter
#subgroup Guide du Set Parade du sorcier << Mage
#subgroup Guide du Set Armure d'Âmeforge << Paladin
#subgroup Guide du Set Armure Sombremante << Rogue
#subgroup Guide du Set Les Cinq tonnerres << Shaman
#subgroup Guide du Set Mortebrume << Warlock
#subgroup Guide du Set Tenue de combat d'héroïsme << Warrior
#subgroup Guide du Set Habits du Vertueux << Priest
#name Partie 2 : Ceinture et Gants
#next Partie 3 : Pantalon, Épaulières et Bottes


step
    #optional
    +|cRXP_WARN_Vous devez terminer la Partie 1: Brassards avant de commencer cette partie du guide|r
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
    >>Obtenez la |T132504:0|t[|cRXP_LOOT_Ceinture du Cœur-sauvage|r]. Elle peut tomber à |cFFfa9602Scholomance|r et au |cFFfa9602Pic Rochenoire|r et est liée quand équipée << Druid
    >>Obtenez la |T132517:0|t[|cRXP_LOOT_Ceinture de bestiaire|r]. Elle peut tomber au |cFFfa9602Pic Rochenoire|r et est liée quand équipée << Hunter
    >>Obtenez la |T132497:0|t[|cRXP_LOOT_Ceinture de magistère|r]. Elle peut tomber à |cFFfa9602Stratholme|r et au |cFFfa9602Pic Rochenoire|r et est liée quand équipée << Mage
    >>Obtenez la |T132500:0|t[|cRXP_LOOT_Ceinture de Sancteforge|r]. Elle peut tomber à |cFFfa9602Stratholme|r et est liée quand équipée << Paladin
    >>Obtenez la |T132499:0|t[|cRXP_LOOT_Ceinture de dévot|r]. Elle peut tomber au |cFFfa9602Pic Rochenoire|r et est liée quand équipée << Priest
    >>Obtenez la |T132492:0|t[|cRXP_LOOT_Ceinture Sombreruse|r]. Elle peut tomber au |cFFfa9602Pic Rochenoire|r et est liée quand équipée << Rogue
    >>Obtenez la |T132505:0|t[|cRXP_LOOT_Corde des éléments|r]. Elle peut tomber au |cFFfa9602Pic Rochenoire|r et est liée quand équipée << Shaman
    >>Obtenez la |T132501:0|t[|cRXP_LOOT_Ceinture de Brume-funeste|r]. Elle peut tomber à |cFFfa9602Stratholme|r et est liée quand équipée << Warlock
    >>Obtenez la |T132523:0|t[|cRXP_LOOT_Ceinture de Vaillance|r]. Elle peut tomber au |cFFfa9602Pic Rochenoire|r et à |cFFfa9602Stratholme|r et est liée quand équipée << Warrior
    >>|cRXP_WARN_Sinon, vous pouvez les acheter à l'Hôtel des ventes << !sod
    >>|cRXP_WARN_Sinon, vous pouvez les acheter à l'Hôtel des ventes ou à |cRXP_FRIENDLY_Pix Xizzix|r à Baie-du-Butin en échange de|r |T133799:0|t[|cRXP_FRIENDLY_Réal de Terremine terni|r] << sod
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
    >>Obtenez les |T132951:0|t[|cRXP_LOOT_Gants du Cœur-sauvage|r]. Ils peuvent tomber à |cFFfa9602Stratholme|r et sont liés quand équipés << Druid
    >>Obtenez les |T132944:0|t[|cRXP_LOOT_Gants de bestiaire|r]. Ils peuvent tomber au |cFFfa9602Pic Rochenoire|r et sont liés quand équipés << Hunter
    >>Obtenez les |T132951:0|t[|cRXP_LOOT_Gants de magistère|r]. Ils peuvent tomber à |cFFfa9602Scholomance|r et sont liés quand équipés << Mage
    >>Obtenez les |T132953:0|t[|cRXP_LOOT_Gantelets de Sancteforge|r]. Ils peuvent tomber à |cFFfa9602Stratholme|r et sont liés quand équipés << Paladin
    >>Obtenez les |T132948:0|t[|cRXP_LOOT_Gants de dévot|r]. Ils peuvent tomber à |cFFfa9602Stratholme|r et sont liés quand équipés << Priest
    >>Obtenez les |T132958:0|t[|cRXP_LOOT_Gants Sombreruse|r]. Ils peuvent tomber au |cFFfa9602Pic Rochenoire|r et sont liés quand équipés << Rogue
    >>Obtenez les |T132945:0|t[|cRXP_LOOT_Gantelets des éléments|r]. Ils peuvent tomber au |cFFfa9602Sommet du pic Rochenoire|r et sont liés quand équipés << Shaman
    >>Obtenez les |T132966:0|t[|cRXP_LOOT_Protège-mains de Brume-funeste|r]. Ils peuvent tomber à |cFFfa9602Scholomance|r et sont liés quand équipés << Warlock
    >>Obtenez les |T132960:0|t[|cRXP_LOOT_Gauntlets of Vaillance|r]. Ils peuvent tomber à |cFFfa9602Stratholme|r et sont liés quand équipés << Warrior
    >>|cRXP_WARN_Sinon, vous pouvez les acheter à l'Hôtel des ventes << !sod
    >>|cRXP_WARN_Sinon, vous pouvez les acheter à l'Hôtel des ventes ou à |cRXP_FRIENDLY_Pix Xizzix|r à Baie-du-Butin en échange de|r |T133799:0|t[|cRXP_FRIENDLY_Réal de Terremine terni|r] << sod
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
    >>|cRXP_BUY_Obtenez|r les objets suivants:
    >>Les |T133001:0|t[Convertisseur d'arcanite délicat] |cRXP_WARN_sont fabriqués par les ingénieurs|r
    >>Les |T132864:0|t[|cRXP_FRIENDLY_Essences éternelles supérieures|r] |cRXP_WARN_sont obtenus par les enchanteurs|r
    >>Les |T134848:0|t[Huiles de pierre-écaille] |cRXP_WARN_sont fabriquées par les alchimistes|r
    >>Le |T132621:0|t[Carburant de fusée gobelin] |cRXP_WARN_est fait par les ingénieurs|r
    >>|cRXP_WARN_Achetez-les à l'Hôtel des ventes si possible|r
    .collect 16006,1,8921,1 --Delicate Arcanite Converter (x1)
    .collect 16203,4,8921,1 --Greater Eternal Essence (x4)
    .collect 13423,10,8921,1 --Stonescale Oil (x10)
    .collect 9061,6,8924,1 --Goblin Rocket Fuel (x6)
step << Alliance
    #completewith next
    .zone Ironforge >>Voyagez à |cFFfa9602Forgefer|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deliana|r
    .accept 8922 >>Acceptez la quête Un objet surnaturel
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>Voyagez à |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mokvar|r
    .accept 8923 >>Acceptez la quête Un objet surnaturel
    .target Mokvar
step
    #completewith next
    .subzone 976 >>Voyagez à Gadgetzan dans |cFFfa9602Tanaris|r
step
    .goto Tanaris,52.47,27.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mux Brouillemana|r
    .turnin 8922 >>Rendez la quête Un objet surnaturel << Alliance
    .turnin 8923 >>Rendez la quête Un objet surnaturel << Horde
    .accept 8921 >>Acceptez la quête L'alambic ectoplasmique
    .target Mux Manascrambler
step
    #completewith next
    .zone Burning Steppes >>Voyagez aux |cFFfa9602Steppes Ardentes|r
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
    >>Ramassez la |cRXP_LOOT_Cendre volcanique|r par terre
    >>|cRXP_WARN_Cela ressemble à de grands tas de terre grise et peuvent être trouvées principalement dans le nord des Steppes Ardentes parmi les bassins de lave et les rivières|r
    .collect 22338,25,8921,1 --Volcanic Ash (x25)
step
    >>|cRXP_BUY_Obtenez|r les objets suivants:
    >>Les |T133001:0|t[Convertisseur d'arcanite délicat] |cRXP_WARN_sont fabriqués par les ingénieurs|r
    >>Les |T132864:0|t[|cRXP_FRIENDLY_Essences éternelles supérieures|r] |cRXP_WARN_sont obtenus par les enchanteurs|r
    >>Les |T134848:0|t[Huiles de pierre-écaille] |cRXP_WARN_sont fabriquées par les alchimistes|r
    >>Le |T132621:0|t[Carburant de fusée gobelin] |cRXP_WARN_est fait par les ingénieurs|r
    >>|cRXP_WARN_Achetez-les à l'Hôtel des ventes si possible|r
    .collect 16006,1,8921,1 --Delicate Arcanite Converter (x1)
    .collect 16203,4,8921,1 --Greater Eternal Essence (x4)
    .collect 13423,10,8921,1 --Stonescale Oil (x10)
    .collect 9061,6,8924,1 --Goblin Rocket Fuel (x6)
step
    #completewith next
    .subzone 976 >>Voyagez à Gadgetzan dans |cFFfa9602Tanaris|r
step
    .goto Tanaris,52.47,27.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mux Brouillemana|r
    >>|cRXP_WARN_Vous aurez besoin de 40 pièces d'or pour rendre cette quête|r
    .turnin 8921 >>Rendez la quête L'alambic ectoplasmique
    .accept 8924 >>Acceptez la quête La chasse aux ectoplasmes
    .target Mux Manascrambler
step
    #optional
    >>|cRXP_WARN_Obtenez au moins 3|r |T132621:0|t[Carburants de fusée gobelin]|cRXP_WARN_. Ils sont fabriqués par les ingénieurs|r
    >>|cRXP_WARN_Achetez-les à l'Hôtel des ventes si possible|r
    .collect 9061,3,8924,1 --Goblin Rocket Fuel (x3)
step
    #completewith next
    .subzone 2738 >>Voyagez au Village de Sudevent à |cFFfa9602Silithus|r
step
    #completewith next
    .cast 27433 >>|cRXP_WARN_Placez l'|r |T133882:0|t[Alambic ectoplasmique] |cRXP_WARN_sur le sol. Il dure 5 minutes|r
    .use 21946 >>|cRXP_WARN_Un|r |T132621:0|t[Carburant de fusée gobelin] |cRXP_WARN_est nécessaire chaque fois que vous utilisez l'|r |T133882:0|t[Alambic ectoplasmique]
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
    >>Tuez les |cRXP_ENEMY_Druides torturés|r et les |cRXP_ENEMY_Sentinelles torturées|r. Dépouillez-les pour leur |cRXP_LOOT_Ectoplasmes brûlés|r
    >>|cRXP_WARN_Attirez-les vers l'|r |T133882:0|t[Alambic ectoplasmique] |cRXP_WARN_en les tuant|r
    .complete 8924,1 --Scorched Ectoplasm (x12)
	.mob Tortured Druid
	.mob Tortured Sentinel
step
    #completewith next
    .zone Winterspring >>Voyagez au |cFFfa9602Berceau-de-l'Hiver|r
step
    #completewith next
    .cast 27433 >>|cRXP_WARN_Placez l'|r |T133882:0|t[Alambic ectoplasmique] |cRXP_WARN_sur le sol. Il dure 5 minutes|r
    .use 21946 >>|cRXP_WARN_Un|r |T132621:0|t[Carburant de fusée gobelin] |cRXP_WARN_est nécessaire chaque fois que vous utilisez l'|r |T133882:0|t[Alambic ectoplasmique]
step
    #loop
    .goto Winterspring,55.42,43.41,0
    .goto Winterspring,53.29,43.82,0
    .goto Winterspring,52.60,40.59,0
    .goto Winterspring,55.42,43.41,50,0
    .goto Winterspring,53.29,43.82,50,0
    .goto Winterspring,52.60,40.59,50,0
    >>Tuez les |cRXP_ENEMY_Bien-nés souffrants|r et les |cRXP_ENEMY_Bien-nées angoissées|r. Dépouillez-les pour leurs |cRXP_LOOT_Ectoplasmes gelés|r
    >>|cRXP_WARN_Attirez-les vers l'|r |T133882:0|t[Alambic ectoplasmique] |cRXP_WARN_en les tuant|r
    .complete 8924,2 --Frozen Ectoplasm (x12)
    .mob Suffering Highborne
    .mob Anguished Highborne
step
    #completewith FelElemRod
    .subzone 2256 >>Voyagez à la gorge du Sombre murmure au |cFFfa9602Berceau-de-l'Hiver|r
step
    #hardcore
    #completewith next
    +|cRXP_WARN_Soyez prudent ! Vous rencontrerez des mobs de niveau 60 sur la route pour|r |cRXP_FRIENDLY_Vi'el|r|cRXP_WARN_. Évitez-les autant que possible|r
step
    #label FelElemRod
    .goto Winterspring,58.87,78.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vi'el|r
    >>|cRXP_BUY_Achetez-lui un|r |T135155:0|t[|cRXP_LOOT_Bâtonnet élémentaire de corruption|r] |cRXP_BUY_|r
    >>|cRXP_WARN_Il coûtera 40 pièces d'or|r
    .collect 21939,1,8928,1 --Fel Elemental Rod (x1)
    .target Vi'el
step
    #optional
    >>|cRXP_WARN_Obtenez au moins 2|r |T132621:0|t[Carburants de fusée gobelin]|cRXP_WARN_. Ils sont fabriqués par les ingénieurs|r
    >>|cRXP_WARN_Achetez-les à l'Hôtel des ventes si possible|r
    .collect 9061,2,8924,1 --Goblin Rocket Fuel (x2)
step
    #completewith next
    .subzone 2264 >>Voyagez vers La Croisée de Corin aux |cFFfa9602Maleterres de l'Est|r
step
    #completewith next
    .cast 27433 >>|cRXP_WARN_Placez l'|r |T133882:0|t[Alambic ectoplasmique] |cRXP_WARN_sur le sol. Il dure 5 minutes|r
    .use 21946 >>|cRXP_WARN_Un|r |T132621:0|t[Carburant de fusée gobelin] |cRXP_WARN_est nécessaire chaque fois que vous utilisez l'|r |T133882:0|t[Alambic ectoplasmique]
step
    #loop
    .goto Eastern Plaguelands,60.67,67.35,0
    .goto Eastern Plaguelands,60.67,67.35,50,0
    .goto Eastern Plaguelands,58.55,70.50,50,0
    >>Tuez les |cRXP_ENEMY_Serviteurs invisibles|r et les |cRXP_ENEMY_Hurleuse haineuse|r. Dépouillez-les pour leur |cRXP_LOOT_Ectoplasmes stables|r
    >>|cRXP_WARN_Attirez-les vers l'|r |T133882:0|t[Alambic ectoplasmique] |cRXP_WARN_en les tuant|r
    .complete 8924,3 --Stable Ectoplasm (x12)
    .mob Unseen Servant
    .mob Hate Shrieker
step
    #completewith next
    .subzone 976 >>Voyagez à Gadgetzan dans |cFFfa9602Tanaris|r
step
    .goto Tanaris,52.47,27.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mux Brouillemana|r
    .turnin 8924 >>Rendez la quête La chasse aux ectoplasmes
    .accept 8925 >>Acceptez la quête Une source d'énergie portable
    .target Mux Manascrambler
step
    #completewith next
    .zone Burning Steppes >>Voyagez aux |cFFfa9602Steppes Ardentes|r
step
    .goto Burning Steppes,35.38,57.73
    >>Tuez le |cRXP_ENEMY_Seigneur-magma Bokk|r. Dépouillez-le pour son |cRXP_LOOT_Coeur de magma|r
    .complete 8925,1 --Magma Core (x1)
    .mob Magma Lord Bokk
step
    #completewith next
    .subzone 976 >>Voyagez à Gadgetzan dans |cFFfa9602Tanaris|r
step
    .goto Tanaris,52.47,27.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mux Brouillemana|r
    .turnin 8925 >>Rendez la quête Une source d'énergie portable
    .accept 8928 >>Acceptez la quête Un marchand à éclipses
    .target Mux Manascrambler
step
    #optional
    #completewith FelElemRod2
    .subzone 2256 >>Voyagez à la gorge du Sombre murmure au |cFFfa9602Berceau-de-l'Hiver|r
step
    #optional
    #hardcore
    #completewith next
    +|cRXP_WARN_Soyez prudent ! Vous rencontrerez des mobs de niveau 60 sur la route pour|r |cRXP_FRIENDLY_Vi'el|r|cRXP_WARN_. Évitez-les autant que possible|r
step
    #label FelElemRod2
    #optional --user should already have bought this during .complete 8924,2 earlier in Winterspring
    .goto Winterspring,58.87,78.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vi'el|r
    >>|cRXP_BUY_Achetez-lui un|r |T135155:0|t[|cRXP_LOOT_Bâtonnet élémentaire de corruption|r] |cRXP_BUY_|r
    >>|cRXP_WARN_Il coûtera 40 pièces d'or|r
    .collect 21939,1,8928,1 --Fel Elemental Rod (x1)
    .target Vi'el
step
    #optional
    #completewith next
    .subzone 976 >>Voyagez à Gadgetzan dans |cFFfa9602Tanaris|r
    .zoneskip Winterspring,1
step
    .goto Tanaris,52.47,27.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mux Brouillemana|r
    .turnin 8928 >>Rendez la quête Un marchand à éclipses
    .accept 8977 >>Acceptez la quête Retourner voir Deliana << Alliance
    .accept 8978 >>Acceptez la quête Retourner voir Mokvar << Horde
    .target Mux Manascrambler
step << Alliance
    #completewith next
    .zone Ironforge >>Voyagez à |cFFfa9602Forgefer|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deliana|r
    .turnin 8977 >>Rendez la quête Retourner voir Deliana
    .accept 8926 >>Acceptez la quête Une juste compensation << Druid
    .accept 8931 >>Acceptez la quête Une juste compensation << Hunter
    .accept 8932 >>Acceptez la quête Une juste compensation << Mage
    .accept 8933 >>Acceptez la quête Une juste compensation << Paladin
    .accept 8934 >>Acceptez la quête Une juste compensation << Priest
    .accept 8935 >>Acceptez la quête Une juste compensation << Rogue
    .accept 8936 >>Acceptez la quête Une juste compensation << Warlock
    .accept 8937 >>Acceptez la quête Une juste compensation << Warrior
    .target Deliana
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deliana|r
    >>Vous aurez besoin de la |T132504:0|t[|cRXP_LOOT_Ceinture du Cœur-sauvage|r] et des |T132951:0|t[|cRXP_LOOT_Gants du Cœur-sauvage|r] pour rendre cette quête << Druid
    >>Vous aurez besoin de la |T132517:0|t[|cRXP_LOOT_Ceinture de bestiaire|r] et des |T132944:0|t[|cRXP_LOOT_Gants de bestiaire|r] pour rendre cette quête << Hunter
    >>Vous aurez besoin de la |T132497:0|t[|cRXP_LOOT_Ceinture de magistère|r] et des |T132951:0|t[|cRXP_LOOT_Gants de magistère|r] pour rendre cette quête << Mage
    >>Vous aurez besoin de la |T132500:0|t[|cRXP_LOOT_Ceinture de Sancteforge|r] et des |T132953:0|t[|cRXP_LOOT_Gantelets de Sancteforge|r] pour rendre cette quête << Paladin
    >>Vous aurez besoin de la |T132499:0|t[|cRXP_LOOT_Ceinture de dévot|r] et des |T132948:0|t[|cRXP_LOOT_Gants de dévot|r] pour rendre cette quête << Priest
    >>Vous aurez besoin de la |T132492:0|t[|cRXP_LOOT_Ceinture Sombreruse|r] et des |T132958:0|t[|cRXP_LOOT_Gants Sombreruse|r] pour rendre cette quête << Rogue
    >>Vous aurez besoin de la |T132501:0|t[|cRXP_LOOT_Ceinture de Brume-funeste|r] et des |T132966:0|t[|cRXP_LOOT_Protège-mains de Brume-funeste|r] pour rendre cette quête << Warlock
    >>Vous aurez besoin de la |T132523:0|t[|cRXP_LOOT_Ceinture de vaillance|r] et des |T132960:0|t[|cRXP_LOOT_Gantelets de vaillance|r]r pour rendre cette quête << Warrior
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
    .turnin 8926 >>Rendez la quête Une juste compensation << Druid
    .turnin 8931 >>Rendez la quête Une juste compensation << Hunter
    .turnin 8932 >>Rendez la quête Une juste compensation << Mage
    .turnin 8933 >>Rendez la quête Une juste compensation << Paladin
    .turnin 8934 >>Rendez la quête Une juste compensation << Priest
    .turnin 8935 >>Rendez la quête Une juste compensation << Rogue
    .turnin 8936 >>Rendez la quête Une juste compensation << Warlock
    .turnin 8937 >>Rendez la quête Une juste compensation << Warrior
    .accept 8929 >>Acceptez la quête À la recherche d'Anthion
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>Voyagez à |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mokvar|r
    .turnin 8978 >>Rendez la quête Retourner voir Mokvar
    .accept 8927 >>Acceptez la quête Une juste compensation << Druid
    .accept 8938 >>Acceptez la quête Une juste compensation << Hunter
    .accept 8939 >>Acceptez la quête Une juste compensation << Mage
    .accept 8940 >>Acceptez la quête Une juste compensation << Priest
    .accept 8941 >>Acceptez la quête Une juste compensation << Rogue
    .accept 8942 >>Acceptez la quête Une juste compensation << Shaman
    .accept 8943 >>Acceptez la quête Une juste compensation << Warlock
    .accept 8944 >>Acceptez la quête Une juste compensation << Warrior
    .target Mokvar
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mokvar|r
    >>Vous aurez besoin de la |T132504:0|t[|cRXP_LOOT_Ceinture du Cœur-sauvage|r] et des |T132951:0|t[|cRXP_LOOT_Gants du Cœur-sauvage|r] pour rendre cette quête << Druid
    >>Vous aurez besoin de la |T132517:0|t[|cRXP_LOOT_Ceinture de bestiaire|r] et des |T132944:0|t[|cRXP_LOOT_Gants de bestiaire|r] pour rendre cette quête << Hunter
    >>Vous aurez besoin de la |T132497:0|t[|cRXP_LOOT_Ceinture de magistère|r] et des |T132951:0|t[|cRXP_LOOT_Gants de magistère|r] pour rendre cette quête << Mage
    >>Vous aurez besoin de la |T132499:0|t[|cRXP_LOOT_Ceinture de dévot|r] et des |T132948:0|t[|cRXP_LOOT_Gants de dévot|r] pour rendre cette quête << Priest
    >>Vous aurez besoin de la |T132492:0|t[|cRXP_LOOT_Ceinture Sombreruse|r] et des |T132958:0|t[|cRXP_LOOT_Gants Sombreruse|r] pour rendre cette quête << Rogue
    >>Vous aurez besoin de la |T132505:0|t[|cRXP_LOOT_Corde des éléments|r] et des |T132945:0|t[|cRXP_LOOT_Gantelets des éléments|r] pour rendre cette quête << Shaman
    >>Vous aurez besoin de la |T132501:0|t[|cRXP_LOOT_Ceinture de Brume-funeste|r] et des |T132966:0|t[|cRXP_LOOT_Protège-mains de Brume-funeste|r] pour rendre cette quête << Warlock
    >>Vous aurez besoin de la |T132523:0|t[|cRXP_LOOT_Ceinture de vaillance|r] et des |T132960:0|t[|cRXP_LOOT_Gantelets de vaillance|r]r pour rendre cette quête << Warrior
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
    .turnin 8927 >>Rendez la quête Une juste compensation << Druid
    .turnin 8938 >>Rendez la quête Une juste compensation << Hunter
    .turnin 8939 >>Rendez la quête Une juste compensation << Mage
    .turnin 8940 >>Rendez la quête Une juste compensation << Priest
    .turnin 8941 >>Rendez la quête Une juste compensation << Rogue
    .turnin 8942 >>Rendez la quête Une juste compensation << Shaman
    .turnin 8943 >>Rendez la quête Une juste compensation << Warlock
    .turnin 8944 >>Rendez la quête Une juste compensation << Warrior
    .accept 8930 >>Acceptez la quête À la recherche d'Anthion
    .target Mokvar

    ]])


RXPGuides.RegisterGuide([[
#classic
#tbc
#group RestedXP Guides Endgame
#subgroup Guide du Set Cœur-Farouche << Druid
#subgroup Guide du Set Armure de belluaire << Hunter
#subgroup Guide du Set Parade du sorcier << Mage
#subgroup Guide du Set Armure d'Âmeforge << Paladin
#subgroup Guide du Set Armure Sombremante << Rogue
#subgroup Guide du Set Les Cinq tonnerres << Shaman
#subgroup Guide du Set Mortebrume << Warlock
#subgroup Guide du Set Tenue de combat d'héroïsme << Warrior
#subgroup Guide du Set Habits du Vertueux << Priest
#name Partie 3 : Pantalon, Épaulières et Bottes
#next Partie 4: Casque et Plastron

step
    #optional
    +|cRXP_WARN_Vous devez terminer la Partie 2 : Ceinture et Gants avant de commencer cette partie du guide|r
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
    >>Obtenez les |T132542:0|t[|cRXP_LOOT_Bottes du Cœur-sauvage|r]. Elles tombent sur la |cRXP_ENEMY_Matriarche Couveuse|r dans |cFFfa9602le Bas du Pic Rochenoire|r << Druid
    >>Obtenez les |T132588:0|t[|cRXP_LOOT_Bottes de bestiaire|r]. Elles tombent sur |cRXP_ENEMY_Nerub'enkan|r dans |cFFfa9602Stratholme|r << Hunter
    >>Obtenez les |T132536:0|t[|cRXP_LOOT_Bottes de magistère|r]. Elles tombent sur le |cRXP_ENEMY_Chanteloge Forrestin|r (rare) dans |cFFfa9602Stratholme|r << Mage
    >>|cRXP_WARN_Notez qu'avant le patch AQ, cet objet est censé tomber sur le|r |cRXP_ENEMY_Postier Malown|r<<Mage
    >>Obtenez les |T132584:0|t[|cRXP_LOOT_Bottes de Sancteforge|r]. Elles tombent sur le |cRXP_ENEMY_Grand croisé Dathrohan|r et |cRXP_ENEMY_Balnazzar|r dans |cFFfa9602Stratholme|r << Paladin
    >>Obtenez les |T132539:0|t[Sandales de dévot|cRXP_LOOT_]. Elles tombent sur |rMaleki le Blafard|cRXP_ENEMY_ dans |rStratholme|cFFfa9602 << Priest
    >>Obtenez les |T132542:0|t[|cRXP_LOOT_Bottes Sombreruse|r]. Elles tombent sur |cRXP_ENEMY_Cliquettripes|r dans |cFFfa9602Scholomance|r << Rogue
    >>Obtenez les |T132592:0|t[|cRXP_LOOT_Bottes des éléments|r]. Elles tombent sur le |cRXP_ENEMY_Généralissime Omokk|r dans |cFFfa9602le Bas du Pic Rochenoire|r << Shaman
    >>Obtenez les |T132539:0|t[|cRXP_LOOT_Sandales de Brume-funeste|r]. Elles tombent sur la |cRXP_ENEMY_Baronne Anastari|r dans |cFFfa9602Stratholme|r << Warlock
    >>Obtenez les |T132584:0|t[|cRXP_LOOT_Bottes de vaillance|r]. Elles tombent sur |cRXP_ENEMY_Kirtonos le héraut|r dans |cFFfa9602Scholomance|r << Warrior
    >>|cRXP_WARN_Sinon, vous pouvez les acheter à |cRXP_FRIENDLY_Pix Xizzix|r à Baie-du-Butin en échange de|r |T133799:0|t[|cRXP_FRIENDLY_Réal de Terremine terni|r] << sod
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
    >>Obtenez le |T134588:0|t[|cRXP_LOOT_Kilt du Cœur-sauvage|r]. Il tombe sur le |cRXP_ENEMY_Baron Vaillefendre|r dans |cFFfa9602Stratholme|r << Druid
    >>Obtenez le |T134583:0|t[|cRXP_LOOT_Pantalon de bestiaire|r]. Il tombe sur le |cRXP_ENEMY_Baron Vaillefendre|r dans |cFFfa9602Stratholme|r << Hunter
    >>Obtenez les |T134586:0|t[|cRXP_LOOT_Jambières de magistère|r]. Elles tombent sur le |cRXP_ENEMY_Baron Vaillefendre|r dans |cFFfa9602Stratholme|r << Mage
    >>Obtenez les |T134584:0|t[|cRXP_LOOT_Cuissards de Sancteforge|r]. Ils tombent sur le |cRXP_ENEMY_Baron Vaillefendre|r dans |cFFfa9602Stratholme|r << Paladin
    >>Obtenez la |T134588:0|t[|cRXP_LOOT_Jupe de dévot|r]. Ils tombent sur le |cRXP_ENEMY_Baron Vaillefendre|r dans |cFFfa9602Stratholme|r << Priest
    >>Obtenez le |T134582:0|t[|cRXP_LOOT_Pantalon Sombreruse|r]. Il tombe sur le |cRXP_ENEMY_Baron Vaillefendre|r dans |cFFfa9602Stratholme|r << Rogue
    >>Obtenez le |T134583:0|t[|cRXP_LOOT_Kilt des éléments|r]. Il tombe sur le |cRXP_ENEMY_Baron Vaillefendre|r dans |cFFfa9602Stratholme|r << Shaman
    >>Obtenez les |T134588:0|t[|cRXP_LOOT_Jambières de Brume-funeste|r]. Elles tombent sur le |cRXP_ENEMY_Baron Vaillefendre|r dans |cFFfa9602Stratholme|r << Warlock
    >>Obtenez les |T134584:0|t[|cRXP_LOOT_Cuissards de vaillance|r]. Ils tombent sur le |cRXP_ENEMY_Baron Vaillefendre|r dans |cFFfa9602Stratholme|r << Warrior
    >>|cRXP_WARN_Sinon, vous pouvez les acheter à |cRXP_FRIENDLY_Pix Xizzix|r à Baie-du-Butin en échange de|r |T133799:0|t[|cRXP_FRIENDLY_Réal de Terremine terni|r] << sod
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
    >>Obtenez les |T135032:0|t[|cRXP_LOOT_Spallières du Cœur-sauvage|r]. Elles tombent sur |cRXP_ENEMY_Gizrul l'esclavagiste|r dans |cFFfa9602le Bas du Pic Rochenoire|r << Druid
    >>Obtenez le |T135041:0|t[|cRXP_LOOT_Mantelet de bestiaire|r]. Il tombe sur le |cRXP_ENEMY_Seigneur Wyrmthalak|r dans |cFFfa9602le Bas du Pic Rochenoire|r << Hunter
    >>Obtenez le |T135054:0|t[|cRXP_LOOT_Mantelet de magistère|r]. Il tombe sur |cRXP_ENEMY_Ras Murmegivre|r dans |cFFfa9602Scholomance|r << Mage
    >>Obtenez les |T135041:0|t[|cRXP_LOOT_Spallières de Sancteforge|r]. Elles tombent sur |cRXP_ENEMY_La Bête|r au |cFFfa9602Sommet du pic Rochenoire|r << Paladin
    >>Obtenez le |T135033:0|t[|cRXP_LOOT_Mantelet de dévot|r]. Il tombe sur |cRXP_ENEMY_Solakar Voluteflamme|r dans le |cFFfa9602Sommet du pic Rochenoire|r << Priest
    >>Obtenez les |T135038:0|t[|cRXP_LOOT_Spallières Sombreruse|r]. Elles tombent sur le |cRXP_ENEMY_Maître canonnier Willey|r dans |cFFfa9602Stratholme|r << Rogue
    >>Obtenez les |T135060:0|t[|cRXP_LOOT_Espauliers des éléments|r]. Ils tombent sur |cRXP_ENEMY_Gyth|r au |cFFfa9602Sommet du pic Rochenoire|r << Shaman
    >>Obtenez le |T133732:0|t[|cRXP_LOOT_Mantelet de Brume-funeste|r]. Il tombe sur |cRXP_ENEMY_Jandice Barov|r dans |cFFfa9602Scholomance|r << Warlock
    >>Obtenez les |T135061:0|t[|cRXP_LOOT_Spallières de vaillance|r]. Elles tombent sur le |cRXP_ENEMY_Chef de guerre Rend Main-noire|r au |cFFfa9602Sommet du pic Rochenoire|r << Warrior
    >>|cRXP_WARN_Sinon, vous pouvez les acheter à |cRXP_FRIENDLY_Pix Xizzix|r à Baie-du-Butin en échange de|r |T133799:0|t[|cRXP_FRIENDLY_Réal de Terremine terni|r] << sod
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
    >>|cRXP_BUY_Obtenez|r les objets suivants:
    >>Les |T133233:0|t[Barre de sombrefer] |cRXP_WARN_sont créées par les mineurs|r
    >>Le |T134418:0|t[Cuir enchanté] |cRXP_WARN_et les|r |T132873:0|t[Grands éclats brillants] |cRXP_WARN_sont créés par les enchanteurs|r
    >>L' |T132895:0|t[Etoffe lunaire] |cRXP_WARN_est créée par les tailleurs|r
    >>Les |T134355:0|t[Peaux robustes traitées] |cRXP_WARN_sont créées par les Travailleurs du cuir|r
    >>Les |T136192:0|t[|cRXP_FRIENDLY_Rune ténébreuse|r] |cRXP_WARN_tombent aléatoirement dans|r |cFFfa9602Scholomance|r
    >>|cRXP_WARN_Achetez-les à l'Hôtel des ventes si possible|r
    .collect 11371,3,8947,1 --Dark Iron Bar (x3)
    .collect 12810,20,8947,1 --Enchanted Leather (x20)
    .collect 14344,8,8950,1 --Large Brilliant Shard (x8)
    .collect 14342,3,8947,1 --Mooncloth (x3)
    .collect 15407,4,8947,1 --Cured Rugged Hide (x4)
    .collect 20520,4,8950,1 --Dark Rune (x4)
step << Alliance
    #completewith next
    .zone Ironforge >>Voyagez à |cFFfa9602Forgefer|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deliana|r
    .accept 8929 >>Acceptez la quête À la recherche d'Anthion
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>Voyagez à |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mokvar|r
    .accept 8930 >>Acceptez la quête À la recherche d'Anthion
    .target Mokvar
step
    #completewith FindingAnthion
    +|cRXP_WARN_Commencez à chercher d'un groupe solide de 5 joueurs capable de nettoyer le côté des morts-vivants de Stratholme en 45 minutes|r
step
    #completewith next
    .zone Eastern Plaguelands >>Voyagez aux |cFFfa9602Maleterres de l'Est|r
step
    #label FindingAnthion
    .goto Eastern Kingdoms,55.06,17.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anthion|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Anthion|r
    .turnin 8929 >>Rendez la quête À la recherche d'Anthion << Alliance
    .turnin 8930 >>Rendez la quête À la recherche d'Anthion << Horde
    .accept 8945 >>Acceptez la quête La supplique du mort
    .target Anthion Harmon
step
    #completewith next
    .subzone 2017 >>Entrez dans Stratholme
    >>|cRXP_WARN_Assurez-vous d'avoir un groupe prêt|r
step
    >>Tuez le |cRXP_ENEMY_Baron Vaillefendre|r en 45 minutes pour sauver |cRXP_FRIENDLY_Ysida Harmon|r
    >>|cRXP_WARN_Le chronomètre démarre dès que vous recevez le debuff|r |T136129:0|t[L'ultimatum du baron] |cRXP_WARN_en entrant du côté des morts-vivants|r
    .complete 8945,1 --Ysida Freed (x1)
    .mob Baron Rivendare
    .target Ysida Harmon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ysida Harmon|r
    .turnin 8945 >>Rendez la quête La supplique du mort
    .accept 8946 >>Acceptez la quête Une preuve de vie
    .target Ysida Harmon
step
    .goto Eastern Kingdoms,55.06,17.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anthion|r à l'extérieur de Stratholme
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Anthion|r
    .turnin 8946 >>Rendez la quête Une preuve de vie
    .accept 8947 >>Acceptez la quête L'étonnante requête d'Anthion
    .target Anthion Harmon
step
    >>|cRXP_BUY_Obtenez|r les objets suivants:
    >>Les |T133233:0|t[Barre de sombrefer] |cRXP_WARN_sont créées par les mineurs|r
    >>Le |T134418:0|t[Cuir enchanté] |cRXP_WARN_est créé par les enchanteurs|r
    >>L' |T132895:0|t[Etoffe lunaire] |cRXP_WARN_est créée par les tailleurs|r
    >>Les |T134355:0|t[Peaux robustes traitées] |cRXP_WARN_sont créées par les Travailleurs du cuir|r
    >>Les |T136192:0|t[|cRXP_FRIENDLY_Rune ténébreuse|r] |cRXP_WARN_tombent aléatoirement dans|r |cFFfa9602Scholomance|r
    >>|cRXP_WARN_Achetez-les à l'Hôtel des ventes si possible|r
    .collect 11371,3,8947,1 --Dark Iron Bar (x3)
    .collect 12810,20,8947,1 --Enchanted Leather (x20)
    .collect 14344,8,8950,1 --Large Brilliant Shard (x8)
    .collect 14342,3,8947,1 --Mooncloth (x3)
    .collect 15407,4,8947,1 --Cured Rugged Hide (x4)
    .collect 20520,4,8950,1 --Dark Rune (x4)
step
    .goto Eastern Kingdoms,55.06,17.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anthion|r à l'extérieur de Stratholme
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Anthion|r
    .turnin 8947 >>Rendez la quête L'étonnante requête d'Anthion
    .accept 8948 >>Acceptez la quête Le vieil ami d'Anthion
    .target Anthion Harmon
step
    #softcore
    #completewith AnthionsFriend
    .zone Feralas >>Voyagez à |cFFfa9602Féralas|r
    >>|cRXP_WARN_La prochaine section se déroule dans Hache-Tripes. Vous pouvez le faire seul, mais former un groupe est fortement recommandé|r
    .subzoneskip 2557
step
    #hardcore
    #completewith AnthionsFriend
    .zone Feralas >>Voyagez à |cFFfa9602Féralas|r
    >>|cRXP_WARN_La prochaine section se déroule dans Hache-Tripes. Assurez-vous d'avoir un groupe préparé d'au moins 3 joueurs|r
    .subzoneskip 2557
step
    #completewith AnthionsFriend
    .goto Kalimdor,43.39,66.52,20 >>Entrez dans Hache-Tripes par l'entrée nord
    >>|cRXP_WARN_Vous devez avoir la|r |T134244:0|t[Clé en croissant] |cRXP_WARN_pour pouvoir ouvrir la porte vers Hache-Tripes Nord et vers la bibliothèque|r << !Rogue
    >>|cRXP_WARN_Vous devez avoir la|r |T134244:0|t[Clé en croissant]|cRXP_WARN_ ou avoir une compétence de 300 en crochetage pour pouvoir ouvrir la porte pour accéder à Hache-Tripes Nord et à la bibliothèque|r << Rogue
    >>|cRXP_WARN_Sinon, vous pouvez demander à un autre joueur d'ouvrir les portes pour vous|r
    .itemcount 18249,<1 << !Rogue --Crescent Key
    .skill lockpicking,300,1 << Rogue
step
    #optional
    #completewith AnthionsFriend
    .goto Kalimdor,43.39,66.52,20 >>Entrez dans Hache-Tripes par l'entrée nord
    .itemcount 18249,1 << !Rogue --Crescent Key
    .skill lockpicking,<300,1 << Rogue
step
    #label AnthionsFriend
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falrin Sculpteflore|r dans la bibliothèque de Hache-Tripes
    .turnin 8948 >>Rendez la quête Le vieil ami d'Anthion
    .accept 8949 >>Acceptez la quête La vendetta de Falrin
    .target Falrin Treeshaper
    --.link  >> |cRXP_WARN_You can reach the library without killing any mobs. Click here for video reference|r
    --VV TODO: Library skip video
step
    >>Tuez les |cRXP_ENEMY_Ogres Gordok|r dans |cFFfa9602Hache-Tripes Nord|r. Dépouillez-les pour leur |cRXP_LOOT_Perles de guerre|r
    >>|cRXP_WARN_Vous pouvez également tuer les|r |cRXP_ENEMY_Ogres Pierre-du-pic|r |cRXP_WARN_dans|r |cFFfa9602le Bas du Pic Rochenoire|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falrin Sculpteflore|r dans la bibliothèque de Hache-Tripes
    .turnin 8949 >>Rendez la quête La vendetta de Falrin
    .accept 8950 >>Acceptez la quête L'enchantement du provocateur
    .target Falrin Treeshaper
step
    #completewith SpectreEssence
    .goto Kalimdor,42.98,67.73,20 >>Entrez à Hache-Tripes par l'entrée ouest
    >>|cRXP_WARN_Vous devez avoir la|r |T134244:0|t[Clé en croissant] |cRXP_WARN_pour pouvoir ouvrir la porte vers Hache-Tripes Ouest|r << !Rogue
    >>|cRXP_WARN_Vous devez avoir la|r |T134244:0|t[Clé en croissant]|cRXP_WARN_ ou avoir une compétence de 300 en crochetage pour pouvoir ouvrir la porte pour accéder à Hache-Tripes Ouest|r << Rogue
    >>|cRXP_WARN_Sinon, vous pouvez demander à un autre joueur d'ouvrir la porte pour vous|r
    .itemcount 18249,<1 << !Rogue --Crescent Key
    .skill lockpicking,300,1 << Rogue
step
    #completewith SpectreEssence
    .goto Kalimdor,42.98,67.73,20 >>Entrez dans Hache-Tripes par l'entrée ouest
    .itemcount 18249,1 << !Rogue --Crescent Key
    .skill lockpicking,<300,1 << Rogue
step
    #label SpectreEssence
    >>Tuez les |cRXP_ENEMY_Fantômes Eldreth|r dans |cFFfa9602Hache-Tripes Ouest|r. Dépouillez-le pour l' |cRXP_LOOT_Essence de spectre railleur|r
    .complete 8950,1 --Jeering Spectre's Essence (x1)
    .mob Eldreth Wraith
    .mob Eldreth Seether
    .mob Eldreth Spectre
    .mob Eldreth Spirit
    .mob Eldreth Phantasm
    .mob Eldreth Apparition
    .mob Eldreth Sorcerer
step
    >>|cRXP_BUY_Obtenez|r les objets suivants:
    >>Les |T132873:0|t[Grands éclats brillants] |cRXP_WARN_sont créés par les enchanteurs|r
    >>Les |T136192:0|t[|cRXP_FRIENDLY_Rune ténébreuse|r] |cRXP_WARN_tombent aléatoirement dans|r |cFFfa9602Scholomance|r
    >>|cRXP_WARN_Achetez-les à l'Hôtel des ventes si possible|r
    .collect 14344,8,8950,1 --Large Brilliant Shard (x8)
    .collect 20520,4,8950,1 --Dark Rune (x4)
step
    #completewith AnthionsFriend2
    .goto Kalimdor,43.39,66.52,20 >>Entrez dans Hache-Tripes par l'entrée nord
    >>|cRXP_WARN_Vous devez avoir la|r |T134244:0|t[Clé en croissant] |cRXP_WARN_pour pouvoir ouvrir la porte vers Hache-Tripes Nord et vers la bibliothèque|r << !Rogue
    >>|cRXP_WARN_Vous devez avoir la|r |T134244:0|t[Clé en croissant]|cRXP_WARN_ ou avoir une compétence de 300 en crochetage pour pouvoir ouvrir la porte pour accéder à Hache-Tripes Nord et à la bibliothèque|r << Rogue
    >>|cRXP_WARN_Sinon, vous pouvez demander à un autre joueur d'ouvrir les portes pour vous|r
    .itemcount 18249,<1 << !Rogue --Crescent Key
    .skill lockpicking,300,1 << Rogue
step
    #optional
    #completewith AnthionsFriend2
    .goto Kalimdor,43.39,66.52,20 >>Entrez dans Hache-Tripes par l'entrée nord
    .itemcount 18249,1 << !Rogue --Crescent Key
    .skill lockpicking,<300,1 << Rogue
step
    #label AnthionsFriend2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falrin Sculpteflore|r dans la bibliothèque de Hache-Tripes
    .turnin 8950 >>Rendez la quête L'enchantement du provocateur
    .accept 9015 >>Acceptez la quête Le défi
    .target Falrin Treeshaper
    --.link  >> |cRXP_WARN_You can reach the library without killing any mobs. Click here for video reference|r
    --VV TODO: Library skip video
step
    #completewith next
    .subzone 254 >>Voyagez vers le |cFFfa9602Mont Rochenoire|r
step
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>Entrez dans les profondeurs de Rochenoire
    >>|cRXP_WARN_Assurez-vous d'avoir un groupe prêt|r
step
    .use 21986 >>Entrez dans l'arène du Cercle de la loi et utilisez la |T132619:0|t[Bannière de provocation]
    >>Cela invoquera |cRXP_ENEMY_Theldren|r. Tuez-le et dépouillez-le pour le |cRXP_LOOT_Morceau supérieur de l'amulette du seigneur Valthalak|r
    >>|cRXP_WARN_Ce combat est difficile. |cRXP_ENEMY_Theldren|r se manifestera avec plusieurs créatures d'élite de niveau 60. Assurez-vous que votre groupe dispose d'assez de sorts de contrôle pour eux|r
    .complete 9015,1 --Theldren's Team Defeated
    .complete 9015,2 --Top Piece of Lord Valthalak's Amulet (x1)
    .mob Theldren
step
    #completewith next
    .zone Eastern Plaguelands >>Voyagez aux Maleterres de l'Est
step
    .goto Eastern Kingdoms,55.06,17.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anthion|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Anthion|r
    .turnin 9015 >>Rendez la quête Le défi
    .accept 8951 >>Acceptez la quête Les adieux d'Anthion << Alliance Druid
    .accept 8952 >>Acceptez la quête Les adieux d'Anthion << Alliance Hunter
    .accept 8953 >>Acceptez la quête Les adieux d'Anthion << Alliance Mage
    .accept 8954 >>Acceptez la quête Les adieux d'Anthion << Alliance Paladin
    .accept 8955 >>Acceptez la quête Les adieux d'Anthion << Alliance Priest
    .accept 8956 >>Acceptez la quête Les adieux d'Anthion << Alliance Rogue
    .accept 8958 >>Acceptez la quête Les adieux d'Anthion << Alliance Warlock
    .accept 8959 >>Acceptez la quête Les adieux d'Anthion << Alliance Warrior
    .accept 8957 >>Acceptez la quête Les adieux d'Anthion << Horde Shaman
    .accept 9016 >>Acceptez la quête Les adieux d'Anthion << Horde Druid
    .accept 9017 >>Acceptez la quête Les adieux d'Anthion << Horde Hunter
    .accept 9018 >>Acceptez la quête Les adieux d'Anthion << Horde Mage
    .accept 9019 >>Acceptez la quête Les adieux d'Anthion << Horde Priest
    .accept 9020 >>Acceptez la quête Les adieux d'Anthion << Horde Rogue
    .accept 9021 >>Acceptez la quête Les adieux d'Anthion << Horde Warlock
    .accept 9022 >>Acceptez la quête Les adieux d'Anthion << Horde Warrior
    .target Anthion Harmon
step << Alliance
    #completewith next
    .zone Ironforge >>Voyagez à |cFFfa9602Forgefer|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deliana|r
    >>Vous aurez besoin deS |T132542:0|t[|cRXP_LOOT_Bottes du Cœur-sauvage|r], du |T134588:0|t[|cRXP_LOOT_Kilt du Cœur-sauvage|r] et des |T135032:0|t[|cRXP_LOOT_Spallières du Cœur-sauvage|r] pour rendre cette quête << Druid
    >>Vous aurez besoin des |T132588:0|t[|cRXP_LOOT_Bottes de bestiaire|r], du |T134583:0|t[|cRXP_LOOT_Pantalon de bestiaire|r] et du |T135041:0|t[|cRXP_LOOT_Mantelet de bestiaire|r] pour rendre cette quête << Hunter
    >>Vous aurez besoin des |T132536:0|t[|cRXP_LOOT_Bottes de magistère|r], des |T134586:0|t[|cRXP_LOOT_Jambières de magistère|r] et du |T135054:0|t[|cRXP_LOOT_Mantelet de magistère|r] pour rendre cette quête << Mage
    >>Il aurez besoin des |T132584:0|t[|cRXP_LOOT_Bottes de Sancteforge|r], des |T134584:0|t[|cRXP_LOOT_Cuissards de Sancteforge|r] et des |T135041:0|t[|cRXP_LOOT_Spallières de Sancteforge|r] pour rendre cette quête << Paladin
    >>Vous aurez besoin des |T132539:0|t[|cRXP_LOOT_Sandales de dévot|r], de la |T134588:0|t[|cRXP_LOOT_Jupe de dévot|r] et du |T135033:0|t[|cRXP_LOOT_Mantelet de dévot|r] pour rendre cette quête << Priest
    >>Vous aurez besoin des |T132542:0|t[|cRXP_LOOT_Bottes Sombreruse|r], du |T134582:0|t[|cRXP_LOOT_Pantalon Sombreruse|r] et des |T135038:0|t[|cRXP_LOOT_Spallières Sombreruse|r] pour rendre cette quête << Rogue
    >>Vous aurez besoin des |T132539:0|t[|cRXP_LOOT_Sandales de Brume-funeste|r], des |T134588:0|t[|cRXP_LOOT_Jambières de Brume-funeste|r] et du |T133732:0|t[|cRXP_LOOT_Mantelet de Brume-funeste|r] pour rendre cette quête << Warlock
    >>Vous aurez besoin des |T132584:0|t[|cRXP_LOOT_Bottes de vaillance|r], des |T134584:0|t[|cRXP_LOOT_Cuissards de vaillance|r] et des |T135061:0|t[|cRXP_LOOT_Spallières de vaillance|r] pour rendre cette quête << Warrior
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
    .turnin 8951 >>Rendez la quête Les adieux d'Anthion << Druid
    .turnin 8952 >>Rendez la quête Les adieux d'Anthion << Hunter
    .turnin 8953 >>Rendez la quête Les adieux d'Anthion << Mage
    .turnin 8954 >>Rendez la quête Les adieux d'Anthion << Paladin
    .turnin 8955 >>Rendez la quête Les adieux d'Anthion << Priest
    .turnin 8956 >>Rendez la quête Les adieux d'Anthion << Rogue
    .turnin 8958 >>Rendez la quête Les adieux d'Anthion << Warlock
    .turnin 8959 >>Rendez la quête Les adieux d'Anthion << Warrior
    .accept 8960 >>Acceptez la quête Le triste destin de Bodley
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>Voyagez à |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mokvar|r
    >>Vous aurez besoin deS |T132542:0|t[|cRXP_LOOT_Bottes du Cœur-sauvage|r], du |T134588:0|t[|cRXP_LOOT_Kilt du Cœur-sauvage|r] et des |T135032:0|t[|cRXP_LOOT_Spallières du Cœur-sauvage|r] pour rendre cette quête << Druid
    >>Vous aurez besoin des |T132588:0|t[|cRXP_LOOT_Bottes de bestiaire|r], du |T134583:0|t[|cRXP_LOOT_Pantalon de bestiaire|r] et du |T135041:0|t[|cRXP_LOOT_Mantelet de bestiaire|r] pour rendre cette quête << Hunter
    >>Vous aurez besoin des |T132536:0|t[|cRXP_LOOT_Bottes de magistère|r], des |T134586:0|t[|cRXP_LOOT_Jambières de magistère|r] et du |T135054:0|t[|cRXP_LOOT_Mantelet de magistère|r] pour rendre cette quête << Mage
    >>Vous aurez besoin des |T132539:0|t[|cRXP_LOOT_Sandales de dévot|r], de la |T134588:0|t[|cRXP_LOOT_Jupe de dévot|r] et du |T135033:0|t[|cRXP_LOOT_Mantelet de dévot|r] pour rendre cette quête << Priest
    >>Vous aurez besoin des |T132542:0|t[|cRXP_LOOT_Bottes Sombreruse|r], du |T134582:0|t[|cRXP_LOOT_Pantalon Sombreruse|r] et des |T135038:0|t[|cRXP_LOOT_Spallières Sombreruse|r] pour rendre cette quête << Rogue
    >>Vous aurez besoin des |T132592:0|t[|cRXP_LOOT_Bottes des éléments|r], du |T134583:0|t[|cRXP_LOOT_Kilt des éléments|r] et des |T135060:0|t[|cRXP_LOOT_Espauliers des éléments|r] pour rendre cette quête << Shaman
    >>Vous aurez besoin des |T132539:0|t[|cRXP_LOOT_Sandales de Brume-funeste|r], des |T134588:0|t[|cRXP_LOOT_Jambières de Brume-funeste|r] et du |T133732:0|t[|cRXP_LOOT_Mantelet de Brume-funeste|r] pour rendre cette quête << Warlock
    >>Vous aurez besoin des |T132584:0|t[|cRXP_LOOT_Bottes de vaillance|r], des |T134584:0|t[|cRXP_LOOT_Cuissards de vaillance|r] et des |T135061:0|t[|cRXP_LOOT_Spallières de vaillance|r] pour rendre cette quête << Warrior
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
    .turnin 8957 >>Rendez la quête Les adieux d'Anthion << Shaman
    .turnin 9016 >>Rendez la quête Les adieux d'Anthion << Druid
    .turnin 9017 >>Rendez la quête Les adieux d'Anthion << Hunter
    .turnin 9018 >>Rendez la quête Les adieux d'Anthion << Mage
    .turnin 9019 >>Rendez la quête Les adieux d'Anthion << Priest
    .turnin 9020 >>Rendez la quête Les adieux d'Anthion << Rogue
    .turnin 9021 >>Rendez la quête Les adieux d'Anthion << Warlock
    .turnin 9022 >>Rendez la quête Les adieux d'Anthion << Warrior
    .accept 8960 >>Acceptez la quête Le triste destin de Bodley
    .target Mokvar

]])


RXPGuides.RegisterGuide([[
#classic
#tbc
#group RestedXP Guides Endgame
#subgroup Guide du Set Cœur-Farouche << Druid
#subgroup Guide du Set Armure de belluaire << Hunter
#subgroup Guide du Set Parade du sorcier << Mage
#subgroup Guide du Set Armure d'Âmeforge << Paladin
#subgroup Guide du Set Armure Sombremante << Rogue
#subgroup Guide du Set Les Cinq tonnerres << Shaman
#subgroup Guide du Set Mortebrume << Warlock
#subgroup Guide du Set Tenue de combat d'héroïsme << Warrior
#subgroup Guide du Set Habits du Vertueux << Priest
#name Partie 4: Casque et Plastron


step
    #optional
    +|cRXP_WARN_Vous devez terminer la Partie 3 : Pantalon, Épaules & Bottes avant de commencer cette partie du guide|r
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
    >>Obtenez la |T133129:0|t[|cRXP_LOOT_Coiffe du Cœur-sauvage|r]. Elle tombe sur le |cRXP_ENEMY_Sombre Maître Gandling|r dans |cFFfa9602Scholomance|r << Druid
    >>Obtenez la |T133126:0|t[|cRXP_LOOT_Coiffe de bestiaire|r]. Elle tombe sur le |cRXP_ENEMY_Sombre Maître Gandling|r dans |cFFfa9602Scholomance|r << Hunter
    >>Obtenez le |T133076:0|t[|cRXP_LOOT_Heaume de Sancteforge|r]. Il tombe sur le |cRXP_ENEMY_Sombre Maître Gandling|r dans |cFFfa9602Scholomance|r << Paladin
    >>Obtenez la |T132767:0|t[|cRXP_LOOT_Collerette de dévot|r]. Elle tombe sur le |cRXP_ENEMY_Sombre Maître Gandling|r dans |cFFfa9602Scholomance|r << Priest
    >>Obtenez la |T133143:0|t[|cRXP_LOOT_Cagoule Sombreruse|r]. Elle tombe sur le |cRXP_ENEMY_Sombre Maître Gandling|r dans |cFFfa9602Scholomance|r << Rogue
    >>Obtenez la |T133072:0|t[|cRXP_LOOT_Coiffe des éléments|r]. Elle tombe sur le |cRXP_ENEMY_Sombre Maître Gandling|r dans |cFFfa9602Scholomance|r << Shaman
    >>Obtenez le |T133131:0|t[|cRXP_LOOT_Masque de Brume-funeste|r]. Il tombe sur le |cRXP_ENEMY_Sombre Maître Gandling|r dans |cFFfa9602Scholomance|r << Warlock
    >>Obtenez le |T133070:0|t[|cRXP_LOOT_Heaume de vaillance|r]. Il tombe sur le |cRXP_ENEMY_Sombre Maître Gandling|r dans |cFFfa9602Scholomance|r << Warrior
    >>Obtenez la |T132768:0|t[|cRXP_LOOT_Collerette de magistère|r]. Elle tombe sur le |cRXP_ENEMY_Sombre Maître Gandling|r dans |cFFfa9602Scholomance|r << Mage
    >>|cRXP_WARN_Sinon, vous pouvez les acheter à |cRXP_FRIENDLY_Pix Xizzix|r à Baie-du-Butin en échange de|r |T133799:0|t[|cRXP_FRIENDLY_Réal de Terremine terni|r] << sod
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
    >>Obtenez le |T132741:0|t[|cRXP_LOOT_Gilet du Cœur-sauvage|r]. Il tombe sur le |cRXP_ENEMY_Général Drakkisath|r dans le |cFFfa9602Sommet du pic Rochenoire|r << Druid
    >>Obtenez la |T132625:0|t[|cRXP_LOOT_Tunique de bestiaire|r]. Elle tombe sur le |cRXP_ENEMY_Général Drakkisath|r dans le |cFFfa9602Sommet du pic Rochenoire|r << Hunter
    >>Obtenez la |T132738:0|t[|cRXP_LOOT_Cuirasse de Sancteforge|r]. Elle tombe sur le |cRXP_ENEMY_Général Drakkisath|r dans le |cFFfa9602Sommet du pic Rochenoire|r << Paladin
    >>Obtenez la |T132652:0|t[|cRXP_LOOT_Robe de dévot|r]. Elle tombe sur le |cRXP_ENEMY_Général Drakkisath|r dans le |cFFfa9602Sommet du pic Rochenoire|r << Priest
    >>Obtenez la |T132722:0|t[|cRXP_LOOT_Tunique Sombreruse|r]. Elle tombe sur le |cRXP_ENEMY_Général Drakkisath|r dans le |cFFfa9602Sommet du pic Rochenoire|r << Rogue
    >>Obtenez le |T132633:0|t[|cRXP_LOOT_Haubergeon des éléments|r]. Il tombe sur le |cRXP_ENEMY_Général Drakkisath|r dans le |cFFfa9602Sommet du pic Rochenoire|r << Shaman
    >>Obtenez la |T132690:0|t[|cRXP_LOOT_Robe de Brume-funeste|r]. Elle tombe sur le |cRXP_ENEMY_Général Drakkisath|r dans le |cFFfa9602Sommet du pic Rochenoire|r << Warlock
    >>Obtenez la |T132738:0|t[|cRXP_LOOT_Cuirasse de vaillance|r]. Elle tombe sur le |cRXP_ENEMY_Général Drakkisath|r dans le |cFFfa9602Sommet du pic Rochenoire|r << Warrior
    >>Obtenez la |T132666:0|t[|cRXP_LOOT_Robe de magistère|r]. Elle tombe sur le |cRXP_ENEMY_Général Drakkisath|r dans le |cFFfa9602Sommet du pic Rochenoire|r << Mage
    >>|cRXP_WARN_Sinon, vous pouvez les acheter à |cRXP_FRIENDLY_Pix Xizzix|r à Baie-du-Butin en échange de|r |T133799:0|t[|cRXP_FRIENDLY_Réal de Terremine terni|r] << sod
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
    .zone Ironforge >>Voyagez à |cFFfa9602Forgefer|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deliana|r
    .accept 8960 >>Acceptez la quête Le triste destin de Bodley
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>Voyagez à |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mokvar|r
    .accept 8960 >>Acceptez la quête Le triste destin de Bodley
    .target Mokvar
step
    >>|cRXP_BUY_Obtenez|r les objets suivants:
    >>|cRXP_WARN_Au moins un|r |T132873:0|t[Grand éclat brillant]
    >>|cRXP_WARN_Un|r |T134821:0|t[Flacon de pouvoir suprême]
    >>|cRXP_WARN_Achetez-le à l'Hôtel des Ventes si possible|r
    .collect 14344,1,8961,1 --Large Brilliant Shard (x1)
    .collect 13512,1,8994,1 --Flask of Supreme Power (x1)
step
    .reputation 529,honored >>|cRXP_WARN_Obtenez une réputation honorée avec l'Aube d'argent|r
step << Alliance
    #completewith next
    .subzone 3197 >>Voyagez au Camp du Noroît aux |cFFfa9602Maleterres de l'Ouest|r
step << Alliance
    .goto Western Plaguelands,42.84,83.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Intendant de l'Aube d'argent Feuzopoudre|r
    >>|cRXP_BUY_Achetez-lui un|r |T133879:0|t[Brasero béni] |cRXP_BUY_|r
    >>|cRXP_WARN_Il coûte 120 pièces d'or|r
    .collect 22014,1,8961,1 --Hallowed Brazier (x1)
    .target Argent Quartermaster Lightspark
step << Horde
    #completewith next
    .subzone 2268 >>Voyagez vers la Chapelle de l'Espoir de Lumière dans les |cFFfa9602Maleterres de l'Est|r
step << Horde
    .goto Eastern Plaguelands,81.63,60.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Intendante Miranda Breechlock|r
    >>|cRXP_BUY_Achetez-lui un|r |T133879:0|t[Brasero béni] |cRXP_BUY_|r
    >>|cRXP_WARN_Il coûte 120 pièces d'or|r
    .collect 22014,1,8961,1 --Hallowed Brazier (x1)
    .target Quartermaster Miranda Breechlock
step
    #completewith next
    .subzone 254 >>Voyagez vers le |cFFfa9602Mont Rochenoire|r
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .turnin 8960 >>Rendez la quête Le triste destin de Bodley
    .accept 8961 >>Acceptez la quête Les trois rois des flammes
    .target Bodley
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Entrez dans le Sommet du pic Rochenoire
    >>|cRXP_WARN_Il s'agit un donjon de 10 joueurs. Vous ou quelqu'un dans votre groupe devez avoir le|r |T133343:0|t[|cRXP_LOOT_Sceau d'ascension|r] |cRXP_WARN_pour pouvoir entrer dans le Sommet du pic Rochenoire|r
step
    >>Tuez le |cRXP_ENEMY_Pyrogarde Prophète ardent|r. Dépouillez-le pour la |cRXP_LOOT_Braise du prophète ardent|r
    >>|cRXP_WARN_Il s'agit du premier Boss dans le|r |cFFfa9602Sommet du pic Rochenoire|r
    .complete 8961,2 --Ember of Emberseer (x1)
    .mob Pyroguard Emberseer
step
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>Entrez dans les profondeurs de Rochenoire
    >>|cRXP_WARN_Assurez-vous d'avoir un groupe prêt|r
step
    >>Tuez le |cRXP_ENEMY_Seigneur Incendius|r. Dépouillez-le pour l' |cRXP_LOOT_Incendicite d'Incendius|r
    .complete 8961,1 --Incendicite of Incendius (x1)
    .mob Lord Incendius
step
    #completewith DukeofCynders
    .zone Silithus >>Voyagez à |cFFfa9602Silithus|r
step
    #loop
    .goto Silithus,38.31,46.42,0
    .goto Silithus,27.93,30.66,0
    .goto Silithus,20.47,86.11,0
    .goto Silithus,38.31,46.42,80,0
    .goto Silithus,27.93,30.66,80,0
    .goto Silithus,20.47,86.11,80,0
    >>Tuez les mobs |cRXP_ENEMY_Twilight|r mobs dans |cFFfa9602Silithus|r. Dépouillez-les pour leur équipement de |T132658:0|t[|cRXP_FRIENDLY_Twilight Cultist|r]
    >>|cRXP_WARN_Vous allez avoir besoin de plusieurs ensembles de|r |T132658:0|t[|cRXP_FRIENDLY_Sectateur du Crépuscule|r] |cRXP_WARN_. Il est recommandé que votre groupe ait au moins 5 ensembles|r
    >>|cRXP_WARN_Sinon, vous pouvez les acheter à l'Hôtel des ventes|r
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
    .reputation 609,friendly >>Obtenez une réputation amicale auprès du Cercle cénarien
    >>|cRXP_WARN_Tuez en boucle les mobs du |cRXP_ENEMY_Crépuscule|r ou complétez des quêtes du Cercle cénarien dans Silithus pour obtenir de la réputation|r
step
    .goto Silithus,48.62,37.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Huum Crin-Sauvage|r.
    .accept 8331 >>Acceptez la quête Aurel Feuilledor
    .target Huum Wildmane
    .itemcount 20422,<1
step
    .goto Silithus,51.96,38.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aurel Feuilledor|r
    .turnin 8331 >>Rendez la quête Aurel Feuilledor
    .accept 8332 >>Acceptez la quête Les ducs du Conseil
    .target Aurel Goldleaf
    .itemcount 20422,<1
step
    .goto Silithus,38.31,46.42
    .goto Silithus,38.31,46.42,0
    .goto Silithus,27.93,30.66,0
    .goto Silithus,20.47,86.11,0
    >>Dirigez-vous vers une |cRXP_PICK_Lesser Wind Stone|r dans l'un des trois camps |cRXP_ENEMY_Twilight|r. Ils sont marqués sur votre carte
    >>Invoquez les |cRXP_ENEMY_Templiers|r et tuez-les. Dépouillez-les pour leur |T133438:0|t[|cRXP_LOOT_Blason abyssal|r]
    >>|cRXP_WARN_Vous ou l'un des membres de votre groupe doit équiper un ensemble de|r |T132658:0|t[|cRXP_FRIENDLY_Sectateur du crépuscule|r] |cRXP_WARN_chaque fois que vous voulez invoquer un|r |cRXP_ENEMY_Templier|r
    .collect 20513,3 --Abyssal Crest (x3)
    .itemcount 20422,<1
    .mob Earthen Templar
    .mob Crimson Templar
    .mob Hoary Templar
    .mob Azure Templar
step
    .goto Silithus,51.96,38.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aurel Feuilledor|r
    .turnin 8332 >>Rendez la quête Les ducs du Conseil
    .target Aurel Goldleaf
    .itemcount 20513,3
step
    .goto Silithus,51.96,38.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aurel Feuilledor|r
    .turnin 8333 >>Rendez la quête Le médaillon de statut
    .target Aurel Goldleaf
    .itemcount 20513,3
step
    #label DukeofCynders
    .goto Silithus,37.67,44.81
    .goto Silithus,37.67,44.81,0
    .goto Silithus,24.74,32.68,0
    .goto Silithus,17.24,84.75,0
    >>Dirigez-vous vers une |cRXP_PICK_Pierre des vents|r dans l'un des trois camps |cRXP_ENEMY_du Crépuscule|r. Ils sont marqués sur votre carte
    >>Invoquez les |cRXP_ENEMY_Ducs|r jusqu'à ce que |cRXP_ENEMY_Le duc des Cendres|r apparaisse |cRXP_WARN_(25% de chance d'apparaître)|r. Tuez-le et dépouillez-le pour le |cRXP_LOOT_Cendres de Cendres|r
    >>|cRXP_WARN_Vous ou l'un des membres de votre groupe doit avoir un |r |T133281:0|t[|cRXP_LOOT_Médaillon de statut de sectateur du crépuscule|r] |cRXP_WARN_et doit équiper un ensemble de|r |T132658:0|t[|cRXP_FRIENDLY_Sectateur du Crépuscule|r] |cRXP_WARN_à chaque fois que vous voulez invoquer un nouveau|r |cRXP_ENEMY_Duc|r
    >>|cRXP_WARN_Vous devrez peut-être récolter plus de|r |T133281:0|t[|cRXP_LOOT_Médaillons de statut de sectateur du crépuscule|r] |cRXP_WARN_et d'ensemble de |r |T132658:0|t[|cRXP_FRIENDLY_Sectateur du crépuscule|r] |cRXP_WARN_si vous n'avez pas de chance|r
    .complete 8961,3 --Cinder of Cynders (x1)
    .mob The Duke of Cynders
step
    #completewith next
    .subzone 254 >>Voyagez vers le |cFFfa9602Mont Rochenoire|r
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .turnin 8961 >>Rendez la quête Les trois rois des flammes
    .acceptmultiple 8962,8963,8964,8965 >>Acceptez la quête Des composants importants
    .target Bodley
step
    #completewith next
    .subzone 2744 >>Voyagez vers la Ruche'Regal dans |cFFfa9602Silithus|r
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
    >>Tuez les mobs de la |cRXP_ENEMY_Ruche'Regal|r (élite). Dépouillez-les pour les |cRXP_LOOT_Restes druidiques|r.
    >>|cRXP_WARN_Ils ont un très faible taux de drop et cela peut prendre un certain temps. Il est recommandé de les farmer en groupe de 5|r
    .complete 8962,1 --Druidical Remains (x1)
    .mob Hive'Regal Spitfire
    .mob Hive'Regal Hive Lord
    .mob Hive'Regal Slavemaker
    .mob Hive'Regal Ambusher
    .mob Hive'Regal Burrower
    .isOnQuest 8962
step
    #completewith next
    .subzone 2249 >>Voyagez à la Gorge du Blanc murmure au |cFFfa9602Berceau-de-l'Hiver|r
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
    >>Tuez les |cRXP_ENEMY_Géants Cognegivres|r et les |cRXP_ENEMY_Protecteurs Cognegivres|r (élite). Dépouillez-les pour la |cRXP_LOOT_Relique de Brise-stellaire|r
    >>|cRXP_WARN_Ils ont un très faible taux de drop et cela peut prendre un certain temps. Il est recommandé de les farmer en groupe de 5|r
    .complete 8963,1 --Starbreeze Village Relic (x1)
    .mob Frostmaul Giant
    .mob Frostmaul Preserver
    .isOnQuest 8963
step
    #completewith next
    .subzone 2266 >>Voyagez à la Main de Tyr aux |cFFfa9602Maleterres de l'Est|r
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
    >>Tuez les |cRXP_ENEMY_Prétoriens écarlates|r (élite). Dépouillez-les pour l' |cRXP_ENEMY_Épée brillante du fanatisme|r
    >>|cRXP_WARN_Ils ont un très faible taux de drop et cela peut prendre un certain temps. Il est recommandé de les farmer en groupe de 5|r
    .complete 8964,1 --Brilliant Sword of Zealotry (x1)
    .mob Scarlet Praetorian
    .isOnQuest 8964
step
    #completewith next
    .goto Hillsbrad Foothills,19.67,76.92
    .subzone 896 >>Voyage vers Île de la Purification dans les |cFFfa9602Contreforts de Hautebrande|r
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
    >>Tuez les |cRXP_ENEMY_Fantômes morts-vivants|r (élite) sur l'île. Dépouillez-les pour les |cRXP_LOOT_Cendres d'âme de banni|r
    >>|cRXP_WARN_Ils ont un très faible taux de drop et cela peut prendre un certain temps. Il est recommandé de les farmer en groupe de 5|r
    .complete 8965,1 --Soul Ashes of the Banished (x1)
    .mob Cursed Paladin
    .mob Writhing Mage
    .mob Condemned Acolyte
    .mob Condemned Monk
    .mob Cursed Justicar
    .isOnQuest 8965
step
    #completewith LeftPiecePU
    .subzone 254 >>Voyagez vers le |cFFfa9602Mont Rochenoire|r
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .turnin 8962 >>Rendez la quête Des composants importants
    .target Bodley
    .isQuestComplete 8962
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .turnin 8963 >>Rendez la quête Des composants importants
    .target Bodley
    .isQuestComplete 8963
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .turnin 8964 >>Rendez la quête Des composants importants
    .target Bodley
    .isQuestComplete 8964
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .turnin 8965 >>Rendez la quête Des composants importants
    .target Bodley
    .isQuestComplete 8965
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .acceptmultiple 8966,8967,8968,8969 >>Acceptez la quête Le morceau gauche de l'amulette du seigneur Valthalak
    .target Bodley
    .isQuestTurnedIn 8962
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .acceptmultiple 8966,8967,8968,8969 >>Acceptez la quête Le morceau gauche de l'amulette du seigneur Valthalak
    .target Bodley
    .isQuestTurnedIn 8963
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .acceptmultiple 8966,8967,8968,8969 >>Acceptez la quête Le morceau gauche de l'amulette du seigneur Valthalak
    .target Bodley
    .isQuestTurnedIn 8964
step
    #label LeftPiecePU
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .acceptmultiple 8966,8967,8968,8969 >>Acceptez la quête Le morceau gauche de l'amulette du seigneur Valthalak
    .target Bodley
    .isQuestTurnedIn 8965
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Entrez dans le Pic Rochenoire
    >>|cRXP_WARN_Assurez-vous d'avoir un groupe prêt|r
    .isOnQuest 8966
step
    >>Tuez |cRXP_ENEMY_Mor Sabot-gris|r. Dépouillez-le pour le |T133320:0|t[|cRXP_LOOT_Morceau gauche de l'amulette du seigneur Valthalak|r]
    .use 22049 >>|cRXP_WARN_Utilisez le|r |T133881:0|t[Brasero de signal] |cRXP_WARN_dans la salle du|r |cRXP_ENEMY_Maître de guerre Voone|r |cRXP_WARN_ pour invoquer|r |cRXP_ENEMY_Mor Sabot-gris|r
    .complete 8966,1 --Mor Grayhoof Slain (x1)
    .complete 8966,2 --Left Piece of Lord Valthalak's Amulet (x1)
    .mob War Master Voone
    .mob Mor Grayhoof
    .isOnQuest 8966
step
    #completewith next
    .zone Feralas >>Voyagez à |cFFfa9602Féralas|r
    .subzoneskip 2557
    .isOnQuest 8967
step
    #completewith next
    .goto Kalimdor,43.84,67.41,20 >>Entrez dans Hache-Tripes par l'entrée est
    >>|cRXP_WARN_Assurez-vous d'avoir un groupe prêt|r
    .isOnQuest 8967
step
    >>Tuez |cRXP_ENEMY_Isalien|r. Dépouillez-la pour le |T133320:0|t[|cRXP_LOOT_Morceau gauche de l'amulette du seigneur Valthalak|r]
    .use 22050 >>|cRXP_WARN_Utilisez le|r |T133881:0|t[Brasero de signal] |cRXP_WARN_dans la salle de|r |cRXP_ENEMY_Alzzin le Modeleur|r |cRXP_WARN_pour invoquer|r |cRXP_ENEMY_Isalien|r
    .complete 8967,1 --Isalien slain (x1)
    .complete 8967,2 --Left Piece of Lord Valthalak's Amulet (x1)
    .mob Alzzin the Wildshaper
    .mob Isalien
    .isOnQuest 8967
step
    #completewith next
    .zone Eastern Plaguelands >>Voyagez aux |cFFfa9602Maleterres de l'Est|r
    .subzoneskip 2017
    .isOnQuest 8968
step
    #completewith next
    .goto Eastern Kingdoms,55.06,17.51
    .subzone 2017 >>Entrez dans Stratholme
    >>|cRXP_WARN_Assurez-vous d'avoir un groupe prêt|r
    .isOnQuest 8968
step
    >>Tuez |cRXP_ENEMY_Jarien|r et |cRXP_ENEMY_Sothos|r. Dépouillez-les pour le |T133320:0|t[|cRXP_LOOT_Morceau gauche de l'amulette du seigneur Valthalak|r]
    .use 22051 >>|cRXP_WARN_Utilisez le|r |T133881:0|t[Brasero de signal] |cRXP_WARN_dans la salle de|r |cRXP_ENEMY_Balnazzar|r |cRXP_WARN_pour invoquer|r |cRXP_ENEMY_Jarien|r |cRXP_WARN_et|r |cRXP_ENEMY_Sothos|r
    .complete 8968,1 --Jarien slain (x1)
    .complete 8968,2 --Sothos slain (x1)
    .complete 8968,3 --Left Piece of Lord Valthalak's Amulet (x1)
    .mob Balnazzara
    .mob Jarien
    .mob Sothos
    .isOnQuest 8968
step
    #completewith next
    .zone Western Plaguelands >>Voyagez aux |cFFfa9602Maleterres de l'Ouest|r
    .subzoneskip 2057
    .isOnQuest 8969
step
    #completewith next
    .goto Eastern Kingdoms,52.75,26.41
    .subzone 2057 >>Entrez dans Scholomance
    >>|cRXP_WARN_Assurez-vous d'avoir un groupe prêt|r
    .isOnQuest 8969
step
    >>Tuez |cRXP_ENEMY_Kormok|r. Dépouillez-le pour le |T133320:0|t[|cRXP_LOOT_Morceau gauche de l'amulette du seigneur Valthalak|r]
    .use 22052 >>|cRXP_WARN_Utilisez le|r |T133881:0|t[Brasero de signal] |cRXP_WARN_dans la salle de|r |cRXP_ENEMY_Ras Murmegivre|r |cRXP_WARN_pour invoquer|r |cRXP_ENEMY_Kormok|r
    .complete 8969,1 --Kormok slain (x1)
    .complete 8969,2 --Left Piece of Lord Valthalak's Amulet (x1)
    .mob Ras Frostwhisper
    .mob Kormok
    .isOnQuest 8969
step
    #completewith AlcazIslandPU
    .subzone 254 >>Voyagez vers le |cFFfa9602Mont Rochenoire|r
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .turnin 8966 >>Rendez la quête Le morceau gauche de l'amulette du seigneur Valthalak
    .accept 8970 >>Acceptez la quête Votre avenir passe par l'île d'Alcaz
    .target Bodley
    .isQuestComplete 8966
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .turnin 8967 >>Rendez la quête Le morceau gauche de l'amulette du seigneur Valthalak
    .accept 8970 >>Acceptez la quête Votre avenir passe par l'île d'Alcaz
    .target Bodley
    .isQuestComplete 8967
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .turnin 8968 >>Rendez la quête Le morceau gauche de l'amulette du seigneur Valthalak
    .accept 8970 >>Acceptez la quête Votre avenir passe par l'île d'Alcaz
    .target Bodley
    .isQuestComplete 8968
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .turnin 8969 >>Rendez la quête Le morceau gauche de l'amulette du seigneur Valthalak
    .accept 8970 >>Acceptez la quête Votre avenir passe par l'île d'Alcaz
    .target Bodley
    .isQuestComplete 8969
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .accept 8970 >>Acceptez la quête Votre avenir passe par l'île d'Alcaz
    .target Bodley
    .isQuestTurnedIn 8966
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .accept 8970 >>Acceptez la quête Votre avenir passe par l'île d'Alcaz
    .target Bodley
    .isQuestTurnedIn 8967
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .accept 8970 >>Acceptez la quête Votre avenir passe par l'île d'Alcaz
    .target Bodley
    .isQuestTurnedIn 8968
step
    #label AlcazIslandPU
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .accept 8970 >>Acceptez la quête Votre avenir passe par l'île d'Alcaz
    .target Bodley
    .isQuestTurnedIn 8969
step
    #completewith next
    .goto Dustwallow Marsh,72.26,18.28
    .subzone 2079 >>Voyagez à l'Île d'Alcaz aux |cFFfa9602Marécage d'Âprefange|r
step
    #loop
    .goto Dustwallow Marsh,76.91,18.24,0
    .goto Dustwallow Marsh,74.38,17.99,50,0
    .goto Dustwallow Marsh,74.89,14.68,50,0
    .goto Dustwallow Marsh,74.38,17.99,50,0
    .goto Dustwallow Marsh,76.91,18.24,50,0
    .goto Dustwallow Marsh,76.56,22.15,50,0
    .goto Dustwallow Marsh,75.49,21.75,50,0
    >>Tuez les |cRXP_ENEMY_Naga Strashaz|r (élite). Dépouillez-les pour leur |cRXP_LOOT_Varech de sang|r
    >>|cRXP_WARN_Ils ont un très faible taux de drop et cela peut prendre un certain temps. Il est recommandé de les farmer en groupe de 5|r
    .complete 8970,1 --Bloodkelp (x20)
    .mob Strashaz Warrior
    .mob Strashaz Myrmidon
    .mob Strashaz Siren
    .mob Strashaz Sorceress
    .mob Strashaz Serpent Guard
step
    #completewith next
    .subzone 254 >>Voyagez vers le |cFFfa9602Mont Rochenoire|r
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .turnin 8970 >>Rendez la quête Votre avenir passe par l'île d'Alcaz
    .target Bodley
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .acceptmultiple 8985,8986,8987,8988 >>Acceptez la quête D'autres composants importants
    .target Bodley
    .isQuestTurnedIn 8970
step
    #completewith next
    .subzone 2744 >>Voyagez vers la Ruche'Regal dans |cFFfa9602Silithus|r
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
    >>Tuez les mobs de la |cRXP_ENEMY_Ruche'Regal|r (élite). Dépouillez-les pour les |cRXP_LOOT_Restes druidiques|r.
    >>|cRXP_WARN_Ils ont un très faible taux de drop et cela peut prendre un certain temps. Il est recommandé de les farmer en groupe de 5|r
    .complete 8986,1 --Druidical Remains (x1)
    .mob Hive'Regal Spitfire
    .mob Hive'Regal Hive Lord
    .mob Hive'Regal Slavemaker
    .mob Hive'Regal Ambusher
    .mob Hive'Regal Burrower
    .isOnQuest 8986
step
    #completewith next
    .subzone 2249 >>Voyagez à la Gorge du Blanc murmure au |cFFfa9602Berceau-de-l'Hiver|r
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
    >>Tuez les |cRXP_ENEMY_Géants Cognegivres|r et les |cRXP_ENEMY_Protecteurs Cognegivres|r (élite). Dépouillez-les pour la |cRXP_LOOT_Relique de Brise-stellaire|r
    >>|cRXP_WARN_Ils ont un très faible taux de drop et cela peut prendre un certain temps. Il est recommandé de les farmer en groupe de 5|r
    .complete 8985,1 --Starbreeze Village Relic (x1)
    .mob Frostmaul Giant
    .mob Frostmaul Preserver
    .isOnQuest 8985
step
    #completewith next
    .subzone 2266 >>Voyagez à la Main de Tyr aux |cFFfa9602Maleterres de l'Est|r
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
    >>Tuez les |cRXP_ENEMY_Prétoriens écarlates|r (élite). Dépouillez-les pour l' |cRXP_ENEMY_Épée brillante du fanatisme|r
    >>|cRXP_WARN_Ils ont un très faible taux de drop et cela peut prendre un certain temps. Il est recommandé de les farmer en groupe de 5|r
    .complete 8987,1 --Brilliant Sword of Zealotry (x1)
    .mob Scarlet Praetorian
    .isOnQuest 8987
step
    #completewith next
    .goto Hillsbrad Foothills,19.67,76.92
    .subzone 896 >>Voyage vers Île de la Purification dans les |cFFfa9602Contreforts de Hautebrande|r
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
    >>Tuez les |cRXP_ENEMY_Fantômes morts-vivants|r (élite) sur l'île. Dépouillez-les pour les |cRXP_LOOT_Cendres d'âme de banni|r
    >>|cRXP_WARN_Ils ont un très faible taux de drop et cela peut prendre un certain temps. Il est recommandé de les farmer en groupe de 5|r
    .complete 8988,1 --Soul Ashes of the Banished (x1)
    .mob Cursed Paladin
    .mob Writhing Mage
    .mob Condemned Acolyte
    .mob Condemned Monk
    .mob Cursed Justicar
    .isOnQuest 8988
step
    #completewith RightPiecePU
    .subzone 254 >>Voyagez vers le |cFFfa9602Mont Rochenoire|r
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .turnin 8985 >>Rendez la quête D'autres composants importants
    .target Bodley
    .isQuestComplete 8985
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .turnin 8986 >>Rendez la quête D'autres composants importants
    .target Bodley
    .isQuestComplete 8986
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .turnin 8987 >>Rendez la quête D'autres composants importants
    .target Bodley
    .isQuestComplete 8987
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .turnin 8988 >>Rendez la quête D'autres composants importants
    .target Bodley
    .isQuestComplete 8988
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .acceptmultiple 8989,8990,8991,8992 >>Acceptez la quête Le morceau droit de l'amulette du seigneur Valthalak
    .target Bodley
    .isQuestTurnedIn 8985
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .acceptmultiple 8989,8990,8991,8992 >>Acceptez la quête Le morceau droit de l'amulette du seigneur Valthalak
    .target Bodley
    .isQuestTurnedIn 8986
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .acceptmultiple 8989,8990,8991,8992 >>Acceptez la quête Le morceau droit de l'amulette du seigneur Valthalak
    .target Bodley
    .isQuestTurnedIn 8987
step
    #label RightPiecePU
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .acceptmultiple 8989,8990,8991,8992 >>Acceptez la quête Le morceau droit de l'amulette du seigneur Valthalak
    .target Bodley
    .isQuestTurnedIn 8988
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Entrez dans le Pic Rochenoire
    >>|cRXP_WARN_Assurez-vous d'avoir un groupe prêt|r
    .isOnQuest 8989
step
    >>Tuez |cRXP_ENEMY_Mor Sabot-gris|r. Dépouillez-le pour le |T133318:0|t[|cRXP_LOOT_Morceau droit de l'amulette du seigneur Valthalak|r]
    .use 22049 >>|cRXP_WARN_Utilisez le|r |T133881:0|t[Brasero de signal] |cRXP_WARN_dans la salle du|r |cRXP_ENEMY_Maître de guerre Voone|r |cRXP_WARN_ pour invoquer|r |cRXP_ENEMY_Mor Sabot-gris|r
    .complete 8989,1 --Mor Grayhoof Slain (x1)
    .collect 22046,1,8989,1 --Right Piece of Lord Valthalak's Amulet (x1)
    .mob War Master Voone
    .mob Mor Grayhoof
    .isOnQuest 8989
step
    #optional
    .use 22046 >>|cRXP_WARN_Utilisez le|r |T133320:0|t[|cRXP_LOOT_Morceau gauche de l'amulette du seigneur Valthalak|r]|cRXP_WARN_, le |r|T133318:0|t[|cRXP_LOOT_Morceau droit de l'amulette du seigneur Valthalak|r] |cRXP_WARN_et le|r |T133316:0|t[|cRXP_LOOT_Morceau supérieur de l'amulette du seigneur Valthalak|r] |cRXP_WARN_pour créer l'|r |T133314:0|t[|cRXP_LOOT_Amulette du seigneur Valthalak|r]
    .complete 8989,2 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,1
    .isOnQuest 8989
step
    .use 22046 >>|cRXP_WARN_Utilisez le|r |T133320:0|t[|cRXP_LOOT_Morceau gauche de l'amulette du seigneur Valthalak|r]|cRXP_WARN_, le |r|T133318:0|t[|cRXP_LOOT_Morceau droit de l'amulette du seigneur Valthalak|r] |cRXP_WARN_et le|r |T133316:0|t[|cRXP_LOOT_Morceau supérieur de l'amulette du seigneur Valthalak|r] |cRXP_WARN_pour créer l'|r |T133314:0|t[|cRXP_LOOT_Amulette du seigneur Valthalak|r]
    >>|cRXP_WARN_Si vous avez perdu le|r |T133316:0|t[|cRXP_LOOT_Morceau supérieur de l'amulette du seigneur Valthalak|r]|cRXP_WARN_, parlez à|r |cRXP_FRIENDLY_Bodley|r |cRXP_WARN_pour l'obtenir à nouveau|r.
    .complete 8989,2 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,<1
    .isOnQuest 8989
step
    #completewith next
    .zone Feralas >>Voyagez à |cFFfa9602Féralas|r
    .subzoneskip 2557
    .isOnQuest 8990
step
    #completewith next
    .goto Kalimdor,43.84,67.41,20 >>Entrez dans Hache-Tripes par l'entrée est
    >>|cRXP_WARN_Assurez-vous d'avoir un groupe prêt|r
    .isOnQuest 8990
step
    >>Tuez |cRXP_ENEMY_Isalien|r. Dépouillez-la pour le |T133318:0|t[|cRXP_LOOT_Morceau droit de l'amulette du seigneur Valthalak|r]
    .use 22050 >>|cRXP_WARN_Utilisez le|r |T133881:0|t[Brasero de signal] |cRXP_WARN_dans la salle de|r |cRXP_ENEMY_Alzzin le Modeleur|r |cRXP_WARN_pour invoquer|r |cRXP_ENEMY_Isalien|r
    .complete 8990,1 --Isalien slain (x1)
    .collect 22046,1,8990,1 --Right Piece of Lord Valthalak's Amulet (x1)
    .mob Alzzin the Wildshaper
    .mob Isalien
    .isOnQuest 8990
step
    #optional
    .use 22046 >>|cRXP_WARN_Utilisez le|r |T133320:0|t[|cRXP_LOOT_Morceau gauche de l'amulette du seigneur Valthalak|r]|cRXP_WARN_, le |r|T133318:0|t[|cRXP_LOOT_Morceau droit de l'amulette du seigneur Valthalak|r] |cRXP_WARN_et le|r |T133316:0|t[|cRXP_LOOT_Morceau supérieur de l'amulette du seigneur Valthalak|r] |cRXP_WARN_pour créer l'|r |T133314:0|t[|cRXP_LOOT_Amulette du seigneur Valthalak|r]
    .complete 8990,2 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,1
    .isOnQuest 8990
step
    .use 22046 >>|cRXP_WARN_Utilisez le|r |T133320:0|t[|cRXP_LOOT_Morceau gauche de l'amulette du seigneur Valthalak|r]|cRXP_WARN_, le |r|T133318:0|t[|cRXP_LOOT_Morceau droit de l'amulette du seigneur Valthalak|r] |cRXP_WARN_et le|r |T133316:0|t[|cRXP_LOOT_Morceau supérieur de l'amulette du seigneur Valthalak|r] |cRXP_WARN_pour créer l'|r |T133314:0|t[|cRXP_LOOT_Amulette du seigneur Valthalak|r]
    >>|cRXP_WARN_Si vous avez perdu le|r |T133316:0|t[|cRXP_LOOT_Morceau supérieur de l'amulette du seigneur Valthalak|r]|cRXP_WARN_, parlez à|r |cRXP_FRIENDLY_Bodley|r |cRXP_WARN_pour l'obtenir à nouveau|r.
    .complete 8990,2 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,<1
    .isOnQuest 8990
step
    #completewith next
    .zone Eastern Plaguelands >>Voyagez aux |cFFfa9602Maleterres de l'Est|r
    .subzoneskip 2017
    .isOnQuest 8991
step
    #completewith next
    .goto Eastern Kingdoms,55.06,17.51
    .subzone 2017 >>Entrez dans Stratholme
    >>|cRXP_WARN_Assurez-vous d'avoir un groupe prêt|r
    .isOnQuest 8991
step
    >>Tuez |cRXP_ENEMY_Jarien|r et |cRXP_ENEMY_Sothos|r. Dépouillez-les pour le |T133318:0|t[|cRXP_LOOT_Morceau droit de l'amulette du seigneur Valthalak|r]
    .use 22051 >>|cRXP_WARN_Utilisez le|r |T133881:0|t[Brasero de signal] |cRXP_WARN_dans la salle de|r |cRXP_ENEMY_Balnazzar|r |cRXP_WARN_pour invoquer|r |cRXP_ENEMY_Jarien|r |cRXP_WARN_et|r |cRXP_ENEMY_Sothos|r
    .complete 8991,1 --Jarien slain (x1)
    .complete 8991,2 --Sothos slain (x1)
    .collect 22046,1,8991,1 --Right Piece of Lord Valthalak's Amulet (x1)
    .mob Balnazzara
    .mob Jarien
    .mob Sothos
    .isOnQuest 8991
step
    #optional
    .use 22046 >>|cRXP_WARN_Utilisez le|r |T133320:0|t[|cRXP_LOOT_Morceau gauche de l'amulette du seigneur Valthalak|r]|cRXP_WARN_, le |r|T133318:0|t[|cRXP_LOOT_Morceau droit de l'amulette du seigneur Valthalak|r] |cRXP_WARN_et le|r |T133316:0|t[|cRXP_LOOT_Morceau supérieur de l'amulette du seigneur Valthalak|r] |cRXP_WARN_pour créer l'|r |T133314:0|t[|cRXP_LOOT_Amulette du seigneur Valthalak|r]
    .complete 8991,3 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,1
    .isOnQuest 8991
step
    .use 22046 >>|cRXP_WARN_Utilisez le|r |T133320:0|t[|cRXP_LOOT_Morceau gauche de l'amulette du seigneur Valthalak|r]|cRXP_WARN_, le |r|T133318:0|t[|cRXP_LOOT_Morceau droit de l'amulette du seigneur Valthalak|r] |cRXP_WARN_et le|r |T133316:0|t[|cRXP_LOOT_Morceau supérieur de l'amulette du seigneur Valthalak|r] |cRXP_WARN_pour créer l'|r |T133314:0|t[|cRXP_LOOT_Amulette du seigneur Valthalak|r]
    >>|cRXP_WARN_Si vous avez perdu le|r |T133316:0|t[|cRXP_LOOT_Morceau supérieur de l'amulette du seigneur Valthalak|r]|cRXP_WARN_, parlez à|r |cRXP_FRIENDLY_Bodley|r |cRXP_WARN_pour l'obtenir à nouveau|r.
    .complete 8991,3 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,<1
    .isOnQuest 8991
step
    #completewith next
    .zone Western Plaguelands >>Voyagez aux |cFFfa9602Maleterres de l'Ouest|r
    .subzoneskip 2057
    .isOnQuest 8992
step
    #completewith next
    .goto Eastern Kingdoms,52.75,26.41
    .subzone 2057 >>Entrez dans Scholomance
    >>|cRXP_WARN_Assurez-vous d'avoir un groupe prêt|r
    .isOnQuest 8992
step
    >>Tuez |cRXP_ENEMY_Kormok|r. Dépouillez-le pour le |T133318:0|t[|cRXP_LOOT_Morceau droit de l'amulette du seigneur Valthalak|r]
    .use 22052 >>|cRXP_WARN_Utilisez le|r |T133881:0|t[Brasero de signal] |cRXP_WARN_dans la salle de|r |cRXP_ENEMY_Ras Murmegivre|r |cRXP_WARN_pour invoquer|r |cRXP_ENEMY_Kormok|r
    .complete 8992,1 --Kormok slain (x1)
    .collect 22046,1,8992,1 --Right Piece of Lord Valthalak's Amulet (x1)
    .mob Ras Frostwhisper
    .mob Kormok
    .isOnQuest 8992
step
    #optional
    .use 22046 >>|cRXP_WARN_Utilisez le|r |T133320:0|t[|cRXP_LOOT_Morceau gauche de l'amulette du seigneur Valthalak|r]|cRXP_WARN_, le |r|T133318:0|t[|cRXP_LOOT_Morceau droit de l'amulette du seigneur Valthalak|r] |cRXP_WARN_et le|r |T133316:0|t[|cRXP_LOOT_Morceau supérieur de l'amulette du seigneur Valthalak|r] |cRXP_WARN_pour créer l'|r |T133314:0|t[|cRXP_LOOT_Amulette du seigneur Valthalak|r]
    .complete 8992,2 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,1
    .isOnQuest 8992
step
    .use 22046 >>|cRXP_WARN_Utilisez le|r |T133320:0|t[|cRXP_LOOT_Morceau gauche de l'amulette du seigneur Valthalak|r]|cRXP_WARN_, le |r|T133318:0|t[|cRXP_LOOT_Morceau droit de l'amulette du seigneur Valthalak|r] |cRXP_WARN_et le|r |T133316:0|t[|cRXP_LOOT_Morceau supérieur de l'amulette du seigneur Valthalak|r] |cRXP_WARN_pour créer l'|r |T133314:0|t[|cRXP_LOOT_Amulette du seigneur Valthalak|r]
    >>|cRXP_WARN_Si vous avez perdu le|r |T133316:0|t[|cRXP_LOOT_Morceau supérieur de l'amulette du seigneur Valthalak|r]|cRXP_WARN_, parlez à|r |cRXP_FRIENDLY_Bodley|r |cRXP_WARN_pour l'obtenir à nouveau|r.
    .complete 8992,2 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,<1
    .isOnQuest 8992
step
    #completewith FinalPrepPU
    .subzone 254 >>Voyagez vers le |cFFfa9602Mont Rochenoire|r
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .turnin 8989 >>Rendez la quête Le morceau droit de l'amulette du seigneur Valthalak
    .accept 8994 >>Acceptez la quête Derniers préparatifs
    .target Bodley
    .isQuestComplete 8989
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .turnin 8990 >>Rendez la quête Le morceau droit de l'amulette du seigneur Valthalak
    .accept 8994 >>Acceptez la quête Derniers préparatifs
    .target Bodley
    .isQuestComplete 8990
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .turnin 8991 >>Rendez la quête Le morceau droit de l'amulette du seigneur Valthalak
    .accept 8994 >>Acceptez la quête Derniers préparatifs
    .target Bodley
    .isQuestComplete 8991
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .turnin 8992 >>Rendez la quête Le morceau droit de l'amulette du seigneur Valthalak
    .accept 8994 >>Acceptez la quête Derniers préparatifs
    .target Bodley
    .isQuestComplete 8992
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .accept 8994 >>Acceptez la quête Derniers préparatifs
    .target Bodley
    .isQuestTurnedIn 8989
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .accept 8994 >>Acceptez la quête Derniers préparatifs
    .target Bodley
    .isQuestTurnedIn 8990
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .accept 8994 >>Acceptez la quête Derniers préparatifs
    .target Bodley
    .isQuestTurnedIn 8991
step
    #label FinalPrepPU
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .accept 8994 >>Acceptez la quête Derniers préparatifs
    .target Bodley
    .isQuestTurnedIn 8992
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Entrez dans le Pic Rochenoire
    >>|cRXP_WARN_Assurez-vous d'avoir un groupe prêt|r
step
    >>Tuez les |cRXP_ENEMY_Orcs|r au Pic Rochenoire. Dépouilllez-les pour leurs |cRXP_LOOT_Brassards rochenoire|r
    .complete 8994,1 --Blackrock Bracer (x40)
    --too many .mobs, would cause clutter
step
    >>|cRXP_BUY_Récupérez un|r |T134821:0|t[Flacon de pouvoir suprême]
    >>|cRXP_WARN_Achetez-le à l'Hôtel des Ventes si possible|r
    .collect 13512,1,8994,1 --Flask of Supreme Power (x1)
step
    #completewith next
    .subzone 254 >>Voyagez vers le |cFFfa9602Mont Rochenoire|r
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .turnin 8994 >>Rendez la quête Derniers préparatifs
    .accept 8995 >>Acceptez la quête Mea culpa, seigneur Valthalak
    .target Bodley
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Entrez dans le Sommet du pic Rochenoire
    >>|cRXP_WARN_Il s'agit un donjon de 10 joueurs. Vous ou quelqu'un dans votre groupe devez avoir le|r |T133343:0|t[|cRXP_LOOT_Sceau d'ascension|r] |cRXP_WARN_pour pouvoir entrer dans le Sommet du pic Rochenoire|r
step
    .use 22048 >>Tuez le |cRXP_ENEMY_Seigneur Valthalak|r. |cRXP_WARN_Puis utilisez l' |r |T133314:0|t[Amulette du seigneur Valthalak] |cRXP_WARN_sur son cadavre|r
    .use 22056 >>|cRXP_WARN_Utilisez le|r |T133881:0|t[Brasero de signal] |cRXP_WARN_dans la salle de |r |cRXP_ENEMY_La Bête|r |cRXP_WARN_pour invoquer le|r |cRXP_ENEMY_Seigneur Valthalak|r
    .complete 8995,1 --Lord Valthalak slain (x1)
    .complete 8995,2 --Lord Valthalak's Amulet (x1)
    .mob The Beast
    .mob Lord Valthalak
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Esprit du seigneur Valthalak|r qui apparaît
    .turnin 8995 >>Rendez la quête Mea culpa, seigneur Valthalak
    .accept 8996 >>Acceptez la quête Retourner voir Bodley
    .target Spirit of Lord Valthalak
step
    #completewith next
    .subzone 254 >>Voyagez vers le |cFFfa9602Mont Rochenoire|r
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Utilisez le|r |T133878:0|t[Révélateur de fantômes extradimensionnel] |cRXP_WARN_pour révéler|r |cRXP_FRIENDLY_Bodley|r.
    .turnin 8996 >>Rendez la quête Retourner voir Bodley
    .accept 8997 >>Acceptez la quête Retour au commencement << Alliance
    .accept 8998 >>Acceptez la quête Retour au commencement << Horde
    .target Bodley
step << Alliance
    #completewith next
    .zone Ironforge >>Voyagez à |cFFfa9602Forgefer|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deliana|r
    .turnin 8997 >>Rendez la quête Retour au commencement
    .accept 8999 >>Acceptez la quête Garder le meilleur pour la fin << Druid
    .accept 9000 >>Acceptez la quête Garder le meilleur pour la fin << Hunter
    .accept 9001 >>Acceptez la quête Garder le meilleur pour la fin << Mage
    .accept 9002 >>Acceptez la quête Garder le meilleur pour la fin << Paladin
    .accept 9003 >>Acceptez la quête Garder le meilleur pour la fin << Priest
    .accept 9004 >>Acceptez la quête Garder le meilleur pour la fin << Rogue
    .accept 9005 >>Acceptez la quête Garder le meilleur pour la fin << Warlock
    .accept 9006 >>Acceptez la quête Garder le meilleur pour la fin << Warrior
    .target Deliana
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deliana|r
    >>Vous aurez besoin de la |T133129:0|t[|cRXP_LOOT_Coiffe du Cœur-sauvage|r] et du |T132741:0|t[|cRXP_LOOT_Gilet du Cœur-sauvage|r] pour rendre cette quête << Druid
    >>Vous aurez besoin de la |T133126:0|t[|cRXP_LOOT_Coiffe de bestiaire|r] et de la |T132625:0|t[|cRXP_LOOT_Tunique de bestiaire|r] pour rendre cette quête <<  Hunter
    >>Vous aurez besoin de la |T132768:0|t[|cRXP_LOOT_Collerette de magistère|r] et de la |T132666:0|t[|cRXP_LOOT_Robe de magistère|r] pour rendre cette quête << Mage
    >>Vous aurez besoin du |T133076:0|t[|cRXP_LOOT_Heaume de Sancteforge|r] et de la |T132738:0|t[|cRXP_LOOT_Cuirasse de Sancteforge|r] pour rendre cette quête << Paladin
    >>Vous aurez besoin de la |T132767:0|t[|cRXP_LOOT_Collerette de dévot|r] et de la |T132652:0|t[|cRXP_LOOT_Robe de dévot|r] pour rendre cette quête << Priest
    >>Vous aurez besoin de la |T133143:0|t[|cRXP_LOOT_Cagoule Sombreruse|r] et de la |T132722:0|t[|cRXP_LOOT_Tunique Sombreruse|r] pour rendre cette quête << Rogue
    >>Vous aurez besoin du |T133131:0|t[|cRXP_LOOT_Masque de Brume-funeste|r] et de la |T132690:0|t[|cRXP_LOOT_Robe de Brume-funeste|r] pour rendre cette quête << Warlock
    >>Vous aurez besoin du |T133070:0|t[|cRXP_LOOT_Heaume de vaillance|r] et de la |T132738:0|t[|cRXP_LOOT_Cuirasse de vaillance|r] pour rendre cette quête << Warrior
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
    .turnin 8999 >>Rendez la quête Garder le meilleur pour la fin << Druid
    .turnin 9000 >>Rendez la quête Garder le meilleur pour la fin << Hunter
    .turnin 9001 >>Rendez la quête Garder le meilleur pour la fin << Mage
    .turnin 9002 >>Rendez la quête Garder le meilleur pour la fin << Paladin
    .turnin 9003 >>Rendez la quête Garder le meilleur pour la fin << Priest
    .turnin 9004 >>Rendez la quête Garder le meilleur pour la fin << Rogue
    .turnin 9005 >>Rendez la quête Garder le meilleur pour la fin << Warlock
    .turnin 9006 >>Rendez la quête Garder le meilleur pour la fin << Warrior
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>Voyagez à |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mokvar|r
    .turnin 8998 >>Rendez la quête Retour au commencement
    .accept 9007 >>Acceptez la quête Garder le meilleur pour la fin << Druid
    .accept 9008 >>Acceptez la quête Garder le meilleur pour la fin << Hunter
    .accept 9009 >>Acceptez la quête Garder le meilleur pour la fin << Priest
    .accept 9010 >>Acceptez la quête Garder le meilleur pour la fin << Rogue
    .accept 9011 >>Acceptez la quête Garder le meilleur pour la fin << Shaman
    .accept 9012 >>Acceptez la quête Garder le meilleur pour la fin << Warlock
    .accept 9013 >>Acceptez la quête Garder le meilleur pour la fin << Warrior
    .accept 9014 >>Acceptez la quête Garder le meilleur pour la fin << Mage
    .target Mokvar
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mokvar|r
    >>Vous aurez besoin de la |T133129:0|t[|cRXP_LOOT_Coiffe du Cœur-sauvage|r] et du |T132741:0|t[|cRXP_LOOT_Gilet du Cœur-sauvage|r] pour rendre cette quête << Druid
    >>Vous aurez besoin de la |T133126:0|t[|cRXP_LOOT_Coiffe de bestiaire|r] et de la |T132625:0|t[|cRXP_LOOT_Tunique de bestiaire|r] pour rendre cette quête <<  Hunter
    >>Vous aurez besoin de la |T132768:0|t[|cRXP_LOOT_Collerette de magistère|r] et de la |T132666:0|t[|cRXP_LOOT_Robe de magistère|r] pour rendre cette quête << Mage
    >>Vous aurez besoin de la |T132767:0|t[|cRXP_LOOT_Collerette de dévot|r] et de la |T132652:0|t[|cRXP_LOOT_Robe de dévot|r] pour rendre cette quête << Priest
    >>Vous aurez besoin de la |T133143:0|t[|cRXP_LOOT_Cagoule Sombreruse|r] et de la |T132722:0|t[|cRXP_LOOT_Tunique Sombreruse|r] pour rendre cette quête << Rogue
    >>Vous aurez besoin de la |T133072:0|t[|cRXP_LOOT_Coiffe des éléments|r] et du |T132633:0|t[|cRXP_LOOT_Haubergeon des éléments|r] pour rendre cette quête << Shaman
    >>Vous aurez besoin du |T133131:0|t[|cRXP_LOOT_Masque de Brume-funeste|r] et de la |T132690:0|t[|cRXP_LOOT_Robe de Brume-funeste|r] pour rendre cette quête << Warlock
    >>Vous aurez besoin du |T133070:0|t[|cRXP_LOOT_Heaume de vaillance|r] et de la |T132738:0|t[|cRXP_LOOT_Cuirasse de vaillance|r] pour rendre cette quête << Warrior
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
    .turnin 9007 >>Rendez la quête Garder le meilleur pour la fin << Druid
    .turnin 9008 >>Rendez la quête Garder le meilleur pour la fin << Hunter
    .turnin 9009 >>Rendez la quête Garder le meilleur pour la fin << Priest
    .turnin 9010 >>Rendez la quête Garder le meilleur pour la fin << Rogue
    .turnin 9011 >>Rendez la quête Garder le meilleur pour la fin << Shaman
    .turnin 9012 >>Rendez la quête Garder le meilleur pour la fin << Warlock
    .turnin 9013 >>Rendez la quête Garder le meilleur pour la fin << Warrior
    .turnin 9014 >>Rendez la quête Garder le meilleur pour la fin << Mage
    .target Mokvar

]])
