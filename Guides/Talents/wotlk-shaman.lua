local _, addon = ...

if addon.player.class ~= "SHAMAN" or addon.game ~= "WOTLK" then return end

addon.talents.RegisterGuide([[
#name Shaman 10-80
#minLevel 10
#maxLevel 80

level -- Earth's Grasp (Rank 1)
    .talent 2,1,2,1

level -- Earth's Grasp (Rank 2)
    .talent 2,1,2,2

level -- Enhancing Totems (Rank 1)
    .talent 2,1,1,1

level -- Enhancing Totems (Rank 2)
    .talent 2,1,1,2

level -- Enhancing Totems (Rank 3)
    .talent 2,1,1,3

level -- Improved Ghost Wolf (Rank 1)
    .talent 2,2,3,1

level -- Improved Ghost Wolf (Rank 2)
    .talent 2,2,3,2

level -- Thundering Strikes (Rank 1)
    .talent 2,2,2,1

level -- Thundering Strikes (Rank 2)
    .talent 2,2,2,2

level -- Thundering Strikes (Rank 3)
    .talent 2,2,2,3

level -- Shamanistic Focus
    .talent 2,3,3,1

level -- Thundering Strikes (Rank 4)
    .talent 2,2,2,4

level -- Thundering Strikes (Rank 5)
    .talent 2,2,2,5

level -- Elemental Weapons (Rank 1)
    .talent 2,3,1,1

level -- Elemental Weapons (Rank 2)
    .talent 2,3,1,2

level -- Flurry (Rank 1)
    .talent 2,4,2,1

level -- Flurry (Rank 2)
    .talent 2,4,2,2

level -- Flurry (Rank 3)
    .talent 2,4,2,3

level -- Flurry (Rank 4)
    .talent 2,4,2,4

level -- Flurry (Rank 5)
    .talent 2,4,2,5

level -- Spirit Weapons
    .talent 2,5,2,1

level -- Mental Dexterity (Rank 1)
    .talent 2,5,3,1

level -- Mental Dexterity (Rank 2)
    .talent 2,5,3,2

level -- Mental Dexterity (Rank 3)
    .talent 2,5,3,3

level -- Elemental Weapons (Rank 3)
    .talent 2,3,1,3

level -- Unleashed Rage (Rank 1)
    .talent 2,6,1,1

level -- Unleashed Rage (Rank 2)
    .talent 2,6,1,2

level -- Unleashed Rage (Rank 3)
    .talent 2,6,1,3

level -- Weapon Mastery (Rank 1)
    .talent 2,6,3,1

level -- Weapon Mastery (Rank 2)
    .talent 2,6,3,2

level -- Dual Wield
    .talent 2,7,2,1

level -- Stormstrike
    .talent 2,7,3,1

level -- Weapon Mastery (Rank 3)
    .talent 2,6,3,3

level -- Dual Wield Specialization (Rank 1)
    .talent 2,7,1,1

level -- Dual Wield Specialization (Rank 2)
    .talent 2,7,1,2

level -- Improved Stormstrike (Rank 1)
    .talent 2,8,3,1

level -- Improved Stormstrike (Rank 2)
    .talent 2,8,3,2

level -- Lava Lash
    .talent 2,8,2,1

level -- Dual Wield Specialization (Rank 3)
    .talent 2,7,1,3

level -- Improved Shields (Rank 1)
    .talent 2,2,4,1

level -- Shamanistic Rage
    .talent 2,9,2,1

level -- Mental Quickness (Rank 1)
    .talent 2,9,1,1

level -- Mental Quickness (Rank 2)
    .talent 2,9,1,2

level -- Mental Quickness (Rank 3)
    .talent 2,9,1,3

level -- Improved Shields (Rank 2)
    .talent 2,2,4,2

level -- Improved Maelstrom Weapon (Rank 1)
    .talent 2,10,2,1

level -- Improved Maelstrom Weapon (Rank 2)
    .talent 2,10,2,2

level -- Improved Maelstrom Weapon (Rank 3)
    .talent 2,10,2,3

level -- Improved Maelstrom Weapon (Rank 4)
    .talent 2,10,2,4

level -- Improved Maelstrom Weapon (Rank 5)
    .talent 2,10,2,5

level -- Feral Spirit
    .talent 2,11,2,1

level -- Concussion (Rank 1)
    .talent 1,1,3,1

level -- Concussion (Rank 2)
    .talent 1,1,3,2

level -- Concussion (Rank 3)
    .talent 1,1,3,3

level -- Concussion (Rank 4)
    .talent 1,1,3,4

level -- Concussion (Rank 5)
    .talent 1,1,3,5

level -- Elemental Devastation (Rank 1)
    .talent 1,2,3,1

level -- Elemental Devastation (Rank 2)
    .talent 1,2,3,2

level -- Elemental Devastation (Rank 3)
    .talent 1,2,3,3

level -- Call of Flame (Rank 1)
    .talent 1,2,1,1

level -- Call of Flame (Rank 2)
    .talent 1,2,1,2

level -- Elemental Focus
    .talent 1,3,2,1

level -- Call of Flame (Rank 3)
    .talent 1,2,1,3

level -- Elemental Warding (Rank 1)
    .talent 1,2,2,1

level -- Elemental Warding (Rank 2)
    .talent 1,2,2,2

level -- Elemental Warding (Rank 3)
    .talent 1,2,2,3

level -- Improved Fire Nova (Rank 1)
    .talent 1,4,1,1

level -- Improved Fire Nova (Rank 2)
    .talent 1,4,1,2

level -- Static Shock (Rank 1)
    .talent 2,8,1,1

level -- Static Shock (Rank 2)
    .talent 2,8,1,2

level -- Static Shock (Rank 3)
    .talent 2,8,1,3
]])
