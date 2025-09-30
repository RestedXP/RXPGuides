local _, addon = ...

if addon.player.class ~= "WARRIOR" or addon.game ~= "CATA" then return end

addon.talents.RegisterGuide([[
#name Arms Warrior 10-85
#minLevel 10
#maxLevel 85

level -- War Academy
    .talent 1,1,1,1

level -- War Academy
    .talent 1,1,1,2

level -- War Academy
    .talent 1,1,1,3

level -- Blitz
    .talent 1,1,3,1

level -- Blitz
    .talent 1,1,3,2

level -- Deep Wounds
    .talent 1,2,3,1

level -- Deep Wounds
    .talent 1,2,3,2

level -- Deep Wounds
    .talent 1,2,3,3

level -- Tactical Mastery
    .talent 1,2,1,1

level -- Tactical Mastery
    .talent 1,2,1,2

level -- Taste for Blood
    .talent 1,3,1,1

level -- Taste for Blood
    .talent 1,3,1,2

level -- Taste for Blood
    .talent 1,3,1,3

level -- Sweeping Strikes
    .talent 1,3,2,1

level -- Impale
    .talent 1,3,3,1

level -- Deadly Calm
    .talent 1,4,2,1

level -- Blood Frenzy
    .talent 1,4,3,1

level -- Blood Frenzy
    .talent 1,4,3,2

level -- Improved Slam
    .talent 1,4,1,1

level -- Improved Slam
    .talent 1,4,1,2

level -- Juggernaut
    .talent 1,5,2,1

level -- Lambs to the Slaughter
    .talent 1,5,1,1

level -- Lambs to the Slaughter
    .talent 1,5,1,2

level -- Lambs to the Slaughter
    .talent 1,5,1,3

level -- Sudden Death
    .talent 1,5,4,1

level -- Wrecking Crew
    .talent 1,6,1,1

level -- Wrecking Crew
    .talent 1,6,1,2

level -- Sudden Death
    .talent 1,5,4,2

level -- Impale
    .talent 1,3,3,2

level -- Throwdown
    .talent 1,6,3,1

level -- Bladestorm
    .talent 1,7,2,1

level -- Cruelty
    .talent 2,1,3,1

level -- Cruelty
    .talent 2,1,3,2

level -- Battle Trance
    .talent 2,1,2,1

level -- Battle Trance
    .talent 2,1,2,2

level -- Battle Trance
    .talent 2,1,2,3

level -- Field Dressing
    .talent 1,1,2,1

level -- Field Dressing
    .talent 1,1,2,2

level -- Incite
    .talent 3,1,1,1

level -- Incite
    .talent 3,1,1,2

level -- Incite
    .talent 3,1,1,3
]])
