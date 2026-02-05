local _, addon = ...

if addon.player.class ~= "WARRIOR" or addon.game ~= "TBC" then return end

--dual wield
addon.talents.RegisterGuide([[
#name Fury (Dual Wield) 10-70
#minLevel 10
#maxLevel 70
#order 1

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

level -- Improved Demoralizing Shout (Rank 1)
    .talent 2,2,2,1

level -- Improved Demoralizing Shout (Rank 2)
    .talent 2,2,2,2

level -- Improved Demoralizing Shout (Rank 3)
    .talent 2,2,2,3

level -- Improved Demoralizing Shout (Rank 4)
    .talent 2,2,2,4

level -- Improved Demoralizing Shout (Rank 5)
    .talent 2,2,2,5

level -- Piercing Howl
    .talent 2,3,2,1

level -- Commanding Presence (Rank 1)
    .talent 2,3,4,1

level -- Commanding Presence (Rank 2)
    .talent 2,3,4,2

level -- Commanding Presence (Rank 3)
    .talent 2,3,4,3

level -- Commanding Presence (Rank 4)
    .talent 2,3,4,4

level -- Enrage (Rank 1)
    .talent 2,4,3,1

level -- Enrage (Rank 2)
    .talent 2,4,3,2

level -- Enrage (Rank 3)
    .talent 2,4,3,3

level -- Enrage (Rank 4)
    .talent 2,4,3,4

level -- Enrage (Rank 5)
    .talent 2,4,3,5

level -- Sweeping Strikes
    .talent 2,5,2,1

level -- Weapon Mastery (Rank 1)
    .talent 2,5,4,1

level -- Weapon Mastery (Rank 2)
    .talent 2,5,4,2

level -- Dual Wield Specialization (Rank 1)
    .talent 2,4,1,1

level -- Dual Wield Specialization (Rank 2)
    .talent 2,4,1,2

level -- Flurry (Rank 1)
    .talent 2,6,3,1

level -- Flurry (Rank 2)
    .talent 2,6,3,2

level -- Flurry (Rank 3)
    .talent 2,6,3,3

level -- Flurry (Rank 4)
    .talent 2,6,3,4

level -- Flurry (Rank 5)
    .talent 2,6,3,5

level -- Bloodthirst
    .talent 2,7,2,1

level -- Precision (Rank 1)
    .talent 2,7,1,1

level -- Precision (Rank 2)
    .talent 2,7,1,2

level -- Precision (Rank 3)
    .talent 2,7,1,3

level -- Dual Wield Specialization (Rank 3)
    .talent 2,4,1,3

level -- Improved Berserker Stance (Rank 1)
    .talent 2,8,3,1

level -- Improved Berserker Stance (Rank 2)
    .talent 2,8,3,2

level -- Improved Berserker Stance (Rank 3)
    .talent 2,8,3,3

level -- Improved Berserker Stance (Rank 4)
    .talent 2,8,3,4

level -- Improved Berserker Stance (Rank 5)
    .talent 2,8,3,5

level -- Rampage
    .talent 2,9,2,1

level -- Dual Wield Specialization (Rank 4)
    .talent 2,4,1,4

level -- Dual Wield Specialization (Rank 5)
    .talent 2,4,1,5

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

level -- Improved Charge (Rank 1)
    .talent 1,2,1,1

level -- Improved Charge (Rank 2)
    .talent 1,2,1,2

level -- Improved Heroic Strike (Rank 1)
    .talent 1,1,1,1

level -- Improved Heroic Strike (Rank 2)
    .talent 1,1,1,2

level -- Improved Heroic Strike (Rank 3)
    .talent 1,1,1,3

level -- Anger Management
    .talent 1,3,2,1

level -- Deep Wounds (Rank 1)
    .talent 1,3,3,1

level -- Deep Wounds (Rank 2)
    .talent 1,3,3,2

level -- Deep Wounds (Rank 3)
    .talent 1,3,3,3

level -- Improved Overpower (Rank 1)
    .talent 1,3,1,1

level -- Impale (Rank 1)
    .talent 1,4,3,1

level -- Impale (Rank 2)
    .talent 1,4,3,2

level -- Commanding Presence (Rank 5)
    .talent 2,3,4,5
]])

--2H fury
addon.talents.RegisterGuide([[
#name Fury (2 Handed) 32-60
#minLevel 10
#maxLevel 60
#order 2

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

level -- Improved Demoralizing Shout (Rank 1)
    .talent 2,2,2,1

level -- Improved Demoralizing Shout (Rank 2)
    .talent 2,2,2,2

level -- Improved Demoralizing Shout (Rank 3)
    .talent 2,2,2,3

level -- Improved Demoralizing Shout (Rank 4)
    .talent 2,2,2,4

level -- Improved Demoralizing Shout (Rank 5)
    .talent 2,2,2,5

level -- Piercing Howl
    .talent 2,3,2,1

level -- Commanding Presence (Rank 1)
    .talent 2,3,4,1

level -- Commanding Presence (Rank 2)
    .talent 2,3,4,2

level -- Commanding Presence (Rank 3)
    .talent 2,3,4,3

level -- Commanding Presence (Rank 4)
    .talent 2,3,4,4

level -- Enrage (Rank 1)
    .talent 2,4,3,1

level -- Enrage (Rank 2)
    .talent 2,4,3,2

level -- Enrage (Rank 3)
    .talent 2,4,3,3

level -- Enrage (Rank 4)
    .talent 2,4,3,4

level -- Enrage (Rank 5)
    .talent 2,4,3,5

level -- Sweeping Strikes
    .talent 2,5,2,1

level -- Weapon Mastery (Rank 1)
    .talent 2,5,4,1

level -- Weapon Mastery (Rank 2)
    .talent 2,5,4,2

level -- Commanding Presence (Rank 5)
    .talent 2,3,4,5

level -- Blood Craze (Rank 1)
    .talent 2,3,3,1

level -- Flurry (Rank 1)
    .talent 2,6,3,1

level -- Flurry (Rank 2)
    .talent 2,6,3,2

level -- Flurry (Rank 3)
    .talent 2,6,3,3

level -- Flurry (Rank 4)
    .talent 2,6,3,4

level -- Flurry (Rank 5)
    .talent 2,6,3,5

level -- Bloodthirst
    .talent 2,7,2,1

level -- Precision (Rank 1)
    .talent 2,7,1,1

level -- Precision (Rank 2)
    .talent 2,7,1,2

level -- Precision (Rank 3)
    .talent 2,7,1,3

level -- Improved Whirlwind (Rank 1)
    .talent 2,7,3,1

level -- Improved Berserker Stance (Rank 1)
    .talent 2,8,3,1

level -- Improved Berserker Stance (Rank 2)
    .talent 2,8,3,2

level -- Improved Berserker Stance (Rank 3)
    .talent 2,8,3,3

level -- Improved Berserker Stance (Rank 4)
    .talent 2,8,3,4

level -- Improved Berserker Stance (Rank 5)
    .talent 2,8,3,5

level -- Rampage
    .talent 2,9,2,1

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

level -- Improved Charge (Rank 1)
    .talent 1,2,1,1

level -- Improved Charge (Rank 2)
    .talent 1,2,1,2

level -- Improved Whirlwind (Rank 2)
    .talent 2,7,3,2

level -- Improved Berserker Rage (Rank 1)
    .talent 2,6,1,1

level -- Improved Berserker Rage (Rank 2)
    .talent 2,6,1,2
]])

addon.talents.RegisterGuide([[
#name Arms (2 Handed) 61-70
#minLevel 10
#maxLevel 70
#oder 3

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

level -- Improved Charge (Rank 1)
    .talent 1,2,1,1

level -- Improved Charge (Rank 2)
    .talent 1,2,1,2

level -- Improved Rend (Rank 1)
    .talent 1,1,3,1

level -- Improved Rend (Rank 2)
    .talent 1,1,3,2

level -- Improved Rend (Rank 3)
    .talent 1,1,3,3

level -- Anger Management
    .talent 1,3,2,1

level -- Improved Overpower (Rank 1)
    .talent 1,3,1,1

level -- Improved Overpower (Rank 2)
    .talent 1,3,1,2

level -- Deep Wounds (Rank 1)
    .talent 1,3,3,1

level -- Deep Wounds (Rank 2)
    .talent 1,3,3,2

level -- Deep Wounds (Rank 3)
    .talent 1,3,3,3

level -- Impale (Rank 1)
    .talent 1,4,3,1

level -- Impale (Rank 2)
    .talent 1,4,3,2

level -- Two-Handed Weapon Specialization (Rank 1)
    .talent 1,4,2,1

level -- Two-Handed Weapon Specialization (Rank 2)
    .talent 1,4,2,2

level -- Death Wish
    .talent 1,5,2,1

level -- Two-Handed Weapon Specialization (Rank 3)
    .talent 1,4,2,3

level -- Two-Handed Weapon Specialization (Rank 4)
    .talent 1,4,2,4

level -- Two-Handed Weapon Specialization (Rank 5)
    .talent 1,4,2,5

level -- Weapon Specialization (Rank 1)
    #optional
    .talent 1,5,1,1 -- Poleaxe Specialization (Rank 1)
    .talent 1,5,3,1 -- Mace Specialization (Rank 1)
    .talent 1,5,4,1 -- Sword Specialization (Rank 1)

level -- Weapon Specialization (Rank 2)
    #optional
    .talent 1,5,1,2 -- Poleaxe Specialization (Rank 2)
    .talent 1,5,3,2 -- Mace Specialization (Rank 2)
    .talent 1,5,4,2 -- Sword Specialization (Rank 2)

level -- Weapon Specialization (Rank 3)
    #optional
    .talent 1,5,1,3 -- Poleaxe Specialization (Rank 3)
    .talent 1,5,3,3 -- Mace Specialization (Rank 3)
    .talent 1,5,4,3 -- Sword Specialization (Rank 3)

level -- Weapon Specialization (Rank 4)
    #optional
    .talent 1,5,1,4 -- Poleaxe Specialization (Rank 4)
    .talent 1,5,3,4 -- Mace Specialization (Rank 4)
    .talent 1,5,4,4 -- Sword Specialization (Rank 4)

level -- Weapon Specialization (Rank 5)
    #optional
    .talent 1,5,1,5 -- Poleaxe Specialization (Rank 5)
    .talent 1,5,3,5 -- Mace Specialization (Rank 5)
    .talent 1,5,4,5 -- Sword Specialization (Rank 5)

level -- Improved Intercept (Rank 1)
    .talent 1,6,1,1

level -- Mortal Strike
    .talent 1,7,2,1

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

level -- Improved Demoralizing Shout (Rank 1)
    .talent 2,2,2,1

level -- Improved Demoralizing Shout (Rank 2)
    .talent 2,2,2,2

level -- Improved Demoralizing Shout (Rank 3)
    .talent 2,2,2,3

level -- Improved Demoralizing Shout (Rank 4)
    .talent 2,2,2,4

level -- Improved Demoralizing Shout (Rank 5)
    .talent 2,2,2,5

level -- Piercing Howl
    .talent 2,3,2,1

level -- Commanding Presence (Rank 1)
    .talent 2,3,4,1

level -- Commanding Presence (Rank 2)
    .talent 2,3,4,2

level -- Commanding Presence (Rank 3)
    .talent 2,3,4,3

level -- Commanding Presence (Rank 4)
    .talent 2,3,4,4

level -- Enrage (Rank 1)
    .talent 2,4,3,1

level -- Enrage (Rank 2)
    .talent 2,4,3,2

level -- Enrage (Rank 3)
    .talent 2,4,3,3

level -- Enrage (Rank 4)
    .talent 2,4,3,4

level -- Enrage (Rank 5)
    .talent 2,4,3,5

level -- Sweeping Strikes
    .talent 2,5,2,1

level -- Blood Frenzy (Rank 1)
    .talent 1,7,1,1

level -- Blood Frenzy (Rank 2)
    .talent 1,7,1,2

level -- Weapon Mastery (Rank 1)
    .talent 2,5,4,1

level -- Weapon Mastery (Rank 2)
    .talent 2,5,4,2

level -- Commanding Presence (Rank 5)
    .talent 2,3,4,5

level -- Blood Craze (Rank 1)
    .talent 2,3,3,1

level -- Flurry (Rank 1)
    .talent 2,6,3,1

level -- Flurry (Rank 2)
    .talent 2,6,3,2

level -- Flurry (Rank 3)
    .talent 2,6,3,3
]])

--dual wield
addon.talents.RegisterGuide([[
#name Fury (Dual Wield) 10-70 Hardcore
#minLevel 10
#maxLevel 70
#order 4

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

level -- Improved Demoralizing Shout (Rank 1)
    .talent 2,2,2,1

level -- Improved Demoralizing Shout (Rank 2)
    .talent 2,2,2,2

level -- Improved Demoralizing Shout (Rank 3)
    .talent 2,2,2,3

level -- Improved Demoralizing Shout (Rank 4)
    .talent 2,2,2,4

level -- Improved Demoralizing Shout (Rank 5)
    .talent 2,2,2,5

level -- Piercing Howl
    .talent 2,3,2,1

level -- Blood Craze (Rank 1)
    .talent 2,3,3,1

level -- Blood Craze (Rank 2)
    .talent 2,3,3,2

level -- Blood Craze (Rank 3)
    .talent 2,3,3,3

level -- Commanding Presence (Rank 1)
    .talent 2,3,4,1

level -- Enrage (Rank 1)
    .talent 2,4,3,1

level -- Enrage (Rank 2)
    .talent 2,4,3,2

level -- Enrage (Rank 3)
    .talent 2,4,3,3

level -- Enrage (Rank 4)
    .talent 2,4,3,4

level -- Enrage (Rank 5)
    .talent 2,4,3,5

level -- Sweeping Strikes
    .talent 2,5,2,1

level -- Weapon Mastery (Rank 1)
    .talent 2,5,4,1

level -- Weapon Mastery (Rank 2)
    .talent 2,5,4,2

level -- Dual Wield Specialization (Rank 1)
    .talent 2,4,1,1

level -- Dual Wield Specialization (Rank 2)
    .talent 2,4,1,2

level -- Flurry (Rank 1)
    .talent 2,6,3,1

level -- Flurry (Rank 2)
    .talent 2,6,3,2

level -- Flurry (Rank 3)
    .talent 2,6,3,3

level -- Flurry (Rank 4)
    .talent 2,6,3,4

level -- Flurry (Rank 5)
    .talent 2,6,3,5

level -- Bloodthirst
    .talent 2,7,2,1

level -- Precision (Rank 1)
    .talent 2,7,1,1

level -- Precision (Rank 2)
    .talent 2,7,1,2

level -- Precision (Rank 3)
    .talent 2,7,1,3

level -- Dual Wield Specialization (Rank 3)
    .talent 2,4,1,3

level -- Improved Berserker Stance (Rank 1)
    .talent 2,8,3,1

level -- Improved Berserker Stance (Rank 2)
    .talent 2,8,3,2

level -- Improved Berserker Stance (Rank 3)
    .talent 2,8,3,3

level -- Improved Berserker Stance (Rank 4)
    .talent 2,8,3,4

level -- Improved Berserker Stance (Rank 5)
    .talent 2,8,3,5

level -- Rampage
    .talent 2,9,2,1

level -- Dual Wield Specialization (Rank 4)
    .talent 2,4,1,4

level -- Dual Wield Specialization (Rank 5)
    .talent 2,4,1,5

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

level -- Improved Charge (Rank 1)
    .talent 1,2,1,1

level -- Improved Charge (Rank 2)
    .talent 1,2,1,2

level -- Improved Heroic Strike (Rank 1)
    .talent 1,1,1,1

level -- Improved Heroic Strike (Rank 2)
    .talent 1,1,1,2

level -- Improved Heroic Strike (Rank 3)
    .talent 1,1,1,3

level -- Anger Management
    .talent 1,3,2,1

level -- Deep Wounds (Rank 1)
    .talent 1,3,3,1

level -- Deep Wounds (Rank 2)
    .talent 1,3,3,2

level -- Deep Wounds (Rank 3)
    .talent 1,3,3,3

level -- Improved Overpower (Rank 1)
    .talent 1,3,1,1

level -- Impale (Rank 1)
    .talent 1,4,3,1

level -- Impale (Rank 2)
    .talent 1,4,3,2

level -- Commanding Presence (Rank 2)
    .talent 2,3,4,2
]])

--2H fury
addon.talents.RegisterGuide([[
#name Fury (2 Handed) 32-60 Hardcore
#minLevel 10
#maxLevel 60
#order 5

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

level -- Improved Demoralizing Shout (Rank 1)
    .talent 2,2,2,1

level -- Improved Demoralizing Shout (Rank 2)
    .talent 2,2,2,2

level -- Improved Demoralizing Shout (Rank 3)
    .talent 2,2,2,3

level -- Improved Demoralizing Shout (Rank 4)
    .talent 2,2,2,4

level -- Improved Demoralizing Shout (Rank 5)
    .talent 2,2,2,5

level -- Piercing Howl
    .talent 2,3,2,1

level -- Blood Craze (Rank 1)
    .talent 2,3,3,1

level -- Blood Craze (Rank 2)
    .talent 2,3,3,2

level -- Blood Craze (Rank 3)
    .talent 2,3,3,3

level -- Commanding Presence (Rank 1)
    .talent 2,3,4,1

level -- Enrage (Rank 1)
    .talent 2,4,3,1

level -- Enrage (Rank 2)
    .talent 2,4,3,2

level -- Enrage (Rank 3)
    .talent 2,4,3,3

level -- Enrage (Rank 4)
    .talent 2,4,3,4

level -- Enrage (Rank 5)
    .talent 2,4,3,5

level -- Sweeping Strikes
    .talent 2,5,2,1

level -- Weapon Mastery (Rank 1)
    .talent 2,5,4,1

level -- Weapon Mastery (Rank 2)
    .talent 2,5,4,2

level -- Commanding Presence (Rank 2)
    .talent 2,3,4,2

level -- Commanding Presence (Rank 3)
    .talent 2,3,4,3

level -- Flurry (Rank 1)
    .talent 2,6,3,1

level -- Flurry (Rank 2)
    .talent 2,6,3,2

level -- Flurry (Rank 3)
    .talent 2,6,3,3

level -- Flurry (Rank 4)
    .talent 2,6,3,4

level -- Flurry (Rank 5)
    .talent 2,6,3,5

level -- Bloodthirst
    .talent 2,7,2,1

level -- Precision (Rank 1)
    .talent 2,7,1,1

level -- Precision (Rank 2)
    .talent 2,7,1,2

level -- Precision (Rank 3)
    .talent 2,7,1,3

level -- Improved Whirlwind (Rank 1)
    .talent 2,7,3,1

level -- Improved Berserker Stance (Rank 1)
    .talent 2,8,3,1

level -- Improved Berserker Stance (Rank 2)
    .talent 2,8,3,2

level -- Improved Berserker Stance (Rank 3)
    .talent 2,8,3,3

level -- Improved Berserker Stance (Rank 4)
    .talent 2,8,3,4

level -- Improved Berserker Stance (Rank 5)
    .talent 2,8,3,5

level -- Rampage
    .talent 2,9,2,1

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

level -- Improved Charge (Rank 1)
    .talent 1,2,1,1

level -- Improved Charge (Rank 2)
    .talent 1,2,1,2

level -- Improved Whirlwind (Rank 2)
    .talent 2,7,3,2

level -- Improved Berserker Rage (Rank 1)
    .talent 2,6,1,1

level -- Improved Berserker Rage (Rank 2)
    .talent 2,6,1,2
]])

addon.talents.RegisterGuide([[
#name Arms (2 Handed) 61-70 Hardcore
#minLevel 10
#maxLevel 70
#oder 6

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

level -- Improved Charge (Rank 1)
    .talent 1,2,1,1

level -- Improved Charge (Rank 2)
    .talent 1,2,1,2

level -- Improved Rend (Rank 1)
    .talent 1,1,3,1

level -- Improved Rend (Rank 2)
    .talent 1,1,3,2

level -- Improved Rend (Rank 3)
    .talent 1,1,3,3

level -- Anger Management
    .talent 1,3,2,1

level -- Improved Overpower (Rank 1)
    .talent 1,3,1,1

level -- Improved Overpower (Rank 2)
    .talent 1,3,1,2

level -- Deep Wounds (Rank 1)
    .talent 1,3,3,1

level -- Deep Wounds (Rank 2)
    .talent 1,3,3,2

level -- Deep Wounds (Rank 3)
    .talent 1,3,3,3

level -- Impale (Rank 1)
    .talent 1,4,3,1

level -- Impale (Rank 2)
    .talent 1,4,3,2

level -- Two-Handed Weapon Specialization (Rank 1)
    .talent 1,4,2,1

level -- Two-Handed Weapon Specialization (Rank 2)
    .talent 1,4,2,2

level -- Death Wish
    .talent 1,5,2,1

level -- Two-Handed Weapon Specialization (Rank 3)
    .talent 1,4,2,3

level -- Two-Handed Weapon Specialization (Rank 4)
    .talent 1,4,2,4

level -- Two-Handed Weapon Specialization (Rank 5)
    .talent 1,4,2,5

level -- Weapon Specialization (Rank 1)
    #optional
    .talent 1,5,1,1 -- Poleaxe Specialization (Rank 1)
    .talent 1,5,3,1 -- Mace Specialization (Rank 1)
    .talent 1,5,4,1 -- Sword Specialization (Rank 1)

level -- Weapon Specialization (Rank 2)
    #optional
    .talent 1,5,1,2 -- Poleaxe Specialization (Rank 2)
    .talent 1,5,3,2 -- Mace Specialization (Rank 2)
    .talent 1,5,4,2 -- Sword Specialization (Rank 2)

level -- Weapon Specialization (Rank 3)
    #optional
    .talent 1,5,1,3 -- Poleaxe Specialization (Rank 3)
    .talent 1,5,3,3 -- Mace Specialization (Rank 3)
    .talent 1,5,4,3 -- Sword Specialization (Rank 3)

level -- Weapon Specialization (Rank 4)
    #optional
    .talent 1,5,1,4 -- Poleaxe Specialization (Rank 4)
    .talent 1,5,3,4 -- Mace Specialization (Rank 4)
    .talent 1,5,4,4 -- Sword Specialization (Rank 4)

level -- Weapon Specialization (Rank 5)
    #optional
    .talent 1,5,1,5 -- Poleaxe Specialization (Rank 5)
    .talent 1,5,3,5 -- Mace Specialization (Rank 5)
    .talent 1,5,4,5 -- Sword Specialization (Rank 5)

level -- Improved Intercept (Rank 1)
    .talent 1,6,1,1

level -- Mortal Strike
    .talent 1,7,2,1

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

level -- Improved Demoralizing Shout (Rank 1)
    .talent 2,2,2,1

level -- Improved Demoralizing Shout (Rank 2)
    .talent 2,2,2,2

level -- Improved Demoralizing Shout (Rank 3)
    .talent 2,2,2,3

level -- Improved Demoralizing Shout (Rank 4)
    .talent 2,2,2,4

level -- Improved Demoralizing Shout (Rank 5)
    .talent 2,2,2,5

level -- Piercing Howl
    .talent 2,3,2,1

level -- Blood Craze (Rank 1)
    .talent 2,3,3,1

level -- Blood Craze (Rank 2)
    .talent 2,3,3,2

level -- Blood Craze (Rank 3)
    .talent 2,3,3,3

level -- Commanding Presence (Rank 1)
    .talent 2,3,4,1

level -- Enrage (Rank 1)
    .talent 2,4,3,1

level -- Enrage (Rank 2)
    .talent 2,4,3,2

level -- Enrage (Rank 3)
    .talent 2,4,3,3

level -- Enrage (Rank 4)
    .talent 2,4,3,4

level -- Enrage (Rank 5)
    .talent 2,4,3,5

level -- Sweeping Strikes
    .talent 2,5,2,1

level -- Blood Frenzy (Rank 1)
    .talent 1,7,1,1

level -- Blood Frenzy (Rank 2)
    .talent 1,7,1,2

level -- Weapon Mastery (Rank 1)
    .talent 2,5,4,1

level -- Weapon Mastery (Rank 2)
    .talent 2,5,4,2

level -- Commanding Presence (Rank 2)
    .talent 2,3,4,2

level -- Commanding Presence (Rank 3)
    .talent 2,3,4,3

level -- Flurry (Rank 1)
    .talent 2,6,3,1

level -- Flurry (Rank 2)
    .talent 2,6,3,2

level -- Flurry (Rank 3)
    .talent 2,6,3,3
]])