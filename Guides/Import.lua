--
RXPGuides.RegisterGuide([[
#wotlk
<< Horde
#name Testing 1
#version 1
#group Testing
step
    .vendor >> Turn-in demo.
    .target Grull Hawkwind
step
    .vendor >> Group turn-in demo
    .target Brave Windfeather
    .target Gart Mistrunner
    .target Grull Hawkwind
    .target Marjak Keenblade
    .target Moodan Sungrain
step
    .vendor >> Kill elite demo
    .unitscan Brave Lightninghorn
step
    .vendor >> Kill X mobs
    .unitscan Plainstrider
step
    .vendor >> All the things demo
    .target Brave Windfeather
    .target Grull Hawkwind
    .target Gart Mistrunner
    .target Marjak Keenblade
    .target Moodan Sungrain
    .unitscan Brave Lightninghorn
    .unitscan Plainstrider
]])
