local _, addon = ...

if addon.player.class ~= "HUNTER" then return end

addon.talents.RegisterGuide([[
#name Beast Mastery
#next Marksman Raiding
#minLevel 10
#maxLevel 80
level
    .talent 1,1,2,1

level
    .talent 1,1,2,2

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

level -- Unleashed Fury Rank 2
    .talent 1,3,3,2

level -- Unleashed Fury Rank 3
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
]])

addon.talents.RegisterGuide([[
#name Marksman Raiding
#minLevel 80
#maxLevel 80
level
    .talent 1,1,2,1

]])

addon.talents.RegisterGuide([[
#name Ferocity
#pet Ferocity
#minLevel 20
#maxLevel 80
level
    .pettalent 1,1,1,1

level
    .pettalent 1,1,1,2

level
    .pettalent 1,1,2,1

level
    .pettalent 1,2,3,1

level
    .pettalent 1,2,3,2

level
    .pettalent 1,2,3,3

level
    .pettalent 1,3,1,1

level
    .pettalent 1,3,1,2

level
    .pettalent 1,3,1,3

level
    .pettalent 1,4,3,1

level
    .pettalent 1,4,3,2

level
    .pettalent 1,4,3,3

level
    .pettalent 1,5,3,1

level
    .pettalent 1,5,1,1

level
    .pettalent 1,2,2,1

level
    .pettalent 1,6,3,1

-- BM get extra points
level
    .pettalent 1,6,3,1

level
    .pettalent 1,6,3,2

level
    .pettalent 1,5,1,1

level
    .pettalent 1,6,1,2

level
    .pettalent 1,2,2,2
]])

addon.talents.RegisterGuide([[
#name Cunning
#pet Cunning
#minLevel 20
#maxLevel 80
level
    .pettalent 1,1,1,1

]])

addon.talents.RegisterGuide([[
#name Tenacity
#pet Tenacity
#minLevel 20
#maxLevel 80
level
    .pettalent 1,1,1,1

]])
