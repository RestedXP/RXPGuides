local _, addon = ...

if addon.player.class ~= "HUNTER" or addon.game ~= "CATA" then return end

addon.talents.RegisterGuide([[
#name Beast Mastery 10-85
#minLevel 10
#maxLevel 85

level -- One with Nature
    .talent 1,1,2,1

level -- One with Nature
    .talent 1,1,2,2

level -- One with Nature
    .talent 1,1,2,3

level -- Bestial Discipline
    .talent 1,1,3,1

level -- Bestial Discipline
    .talent 1,1,3,2

level -- Bestial Discipline
    .talent 1,1,3,3

level -- Frenzy
    .talent 1,2,3,1

level -- Frenzy
    .talent 1,2,3,2

level -- Frenzy
    .talent 1,2,3,3

level -- Pathfinding
    .talent 1,2,1,1

level -- Pathfinding
    .talent 1,2,1,2

level -- Fervor
    .talent 1,3,2,1

level -- Focus Fire
    .talent 1,3,3,1

level -- Cobra Strikes
    .talent 1,3,1,1

level -- Cobra Strikes
    .talent 1,3,1,2

level -- Cobra Strikes
    .talent 1,3,1,3

level -- Longevity
    .talent 1,4,1,1

level -- Longevity
    .talent 1,4,1,2

level -- Longevity
    .talent 1,4,1,3

level -- Improved Kill Command
    .talent 1,1,1,1

level -- Improved Kill Command
    .talent 1,1,1,2

level -- Bestial Wrath
    .talent 1,5,2,1

level -- Ferocious Inspiration
    .talent 1,5,3,1

level -- Spirit Bond
    .talent 1,2,2,1

level -- Spirit Bond
    .talent 1,2,2,2

level -- The Beast Within
    .talent 1,6,2,1

level -- Invigoration
    .talent 1,6,3,1

level -- Killing Streak
    .talent 1,4,3,1

level -- Kindred Spirits
    .talent 1,6,1,1

level -- Kindred Spirits
    .talent 1,6,1,2

level -- Beast Mastery
    .talent 1,7,2,1

level -- Go for the Throat
    .talent 2,1,1,1

level -- Go for the Throat
    .talent 2,1,1,2

level -- Efficiency
    .talent 2,1,2,1

level -- Efficiency
    .talent 2,1,2,2

level -- Efficiency
    .talent 2,1,2,3

level -- Sic 'Em!
    .talent 2,2,1,1

level -- Sic 'Em!
    .talent 2,2,1,2

level -- Careful Aim
    .talent 2,2,3,1

level -- Careful Aim
    .talent 2,2,3,2
]])

addon.talents.RegisterGuide([[
#name Marksmanship 10-85
#minLevel 10
#maxLevel 85

level -- Go for the Throat
    .talent 2,1,1,1

level -- Go for the Throat
    .talent 2,1,1,2

level -- Efficiency
    .talent 2,1,2,1

level -- Efficiency
    .talent 2,1,2,2

level -- Efficiency
    .talent 2,1,2,3

level -- Careful Aim
    .talent 2,2,3,1

level -- Careful Aim
    .talent 2,2,3,2

level -- Improved Steady Shot
    .talent 2,2,2,1

level -- Improved Steady Shot
    .talent 2,2,2,2

level -- Improved Steady Shot
    .talent 2,2,2,3

level -- Piercing Shots
    .talent 2,3,3,1

level -- Piercing Shots
    .talent 2,3,3,2

level -- Piercing Shots
    .talent 2,3,3,3

level -- Silencing Shot
    .talent 2,3,1,1

level -- Rapid Killing
    .talent 2,1,3,1

level -- Rapid Killing
    .talent 2,1,3,2

level -- Trueshot Aura
    .talent 2,4,2,1

level -- Bombardment
    .talent 2,4,1,1

level -- Bombardment
    .talent 2,4,1,2

level -- Termination
    .talent 2,4,3,1

level -- Termination
    .talent 2,4,3,2

level -- Readiness
    .talent 2,5,4,1

level -- Master Marksman
    .talent 2,5,2,1

level -- Master Marksman
    .talent 2,5,2,2

level -- Master Marksman
    .talent 2,5,2,3

level -- Marked for Death
    .talent 2,6,3,1

level -- Marked for Death
    .talent 2,6,3,2

level -- Posthaste
    .talent 2,6,1,1

level -- Posthaste
    .talent 2,6,1,2

level -- Rapid Recouperation
    .talent 2,5,1,1

level -- Chimera Shot
    .talent 2,7,2,1

level -- One with Nature
    .talent 1,1,2,1

level -- One with Nature
    .talent 1,1,2,2

level -- One with Nature
    .talent 1,1,2,3

level -- Pathing
    .talent 3,1,2,1

level -- Pathing
    .talent 3,1,2,2

level -- Pathing
    .talent 3,1,2,3

level -- Sic 'Em!
    .talent 2,2,1,1

level -- Sic 'Em!
    .talent 2,2,1,1

level -- Improved Serpent Sting
    .talent 3,1,3,1

level -- Improved Serpent Sting
    .talent 3,1,3,2
]])

addon.talents.RegisterGuide([[
#name Survival 10-85
#minLevel 10
#maxLevel 85

level -- Pathing
    .talent 3,1,2,1

level -- Pathing
    .talent 3,1,2,2

level -- Pathing
    .talent 3,1,2,3

level -- Improved Serpent Sting
    .talent 3,1,3,1

level -- Improved Serpent Sting
    .talent 3,1,3,2

level -- Trap Mastery
    .talent 3,2,2,1

level -- Trap Mastery
    .talent 3,2,2,2

level -- Trap Mastery
    .talent 3,2,2,3

level -- Point of No Escape
    .talent 3,2,4,1

level -- Point of No Escape
    .talent 3,2,4,2

level -- Lock and Load
    .talent 3,3,3,1

level -- Lock and Load
    .talent 3,3,3,2

level -- Thrill of the Hunt
    .talent 3,3,1,1

level -- Thrill of the Hunt
    .talent 3,3,1,2

level -- Thrill of the Hunt
    .talent 3,3,1,3

level -- T.N.T.
    .talent 3,4,3,1

level -- T.N.T.
    .talent 3,4,3,2

level -- Resourcefulness
    .talent 3,4,1,1

level -- Resourcefulness
    .talent 3,4,1,2

level -- Resourcefulness
    .talent 3,4,1,3

level -- Hunting Party
    .talent 3,5,4,1

level -- Toxicology
    .talent 3,5,1,1

level -- Toxicology
    .talent 3,5,1,2

level -- Wyvern Sting
    .talent 3,5,2,1

level -- Noxious Stings
    .talent 3,5,3,1

level -- Serpent Spread
    .talent 3,6,3,1

level -- Sniper Training
    .talent 3,6,1,1

level -- Sniper Training
    .talent 3,6,1,2

level -- Sniper Training
    .talent 3,6,1,3

level -- Noxious Stings
    .talent 3,5,3,2

level -- Black Arrow
    .talent 3,7,2,1

level -- Go for the Throat
    .talent 2,1,1,1

level -- Go for the Throat
    .talent 2,1,1,2

level -- Efficiency
    .talent 2,1,2,1

level -- Efficiency
    .talent 2,1,2,2

level -- Efficiency
    .talent 2,1,2,3

level -- Improved Steady Shot
    .talent 2,2,2,1

level -- Improved Steady Shot
    .talent 2,2,2,2

level -- Improved Steady Shot
    .talent 2,2,2,3

level -- Careful Aim
    .talent 2,2,3,1

level -- Careful Aim
    .talent 2,2,3,2
]])
