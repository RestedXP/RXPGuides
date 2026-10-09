if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#classic
#tbc
#group Guias de Fim de Jogo
#subgroup Guia do Feralheart Set << Druid
#subgroup Guia do Conjunto Senhor das Feras << Hunter
#subgroup Guia do Conjunto do Feiticeiro << Mage
#subgroup Guia do Conjunto da Forja da Alma << Paladin
#subgroup Guia do Conjunto da Manta Negra << Rogue
#subgroup Guia do Conjunto dos Cinco Trovões << Shaman
#subgroup Guia do Conjunto da Mortalha << Warlock
#subgroup Guia do Conjunto de Heroísmo << Warrior
#subgroup Guia do Conjunto da Virtude << Priest
#name Parte 1: Braçadeiras
#next Parte 2: Cinto e Luvas


step
    >>Obtenha as |T132608:0|t[|cRXP_LOOT_Braçadeiras do Coração Selvagem|r]. Este é um drop de Vincular ao Equipar em |cFFfa9602Stratholme|r << Druid
    >>Obtenha as |T132616:0|t[|cRXP_LOOT_Braceletes do Espreitador de Feras|r]. Este é um drop de Vincular ao Equipar em |cFFfa9602Stratholme|r e em |cFFfa9602Blackrock Spire|r << Hunter
    >>Obtenha as |T133365:0|t[|cRXP_LOOT_Braceletes do Magíster|r]. Este é um drop de Vincular ao Equipar em |cFFfa9602Blackrock Spire|r << Mage
    >>Obtenha as |T132613:0|t[|cRXP_LOOT_Braçadeiras da Forja de Luz|r]. Este é um drop de Vincular ao Equipar em |cFFfa9602Stratholme|r << Paladin
    >>Obtenha as |T132520:0|t[|cRXP_LOOT_Braçadeiras do Devoto|r]. Este é um drop de Vincular ao Equipar em |cFFfa9602Stratholme|r << Priest
    >>Obtenha as |T132606:0|t[|cRXP_LOOT_Braçadeiras da Arte Sombria|r]. Este é um drop de Vincular ao Equipar em |cFFfa9602Scolomântia|r << Rogue
    >>Obtenha as |T132601:0|t[|cRXP_LOOT_Braceletes dos Elementos|r]. Este é um drop de Vincular ao Equipar em |cFFfa9602Stratholme|r << Shaman
    >>Obtenha as |T132612:0|t[|cRXP_LOOT_Braçadeiras de Brumedo|r]. Este é um drop de Vincular ao Equipar em |cFFfa9602Blackrock Spire|r << Warlock
    >>Obtenha as |T132617:0|t[|cRXP_LOOT_Braçadeiras do Bravura|r]. Este é um drop de Vincular ao Equipar em |cFFfa9602Blackrock Spire|r << Warrior
    >>|cRXP_WARN_Alternativamente compre-os da Casa de Leilões << !sod
    >>|cRXP_WARN_Alternativamente compre-os da Casa de Leilões ou de |cRXP_FRIENDLY_Pix Xizzix|r em Booty Bay em troca de|r |T133799:0|t[|cRXP_FRIENDLY_Tarnished Inframina Real|r] << sod
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
    .zone Ironforge >>Vá para |cFFfa9602Ironforge|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Deliana|r
    .accept 8905 >>Aceite Uma Proposta Sincera << Druid
    .accept 8906 >>Aceite Uma Proposta Sincera << Hunter
    .accept 8907 >>Aceite Uma Proposta Sincera << Mage
    .accept 8908 >>Aceite Uma Proposta Sincera << Paladin
    .accept 8909 >>Aceite Uma Proposta Sincera << Priest
    .accept 8910 >>Aceite Uma Proposta Sincera << Rogue
    .accept 8911 >>Aceite Uma Proposta Sincera << Warlock
    .accept 8912 >>Aceite Uma Proposta Sincera << Warrior
    .target Deliana
step << Alliance
    #completewith next
    .zone Winterspring >>Vá para |cFFfa9602Hibérnia|r
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
    >>Mate todos os |cRXP_ENEMY_Shardtooth Ursos|r e |cRXP_ENEMY_Frostsabers|r. Saque-os para obter |cRXP_LOOT_Winterspring Sanguíneo Samples|r
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
    .zone Ironforge >>Vá para |cFFfa9602Ironforge|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Deliana|r
    >>|cRXP_WARN_Você precisará de 20 ouro e|r |T132608:0|t[|cRXP_LOOT_Braçadeiras do Coração Selvagem|r] |cRXP_WARN_para entregar esta missão|r << Druid
    >>|cRXP_WARN_Você precisará de 20 ouro e|r |T132616:0|t[|cRXP_LOOT_Braceletes do Espreitador de Feras|r] |cRXP_WARN_para entregar esta missão|r << Hunter
    >>|cRXP_WARN_Você precisará de 20 ouro e|r |T133365:0|t[|cRXP_LOOT_Braceletes do Magíster|r] |cRXP_WARN_para entregar esta missão|r << Mage
    >>|cRXP_WARN_Você precisará de 20 ouro e|r |T132613:0|t[|cRXP_LOOT_Braçadeiras da Forja de Luz|r] |cRXP_WARN_para entregar esta missão|r << Paladin
    >>|cRXP_WARN_Você precisará de 20 ouro e|r |T132520:0|t[|cRXP_LOOT_Braçadeiras do Devoto|r] |cRXP_WARN_para entregar esta missão|r << Priest
    >>|cRXP_WARN_Você precisará de 20 ouro e|r |T132606:0|t[|cRXP_LOOT_Braçadeiras da Arte Sombria|r] |cRXP_WARN_para entregar esta missão|r << Rogue
    >>|cRXP_WARN_Você precisará de 20 ouro e|r |T132612:0|t[|cRXP_LOOT_Braçadeiras de Brumedo|r] |cRXP_WARN_para entregar esta missão|r << Warlock
    >>|cRXP_WARN_Você precisará de 20 ouro e|r |T132617:0|t[|cRXP_LOOT_Braçadeiras do Bravura|r] |cRXP_WARN_para entregar esta missão|r << Warrior
    .collect 16714,1,8905,1 << Druid --Wildheart Bracers (x1)
    .collect 16681,1,8906,1 << Hunter --Beaststalker's Bindings (x1)
    .collect 16683,1,8907,1 << Mage --Magister's Bindings (x1)
    .collect 16722,1,8908,1 << Paladin --Lightforge Bracers (x1)
    .collect 16697,1,8909,1 << Priest --Devout Bracers (x1)
    .collect 16710,1,8910,1 << Rogue --Shadowcraft Bracers (x1)
    .collect 16703,1,8911,1 << Warlock --Dreadmist Bracers (x1)
    .collect 16735,1,8912,1 << Warrior --Bracers of Valor (x1)
    .turnin 8905 >>Entregue Uma Proposta Sincera << Druid
    .turnin 8906 >>Entregue Uma Proposta Sincera << Hunter
    .turnin 8907 >>Entregue Uma Proposta Sincera << Mage
    .turnin 8908 >>Entregue Uma Proposta Sincera << Paladin
    .turnin 8909 >>Entregue Uma Proposta Sincera << Priest
    .turnin 8910 >>Entregue Uma Proposta Sincera << Rogue
    .turnin 8911 >>Entregue Uma Proposta Sincera << Warlock
    .turnin 8912 >>Entregue Uma Proposta Sincera << Warrior
    .accept 8922 >>Aceite Um Dispositivo Sobrenatural
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>Voe para |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mokvar|r
    .accept 8913 >>Aceite Uma Proposta Sincera << Druid
    .accept 8914 >>Aceite Uma Proposta Sincera << Hunter
    .accept 8915 >>Aceite Uma Proposta Sincera << Mage
    .accept 8916 >>Aceite Uma Proposta Sincera << Priest
    .accept 8917 >>Aceite Uma Proposta Sincera << Rogue
    .accept 8918 >>Aceite Uma Proposta Sincera << Shaman
    .accept 8919 >>Aceite Uma Proposta Sincera << Warlock
    .accept 8920 >>Aceite Uma Proposta Sincera << Warrior
    .target Mokvar
step << Horde
    #completewith next
    .zone Silithus >>Voe para |cFFfa9602Silithus|r
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
    >>Mate todos os tipos de |cRXP_ENEMY_Aranhas|r e |cRXP_ENEMY_Scorpids|r. Saqueie-os para obter |cRXP_LOOT_Silithus Venenom Samples|r
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
    .zone Orgrimmar >>Voe para |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mokvar|r
    >>|cRXP_WARN_Você precisará de 20 ouro e|r |T132608:0|t[|cRXP_LOOT_Braçadeiras do Coração Selvagem|r] |cRXP_WARN_para entregar esta missão|r << Druid
    >>|cRXP_WARN_Você precisará de 20 ouro e|r |T132616:0|t[|cRXP_LOOT_Braceletes do Espreitador de Feras|r] |cRXP_WARN_para entregar esta missão|r << Hunter
    >>|cRXP_WARN_Você precisará de 20 ouro e|r |T133365:0|t[|cRXP_LOOT_Braceletes do Magíster|r] |cRXP_WARN_para entregar esta missão|r << Mage
    >>|cRXP_WARN_Você precisará de 20 ouro e|r |T132520:0|t[|cRXP_LOOT_Braçadeiras do Devoto|r] |cRXP_WARN_para entregar esta missão|r << Priest
    >>|cRXP_WARN_Você precisará de 20 ouro e|r |T132606:0|t[|cRXP_LOOT_Braçadeiras da Arte Sombria|r] |cRXP_WARN_para entregar esta missão|r << Rogue
    >>|cRXP_WARN_Você precisará de 20 ouro e|r |T132601:0|t[|cRXP_LOOT_Braceletes dos Elementos|r] |cRXP_WARN_para entregar esta missão|r << Shaman
    >>|cRXP_WARN_Você precisará de 20 ouro e|r |T132612:0|t[|cRXP_LOOT_Braçadeiras de Brumedo|r] |cRXP_WARN_para entregar esta missão|r << Warlock
    >>|cRXP_WARN_Você precisará de 20 ouro e|r |T132617:0|t[|cRXP_LOOT_Braçadeiras do Bravura|r] |cRXP_WARN_para entregar esta missão|r << Warrior
    .collect 16714,1,8913,1 << Druid --Wildheart Bracers (x1)
    .collect 16681,1,8914,1 << Hunter --Beaststalker's Bindings (x1)
    .collect 16683,1,8915,1 << Mage --Magister's Bindings (x1)
    .collect 16697,1,8916,1 << Priest --Devout Bracers (x1)
    .collect 16710,1,8917,1 << Rogue --Shadowcraft Bracers (x1)
    .collect 16671,1,8918,1 << Shaman --Bindings of Elements (x1)
    .collect 16703,1,8919,1 << Warlock --Dreadmist Bracers (x1)
    .collect 16735,1,8920,1 << Warrior --Bracers of Valor (x1)
    .turnin 8913 >>Entregue Uma Proposta Sincera << Druid
    .turnin 8914 >>Entregue Uma Proposta Sincera << Hunter
    .turnin 8915 >>Entregue Uma Proposta Sincera << Mage
    .turnin 8916 >>Entregue Uma Proposta Sincera << Priest
    .turnin 8917 >>Entregue Uma Proposta Sincera << Rogue
    .turnin 8918 >>Entregue Uma Proposta Sincera << Shaman
    .turnin 8919 >>Entregue Uma Proposta Sincera << Warlock
    .turnin 8920 >>Entregue Uma Proposta Sincera << Warrior
    .accept 8923 >>Aceite Um Dispositivo Sobrenatural
    .target Mokvar

    ]])


RXPGuides.RegisterGuide([[
#classic
#tbc
#group Guias de Fim de Jogo
#subgroup Guia do Feralheart Set << Druid
#subgroup Guia do Conjunto Senhor das Feras << Hunter
#subgroup Guia do Conjunto do Feiticeiro << Mage
#subgroup Guia do Conjunto da Forja da Alma << Paladin
#subgroup Guia do Conjunto da Manta Negra << Rogue
#subgroup Guia do Conjunto dos Cinco Trovões << Shaman
#subgroup Guia do Conjunto da Mortalha << Warlock
#subgroup Guia do Conjunto de Heroísmo << Warrior
#subgroup Guia do Conjunto da Virtude << Priest
#name Parte 2: Cinto e Luvas
#next Parte 3: Calças, Ombros e Botas


step
    #optional
    +|cRXP_WARN_Você deve completar a Parte 1: Braçadeiras antes de começar este passo do guia|r
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
    >>Obtenha o |T132504:0|t[|cRXP_LOOT_Cinto do Coração Selvagem|r]. Este é um item Vinculado ao Equipar que cai em |cFFfa9602Scolomântia|r e |cFFfa9602Blackrock Spire|r << Druid
    >>Obtenha o |T132517:0|t[|cRXP_LOOT_Cinto do Espreitador de Feras|r]. Este é um item Vinculado ao Equipar que cai em |cFFfa9602Blackrock Spire|r << Hunter
    >>Obtenha o |T132497:0|t[|cRXP_LOOT_Cinto do Magíster|r]. Este é um drop Vincular-ao-Equipar em |cFFfa9602Stratholme|r e |cFFfa9602Blackrock Spire|r << Mage
    >>Obtenha o |T132500:0|t[|cRXP_LOOT_Cinto da Forja de Luz|r]. Este é um drop Vincular-ao-Equipar em |cFFfa9602Stratholme|r << Paladin
    >>Obtenha o |T132499:0|t[|cRXP_LOOT_Cinto do Devoto|r]. Este é um drop Vincular-ao-Equipar em |cFFfa9602Blackrock Spire|r << Priest
    >>Obtenha o |T132492:0|t[|cRXP_LOOT_Cinto da Arte Sombria|r]. Este é um drop Vincular-ao-Equipar em |cFFfa9602Blackrock Spire|r << Rogue
    >>Obtenha o |T132505:0|t[|cRXP_LOOT_Cordão dos Elementos|r]. Este é um drop Vincular-ao-Equipar em |cFFfa9602Blackrock Spire|r << Shaman
    >>Obtenha o |T132501:0|t[|cRXP_LOOT_Cinto de Brumedo|r]. Este é um drop Vincular-ao-Equipar em |cFFfa9602Stratholme|r << Warlock
    >>Obtenha o |T132523:0|t[|cRXP_LOOT_Cinto do Bravura|r]. Este é um drop Vincular-ao-Equipar em |cFFfa9602Blackrock Spire|r e |cFFfa9602Stratholme|r << Warrior
    >>|cRXP_WARN_Alternativamente compre-os da Casa de Leilões << !sod
    >>|cRXP_WARN_Alternativamente compre-os da Casa de Leilões ou de |cRXP_FRIENDLY_Pix Xizzix|r em Booty Bay em troca de|r |T133799:0|t[|cRXP_FRIENDLY_Tarnished Inframina Real|r] << sod
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
    >>Obtenha o |T132951:0|t[|cRXP_LOOT_Luvas do Coração Selvagem|r]. Este é um drop Vincular-ao-Equipar em |cFFfa9602Stratholme|r << Druid
    >>Obtenha o |T132944:0|t[|cRXP_LOOT_Luvas do Espreitador de Feras|r]. Este é um drop Vincular-ao-Equipar em |cFFfa9602Blackrock Spire|r << Hunter
    >>Obtenha o |T132951:0|t[|cRXP_LOOT_Luvas do Magíster|r]. Este é um drop Vincular-ao-Equipar em |cFFfa9602Scolomântia|r << Mage
    >>Obtenha o |T132953:0|t[|cRXP_LOOT_Manoplas da Forja de Luz|r]. Este é um drop Vincular-ao-Equipar em |cFFfa9602Stratholme|r << Paladin
    >>Obtenha o |T132948:0|t[|cRXP_LOOT_Luvas do Devoto|r]. Este é um drop Vincular-ao-Equipar em |cFFfa9602Stratholme|r << Priest
    >>Obtenha o |T132958:0|t[|cRXP_LOOT_Luvas da Arte Sombria|r]. Este é um drop Vincular-ao-Equipar em |cFFfa9602Blackrock Spire|r << Rogue
    >>Obtenha o |T132945:0|t[|cRXP_LOOT_Manoplas dos Elementos|r]. Este é um drop Vincular-ao-Equipar em |cFFfa9602Pico da Rocha Negra Superior|r << Shaman
    >>Obtenha o |T132966:0|t[|cRXP_LOOT_Guarda-braços de Brumedo|r]. Este é um drop Vincular-ao-Equipar em |cFFfa9602Scolomântia|r << Warlock
    >>Obtenha o |T132960:0|t[|cRXP_LOOT_Manoplas do Bravura|r]. Este é um drop Vincular-ao-Equipar em |cFFfa9602Stratholme|r << Warrior
    >>|cRXP_WARN_Alternativamente compre-os da Casa de Leilões << !sod
    >>|cRXP_WARN_Alternativamente compre-os da Casa de Leilões ou de |cRXP_FRIENDLY_Pix Xizzix|r em Booty Bay em troca de|r |T133799:0|t[|cRXP_FRIENDLY_Tarnished Inframina Real|r] << sod
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
    >>|cRXP_BUY_Coletar os seguintes itens|r:
    >>|T133001:0|t[Delicate Arcanite Converters] |cRXP_WARN_são feitos por engenheiros|r
    >>|T132864:0|t[|cRXP_FRIENDLY_Greater Eternal Essences|r] |cRXP_WARN_são obtidos por encantadores|r
    >>|T134848:0|t[Óleo de Petrescama] |cRXP_WARN_é feito por alquimistas|r
    >>|T132621:0|t[Combustível de Foguete Goblínico] |cRXP_WARN_é feito por engenheiros|r
    >>|cRXP_WARN_Compre-os da Casa de Leilões se possível|r
    .collect 16006,1,8921,1 --Delicate Arcanite Converter (x1)
    .collect 16203,4,8921,1 --Greater Eternal Essence (x4)
    .collect 13423,10,8921,1 --Stonescale Oil (x10)
    .collect 9061,6,8924,1 --Goblin Rocket Fuel (x6)
step << Alliance
    #completewith next
    .zone Ironforge >>Vá para |cFFfa9602Ironforge|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Deliana|r
    .accept 8922 >>Aceite Um Dispositivo Sobrenatural
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>Voe para |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mokvar|r
    .accept 8923 >>Aceite Um Dispositivo Sobrenatural
    .target Mokvar
step
    #completewith next
    .subzone 976 >>Viaje para Gadgetzan em |cFFfa9602Tanaris|r
step
    .goto Tanaris,52.47,27.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mux Zoamana|r
    .turnin 8922 >>Entregue Um Dispositivo Sobrenatural << Alliance
    .turnin 8923 >>Entregue Um Dispositivo Sobrenatural << Horde
    .accept 8921 >>Aceite The Destilador Ectoplásmico
    .target Mux Manascrambler
step
    #completewith next
    .zone Burning Steppes >>Voe para |cFFfa9602Estepes Ardentes|r
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
    >>Saque |cRXP_LOOT_Volcanic Cinza|r no chão
    >>|cRXP_WARN_Parecem grandes pilhas de terra cinzenta e podem ser encontradas principalmente em Estepes Ardentes do Norte entre poços de lava e rios|r
    .collect 22338,25,8921,1 --Volcanic Ash (x25)
step
    >>|cRXP_BUY_Coletar os seguintes itens|r:
    >>|T133001:0|t[Delicate Arcanite Converters] |cRXP_WARN_são feitos por engenheiros|r
    >>|T132864:0|t[|cRXP_FRIENDLY_Greater Eternal Essences|r] |cRXP_WARN_são obtidos por encantadores|r
    >>|T134848:0|t[Óleo de Petrescama] |cRXP_WARN_é feito por alquimistas|r
    >>|T132621:0|t[Combustível de Foguete Goblínico] |cRXP_WARN_é feito por engenheiros|r
    >>|cRXP_WARN_Compre-os da Casa de Leilões se possível|r
    .collect 16006,1,8921,1 --Delicate Arcanite Converter (x1)
    .collect 16203,4,8921,1 --Greater Eternal Essence (x4)
    .collect 13423,10,8921,1 --Stonescale Oil (x10)
    .collect 9061,6,8924,1 --Goblin Rocket Fuel (x6)
step
    #completewith next
    .subzone 976 >>Viaje para Gadgetzan em |cFFfa9602Tanaris|r
step
    .goto Tanaris,52.47,27.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mux Zoamana|r
    >>|cRXP_WARN_Você precisará de 40 de ouro para entregar esta missão|r
    .turnin 8921 >>Entregue The Destilador Ectoplásmico
    .accept 8924 >>Aceite Caçando Ectoplasma
    .target Mux Manascrambler
step
    #optional
    >>|cRXP_WARN_Colete pelo menos 3|r |T132621:0|t[Combustível de Foguete Goblínico]|cRXP_WARN_. É feito por engenheiros|r
    >>|cRXP_WARN_Compre-os da Casa de Leilões se possível|r
    .collect 9061,3,8924,1 --Goblin Rocket Fuel (x3)
step
    #completewith next
    .subzone 2738 >>Voe para Southwind Village em |cFFfa9602Silithus|r
step
    #completewith next
    .cast 27433 >>|cRXP_WARN_Coloque o|r |T133882:0|t[Destilador Ectoplásmico] |cRXP_WARN_no chão. Dura 5 minutos|r
    .use 21946 >>|cRXP_WARN_Um|r |T132621:0|t[Combustível de Foguete Goblínico] |cRXP_WARN_é necessário cada vez que você usa o|r |T133882:0|t[Destilador Ectoplásmico]
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
    >>Mate os |cRXP_ENEMY_Druidas Torturados|r e as |cRXP_ENEMY_Sentinelas Torturadas|r. Saque-os para obter seus |cRXP_LOOT_Ectoplasms Calcinados|r
    >>|cRXP_WARN_Puxe-os para o|r |T133882:0|t[Destilador Ectoplásmico] |cRXP_WARN_conforme você os mata|r
    .complete 8924,1 --Scorched Ectoplasm (x12)
	.mob Tortured Druid
	.mob Tortured Sentinel
step
    #completewith next
    .zone Winterspring >>Vá para |cFFfa9602Hibérnia|r
step
    #completewith next
    .cast 27433 >>|cRXP_WARN_Coloque o|r |T133882:0|t[Destilador Ectoplásmico] |cRXP_WARN_no chão. Dura 5 minutos|r
    .use 21946 >>|cRXP_WARN_Um|r |T132621:0|t[Combustível de Foguete Goblínico] |cRXP_WARN_é necessário cada vez que você usa o|r |T133882:0|t[Destilador Ectoplásmico]
step
    #loop
    .goto Winterspring,55.42,43.41,0
    .goto Winterspring,53.29,43.82,0
    .goto Winterspring,52.60,40.59,0
    .goto Winterspring,55.42,43.41,50,0
    .goto Winterspring,53.29,43.82,50,0
    .goto Winterspring,52.60,40.59,50,0
    >>Mate os |cRXP_ENEMY_Altaneiro Sofredor|r e os |cRXP_ENEMY_Altaneiro Angustiado|r. Saqueie-os para obter seus |cRXP_LOOT_Ectoplasmas Congelados|r
    >>|cRXP_WARN_Puxe-os para o|r |T133882:0|t[Destilador Ectoplásmico] |cRXP_WARN_conforme você os mata|r
    .complete 8924,2 --Frozen Ectoplasm (x12)
    .mob Suffering Highborne
    .mob Anguished Highborne
step
    #completewith FelElemRod
    .subzone 2256 >>Voe para Garganta do Sussurro Sombrio em |cFFfa9602Hibérnia|r
step
    #hardcore
    #completewith next
    +|cRXP_WARN_Cuidado! Você encontrará inimigos nível 60 no caminho para|r |cRXP_FRIENDLY_Vi'el|r|cRXP_WARN_. Evite-os o máximo possível|r
step
    #label FelElemRod
    .goto Winterspring,58.87,78.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vi'el|r
    >>|cRXP_BUY_Compre um|r |T135155:0|t[|cRXP_LOOT_Fel Elemental Rod|r] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Isto custará 40 ouro|r
    .collect 21939,1,8928,1 --Fel Elemental Rod (x1)
    .target Vi'el
step
    #optional
    >>|cRXP_WARN_Colete pelo menos 2|r |T132621:0|t[Combustível de Foguete Goblínico]|cRXP_WARN_. É feito por engenheiros|r
    >>|cRXP_WARN_Compre-os da Casa de Leilões se possível|r
    .collect 9061,2,8924,1 --Goblin Rocket Fuel (x2)
step
    #completewith next
    .subzone 2264 >>Voe para Corin's Crossing em |cFFfa9602Terras Pestilentas Orientais|r
step
    #completewith next
    .cast 27433 >>|cRXP_WARN_Coloque o|r |T133882:0|t[Destilador Ectoplásmico] |cRXP_WARN_no chão. Dura 5 minutos|r
    .use 21946 >>|cRXP_WARN_Um|r |T132621:0|t[Combustível de Foguete Goblínico] |cRXP_WARN_é necessário cada vez que você usa o|r |T133882:0|t[Destilador Ectoplásmico]
step
    #loop
    .goto Eastern Plaguelands,60.67,67.35,0
    .goto Eastern Plaguelands,60.67,67.35,50,0
    .goto Eastern Plaguelands,58.55,70.50,50,0
    >>Mate os |cRXP_ENEMY_Serviçais Ocultos|r e os |cRXP_ENEMY_Gritadores do Ódio|r. Saque-os para obter seus |cRXP_LOOT_Ectoplasms Estáveis|r
    >>|cRXP_WARN_Puxe-os para o|r |T133882:0|t[Destilador Ectoplásmico] |cRXP_WARN_conforme você os mata|r
    .complete 8924,3 --Stable Ectoplasm (x12)
    .mob Unseen Servant
    .mob Hate Shrieker
step
    #completewith next
    .subzone 976 >>Viaje para Gadgetzan em |cFFfa9602Tanaris|r
step
    .goto Tanaris,52.47,27.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mux Zoamana|r
    .turnin 8924 >>Entregue Caçando Ectoplasma
    .accept 8925 >>Aceite Uma Fonte de Energia Portátil
    .target Mux Manascrambler
step
    #completewith next
    .zone Burning Steppes >>Voe para |cFFfa9602Estepes Ardentes|r
step
    .goto Burning Steppes,35.38,57.73
    >>Mate o |cRXP_ENEMY_Bokk, Senhor do Magmático|r. Saqueie-o para obter seu |cRXP_LOOT_Núcleo Magmático|r
    .complete 8925,1 --Magma Core (x1)
    .mob Magma Lord Bokk
step
    #completewith next
    .subzone 976 >>Viaje para Gadgetzan em |cFFfa9602Tanaris|r
step
    .goto Tanaris,52.47,27.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mux Zoamana|r
    .turnin 8925 >>Entregue Uma Fonte de Energia Portátil
    .accept 8928 >>Aceite Um Comerciante Escorregadio
    .target Mux Manascrambler
step
    #optional
    #completewith FelElemRod2
    .subzone 2256 >>Voe para Garganta do Sussurro Sombrio em |cFFfa9602Hibérnia|r
step
    #optional
    #hardcore
    #completewith next
    +|cRXP_WARN_Cuidado! Você encontrará inimigos nível 60 no caminho para|r |cRXP_FRIENDLY_Vi'el|r|cRXP_WARN_. Evite-os o máximo possível|r
step
    #label FelElemRod2
    #optional --user should already have bought this during .complete 8924,2 earlier in Winterspring
    .goto Winterspring,58.87,78.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vi'el|r
    >>|cRXP_BUY_Compre um|r |T135155:0|t[|cRXP_LOOT_Fel Elemental Rod|r] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Isto custará 40 ouro|r
    .collect 21939,1,8928,1 --Fel Elemental Rod (x1)
    .target Vi'el
step
    #optional
    #completewith next
    .subzone 976 >>Viaje para Gadgetzan em |cFFfa9602Tanaris|r
    .zoneskip Winterspring,1
step
    .goto Tanaris,52.47,27.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mux Zoamana|r
    .turnin 8928 >>Entregue Um Comerciante Escorregadio
    .accept 8977 >>Aceite Retorno a Deliana << Alliance
    .accept 8978 >>Aceite Retorno a Mokvar << Horde
    .target Mux Manascrambler
step << Alliance
    #completewith next
    .zone Ironforge >>Vá para |cFFfa9602Ironforge|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Deliana|r
    .turnin 8977 >>Entregue Volte para Deliana
    .accept 8926 >>Aceite Just Compensation - Missão - Missão << Druid
    .accept 8931 >>Aceite Just Compensation - Missão - Missão << Hunter
    .accept 8932 >>Aceite Just Compensation - Missão - Missão << Mage
    .accept 8933 >>Aceite Just Compensation - Missão - Missão << Paladin
    .accept 8934 >>Aceite Just Compensation - Missão - Missão << Priest
    .accept 8935 >>Aceite Just Compensation - Missão - Missão << Rogue
    .accept 8936 >>Aceite Just Compensation - Missão - Missão << Warlock
    .accept 8937 >>Aceite Just Compensation - Missão - Missão << Warrior
    .target Deliana
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Deliana|r
    >>Você precisará de |T132504:0|t[|cRXP_LOOT_Cinto do Coração Selvagem|r] e |T132951:0|t[|cRXP_LOOT_Luvas do Coração Selvagem|r] para entregar esta missão << Druid
    >>Você precisará de |T132517:0|t[|cRXP_LOOT_Cinto do Espreitador de Feras|r] e |T132944:0|t[|cRXP_LOOT_Luvas do Espreitador de Feras|r] para entregar esta missão << Hunter
    >>Você precisará de |T132497:0|t[|cRXP_LOOT_Cinto do Magíster|r] e |T132951:0|t[|cRXP_LOOT_Luvas do Magíster|r] para entregar esta missão << Mage
    >>Você precisará de |T132500:0|t[|cRXP_LOOT_Cinto da Forja de Luz|r] e |T132953:0|t[|cRXP_LOOT_Manoplas da Forja de Luz|r] para entregar esta missão << Paladin
    >>Você precisará de |T132499:0|t[|cRXP_LOOT_Cinto do Devoto|r] e |T132948:0|t[|cRXP_LOOT_Luvas do Devoto|r] para entregar esta missão << Priest
    >>Você precisará de |T132492:0|t[|cRXP_LOOT_Cinto da Arte Sombria|r] e |T132958:0|t[|cRXP_LOOT_Luvas da Arte Sombria|r] para entregar esta missão << Rogue
    >>Você precisará de |T132501:0|t[|cRXP_LOOT_Cinto de Brumedo|r] e |T132966:0|t[|cRXP_LOOT_Guarda-braços de Brumedo|r] para entregar esta missão << Warlock
    >>Você precisará de |T132523:0|t[|cRXP_LOOT_Cinto do Bravura|r] e |T132960:0|t[|cRXP_LOOT_Manoplas do Bravura|r]r para entregar esta missão << Warrior
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
    .turnin 8926 >>Entregue Just Compensation - Missão - Missão << Druid
    .turnin 8931 >>Entregue Just Compensation - Missão - Missão << Hunter
    .turnin 8932 >>Entregue Just Compensation - Missão - Missão << Mage
    .turnin 8933 >>Entregue Just Compensation - Missão - Missão << Paladin
    .turnin 8934 >>Entregue Just Compensation - Missão - Missão << Priest
    .turnin 8935 >>Entregue Just Compensation - Missão - Missão << Rogue
    .turnin 8936 >>Entregue Just Compensation - Missão - Missão << Warlock
    .turnin 8937 >>Entregue Just Compensation - Missão - Missão << Warrior
    .accept 8929 >>Aceite em Procura de Anthion - Missão
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>Voe para |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mokvar|r
    .turnin 8978 >>Entregue Devolver para Mokvar - Missão
    .accept 8927 >>Aceite Just Compensation - Missão - Missão << Druid
    .accept 8938 >>Aceite Just Compensation - Missão - Missão << Hunter
    .accept 8939 >>Aceite Just Compensation - Missão - Missão << Mage
    .accept 8940 >>Aceite Just Compensation - Missão - Missão << Priest
    .accept 8941 >>Aceite Just Compensation - Missão - Missão << Rogue
    .accept 8942 >>Aceite Just Compensation - Missão - Missão << Shaman
    .accept 8943 >>Aceite Just Compensation - Missão - Missão << Warlock
    .accept 8944 >>Aceite Just Compensation - Missão - Missão << Warrior
    .target Mokvar
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mokvar|r
    >>Você precisará de |T132504:0|t[|cRXP_LOOT_Cinto do Coração Selvagem|r] e |T132951:0|t[|cRXP_LOOT_Luvas do Coração Selvagem|r] para entregar esta missão << Druid
    >>Você precisará de |T132517:0|t[|cRXP_LOOT_Cinto do Espreitador de Feras|r] e |T132944:0|t[|cRXP_LOOT_Luvas do Espreitador de Feras|r] para entregar esta missão << Hunter
    >>Você precisará de |T132497:0|t[|cRXP_LOOT_Cinto do Magíster|r] e |T132951:0|t[|cRXP_LOOT_Luvas do Magíster|r] para entregar esta missão << Mage
    >>Você precisará de |T132499:0|t[|cRXP_LOOT_Cinto do Devoto|r] e |T132948:0|t[|cRXP_LOOT_Luvas do Devoto|r] para entregar esta missão << Priest
    >>Você precisará de |T132492:0|t[|cRXP_LOOT_Cinto da Arte Sombria|r] e |T132958:0|t[|cRXP_LOOT_Luvas da Arte Sombria|r] para entregar esta missão << Rogue
    >>Você precisará de |T132505:0|t[|cRXP_LOOT_Cordão dos Elementos|r] e |T132945:0|t[|cRXP_LOOT_Manoplas dos Elementos|r] para entregar esta missão << Shaman
    >>Você precisará de |T132501:0|t[|cRXP_LOOT_Cinto de Brumedo|r] e |T132966:0|t[|cRXP_LOOT_Guarda-braços de Brumedo|r] para entregar esta missão << Warlock
    >>Você precisará de |T132523:0|t[|cRXP_LOOT_Cinto do Bravura|r] e |T132960:0|t[|cRXP_LOOT_Manoplas do Bravura|r]r para entregar esta missão << Warrior
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
    .turnin 8927 >>Entregue Just Compensation - Missão - Missão << Druid
    .turnin 8938 >>Entregue Just Compensation - Missão - Missão << Hunter
    .turnin 8939 >>Entregue Just Compensation - Missão - Missão << Mage
    .turnin 8940 >>Entregue Just Compensation - Missão - Missão << Priest
    .turnin 8941 >>Entregue Just Compensation - Missão - Missão << Rogue
    .turnin 8942 >>Entregue Just Compensation - Missão - Missão << Shaman
    .turnin 8943 >>Entregue Just Compensation - Missão - Missão << Warlock
    .turnin 8944 >>Entregue Just Compensation - Missão - Missão << Warrior
    .accept 8930 >>Aceite em Procura de Anthion - Missão
    .target Mokvar

    ]])


RXPGuides.RegisterGuide([[
#classic
#tbc
#group Guias de Fim de Jogo
#subgroup Guia do Feralheart Set << Druid
#subgroup Guia do Conjunto Senhor das Feras << Hunter
#subgroup Guia do Conjunto do Feiticeiro << Mage
#subgroup Guia do Conjunto da Forja da Alma << Paladin
#subgroup Guia do Conjunto da Manta Negra << Rogue
#subgroup Guia do Conjunto dos Cinco Trovões << Shaman
#subgroup Guia do Conjunto da Mortalha << Warlock
#subgroup Guia do Conjunto de Heroísmo << Warrior
#subgroup Guia do Conjunto da Virtude << Priest
#name Parte 3: Calças, Ombros e Botas
#next Parte 4: Elmo & Peito

step
    #optional
    +|cRXP_WARN_Você deve completar a Parte 2: Cinturão & Luvas antes de começar esta parte do guia|r
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
    >>Obtenha as |T132542:0|t[|cRXP_LOOT_Botas do Coração Selvagem|r]. Isto é derrubado por |cRXP_ENEMY_Mother Smolderweb|r em |cFFfa9602Lower Blackrock Spire|r << Druid
    >>Obtenha as |T132588:0|t[|cRXP_LOOT_Botas do Espreitador de Feras|r]. Isto é derrubado por |cRXP_ENEMY_Nerub'enkan|r em |cFFfa9602Stratholme|r << Hunter
    >>Obtenha as |T132536:0|t[|cRXP_LOOT_Botas do Magíster|r]. Isto é derrubado por |cRXP_ENEMY_Hearthsinger Forresten|r (raro) em |cFFfa9602Stratholme|r << Mage
    >>|cRXP_WARN_Nota que antes do patch de AQ, este item deveria ser derrubado de|r |cRXP_ENEMY_Chefe do Correio Malown|r<<Mage
    >>Obtenha as |T132584:0|t[|cRXP_LOOT_Botas da Forja de Luz|r]. Isto é derrubado por |cRXP_ENEMY_Grão-Cruzado Dathrohan|r e |cRXP_ENEMY_Balnazzar|r em |cFFfa9602Stratholme|r << Paladin
    >>Obtenha as |T132539:0|t[Sandálias do Devoto|cRXP_LOOT_]. Isto é derrubado por |rMalaki, o Pálido|cRXP_ENEMY_ em |rStratholme|cFFfa9602 << Priest
    >>Obtenha as |T132542:0|t[|cRXP_LOOT_Botas da Arte Sombria|r]. Isto é derrubado por |cRXP_ENEMY_Ossorrange|r em |cFFfa9602Scolomântia|r << Rogue
    >>Obtenha as |T132592:0|t[|cRXP_LOOT_Botas dos Elementos|r]. Isto é derrubado por |cRXP_ENEMY_Grão-lorde Omokk|r em |cFFfa9602Lower Blackrock Spire|r << Shaman
    >>Obtenha as |T132539:0|t[|cRXP_LOOT_Sandálias de Brumedo|r]. Isto é derrubado por |cRXP_ENEMY_Baroness Anastari|r em |cFFfa9602Stratholme|r << Warlock
    >>Obtenha as |T132584:0|t[|cRXP_LOOT_Botas do Bravura|r]. Isto é derrubado por |cRXP_ENEMY_Kirtonos, o Arauto|r em |cFFfa9602Scolomântia|r << Warrior
    >>|cRXP_WARN_Alternativamente compre com |cRXP_FRIENDLY_Pix Xizzix|r em Booty Bay em troca de|r |T133799:0|t[|cRXP_FRIENDLY_Tarnished Inframina Real|r] << sod
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
    >>Obtenha o |T134588:0|t[|cRXP_LOOT_Kilt do Coração Selvagem|r]. Isto é derrubado por |cRXP_ENEMY_Barão Rivendare|r em |cFFfa9602Stratholme|r << Druid
    >>Obtenha as |T134583:0|t[|cRXP_LOOT_Calças do Espreitador de Feras|r]. Isto é derrubado por |cRXP_ENEMY_Barão Rivendare|r em |cFFfa9602Stratholme|r << Hunter
    >>Obtenha as |T134586:0|t[|cRXP_LOOT_Perneiras do Magíster|r]. Isto é derrubado por |cRXP_ENEMY_Barão Rivendare|r em |cFFfa9602Stratholme|r << Mage
    >>Obtenha os |T134584:0|t[|cRXP_LOOT_Coxotes da Forja de Luz|r]. Isto é derrubado por |cRXP_ENEMY_Barão Rivendare|r em |cFFfa9602Stratholme|r << Paladin
    >>Obtenha a |T134588:0|t[|cRXP_LOOT_Saia do Devoto|r]. Isto é derrubado por |cRXP_ENEMY_Barão Rivendare|r em |cFFfa9602Stratholme|r << Priest
    >>Obtenha as |T134582:0|t[|cRXP_LOOT_Calças da Arte Sombria|r]. É deixado por |cRXP_ENEMY_Barão Rivendare|r em |cFFfa9602Stratholme|r << Rogue
    >>Obtenha o |T134583:0|t[|cRXP_LOOT_Kilt dos Elementos|r]. É deixado por |cRXP_ENEMY_Barão Rivendare|r em |cFFfa9602Stratholme|r << Shaman
    >>Obtenha o |T134588:0|t[|cRXP_LOOT_Perneiras de Brumedo|r]. É deixado por |cRXP_ENEMY_Barão Rivendare|r em |cFFfa9602Stratholme|r << Warlock
    >>Obtenha os |T134584:0|t[|cRXP_LOOT_Coxotes do Bravura|r]. É deixado por |cRXP_ENEMY_Barão Rivendare|r em |cFFfa9602Stratholme|r << Warrior
    >>|cRXP_WARN_Alternativamente, compre-os de |cRXP_FRIENDLY_Pix Xizzix|r em Booty Bay em troca de|r |T133799:0|t[|cRXP_FRIENDLY_Tarnished Inframina Real|r] << sod
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
    >>Obtenha o |T135032:0|t[|cRXP_LOOT_Dragonas do Coração Selvagem|r]. É deixado por |cRXP_ENEMY_Gizrul the Slavener|r em |cFFfa9602Lower Blackrock Spire|r << Druid
    >>Obtenha o |T135041:0|t[|cRXP_LOOT_Dragonas do Espreitador de Feras|r]. É deixado por |cRXP_ENEMY_Lorde Supremo Wyrmthalak|r em |cFFfa9602Lower Blackrock Spire|r << Hunter
    >>Obtenha o |T135054:0|t[|cRXP_LOOT_Dragonas do Magíster|r]. É deixado por |cRXP_ENEMY_Ras Friomúrmuro|r em |cFFfa9602Scolomântia|r << Mage
    >>Obtenha os |T135041:0|t[|cRXP_LOOT_Espaldares da Forja de Luz|r]. É deixado por |cRXP_ENEMY_A Fera|r em |cFFfa9602Pico da Rocha Negra Superior|r << Paladin
    >>Obtenha as |T135033:0|t[|cRXP_LOOT_Devoto Dragonas do Devoto|r]. É solto por |cRXP_ENEMY_Solakar Flamewreath|r em |cFFfa9602Pico da Rocha Negra Superior|r << Priest
    >>Obtenha as |T135038:0|t[|cRXP_LOOT_Espaldares da Arte Sombria|r]. É solto por |cRXP_ENEMY_Cannon Master Willey|r em |cFFfa9602Stratholme|r << Rogue
    >>Obtenha as |T135060:0|t[|cRXP_LOOT_Brafoneiras dos Elementos|r]. É solto por |cRXP_ENEMY_Gyth|r em |cFFfa9602Pico da Rocha Negra Superior|r << Shaman
    >>Obtenha as |T133732:0|t[|cRXP_LOOT_Dragonas de Brumedo|r]. É solto por |cRXP_ENEMY_Janice Barov|r em |cFFfa9602Scolomântia|r << Warlock
    >>Obtenha as |T135061:0|t[|cRXP_LOOT_Espaldares do Bravura|r]. É solto por |cRXP_ENEMY_Warchief Laceral Mão Negra|r em |cFFfa9602Pico da Rocha Negra Superior|r << Warrior
    >>|cRXP_WARN_Alternativamente compre-as de |cRXP_FRIENDLY_Pix Xizzix|r em Booty Bay em troca de|r |T133799:0|t[|cRXP_FRIENDLY_Tarnished Inframina Real|r] << sod
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
    >>|cRXP_BUY_Coletar os seguintes itens|r:
    >>|T133233:0|t[Barras de Ferro Negro] |cRXP_WARN_são criadas pelos mineradores|r
    >>|T134418:0|t[Couro Encantado] |cRXP_WARN_e|r |T132873:0|t[Fragmentos Brilhantes Grandes] |cRXP_WARN_são criados pelos encantadores|r
    >>|T132895:0|t[Lunatrama] |cRXP_WARN_é criado por alfaiates|r
    >>|T134355:0|t[Curado Rugged Hides] |cRXP_WARN_are created by leatherworkers|r
    >>|T136192:0|t[|cRXP_FRIENDLY_Dark Runas|r] |cRXP_WARN_are random drops in|r |cFFfa9602Scolomântia|r
    >>|cRXP_WARN_Compre-os da Casa de Leilões se possível|r
    .collect 11371,3,8947,1 --Dark Iron Bar (x3)
    .collect 12810,20,8947,1 --Enchanted Leather (x20)
    .collect 14344,8,8950,1 --Large Brilliant Shard (x8)
    .collect 14342,3,8947,1 --Mooncloth (x3)
    .collect 15407,4,8947,1 --Cured Rugged Hide (x4)
    .collect 20520,4,8950,1 --Dark Rune (x4)
step << Alliance
    #completewith next
    .zone Ironforge >>Vá para |cFFfa9602Ironforge|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Deliana|r
    .accept 8929 >>Aceite em Procura de Anthion - Missão
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>Voe para |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mokvar|r
    .accept 8930 >>Aceite em Procura de Anthion - Missão
    .target Mokvar
step
    #completewith FindingAnthion
    +|cRXP_WARN_Comece a procura por um grupo sólido de 5 jogadores capaz de limpar o lado dos não-mortos de Stratholme em 45 minutos|r
step
    #completewith next
    .zone Eastern Plaguelands >>Vá para |cFFfa9602Terras Pestilentas Orientais|r
step
    #label FindingAnthion
    .goto Eastern Kingdoms,55.06,17.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Anthion|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Anthion|r
    .turnin 8929 >>Entregue Em Busca de Anthion << Alliance
    .turnin 8930 >>Entregue Em Busca de Anthion << Horde
    .accept 8945 >>Aceite Morto Man's Plea
    .target Anthion Harmon
step
    #completewith next
    .subzone 2017 >>Entre em Stratholme
    >>|cRXP_WARN_Tenha um grupo pronto|r
step
    >>Mate |cRXP_ENEMY_Barão Rivendare|r em 45 minutos para salvar |cRXP_FRIENDLY_Ysida Harmon|r
    >>|cRXP_WARN_O cronômetro inicia quando você recebe o|r |T136129:0|t[Ultimato do Barão] |cRXP_WARN_debuff ao entrar no lado dos não-mortos|r
    .complete 8945,1 --Ysida Freed (x1)
    .mob Baron Rivendare
    .target Ysida Harmon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Ysida Harmon|r
    .turnin 8945 >>Entregue Morto Man's Plea
    .accept 8946 >>Aceite Proof of Vida
    .target Ysida Harmon
step
    .goto Eastern Kingdoms,55.06,17.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Anthion|r fora de Stratholme
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Anthion|r
    .turnin 8946 >>Entregue Proof of Vida
    .accept 8947 >>Aceite Anthion's Strange Request - Missão - Missão
    .target Anthion Harmon
step
    >>|cRXP_BUY_Coletar os seguintes itens|r:
    >>|T133233:0|t[Barras de Ferro Negro] |cRXP_WARN_são criadas pelos mineradores|r
    >>|T134418:0|t[Couro Encantado] |cRXP_WARN_é criado por encantadores|r
    >>|T132895:0|t[Lunatrama] |cRXP_WARN_é criado por alfaiates|r
    >>|T134355:0|t[Curado Rugged Hides] |cRXP_WARN_are created by leatherworkers|r
    >>|T136192:0|t[|cRXP_FRIENDLY_Dark Runas|r] |cRXP_WARN_are random drops in|r |cFFfa9602Scolomântia|r
    >>|cRXP_WARN_Compre-os da Casa de Leilões se possível|r
    .collect 11371,3,8947,1 --Dark Iron Bar (x3)
    .collect 12810,20,8947,1 --Enchanted Leather (x20)
    .collect 14344,8,8950,1 --Large Brilliant Shard (x8)
    .collect 14342,3,8947,1 --Mooncloth (x3)
    .collect 15407,4,8947,1 --Cured Rugged Hide (x4)
    .collect 20520,4,8950,1 --Dark Rune (x4)
step
    .goto Eastern Kingdoms,55.06,17.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Anthion|r fora de Stratholme
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Anthion|r
    .turnin 8947 >>Entregue Anthion's Strange Request - Missão - Missão
    .accept 8948 >>Aceite Anthion's Old Amigo
    .target Anthion Harmon
step
    #softcore
    #completewith AnthionsFriend
    .zone Feralas >>Viaje para |cFFfa9602Feralas|r
    >>|cRXP_WARN_Esta próxima seção se passa em Martelo do Gládio Cruel. É possível fazer solo, mas agrupar-se é fortemente recomendado|r
    .subzoneskip 2557
step
    #hardcore
    #completewith AnthionsFriend
    .zone Feralas >>Viaje para |cFFfa9602Feralas|r
    >>|cRXP_WARN_Esta próxima seção se passa em Martelo do Gládio Cruel. Tenha um grupo pronto com pelo menos 3 jogadores|r
    .subzoneskip 2557
step
    #completewith AnthionsFriend
    .goto Kalimdor,43.39,66.52,20 >>Entre pela entrada Norte de Martelo do Gládio Cruel
    >>|cRXP_WARN_Você deve ter o|r |T134244:0|t[Crescent Chave] |cRXP_WARN_para conseguir abrir a porta para Martelo do Gládio Cruel North e para a biblioteca|r << !Rogue
    >>|cRXP_WARN_Você deve ter o|r |T134244:0|t[Crescent Chave] |cRXP_WARN_ou ter nível 300 em arrombamento para conseguir abrir a porta para Martelo do Gládio Cruel North e para a biblioteca|r << Rogue
    >>|cRXP_WARN_Alternativamente, peça a outro jogador para abrir as portas|r
    .itemcount 18249,<1 << !Rogue --Crescent Key
    .skill lockpicking,300,1 << Rogue
step
    #optional
    #completewith AnthionsFriend
    .goto Kalimdor,43.39,66.52,20 >>Entre pela entrada Norte de Martelo do Gládio Cruel
    .itemcount 18249,1 << !Rogue --Crescent Key
    .skill lockpicking,<300,1 << Rogue
step
    #label AnthionsFriend
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Falrin Arboril|r na biblioteca de Martelo do Gládio Cruel
    .turnin 8948 >>Entregue Anthion's Old Amigo
    .accept 8949 >>Aceite Falrin's Vendeta
    .target Falrin Treeshaper
    --.link  >> |cRXP_WARN_You can reach the library without killing any mobs. Click here for video reference|r
    --VV TODO: Library skip video
step
    >>Mate |cRXP_ENEMY_Gordok Ogres|r no |cFFfa9602Martelo do Gládio Cruel North|r. Saque-os para obter seus |cRXP_LOOT_Warbeads|r
    >>|cRXP_WARN_Alternativamente, você pode matar|r |cRXP_ENEMY_Spirestone Ogres|r |cRXP_WARN_em|r |cFFfa9602Lower Blackrock Spire|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Falrin Arboril|r na biblioteca de Martelo do Gládio Cruel
    .turnin 8949 >>Entregue Falrin's Vendeta
    .accept 8950 >>Aceite The Instigator's Enchantment - Missão
    .target Falrin Treeshaper
step
    #completewith SpectreEssence
    .goto Kalimdor,42.98,67.73,20 >>Entre no Lado Ocidental de Martelo do Gládio Cruel
    >>|cRXP_WARN_Você deve ter o|r |T134244:0|t[Crescent Chave] |cRXP_WARN_para poder abrir a porta em Martelo do Gládio Cruel West|r << !Rogue
    >>|cRXP_WARN_Você deve ter o|r |T134244:0|t[Crescent Chave] |cRXP_WARN_ou ter 300 de perícia em arrombamento para poder abrir a porta em Martelo do Gládio Cruel West|r << Rogue
    >>|cRXP_WARN_Alternativamente, peça para outro jogador abrir a porta para você|r
    .itemcount 18249,<1 << !Rogue --Crescent Key
    .skill lockpicking,300,1 << Rogue
step
    #completewith SpectreEssence
    .goto Kalimdor,42.98,67.73,20 >>Entre na entrada Ocidental de Martelo do Gládio Cruel
    .itemcount 18249,1 << !Rogue --Crescent Key
    .skill lockpicking,<300,1 << Rogue
step
    #label SpectreEssence
    >>Mate |cRXP_ENEMY_Eldreth Ghosts|r no |cFFfa9602Martelo do Gládio Cruel West|r. Saque-os para obter os |cRXP_LOOT_Jeering Espectro's Essência|r
    .complete 8950,1 --Jeering Spectre's Essence (x1)
    .mob Eldreth Wraith
    .mob Eldreth Seether
    .mob Eldreth Spectre
    .mob Eldreth Spirit
    .mob Eldreth Phantasm
    .mob Eldreth Apparition
    .mob Eldreth Sorcerer
step
    >>|cRXP_BUY_Coletar os seguintes itens|r:
    >>|T132873:0|t[Cacos Brilhantes Grandes] |cRXP_WARN_são criados por encantadores|r
    >>|T136192:0|t[|cRXP_FRIENDLY_Dark Runas|r] |cRXP_WARN_are random drops in|r |cFFfa9602Scolomântia|r
    >>|cRXP_WARN_Compre-os da Casa de Leilões se possível|r
    .collect 14344,8,8950,1 --Large Brilliant Shard (x8)
    .collect 20520,4,8950,1 --Dark Rune (x4)
step
    #completewith AnthionsFriend2
    .goto Kalimdor,43.39,66.52,20 >>Entre pela entrada Norte de Martelo do Gládio Cruel
    >>|cRXP_WARN_Você deve ter o|r |T134244:0|t[Crescent Chave] |cRXP_WARN_para conseguir abrir a porta para Martelo do Gládio Cruel North e para a biblioteca|r << !Rogue
    >>|cRXP_WARN_Você deve ter o|r |T134244:0|t[Crescent Chave] |cRXP_WARN_ou ter nível 300 em arrombamento para conseguir abrir a porta para Martelo do Gládio Cruel North e para a biblioteca|r << Rogue
    >>|cRXP_WARN_Alternativamente, peça a outro jogador para abrir as portas|r
    .itemcount 18249,<1 << !Rogue --Crescent Key
    .skill lockpicking,300,1 << Rogue
step
    #optional
    #completewith AnthionsFriend2
    .goto Kalimdor,43.39,66.52,20 >>Entre pela entrada Norte de Martelo do Gládio Cruel
    .itemcount 18249,1 << !Rogue --Crescent Key
    .skill lockpicking,<300,1 << Rogue
step
    #label AnthionsFriend2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Falrin Arboril|r na biblioteca de Martelo do Gládio Cruel
    .turnin 8950 >>Entregue The Instigator's Enchantment - Missão
    .accept 9015 >>Aceite The Desafio - Missão
    .target Falrin Treeshaper
    --.link  >> |cRXP_WARN_You can reach the library without killing any mobs. Click here for video reference|r
    --VV TODO: Library skip video
step
    #completewith next
    .subzone 254 >>Voe para |cFFfa9602Blackrock Mountain|r
step
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>Entre no Abismo Rocha Negra
    >>|cRXP_WARN_Tenha um grupo pronto|r
step
    .use 21986 >>Entre na arena do Anel da Lei e use o |T132619:0|t[Estandarte de Provocação]
    >>Isso vai invocar |cRXP_ENEMY_Theldren|r. Mate-o e saqueie-o para obter o |cRXP_LOOT_Parte Superior do Amuleto do Lorde Valthalak|r
    >>|cRXP_WARN_Este combate é difícil. |cRXP_ENEMY_Theldren|r aparecerá com múltiplos adds élite nível 60. Certifique-se de que seu grupo tem controle de multidão suficiente para eles|r
    .complete 9015,1 --Theldren's Team Defeated
    .complete 9015,2 --Top Piece of Lord Valthalak's Amulet (x1)
    .mob Theldren
step
    #completewith next
    .zone Eastern Plaguelands >>Viaje para as Terras Pestilentas Orientais
step
    .goto Eastern Kingdoms,55.06,17.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Anthion|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Anthion|r
    .turnin 9015 >>Entregue The Desafio - Missão
    .accept 8951 >>Aceite Anthion's Parting Words - Missão << Alliance Druid
    .accept 8952 >>Aceite Anthion's Parting Words - Missão << Alliance Hunter
    .accept 8953 >>Aceite Anthion's Parting Words - Missão << Alliance Mage
    .accept 8954 >>Aceite Anthion's Parting Words - Missão << Alliance Paladin
    .accept 8955 >>Aceite Anthion's Parting Words - Missão << Alliance Priest
    .accept 8956 >>Aceite Anthion's Parting Words - Missão << Alliance Rogue
    .accept 8958 >>Aceite Anthion's Parting Words - Missão << Alliance Warlock
    .accept 8959 >>Aceite Anthion's Parting Words - Missão << Alliance Warrior
    .accept 8957 >>Aceite Anthion's Parting Words - Missão << Horde Shaman
    .accept 9016 >>Aceite Anthion's Parting Words - Missão << Horde Druid
    .accept 9017 >>Aceite Anthion's Parting Words - Missão << Horde Hunter
    .accept 9018 >>Aceite Anthion's Parting Words - Missão << Horde Mage
    .accept 9019 >>Aceite Anthion's Parting Words - Missão << Horde Priest
    .accept 9020 >>Aceite Anthion's Parting Words - Missão << Horde Rogue
    .accept 9021 >>Aceite Anthion's Parting Words - Missão << Horde Warlock
    .accept 9022 >>Aceite Anthion's Parting Words - Missão << Horde Warrior
    .target Anthion Harmon
step << Alliance
    #completewith next
    .zone Ironforge >>Vá para |cFFfa9602Ironforge|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Deliana|r
    >>Você precisará de |T132542:0|t[|cRXP_LOOT_Botas do Coração Selvagem|r], |T134588:0|t[|cRXP_LOOT_Kilt do Coração Selvagem|r] e |T135032:0|t[|cRXP_LOOT_Dragonas do Coração Selvagem|r] para entregar esta missão << Druid
    >>Você precisará de |T132588:0|t[|cRXP_LOOT_Botas do Espreitador de Feras|r], |T134583:0|t[|cRXP_LOOT_Calças do Espreitador de Feras|r] e |T135041:0|t[|cRXP_LOOT_Dragonas do Espreitador de Feras|r] para entregar esta missão << Hunter
    >>Você precisará de |T132536:0|t[|cRXP_LOOT_Botas do Magíster|r], |T134586:0|t[|cRXP_LOOT_Perneiras do Magíster|r] e |T135054:0|t[|cRXP_LOOT_Dragonas do Magíster|r] para entregar esta missão << Mage
    >>Você precisará de |T132584:0|t[|cRXP_LOOT_Botas da Forja de Luz|r], |T134584:0|t[|cRXP_LOOT_Coxotes da Forja de Luz|r] e |T135041:0|t[|cRXP_LOOT_Espaldares da Forja de Luz|r] para entregar esta missão << Paladin
    >>Você precisará de |T132539:0|t[|cRXP_LOOT_Sandálias do Devoto|r], |T134588:0|t[|cRXP_LOOT_Saia do Devoto|r] e |T135033:0|t[|cRXP_LOOT_Dragonas do Devoto|r] para entregar esta missão << Priest
    >>Você precisará de |T132542:0|t[|cRXP_LOOT_Botas da Arte Sombria|r], |T134582:0|t[|cRXP_LOOT_Calças da Arte Sombria|r] e |T135038:0|t[|cRXP_LOOT_Espaldares da Arte Sombria|r] para entregar esta missão << Rogue
    >>Você precisará de |T132539:0|t[|cRXP_LOOT_Sandálias de Brumedo|r], |T134588:0|t[|cRXP_LOOT_Perneiras de Brumedo|r] e |T133732:0|t[|cRXP_LOOT_Dragonas de Brumedo|r] para entregar esta missão << Warlock
    >>Você precisará de |T132584:0|t[|cRXP_LOOT_Botas do Bravura|r], |T134584:0|t[|cRXP_LOOT_Coxotes do Bravura|r] e |T135061:0|t[|cRXP_LOOT_Espaldares do Bravura|r] para entregar esta missão << Warrior
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
    .turnin 8951 >>Entregue Anthion's Parting Words - Missão - Missão << Druid
    .turnin 8952 >>Entregue Anthion's Parting Words - Missão - Missão << Hunter
    .turnin 8953 >>Entregue Anthion's Parting Words - Missão - Missão << Mage
    .turnin 8954 >>Entregue Anthion's Parting Words - Missão - Missão << Paladin
    .turnin 8955 >>Entregue Anthion's Parting Words - Missão - Missão << Priest
    .turnin 8956 >>Entregue Anthion's Parting Words - Missão - Missão << Rogue
    .turnin 8958 >>Entregue Anthion's Parting Words - Missão - Missão << Warlock
    .turnin 8959 >>Entregue Anthion's Parting Words - Missão - Missão << Warrior
    .accept 8960 >>Aceite Bodley's Unfortunate Sina - Missão
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>Voe para |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mokvar|r
    >>Você precisará de |T132542:0|t[|cRXP_LOOT_Botas do Coração Selvagem|r], |T134588:0|t[|cRXP_LOOT_Kilt do Coração Selvagem|r] e |T135032:0|t[|cRXP_LOOT_Dragonas do Coração Selvagem|r] para entregar esta missão << Druid
    >>Você precisará de |T132588:0|t[|cRXP_LOOT_Botas do Espreitador de Feras|r], |T134583:0|t[|cRXP_LOOT_Calças do Espreitador de Feras|r] e |T135041:0|t[|cRXP_LOOT_Dragonas do Espreitador de Feras|r] para entregar esta missão << Hunter
    >>Você precisará de |T132536:0|t[|cRXP_LOOT_Botas do Magíster|r], |T134586:0|t[|cRXP_LOOT_Perneiras do Magíster|r] e |T135054:0|t[|cRXP_LOOT_Dragonas do Magíster|r] para entregar esta missão << Mage
    >>Você precisará de |T132539:0|t[|cRXP_LOOT_Sandálias do Devoto|r], |T134588:0|t[|cRXP_LOOT_Saia do Devoto|r] e |T135033:0|t[|cRXP_LOOT_Dragonas do Devoto|r] para entregar esta missão << Priest
    >>Você precisará de |T132542:0|t[|cRXP_LOOT_Botas da Arte Sombria|r], |T134582:0|t[|cRXP_LOOT_Calças da Arte Sombria|r] e |T135038:0|t[|cRXP_LOOT_Espaldares da Arte Sombria|r] para entregar esta missão << Rogue
    >>Você precisará de |T132592:0|t[|cRXP_LOOT_Botas dos Elementos|r], |T134583:0|t[|cRXP_LOOT_Kilt dos Elementos|r] e |T135060:0|t[|cRXP_LOOT_Brafoneiras dos Elementos|r] para entregar esta missão << Shaman
    >>Você precisará de |T132539:0|t[|cRXP_LOOT_Sandálias de Brumedo|r], |T134588:0|t[|cRXP_LOOT_Perneiras de Brumedo|r] e |T133732:0|t[|cRXP_LOOT_Dragonas de Brumedo|r] para entregar esta missão << Warlock
    >>Você precisará de |T132584:0|t[|cRXP_LOOT_Botas do Bravura|r], |T134584:0|t[|cRXP_LOOT_Coxotes do Bravura|r] e |T135061:0|t[|cRXP_LOOT_Espaldares do Bravura|r] para entregar esta missão << Warrior
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
    .turnin 8957 >>Entregue Anthion's Parting Words - Missão - Missão << Shaman
    .turnin 9016 >>Entregue Anthion's Parting Words - Missão - Missão << Druid
    .turnin 9017 >>Entregue Anthion's Parting Words - Missão - Missão << Hunter
    .turnin 9018 >>Entregue Anthion's Parting Words - Missão - Missão << Mage
    .turnin 9019 >>Entregue Anthion's Parting Words - Missão - Missão << Priest
    .turnin 9020 >>Entregue Anthion's Parting Words - Missão - Missão << Rogue
    .turnin 9021 >>Entregue Anthion's Parting Words - Missão - Missão << Warlock
    .turnin 9022 >>Entregue Anthion's Parting Words - Missão - Missão << Warrior
    .accept 8960 >>Aceite Bodley's Unfortunate Sina
    .target Mokvar

]])


RXPGuides.RegisterGuide([[
#classic
#tbc
#group Guias de Fim de Jogo
#subgroup Guia do Feralheart Set << Druid
#subgroup Guia do Conjunto Senhor das Feras << Hunter
#subgroup Guia do Conjunto do Feiticeiro << Mage
#subgroup Guia do Conjunto da Forja da Alma << Paladin
#subgroup Guia do Conjunto da Manta Negra << Rogue
#subgroup Guia do Conjunto dos Cinco Trovões << Shaman
#subgroup Guia do Conjunto da Mortalha << Warlock
#subgroup Guia do Conjunto de Heroísmo << Warrior
#subgroup Guia do Conjunto da Virtude << Priest
#name Parte 4: Elmo & Peito


step
    #optional
    +|cRXP_WARN_Você deve completar Parte 3: calças, ombros e botas antes de começar esta parte do guia|r
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
    >>Obtenha o |T133129:0|t[|cRXP_LOOT_Capucho do Coração Selvagem|r]. Ele é soltado por |cRXP_ENEMY_Umbromestre Gandling|r em |cFFfa9602Scolomântia|r << Druid
    >>Obtenha o |T133126:0|t[|cRXP_LOOT_Casquete do Espreitador de Feras|r]. Este é obtido de |cRXP_ENEMY_Umbromestre Gandling|r em |cFFfa9602Scolomântia|r << Hunter
    >>Obtenha o |T133076:0|t[|cRXP_LOOT_Elmo da Forja de Luz|r]. Este é obtido de |cRXP_ENEMY_Umbromestre Gandling|r em |cFFfa9602Scolomântia|r << Paladin
    >>Obtenha a |T132767:0|t[|cRXP_LOOT_Coroa do Devoto|r]. Este é obtido de |cRXP_ENEMY_Umbromestre Gandling|r em |cFFfa9602Scolomântia|r << Priest
    >>Obtenha o |T133143:0|t[|cRXP_LOOT_Capuz da Arte Sombria|r]. Este é obtido de |cRXP_ENEMY_Umbromestre Gandling|r em |cFFfa9602Scolomântia|r << Rogue
    >>Obtenha a |T133072:0|t[|cRXP_LOOT_Coifa dos Elementos|r]. Este é obtido de |cRXP_ENEMY_Umbromestre Gandling|r em |cFFfa9602Scolomântia|r << Shaman
    >>Obtenha a |T133131:0|t[|cRXP_LOOT_Máscara de Brumedo|r]. Este é obtido de |cRXP_ENEMY_Umbromestre Gandling|r em |cFFfa9602Scolomântia|r << Warlock
    >>Obtenha o |T133070:0|t[|cRXP_LOOT_Elmo do Bravura|r]. Este é obtido de |cRXP_ENEMY_Umbromestre Gandling|r em |cFFfa9602Scolomântia|r << Warrior
    >>Obtenha a |T132768:0|t[|cRXP_LOOT_Coroa do Magíster|r]. Este é obtido de |cRXP_ENEMY_Umbromestre Gandling|r em |cFFfa9602Scolomântia|r << Mage
    >>|cRXP_WARN_Alternativamente compre-as de |cRXP_FRIENDLY_Pix Xizzix|r em Booty Bay em troca de|r |T133799:0|t[|cRXP_FRIENDLY_Tarnished Inframina Real|r] << sod
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
    >>Obtenha o |T132741:0|t[|cRXP_LOOT_Colete do Coração Selvagem|r]. Este é obtido de |cRXP_ENEMY_General Drakkisath|r em |cFFfa9602Pico da Rocha Negra Superior|r << Druid
    >>Obtenha a |T132625:0|t[|cRXP_LOOT_Túnica do Espreitador de Feras|r]. Este é obtido de |cRXP_ENEMY_General Drakkisath|r em |cFFfa9602Pico da Rocha Negra Superior|r << Hunter
    >>Obtenha o |T132738:0|t[|cRXP_LOOT_Peitoral da Forja de Luz|r]. Este é obtido de |cRXP_ENEMY_General Drakkisath|r em |cFFfa9602Pico da Rocha Negra Superior|r << Paladin
    >>Obtenha a |T132652:0|t[|cRXP_LOOT_Veste do Devoto|r]. Este é obtido de |cRXP_ENEMY_General Drakkisath|r em |cFFfa9602Pico da Rocha Negra Superior|r << Priest
    >>Obtenha a |T132722:0|t[|cRXP_LOOT_Túnica da Arte Sombria|r]. Este é obtido de |cRXP_ENEMY_General Drakkisath|r em |cFFfa9602Pico da Rocha Negra Superior|r << Rogue
    >>Obtenha o |T132633:0|t[|cRXP_LOOT_Colete dos Elementos|r]. Este é obtido de |cRXP_ENEMY_General Drakkisath|r em |cFFfa9602Pico da Rocha Negra Superior|r << Shaman
    >>Obtenha a |T132690:0|t[|cRXP_LOOT_Veste de Brumedo|r]. Este é obtido de |cRXP_ENEMY_General Drakkisath|r em |cFFfa9602Pico da Rocha Negra Superior|r << Warlock
    >>Obtenha o |T132738:0|t[|cRXP_LOOT_Peitoral do Bravura|r]. Este é obtido de |cRXP_ENEMY_General Drakkisath|r em |cFFfa9602Pico da Rocha Negra Superior|r << Warrior
    >>Obtenha as |T132666:0|t[|cRXP_LOOT_Vestes do Magíster|r]. Este é obtido de |cRXP_ENEMY_General Drakkisath|r em |cFFfa9602Pico da Rocha Negra Superior|r << Mage
    >>|cRXP_WARN_Alternativamente compre-as de |cRXP_FRIENDLY_Pix Xizzix|r em Booty Bay em troca de|r |T133799:0|t[|cRXP_FRIENDLY_Tarnished Inframina Real|r] << sod
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
    .zone Ironforge >>Vá para |cFFfa9602Ironforge|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Deliana|r
    .accept 8960 >>Aceite Bodley's Unfortunate Sina
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>Voe para |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mokvar|r
    .accept 8960 >>Aceite Bodley's Unfortunate Sina
    .target Mokvar
step
    >>|cRXP_BUY_Coletar os seguintes itens|r:
    >>|cRXP_WARN_Pelo menos um|r |T132873:0|t[Grande Fragmento Brilhante]
    >>|cRXP_WARN_Um|r |T134821:0|t[Frasco de Poder Supremo]
    >>|cRXP_WARN_Compre-o da casa de leilões, se possível|r
    .collect 14344,1,8961,1 --Large Brilliant Shard (x1)
    .collect 13512,1,8994,1 --Flask of Supreme Power (x1)
step
    .reputation 529,honored >>|cRXP_WARN_Obtenha reputação honrada com a Aurora Argêntea|r
step << Alliance
    #completewith next
    .subzone 3197 >>Vá para Chillwind Camp em |cFFfa9602Terras Pestilentas Ocidentais|r
step << Alliance
    .goto Western Plaguelands,42.84,83.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Intendente Argênteo Centelhuz|r
    >>|cRXP_BUY_Compre um|r |T133879:0|t[Hallowed Braseiro] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Custa 120 ouro|r
    .collect 22014,1,8961,1 --Hallowed Brazier (x1)
    .target Argent Quartermaster Lightspark
step << Horde
    #completewith next
    .subzone 2268 >>Vá para a Capela Esperança da Luz em |cFFfa9602Terras Pestilentas Orientais|r
step << Horde
    .goto Eastern Plaguelands,81.63,60.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Intendente Miranda Cerraculatra|r
    >>|cRXP_BUY_Compre um|r |T133879:0|t[Hallowed Braseiro] |cRXP_BUY_dela|r
    >>|cRXP_WARN_Custa 120 ouro|r
    .collect 22014,1,8961,1 --Hallowed Brazier (x1)
    .target Quartermaster Miranda Breechlock
step
    #completewith next
    .subzone 254 >>Voe para |cFFfa9602Blackrock Mountain|r
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8960 >>Entregue O Destino Desafortunado de Bodley
    .accept 8961 >>Aceite Os Três Reis das Chamas
    .target Bodley
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Entre no Pico da Rocha Negra Superior
    >>|cRXP_WARN_Esta é uma masmorra para 10 jogadores. Você ou alguém do seu grupo deve ter o|r |T133343:0|t[|cRXP_LOOT_Selo da Ascensão|r] |cRXP_WARN_para conseguir entrar no Pico Rocha Negra Superior|r
step
    >>Mate |cRXP_ENEMY_Piroguarda Mirabrasa|r. Saque-o para o |cRXP_LOOT_Ember of Emberseer|r
    >>|cRXP_WARN_Este é o primeiro chefe no|r |cFFfa9602Pico da Rocha Negra Superior|r
    .complete 8961,2 --Ember of Emberseer (x1)
    .mob Pyroguard Emberseer
step
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>Entre no Abismo Rocha Negra
    >>|cRXP_WARN_Tenha um grupo pronto|r
step
    >>Mate |cRXP_ENEMY_Lorde Incendius|r. Saque-o para o |cRXP_LOOT_Incendicite of Incendius|r
    .complete 8961,1 --Incendicite of Incendius (x1)
    .mob Lord Incendius
step
    #completewith DukeofCynders
    .zone Silithus >>Voe para |cFFfa9602Silithus|r
step
    #loop
    .goto Silithus,38.31,46.42,0
    .goto Silithus,27.93,30.66,0
    .goto Silithus,20.47,86.11,0
    .goto Silithus,38.31,46.42,80,0
    .goto Silithus,27.93,30.66,80,0
    .goto Silithus,20.47,86.11,80,0
    >>Abate os |cRXP_ENEMY_Crepúsculo|r inimigos em |cFFfa9602Silithus|r. Saqueie-os para obter o |T132658:0|t[|cRXP_FRIENDLY_Crepúsculo Sectário|r] equipamento
    >>|cRXP_WARN_Você vai precisar de vários|r |T132658:0|t[|cRXP_FRIENDLY_Crepúsculo Sectário|r] |cRXP_WARN_conjuntos. É recomendado que seu grupo tenha pelo menos 5 conjuntos|r
    >>|cRXP_WARN_Alternativamente, compre-os na casa de leilões|r
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
    .reputation 609,friendly >>Obtenha uma reputação aliada com o Cenarion Círculo
    >>|cRXP_WARN_Triture |cRXP_ENEMY_Crepúsculo|r inimigos ou complete as missões do Cenarion Círculo em Silithus para ganhar reputação|r
step
    .goto Silithus,48.62,37.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Huum Juba Agreste|r
    .accept 8331 >>Aceite Aurel Folháurea
    .target Huum Wildmane
    .itemcount 20422,<1
step
    .goto Silithus,51.96,38.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aurel Folháurea|r
    .turnin 8331 >>Entregue Aurel Folháurea
    .accept 8332 >>Aceite Dukes of the Council
    .target Aurel Goldleaf
    .itemcount 20422,<1
step
    .goto Silithus,38.31,46.42
    .goto Silithus,38.31,46.42,0
    .goto Silithus,27.93,30.66,0
    .goto Silithus,20.47,86.11,0
    >>Vá para um |cRXP_PICK_Pedra de Vento Menor|r em um dos três |cRXP_ENEMY_Crepúsculo|r acampamentos. Eles estão marcados no seu mapa
    >>Evoque |cRXP_ENEMY_Templars|r e mate-os. Saqueie-os para obter suas |T133438:0|t[|cRXP_LOOT_Abissal Insígnias|r]
    >>|cRXP_WARN_Você ou alguém do seu grupo deve equipar um|r |T132658:0|t[|cRXP_FRIENDLY_Crepúsculo Sectário|r] |cRXP_WARN_conjunto sempre para evocar um|r |cRXP_ENEMY_Templário|r
    .collect 20513,3 --Abyssal Crest (x3)
    .itemcount 20422,<1
    .mob Earthen Templar
    .mob Crimson Templar
    .mob Hoary Templar
    .mob Azure Templar
step
    .goto Silithus,51.96,38.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aurel Folháurea|r
    .turnin 8332 >>Entregue Dukes of the Council
    .target Aurel Goldleaf
    .itemcount 20513,3
step
    .goto Silithus,51.96,38.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aurel Folháurea|r
    .turnin 8333 >>Entregue Medallion of Station - Missão - Missão
    .target Aurel Goldleaf
    .itemcount 20513,3
step
    #label DukeofCynders
    .goto Silithus,37.67,44.81
    .goto Silithus,37.67,44.81,0
    .goto Silithus,24.74,32.68,0
    .goto Silithus,17.24,84.75,0
    >>Vá para um |cRXP_PICK_Vento Pedra|r em um dos três |cRXP_ENEMY_Crepúsculo|r acampamentos. Eles estão marcados no seu mapa
    >>Evoque os |cRXP_ENEMY_Duques|r até o |cRXP_ENEMY_O Duque de Cynders|r aparecer |cRXP_WARN_(25% de chance de aparecer)|r. Mate-o e saqueie-o para obter o |cRXP_LOOT_Brasa de Cynders|r
    >>|cRXP_WARN_Você ou alguém do seu grupo deve ter um|r |T133281:0|t[|cRXP_LOOT_Crepúsculo Sectário Medallion of Station - Missão - Missão|r] |cRXP_WARN_e deve equipar um|r |T132658:0|t[|cRXP_FRIENDLY_Crepúsculo Sectário|r] |cRXP_WARN_conjunto sempre para evocar um novo|r |cRXP_ENEMY_Duque|r
    >>|cRXP_WARN_Você pode precisar coletar mais|r |T133281:0|t[|cRXP_LOOT_Crepúsculo Sectário Medallion of Stations|r] |cRXP_WARN_e|r |T132658:0|t[|cRXP_FRIENDLY_Crepúsculo Sectário|r] |cRXP_WARN_conjuntos se não tiver sorte|r
    .complete 8961,3 --Cinder of Cynders (x1)
    .mob The Duke of Cynders
step
    #completewith next
    .subzone 254 >>Voe para |cFFfa9602Blackrock Mountain|r
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8961 >>Entregue Três Reis das Chamas - Missão
    .acceptmultiple 8962,8963,8964,8965 >>Aceite Components of Importance - Missão - Missão
    .target Bodley
step
    #completewith next
    .subzone 2744 >>Vá para Hive'Regal em |cFFfa9602Silithus|r
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
    >>Abate os |cRXP_ENEMY_Hive'Regal|r inimigos (élite). Saqueie-os para obter os |cRXP_LOOT_Restos Druídicos|r
    >>|cRXP_WARN_Isto tem uma taxa de queda muito baixa e pode levar bastante tempo. É recomendado coletar isto em um grupo de 5 pessoas|r
    .complete 8962,1 --Druidical Remains (x1)
    .mob Hive'Regal Spitfire
    .mob Hive'Regal Hive Lord
    .mob Hive'Regal Slavemaker
    .mob Hive'Regal Ambusher
    .mob Hive'Regal Burrower
    .isOnQuest 8962
step
    #completewith next
    .subzone 2249 >>Vá para Desfiladeiro Sussurro Gélido em |cFFfa9602Hibérnia|r
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
    >>Abate os |cRXP_ENEMY_Friomalho Gigantes|r e os |cRXP_ENEMY_Friomalho Preservadores|r (élite). Saqueie-os para obter o |cRXP_LOOT_Starbreeze Village Relíquia|r
    >>|cRXP_WARN_Isto tem uma taxa de queda muito baixa e pode levar bastante tempo. É recomendado coletar isto em um grupo de 5 pessoas|r
    .complete 8963,1 --Starbreeze Village Relic (x1)
    .mob Frostmaul Giant
    .mob Frostmaul Preserver
    .isOnQuest 8963
step
    #completewith next
    .subzone 2266 >>Vá para Manopla de Tyr em |cFFfa9602Terras Pestilentas Orientais|r
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
    >>Abate os |cRXP_ENEMY_Escarlate Pretorianos|r (élite). Saqueie-os para obter a |cRXP_ENEMY_Espada Brilhante do Fanatismo|r
    >>|cRXP_WARN_Isto tem uma taxa de queda muito baixa e pode levar bastante tempo. É recomendado coletar isto em um grupo de 5 pessoas|r
    .complete 8964,1 --Brilliant Sword of Zealotry (x1)
    .mob Scarlet Praetorian
    .isOnQuest 8964
step
    #completewith next
    .goto Hillsbrad Foothills,19.67,76.92
    .subzone 896 >>Vá para Purgation Isle em |cFFfa9602Contraforte de Eira dos Montes|r
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
    >>Abate os |cRXP_ENEMY_Mortos-vivos Fantasmas|r (élite) na ilha. Saqueie-os para obter |cRXP_LOOT_Alma Cinzas do Banido|r
    >>|cRXP_WARN_Isto tem uma taxa de queda muito baixa e pode levar bastante tempo. É recomendado coletar isto em um grupo de 5 pessoas|r
    .complete 8965,1 --Soul Ashes of the Banished (x1)
    .mob Cursed Paladin
    .mob Writhing Mage
    .mob Condemned Acolyte
    .mob Condemned Monk
    .mob Cursed Justicar
    .isOnQuest 8965
step
    #completewith LeftPiecePU
    .subzone 254 >>Voe para |cFFfa9602Blackrock Mountain|r
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8962 >>Entregue Components of Importance - Missão - Missão
    .target Bodley
    .isQuestComplete 8962
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8963 >>Entregue Components of Importance - Missão - Missão
    .target Bodley
    .isQuestComplete 8963
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8964 >>Entregue Components of Importance - Missão - Missão
    .target Bodley
    .isQuestComplete 8964
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8965 >>Entregue Components of Importance - Missão - Missão
    .target Bodley
    .isQuestComplete 8965
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .acceptmultiple 8966,8967,8968,8969 >>Aceite A Parte Esquerda do Amuleto do Lorde Valthalak
    .target Bodley
    .isQuestTurnedIn 8962
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .acceptmultiple 8966,8967,8968,8969 >>Aceite A Parte Esquerda do Amuleto do Lorde Valthalak
    .target Bodley
    .isQuestTurnedIn 8963
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .acceptmultiple 8966,8967,8968,8969 >>Aceite A Parte Esquerda do Amuleto do Lorde Valthalak
    .target Bodley
    .isQuestTurnedIn 8964
step
    #label LeftPiecePU
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .acceptmultiple 8966,8967,8968,8969 >>Aceite A Parte Esquerda do Amuleto do Lorde Valthalak
    .target Bodley
    .isQuestTurnedIn 8965
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Entre no Pico da Rocha Negra
    >>|cRXP_WARN_Tenha um grupo pronto|r
    .isOnQuest 8966
step
    >>Abate |cRXP_ENEMY_Mor Casco Gris|r. Saque-o para |T133320:0|t[|cRXP_LOOT_Parte Esquerda do Amuleto do Lorde Valthalak|r]
    .use 22049 >>|cRXP_WARN_Use o|r |T133881:0|t[Braseiro of Beckoning] |cRXP_WARN_na sala de|r |cRXP_ENEMY_War Master Voone|r |cRXP_WARN_para convocar|r |cRXP_ENEMY_Mor Casco Gris|r
    .complete 8966,1 --Mor Grayhoof Slain (x1)
    .complete 8966,2 --Left Piece of Lord Valthalak's Amulet (x1)
    .mob War Master Voone
    .mob Mor Grayhoof
    .isOnQuest 8966
step
    #completewith next
    .zone Feralas >>Viaje para |cFFfa9602Feralas|r
    .subzoneskip 2557
    .isOnQuest 8967
step
    #completewith next
    .goto Kalimdor,43.84,67.41,20 >>Entre na entrada leste de Martelo do Gládio Cruel
    >>|cRXP_WARN_Tenha um grupo pronto|r
    .isOnQuest 8967
step
    >>Abate |cRXP_ENEMY_Isalien|r. Saque-a para |T133320:0|t[|cRXP_LOOT_Parte Esquerda do Amuleto do Lorde Valthalak|r]
    .use 22050 >>|cRXP_WARN_Use o|r |T133881:0|t[Braseiro of Beckoning] |cRXP_WARN_na sala do|r |cRXP_ENEMY_Azzin, o Selvamorfo|r |cRXP_WARN_para convocar|r |cRXP_ENEMY_Isalien|r
    .complete 8967,1 --Isalien slain (x1)
    .complete 8967,2 --Left Piece of Lord Valthalak's Amulet (x1)
    .mob Alzzin the Wildshaper
    .mob Isalien
    .isOnQuest 8967
step
    #completewith next
    .zone Eastern Plaguelands >>Vá para |cFFfa9602Terras Pestilentas Orientais|r
    .subzoneskip 2017
    .isOnQuest 8968
step
    #completewith next
    .goto Eastern Kingdoms,55.06,17.51
    .subzone 2017 >>Entre em Stratholme
    >>|cRXP_WARN_Tenha um grupo pronto|r
    .isOnQuest 8968
step
    >>Abate |cRXP_ENEMY_Jil|r e |cRXP_ENEMY_Soeiro|r. Saque-os para |T133320:0|t[|cRXP_LOOT_Parte Esquerda do Amuleto do Lorde Valthalak|r]
    .use 22051 >>|cRXP_WARN_Use o|r |T133881:0|t[Braseiro of Beckoning] |cRXP_WARN_na sala de|r |cRXP_ENEMY_Balnazzar|r |cRXP_WARN_para convocar|r |cRXP_ENEMY_Jil|r |cRXP_WARN_e|r |cRXP_ENEMY_Soeiro|r
    .complete 8968,1 --Jarien slain (x1)
    .complete 8968,2 --Sothos slain (x1)
    .complete 8968,3 --Left Piece of Lord Valthalak's Amulet (x1)
    .mob Balnazzara
    .mob Jarien
    .mob Sothos
    .isOnQuest 8968
step
    #completewith next
    .zone Western Plaguelands >>Vá para |cFFfa9602Terras Pestilentas Ocidentais|r
    .subzoneskip 2057
    .isOnQuest 8969
step
    #completewith next
    .goto Eastern Kingdoms,52.75,26.41
    .subzone 2057 >>Entre em Scolomântia
    >>|cRXP_WARN_Tenha um grupo pronto|r
    .isOnQuest 8969
step
    >>Abate |cRXP_ENEMY_Kormok|r. Saque-o para |T133320:0|t[|cRXP_LOOT_Parte Esquerda do Amuleto do Lorde Valthalak|r]
    .use 22052 >>|cRXP_WARN_Use o|r |T133881:0|t[Braseiro of Beckoning] |cRXP_WARN_na sala do|r |cRXP_ENEMY_Ras Friomúrmuro|r |cRXP_WARN_para convocar|r |cRXP_ENEMY_Kormok|r
    .complete 8969,1 --Kormok slain (x1)
    .complete 8969,2 --Left Piece of Lord Valthalak's Amulet (x1)
    .mob Ras Frostwhisper
    .mob Kormok
    .isOnQuest 8969
step
    #completewith AlcazIslandPU
    .subzone 254 >>Voe para |cFFfa9602Blackrock Mountain|r
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8966 >>Entregue A Parte Esquerda do Amuleto do Lorde Valthalak
    .accept 8970 >>Aceite I See Alcaz Ilha In Your Future...
    .target Bodley
    .isQuestComplete 8966
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8967 >>Entregue A Parte Esquerda do Amuleto do Lorde Valthalak
    .accept 8970 >>Aceite I See Alcaz Ilha In Your Future...
    .target Bodley
    .isQuestComplete 8967
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8968 >>Entregue A Parte Esquerda do Amuleto do Lorde Valthalak
    .accept 8970 >>Aceite I See Alcaz Ilha In Your Future...
    .target Bodley
    .isQuestComplete 8968
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8969 >>Entregue A Parte Esquerda do Amuleto do Lorde Valthalak
    .accept 8970 >>Aceite I See Alcaz Ilha In Your Future...
    .target Bodley
    .isQuestComplete 8969
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .accept 8970 >>Aceite I See Alcaz Ilha In Your Future...
    .target Bodley
    .isQuestTurnedIn 8966
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .accept 8970 >>Aceite I See Alcaz Ilha In Your Future...
    .target Bodley
    .isQuestTurnedIn 8967
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .accept 8970 >>Aceite I See Alcaz Ilha In Your Future...
    .target Bodley
    .isQuestTurnedIn 8968
step
    #label AlcazIslandPU
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .accept 8970 >>Aceite I See Alcaz Ilha In Your Future...
    .target Bodley
    .isQuestTurnedIn 8969
step
    #completewith next
    .goto Dustwallow Marsh,72.26,18.28
    .subzone 2079 >>Voe para Alcaz Ilha em |cFFfa9602Pântano Vadeoso|r
step
    #loop
    .goto Dustwallow Marsh,76.91,18.24,0
    .goto Dustwallow Marsh,74.38,17.99,50,0
    .goto Dustwallow Marsh,74.89,14.68,50,0
    .goto Dustwallow Marsh,74.38,17.99,50,0
    .goto Dustwallow Marsh,76.91,18.24,50,0
    .goto Dustwallow Marsh,76.56,22.15,50,0
    .goto Dustwallow Marsh,75.49,21.75,50,0
    >>Mate os |cRXP_ENEMY_Strashaz Naga|r (elite). Saqueie-os para obter |cRXP_LOOT_Bloodkelp|r
    >>|cRXP_WARN_Isto tem uma taxa de queda muito baixa e pode levar bastante tempo. É recomendado coletar isto em um grupo de 5 pessoas|r
    .complete 8970,1 --Bloodkelp (x20)
    .mob Strashaz Warrior
    .mob Strashaz Myrmidon
    .mob Strashaz Siren
    .mob Strashaz Sorceress
    .mob Strashaz Serpent Guard
step
    #completewith next
    .subzone 254 >>Voe para |cFFfa9602Blackrock Mountain|r
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8970 >>Entregue Vejo a Ilha de Alcaz no Seu Futuro...
    .target Bodley
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .acceptmultiple 8985,8986,8987,8988 >>Aceite Mais Componentes de Importância
    .target Bodley
    .isQuestTurnedIn 8970
step
    #completewith next
    .subzone 2744 >>Vá para Hive'Regal em |cFFfa9602Silithus|r
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
    >>Abate os |cRXP_ENEMY_Hive'Regal|r inimigos (élite). Saqueie-os para obter os |cRXP_LOOT_Restos Druídicos|r
    >>|cRXP_WARN_Isto tem uma taxa de queda muito baixa e pode levar bastante tempo. É recomendado coletar isto em um grupo de 5 pessoas|r
    .complete 8986,1 --Druidical Remains (x1)
    .mob Hive'Regal Spitfire
    .mob Hive'Regal Hive Lord
    .mob Hive'Regal Slavemaker
    .mob Hive'Regal Ambusher
    .mob Hive'Regal Burrower
    .isOnQuest 8986
step
    #completewith next
    .subzone 2249 >>Vá para Desfiladeiro Sussurro Gélido em |cFFfa9602Hibérnia|r
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
    >>Abate os |cRXP_ENEMY_Friomalho Gigantes|r e os |cRXP_ENEMY_Friomalho Preservadores|r (élite). Saqueie-os para obter o |cRXP_LOOT_Starbreeze Village Relíquia|r
    >>|cRXP_WARN_Isto tem uma taxa de queda muito baixa e pode levar bastante tempo. É recomendado coletar isto em um grupo de 5 pessoas|r
    .complete 8985,1 --Starbreeze Village Relic (x1)
    .mob Frostmaul Giant
    .mob Frostmaul Preserver
    .isOnQuest 8985
step
    #completewith next
    .subzone 2266 >>Vá para Manopla de Tyr em |cFFfa9602Terras Pestilentas Orientais|r
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
    >>Abate os |cRXP_ENEMY_Escarlate Pretorianos|r (élite). Saqueie-os para obter a |cRXP_ENEMY_Espada Brilhante do Fanatismo|r
    >>|cRXP_WARN_Isto tem uma taxa de queda muito baixa e pode levar bastante tempo. É recomendado coletar isto em um grupo de 5 pessoas|r
    .complete 8987,1 --Brilliant Sword of Zealotry (x1)
    .mob Scarlet Praetorian
    .isOnQuest 8987
step
    #completewith next
    .goto Hillsbrad Foothills,19.67,76.92
    .subzone 896 >>Vá para Purgation Isle em |cFFfa9602Contraforte de Eira dos Montes|r
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
    >>Abate os |cRXP_ENEMY_Mortos-vivos Fantasmas|r (élite) na ilha. Saqueie-os para obter |cRXP_LOOT_Alma Cinzas do Banido|r
    >>|cRXP_WARN_Isto tem uma taxa de queda muito baixa e pode levar bastante tempo. É recomendado coletar isto em um grupo de 5 pessoas|r
    .complete 8988,1 --Soul Ashes of the Banished (x1)
    .mob Cursed Paladin
    .mob Writhing Mage
    .mob Condemned Acolyte
    .mob Condemned Monk
    .mob Cursed Justicar
    .isOnQuest 8988
step
    #completewith RightPiecePU
    .subzone 254 >>Voe para |cFFfa9602Blackrock Mountain|r
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8985 >>Entregue Mais Componentes de Importância
    .target Bodley
    .isQuestComplete 8985
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8986 >>Entregue Mais Componentes de Importância
    .target Bodley
    .isQuestComplete 8986
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8987 >>Entregue Mais Componentes de Importância
    .target Bodley
    .isQuestComplete 8987
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8988 >>Entregue Mais Componentes de Importância
    .target Bodley
    .isQuestComplete 8988
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .acceptmultiple 8989,8990,8991,8992 >>Aceite A Peça Direita do Amuleto do Lorde Valthalak
    .target Bodley
    .isQuestTurnedIn 8985
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .acceptmultiple 8989,8990,8991,8992 >>Aceite A Peça Direita do Amuleto do Lorde Valthalak
    .target Bodley
    .isQuestTurnedIn 8986
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .acceptmultiple 8989,8990,8991,8992 >>Aceite A Peça Direita do Amuleto do Lorde Valthalak
    .target Bodley
    .isQuestTurnedIn 8987
step
    #label RightPiecePU
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .acceptmultiple 8989,8990,8991,8992 >>Aceite A Peça Direita do Amuleto do Lorde Valthalak
    .target Bodley
    .isQuestTurnedIn 8988
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Entre no Pico da Rocha Negra
    >>|cRXP_WARN_Tenha um grupo pronto|r
    .isOnQuest 8989
step
    >>Mate |cRXP_ENEMY_Mor Casco Gris|r. Saque-o pelo |T133318:0|t[|cRXP_LOOT_Parte Direita do Amuleto do Lorde Valthalak|r]
    .use 22049 >>|cRXP_WARN_Use o|r |T133881:0|t[Braseiro of Beckoning] |cRXP_WARN_na sala de|r |cRXP_ENEMY_War Master Voone|r |cRXP_WARN_para convocar|r |cRXP_ENEMY_Mor Casco Gris|r
    .complete 8989,1 --Mor Grayhoof Slain (x1)
    .collect 22046,1,8989,1 --Right Piece of Lord Valthalak's Amulet (x1)
    .mob War Master Voone
    .mob Mor Grayhoof
    .isOnQuest 8989
step
    #optional
    .use 22046 >>|cRXP_WARN_Use a|r |T133320:0|t[|cRXP_LOOT_Parte Esquerda do Amuleto do Lorde Valthalak|r]|cRXP_WARN_, |r|T133318:0|t[|cRXP_LOOT_Parte Direita do Amuleto do Lorde Valthalak|r] |cRXP_WARN_e|r |T133316:0|t[|cRXP_LOOT_Parte Superior do Amuleto do Lorde Valthalak|r] |cRXP_WARN_para criar|r |T133314:0|t[|cRXP_LOOT_Amuleto do Lorde Valthalak|r]
    .complete 8989,2 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,1
    .isOnQuest 8989
step
    .use 22046 >>|cRXP_WARN_Use a|r |T133320:0|t[|cRXP_LOOT_Parte Esquerda do Amuleto do Lorde Valthalak|r]|cRXP_WARN_, |r|T133318:0|t[|cRXP_LOOT_Parte Direita do Amuleto do Lorde Valthalak|r] |cRXP_WARN_e|r |T133316:0|t[|cRXP_LOOT_Parte Superior do Amuleto do Lorde Valthalak|r] |cRXP_WARN_para criar|r |T133314:0|t[|cRXP_LOOT_Amuleto do Lorde Valthalak|r]
    >>|cRXP_WARN_Se você perdeu a|r |T133316:0|t[|cRXP_LOOT_Parte Superior do Amuleto do Lorde Valthalak|r]|cRXP_WARN_, fale com|r |cRXP_FRIENDLY_Bodley|r |cRXP_WARN_para obtê-la novamente|r
    .complete 8989,2 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,<1
    .isOnQuest 8989
step
    #completewith next
    .zone Feralas >>Viaje para |cFFfa9602Feralas|r
    .subzoneskip 2557
    .isOnQuest 8990
step
    #completewith next
    .goto Kalimdor,43.84,67.41,20 >>Entre na entrada leste de Martelo do Gládio Cruel
    >>|cRXP_WARN_Tenha um grupo pronto|r
    .isOnQuest 8990
step
    >>Mate |cRXP_ENEMY_Isalien|r. Saque-a pelo |T133318:0|t[|cRXP_LOOT_Parte Direita do Amuleto do Lorde Valthalak|r]
    .use 22050 >>|cRXP_WARN_Use o|r |T133881:0|t[Braseiro of Beckoning] |cRXP_WARN_na sala do|r |cRXP_ENEMY_Azzin, o Selvamorfo|r |cRXP_WARN_para convocar|r |cRXP_ENEMY_Isalien|r
    .complete 8990,1 --Isalien slain (x1)
    .collect 22046,1,8990,1 --Right Piece of Lord Valthalak's Amulet (x1)
    .mob Alzzin the Wildshaper
    .mob Isalien
    .isOnQuest 8990
step
    #optional
    .use 22046 >>|cRXP_WARN_Use a|r |T133320:0|t[|cRXP_LOOT_Parte Esquerda do Amuleto do Lorde Valthalak|r]|cRXP_WARN_, |r|T133318:0|t[|cRXP_LOOT_Parte Direita do Amuleto do Lorde Valthalak|r] |cRXP_WARN_e|r |T133316:0|t[|cRXP_LOOT_Parte Superior do Amuleto do Lorde Valthalak|r] |cRXP_WARN_para criar|r |T133314:0|t[|cRXP_LOOT_Amuleto do Lorde Valthalak|r]
    .complete 8990,2 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,1
    .isOnQuest 8990
step
    .use 22046 >>|cRXP_WARN_Use a|r |T133320:0|t[|cRXP_LOOT_Parte Esquerda do Amuleto do Lorde Valthalak|r]|cRXP_WARN_, |r|T133318:0|t[|cRXP_LOOT_Parte Direita do Amuleto do Lorde Valthalak|r] |cRXP_WARN_e|r |T133316:0|t[|cRXP_LOOT_Parte Superior do Amuleto do Lorde Valthalak|r] |cRXP_WARN_para criar|r |T133314:0|t[|cRXP_LOOT_Amuleto do Lorde Valthalak|r]
    >>|cRXP_WARN_Se você perdeu a|r |T133316:0|t[|cRXP_LOOT_Parte Superior do Amuleto do Lorde Valthalak|r]|cRXP_WARN_, fale com|r |cRXP_FRIENDLY_Bodley|r |cRXP_WARN_para obtê-la novamente|r
    .complete 8990,2 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,<1
    .isOnQuest 8990
step
    #completewith next
    .zone Eastern Plaguelands >>Vá para |cFFfa9602Terras Pestilentas Orientais|r
    .subzoneskip 2017
    .isOnQuest 8991
step
    #completewith next
    .goto Eastern Kingdoms,55.06,17.51
    .subzone 2017 >>Entre em Stratholme
    >>|cRXP_WARN_Tenha um grupo pronto|r
    .isOnQuest 8991
step
    >>Mate |cRXP_ENEMY_Jil|r e |cRXP_ENEMY_Soeiro|r. Saque-os pelo |T133318:0|t[|cRXP_LOOT_Parte Direita do Amuleto do Lorde Valthalak|r]
    .use 22051 >>|cRXP_WARN_Use o|r |T133881:0|t[Braseiro of Beckoning] |cRXP_WARN_na sala de|r |cRXP_ENEMY_Balnazzar|r |cRXP_WARN_para convocar|r |cRXP_ENEMY_Jil|r |cRXP_WARN_e|r |cRXP_ENEMY_Soeiro|r
    .complete 8991,1 --Jarien slain (x1)
    .complete 8991,2 --Sothos slain (x1)
    .collect 22046,1,8991,1 --Right Piece of Lord Valthalak's Amulet (x1)
    .mob Balnazzara
    .mob Jarien
    .mob Sothos
    .isOnQuest 8991
step
    #optional
    .use 22046 >>|cRXP_WARN_Use a|r |T133320:0|t[|cRXP_LOOT_Parte Esquerda do Amuleto do Lorde Valthalak|r]|cRXP_WARN_, |r|T133318:0|t[|cRXP_LOOT_Parte Direita do Amuleto do Lorde Valthalak|r] |cRXP_WARN_e|r |T133316:0|t[|cRXP_LOOT_Parte Superior do Amuleto do Lorde Valthalak|r] |cRXP_WARN_para criar|r |T133314:0|t[|cRXP_LOOT_Amuleto do Lorde Valthalak|r]
    .complete 8991,3 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,1
    .isOnQuest 8991
step
    .use 22046 >>|cRXP_WARN_Use a|r |T133320:0|t[|cRXP_LOOT_Parte Esquerda do Amuleto do Lorde Valthalak|r]|cRXP_WARN_, |r|T133318:0|t[|cRXP_LOOT_Parte Direita do Amuleto do Lorde Valthalak|r] |cRXP_WARN_e|r |T133316:0|t[|cRXP_LOOT_Parte Superior do Amuleto do Lorde Valthalak|r] |cRXP_WARN_para criar|r |T133314:0|t[|cRXP_LOOT_Amuleto do Lorde Valthalak|r]
    >>|cRXP_WARN_Se você perdeu a|r |T133316:0|t[|cRXP_LOOT_Parte Superior do Amuleto do Lorde Valthalak|r]|cRXP_WARN_, fale com|r |cRXP_FRIENDLY_Bodley|r |cRXP_WARN_para obtê-la novamente|r
    .complete 8991,3 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,<1
    .isOnQuest 8991
step
    #completewith next
    .zone Western Plaguelands >>Vá para |cFFfa9602Terras Pestilentas Ocidentais|r
    .subzoneskip 2057
    .isOnQuest 8992
step
    #completewith next
    .goto Eastern Kingdoms,52.75,26.41
    .subzone 2057 >>Entre em Scolomântia
    >>|cRXP_WARN_Tenha um grupo pronto|r
    .isOnQuest 8992
step
    >>Mate |cRXP_ENEMY_Kormok|r. Saque-o pelo |T133318:0|t[|cRXP_LOOT_Parte Direita do Amuleto do Lorde Valthalak|r]
    .use 22052 >>|cRXP_WARN_Use o|r |T133881:0|t[Braseiro of Beckoning] |cRXP_WARN_na sala do|r |cRXP_ENEMY_Ras Friomúrmuro|r |cRXP_WARN_para convocar|r |cRXP_ENEMY_Kormok|r
    .complete 8992,1 --Kormok slain (x1)
    .collect 22046,1,8992,1 --Right Piece of Lord Valthalak's Amulet (x1)
    .mob Ras Frostwhisper
    .mob Kormok
    .isOnQuest 8992
step
    #optional
    .use 22046 >>|cRXP_WARN_Use a|r |T133320:0|t[|cRXP_LOOT_Parte Esquerda do Amuleto do Lorde Valthalak|r]|cRXP_WARN_, |r|T133318:0|t[|cRXP_LOOT_Parte Direita do Amuleto do Lorde Valthalak|r] |cRXP_WARN_e|r |T133316:0|t[|cRXP_LOOT_Parte Superior do Amuleto do Lorde Valthalak|r] |cRXP_WARN_para criar|r |T133314:0|t[|cRXP_LOOT_Amuleto do Lorde Valthalak|r]
    .complete 8992,2 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,1
    .isOnQuest 8992
step
    .use 22046 >>|cRXP_WARN_Use a|r |T133320:0|t[|cRXP_LOOT_Parte Esquerda do Amuleto do Lorde Valthalak|r]|cRXP_WARN_, |r|T133318:0|t[|cRXP_LOOT_Parte Direita do Amuleto do Lorde Valthalak|r] |cRXP_WARN_e|r |T133316:0|t[|cRXP_LOOT_Parte Superior do Amuleto do Lorde Valthalak|r] |cRXP_WARN_para criar|r |T133314:0|t[|cRXP_LOOT_Amuleto do Lorde Valthalak|r]
    >>|cRXP_WARN_Se você perdeu a|r |T133316:0|t[|cRXP_LOOT_Parte Superior do Amuleto do Lorde Valthalak|r]|cRXP_WARN_, fale com|r |cRXP_FRIENDLY_Bodley|r |cRXP_WARN_para obtê-la novamente|r
    .complete 8992,2 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,<1
    .isOnQuest 8992
step
    #completewith FinalPrepPU
    .subzone 254 >>Voe para |cFFfa9602Blackrock Mountain|r
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8989 >>Entregue a Parte Direita do Amuleto do Lorde Valthalak
    .accept 8994 >>Aceite Preparativos Finais
    .target Bodley
    .isQuestComplete 8989
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8990 >>Entregue a Parte Direita do Amuleto do Lorde Valthalak
    .accept 8994 >>Aceite Preparativos Finais
    .target Bodley
    .isQuestComplete 8990
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8991 >>Entregue a Parte Direita do Amuleto do Lorde Valthalak
    .accept 8994 >>Aceite Preparativos Finais
    .target Bodley
    .isQuestComplete 8991
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8992 >>Entregue a Parte Direita do Amuleto do Lorde Valthalak
    .accept 8994 >>Aceite Preparativos Finais
    .target Bodley
    .isQuestComplete 8992
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .accept 8994 >>Aceite Preparativos Finais
    .target Bodley
    .isQuestTurnedIn 8989
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .accept 8994 >>Aceite Preparativos Finais
    .target Bodley
    .isQuestTurnedIn 8990
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .accept 8994 >>Aceite Preparativos Finais
    .target Bodley
    .isQuestTurnedIn 8991
step
    #label FinalPrepPU
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .accept 8994 >>Aceite Preparativos Finais
    .target Bodley
    .isQuestTurnedIn 8992
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Entre no Pico da Rocha Negra
    >>|cRXP_WARN_Tenha um grupo pronto|r
step
    >>Abate os |cRXP_ENEMY_Orcs|r em Blackrock Spire. Saqueie-os pelos |cRXP_LOOT_Blackrock Bracers|r
    .complete 8994,1 --Blackrock Bracer (x40)
    --too many .mobs, would cause clutter
step
    >>|cRXP_BUY_Coletar uma |r |T134821:0|t[Frasco de Poder Supremo]
    >>|cRXP_WARN_Compre-o da casa de leilões, se possível|r
    .collect 13512,1,8994,1 --Flask of Supreme Power (x1)
step
    #completewith next
    .subzone 254 >>Voe para |cFFfa9602Blackrock Mountain|r
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8994 >>Entregue Preparativos Finais
    .accept 8995 >>Aceite Mea Culpa, Lorde Valthalak
    .target Bodley
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Entre no Pico da Rocha Negra Superior
    >>|cRXP_WARN_Esta é uma masmorra para 10 jogadores. Você ou alguém do seu grupo deve ter o|r |T133343:0|t[|cRXP_LOOT_Selo da Ascensão|r] |cRXP_WARN_para conseguir entrar no Pico Rocha Negra Superior|r
step
    .use 22048 >>Abate o |cRXP_ENEMY_Lorde Valthalak|r. |cRXP_WARN_Depois use|r |T133314:0|t[Amuleto do Lorde Valthalak] |cRXP_WARN_no cadáver|r
    .use 22056 >>|cRXP_WARN_Use o|r |T133881:0|t[Braseiro of Beckoning] |cRXP_WARN_no quarto de|r |cRXP_ENEMY_The Fera|r |cRXP_WARN_para convocar|r |cRXP_ENEMY_Lorde Valthalak|r
    .complete 8995,1 --Lord Valthalak slain (x1)
    .complete 8995,2 --Lord Valthalak's Amulet (x1)
    .mob The Beast
    .mob Lord Valthalak
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Espírito de Lorde Valthalak|r que aparece
    .turnin 8995 >>Entregue Mea Culpa, Lorde Valthalak
    .accept 8996 >>Aceite Devolver para Bodley
    .target Spirit of Lord Valthalak
step
    #completewith next
    .subzone 254 >>Voe para |cFFfa9602Blackrock Mountain|r
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Use o|r |T133878:0|t[Revelador Extradimensional de Fantasmas] |cRXP_WARN_para revelar|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8996 >>Entregue Devolver para Bodley
    .accept 8997 >>Aceite De Volta ao Início << Alliance
    .accept 8998 >>Aceite De Volta ao Início << Horde
    .target Bodley
step << Alliance
    #completewith next
    .zone Ironforge >>Vá para |cFFfa9602Ironforge|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Deliana|r
    .turnin 8997 >>Entregue De Volta ao Início
    .accept 8999 >>Aceite Salvando o Melhor para Último << Druid
    .accept 9000 >>Aceite Salvando o Melhor para Último << Hunter
    .accept 9001 >>Aceite Salvando o Melhor para Último << Mage
    .accept 9002 >>Aceite Salvando o Melhor para Último << Paladin
    .accept 9003 >>Aceite Salvando o Melhor para Último << Priest
    .accept 9004 >>Aceite Salvando o Melhor para Último << Rogue
    .accept 9005 >>Aceite Salvando o Melhor para Último << Warlock
    .accept 9006 >>Aceite Salvando o Melhor para Último << Warrior
    .target Deliana
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Deliana|r
    >>Você precisará de |T133129:0|t[|cRXP_LOOT_Capucho do Coração Selvagem|r] e |T132741:0|t[|cRXP_LOOT_Colete do Coração Selvagem|r] para entregar esta missão << Druid
    >>Você precisará de |T133126:0|t[|cRXP_LOOT_Casquete do Espreitador de Feras|r] e |T132625:0|t[|cRXP_LOOT_Túnica do Espreitador de Feras|r] para entregar esta missão <<  Hunter
    >>Você precisará de |T132768:0|t[|cRXP_LOOT_Coroa do Magíster|r] e |T132666:0|t[|cRXP_LOOT_Vestes do Magíster|r] para entregar esta missão << Mage
    >>Você precisará de |T133076:0|t[|cRXP_LOOT_Elmo da Forja de Luz|r] e |T132738:0|t[|cRXP_LOOT_Peitoral da Forja de Luz|r] para entregar esta missão << Paladin
    >>Você precisará de |T132767:0|t[|cRXP_LOOT_Coroa do Devoto|r] e |T132652:0|t[|cRXP_LOOT_Veste do Devoto|r] para entregar esta missão << Priest
    >>Você precisará de |T133143:0|t[|cRXP_LOOT_Capuz da Arte Sombria|r] e |T132722:0|t[|cRXP_LOOT_Túnica da Arte Sombria|r] para entregar esta missão << Rogue
    >>Você precisará de |T133131:0|t[|cRXP_LOOT_Máscara de Brumedo|r] e |T132690:0|t[|cRXP_LOOT_Veste de Brumedo|r] para entregar esta missão << Warlock
    >>Você precisará de |T133070:0|t[|cRXP_LOOT_Elmo do Bravura|r] e |T132738:0|t[|cRXP_LOOT_Peitoral do Bravura|r] para entregar esta missão << Warrior
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
    .turnin 8999 >>Entregue Salvando o Melhor para o Último - Missão << Druid
    .turnin 9000 >>Entregue Salvando o Melhor para o Último - Missão << Hunter
    .turnin 9001 >>Entregue Salvando o Melhor para o Último - Missão << Mage
    .turnin 9002 >>Entregue Salvando o Melhor para o Último - Missão << Paladin
    .turnin 9003 >>Entregue Salvando o Melhor para o Último - Missão << Priest
    .turnin 9004 >>Entregue Salvando o Melhor para o Último - Missão << Rogue
    .turnin 9005 >>Entregue Salvando o Melhor para o Último - Missão << Warlock
    .turnin 9006 >>Entregue Salvando o Melhor para o Último - Missão << Warrior
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>Voe para |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mokvar|r
    .turnin 8998 >>Entregue De Volta ao Início
    .accept 9007 >>Aceite Salvando o Melhor para Último << Druid
    .accept 9008 >>Aceite Salvando o Melhor para Último << Hunter
    .accept 9009 >>Aceite Salvando o Melhor para Último << Priest
    .accept 9010 >>Aceite Salvando o Melhor para Último << Rogue
    .accept 9011 >>Aceite Salvando o Melhor para Último << Shaman
    .accept 9012 >>Aceite Salvando o Melhor para Último << Warlock
    .accept 9013 >>Aceite Salvando o Melhor para Último << Warrior
    .accept 9014 >>Aceite Salvando o Melhor para Último << Mage
    .target Mokvar
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mokvar|r
    >>Você precisará de |T133129:0|t[|cRXP_LOOT_Capucho do Coração Selvagem|r] e |T132741:0|t[|cRXP_LOOT_Colete do Coração Selvagem|r] para entregar esta missão << Druid
    >>Você precisará de |T133126:0|t[|cRXP_LOOT_Casquete do Espreitador de Feras|r] e |T132625:0|t[|cRXP_LOOT_Túnica do Espreitador de Feras|r] para entregar esta missão <<  Hunter
    >>Você precisará de |T132768:0|t[|cRXP_LOOT_Coroa do Magíster|r] e |T132666:0|t[|cRXP_LOOT_Vestes do Magíster|r] para entregar esta missão << Mage
    >>Você precisará de |T132767:0|t[|cRXP_LOOT_Coroa do Devoto|r] e |T132652:0|t[|cRXP_LOOT_Veste do Devoto|r] para entregar esta missão << Priest
    >>Você precisará de |T133143:0|t[|cRXP_LOOT_Capuz da Arte Sombria|r] e |T132722:0|t[|cRXP_LOOT_Túnica da Arte Sombria|r] para entregar esta missão << Rogue
    >>Você precisará de |T133072:0|t[|cRXP_LOOT_Coifa dos Elementos|r] e |T132633:0|t[|cRXP_LOOT_Colete dos Elementos|r] para entregar esta missão << Shaman
    >>Você precisará de |T133131:0|t[|cRXP_LOOT_Máscara de Brumedo|r] e |T132690:0|t[|cRXP_LOOT_Veste de Brumedo|r] para entregar esta missão << Warlock
    >>Você precisará de |T133070:0|t[|cRXP_LOOT_Elmo do Bravura|r] e |T132738:0|t[|cRXP_LOOT_Peitoral do Bravura|r] para entregar esta missão << Warrior
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
    .turnin 9007 >>Entregue Salvando o Melhor para o Último - Missão << Druid
    .turnin 9008 >>Entregue Salvando o Melhor para o Último - Missão << Hunter
    .turnin 9009 >>Entregue Salvando o Melhor para o Último - Missão << Priest
    .turnin 9010 >>Entregue Salvando o Melhor para o Último - Missão << Rogue
    .turnin 9011 >>Entregue Salvando o Melhor para o Último - Missão << Shaman
    .turnin 9012 >>Entregue Salvando o Melhor para o Último - Missão << Warlock
    .turnin 9013 >>Entregue Salvando o Melhor para o Último - Missão << Warrior
    .turnin 9014 >>Entregue Salvando o Melhor para o Último - Missão << Mage
    .target Mokvar

]])
