local addonName, addon = ...

local L = LibStub("AceLocale-3.0"):NewLocale(addonName, "zhCN", false)
if not L then return end

-- Before adding new items, check for global strings to use instead
-- https://github.com/tekkub/wow-globalstrings/blob/master/GlobalStrings/enUS.lua

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
L.words = {["Accept"] = _G.ACCEPT, ["Kill"] = "杀"}

-- Core Addon UI translations
L["Error parsing guides\nTotal guides loaded: %d/%s"] =
    "错误解析指南\n加载的总指南: %d/%s"
L["Error: Unable to parse guides"] =
    "错误：无法解析指南，导入字符串无效"
L["Paste encoded strings"] = "粘贴编码字符串"
L["Guides to import"] = "导入指南"
L["RestedXP Guides"] = "指南"
L["Quest auto accept/turn in"] = "任务自动接受/上交"
L["Holding the Control key modifier also toggles the quest auto accept feature on and off"] =
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
L["Arrow Scale"] = "箭头比例"
L["Scale of the Waypoint Arrow"] = "航点箭头的比例"
L["Arrow Text Size"] = "箭头文字大小"
L["Size of the waypoint arrow text"] = "航点箭头文本的大小"
L["Window Scale"] = "窗口比例"
L["Scale of the Main Window, use alt+left click on the main window to resize it"] =
    "主窗口的比例，使用 alt+左键单击主窗口来调整它的大小"
L["Number of Map Pins"] = "地图针数"
L["Number of map pins shown on the world map"] =
    "世界地图上显示的地图图钉数量"
L["Map Pin Scale"] = "地图引脚比例"
L["Adjusts the size of the world map pins"] =
    "调整世界地图图钉的大小"
L["Distance Between Pins"] = "引脚之间的距离"
L["If two or more steps are very close together, this addon will group them into a single pin on the map. Adjust this range to determine how close together two steps must be to form a group."] =
    "如果两个或多个步骤非常接近，此插件会将它们分组到地图上的单个图钉中。 调整此范围以确定两个步骤必须靠得多近才能形成一个组。"
L["Map Pin Background Opacity: %.2f"] = "地图图钉背景不透明度：%.2f"
L["The opacity of the black circles on the map and mini map"] =
    "地图和小地图上黑圈的不透明度"
L["Current step frame anchor"] = "当前步帧锚"
L["Sets the current step frame to grow from bottom to top or top to bottom by default"] =
    "设置当前步进帧默认从下到上或从上到下增长"
L["Batching window size (ms)"] = "批处理窗口大小 (毫秒)"
L["Adjusts the batching window tolerance, used for hearthstone batching"] =
    "调整批处理窗口容差，用于炉石批处理"
L["Content phase"] = "内容阶段"
L["Adjusts the guide routes to match the content phase\nPhase 2: Dire Maul quests\nPhase 3: 100% quest XP (SoM)\nPhase 4: ZG/Silithus quests\nPhase 5: AQ quests\nPhase 6: Eastern Plaguelands quests"] =
    "调整引导路线以匹配内容阶段\n第 2 阶段：厄运之槌任务\n第 3 阶段: 100% 任务 XP (SoM)\n第 4 阶段: ZG/希利苏斯任务\n第 5 阶段:AQ 任务\n第 6 阶段：东瘟疫之地任务"
L["Experience rates"] = "经验率"
L["Adjusts the guide routes to match increased xp rate bonuses"] =
    "调整引导路线以匹配增加的经验值奖励"
L["Please restart your game client and try again"] =
    "请重新启动您的游戏客户端，然后重试"
L["Failed to Import Guides: Invalid Import String"] =
    "导入指南失败：导入字符串无效"
L["Must reload UI"] = "必须重新加载 UI"
L["Guide Import"] = "引导导入"
L["Currently loaded imported guides"] = "当前加载的导入指南"
L["Delete imported guide"] = "删除导入的指南"
L["Remove"] = "消除"
L["Purge All Data"] = "清除所有数据"
L["This action will remove ALL guides from the database\nAre you sure?"] =
    "此操作将从数据库中删除所有指南\n您确定吗？"
L["Reload guides and UI"] = "重新加载指南和 UI"
L["Import"] = "进口"
L["This requires a reload to take effect, continue?"] =
    "这需要重新加载才能生效，继续吗？"
L["Extras"] = "额外"
L["Optional extras"] = "可选额外"
L["Optional Features"] = "可选功能"
L["Leveling Tracker"] = ""
L["Leveling Tracker"] = "调平跟踪器"
L["Enable Leveling Tracker"] = "启用调平跟踪器"
L["Always Open Leveling Report With Character Panel"] =
    "始终使用字符面板打开调平报告"
L["Enables the RestedXP Leveling Report when you open your character panel"] =
    "打开角色面板时启用 RestedXP 升级报告"
L["Enable Leveling Report Inspections"] = "启用调平报告检查"
L["Send or receive inspection requests for other Leveling Reports"] =
    "发送或接收其他调平报告的检查请求"
L["Level Splits"] = "级别拆分"
L["Enable Level Splits"] = "启用级别拆分"
L["Level Splits History"] = "级别拆分历史"
L["Historical levels to show"] = "要显示的历史水平"
L["Level Splits Font Size"] = "级别拆分字体大小"
L["Level Splits Opacity"] = "级别拆分不透明度"
L["Lower number to make Level Splits more transparent"] =
    "较低的数字使级别拆分更透明"
L["Communications"] = "通讯"
L["Announcements"] = "公告"
L["Announce Level Ups (Emote)"] = "宣布升级（表情）"
L["Make a public emote when you level up"] = "升级时公开表情"
L["Announce Level Ups (Party Chat)"] = "宣布升级（派对聊天）"
L["Announce in party chat when you level up"] =
    "升级时在聚会聊天中宣布"
L["Announce Level Ups (Guild Chat)"] = "宣布升级（公会聊天）"
L["Announce in guild chat when you level up"] =
    "升级时在公会聊天中宣布"
L["Group coordination"] = "集团协调"
L["Send announcements without another RXP user in group"] =
    "在组中没有其他 RXP 用户的情况下发送通知"
L["Without this checked we will only send announcements if another RestedXP User is in your group"] =
    "如果没有选中此选项，我们只会在您的组中有另一个 RestedXP 用户时发送通知"
L["Announce when Quest Step is completed"] = "任务步骤完成时通知"
L["Announce in party chat when you complete certain quests (.complete)"] =
    "当您完成某些任务时在群聊中宣布 (.complete)"
L["Announce when all Step items are collected"] =
    "收集所有步骤物品时宣布"
L["Announce in party chat when you collect all the items relevant to a quest (.collect)"] =
    "当您收集与任务相关的所有物品时在聚会聊天中宣布（.collect）"
L["Announce Flying Step timers"] = "宣布飞步计时器"
L["Announce in party chat where you're flying and how long until you arrive"] =
    "在聚会聊天中宣布您的飞行地点以及您到达的时间"
L["Enable Addon Version Checks"] = "启用插件版本检查"
L["Advertises and compares addon versions with all RXP users in party"] =
    "向所有 RXP 用户宣传和比较插件版本"
L["Ignore Questie announcements"] = "忽略 Questie 公告"
L["Send quest and collect step announcements even if Questie is enabled"] =
    "即使启用了 Questie，也可以发送任务并收集步骤通知"
L["Advanced Settings"] = "高级设置"
L["Enable Beta Features"] = "启用 Beta 功能"
L["Enables new features, forces reload to take effect"] =
    "启用新功能，强制重新加载生效"
L["Enable Debug"] = "启用调试"
L["Extras"] = "附加功能"

L["Give Feedback for step"] = "反馈步骤"
L["I just leveled from %d to %d in %s"] =
    "我刚刚在 %s 内从 %d 升级到 %d"
L["I just leveled up to %d"] = "我刚升级到 %d"
L["There's a new addon version (%s) available"] =
    "有一个新的插件版本 (%s) 可用"
L["There's a new version (%s) available for %s"] =
    "有一个可用于 %s 的新版本 (%s)"
L["Completed step %d - %s"] = "已完成步骤 %d - %s"
L["Collected step %d - %s"] = "收集的步骤 %d - %s"
L["Flying to %s ETA %s"] = "飞往 %s ETA %s"
L["Describe your issue:"] = "描述你的问题："
L["Do not edit below this line"] = "请勿在此行下方编辑"
L["RestedXP Feedback Form"] = "RestedXP 反馈表"
L["Join our support discord at discord.gg/RestedXP and copy paste this form into #addon-feedback"] =
    "在 discord.gg/RestedXP 加入我们的支持不和谐并将此表格复制粘贴到#addon-feedback"
L["Objective Complete"] = "目标完成"
L["Error parsing guide"] = "错误解析指南"
L["Missing pre-requisites"] = "缺少先决条件"
L["Invalid quest ID"] = ""
L["Skip to step %d if you are level %d or above"] =
    "如果您的等级为 %d 或更高，请跳至步骤 %d"
L["(Skip this step if you are level %d or above)"] =
    "(如果你是 %d 级或以上，请跳过此步骤)"
L["Attempting to withdraw"] = "试图撤回"
L["Attempting to deposit"] = "尝试存款"
L["Do the Blasted Lands collection quests"] = "做诅咒之地收集任务"
L["Collect the following items:"] = "收集以下物品:"
L["Click to view the link"] = "点击查看链接"
L["Stable your pet"] = "稳定你的宠物"
L["Train skills"] = "训练技能"
L["Sell junk/resupply"] = "卖垃圾/补给"
L["Grind until you are %.0f%% into %s with %s"] = "用 %s 磨到 %.0f%% 成 %s"
L["Grind until you are %s into %s with %s"] = "和 %s 一起磨到 %s 到 %s"
L["Grind until you are %d away from %s with %s"] =
    "用 %s 研磨直到你离 %s %d"
L["Grind until you are %d xp away from level %s"] =
    "磨到你距离 %s 级 %d xp"
L["Grind until you are %s xp into level %s"] = "磨到你的 %s xp 到 %s 级"
L["Grind until you are %.0f%% into level %s"] = "磨到你 %.0f%% 到 %s 级"
L["Throw away %s%s from your bags"] = "把 %s%s 从你的包里扔掉"
L["Die and respawn at the graveyard"] = "在墓地死去重生"
L["Fly to"] = "飞向"
L["Get the %s flight path"] = "获取 %s 飞行路径"
L["Set your Hearthstone to"] = "将你的炉石设置为"
L["Go to"] = "去"
L["Retrieving quest data"] = "检索任务数据"
L["Guide has no name"] = "向导没有名字"
L["Error parsing guide"] = "错误解析指南"
L["Unable to decode cached guide (%s), removed"] =
    "无法解码缓存的指南 (%s)，已删除"
L["Guides Loaded Successfully"] = "指南加载成功"
L["Loading Guides"] = "加载指南"
L["Open Feedback Form"] = "打开反馈表"
L["Leveling report"] = "调平报告"
L["Import guide"] = "进口指南"
L["Activate the Gold Assistant mode"] = "开启黄金助手模式"
L["Activate the Quest Guide mode"] = "激活任务指南模式"
L["Activate Hardcore mode"] = "激活硬核模式"
L["Deactivate Hardcore mode"] = "停用硬核模式"
L["Unused Guides"] = "未使用的指南"
L["Gold Farming Guides"] = "黄金种植指南"
L["Available Guides"] = "可用指南"
L["Go to step"] = "转到步骤"
L["Welcome to RestedXP Guides\nRight click to pick a guide"] =
    "欢迎使用 RestedXP 指南\n右键单击选择指南"
L["Reload Guide"] = "重新加载指南"
L["Select another guide"] = "选择其他指南"
L["Step %d"] = "第%d步"
L["Level %d time"] = "第 %d 级时间"
L["Level %d"] = "级别 %d"
L["Missing Data"] = "缺失数据"
L["Total Time"] = "总时间"
L["Level Time"] = "等级时间"
L["Time to"] = "到 %d 的时间"
L["Temporarily hide, use '/rxp splits' to show again"] =
    "暂时隐藏，使用 '/rxp splits' 再次显示"
L["Level"] = "等级"
L["Unable to retrieve report for"] = "无法检索报告"
L["day"] = "天"
L["days"] = "天"
L["hour"] = "小时"
L["hours"] = "小时"
L["minute"] = "分钟"
L["minutes"] = "分钟"
L["second"] = "第二"
L["seconds"] = "第二"
L["Teamwork"] = "团队合作"
L["Experience Sources"] = "经验来源"
L["Zones & Dungeons"] = "区域和地下城"
L["In-progress"] = "进行中"
L["Time spent"] = "所花费的时间"
L["Reached Level"] = "达到水平"
L["Max"] = "最大限度"
L["Resetting level %d start time to now!"] =
    "将第 %d 级开始时间重置为现在！"
L["Quest is being picked up at"] = "任务正在领取"
L["Quest is being turned in at"] = "任务正在上交"
L["Development"] = "发展"
