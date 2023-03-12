local _, addon = ...

if addon.player.class ~= "HUNTER" then return end

addon.talents.RegisterGuide([[
#name Beast Mastery
#next Marksman Raiding
#minLevel 10
#maxLevel 80
level


    .retrain
]])
