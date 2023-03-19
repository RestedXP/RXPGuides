local _, addon = ...

if addon.player.class ~= "SHAMAN" then return end

addon.talents.RegisterGuide([[
#name Enhancement
#next Enhancement Raiding
#minLevel 10
#maxLevel 80
level
    .talent 2,1
level
    .talent 16295
level
    .talent 52456
level
    .talent 17485
level
    .talent 17486
level
    .talent 16255
level >40
    .retrain
]])

if true then return end

addon.talents.RegisterGuide([[
#name Enhancement Raiding
#minLevel 80
level =80
    .retrain
]])
