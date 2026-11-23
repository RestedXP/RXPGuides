RXPGuides.RegisterGuide([[
#forever
#version 1
#group RestedXP Forever Guide (A) << Alliance
#group RestedXP Forever Guide (H) << Horde
#subgroup Extras
#name Cozy Sleeping Bag
#title Cozy Sleeping Bag

step
    +This guide walks you through the |T133662:0|t[|cRXP_LOOT_Cozy Sleeping Bag|r] quest chain
    >>|cRXP_WARN_Sleeping in it gives +1% XP per minute (up to +3%, lasts 2 hours, 1 hour cooldown), and you can log out with rested XP anywhere|r
    >>|cRXP_WARN_Do the Barrens and Stonetalon steps early, and save Loch Modan and Thoradin's Wall for around level 25-30|r << Horde
    >>|cRXP_WARN_The Barrens and Stonetalon steps are in Horde territory. Wowhead lists the quests at about level 22-24, so going in a few levels higher is safer|r << Alliance
step << Alliance
    #completewith next
    .zone Westfall >> Travel to |cFFfa9602Westfall|r
step << Alliance
    .goto Westfall,37.413,50.701
    >>Click the |cRXP_PICK_Burned-Out Remains|r in the wrecked cart at Alexston Farmstead
    .accept 79008 >> Accept ...and that note you found
step << Alliance
    #completewith BarrensTower
    .zone Stranglethorn Vale >> Travel south through |cFFfa9602Duskwood|r to |cFFfa9602Stranglethorn Vale|r and on to Booty Bay
    >>|cRXP_WARN_Stranglethorn can be dangerous at this level. Stick to the road|r
step << Alliance
    #completewith BarrensTower
    .zone The Barrens >> Take the boat from Booty Bay to |cFFfa9602Ratchet|r, then head into |cFFfa9602The Barrens|r
step << Alliance
    #completewith next
    .goto The Barrens,46.361,73.904,60 >> Travel to the burnt-down tower south of Camp Taurajo
    >>|cRXP_WARN_Stay off the roads and give Camp Taurajo and its guards a wide berth|r
step << Alliance
    #label BarrensTower
    .goto The Barrens,46.361,73.904
    >>Click the |cRXP_PICK_Burned-Out Remains|r in the burnt-down tower
    .turnin 79008 >> Turn in ...and that note you found
    .accept 79192 >> Accept Stepping Stones
step << Horde
    #completewith next
    .zone The Barrens >> Travel to |cFFfa9602The Barrens|r, south of Camp Taurajo
step << Horde
    .goto The Barrens,46.361,73.904
    >>Click the |cRXP_PICK_Burned-Out Remains|r in the burnt-down tower
    .accept 79007 >> Accept ...and that note you found
step << Horde
    #completewith next
    .zone Westfall >> Travel to |cFFfa9602Westfall|r
    >>|cRXP_WARN_Take the zeppelin to Grom'gol, then swim north along the Stranglethorn/Westfall coast to avoid Alliance guards and roads|r
step << Horde
    .goto Westfall,37.413,50.701
    >>Click the |cRXP_PICK_Burned-Out Remains|r near the wrecked cart at Alexston Farmstead
    .turnin 79007 >> Turn in ...and that note you found
    .accept 79192 >> Accept Stepping Stones
step
    #completewith next
    .zone Stonetalon Mountains >> Travel to |cFFfa9602Stonetalon Mountains|r
    >>|cRXP_WARN_Avoid the Crossroads|r << Alliance
step
    #completewith next
    .goto Stonetalon Mountains,50.29,52.94,25 >> Take the dirt path north of Sun Rock Retreat up to the abandoned camp
    >>|cRXP_WARN_Sun Rock Retreat is a Horde town with guards. Keep your distance|r << Alliance
step
    .goto Stonetalon Mountains,40.748,52.576
    >>Click the |cRXP_PICK_Pocket Litter|r on the box at the abandoned camp
    >>|cRXP_WARN_Rewards include the|r |cRXP_LOOT_Old Toolbox|r |cRXP_WARN_(12-slot bag)|r
    .turnin 79192 >> Turn in Stepping Stones
    .accept 79980 >> Accept Scramble
step
    #completewith next
    .goto Stonetalon Mountains,40.19,50.80,15 >> Head north from the camp up the hill and carefully jump across to the hillside
step
    .goto Stonetalon Mountains,39.614,49.783
    >>Click the |cRXP_PICK_Mound of Dirt|r on the ground
    .turnin 79980 >> Turn in Scramble
    .accept 79974 >> Accept Wet Job
step
    #completewith next
    .zone Loch Modan >> Travel to |cFFfa9602Loch Modan|r
step
    #completewith next
    .goto Loch Modan,41.01,12.60,50,0
    .goto Loch Modan,42.86,10.36,60,0
    .goto Loch Modan,49.4,12.9,8 >> |cRXP_WARN_Get onto the Loch Modan dam wall and carefully drop down onto the ledge in the centre, on the Wetlands-facing side|r
step
    .goto Loch Modan,49.421,12.917
    >>Click the |cRXP_PICK_Carved Figurine|r on the ledge
    .turnin 79974 >> Turn in Wet Job
    .accept 79975 >> Accept Eagle's Fist
step
    #completewith next
    .goto Hillsbrad Foothills,87.691,48.166,10 >> Travel to |cFFfa9602Thoradin's Wall|r on the Hillsbrad Foothills side of the Arathi Highlands border
step
    #completewith next
    .goto Arathi Highlands,24.132,21.470,7 >> Climb the cart onto the wall and make your way along it
step
    .goto Hillsbrad Foothills,87.36,49.62
    >>Click the |cRXP_PICK_Messenger Bag|r hanging on the wall
    .turnin 79975 >> Turn in Eagle's Fist
    .accept 79976 >> Accept This Must Be The Place
step
    .goto Hillsbrad Foothills,87.36,49.62
    >>Click the |cRXP_PICK_Hastily Rolled-Up Satchel|r next to the bag
    .turnin 79976 >> Turn in This Must Be The Place
step
    +|cRXP_WARN_Save your|r |T134057:0|t[|cRXP_LOOT_Student Fodder|r] |cRXP_WARN_for higher levels. Each one adds rested experience, so it is worth more later|r
]])
