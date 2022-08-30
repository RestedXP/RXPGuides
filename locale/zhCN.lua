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

L.words = {["Accept"] = "接受", ["Kill"] = "杀"}

L["Error parsing guides"] = "错误解析指南\n加载的总指南: %d/%s"
L["Error: Unable to parse guides"] =
    "错误：无法解析指南，导入字符串无效"
L["Paste encoded strings"] = "粘贴编码字符串"
