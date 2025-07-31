local _, addon = ...

if addon.player.class ~= "SHAMAN" or addon.game ~= "TBC" then return end

addon.talents.RegisterGuide([[
#name Shaman 10-40
#minLevel 10
#maxLevel 40

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

level -- Two-Handed Axes and Maces
	.talent 2,3,3,1

level -- Thundering Strikes (Rank 4)
	.talent 2,2,2,4

level -- Thundering Strikes (Rank 5)
	.talent 2,2,2,5

level -- Anticipation (Rank 1)
	.talent 2,3,4,1

level -- Anticipation (Rank 2)
	.talent 2,3,4,2

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

level -- Parry
	.talent 2,5,3,1

level -- Elemental Weapons (Rank 1)
	.talent 2,5,2,1

level -- Elemental Weapons (Rank 2)
	.talent 2,5,2,2

level -- Elemental Weapons (Rank 3)
	.talent 2,5,2,3

level -- Improved Weapon Totems (Rank 1)
	.talent 2,5,1,1

level -- Weapon Mastery (Rank 1)
	.talent 2,6,3,1

level -- Weapon Mastery (Rank 2)
	.talent 2,6,3,2

level -- Weapon Mastery (Rank 3)
	.talent 2,6,3,3

level -- Weapon Mastery (Rank 4)
	.talent 2,6,3,4

level -- Weapon Mastery (Rank 5)
	.talent 2,6,3,5

level -- Stormstrike
	.talent 2,7,2,1

level -- Improved Weapon Totems (Rank 2)
	.talent 2,5,1,2

level -- Concussion (Rank 1)
	.talent 1,1,3,1

level -- Concussion (Rank 2)
	.talent 1,1,3,2

level -- Concussion (Rank 3)
	.talent 1,1,3,3

level -- Concussion (Rank 4)
	.talent 1,1,3,4

level -- Concussion (Rank 5)
	.talent 1,1,3,5

level -- Convection (Rank 1)
	.talent 1,1,2,1

level -- Convection (Rank 2)
	.talent 1,1,2,2

level -- Convection (Rank 3)
	.talent 1,1,2,3

level -- Convection (Rank 4)
	.talent 1,1,2,4

level -- Convection (Rank 5)
	.talent 1,1,2,5

level -- Elemental Focus
	.talent 1,3,1,1

level -- Reverberation (Rank 1)
	.talent 1,3,2,1

level -- Reverberation (Rank 2)
	.talent 1,3,2,2

level -- Reverberation (Rank 3)
	.talent 1,3,2,3

level -- Reverberation (Rank 4)
	.talent 1,3,2,4

level -- Elemental Devastation (Rank 1)
	.talent 1,4,4,1

level -- Elemental Devastation (Rank 2)
	.talent 1,4,4,2

level -- Elemental Devastation (Rank 3)
	.talent 1,4,4,3

]])

addon.talents.RegisterGuide([[
#name Shaman 40-60
#minLevel 10
#maxLevel 60
#reset

level -- Concussion (Rank 1)
	.talent 1,1,3,1

level -- Concussion (Rank 2)
	.talent 1,1,3,2

level -- Concussion (Rank 3)
	.talent 1,1,3,3

level -- Concussion (Rank 4)
	.talent 1,1,3,4

level -- Concussion (Rank 5)
	.talent 1,1,3,5

level -- Convection (Rank 1)
	.talent 1,1,2,1

level -- Convection (Rank 2)
	.talent 1,1,2,2

level -- Convection (Rank 3)
	.talent 1,1,2,3

level -- Convection (Rank 4)
	.talent 1,1,2,4

level -- Convection (Rank 5)
	.talent 1,1,2,5

level -- Elemental Focus
	.talent 1,3,1,1

level -- Call of Thunder (Rank 1)
	.talent 1,3,3,1

level -- Call of Thunder (Rank 2)
	.talent 1,3,3,2

level -- Call of Thunder (Rank 3)
	.talent 1,3,3,3

level -- Call of Thunder (Rank 4)
	.talent 1,3,3,4

level -- Call of Thunder (Rank 5)
	.talent 1,3,3,5

level -- Reverberation (Rank 1)
	.talent 1,3,2,1

level -- Reverberation (Rank 2)
	.talent 1,3,2,2

level -- Reverberation (Rank 3)
	.talent 1,3,2,3

level -- Reverberation (Rank 4)
	.talent 1,3,2,4

level -- Elemental Fury
	.talent 1,5,2,1

level -- Storm Reach (Rank 1)
	.talent 1,5,1,1

level -- Storm Reach (Rank 2)
	.talent 1,5,1,2

level -- Reverberation (Rank 5)
	.talent 1,3,2,5

level -- Call of Flame (Rank 1)
	.talent 1,2,3,1

level -- Lightning Mastery (Rank 1)
	.talent 1,6,3,1

level -- Lightning Mastery (Rank 2)
	.talent 1,6,3,2

level -- Lightning Mastery (Rank 3)
	.talent 1,6,3,3

level -- Lightning Mastery (Rank 4)
	.talent 1,6,3,4

level -- Lightning Mastery (Rank 5)
	.talent 1,6,3,5

level -- Elemental Mastery
	.talent 1,7,2,1

level -- Call of Flame (Rank 2)
	.talent 1,2,3,2

level -- Call of Flame (Rank 3)
	.talent 1,2,3,3

level -- Improved Healing Wave (Rank 1)
	.talent 3,1,2,1

level -- Improved Healing Wave (Rank 2)
	.talent 3,1,2,2

level -- Improved Healing Wave (Rank 3)
	.talent 3,1,2,3

level -- Improved Healing Wave (Rank 4)
	.talent 3,1,2,4

level -- Improved Healing Wave (Rank 5)
	.talent 3,1,2,5

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

level -- Ancestral Knowledge (Rank 1)
	.talent 2,1,2,1

level -- Ancestral Knowledge (Rank 2)
	.talent 2,1,2,2

level -- Ancestral Knowledge (Rank 3)
	.talent 2,1,2,3

level -- Ancestral Knowledge (Rank 4)
	.talent 2,1,2,4

]])
