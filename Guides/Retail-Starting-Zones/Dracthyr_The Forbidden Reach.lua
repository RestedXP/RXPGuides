RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Starting Zones
#subgroup Dracthyr Starting Zones
#name Retail-Dracthyr_The Forbidden Reach
#displayname Dracthyr Starting Zone
#next Dragonflight 60-70\1) The Waking Shores Campaign

<<Dracthyr

step
    .goto 2109,46.73,78.71
    .accept 64864>> Accept Awaken, Dracthyr
step
    #completewith DrakthyrIntroduction
    +Welcome to the Drakthyr Guide of RestedXP.
step
    #label DrakthyrIntroduction
    >>Interact with Kodethi or Dervishian in front of you. Wait for your Disintegrate to complete.
    .goto 2109,47.50,84.52,-1
    .goto 2109,46.28,79.52,-1
    .goto 2109,42.91,77.49,-1
    .goto 2109,39.59,79.71,-1
    .goto 2109,38.20,84.72,-1
    .goto 2109,43.03,91.77,-1
    .goto 2109,46.34,89.49,-1
    .complete 64864,1 --1/1 Dracthyr ally awakened
step
    #completewith TheForbiddenReachAwakenDracthyr
    +|cfff78300Spamming Space while moving is faster than moving normally|r
step
    >>Jump down and interact with Tethalash. Wait for your Disintegrate to complete.
    .goto 2109,44.36,85.54
    .complete 64864,3 --1/1 Tethalash awakened
step
    >>Interact with the bones on the bed
    .goto 2109,47.95,79.94
    .complete 64864,2 --1/1 Kethahn found
step
    >>Interact with Azurathel. Wait for your Disintegrate to complete.
    .goto 2109,46.83,81.83,5,0
    .goto 2109,39.18,82.11,5,0
    .goto 2109,34.26,81.08,5,0
    .goto 2109,32.15,82.73
    .complete 64864,4 --1/1 Azurathel awakened
step
    #label TheForbiddenReachAwakenDracthyr
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Azurathel and Dervishian after a short roleplay
    .turnin 64864 >>Turn in Awaken, Dracthyr
    .accept 64865 >>Accept Gear Up
    .goto 2109,32.92,81.57
    .accept 64863 >>Accept Arcane Guardians
    .goto 2109,33.08,80.67
step
    #completewith next
    .goto 2109,35.81,73.85
    .cast 6478 >>Pick up the Crystal Key and place it into the Crystal Focus next to it
step
    .goto 2109,38.29,74.52
    .turnin 66010 >>Pick up the Mysterious Wand on the table
step
    #sticky
    #label TheForbiddenReachArcaneGuardians
    >>Focus |cff00ecffAncient Constructs|r. Run away when they hit 40% (they splinter and spawn two small adds)
    .complete 64863,1 --4/4 Guardians or Constructs slain
step
    >>Pick up the Stack of Weapons
    .goto 2109,38.05,65.56,6,0
    .goto 2109,43.27,63.85,6,0
    .goto 2109,45.04,66.23
    .complete 64865,1 --1/1 Stack of Weapons
step
    >>Pick up the Rations
    .goto 2109,43.54,63.77,6,0
    .goto 2109,43.54,63.77,6,0
    .goto 2109,34.25,61.10
    .complete 64865,3 --1/1 Bundle of Rations collected
step
    >>Pick up the Crate
    .goto 2109,36.45,61.32,6,0
    .goto 2109,39.54,54.9,6,0
    .goto 2109,38.78,51.35
    .complete 64865,2 --1/1 Crate of Warscales
step
    #requires TheForbiddenReachArcaneGuardians
    #completewith next
    +You can skip the next cutscene (Esc -> Yes)
step
    #requires TheForbiddenReachArcaneGuardians
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Dervishian and Scalecommander Azurathel
    .goto 2109,39.75,54.98,6,0
    .goto 2109,43.89,59.14,6,0
    .turnin 64863 >>Turn in Arcane Guardians
    .goto 2109,45.82,58.56
    .turnin 64865 >>Turn in Gear Up
    .accept 64866 >>Accept Into the Cauldron
    .goto 2109,46.45,57.07
step
    #completewith next
    +Check your Bags for new Equipment
step
    >>Use |T4622464:0|tLiving Flame to heal injured Drakthyr's in the area
    .goto 2109,55.54,45.41,15,0
    .goto 2109,53.46,39.05,25,0
    .goto 2109,59.21,50.57,25,0
    .goto 2109,62.73,50.29,25,0
    .goto 2109,64.09,43.09,25,0
    .goto 2109,58.3,41.21
    .complete 64866,1 --1/1 Glide into the Earth-Warder's Cauldron
    .complete 64866,2 --5/5 Dracthyr rescued or healed with Living Flame
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Azurathel and Scalecommander Cindrethresh
    .turnin 64866 >>Turn in Into the Cauldron
    .goto 2109,61.98,36.25
    .accept 64871 >>Accept The Dragon at the Door
    .goto 2109,62.34,36.41
step
    #completewith next
    +Check your Bags for new Equipment
step
    >>Make sure to complete 'Exit reached' before killing the dragon
    .goto 2109,66.4,10.69
    .complete 64871,1 --Exit reached
step
    >>Kill |cff00ecffLapisagos|r. The small elementals give you a damage buff on death
    .goto 2109,66.4,10.69
    .complete 64871,2 --1/1 Lapisagos slain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Cindrethresh and Scalecommander Azurathel
    >>|cfff78300Cancel the "Chocking Buff" to increase movement speed|r
    .turnin 64871 >>Turn in The Dragon at the Door
    .accept 64872 >>Accept The Fire Within
    .goto 2118,44.39,61.51
    .accept 65615 >>Accept Arcane Intrusion
    .goto 2118,44.10,61.38
step
    #completewith TheForbiddenReachTheFireWithin3
    +Check your bags for new equipment
step
    #completewith TheForbiddenReachTheFireWithin
    +|cfff78300You can click on the Fire Breath Infusers to reset your Fire Breath cooldown|r
step
    #label TheForbiddenReachTheFireWithin3
    >>Cast |T4622458:0|tFire Breath and hold it until you reach the last empowerement section
    .goto 2118,43.78,61.29
    .complete 64872,3 --Cast an Empowered III Fire Breath
step
    >>Cast |T4622458:0|tFire Breath and hold it until you reach the |cfff78300second|r empowerement section
    .goto 2118,43.78,61.29
    .complete 64872,2 --Cast an Empowered II Fire Breath
step
    #completewith next
    +You can skip the next cutscene (Esc -> Yes)
step
    >>Interact with the Beacon
    .goto 2118,45.42,53.71
    .complete 65615,1 --1/1 Beacon investigated
step
    #label TheForbiddenReachTheFireWithin
    >>Cast |T4622458:0|tFire Breath (don't hold down the button)
    .goto 2118,44.41,57.63
    .complete 64872,1 --Cast an Empowered I Fire Breath
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Cindrethresh and Scalecommander Azurathel
    .turnin 64872 >>Turn in The Fire Within
    .goto 2118,44.40,61.50
    .turnin 65615 >>Turn in Arcane Intrusion
    .goto 2118,44.09,61.36
step
    #completewith next
    #sticky
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Fusethrian
    .goto 2118,43.42,60.80
    .home >>Set your Hearthstone to The Old Weyrn Grounds
step
    .goto 2118,44.54,61.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Emberthal
    .accept 64873 >>Accept Stretch Your Wings
step
    #completewith next
    +Check your Bags for new Equipment
step
    >>Use the |cffffff00[ExtraActionButton]|r to teleport right infront of the NPC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Dervishian
    .goto 2118,44.73,57.65
    .use 195044
    .complete 64873,1 --1/1 Learn about coasting
step
    #completewith next
    +Check your Spellbook for Soar
step
    >>Use |T4622485:0|tSoar
    .complete 64873,2 --Cast Soar
step
    >>Use the Soaring Abilties "Surge Forward" (1) and "Skyward Ascent" (2). |cfff78300Make sure to fly through the rings|r
    .goto 2118,50.53,45.29
    .complete 64873,3 --5/5 Soared through rings
step
    #completewith next
    .cast 369536 >> Cast Soar
step
    .goto 2118,42.12,34.36
    .turnin 65909 >> Pick up the Bag of Enchanted Wind for a Movement Speed Buff
step
    #completewith next
    +Use the |cffffff00ExtraActionButton|r to get back
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kodethi
    .use 195044
    .goto 2118,41.42,48.21
    .complete 64873,4 --1/1 Learn about diving
step
    #completewith next
    .cast 369536 >> Cast Soar
step
    >>Use the Soaring Abilties "Surge Forward" (1) and "Skyward Ascent" (2). |cfff78300Make sure to fly through the rings|r
    .goto 2118,34.59,49.58
    .complete 64873,5 --5/5 Diving through rings
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Dervishian
    .goto 2118,44.71,57.64
    .complete 64873,6 --1/1 Learn about Advanced Flying
step
    #completewith next
    .cast 369536 >> Cast Soar
step
    >>Use the Soaring Abilties "Surge Forward" (1) and "Skyward Ascent" (2). |cfff78300Make sure to fly through the rings|r
    .goto 2118,52.78,35.59
    .complete 64873,7 --3/3 Soar through rings
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Dervishian
    .goto 2118,44.71,57.63
    .turnin 64873 >>Turn in Stretch Your Wings
    .accept 65036 >>Accept Train Like We Fight
step
    >>Use |T4622485:0|tSoar
    .complete 65036,1 --Practice Soar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Emberthal
    .goto 2118,44.23,61.16
    .turnin 65036 >>Turn in Train Like We Fight
    .accept 65060 >>Accept Caldera of the Menders
step
    #completewith next
    .cast 369536 >> Cast Soar and follow the arrow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Cindrethresh
    .goto 2118,36.46,32.54
    .skipgossip 1
    .complete 65060,1 --1/1 Meet Cindrethresh at the Caldera of the Menders
step
    #completewith next
    .cast 369536 >> Cast Soar and follow the arrow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk2 to Scalecommander Cindrethresh
    .goto 2118,18.81,15.82
    .turnin 65060 >>Turn in Caldera of the Menders
    .accept 65063 >>Accept Into the Hive
step
    >>|cfff78300DON'T FOLLOW HIM|r. Just follow the arrow to fill the progress bar by standing in the gas.
    .goto 2110,84.91,77.00
    .complete 65063,1 --1/1 Follow Cindrethresh
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Viridia and Scalecommander Cindrethresh
    .turnin 65063 >>Turn in Into the Hive
    .accept 65073 >>Accept A Toxic Problem
    .goto 2118,20.08,19.08
    .accept 65074 >>Accept Easy Prey
    .goto 2118,20.22,19.00
step
    #completewith next
    +Check your Bags for new Equipment
step
    #completewith next
    +Spamming Space is faster than walking normally
step
    #completewith next
    >>Kill |cff00ecffScythid|r in the Area
    .complete 65074,1 --4/4 Scythid slain
step
    >>Kill |cff00ecffScalerenders|r in the area. Loot them for the glands
    .loop 20,2118,24.77,30.11,26.89,32.41,28.52,30.33,30.39,29.45,33.84,29.78,36.97,24.44,30.60,20.52
    .complete 65073,1 --6/6 Toxin Glands collected
step
    >>Kill |cff00ecffScythid|r in the Area
    .goto 2118,35.21,24.52,30,0
    .goto 2118,31.33,24.79,30,0
    .loop 20,2118,24.77,30.11,26.89,32.41,28.52,30.33,30.39,29.45,33.84,29.78,36.97,24.44,30.60,20.52
    .complete 65074,1 --4/4 Scythid slain
step
    #completewith next
    .cooldown spell,369536,>0,1
    .cast 369536 >> Cast Soar and follow the arrow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Cindrethresh and Scalecommander Viridia
    .goto 2118,20.59,17.44,30,0
    .turnin 65074 >>Turn in Easy Prey
    .goto 2118,20.23,19.01
    .turnin 65073 >>Turn in A Toxic Problem
    .accept 65307 >>Accept Mercy First
    .goto 2118,20.07,19.08
step
    #completewith next
    +Check your Bags for new Equipment
    *Check your Spellbook for Emerald Blossom and Fury of the Aspect(if you are 60)
step
    >>Use |T4622457:0:0|t[Emerald Blossom] on any |cff00ff00Injured Drakonid|r. Interact with the Emerald Blossom Infuser to reset your cooldown
    *Alternatively use |T4622464:0:0|t[Living Flame]
    .complete 65307,3 --1/1 Atrenosh Hailstone healed
    .goto 2118,24.90,13.59
    .complete 65307,2 --4/4 Injured drakonid healed
    .goto 2118,24.90,13.59
step
    >>Use |T4622457:0:0|t[Emerald Blossom] on any |cff00ff00Injured Drakonid|r. Interact with the Emerald Blossom Infuser to reset your cooldown
    *Alternatively use |T4622464:0:0|t[Living Flame]
    .goto 2118,25.77,17.75,15,0
    .goto 2118,25.89,18.55,15,0
    .goto 2118,24.03,22.16,15,0
    .goto 2118,21.89,22.21
    .complete 65307,1 --10/10 Injured dracthyr healed
step
    #requires Area3
    .goto 2118,21.76,18.36,15,0
    .goto 2118,20.61,17.41,15,0
    .goto 2118,20.06,19.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Viridia
    .turnin 65307 >>Turn in Mercy First
    .accept 66324 >>Accept Never Forgotten
step
    #completewith TheForbiddenReachNeverForgotten3
    +Use the |cffffff00[ExtraActionButton]|r almost on cooldown to reduce toxicity levels
step
    >>Interact with the Report: Infestation on the Ground
    .goto 2110,66.63,67.70
    .complete 66324,2 --1/1 Clues discovered
    .use 191729
step
    >>Search Karinasa
    .goto 2110,39.43,28.74
    .complete 66324,1,1 --3/3 Horn signets collected
    .use 191729
step
    >>Search Rethenash
    .goto 2110,34.49,38.6
    .complete 66324,1,2 --3/3 Horn signets collected
    .use 191729
step
    #label TheForbiddenReachNeverForgotten3
    >>Search Tenezeth
    .goto 2110,18.66,50.86
    .complete 66324,1,3 --3/3 Horn signets collected
    .use 191729
step
    #completewith TheForbiddenReachNeverForgotten10
    +|cfff78300Only use the |cffffff00[ExtraActionButton]|r to stay at like 50-60%|r
step
    #completewith next
    .goto 2110,27.74,45.67
    .cast 6478 >>Pick up the Crystal Key on the ground
step
    #label TheForbiddenReachNeverForgotten10
    >>Place the Crystal Key in the Crystal Lock
    .goto 2110,25.6,33.76
    .complete 66324,3 --10/10 Survivors Rescued
    .use 191729
step
    #completewith next
    .goto 2110,32.46,40.74,10,0
    +|cfff78300Stop using the |cffffff00[ExtraActionButton]|r. Just let it happen! Step into a Gascloud to generate more toxicity.
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Viridia
    .goto 2118,20.07,19.08
    .turnin 66324 >>Turn in Never Forgotten
    .accept 65075 >>Accept The Healing Wings
step
    #completewith next
    +Check your Bags for new Equipment
    *Check your Spellbook for Hover
step
    >>Step into the Air Swirl to return to Scalecommander Emberthal
    .goto 2118,20.4,19.6,5,0
    .goto 2118,44.24,61.17
    .turnin 65075 >>Turn in The Healing Wings
    .accept 65045 >>Accept Stormsunder Crater
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Treysh. Choose any mount of you like (Ctrl+Click for a preview)
    .goto 2118,45.31,61.34
    .turnin 72263 >>Turn in Cavalry Has its Place
step
    #completewith TheForbiddenReachStormsunderCrater
    +|cfff78300Use the mount in your bags and drag a mount to your action bars|r
step
    #completewith next
    .cooldown spell,369536,>0,1
    .cast 369536 >>Cast Soar and follow the arrow
step
    #label TheForbiddenReachStormsunderCrater
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Azurathel and Dervishian
    .turnin 65045 >>Turn in Stormsunder Crater
    .accept 65049 >>Accept Tangle with the Tarasek
    .accept 65050 >>Accept Conjured Army
    .goto 2118,70.43,64.35
    .accept 65046 >>Accept The Primalists
    .goto 2118,70.36,64.61
step
    #completewith TheForbiddenReachThePrimalists1
    +Reminder: You can mount up now
step
    #sticky
    #label TheForbiddenReachConjuredArmy
    >>Kill |cff00ecffConjured Elementals|r
    .goto 2118,76.04,66.83,0,0
    .complete 65050,1 --12/12 Conjured elementals slain
step
    #completewith next
    >>Kill |cff00ecffTaraseks|r
    .complete 65049,1 --7/7 Tarasek slain
step
    #label TheForbiddenReachThePrimalists1
    >>Interact with the floating stones
    .goto 2118,71.87,60.20
    .complete 65046,1 --1/1 Primalist intentions discovered
step
    #completewith TheForbiddenReachThePrimalists
    .complete 65049,1 --7/7 Tarasek slain
step
    >>Interact with the floating stones
    .goto 2118,71.93,54.52
    .complete 65046,3 --1/1 Primalist leaders discovered
step
    #completewith next
    .cast 369536 >>Cast Soar and follow the arrow
step
    #label TheForbiddenReachThePrimalists
    >>Interact with the floating stones
    .goto 2118,78.25,66.47
    .complete 65046,2 --1/1 Primalist motivations discovered
step
    .goto 2118,77.71,68.82,30,0
    .goto 2118,74.28,68.59,30,0
    .goto 2118,73.49,65.82,20,0
    .goto 2118,70.78,60.33,30,0
    .goto 2118,74.91,56.79
    .complete 65049,1 --7/7 Tarasek slain
step
    #requires TheForbiddenReachConjuredArmy
    .goto 2118,79.42,62.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Dervishian and Scalecommander Azurathel
    .turnin 65046 >>Turn in The Primalists
    .turnin 65049 >>Turn in Tangle with the Tarasek
    .turnin 65050 >>Turn in Conjured Army
    .accept 65052 >>Accept The Ebon Scales
step
    #completewith next
    +Check your Bag for new Equipment
    *Check your Spellbook for new Spells
step
    #completewith next
    +You can skip the next cutscene (Esc -> Yes)
step
    >>As soon as you can see the |cffffff00[ExtraActionButon]|r, press it.
    .goto 2118,81.32,56.81
    .complete 65052,1 --1/1 Attack on Ekrazathal signaled
step
    #completewith next
    +Check your Bag for new Equipment
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Sarkareth
    .goto 2118,81.22,53.96
    .turnin 65052 >>Turn in The Ebon Scales
    .accept 65057 >>Accept Rally to Emberthal
step
    #completewith next
    .hs >>Hearth to The Forbidden Reach
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Emberthal
    .goto 2118,44.22,61.17
    *You can skip the next cutscene (Esc -> Yes)
    .turnin 65057 >>Turn in Rally to Emberthal
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Emberthal
    .goto 2118,44.83,57.69
    .accept 65701 >>Accept Preservation or Devastation
step
    >>Choose Devastation (DPS) or Preservation (Heal)
    .complete 65701,1 --1/1 Activate a Talent Spec
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Emberthal
    .goto 2118,44.83,57.69
    .turnin 65701 >>Turn in Preservation or Devastation
    .accept 65084 >>Accept The Froststone Vault
step
    #completewith next
    +Check your Bags for new Equipment
    *Check your Spellbook for new spells
step
    #completewith next
    .cast 369536 >>Cast Soar and follow the arrow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Sarkareth
    .goto 2118,56.72,28.18
    .turnin 65084 >>Turn in The Froststone Vault
    .accept 65087 >>Accept The Prize Inside
step
    >>Use Emerald Blossom and Living Flame to heal NPCs and kill enemies
    *The best way is to find a |cff00ff00Azuresworn Drakonid|r with very low HP and heal him.
    .goto 2118,54.52,31.64
    .complete 65087,1 --Froststone Vault defended (100%)
step
    #completewith next
    +You can skip the next cutscene (Esc -> Yes)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Sarkareth
    .goto 2118,56.35,28.75
    .turnin 65087 >>Turn in The Prize Inside
step
    .goto 2118,54.10,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Emberthal
    .accept 65097 >>Accept Run!
step
    #completewith TheForbiddenReachFinalOrders
    +|cfff78300Reminder: Spamming Space is faster than walking normally|r
step
    >>Immediately start running and get to Wrathion
    .goto 2118,47.02,35.52
    .complete 65097,1 --1/1 Outrun the Avatar of the Storm
step
    >>Get to Wrathion
    .goto 2118,47.75,34.69
    .complete 65097,2 --Wrathion found
step
    >>Heal Wrathion
    .goto 2118,47.09,35.38
    .complete 65097,3 --1/1 Wrathion healed
step
    .goto 2118,47.04,35.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
    .turnin 65097 >>Turn in Run!
    .accept 65098 >>Accept The Consequence of Courage
step
    >>Avoid pulling mobs
    .goto 2118,45.96,40.26
    .complete 65098,1 --1/1 Ebyssian found
step
    >>Heal Ebyssian above 90% HP with Living Flame
    .goto 2118,43.22,38.26
    .complete 65098,2 --1/1 Ebyssian healed
step
    .goto 2118,41.68,44.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Emberthal
    .turnin 65098 >>Turn in The Consequence of Courage
    .accept 65100 >>Accept Final Orders
step
    #completewith next
    +Check your Bags for new Equipment
step
    >>Follow the arrow
    .goto 2118,41.79,53.44
    .complete 65100,1 --1/1 Reach the Old Weyrn Grounds
step
    #completewith next
    +You can skip the next cutscene (Esc -> Yes)
step
    >>Run to Nozdormu
    .goto 2118,42.98,59.63,25,0
    .goto 2118,43.57,59.68
    .complete 65100,2 --1/1 Speak with Nozdormu
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Viridia
    .goto 2118,43.47,54.15
    .skipgossip 1
    .complete 65100,4 --1/1 Viridia spoken to
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sarkareth
    .goto 2118,47.06,55.88
    .skipgossip 1
    .complete 65100,3 --1/1 Sarkareth spoken to
step
    #completewith next
    +You can skip the next cutscene (Esc -> Yes)
step
    --x .goto 2118,44.65,55.16 --x maybe talent choice based?
    #label TheForbiddenReachFinalOrders
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Azurathel
    .goto 2118,44.64,55.16
    .turnin 65100 >>Turn in Final Orders
step << Alliance
    #completewith next
    +Check your Bags for new Equipment
step << Alliance
    .goto 37,32.26,49.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
    .accept 65286 >>Accept Draconic Connections
step << Alliance
    .goto 37,32.26,49.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Azurathel
    .turnin 65286 >>Turn in Draconic Connections
    .accept 66513 >>Accept Ground Leave
step << Alliance
    #sticky
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bralla Cloudwing
    >>Buy as much Flying as you can
    .goto 84,69.15,83.96,15,0
    .goto 84,67.11,83.37,15,0
    .goto 84,67.48,80.4,15,0
    .goto 84,63.71,72.3,15,0
    .goto 84,64.66,70.14,15,0
    .goto 84,68.4,75.02,15,0
    .train 34090 >> Learn Expert Riding
    .train 90265 >> Learn Master Riding
step << Alliance
    >>Follow the Waypoint
    .goto 84,62.63,77.65
    .complete 66513,2 --Visit the Bank
step << Alliance
    >>Follow the Waypoint
    .goto 84,61.60,72.29
    .complete 66513,1 --Visit the Auction House
step << Alliance
    >>Follow the Waypoint
    .goto 84,49.05,87.11
    .complete 66513,4 --Visit the Portal Room
step << Alliance
    >>Follow the Waypoint
    .goto 84,52.39,13.83
    .complete 66513,3 --Visit the Embassy
step << Alliance
    .goto 84,79.93,26.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Azurathel
    .turnin 66513 >>Turn in Ground Leave
step << Alliance
    .goto 84,79.84,27.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
    .accept 66577 >>Accept Aspectral Invitation
    .turnin 66577 >>Turn in Aspectral Invitation
    .accept 65101 >>Accept An Iconic, Draconic Look
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
    .complete 65101,1 --1/1 Speak to Wrathion
step << Alliance
    >>Follow Wrathion and Use the ExtraActionButon as soon as you can
    .goto 84,82.61,23.94
    .complete 65101,2 --1/1 Learn about visage form
    .complete 65101,3 --1/1 Assume your mortal visage
step << Alliance
    .goto 84,82.58,23.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
    .turnin 65101 >>Turn in An Iconic, Draconic Look
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Spiritwalker Ebonhorn and Scalecommander Cindrethresh
    .accept 66237 >>Accept Spiritual Allies
    .goto 1,45.62,12.89
    .turnin 66237 >>Turn in Spiritual Allies
    .accept 66534 >>Accept Ground Leave
    .goto 1,45.56,12.95
step << Horde
    #completewith next
    +|cfff78300Reminder: You can mount up again!|r
step << Horde
    .complete 66534,4 --Visit the Portal Room
    .goto 85,55.77,90.01
    .complete 66534,2 --Visit the Bank
    .goto 85,48.97,82.67
    .complete 66534,1 --Visit the Auction House
    .goto 85,53.45,74.25
    .complete 66534,3 --Visit the Embassy
    .goto 85,38.26,80.72
step << Horde
    #completewith DracthyrHordeTrainRiding
    .cooldown spell,369536,>20,1
    .cast 369536 >>Cast Soar and follow the arrow
step << Horde
    #completewith DracthyrHordeTrainRiding
    .cooldown spell,369536,<1,1
    .goto 85,43.70,67.46,5 >>Take the elevator
step << Horde
    .isOnQuest 32674
    .goto 85,48.91,59.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Maztha
    .turnin 32674 >>Turn in I Believe You Can Fly
step << Horde
    #label DracthyrHordeTrainRiding
    >>If you also want to learn Master Riding, send your Dracthyr some gold!
    .goto 85,48.91,59.23
    .train 34090 >> Learn Expert Riding
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Cindrethresh
    .goto 85,44.02,38.23
    .turnin 66534 >>Turn in Ground Leave
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ebyssian
    .goto 85,44.06,37.93
    .accept 65437 >>Accept Aspectral Invitation
step
    #completewith next
    +You can skip the next cutscene (Esc -> Yes)
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ebyssian
    .goto 85,44.06,37.93
    .skipgossip 190239,1
    .complete 65437,1 --1/1 Speak with Ebyssian
step << Horde
    .goto 85,44.07,37.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ebyssian
    .turnin 65437 >>Turn in Aspectral Invitation
    .accept 65613 >>Accept An Iconic, Draconic Look
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ebyssian
    .goto 85,44.07,37.96
    .skipgossip 190239,1
    .complete 65613,1 --1/1 Ask Ebyssian about Visage Form
step << Horde
    >>Wait for Ebyssian to finish his story
    .goto 85,44.06,37.96
    .complete 65613,2 --1/1 Learn about Visage Form
step
    >>Use the |cffffff00[ExtraActionButon]|r
    .goto 85,44.06,37.96
    .complete 65613,3 --1/1 Adopt a Visage Form
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ebyssian
    .goto 85,44.09,37.98
    .turnin 65613 >>Turn in An Iconic, Draconic Look
]])
