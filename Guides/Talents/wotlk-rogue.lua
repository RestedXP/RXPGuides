local _, addon = ...

if addon.player.class ~= "ROGUE" or addon.gameVersion >= 40000 then return end

addon.talents.RegisterGuide([[
#name Rogue 10-80
#minLevel 10
#maxLevel 80

level -- Improved Sinister Strike (Rank 1)
    .talent 2,1,2,1

level -- Improved Sinister Strike (Rank 2)
    .talent 2,1,2,2

level -- Remorseless Attacks (Rank 1)
    .talent 1,1,2,1

level -- Remorseless Attacks (Rank 2)
    .talent 1,1,2,2

level -- Dual Wield Specialization (Rank 1)
    .talent 2,1,3,1

level -- Dual Wield Specialization (Rank 2)
    .talent 2,1,3,2

level -- Dual Wield Specialization (Rank 3)
    .talent 2,1,3,3

level -- Dual Wield Specialization (Rank 4)
    .talent 2,1,3,4

level -- Dual Wield Specialization (Rank 5)
    .talent 2,1,3,5

level -- Deflection (Rank 1)
    .talent 2,2,2,1

level -- Deflection (Rank 2)
    .talent 2,2,2,2

level -- Deflection (Rank 3)
    .talent 2,2,2,3

level -- Riposte
    .talent 2,3,2,1

level -- Precision (Rank 1)
    .talent 2,2,4,1

level -- Precision (Rank 2)
    .talent 2,2,4,2

level -- Precision (Rank 3)
    .talent 2,2,4,3

level -- Precision (Rank 4)
    .talent 2,2,4,4

level -- Precision (Rank 5)
    .talent 2,2,4,5

level -- Lightning Reflexes (Rank 1)
    .talent 2,4,3,1

level -- Lightning Reflexes (Rank 2)
    .talent 2,4,3,2

level -- Lightning Reflexes (Rank 3)
    .talent 2,4,3,3

level -- Improved Slice and Dice (Rank 1)
    .talent 2,2,1,1

level -- Blade Flurry
    .talent 2,5,2,1

level -- Hack and Slash (Rank 1)
    .talent 2,5,3,1

level -- Hack and Slash (Rank 2)
    .talent 2,5,3,2

level -- Hack and Slash (Rank 3)
    .talent 2,5,3,3

level -- Hack and Slash (Rank 4)
    .talent 2,5,3,4

level -- Weapon Expertise (Rank 1)
    .talent 2,6,2,1

level -- Weapon Expertise (Rank 2)
    .talent 2,6,2,2

level -- Hack and Slash (Rank 5)
    .talent 2,5,3,5

level -- Improved Slice and Dice (Rank 2)
    .talent 2,2,1,2

level -- Blade Twisting (Rank 1)
    .talent 2,6,3,1

level -- Adrenaline Rush
    .talent 2,7,2,1

level -- Vitality (Rank 1)
    .talent 2,7,1,1

level -- Vitality (Rank 2)
    .talent 2,7,1,2

level -- Vitality (Rank 3)
    .talent 2,7,1,3

level -- Blade Twisting (Rank 2)
    .talent 2,6,3,2

level -- Combat Potency (Rank 1)
    .talent 2,8,3,1

level -- Combat Potency (Rank 2)
    .talent 2,8,3,2

level -- Combat Potency (Rank 3)
    .talent 2,8,3,3

level -- Combat Potency (Rank 4)
    .talent 2,8,3,4

level -- Combat Potency (Rank 5)
    .talent 2,8,3,5

level -- Suprise Attacks
    .talent 2,9,2,1

level -- Savage Combat (Rank 1)
    .talent 2,9,3,1

level -- Savage Combat (Rank 2)
    .talent 2,9,3,2

level -- Unfair Advantage (Rank 1)
    .talent 2,9,1,1

level -- Unfair Advantage (Rank 2)
    .talent 2,9,1,2

level -- Prey on the Weak (Rank 1)
    .talent 2,10,2,1

level -- Prey on the Weak (Rank 2)
    .talent 2,10,2,2

level -- Prey on the Weak (Rank 3)
    .talent 2,10,2,3

level -- Prey on the Weak (Rank 4)
    .talent 2,10,2,4

level -- Prey on the Weak (Rank 5)
    .talent 2,10,2,5

level -- Killing Spree
    .talent 2,11,2,1

level -- Malice (Rank 1)
    .talent 1,1,3,1

level -- Malice (Rank 2)
    .talent 1,1,3,2

level -- Malice (Rank 3)
    .talent 1,1,3,3

level -- Malice (Rank 4)
    .talent 1,1,3,4

level -- Malice (Rank 5)
    .talent 1,1,3,5

level -- Ruthlessness (Rank 1)
    .talent 1,2,1,1

level -- Ruthlessness (Rank 2)
    .talent 1,2,1,2

level -- Ruthlessness (Rank 3)
    .talent 1,2,1,3

level -- Lethality (Rank 1)
    .talent 1,3,3,1

level -- Lethality (Rank 2)
    .talent 1,3,3,2

level -- Lethality (Rank 3)
    .talent 1,3,3,3

level -- Lethality (Rank 4)
    .talent 1,3,3,4

level -- Lethality (Rank 5)
    .talent 1,3,3,5

level -- Improved Poisons (Rank 1)
    .talent 1,4,3,1

level -- Improved Poisons (Rank 2)
    .talent 1,4,3,2

level -- Improved Poisons (Rank 3)
    .talent 1,4,3,3

level -- Improved Poisons (Rank 4)
    .talent 1,4,3,4

level -- Improved Poisons (Rank 5)
    .talent 1,4,3,5

]])
