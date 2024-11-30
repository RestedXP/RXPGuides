local _, addon = ...

if addon.player.class ~= "SHAMAN" or addon.game ~= "CATA" then return end

addon.talents.RegisterGuide([[
#name Elemental Shaman 10-85
#minLevel 10
#maxLevel 85

level -- Concussion
	.talent 1,1,3,1

level -- Concussion
	.talent 1,1,3,2

level -- Concussion
	.talent 1,1,3,3

level -- Acuity
	.talent 1,1,1,1

level -- Acuity
	.talent 1,1,1,2

level -- Acuity
	.talent 1,1,1,3

level -- Elemental Precision
	.talent 1,2,4,1

level -- Elemental Precision
	.talent 1,2,4,2

level -- Elemental Precision
	.talent 1,2,4,3

level -- Call of Flame
	.talent 1,2,1,1

level -- Call of Flame
	.talent 1,2,1,2

level -- Elemental Focus
	.talent 1,3,2,1

level -- Rolling Thunder
	.talent 1,3,1,1

level -- Rolling Thunder
	.talent 1,3,1,2

level -- Elemental Reach
	.talent 1,3,3,1

level -- Elemental Reach
	.talent 1,3,3,2

level -- Elemental Oath
	.talent 1,4,2,1

level -- Elemental Oath
	.talent 1,4,2,2

level -- Lava Flows
	.talent 1,4,3,1

level -- Lava Flows
	.talent 1,4,3,2

level -- Lava Flows
	.talent 1,4,3,3

level -- Totemic Wrath
	.talent 1,5,4,1

level -- Fulmination
	.talent 1,5,1,1

level -- Elemental Mastery
	.talent 1,5,2,1

level -- Reverberation
	.talent 1,2,3,1

level -- Reverberation
	.talent 1,2,3,2

level -- Lava Surge
	.talent 1,6,3,1

level -- Lava Surge
	.talent 1,6,3,2

level -- Feedback
	.talent 1,6,3,1

level -- Feedback
	.talent 1,6,3,2

level -- Elemental Weapons
	.talent 2,1,1,1

level -- Elemental Weapons
	.talent 2,1,1,2

level -- Improved Shields
	.talent 2,1,3,1

level -- Ancestral Swiftness
	.talent 2,2,3,1

level -- Ancestral Swiftness
	.talent 2,2,3,2

level -- Ancestral Resolve
	.talent 3,1,1,1

level -- Ancestral Resolve
	.talent 3,1,1,2

level -- Spark of Life
	.talent 3,1,3,1
]])
