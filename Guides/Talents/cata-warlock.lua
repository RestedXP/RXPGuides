local _, addon = ...

if addon.player.class ~= "WARLOCK" or addon.game ~= "CATA" then return end

addon.talents.RegisterGuide([[
#name Affliction 10-85
#minLevel 10
#maxLevel 85

level -- Improved Corruption
    .talent 1,1,3,1

level -- Improved Corruption
    .talent 1,1,3,2

level -- Improved Corruption
    .talent 1,1,3,3

level -- Doom and Gloom
    .talent 1,1,1,1

level -- Doom and Gloom
    .talent 1,1,1,2

level -- Improved Life Tap
    .talent 1,1,2,1

level -- Improved Life Tap
    .talent 1,1,2,2

level -- Soul Siphon
    .talent 1,2,2,1

level -- Soul Siphon
    .talent 1,2,2,2

level -- Siphon Life
    .talent 1,2,3,1

level -- Siphon Life
    .talent 1,2,3,2

level -- Jinx
    .talent 1,2,1,1

level -- Jinx
    .talent 1,2,1,2

level -- Eradication
    .talent 1,3,4,1

level -- Eradication
    .talent 1,3,4,2

level -- Eradication
    .talent 1,3,4,3

level -- Curse of Exhaustion
    .talent 1,3,1,1

level -- Soul Swap
    .talent 1,4,2,1

level -- Shadow Embrace
    .talent 1,4,3,1

level -- Shadow Embrace
    .talent 1,4,3,2

level -- Shadow Embrace
    .talent 1,4,3,3

level -- Nightfall
    .talent 1,5,2,1

level -- Nightfall
    .talent 1,5,2,2

level -- Death's Embrace
    .talent 1,5,1,1

level -- Death's Embrace
    .talent 1,5,1,2

level -- Death's Embrace
    .talent 1,5,1,3

level -- Soulburn: Seed of Corruption
    .talent 1,5,3,1

level -- Everlasting Affliction
    .talent 1,6,2,1

level -- Everlasting Affliction
    .talent 1,6,2,2

level -- Everlasting Affliction
    .talent 1,6,2,3

level -- Pandemic
    .talent 1,6,3,1

level -- Pandemic
    .talent 1,6,3,2

level -- Haunt
    .talent 1,7,2,1

level -- Dark Arts
    .talent 2,1,2,1

level -- Dark Arts
    .talent 2,1,2,2

level -- Dark Arts
    .talent 2,1,2,3

level -- Fel Synergy
    .talent 2,1,3,1

level -- Demonic Embrace
    .talent 2,1,1,1

level -- Demonic Aegis
    .talent 2,2,3,1

level -- Demonic Aegis
    .talent 2,2,3,2

level -- Mana Feed
    .talent 2,2,3,1
]])

addon.talents.RegisterGuide([[
#name Demonology 10-85
#minLevel 10
#maxLevel 85

level -- Demonic Embrace
    .talent 2,1,1,1

level -- Demonic Embrace
    .talent 2,1,1,2

level -- Demonic Embrace
    .talent 2,1,1,3

level -- Dark Arts
    .talent 2,1,2,1

level -- Dark Arts
    .talent 2,1,2,2

level -- Dark Arts
    .talent 2,1,2,3

level -- Fel Synergy
    .talent 2,1,3,1

level -- Demonic Rebirth
    .talent 2,2,1,1

level -- Demonic Rebirth
    .talent 2,2,1,2

level -- Mana Feed
    .talent 2,2,2,1

level -- Mana Feed
    .talent 2,2,2,2

level -- Demonic Aegis
    .talent 2,2,3,1

level -- Demonic Aegis
    .talent 2,2,3,2

level -- Master Summoner
    .talent 2,2,4,1

level -- Master Summoner
    .talent 2,2,4,2

level -- Impending Doom
    .talent 2,3,1,1

level -- Impending Doom
    .talent 2,3,1,2

level -- Impending Doom
    .talent 2,3,1,3

level -- Molten Core
    .talent 2,4,1,1

level -- Molten Core
    .talent 2,4,1,2

level -- Molten Core
    .talent 2,4,1,3

level -- Hand of Gul'dan
    .talent 2,4,2,1

level -- Aura of Foreboding
    .talent 2,4,3,1

level -- Aura of Foreboding
    .talent 2,4,3,2

level -- Ancient Grimoire
    .talent 2,5,1,1

level -- Ancient Grimoire
    .talent 2,5,1,2

level -- Inferno
    .talent 2,5,2,1

level -- Decimation
    .talent 2,5,3,1

level -- Decimation
    .talent 2,5,3,2

level -- Cremation
    .talent 2,6,2,1

level -- Cremation
    .talent 2,6,2,2

level -- Demonic Pact
    .talent 2,6,3,1

level -- Metamorphosis
    .talent 2,7,2,1

level -- Improved Corruption
    .talent 1,1,3,1

level -- Improved Corruption
    .talent 1,1,3,2

level -- Improved Corruption
    .talent 1,1,3,3

level -- Improved Life Tap
    .talent 1,1,2,1

level -- Improved Life Tap
    .talent 1,1,2,2

level -- Doom and Gloom
    .talent 1,1,1,1

level -- Doom and Gloom
    .talent 1,1,1,2

level -- Siphon Life
    .talent 1,2,3,1
]])

addon.talents.RegisterGuide([[
#name Destruction 10-85
#minLevel 10
#maxLevel 85

level -- Bane
    .talent 3,1,1,1

level -- Bane
    .talent 3,1,1,2

level -- Bane
    .talent 3,1,1,3

level -- Shadow and Flame
    .talent 3,1,3,1

level -- Shadow and Flame
    .talent 3,1,3,2

level -- Shadow and Flame
    .talent 3,1,3,3

level -- Improved Immolate
    .talent 3,1,3,1

level -- Improved Immolate
    .talent 3,1,3,2

level -- Emberstorm
    .talent 3,2,2,1

level -- Emberstorm
    .talent 3,2,2,2

level -- Improved Soul Fire
    .talent 3,3,1,1

level -- Improved Soul Fire
    .talent 3,3,1,2

level -- Backdraft
    .talent 3,3,2,1

level -- Backdraft
    .talent 3,3,2,2

level -- Backdraft
    .talent 3,3,2,3

level -- Shadowburn
    .talent 3,3,3,1

level -- Burning Embers
    .talent 3,4,1,1

level -- Burning Embers
    .talent 3,4,1,2

level -- Nether Ward
    .talent 3,4,4,1

level -- Backlash
    .talent 3,4,3,1

level -- Backlash
    .talent 3,4,3,2

level -- Soul Leech
    .talent 3,4,2,1

level -- Soul Leech
    .talent 3,4,2,2

level -- Fire and Brimstone
    .talent 3,5,2,1

level -- Fire and Brimstone
    .talent 3,5,2,2

level -- Fire and Brimstone
    .talent 3,5,2,3

level -- Bane of Havoc
    .talent 3,6,3,1

level -- Empowered Imp
    .talent 3,6,1,1

level -- Empowered Imp
    .talent 3,6,1,2

level -- Shadowfury
    .talent 3,5,3,1

level -- Chaos Bolt
    .talent 3,7,2,1

level -- Dark Arts
    .talent 2,1,2,1

level -- Dark Arts
    .talent 2,1,2,2

level -- Dark Arts
    .talent 2,1,2,3

level -- Improved Corruption
    .talent 1,1,3,1

level -- Improved Corruption
    .talent 1,1,3,2

level -- Improved Corruption
    .talent 1,1,3,3

level -- Fel Synergy
    .talent 2,1,3,1

level -- Improved Life Tap
    .talent 1,1,2,1

level -- Improved Life Tap
    .talent 1,1,2,2

level -- Backlash
    .talent 3,4,3,3
]])
