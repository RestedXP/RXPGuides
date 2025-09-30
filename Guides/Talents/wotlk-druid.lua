local _, addon = ...

if addon.player.class ~= "DRUID" or addon.gameVersion >= 40000 then return end

addon.talents.RegisterGuide([[
#name Wotlk Druid 10-49
#next Wotlk Druid 50-80
#minLevel 10
#maxLevel 49


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

level -- Savage Fury (Rank 1)
    .talent 2,2,2,1

level -- Savage Fury (Rank 2)
    .talent 2,2,2,2

level -- Feral Instinct (Rank 1)
    .talent 2,2,1,1

level -- Feral Instinct (Rank 2)
    .talent 2,2,1,2

level -- Feral Instinct (Rank 3)
    .talent 2,2,1,3

level -- Feral Swiftness (Rank 1)
    .talent 2,3,1,1

level -- Feral Swiftness (Rank 2)
    .talent 2,3,1,2

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
    .talent 3,3,2,1

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

level -- Primal Precision (Rank 1)
    .talent 2,4,4,1

level -- Primal Precision (Rank 2)
    .talent 2,4,4,2

level -- Feral Charge (Rank 1)
    .talent 2,5,3,1

level -- Survival Instincts
    .talent 2,3,2,1

level -- Feral Aggression (Rank 1)
    .talent 2,1,3,1

level -- Feral Aggression (Rank 2)
    .talent 2,1,3,2

level -- Feral Aggression (Rank 3)
    .talent 2,1,3,3

level -- Heart of the Wild (Rank 1)
    .talent 2,6,2,1

level -- Heart of the Wild (Rank 2)
    .talent 2,6,2,2

level -- Heart of the Wild (Rank 3)
    .talent 2,6,2,3

level -- Heart of the Wild (Rank 4)
    .talent 2,6,2,4

    ]])

addon.talents.RegisterGuide([[
#name Wotlk Druid 50-80
#minLevel 10
#maxLevel 80
#reset


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

level -- Savage Fury (Rank 1)
    .talent 2,2,2,1

level -- Savage Fury (Rank 2)
    .talent 2,2,2,2

level -- Feral Aggression (Rank 1)
    .talent 2,1,3,1

level -- Feral Aggression (Rank 2)
    .talent 2,1,3,2

level -- Feral Aggression (Rank 3)
    .talent 2,1,3,3

level -- Feral Swiftness (Rank 1)
    .talent 2,3,1,1

level -- Feral Swiftness (Rank 2)
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

level -- Primal Precision (Rank 1)
    .talent 2,4,4,1

level -- Primal Precision (Rank 2)
    .talent 2,4,4,2

level -- Feral Charge (Rank 1)
    .talent 2,5,3,1

level -- Survival Instincts
    .talent 2,3,2,1

level -- Primal Fury (Rank 1)
    .talent 2,4,3,1

level -- Primal Fury (Rank 2)
    .talent 2,4,3,2

level -- Feral Aggression (Rank 4)
    .talent 2,1,3,4

level -- Heart of the Wild (Rank 1)
    .talent 2,6,2,1

level -- Heart of the Wild (Rank 2)
    .talent 2,6,2,2

level -- Heart of the Wild (Rank 3)
    .talent 2,6,2,3

level -- Heart of the Wild (Rank 4)
    .talent 2,6,2,4

level -- Heart of the Wild (Rank 5)
    .talent 2,6,2,4

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

level -- Protector of the Pack (Rank 1)
    .talent 2,8,1,1

level -- Protector of the Pack (Rank 2)
    .talent 2,8,1,2

level -- Protector of the Pack (Rank 3)
    .talent 2,8,1,3

level -- Survival of the Fittest (Rank 3)
    .talent 2,6,3,3

level -- Nurturing Instinct (Rank 1)
    .talent 2,5,4,1

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

level -- King of the Junle (Rank 1)
    .talent 2,9,1,1

level -- King of the Junle (Rank 2)
    .talent 2,9,1,2

level -- King of the Junle (Rank 3)
    .talent 2,9,1,3

level -- Improved Mangle (Rank 1)
    .talent 2,9,3,1

level -- Rend and Tear (Rank 1)
    .talent 2,10,2,1

level -- Rend and Tear (Rank 2)
    .talent 2,10,2,2

level -- Rend and Tear (Rank 3)
    .talent 2,10,2,3

level -- Rend and Tear (Rank 4)
    .talent 2,10,2,4

level -- Rend and Tear (Rank 5)
    .talent 2,10,2,5

level -- Primal Gore
    .talent 2,10,3,1

level -- Berserk
    .talent 2,11,2,1

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
    .talent 3,3,2,1

level -- Natural Shapeshifter (Rank 1)
    .talent 3,2,3,1

level -- Natural Shapeshifter (Rank 2)
    .talent 3,2,3,2

level -- Natural Shapeshifter (Rank 3)
    .talent 3,2,3,3

level -- Master Shapeshifter (Rank 1)
    .talent 3,3,3,1

level -- Master Shapeshifter (Rank 2)
    .talent 3,3,3,2

level -- Improved Mangle (Rank 2)
    .talent 2,9,3,2

level -- Improved Mangle (Rank 3)
    .talent 2,9,3,3

level -- Feral Aggression (Rank 5)
    .talent 2,1,3,5


]])
