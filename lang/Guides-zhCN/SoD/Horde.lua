if GetLocale() ~= "zhCN" then return end
if GetLocale() == "zhCN" and RXP.gameVersion > 20000 then return end
RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD/Horde Hunter SoD
#group RestedXP符文与书籍指南
#subgroup 腿部 << Warrior
#subgroup 手套 << Hunter
#name 狂怒雷霆 - 10级（莫高雷） << Warrior
#name 爆炸射击 - 10级（莫高雷） << Hunter
#title 狂怒雷霆 << Warrior
#title 爆炸射击 << Hunter


    --Rune of Furious Thunder/Explosive Shot

step
    #season 2
    .goto Mulgore,52.6,12.2,90,0
    .goto Mulgore,48.6,16.1,90,0
    .goto Mulgore,51.8,33.8,90,0
    .goto Mulgore,56.2,32.9,90,0
    .goto Mulgore,52.6,12.2,90,0
    .goto Mulgore,48.6,16.1,90,0
    .goto Mulgore,51.8,33.8,90,0
    .goto Mulgore,56.2,32.9
    >>寻找 |cRXP_ENEMY_阿兰其亚|r（大型黑色科多怪）。它顺时针行走。杀死它并拾取他的 |T134419:0|t[|cRXP_FRIENDLY_狂怒雷霆符文|r] << Warrior
    >>寻找 |cRXP_ENEMY_阿兰其亚|r（大型黑色科多怪）。它顺时针行走。杀死它并拾取他的 |T134419:0|t[|cRXP_FRIENDLY_爆炸射击符文|r] << Hunter
    .collect 204809,1 << Warrior --Rune of Furious Thunder(1)
    .collect 206169,1 << Hunter --Rune of Explosive Shot (1)
    .mob Arra'Chea
    .train 403476,1 << Warrior
    .train 410123,1 << Hunter
step << Warrior
    #season 2
    .train 403476 >>使用 |T134419:0|t[|cRXP_FRIENDLY_狂怒雷霆符文|r]
    .use 204809
    .itemcount 204809,1
step << Hunter
    #season 2
    .train 410123 >>使用 |T134419:0|t[|cRXP_FRIENDLY_爆炸射击符文|r]
    .use 206169
    .itemcount 206169,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD/Horde Hunter SoD
#group RestedXP符文与书籍指南
#subgroup 手套 << Warrior
#subgroup 腿部 << Hunter
#name 迅捷打击 - 18级（贫瘠之地） << Warrior
#name 狙击训练 - 16级（贫瘠之地） << Hunter
#title 迅捷打击 << Warrior
#title 狙击训练 << Hunter

    --Rune of Quick Strike/Sniper Training

step
    #season 2
    #completewith next
    +|cRXP_WARN_这个符文在组队时非常简单。如果单独行动，推荐18级以上|r << Warrior
    +|cRXP_WARN_这个符文在组队时非常简单。如果单独行动，推荐16级以上|r << Hunter
step
    #season 2
    .goto The Barrens,62.77,38.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基尔克斯|r 对话
    >>|cRXP_BUY_从他那里购买|r |T135129:0|t[猎鱼叉] |cRXP_BUY_|r
    .collect 208773,1 --Fishing Harpoon (1)
    .target Kilxx
    .train 425443,1 << Warrior
    .train 416091,1 << Hunter
step
    #season 2
    .goto The Barrens,64.51,39.32
    .use 208773 >>对|cRXP_ENEMY_布鲁兹|r 使用 |T135129:0|t[猎鱼叉]并击杀他。拾取他的 |T134419:0|t[|cRXP_FRIENDLY_迅捷打击符文|r] << Warrior
    .use 208773 >>对|cRXP_ENEMY_布鲁兹|r 使用 |T135129:0|t[猎鱼叉]并击杀他。拾取他的 |T134419:0|t[|cRXP_FRIENDLY_狙击手符文|r] << Hunter
    >>|cRXP_WARN_它会在水中的沉船周围巡逻|r
    .collect 208778,1 << Warrior --Rune of Quick Strike (1)
    .collect 208777,1 << Hunter --Rune of the Sniper (1)
    .unitscan Bruuz
    .train 425443,1 << Warrior
    .train 416091,1 << Hunter
step << Warrior
    #season 2
    .train 425443 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_迅捷打击符文|r] |cRXP_WARN_训练|r |T132394:0|t[迅捷打击]
    .use 208778
    .itemcount 208778,1
step << Hunter
    #season 2
    .train 416091 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_狙击手符文|r] |cRXP_WARN_来训练|r |T132212:0|t[狙击手训练]
    .use 208777
    .itemcount 208777,1

    ]])
