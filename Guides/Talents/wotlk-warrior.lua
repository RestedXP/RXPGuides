local _, addon = ...

if addon.player.class ~= "WARRIOR" or addon.game ~= "WOTLK" then return end

addon.talents.RegisterGuide([[
#name Warrior 10-58
#next Warrior 59-80
#minLevel 10
#maxLevel 58

level --  Shield Specialization (Rank 1)
    .talent 3,1,2,1

level --  Shield Specialization (Rank 2)
    .talent 3,1,2,2

level --  Shield Specialization (Rank 3)
    .talent 3,1,2,3

level --  Shield Specialization (Rank 4)
    .talent 3,1,2,4

level --  Shield Specialization (Rank 5)
    .talent 3,1,2,5

level -- Anticipation (Rank 1)
    .talent 3,2,3,1

level -- Anticipation (Rank 2)
    .talent 3,2,3,2

level -- Anticipation (Rank 3)
    .talent 3,2,3,3

level -- Anticipation (Rank 4)
    .talent 3,2,3,4

level -- Anticipation (Rank 5)
    .talent 3,2,3,5

level -- Improved Revenge (Rank 1)
    .talent 3,3,2,1

level -- Improved Revenge (Rank 2)
    .talent 3,3,2,2

level -- Shield Mastery (Rank 1)
    .talent 3,3,3,1

level -- Shield Mastery (Rank 2)
    .talent 3,3,3,2

level -- Last Stand
    .talent 3,3,1,1

level -- Improved Thunder Clap (Rank 1)
    .talent 3,1,3,1

level -- Improved Thunder Clap (Rank 2)
    .talent 3,1,3,2

level -- Improved Thunder Clap (Rank 3)
    .talent 3,1,3,3

level -- Incite (Rank 1)
    .talent 3,2,2,1

level -- Incite (Rank 2)
    .talent 3,2,2,2

level -- Concussion Blow
    .talent 3,5,2,1

level -- Improved Disciplines (Rank 1)
    .talent 3,5,1,1

level -- Improved Disciplines (Rank 2)
    .talent 3,5,1,2

level -- Incite (Rank 3)
    .talent 3,2,2,3

level -- Improved Bloodrage (Rank 1)
    .talent 3,1,1,1

level -- One-Handed Specialization (Rank 1)
    .talent 3,6,3,1

level -- One-Handed Specialization (Rank 2)
    .talent 3,6,3,2

level -- One-Handed Specialization (Rank 3)
    .talent 3,6,3,3

level -- One-Handed Specialization (Rank 4)
    .talent 3,6,3,4

level -- One-Handed Specialization (Rank 5)
    .talent 3,6,3,5

level -- Improved Defensive Stance (Rank 1)
    .talent 3,7,1,1

level -- Improved Defensive Stance (Rank 2)
    .talent 3,7,1,2

level -- Deflection (Rank 1)
    .talent 1,1,2,1

level -- Deflection (Rank 2)
    .talent 1,1,2,2

level -- Deflection (Rank 3)
    .talent 1,1,2,3

level -- Deflection (Rank 4)
    .talent 1,1,2,4

level -- Deflection (Rank 5)
    .talent 1,1,2,5

level -- Armored to the Teeth (Rank 1)
    .talent 2,1,1,1

level -- Armored to the Teeth (Rank 2)
    .talent 2,1,1,2

level -- Armored to the Teeth (Rank 3)
    .talent 2,1,1,3

level -- Cruelty (Rank 1)
    .talent 2,1,3,1

level -- Cruelty (Rank 2)
    .talent 2,1,3,2

level -- Cruelty (Rank 3)
    .talent 2,1,3,3

level -- Cruelty (Rank 4)
    .talent 2,1,3,4

level -- Cruelty (Rank 5)
    .talent 2,1,3,5

level -- Focused Rage (Rank 1)
    .talent 3,7,3,1

level -- Focused Rage (Rank 2)
    .talent 3,7,3,2

level -- Focused Rage (Rank 3)
    .talent 3,7,3,3

level -- Vitality (Rank 1)
    .talent 3,8,2,1
]])

addon.talents.RegisterGuide([[
#name Warrior 59-80
#minLevel 10
#maxLevel 80
#reset

level -- Deflection (Rank 1)
    .talent 1,1,2,1

level -- Deflection (Rank 2)
    .talent 1,1,2,2

level -- Deflection (Rank 3)
    .talent 1,1,2,3

level -- Deflection (Rank 4)
    .talent 1,1,2,4

level -- Deflection (Rank 5)
    .talent 1,1,2,5

level -- Tactical Mastery (Rank 1)
    .talent 1,2,3,1

level -- Tactical Mastery (Rank 2)
    .talent 1,2,3,2

level -- Tactical Mastery (Rank 3)
    .talent 1,2,3,3

level -- Iron Will (Rank 1)
    .talent 1,2,2,1

level -- Iron Will (Rank 2)
    .talent 1,2,2,2

level -- Iron Will (Rank 3)
    .talent 1,2,2,3

level -- Anger Management
    .talent 1,3,2,1

level -- Impale (Rank 1)
    .talent 1,3,3,1

level -- Impale (Rank 2)
    .talent 1,3,3,2

level -- Deep Wounds (Rank 1)
    .talent 1,3,4,1

level -- Deep Wounds (Rank 2)
    .talent 1,3,4,2

level -- Deep Wounds (Rank 3)
    .talent 1,3,4,3

level -- Improved Charge (Rank 1)
    .talent 1,2,1,1

level -- Improved Charge (Rank 2)
    .talent 1,2,1,2

level -- Improved Heroic Strike (Rank 1)
    .talent 1,1,1,1

level -- Sweeping Strikes
    .talent 1,5,2,1

level -- Poleaxe Specialization (Rank 1)
    .talent 1,5,1,1

level -- Poleaxe Specialization (Rank 2)
    .talent 1,5,1,2

level -- Poleaxe Specialization (Rank 3)
    .talent 1,5,1,3

level -- Poleaxe Specialization (Rank 4)
    .talent 1,5,1,4

level -- Poleaxe Specialization (Rank 5)
    .talent 1,5,1,5

level -- Trauma (Rank 1)
    .talent 1,6,4,1

level -- Trauma (Rank 2)
    .talent 1,6,4,2

level -- Weapon Mastery (Rank 1)
    .talent 1,6,1,1

level -- Weapon Mastery (Rank 2)
    .talent 1,6,1,2

level -- Strength of Arms (Rank 1)
    .talent 1,7,3,1

level -- Strength of Arms (Rank 2)
    .talent 1,7,3,2

level -- Second Wind (Rank 1)
    .talent 1,7,1,1

level -- Second Wind (Rank 2)
    .talent 1,7,1,2

level -- Mortal Strike (Rank 1)
    .talent 1,7,2,1

level -- Unrelenting Assault (Rank 1)
    .talent 1,8,3,1

level -- Unrelenting Assault (Rank 2)
    .talent 1,8,3,2

level --  Shield Specialization (Rank 1)
    .talent 3,1,2,1

level --  Shield Specialization (Rank 2)
    .talent 3,1,2,2

level --  Shield Specialization (Rank 3)
    .talent 3,1,2,3

level --  Shield Specialization (Rank 4)
    .talent 3,1,2,4

level --  Shield Specialization (Rank 5)
    .talent 3,1,2,5

level -- Anticipation (Rank 1)
    .talent 3,2,3,1

level -- Anticipation (Rank 2)
    .talent 3,2,3,2

level -- Anticipation (Rank 3)
    .talent 3,2,3,3

level -- Anticipation (Rank 4)
    .talent 3,2,3,4

level -- Anticipation (Rank 5)
    .talent 3,2,3,5

level -- Improved Revenge (Rank 1)
    .talent 3,3,2,1

level -- Improved Revenge (Rank 2)
    .talent 3,3,2,2

level -- Shield Mastery (Rank 1)
    .talent 3,3,3,1

level -- Shield Mastery (Rank 2)
    .talent 3,3,3,2

level -- Last Stand
    .talent 3,3,1,1

level -- Improved Thunder Clap (Rank 1)
    .talent 3,1,3,1

level -- Improved Thunder Clap (Rank 2)
    .talent 3,1,3,2

level -- Improved Thunder Clap (Rank 3)
    .talent 3,1,3,3

level -- Incite (Rank 1)
    .talent 3,2,2,1

level -- Incite (Rank 2)
    .talent 3,2,2,2

level -- Concussion Blow
    .talent 3,5,2,1

level -- Improved Disciplines (Rank 1)
    .talent 3,5,1,1

level -- Improved Disciplines (Rank 2)
    .talent 3,5,1,2

level -- Gag Order (Rank 1)
    .talent 3,5,3,1

level -- Gag Order (Rank 2)
    .talent 3,5,3,2

level -- One-Handed Specialization (Rank 1)
    .talent 3,6,3,1

level -- One-Handed Specialization (Rank 2)
    .talent 3,6,3,2

level -- One-Handed Specialization (Rank 3)
    .talent 3,6,3,3

level -- One-Handed Specialization (Rank 4)
    .talent 3,6,3,4

level -- One-Handed Specialization (Rank 5)
    .talent 3,6,3,5

level -- Improved Defensive Stance (Rank 1)
    .talent 3,7,1,1

level -- Improved Defensive Stance (Rank 2)
    .talent 3,7,1,2

level -- Juggernaut (Rank 1)
    .talent 1,8,1,1

level -- Focused Rage (Rank 1)
    .talent 3,7,3,1
]])
