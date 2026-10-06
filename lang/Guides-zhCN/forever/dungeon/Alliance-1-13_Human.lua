if GetLocale() ~= "zhCN" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
<< Alliance
#name 1-6级 北郡
#version 1
#beta
#group RestedXP魔兽世界无限地下城指南（联盟版）
#subgroup （制作中）地下城指南 1-20级
--#groupid RXP-SRGCE-A1
#defaultfor Human
#next 6-11级 艾尔文森林


step
#include RestedXP Forever Guide (A)\1-6 Northshire
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance
#group RestedXP魔兽世界无限地下城指南（联盟版）
#subgroup （制作中）地下城指南 1-20级
--#groupid RXP-SRGCE-A1
#name 6-11级 艾尔文森林
#next 11-13级 洛克莫丹
#defaultfor Human

step
#include RestedXP Forever Guide (A)\6-11 Elwynn Forest
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance
#group RestedXP魔兽世界无限地下城指南（联盟版）
#subgroup （制作中）地下城指南 1-20级
--#groupid RXP-SRGCE-A1
#name 11-13级 洛克莫丹
#next 13-15级 西部荒野；15-16级 领主大厅
#defaultfor Human

step
    #include RestedXP Forever Guide (A)\11-13 Loch Modan@NormalRouteStart-NormalRouteEnd

--If they are 15 they will fly straight to IF and skip all of Westfall. If 14 or below Hearth to SW and then continue to Westfall
--Most likely won't be 15 yet
step
    #optional
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_索格拉姆·伯雷森|r 对话
    .fly Ironforge >>飞往铁炉堡
    .target 索格拉姆·伯雷森
    .zoneskip Ironforge
    .xp <15,1
step << Priest/Paladin/Mage
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_托德雷·铁矿|r 对话 << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_布兰度尔·铁锤|r 对话 << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_丁克|r 对话 << Mage
    .goto 1455/0,-928.48,-4614.620 << Mage
    .goto 1455/0,-912.88,-4625.99 << Priest
    .goto 1455/0,-896.55,-4601.68 << Paladin
    .trainer >>训练你的职业技能
    .target 托德雷·铁矿 << Priest
    .target 布兰度尔·铁锤 << Paladin
    .target 丁克 << Mage
    .xp <15,1
step << Warlock/Rogue
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布瑞尔索恩|r 对话 << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_芬斯维克|r 对话 << Rogue
    .goto 1455/0,-1117.60,-4615.14,15,0 << Warlock
    .goto 1455/0,-1111.62,-4599.09 << Warlock
    .goto 1455/0,-1120.72,-4650.120 << Rogue
    .trainer >>训练你的职业技能
    .target 布瑞尔索恩 << Warlock
    .target 芬斯维克 << Rogue
    .xp <15,1
step << Warrior/Hunter
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷格努斯·雷石|r 对话 << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比尔班·飞钳|r 对话 << Warrior
    .goto 1455/0,-1266.02,-5006.570 << Hunter
    .goto 1455/0,-1234.65,-5035.67 << Warrior
    .trainer >>训练你的职业技能
    .target 雷格努斯·雷石 << Hunter
    .target 比尔班·飞钳 << Warrior
    .xp <15,1

step
    .hs >>炉石回到暴风城
    .zoneskip Stormwind City
    .zoneskip Westfall
    .xp >15,1
]])