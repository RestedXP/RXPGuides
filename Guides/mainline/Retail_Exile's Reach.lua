RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Starting Zones
#name 1Retail_Exile's Reach
#displayname Exile's Reach
#next RestedXP Alliance 10-60\1Retail-Alliance_Darkmoon Faire << Alliance
#next RestedXP Horde 10-60\1 BfA Intro << Horde

<<!DemonHunter !DK !Kultiran !DarkIronDwarf !LightforgedDraenei !Mechagnome !VoidElf !NightBorne !HighmountainTauren !Vulpera !MagharOrc !ZandalariTroll

step << Alliance/Horde
	#completewith next
    +Welcome to RestedXP Exile's Reach Guide! This Guide is both beginner friendly and the fastest intro guide.
step << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Garrick in front of you
	.accept 56775 >> Accept Warming Up
	.target Captain Garrick
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Breka in front of you
	.accept 59926 >> Accept Warming Up
	.target Warlord Breka Grimaxe
step
    >>Use the spells on your Action Bars to Kill a Combat Dummy (ideally the closest to you)
    .complete 56775,1 << Alliance
    .complete 59926,1 << Horde
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Garrick
	.turnin 56775 >> Turn in Warming Up
	.target Captain Garrick
step << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Breka
	.turnin 59926 >> Turn in Warming Up
	.target Warlord Breka Grimaxe
step << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Cole next to the Combat Dummies
	.accept 58209 >> Accept Stand Your Ground
	.target Private Cole
step << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Throg next to the Combat Dummies
	.accept 59927 >> Accept Stand Your Ground
	.target Grunt Throg
step << Alliance
    >>Kill Private Cole
	.complete 58209,1 --1/1 Spar with Private Cole
	.target Private Cole
step << Horde
	>>Kill Grunt Throg
	.complete 59927,1 --1/1 Spar with Grunt Throg
	.target Grunt Throg
step << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Cole
    .turnin 58209 >> Turn in Stand Your Ground
	.accept 58208 >> Accept Brace for Impact
	.timer 13,Brace for Impact RP
	.target Private Cole
step << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Throg
    .turnin 59927 >>Turn in Stand Your Ground
    .accept 59928 >>Accept Brace for Impact
	.timer 13,Brace for Impact RP
	.target Grunt Throg
step << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Garrick inside the ship.
	>>Press "Escape" on your keyboard to skip the cinematic
	.turnin 58208 >>Turn in Brace for Impact
	.target Captain Garrick
step << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Breka
	>>Press "Escape" on your keyboard to skip the cinematic
    .turnin 59928 >>Turn in Brace for Impact
	.target Warlord Breka Grimaxe
step << Alliance
    .goto 1409,61.88,82.89
    >>If you don't see the Waypoint Arrow at the top middle of your screen, type /reload
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Garrick
    .accept 55122 >>Accept Murloc Mania
	.target Captain Garrick
step << Horde
    .goto 1409,61.88,82.89
    >>If you don't see the Waypoint Arrow at the top middle of your screen, type /reload
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Breka
    .accept 59929 >>Accept Murloc Mania
	.target Warlord Breka Grimaxe
step
    .goto 1409,61.23,80.35,20,0
    .goto 1409,59.84,80.37,20,0
    .goto 1409,60.02,81.97,20,0
    .goto 1409,61.75,79.36,20,0
    .goto 1409,61.12,77.68,20,0
    .goto 1409,61.23,80.35,20,0
    .goto 1409,59.84,80.37,20,0
    .goto 1409,60.02,81.97,20,0
    .goto 1409,61.75,79.36,20,0
    .goto 1409,61.12,77.68
    >>Kill Murlocs. Loot them for their First Aid Kits
    .complete 55122,1 << Alliance   --6/6 First Aid Kits recovered from defeated Murlocs
    .complete 59929,1 << Horde      --6/6 First Aid Kits recovered from defeated Murlocs
step << Alliance
    .goto 1409,61.88,82.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Garrick
    .turnin 55122 >>Turn in Murloc Mania
    .accept 54951 >>Accept Emergency First Aid
	.target Captain Garrick
step << Horde
    .goto 1409,61.88,82.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Breka
    .turnin 59929 >>Turn in Murloc Mania
    .accept 59930 >>Accept Emergency First Aid
	.target Warlord Breka Grimaxe
step
    #completewith QuestKeybindingsExile
    +If you want to make the most of RXP; Press Escape -> Options -> Keybindings -> RestedXP Guides -> Select and Bind Active Button 1,2,3 and 4. You can also do this with Targets.
    *This will allow you to press a Keybind to use a Quest Item/Target a relevant mob rather than to manually have to Right-Click it from a less convenient method
    *In Dragonflight they have added a new Quest Feature that sometimes a Right-Click on he Quest Objective is enough to use your Quest Item!
step << Alliance
    #label QuestKeybindingsExile
	>>Use the |T1387611:0|t[First Aid Kit] on Kee-La, Austin, and Bjorn on the ground around you
    .complete 54951,2 --1/1 First Aid Kit used on Kee-La
    .goto 1409,61.73,83.48,-1
    .complete 54951,3 --1/1 First Aid Kit used on Austin Huxworth
    .goto 1409,61.37,82.60,-1
    .complete 54951,1 --1/1 First Aid Kit used on Bjorn Stouthands
    .goto 1409,61.56,82.24,-1
	.use 168410 
step << Horde
    #label QuestKeybindingsExile
	>>Use the |T1387611:0|t[First Aid Kit] on Bo, Mithdran, and Lana on the ground around you
    .complete 59930,2 --1/1 First Aid Kit used on Bo
    .goto 1409,61.73,83.48,-1
    .complete 59930,3 --1/1 First Aid Kit used on Mithdran Dawntracker
    .goto 1409,61.37,82.60,-1
    .complete 59930,1 --1/1 First Aid Kit used on Lana Jordan
    .goto 1409,61.56,82.24,-1
	.use 168410 
step << Alliance
    .goto 1409,61.88,82.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Garrick
    .turnin 54951 >>Turn in Emergency First Aid
    .accept 54952 >>Accept Finding the Lost Expedition
	.target Captain Garrick
step << Horde
    .goto 1409,61.88,82.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Breka
    .turnin 59930 >>Turn in Emergency First Aid
    .accept 59931 >>Accept Finding the Lost Expedition
	.target Warlord Breka Grimaxe
step << Alliance
    .goto 1409,58.36,74.47
    >>Travel toward Alaria
    .complete 54952,1 --1/1 Travel north to find any expedition survivors
step << Horde
    .goto 1409,58.36,74.47
    >>Travel toward Won'sa
    .complete 59931,1 --1/1 Travel north to find any expedition survivors
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alaria and Garrick
    .turnin 54952 >>Turn in Finding the Lost Expedition
    .goto 1409,58.36,74.47
    .accept 55174 >>Accept Cooking Meat
    .goto 1409,58.37,74.63
	.target Alaria
	.target Captain Garrick
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Won'sa and Breka
    .turnin 59931 >>Turn in Finding the Lost Expedition
    .goto 1409,58.36,74.47
    .accept 59932 >>Accept Cooking Meat
    .goto 1409,58.37,74.63
	.target Won'sa
	.target Warlord Breka Grimaxe
step << Rogue/Warrior/Monk/Paladin
    .goto 1409,56.31,74.62,30,0
    .goto 1409,59.58,72.91,30,0
    .goto 1409,58.05,70.22,30,0
    .goto 1409,56.31,74.62,30,0
    .goto 1409,59.58,72.91,30,0
    .goto 1409,58.05,70.22
    >>Kill Coastal Albatrosses, Coastal Goats, and Prickly Porcupines. Loot them for their Meat
    .complete 55174,1 << Alliance --5/5 Raw Meat collected from wildlife
    .complete 59932,1 << Horde --5/5 Raw Meat collected from wildlife
	.target Coastal Albatross
	.target Coastal Goat
	.target Pricky Porcupine
step << !Rogue !Warrior !Monk !Paladin
    .goto 1409,59.58,72.91,30,0
    .goto 1409,58.05,70.22,30,0
    .goto 1409,56.31,74.62,30,0
    .goto 1409,59.58,72.91,30,0
    .goto 1409,58.05,70.22
    >>Kill Coastal Albatrosses, Coastal Goats, and Prickly Porcupines. Loot them for their Meat
    .complete 55174,1 << Alliance --5/5 Raw Meat collected from wildlife
    .complete 59932,1 << Horde --5/5 Raw Meat collected from wildlife
	.target Coastal Albatross
	.target Coastal Goat
	.target Pricky Porcupine
step
    .goto 1409,58.33,74.58
    >>Click the Campfire to cook the Meat
    .complete 55174,2 << Alliance --1/1 Cook the meat on the campfire
    .complete 59932,2 << Horde --1/1 Cook the meat on the campfire
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alaria and Garrick << !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alaria << Hunter
    .turnin 55174 >>Turn in Cooking Meat
    .accept 55173 >>Accept Northbound << Hunter
    .goto 1409,58.36,74.47
    .accept 59339 >>Accept Enhanced Combat Tactics << Monk
    .accept 59254 >>Accept Enhanced Combat Tactics << !Hunter !Monk
    .goto 1409,58.38,74.63
	.target Alaria
	.target Captain Garrick << !Hunter
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Won'sa and Breka << !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Won'sa << Hunter
    .turnin 59932 >>Turn in Cooking Meat
    .accept 59935 >>Accept Northbound << Hunter
    .goto 1409,58.36,74.47
    .accept 59934 >>Accept Enhanced Combat Tactics << Monk
    .accept 59933 >>Accept Enhanced Combat Tactics << !Hunter !Monk
    .goto 1409,58.38,74.63
	.target Won'sa
	.target Warlord Breka Grimaxe << !Hunter
step << Alliance !Hunter
    .goto 1409,57.60,72.95
    >>Follow Captain Garrick. Attack her
    >>Cast |T136207:0|tShadow Word: Pain. Apply it 3 more times before the debuff falls off << Priest
    >>Cast |T132337:0|tCharge on Garrick 3 times << Warrior
    >>Cast |T136096:0|tMoonfire on Garrick when she prompts you to  << Druid
    >>Cast |T135846:0|tFrostbolt at range, then cast |T135807:0|tFire Blast in melee range -> Repeat << Mage
    >>Cast |T136048:0|tLightning Bolt at range, then cast |T460956:0|tPrimal Strike 4 times -> Repeat << Shaman
    >>Cast |T135891:0|tCrusader Strike 3 times to build 3 Holy Power, then cast |T236265:0|tShield of the Righteous -> Repeat << Paladin
    .complete 59339,2 << Monk --3/3 Blackout Kick used on Captain Garrick
    .complete 59339,1 << Monk --6/6 Tiger Palm used on Captain Garrick
    .complete 59254,1 << !Hunter !Monk --3/3 Abilities proven against Captain Garrick
	.target Captain Garrick
step << Horde !Hunter
    .goto 1409,57.60,72.95
    >>Follow Warlord Breka Grimaxe. Attack her
    >>Cast |T136207:0|tShadow Word: Pain. Apply it 3 more times before the debuff falls off << Priest
    >>Cast |T132337:0|tCharge on Breka 3 times << Warrior
    >>Cast |T136096:0|tMoonfire on Breka when she prompts you to  << Druid
    >>Cast |T135846:0|tFrostbolt at range, then cast |T135807:0|tFire Blast in melee range -> Repeat << Mage
    >>Cast |T136048:0|tLightning Bolt at range, then cast |T460956:0|tPrimal Strike 4 times -> Repeat << Shaman
    >>Cast |T135891:0|tCrusader Strike 3 times to build 3 Holy Power, then cast |T236265:0|tShield of the Righteous -> Repeat << Paladin
    .complete 59934,2 << Monk --3/3 Blackout Kick used on Warlord Grimaxe
    .complete 59934,1 << Monk --6/6 Tiger Palm used on Warlord Grimaxe
    .complete 59933,1 << !Hunter !Monk --3/3 Abilities proven against Warlord Grimaxe
	.target Warlord Breka Grimaxe
step << Alliance !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Garrick and Alaria
    .turnin 59339 >>Turn in Enhanced Combat Tactics << Monk 
    .turnin 59254 >>Turn in Enhanced Combat Tactics << !Hunter !Monk
    .goto 1409,58.36,74.63
    .accept 55173 >>Accept Northbound
    .goto 1409,58.36,74.48
	.target Captain Garrick
	.target Alaria
step << Horde !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Breka and Won'sa
    .turnin 59934 >>Turn in Enhanced Combat Tactics << Monk
    .turnin 59933 >>Turn in Enhanced Combat Tactics << !Hunter !Monk
    .goto 1409,58.36,74.63
    .accept 59935 >>Accept Northbound
    .goto 1409,58.36,74.48
	.target Warlord Breka Grimaxe
	.target Won'sa
step << Alliance
    .goto 1409,62.72,69.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Austin
    .turnin 55173 >>Turn in Northbound
    .accept 59342 >>Accept Taming the Wilds << Hunter
	.timer 9,Taming the Wilds RP << Hunter
	.target Austin Huxworth
step << Horde
    .goto 1409,62.72,69.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mithdran
    .turnin 59935 >>Turn in Northbound
    .accept 55186 >>Accept Down with the Quilboar << !Hunter
    .accept 55184 >>Accept Forbidden Quilboar Necromancy << !Hunter
    .accept 59937 >>Accept Taming the Wilds << Hunter
	.timer 9,Taming the Wilds RP << Hunter
	.target Mithdran Dawntracker
step << Hunter
    .goto 1409,62.72,69.85
    >>Wait out the RP
    .complete 59342,1 << Alliance --1/1 Tame Beast learned from Mithdran
    .complete 59937,1 << Horde --1/1 Tame Beast learned from Mithdran
step << Hunter
    .goto 1409,62.62,68.23,30,0
    .goto 1409,64.22,68.26,30,0
    .goto 1409,63.60,70.74,30,0
    .goto 1409,62.62,68.23,30,0
    .goto 1409,64.22,68.26,30,0
    .goto 1409,63.60,70.74
    >>Drag |T132161:0|tCall Pet and |T132179:0|tPet Utility onto your Action Bars
	>>Cast |T132164:0|tTame Beast on a Sharpbeak Hawk to tame it. Make sure you tame a Hawk for increased movement speed
    .complete 59342,2 << Alliance --1/1 Any wildlife beast tamed
    .complete 59937,2 << Horde --1/1 Any wildlife beast tamed
	.target Sharpbeak Hawk
step << Alliance Hunter
    .goto 1409,62.72,69.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Austin
    .turnin 59342 >>Turn in Taming the Wilds
    .accept 55184 >>Accept Forbidden Quilboar Necromancy
    .accept 55186 >>Accept Down with the Quilboar
	.target Austin Huxworth
step << Horde Hunter
    .goto 1409,62.72,69.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mithdran
    .turnin 59937 >>Turn in Taming the Wilds
    .accept 59938 >>Accept Down with the Quilboar
    .accept 59939 >>Accept Forbidden Quilboar Necromancy
	.target Mithdran Dawntracker
step
    #completewith next
    >>kill Quilboar Warriors and Geomancers
    .complete 55184,1 << Alliance --7/7 Quilboar slain
    .complete 59939,1 << Horde --7/7 Quilboar slain
	.target Quilboar Warrior
	.target Quilboar Geomancer
step
    .goto 1409,60.63,61.37,25,0
    .goto 1409,58.87,63.00
    .complete 55186,1 << Alliance --1/1 Geolord Grek'og slain
    .complete 59938,1 << Horde --1/1 Geolord Grek'og slain
step
    .goto 1409,59.99,61.07,30,0
    .goto 1409,62.11,59.41,30,0
    .goto 1409,61.11,64.05,30,0
    .goto 1409,61.62,65.78,30,0
    .goto 1409,63.47,65.32,30,0
    .goto 1409,59.99,61.07,30,0
    .goto 1409,62.11,59.41,30,0
    .goto 1409,61.11,64.05,30,0
    .goto 1409,61.62,65.78,30,0
    .goto 1409,63.47,65.32
    >>kill Quilboar Warriors and Geomancers
    .complete 55184,1 << Alliance --7/7 Quilboar slain
    .complete 59939,1 << Horde --7/7 Quilboar slain
	.target Quilboar Warrior
	.target Quilboar Geomancer
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Austin and Lindie
    .turnin 55184 >>Turn in Forbidden Quilboar Necromancy
    .goto 1409,56.26,59.17
    .turnin 55186 >>Turn in Down with the Quilboar
    .accept 55193 >>Accept The Scout-o-Matic 5000
	.timer 15,Scout-o-Matic RP
    .goto 1409,56.17,59.12
	.target Austin Huxworth
	.target Lindie Springstock
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mithdran and Cork
    .turnin 59939 >>Turn in Forbidden Quilboar Necromancy
    .goto 1409,56.26,59.17
    .turnin 59938 >>Turn in Down with the Quilboar
    .accept 59940 >>Accept The Choppy Booster Mk. 5
	.timer 15,Choppy Booster RP
    .goto 1409,56.17,59.12
	.target Mithdran Dawntracker
	.target Cork Fizzlepop
step << Alliance
	#completewith next
    .goto 1409,56.08,58.81
	.vehicle >>Wait out the RP. Get into the Scoop-o-Matic 5000
	.timer 33,Scoop-o-Matic Flight RP
step << Alliance
    .goto 1409,56.08,58.81
    >>Wait out the RP on the Scoop-o-Matic. Press "Escape" on your keyboard to skip the cinematic
    .complete 55193,1 --1/1 Use the Scoop-o-Matic 5000 to scout the Area
	.timer 27,Scoop-o-Matic Flight RP
step << Horde
	#completewith next
    .goto 1409,56.08,58.81
	.vehicle >>Wait out the RP. Get into the Choppy Booster Mk. 5
	.timer 33,Choppy Booster Flight RP
step << Horde
    .goto 1409,56.08,58.81
    >>Wait out the RP on the Choppy Booster Mk. 5. Press "Escape" on your keyboard to skip the cinematic
    .complete 59940,1 --1/1 Use the Choppy Booster Mk. 5 to scout the Area
	.timer 27,Choppy Booster Flight RP
step << Alliance
    .goto 1409,56.16,59.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lindie
    .turnin 55193 >>Turn in The Scout-o-Matic 5000
    .accept 56034 >>Accept Re-sizing the Situation
	.target Lindie Springstock
step << Horde
    .goto 1409,56.16,59.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Cork
    .turnin 59940 >>Turn in The Choppy Booster Mk. 5
    .accept 59941 >>Accept Re-sizing the Situation
	.target Cork Fizzlepop
step
    #sticky
	#label Chest1
    .goto 1409,58.51,59.30
	.turnin 56579 >>Loot the Chest on the ground
step
	.goto 1409,56.63,55.46,40,0
    .goto 1409,58.51,59.30,40,0
	.goto 1409,56.63,55.46,40,0
    .goto 1409,58.51,59.30
    >>Use the |T178051:0|t[Re-Sizer v9.0.1] on Wandering Boars in melee range
    .complete 56034,1 << Alliance --3/3 Re-Sizer v9.0.1 tested on Wandering Boars
    .complete 59941,1 << Horde --3/3 Re-Sizer v9.0.1 tested on Wandering Boars
	.target Wandering Boar
    .use 178051 << Horde
    .use 170557 << Alliance
step << Alliance
	#requires Chest1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Garrick and Lindie
    .turnin 56034 >>Turn in Re-sizing the Situation
    .goto 1409,56.25,59.03
    .accept 55879 >>Accept Ride of the Scientifically Enhanced Boar
    .goto 1409,56.17,59.13
	.target Captain Garrick
	.target Lindie Springstock
step << Horde
	#requires Chest1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Breka and Cork
    .turnin 59941 >>Turn in Re-sizing the Situation
    .goto 1409,56.25,59.03
    .accept 59942 >>Accept The Re-Deather
    .goto 1409,56.17,59.13
	.target Warlord Breka Grimaxe
	.target Cork Fizzlepop
step << Alliance
    >>Get onto the Giant Boar
    .goto 1409,56.5,58.4
    .complete 55879,1 --1/1 Ride the Giant Boar
step << Horde
    .goto 1409,56.08,58.81
    >>Get into the Choppy Booster Mk. 5
    .complete 59942,1 --1/1 Ride the Choppy Booster Mk. 5
step << Alliance
    .goto 1409,52.59,53.34
	>>Charge Monstrous Cadavers to kill them
    .complete 55879,2 --8/8 Monstrous Cadaver slain
	.timer 13,Ride of the Boar RP
	.target Monstrous Cadaver
step << Horde
    .goto 1409,52.59,53.34
    >>Use "Re-Sizer Blast" (1) on Monstrous Cadavers
    .complete 59942,2 --8/8 Monstrous Cadaver slain
	.timer 13,The Re-Deather RP
	.target Monstrous Cadaver
step
    .goto 1409,50.94,52.78
    >>Go inside the building. Kill Torgok
    .complete 55879,3 << Alliance --1/1 Torgok slain
    .complete 59942,3 << Horde --1/1 Torgok slain
	.timer 23,Ride of the Boar RP << Alliance
	.timer 23,The Re-Deather RP << Horde
	.target Torgok
step << Alliance
    .goto 1409,52.59,53.35
    >>Wait out the RP
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Henry
	>>Press "Escape" on your keyboard to skip the cinematic
    .turnin 55879,1 >>Turn in Ride of the Scientifically Enhanced Boar
	.target Henry Garrick
step << Horde
    .goto 1409,52.59,53.35
    >>Wait out the RP
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Shuja
	>>Press "Escape" on your keyboard to skip the cinematic
    .turnin 59942,1 >>Turn in The Re-Deather
	.target Shuja Grimaxe
step << Alliance
    .goto 1409,52.35,55.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Garrick
    .accept 55194 >> Accept Stocking Up on Supplies
	.target Captain Garrick
step << Horde
    .goto 1409,52.17,55.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Breka
    .accept 59950 >>Accept Stocking Up on Supplies
	.target Warlord Breka Grimaxe
step << Alliance
    .goto 1409,52.45,55.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Richter
	>>Buy Tough Jerky or an Alliance Tabard. Sell any Trash in your bags
    .complete 55194,2 --Any Item sold to Quartermaster Richter
    .complete 55194,1 --Any Item purchased from Quartermaster Richter
	.target Quartermaster Richter
step << Horde
    .goto 1409,52.45,55.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jin'hake
	>>Buy Tough Jerky or a Horde Tabard. Sell any trash in your bags
    .complete 59950,1 -- A Purchase an item from Provisioner Jin'hake
    .complete 59950,2 -- Sell an item to Provisioner Jin'hake
	.target Provisioner Jin'hake
step << Alliance
    .goto 1409,52.35,55.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick
    .turnin 55194 >>Turn in Stocking Up on Supplies
	.target Captain Garrick
step << Horde
    .goto 1409,52.17,55.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Breka
    .turnin 59950 >>Turn in Stocking Up on Supplies
	.target Warlord Breka Grimaxe
step << Alliance Warrior/Priest/Paladin/Warlock
    .goto 1409,52.08,55.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Cole
    .accept 58914 >> Accept A Warrior's End << Warrior
    .accept 58953 >> Accept A Priest's End << Priest
    .accept 58923 >>Accept A Paladin's Service << Paladin
    .accept 58962 >>Accept A Warlock's Bargain
	.target Private Cole
step << Horde Warrior/Priest/Paladin/Warlock
    .goto 1409,52.08,55.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Throg
    .accept 59971 >> Accept A Warrior's End << Warrior
    .accept 59961 >> Accept A Priest's End << Priest
    .accept 59958 >>Accept A Paladin's Service << Paladin
    .accept 59970 >>Accept A Warlock's Bargain << Warlock
	.target Grunt Throg
step << Shaman
    .goto 1409,52.30,55.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the Ghost Wolf
    .accept 59002 >>Accept A Shaman's Duty
	.target Ghost Wolf
step << Alliance
    .goto 1409,53.02,55.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bjorn
    .accept 55965 >>Accept Westward Bound
	.target Bjorn Stouthands
step << Horde
    .goto 1409,52.89,56.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lana
    .accept 59948 >>Accept Westward Bound
	.target Lana Jordan
step << Shaman
    .goto 1409,52.12,51.65
    >>Loot the Blossoms on the ground
    .complete 59002,1,1 --1/4 Veil Blossom
step << Shaman
    .goto 1409,51.84,51.12
    >>Loot the Blossoms on the ground
    .complete 59002,1,2 --2/4 Veil Blossom
step << Shaman
    .goto 1409,52.53,51.00
    >>Loot the Blossoms on the ground
    .complete 59002,1,3 --3/4 Veil Blossom
step << Shaman
    .goto 1409,53.23,51.38
    >>Loot the Blossoms on the ground
    .complete 59002,1 --4/4 Veil Blossom
step << Horde
    .goto 1409,53.79,52.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Shuja
    .accept 59943 >>Accept the Harpy Problem
	.target Shuja Grimaxe
step << Alliance
    .goto 1409,53.50,52.33
     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Henry
    .accept 55196 >>Accept The Harpy Problem
	.target Henry Garrick
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Henry and Kee-La
    .turnin 55196 >>Turn in The Harpy Problem
    .accept 55763 >>Accept The Rescue of Herbert Gloomburst
    .accept 55881 >>Accept Purge the Totems
    .goto 1409,56.84,46.18
    .accept 55764 >>Accept Harpy Culling
    .goto 1409,56.94,46.24
	.target Henry Garrick
	.target Kee-La
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bo and Shuja
    .turnin 59943 >>Turn in The Harpy Problem
    .accept 59945 >>Accept Harpy Culling
    .accept 59946 >>Accept Purge the Totems
    .goto 1409,56.93,46.24
    .accept 59944 >>Accept The Rescue of Herbert Gloomburst
    .goto 1409,56.83,46.17
step
	#completewith Harpytotem
	>>Kill Harpies and Hunting Worgs. Don't go out of your way to kill any yet
    .complete 55764,1 << Alliance --10/10 Harpies and cohorts slain
    .complete 59945,1 << Horde --10/10 Harpies and cohorts slain
	.target Harpy Boltcaller
	.target Harpy Snatcher
	.target Hunting Worg
step
    .goto 1409,58.23,44.49
    >>Click the Harpy Totem to burn it
    .complete 59946,1,1 << Horde --1/5 Harpy Totems burned
    .complete 55881,1,1 << Alliance --1/5 Harpy Totems burned
step
    .goto 1409,58.84,42.95
    >>Click the Harpy Totem to burn it
    .complete 59946,1,2 << Horde --2/5 Harpy Totems burned
    .complete 55881,1,2 << Alliance --2/5 Harpy Totems burned
step
    .goto 1409,61.23,41.31
    >>Click the Harpy Totem to burn it
    .complete 59946,1,3 << Horde --3/5 Harpy Totems burned
    .complete 55881,1,3 << Alliance --3/5 Harpy Totems burned
    .goto 1409,61.23,41.31
step
    #label Chest3
    .goto 1409,59.33,37.63
    .turnin 56581 >>Loot the Chest on the ground
step
    .goto 1409,59.01,39.10
    >>Click the Harpy Totem to burn it
    .complete 59946,1,4 << Horde --4/5 Harpy Totems burned
    .complete 55881,1,4 << Alliance --4/5 Harpy Totems burned
step
	#label Harpytotem
    .goto 1409,57.18,42.23
    >>Burn the last two Harpy Totems by clicking on them. Don't go out of your way to kill any Harpies for now
    .complete 59946,1,5 << Horde --5/5 Harpy Totems burned
    .complete 55881,1,5 << Alliance --5/5 Harpy Totems burned
step
	#completewith next
    >>Kill Harpies and Worgs that are summoned as you protect Meredy << Alliance
    >>Kill Harpies and Worgs that are summoned as you protect Herbert << Alliance
    .complete 55764,1 << Alliance --10/10 Harpies and cohorts slain
    .complete 59945,1 << Horde --10/10 Harpies and cohorts slain
    .goto 1409,56.16,43.55,0,0
	.target Harpy Boltcaller
	.target Harpy Snatcher
	.target Hunting Worg
step
    .goto 1409,54.29,41.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Meredy << Alliance
	>> Kill the oncoming waves of enemies. Kill Bloodbeak when he comes << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Herbert << Horde
	>>Kill the oncoming waves of enemies. Kill Bloodbeak when he comes << Horde
    .complete 55763,1 << Alliance --1/1 Meredy Huntswell rescued
    .complete 59944,1 << Horde --1/1 Herbert Gloomburst rescued
    .skipgossip
	.target Meredy Huntswell << Alliance
	.target Herbert Gloomburst << Horde
	.target Bloodbeak
--VV GOSSIP OBJECTIVE?
step
    .goto 1409,55.90,42.97,30,0
    .goto 1409,59.06,39.05,30,0
    .goto 1409,58.23,44.49
	>>Kill Harpies and Hunting Worgs
    .complete 55764,1 << Alliance --10/10 Harpies and cohorts slain
    .complete 59945,1 << Horde --10/10 Harpies and cohorts slain
    .goto 1409,56.16,43.55,0,0
	.target Harpy Boltcaller
	.target Harpy Snatcher
	.target Hunting Worg
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Herbert, Bo, and Shuja
    .turnin 59944 >>Turn in The Rescue of Herbert Gloomburst
    .goto 1409,56.90,46.13
    .turnin 59946 >>Turn in Purge the Totems
    .turnin 59945 >>Turn in Harpy Culling
    .goto 1409,56.94,46.23
    .accept 59947 >>Accept Message to Base
    .goto 1409,56.83,46.16
	.target Herbert Gloomburst
	.target Bo
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Meredy, Ka-Lee, and Henry
    .turnin 55763 >>Turn in The Rescue of Meredy Huntswell
    .goto 1409,56.91,46.14
    .turnin 55764 >>Turn in Harpy Culling
    .goto 1409,56.94,46.23
    .turnin 55881 >>Turn in Purge the Totems
    .accept 55882 >>Accept Message to Base
    .goto 1409,56.83,46.17
	.target Meredy Huntswell
	.target Ka-Lee
	.target Henry Garrick
step
    .goto 1409,58.20,50.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the Lightspawn
    .accept 54933 >>Accept Freeing the Light
	.target Lightspawn
step
	>>Click the Orbs around the Lightspawn to disperse the necrotic energy
    .complete 54933,1 --1/1 First necrotic energy dispersed
    .goto 1409,57.42,49.68
    .complete 54933,2 --1/1 Second necrotic energy dispersed
    .goto 1409,58.49,49.16
    .complete 54933,3 --1/1 Third necrotic energy dispersed
    .goto 1409,59.00,50.69
    .complete 54933,4 --1/1 Fourth necrotic energy dispersed
    .goto 1409,57.82,51.19
step << Alliance Paladin
    .goto 1409,57.57,52.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Yorah
    .complete 58923,1 --1/1 Speak with the ghost paladin
    .turnin 58923 >>Turn in A Paladin Service
    .accept 58946 >>Accept The Divine's Shield
	.skipgossip 162998,1
	.target Yorah
step << Horde Paladin
    .goto 1409,57.57,52.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Daelya
    .complete 59958,1 --1/1 Speak with the ghost paladin
    .turnin 59958 >>Turn in A Paladin Service
    .accept 60174 >>Accept The Divine's Shield
	.skipgossip 167179,1
	.target Daelya Twilightsbane
step << Alliance Paladin
	#completewith next
    .goto 1409,57.08,52.73
    >>Cast |T524354:0|tDivine Shield to pass through the barrier
	>>If you don't pass through the barrier in time, talk to Yorah again to reset Divine Shield's cooldown
    .complete 58946,1 --1/1 Divine shield used
	.skipgossip 162998,1
	.target Yorah
step << Horde Paladin
	#completewith next
    .goto 1409,57.08,52.73
    >>Cast |T524354:0|tDivine Shield to pass through the barrier
	>>If you don't pass through the barrier in time, talk to Daelya again to reset Divine Shield's cooldown
    .complete 60174,1 --1/1 Divine shield used
	.skipgossip 167179,1
	.target Daelya Twilightsbane
step << Alliance Paladin
    .goto 1409,57.08,52.73
	>>Click the Altar to destroy it
    .complete 58946,2 --1/1 Necrotic altar destroyed
step << Horde Paladin
    .goto 1409,57.08,52.73
	>>Click the Altar to destroy it
    .complete 60174,2 --1/1 Necrotic altar destroyed
step << Alliance Paladin
    .goto 1409,57.57,52.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Yorah
    .turnin 58946 >>Turn in The Divine's Shield
	.target Yorah
step << Horde Paladin
    .goto 1409,57.57,52.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Daelya
    .turnin 60174 >>Turn in The Divine's Shield
	.target Daelya Twilightsbane
step
    .goto 1409,58.20,50.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the Lightspawn
    .turnin 54933 >>Turn in Freeing the Light
	.target Lightspawn
step << Alliance Warrior
    .goto 1409,51.47,47.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hjalmar. Damage him to 20% or less health. Cast |T135358:0|tExecute
    .turnin 58914 >>Turn in A Warrior's End
    .accept 58915 >>Accept Hjalmar's Final Execution
    .complete 58915,1 --1/1 Hjalmar the Undying slain with Execute
    .skipgossip
	.target Hjalmar the Undying
step << Horde Warrior
    .goto 1409,51.47,47.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hjalmar. Damage him to 20% or less health. Cast |T135358:0|tExecute
    .turnin 59971 >>Turn in A Warrior's End
    .accept 59972 >>Accept Hjalmar's Final Execution
    .complete 59972,1 --1/1 Hjalmar the Undying slain with Execute
    .skipgossip
	.target Hjalmar the Undying
step << Alliance Warrior
    .goto 1409,52.08,55.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Cole
    .turnin 58915 >>Turn In Hjalmar's Final Execution
	.target Private Cole
step << Horde Warrior
    .goto 1409,52.03,55.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Throg
    .turnin 59972 >>Turn In Hjalmar's Final Execution
	.target Grunt Throg
step << Alliance Priest
    .goto 1409,57.32,51.87,15,0
    .goto 1409,56.12,53.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Branven
    .turnin 58953 >>Turn in A Priest's End
    .accept 58960 >>Accept Resurrecting the Recruits
	.target Branven Hammerheart
step << Horde Priest
    .goto 1409,57.32,51.87,15,0
    .goto 1409,56.12,53.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sha'zul
    .turnin 59961 >>Turn in A Priest's End
    .accept 59965 >>Accept Resurrecting the Recruits
	.target Sha'zul
step << Priest
    .goto 1409,56.12,53.25,15,0
    .goto 1409,56.44,53.73,15,0
    .goto 1409,56.12,53.25,15,0
    .goto 1409,56.21,53.48
	>>Cast |T135955:0|tResurrection on the Recruits
    .complete 58960,1 << Alliance --3/3 Expedition recruits resurrected
    .complete 59965,1 << Horde --3/3 Expedition recruits resurrected
step << Alliance Priest
    .goto 1409,56.12,53.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Branven
    .turnin 58960 >>Turn in Resurrecting the Recruits
	.target Branven Hammerheart
step << Horde Priest
    .goto 1409,56.12,53.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sha'zul
    .turnin 59965 >>Turn in Resurrecting the Recruits
	.target Sha'zul
step << Alliance Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hubert's Corpse on the ground
	>>Loot the book that appears next to him
    .complete 58962,1 --1/1 Dead warlock's body investigated
    .goto 1409,52.53,45.89
    .complete 58962,2 --1/1 Old Grimoire
    .goto 1409,52.59,45.85
	.target Hubert Lucas 
    .skipgossip
step << Horde Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sprag's Corpse on the ground
	>>Loot the book that appears next to him
    .complete 59970,1 --1/1 Dead warlock's body investigated
    .goto 1409,52.53,45.89
    .complete 59970,2 --1/1 Old Grimoire
    .goto 1409,52.59,45.85
	.target Sprag Buzzboom
    .skipgossip
step << Warlock
	#completewith next
    .goto 1409,52.61,45.44
    >>Use the |538444:0|t[Old Grimoire] next to the Void Portal
    .complete 58962,3 << Alliance --1/1 Voidwalker summoned with grimoire
    .complete 59970,3 << Horde --1/1 Voidwalker summoned with grimoire
    .use 174947
step << Warlock
    .goto 1409,52.61,45.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the Voidwalker
    .turnin 58962 >>Turn in A Warlock's Bargain << Alliance
    .turnin 59970 >>Turn in A Warlock's Bargain << Horde
	.target Summoned Voidwalker
step << Alliance !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Garrick
	>>Click the campfire to burn the blossoms << Shaman
    .turnin 55882 >>Turn in Message to Base
    .goto 1409,52.35,55.33
    .complete 59002,2 << Shaman --1/1 Blossoms burned on campfire
    .goto 1409,52.21,55.58 << Shaman
	.target Captain Garrick
step << Horde !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Breka
	>>Click the campfire to burn the blossoms << Shaman
    .turnin 59947 >>Turn in Message to Base
    .goto 1409,52.18,55.34
    .complete 59002,2 << Shaman --1/1 Blossoms burned on campfire
    .goto 1409,52.21,55.58 << Shaman
	.target Warlord Breka Grimaxe
step << Shaman
    .goto 1409,54.40,58.45
    >>Click the ghost wolf to capture it
    .complete 59002,3,1 --1/3 Captured ghost wolves freed
step << Shaman
    .goto 1409,55.28,52.79
    >>Click the ghost wolf to capture it
    .complete 59002,3,2 --2/3 Captured ghost wolves freed
step << Shaman
    .goto 1409,55.40,50.78
    >>Click the ghost wolf to capture it
    .complete 59002,3 --3/3 Captured ghost wolves freed
step << Shaman
    .goto 1409,52.30,55.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the Ghost Wolf
    .turnin 59002 >>Turn in A Shaman's Duty to learn Ghost Wolf
	.target Ghost Wolf
step << Alliance Monk
    .goto 1409,52.14,55.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ke-Laa
    .accept 59347 >>Accept A Monk's Focus
	.timer 34,A Monk's Focus RP
	.target Kee-La
step << Horde Monk
    .goto 1409,52.04,55.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bo
    .accept 59956 >>Accept A Monk's Focus
	.timer 34,A Monk's Focus RP
	.target Bo
step << Alliance Monk
    .goto 1409,52.63,49.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFollow Kee-la, then talk to her
    .complete 59347,1 --1/1 Meditate with Kee-La
	.skipgossip 164835,1
	.timer 42,A Monk's Focus RP
	.target Kee-La
step << Horde Monk
    .goto 1409,52.63,49.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFollow Bo, then talk to him
    .complete 59956,1 --1/1 Meditate with Bo
	.skipgossip 167537,1
	.timer 42,A Monk's Focus RP
	.target Bo
step << Alliance Monk
    .goto 1409,52.63,49.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kee-la
    .turnin 59347 >>Turn in A Monk's Focus
    .accept 59349 >>Accept One Last Spar
	.timer 5,One Last Spar RP
	.target Kee-La
step << Horde Monk
    .goto 1409,52.63,49.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bo
    .turnin 59956 >>Turn in A Monk's Focus
    .accept 59957 >>Accept One Last Spar
	.timer 5,One Last Spar RP
	.target Bo
step << Alliance Monk
    .goto 1409,53.48,49.90
    >>Follow Kee-La. Cast T606552:0|tTouch of Death on her
    .complete 59349,1 --1/1 Touch of Death used on Kee-La
step << Horde Monk
    .goto 1409,53.48,49.90
    >>Follow Bo. Cast |T606552:0|tTouch of Death on him
    .complete 59957,1 --1/1 Touch of Death used on Kee-La
step << Alliance Monk
    .goto 1409,52.36,55.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Garrick
    .turnin 59349 >>Turn in One Last Spar
	.target Captain Garrick
step << Horde Monk
    .goto 1409,52.18,55.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Breka
    .turnin 59957 >>Turn in One Last Spar
	.target Warlord Breka Grimaxe
step << Alliance Hunter
    .goto 1409,52.41,55.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Austin
    .accept 59355 >>Accept A Hunter's Trap
	.target Austin Huxworth
step << Horde Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mithdran
    .goto 1409,52.56,55.43
    .accept 59952 >>Accept A Hunter's Trap
	.target Mithdran Dawntracker
step << Alliance Mage
    .goto 1409,52.28,55.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Meredy
    .accept 59352 >>Accept A Mage's Knowledge
	.target Meredy Huntsworth
step << Horde Mage
    .goto 1409,52.16,55.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Herbert
    .accept 59954 >>Accept A Mage's Knowledge
	.target Herbert Gloomburst
step << Mage
    .goto 1409,51.95,49.84
	>>Loot the Spell Book underwater
    .complete 59352 << Alliance --1/1 Meredy's Spell Book
    .complete 59954 << Horde --1/1 Herbert's Spell Book
step << Alliance Mage
    .goto 1409,52.28,55.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Meredy
    .turnin 59352 >>Turn in A Mage's Knowledge
    .accept 59354 >>Accept The Best Way to Use Sheep
    .complete 59354,1 --Speak with Meredy to being sparring (1)
	.skipgossip 156886,1
	.timer 18,The Best Way to Use Sheep RP
	.target Meredy Huntsworth
step << Horde Mage
    .goto 1409,52.16,55.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Herbert
    .turnin 59954 >>Turn in A Mage's Knowledge
    .accept 59955 >>Accept The Best Way to Use Sheep
    .complete 59955,1 --Speak with Herbert to begin sparring (1)
	.skipgossip 167309,1
	.timer 18,The Best Way to Use Sheep RP
	.target Herbert Gloomburst
step << Alliance Mage
    .goto 1409,52.30,55.46
    >>Follow Meredy and Cole. Wait out the RP
    >>Cast |T136071:0|tPolymorph on Meredy or Cole, then damage the polymorphed one once
    .complete 59354,2 --Practice Polymorph with Meredy or Cole
	.timer 10,The Best Way to Use Sheep RP
	.target Meredy Huntsworth
	.target Private Cole
step << Horde Mage
    .goto 1409,52.30,55.46
    >>Follow Herbert and Thorg. Wait out the RP
    >>Cast |T136071:0|tPolymorph on Herbert or Thorg, then damage the polymorphed one once
    .complete 59955,2 --Practice Polymorph with Herbert or Throg
	.timer 10,The Best Way to Use Sheep RP
	.target Herbert Gloomburst
	.target Grunt Thorg
step << Alliance Mage
    .goto 1409,52.30,55.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Meredy
    .turnin 59354 >>Turn in The Best Way to Use Sheep
	.target Meredy Huntsworth
step << Horde Mage
    .goto 1409,52.16,55.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Herbert
    .turnin 59955 >>Turn in The Best Way to Use Sheep
	.target Herbert Gloomburst
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bjorn and Alaria
    .turnin 55965 >>Turn in Westward Bound
    .goto 1409,51.18,59.61
    .accept 55639 >>Accept Who Lurks in the Pit
    .goto 1409,51.11,59.51
	.target Bjorn Stouthands
	.target Alaria
step << Horde
    .goto 1409,51.11,59.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lana
    .turnin 59948 >>Turn in Westward Bound
    .accept 59949 >>Accept Who Lurks in the Pit
	.target Lana Jordan
step
	#completewith next
	>>Try to avoid fighting Spiders inside
    .goto 1409,50.88,60.45,10 >>Go down into the Spider Cave
step
    .goto 1409,52.07,59.99
    >>Click the Cocoon to destroy it and free the Expedition Member
    .complete 55639,1,1 << Alliance --1/5 Trapped Expedition Member rescued from cocoons
    .complete 59949,1,1 << Horde --1/5 Trapped Expedition Member rescued from cocoons
step
    .goto 1409,52.02,58.31,15,0
    .goto 1409,50.26,58.69
    >>Click the Cocoon to destroy it and free the Expedition Member
    .complete 55639,1,2 << Alliance --2/5 Trapped Expedition Member rescued from cocoons
    .complete 59949,1,2 << Horde --2/5 Trapped Expedition Member rescued from cocoons
step
    .goto 1409,49.71,60.49,15,0
    .goto 1409,49.70,62.02
    >>Click the Cocoon to destroy it and free the Expedition Member
    .complete 55639,1,3 << Alliance --3/5 Trapped Expedition Member rescued from cocoons
    .complete 59949,1,3 << Horde --3/5 Trapped Expedition Member rescued from cocoons
step
    .goto 1409,51.12,62.10,15,0
    .goto 1409,51.96,60.67
    >>Click the Cocoon to destroy it and free the Expedition Member
    .complete 55639,1,4 << Alliance --4/5 Trapped Expedition Member rescued from cocoons
    .complete 59949,1,4 << Horde --4/5 Trapped Expedition Member rescued from cocoons
step
    .goto 1409,52.07,59.13,12,0
    .goto 1409,50.87,58.12
    >>Click the Cocoon to destroy it and free the Expedition Member
    .complete 55639,1 << Alliance --5/5 Trapped Expedition Member rescued from cocoons
    .complete 59949,1 << Horde --5/5 Trapped Expedition Member rescued from cocoons
step
    .goto 1409,50.08,59.91,12,0
    .goto 1409,47.42,60.49
    >>Kill Hrun the Exiled
    .complete 55639,2 << Alliance --Defeat Hrun to rescue Ralia Dreamchaser (1)
    .complete 59949,2 << Horde --Defeat Hrun to rescue Crenna Earth-Daughter (1)
	.target Hrun the Exiled
step << skip
	#completewith next
    .goto 1409,47.79,60.27
    .vehicle >>Click Ralia Dreamchaser to ride on her
	.timer 51,Who Lurks in the Pit RP
	.target Ralia Dreamchaser
--VV ALLIANCE Ralia/Crenna not classified as either vehicle or flight paths so can't do this. unluko
step << Alliance 
    .goto 1409,51.83,58.76
    >>Click Ralia Dreamchaser to ride on her. Wait out the RP
    .complete 55639,3 --Ride Ralia Dreamchaser to escape (1)
	.target Ralia Dreamchaser
step << skip
	#completewith next
    .goto 1409,47.79,60.27
    .vehicle >>Click Crenna Earth-Daughter to ride on her
	.timer 51,Who Lurks in the Pit RP
	.target Crenna Earth-Daughter
--VV HORDE Ralia/Crenna not classified as either vehicle or flight paths so can't do this. unluko
step << Horde 
    .goto 1409,51.83,58.76
    >>Click Crenna Earth-Daughter to ride on her. Wait out the RP
    .complete 59949,3 --Ride Crenna Earth-Daughter to escape (1)
	.target Crenna Earth-Daughter
step << Horde !Hunter !Rogue !Druid
    .goto 1409,52.18,55.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Breka
    .turnin 59949 >>Turn in Who Lurks in the Pit
    .turnin 59947 >>Turn in Message to Base << Priest
    .accept 59975 >>Accept To Darkmaul Citadel
	.target Warlord Breka Grimaxe
step << Horde Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Herbert and Breka
    .complete 59952,1 --1/1 Ice mote received from Herbert Gloomburst
    .goto 1409,52.16,55.49
    .turnin 59949 >>Turn in Who Lurks in the Pit
    .goto 1409,52.18,55.34
    .skipgossip
	.target Herbert Gloomburst
	.target Warlord Breka Grimaxe
step << Horde Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Breka and Throg
    .turnin 59949 >>Turn in Who Lurks in the Pit
    .goto 1409,52.18,55.34
    .accept 59967 >>Accept A Rogue's End
    .goto 1409,52.08,55.29
	.target Warlord Breka Grimaxe
	.target Grunt Throg
step << Horde Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Crenna and Breka
    .accept 59951 >>Accept A Druid's Form
    .goto 1409,52.33,55.44
    .turnin 59949 >>Turn in Who Lurks in the Pit
    .goto 1409,52.18,55.34
	.target Crenna Earth-Daughter
	.target Warlord Breka Grimaxe
step << Alliance !Hunter !Rogue !Druid
    .goto 1409,52.35,55.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Garrick
    .turnin 55639 >>Turn in Who Lurks in the Pit
    .turnin 55882 >>Turn in Message to Base << Priest
    .accept 56344 >>Accept To Darkmaul Citadel
	.target Captain Garrick
step << Alliance Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Austin and Garrick
    .complete 59355,1 --1/1 Ice mote received from Austin Huxworth
    .goto 1409,52.29,55.47
    .turnin 55639 >>Turn in Who Lurks in the Pit
    .goto 1409,52.35,55.33
	.skipgossip
	.target Austin Huxworth
	.target Captain Garrick
step << Alliance Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Garrick and Coulston
    .turnin 55639 >>Turn in Who Lurks in the Pit
    .goto 1409,52.35,55.33
    .accept 58917 >>Accept A Rogue's End
    .goto 1409,52.08,55.29
	.target Captain Garrick
	.target Coulston Nereus
step << Alliance Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ralia and Garrick
    .accept 59350 >>Accept A Druid's Form
    .goto 1409,52.33,55.44
    .turnin 55639 >>Turn in Who Lurks in the Pit
    .goto 1409,52.35,55.33
	.target Ralia Dreamchaser
	.target Captain Garrick
step << Druid
    .goto 1409,45.34,49.19
    >>Click the Druid Stone to perform the ritual
    .complete 59350,1 << Alliance --1/1 Commune with the Druid Stone
    .complete 59951,1 << Horde --1/1 Commune with the Druid Stone
step << Alliance Druid
    .goto 1409,45.50,49.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ralia
    .turnin 59350 >>Turn in A Druid's Form
	.target Ralia Dreamchaser
step << Horde Druid
    .goto 1409,45.50,49.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Crenna
    .turnin 59951 >>Turn in A Druid's Form
	.target Crenna Earth-Daughter
step << Horde Druid
    .goto 1409,52.17,55.35
    >>Put Travel Form on your Action Bars
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Breka
    .accept 59975 >>Accept To Darkmaul Citadel
	.target Warlord Breka Grimaxe
step << Alliance Druid
    .goto 1409,52.35,55.33
    >>Put Travel Form on your Action Bars
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Garrick
    .accept 56344 >>Accept To Darkmaul Citadel
	.target Captain Garrick
step << Hunter
    >>Loot the Chain and Spring on the ground
    .complete 59355,2 << Alliance --1/1 Rusted Chain
    .complete 59952,2 << Horde --1/1 Rusted Chain
    .goto 1409,52.25,53.03
    .complete 59355,3 << Alliance --1/1 Old Spring
    .complete 59952,3 << Horde --1/1 Old Spring
    .goto 1409,51.83,51.60
step << Alliance Hunter
    .goto 1409,52.42,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Austin
    .turnin 59355 >>Turn in A Hunter's Trap
    .accept 59356 >>Accept Hunting the Stalker
	.target Austin Huxworth
step << Horde Hunter
    .goto 1409,52.56,55.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mithdran
    .turnin 59952 >>Turn in A Hunter's Trap
    .accept 59953 >>Accept Hunting the Stalker
	.target Mithdran Dawntracker
step << Hunter
    .goto 1409,52.41,54.64
    >>Drag |T135834:0|tFreezing Trap from the Spellbook to your action bars. Cast |T135834:0|tFreezing Trap to throw it onto the stone path next to you
    .complete 59356,1 << Alliance --1/1 Freezing trap used within Ogre Ruins to capture stalker
    .complete 59953,1 << Horde --1/1 Freezing trap used within Ogre Ruins to capture stalker
step << Alliance Hunter
    .goto 1409,52.42,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Austin
    .turnin 59356 >>Turn in Hunting the Stalker
    .accept 60168 >>Accept The Art of Taming
	.target Austin Huxworth
step << Horde Hunter
    .goto 1409,52.56,55.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mithdran
    .turnin 59953 >>Turn in Hunting the Stalker
    .accept 60162 >>Accept The Art of Taming
	.target Mithdran Dawntracker
step << Hunter
    .goto 1409,52.56,55.45
    >>Click |T132179:0|tPet Utility -> Cast |T136095:0|tDismiss Pet
    .complete 60168,1 << Alliance --Use "Dismiss Pet" to temporarily dismiss your current pet
    .complete 60162,1 << Horde --Use "Dismiss Pet" to temporarily dismiss your current pet
step << Alliance Hunter
    .goto 1409,52.42,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Austin
    >>Target the Wolf. Cast |T132164:0|tTame Beast on it
    .complete 60168,2 -- Speak with Mithdran to summon and tame your new pet
	.skipgossip 161666,2
	.timer 7,The Art of Taming RP
	.target Austin Huxworth
	.target Wolf
--VV GOSSIP OBJECTIVE STEP
step << Horde Hunter
    .goto 1409,52.56,55.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mithdran
    >>Target the Turtle. Cast |T132164:0|tTame Beast on it
    .complete 60162,2 -- Speak with Mithdran to summon and tame your new pet
	.skipgossip 167215,2
	.timer 7,The Art of Taming RP
	.target Mithdran Dawntracker
	.target Turtle
--VV GOSSIP OBJECTIVE STEP
step << Alliance Hunter
    .goto 1409,52.42,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Austin
    .complete 60168,3 --Speak with Mithdran to learn about pet stables
	.skipgossip 161666,1
	.target Austin Huxworth
step << Horde Hunter
    .goto 1409,52.56,55.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mithdran
    .complete 60162,3 --Speak with Mithdran to learn about pet stables
	.skipgossip 167215,1
	.target Mithdran Dawntracker
step << Alliance Hunter
    .goto 1409,52.42,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Austin and Garrick
    .turnin 60168 >>Turn in The Art of Taming
    .goto 1409,52.42,55.27
    .accept 56344 >>Accept To Darkmaul Citadel
    .goto 1409,52.35,55.33
	.target Austin Huxworth
	.target Captain Garrick
step << Horde Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mithdran and Breka
    .turnin 60162 >>Turn in The Art of Taming
    .goto 1409,52.56,55.45
    .accept 59975 >>Accept To Darkmaul Citadel
    .goto 1409,52.17,55.35
	.target Mithdran Dawntracker
	.target Warlord Breka Grimaxe
step << Rogue
    .goto 1409,48.76,54.25
	>>Talk to the Danger Sign
    .accept 56839 >>Accept Killclaw the Terrible
step << Rogue
	#completewith RoguesEnd
	>>Kill Killclaw the Terrible if there's another player killing him. Otherwise, avoid him for now
	.complete 56839,1 --Killclaw the Terrible Slain (1)
step << Alliance Rogue
    .goto 1409,45.64,56.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Coulston
    .complete 58917,1 --1/1 First expedition's rogue found
	.target Coulston Nereus
step << Horde Rogue
    .goto 1409,45.64,56.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Drizza
    .complete 59967,1 --1/1 First expedition's rogue found
	.target Drizza Sidestabber
step << Rogue
    .goto 1409,44.76,56.42
    >>Loot the Hemlock plant on the ground
    .complete 58917,2,1 << Alliance --3/3 Withering Hemlock
    .complete 59967,2,1 << Horde --3/3 Withering Hemlock
step << Rogue
    .goto 1409,45.17,55.69
    >>Loot the Hemlock plant on the ground
    .complete 58917,2,2 << Alliance --3/3 Withering Hemlock
    .complete 59967,2,2 << Horde --3/3 Withering Hemlock
step << Rogue
    .goto 1409,45.09,54.66
    >>Loot the Hemlock plant on the ground
    .complete 58917,2 << Alliance --3/3 Withering Hemlock
    .complete 59967,2 << Horde --3/3 Withering Hemlock
step << Alliance Rogue
	#label RoguesEnd
    .goto 1409,45.64,56.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Coulston
    .turnin 58917 >> Turn in A Rogue's End
    .accept 58933 >> Accept The Deadliest of Poisons
	.target Austin Huxworth
step << Horde Rogue
	#label RoguesEnd
    .goto 1409,45.64,56.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Drizza
    .turnin 59967 >> Turn in A Rogue's End
    .accept 59968 >> Accept The Deadliest of Poisons
	.target Drizza Sidestabber
step << Rogue
	#completewith KillclawR
    .complete 59968,1 >> Cast |T132273:0|tInstant Poison to apply it to your weapons
step << Rogue
    .goto 1409,44.15,52.58,30,0
    .goto 1409,45.09,53.91,30,0
    .goto 1409,46.18,54.36,30,0
    .goto 1409,48.24,54.27,30,0
    .goto 1409,44.15,52.58,30,0
    .goto 1409,45.09,53.91,30,0
    .goto 1409,46.18,54.36,30,0
    .goto 1409,48.24,54.27
	>>This quest is difficult. Find a group for him if needed. Skip this step if you're unable to find a group or solo him
    >>Dodge Killclaw's Trampling Charge by moving to the side as he's casting it. If you're soloing him, use Crimson Vial and a Healing Potion if needed
    .complete 56839,1 --1/1 Killclaw the Terrible slain
	.target Killclaw the Terrible
	.use 175241
	.isOnQuest 56839
step << Rogue
	#completewith next
    .goto 1409,44.20,52.65,20 >> Go inside the cave
step << Rogue
    .goto 1409,43.42,51.13
	>>Talk to the Chest
    .turnin 56839 >>Turn in Killclaw the Terrible
	.isQuestComplete 56839
step << Rogue
	#label KillclawR
	.abandon 56839 >> Abandon Killclaw the Terrible
step << Rogue
    .goto 1409,48.47,52.04
    .complete 59968,1 >> Cast |T132273:0|tInstant Poison to apply it to your weapons +|cfff78300BEFORE|r killing Gutgruk
step << Rogue
	#label GutGruk
    .goto 1409,47.92,50.23,40,0
    .goto 1409,48.47,52.04,40,0
    .goto 1409,47.92,50.23,40,0
    .goto 1409,48.47,52.04,40,0
    .goto 1409,47.92,50.23,40,0
    .goto 1409,48.47,52.04
	>>Kill Gutgruk the Tough
    .complete 58933,2 << Alliance --1/1 Gutgruk the Tough slain
    .complete 59968,2 << Horde --1/1 Gutgruk the Tough slain
	.target Gutgruk the Tough
step << Alliance Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Cole and Garrick
    .turnin 58933 >>Turn in The Deadliest of Poisons
    .goto 1409,52.08,55.29
    .accept 56344 >>Accept To Darkmaul Citadel
    .goto 1409,52.35,55.33
	.target Private Cole
	.target Captain Garrick
step << Horde Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Throg and Breka
    .turnin 59968 >>Turn in The Deadliest of Poisons
    .goto 1409,52.08,55.29
    .accept 59975 >>Accept To Darkmaul Citadel
    .goto 1409,52.17,55.35
	.target Grunt Throg
	.target Warlord Breka Grimaxe
step << !Rogue
    .goto 1409,48.76,54.25
	>>Talk to the Danger Sign
    .accept 56839 >>Accept Killclaw the Terrible
step << !Rogue
    .goto 1409,44.15,52.58,30,0
    .goto 1409,45.09,53.91,30,0
    .goto 1409,46.18,54.36,30,0
    .goto 1409,48.24,54.27,30,0
    .goto 1409,44.15,52.58,30,0
    .goto 1409,45.09,53.91,30,0
    .goto 1409,46.18,54.36,30,0
    .goto 1409,48.24,54.27
	>>This quest is difficult. Find a group for him if needed. Skip this step if you're unable to find a group or solo him << !Hunter !Warlock
    >>Dodge Killclaw's Trampling Charge by moving to the side as he's casting it << !Warlock !Priest
    >>Dodge Killclaw's Trampling Charge by moving to the side as he's casting it. Killclaw is immune to |T136183:0|tFear << Warlock
    >>Dodge Killclaw's Trampling Charge by moving to the side as he's casting it. Killclaw is immune to |T136184:0|tPsychic Scream << Priest
    .complete 56839,1 --1/1 Killclaw the Terrible slain
	.target Killclaw the Terrible
	.use 175241
	.isOnQuest 56839
step << !Rogue
	#completewith next
    .goto 1409,44.20,52.65,20 >> Go inside the cave
step << !Rogue
    .goto 1409,43.42,51.13
	>>Talk to the Chest
    .turnin 56839 >>Turn in Killclaw the Terrible
	.isQuestComplete 56839
step << !Rogue
	.abandon 56839 >> Abandon Killclaw the Terrible
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Garrick and Meredy
    .turnin 56344 >>Turn in To Darkmaul Citadel
    .accept 55981 >>Accept Right Beneath Their Eyes
    .goto 1409,48.98,49.24
    .complete 55981,1 --1/1 Ask Meredy to perform ogre transformation spell
    .goto 1409,49.03,49.21
    .skipgossip
	.timer 7,Right Beneath their Eyes RP
	.target Captain Garrick
	.target Meredy Huntsworth
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Breka and Herbert
    .turnin 59975 >>Turn in To Darkmaul Citadel
    .accept 59978 >>Accept Right Beneath Their Eyes
    .goto 1409,48.95,49.33
    .complete 59978,1 --1/1 Ask Herbert to perform ogre transformation spell
    .goto 1409,48.93,49.46
    .skipgossip
	.timer 7,Right Beneath their Eyes RP
	.target Warlord Breka Grimaxe
	.target Herbert Gloomburst
step
    .goto 1409,45.22,43.37
    >>Run toward the stairs of Darkmaul Citadel
    .complete 55981,2 << Alliance --1/1 Enter Darkmaul Citadel
    .complete 59978,2 << Horde --1/1 Enter Darkmaul Citadel
step
    .goto 1409,45.68,37.55
	>>Run to the Ogre Cooking Area
    .complete 55981,3 << Alliance --Find the ogre cooking Area
    .complete 59978,3 << Horde --Find the ogre cooking Area
step
    .goto 1409,45.68,37.55
    >>Target Gor'groth to automatically wave at him. If this doesn't work, type /wave at Gor'groth
    .emote WAVE,153580
    .complete 55981,4 << Alliance --Type /wave to Gor'groth
    .complete 59978,4 << Horde --Type /wave to Gor'groth
	.target Gor'groth
step
	#completewith next
    .goto 1409,45.95,36.07,15,0
    .goto 1409,40.16,32.35
	>>Run up to the stairs to the Citadel
    .complete 55981,6 << Alliance --Reach the Citadel entrance
    .complete 59978,6 << Horde --Reach the Citadel entrance
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Garrick, Henry, and Meredy
    .turnin 55981 >>Turn in Right Beneath Their Eyes
    .accept 55990 >>Accept Controlling their Stones
    .goto 1409,40.16,32.35
    .accept 55988 >>Accept Like Ogres to the Slaughter
    .goto 1409,40.22,32.35
    .accept 55989 >>Accept Catapult Destruction
    .goto 1409,40.26,32.33
	.target Captain Garrick
	.target Henry Garrick
	.target Meredy Huntsworth
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Breka, Shuja, and Herbert
    .turnin 59978 >>Turn in Right Beneath Their Eyes
    .accept 59981 >>Accept Controlling their Stones
    .goto 1409,40.29,32.45
    .accept 59979 >>Accept Like Ogres to the Slaughter
    .goto 1409,40.25,32.56
    .accept 59980 >>Accept Catapult Destruction
    .goto 1409,40.37,32.42
	.target Warlord Breka Grimaxe
	.target Shuja Grimaxe
	.target Herbert Gloomburst
step
	#completewith KillOgre
    >>Kill Ogres
    .complete 55988,1 << Alliance --8/8 Ogres slain
    .complete 59979,1 << Horde--8/8 Ogres slain
step
    >>Kill Wug and Jugnug inside the buildings. Loot them for their Ward Stones
    .complete 55990,2 << Alliance --1/1 Wug's ward stone recovered
    .complete 59981,2 << Horde --1/1 Wug's ward stone recovered
    .goto 1409,44.13,37.29
    .complete 55990,1 << Alliance --1/1 Jugnug's ward stone recovered
    .complete 59981,1 << Horde --1/1 Jugnug's ward stone recovered
    .goto 1409,47.57,34.17
	.target Wug
	.target Jugnug
step
    .goto 1409,47.21,36.44
    >>Click the Catapult to destroy it
    .complete 55989,1,1 << Alliance --1/4 Catapults destroyed
    .complete 59980,1,1 << Horde --1/4 Catapults destroyed
step
    .goto 1409,46.26,39.71
    >>Click the Catapult to destroy it
    .complete 55989,1,2 << Alliance --2/4 Catapults destroyed
    .complete 59980,1,2 << Horde --2/4 Catapults destroyed
step
    .goto 1409,45.28,41.72
    >>Click the Catapult to destroy it
    .complete 55989,1,3 << Alliance --3/4 Catapults destroyed
    .complete 59980,1,3 << Horde --3/4 Catapults destroyed
step
    .goto 1409,42.80,41.00
    >>Kill Grunk inside the Building. Loot him for his Ward Stone
    .complete 55990,3 << Alliance --1/1 Grunk's ward stone recovered
    .complete 59981,3 << Horde --1/1 Grunk's ward stone recovered
	.target Grunk
step
    .goto 1409,43.74,42.86
    >>Click the Catapult to destroy it
    .complete 55989,1 << Alliance --4/4 Catapults destroyed
    .complete 59980,1 << Horde --4/4 Catapults destroyed
step
	#label KillOgre
    .goto 1409,41.81,42.88
    .turnin 56088 >>Loot the Chest on the ground
step
    .goto 1409,43.19,37.59,30,0
    .goto 1409,45.74,34.78,30,0
    .goto 1409,47.48,36.77,30,0
    .goto 1409,46.92,38.25,30,0
    .goto 1409,46.07,39.85,30,0
    .goto 1409,45.44,37.11,30,0
    .goto 1409,43.83,40.24,30,0
    .goto 1409,43.95,42.92,30,0
    .goto 1409,43.95,42.92,30,0
    .goto 1409,41.91,41.79,30,0
    .goto 1409,43.19,37.59,30,0
    .goto 1409,45.74,34.78,30,0
    .goto 1409,47.48,36.77,30,0
    .goto 1409,46.92,38.25,30,0
    .goto 1409,46.07,39.85,30,0
    .goto 1409,45.44,37.11,30,0
    .goto 1409,43.83,40.24,30,0
    .goto 1409,43.95,42.92,30,0
    .goto 1409,43.95,42.92,30,0
    .goto 1409,41.91,41.79
    >>Kill Ogres
    .complete 55988,1 << Alliance --8/8 Ogres slain
    .complete 59979,1 << Horde--8/8 Ogres slain
	.target Ogre Brute
	.target Ogre Chef
	.target Ogre Shadowcaster
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Meredy and Henry
    .turnin 55989 >>Turn in Catapult Destruction
    .goto 1409,40.26,32.33
    .turnin 55988 >>Turn in Like Ogres to the Slaughter
    .goto 1409,40.22,32.35
	.target Meredy Huntsworth
	.target Henry Garrick
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Herbert and Shuja
    .turnin 59980 >>Turn in Catapult Destruction
    .goto 1409,40.37,32.41
    .turnin 59979 >>Turn in Like Ogres to the Slaughter
    .goto 1409,40.25,32.56
	.target Herbert Gloomburst
	.target Shuja Grimaxe
step
    .goto 1409,39.93,32.44
    >>Click on the Rune to disable it
    .complete 55990,4,1 << Alliance --1/3 Disable runes holding Warlord Thunderwalker
    .complete 59981,4,1 << Horde --1/3 Disable runes holding Warlord Thunderwalker
step
    .goto 1409,39.73,32.04
    >>Click on the Rune to disable it
    .complete 55990,4,2 << Alliance --2/3 Disable runes holding Warlord Thunderwalker
    .complete 59981,4,2 << Horde --2/3 Disable runes holding Warlord Thunderwalker
step
    .goto 1409,40.07,31.96
    >>Click on the Rune to disable it
    .complete 55990,4,3 << Alliance --3/3 Disable runes holding Warlord Thunderwalker
    .complete 59981,4,3 << Horde --3/3 Disable runes holding Warlord Thunderwalker
step << Alliance
    .goto 1409,39.93,32.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Kelra
    .turnin 55990 >>Turn in Controlling their Stones
    .accept 55992 >>Accept Dungeon: Darkmaul Citadel
	.target Captain Kelra
step << Horde
    .goto 1409,39.93,32.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mulgrin
    .turnin 59981 >>Turn in Controlling their Stones
    .accept 59984 >>Accept Dungeon: Darkmaul Citadel
	.target Warlord Mulgrin Thunderwalker
step
    >>Open the Group Finder (Default: I) and queue for "Darkmaul Citadel"
    .complete 55992,1 << Alliance --Use the Group Finder to enter the dungeon, "Darkmaul Citadel"
    .complete 59984,1 << Horde --Use the Group Finder to enter the dungeon, "Darkmaul Citadel"
step
    >>Clear the Dungeon by killing Ravnyr
    .complete 55992,2 << Alliance --1/1 Gor'groth's final ritual stopped
    .complete 59984,2 << Horde --1/1 Gor'groth's final ritual stopped
step << Alliance
    >>Click on the Dungeon Finder eye and select "Leave Instance Group". This is faster
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tAlternatively, Talk to Captain Garrick
    .complete 55992,3 --1/1 Speak with Captain Garrick to leave Darkmaul Citadel
	.target Captain Garrick
step << Horde
    >>Click on the Dungeon Finder eye/your character portrait and select "Leave Instance Group". This is faster
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tAlternatively, Talk to Breka
    .complete 59984,3 --1/1 Speak with Warlord Grimaxe to leave Darkmaul Citadel
	.target Warlord Breka Grimaxe
step << Alliance
    >>|cfff78300FOLLOW THESE INSTRUCTIONS.|r This will skip a Gryphon Ride to Stormwind
    .link /run C_Tutorial.AbandonTutorialArea() >> |cfff78300CLICK HERE.|r Copy and paste this into chat
    .turnin 55991 >> USE THE MACRO!
step << Horde
    >>|cfff78300FOLLOW THESE INSTRUCTIONS.|r This will skip a Gryphon Ride to Orgrimmar
    .link /run C_Tutorial.AbandonTutorialArea() >> |cfff78300CLICK HERE.|r Copy and paste this into chat
    .turnin 59985 >> USE THE MACRO!
step << Alliance
    .goto 1409,39.65,31.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Garrick
    .turnin 55992 >>Turn in Dungeon: Darkmaul Citadel
	.target Captain Garrick
step << Horde
    .goto 1409,39.65,31.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Breka
    .turnin 59984 >>Turn in Dungeon: Darkmaul Citadel
	.target Warlord Breka Grimaxe
step << Alliance
    .goto 1409,39.65,31.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Garrick
    .accept 55991 >>Accept An End to Beginnings
	.target Captain Garrick
    .zoneskip 84
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Breka
    .goto 1409,39.65,31.99
    .accept 59985 >>Accept An End to Beginnings
    .zoneskip 85
	.target Warlord Breka Grimaxe
step << Alliance
    .goto 1409,40.37,32.63
    >>Click on the Gryphon to ride to Stormwind
    .complete 55991,1 --1/1 Alliance Gryphon rode back to Stormwind
	.isOnQuest 55991
step << Horde
    .goto 1409,40.37,32.63
    >>Right-Click on the Gryphon to ride to Stormwind << Alliance
    >>Right-Click on the Wyvern to ride to Orgrimmar << Horde
    .complete 55991,1 << Alliance --1/1 Alliance Gryphon rode back to Stormwind
    .complete 59985,1 << Horde --1/1 Horde Wyvern rode back to Orgrimmar
    .isOnQuest 59985
step << Alliance
    .goto 84,73.70,91.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Garrick
    .turnin 55991 >>Turn in An End to Beginnings
	.target Captain Garrick
    .isOnQuest 55991
step << Horde
    .goto 85,52.52,88.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Breka
    .turnin 59985 >>Turn in An End to Beginnings
	.target Warlord Breka Grimaxe
	.isOnQuest 59985
step << Alliance
	#veteran
    .goto 84,73.70,91.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Garrick to skip the City Tour
    +Select the Dialog Option to Skip the Introduction if you can, if you can't accept Welcome to Stormwind (manually skip this step after the decision)
    *Keep in Mind that when you skip the Introduction it is assumed that you have a Mount already
	.target Captain Garrick
	.skipgossip 154169,1
    .isQuestTurnedIn 55992
--VV Gossip objective
step << Horde
	#veteran
    .goto 85,52.52,88.10
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Breka to skip the City Tour
    *Keep in Mind that when you skip the Introduction it is assumed that you have a Mount already
	.target Warlord Breka Grimaxe
	.skipgossip 168431,1
    .isQuestTurnedIn 55992
--VV Gossip objective
step << Alliance
    .goto 84,63.77,73.60
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Renato
    .accept 332 >>Accept Wine Shop Advert
	.target Renato Gallina
    .isQuestTurnedIn 63219
step << Alliance
	#completewith next
    .goto 84,64.52,70.18,20,0
    .goto 84,68.67,73.75,15,0
    .goto 84,68.41,75.17,15,0
    .goto 84,70.23,73.34,20 >>Travel to the Riding Trainer
step << Alliance
    .goto 84,70.23,73.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bralla. Train Apprentice Riding
    .skill riding,75 >> Learn Apprentice Riding
	.target Bralla Cloudwing
step << Alliance
    .nodmf
    .isQuestTurnedIn 63219  --x exile reach intro skip
    .goto 84,70.94,75.09,10,0
    .goto 84,70.15,82.76,25,0
    .goto 84,70.92,72.45
    >>Jump on the Small Ledge
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bartlett in Goldshire
    .fp >>Get the Goldshire Flight Path
step << Alliance
    .isQuestTurnedIn 63219  --x exiles reach skip check
    .dmf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Darkmoon Faire Mystic Mage
    .goto 103,51.34,42.03
    .accept 7905 >>Accept The Darkmoon Faire
step << Alliance
    .dmf
    .isQuestTurnedIn 63219 --x Exile's Reach Skip
    +Talk to Darkmoon Faire Mystic Mage and press accept
    .skipgossip
    .zoneskip 37
    .goto 84,62.25,72.96
step << Alliance
    .isOnQuest 59583
    .goto 84,70.15,85.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lindie Springstock
    .turnin 59583 >>Turn in Welcome to Stormwind
step << Alliance
    .isQuestTurnedIn 59583
    .goto 84,70.15,85.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lindie Springstock
    .accept 58908 >>Accept Finding Your Way
step << Alliance
    .isOnQuest 58908
    .goto 84,69.44,84.55
    .complete 58908,1 --1/1 Ask a guard for directions to the Stable Master in Old Town
	.skipgossip 15
step << Alliance
    .isOnQuest 58908
    .goto 84,69.79,83.83
	.skipgossip
    .complete 58908,2 --1/1 Speak with Lindie Springstock
step << Alliance
    #sticky
    .isOnQuest 58908
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Renato
    .goto 84,63.77,73.60
    .accept 332 >>Accept Wine Shop Advert
step << Alliance
    .isOnQuest 58908
    .goto 84,77.55,67.27
	*Follow Lindie, don't run ahead or the quest won't complete
    .complete 58908,3 --1/1 Follow Lindie Springstock to the Stable Master in Old Town
step << Alliance
    .isOnQuest 58908
    .goto 84,77.29,66.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Curly
    .turnin 58908 >>Turn in Finding Your Way
step << Alliance
    .isQuestTurnedIn 58908
    .goto 84,77.29,66.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Curly
    .accept 58909 >>Accept License to Ride
step << Alliance
    .isOnQuest 58909
    .goto 84,77.37,67.60
    .complete 58909,1 --Learn the Apprentice Riding skill
step << Alliance
    .isOnQuest 58909
    .goto 84,77.29,66.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Curly
    .turnin 58909 >>Turn in License to Ride
step << Alliance
    .isQuestTurnedIn 58909
    .goto 84,77.29,66.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Curly
    .accept 58910 >>Accept What's Your Specialty? << Druid
    .accept 59586 >>Accept What's Your Specialty? << Hunter
    .accept 59587 >>Accept What's Your Specialty? << Mage
    .accept 59588 >>Accept What's Your Specialty? << Monk
    .accept 59589 >>Accept What's Your Specialty? << Paladin
    .accept 59590 >>Accept What's Your Specialty? << Priest
    .accept 59591 >>Accept What's Your Specialty? << Rogue
    .accept 59592 >>Accept What's Your Specialty? << Shaman
    .accept 59593 >>Accept What's Your Specialty? << Warlock
    .accept 59594 >>Accept What's Your Specialty? << Warrior
step << Alliance
    .isQuestTurnedIn 59583
    .isOnQuest 58910 << Druid
    .isOnQuest 59586 << Hunter
    .isOnQuest 59587 << Mage
    .isOnQuest 59588 << Monk
    .isOnQuest 59589 << Paladin
    .isOnQuest 59590 << Priest
    .isOnQuest 59591 << Rogue
    .isOnQuest 59592 << Shaman
    .isOnQuest 59593 << Warlock
    .isOnQuest 59594 << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk Mithlos Falconbriar << Druid
    .goto 84,79.6,71.3,10,0 << Druid
    .goto 84,80.33,70.43,10,0 << Druid
    .goto 84,79.2,68.68 << Druid
    .complete 58910,1 --1/1 Speak with Dalgrun Steelpine to learn about specializations << Druid
    .complete 58910,2 --1/1 Activate a combat specialization << Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk Dalgrun Steelpine << Hunter
    .goto 84,79.13,71.45 << Hunter
    .complete 59586,1 --1/1 Speak with Dalgrun Steelpine to learn about specializations << Hunter
    .complete 59586,2 --1/1 Activate a combat specialization << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk Frazzle Frostfingers << Mage
    .goto 84,79.6,71.3,10,0 << Mage
    .goto 84,80.36,69.55 << Mage
    .complete 59587,1 >>complete What's Your Specialty? << Mage
    .complete 59587,2 >>complete What's Your Specialty? << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk Juisheng Halfclaw << Monk
    .goto 84,79.6,71.3,10,0 << Monk
    .goto 84,80.36,70.05 << Monk
    .complete 59588,1 >>complete What's Your Specialty? << Monk
    .complete 59588,2 >>complete What's Your Specialty? << Monk
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk Ezul'aan << Paladin
    .goto 84,79.7,69.55,10,0 << Paladin
    .goto 84,79.16,69.47 << Paladin
    .complete 59589,1 >>complete What's Your Specialty? << Paladin
    .complete 59589,2 >>complete What's Your Specialty? << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk Patrice Lancaster << Priest
    .goto 84,79.7,69.55,10,0 << Priest
    .goto 84,78.91,69.8 << Priest
    .complete 59590,1 >>complete What's Your Specialty? << Priest
    .complete 59590,2 >>complete What's Your Specialty? << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk Veruca Darkstream << Rogue
    .goto 84,79.95,69.23,10,0 << Rogue
    .goto 84,79.51,69.47,5,0 << Rogue
    .goto 84,78.52,70.76 << Rogue
    .complete 59591,1 >>complete What's Your Specialty? << Rogue
    .complete 59591,2 >>complete What's Your Specialty? << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk Mulric Boldrock << Shaman
    .goto 84,79.95,69.23,10,0 << Shaman
    .goto 84,78.71,70.88 << Shaman
    .complete 59592,1 >>complete What's Your Specialty? << Shaman
    .complete 59592,2 >>complete What's Your Specialty? << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk Laphandrus Voidheart << Warlock
    .goto 84,79.95,69.23,10,0 << Warlock
    .goto 84,79.53,69.42,5,0 << Warlock
    .goto 84,78.98,69.61 << Warlock
    .complete 59593,1 >>complete What's Your Specialty? << Warlock
    .complete 59593,2 >>complete What's Your Specialty? << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk Kualiang Thunderfist << Warrior
    .goto 84,80.02,70.71 << Warrior
    .complete 59594,1 >>complete What's Your Specialty? << Warrior
    .complete 59594,2 >>complete What's Your Specialty? << Warrior
step << Alliance
    .isQuestTurnedIn 59583
    .isOnQuest 58910 << Druid
    .isOnQuest 59586 << Hunter
    .isOnQuest 59587 << Mage
    .isOnQuest 59588 << Monk
    .isOnQuest 59589 << Paladin
    .isOnQuest 59590 << Priest
    .isOnQuest 59591 << Rogue
    .isOnQuest 59592 << Shaman
    .isOnQuest 59593 << Warlock
    .isOnQuest 59594 << Warrior
    .goto 84,79.13,71.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Dalgrun Steelpine
    .turnin 59586 >>Turn In What's Your Specialty?
    .turnin 58910 >>Turn In What's Your Specialty? << Druid
    .turnin 59586 >>Turn In What's Your Specialty? << Hunter
    .turnin 59587 >>Turn In What's Your Specialty? << Mage
    .turnin 59588 >>Turn In What's Your Specialty? << Monk
    .turnin 59589 >>Turn In What's Your Specialty? << Paladin
    .turnin 59590 >>Turn In What's Your Specialty? << Priest
    .turnin 59591 >>Turn In What's Your Specialty? << Rogue
    .turnin 59592 >>Turn In What's Your Specialty? << Shaman
    .turnin 59593 >>Turn In What's Your Specialty? << Warlock
    .turnin 59594 >>Turn In What's Your Specialty? << Warrior
step << Alliance
    .isQuestTurnedIn 59583
    .isQuestTurnedIn 58910 << Druid
    .isQuestTurnedIn 59586 << Hunter
    .isQuestTurnedIn 59587 << Mage
    .isQuestTurnedIn 59588 << Monk
    .isQuestTurnedIn 59589 << Paladin
    .isQuestTurnedIn 59590 << Priest
    .isQuestTurnedIn 59591 << Rogue
    .isQuestTurnedIn 59592 << Shaman
    .isQuestTurnedIn 59593 << Warlock
    .isQuestTurnedIn 59594 << Warrior
    .isQuestTurnedIn 55992
    .goto 84,79.14,71.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lindie Springstock
    .accept 58911 >>Accept Home Is Where the Hearth Is
step << Alliance
    .isOnQuest 58911
    .isQuestTurnedIn 59583
    .goto 84,75.69,54.09
    .complete 58911,1 --1/1 Make the Pig and Whistle Tavern your home
step << Alliance
    .isOnQuest 58911
    .isQuestTurnedIn 59583
    .goto 84,75.69,54.09
    .home >>Set your Hearthstone to Pig and Whistle Tavern
step << Alliance
    .isOnQuest 58911
    .isQuestTurnedIn 59583
    .goto 84,75.69,54.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Maegan Tillman
    .turnin 58911 >>Turn in Home Is Where the Hearth Is
step << Alliance
    .isQuestTurnedIn 58911
    .isQuestTurnedIn 59583
    .goto 84,75.25,54.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Henry Garrick
    .accept 58912 >>Accept An Urgent Meeting
step << Alliance
    .isOnQuest 58912
    .isQuestTurnedIn 59583
    .goto 84,74.97,55.43,15,0
    .goto 84,71.56,55.67,15,0
    .goto 84,70.15,52.79,15,0
    .goto 84,74.03,46.17,25,0
    .goto 84,78.54,44.87,45,0
    .goto 84,80.71,38.18,20,0
    .goto 84,84.63,33.12
    .complete 58912,2 --1/1 Find Captain Garrick in Stormwind Keep
step << Alliance
    .isOnQuest 58912
    .isQuestTurnedIn 59583
    .goto 84,85.22,32.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick
    .turnin 58912 >>Turn in An Urgent Meeting
step << Alliance
    .isQuestTurnedIn 58912
    .isQuestTurnedIn 59583
    .goto 84,85.22,32.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick
    .accept 58983 >>Accept Battle for Azeroth: Tides of War
step << Alliance
    .isQuestTurnedIn 59583
    .isOnQuest 58983
    .goto 84,85.22,32.07
    >>Wait for the War Council Roleplay to finish
	.timer 45,War Council Roleplay
    .complete 58983,1 --1/1 Attend the War Council
step << Alliance
    .isOnQuest 58983
    .isQuestTurnedIn 59583
    .goto 84,85.90,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Anduin Wrynn
    .turnin 58983 >>Turn in Battle for Azeroth: Tides of War
step << Alliance
    .nodmf
    .isQuestTurnedIn 58911 --x exile reach no intro skip
    .goto 84,73.04,47.56,25,0
    .goto 84,67.45,57.19,25,0
    .goto 84,68.59,62.19,25,0
    .goto 84,66.03,64.49,25,0
    .goto 84,64.39,67.14,25,0
    .goto 84,63.89,72.21,35,0
    .goto 84,68.07,79.75,25,0
    .goto 84,70.1,79.88,25,0
    .goto 84,70.41,84.03,25,0
    .goto 84,70.92,72.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bartlett in Goldshire
    .fp >>Get the Goldshire Flight Path
step << Alliance
    .isQuestTurnedIn 58911 --x Exile's Reach no skip check
    .dmf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Darkmoon Faire Mystic Mage
    .goto 84,80.46,37.71,10,0
    .goto 84,72.51,46.59,30,0
    .goto 84,70.27,46.83,10,0
    .goto 84,62.1,32.16
    .accept 7905 >>Accept The Darkmoon Faire
step << Alliance
    .dmf
    .isQuestTurnedIn 31450 --x Exile's Reach No skip
    +Talk to Darkmoon Faire Mystic Mage and press accept
    .skipgossip
    .zoneskip 37
    .goto 84,62.1,32.18
step << Horde
    .isQuestTurnedIn 52969
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Warlord Breka Grimaxe
    .goto 85,52.51,88.06
    .skipgossip 168431,1
    .turnin 63219 >>Skip the Tutorial if possible. Otherwise skip this step
    .abandon 60343 >>Abandon Welcome to Orgrimmar
step << Horde
    .isQuestAvailable 63219
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Warlord Breka Grimaxe
    .goto 85,52.52,88.06
    .skipgossip 1
    .accept 60343 >>Accept Welcome to Orgrimmar
step << Horde
    .isQuestTurnedIn 63219
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Warlord Breka Grimaxe
    .goto 85,52.51,88.06
    .skipgossip 168431,1
    .turnin 63219 >>Skip the Tutorial
    .abandon 60343 >>Abandon Welcome to Orgrimmar
step << Horde
    .isQuestAvailable 63219
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Cork Fizzlepop
    .goto 85,51.93,85.37
    .turnin 60343 >>Turn in Welcome to Orgrimmar
    .accept 60344 >>Accept Finding Your Way
step << Horde
    .isQuestAvailable 63219
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the Orgrimmar Grunt
    .goto 85,52.47,84.23
    .skipgossip 168459,15
    .complete 60344,1 --1/1 Ask a guard for directions to the Stable Master
step << Horde
    .isQuestAvailable 63219
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Cork Fizzlepop
    .goto 85,52.24,84.42
    .skipgossip
    .complete 60344,2 --1/1 Speak with Cork Fizzlepop
step << Horde
    .isQuestAvailable 63219
    >>Follow Cork Fizzlepop. Stay near him otherwise he will stop moving
    .goto 85,50.98,65.86,20,0
    .goto 85,56.52,65.02,20,0
    .goto 85,58.98,60.74,20,0
    .goto 85,60.47,49.70,20,0
    .goto 85,62.04,48.19,12,0
    .goto 85,63.42,51.02,12,0
    .goto 85,67.34,47.45,20,0
    .goto 85,67.98,39.28,20,0
    .goto 85,69.05,33.48,20,0
    .goto 85,67.86,32.06,20,0
    .goto 85,62.06,33.33
    .complete 60344,3 --1/1 Follow Cork Fizzlepop to the Stables
step << Horde
    .isQuestAvailable 63219
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rohaka Tuskmaul
    .goto 85,61.42,32.76
    .turnin 60344 >>Turn in Finding Your Way
    .accept 60345 >>Accept License to Ride
step << Horde
    .isQuestAvailable 63219
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kildar and train Apprentice Riding
    .goto 85,61.32,34.60
    .complete 60345,1 --Learn the Apprentice Riding skill
step << Horde
    .isQuestAvailable 63219
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rohaka Tuskmaul
    .goto 85,61.43,32.76
    .turnin 60345 >>Turn in License to Ride
step << Horde
    .isQuestAvailable 63219
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Cork Fizzlepop
    .goto 85,61.46,32.90
    .accept 60347 >>Accept What's Your Specialty? << Hunter
    .accept 60353 >>Accept What's Your Specialty? << Shaman
    .accept 60357 >>Accept What's Your Specialty? << Warrior
    .accept 60348 >>Accept What's Your Specialty? << Mage
    .accept 60352 >>Accept What's Your Specialty? << Rogue
    .accept 60355 >>Accept What's Your Specialty? << Warlock
    .accept 60350 >>Accept What's Your Specialty? << Paladin
    .accept 60349 >>Accept What's Your Specialty? << Monk
    .accept 60351 >>Accept What's Your Specialty? << Priest
    .accept 60346 >>Accept What's Your Specialty? << Druid
step << Horde
    .isQuestAvailable 63219
    #completewith next
    +|cfff78300Use & drag a mount to your action bars. You can find it in your Mount Journal (Default: SHIFT+P). Use the mount!|r
step << Horde
    .isQuestAvailable 63219
    #completewith next
    .goto 85,68.48,32.22,30,0
    .goto 85,71.46,42.03,10,0
    .goto 85,71.34,43.08,10,0
    .goto 85,70.70,45.24,25,0
    .goto 85,72.79,45.23,15 >>Follow the arrow and jump up the rocks
step << Horde << Druid
    .isQuestAvailable 63219
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Telotha Pinegrove
    .goto 85,72.92,43.23
    .skipgossip 1
    .complete 60346,1 --1/1 Speak with Telotha Pinegrove to learn about specializations
    .complete 60346,2 --1/1 Activate a combat specialization
step << Horde << Hunter
    .isQuestAvailable 63219
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tamanji
    .goto 85,73.89,43.59
    .skipgossip 1
    .complete 60347,1 --1/1 Speak with Tamanji to learn about specializations
    .complete 60347,2 --1/1 Activate a combat specialization
step << Horde << Warrior
    .isQuestAvailable 63219
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gormok Ogrefist
    .goto 85,73.76,47.13
    .skipgossip 1
    .complete 60357,1 --1/1 Speak with Gormok Ogrefist to learn about specializations
    .complete 60357,2 --1/1 Activate a combat specialization
step << Horde << Shaman
    .isQuestAvailable 63219
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hretar Riverspeaker
    .goto 85,73.41,43.13
    .skipgossip 1
    .complete 60353,1 --1/1 Speak with Hretar Riverspeaker to learn about specializations
    .complete 60353,2 --1/1 Activate a combat specialization
step << Horde << Priest
    .isQuestAvailable 63219
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Martin Goodchilde
    .goto 85,72.64,46.93
    .skipgossip 1
    .complete 60351,1 --1/1 Speak with Martin Goodchilde to learn about specializations
    .complete 60351,2 --1/1 Activate a combat specialization
step << Horde << Paladin
    .isQuestAvailable 63219
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Avaros Dawnglaive
    .goto 85,73.19,47.42
    .skipgossip 1
    .complete 60350,1 --1/1 Speak with Avaros Dawnglaive to learn about specializations
    .complete 60350,2 --1/1 Activate a combat specialization
step << Horde << Mage
    .isQuestAvailable 63219
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Feenix Arcshine
    .goto 85,74.69,43.61
    .skipgossip 1
    .complete 60348,1 --1/1 Speak with Feenix Arcshine to learn about specializations
    .complete 60348,2 --1/1 Activate a combat specialization
step << Horde << Monk
    .isQuestAvailable 63219
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Huinli Wingpaw
    .goto 85,75.68,43.58
    .skipgossip 1
    .complete 60349,1 --1/1 Speak with Huinli Wingpaw to learn about specializations
    .complete 60349,2 --1/1 Activate a combat specialization
step << Horde << Rogue
    .isQuestAvailable 63219
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thega Graveblade
    .goto 85,75.47,47.50
    .skipgossip 1
    .complete 60352,1 --1/1 Speak with Huinli Wingpaw to learn about specializations
    .complete 60352,2 --1/1 Activate a combat specialization
step << Horde << Warlock
    .isQuestAvailable 63219
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kazak Darkscream. Afterwards select a specialization (Default: N)
    .goto 85,74.63,47.42
    .skipgossip 1
    .complete 60355,1 --1/1 Speak with Kazak Darkscream to learn about specializations
    .complete 60355,2 --1/1 Activate a combat specialization
step << Horde << Druid
    .isQuestAvailable 63219
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Telotha Pinegrove
    .goto 85,72.92,43.23
    .skipgossip 1
    .turnin 60346 >>Turn in What's Your Specialty?
step << Horde << Hunter
    .isQuestAvailable 63219
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tamanji
    .goto 85,73.89,43.59
    .skipgossip 1
    .turnin 60347 >>Turn in What's Your Specialty?
step << Horde << Warrior
    .isQuestAvailable 63219
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gormok Ogrefist
    .goto 85,73.76,47.13
    .skipgossip 1
    .turnin 60357 >>Turn in What's Your Specialty?
step << Horde << Shaman
    .isQuestAvailable 63219
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hretar Riverspeaker
    .goto 85,73.41,43.13
    .skipgossip 1
    .turnin 60353 >>Turn in What's Your Specialty?
step << Horde << Priest
    .isQuestAvailable 63219
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Martin Goodchilde
    .goto 85,72.64,46.93
    .skipgossip 1
    .turnin 60351 >>Turn in What's Your Specialty?
step << Horde << Paladin
    .isQuestAvailable 63219
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Avaros Dawnglaive
    .goto 85,73.19,47.42
    .skipgossip 1
    .turnin 60350 >>Turn in What's Your Specialty?
step << Horde << Mage
    .isQuestAvailable 63219
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Feenix Arcshine
    .goto 85,74.69,43.61
    .skipgossip 1
    .turnin 60348 >>Turn in What's Your Specialty?
step << Horde << Monk
    .isQuestAvailable 63219
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Huinli Wingpaw
    .goto 85,75.68,43.58
    .skipgossip 1
    .turnin 60349 >>Turn in What's Your Specialty?
step << Horde << Rogue
    .isQuestAvailable 63219
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thega Graveblade
    .goto 85,75.47,47.50
    .skipgossip 1
    .turnin 60352 >>Turn in What's Your Specialty?
step << Horde << Warlock
    .isQuestAvailable 63219
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kazak Darkscream. Afterwards select a specialization (Default: N)
    .goto 85,74.63,47.42
    .turnin 60355 >>Turn in What's Your Specialty?
step << Horde
    .isQuestAvailable 63219
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Cork Fizzlepop
    .goto 85,73.24,45.21
    .accept 60359 >>Accept Home Is Where the Hearth Is
step << Horde
    .isQuestAvailable 63219
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Innkeeper Nufa and click on "Make this inn your home"
    .goto 85,70.24,48.92,10,0
    .goto 85,71.31,49.97
    .complete 60359,1 --1/1 Make The Wyvern's Tail your home
step << Horde
    .isQuestAvailable 63219
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Innkeeper Nufa
    .goto 85,71.31,49.97
    .turnin 60359 >>Turn in Home Is Where the Hearth Is
step << Horde
    .isQuestAvailable 63219
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Shuja Grimaxe
    *|cfff78300Relog if you can't see her.|r
    .goto 85,70.87,49.53
    .accept 60360 >>Accept An Urgent Meeting
step << Horde
    .isOnQuest 60360
    >>Follow the arrow to Grommash Hold. Don't forget to use your mount!
    .goto 85,70.06,48.75,25,0
    .goto 85,64.92,49.52,25,0
    .goto 85,63.49,50.94,15,0
    .goto 85,62.10,48.12,15,0
    .goto 85,59.81,50.52,15,0
    .goto 85,58.56,62.79,25,0
    .goto 85,51.19,66.21,30,0
    .goto 85,50.36,76.99,30,0
    .goto 85,49.79,75.31
    .complete 60360,2 --1/1 Find Warlord Breka Grimaxe at Grommash Hold
step << Horde
    .isQuestTurnedIn 60359
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Warlord Breka Grimaxe
    .goto 85,48.26,71.39
    .turnin 60360 >>Turn in An Urgent Meeting
    .accept 60361 >>Accept Battle for Azeroth: Mission Statement
step << Horde
    .isQuestTurnedIn 60359
    >>Wait for the roleplay
    .goto 85,48.26,71.39
    .complete 60361,1 --Meet with Warchief Sylvanas Windrunner
step << Horde
    .isQuestTurnedIn 60359
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nathanos Blightcaller
    .goto 85,48.51,71.23
    .skipgossip
    .complete 60361,2 --Speak with Nathanos Blightcaller
--VV Can cut off everything from line 1686 onwards? Feel like it's already all in the BFA intro guide
]])
