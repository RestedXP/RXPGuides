local _, addon = ...

if addon.player.class ~= "PRIEST" or addon.game ~= "CLASSIC" then return end

addon.talents.RegisterGuide([[
#name Shadow (Survival) 10-60
#minLevel 10
#maxLevel 60
#hardcore

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

level -- Shadow Focus (Rank 4)
    .talent 3,2,3,4

level -- Shadow Focus (Rank 5)
    .talent 3,2,3,5

level -- Mind Flay
    .talent 3,3,3,1

level -- Improved Power Word: Fortitude (Rank 1)
    .talent 1,2,2,1

level -- Improved Power Word: Fortitude (Rank 1)
    .talent 1,2,2,2

level -- Meditation (Rank 1)
    .talent 1,3,3,1

level -- Meditation (Rank 2)
    .talent 1,3,3,2

level -- Meditation (Rank 3)
    .talent 1,3,3,3

level -- Improved Renew (Rank 1)
    .talent 2,1,2,1

level -- Improved Renew (Rank 2)
    .talent 2,1,2,2

level -- Improved Renew (Rank 3)
    .talent 2,1,2,3

level -- Improved Renew (Rank 1)
    .talent 2,1,3,1

level -- Improved Renew (Rank 2)
    .talent 2,1,3,2

level -- Divine Fury (Rank 1)
    .talent 2,2,3,1

level -- Divine Fury (Rank 2)
    .talent 2,2,3,2

level -- Divine Fury (Rank 3)
    .talent 2,2,3,3

level -- Divine Fury (Rank 4)
    .talent 2,2,3,4

level -- Divine Fury (Rank 5)
    .talent 2,2,3,5

level -- Inner Focus
    .talent 1,3,2,1

level -- Unbreakable Will (Rank 1)
    .talent 1,1,2,1

level -- Mental Agility (Rank 1)
    .talent 1,4,2,1

level -- Mental Agility (Rank 2)
    .talent 1,4,2,2

level -- Mental Agility (Rank 3)
    .talent 1,4,2,3

level -- Mental Agility (Rank 4)
    .talent 1,4,2,4

level -- Mental Agility (Rank 5)
    .talent 1,4,2,5

level -- Divine Spirit
    .talent 1,5,3,1

level -- Improved Mind Blast (Rank 1)
    .talent 3,3,2,1

level -- Improved Mind Blast (Rank 2)
    .talent 3,3,2,2

level -- Mental Strength (Rank 1)
    .talent 1,5,2,1

level -- Mental Strength (Rank 2)
    .talent 1,5,2,2

level -- Mental Strength (Rank 3)
    .talent 1,5,2,3

level -- Mental Strength (Rank 4)
    .talent 1,5,2,4

level -- Mental Strength (Rank 5)
    .talent 1,5,2,5

level -- Spell Warding (Rank 1)
    .talent 2,2,2,1

]])

addon.talents.RegisterGuide([[
#name Shadow (Wands) 10-39
#minLevel 10
#maxLevel 39

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

level -- Improved Power Word: Fortitude (Rank 1)
    .talent 1,2,2,1

level -- Improved Power Word: Fortitude (Rank 1)
    .talent 1,2,2,2

level -- Meditation (Rank 1)
    .talent 1,3,3,1

level -- Meditation (Rank 2)
    .talent 1,3,3,2

level -- Meditation (Rank 3)
    .talent 1,3,3,3

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

level -- Shadow Focus (Rank 4)
    .talent 3,2,3,4

level -- Shadow Focus (Rank 5)
    .talent 3,2,3,5

level -- Mind Flay
    .talent 3,3,3,1

level -- Improved Mind Blast (Rank 1)
    .talent 3,3,2,1

level -- Improved Mind Blast (Rank 2)
    .talent 3,3,2,2

level -- Improved Psychic Scream (Rank 1)
    .talent 3,3,1,1

level -- Improved Psychic Scream (Rank 2)
    .talent 3,3,1,2

level -- Shadow Reach (Rank 1)
    .talent 3,4,3,1

level -- Shadow Reach (Rank 2)
    .talent 3,4,3,2

]])

addon.talents.RegisterGuide([[
#name Shadow 40-60
#minLevel 10
#maxLevel 60
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

level -- Shadow Focus (Rank 4)
    .talent 3,2,3,4

level -- Shadow Focus (Rank 5)
    .talent 3,2,3,5

level -- Mind Flay
    .talent 3,3,3,1

level -- Improved Mind Blast (Rank 1)
    .talent 3,3,2,1

level -- Improved Mind Blast (Rank 2)
    .talent 3,3,2,2

level -- Improved Psychic Scream (Rank 1)
    .talent 3,3,1,1

level -- Improved Psychic Scream (Rank 2)
    .talent 3,3,1,2

level -- Shadow Reach (Rank 1)
    .talent 3,4,3,1

level -- Shadow Reach (Rank 2)
    .talent 3,4,3,2

level -- Shadow Reach (Rank 3)
    .talent 3,4,3,3

level -- Improved Mind Blast (Rank 3)
    .talent 3,3,2,3

level -- Improved Mind Blast (Rank 4)
    .talent 3,3,2,4

level -- Vampiric Embrace
    .talent 3,5,2,1

level -- Silence
    .talent 3,5,1,1

level -- Shadow Weaving (Rank 1)
    .talent 3,4,4,1

level -- Shadow Weaving (Rank 2)
    .talent 3,4,4,2

level -- Shadow Weaving (Rank 3)
    .talent 3,4,4,3

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

level -- Shadow Weaving (Rank 4)
    .talent 3,4,4,4

level -- Shadow Weaving (Rank 5)
    .talent 3,4,4,5

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

level -- Improved Power Word: Fortitude (Rank 1)
    .talent 1,2,2,1

level -- Improved Power Word: Fortitude (Rank 1)
    .talent 1,2,2,2

level -- Improved Power Word: Shield (Rank 1)
    .talent 1,2,3,1

level -- Improved Power Word: Shield (Rank 2)
    .talent 1,2,3,2

level -- Improved Power Word: Shield (Rank 3)
    .talent 1,2,3,3

level -- Meditation (Rank 1)
    .talent 1,3,3,1

level -- Meditation (Rank 2)
    .talent 1,3,3,2

level -- Meditation (Rank 3)
    .talent 1,3,3,3

level -- Inner Focus
    .talent 1,3,2,1

level -- Unbreakable Will (Rank 1)
    .talent 1,1,2,1

level -- Mental Agility (Rank 1)
    .talent 1,4,2,1

level -- Mental Agility (Rank 2)
    .talent 1,4,2,2

]])
