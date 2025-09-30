local _, addon = ...

if addon.player.class ~= "WARLOCK" or addon.gameVersion >= 40000 then return end

addon.talents.RegisterGuide([[
#name Warlock 10-70
#next Warlock 71-80
#minLevel 10
#maxLevel 70

level -- Improved Corruption (Rank 1)
    .talent 1,1,3,1

level -- Improved Corruption (Rank 2)
    .talent 1,1,3,2

level -- Improved Corruption (Rank 3)
    .talent 1,1,3,3

level -- Improved Corruption (Rank 4)
    .talent 1,1,3,4

level -- Improved Corruption (Rank 5)
    .talent 1,1,3,5

level -- Improved Life Tap (Rank 1)
    .talent 1,2,3,1

level -- Improved Life Tap (Rank 2)
    .talent 1,2,3,2

level -- Improved Drain Soul (Rank 1)
    .talent 1,2,2,1

level -- Improved Drain Soul (Rank 2)
    .talent 1,2,2,2

level -- Improved Curse of Agony (Rank 1)
    .talent 1,1,1,1

level -- Fel Concentration (Rank 1)
    .talent 1,3,2,1

level -- Fel Concentration (Rank 2)
    .talent 1,3,2,2

level -- Fel Concentration (Rank 3)
    .talent 1,3,2,3

level -- Improved Curse of Agony (Rank 2)
    .talent 1,1,1,2

level -- Soul Siphon (Rank 1)
    .talent 1,2,4,1

level -- Grim Reach (Rank 1)
    .talent 1,4,1,1

level -- Grim Reach (Rank 2)
    .talent 1,4,1,2

level -- Soul Siphon (Rank 2)
    .talent 1,2,4,2

level -- Suppression (Rank 1)
    .talent 1,1,2,1

level -- Suppression (Rank 2)
    .talent 1,1,2,2

level -- Siphon Life
    .talent 1,5,2,1

level -- Suppression (Rank 3)
    .talent 1,1,2,3

level -- Amplify Curse
    .talent 1,3,3,1

level -- Empowered Corruption (Rank 1)
    .talent 1,4,4,1

level -- Empowered Corruption (Rank 2)
    .talent 1,4,4,2

level -- Shadow Mastery (Rank 1)
    .talent 1,6,2,1

level -- Shadow Mastery (Rank 2)
    .talent 1,6,2,2

level -- Shadow Mastery (Rank 3)
    .talent 1,6,2,3

level -- Shadow Mastery (Rank 4)
    .talent 1,6,2,4

level -- Shadow Mastery (Rank 5)
    .talent 1,6,2,5

level -- Dark Pact
    .talent 1,7,3,1

level -- Contagion (Rank 1)
    .talent 1,7,2,1

level -- Contagion (Rank 2)
    .talent 1,7,2,2

level -- Contagion (Rank 3)
    .talent 1,7,2,3

level -- Contagion (Rank 4)
    .talent 1,7,2,4

level -- Malediction (Rank 1)
    .talent 1,8,3,1

level -- Malediction (Rank 2)
    .talent 1,8,3,2

level -- Malediction (Rank 3)
    .talent 1,8,3,3

level -- Contagion (Rank 5)
    .talent 1,7,2,5

level -- Improved Howl of Terror (Rank 1)
    .talent 1,8,1,1

level -- Unstable Affliction
    .talent 1,9,2,1

level -- Pandemic
    .talent 1,9,3,1

level -- Empowered Corruption (Rank 3)
    .talent 1,4,4,3

level -- Improved Howl of Terror (Rank 2)
    .talent 1,8,1,2

level -- Improved Fel Hunter (Rank 1)
    .talent 1,6,1,1

level -- Everlasting Affliction (Rank 1)
    .talent 1,10,2,1

level -- Everlasting Affliction (Rank 2)
    .talent 1,10,2,2

level -- Everlasting Affliction (Rank 3)
    .talent 1,10,2,3

level -- Everlasting Affliction (Rank 4)
    .talent 1,10,2,4

level -- Improved Fel Hunter (Rank 2)
    .talent 1,6,1,2

level -- Haunt
    .talent 1,11,2,1

level -- Fel Synergy (Rank 1)
    .talent 2,1,4,1

level -- Fel Synergy (Rank 2)
    .talent 2,1,4,2

level -- Everlasting Affliction (Rank 5)
    .talent 1,10,2,5

level -- Eradication (Rank 1)
    .talent 1,7,1,1

level -- Eradication (Rank 2)
    .talent 1,7,1,2

level -- Eradication (Rank 3)
    .talent 1,7,1,3

level -- Nightfall (Rank 1)
    .talent 1,4,2,1

level -- Nightfall (Rank 2)
    .talent 1,4,2,2

level -- Curse of Exhaustion
    .talent 1,5,3,1

level -- Death's Embrace (Rank 1)
    .talent 1,9,1,1

    ]])

addon.talents.RegisterGuide([[
#name Warlock 71-80
#minLevel 10
#maxLevel 80
#reset


level -- Improved Corruption (Rank 1)
    .talent 1,1,3,1

level -- Improved Corruption (Rank 2)
    .talent 1,1,3,2

level -- Improved Corruption (Rank 3)
    .talent 1,1,3,3

level -- Improved Corruption (Rank 4)
    .talent 1,1,3,4

level -- Improved Corruption (Rank 5)
    .talent 1,1,3,5

level -- Improved Life Tap (Rank 1)
    .talent 1,2,3,1

level -- Improved Life Tap (Rank 2)
    .talent 1,2,3,2

level -- Improved Curse of Agony (Rank 1)
    .talent 1,1,1,1

level -- Improved Curse of Agony (Rank 2)
    .talent 1,1,1,2

level -- Soul Siphon (Rank 1)
    .talent 1,2,4,1

level -- Soul Siphon (Rank 2)
    .talent 1,2,4,2

level -- Fel Concentration (Rank 1)
    .talent 1,3,2,1

level -- Fel Concentration (Rank 2)
    .talent 1,3,2,2

level -- Fel Concentration (Rank 3)
    .talent 1,3,2,3

level -- Amplify Curse
    .talent 1,3,3,1

level -- Grim Reach (Rank 1)
    .talent 1,4,1,1

level -- Grim Reach (Rank 2)
    .talent 1,4,1,2

level -- Empowered Corruption (Rank 1)
    .talent 1,4,4,1

level -- Empowered Corruption (Rank 2)
    .talent 1,4,4,2

level -- Empowered Corruption (Rank 3)
    .talent 1,4,4,3

level -- Siphon Life
    .talent 1,5,2,1

level -- Curse of Exhaustion
    .talent 1,5,3,1

level -- Nightfall (Rank 1)
    .talent 1,4,2,1

level -- Nightfall (Rank 2)
    .talent 1,4,2,2

level -- Suppression (Rank 1)
    .talent 1,1,2,1

level -- Shadow Mastery (Rank 1)
    .talent 1,6,2,1

level -- Shadow Mastery (Rank 2)
    .talent 1,6,2,2

level -- Shadow Mastery (Rank 3)
    .talent 1,6,2,3

level -- Shadow Mastery (Rank 4)
    .talent 1,6,2,4

level -- Shadow Mastery (Rank 5)
    .talent 1,6,2,5

level -- Dark Pact
    .talent 1,7,3,1

level -- Contagion (Rank 1)
    .talent 1,7,2,1

level -- Contagion (Rank 2)
    .talent 1,7,2,2

level -- Contagion (Rank 3)
    .talent 1,7,2,3

level -- Contagion (Rank 4)
    .talent 1,7,2,4

level -- Contagion (Rank 5)
    .talent 1,7,2,5

level -- Malediction (Rank 1)
    .talent 1,8,3,1

level -- Malediction (Rank 2)
    .talent 1,8,3,2

level -- Malediction (Rank 3)
    .talent 1,8,3,3

level -- Improved Howl of Terror (Rank 1)
    .talent 1,8,1,1

level -- Unstable Affliction
    .talent 1,9,2,1

level -- Pandemic
    .talent 1,9,3,1

level -- Improved Howl of Terror (Rank 2)
    .talent 1,8,1,2

level -- Eradication (Rank 1)
    .talent 1,7,1,1

level -- Eradication (Rank 2)
    .talent 1,7,1,2

level -- Everlasting Affliction (Rank 1)
    .talent 1,10,2,1

level -- Everlasting Affliction (Rank 2)
    .talent 1,10,2,2

level -- Everlasting Affliction (Rank 3)
    .talent 1,10,2,3

level -- Everlasting Affliction (Rank 4)
    .talent 1,10,2,4

level -- Everlasting Affliction (Rank 5)
    .talent 1,10,2,5

level -- Haunt
    .talent 1,11,2,1

level -- Fel Synergy (Rank 1)
    .talent 2,1,4,1

level -- Fel Synergy (Rank 2)
    .talent 2,1,4,2

level -- Demonic Embrace (Rank 1)
    .talent 2,1,3,1

level -- Demonic Embrace (Rank 2)
    .talent 2,1,3,2

level -- Demonic Embrace (Rank 3)
    .talent 2,1,3,3

level -- Fel Vitality (Rank 1)
    .talent 2,2,3,1

level -- Fel Vitality (Rank 2)
    .talent 2,2,3,2

level -- Fel Vitality (Rank 3)
    .talent 2,2,3,3

level -- Improved Healthstone (Rank 1)
    .talent 2,1,1,1

level -- Improved Healthstone (Rank 2)
    .talent 2,1,1,2

level -- Soul Link
    .talent 2,3,2,1

level -- Demonic Aegis (Rank 1)
    .talent 2,3,4,1

level -- Demonic Aegis (Rank 2)
    .talent 2,3,4,2

level -- Demonic Aegis (Rank 3)
    .talent 2,3,4,3

level -- Eradication (Rank 3)
    .talent 1,7,1,3

level -- Suppression (Rank 2)
    .talent 1,1,2,2

level -- Suppression (Rank 3)
    .talent 1,1,2,3

level -- Death's Embrace (Rank 1)
    .talent 1,9,1,1

level -- Death's Embrace (Rank 2)
    .talent 1,9,1,2

level -- Death's Embrace (Rank 3)
    .talent 1,9,1,3

]])
