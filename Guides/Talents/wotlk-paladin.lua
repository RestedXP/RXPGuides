local _, addon = ...

if addon.player.class ~= "PALADIN" or addon.gameVersion >= 40000 then return end

addon.talents.RegisterGuide([[
#name Paladin 10-80
#minLevel 10
#maxLevel 80

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

level -- Improved Blessing of Might (Rank 1)
    .talent 3,2,3,1

level -- Improved Blessing of Might (Rank 2)
    .talent 3,2,3,2

level -- Heart of the Crusader (Rank 1)
    .talent 3,2,2,1

level -- Seal of Command
    .talent 3,3,3,1

level -- Pursuit of Justice (Rank 1)
    .talent 3,3,4,1

level -- Pursuit of Justice (Rank 2)
    .talent 3,3,4,2

level -- Conviction (Rank 1)
    .talent 3,3,2,1

level -- Conviction (Rank 2)
    .talent 3,3,2,2

level -- Conviction (Rank 3)
    .talent 3,3,2,3

level -- Conviction (Rank 4)
    .talent 3,3,2,4

level -- Conviction (Rank 5)
    .talent 3,3,2,5

level -- Crusade (Rank 1)
    .talent 3,4,4,1

level -- Crusade (Rank 2)
    .talent 3,4,4,2

level -- Sanctified Retribution
    .talent 3,5,3,1

level -- Two-Handed Weapon Specialization (Rank 1)
    .talent 3,5,1,1

level -- Two-Handed Weapon Specialization (Rank 2)
    .talent 3,5,1,2

level -- Two-Handed Weapon Specialization (Rank 3)
    .talent 3,5,1,3

level -- Crusade (Rank 3)
    .talent 3,4,4,3

level -- Vengeance (Rank 1)
    .talent 3,6,2,1

level -- Vengeance (Rank 2)
    .talent 3,6,2,2

level -- Vengeance (Rank 3)
    .talent 3,6,2,3

level -- Sanctity of Battle (Rank 1)
    .talent 3,4,3,1

level -- Sanctity of Battle (Rank 2)
    .talent 3,4,3,2

level -- Judgement of the Wise (Rank 1)
    .talent 3,7,3,1

level -- Judgement of the Wise (Rank 2)
    .talent 3,7,3,2

level -- Judgement of the Wise (Rank 3)
    .talent 3,7,3,3

level -- The Art of War (Rank 1)
    .talent 3,7,1,1

level -- The Art of War (Rank 2)
    .talent 3,7,1,2

level -- Repentance
    .talent 3,7,2,1

level -- Fanaticism (Rank 1)
    .talent 3,8,2,1

level -- Fanaticism (Rank 2)
    .talent 3,8,2,2

level -- Fanaticism (Rank 3)
    .talent 3,8,2,3

level -- Sanctity of Battle (Rank 3)
    .talent 3,4,3,3

level -- Crusader Strike
    .talent 3,9,2,1

level -- Sheath of Light (Rank 1)
    .talent 3,9,3,1

level -- Sheath of Light (Rank 2)
    .talent 3,9,3,2

level -- Sheath of Light (Rank 3)
    .talent 3,9,3,3

level -- Heart of the Crusader (Rank 2)
    .talent 3,2,2,2

level -- Righteous Vengeance (Rank 1)
    .talent 3,10,2,1

level -- Righteous Vengeance (Rank 2)
    .talent 3,10,2,2

level -- Righteous Vengeance (Rank 3)
    .talent 3,10,2,3

level -- Sanctified Wrath (Rank 1)
    .talent 3,8,3,1

level -- Sanctified Wrath (Rank 2)
    .talent 3,8,3,2

level -- Divine Storm
    .talent 3,11,2,1

level -- Divine Strength (Rank 1)
    .talent 2,1,3,1

level -- Divine Strength (Rank 2)
    .talent 2,1,3,2

level -- Divine Strength (Rank 3)
    .talent 2,1,3,3

level -- Divine Strength (Rank 4)
    .talent 2,1,3,4

level -- Divine Strength (Rank 5)
    .talent 2,1,3,5

level -- Guardian's Favor (Rank 1)
    .talent 2,2,2,1

level -- Guardian's Favor (Rank 2)
    .talent 2,2,2,2

level -- Divinity (Rank 1)
    .talent 2,1,2,1

level -- Divinity (Rank 2)
    .talent 2,1,2,2

level -- Divinity (Rank 3)
    .talent 2,1,2,3

level -- Improved Righteous Fury (Rank 1)
    .talent 2,3,2,1

level -- Improved Righteous Fury (Rank 2)
    .talent 2,3,2,2

level -- Improved Righteous Fury (Rank 3)
    .talent 2,3,2,3

level -- Divine Purpose (Rank 1)
    .talent 3,6,3,1

level -- Divine Purpose (Rank 2)
    .talent 3,6,3,2

level -- Heart of the Crusader (Rank 3)
    .talent 3,2,2,3

level -- Swift Retribution (Rank 1)
    .talent 3,9,1,1

level -- Swift Retribution (Rank 2)
    .talent 3,9,1,2

level -- Swift Retribution (Rank 3)
    .talent 3,9,1,3

level -- Deflection (Rank 1)
    .talent 3,1,2,1

]])
