if GetLocale() ~= "zhCN" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
#group RestedXP 终局指南
#subgroup 凶蛮之心套装指南 << Druid
#subgroup 兽王套装指南 << Hunter
#subgroup 巫师套装指南 << Mage
#subgroup 魂铸套装指南 << Paladin
#subgroup 暗幕套装指南 << Rogue
#subgroup 五雷套装指南 << Shaman
#subgroup 死雾套装指南 << Warlock
#subgroup 英勇套装指南 << Warrior
#subgroup 坚贞套装指南 << Priest
#name 第1部：护腕
#next 第2部：腰带和手套


step
    >>获得|T132608:0|t[|cRXP_LOOT_野性之心护腕|r]。这是一件在|cFFfa9602斯坦索姆|r掉落的装备后绑定（BOE）物品 << Druid
    >>获得 |T132616:0|t[|cRXP_LOOT_野兽追猎者护腕|r]。这是一件在 |cFFfa9602斯坦索姆|r 和 |cFFfa9602黑石塔|r 掉落的装备后绑定（BOE）物品 << Hunter
    >>获得 |T133365:0|t[|cRXP_LOOT_博学者腕轮|r]。这是一件在 |cFFfa9602黑石塔|r 掉落的装备后绑定（BOE）物品 << Mage
    >>获得 |T132613:0|t[|cRXP_LOOT_光铸护腕|r]。这是一件在 |cFFfa9602斯坦索姆|r 掉落的装备后绑定（BOE）物品 << Paladin
    >>获得 |T132520:0|t[|cRXP_LOOT_虔诚护腕|r]。这是一件在 |cFFfa9602斯坦索姆|r 掉落的装备后绑定（BOE）物品 << Priest
    >>获得 |T132606:0|t[|cRXP_LOOT_迅影护腕|r]。这是一件在 |cFFfa9602通灵学院|r 掉落的装备后绑定（BOE）物品 << Rogue
    >>获得 |T132601:0|t[|cRXP_LOOT_元素腕轮|r]。这是一件在 |cFFfa9602斯坦索姆|r 掉落的装备后绑定（BOE）物品 << Shaman
    >>获得 |T132612:0|t[|cRXP_LOOT_鬼雾护腕|r]。这是一件在 |cFFfa9602黑石塔|r 掉落的装备后绑定（BOE）物品 << Warlock
    >>获得 |T132617:0|t[|cRXP_LOOT_勇气护腕|r]。这是一件在 |cFFfa9602黑石塔|r 掉落的装备后绑定（BOE）物品 << Warrior
    >>|cRXP_WARN_或者从拍卖行购买它们 << !sod
    >>|cRXP_WARN_且可从拍卖行购买，或在藏宝海湾从|cRXP_FRIENDLY_ 皮克希·希基克斯|r 处兑换|r |T133799:0|t[|cRXP_FRIENDLY_褪色的安德麦雷亚尔|r] << sod
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
    .zone Ironforge >>前往 |cFFfa9602铁炉堡|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德莉亚娜|r 对话
    .accept 8905 >>接受任务 热心的建议 << Druid
    .accept 8906 >>接受任务 热心的建议 << Hunter
    .accept 8907 >>接受任务 热心的建议 << Mage
    .accept 8908 >>接受任务 热心的建议 << Paladin
    .accept 8909 >>接受任务 热心的建议 << Priest
    .accept 8910 >>接受任务 热心的建议 << Rogue
    .accept 8911 >>接受任务 热心的建议 << Warlock
    .accept 8912 >>接受任务 热心的建议 << Warrior
    .target Deliana
step << Alliance
    #completewith next
    .zone Winterspring >>前往 |cFFfa9602冬泉谷|r
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
    >>杀死所有类型的 |cRXP_ENEMY_碎齿熊|r 和 |cRXP_ENEMY_霜刃豹|r。拾取他们的 |cRXP_LOOT_冬泉谷血样|r
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
    .zone Ironforge >>前往 |cFFfa9602铁炉堡|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德莉亚娜|r 对话
    >>|cRXP_WARN_你需要20金币和|r |T132608:0|t[|cRXP_LOOT_野性之心护腕|r] |cRXP_WARN_来交还此任务|r << Druid
    >>|cRXP_WARN_你需要20金币和|r |T132616:0|t[|cRXP_LOOT_野兽追猎者护腕|r] |cRXP_WARN_来交还此任务|r << Hunter
    >>|cRXP_WARN_你需要20金币和|r |T133365:0|t[|cRXP_LOOT_博学者腕轮|r] |cRXP_WARN_来交还此任务|r << Mage
    >>|cRXP_WARN_你需要20金币和|r |T132613:0|t[|cRXP_LOOT_光铸护腕|r] |cRXP_WARN_来交还此任务|r << Paladin
    >>|cRXP_WARN_你需要20金币和|r |T132520:0|t[|cRXP_LOOT_虔诚护腕|r] |cRXP_WARN_来交还此任务|r << Priest
    >>|cRXP_WARN_你需要20金币和|r |T132606:0|t[|cRXP_LOOT_迅影护腕|r] |cRXP_WARN_来交还此任务|r << Rogue
    >>|cRXP_WARN_你需要20金币和|r |T132612:0|t[|cRXP_LOOT_鬼雾护腕|r] |cRXP_WARN_来交还此任务|r << Warlock
    >>|cRXP_WARN_你需要20金币和|r |T132617:0|t[|cRXP_LOOT_勇气护腕|r] |cRXP_WARN_来交还此任务|r << Warrior
    .collect 16714,1,8905,1 << Druid --Wildheart Bracers (x1)
    .collect 16681,1,8906,1 << Hunter --Beaststalker's Bindings (x1)
    .collect 16683,1,8907,1 << Mage --Magister's Bindings (x1)
    .collect 16722,1,8908,1 << Paladin --Lightforge Bracers (x1)
    .collect 16697,1,8909,1 << Priest --Devout Bracers (x1)
    .collect 16710,1,8910,1 << Rogue --Shadowcraft Bracers (x1)
    .collect 16703,1,8911,1 << Warlock --Dreadmist Bracers (x1)
    .collect 16735,1,8912,1 << Warrior --Bracers of Valor (x1)
    .turnin 8905 >>交任务 热心的建议 << Druid
    .turnin 8906 >>交任务 热心的建议 << Hunter
    .turnin 8907 >>交任务 热心的建议 << Mage
    .turnin 8908 >>交任务 热心的建议 << Paladin
    .turnin 8909 >>交任务 热心的建议 << Priest
    .turnin 8910 >>交任务 热心的建议 << Rogue
    .turnin 8911 >>交任务 热心的建议 << Warlock
    .turnin 8912 >>交任务 热心的建议 << Warrior
    .accept 8922 >>接受任务 超自然的设备
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>前往 |cFFfa9602奥格瑞玛|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫克瓦尔|r 对话
    .accept 8913 >>接受任务 热心的建议 << Druid
    .accept 8914 >>接受任务 热心的建议 << Hunter
    .accept 8915 >>接受任务 热心的建议 << Mage
    .accept 8916 >>接受任务 热心的建议 << Priest
    .accept 8917 >>接受任务 热心的建议 << Rogue
    .accept 8918 >>接受任务 热心的建议 << Shaman
    .accept 8919 >>接受任务 热心的建议 << Warlock
    .accept 8920 >>接受任务 热心的建议 << Warrior
    .target Mokvar
step << Horde
    #completewith next
    .zone Silithus >>前往 |cFFfa9602希利苏斯|r
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
    >>击杀所有种类的 |cRXP_ENEMY_蜘蛛|r 和 |cRXP_ENEMY_蝎子|r。拾取它们的 |cRXP_LOOT_希利苏斯毒液样品|r
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
    .zone Orgrimmar >>前往 |cFFfa9602奥格瑞玛|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫克瓦尔|r 对话
    >>|cRXP_WARN_你需要20金币和|r |T132608:0|t[|cRXP_LOOT_野性之心护腕|r] |cRXP_WARN_来交还此任务|r << Druid
    >>|cRXP_WARN_你需要20金币和|r |T132616:0|t[|cRXP_LOOT_野兽追猎者护腕|r] |cRXP_WARN_来交还此任务|r << Hunter
    >>|cRXP_WARN_你需要20金币和|r |T133365:0|t[|cRXP_LOOT_博学者腕轮|r] |cRXP_WARN_来交还此任务|r << Mage
    >>|cRXP_WARN_你需要20金币和|r |T132520:0|t[|cRXP_LOOT_虔诚护腕|r] |cRXP_WARN_来交还此任务|r << Priest
    >>|cRXP_WARN_你需要20金币和|r |T132606:0|t[|cRXP_LOOT_迅影护腕|r] |cRXP_WARN_来交还此任务|r << Rogue
    >>|cRXP_WARN_你需要20金币和|r |T132601:0|t[|cRXP_LOOT_元素腕轮|r] |cRXP_WARN_来交还此任务|r << Shaman
    >>|cRXP_WARN_你需要20金币和|r |T132612:0|t[|cRXP_LOOT_鬼雾护腕|r] |cRXP_WARN_来交还此任务|r << Warlock
    >>|cRXP_WARN_你需要20金币和|r |T132617:0|t[|cRXP_LOOT_勇气护腕|r] |cRXP_WARN_来交还此任务|r << Warrior
    .collect 16714,1,8913,1 << Druid --Wildheart Bracers (x1)
    .collect 16681,1,8914,1 << Hunter --Beaststalker's Bindings (x1)
    .collect 16683,1,8915,1 << Mage --Magister's Bindings (x1)
    .collect 16697,1,8916,1 << Priest --Devout Bracers (x1)
    .collect 16710,1,8917,1 << Rogue --Shadowcraft Bracers (x1)
    .collect 16671,1,8918,1 << Shaman --Bindings of Elements (x1)
    .collect 16703,1,8919,1 << Warlock --Dreadmist Bracers (x1)
    .collect 16735,1,8920,1 << Warrior --Bracers of Valor (x1)
    .turnin 8913 >>交任务 热心的建议 << Druid
    .turnin 8914 >>交任务 热心的建议 << Hunter
    .turnin 8915 >>交任务 热心的建议 << Mage
    .turnin 8916 >>交任务 热心的建议 << Priest
    .turnin 8917 >>交任务 热心的建议 << Rogue
    .turnin 8918 >>交任务 热心的建议 << Shaman
    .turnin 8919 >>交任务 热心的建议 << Warlock
    .turnin 8920 >>交任务 热心的建议 << Warrior
    .accept 8923 >>接受任务 超自然的设备
    .target Mokvar

    ]])


RXPGuides.RegisterGuide([[
#classic
#tbc
#group RestedXP 终局指南
#subgroup 凶蛮之心套装指南 << Druid
#subgroup 兽王套装指南 << Hunter
#subgroup 巫师套装指南 << Mage
#subgroup 魂铸套装指南 << Paladin
#subgroup 暗幕套装指南 << Rogue
#subgroup 五雷套装指南 << Shaman
#subgroup 死雾套装指南 << Warlock
#subgroup 英勇套装指南 << Warrior
#subgroup 坚贞套装指南 << Priest
#name 第2部：腰带和手套
#next 第3部：腿甲、肩铠和战靴


step
    #optional
    +|cRXP_WARN_你必须先完成第1部分：护腕，才能开始本部分指南|r
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
    >>获得 |T132504:0|t[|cRXP_LOOT_野性之心腰带|r]。这是一件在 |cFFfa9602通灵学院|r 和 |cFFfa9602黑石塔|r 掉落的装备后绑定（BOE）物品 << Druid
    >>获得 |T132517:0|t[|cRXP_LOOT_野兽追猎者腰带|r]。这是一件在 |cFFfa9602黑石塔|r 掉落的装备后绑定（BOE）物品 << Hunter
    >>获得 |T132497:0|t[|cRXP_LOOT_博学者腰带|r]。这是一件在 |cFFfa9602斯坦索姆|r 和 |cFFfa9602黑石塔|r 掉落的装备后绑定（BOE）物品 << Mage
    >>获得 |T132500:0|t[|cRXP_LOOT_光铸腰带|r]。这是一件在 |cFFfa9602斯坦索姆|r 掉落的装备后绑定（BOE）物品 << Paladin
    >>获得 |T132499:0|t[|cRXP_LOOT_虔诚腰带|r]。这是一件在 |cFFfa9602黑石塔|r 掉落的装备后绑定（BOE）物品 << Priest
    >>获得 |T132492:0|t[|cRXP_LOOT_迅影腰带|r]。这是一件在 |cFFfa9602黑石塔|r 掉落的装备后绑定（BOE）物品 << Rogue
    >>获得 |T132505:0|t[|cRXP_LOOT_元素束腰|r]。这是一件在 |cFFfa9602黑石塔|r 掉落的装备后绑定（BOE）物品 << Shaman
    >>获得 |T132501:0|t[|cRXP_LOOT_鬼雾腰带|r]。这是一件在 |cFFfa9602斯坦索姆|r 掉落的装备后绑定（BOE）物品 << Warlock
    >>获得 |T132523:0|t[|cRXP_LOOT_勇气腰带|r]。这是一件在 |cFFfa9602黑石塔|r 和 |cFFfa9602斯坦索姆|r 掉落的装备后绑定（BOE）物品 << Warrior
    >>|cRXP_WARN_或者从拍卖行购买它们 << !sod
    >>|cRXP_WARN_且可从拍卖行购买，或在藏宝海湾从|cRXP_FRIENDLY_ 皮克希·希基克斯|r 处兑换|r |T133799:0|t[|cRXP_FRIENDLY_褪色的安德麦雷亚尔|r] << sod
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
    >>获得 |T132951:0|t[|cRXP_LOOT_野性之心手套|r]。这是 |cFFfa9602斯坦索姆|r 掉落的装备后绑定（BOE）物品 << Druid
    >>获得 |T132944:0|t[|cRXP_LOOT_野兽追猎者手套|r]。这是 |cFFfa9602黑石塔|r 掉落的装备后绑定（BOE）物品 << Hunter
    >>获得 |T132951:0|t[|cRXP_LOOT_博学者手套|r]。这是 |cFFfa9602通灵学院|r 掉落的装备后绑定（BOE）物品 << Mage
    >>获得 |T132953:0|t[|cRXP_LOOT_光铸护手|r]。这是 |cFFfa9602斯坦索姆|r 掉落的装备后绑定（BOE）物品 << Paladin
    >>获得 |T132948:0|t[|cRXP_LOOT_虔诚护手|r]。这是 |cFFfa9602斯坦索姆|r 掉落的装备后绑定（BOE）物品 << Priest
    >>获得 |T132958:0|t[|cRXP_LOOT_迅影手套|r]。这是 |cFFfa9602黑石塔|r 掉落的装备后绑定（BOE）物品 << Rogue
    >>获得 |T132945:0|t[|cRXP_LOOT_元素护手|r]。这是 |cFFfa9602黑石塔上层|r 掉落的装备后绑定（BOE）物品 << Shaman
    >>获得 |T132966:0|t[|cRXP_LOOT_鬼雾手套|r]。这是 |cFFfa9602通灵学院|r 掉落的装备后绑定（BOE）物品 << Warlock
    >>获得 |T132960:0|t[|cRXP_LOOT_勇气护手|r]。这是 |cFFfa9602斯坦索姆|r 掉落的装备后绑定（BOE）物品 << Warrior
    >>|cRXP_WARN_或者从拍卖行购买它们 << !sod
    >>|cRXP_WARN_且可从拍卖行购买，或在藏宝海湾从|cRXP_FRIENDLY_ 皮克希·希基克斯|r 处兑换|r |T133799:0|t[|cRXP_FRIENDLY_褪色的安德麦雷亚尔|r] << sod
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
    >>|cRXP_BUY_收集以下物品|r：
    >>|T133001:0|t[精密奥金转换器] |cRXP_WARN_由工程师制造|r
    >>|T132864:0|t[|cRXP_FRIENDLY_强效不灭精华|r] |cRXP_WARN_由附魔师获得|r
    >>|T134848:0|t[石鳞鱼油] |cRXP_WARN_由炼金术师制造|r
    >>|T132621:0|t[地精火箭燃油] |cRXP_WARN_由工程师制造|r
    >>|cRXP_WARN_如果可能的话从拍卖行购买它们|r
    .collect 16006,1,8921,1 --Delicate Arcanite Converter (x1)
    .collect 16203,4,8921,1 --Greater Eternal Essence (x4)
    .collect 13423,10,8921,1 --Stonescale Oil (x10)
    .collect 9061,6,8924,1 --Goblin Rocket Fuel (x6)
step << Alliance
    #completewith next
    .zone Ironforge >>前往 |cFFfa9602铁炉堡|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德莉亚娜|r 对话
    .accept 8922 >>接受任务超自然的设备
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>前往 |cFFfa9602奥格瑞玛|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫克瓦尔|r 对话
    .accept 8923 >>接受任务 超自然的设备
    .target Mokvar
step
    #completewith next
    .subzone 976 >>前往|cFFfa9602塔纳利斯|r的加基森
step
    .goto Tanaris,52.47,27.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆克斯·玛纳斯卡波|r 对话
    .turnin 8922 >>交任务 超自然的设备 << Alliance
    .turnin 8923 >>交任务 超自然的设备 << Horde
    .accept 8921 >>接受任务 灵质提纯器
    .target Mux Manascrambler
step
    #completewith next
    .zone Burning Steppes >>前往 |cFFfa9602燃烧平原|r
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
    >>拾取地上的 |cRXP_LOOT_火山灰|r
    >>|cRXP_WARN_它们看起来像成堆的灰色泥土，主要分布在北方燃烧平原的熔岩湖和河流中|r
    .collect 22338,25,8921,1 --Volcanic Ash (x25)
step
    >>|cRXP_BUY_收集以下物品|r：
    >>|T133001:0|t[精密奥金转换器] |cRXP_WARN_由工程师制造|r
    >>|T132864:0|t[|cRXP_FRIENDLY_强效不灭精华|r] |cRXP_WARN_由附魔师获得|r
    >>|T134848:0|t[石鳞鱼油] |cRXP_WARN_由炼金术师制造|r
    >>|T132621:0|t[地精火箭燃油] |cRXP_WARN_由工程师制造|r
    >>|cRXP_WARN_如果可能的话从拍卖行购买它们|r
    .collect 16006,1,8921,1 --Delicate Arcanite Converter (x1)
    .collect 16203,4,8921,1 --Greater Eternal Essence (x4)
    .collect 13423,10,8921,1 --Stonescale Oil (x10)
    .collect 9061,6,8924,1 --Goblin Rocket Fuel (x6)
step
    #completewith next
    .subzone 976 >>前往|cFFfa9602塔纳利斯|r的加基森
step
    .goto Tanaris,52.47,27.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆克斯·玛纳斯卡波|r 对话
    >>|cRXP_WARN_你需要40金币来完成这个任务|r
    .turnin 8921 >>交任务 灵质提纯器
    .accept 8924 >>接受任务 猎取灵质
    .target Mux Manascrambler
step
    #optional
    >>|cRXP_WARN_收集至少3个|r |T132621:0|t[地精火箭燃油]|cRXP_WARN_。它由工程师制造|r
    >>|cRXP_WARN_如果可能的话从拍卖行购买它们|r
    .collect 9061,3,8924,1 --Goblin Rocket Fuel (x3)
step
    #completewith next
    .subzone 2738 >>前往 |cFFfa9602希利苏斯|r 的南风村
step
    #completewith next
    .cast 27433 >>|cRXP_WARN_将|r |T133882:0|t[灵质提纯器] |cRXP_WARN_放在地上。它持续5分钟|r
    .use 21946 >>|cRXP_WARN_每次使用|r |T132621:0|t[灵质提纯器]|cRXP_WARN_都需要一个|r |T133882:0|t[地精火箭燃油]
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
    >>击杀 |cRXP_ENEMY_被折磨的德鲁伊|r 和 |cRXP_ENEMY_被折磨的哨兵|r。拾取它们的 |cRXP_LOOT_烧焦的灵质|r
    >>|cRXP_WARN_在击杀它们时将它们拉向|r |T133882:0|t[灵质提纯器]
    .complete 8924,1 --Scorched Ectoplasm (x12)
	.mob Tortured Druid
	.mob Tortured Sentinel
step
    #completewith next
    .zone Winterspring >>前往 |cFFfa9602冬泉谷|r
step
    #completewith next
    .cast 27433 >>|cRXP_WARN_将|r |T133882:0|t[灵质提纯器] |cRXP_WARN_放在地上。它持续5分钟|r
    .use 21946 >>|cRXP_WARN_每次使用|r |T132621:0|t[灵质提纯器]|cRXP_WARN_都需要一个|r |T133882:0|t[地精火箭燃油]
step
    #loop
    .goto Winterspring,55.42,43.41,0
    .goto Winterspring,53.29,43.82,0
    .goto Winterspring,52.60,40.59,0
    .goto Winterspring,55.42,43.41,50,0
    .goto Winterspring,53.29,43.82,50,0
    .goto Winterspring,52.60,40.59,50,0
    >>击杀 |cRXP_ENEMY_受难的上层精灵|r 和 |cRXP_ENEMY_痛苦的上层精灵|r。拾取它们的 |cRXP_LOOT_冰冻的灵质|r
    >>|cRXP_WARN_在击杀它们时|r|cRXP_WARN_将它们拉向|r |T133882:0|t[灵质提纯器]
    .complete 8924,2 --Frozen Ectoplasm (x12)
    .mob Suffering Highborne
    .mob Anguished Highborne
step
    #completewith FelElemRod
    .subzone 2256 >>前往|cFFfa9602冬泉谷|r 的暗语峡谷
step
    #hardcore
    #completewith next
    +|cRXP_WARN_小心！在前往|r |cRXP_FRIENDLY_维尔|r|cRXP_WARN_的路上会遇到60级小怪。尽可能避开它们|r
step
    #label FelElemRod
    .goto Winterspring,58.87,78.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维尔|r 对话
    >>|cRXP_BUY_从他那里|r|cRXP_LOOT_购买|r |T135155:0|t[|cRXP_BUY_恶魔元素之杖|r]
    >>|cRXP_WARN_这将花费40金币|r
    .collect 21939,1,8928,1 --Fel Elemental Rod (x1)
    .target Vi'el
step
    #optional
    >>|cRXP_WARN_收集至少2个|r |T132621:0|t[地精火箭燃油]|cRXP_WARN_。它由工程师制造|r
    >>|cRXP_WARN_如果可能的话从拍卖行购买它们|r
    .collect 9061,2,8924,1 --Goblin Rocket Fuel (x2)
step
    #completewith next
    .subzone 2264 >>前往|cFFfa9602东瘟疫之地|r的考林路口
step
    #completewith next
    .cast 27433 >>|cRXP_WARN_将|r |T133882:0|t[灵质提纯器] |cRXP_WARN_放在地上。它持续5分钟|r
    .use 21946 >>|cRXP_WARN_每次使用|r |T132621:0|t[灵质提纯器]|cRXP_WARN_都需要一个|r |T133882:0|t[地精火箭燃油]
step
    #loop
    .goto Eastern Plaguelands,60.67,67.35,0
    .goto Eastern Plaguelands,60.67,67.35,50,0
    .goto Eastern Plaguelands,58.55,70.50,50,0
    >>击杀 |cRXP_ENEMY_无影仆从|r 和 |cRXP_ENEMY_憎恨吟唱者|r，拾取它们的 |cRXP_LOOT_稳定的灵质|r
    >>|cRXP_WARN_在击杀它们时|r|cRXP_WARN_将它们拉向|r |T133882:0|t[灵质提纯器]
    .complete 8924,3 --Stable Ectoplasm (x12)
    .mob Unseen Servant
    .mob Hate Shrieker
step
    #completewith next
    .subzone 976 >>前往|cFFfa9602塔纳利斯|r的加基森
step
    .goto Tanaris,52.47,27.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆克斯·玛纳斯卡波|r 对话
    .turnin 8924 >>交任务 猎取灵质
    .accept 8925 >>接受任务 便携的能量源
    .target Mux Manascrambler
step
    #completewith next
    .zone Burning Steppes >>前往 |cFFfa9602燃烧平原|r
step
    .goto Burning Steppes,35.38,57.73
    >>击杀 |cRXP_ENEMY_熔岩领主博奥克|r，拾取他的 |cRXP_LOOT_Magma 岩核|r
    .complete 8925,1 --Magma Core (x1)
    .mob Magma Lord Bokk
step
    #completewith next
    .subzone 976 >>前往|cFFfa9602塔纳利斯|r的加基森
step
    .goto Tanaris,52.47,27.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆克斯·玛纳斯卡波|r 对话
    .turnin 8925 >>交任务 便携的能量源
    .accept 8928 >>接受任务 小巧的商人
    .target Mux Manascrambler
step
    #optional
    #completewith FelElemRod2
    .subzone 2256 >>前往|cFFfa9602冬泉谷|r 的暗语峡谷
step
    #optional
    #hardcore
    #completewith next
    +|cRXP_WARN_小心！在前往|r |cRXP_FRIENDLY_维尔|r|cRXP_WARN_的路上会遇到60级小怪。尽可能避开它们|r
step
    #label FelElemRod2
    #optional --user should already have bought this during .complete 8924,2 earlier in Winterspring
    .goto Winterspring,58.87,78.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维尔|r 对话
    >>|cRXP_BUY_从他那里|r|cRXP_LOOT_购买|r |T135155:0|t[|cRXP_BUY_恶魔元素之杖|r]
    >>|cRXP_WARN_这将花费40金币|r
    .collect 21939,1,8928,1 --Fel Elemental Rod (x1)
    .target Vi'el
step
    #optional
    #completewith next
    .subzone 976 >>前往|cFFfa9602塔纳利斯|r的加基森
    .zoneskip Winterspring,1
step
    .goto Tanaris,52.47,27.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆克斯·玛纳斯卡波|r 对话
    .turnin 8928 >>交任务 小巧的商人
    .accept 8977 >>接受任务 向德莉亚娜回复 << Alliance
    .accept 8978 >>接受任务 向莫克瓦尔回复 << Horde
    .target Mux Manascrambler
step << Alliance
    #completewith next
    .zone Ironforge >>前往 |cFFfa9602铁炉堡|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德莉亚娜|r 对话
    .turnin 8977 >>交任务 向德莉亚娜回复
    .accept 8926 >>接受任务 小小的补偿 << Druid
    .accept 8931 >>接受任务 小小的补偿 << Hunter
    .accept 8932 >>接受任务 小小的补偿 << Mage
    .accept 8933 >>接受任务 小小的补偿 << Paladin
    .accept 8934 >>接受任务 小小的补偿 << Priest
    .accept 8935 >>接受任务 小小的补偿 << Rogue
    .accept 8936 >>接受任务 小小的补偿 << Warlock
    .accept 8937 >>接受任务 小小的补偿 << Warrior
    .target Deliana
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德莉亚娜|r 对话
    >>你需要 |T132504:0|t[|cRXP_LOOT_野性之心腰带|r] 和 |T132951:0|t[|cRXP_LOOT_野性之心手套|r] 来完成任务 << Druid
    >>你需要 |T132517:0|t[|cRXP_LOOT_野兽追猎者腰带|r] 和 |T132944:0|t[|cRXP_LOOT_野兽追猎者手套|r] 来完成任务 << Hunter
    >>你需要 |T132497:0|t[|cRXP_LOOT_博学者腰带|r] 和 |T132951:0|t[|cRXP_LOOT_博学者手套|r] 来完成任务 << Mage
    >>你需要 |T132500:0|t[|cRXP_LOOT_光铸腰带|r] 和 |T132953:0|t[|cRXP_LOOT_光铸护手|r] 来完成任务 << Paladin
    >>你需要 |T132499:0|t[|cRXP_LOOT_虔诚腰带|r] 和 |T132948:0|t[|cRXP_LOOT_虔诚护手|r] 来完成任务 << Priest
    >>你需要 |T132492:0|t[|cRXP_LOOT_迅影腰带|r] 和 |T132958:0|t[|cRXP_LOOT_迅影手套|r] 来完成任务 << Rogue
    >>你需要 |T132501:0|t[|cRXP_LOOT_鬼雾腰带|r] 和 |T132966:0|t[|cRXP_LOOT_鬼雾手套|r] 来完成任务 << Warlock
    >>你需要 |T132523:0|t[|cRXP_LOOT_勇气腰带|r] 和 |T132960:0|t[|cRXP_LOOT_勇气护手|r]r 来完成任务 << Warrior
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
    .turnin 8926 >>交任务 小小的补偿 << Druid
    .turnin 8931 >>交任务 小小的补偿 << Hunter
    .turnin 8932 >>交任务 小小的补偿 << Mage
    .turnin 8933 >>交任务 小小的补偿 << Paladin
    .turnin 8934 >>交任务 小小的补偿 << Priest
    .turnin 8935 >>交任务 小小的补偿 << Rogue
    .turnin 8936 >>交任务 小小的补偿 << Warlock
    .turnin 8937 >>交任务 小小的补偿 << Warrior
    .accept 8929 >>接受任务 寻找安泰恩
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>前往 |cFFfa9602奥格瑞玛|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫克瓦尔|r 对话
    .turnin 8978 >>交任务 向莫克瓦尔回复
    .accept 8927 >>接受任务 小小的补偿 << Druid
    .accept 8938 >>接受任务 小小的补偿 << Hunter
    .accept 8939 >>接受任务 小小的补偿 << Mage
    .accept 8940 >>接受任务 小小的补偿 << Priest
    .accept 8941 >>接受任务 小小的补偿 << Rogue
    .accept 8942 >>接受任务 小小的补偿 << Shaman
    .accept 8943 >>接受任务 小小的补偿 << Warlock
    .accept 8944 >>接受任务 小小的补偿 << Warrior
    .target Mokvar
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫克瓦尔|r 对话
    >>你需要 |T132504:0|t[|cRXP_LOOT_野性之心腰带|r] 和 |T132951:0|t[|cRXP_LOOT_野性之心手套|r] 来完成任务 << Druid
    >>你需要 |T132517:0|t[|cRXP_LOOT_野兽追猎者腰带|r] 和 |T132944:0|t[|cRXP_LOOT_野兽追猎者手套|r] 来完成任务 << Hunter
    >>你需要 |T132497:0|t[|cRXP_LOOT_博学者腰带|r] 和 |T132951:0|t[|cRXP_LOOT_博学者手套|r] 来完成任务 << Mage
    >>你需要 |T132499:0|t[|cRXP_LOOT_虔诚腰带|r] 和 |T132948:0|t[|cRXP_LOOT_虔诚护手|r] 来完成任务 << Priest
    >>你需要 |T132492:0|t[|cRXP_LOOT_迅影腰带|r] 和 |T132958:0|t[|cRXP_LOOT_迅影手套|r] 来完成任务 << Rogue
    >>你需要 |T132505:0|t[|cRXP_LOOT_元素束腰|r] 和 |T132945:0|t[|cRXP_LOOT_元素护手|r] 来完成任务 << Shaman
    >>你需要 |T132501:0|t[|cRXP_LOOT_鬼雾腰带|r] 和 |T132966:0|t[|cRXP_LOOT_鬼雾手套|r] 来完成任务 << Warlock
    >>你需要 |T132523:0|t[|cRXP_LOOT_勇气腰带|r] 和 |T132960:0|t[|cRXP_LOOT_勇气护手|r] 来完成任务 << Warrior
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
    .turnin 8927 >>交任务 小小的补偿 << Druid
    .turnin 8938 >>交任务 小小的补偿 << Hunter
    .turnin 8939 >>交任务 小小的补偿 << Mage
    .turnin 8940 >>交任务 小小的补偿 << Priest
    .turnin 8941 >>交任务 小小的补偿 << Rogue
    .turnin 8942 >>交任务 小小的补偿 << Shaman
    .turnin 8943 >>交任务 小小的补偿 << Warlock
    .turnin 8944 >>交任务 小小的补偿 << Warrior
    .accept 8930 >>接受任务 寻找安泰恩
    .target Mokvar

    ]])


RXPGuides.RegisterGuide([[
#classic
#tbc
#group RestedXP 终局指南
#subgroup 凶蛮之心套装指南 << Druid
#subgroup 兽王套装指南 << Hunter
#subgroup 巫师套装指南 << Mage
#subgroup 魂铸套装指南 << Paladin
#subgroup 暗幕套装指南 << Rogue
#subgroup 五雷套装指南 << Shaman
#subgroup 死雾套装指南 << Warlock
#subgroup 英勇套装指南 << Warrior
#subgroup 坚贞套装指南 << Priest
#name 第3部：腿甲、肩铠和战靴
#next 第4部：头盔和胸部

step
    #optional
    +|cRXP_WARN_你必须先完成第2部分：腰带和手套，才能开始本部分指南|r
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
    >>获得 |T132542:0|t[|cRXP_LOOT_野性之心长靴|r]。在 |cRXP_ENEMY_下层黑石塔|r 由 |cFFfa9602烟网蛛后|r 掉落 << Druid
    >>获得 |T132588:0|t[|cRXP_LOOT_野兽追猎者长靴|r]。在 |cRXP_ENEMY_斯坦索姆|r 由 |cFFfa9602奈鲁布恩坎|r 掉落 << Hunter
    >>获得 |T132536:0|t[|cRXP_LOOT_博学者长靴|r]。由 |cRXP_ENEMY_弗雷斯特恩|r (稀有精英) 在 |cFFfa9602斯坦索姆|r 掉落 << Mage
    >>|cRXP_WARN_注释 在 AQ 补丁之前，这个物品应该由|r |cRXP_ENEMY_邮差马龙|r 掉落<<Mage
    >>获得 |T132584:0|t[|cRXP_LOOT_光铸战靴|r]。由 |cRXP_ENEMY_大十字军战士达索汉|r 和 |cRXP_ENEMY_巴纳扎尔|r 在 |cFFfa9602斯坦索姆|r 掉落 << Paladin
    >>获得 |T132539:0|t[虔诚软鞋|cRXP_LOOT_]。由 |r苍白的玛勒基|cRXP_ENEMY_ 在 |r斯坦索姆|cFFfa9602 掉落 << Priest
    >>获得 |T132542:0|t[|cRXP_LOOT_迅影长靴|r]。由 |cRXP_ENEMY_血骨傀儡|r 在 |cFFfa9602通灵学院|r 掉落 << Rogue
    >>获得 |T132592:0|t[|cRXP_LOOT_元素长靴|r]。由 |cRXP_ENEMY_欧莫克大王|r 在 |cFFfa9602下层黑石塔|r 掉落 << Shaman
    >>获得 |T132539:0|t[|cRXP_LOOT_鬼雾便鞋|r]。由 |cRXP_ENEMY_安娜丝塔丽男爵夫人|r 在 |cFFfa9602斯坦索姆|r 掉落 << Warlock
    >>获得 |T132584:0|t[|cRXP_LOOT_勇气战靴|r]。由 |cRXP_ENEMY_传令官基尔图诺斯|r 在 |cFFfa9602通灵学院|r 掉落 << Warrior
    >>|cRXP_WARN_且可在藏宝海湾从|cRXP_FRIENDLY_ 皮克希·希基克斯|r 处兑换|r |T133799:0|t[|cRXP_FRIENDLY_褪色的安德麦雷亚尔|r] << sod
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
    >>获得 |T134588:0|t[|cRXP_LOOT_野性之心褶裙|r]。由 |cRXP_ENEMY_瑞文戴尔男爵|r 在 |cFFfa9602斯坦索姆|r 掉落 << Druid
    >>获得 |T134583:0|t[|cRXP_LOOT_野兽追猎者短裤|r]。由 |cRXP_ENEMY_瑞文戴尔男爵|r 在 |cFFfa9602斯坦索姆|r 掉落 << Hunter
    >>获得 |T134586:0|t[|cRXP_LOOT_博学者护腿|r]。由 |cRXP_ENEMY_瑞文戴尔男爵|r 在 |cFFfa9602斯坦索姆|r 掉落 << Mage
    >>获得 |T134584:0|t[|cRXP_LOOT_光铸腿铠|r]。由 |cRXP_ENEMY_瑞文戴尔男爵|r 在 |cFFfa9602斯坦索姆|r 掉落 << Paladin
    >>获得 |T134588:0|t[|cRXP_LOOT_虔诚长裙|r]。此物品由 |cRXP_ENEMY_瑞文戴尔男爵|r 在 |cFFfa9602斯坦索姆|r 掉落 << Priest
    >>获得 |T134582:0|t[|cRXP_LOOT_迅影短裤|r]。此物品由 |cRXP_ENEMY_瑞文戴尔男爵|r 在 |cFFfa9602斯坦索姆|r 掉落 << Rogue
    >>获得 |T134583:0|t[|cRXP_LOOT_元素护腿|r]。此物品由 |cRXP_ENEMY_瑞文戴尔男爵|r 在 |cFFfa9602斯坦索姆|r 掉落 << Shaman
    >>获得 |T134588:0|t[|cRXP_LOOT_鬼雾护腿|r]。此物品由 |cRXP_ENEMY_瑞文戴尔男爵|r 在 |cFFfa9602斯坦索姆|r 掉落 << Warlock
    >>获得 |T134584:0|t[|cRXP_LOOT_勇气腿铠|r]。此物品由 |cRXP_ENEMY_瑞文戴尔男爵|r 在 |cFFfa9602斯坦索姆|r 掉落 << Warrior
    >>|cRXP_WARN_且可在藏宝海湾从|cRXP_FRIENDLY_ 皮克希·希基克斯|r 处兑换|r |T133799:0|t[|cRXP_FRIENDLY_褪色的安德麦雷亚尔|r] << sod
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
    >>获得 |T135032:0|t[|cRXP_LOOT_野性之心肩甲|r]。此物品由 |cRXP_ENEMY_奴役者基兹鲁尔|r 在 |cFFfa9602下层黑石塔|r 掉落 << Druid
    >>获得 |T135041:0|t[|cRXP_LOOT_野兽追猎者衬肩|r]。此物品由 |cRXP_ENEMY_维姆萨拉克|r 在 |cFFfa9602下层黑石塔|r 掉落 << Hunter
    >>获得 |T135054:0|t[|cRXP_LOOT_博学者衬肩|r]。此物品由 |cRXP_ENEMY_莱斯·霜语|r 在 |cFFfa9602通灵学院|r 掉落 << Mage
    >>获得 |T135041:0|t[|cRXP_LOOT_光铸肩铠|r]。此物品由 |cRXP_ENEMY_比斯巨兽|r 在 |cFFfa9602黑石塔上层|r 掉落 << Paladin
    >>获得 |T135033:0|t[|cRXP_LOOT_虔诚衬肩|r]。此物品由 |cRXP_ENEMY_索拉卡·火冠|r 在 |cFFfa9602黑石塔上层|r 掉落 << Priest
    >>获得 |T135038:0|t[|cRXP_LOOT_迅影肩甲|r]。此物品由 |cRXP_ENEMY_炮手威利|r 在 |cFFfa9602斯坦索姆|r 掉落 << Rogue
    >>获得 |T135060:0|t[|cRXP_LOOT_元素护肩|r]。这由 |cRXP_ENEMY_盖斯|r 在 |cFFfa9602黑石塔上层|r 掉落 << Shaman
    >>获得 |T133732:0|t[|cRXP_LOOT_鬼雾衬肩|r]。这由 |cRXP_ENEMY_詹迪斯·巴罗夫|r 在 |cFFfa9602通灵学院|r 掉落 << Warlock
    >>获得 |T135061:0|t[|cRXP_LOOT_勇气肩甲|r]。这由 |cRXP_ENEMY_大酋长雷德·黑手|r 在 |cFFfa9602黑石塔上层|r 掉落 << Warrior
    >>|cRXP_WARN_且可在藏宝海湾从|cRXP_FRIENDLY_ 皮克希·希基克斯|r 处兑换|r |T133799:0|t[|cRXP_FRIENDLY_褪色的安德麦雷亚尔|r] << sod
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
    >>|cRXP_BUY_收集以下物品|r：
    >>|T133233:0|t[黑铁锭] |cRXP_WARN_由矿工制造|r
    >>|T134418:0|t[魔化皮] |cRXP_WARN_和|r |T132873:0|t[大块魔光碎片] |cRXP_WARN_由附魔师制造|r
    >>|T132895:0|t[月布] |cRXP_WARN_由裁缝制造|r
    >>|T134355:0|t[熟化毛皮] |cRXP_WARN_由皮甲匠制造|r
    >>|T136192:0|t[|cRXP_FRIENDLY_黑暗符文|r] |cRXP_WARN_随机掉落在|r |cFFfa9602通灵学院|r
    >>|cRXP_WARN_如果可能的话从拍卖行购买它们|r
    .collect 11371,3,8947,1 --Dark Iron Bar (x3)
    .collect 12810,20,8947,1 --Enchanted Leather (x20)
    .collect 14344,8,8950,1 --Large Brilliant Shard (x8)
    .collect 14342,3,8947,1 --Mooncloth (x3)
    .collect 15407,4,8947,1 --Cured Rugged Hide (x4)
    .collect 20520,4,8950,1 --Dark Rune (x4)
step << Alliance
    #completewith next
    .zone Ironforge >>前往 |cFFfa9602铁炉堡|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德莉亚娜|r 对话
    .accept 8929 >>接受任务 寻找安泰恩
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>前往 |cFFfa9602奥格瑞玛|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫克瓦尔|r 对话
    .accept 8930 >>接受任务 寻找安泰恩
    .target Mokvar
step
    #completewith FindingAnthion
    +|cRXP_WARN_开始寻找一支可以在45分钟内清完斯坦索姆亡灵阵营的5人小队|r
step
    #completewith next
    .zone Eastern Plaguelands >>前往 |cFFfa9602东瘟疫之地|r
step
    #label FindingAnthion
    .goto Eastern Kingdoms,55.06,17.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安泰恩·哈尔蒙|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_安泰恩·哈尔蒙|r
    .turnin 8929 >>交任务 寻找安泰恩 << Alliance
    .turnin 8930 >>交任务 安西翁的搜索 << Horde
    .accept 8945 >>接受任务 死人的请求
    .target Anthion Harmon
step
    #completewith next
    .subzone 2017 >>进入斯坦索姆
    >>|cRXP_WARN_确保你已组好队伍|r
step
    >>在45分钟内杀死 |cRXP_ENEMY_瑞文戴尔男爵|r 并可拯救 |cRXP_FRIENDLY_伊思达·哈尔蒙|r
    >>|cRXP_WARN_当你进入亡灵阵营并获得|r |T136129:0|t[男爵的通牒] |cRXP_WARN_减益效果时，计时器便开始计时|r
    .complete 8945,1 --Ysida Freed (x1)
    .mob 瑞文戴尔男爵
    .target Ysida Harmon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊思达·哈尔蒙|r 对话
    .turnin 8945 >>交任务 死人的请求
    .accept 8946 >>接受任务 生命的证据
    .target Ysida Harmon
step
    .goto Eastern Kingdoms,55.06,17.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在斯坦索姆外与 |cRXP_FRIENDLY_安泰恩·哈尔蒙|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_安泰恩·哈尔蒙|r
    .turnin 8946 >>交任务 生命的证据
    .accept 8947 >>接受任务 安泰恩的奇怪请求
    .target Anthion Harmon
step
    >>|cRXP_BUY_收集以下物品|r：
    >>|T133233:0|t[黑铁锭] |cRXP_WARN_由矿工制造|r
    >>|T134418:0|t[魔化皮] |cRXP_WARN_由附魔师制造|r
    >>|T132895:0|t[月布] |cRXP_WARN_由裁缝制造|r
    >>|T134355:0|t[熟化毛皮] |cRXP_WARN_由皮甲匠制造|r
    >>|T136192:0|t[|cRXP_FRIENDLY_黑暗符文|r] |cRXP_WARN_随机掉落在|r |cFFfa9602通灵学院|r
    >>|cRXP_WARN_如果可能的话从拍卖行购买它们|r
    .collect 11371,3,8947,1 --Dark Iron Bar (x3)
    .collect 12810,20,8947,1 --Enchanted Leather (x20)
    .collect 14344,8,8950,1 --Large Brilliant Shard (x8)
    .collect 14342,3,8947,1 --Mooncloth (x3)
    .collect 15407,4,8947,1 --Cured Rugged Hide (x4)
    .collect 20520,4,8950,1 --Dark Rune (x4)
step
    .goto Eastern Kingdoms,55.06,17.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在斯坦索姆外与 |cRXP_FRIENDLY_安泰恩·哈尔蒙|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_安泰恩·哈尔蒙|r
    .turnin 8947 >>交任务 安泰恩的奇怪请求
    .accept 8948 >>接受任务 安泰恩的老朋友
    .target Anthion Harmon
step
    #softcore
    #completewith AnthionsFriend
    .zone Feralas >>前往 |cFFfa9602菲拉斯|r
    >>|cRXP_WARN_接下来的部分将在厄运之槌进行。单人可以完成，但强烈建议组队|r
    .subzoneskip 2557
step
    #hardcore
    #completewith AnthionsFriend
    .zone Feralas >>前往 |cFFfa9602菲拉斯|r
    >>|cRXP_WARN_接下来的部分将在厄运之槌进行。请确保你有一个至少3人的小队|r
    .subzoneskip 2557
step
    #completewith AnthionsFriend
    .goto Kalimdor,43.39,66.52,20 >>进入厄运之槌的北入口
    >>|cRXP_WARN_你必须拥有|r |T134244:0|t[月牙钥匙] |cRXP_WARN_才能打开通往厄运之槌北区和图书馆的大门|r << !Rogue
    >>|cRXP_WARN_你必须拥有|r |T134244:0|t[月牙钥匙] |cRXP_WARN_或者拥有300点开锁技能才能打开通往厄运之槌北区和图书馆的大门|r << Rogue
    >>|cRXP_WARN_或者请另一名玩家为你打开大门|r
    .itemcount 18249,<1 << !Rogue --Crescent Key
    .skill lockpicking,300,1 << Rogue
step
    #optional
    #completewith AnthionsFriend
    .goto Kalimdor,43.39,66.52,20 >>进入厄运之槌北入口
    .itemcount 18249,1 << !Rogue --Crescent Key
    .skill lockpicking,<300,1 << Rogue
step
    #label AnthionsFriend
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在厄运之槌的图书馆与 |cRXP_FRIENDLY_法尔林·树影|r 对话
    .turnin 8948 >>交任务 安泰恩的老朋友
    .accept 8949 >>接受任务 法尔林的复仇
    .target Falrin Treeshaper
    --.link  >> |cRXP_WARN_You can reach the library without killing any mobs. Click here for video reference|r
    --VV TODO: Library skip video
step
    >>在 |cRXP_ENEMY_厄运之槌北区|r 击杀 |cFFfa9602戈多克食人|r，拾取他们的 |cRXP_LOOT_食人魔珠串|r
    >>|cRXP_WARN_或者可以|r |cRXP_ENEMY_击杀|r |cRXP_WARN_黑石塔下层的|r|cFFfa9602尖石食人|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在厄运之槌的图书馆与 |cRXP_FRIENDLY_法尔林·树影|r 对话
    .turnin 8949 >>交任务 法尔林的复仇
    .accept 8950 >>接受任务 旗帜上的附魔
    .target Falrin Treeshaper
step
    #completewith SpectreEssence
    .goto Kalimdor,42.98,67.73,20 >>进入厄运之槌西副本
    >>|cRXP_WARN_你必须拥有|r |T134244:0|t[月牙钥匙] |cRXP_WARN_才能打开通往厄运之槌西区的大门|r << !Rogue
    >>|cRXP_WARN_你必须拥有|r |T134244:0|t[月牙钥匙] |cRXP_WARN_或者拥有300点开锁技能才能打开通往厄运之槌西区的大门|r << Rogue
    >>|cRXP_WARN_或者请另一名玩家为你打开大门|r
    .itemcount 18249,<1 << !Rogue --Crescent Key
    .skill lockpicking,300,1 << Rogue
step
    #completewith SpectreEssence
    .goto Kalimdor,42.98,67.73,20 >>进入厄运之槌的西入口
    .itemcount 18249,1 << !Rogue --Crescent Key
    .skill lockpicking,<300,1 << Rogue
step
    #label SpectreEssence
    >>在 |cRXP_ENEMY_厄运之槌西区里|r 击杀 |cFFfa9602埃德里斯幽灵|r。拾取他们的 |cRXP_LOOT_游荡鬼灵的精华|r
    .complete 8950,1 --Jeering Spectre's Essence (x1)
    .mob Eldreth Wraith
    .mob Eldreth Seether
    .mob Eldreth Spectre
    .mob Eldreth Spirit
    .mob Eldreth Phantasm
    .mob Eldreth Apparition
    .mob Eldreth Sorcerer
step
    >>|cRXP_BUY_收集以下物品|r：
    >>|T132873:0|t[大块魔光碎片] |cRXP_WARN_由附魔师制造|r
    >>|T136192:0|t[|cRXP_FRIENDLY_黑暗符文|r] |cRXP_WARN_随机掉落在|r |cFFfa9602通灵学院|r
    >>|cRXP_WARN_如果可能的话从拍卖行购买它们|r
    .collect 14344,8,8950,1 --Large Brilliant Shard (x8)
    .collect 20520,4,8950,1 --Dark Rune (x4)
step
    #completewith AnthionsFriend2
    .goto Kalimdor,43.39,66.52,20 >>进入厄运之槌的北入口
    >>|cRXP_WARN_你必须拥有|r |T134244:0|t[月牙钥匙] |cRXP_WARN_才能打开通往厄运之槌北区和图书馆的大门|r << !Rogue
    >>|cRXP_WARN_你必须拥有|r |T134244:0|t[月牙钥匙] |cRXP_WARN_或者拥有300点开锁技能才能打开通往厄运之槌北区和图书馆的大门|r << Rogue
    >>|cRXP_WARN_或者请另一名玩家为你打开大门|r
    .itemcount 18249,<1 << !Rogue --Crescent Key
    .skill lockpicking,300,1 << Rogue
step
    #optional
    #completewith AnthionsFriend2
    .goto Kalimdor,43.39,66.52,20 >>进入厄运之槌的北入口
    .itemcount 18249,1 << !Rogue --Crescent Key
    .skill lockpicking,<300,1 << Rogue
step
    #label AnthionsFriend2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在厄运之槌的图书馆与 |cRXP_FRIENDLY_法尔林·树影|r 对话
    .turnin 8950 >>交任务 旗帜上的附魔
    .accept 9015 >>接受任务 挑战
    .target Falrin Treeshaper
    --.link  >> |cRXP_WARN_You can reach the library without killing any mobs. Click here for video reference|r
    --VV TODO: Library skip video
step
    #completewith next
    .subzone 254 >>前往 |cFFfa9602黑石山|r
step
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>进入黑石深渊
    >>|cRXP_WARN_确保你已组好队伍|r
step
    .use 21986 >>进入竞技场并使用 |T132619:0|t[挑衅之旗]
    >>这将召唤 |cRXP_ENEMY_塞尔德林|r。击杀他并拾取 |cRXP_LOOT_瓦塔拉克饰品的上瓣|r
    >>|cRXP_WARN_这场战斗很艰难。|cRXP_ENEMY_塞尔德林|r 会与多个60级精英小怪一起出现。确保你的团队有足够的控制技能来对付它们|r
    .complete 9015,1 --Theldren's Team Defeated
    .complete 9015,2 --Top Piece of Lord Valthalak's Amulet (x1)
    .mob Theldren
step
    #completewith next
    .zone Eastern Plaguelands >>前往东瘟疫之地
step
    .goto Eastern Kingdoms,55.06,17.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安泰恩·哈尔蒙|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_安泰恩·哈尔蒙|r
    .turnin 9015 >>交任务 挑战
    .accept 8951 >>接受任务 告别安泰恩 << Alliance Druid
    .accept 8952 >>接受任务 告别安泰恩 << Alliance Hunter
    .accept 8953 >>接受任务 告别安泰恩 << Alliance Mage
    .accept 8954 >>接受任务 告别安泰恩 << Alliance Paladin
    .accept 8955 >>接受任务 告别安泰恩 << Alliance Priest
    .accept 8956 >>接受任务 告别安泰恩 << Alliance Rogue
    .accept 8958 >>接受任务 告别安泰恩 << Alliance Warlock
    .accept 8959 >>接受任务 告别安泰恩 << Alliance Warrior
    .accept 8957 >>接受任务 告别安泰恩 << Horde Shaman
    .accept 9016 >>接受任务 告别安泰恩 << Horde Druid
    .accept 9017 >>接受任务 告别安泰恩 << Horde Hunter
    .accept 9018 >>接受任务 告别安泰恩 << Horde Mage
    .accept 9019 >>接受任务 告别安泰恩 << Horde Priest
    .accept 9020 >>接受任务 告别安泰恩 << Horde Rogue
    .accept 9021 >>接受任务 告别安泰恩 << Horde Warlock
    .accept 9022 >>接受任务 告别安泰恩 << Horde Warrior
    .target Anthion Harmon
step << Alliance
    #completewith next
    .zone Ironforge >>前往 |cFFfa9602铁炉堡|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德莉亚娜|r 对话
    >>你需要 |T132542:0|t[|cRXP_LOOT_野性之心长靴|r]、|T134588:0|t[|cRXP_LOOT_野性之心褶裙|r] 和 |T135032:0|t[|cRXP_LOOT_野性之心肩甲|r] 来完成这个任务 << Druid
    >>你需要 |T132588:0|t[|cRXP_LOOT_野兽追猎者长靴|r]、|T134583:0|t[|cRXP_LOOT_野兽追猎者短裤|r] 和 |T135041:0|t[|cRXP_LOOT_野兽追猎者衬肩|r] 来完成这个任务 << Hunter
    >>你需要 |T132536:0|t[|cRXP_LOOT_博学者长靴|r], |T134586:0|t[|cRXP_LOOT_博学者护腿|r] 和 |T135054:0|t[|cRXP_LOOT_博学者衬肩|r] 来完成此任务 << Mage
    >>你需要 |T132584:0|t[|cRXP_LOOT_光铸战靴|r], |T134584:0|t[|cRXP_LOOT_光铸腿铠|r] 和 |T135041:0|t[|cRXP_LOOT_光铸肩铠|r] 来完成该任务 << Paladin
    >>你需要 |T132539:0|t[|cRXP_LOOT_虔诚软鞋|r]、|T134588:0|t[|cRXP_LOOT_虔诚长裙|r] 和 |T135033:0|t[|cRXP_LOOT_虔诚衬肩|r] 来完成这个任务 << Priest
    >>你需要 |T132542:0|t[|cRXP_LOOT_迅影长靴|r], |T134582:0|t[|cRXP_LOOT_迅影短裤|r] 和 |T135038:0|t[|cRXP_LOOT_迅影肩甲|r] 来完成此任务 << Rogue
    >>你需要 |T132539:0|t[|cRXP_LOOT_鬼雾便鞋|r]、|T134588:0|t[|cRXP_LOOT_鬼雾护腿|r] 和 |T133732:0|t[|cRXP_LOOT_鬼雾衬肩|r] 来完成这个任务 << Warlock
    >>你需要 |T132584:0|t[|cRXP_LOOT_勇气战靴|r]、|T134584:0|t[|cRXP_LOOT_勇气腿铠|r] 和 |T135061:0|t[|cRXP_LOOT_勇气肩甲|r] 来完成这个任务 << Warrior
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
    .turnin 8951 >>交任务 告别安泰恩 << Druid
    .turnin 8952 >>交任务 告别安泰恩 << Hunter
    .turnin 8953 >>交任务 告别安泰恩 << Mage
    .turnin 8954 >>交任务 告别安泰恩 << Paladin
    .turnin 8955 >>交任务 告别安泰恩 << Priest
    .turnin 8956 >>交任务 告别安泰恩 << Rogue
    .turnin 8958 >>交任务 告别安泰恩 << Warlock
    .turnin 8959 >>交任务 告别安泰恩 << Warrior
    .accept 8960 >>接受任务 伯德雷的不幸
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>前往|cFFfa9602奥格瑞玛|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫克瓦尔|r 对话
    >>你需要 |T132542:0|t[|cRXP_LOOT_野性之心长靴|r], |T134588:0|t[|cRXP_LOOT_野性之心褶裙|r] 和 |T135032:0|t[|cRXP_LOOT_野性之心肩甲|r] 来完成此任务 << Druid
    >>你需要 |T132588:0|t[|cRXP_LOOT_野兽追猎者长靴|r], |T134583:0|t[|cRXP_LOOT_野兽追猎者短裤|r] 和 |T135041:0|t[|cRXP_LOOT_野兽追猎者衬肩|r] 来完成此任务 << Hunter
    >>你需要 |T132536:0|t[|cRXP_LOOT_博学者长靴|r], |T134586:0|t[|cRXP_LOOT_博学者护腿|r] 和 |T135054:0|t[|cRXP_LOOT_博学者衬肩|r] 来完成此任务 << Mage
    >>你需要 |T132539:0|t[|cRXP_LOOT_虔诚软鞋|r], |T134588:0|t[|cRXP_LOOT_虔诚长裙|r] 和 |T135033:0|t[|cRXP_LOOT_虔诚衬肩|r] 来完成此任务 << Priest
    >>你需要 |T132542:0|t[|cRXP_LOOT_迅影长靴|r], |T134582:0|t[|cRXP_LOOT_迅影短裤|r] 和 |T135038:0|t[|cRXP_LOOT_迅影肩甲|r] 来完成此任务 << Rogue
    >>你需要|T132592:0|t[|cRXP_LOOT_元素长靴|r]、|T134583:0|t[|cRXP_LOOT_元素护腿|r] 和 |T135060:0|t[|cRXP_LOOT_元素护肩|r] 来完成此任务 << Shaman
    >>你需要 |T132539:0|t[|cRXP_LOOT_鬼雾便鞋|r]、|T134588:0|t[|cRXP_LOOT_鬼雾护腿|r] 和 |T133732:0|t[|cRXP_LOOT_鬼雾衬肩|r] 来完成这个任务 << Warlock
    >>你需要 |T132584:0|t[|cRXP_LOOT_勇气战靴|r]、|T134584:0|t[|cRXP_LOOT_勇气腿铠|r] 和 |T135061:0|t[|cRXP_LOOT_勇气肩甲|r] 来完成这个任务 << Warrior
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
    .turnin 8957 >>交任务 告别安泰恩 << Shaman
    .turnin 9016 >>交任务 告别安泰恩 << Druid
    .turnin 9017 >>交任务 告别安泰恩 << Hunter
    .turnin 9018 >>交任务 告别安泰恩 << Mage
    .turnin 9019 >>交任务 告别安泰恩 << Priest
    .turnin 9020 >>交任务 告别安泰恩 << Rogue
    .turnin 9021 >>交任务 告别安泰恩 << Warlock
    .turnin 9022 >>交任务 告别安泰恩 << Warrior
    .accept 8960 >>接受任务 伯德雷的不幸
    .target Mokvar

]])


RXPGuides.RegisterGuide([[
#classic
#tbc
#group RestedXP 终局指南
#subgroup 凶蛮之心套装指南 << Druid
#subgroup 兽王套装指南 << Hunter
#subgroup 巫师套装指南 << Mage
#subgroup 魂铸套装指南 << Paladin
#subgroup 暗幕套装指南 << Rogue
#subgroup 五雷套装指南 << Shaman
#subgroup 死雾套装指南 << Warlock
#subgroup 英勇套装指南 << Warrior
#subgroup 坚贞套装指南 << Priest
#name 第4部：头盔和胸部


step
    #optional
    +|cRXP_WARN_你必须先完成第3部：腿甲、肩铠和战靴后才能开始本指南的这一部分|r
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
    >>获取 |T133129:0|t[|cRXP_LOOT_野性之心兜帽|r]。此物由 |cRXP_ENEMY_黑暗院长加丁|r 在 |cFFfa9602通灵学院|r 掉落 << Druid
    >>获取 |T133126:0|t[|cRXP_LOOT_野兽追猎者之帽|r]。此物由 |cRXP_ENEMY_黑暗院长加丁|r 在 |cFFfa9602通灵学院|r 掉落 << Hunter
    >>获取 |T133076:0|t[|cRXP_LOOT_光铸头盔|r]。此物由 |cRXP_ENEMY_黑暗院长加丁|r 在 |cFFfa9602通灵学院|r 掉落 << Paladin
    >>获取 |T132767:0|t[|cRXP_LOOT_虔诚头冠|r]。此物由 |cRXP_ENEMY_黑暗院长加丁|r 在 |cFFfa9602通灵学院|r 掉落 << Priest
    >>获取 |T133143:0|t[|cRXP_LOOT_迅影罩帽|r]。此物由 |cRXP_ENEMY_黑暗院长加丁|r 在 |cFFfa9602通灵学院|r 掉落 << Rogue
    >>获取 |T133072:0|t[|cRXP_LOOT_元素罩帽|r]。此物由 |cRXP_ENEMY_黑暗院长加丁|r 在 |cFFfa9602通灵学院|r 掉落 << Shaman
    >>获取 |T133131:0|t[|cRXP_LOOT_鬼雾面具|r]。此物由 |cRXP_ENEMY_黑暗院长加丁|r 在 |cFFfa9602通灵学院|r 掉落 << Warlock
    >>获取 |T133070:0|t[|cRXP_LOOT_勇气头盔|r]。此物由 |cRXP_ENEMY_黑暗院长加丁|r 在 |cFFfa9602通灵学院|r 掉落 << Warrior
    >>获取 |T132768:0|t[|cRXP_LOOT_博学者头冠|r]。此物由 |cRXP_ENEMY_黑暗院长加丁|r 在 |cFFfa9602通灵学院|r 掉落 << Mage
    >>|cRXP_WARN_且可在藏宝海湾从|cRXP_FRIENDLY_ 皮克希·希基克斯|r 处兑换|r |T133799:0|t[|cRXP_FRIENDLY_褪色的安德麦雷亚尔|r] << sod
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
    >>获取 |T132741:0|t[|cRXP_LOOT_野性之心外衣|r]。此物由 |cRXP_ENEMY_达基萨斯将军|r 在 |cFFfa9602黑石塔上层|r 掉落 << Druid
    >>获取 |T132625:0|t[|cRXP_LOOT_野兽追猎者外套|r]。此物由 |cRXP_ENEMY_达基萨斯将军|r 在 |cFFfa9602黑石塔上层|r 掉落 << Hunter
    >>获取 |T132738:0|t[|cRXP_LOOT_光铸胸甲|r]。此物由 |cRXP_ENEMY_达基萨斯将军|r 在 |cFFfa9602黑石塔上层|r 掉落 << Paladin
    >>获取 |T132652:0|t[|cRXP_LOOT_虔诚长袍|r]。此物由 |cRXP_ENEMY_达基萨斯将军|r 在 |cFFfa9602黑石塔上层|r 掉落 << Priest
    >>获取 |T132722:0|t[|cRXP_LOOT_迅影外套|r]。此物由 |cRXP_ENEMY_达基萨斯将军|r 在 |cFFfa9602黑石塔上层|r 掉落 << Rogue
    >>获取 |T132633:0|t[|cRXP_LOOT_元素外衣|r]。此物由 |cRXP_ENEMY_达基萨斯将军|r 在 |cFFfa9602黑石塔上层|r 掉落 << Shaman
    >>获取 |T132690:0|t[|cRXP_LOOT_鬼雾长袍|r]。此物由 |cRXP_ENEMY_达基萨斯将军|r 在 |cFFfa9602黑石塔上层|r 掉落 << Warlock
    >>获取 |T132738:0|t[|cRXP_LOOT_勇气胸甲|r]。此物由 |cRXP_ENEMY_达基萨斯将军|r 在 |cFFfa9602黑石塔上层|r 掉落 << Warrior
    >>获取 |T132666:0|t[|cRXP_LOOT_博学者长袍|r]。此物由 |cRXP_ENEMY_达基萨斯将军|r 在 |cFFfa9602黑石塔上层|r 掉落 << Mage
    >>|cRXP_WARN_且可在藏宝海湾从|cRXP_FRIENDLY_ 皮克希·希基克斯|r 处兑换|r |T133799:0|t[|cRXP_FRIENDLY_褪色的安德麦雷亚尔|r] << sod
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
    .zone Ironforge >>前往 |cFFfa9602铁炉堡|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德莉亚娜|r 对话
    .accept 8960 >>接受任务 伯德雷的不幸
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>前往 |cFFfa9602奥格瑞玛|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫克瓦尔|r 对话
    .accept 8960 >>接受任务 伯德雷的不幸
    .target Mokvar
step
    >>|cRXP_BUY_收集以下物品|r：
    >>|cRXP_WARN_至少一个|r |T132873:0|t[大块魔光碎片]
    >>|cRXP_WARN_一瓶|r |T134821:0|t[超级能量合剂]
    >>|cRXP_WARN_如果可能的话从拍卖行购买它|r
    .collect 14344,1,8961,1 --Large Brilliant Shard (x1)
    .collect 13512,1,8994,1 --Flask of Supreme Power (x1)
step
    .reputation 529,honored >>|cRXP_WARN_获得银色黎明的尊敬声望|r
step << Alliance
    #completewith next
    .subzone 3197 >>前往|cFFfa9602西瘟疫之地|r的冰风岗
step << Alliance
    .goto Western Plaguelands,42.84,83.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_银色黎明军需官莱斯巴克|r 对话
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买一个|r |T133879:0|t[空火盆]
    >>|cRXP_WARN_这将花费120金币|r
    .collect 22014,1,8961,1 --Hallowed Brazier (x1)
    .target Argent Quartermaster Lightspark
step << Horde
    #completewith next
    .subzone 2268 >>前往|cFFfa9602东瘟疫之地|r的圣光之愿礼拜堂
step << Horde
    .goto Eastern Plaguelands,81.63,60.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_军需官米兰达·布利洛克|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买一个|r |T133879:0|t[空火盆]
    >>|cRXP_WARN_这将花费120金币|r
    .collect 22014,1,8961,1 --Hallowed Brazier (x1)
    .target Quartermaster Miranda Breechlock
step
    #completewith next
    .subzone 254 >>前往 |cFFfa9602黑石山|r
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .turnin 8960 >>交任务 伯德雷的不幸
    .accept 8961 >>接受任务 烈焰之王
    .target Bodley
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>进入黑石塔上层
    >>|cRXP_WARN_这是一个10人副本。你或者你的队伍中的某人必须拥有|r |T133343:0|t[|cRXP_LOOT_晋升印章|r] |cRXP_WARN_才能进入黑石塔上层|r
step
    >>击杀 |cRXP_ENEMY_烈焰卫士艾博希尔|r。从他身上拾取 |cRXP_LOOT_艾博希尔灰烬|r
    >>|cRXP_WARN_这是|r 黑石塔上层|cFFfa9602 的第一个首领|r
    .complete 8961,2 --Ember of Emberseer (x1)
    .mob Pyroguard Emberseer
step
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>进入黑石深渊
    >>|cRXP_WARN_确保你已组好队伍|r
step
    >>击杀 |cRXP_ENEMY_伊森迪奥斯|r。从他那里拾取 |cRXP_LOOT_伊森迪奥斯的余炭|r
    .complete 8961,1 --Incendicite of Incendius (x1)
    .mob Lord Incendius
step
    #completewith DukeofCynders
    .zone Silithus >>前往 |cFFfa9602希利苏斯|r
step
    #loop
    .goto Silithus,38.31,46.42,0
    .goto Silithus,27.93,30.66,0
    .goto Silithus,20.47,86.11,0
    .goto Silithus,38.31,46.42,80,0
    .goto Silithus,27.93,30.66,80,0
    .goto Silithus,20.47,86.11,80,0
    >>击杀 |cRXP_ENEMY_希利苏斯|r 的 |cFFfa9602[暮光异教徒]|r 怪物。从中收集他们的 |T132658:0|t[|cRXP_FRIENDLY_暮光异教徒|r]套装
    >>|cRXP_WARN_你需要多套|r |T132658:0|t[|cRXP_FRIENDLY_暮光异教徒|r] |cRXP_WARN_套装。建议你的小队至少有5套|r
    >>|cRXP_WARN_或者可从拍卖行购买|r
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
    .reputation 609,friendly >>获取塞纳里奥议会的友善声望
    >>|cRXP_WARN_在希利苏斯刷 |cRXP_ENEMY_暮光|r 小怪或完成塞纳里奥议会的任务来获取声望|r
step
    .goto Silithus,48.62,37.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_霍姆·蛮鬃|r 对话
    .accept 8331 >>接受任务 奥蕾尔·金叶
    .target Huum Wildmane
    .itemcount 20422,<1
step
    .goto Silithus,51.96,38.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥蕾尔·金叶|r 对话
    .turnin 8331 >>交任务 奥蕾尔·金叶
    .accept 8332 >>接受任务 议会的公爵
    .target Aurel Goldleaf
    .itemcount 20422,<1
step
    .goto Silithus,38.31,46.42
    .goto Silithus,38.31,46.42,0
    .goto Silithus,27.93,30.66,0
    .goto Silithus,20.47,86.11,0
    >>前往三个 |cRXP_PICK_暮光|r 营地中的任意一个，找到 |cRXP_ENEMY_次级风石|r。它们都已在地图上标出
    >>召唤 |cRXP_ENEMY_圣殿骑士|r 并击杀他们。拾取他们的 |T133438:0|t[|cRXP_LOOT_深渊纹章|r]
    >>|cRXP_WARN_你或队伍中的某人每次召唤|r圣殿骑士|cRXP_FRIENDLY_时，都必须穿戴一整套|r |T132658:0|t[|cRXP_WARN_暮光信徒|r] |cRXP_ENEMY_套装|r
    .collect 20513,3 --Abyssal Crest (x3)
    .itemcount 20422,<1
    .mob Earthen Templar
    .mob Crimson Templar
    .mob Hoary Templar
    .mob Azure Templar
step
    .goto Silithus,51.96,38.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥蕾尔·金叶|r 对话
    .turnin 8332 >>交任务 议会的公爵
    .target Aurel Goldleaf
    .itemcount 20513,3
step
    .goto Silithus,51.96,38.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥蕾尔·金叶|r 对话
    .turnin 8333 >>交任务 身份勋章
    .target Aurel Goldleaf
    .itemcount 20513,3
step
    #label DukeofCynders
    .goto Silithus,37.67,44.81
    .goto Silithus,37.67,44.81,0
    .goto Silithus,24.74,32.68,0
    .goto Silithus,17.24,84.75,0
    >>前往三个 |cRXP_PICK_暮光|r 营地中的任意一个，找到 |cRXP_ENEMY_风石|r。它们都已在地图上标出
    >>召唤 |cRXP_ENEMY_公爵|r 直到 |cRXP_ENEMY_灰烬公爵|r 出现 |cRXP_WARN_(25% 几率)|r。击杀他并拾取 |cRXP_LOOT_灰烬公爵的残渣|r
    >>|cRXP_WARN_你或队伍中的某人必须拥有一个|r |T133281:0|t[|cRXP_LOOT_暮光信徒身份勋章|r] |cRXP_WARN_，并且每次召唤新的|r公爵|cRXP_FRIENDLY_时，都需要穿戴一整套|r |T132658:0|t[|cRXP_WARN_暮光信徒|r] |cRXP_ENEMY_套装|r
    >>|cRXP_WARN_如果运气不好，你可能需要收集更多的|r |T133281:0|t[|cRXP_LOOT_暮光信徒身份勋章|r] |cRXP_WARN_和|r |T132658:0|t[|cRXP_FRIENDLY_暮光信徒|r] |cRXP_WARN_套装|r
    .complete 8961,3 --Cinder of Cynders (x1)
    .mob The Duke of Cynders
step
    #completewith next
    .subzone 254 >>前往 |cFFfa9602黑石山|r
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .turnin 8961 >>交任务 烈焰之王
    .acceptmultiple 8962,8963,8964,8965 >>接受任务 重要的材料
    .target Bodley
step
    #completewith next
    .subzone 2744 >>前往 |cFFfa9602希利苏斯|r的雷戈虫巢
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
    >>击杀 |cRXP_ENEMY_雷戈虫巢|r 小怪（精英）。拾取它们的 |cRXP_LOOT_德鲁伊的遗骸|r
    >>|cRXP_WARN_这个掉落物的掉率很低，可能会耗费不少时间。建议组一个5人小队来刷|r
    .complete 8962,1 --Druidical Remains (x1)
    .mob Hive'Regal Spitfire
    .mob Hive'Regal Hive Lord
    .mob Hive'Regal Slavemaker
    .mob Hive'Regal Ambusher
    .mob Hive'Regal Burrower
    .isOnQuest 8962
step
    #completewith next
    .subzone 2249 >>前往 |cFFfa9602冬泉谷|r的霜语峡谷
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
    >>击杀 |cRXP_ENEMY_霜槌巨人|r 和 |cRXP_ENEMY_霜槌保卫者|r（精英）。拾取它们的 |cRXP_LOOT_星风村遗物|r
    >>|cRXP_WARN_这个掉落物的掉率很低，可能会耗费不少时间。建议组一个5人小队来刷|r
    .complete 8963,1 --Starbreeze Village Relic (x1)
    .mob Frostmaul Giant
    .mob Frostmaul Preserver
    .isOnQuest 8963
step
    #completewith next
    .subzone 2266 >>前往 |cFFfa9602东瘟疫之地|r的提尔之手号
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
    >>击杀 |cRXP_ENEMY_血色禁卫队|r (精英)。拾取|cRXP_ENEMY_狂热光芒之剑|r
    >>|cRXP_WARN_这个掉落物的掉率很低，可能会耗费不少时间。建议组一个5人小队来刷|r
    .complete 8964,1 --Brilliant Sword of Zealotry (x1)
    .mob Scarlet Praetorian
    .isOnQuest 8964
step
    #completewith next
    .goto Hillsbrad Foothills,19.67,76.92
    .subzone 896 >>前往 |cFFfa9602希尔斯布莱德丘陵|r 的赎罪岛
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
    >>击杀岛上的|cRXP_ENEMY_亡灵|r（精英），拾取|cRXP_LOOT_放逐者的灵魂灰烬|r
    >>|cRXP_WARN_这个掉落物的掉率很低，可能会耗费不少时间。建议组一个5人小队来刷|r
    .complete 8965,1 --Soul Ashes of the Banished (x1)
    .mob Cursed Paladin
    .mob Writhing Mage
    .mob Condemned Acolyte
    .mob Condemned Monk
    .mob Cursed Justicar
    .isOnQuest 8965
step
    #completewith LeftPiecePU
    .subzone 254 >>前往 |cFFfa9602黑石山|r
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .turnin 8962 >>交任务 重要的材料
    .target Bodley
    .isQuestComplete 8962
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .turnin 8963 >>交任务 重要的材料
    .target Bodley
    .isQuestComplete 8963
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .turnin 8964 >>交任务 重要的材料
    .target Bodley
    .isQuestComplete 8964
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .turnin 8965 >>交任务 重要的材料
    .target Bodley
    .isQuestComplete 8965
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .acceptmultiple 8966,8967,8968,8969 >>接受任务 瓦塔拉克饰品的左瓣
    .target Bodley
    .isQuestTurnedIn 8962
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .acceptmultiple 8966,8967,8968,8969 >>接受任务 瓦塔拉克饰品的左瓣
    .target Bodley
    .isQuestTurnedIn 8963
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .acceptmultiple 8966,8967,8968,8969 >>接受任务 瓦塔拉克饰品的左瓣
    .target Bodley
    .isQuestTurnedIn 8964
step
    #label LeftPiecePU
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .acceptmultiple 8966,8967,8968,8969 >>接受任务 瓦塔拉克饰品的左瓣
    .target Bodley
    .isQuestTurnedIn 8965
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>进入黑石塔
    >>|cRXP_WARN_确保你已组好队伍|r
    .isOnQuest 8966
step
    >>击杀|cRXP_ENEMY_莫尔·灰蹄|r。从他身上拾取|T133320:0|t|T133320:0|t|cRXP_LOOT_瓦塔拉克饰品的左瓣|r
    .use 22049 >>|cRXP_WARN_使用|r |T133881:0|t|T133881:0|t[召唤火盆] |cRXP_WARN_在|r |cRXP_ENEMY_指挥官沃恩的|r |cRXP_WARN_房间内召唤|r |cRXP_ENEMY_莫尔·灰蹄|r
    .complete 8966,1 --Mor Grayhoof Slain (x1)
    .complete 8966,2 --Left Piece of Lord Valthalak's Amulet (x1)
    .mob War Master Voone
    .mob Mor Grayhoof
    .isOnQuest 8966
step
    #completewith next
    .zone Feralas >>前往 |cFFfa9602菲拉斯|r
    .subzoneskip 2557
    .isOnQuest 8967
step
    #completewith next
    .goto Kalimdor,43.84,67.41,20 >>进入厄运之槌的东入口
    >>|cRXP_WARN_确保你已组好队伍|r
    .isOnQuest 8967
step
    >>击杀|cRXP_ENEMY_依萨利恩|r。从她身上拾取|T133320:0|t|T133320:0|t[|cRXP_LOOT_瓦塔拉克饰品的左瓣|r]
    .use 22050 >>|cRXP_WARN_在|r |T133881:0|t|T133881:0|t|cRXP_WARN_奥兹恩的|r|cRXP_ENEMY_房间中使用|r|cRXP_WARN_召唤火盆|r|cRXP_ENEMY_来召唤依萨利恩|r
    .complete 8967,1 --Isalien slain (x1)
    .complete 8967,2 --Left Piece of Lord Valthalak's Amulet (x1)
    .mob Alzzin the Wildshaper
    .mob Isalien
    .isOnQuest 8967
step
    #completewith next
    .zone Eastern Plaguelands >>前往 |cFFfa9602东瘟疫之地|r
    .subzoneskip 2017
    .isOnQuest 8968
step
    #completewith next
    .goto Eastern Kingdoms,55.06,17.51
    .subzone 2017 >>进入斯坦索姆
    >>|cRXP_WARN_确保你已组好队伍|r
    .isOnQuest 8968
step
    >>击杀|cRXP_ENEMY_亚雷恩|r和|cRXP_ENEMY_索托斯|r，从他们身上拾取|T133320:0|t|T133320:0|t|cRXP_LOOT_瓦塔拉克饰品的左瓣|r
    .use 22051 >>|cRXP_WARN_使用|r |T133881:0|t|T133881:0|t召唤火盆|cRXP_WARN_在|r|cRXP_ENEMY_巴纳札尔的|r|cRXP_WARN_房间中召唤|r|cRXP_ENEMY_亚雷恩|r|cRXP_WARN_和|r|cRXP_ENEMY_索托斯|r
    .complete 8968,1 --Jarien slain (x1)
    .complete 8968,2 --Sothos slain (x1)
    .complete 8968,3 --Left Piece of Lord Valthalak's Amulet (x1)
    .mob Balnazzara
    .mob Jarien
    .mob Sothos
    .isOnQuest 8968
step
    #completewith next
    .zone Western Plaguelands >>前往 |cFFfa9602西瘟疫之地|r
    .subzoneskip 2057
    .isOnQuest 8969
step
    #completewith next
    .goto Eastern Kingdoms,52.75,26.41
    .subzone 2057 >>进入通灵学院
    >>|cRXP_WARN_确保你已组好队伍|r
    .isOnQuest 8969
step
    >>击杀 |cRXP_ENEMY_库尔莫克|r。从他身上拾取 |T133320:0|t[|cRXP_LOOT_瓦塔拉克饰品的左瓣|r]
    .use 22052 >>|cRXP_WARN_在|r |cRXP_WARN_莱斯·霜语|r |cRXP_ENEMY_的房间内使用|r|T133881:0|t[召唤火盆] |cRXP_WARN_来召唤|r |cRXP_ENEMY_库尔莫克|r
    .complete 8969,1 --Kormok slain (x1)
    .complete 8969,2 --Left Piece of Lord Valthalak's Amulet (x1)
    .mob Ras Frostwhisper
    .mob Kormok
    .isOnQuest 8969
step
    #completewith AlcazIslandPU
    .subzone 254 >>前往 |cFFfa9602黑石山|r
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .turnin 8966 >>交任务 塔拉克饰品的左瓣
    .accept 8970 >>接受任务 奥卡兹岛在你前方……
    .target Bodley
    .isQuestComplete 8966
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .turnin 8967 >>交任务 塔拉克饰品的左瓣
    .accept 8970 >>接受任务 奥卡兹岛在你前方……
    .target Bodley
    .isQuestComplete 8967
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .turnin 8968 >>交任务 塔拉克饰品的左瓣
    .accept 8970 >>接受任务 奥卡兹岛在你前方……
    .target Bodley
    .isQuestComplete 8968
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .turnin 8969 >>交任务 塔拉克饰品的左瓣
    .accept 8970 >>接受任务 奥卡兹岛在你前方……
    .target Bodley
    .isQuestComplete 8969
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .accept 8970 >>接受任务 奥卡兹岛在你前方……
    .target Bodley
    .isQuestTurnedIn 8966
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .accept 8970 >>接受任务 奥卡兹岛在你前方……
    .target Bodley
    .isQuestTurnedIn 8967
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .accept 8970 >>接受任务 奥卡兹岛在你前方……
    .target Bodley
    .isQuestTurnedIn 8968
step
    #label AlcazIslandPU
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .accept 8970 >>接受任务 奥卡兹岛在你前方……
    .target Bodley
    .isQuestTurnedIn 8969
step
    #completewith next
    .goto Dustwallow Marsh,72.26,18.28
    .subzone 2079 >>前往 |cFFfa9602尘泥沼泽|r的奥卡兹岛
step
    #loop
    .goto Dustwallow Marsh,76.91,18.24,0
    .goto Dustwallow Marsh,74.38,17.99,50,0
    .goto Dustwallow Marsh,74.89,14.68,50,0
    .goto Dustwallow Marsh,74.38,17.99,50,0
    .goto Dustwallow Marsh,76.91,18.24,50,0
    .goto Dustwallow Marsh,76.56,22.15,50,0
    .goto Dustwallow Marsh,75.49,21.75,50,0
    >>击杀 |cRXP_ENEMY_斯塔莎兹海妖|r (精英)。收集他们的 |cRXP_LOOT_血藻|r
    >>|cRXP_WARN_这个掉落物的掉率很低，可能会耗费不少时间。建议组一个5人小队来刷|r
    .complete 8970,1 --Bloodkelp (x20)
    .mob Strashaz Warrior
    .mob Strashaz Myrmidon
    .mob Strashaz Siren
    .mob Strashaz Sorceress
    .mob Strashaz Serpent Guard
step
    #completewith next
    .subzone 254 >>前往 |cFFfa9602黑石山|r
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .turnin 8970 >>交任务 奥卡兹岛在你前方……
    .target Bodley
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .acceptmultiple 8985,8986,8987,8988 >>接受任务 更多重要的材料
    .target Bodley
    .isQuestTurnedIn 8970
step
    #completewith next
    .subzone 2744 >>前往 |cFFfa9602希利苏斯|r的雷戈虫巢
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
    >>击杀 |cRXP_ENEMY_雷戈虫巢|r 小怪（精英）。拾取它们的 |cRXP_LOOT_德鲁伊的遗骸|r
    >>|cRXP_WARN_这个掉落物的掉率很低，可能会耗费不少时间。建议组一个5人小队来刷|r
    .complete 8986,1 --Druidical Remains (x1)
    .mob Hive'Regal Spitfire
    .mob Hive'Regal Hive Lord
    .mob Hive'Regal Slavemaker
    .mob Hive'Regal Ambusher
    .mob Hive'Regal Burrower
    .isOnQuest 8986
step
    #completewith next
    .subzone 2249 >>前往 |cFFfa9602冬泉谷|r的霜语峡谷
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
    >>击杀 |cRXP_ENEMY_霜槌巨人|r 和 |cRXP_ENEMY_霜槌保卫者|r（精英）。拾取它们的 |cRXP_LOOT_星风村遗物|r
    >>|cRXP_WARN_这个掉落物的掉率很低，可能会耗费不少时间。建议组一个5人小队来刷|r
    .complete 8985,1 --Starbreeze Village Relic (x1)
    .mob Frostmaul Giant
    .mob Frostmaul Preserver
    .isOnQuest 8985
step
    #completewith next
    .subzone 2266 >>前往 |cFFfa9602东瘟疫之地|r的提尔之手号
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
    >>击杀 |cRXP_ENEMY_血色禁卫队|r (精英)。拾取|cRXP_ENEMY_狂热光芒之剑|r
    >>|cRXP_WARN_这个掉落物的掉率很低，可能会耗费不少时间。建议组一个5人小队来刷|r
    .complete 8987,1 --Brilliant Sword of Zealotry (x1)
    .mob Scarlet Praetorian
    .isOnQuest 8987
step
    #completewith next
    .goto Hillsbrad Foothills,19.67,76.92
    .subzone 896 >>前往 |cFFfa9602希尔斯布莱德丘陵|r 的赎罪岛
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
    >>击杀岛上的|cRXP_ENEMY_亡灵|r（精英），拾取|cRXP_LOOT_放逐者的灵魂灰烬|r
    >>|cRXP_WARN_这个掉落物的掉率很低，可能会耗费不少时间。建议组一个5人小队来刷|r
    .complete 8988,1 --Soul Ashes of the Banished (x1)
    .mob Cursed Paladin
    .mob Writhing Mage
    .mob Condemned Acolyte
    .mob Condemned Monk
    .mob Cursed Justicar
    .isOnQuest 8988
step
    #completewith RightPiecePU
    .subzone 254 >>前往 |cFFfa9602黑石山|r
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .turnin 8985 >>交任务 更多重要的材料
    .target Bodley
    .isQuestComplete 8985
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .turnin 8986 >>交任务 更多重要的材料
    .target Bodley
    .isQuestComplete 8986
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .turnin 8987 >>交任务 更多重要的材料
    .target Bodley
    .isQuestComplete 8987
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .turnin 8988 >>交任务 更多重要的材料
    .target Bodley
    .isQuestComplete 8988
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .acceptmultiple 8989,8990,8991,8992 >>接受任务 瓦塔拉克饰品的右瓣
    .target Bodley
    .isQuestTurnedIn 8985
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .acceptmultiple 8989,8990,8991,8992 >>接受任务 瓦塔拉克饰品的右瓣
    .target Bodley
    .isQuestTurnedIn 8986
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .acceptmultiple 8989,8990,8991,8992 >>接受任务 瓦塔拉克饰品的右瓣
    .target Bodley
    .isQuestTurnedIn 8987
step
    #label RightPiecePU
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .acceptmultiple 8989,8990,8991,8992 >>接受任务 瓦塔拉克饰品的右瓣
    .target Bodley
    .isQuestTurnedIn 8988
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>进入黑石塔
    >>|cRXP_WARN_确保你已组好队伍|r
    .isOnQuest 8989
step
    >>击杀 |cRXP_ENEMY_莫尔·灰蹄|r。拾取他的 |T133318:0|t[|cRXP_LOOT_瓦塔拉克饰品的右瓣|r]
    .use 22049 >>|cRXP_WARN_使用|r |T133881:0|t|T133881:0|t[召唤火盆] |cRXP_WARN_在|r |cRXP_ENEMY_指挥官沃恩的|r |cRXP_WARN_房间内召唤|r |cRXP_ENEMY_莫尔·灰蹄|r
    .complete 8989,1 --Mor Grayhoof Slain (x1)
    .collect 22046,1,8989,1 --Right Piece of Lord Valthalak's Amulet (x1)
    .mob War Master Voone
    .mob Mor Grayhoof
    .isOnQuest 8989
step
    #optional
    .use 22046 >>|cRXP_WARN_使用|r |T133320:0|t|T133318:0|t[|cRXP_LOOT_瓦塔拉克饰品的左瓣|r]|cRXP_WARN_、|r|T133316:0|t|T133314:0|t[|cRXP_LOOT_瓦塔拉克饰品的右瓣|r] |cRXP_WARN_和|r |T133316:0|t|T133316:0|t[|cRXP_LOOT_瓦塔拉克饰品的上瓣|r] |cRXP_WARN_来合成|r |T133314:0|t|T133314:0|t[|cRXP_LOOT_瓦塔拉克饰品|r]
    .complete 8989,2 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,1
    .isOnQuest 8989
step
    .use 22046 >>|cRXP_WARN_使用|r |T133320:0|t|T133318:0|t[|cRXP_LOOT_瓦塔拉克饰品的左瓣|r]|cRXP_WARN_、|r|T133316:0|t|T133314:0|t[|cRXP_LOOT_瓦塔拉克饰品的右瓣|r] |cRXP_WARN_和|r |T133316:0|t|T133316:0|t[|cRXP_LOOT_瓦塔拉克饰品的上瓣|r] |cRXP_WARN_来合成|r |T133314:0|t|T133314:0|t[|cRXP_LOOT_瓦塔拉克饰品|r]
    >>|cRXP_WARN_如果你丢失了|r |T133316:0|t|T133316:0|t[|cRXP_LOOT_瓦塔拉克饰品的上瓣|r]|cRXP_WARN_，去找|r |cRXP_FRIENDLY_布德利|r |cRXP_WARN_重新获取|r
    .complete 8989,2 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,<1
    .isOnQuest 8989
step
    #completewith next
    .zone Feralas >>前往 |cFFfa9602菲拉斯|r
    .subzoneskip 2557
    .isOnQuest 8990
step
    #completewith next
    .goto Kalimdor,43.84,67.41,20 >>进入厄运之槌的东入口
    >>|cRXP_WARN_确保你已组好队伍|r
    .isOnQuest 8990
step
    >>杀死 |cRXP_ENEMY_伊萨利恩|r。拾取她的 |T133318:0|t[|cRXP_LOOT_瓦塔拉克饰品的右瓣|r]
    .use 22050 >>|cRXP_WARN_在|r |T133881:0|t|T133881:0|t|cRXP_WARN_奥兹恩的|r|cRXP_ENEMY_房间中使用|r|cRXP_WARN_召唤火盆|r|cRXP_ENEMY_来召唤依萨利恩|r
    .complete 8990,1 --Isalien slain (x1)
    .collect 22046,1,8990,1 --Right Piece of Lord Valthalak's Amulet (x1)
    .mob Alzzin the Wildshaper
    .mob Isalien
    .isOnQuest 8990
step
    #optional
    .use 22046 >>|cRXP_WARN_使用|r |T133320:0|t|T133318:0|t[|cRXP_LOOT_瓦塔拉克饰品的左瓣|r]|cRXP_WARN_、|r|T133316:0|t|T133314:0|t[|cRXP_LOOT_瓦塔拉克饰品的右瓣|r] |cRXP_WARN_和|r |T133316:0|t|T133316:0|t[|cRXP_LOOT_瓦塔拉克饰品的上瓣|r] |cRXP_WARN_来合成|r |T133314:0|t|T133314:0|t[|cRXP_LOOT_瓦塔拉克饰品|r]
    .complete 8990,2 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,1
    .isOnQuest 8990
step
    .use 22046 >>|cRXP_WARN_使用|r |T133320:0|t|T133318:0|t[|cRXP_LOOT_瓦塔拉克饰品的左瓣|r]|cRXP_WARN_、|r|T133316:0|t|T133314:0|t[|cRXP_LOOT_瓦塔拉克饰品的右瓣|r] |cRXP_WARN_和|r |T133316:0|t|T133316:0|t[|cRXP_LOOT_瓦塔拉克饰品的上瓣|r] |cRXP_WARN_来合成|r |T133314:0|t|T133314:0|t[|cRXP_LOOT_瓦塔拉克饰品|r]
    >>|cRXP_WARN_如果你丢失了|r |T133316:0|t|T133316:0|t[|cRXP_LOOT_瓦塔拉克饰品的上瓣|r]|cRXP_WARN_，去找|r |cRXP_FRIENDLY_布德利|r |cRXP_WARN_重新获取|r
    .complete 8990,2 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,<1
    .isOnQuest 8990
step
    #completewith next
    .zone Eastern Plaguelands >>前往 |cFFfa9602东瘟疫之地|r
    .subzoneskip 2017
    .isOnQuest 8991
step
    #completewith next
    .goto Eastern Kingdoms,55.06,17.51
    .subzone 2017 >>进入斯坦索姆
    >>|cRXP_WARN_确保你已组好队伍|r
    .isOnQuest 8991
step
    >>击杀|cRXP_ENEMY_亚雷恩|r和|cRXP_ENEMY_索托斯|r。从他们身上拾取|T133318:0|t|T133318:0|t[|cRXP_LOOT_瓦塔拉克饰品的右瓣|r]
    .use 22051 >>|cRXP_WARN_使用|r |T133881:0|t|T133881:0|t召唤火盆|cRXP_WARN_在|r|cRXP_ENEMY_巴纳札尔的|r|cRXP_WARN_房间中召唤|r|cRXP_ENEMY_亚雷恩|r|cRXP_WARN_和|r|cRXP_ENEMY_索托斯|r
    .complete 8991,1 --Jarien slain (x1)
    .complete 8991,2 --Sothos slain (x1)
    .collect 22046,1,8991,1 --Right Piece of Lord Valthalak's Amulet (x1)
    .mob Balnazzara
    .mob Jarien
    .mob Sothos
    .isOnQuest 8991
step
    #optional
    .use 22046 >>|cRXP_WARN_使用|r |T133320:0|t|T133318:0|t[|cRXP_LOOT_瓦塔拉克饰品的左瓣|r]|cRXP_WARN_、|r|T133316:0|t|T133314:0|t[|cRXP_LOOT_瓦塔拉克饰品的右瓣|r] |cRXP_WARN_和|r |T133316:0|t|T133316:0|t[|cRXP_LOOT_瓦塔拉克饰品的上瓣|r] |cRXP_WARN_来合成|r |T133314:0|t|T133314:0|t[|cRXP_LOOT_瓦塔拉克饰品|r]
    .complete 8991,3 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,1
    .isOnQuest 8991
step
    .use 22046 >>|cRXP_WARN_使用|r |T133320:0|t|T133318:0|t[|cRXP_LOOT_瓦塔拉克饰品的左瓣|r]|cRXP_WARN_、|r|T133316:0|t|T133314:0|t[|cRXP_LOOT_瓦塔拉克饰品的右瓣|r] |cRXP_WARN_和|r |T133316:0|t|T133316:0|t[|cRXP_LOOT_瓦塔拉克饰品的上瓣|r] |cRXP_WARN_来合成|r |T133314:0|t|T133314:0|t[|cRXP_LOOT_瓦塔拉克饰品|r]
    >>|cRXP_WARN_如果你丢失了|r |T133316:0|t|T133316:0|t[|cRXP_LOOT_瓦塔拉克饰品的上瓣|r]|cRXP_WARN_，去找|r |cRXP_FRIENDLY_布德利|r |cRXP_WARN_重新获取|r
    .complete 8991,3 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,<1
    .isOnQuest 8991
step
    #completewith next
    .zone Western Plaguelands >>前往 |cFFfa9602西瘟疫之地|r
    .subzoneskip 2057
    .isOnQuest 8992
step
    #completewith next
    .goto Eastern Kingdoms,52.75,26.41
    .subzone 2057 >>进入通灵学院
    >>|cRXP_WARN_确保你已组好队伍|r
    .isOnQuest 8992
step
    >>击杀|cRXP_ENEMY_库尔莫克|r。从他身上拾取|T133318:0|t|T133318:0|t[|cRXP_LOOT_瓦塔拉克饰品的右瓣|r]
    .use 22052 >>|cRXP_WARN_在|r |cRXP_WARN_莱斯·霜语|r |cRXP_ENEMY_的房间内使用|r|T133881:0|t[召唤火盆] |cRXP_WARN_来召唤|r |cRXP_ENEMY_库尔莫克|r
    .complete 8992,1 --Kormok slain (x1)
    .collect 22046,1,8992,1 --Right Piece of Lord Valthalak's Amulet (x1)
    .mob Ras Frostwhisper
    .mob Kormok
    .isOnQuest 8992
step
    #optional
    .use 22046 >>|cRXP_WARN_使用|r |T133320:0|t|T133318:0|t[|cRXP_LOOT_瓦塔拉克饰品的左瓣|r]|cRXP_WARN_、|r|T133316:0|t|T133314:0|t[|cRXP_LOOT_瓦塔拉克饰品的右瓣|r] |cRXP_WARN_和|r |T133316:0|t|T133316:0|t[|cRXP_LOOT_瓦塔拉克饰品的上瓣|r] |cRXP_WARN_来合成|r |T133314:0|t|T133314:0|t[|cRXP_LOOT_瓦塔拉克饰品|r]
    .complete 8992,2 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,1
    .isOnQuest 8992
step
    .use 22046 >>|cRXP_WARN_使用|r |T133320:0|t|T133318:0|t[|cRXP_LOOT_瓦塔拉克饰品的左瓣|r]|cRXP_WARN_、|r|T133316:0|t|T133314:0|t[|cRXP_LOOT_瓦塔拉克饰品的右瓣|r] |cRXP_WARN_和|r |T133316:0|t|T133316:0|t[|cRXP_LOOT_瓦塔拉克饰品的上瓣|r] |cRXP_WARN_来合成|r |T133314:0|t|T133314:0|t[|cRXP_LOOT_瓦塔拉克饰品|r]
    >>|cRXP_WARN_如果你丢失了|r |T133316:0|t|T133316:0|t[|cRXP_LOOT_瓦塔拉克饰品的上瓣|r]|cRXP_WARN_，去找|r |cRXP_FRIENDLY_布德利|r |cRXP_WARN_重新获取|r
    .complete 8992,2 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,<1
    .isOnQuest 8992
step
    #completewith FinalPrepPU
    .subzone 254 >>前往 |cFFfa9602黑石山|r
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .turnin 8989 >>交任务 瓦塔拉克饰品的右瓣
    .accept 8994 >>接受任务 最后的准备
    .target Bodley
    .isQuestComplete 8989
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .turnin 8990 >>交任务 瓦塔拉克饰品的右瓣
    .accept 8994 >>接受任务 最后的准备
    .target Bodley
    .isQuestComplete 8990
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .turnin 8991 >>交任务 瓦塔拉克饰品的右瓣
    .accept 8994 >>接受任务 最后的准备
    .target Bodley
    .isQuestComplete 8991
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .turnin 8992 >>交任务 瓦塔拉克饰品的右瓣
    .accept 8994 >>接受任务 最后的准备
    .target Bodley
    .isQuestComplete 8992
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .accept 8994 >>接受任务 最后的准备
    .target Bodley
    .isQuestTurnedIn 8989
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .accept 8994 >>接受任务 最后的准备
    .target Bodley
    .isQuestTurnedIn 8990
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .accept 8994 >>接受任务 最后的准备
    .target Bodley
    .isQuestTurnedIn 8991
step
    #label FinalPrepPU
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .accept 8994 >>接受任务 最后的准备
    .target Bodley
    .isQuestTurnedIn 8992
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>进入黑石塔
    >>|cRXP_WARN_确保你已组好队伍|r
step
    >>击杀黑石塔中的|cRXP_ENEMY_兽人|r，拾取它们掉落的|cRXP_LOOT_黑石护腕|r
    .complete 8994,1 --Blackrock Bracer (x40)
    --too many .mobs, would cause clutter
step
    >>|cRXP_BUY_收集一瓶|r |T134821:0|t[超级能量合剂]
    >>|cRXP_WARN_如果可能的话从拍卖行购买它|r
    .collect 13512,1,8994,1 --Flask of Supreme Power (x1)
step
    #completewith next
    .subzone 254 >>前往 |cFFfa9602黑石山|r
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .turnin 8994 >>交任务 最后的准备
    .accept 8995 >>接受任务 瓦塔拉克公爵
    .target Bodley
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>进入黑石塔上层
    >>|cRXP_WARN_这是一个10人副本。你或者你的队伍中的某人必须拥有|r |T133343:0|t[|cRXP_LOOT_晋升印章|r] |cRXP_WARN_才能进入黑石塔上层|r
step
    .use 22048 >>|cRXP_ENEMY_击杀|r |cRXP_WARN_瓦塔拉克公爵|r。|cRXP_WARN_然后对他的尸体使用|r |T133314:0|t[瓦塔拉克饰品]
    .use 22056 >>|cRXP_WARN_在|r |cRXP_WARN_比斯巨兽|r |cRXP_ENEMY_的房间内使用|r |T133881:0|t[召唤火盆] |cRXP_WARN_来召唤|r |cRXP_ENEMY_瓦塔拉克公爵|r
    .complete 8995,1 --Lord Valthalak slain (x1)
    .complete 8995,2 --Lord Valthalak's Amulet (x1)
    .mob The Beast
    .mob Lord Valthalak
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与出现的 |cRXP_FRIENDLY_瓦塔拉克公爵之魂|r 对话
    .turnin 8995 >>交任务 瓦塔拉克公爵
    .accept 8996 >>接受任务 向伯德雷回复
    .target Spirit of Lord Valthalak
step
    #completewith next
    .subzone 254 >>前往 |cFFfa9602黑石山|r
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯德雷|r 对话
    .use 22115 >>|cRXP_WARN_使用|r |T133878:0|t[超维度幽灵显形器] |cRXP_WARN_来显露|r |cRXP_FRIENDLY_伯德雷|r
    .turnin 8996 >>交任务 向伯德雷回复
    .accept 8997 >>接受任务 回到起点 << Alliance
    .accept 8998 >>接受任务回到起点 << Horde
    .target Bodley
step << Alliance
    #completewith next
    .zone Ironforge >>前往 |cFFfa9602铁炉堡|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德莉亚娜|r 对话
    .turnin 8997 >>交任务 回到起点
    .accept 8999 >>接受任务 最后的奖赏 << Druid
    .accept 9000 >>接受任务 最后的奖赏 << Hunter
    .accept 9001 >>接受任务 最后的奖赏 << Mage
    .accept 9002 >>接受任务 最后的奖赏 << Paladin
    .accept 9003 >>接受任务 最后的奖赏 << Priest
    .accept 9004 >>接受任务 最后的奖赏 << Rogue
    .accept 9005 >>接受任务 最后的奖赏 << Warlock
    .accept 9006 >>接受任务 最后的奖赏 << Warrior
    .target Deliana
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德莉亚娜|r 对话
    >>你需要 |T133129:0|t[|cRXP_LOOT_野性之心兜帽|r] 和 |T132741:0|t[|cRXP_LOOT_野性之心外衣|r] 来完成任务 << Druid
    >>你需要 |T133126:0|t[|cRXP_LOOT_野兽追猎者之帽|r] 和 |T132625:0|t[|cRXP_LOOT_野兽追猎者外套|r] 来完成任务 <<  Hunter
    >>你需要 |T132768:0|t[|cRXP_LOOT_博学者头冠|r] 和 |T132666:0|t[|cRXP_LOOT_博学者长袍|r] 来完成任务 << Mage
    >>你需要 |T133076:0|t[|cRXP_LOOT_光铸头盔|r] 和 |T132738:0|t[|cRXP_LOOT_光铸胸甲|r] 来完成任务 << Paladin
    >>你需要 |T132767:0|t[|cRXP_LOOT_虔诚头冠|r] 和 |T132652:0|t[|cRXP_LOOT_虔诚长袍|r] 来完成任务 << Priest
    >>你需要 |T133143:0|t[|cRXP_LOOT_迅影罩帽|r] 和 |T132722:0|t[|cRXP_LOOT_迅影外套|r] 来完成任务 << Rogue
    >>你需要 |T133131:0|t[|cRXP_LOOT_鬼雾面具|r] 和 |T132690:0|t[|cRXP_LOOT_鬼雾长袍|r] 来完成任务 << Warlock
    >>你需要 |T133070:0|t[|cRXP_LOOT_勇气头盔|r] 和 |T132738:0|t[|cRXP_LOOT_勇气胸甲|r] 来完成任务 << Warrior
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
    .turnin 8999 >>交任务 最后的奖赏 << Druid
    .turnin 9000 >>交任务 最后的奖赏 << Hunter
    .turnin 9001 >>交任务 最后的奖赏 << Mage
    .turnin 9002 >>交任务 最后的奖赏 << Paladin
    .turnin 9003 >>交任务 最后的奖赏 << Priest
    .turnin 9004 >>交任务 最后的奖赏 << Rogue
    .turnin 9005 >>交任务 最后的奖赏 << Warlock
    .turnin 9006 >>交任务 最后的奖赏 << Warrior
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>前往 |cFFfa9602奥格瑞玛|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫克瓦尔|r 对话
    .turnin 8998 >>交任务 回到起点
    .accept 9007 >>接受任务 最后的奖赏 << Druid
    .accept 9008 >>接受任务 最后的奖赏 << Hunter
    .accept 9009 >>接受任务 最后的奖赏 << Priest
    .accept 9010 >>接受任务 最后的奖赏 << Rogue
    .accept 9011 >>接受任务 最后的奖赏 << Shaman
    .accept 9012 >>接受任务 最后的奖赏 << Warlock
    .accept 9013 >>接受任务 最后的奖赏 << Warrior
    .accept 9014 >>接受任务 最后的奖赏 << Mage
    .target Mokvar
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_莫克瓦尔|r 对话
    >>你需要 |T133129:0|t[|cRXP_LOOT_野性之心兜帽|r] 和 |T132741:0|t[|cRXP_LOOT_野性之心外衣|r] 来完成任务 << Druid
    >>你需要 |T133126:0|t[|cRXP_LOOT_野兽追猎者之帽|r] 和 |T132625:0|t[|cRXP_LOOT_野兽追猎者外套|r] 来完成任务 <<  Hunter
    >>你需要 |T132768:0|t[|cRXP_LOOT_博学者头冠|r] 和 |T132666:0|t[|cRXP_LOOT_博学者长袍|r] 来完成任务 << Mage
    >>你需要 |T132767:0|t[|cRXP_LOOT_虔诚头冠|r] 和 |T132652:0|t[|cRXP_LOOT_虔诚长袍|r] 来完成任务 << Priest
    >>你需要 |T133143:0|t[|cRXP_LOOT_迅影罩帽|r] 和 |T132722:0|t[|cRXP_LOOT_迅影外套|r] 来完成任务 << Rogue
    >>你需要携带 |T133072:0|t|T132633:0|t[|cRXP_LOOT_元素罩帽|r] 和 |T132633:0|t|T132633:0|t[|cRXP_LOOT_元素外衣|r] 来交这个任务 << Shaman
    >>你需要 |T133131:0|t[|cRXP_LOOT_鬼雾面具|r] 和 |T132690:0|t[|cRXP_LOOT_鬼雾长袍|r] 来完成任务 << Warlock
    >>你需要 |T133070:0|t[|cRXP_LOOT_勇气头盔|r] 和 |T132738:0|t[|cRXP_LOOT_勇气胸甲|r] 来完成任务 << Warrior
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
    .turnin 9007 >>交任务 最后的奖赏 << Druid
    .turnin 9008 >>交任务 最后的奖赏 << Hunter
    .turnin 9009 >>交任务 最后的奖赏 << Priest
    .turnin 9010 >>交任务 最后的奖赏 << Rogue
    .turnin 9011 >>交任务 最后的奖赏 << Shaman
    .turnin 9012 >>交任务 最后的奖赏 << Warlock
    .turnin 9013 >>交任务 最后的奖赏 << Warrior
    .turnin 9014 >>交任务 最后的奖赏 << Mage
    .target Mokvar

]])
