local _, addon = ...

if addon.player.class ~= "MAGE" or addon.game ~= "WOTLK" then return end

addon.talents.RegisterGuide([[
#name AoE 10-80
#minLevel 10
#maxLevel 80

level -- Improved Frostbolt (Rank 1)
    .talent 3,1,2,1

level -- Improved Frostbolt (Rank 2)
    .talent 3,1,2,2

level -- Ice Floes (Rank 1)
    .talent 3,1,3,1

level -- Ice Floes (Rank 2)
    .talent 3,1,3,2

level -- Ice Floes (Rank 3)
    .talent 3,1,3,3

level -- Precision (Rank 1)
    .talent 3,2,3,1

level -- Precision (Rank 2)
    .talent 3,2,3,2

level -- Precision (Rank 3)
    .talent 3,2,3,3

level -- Permafrost (Rank 1)
    .talent 3,2,4,1

level -- Permafrost (Rank 2)
    .talent 3,2,4,2

level -- Improved Blizzard (Rank 1)
    .talent 3,3,3,1

level -- Improved Blizzard (Rank 2)
    .talent 3,3,3,2

level -- Improved Blizzard (Rank 3)
    .talent 3,3,3,3

level -- Icy Veins
    .talent 3,3,2,1

level -- Permafrost (Rank 3)
    .talent 3,2,4,3

level -- Arctic Reach (Rank 1)
    .talent 3,4,1,1

level -- Arctic Reach (Rank 2)
    .talent 3,4,1,2

level --  Frost Channeling (Rank 1)
    .talent 3,4,2,1

level -- Frost Channeling (Rank 2)
    .talent 3,4,2,2

level -- Frost Channeling (Rank 3)
    .talent 3,4,2,3

level -- Cold Snap
    .talent 3,5,2,1

level -- Piercing Ice (Rank 1)
    .talent 3,3,1,1

level -- Piercing Ice (Rank 2)
    .talent 3,3,1,2

level -- Piercing Ice (Rank 3)
    .talent 3,3,1,3

level -- Shatter (Rank 1)
    .talent 3,4,3,1

level -- Cold as Ice (Rank 1)
    .talent 3,6,1,1

level -- Cold as Ice (Rank 2)
    .talent 3,6,1,2

level -- Winter's Chill (Rank 1)
    .talent 3,6,3,1

level -- Winter's Chill (Rank 2)
    .talent 3,6,3,2

level -- Winter's Chill (Rank 3)
    .talent 3,6,3,3

level -- Ice Barrier
    .talent 3,7,2,1

level -- Shatter (Rank 2)
    .talent 3,4,3,2

level -- Shatter (Rank 3)
    .talent 3,4,3,3

level -- Shattered Barrier (Rank 1)
    .talent 3,7,1,1

level -- Shattered Barrier (Rank 2)
    .talent 3,7,1,2

level -- Fingers of Frost (Rank 1)
    .talent 3,8,3,1

level -- Fingers of Frost (Rank 2)
    .talent 3,8,3,2

level -- Ice Shards (Rank 1)
    .talent 3,2,1,1

level -- Ice Shards (Rank 2)
    .talent 3,2,1,2

level -- Ice Shards (Rank 3)
    .talent 3,2,1,3

level -- Summon Water Elemental
    .talent 3,9,2,1

level -- Enduring Water (Rank 1)
    .talent 3,9,3,1

level -- Enduring Water (Rank 2)
    .talent 3,9,3,2

level -- Enduring Water (Rank 3)
    .talent 3,9,3,3

level -- Arctic Winds (Rank 1)
    .talent 3,7,3,1

level -- Chilled to the Bone (Rank 1)
    .talent 3,10,2,1

level -- Chilled to the Bone (Rank 2)
    .talent 3,10,2,2

level -- Chilled to the Bone (Rank 3)
    .talent 3,10,2,3

level -- Chilled to the Bone (Rank 4)
    .talent 3,10,2,4

level -- Chilled to the Bone (Rank 5)
    .talent 3,10,2,5

level -- Deep Freeze
    .talent 3,11,2,1

level -- Arcane Focus (Rank 1)
    .talent 1,1,2,1

level -- Arcane Focus (Rank 2)
    .talent 1,1,2,2

level -- Arcane Focus (Rank 3)
    .talent 1,1,2,3

level -- Arcane Sublety (Rank 1)
    .talent 1,1,1,1

level -- Arcane Sublety (Rank 2)
    .talent 1,1,1,2

level -- Arcane Concentration (Rank 1)
    .talent 1,2,3,1

level -- Arcane Concentration (Rank 2)
    .talent 1,2,3,2

level -- Arcane Concentration (Rank 3)
    .talent 1,2,3,3

level -- Arcane Concentration (Rank 4)
    .talent 1,2,3,4

level -- Arcane Concentration (Rank 5)
    .talent 1,2,3,5

level -- Improved Cone of Cold (Rank 1)
    .talent 3,5,3,1

level -- Improved Cone of Cold (Rank 2)
    .talent 3,5,3,2

level -- Improved Cone of Cold (Rank 3)
    .talent 3,5,3,3

level -- Arctic Winds (Rank 2)
    .talent 3,7,3,2

level -- Arctic Winds (Rank 3)
    .talent 3,7,3,3

level -- Arctic Winds (Rank 4)
    .talent 3,7,3,4

level -- Arctic Winds (Rank 5)
    .talent 3,7,3,5

level -- Spell Impact (Rank 1)
    .talent 1,3,2,1

level -- Spell Impact (Rank 2)
    .talent 1,3,2,2

level -- Spell Impact (Rank 3)
    .talent 1,3,2,3

]])

addon.talents.RegisterGuide([[
#name Frost 10-80
#minLevel 10
#maxLevel 80

level -- Improved Frostbolt (Rank 1)
    .talent 3,1,2,1

level -- Improved Frostbolt (Rank 2)
    .talent 3,1,2,2

level -- Improved Frostbolt (Rank 3)
    .talent 3,1,2,3

level -- Improved Frostbolt (Rank 4)
    .talent 3,1,2,4

level -- Improved Frostbolt (Rank 5)
    .talent 3,1,2,5

level -- Precision (Rank 1)
    .talent 3,2,3,1

level -- Precision (Rank 2)
    .talent 3,2,3,2

level -- Precision (Rank 3)
    .talent 3,2,3,3

level -- Ice Floes (Rank 1)
    .talent 3,1,3,1

level -- Ice Floes (Rank 2)
    .talent 3,1,3,2

level -- Icy Veins
    .talent 3,3,2,1

level -- Ice Shards (Rank 1)
    .talent 3,2,1,1

level -- Ice Shards (Rank 2)
    .talent 3,2,1,2

level -- Ice Shards (Rank 3)
    .talent 3,2,1,3

level -- Ice Floes (Rank 3)
    .talent 3,1,3,3

level -- Shatter (Rank 1)
    .talent 3,4,3,1

level -- Shatter (Rank 2)
    .talent 3,4,3,2

level -- Shatter (Rank 3)
    .talent 3,4,3,3

level --  Frost Channeling (Rank 1)
    .talent 3,4,2,1

level -- Frost Channeling (Rank 2)
    .talent 3,4,2,2

level -- Cold Snap
    .talent 3,5,2,1

level -- Frost Channeling (Rank 3)
    .talent 3,4,2,3

level -- Arctic Reach (Rank 1)
    .talent 3,4,1,1

level -- Arctic Reach (Rank 2)
    .talent 3,4,1,2

level -- Piercing Ice (Rank 1)
    .talent 3,3,1,1

level -- Winter's Chill (Rank 1)
    .talent 3,6,3,1

level -- Winter's Chill (Rank 2)
    .talent 3,6,3,2

level -- Winter's Chill (Rank 3)
    .talent 3,6,3,3

level -- Piercing Ice (Rank 2)
    .talent 3,3,1,2

level -- Piercing Ice (Rank 3)
    .talent 3,3,1,3

level -- Ice Barrier
    .talent 3,7,2,1

level -- Arctic Winds (Rank 1)
    .talent 3,7,3,1

level -- Arctic Winds (Rank 2)
    .talent 3,7,3,2

level -- Arctic Winds (Rank 3)
    .talent 3,7,3,3

level -- Arctic Winds (Rank 4)
    .talent 3,7,3,4

level -- Fingers of Frost (Rank 1)
    .talent 3,8,3,1

level -- Fingers of Frost (Rank 2)
    .talent 3,8,3,2

level -- Empowered Frostbolt (Rank 1)
    .talent 3,8,2,1

level -- Empowered Frostbolt (Rank 2)
    .talent 3,8,2,2

level -- Arctic Winds (Rank 5)
    .talent 3,7,3,5

level -- Summon Water Elemental
    .talent 3,9,2,1

level -- Enduring Water (Rank 1)
    .talent 3,9,3,1

level -- Enduring Water (Rank 2)
    .talent 3,9,3,2

level -- Enduring Water (Rank 3)
    .talent 3,9,3,3

level -- Brain Freeze (Rank 1)
    .talent 3,9,1,1

level -- Chilled to the Bone (Rank 1)
    .talent 3,10,2,1

level -- Chilled to the Bone (Rank 2)
    .talent 3,10,2,2

level -- Chilled to the Bone (Rank 3)
    .talent 3,10,2,3

level -- Chilled to the Bone (Rank 4)
    .talent 3,10,2,4

level -- Chilled to the Bone (Rank 5)
    .talent 3,10,2,5

level -- Deep Freeze
    .talent 3,11,2,1

level -- Brain Freeze (Rank 2)
    .talent 3,9,1,2

level -- Brain Freeze (Rank 3)
    .talent 3,9,1,3

level -- Arcane Focus (Rank 1)
    .talent 1,1,2,1

level -- Arcane Focus (Rank 2)
    .talent 1,1,2,2

level -- Arcane Focus (Rank 3)
    .talent 1,1,2,3

level -- Arcane Sublety (Rank 1)
    .talent 1,1,1,1

level -- Arcane Sublety (Rank 2)
    .talent 1,1,1,2

level -- Arcane Concentration (Rank 1)
    .talent 1,2,3,1

level -- Arcane Concentration (Rank 2)
    .talent 1,2,3,2

level -- Arcane Concentration (Rank 3)
    .talent 1,2,3,3

level -- Arcane Concentration (Rank 4)
    .talent 1,2,3,4

level -- Arcane Concentration (Rank 5)
    .talent 1,2,3,5

level -- Spell Impact (Rank 1)
    .talent 1,3,2,1

level -- Spell Impact (Rank 2)
    .talent 1,3,2,2

level -- Spell Impact (Rank 3)
    .talent 1,3,2,3

level -- Student of the Mind (Rank 1)
    .talent 1,3,3,1

level -- Student of the Mind (Rank 2)
    .talent 1,3,3,2

level -- Torment of the Weak (Rank 1)
    .talent 1,4,4,1

level -- Torment of the Weak (Rank 2)
    .talent 1,4,4,2

level -- Torment of the Weak (Rank 3)
    .talent 1,4,4,3

]])
