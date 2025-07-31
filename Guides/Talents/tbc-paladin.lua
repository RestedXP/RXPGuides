local _, addon = ...

if addon.player.class ~= "PALADIN" or addon.game ~= "TBC" then return end

addon.talents.RegisterGuide([[
#name Hardcore Paladin 10-60
#minLevel 10
#maxLevel 60
#hardcore


level -- Divine Intellect Rank 1
	.talent 1,1,3,1

level -- Divine Intellect Rank 2
	.talent 1,1,3,2

level -- Divine Intellect Rank 3
	.talent 1,1,3,3

level -- Divine Intellect Rank 4
	.talent 1,1,3,4

level -- Divine Intellect Rank 5
	.talent 1,1,3,5

level -- Spiritual Focus Rank 1
	.talent 1,2,2,1

level -- Spiritual Focus Rank 2
	.talent 1,2,2,2

level -- Spiritual Focus Rank 3
	.talent 1,2,2,3

level -- Spiritual Focus Rank 4
	.talent 1,2,2,4

level -- Spiritual Focus Rank 5
	.talent 1,2,2,5

level -- Benediction Rank 1
	.talent 3,1,3,1

level -- Benediction Rank 2
	.talent 3,1,3,2

level -- Benediction Rank 3
	.talent 3,1,3,3

level -- Benediction Rank 4
	.talent 3,1,3,4

level -- Benediction Rank 5
	.talent 3,1,3,5

level -- Deflection Rank 1
	.talent 3,2,3,1

level -- Deflection Rank 2
	.talent 3,2,3,2

level -- Deflection Rank 3
	.talent 3,2,3,3

level -- Deflection Rank 4
	.talent 3,2,3,4

level -- Deflection Rank 5
	.talent 3,2,3,5

level -- Seal of Command
	.talent 3,3,3,1

level -- Pursuit of Justice Rank 1
	.talent 3,3,4,1

level -- Pursuit of Justice Rank 2
	.talent 3,3,4,2

level -- Conviction Rank 1
	.talent 3,3,2,1

level -- Conviction Rank 2
	.talent 3,3,2,2

level -- Improved Retribution Aura Rank 1
	.talent 3,4,3,1

level -- Improved Retribution Aura Rank 2
	.talent 3,4,3,2

level -- Conviction Rank 3
	.talent 3,3,2,3

level -- Conviction Rank 4
	.talent 3,3,2,4

level -- Conviction Rank 5
	.talent 3,3,2,5

level -- Two-Handed Weapon Specialization Rank 1
	.talent 3,5,1,1

level -- Two-Handed Weapon Specialization Rank 2
	.talent 3,5,1,2

level -- Two-Handed Weapon Specialization Rank 3
	.talent 3,5,1,3

level -- Improved Judgement Rank 1
	.talent 3,2,1,1

level -- Improved Judgement Rank 2
	.talent 3,2,1,2

level -- Vengeance Rank 1
	.talent 3,6,2,1

level -- Vengeance Rank 2
	.talent 3,6,2,2

level -- Vengeance Rank 3
	.talent 3,6,2,3

level -- Vengeance Rank 4
	.talent 3,6,2,4

level -- Vengeance Rank 5
	.talent 3,6,2,5

level -- Repentance
	.talent 3,7,2,1

level -- Redoubt Rank 1
	.talent 2,1,3,1

level -- Redoubt Rank 2
	.talent 2,1,3,2

level -- Redoubt Rank 3
	.talent 2,1,3,3

level -- Redoubt Rank 4
	.talent 2,1,3,4

level -- Redoubt Rank 5
	.talent 2,1,3,5

level -- Precision Rank 1
	.talent 2,2,1,1

level -- Precision Rank 2
	.talent 2,2,1,2

level -- Precision Rank 3
	.talent 2,2,1,3

level -- Guardian's Favor Rank 1
	.talent 2,2,2,1

level -- Guardian's Favor Rank 2
	.talent 2,2,2,2


]])

addon.talents.RegisterGuide([[
#name Softcore Paladin 10-60
#minLevel 10
#maxLevel 60


level -- Benediction Rank 1
	.talent 3,1,3,1

level -- Benediction Rank 2
	.talent 3,1,3,2

level -- Benediction Rank 3
	.talent 3,1,3,3

level -- Benediction Rank 4
	.talent 3,1,3,4

level -- Benediction Rank 5
	.talent 3,1,3,5

level -- Deflection Rank 1
	.talent 3,2,3,1

level -- Deflection Rank 2
	.talent 3,2,3,2

level -- Deflection Rank 3
	.talent 3,2,3,3

level -- Deflection Rank 4
	.talent 3,2,3,4

level -- Deflection Rank 5
	.talent 3,2,3,5

level -- Seal of Command
	.talent 3,3,3,1

level -- Pursuit of Justice Rank 1
	.talent 3,3,4,1

level -- Pursuit of Justice Rank 2
	.talent 3,3,4,2

level -- Conviction Rank 1
	.talent 3,3,2,1

level -- Conviction Rank 2
	.talent 3,3,2,2

level -- Improved Retribution Aura Rank 1
	.talent 3,4,3,1

level -- Improved Retribution Aura Rank 2
	.talent 3,4,3,2

level -- Conviction Rank 3
	.talent 3,3,2,3

level -- Conviction Rank 4
	.talent 3,3,2,4

level -- Conviction Rank 5
	.talent 3,3,2,5

level -- Two-Handed Weapon Specialization Rank 1
	.talent 3,5,1,1

level -- Two-Handed Weapon Specialization Rank 2
	.talent 3,5,1,2

level -- Two-Handed Weapon Specialization Rank 3
	.talent 3,5,1,3

level -- Redoubt Rank 1
	.talent 2,1,3,1

level -- Redoubt Rank 2
	.talent 2,1,3,2

level -- Redoubt Rank 3
	.talent 2,1,3,3

level -- Redoubt Rank 4
	.talent 2,1,3,4

level -- Redoubt Rank 5
	.talent 2,1,3,5

level -- Precision Rank 1
	.talent 2,2,1,1

level -- Precision Rank 2
	.talent 2,2,1,2

level -- Precision Rank 3
	.talent 2,2,1,3

level -- Improved Judgement Rank 1
	.talent 3,2,1,1

level -- Improved Judgement Rank 2
	.talent 3,2,1,2

level -- Vengeance Rank 1
	.talent 3,6,2,1

level -- Vengeance Rank 2
	.talent 3,6,2,2

level -- Vengeance Rank 3
	.talent 3,6,2,3

level -- Vengeance Rank 4
	.talent 3,6,2,4

level -- Vengeance Rank 5
	.talent 3,6,2,5

level -- Repentance
	.talent 3,7,2,1

level -- Divine Intellect Rank 1
	.talent 1,1,3,1

level -- Divine Intellect Rank 2
	.talent 1,1,3,2

level -- Divine Intellect Rank 3
	.talent 1,1,3,3

level -- Divine Intellect Rank 4
	.talent 1,1,3,4

level -- Divine Intellect Rank 5
	.talent 1,1,3,5

level -- Spiritual Focus Rank 1
	.talent 1,2,2,1

level -- Spiritual Focus Rank 2
	.talent 1,2,2,2

level -- Spiritual Focus Rank 3
	.talent 1,2,2,3

level -- Spiritual Focus Rank 4
	.talent 1,2,2,4

level -- Spiritual Focus Rank 5
	.talent 1,2,2,5

level -- Consecration
	.talent 1,3,2,1

]])
