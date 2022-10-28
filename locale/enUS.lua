local addonName, addon = ...

-- Return nil ('raw') for non-enUS entries
local L = LibStub("AceLocale-3.0"):NewLocale(addonName, "enUS", true, 'raw')

_G["BINDING_NAME_" .. "CLICK RXPItemFrameButton1:LeftButton"] =
    "Active Item Button 1"
_G["BINDING_NAME_" .. "CLICK RXPItemFrameButton2:LeftButton"] =
    "Active Item Button 2"
_G["BINDING_NAME_" .. "CLICK RXPItemFrameButton3:LeftButton"] =
    "Active Item Button 3"
_G["BINDING_NAME_" .. "CLICK RXPItemFrameButton4:LeftButton"] =
    "Active Item Button 4"

_G["BINDING_NAME_" .. "CLICK RXPTargetFrame_FriendlyButton1:LeftButton"] =
    "Active Friendly Target Button 1"
_G["BINDING_NAME_" .. "CLICK RXPTargetFrame_FriendlyButton2:LeftButton"] =
    "Active Friendly Target Button 2"
_G["BINDING_NAME_" .. "CLICK RXPTargetFrame_FriendlyButton3:LeftButton"] =
    "Active Friendly Target Button 3"
_G["BINDING_NAME_" .. "CLICK RXPTargetFrame_FriendlyButton4:LeftButton"] =
    "Active Friendly Target Button 4"

_G["BINDING_NAME_" .. "CLICK RXPTargetFrame_EnemyButton1:LeftButton"] =
    "Active Enemy Target Button 1"
_G["BINDING_NAME_" .. "CLICK RXPTargetFrame_EnemyButton2:LeftButton"] =
    "Active Enemy Target Button 2"
_G["BINDING_NAME_" .. "CLICK RXPTargetFrame_EnemyButton3:LeftButton"] =
    "Active Enemy Target Button 3"
_G["BINDING_NAME_" .. "CLICK RXPTargetFrame_EnemyButton4:LeftButton"] =
    "Active Enemy Target Button 4"

L.delimiter = ' '
-- Words
L.words = {}

-- enUS locale content not needed (yet), parsed guides already enUS
