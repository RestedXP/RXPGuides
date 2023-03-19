local _, addon = ...

if addon.player.class ~= "HUNTER" then return end

--[[
2/2 in Cobra Reflexes IconCobra Reflexes;
1/1 in Dash IconDash;
3/3 in Spiked Collar IconSpiked Collar;
3/3 in Culling the Herd IconCulling the Herd;
3/3 in Spider's Bite IconSpider's Bite;
1/1 in Call of the Wild IconCall of the Wild;
1/1 in Rabid IconRabid;
1/2 in Bloodthirsty IconBloodthirsty, or 1/2 in Boar's Speed IconBoar's Speed;
1/2 in Wild Hunt IconWild Hunt.
]]

addon.talents.RegisterGuide([[
#name Beast Mastery
#next Marksman Raiding
#minLevel 60
#maxLevel 80
level
    .talent 1,1,2,1
    .pettalent 1,1,1
level
    .talent 1,1,2,2
    .pettalent 1,1,2
level
    .talent 1,1,2,3
level
    .talent 1,1,2,4
level
    .talent 1,1,2,5
level
    .talent 1,2,1,1
level
    .talent 1,2,1,2
level =80
    .retrain
]])
