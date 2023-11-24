RXPGuides.RegisterGuide([[
#df
#version 2
#group RestedXP Starting Zones
#subgroup Blood Elf Starting Zones
#name 1 Blood Elf Starting Zone
#displayname Chapter 1 - Sunstrider Isle
#next 2 Blood Elf Eversong Woods
#defaultfor BloodElf

<< Horde !DK

step
    .zoneskip 1727
    #completewith SunstriderIsleFirstQuestCheck
    +Welcome to the |cfff78300Blood Elf Starting Zone|r Guide of RestedXP.
    *This route is roughly 10-20 minutes slower than |cfff78300Exiles Reach|r. For faster leveling recreate your character and choose |cfff78300Exiles Reach|r instead.
step
    .zoneskip 1727,1
    +You are in Exiles Reach but the current Guide is for the |cfff78300Blood Elf Starting Zone|r.
    +Please choose the Exiles Reach Guide.
step
    #completewith next
    +|cRXP_WARN_If you want to make the most of RXP; Press Escape -> Options -> Keybindings -> RestedXP Guides -> Select and Bind Active Button 1,2,3 and 4. You can also do this with Targets.|r
    *This will allow you to press a Keybind to use a Quest Items/target a relevant mob
step
    #label SunstriderIsleFirstQuestCheck
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Erona|r
    .goto 467,61.04,45.13
    .accept 8325 >>Accept Reclaiming Sunstrider Isle
    .target Magistrix Erona
step
    >>Kill |cRXP_ENEMY_Mana Wyrms|r
    .goto 467,60.6,52.5
    .complete 8325,1 --6/6 Mana Wyrm slain
    .mob Mana Wyrm
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Erona|r
    .goto 467,61.0,45.1
    .turnin 8325 >>Turn in Reclaiming Sunstrider Isle
    .accept 8326 >>Accept Unfortunate Measures
    .target Magistrix Erona
step
    >>Kill |cRXP_ENEMY_Springpaw Cubs|r and |cRXP_ENEMY_Springpaw Lynx|r. Loot them for their |cRXP_LOOT_collars|r
    .goto 467,65.77,39.97,20,0
    .goto 467,68.40,37.61,20,0
    .goto 467,63.49,33.62,30,0
    .goto 467,68.13,34.18
    .complete 8326,1 --8/8 Lynx Collar
    .mob Springpaw Cub
    .mob Springpaw Lynx
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Erona|r
    .goto 467,61.0,45.1
    .turnin 8326 >>Turn in Unfortunate Measures
    .accept 8327 >>Accept Report to Lanthan Perilon
    .target Magistrix Erona
step << Warlock
    #completewith next
    +|cfff78300Reminder: Use |T136218:0|tSummon Imp to summon your pet|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWalk up the ramp and talk to |cRXP_FRIENDLY_Well Watcher Solanian|r
    .goto 467,65.18,45.72,5,0
    .goto 467,65.81,44.45,5,0
    .goto 467,65.43,42.94,5,0
    .goto 467,64.49,42.17,5,0
    .goto 467,63.9,42.8
    .accept 37442 >>Accept The Shrine of Dath'Remar
    .accept 37443 >>Accept Solanian's Belongings
    .target Well Watcher Solanian
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Ithanas|r
    .goto 467,61.8,39.3
    .accept 37440 >>Accept A Fistful of Slivers
    .target Arcanist Ithanas
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Helion|r
    .goto 467,58.45,38.79
    .accept 37439 >>Accept Thirst Unending
    .target Arcanist Helion
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanthan Perilon|r
    .goto 467,52.9,49.8
    .turnin 8327 >>Turn in Report to Lanthan Perilon
    .accept 8334 >>Accept Aggression
    .target Lanthan Perilon
step
    #sticky
    #label EversongWoodsArcaneSilver
    >>Kill |cRXP_ENEMY_Mana Wyrms|r. Loot them for the |cRXP_LOOT_silver|r
    .goto 467,50.15,40.74
    .complete 37440,1 --6/6 Arcane Sliver
    .mob Mana Wyrm
step
    >>Use |T136222:0|t[Arcane Torrent] next to a |cRXP_ENEMY_Mana Wyrms|r
    .goto 467,53.1,40.5
    .complete 37439,1 --1/1 Arcane Torrent unleashed
step
    #requires EversongWoodsArcaneSilver
    #completewith EversongWoodsSecondBelonging
    >>Kill |cRXP_ENEMY_Tenders|r and |cRXP_ENEMY_Feral Tenders|r on the side
    .complete 8334,2 --7/7 Feral Tender slain
    .complete 8334,1 --7/7 Tender slain
    .mob Tender
    .mob Feral Tender
step
    #requires EversongWoodsArcaneSilver
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the glowing |cRXP_LOOT_Shrine of Dath'Remar|r
    .goto 467,35.3,40.2
    .complete 37442,1 --1/1 Shrine of Dath'Remar Read
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tPick up the |cRXP_LOOT_Scroll of Scourge Magic|r on the ground
    .goto 467,40.4,50.5
    .complete 37443,2 --1/1 Scroll of Scourge Magic
step
    #label EversongWoodsSecondBelonging
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tPick up the |cRXP_LOOT_Solanian's Srying Orb|r
    .goto 467,52.2,69.4
    .complete 37443,1 --1/1 Solanian's Scrying Orb
step
    >>Kill |cRXP_ENEMY_Tenders|r and |cRXP_ENEMY_Feral Tenders|r
    .goto 467,54.76,70.68
    .complete 8334,2 --7/7 Feral Tender slain
    .complete 8334,1 --7/7 Tender slain
    .mob Tender
    .mob Feral Tender
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tPick up |cRXP_LOOT_Solanian's Journal|r on the ground
    .goto 467,60.1,57.1
    .complete 37443,3 --1/1 Solanian's Journal
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanthan Perilon|r
    .goto 467,52.9,49.8
    .turnin 8334 >>Turn in Aggression
    .accept 8335 >>Accept Felendren the Banished
    .target Lanthan Perilon
step
    #completewith EversongWoodsFelendrenHead
    >>Kill |cRXP_ENEMY_Arcane Wraiths|r and |cRXP_ENEMY_Tainted Arcane Wraith|r while going up the academy
    .complete 8335,1 --8/8 Arcane Wraith slain
    .complete 8335,2 --2/2 Tainted Arcane Wraith slain
    .mob Arcane Wraith
    .mob Tainted Arcane Wraith
step
    #completewith EversongWoodsFelendrenHead
    .goto 467,41.59,61.88,15,0
    .goto 467,42.40,66.28,15,0
    .goto 467,44.01,69.31,5,0
    .goto 467,43.05,71.29,5,0
    .goto 467,41.12,71.24,15,0
    .goto 467,41.00,72.53,5,0
    .goto 467,40.35,73.98,5,0
    .goto 467,39.12,74.24,5,0
    .goto 467,38.00,73.02,5,0
    .goto 467,37.80,69.96,15,0
    .goto 467,38.43,65.79,10,0
    .goto 467,40.17,64.78,8,0
    .goto 467,40.01,62.64,8,0
    .goto 467,37.86,60.95,5,0
    .goto 467,36.69,61.87,5,0
    .goto 467,36.34,63.76,5,0
    .goto 467,37.98,66.43,8 >>Follow the way up
step
    >>Kill a |cRXP_ENEMY_Tainted Arcane Wraith|r. Loot it for the |cRXP_LOOT_Tainted Arcane Sliver|r. Click it in your bags
    .collect 20483,1,8338,1
    .accept 8338 >>Accept Tainted Arcane Sliver
    .mob Tainted Arcane Wraith
step
    #label EversongWoodsFelendrenHead
    >>Kill |cRXP_ENEMY_Felendren the Banished|r. Loot him for his |cRXP_LOOT_head|r.
    .goto 467,38.92,63.98
    .complete 8335,3 --1/1 Felendren's Head
    .mob Felendren the Banished
step
    >>Kill a |cRXP_ENEMY_Tainted Arcane Wraith|r. Loot it for the |cRXP_LOOT_Tainted Arcane Sliver|r. Click it in your bags
    .collect 20483,1,8338,1
    .accept 8338 >>Accept Tainted Arcane Sliver
    .mob Tainted Arcane Wraith
step
    .isQuestComplete 8335
    #completewith next
    .goto 467,39.87,59.96
    .deathskip >> Run down (DON'T JUMP) to die
step
    .isQuestComplete 8335
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Helion|r
    .goto 467,58.5,38.8
    .turnin 8338 >>Turn in Tainted Arcane Sliver
    .turnin 37439 >>Turn in Thirst Unending
    .target Arcanist Helion
step
    .isOnQuest 8338
    #sticky
    #label EversongWoodsArcaneWraith
    >>Kill |cRXP_ENEMY_Arcane Wraiths|r and |cRXP_ENEMY_Tainted Arcane Wraith|r
    .goto 467,36.49,62.42,10,0
    .loop 15,467,35.95,62.37,33.98,60.95,33.30,57.44,35.22,55.35,37.68,57.26,41.53,61.92,42.39,66.27,44.03,69.13,43.00,71.32,41,32,71.70,39.72,74.29,38.05,73.09,37.83,70.00,38.26,66.85
    .complete 8335,1 --8/8 Arcane Wraith slain
    .complete 8335,2 --2/2 Tainted Arcane Wraith slain
    .mob Arcane Wraith
    .mob Tainted Arcane Wraith
step
    .isOnQuest 8338
    >>Kill a |cRXP_ENEMY_Tainted Arcane Wraith|r. Loot it for the |cRXP_LOOT_Tainted Arcane Sliver|r. Click it in your bags
    .collect 20483,1,8338,1
    .accept 8338 >>Accept Tainted Arcane Sliver
    .mob Tainted Arcane Wraith
step
    .isOnQuest 8338
    #requires EversongWoodsArcaneWraith
    #completewith next
    .goto 467,41.44,51.44
    .deathskip >> Pull mobs, die, ress at the spirit healer
step
    .isOnQuest 8338
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Helion|r
    .goto 467,58.5,38.8
    .turnin 8338 >>Turn in Tainted Arcane Sliver
    .turnin 37439 >>Turn in Thirst Unending
    .target Arcanist Helion
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Ithanas|r
    .goto 467,61.8,39.3
    .turnin 37440 >>Turn in A Fistful of Slivers
    .target Arcanist Ithanas
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_WARN_Walk up the ramp|r and talk to |cRXP_FRIENDLY_Well Watcher Solanian|r
    .goto 467,62.74,45.12,5,0
    .goto 467,65.29,45.79,10,0
    .goto 467,65.50,42.88,5,0
    .goto 467,63.97,42.83
    .turnin 37442 >>Turn in The Shrine of Dath'Remar
    .turnin 37443 >>Turn in Solanian's Belongings
    .target Well Watcher Solanian
step
    #completewith next
    .goto 467,63.04,43.06
    .vendor
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanthan Perilon|r
    .goto 467,52.9,49.78
    .turnin 8335 >>Turn in Felendren the Banished
    .accept 8347 >>Accept Aiding the Outrunners
    .target Lanthan Perilon
]])

RXPGuides.RegisterGuide([[
#df
#version 2
#group RestedXP Starting Zones
#name 2 Blood Elf Eversong Woods
#displayname Chapter 2 - Eversong Woods
#next RestedXP Horde 10-60\1 BfA Intro
#subgroup Blood Elf Starting Zones
#defaultfor BloodElf

<< Horde !DK

step << Hunter
    #completewith next
    .goto 467,58.74,57.51
    .cast 1515 >>Tame a |cRXP_ENEMY_Mana Wyrm|r with your ability |T132164:0|t[Tame Beast]
step
    .isOnQuest 8347
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Outrunner Alarion|r
    .goto 94,40.42,32.21
    .turnin 8347 >>Turn in Aiding the Outrunners
    .accept 9704 >>Accept Slain by the Wretched
    .target Outrunner Alarion
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tInteract with the slain Outrunner on the ground
    .goto 94,42.02,35.65
    .turnin 9704 >>Turn in Slain by the Wretched
    .accept 9705 >>Accept Package Recovery
    .target Slain Outrunner
step
    #completewith next
    .goto 94,44.11,38.15,15,0
    .goto 94,45.01,37.49
    .deathskip >>Pull some mobs, die, then release and ress at the spirit healer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Jaela|r
    .goto 94,50.33,50.77
    .accept 8475 >>Accept The Dead Scar
    .target Ranger Jaela
step << Warlock/Hunter
    #completewith next
    +|cRXP_WARN_Reminder: Resummon your pet after a deathskip|r
step
    >>Kill |cRXP_ENEMY_Plaguebone Pillagers|r
    .goto 94,50.17,55.05
    .complete 8475,1 --8/8 Plaguebone Pillager slain
    .mob Plaguebone Pillager
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Jaela|r
    .goto 94,50.33,50.77
    .turnin 8475 >>Turn in The Dead Scar
    .target Ranger Jaela
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skymaster Skyles|r
    .goto 94,46.53,48.61,20,0
    .goto 94,46.2,46.8
    .fp >>Get the Ruins of Silvermoon Flight Path
    .target Skymaster Skyles
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Jaronis|r
    .goto 94,47.25,46.30
    .accept 8472 >>Accept Major Malfunction
    .target Magister Jaronis
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the wanted board
    .goto 94,48.16,46.31
    .accept 8468 >>Accept WANTED: Thaelis the Hungerer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeldon Sunbrand|r
    .goto 94,48.17,46.0
    .accept 8463 >>Accept Unstable Mana Crystals
    .target Aeldon Sunbrand
step
    #completewith next
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on |cRXP_LOOT_Unstable Mana Crystal Crates|r to collect them
    .complete 8463,1 --6/6 Unstable Mana Crystal
step
    #completewith next
    >>Kill |cRXP_ENEMY_Acrane Patrollers|r. Loot them for their |cRXP_LOOT_cores|r
    .goto 94,46.94,44.59,15,0
    .goto 94,47.69,39.02,15,0
    .goto 94,47.11,37.44,15,0
    .goto 94,46.53,35.16,30,0
    .complete 8472,1 --6/6 Arcane Core
    .mob Arcane Patroller
step
    >>Kill |cRXP_ENEMY_Thaelis|r. Loot him for his |cRXP_LOOT_head|r
    .goto 94,45.36,38.12,5,0
    .goto 94,45.01,37.68
    .complete 8468,1 --1/1 Thaelis' Head
    .mob Thaelis
step
    >>Kill |cRXP_ENEMY_Acrane Patrollers|r. Loot them for their |cRXP_LOOT_cores|r
    .goto 94,45.39,40.64,20,0
    .goto 94,42.18,40.59
    .complete 8472,1 --6/6 Arcane Cores
    .mob Arcane Patroller
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on |cRXP_LOOT_Unstable Mana Crystal Crates|r to collect them
    .goto 94,45.13,40.71,18,0
    .goto 94,46.01,43.29,25,0
    .goto 94,46.92,44.57,10,0
    .complete 8463,1 --6/6 Unstable Mana Crystal
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Jaronis|r
    .goto 94,47.26,46.30
    .turnin 8472 >>Turn in Major Malfunction
    .accept 8895 >>Accept Delivery to the North Sanctum
    .target Magister Jaronis
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeldon Sunbrand|r
    .goto 94,48.17,46.0
    .turnin 8463 >>Turn in Unstable Mana Crystals
    .accept 9352 >>Accept Darnassian Intrusions
    .target Aeldon Sunbrand
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Kan'ren|r
    .goto 94,47.77,46.58
    .turnin 8468 >>Turn in WANTED: Thaelis the Hungerer
    .target Sergeant Kan'ren
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sleyin|r
    .goto 94,47.07,47.49
    .vendor
    .target Sleyin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ley-Keeper Caidanis|r
    .goto 94,44.6,53.1
    .turnin 8895 >>Turn in Delivery to the North Sanctum
    .accept 9119 >>Accept Malfunction at the West Sanctum
    .target Ley-Keeper Caidanis
step
    .itemcount 132516,1
    #completewith next
    .cast 202844 >>Use |T1405809:0|t[Gunshoes]
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ley-Keeper Velania|r
    .goto 94,36.7,57.44
    .turnin 9119 >>Turn in Malfunction at the West Sanctum
    .accept 8486 >>Accept Arcane Instability
    .target Ley-Keeper Velania
step
    #completewith next
    >>Kill a |cRXP_ENEMY_Darnassian Scout|r. Loot him for the |cRXP_LOOT_Incriminating Documents|r. Click it in your bags
    .goto 94,36.4,60.7,20,0
    .goto 94,34.65,62.03,20,0
    .collect 20765,1,8482,1
    .accept 8482 >>Accept Incriminating Documents
    .complete 9352,1 --1/1 Intruder Defeated
    .mob Darnassian Scout
step
    >>Kill |cRXP_ENEMY_Mana Stalker|r and |cRXP_ENEMY_Manawraiths|r
    .goto 94,33.69,61.69,15,0
    .goto 94,34.50,57.84,20,0
    .goto 94,35.66,58.00
    .complete 8486,2 --5/5 Mana Stalker slain
    .complete 8486,1 --5/5 Manawraith slain
    .mob Mana Stalker
    .mob Manawraith
step
    >>Kill a |cRXP_ENEMY_Darnassian Scout|r. Loot him for the |cRXP_LOOT_Incriminating Documents|r. Click it in your bags
    .goto 94,36.4,60.7,20,0
    .goto 94,34.65,62.03,20,0
    .collect 20765,1,8482,1
    .accept 8482 >>Accept Incriminating Documents
    .complete 9352,1 --1/1 Intruder Defeated
    .mob Darnassian Scout
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ley-Keeper Velania|r
    .goto 94,36.7,57.44
    .turnin 8486 >>Turn in Arcane Instability
    .turnin 9352 >>Turn in Darnassian Intrusions
    .target Ley-Keeper Velania
step << Warlock/Hunter
    #completewith next
    +|cRXP_WARN_Set your pet to 'Passive'|r
step
    #completewith next
    .goto 94,35.46,57.41
    .deathskip >>Pull some mobs, die and ress at the spirit healer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Landra Dawnstrider|r
    .goto 94,44.03,70.76
    .accept 9254 >>Accept The Wayward Apprentice
    .target Magistrix Landra Dawnstrider
step << Hunter/Warlock
    #completewith next
    +|cRXP_WARN_Reminder: Resummon your pet and set it to 'Assist'|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marniel Amberlight|r and |cRXP_FRIENDLY_Sathiel|r
    .accept 9358 >>Accept Ranger Sareyn
    .goto 94,43.67,71.31
    .accept 9130 >>Accept Goods from Silvermoon City
    .goto 94,43.70,71.55
    .target Marniel Amberlight
    .target Sathiel
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Sareyn|r
    .goto 94,46.93,71.79
    .turnin 9358 >>Turn in Ranger Sareyn
    .accept 9252 >>Accept Defending Fairbreeze Village
    .target Ranger Sareyn
step
    #completewith next
    >>Kill |cRXP_ENEMY_Rotlim Maurauders|r and |cRXP_ENEMY_Darkwraiths|r
    .goto 94,50.75,81.06,30,0
    .goto 94,51.00,76.81,30,0
    .goto 94,51.98,72.04,30,0
    .complete 9252,1 --4/4 Rotlimb Marauder slain
    .complete 9252,2 --4/4 Darkwraith slain
    .mob Rotlimb Marauder
    .mob Darkwraith
step
    >>|cRXP_WARN_You can die if you pull too many |cRXP_ENEMY_Rotlimb Maurauders|r|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Mirveda|r
    .goto 94,54.28,70.98
    .turnin 9254 >>Turn in The Wayward Apprentice
    .accept 8487 >>Accept Corrupted Soil
    .target Apprentice Mirveda
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tPick up the |cRXP_LOOT_Tainted Soil Samples|r from the ground
    .goto 94,52.34,71.77,20,0
    .goto 94,51.92,68.47,20,0
    .goto 94,52.59,69.60,10,0
    .goto 94,53.75,69.89,10,0
    .goto 94,52.36,69.80
    .complete 8487,1 --8/8 Tainted Soil Sample
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Mirveda|r
    .goto 94,54.28,70.98
    .turnin 8487 >>Turn in Corrupted Soil
    .target Apprentice Mirveda
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWait for around 5 seconds and talk to |cRXP_FRIENDLY_Apprentice Mirveda|r again
    .goto 94,54.28,70.98
    .accept 8488 >>Accept Unexpected Results
    .target Apprentice Mirveda
step
    >>Kill |cRXP_ENEMY_Gharsul the Remorseless|r. You can kite him back to |cRXP_FRIENDLY_Apprentice Mirveda|r
    .goto 94,53.69,69.71,10,0
    .goto 94,54.28,70.98
    .complete 8488,2 --1/1 Gharsul the Remorseless slain
    .mob Gharsul the Remorseless
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Mirveda|r
    .goto 94,54.28,70.98
    .turnin 8488 >>Turn in Unexpected Results
    .accept 9255 >>Accept Research Notes
    .target Apprentice Mirveda
step
    >>Kill |cRXP_ENEMY_Rotlim Maurauders|r and |cRXP_ENEMY_Darkwraiths|r
    .goto 94,51.98,72.04,30,0
    .goto 94,51.00,76.81
    .complete 9252,1 --4/4 Rotlimb Marauder slain
    .complete 9252,2 --4/4 Darkwraith slain
    .mob Rotlimb Marauder
    .mob Darkwraith
step << Warlock/Hunter
    #completewith next
    +|cRXP_WARN_Set your pet to 'Passive'|r
step
    #completewith next
    .goto 94,51.47,70.39
    .deathskip >>Pull some mobs around you and die at the waypoint location. Rotlimb Maraudurs are really good at killing you
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Sareyn|r
    .goto 94,46.93,71.79
    .turnin 9252 >>Turn in Defending Fairbreeze Village
    .target Ranger Sareyn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Landra Dawnstrider|r
    .goto 94,44.03,70.76
    .turnin 9255 >>Turn in Research Notes
    .target Magistrix Landra Dawnstrider
step << Hunter/Warlock
    #completewith next
    +|cRXP_WARN_Reminder: Resummon your pet and set it to 'Assist'|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skymaster Brightdawn|r
    .goto 94,43.94,69.99
    .turnin 9130 >>Turn in Goods from Silvermoon City
    .target Skymaster Brightdawn
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skymaster Brightdawn|r
    .goto 94,43.95,69.98
    .fly Falconwing Square >>Fly to Falconwing Square
    .target Skymaster Brightdawn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeldon Sunbrand|r
    .goto 94,47.80,47.65,5,0
    .goto 94,48.16,46.0
    .turnin 8482 >>Turn in Incriminating Documents
    .target Aeldon Sunbrand
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skymaster Skyles|r
    .goto 94,46.25,46.80
    .fly Silvermoon City >>Fly to Silvermoon City
    .target Skymaster Skyles
step
    .goto 94,56.39,50.57,15,0
    .goto 110,72.71,59.22,20,0
    .goto 110,76.28,59.20,20,0
    .goto 110,76.06,52.10,20,0
    .goto 110,56.39,23.23,20,0
    .goto 110,58.55,18.65
    .zone 85 >>|cRXP_WARN_Mount up|r. Take the portal to Orgrimmar
]])
