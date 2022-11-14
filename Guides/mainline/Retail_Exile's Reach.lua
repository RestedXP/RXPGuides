RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Starting Zones
#name 1Retail_Exile's Reach
#displayname Exile's Reach
#next RestedXP Alliance 10-60\1Retail-Alliance_Darkmoon Faire << Alliance
#next RestedXP Horde 10-60\1 BfA Intro << Horde

<<!DemonHunter !DK !Kultiran !DarkIronDwarf !LightforgedDraenei !Mechagnome !VoidElf

step << Alliance/Horde
	#completewith next
    +Welcome to RestedXP Exile's Reach Guide! This Guide is simultaneously beginner friendly and generally the fastest intro guide.
step << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick on the Middle of the Boat
	.accept 56775 >> Accept Warming Up
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Warlord Breka Grimaxe
	.accept 59926 >> Accept Warming Up
step
    >>Use the spells on your hotbar to Kill a Combat Dummy(ideally the closest to you)
    .complete 56775,1 << Alliance
    .complete 59926,1 << Horde
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick
	.turnin 56775 >> Turn in Warming Up
step << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Warlock Breka Grimaxe
	.turnin 59926 >> Turn in Warming Up
step << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Private Cole near the Combat Dummies
	.accept 58209 >> Accept Stand Your Ground
step << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Grund Throg
	.accept 59927 >> Accept Stand Your Ground
step << Alliance
    >>Try to Kill Private Cole
	.complete 58209,1 --1/1 Spar with Private Cole
step << Horde
	>>Try to Kill Grunt Throg
	.complete 59927,1 --1/1 Spar with Grunt Throg
step << Alliance
    >>Follow Private Cole
    .turnin 58209 >> Turn in Stand Your Ground
	.accept 58208 >> Accept Brace for Impact
step << Horde
    >>Follow Grunt Throg
    .turnin 59927 >>Turn in Stand Your Ground
    .accept 59928 >>Accept Brace for Impact
step << Alliance
    >>Follow Private Cole inside the Ship
	.turnin 58208 >>Turn in Brace for Impact
step << Horde
    >>Follow Grunt Throg again
    .turnin 59928 >>Turn in Brace for Impact
step
    .goto 1409,61.9,82.9
    >>If you don't see the Waypoint Arrow do /reload
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick << Alliance
    .accept 55122 >>Accept Murloc Mania << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Warlord Breka Grimaxe << Horde
    .accept 59929 >>Accept Murloc Mania << Horde
step
    .goto 1409,61.23,80.35
    >>Kill and loot Murlocs in the Camps
    .complete 55122,1 << Alliance   --6/6 First Aid Kits recovered from defeated Murlocs
    .complete 59929,1 << Horde      --6/6 First Aid Kits recovered from defeated Murlocs
step
    .goto 1409,61.88,82.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Warlord Breka Grimaxe << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick << Alliance
    .turnin 55122 >>Turn in Murloc Mania << Alliance
    .turnin 59929 >>Turn in Murloc Mania << Horde
    .accept 54951 >>Accept Emergency First Aid << Alliance
    .accept 59930 >>Accept Emergency First Aid << Horde
step << Alliance
    #sticky
    #completewith QuestKeybindingsExile
    +If you want to make the most of RXP; Press Escape -> Options -> Keybindings -> RestedXP Guides -> Select and Bind Active Button 1,2,3 and 4
    *This will allow you to press a Keybind to use a Quest Item rather than to manually have to Right-Click it from the Bags or through a Click on the RXP Button
    *In Dragonflight they have added a new Quest Feature that sometimes a Right-Click on he Quest Objective is enough to use your Quest Item!
step
    #label QuestKeybindingsExile << Alliance
	.use 168410 >>Use the Item "First Aid Kit" in your Bags on Kee-La, Austin, and Bjorn on the ground around you << Alliance
	.use 168410 >>Use the Item "First Aid Kit" in your Bags on Bo, Mithdran, and Lana on the ground around you << Horde
    .complete 54951,2 << Alliance --1/1 First Aid Kit used on Kee-La
    .complete 59930,2 << Horde --1/1 First Aid Kit used on Bo
    .goto 1409,61.73,83.48,-1
    .complete 54951,3 << Alliance --1/1 First Aid Kit used on Austin Huxworth
    .complete 59930,3 << Horde --1/1 First Aid Kit used on Mithdran Dawntracker
    .goto 1409,61.37,82.60,-1
    .complete 54951,1 << Alliance --1/1 First Aid Kit used on Bjorn Stouthands
    .complete 59930,1 << Horde --1/1 First Aid Kit used on Lana Jordan
    .goto 1409,61.56,82.24,-1
step
    .goto 1409,61.88,82.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Warlord Breka Grimaxe << Horde
    .turnin 54951 >>Turn in Emergency First Aid << Alliance
    .accept 54952 >>Accept Finding the Lost Expedition << Alliance
    .turnin 59930 >>Turn in Emergency First Aid << Horde
    .accept 59931 >>Accept Finding the Lost Expedition << Horde
step
    .goto 1409,58.93,75.78
    >>Run north-west toward Alaria << Alliance
    >>Run north-west toward Won'sa << Horde
    .complete 54952,1 << Alliance --1/1 Travel north to find any expedition survivors
    .complete 59931,1 << Horde --1/1 Travel north to find any expedition survivors
step
    .goto 1409,58.36,74.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alaria << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Won'sa << Horde
    .turnin 54952 >>Turn in Finding the Lost Expedition << Alliance
    .turnin 59931 >>Turn in Finding the Lost Expedition << Horde
step
    .goto 1409,58.37,74.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Warlord Breka Grimaxe << Horde
    .accept 55174 >>Accept Cooking Meat << Alliance
    .accept 59932 >>Accept Cooking Meat << Horde
step << Rogue/Warrior/Monk/Paladin
    >>Kill and loot the Wildlife in the Area. Look at the spot behind the large shipwreck if you're lucky
    .goto 1409,56.42,74.72
    .goto 1409,60.16,73.03
    .complete 55174,1 << Alliance --5/5 Raw Meat collected from wildlife
    .complete 59932,1 << Horde --5/5 Raw Meat collected from wildlife
step << !Rogue !Warrior !Monk !Paladin
    >>Kill and loot the Wildlife in the Area.
    .goto 1409,59.30,74.09
    .complete 55174,1 << Alliance --5/5 Raw Meat collected from wildlife
    .complete 59932,1 << Horde --5/5 Raw Meat collected from wildlife
step
    .goto 1409,58.33,74.58
    >>Right-Click the Campfire to cook the Meat
    .complete 55174,2 << Alliance --1/1 Cook the meat on the campfire
    .complete 59932,2 << Horde --1/1 Cook the meat on the campfire
step
    .goto 1409,58.36,74.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alaria << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Won'sa << Horde
    .turnin 55174 >>Turn in Cooking Meat << Alliance
    .turnin 59932 >>Turn in Cooking Meat << Horde
step << !Hunter
    .goto 1409,58.38,74.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Warlord Breka Grimaxe << Horde
    .accept 59339 >>Accept Enhanced Combat Tactics << Monk << Alliance
    .accept 59934 >>Accept Enhanced Combat Tactics << Monk << Horde
    .accept 59254 >>Accept Enhanced Combat Tactics << !Hunter !Monk << Alliance
    .accept 59933 >>Accept Enhanced Combat Tactics << !Hunter !Monk << Horde
step << !Hunter
    >>Follow Captain Garrick << Alliance
    >>Follow Warlord Breka Grimaxe << Horde
    >>Apply Shadow Word: Pain and then reapply it 3times before it runs out << Priest
    >>Stay in Charge range of Captain Garrick, use it 3times << Warrior << Alliance
    >>Stay in Charge range of Warlord Grimaxe, use it 3times << Warrior << Horde
    >>Cast Moonfire on Captain Garrick when she prompts you to  << Druid << Horde
    >>Cast Moonfire on Breka when she prompts you to  << Druid << Horde
    >>You need to cast Fire Blast in melee range. Frostbolt -> Run forward -> Fire Blast << Mage
    >>Stay at range -> Cast Lightning Strike -> Go into meele range -> Use Primal Strike 4 times -> Repeat << Shaman
    >>Use Crusader Strike 3 times to build 3 Holy Power -> Use Shield of the Righteous -> Repeat << Paladin
	>>Try to drag her back to the campfire while fighting
    .complete 59339,2 << Monk << Alliance --3/3 Blackout Kick used on Captain Garrick
    .complete 59339,1 << Monk << Alliance --6/6 Tiger Palm used on Captain Garrick
    .complete 59934,2 << Monk << Horde --3/3 Blackout Kick used on Captain Garrick
    .complete 59934,1 << Monk << Horde --6/6 Tiger Palm used on Captain Garrick
    .complete 59254,1 << !Hunter !Monk << Alliance --3/3 Abilities proven against Captain Garrick
    .complete 59933,1 << !Hunter !Monk << Horde --3/3 Abilities proven against Warlord Grimaxe
step << !Hunter
    .goto 1409,58.36,74.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Warlord Breka Grimaxe << Horde
    .turnin 59339 >>Turn in Enhanced Combat Tactics << Monk << Alliance
    .turnin 59934 >>Turn in Enhanced Combat Tactics << Monk << Horde
    .turnin 59254 >>Turn in Enhanced Combat Tactics << !Hunter !Monk << Alliance
    .turnin 59933 >>Turn in Enhanced Combat Tactics << !Hunter !Monk << Horde
step
    .goto 1409,58.36,74.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alaria << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Won'sa << Horde
    .accept 55173 >>Accept Northbound << Alliance
    .accept 59935 >>Accept Northbound << Horde
step
    .goto 1409,62.72,69.85
    >>Travel East and |Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Austin Huxworth << Alliance
    >>Travel East and |Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mithdran Dawntracker << Horde
    .turnin 55173 >>Turn in Northbound << Alliance
    .turnin 59935 >>Turn in Northbound << Horde
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Austin Huxworth << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mithdran Dawntracker << Horde
    .goto 1409,62.72,69.85
    .accept 59342 >>Accept Taming the Wilds << Alliance
    .accept 59937 >>Accept Taming the Wilds << Horde
step << Hunter
    >>Wait until you've learned the ability to tame beasts.
    .complete 59342,1 << Alliance --1/1 Tame Beast learned from Mithdran
    .complete 59937,1 << Horde --1/1 Tame Beast learned from Mithdran
step << Hunter
    >>Tame a Sharpbeak Hawk for increased movement speed.
    .complete 59342,2 << Alliance --1/1 Any wildlife beast tamed
    .complete 59937,2 << Horde --1/1 Any wildlife beast tamed
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Austin Huxworth << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mithdran Dawntracker << Horde
    .goto 1409,62.72,69.85
    .turnin 59342 >>Turn in Taming the Wilds << Alliance
    .turnin 59937 >>Turn in Taming the Wilds << Horde
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Austin Huxworth << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mithdran Dawntracker << Horde
    .goto 1409,62.72,69.85
    .accept 55186 >>Accept Down with the Quilboar << Alliance
    .accept 59938 >>Accept Down with the Quilboar << Horde
    .accept 55184 >>Accept Forbidden Quilboar Necromancy << Alliance
    .accept 59939 >>Accept Forbidden Quilboar Necromancy << Horde
step
    #sticky
    #label quilboarbriarpatch
    >>If possible Kill 7 Quilboar BEFORE engaging Geolord Grek'og
    .goto 1409,60.99,60.81,0,0
    .complete 55184,1 << Alliance --7/7 Quilboar slain
    .complete 59939,1 << Horde --7/7 Quilboar slain
step
    .goto 1409,61.44,63.19,25,0
    .goto 1409,58.97,62.91
    .complete 55186,1 << Alliance --1/1 Geolord Grek'og slain
    .complete 59938,1 << Horde --1/1 Geolord Grek'og slain
step
	#requires quilboarbriarpatch
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Austin Huxworth << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mithdran Dawntracker << Horde
    .turnin 55184 >>Turn in Forbidden Quilboar Necromancy << Alliance
    .turnin 59939 >>Turn in Forbidden Quilboar Necromancy << Horde
    .goto 1409,56.26,59.17
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lindie Springstock << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Cork Fizzlepop << Horde
    .turnin 55186 >>Turn in Down with the Quilboar << Alliance
    .turnin 59938 >>Turn in Down with the Quilboar << Horde
    .accept 55193 >>Accept The Scout-o-Matic 5000 << Alliance
    .accept 59940 >>Accept The Choppy Booster Mk. 5 << Horde
    .goto 1409,56.17,59.12
step
    .goto 1409,56.08,58.81
    >>Wait until you can Right-Click the Scoop-o-Matic 5000. Press Escape to skip the cinematic when you see the black bars on the screen << Alliance
    >>Wait until you can Right-Click the Choppy Booster Mk. 5. Press Escape to skip the cinematic when you see the black bars on the screen << Horde
    .complete 55193,1 << Alliance --1/1 Use the Scoop-o-Matic 5000 to scout the Area
    .complete 59940,1 << Horde --1/1 Use the Choppy Booster Mk. 5 to scout the Area
step
    .goto 1409,56.16,59.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lindie << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Cork << Horde
    .turnin 55193  >>Turn in The Choppy Booster Mk. 5 << Alliance
    .turnin 59940  >>Turn in The Scout-o-Matic 5000 << Horde
    .accept 56034 >>Accept Re-sizing the Situation << Alliance
    .accept 59941 >>Accept Re-sizing the Situation << Horde
step
    #completewith next
    >>Right-Click the Chest
    .goto 1409,58.44,59.36
	.turnin 56579 >>Loot the Chest
step
	.goto 1409,56.6,58.3
    >>Use the "Item" Re-Sizer in your Bags on Wandering Boars in the area. Make sure you're in melee range so you don't get charged
    .use 178051 << Horde
    .use 170557 << Alliance
    .complete 56034,1 << Alliance --3/3 Re-Sizer v9.0.1 tested on Wandering Boars
    .complete 59941,1 << Horde --3/3 Re-Sizer v9.0.1 tested on Wandering Boars
step
    .goto 1409,56.25,59.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Breka << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick << Alliance
    .turnin 56034 >>Turn in Re-sizing the Situation << Alliance
    .turnin 59941 >>Turn in Re-sizing the Situation << Horde
step
    .goto 1409,56.17,59.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Cork << Horde
    .accept 55879 >>Accept Ride of the Scientifically Enhanced Boar << Alliance
    .accept 59942 >>Accept The Re-Deather << Horde
step << Alliance
    >>Wait until you can Right-Click on the Giant Boar
    .goto 1409,56.5,58.4
    .complete 55879,1 --1/1 Ride the Giant Boar
step << Horde
    >>Right-Click on the Choppy Booster Mk. 5
    .goto 1409,56.08,58.81
    .complete 59942,1 --1/1 Ride the Choppy Booster Mk. 5
step
    >>Charge the Big Guys << Alliance
    >>Use "Re-Sizer Blast" (1) on the big guys (Cadavers) in the area  << Horde
    .complete 55879,2 << Alliance --8/8 Monstrous Cadaver slain
    .complete 59942,2 << Horde --8/8 Monstrous Cadaver slain
step
    .goto 1409,50.95,52.76
    >>Drag Torgok to Henry and kill him << Alliance
    >>Drag Torgok to Shuja and kill him << Horde
    .complete 55879,3 << Alliance --1/1 Torgok slain
    .complete 59942,3 << Horde --1/1 Torgok slain
step
    .goto 1409,52.59,53.35
    >>Wait for the small RP event. |Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Henry << Alliance
    >>Wait for the small RP event. |Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Shuja << Horde
    >>Remember to press Escape to skip the next cinematic
    .turnin 55879,1 >>Turn in Ride of the Scientifically Enhanced Boar << Alliance
    .turnin 59942,1 >>Turn in The Re-Deather << Horde
step << Alliance
    .goto 1409,52.35,55.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick
    .accept 55194 >> Accept Stocking Up on Supplies
step << Horde
    .goto 1409,52.17,55.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Breka
    .accept 59950 >>Accept Stocking Up on Supplies
step << Alliance
    .goto 1409,52.22,55.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Quartermaster Richter. Buy Tough Jerky or an Alliance Tabard from her and sell something to her from your Bags
    .complete 55194,2 --Any Item sold to Quartermaster Richter
    .complete 55194,1 --Any Item purchased from Quartermaster Richter
step << Horde
    .goto 1409,52.45,55.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jin'hake. Buy Tough Jerky or a Horde Tabard from him and sell as much as you can from your Bags
    .complete 59950,1 -- A Purchase an item from Provisioner Jin'hake
    .complete 59950,2 -- Sell an item to Provisioner Jin'hake
step << Alliance
    .goto 1409,52.35,55.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick
    .turnin 55194 >>Turn in Stocking Up on Supplies
step << Horde
    .goto 1409,52.17,55.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Breka
    .turnin 59950 >>Turn in Stocking Up on Supplies
step << Warrior
    .goto 1409,52.08,55.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Private Cole << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Grunt Throg << Horde
    .accept 58914 >> Accept A Warrior's End << Alliance
    .accept 59971 >> Accept A Warrior's End << Horde
step << Priest << Alliance
    .goto 1409,52.08,55.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Private Cole
    .accept 58953 >>Accept A Priest's End
step << Priest << Horde
    .goto 1409,52.03,55.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Grunt Throg
    .accept 59961 >>Accept A Priest's End
step << Paladin << Horde
    .goto 1409,52.03,55.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Grunt Throg
    .accept 59958 >>Accept A Paladin's Service
step << Paladin << Alliance
    .goto 1409,52.08,55.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Private Cole
    .accept 58923 >>Accept A Paladin's Service
step << Warlock
    .goto 1409,52.08,55.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Private Cole << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Grunt Throg << Horde
    .accept 58962 >>Accept A Warlock's Bargain << Alliance
    .accept 59970 >>Accept A Warlock's Bargain << Horde
step << Shaman
    .goto 1409,52.30,55.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the Ghost Wolf
    .accept 59002 >>Accept A Shaman's Duty
step << Alliance
    .goto 1409,53.02,55.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bjorn
    .accept 55965 >>Accept Westward Bound
step << Horde
    .goto 1409,52.89,56.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lana
    .accept 59948 >>Accept Westward Bound
step << Shaman
    >>Collect the Veil Blossoms by Right-Clicking them
    .goto 1409,52.12,51.65
    .complete 59002,1,1 --1/4 Veil Blossom
step << Shaman
    >>Collect the Veil Blossoms by Right-Clicking them
    .goto 1409,51.84,51.12
    .complete 59002,1,2 --2/4 Veil Blossom
step << Shaman
    >>Collect the Veil Blossoms by Right-Clicking them
    .goto 1409,52.53,51.00
    .complete 59002,1,3 --3/4 Veil Blossom
step << Shaman
    >>Collect the Veil Blossoms by Right-Clicking them
    .goto 1409,53.23,51.38
    .complete 59002,1,4 --4/4 Veil Blossom
step << Horde
    .goto 1409,53.79,52.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Shuja
    .accept 59943 >>Accept the Harpy Problem
step << Alliance
    .goto 1409,53.50,52.33
     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Henry
    .accept 55196 >>Accept The Harpy Problem << Alliance
step << Alliance
    .goto 1409,56.84,46.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Henry
    .turnin 55196 >>Turn in The Harpy Problem
    .accept 55763 >>Accept The Rescue of Herbert Gloomburst
    .accept 55881 >>Accept Purge the Totems
step << Horde
    .goto 1409,56.94,46.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bo
    .turnin 59943 >>Turn in The Harpy Problem
    .accept 59945 >>Accept Harpy Culling
    .accept 59946 >>Accept Purge the Totems
step << Alliance
    .goto 1409,56.94,46.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kee-La
    .accept 55764 >>Accept Harpy Culling
step << Horde
    .goto 1409,56.82,46.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Shuja
    .accept 59944 >>Accept The Rescue of Herbert Gloomburst
step
    >>Burn the Harpy Totems by clicking on them. Don't go out of your way to kill any Harpies for now
    .complete 59946,1,1 << Horde --1/5 Harpy Totems burned
    .complete 55881,1,1 << Alliance --1/5 Harpy Totems burned
    .goto 1409,58.21,44.50
step
    >>Burn the Harpy Totems by clicking on them. Don't go out of your way to kill any Harpies for now
    .complete 59946,1,2 << Horde --2/5 Harpy Totems burned
    .complete 55881,1,2 << Alliance --2/5 Harpy Totems burned
    .goto 1409,58.84,42.95
step
    >>Burn the Harpy Totems by clicking on them. Don't go out of your way to kill any Harpies for now
    .complete 59946,1,3 << Horde --3/5 Harpy Totems burned
    .complete 55881,1,3 << Alliance --3/5 Harpy Totems burned
    .goto 1409,61.23,41.31
step
    #label Chest3
    >>Right-Click the Chest
    .turnin 56581 >>Loot the Chest
    .goto 1409,59.36,37.70,0,0
step
	#requires Chest3
    >>Burn the Harpy Totems by clicking on them. Don't go out of your way to kill any Harpies for now
    .complete 59946,1,4 << Horde --4/5 Harpy Totems burned
    .complete 55881,1,4 << Alliance --4/5 Harpy Totems burned
    .goto 1409,59.01,39.10
step
	#label Harpytotem
    .goto 1409,57.18,42.19
    >>Burn the last two Harpy Totems by clicking on them. Don't go out of your way to kill any Harpies for now
    .complete 59946,1,5 << Horde --5/5 Harpy Totems burned
    .complete 55881,1,5 << Alliance --5/5 Harpy Totems burned
step
	#sticky
	#label HarpyKill
    >>Kill the Harpies and Worgs that are summoned as you protect Meredy. If you don't have all 10 after protecting her, kill the Worgs around the area
    .complete 55764,1 << Alliance --10/10 Harpies and cohorts slain
    .complete 59945,1 << Horde --10/10 Harpies and cohorts slain
    .goto 1409,56.16,43.55,0,0
step
    .goto 1409,54.26,41.60
    .skipgossip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Meredy. Kill the oncoming waves of enemies. Kill Bloodbeak when it comes << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Herbert. Kill the oncoming waves of enemies. Kill Bloodbeak when it comes << Horde
    .complete 55763,1 << Alliance --1/1 Meredy Huntswell rescued
    .complete 59944,1 << Horde --1/1 Herbert Gloomburst rescued
step << Horde
    #requires HarpyKill
    .goto 1409,56.90,46.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Herbert
    .turnin 59944 >>Turn in The Rescue of Herbert Gloomburst
step << Alliance
    #requires HarpyKill
    .goto 1409,56.91,46.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Meredy
    .turnin 55763 >>Turn in The Rescue of Meredy Huntswell
step
    .goto 1409,56.94,46.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bo << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ka-Lee << Alliance
    .turnin 55764 >>Turn in Harpy Culling << Alliance
    .turnin 59946 >>Turn in Purge the Totems << Horde
    .turnin 59945 >>Turn in Harpy Culling << Horde
step << Alliance
    .goto 1409,56.83,46.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Henry
    .turnin 55881 >>Turn in Purge the Totems
    .accept 55882 >>Accept Message to Base
step << Horde
    .goto 1409,56.83,46.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Shuja
    .accept 59947 >>Accept Message to Base
step
    .goto 1409,58.2,50.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the Lightspawn
    .accept 54933 >>Accept Freeing the Light
step
	>>Right-Click all 4 Orbs around the Lightspawn to disperse the necrotic energy
    .complete 54933,1 --1/1 First necrotic energy dispersed
    .goto 1409,57.5,49.7
    .complete 54933,2 --1/1 Second necrotic energy dispersed
    .goto 1409,58.5,49.2
    .complete 54933,3 --1/1 Third necrotic energy dispersed
    .goto 1409,59.0,50.7
    .complete 54933,4 --1/1 Fourth necrotic energy dispersed
    .goto 1409,57.8,51.2
step << Paladin
    .goto 1409,57.57,52.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Yorah << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Daelya << Horde
    .complete 58923,1 << Alliance --1/1 Speak with the ghost paladin
    .complete 59958,1 << Horde --1/1 Speak with the ghost paladin
step << Paladin
    .goto 1409,57.57,52.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Yorah again << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Daelya again << Horde
    .turnin 58923 >>Turn in A Paladin Service << Alliance
    .turnin 59958 >>Turn in A Paladin Service << Horde
    .accept 58946 >>Accept The Divine's Shield << Alliance
    .accept 60174 >>Accept The Divine's Shield << Horde
step << Paladin
    .goto 1409,57.08,52.73,10,0
    >>Use Divine Shield and pass the barrier
    .complete 58946,1 << Alliance --1/1 Divine shield used
    .complete 60174,1 << Horde --1/1 Divine shield used
step << Paladin
    .goto 1409,57.08,52.73
    .complete 58946,2 << Alliance --1/1 Necrotic altar destroyed
    .complete 60174,2 << Horde --1/1 Necrotic altar destroyed
step << Paladin
    .goto 1409,57.57,52.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Yorah << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Daelya << Horde
    .turnin 58946 >>Turn in The Divine's Shield << Alliance
    .turnin 60174 >>Turn in The Divine's Shield << Horde
step
    .goto 1409,58.20,50.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the Lightspawn
    .turnin 54933 >>Turn in Freeing the Light
step << Warrior
    .goto 1409,51.47,47.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hjalmar
    .turnin 58914 >>Turn in A Warrior's End << Alliance
    .turnin 59971 >>Turn in A Warrior's End << Horde
    .accept 58915 >>Accept Hjalmar's Final Execution << Alliance
    .accept 59972 >>Accept Hjalmar's Final Execution << Horde
step << Warrior
    .goto 1409,51.47,47.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hjalmar the Undying wait then damage him below 20% and then use Execute
    .skipgossip
    .complete 58915,1 << Alliance --1/1 Hjalmar the Undying slain with Execute
    .complete 59972,1 << Horde --1/1 Hjalmar the Undying slain with Execute
step << Warrior << Alliance
    .goto 1409,52.08, 55.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Private Cole
    .turnin 58915 >>Turn In Hjalmar's Final Execution
step << Warrior << Horde
    .goto 1409,52.03, 55.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Grunt Throg
    .turnin 59972 >>Turn In Hjalmar's Final Execution
step << Priest
    .goto 1409,57.32,51.87,5,0
    .goto 1409,56.12,53.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Branven << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sha'zul << Horde
    .turnin 58953 >>Turn in A Priest's End << Alliance
    .turnin 59961 >>Turn in A Priest's End << Horde
    .accept 58960 >>Accept Resurrecting the Recruits << Alliance
    .accept 59965 >>Accept Resurrecting the Recruits << Horde
step << Priest
    .goto 1409,56.12,53.79
    .complete 58960,1 << Alliance --3/3 Expedition recruits resurrected
    .complete 59965,1 << Horde --3/3 Expedition recruits resurrected
step << Priest
    .goto 1409,56.12,53.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Branven << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sha'zul << Horde
    .turnin 58960 >>Turn in Resurrecting the Recruits << Alliance
    .turnin 59965 >>Turn in Resurrecting the Recruits << Horde
step << Warlock
    .goto 1409,52.53,45.89
    .skipgossip
    >>Right-Click the body on the ground
    .complete 58962,1 << Alliance --1/1 Dead warlock's body investigated
    .complete 59970,1 << Horde --1/1 Dead warlock's body investigated
step << Warlock
    >>Pick up the book on the ground
    .goto 1409,52.59,45.85
    .complete 58962,2 << Alliance --1/1 Old Grimoire
    .complete 59970,2 << Horde --1/1 Old Grimoire
step << Warlock
    >>Use the Old Grimoire
    .complete 58962,3 << Alliance --1/1 Voidwalker summoned with grimoire
    .complete 59970,3 << Horde --1/1 Voidwalker summoned with grimoire
    .use 174947
step << Warlock
    .goto 1409,52.61,45.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the Summoned Voidwalker
    .turnin 58962 >>Turn in A Warlock's Bargain << Alliance
    .turnin 59970 >>Turn in A Warlock's Bargain << Horde
step << !Priest << Alliance
    .goto 1409,52.35,55.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick
    .turnin 55882 >>Turn in Message to Base
step << !Priest << Horde
    .goto 1409,52.18,55.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Breka back at the Ogre Ruins
    .turnin 59947 >>Turn in Message to Base
step << Shaman
    .goto 1409,52.21,55.58
    >>Right-Click the campfire
    .complete 59002,2 --1/1 Blossoms burned on campfire
step << Shaman
    >>Capture the ghost wolf by Right-Clicking it
    .complete 59002,3,1 --1/3 Captured ghost wolves freed
    .goto 1409,54.40,58.45
step << Shaman
    >>Capture the ghost wolf by Right-Clicking it
    .complete 59002,3,2 --2/3 Captured ghost wolves freed
    .goto 1409,55.28,52.79
step << Shaman
    >>Capture the ghost wolf by Right-Clicking it
    .complete 59002,3,3 --3/3 Captured ghost wolves freed
    .goto 1409,55.40,50.78
step << Shaman
    .goto 1409,52.30,55.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the Ghost Wolf
    .turnin 59002 >>Turn in A Shaman's Duty to learn Ghost Wolf
step << Monk << Alliance
    .goto 1409,52.14,55.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ke-Laa
    .accept 59347 >>Accept A Monk's Focus
step << Monk << Horde
    .goto 1409,52.04,55.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bo
    .accept 59956 >>Accept A Monk's Focus
step << Monk
    .goto 1409,52.63,49.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bo and select the dialog option
    .complete 59347,1 << Alliance --1/1 Meditate with Kee-La
    .complete 59956,1 << Horde --1/1 Meditate with Bo
step << Monk
    .goto 1409,52.63,49.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ke-Laa << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bo << Horde
    .turnin 59347 >>Turn in A Monk's Focus << Alliance
    .turnin 59956 >>Turn in A Monk's Focus << Horde
    .accept 59349 >>Accept One Last Spar << Alliance
    .accept 59957 >>Accept One Last Spar << Horde
step << Monk
    >>Follow Ke-Laa, damage him then use Touch of Death << Alliance
    >>Follow Bo, damage him then use Touch of Death << Horde
    .complete 59349,1 << Alliance --1/1 Touch of Death used on Kee-La
    .complete 59957,1 << Horde --1/1 Touch of Death used on Kee-La
step << Monk << Alliance
    .goto 1409,52.36,55.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick
    .turnin 59349 >>Turn in One Last Spar
step << Monk << Horde
    .goto 1409,52.18,55.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Breka
    .turnin 59957 >>Turn in One Last Spar
step << Hunter << Alliance
    .goto 1409,52.41,55.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Austin
    .accept 59355 >>Accept A Hunter's Trap
step << Hunter << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mithdran
    .goto 1409,52.56,55.43
    .accept 59952 >>Accept A Hunter's Trap
step << Mage << Alliance
    .goto 1409,52.28,55.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Meredy
    .accept 59352 >>Accept A Mage's Knowledge
step << Mage << Horde
    .goto 1409,52.16,55.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Herbert
    .accept 59954 >>Accept A Mage's Knowledge
step << Mage
    .goto 1409,51.95,49.84
    .complete 59352 << Alliance --1/1 Meredy's Spell Book
    .complete 59954 << Horde --1/1 Herbert's Spell Book
step << Mage << Alliance
    .goto 1409,52.28,55.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Meredy
    .turnin 59352 >>Turn in A Mage's Knowledge
    .accept 59354 >>Accept The Best Way to Use Sheep
step << Mage << Horde
    .goto 1409,52.16,55.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Herbert
    .turnin 59954 >>Turn in A Mage's Knowledge
    .accept 59955 >>Accept The Best Way to Use Sheep
step << Mage
    .goto 1409,52.30,55.46
    >>Follow Grunt Thorg and Herbert << Horde
    >>Follow Private Cole and Meredy << Alliance
    >>Polymorph one of them and then attack him as soon as possible
    .complete 59354,2 << Alliance
    .complete 59955,2 << Horde
step << Mage << Alliance
    .goto 1409,52.30,55.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Meredy
    .turnin 59354 >>Turn in The Best Way to Use Sheep
step << Mage << Horde
    .goto 1409,52.16,55.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Herbert
    .turnin 59955 >>Turn in The Best Way to Use Sheep
step << Alliance
    .goto 1409,51.18,59.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bjorn
    .turnin 55965 >>Turn in Westward Bound
step << Alliance
    .goto 1409,51.11,59.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alaria
    .accept 55639 >>Accept Who Lurks in the Pit
step << Horde
    .goto 1409,51.11,59.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lana
    .turnin 59948 >>Turn in Westward Bound
    .accept 59949 >>Accept Who Lurks in the Pit
step
    >>Right-Click on the cocoons on your way down the spider cave. Try to avoid fighting mobs as it's a waste of time
    .goto 1409,50.88,60.45,10,0
    .goto 1409,52.08,59.97
    .complete 55639,1,1 << Alliance --1/5 Trapped Expedition Member rescued from cocoons
    .complete 59949,1,1 << Horde --1/5 Trapped Expedition Member rescued from cocoons
step
    >>Right-Click on the cocoons on your way down the spider cave. Try to avoid fighting mobs as it's a waste of time
    .goto 1409,52.08,58.38,10,0
    .goto 1409,50.26,58.66
    .complete 55639,1,2 << Alliance --2/5 Trapped Expedition Member rescued from cocoons
    .complete 59949,1,2 << Horde --2/5 Trapped Expedition Member rescued from cocoons
step
    .goto 1409,49.71,60.49,10,0
    .goto 1409,49.71,61.99
    >>Right-Click on the cocoons on your way down the spider cave. Try to avoid fighting mobs as it's a waste of time
    .complete 55639,1,3 << Alliance --3/5 Trapped Expedition Member rescued from cocoons
    .complete 59949,1,3 << Horde --3/5 Trapped Expedition Member rescued from cocoons
step
    .goto 1409,51.12,62.10,14,0
    .goto 1409,51.98,60.69
    >>Right-Click on the cocoons on your way down the spider cave. Try to avoid fighting mobs as it's a waste of time
    .complete 55639,1,4 << Alliance --4/5 Trapped Expedition Member rescued from cocoons
    .complete 59949,1,4 << Horde --4/5 Trapped Expedition Member rescued from cocoons
step
    .goto 1409,52.07,59.13,10,0
    .goto 1409,50.88,58.11
    >>Right-Click on the cocoons on your way down the spider cave. Try to avoid fighting mobs as it's a waste of time
    .complete 55639,1,5 << Alliance --5/5 Trapped Expedition Member rescued from cocoons
    .complete 59949,1,5 << Horde --5/5 Trapped Expedition Member rescued from cocoons
step
    .goto 1409,50.08,59.91,8,0
    .goto 1409,47.63,60.34
    >>Kill Hrun the Exiled
    .complete 55639,2 << Alliance --Defeat Hrun to rescue Ralia Dreamchaser (1)
    .complete 59949,2 << Horde --Defeat Hrun to rescue Crenna Earth-Daughter (1)
step
    .goto 1409,47.77,60.29
    >>Right-Click on Crenna Earth-Daughter to ride on her << Horde
    >>Right-Click on Ralia Dreamchaser to ride on her << Alliance
    .complete 55639,3 << Alliance --Ride Ralia Dreamchaser to escape (1)
    .complete 59949,3 << Horde --Ride Crenna Earth-Daughter to escape (1)
step << Horde
    .goto 1409,52.18,55.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Breka
    .turnin 59949 >>Turn in Who Lurks in the Pit
    .turnin 59947 >>Turn in Message to Base << Priest
step << Alliance
    .goto 1409,52.35,55.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick
    .turnin 55639 >>Turn in Who Lurks in the Pit
    .turnin 55882 >>Turn in Message to Base << Priest
step << Rogue
    .goto 1409,52.08,55.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Grunt Throg << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Coulston Nereus << Alliance
    .accept 58917 >>Accept A Rogue's End << Alliance
    .accept 59967 >>Accept A Rogue's End << Horde
step << Druid
    .goto 1409,52.33,55.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Crenna << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ralia << Alliance
    .accept 59350 >>Accept A Druid's Form << Alliance
    .accept 59951 >>Accept A Druid's Form << Horde
step << Druid
    .goto 1409,45.38,49.23
    >>Right-Click the Druid Stone to perform the ritual
    .complete 59350,1 << Alliance --1/1 Commune with the Druid Stone
    .complete 59951,1 << Horde --1/1 Commune with the Druid Stone
step << Druid
    .goto 1409,45.50,49.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Crenna << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ralia << Alliance
    .turnin 59350 >>Turn in A Druid's Form << Alliance
    .turnin 59951 >>Turn in A Druid's Form << Horde
step << Hunter << Alliance
    .goto 1409,52.29,55.47
    .skipgossip
    .complete 59355,1 --1/1 Ice mote received from Austin Huxworth
step << Hunter << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Herbert
    .goto 1409,52.16,55.49
    .skipgossip
    .complete 59952,1 --1/1 Ice mote received from Herbert Gloomburst
step << Hunter
    >>Right-Click Rusted Chain
    .goto 1409,52.24,53.04
    .complete 59355,2 << Alliance --1/1 Rusted Chain
    .complete 59952,2 << Horde --1/1 Rusted Chain
step << Hunter
    >>Right-Click Old Spring
    .goto 1409,51.82,51.63
    .complete 59355,3 << Alliance --1/1 Old Spring
    .complete 59952,3 << Horde --1/1 Old Spring
step << Hunter << Alliance
    .goto 1409,52.42,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Austin
    .turnin 59355 >>Turn in A Hunter's Trap
    .accept 59356 >>Accept Hunting the Stalker
step << Hunter << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mithdran
    .goto 1409,52.56,55.44
    .turnin 59952 >>Turn in A Hunter's Trap
    .accept 59953 >>Accept Hunting the Stalker
step << Hunter
    .goto 1409,52.41,54.64
    >>Drag 'Freezing Trap' from the Spellbook to your action bars. Throw the Trap far onto the waypoint location.
    .complete 59356,1 << Alliance --1/1 Freezing trap used within Ogre Ruins to capture stalker
    .complete 59953,1 << Horde --1/1 Freezing trap used within Ogre Ruins to capture stalker
step << Hunter << Alliance
    .goto 1409,52.42,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Austin
    .turnin 59356 >>Turn in Hunting the Stalker
    .accept 60168 >>Accept The Art of Taming
step << Hunter << Horde
    .goto 1409,52.56,55.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mithdran
    .turnin 59953 >>Turn in Hunting the Stalker
    .accept 60162 >>Accept The Art of Taming
step << Hunter
    >>Use the Ability |T136095:0|tDismiss Pet (under 'Pet Utility' in your Spellbook)
    .complete 60168,1 << Alliance --Use "Dismiss Pet" to temporarily dismiss your current pet
    .complete 60162,1 << Horde --Use "Dismiss Pet" to temporarily dismiss your current pet
step << Hunter << Alliance
    .goto 1409,52.42,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Austin and select the first gossip option
    >>Target the appearing beast and tame it
    .complete 60168,2 -- Speak with Mithdran to summon and tame your new pet
step << Hunter << Horde
    .goto 1409,52.56,55.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mithran and select the 1st gossip option
    >>Target the appearing beast afterwards and tame it
    .complete 60162,2 -- Speak with Mithdran to summon and tame your new pet
step << Hunter << Alliance
    .goto 1409,52.42,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Austin an select the 1st gossip option
    .complete 60168,3 --Speak with Mithdran to learn about pet stables
step << Hunter << Horde
    .goto 1409,52.56,55.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mithran an select the 1st gossip option
    .complete 60162,3 --Speak with Mithdran to learn about pet stables
step << Hunter << Alliance
    .goto 1409,52.42,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Austin
    .turnin 60168 >>Close Stable and turn in The Art of Taming
step << Hunter << Horde
    .goto 1409,52.5,55.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mithdran
    .turnin 60162 >>Close Stable and turn in The Art of Taming
step << Rogue
    .goto 1409,48.8,54.3
	>>If you are alone and don't feel confident killing the Elite Bear, skip this step.
    .accept 56839 >>Accept Killclaw the Terrible
step << Rogue
    .goto 1409,45.64,56.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Coulston Nereus << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Drizza Sidestabber << Horde
    .complete 58917,1 << Alliance --1/1 First expedition's rogue found
    .complete 59967,1 << Horde --1/1 First expedition's rogue found
step << Rogue
    >>Pickup 3 Withering Hemlocks
    .goto 1409,44.76,56.42,4,0
    .goto 1409,45.17,55.69,4,0
    .goto 1409,45.09,54.66,4,0
    .complete 58917,2 << Alliance --3/3 Withering Hemlock
    .complete 59967,2 << Horde --3/3 Withering Hemlock
step << Rogue
    .goto 1409,45.6,56.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Coulston Nereus again << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Drizza Sidestabber again << Horde
    .turnin 58917 >> Turn in A Rogue's End << Alliance
    .turnin 59967 >> Turn in A Rogue's End << Horde
    .accept 58933 >> Accept The Deadliest of Poisons << Alliance
    .accept 59968 >> Accept The Deadliest of Poisons << Horde
step << Rogue
	.isOnQuest 56839
    >>Use Instant Poison and drag Crimson Vial to your bars.
    >>You will need to use 1 HP Pot and Crimson Vial to Kill him.
    .goto 1409,44.9,53.7
    .complete 56839,1 --1/1 Killclaw the Terrible slain
step << Rogue
	.isQuestComplete 56839
    .goto 1409,43.4,51.2
    .turnin 56839 >>Turn in Killclaw the Terrible
step << Rogue
    >>Use 'Instant Poison'
    .compete 59968,1
step << Rogue
    .goto 1409,48.6,52.6
    .complete 58933,2 << Alliance --1/1 Gutgruk the Tough slain
    .complete 59968,2 << Horde --1/1 Gutgruk the Tough slain
step << Rogue
    .goto 1409,52.08,55.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Coulston Nereus << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Drizza Sidestabber << Horde
    .turnin 58933 >>Turn in The Deadliest of Poisons << Alliance
    .turnin 59968 >>Turn in The Deadliest of Poisons << Horde
step << Horde
    .goto 1409,52.17,55.35
    >>Put Travel Form on your Actionbars << Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Breka
    .accept 59975 >>Accept To Darkmaul Citadel
step << Alliance
    .goto 1409,52.35,55.33
    >>Put Travel Form on your Actionbars << Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick
    .accept 56344 >>Accept To Darkmaul Citadel
step << !Rogue
    .goto 1409,48.78,54.26
    *If you don't feel confident killing the elite bear, skip this step. << !Warlock !Hunter
	>> Click the Wanted poster << Warlock/Hunter
    .accept 56839 >>Accept Killclaw the Terrible.
    .isOnQuest 56344 << Alliance
    .isOnQuest 59975 << Horde
step << !Rogue
    .goto 1409,44.9,53.7
    *When Killclaw casts "Trampling Charge", move to the side to avoid getting stunned
	* He is immune to fear << Priest/Warlock
    .complete 56839,1 --1/1 Killclaw the Terrible slain
    .isOnQuest 56839
step << !Rogue
    .goto 1409,43.42,51.18
    >>Go into the Cave and Right-Click the Chest
    .turnin 56839 >>Turn in Killclaw the Terrible
    .isQuestComplete 56839
step << Alliance
    .goto 1409,48.98,49.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick
    .turnin 56344 >>Turn in To Darkmaul Citadel
    .accept 55981 >>Accept Right Beneath Their Eyes
step << Horde
    .goto 1409,48.95,49.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Breka. You may have to wait a bit for her to run here.
    .turnin 59975 >>Turn in To Darkmaul Citadel
    .accept 59978 >>Accept Right Beneath Their Eyes
step << Horde
    .goto 1409,48.93,49.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Herbert
    .complete 59978,1 --1/1 Ask Herbert to perform ogre transformation spell
    .skipgossip
step << Alliance
    .goto 1409,49.03,49.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Meredy
    .complete 55981,1 --1/1 Ask Herbert to perform ogre transformation spell
    .skipgossip
step
    .goto 1409,45.58,44.42
    >>Run toward the stairs of Darkmaul Citadel
    .complete 55981,2 << Alliance --1/1 Enter Darkmaul Citadel
    .complete 59978,2 << Horde --1/1 Enter Darkmaul Citadel
step
    .goto 1409,45.5,38.4
    .complete 55981,3 << Alliance --Find the ogre cooking Area
    .complete 59978,3 << Horde --Find the ogre cooking Area
step
    .goto 1409,45.78,37.84
    >>Target Gor'groth.
    .emote WAVE,153580
    .complete 55981,4 << Alliance --Type /wave to Gor'groth
    .complete 59978,4 << Horde --Type /wave to Gor'groth
step
    .goto 1409,45.88,36.00,10,0
    .goto 1409,41.14,32.98
    .complete 55981,6 << Alliance --Reach the Citadel entrance
    .complete 59978,6 << Horde --Reach the Citadel entrance
step << Alliance
    .goto 1409,40.16,32.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick
    .turnin 55981 >>Turn in Right Beneath Their Eyes
    .accept 55990 >>Accept Controlling their Stones
step << Horde
    .goto 1409,40.29,32.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Breka
    .turnin 59978 >>Turn in Right Beneath Their Eyes
step << Alliance
    .goto 1409,40.22,32.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Henry
    .accept 55988 >>Accept Like Ogres to the Slaughter << Alliance
step << Horde
    .goto 1409,40.29,32.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Breka
    .accept 59981 >>Accept Controlling their Stones
step << Alliance
    .goto 1409,40.26,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Meredy
    .accept 55989 >>Accept Catapult Destruction
step << Horde
    .goto 1409,40.25,32.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Shuja
    .accept 59979 >>Accept Like Ogres to the Slaughter
step << Horde
    .goto 1409,40.37,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Herbert
    .accept 59980 >>Accept Catapult Destruction
step
    #sticky
	#completewith ogrescata
    >>Make sure to kill 8 Ogres while you're collecting the Ward Stones
    .complete 55988,1 << Alliance --8/8 Ogres slain
    .complete 59979,1 << Horde--8/8 Ogres slain
step
    .goto 1409,44.13,37.29
    >>Kill and loot Wug inside the Building.
    .complete 55990,2 << Alliance --1/1 Wug's ward stone recovered
    .complete 59981,2 << Horde --1/1 Wug's ward stone recovered
step
    .goto 1409,47.57,34.17
    >>Kill and loot Jugnug inside the Building.
    .complete 55990,1 << Alliance --1/1 Jugnug's ward stone recovered
    .complete 59981,1 << Horde --1/1 Jugnug's ward stone recovered
step
    >>Right-Click the Catapult to destroy it
    .goto 1409,47.13,36.41
    .complete 55989,1,1 << Alliance --1/4 Catapults destroyed
    .complete 59980,1,1 << Horde --1/4 Catapults destroyed
step
    >>Right-Click the Catapult to destroy it
    .goto 1409,46.19,39.62
    .complete 55989,1,2 << Alliance --2/4 Catapults destroyed
    .complete 59980,1,2 << Horde --2/4 Catapults destroyed
step
    >>Right-Click the Catapult to destroy it
    .goto 1409,45.25,41.68
    .complete 55989,1,3 << Alliance --3/4 Catapults destroyed
    .complete 59980,1,3 << Horde --3/4 Catapults destroyed
step
    >>Right-Click the Catapult to destroy it
    .goto 1409,43.76,42.81
    .complete 55989,1,4 << Alliance --4/4 Catapults destroyed
    .complete 59980,1,4 << Horde --4/4 Catapults destroyed
step
    .goto 1409,42.80,41.00
    >>Kill and loot Grunk inside the Building
    .complete 55990,3 << Alliance --1/1 Grunk's ward stone recovered
    .complete 59981,3 << Horde --1/1 Grunk's ward stone recovered
step
	#label ogrescata
    .goto 1409,41.85,42.80
    .turnin 56088 >>Loot the Chest
step
    .goto 1409,43.02,38.18,10,0
    .goto 1409,46.08,38.48
    .complete 55988,1 << Alliance --8/8 Ogres slain
    .complete 59979,1 << Horde--8/8 Ogres slain
step << Alliance
    .goto 1409,40.26,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Meredy
    .turnin 55989 >>Turn in Catapult Destruction
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Herbert
    .goto 1409,40.37,32.41
    .turnin 59980 >>Turn in Catapult Destruction
step << Alliance
    .goto 1409,40.22,32.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Henry
    .turnin 55988 >>Turn in Like Ogres to the Slaughter << Alliance
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Shuja
    .goto 1409,40.25,32.56
    .turnin 59979 >>Turn in Like Ogres to the Slaughter
step
    >>Right-Click on the 3 rune stones to disable them
    .goto 1409,39.93,32.44
    .complete 55990,4,1 << Alliance --1/3 Disable runes holding Warlord Thunderwalker
    .complete 59981,4,1 << Horde --1/3 Disable runes holding Warlord Thunderwalker
step
    >>Right-Click on the 3 rune stones to disable them
    .goto 1409,39.73,32.04
    .complete 55990,4,2 << Alliance --2/3 Disable runes holding Warlord Thunderwalker
    .complete 59981,4,2 << Horde --2/3 Disable runes holding Warlord Thunderwalker
step
    >>Right-Click on the 3 rune stones to disable them
    .goto 1409,40.06,31.95
    .complete 55990,4,3 << Alliance --3/3 Disable runes holding Warlord Thunderwalker
    .complete 59981,4,3 << Horde --3/3 Disable runes holding Warlord Thunderwalker
step
    .goto 1409,39.93,32.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mulgrin << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Kelra << Alliance
    .turnin 55990 >>Turn in Controlling their Stones << Alliance
    .turnin 59981 >>Turn in Controlling their Stones << Horde
    .accept 55992 >>Accept Dungeon: Darkmaul Citadel << Alliance
    .accept 59984 >>Accept Dungeon: Darkmaul Citadel << Horde
step
    >>Open the Group Finder (Default: i) and queue for "Darkmaul Citadel"
    .complete 55992,1 << Alliance --Use the Group Finder to enter the dungeon, "Darkmaul Citadel"
    .complete 59984,1 << Horde --Use the Group Finder to enter the dungeon, "Darkmaul Citadel"
step
    >>Clear the Dungeon << Horde
    >>Clear the Dungeon << Alliance
    >>After defeating the dragon Ravnyr, Right-Click your player frame and leave the instance group
    .complete 55992,2 << Alliance --1/1 Gor'groth's final ritual stopped
    .complete 59984,2 << Horde --1/1 Gor'groth's final ritual stopped
step
    >>Leave the instance group (faster) or go to Captain Garrick and |Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to her << Alliance
    >>Leave the instance group (faster) or go to Warlord Grimaxe and |Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to her << Horde
    .complete 55992,3 << Alliance --1/1 Speak with Captain Garrick to leave Darkmaul Citadel
    .complete 59984,3 << Horde --1/1 Speak with Warlord Grimaxe to leave Darkmaul Citadel
step
    >>HANDS OFF YOUR KEYBOARD! (Follow Instructions Below)
    >>This will skip a Gryphon Ride to Stormwind and Orgrimmar
    .link /run C_Tutorial.AbandonTutorialArea() >> ROLEPLAY SKIP (Copy the Link and type it in chat)
    .turnin 55991 >> USE THE MACRO! << Alliance
    .turnin 59985 >> USE THE MACRO! << Horde
step
    .goto 1409,39.65,31.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Breka << Horde
    .turnin 55992 >>Turn in Dungeon: Darkmaul Citadel << Alliance
    .turnin 59984 >>Turn in Dungeon: Darkmaul Citadel << Horde
step << Alliance
    .zoneskip 84
    .goto 1409,39.65,31.99
    .accept 55991 >>Accept An End to Beginnings
step << Horde
    .zoneskip 85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Warlord Breka Grimaxe
    .goto 1409,39.65,31.99
    .accept 59985 >>Accept An End to Beginnings
step
    .isOnQuest 55991 << Alliance
    .isOnQuest 59985 << Horde
    .goto 1409,40.37,32.63
    >>Right-Click on the Gryphon to ride to Stormwind << Alliance
    >>Right-Click on the Wyvern to ride to Orgrimmar << Horde
    .complete 55991,1 << Alliance --1/1 Alliance Gryphon rode back to Stormwind
    .complete 59985,1 << Horde --1/1 Horde Wyvern rode back to Orgrimmar
step << Alliance
    .isOnQuest 55991
    .turnin 55991 >>Turn in An End to Beginnings
step << Horde
	.isOnQuest 59985
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Warlord Breka Grimaxe
    .goto 85,52.5,88.3
    .turnin 59985 >>Turn in An End to Beginnings
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick
    .goto 84,73.70,91.31
    .isQuestTurnedIn 55992
    +Select the Dialog Option to Skip the Introduction if you can, if you can't accept Welcome to Stormwind(manually skip this step after the decision)
    *Keep in Mind that when you skip the Introduction it is assumed that you have a Mount already
step << Alliance
    .isQuestTurnedIn 63219
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Renato
    .goto 84,69.00,83.92,20,0
    .goto 84,67.09,83.39,20,0
    .goto 84,67.47,80.54,20,0
    .goto 84,63.77,73.60
    .accept 332 >>Accept Wine Shop Advert
step << Alliance
    .isQuestTurnedIn 63219
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bralla
    .goto 84,64.73,70.41,20,0
    .goto 84,68.37,74.82,20,0
    .skill riding,75 >> Learn Apprentice Riding
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
]])
