local _, addon = ...

if addon.player.class ~= "HUNTER" or addon.gameVersion >= 40000 then return end

addon.talents.RegisterGuide([[
#name Hunter 10-80
#minLevel 10
#maxLevel 80

level -- Focused Aim (Rank 1)
    .talent 2,1,2,1

level -- Focused Aim (Rank 2)
    .talent 2,1,2,2

level -- Focused Aim (Rank 3)
    .talent 2,1,2,3

level -- Lethal Shots (Rank 1)
    .talent 2,1,3,1

level -- Lethal Shots (Rank 2)
    .talent 2,1,3,2

level -- Careful Aim (Rank 1)
    .talent 2,2,1,1

level -- Careful Aim (Rank 2)
    .talent 2,2,1,2

level -- Careful Aim (Rank 3)
    .talent 2,2,1,3

level -- Lethal Shots (Rank 3)
    .talent 2,1,3,3

level -- Lethal Shots (Rank 4)
    .talent 2,1,3,4

level -- Lethal Shots (Rank 5)
    .talent 2,1,3,5

level -- Improved Arcane Shot (Rank 1)
    .talent 2,3,2,1

level -- Improved Arcane Shot (Rank 2)
    .talent 2,3,2,2

level -- Improved Arcane Shot (Rank 3)
    .talent 2,3,2,3

level -- Mortal Shots (Rank 1)
    .talent 2,2,3,1

level -- Mortal Shots (Rank 2)
    .talent 2,2,3,2

level -- Mortal Shots (Rank 3)
    .talent 2,2,3,3

level -- Mortal Shots (Rank 4)
    .talent 2,2,3,4

level -- Mortal Shots (Rank 5)
    .talent 2,2,3,5

level -- Aimed Shot
    .talent 2,3,3,1

level -- Readiness
    .talent 2,5,2,1

level -- Barrage (Rank 1)
    .talent 2,5,3,1

level -- Barrage (Rank 2)
    .talent 2,5,3,2

level -- Barrage (Rank 3)
    .talent 2,5,3,3

level -- Rapid Killing (Rank 1)
    .talent 2,3,4,1

level -- Ranged Weapon Specialization (Rank 1)
    .talent 2,6,4,1

level -- Ranged Weapon Specialization (Rank 2)
    .talent 2,6,4,2

level -- Ranged Weapon Specialization (Rank 3)
    .talent 2,6,4,3

level -- Improved Stings (Rank 1)
    .talent 2,4,2,1

level -- Improved Stings (Rank 2)
    .talent 2,4,2,2

level -- Trueshot Aura
    .talent 2,7,2,1

level -- Improved Barrage (Rank 1)
    .talent 2,7,3,1

level -- Improved Barrage (Rank 2)
    .talent 2,7,3,2

level -- Improved Barrage (Rank 3)
    .talent 2,7,3,3

level -- Improved Stings (Rank 3)
    .talent 2,4,2,3

level -- Rapid Recuperation (Rank 1)
    .talent 2,8,3,1

level -- Rapid Recuperation (Rank 2)
    .talent 2,8,3,2

level -- Master Marksman (Rank 1)
    .talent 2,8,2,1

level -- Master Marksman (Rank 2)
    .talent 2,8,2,2

level -- Master Marksman (Rank 3)
    .talent 2,8,2,3

level -- Master Marksman (Rank 4)
    .talent 2,8,2,4

level -- Master Marksman (Rank 5)
    .talent 2,8,2,5

level -- Silencing Shot
    .talent 2,9,2,1

level -- Piercing Shots (Rank 1)
    .talent 2,7,1,1

level -- Piercing Shots (Rank 2)
    .talent 2,7,1,2

level -- Marked for Death (Rank 1)
    .talent 2,10,2,1

level -- Marked for Death (Rank 2)
    .talent 2,10,2,2

level -- Marked for Death (Rank 3)
    .talent 2,10,2,3

level -- Marked for Death (Rank 4)
    .talent 2,10,2,4

level -- Marked for Death (Rank 5)
    .talent 2,10,2,5

level -- Chimera Shot
    .talent 2,11,2,1

level -- Improved Tracking (Rank 1)
    .talent 3,1,1,1

level -- Improved Tracking (Rank 2)
    .talent 3,1,1,2

level -- Improved Tracking (Rank 3)
    .talent 3,1,1,3

level -- Improved Tracking (Rank 4)
    .talent 3,1,1,4

level -- Improved Tracking (Rank 5)
    .talent 3,1,1,5

level -- Entrapment (Rank 1)
    .talent 3,2,2,1

level -- Entrapment (Rank 2)
    .talent 3,2,2,2

level -- Entrapment (Rank 3)
    .talent 3,2,2,3

level -- Trap Mastery (Rank 1)
    .talent 3,2,3,1

level -- Trap Mastery (Rank 2)
    .talent 3,2,3,2

level -- Scatter Shot
    .talent 3,3,2,1

level -- Trap Mastery (Rank 3)
    .talent 3,2,3,3

level -- Survival Instincts (Rank 1)
    .talent 3,2,4,1

level -- Survival Instincts (Rank 2)
    .talent 3,2,4,2

level -- Piercing Shots (Rank 3)
    .talent 2,7,1,3

level -- Combat Experience (Rank 1)
    .talent 2,6,1,1

level -- Combat Experience (Rank 2)
    .talent 2,6,1,2

level -- Wild Quiver (Rank 1)
    .talent 2,9,1,1

level -- Wild Quiver (Rank 2)
    .talent 2,9,1,2

level -- Wild Quiver (Rank 3)
    .talent 2,9,1,3

]])
