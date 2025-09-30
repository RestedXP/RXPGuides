local _, addon = ...

if addon.player.class ~= "MAGE" or addon.gameVersion >= 40000 then return end

addon.talents.RegisterGuide([[
#name Hardcore AoE Mage 10-22
#minLevel 10
#maxLevel 22
#hardcore

level -- Improved Fireball (Rank 1)
    .talent 2,1,2,1

level -- Improved Fireball (Rank 2)
    .talent 2,1,2,2

level -- Improved Fireball (Rank 3)
    .talent 2,1,2,3

level -- Improved Fireball (Rank 4)
    .talent 2,1,2,4

level -- Improved Fireball (Rank 5)
    .talent 2,1,2,5

level -- Elemental Precision (Rank 1)
    .talent 3,1,3,1

level -- Elemental Precision (Rank 2)
    .talent 3,1,3,1

level -- Flame Throwing (Rank 1)
    .talent 2,2,2,1

level -- Ignite (Rank 1)
    .talent 2,2,1,1

level -- Ignite (Rank 2)
    .talent 2,2,1,2

level -- Ignite (Rank 3)
    .talent 2,2,1,3

level -- Ignite (Rank 4)
    .talent 2,2,1,4

level -- Ignite (Rank 5)
    .talent 2,2,1,5

]])

addon.talents.RegisterGuide([[
#name Hardcore AoE Mage 22-60
#minLevel 10
#maxLevel 60
#hardcore
#reset

level -- Elemental Precision (Rank 1)
    .talent 3,1,3,1

level -- Elemental Precision (Rank 2)
    .talent 3,1,3,1

level -- Elemental Precision (Rank 3)
    .talent 3,1,3,3

level -- Frost Warding (Rank 1)
    .talent 3,1,1,1

level -- Frost Warding (Rank 2)
    .talent 3,1,1,2

level -- Improved Frost Nova (Rank 1)
    .talent 3,2,3,1

level -- Improved Frost Nova (Rank 2)
    .talent 3,2,3,2

level -- Permafrost (Rank 1)
    .talent 3,2,4,1

level -- Permafrost (Rank 2)
    .talent 3,2,4,2

level -- Permafrost (Rank 3)
    .talent 3,2,4,3

level -- Improved Blizzard (Rank 1)
    .talent 3,3,4,1

level -- Improved Blizzard (Rank 2)
    .talent 3,3,4,2

level -- Improved Blizzard (Rank 3)
    .talent 3,3,4,3

level -- Cold Snap
    .talent 3,3,2,1

level -- Piercing Ice (Rank 1)
    .talent 3,3,1,1

level -- Frost Channeling (Rank 1)
    .talent 3,4,2,1

level -- Frost Channeling (Rank 2)
    .talent 3,4,2,2

level -- Frost Channeling (Rank 3)
    .talent 3,4,2,3

level -- Arctic Reach (Rank 1)
    .talent 3,4,1,1

level -- Arctic Reach (Rank 2)
    .talent 3,4,1,2

level -- Ice Block
    .talent 3,5,2,1

level -- Improved Cone of Cold (Rank 1)
    .talent 3,5,3,1

level -- Improved Cone of Cold (Rank 2)
    .talent 3,5,3,2

level -- Improved Cone of Cold (Rank 3)
    .talent 3,5,3,3

level -- Shatter (Rank 1)
    .talent 3,4,3,1

level -- Shatter (Rank 2)
    .talent 3,4,3,2

level -- Piercing Ice (Rank 2)
    .talent 3,3,1,2

level -- Shatter (Rank 3)
    .talent 3,4,3,3

level -- Shatter (Rank 4)
    .talent 3,4,3,4

level -- Shatter (Rank 5)
    .talent 3,4,3,5

level -- Ice Barrier
    .talent 3,7,2,1

level -- Arcane Focus (Rank 1)
    .talent 1,1,2,1

level -- Arcane Focus (Rank 2)
    .talent 1,1,2,2

level -- Arcane Focus (Rank 3)
    .talent 1,1,2,3

level -- Arcane Subtlety (Rank 1)
    .talent 1,1,1,1

level -- Arcane Subtlety (Rank 2)
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

level -- Arcane Resilience
    .talent 1,3,3,1

level -- Improved Arcane Explosion (Rank 1)
    .talent 1,3,2,1

level -- Improved Arcane Explosion (Rank 2)
    .talent 1,3,2,2

level -- Improved Arcane Explosion (Rank 3)
    .talent 1,3,2,3

level -- Magic Absorption (Rank 1)
    .talent 1,2,2,1

level -- Arcane Meditation (Rank 1)
    .talent 1,4,4,1

level -- Arcane Meditation (Rank 2)
    .talent 1,4,4,2

level -- Arcane Meditation (Rank 3)
    .talent 1,4,4,3

level -- Piercing Ice (Rank 3)
    .talent 3,3,1,3

level -- Ice Shards (Rank 1)
    .talent 3,2,1,1

]])

addon.talents.RegisterGuide([[
#name Hardcore Mage 10-60
#minLevel 10
#maxLevel 60
#hardcore


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

level -- Elemental Precision (Rank 1)
    .talent 3,1,3,1

level -- Elemental Precision (Rank 2)
    .talent 3,1,3,1

level -- Frostbite (Rank 1)
    .talent 3,2,2,1

level -- Frostbite (Rank 2)
    .talent 3,2,2,2

level -- Frostbite (Rank 3)
    .talent 3,2,2,3

level -- Cold Snap
    .talent 3,3,2,1

level -- Ice Shards (Rank 1)
    .talent 3,2,1,1

level -- Ice Shards (Rank 2)
    .talent 3,2,1,2

level -- Improved Frost Nova (Rank 1)
    .talent 3,2,3,1

level -- Improved Frost Nova (Rank 2)
    .talent 3,2,3,2

level -- Shatter (Rank 1)
    .talent 3,4,3,1

level -- Shatter (Rank 2)
    .talent 3,4,3,2

level -- Shatter (Rank 3)
    .talent 3,4,3,3

level -- Shatter (Rank 4)
    .talent 3,4,3,4

level -- Shatter (Rank 5)
    .talent 3,4,3,5

level -- Ice Block
    .talent 3,5,2,1

level -- Ice Shards (Rank 3)
    .talent 3,2,1,3

level -- Ice Shards (Rank 4)
    .talent 3,2,1,4

level -- Ice Shards (Rank 5)
    .talent 3,2,1,5

level -- Improved Cone of Cold (Rank 1)
    .talent 3,5,3,1

level -- Improved Cone of Cold (Rank 2)
    .talent 3,5,3,2

level -- Improved Cone of Cold (Rank 3)
    .talent 3,5,3,3

level -- Arctic Reach (Rank 1)
    .talent 3,4,1,1

level -- Arctic Reach (Rank 2)
    .talent 3,4,1,2

level -- Piercing Ice (Rank 1)
    .talent 3,3,1,1

level -- Ice Barrier
    .talent 3,7,2,1

level -- Piercing Ice (Rank 2)
    .talent 3,3,1,2

level -- Piercing Ice (Rank 3)
    .talent 3,3,1,3

level -- Permafrost (Rank 1)
    .talent 3,2,4,1

level -- Permafrost (Rank 2)
    .talent 3,2,4,2

level -- Permafrost (Rank 3)
    .talent 3,2,4,3

level -- Frost Channeling (Rank 1)
    .talent 3,4,2,1

level -- Frost Channeling (Rank 2)
    .talent 3,4,2,2

level -- Frost Channeling (Rank 3)
    .talent 3,4,2,3

level -- Arcane Focus (Rank 1)
    .talent 1,1,2,1

level -- Arcane Focus (Rank 2)
    .talent 1,1,2,2

level -- Arcane Focus (Rank 3)
    .talent 1,1,2,3

level -- Arcane Subtlety (Rank 1)
    .talent 1,1,1,1

level -- Arcane Subtlety (Rank 2)
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

level -- Arcane Resilience
    .talent 1,3,3,1

level -- Improved Arcane Explosion (Rank 1)
    .talent 1,3,2,1

]])

addon.talents.RegisterGuide([[
#name Hardcore Alternative Mage 10-60
#minLevel 10
#maxLevel 60
#hardcore


level -- Improved Frostbolt (Rank 1)
    .talent 3,1,2,1

level -- Improved Frostbolt (Rank 2)
    .talent 3,1,2,2

level -- Improved Frostbolt (Rank 3)
    .talent 3,1,2,3

level -- Elemental Precision (Rank 1)
    .talent 3,1,3,1

level -- Elemental Precision (Rank 2)
    .talent 3,1,3,1

level -- Improved Frost Nova (Rank 1)
    .talent 3,2,3,1

level -- Improved Frost Nova (Rank 2)
    .talent 3,2,3,2

level -- Permafrost (Rank 1)
    .talent 3,2,4,1

level -- Permafrost (Rank 2)
    .talent 3,2,4,2

level -- Permafrost (Rank 3)
    .talent 3,2,4,3

level -- Cold Snap
    .talent 3,3,2,1

level -- Improved Frostbolt (Rank 4)
    .talent 3,1,2,4

level -- Improved Frostbolt (Rank 5)
    .talent 3,1,2,5

level -- Frostbite (Rank 1)
    .talent 3,2,2,1

level -- Frostbite (Rank 2)
    .talent 3,2,2,2

level -- Arctic Reach (Rank 1)
    .talent 3,4,1,1

level -- Arctic Reach (Rank 2)
    .talent 3,4,1,2

level -- Frost Channeling (Rank 1)
    .talent 3,4,2,1

level -- Frost Channeling (Rank 2)
    .talent 3,4,2,2

level -- Frost Channeling (Rank 3)
    .talent 3,4,2,3

level -- Ice Block
    .talent 3,5,2,1

level -- Frostbite (Rank 3)
    .talent 3,2,2,3

level -- Improved Cone of Cold (Rank 1)
    .talent 3,5,3,1

level -- Improved Cone of Cold (Rank 2)
    .talent 3,5,3,2

level -- Improved Cone of Cold (Rank 3)
    .talent 3,5,3,3

level -- Shatter (Rank 1)
    .talent 3,4,3,1

level -- Shatter (Rank 2)
    .talent 3,4,3,2

level -- Shatter (Rank 3)
    .talent 3,4,3,3

level -- Shatter (Rank 4)
    .talent 3,4,3,4

level -- Shatter (Rank 5)
    .talent 3,4,3,5

level -- Ice Barrier
    .talent 3,7,2,1

level -- Arcane Subtlety (Rank 1)
    .talent 1,1,1,1

level -- Arcane Subtlety (Rank 2)
    .talent 1,1,1,2

level -- Arcane Focus (Rank 1)
    .talent 1,1,2,1

level -- Arcane Focus (Rank 2)
    .talent 1,1,2,2

level -- Arcane Focus (Rank 3)
    .talent 1,1,2,3

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

level -- Arcane Resilience
    .talent 1,3,3,1

level -- Magic Absorption (Rank 1)
    .talent 1,2,2,1

level -- Magic Absorption (Rank 2)
    .talent 1,2,2,2

level -- Magic Absorption (Rank 3)
    .talent 1,2,2,3

level -- Magic Absorption (Rank 4)
    .talent 1,2,2,4

level -- Arcane Meditation (Rank 1)
    .talent 1,4,4,1

level -- Arcane Meditation (Rank 2)
    .talent 1,4,4,2

level -- Arcane Meditation (Rank 3)
    .talent 1,4,4,3

level -- Magic Absorption (Rank 5)
    .talent 1,2,2,5

level -- Ice Shards (Rank 1)
    .talent 3,2,1,1

]])

addon.talents.RegisterGuide([[
#name Softcore AoE Mage 10-22
#minLevel 10
#maxLevel 22

level -- Improved Fireball (Rank 1)
    .talent 2,1,2,1

level -- Improved Fireball (Rank 2)
    .talent 2,1,2,2

level -- Improved Fireball (Rank 3)
    .talent 2,1,2,3

level -- Improved Fireball (Rank 4)
    .talent 2,1,2,4

level -- Improved Fireball (Rank 5)
    .talent 2,1,2,5

level -- Elemental Precision (Rank 1)
    .talent 3,1,3,1

level -- Elemental Precision (Rank 2)
    .talent 3,1,3,1

level -- Flame Throwing (Rank 1)
    .talent 2,2,2,1

level -- Ignite (Rank 1)
    .talent 2,2,1,1

level -- Ignite (Rank 2)
    .talent 2,2,1,2

level -- Ignite (Rank 3)
    .talent 2,2,1,3

level -- Ignite (Rank 4)
    .talent 2,2,1,4

level -- Ignite (Rank 5)
    .talent 2,2,1,5

]])

addon.talents.RegisterGuide([[
#name Softcore AoE Mage 22-60
#minLevel 10
#maxLevel 60
#reset

level -- Elemental Precision (Rank 1)
    .talent 3,1,3,1

level -- Elemental Precision (Rank 2)
    .talent 3,1,3,1

level -- Elemental Precision (Rank 3)
    .talent 3,1,3,3

level -- Frost Warding (Rank 1)
    .talent 3,1,1,1

level -- Frost Warding (Rank 2)
    .talent 3,1,1,2

level -- Improved Frost Nova (Rank 1)
    .talent 3,2,3,1

level -- Improved Frost Nova (Rank 2)
    .talent 3,2,3,2

level -- Permafrost (Rank 1)
    .talent 3,2,4,1

level -- Permafrost (Rank 2)
    .talent 3,2,4,2

level -- Permafrost (Rank 3)
    .talent 3,2,4,3

level -- Improved Blizzard (Rank 1)
    .talent 3,3,4,1

level -- Improved Blizzard (Rank 2)
    .talent 3,3,4,2

level -- Improved Blizzard (Rank 3)
    .talent 3,3,4,3

level -- Cold Snap
    .talent 3,3,2,1

level -- Piercing Ice (Rank 1)
    .talent 3,3,1,1

level -- Frost Channeling (Rank 1)
    .talent 3,4,2,1

level -- Frost Channeling (Rank 2)
    .talent 3,4,2,2

level -- Frost Channeling (Rank 3)
    .talent 3,4,2,3

level -- Arctic Reach (Rank 1)
    .talent 3,4,1,1

level -- Arctic Reach (Rank 2)
    .talent 3,4,1,2

level -- Ice Block
    .talent 3,5,2,1

level -- Improved Cone of Cold (Rank 1)
    .talent 3,5,3,1

level -- Improved Cone of Cold (Rank 2)
    .talent 3,5,3,2

level -- Improved Cone of Cold (Rank 3)
    .talent 3,5,3,3

level -- Shatter (Rank 1)
    .talent 3,4,3,1

level -- Shatter (Rank 2)
    .talent 3,4,3,2

level -- Piercing Ice (Rank 2)
    .talent 3,3,1,2

level -- Shatter (Rank 3)
    .talent 3,4,3,3

level -- Shatter (Rank 4)
    .talent 3,4,3,4

level -- Shatter (Rank 5)
    .talent 3,4,3,5

level -- Ice Barrier
    .talent 3,7,2,1

level -- Arcane Focus (Rank 1)
    .talent 1,1,2,1

level -- Arcane Focus (Rank 2)
    .talent 1,1,2,2

level -- Arcane Focus (Rank 3)
    .talent 1,1,2,3

level -- Arcane Subtlety (Rank 1)
    .talent 1,1,1,1

level -- Arcane Subtlety (Rank 2)
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

level -- Arcane Resilience
    .talent 1,3,3,1

level -- Improved Arcane Explosion (Rank 1)
    .talent 1,3,2,1

level -- Improved Arcane Explosion (Rank 2)
    .talent 1,3,2,2

level -- Improved Arcane Explosion (Rank 3)
    .talent 1,3,2,3

level -- Magic Absorption (Rank 1)
    .talent 1,2,2,1

level -- Arcane Meditation (Rank 1)
    .talent 1,4,4,1

level -- Arcane Meditation (Rank 2)
    .talent 1,4,4,2

level -- Arcane Meditation (Rank 3)
    .talent 1,4,4,3

level -- Piercing Ice (Rank 3)
    .talent 3,3,1,3

level -- Ice Shards (Rank 1)
    .talent 3,2,1,1

]])

addon.talents.RegisterGuide([[
#name Softcore Mage 10-60
#minLevel 10
#maxLevel 60

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

level -- Elemental Precision (Rank 1)
    .talent 3,1,3,1

level -- Elemental Precision (Rank 2)
    .talent 3,1,3,1

level -- Frostbite (Rank 1)
    .talent 3,2,2,1

level -- Frostbite (Rank 2)
    .talent 3,2,2,2

level -- Frostbite (Rank 3)
    .talent 3,2,2,3

level -- Cold Snap
    .talent 3,3,2,1

level -- Ice Shards (Rank 1)
    .talent 3,2,1,1

level -- Ice Shards (Rank 2)
    .talent 3,2,1,2

level -- Improved Frost Nova (Rank 1)
    .talent 3,2,3,1

level -- Improved Frost Nova (Rank 2)
    .talent 3,2,3,2

level -- Shatter (Rank 1)
    .talent 3,4,3,1

level -- Shatter (Rank 2)
    .talent 3,4,3,2

level -- Shatter (Rank 3)
    .talent 3,4,3,3

level -- Shatter (Rank 4)
    .talent 3,4,3,4

level -- Shatter (Rank 5)
    .talent 3,4,3,5

level -- Ice Block
    .talent 3,5,2,1

level -- Ice Shards (Rank 3)
    .talent 3,2,1,3

level -- Ice Shards (Rank 4)
    .talent 3,2,1,4

level -- Ice Shards (Rank 5)
    .talent 3,2,1,5

level -- Improved Cone of Cold (Rank 1)
    .talent 3,5,3,1

level -- Improved Cone of Cold (Rank 2)
    .talent 3,5,3,2

level -- Improved Cone of Cold (Rank 3)
    .talent 3,5,3,3

level -- Arctic Reach (Rank 1)
    .talent 3,4,1,1

level -- Arctic Reach (Rank 2)
    .talent 3,4,1,2

level -- Piercing Ice (Rank 1)
    .talent 3,3,1,1

level -- Ice Barrier
    .talent 3,7,2,1

level -- Piercing Ice (Rank 2)
    .talent 3,3,1,2

level -- Piercing Ice (Rank 3)
    .talent 3,3,1,3

level -- Permafrost (Rank 1)
    .talent 3,2,4,1

level -- Permafrost (Rank 2)
    .talent 3,2,4,2

level -- Permafrost (Rank 3)
    .talent 3,2,4,3

level -- Frost Channeling (Rank 1)
    .talent 3,4,2,1

level -- Frost Channeling (Rank 2)
    .talent 3,4,2,2

level -- Frost Channeling (Rank 3)
    .talent 3,4,2,3

level -- Arcane Focus (Rank 1)
    .talent 1,1,2,1

level -- Arcane Focus (Rank 2)
    .talent 1,1,2,2

level -- Arcane Focus (Rank 3)
    .talent 1,1,2,3

level -- Arcane Subtlety (Rank 1)
    .talent 1,1,1,1

level -- Arcane Subtlety (Rank 2)
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

level -- Arcane Resilience
    .talent 1,3,3,1

level -- Improved Arcane Explosion (Rank 1)
    .talent 1,3,2,1

]])

addon.talents.RegisterGuide([[
#name Softcore Alternative Mage 10-60
#minLevel 10
#maxLevel 60

level -- Improved Frostbolt (Rank 1)
    .talent 3,1,2,1

level -- Improved Frostbolt (Rank 2)
    .talent 3,1,2,2

level -- Improved Frostbolt (Rank 3)
    .talent 3,1,2,3

level -- Elemental Precision (Rank 1)
    .talent 3,1,3,1

level -- Elemental Precision (Rank 2)
    .talent 3,1,3,1

level -- Improved Frost Nova (Rank 1)
    .talent 3,2,3,1

level -- Improved Frost Nova (Rank 2)
    .talent 3,2,3,2

level -- Permafrost (Rank 1)
    .talent 3,2,4,1

level -- Permafrost (Rank 2)
    .talent 3,2,4,2

level -- Permafrost (Rank 3)
    .talent 3,2,4,3

level -- Cold Snap
    .talent 3,3,2,1

level -- Improved Frostbolt (Rank 4)
    .talent 3,1,2,4

level -- Improved Frostbolt (Rank 5)
    .talent 3,1,2,5

level -- Frostbite (Rank 1)
    .talent 3,2,2,1

level -- Frostbite (Rank 2)
    .talent 3,2,2,2

level -- Arctic Reach (Rank 1)
    .talent 3,4,1,1

level -- Arctic Reach (Rank 2)
    .talent 3,4,1,2

level -- Frost Channeling (Rank 1)
    .talent 3,4,2,1

level -- Frost Channeling (Rank 2)
    .talent 3,4,2,2

level -- Frost Channeling (Rank 3)
    .talent 3,4,2,3

level -- Ice Block
    .talent 3,5,2,1

level -- Frostbite (Rank 3)
    .talent 3,2,2,3

level -- Improved Cone of Cold (Rank 1)
    .talent 3,5,3,1

level -- Improved Cone of Cold (Rank 2)
    .talent 3,5,3,2

level -- Improved Cone of Cold (Rank 3)
    .talent 3,5,3,3

level -- Shatter (Rank 1)
    .talent 3,4,3,1

level -- Shatter (Rank 2)
    .talent 3,4,3,2

level -- Shatter (Rank 3)
    .talent 3,4,3,3

level -- Shatter (Rank 4)
    .talent 3,4,3,4

level -- Shatter (Rank 5)
    .talent 3,4,3,5

level -- Ice Barrier
    .talent 3,7,2,1

level -- Arcane Subtlety (Rank 1)
    .talent 1,1,1,1

level -- Arcane Subtlety (Rank 2)
    .talent 1,1,1,2

level -- Arcane Focus (Rank 1)
    .talent 1,1,2,1

level -- Arcane Focus (Rank 2)
    .talent 1,1,2,2

level -- Arcane Focus (Rank 3)
    .talent 1,1,2,3

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

level -- Arcane Resilience
    .talent 1,3,3,1

level -- Magic Absorption (Rank 1)
    .talent 1,2,2,1

level -- Magic Absorption (Rank 2)
    .talent 1,2,2,2

level -- Magic Absorption (Rank 3)
    .talent 1,2,2,3

level -- Magic Absorption (Rank 4)
    .talent 1,2,2,4

level -- Arcane Meditation (Rank 1)
    .talent 1,4,4,1

level -- Arcane Meditation (Rank 2)
    .talent 1,4,4,2

level -- Arcane Meditation (Rank 3)
    .talent 1,4,4,3

level -- Magic Absorption (Rank 5)
    .talent 1,2,2,5

level -- Ice Shards (Rank 1)
    .talent 3,2,1,1

]])
