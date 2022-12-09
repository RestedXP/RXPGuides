local addonName, addon = ...

local L = LibStub("AceLocale-3.0"):NewLocale(addonName, "zhTW", false)
if not L then return end

-- Before adding new items, check for global strings to use instead
-- https://github.com/tekkub/wow-globalstrings/blob/master/GlobalStrings/enUS.lua

_G["BINDING_NAME_" .. "CLICK RXPItemFrameButton1:LeftButton"] =
    "當前物品按鈕 1"
_G["BINDING_NAME_" .. "CLICK RXPItemFrameButton2:LeftButton"] =
    "當前物品按鈕 2"
_G["BINDING_NAME_" .. "CLICK RXPItemFrameButton3:LeftButton"] =
    "當前物品按鈕 3"
_G["BINDING_NAME_" .. "CLICK RXPItemFrameButton4:LeftButton"] =
    "當前物品按鈕 4"

-- Full common phrases

-- Words
L.words = {["Accept"] = _G.ACCEPT, ["Kill"] = "擊殺"}

-- Core Addon UI translations
L["Error parsing guides\nTotal guides loaded: %d/%s"] =
    "錯誤解析指南\n載入的總指南: %d/%s"
L["Error: Unable to parse guides"] =
    "錯誤：無法解析指南，導入字符串無效"
L["Paste encoded strings"] = "粘貼編碼字符串"
L["Guides to import"] = "導入指南"
L["RestedXP Guides"] = "指南"
L["Quest auto accept/turn in"] = "任務自動接受/上交"
L["Holding the Control key modifier also toggles the quest auto accept feature on and off"] =
    "當按住 Control 鍵時，修改器還會打開和關閉任務自動接受功能"
L["Trainer automation"] = "訓練師自動化"
L["Allows the guide to buy useful leveling spells automatically"] =
    "允許指南自動購買有用的練級法術"
L["Flight Path automation"] = "飛行路徑自動化"
L["Allows the guide to automatically fly you to your destination"] =
    "允許指南自動帶您前往目的地"
L["Hide Mini Map Pins"] = "隱藏小地圖圖釘"
L["Show unused guides"] = "顯示未使用的指南"
L["Displays guides that are not applicable for your class/race such as starting zones for other races"] =
    "顯示不適用於您的職業/種族的指南，例如其他種族的起始區域"
L["Auto load starting zone guides"] = "自動載入起始區指南"
L["Automatically picks a suitable guide whenever you log in for the first time on a character"] =
    "首次登入角色時自動選擇合適的指南"
L["Hide waypoint arrow"] = "隱藏航點箭頭"
L["Hide Active Item window"] = "隱藏當前物品視窗"
L["Hide Window"] = "隱藏視窗"
L["Hides the main window"] = "隱藏主視窗"
L["Lock Frames"] = "鎖框"
L["Disable dragging/resizing, use alt+left click on the main window to resize it"] =
    "禁用拖動/調整大小，使用 alt+左鍵單擊主視窗來調整大小"
L["Show step list"] = "顯示進度列表"
L["Show/Hide the bottom frame listing all the steps of the current guide"] =
    "顯示/隱藏列出當前指南所有進度的底部框架"
L["Hide completed steps"] = "隱藏已完成的進度"
L["Only shows current and future steps on the step list window"] =
    "僅在進度列表視窗中顯示當前和未來進度"
L["Highlight active map pins"] = "突出顯示活動地圖圖釘"
L["Show a targeting circle around active map pins"] =
    "在活動地圖圖釘周圍顯示一個目標圈"
L["Hardcore mode"] = "硬核模式"
L["Adjust the leveling routes to the deathless ruleset"] =
    "將升等路線調整至不會死亡的路線"
L["Season of Mastery"] = "大師賽季"
L["Adjust the leveling routes to the Season of Mastery changes (40/100% quest xp)"] =
    "調整升等路線以適應大師賽季的變化 (40/100% quest xp)"
L["Northrend Loremaster"] = "北裂境博學大師"
L["Adjust the routes to include almost every quest in the Northrend zones"] =
    "調整路線以包含北裂境地區的幾乎所有任務"
L["Arrow Scale"] = "箭頭比例"
L["Scale of the Waypoint Arrow"] = "導航箭頭的比例"
L["Arrow Text Size"] = "箭頭文字大小"
L["Size of the waypoint arrow text"] = "導航箭頭文字的大小"
L["Window Scale"] = "視窗比例"
L["Scale of the Main Window, use alt+left click on the main window to resize it"] =
    "主視窗的比例，使用 alt+左鍵單擊主視窗來調整它的大小"
L["Number of Map Pins"] = "地圖針數"
L["Number of map pins shown on the world map"] =
    "世界地圖上顯示的地圖圖釘數量"
L["Map Pin Scale"] = "地圖引腳比例"
L["Adjusts the size of the world map pins"] =
    "調整世界地圖圖釘的大小"
L["Distance Between Pins"] = "引腳之間的距離"
L["If two or more steps are very close together, this addon will group them into a single pin on the map. Adjust this range to determine how close together two steps must be to form a group."] =
    "如果兩個或多個進度非常接近，此插件會將它們分組到地圖上的單個圖釘中。 調整此範圍以確定兩個進度必須靠得多近才能形成一個組。"
L["Map Pin Background Opacity: %.2f"] = "地圖圖釘背景不透明度：%.2f"
L["The opacity of the black circles on the map and mini map"] =
    "地圖和小地圖上黑圈的不透明度"
L["Current step frame anchor"] = "當前步幀錨"
L["Sets the current step frame to grow from bottom to top or top to bottom by default"] =
    "設置當前步進幀默認從下到上或從上到下增長"
L["Batching window size (ms)"] = "批處理視窗大小 (毫秒)"
L["Adjusts the batching window tolerance, used for hearthstone batching"] =
    "調整批處理視窗容差，用於爐石批處理"
L["Content phase"] = "內容階段"
L["Adjusts the guide routes to match the content phase\nPhase 2: Dire Maul quests\nPhase 3: 100% quest XP (SoM)\nPhase 4: ZG/Silithus quests\nPhase 5: AQ quests\nPhase 6: Eastern Plaguelands quests"] =
    "調整引導路線以匹配內容階段\n第 2 階段：厄運之槌任務\n第 3 階段: 100% 任務 XP (SoM)\n第 4 階段: ZG/希利蘇斯任務\n第 5 階段:AQ 任務\n第 6 階段：東瘟疫之地任務"
L["Experience rates"] = "經驗率"
L["Adjusts the guide routes to match increased xp rate bonuses"] =
    "調整引導路線以匹配增加的經驗值獎勵"
L["Please restart your game client and try again"] =
    "請重新啟動您的遊戲客戶端，然後重試"
L["Failed to Import Guides: Invalid Import String"] =
    "導入指南失敗：導入字符串無效"
L["Must reload UI"] = "必須重新載入 UI"
L["Guide Import"] = "引導導入"
L["Currently loaded imported guides"] = "當前載入的導入指南"
L["Delete imported guide"] = "刪除導入的指南"
L["Remove"] = "消除"
L["Purge All Data"] = "清除所有數據"
L["This action will remove ALL guides from the database\nAre you sure?"] =
    "此操作將從數據庫中刪除所有指南\n您確定嗎？"
L["Reload guides and UI"] = "重新載入指南和 UI"
L["Import"] = "進口"
L["This requires a reload to take effect, continue?"] =
    "這需要重新載入才能生效，繼續嗎？"
L["Extras"] = "額外"
L["Optional extras"] = "可選額外"
L["Optional Features"] = "可選功能"
L["Leveling Tracker"] = "升等跟蹤器"
L["Enable Leveling Tracker"] = "啟用升等跟蹤器"
L["Always Open Leveling Report With Character Panel"] =
    "經常使用字符面板打開升等報告"
L["Enables the RestedXP Leveling Report when you open your character panel"] =
    "打開角色面板時啟用 RestedXP 升等報告"
L["Enable Leveling Report Inspections"] = "啟用升等報告檢查"
L["Send or receive inspection requests for other Leveling Reports"] =
    "發送或接收其他升等報告的檢查請求"
L["Level Splits"] = "級別拆分"
L["Enable Level Splits"] = "啟用級別拆分"
L["Level Splits History"] = "級別拆分歷史"
L["Historical levels to show"] = "要顯示的歷史水平"
L["Level Splits Font Size"] = "級別拆分字體大小"
L["Level Splits Opacity"] = "級別拆分不透明度"
L["Lower number to make Level Splits more transparent"] =
    "較低的數字使級別拆分更透明"
L["Communications"] = "通訊"
L["Announcements"] = "公告"
L["Announce Level Ups (Emote)"] = "宣布升等（表情）"
L["Make a public emote when you level up"] = "升等時公開表情"
L["Announce Level Ups (Party Chat)"] = "宣布升等（派對聊天）"
L["Announce in party chat when you level up"] =
    "升等時在隊伍聊天中宣布"
L["Announce Level Ups (Guild Chat)"] = "宣布升等（公會聊天）"
L["Announce in guild chat when you level up"] =
    "升等時在公會聊天中宣布"
L["Group coordination"] = "團隊合作"
L["Send announcements without another RXP user in group"] =
    "在組中沒有其他 RXP 用戶的情況下發送通知"
L["Without this checked we will only send announcements if another RestedXP User is in your group"] =
    "如果沒有選中此選項，我們只會在您的組中有另一個 RestedXP 用戶時發送通知"
L["Announce when Quest Step is completed"] = "任務進度完成時通知"
L["Announce in party chat when you complete certain quests (.complete)"] =
    "當您完成某些任務時在群聊中宣布 (.complete)"
L["Announce when all Step items are collected"] =
    "收集所有任務物品時宣布"
L["Announce in party chat when you collect all the items relevant to a quest (.collect)"] =
    "當您收集與任務相關的所有物品時在隊伍聊天中宣布（.collect）"
L["Announce Flying Step timers"] = "宣布飛步計時器"
L["Announce in party chat where you're flying and how long until you arrive"] =
    "在隊伍聊天中宣布您的飛行地點以及您到達的時間"
L["Enable Addon Version Checks"] = "啟用插件版本檢查"
L["Advertises and compares addon versions with all RXP users in party"] =
    "向所有 RXP 用戶宣傳和比較插件版本"
L["Ignore Questie announcements"] = "忽略 Questie 公告"
L["Send quest and collect step announcements even if Questie is enabled"] =
    "即使啟用了 Questie，也可以發送任務並收集進度通知"
L["Advanced Settings"] = "高級設置"
L["Enable Beta Features"] = "啟用 Beta 功能"
L["Enables new features, forces reload to take effect"] =
    "啟用新功能，強制重新載入生效"
L["Enable Debug"] = "啟用調試"
L["Extras"] = "附加功能"

L["Give Feedback for step"] = "反饋進度"
L["I just leveled from %d to %d in %s"] =
    "我剛剛從 %d 升等到 %d 使用了 %s"
L["I just leveled up to %d"] = "我剛升等到 %d"
L["There's a new addon version (%s) available"] =
    "有一個新的插件版本 (%s) 可用"
L["There's a new version (%s) available for %s"] =
    "有一個可用於 %s 的新版本 (%s)"
L["Completed step %d - %s"] = "已完成進度 %d - %s"
L["Collected step %d - %s"] = "收集的進度 %d - %s"
L["Flying to %s ETA %s"] = "飛往 %s ETA %s"
L["Describe your issue:"] = "描述你的問題："
L["Do not edit below this line"] = "請勿在此行下方編輯"
L["RestedXP Feedback Form"] = "RestedXP 反饋表"
L["Join our support discord at discord.gg/RestedXP and copy paste this form into #addon-feedback"] =
    "在 discord.gg/RestedXP 加入我們的支持不和諧並將此表格複製粘貼到#addon-feedback"
L["Objective Complete"] = "目標完成"
L["Error parsing guide"] = "錯誤解析指南"
L["Missing pre-requisites"] = "缺少先決條件"
L["Invalid quest ID"] = ""
L["Skip to step %d if you are level %d or above"] =
    "如果您的等級為 %d 或更高，請跳至進度 %d"
L["(Skip this step if you are level %d or above)"] =
    "(如果你是 %d 級或以上，請跳過此進度)"
L["Attempting to withdraw"] = "試圖撤回"
L["Attempting to deposit"] = "嘗試存款"
L["Do the Blasted Lands collection quests"] = "做詛咒之地收集任務"
L["Collect the following items:"] = "收集以下物品:"
L["Click to view the link"] = "點擊查看鏈接"
L["Stable your pet"] = "穩定你的寵物"
L["Train skills"] = "訓練技能"
L["Sell junk/resupply"] = "賣垃圾/補給"
L["Grind until you are %.0f%% into %s with %s"] =
    "重複做，直到達到 %.0f%%, %s （%s）"
L["Grind until you are %s into %s with %s"] =
    "重複做，直到達到 %s, %s （%s）"
L["Grind until you are %d away from %s with %s"] =
    "重複做，直到 %d 距離 %s (%s)"
L["Grind until you are %d xp away from level %s"] =
    "重複做，直到 %d xp 距離 %s 級"
L["Grind until you are %s xp into level %s"] = "重複直到 %s xp（%s 級）"
L["Grind until you are %.0f%% into level %s"] =
    "重複直到 %.0f%% （%s 級）"
L["Throw away %s%s from your bags"] = "把 %s%s 從你的包包裡扔掉"
L["Die and respawn at the graveyard"] =
    "自盡，在墓地使用靈魂醫者復活"
L["Fly to"] = "飛到"
L["Get the %s flight path"] = "獲取 %s 的飛行路徑"
L["Set your Hearthstone to"] = "在以下地點設置爐石："
L["Go to"] = "去"
L["Retrieving quest data"] = "檢索任務數據"
L["Guide has no name"] = "指南沒有名字"
L["Error parsing guide"] = "指南解析錯誤"
L["Unable to decode cached guide (%s), removed"] =
    "無法解碼緩存的指南 (%s)，已刪除"
L["Guides Loaded Successfully"] = "指南載入成功"
L["Loading Guides"] = "載入指南"
L["Open Feedback Form"] = "打開反饋表"
L["Leveling report"] = "升級報告"
L["Import guide"] = "導入指南"
L["Activate the Gold Assistant mode"] = "開啟黃金助手模式"
L["Activate the Quest Guide mode"] = "激活任務指南模式"
L["Activate Hardcore mode"] = "激活硬核模式"
L["Deactivate Hardcore mode"] = "停用硬核模式"
L["Unused Guides"] = "未使用的指南"
L["Gold Farming Guides"] = "賺錢指南"
L["Available Guides"] = "可用指南"
L["Go to step"] = "跳到進度"
L["Welcome to RestedXP Guides\nRight click to pick a guide"] =
    "歡迎使用 RestedXP 指南\n右鍵單擊選擇指南"
L["Reload Guide"] = "重新載入指南"
L["Select another guide"] = "選擇其他指南"
L["Step %d"] = "第 %d 步"
L["Level %d time"] = "第 %d 級時間"
L["Level %d"] = "等級 %d"
L["Missing Data"] = "缺失數據"
L["Total Time"] = "總時間"
L["Level Time"] = "等級時間"
L["Time to"] = "到 %d 的時間"
L["Temporarily hide, use '/rxp splits' to show again"] =
    "暫時隱藏，使用 '/rxp splits' 再次顯示"
L["Level"] = "等級"
L["Unable to retrieve report for"] = "無法檢索報告"
L["day"] = "天"
L["days"] = "天"
L["hour"] = "小時"
L["hours"] = "小時"
L["minute"] = "分鐘"
L["minutes"] = "分鐘"
L["second"] = "秒"
L["seconds"] = "秒"
L["Teamwork"] = "團隊合作"
L["Experience Sources"] = "經驗來源"
L["Zones & Dungeons"] = "區域和地下城"
L["In-progress"] = "進行中"
L["Time spent"] = "所花費的時間"
L["Reached Level"] = "達到等級"
L["Max"] = "最大限度"
L["Resetting level %d start time to now!"] =
    "將第 %d 級開始時間重置為現在！"
L["Quest is being picked up at"] = "任務正在領取"
L["Quest is being turned in at"] = "任務正在提交"
L["Development"] = "發展"
