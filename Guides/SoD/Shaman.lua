if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Molten Blast - 8 (Mulgore)
#title Molten Blast
#next Lava Lash - 10 (Mulgore)


step
    +|cRXP_WARN_You should be at least level 8 in order to acquire|r |T133816:0|t[Engrave Gloves - Molten Blast] |cRXP_WARN_in Mulgore alone|r
    >>|cRXP_WARN_You MUST be at least level 3 to equip the|r |T134918:0|t|cRXP_LOOT_[Sulfurous Icon]|r
    >>|cRXP_WARN_You need to level up more before even attempting to acquire|r |T133816:0|t[Engrave Gloves - Molten Blast]
    .train 425344,1
    .xp >3,1
step
    +|cRXP_WARN_You should be at least level 8 in order to acquire|r |T133816:0|t[Engrave Gloves - Molten Blast] |cRXP_WARN_in Mulgore alone|r
    .train 425344,1
    .xp <3,1
    .xp >8,1
step
    #loop
    .goto Mulgore,34.33,47.54,40,0
    .goto Mulgore,33.62,49.61,40,0
    .goto Mulgore,32.58,48.96,40,0
    .goto Mulgore,31.88,50.17,40,0
    .goto Mulgore,31.14,50.08,40,0
    .goto Mulgore,30.98,48.24,40,0
    .goto Mulgore,31.59,48.19,40,0
    .goto Mulgore,33.10,47.69,40,0
    >>Kill |cRXP_ENEMY_Bael'dun Diggers|r and |cRXP_ENEMY_Bael'dun Appraisers|r. Loot them for the |cRXP_LOOT_Artifact Storage Key|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Bael'dun Appraisers|r cast|r |T135929:0|t[Lesser Heal] |cRXP_WARN_(Ranged Cast: Heals themselves or a nearby mob below 50% health for about 75 health)|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
    .xp <3,1
--XX WIP to here
step
    .goto Mulgore,31.56,49.54
    >>Open the |cRXP_PICK_Artifact Storage|r chest. Loot it for the |T134918:0|t|cRXP_LOOT_[Sulfurous Icon]|r
    .collect 206388,1 --Sulfurous Icon (1)
    .train 425344,1
    .xp <3,1
step
    .equip 18,206388 >> |cRXP_WARN_Equip the|r |T134918:0|t|cRXP_LOOT_[Sulfurous Icon]|r
    .use 206388
    .itemcount 206388,1 --Sulfurous Icon (1)
    .train 425344,1
    .xp <3,1
step
    #loop
    .goto Mulgore,34.33,47.54,40,0
    .goto Mulgore,33.62,49.61,40,0
    .goto Mulgore,32.58,48.96,40,0
    .goto Mulgore,31.88,50.17,40,0
    .goto Mulgore,31.14,50.08,40,0
    .goto Mulgore,30.98,48.24,40,0
    .goto Mulgore,31.59,48.19,40,0
    .goto Mulgore,33.10,47.69,40,0
    .aura 408828 >>|cRXP_WARN_Kill enemies having dealt damage using|r |T136026:0|t[Earth Shock] |cRXP_WARN_on them at least once. Do this 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    >>|cRXP_WARN_NOTE: You must do this on enemies that can provide experience to gain stacks|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
    .xp <3,1
    .xp >13,1
step
    #completewith Barrens
    .zone The Barrens >> Travel to The Barrens
    .train 425344,1
    .xp <13,1
step
    #loop
    .goto The Barrens,53.94,25.86,50,0
    .goto The Barrens,54.17,25.06,50,0
    .goto The Barrens,54.86,25.43,50,0
    .goto The Barrens,55.62,25.71,50,0
    .goto The Barrens,55.98,26.36,50,0
    .goto The Barrens,55.71,27.21,50,0
    .goto The Barrens,55.44,27.35,50,0
    .goto The Barrens,54.99,26.79,50,0
    .aura 408828 >>|cRXP_WARN_Kill enemies having dealt damage using|r |T136026:0|t[Earth Shock] |cRXP_WARN_on them at least once. Do this 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    >>|cRXP_WARN_NOTE: You must do this on enemies that can provide experience to gain stacks|r
    .mob Razormane Thornweaver
    .mob Razormane Water Seeker
    .mob Razormane Hunter
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <13,1
    .xp >16,1
step
    #loop
    .goto The Barrens,55.97,16.17,50,0
    .goto The Barrens,55.43,16.15,50,0
    .goto The Barrens,54.10,15.51,50,0
    .goto The Barrens,53.10,15.25,50,0
    .goto The Barrens,53.73,13.77,50,0
    .goto The Barrens,55.09,15.00,50,0
    .goto The Barrens,55.62,14.86,50,0
    .aura 408828 >>|cRXP_WARN_Kill enemies having dealt damage using|r |T136026:0|t[Earth Shock] |cRXP_WARN_on them at least once. Do this 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    >>|cRXP_WARN_NOTE: You must do this on enemies that can provide experience to gain stacks|r
    .mob Hecklefang Hyena
    .mob Savannah Prowler
    .mob Savannah Huntress
    .mob Sunscale Screecher
    .mob Barrens Giraffe
    .mob Fleeting Plainstrider
    .mob Zhevra Runner
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <16,1
    .xp >20,1
step
    #label Barrens
    #loop
    .goto The Barrens,40.03,15.36,50,0
    .goto The Barrens,39.39,14.65,50,0
    .goto The Barrens,39.62,11.77,50,0
    .goto The Barrens,38.84,11.93,50,0
    .goto The Barrens,38.44,13.21,50,0
    .goto The Barrens,38.48,14.85,50,0
    .goto The Barrens,37.33,16.23,50,0
    .goto The Barrens,38.64,17.49,50,0
    .aura 408828 >>|cRXP_WARN_Kill enemies having dealt damage using|r |T136026:0|t[Earth Shock] |cRXP_WARN_on them at least once. Do this 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    >>|cRXP_WARN_NOTE: You must do this on enemies that can provide experience to gain stacks|r
    .mob Witchwing Slayer
    .mob Witchwing Windcaller
    .mob Witchwing Ambusher
    .mob Witchwing Roguefeather
    .mob Serena Bloodfeather
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <20,1
    .xp >22,1
step
    #completewith next
    .zone Stonetalon Mountains >> Travel to Stonetalon Mountains
    .train 425344,1
    .xp <3,1
step
    #loop
    .goto Stonetalon Mountains,64.17,57.16,50,0
    .goto Stonetalon Mountains,60.55,54.86,50,0
    .goto Stonetalon Mountains,60.95,51.21,50,0
    .goto Stonetalon Mountains,64.40,48.64,50,0
    .goto Stonetalon Mountains,66.18,52.01,50,0
    .goto Stonetalon Mountains,67.20,51.49,50,0
    .goto Stonetalon Mountains,66.83,45.34,50,0
    .goto Stonetalon Mountains,69.89,53.54,50,0
    .goto Stonetalon Mountains,70.84,56.97,50,0
    .aura 408828 >>|cRXP_WARN_Kill enemies having dealt damage using|r |T136026:0|t[Earth Shock] |cRXP_WARN_on them at least once. Do this 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    >>|cRXP_WARN_NOTE: You must do this on enemies that can provide experience to gain stacks|r
    .mob Venture Co. Logger
    .mob Venture Co. Deforester
    .mob Venture Co. Operator
    .mob Venture Co. Light Shredder
    .mob XT:9
    .mob XT:4
    .mob Deepmoss Webspinner
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <22,1
step
    .cast 402265 >>|cRXP_WARN_Use the|r |T134918:0|t|cRXP_LOOT_[Sulfurous Icon]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Molten Blast]
    .use 206388
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <3,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Molten Blast - 10 (Durotar)
#title Molten Blast
#next Way of Earth - 12 (The Barrens)


    --Rune of Molten Blast
step
    +|cRXP_WARN_You MUST be at least level 10 in order to acquire|r |T133816:0|t[Engrave Gloves - Molten Blast] |cRXP_WARN_as it is the level requirement of training|r |T135813:0|t[Flame Shock]
    >>|cRXP_WARN_You need to level up more before even attempting to acquire|r |T133816:0|t[Engrave Gloves - Molten Blast]
    >>|cRXP_WARN_Alternatively, you can get|r |T133816:0|t[Engrave Gloves - Molten Blast] |cRXP_WARN_in Mulgore at level 3+|r
    .train 425344,1
    .xp >10,1
step
    #completewith IconS
    #label Durotar1
    .zone Durotar >> Travel to Durotar
    .train 425344,1
    .xp <10,1
step
    #completewith next
    #requires Durotar1
    #label Durotar2
    .goto Durotar,53.28,42.57,20,0
    .goto Durotar,54.42,42.59,15 >>Travel toward |cRXP_FRIENDLY_Swart|r inside
    .train 425344,1
    .xp <10,1
step
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Train |T135813:0|t[Flame Shock]
    .target Swart
    .train 425344,1
    .xp <10,1
step
    #completewith next
    #requires Durotar2
    .goto Durotar,58.69,45.53,40 >>Travel toward the |cRXP_ENEMY_Frozen Makrura|r
    .train 425344,1
    .xp <10,1
step
    #label IconS
    .goto Durotar,58.69,45.53
    >>|cRXP_WARN_Look for other Shamans, Warlocks, or Mages near the |cRXP_ENEMY_Frozen Makrura|r or in General Chat (Type /1 into chat)|r
    >>|cRXP_WARN_Cast|r |T135813:0|t[Flame Shock] |cRXP_WARN_on the |cRXP_ENEMY_Frozen Makrura|r to apply a stack of|r |T135805:0|t[Applying Heat]|cRXP_WARN_. Apply 5 stacks at once together to kill the |cRXP_ENEMY_Frozen Makrura|r. Loot it for the|r |T134918:0|t|cRXP_LOOT_[Sulfurous Icon]|r
    >>|cRXP_WARN_Alternatively, you can get|r |T133816:0|t[Engrave Gloves - Molten Blast] |cRXP_WARN_in Mulgore solo|r
    >>|cRXP_WARN_NOTE:|r |T135813:0|t[Flametongue Weapon] |cRXP_WARN_does NOT apply any|r |T135805:0|t[Applying Heat] stacks|r
    .collect 206388,1 --Sulfurous Icon (1)
    .mob Frozen Makrura
    .train 425344,1
    .xp <10,1
    .xp >12,1
step
    .goto Durotar,58.69,45.53
    >>|cRXP_WARN_Look for other Shamans, Warlocks, or Mages near the |cRXP_ENEMY_Frozen Makrura|r or in General Chat (Type /1 into chat)|r
    >>|cRXP_WARN_Cast|r |T135813:0|t[Flame Shock] |cRXP_WARN_on the |cRXP_ENEMY_Frozen Makrura|r to apply a stack of|r |T135805:0|t[Applying Heat]|cRXP_WARN_. Apply 5 stacks at once together to kill the |cRXP_ENEMY_Frozen Makrura|r. Loot it for the|r |T134918:0|t|cRXP_LOOT_[Sulfurous Icon]|r
    >>|cRXP_WARN_Alternatively, you can get|r |T133816:0|t[Engrave Gloves - Molten Blast] |cRXP_WARN_in Mulgore solo|r
    >>|cRXP_WARN_NOTE:|r |T135813:0|t[Flametongue Weapon] |cRXP_WARN_and|r |T135824:0|t[Fire Nova Totem] |cRXP_WARN_do NOT apply any|r |T135805:0|t[Applying Heat] stacks|r
    .collect 206388,1 --Sulfurous Icon (1)
    .mob Frozen Makrura
    .train 425344,1
    .xp <12,1
--XX Flametongue and Fire Nova doesn't seem to work
step
    .equip 18,206388 >> |cRXP_WARN_Equip the|r |T134918:0|t|cRXP_LOOT_[Sulfurous Icon]|r
    .use 206388
    .itemcount 206388,1 --Sulfurous Icon (1)
    .train 425344,1
    .xp <10,1
step
    #loop
    .goto Durotar,56.87,53.05,50,0
    .goto Durotar,56.82,54.69,50,0
    .goto Durotar,58.64,53.86,50,0
    .goto Durotar,59.40,56.58,50,0
    .goto Durotar,58.41,58.17,50,0
    .goto Durotar,56.21,58.51,50,0
    .aura 408828 >>|cRXP_WARN_Kill enemies having dealt damage using|r |T136026:0|t[Earth Shock] |cRXP_WARN_on them at least once. Do this 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    >>|cRXP_WARN_NOTE: You must do this on enemies that can provide experience to gain stacks|r
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <10,1
    .xp >11,1
step
    #completewith Barrens
    .zone The Barrens >> Travel to The Barrens
    .train 425344,1
    .xp <10,1
step
    #loop
    .goto The Barrens,53.94,25.86,50,0
    .goto The Barrens,54.17,25.06,50,0
    .goto The Barrens,54.86,25.43,50,0
    .goto The Barrens,55.62,25.71,50,0
    .goto The Barrens,55.98,26.36,50,0
    .goto The Barrens,55.71,27.21,50,0
    .goto The Barrens,55.44,27.35,50,0
    .goto The Barrens,54.99,26.79,50,0
    .aura 408828 >>|cRXP_WARN_Kill enemies having dealt damage using|r |T136026:0|t[Earth Shock] |cRXP_WARN_on them at least once. Do this 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    >>|cRXP_WARN_NOTE: You must do this on enemies that can provide experience to gain stacks|r
    .mob Razormane Thornweaver
    .mob Razormane Water Seeker
    .mob Razormane Hunter
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <11,1
    .xp >16,1
step
    #loop
    .goto The Barrens,55.97,16.17,50,0
    .goto The Barrens,55.43,16.15,50,0
    .goto The Barrens,54.10,15.51,50,0
    .goto The Barrens,53.10,15.25,50,0
    .goto The Barrens,53.73,13.77,50,0
    .goto The Barrens,55.09,15.00,50,0
    .goto The Barrens,55.62,14.86,50,0
    .aura 408828 >>|cRXP_WARN_Kill enemies having dealt damage using|r |T136026:0|t[Earth Shock] |cRXP_WARN_on them at least once. Do this 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    >>|cRXP_WARN_NOTE: You must do this on enemies that can provide experience to gain stacks|r
    .mob Hecklefang Hyena
    .mob Savannah Prowler
    .mob Savannah Huntress
    .mob Sunscale Screecher
    .mob Barrens Giraffe
    .mob Fleeting Plainstrider
    .mob Zhevra Runner
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <16,1
    .xp >20,1
step
    #label Barrens
    #loop
    .goto The Barrens,40.03,15.36,50,0
    .goto The Barrens,39.39,14.65,50,0
    .goto The Barrens,39.62,11.77,50,0
    .goto The Barrens,38.84,11.93,50,0
    .goto The Barrens,38.44,13.21,50,0
    .goto The Barrens,38.48,14.85,50,0
    .goto The Barrens,37.33,16.23,50,0
    .goto The Barrens,38.64,17.49,50,0
    .aura 408828 >>|cRXP_WARN_Kill enemies having dealt damage using|r |T136026:0|t[Earth Shock] |cRXP_WARN_on them at least once. Do this 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    >>|cRXP_WARN_NOTE: You must do this on enemies that can provide experience to gain stacks|r
    .mob Witchwing Slayer
    .mob Witchwing Windcaller
    .mob Witchwing Ambusher
    .mob Witchwing Roguefeather
    .mob Serena Bloodfeather
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <20,1
    .xp >22,1
step
    #completewith next
    .zone Stonetalon Mountains >> Travel to Stonetalon Mountains
    .train 425344,1
    .xp <10,1
step
    #loop
    .goto Stonetalon Mountains,64.17,57.16,50,0
    .goto Stonetalon Mountains,60.55,54.86,50,0
    .goto Stonetalon Mountains,60.95,51.21,50,0
    .goto Stonetalon Mountains,64.40,48.64,50,0
    .goto Stonetalon Mountains,66.18,52.01,50,0
    .goto Stonetalon Mountains,67.20,51.49,50,0
    .goto Stonetalon Mountains,66.83,45.34,50,0
    .goto Stonetalon Mountains,69.89,53.54,50,0
    .goto Stonetalon Mountains,70.84,56.97,50,0
    .aura 408828 >>|cRXP_WARN_Kill enemies having dealt damage using|r |T136026:0|t[Earth Shock] |cRXP_WARN_on them at least once. Do this 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    >>|cRXP_WARN_NOTE: You must do this on enemies that can provide experience to gain stacks|r
    .mob Venture Co. Logger
    .mob Venture Co. Deforester
    .mob Venture Co. Operator
    .mob Venture Co. Light Shredder
    .mob XT:9
    .mob XT:4
    .mob Deepmoss Webspinner
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <22,1
step
    .cast 402265 >>|cRXP_WARN_Use the|r |T134918:0|t|cRXP_LOOT_[Sulfurous Icon]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Molten Blast]
    .use 206388
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <10,1
--XX Cast ID may be wrong, may need to be checked
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Lava Lash - 10 (Mulgore)
#title Lava Lash
#next Ancestral Guidance - 10 (Mulgore)


    --Rune of Lava Lash
--XX Worth mentioning "Dual Wield Skill" in the name? Cuts off ingame due to it being 3 lines though
step
    +|cRXP_WARN_You should be at least level 10 in order to acquire|r |T133816:0|t[Engrave Gloves - Lava Lash] |cRXP_WARN_and|r |T132147:0|t[Dual Wield] |cRXP_WARN_in Mulgore alone|r
    >>|cRXP_WARN_You MUST be at least level 4 as it is the level requirement of starting the questline|r
    >>|cRXP_WARN_You need to level up more before even attempting to acquire|r |T133816:0|t[Engrave Gloves - Lava Lash] |cRXP_WARN_and|r |T132147:0|t[Dual Wield]
    .train 410104,1
    .xp >4,1
step
    +|cRXP_WARN_You should be at least level 10 in order to acquire|r |T133816:0|t[Engrave Gloves - Lava Lash] |cRXP_WARN_and|r |T132147:0|t[Dual Wield] |cRXP_WARN_in Mulgore alone|r
    >>|cRXP_WARN_You need to level up more before even attempting to acquire|r |T133816:0|t[Engrave Gloves - Lava Lash] |cRXP_WARN_and|r |T132147:0|t[Dual Wield]
    .train 410104,1
    .xp <4,1
    .xp >10,1
--XX WIP to here
step
    #completewith next
    .zone Thunder Bluff >> Travel to Thunder Bluff
    .train 410104,1
    .xp <4,1
step
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boarton Shadetotem|r
    >>|cRXP_WARN_He is|r |T132320:0|t[Stealthed]
    .accept 76156 >>Accept Stalk With The Earthmother
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step
    #completewith next
    .goto Mulgore,61.46,47.21,20 >>Enter The Venture Co. Mine
    >>|cRXP_WARN_NOTE: the|r |T132288:0|t[Venture Co Disguise] |cRXP_WARN_does NOT work|r
    .train 410104,1
    .xp <4,1
step
    #loop
    .goto Mulgore,63.77,43.97,15,0
    .goto Mulgore,62.81,42.81,15,0
    .goto Mulgore,60.38,42.78,15,0
    .goto Mulgore,61.64,41.33,15,0
    .goto Mulgore,63.51,39.29,15,0
    .goto Mulgore,63.39,40.80,15,0
--  .goto Mulgore,66.53,39.47,15,0 --Very deep inside the top of the mine, skipping
    .goto Mulgore,60.99,37.00,15,0
    .goto Mulgore,59.64,36.05,15,0 --Outside
    .goto Mulgore,61.72,35.15,15,0 --Outside
    >>Open the |cRXP_PICK_Blasting Supplies|r inside the mine and outside on the other side. Loot them for the |cRXP_LOOT_Seaforium Mining Charges|r
    >>|cRXP_WARN_Stay on the upper levels of the cave if possible|r
    .complete 76156,1 --Seaforium Mining Charge (5)
    .train 410104,1
    .xp <4,1
--XX Didn't add the bottom of the mine ones
step
    #completewith next
    .goto Mulgore,59.99,35.82
    .subzone 215 >>Exit the Venture Co. Mine on the other side
    .train 410099,1
    .xp <4,1
step
    #completewith next
    .goto Mulgore,60.39,33.54,40 >>Travel toward the |cRXP_FRIENDLY_Adventurer's Remains|r
    .train 410099,1
    .xp <4,1
step
    #label IconS
    .goto Mulgore,60.39,33.54
    >>|cRXP_WARN_If you don't have|r |T134596:0|t[Engrave Pants - Ancestral Guidance]|cRXP_WARN_, now is a good time to do it|r
    >>|cRXP_WARN_If you don't want to get this Rune, skip this step|r
    >>|cRXP_WARN_Join a group with another Shaman, Priest, or Druid standing over the |cRXP_FRIENDLY_Adventurer's Remains|r, or look for help from a Shaman, Priest, or Druid in General Chat (Type /1 into chat)|r
    >>|cRXP_WARN_Talk to the |cRXP_FRIENDLY_Adventurer's Remains|r on the ground to begin the ritual, OR click the other player's|r |T136223:0|t[Spirit Ritual] |cRXP_WARN_(whilst in their group)|r
    >>|cRXP_WARN_A |cRXP_FRIENDLY_Adventurer's Spirit|r will spawn and die after completing the ritual. Loot it for the|r |T237571:0|t|cRXP_LOOT_[Echo of the Ancestors]|r
    .collect 210589,1 --Echo of the Ancestors (1)
    .target Adventurer's Remains
    .target Adventurer's Spirit
    .skipgossip
    .train 410099,1
    .xp <4,1
step
    .cast 402265 >>|cRXP_WARN_Use the|r |T237571:0|t|cRXP_LOOT_[Echo of the Ancestors]|r |cRXP_WARN_to learn|r |T134596:0|t[Engrave Pants - Ancestral Guidance]
    .use 210589
    .itemcount 210589,1 --Echo of the Ancestors (1)
    .train 410099,1
    .xp <4,1
step
    #completewith next
    .zone Thunder Bluff >> Travel to Thunder Bluff
    .train 410104,1
    .xp <4,1
--XX Logout skips take you to Bloodhoof, not worth doing
step
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boarton Shadetotem|r
    >>|cRXP_WARN_He is|r |T132320:0|t[Stealthed]
    .turnin 76156 >>Turn in Stalk With The Earthmother
    .accept 76160 >>Accept Stalk With The Earthmother
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step
    #completewith next
    .goto Mulgore,53.91,23.45
    .zone Mulgore >>Take the northern elevator down to Mulgore
    .train 410104,1
    .xp <4,1
step
    #loop
    .goto Mulgore,38.80,16.03,10,0
    .goto Mulgore,37.79,10.86,10,0
    .goto Mulgore,38.01,10.21,10,0
    .goto Mulgore,38.55,8.10,10,0
    .goto Mulgore,38.06,7.47,10,0
    .goto Mulgore,37.36,9.99,10,0
    .goto Mulgore,37.31,10.41,10,0
    .goto Mulgore,35.80,11.21,10,0
    .goto Mulgore,36.20,11.41,10,0
    .goto Mulgore,36.21,12.60,10,0
    .goto Mulgore,36.55,12.84,10,0
    .goto Mulgore,36.65,13.26,10,0
    .goto Mulgore,37.18,12.36,10,0
    >>Loot |cRXP_LOOT_Windfury Cones|r on the ground
    .collect 206170,8,76160,1 --Windfury Cone (8)
    .train 410104,1
    .xp <4,1
step
    >>Use the |T133748:0|t[Mortar and Pestle] to create |T133213:0|t[Pine Salve]
    .complete 76160,1 --Pine Salve (1)
    .use 206176
    .train 410104,1
    .xp <4,1
step
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boarton Shadetotem|r
    >>|cRXP_WARN_He is|r |T132320:0|t[Stealthed]
    .turnin 76160 >>Turn in Stalk With The Earthmother
    .accept 76240 >>Accept Stalk With The Earthmother
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step
    #ah
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Stampi|r
    >>|cRXP_BUY_Buy a|r |T133894:0|t[Raw Brilliant Smallfish] |cRXP_BUY_from the Auction House|r
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .target Auctioneer Stampi
    .train 410104,1
    .xp <4,1
step
    #ssf
    #completewith Sewa
    .goto Thunder Bluff,46.13,51.59,12,0
    .goto Thunder Bluff,47.09,50.07,4,0
    .goto Thunder Bluff,46.49,49.16,4,0
    .goto Thunder Bluff,46.05,49.74,4,0
    .goto Thunder Bluff,46.34,50.50,4,0
    .goto Thunder Bluff,55.78,47.02,15 >>Travel toward |cRXP_FRIENDLY_Sewa Mistrunner|r
    .train 410104,1
    .xp <4,1
step
    #ssf
    #sticky
    #label Kah
    .goto Thunder Bluff,56.13,46.39,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kah Mistrunner|r
    .train 7734 >>Train |T136245:0|t[Fishing]
    .target Kah Mistrunner
    .train 410104,1
    .xp <4,1
step
    #ssf
    #label Sewa
    .goto Thunder Bluff,55.78,47.02,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sewa Mistrunner|r
    >>|cRXP_BUY_Buy a|r |T132932:0|t[Fishing Pole] |cRXP_BUY_and|r |T134335:0|t[Shiny Bauble] |cRXP_BUY_from her|r
    .collect 6256,1 --Fishing Pole (1)
    .collect 6529,1 --Shiny Bauble (1)
    .target Sewa Mistrunner
    .train 410104,1
    .xp <4,1
step
    #ssf
    #completewith Fish
    #requires Kah
    #label Pole
    .equip 16,6256 >> |cRXP_WARN_Equip the|r |T132932:0|t[Fishing Pole]
    .use 6256
    .train 410104,1
    .xp <4,1
step
    #ssf
    #completewith Fish
    #requires Pole
    .aura 8087 >> |cRXP_WARN_Attach the|r |T134335:0|t[Shiny Bauble] |cRXP_WARN_to your|r |T132932:0|t[Fishing Pole]
    .use 6529
    .train 410104,1
    .xp <4,1
step
    #ssf
    #label Fish
    #requires Kah
    .goto Thunder Bluff,40.42,58.55
    >>Fish in the pond until you get a |T133894:0|t[|cRXP_LOOT_Raw Brilliant Smallfish|r]
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .train 410104,1
    .xp <4,1
step
    >>Use the |T132147:0|t[Knife Set] to create |T134007:0|t[Fish Chunks]
    .complete 76240,1 --Fish Chunks (1)
    .use 206344
    .train 410104,1
    .xp <4,1
step
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boarton Shadetotem|r
    >>|cRXP_WARN_He is|r |T132320:0|t[Stealthed]
    .turnin 76240 >>Turn in Stalk With The Earthmother
-- .train 410104 >>|cRXP_WARN_You will train|r |T236289:0|t[Lava Lash] |cRXP_WARN_and|r |T132147:0|t[Dual Wield] |cRXP_WARN_upon turnin|r
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Water Shield - 20 (The Barrens)
#title Water Shield
#next Greater Ghost Wolf - 25 (Stonetalon Mountains)


step
    +|cRXP_WARN_You MUST be at least level 20 in order to acquire|r |T133816:0|t[Engrave Gloves - Water Shield] |cRXP_WARN_as it is the level requirement of training|r |T135849:0|t[Frost Shock]
    >>|cRXP_WARN_You need to level up more before even attempting to acquire|r |T133816:0|t[Engrave Gloves - Water Shield]
    .train 410097,1
    .xp >20,1
step
    .zone Orgrimmar >>Travel to Orgrimmar or Thunder Bluff
    .zoneskip Thunder Bluff
    .train 8050,1
    .xp <20,1
step
    .zone Orgrimmar >>Travel to Orgrimmar or Thunder Bluff
    .zoneskip Thunder Bluff
    .train 8056,1
    .xp <20,1
step
    #completewith OrgTrain
    .goto Orgrimmar,40.31,37.01,15,0
    .goto Orgrimmar,38.81,36.37,15 >>Travel toward |cRXP_FRIENDLY_Kardris|r
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    .train 8050 >> Train |T135813:0|t[Flame Shock]
    .train 8056 >> Train |T135849:0|t[Frost Shock]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 8050,1
    .train 8056,1
    .xp <20,1
step
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    .train 8050 >> Train |T135813:0|t[Flame Shock]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    #label OrgTrain
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    .train 8056 >> Train |T135849:0|t[Frost Shock]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    #ah
    .goto Orgrimmar,50.67,70.39,0
    .goto Orgrimmar,53.74,64.60,15,0
    .goto Orgrimmar,55.54,64.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Wabang|r
    >>|cRXP_BUY_Buy a|r |T134237:0|t[Kolkar Booty Key] |cRXP_BUY_from the Auction House|r
    >>|cRXP_WARN_This will save you a few minutes later|r
    .collect 5020,1 --Kolkar Booty Key (1)
    .target Auctioneer Wabang
    .zoneskip Orgrimmar,1
    .train 410097,1
    .xp <20,1
step
    #completewith TBTrain
    .goto Thunder Bluff,22.82,21.11,15 >>Travel toward |cRXP_FRIENDLY_Siln|r
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Siln|r
    .train 8050 >> Train |T135813:0|t[Flame Shock]
    .train 8056 >> Train |T135849:0|t[Frost Shock]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 8050,1
    .train 8056,1
    .xp <20,1
step
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Siln|r
    .train 8050 >> Train |T135813:0|t[Flame Shock]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    #label TBTrain
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Siln|r
    .train 8056 >> Train |T135849:0|t[Frost Shock]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    #ah
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Stampi|r
    >>|cRXP_BUY_Buy a|r |T134237:0|t[Kolkar Booty Key] |cRXP_BUY_from the Auction House|r
    >>|cRXP_WARN_This will save you a few minutes later|r
    .collect 5020,1 --Kolkar Booty Key (1)
    .target Auctioneer Stampi
    .zoneskip Thunder Bluff,1
    .train 410097,1
    .xp <20,1
--XX easier to farm it IF the user is not already there to train
step
    #completewith next
    .zone The Barrens >>Travel to The Barrens
    .train 410097,1
    .xp <20,1
step
    #loop
    .goto The Barrens,45.78,25.52,0
    .goto The Barrens,43.86,21.38,0
    .goto The Barrens,43.56,26.30,0
    .goto The Barrens,45.78,25.52,50,0
    .goto The Barrens,46.54,22.99,50,0
    .goto The Barrens,45.03,20.09,50,0
    .goto The Barrens,43.86,21.38,50,0
    .goto The Barrens,43.49,23.57,50,0
    .goto The Barrens,43.56,26.30,50,0
    >>Kill |cRXP_ENEMY_Kolkar Wranglers|r and |cRXP_ENEMY_Kolkar Stormers|r. Loot them for a |T134237:0|t[Kolkar Booty Key]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .train 410097,1
    .xp <20,1
step
    .goto The Barrens,43.02,23.52,-1
--  .goto The Barrens,52.73,41.84,-1
--  .goto The Barrens,44.33,37.66,-1
    >>Open the |cRXP_PICK_Kolkars' Booty|r on the ground. Loot it for the |T135832:0|t|cRXP_LOOT_[Tempest Icon]|r
    .collect 206382,1 --Tempest Icon (1)
    .itemcount 5020,1 --Kolkar Booty Key (1)
    .train 410097,1
    .xp <20,1
step
    .equip 18,206382 >> |cRXP_WARN_Equip the|r |T135832:0|t|cRXP_LOOT_[Tempest Icon]|r
    .use 206382
    .itemcount 206382,1 --Tempest Icon (1)
    .train 410097,1
    .xp <20,1
step
    #loop
    .goto The Barrens,40.03,15.36,50,0
    .goto The Barrens,39.39,14.65,50,0
    .goto The Barrens,39.62,11.77,50,0
    .goto The Barrens,38.84,11.93,50,0
    .goto The Barrens,38.44,13.21,50,0
    .goto The Barrens,38.48,14.85,50,0
    .goto The Barrens,37.33,16.23,50,0
    .goto The Barrens,38.64,17.49,50,0
    .aura 408828 >>|cRXP_WARN_Kill enemies having dealt damage using a Nature spell (|r|T136026:0|t[Earth Shock]|cRXP_WARN_), a Frost spell (|r|T135849:0|t[Frost Shock]|cRXP_WARN_), and a Fire spell (|r|T135813:0|t[Flame Shock]|cRXP_WARN_) on them at least once. Do this 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    >>|cRXP_WARN_NOTE: You must do this on enemies that can provide experience to gain stacks|r
    .mob Witchwing Slayer
    .mob Witchwing Windcaller
    .mob Witchwing Ambusher
    .mob Witchwing Roguefeather
    .mob Serena Bloodfeather
    .itemStat 18,QUALITY,2
    .train 410097,1
    .xp <20,1
    .xp >22,1
step
    #completewith next
    .zone Stonetalon Mountains >> Travel to Stonetalon Mountains
    .train 410097,1
    .xp <22,1
step
    #loop
    .goto Stonetalon Mountains,64.17,57.16,50,0
    .goto Stonetalon Mountains,60.55,54.86,50,0
    .goto Stonetalon Mountains,60.95,51.21,50,0
    .goto Stonetalon Mountains,64.40,48.64,50,0
    .goto Stonetalon Mountains,66.18,52.01,50,0
    .goto Stonetalon Mountains,67.20,51.49,50,0
    .goto Stonetalon Mountains,66.83,45.34,50,0
    .goto Stonetalon Mountains,69.89,53.54,50,0
    .goto Stonetalon Mountains,70.84,56.97,50,0
    .aura 408828 >>|cRXP_WARN_Kill enemies having dealt damage using a Nature spell (|r|T136026:0|t[Earth Shock]|cRXP_WARN_), a Frost spell (|r|T135849:0|t[Frost Shock]|cRXP_WARN_), and a Fire spell (|r|T135813:0|t[Flame Shock]|cRXP_WARN_) on them at least once. Do this 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    >>|cRXP_WARN_NOTE: You must do this on enemies that can provide experience to gain stacks|r
    .mob Venture Co. Logger
    .mob Venture Co. Deforester
    .mob Venture Co. Operator
    .mob Venture Co. Light Shredder
    .mob XT:9
    .mob XT:4
    .mob Deepmoss Webspinner
    .itemStat 18,QUALITY,2
    .train 410097,1
    .xp <22,1
step
    .cast 402265 >>|cRXP_WARN_Use the|r |T135832:0|t|cRXP_LOOT_[Tempest Icon]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Water Shield]
    .use 206382
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410097,1
    .xp <20,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Water Shield - 20 (Silverpine Forest)
#title Water Shield
#next Greater Ghost Wolf - 25 (Stonetalon Mountains)

step
    +|cRXP_WARN_You MUST be at least level 20 in order to acquire|r |T133816:0|t[Engrave Gloves - Water Shield] |cRXP_WARN_as it is the level requirement of training|r |T135849:0|t[Frost Shock]
    >>|cRXP_WARN_You need to level up more before even attempting to acquire|r |T133816:0|t[Engrave Gloves - Water Shield]
    .train 410097,1
    .xp >20,1
step
    .zone Orgrimmar >>Travel to Orgrimmar or Thunder Bluff
    .zoneskip Thunder Bluff
    .train 8050,1
    .xp <20,1
step
    .zone Orgrimmar >>Travel to Orgrimmar or Thunder Bluff
    .zoneskip Thunder Bluff
    .train 8056,1
    .xp <20,1
step
    #completewith OrgTrain
    .goto Orgrimmar,40.31,37.01,15,0
    .goto Orgrimmar,38.81,36.37,15 >>Travel toward |cRXP_FRIENDLY_Kardris|r
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    .train 8050 >> Train |T135813:0|t[Flame Shock]
    .train 8056 >> Train |T135849:0|t[Frost Shock]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 8050,1
    .train 8056,1
    .xp <20,1
step
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    .train 8050 >> Train |T135813:0|t[Flame Shock]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    #label OrgTrain
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    .train 8056 >> Train |T135849:0|t[Frost Shock]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    #completewith TBTrain
    .goto Thunder Bluff,22.82,21.11,15 >>Travel toward |cRXP_FRIENDLY_Siln|r
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Siln|r
    .train 8050 >> Train |T135813:0|t[Flame Shock]
    .train 8056 >> Train |T135849:0|t[Frost Shock]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 8050,1
    .train 8056,1
    .xp <20,1
step
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Siln|r
    .train 8050 >> Train |T135813:0|t[Flame Shock]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    #label TBTrain
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Siln|r
    .train 8056 >> Train |T135849:0|t[Frost Shock]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    #completewith Grimson
    #label Grimson1
    .zone Silverpine Forest >>Travel to Silverpine Forest
    .train 410097,1
    .xp <20,1
step
    #completewith Grimson
    #requires Grimson1
    #label Grimson2
    .goto Silverpine Forest,56.65,45.97,15 >>Enter the Deep Elem Mine
    .train 410097,1
    .xp <20,1
step
    #completewith Grimson
    #requires Grimson2
    .goto Silverpine Forest,57.28,45.42,10,0
    .goto Silverpine Forest,57.66,44.82,10,0
    .goto Silverpine Forest,58.59,44.85,30 >>Travel Toward |cRXP_ENEMY_Grimson the Pale|r
    .train 410097,1
    .xp <20,1
step
    #label Grimson
    .goto Silverpine Forest,58.59,44.85
    >>Kill |cRXP_ENEMY_Grimson the Pale|r inside. Loot him for the |T135832:0|t|cRXP_LOOT_[Tempest Icon]|r
    .collect 206382,1 --Tempest Icon (1)
    .mob Grimson the Pale
    .train 410097,1
    .xp <20,1
step
    .equip 18,206382 >> |cRXP_WARN_Equip the|r |T135832:0|t|cRXP_LOOT_[Tempest Icon]|r
    .use 206382
    .itemcount 206382,1 --Tempest Icon (1)
    .train 410097,1
    .xp <20,1
step
    #loop
    .goto Silverpine Forest,47.68,86.24,50,0
    .goto Silverpine Forest,45.81,86.37,50,0
    .goto Silverpine Forest,44.26,84.37,50,0
    .aura 408828 >>|cRXP_WARN_Kill enemies having dealt damage using a Nature spell (|r|T136026:0|t[Earth Shock]|cRXP_WARN_), a Frost spell (|r|T135849:0|t[Frost Shock]|cRXP_WARN_), and a Fire spell (|r|T135813:0|t[Flame Shock]|cRXP_WARN_) on them at least once. Do this 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    >>|cRXP_WARN_NOTE: You must do this on enemies that can provide experience to gain stacks|r
    .mob Valdred Moray
    .mob Dalin Forgewright
    .mob Haggard Refugee
    .mob Sickly Refugee
    .itemStat 18,QUALITY,2
    .train 410097,1
    .xp <20,1
    .xp >22,1
step
    .cast 402265 >>|cRXP_WARN_Use the|r |T135832:0|t|cRXP_LOOT_[Tempest Icon]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Water Shield]
    .use 206382
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410097,1
    .xp <20,1
step
    #completewith next
    >>|cRXP_WARN_If you don't have|r |T133816:0|t[Engrave Gloves - Lava Burst] |cRXP_WARN_already, it's worth doing now. If you don't want to, skip this step|r
    .train 410095,1
    .xp <25,1
step
    #completewith next
    .zone Hillsbrad Foothills >>Travel to Hillsbrad Foothills
    .train 410095,1
    .xp <25,1
step
    #loop
    .goto Hillsbrad Foothills,63.73,59.26,40,0
    .goto Hillsbrad Foothills,65.49,60.30,40,0
    .goto Hillsbrad Foothills,66.30,61.11,40,0
    .goto Hillsbrad Foothills,63.61,62.04,40,0
    .goto Hillsbrad Foothills,63.21,61.04,40,0
    .goto Hillsbrad Foothills,62.56,63.55,40,0
    .goto Hillsbrad Foothills,62.98,63.70,40,0
    >>Kill |cRXP_ENEMY_Mudsnout Shamans|r. Loot them for the |T134920:0|t|cRXP_LOOT_[Kajaric Icon]|r
    .collect 206387,1 --Kajaric Icon (1)
    .mob Mudsnout Shaman
    .train 410095,1
    .xp <25,1
step
    .equip 18,206387 >> |cRXP_WARN_Equip the|r |T134920:0|t|cRXP_LOOT_[Kajaric Icon]|r
    .use 206387
    .itemcount 206387,1 --Kajaric Icon (1)
    .train 410095,1
    .xp <25,1
step
    #completewith next
    .zone Orgrimmar >> Travel to Orgrimmar
    .train 410095,1
    .xp <25,1
step
    .goto Orgrimmar,52.77,48.97
    .subzone 2437 >> Enter Ragefire Chasm inside the Cleft of Shadow
    .itemStat 18,QUALITY,2
    .train 410095,1
    .xp <25,1
step
    >>|cRXP_WARN_Hug the right side of the wall. After going down the ramp (just after the 5th mob), walk into the shallow lava pool on your right|r
    >>|cRXP_WARN_Damage taken from|r |T135805:0|t[Lava] |cRXP_WARN_is reduced to 91 whilst the|r |T134920:0|t|cRXP_LOOT_[Kajaric Icon]|r |cRXP_WARN_is equipped|r
    .aura 408828 >>|cRXP_WARN_Take damage from the |T135805:0|t[Lava] |cRXP_WARN_source 5 times|r
    .itemStat 18,QUALITY,2
    .train 410095,1
    .xp <25,1
step
    >>|cRXP_WARN_Move out of the|r |T135805:0|t[Lava]
    .cast 402265 >>|cRXP_WARN_Use the|r |T134920:0|t|cRXP_LOOT_[Kajaric Icon]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Lava Burst]
    .use 206387
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410095,1
    .xp <25,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Lava Burst - 25 (Hillsbrad Foothills)
#title Lava Burst
#next Earth Shield - 25 (Azeroth)


step
    +|cRXP_WARN_You should be at least level 25 in order to acquire|r |T133816:0|t[Engrave Gloves - Lava Burst] |cRXP_WARN_in Hillsbrad alone|r
    .train 410095,1
    .xp >25,1
step
    #completewith next
    .zone Hillsbrad Foothills >>Travel to Hillsbrad Foothills
    .train 410095,1
step
    #loop
    .goto Hillsbrad Foothills,63.73,59.26,40,0
    .goto Hillsbrad Foothills,65.49,60.30,40,0
    .goto Hillsbrad Foothills,66.30,61.11,40,0
    .goto Hillsbrad Foothills,63.61,62.04,40,0
    .goto Hillsbrad Foothills,63.21,61.04,40,0
    .goto Hillsbrad Foothills,62.56,63.55,40,0
    .goto Hillsbrad Foothills,62.98,63.70,40,0
    >>Kill |cRXP_ENEMY_Mudsnout Shamans|r. Loot them for the |T134920:0|t|cRXP_LOOT_[Kajaric Icon]|r
    .collect 206387,1 --Kajaric Icon (1)
    .mob Mudsnout Shaman
    .train 410095,1
step
    .equip 18,206387 >> |cRXP_WARN_Equip the|r |T134920:0|t|cRXP_LOOT_[Kajaric Icon]|r
    .use 206387
    .itemcount 206387,1 --Kajaric Icon (1)
    .train 410095,1
step
    #completewith next
    .zone Orgrimmar >> Travel to Orgrimmar
    .train 410095,1
step
    .goto Orgrimmar,52.77,48.97
    .subzone 2437 >> Enter Ragefire Chasm inside the Cleft of Shadow
    .itemStat 18,QUALITY,2
    .train 410095,1
step
    >>|cRXP_WARN_Hug the right side of the wall. After going down the ramp (just after the 5th mob), walk into the shallow lava pool on your right|r
    >>|cRXP_WARN_Damage taken from|r |T135805:0|t[Lava] |cRXP_WARN_is reduced to 91 whilst the|r |T134920:0|t|cRXP_LOOT_[Kajaric Icon]|r |cRXP_WARN_is equipped|r
    .aura 408828 >>|cRXP_WARN_Take damage from the |T135805:0|t[Lava] |cRXP_WARN_source 5 times|r
    .itemStat 18,QUALITY,2
    .train 410095,1
step
    >>|cRXP_WARN_Move out of the|r |T135805:0|t[Lava]
    .cast 402265 >>|cRXP_WARN_Use the|r |T134920:0|t|cRXP_LOOT_[Kajaric Icon]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Lava Burst]
    .use 206387
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410095,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Overload - 3 (Durotar)
#title Overload
#next Shield Mastery - 6 (Durotar)

    --Rune of Overload
step
    +|cRXP_WARN_You MUST be at least level 3 in order to acquire|r |T133815:0|t[Engrave Chest - Overload] |cRXP_WARN_as it is the level requirement of equipping the|r |T134918:0|t|cRXP_LOOT_[Dyadic Icon]|r
    >>|cRXP_WARN_You need to level up more before even attempting to acquire|r |T133815:0|t[Engrave Chest - Overload]
    .train 410094,1
    .xp >3,1
step
    #completewith IconS
    .zone Durotar >> Travel to Durotar
    .train 410094,1
    .xp <3,1
step << !Tauren skip
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shikrik|r
    .accept 77587 >>Accept Icons of Power << Troll Shaman
    .accept 77585 >>Accept Icons of Power << Orc Shaman
    .target Shikrik
    .train 410094,1
    .xp <3,1
step
    #label IconS
#loop
	.line Durotar,43.26,58.28,42.81,58.41,41.90,58.35,41.97,59.20,41.36,60.35,40.66,61.27,40.07,61.35,39.42,61.29,39.46,62.17,39.55,63.10,40.13,64.04,40.84,64.06,40.74,65.86,39.93,66.03,40.04,66.99,40.09,67.66,40.13,68.50,40.72,68.55,41.30,67.84,41.37,66.72,41.89,66.05,41.27,65.71,41.36,64.07,41.33,63.12,41.35,61.98,41.49,61.25,41.90,60.24,42.51,59.34,43.08,59.62,43.91,59.33,45.15,59.46,45.81,59.30,45.85,60.34,46.46,61.11,47.09,62.24,47.08,63.15,47.14,64.08,47.58,64.04,47.08,63.15,47.09,62.24,46.90,61.15,46.98,60.18,47.07,59.34,46.47,58.28,45.81,59.30,45.15,59.46,43.91,59.33,43.26,58.28
	.goto Durotar,43.26,58.28,25,0
	.goto Durotar,42.81,58.41,25,0
	.goto Durotar,41.90,58.35,25,0
	.goto Durotar,41.97,59.20,25,0
	.goto Durotar,41.36,60.35,25,0
	.goto Durotar,40.66,61.27,25,0
	.goto Durotar,40.07,61.35,25,0
	.goto Durotar,39.42,61.29,25,0
	.goto Durotar,39.46,62.17,25,0
	.goto Durotar,39.55,63.10,25,0
	.goto Durotar,40.13,64.04,25,0
	.goto Durotar,40.84,64.06,25,0
	.goto Durotar,40.74,65.86,25,0
	.goto Durotar,39.93,66.03,25,0
	.goto Durotar,40.04,66.99,25,0
	.goto Durotar,40.09,67.66,25,0
	.goto Durotar,40.13,68.50,25,0
	.goto Durotar,40.72,68.55,25,0
	.goto Durotar,41.30,67.84,25,0
	.goto Durotar,41.37,66.72,25,0
	.goto Durotar,41.89,66.05,25,0
	.goto Durotar,41.27,65.71,25,0
	.goto Durotar,41.36,64.07,25,0
	.goto Durotar,41.33,63.12,25,0
	.goto Durotar,41.35,61.98,25,0
	.goto Durotar,41.49,61.25,25,0
	.goto Durotar,41.90,60.24,25,0
	.goto Durotar,42.51,59.34,25,0
	.goto Durotar,43.08,59.62,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.85,60.34,25,0
	.goto Durotar,46.46,61.11,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.14,64.08,25,0
	.goto Durotar,47.58,64.04,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,46.90,61.15,25,0
	.goto Durotar,46.98,60.18,25,0
	.goto Durotar,47.07,59.34,25,0
	.goto Durotar,46.47,58.28,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,43.26,58.28,25,0
    >>Kill |cRXP_ENEMY_Scorpid Workers|r. Loot them for the |T134918:0|t|cRXP_LOOT_[Dyadic Icon]|r
    .collect 206381,1 --Dyadic Icon (1)
    .mob Scorpid Worker
    .train 410094,1
    .xp <3,1
step
    .equip 18,206381 >> |cRXP_WARN_Equip the|r |T134918:0|t|cRXP_LOOT_[Dyadic Icon]|r
    .use 206381
    .itemcount 206381,1 --Dyadic Icon (1)
    .train 410094,1
    .xp <3,1
step
#loop
	.line Durotar,43.26,58.28,42.81,58.41,41.90,58.35,41.97,59.20,41.36,60.35,40.66,61.27,40.07,61.35,39.42,61.29,39.46,62.17,39.55,63.10,40.13,64.04,40.84,64.06,40.74,65.86,39.93,66.03,40.04,66.99,40.09,67.66,40.13,68.50,40.72,68.55,41.30,67.84,41.37,66.72,41.89,66.05,41.27,65.71,41.36,64.07,41.33,63.12,41.35,61.98,41.49,61.25,41.90,60.24,42.51,59.34,43.08,59.62,43.91,59.33,45.15,59.46,45.81,59.30,45.85,60.34,46.46,61.11,47.09,62.24,47.08,63.15,47.14,64.08,47.58,64.04,47.08,63.15,47.09,62.24,46.90,61.15,46.98,60.18,47.07,59.34,46.47,58.28,45.81,59.30,45.15,59.46,43.91,59.33,43.26,58.28
	.goto Durotar,43.26,58.28,25,0
	.goto Durotar,42.81,58.41,25,0
	.goto Durotar,41.90,58.35,25,0
	.goto Durotar,41.97,59.20,25,0
	.goto Durotar,41.36,60.35,25,0
	.goto Durotar,40.66,61.27,25,0
	.goto Durotar,40.07,61.35,25,0
	.goto Durotar,39.42,61.29,25,0
	.goto Durotar,39.46,62.17,25,0
	.goto Durotar,39.55,63.10,25,0
	.goto Durotar,40.13,64.04,25,0
	.goto Durotar,40.84,64.06,25,0
	.goto Durotar,40.74,65.86,25,0
	.goto Durotar,39.93,66.03,25,0
	.goto Durotar,40.04,66.99,25,0
	.goto Durotar,40.09,67.66,25,0
	.goto Durotar,40.13,68.50,25,0
	.goto Durotar,40.72,68.55,25,0
	.goto Durotar,41.30,67.84,25,0
	.goto Durotar,41.37,66.72,25,0
	.goto Durotar,41.89,66.05,25,0
	.goto Durotar,41.27,65.71,25,0
	.goto Durotar,41.36,64.07,25,0
	.goto Durotar,41.33,63.12,25,0
	.goto Durotar,41.35,61.98,25,0
	.goto Durotar,41.49,61.25,25,0
	.goto Durotar,41.90,60.24,25,0
	.goto Durotar,42.51,59.34,25,0
	.goto Durotar,43.08,59.62,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.85,60.34,25,0
	.goto Durotar,46.46,61.11,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.14,64.08,25,0
	.goto Durotar,47.58,64.04,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,46.90,61.15,25,0
	.goto Durotar,46.98,60.18,25,0
	.goto Durotar,47.07,59.34,25,0
	.goto Durotar,46.47,58.28,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,43.26,58.28,25,0
    .aura 408828 >>|cRXP_WARN_Let |cRXP_ENEMY_Scorpid Workers|r cast|r |T136016:0|t[Weak Poison] |cRXP_WARN_on you, then take damage from it 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    .mob Scorpid Worker
    .itemStat 18,QUALITY,2
    .train 410094,1
    .xp <3,1
step
    .cast 402265 >>|cRXP_WARN_Use the|r |T134918:0|t|cRXP_LOOT_[Dyadic Icon]|r |cRXP_WARN_to learn|r |T133815:0|t[Engrave Chest - Overload]
    .use 206381
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410094,1
    .xp <3,1
step << !Tauren skip
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shikrik|r
    .turnin 77587 >>Turn in Icons of Power << Troll Shaman
    .turnin 77585 >>Turn in Icons of Power << Orc Shaman
    .target Shikrik
    .xp <3,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Overload - 3 (Mulgore)
#title Overload
#next Shield Mastery - 6 (Mulgore)


    --Rune of Overload
step
    +|cRXP_WARN_You MUST be at least level 3 in order to acquire|r |T133815:0|t[Engrave Chest - Overload] |cRXP_WARN_as it is the level requirement of equipping the|r |T134918:0|t|cRXP_LOOT_[Dyadic Icon]|r
    >>|cRXP_WARN_You need to level up more before even attempting to acquire|r |T133815:0|t[Engrave Chest - Overload]
    .train 410094,1
    .xp >3,1
step
    #completewith IconS
    .zone Mulgore >> Travel to Mulgore
    .train 410094,1
    .xp <3,1
step << Tauren skip
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meela|r
    .accept 77652 >>Accept Icons of Power
    .target Meela Dawnstrider
    .xp <3,1
step
    #label IconS
    .goto Mulgore,63.74,81.18,50,0
    .goto Mulgore,63.86,79.97,50,0
    .goto Mulgore,65.00,78.60,50,0
    .goto Mulgore,66.05,77.83,50,0
    .goto Mulgore,65.93,77.10,50,0
    .goto Mulgore,63.57,76.25,50,0
    .goto Mulgore,63.86,80.14
    >>Kill |cRXP_ENEMY_Bristleback Shamans|r. Loot them for the |T134918:0|t[|cRXP_FRIENDLY_Dyadic Icon|r]
    .collect 206381,1 --Dyadic Icon (1)
    .mob Bristleback Shaman
    .train 410094,1
    .xp <3,1
step
    .equip 18,206381 >> |cRXP_WARN_Equip the|r |T134918:0|t|cRXP_LOOT_[Dyadic Icon]|r
    .use 206381
    .itemcount 206381,1 --Dyadic Icon (1)
    .train 410094,1
    .xp <3,1
step
    .goto Mulgore,63.74,81.18,50,0
    .goto Mulgore,63.86,79.97,50,0
    .goto Mulgore,65.00,78.60,50,0
    .goto Mulgore,66.05,77.83,50,0
    .goto Mulgore,65.93,77.10,50,0
    .goto Mulgore,63.57,76.25,50,0
    .goto Mulgore,63.86,80.14
    .aura 408828 >>|cRXP_WARN_Let |cRXP_ENEMY_Bristleback Shamans|r cast|r |T136048:0|t[Lightning Bolt] |cRXP_WARN_on you and take damage from it 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    .mob Bristleback Shaman
    .itemStat 18,QUALITY,2
    .train 410094,1
    .xp <3,1
--XX Loop needs to be added
step
    .cast 402265 >>|cRXP_WARN_Use the|r |T134918:0|t|cRXP_LOOT_[Dyadic Icon]|r |cRXP_WARN_to learn|r |T133815:0|t[Engrave Chest - Overload]
    .use 206381
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410094,1
    .xp <3,1
step << Tauren skip
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meela|r
    .turnin 77652 >>Turn in Icons of Power
    .target Meela Dawnstrider
    .xp <3,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Shield Mastery - 6 (Durotar)
#title Shield Mastery
#next Molten Blast - 10 (Durotar)

step
    +|cRXP_WARN_You should be at least level 6 in order to acquire|r |T133815:0|t[Engrave Chest - Shield Mastery] |cRXP_WARN_in Durotar alone|r
    >>|cRXP_WARN_You MUST be at least level 3 as it is the level requirement of equipping the|r |T134918:0|t|cRXP_LOOT_[Galvanic Icon]|r
    >>|cRXP_WARN_You need to level up more before even attempting to acquire|r |T133815:0|t[Engrave Chest - Shield Mastery]
    .train 410098,1
    .xp >3,1
step
    +|cRXP_WARN_You should be at least level 6 in order to acquire|r |T133815:0|t[Engrave Chest - Shield Mastery] |cRXP_WARN_in Durotar alone|r
    .train 410098,1
    .xp <3,1
    .xp >6,1
step
    #completewith IconS
    .zone Durotar >> Travel to Durotar
    .train 410098,1
    .xp <3,1
step
    #label IconS
    .goto Durotar,52.06,62.49,0
    .goto Durotar,39.43,50.07,0
    .goto Durotar,50.91,51.61,0
    .goto Durotar,56.50,46.68,0
    .goto Durotar,57.03,46.66,0
    .goto Durotar,52.06,62.49,50,0
    .goto Durotar,39.43,50.07,50,0
    .goto Durotar,50.91,51.61,50,0
    .goto Durotar,56.50,46.68,50,0
    .goto Durotar,57.03,46.66,50,0
    .goto Durotar,59.00,58.00
    >>Click the |cRXP_PICK_Galvanic Icon|r Totem. Loot it for the |T134918:0|t|cRXP_LOOT_[Galvanic Icon]|r
    >>|cRXP_WARN_The |cRXP_PICK_Galvanic Icon|r has at least 15 spawnpoints, with at least 2 up at a time. It despawns <2 minutes after being looted|r
    >>|cRXP_WARN_It makes a|r |T136051:0|t[Lightning Shield] |cRXP_WARN_sound every 5 minutes if you're within 1000 yards, and shows a Lightning Strike on its location if you're within 300 yards and facing it|r
    .collect 206386,1 --Galvanic Icon (1)
    .train 410098,1
    .xp <3,1
--XX Need to check for more locations
step
    .equip 18,206386 >> |cRXP_WARN_Equip the|r |T134918:0|t|cRXP_LOOT_[Galvanic Icon]|r
    .use 206386
    .itemcount 206386,1 --Galvanic Icon (1)
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto Durotar,56.87,53.05,50,0
    .goto Durotar,56.82,54.69,50,0
    .goto Durotar,58.64,53.86,50,0
    .goto Durotar,59.40,56.58,50,0
    .goto Durotar,58.41,58.17,50,0
    .goto Durotar,56.21,58.51,50,0
    .aura 408828 >>|cRXP_WARN_Attack enemies down to low health, then cast|r |T136048:0|t[Lightning Bolt] |cRXP_WARN_on them to kill them. Do this 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    >>|cRXP_WARN_NOTE: You must do this on enemies that can provide experience to gain stacks|r
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <3,1
    .xp >11,1
step
    #completewith Barrens
    .zone The Barrens >> Travel to The Barrens
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto The Barrens,53.94,25.86,50,0
    .goto The Barrens,54.17,25.06,50,0
    .goto The Barrens,54.86,25.43,50,0
    .goto The Barrens,55.62,25.71,50,0
    .goto The Barrens,55.98,26.36,50,0
    .goto The Barrens,55.71,27.21,50,0
    .goto The Barrens,55.44,27.35,50,0
    .goto The Barrens,54.99,26.79,50,0
    .aura 408828 >>|cRXP_WARN_Attack enemies down to low health, then cast|r |T136048:0|t[Lightning Bolt] |cRXP_WARN_on them to kill them. Do this 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    >>|cRXP_WARN_NOTE: You must do this on enemies that can provide experience to gain stacks|r
    .mob Razormane Thornweaver
    .mob Razormane Water Seeker
    .mob Razormane Hunter
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <11,1
    .xp >16,1
step
    #loop
    .goto The Barrens,55.97,16.17,50,0
    .goto The Barrens,55.43,16.15,50,0
    .goto The Barrens,54.10,15.51,50,0
    .goto The Barrens,53.10,15.25,50,0
    .goto The Barrens,53.73,13.77,50,0
    .goto The Barrens,55.09,15.00,50,0
    .goto The Barrens,55.62,14.86,50,0
    .aura 408828 >>|cRXP_WARN_Attack enemies down to low health, then cast|r |T136048:0|t[Lightning Bolt] |cRXP_WARN_on them to kill them. Do this 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    >>|cRXP_WARN_NOTE: You must do this on enemies that can provide experience to gain stacks|r
    .mob Hecklefang Hyena
    .mob Savannah Prowler
    .mob Savannah Huntress
    .mob Sunscale Screecher
    .mob Barrens Giraffe
    .mob Fleeting Plainstrider
    .mob Zhevra Runner
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <16,1
    .xp >20,1
step
    #label Barrens
    #loop
    .goto The Barrens,40.03,15.36,50,0
    .goto The Barrens,39.39,14.65,50,0
    .goto The Barrens,39.62,11.77,50,0
    .goto The Barrens,38.84,11.93,50,0
    .goto The Barrens,38.44,13.21,50,0
    .goto The Barrens,38.48,14.85,50,0
    .goto The Barrens,37.33,16.23,50,0
    .goto The Barrens,38.64,17.49,50,0
    .aura 408828 >>|cRXP_WARN_Attack enemies down to low health, then cast|r |T136048:0|t[Lightning Bolt] |cRXP_WARN_on them to kill them. Do this 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    >>|cRXP_WARN_NOTE: You must do this on enemies that can provide experience to gain stacks|r
    .mob Witchwing Slayer
    .mob Witchwing Windcaller
    .mob Witchwing Ambusher
    .mob Witchwing Roguefeather
    .mob Serena Bloodfeather
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <20,1
    .xp >22,1
step
    #completewith next
    .zone Stonetalon Mountains >> Travel to Stonetalon Mountains
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto Stonetalon Mountains,64.17,57.16,50,0
    .goto Stonetalon Mountains,60.55,54.86,50,0
    .goto Stonetalon Mountains,60.95,51.21,50,0
    .goto Stonetalon Mountains,64.40,48.64,50,0
    .goto Stonetalon Mountains,66.18,52.01,50,0
    .goto Stonetalon Mountains,67.20,51.49,50,0
    .goto Stonetalon Mountains,66.83,45.34,50,0
    .goto Stonetalon Mountains,69.89,53.54,50,0
    .goto Stonetalon Mountains,70.84,56.97,50,0
    .aura 408828 >>|cRXP_WARN_Attack enemies down to low health, then cast|r |T136048:0|t[Lightning Bolt] |cRXP_WARN_on them to kill them. Do this 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    >>|cRXP_WARN_NOTE: You must do this on enemies that can provide experience to gain stacks|r
    .mob Venture Co. Logger
    .mob Venture Co. Deforester
    .mob Venture Co. Operator
    .mob Venture Co. Light Shredder
    .mob XT:9
    .mob XT:4
    .mob Deepmoss Webspinner
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <22,1
step
    .cast 402265 >>|cRXP_WARN_Use the|r |T134918:0|t|cRXP_LOOT_[Galvanic Icon]|r |cRXP_WARN_to learn|r |T133815:0|t[Engrave Chest - Shield Mastery]
    .use 206386
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <3,1
--XX Cast ID may be wrong, may need to be checked
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Shield Mastery - 6 (Mulgore)
#title Shield Mastery
#next Molten Blast - 8 (Mulgore)


    --Rune of Shield Mastery
 step
    +|cRXP_WARN_You should be at least level 6 in order to acquire|r |T133815:0|t[Engrave Chest - Shield Mastery] |cRXP_WARN_in Mulgore alone|r
    >>|cRXP_WARN_You MUST be at least level 3 as it is the level requirement of equipping the|r |T134918:0|t|cRXP_LOOT_[Galvanic Icon]|r
    >>|cRXP_WARN_You need to level up more before even attempting to acquire|r |T133815:0|t[Engrave Chest - Shield Mastery]
    .train 410098,1
    .xp >3,1
step
    +|cRXP_WARN_You should be at least level 6 in order to acquire|r |T133815:0|t[Engrave Chest - Shield Mastery] |cRXP_WARN_in Mulgore alone|r
    .train 410098,1
    .xp <3,1
    .xp >6,1
step
    #completewith IconS
    .zone Mulgore >> Travel to Mulgore
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto Mulgore,41.99,43.49,0
    .goto Mulgore,43.87,48.32,0
    .goto Mulgore,37.45,52.55,0
    .goto Mulgore,41.65,55.98,0
    .goto Mulgore,38.43,72.00,0
    .goto Mulgore,36.72,68.09,0
    .goto Mulgore,53.81,58.41,0
    .goto Mulgore,64.06,55.75,0
    .goto Mulgore,56.23,64.28,0
    .goto Mulgore,56.60,70.13,0
    .goto Mulgore,67.23,66.17,0
    .goto Mulgore,62.30,22.94,0
    .goto Mulgore,56.24,22.06,0
    .goto Mulgore,44.94,11.30,0
    .goto Mulgore,36.33,9.79,0
    .goto Mulgore,30.50,25.98,0
    .goto Mulgore,41.99,43.49,20,0
    .goto Mulgore,43.87,48.32,20,0
    .goto Mulgore,37.45,52.55,20,0
    .goto Mulgore,41.65,55.98,20,0
    .goto Mulgore,38.43,72.00,20,0
    .goto Mulgore,36.72,68.09,20,0
    .goto Mulgore,53.81,58.41,20,0
    .goto Mulgore,64.06,55.75,20,0
    .goto Mulgore,56.23,64.28,20,0
    .goto Mulgore,56.60,70.13,20,0
    .goto Mulgore,67.23,66.17,20,0
    .goto Mulgore,62.30,22.94,20,0
    .goto Mulgore,56.24,22.06,20,0
    .goto Mulgore,44.94,11.30,20,0
    .goto Mulgore,36.33,9.79,20,0
    .goto Mulgore,30.50,25.98,20,0
    >>Click the |cRXP_PICK_Galvanic Icon|r Totem. Loot it for the |T134918:0|t|cRXP_LOOT_[Galvanic Icon]|r
    >>|cRXP_WARN_The |cRXP_PICK_Galvanic Icon|r has at least 15 spawnpoints, with at least 2 up at a time. It despawns <2 minutes after being looted|r
    >>|cRXP_WARN_It makes a|r |T136051:0|t[Lightning Shield] |cRXP_WARN_sound every 5 minutes if you're within 1000 yards, and shows a Lightning Strike on its location if you're within 300 yards and facing it|r
    .collect 206386,1 --Galvanic Icon (1)
    .train 410098,1
    .xp <3,1
step
    .equip 18,206386 >> |cRXP_WARN_Equip the|r |T134918:0|t|cRXP_LOOT_[Galvanic Icon]|r
    .use 206386
    .itemcount 206386,1 --Galvanic Icon (1)
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto Mulgore,54.24,66.98,30,0
    .goto Mulgore,54.12,65.67,30,0
    .goto Mulgore,53.40,65.49,30,0
    .goto Mulgore,53.19,66.51,30,0
    .aura 408828 >>|cRXP_WARN_Attack enemies down to low health, then cast|r |T136048:0|t[Lightning Bolt] |cRXP_WARN_on them to kill them. Do this 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    >>|cRXP_WARN_NOTE: You must do this on enemies that can provide experience to gain stacks|r
    .mob Venture Co. Hireling
    .mob Venture Co. Laborer
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <3,1
    .xp >11,1
step
    #loop
    .goto Mulgore,59.86,48.74,30,0
    .goto Mulgore,60.85,49.04,30,0
    .goto Mulgore,61.83,48.28,30,0
    .goto Mulgore,61.40,47.23,30,0
    .goto Mulgore,62.02,45.84,30,0
    .goto Mulgore,62.85,45.30,30,0
    .goto Mulgore,64.87,43.32,30,0
    .aura 408828 >>|cRXP_WARN_Attack enemies down to low health, then cast|r |T136048:0|t[Lightning Bolt] |cRXP_WARN_on them to kill them. Do this 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    >>|cRXP_WARN_NOTE: You must do this on enemies that can provide experience to gain stacks|r
    .mob Venture Co. Worker
    .mob Venture Co. Supervisor
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <11,1
    .xp >14,1
step
    #completewith Barrens
    .zone The Barrens >> Travel to The Barrens
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto The Barrens,53.94,25.86,50,0
    .goto The Barrens,54.17,25.06,50,0
    .goto The Barrens,54.86,25.43,50,0
    .goto The Barrens,55.62,25.71,50,0
    .goto The Barrens,55.98,26.36,50,0
    .goto The Barrens,55.71,27.21,50,0
    .goto The Barrens,55.44,27.35,50,0
    .goto The Barrens,54.99,26.79,50,0
    .aura 408828 >>|cRXP_WARN_Attack enemies down to low health, then cast|r |T136048:0|t[Lightning Bolt] |cRXP_WARN_on them to kill them. Do this 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    >>|cRXP_WARN_NOTE: You must do this on enemies that can provide experience to gain stacks|r
    .mob Razormane Thornweaver
    .mob Razormane Water Seeker
    .mob Razormane Hunter
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <14,1
    .xp >16,1
step
    #loop
    .goto The Barrens,55.97,16.17,50,0
    .goto The Barrens,55.43,16.15,50,0
    .goto The Barrens,54.10,15.51,50,0
    .goto The Barrens,53.10,15.25,50,0
    .goto The Barrens,53.73,13.77,50,0
    .goto The Barrens,55.09,15.00,50,0
    .goto The Barrens,55.62,14.86,50,0
    .aura 408828 >>|cRXP_WARN_Attack enemies down to low health, then cast|r |T136048:0|t[Lightning Bolt] |cRXP_WARN_on them to kill them. Do this 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    >>|cRXP_WARN_NOTE: You must do this on enemies that can provide experience to gain stacks|r
    .mob Hecklefang Hyena
    .mob Savannah Prowler
    .mob Savannah Huntress
    .mob Sunscale Screecher
    .mob Barrens Giraffe
    .mob Fleeting Plainstrider
    .mob Zhevra Runner
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <16,1
    .xp >20,1
step
    #label Barrens
    #loop
    .goto The Barrens,40.03,15.36,50,0
    .goto The Barrens,39.39,14.65,50,0
    .goto The Barrens,39.62,11.77,50,0
    .goto The Barrens,38.84,11.93,50,0
    .goto The Barrens,38.44,13.21,50,0
    .goto The Barrens,38.48,14.85,50,0
    .goto The Barrens,37.33,16.23,50,0
    .goto The Barrens,38.64,17.49,50,0
    .aura 408828 >>|cRXP_WARN_Attack enemies down to low health, then cast|r |T136048:0|t[Lightning Bolt] |cRXP_WARN_on them to kill them. Do this 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    >>|cRXP_WARN_NOTE: You must do this on enemies that can provide experience to gain stacks|r
    .mob Witchwing Slayer
    .mob Witchwing Windcaller
    .mob Witchwing Ambusher
    .mob Witchwing Roguefeather
    .mob Serena Bloodfeather
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <20,1
    .xp >22,1
step
    #completewith next
    .zone Stonetalon Mountains >> Travel to Stonetalon Mountains
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto Stonetalon Mountains,64.17,57.16,50,0
    .goto Stonetalon Mountains,60.55,54.86,50,0
    .goto Stonetalon Mountains,60.95,51.21,50,0
    .goto Stonetalon Mountains,64.40,48.64,50,0
    .goto Stonetalon Mountains,66.18,52.01,50,0
    .goto Stonetalon Mountains,67.20,51.49,50,0
    .goto Stonetalon Mountains,66.83,45.34,50,0
    .goto Stonetalon Mountains,69.89,53.54,50,0
    .goto Stonetalon Mountains,70.84,56.97,50,0
    .aura 408828 >>|cRXP_WARN_Attack enemies down to low health, then cast|r |T136048:0|t[Lightning Bolt] |cRXP_WARN_on them to kill them. Do this 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    >>|cRXP_WARN_NOTE: You must do this on enemies that can provide experience to gain stacks|r
    .mob Venture Co. Logger
    .mob Venture Co. Deforester
    .mob Venture Co. Operator
    .mob Venture Co. Light Shredder
    .mob XT:9
    .mob XT:4
    .mob Deepmoss Webspinner
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <22,1
step
    .cast 402265 >>|cRXP_WARN_Use the|r |T134918:0|t|cRXP_LOOT_[Galvanic Icon]|r |cRXP_WARN_to learn|r |T133815:0|t[Engrave Chest - Shield Mastery]
    .use 206386
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <3,1
--XX Cast ID may be wrong, may need to be checked
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Ancestral Guidance - 6 (Durotar)
#title Ancestral Guidance
#next Molten Blast - 10 (Durotar)

    --Rune of Ancestral Guidance
step
    +|cRXP_WARN_You should be at least level 6 in order to acquire|r |T134596:0|t[Engrave Pants - Ancestral Guidance] |cRXP_WARN_in Durotar with another player|r
    >>|cRXP_WARN_You MUST be at least level 3 as it is the level requirement of using the|r |T237571:0|t|cRXP_LOOT_[Echo of the Ancestors]|r
    .train 410099,1
    .xp <3,1
step
    +|cRXP_WARN_You should be at least level 6 in order to acquire|r |T134596:0|t[Engrave Pants - Ancestral Guidance] |cRXP_WARN_in Durotar with another player|r
    .train 410099,1
    .xp <3,1
    .xp >6,1
step
    #completewith next
    #label Durotar1
    .zone Durotar >> Travel to Durotar
    .train 410099,1
    .xp <3,1
step
    #completewith next
    #requires Durotar1
    .goto Durotar,50.84,79.14,40,0
    .goto Durotar,48.02,79.46,40 >>Travel toward the |cRXP_FRIENDLY_Adventurer's Remains|r
    .train 410099,1
    .xp <3,1
step
    #label IconS
    .goto Durotar,48.02,79.46
    >>|cRXP_WARN_Join a group with another Shaman, Priest, or Druid standing over the |cRXP_FRIENDLY_Adventurer's Remains|r, or look for help from a Shaman, Priest, or Druid in General Chat (Type /1 into chat)|r
    >>|cRXP_WARN_Talk to the |cRXP_FRIENDLY_Adventurer's Remains|r on the ground to begin the ritual, OR click the other player's|r |T136223:0|t[Spirit Ritual] |cRXP_WARN_(whilst in their group)|r
    >>|cRXP_WARN_A |cRXP_FRIENDLY_Adventurer's Spirit|r will spawn and die after completing the ritual. Loot it for the|r |T237571:0|t|cRXP_LOOT_[Echo of the Ancestors]|r
    .collect 210589,1 --Echo of the Ancestors (1)
    .target Adventurer's Remains
    .target Adventurer's Spirit
    .skipgossip
    .train 410099,1
    .xp <3,1
step
    .cast 402265 >>|cRXP_WARN_Use the|r |T237571:0|t|cRXP_LOOT_[Echo of the Ancestors]|r |cRXP_WARN_to learn|r |T134596:0|t[Engrave Pants - Ancestral Guidance]
    .use 210589
    .itemcount 210589,1 --Echo of the Ancestors (1)
    .train 410099,1
    .xp <3,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Ancestral Guidance - 10 (Mulgore)
#title Ancestral Guidance
#next Way of Earth - 12 (The Barrens)


    --Rune of Ancestral Guidance

step
    +|cRXP_WARN_You should be at least level 10 in order to acquire|r |T134596:0|t[Engrave Pants - Ancestral Guidance] |cRXP_WARN_in Mulgore with another player|r
    >>|cRXP_WARN_You MUST be at least level 3 as it is the level requirement of using the|r |T237571:0|t|cRXP_LOOT_[Echo of the Ancestors]|r
    .train 410099,1
    .xp <3,1
step
    +|cRXP_WARN_You should be at least level 10 in order to acquire|r |T134596:0|t[Engrave Pants - Ancestral Guidance] |cRXP_WARN_in Mulgore with another player|r
    .train 410099,1
    .xp <3,1
    .xp >10,1
step
    #completewith next
    #label Mulgore1
    .zone Mulgore >> Travel to Mulgore
    .train 410099,1
    .xp <3,1
step
    #completewith next
    #requires Mulgore1
    #label Cave1
    .goto Mulgore,61.46,47.21,20 >>Enter The Venture Co. Mine
    .train 410099,1
    .xp <3,1
step
    #completewith next
    #requires Cave1
    #label Cave2
    .goto Mulgore,62.52,45.37,25,0
    .goto Mulgore,62.56,44.48,25,0
    .goto Mulgore,61.50,42.54,25,0
    .goto Mulgore,61.66,41.45,25,0
    .goto Mulgore,63.08,39.33,25,0
    .goto Mulgore,62.69,38.01,25,0
    .goto Mulgore,60.05,35.82,20 >>Exit the Venture Co. Mine on the other side
    .train 410099,1
    .xp <3,1
step
    #completewith next
    #requires Cave2
    .goto Mulgore,60.39,33.54,40 >>Travel toward the |cRXP_FRIENDLY_Adventurer's Remains|r
    .train 410099,1
    .xp <3,1
--XX Might be a faster method via the mountains, but don't want to complicate it
step
    #label IconS
    .goto Mulgore,60.39,33.54
    >>|cRXP_WARN_Join a group with another Shaman, Priest, or Druid standing over the |cRXP_FRIENDLY_Adventurer's Remains|r, or look for help from a Shaman, Priest, or Druid in General Chat (Type /1 into chat)|r
    >>|cRXP_WARN_Talk to the |cRXP_FRIENDLY_Adventurer's Remains|r on the ground to begin the ritual, OR click the other player's|r |T136223:0|t[Spirit Ritual] |cRXP_WARN_(whilst in their group)|r
    >>|cRXP_WARN_A |cRXP_FRIENDLY_Adventurer's Spirit|r will spawn and die after completing the ritual. Loot it for the|r |T237571:0|t|cRXP_LOOT_[Echo of the Ancestors]|r
    .collect 210589,1 --Echo of the Ancestors (1)
    .target Adventurer's Remains
    .target Adventurer's Spirit
    .skipgossip
    .train 410099,1
    .xp <3,1
step
    .cast 402265 >>|cRXP_WARN_Use the|r |T237571:0|t|cRXP_LOOT_[Echo of the Ancestors]|r |cRXP_WARN_to learn|r |T134596:0|t[Engrave Pants - Ancestral Guidance]
    .use 210589
    .itemcount 210589,1 --Echo of the Ancestors (1)
    .train 410099,1
    .xp <3,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Way of Earth - 12 (The Barrens)
#title Way of Earth
#next Water Shield - 20 (The Barrens)



step
    +|cRXP_WARN_You MUST be at least level 12 in order to acquire|r |T134596:0|t[Engrave Pants - Way of Earth] |cRXP_WARN_as it is the level requirement of training|r |T136075:0|t[Purge]
    >>|cRXP_WARN_You need to level up more before even attempting to acquire|r |T134596:0|t[Engrave Pants - Way of Earth]
    >>|cRXP_WARN_Alternatively, you can get|r |T134596:0|t[Engrave Pants - Way of Earth] |cRXP_WARN_in Silverpine Forest at level 1+|r
    .train 410107,1
    .xp >12,1
step
    .zone Orgrimmar >>Travel to Orgrimmar or Thunder Bluff
    .zoneskip Thunder Bluff
    .train 370,1
    .xp <12,1
step
    #completewith next
    .goto Orgrimmar,40.31,37.01,15,0
    .goto Orgrimmar,38.81,36.37,15 >>Travel toward |cRXP_FRIENDLY_Kardris|r
    .zoneskip Thunder Bluff
    .train 410107,1
    .xp <12,1
step
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    .train 370 >> Train |T136075:0|t[Purge]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 410107,1
    .xp <12,1
step
    #completewith next
    .goto Thunder Bluff,22.82,21.11,15 >>Travel toward |cRXP_FRIENDLY_Siln|r
    .zoneskip Orgrimmar
    .train 410107,1
    .xp <12,1
step
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Siln|r
    .train 370 >> Train |T136075:0|t[Purge]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 410107,1
    .xp <12,1
step
    #completewith next
    .zone The Barrens >>Travel to The Barrens
    .train 410107,1
    .xp <12,1
step
    #loop
    .goto The Barrens,55.77,34.01,40,0 --Spawn 1
    .goto The Barrens,55.83,34.21,40,0
    .goto The Barrens,54.81,35.95,40,0 --Spawn 2
    .goto The Barrens,54.96,35.72,40,0
    .goto The Barrens,57.47,36.03,40,0 --Spawn 3
    .goto The Barrens,57.56,35.78,40,0
    .goto The Barrens,57.46,35.70,40,0
    .goto The Barrens,57.59,38.36,40,0 --Spawn 4
    .goto The Barrens,57.49,38.65,40,0
    .goto The Barrens,58.82,37.67,40,0 --Spawn 5
    .goto The Barrens,58.92,37.53,40,0
    .goto The Barrens,58.94,37.73,40,0
    >>Cast |T136075:0|t[Purge] on the |cRXP_ENEMY_Desert Mirage|r to kill it. Loot it for the |T134419:0|t|cRXP_LOOT_[Earthen Rune]|r
    .collect 208758,1 --Earthen Rune (1)
    .unitscan Desert Mirage
    .train 410107,1
    .xp <12,1
--XX Respawns after 85s-170s
step
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t|cRXP_LOOT_[Earthen Rune]|r |cRXP_WARN_to learn|r |T134596:0|t[Engrave Pants - Way of Earth]
    .use 208758
    .itemcount 208758,1 --Earthen Rune (1)
    .train 410107,1
    .xp <12,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Way of Earth - 14 (Silverpine Forest)
#title Way of Earth
#next Water Shield - 20 (Silverpine Forest)

step
    +|cRXP_WARN_You should be at least level 14 in order to acquire|r |T134596:0|t[Engrave Pants - Way of Earth] |cRXP_WARN_in Silverpine Forest alone|r
    >>|cRXP_WARN_You need to level up more before even attempting to acquire|r |T134596:0|t[Engrave Pants - Way of Earth]
    .train 410107,1
    .xp >14,1
step
    #completewith next
    .zone Silverpine Forest >>Travel to the Silverpine Forest
    .train 410107,1
step
    #loop
    .goto Silverpine Forest,45.68,22.63,30,0
    .goto Silverpine Forest,45.09,23.63,30,0
    .goto Silverpine Forest,44.16,22.47,30,0
    .goto Silverpine Forest,44.05,21.66,30,0
    .goto Silverpine Forest,45.05,20.75,30,0
    .goto Silverpine Forest,45.07,19.79,30,0
    .goto Silverpine Forest,45.59,19.29,30,0
    .goto Silverpine Forest,46.18,19.74,30,0
    .goto Silverpine Forest,46.62,20.44,30,0
    .goto Silverpine Forest,46.07,21.92,30,0
    >>Kill |cRXP_ENEMY_Rot Hide Mystics|r. Loot them for the |T136008:0|t|cRXP_LOOT_[Rot Totem]|r
    .collect 210253,1 --Rot Hide Totem (1)
    .mob Rot Hide Mystic
    .itemcount 208758,<1 --Earthen Rune (1)
    .train 410107,1
step
    #completewith Rune
    .cast 425285 >> |cRXP_WARN_Use the|r |T136008:0|t|cRXP_LOOT_[Rot Totem]|r |cRXP_WARN_to summon the |cRXP_ENEMY_Decayed Elemental|r
    .use 210253 --Rot Hide Totem (1)
    .itemcount 210253,1 --Rot Hide Totem (1)
    .train 410107,1
    .xp <14,1
step
    #completewith next
    .cast 425285 >> |cRXP_WARN_Use the|r |T136008:0|t|cRXP_LOOT_[Rot Totem]|r |cRXP_WARN_to summon the |cRXP_ENEMY_Decayed Elemental|r
    >>|cRXP_WARN_Be careful as it casts|r |T135848:0|t[Frost Nova] |cRXP_WARN_(Ranged Instant: Deals about 50 damage and roots for 8 seconds) and is level 15|r
    .use 210253 --Rot Hide Totem (1)
    .itemcount 210253,1 --Rot Hide Totem (1)
    .train 410107,1
    .xp >14,1
step
    #label Rune
    >>Kill the |cRXP_ENEMY_Decayed Elemental|r. Loot it for the |T134419:0|t|cRXP_LOOT_[Earthen Rune]|r
    .collect 208758,1 --Earthen Rune (1)
    .mob Decayed Elemental
    .train 410107,1
--XX Need to test if it can be summoned anywhere, and how much or how scary it is
step
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t|cRXP_LOOT_[Earthen Rune]|r |cRXP_WARN_to learn|r |T134596:0|t[Engrave Pants - Way of Earth]
    .use 208758
    .itemcount 208758,1 --Earthen Rune (1)
    .train 410107,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Greater Ghost Wolf - 25 (Stonetalon Mountains)
#title Greater Ghost Wolf
#next Dual Wield Specialization - 25 (Ratchet)


step
    +|cRXP_WARN_You should be at least level 25 in order to acquire|r |T134596:0|t[Engrave Pants - Greater Ghost Wolf] |cRXP_WARN_in Stonetalon Mountains alone|r
    .train 425343,1
    .xp >25,1
step
    #completewith next
    .zone Stonetalon Mountains >>Travel to Stonetalon Mountains
    .train 425343,1
step
    #loop
    .goto Stonetalon Mountains,28.45,65.00,0
    .goto Stonetalon Mountains,28.45,65.00,50,0
    .goto Stonetalon Mountains,29.08,71.97,50,0
    .goto Stonetalon Mountains,33.43,68.97,50,0
    .goto Stonetalon Mountains,33.49,69.40,50,0
    .goto Stonetalon Mountains,36.85,72.04,50,0
    >>Kill the |cRXP_ENEMY_Primordial Anomaly|r. Loot it for the |T134419:0|t|cRXP_LOOT_[Rune of Primordial Fury]|r
    >>|cRXP_WARN_Make sure to check its form (debuffs). If it's in|r |T136074:0|t[Nature Form]|cRXP_WARN_, deal|r |T135824:0|t[Fire Damage]|cRXP_WARN_. If it's in|r |T135819:0|t[Fire Form]|cRXP_WARN_, deal|r |T135865:0|t[Frost Damage]|cRXP_WARN_. If it's in|r |T135861:0|t[Water Form]|cRXP_WARN_, deal|r |T136085:0|t[Nature Damage]
    >>|cRXP_WARN_Be careful as it casts |T132939:0|t[Knock Away] |cRXP_WARN_(Melee Instant: Knocks target up in the air and deals 80 damage)|r
    >>|cRXP_WARN_It has a 5-8 minute respawn time and drops a random BoE green each time|r
    .collect 210811,1 --Rune of Primordial Fury (1)
    .mob Primordial Anomaly
    .train 425343,1
step
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t|cRXP_LOOT_[Rune of Primordial Fury]|r |cRXP_WARN_to learn|r |T134596:0|t[Engrave Pants - Greater Ghost Wolf]
    .use 210811
    .itemcount 210811,1 --Rune of Primordial Fury (1)
    .train 425343,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Earth Shield - 25 (Azeroth)
#title Earth Shield
#next Overload - 3 (Durotar) << Orc Shaman/Troll Shaman
#next Overload - 3 (Mulgore) << Tauren Shaman


step
    +|cRXP_WARN_You MUST be at least level 25 in order to acquire|r |T134596:0|t[Engrave Pants - Earth Shield] |cRXP_WARN_as it is the level requirement of entering Blackfathom Deeps|r
    .train 410101,1
    .xp >25,1
step
    .zone Orgrimmar >>Travel to Orgrimmar or Thunder Bluff
    .zoneskip Thunder Bluff
    .train 410101,1
    .xp <25,1
step
    .goto Orgrimmar,50.67,70.39,0
    .goto Orgrimmar,53.74,64.60,15,0
    .goto Orgrimmar,55.54,64.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Wabang|r
    >>|cRXP_BUY_Buy a|r |T134797:0|t[Elixir of Water Breathing] |cRXP_BUY_and|r |T134717:0|t[Elixir of Wisdom] |cRXP_BUY_from the Auction House|r
    >>|cRXP_WARN_Alternatively, buy the materials to craft them yourself: 2|r |T132799:0|t[Blackmouth Oil] |cRXP_WARN_(or 4|r |T134302:0|t[Oily Blackmouth] |cRXP_WARN_to craft the oil), 1|r |T134191:0|t[Stranglekelp]|cRXP_WARN_, 1|r |T133436:0|t[Mageroyal]|cRXP_WARN_, and 2|r |T134412:0|t[Briarthorn]
    >>|cRXP_WARN_You need this for a quest later. Do NOT use them before then|r
    .collect 5996,1 --Elixir of Water Breathing (1)
    .collect 3383,1 --Elixir of Wisdom (1)
    .target Auctioneer Wabang
	.skill alchemy,<90,1
    .zoneskip Orgrimmar,1
    .train 410101,1
    .xp <25,1
step
    .goto Orgrimmar,50.67,70.39,0
    .goto Orgrimmar,53.74,64.60,15,0
    .goto Orgrimmar,55.54,64.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Wabang|r
    >>|cRXP_BUY_Buy a|r |T134797:0|t[Elixir of Water Breathing] |cRXP_BUY_and|r |T134717:0|t[Elixir of Wisdom] |cRXP_BUY_from the Auction House|r
    >>|cRXP_WARN_You need this for a quest later. Do NOT use them before then|r
    .collect 5996,1 --Elixir of Water Breathing (1)
    .collect 3383,1 --Elixir of Wisdom (1)
    .target Auctioneer Wabang
    .zoneskip Orgrimmar,1
    .train 410101,1
    .xp <25,1
step
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Stampi|r
    >>|cRXP_BUY_Buy a|r |T134797:0|t[Elixir of Water Breathing] |cRXP_BUY_and|r |T134717:0|t[Elixir of Wisdom] |cRXP_BUY_from the Auction House|r
    >>|cRXP_WARN_Alternatively, buy the materials to craft them yourself: 2|r |T132799:0|t[Blackmouth Oil] |cRXP_WARN_(or 4|r |T134302:0|t[Oily Blackmouth] |cRXP_WARN_to craft the oil), 1|r |T134191:0|t[Stranglekelp]|cRXP_WARN_, 1|r |T133436:0|t[Mageroyal]|cRXP_WARN_, and 2|r |T134412:0|t[Briarthorn]
    >>|cRXP_WARN_You need this for a quest later. Do NOT use them before then|r
    .collect 5996,1 --Elixir of Water Breathing (1)
    .collect 3383,1 --Elixir of Wisdom (1)
    .target Auctioneer Stampi
	.skill alchemy,<90,1
    .zoneskip Thunder Bluff,1
    .train 410101,1
    .xp <25,1
step
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Stampi|r
    >>|cRXP_BUY_Buy a|r |T134797:0|t[Elixir of Water Breathing] |cRXP_BUY_and|r |T134717:0|t[Elixir of Wisdom] |cRXP_BUY_from the Auction House|r
    >>|cRXP_WARN_You need this for a quest later. Do NOT use them before then|r
    .collect 5996,1 --Elixir of Water Breathing (1)
    .collect 3383,1 --Elixir of Wisdom (1)
    .target Auctioneer Stampi
    .zoneskip Thunder Bluff,1
    .train 410101,1
    .xp <25,1
step
    #completewith next
    .zone Ashenvale >> Travel to Ashenvale
    .train 410101,1
    .xp <25,1
step
    #completewith next
    .goto Kalimdor,44.36,34.86
    >>|cRXP_WARN_Join or create a fresh (0/7) raid (10-man) group for Blackfathom Deeps|r
    .subzone 2797,2 >> Make your way to the BFD Instance Portal. Zone in
    .train 410101,1
    .xp <25,1
step
    >>Kill |cRXP_ENEMY_Baron Aquanis|r in Blackfathom Deeps. Loot him for the |T136222:0|t|cRXP_LOOT_[Strange Water Globe]|r
    .collect 211454,1 --Strange Water Globe (SoD) (1)
    .mob Baron Aquanis
    .train 410101,1
    .xp <25,1
step
    >>Use the |T136222:0|t|cRXP_LOOT_[Strange Water Globe]|r to start the quest
    .accept 78920 >>Accept Baron Aquanis
    .use 211454
    .itemcount 211454,1 --Strange Water Globe (SoD) (1)
    .train 410101,1
    .xp <25,1
step
    #completewith Baron
    >>|cRXP_WARN_Finish the raid if you want, then leave Blackfathom Deeps|r
    .zone Ashenvale >> Travel to Ashenvale
    .zoneskip 221,1
    .train 410101,1
    .xp <25,1
step
    #completewith next
    .zone Ashenvale >> Travel to Ashenvale
    .train 410101,1
    .xp <25,1
step
    #label Baron
    .goto Ashenvale,11.56,34.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 78920 >>Turnin Baron Aquanis
    .accept 78506 >>Accept Elemental Distress
    .target Je'neu Sancrea
    .train 410101,1
    .xp <25,1
step
#loop
	.line Ashenvale,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,52.13,71.14,52.18,71.60,52.08,72.10,45.84,70.67,48.36,69.74
	.goto Ashenvale,48.36,69.74,50,0
	.goto Ashenvale,48.43,70.14,50,0
	.goto Ashenvale,48.93,70.82,50,0
	.goto Ashenvale,49.49,70.76,50,0
	.goto Ashenvale,50.21,70.36,50,0
	.goto Ashenvale,50.47,70.43,50,0
	.goto Ashenvale,50.54,71.08,50,0
	.goto Ashenvale,50.74,71.31,50,0
	.goto Ashenvale,51.42,70.86,50,0
	.goto Ashenvale,52.13,71.14,50,0
	.goto Ashenvale,52.18,71.60,50,0
	.goto Ashenvale,52.08,72.10,50,0
	.goto Ashenvale,45.84,70.67,50,0
	.goto Ashenvale,48.36,69.74,50,0
    >>Kill |cRXP_ENEMY_Befouled Water Elementals|r. Loot them for the |T132844:0|t|cRXP_LOOT_[Mote of Torrential Rage]|r
    .complete 78506,3 --Mote of Torrential Rage (1)
    .mob Befouled Water Elemental
    .train 410101,1
    .xp <25,1
--XX Needs to be converted to hashtag loop
step
    #completewith next
    .zone Stonetalon Mountains >>Travel to Stonetalon Mountains
    .train 410101,1
    .xp <25,1
step
    #loop
    #completewith next
    .goto Stonetalon Mountains,45.60,44.18,50,0 --NE Rogue Flame Shared Spawn Cluster (NE Spawnpoints)
    .goto Stonetalon Mountains,44.54,43.43,50,0
    .goto Stonetalon Mountains,43.96,39.90,50,0
    .goto Stonetalon Mountains,43.62,41.14,50,0
--
    .goto Stonetalon Mountains,37.09,46.62,50,0 --Path Rogue Flame Shared Spawn Cluster (Middle Spawnpoints)
    .goto Stonetalon Mountains,35.71,47.81,50,0
    .goto Stonetalon Mountains,37.21,48.30,50,0
    .goto Stonetalon Mountains,36.50,49.86,50,0
    .goto Stonetalon Mountains,37.18,51.87,50,0
    .goto Stonetalon Mountains,35.33,53.88,50,0
    .goto Stonetalon Mountains,34.59,60.23,50,0
    .goto Stonetalon Mountains,33.38,62.23,50,0
--
    .goto Stonetalon Mountains,35.22,65.79,50,0 --Start of Burning Destroyers and Ravagers
    .goto Stonetalon Mountains,36.42,71.05,50,0
    .goto Stonetalon Mountains,35.73,73.27,50,0
    .goto Stonetalon Mountains,34.50,72.62,50,0
    .goto Stonetalon Mountains,33.64,71.17,50,0
    .goto Stonetalon Mountains,33.49,70.48,50,0
    .goto Stonetalon Mountains,31.67,71.11,50,0
    .goto Stonetalon Mountains,31.13,73.45,50,0
    .goto Stonetalon Mountains,30.13,73.32,50,0
    .goto Stonetalon Mountains,30.97,67.39,50,0
    .goto Stonetalon Mountains,28.25,65.96,50,0
    >>Kill |cRXP_ENEMY_Rogue Flame Spirits|r, |cRXP_ENEMY_Burning Destroyers|r, and |cRXP_ENEMY_Burning Ravagers|r. Loot them for the |T132839:0|t|cRXP_LOOT_[Mote of Infernal Rage]|r
    >>|cRXP_ENEMY_Rogue Flame Spirits|r |cRXP_WARN_share spawns with|r |cRXP_ENEMY_Blackened Basilisks|r
    .complete 78506,2 --Mote of Infernal Rage (1)
    .mob Rogue Flame Spirit
    .mob Burning Destroyer
    .mob Burning Ravager
    .train 410101,1
    .xp <25,1
--XX Did waypoints in WOTLK, may be slightly off but i'd put more money on it being accurate than not
step
    #loop
    .goto Stonetalon Mountains,34.07,65.61,50,0
    .goto Stonetalon Mountains,36.42,71.05,50,0
    .goto Stonetalon Mountains,35.88,72.31,50,0
    .goto Stonetalon Mountains,32.49,73.81,50,0
    .goto Stonetalon Mountains,32.64,67.42,50,0
    .goto Stonetalon Mountains,28.99,65.18,50,0
    >>Kill |cRXP_ENEMY_Enraged Stone Spirits|r and |cRXP_ENEMY_Furious Stone Spirits|r. Loot them for |T132838:0|t|cRXP_LOOT_[Mote of Seismic Rage]|r |cRXP_WARN_be careful of dangerous enemies in the area.|r
    .complete 78506,1 --Mote of Seismic Rage (1)
    .mob Enraged Stone Spirit
    .mob Furious Stone Spirit
    .train 410101,1
    .xp <25,1
--XX Not totally sure if any of the elementals in the charred vale do/don't share spawns? It's a total clown fiesta
step
    #loop
    .goto Stonetalon Mountains,45.60,44.18,50,0
    .goto Stonetalon Mountains,44.54,43.43,50,0
    .goto Stonetalon Mountains,43.96,39.90,50,0
    .goto Stonetalon Mountains,43.62,41.14,50,0
    .goto Stonetalon Mountains,37.09,46.62,50,0
    .goto Stonetalon Mountains,35.71,47.81,50,0
    .goto Stonetalon Mountains,37.21,48.30,50,0
    .goto Stonetalon Mountains,36.50,49.86,50,0
    .goto Stonetalon Mountains,37.18,51.87,50,0
    .goto Stonetalon Mountains,35.33,53.88,50,0
    .goto Stonetalon Mountains,34.59,60.23,50,0
    .goto Stonetalon Mountains,33.38,62.23,50,0
    .goto Stonetalon Mountains,35.22,65.79,50,0
    .goto Stonetalon Mountains,36.42,71.05,50,0
    .goto Stonetalon Mountains,35.73,73.27,50,0
    .goto Stonetalon Mountains,34.50,72.62,50,0
    .goto Stonetalon Mountains,33.64,71.17,50,0
    .goto Stonetalon Mountains,33.49,70.48,50,0
    .goto Stonetalon Mountains,31.67,71.11,50,0
    .goto Stonetalon Mountains,31.13,73.45,50,0
    .goto Stonetalon Mountains,30.13,73.32,50,0
    .goto Stonetalon Mountains,30.97,67.39,50,0
    .goto Stonetalon Mountains,28.25,65.96,50,0
    >>Kill |cRXP_ENEMY_Rogue Flame Spirits|r, |cRXP_ENEMY_Burning Destroyers|r, and |cRXP_ENEMY_Burning Ravagers|r. Loot them for the |T132839:0|t|cRXP_LOOT_[Mote of Infernal Rage]|r
    >>|cRXP_ENEMY_Rogue Flame Spirits|r |cRXP_WARN_share spawns with|r |cRXP_ENEMY_Blackened Basilisks|r
    .complete 78506,2 --Mote of Infernal Rage (1)
    .mob Rogue Flame Spirit
    .mob Burning Destroyer
    .mob Burning Ravager
    .train 410101,1
    .xp <25,1
step
    #completewith next
    .zone Ashenvale >>Travel to Ashenvale
    .train 410101,1
    .xp <25,1
step
    .goto Ashenvale,11.56,34.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 78506 >>Turnin Elemental Distress
    .accept 78537 >>Accept Elixir of Insight
    .accept 78537 >>Turnin Elixir of Insight
    .accept 78561 >>Accept Elixir of Insight
    .target Je'neu Sancrea
    .train 410101,1
    .xp <25,1
step
    .goto Ashenvale,11.38,33.08
    >>Use the |T134791:0|t[Elixir of Insight] near the Bonfire
    >>|cRXP_WARN_You do NOT need to wait out the RP|r
    .complete 78561,1 --Vision Witnessed (1)
    .use 210712
    .train 410101,1
    .xp <25,1
step
    .goto Ashenvale,11.56,34.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 78561 >>Turnin Elixir of Insight
    .accept 78575 >>Accept Hirzek
    .target Je'neu Sancrea
    .train 410101,1
    .xp <25,1
step
    #completewith next
    .zone The Barrens >>Travel to The Barrens
    .train 410101,1
    .xp <25,1
step
    .goto The Barrens,43.18,78.59
    >>Kill |cRXP_ENEMY_Hirzek|r. Loot him for |T135146:0|t|cRXP_LOOT_[Hirzek's Staff]|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Hirzek|r casts|r |T135805:0|t[Lightning Bolt] |cRXP_WARN_(Ranged Cast: Deals about 110 Nature Damage) and is a level 25 elite. He is soloable, but you may want to find someone to assist you|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Bound Elemental|r has an infinite leash if you kill |cRXP_ENEMY_Hirzek|r and leave the |cRXP_ENEMY_Bound Elemental|r alive (it'll follow you until it de-renders or you kill it)|r
    .complete 78575,1 --Hirzek's Staff (1)
    .complete 78575,2 --Hirzek (1)
    .mob Hirzek
    .mob Bound Elemental
    .train 410101,1
    .xp <25,1
--XX Objective IDs (,1 and ,2) need testing
step
    #completewith next
    .zone Ashenvale >>Travel to Ashenvale
    .train 410101,1
    .xp <25,1
step
    .goto Ashenvale,11.56,34.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 78575 >>Turnin Hirzek
    .target Je'neu Sancrea
    .train 410101,1
    .xp <25,1
step
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t|cRXP_LOOT_[Rune of Earth Shield]|r |cRXP_WARN_to learn|r |T134596:0|t[Engrave Pants - Earth Shield]
    .use 210746
    .itemcount 210746,1 --Rune of Earth Shield (1)
    .train 410101,1
    .xp <25,1
    --XX Rune Routing will never be good for this
step << skip
    +Congratulations! You have acquired all |T134419:0|t|cRXP_LOOT_[Runes]|r currently available.
    .train 410094,3 --Overload
    .train 410095,3 --Lava Burst
    .train 410096,3 --Dual Wield Specialization
    .train 410097,3 --Water Shield
    .train 410098,3 --Shield Mastery
    .train 410099,3 --Ancestral Guidance
    .train 410101,3 --Earth Shield
    .train 410104,3 --Lava Lash
    .train 410107,3 --Way of Earth
    .train 416057,3 --Healing Rain
    .train 425343,3 --Shamanistic Rage
    .train 425344,3 --Molten Blast
    .xp <25,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Guide
#subgroup Belt
#name Fire Nova - 35 (Azeroth)
#title Fire Nova

-- Fire Nova

step
    #completewith next
    .zone Desolace >>Travel to |cFFfa9602Desolace|r
step
    .goto Desolace,56.6,21.8
    >>Kill |cRXP_ENEMY_Flameseer Dubelen|r. Loot him for the |T136008:0|t|cRXP_LOOT_Corrupted Fire Totem|r
    .collect 213451,1
    .mob Flameseer Dubelen
step
    .goto 1443,38.23,61,25,0
    .goto 1443,37.13,60.41,25,0
    .goto 1443,35.38,58.25,25,0
    .goto 1443,33.03,55.4,25,0
    .goto 1443,30.87,57.86,25,0
    .goto 1443,29.85,62.5,25,0
    .goto 1414,38.38,57.98,25,0
    .goto 1414,38.42,57.98,25,0
    .goto 1414,38.35,58.14,25,0
    .goto 1414,38.28,58.17,25,0
    .goto 1414,38.24,58.03,25,0
    .goto 1414,38.31,58.02,25,0
    .goto 1414,38.47,58.17,25,0
    .goto 1414,38.6,58.24,25,0
    .goto 1414,38.73,58.18,25,0
    .goto 1414,38.83,58.31,25,0
    .goto 1414,39.01,58.3,25,0
    .goto 1414,39.17,58.09,25,0
    .goto 1414,39.01,57.87,25,0
    .goto 1414,39.26,57.69
    >>Click on the |cRXP_PICK_Blue Crystal|r amongst the orange crystals to collect |T134088:0|t[Tear of Theradras]
    >>|cRXP_WARN_Be careful as enemies in this area are elite and they can stun.|r |cFFFF0000you are likely going to die multiple times|r
    .collect 213552,1
step
    .goto 1414,38.45,57.84,25,0
    .goto 1414,38.64,57.69,25,0
    .goto 1414,38.52,57.52,25,0
    .goto 1414,38.43,57.43,25,0
    .goto 1443,29.65,57.19,25,0
    .goto 1443,27.72,57.51
    >>Click on a |cRXP_PICK_Blue Crystal|r amongst the purple crystals to collect |T134088:0|t[Tear of Theradras]
    >>|cRXP_WARN_Be careful as enemies in this area are elite and they can stun.|r |cFFFF0000you are likely going to die multiple times|r
    .collect 213553,1
step
    #completewith next
    .zone Orgrimmar >>Travel to |cFFfa9602Orgrimmar|r
step
    .goto Orgrimmar,38.94,38.39
    .gossip 4047 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zor Lonetree|r and select the dialogoption
    -- .gossipoption --x insert id
    .target Zor Lonetree
step
    #completewith next
    .zone Thunder Bluff >>Travel to |cFFfa9602Thunder Bluff|r
step
    .goto Thunder Bluff,78.61,28.55
    .gossip 5769 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Hamuul Runetotem|r and select the dialogoption
    -- .gossipoption --x insert id
    .target Arch Druid Hamuul Runetotem
step
    -- .gossipoption --x insert id
    .goto Thunder Bluff,47.00,49.82
    .gossip 2995 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r and select the dialogoption to fly to Moonglade
    .target Tal
step
    #completewith next
    .zone Moonglade >>Travel to |cFFfa9602Moonglade|r
step
    .goto Moonglade,36.178,41.798
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Remulos|r
    .collect 213558,1
    .target Keeper Remulos
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Guide
#subgroup Belt
#name Maelstrom Weapon - 40 (Azeroth)
#title Maelstrom Weapon

-- Maelstrom Weapon

step
    .train 410100,1
    #completewith next
    .zone The Barrens >>Travel to |cFFfa9602The Barrens|r
step
    .train 410100,1
    .goto The Barrens,43.46,90.18,0
    .goto The Barrens,43.46,90.18,40,0
    .goto 1414,50.877,70.339
    .subzone 491,2 >> Enter Razorfen Kraul
step
    .train 410100,1
    >>Kill |cRXP_ENEMY_Charlga Razorflank|r. Loot him for the |T134944:0|t|cRXP_LOOT_Tattered Note|r. Use it to accept the quest
    >>|cRXP_WARN_It is highly recommended to form a group of 5 players for this|r
    .collect 212748,1 --Tattered Note (1x)
    .accept 79358 >>Accept Tattered Note
    .mob Charlga Razorflank
step
    .train 410100,1
    #completewith next
    .zone Thousand Needles >>Travel to |cFFfa9602Thousand Needles|r
step
    .train 410100,1
    .goto Thousand Needles,46.10,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rau Cliffrunner|r
    .turnin 79358 >>Turn in Tattered Note
    .accept 79360 >>Accept Elemental Aid
    .target Rau Cliffrunner
step
    .train 410100,1
    .goto Thousand Needles,46.21,51.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jandia|r
    >>|cRXP_BUY_Buy a|r |T132793:0|t[Crystal Vial] |cRXP_BUY_from her|r
    .collect 8925,1 --Crystal Vial (1x)
    .target Jandia
step
    .train 410100,1
    #completewith next
    .zone Hillsbrad Foothills >>Travel to |cFFfa9602Hillsbrad Foothills|r
step
    .train 410100,1
    .goto Alterac Mountains,80.499,66.923
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
    .turnin 79360 >>Turn in Elemental Aid
    .accept 79361 >>Accept Power of da Wind
    .accept 79362 >>Accept Power of da Earth
    .accept 79363 >>Accept Power of da Water
    .target Bath'rah the Windwatcher
step
    .train 410100,1
    #completewith next
    .zone Desolace >>Travel to |cFFfa9602Desolace|r
step
    .train 410100,1
    #loop
    .goto Desolace,48.0,27.2,0
    .goto Desolace,40.6,37.0,0
    .goto Desolace,50.8,42.0,0
    .goto Desolace,64.4,39.4,0
    .goto Desolace,68.4,48.4,0
    .goto Desolace,69.4,64.6,0
    .goto Desolace,58.8,65.6,0
    .waypoint Desolace,48.0,27.2,25,0
    .waypoint Desolace,40.6,37.0,25,0
    .waypoint Desolace,50.8,42.0,25,0
    .waypoint Desolace,64.4,39.4,25,0
    .waypoint Desolace,68.4,48.4,25,0
    .waypoint Desolace,69.4,64.6,25,0
    .waypoint Desolace,58.8,65.6,25,0
    >>Kill |cRXP_ENEMY_Whirlwind Elementals|r throughout Desolace. Loot them for their |T132845:0|t|cRXP_LOOT_Whirling Essence|r
    .complete 79361,1 -- Power of da Wind
    .mob Whirlwind Ripper
    .mob Whirlwind Stormwalker
    .mob Whirlwind Shredder
step
    .train 410100,1
    #completewith next
    .zone Dustwallow Marsh >>Travel to |cFFfa9602Dustwallow Marsh|r
step
    .train 410100,1
    #loop
    .goto Dustwallow Marsh,42.6,30.0,0
    .goto Dustwallow Marsh,35.2,44.6,0
    .goto Dustwallow Marsh,42.6,62.0,0
    .goto Dustwallow Marsh,50.0,54.0,0
    .waypoint Dustwallow Marsh,42.6,30.0,25,0
    .waypoint Dustwallow Marsh,35.2,44.6,25,0
    .waypoint Dustwallow Marsh,42.6,62.0,25,0
    .waypoint Dustwallow Marsh,50.0,54.0,25,0
    >>Kill |cRXP_ENEMY_Withervine Elementals|r throughout Dustwallow Marsh. Loot them for their |T132846:0|t|cRXP_LOOT_Rushing Essence|r
    .complete 79363,1 -- Power of da Water
    .mob Withervine Mire Beast
    .mob Withervine Rager
    .mob Withervine Bark Ripper
    .mob Withervine Creeper
step
    .train 410100,1
    #completewith next
    .zone Badlands >>Travel to |cFFfa9602Badlands|r
step
    .train 410100,1
    #loop
    .goto Badlands,18.0,42.8,0
    .waypoint Badlands,21.2,45.8,50,0
    .waypoint Badlands,18.0,42.8,50,0
    .waypoint Badlands,13.8,38.6,50,0
    .waypoint Badlands,21.2,45.8,50,0
    .waypoint Badlands,18.0,42.8,50,0
    >>Kill |cRXP_ENEMY_Lesser Rock Elemental|r and |cRXP_ENEMY_Rock Elementals|r. Loot them for their |T132846:0|t|cRXP_LOOT_Rumbling Essences|r
    .complete 79362,1 -- Power of da Earth
    .mob Rock Elemental
    .mob Lesser Rock Elemental
step
    .train 410100,1
    #completewith next
    .zone Hillsbrad Foothills >>Travel to |cFFfa9602Hillsbrad Foothills|r
step
    .train 410100,1
    .goto Alterac Mountains,80.499,66.923
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
    .turnin 79361 >>Turn in Power of da Wind
    .turnin 79362 >>Turn in Power of da Earth
    .turnin 79363 >>Turn in Power of da Water
    .accept 79364 >>Accept A Simple Container
    .turnin 79364 >>Turn in A Simple Container
    .accept 79365 >>Accept With Wind Beneath Your Wings
    .target Bath'rah the Windwatcher
step
    .train 410100,1
    #completewith next
    .zone Thousand Needles >>Travel to |cFFfa9602Thousand Needles|r
step
    .train 410100,1
    .goto Thousand Needles,46.10,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rau Cliffrunner|r
    .turnin 79365 -- With Wind Beneath Your Wings
    .accept 79366 --Calm Before the Storm
    .target Rau Cliffrunner
step
    .train 410100,1
    .gossip 4317 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyse|r and select the 2nd dialog option
    .target Nyse
step
    .train 410100,1
    >>Kill the |cRXP_ENEMY_Ravaging Tempest|r. Loot it for its |cRXP_LOOT_Eye of the Tempest|r
    >>|cRXP_WARN_If you die in the process talk to the|r |cRXP_FRIENDLY_Spirit Healer|r |cRXP_WARN_to teleport you to your corpse|r
    .collect 212792,1 --Eye of the Tempest (1x)
    .mob Dreath's Head Necromancer
    .mob Skeletal Servant
    .mob Ravaging Tempest
step
    .train 410100,1
    .vehicle >> Interact with the |cRXP_FRIENDLY_Freewind Post Wyvern|r
    .timer 9, Flight RP
step
    .train 410100,1
    .goto Thousand Needles,46.10,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rau Cliffrunner|r
    .turnin 79366 --Calm Before the Storm
    .accept 79442 --Catching up
    .target Rau Cliffrunner
step
    .train 410100,1
    #completewith next
    .zone Hillsbrad Foothills >>Travel to |cFFfa9602Hillsbrad Foothills|r
step
    .train 410100,1
    .goto Alterac Mountains,80.499,66.923
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
    .turnin 79442 --Catching up
    .target Bath'rah the Windwatcher
step
    .train 410100 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Storm|r] to learn |T136032:0|t[Maelstrom Weapon]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Guide
#subgroup Belt
#name Power Surge - 30 (Arathi Highlands)
#title Power Surge

-- Power Surge

step
    .train 416054,1
    #completewith next
    .zone Arathi Highlands >>Travel to |cFFfa9602Arathi Highlands|r |cRXP_WARN_|cRXP_WARN_It is highly recommended to form a group of atleast 3 players.|r
step
    .train 416054,1
    .goto Arathi Highlands,31.91,41.15,50,0
    .goto Arathi Highlands,35.53,40.93,50,0
    .goto Arathi Highlands,35.51,44.26,50,0
    .goto Arathi Highlands,34.40,44.25,12,0
    .goto Arathi Highlands,31.08,43.68,12,0
    .goto Arathi Highlands,34.40,44.25,12,0
    .goto Arathi Highlands,35.51,44.26
    >>Kill |cRXP_ENEMY_Boulderfist Ogres|r and |cRXP_ENEMY_Boulderfist Brutes|r. Loot them for a |T134921:0|t|cRXP_LOOT_[Ogre Lightning Rod]|r
    .collect 213426,1 --Ogre Lightning Rod (1x)
    .mob Boulderfist Ogre
    .mob Boulderfist Enforcer
step
    .train 416054,1
    .goto Arathi Highlands,33.45,44.49
    .cast 434350 >>Click the |cRXP_PICK_Soft Soil|r to insert the |T134921:0|t|cRXP_LOOT_[Lightning Rod]|r into the ground.
step
    .train 416054,1
    >>Cast |T136048:0|t[Lightning Bolt] 10 times on the |cRXP_ENEMY_Lightning Rod|r
    >>Kill |cRXP_ENEMY_Tamkar|r or kite him as he spawns. Loot him for the |T134419:0|t[Rune of Power]
    >>|cRXP_WARN_He will die automatically after 30 seconds so you can kite him instead of killing him|r
    .collect 213093,1 --Rune of Power (1x)
    .mob Lightning Rod
    .mob Tamkar
step
    .train 416054 >>|cRXP_WARN_Use the|r |T134419:0|t[Rune of Power] |cRXP_WARN_to learn|r |T134337:0|t[Power Surge]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Guide
#subgroup Boots
#title Decoy Totem
#name Decoy Totem - 27 (Thousand Needles)

-- Decoy Totem

step
    .train 425882,1
    .zone Thousand Needles >>Travel to |cFFfa9602Thousand Needles|r
step
    .train 425882,1
    .goto Thousand Needles,46.21,51.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jandia|r
    >>|cRXP_BUY_Buy a|r |T132906:0|t[Silken Thread] |cRXP_BUY_from her|r
    .collect 4291,1 --Silken Thread (1)
    .target Jandia
step
    .train 425882,1
    #loop
    .goto Thousand Needles,55.42,51.96,0
    .waypoint Thousand Needles,55.42,51.96,40,0
    .waypoint Thousand Needles,56.68,49.88,40,0
    .waypoint Thousand Needles,55.97,45.97,40,0
    .waypoint Thousand Needles,54.29,48.10,40,0
    >>Kill |cRXP_ENEMY_Cloud Serpents|r. Loot them for their |cRXP_LOOT_Cloud Serpent Fangs|r
    .collect 213709,3 --Cloud Serpent Fang (3x)
    .mob Cloud Serpent
    .mob Venomous Cloud Serpent
    .mob Elder Cloud Serpent
step
    .train 425882,1
    #loop
    .goto Thousand Needles,27.65,49.47,0
    .goto Thousand Needles,26.55,55.77,0
    .waypoint Thousand Needles,27.65,49.47,40,0
    .waypoint Thousand Needles,27.16,51.62,15,0
    .waypoint Thousand Needles,26.29,52.79,15,0
    .waypoint Thousand Needles,27.23,54.04,15,0
    .waypoint Thousand Needles,26.55,55.77,15,0
    >>Kill cRXP_ENEMY_Screeching Harpies|r. Loot them for their |cRXP_LOOT_Strong Harpy Feathers|r
    .collect 213701,10 --Strong Harpy Feather (10x)
    .mob Screeching Harpy
    .mob Screeching Roguefeather
    .mob Screeching Windcaller
step
    .train 425882,1
    .use 213709 >>|cRXP_WARN_Use your|r |T133723:0|t[Cloud Serpent Fangs] |cRXP_WARN_to create|r |T133291:0|t[Offering to the Wind Spirit]
    .collect 213737,1 --Offering to the Wind Spirit (1x)
step
    .goto Thousand Needles,31.47,36.71,30 >> Head to Darkcloud Pinnacle
step
    #completewith next
    .goto Thousand Needles,33.08,35.33,20,0
    .goto Thousand Needles,32.78,32.24,20,0
    .goto Thousand Needles,32.03,31.36,20,0
    .goto Thousand Needles,32.37,28.64,20,0
    .goto Thousand Needles,32.60,27.51,20,0
    .goto Thousand Needles,34.87,31.76,20,0
    .goto Thousand Needles,34.15,35.77,20,0
    .goto Thousand Needles,33.32,36.24,20 >> Travel up Darkcloud Pinnacle
step
    .train 425882,1
    .goto Thousand Needles,39.44,41.98
    .aura 435218 >>|cRXP_WARN_Use the|r |T133291:0|t[Offering to the Wind Spirit] |cRXP_WARN_near the|r |cRXP_PICK_Altar of the Wind Spirit|r
    >>|cRXP_WARN_The Altar is located behind the hut on the most Eastern pinnacle|r
    .use 213737
step
    .goto Thousand Needles,40.43,43.29
    >>Jump down to show your faith to the Wind Spirit to receive the |T134419:0|t|cRXP_FRIENDLY_Rune of Decoys|r
    >>|cRXP_WARN_Make sure your|r |T133291:0|t[Offering to the Wind Spirit] |cRXP_WARN_doesn't wear off. It lasts for 30 seconds|r
    .collect 213096,1 --Rune of Decoys (1x)
step
    .train 425882 >>|cRXP_WARN_Use the|r |T134419:0|t|cRXP_FRIENDLY_Rune of Decoys|r |cRXP_WARN_to learn|r |T134508:0|t[Decoy Totem]
    .use 213096
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune & Books Guide
#subgroup Boots
#title Spirit of the Alpha
#name Spirit of the Alpha - 27 (Thousand Needles)

-- Spirit of the Alpha

step
    .train 410103,1
    .zone Thousand Needles >>Travel to |cFFfa9602Thousand Needles|r
step
    #completewith next
    .train 410103,1
    .goto Thousand Needles,46.17,52.95,20 >>Travel to the start of the lower bride just south of Freewind Post
step
    .train 410103,1
    .goto Thousand Needles,46.82,53.52
    >>|cRXP_WARN_Use|r |T136095:0|t[Ghost Wolf] |cRXP_WARN_to jump down carefully toward the|r |cRXP_PICK_Weathered Cache|r
    >>Click the |cRXP_PICK_Weathered Cache|r to loot |T136095:0|t|cRXP_FRIENDLY_Echo of the Alpha|r
    .collect 206985,1
step
    .train 410103 >>|cRXP_WARN_Use the|r |T136095:0|t|cRXP_FRIENDLY_Echo of the Alpha|r |cRXP_WARN_to learn|r |T408696:0|t[Spirit of the Alpha]
    .use 206985
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP Rune & Books Guide
#subgroup Bracers
#title Rolling Thunder
#name Rolling Thunder - 41 (Tanaris)

-- Rolling Thunder
-- PERMOK: Needs better waypoints

step
    #completewith next
    .zone Tanaris >>Travel to Tanaris
    .train 432236,1
step
    .train 432236,1
    .goto Tanaris,43.0,41.2
    .aura 446888,1 >>|cRXP_WARN_Click on the|r |cRXP_PICK_Odd Totem|r. This will transform you into a Ghost Wolf |cRXP_WARN_and increases your damage taken by 50%|r
step
    .train 432236,1
    >>|cRXP_WARN_Run towards the other totem while avoiding mobs.|r Loot the appearing chest for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Rolling Thunder|r]
    *|cRXP_WARN_You are receiving 50% additional damage. Be careful!|r. You can also pre-clear the mobs on the path to the other totem
    .goto Tanaris,45.6,37.8
    .collect 220613,1
step
    .itemcount 220613,1
    .use 220613
    .train 432236 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Rolling Thunder|r] |cRXP_WARN_to learn|r |T136111:0|t[Rolling Thunder]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP Rune & Books Guide
#subgroup Bracers
#title Static Shock
#name Static Shock - 44 (Feralas)

-- PERMOK: Needs better waypoints

step
    #completewith ChargedAir
    +|cRXP_WARN_You have to be in a group with another player who can help you in order to obtain this rune|r
step
    #completewith next
    .zone Feralas >>Travel to Feralas
    .train 432238,1
step
    .train 432238,1
    .goto Feralas,60.0,66.8
    .aura 447259 >>Click on the |cRXP_PICK_Charged Totem|r to get the |T136075:0|t[Charged Air] buff
step
    #label ChargedAir
    .train 432238,1
    >>|cRXP_WARN_Stay near the totem and kill the surrounding |cRXP_ENEMY_Gordunni Ogres|r with LIGHTNING DAMAGE (e.g. Lightning Shield) until the |cRXP_ENEMY_Whirling Tempest|r spawns.
    >>Kill the |cRXP_ENEMY_Whirling Tempest|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Static Shock|r]
    *|cRXP_WARN_All players of the party have to stay in range of the totem|r
    .goto Feralas,60.0,66.8
    .collect 220614,1
    .mob Whirling Tempest
    .mob Gordunni Warlock
    .mob Gordunni Shaman
    .mob Gordunni Mauler
step
    .itemcount 220614,1
    .use 220614
    .train 432238 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Static Shock|r] |cRXP_WARN_to learn|r |T237587:0|t[Static Shock]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP Rune & Books Guide
#subgroup Helmet
#title Tidal Waves
#name Tidal Waves - 42 (Feralas)

-- PERMOK: Needs better waypoints

step
    #completewith next
    .zone Feralas >>Travel to Feralas
    .train 432234,1
step
    .train 432234,1
    >>Click on the |cRXP_PICK_Old Crate|r behind the tent to loot the |T134239:0|t[Old Key]
    .goto Feralas,76.6,48.0
    .collect 221497,1
step
    .train 432234,1
    >>Click on the |cRXP_PICK_Old Chest|r at the seafloor to loot the |T134419:0|t[|cRXP_FRIENDLY_Rune of Tidal Waves|r]
    *|cRXP_WARN_Be careful! This will summon FOUR |cRXP_ENEMY_Simmering Elementals|r (lvl 42, Frost immune)|r
    .goto Feralas,79.2,49.4
    .collect 220612,1
    .mob Simmering Elemental
step
    .itemcount 220612,1
    .use 220612
    .train 432234 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Tidal Waves|r] |cRXP_WARN_to learn|r |T237590:0|t[Tidal Waves]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP Rune & Books Guide
#subgroup Bracers
#title Tidal Waves
#name Tidal Waves - 45 (Azeroth)

--x shiek: needs better coordinates
step
    #completewith next
    .zone Tanaris >>Travel to Tanaris
    .train 432241,1
step
    #loop
    .goto Tanaris,51.6,44.2,40,0
    .goto Tanaris,51.2,52.0,40,0
    .goto Tanaris,41.0,48.6,40,0
    .goto Tanaris,41.8,44.0,40,0
    >>Kill |cRXP_ENEMY_Blisterpaw Hyena|r, |cRXP_ENEMY_Land Rager|r and |cRXP_ENEMY_Glasshide Gazer.|r Loot them for |cRXP_LOOT_|T134327:0|tSmudged Shaman's Notes|r
    .collect 221352,1 --1/1 Smudged Shaman's Notes
    .mob Blisterpaw Hyena
    .mob Land Rager
    .mob Glasshide Gazer
    .train 432241,1
step
    .goto Tanaris,62,64
    >>Click on |cRXP_PICK_|T134327:0|tSmudged Shaman's Notes|r to start the quest.
    .accept 82072,1 >>Accept Purging Earth
    .use 221352
    .train 432241,1
step
    .isOnQuest 82072
    .goto Tanaris,62,64
    .cast 446581 >>Use |T134743:0|t[Murky Earth Sapta] near the Corrupted Earth Totem.
    .use 221349
    .train 432241,1
step
    .goto Tanaris,62.0,62.6
    >>Kill |cRXP_ENEMY_Corrupt Moderate Manifestation of Earth|r then >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moderate Manifestation of Earth.|r
    .turnin 82072 >>Turn in Purging Earth
    .accept 82075 >>Accept Answering Earth's Call
    .mob Corrupt Moderate Manifestation of Earth
    .target Moderate Manifestation of Earth
    .train 432241,1
step
    #completewith next
    .zone Azshara >>Travel to Azshara
    .train 432241,1
step
    #loop
    .goto Azshara,19.4,64.0,20,0
    .goto Azshara,21.2,60.8,20,0
    .goto Azshara,21.0,60.0,20,0
    >>Kill |cRXP_ENEMY_Haldarr Satyr|r, |cRXP_ENEMY_Haldarr Trickster|r and |cRXP_ENEMY_Haldarr Felsworn.|r Loot them for |cRXP_LOOT_|T134331:0|tWaterlogged Shaman's Notes|r
    .collect 221351,1 --1/1 Waterlogged Shaman's Notes
    .mob Haldarr Satyr
    .mob Haldarr Trickster
    .mob Haldarr Felsworn
    .train 432241,1
step
    .goto Azshara,14,49
    >>Click on |cRXP_PICK_|T134331:0|tWaterlogged Shaman's Notes|r to start the quest.
    .accept 82073,1 >>Accept Cleansing Water
    .use 221352
    .train 432241,1
step
    .isOnQuest 82073
    .goto Azshara,14,49
    .cast 446581 >>Use |T134743:0|t[Murky Earth Sapta] near the Corrupted Water Totem.
    .use 221348
    .train 432241,1
step
    .goto Azshara,15.0,49.8
    >>Kill |cRXP_ENEMY_Corrupt Moderate Manifestation of Water|r then >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moderate Manifestation of Water.|r
    .turnin 82073 >>Turn in Cleansing Water
    .accept 82076 >>Accept Answering Water's Call
    .mob Corrupt Moderate Manifestation of Water
    .target Moderate Manifestation of Water
    .train 432241,1
step
    #completewith next
    .zone The Hinterlands >>Travel to The Hinterlands
    .train 432241,1
step
    #loop
    .goto The Hinterlands,48.8,53.0,40,0
    .goto The Hinterlands,47.6,40.8,40,0
    .goto The Hinterlands,58.2,41.8,40,0
    >>Kill |cRXP_ENEMY_Green Sludge|r and |cRXP_ENEMY_Jade Ooze.|r Loot them for |cRXP_LOOT_|T134332:0|tTorn Shaman's Notes|r
    .collect 220379,1 --1/1 Torn Shaman's Notes
    .mob Green Sludge
    .mob Jade Ooze
    .train 432241,1
step
    .goto The Hinterlands,51,46
    >>Click on |cRXP_PICK_|T134332:0|tTorn Shaman's Notes|r to start the quest.
    .accept 81960,1 >>Accept Clarifying Air
    .use 220379
    .train 432241,1
step
    .isOnQuest 82072
    .goto The Hinterlands,51,46
    .cast 446581 >>Use |T134743:0|t[Murky Earth Sapta] near the Corrupted Air Totem.
    .use 221349
    .train 432241,1
step
    .goto The Hinterlands,51.2,47.0
    >>Kill |cRXP_ENEMY_Corrupt Moderate Manifestation of Air|r then >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moderate Manifestation of Earth.|r
    .turnin 81960 >>Turn in Clarifying Air
    .accept 81968 >>Accept Answering Air's Call
    .mob Corrupt Moderate Manifestation of Air
    .target Moderate Manifestation of Air
    .train 432241,1
step
    #completewith next
    .zone Searing Gorge >>Travel to Searing Gorge
    .train 432241,1
step
    #loop
    .goto Searing Gorge,52.0,35.4,40,0
    .goto Searing Gorge,42.4,38.6,40,0
    .goto Searing Gorge,32.8,43.0,40,0
    .goto Searing Gorge,28.8,44.4,40,0
    .goto Searing Gorge,30.6,64.6,40,0
    .goto Searing Gorge,31.6,73.8,40,0
    >>Kill |cRXP_ENEMY_Magma Elemental|r and |cRXP_ENEMY_Inferno Elemental.|r Loot them for |cRXP_LOOT_|T134327:0|tCharred Shaman's Notes|r
    .collect 221350,1 --1/1 Charred Shaman's Notes
    .mob Inferno Elemental
    .mob Magma Elemental
    .train 432241,1
step
    .goto Searing Gorge,24,72
    >>Click on |cRXP_PICK_|T134329:0|tCharred Shaman's Notes|r to start the quest.
    .accept 82071,1 >>Accept Purifying Fire
    .use 221352
    .train 432241,1
step
    .isOnQuest 82072
    .goto Searing Gorge,24,72
    .cast 446581 >>Use |T134743:0|t[Murky Earth Sapta] near the Corrupted Fire Totem.
    .use 221349
    .train 432241,1
step
    .goto Searing Gorge,24.0,72.4
    >>Kill |cRXP_ENEMY_Corrupt Moderate Manifestation of Fire|r then >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moderate Manifestation of Fire.|r
    .turnin 82071 >>Turn in Purifying Fire
    .accept 82074 >>Accept Answering Fire's Call
    .mob Corrupt Moderate Manifestation of Fire
    .target Moderate Manifestation of Fire
    .train 432241,1
step
    #completewith next
    .zone Feralas >>Travel to Feralas
    .train 432241,1
step
    #loop
    .goto Feralas,50.2,51.4,20,0
    .goto Feralas,44.8,46.2,20,0
    .goto Feralas,41.0,37.8,20,0
    .goto Feralas,37.4,33.0,20,0
    >>Kill |cRXP_ENEMY_Sea Spray|r and |cRXP_ENEMY_Sea Elemental.|r Loot them for |cRXP_LOOT_|T132849:0|tElemental Essence|r
    .collect 220510,3
    .train 432241,1
step
    .cast 446803 >>Use |T134118:0|t[Fragment of Earth]
    .use 221355
    .train 432241,1
step
    .goto Feralas,36.0,32.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moderate Manifestation of Earth.|r
    .turnin 82075 >> Answering Earth's Call
    .target Moderate Manifestation of Earth
    .train 432241,1
step
    #loop
    .goto Feralas,37.4,33.0,20,0
    .goto Feralas,41.0,37.8,20,0
    .goto Feralas,44.8,46.2,20,0
    .goto Feralas,50.2,51.4,20,0
    >>Kill |cRXP_ENEMY_Sea Spray|r and |cRXP_ENEMY_Sea Elemental.|r Loot them for |cRXP_LOOT_|T132849:0|tElemental Essence|r
    .collect 220510,3
    .train 432241,1
step
    .cast 446802 >>Use |T134130:0|t[Fragment of Fire]
    .use 221353
    .train 432241,1
step
    .goto Feralas,36.0,32.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moderate Manifestation of Earth.|r
    .turnin 82075 >> Answering Earth's Call
    .target Moderate Manifestation of Earth
    .train 432241,1
step
    #loop
    .goto Feralas,50.2,51.4,20,0
    .goto Feralas,44.8,46.2,20,0
    .goto Feralas,41.0,37.8,20,0
    .goto Feralas,37.4,33.0,20,0
    >>Kill |cRXP_ENEMY_Sea Spray|r and |cRXP_ENEMY_Sea Elemental.|r Loot them for |cRXP_LOOT_|T132849:0|tElemental Essence|r
    .collect 220510,3
    .train 432241,1
step
    .cast 445748 >>Use |T134133:0|t[Fragment of Air]
    .use 220375
    .train 432241,1
step
    .goto Feralas,36.0,32.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moderate Manifestation of Earth.|r
    .turnin 82075 >> Answering Earth's Call
    .target Moderate Manifestation of Earth
    .train 432241,1
step
    #loop
    .goto Feralas,37.4,33.0,20,0
    .goto Feralas,41.0,37.8,20,0
    .goto Feralas,44.8,46.2,20,0
    .goto Feralas,50.2,51.4,20,0
    >>Kill |cRXP_ENEMY_Sea Spray|r and |cRXP_ENEMY_Sea Elemental.|r Loot them for |cRXP_LOOT_|T132849:0|tElemental Essence|r
    .collect 220510,3
    .train 432241,1
step
    .cast 446804 >>Use |T134089:0|t[Fragment of Water]
    .use 221354
    .train 432241,1
step
    .goto Feralas,36.0,32.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moderate Manifestation of Earth.|r
    .turnin 82075 >> Answering Earth's Call
    .target Moderate Manifestation of Earth
    .train 432241,1
step
    >>Kill |cRXP_ENEMY_Twilight Dark Shaman.|r Loot him for |cRXP_LOOT_|cRXP_FRIENDLY_|T134419:0|tRune of Overcharged|r|r
    .collect 220616,1 --1/1 Rune of Overcharged
    .train 432241,1
step
    .train 432241 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Overcharged|r] |cRXP_WARN_to train|r |T132213:0|t[Overcharged]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP Rune & Books Guide
#subgroup Cloak
#title Storm, Earth, and Fire
#name Storm, Earth, and Fire - 52 (Felwood)

step
    .train 440634,1
    #completewith next
    .zone Felwood >>Travel to Felwood
step
    .goto Felwood,62.4,9.0
    .train 440634,1
    >>Kill |cRXP_ENEMY_Deadwood Shamans|r, |cRXP_ENEMY_Deadwood Avengers|r and |cRXP_ENEMY_Deadwood Den Watchers|r. Loot them for the |T134918:0|t[|cRXP_LOOT_Voltaic Icon|r]
    .goto Feralas,76.6,48.0
    .collect 225838,1
    .mob Deadwood Shaman
    .mob Deadwood Avenger
    .mob Deadwood Den Watcher
step
    .train 440634,1
    .equip 18,225838 >> |cRXP_WARN_Equip the|r |T134918:0|t[|cRXP_LOOT_Voltaic Icon|r]
    .use 225838
step
    .train 440634,1
    .aura 408828 >>|cRXP_WARN_You must now kill 3 enemies with a single cast of|r |T136015:0|t[Chain Lightning]
    >>|cRXP_WARN_Pull 3 mobs and lower their health to roughly 5% each then cast|r |T136015:0|t[Chain Lightning]
step
    .itemcount 225838,1
    .use 225838
    .train 440634 >>|cRXP_WARN_Use the|r |T134918:0|t[|cRXP_LOOT_Voltaic Icon|r] |cRXP_WARN_to learn|r |T237588:0|t[Storm, Earth, and Fire]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP Rune & Books Guide
#subgroup Cloak
#title Coherence
#name Coherence - 55 (Burning Steppes)

step
    .train 416062,1
    #completewith next
    .zone Burning Steppes >>Travel to Burning Steppes
step
    .train 416062,1
    #loop
    .goto Burning Steppes,62.4,9.0,60,0
    .goto Burning Steppes,69.4,31.8,60,0
    .goto Burning Steppes,61.4,31.8,60,0
    .goto Burning Steppes,51.2,35.6,60,0
    .goto Burning Steppes,55.6,49.2,60,0
    .goto Burning Steppes,54.8,62.2,60,0
    .goto Burning Steppes,35.6,61.6,60,0
    .goto Burning Steppes,41.6,43.6,60,0
    >>Kill |cRXP_ENEMY_Greater Obsidian Elementals|r. Loot them for the |cRXP_LOOT_Molten Obsidian Core|r
    .collect 225676,1
    .mob Greater Obsidian Elemental
step
    .train 416062,1
    .goto Redridge Mountains,44.6,50.0
    >>|cRXP_WARN_You now have 10 minutes to jump into water anywhere in the world|r
    >>|cRXP_WARN_Travel to Redridge Mountains and jump into the lake|r
    >>|cRXP_WARN_If you Hearthstone is near water you may also do that instead|r
    >>|cRXP_WARN_Jumping into water will transform the |cRXP_LOOT_Molten Obsidian Core|r into a|r |T237477:0|t[|cRXP_LOOT_Sooty Obsidian Core|r]
    .collect 225675,1
step
    .train 416062,1
    .use 225675 >> |cRXP_WARN_Open the|r |T237477:0|t[|cRXP_LOOT_Sooty Obsidian Core|r] |cRXP_WARN_to receive the|r |T134419:0|t[|cRXP_LOOT_Rune of Composure|r]
    .collect 225740,1
step
    .itemcount 225740,1
    .use 225740
    .train 416062 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_LOOT_Rune of Composure|r] |cRXP_WARN_to learn|r |T237586:0|t[Coherence]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP Rune & Books Guide
#subgroup Cloak
#title Feral Sprit
#name Feral Sprit - 60 (Winterspring)

step
    .train 440630,1
    #completewith next
    .zone Winterspring >>Travel to Winterspring
    >>|cRXP_WARN_Note you must kill a level 60 elite. Consider bringing a friend|r
step
    #completewith next
    .goto Winterspring,67.93,41.44,50 >> Enter the Yeti cave
step
    .goto Winterspring,69.87,37.92
    >>|cRXP_WARN_Travel to the back of the Yeti cave and talk to the chained elemental|r |cRXP_FRIENDLY_Frijidar|r
    >>|cRXP_WARN_He will become hostile after a few seconds|r
    >>Kill |cRXP_ENEMY_Frijidar|r. Loot it for the |T134419:0|t[|cRXP_LOOT_Rune of the Bound Spirit|r]
    .collect 225914,1
    .mob Frijidar
    .skipgossip
step
    .itemcount 225914,1
    .use 225914
    .train 440630 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_LOOT_Rune of the Bound Spirit|r] |cRXP_WARN_to learn|r |T237577:0|t[Feral Spirit]
]])
