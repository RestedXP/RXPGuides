local addonName, addon = ...

local ssplit, strjoin, ipairs, unpack, next = strsplittable, strjoin, ipairs, unpack, next

addon = LibStub("AceAddon-3.0"):NewAddon(addon, addonName, "AceEvent-3.0")

addon.locale = {}

local L = LibStub("AceLocale-3.0"):GetLocale(addonName)
local delim = L.delimiter

local DEBUG = false -- One of the first files loaded, so no settings
local lazyTranslationCache = {}

if DEBUG then print(addonName .. ": Processing locale: " .. GetLocale()) end

local function getForeign(text)
    if not text then return end
    if L[text] then return L[text] end

    if lazyTranslationCache[text] then return lazyTranslationCache[text] end

    if not L.words or next(L.words) == nil then
        -- No custom words added
        lazyTranslationCache[text] = text
        return text
    end

    if DEBUG then print("Phrase not found, looking for words") end

    -- Direct text doesn't match, so iterate over phrase and lazy translate
    local _ssplit = ssplit or _G.strsplittable or function(d, t) return {strsplit(d, t)} end
    local _strjoin = strjoin or _G.strjoin or _G.string.join
    local words = _ssplit(delim, text)

    -- TODO string insensitive lookups
    for i, w in ipairs(words) do
        -- Extract word while preserving surrounding tags (icons, colors, punctuation)
        local prefix, word, suffix = w:match("^(.-)([%w']+)(.-)$")
        if word and L.words[word] then
            words[i] = prefix .. L.words[word] .. suffix
        end
    end

    local lazyPhrase = _strjoin(delim, unpack(words))
    lazyTranslationCache[text] = lazyPhrase

    return lazyPhrase
end

local function noop(text) return text end

local locale = GetLocale()

-- TODO check if L returned language, remove explicit list
-- Explicitly check supported languages, default to enUS
if locale == 'zhCN' or locale == 'zhTW' or locale == 'frFR' or locale == 'koKR' or locale == 'esES' or locale == 'ruRU' then
    addon.locale.Get = getForeign
else
    addon.locale.Get = noop
end
