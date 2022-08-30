local addonName, addon = ...

local L = LibStub("AceLocale-3.0"):NewLocale(addonName, "zhCN", false)
if not L then return end

_G["BINDING_NAME_" .. "CLICK RXPItemFrameButton1:LeftButton"] =
    "活动项目按钮 1"
_G["BINDING_NAME_" .. "CLICK RXPItemFrameButton2:LeftButton"] =
    "活动项目按钮 2"
_G["BINDING_NAME_" .. "CLICK RXPItemFrameButton3:LeftButton"] =
    "活动项目按钮 3"
_G["BINDING_NAME_" .. "CLICK RXPItemFrameButton4:LeftButton"] =
    "活动项目按钮 4"

-- Full common phrases

-- Words
L.words = {["Accept"] = "接受", ["Kill"] = "杀"}

-- Core Addon UI translations
L["Error parsing guides\nTotal guides loaded: %d/%s"] =
    "错误解析指南\n加载的总指南: %d/%s"
L["Error: Unable to parse guides"] =
    "错误：无法解析指南，导入字符串无效"
L["Paste encoded strings"] = "粘贴编码字符串"
L["Guides to import"] = "导入指南"
L["RestedXP Guides"] = "指南"
L["Quest auto accept/turn in"] = "任务自动接受/上交"
L["Holding the Control key modifier also toggles the quest the quest auto accept feature on and off"] =
    "按住 Control 键修改器还会打开和关闭任务自动接受功能"
L["Trainer automation"] = "培训师自动化"
L["Allows the guide to buy useful leveling spells automatically"] =
    "允许向导自动购买有用的练级法术"
L["Flight Path automation"] = "飞行路径自动化"
L["Allows the guide to automatically fly you to your destination"] =
    "允许导游自动带您前往目的地"
L["Hide Mini Map Pins"] = "隐藏小地图图钉"
L["Show unused guides"] = "显示未使用的指南"
L["Displays guides that are not applicable for your class/race such as starting zones for other races"] =
    "显示不适用于您的班级/比赛的指南，例如其他比赛的起跑区"
L["Auto load starting zone guides"] = "自动加载起始区指南"
L["Automatically picks a suitable guide whenever you log in for the first time on a character"] =
    "首次登录角色时自动选择合适的指南"
L["Hide waypoint arrow"] = "隐藏航点箭头"
L["Hide Active Item window"] = "隐藏活动项目窗口"
L["Hide Window"] = "隐藏窗口"
L["Hides the main window"] = "隐藏主窗口"
L["Lock Frames"] = "锁框"
L["Disable dragging/resizing, use alt+left click on the main window to resize it"] =
    "禁用拖动/调整大小，使用 alt+左键单击主窗口来调整大小"
L["Show step list"] = "显示步骤列表"
L["Show/Hide the bottom frame listing all the steps of the current guide"] =
    "显示/隐藏列出当前指南所有步骤的底部框架"
L["Hide completed steps"] = "隐藏已完成的步骤"
L["Only shows current and future steps on the step list window"] =
    "仅在步骤列表窗口中显示当前和未来步骤"
L["Highlight active map pins"] = "突出显示活动地图图钉"
L["Show a targeting circle around active map pins"] =
    "在活动地图图钉周围显示一个目标圈"
L["Unitscan integration"] = "Unitscan 集成"
L["Automatically adds important npcs to your unitscan list"] =
    "自动将重要的 npc 添加到您的 unitscan 列表中"
L["Hardcore mode"] = "硬核模式"
L["Adjust the leveling routes to the deathless ruleset"] =
    "将升级路线调整为不死规则集"
L["Season of Mastery"] = "精通季节"
L["Adjust the leveling routes to the Season of Mastery changes (40/100% quest xp)"] =
    "调整升级路线以适应精通季节的变化 (40/100% quest xp)"
L["Northrend Loremaster"] = "诺森德博学者"
L["Adjust the routes to include almost every quest in the Northrend zones"] =
    "调整路线以包含诺森德地区的几乎所有任务"
L["Arrow Scale: %.2f"] = "箭头比例：%.2f"
L["Scale of the Waypoint Arrow"] = "航点箭头的比例"
L["Arrow Text Size: %d"] = "箭头文字大小：%d"
L["Size of the waypoint arrow text"] = "航点箭头文本的大小"
L["Window Scale: %.2f"] = "窗口比例：%.2f"
L["Scale of the Main Window, use alt+left click on the main window to resize it"] =
    "主窗口的比例，使用 alt+左键单击主窗口来调整它的大小"
