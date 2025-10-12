local _, addon = ...

if addon.player.class ~= "DRUID" or addon.game ~= "TBC" then return end

addon.talents.RegisterGuide([[
#name Feral 10-70
#minLevel 10
#maxLevel 70

level -- Ferocity (Rank 1)
    .talent 2,1,2,1

level -- Ferocity (Rank 2)
    .talent 2,1,2,2

level -- Ferocity (Rank 3)
    .talent 2,1,2,3

level -- Ferocity (Rank 4)
    .talent 2,1,2,4

level -- Ferocity (Rank 5)
    .talent 2,1,2,5

level -- Thick Hide (Rank 1)
    .talent 2,2,3,1

level -- Thick Hide (Rank 2)
    .talent 2,2,3,2

level -- Thick Hide (Rank 3)
    .talent 2,2,3,3

level -- Brutal Impact (Rank 1)
    .talent 2,2,3,1

level -- Brutal Impact (Rank 2)
    .talent 2,2,3,2

level -- Feline Swiftness (Rank 1)
    .talent 2,3,1,1

level -- Feline Swiftness (Rank 2)
    .talent 2,3,1,2

level -- Sharpened Claws (Rank 1)
    .talent 2,3,3,1

level -- Sharpened Claws (Rank 2)
    .talent 2,3,3,2

level -- Sharpened Claws (Rank 3)
    .talent 2,3,3,3

level -- Predatory Strikes (Rank 1)
    .talent 2,4,2,1

level -- Predatory Strikes (Rank 2)
    .talent 2,4,2,2

level -- Predatory Strikes (Rank 3)
    .talent 2,4,2,3

level -- Primal Fury (Rank 1)
    .talent 2,4,3,1

level -- Primal Fury (Rank 2)
    .talent 2,4,3,2

level -- Faerie Fire (Feral)
    .talent 2,5,3,1

level -- Savage Fury (Rank 1)
    .talent 2,5,1,1

level -- Savage Fury (Rank 2)
    .talent 2,5,1,2

level -- Nurturing Instinct (Rank 1)
    .talent 2,5,3,1

level -- Nurturing Instinct (Rank 2)
    .talent 2,5,3,2

level -- Heart of the Wild (Rank 1)
    .talent 2,6,2,1

level -- Heart of the Wild (Rank 2)
    .talent 2,6,2,2

level -- Heart of the Wild (Rank 3)
    .talent 2,6,2,3

level -- Heart of the Wild (Rank 4)
    .talent 2,6,2,4

level -- Heart of the Wild (Rank 5)
    .talent 2,6,2,5

level -- Leader of the Pack
    .talent 2,7,2,1

level -- Improved Leader of the Pack (Rank 1)
    .talent 2,7,3,1

level -- Improved Leader of the Pack (Rank 2)
    .talent 2,7,3,2

level -- Survival of the Fittest (Rank 1)
    .talent 2,6,3,1

level -- Survival of the Fittest (Rank 2)
    .talent 2,6,3,2

level -- Predatory Instincts (Rank 1)
    .talent 2,8,3,1

level -- Predatory Instincts (Rank 2)
    .talent 2,8,3,2

level -- Predatory Instincts (Rank 3)
    .talent 2,8,3,3

level -- Predatory Instincts (Rank 4)
    .talent 2,8,3,4

level -- Predatory Instincts (Rank 5)
    .talent 2,8,3,5

level -- Mangle
    .talent 2,9,2,1

level -- Furor (Rank 1)
    .talent 3,1,3,1

level -- Furor (Rank 2)
    .talent 3,1,3,2

level -- Furor (Rank 3)
    .talent 3,1,3,3

level -- Furor (Rank 4)
    .talent 3,1,3,4

level -- Furor (Rank 5)
    .talent 3,1,3,5

level -- Naturalist (Rank 1)
    .talent 3,2,1,1

level -- Naturalist (Rank 2)
    .talent 3,2,1,2

level -- Naturalist (Rank 3)
    .talent 3,2,1,3

level -- Naturalist (Rank 4)
    .talent 3,2,1,4

level -- Naturalist (Rank 5)
    .talent 3,2,1,5

level -- Omen of Clarity
    .talent 3,3,3,1

level -- Natural Shapeshifter (Rank 1)
    .talent 3,3,3,1

level -- Natural Shapeshifter (Rank 2)
    .talent 3,3,3,2

level -- Natural Shapeshifter (Rank 3)
    .talent 3,3,3,3

level -- Survival of the Fittest (Rank 3)
    .talent 2,6,3,3

level -- Feral Charge
    .talent 2,3,2,1

level -- Shredding Attacks (Rank 1)
    .talent 2,4,1,1

level -- Shredding Attacks (Rank 2)
    .talent 2,4,1,2

level -- Feral Instinct (Rank 1)
    .talent 2,2,1,1

level -- Feral Instinct (Rank 2)
    .talent 2,2,1,2
]])
