if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#classic
#tbc
#group RestedXP Endgame Guides
#subgroup Ungezähmtes Herz Set Dungeonführer << Druid
#subgroup Tierherrschaft Set Dungeonführer << Hunter
#subgroup Magier Set Dungeonführer << Mage
#subgroup Seelenschmiede Set Dungeonführer << Paladin
#subgroup Rüstung der Finsternis Set Dungeonführer << Rogue
#subgroup Der Fünf-Donner-Set Wegweiser << Shaman
#subgroup Todesnebel Set Dungeonführer << Warlock
#subgroup Heldentum Set Dungeonführer << Warrior
#subgroup Tugendhaft Set Dungeonführer << Priest
#name Teil 1: Armschienen
#next Teil 2: Gürtel & Handschuhe


step
    >>Sammelt die |T132608:0|t[|cRXP_LOOT_Armschienen des Wildherzens|r]. Dies ist ein gebunden beim Anlegen drop in |cFFfa9602Stratholme|r << Druid
    >>Sammelt die |T132616:0|t[|cRXP_LOOT_Bestienjägerbindungen|r]. Dies ist ein Gegenstand, der beim Anlegen gebunden wird, der in |cFFfa9602Stratholme|r und |cFFfa9602Schwarzfelsspitze|r dropt << Hunter
    >>Sammelt die |T133365:0|t[|cRXP_LOOT_Bindungen des Magisters|r]. Dies ist ein Gegenstand, der beim Anlegen gebunden wird, der in |cFFfa9602Schwarzfelsspitze|r droppt << Mage
    >>Sammelt die |T132613:0|t[|cRXP_LOOT_Armschienen des Lichts|r]. Dies ist ein gebunden beim Anlegen drop in |cFFfa9602Stratholme|r << Paladin
    >>Sammelt die |T132520:0|t[|cRXP_LOOT_Armschienen des Gläubigen|r]. Dies ist ein gebunden beim Anlegen drop in |cFFfa9602Stratholme|r << Priest
    >>Sammelt die |T132606:0|t[|cRXP_LOOT_Armschienen der Schattenkunst|r]. Dies ist ein beim Anlegen gebunden Loot in |cFFfa9602Scholomance|r << Rogue
    >>Sammelt die |T132601:0|t[|cRXP_LOOT_Bindungen der Elemente|r]. Dies ist gebunden beim Anlegen loot |cFFfa9602Stratholme|r << Shaman
    >>Sammelt die |T132612:0|t[|cRXP_LOOT_Armschienen der Furcht|r]. Dies ist ein gebunden beim anlegen Loot in der |cFFfa9602Schwarzfelsspitze|r << Warlock
    >>Sammelt die |T132617:0|t[|cRXP_LOOT_Armschienen der Ehre|r]. Dies ist ein beim Anlegen gebunden Loot in der |cFFfa9602Schwarzfelsspitze|r << Warrior
    >>|cRXP_WARN_Alternativ kauft sie aus dem Auktionshaus << !sod
    >>|cRXP_WARN_Alternativ kauft sie aus dem Auktionshaus oder von |cRXP_FRIENDLY_Pix Xizzix|r in Beutebucht gegen|r |T133799:0|t[|cRXP_FRIENDLY_Angelaufener Real aus Undermine|r] << sod
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
    .zone Ironforge >>Reist nach |cFFfa9602Eisenschmiede|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Deliana|r
    .accept 8905 >>Akzeptiert die Quest Ein aufrichtiges Angebot << Druid
    .accept 8906 >>Akzeptiert die Quest Ein aufrichtiges Angebot << Hunter
    .accept 8907 >>Akzeptiert die Quest Ein aufrichtiges Angebot << Mage
    .accept 8908 >>Akzeptiert die Quest Ein aufrichtiges Angebot << Paladin
    .accept 8909 >>Akzeptiert die Quest Ein aufrichtiges Angebot << Priest
    .accept 8910 >>Akzeptiert die Quest Ein aufrichtiges Angebot << Rogue
    .accept 8911 >>Akzeptiert die Quest Ein aufrichtiges Angebot << Warlock
    .accept 8912 >>Akzeptiert die Quest Ein aufrichtiges Angebot << Warrior
    .target Deliana
step << Alliance
    #completewith next
    .zone Winterspring >>Reist nach |cFFfa9602Winterquell|r
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
    >>Tötet alle Arten von |cRXP_ENEMY_Splitterzahnbär|r und |cRXP_ENEMY_Frostsäbler|r. Plündert sie für ihre |cRXP_LOOT_Blutprobe aus Winterspring|r
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
    .zone Ironforge >>Reist nach |cFFfa9602Eisenschmiede|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Deliana|r
    >>|cRXP_WARN_Ihr benötigt 20 Gold und|r |T132608:0|t[|cRXP_LOOT_Armschienen des Wildherzens|r] |cRXP_WARN_um diese Quest abzugeben|r << Druid
    >>|cRXP_WARN_Ihr benötigt 20 Gold und|r |T132616:0|t[|cRXP_LOOT_Bestienjägerbindungen|r] |cRXP_WARN_um diese Quest abzugeben|r << Hunter
    >>|cRXP_WARN_Ihr werdet 20 Gold benötigen und|r |T133365:0|t[|cRXP_LOOT_Bindungen des Magisters|r] |cRXP_WARN_um diese Quest abzugeben|r << Mage
    >>|cRXP_WARN_Ihr benötigt 20 Gold und|r |T132613:0|t[|cRXP_LOOT_Armschienen des Lichts|r] |cRXP_WARN_um diese Quest abzugeben|r << Paladin
    >>|cRXP_WARN_Ihr benötigt 20 Gold und|r |T132520:0|t[|cRXP_LOOT_Armschienen des Gläubigen|r] |cRXP_WARN_um diese Quest abzugeben|r << Priest
    >>|cRXP_WARN_Ihr benötigt 20 Gold und|r |T132606:0|t[|cRXP_LOOT_Armschienen der Schattenkunst|r] |cRXP_WARN_um diese Quest abzugeben|r << Rogue
    >>|cRXP_WARN_Ihr benötigt 20 Gold und|r |T132612:0|t[|cRXP_LOOT_Armschienen der Furcht|r] |cRXP_WARN_um diese Quest abzugeben|r << Warlock
    >>|cRXP_WARN_Ihr benötigt 20 Gold und|r |T132617:0|t[|cRXP_LOOT_Armschienen der Ehre|r] |cRXP_WARN_um diese Quest abzugeben|r << Warrior
    .collect 16714,1,8905,1 << Druid --Wildheart Bracers (x1)
    .collect 16681,1,8906,1 << Hunter --Beaststalker's Bindings (x1)
    .collect 16683,1,8907,1 << Mage --Magister's Bindings (x1)
    .collect 16722,1,8908,1 << Paladin --Lightforge Bracers (x1)
    .collect 16697,1,8909,1 << Priest --Devout Bracers (x1)
    .collect 16710,1,8910,1 << Rogue --Shadowcraft Bracers (x1)
    .collect 16703,1,8911,1 << Warlock --Dreadmist Bracers (x1)
    .collect 16735,1,8912,1 << Warrior --Bracers of Valor (x1)
    .turnin 8905 >>Gebt die Quest Ein aufrichtiges Angebot ab << Druid
    .turnin 8906 >>Gebt die Quest Ein aufrichtiges Angebot ab << Hunter
    .turnin 8907 >>Gebt die Quest Ein aufrichtiges Angebot ab << Mage
    .turnin 8908 >>Gebt die Quest Ein aufrichtiges Angebot ab << Paladin
    .turnin 8909 >>Gebt die Quest Ein aufrichtiges Angebot ab << Priest
    .turnin 8910 >>Gebt die Quest Ein aufrichtiges Angebot ab << Rogue
    .turnin 8911 >>Gebt die Quest Ein aufrichtiges Angebot ab << Warlock
    .turnin 8912 >>Gebt die Quest Ein aufrichtiges Angebot ab << Warrior
    .accept 8922 >>Akzeptiert die Quest Ein übernatürlicher Apparat
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>Reist nach |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mokvar|r
    .accept 8913 >>Akzeptiert die Quest Ein aufrichtiges Angebot << Druid
    .accept 8914 >>Akzeptiert die Quest Ein aufrichtiges Angebot << Hunter
    .accept 8915 >>Akzeptiert die Quest Ein aufrichtiges Angebot << Mage
    .accept 8916 >>Akzeptiert die Quest Ein aufrichtiges Angebot << Priest
    .accept 8917 >>Akzeptiert die Quest Ein aufrichtiges Angebot << Rogue
    .accept 8918 >>Akzeptiert die Quest Ein aufrichtiges Angebot << Shaman
    .accept 8919 >>Akzeptiert die Quest Ein aufrichtiges Angebot << Warlock
    .accept 8920 >>Akzeptiert die Quest Ein aufrichtiges Angebot << Warrior
    .target Mokvar
step << Horde
    #completewith next
    .zone Silithus >>Reist nach |cFFfa9602Silithus|r
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
    >>Tötet alle Arten von |cRXP_ENEMY_Spinnen|r und |cRXP_ENEMY_Scorpione|r. Plündert sie für ihre |cRXP_LOOT_Giftprobe aus Silithus|r
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
    .zone Orgrimmar >>Reist nach |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mokvar|r
    >>|cRXP_WARN_Ihr benötigt 20 Gold und|r |T132608:0|t[|cRXP_LOOT_Armschienen des Wildherzens|r] |cRXP_WARN_um diese Quest abzugeben|r << Druid
    >>|cRXP_WARN_Ihr werdet 20 Gold benötigen und|r |T132616:0|t[|cRXP_LOOT_Bestienjägerbindungen|r] |cRXP_WARN_um diese Quest abzugeben|r << Hunter
    >>|cRXP_WARN_Ihr werdet 20 Gold benötigen und|r |T133365:0|t[|cRXP_LOOT_Bindungen des Magisters|r] |cRXP_WARN_um diese Quest abzugeben|r << Mage
    >>|cRXP_WARN_Ihr benötigt 20 Gold und|r |T132520:0|t[|cRXP_LOOT_Armschienen des Gläubigen|r] |cRXP_WARN_um diese Quest abzugeben|r << Priest
    >>|cRXP_WARN_Ihr benötigt 20 Gold und|r |T132606:0|t[|cRXP_LOOT_Armschienen der Schattenkunst|r] |cRXP_WARN_um diese Quest abzugeben|r << Rogue
    >>|cRXP_WARN_Ihr benötigt 20 Gold und|r |T132601:0|t[|cRXP_LOOT_Bindungen der Elemente|r] |cRXP_WARN_um diese Quest abzugeben|r << Shaman
    >>|cRXP_WARN_Ihr benötigt 20 Gold und|r |T132612:0|t[|cRXP_LOOT_Armschienen der Furcht|r] |cRXP_WARN_um diese Quest abzugeben|r << Warlock
    >>|cRXP_WARN_Ihr benötigt 20 Gold und|r |T132617:0|t[|cRXP_LOOT_Armschienen der Ehre|r] |cRXP_WARN_um diese Quest abzugeben|r << Warrior
    .collect 16714,1,8913,1 << Druid --Wildheart Bracers (x1)
    .collect 16681,1,8914,1 << Hunter --Beaststalker's Bindings (x1)
    .collect 16683,1,8915,1 << Mage --Magister's Bindings (x1)
    .collect 16697,1,8916,1 << Priest --Devout Bracers (x1)
    .collect 16710,1,8917,1 << Rogue --Shadowcraft Bracers (x1)
    .collect 16671,1,8918,1 << Shaman --Bindings of Elements (x1)
    .collect 16703,1,8919,1 << Warlock --Dreadmist Bracers (x1)
    .collect 16735,1,8920,1 << Warrior --Bracers of Valor (x1)
    .turnin 8913 >>Gebt die Quest Ein aufrichtiges Angebot ab << Druid
    .turnin 8914 >>Gebt die Quest Ein aufrichtiges Angebot ab << Hunter
    .turnin 8915 >>Gebt die Quest Ein aufrichtiges Angebot ab << Mage
    .turnin 8916 >>Gebt die Quest Ein aufrichtiges Angebot ab << Priest
    .turnin 8917 >>Gebt die Quest Ein aufrichtiges Angebot ab << Rogue
    .turnin 8918 >>Gebt die Quest Ein aufrichtiges Angebot ab << Shaman
    .turnin 8919 >>Gebt die Quest Ein aufrichtiges Angebot ab << Warlock
    .turnin 8920 >>Gebt die Quest Ein aufrichtiges Angebot ab << Warrior
    .accept 8923 >>Akzeptiert die Quest Ein übernatürlicher Apparat
    .target Mokvar

    ]])


RXPGuides.RegisterGuide([[
#classic
#tbc
#group RestedXP Endgame Guides
#subgroup Ungezähmtes Herz Set Dungeonführer << Druid
#subgroup Tierherrschaft Set Dungeonführer << Hunter
#subgroup Magier Set Dungeonführer << Mage
#subgroup Seelenschmiede Set Dungeonführer << Paladin
#subgroup Rüstung der Finsternis Set Dungeonführer << Rogue
#subgroup Der Fünf-Donner-Set Wegweiser << Shaman
#subgroup Todesnebel Set Dungeonführer << Warlock
#subgroup Heldentum Set Dungeonführer << Warrior
#subgroup Tugendhaft Set Dungeonführer << Priest
#name Teil 2: Gürtel & Handschuhe
#next Part 3: Beine, Schulter & Stiefel


step
    #optional
    +|cRXP_WARN_Ihr müsst Teil 1: Armschienen vollenden, bevor ihr diesen Teil des Guides startet|r
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
    >>Erhaltet den |T132504:0|t[|cRXP_LOOT_Gürtel des Wildherzens|r]. Das ist ein beim Anlegen gebunden Loot aus |cFFfa9602Scholomance|r und |cFFfa9602Schwarzfelsspitze|r << Druid
    >>Erhaltet den |T132517:0|t[|cRXP_LOOT_Gürtel des Bestienjägers|r]. Das ist ein beim Anlegen gebunden Loot aus |cFFfa9602Schwarzfelsspitze|r << Hunter
    >>Erhaltet den |T132497:0|t[|cRXP_LOOT_Gürtel des Magisters|r]. Das ist ein beim Anlegen gebunden Loot aus |cFFfa9602Stratholme|r und |cFFfa9602Schwarzfelsspitze|r << Mage
    >>Erhaltet den |T132500:0|t[|cRXP_LOOT_Gürtel der Lichts|r]. Das ist ein beim Anlegen gebunden Loot aus |cFFfa9602Stratholme|r << Paladin
    >>Sammelt |T132499:0|t[|cRXP_LOOT_Gürtel des Gläubigen|r]. Dies ist ein gebunden beim Anlegen loot in |cFFfa9602Schwarzfelsspitze|r << Priest
    >>Sammelt |T132492:0|t[|cRXP_LOOT_Gürtel der Schattenkunst|r]. Dies ist eine gebunden beim Anlegen drop in |cFFfa9602Schwarzfelsspitze|r << Rogue
    >>Sammelt |T132505:0|t[|cRXP_LOOT_Kordel der Elemente|r]. Dies ist eine Gebunden-beim-Anlegen-Beute in |cFFfa9602Schwarzfelsspitze|r << Shaman
    >>Sammelt |T132501:0|t[|cRXP_LOOT_Gürtel der Furcht|r]. Dies ist eine Gebunden-beim-Anlegen-Beute in |cFFfa9602Stratholme|r << Warlock
    >>Sammelt |T132523:0|t[|cRXP_LOOT_Gürtel der Ehre|r]. Dies ist eine Gebunden-beim-Anlegen-Beute in |cFFfa9602Schwarzfelsspitze|r und |cFFfa9602Stratholme|r << Warrior
    >>|cRXP_WARN_Alternativ kauft sie aus dem Auktionshaus << !sod
    >>|cRXP_WARN_Alternativ kauft sie aus dem Auktionshaus oder von |cRXP_FRIENDLY_Pix Xizzix|r in Beutebucht im Tausch gegen|r |T133799:0|t[|cRXP_FRIENDLY_Angelaufener Real aus Undermine|r] << sod
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
    >>Sammelt |T132951:0|t[|cRXP_LOOT_Handschuhe des Wildherzens|r]. Dies ist eine Gebunden-beim-Anlegen-Beute in |cFFfa9602Stratholme|r << Druid
    >>Sammelt |T132944:0|t[|cRXP_LOOT_Handschuhe des Bestienjägers|r]. Dies ist eine Gebunden-beim-Anlegen-Beute in |cFFfa9602Schwarzfelsspitze|r << Hunter
    >>Sammelt |T132951:0|t[|cRXP_LOOT_Handschuhe des Magisters|r]. Dies ist eine Gebunden-beim-Anlegen-Beute in |cFFfa9602Scholomance|r << Mage
    >>Sammelt |T132953:0|t[|cRXP_LOOT_Stulpen des Lichts|r]. Dies ist eine Gebunden-beim-Anlegen-Beute in |cFFfa9602Stratholme|r << Paladin
    >>Sammelt |T132948:0|t[|cRXP_LOOT_Handschuhe des Gläubigen|r]. Dies ist eine Gebunden-beim-Anlegen-Beute in |cFFfa9602Stratholme|r << Priest
    >>Sammelt |T132958:0|t[|cRXP_LOOT_Handschuhe der Schattenkunst|r]. Dies ist eine Gebunden-beim-Anlegen-Beute in |cFFfa9602Schwarzfelsspitze|r << Rogue
    >>Sammelt |T132945:0|t[|cRXP_LOOT_Stulpen der Elemente|r]. Dies ist eine Beim-Anlegen-gebunden-Beute in |cFFfa9602Obere Schwarzfelsspitze|r << Shaman
    >>Sammelt |T132966:0|t[|cRXP_LOOT_Wickeltücher der Furcht|r]. Dies ist eine Gebunden-beim-Anlegen-Beute in |cFFfa9602Scholomance|r << Warlock
    >>Sammelt |T132960:0|t[|cRXP_LOOT_Stulpen der Ehre|r]. Dies ist eine Gebunden-beim-Anlegen-Beute in |cFFfa9602Stratholme|r << Warrior
    >>|cRXP_WARN_Alternativ kauft sie aus dem Auktionshaus << !sod
    >>|cRXP_WARN_Alternativ kauft sie aus dem Auktionshaus oder von |cRXP_FRIENDLY_Pix Xizzix|r in Beutebucht im Austausch gegen|r |T133799:0|t[|cRXP_FRIENDLY_Angelaufener Real aus Undermine|r] << sod
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
    >>|cRXP_BUY_Sammelt die folgenden Gegenstände|r:
    >>|T133001:0|t[Empfindlicher Arkanitwandler] |cRXP_WARN_werden von Ingenieuren hergestellt|r
    >>|T132864:0|t[|cRXP_FRIENDLY_Große ewige Essenz|r] |cRXP_WARN_werden durch Verzauberer beschafft|r
    >>|T134848:0|t[Steinschuppenöl] |cRXP_WARN_wird von Alchemisten hergestellt|r
    >>|T132621:0|t[Goblin-Raketentreibstoff] |cRXP_WARN_Wird von Ingenieuren hergestellt|r
    >>|cRXP_WARN_Kauft sie wenn möglich aus dem Auktionshaus|r
    .collect 16006,1,8921,1 --Delicate Arcanite Converter (x1)
    .collect 16203,4,8921,1 --Greater Eternal Essence (x4)
    .collect 13423,10,8921,1 --Stonescale Oil (x10)
    .collect 9061,6,8924,1 --Goblin Rocket Fuel (x6)
step << Alliance
    #completewith next
    .zone Ironforge >>Reist nach |cFFfa9602Eisenschmiede|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Deliana|r
    .accept 8922 >>Akzeptiert die Quest Ein übernatürlicher Apparat
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>Reist nach |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mokvar|r
    .accept 8923 >>Akzeptiert die Quest Ein übernatürlicher Apparat
    .target Mokvar
step
    #completewith next
    .subzone 976 >>Reist nach Gadgetzan im |cFFfa9602Tanaris|r
step
    .goto Tanaris,52.47,27.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mux Manascrambler|r
    .turnin 8922 >>Gebt die Quest Ein übernatürlicher Apparat ab << Alliance
    .turnin 8923 >>Gebt die Quest Ein übernatürlicher Apparat ab << Horde
    .accept 8921 >>Akzeptiert die Quest Der Ektoplasmadestillierer
    .target Mux Manascrambler
step
    #completewith next
    .zone Burning Steppes >>Reist in die |cFFfa9602Brennende Steppe|r
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
    >>Sammelt die |cRXP_LOOT_Vulkanasche|r auf dem Boden
    >>|cRXP_WARN_Sie sehen aus wie große Haufen grauer Erde und befinden sich hauptsächlich in der Nördlichen Brennenden Steppe zwischen den Lava-Pools und Flüssen|r
    .collect 22338,25,8921,1 --Volcanic Ash (x25)
step
    >>|cRXP_BUY_Sammelt die folgenden Gegenstände|r:
    >>|T133001:0|t[Empfindlicher Arkanitwandler] |cRXP_WARN_werden von Ingenieuren hergestellt|r
    >>|T132864:0|t[|cRXP_FRIENDLY_Große ewige Essenz|r] |cRXP_WARN_werden durch Verzauberer beschafft|r
    >>|T134848:0|t[Steinschuppenöl] |cRXP_WARN_wird von Alchemisten hergestellt|r
    >>|T132621:0|t[Goblin-Raketentreibstoff] |cRXP_WARN_Wird von Ingenieuren hergestellt|r
    >>|cRXP_WARN_Kauft sie wenn möglich aus dem Auktionshaus|r
    .collect 16006,1,8921,1 --Delicate Arcanite Converter (x1)
    .collect 16203,4,8921,1 --Greater Eternal Essence (x4)
    .collect 13423,10,8921,1 --Stonescale Oil (x10)
    .collect 9061,6,8924,1 --Goblin Rocket Fuel (x6)
step
    #completewith next
    .subzone 976 >>Reist nach Gadgetzan im |cFFfa9602Tanaris|r
step
    .goto Tanaris,52.47,27.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mux Manascrambler|r
    >>|cRXP_WARN_Ihr werdet 40 Gold benötigen, um diese Quest abzugeben|r
    .turnin 8921 >>Gebt die Quest Der Ektoplasmadestillierer ab
    .accept 8924 >>Akzeptiert die Quest Ektoplasmajagd
    .target Mux Manascrambler
step
    #optional
    >>|cRXP_WARN_Sammelt mindestens 3|r |T132621:0|t[Goblin-Raketentreibstoff]|cRXP_WARN_. Es wird von Ingenieuren hergestellt|r
    >>|cRXP_WARN_Kauft sie wenn möglich aus dem Auktionshaus|r
    .collect 9061,3,8924,1 --Goblin Rocket Fuel (x3)
step
    #completewith next
    .subzone 2738 >>Reist zum Südwindposten in |cFFfa9602Silithus|r
step
    #completewith next
    .cast 27433 >>|cRXP_WARN_Platziert den|r |T133882:0|t[Ektoplasmadestillierer] |cRXP_WARN_auf dem Boden. Er hält 5 Minuten lang|r
    .use 21946 >>|cRXP_WARN_Eins|r |T132621:0|t[Goblin-Raketentreibstoff] |cRXP_WARN_wird jedesmal benötigt, wenn ihr |r |T133882:0|t[Ektoplasmadestillierer] benutzt
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
    >>Tötet |cRXP_ENEMY_Gequälter Druide|r und |cRXP_ENEMY_Gequälte Schildwache|r. Plündert sie für |cRXP_LOOT_Versengtes Ektoplasma|r
    >>|cRXP_WARN_Zieht sie zum|r |T133882:0|t[Ektoplasmadestillierer] |cRXP_WARN_während ihr sie tötet|r
    .complete 8924,1 --Scorched Ectoplasm (x12)
	.mob Tortured Druid
	.mob Tortured Sentinel
step
    #completewith next
    .zone Winterspring >>Reist nach |cFFfa9602Winterquell|r
step
    #completewith next
    .cast 27433 >>|cRXP_WARN_Platziert den|r |T133882:0|t[Ektoplasmadestillierer] |cRXP_WARN_auf dem Boden. Er hält 5 Minuten lang|r
    .use 21946 >>Ein |T132621:0|t[Goblin-Raketentreibstoff] |cRXP_WARN_wird jedes Mal benötigt, wenn ihr den|r |T133882:0|t[Ektoplasmadestillierer] |cRXP_WARN_benutzt|r
step
    #loop
    .goto Winterspring,55.42,43.41,0
    .goto Winterspring,53.29,43.82,0
    .goto Winterspring,52.60,40.59,0
    .goto Winterspring,55.42,43.41,50,0
    .goto Winterspring,53.29,43.82,50,0
    .goto Winterspring,52.60,40.59,50,0
    >>Tötet |cRXP_ENEMY_Leidender Hochgeborener|r und |cRXP_ENEMY_Gepeinigter Hochgeborener|r. Plündert sie für |cRXP_LOOT_Gefrorenes Ektoplasma|r
    >>|cRXP_WARN_Zieht sie zum|r |T133882:0|t[Ektoplasmadestillierer] |cRXP_WARN_während ihr sie tötet|r
    .complete 8924,2 --Frozen Ectoplasm (x12)
    .mob Suffering Highborne
    .mob Anguished Highborne
step
    #completewith FelElemRod
    .subzone 2256 >>Reist zur Flüsternden Schlucht in |cFFfa9602Winterquell|r
step
    #hardcore
    #completewith next
    +|cRXP_WARN_Passt auf! Ihr werdet Mobs der Stufe 60 auf dem Weg zu|r |cRXP_FRIENDLY_Vi'el|r|cRXP_WARN_begegnen. Vermeidet sie so viel wie möglich|r
step
    #label FelElemRod
    .goto Winterspring,58.87,78.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vi'el|r
    >>|cRXP_BUY_Kauft einen|r |T135155:0|t[|cRXP_LOOT_Teufelselementarer Brennstab|r] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Er wird 40 Gold kosten|r
    .collect 21939,1,8928,1 --Fel Elemental Rod (x1)
    .target Vi'el
step
    #optional
    >>|cRXP_WARN_Sammelt mindestens 2|r |T132621:0|t[Goblin-Raketentreibstoff]|cRXP_WARN_. Es wird von Ingenieuren hergestellt|r
    >>|cRXP_WARN_Kauft sie wenn möglich aus dem Auktionshaus|r
    .collect 9061,2,8924,1 --Goblin Rocket Fuel (x2)
step
    #completewith next
    .subzone 2264 >>Reist zu Corins Kreuzung in den |cFFfa9602Die Östlichen Pestländer|r
step
    #completewith next
    .cast 27433 >>|cRXP_WARN_Platziert den|r |T133882:0|t[Ektoplasmadestillierer] |cRXP_WARN_auf dem Boden. Er hält 5 Minuten lang|r
    .use 21946 >>Ein |T132621:0|t[Goblin-Raketentreibstoff] |cRXP_WARN_wird jedes Mal benötigt, wenn ihr den|r |T133882:0|t[Ektoplasmadestillierer] |cRXP_WARN_benutzt|r
step
    #loop
    .goto Eastern Plaguelands,60.67,67.35,0
    .goto Eastern Plaguelands,60.67,67.35,50,0
    .goto Eastern Plaguelands,58.55,70.50,50,0
    >>Tötet |cRXP_ENEMY_Ungesehener Diener|r und |cRXP_ENEMY_Hassschriller|r. Plündert sie für |cRXP_LOOT_Stabiles Ektoplasma|r
    >>|cRXP_WARN_Zieht sie zum|r |T133882:0|t[Ektoplasmadestillierer] |cRXP_WARN_während ihr sie tötet|r
    .complete 8924,3 --Stable Ectoplasm (x12)
    .mob Unseen Servant
    .mob Hate Shrieker
step
    #completewith next
    .subzone 976 >>Reist nach Gadgetzan im |cFFfa9602Tanaris|r
step
    .goto Tanaris,52.47,27.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mux Manascrambler|r
    .turnin 8924 >>Gebt die Quest Ektoplasmajagd ab
    .accept 8925 >>Akzeptiert die Quest Eine portable Energiequelle
    .target Mux Manascrambler
step
    #completewith next
    .zone Burning Steppes >>Reist in die |cFFfa9602Brennende Steppe|r
step
    .goto Burning Steppes,35.38,57.73
    >>Tötet |cRXP_ENEMY_Magma Lord Bokk|r. Plündert sie für |cRXP_LOOT_Magmakern|r
    .complete 8925,1 --Magma Core (x1)
    .mob Magma Lord Bokk
step
    #completewith next
    .subzone 976 >>Reist nach Gadgetzan im |cFFfa9602Tanaris|r
step
    .goto Tanaris,52.47,27.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mux Manascrambler|r
    .turnin 8925 >>Gebt die Quest Eine portable Energiequelle ab
    .accept 8928 >>Akzeptiert die Quest Ein verschlagener Händler
    .target Mux Manascrambler
step
    #optional
    #completewith FelElemRod2
    .subzone 2256 >>Reist zur Flüsternden Schlucht in |cFFfa9602Winterquell|r
step
    #optional
    #hardcore
    #completewith next
    +|cRXP_WARN_Passt auf! Ihr werdet Mobs der Stufe 60 auf dem Weg zu|r |cRXP_FRIENDLY_Vi'el|r|cRXP_WARN_begegnen. Vermeidet sie so viel wie möglich|r
step
    #label FelElemRod2
    #optional --user should already have bought this during .complete 8924,2 earlier in Winterspring
    .goto Winterspring,58.87,78.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vi'el|r
    >>|cRXP_BUY_Kauft einen|r |T135155:0|t[|cRXP_LOOT_Teufelselementarer Brennstab|r] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Er wird 40 Gold kosten|r
    .collect 21939,1,8928,1 --Fel Elemental Rod (x1)
    .target Vi'el
step
    #optional
    #completewith next
    .subzone 976 >>Reist nach Gadgetzan im |cFFfa9602Tanaris|r
    .zoneskip Winterspring,1
step
    .goto Tanaris,52.47,27.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mux Manascrambler|r
    .turnin 8928 >>Gebt die Quest Ein verschlagener Händler ab
    .accept 8977 >>Akzeptiert die Quest Rückkehr zu Deliana << Alliance
    .accept 8978 >>Akzeptiert die Quest Rückkehr zu Mokvar << Horde
    .target Mux Manascrambler
step << Alliance
    #completewith next
    .zone Ironforge >>Reist nach |cFFfa9602Eisenschmiede|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Deliana|r
    .turnin 8977 >>Gebt die Quest Rückkehr zu Deliana ab
    .accept 8926 >>Akzeptiert die Quest Die angemessene Entlohnung << Druid
    .accept 8931 >>Akzeptiert die Quest Die angemessene Entlohnung << Hunter
    .accept 8932 >>Akzeptiert die Quest Die angemessene Entlohnung << Mage
    .accept 8933 >>Akzeptiert die Quest Die angemessene Entlohnung << Paladin
    .accept 8934 >>Akzeptiert die Quest Die angemessene Entlohnung << Priest
    .accept 8935 >>Akzeptiert die Quest Die angemessene Entlohnung << Rogue
    .accept 8936 >>Akzeptiert die Quest Die angemessene Entlohnung << Warlock
    .accept 8937 >>Akzeptiert die Quest Die angemessene Entlohnung << Warrior
    .target Deliana
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Deliana|r
    >>Ihr benötigt |T132504:0|t[|cRXP_LOOT_Gürtel des Wildherzens|r] und |T132951:0|t[|cRXP_LOOT_Handschuhe des Wildherzens|r], um diese Quest abzugeben << Druid
    >>Ihr benötigt |T132517:0|t[|cRXP_LOOT_Bestienjägergürtel|r] und |T132944:0|t[|cRXP_LOOT_Bestienjägerhandschuhe|r] um diese Quest abzugeben << Hunter
    >>Ihr benötigt |T132497:0|t[|cRXP_LOOT_Gürtel des Magisters|r] und |T132951:0|t[|cRXP_LOOT_Handschuhe des Magisters|r] um diese Quest abzugeben << Mage
    >>Ihr benötigt |T132500:0|t[|cRXP_LOOT_Gürtel des Lichts|r] und |T132953:0|t[|cRXP_LOOT_Stulpen des Lichts|r], um diese Quest abzugeben << Paladin
    >>Ihr benötigt |T132499:0|t[|cRXP_LOOT_Gürtel des Gläubigen|r] und |T132948:0|t[|cRXP_LOOT_Handschuhe des Gläubigen|r] um diese Quest abzugeben << Priest
    >>Ihr benötigt |T132492:0|t[|cRXP_LOOT_Gürtel der Schattenkunst|r] und |T132958:0|t[|cRXP_LOOT_Handschuhe der Schattenkunst|r] um diese Quest abzugeben << Rogue
    >>Ihr benötigt |T132501:0|t[|cRXP_LOOT_Gürtel der Furcht|r] und |T132966:0|t[|cRXP_LOOT_Wickeltücher der Furcht|r], um diese Quest abzugeben << Warlock
    >>Ihr benötigt |T132523:0|t[|cRXP_LOOT_Gürtel der Ehre|r] und |T132960:0|t[|cRXP_LOOT_Stulpen der Ehre|r] um diese Quest abzugeben << Warrior
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
    .turnin 8926 >>Gebt die Quest Die angemessene Entlohnung ab << Druid
    .turnin 8931 >>Gebt die Quest Die angemessene Entlohnung ab << Hunter
    .turnin 8932 >>Gebt die Quest Die angemessene Entlohnung ab << Mage
    .turnin 8933 >>Gebt die Quest Die angemessene Entlohnung ab << Paladin
    .turnin 8934 >>Gebt die Quest Die angemessene Entlohnung ab << Priest
    .turnin 8935 >>Gebt die Quest Die angemessene Entlohnung ab << Rogue
    .turnin 8936 >>Gebt die Quest Die angemessene Entlohnung ab << Warlock
    .turnin 8937 >>Gebt die Quest Die angemessene Entlohnung ab << Warrior
    .accept 8929 >>Akzeptiert die Quest Suche nach Anthion
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>Reist nach |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mokvar|r
    .turnin 8978 >>Gebt die Quest Rückkehr zu Mokvar ab
    .accept 8927 >>Akzeptiert die Quest Die angemessene Entlohnung << Druid
    .accept 8938 >>Akzeptiert die Quest Die angemessene Entlohnung << Hunter
    .accept 8939 >>Akzeptiert die Quest Die angemessene Entlohnung << Mage
    .accept 8940 >>Akzeptiert die Quest Die angemessene Entlohnung << Priest
    .accept 8941 >>Akzeptiert die Quest Die angemessene Entlohnung << Rogue
    .accept 8942 >>Akzeptiert die Quest Die angemessene Entlohnung << Shaman
    .accept 8943 >>Akzeptiert die Quest Die angemessene Entlohnung << Warlock
    .accept 8944 >>Akzeptiert die Quest Die angemessene Entlohnung << Warrior
    .target Mokvar
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mokvar|r
    >>Ihr benötigt |T132504:0|t[|cRXP_LOOT_Gürtel des Wildherzens|r] und |T132951:0|t[|cRXP_LOOT_Handschuhe des Wildherzens|r], um diese Quest abzugeben << Druid
    >>Ihr benötigt |T132517:0|t[|cRXP_LOOT_Bestienjägergürtel|r] und |T132944:0|t[|cRXP_LOOT_Bestienjägerhandschuhe|r] um diese Quest abzugeben << Hunter
    >>Ihr benötigt |T132497:0|t[|cRXP_LOOT_Gürtel des Magisters|r] und |T132951:0|t[|cRXP_LOOT_Handschuhe des Magisters|r] um diese Quest abzugeben << Mage
    >>Ihr benötigt |T132499:0|t[|cRXP_LOOT_Gürtel des Gläubigen|r] und |T132948:0|t[|cRXP_LOOT_Handschuhe des Gläubigen|r] um diese Quest abzugeben << Priest
    >>Ihr benötigt |T132492:0|t[|cRXP_LOOT_Gürtel der Schattenkunst|r] und |T132958:0|t[|cRXP_LOOT_Handschuhe der Schattenkunst|r] um diese Quest abzugeben << Rogue
    >>Ihr benötigt |T132505:0|t[|cRXP_LOOT_Kordel der Elemente|r] und |T132945:0|t[|cRXP_LOOT_Stulpen der Elemente|r], um diese Quest abzugeben << Shaman
    >>Ihr benötigt |T132501:0|t[|cRXP_LOOT_Gürtel der Furcht|r] und |T132966:0|t[|cRXP_LOOT_Wickeltücher der Furcht|r], um diese Quest abzugeben << Warlock
    >>Ihr benötigt |T132523:0|t[|cRXP_LOOT_Gürtel der Ehre|r] und |T132960:0|t[|cRXP_LOOT_Stulpen der Ehre|r] um diese Quest abzugeben << Warrior
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
    .turnin 8927 >>Gebt die Quest Die angemessene Entlohnung ab << Druid
    .turnin 8938 >>Gebt die Quest Die angemessene Entlohnung ab << Hunter
    .turnin 8939 >>Gebt die Quest Die angemessene Entlohnung ab << Mage
    .turnin 8940 >>Gebt die Quest Die angemessene Entlohnung ab << Priest
    .turnin 8941 >>Gebt die Quest Die angemessene Entlohnung ab << Rogue
    .turnin 8942 >>Gebt die Quest Die angemessene Entlohnung ab << Shaman
    .turnin 8943 >>Gebt die Quest Die angemessene Entlohnung ab << Warlock
    .turnin 8944 >>Gebt die Quest Die angemessene Entlohnung ab << Warrior
    .accept 8930 >>Akzeptiert die Quest Suche nach Anthion
    .target Mokvar

    ]])


RXPGuides.RegisterGuide([[
#classic
#tbc
#group RestedXP Endgame Guides
#subgroup Ungezähmtes Herz Set Dungeonführer << Druid
#subgroup Tierherrschaft Set Dungeonführer << Hunter
#subgroup Magier Set Dungeonführer << Mage
#subgroup Seelenschmiede Set Dungeonführer << Paladin
#subgroup Rüstung der Finsternis Set Dungeonführer << Rogue
#subgroup Der Fünf-Donner-Set Wegweiser << Shaman
#subgroup Todesnebel Set Dungeonführer << Warlock
#subgroup Heldentum Set Dungeonführer << Warrior
#subgroup Tugendhaft Set Dungeonführer << Priest
#name Part 3: Beine, Schulter & Stiefel
#next Part 4: Helm & Brust

step
    #optional
    +|cRXP_WARN_Ihr müsst Teil 2: Gürtel & Handschuhe abschließen, bevor ihr diesen Teil des Leitfadens startet|r
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
    >>Sammelt |T132542:0|t[|cRXP_LOOT_Stiefel des Wildherzens|r]. Diese werden von |cRXP_ENEMY_Mutter Glimmernetz|r in der |cFFfa9602Unteren Schwarzfelsspitze|r fallen gelassen << Druid
    >>Sammelt |T132588:0|t[|cRXP_LOOT_Bestienjägerstiefel|r]. Diese werden von |cRXP_ENEMY_Nerub'enkan|r in |cFFfa9602Stratholme|r fallen gelassen << Hunter
    >>Sammelt |T132536:0|t[|cRXP_LOOT_Stiefel des Magisters|r]. Diese werden von |cRXP_ENEMY_Herdsinger Forresten|r (rar mob) in |cFFfa9602Stratholme|r fallen gelassen << Mage
    >>|cRXP_WARN_Hinweis: Vor dem AQ-Patch soll dieser Gegenstand von|r |cRXP_ENEMY_Postmeister Malown|r fallen gelassen werden<<Mage
    >>Erhalte die |T132584:0|t[|cRXP_LOOT_Stiefel des Lichts|r]. Diese werden von |cRXP_ENEMY_Oberster Kreuzzügler Dathrohan|r und |cRXP_ENEMY_Balnazzar|r in |cFFfa9602Stratholme|r fallen gelassen << Paladin
    >>Sammelt |T132539:0|t[Sandalen des Gläubigen|cRXP_LOOT_]. Diese werden von |rMaleki der Leichenblasse|cRXP_ENEMY_ in |rStratholme|cFFfa9602 fallen gelassen << Priest
    >>Sammelt |T132542:0|t[|cRXP_LOOT_Stiefel der Schattenkunst|r]. Diese werden von |cRXP_ENEMY_Blutrippe|r in |cFFfa9602Scholomance|r fallen gelassen << Rogue
    >>Sammelt |T132592:0|t[|cRXP_LOOT_Stiefel der Elemente|r]. Diese werden von |cRXP_ENEMY_Hochlord Omokk|r in der |cFFfa9602Unteren Schwarzfelsspitze|r fallen gelassen << Shaman
    >>Sammelt |T132539:0|t[|cRXP_LOOT_Sandalen der Furcht|r]. Diese werden von |cRXP_ENEMY_Baroness Anastari|r in |cFFfa9602Stratholme|r fallen gelassen << Warlock
    >>Sammelt |T132584:0|t[|cRXP_LOOT_Stiefel der Ehre|r]. Diese werden von |cRXP_ENEMY_Kirtonos der Herold|r in |cFFfa9602Scholomance|r fallen gelassen << Warrior
    >>|cRXP_WARN_Alternativ kauft sie von |cRXP_FRIENDLY_Pix Xizzix|r in Beutebucht im Austausch für|r |T133799:0|t[|cRXP_FRIENDLY_Angelaufener Real aus Undermine|r] << sod
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
    >>Sammelt |T134588:0|t[|cRXP_LOOT_Kilt des Wildherzens|r]. Diese werden von |cRXP_ENEMY_Baron Rivendare|r in |cFFfa9602Stratholme|r fallen gelassen << Druid
    >>Sammelt |T134583:0|t[|cRXP_LOOT_Bestienjägerhose|r]. Diese werden von |cRXP_ENEMY_Baron Rivendare|r in |cFFfa9602Stratholme|r fallen gelassen << Hunter
    >>Sammelt |T134586:0|t[|cRXP_LOOT_Gamaschen des Magisters|r]. Diese werden von |cRXP_ENEMY_Baron Rivendare|r in |cFFfa9602Stratholme|r fallen gelassen << Mage
    >>Sammelt |T134584:0|t[|cRXP_LOOT_Beinplatten des Lichts|r]. Diese werden von |cRXP_ENEMY_Baron Rivendare|r in |cFFfa9602Stratholme|r fallen gelassen << Paladin
    >>Erhaltet den |T134588:0|t[|cRXP_LOOT_Rock des Gläubigen|r]. Das wird von |cRXP_ENEMY_Baron Rivendare|r in |cFFfa9602Stratholme|r Fallen gelassen << Priest
    >>Besorgt das |T134582:0|t[|cRXP_LOOT_Hose der Schattenkunst|r]. Das wird von |cRXP_ENEMY_Baron Rivendare |r in |cFFfa9602Stratholme|r fallen gelassen << Rogue
    >>Sammelt das |T134583:0|t[|cRXP_LOOT_Kilt der Elemente|r]. Das wird von |cRXP_ENEMY_Baron Rivendare |r in |cFFfa9602Stratholme|r Fallen gelassen << Shaman
    >>Erhaltet die |T134588:0|t[|cRXP_LOOT_Gamaschen der Furcht|r]. Das wird von |cRXP_ENEMY_Baron Rivendare |r in |cFFfa9602Stratholme|r Fallen gelassen << Warlock
    >>Erhaltet die |T134584:0|t[|cRXP_LOOT_Beinplatten der Ehre|r]. Das wird von |cRXP_ENEMY_Baron Rivendare |r in |cFFfa9602Stratholme|r Fallen gelassen << Warrior
    >>|cRXP_WARN_Alternativ kauft sie von |cRXP_FRIENDLY_Pix Xizzix|r in Beutebucht im Austausch für|r |T133799:0|t[|cRXP_FRIENDLY_Angelaufener Real aus Undermine|r] << sod
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
    >>Erhaltet die |T135032:0|t[|cRXP_LOOT_Schiftung des Wildherzens|r]. Diese wird von |cRXP_ENEMY_Gizrul der Geifernde|r in der |cFFfa9602Untere Schwarzfelsspitze|r gedroppt << Druid
    >>Erhaltet den |T135041:0|t[|cRXP_LOOT_Bestienjägermantel|r]. Dieser wird von |cRXP_ENEMY_Oberanführer Wyrmthalak|r in der|cFFfa9602Untere Schwarzfelsspitze|r Fallen gelassen << Hunter
    >>Erhaltet den|T135054:0|t[|cRXP_LOOT_Mantel des Magisters|r]. Dieser wird von |cRXP_ENEMY_Ras Frostraunen|r in |cFFfa9602Scholomance|r Fallen gelassen << Mage
    >>Erhaltet die|T135041:0|t[|cRXP_LOOT_Schiftung des Lichts|r]. Diese wird von |cRXP_ENEMY_Die Bestie|r in der |cFFfa9602Oberen Schwarzfelsspitze|r Fallen gelassen << Paladin
    >>Erhaltet den|T135033:0|t[|cRXP_LOOT_Mantel des Gläubigen|r]. Dieser wird von |cRXP_ENEMY_Solakar Feuerkrone|r in der|cFFfa9602Oberen Schwarzfelsspitze|r Fallen gelassen << Priest
    >>Erhaltet die|T135038:0|t[|cRXP_LOOT_Schiftung der Schattenkunst|r]. Diese wird von |cRXP_ENEMY_Kanonenmeister Willey|r in |cFFfa9602Stratholme|r Fallen gelassen << Rogue
    >>Erhaltet die|T135060:0|t[|cRXP_LOOT_Schulterstücke der Elemente|r]. Diese werden von |cRXP_ENEMY_Gyth|r in der |cFFfa9602Oberen Schwarzfelsspitze|r Fallen gelassen << Shaman
    >>Sammelt |T133732:0|t[|cRXP_LOOT_Mantel der Furcht|r]. Diesen Gegenstand lässt |cRXP_ENEMY_Jandice Barov|r in |cFFfa9602Scholomance|r fallen << Warlock
    >>Sammelt die|T135061:0|t[|cRXP_LOOT_Schiftung der Ehre|r]. Diese werden von |cRXP_ENEMY_Kriegshäuptling Rend Blackhand|r in der|cFFfa9602Oberen Schwarzfelsspitze|r fallen gelassen << Warrior
    >>|cRXP_WARN_Alternativ kauft sie von |cRXP_FRIENDLY_Pix Xizzix|r in Beutebucht im Austausch für|r |T133799:0|t[|cRXP_FRIENDLY_Angelaufener Real aus Undermine|r] << sod
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
    >>|cRXP_BUY_Sammelt die folgenden Gegenstände|r:
    >>|T133233:0|t[Dunkeleisenbarren] |cRXP_WARN_können von Bergbauern hergestellt werden|r
    >>|T134418:0|t[Verzaubertes Leder] |cRXP_WARN_und|r |T132873:0|t[Großer glänzender Splitter] |cRXP_WARN_Verzauberer können diese beiden Gegenstände erhalten bzw. craften|r
    >>|T132895:0|t[Mondstoff] |cRXP_WARN_is wird von Schneidern hergestellt|r
    >>|T134355:0|t[Geschmeidiger unverwüstlicher Balgs] |cRXP_WARN_wird von Spielern mit dem Beruf Lederverarbeitung hergestellt|r
    >>|T136192:0|t[|cRXP_FRIENDLY_Dunkelrunen|r] |cRXP_WARN_sind zufällige Beute in|r |cFFfa9602Scholomance|r
    >>|cRXP_WARN_Kauft sie wenn möglich aus dem Auktionshaus|r
    .collect 11371,3,8947,1 --Dark Iron Bar (x3)
    .collect 12810,20,8947,1 --Enchanted Leather (x20)
    .collect 14344,8,8950,1 --Large Brilliant Shard (x8)
    .collect 14342,3,8947,1 --Mooncloth (x3)
    .collect 15407,4,8947,1 --Cured Rugged Hide (x4)
    .collect 20520,4,8950,1 --Dark Rune (x4)
step << Alliance
    #completewith next
    .zone Ironforge >>Reist nach |cFFfa9602Eisenschmiede|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Deliana|r
    .accept 8929 >>Akzeptiert die Quest Suche nach Anthion
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>Reist nach |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mokvar|r
    .accept 8930 >>Akzeptiert die Quest Suche nach Anthion
    .target Mokvar
step
    #completewith FindingAnthion
    +|cRXP_WARN_Fangt an, nach einer soliden 5er-Gruppe zu suchen, die die Untotenseite von Stratholme in 45 Minuten abschließen kann|r
step
    #completewith next
    .zone Eastern Plaguelands >>Reist in die |cFFfa9602Die Östlichen Pestländer|r
step
    #label FindingAnthion
    .goto Eastern Kingdoms,55.06,17.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Anthion|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Anthion|r zu enthüllen
    .turnin 8929 >>Gebt die Quest Suche nach Anthion ab << Alliance
    .turnin 8930 >>Gebt die Quest Suche nach Anthion ab << Horde
    .accept 8945 >>Akzeptiert die Quest Die letzte Bitte eines toten Mannes
    .target Anthion Harmon
step
    #completewith next
    .subzone 2017 >>Betretet Stratholme
    >>|cRXP_WARN_Stellt sicher, dass ihr eine Gruppe parat habt|r
step
    >>Tötet |cRXP_ENEMY_Baron Rivendare|r in 45 Minuten, um |cRXP_FRIENDLY_Ysida Harmon|r zu retten
    >>|cRXP_WARN_Der Timer beginnt, wenn ihr den|r |T136129:0|t[Das Ultimatum des Barons] |cRXP_WARN_Debuff beim Betreten der Untotenzone erhaltet|r
    .complete 8945,1 --Ysida Freed (x1)
    .mob Baron Rivendare
    .target Ysida Harmon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ysida Harmon|r
    .turnin 8945 >>Gebt die Quest Die letzte Bitte eines toten Mannes ab
    .accept 8946 >>Akzeptiert die Quest Lebensbeweis
    .target Ysida Harmon
step
    .goto Eastern Kingdoms,55.06,17.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Anthion|r außerhalb von Stratholme
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Anthion|r zu enthüllen
    .turnin 8946 >>Gebt die Quest Lebensbeweis ab
    .accept 8947 >>Akzeptiert die Quest Anthions merkwürdige Anforderung
    .target Anthion Harmon
step
    >>|cRXP_BUY_Sammelt die folgenden Gegenstände|r:
    >>|T133233:0|t[Dunkeleisenbarren] |cRXP_WARN_können von Bergbauern hergestellt werden|r
    >>|T134418:0|t[Verzaubertes Leder] |cRXP_WARN_wird von Verzauberern hergestellt|r
    >>|T132895:0|t[Mondstoff] |cRXP_WARN_is wird von Schneidern hergestellt|r
    >>|T134355:0|t[Geschmeidiger unverwüstlicher Balgs] |cRXP_WARN_wird von Spielern mit dem Beruf Lederverarbeitung hergestellt|r
    >>|T136192:0|t[|cRXP_FRIENDLY_Dunkelrunen|r] |cRXP_WARN_sind zufällige Beute in|r |cFFfa9602Scholomance|r
    >>|cRXP_WARN_Kauft sie wenn möglich aus dem Auktionshaus|r
    .collect 11371,3,8947,1 --Dark Iron Bar (x3)
    .collect 12810,20,8947,1 --Enchanted Leather (x20)
    .collect 14344,8,8950,1 --Large Brilliant Shard (x8)
    .collect 14342,3,8947,1 --Mooncloth (x3)
    .collect 15407,4,8947,1 --Cured Rugged Hide (x4)
    .collect 20520,4,8950,1 --Dark Rune (x4)
step
    .goto Eastern Kingdoms,55.06,17.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Anthion|r außerhalb von Stratholme
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Anthion|r zu enthüllen
    .turnin 8947 >>Gebt die Quest Anthions merkwürdige Anforderung ab
    .accept 8948 >>Akzeptiert die Quest Anthions alter Freund
    .target Anthion Harmon
step
    #softcore
    #completewith AnthionsFriend
    .zone Feralas >>Reist nach |cFFfa9602Feralas|r
    >>|cRXP_WARN_Der nächste Abschnitt findet in Düsterbruch statt. Es ist möglich, solo zu spielen, aber eine Gruppe wird dringend empfohlen|r
    .subzoneskip 2557
step
    #hardcore
    #completewith AnthionsFriend
    .zone Feralas >>Reist nach |cFFfa9602Feralas|r
    >>|cRXP_WARN_Der nächste Abschnitt findet in Düsterbruch statt. Habt eine Gruppe von mindestens 3 Spielern bereit|r
    .subzoneskip 2557
step
    #completewith AnthionsFriend
    .goto Kalimdor,43.39,66.52,20 >>BETRETET den nördlichen Eingang von Düsterbruch
    >>|cRXP_WARN_Ihr müsst den|r |T134244:0|t[Mondsichelschlüssel] |cRXP_WARN_haben, um die Tür in Düsterbruch Nord und in die Bibliothek öffnen zu können|r << !Rogue
    >>|cRXP_WARN_Ihr müsst den|r |T134244:0|t[Mondsichelschlüssel] |cRXP_WARN_oder 300 skill im Schlösserknacken haben, um die Tür in Düsterbruch Nord und in die Bibliothek öffnen zu können|r << Rogue
    >>|cRXP_WARN_Alternativ fragt einen anderen Spieler, die Türen für euch zu öffnen|r
    .itemcount 18249,<1 << !Rogue --Crescent Key
    .skill lockpicking,300,1 << Rogue
step
    #optional
    #completewith AnthionsFriend
    .goto Kalimdor,43.39,66.52,20 >>BETRETET den nördlichen Eingang von Düsterbruch
    .itemcount 18249,1 << !Rogue --Crescent Key
    .skill lockpicking,<300,1 << Rogue
step
    #label AnthionsFriend
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Falrin Treeshaper|r in der Düsterbruch-Bibliothek
    .turnin 8948 >>Gebt die Quest Anthions alter Freund ab
    .accept 8949 >>Akzeptiert die Quest Falrins Rachefeldzug
    .target Falrin Treeshaper
    --.link  >> |cRXP_WARN_You can reach the library without killing any mobs. Click here for video reference|r
    --VV TODO: Library skip video
step
    >>Tötet|cRXP_ENEMY_Gordok Oger|r in|cFFfa9602Düsterbruch Nord|r. lootet sie für ihre|cRXP_LOOT_Kriegsperlen|r
    >>|cRXP_WARN_Alternativ könnt ihr|r |cRXP_ENEMY_Felsspitzoger|r |cRXP_WARN_in der|r |cFFfa9602Unteren Schwarzfelsspitze|r töten
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Falrin Treeshaper|r in der Düsterbruch-Bibliothek
    .turnin 8949 >>Gebt die Quest Falrins Rachefeldzug ab
    .accept 8950 >>Akzeptiert die Quest Die Verzauberung des Aufhetzers
    .target Falrin Treeshaper
step
    #completewith SpectreEssence
    .goto Kalimdor,42.98,67.73,20 >>Betretet die westliche Instanz von Düsterbruch
    >>|cRXP_WARN_Ihr müsst den|r |T134244:0|t[Mondsichelschlüssel] |cRXP_WARN_haben, um die Tür zu Düsterbruch West öffnen zu können|r << !Rogue
    >>|cRXP_WARN_Ihr müsst den|r |T134244:0|t[Mondsichelschlüssel] |cRXP_WARN_oder 300 Geschicklichkeit im Schlösserknacken haben, um die Tür zum Düsterbruch West öffnen zu können|r << Rogue
    >>|cRXP_WARN_Alternativ fragt einen anderen Spieler, die Tür für euch zu öffnen|r
    .itemcount 18249,<1 << !Rogue --Crescent Key
    .skill lockpicking,300,1 << Rogue
step
    #completewith SpectreEssence
    .goto Kalimdor,42.98,67.73,20 >>Betretet den westlichen Eingang von Düsterbruch
    .itemcount 18249,1 << !Rogue --Crescent Key
    .skill lockpicking,<300,1 << Rogue
step
    #label SpectreEssence
    >>Tötet |cRXP_ENEMY_Geist der Eldreth|r in |cFFfa9602Düsterbruch West|r lootet sie für|cRXP_LOOT_Essenz eines spöttischen Geisterwesens|r
    .complete 8950,1 --Jeering Spectre's Essence (x1)
    .mob Eldreth Wraith
    .mob Eldreth Seether
    .mob Eldreth Spectre
    .mob Eldreth Spirit
    .mob Eldreth Phantasm
    .mob Eldreth Apparition
    .mob Eldreth Sorcerer
step
    >>|cRXP_BUY_Sammelt die folgenden Gegenstände|r:
    >>|T132873:0|t[Großer glänzender Splitter] |cRXP_WARN_Verzauberer können diese durch das entzaubern von Geegenständen erhalten|r
    >>|T136192:0|t[|cRXP_FRIENDLY_Dunkelrune|r] |cRXP_WARN_sind Zufallsfunde in|r |cFFfa9602Scholomance|r
    >>|cRXP_WARN_Kauft sie wenn möglich aus dem Auktionshaus|r
    .collect 14344,8,8950,1 --Large Brilliant Shard (x8)
    .collect 20520,4,8950,1 --Dark Rune (x4)
step
    #completewith AnthionsFriend2
    .goto Kalimdor,43.39,66.52,20 >>BETRETET den nördlichen Eingang von Düsterbruch
    >>|cRXP_WARN_Ihr müsst den|r |T134244:0|t[Mondsichelschlüssel] |cRXP_WARN_haben, um die Tür in Düsterbruch Nord und in die Bibliothek öffnen zu können|r << !Rogue
    >>|cRXP_WARN_Ihr müsst den|r |T134244:0|t[Mondsichelschlüssel] |cRXP_WARN_oder 300 skill im Schlösserknacken haben, um die Tür in Düsterbruch Nord und in die Bibliothek öffnen zu können|r << Rogue
    >>|cRXP_WARN_Alternativ fragt einen anderen Spieler, die Türen für euch zu öffnen|r
    .itemcount 18249,<1 << !Rogue --Crescent Key
    .skill lockpicking,300,1 << Rogue
step
    #optional
    #completewith AnthionsFriend2
    .goto Kalimdor,43.39,66.52,20 >>BETRETET den nördlichen Eingang von Düsterbruch
    .itemcount 18249,1 << !Rogue --Crescent Key
    .skill lockpicking,<300,1 << Rogue
step
    #label AnthionsFriend2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Falrin Treeshaper|r in der Düsterbruch-Bibliothek
    .turnin 8950 >>Gebt die Quest Die Verzauberung des Aufhetzers ab
    .accept 9015 >>Akzeptiert die Quest Die Herausforderung
    .target Falrin Treeshaper
    --.link  >> |cRXP_WARN_You can reach the library without killing any mobs. Click here for video reference|r
    --VV TODO: Library skip video
step
    #completewith next
    .subzone 254 >>Reist zum |cFFfa9602Der Schwarzfels|r
step
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>Betretet Schwarzfelstiefen
    >>|cRXP_WARN_Stellt sicher, dass ihr eine Gruppe parat habt|r
step
    .use 21986 >>Betretet den Ring des Gesetzes und benutzt |T132619:0|t[Banner der Provokation]
    >>Das beschwört |cRXP_ENEMY_Theldren|r. Tötet ihn und plündert das |cRXP_LOOT_Obere Stück von Lord Valthalaks Amulett|r
    >>|cRXP_WARN_Dieser Kampf ist hart. |cRXP_ENEMY_Theldren|r wird mit mehreren Elite-Adds der Stufe 60 erscheinen. Stellt sicher, dass die Gruppe von Euch genug Crowd-Control für sie hat|r
    .complete 9015,1 --Theldren's Team Defeated
    .complete 9015,2 --Top Piece of Lord Valthalak's Amulet (x1)
    .mob Theldren
step
    #completewith next
    .zone Eastern Plaguelands >>Lauft in die Östlichen Pestländer
step
    .goto Eastern Kingdoms,55.06,17.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Anthion|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Anthion|r zu enthüllen
    .turnin 9015 >>Gebt die Quest Die Herausforderung ab
    .accept 8951 >>Akzeptiert die Quest Anthions Abschiedsworte << Alliance Druid
    .accept 8952 >>Akzeptiert die Quest Anthions Abschiedsworte << Alliance Hunter
    .accept 8953 >>Akzeptiert die Quest Anthions Abschiedsworte << Alliance Mage
    .accept 8954 >>Akzeptiert die Quest Anthions Abschiedsworte << Alliance Paladin
    .accept 8955 >>Akzeptiert die Quest Anthions Abschiedsworte << Alliance Priest
    .accept 8956 >>Akzeptiert die Quest Anthions Abschiedsworte << Alliance Rogue
    .accept 8958 >>Akzeptiert die Quest Anthions Abschiedsworte << Alliance Warlock
    .accept 8959 >>Akzeptiert die Quest Anthions Abschiedsworte << Alliance Warrior
    .accept 8957 >>Akzeptiert die Quest Anthions Abschiedsworte << Horde Shaman
    .accept 9016 >>Akzeptiert die Quest Anthions Abschiedsworte << Horde Druid
    .accept 9017 >>Akzeptiert die Quest Anthions Abschiedsworte << Horde Hunter
    .accept 9018 >>Akzeptiert die Quest Anthions Abschiedsworte << Horde Mage
    .accept 9019 >>Akzeptiert die Quest Anthions Abschiedsworte << Horde Priest
    .accept 9020 >>Akzeptiert die Quest Anthions Abschiedsworte << Horde Rogue
    .accept 9021 >>Akzeptiert die Quest Anthions Abschiedsworte << Horde Warlock
    .accept 9022 >>Akzeptiert die Quest Anthions Abschiedsworte << Horde Warrior
    .target Anthion Harmon
step << Alliance
    #completewith next
    .zone Ironforge >>Reist nach |cFFfa9602Eisenschmiede|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Deliana|r
    >>Ihr benötigt |T132542:0|t[|cRXP_LOOT_Stiefel des Wildherzens|r], |T134588:0|t[|cRXP_LOOT_Kilt des Wildherzens|r] und |T135032:0|t[|cRXP_LOOT_Schiftung des Wildherzens|r] um diese Quest abzugeben << Druid
    >>Ihr benötigt |T132588:0|t[|cRXP_LOOT_Bestienjägerstiefel|r], |T134583:0|t[|cRXP_LOOT_Bestienjägerhose|r] und |T135041:0|t[|cRXP_LOOT_Bestienjägermantel|r] um diese Quest abzugeben << Hunter
    >>Ihr benötigt |T132536:0|t[|cRXP_LOOT_Stiefel des Magisters|r], |T134586:0|t[|cRXP_LOOT_Gamaschen des Magisters|r] und |T135054:0|t[|cRXP_LOOT_Mantel des Magisters|r] um diese Quest abzugeben << Mage
    >>Ihr benötigt |T132584:0|t[|cRXP_LOOT_Stiefel des Lichts|r], |T134584:0|t[|cRXP_LOOT_Beinplatten des Lichts|r] und |T135041:0|t[|cRXP_LOOT_Schiftung des Lichts|r] um diese Quest abzugeben << Paladin
    >>Ihr werdet |T132539:0|t[|cRXP_LOOT_Sandalen des Gläubigen|r], |T134588:0|t[|cRXP_LOOT_Rock des Gläubigen|r] und |T135033:0|t[|cRXP_LOOT_Mantel des Gläubigen|r] benötigen, um diese Quest abzugeben << Priest
    >>Ihr benötigt |T132542:0|t[|cRXP_LOOT_Stiefel der Schattenkunst|r], |T134582:0|t[|cRXP_LOOT_Hose der Schattenkunst|r] und |T135038:0|t[|cRXP_LOOT_Schiftung der Schattenkunst|r] um diese Quest abzugeben << Rogue
    >>Ihr werdet |T132539:0|t[|cRXP_LOOT_Sandalen der Furcht|r], |T134588:0|t[|cRXP_LOOT_Gamaschen der Furcht|r] und |T133732:0|t[|cRXP_LOOT_Mantel der Furcht|r] benötigen, um diese Quest abzugeben << Warlock
    >>Ihr werdet |T132584:0|t[|cRXP_LOOT_Stiefel der Ehre|r], |T134584:0|t[|cRXP_LOOT_Beinplatten der Ehre|r] und |T135061:0|t[|cRXP_LOOT_Schiftung der Ehre|r] benötigen, um diese Quest abzugeben << Warrior
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
    .turnin 8951 >>Gebt die Quest Anthions Abschiedsworte ab << Druid
    .turnin 8952 >>Gebt die Quest Anthions Abschiedsworte ab << Hunter
    .turnin 8953 >>Gebt die Quest Anthions Abschiedsworte ab << Mage
    .turnin 8954 >>Gebt die Quest Anthions Abschiedsworte ab << Paladin
    .turnin 8955 >>Gebt die Quest Anthions Abschiedsworte ab << Priest
    .turnin 8956 >>Gebt die Quest Anthions Abschiedsworte ab << Rogue
    .turnin 8958 >>Gebt die Quest Anthions Abschiedsworte ab << Warlock
    .turnin 8959 >>Gebt die Quest Anthions Abschiedsworte ab << Warrior
    .accept 8960 >>Akzeptiert die Quest Bodleys Trauriges Schicksal
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>Reist nach |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mokvar|r
    >>Ihr benötigt |T132542:0|t[|cRXP_LOOT_Stiefel des Wildherzens|r], |T134588:0|t[|cRXP_LOOT_Kilt des Wildherzens|r] und |T135032:0|t[|cRXP_LOOT_Schiftung des Wildherzens|r] um diese Quest abzugeben << Druid
    >>Ihr werdet |T132588:0|t[|cRXP_LOOT_Bestienjägerstiefer|r], |T134583:0|t[|cRXP_LOOT_Bestienjägerhose|r] und |T135041:0|t[|cRXP_LOOT_Bestienjägermantel|r] benötigen, um diese Quest abzugeben << Hunter
    >>Ihr benötigt |T132536:0|t[|cRXP_LOOT_Stiefel des Magisters|r], |T134586:0|t[|cRXP_LOOT_Gamaschen des Magisters|r] und |T135054:0|t[|cRXP_LOOT_Mantel des Magisters|r] um diese Quest abzugeben << Mage
    >>Ihr werdet |T132539:0|t[|cRXP_LOOT_Sandalen des Gläubigen|r], |T134588:0|t[|cRXP_LOOT_Rock des Gläubigen|r] und |T135033:0|t[|cRXP_LOOT_Mantel des Gläubigen|r] benötigen, um diese Quest abzugeben << Priest
    >>Ihr benötigt |T132542:0|t[|cRXP_LOOT_Stiefel der Schattenkunst|r], |T134582:0|t[|cRXP_LOOT_Hose der Schattenkunst|r] und |T135038:0|t[|cRXP_LOOT_Schiftung der Schattenkunst|r] um diese Quest abzugeben << Rogue
    >>Ihr benötigt|T132592:0|t[|cRXP_LOOT_Stiefel der Elemente|r], |T134583:0|t[|cRXP_LOOT_Kilt der Elemente|r] und|T135060:0|t[|cRXP_LOOT_Schulterstücke der Elemente|r] um diese Quest abzugeben << Shaman
    >>Ihr werdet |T132539:0|t[|cRXP_LOOT_Sandalen der Furcht|r], |T134588:0|t[|cRXP_LOOT_Gamaschen der Furcht|r] und |T133732:0|t[|cRXP_LOOT_Mantel der Furcht|r] benötigen, um diese Quest abzugeben << Warlock
    >>Ihr werdet |T132584:0|t[|cRXP_LOOT_Stiefel der Ehre|r], |T134584:0|t[|cRXP_LOOT_Beinplatten der Ehre|r] und |T135061:0|t[|cRXP_LOOT_Schiftung der Ehre|r] benötigen, um diese Quest abzugeben << Warrior
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
    .turnin 8957 >>Gebt die Quest Anthions Abschiedsworte ab << Shaman
    .turnin 9016 >>Gebt die Quest Anthions Abschiedsworte ab << Druid
    .turnin 9017 >>Gebt die Quest Anthions Abschiedsworte ab << Hunter
    .turnin 9018 >>Gebt die Quest Anthions Abschiedsworte ab << Mage
    .turnin 9019 >>Gebt die Quest Anthions Abschiedsworte ab << Priest
    .turnin 9020 >>Gebt die Quest Anthions Abschiedsworte ab << Rogue
    .turnin 9021 >>Gebt die Quest Anthions Abschiedsworte ab << Warlock
    .turnin 9022 >>Gebt die Quest Anthions Abschiedsworte ab << Warrior
    .accept 8960 >>Akzeptiert die Quest Bodleys Trauriges Schicksal
    .target Mokvar

]])


RXPGuides.RegisterGuide([[
#classic
#tbc
#group RestedXP Endgame Guides
#subgroup Ungezähmtes Herz Set Dungeonführer << Druid
#subgroup Tierherrschaft Set Dungeonführer << Hunter
#subgroup Magier Set Dungeonführer << Mage
#subgroup Seelenschmiede Set Dungeonführer << Paladin
#subgroup Rüstung der Finsternis Set Dungeonführer << Rogue
#subgroup Der Fünf-Donner-Set Wegweiser << Shaman
#subgroup Todesnebel Set Dungeonführer << Warlock
#subgroup Heldentum Set Dungeonführer << Warrior
#subgroup Tugendhaft Set Dungeonführer << Priest
#name Part 4: Helm & Brust


step
    #optional
    +|cRXP_WARN_Ihr müsst Part 3: Hose, Schulterstücke & Stiefels abgeschlossen haben, bevor der Teil des Guides startet|r
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
    >>Sammelt die |T133129:0|t[|cRXP_LOOT_Kutte des Wildherzens|r]. Das dropt von |cRXP_ENEMY_Dunkelmeister Gandling|r in |cFFfa9602Scholomance|r << Druid
    >>Sammelt die |T133126:0|t[|cRXP_LOOT_Bestienjägerkappe|r]. Diese dropt von |cRXP_ENEMY_Dunkelmeister Gandling|r in |cFFfa9602Scholomance|r << Hunter
    >>Sammelt den |T133076:0|t[|cRXP_LOOT_Helm des Lichts|r]. Dieser dropt von |cRXP_ENEMY_Dunkelmeister Gandling|r in |cFFfa9602Scholomance|r << Paladin
    >>Sammelt die |T132767:0|t[|cRXP_LOOT_Krone des Gläubigen|r]. Diese dropt von |cRXP_ENEMY_Dunkelmeister Gandling|r in |cFFfa9602Scholomance|r << Priest
    >>Sammelt die |T133143:0|t[|cRXP_LOOT_Kappe der Schattenkunst|r]. Diese dropt von |cRXP_ENEMY_Dunkelmeister Gandling|r in |cFFfa9602Scholomance|r << Rogue
    >>Sammelt die |T133072:0|t[|cRXP_LOOT_Helmkappe der Elemente|r]. Diese dropt von |cRXP_ENEMY_Dunkelmeister Gandling|r in |cFFfa9602Scholomance|r << Shaman
    >>Sammelt die |T133131:0|t[|cRXP_LOOT_Maske der Furcht|r]. Diese dropt von |cRXP_ENEMY_Dunkelmeister Gandling|r in |cFFfa9602Scholomance|r << Warlock
    >>Sammelt den |T133070:0|t[|cRXP_LOOT_Helm der Ehre|r]. Diese dropt von |cRXP_ENEMY_Dunkelmeister Gandling|r in |cFFfa9602Scholomance|r << Warrior
    >>Sammelt die |T132768:0|t[|cRXP_LOOT_Krone des Magisters|r]. Diese dropt von |cRXP_ENEMY_Dunkelmeister Gandling|r in |cFFfa9602Scholomance|r << Mage
    >>|cRXP_WARN_Kauft sie alternativ von |cRXP_FRIENDLY_Pix Xizzix|r in Beutebucht im Tausch gegen|r |T133799:0|t[|cRXP_FRIENDLY_Angelaufener Real aus Undermine|r] << sod
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
    >>Sammelt die |T132741:0|t[|cRXP_LOOT_Weste des Wildherzens|r]. Sie dropt von |cRXP_ENEMY_General Drakkisath|r in der |cFFfa9602Oberen Schwarzfelsspitze|r << Druid
    >>Sammelt die |T132625:0|t[|cRXP_LOOT_Bestienjägertunika|r]. Diese wird von |cRXP_ENEMY_General Drakkisath|r in der |cFFfa9602Oberen Schwarzfelsspitze|r fallen gelassen << Hunter
    >>Sammelt |T132738:0|t[|cRXP_LOOT_Brustplatte des Lichts|r]. Diese wird von |cRXP_ENEMY_General Drakkisath|r in der |cFFfa9602Oberen Schwarzfelsspitze|r fallen gelassen << Paladin
    >>Sammelt |T132652:0|t[|cRXP_LOOT_Robe des Gläubigen|r]. Diese wird von |cRXP_ENEMY_General Drakkisath|r in der |cFFfa9602Oberen Schwarzfelsspitze|r fallen gelassen << Priest
    >>Sammelt die|T132722:0|t[|cRXP_LOOT_Tunika der Schattenkunst|r]. Diese wird von |cRXP_ENEMY_General Drakkisath|r in der |cFFfa9602Oberen Schwarzfelsspitze|r fallen gelassen << Rogue
    >>Sammelt die |T132633:0|t[|cRXP_LOOT_Weste der Elemente|r]. Diese wird von |cRXP_ENEMY_General Drakkisath|r in der |cFFfa9602Oberen Schwarzfelsspitze|r fallen gelassen << Shaman
    >>Sammelt die |T132690:0|t[|cRXP_LOOT_Robe der Furcht|r]. Diese wird von |cRXP_ENEMY_General Drakkisath|r in der |cFFfa9602Oberen Schwarzfelsspitze|r fallen gelassen << Warlock
    >>Sammelt die |T132738:0|t[|cRXP_LOOT_Brustplatte der Ehre|r]. Diees wird von |cRXP_ENEMY_General Drakkisath|r in der |cFFfa9602Oberen Schwarzfelsspitze|r fallen gelassen << Warrior
    >>Sammelt die |T132666:0|t[|cRXP_LOOT_Roben des Magisters|r]. Diese wird von |cRXP_ENEMY_General Drakkisath|r in der |cFFfa9602Oberen Schwarzfelsspitze|r fallen gelassen << Mage
    >>|cRXP_WARN_Alternativ kauft sie von |cRXP_FRIENDLY_Pix Xizzix|r in Beutebucht im Austausch für|r |T133799:0|t[|cRXP_FRIENDLY_Angelaufener Real aus Undermine|r] << sod
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
    .zone Ironforge >>Reist nach |cFFfa9602Eisenschmiede|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Deliana|r
    .accept 8960 >>Akzeptiert die Quest Bodleys Trauriges Schicksal
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>Reist nach |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mokvar|r
    .accept 8960 >>Akzeptiert die Quest Bodleys Trauriges Schicksal
    .target Mokvar
step
    >>|cRXP_BUY_Sammelt die folgenden Gegenstände|r:
    >>|cRXP_WARN_mindestens einen|r |T132873:0|t[Großer glänzender Splitter]
    >>|cRXP_WARN_ein|r |T134821:0|t[Fläschchen mit oberster Macht]
    >>|cRXP_WARN_Kauft es wenn möglich aus dem Auktionshaus|r
    .collect 14344,1,8961,1 --Large Brilliant Shard (x1)
    .collect 13512,1,8994,1 --Flask of Supreme Power (x1)
step
    .reputation 529,honored >>|cRXP_WARN_Erlangt einen Wohlwollenden Ruf bei der Argentumdämmerung|r
step << Alliance
    #completewith next
    .subzone 3197 >>Reist ins Zugwindlager in den |cFFfa9602Westliche Pestländern|r
step << Alliance
    .goto Western Plaguelands,42.84,83.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Argentumrüstmeister Lightspark|r
    >>|cRXP_BUY_Kauft ein|r |T133879:0|t[Geheiligtes Räuchergefäß] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Das kostet 120 Gold|r
    .collect 22014,1,8961,1 --Hallowed Brazier (x1)
    .target Argent Quartermaster Lightspark
step << Horde
    #completewith next
    .subzone 2268 >>Reist zur Kapelle des Hoffnungsvollen Lichts in den |cFFfa9602Die Östlichen Pestländern|r
step << Horde
    .goto Eastern Plaguelands,81.63,60.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rüstmeisterin Miranda Breechlock|r
    >>|cRXP_BUY_Kauft ein|r |T133879:0|t[Geheiligtes Räuchergefäß] |cRXP_BUY_von ihr|r
    >>|cRXP_WARN_Das kostet 120 Gold|r
    .collect 22014,1,8961,1 --Hallowed Brazier (x1)
    .target Quartermaster Miranda Breechlock
step
    #completewith next
    .subzone 254 >>Reist zum |cFFfa9602Der Schwarzfels|r
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .turnin 8960 >>Gebt die Quest Bodleys trauriges Schicksal ab
    .accept 8961 >>Akzeptiert die Quest Die drei Könige der Flammen
    .target Bodley
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Betretet die Obere Schwarzfelsspitze
    >>|cRXP_WARN_Dies ist eine 10er-Instanz. Ihr oder jemand in der Gruppe von Euch muss das folgende haben|r |T133343:0|t[|cRXP_LOOT_Siegel des Aufstiegs|r] |cRXP_WARN_um die Obere Schwarzfelsspitze betreten zu können|r
step
    >>Tötet |cRXP_ENEMY_Feuerwache Glutseher|r. Plündert ihn für das |cRXP_LOOT_Glutsehers Glut|r
    >>|cRXP_WARN_Dies ist der erste Boss in der|r |cFFfa9602Oberen Schwarzfelsspitze|r
    .complete 8961,2 --Ember of Emberseer (x1)
    .mob Pyroguard Emberseer
step
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>Betretet Schwarzfelstiefen
    >>|cRXP_WARN_Stellt sicher, dass ihr eine Gruppe parat habt|r
step
    >>Tötet|cRXP_ENEMY_Lord Incendius|r. Plündert ihn für das |cRXP_LOOT_Incendius' Pyrophor|r
    .complete 8961,1 --Incendicite of Incendius (x1)
    .mob Lord Incendius
step
    #completewith DukeofCynders
    .zone Silithus >>Reist nach |cFFfa9602Silithus|r
step
    #loop
    .goto Silithus,38.31,46.42,0
    .goto Silithus,27.93,30.66,0
    .goto Silithus,20.47,86.11,0
    .goto Silithus,38.31,46.42,80,0
    .goto Silithus,27.93,30.66,80,0
    .goto Silithus,20.47,86.11,80,0
    >>Tötet die |cRXP_ENEMY_Twilight|r Mobs in |cFFfa9602Silithus|r. Plündert sie für ihr |T132658:0|t[|cRXP_FRIENDLY_Twilight Kultist|r] Ausrüstung
    >>|cRXP_WARN_Ihr werdet mehrere|r |T132658:0|t[|cRXP_FRIENDLY_Twighlight kultist|r]-|cRXP_WARN_Sets benötigen. Es wird empfohlen, dass eure Gruppe mindestens 5 Sets hat|r
    >>|cRXP_WARN_Alternativ kauft sie aus dem Auktionshaus|r
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
    .reputation 609,friendly >>Erlangt ein freundlichen Ruf mit dem Zirkel des Cenarius
    >>|cRXP_WARN_Farmt |cRXP_ENEMY_Twilight|r Mobs oder absolviert die Zirkel des Cenarius-Quests in Silithus, um Ruf zu erhalten|r
step
    .goto Silithus,48.62,37.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Huum Wildmane|r
    .accept 8331 >>Akzeptiert die Quest Aurel Goldleaf
    .target Huum Wildmane
    .itemcount 20422,<1
step
    .goto Silithus,51.96,38.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aurel Goldleaf|r
    .turnin 8331 >>Gebt die Quest Aurel Goldleaf ab
    .accept 8332 >>Akzeptiert die Quest Fürsten des Rates
    .target Aurel Goldleaf
    .itemcount 20422,<1
step
    .goto Silithus,38.31,46.42
    .goto Silithus,38.31,46.42,0
    .goto Silithus,27.93,30.66,0
    .goto Silithus,20.47,86.11,0
    >>Reist zu einem |cRXP_PICK_Geringer Windstein|r in einem der drei |cRXP_ENEMY_Twilight|r-Lager. Sie sind auf der Karte markiert
    >>Beschwört |cRXP_ENEMY_Templer|r und tötet sie. Plündert sie um ihre |T133438:0|t[|cRXP_LOOT_Abyssisches Wappen|r] zu erhalten
    >>|cRXP_WARN_Ihr oder jemand in eurer Gruppe muss|r |T132658:0|t[|cRXP_FRIENDLY_Twilightkultist|r]|cRXP_WARN_-Ausrüstung jedes Mal anlegen, um einen|r Templer|cRXP_ENEMY_ zu beschwören|r
    .collect 20513,3 --Abyssal Crest (x3)
    .itemcount 20422,<1
    .mob Earthen Templar
    .mob Crimson Templar
    .mob Hoary Templar
    .mob Azure Templar
step
    .goto Silithus,51.96,38.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aurel Goldleaf|r
    .turnin 8332 >>Gebt die Quest Fürsten des Rates ab
    .target Aurel Goldleaf
    .itemcount 20513,3
step
    .goto Silithus,51.96,38.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aurel Goldleaf|r
    .turnin 8333 >>Gebt die Quest Das Standesmedallion ab
    .target Aurel Goldleaf
    .itemcount 20513,3
step
    #label DukeofCynders
    .goto Silithus,37.67,44.81
    .goto Silithus,37.67,44.81,0
    .goto Silithus,24.74,32.68,0
    .goto Silithus,17.24,84.75,0
    >>Reist zu einem |cRXP_PICK_Windstein|r in einem der drei |cRXP_ENEMY_Twilight|r-Lager. Sie sind auf der Karte markiert
    >>Beschwört |cRXP_ENEMY_Fürst|r bis |cRXP_ENEMY_Der Fürst der Asche|r erscheint |cRXP_WARN_(25% spawn chance)|r. Tötet ihn und plündert ihn für die |cRXP_LOOT_Asche des Fürsten|r
    >>|cRXP_WARN_Ihr oder jemand in Eurer Gruppe muss|r |T133281:0|t[|cRXP_LOOT_Standesmedaillon eines Twilightkultisten|r] |cRXP_WARN_haben und|r |T132658:0|t[|cRXP_FRIENDLY_Twilight Cultist|r]|cRXP_WARN_Ausrüstung anlegen, um einen neuen|r Fürst|cRXP_ENEMY_ zu beschwören|r
    >>|cRXP_WARN_Ihr müsst möglicherweise mehr|r |T133281:0|t[|cRXP_LOOT_Standesmedaillon eines Twilightkultisten|r] |cRXP_WARN_und|r |T132658:0|t[|cRXP_FRIENDLY_Twilight Cultist|r]-|cRXP_WARN_Sets sammeln, falls ihr Pech habt|r
    .complete 8961,3 --Cinder of Cynders (x1)
    .mob The Duke of Cynders
step
    #completewith next
    .subzone 254 >>Reist zum |cFFfa9602Der Schwarzfels|r
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .turnin 8961 >>Gebt die Quest Die drei Könige der Flammen ab
    .acceptmultiple 8962,8963,8964,8965 >>Akzeptiert die Quest Komponenten von großer Wichtigkeit
    .target Bodley
step
    #completewith next
    .subzone 2744 >>Reist zum Bau des Regalschwarms in |cFFfa9602Silithus|r
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
    >>Tötet |cRXP_ENEMY_Regalschwarm|r mobs (elite). Plündert sie für |cRXP_LOOT_Druidenüberreste|r
    >>|cRXP_WARN_Dies hat eine sehr niedrige droprate und kann ziemlich lange dauern. Es wird empfohlen, sie in einer 5er-Gruppe zu farmen|r
    .complete 8962,1 --Druidical Remains (x1)
    .mob Hive'Regal Spitfire
    .mob Hive'Regal Hive Lord
    .mob Hive'Regal Slavemaker
    .mob Hive'Regal Ambusher
    .mob Hive'Regal Burrower
    .isOnQuest 8962
step
    #completewith next
    .subzone 2249 >>Reist nach Frosthauchschlucht in |cFFfa9602Winterquell|r
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
    >>Tötet |cRXP_ENEMY_Frosthagelriesen|r und |cRXP_ENEMY_Frosthagelbewahrer|r (elite). Plündert sie für |cRXP_LOOT_Relikt von Starbreeze|r
    >>|cRXP_WARN_Dies hat eine sehr niedrige droprate und kann ziemlich lange dauern. Es wird empfohlen, sie in einer 5er-Gruppe zu farmen|r
    .complete 8963,1 --Starbreeze Village Relic (x1)
    .mob Frostmaul Giant
    .mob Frostmaul Preserver
    .isOnQuest 8963
step
    #completewith next
    .subzone 2266 >>Reist nach Tyrs Hand in den |cFFfa9602Östlichen Pestländer|r
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
    >>Tötet |cRXP_ENEMY_Scharlachroter Prätorianer|r (elite). Plündert sie für |cRXP_ENEMY_Gleißendes Schwert des Zeloten|r
    >>|cRXP_WARN_Dies hat eine sehr niedrige droprate und kann ziemlich lange dauern. Es wird empfohlen, sie in einer 5er-Gruppe zu farmen|r
    .complete 8964,1 --Brilliant Sword of Zealotry (x1)
    .mob Scarlet Praetorian
    .isOnQuest 8964
step
    #completewith next
    .goto Hillsbrad Foothills,19.67,76.92
    .subzone 896 >>Reist zur Fegefeuerinsel im |cFFfa9602Vorgebirge des Hügellands|r
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
    >>Tötet |cRXP_ENEMY_Untote Geister|r (elite) auf der Insel. Plündert sie für |cRXP_LOOT_Seelenasche der Verbannten|r
    >>|cRXP_WARN_Dies hat eine sehr niedrige droprate und kann ziemlich lange dauern. Es wird empfohlen, sie in einer 5er-Gruppe zu farmen|r
    .complete 8965,1 --Soul Ashes of the Banished (x1)
    .mob Cursed Paladin
    .mob Writhing Mage
    .mob Condemned Acolyte
    .mob Condemned Monk
    .mob Cursed Justicar
    .isOnQuest 8965
step
    #completewith LeftPiecePU
    .subzone 254 >>Reist zum |cFFfa9602Der Schwarzfels|r
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .turnin 8962 >>Gebt Komponenten von großer Wichtigkeit ab
    .target Bodley
    .isQuestComplete 8962
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .turnin 8963 >>Gebt Komponenten von großer Wichtigkeit ab
    .target Bodley
    .isQuestComplete 8963
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .turnin 8964 >>Gebt Komponenten von großer Wichtigkeit ab
    .target Bodley
    .isQuestComplete 8964
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .turnin 8965 >>Gebt Komponenten von großer Wichtigkeit ab
    .target Bodley
    .isQuestComplete 8965
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .acceptmultiple 8966,8967,8968,8969 >>Akzeptiert die Quest Das linke Stück von Lord Valthalaks Amulett
    .target Bodley
    .isQuestTurnedIn 8962
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .acceptmultiple 8966,8967,8968,8969 >>Akzeptiert die Quest Das linke Stück von Lord Valthalaks Amulett
    .target Bodley
    .isQuestTurnedIn 8963
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .acceptmultiple 8966,8967,8968,8969 >>Akzeptiert die Quest Das linke Stück von Lord Valthalaks Amulett
    .target Bodley
    .isQuestTurnedIn 8964
step
    #label LeftPiecePU
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .acceptmultiple 8966,8967,8968,8969 >>Akzeptiert die Quest Das linke Stück von Lord Valthalaks Amulett
    .target Bodley
    .isQuestTurnedIn 8965
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Betretet die Schwarzfelsspitze
    >>|cRXP_WARN_Stellt sicher, dass ihr eine Gruppe parat habt|r
    .isOnQuest 8966
step
    >>Tötet |cRXP_ENEMY_Mor Grayhoof|r. Plündert sie für |T133320:0|t[|cRXP_LOOT_Das linke Stück von Lord Valthalaks Amulett|r]
    .use 22049 >>|cRXP_WARN_Benutzt das|r |T133881:0|t[Räuchergefäß der Beschwörung] |cRXP_WARN_in|r |cRXP_ENEMY_Kriegsmeister Voones|r |cRXP_WARN_Raum, um|r |cRXP_ENEMY_Mor Grauhuf|r zu beschwören
    .complete 8966,1 --Mor Grayhoof Slain (x1)
    .complete 8966,2 --Left Piece of Lord Valthalak's Amulet (x1)
    .mob War Master Voone
    .mob Mor Grayhoof
    .isOnQuest 8966
step
    #completewith next
    .zone Feralas >>Reist nach |cFFfa9602Feralas|r
    .subzoneskip 2557
    .isOnQuest 8967
step
    #completewith next
    .goto Kalimdor,43.84,67.41,20 >>Betretet den östlichen Eingang von Düsterbruch
    >>|cRXP_WARN_Stellt sicher, dass ihr eine Gruppe parat habt|r
    .isOnQuest 8967
step
    >>Tötet |cRXP_ENEMY_Isalien|r. Plündert sie für |T133320:0|t[|cRXP_LOOT_Das linke Stück von Lord Valthalaks Amulett|r]
    .use 22050 >>|cRXP_WARN_Benutzt das|r |T133881:0|t[Räuchergefäß der Beschwörung] |cRXP_WARN_in|r |cRXP_ENEMY_Alzzin der Wildformers|r |cRXP_WARN_Raum|r |cRXP_ENEMY_Isalien|r zu beschwören
    .complete 8967,1 --Isalien slain (x1)
    .complete 8967,2 --Left Piece of Lord Valthalak's Amulet (x1)
    .mob Alzzin the Wildshaper
    .mob Isalien
    .isOnQuest 8967
step
    #completewith next
    .zone Eastern Plaguelands >>Reist in die |cFFfa9602 Östlichen Pestländer|r
    .subzoneskip 2017
    .isOnQuest 8968
step
    #completewith next
    .goto Eastern Kingdoms,55.06,17.51
    .subzone 2017 >>Betretet Stratholme
    >>|cRXP_WARN_Stellt sicher, dass ihr eine Gruppe parat habt|r
    .isOnQuest 8968
step
    >>Tötet |cRXP_ENEMY_Jarien|r und |cRXP_ENEMY_Sothos|r. Plündert sie für |T133320:0|t[|cRXP_LOOT_Das linke Stück von Lord Valthalaks Amulett|r]
    .use 22051 >>|cRXP_WARN_Benutzt|r |T133881:0|t[Räuchergefäß der Beschwörung] |cRXP_WARN_in|r |cRXP_ENEMY_Balnazzar's|r |cRXP_WARN_Raum um|r |cRXP_ENEMY_Jarien|r |cRXP_WARN_und|r |cRXP_ENEMY_Sothos|r zu beschwören
    .complete 8968,1 --Jarien slain (x1)
    .complete 8968,2 --Sothos slain (x1)
    .complete 8968,3 --Left Piece of Lord Valthalak's Amulet (x1)
    .mob Balnazzara
    .mob Jarien
    .mob Sothos
    .isOnQuest 8968
step
    #completewith next
    .zone Western Plaguelands >>Reist in die |cFFfa9602Westlichen Pestländer|r
    .subzoneskip 2057
    .isOnQuest 8969
step
    #completewith next
    .goto Eastern Kingdoms,52.75,26.41
    .subzone 2057 >>Betretet Scholomance
    >>|cRXP_WARN_Stellt sicher, dass ihr eine Gruppe parat habt|r
    .isOnQuest 8969
step
    >>Tötet |cRXP_ENEMY_Kormok|r. Plündert sie für |T133320:0|t[|cRXP_LOOT_Das linke Stück von Lord Valthalaks Amulett|r]
    .use 22052 >>|cRXP_WARN_Benutzt|r |T133881:0|t[Räuchergefäß der Beschwörung] |cRXP_WARN_in|r |cRXP_ENEMY_Ras Frostraunens|r |cRXP_WARN_Raum um|r |cRXP_ENEMY_Kormok|r zu beschwören
    .complete 8969,1 --Kormok slain (x1)
    .complete 8969,2 --Left Piece of Lord Valthalak's Amulet (x1)
    .mob Ras Frostwhisper
    .mob Kormok
    .isOnQuest 8969
step
    #completewith AlcazIslandPU
    .subzone 254 >>Reist zum |cFFfa9602Der Schwarzfels|r
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .turnin 8966 >>Gebt die Quest Das linke Stück von Lord Valthalaks Amulett ab
    .accept 8970 >>Akzeptiert die Quest Ich sehe die Insel Alcaz in Eurer Zukunft...
    .target Bodley
    .isQuestComplete 8966
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .turnin 8967 >>Gebt die Quest Das linke Stück von Lord Valthalaks Amulett ab
    .accept 8970 >>Akzeptiert die Quest Ich sehe die Insel Alcaz in Eurer Zukunft...
    .target Bodley
    .isQuestComplete 8967
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .turnin 8968 >>Gebt die Quest Das linke Stück von Lord Valthalaks Amulett ab
    .accept 8970 >>Akzeptiert die Quest Ich sehe die Insel Alcaz in Eurer Zukunft...
    .target Bodley
    .isQuestComplete 8968
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .turnin 8969 >>Gebt die Quest Das linke Stück von Lord Valthalaks Amulett ab
    .accept 8970 >>Akzeptiert die Quest Ich sehe die Insel Alcaz in Eurer Zukunft...
    .target Bodley
    .isQuestComplete 8969
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .accept 8970 >>Akzeptiert die Quest Ich sehe die Insel Alcaz in Eurer Zukunft...
    .target Bodley
    .isQuestTurnedIn 8966
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .accept 8970 >>Akzeptiert die Quest Ich sehe die Insel Alcaz in Eurer Zukunft...
    .target Bodley
    .isQuestTurnedIn 8967
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .accept 8970 >>Akzeptiert die Quest Ich sehe die Insel Alcaz in Eurer Zukunft...
    .target Bodley
    .isQuestTurnedIn 8968
step
    #label AlcazIslandPU
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .accept 8970 >>Akzeptiert die Quest Ich sehe die Insel Alcaz in Eurer Zukunft...
    .target Bodley
    .isQuestTurnedIn 8969
step
    #completewith next
    .goto Dustwallow Marsh,72.26,18.28
    .subzone 2079 >>Reist nach Die Insel Alcaz in |cFFfa9602Düstermarschen|r
step
    #loop
    .goto Dustwallow Marsh,76.91,18.24,0
    .goto Dustwallow Marsh,74.38,17.99,50,0
    .goto Dustwallow Marsh,74.89,14.68,50,0
    .goto Dustwallow Marsh,74.38,17.99,50,0
    .goto Dustwallow Marsh,76.91,18.24,50,0
    .goto Dustwallow Marsh,76.56,22.15,50,0
    .goto Dustwallow Marsh,75.49,21.75,50,0
    >>Tötet |cRXP_ENEMY_Strashaz Naga|r (elite). Plündert sie für |cRXP_LOOT_Bluttang|r
    >>|cRXP_WARN_Dies hat eine sehr niedrige droprate und kann ziemlich lange dauern. Es wird empfohlen, sie in einer 5er-Gruppe zu farmen|r
    .complete 8970,1 --Bloodkelp (x20)
    .mob Strashaz Warrior
    .mob Strashaz Myrmidon
    .mob Strashaz Siren
    .mob Strashaz Sorceress
    .mob Strashaz Serpent Guard
step
    #completewith next
    .subzone 254 >>Reist zum |cFFfa9602Der Schwarzfels|r
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .turnin 8970 >>Gebt die Quest Ich sehe die Insel Alcaz in Eurer Zukunft ab
    .target Bodley
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .acceptmultiple 8985,8986,8987,8988 >>Akzeptiert die Quest Mehr Komponenten von großer Wichtigkeit
    .target Bodley
    .isQuestTurnedIn 8970
step
    #completewith next
    .subzone 2744 >>Reist zum Bau des Regalschwarms in |cFFfa9602Silithus|r
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
    >>Tötet |cRXP_ENEMY_Regalschwarm|r mobs (elite). Plündert sie für |cRXP_LOOT_Druidenüberreste|r
    >>|cRXP_WARN_Dies hat eine sehr niedrige droprate und kann ziemlich lange dauern. Es wird empfohlen, sie in einer 5er-Gruppe zu farmen|r
    .complete 8986,1 --Druidical Remains (x1)
    .mob Hive'Regal Spitfire
    .mob Hive'Regal Hive Lord
    .mob Hive'Regal Slavemaker
    .mob Hive'Regal Ambusher
    .mob Hive'Regal Burrower
    .isOnQuest 8986
step
    #completewith next
    .subzone 2249 >>Reist nach Frosthauchschlucht in |cFFfa9602Winterquell|r
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
    >>Tötet |cRXP_ENEMY_Frosthagelriesen|r und |cRXP_ENEMY_Frosthagelbewahrer|r (elite). Plündert sie für |cRXP_LOOT_Relikt von Starbreeze|r
    >>|cRXP_WARN_Dies hat eine sehr niedrige droprate und kann ziemlich lange dauern. Es wird empfohlen, sie in einer 5er-Gruppe zu farmen|r
    .complete 8985,1 --Starbreeze Village Relic (x1)
    .mob Frostmaul Giant
    .mob Frostmaul Preserver
    .isOnQuest 8985
step
    #completewith next
    .subzone 2266 >>Reist nach Tyrs Hand in den |cFFfa9602Östlichen Pestländer|r
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
    >>Tötet |cRXP_ENEMY_Scharlachroter Prätorianer|r (elite). Plündert sie für |cRXP_ENEMY_Gleißendes Schwert des Zeloten|r
    >>|cRXP_WARN_Dies hat eine sehr niedrige droprate und kann ziemlich lange dauern. Es wird empfohlen, sie in einer 5er-Gruppe zu farmen|r
    .complete 8987,1 --Brilliant Sword of Zealotry (x1)
    .mob Scarlet Praetorian
    .isOnQuest 8987
step
    #completewith next
    .goto Hillsbrad Foothills,19.67,76.92
    .subzone 896 >>Reist zur Fegefeuerinsel im |cFFfa9602Vorgebirge des Hügellands|r
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
    >>Tötet |cRXP_ENEMY_Untote Geister|r (elite) auf der Insel. Plündert sie für |cRXP_LOOT_Seelenasche der Verbannten|r
    >>|cRXP_WARN_Dies hat eine sehr niedrige droprate und kann ziemlich lange dauern. Es wird empfohlen, sie in einer 5er-Gruppe zu farmen|r
    .complete 8988,1 --Soul Ashes of the Banished (x1)
    .mob Cursed Paladin
    .mob Writhing Mage
    .mob Condemned Acolyte
    .mob Condemned Monk
    .mob Cursed Justicar
    .isOnQuest 8988
step
    #completewith RightPiecePU
    .subzone 254 >>Reist zum |cFFfa9602Der Schwarzfels|r
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .turnin 8985 >>Gebt die Quest Mehr Komponenten von großer Wichtigkeit ab
    .target Bodley
    .isQuestComplete 8985
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .turnin 8986 >>Gebt die Quest Mehr Komponenten von großer Wichtigkeit ab
    .target Bodley
    .isQuestComplete 8986
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .turnin 8987 >>Gebt die Quest Mehr Komponenten von großer Wichtigkeit ab
    .target Bodley
    .isQuestComplete 8987
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .turnin 8988 >>Gebt die Quest Mehr Komponenten von großer Wichtigkeit ab
    .target Bodley
    .isQuestComplete 8988
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .acceptmultiple 8989,8990,8991,8992 >>Akzeptiert die Quest Das rechte Stück von Lord Valthalaks Amulett
    .target Bodley
    .isQuestTurnedIn 8985
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .acceptmultiple 8989,8990,8991,8992 >>Akzeptiert die Quest Das rechte Stück von Lord Valthalaks Amulett
    .target Bodley
    .isQuestTurnedIn 8986
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .acceptmultiple 8989,8990,8991,8992 >>Akzeptiert die Quest Das rechte Stück von Lord Valthalaks Amulett
    .target Bodley
    .isQuestTurnedIn 8987
step
    #label RightPiecePU
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .acceptmultiple 8989,8990,8991,8992 >>Akzeptiert die Quest Das rechte Stück von Lord Valthalaks Amulett
    .target Bodley
    .isQuestTurnedIn 8988
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Betretet die Schwarzfelsspitze
    >>|cRXP_WARN_Stellt sicher, dass ihr eine Gruppe parat habt|r
    .isOnQuest 8989
step
    >>Tötet |cRXP_ENEMY_Mor Grayhoof|r. Plündert ihn für |T133318:0|t[|cRXP_LOOT_Das rechte Stück von Lord Valthalaks Amulett|r]
    .use 22049 >>|cRXP_WARN_Benutzt das|r |T133881:0|t[Räuchergefäß der Beschwörung] |cRXP_WARN_in|r |cRXP_ENEMY_Kriegsmeister Voones|r |cRXP_WARN_Raum, um|r |cRXP_ENEMY_Mor Grauhuf|r zu beschwören
    .complete 8989,1 --Mor Grayhoof Slain (x1)
    .collect 22046,1,8989,1 --Right Piece of Lord Valthalak's Amulet (x1)
    .mob War Master Voone
    .mob Mor Grayhoof
    .isOnQuest 8989
step
    #optional
    .use 22046 >>|cRXP_WARN_Benutzt das|r |T133320:0|t[|cRXP_LOOT_Das linke Stück von Lord Valthalaks Amulett|r]|cRXP_WARN_, |r|T133318:0|t[|cRXP_LOOT_Das rechte Stück von Lord Valthalaks Amulett|r] |cRXP_WARN_und|r |T133316:0|t[|cRXP_LOOT_Das obere Stück von Lord Valthalaks Amulett|r] |cRXP_WARN_um|r |T133314:0|t[|cRXP_LOOT_Lord Valthalaks Amulett|r] herzustellen
    .complete 8989,2 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,1
    .isOnQuest 8989
step
    .use 22046 >>|cRXP_WARN_Benutzt das|r |T133320:0|t[|cRXP_LOOT_Das linke Stück von Lord Valthalaks Amulett|r]|cRXP_WARN_, |r|T133318:0|t[|cRXP_LOOT_Das rechte Stück von Lord Valthalaks Amulett|r] |cRXP_WARN_und|r |T133316:0|t[|cRXP_LOOT_Das obere Stück von Lord Valthalaks Amulett|r] |cRXP_WARN_um|r |T133314:0|t[|cRXP_LOOT_Lord Valthalaks Amulett|r] herzustellen
    >>|cRXP_WARN_Falls ihr das|r |T133316:0|t[|cRXP_LOOT_Obere Stück von Lord Valthalaks Amulett|r]|cRXP_WARN_ verloren habt, sprecht mit|r |cRXP_FRIENDLY_Bodley|r |cRXP_WARN_um es erneut zu erhalten|r
    .complete 8989,2 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,<1
    .isOnQuest 8989
step
    #completewith next
    .zone Feralas >>Reist nach |cFFfa9602Feralas|r
    .subzoneskip 2557
    .isOnQuest 8990
step
    #completewith next
    .goto Kalimdor,43.84,67.41,20 >>Betretet den östlichen Eingang von Düsterbruch
    >>|cRXP_WARN_Stellt sicher, dass ihr eine Gruppe parat habt|r
    .isOnQuest 8990
step
    >>Tötet |cRXP_ENEMY_Isalien|r. Plündert sie für |T133318:0|t[|cRXP_LOOT_Das rechte Stück von Lord Valthalaks Amulett|r]
    .use 22050 >>|cRXP_WARN_Benutzt das|r |T133881:0|t[Räuchergefäß der Beschwörung] |cRXP_WARN_in|r |cRXP_ENEMY_Alzzin der Wildformers|r |cRXP_WARN_Raum|r |cRXP_ENEMY_Isalien|r zu beschwören
    .complete 8990,1 --Isalien slain (x1)
    .collect 22046,1,8990,1 --Right Piece of Lord Valthalak's Amulet (x1)
    .mob Alzzin the Wildshaper
    .mob Isalien
    .isOnQuest 8990
step
    #optional
    .use 22046 >>|cRXP_WARN_Benutzt das|r |T133320:0|t[|cRXP_LOOT_Das linke Stück von Lord Valthalaks Amulett|r]|cRXP_WARN_, |r|T133318:0|t[|cRXP_LOOT_Das rechte Stück von Lord Valthalaks Amulett|r] |cRXP_WARN_und|r |T133316:0|t[|cRXP_LOOT_Das obere Stück von Lord Valthalaks Amulett|r] |cRXP_WARN_um|r |T133314:0|t[|cRXP_LOOT_Lord Valthalaks Amulett|r] herzustellen
    .complete 8990,2 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,1
    .isOnQuest 8990
step
    .use 22046 >>|cRXP_WARN_Benutzt das|r |T133320:0|t[|cRXP_LOOT_Das linke Stück von Lord Valthalaks Amulett|r]|cRXP_WARN_, |r|T133318:0|t[|cRXP_LOOT_Das rechte Stück von Lord Valthalaks Amulett|r] |cRXP_WARN_und|r |T133316:0|t[|cRXP_LOOT_Das obere Stück von Lord Valthalaks Amulett|r] |cRXP_WARN_um|r |T133314:0|t[|cRXP_LOOT_Lord Valthalaks Amulett|r] herzustellen
    >>|cRXP_WARN_Falls ihr das|r |T133316:0|t[|cRXP_LOOT_Obere Stück von Lord Valthalaks Amulett|r]|cRXP_WARN_ verloren habt, sprecht mit|r |cRXP_FRIENDLY_Bodley|r |cRXP_WARN_um es erneut zu erhalten|r
    .complete 8990,2 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,<1
    .isOnQuest 8990
step
    #completewith next
    .zone Eastern Plaguelands >>Reist in die |cFFfa9602Östlichen Pestländer|r
    .subzoneskip 2017
    .isOnQuest 8991
step
    #completewith next
    .goto Eastern Kingdoms,55.06,17.51
    .subzone 2017 >>Betretet Stratholme
    >>|cRXP_WARN_Stellt sicher, dass ihr eine Gruppe parat habt|r
    .isOnQuest 8991
step
    >>Tötet |cRXP_ENEMY_Jarien|r und |cRXP_ENEMY_Sothos|r. Plündert sie für |T133318:0|t[|cRXP_LOOT_Das rechte Stück von Lord Valthalaks Amulett|r]
    .use 22051 >>|cRXP_WARN_Benutzt|r |T133881:0|t[Räuchergefäß der Beschwörung] |cRXP_WARN_in|r |cRXP_ENEMY_Balnazzar's|r |cRXP_WARN_Raum um|r |cRXP_ENEMY_Jarien|r |cRXP_WARN_und|r |cRXP_ENEMY_Sothos|r zu beschwören
    .complete 8991,1 --Jarien slain (x1)
    .complete 8991,2 --Sothos slain (x1)
    .collect 22046,1,8991,1 --Right Piece of Lord Valthalak's Amulet (x1)
    .mob Balnazzara
    .mob Jarien
    .mob Sothos
    .isOnQuest 8991
step
    #optional
    .use 22046 >>|cRXP_WARN_Benutzt das|r |T133320:0|t[|cRXP_LOOT_Das linke Stück von Lord Valthalaks Amulett|r]|cRXP_WARN_, |r|T133318:0|t[|cRXP_LOOT_Das rechte Stück von Lord Valthalaks Amulett|r] |cRXP_WARN_und|r |T133316:0|t[|cRXP_LOOT_Das obere Stück von Lord Valthalaks Amulett|r] |cRXP_WARN_um|r |T133314:0|t[|cRXP_LOOT_Lord Valthalaks Amulett|r] herzustellen
    .complete 8991,3 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,1
    .isOnQuest 8991
step
    .use 22046 >>|cRXP_WARN_Benutzt das|r |T133320:0|t[|cRXP_LOOT_Das linke Stück von Lord Valthalaks Amulett|r]|cRXP_WARN_, |r|T133318:0|t[|cRXP_LOOT_Das rechte Stück von Lord Valthalaks Amulett|r] |cRXP_WARN_und|r |T133316:0|t[|cRXP_LOOT_Das obere Stück von Lord Valthalaks Amulett|r] |cRXP_WARN_um|r |T133314:0|t[|cRXP_LOOT_Lord Valthalaks Amulett|r] herzustellen
    >>|cRXP_WARN_Falls ihr das|r |T133316:0|t[|cRXP_LOOT_Obere Stück von Lord Valthalaks Amulett|r]|cRXP_WARN_ verloren habt, sprecht mit|r |cRXP_FRIENDLY_Bodley|r |cRXP_WARN_um es erneut zu erhalten|r
    .complete 8991,3 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,<1
    .isOnQuest 8991
step
    #completewith next
    .zone Western Plaguelands >>Reist in die |cFFfa9602Westlichen Pestländer|r
    .subzoneskip 2057
    .isOnQuest 8992
step
    #completewith next
    .goto Eastern Kingdoms,52.75,26.41
    .subzone 2057 >>Betretet Scholomance
    >>|cRXP_WARN_Stellt sicher, dass ihr eine Gruppe parat habt|r
    .isOnQuest 8992
step
    >>Tötet |cRXP_ENEMY_Kormok|r. Plündert ihn für |T133318:0|t[|cRXP_LOOT_Das rechte Stück von Lord Valthalaks Amulett|r]
    .use 22052 >>|cRXP_WARN_Benutzt|r |T133881:0|t[Räuchergefäß der Beschwörung] |cRXP_WARN_in|r |cRXP_ENEMY_Ras Frostraunens|r |cRXP_WARN_Raum um|r |cRXP_ENEMY_Kormok|r zu beschwören
    .complete 8992,1 --Kormok slain (x1)
    .collect 22046,1,8992,1 --Right Piece of Lord Valthalak's Amulet (x1)
    .mob Ras Frostwhisper
    .mob Kormok
    .isOnQuest 8992
step
    #optional
    .use 22046 >>|cRXP_WARN_Benutzt das|r |T133320:0|t[|cRXP_LOOT_Das linke Stück von Lord Valthalaks Amulett|r]|cRXP_WARN_, |r|T133318:0|t[|cRXP_LOOT_Das rechte Stück von Lord Valthalaks Amulett|r] |cRXP_WARN_und|r |T133316:0|t[|cRXP_LOOT_Das obere Stück von Lord Valthalaks Amulett|r] |cRXP_WARN_um|r |T133314:0|t[|cRXP_LOOT_Lord Valthalaks Amulett|r] herzustellen
    .complete 8992,2 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,1
    .isOnQuest 8992
step
    .use 22046 >>|cRXP_WARN_Benutzt das|r |T133320:0|t[|cRXP_LOOT_Das linke Stück von Lord Valthalaks Amulett|r]|cRXP_WARN_, |r|T133318:0|t[|cRXP_LOOT_Das rechte Stück von Lord Valthalaks Amulett|r] |cRXP_WARN_und|r |T133316:0|t[|cRXP_LOOT_Das obere Stück von Lord Valthalaks Amulett|r] |cRXP_WARN_um|r |T133314:0|t[|cRXP_LOOT_Lord Valthalaks Amulett|r] herzustellen
    >>|cRXP_WARN_Falls ihr das|r |T133316:0|t[|cRXP_LOOT_Obere Stück von Lord Valthalaks Amulett|r]|cRXP_WARN_ verloren habt, sprecht mit|r |cRXP_FRIENDLY_Bodley|r |cRXP_WARN_um es erneut zu erhalten|r
    .complete 8992,2 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,<1
    .isOnQuest 8992
step
    #completewith FinalPrepPU
    .subzone 254 >>Reist zum |cFFfa9602Der Schwarzfels|r
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .turnin 8989 >>Gebt die Quest Das rechte Stück von Lord Valthalaks Amulett ab
    .accept 8994 >>Akzeptiert die Quest Letzte Vorbereitungen
    .target Bodley
    .isQuestComplete 8989
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .turnin 8990 >>Gebt die Quest Das rechte Stück von Lord Valthalaks Amulett ab
    .accept 8994 >>Akzeptiert die Quest Letzte Vorbereitungen
    .target Bodley
    .isQuestComplete 8990
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .turnin 8991 >>Gebt die Quest Das rechte Stück von Lord Valthalaks Amulett ab
    .accept 8994 >>Akzeptiert die Quest Letzte Vorbereitungen
    .target Bodley
    .isQuestComplete 8991
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .turnin 8992 >>Gebt die Quest Das rechte Stück von Lord Valthalaks Amulett ab
    .accept 8994 >>Akzeptiert die Quest Letzte Vorbereitungen
    .target Bodley
    .isQuestComplete 8992
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .accept 8994 >>Akzeptiert die Quest Letzte Vorbereitungen
    .target Bodley
    .isQuestTurnedIn 8989
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .accept 8994 >>Akzeptiert die Quest Letzte Vorbereitungen
    .target Bodley
    .isQuestTurnedIn 8990
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .accept 8994 >>Akzeptiert die Quest Letzte Vorbereitungen
    .target Bodley
    .isQuestTurnedIn 8991
step
    #label FinalPrepPU
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .accept 8994 >>Akzeptiert die Quest Letzte Vorbereitungen
    .target Bodley
    .isQuestTurnedIn 8992
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Betretet die Schwarzfelsspitze
    >>|cRXP_WARN_Stellt sicher, dass ihr eine Gruppe parat habt|r
step
    >>Tötet die |cRXP_ENEMY_Orcs|r in der Schwarzfelsspitze. Plündert sie für ihre |cRXP_LOOT_Blackrockarmschienen|r
    .complete 8994,1 --Blackrock Bracer (x40)
    --too many .mobs, would cause clutter
step
    >>|cRXP_BUY_sammle ein |r |T134821:0|t[Fläschchen mit oberster Macht]
    >>|cRXP_WARN_Kauft es wenn möglich aus dem Auktionshaus|r
    .collect 13512,1,8994,1 --Flask of Supreme Power (x1)
step
    #completewith next
    .subzone 254 >>Reist zum |cFFfa9602Der Schwarzfels|r
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .turnin 8994 >>Gebt die Quest Letzte Vorbereitungen ab
    .accept 8995 >>Akzeptiert die Quest Mea Culpa, Lord Valthalak
    .target Bodley
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Betretet die Obere Schwarzfelsspitze
    >>|cRXP_WARN_Dies ist eine 10er-Instanz. Ihr oder jemand in der Gruppe von Euch muss das folgende haben|r |T133343:0|t[|cRXP_LOOT_Siegel des Aufstiegs|r] |cRXP_WARN_um die Obere Schwarzfelsspitze betreten zu können|r
step
    .use 22048 >>Tötet |cRXP_ENEMY_Lord Valthalak|r. |cRXP_WARN_dann benutzt|r |T133314:0|t[Lord Valthalaks Amulett] |cRXP_WARN_auf seiner Leiche|r
    .use 22056 >>|cRXP_WARN_Benutzt das|r |T133881:0|t[Räuchergefäß der Beschwörung] |cRXP_WARN_im Raum von|r Der Bestie|cRXP_ENEMY_ Zimmer, um|r |cRXP_WARN_Lord Valthalak|r |cRXP_ENEMY_zu beschwören|r
    .complete 8995,1 --Lord Valthalak slain (x1)
    .complete 8995,2 --Lord Valthalak's Amulet (x1)
    .mob The Beast
    .mob Lord Valthalak
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Geist von Lord Valthalak|r welcher erscheint
    .turnin 8995 >>Gebt die Quest Mea Culpa, Lord Valthalak ab
    .accept 8996 >>Akzeptiert die Quest Rückkehr zu Bodley
    .target Spirit of Lord Valthalak
step
    #completewith next
    .subzone 254 >>Reist zum |cFFfa9602Der Schwarzfels|r
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Benutzt den|r |T133878:0|t[Extradimensionaler Geisterdetektor] |cRXP_WARN_um|r |cRXP_FRIENDLY_Bodley|r zu enthüllen
    .turnin 8996 >>Gebt die Quest Akzeptiert die Quest Rückkehr zu Bodley ab
    .accept 8997 >>Akzeptiert Zurück zum Anfang << Alliance
    .accept 8998 >>Akzeptiert Zurück zum Anfang << Horde
    .target Bodley
step << Alliance
    #completewith next
    .zone Ironforge >>Reist nach |cFFfa9602Eisenschmiede|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Deliana|r
    .turnin 8997 >>Gebt die Quest Zurück zum Anfang ab
    .accept 8999 >>Akzeptiert Das Beste gibt's zum Schluss << Druid
    .accept 9000 >>Akzeptiert Das Beste gibt's zum Schluss << Hunter
    .accept 9001 >>Akzeptiert Das Beste gibt's zum Schluss << Mage
    .accept 9002 >>Akzeptiert Das Beste gibt's zum Schluss << Paladin
    .accept 9003 >>Akzeptiert Das Beste gibt's zum Schluss << Priest
    .accept 9004 >>Akzeptiert Das Beste gibt's zum Schluss << Rogue
    .accept 9005 >>Akzeptiert Das Beste gibt's zum Schluss << Warlock
    .accept 9006 >>Akzeptiert Das Beste gibt's zum Schluss << Warrior
    .target Deliana
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Deliana|r
    >>Ihr benötigt |T133129:0|t[|cRXP_LOOT_Kutte des Wildherzens|r] und |T132741:0|t[|cRXP_LOOT_Weste des Wildherzens|r], um diese Quest abzugeben << Druid
    >>Ihr benötigt |T133126:0|t[|cRXP_LOOT_Bestienjägerkappe|r] und |T132625:0|t[|cRXP_LOOT_Bestienjägertunika|r], um diese Quest abzugeben <<  Hunter
    >>Ihr benötigt |T132768:0|t[|cRXP_LOOT_Krone des Magisters|r] und |T132666:0|t[|cRXP_LOOT_Roben des Magisters|r], um diese Quest abzugeben << Mage
    >>Ihr braucht |T133076:0|t[|cRXP_LOOT_Helm des Lichts|r] und |T132738:0|t[|cRXP_LOOT_Brustplatte des Lichts|r], um diese Quest abzugeben << Paladin
    >>Ihr benötigt |T132767:0|t[|cRXP_LOOT_Krone des Gläubigen|r] und |T132652:0|t[|cRXP_LOOT_Robe des Gläubigen|r] um diese Quest abzugeben << Priest
    >>Ihr benötigt |T133143:0|t[|cRXP_LOOT_Kappe der Schattenkunst|r] und |T132722:0|t[|cRXP_LOOT_Tunika der Schattenkunst|r], um diese Quest abzugeben << Rogue
    >>Ihr benötigt |T133131:0|t[|cRXP_LOOT_Maske der Furcht|r] und |T132690:0|t[|cRXP_LOOT_Robe der Furcht|r] zum Abgeben dieser Quest << Warlock
    >>Ihr benötigt |T133070:0|t[|cRXP_LOOT_Helm der Ehre|r] und |T132738:0|t[|cRXP_LOOT_Brustplatte der Ehre|r] zum Abgeben dieser Quest << Warrior
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
    .turnin 8999 >>Gebt Das Beste gibt's zum Schluss ab << Druid
    .turnin 9000 >>Gebt Das Beste gibt's zum Schluss ab << Hunter
    .turnin 9001 >>Gebt Das Beste gibt's zum Schluss ab << Mage
    .turnin 9002 >>Gebt Das Beste gibt's zum Schluss ab << Paladin
    .turnin 9003 >>Gebt Das Beste gibt's zum Schluss ab << Priest
    .turnin 9004 >>Gebt Das Beste gibt's zum Schluss ab << Rogue
    .turnin 9005 >>Gebt Das Beste gibt's zum Schluss ab << Warlock
    .turnin 9006 >>Gebt Das Beste gibt's zum Schluss ab << Warrior
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>Reist nach |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mokvar|r
    .turnin 8998 >>Gebt die Quest Zurück zum Anfang ab
    .accept 9007 >>Akzeptiert Das Beste gibt's zum Schluss << Druid
    .accept 9008 >>Akzeptiert Das Beste gibt's zum Schluss << Hunter
    .accept 9009 >>Akzeptiert Das Beste gibt's zum Schluss << Priest
    .accept 9010 >>Akzeptiert Das Beste gibt's zum Schluss << Rogue
    .accept 9011 >>Akzeptiert Das Beste gibt's zum Schluss << Shaman
    .accept 9012 >>Akzeptiert Das Beste gibt's zum Schluss << Warlock
    .accept 9013 >>Akzeptiert Das Beste gibt's zum Schluss << Warrior
    .accept 9014 >>Akzeptiert Das Beste gibt's zum Schluss << Mage
    .target Mokvar
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mokvar|r
    >>Ihr benötigt |T133129:0|t[|cRXP_LOOT_Kutte des Wildherzens|r] und |T132741:0|t[|cRXP_LOOT_Weste des Wildherzens|r] um diese Quest abzugeben << Druid
    >>Ihr benötigt |T133126:0|t[|cRXP_LOOT_Bestienjägerkappe|r] und |T132625:0|t[|cRXP_LOOT_Bestienjägertunika|r] um diese Quest abzugeben <<  Hunter
    >>Ihr benötigt |T132768:0|t[|cRXP_LOOT_Krone des Magisters|r] und |T132666:0|t[|cRXP_LOOT_Roben des Magisters|r], um diese Quest abzugeben << Mage
    >>Ihr benötigt |T132767:0|t[|cRXP_LOOT_Krone des Gläubigen|r] und |T132652:0|t[|cRXP_LOOT_Robe des Gläubigen|r] um diese Quest abzugeben << Priest
    >>Ihr benötigt |T133143:0|t[|cRXP_LOOT_Kappe der Schattenkunst|r] und |T132722:0|t[|cRXP_LOOT_Tunika der Schattenkunst|r], um diese Quest abzugeben << Rogue
    >>Ihr benötigt |T133072:0|t[|cRXP_LOOT_Helmkappe der Elemente|r] und |T132633:0|t[|cRXP_LOOT_Weste der Elemente|r] um diese Quest abzugeben << Shaman
    >>Ihr benötigt |T133131:0|t[|cRXP_LOOT_Maske der Furcht|r] und |T132690:0|t[|cRXP_LOOT_Robe der Furcht|r] zum Abgeben dieser Quest << Warlock
    >>Ihr benötigt |T133070:0|t[|cRXP_LOOT_Helm der Ehre|r] und |T132738:0|t[|cRXP_LOOT_Brustplatte der Ehre|r] zum Abgeben dieser Quest << Warrior
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
    .turnin 9007 >>Gebt Das Beste gibt's zum Schluss ab << Druid
    .turnin 9008 >>Gebt Das Beste gibt's zum Schluss ab << Hunter
    .turnin 9009 >>Gebt Das Beste gibt's zum Schluss ab << Priest
    .turnin 9010 >>Gebt Das Beste gibt's zum Schluss ab << Rogue
    .turnin 9011 >>Gebt Das Beste gibt's zum Schluss ab << Shaman
    .turnin 9012 >>Gebt Das Beste gibt's zum Schluss ab << Warlock
    .turnin 9013 >>Gebt Das Beste gibt's zum Schluss ab << Warrior
    .turnin 9014 >>Gebt Das Beste gibt's zum Schluss ab << Mage
    .target Mokvar

]])
