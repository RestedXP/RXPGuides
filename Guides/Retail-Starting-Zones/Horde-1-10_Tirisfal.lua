RXPGuides.RegisterGuide([[
#df
#version 2
#group RestedXP Starting Zones
#subgroup Undead Starting Zones
#name 1 Undead Starting Zone
#displayname Chapter 1 - Deathknell
#next 2 Undead Eversong Woods
#defaultfor Undead

<< Horde !DK

step << Undead
    .zoneskip 1727
    #completewith TirisfalFistQuestCheck
    +Welcome to the |cfff78300Undead Starting Zone Guide|r of RestedXP.
    *This route is up to 50% slower than |cfff78300Exiles Reach|r regardless of the available consumables/heirlooms. For faster leveling recreate your character and choose |cfff78300Exiles Reach|r instead.
step << Undead
    .zoneskip 1727,1
    +You are in Exiles Reach but the current Guide is for the Undead Starting Zone.
    +Please choose the Exiles Reach Guide.
step
    #completewith next
    +|cRXP_WARN_If you want to make the most of RXP; Press Escape -> Options -> Keybindings -> RestedXP Guides -> Select and Bind Active Button 1,2,3 and 4. You can also do this with Targets.|r
    *This will allow you to press a Keybind to use a Quest Items/target a relevant mob
step
    #label TirisfalFistQuestCheck
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agatha|r
    .goto 465,40.8,78.5
    .accept 24959 >>Accept Fresh out of the Grave
    .target Agatha
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Undertaker Mordo|r
    .goto 465,43.4,79.9
    .turnin 24959 >>Turn in Fresh out of the Grave
    .accept 28608 >>Accept The Shadow Grave
    .target Undertaker Mordo
step
    >>|cRXP_WARN_Follow the arrow down into the grave|r and loot the |cRXP_LOOT_twine|r and the |cRXP_LOOT_fluid|r
    .goto 18,30.33,72.24,4,0
    .goto 18,30.32,72.84,4,0
    .goto 18,30.00,72.84,4,0
    .goto 18,29.7,72.0
    .complete 28608,2 --1/1 Corpse-Stitching Twine
    .complete 28608,1 --1/1 Thick Embalming Fluid
step
    #completewith next
    .goto 18,30.00,72.84,4,0
    .goto 18,30.32,72.84,4 >>Leave the grave
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Undertaker Mordo|r
    .goto 465,43.4,79.9
    .turnin 28608 >>Turn in The Shadow Grave
    .accept 26799 >>Accept Those That Couldn't Be Saved
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caretaker Caice|r
    .goto 465,45.91,80.46
    .accept 24960 >>Accept The Wakening
step
    #sticky
    #label tirisfal26799
    >>Kill |cRXP_ENEMY_Mindless Zombies|r while speaking with the undead
    .goto 465,44.4,73.9,0,0
    .complete 26799,1 --6/6 Mindless Zombie slain
    .mob Mindless Zombie
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Redpath|r
    .goto 465,46.6,71.1
    .skipgossip
    .complete 24960,2 --1/1 Speak with Marshal Redpath
    .target Marshal Redpath
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian Voss|r
    .goto 465,44.2,70.6
    .skipgossip
    .complete 24960,1 --1/1 Speak with Lilian Voss
    .target Lilian Voss
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valdred Moray|r
    .goto 465,40.7,73.0
    .skipgossip
    .complete 24960,3 --1/1 Speak with Valdred Moray
    .target Valdred Moray
step
    #requires tirisfal26799
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Undertaker Mordo|r
    .goto 465,43.43,79.91
    .turnin 26799 >>Turn in Those That Couldn't Be Saved
    .target Undertaker Mordo
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caretaker Caice|r
    .goto 465,45.9,80.5
    .turnin 24960 >>Turn in The Wakening
    .accept 25089 >>Accept Beyond the Graves
    .target Caretaker Caice
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Priest Sarvis|r
    .goto 465,49.08,58.83,5,0
    .goto 465,46.6,58.8
    .accept 26801 >>Accept Scourge on our Perimeter
    .target Shadow Priest Sarvis
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Saltain|r
    .goto 465,49.08,58.83,5,0
    .goto 465,49.90,56.38
    .turnin 25089 >>Turn in Beyond the Graves
    .accept 26800 >>Accept Recruitment
    .target Deathguard Saltain
step << Warlock
    #completewith next
    +|cRXP_WARN_Reminder: Use |T136218:0|t[Summon Imp] to summon your pet|r
step
    #completewith next
    >>Kill |cRXP_ENEMY_Wretched Ghouls|r and |cRXP_ENEMY_Rattlecage Skeletons|r
    .goto 465,51.61,47.23,0,0
    .complete 26801,1 --8/8 Deathknell Scourge slain
    .mob Wretched Ghoul
    .mob Rattlecage Skeleton
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_FRIENDLY_Scarlet Corpses|r. |cRXP_WARN_Wait for Darneli to pick up the corpse before clicking on the next one|r
    .goto 465,47.58,48.29,15,0
    .goto 465,54.14,43.99,15,0
    .goto 465,53.74,51.00,10,0
    .goto 465,47.58,48.29
    .complete 26800,1 --6/6 Scarlet Corpses gathered
    .target Scarlet Corpse
step
    >>Kill |cRXP_ENEMY_Wretched Ghouls|r and |cRXP_ENEMY_Rattlecage Skeletons|r
    .goto 465,51.61,47.23
    .complete 26801,1 --8/8 Deathknell Scourge slain
    .mob Wretched Ghoul
    .mob Rattlecage Skeleton
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Saltain|r
    .goto 465,49.9,56.7
    .turnin 26800 >>Turn in Recruitment
    .target Deathguard Saltain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Priest Sarvis|r
    .goto 465,46.6,58.8
    .turnin 26801 >>Turn in Scourge on our Perimeter
    .accept 28651 >>Accept Novice Elreth
    .target Shadow Priest Sarvis
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Novice Elreth|r
    .goto 465,46.8,58.2
    .turnin 28651 >>Turn in Novice Elreth
    .accept 24961 >>Accept The Truth of the Grave
    .target Novice Elreth
step
    --TODO: Add gossipoption
    .goto 465,52.38,56.41,2,0
    .goto 465,54.36,56.96,6,0
    .goto 465,46.75,58.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEnter the house and talk to |cRXP_FRIENDLY_Lilian Voss|r. 
    >>|cRXP_WARN_She can be down or upstairs. After talking to her (during the roleplay) you can already leave the house and return to |cRXP_FRIENDLY_Novice Elreth|r|r
    .skipgossip
    .complete 24961,1 --1/1 Show Lilian her reflection
    .target Lilian Voss
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Novice Elreth|r
    .goto 465,46.7,58.2
    .turnin 24961 >>Turn in The Truth of the Grave
    .accept 28672 >>Accept The Executor In the Field
    .target Novice Elreth
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Arren|r
    .goto 465,55.5,37.8
    .turnin 28672 >>Turn in The Executor In the Field
    .accept 26802 >>Accept The Damned
    .target Executor Arren
step << Hunter
    #completewith next
    .cast 1515 >>Tame a |cRXP_ENEMY_Ragged Scavenger|r
    .mob Ragged Scavenger
step
    >>Kill |cRXP_ENEMY_Mangy Duskbats|r and |cRXP_ENEMY_Ragged Savengers|r around you. Loot them for their |cRXP_LOOT_paws|r and |cRXP_LOOT_wings|r
    .goto 465,63.26,27.68,15,0
    .goto 465,64.45,22.78,15,0
    .goto 465,59.24,21.36,25,0
    .goto 465,49.41,21.94
    .complete 26802,1 --4/4 Scavenger Paw
    .complete 26802,2 --4/4 Duskbat Wing
    .mob Mangy Duskbat
    .mob Ragged Scavenger
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Arren|r
    .goto 465,55.5,37.7
    .turnin 26802 >>Turn in The Damned
    .accept 24973 >>Accept Night Web's Hollow
    .target Executor Arren
step
    #completewith next
    >>On your way to the mine kill some |cRXP_ENEMY_Young Night Web Spiders|r
    .complete 24973,1 --8/8 Young Night Web Spider slain
    .mob Young Night Web Spider
step
    >>Kill |cRXP_ENEMY_Night Web Spiders|r inside the mine
    .goto 465,30.18,30.58,10,0
    .goto 466,62.9,58.0,10,0
    .goto 466,45.27,69.84,10,0
    .goto 466,48.41,51.43,10,0
    .goto 466,62.09,58.59,10,0
    .complete 24973,2 --5/5 Night Web Spider slain
    .mob Night Web Spider
step
    >>Leave the mine and kill the remaining |cRXP_ENEMY_Young Night Web Spiders|r
    .goto 465,37.36,26.16
    .complete 24973,1 --8/8 Young Night Web Spider slain
    .mob Young Night Web Spider
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Arren|r
    .goto 465,55.5,37.8
    .turnin 24973 >>Turn in Night Web's Hollow
    .accept 24970 >>Accept No Better Than the Zombies
    .target Executor Arren
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darnell|r
    .goto 465,67.1,42.4
    .turnin 24970 >>Turn in No Better Than the Zombies
    .accept 24971 >>Accept Assault on the Rotbrain Encampment
    .target Darnell
step
    #completewith next
    >>Kill |cRXP_ENEMY_Rotbrain Berserker|r and |cRXP_ENEMY_Rotbrain Magus'|r. |cRXP_WARN_Focus undeads that are already fighting|r
    .goto 465,74.1,66.0,0,0
    .complete 24971,2 --8/8 Rotbrain undead slain
    .mob Rotbrain Berserker
    .mob Robrain Magus
step
    >>Kill |cRXP_ENEMY_Marshal Redpath|r
    .goto 465,70.08,69.65
    .complete 24971,1 --1/1 Marshal Redpath slain
    .mob Marshal Redpath
step
    >>Kill |cRXP_ENEMY_Rotbrain Berserker|r and |cRXP_ENEMY_Rotbrain Magus'|r. |cRXP_WARN_Focus undeads that are already fighting|r
    .goto 465,74.1,66.0
    .complete 24971,2 --8/8 Rotbrain undead slain
    .mob Rotbrain Berserker
    .mob Robrain Magus
step
    .isOnQuest 24971
    >>Follow the arrow, look out for the rare Fangor. Loot him for a |cRXP_LOOT_bag|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Priest Sarvis|r
    .goto 465,61.88,82.00,5,0
    .goto 465,62.58,78.73,5,0
    .goto 465,46.6,58.8
    .turnin 24971 >>Turn in Assault on the Rotbrain Encampment
    .accept 24972 >>Accept Vital Intelligence
    .target Shadow Priest Sarvis
]])

RXPGuides.RegisterGuide([[
#df
#version 2
#group RestedXP Starting Zones
#name 2 Undead Eversong Woods
#displayname Chapter 2 - Eversong Woods
#next RestedXP Horde 10-60\1 BfA Intro
#subgroup Undead Starting Zones
#defaultfor Undead

<< Horde !DK

step
    .itemcount 132516,1
    #completewith next
    .cast 202844 >>Use |T1405809:0|t[Gunshoes]
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tRun and talk to |cRXP_FRIENDLY_Deathguard Simmer|r
    .isQuestComplete 24972
    .goto 465,77.35,17.75,20,0
    .goto 18,44.75,53.67
    .turnin 24972 >>Turn in Vital Intelligence
    .target Deathguard Simmer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Simmer|r and |cRXP_FRIENDLY_Apothecary Johaan|r
    .accept 24978 >>Accept Reaping the Reapers
    .goto 18,44.75,53.67
    .accept 24975 >>Accept Fields of Grief
    .goto 18,44.61,53.79
    .target Deathguard Simmer
    .target Apothecary Johaan
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tGo upstairs and talk to |cRXP_FRIENDLY_Sedrick Calston|r
    .goto 18,44.48,53.86,4,0
    .goto 18,44.74,53.65
    .accept 24974 >>Accept Ever So Lonely
    .target Sedrick Calston
step
    #completewith next
    .goto 18,40.33,51.42,0
    .goto 18,40.33,51.42,10 >>Check for a possible chest
step
    #completewith next
    >>Kill |cRXP_ENEMY_Tirisfal Farmers|r
    >>Look out for the rares |cRXP_ENEMY_Shadowstalker|r and |cRXP_ENEMY_Farmer Solliden|r.
    .link https://i.imgur.com/lc7y3b4.jpeg >>You can attack |cRXP_ENEMY_Shadowstalker|r from the position shown in the screenshot
    .goto 18,40.33,51.42,0
    .goto 18,37.91,51.27,0,0
    .complete 24978,1 --10/10 Tirisfal Farmer slain
    .mob Tirisfal Farmer
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tPick up the |cRXP_LOOT_Tirifal Pumpkins|r
    .goto 18,36.82,51.45,20,0
    .goto 18,35.57,51.12,20,0
    .goto 18,36.68,49.50,20,0
    .goto 18,36.48,50.85
    .complete 24975,1 --10/10 Tirisfal Pumpkin
step
    >>Kill |cRXP_ENEMY_Tirisfal Farmers|r
    >>Look out for the rares |cRXP_ENEMY_Shadowstalker|r and |cRXP_ENEMY_Farmer Solliden|r
    .goto 18,40.33,51.42,0
    .goto 18,37.91,51.27,0,0
    .complete 24978,1 --10/10 Tirisfal Farmer slain
    .mob Tirisfal Farmer
step << Warlock/Hunter
    #completewith next
    +|cfff78300Set your pet to passive by clicking on 'Passive' in your pet bar or in your spell book in the Pet tab|r
step
    >>Attack a |cRXP_ENEMY_Vile Fin Murloc|r until it runs away then use the |T133802:0|t[Murloc Leash]. |cRXP_WARN_You mustn't kill it|r
    >>Look out for the rare |cRXP_ENEMY_Muad|r
    .use 52059
    .goto 18,35.8,43.4
    .complete 24974,1 --1/1 Vile Fin captured
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Puddlejumper
step << Warlock/Hunter
    #completewith next
    +|cRXP_WARN_Reminder:Set your pet to back to 'Assist'|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Simmer|r and |cRXP_FRIENDLY_Apothecary Johaan|r
    >>Look out for |cRXP_ENEMY_Bayne|r on your way back
    .goto 18,45.30,49.37,15,0
    .unitscan Bayne
    .turnin 24978 >>Turn in Reaping the Reapers
    .goto 18,44.75,53.68
    .turnin 24975 >>Turn in Fields of Grief
    .goto 18,44.61,53.78
    .target Deathguard Simmer
    .target Apothecary Johaan
step
    >>Go upstairs to return the murloc
    .goto 18,44.48,53.86,4,0
    .goto 18,44.76,53.56
    .complete 24974,2 --1/1 Vile Fin returned
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sedrick Calston|r
    .goto 18,44.75,53.65
    .turnin 24974 >>Turn in Ever So Lonely
    .target Sedrick Calston
step
    #completewith next
    .goto 18,44.46,53.30,5,0
    .goto 18,44.07,58.24
    .deathskip >> Pull some mobs and deathskip to Brill
step
    #completewith next
    .goto 18,60.81,51.93,5,0
    .goto 18,60.87,51.51
    .home >>Set your Hearthstone to Brill
step
    .zoneskip 18,1
    >>To Silvermoon:
    .goto 18,60.98,58.84,6,0
    .goto 18,61.52,59.01,6,0
    .goto 18,60.73,58.68
    .zone 85 >>1) Climb the tower and take the portal to Orgrimmar
step
    .goto 85,56.03,88.28
    .zone 110 >>2) Take the portal to Silvermoon
step
    .itemcount 132516,1
    #completewith next
    .cast 202844 >>Use |T1405809:0|t[Gunshoes] in Silvermoon
step
    #completewith next
    .goto 110,57.57,24.59,5,0
    .goto 110,75.57,59.24,15,0
    .goto 110,73.52,59.20,15,0
    .goto 94,56.43,50.12
    .goto 94,54.4,50.7
    .fp >>Get the Eversong Woods Flight Path
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Jaela|r
    .goto 94,50.33,50.77
    .accept 8475 >>Accept The Dead Scar
    .target 8475
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skymaster Skyles|r
    .goto 94,46.55,49.08,10,0
    .goto 94,46.24,46.79
    .fp >>Get the Falconwing Square Flight Path
    .target Skymaster Skyles
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Jaronis|r
    .goto 94,47.26,46.32
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Jaronis|r
    .goto 94,47.26,46.30
    .turnin 8472 >>Turn in Major Malfunction
    .accept 8895 >>Accept Delivery to the North Sanctum
    .target Magister Jaronis
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ley-Keeper Caidanis|r
    .goto 94,44.63,53.13
    .turnin 8895 >>Turn in Delivery to the North Sanctum
    .accept 9119 >>Accept Malfunction at the West Sanctum
    .target Ley-Keeper Caidanis
step
    .itemcount 132516,1
    #completewith next
    .cast 202844 >>Use |T1405809:0|t[Gunshoes]
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ley-Keeper Caidanis|r
    .goto 94,36.7,57.44
    .turnin 9119 >>Turn in Malfunction at the West Sanctum
    .accept 8486 >>Accept Arcane Instability
    .target Ley-Keeper Caidanis
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
    .xp <10-1600,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Landra Dawnstrider|r
    .goto 94,44.03,70.76
    .accept 9254 >>Accept The Wayward Apprentice
    .target Magistrix Landra Dawnstrider
    step << Hunter/Warlock
    #completewith next
    +|cRXP_WARN_Reminder: Resummon your pet and set it to 'Assist'|r
step
    .isOnQuest 9254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Mirveda|r
    .goto 94,54.28,70.98
    .turnin 9254 >>Turn in The Wayward Apprentice
    .accept 8487 >>Accept Corrupted Soil
    .target Apprentice Mirveda
step
    .isOnQuest 8487
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tPick up the |cRXP_LOOT_Tainted Soil Samples|r from the ground
    .goto 94,52.34,71.77,20,0
    .goto 94,51.92,68.47,20,0
    .goto 94,52.59,69.60,10,0
    .goto 94,53.75,69.89,10,0
    .goto 94,52.36,69.80
    .complete 8487,1 --8/8 Tainted Soil Sample
step
    .isQuestComplete 8487
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Mirveda|r
    .goto 94,54.28,70.98
    .turnin 8487 >>Turn in Corrupted Soil
    .target Apprentice Mirveda
step
    .isQuestTurnedIn 8487
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWait for around 5 seconds and talk to |cRXP_FRIENDLY_Apprentice Mirveda|r again
    .goto 94,54.28,70.98
    .accept 8488 >>Accept Unexpected Results
    .target Apprentice Mirveda
step
    .isOnQuest 8488
    >>Kill |cRXP_ENEMY_Gharsul the Remorseless|r. You can kite him back to |cRXP_FRIENDLY_Apprentice Mirveda|r
    .goto 94,53.68,69.76
    .complete 8488,2 --1/1 Gharsul the Remorseless slain
    .mob Gharsul the Remorseless
step
    .isQuestComplete 8488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Mirveda|r
    .goto 94,54.28,70.98
    .turnin 8488 >>Turn in Unexpected Results
    .accept 9255 >>Accept Research Notes
    .target Apprentice Mirveda
step << Warlock/Hunter
    #completewith next
    +|cRXP_WARN_Set your pet to 'Passive'|r
step
    .isOnQuest 9255
    #completewith next
    .goto 94,51.47,80.11,20,0
    .deathskip >>Pull some mobs and die
step
    .isOnQuest 9255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Landra Dawnstrider|r
    .goto 94,44.02,70.77
    .turnin 9255 >>Turn in Research Notes
    .target Magistrix Landra Dawnstrider
step
    #completewith next
    .goto 94,43.95,69.98
    .fp >>Get the Fairbreeze Village Flight Path
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skymaster Brightdawn|r
    .goto 94,43.95,69.98
    .fly Falconwing Square >>Fly to Falconwing Square
    .target Skymaster Brightdawn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeldon Sunbrand|r
    .goto 94,48.17,46.00
    .turnin 8482 >>Turn in Incriminating Documents
    .target Aeldon Sunbrand
step
    #completewith next
    .hs >>Hearth to Brill
step
    >>To Orgrimmar:
    .goto 18,60.98,58.84,6,0
    .goto 18,61.52,59.01,6,0
    .goto 18,60.73,58.68
    .zone 85 >>1) Climb the tower and take the portal to Orgrimmar
]])
