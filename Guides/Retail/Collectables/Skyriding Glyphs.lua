-- ============================
-- ==========   DF ============
-- ============================

--Nesting
if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#subgroup Skyriding Glyphs
#name a) Dragonflight Glyphs
#displayname Dragonflight Glyphs
#chapters a) Waking Shores Glyphs;a) Ohn'ahran Plains Glyphs;a) Azure Span Glyphs;a) Thaldraszus Glyphs;a) Forbidden Reach Glyphs;a) Zaralek Cavern Glyphs;a) Emerald Dream Dragon Glyphs
]])

--Waking Shores
RXPGuides.RegisterGuide([[
#retail
#version 3
#group RestedXP Miscellaneous
#name a) Waking Shores Glyphs
#displayname |cFF00CCFF1|r - Waking Shores
#next a) Ohn'ahran Plains Glyphs
#chapter

step
    #completewith WakingShoreDragonGlyphs
    +Welcome to the Dragon Glyph Guide
    *This will guide you through all the Dragon Glyphs.
step
    #title Dragon Glyph: Skytop Observatory Rostrum
    >>Use |T4640498:0|t[Skyward Ascend] once
    .goto 2022,75.26,57.07
    .achievement 16575,2 >>Pick up the Dragon Glyph: Skytop Observatory Rostrum
step
    #completewith next
    .goto 2022,75.01,55.57,10 >>Use the ferry if you've unlocked it
step
    #title Dragon Glyph: Skytop Observatory Tower
    >>Use |T4640498:0|t[Skyward Ascend] three times |cRXP_WARN_if you haven't unlocked the ferry|r.
    .goto 2022,75.26,57.07
    .achievement 16575,1 >>Pick up the Dragon Glyph: Skytop Observatory Tower above the tower
step
    #completewith next
    +From the Skytop Observatory Tower: It should be enough to just glide down.
    *From somewhere else: Use |T4640498:0|t[Skyward Ascend] 1-3 times from the base of the tower
step
    #title Dragon Glyph: Dragonheart Outpost
    .line 2022,75.26,57.07,69.18,46.23
    .goto 2022,69.18,46.23
    .achievement 16575,10 >>Pick up the Dragon Glyph: Dragonheart Outpost at the back of the tower in the upper half
step
    #completewith next
    +From the Dragonheart Outpost: Follow the arrow and glide
    *From somewhere else: Use |T4640498:0|t[Skyward Ascend] 1-3 times from the base of the tower
step
    #title Dragon Glyph: Wingrest Embassy
    >>|cRXP_WARN_Only use |T4640498:0|t[Skyward Ascend] if necessary|r.
    .line 2022,73.58,37.09,30,0
    .goto 2022,74.94,37.50
    .achievement 16575,5 >>Pick up the Dragon Glyph: Wingrest Embassy at the top of a broken tower
step
    #title Dragon Glyph: Scalecracker Peak
    >>|cRXP_WARN_Spend all your already collected glyphs and wait until you have at least 3 vigar charges|r.
    >>Use |T4640498:0|t[Skyward Ascend] as often as possible but always wait a few seconds between the casts.
    >>You probably need to occasionally recharge your vigor (some good spots are marked on your map).
    .line 2022,74.94,37.50,73.21,20.51
    .goto 2022,72.96,22.67,0
    .goto 2022,74.09,22.00,0
    .goto 2022,72.87,26.31,0
    .goto 2022,72.85,21.06,0
    .goto 2022,73.21,20.51
    .achievement 16575,11 >>Pick up the Dragon Glyph: Scalecracker Peak at the top of the large mountain
step
    #completewith next
    +From the Scalecracker Peak: Just glide. Try to stay as high as possible while gliding at full speed
    *From somewhere else: Just fly there, wait for at least 3 vigor charges and use |T4640498:0|t[Skyward Ascend] to reach the tower
step
    #title Dragon Glyph: Life-Binder Observatory
    >>Use |T4640498:0|t[Skyward Ascend] only when needed
    .line 2022,21.91,51.41,52.60,17.12
    .goto 2022,52.60,17.12
    .achievement 16575,8 >>Pick up the Dragon Glyph: Life-Binder Observatory above the tower
step
    #completewith next
    +From the Life-Binder Observatory: Just glide. Try to stay as high as possible while gliding at full speed
    *From somewhere else: Fly to the Obsidian Throne, wait form 4 vigor charges and use |T4640498:0|t[Skyward Ascend] to reach the tower
step
    #title Dragon Glyph: Obisidan Throne
    >>Use |T4640498:0|t[Skyward Ascend] only when you need to fly up the mountain.
    >>You probably have to take some breaks in between to wait for vigor (some good spots are marked on your map)
    .line 2022,73.21,20.51,21.91,51.41
    .goto 2022,26.42,53.52,0
    .goto 2022,27.52,48.74,0
    .goto 2022,30.02,47.88,0
    .goto 2022,21.91,51.41
    .achievement 16575,12 >>Pick up the Dragon Glyph: Obisidan Throne at the top of the mountain above a lava pool
step
    #completewith next
    +From the Obisidan Throne: Try to stay as high as possible while gliding at full speed. It shouldn't be necessary to use any vigor
    *From somwhere else: Fly to the Obsidian Bulwark. Use |T4640498:0|t[Skyward Ascend] 1-3 times to reach the glyph
step
    #title Dragon Glyph: Obsidian Bulwark
    .line 2022,21.91,51.41,40.98,71.91
    .goto 2022,40.98,71.91
    .achievement 16575,6 >>Pick up the Dragon Glyph: Obsidian Bulwark at the top of the thin mountain
step
    #completewith next
    +From the Obsidian Bulwark: Use |T4640498:0|t[Skyward Ascend] 2-4 times.
    *From somewhere else: Fly to the Obsidian Bulwark and spam |T4640498:0|t[Skyward Ascend] to reach the glyph
step
    #title Dragon Glyph: The Overflowing Spring
    .line 2022,40.98,71.91,46.39,52.07
    .goto 2022,46.39,52.07
    .achievement 16575,7 >>Pick up the Dragon Glyph: The Overflowing Spring at the top of the mountain
step
    #completewith next
    +From The Overflowing Spring: Just glide to the glyph
    *From somewhere else: An easy way is to get to Ruby Life Pools and fly directly to the glyph
step
    #title Dragon Glyph: Crumbling Life Archway
    >>It shouldn't be necessary to use any vigor.
    .line 2022,46.39,52.07,57.65,54.83
    .goto 2022,57.65,54.83
    .achievement 16575,9 >>Pick up the Dragon Glyph: Crumbling Life Archway under one of the archways
step
    #completewith next
    +From the Crumbling Life Archway: Three uses of |T4640498:0|t[Skyward Ascend] should be enough but you can use more if necessary
    *From somewhere else: The easiest way is to get to Ruby Life Pools and fly up to the glyph
step
    #title Dragon Glyph: Ruby Life Pools Peaks
    .line 2022,57.65,54.83,54.43,74.22
    .goto 2022,54.43,74.22
    .achievement 16575,4 >>Pick up the Dragon Glyph: Ruby Life Pools Peaks above the large mountain
step
    #completewith next
    +From the Ruby Life Pools Peaks: You shouldn't need to use any vigor charges
    *From somewhere else: An easy way is to get to Ruby Life Pools and fly directly to the glyph
step
    #title Dragon Glyph: Flashfrost Enclave
    >>|cRXP_WARN_Spend all your already collected glyphs and wait until you have at least 3 vigar charges afterwards|r.
    .line 2022,54.43,74.22,58.09,78.58
    .goto 2022,58.09,78.58
    .achievement 16575,3 >>Pick up the Dragon Glyph: Flashfrost Enclave above the enclave entrance
step
    #completewith next
    +From the Flashfrost Enclave: Wait until you have at least 3 vigar charges. Try to save at least one vigor charge
    *From somewhere else: The easiest way is to fly from Valdrakken
step
    #label WakingShoreDragonGlyphs
    #title Dragon Glyph: Rubyscale Outpost
    >>|cRXP_WARN_Spend all your already collected glyphs|r.
    >>Three uses of |T4640498:0|t[Skyward Ascend] should be enough but you can use more if necessary
    .line 2022,58.09,78.58,48.82,86.64
    .goto 2022,51.01,82.30,45,0
    .goto 2022,48.82,86.64
    .achievement 16576,11 >>Pick up the Dragon Glyph: Rubyscale Outpost a few yards above the ground
]])
--Ohn'ahran Plains
RXPGuides.RegisterGuide([[
#retail
#version 3
#group RestedXP Miscellaneous
#name a) Ohn'ahran Plains Glyphs
#displayname |cFF00CCFF2|r - Ohn'ahran Plains
#next a) Azure Span Glyphs
#chapter

step
    #title Dragon Glyph: Mirewood Fen
    >>Use |T4640498:0|t[Skyward Ascend] once or twice
    .goto 2023,78.31,21.31
    .achievement 16576,12 >>Pick up the Dragon Glyph: Mirewood Fen a few yards above the ground
step
    #completewith next
    +From the Mirewood Fen: Wait for 3 vigor charges. Use |T4640498:0|t[Skyward Ascend] as often as possible but always wait a few seconds between the casts.
    +From somewhere else: An easy way is to fly there from Valdrakken
step
    #title Dragon Glyph: Rusza'thar Reach
    .line 2023,78.31,21.31,86.51,39.40
    .goto 2023,86.51,39.40
    .achievement 16576,9 >>Pick up the Dragon Glyph: Rusza'thar Reach above the tower
step
    #completewith next
    +From the Rusza'thar Reach: Try to stay as high as possible while gliding at full speed. You should be able recharge at least 2 vigor on the way. Use |T4640498:0|t[Skyward Ascend] as often as necessary to get to the top when you reach the mountain
    *From somewhere else: Fly to Maruukai, wait for 4 vigor charges and use |T4640498:0|t[Skyward Ascend] to reach the glyph
step
    #title Dragon Glyph: Ohn'ahran's Roost
    .line 2023,86.51,39.40,57.97,31.11
    .goto 2023,57.97,31.11
    .achievement 16576,1 >>Pick up the Dragon Glyph: Ohn'ahran's Roost at the top of the mountain above the statue
step
    #completewith next
    +From the Ohn'ahran's Roost: Try to stay as high as possible while gliding at full speed. You should be able recharge all your vigor on the way. Use |T4640498:0|t[Skyward Ascend] 2-3 times to get to the top
    *From somewhere else: Get to the bottom of the mountain, wait for your vigor charges and spam |T4640498:0|t[Skyward Ascend] until you're at the top
step
    #title Dragon Glyph: Nokhud Hold
    .line 2023,57.97,31.11,30.71,35.57
    .goto 2023,30.71,35.57
    .achievement 16576,2 >>Pick up the Dragon Glyph: Nokhud Hold at the top of the mountain
step
    #completewith next
    +From the Nokhud Hold: Try to stay as high as possible while gliding at full speed. You should be able recharge all your vigor on the way
    *From somewhere else: Fly to the Shady Sanctuary. Wait for your vigor charges and spam |T4640498:0|t[Skyward Ascend] until you're at the top.
step
    #title Dragon Glyph: Emerald Gardens
    .line 2023,30.71,35.57,30.12,61.35
    .goto 2023,30.12,61.35
    .achievement 16576,3 >>Pick up the Dragon Glyph: Emerald Gardens above the Shady Sanctuary
step
    #completewith next
    +From the Emerald Gardens: Use |T4640498:0|t[Skyward Ascend] as often as necessary
    *From somewhere else: Get to the bottom of the mountain, wait for your vigor charges and spam |T4640498:0|t[Skyward Ascend] until you reach the glyph
step
    #title Dragon Glyph: The Eternal Kurgans
    >>|cRXP_WARN_Spend all your glyphs|r.
    .line 2023,30.12,61.35,29.44,75.72
    .goto 2023,29.44,75.72
    .achievement 16576,4 >>Pick up the Dragon Glyph: The Eternal Kurgans in the air
step
    #completewith next
    +From the Eternal Kurgans: Wait until you have 3 vigar charges. Try to stay as high as possible while gliding at full speed. Use |T4640498:0|t[Skyward Ascend] only when you really need to
    *From somewhere else: Fly to Teerakai, wait for your vigor charges and spam |T4640498:0|t[Skyward Ascend] until you reach the glyph
step
    #title Dragon Glyph: Szar Skeleth
    .line 2023,29.44,75.72,44.61,64.57
    .goto 2023,44.61,64.57
    .achievement 16576,5 >>Pick up the Dragon Glyph: Szar Skeleth at the top of the tower
step
    #completewith next
    +From the Szar Skeleth: Wait for 3 vigor if you have less. Use |T4640498:0|t[Skyward Ascend] 2-3 times to reach the glyph
    *From somewhere else: Fly to Teerakai, wait for your vigor charges and spam |T4640498:0|t[Skyward Ascend] until you reach the glyph
step
    #title Dragon Glyph: Mirror of the Sky
    .line 2023,44.61,64.57,46.97,72.84
    .goto 2023,46.97,72.84
    .achievement 16576,6 >>Pick up the Dragon Glyph: Mirror of the Sky in the air above the mountain
step
    #completewith next
    +From the Mirror of the Sky: 2-3 uses of |T4640498:0|t[Skyward Ascend] should be enough to reach the glyph
    +From somewhere else: Fly to Ohn'iri Springs, wait for 2 vigor charges and spam |T4640498:0|t[Skyward Ascend] until you reach the glyph
step
    #title Dragon Glyph: Ohn'iri Springs
    .line 2023,46.97,72.84,57.08,80.47
    .goto 2023,57.08,80.47
    .achievement 16576,7 >>Pick up the Dragon Glyph: Ohn'iri Springs in the air above Ohn'iri Springs
step
    #completewith next
    +From the Ohn'iri Springs: Try to stay as high as possible while gliding at full speed. Use |T4640498:0|t[Skyward Ascends] 1-2 times to reach the glyph
    *From somewhere else: Get to the Windsong Rise area, wait for 2-3 vigor charges and spam |T4640498:0|t[Skyward Ascend] until you reach the glyph
step
    #title Dragon Glyph: Windsong Rise
    .line 2023,57.08,80.47,61.48,64.36
    .goto 2023,61.48,64.36
    .achievement 16576,10 >>Pick up the Dragon Glyph: Windsong Rise in the air
step
    #completewith next
    +From the Windsong Rise: Try to stay as high as possible while gliding at full speed. You should be able recharge most of your vigor on the way. 2-3 uses of |T4640498:0|t[Skyward Ascend] should be enough but you can use more if necessary
    *From somewhere else: Fly to the Cobalt Assembly, wait for 1-2 vigor charges and spam |T4640498:0|t[Skyward Ascend] until you reach the glyph
step
    #title Dragon Glyph: Dragonsprings Summit
    .line 2023,61.48,64.36,84.57,77.79
    .goto 2023,84.57,77.79
    .achievement 16576,8 >>Pick up the Dragon Glyph: Dragonsprings Summit in the air above the small sea
]])
--Azure Span
RXPGuides.RegisterGuide([[
#retail
#version 3
#group RestedXP Miscellaneous
#name a) Azure Span Glyphs
#displayname |cFF00CCFF3|r - Azure Span
#next a) Thaldraszus Glyphs
#chapter

step
    #title Dragon Glyph: Forkriver Crossing
    >>Use |T4640498:0|t[Skyward Ascend] once or twice
    .goto 2023,36.58,27.96
    .achievement 16577,11 >>Pick up the Dragon Glyph: Forkriver Crossing a few yards above the ground
step
    #completewith next
    +From the Forkriver Crossing: Try to use as little vigor charges as possible
    *From somewhere else: Fly to the Cobalt Assembly and use |T4640498:0|t[Skyward Ascend] to reach the glyph
step
    #title Dragon Glyph: The Fallen Course
    .line 2024,36.58,27.96,56.81,16.12
    .goto 2024,56.81,16.12
    .achievement 16577,12 >>Pick up the Dragon Glyph: The Fallen Course a few yards above the ground
step
    #completewith next
    +From The Fallen Course: Try to stay as high as possible while gliding at full speed. You should be able recharge 1-2 vigor on the way. Use |T4640498:0|t[Skyward Ascend] 2-3 times to stay high enough
    *From somewhere else: Get to the bottom of the mountain, wait for your vigor charges and spam |T4640498:0|t[Skyward Ascend] until you're at the top. It's possible that you have to recharge your vigor on the way up
step
    #title Dragon Glyph: Rhonin's Shield
    >>|cRXP_WARN_Spend all your glyphs|r.
    .line 2024,56.81,16.12,67.64,29.13
    .goto 2024,67.64,29.13
    .achievement 16577,9 >>Pick up the Dragon Glyph: Rhonin's Shield at the top of the tower
step
    .isQuestTurnedIn 70220
    #completewith next
    .goto 2024,71.97,35.37,15 >>Fly into the 'Winds of the Isle'
step
    #title Dragon Glyph: Vakthros Range
    >>Use |T4640498:0|t[Skyward Ascend] 2-3 times to reach the glyph
    .line 2024,67.64,29.13,72.62,39.78
    .goto 2024,72.62,39.78
    .achievement 16577,10 >>Pick up the Dragon Glyph: Vakthros Range above the frozen sea
step
    #completewith next
    +From the Vakthros Range: Try to fly at full speed by aiming down. You should be able recharge your vigor on the way
    *From somewhere else: Follow the way to the glyph from Rhonin's Shield or Camp Nowhere and use |T4640498:0|t[Skyward Ascend] to reach the glyph. You may have to recharge your vigor occasionally
step
    #title Dragon Glyph: Lost Ruins
    .line 2024,72.62,39.78,70.58,46.26
    .goto 2024,70.58,46.26
    .achievement 16577,4 >>Pick up the Dragon Glyph: Lost Ruins at the top of the tower
step
    #completewith next
    +From the Lost Ruins: Try to stay as high as possible while gliding at full speed. Use |T4640498:0|t[Skyward Ascend] only when you really need to
    *From somewhere else: Fly to Camp Nowhere and use |T4640498:0|t[Skyward Ascend] from the bottom of the tower to reach the glyph
step
    #title Dragon Glyph: Ruins of Karnthar
    .line 2024,70.58,46.26,68.64,60.26
    .goto 2024,68.64,60.26
    .achievement 16577,3 >>Pick up the Dragon Glyph: Ruins of Karnthar at the top of tower behind the broken wall
step
    #completewith next
    +From the Ruins of Karnthar: Try to fly at full speed by aiming down. You should be able recharge your vigor on the way
    *From somewhere else: Fly to Camp Nowhere, use |T4640498:0|t[Skyward Ascend] one time and fly down to the glyph
step
    #title Dragon Glyph: Imbu
    .line 2024,68.64,60.26,60.58,70.25
    .goto 2024,60.58,70.25
    .achievement 16577,7 >>Pick up the Dragon Glyph: Imbu in the air next to the waterfall. You have to aim quite a bit down
step
    #completewith next
    +From Imbu: Spam |T4640498:0|t[Skyward Ascend] to reach the glyph. Aim a little higher when using the abilitiy
    *From somewhere else: Fly to Camp Nowhere, follow the way to the waypoint and spam |T4640498:0|t[Skyward Ascend] to reach the glyph
step
    #title Dragon Glyph: Zelthrak Outpost
    .line 2024,60.58,70.25,52.95,49.09
    .goto 2024,52.95,49.09
    .achievement 16577,8 >>Pick up the Dragon Glyph: Zelthrak Outpost halfway up the big tree
step
    #completewith TheAzureSpanDragonGlyphAzureArchives
    +From anywhere: Fly to the Azure Archives and follow the next steps
step
    .isQuestTurnedIn 65852
    #completewith TheAzureSpanDragonGlyphAzureArchives
    .goto 2024,39.57,60.25,5 >>Use the ExtraActionButton
step
    .isQuestAvailable 65852
    #completewith TheAzureSpanDragonGlyphAzureArchives
    +|cRXP_WARN_Wait at the bottom of the tower until your vigor has recharged|r.
    *Use |T4640498:0|t[Skyward Ascend] four times. You can let your vigor charges recharge on a lower plataeu if necessary
    .goto 2024,40.63,59.45,30,0
step
    #label TheAzureSpanDragonGlyphAzureArchives
    #title Dragon Glyph: Azure Archives
    >>When you're at the top of the tower you can just use |T4640498:0|t[Skyward Ascend] once and fly through the glyph
    .line 2024,52.95,49.09,40.63,59.45,39.30,63.12
    .goto 2024,39.30,63.12
    .achievement 16577,2 >>Pick up the Dragon Glyph: Azure Archives in the air above the arcane tower
step
    #completewith next
    +From the Azure Archives: Try to stay as high as possible while gliding at full speed. You should be able recharge most of your vigor. Use |T4640498:0|t[Skyward Ascend] only once if possible
    *From somewhere else: Fly to the Three-Falls Lookout and then glide down to the glyph
step
    #title Dragon Glyph: Brackenhide Hollow
    .line 2024,39.30,63.12,10.40,35.89
    .goto 2024,10.40,35.89
    .achievement 16577,5 >>Pick up the Dragon Glyph: Brackenhide Hollow in the air
step
    #completewith next
    +From Brackenhide Hollow: Try to stay as high as possible while gliding at full speed. You should be able recharge most of your vigor. Use |T4640498:0|t[Skyward Ascend] 3-5 times. Aim a little higher when using the abilitiy
    *From somewhere else: Fly to the Three-Falls Lookout and then use |T4640498:0|t[Skyward Ascend] to reach the glyph
step
    #title Dragon Glyph: Creektooth Den
    .line 2024,10.40,35.89,26.74,31.67
    .goto 2024,26.74,31.67
    .achievement 16577,6 >>Pick up the Dragon Glyph: Creektooth Den at the top of the tree
step
    #completewith next
    +From the Creektooth Den: Wait at the base of the tower until all vigar charges are recharged. Use |T4640498:0|t[Skyward Ascend] as often as possible but always wait 2 seconds between each cast.
    *From somewhere else: Fly to the Cobalt Assembly and use all your vigor charges to reach the glyph
step
    #title Dragon Glyph: Cobalt Assembly
    >>|cRXP_WARN_Spend all your glyphs|r.
    .line 2024,26.74,31.67,45.83,25.73
    .goto 2024,45.83,25.73
    .achievement 16577,1 >>Pick up the Dragon Glyph: Cobalt Assembly above the tower
]])
--Thaldraszus
RXPGuides.RegisterGuide([[
#retail
#version 3
#group RestedXP Miscellaneous
#name a) Thaldraszus Glyphs
#displayname |cFF00CCFF4|r - Thaldraszus
#next a) Forbidden Reach Glyphs
#chapter

step
    #title Dragon Glyph: South Hold Gate
    >>Use|T4640498:0|t[Skyward Ascend] 2-3 times to reach the glyph
    .goto 2025,35.5,85.5
    .achievement 16578,3 >>Pick up the Dragon Glyph: South Hold Gate at the top of the tower
step
    #completewith next
    +From anywhere: Use|T4640498:0|t[Skyward Ascend] as much as you can to get ontop of the mountain. You probably have to stop at some points to recharge you vigor
step
    #title Dragon Glyph: Stormshroud Peak
    .line 2025,35.5,85.5,46.0,73.0
    .goto 2025,46.0,73.0
    .achievement 16578,2 >>Pick up the Dragon Glyph: Stormshroud Peak at the top of the mountain
step
    #completewith next
    +From the Stormshroud Peak: It should be enough to just glide down
    *From somewhere else: Teleport to Alexstrasza in Valdrakken and fly up
step
    #title Dragon Glyph: Valdrakken
    --x .line 2025,46.0,73.0, 2112 58.7,38.1
    .goto 2112,58.7,38.1
    .achievement 16578,4 >>Pick up the Dragon Glyph: Valdrakken at the top of the tower
step
    #completewith next
    +From anywhere: It should be enough to just glide down
step
    #title Dragon Glyph: Gelikyr Overlook
    --x line from map to map
    .goto 2025,52.7,67.4
    .achievement 16578,11 >>Pick up the Dragon Glyph: Gelikyr Overlook above the lower bridge
step
    #completewith next
    +From anywhere: Use|T4640498:0|t[Skyward Ascend] 2-3 times to reach the glyph
step
    #title Dragon Glyph: Passage of Time
    .line 2025,52.7,67.4,55.6,72.1
    .goto 2025,55.6,72.1
    .achievement 16578,12 >>Pick up the Dragon Glyph: Passage of Time under the passage arch
step
    #completewith next
    .goto 2025,57.46,66.55,50,0
    +From anywhere: Fly through the tornado for an updraft. Use|T4640498:0|t[Skyward Ascend] four to five times to reach the glyph
step
    #title Dragon Glyph: Tyrhold
    .line 2025,55.6,72.1,61.5,56.6
    .goto 2025,61.5,56.6
    .achievement 16578,6 >>Pick up the Dragon Glyph: Tyrhold on the flying rock
step
    #completewith next
    +From Tyrhold: It should be enough to just glide down
    *From somewhere else: The easiest way is to start in Valdrakken from the top
step
    #title Dragon Glyph: Algeth'era
    .line 2025,61.5,56.6,49.8,40.2
    .goto 2025,49.8,40.2
    .achievement 16578,5 >>Pick up the Dragon Glyph: Algeth'era on top of the tower
step
    #completewith next
    +From anywhere: Use|T4640498:0|t[Skyward Ascend] four to five times. You may have to let your vigor charges recharge
step
    #title Dragon Glyph: Algeth'ar Academy
    .line 2025,49.8,40.2,62.4,40.4
    .goto 2025,62.4,40.4
    .achievement 16578,7 >>Pick up the Dragon Glyph: Algeth'era Academy on top of the tower in the dome
step
    #completewith next
    +From the Algeth'ar Academy: It should be enough to just glide down
    *From somewhere else: The easiest way is to start in Valdrakken from the top and to glide down
step
    #title Dragon Glyph: Veiled Ossuary
    .line 2025,62.4,40.4,67.0,11.7
    .goto 2025,67.0,11.7
    .achievement 16578,8 >>Pick up the Dragon Glyph: Veiled Ossuary at the top of the tower
step
    #completewith next
    +Best Option: If you have your hearthstone in Valdrakken then use it, go to Alexstrasza and fly there by using |T4640498:0|t[Skyward Ascend] only 3-4 times
step
    #title Dragon Glyph: Vault of the Incarnates
    >>Be careful with how you use your Vigor here you'll need a lot, alternatively fly an indirect path.
    >>Glide to recharge Vigor and Use |T4640498:0|t[Skyward Ascend] frequently to gain height
    .line 2025,67.0,11.7,72.4,51.7
    .goto 2025,72.4,51.7
    .achievement 16578,9 >>Pick up the Dragon Glyph: Vault of the Incarnates in the air to the left of the raid
step
    #completewith next
    +From anywhere: Glide to recharge Vigor and use |T4640498:0|t[Skyward Ascend] as much as you can, you might have to take breaks on mountain cliffs
step
    #title Dragon Glyph: Thaldraszus Apex
    .line 2025,72.4,51.7,72.9,69.2
    .goto 2025,72.9,69.2
    .achievement 16578,10 >>Pick up the Dragon Glyph: Thaldraszus Apex on top of the tower
step
    #completewith next
    +From the Thaldraszus Apex: It should be enough to just glide down. you can use Surge Forward to speed it up.
    *From somewhere else: Fly to the Temporal Conflux and use |T4640498:0|t[Skyward Ascend] to reach the glyph
step
    #title Dragon Glyph: Temporal Conflux
    .line 2025,72.9,69.2,66.0,82.3
    .goto 2025,66.0,82.3
    .achievement 16578,1 >>Pick up the Dragon Glyph: Temporal Conflux on top of the tower
]])
--Forbidden Reach
RXPGuides.RegisterGuide([[
#retail
#version 3
#group RestedXP Miscellaneous
#name a) Forbidden Reach Glyphs
#displayname |cFF00CCFF5|r - Forbidden Reach
#next a) Zaralek Cavern Glyphs
#chapter

step
    #completewith next
    .hs >> Use your Hearthstone IF it's in Valdrakken
step
    >>This Quest should pop up in your Questlog when you enter Valdrakken if it isn't already in your Questlog or you have completed it
    .accept 74381 >>Accept Hidden Legacies
    .goto 2112,60.80,39.73
step
    #completewith next
    .cast 395219 >> Teleport to Seat of the Aspects
    .goto 2112,61.93,32.2
    >>|cRXP_WARN_Alternatively you can just fly to the top of the Valdrakken Tower and skip this step|r.
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurazidaia|r.
    >>|cRXP_WARN_You can skip the upcoming cutscene with ESC|r.
    .isOnQuest 74381
    .goto 2112,61.03,26.07
    .skipgossip 201398,1
    .complete 74381,1 --1/1 Hear Kurazidaia's report
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurazidaia|r.
    .goto 2112,61.03,26.07
    .turnin 74381 >>Turn in Hidden Legacies
    .accept 73076 >>Accept Return to the Reach
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flightmaster Aluri|r.
    .goto 2112,44.05,67.90
    .skipgossip 2
    .complete 73076,1 --1/1 Speak with Flightmaster Aluri to fly to the Forbidden Reach (Optional)
    .timer 158, Forbidden Reach Flight Time
step
    #completewith next
    +Use |T4640498:0|t[Skyward Ascend] to ascend and |T2103880:0|tSurge Forward to speed up
    *Be sure not to use up all your Vigor charges at once. If you need to recharge Vigor try gliding instead.
step
    #title Dragon Glyph: Winglord's Perch
    >>|cRXP_WARN_Spend all your glyphs|r.
    .line 2151,35.86,59.11,18.3,13.2
    .goto 2151,18.3,13.2
    .achievement 17411,1 >> Pick up the Dragon Glyph: Winglord's Perch hidden within a small broken building on an island
step
    #completewith next
    +Use |T4640498:0|t[Skyward Ascend] to ascend and |T2103880:0|tSurge Forward to speed up
    *Be sure not to use up all your Vigor charges at once. If you need to recharge Vigor try gliding instead.
step
    #title Dragon Glyph: Caldera of the Menders
    >>|cRXP_WARN_Spend all your glyphs|r.
    .line 2151,18.3,13.2,37.73,30.58
    .goto 2151,37.73,30.58
    .achievement 17411,8 >> Pick up the Dragon Glyph: Caldera of the Menders hidden within a broken building
step
    #completewith next
    +To reach the tower in the sky, make frequent use of |T4640498:0|t[Skyward Ascend]
    *To recharge Vigor, glide down to the nearest ground.
step
    #title Dragon Glyph: Froststone Peak
    .line 2151,37.73,30.58,62.51,32.35
    .goto 2151,62.51,32.35
    .achievement 17411,3 >> Pick up the Dragon Glyph: Froststone Peak hidden underneath the ceiling of a tower in the sky
step
    #completewith next
    +Use |T4640498:0|t[Skyward Ascend] to ascend and |T2103880:0|tSurge Forward to speed up
    *Be sure not to use up all your Vigor charges at once. If you need to recharge Vigor try gliding instead.
step
    #title Dragon Glyph: Dragonskull Island
    .line 2151,62.51,32.35,79.45,32.63
    .goto 2151,79.45,32.63
    .achievement 17411,4 >> Pick up the Dragon Glyph: Dragonskull Island hidden in between 3 trees
step
    #completewith next
    +To reach the mountain, make frequent use of |T4640498:0|t[Skyward Ascend]
    *To recharge Vigor, glide down to the nearest ground.
step
    #title Dragon Glyph: Stormsunder Mountain
    .line 2151,79.45,32.63,77.29,55.09
    .goto 2151,77.29,55.09
    .achievement 17411,5 >> Pick up the Dragon Glyph: Stormsunder Mountain hidden on top of a mountain
step
    #completewith next
    +Use |T4640498:0|t[Skyward Ascend] to ascend and |T2103880:0|tSurge Forward to speed up
    *Be sure not to use up all your Vigor charges at once. If you need to recharge Vigor try gliding instead.
step
    #title Dragon Glyph: Talonlord's Perch
    .line 2151,77.29,55.09,59.07,65.05
    .goto 2151,59.07,65.05
    .achievement 17411,7 >> Pick up the Dragon Glyph: Talonlord's Perch hidden inside the top of the tower
step
    #completewith next
    +To reach the snowy mountain, make frequent use of |T4640498:0|t[Skyward Ascend]
    *To recharge Vigor, glide down to the nearest ground.
step
    #title Dragon Glyph: The Frosted Spine
    .line 2151,59.07,65.05,48.53,69.0
    .goto 2151,48.53,69.0
    .achievement 17411,6 >> Pick up the Dragon Glyph: The Frosted Spine high up on a snowy mountain
step
    #completewith next
    +Use |T4640498:0|t[Skyward Ascend] to ascend and |T2103880:0|tSurge Forward to speed up
    *Be sure not to use up all your Vigor charges at once. If you need to recharge Vigor try gliding instead.
step
    #title Dragon Glyph: Talon's Watch
    .line 2151,48.53,69.0,20.6,91.4
    .goto 2151,20.6,91.4
    .achievement 17411,2 >> Pick up the Dragon Glyph: Talon's Watch hidden within the bottom of the tower on an island
]])
--Zaralek Cavern
RXPGuides.RegisterGuide([[
#retail
#version 3
#group RestedXP Miscellaneous
#name a) Zaralek Cavern Glyphs
#displayname |cFF00CCFF6|r - Zaralek Cavern
#next a) Emerald Dream Dragon Glyphs
#chapter

step
    .zoneskip 2200
    +This guide requires you to have the |cRXP_WARN_Zaralek Caverns|r unlocked.
step
    .zone 2200 >>Enter Zaralek Cavern |cRXP_WARN_through the Thaldraszus entrance|r.
step
    #completewith next
    +Use |T4640498:0|t[Skyward Ascend] to ascend and |T2103880:0|t[Surge Forward] to speed up.
    *|cRXP_WARN_Be sure not to use up all of your Vigor charges at once. If you need to recharge Vigor try gliding instead|r.
step
    #title Dragon Glyph: The Throughway
    .line 2200,73.39,50.08,72.0,48.3
    .goto 2200,72.0,48.3
    .achievement 19306,6 >> Pick up the Dragon Glyph: The Throughway beneath the cave ceiling
step
    #completewith next
    +Use |T4640498:0|t[Skyward Ascend] to ascend and |T2103880:0|t[Surge Forward] to speed up .
    *|cRXP_WARN_Be sure not to use up all of your Vigor charges at once. If you need to recharge Vigor try gliding instead|r.
step
    #title Dragon Glyph: Loamm
    .line 2200,72.0,48.3,54.7,54.8
    .goto 2200,54.7,54.8
    .achievement 19306,3 >> Pick up the Dragon Glyph: Loamm beneath the cave ceiling above Loamm
step
    #completewith next
    +Use |T4640498:0|t[Skyward Ascend] to ascend and |T2103880:0|t[Surge Forward] to speed up.
    *|cRXP_WARN_Be sure not to use up all of your Vigor charges at once. If you need to recharge Vigor try gliding instead|r.
step
    #title Dragon Glyph: Nal ks'kol
    .line 2200,54.7,54.8,62.7,70.3
    .goto 2200,62.7,70.3
    .achievement 19306,2 >> Pick up the Dragon Glyph: Nal ks'kol |cRXP_WARN_beneath the cave ceiling|r.
step
    #completewith next
    +Use |T4640498:0|t[Skyward Ascend] to ascend and |T2103880:0|t[Surge Forward] to speed up.
    *|cRXP_WARN_Be sure not to use up all of your Vigor charges at once. If you need to recharge Vigor try gliding instead|r.
step
    #title Dragon Glyph: Glimmerogg
    .line 2200,62.7,70.3,41.6,80.3
    .goto 2200,41.6,80.3
    .achievement 19306,1 >> Pick up the Dragon Glyph: Glimmerogg |cRXP_WARN_beneath the cave ceiling next to a wall|r.
step
    #completewith next
    +Use |T4640498:0|t[Skyward Ascend] to ascend and |T2103880:0|t[Surge Forward] to speed up.
    *|cRXP_WARN_Be sure not to use up all of your Vigor charges at once. If you need to recharge Vigor try gliding instead|r.
step
    #title Dragon Glyph: Zaqali Caldera
    >>|cRXP_WARN_Pause before reaching 10 stacks of |T3163628:0|tDragonslayer's Sight|r.
    .line 2200,41.6,80.3,30.4,45.2
    .goto 2200,30.4,45.2
    .achievement 19306,4 >> Pick up the Dragon Glyph: Zaqali Caldera |cRXP_WARN_above a ledge|r.
step
    #completewith next
    +Use |T4640498:0|t[Skyward Ascend] to ascend and |T2103880:0|tSurge Forward to speed up.
    *|cRXP_WARN_Be sure not to use up all of your Vigor charges at once. If you need to recharge Vigor try gliding instead|r.
step
    #title Dragon Glyph: Acidbite Ravine
    .line 2200,30.4,45.2,46.5,36.2
    .goto 2200,46.5,36.2
    .achievement 19306,7 >> Pick up the Dragon Glyph: Acidbite Ravine |cRXP_WARN_beneath the cave ceiling|r.
step
    #completewith next
    +Use |T4640498:0|t[Skyward Ascend] to ascend and |T2103880:0|t[Surge Forward] to speed up.
    *|cRXP_WARN_Be sure not to use up all of your Vigor charges at once. If you need to recharge Vigor try gliding instead|r.
step
    #title Dragon Glyph: Slitherdrake Roost
    .line 2200,46.5,36.2,55.2,27.8
    .goto 2200,55.2,27.8
    .achievement 19306,5 >> Pick up the Dragon Glyph: Slitherdrake Roost |cRXP_WARN_beneath the cave ceiling hidden between the earthen icicles|r.
step
    #completewith next
    +Use |T4640498:0|t[Skyward Ascend] to ascend and |T2103880:0|t[Surge Forward] to speed up.
    *|cRXP_WARN_Be sure not to use up all of your Vigor charges at once. If you need to recharge Vigor try gliding instead|r.
step
    #title Dragon Glyph: Aberrus Approach
    .line 2200,55.2,27.8,48.0,4.4
    .goto 2200,48.0,4.4
    .achievement 19306,8 >> Pick up the Dragon Glyph: Aberrus Approach behind the raid instance |cRXP_WARN_at the top of the lava waterfall|r.
]])
--Emerald Dream
RXPGuides.RegisterGuide([[
#retail
#version 2
#group RestedXP Miscellaneous
#name a) Emerald Dream Dragon Glyphs
#displayname |cFF00CCFF7|r - Emerald Dream
#next a) Isle of the Dorn Glyphs
#chapter

step
    .zoneskip 2200
    +This guide requires you to have the |cRXP_WARN_Emerald Dream|r unlocked.
step
    .goto 2112,62.70,57.33,-1
    .goto 2023,18.40,52.37,-1
    .zone 2200 >>Enter Emerald Dream |cRXP_WARN_through the Ohn'ahnran Planes portal or the portal in Valdrakken above the bank|r.
step
    #completewith DragonGlpyhsEmeraldDream
    +Use |T4640498:0|t[Skyward Ascend] to ascend and |T2103880:0|t[Surge Forward] to speed up.
    *|cRXP_WARN_Be sure not to use up all of your Vigor charges at once. If you need to recharge Vigor try gliding instead|r.
step
    #title Dragon Glyph: Eye of Ysera
    .goto 2200,60.38,30.14
    .achievement 19306,1 >> Pick up the Dragon Glyph: Eye of Ysera |cRXP_WARN_between the trees on the floating rock|r.
step
    #title Dragon Glyph: Cinder Summit
    .line 2200,60.38,30.14,29.81,21.24
    .goto 2200,29.81,21.24
    .achievement 19306,4 >> Pick up the Dragon Glyph: Cinder Summit
step
    #title Dragon Glyph: Furnace Coil
    .line 2200,29.81,21.24,21.22,26.74
    .goto 2200,21.22,26.74
    .achievement 19306,2 >> Pick up the Dragon Glyph: Furnace Coil |cRXP_WARN_at the top of the mountain|r.
step
    #title Dragon Glyph: Smoldering Copse
    .line 2200,21.22,26.74,33.81,45.56
    .goto 2200,33.81,45.56
    .achievement 19306,3 >> Pick up the Dragon Glyph: Smoldering Copse |cRXP_WARN_at the top of the tree branch|r.
step
    #title Dragon Glyph: Dreamsurge Basin
    .line 2200,33.81,45.56,45.51,45.82
    .goto 2200,45.51,45.82
    .achievement 19306,5 >> Pick up the Dragon Glyph: Dreamsurge Basin |cRXP_WARN_in the treetop|r.
step
    #title Dragon Glyph: Amirdrassil
    .line 2200,45.51,45.82,49.96,64.30
    .goto 2200,49.96,64.30
    .achievement 19306,6 >> Pick up the Dragon Glyph: Amirdrassil |cRXP_WARN_in the treetop|r.
step
    #title Dragon Glyph: Wakeful Vista
    .line 2200,49.96,64.30,61.68,75.40
    .goto 2200,61.68,75.40
    .achievement 19306,8 >> Pick up the Dragon Glyph: Wakeful Vista |cRXP_WARN_in the treetop|r.
step
    #label DragonGlpyhsEmeraldDream
    #title Dragon Glyph: Whorlwing Basin
    .line 2200,61.68,75.40,31.84,80.60
    .goto 2200,31.84,80.60
    .achievement 19306,7 >> Pick up the Dragon Glyph: Whorlwing Basin
]])

-- =============================
-- ==========   TWW ============
-- =============================

--Nesting
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Miscellaneous
#subgroup Skyriding Glyphs
#name a) The War Within Glyphs
#displayname The War Within Glyphs
#chapters a) Isle of the Dorn Glyphs;a) The Ringing Deeps Glyphs;a) Hallowfall Glyphs;a) Azj-Kahet Glyphs;a) K'aresh Glyphs
]])

--Isle of the Dorn
RXPGuides.RegisterGuide([[
#version 1
#retail
#group RestedXP Miscellaneous
#name a) Isle of the Dorn Glyphs
#displayname |cFF1EFF001|r - Isle of the Dorn
#next a) The Ringing Deeps Glyphs
#chapter

step
    #completewith
    +Welcome to the Skyriding Glyph Guide
    *This will guide you through all the Skyriding Glyphs.
step
    #title Skyriding Glyph: Storm's Watch
    .goto 2248,37.88,40.96
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40166,3 >>Pick up the Skyriding Glyph: Storm's Watch
step
    #title Skyriding: Thul Medran
    .goto 2248,47.78,26.71
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40166,6 >>Pick up the Skyriding: Thul Medran
step
    #title Skyriding Glyph: Thunderhead Peak
    .goto 2248,56.21,17.86
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40166,7 >>Pick up the Skyriding Glyph: Thunderhead Peak
step
    #title Skyriding Glyph: The Three Shields
    .goto 2248,75.75,22.23
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40166,1 >>Pick up the Skyriding Glyph: The Three Shields
step
    #title Skyriding Glyph: Cinderbrew Meadery
    .goto 2248,78.22,42.76
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40166,8 >>Pick up the Skyriding Glyph: Cinderbrew Meadery
step
    #title Skyriding Glyph: Ironwold
    .goto 2248,71.91,47.22
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40166,10 >>Pick up the Skyriding Glyph: Ironwold
step
    #title Skyriding Glyph: Mourning Rise
    .goto 2248,62.12,44.95
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40166,9 >>Pick up the Skyriding Glyph: Mourning Rise
step
    #title Skyriding Glyph: Sunken Shield
    .goto 2248,68.24,71.8
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40166,5 >>Pick up the Skyriding Glyph: Sunken Shield
step
    #title Skyriding Glyph: Dhar Durgaz
    .goto 2248,44.47,79.75
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40166,4 >>Pick up the Skyriding Glyph: Dhar Durgaz
step
    #title Skyriding Glyph: Dhar Oztan
    .goto 2248,23.15,58.56
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40166,2 >>Pick up the Skyriding Glyph: Dhar Oztan
]])
--The Ringing Deeps
RXPGuides.RegisterGuide([[
#version 1
#retail
#group RestedXP Miscellaneous
#name a) The Ringing Deeps Glyphs
#displayname |cFF1EFF002|r - The Ringing Deeps
#next a) Hallowfall Glyphs
#chapter

step
    #title Skyriding: The Stonevault Exterior
    .goto 2214,42.72,10.06
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40703,2 >>Pick up the Skyriding: The Stonevault Exterior
step
    #title Skyriding Glyph: Gundargaz
    .goto 2214,44.86,31.61
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40703,1 >>Pick up the Skyriding Glyph: Gundargaz
step
    #title Skyriding Glyph: Lost Mines
    .goto 2214,53.10,31.54
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40703,3 >>Pick up the Skyriding Glyph: Lost Mines
step
    #title Skyriding Glyph: Chittering Den
    .goto 2214,65.30,34.52
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40703,4 >>Pick up the Skyriding Glyph: Chittering Den
step
    #title Skyriding Glyph: The Rumbling Wastes
    .goto 2214,52.06,56.21
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40703,5 >>Pick up the Skyriding Glyph: The Rumbling Wastes
step
    .goto 2214,58.77,66.06
    #title Skyriding Glyph: Taelloch Mine
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40703,8 >>Pick up the Skyriding Glyph: Taelloch Mine
step
    .goto 2214,59.73,94.94
    #title Skyriding Glyph: Abyssal Excavation
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40703,7 >>Pick up the Skyriding Glyph: Abyssal Excavation
step
    #title Skyriding Glyph: The Living Grotto
    .goto 2214,45.10,66.16
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40703,6 >>Pick up the Skyriding Glyph: The Living Grotto
step
    #title Skyriding Glyph: The Waterworks
    .goto 2214,42.30,51.67
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40703,9 >>Pick up the Skyriding Glyph: The Waterworks
]])
--Hallowfall
RXPGuides.RegisterGuide([[
#version 1
#retail
#group RestedXP Miscellaneous
#name a) Hallowfall Glyphs
#displayname |cFF1EFF003|r - Hallowfall
#next a) Azj-Kahet Glyphs
#chapter

step
    #title Skyriding: The Fangs
    .goto 2215,62.86,51.79
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40704,1 >>Pick up the Skyriding: The Fangs
step
    #title Skyriding Glyph: Sina's Yearning
    .goto 2215,57.21,32.6
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40704,2 >>Pick up the Skyriding Glyph: Sina's Yearning
step
    #title Skyriding Glyph: Sanguine Grasps
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .goto 2215,63.69,65.35
    .achievement 40704,3 >>Pick up the Skyriding Glyph: Sanguine Grasps
step
    #title Skyriding Glyph: Dunelle's Kindness
    .goto 2215,69.95,44.23
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40704,4 >>Pick up the Skyriding Glyph: Dunelle's Kindness
step
    #title Skyriding Glyph: Bleak Sand
    .goto 2215,62.74,7.21
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40704,5 >>Pick up the Skyriding Glyph: Bleak Sand
step
    #title Skyriding Glyph: Mereldar
    .goto 2215,43.33,52.77
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40704,6 >>Pick up the Skyriding Glyph: Mereldar
step
    #title Skyriding Glyph: Priory of the Sacred Flame
    .goto 2215,35.43,33.85
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40704,7 >>Pick up the Skyriding Glyph: Priory of the Sacred Flame
step
    #title Skyriding Glyph: Fortune's Fall
    .goto 2215,30.77,51.58
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40704,8 >>Pick up the Skyriding Glyph: Fortune's Fall
step
    #title Skyriding Glyph: Velhan's Claim
    .goto 2215,45.77,12.34
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40704,9 >>Pick up the Skyriding Glyph: Velhan's Claim
step
    #title Skyriding Glyph: Tenir's Ascent
    .goto 2215,57.64,64.67
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40704,10 >>Pick up the Skyriding Glyph: Tenir's Ascent
]])
--Azj-Kahet
RXPGuides.RegisterGuide([[
#version 1
#retail
#group RestedXP Miscellaneous
#displayname |cFF1EFF004|r - Azj-Kahet
#name a) Azj-Kahet Glyphs
#next a) K'aresh Glyphs
#chapter

step
    #title Skyriding: Trickling Abyss
    .goto 2255,70.54,25.16
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40705,10 >>Pick up the Skyriding: Trickling Abyss
step
    #title Skyriding Glyph: Arathi's End
    .goto 2255,63.45,13.99
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40705,1 >>Pick up the Skyriding Glyph: Arathi's End
step
    #title Skyriding Glyph: Siegehold
    .goto 2255,46.69,21.27
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40705,2 >>Pick up the Skyriding Glyph: Siegehold
step
    #title Skyriding Glyph: Ruptured Lake
    .goto 2255,25.18,40.64
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40705,3 >>Pick up the Skyriding Glyph: Ruptured Lake
step
    #title Skyriding Glyph: Eye of Ansurek
    .goto 2255,42.94,57.14
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40705,4 >>Pick up the Skyriding Glyph: Eye of Ansurek
step
    #title Skyriding Glyph: Old Sacrificial Pit
    .goto 2213,13.14,33.69
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40705,5 >>Pick up the Skyriding Glyph: Old Sacrificial Pit
step
    #title Skyriding Glyph: Deepwalker Pass
    .goto 2255,58.58,89.79
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40705,6 >>Pick up the Skyriding Glyph: Deepwalker Pass
step
    #title Skyriding Glyph: The Maddening Deep
    .goto 2255,66.33,84.92
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40705,7 >>Pick up the Skyriding Glyph: The Maddening Deep
step
    #title Skyriding Glyph: Rak-Ush
    .goto 2255,73.19,84.13
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40705,8 >>Pick up the Skyriding Glyph: Rak-Ush
step
    #title Skyriding Glyph: Untamed Valley
    .goto 2255,65.46,51.78
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40705,11 >>Pick up the Skyriding Glyph: Untamed Valley
step
    #title Skyriding Glyph: Silken Ward
    .goto 2255,57.66,57.38
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 40705,9 >>Pick up the Skyriding Glyph: Silken Ward
]])
--K'aresh Glyph Hunter
RXPGuides.RegisterGuide([[
#version 1
#retail
#group RestedXP Miscellaneous
#displayname |cFF1EFF005|r - K'aresh
#name a) K'aresh Glyphs
#next a) Waking Shores Glyphs
#chapter

step
    #title Skyriding: Tazavesh
    .goto 2472,55.12,67.55
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 42727,7 >>Pick up the Skyriding: Tazavesh
step
    #title Skyriding Glyph: Eco-Dome: Primus
    .goto 2371,46.38,58.38
    >>Use |T4640490:0|t[Surge Forward] for a speed boost, |T4640498:0|t[Skyward Ascent]
    .achievement 42727,2 >>Pick up the Skyriding Glyph: Eco-Dome: Primus
step
    #title Skyriding Glyph: Serrated Peaks
    .goto 2371,54.67,53.09
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 42727,5 >>Pick up the Skyriding Glyph: Serrated Peaks
step
    #title Skyriding Glyph: Castigaar
    .goto 2371,61,38.7
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 42727,1 >>Pick up the Skyriding Glyph: Castigaar
step
    #title Skyriding Glyph: North Sufaad
    .goto 2371,76.47,46.32
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 42727,4 >>Pick up the Skyriding Glyph: North Sufaad
step
    #title |cFFFCDC00It sits at the highest part of the dome|r
    .goto 2371,74.05,32.52
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 42727,8 >>Pick up the Skyriding Glyph: The Oasis
step
    #title |cFFFCDC00Above a Mountain Formation|r
    .goto 2371,54.71,23.48
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 42727,3 >>Pick up the Skyriding Glyph: The Fracture of Laacuna
step
    #title |cFFFCDC00ontop of the reactor|r
    .goto 2371,43.9,17.04
    >>Use |T4640490:0|t[Surge Forward] for a speed boost
    *Use |T4640498:0|t[Skyward Ascent] for an uplift.
    *Use |T4640489:0|t[Second Wind] to renew vigor charges.
    .achievement 42727,6 >>Pick up the Skyriding Glyph: Shadow Point
]])
