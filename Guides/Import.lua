--
RXPGuides.RegisterGuide([[
#wotlk
<< Horde
#name Testing 1
#version 1
#group Testing
step
    .goto Mulgore,44.9,77.1
    .accept 747 >>Accept The Hunt Begins
step
	>> Head into the hut
    .goto Mulgore,44.2,76.1
    .accept 752 >>Accept A Humble Task
step
    .vendor >> Turn-in demo.
    .target Grull Hawkwind
step
    .vendor >> Group turn-in demo
    .target Grull Hawkwind
    .target Brave Windfeather
    .target Gart Mistrunner
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
    .target Grull Hawkwind
    .target Brave Windfeather
    .target Gart Mistrunner
    .target Marjak Keenblade
    .target Moodan Sungrain
    .unitscan Brave Lightninghorn
    .unitscan Plainstrider
]])
