local _, addon = ...

if addon.player.class ~= "WARLOCK" or addon.game ~= "CATA" then return end

addon.talents.RegisterGuide([[
#name Affliction Warlock 10-85
#minLevel 10
#maxLevel 85

level -- Improved Corruption
	.talent 1,1,3,1

level -- Improved Corruption
	.talent 1,1,3,2

level -- Improved Corruption
	.talent 1,1,3,3

level -- Doom and Gloom
	.talent 1,1,1,1

level -- Doom and Gloom
	.talent 1,1,1,2

level -- Improved Life Tap
	.talent 1,1,2,1

level -- Improved Life Tap
	.talent 1,1,2,2

level -- Soul Siphon
	.talent 1,2,2,1

level -- Soul Siphon
	.talent 1,2,2,2

level -- Siphon Life
	.talent 1,2,3,1

level -- Siphon Life
	.talent 1,2,3,2

level -- Jinx
	.talent 1,2,1,1

level -- Jinx
	.talent 1,2,1,2

level -- Eradication
	.talent 1,3,4,1

level -- Eradication
	.talent 1,3,4,2

level -- Eradication
	.talent 1,3,4,3

level -- Curse of Exhaustion
	.talent 1,3,1,1

level -- Soul Swap
	.talent 1,4,2,1

level -- Shadow Embrace
	.talent 1,4,3,1

level -- Shadow Embrace
	.talent 1,4,3,2

level -- Shadow Embrace
	.talent 1,4,3,3

level -- Nightfall
	.talent 1,5,2,1

level -- Nightfall
	.talent 1,5,2,2

level -- Death's Embrace
	.talent 1,5,1,1

level -- Death's Embrace
	.talent 1,5,1,2

level -- Death's Embrace
	.talent 1,5,1,3

level -- Soulburn: Seed of Corruption
	.talent 1,5,3,1

level -- Everlasting Affliction
	.talent 1,6,2,1

level -- Everlasting Affliction
	.talent 1,6,2,2

level -- Everlasting Affliction
	.talent 1,6,2,3

level -- Pandemic
	.talent 1,6,3,1

level -- Pandemic
	.talent 1,6,3,2

level -- Haunt
	.talent 1,7,2,1

level -- Dark Arts
	.talent 2,1,2,1

level -- Dark Arts
	.talent 2,1,2,2

level -- Dark Arts
	.talent 2,1,2,3

level -- Fel Synergy
	.talent 2,1,3,1

level -- Demonic Embrace
	.talent 2,1,1,1

level -- Demonic Aegis
	.talent 2,2,3,1

level -- Demonic Aegis
	.talent 2,2,3,2

level -- Mana Feed
	.talent 2,2,3,1
]])
