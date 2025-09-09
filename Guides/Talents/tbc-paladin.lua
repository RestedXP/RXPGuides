local _, addon = ...

if addon.player.class ~= "PALADIN" or addon.game ~= "TBC" then return end

addon.talents.RegisterGuide([[
#name Retribution Paladin 10-70
#minLevel 10
#maxLevel 70

level -- Benediction (Rank 1)
    .talent 3,1,3,1

level -- Benediction (Rank 2)
    .talent 3,1,3,2

level -- Benediction (Rank 3)
    .talent 3,1,3,3

level -- Benediction (Rank 4)
    .talent 3,1,3,4

level -- Benediction (Rank 5)
    .talent 3,1,3,5

level -- Improved Judgement (Rank 1)
    .talent 3,2,1,1

level -- Improved Judgement (Rank 2)
    .talent 3,2,1,2

level -- Improved Seal of the Crusader (Rank 1)
    .talent 3,2,2,1

level -- Improved Seal of the Crusader (Rank 2)
    .talent 3,2,2,2

level -- Improved Seal of the Crusader (Rank 3)
    .talent 3,2,2,3

level -- Seal of Command
    .talent 3,3,3,1

level -- Pursuit of Justice (Rank 1)
    .talent 3,3,4,1

level -- Pursuit of Justice (Rank 2)
    .talent 3,3,4,2

level -- Pursuit of Justice (Rank 3)
    .talent 3,3,4,3

level -- Conviction (Rank 1)
    .talent 3,3,2,1

level -- Crusade (Rank 1)
    .talent 3,4,4,1

level -- Crusade (Rank 2)
    .talent 3,4,4,2

level -- Crusade (Rank 3)
    .talent 3,4,4,3

level -- Conviction (Rank 2)
    .talent 3,3,2,2

level -- Conviction (Rank 3)
    .talent 3,3,2,3

level -- Sanctity Aura
    .talent 3,5,5,1

level -- Two-Handed Weapon Specialization (Rank 1)
    .talent 3,5,1,1

level -- Two-Handed Weapon Specialization (Rank 2)
    .talent 3,5,1,2

level -- Conviction (Rank 4)
    .talent 3,3,2,4

level -- Conviction (Rank 5)
    .talent 3,3,2,5

level -- Sanctified Judgement (Rank 1)
    .talent 3,6,3,1

level -- Sanctified Judgement (Rank 2)
    .talent 3,6,3,2

level -- Sanctified Judgement (Rank 3)
    .talent 3,6,3,3

level -- Two-Handed Weapon Specialization (Rank 3)
    .talent 3,5,1,3

level -- Vengeance (Rank 1)
    .talent 3,6,2,1

level -- Vengeance (Rank 2)
    .talent 3,6,2,2

level -- Vengeance (Rank 3)
    .talent 3,6,2,3

level -- Vengeance (Rank 4)
    .talent 3,6,2,4

level -- Vengeance (Rank 5)
    .talent 3,6,2,5

level -- Repentance
    .talent 3,7,2,1

level -- Fanaticism (Rank 1)
    .talent 3,8,2,1

level -- Fanaticism (Rank 2)
    .talent 3,8,2,2

level -- Fanaticism (Rank 3)
    .talent 3,8,2,3

level -- Fanaticism (Rank 4)
    .talent 3,8,2,4

level -- Fanaticism (Rank 5)
    .talent 3,8,2,5

level -- Crusader Strike
    .talent 3,9,2,1

level -- Sanctified Seals (Rank 1)
    .talent 3,7,1,1

level -- Sanctified Seals (Rank 2)
    .talent 3,7,1,2

level -- Sanctified Seals (Rank 3)
    .talent 3,7,1,3

level -- Improved Sanctity Aura (Rank 1)
    .talent 3,6,4,1

level -- Improved Sanctity Aura (Rank 2)
    .talent 3,6,4,2

level -- Divine Strength (Rank 1)
    .talent 3,1,2,1

level -- Divine Strength (Rank 2)
    .talent 3,1,2,2

level -- Divine Strength (Rank 3)
    .talent 3,1,2,3

level -- Divine Strength (Rank 4)
    .talent 3,1,2,4

level -- Divine Strength (Rank 5)
    .talent 3,1,2,5

level -- Redoubt (Rank 1)
    .talent 2,1,3,1

level -- Redoubt (Rank 2)
    .talent 2,1,3,2

level -- Redoubt (Rank 3)
    .talent 2,1,3,3

level -- Redoubt (Rank 4)
    .talent 2,1,3,4

level -- Redoubt (Rank 5)
    .talent 2,1,3,5

level -- Precision (Rank 1)
    .talent 2,2,1,1

level -- Precision (Rank 2)
    .talent 2,2,1,2

level -- Precision (Rank 3)
    .talent 2,2,1,3

level -- Guardian's Favor (Rank 1)
    .talent 2,2,2,1

level -- Guardian's Favor (Rank 2)
    .talent 2,2,2,2
]])
