if GetLocale() ~= "zhCN" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group RestedXP 无限 地下城指南 (联盟)
#subgroup 地下城指南 1-20级
--#groupid RXP-SRGCE-A1
#name 1-5级 寒脊山谷
#next 5-11级 丹莫罗
#defaultfor Dwarf/Gnome

step
#include RestedXP 永久向导 A\1-5级 寒脊山谷
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group RestedXP 无限 地下城指南 (联盟)
#subgroup 地下城指南 1-20级
--#groupid RXP-SRGCE-A1
#name 5-11级 丹莫罗
#next 11-12级 艾尔文森林 (矮人/侏儒);11-12级 虚空行者任务;12-14级 洛克莫丹 (矮人/侏儒);11-13级 洛克莫丹 (猎人)
#defaultfor Dwarf/Gnome

step
#include RestedXP 永久向导 A\5-11级 丹莫罗
]])

RXPGuides.RegisterGuide([[
#forever
<< Alliance !Hunter
#group RestedXP 无限 地下城指南 (联盟)
#subgroup 地下城指南 1-20级
--#groupid RXP-SRGCE-A1
#name 11-12级 艾尔文森林 (矮人/侏儒)
#version 1
#defaultfor Gnome/Dwarf
#next 12-14级 洛克莫丹 (矮人/侏儒)

step
#include RestedXP 永久向导 A\11-12级 艾尔文森林 (矮人/侏儒)
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance !Hunter
#group RestedXP 无限 地下城指南 (联盟)
#subgroup 地下城指南 1-20级
--#groupid RXP-SRGCE-A1
#name 12-14级 洛克莫丹 (矮人/侏儒)
#next 13-15级 西部荒野
#defaultfor Gnome/Dwarf

step
#include RestedXP 永久向导 A\12-14级 洛克莫丹 (矮人/侏儒)
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Hunter
#group RestedXP 无限 地下城指南 (联盟)
#subgroup 地下城指南 1-20级
--#groupid RXP-SRGCE-A1
#name 11-13级 洛克莫丹 (猎人)
#next 13-15级 西部荒野
#defaultfor Dwarf

step
#include RestedXP 永久向导 A\11-13级 洛克莫丹 (猎人)@NormalRouteStart-NormalRouteEnd
]])