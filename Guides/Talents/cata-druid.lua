local _, addon = ...

if addon.player.class ~= "DRUID" or addon.game ~= "CATA" then return end

addon.talents.RegisterGuide([[
#name Balance Druid 10-85
#minLevel 10
#maxLevel 85

level -- Starlight Wrath
	.talent 1,1,2,1

level -- Starlight Wrath
	.talent 1,1,2,2

level -- Starlight Wrath
	.talent 1,1,2,3

level -- Nature's Majesty
	.talent 1,1,3,1

level -- Nature's Majesty
	.talent 1,1,3,2

level -- Balance of Power
	.talent 1,2,3,1

level -- Balance of Power
	.talent 1,2,3,2

level -- Nature's Grace
	.talent 1,1,1,1

level -- Nature's Grace
	.talent 1,1,1,2

level -- Nature's Grace
	.talent 1,1,1,3

level -- Moonkin Form
	.talent 1,3,2,1

level -- Euphoria
	.talent 1,3,1,1

level -- Euphoria
	.talent 1,3,1,2

level -- Shooting Stars
	.talent 1,3,3,1

level -- Shooting Stars
	.talent 1,3,3,2

level -- Owlkin Frenzy
	.talent 1,4,2,1

level -- Owlkin Frenzy
	.talent 1,4,2,2

level -- Owlkin Frenzy
	.talent 1,4,2,3

level -- Solar Beam
	.talent 1,4,4,1

level -- Typhoon
	.talent 1,3,3,1

level -- Force of Nature
	.talent 1,5,2,1

level -- Earth and Moon
	.talent 1,5,4,1

level -- Sunfire
	.talent 1,5,3,1

level -- Gale Winds
	.talent 1,4,3,1

level -- Gale Winds
	.talent 1,4,3,2

level -- Genesis
	.talent 1,2,1,1

level -- Genesis
	.talent 1,2,1,2

level -- Genesis
	.talent 1,2,1,3

level -- Moonglow
	.talent 1,2,2,1

level -- Moonglow
	.talent 1,2,2,2

level -- Starfall
	.talent 1,7,2,1

level -- Heart of the Wild
	.talent 3,1,4,1

level -- Heart of the Wild
	.talent 3,1,4,2

level -- Heart of the Wild
	.talent 3,1,4,3

level -- Natural Shapeshifter
	.talent 3,1,2,1

level -- Natural Shapeshifter
	.talent 3,1,2,2

level -- Master Shapeshifter
	.talent 3,2,2,1

level -- Blessing of the Grove
	.talent 3,1,1,1

level -- Blessing of the Grove
	.talent 3,1,1,2

level -- Perseverance
	.talent 3,2,1,1

level -- Perseverance
	.talent 3,2,1,2
]])
