local _, addon = ...

if addon.player.class ~= "HUNTER" or addon.game ~= "CLASSIC" then return end

addon.talents.RegisterGuide([[
#name Hardcore Hunter 10-60
#minLevel 10
#maxLevel 60
#hardcore


level -- Improved Aspect of the Hawk (Rank 1)
    .talent 1,1,2,1

level -- Improved Aspect of the Hawk (Rank 2)
    .talent 1,1,2,2

level -- Improved Aspect of the Hawk (Rank 3)
    .talent 1,1,2,3

level -- Improved Aspect of the Hawk (Rank 4)
    .talent 1,1,2,4

level -- Improved Aspect of the Hawk (Rank 5)
    .talent 1,1,2,5

level -- Improved Revive Pet (Rank 1)
    .talent 1,2,4,1

level -- Improved Revive Pet (Rank 2)
    .talent 1,2,4,2

level -- Thick Hide (Rank 1)
    .talent 1,2,3,1

level -- Thick Hide (Rank 2)
    .talent 1,2,3,2

level -- Thick Hide (Rank 3)
    .talent 1,2,3,3

level -- Bestial Swiftness
    .talent 1,3,2,1

level -- Pathfinding (Rank 1)
    .talent 1,3,1,1

level -- Pathfinding (Rank 2)
    .talent 1,3,1,2

level -- Unleashed Fury (Rank 1)
    .talent 1,3,3,1

level -- Unleashed Fury (Rank 2)
    .talent 1,3,3,2

level -- Unleashed Fury (Rank 3)
    .talent 1,3,3,3

level -- Unleashed Fury (Rank 4)
    .talent 1,3,3,4

level -- Unleashed Fury (Rank 5)
    .talent 1,3,3,5

level -- Ferocity (Rank 1)
    .talent 1,4,3,1

level -- Ferocity (Rank 2)
    .talent 1,4,3,2

level -- Intimidation
    .talent 1,5,2,1

level -- Ferocity (Rank 3)
    .talent 1,4,3,3

level -- Ferocity (Rank 4)
    .talent 1,4,3,4

level -- Ferocity (Rank 5)
    .talent 1,4,3,5

level -- Spirit Bond (Rank 1)
    .talent 1,5,1,1

level -- Frenzy (Rank 1)
    .talent 1,6,3,1

level -- Frenzy (Rank 2)
    .talent 1,6,3,2

level -- Frenzy (Rank 3)
    .talent 1,6,3,3

level -- Frenzy (Rank 4)
    .talent 1,6,3,4

level -- Spirit Bond (Rank 2)
    .talent 1,5,1,2

level -- Bestial Wrath
    .talent 1,7,2,1

level -- Efficiency (Rank 1)
    .talent 2,1,3,1

level -- Efficiency (Rank 2)
    .talent 2,1,3,2

level -- Efficiency (Rank 3)
    .talent 2,1,3,3

level -- Efficiency (Rank 4)
    .talent 2,1,3,4

level -- Efficiency (Rank 5)
    .talent 2,1,3,5

level -- Lethal Shots (Rank 1)
    .talent 2,2,3,1

level -- Lethal Shots (Rank 2)
    .talent 2,2,3,2

level -- Lethal Shots (Rank 3)
    .talent 2,2,3,3

level -- Lethal Shots (Rank 4)
    .talent 2,2,3,4

level -- Lethal Shots (Rank 5)
    .talent 2,2,3,5

level -- Aimed Shot
    .talent 2,3,1,1

level -- Hawk Eye (Rank 1)
    .talent 2,3,4,1

level -- Hawk Eye (Rank 2)
    .talent 2,3,4,2

level -- Hawk Eye (Rank 3)
    .talent 2,3,4,3

level -- Improved Hunter's Mark (Rank 1)
    .talent 2,2,2,1

level -- Mortal Shots (Rank 1)
    .talent 2,4,3,1

level -- Mortal Shots (Rank 2)
    .talent 2,4,3,2

level -- Mortal Shots (Rank 3)
    .talent 2,4,3,3

level -- Mortal Shots (Rank 4)
    .talent 2,4,3,4

level -- Mortal Shots (Rank 5)
    .talent 2,4,3,5

]])

addon.talents.RegisterGuide([[
#name Softcore Hunter 10-60
#minLevel 10
#maxLevel 60

level -- Improved Aspect of the Hawk (Rank 1)
    .talent 1,1,2,1

level -- Improved Aspect of the Hawk (Rank 2)
    .talent 1,1,2,2

level -- Improved Aspect of the Hawk (Rank 3)
    .talent 1,1,2,3

level -- Improved Aspect of the Hawk (Rank 4)
    .talent 1,1,2,4

level -- Improved Aspect of the Hawk (Rank 5)
    .talent 1,1,2,5

level -- Improved Revive Pet (Rank 1)
    .talent 1,2,4,1

level -- Improved Revive Pet (Rank 2)
    .talent 1,2,4,2

level -- Thick Hide (Rank 1)
    .talent 1,2,3,1

level -- Thick Hide (Rank 2)
    .talent 1,2,3,2

level -- Thick Hide (Rank 3)
    .talent 1,2,3,3

level -- Bestial Swiftness
    .talent 1,3,2,1

level -- Pathfinding (Rank 1)
    .talent 1,3,1,1

level -- Pathfinding (Rank 2)
    .talent 1,3,1,2

level -- Unleashed Fury (Rank 1)
    .talent 1,3,3,1

level -- Unleashed Fury (Rank 2)
    .talent 1,3,3,2

level -- Unleashed Fury (Rank 3)
    .talent 1,3,3,3

level -- Unleashed Fury (Rank 4)
    .talent 1,3,3,4

level -- Unleashed Fury (Rank 5)
    .talent 1,3,3,5

level -- Ferocity (Rank 1)
    .talent 1,4,3,1

level -- Ferocity (Rank 2)
    .talent 1,4,3,2

level -- Intimidation
    .talent 1,5,2,1

level -- Ferocity (Rank 3)
    .talent 1,4,3,3

level -- Ferocity (Rank 4)
    .talent 1,4,3,4

level -- Ferocity (Rank 5)
    .talent 1,4,3,5

level -- Spirit Bond (Rank 1)
    .talent 1,5,1,1

level -- Frenzy (Rank 1)
    .talent 1,6,3,1

level -- Frenzy (Rank 2)
    .talent 1,6,3,2

level -- Frenzy (Rank 3)
    .talent 1,6,3,3

level -- Frenzy (Rank 4)
    .talent 1,6,3,4

level -- Spirit Bond (Rank 2)
    .talent 1,5,1,2

level -- Bestial Wrath
    .talent 1,7,2,1

level -- Efficiency (Rank 1)
    .talent 2,1,3,1

level -- Efficiency (Rank 2)
    .talent 2,1,3,2

level -- Efficiency (Rank 3)
    .talent 2,1,3,3

level -- Efficiency (Rank 4)
    .talent 2,1,3,4

level -- Efficiency (Rank 5)
    .talent 2,1,3,5

level -- Lethal Shots (Rank 1)
    .talent 2,2,3,1

level -- Lethal Shots (Rank 2)
    .talent 2,2,3,2

level -- Lethal Shots (Rank 3)
    .talent 2,2,3,3

level -- Lethal Shots (Rank 4)
    .talent 2,2,3,4

level -- Lethal Shots (Rank 5)
    .talent 2,2,3,5

level -- Aimed Shot
    .talent 2,3,1,1

level -- Hawk Eye (Rank 1)
    .talent 2,3,4,1

level -- Hawk Eye (Rank 2)
    .talent 2,3,4,2

level -- Hawk Eye (Rank 3)
    .talent 2,3,4,3

level -- Improved Hunter's Mark (Rank 1)
    .talent 2,2,2,1

level -- Mortal Shots (Rank 1)
    .talent 2,4,3,1

level -- Mortal Shots (Rank 2)
    .talent 2,4,3,2

level -- Mortal Shots (Rank 3)
    .talent 2,4,3,3

level -- Mortal Shots (Rank 4)
    .talent 2,4,3,4

level -- Mortal Shots (Rank 5)
    .talent 2,4,3,5

]])
