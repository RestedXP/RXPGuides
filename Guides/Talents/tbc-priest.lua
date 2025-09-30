local _, addon = ...

if addon.player.class ~= "PRIEST" or addon.game ~= "TBC" then return end

addon.talents.RegisterGuide([[
#name Shadow (Wand) 10-40
#next Shadow 10-70
#minLevel 10
#maxLevel 40

level -- Wand Specialization (Rank 1)
    .talent 1,1,3,1

level -- Wand Specialization (Rank 2)
    .talent 1,1,3,2

level -- Wand Specialization (Rank 3)
    .talent 1,1,3,3

level -- Wand Specialization (Rank 4)
    .talent 1,1,3,4

level -- Wand Specialization (Rank 5)
    .talent 1,1,3,5

level -- Spirit Tap (Rank 1)
    .talent 3,1,2,1

level -- Spirit Tap (Rank 2)
    .talent 3,1,2,2

level -- Spirit Tap (Rank 3)
    .talent 3,1,2,3

level -- Spirit Tap (Rank 4)
    .talent 3,1,2,4

level -- Spirit Tap (Rank 5)
    .talent 3,1,2,5

level -- Shadow Focus (Rank 1)
    .talent 3,2,3,1

level -- Shadow Focus (Rank 2)
    .talent 3,2,3,2

level -- Shadow Focus (Rank 3)
    .talent 3,2,3,3

level -- Improved Shadow Word Pain (Rank 1)
    .talent 3,2,2,1

level -- Improved Shadow Word Pain (Rank 2)
    .talent 3,2,2,2

level -- Mind Flay
    .talent 3,3,3,1

level -- Improved Mind Blast (Rank 1)
    .talent 3,3,2,1

level -- Improved Mind Blast (Rank 2)
    .talent 3,3,2,2

level -- Improved Mind Blast (Rank 3)
    .talent 3,3,2,3

level -- Improved Mind Blast (Rank 4)
    .talent 3,3,2,4

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

level -- Focused Mind (Rank 1)
    .talent 3,5,4,1

level -- Focused Mind (Rank 2)
    .talent 3,5,4,2

level -- Focused Mind (Rank 3)
    .talent 3,5,4,3

level -- Shadow Weaving (Rank 4)
    .talent 3,4,4,4

level -- Vampiric Embrace
    .talent 3,5,2,1
]])

addon.talents.RegisterGuide([[
#name Shadow 10-70
#minLevel 10
#maxLevel 70
#reset

level -- Spirit Tap (Rank 1)
    .talent 3,1,2,1

level -- Spirit Tap (Rank 2)
    .talent 3,1,2,2

level -- Spirit Tap (Rank 3)
    .talent 3,1,2,3

level -- Spirit Tap (Rank 4)
    .talent 3,1,2,4

level -- Spirit Tap (Rank 5)
    .talent 3,1,2,5

level -- Shadow Focus (Rank 1)
    .talent 3,2,3,1

level -- Shadow Focus (Rank 2)
    .talent 3,2,3,2

level -- Shadow Focus (Rank 3)
    .talent 3,2,3,3

level -- Improved Shadow Word Pain (Rank 1)
    .talent 3,2,2,1

level -- Improved Shadow Word Pain (Rank 2)
    .talent 3,2,2,2

level -- Mind Flay
    .talent 3,3,3,1

level -- Improved Mind Blast (Rank 1)
    .talent 3,3,2,1

level -- Improved Mind Blast (Rank 2)
    .talent 3,3,2,2

level -- Improved Mind Blast (Rank 3)
    .talent 3,3,2,3

level -- Improved Mind Blast (Rank 4)
    .talent 3,3,2,4

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

level -- Focused Mind (Rank 1)
    .talent 3,5,4,1

level -- Focused Mind (Rank 2)
    .talent 3,5,4,2

level -- Focused Mind (Rank 3)
    .talent 3,5,4,3

level -- Shadow Weaving (Rank 4)
    .talent 3,4,4,4

level -- Vampiric Embrace
    .talent 3,5,2,1

level -- Darkness (Rank 1)
    .talent 3,6,3,1

level -- Darkness (Rank 2)
    .talent 3,6,3,2

level -- Darkness (Rank 3)
    .talent 3,6,3,3

level -- Darkness (Rank 4)
    .talent 3,6,3,4

level -- Darkness (Rank 5)
    .talent 3,6,3,5

level -- Shadowform
    .talent 3,7,2,1

level -- Shadow Weaving (Rank 5)
    .talent 3,4,4,5

level -- Improved Mind Blast (Rank 5)
    .talent 3,3,2,5

level -- Shadow Power (Rank 1)
    .talent 3,7,3,1

level -- Shadow Power (Rank 2)
    .talent 3,7,3,2

level -- Misery (Rank 1)
    .talent 3,8,3,1

level -- Misery (Rank 2)
    .talent 3,8,3,2

level -- Misery (Rank 3)
    .talent 3,8,3,3

level -- Misery (Rank 4)
    .talent 3,8,3,4

level -- Misery (Rank 5)
    .talent 3,8,3,5

level -- Vampiric Touch
    .talent 3,9,2,1

level -- Wand Specialization (Rank 1)
    .talent 1,1,3,1

level -- Wand Specialization (Rank 2)
    .talent 1,1,3,2

level -- Wand Specialization (Rank 3)
    .talent 1,1,3,3

level -- Wand Specialization (Rank 4)
    .talent 1,1,3,4

level -- Wand Specialization (Rank 5)
    .talent 1,1,3,5

level -- Improved Power Word: Shield (Rank 1)
    .talent 1,2,3,1

level -- Improved Power Word: Shield (Rank 2)
    .talent 1,2,3,2

level -- Improved Power Word: Shield (Rank 3)
    .talent 1,2,3,3

level -- Martyrdom (Rank 1)
    .talent 1,3,4,1

level -- Martyrdom (Rank 2)
    .talent 1,3,4,2

level -- Meditation (Rank 1)
    .talent 1,3,3,1

level -- Meditation (Rank 2)
    .talent 1,3,3,2

level -- Meditation (Rank 3)
    .talent 1,3,3,3

level -- Inner Focus
    .talent 1,3,2,1

level -- Blackout (Rank 1)
    .talent 3,1,3,1

level -- Blackout (Rank 2)
    .talent 3,1,3,2

level -- Blackout (Rank 3)
    .talent 3,1,3,3

level -- Blackout (Rank 4)
    .talent 3,1,3,4

level -- Blackout (Rank 5)
    .talent 3,1,3,5

level -- Shadow Power (Rank 3)
    .talent 3,7,3,3
]])
