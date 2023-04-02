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
#minLevel 10
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

level
    .talent 1,2,4,1

level
    .talent 1,2,4,2

level
    .talent 1,1,3,1

level
    .talent 1,3,2,1

level
    .talent 1,3,3,1

level
    .talent 1,3,3,2

level
    .talent 1,3,3,3

level
    .talent 1,3,3,4

level
    .talent 1,3,3,5

level
    .talent 1,4,3,1

level
    .talent 1,4,3,2

level
    .talent 1,4,3,3

level
    .talent 1,4,3,4

level
    .talent 1,4,3,5

level
    .talent 1,5,2,1

level
    .talent 1,5,1,1

level
    .talent 1,5,4,1

level
    .talent 1,5,4,2

level
    .talent 1,6,3,1

level
    .talent 1,6,3,2

level
    .talent 1,6,3,3

level
    .talent 1,6,3,4

level
    .talent 1,6,1,1

level
    .talent 1,7,2,1

level
    .talent 1,6,1,2

level
    .talent 1,7,1,1

level
    .talent 1,7,1,2

level
    .talent 1,7,1,3

level
    .talent 1,8,1,1

level
    .talent 1,8,1,2

level
    .talent 1,8,3,1

level
    .talent 1,8,3,2

level
    .talent 1,8,3,3

level
    .talent 1,9,2,1

level
    .talent 1,8,3,4

level
    .talent 1,8,3,5

level
    .talent 1,9,1,1

level
    .talent 1,9,1,2

level
    .talent 1,10,2,1

level
    .talent 1,10,2,2

level
    .talent 1,10,2,3

level
    .talent 1,10,2,4

level
    .talent 1,10,2,5

level
    .talent 1,11,2,1

level
    .talent 2,1,3,1

level
    .talent 2,1,3,2

level
    .talent 2,1,3,3

level
    .talent 2,1,3,4

level
    .talent 2,1,3,5

level
    .talent 2,2,3,1

level
    .talent 2,2,3,2

level
    .talent 2,2,3,3

level
    .talent 2,2,3,4

level
    .talent 2,2,3,5

level
    .talent 2,3,3,1

level
    .talent 2,3,4,1

level
    .talent 2,3,4,2

level
    .talent 2,3,1,1

level
    .talent 2,3,1,2

level
    .talent 1,5,1,2

level
    .talent 2,1,2,1

level
    .talent 2,1,2,2

level
    .talent 2,1,2,3

level
    .talent 1,9,1,3

level =80
    .retrain
]])
