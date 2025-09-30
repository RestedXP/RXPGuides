local _, addon = ...

if addon.player.class ~= "DEATHKNIGHT" or addon.game ~= "WOTLK" then return end

addon.talents.RegisterGuide([[
#name Unholy 10-80
#minLevel 10
#maxLevel 80

level -- Vicious Strikes (Rank 1)
    .talent 3,1,1,1

level -- Vicious Strikes (Rank 2)
    .talent 3,1,1,2

level -- Virulence (Rank 1)
    .talent 3,1,2,1

level -- Virulence (Rank 2)
    .talent 3,1,2,2

level -- Virulence (Rank 3)
    .talent 3,1,2,3

level -- Morbidity (Rank 1)
    .talent 3,2,2,1

level -- Morbidity (Rank 2)
    .talent 3,2,2,2

level -- Morbidity (Rank 3)
    .talent 3,2,2,3

level -- Epidemic (Rank 1)
    .talent 3,2,1,1

level -- Epidemic (Rank 2)
    .talent 3,2,1,2

level -- Corpse Explosion
    .talent 3,3,3,1

level -- Necrosis (Rank 1)
    .talent 3,3,2,1

level -- Necrosis (Rank 2)
    .talent 3,3,2,2

level -- Necrosis (Rank 3)
    .talent 3,3,2,3

level -- Necrosis (Rank 4)
    .talent 3,3,2,4

level -- On a Pale Horse (Rank 1)
    .talent 3,4,2,1

level -- On a Pale Horse (Rank 2)
    .talent 3,4,2,2

level -- Necrosis (Rank 5)
    .talent 3,3,2,5

level -- Night of the Dead (Rank 1)
    .talent 3,4,4,1

level -- Night of the Dead (Rank 2)
    .talent 3,4,4,2

level -- Unholy Blight
    .talent 3,5,1,1

level -- Blood-Caked Blade (Rank 1)
    .talent 3,4,3,1

level -- Blood-Caked Blade (Rank 2)
    .talent 3,4,3,2

level -- Blood-Caked Blade (Rank 3)
    .talent 3,4,3,3

level -- Impurity (Rank 1)
    .talent 3,5,2,1

level -- Mastery of Ghouls
    .talent 3,6,4,1

level -- Impurity (Rank 2)
    .talent 3,5,2,2

level -- Impurity (Rank 3)
    .talent 3,5,2,3

level -- Impurity (Rank 4)
    .talent 3,5,2,4

level -- Impurity (Rank 5)
    .talent 3,5,2,5

level -- Ghoul Frenzy
    .talent 3,7,4,1

level -- Improved Unholy Presence (Rank 1)
    .talent 3,7,3,1

level -- Improved Unholy Presence (Rank 2)
    .talent 3,7,3,2

level -- Ravenous Dead (Rank 1)
    .talent 3,2,4,1

level -- Ravenous Dead (Rank 2)
    .talent 3,2,4,2

level -- Ravenous Dead (Rank 3)
    .talent 3,2,4,3

level -- Crypt Fever (Rank 1)
    .talent 3,8,2,1

level -- Crypt Fever (Rank 2)
    .talent 3,8,2,2

level -- Crypt Fever (Rank 3)
    .talent 3,8,2,3

level -- Bone Shield
    .talent 3,8,3,1

level -- Ebon Plaguebringer (Rank 1)
    .talent 3,9,2,1

level -- Ebon Plaguebringer (Rank 2)
    .talent 3,9,2,2

level -- Ebon Plaguebringer (Rank 3)
    .talent 3,9,2,3

level -- Wandering Plague (Rank 1)
    .talent 3,9,1,1

level -- Wandering Plague (Rank 2)
    .talent 3,9,1,2

level -- Wandering Plague (Rank 3)
    .talent 3,9,1,3

level -- Rage of Rivendare (Rank 1)
    .talent 3,10,2,1

level -- Rage of Rivendare (Rank 2)
    .talent 3,10,2,2

level -- Rage of Rivendare (Rank 3)
    .talent 3,10,2,3

level -- Rage of Rivendare (Rank 4)
    .talent 3,10,2,4

level -- Summon Gargoyle
    .talent 3,11,2,1

level -- Rage of Rivendare (Rank 5)
    .talent 3,10,2,5

level -- Improved Icy Touch (Rank 1)
    .talent 2,1,1,1

level -- Improved Icy Touch (Rank 2)
    .talent 2,1,1,2

level -- Improved Icy Touch (Rank 3)
    .talent 2,1,1,3

level -- Runic Power Mastery (Rank 1)
    .talent 2,1,2,1

level -- Runic Power Mastery (Rank 2)
    .talent 2,1,2,2

level -- Black Ice (Rank 1)
    .talent 2,2,3,1

level -- Black Ice (Rank 2)
    .talent 2,2,3,2

level -- Black Ice (Rank 3)
    .talent 2,2,3,3

level -- Black Ice (Rank 4)
    .talent 2,2,3,4

level -- Black Ice (Rank 5)
    .talent 2,2,3,5

level -- Lichborne
    .talent 2,3,2,1

level -- Icy Talons (Rank 1)
    .talent 2,3,1,1

level -- Icy Talons (Rank 2)
    .talent 2,3,1,2

level -- Icy Talons (Rank 3)
    .talent 2,3,1,3

level -- Icy Talons (Rank 4)
    .talent 2,3,1,4

level -- Icy Talons (Rank 5)
    .talent 2,3,1,5

level -- Endless Winter (Rank 1)
    .talent 2,4,4,1

level -- Endless Winter (Rank 2)
    .talent 2,4,4,2

level -- Butchery (Rank 1)
    .talent 1,1,1,1

]])
