local _, addon = ...

if addon.player.class ~= "ROGUE" or addon.game ~= "CATA" then return end

addon.talents.RegisterGuide([[
#name Assassination Rogue 10-85
#minLevel 10
#maxLevel 85

level -- Lethality
    .talent 1,1,3,1

level -- Lethality
    .talent 1,1,3,2

level -- Lethality
    .talent 1,1,3,3

level -- Deadly Momentum
    .talent 1,1,1,1

level -- Deadly Momentum
    .talent 1,1,1,2

level -- Coup de Grace
    .talent 1,1,2,1

level -- Coup de Grace
    .talent 1,1,2,2

level -- Coup de Grace
    .talent 1,1,2,3

level -- Puncturing Wounds
    .talent 1,2,3,1

level -- Puncturing Wounds
    .talent 1,2,3,2

level -- Puncturing Wounds
    .talent 1,2,3,3

level -- Quickening
    .talent 1,2,2,1

level -- Quickening
    .talent 1,2,2,2

level -- Deadly Brew
    .talent 1,3,1,1

level -- Cold Blood
    .talent 1,3,2,1

level -- Vile Poison
    .talent 1,3,3,1

level -- Vile Poison
    .talent 1,3,3,2

level -- Vile Poison
    .talent 1,3,3,3

level -- Deadened Nerves
    .talent 1,4,1,1

level -- Deadened Nerves
    .talent 1,4,1,2

level -- Deadened Nerves
    .talent 1,4,1,3

level -- Seal Fate
    .talent 1,4,2,1

level -- Seal Fate
    .talent 1,4,2,2

level -- Overkill
    .talent 1,5,2,1

level -- Master Poisoner
    .talent 1,5,3,1

level -- Cut to the Chase
    .talent 1,6,2,1

level -- Cut to the Chase
    .talent 1,6,2,2

level -- Cut to the Chase
    .talent 1,6,2,3

level -- Venomous Wounds
    .talent 1,6,3,1

level -- Venomous Wounds
    .talent 1,6,3,2

level -- Vendetta
    .talent 1,7,2,1

level -- Improved Recuperate
    .talent 2,1,1,1

level -- Improved Recuperate
    .talent 2,1,1,2

level -- Precision
    .talent 2,1,3,1

level -- Precision
    .talent 2,1,3,2

level -- Precision
    .talent 2,1,3,3

level -- Improved Slice and Dice
    .talent 2,1,2,1

level -- Improved Slice and Dice
    .talent 2,1,2,2

level -- Relentless Strikes
    .talent 3,1,3,1

level -- Relentless Strikes
    .talent 3,1,3,2

level -- Relentless Strikes
    .talent 3,1,3,3
]])

addon.talents.RegisterGuide([[
#name Combar Rogue 10-85
#minLevel 10
#maxLevel 85

level -- Improved Sinister Strikes
    .talent 2,1,2,1

level -- Improved Sinister Strikes
    .talent 2,1,2,2

level -- Improved Sinister Strikes
    .talent 2,1,2,3

level -- Precision
    .talent 2,1,3,1

level -- Precision
    .talent 2,1,3,2

level -- Aggression
    .talent 2,2,3,1

level -- Aggression
    .talent 2,2,3,2

level -- Aggression
    .talent 2,2,3,3

level -- Precision
    .talent 2,1,3,2

level -- Improved Recuperate
    .talent 2,1,1,1

level -- Revealing Strike
    .talent 2,3,2,1

level -- Improved Recuperate
    .talent 2,1,1,2

level -- Lightning Reflexes
    .talent 2,3,1,1

level -- Lightning Reflexes
    .talent 2,3,1,2

level -- Lightning Reflexes
    .talent 2,3,1,3

level -- Combat Potency
    .talent 2,4,2,1

level -- Combat Potency
    .talent 2,4,2,2

level -- Combat Potency
    .talent 2,4,2,3

level -- Improved Sprint
    .talent 2,2,2,1

level -- Improved Sprint
    .talent 2,2,2,2

level -- Adrenaline Rush
    .talent 2,5,2,1

level -- Savage Combat
    .talent 2,5,3,1

level -- Savage Combat
    .talent 2,5,3,2

level -- Reinforced Leather
    .talent 2,3,3,1

level -- Reinforced Leather
    .talent 2,3,3,2

level -- Bandit's Guile
    .talent 2,6,1,1

level -- Bandit's Guile
    .talent 2,6,1,2

level -- Bandit's Guile
    .talent 2,6,1,3

level -- Restless Blades
    .talent 2,6,3,1

level -- Restless Blades
    .talent 2,6,3,2

level -- Killing Spree
    .talent 2,7,2,1

level -- Deadly Momentum
    .talent 1,1,1,1

level -- Deadly Momentum
    .talent 1,1,1,2

level -- Coup de Grace
    .talent 1,1,2,1

level -- Coup de Grace
    .talent 1,1,2,2

level -- Coup de Grace
    .talent 1,1,2,3

level -- Lethality
    .talent 1,1,2,1

level -- Lethality
    .talent 1,1,2,2

level -- Lethality
    .talent 1,1,2,3

level -- Quickening
    .talent 3,1,1,1

level -- Quickening
    .talent 3,1,1,2
]])

addon.talents.RegisterGuide([[
#name Subtlety Rogue 10-85
#minLevel 10
#maxLevel 85

level -- Improved Ambush
    .talent 3,1,2,1

level -- Improved Ambush
    .talent 3,1,2,2

level -- Nightstalker
    .talent 3,1,1,1

level -- Improved Ambush
    .talent 3,1,2,3

level -- Nightstalker
    .talent 3,1,1,2

level -- Opportunity
    .talent 3,2,3,1

level -- Opportunity
    .talent 3,2,3,2

level -- Opportunity
    .talent 3,2,3,3

level -- Initiative
    .talent 3,2,3,1

level -- Initiative
    .talent 3,2,3,2

level -- Hemorrhage
    .talent 3,3,1,1

level -- Find Weakness
    .talent 3,3,2,1

level -- Find Weakness
    .talent 3,3,2,2

level -- Energetic Recovery
    .talent 3,3,1,1

level -- Energetic Recovery
    .talent 3,3,1,2

level -- Premeditation
    .talent 3,4,2,1

level -- Honor Among Thieves
    .talent 3,4,1,1

level -- Honor Among Thieves
    .talent 3,4,1,2

level -- Honor Among Thieves
    .talent 3,4,1,3

level -- Energetic Recovery
    .talent 3,3,1,3

level -- Preparation
    .talent 3,5,2,1

level -- Sanguinary Vein
    .talent 3,5,3,1

level -- Sanguinary Vein
    .talent 3,5,3,2

level -- Elusiveness
    .talent 3,2,1,1

level -- Elusiveness
    .talent 3,2,1,2

level -- Slaughter from the Shadows
    .talent 3,6,2,1

level -- Slaughter from the Shadows
    .talent 3,6,2,2

level -- Slaughter from the Shadows
    .talent 3,6,2,3

level -- Serrated Blades
    .talent 3,6,3,1

level -- Serrated Blades
    .talent 3,6,3,2

level -- Shadow Dance
    .talent 3,7,2,1

level -- Deadly Momentum
    .talent 1,1,1,1

level -- Deadly Momentum
    .talent 1,1,1,2

level -- Lethality
    .talent 1,1,3,1

level -- Lethality
    .talent 1,1,3,2

level -- Lethality
    .talent 1,1,3,3

level -- Precision
    .talent 2,1,3,1

level -- Precision
    .talent 2,1,3,2

level -- Precision
    .talent 2,1,3,3

level -- Improved Recuperate
    .talent 2,1,1,1

level -- Improved Recuperate
    .talent 2,1,1,2
]])
