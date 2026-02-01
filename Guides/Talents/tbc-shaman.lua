local _, addon = ...

if addon.player.class ~= "SHAMAN" or addon.game ~= "TBC" then return end

addon.talents.RegisterGuide([[
#name Enhancement 10-70
#minLevel 10
#maxLevel 70
#order 1

level -- Ancestral Knowledge (Rank 1)
    .talent 2,1,2,1

level -- Ancestral Knowledge (Rank 2)
    .talent 2,1,2,2

level -- Ancestral Knowledge (Rank 3)
    .talent 2,1,2,3

level -- Ancestral Knowledge (Rank 4)
    .talent 2,1,2,4

level -- Ancestral Knowledge (Rank 5)
    .talent 2,1,2,5

level -- Thundering Strikes (Rank 1)
    .talent 2,2,2,1

level -- Thundering Strikes (Rank 2)
    .talent 2,2,2,2

level -- Thundering Strikes (Rank 3)
    .talent 2,2,2,3

level -- Improved Ghost Wolf (Rank 1)
    .talent 2,2,3,1

level -- Improved Ghost Wolf (Rank 2)
    .talent 2,2,3,2

level -- Shamanistic Focus
    .talent 2,3,3,1

level -- Thundering Strikes (Rank 4)
    .talent 2,2,2,4

level -- Thundering Strikes (Rank 5)
    .talent 2,2,2,5

level -- Improved Lightning Shield (Rank 1)
    .talent 2,2,4,1

level -- Improved Lightning Shield (Rank 2)
    .talent 2,2,4,2

level -- Flurry (Rank 1)
    .talent 2,4,2,1

level -- Flurry (Rank 2)
    .talent 2,4,2,2

level -- Flurry (Rank 3)
    .talent 2,4,2,3

level -- Flurry (Rank 4)
    .talent 2,4,2,4

level -- Flurry (Rank 5)
    .talent 2,4,2,5

level -- Spirit Weapons
    .talent 2,5,2,1

level -- Elemental Weapons (Rank 1)
    .talent 2,5,3,1

level -- Elemental Weapons (Rank 2)
    .talent 2,5,3,2

level -- Elemental Weapons (Rank 3)
    .talent 2,5,3,3

level -- Improved Lightning Shield (Rank 3)
    .talent 2,2,4,3

level -- Weapon Mastery (Rank 1)
    .talent 2,6,4,1

level -- Weapon Mastery (Rank 2)
    .talent 2,6,4,2

level -- Weapon Mastery (Rank 3)
    .talent 2,6,4,3

level -- Weapon Mastery (Rank 4)
    .talent 2,6,4,4

level -- Weapon Mastery (Rank 5)
    .talent 2,6,4,5

level -- Dual Wield
    .talent 2,7,2,1

level -- Stormstrike
    .talent 2,7,3,1

level -- Dual Wield Specialization (Rank 1)
    .talent 2,7,1,1

level -- Dual Wield Specialization (Rank 2)
    .talent 2,7,1,2

level -- Dual Wield Specialization (Rank 3)
    .talent 2,7,1,3

level -- Unleashed Rage (Rank 1)
    .talent 2,8,2,1

level -- Unleashed Rage (Rank 2)
    .talent 2,8,2,2

level -- Unleashed Rage (Rank 3)
    .talent 2,8,2,3

level -- Unleashed Rage (Rank 4)
    .talent 2,8,2,4

level -- Unleashed Rage (Rank 5)
    .talent 2,8,2,5

level -- Shamanistic Rage
    .talent 2,9,2,1

level -- Mental Quickness (Rank 1)
    .talent 2,6,1,1

level -- Mental Quickness (Rank 2)
    .talent 2,6,1,2

level -- Mental Quickness (Rank 3)
    .talent 2,6,1,3

level -- Tidal Focus (Rank 1)
    .talent 3,1,3,1

level -- Tidal Focus (Rank 2)
    .talent 3,1,3,2

level -- Tidal Focus (Rank 3)
    .talent 3,1,3,3

level -- Tidal Focus (Rank 4)
    .talent 3,1,3,4

level -- Tidal Focus (Rank 5)
    .talent 3,1,3,5

level -- Totemic Focus (Rank 1)
    .talent 3,2,3,1

level -- Totemic Focus (Rank 2)
    .talent 3,2,3,2

level -- Totemic Focus (Rank 3)
    .talent 3,2,3,3

level -- Totemic Focus (Rank 4)
    .talent 3,2,3,4

level -- Totemic Focus (Rank 5)
    .talent 3,2,3,5

level -- Nature's Guidance (Rank 1)
    .talent 3,3,1,1

level -- Nature's Guidance (Rank 2)
    .talent 3,3,1,2

level -- Nature's Guidance (Rank 3)
    .talent 3,3,1,3

level -- Concussion (Rank 1)
    .talent 1,1,3,1

level -- Concussion (Rank 2)
    .talent 1,1,3,2

level -- Concussion (Rank 3)
    .talent 1,1,3,3

level -- Concussion (Rank 4)
    .talent 1,1,3,4
]])
