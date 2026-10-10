if GetLocale() ~= "zhCN" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance
#group RestedXP魔兽世界无限地下城指南（联盟版）
#subgroup （制作中）地下城指南 1-20级
--#groupid RXP-SRGCE-A1
#name 1-5级 寒脊山谷
#next 5-11级 丹莫罗
#defaultfor Dwarf/Gnome

step
#include RestedXP Forever Guide (A)\1-5 Coldridge Valley
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance
#group RestedXP Forever 地下城指南 A
#subgroup （制作中）地下城指南 1-20级
--#groupid RXP-SRGCE-A1
#name 5-11级 丹莫罗
#next 11-12级 艾尔文森林（矮人/侏儒）；11-12级 虚空行者任务；12-14级 洛克莫丹（矮人/侏儒）；11-13级 洛克莫丹（猎人）
#defaultfor Dwarf/Gnome

step
#include RestedXP Forever Guide (A)\5-11 Dun Morogh
]])

RXPGuides.RegisterGuide([[
#forever
<< Alliance !Hunter
#group RestedXP魔兽世界无限地下城指南（联盟版）
#subgroup （制作中）地下城指南 1-20级
--#groupid RXP-SRGCE-A1
#name 11-12 艾尔文森林（矮人/侏儒）
#version 1
#beta
#defaultfor Gnome/Dwarf
#next 12-14 洛克莫丹 (矮人/侏儒)

step
#include RestedXP Forever Guide (A)\11-12 Elwynn (Dwarf/Gnome)
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance !Hunter
#group RestedXP魔兽世界无限地下城指南（联盟版）
#subgroup （制作中）地下城指南 1-20级
--#groupid RXP-SRGCE-A1
#name 12-14 洛克莫丹 (矮人/侏儒)
#next 13-15级 西部荒野
#defaultfor Gnome/Dwarf

step
#include RestedXP Forever Guide (A)\12-14 Loch Modan (Dwarf/Gnome)@LochStart-LochEnd

--Staying Ironforge if 15. Going Stormwind to Westfall if 14 or below.
step
    #completewith Fly2WF
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_考格斯宾|r 对话
    .vendor 5175 >>|cRXP_BUY_如果有的话，|r|cRXP_BUY_购买|r |T133024:0|t[青铜管]
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target 考格斯宾
    .subzoneskip 2257
    .xp >15,1
step
    #optional
    #completewith WestfallTramEnd
    #label Deeprun
    .goto 1455/0,-1330.28,-4840.430
    .subzone 2257 >>进入矿道地铁
    .zoneskip Stormwind City
    .xp >15,1
step
    #optional
    #label WestfallTramEnd
    >>|cRXP_WARN_在等待前往暴风城的地铁时，如有需要可提升|r |T135966:0|t|T135966:0|t[急救] |cRXP_WARN_技能等级|r << Rogue/Warrior/Paladin
    >>|cRXP_WARN_你需要将|r |T135966:0|t[急救]|cRXP_WARN_ 提升至 80，以完成 24 级的一个任务|r << Rogue !Dwarf
    .zone Stormwind City >>乘坐地铁前往暴风城
    .xp >15,1
step
    #completewith Fly2WF
    .goto 1453/0,638.8,-8341.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比利巴布·旋轮|r 对话
    .vendor 5519 >>|cRXP_BUY_如果有的话，|r|cRXP_BUY_购买|r |T133024:0|t[青铜管]
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target 比利巴布·旋轮
    .xp >15,1
step
    #optional
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴隆斯·阿历克斯顿|r 对话
    .accept 399 >>接受任务 童年的记忆
    .target 巴隆斯·阿历克斯顿
    .xp <15,1
    .zoneskip Stormwind City,1
step << Rogue
    #ah
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛尔达·维勒|r 对话
    >>|cRXP_BUY_从她那里购买最多2把|r |T135343:0|t|T135343:0|t[弯刀] |cRXP_BUY_如果你买得起，或者从拍卖行买更好的装备|r
    .collect 2027,1 --Scimitar
    .target 玛尔达·维勒
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp >15,1
step << Rogue
    #ssf
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛尔达·维勒|r 对话
    >>|cRXP_BUY_如果买得起，从她那里买最多2把|r |T135343:0|t|T135343:0|t[弯刀] |cRXP_BUY_即可|r
    .collect 2027,1 --Scimitar
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target 玛尔达·维勒
    .xp >15,1
step << Rogue
    #optional
    #completewith next
    +|cRXP_WARN_装备|r |T135343:0|t[战士阔剑]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.69
    .xp <14,1
step << Mage/Priest/Warlock
    #ah
    #sticky
    #label Wand1
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师亚克森|r 对话
    >>|cRXP_BUY_如果买得起，就买一把|r |T135144:0|t|T135144:0|t[强效魔法杖]|cRXP_BUY_吧|r
    >>|cRXP_WARN_如果你不想这样做，或者无法完成，可以跳过此步骤|r
    .collect 11288,1 --Greater Magic Wand (1)
    .target 拍卖师亚克森
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .xp >15,1
step << Mage/Priest/Warlock
    #ah
    #requires Wand1
    #optional
    +|cRXP_WARN_装备|r |T135144:0|t[强效魔法杖]
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.49
    .xp >15,1
step << Mage/Priest/Warlock
    #ah
    #optional
    +|cRXP_WARN_装备|r |T135144:0|t[强效魔法杖]
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.49
    .xp >15,1
step << Mage/Priest/Warlock
    #ah
    #optional
    .goto 1453/0,807.64,-8880.84,14,0
    .goto 1453/0,804.55,-8862.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_阿德温·凯伦|r对话
    >>|cRXP_WARN_从她那里购买|r |T135468:0|t|T135468:0|t[烟尘魔杖] |cRXP_WARN_|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Ardwyn Cailen
    .money <0.3340
    .itemcount 11288,<1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
--XX If you didn't buy a Greater Magic when you had the chance (1x only)
    .xp >15,1
step << Mage/Priest/Warlock
    #ah
    #optional
    +|cRXP_WARN_装备|r |T135468:0|t[烟尘魔杖]
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .xp >15,1
step
    #label Fly2WF
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance Hunter
#group RestedXP魔兽世界无限地下城指南（联盟版）
#subgroup （制作中）地下城指南 1-20级
--#groupid RXP-SRGCE-A1
#name 11-13 洛克莫丹 (猎人)
#next 13-15级 西部荒野
#defaultfor Dwarf

step
#include RestedXP Forever Guide (A)\11-13 Loch Modan (Hunter)@NormalRouteStart-NormalRouteEnd
]])