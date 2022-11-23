RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Starting Zones
#subgroup Tauren Starting Zones
#name 1 Tauren Starting Zone
#displayname Chapter 1 - Camp Narache
#next 2 Tauren Mulgore
#defaultfor Tauren

<< Horde !DK

step << Tauren
    .zoneskip 1727
    #completewith MulgoreFirstQuestCheck
    +Welcome to the |cfff78300Tauren Starting Zone|r Guide of RestedXP.
    *This route is roughly 10-20 minutes slower than |cfff78300Exiles Reach|r. For faster leveling recreate your character and choose |cfff78300Exiles Reach|r instead.
step << Tauren
    .zoneskip 1727,1
    +You are in Exiles Reach but the current Guide is for the |cfff78300Undead Starting Zone|r.
    +Please choose the |cfff78300Exiles Reach Guide|r.
step
    #label MulgoreFirstQuestCheck
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chief Hawkwind
    .goto 462,27.7,28.2
    .accept 14449 >>Accept The First Step
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Grull Hawkwind
    .goto 462,39.45,37.25
    .turnin 14449 >>Turn in The First Step
    .accept 14452 >>Accept Rite of Strength
step
    >>Kill fighting |cff00ecffBristleback Invaders|r
    .goto 462,40.93,35.68,15,0
    .goto 462,42.01,32.95,15,0
    .goto 462,44.65,34.68,15,0
    .goto 462,44.40,37.15,15,0
    .goto 462,40.81,38.19
    .complete 14452,1 --6/6 Bristleback Invaders slain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Grull Hawkwind
    .goto 462,39.45,37.25
    .turnin 14452 >>Turn in Rite of Strength
    .accept 24852 >>Accept Our Tribe, Imprisoned
step
    #title Brave Freed 1
    >>Open the Quilboar Cage
    .goto 462,49.39,35.39
    .complete 24852,1,1 --4/4 Braves Freed
step
    #title Brave Freed 2
    >>Open the Quilboar Cage
    .goto 462,49.07,36.97
    .complete 24852,1,2 --4/4 Braves Freed
step
    #title Brave Freed 3
    >>Open the Quilboar Cage
    .goto 462,49.32,42.12
    .complete 24852,1,3 --4/4 Braves Freed
step
    #title Brave Freed 4
    >>Open the Quilboar Cage
    .goto 462,49.07,43.80
    .complete 24852,1,4 --4/4 Braves Freed
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Grull Hawkwind
    .goto 462,39.45,37.25
    .turnin 24852 >>Turn in Our Tribe, Imprisoned
    .accept 14458 >>Accept Go to Adana
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Adana Thunderhorn
    .goto 462,30.9,50.6
    .turnin 14458 >>Turn in Go to Adana
    .accept 14456 >>Accept Rite of Courage
    .accept 14455 >>Accept Stop the Thorncallers
step
    #completewith next
    >>Kill |cff00ecffBristleback Gun Thiefs|r. Loot the thiefs for their stolen rifles.
    .complete 14456,1 --7/7 Stolen Rifle
step
    >>Kill |cff00ecffBristleback Thorncallers|r
    .goto 462,32.82,63.39,15,0
    .goto 462,31.86,68.99,15,0
    .goto 462,34.93,70.00,15,0
    .goto 462,36.56,67.73
    .complete 14455,1 --7/7 Bristleback Thorncaller slain
step
    >>Kill |cff00ecffBristleback Gun Thiefs|r. Loot the thiefs for their stolen rifles.
    .goto 462,36.18,61.12,15,0
    .goto 462,32.81,63.11
    .complete 14456,1 --7/7 Stolen Rifle
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Adana Thunderhorn
    .goto 462,30.9,50.6
    .turnin 14456 >>Turn in Rite of Courage
    .turnin 14455 >>Turn in Stop the Thorncallers
    .accept 14459 >>Accept The Battleboars
    .accept 14461 >>Accept Feed of Evil
step
    #sticky
    #label mulgoreAmoredBattleboar
    >>Kill |cff00ecffArmored Battleboars|r
    .goto 462,26.78,68.79,0,0
    .complete 14459,1 --10/10 Armored Battleboar slain
step
    #completewith QuestKeybindingsTauren
    +If you want to make the most of RXP; Press Escape -> Options -> Keybindings -> RestedXP Guides -> Select and Bind Active Button 1,2,3 and 4. You can also do this with Targets.
    *This will allow you to press a Keybind to use a Quest Item/Target a relevant mob
step
    >>Use |T135432:0|t[Adana's Torch] next to the trough
    .use 49539
    .goto 462,26.37,66.33
    .complete 14461,1 --1/1 First Trough
step
    >>Use |T135432:0|t[Adana's Torch] next to the trough
    .use 49539
    .goto 462,25.12,69.15
    .complete 14461,2 --1/1 Second Trough
step
    #label QuestKeybindingsTauren
    >>Use |T135432:0|t[Adana's Torch] next to the trough
    .use 49539
    .goto 462,28.2,70.4
    .complete 14461,3 --1/1 Third Trough
step
    #requires mulgoreAmoredBattleboar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Adana Thunderhorn
    .goto 462,30.9,50.6
    .turnin 14459 >>Turn in The Battleboars
    .turnin 14461 >>Turn in Feed of Evil
    .accept 14460 >>Accept Rite of Honor
step
    >>Kill |cff00ecffChief Squealer Thornmantle|r. Loot him for his mantle
    .goto 462,15.20,46.73
    .complete 14460,1 --1/1 Mane of Thornmantle
step << Hunter
    #completewith next
    .goto 462,23.69,38.27,25,0
    .tame 2955 >>Tame a Plainstrider
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chief Hawkwind
    .goto 462,27.7,28.3
    .turnin 14460 >>Turn in Rite of Honor
    .accept 24861 >>Accept Last Rites, First Rites
step
    >>Use the |T132813:0|t[Water Pitcher]
    .goto 462,27.7,28.3
    .use 50465
    .complete 24861,1 --1/1 Offering Placed
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chief Hawkwind
    .goto 462,27.7,28.3
    .turnin 24861 >>Turn in Last Rites, First Rites
    .accept 23733 >>Accept Rites of the Earthmother
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Dyami Windsoar on top of the mountain
    .goto 462,19.24,33.81,10,0
    .goto 462,11.91,27.64,10,0
    .goto 462,12.50,29.17,8,0
    .goto 462,15.63,30.26
    .turnin 23733 >>Turn in Rites of the Earthmother
    .accept 24215 >>Accept Rite of the Winds
step
    #completewith next
    .goto 462,15.40,27.68,10,0
    .goto 462,15.44,25.29,20,0
    .deathskip >>Follow the arrow by jumping off the mountain, die and release your spirit
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Maur Raincaller
    .goto 7,47.16,56.66
    .accept 26188 >>Accept Mazzranache
]])

RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Starting Zones
#name 2 Tauren Mulgore
#displayname Chapter 2 - Mulgore
#next RestedXP Horde 10-60\1 BfA Intro
#subgroup Tauren Starting Zones
#defaultfor Tauren

<< Horde !DK

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Maur Raincaller
    .goto 7,47.16,56.66
    .accept 26188 >>Accept Mazzranache
step << Hunter/Warlock
    #completewith MulgoreABundleofHidesAccept
    +|cfff78300Reminder: Resummon your pet after a deathskip|r
step
    #completewith next
    .goto 7,46.53,58.17,5 >>Enter the tent
step
    #label MulgoreABundleofHidesAccept
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Varg Windwhisper inside the tent
    .goto 7,46.06,58.19
    .accept 6361 >>Accept A Bundle of Hides
step
    #completewith next
    .goto 7,47.44,58.64
    .fp >>Get the Bloodhoof Village Flight Path
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tak
    .turnin 6361 >>Turn in A Bundle of Hides
    .accept 6362 >>Accept Ride to Thunder Bluff
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Harken Windtotem
    .goto 7,48.78,58.79
    .accept 761 >>Accept Swoop Hunting
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mull Thunderhorn
    .goto 7,48.61,59.8
    .accept 20440 >>Accept Poison Water
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ahmo Thunderhorn
    .isQuestComplete 24215
    .goto 7,47.65,59.58
    .turnin 24215 >>Turn in Rite of the Winds
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ahmo Thunderhorn
    .goto 7,47.65,59.58
    .accept 14438 >>Accept Sharing the Land
    .accept 24459 >>Accept Morin Cloudstalker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ruul Eagletalon
    .goto 7,47.50,61.33
    .accept 743 >>Accept Dangers of the Windfury
step
    #completewith next
    >>Kill |cff00ecffPlainstrider|r and |cff00ecffWolfs|r. Loot them for talons/paws
    .complete 20440,2 --4/4 Plainstrider Talon
    .complete 20440,1 --6/6 Prairie Wolf Paw
step
    >>Kill |cff00ecffPalemane Gnolls|r
    >>Keep an eye out for Snagglespear and Arra'chea
    .unitscan Snagglespear
    .unitscan Arra'chea
    .goto 7,48.44,70.79,30,0
    .goto 7,53.35,71.71
    .complete 14438,1 --15/15 Palemane Gnolls
step
    #completewith MulgorePoisonedWater
    >>Kill |cff00ecffSwoops|r. Loot them for their quills
    >>You don't need to complete this quest at this point
    .complete 761,1 --8/8 Trophy Swoop Quill
step
    >>Kill |cff00ecffPlainstrider|r and |cff00ecffWolfs|r. Loot them for talons/paws
    .goto 7,53.65,68.34,30,0
    .goto 7,50.30,65.51,30,0
    .goto 7,51.92,62.67
    .complete 20440,2 --4/4 Plainstrider Talon
    .complete 20440,1 --6/6 Prairie Wolf Paw
step
    #label MulgorePoisonedWater
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mull Thunderhorn
    .goto 7,48.62,59.81
    .turnin 20440 >>Turn in Poison Water
    .accept 24440 >>Accept Winterhoof Cleansing
step
    >>Use the |T135139:0|t[Winterhoof Cleansing Totem] next to the well
    .goto 7,53.47,65.36
    .use 5411
    .complete 24440,1 --Well Cleansed
step
    #completewith next
    >>Kill |cff00ecffSwoops|r. Loot them for their quills
    >>You don't need to complete this quest at this point
    .goto 7,56.22,63.43,30,0
    .complete 761,1 --8/8 Trophy Swoop Quill
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Morin Cloudstalker
    .goto 7,57.06,60.43
    .turnin 24459 >>Turn in Morin Cloudstalker
    .accept 749 >>Accept The Ravaged Caravan
step
    #completewith next
    >>Kill |cff00ecffSwoops|r. Loot them for their quills
    >>You don't need to complete this quest at this point
    .complete 761,1 --8/8 Trophy Swoop Quill
step
    .goto 7,53.52,48.28
    >>Return to Sealed Supply Crate
    .turnin 749 >>Turn in The Ravaged Caravan
    .accept 751 >>Accept The Ravaged Caravan
step
    .goto 7,57.06,60.43
    >>Return to Morin Cloudstalker
    .turnin 751 >>Turn in The Ravaged Caravan
    .accept 26179 >>Accept The Venture Co.
    .accept 26180 >>Accept Supervisor Fizsprocket
step
    #completewith next
    >>Kill |cff00ecffVenture Co. Worker|r
    >>Keep an eye out for Enforcer Emilgund
    .unitscan Enforcer Emilgund
    .complete 26179,1 --7/7 Venture Co. Worker slain
step
    >>Kill |cff00ecffSupervisor Fizsprocket|r. Loot him for the Clipboard
    .goto 9,41.79,84.78
    .complete 26180,1 --1/1 Fizsprocket's Clipboard
step
    >>Kill |cff00ecffVenture Co. Worker|r
    >>Keep an eye out for Enforcer Emilgund
    .unitscan Enforcer Emilgund
    .goto 9,45.64,82.31,20,0
    .goto 7,59.09,48.71
    .complete 26179,1 --7/7 Venture Co. Worker slain
step
    #completewith MulgorePoisonedWater
    >>Kill |cff00ecffSwoops|r. Loot them for their quills
    >>You don't need to complete this quest at this point
    .complete 761,1 --8/8 Trophy Swoop Quill
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Morin Cloudstalker
    .goto 7,57.06,60.43
    .turnin 26179 >>Turn in The Venture Co.
    .turnin 26180 >>Turn in Supervisor Fizsprocket
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mull Thunderhorn
    .goto 7,48.62,59.81
    .turnin 24440 >>Turn in Winterhoof Cleansing
    .accept 24441 >>Accept Thunderhorn Totem
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ahmo Thunderhorn
    .goto 7,47.65,59.58
    .turnin 14438 >>Turn in Sharing the Land
    .accept 14491 >>Accept The Restless Earth
step
    #completewith next
    .goto 7,46.82,60.45
    .home >>Set your Hearthstone to Bloodhoof Village
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tak
    .goto 7,47.45,58.64
    .fly Thunder Bluff >>Fly to Thunder Bluff
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tJump down and talk to Ahanu
    .goto 88,45.75,55.83
    .turnin 6362 >>Turn in Ride to Thunder Bluff
    .accept 6363 >>Accept Tal the Wind Rider Master
step
    #completewith next
    .goto 88,45.75,55.83
    .vendor
step
    >>Climb the tower and talk to Tal
    .goto 88,47.03,49.60
    .turnin 6363 >>Turn in Tal the Wind Rider Master
    .accept 6364 >>Accept Return to Varg
step
    #completewith next
    .goto 88,35.79,63.03,10,0
    .goto 88,32.51,70.74,20 >>Take one of the two elevators downwards. Dying here costs you at least one minute
step
    >>Look out for Doomsayer Wiserunner
    >>Kill |cff00ecffWindfury Wind Witches|r and |cff00ecffWindfury Harpies|r. Loot them for their talons
    .unitscan Doomsayer Wiserunner
    .goto 7,34.20,37.19,20,0
    .goto 7,35.62,39,85,20,0
    .goto 7,34.16,42.45,20,0
    .goto 7,35.34,43.13
    .complete 743,1 --8/8 Windfury Talon
step
    >>Use the |T133841:0|t[Drum of the Soothed Earth] on |cff00ecffAgitated Earth Spirits|r.
    >>Try to use the drum on cooldown. Sometimes the elementals may attack you
    .use 49647
    .goto 7,35.37,46.63,35,0
    .goto 7,32.8,48.5
    .complete 14491,1 --6/6 Spirits Calmed
step << Hunter/Warlock
    #completewith next
    +|cfff78300Set your pet to passive by clicking on 'Passive' in your pet bar or in your spell book in the Pet tab|r
step
    #completewith next
    .goto 7,32.53,49.01
    .deathskip >>Pull some mobs and die
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ahab Wheathoof
    .goto 7,48.34,53.09
    .accept 11129 >>Accept Kyle's Gone Missing!
step << Warlock/Hunter
    #completewith next
    +|cfff78300Reminder:Resummon your pet and set it to back to 'Assist'|r
step
    #sticky
    #label MulgoreMazzranache
    >>Kill |cff00ecffFlatland Cougars|r. Loot them for their femur
    .complete 26188,1 --1/1 Flatland Cougar Femur
step
    #sticky
    #label MulgoreKyleGoneMissingMeat
    >>Kill a |cff00ecffPlainstrider|r. Loot it for a Tender Stride Meat
    .goto 7,44.71,52.05,0,0
    .collect 33009,1,11129,1
step
    #completewith next
    >>Kill |cff00ecffWiry Swoops|r. Loot them for their quills
    .complete 761,1 --8/8 Trophy Swoop Quill
step
    >>Kill |cff00ecffPraeri Stalkers|r and |cff00ecffFlatland Cougars|r. Loot them for the claws
    >>Keep an eye out for Mazzranache
    .unitscan Mazzranache
    .goto 7,47.18,50.35,15,0
    .goto 7,44.72,48.58,15,0
    .goto 7,42.48,44.81,15,0
    .goto 7,41.65,42.07,15,0
    .goto 7,46.13,39.72,20,0
    .goto 7,47.18,50.35
    .complete 24441,2 --6/6 Cougar Claws
    .complete 24441,1 --6/6 Stalker Claws
step << Hunter/Warlock
    #requires MulgoreKyleGoneMissingMeat
    #completewith next
    +|cfff78300Set your pet to passive by clicking on 'Passive' in your pet bar or in your spell book in the Pet tab|r
step
    #requires MulgoreKyleGoneMissingMeat
    #completewith MulgoreMazzranacheTurnin
    .goto 7,44.58,45.22
    .deathskip >>Pull some mobs and die
step
    #requires MulgoreKyleGoneMissingMeat
    #completewith MulgoreTurnInThunderhorn
    >>Kyle (a wolf) runs in a circle around/through the city. If you see him running towards you then wait until he is near you, target him and use the Tender Stride Meat
    .use 33009
    .target Kyle
    .complete 11129,1 --1/1 Kyle fed
step
    #label MulgoreMazzranacheTurnin
    #requires MulgoreKyleGoneMissingMeat
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Maur Raincaller
    .goto 7,47.16,56.66
    .turnin 26188 >>Turn in Mazzranache
step << Warlock/Hunter
    #completewith next
    +|cfff78300Reminder:Resummon your pet and set it to back to 'Assist'|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Varg Windwhisper
    .goto 7,46.06,58.19
    .turnin 6364 >>Turn in Return to Varg
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ruul Eagletalon
    .goto 7,47.51,61.33
    .turnin 743 >>Turn in Dangers of the Windfury
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ahmo Thunderhorn
    .goto 7,47.65,59.59
    .turnin 14491 >>Turn in The Restless Earth
step
    #label MulgoreTurnInThunderhorn
    .goto 7,48.6,59.8
    .turnin 24441 >>Turn in Thunderhorn Totem
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Harken Windtotem
    .goto 7,48.78,58.79
    .turnin 761 >>Turn in Swoop Hunting
step
    >>Kyle (a wolf) runs in a circle around/through the city. If you see him running towards you then wait until he is near you, target him and use the Tender Stride Meat
    .use 33009
    .target Kyle
    .goto 7,48.25,60.43,20,0
    .goto 7,48.13,57.28,20,0
    .complete 11129,1 --1/1 Kyle fed
step
    #requires MulgoreKyle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ahab Wheathoof
    .goto 7,48.34,53.09
    .turnin 11129 >>Turn in Kyle's Gone Missing!
step
    #completewith next
    .goto 7,47.64,58.09
    .vendor 3685
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kar Stormsinger
    .goto 7,47.78,57.99
    .turnin 32670 >>Turn in Learn To Ride
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kar Stormsinger
    .goto 7,47.78,57.99
    .skill riding,75 >>Learn Apprentice Riding
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tak
    .goto 7,47.44,58.64
    .fly Thunder Bluff >>Fly to Thunder Bluff
step
    #completewith next
    +There are three ways to Orgrimmar.
    *1) Use the Character Stuck Feature
    *2) Use the |T237388:0|t[Scouting Map: Walking Kalimdor with the Earthmother] toy and fly to Orgrimmar
    *3) Follow the arrow and take the Zeppelin to Orgrimmar (very slow)
    .link https://www.youtube.com/watch?v=jAGUbr8Gz9Y >>Character Stuck Explanation Link
step
    #completewith
    .goto 88,42.81,39.13,10,0
    .goto 88,39.41,38.33,8,0
    .goto 88,28.19,23.46,50,0
    .goto 88,15.27,25.72
    .zone 85 >>Take the zeppelin
]])
