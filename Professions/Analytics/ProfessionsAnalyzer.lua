local addonName, addon = ...
local L = addon.locale.Get

if not (addon.game == "CLASSIC" or addon.game == "TBC") then return end

addon.professions = addon.professions or {}
addon.professions.profSession = addon.professions.profSession or {}

-- Localize globlas
local _G = _G
local len, fmt, lower, find, match, gmatch = string.len, string.format, string.lower, string.find, string.match, string.gmatch
local tcount, tinsert, twipe, tsort, tremove, tconcat = table.count, table.insert, table.wipe, table.sort, table.remove, table.concat
local pairs, ipairs, next, type, tostring, tonumber, error, unpack = pairs, ipairs, next, type, tostring, tonumber, error, unpack
local max, min, abs, floor, ceil, huge, log = math.max, math.min, math.abs, math.floor, math.ceil, math.huge, math.log

-- Local renaming
local profSession = addon.professions.profSession
local PROFESSIONS = addon.professions.PROFESSIONS

