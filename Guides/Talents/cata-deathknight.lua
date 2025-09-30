local _, addon = ...

if addon.player.class ~= "DEATHKNIGHT" or addon.game ~= "CATA" then return end

addon.talents.RegisterGuide([[
#name Blood Death Knight 55-85
#minLevel 10
#maxLevel 85

level -- Butchery
    .talent 1,1,1,1

level -- Butchery
    .talent 1,1,1,2

level -- Bladed Armor
    .talent 1,1,3,1

level -- Bladed Armor
    .talent 1,1,3,2

level -- Bladed Armor
    .talent 1,1,3,3

level -- Improved Blood Tap
    .talent 1,2,1,1

level -- Improved Blood Tap
    .talent 1,2,1,2

level -- Scent of Blood
    .talent 1,2,2,1

level -- Scent of Blood
    .talent 1,2,2,2

level -- Scent of Blood
    .talent 1,2,2,3

level -- Scarlet Fever
    .talent 1,2,3,1

level -- Scarlet Fever
    .talent 1,2,3,2

level -- Bone Shield
    .talent 1,3,2,1

level -- Abomination's Might
    .talent 1,3,4,1

level -- Abomination's Might
    .talent 1,3,4,2

level -- Improved Blood Presence
    .talent 1,4,2,1

level -- Improved Blood Presence
    .talent 1,4,2,2

level -- Blood Parasite
    .talent 1,4,2,1

level -- Blood Parasite
    .talent 1,4,2,2

level -- Sanguine Fortitude
    .talent 1,4,1,1

level -- Sanguine Fortitude
    .talent 1,4,1,2

level -- Rune Tap
    .talent 1,5,2,1

level -- Vampiric Blood
    .talent 1,5,3,1

level -- Will of the Necropolis
    .talent 1,5,1,1

level -- Will of the Necropolis
    .talent 1,5,1,2

level -- Improved Death Strike
    .talent 1,6,2,1

level -- Improved Death Strike
    .talent 1,6,2,2

level -- Crimson Scourge
    .talent 1,6,3,1

level -- Crimson Scourge
    .talent 1,6,3,2

level -- Improved Death Strike
    .talent 1,6,2,3

level -- Dancing Rune Weapon
    .talent 1,7,2,1

level -- Will of the Necropolis
    .talent 1,5,1,3

level -- Unholy Command
    .talent 3,1,1,1

level -- Unholy Command
    .talent 3,1,1,2

level -- Epidemic
    .talent 3,1,3,1

level -- Epidemic
    .talent 3,1,3,2

level -- Epidemic
    .talent 3,1,3,3

level -- Morbidity
    .talent 3,2,4,1

level -- Morbidity
    .talent 3,2,4,2

level -- Morbidity
    .talent 3,2,4,3

level -- Runic Power Mastery
    .talent 2,1,1,1
]])


addon.talents.RegisterGuide([[
#name Frost Death Knight 55-85
#minLevel 10
#maxLevel 85

level -- Nerves of Cold Steel
    .talent 2,1,3,1

level -- Nerves of Cold Steel
    .talent 2,1,3,2

level -- Nerves of Cold Steel
    .talent 2,1,3,3

level -- Runic Power Mastery
    .talent 2,2,1,1

level -- Runic Power Mastery
    .talent 2,2,1,2

level -- Runic Power Mastery
    .talent 2,2,1,3

level -- Endless Winter
    .talent 2,2,4,1

level -- Endless Winter
    .talent 2,2,4,2

level -- Killing Machine
    .talent 2,3,3,1

level -- Killing Machine
    .talent 2,3,3,2

level -- Killing Machine
    .talent 2,3,3,3

level -- Merciless Combat
    .talent 2,3,1,1

level -- Merciless Combat
    .talent 2,3,1,2

level -- Pillar of Frost
    .talent 2,4,2,1

level -- Improved Icy Talons
    .talent 2,4,3,1

level -- Brittle Bones
    .talent 2,4,4,1

level -- Brittle Bones
    .talent 2,4,4,2

level -- Rime
    .talent 2,4,1,1

level -- Rime
    .talent 2,4,1,2

level -- Rime
    .talent 2,4,1,3

level -- Improved Frost Presence
    .talent 2,5,3,1

level -- Improved Frost Presence
    .talent 2,5,3,2

level -- Hungering Cold
    .talent 2,5,2,1

level -- Threat of Thassarian
    .talent 2,6,1,1

level -- Threat of Thassarian
    .talent 2,6,1,2

level -- Threat of Thassarian
    .talent 2,6,1,3

level -- On a Pale Horse
    .talent 2,2,3,1

level -- On a Pale Horse
    .talent 2,2,3,2

level -- Howling Blast
    .talent 2,7,2,1

level -- Bladed Armor
    .talent 1,1,3,1

level -- Bladed Armor
    .talent 1,1,3,2

level -- Bladed Armor
    .talent 1,1,3,3

level -- Butchery
    .talent 1,1,1,1

level -- Butchery
    .talent 1,1,1,2

level -- Improved Blood Tap
    .talent 1,2,1,1

level -- Improved Blood Tap
    .talent 1,2,1,2

level -- Scent of Blood
    .talent 1,2,2,1

level -- Scent of Blood
    .talent 1,2,2,2

level -- Scent of Blood
    .talent 1,2,2,3
]])

addon.talents.RegisterGuide([[
#name Unholy Death Knight 10-85
#minLevel 10
#maxLevel 85

level -- Epidemic
    .talent 3,1,3,1

level -- Epidemic
    .talent 3,1,3,2

level -- Epidemic
    .talent 3,1,3,3

level -- Unholy Command
    .talent 3,1,1,1

level -- Unholy Command
    .talent 3,1,1,2

level -- Morbidity
    .talent 3,2,4,1

level -- Morbidity
    .talent 3,2,4,2

level -- Morbidity
    .talent 3,2,4,3

level -- Virulence
    .talent 3,2,2,1

level -- Virulence
    .talent 3,2,2,2

level -- Unholy Frenzy
    .talent 3,3,2,1

level -- Runic Corruption
    .talent 3,3,1,1

level -- Runic Corruption
    .talent 3,3,1,1

level -- Contaigen
    .talent 3,3,3,1

level -- Contaigen
    .talent 3,3,3,2

level -- Rage of Rivendare
    .talent 3,4,3,1

level -- Rage of Rivendare
    .talent 3,4,3,2

level -- Rage of Rivendare
    .talent 3,4,3,3

level -- Shadow Infusion
    .talent 3,3,4,1

level -- Shadow Infusion
    .talent 3,3,4,2

level -- Shadow Infusion
    .talent 3,3,4,3

level -- Unholy Blight
    .talent 3,5,1,1

level -- Virulence
    .talent 3,2,2,3

level -- Dark Transformation
    .talent 3,5,3,1

level -- Improved Unholy Presence
    .talent 3,5,3,1

level -- Improved Unholy Presence
    .talent 3,5,3,2

level -- Ebon Plaguebringer
    .talent 3,6,2,1

level -- Ebon Plaguebringer
    .talent 3,6,2,2

level -- Sudden Doom
    .talent 3,6,3,1

level -- Sudden Doom
    .talent 3,6,3,2

level -- Sudden Doom
    .talent 3,6,3,3

level -- Summon Gargoyle
    .talent 3,7,2,1

level -- Butchery
    .talent 1,1,1,1

level -- Butchery
    .talent 1,1,1,2

level -- Bladed Armor
    .talent 1,1,3,1

level -- Bladed Armor
    .talent 1,1,3,2

level -- Bladed Armor
    .talent 1,1,3,3

level -- Improved Blood Tap
    .talent 1,2,1,1

level -- Improved Blood Tap
    .talent 1,2,1,2

level -- Scent of Blood
    .talent 1,2,2,1

level -- Scent of Blood
    .talent 1,2,2,2
]])
