local _, addon = ...

if addon.player.class ~= "SHAMAN" or addon.game ~= "CATA" then return end

addon.talents.RegisterGuide([[
#name Elemental Shaman 10-85
#minLevel 10
#maxLevel 85

level -- Concussion
    .talent 1,1,3,1

level -- Concussion
    .talent 1,1,3,2

level -- Concussion
    .talent 1,1,3,3

level -- Acuity
    .talent 1,1,1,1

level -- Acuity
    .talent 1,1,1,2

level -- Acuity
    .talent 1,1,1,3

level -- Elemental Precision
    .talent 1,2,4,1

level -- Elemental Precision
    .talent 1,2,4,2

level -- Elemental Precision
    .talent 1,2,4,3

level -- Call of Flame
    .talent 1,2,1,1

level -- Call of Flame
    .talent 1,2,1,2

level -- Elemental Focus
    .talent 1,3,2,1

level -- Rolling Thunder
    .talent 1,3,1,1

level -- Rolling Thunder
    .talent 1,3,1,2

level -- Elemental Reach
    .talent 1,3,3,1

level -- Elemental Reach
    .talent 1,3,3,2

level -- Elemental Oath
    .talent 1,4,2,1

level -- Elemental Oath
    .talent 1,4,2,2

level -- Lava Flows
    .talent 1,4,3,1

level -- Lava Flows
    .talent 1,4,3,2

level -- Lava Flows
    .talent 1,4,3,3

level -- Totemic Wrath
    .talent 1,5,4,1

level -- Fulmination
    .talent 1,5,1,1

level -- Elemental Mastery
    .talent 1,5,2,1

level -- Reverberation
    .talent 1,2,3,1

level -- Reverberation
    .talent 1,2,3,2

level -- Lava Surge
    .talent 1,6,3,1

level -- Lava Surge
    .talent 1,6,3,2

level -- Feedback
    .talent 1,6,2,1

level -- Feedback
    .talent 1,6,2,2

level -- Feedback
    .talent 1,6,2,3

level -- Elemental Weapons
    .talent 2,1,1,1

level -- Elemental Weapons
    .talent 2,1,1,2

level -- Improved Shields
    .talent 2,1,3,1

level -- Improved Shields
    .talent 2,1,3,2

level -- Improved Shields
    .talent 2,1,3,3

level -- Ancestral Swiftness
    .talent 2,2,3,1

level -- Ancestral Swiftness
    .talent 2,2,3,2

level -- Ancestral Resolve
    .talent 3,1,1,1

level -- Ancestral Resolve
    .talent 3,1,1,2

level -- Spark of Life
    .talent 3,1,3,1
]])

addon.talents.RegisterGuide([[
#name Enhancement Shaman 10-85
#minLevel 10
#maxLevel 85

level -- Focused Strikes
    .talent 2,1,2,1

level -- Focused Strikes
    .talent 2,1,2,2

level -- Focused Strikes
    .talent 2,1,2,3

level -- Improved Shields
    .talent 2,1,3,1

level -- Improved Shields
    .talent 2,1,3,2

level -- Ancestral Swiftness
    .talent 2,2,3,1

level -- Ancestral Swiftness
    .talent 2,2,3,2

level -- Flurry
    .talent 2,2,2,1

level -- Flurry
    .talent 2,2,2,2

level -- Flurry
    .talent 2,2,2,3

level -- Stormstrike
    .talent 2,3,2,1

level -- Static Shock
    .talent 2,3,3,1

level -- Static Shock
    .talent 2,3,3,2

level -- Static Shock
    .talent 2,3,3,3

level -- Elemental Weapons
    .talent 2,1,1,1

level -- Elemental Weapons
    .talent 2,1,1,2

level -- Searing Flames
    .talent 2,4,3,1

level -- Searing Flames
    .talent 2,4,3,2

level -- Searing Flames
    .talent 2,4,3,3

level -- Elemental Devastation
    .talent 2,2,1,1

level -- Elemental Devastation
    .talent 2,2,1,2

level -- Elemental Devastation
    .talent 2,2,1,3

level -- Shamanistic Rage
    .talent 2,5,2,1

level -- Unleashed Rage
    .talent 2,5,4,1

level -- Unleashed Rage
    .talent 2,5,4,2

level -- Improved Lava Lash
    .talent 2,6,3,1

level -- Improved Lava Lash
    .talent 2,6,3,2

level -- Maelstom Weapon
    .talent 2,6,2,1

level -- Maelstom Weapon
    .talent 2,6,2,2

level -- Maelstom Weapon
    .talent 2,6,2,3

level -- Feral Spirit
    .talent 2,7,2,1

level -- Acuity
    .talent 1,1,1,1

level -- Acuity
    .talent 1,1,1,2

level -- Acuity
    .talent 1,1,1,3

level -- Concussion
    .talent 1,1,3,1

level -- Concussion
    .talent 1,1,3,2

level -- Call of Flame
    .talent 1,2,1,1

level -- Call of Flame
    .talent 1,2,1,2

level -- Elemental Precision
    .talent 1,2,4,1

level -- Elemental Precision
    .talent 1,2,4,2

level -- Elemental Precision
    .talent 1,2,4,3
]])
