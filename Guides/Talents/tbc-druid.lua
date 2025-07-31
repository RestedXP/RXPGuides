local _, addon = ...

if addon.player.class ~= "DRUID" or addon.game ~= "TBC" then return end

addon.talents.RegisterGuide([[
#name Hardcore Druid 10-60
#minLevel 10
#maxLevel 60
#hardcore


level -- Ferocity Rank 1
	.talent 2,1,2,1

level -- Ferocity Rank 2
	.talent 2,1,2,2

level -- Ferocity Rank 3
	.talent 2,1,2,3

level -- Ferocity Rank 4
	.talent 2,1,2,4

level -- Ferocity Rank 5
	.talent 2,1,2,5

level -- Feral Aggression Rank 1
	.talent 2,1,3,1

level -- Feral Aggression Rank 2
	.talent 2,1,3,2

level -- Feral Aggression Rank 3
	.talent 2,1,3,3

level -- Feral Aggression Rank 4
	.talent 2,1,3,4

level -- Feral Aggression Rank 5
	.talent 2,1,3,5

level -- Feline Swiftness Rank 1
	.talent 2,3,1,1

level -- Feline Swiftness Rank 2
	.talent 2,3,1,2

level -- Feral Charge
	.talent 2,3,2,1

level -- Sharpened Claws Rank 1
	.talent 2,3,3,1

level -- Sharpened Claws Rank 2
	.talent 2,3,3,2

level -- Sharpened Claws Rank 3
	.talent 2,3,3,3

level -- Predatory Strikes Rank 1
	.talent 2,4,2,1

level -- Predatory Strikes Rank 2
	.talent 2,4,2,2

level -- Predatory Strikes Rank 3
	.talent 2,4,2,3

level -- Blood Frenzy Rank 1
	.talent 2,4,3,1

level -- Faerie Fire (Feral)
	.talent 2,5,3,1

level -- Savage Fury Rank 1
	.talent 2,5,1,1

level -- Savage Fury Rank 2
	.talent 2,5,1,2

level -- Blood Frenzy Rank 2
	.talent 2,4,3,2

level -- Feral Instinct Rank 1
	.talent 2,2,1,1

level -- Heart of the Wild Rank 1
	.talent 2,6,2,1

level -- Heart of the Wild Rank 2
	.talent 2,6,2,2

level -- Heart of the Wild Rank 3
	.talent 2,6,2,3

level -- Heart of the Wild Rank 4
	.talent 2,6,2,4

level -- Heart of the Wild Rank 5
	.talent 2,6,2,5

level -- Leader of the Pack
	.talent 2,7,2,1

level -- Furor Rank 1
	.talent 3,1,3,1

level -- Furor Rank 2
	.talent 3,1,3,2

level -- Furor Rank 3
	.talent 3,1,3,3

level -- Furor Rank 4
	.talent 3,1,3,4

level -- Furor Rank 5
	.talent 3,1,3,5

level -- Nature's Grasp
	.talent 1,1,2,1

level -- Improved Nature's Grasp Rank 1
	.talent 1,1,3,1

level -- Improved Nature's Grasp Rank 2
	.talent 1,1,3,2

level -- Improved Nature's Grasp Rank 3
	.talent 1,1,3,3

level -- Improved Nature's Grasp Rank 4
	.talent 1,1,3,4

level -- Natural Weapons Rank 1
	.talent 1,2,3,1

level -- Natural Weapons Rank 2
	.talent 1,2,3,2

level -- Natural Weapons Rank 3
	.talent 1,2,3,3

level -- Natural Weapons Rank 4
	.talent 1,2,3,4

level -- Natural Weapons Rank 5
	.talent 1,2,3,5

level -- Omen of Clarity
	.talent 1,3,3,1

level -- Natural Shapeshifter Rank 1
	.talent 1,2,4,1

level -- Natural Shapeshifter Rank 2
	.talent 1,2,4,2

level -- Natural Shapeshifter Rank 3
	.talent 1,2,4,3

level -- Improved Enrage Rank 1
	.talent 3,2,3,1


]])

addon.talents.RegisterGuide([[
#name Softcore Druid 10-60
#minLevel 10
#maxLevel 60

level -- Ferocity Rank 1
	.talent 2,1,2,1

level -- Ferocity Rank 2
	.talent 2,1,2,2

level -- Ferocity Rank 3
	.talent 2,1,2,3

level -- Ferocity Rank 4
	.talent 2,1,2,4

level -- Ferocity Rank 5
	.talent 2,1,2,5

level -- Feral Aggression Rank 1
	.talent 2,1,3,1

level -- Feral Aggression Rank 2
	.talent 2,1,3,2

level -- Feral Aggression Rank 3
	.talent 2,1,3,3

level -- Feral Aggression Rank 4
	.talent 2,1,3,4

level -- Feral Aggression Rank 5
	.talent 2,1,3,5

level -- Feline Swiftness Rank 1
	.talent 2,3,1,1

level -- Feline Swiftness Rank 2
	.talent 2,3,1,2

level -- Feral Charge
	.talent 2,3,2,1

level -- Sharpened Claws Rank 1
	.talent 2,3,3,1

level -- Sharpened Claws Rank 2
	.talent 2,3,3,2

level -- Sharpened Claws Rank 3
	.talent 2,3,3,3

level -- Predatory Strikes Rank 1
	.talent 2,4,2,1

level -- Predatory Strikes Rank 2
	.talent 2,4,2,2

level -- Predatory Strikes Rank 3
	.talent 2,4,2,3

level -- Blood Frenzy Rank 1
	.talent 2,4,3,1

level -- Faerie Fire (Feral)
	.talent 2,5,3,1

level -- Savage Fury Rank 1
	.talent 2,5,1,1

level -- Savage Fury Rank 2
	.talent 2,5,1,2

level -- Blood Frenzy Rank 2
	.talent 2,4,3,2

level -- Feral Instinct Rank 1
	.talent 2,2,1,1

level -- Heart of the Wild Rank 1
	.talent 2,6,2,1

level -- Heart of the Wild Rank 2
	.talent 2,6,2,2

level -- Heart of the Wild Rank 3
	.talent 2,6,2,3

level -- Heart of the Wild Rank 4
	.talent 2,6,2,4

level -- Heart of the Wild Rank 5
	.talent 2,6,2,5

level -- Leader of the Pack
	.talent 2,7,2,1

level -- Furor Rank 1
	.talent 3,1,3,1

level -- Furor Rank 2
	.talent 3,1,3,2

level -- Furor Rank 3
	.talent 3,1,3,3

level -- Furor Rank 4
	.talent 3,1,3,4

level -- Furor Rank 5
	.talent 3,1,3,5

level -- Nature's Grasp
	.talent 1,1,2,1

level -- Improved Nature's Grasp Rank 1
	.talent 1,1,3,1

level -- Improved Nature's Grasp Rank 2
	.talent 1,1,3,2

level -- Improved Nature's Grasp Rank 3
	.talent 1,1,3,3

level -- Improved Nature's Grasp Rank 4
	.talent 1,1,3,4

level -- Natural Weapons Rank 1
	.talent 1,2,3,1

level -- Natural Weapons Rank 2
	.talent 1,2,3,2

level -- Natural Weapons Rank 3
	.talent 1,2,3,3

level -- Natural Weapons Rank 4
	.talent 1,2,3,4

level -- Natural Weapons Rank 5
	.talent 1,2,3,5

level -- Omen of Clarity
	.talent 1,3,3,1

level -- Natural Shapeshifter Rank 1
	.talent 1,2,4,1

level -- Natural Shapeshifter Rank 2
	.talent 1,2,4,2

level -- Natural Shapeshifter Rank 3
	.talent 1,2,4,3

level -- Improved Enrage Rank 1
	.talent 3,2,3,1

]])
