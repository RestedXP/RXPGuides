local _, addon = ...

if addon.player.class ~= "MAGE" or addon.game ~= "CATA" then return end

addon.talents.RegisterGuide([[
#name Arcane 10-85
#minLevel 10
#maxLevel 85

level -- Netherwind Presence
    .talent 1,1,3,1

level -- Netherwind Presence
    .talent 1,1,3,2

level -- Netherwind Presence
    .talent 1,1,3,3

level -- Arcane Concentration
    .talent 1,1,1,1

level -- Arcane Concentration
    .talent 1,1,1,2

level -- Improved Arcane Missiles
    .talent 1,2,3,1

level -- Improved Arcane Missiles
    .talent 1,2,3,2

level -- Improved Blink
    .talent 1,2,4,1

level -- Improved Blink
    .talent 1,2,4,2

level -- Arcane Concentration
    .talent 1,1,1,3

level -- Missile Barrage
    .talent 1,3,3,1

level -- Missile Barrage
    .talent 1,3,3,2

level -- Presence of Mind
    .talent 1,3,2,1

level -- Torment the Weak
    .talent 1,2,1,1

level -- Torment the Weak
    .talent 1,2,1,2

level -- Arcane Tactics
    .talent 1,4,2,1

level -- Torment the Weak
    .talent 1,2,1,3

level -- Arcane Flows
    .talent 1,3,1,1

level -- Arcane Flows
    .talent 1,3,1,2

level -- Improved Arcane Explosion
    .talent 1,4,4,1

level -- Slow
    .talent 1,5,2,1

level -- Nether Vortex
    .talent 1,5,3,1

level -- Nether Vortex
    .talent 1,5,3,2

level -- Arcane Potency
    .talent 1,5,1,1

level -- Arcane Potency
    .talent 1,5,1,2

level -- Improved Mana Gem
    .talent 1,6,3,1

level -- Improved Mana Gem
    .talent 1,6,3,2

level -- Improved Arcane Explosion
    .talent 1,4,4,2

level -- Incanter's Absorption
    .talent 1,4,3,1

level -- Incanter's Absorption
    .talent 1,4,3,2

level -- Arcane Power
    .talent 1,7,2,1

level -- Burning Soul
    .talent 2,1,2,1

level -- Burning Soul
    .talent 2,1,2,2

level -- Burning Soul
    .talent 2,1,2,3

level -- Master of Elements
    .talent 2,1,1,1

level -- Master of Elements
    .talent 2,1,1,2

level -- Shatter
    .talent 3,1,3,1

level -- Shatter
    .talent 3,1,3,2

level -- Piercing Ice
    .talent 3,1,2,1

level -- Piercing Ice
    .talent 3,1,2,2

level -- Piercing Ice
    .talent 3,1,2,3
]])

addon.talents.RegisterGuide([[
#name Fire 10-85
#minLevel 10
#maxLevel 85

level -- Burning Soul
    .talent 2,1,2,1

level -- Burning Soul
    .talent 2,1,2,2

level -- Burning Soul
    .talent 2,1,2,3

level -- Master of Elements
    .talent 2,1,1,1

level -- Master of Elements
    .talent 2,1,1,2

level -- Ignite
    .talent 2,2,1,1

level -- Ignite
    .talent 2,2,1,2

level -- Ignite
    .talent 2,2,1,3

level -- Fire Power
    .talent 2,2,2,1

level -- Fire Power
    .talent 2,2,2,2

level -- Hot Streak
    .talent 2,3,3,1

level -- Blast Wave
    .talent 2,3,2,1

level -- Improved Scorch
    .talent 2,3,4,1

level -- Improved Scorch
    .talent 2,3,4,2

level -- Fire Power
    .talent 2,2,2,3

level -- Firestarter
    .talent 2,4,4,1

level -- Combustion
    .talent 2,4,2,1

level -- Improved Hot Streak
    .talent 2,4,3,1

level -- Improved Hot Streak
    .talent 2,4,3,2

level -- Impact
    .talent 2,2,4,1

level -- Dragon's Breath
    .talent 2,5,2,1

level -- Improved Flamestrike
    .talent 2,5,1,1

level -- Improved Flamestrike
    .talent 2,5,1,2

level -- Molten Fury
    .talent 2,5,3,1

level -- Molten Fury
    .talent 2,5,3,2

level -- Molten Fury
    .talent 2,5,3,3

level -- Critical Mass
    .talent 2,6,3,1

level -- Critical Mass
    .talent 2,6,3,2

level -- Critical Mass
    .talent 2,6,3,3

level -- Pyromaniac
    .talent 2,6,1,1

level -- Living Bomb
    .talent 2,7,2,1

level -- Impact
    .talent 2,2,4,2

level -- Pyromaniac
    .talent 2,6,1,2

level -- Piercing Ice
    .talent 3,1,2,1

level -- Piercing Ice
    .talent 3,1,2,2

level -- Piercing Ice
    .talent 3,1,2,3

level -- Netherwind Presence
    .talent 1,1,3,1

level -- Netherwind Presence
    .talent 1,1,3,2

level -- Netherwind Presence
    .talent 1,1,3,3

level -- Arcane Concentration
    .talent 1,1,1,1

level -- Arcane Concentration
    .talent 1,1,1,2
]])

addon.talents.RegisterGuide([[
#name Frost 10-85
#minLevel 10
#maxLevel 85

level -- Early Frost
    .talent 3,1,1,1

level -- Early Frost
    .talent 3,1,1,2

level -- Shatter
    .talent 3,1,3,1

level -- Shatter
    .talent 3,1,3,2

level -- Piercing Ice
    .talent 3,1,2,1

level -- Piercing Ice
    .talent 3,1,2,2

level -- Piercing Ice
    .talent 3,1,2,3

level -- Ice Flows
    .talent 3,2,1,1

level -- Improved Cone of Cold
    .talent 3,2,2,2

level -- Icy Veins
    .talent 3,3,2,1

level -- Fingers of Frost
    .talent 3,3,3,1

level -- Fingers of Frost
    .talent 3,3,3,2

level -- Fingers of Frost
    .talent 3,3,3,3

level -- Improved Freeze
    .talent 3,3,4,1

level -- Cold Snap
    .talent 3,4,2,1

level -- Improved Freeze
    .talent 3,3,4,2

level -- Improved Freeze
    .talent 3,3,4,3

level -- Brain Freeze
    .talent 3,4,3,1

level -- Brain Freeze
    .talent 3,4,3,2

level -- Ice Barrier
    .talent 3,5,2,1

level -- Brain Freeze
    .talent 3,4,3,3

level -- Enduring Winter
    .talent 3,4,1,1

level -- Enduring Winter
    .talent 3,4,1,2

level -- Enduring Winter
    .talent 3,4,1,3

level -- Ice Flows
    .talent 3,2,1,2

level -- Ice Flows
    .talent 3,2,1,3

level -- Permafrost
    .talent 3,2,4,1

level -- Permafrost
    .talent 3,2,4,2

level -- Permafrost
    .talent 3,2,4,3

level -- Deep Freeze
    .talent 3,7,2,1

level -- Ice Shards
    .talent 3,3,1,1

level -- Ice Shards
    .talent 3,3,1,2

level -- Reactive Barrier
    .talent 2,5,3,1

level -- Reactive Barrier
    .talent 2,5,3,2

level -- Frostfire Orb
    .talent 2,6,3,1

level -- Frostfire Orb
    .talent 2,6,3,2

level -- Netherwind Presence
    .talent 1,1,3,1

level -- Netherwind Presence
    .talent 1,1,3,2

level -- Netherwind Presence
    .talent 1,1,3,3

level -- Arcane Concentration
    .talent 3,1,1,1
]])
