local _, addon = ...

if addon.player.class ~= "PRIEST" or addon.game ~= "WOTLK" then return end

addon.talents.RegisterGuide([[
#name Priest 10-80
#minLevel 10
#maxLevel 80

level -- Spirit Tap (Rank 1)
    .talent 3,1,1,1

level -- Spirit Tap (Rank 2)
    .talent 3,1,1,2

level -- Spirit Tap (Rank 3)
    .talent 3,1,1,3

level -- Darkness (Rank 1)
    .talent 3,1,3,1

level -- Darkness (Rank 2)
    .talent 3,1,3,2

level -- Darkness (Rank 3)
    .talent 3,1,3,3

level -- Darkness (Rank 4)
    .talent 3,1,3,4

level -- Darkness (Rank 5)
    .talent 3,1,3,5

level -- Shadow Focus (Rank 1)
    .talent 3,2,3,1

level -- Shadow Focus (Rank 2)
    .talent 3,2,3,2

level -- Mind Flay
    .talent 3,3,3,1

level -- Shadow Focus (Rank 3)
    .talent 3,2,3,3

level -- Improved Shadow Word Pain (Rank 1)
    .talent 3,2,2,1

level -- Improved Shadow Word Pain (Rank 2)
    .talent 3,2,2,2

level -- Improved Mind Blast (Rank 1)
    .talent 3,3,2,1

level -- Shadow Reach (Rank 1)
    .talent 3,4,3,1

level -- Shadow Reach (Rank 2)
    .talent 3,4,3,2

level -- Shadow Weaving (Rank 1)
    .talent 3,4,4,1

level -- Shadow Weaving (Rank 2)
    .talent 3,4,4,2

level -- Shadow Weaving (Rank 3)
    .talent 3,4,4,3

level -- Vampiric Embrace
    .talent 3,5,2,1

level -- Improved Vampiric Embrace (Rank 1)
    .talent 3,5,3,1

level -- Improved Vampiric Embrace (Rank 2)
    .talent 3,5,3,2

level -- Focused Mind (Rank 1)
    .talent 3,5,4,1

level -- Focused Mind (Rank 2)
    .talent 3,5,4,2

level -- Focused Mind (Rank 3)
    .talent 3,5,4,3

level -- Mind Melt (Rank 1)
    .talent 3,6,1,1

level -- Mind Melt (Rank 2)
    .talent 3,6,1,2

level -- Improved Devouring Plague (Rank 1)
    .talent 3,6,3,1

level -- Improved Devouring Plague (Rank 2)
    .talent 3,6,3,2

level -- Shadowform
    .talent 3,7,2,1

level -- Improved Devouring Plague (Rank 3)
    .talent 3,6,3,3

level -- Improved Spirit Tap (Rank 1)
    .talent 3,1,2,1

level -- Improved Spirit Tap (Rank 2)
    .talent 3,1,2,2

level -- Improved Mind Blast (Rank 2)
    .talent 3,3,2,2

level -- Improved ShadowForm (Rank 1)
    .talent 3,8,1,1

level -- Improved ShadowForm (Rank 2)
    .talent 3,8,1,2

level -- Misery (Rank 1)
    .talent 3,8,3,1

level -- Misery (Rank 2)
    .talent 3,8,3,2

level -- Misery (Rank 3)
    .talent 3,8,3,3

level -- Vampiric Touch
    .talent 3,9,2,1

level -- Pain and Suffering (Rank 1)
    .talent 3,9,3,1

level -- Pain and Suffering (Rank 2)
    .talent 3,9,3,2

level -- Pain and Suffering (Rank 3)
    .talent 3,9,3,3

level -- Psychic Horror
    .talent 3,9,1,1

level -- Twisted Faith (Rank 1)
    .talent 3,10,3,1

level -- Twisted Faith (Rank 2)
    .talent 3,10,3,2

level -- Twisted Faith (Rank 3)
    .talent 3,10,3,3

level -- Twisted Faith (Rank 4)
    .talent 3,10,3,4

level -- Twisted Faith (Rank 5)
    .talent 3,10,3,5

level -- Dispersion
    .talent 3,11,2,1

level -- Improved Mind Blast (Rank 3)
    .talent 3,3,2,3

level -- Improved Mind Blast (Rank 4)
    .talent 3,3,2,4

level -- Veiled Shadows (Rank 1)
    .talent 3,4,2,1

level -- Veiled Shadows (Rank 2)
    .talent 3,4,2,2

level -- Twin Disciplines (Rank 1)
    .talent 1,1,3,1

level -- Twin Disciplines (Rank 2)
    .talent 1,1,3,2

level -- Twin Disciplines (Rank 3)
    .talent 1,1,3,3

level -- Twin Disciplines (Rank 4)
    .talent 1,1,3,4

level -- Twin Disciplines (Rank 5)
    .talent 1,1,3,5

level -- Improved Mind Blast (Rank 5)
    .talent 3,3,2,5

level -- Improved Psychic Scream (Rank 1)
    .talent 3,3,1,1

level -- Improved Psychic Scream (Rank 2)
    .talent 3,3,1,2

level -- Silence
    .talent 3,5,1,1

level -- Shadow Power (Rank 1)
    .talent 3,7,3,1

level -- Shadow Power (Rank 2)
    .talent 3,7,3,2

level -- Shadow Power (Rank 3)
    .talent 3,7,3,3

level -- Shadow Power (Rank 4)
    .talent 3,7,3,4

level -- Shadow Power (Rank 5)
    .talent 3,7,3,5

level -- Improved Inner Fire (Rank 1)
    .talent 1,2,2,1

level -- Improved Inner Fire (Rank 2)
    .talent 1,2,2,2
]])
