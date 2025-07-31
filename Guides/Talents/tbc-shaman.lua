local _, addon = ...

if addon.player.class ~= "SHAMAN" or addon.game ~= "TBC" then return end

addon.talents.RegisterGuide([[
#name Enhancement Shaman 10-70
#minLevel 10
#maxLevel 70

level -- Shield Specialization (Rank 1)
	.talent 2,1,3,1

level -- Shield Specialization (Rank 2)
	.talent 2,1,3,2

level -- Shield Specialization (Rank 3)
	.talent 2,1,3,3

level -- Shield Specialization (Rank 4)
	.talent 2,1,3,4

level -- Shield Specialization (Rank 5)
	.talent 2,1,3,5

level -- Thundering Strikes (Rank 1)
	.talent 2,2,2,1

level -- Thundering Strikes (Rank 2)
	.talent 2,2,2,2

level -- Thundering Strikes (Rank 3)
	.talent 2,2,2,3

level -- Thundering Strikes (Rank 4)
	.talent 2,2,2,4

level -- Thundering Strikes (Rank 5)
	.talent 2,2,2,5

level -- Shamanistic Focus
	.talent 2,3,3,1

level -- Improved Ghost Wolf (Rank 1)
	.talent 2,2,3,1

level -- Improved Ghost Wolf (Rank 2)
	.talent 2,2,3,2

level -- Enhancing Totems (Rank 1)
	.talent 2,3,1,1

level -- Enhancing Totems (Rank 2)
	.talent 2,3,1,2

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
	.talent 2,5,3,1

level -- Elemental Weapons (Rank 2)
	.talent 2,5,3,2

level -- Elemental Weapons (Rank 3)
	.talent 2,5,3,3

level -- Anticipation (Rank 1)
	.talent 2,3,4,1

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

level -- Stormstrike
	.talent 2,7,3,1

level -- Dual Wield
	.talent 2,7,2,1

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

level -- Call of Flame (Rank 1)
	.talent 1,2,3,1

level -- Call of Flame (Rank 2)
	.talent 1,2,3,2

level -- Call of Flme (Rank 3)
	.talent 1,2,3,3

level -- Earth's Grasp (Rank 1)
	.talent 1,2,1,1

level -- Earth's Grasp (Rank 2)
	.talent 1,2,1,2

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

level -- Improved Fire Totems (Rank 1)
	.talent 1,4,1,1
]])

addon.talents.RegisterGuide([[
#name Elemental Shaman 10-70
#minLevel 10
#maxLevel 70

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

level -- Eye of the Storm (Rank 1)
	.talent 1,4,2,1

level -- Eye of the Storm (Rank 2)
	.talent 1,4,2,2

level -- Eye of the Storm (Rank 3)
	.talent 1,4,2,3

level -- Elemental Warding (Rank 1)
	.talent 1,2,2,1

level -- Elemental Fury
	.talent 1,5,2,1

level -- Storm Reach (Rank 1)
	.talent 1,5,1,1

level -- Storm Reach (Rank 2)
	.talent 1,5,1,2

level -- Unrelenting Storm (Rank 1)
	.talent 1,5,4,1

level -- Unrelenting Storm (Rank 2)
	.talent 1,5,4,2

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

level -- Elemental Precision (Rank 1)
	.talent 1,6,1,1

level -- Elemental Precision (Rank 2)
	.talent 1,6,1,2

level -- Elemental Precision (Rank 3)
	.talent 1,6,1,3

level -- Unrelenting Storm (Rank 3)
	.talent 1,5,4,3

level -- Lightning Overload (Rank 1)
	.talent 1,8,2,1

level -- Lightning Overload (Rank 2)
	.talent 1,8,2,2

level -- Lightning Overload (Rank 3)
	.talent 1,8,2,3

level -- Lightning Overload (Rank 4)
	.talent 1,8,2,4

level -- Lightning Overload (Rank 5)
	.talent 1,8,2,5

level -- Totem of Wrath
	.talent 1,9,2,1

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

level -- Improved Reincarnation (Rank 1)
	.talent 3,2,1,1

level -- Improved Reincarnation (Rank 2)
	.talent 3,2,1,2

level -- Totemic Focus (Rank 1)
	.talent 3,2,3,1

level -- Totemic Focus (Rank 2)
	.talent 3,2,3,2

level -- Totemic Focus (Rank 3)
	.talent 3,2,3,3

level -- Totemic Mastery
	.talent 3,3,3,1

level -- Nature's Guidance (Rank 1)
	.talent 3,3,1,1

level -- Nature's Guidance (Rank 2)
	.talent 3,3,1,2

level -- Nature's Guidance (Rank 3)
	.talent 3,3,1,3

level -- Totemic Focus (Rank 4)
	.talent 3,2,3,4

level -- Tidal Mastery (Rank 1)
	.talent 3,4,3,1

level -- Tidal Mastery (Rank 2)
	.talent 3,4,3,2

level -- Tidal Mastery (Rank 3)
	.talent 3,4,3,3

level -- Tidal Mastery (Rank 4)
	.talent 3,4,3,4

level -- Tidal Mastery (Rank 5)
	.talent 3,4,3,5
]])
