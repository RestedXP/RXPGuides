local _, addon = ...

if addon.player.class ~= "ROGUE" or addon.game ~= "TBC" then return end

addon.talents.RegisterGuide([[
#name Combat 10-70
#minLevel 10
#maxLevel 70

level -- Improved Sinister Strike (Rank 1)
    .talent 2,1,2,1

level -- Improved Sinister Strike (Rank 2)
    .talent 2,1,2,2

level -- Improved Gouge (Rank 1)
    .talent 2,1,1,1

level -- Improved Gouge (Rank 2)
    .talent 2,1,1,2

level -- Improved Gouge (Rank 3)
    .talent 2,1,1,3

level -- Deflection (Rank 1)
    .talent 2,2,2,1

level -- Deflection (Rank 2)
    .talent 2,2,2,2

level -- Deflection (Rank 3)
    .talent 2,2,2,3

level -- Deflection (Rank 4)
    .talent 2,2,2,4

level -- Deflection (Rank 5)
    .talent 2,2,2,5

level -- Riposte
    .talent 2,3,2,1

level -- Precision (Rank 1)
    .talent 2,2,3,1

level -- Precision (Rank 2)
    .talent 2,2,3,2

level -- Precision (Rank 3)
    .talent 2,2,3,3

level -- Precision (Rank 4)
    .talent 2,2,3,4

level -- Precision (Rank 5)
    .talent 2,2,3,5

level -- Dual Wield Specialization (Rank 1)
    .talent 2,4,3,1

level -- Dual Wield Specialization (Rank 2)
    .talent 2,4,3,2

level -- Dual Wield Specialization (Rank 3)
    .talent 2,4,3,3

level -- Dual Wield Specialization (Rank 4)
    .talent 2,4,3,4

level -- Blade Flurry
    .talent 2,5,2,1

level -- Dual Wield Specialization (Rank 5)
    .talent 2,4,3,5

level -- Improved Slice & Dice (Rank 1)
    .talent 2,2,1,1

level -- Improved Slice & Dice (Rank 2)
    .talent 2,2,1,2

level -- Improved Slice & Dice (Rank 3)
    .talent 2,2,1,3

level -- Weapon Expertise (Rank 1)
    .talent 2,6,2,1

level -- Weapon Expertise (Rank 2)
    .talent 2,6,2,2

level -- Aggression (Rank 1)
    .talent 2,6,3,1

level -- Aggression (Rank 2)
    .talent 2,6,3,2

level -- Aggression (Rank 3)
    .talent 2,6,3,3

level -- Adrenaline Rush
    .talent 2,7,2,1

level
    #optional
    .talent 2,7,1,1 -- Vitality (Rank 1)
    .talent 2,5,1,1 -- Mace Specialization (Rank 1)
    .talent 2,5,3,1 -- Sword Specialization (Rank 1)
    .talent 2,5,4,1 -- Fist Weapon Specialization (Rank 1)

level
    #optional
    .talent 2,7,1,2 -- Vitality (Rank 2)
    .talent 2,5,1,2 -- Mace Specialization (Rank 2)
    .talent 2,5,3,2 -- Sword Specialization (Rank 2)
    .talent 2,5,4,2 -- Fist Weapon Specialization (Rank 2)

level
    #optional
    .talent 2,3,1,1 -- Endurance (Rank 1)
    .talent 2,5,1,3 -- Mace Specialization (Rank 3)
    .talent 2,5,3,3 -- Sword Specialization (Rank 3)
    .talent 2,5,4,3 -- Fist Weapon Specialization (Rank 3)

level
    #optional
    .talent 2,3,1,2 -- Endurance (Rank 2)
    .talent 2,5,1,4 -- Mace Specialization (Rank 4)
    .talent 2,5,3,4 -- Sword Specialization (Rank 4)
    .talent 2,5,4,4 -- Fist Weapon Specialization (Rank 4)

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

level -- Surprise Attacks
    .talent 2,9,2,1

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

level -- Murder (Rank 1)
    .talent 1,2,2,1

level -- Murder (Rank 2)
    .talent 1,2,2,2

level -- Relentless Strikes
    .talent 1,3,1,1

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

level -- Vile Poisons (Rank 1)
    .talent 1,4,3,1

level -- Vile Poisons (Rank 2)
    .talent 1,4,3,2

level -- Vile Poisons (Rank 3)
    .talent 1,4,3,3
]])
