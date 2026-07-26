if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 熔火爆裂 - 8 (莫高雷)
#title 熔火爆裂
#next 熔岩猛击 - 10 (莫高雷)


step
    +|cRXP_WARN_你应该至少达到8级才能 |r在莫高雷独自|cRXP_WARN_ 获取|r |T133816:0|t[铭刻手套 - 熔火爆裂]
    >>|cRXP_WARN_你必须至少达到3级才能装备|r |T134918:0|t|cRXP_LOOT_[硫息圣像]|r
    >>在尝试获取 |T133816:0|t[铭刻手套 - 熔火爆裂] |cRXP_WARN_之前，你需要先提升更多等级|r
    .train 425344,1
    .xp >3,1
step
    +|cRXP_WARN_你应该至少达到8级才能 |r在莫高雷独自|cRXP_WARN_ 获取|r |T133816:0|t[铭刻手套 - 熔火爆裂]
    .train 425344,1
    .xp <3,1
    .xp >8,1
step
    #loop
    .goto Mulgore,34.33,47.54,40,0
    .goto Mulgore,33.62,49.61,40,0
    .goto Mulgore,32.58,48.96,40,0
    .goto Mulgore,31.88,50.17,40,0
    .goto Mulgore,31.14,50.08,40,0
    .goto Mulgore,30.98,48.24,40,0
    .goto Mulgore,31.59,48.19,40,0
    .goto Mulgore,33.10,47.69,40,0
    >>击杀 |cRXP_ENEMY_巴尔丹掘地工|r 和 |cRXP_ENEMY_巴尔丹鉴定官|r。拾取它们的 |cRXP_LOOT_神器仓库钥匙|r
    >>|cRXP_WARN_小心|cRXP_ENEMY_ 巴尔丹鉴定官|r 会施放|r |T135929:0|t[次级治疗术] |cRXP_WARN_(远程施法:当自身或附近生命值低于 50% 的单位时，为其恢复约 75 点生命值)|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob 巴尔丹掘地工
    .mob 巴尔丹鉴定官
    .train 425344,1
    .xp <3,1
--XX WIP to here
step
    .goto Mulgore,31.56,49.54
    >>打开 |cRXP_PICK_神器仓库|r 箱子。拾取其中的 |T134918:0|t|cRXP_LOOT_[硫息圣像]|r
    .collect 206388,1 --Sulfurous Icon (1)
    .train 425344,1
    .xp <3,1
step
    .equip 18,206388 >>|cRXP_WARN_装备|r |T134918:0|t|cRXP_LOOT_[硫息圣像]|r
    .use 206388
    .itemcount 206388,1 --Sulfurous Icon (1)
    .train 425344,1
    .xp <3,1
step
    #loop
    .goto Mulgore,34.33,47.54,40,0
    .goto Mulgore,33.62,49.61,40,0
    .goto Mulgore,32.58,48.96,40,0
    .goto Mulgore,31.88,50.17,40,0
    .goto Mulgore,31.14,50.08,40,0
    .goto Mulgore,30.98,48.24,40,0
    .goto Mulgore,31.59,48.19,40,0
    .goto Mulgore,33.10,47.69,40,0
    .aura 408828 >>|cRXP_WARN_击杀敌人时，确保至少对其使用过一次|r |T136026:0|t[大地震击] |cRXP_WARN_并造成伤害。重复此操作10次以获得|r |T136116:0|t[灵感迸发] |cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须在能提供经验值的敌人身上完成此操作才能获得层数|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob 巴尔丹掘地工
    .mob 巴尔丹鉴定官
    .train 425344,1
    .xp <3,1
    .xp >13,1
step
    #completewith Barrens
    .zone The Barrens >>前往贫瘠之地
    .train 425344,1
    .xp <13,1
step
    #loop
    .goto The Barrens,53.94,25.86,50,0
    .goto The Barrens,54.17,25.06,50,0
    .goto The Barrens,54.86,25.43,50,0
    .goto The Barrens,55.62,25.71,50,0
    .goto The Barrens,55.98,26.36,50,0
    .goto The Barrens,55.71,27.21,50,0
    .goto The Barrens,55.44,27.35,50,0
    .goto The Barrens,54.99,26.79,50,0
    .aura 408828 >>|cRXP_WARN_击杀敌人时，确保至少对其使用过一次|r |T136026:0|t[大地震击] |cRXP_WARN_并造成伤害。重复此操作10次以获得|r |T136116:0|t[灵感迸发] |cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须在能提供经验值的敌人身上完成此操作才能获得层数|r
    .mob 钢鬃织棘者
    .mob 钢鬃寻水者
    .mob Razormane Hunter
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <13,1
    .xp >16,1
step
    #loop
    .goto The Barrens,55.97,16.17,50,0
    .goto The Barrens,55.43,16.15,50,0
    .goto The Barrens,54.10,15.51,50,0
    .goto The Barrens,53.10,15.25,50,0
    .goto The Barrens,53.73,13.77,50,0
    .goto The Barrens,55.09,15.00,50,0
    .goto The Barrens,55.62,14.86,50,0
    .aura 408828 >>|cRXP_WARN_击杀敌人时，确保至少对其使用过一次|r |T136026:0|t[大地震击] |cRXP_WARN_并造成伤害。重复此操作10次以获得|r |T136116:0|t[灵感迸发] |cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须在能提供经验值的敌人身上完成此操作才能获得层数|r
    .mob Hecklefang Hyena
    .mob 草原徘徊者
    .mob Savannah Huntress
    .mob 赤鳞尖啸龙
    .mob Barrens Giraffe
    .mob 敏捷的平原陆行鸟
    .mob 快步斑马
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <16,1
    .xp >20,1
step
    #label Barrens
    #loop
    .goto The Barrens,40.03,15.36,50,0
    .goto The Barrens,39.39,14.65,50,0
    .goto The Barrens,39.62,11.77,50,0
    .goto The Barrens,38.84,11.93,50,0
    .goto The Barrens,38.44,13.21,50,0
    .goto The Barrens,38.48,14.85,50,0
    .goto The Barrens,37.33,16.23,50,0
    .goto The Barrens,38.64,17.49,50,0
    .aura 408828 >>|cRXP_WARN_击杀敌人时，确保至少对其使用过一次|r |T136026:0|t[大地震击] |cRXP_WARN_并造成伤害。重复此操作10次以获得|r |T136116:0|t[灵感迸发] |cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须在能提供经验值的敌人身上完成此操作才能获得层数|r
    .mob 巫翼杀戮者
    .mob Witchwing Windcaller
    .mob 巫翼伏击者
    .mob 巫翼游荡者
    .mob 塞瑞娜·血羽
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <20,1
    .xp >22,1
step
    #completewith next
    .zone Stonetalon Mountains >>前往石爪山脉
    .train 425344,1
    .xp <3,1
step
    #loop
    .goto Stonetalon Mountains,64.17,57.16,50,0
    .goto Stonetalon Mountains,60.55,54.86,50,0
    .goto Stonetalon Mountains,60.95,51.21,50,0
    .goto Stonetalon Mountains,64.40,48.64,50,0
    .goto Stonetalon Mountains,66.18,52.01,50,0
    .goto Stonetalon Mountains,67.20,51.49,50,0
    .goto Stonetalon Mountains,66.83,45.34,50,0
    .goto Stonetalon Mountains,69.89,53.54,50,0
    .goto Stonetalon Mountains,70.84,56.97,50,0
    .aura 408828 >>|cRXP_WARN_击杀敌人时，确保至少对其使用过一次|r |T136026:0|t[大地震击] |cRXP_WARN_并造成伤害。重复此操作10次以获得|r |T136116:0|t[灵感迸发] |cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须在能提供经验值的敌人身上完成此操作才能获得层数|r
    .mob 风险投资公司樵夫
    .mob Venture Co. Deforester
    .mob 风险投资公司操作员
    .mob Venture Co. Light Shredder
    .mob XT:9
    .mob XT:4
    .mob Deepmoss Webspinner
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <22,1
step
    .cast 402265 >>|cRXP_WARN_使用|r |T134918:0|t|cRXP_LOOT_[硫息圣像]|r |cRXP_WARN_来学习|r |T133816:0|t[铭刻手套 - 熔火爆裂]
    .use 206388
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <3,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 熔火爆裂 - 10 级(杜隆塔尔)
#title 熔火爆裂
#next 土之道 - 12级（贫瘠之地）


    --Rune of Molten Blast
step
    +你必须至少达到10级才能获取 |T133816:0|t[铭刻手套 - 熔火爆裂] |cRXP_WARN_因为这是训练|r |T135813:0|t[烈焰震击]|cRXP_WARN_的等级要求|r
    >>在尝试获取 |T133816:0|t[铭刻手套 - 熔火爆裂] |cRXP_WARN_之前，你需要先提升更多等级|r
    >>|cRXP_WARN_或者，你可以在莫高雷获取|r |T133816:0|t[铭刻手套 - 熔火爆裂] |cRXP_WARN_（只需3级以上）|r
    .train 425344,1
    .xp >10,1
step
    #completewith IconS
    #label Durotar1
    .zone Durotar >>前往杜隆塔尔
    .train 425344,1
    .xp <10,1
step
    #completewith next
    #requires Durotar1
    #label Durotar2
    .goto Durotar,53.28,42.57,20,0
    .goto Durotar,54.42,42.59,15 >>前往里面的 |cRXP_FRIENDLY_斯瓦特|r
    .train 425344,1
    .xp <10,1
step
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯瓦特|r 对话
    .train 8050 >>训练 |T135813:0|t[烈焰震击]
    .target 斯瓦特
    .train 425344,1
    .xp <10,1
step
    #completewith next
    #requires Durotar2
    .goto Durotar,58.69,45.53,40 >>朝|cRXP_ENEMY_冰冻龙虾人|r方向前进
    .train 425344,1
    .xp <10,1
step
    #label IconS
    .goto Durotar,58.69,45.53
    >>|cRXP_WARN_在|cRXP_ENEMY_冰冻的龙虾人|r附近或综合聊天频道（在聊天框输入/1）寻找其他萨满祭司、术士或法师|r
    >>|cRXP_WARN_施放|r |T135813:0|t|T135805:0|t[烈焰震击] |cRXP_WARN_在|cRXP_ENEMY_冰冻龙虾人|r身上，叠加一层|r |T134918:0|t|T135805:0|t[加热]|cRXP_WARN_。一次性叠加5层后击杀|cRXP_ENEMY_冰冻龙虾人|r，拾取获得|r |T134918:0|t|T134918:0|t|cRXP_LOOT_[硫息圣像]|r
    >>|cRXP_WARN_或者，你可以|r|cRXP_WARN_独自在莫高雷获取|r |T133816:0|t[铭刻手套 - 熔火爆裂]
    >>|cRXP_WARN_注意：|r |T135813:0|t|T135805:0|t[火舌武器] |cRXP_WARN_不会叠加任何|r |T135805:0|t|T135805:0|t[加热]层数|r
    .collect 206388,1 --Sulfurous Icon (1)
    .mob Frozen Makrura
    .train 425344,1
    .xp <10,1
    .xp >12,1
step
    .goto Durotar,58.69,45.53
    >>|cRXP_WARN_在|cRXP_ENEMY_冰冻的龙虾人|r附近或综合聊天频道（在聊天框输入/1）寻找其他萨满祭司、术士或法师|r
    >>|cRXP_WARN_施放|r |T135813:0|t|T135805:0|t[烈焰震击] |cRXP_WARN_在|cRXP_ENEMY_冰冻龙虾人|r身上，叠加一层|r |T134918:0|t|T135805:0|t[加热]|cRXP_WARN_。一次性叠加5层后击杀|cRXP_ENEMY_冰冻龙虾人|r，拾取获得|r |T134918:0|t|T134918:0|t|cRXP_LOOT_[硫息圣像]|r
    >>|cRXP_WARN_或者，你可以|r|cRXP_WARN_独自在莫高雷获取|r |T133816:0|t[铭刻手套 - 熔火爆裂]
    >>|cRXP_WARN_注意：|r |T135813:0|t|T135824:0|t[火舌武器] |cRXP_WARN_和|r |T135805:0|t|T135824:0|t[火焰新星图腾] |cRXP_WARN_不会叠加|r |T135805:0|t|T135805:0|t[加热]层数|r
    .collect 206388,1 --Sulfurous Icon (1)
    .mob Frozen Makrura
    .train 425344,1
    .xp <12,1
--XX Flametongue and Fire Nova doesn't seem to work
step
    .equip 18,206388 >>|cRXP_WARN_装备|r |T134918:0|t|cRXP_LOOT_[硫息圣像]|r
    .use 206388
    .itemcount 206388,1 --Sulfurous Icon (1)
    .train 425344,1
    .xp <10,1
step
    #loop
    .goto Durotar,56.87,53.05,50,0
    .goto Durotar,56.82,54.69,50,0
    .goto Durotar,58.64,53.86,50,0
    .goto Durotar,59.40,56.58,50,0
    .goto Durotar,58.41,58.17,50,0
    .goto Durotar,56.21,58.51,50,0
    .aura 408828 >>|cRXP_WARN_击杀敌人时，确保至少对其使用过一次|r |T136026:0|t[大地震击] |cRXP_WARN_并造成伤害。重复此操作10次以获得|r |T136116:0|t[灵感迸发] |cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须在能提供经验值的敌人身上完成此操作才能获得层数|r
    .mob 库尔提拉斯水手
    .mob 库尔提拉斯水兵
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <10,1
    .xp >11,1
step
    #completewith Barrens
    .zone The Barrens >>前往贫瘠之地
    .train 425344,1
    .xp <10,1
step
    #loop
    .goto The Barrens,53.94,25.86,50,0
    .goto The Barrens,54.17,25.06,50,0
    .goto The Barrens,54.86,25.43,50,0
    .goto The Barrens,55.62,25.71,50,0
    .goto The Barrens,55.98,26.36,50,0
    .goto The Barrens,55.71,27.21,50,0
    .goto The Barrens,55.44,27.35,50,0
    .goto The Barrens,54.99,26.79,50,0
    .aura 408828 >>|cRXP_WARN_击杀敌人时，确保至少对其使用过一次|r |T136026:0|t[大地震击] |cRXP_WARN_并造成伤害。重复此操作10次以获得|r |T136116:0|t[灵感迸发] |cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须在能提供经验值的敌人身上完成此操作才能获得层数|r
    .mob 钢鬃织棘者
    .mob 钢鬃寻水者
    .mob Razormane Hunter
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <11,1
    .xp >16,1
step
    #loop
    .goto The Barrens,55.97,16.17,50,0
    .goto The Barrens,55.43,16.15,50,0
    .goto The Barrens,54.10,15.51,50,0
    .goto The Barrens,53.10,15.25,50,0
    .goto The Barrens,53.73,13.77,50,0
    .goto The Barrens,55.09,15.00,50,0
    .goto The Barrens,55.62,14.86,50,0
    .aura 408828 >>|cRXP_WARN_击杀敌人时，确保至少对其使用过一次|r |T136026:0|t[大地震击] |cRXP_WARN_并造成伤害。重复此操作10次以获得|r |T136116:0|t[灵感迸发] |cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须在能提供经验值的敌人身上完成此操作才能获得层数|r
    .mob Hecklefang Hyena
    .mob 草原徘徊者
    .mob Savannah Huntress
    .mob 赤鳞尖啸龙
    .mob Barrens Giraffe
    .mob 敏捷的平原陆行鸟
    .mob 快步斑马
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <16,1
    .xp >20,1
step
    #label Barrens
    #loop
    .goto The Barrens,40.03,15.36,50,0
    .goto The Barrens,39.39,14.65,50,0
    .goto The Barrens,39.62,11.77,50,0
    .goto The Barrens,38.84,11.93,50,0
    .goto The Barrens,38.44,13.21,50,0
    .goto The Barrens,38.48,14.85,50,0
    .goto The Barrens,37.33,16.23,50,0
    .goto The Barrens,38.64,17.49,50,0
    .aura 408828 >>|cRXP_WARN_击杀敌人时，确保至少对其使用过一次|r |T136026:0|t[大地震击] |cRXP_WARN_并造成伤害。重复此操作10次以获得|r |T136116:0|t[灵感迸发] |cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须在能提供经验值的敌人身上完成此操作才能获得层数|r
    .mob 巫翼杀戮者
    .mob Witchwing Windcaller
    .mob 巫翼伏击者
    .mob 巫翼游荡者
    .mob 塞瑞娜·血羽
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <20,1
    .xp >22,1
step
    #completewith next
    .zone Stonetalon Mountains >>前往石爪山脉
    .train 425344,1
    .xp <10,1
step
    #loop
    .goto Stonetalon Mountains,64.17,57.16,50,0
    .goto Stonetalon Mountains,60.55,54.86,50,0
    .goto Stonetalon Mountains,60.95,51.21,50,0
    .goto Stonetalon Mountains,64.40,48.64,50,0
    .goto Stonetalon Mountains,66.18,52.01,50,0
    .goto Stonetalon Mountains,67.20,51.49,50,0
    .goto Stonetalon Mountains,66.83,45.34,50,0
    .goto Stonetalon Mountains,69.89,53.54,50,0
    .goto Stonetalon Mountains,70.84,56.97,50,0
    .aura 408828 >>|cRXP_WARN_击杀敌人时，确保至少对其使用过一次|r |T136026:0|t[大地震击] |cRXP_WARN_并造成伤害。重复此操作10次以获得|r |T136116:0|t[灵感迸发] |cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须在能提供经验值的敌人身上完成此操作才能获得层数|r
    .mob 风险投资公司樵夫
    .mob Venture Co. Deforester
    .mob 风险投资公司操作员
    .mob Venture Co. Light Shredder
    .mob XT:9
    .mob XT:4
    .mob Deepmoss Webspinner
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <22,1
step
    .cast 402265 >>|cRXP_WARN_使用|r |T134918:0|t|cRXP_LOOT_[硫息圣像]|r |cRXP_WARN_来学习|r |T133816:0|t[铭刻手套 - 熔火爆裂]
    .use 206388
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <10,1
--XX Cast ID may be wrong, may need to be checked
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 熔岩猛击 - 10级 (莫高雷)
#title 熔岩猛击
#next 先祖指引 - 10级 (莫高雷)


    --Rune of Lava Lash
--XX Worth mentioning "Dual Wield Skill" in the name? Cuts off ingame due to it being 3 lines though
step
    +|cRXP_WARN_你应该至少达到10级才能|r|cRXP_WARN_在莫高雷独自获取|r |T133816:0|t[铭刻手套 - 熔岩猛击] |cRXP_WARN_和|r |T132147:0|t[双武器]
    >>|cRXP_WARN_你必须至少达到4级，因为这是开始任务线的等级要求|r
    >>在尝试获取 |T133816:0|t[铭刻手套 - 熔岩猛击] |cRXP_WARN_和|r |T132147:0|t[双武器] |cRXP_WARN_之前，你需要先提升更多等级|r
    .train 410104,1
    .xp >4,1
step
    +|cRXP_WARN_你应该至少达到10级才能|r|cRXP_WARN_在莫高雷独自获取|r |T133816:0|t[铭刻手套 - 熔岩猛击] |cRXP_WARN_和|r |T132147:0|t[双武器]
    >>在尝试获取 |T133816:0|t[铭刻手套 - 熔岩猛击] |cRXP_WARN_和|r |T132147:0|t[双武器] |cRXP_WARN_之前，你需要先提升更多等级|r
    .train 410104,1
    .xp <4,1
    .xp >10,1
--XX WIP to here
step
    #completewith next
    .zone Thunder Bluff >>前往雷霆崖
    .train 410104,1
    .xp <4,1
step
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴通·阴影图腾|r 对话
    >>|cRXP_WARN_他处于|r |T132320:0|t[潜行] 状态
    .accept 76156 >>接受任务 大地母亲与匿同在
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step
    #completewith next
    .goto Mulgore,61.46,47.21,20 >>进入风险投资公司矿洞
    >>|cRXP_WARN_注意：|r |T132288:0|t|T132288:0|t[风险投资公司伪装] |cRXP_WARN_不起作用|r
    .train 410104,1
    .xp <4,1
step
    #loop
    .goto Mulgore,63.77,43.97,15,0
    .goto Mulgore,62.81,42.81,15,0
    .goto Mulgore,60.38,42.78,15,0
    .goto Mulgore,61.64,41.33,15,0
    .goto Mulgore,63.51,39.29,15,0
    .goto Mulgore,63.39,40.80,15,0
--  .goto Mulgore,66.53,39.47,15,0 --Very deep inside the top of the mine, skipping
    .goto Mulgore,60.99,37.00,15,0
    .goto Mulgore,59.64,36.05,15,0 --Outside
    .goto Mulgore,61.72,35.15,15,0 --Outside
    >>在矿洞内部及外侧打开 |cRXP_PICK_冲击补给品|r。拾取它们的|cRXP_LOOT_爆盐采矿炸弹|r
    >>|cRXP_WARN_如果可能的话，尽量待在洞穴的上层|r
    .complete 76156,1 --Seaforium Mining Charge (5)
    .train 410104,1
    .xp <4,1
--XX Didn't add the bottom of the mine ones
step
    #completewith next
    .goto Mulgore,59.99,35.82
    .subzone 215 >>从风险投资公司矿洞的另一侧出口离开
    .train 410099,1
    .xp <4,1
step
    #completewith next
    .goto Mulgore,60.39,33.54,40 >>去找 |cRXP_FRIENDLY_冒险者的残骸|r
    .train 410099,1
    .xp <4,1
step
    #label IconS
    .goto Mulgore,60.39,33.54
    >>|cRXP_WARN_如果你还没有|r |T134596:0|t|T134596:0|t[铭刻裤子 - 先祖指引]|cRXP_WARN_，现在正是时候去完成它|r
    >>|cRXP_WARN_如果你不想获得这个符文，请跳过此步骤|r
    >>|cRXP_WARN_与站在|cRXP_FRIENDLY_冒险者的遗骸|r旁的萨满、牧师或德鲁伊组队，或在综合频道（在聊天框输入/1）寻求萨满、牧师或德鲁伊的帮助|r
    >>|cRXP_WARN_与地上的|cRXP_FRIENDLY_|r冒险者的残骸|r|cRXP_WARN_对话以开始仪式，或者在加入队伍后，点击其他玩家的|r |T136223:0|t[灵魂仪式]
    >>|cRXP_WARN_完成仪式后，一个|cRXP_FRIENDLY_冒险者之魂|r会出现并死亡。拾取它获得|r |T237571:0|t|T237571:0|t|cRXP_LOOT_[先祖回响]|r
    .collect 210589,1 --Echo of the Ancestors (1)
    .target Adventurer's Remains
    .target Adventurer's Spirit
    .skipgossip
    .train 410099,1
    .xp <4,1
step
    .cast 402265 >>|cRXP_WARN_使用|r |T237571:0|t|T134596:0|t|cRXP_LOOT_[先祖回响]|r |cRXP_WARN_学习|r |T134596:0|t|T134596:0|t[铭刻裤子 - 先祖指引]
    .use 210589
    .itemcount 210589,1 --Echo of the Ancestors (1)
    .train 410099,1
    .xp <4,1
step
    #completewith next
    .zone Thunder Bluff >>前往雷霆崖
    .train 410104,1
    .xp <4,1
--XX Logout skips take you to Bloodhoof, not worth doing
step
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴通·阴影图腾|r 对话
    >>|cRXP_WARN_他处于|r |T132320:0|t[潜行] 状态
    .turnin 76156 >>交任务 大地母亲与匿同在
    .accept 76160 >>接受任务 大地母亲与匿同在
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step
    #completewith next
    .goto Mulgore,53.91,23.45
    .zone Mulgore >>乘坐北侧升降梯下到莫高雷
    .train 410104,1
    .xp <4,1
step
    #loop
    .goto Mulgore,38.80,16.03,10,0
    .goto Mulgore,37.79,10.86,10,0
    .goto Mulgore,38.01,10.21,10,0
    .goto Mulgore,38.55,8.10,10,0
    .goto Mulgore,38.06,7.47,10,0
    .goto Mulgore,37.36,9.99,10,0
    .goto Mulgore,37.31,10.41,10,0
    .goto Mulgore,35.80,11.21,10,0
    .goto Mulgore,36.20,11.41,10,0
    .goto Mulgore,36.21,12.60,10,0
    .goto Mulgore,36.55,12.84,10,0
    .goto Mulgore,36.65,13.26,10,0
    .goto Mulgore,37.18,12.36,10,0
    >>拾取地上的|cRXP_LOOT_风怒锥|r
    .collect 206170,8,76160,1 --Windfury Cone (8)
    .train 410104,1
    .xp <4,1
step
    >>使用|T133748:0|t|T133213:0|t[研钵和捣杵]制作|T133213:0|t|T133213:0|t[松树药膏]
    .complete 76160,1 --Pine Salve (1)
    .use 206176
    .train 410104,1
    .xp <4,1
step
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴通·阴影图腾|r 对话
    >>|cRXP_WARN_他处于|r |T132320:0|t[潜行] 状态
    .turnin 76160 >>交任务 大地母亲与匿同在
    .accept 76240 >>接受任务 大地母亲与匿同在
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step
    #ah
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拍卖师斯塔比|r 对话
    >>|cRXP_BUY_从拍卖行购买1条|r |T133894:0|t|T133894:0|t[新鲜的美味小鱼] |cRXP_BUY_|r
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .target Auctioneer Stampi
    .train 410104,1
    .xp <4,1
step
    #ssf
    #completewith Sewa
    .goto Thunder Bluff,46.13,51.59,12,0
    .goto Thunder Bluff,47.09,50.07,4,0
    .goto Thunder Bluff,46.49,49.16,4,0
    .goto Thunder Bluff,46.05,49.74,4,0
    .goto Thunder Bluff,46.34,50.50,4,0
    .goto Thunder Bluff,55.78,47.02,15 >>前往 |cRXP_FRIENDLY_苏瓦·迷雾行者|r
    .train 410104,1
    .xp <4,1
step
    #ssf
    #sticky
    #label Kah
    .goto Thunder Bluff,56.13,46.39,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_卡尔·迷雾行者|r 对话
    .train 7734 >>训练 |T136245:0|t[钓鱼]
    .target Kah Mistrunner
    .train 410104,1
    .xp <4,1
step
    #ssf
    #label Sewa
    .goto Thunder Bluff,55.78,47.02,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_苏瓦·迷雾行者|r 对话
    >>|cRXP_BUY_从她那里购买|r |T132932:0|t[鱼竿] |cRXP_BUY_和|r |T134335:0|t[闪光的小珠] |cRXP_BUY_|r
    .collect 6256,1 --Fishing Pole (1)
    .collect 6529,1 --Shiny Bauble (1)
    .target Sewa Mistrunner
    .train 410104,1
    .xp <4,1
step
    #ssf
    #completewith Fish
    #requires Kah
    #label Pole
    .equip 16,6256 >>|cRXP_WARN_装备|r |T132932:0|t[鱼竿]
    .use 6256
    .train 410104,1
    .xp <4,1
step
    #ssf
    #completewith Fish
    #requires Pole
    .aura 8087 >>|cRXP_WARN_将|r |T134335:0|t[闪光的小珠] |cRXP_WARN_装在你的|r |T132932:0|t[鱼竿]
    .use 6529
    .train 410104,1
    .xp <4,1
step
    #ssf
    #label Fish
    #requires Kah
    .goto Thunder Bluff,40.42,58.55
    >>在池塘里钓鱼，直到获得一条|T133894:0|t[|cRXP_LOOT_新鲜的美味小鱼|r]
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .train 410104,1
    .xp <4,1
step
    >>使用|T132147:0|t[一套匕首]制作|T134007:0|t[鱼块]
    .complete 76240,1 --Fish Chunks (1)
    .use 206344
    .train 410104,1
    .xp <4,1
step
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴通·阴影图腾|r 对话
    >>|cRXP_WARN_他处于|r |T132320:0|t[潜行] 状态
    .turnin 76240 >>交任务 大地母亲与匿同在
-- .train 410104 >>|cRXP_WARN_You will train|r |T236289:0|t[Lava Lash] |cRXP_WARN_and|r |T132147:0|t[Dual Wield] |cRXP_WARN_upon turnin|r
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 水之护盾 - 20 级(贫瘠之地)
#title 水盾
#next 高等幽魂之狼 - 25级 (石爪山脉)


step
    +你必须至少达到20级才能获取 |T133816:0|t[铭刻手套 - 水之护盾] |cRXP_WARN_因为这是训练|r |T135849:0|t[冰霜震击]|cRXP_WARN_的等级要求|r
    >>在尝试获取 |T133816:0|t[铭刻手套 - 水之护盾] |cRXP_WARN_之前，你需要先提升更多等级|r
    .train 410097,1
    .xp >20,1
step
    .zone Orgrimmar >>前往奥格瑞玛或雷霆崖
    .zoneskip Thunder Bluff
    .train 8050,1
    .xp <20,1
step
    .zone Orgrimmar >>前往奥格瑞玛或雷霆崖
    .zoneskip Thunder Bluff
    .train 8056,1
    .xp <20,1
step
    #completewith OrgTrain
    .goto Orgrimmar,40.31,37.01,15,0
    .goto Orgrimmar,38.81,36.37,15 >>前去找 |cRXP_FRIENDLY_卡德里斯|r
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德里斯|r 对话
    .train 8050 >>训练 |T135813:0|t[烈焰震击]
    .train 8056 >>训练|T135849:0|t[冰霜震击]
    .target 卡德里斯
    .zoneskip Thunder Bluff
    .train 8050,1
    .train 8056,1
    .xp <20,1
step
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德里斯|r 对话
    .train 8050 >>训练 |T135813:0|t[烈焰震击]
    .target 卡德里斯
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    #label OrgTrain
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德里斯|r 对话
    .train 8056 >>训练|T135849:0|t[冰霜震击]
    .target 卡德里斯
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    #ah
    .goto Orgrimmar,50.67,70.39,0
    .goto Orgrimmar,53.74,64.60,15,0
    .goto Orgrimmar,55.54,64.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师瓦巴恩|r对话
    >>|cRXP_BUY_从拍卖行购买一个|r |T134237:0|t[科卡尔宝箱钥匙] |cRXP_BUY_|r
    >>|cRXP_WARN_这会在之后为你节省几分钟|r
    .collect 5020,1 --Kolkar Booty Key (1)
    .target Auctioneer Wabang
    .zoneskip Orgrimmar,1
    .train 410097,1
    .xp <20,1
step
    #completewith TBTrain
    .goto Thunder Bluff,22.82,21.11,15 >>前去找 |cRXP_FRIENDLY_希恩|r
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希恩|r 对话
    .train 8050 >>训练 |T135813:0|t[烈焰震击]
    .train 8056 >>学习 |T135849:0|t[冰霜震击]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 8050,1
    .train 8056,1
    .xp <20,1
step
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希恩|r 对话
    .train 8050 >>训练 |T135813:0|t[烈焰震击]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    #label TBTrain
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希恩|r 对话
    .train 8056 >>学习 |T135849:0|t[冰霜震击]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    #ah
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拍卖师斯塔比|r 对话
    >>|cRXP_BUY_从拍卖行购买一个|r |T134237:0|t[科卡尔宝箱钥匙] |cRXP_BUY_|r
    >>|cRXP_WARN_这会在之后为你节省几分钟|r
    .collect 5020,1 --Kolkar Booty Key (1)
    .target Auctioneer Stampi
    .zoneskip Thunder Bluff,1
    .train 410097,1
    .xp <20,1
--XX easier to farm it IF the user is not already there to train
step
    #completewith next
    .zone The Barrens >>前往贫瘠之地
    .train 410097,1
    .xp <20,1
step
    #loop
    .goto The Barrens,45.78,25.52,0
    .goto The Barrens,43.86,21.38,0
    .goto The Barrens,43.56,26.30,0
    .goto The Barrens,45.78,25.52,50,0
    .goto The Barrens,46.54,22.99,50,0
    .goto The Barrens,45.03,20.09,50,0
    .goto The Barrens,43.86,21.38,50,0
    .goto The Barrens,43.49,23.57,50,0
    .goto The Barrens,43.56,26.30,50,0
    >>击杀|cRXP_ENEMY_科卡尔牧民|r 和 |cRXP_ENEMY_科卡尔召雷师|r。拾取它们的|T134237:0|t[科卡尔宝箱钥匙]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .train 410097,1
    .xp <20,1
step
    .goto The Barrens,43.02,23.52,-1
--  .goto The Barrens,52.73,41.84,-1
--  .goto The Barrens,44.33,37.66,-1
    >>打开地上的|cRXP_PICK_科卡尔的宝藏|r，从中拾取|T135832:0|t|T135832:0|t|cRXP_LOOT_[风暴圣像]|r
    .collect 206382,1 --Tempest Icon (1)
    .itemcount 5020,1 --Kolkar Booty Key (1)
    .train 410097,1
    .xp <20,1
step
    .equip 18,206382 >>|cRXP_WARN_装备这个|r |T135832:0|t|cRXP_LOOT_[风暴圣像]|r
    .use 206382
    .itemcount 206382,1 --Tempest Icon (1)
    .train 410097,1
    .xp <20,1
step
    #loop
    .goto The Barrens,40.03,15.36,50,0
    .goto The Barrens,39.39,14.65,50,0
    .goto The Barrens,39.62,11.77,50,0
    .goto The Barrens,38.84,11.93,50,0
    .goto The Barrens,38.44,13.21,50,0
    .goto The Barrens,38.48,14.85,50,0
    .goto The Barrens,37.33,16.23,50,0
    .goto The Barrens,38.64,17.49,50,0
    .aura 408828 >>|cRXP_WARN_击杀敌人前，至少对其使用一次自然法术（|r|T136026:0|t[大地震击]|cRXP_WARN_）、冰霜法术（|r|T135849:0|t[冰霜震击]|cRXP_WARN_）和火焰法术（|r|T135813:0|t[火焰震击]|cRXP_WARN_）造成伤害，完成10次以获得|r |T136116:0|t[激励] |cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须在能提供经验值的敌人身上完成此操作才能获得层数|r
    .mob 巫翼杀戮者
    .mob Witchwing Windcaller
    .mob 巫翼伏击者
    .mob 巫翼游荡者
    .mob 塞瑞娜·血羽
    .itemStat 18,QUALITY,2
    .train 410097,1
    .xp <20,1
    .xp >22,1
step
    #completewith next
    .zone Stonetalon Mountains >>前往石爪山脉
    .train 410097,1
    .xp <22,1
step
    #loop
    .goto Stonetalon Mountains,64.17,57.16,50,0
    .goto Stonetalon Mountains,60.55,54.86,50,0
    .goto Stonetalon Mountains,60.95,51.21,50,0
    .goto Stonetalon Mountains,64.40,48.64,50,0
    .goto Stonetalon Mountains,66.18,52.01,50,0
    .goto Stonetalon Mountains,67.20,51.49,50,0
    .goto Stonetalon Mountains,66.83,45.34,50,0
    .goto Stonetalon Mountains,69.89,53.54,50,0
    .goto Stonetalon Mountains,70.84,56.97,50,0
    .aura 408828 >>|cRXP_WARN_击杀敌人前，至少对其使用一次自然法术（|r|T136026:0|t[大地震击]|cRXP_WARN_）、冰霜法术（|r|T135849:0|t[冰霜震击]|cRXP_WARN_）和火焰法术（|r|T135813:0|t[火焰震击]|cRXP_WARN_）造成伤害，完成10次以获得|r |T136116:0|t[激励] |cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须在能提供经验值的敌人身上完成此操作才能获得层数|r
    .mob 风险投资公司樵夫
    .mob Venture Co. Deforester
    .mob 风险投资公司操作员
    .mob Venture Co. Light Shredder
    .mob XT:9
    .mob XT:4
    .mob Deepmoss Webspinner
    .itemStat 18,QUALITY,2
    .train 410097,1
    .xp <22,1
step
    .cast 402265 >>|cRXP_WARN_使用|r |T135832:0|t|cRXP_LOOT_[风暴圣像]|r |cRXP_WARN_来学习|r |T133816:0|t[铭刻手套 - 水之护盾]
    .use 206382
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410097,1
    .xp <20,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 水盾 - 20级 (银松森林)
#title 水盾
#next 高等幽魂之狼 - 25级 (石爪山脉)

step
    +你必须至少达到20级才能获取 |T133816:0|t[铭刻手套 - 水之护盾] |cRXP_WARN_因为这是训练|r |T135849:0|t[冰霜震击]|cRXP_WARN_的等级要求|r
    >>在尝试获取 |T133816:0|t[铭刻手套 - 水之护盾] |cRXP_WARN_之前，你需要先提升更多等级|r
    .train 410097,1
    .xp >20,1
step
    .zone Orgrimmar >>前往奥格瑞玛或雷霆崖
    .zoneskip Thunder Bluff
    .train 8050,1
    .xp <20,1
step
    .zone Orgrimmar >>前往奥格瑞玛或雷霆崖
    .zoneskip Thunder Bluff
    .train 8056,1
    .xp <20,1
step
    #completewith OrgTrain
    .goto Orgrimmar,40.31,37.01,15,0
    .goto Orgrimmar,38.81,36.37,15 >>前去找 |cRXP_FRIENDLY_卡德里斯|r
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德里斯|r 对话
    .train 8050 >>训练 |T135813:0|t[烈焰震击]
    .train 8056 >>学习 |T135849:0|t[冰霜震击]
    .target 卡德里斯
    .zoneskip Thunder Bluff
    .train 8050,1
    .train 8056,1
    .xp <20,1
step
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德里斯|r 对话
    .train 8050 >>训练 |T135813:0|t[烈焰震击]
    .target 卡德里斯
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    #label OrgTrain
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德里斯|r 对话
    .train 8056 >>训练|T135849:0|t[冰霜震击]
    .target 卡德里斯
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    #completewith TBTrain
    .goto Thunder Bluff,22.82,21.11,15 >>前去找 |cRXP_FRIENDLY_希恩|r
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希恩|r 对话
    .train 8050 >>训练 |T135813:0|t[烈焰震击]
    .train 8056 >>训练|T135849:0|t[冰霜震击]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 8050,1
    .train 8056,1
    .xp <20,1
step
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希恩|r 对话
    .train 8050 >>训练 |T135813:0|t[烈焰震击]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    #label TBTrain
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希恩|r 对话
    .train 8056 >>训练|T135849:0|t[冰霜震击]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    #completewith Grimson
    #label Grimson1
    .zone Silverpine Forest >>前往银松森林
    .train 410097,1
    .xp <20,1
step
    #completewith Grimson
    #requires Grimson1
    #label Grimson2
    .goto Silverpine Forest,56.65,45.97,15 >>进入埃利姆矿洞
    .train 410097,1
    .xp <20,1
step
    #completewith Grimson
    #requires Grimson2
    .goto Silverpine Forest,57.28,45.42,10,0
    .goto Silverpine Forest,57.66,44.82,10,0
    .goto Silverpine Forest,58.59,44.85,30 >>前往|cRXP_ENEMY_白毛狼人格瑞姆森|r
    .train 410097,1
    .xp <20,1
step
    #label Grimson
    .goto Silverpine Forest,58.59,44.85
    >>在里面杀死 |cRXP_ENEMY_白毛狼人格瑞姆森|r。拾取他的 |T135832:0|t|cRXP_LOOT_[风暴圣像]|r
    .collect 206382,1 --Tempest Icon (1)
    .mob Grimson the Pale
    .train 410097,1
    .xp <20,1
step
    .equip 18,206382 >>|cRXP_WARN_装备这个|r |T135832:0|t|cRXP_LOOT_[风暴圣像]|r
    .use 206382
    .itemcount 206382,1 --Tempest Icon (1)
    .train 410097,1
    .xp <20,1
step
    #loop
    .goto Silverpine Forest,47.68,86.24,50,0
    .goto Silverpine Forest,45.81,86.37,50,0
    .goto Silverpine Forest,44.26,84.37,50,0
    .aura 408828 >>|cRXP_WARN_击杀敌人前，至少对其使用一次自然法术（|r|T136026:0|t[大地震击]|cRXP_WARN_）、冰霜法术（|r|T135849:0|t[冰霜震击]|cRXP_WARN_）和火焰法术（|r|T135813:0|t[火焰震击]|cRXP_WARN_）造成伤害，完成10次以获得|r |T136116:0|t[激励] |cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须在能提供经验值的敌人身上完成此操作才能获得层数|r
    .mob Valdred Moray
    .mob Dalin Forgewright
    .mob Haggard Refugee
    .mob Sickly Refugee
    .itemStat 18,QUALITY,2
    .train 410097,1
    .xp <20,1
    .xp >22,1
step
    .cast 402265 >>|cRXP_WARN_使用|r |T135832:0|t|cRXP_LOOT_[风暴圣像]|r |cRXP_WARN_来学习|r |T133816:0|t[铭刻手套 - 水之护盾]
    .use 206382
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410097,1
    .xp <20,1
step
    #completewith next
    >>|cRXP_WARN_如果你还没有|r |T133816:0|t[铭刻手套 - 熔岩爆裂] |cRXP_WARN_，建议现在去获取。如果你不想做，可以跳过此步骤|r
    .train 410095,1
    .xp <25,1
step
    #completewith next
    .zone Hillsbrad Foothills >>前往希尔斯布莱德丘陵
    .train 410095,1
    .xp <25,1
step
    #loop
    .goto Hillsbrad Foothills,63.73,59.26,40,0
    .goto Hillsbrad Foothills,65.49,60.30,40,0
    .goto Hillsbrad Foothills,66.30,61.11,40,0
    .goto Hillsbrad Foothills,63.61,62.04,40,0
    .goto Hillsbrad Foothills,63.21,61.04,40,0
    .goto Hillsbrad Foothills,62.56,63.55,40,0
    .goto Hillsbrad Foothills,62.98,63.70,40,0
    >>击杀|cRXP_ENEMY_泥嘴萨满祭司|r。从它们身上拾取 |T134920:0|t|cRXP_LOOT_[卡亚圣像]|r
    .collect 206387,1 --Kajaric Icon (1)
    .mob Mudsnout Shaman
    .train 410095,1
    .xp <25,1
step
    .equip 18,206387 >>|cRXP_WARN_装备|r |T134920:0|t|cRXP_LOOT_[卡亚圣像]|r
    .use 206387
    .itemcount 206387,1 --Kajaric Icon (1)
    .train 410095,1
    .xp <25,1
step
    #completewith next
    .zone Orgrimmar >>前往奥格瑞玛
    .train 410095,1
    .xp <25,1
step
    .goto Orgrimmar,52.77,48.97
    .subzone 2437 >>进入暗影裂口内的怒焰裂谷
    .itemStat 18,QUALITY,2
    .train 410095,1
    .xp <25,1
step
    >>|cRXP_WARN_紧贴右侧墙壁前进。走下斜坡后（就在第5只怪后面），走进右侧的浅岩浆池中|r
    >>|cRXP_WARN_来自|r |T135805:0|t|T134920:0|t[熔岩] |cRXP_WARN_的伤害降低至91点，同时|r |T134920:0|t|T134920:0|t|cRXP_LOOT_[卡亚圣像]|r |cRXP_WARN_装备时生效|r
    .aura 408828 >>|cRXP_WARN_受到来自 |T135805:0|t[熔岩] |cRXP_WARN_的伤害5次|r
    .itemStat 18,QUALITY,2
    .train 410095,1
    .xp <25,1
step
    >>|cRXP_WARN_离开|r |T135805:0|t[熔岩]
    .cast 402265 >>|cRXP_WARN_使用|r |T134920:0|t|cRXP_LOOT_[卡亚圣像]|r |cRXP_WARN_来学习|r |T133816:0|t[铭刻手套 - 熔岩爆裂]
    .use 206387
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410095,1
    .xp <25,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 熔岩爆裂 - 25级 (希尔斯布莱德丘陵)
#title 熔岩爆裂
#next 大地之盾 - 25级（艾泽拉斯）


step
    +|cRXP_WARN_你应该至少达到25级才能|r|cRXP_WARN_在希尔斯布莱德独自获得|r |T133816:0|t[铭刻手套 - 熔岩爆裂]
    .train 410095,1
    .xp >25,1
step
    #completewith next
    .zone Hillsbrad Foothills >>前往希尔斯布莱德丘陵
    .train 410095,1
step
    #loop
    .goto Hillsbrad Foothills,63.73,59.26,40,0
    .goto Hillsbrad Foothills,65.49,60.30,40,0
    .goto Hillsbrad Foothills,66.30,61.11,40,0
    .goto Hillsbrad Foothills,63.61,62.04,40,0
    .goto Hillsbrad Foothills,63.21,61.04,40,0
    .goto Hillsbrad Foothills,62.56,63.55,40,0
    .goto Hillsbrad Foothills,62.98,63.70,40,0
    >>击杀|cRXP_ENEMY_泥嘴萨满祭司|r。从它们身上拾取 |T134920:0|t|cRXP_LOOT_[卡亚圣像]|r
    .collect 206387,1 --Kajaric Icon (1)
    .mob Mudsnout Shaman
    .train 410095,1
step
    .equip 18,206387 >>|cRXP_WARN_装备|r |T134920:0|t|cRXP_LOOT_[卡亚圣像]|r
    .use 206387
    .itemcount 206387,1 --Kajaric Icon (1)
    .train 410095,1
step
    #completewith next
    .zone Orgrimmar >>前往奥格瑞玛
    .train 410095,1
step
    .goto Orgrimmar,52.77,48.97
    .subzone 2437 >>进入暗影裂口内的怒焰裂谷
    .itemStat 18,QUALITY,2
    .train 410095,1
step
    >>|cRXP_WARN_紧贴右侧墙壁前进。走下斜坡后（就在第5只怪后面），走进右侧的浅岩浆池中|r
    >>|cRXP_WARN_来自|r |T135805:0|t|T134920:0|t[熔岩] |cRXP_WARN_的伤害降低至91点，同时|r |T134920:0|t|T134920:0|t|cRXP_LOOT_[卡亚圣像]|r |cRXP_WARN_装备时生效|r
    .aura 408828 >>|cRXP_WARN_受到来自 |T135805:0|t[熔岩] |cRXP_WARN_的伤害5次|r
    .itemStat 18,QUALITY,2
    .train 410095,1
step
    >>|cRXP_WARN_离开|r |T135805:0|t[熔岩]
    .cast 402265 >>|cRXP_WARN_使用|r |T134920:0|t|cRXP_LOOT_[卡亚圣像]|r |cRXP_WARN_来学习|r |T133816:0|t[铭刻手套 - 熔岩爆裂]
    .use 206387
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410095,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 过载 - 3 级(杜隆塔尔)
#title 过载
#next 盾牌掌握 - 6 级(杜隆塔尔)

    --Rune of Overload
step
    +|cRXP_WARN_你必须至少达到3级才能获取|r |T133815:0|t|T134918:0|t[铭刻胸甲 - 过载] |cRXP_WARN_，因为这是装备|r |T134918:0|t|T134918:0|t|cRXP_LOOT_[二价圣像]|r的等级要求
    >>|cRXP_WARN_你需要先提升等级，才能尝试获取|r |T133815:0|t|T133815:0|t[铭刻胸甲 - 过载]
    .train 410094,1
    .xp >3,1
step
    #completewith IconS
    .zone Durotar >>前往杜隆塔尔
    .train 410094,1
    .xp <3,1
step << !Tauren skip
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_史克里克|r 对话
    .accept 77587 >>接受任务 力量神像 << Troll Shaman
    .accept 77585 >>接受任务 力量神像 << Orc Shaman
    .target 史克里克
    .train 410094,1
    .xp <3,1
step
    #label IconS
#loop
	.line Durotar,43.26,58.28,42.81,58.41,41.90,58.35,41.97,59.20,41.36,60.35,40.66,61.27,40.07,61.35,39.42,61.29,39.46,62.17,39.55,63.10,40.13,64.04,40.84,64.06,40.74,65.86,39.93,66.03,40.04,66.99,40.09,67.66,40.13,68.50,40.72,68.55,41.30,67.84,41.37,66.72,41.89,66.05,41.27,65.71,41.36,64.07,41.33,63.12,41.35,61.98,41.49,61.25,41.90,60.24,42.51,59.34,43.08,59.62,43.91,59.33,45.15,59.46,45.81,59.30,45.85,60.34,46.46,61.11,47.09,62.24,47.08,63.15,47.14,64.08,47.58,64.04,47.08,63.15,47.09,62.24,46.90,61.15,46.98,60.18,47.07,59.34,46.47,58.28,45.81,59.30,45.15,59.46,43.91,59.33,43.26,58.28
	.goto Durotar,43.26,58.28,25,0
	.goto Durotar,42.81,58.41,25,0
	.goto Durotar,41.90,58.35,25,0
	.goto Durotar,41.97,59.20,25,0
	.goto Durotar,41.36,60.35,25,0
	.goto Durotar,40.66,61.27,25,0
	.goto Durotar,40.07,61.35,25,0
	.goto Durotar,39.42,61.29,25,0
	.goto Durotar,39.46,62.17,25,0
	.goto Durotar,39.55,63.10,25,0
	.goto Durotar,40.13,64.04,25,0
	.goto Durotar,40.84,64.06,25,0
	.goto Durotar,40.74,65.86,25,0
	.goto Durotar,39.93,66.03,25,0
	.goto Durotar,40.04,66.99,25,0
	.goto Durotar,40.09,67.66,25,0
	.goto Durotar,40.13,68.50,25,0
	.goto Durotar,40.72,68.55,25,0
	.goto Durotar,41.30,67.84,25,0
	.goto Durotar,41.37,66.72,25,0
	.goto Durotar,41.89,66.05,25,0
	.goto Durotar,41.27,65.71,25,0
	.goto Durotar,41.36,64.07,25,0
	.goto Durotar,41.33,63.12,25,0
	.goto Durotar,41.35,61.98,25,0
	.goto Durotar,41.49,61.25,25,0
	.goto Durotar,41.90,60.24,25,0
	.goto Durotar,42.51,59.34,25,0
	.goto Durotar,43.08,59.62,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.85,60.34,25,0
	.goto Durotar,46.46,61.11,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.14,64.08,25,0
	.goto Durotar,47.58,64.04,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,46.90,61.15,25,0
	.goto Durotar,46.98,60.18,25,0
	.goto Durotar,47.07,59.34,25,0
	.goto Durotar,46.47,58.28,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,43.26,58.28,25,0
    >>击杀|cRXP_ENEMY_蝎子工人|r，并搜刮它们获取|T134918:0|t|T134918:0|t|cRXP_LOOT_[二价圣像]|r
    .collect 206381,1 --Dyadic Icon (1)
    .mob 蝎子
    .train 410094,1
    .xp <3,1
step
    .equip 18,206381 >>|cRXP_WARN_装备|r |T134918:0|t|cRXP_LOOT_[二价圣像]|r
    .use 206381
    .itemcount 206381,1 --Dyadic Icon (1)
    .train 410094,1
    .xp <3,1
step
#loop
	.line Durotar,43.26,58.28,42.81,58.41,41.90,58.35,41.97,59.20,41.36,60.35,40.66,61.27,40.07,61.35,39.42,61.29,39.46,62.17,39.55,63.10,40.13,64.04,40.84,64.06,40.74,65.86,39.93,66.03,40.04,66.99,40.09,67.66,40.13,68.50,40.72,68.55,41.30,67.84,41.37,66.72,41.89,66.05,41.27,65.71,41.36,64.07,41.33,63.12,41.35,61.98,41.49,61.25,41.90,60.24,42.51,59.34,43.08,59.62,43.91,59.33,45.15,59.46,45.81,59.30,45.85,60.34,46.46,61.11,47.09,62.24,47.08,63.15,47.14,64.08,47.58,64.04,47.08,63.15,47.09,62.24,46.90,61.15,46.98,60.18,47.07,59.34,46.47,58.28,45.81,59.30,45.15,59.46,43.91,59.33,43.26,58.28
	.goto Durotar,43.26,58.28,25,0
	.goto Durotar,42.81,58.41,25,0
	.goto Durotar,41.90,58.35,25,0
	.goto Durotar,41.97,59.20,25,0
	.goto Durotar,41.36,60.35,25,0
	.goto Durotar,40.66,61.27,25,0
	.goto Durotar,40.07,61.35,25,0
	.goto Durotar,39.42,61.29,25,0
	.goto Durotar,39.46,62.17,25,0
	.goto Durotar,39.55,63.10,25,0
	.goto Durotar,40.13,64.04,25,0
	.goto Durotar,40.84,64.06,25,0
	.goto Durotar,40.74,65.86,25,0
	.goto Durotar,39.93,66.03,25,0
	.goto Durotar,40.04,66.99,25,0
	.goto Durotar,40.09,67.66,25,0
	.goto Durotar,40.13,68.50,25,0
	.goto Durotar,40.72,68.55,25,0
	.goto Durotar,41.30,67.84,25,0
	.goto Durotar,41.37,66.72,25,0
	.goto Durotar,41.89,66.05,25,0
	.goto Durotar,41.27,65.71,25,0
	.goto Durotar,41.36,64.07,25,0
	.goto Durotar,41.33,63.12,25,0
	.goto Durotar,41.35,61.98,25,0
	.goto Durotar,41.49,61.25,25,0
	.goto Durotar,41.90,60.24,25,0
	.goto Durotar,42.51,59.34,25,0
	.goto Durotar,43.08,59.62,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.85,60.34,25,0
	.goto Durotar,46.46,61.11,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.14,64.08,25,0
	.goto Durotar,47.58,64.04,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,46.90,61.15,25,0
	.goto Durotar,46.98,60.18,25,0
	.goto Durotar,47.07,59.34,25,0
	.goto Durotar,46.47,58.28,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,43.26,58.28,25,0
    .aura 408828 >>|cRXP_WARN_让|cRXP_ENEMY_蝎子工人|r对你施放|r |T136016:0|t|T136116:0|t[弱效毒药] |cRXP_WARN_，然后承受其伤害10次，以获得|r |T136116:0|t|T136116:0|t[灵感勃发] |cRXP_WARN_buff|r
    .mob 蝎子
    .itemStat 18,QUALITY,2
    .train 410094,1
    .xp <3,1
step
    .cast 402265 >>|cRXP_WARN_使用|r |T134918:0|t|T133815:0|t|cRXP_LOOT_[二价圣像]|r |cRXP_WARN_学习|r |T133815:0|t|T133815:0|t[雕文：胸部附魔 - 过载]
    .use 206381
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410094,1
    .xp <3,1
step << !Tauren skip
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_史克里克|r 对话
    .turnin 77587 >>交任务 力量神像 << Troll Shaman
    .turnin 77585 >>交任务 力量神像 << Orc Shaman
    .target 史克里克
    .xp <3,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 过载 - 3级 (莫高雷)
#title 过载
#next 盾牌掌握 - 6级 (莫高雷)


    --Rune of Overload
step
    +|cRXP_WARN_你必须至少达到3级才能获取|r |T133815:0|t|T134918:0|t[铭刻胸甲 - 过载] |cRXP_WARN_，因为这是装备|r |T134918:0|t|T134918:0|t|cRXP_LOOT_[二价圣像]|r的等级要求
    >>|cRXP_WARN_你需要先提升等级，才能尝试获取|r |T133815:0|t|T133815:0|t[铭刻胸甲 - 过载]
    .train 410094,1
    .xp >3,1
step
    #completewith IconS
    .zone Mulgore >>前往莫高雷
    .train 410094,1
    .xp <3,1
step << Tauren skip
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米拉|r 对话
    .accept 77652 >>接受任务 力量神像
    .target 米拉·晨行者
    .xp <3,1
step
    #label IconS
    .goto Mulgore,63.74,81.18,50,0
    .goto Mulgore,63.86,79.97,50,0
    .goto Mulgore,65.00,78.60,50,0
    .goto Mulgore,66.05,77.83,50,0
    .goto Mulgore,65.93,77.10,50,0
    .goto Mulgore,63.57,76.25,50,0
    .goto Mulgore,63.86,80.14
    >>击杀|cRXP_ENEMY_鬃背萨满祭司|r。从他们身上拾取|T134918:0|t|T134918:0|t[|cRXP_FRIENDLY_二价圣像|r]
    .collect 206381,1 --Dyadic Icon (1)
    .mob 刺背萨满祭司
    .train 410094,1
    .xp <3,1
step
    .equip 18,206381 >>|cRXP_WARN_装备|r |T134918:0|t|cRXP_LOOT_[二价圣像]|r
    .use 206381
    .itemcount 206381,1 --Dyadic Icon (1)
    .train 410094,1
    .xp <3,1
step
    .goto Mulgore,63.74,81.18,50,0
    .goto Mulgore,63.86,79.97,50,0
    .goto Mulgore,65.00,78.60,50,0
    .goto Mulgore,66.05,77.83,50,0
    .goto Mulgore,65.93,77.10,50,0
    .goto Mulgore,63.57,76.25,50,0
    .goto Mulgore,63.86,80.14
    .aura 408828 >>|cRXP_WARN_让|cRXP_ENEMY_鬃毛萨满|r对|r你|T136048:0|t施放|T136116:0|t[闪电箭]，|cRXP_WARN_承受其伤害10次，以获得|r |T136116:0|t|T136116:0|t[灵感勃发] |cRXP_WARN_buff|r
    .mob 刺背萨满祭司
    .itemStat 18,QUALITY,2
    .train 410094,1
    .xp <3,1
--XX Loop needs to be added
step
    .cast 402265 >>|cRXP_WARN_使用|r |T134918:0|t|T133815:0|t|cRXP_LOOT_[二价圣像]|r |cRXP_WARN_学习|r |T133815:0|t|T133815:0|t[雕文：胸部附魔 - 过载]
    .use 206381
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410094,1
    .xp <3,1
step << Tauren skip
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米拉|r 对话
    .turnin 77652 >>交任务 力量神像
    .target 米拉·晨行者
    .xp <3,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 盾牌掌握 - 6 级(杜隆塔尔)
#title 盾牌掌握
#next 熔火爆裂 - 10 级(杜隆塔尔)

step
    +|cRXP_WARN_你至少需要达到6级，才能在杜隆塔尔独自获取|r |T133815:0|t|T133815:0|t[铭刻胸甲 - 盾牌精通] |cRXP_WARN_。|r
    >>|cRXP_WARN_你的角色必须至少达到3级，因为这是装备|r |T134918:0|t|T134918:0|t|cRXP_LOOT_[镀电圣像]|r的等级要求
    >>|cRXP_WARN_你需要先提升等级，才能尝试获取|r |T133815:0|t|T133815:0|t[铭刻胸甲 - 盾牌精通]
    .train 410098,1
    .xp >3,1
step
    +|cRXP_WARN_你至少需要达到6级，才能在杜隆塔尔独自获取|r |T133815:0|t|T133815:0|t[铭刻胸甲 - 盾牌精通] |cRXP_WARN_。|r
    .train 410098,1
    .xp <3,1
    .xp >6,1
step
    #completewith IconS
    .zone Durotar >>前往杜隆塔尔
    .train 410098,1
    .xp <3,1
step
    #label IconS
    .goto Durotar,52.06,62.49,0
    .goto Durotar,39.43,50.07,0
    .goto Durotar,50.91,51.61,0
    .goto Durotar,56.50,46.68,0
    .goto Durotar,57.03,46.66,0
    .goto Durotar,52.06,62.49,50,0
    .goto Durotar,39.43,50.07,50,0
    .goto Durotar,50.91,51.61,50,0
    .goto Durotar,56.50,46.68,50,0
    .goto Durotar,57.03,46.66,50,0
    .goto Durotar,59.00,58.00
    >>点击|cRXP_PICK_镀电圣像|r图腾。拾取以获得|T134918:0|t|T134918:0|t|cRXP_LOOT_[镀电圣像]|r
    >>|cRXP_WARN_镀电圣像|cRXP_PICK_至少有15个|r刷新点，同时至少存在2个。被拾取后不到2分钟就会消失|r
    >>|cRXP_WARN_如果你在1000码范围内，它每5分钟会发出|r |T136051:0|t|T136051:0|t[闪电之盾] |cRXP_WARN_的声音；如果你在300码范围内且面朝它，还会在其位置显示一道闪电打击|r
    .collect 206386,1 --Galvanic Icon (1)
    .train 410098,1
    .xp <3,1
--XX Need to check for more locations
step
    .equip 18,206386 >>|cRXP_WARN_装备|r |T134918:0|t|T134918:0|t|cRXP_LOOT_[镀电圣像]|r
    .use 206386
    .itemcount 206386,1 --Galvanic Icon (1)
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto Durotar,56.87,53.05,50,0
    .goto Durotar,56.82,54.69,50,0
    .goto Durotar,58.64,53.86,50,0
    .goto Durotar,59.40,56.58,50,0
    .goto Durotar,58.41,58.17,50,0
    .goto Durotar,56.21,58.51,50,0
    .aura 408828 >>|cRXP_WARN_将敌人打到低血量，然后对他们施放|r |T136048:0|t|T136116:0|t[闪电箭] |cRXP_WARN_将其击杀。重复10次即可获得|r |T136116:0|t|T136116:0|t[灵感勃发] |cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须在能提供经验值的敌人身上完成此操作才能获得层数|r
    .mob 库尔提拉斯水手
    .mob 库尔提拉斯水兵
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <3,1
    .xp >11,1
step
    #completewith Barrens
    .zone The Barrens >>前往贫瘠之地
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto The Barrens,53.94,25.86,50,0
    .goto The Barrens,54.17,25.06,50,0
    .goto The Barrens,54.86,25.43,50,0
    .goto The Barrens,55.62,25.71,50,0
    .goto The Barrens,55.98,26.36,50,0
    .goto The Barrens,55.71,27.21,50,0
    .goto The Barrens,55.44,27.35,50,0
    .goto The Barrens,54.99,26.79,50,0
    .aura 408828 >>|cRXP_WARN_将敌人打到低血量，然后对他们施放|r |T136048:0|t|T136116:0|t[闪电箭] |cRXP_WARN_将其击杀。重复10次即可获得|r |T136116:0|t|T136116:0|t[灵感勃发] |cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须在能提供经验值的敌人身上完成此操作才能获得层数|r
    .mob 钢鬃织棘者
    .mob 钢鬃寻水者
    .mob Razormane Hunter
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <11,1
    .xp >16,1
step
    #loop
    .goto The Barrens,55.97,16.17,50,0
    .goto The Barrens,55.43,16.15,50,0
    .goto The Barrens,54.10,15.51,50,0
    .goto The Barrens,53.10,15.25,50,0
    .goto The Barrens,53.73,13.77,50,0
    .goto The Barrens,55.09,15.00,50,0
    .goto The Barrens,55.62,14.86,50,0
    .aura 408828 >>|cRXP_WARN_将敌人打到低血量，然后对他们施放|r |T136048:0|t|T136116:0|t[闪电箭] |cRXP_WARN_将其击杀。重复10次即可获得|r |T136116:0|t|T136116:0|t[灵感勃发] |cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须在能提供经验值的敌人身上完成此操作才能获得层数|r
    .mob Hecklefang Hyena
    .mob 草原徘徊者
    .mob Savannah Huntress
    .mob 赤鳞尖啸龙
    .mob Barrens Giraffe
    .mob 敏捷的平原陆行鸟
    .mob 快步斑马
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <16,1
    .xp >20,1
step
    #label Barrens
    #loop
    .goto The Barrens,40.03,15.36,50,0
    .goto The Barrens,39.39,14.65,50,0
    .goto The Barrens,39.62,11.77,50,0
    .goto The Barrens,38.84,11.93,50,0
    .goto The Barrens,38.44,13.21,50,0
    .goto The Barrens,38.48,14.85,50,0
    .goto The Barrens,37.33,16.23,50,0
    .goto The Barrens,38.64,17.49,50,0
    .aura 408828 >>|cRXP_WARN_将敌人打到低血量，然后对他们施放|r |T136048:0|t|T136116:0|t[闪电箭] |cRXP_WARN_将其击杀。重复10次即可获得|r |T136116:0|t|T136116:0|t[灵感勃发] |cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须在能提供经验值的敌人身上完成此操作才能获得层数|r
    .mob 巫翼杀戮者
    .mob Witchwing Windcaller
    .mob 巫翼伏击者
    .mob 巫翼游荡者
    .mob 塞瑞娜·血羽
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <20,1
    .xp >22,1
step
    #completewith next
    .zone Stonetalon Mountains >>前往石爪山脉
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto Stonetalon Mountains,64.17,57.16,50,0
    .goto Stonetalon Mountains,60.55,54.86,50,0
    .goto Stonetalon Mountains,60.95,51.21,50,0
    .goto Stonetalon Mountains,64.40,48.64,50,0
    .goto Stonetalon Mountains,66.18,52.01,50,0
    .goto Stonetalon Mountains,67.20,51.49,50,0
    .goto Stonetalon Mountains,66.83,45.34,50,0
    .goto Stonetalon Mountains,69.89,53.54,50,0
    .goto Stonetalon Mountains,70.84,56.97,50,0
    .aura 408828 >>|cRXP_WARN_将敌人打到低血量，然后对他们施放|r |T136048:0|t|T136116:0|t[闪电箭] |cRXP_WARN_将其击杀。重复10次即可获得|r |T136116:0|t|T136116:0|t[灵感勃发] |cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须在能提供经验值的敌人身上完成此操作才能获得层数|r
    .mob 风险投资公司樵夫
    .mob Venture Co. Deforester
    .mob 风险投资公司操作员
    .mob Venture Co. Light Shredder
    .mob XT:9
    .mob XT:4
    .mob Deepmoss Webspinner
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <22,1
step
    .cast 402265 >>|cRXP_WARN_使用|r |T134918:0|t|T133815:0|t|cRXP_LOOT_[镀电圣像]|r |cRXP_WARN_学习|r |T133815:0|t|T133815:0|t[铭刻胸甲 - 盾牌精通]
    .use 206386
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <3,1
--XX Cast ID may be wrong, may need to be checked
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 盾牌掌握 - 6级 (莫高雷)
#title 盾牌掌握
#next 熔火爆裂 - 8级 (莫高雷)


    --Rune of Shield Mastery
 step
    +|cRXP_WARN_你至少需要达到6级，才能在莫高雷独自获取|r |T133815:0|t|T133815:0|t[铭刻胸甲 - 盾牌精通] |cRXP_WARN_|r
    >>|cRXP_WARN_你的角色必须至少达到3级，因为这是装备|r |T134918:0|t|T134918:0|t|cRXP_LOOT_[镀电圣像]|r的等级要求
    >>|cRXP_WARN_你需要先提升等级，才能尝试获取|r |T133815:0|t|T133815:0|t[铭刻胸甲 - 盾牌精通]
    .train 410098,1
    .xp >3,1
step
    +|cRXP_WARN_你至少需要达到6级，才能在莫高雷独自获取|r |T133815:0|t|T133815:0|t[铭刻胸甲 - 盾牌精通] |cRXP_WARN_|r
    .train 410098,1
    .xp <3,1
    .xp >6,1
step
    #completewith IconS
    .zone Mulgore >>前往莫高雷
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto Mulgore,41.99,43.49,0
    .goto Mulgore,43.87,48.32,0
    .goto Mulgore,37.45,52.55,0
    .goto Mulgore,41.65,55.98,0
    .goto Mulgore,38.43,72.00,0
    .goto Mulgore,36.72,68.09,0
    .goto Mulgore,53.81,58.41,0
    .goto Mulgore,64.06,55.75,0
    .goto Mulgore,56.23,64.28,0
    .goto Mulgore,56.60,70.13,0
    .goto Mulgore,67.23,66.17,0
    .goto Mulgore,62.30,22.94,0
    .goto Mulgore,56.24,22.06,0
    .goto Mulgore,44.94,11.30,0
    .goto Mulgore,36.33,9.79,0
    .goto Mulgore,30.50,25.98,0
    .goto Mulgore,41.99,43.49,20,0
    .goto Mulgore,43.87,48.32,20,0
    .goto Mulgore,37.45,52.55,20,0
    .goto Mulgore,41.65,55.98,20,0
    .goto Mulgore,38.43,72.00,20,0
    .goto Mulgore,36.72,68.09,20,0
    .goto Mulgore,53.81,58.41,20,0
    .goto Mulgore,64.06,55.75,20,0
    .goto Mulgore,56.23,64.28,20,0
    .goto Mulgore,56.60,70.13,20,0
    .goto Mulgore,67.23,66.17,20,0
    .goto Mulgore,62.30,22.94,20,0
    .goto Mulgore,56.24,22.06,20,0
    .goto Mulgore,44.94,11.30,20,0
    .goto Mulgore,36.33,9.79,20,0
    .goto Mulgore,30.50,25.98,20,0
    >>点击|cRXP_PICK_镀电圣像|r图腾。拾取以获得|T134918:0|t|T134918:0|t|cRXP_LOOT_[镀电圣像]|r
    >>|cRXP_WARN_镀电圣像|cRXP_PICK_至少有15个|r刷新点，同时至少存在2个。被拾取后不到2分钟就会消失|r
    >>|cRXP_WARN_如果你在1000码范围内，它每5分钟会发出|r |T136051:0|t|T136051:0|t[闪电之盾] |cRXP_WARN_的声音；如果你在300码范围内且面朝它，还会在其位置显示一道闪电打击|r
    .collect 206386,1 --Galvanic Icon (1)
    .train 410098,1
    .xp <3,1
step
    .equip 18,206386 >>|cRXP_WARN_装备|r |T134918:0|t|T134918:0|t|cRXP_LOOT_[镀电圣像]|r
    .use 206386
    .itemcount 206386,1 --Galvanic Icon (1)
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto Mulgore,54.24,66.98,30,0
    .goto Mulgore,54.12,65.67,30,0
    .goto Mulgore,53.40,65.49,30,0
    .goto Mulgore,53.19,66.51,30,0
    .aura 408828 >>|cRXP_WARN_将敌人打到低血量，然后对他们施放|r |T136048:0|t|T136116:0|t[闪电箭] |cRXP_WARN_将其击杀。重复10次即可获得|r |T136116:0|t|T136116:0|t[灵感勃发] |cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须在能提供经验值的敌人身上完成此操作才能获得层数|r
    .mob Venture Co. Hireling
    .mob Venture Co. Laborer
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <3,1
    .xp >11,1
step
    #loop
    .goto Mulgore,59.86,48.74,30,0
    .goto Mulgore,60.85,49.04,30,0
    .goto Mulgore,61.83,48.28,30,0
    .goto Mulgore,61.40,47.23,30,0
    .goto Mulgore,62.02,45.84,30,0
    .goto Mulgore,62.85,45.30,30,0
    .goto Mulgore,64.87,43.32,30,0
    .aura 408828 >>|cRXP_WARN_将敌人打到低血量，然后对他们施放|r |T136048:0|t|T136116:0|t[闪电箭] |cRXP_WARN_将其击杀。重复10次即可获得|r |T136116:0|t|T136116:0|t[灵感勃发] |cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须在能提供经验值的敌人身上完成此操作才能获得层数|r
    .mob Venture Co. Worker
    .mob Venture Co. Supervisor
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <11,1
    .xp >14,1
step
    #completewith Barrens
    .zone The Barrens >>前往贫瘠之地
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto The Barrens,53.94,25.86,50,0
    .goto The Barrens,54.17,25.06,50,0
    .goto The Barrens,54.86,25.43,50,0
    .goto The Barrens,55.62,25.71,50,0
    .goto The Barrens,55.98,26.36,50,0
    .goto The Barrens,55.71,27.21,50,0
    .goto The Barrens,55.44,27.35,50,0
    .goto The Barrens,54.99,26.79,50,0
    .aura 408828 >>|cRXP_WARN_将敌人打到低血量，然后对他们施放|r |T136048:0|t|T136116:0|t[闪电箭] |cRXP_WARN_将其击杀。重复10次即可获得|r |T136116:0|t|T136116:0|t[灵感勃发] |cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须在能提供经验值的敌人身上完成此操作才能获得层数|r
    .mob 钢鬃织棘者
    .mob 钢鬃寻水者
    .mob Razormane Hunter
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <14,1
    .xp >16,1
step
    #loop
    .goto The Barrens,55.97,16.17,50,0
    .goto The Barrens,55.43,16.15,50,0
    .goto The Barrens,54.10,15.51,50,0
    .goto The Barrens,53.10,15.25,50,0
    .goto The Barrens,53.73,13.77,50,0
    .goto The Barrens,55.09,15.00,50,0
    .goto The Barrens,55.62,14.86,50,0
    .aura 408828 >>|cRXP_WARN_将敌人打到低血量，然后对他们施放|r |T136048:0|t|T136116:0|t[闪电箭] |cRXP_WARN_将其击杀。重复10次即可获得|r |T136116:0|t|T136116:0|t[灵感勃发] |cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须在能提供经验值的敌人身上完成此操作才能获得层数|r
    .mob Hecklefang Hyena
    .mob 草原徘徊者
    .mob Savannah Huntress
    .mob 赤鳞尖啸龙
    .mob Barrens Giraffe
    .mob 敏捷的平原陆行鸟
    .mob 快步斑马
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <16,1
    .xp >20,1
step
    #label Barrens
    #loop
    .goto The Barrens,40.03,15.36,50,0
    .goto The Barrens,39.39,14.65,50,0
    .goto The Barrens,39.62,11.77,50,0
    .goto The Barrens,38.84,11.93,50,0
    .goto The Barrens,38.44,13.21,50,0
    .goto The Barrens,38.48,14.85,50,0
    .goto The Barrens,37.33,16.23,50,0
    .goto The Barrens,38.64,17.49,50,0
    .aura 408828 >>|cRXP_WARN_将敌人打到低血量，然后对他们施放|r |T136048:0|t|T136116:0|t[闪电箭] |cRXP_WARN_将其击杀。重复10次即可获得|r |T136116:0|t|T136116:0|t[灵感勃发] |cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须在能提供经验值的敌人身上完成此操作才能获得层数|r
    .mob 巫翼杀戮者
    .mob Witchwing Windcaller
    .mob 巫翼伏击者
    .mob 巫翼游荡者
    .mob 塞瑞娜·血羽
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <20,1
    .xp >22,1
step
    #completewith next
    .zone Stonetalon Mountains >>前往石爪山脉
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto Stonetalon Mountains,64.17,57.16,50,0
    .goto Stonetalon Mountains,60.55,54.86,50,0
    .goto Stonetalon Mountains,60.95,51.21,50,0
    .goto Stonetalon Mountains,64.40,48.64,50,0
    .goto Stonetalon Mountains,66.18,52.01,50,0
    .goto Stonetalon Mountains,67.20,51.49,50,0
    .goto Stonetalon Mountains,66.83,45.34,50,0
    .goto Stonetalon Mountains,69.89,53.54,50,0
    .goto Stonetalon Mountains,70.84,56.97,50,0
    .aura 408828 >>|cRXP_WARN_将敌人打至残血，然后对其施放|r |T136048:0|t[闪电箭] |cRXP_WARN_来将其击杀。重复此操作10次以获得|r |T136116:0|t[灵感勃发] |cRXP_WARN_效果|r
    >>|cRXP_WARN_注意：你必须在能提供经验值的敌人身上完成此操作才能获得层数|r
    .mob 风险投资公司樵夫
    .mob Venture Co. Deforester
    .mob 风险投资公司操作员
    .mob Venture Co. Light Shredder
    .mob XT:9
    .mob XT:4
    .mob Deepmoss Webspinner
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <22,1
step
    .cast 402265 >>|cRXP_WARN_使用|r |T134918:0|t|cRXP_LOOT_[镀电圣像]|r |cRXP_WARN_来学习|r |T133815:0|t[铭刻胸甲 - 盾牌精通]
    .use 206386
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <3,1
--XX Cast ID may be wrong, may need to be checked
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 先祖指引 - 6 (杜隆塔尔)
#title 先祖指引
#next 熔火爆裂 - 10 (杜隆塔尔)

    --Rune of Ancestral Guidance
step
    +|cRXP_WARN_你应该至少达到6级才能在杜隆塔尔独自获得|r |T134596:0|t[铭刻裤子 - 先祖指引] |cRXP_WARN_|r
    >>|cRXP_WARN_你的角色必须至少达到3级，因为这是装备|r |T237571:0|t|cRXP_LOOT_[先祖回响]|r 的等级要求
    .train 410099,1
    .xp <3,1
step
    +|cRXP_WARN_你应该至少达到6级才能在杜隆塔尔独自获得|r |T134596:0|t[铭刻裤子 - 先祖指引] |cRXP_WARN_|r
    .train 410099,1
    .xp <3,1
    .xp >6,1
step
    #completewith next
    #label Durotar1
    .zone Durotar >>前往杜隆塔尔
    .train 410099,1
    .xp <3,1
step
    #completewith next
    #requires Durotar1
    .goto Durotar,50.84,79.14,40,0
    .goto Durotar,48.02,79.46,40 >>去找 |cRXP_FRIENDLY_冒险者的残骸|r
    .train 410099,1
    .xp <3,1
step
    #label IconS
    .goto Durotar,48.02,79.46
    >>|cRXP_WARN_与站在|cRXP_FRIENDLY_冒险者的遗骸|r旁的萨满、牧师或德鲁伊组队，或在综合频道（在聊天框输入/1）寻求萨满、牧师或德鲁伊的帮助|r
    >>|cRXP_WARN_与地上的|cRXP_FRIENDLY_|r冒险者的残骸|r|cRXP_WARN_对话以开始仪式，或者在加入队伍后，点击其他玩家的|r |T136223:0|t[灵魂仪式]
    >>|cRXP_WARN_完成仪式后，一个|cRXP_FRIENDLY_冒险者之魂|r 会出现并死亡。拾取它获得|r |T237571:0|t|cRXP_LOOT_[先祖回响]|r
    .collect 210589,1 --Echo of the Ancestors (1)
    .target Adventurer's Remains
    .target Adventurer's Spirit
    .skipgossip
    .train 410099,1
    .xp <3,1
step
    .cast 402265 >>|cRXP_WARN_使用|r |T237571:0|t|cRXP_LOOT_[先祖回响]|r |cRXP_WARN_学习|r |T134596:0|t[铭刻裤子 - 先祖指引]
    .use 210589
    .itemcount 210589,1 --Echo of the Ancestors (1)
    .train 410099,1
    .xp <3,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 先祖指引 - 10级 (莫高雷)
#title 先祖指引
#next 土之道 - 12级（贫瘠之地）


    --Rune of Ancestral Guidance

step
    +|cRXP_WARN_你应该至少达到6级才能在莫高雷独自获得|r |T134596:0|t[铭刻裤子 - 先祖指引] |cRXP_WARN_|r
    >>|cRXP_WARN_你的角色必须至少达到3级，因为这是装备|r |T237571:0|t|cRXP_LOOT_[先祖回响]|r 的等级要求
    .train 410099,1
    .xp <3,1
step
    +|cRXP_WARN_你应该至少达到10级才能在莫高雷独自获得|r |T134596:0|t[铭刻裤子 - 先祖指引] |cRXP_WARN_|r
    .train 410099,1
    .xp <3,1
    .xp >10,1
step
    #completewith next
    #label Mulgore1
    .zone Mulgore >>前往莫高雷
    .train 410099,1
    .xp <3,1
step
    #completewith next
    #requires Mulgore1
    #label Cave1
    .goto Mulgore,61.46,47.21,20 >>进入风险投资公司矿洞
    .train 410099,1
    .xp <3,1
step
    #completewith next
    #requires Cave1
    #label Cave2
    .goto Mulgore,62.52,45.37,25,0
    .goto Mulgore,62.56,44.48,25,0
    .goto Mulgore,61.50,42.54,25,0
    .goto Mulgore,61.66,41.45,25,0
    .goto Mulgore,63.08,39.33,25,0
    .goto Mulgore,62.69,38.01,25,0
    .goto Mulgore,60.05,35.82,20 >>从风险投资公司矿洞的另一侧出口离开
    .train 410099,1
    .xp <3,1
step
    #completewith next
    #requires Cave2
    .goto Mulgore,60.39,33.54,40 >>去找 |cRXP_FRIENDLY_冒险者的残骸|r
    .train 410099,1
    .xp <3,1
--XX Might be a faster method via the mountains, but don't want to complicate it
step
    #label IconS
    .goto Mulgore,60.39,33.54
    >>|cRXP_WARN_与站在|cRXP_FRIENDLY_冒险者的遗骸|r旁的萨满、牧师或德鲁伊组队，或在综合频道（在聊天框输入/1）寻求萨满、牧师或德鲁伊的帮助|r
    >>|cRXP_WARN_与地上的|cRXP_FRIENDLY_|r冒险者的残骸|r|cRXP_WARN_对话以开始仪式，或者在加入队伍后，点击其他玩家的|r |T136223:0|t[灵魂仪式]
    >>|cRXP_WARN_完成仪式后，一个|cRXP_FRIENDLY_冒险者之魂|r 会出现并死亡。拾取它获得|r |T237571:0|t|cRXP_LOOT_[先祖回响]|r
    .collect 210589,1 --Echo of the Ancestors (1)
    .target Adventurer's Remains
    .target Adventurer's Spirit
    .skipgossip
    .train 410099,1
    .xp <3,1
step
    .cast 402265 >>|cRXP_WARN_使用|r |T237571:0|t|cRXP_LOOT_[先祖回响]|r |cRXP_WARN_学习|r |T134596:0|t[铭刻裤子 - 先祖指引]
    .use 210589
    .itemcount 210589,1 --Echo of the Ancestors (1)
    .train 410099,1
    .xp <3,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 土之道 - 12级（贫瘠之地）
#title 土之道
#next 水之护盾 - 20 级(贫瘠之地)



step
    +|cRXP_WARN_你必须至少达到12级才能获取|r |T134596:0|t|T136075:0|t[铭刻腿甲 - 土之道] |cRXP_WARN_，因为这是学习|r |T136075:0|t|T136075:0|t[净化术]的等级要求
    >>|cRXP_WARN_你需要先提升等级，才能尝试获取|r |T134596:0|t|T134596:0|t[铭刻护腿 - 土之道]
    >>|cRXP_WARN_或者，你可以在|r |T134596:0|t|T134596:0|t[铭刻护腿 - 土之道] |cRXP_WARN_在银松森林1级以上时获取|r
    .train 410107,1
    .xp >12,1
step
    .zone Orgrimmar >>前往奥格瑞玛或雷霆崖
    .zoneskip Thunder Bluff
    .train 370,1
    .xp <12,1
step
    #completewith next
    .goto Orgrimmar,40.31,37.01,15,0
    .goto Orgrimmar,38.81,36.37,15 >>前去找 |cRXP_FRIENDLY_卡德里斯|r
    .zoneskip Thunder Bluff
    .train 410107,1
    .xp <12,1
step
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德里斯|r 对话
    .train 370 >>训练 |T136075:0|t[净化术]
    .target 卡德里斯
    .zoneskip Thunder Bluff
    .train 410107,1
    .xp <12,1
step
    #completewith next
    .goto Thunder Bluff,22.82,21.11,15 >>前去找 |cRXP_FRIENDLY_希恩|r
    .zoneskip Orgrimmar
    .train 410107,1
    .xp <12,1
step
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希恩|r 对话
    .train 370 >>训练 |T136075:0|t[净化术]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 410107,1
    .xp <12,1
step
    #completewith next
    .zone The Barrens >>前往贫瘠之地
    .train 410107,1
    .xp <12,1
step
    #loop
    .goto The Barrens,55.77,34.01,40,0 --Spawn 1
    .goto The Barrens,55.83,34.21,40,0
    .goto The Barrens,54.81,35.95,40,0 --Spawn 2
    .goto The Barrens,54.96,35.72,40,0
    .goto The Barrens,57.47,36.03,40,0 --Spawn 3
    .goto The Barrens,57.56,35.78,40,0
    .goto The Barrens,57.46,35.70,40,0
    .goto The Barrens,57.59,38.36,40,0 --Spawn 4
    .goto The Barrens,57.49,38.65,40,0
    .goto The Barrens,58.82,37.67,40,0 --Spawn 5
    .goto The Barrens,58.92,37.53,40,0
    .goto The Barrens,58.94,37.73,40,0
    >>对|T136075:0|t|T134419:0|t[沙漠魅影]使用|cRXP_ENEMY_净化术|r将其击杀。拾取尸体获得|T134419:0|t|T134419:0|t|cRXP_LOOT_[地之符文]|r
    .collect 208758,1 --Earthen Rune (1)
    .unitscan Desert Mirage
    .train 410107,1
    .xp <12,1
--XX Respawns after 85s-170s
step
    .cast 402265 >>|cRXP_WARN_使用|r |T134419:0|t|T134596:0|t|cRXP_LOOT_[地之符文]|r |cRXP_WARN_学习|r |T134596:0|t|T134596:0|t[铭刻腿甲 - 土之道]
    .use 208758
    .itemcount 208758,1 --Earthen Rune (1)
    .train 410107,1
    .xp <12,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 土之道 - 14级（银松森林）
#title 土之道
#next 水盾 - 20级 (银松森林)

step
    +|cRXP_WARN_你至少需要达到14级，才能独自在银松森林获得|r |T134596:0|t|T134596:0|t[铭刻腿甲 - 土之道] |cRXP_WARN_|r
    >>|cRXP_WARN_你需要先提升等级，才能尝试获取|r |T134596:0|t|T134596:0|t[铭刻护腿 - 土之道]
    .train 410107,1
    .xp >14,1
step
    #completewith next
    .zone Silverpine Forest >>前往银松森林
    .train 410107,1
step
    #loop
    .goto Silverpine Forest,45.68,22.63,30,0
    .goto Silverpine Forest,45.09,23.63,30,0
    .goto Silverpine Forest,44.16,22.47,30,0
    .goto Silverpine Forest,44.05,21.66,30,0
    .goto Silverpine Forest,45.05,20.75,30,0
    .goto Silverpine Forest,45.07,19.79,30,0
    .goto Silverpine Forest,45.59,19.29,30,0
    .goto Silverpine Forest,46.18,19.74,30,0
    .goto Silverpine Forest,46.62,20.44,30,0
    .goto Silverpine Forest,46.07,21.92,30,0
    >>击杀|cRXP_ENEMY_溃烂秘教徒|r。从他们身上拾取|T136008:0|t|T136008:0|t|cRXP_LOOT_[腐化图腾]|r
    .collect 210253,1 --Rot Hide Totem (1)
    .mob Rot Hide Mystic
    .itemcount 208758,<1 --Earthen Rune (1)
    .train 410107,1
step
    #completewith Rune
    .cast 425285 >>|cRXP_WARN_使用|r |T136008:0|t|T136008:0|t|cRXP_LOOT_[腐化图腾]|r |cRXP_WARN_来召唤|cRXP_ENEMY_腐朽的元素生物|r
    .use 210253 --Rot Hide Totem (1)
    .itemcount 210253,1 --Rot Hide Totem (1)
    .train 410107,1
    .xp <14,1
step
    #completewith next
    .cast 425285 >>|cRXP_WARN_使用|r |T136008:0|t|T136008:0|t|cRXP_LOOT_[腐化图腾]|r |cRXP_WARN_来召唤|cRXP_ENEMY_腐朽的元素生物|r
    >>|cRXP_WARN_小心，它会施放|r |T135848:0|t|T135848:0|t[冰霜新星] |cRXP_WARN_（远程瞬发：造成约50点伤害并定身8秒），且等级为15|r
    .use 210253 --Rot Hide Totem (1)
    .itemcount 210253,1 --Rot Hide Totem (1)
    .train 410107,1
    .xp >14,1
step
    #label Rune
    >>击杀|cRXP_ENEMY_腐朽的元素生物|r，并拾取|T134419:0|t|T134419:0|t|cRXP_LOOT_[地之符文]|r
    .collect 208758,1 --Earthen Rune (1)
    .mob Decayed Elemental
    .train 410107,1
--XX Need to test if it can be summoned anywhere, and how much or how scary it is
step
    .cast 402265 >>|cRXP_WARN_使用|r |T134419:0|t|T134596:0|t|cRXP_LOOT_[地之符文]|r |cRXP_WARN_学习|r |T134596:0|t|T134596:0|t[铭刻腿甲 - 土之道]
    .use 208758
    .itemcount 208758,1 --Earthen Rune (1)
    .train 410107,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 高等幽魂之狼 - 25级 (石爪山脉)
#title 高等幽魂之狼
#next 双武器专精 - 25级 (棘齿城)


step
    +|cRXP_WARN_你至少需要达到25级，才能独自在石爪山脉获得|r |T134596:0|t|T134596:0|t[铭刻腿甲 - 强效幽魂之狼] |cRXP_WARN_|r
    .train 425343,1
    .xp >25,1
step
    #completewith next
    .zone Stonetalon Mountains >>前往石爪山脉
    .train 425343,1
step
    #loop
    .goto Stonetalon Mountains,28.45,65.00,0
    .goto Stonetalon Mountains,28.45,65.00,50,0
    .goto Stonetalon Mountains,29.08,71.97,50,0
    .goto Stonetalon Mountains,33.43,68.97,50,0
    .goto Stonetalon Mountains,33.49,69.40,50,0
    .goto Stonetalon Mountains,36.85,72.04,50,0
    >>击杀 |cRXP_ENEMY_始生异常|r，获取 |T134419:0|t|cRXP_LOOT_[原始狂怒符文]|r
    >>|cRXP_WARN_务必检查它的形态（减益效果）。如果是|r |T136074:0|t|T135824:0|t[自然形态]|cRXP_WARN_，就使用|r |T135819:0|t|T135865:0|t[火焰伤害]|cRXP_WARN_。如果是|r |T135861:0|t|T136085:0|t[火焰形态]|cRXP_WARN_，就使用|r |T135865:0|t|T135865:0|t[冻伤]|cRXP_WARN_。如果是|r |T135861:0|t|T135861:0|t[流水形态]|cRXP_WARN_，就使用|r |T136085:0|t|T136085:0|t[自然伤害]
    >>|cRXP_WARN_小心，它会施放 |T132939:0|t|T132939:0|t[击退] |cRXP_WARN_（近战瞬发：将目标击飞到空中并造成80点伤害）|r
    >>|cRXP_WARN_刷新时间为5-8分钟，每次掉落一件随机装绑绿色装备|r
    .collect 210811,1 --Rune of Primordial Fury (1)
    .mob Primordial Anomaly
    .train 425343,1
step
    .cast 402265 >>|cRXP_WARN_使用|r |T134419:0|t|cRXP_LOOT_[原始狂怒符文]|r |cRXP_WARN_来学习|r |T134596:0|t[铭刻腿甲 - 强效幽魂之狼]
    .use 210811
    .itemcount 210811,1 --Rune of Primordial Fury (1)
    .train 425343,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 大地之盾 - 25级（艾泽拉斯）
#title 大地之盾
#next 过载 - 3 级(杜隆塔尔) << Orc Shaman/Troll Shaman
#next 过载 - 3级 (莫高雷) << Tauren Shaman


step
    +|cRXP_WARN_你至少需要达到25级才能获得|r |T134596:0|t|T134596:0|t[铭刻护腿 - 大地之盾] |cRXP_WARN_，因为这是进入黑暗深渊的等级要求|r
    .train 410101,1
    .xp >25,1
step
    .zone Orgrimmar >>前往奥格瑞玛或雷霆崖
    .zoneskip Thunder Bluff
    .train 410101,1
    .xp <25,1
step
    .goto Orgrimmar,50.67,70.39,0
    .goto Orgrimmar,53.74,64.60,15,0
    .goto Orgrimmar,55.54,64.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师瓦巴恩|r对话
    >>|cRXP_BUY_从拍卖行购买|r |T134797:0|t|T134717:0|t[水下呼吸药剂] |cRXP_BUY_和|r |T134717:0|t|T134717:0|t[智慧药剂] |cRXP_BUY_|r
    >>|cRXP_WARN_或者，你也可以购买材料自己制作：2|r |T132799:0|t|T134302:0|t[黑口鱼油] |cRXP_WARN_（或4|r |T134191:0|t|T133436:0|t[黑口鱼] |cRXP_WARN_来制作鱼油），1|r |T134412:0|t|T134191:0|t[荆棘藻]|cRXP_WARN_，1|r |T133436:0|t|T133436:0|t[魔皇草]|cRXP_WARN_，以及2|r |T134412:0|t|T134412:0|t[石南草]
    >>|cRXP_WARN_你稍后会需要这些物品。不要在那之前使用它们|r
    .collect 5996,1 --Elixir of Water Breathing (1)
    .collect 3383,1 --Elixir of Wisdom (1)
    .target Auctioneer Wabang
	.skill alchemy,<90,1
    .zoneskip Orgrimmar,1
    .train 410101,1
    .xp <25,1
step
    .goto Orgrimmar,50.67,70.39,0
    .goto Orgrimmar,53.74,64.60,15,0
    .goto Orgrimmar,55.54,64.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师瓦巴恩|r对话
    >>|cRXP_BUY_从拍卖行购买|r |T134797:0|t|T134717:0|t[水下呼吸药剂] |cRXP_BUY_和|r |T134717:0|t|T134717:0|t[智慧药剂] |cRXP_BUY_|r
    >>|cRXP_WARN_你稍后会需要这些物品。不要在那之前使用它们|r
    .collect 5996,1 --Elixir of Water Breathing (1)
    .collect 3383,1 --Elixir of Wisdom (1)
    .target Auctioneer Wabang
    .zoneskip Orgrimmar,1
    .train 410101,1
    .xp <25,1
step
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拍卖师斯塔比|r 对话
    >>|cRXP_BUY_从拍卖行购买|r |T134797:0|t|T134717:0|t[水下呼吸药剂] |cRXP_BUY_和|r |T134717:0|t|T134717:0|t[智慧药剂] |cRXP_BUY_|r
    >>|cRXP_WARN_或者，你也可以购买材料自己制作：2|r |T132799:0|t|T134302:0|t[黑口鱼油] |cRXP_WARN_（或4|r |T134191:0|t|T133436:0|t[黑口鱼] |cRXP_WARN_来制作鱼油），1|r |T134412:0|t|T134191:0|t[荆棘藻]|cRXP_WARN_，1|r |T133436:0|t|T133436:0|t[魔皇草]|cRXP_WARN_，以及2|r |T134412:0|t|T134412:0|t[石南草]
    >>|cRXP_WARN_你稍后会需要这些物品。不要在那之前使用它们|r
    .collect 5996,1 --Elixir of Water Breathing (1)
    .collect 3383,1 --Elixir of Wisdom (1)
    .target Auctioneer Stampi
	.skill alchemy,<90,1
    .zoneskip Thunder Bluff,1
    .train 410101,1
    .xp <25,1
step
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拍卖师斯塔比|r 对话
    >>|cRXP_BUY_从拍卖行购买|r |T134797:0|t|T134717:0|t[水下呼吸药剂] |cRXP_BUY_和|r |T134717:0|t|T134717:0|t[智慧药剂] |cRXP_BUY_|r
    >>|cRXP_WARN_你稍后会需要这些物品。不要在那之前使用它们|r
    .collect 5996,1 --Elixir of Water Breathing (1)
    .collect 3383,1 --Elixir of Wisdom (1)
    .target Auctioneer Stampi
    .zoneskip Thunder Bluff,1
    .train 410101,1
    .xp <25,1
step
    #completewith next
    .zone Ashenvale >>前往灰谷
    .train 410101,1
    .xp <25,1
step
    #completewith next
    .goto Kalimdor,44.36,34.86
    >>|cRXP_WARN_加入或创建新的(0/7)团队(10人)以进入黑暗深渊|r
    .subzone 2797,2 >>前往黑暗深渊副本入口并进入副本
    .train 410101,1
    .xp <25,1
step
    >>在黑暗深渊中击杀|cRXP_ENEMY_阿奎尼斯男爵|r。从他身上拾取|T136222:0|t|T136222:0|t|cRXP_LOOT_[奇怪的水球]|r
    .collect 211454,1 --Strange Water Globe (SoD) (1)
    .mob 阿奎尼斯男爵
    .train 410101,1
    .xp <25,1
step
    >>使用|T136222:0|t|T136222:0|t|cRXP_LOOT_[奇怪的水球]|r来开始任务
    .accept 78920 >>接受任务 阿奎尼斯男爵
    .use 211454
    .itemcount 211454,1 --Strange Water Globe (SoD) (1)
    .train 410101,1
    .xp <25,1
step
    #completewith Baron
    >>|cRXP_WARN_完成这个副本（如果你想的话），然后离开黑暗深渊|r
    .zone Ashenvale >>前往灰谷
    .zoneskip 221,1
    .train 410101,1
    .xp <25,1
step
    #completewith next
    .zone Ashenvale >>前往灰谷
    .train 410101,1
    .xp <25,1
step
    #label Baron
    .goto Ashenvale,11.56,34.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶努萨克雷|r 对话
    .turnin 78920 >>交任务 阿奎尼斯男爵
    .accept 78506 >>接受任务 元素求救
    .target 耶努萨克雷
    .train 410101,1
    .xp <25,1
step
#loop
	.line Ashenvale,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,52.13,71.14,52.18,71.60,52.08,72.10,45.84,70.67,48.36,69.74
	.goto Ashenvale,48.36,69.74,50,0
	.goto Ashenvale,48.43,70.14,50,0
	.goto Ashenvale,48.93,70.82,50,0
	.goto Ashenvale,49.49,70.76,50,0
	.goto Ashenvale,50.21,70.36,50,0
	.goto Ashenvale,50.47,70.43,50,0
	.goto Ashenvale,50.54,71.08,50,0
	.goto Ashenvale,50.74,71.31,50,0
	.goto Ashenvale,51.42,70.86,50,0
	.goto Ashenvale,52.13,71.14,50,0
	.goto Ashenvale,52.18,71.60,50,0
	.goto Ashenvale,52.08,72.10,50,0
	.goto Ashenvale,45.84,70.67,50,0
	.goto Ashenvale,48.36,69.74,50,0
    >>击杀 |cRXP_ENEMY_污浊的水元素|r。拾取它们的 |T132844:0|t|cRXP_LOOT_[流水狂怒微粒]|r
    .complete 78506,3 --Mote of Torrential Rage (1)
    .mob 污浊的水元素
    .train 410101,1
    .xp <25,1
--XX Needs to be converted to hashtag loop
step
    #completewith next
    .zone Stonetalon Mountains >>前往石爪山脉
    .train 410101,1
    .xp <25,1
step
    #loop
    #completewith next
    .goto Stonetalon Mountains,45.60,44.18,50,0 --NE Rogue Flame Shared Spawn Cluster (NE Spawnpoints)
    .goto Stonetalon Mountains,44.54,43.43,50,0
    .goto Stonetalon Mountains,43.96,39.90,50,0
    .goto Stonetalon Mountains,43.62,41.14,50,0
--
    .goto Stonetalon Mountains,37.09,46.62,50,0 --Path Rogue Flame Shared Spawn Cluster (Middle Spawnpoints)
    .goto Stonetalon Mountains,35.71,47.81,50,0
    .goto Stonetalon Mountains,37.21,48.30,50,0
    .goto Stonetalon Mountains,36.50,49.86,50,0
    .goto Stonetalon Mountains,37.18,51.87,50,0
    .goto Stonetalon Mountains,35.33,53.88,50,0
    .goto Stonetalon Mountains,34.59,60.23,50,0
    .goto Stonetalon Mountains,33.38,62.23,50,0
--
    .goto Stonetalon Mountains,35.22,65.79,50,0 --Start of Burning Destroyers and Ravagers
    .goto Stonetalon Mountains,36.42,71.05,50,0
    .goto Stonetalon Mountains,35.73,73.27,50,0
    .goto Stonetalon Mountains,34.50,72.62,50,0
    .goto Stonetalon Mountains,33.64,71.17,50,0
    .goto Stonetalon Mountains,33.49,70.48,50,0
    .goto Stonetalon Mountains,31.67,71.11,50,0
    .goto Stonetalon Mountains,31.13,73.45,50,0
    .goto Stonetalon Mountains,30.13,73.32,50,0
    .goto Stonetalon Mountains,30.97,67.39,50,0
    .goto Stonetalon Mountains,28.25,65.96,50,0
    >>击杀 |cRXP_ENEMY_游荡的焰灵|r，|cRXP_ENEMY_燃烧的破坏者|r 和 |cRXP_ENEMY_燃烧的掠夺者|r。拾取它们的 |T132839:0|t|cRXP_LOOT_[地狱火狂怒微粒]|r
    >>|cRXP_ENEMY_游荡的焰灵|r 与|cRXP_WARN_ 黑色石化蜥蜴|r |cRXP_ENEMY_共享刷新点|r
    .complete 78506,2 --Mote of Infernal Rage (1)
    .mob Rogue Flame Spirit
    .mob Burning Destroyer
    .mob Burning Ravager
    .train 410101,1
    .xp <25,1
--XX Did waypoints in WOTLK, may be slightly off but i'd put more money on it being accurate than not
step
    #loop
    .goto Stonetalon Mountains,34.07,65.61,50,0
    .goto Stonetalon Mountains,36.42,71.05,50,0
    .goto Stonetalon Mountains,35.88,72.31,50,0
    .goto Stonetalon Mountains,32.49,73.81,50,0
    .goto Stonetalon Mountains,32.64,67.42,50,0
    .goto Stonetalon Mountains,28.99,65.18,50,0
    >>击杀 |cRXP_ENEMY_狂怒的石灵|r 和 |cRXP_ENEMY_暴烈的石灵|r。拾取它们的 |T132838:0|t|cRXP_LOOT_[地震狂怒微粒]|r。 |cRXP_WARN_小心该区域的危险敌人。|r
    .complete 78506,1 --Mote of Seismic Rage (1)
    .mob Enraged Stone Spirit
    .mob Furious Stone Spirit
    .train 410101,1
    .xp <25,1
--XX Not totally sure if any of the elementals in the charred vale do/don't share spawns? It's a total clown fiesta
step
    #loop
    .goto Stonetalon Mountains,45.60,44.18,50,0
    .goto Stonetalon Mountains,44.54,43.43,50,0
    .goto Stonetalon Mountains,43.96,39.90,50,0
    .goto Stonetalon Mountains,43.62,41.14,50,0
    .goto Stonetalon Mountains,37.09,46.62,50,0
    .goto Stonetalon Mountains,35.71,47.81,50,0
    .goto Stonetalon Mountains,37.21,48.30,50,0
    .goto Stonetalon Mountains,36.50,49.86,50,0
    .goto Stonetalon Mountains,37.18,51.87,50,0
    .goto Stonetalon Mountains,35.33,53.88,50,0
    .goto Stonetalon Mountains,34.59,60.23,50,0
    .goto Stonetalon Mountains,33.38,62.23,50,0
    .goto Stonetalon Mountains,35.22,65.79,50,0
    .goto Stonetalon Mountains,36.42,71.05,50,0
    .goto Stonetalon Mountains,35.73,73.27,50,0
    .goto Stonetalon Mountains,34.50,72.62,50,0
    .goto Stonetalon Mountains,33.64,71.17,50,0
    .goto Stonetalon Mountains,33.49,70.48,50,0
    .goto Stonetalon Mountains,31.67,71.11,50,0
    .goto Stonetalon Mountains,31.13,73.45,50,0
    .goto Stonetalon Mountains,30.13,73.32,50,0
    .goto Stonetalon Mountains,30.97,67.39,50,0
    .goto Stonetalon Mountains,28.25,65.96,50,0
    >>击杀 |cRXP_ENEMY_游荡的焰灵|r，|cRXP_ENEMY_燃烧的破坏者|r 和 |cRXP_ENEMY_燃烧的掠夺者|r。拾取它们的 |T132839:0|t|cRXP_LOOT_[地狱火狂怒微粒]|r
    >>|cRXP_ENEMY_游荡的焰灵|r 与|cRXP_WARN_ 黑色石化蜥蜴|r |cRXP_ENEMY_共享刷新点|r
    .complete 78506,2 --Mote of Infernal Rage (1)
    .mob Rogue Flame Spirit
    .mob Burning Destroyer
    .mob Burning Ravager
    .train 410101,1
    .xp <25,1
step
    #completewith next
    .zone Ashenvale >>前往灰谷
    .train 410101,1
    .xp <25,1
step
    .goto Ashenvale,11.56,34.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶努萨克雷|r 对话
    .turnin 78506 >>交任务 元素求救
    .accept 78537 >>接受任务 洞察药剂
    .accept 78537 >>交任务 洞察药剂
    .accept 78561 >>接受任务 洞察药剂
    .target 耶努萨克雷
    .train 410101,1
    .xp <25,1
step
    .goto Ashenvale,11.38,33.08
    >>在篝火旁使用 |T134791:0|t[洞察药剂]
    >>|cRXP_WARN_你不需要等待剧情演出|r
    .complete 78561,1 --Vision Witnessed (1)
    .use 210712
    .train 410101,1
    .xp <25,1
step
    .goto Ashenvale,11.56,34.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶努萨克雷|r 对话
    .turnin 78561 >>交任务 洞察药剂
    .accept 78575 >>接受任务 希尔泽克
    .target 耶努萨克雷
    .train 410101,1
    .xp <25,1
step
    #completewith next
    .zone The Barrens >>前往贫瘠之地
    .train 410101,1
    .xp <25,1
step
    .goto The Barrens,43.18,78.59
    >>击杀|cRXP_ENEMY_希尔泽克|r。拾取他的 |T135146:0|t|cRXP_LOOT_[希尔泽克的法杖]|r
    >>小心|cRXP_WARN_ 因为 |cRXP_ENEMY_希尔泽克|r 会施放|r |T135805:0|t[闪电箭] |cRXP_WARN_（远程施法：造成约110点自然伤害）并且是25级精英。它是可以单刷，但是你可能需要找人协助你|r
    >>|cRXP_WARN_小心！如果你击杀了 |cRXP_ENEMY_希尔泽克|r 却让 |cRXP_ENEMY_被束缚的元素|r 活着，|cRXP_ENEMY_被束缚的元素|r 就会获得无限的仇恨范围（它会一直跟着你，直到它消失或被你击杀）|r
    .complete 78575,1 --Hirzek's Staff (1)
    .complete 78575,2 --Hirzek (1)
    .mob Hirzek
    .mob Bound Elemental
    .train 410101,1
    .xp <25,1
--XX Objective IDs (,1 and ,2) need testing
step
    #completewith next
    .zone Ashenvale >>前往灰谷
    .train 410101,1
    .xp <25,1
step
    .goto Ashenvale,11.56,34.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶努萨克雷|r 对话
    .turnin 78575 >>交任务 希尔泽克
    .target 耶努萨克雷
    .train 410101,1
    .xp <25,1
step
    .cast 402265 >>|cRXP_WARN_使用|r |T134419:0|t|cRXP_LOOT_[大地之盾符文]|r |cRXP_WARN_来学习|r |T134596:0|t[铭刻裤子 - 大地之盾]
    .use 210746
    .itemcount 210746,1 --Rune of Earth Shield (1)
    .train 410101,1
    .xp <25,1
    --XX Rune Routing will never be good for this
step << skip
    +恭喜！你已获得所有当前可用的 |T134419:0|t|cRXP_LOOT_[符文]|r。
    .train 410094,3 --Overload
    .train 410095,3 --Lava Burst
    .train 410096,3 --Dual Wield Specialization
    .train 410097,3 --Water Shield
    .train 410098,3 --Shield Mastery
    .train 410099,3 --Ancestral Guidance
    .train 410101,3 --Earth Shield
    .train 410104,3 --Lava Lash
    .train 410107,3 --Way of Earth
    .train 416057,3 --Healing Rain
    .train 425343,3 --Shamanistic Rage
    .train 425344,3 --Molten Blast
    .xp <25,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP符文与书籍指南
#subgroup 腰带
#name 火焰新星 - 35 (艾泽拉斯)
#title 火焰新星

-- Fire Nova

step
    #completewith next
    .zone Desolace >>前往 |cFFfa9602凄凉之地|r
step
    .goto Desolace,56.6,21.8
    >>击杀 |cRXP_ENEMY_烈焰先知杜贝伦|r。拾取他的 |T136008:0|t[|cRXP_LOOT_腐化火焰图腾|r]
    .collect 213451,1
    .mob Flameseer Dubelen
step
    .goto 1443,38.23,61,25,0
    .goto 1443,37.13,60.41,25,0
    .goto 1443,35.38,58.25,25,0
    .goto 1443,33.03,55.4,25,0
    .goto 1443,30.87,57.86,25,0
    .goto 1443,29.85,62.5,25,0
    .goto 1414,38.38,57.98,25,0
    .goto 1414,38.42,57.98,25,0
    .goto 1414,38.35,58.14,25,0
    .goto 1414,38.28,58.17,25,0
    .goto 1414,38.24,58.03,25,0
    .goto 1414,38.31,58.02,25,0
    .goto 1414,38.47,58.17,25,0
    .goto 1414,38.6,58.24,25,0
    .goto 1414,38.73,58.18,25,0
    .goto 1414,38.83,58.31,25,0
    .goto 1414,39.01,58.3,25,0
    .goto 1414,39.17,58.09,25,0
    .goto 1414,39.01,57.87,25,0
    .goto 1414,39.26,57.69
    >>点击橙色水晶之中的一个|cRXP_PICK_蓝色能量水晶|r 来收集|T134088:0|t[瑟莱德丝之泪]
    >>|cRXP_WARN_请小心，因为该区域的敌人是精英怪且会施放昏迷。|r |cFFFF0000你很可能会死亡多次|r
    .collect 213552,1
step
    .goto 1414,38.45,57.84,25,0
    .goto 1414,38.64,57.69,25,0
    .goto 1414,38.52,57.52,25,0
    .goto 1414,38.43,57.43,25,0
    .goto 1443,29.65,57.19,25,0
    .goto 1443,27.72,57.51
    >>点击紫色水晶之中的一个|cRXP_PICK_蓝色能量水晶|r来收集|T134088:0|t[瑟莱德丝之泪]
    >>|cRXP_WARN_请小心，因为该区域的敌人是精英怪且会施放昏迷。|r |cFFFF0000你很可能会死亡多次|r
    .collect 213553,1
step
    #completewith next
    .zone Orgrimmar >>前往 |cFFfa9602奥格瑞玛|r
step
    .goto Orgrimmar,38.94,38.39
    .gossip 4047 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_佐尔·孤树|r 对话并选择对话选项
    -- .gossipoption --x insert id
    .target 佐尔·孤树
step
    #completewith next
    .zone Thunder Bluff >>前往 |cFFfa9602雷霆崖|r
step
    .goto Thunder Bluff,78.61,28.55
    .gossip 5769 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大德鲁伊哈缪尔·符文图腾|r 对话并选择对话选项
    -- .gossipoption --x insert id
    .target 大德鲁伊哈缪尔·符文图腾
step
    -- .gossipoption --x insert id
    .goto Thunder Bluff,47.00,49.82
    .gossip 2995 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话并选择对话选项飞往月光林地
    .target 塔尔
step
    #completewith next
    .zone Moonglade >>前往 |cFFfa9602月光林地|r
step
    .goto Moonglade,36.178,41.798
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_守护者雷姆洛斯|r对话
    .collect 213558,1
    .target 守护者雷姆洛斯
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP符文与书籍指南
#subgroup 腰带
#name 漩涡武器 - 40 (艾泽拉斯)
#title 漩涡武器

-- Maelstrom Weapon

step
    .train 410100,1
    #completewith next
    .zone The Barrens >>前往 |cFFfa9602贫瘠之地|r
step
    .train 410100,1
    .goto The Barrens,43.46,90.18,0
    .goto The Barrens,43.46,90.18,40,0
    .goto 1414,50.877,70.339
    .subzone 491,2 >>进入剃刀沼泽
step
    .train 410100,1
    >>击杀 |cRXP_ENEMY_卡尔加·刺肋|r。拾取他的 |T134944:0|t|cRXP_LOOT_破烂的笔记|r。使用它来接受任务
    >>|cRXP_WARN_建议组成5人小队。|r
    .collect 212748,1 --Tattered Note (1x)
    .accept 79358 >>接受任务 破烂的笔记
    .mob 卡尔加·刺肋
step
    .train 410100,1
    #completewith next
    .zone Thousand Needles >>前往|cFFfa9602千针石林|r
step
    .train 410100,1
    .goto Thousand Needles,46.10,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉乌·峭壁信使|r 对话
    .turnin 79358 >>交任务 破烂的笔记
    .accept 79360 >>接受任务 元素援助
    .target 拉乌·峭壁信使
step
    .train 410100,1
    .goto Thousand Needles,46.21,51.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_詹迪亚|r 对话
    >>|cRXP_BUY_从她那里购买一个|r |T132793:0|t|T132793:0|t[水晶瓶] |cRXP_BUY_|r
    .collect 8925,1 --Crystal Vial (1x)
    .target Jandia
step
    .train 410100,1
    #completewith next
    .zone Hillsbrad Foothills >>前往 |cFFfa9602希尔斯布莱德丘陵|r
step
    .train 410100,1
    .goto Alterac Mountains,80.499,66.923
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_捕风者巴斯拉 |r 对话
    .turnin 79360 >>交任务 元素援助
    .accept 79361 >>接受任务 风之力量
    .accept 79362 >>接受任务 地之力量
    .accept 79363 >>接受任务 水之力量
    .target 捕风者巴斯拉
step
    .train 410100,1
    #completewith next
    .zone Desolace >>前往 |cFFfa9602凄凉之地|r
step
    .train 410100,1
    #loop
    .goto Desolace,48.0,27.2,0
    .goto Desolace,40.6,37.0,0
    .goto Desolace,50.8,42.0,0
    .goto Desolace,64.4,39.4,0
    .goto Desolace,68.4,48.4,0
    .goto Desolace,69.4,64.6,0
    .goto Desolace,58.8,65.6,0
    .waypoint Desolace,48.0,27.2,25,0
    .waypoint Desolace,40.6,37.0,25,0
    .waypoint Desolace,50.8,42.0,25,0
    .waypoint Desolace,64.4,39.4,25,0
    .waypoint Desolace,68.4,48.4,25,0
    .waypoint Desolace,69.4,64.6,25,0
    .waypoint Desolace,58.8,65.6,25,0
    >>在凄凉之地击杀|cRXP_ENEMY_旋风元素|r，拾取它们掉落的|T132845:0|t|T132845:0|t|cRXP_LOOT_旋转精华|r
    .complete 79361,1 -- Power of da Wind
    .mob Whirlwind Ripper
    .mob Whirlwind Stormwalker
    .mob Whirlwind Shredder
step
    .train 410100,1
    #completewith next
    .zone Dustwallow Marsh >>前往 |cFFfa9602尘泥沼泽|r
step
    .train 410100,1
    #loop
    .goto Dustwallow Marsh,42.6,30.0,0
    .goto Dustwallow Marsh,35.2,44.6,0
    .goto Dustwallow Marsh,42.6,62.0,0
    .goto Dustwallow Marsh,50.0,54.0,0
    .waypoint Dustwallow Marsh,42.6,30.0,25,0
    .waypoint Dustwallow Marsh,35.2,44.6,25,0
    .waypoint Dustwallow Marsh,42.6,62.0,25,0
    .waypoint Dustwallow Marsh,50.0,54.0,25,0
    >>在尘泥沼泽中击杀|cRXP_ENEMY_枯萎藤元素|r，并从它们身上拾取|T132846:0|t|T132846:0|t|cRXP_LOOT_奔涌精华|r
    .complete 79363,1 -- Power of da Water
    .mob Withervine Mire Beast
    .mob Withervine Rager
    .mob Withervine Bark Ripper
    .mob Withervine Creeper
step
    .train 410100,1
    #completewith next
    .zone Badlands >>前往 |cFFfa9602荒芜之地|r
step
    .train 410100,1
    #loop
    .goto Badlands,18.0,42.8,0
    .waypoint Badlands,21.2,45.8,50,0
    .waypoint Badlands,18.0,42.8,50,0
    .waypoint Badlands,13.8,38.6,50,0
    .waypoint Badlands,21.2,45.8,50,0
    .waypoint Badlands,18.0,42.8,50,0
    >>击杀|cRXP_ENEMY_小型岩石元素生物|r和|cRXP_ENEMY_岩石元素生物|r，拾取它们掉落的|T132846:0|t|T132846:0|t|cRXP_LOOT_轰鸣精华|r
    .complete 79362,1 -- Power of da Earth
    .mob 石元素
    .mob 次级石元素
step
    .train 410100,1
    #completewith next
    .zone Hillsbrad Foothills >>前往 |cFFfa9602希尔斯布莱德丘陵|r
step
    .train 410100,1
    .goto Alterac Mountains,80.499,66.923
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_捕风者巴斯拉 |r 对话
    .turnin 79361 >>交任务 风之力量
    .turnin 79362 >>交任务 地之力量
    .turnin 79363 >>交任务 水之力量
    .accept 79364 >>接受任务 简单的容器
    .turnin 79364 >>交任务 简单的容器
    .accept 79365 >>接受任务 翼下之风
    .target 捕风者巴斯拉
step
    .train 410100,1
    #completewith next
    .zone Thousand Needles >>前往|cFFfa9602千针石林|r
step
    .train 410100,1
    .goto Thousand Needles,46.10,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拉乌·峭壁信使|r 对话
    .turnin 79365 -- With Wind Beneath Your Wings
    .accept 79366 --Calm Before the Storm
    .target 拉乌·峭壁信使
step
    .train 410100,1
    .gossip 4317 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奈瑟|r 对话，然后选择第二个对话选项
    .target 奈瑟
step
    .train 410100,1
    >>击杀|cRXP_ENEMY_狂风怒号|r，拾取其掉落的|cRXP_LOOT_狂风之眼|r
    >>|cRXP_WARN_如果在这个过程中死亡，与|r |cRXP_FRIENDLY_精神医者|r |cRXP_WARN_对话，将你传送至尸体处|r
    .collect 212792,1 --Eye of the Tempest (1x)
    .mob Dreath's Head Necromancer
    .mob Skeletal Servant
    .mob Ravaging Tempest
step
    .train 410100,1
    .vehicle >>与 |cRXP_FRIENDLY_乱风岗双足飞龙|r 互动
    .timer 9,飞行 剧情BP
step
    .train 410100,1
    .goto Thousand Needles,46.10,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拉乌·峭壁信使|r 对话
    .turnin 79366 --Calm Before the Storm
    .accept 79442 --Catching up
    .target 拉乌·峭壁信使
step
    .train 410100,1
    #completewith next
    .zone Hillsbrad Foothills >>前往 |cFFfa9602希尔斯布莱德丘陵|r
step
    .train 410100,1
    .goto Alterac Mountains,80.499,66.923
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_捕风者巴斯拉 |r 对话
    .turnin 79442 --Catching up
    .target 捕风者巴斯拉
step
    .train 410100 >>|cRXP_WARN_使用|r |T134419:0|t|T136032:0|t[|cRXP_FRIENDLY_风暴符文|r]学习|T136032:0|t|T136032:0|t[漩涡武器]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP符文与书籍指南
#subgroup 腰带
#name 能量涌动 - 30级 (阿拉希高地)
#title 能量涌动

-- Power Surge

step
    .train 416054,1
    #completewith next
    .zone Arathi Highlands >>前往 |cFFfa9602阿拉希高地|r |cRXP_WARN_|cRXP_WARN_强烈建议组织一个至少有3名玩家的小队。|r
step
    .train 416054,1
    .goto Arathi Highlands,31.91,41.15,50,0
    .goto Arathi Highlands,35.53,40.93,50,0
    .goto Arathi Highlands,35.51,44.26,50,0
    .goto Arathi Highlands,34.40,44.25,12,0
    .goto Arathi Highlands,31.08,43.68,12,0
    .goto Arathi Highlands,34.40,44.25,12,0
    .goto Arathi Highlands,35.51,44.26
    >>击杀|cRXP_ENEMY_石拳食人魔|r和|cRXP_ENEMY_石拳蛮兵|r。从它们身上拾取|T134921:0|t|T134921:0|t|cRXP_LOOT_[食人魔引雷针]|r
    .collect 213426,1 --Ogre Lightning Rod (1x)
    .mob Boulderfist Ogre
    .mob Boulderfist Enforcer
step
    .train 416054,1
    .goto Arathi Highlands,33.45,44.49
    .cast 434350 >>点击 |cRXP_PICK_松软土壤|r 将 |T134921:0|t|cRXP_LOOT_[引雷针]|r 插入地面。
step
    .train 416054,1
    >>对 |cRXP_ENEMY_引雷针|r 施放 |T136048:0|t[闪电箭] 10次
    >>击杀 |cRXP_ENEMY_塔姆卡|r 或在等他刷新后风筝他。从他身上拾取 |T134419:0|t[能量符文]
    >>|cRXP_WARN_他会在30秒后自动死亡，所以可以风筝他拖时间，不必硬杀|r
    .collect 213093,1 --Rune of Power (1x)
    .mob Lightning Rod
    .mob Tamkar
step
    .train 416054 >>|cRXP_WARN_使用|r |T134419:0|t[能量符文] |cRXP_WARN_来学习|r |T134337:0|t[能量涌动]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP符文与书籍指南
#subgroup 布兹
#title 诱饵图腾
#name 诱饵图腾 - 27级 (千针石林)

-- Decoy Totem

step
    .train 425882,1
    .zone Thousand Needles >>前往|cFFfa9602千针石林|r
step
    .train 425882,1
    .goto Thousand Needles,46.21,51.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_詹迪亚|r 对话
    >>|cRXP_BUY_购买1个|r |T132906:0|t[丝线] |cRXP_BUY_从她那里|r
    .collect 4291,1 --Silken Thread (1)
    .target Jandia
step
    .train 425882,1
    #loop
    .goto Thousand Needles,55.42,51.96,0
    .waypoint Thousand Needles,55.42,51.96,40,0
    .waypoint Thousand Needles,56.68,49.88,40,0
    .waypoint Thousand Needles,55.97,45.97,40,0
    .waypoint Thousand Needles,54.29,48.10,40,0
    >>击杀 |cRXP_ENEMY_风蛇|r。拾取它们的 |cRXP_LOOT_风蛇利齿|r
    .collect 213709,3 --Cloud Serpent Fang (3x)
    .mob 云端翔龙
    .mob Venomous Cloud Serpent
    .mob Elder Cloud Serpent
step
    .train 425882,1
    #loop
    .goto Thousand Needles,27.65,49.47,0
    .goto Thousand Needles,26.55,55.77,0
    .waypoint Thousand Needles,27.65,49.47,40,0
    .waypoint Thousand Needles,27.16,51.62,15,0
    .waypoint Thousand Needles,26.29,52.79,15,0
    .waypoint Thousand Needles,27.23,54.04,15,0
    .waypoint Thousand Needles,26.55,55.77,15,0
    >>击杀 cRXP_ENEMY_尖啸鹰身人|r。拾取它们的 |cRXP_LOOT_强健鹰身人羽毛|r
    .collect 213701,10 --Strong Harpy Feather (10x)
    .mob Screeching Harpy
    .mob Screeching Roguefeather
    .mob Screeching Windcaller
step
    .train 425882,1
    .use 213709 >>|cRXP_WARN_使用|r 你的 |T133723:0|t[风蛇利齿] |cRXP_WARN_来制作|r |T133291:0|t[风灵供品]
    .collect 213737,1 --Offering to the Wind Spirit (1x)
step
    .goto Thousand Needles,31.47,36.71,30 >>前往黑云峰
step
    #completewith next
    .goto Thousand Needles,33.08,35.33,20,0
    .goto Thousand Needles,32.78,32.24,20,0
    .goto Thousand Needles,32.03,31.36,20,0
    .goto Thousand Needles,32.37,28.64,20,0
    .goto Thousand Needles,32.60,27.51,20,0
    .goto Thousand Needles,34.87,31.76,20,0
    .goto Thousand Needles,34.15,35.77,20,0
    .goto Thousand Needles,33.32,36.24,20 >>沿着黑云峰向上前进
step
    .train 425882,1
    .goto Thousand Needles,39.44,41.98
    .aura 435218 >>|cRXP_WARN_在|r |cRXP_WARN_风灵祭坛|r |cRXP_PICK_使用|r |T133291:0|t[风灵供品]
    >>|cRXP_WARN_祭坛位于小屋后面，最东边的高峰上|r
    .use 213737
step
    .goto Thousand Needles,40.43,43.29
    >>跳下去向清风之魂展示你的信念来获得 |T134419:0|t|cRXP_FRIENDLY_诱饵符文|r
    >>|cRXP_WARN_确保你的|r |T133291:0|t[风灵供品] |cRXP_WARN_不会过期。它持续30秒|r
    .collect 213096,1 --Rune of Decoys (1x)
step
    .train 425882 >>|cRXP_WARN_使用|r |T134419:0|t|cRXP_FRIENDLY_诱饵符文|r |cRXP_WARN_来学习|r |T134508:0|t[诱饵图腾]
    .use 213096
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP符文与书籍指南
#subgroup 布兹
#title 头狼之魂
#name 头狼之魂 - 27 (千针石林)

-- Spirit of the Alpha

step
    .train 410103,1
    .zone Thousand Needles >>前往|cFFfa9602千针石林|r
step
    #completewith next
    .train 410103,1
    .goto Thousand Needles,46.17,52.95,20 >>前往乱风岗正南边的低桥的起点
step
    .train 410103,1
    .goto Thousand Needles,46.82,53.52
    >>|cRXP_WARN_使用|r |T136095:0|t[幽魂之狼] |cRXP_WARN_来小心地跳向|r |cRXP_PICK_风蚀储物箱|r
    >>点击 |cRXP_PICK_风蚀储物箱|r 来拾取 |T136095:0|t|cRXP_FRIENDLY_头狼的回响|r
    .collect 206985,1
step
    .train 410103 >>|cRXP_WARN_使用|r |T136095:0|t|cRXP_FRIENDLY_头狼的回响|r |cRXP_WARN_来学习|r |T408696:0|t[头狼之魂]
    .use 206985
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP符文与书籍指南
#subgroup 护腕
#title 滚雷
#name 滚雷 - 41 (塔纳利斯)

-- Rolling Thunder
-- PERMOK: Needs better waypoints

step
    #completewith next
    .zone Tanaris >>前往塔纳利斯
    .train 432236,1
step
    .train 432236,1
    .goto Tanaris,43.0,41.2
    .aura 446888,1 >>|cRXP_WARN_点击|r|cRXP_PICK_怪异图腾|r。你会变成一头幽魂之狼，|cRXP_WARN_并使你受到的伤害提高50%|r
step
    .train 432236,1
    >>|cRXP_WARN_朝另一个图腾跑，同时避开小怪。|r 拾取出现的宝箱中的|T134419:0|t[|cRXP_FRIENDLY_滚雷符文|r]
    *|cRXP_WARN_你正在承受额外50%的伤害。小心！|r 你也可以提前清理通往另一个图腾路径上的小怪
    .goto Tanaris,45.6,37.8
    .collect 220613,1
step
    .itemcount 220613,1
    .use 220613
    .train 432236 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_滚雷符文|r] |cRXP_WARN_来学习|r |T136111:0|t[滚雷]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP符文与书籍指南
#subgroup 护腕
#title 静电震击
#name 静电震击 - 44 (菲拉斯)

-- PERMOK: Needs better waypoints

step
    #completewith ChargedAir
    +|cRXP_WARN_你必须与另一名玩家组队才能获得这个符文|r
step
    #completewith next
    .zone Feralas >>前往菲拉斯
    .train 432238,1
step
    .train 432238,1
    .goto Feralas,60.0,66.8
    .aura 447259 >>点击 |cRXP_PICK_充能的图腾|r 来获得 |T136075:0|t[电化空气] buff
step
    #label ChargedAir
    .train 432238,1
    >>留在图腾附近并使用闪电伤害（例如闪电盾）击杀周围的|cRXP_WARN_ 戈杜尼食人魔|cRXP_ENEMY_ 直到|r 旋转的风暴|cRXP_ENEMY_ 刷新|r。
    >>击杀 |cRXP_ENEMY_旋转的风暴|r。拾取|T134419:0|t[|cRXP_FRIENDLY_静电震击符文|r]
    *|cRXP_WARN_队伍中的所有玩家都必须待在图腾范围内|r
    .goto Feralas,60.0,66.8
    .collect 220614,1
    .mob Whirling Tempest
    .mob Gordunni Warlock
    .mob Gordunni Shaman
    .mob Gordunni Mauler
step
    .itemcount 220614,1
    .use 220614
    .train 432238 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_静电震击符文|r] |cRXP_WARN_来学习|r |T237587:0|t[静电震击]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP符文与书籍指南
#subgroup 头盔
#title 潮汐奔涌
#name 潮汐奔涌 - 42 (菲拉斯)

-- PERMOK: Needs better waypoints

step
    #completewith next
    .zone Feralas >>前往菲拉斯
    .train 432234,1
step
    .train 432234,1
    >>点击帐篷后面的 |cRXP_PICK_陈旧的箱子|r 以拾取 |T134239:0|t[老旧的钥匙]
    .goto Feralas,76.6,48.0
    .collect 221497,1
step
    .train 432234,1
    >>点击海底的 |cRXP_PICK_老旧的箱子|r 以拾取 |T134419:0|t[|cRXP_FRIENDLY_潮汐奔涌符文|r]
    *|cRXP_WARN_小心！这会召唤四个 |cRXP_ENEMY_熏烟元素|r （42级，冰霜免疫）|r
    .goto Feralas,79.2,49.4
    .collect 220612,1
    .mob Simmering Elemental
step
    .itemcount 220612,1
    .use 220612
    .train 432234 >>|cRXP_WARN_使用|r |T134419:0|t|T237590:0|t[|cRXP_FRIENDLY_潮汐奔涌符文|r] |cRXP_WARN_学习|r |T237590:0|t|T237590:0|t[潮汐奔涌]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP符文与书籍指南
#subgroup 护腕
#title 潮汐奔涌
#name 潮汐奔涌 - 45级 (艾泽拉斯)

--x shiek: needs better coordinates
step
    #completewith next
    .zone Tanaris >>前往塔纳利斯
    .train 432241,1
step
    #loop
    .goto Tanaris,51.6,44.2,40,0
    .goto Tanaris,51.2,52.0,40,0
    .goto Tanaris,41.0,48.6,40,0
    .goto Tanaris,41.8,44.0,40,0
    >>击杀|cRXP_ENEMY_疱爪土狼|r、|cRXP_ENEMY_土地暴怒者|r和|cRXP_ENEMY_玻璃皮凝视者|r，从它们身上拾取|cRXP_LOOT_|T134327:0|t|T134327:0|t模糊的萨满笔记|r
    .collect 221352,1 --1/1 Smudged Shaman's Notes
    .mob Blisterpaw Hyena
    .mob Land Rager
    .mob Glasshide Gazer
    .train 432241,1
step
    .goto Tanaris,62,64
    >>点击|cRXP_PICK_|T134327:0|t|T134327:0|t被弄脏的萨满笔记|r以开始任务。
    .accept 82072,1 >>接受任务 净化大地
    .use 221352
    .train 432241,1
step
    .isOnQuest 82072
    .goto Tanaris,62,64
    .cast 446581 >>在|T134743:0|t|T134743:0|t[被腐蚀的大地图腾]附近使用[浑浊大地灵契]。
    .use 221349
    .train 432241,1
step
    .goto Tanaris,62.0,62.6
    >>击杀|cRXP_ENEMY_被腐蚀的中等土元素|r，然后>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_中等土元素|r对话
    .turnin 82072 >>交任务 净化大地
    .accept 82075 >>接受任务 响应大地的召唤
    .mob Corrupt Moderate Manifestation of Earth
    .target Moderate Manifestation of Earth
    .train 432241,1
step
    #completewith next
    .zone Azshara >>前往艾萨拉
    .train 432241,1
step
    #loop
    .goto Azshara,19.4,64.0,20,0
    .goto Azshara,21.2,60.8,20,0
    .goto Azshara,21.0,60.0,20,0
    >>击杀|cRXP_ENEMY_哈尔达萨特|r、|cRXP_ENEMY_哈尔达欺诈者|r和|cRXP_ENEMY_哈尔达邪能侍僧|r。从他们身上拾取|cRXP_LOOT_|T134331:0|t|T134331:0|t浸水的萨满笔记|r
    .collect 221351,1 --1/1 Waterlogged Shaman's Notes
    .mob Haldarr Satyr
    .mob Haldarr Trickster
    .mob Haldarr Felsworn
    .train 432241,1
step
    .goto Azshara,14,49
    >>点击|cRXP_PICK_|T134331:0|t|T134331:0|t浸水的萨满笔记|r以开始任务。
    .accept 82073,1 >>接受任务 净化流水
    .use 221352
    .train 432241,1
step
    .isOnQuest 82073
    .goto Azshara,14,49
    .cast 446581 >>在受污染的水图腾附近使用|T134743:0|t|T134743:0|t[浑浊大地灵契]。
    .use 221348
    .train 432241,1
step
    .goto Azshara,15.0,49.8
    >>击杀|cRXP_ENEMY_腐化的中型水之实体|r，然后>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_中型水之实体|r交谈
    .turnin 82073 >>交任务 净化流水
    .accept 82076 >>接受任务 响应水的召唤
    .mob Corrupt Moderate Manifestation of Water
    .target Moderate Manifestation of Water
    .train 432241,1
step
    #completewith next
    .zone The Hinterlands >>前往辛特兰
    .train 432241,1
step
    #loop
    .goto The Hinterlands,48.8,53.0,40,0
    .goto The Hinterlands,47.6,40.8,40,0
    .goto The Hinterlands,58.2,41.8,40,0
    >>击杀|cRXP_ENEMY_绿色淤泥|r和|cRXP_ENEMY_翡翠软泥怪|r。从它们身上拾取|cRXP_LOOT_|T134332:0|t|T134332:0|t破损的萨满笔记|r
    .collect 220379,1 --1/1 Torn Shaman's Notes
    .mob Green Sludge
    .mob Jade Ooze
    .train 432241,1
step
    .goto The Hinterlands,51,46
    >>点击|cRXP_PICK_|T134332:0|t|T134332:0|t撕裂的萨满笔记|r以开始任务
    .accept 81960,1 >>接受任务 净化空气
    .use 220379
    .train 432241,1
step
    .isOnQuest 82072
    .goto The Hinterlands,51,46
    .cast 446581 >>在|T134743:0|t|T134743:0|t[被污染的空气图腾]附近使用浑浊大地灵契。
    .use 221349
    .train 432241,1
step
    .goto The Hinterlands,51.2,47.0
    >>击杀|cRXP_ENEMY_被腐蚀的中等空气形态|r，然后>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_中等大地形态|r交谈。
    .turnin 81960 >>交任务 净化空气
    .accept 81968 >>接受任务 响应空气的召唤
    .mob Corrupt Moderate Manifestation of Air
    .target Moderate Manifestation of Air
    .train 432241,1
step
    #completewith next
    .zone Searing Gorge >>前往灼热峡谷
    .train 432241,1
step
    #loop
    .goto Searing Gorge,52.0,35.4,40,0
    .goto Searing Gorge,42.4,38.6,40,0
    .goto Searing Gorge,32.8,43.0,40,0
    .goto Searing Gorge,28.8,44.4,40,0
    .goto Searing Gorge,30.6,64.6,40,0
    .goto Searing Gorge,31.6,73.8,40,0
    >>击杀|cRXP_ENEMY_岩浆元素生物|r和|cRXP_ENEMY_地狱火元素生物。|r从它们身上拾取|cRXP_LOOT_|T134327:0|t|T134327:0|t焦灼萨满的笔记|r
    .collect 221350,1 --1/1 Charred Shaman's Notes
    .mob Inferno Elemental
    .mob Magma Elemental
    .train 432241,1
step
    .goto Searing Gorge,24,72
    >>点击|cRXP_PICK_|T134329:0|t|T134329:0|t焦灼的萨满笔记|r以开始任务。
    .accept 82071,1 >>接受任务 净化火焰
    .use 221352
    .train 432241,1
step
    .isOnQuest 82072
    .goto Searing Gorge,24,72
    .cast 446581 >>在受污染的火焰图腾附近使用|T134743:0|t|T134743:0|t[浑浊大地灵契]。
    .use 221349
    .train 432241,1
step
    .goto Searing Gorge,24.0,72.4
    >>击杀|cRXP_ENEMY_腐化的中等火焰化身|r，然后>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_中等火焰化身|r交谈
    .turnin 82071 >>交任务 净化火焰
    .accept 82074 >>接受任务 响应火焰的召唤
    .mob Corrupt Moderate Manifestation of Fire
    .target Moderate Manifestation of Fire
    .train 432241,1
step
    #completewith next
    .zone Feralas >>前往菲拉斯
    .train 432241,1
step
    #loop
    .goto Feralas,50.2,51.4,20,0
    .goto Feralas,44.8,46.2,20,0
    .goto Feralas,41.0,37.8,20,0
    .goto Feralas,37.4,33.0,20,0
    >>击杀|cRXP_ENEMY_海沫|r和|cRXP_ENEMY_海元素生物。|r 从它们身上拾取|cRXP_LOOT_|T132849:0|t|T132849:0|t元素精华|r
    .collect 220510,3
    .train 432241,1
step
    .cast 446803 >>使用|T134118:0|t|T134118:0|t[大地碎片]
    .use 221355
    .train 432241,1
step
    .goto Feralas,36.0,32.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_温和的大地之灵|r交谈
    .turnin 82075 >>响应大地的召唤
    .target Moderate Manifestation of Earth
    .train 432241,1
step
    #loop
    .goto Feralas,37.4,33.0,20,0
    .goto Feralas,41.0,37.8,20,0
    .goto Feralas,44.8,46.2,20,0
    .goto Feralas,50.2,51.4,20,0
    >>击杀|cRXP_ENEMY_海沫|r和|cRXP_ENEMY_海元素生物。|r 从它们身上拾取|cRXP_LOOT_|T132849:0|t|T132849:0|t元素精华|r
    .collect 220510,3
    .train 432241,1
step
    .cast 446802 >>使用|T134130:0|t|T134130:0|t[火焰碎片]
    .use 221353
    .train 432241,1
step
    .goto Feralas,36.0,32.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_温和的大地之灵|r交谈
    .turnin 82075 >>响应大地的召唤
    .target Moderate Manifestation of Earth
    .train 432241,1
step
    #loop
    .goto Feralas,50.2,51.4,20,0
    .goto Feralas,44.8,46.2,20,0
    .goto Feralas,41.0,37.8,20,0
    .goto Feralas,37.4,33.0,20,0
    >>击杀|cRXP_ENEMY_海沫|r和|cRXP_ENEMY_海元素生物。|r 从它们身上拾取|cRXP_LOOT_|T132849:0|t|T132849:0|t元素精华|r
    .collect 220510,3
    .train 432241,1
step
    .cast 445748 >>使用 |T134133:0|t|T134133:0|t[空气碎片]
    .use 220375
    .train 432241,1
step
    .goto Feralas,36.0,32.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_温和的大地之灵|r交谈
    .turnin 82075 >>响应大地的召唤
    .target Moderate Manifestation of Earth
    .train 432241,1
step
    #loop
    .goto Feralas,37.4,33.0,20,0
    .goto Feralas,41.0,37.8,20,0
    .goto Feralas,44.8,46.2,20,0
    .goto Feralas,50.2,51.4,20,0
    >>击杀|cRXP_ENEMY_海沫|r和|cRXP_ENEMY_海元素生物。|r 从它们身上拾取|cRXP_LOOT_|T132849:0|t|T132849:0|t元素精华|r
    .collect 220510,3
    .train 432241,1
step
    .cast 446804 >>使用 |T134089:0|t|T134089:0|t[流水碎片]
    .use 221354
    .train 432241,1
step
    .goto Feralas,36.0,32.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_温和的大地之灵|r交谈
    .turnin 82075 >>响应大地的召唤
    .target Moderate Manifestation of Earth
    .train 432241,1
step
    >>击杀|cRXP_ENEMY_暮光暗影萨满。|r 从他身上拾取|cRXP_LOOT_|cRXP_FRIENDLY_|T134419:0|t|T134419:0|t能量超载符文|r|r
    .collect 220616,1 --1/1 Rune of Overcharged
    .train 432241,1
step
    .train 432241 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_能量超载符文|r] |cRXP_WARN_来训练|r |T132213:0|t[能量超载]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP符文与书籍指南
#subgroup 披风
#title 风火雷电
#name 风火雷电 - 52 (费伍德森林)

step
    .train 440634,1
    #completewith next
    .zone Felwood >>前往费伍德森林
step
    .goto Felwood,62.4,9.0
    .train 440634,1
    >>击杀|cRXP_ENEMY_死木萨满祭司|r，|cRXP_ENEMY_死木复仇者|r 和 |cRXP_ENEMY_死木守卫|r。拾取它们的|T134918:0|t|cRXP_LOOT_被污染的灵魂碎片|r
    .goto Feralas,76.6,48.0
    .collect 225838,1
    .mob Deadwood Shaman
    .mob Deadwood Avenger
    .mob Deadwood Den Watcher
step
    .train 440634,1
    .equip 18,225838 >>|cRXP_WARN_装备|r |T134918:0|t[|cRXP_LOOT_流电圣像|r]
    .use 225838
step
    .train 440634,1
    .aura 408828 >>|cRXP_WARN_你现在必须施放单次|r |T136015:0|t[闪电链] 击杀3个敌人
    >>|cRXP_WARN_拉3只怪并将每只的血量打到大概5%然后施放|r |T136015:0|t[闪电链]
step
    .itemcount 225838,1
    .use 225838
    .train 440634 >>|cRXP_WARN_使用|r |T134918:0|t[|cRXP_LOOT_流电圣像|r] |cRXP_WARN_来学习|r |T237588:0|t[风火雷电]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP符文与书籍指南
#subgroup 披风
#title 连贯链条
#name 连贯链条 - 55 (燃烧平原)

step
    .train 416062,1
    #completewith next
    .zone Burning Steppes >>前往燃烧平原
step
    .train 416062,1
    #loop
    .goto Burning Steppes,62.4,9.0,60,0
    .goto Burning Steppes,69.4,31.8,60,0
    .goto Burning Steppes,61.4,31.8,60,0
    .goto Burning Steppes,51.2,35.6,60,0
    .goto Burning Steppes,55.6,49.2,60,0
    .goto Burning Steppes,54.8,62.2,60,0
    .goto Burning Steppes,35.6,61.6,60,0
    .goto Burning Steppes,41.6,43.6,60,0
    >>击杀|cRXP_ENEMY_巨型黑曜石元素|r。拾取它们的 |cRXP_LOOT_熔火黑曜石之核|r
    .collect 225676,1
    .mob Greater Obsidian Elemental
step
    .train 416062,1
    .goto Redridge Mountains,44.6,50.0
    >>|cRXP_WARN_你现在有10分钟的时间跳入任何地方的水里|r
    >>|cRXP_WARN_前往赤脊山并跳入湖中|r
    >>|cRXP_WARN_如果你的炉石绑定在水边，你也可以选择使用炉石|r
    >>|cRXP_WARN_跳进水中会将 |cRXP_LOOT_熔火黑曜石之核|r 转变成|r |T237477:0|t[|cRXP_LOOT_蒙灰黑曜石之核|r]
    .collect 225675,1
step
    .train 416062,1
    .use 225675 >>|cRXP_WARN_打开|r |T237477:0|t[|cRXP_LOOT_蒙灰黑曜石之核|r] |cRXP_WARN_来获得|r |T134419:0|t[|cRXP_LOOT_沉着符文|r]
    .collect 225740,1
step
    .itemcount 225740,1
    .use 225740
    .train 416062 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_LOOT_沉着符文|r] |cRXP_WARN_来学习|r |T237586:0|t[连贯链条]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP符文与书籍指南
#subgroup 披风
#title 野性幽魂
#name 野性幽魂 - 60 (冬泉谷)

step
    .train 440630,1
    #completewith next
    .zone Winterspring >>前往冬泉谷
    >>|cRXP_WARN_记住你必须击杀一个60级精英。考虑带上一个朋友|r
step
    #completewith next
    .goto Winterspring,67.93,41.44,50 >>进入雪人洞穴
step
    .goto Winterspring,69.87,37.92
    >>|cRXP_WARN_前往雪人洞穴后部|r 与 |cRXP_FRIENDLY_弗里吉达尔|r 对话
    >>|cRXP_WARN_他将在几秒后变成敌对状态|r
    >>击杀 |cRXP_ENEMY_弗里吉达尔|r。拾取 |T134419:0|t[|cRXP_LOOT_束缚之魂符文|r]
    .collect 225914,1
    .mob Frijidar
    .skipgossip
step
    .itemcount 225914,1
    .use 225914
    .train 440630 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_LOOT_束缚之魂符文|r] |cRXP_WARN_来学习|r |T237577:0|t[野性狼魂]
]])
