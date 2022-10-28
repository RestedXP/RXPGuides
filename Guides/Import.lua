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
    .vendor >> Vendor trash.
    .target Grull Hawkwind
    .target Brave Windfeather
    .target Gart Mistrunner
    .target Marjak Keenblade
    .target Moodan Sungrain
    .unitscan Brave Lightninghorn
]])
