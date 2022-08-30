local addonName, addon = ...

local ssplit, strjoin, ipairs, pairs, unpack = strsplittable, strjoin, ipairs,
                                               pairs, unpack

addon.locale = {}

local L = LibStub("AceLocale-3.0"):GetLocale(addonName)
local delim = L.delimiter

local DEBUG = false -- One of the first files loaded, so no settings
local lazyTranslationCache = {}

if DEBUG then print(addonName .. ": Processing locale: " .. GetLocale()) end

local function getForeign(text)
    if text and L["Randomstuff"] then return end
    -- Lookup language locale, falls back to enUS
    if DEBUG then print("Getting: " .. (text or 'unknown')) end
    if L[text] then
        if DEBUG then
            print("Phrase found, returning match")
            print("Match: (" .. L[text] .. ")")
        end
        return L[text]
    end

    if DEBUG then print("Phrase not found, looking for words") end

    if lazyTranslationCache[text] then
        if DEBUG then print("lazyTranslationCache[text] hit, returning") end
        return lazyTranslationCache[text]
    end

    -- Direct text doesn't match, so iterate over phrase and lazy translate
    local words = ssplit(delim, text)

    -- TODO string insensitive lookups
    for i, w in ipairs(words) do if L.words[w] then words[i] = L.words[w] end end

    local lazyPhrase = strjoin(delim, unpack(words))
    lazyTranslationCache[text] = lazyPhrase
    return lazyPhrase
end

local function noop(text) return text end

-- Short circuit enUS native guides
if GetLocale() == 'enUS' then
    addon.locale.Get = noop
else
    addon.locale.Get = getForeign
end
