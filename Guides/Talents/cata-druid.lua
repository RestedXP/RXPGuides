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
    .talent 1,3,4,1

level -- Shooting Stars
    .talent 1,3,4,2

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

addon.talents.RegisterGuide([[
#name Feral Druid 10-85
#minLevel 10
#maxLevel 85

level -- Feral Swiftness
    .talent 2,1,1,1

level -- Feral Swiftness
    .talent 2,1,1,2

level -- Furor
    .talent 2,1,2,1

level -- Furor
    .talent 2,1,2,2

level -- Furor
    .talent 2,1,2,3

level -- Feral Aggression
    .talent 2,2,4,1

level -- Feral Aggression
    .talent 2,2,4,2

level -- Predatory Strikes
    .talent 2,1,3,1

level -- Predatory Strikes
    .talent 2,1,3,2

level -- Primal Fury
    .talent 2,2,3,1

level -- Primal Fury
    .talent 2,2,3,2

level -- King of the Jungle
    .talent 2,3,1,1

level -- King of the Jungle
    .talent 2,3,1,2

level -- King of the Jungle
    .talent 2,3,1,3

level -- Feral Charge
    .talent 2,3,2,1

level -- Leader of the Pack
    .talent 2,4,2,1

level -- Stampede
    .talent 2,3,3,1

level -- Stampede
    .talent 2,3,3,2

level -- Fury Swipes
    .talent 2,2,2,1

level -- Fury Swipes
    .talent 2,2,2,2

level -- Fury Swipes
    .talent 2,2,2,3

level -- Survival Instincts
    .talent 2,5,2,1

level -- Infected Wounds
    .talent 2,2,1,1

level -- Infected Wounds
    .talent 2,2,1,2

level -- Thick Hide
    .talent 2,3,4,1

level -- Thick Hide
    .talent 2,3,4,2

level -- Thick Hide
    .talent 2,3,4,3

level -- Rend and Tear
    .talent 2,6,2,1

level -- Rend and Tear
    .talent 2,6,2,2

level -- Rend and Tear
    .talent 2,6,2,3

level -- Berserk
    .talent 2,7,2,1

level -- Heart of the Wild
    .talent 3,1,4,1

level -- Heart of the Wild
    .talent 3,1,4,2

level -- Heart of the Wild
    .talent 3,1,4,3

level -- Endless Carnage
    .talent 2,5,3,1

level -- Endless Carnage
    .talent 2,5,3,2

level -- Natural Shapeshifter
    .talent 3,1,2,1

level -- Natural Shapeshifter
    .talent 3,1,2,2

level -- Master Shapeshifter
    .talent 3,2,2,1

level -- Primal Madness
    .talent 2,5,1,1

level -- Primal Madness
    .talent 2,5,1,2
]])

