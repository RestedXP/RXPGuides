local _, addon = ...

if addon.player.class ~= "WARLOCK" or addon.game ~= "TBC" then return end

addon.talents.RegisterGuide([[
#name Warlock 10-60
#minLevel 10
#maxLevel 60

level -- Improved Corruption Rank 1
	.talent 1,1,3,1

level -- Improved Corruption Rank 2
	.talent 1,1,3,2

level -- Improved Corruption Rank 3
	.talent 1,1,3,3

level -- Improved Corruption Rank 4
	.talent 1,1,3,4

level -- Improved Corruption Rank 5
	.talent 1,1,3,5

level -- Improved Life Tap Rank 1
	.talent 1,2,3,1

level -- Improved Life Tap Rank 2
	.talent 1,2,3,2

level -- Suppression Rank 1
	.talent 1,1,2,1

level -- Suppression Rank 2
	.talent 1,1,2,2

level -- Improved Drain Life Rank 1
	.talent 1,2,4,1

level -- Improved Drain Life Rank 2
	.talent 1,2,4,2

level -- Fel Concentration Rank 1
	.talent 1,3,2,1

level -- Fel Concentration Rank 2
	.talent 1,3,2,2

level -- Fel Concentration Rank 3
	.talent 1,3,2,3

level -- Fel Concentration Rank 4
	.talent 1,3,2,4

level -- Fel Concentration Rank 5
	.talent 1,3,2,5

level -- Grim Reach Rank 1
	.talent 1,4,1,1

level -- Grim Reach Rank 2
	.talent 1,4,1,2

level -- Improved Drain Life Rank 3
	.talent 1,2,4,3

level -- Improved Drain Life Rank 4
	.talent 1,2,4,4

level -- Siphon Life
	.talent 1,5,2,1

level -- Improved Drain Life Rank 5
	.talent 1,2,4,5

level -- Nightfall Rank 1
	.talent 1,4,2,1

level -- Nightfall Rank 2
	.talent 1,4,2,2

level -- Fel Concentration Rank 1
	.talent 1,3,1,1

level -- Shadow Mastery Rank 1
	.talent 1,6,2,1

level -- Shadow Mastery Rank 2
	.talent 1,6,2,2

level -- Shadow Mastery Rank 3
	.talent 1,6,2,3

level -- Shadow Mastery Rank 4
	.talent 1,6,2,4

level -- Shadow Mastery Rank 5
	.talent 1,6,2,5

level -- Siphon Life
	.talent 1,7,2,1

level -- Improved Healthstone Rank 1
	.talent 2,1,1,1

level -- Improved Healthstone Rank 2
	.talent 2,1,1,2

level -- Demonic Embrace Rank 1
	.talent 2,1,3,1

level -- Demonic Embrace Rank 2
	.talent 2,1,3,2

level -- Demonic Embrace Rank 3
	.talent 2,1,3,3

level -- Improved Voidwalker Rank 1
	.talent 2,2,2,3

level -- Improved Voidwalker Rank 2
	.talent 2,2,2,3

level -- Improved Voidwalker Rank 3
	.talent 2,2,2,3

level -- Cataclysm Rank 1
	.talent 3,1,3,1

level -- Cataclysm Rank 2
	.talent 3,1,3,2

level -- Cataclysm Rank 3
	.talent 3,1,3,3

level -- Cataclysm Rank 4
	.talent 3,1,3,4

level -- Cataclysm Rank 5
	.talent 3,1,3,5

level -- Bane Rank 1
	.talent 3,2,2,1

level -- Bane Rank 2
	.talent 3,2,2,2

level -- Bane Rank 3
	.talent 3,2,2,3

level -- Bane Rank 4
	.talent 3,2,2,4

level -- Bane Rank 5
	.talent 3,2,2,5

level -- Shadowburn
	.talent 3,3,4,1

level -- Devastation Rank 1
	.talent 3,3,3,1

]])
