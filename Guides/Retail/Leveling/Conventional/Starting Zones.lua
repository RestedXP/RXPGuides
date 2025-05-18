-- =================================
-- =======  SEPERATORS =============
-- =================================

--LEVEL 1-10
RXPGuides.RegisterGuide([[
#retail
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(1-80)|r Default
#name 1a
#displayname |cFFFCDC00LEVEL 1-10|r
#disabled


]])

-- =================================
-- =======  NEUTRAL ZONES ==========
-- =================================

--Beginners Exile's Reach
RXPGuides.RegisterGuide([[
#retail
#version 2
#group RestedXP Speed Leveling
#groupweight 1000
#subgroup |cFFFCDC00(1-80)|r Default
#subweight 1000
#name a) Exile's Reach
#displayname |cFF00CCFF1|r - Exile's Reach
#next << Alliance
#next << Horde


<<!Dracthyr !Pandaren !DemonHunter !DK !KulTiran !EarthenDwarf !DarkIronDwarf !LightforgedDraenei !Mechagnome !VoidElf !NightBorne !HighmountainTauren !Vulpera !MagharOrc !ZandalariTroll


step << Alliance/Horde
	#completewith next
    +Welcome to RestedXP Exile's Reach Guide! This Guide is both beginner friendly and the fastest intro guide.
step << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrick|r in front of you.
	.accept 56775 >> Accept Warming Up
	.target Captain Garrick
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Breka|r in front of you.
	.accept 59926 >> Accept Warming Up
	.target Warlord Breka Grimaxe
step
    >>Use the spells on your Action Bars to kill a |cRXP_ENEMY_Combat Dummy|r. (ideally the closest to you)
    .complete 56775,1 << Alliance
    .complete 59926,1 << Horde
    .mob Combat Dummy
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrick|r.
	.turnin 56775 >> Turn in Warming Up
	.target Captain Garrick
step << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Breka|r.
	.turnin 59926 >> Turn in Warming Up
	.target Warlord Breka Grimaxe
step << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cole|r.
	.accept 58209 >> Accept Stand Your Ground
	.target Private Cole
step << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Throg|r.
	.accept 59927 >> Accept Stand Your Ground
	.target Grunt Throg
step << Alliance
    >>Kill |cRXP_ENEMY_Cole|r.
	.complete 58209,1 --1/1 Spar with Private Cole
	.mob Private Cole
step << Horde
	>>Kill |cRXP_ENEMY_Throg|r.
	.complete 59927,1 --1/1 Spar with Grunt Throg
	.mob Grunt Throg
step << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cole|r.
    .turnin 58209 >> Turn in Stand Your Ground
	.accept 58208 >> Accept Brace for Impact
	.timer 13,Brace for Impact RP
	.target Private Cole
step << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Throg|r.
    .turnin 59927 >>Turn in Stand Your Ground
    .accept 59928 >>Accept Brace for Impact
	.timer 13,Brace for Impact RP
	.target Grunt Throg
step << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrick|r inside the ship.
	>>|cRXP_WARN_Press "Escape" on your keyboard to skip the cinematic|r.
	.turnin 58208 >>Turn in Brace for Impact
	.target Captain Garrick
step << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Breka|r.
	>>|cRXP_WARN_Press "Escape" on your keyboard to skip the cinematic|r.
    .turnin 59928 >>Turn in Brace for Impact
	.target Warlord Breka Grimaxe
step << Alliance
    .goto 1409,61.88,82.89
    >>|cRXP_WARN_If you don't see the Waypoint Arrow at the top middle of your screen, type /reload|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrick|r.
    .accept 55122 >>Accept Murloc Mania
	.target Captain Garrick
step << Horde
    .goto 1409,61.88,82.89
    >>|cRXP_WARN_If you don't see the Waypoint Arrow at the top middle of your screen, type /reload|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Breka|r.
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
    >>Kill |cRXP_ENEMY_Murloc Spearhunters|r and |cRXP_ENEMY_Watershapers|r. Loot them for their |T1387611:0|t[|cRXP_LOOT_First Aid Kits|r].
    .complete 55122,1 << Alliance   --6/6 First Aid Kits recovered from defeated Murlocs
    .complete 59929,1 << Horde      --6/6 First Aid Kits recovered from defeated Murlocs
    .mob Murloc Spearhunter
    .mob Murloc Watershaper
step << Alliance
    .goto 1409,61.88,82.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrick|r.
    .turnin 55122 >>Turn in Murloc Mania
    .accept 54951 >>Accept Emergency First Aid
	.target Captain Garrick
step << Horde
    .goto 1409,61.88,82.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Breka|r.
    .turnin 59929 >>Turn in Murloc Mania
    .accept 59930 >>Accept Emergency First Aid
	.target Warlord Breka Grimaxe
step
    #completewith next
    +|cRXP_WARN_If you want to make the most of RXP; Press Escape -> Options -> Keybindings -> RestedXP Guides -> Select and Bind Active Button 1,2,3 and 4. You can also do this with Targets|r.
    >>|cRXP_WARN_This will allow you to press a Keybind to use a Quest Item/Target a relevant mob|r.
step << Alliance
	>>Use the |T1387611:0|t[First Aid Kit] on |cRXP_FRIENDLY_Kee-La|r, |cRXP_FRIENDLY_Austin|r, and |cRXP_FRIENDLY_Bjorn|r on the ground around you.
    .complete 54951,2 --1/1 First Aid Kit used on Kee-La
    .goto 1409,61.73,83.48,-1
    .complete 54951,3 --1/1 First Aid Kit used on Austin Huxworth
    .goto 1409,61.37,82.60,-1
    .complete 54951,1 --1/1 First Aid Kit used on Bjorn Stouthands
    .goto 1409,61.56,82.24,-1
	.use 168410
    .target Kee-La
    .target Austin Huxworth
    .target Bjorn Stouthands
step << Horde
	>>Use the |T1387611:0|t[First Aid Kit] on |cRXP_FRIENDLY_Bo|r, |cRXP_FRIENDLY_Mithdran|r, and |cRXP_FRIENDLY_Lana|r on the ground around you.
    .complete 59930,2 --1/1 First Aid Kit used on Bo
    .goto 1409,61.73,83.48,-1
    .complete 59930,3 --1/1 First Aid Kit used on Mithdran Dawntracker
    .goto 1409,61.37,82.60,-1
    .complete 59930,1 --1/1 First Aid Kit used on Lana Jordan
    .goto 1409,61.56,82.24,-1
	.use 168410
    .target Bo
    .target Mithdran Dawntracker
    .target Lana Jordan
step << Alliance
    .goto 1409,61.88,82.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrick|r.
    .turnin 54951 >>Turn in Emergency First Aid
    .accept 54952 >>Accept Finding the Lost Expedition
	.target Captain Garrick
step << Horde
    .goto 1409,61.88,82.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Breka|r.
    .turnin 59930 >>Turn in Emergency First Aid
    .accept 59931 >>Accept Finding the Lost Expedition
	.target Warlord Breka Grimaxe
step << Alliance
    .goto 1409,58.36,74.47
    >>Travel toward |cRXP_FRIENDLY_Alaria|r.
    .complete 54952,1 --1/1 Travel north to find any expedition survivors
step << Horde
    .goto 1409,58.36,74.47
    >>Travel toward |cRXP_FRIENDLY_Won'sa|r.
    .complete 59931,1 --1/1 Travel north to find any expedition survivors
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alaria|r and |cRXP_FRIENDLY_Garrick|r.
    .turnin 54952 >>Turn in Finding the Lost Expedition
    .goto 1409,58.36,74.47
    .accept 55174 >>Accept Cooking Meat
    .goto 1409,58.37,74.63
	.target Alaria
	.target Captain Garrick
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Won'sa|r and |cRXP_FRIENDLY_Breka|r.
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
    >>Kill |cRXP_ENEMY_Coastal Albatrosses|r, |cRXP_ENEMY_Coastal Goats|r, and |cRXP_ENEMY_Prickly Porcupines|r. Loot them for their [|cRXP_LOOT_Meat|r].
    .complete 55174,1 << Alliance --5/5 Raw Meat collected from wildlife
    .complete 59932,1 << Horde --5/5 Raw Meat collected from wildlife
	.mob Coastal Albatross
	.mob Coastal Goat
	.mob Pricky Porcupine
step << !Rogue !Warrior !Monk !Paladin
    .goto 1409,59.58,72.91,30,0
    .goto 1409,58.05,70.22,30,0
    .goto 1409,56.31,74.62,30,0
    .goto 1409,59.58,72.91,30,0
    .goto 1409,58.05,70.22
    >>Kill |cRXP_ENEMY_Coastal Albatrosses|r, |cRXP_ENEMY_Coastal Goats|r, and |cRXP_ENEMY_Prickly Porcupines|r. Loot them for their [|cRXP_LOOT_Meat|r].
    .complete 55174,1 << Alliance --5/5 Raw Meat collected from wildlife
    .complete 59932,1 << Horde --5/5 Raw Meat collected from wildlife
	.mob Coastal Albatross
	.mob Coastal Goat
	.mob Pricky Porcupine
step
    .goto 1409,58.33,74.58
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Campfire|r on the ground.
    .complete 55174,2 << Alliance --1/1 Cook the meat on the campfire
    .complete 59932,2 << Horde --1/1 Cook the meat on the campfire
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alaria|r and |cRXP_FRIENDLY_Garrick|r. << !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alaria|r. << Hunter
    .turnin 55174 >>Turn in Cooking Meat
    .accept 55173 >>Accept Northbound << Hunter
    .goto 1409,58.36,74.47
    .accept 59339 >>Accept Enhanced Combat Tactics << Monk
    .accept 59254 >>Accept Enhanced Combat Tactics << !Hunter !Monk
    .goto 1409,58.38,74.63
	.target Alaria
	.target Captain Garrick << !Hunter
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Won'sa|r and |cRXP_FRIENDLY_Breka|r. << !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Won'sa|r. << Hunter
    .turnin 59932 >>Turn in Cooking Meat
    .accept 59935 >>Accept Northbound << Hunter
    .goto 1409,58.36,74.47
    .accept 59934 >>Accept Enhanced Combat Tactics << Monk
    .accept 59933 >>Accept Enhanced Combat Tactics << !Hunter !Monk
    .goto 1409,58.38,74.63
	.target Won'sa
	.target Warlord Breka Grimaxe << !Hunter
step << Alliance !Hunter
    .goto 1409,57.60,72.95 << !Monk
    .goto 1409,58.87,73.55 << Monk
    >>Follow |cRXP_FRIENDLY_Garrick|r. Once |cRXP_ENEMY_Garrick|r turns hostile, attack her
    >>Cast |T136207:0|tShadow Word: Pain. Apply it 3 more times before the debuff falls off << Priest
    >>Cast |T132337:0|tCharge on |cRXP_ENEMY_Garrick|r 3 times. You can use |T132316:0|tHamstring to slow her. << Warrior
    >>Cast |T136096:0|tMoonfire on |cRXP_ENEMY_Garrick|r when she prompts you to  << Druid
    >>Cast |T135846:0|tFrostbolt at range, then cast |T135807:0|tFire Blast in melee range -> Repeat << Mage
    >>Cast |T136048:0|tLightning Bolt at range, then cast |T460956:0|tPrimal Strike 4 times -> Repeat << Shaman
    >>Cast |T135891:0|tCrusader Strike 3 times to build 3 Holy Power, then cast |T236265:0|tShield of the Righteous -> Repeat << Paladin
    .complete 59339,2 << Monk --3/3 Blackout Kick used on Captain Garrick
    .complete 59339,1 << Monk --6/6 Tiger Palm used on Captain Garrick
    .complete 59254,1 << !Hunter !Monk --3/3 Abilities proven against Captain Garrick
	.mob Captain Garrick
step << Horde !Hunter
    .goto 1409,57.60,72.95 << !Monk
    .goto 1409,58.87,73.55 << Monk
    >>Follow |cRXP_FRIENDLY_Breka|r. Once |cRXP_ENEMY_Breka|r turns hostile, attack her.
    >>Cast |T136207:0|tShadow Word: Pain. Apply it 3 more times before the debuff falls off << Priest
    >>Cast |T132337:0|tCharge on |cRXP_ENEMY_Breka|r 3 times. You can use |T132316:0|tHamstring to slow her. << Warrior
    >>Cast |T136096:0|tMoonfire on |cRXP_ENEMY_Breka|r when she prompts you to  << Druid
    >>Cast |T135846:0|tFrostbolt at range, then cast |T135807:0|tFire Blast in melee range -> Repeat << Mage
    >>Cast |T136048:0|tLightning Bolt at range, then cast |T460956:0|tPrimal Strike 4 times -> Repeat << Shaman
    >>Cast |T135891:0|tCrusader Strike 3 times to build 3 Holy Power, then cast |T236265:0|tShield of the Righteous -> Repeat << Paladin
    .complete 59934,2 << Monk --3/3 Blackout Kick used on Warlord Grimaxe
    .complete 59934,1 << Monk --6/6 Tiger Palm used on Warlord Grimaxe
    .complete 59933,1 << !Hunter !Monk --3/3 Abilities proven against Warlord Grimaxe
	.mob Warlord Breka Grimaxe
step << Alliance !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrick|r and |cRXP_FRIENDLY_Alaria|r.
    .turnin 59339 >>Turn in Enhanced Combat Tactics << Monk
    .turnin 59254 >>Turn in Enhanced Combat Tactics << !Hunter !Monk
    .goto 1409,58.36,74.63
    .accept 55173 >>Accept Northbound
    .goto 1409,58.36,74.48
	.target Captain Garrick
	.target Alaria
step << Horde !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Breka|r and |cRXP_FRIENDLY_Won'sa|r.
    .turnin 59934 >>Turn in Enhanced Combat Tactics << Monk
    .turnin 59933 >>Turn in Enhanced Combat Tactics << !Hunter !Monk
    .goto 1409,58.36,74.63
    .accept 59935 >>Accept Northbound
    .goto 1409,58.36,74.48
	.target Warlord Breka Grimaxe
	.target Won'sa
step << Alliance
    .goto 1409,62.72,69.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Austin|r.
    .turnin 55173 >>Turn in Northbound
    .accept 55184 >>Accept Forbidden Quilboar Necromancy << !Hunter
    .accept 55186 >>Accept Down with the Quilboar << !Hunter
    .accept 59342 >>Accept Taming the Wilds << Hunter
	.timer 9,Taming the Wilds RP << Hunter
	.target Austin Huxworth
step << Horde
    .goto 1409,62.72,69.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mithdran|r.
    .turnin 59935 >>Turn in Northbound
    .accept 59938 >>Accept Down with the Quilboar << !Hunter
    .accept 59939 >>Accept Forbidden Quilboar Necromancy << !Hunter
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
    >>Drag |T132161:0|t[Call Pet] and |T132179:0|t[Pet Utility] onto your Action Bars
	>>|cRXP_WARN_Cast |T132164:0|t[Tame Beast] on a |cRXP_ENEMY_Sharpbeak Hawk|r to tame it. Make sure you tame a Hawk for increased movement speed|r.
    .complete 59342,2 << Alliance --1/1 Any wildlife beast tamed
    .complete 59937,2 << Horde --1/1 Any wildlife beast tamed
	.mob Sharpbeak Hawk
step << Alliance Hunter
    .goto 1409,62.72,69.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Austin|r.
    .turnin 59342 >>Turn in Taming the Wilds
    .accept 55184 >>Accept Forbidden Quilboar Necromancy
    .accept 55186 >>Accept Down with the Quilboar
	.target Austin Huxworth
step << Horde Hunter
    .goto 1409,62.72,69.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mithdran|r.
    .turnin 59937 >>Turn in Taming the Wilds
    .accept 59938 >>Accept Down with the Quilboar
    .accept 59939 >>Accept Forbidden Quilboar Necromancy
	.target Mithdran Dawntracker
step
    #completewith next
    >>Kill |cRXP_ENEMY_Quilboar Warriors|r and |cRXP_ENEMY_Geomancers|r.
    .complete 55184,1 << Alliance --7/7 Quilboar slain
    .complete 59939,1 << Horde --7/7 Quilboar slain
	.mob Quilboar Warrior
	.mob Quilboar Geomancer
step
    .goto 1409,60.63,61.37,25,0
    .goto 1409,58.87,63.00
	>>Kill |cRXP_ENEMY_Geolord Grek'og|r.
    .complete 55186,1 << Alliance --1/1 Geolord Grek'og slain
    .complete 59938,1 << Horde --1/1 Geolord Grek'og slain
	.mob Geolord Grek'og
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
    >>Kill |cRXP_ENEMY_Quilboar Warriors|r and |cRXP_ENEMY_Geomancers|r.
    .complete 55184,1 << Alliance --7/7 Quilboar slain
    .complete 59939,1 << Horde --7/7 Quilboar slain
	.mob Quilboar Warrior
	.mob Quilboar Geomancer
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Austin|r and |cRXP_FRIENDLY_Lindie|r.
    .turnin 55184 >>Turn in Forbidden Quilboar Necromancy
    .goto 1409,56.26,59.17
    .turnin 55186 >>Turn in Down with the Quilboar
    .accept 55193 >>Accept The Scout-o-Matic 5000
	.timer 20,Scout-o-Matic RP
    .goto 1409,56.17,59.12
	.target Austin Huxworth
	.target Lindie Springstock
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mithdran|r and |cRXP_FRIENDLY_Cork|r.
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
	.vehicle >>Wait out the RP. Get into the |cRXP_FRIENDLY_Scout-o-Matic 5000|r.
	.timer 33,Scout-o-Matic Flight RP
step << Alliance
    .goto 1409,56.08,58.81
    >>Wait out the RP on the |cRXP_FRIENDLY_Scout-o-Matic 5000|r. |cRXP_WARN_Press "Escape" on your keyboard to skip the cinematic|r.
    .complete 55193,1 --1/1 Use the Scout-o-Matic 5000 to scout the Area
	.timer 27,Scout-o-Matic Flight RP
step << Horde
    #completewith next
    #label ChoppyBoosterMk
    .goto 1409,56.08,58.81,0,0
    .complete 59940,1 --1/1 Use the Choppy Booster Mk. 5 to scout the Area
step << Horde
	#completewith ChoppyBoosterMk
    .goto 1409,56.08,58.81
	.vehicle >>Wait out the RP. Get into the |cRXP_FRIENDLY_Choppy Booster Mk. 5|r.
	.timer 33,Choppy Booster Flight RP
step << Horde
    #requires ChoppyBoosterMk
    .goto 1409,56.08,58.81
    >>Wait out the RP on the |cRXP_FRIENDLY_Choppy Booster Mk. 5|r. |cRXP_WARN_Press "Escape" on your keyboard to skip the cinematic|r.
    .complete 59940,1 --1/1 Use the Choppy Booster Mk. 5 to scout the Area
	.timer 27,Choppy Booster Flight RP
step << Alliance
    .goto 1409,56.16,59.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lindie|r.
    .turnin 55193 >>Turn in The Scout-o-Matic 5000
    .accept 56034 >>Accept Re-sizing the Situation
	.target Lindie Springstock
step << Horde
    .goto 1409,56.16,59.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cork|r.
    .turnin 59940 >>Turn in The Choppy Booster Mk. 5
    .accept 59941 >>Accept Re-sizing the Situation
	.target Cork Fizzlepop
step
    #sticky
	#label Chest1
    .goto 1409,58.51,59.30
	.turnin 56579 >>Loot the |cRXP_PICK_Chest|r on the ground.
step
	.goto 1409,56.63,55.46,40,0
    .goto 1409,58.51,59.30,40,0
	.goto 1409,56.63,55.46,40,0
    .goto 1409,58.51,59.30
    >>Use the |T2735166:0|t[Re-Sizer v9.0.1] on |cRXP_ENEMY_Wandering Boars|r in melee range << Alliance
    >>Use the |T2735166:0|t[Re-Sizer v9.0.1] on |cRXP_ENEMY_Wandering Boars|r in melee range << Horde
    .complete 56034,1 << Alliance --3/3 Re-Sizer v9.0.1 tested on Wandering Boars
    .complete 59941,1 << Horde --3/3 Re-Sizer v9.0.1 tested on Wandering Boars
	.mob Wandering Boar
    .use 178051 << Horde
    .use 170557 << Alliance
step << Alliance
	#requires Chest1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrick|r and |cRXP_FRIENDLY_Lindie|r.
    .turnin 56034 >>Turn in Re-sizing the Situation
    .goto 1409,56.25,59.03
	.timer 8,Re-sizing the Situation RP
    .accept 55879 >>Accept Ride of the Scientifically Enhanced Boar
    .goto 1409,56.17,59.13
	.target Captain Garrick
	.target Lindie Springstock
step << Horde
	#requires Chest1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Breka|r and |cRXP_FRIENDLY_Cork|r.
    .turnin 59941 >>Turn in Re-sizing the Situation
    .goto 1409,56.25,59.03
    .accept 59942 >>Accept The Re-Deather
    .goto 1409,56.17,59.13
	.target Warlord Breka Grimaxe
	.target Cork Fizzlepop
step << Alliance
    .goto 1409,56.53,58.42
    >>Get onto the |cRXP_FRIENDLY_Giant Boar|r after a short RP
    .complete 55879,1 --1/1 Ride the Giant Boar
    .target Giant Boar
step << Horde
    .goto 1409,56.08,58.81
    >>Get into the |cRXP_FRIENDLY_Choppy Booster Mk. 5|r after a short RP
    .complete 59942,1 --1/1 Ride the Choppy Booster Mk. 5
    .target Choppy Booster Mk. 5
step << Alliance
    .goto 1409,52.59,53.34
	>>Use |T132226:0|t[Trample] (1) on |cRXP_ENEMY_Monstrous Cadavers|r to kill them.
    .complete 55879,2 --8/8 Monstrous Cadaver slain
	.timer 8,Ride of the Boar RP
	.mob Monstrous Cadaver
step << Horde
    .goto 1409,52.59,53.34
    >>Use |T2735166:0|t[Re-Sizer Blast] (1) on |cRXP_ENEMY_Monstrous Cadavers|r to kill them.
    .complete 59942,2 --8/8 Monstrous Cadaver slain
	.timer 13,Roleplay Duration
	.mob Monstrous Cadaver
step
    .goto 1409,50.94,52.78
    >>Go inside the building. Kill |cRXP_ENEMY_Torgok|r.
    .complete 55879,3 << Alliance --1/1 Torgok slain
    .complete 59942,3 << Horde --1/1 Torgok slain
	.timer 23,Ride of the Boar RP << Alliance
	.timer 23,The Re-Deather RP << Horde
	.mob Torgok
step << Alliance
    .goto 1409,52.60,53.35
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWait for the RP. Talk to |cRXP_FRIENDLY_Henry|r.
	>>|cRXP_WARN_Press "Escape" on your keyboard to skip the cinematic|r.
    .turnin 55879,1 >>Turn in Ride of the Scientifically Enhanced Boar
	.target Henry Garrick
step << Horde
    .goto 1409,52.59,53.35
    >>Wait out the RP
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shuja|r.
	>>|cRXP_WARN_Press "Escape" on your keyboard to skip the cinematic|r.
    .turnin 59942,1 >>Turn in The Re-Deather
	.target Shuja Grimaxe
step << Alliance
    .goto 1409,52.35,55.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrick|r.
    .accept 55194 >> Accept Stocking Up on Supplies
	.target Captain Garrick
step << Horde
    .goto 1409,52.17,55.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Breka|r.
    .accept 59950 >>Accept Stocking Up on Supplies
	.target Warlord Breka Grimaxe
step << Alliance
    .goto 1409,52.22,55.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Richter|r.
	>>Buy |cRXP_BUY_Tough Jerky|r or an |cRXP_BUY_Alliance Tabard|r. Sell any trash in your bags.
    .complete 55194,2 --Any Item sold to Quartermaster Richter
    .complete 55194,1 --Any Item purchased from Quartermaster Richter
	.target Quartermaster Richter
step << Horde
    .goto 1409,52.45,55.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'hake|r.
	>>Buy |cRXP_BUY_Tough Jerky|r or a |cRXP_BUY_Horde Tabard|r. Sell any trash in your bags.
    .complete 59950,1 -- A Purchase an item from Provisioner Jin'hake
    .complete 59950,2 -- Sell an item to Provisioner Jin'hake
    .buy 178120,1
	.target Provisioner Jin'hake
step << Alliance
    .goto 1409,52.35,55.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrick|r.
    .turnin 55194 >>Turn in Stocking Up on Supplies
	.target Captain Garrick
step << Horde
    .goto 1409,52.17,55.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Breka|r.
    .turnin 59950 >>Turn in Stocking Up on Supplies
	.target Warlord Breka Grimaxe
step << Alliance Warrior/Alliance Warlock/Alliance Paladin/Alliance Priest
    .goto 1409,52.08,55.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cole|r.
    .accept 58914 >>Accept A Warrior's End << Warrior
    .accept 58953 >>Accept A Priest's End << Priest
    .accept 58923 >>Accept A Paladin's Service << Paladin
    .accept 58962 >>Accept A Warlock's Bargain << Warlock
	.target Private Cole
step << Horde Warrior/Horde Warlock/Horde Paladin/Horde Priest
    .goto 1409,52.02,55.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grunt Throg|r.
    .accept 59971 >>Accept A Warrior's End << Warrior
    .accept 59961 >>Accept A Priest's End << Priest
    .accept 59958 >>Accept A Paladin's Service << Paladin
    .accept 59970 >>Accept A Warlock's Bargain << Warlock
	.target Grunt Throg
step << Shaman
    .goto 1409,52.30,55.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Ghost Wolf|r.
    .accept 59002 >>Accept A Shaman's Duty
	.target Ghost Wolf
step << Alliance
    .goto 1409,53.02,55.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bjorn|r.
    .accept 55965 >>Accept Westward Bound
	.target Bjorn Stouthands
step << Horde
    .goto 1409,52.89,56.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lana|r.
    .accept 59948 >>Accept Westward Bound
	.target Lana Jordan
step << Shaman
    .goto 1409,52.12,51.65
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tLoot the |cRXP_PICK_Blossoms|r on the ground.
    .complete 59002,1,1 --1/4 Veil Blossom
step << Shaman
    .goto 1409,51.84,51.12
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tLoot the |cRXP_PICK_Blossoms|r on the ground.
    .complete 59002,1,2 --2/4 Veil Blossom
step << Shaman
    .goto 1409,52.53,51.00
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tLoot the |cRXP_PICK_Blossoms|r on the ground.
    .complete 59002,1,3 --3/4 Veil Blossom
step << Shaman
    .goto 1409,53.23,51.38
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tLoot the |cRXP_PICK_Blossoms|r on the ground.
    .complete 59002,1 --4/4 Veil Blossom
step << Horde
    .goto 1409,53.79,52.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shuja|r.
    .accept 59943 >>Accept the Harpy Problem
	.target Shuja Grimaxe
step << Alliance
    .goto 1409,53.51,52.31
     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Henry|r.
    .accept 55196 >>Accept The Harpy Problem
	.target Henry Garrick
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Henry|r and |cRXP_FRIENDLY_Kee-La|r.
    .turnin 55196 >>Turn in The Harpy Problem
    .accept 55763 >>Accept The Rescue of Herbert Gloomburst
    .accept 55881 >>Accept Purge the Totems
    .goto 1409,56.83,46.17
    .accept 55764 >>Accept Harpy Culling
    .goto 1409,56.93,46.25
	.target Henry Garrick
	.target Kee-La
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bo|r and |cRXP_FRIENDLY_Shuja|r.
    *|cRXP_WARN_You may have to wait for |cRXP_FRIENDLY_Shuja|r|r.
    .turnin 59943 >>Turn in The Harpy Problem
    .accept 59945 >>Accept Harpy Culling
    .accept 59946 >>Accept Purge the Totems
    .goto 1409,56.93,46.24
    .accept 59944 >>Accept The Rescue of Herbert Gloomburst
    .goto 1409,56.83,46.17
step
	#completewith Harpytotem
	>>Kill |cRXP_ENEMY_Harpy Boltcallers|r, |cRXP_ENEMY_Snatchers|r, and |cRXP_ENEMY_Hunting Worgs|r. Don't focus on this yet.
    .complete 55764,1 << Alliance --10/10 Harpies and cohorts slain
    .complete 59945,1 << Horde --10/10 Harpies and cohorts slain
	.mob Harpy Boltcaller
	.mob Harpy Snatcher
	.mob Hunting Worg
step
    .goto 1409,58.23,44.49
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Harpy Totem|r to burn it.
    .complete 59946,1,1 << Horde --1/5 Harpy Totems burned
    .complete 55881,1,1 << Alliance --1/5 Harpy Totems burned
step
    .goto 1409,58.84,42.95
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Harpy Totem|r to burn it.
    .complete 59946,1,2 << Horde --2/5 Harpy Totems burned
    .complete 55881,1,2 << Alliance --2/5 Harpy Totems burned
step
    .goto 1409,61.23,41.31
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Harpy Totem|r to burn it.
    .complete 59946,1,3 << Horde --3/5 Harpy Totems burned
    .complete 55881,1,3 << Alliance --3/5 Harpy Totems burned
    .goto 1409,61.23,41.31
step
    #label Chest3
    .goto 1409,59.33,37.63
    .turnin 56581 >>Loot the |cRXP_PICK_Chest|r on the ground.
step
    .goto 1409,59.01,39.10
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Harpy Totem|r to burn it.
    .complete 59946,1,4 << Horde --4/5 Harpy Totems burned
    .complete 55881,1,4 << Alliance --4/5 Harpy Totems burned
step
	#label Harpytotem
    .goto 1409,57.18,42.23
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Harpy Totem|r to burn it.
    .complete 59946,1 << Horde --5/5 Harpy Totems burned
    .complete 55881,1 << Alliance --5/5 Harpy Totems burned
step
	#completewith next
    >>Kill |cRXP_ENEMY_Harpies|r and |cRXP_ENEMY_Worgs|r that are summoned as you protect |cRXP_FRIENDLY_Meredy|r. << Alliance
    >>Kill |cRXP_ENEMY_Harpies|r and |cRXP_ENEMY_Worgs|r that are summoned as you protect |cRXP_FRIENDLY_Herbert|r. << Horde
    .complete 55764,1 << Alliance --10/10 Harpies and cohorts slain
    .complete 59945,1 << Horde --10/10 Harpies and cohorts slain
    .goto 1409,56.16,43.55,0,0
	.mob Harpy Boltcaller
	.mob Harpy Snatcher
	.mob Hunting Worg
step
    .goto 1409,54.29,41.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meredy|r. << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Herbert|r. << Horde
	>>Kill the oncoming waves of enemies. Kill |cRXP_ENEMY_Bloodbeak|r when he appears.
    .complete 55763,1 << Alliance --1/1 Meredy Huntswell rescued
    .complete 59944,1 << Horde --1/1 Herbert Gloomburst rescued
    .skipgossip
	.target Meredy Huntswell << Alliance
	.target Herbert Gloomburst << Horde
	.mob Bloodbeak
--VV GOSSIP OBJECTIVE? No timer since i think it depends on mob kill times
--PRMK You can also run into someone else that has already started the RP so the timer can be wrong
step
    .goto 1409,55.90,42.97,30,0
    .goto 1409,59.06,39.05,30,0
    .goto 1409,58.23,44.49
	>>Kill |cRXP_ENEMY_Harpy Boltcallers|r, |cRXP_ENEMY_Snatchers|r, and |cRXP_ENEMY_Hunting Worgs|r.
    .complete 55764,1 << Alliance --10/10 Harpies and cohorts slain
    .complete 59945,1 << Horde --10/10 Harpies and cohorts slain
    .goto 1409,56.16,43.55,0,0
	.mob Harpy Boltcaller
	.mob Harpy Snatcher
	.mob Hunting Worg
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Herbert|r, |cRXP_FRIENDLY_Bo|r, and |cRXP_FRIENDLY_Shuja|r.
    .turnin 59944 >>Turn in The Rescue of Herbert Gloomburst
    .goto 1409,56.90,46.13
    .turnin 59946 >>Turn in Purge the Totems
    .turnin 59945 >>Turn in Harpy Culling
    .goto 1409,56.94,46.23
    .accept 59947 >>Accept Message to Base
    .goto 1409,56.83,46.16
	.target Herbert Gloomburst
	.target Bo
    .target Shuja Grimaxe
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meredy|r, |cRXP_FRIENDLY_Kee-La|r and |cRXP_FRIENDLY_Henry|r.
    .turnin 55763 >>Turn in The Rescue of Meredy Huntswell
    .goto 1409,56.90,46.14
    .turnin 55764 >>Turn in Harpy Culling
    .goto 1409,56.93,46.25
    .turnin 55881 >>Turn in Purge the Totems
    .accept 55882 >>Accept Message to Base
    .goto 1409,56.83,46.18
	.target Meredy Huntswell
	.target Kee-La
	.target Henry Garrick
step
    .goto 1409,58.20,50.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Lightspawn|r.
    .accept 54933 >>Accept Freeing the Light
	.target Lightspawn
step
	>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Orbs|r to disperse the energy.
    .complete 54933,1 --1/1 First necrotic energy dispersed
    .goto 1409,57.42,49.68
step
	>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Orbs|r to disperse the energy.
    .complete 54933,2 --1/1 Second necrotic energy dispersed
    .goto 1409,58.49,49.16
step
	>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Orbs|r to disperse the energy.
    .complete 54933,3 --1/1 Third necrotic energy dispersed
    .goto 1409,59.00,50.69
step
	>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Orbs|r to disperse the energy.
    .complete 54933,4 --1/1 Fourth necrotic energy dispersed
	.timer 11,Freeing the Light RP
    .goto 1409,57.82,51.19
step << Alliance Paladin
    .goto 1409,57.57,52.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yorah|r.
    .complete 58923,1 --1/1 Speak with the ghost paladin
    .turnin 58923 >>Turn in A Paladin Service
    .accept 58946 >>Accept The Divine's Shield
	.skipgossip 162998,1
	.target Yorah
step << Horde Paladin
    .goto 1409,57.57,52.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daelya|r.
    .complete 59958,1 --1/1 Speak with the ghost paladin
    .turnin 59958 >>Turn in A Paladin Service
    .accept 60174 >>Accept The Divine's Shield
	.skipgossip 167179,1
	.target Daelya Twilightsbane
step << Alliance Paladin
	#completewith next
    .goto 1409,57.08,52.73
    >>Cast |T524354:0|t[Divine Shield] to pass through the barrier
	>>|cRXP_WARN_If you don't pass through the barrier in time, talk to Yorah again to reset Divine Shield's cooldown|r.
    .complete 58946,1 --1/1 Divine shield used
	.skipgossip 162998,1
	.target Yorah
step << Horde Paladin
	#completewith next
    .goto 1409,57.08,52.73
    >>Cast |T524354:0|t[Divine Shield] to pass through the barrier
	>>|cRXP_WARN_If you don't pass through the barrier in time, talk to Daelya again to reset Divine Shield's cooldown|r.
    .complete 60174,1 --1/1 Divine shield used
	.skipgossip 167179,1
	.target Daelya Twilightsbane
step << Alliance Paladin
    .goto 1409,57.08,52.73
	>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Altar|r to destroy it.
    .complete 58946,2 --1/1 Necrotic altar destroyed
step << Horde Paladin
    .goto 1409,57.08,52.73
	>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Altar|r to destroy it.
    .complete 60174,2 --1/1 Necrotic altar destroyed
step << Alliance Paladin
    .goto 1409,57.57,52.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yorah|r.
    .turnin 58946 >>Turn in The Divine's Shield
	.target Yorah
step << Horde Paladin
    .goto 1409,57.57,52.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daelya|r.
    .turnin 60174 >>Turn in The Divine's Shield
	.target Daelya Twilightsbane
step
    .goto 1409,58.20,50.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Lightspawn|r.
    .turnin 54933 >>Turn in Freeing the Light
	.target Lightspawn
step << Alliance Warrior
    .goto 1409,51.47,47.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_ENEMY_Hjalmar|r. |cRXP_WARN_Damage him to 20% or less health|r. |cRXP_WARN_Cast|r |T135358:0|t|cRXP_WARN_Execute on him|r.
    .turnin 58914 >>Turn in A Warrior's End
    .accept 58915 >>Accept Hjalmar's Final Execution
    .complete 58915,1 --1/1 Hjalmar the Undying slain with Execute
    .skipgossip
	.target Hjalmar the Undying
step << Horde Warrior
    .goto 1409,51.47,47.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_ENEMY_Hjalmar|r. |cRXP_WARN_Damage him to 20% or less health|r. |cRXP_WARN_Cast|r |T135358:0|t|cRXP_WARN_Execute on him|r.
    .turnin 59971 >>Turn in A Warrior's End
    .accept 59972 >>Accept Hjalmar's Final Execution
    .complete 59972,1 --1/1 Hjalmar the Undying slain with Execute
    .skipgossip
	.target Hjalmar the Undying
step << Alliance Warrior
    .goto 1409,52.08,55.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cole|r.
    .turnin 58915 >>Turn In Hjalmar's Final Execution
	.target Private Cole
step << Horde Warrior
    .goto 1409,52.03,55.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Throg|r.
    .turnin 59972 >>Turn In Hjalmar's Final Execution
	.target Grunt Throg
step << Alliance Priest
    .goto 1409,57.32,51.87,15,0
    .goto 1409,56.12,53.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Branven|r.
    .turnin 58953 >>Turn in A Priest's End
    .accept 58960 >>Accept Resurrecting the Recruits
	.target Branven Hammerheart
step << Horde Priest
    .goto 1409,57.32,51.87,15,0
    .goto 1409,56.12,53.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sha'zul|r.
    .turnin 59961 >>Turn in A Priest's End
    .accept 59965 >>Accept Resurrecting the Recruits
	.target Sha'zul
step << Priest
    .goto 1409,56.12,53.25,15,0
    .goto 1409,56.44,53.73,15,0
    .goto 1409,56.12,53.25,15,0
    .goto 1409,56.21,53.48
	>>Cast |T135955:0|t[Resurrection] on the Recruits
    .complete 58960,1 << Alliance --3/3 Expedition recruits resurrected
    .complete 59965,1 << Horde --3/3 Expedition recruits resurrected
    .target First Expedition Recruit
step << Alliance Priest
    .goto 1409,56.12,53.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Branven|r.
    .turnin 58960 >>Turn in Resurrecting the Recruits
	.target Branven Hammerheart
step << Horde Priest
    .goto 1409,56.12,53.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sha'zul|r.
    .turnin 59965 >>Turn in Resurrecting the Recruits
	.target Sha'zul
step << Alliance Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hubert|r.'s Corpse on the ground
	>>Loot the |cRXP_PICK_Book|r that appears next to him on the ground.
    .complete 58962,1 --1/1 Dead warlock's body investigated
    .goto 1409,52.53,45.89
    .complete 58962,2 --1/1 Old Grimoire
    .goto 1409,52.59,45.85
	.target Hubert Lucas
    .skipgossip
step << Horde Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sprag|r.'s Corpse on the ground
	>>Loot the |cRXP_PICK_Book|r that appears next to him on the ground.
    .complete 59970,1 --1/1 Dead warlock's body investigated
    .goto 1409,52.53,45.89
    .complete 59970,2 --1/1 Old Grimoire
    .goto 1409,52.59,45.85
	.target Sprag Buzzboom
    .skipgossip
step << Warlock
	#completewith next
    .goto 1409,52.61,45.44
    >>Use the |T538444:0|t[Old Grimoire] next to the Void Portal
    .complete 58962,3 << Alliance --1/1 Voidwalker summoned with grimoire
    .complete 59970,3 << Horde --1/1 Voidwalker summoned with grimoire
    .use 174947
step << Warlock
    .goto 1409,52.61,45.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Voidwalker|r.
    .turnin 58962 >>Turn in A Warlock's Bargain << Alliance
    .turnin 59970 >>Turn in A Warlock's Bargain << Horde
	.target Summoned Voidwalker
step << Alliance !Priest !Monk !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrick|r.
	>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Campfire|r. << Shaman
    .turnin 55882 >>Turn in Message to Base
    .goto 1409,52.35,55.34
    .complete 59002,2 << Shaman --1/1 Blossoms burned on campfire
    .goto 1409,52.21,55.58 << Shaman
	.target Captain Garrick
step << Horde !Priest !Monk !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Breka|r.
	>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Campfire|r. << Shaman
    .turnin 59947 >>Turn in Message to Base
    .goto 1409,52.18,55.34
    .complete 59002,2 << Shaman --1/1 Blossoms burned on campfire
    .goto 1409,52.21,55.58 << Shaman
	.target Warlord Breka Grimaxe
step << Alliance Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrick|r and |cRXP_FRIENDLY_Austin|r.
    .turnin 55882 >>Turn in Message to Base
    .goto 1409,52.35,55.34
    .accept 59355 >>Accept A Hunter's Trap
    .goto 1409,52.41,55.28
	.target Captain Garrick
	.target Austin Huxworth
step << Horde Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Breka|r and |cRXP_FRIENDLY_Mithdran|r.
    .turnin 59947 >>Turn in Message to Base
    .goto 1409,52.18,55.34
    .accept 59952 >>Accept A Hunter's Trap
    .goto 1409,52.56,55.43
	.target Warlord Breka Grimaxe
	.target Mithdran Dawntracker
step << Alliance Monk
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrick|r and |cRXP_FRIENDLY_Kee-La|r.
    .turnin 55882 >>Turn in Message to Base
    .goto 1409,52.35,55.34
    .accept 59347 >>Accept A Monk's Focus
    .goto 1409,52.14,55.68
	.timer 34,A Monk's Focus RP
	.target Captain Garrick
	.target Kee-La
step << Horde Monk
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Breka|r and |cRXP_FRIENDLY_Bo|r.
    .turnin 59947 >>Turn in Message to Base
    .goto 1409,52.18,55.34
    .accept 59956 >>Accept A Monk's Focus
    .goto 1409,52.04,55.22
	.timer 34,A Monk's Focus RP
	.target Warlord Breka Grimaxe
	.target Bo
step << Shaman
    .goto 1409,54.40,58.45
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_FRIENDLY_Ghost Wolf|r to free it.
    .complete 59002,3,1 --1/3 Captured ghost wolves freed
    .target Ghost Wolf
step << Shaman
    .goto 1409,55.28,52.79
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_FRIENDLY_Ghost Wolf|r to free it.
    .complete 59002,3,2 --2/3 Captured ghost wolves freed
    .target Ghost Wolf
step << Shaman
    .goto 1409,55.40,50.78
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_FRIENDLY_Ghost Wolf|r to free it.
    .complete 59002,3 --3/3 Captured ghost wolves freed
    .target Ghost Wolf
step << Shaman
    .goto 1409,52.30,55.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Ghost Wolf|r.
    .turnin 59002 >>Turn in A Shaman's Duty to learn Ghost Wolf
	.target Ghost Wolf
step << Alliance Monk
    .goto 1409,52.62,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFollow |cRXP_FRIENDLY_Kee-La|r,then talk to her
    .complete 59347,1 --1/1 Meditate with Kee-La
	.skipgossip 164835,1
	.timer 42,A Monk's Focus RP
	.target Kee-La
step << Horde Monk
    .goto 1409,52.62,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFollow |cRXP_FRIENDLY_Bo|r,then talk to him
    .complete 59956,1 --1/1 Meditate with Bo
	.skipgossip 167537,1
	.timer 42,A Monk's Focus RP
	.target Bo
step << Alliance Monk
    .goto 1409,52.63,49.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kee-La|r.
    .turnin 59347 >>Turn in A Monk's Focus
    .accept 59349 >>Accept One Last Spar
	.timer 5,One Last Spar RP
	.target Kee-La
step << Horde Monk
    .goto 1409,52.63,49.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bo|r.
    .turnin 59956 >>Turn in A Monk's Focus
    .accept 59957 >>Accept One Last Spar
	.timer 5,One Last Spar RP
	.target Bo
step << Alliance Monk
    .goto 1409,53.72,50.24
    >>Follow |cRXP_FRIENDLY_Kee-La|r. When |cRXP_ENEMY_Kee-La|r turns hostile, cast |T606552:0|tTouch of Death on her.
    .complete 59349,1 --1/1 Touch of Death used on Kee-La
    .mob Kee-La
step << Horde Monk
    .goto 1409,53.72,50.24
    >>Follow |cRXP_FRIENDLY_Bo|r. When |cRXP_ENEMY_Bo|r turns hostile, cast |T606552:0|tTouch of Death on him
    .complete 59957,1 --1/1 Touch of Death used on Bo
    .mob Bo
step << Alliance Monk
    .goto 1409,52.35,55.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrick|r.
    .turnin 59349 >>Turn in One Last Spar
	.target Captain Garrick
step << Horde Monk
    .goto 1409,52.18,55.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Breka|r.
    .turnin 59957 >>Turn in One Last Spar
	.target Warlord Breka Grimaxe
step << Alliance Mage
    .goto 1409,52.28,55.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meredy|r.
    .accept 59352 >>Accept A Mage's Knowledge
	.target Meredy Huntsworth
step << Horde Mage
    .goto 1409,52.16,55.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Herbert|r.
    .accept 59954 >>Accept A Mage's Knowledge
	.target Herbert Gloomburst
step << Mage
    .goto 1409,51.95,49.84
	>>Loot the |cRXP_PICK_Spell Book|r underwater.
    .complete 59352,1 << Alliance --1/1 Meredy's Spell Book
    .complete 59954,1 << Horde --1/1 Herbert's Spell Book
step << Alliance Mage
    .goto 1409,52.28,55.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meredy|r.
    .turnin 59352 >>Turn in A Mage's Knowledge
    .accept 59354 >>Accept The Best Way to Use Sheep
    .complete 59354,1 --Speak with Meredy to being sparring (1)
	.skipgossip 156886,1
	.timer 18,The Best Way to Use Sheep RP
	.target Meredy Huntsworth
step << Horde Mage
    .goto 1409,52.16,55.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Herbert|r.
    .turnin 59954 >>Turn in A Mage's Knowledge
    .accept 59955 >>Accept The Best Way to Use Sheep
    .complete 59955,1 --Speak with Herbert to begin sparring (1)
	.skipgossip 167309,1
	.timer 18,The Best Way to Use Sheep RP
	.target Herbert Gloomburst
step << Alliance Mage
    .goto 1409,52.30,55.46
    >>Follow |cRXP_FRIENDLY_Meredy|r and |cRXP_FRIENDLY_Cole|r. Wait out the RP.
    >>Cast |T136071:0|t[Polymorph] on |cRXP_ENEMY_Meredy|r or |cRXP_ENEMY_Cole|r,then damage whoever you polymorphed once
    .complete 59354,2 --Practice Polymorph with Meredy or Cole
	.timer 10,The Best Way to Use Sheep RP
	.mob Meredy Huntsworth
	.mob Private Cole
step << Horde Mage
    .goto 1409,52.30,55.46
    >>Follow |cRXP_FRIENDLY_Herbert|r and |cRXP_FRIENDLY_Throg|r. Wait out the RP.
    >>Cast |T136071:0|t[Polymorph] on |cRXP_ENEMY_Herbert|r or |cRXP_ENEMY_Throg|r,then damage whoever you polymorphed once
    .complete 59955,2 --Practice Polymorph with Herbert or Throg
	.timer 10,The Best Way to Use Sheep RP
	.mob Herbert Gloomburst
	.mob Grunt Throg
step << Alliance Mage
    .goto 1409,52.30,55.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meredy|r.
    .turnin 59354 >>Turn in The Best Way to Use Sheep
	.target Meredy Huntsworth
step << Horde Mage
    .goto 1409,52.16,55.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Herbert|r.
    .turnin 59955 >>Turn in The Best Way to Use Sheep
	.target Herbert Gloomburst
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bjorn|r and |cRXP_FRIENDLY_Alaria|r.
    .turnin 55965 >>Turn in Westward Bound
    .goto 1409,51.18,59.61
    .accept 55639 >>Accept Who Lurks in the Pit
    .goto 1409,51.11,59.51
	.target Bjorn Stouthands
	.target Alaria
step << Horde
    .goto 1409,51.11,59.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lana|r.
    .turnin 59948 >>Turn in Westward Bound
    .accept 59949 >>Accept Who Lurks in the Pit
	.target Lana Jordan
step
	#completewith next
	>>|cRXP_WARN_Try to avoid fighting Spiders inside|r.
    .goto 1409,50.88,60.45,10 >>Go down into the Spider Cave
step
    .goto 1409,52.07,59.99
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Cocoon|r to destroy it.
    .complete 55639,1,1 << Alliance --1/5 Trapped Expedition Member rescued from cocoons
    .complete 59949,1,1 << Horde --1/5 Trapped Expedition Member rescued from cocoons
step
    .goto 1409,52.02,58.31,15,0
    .goto 1409,50.26,58.69
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Cocoon|r to destroy it.
    .complete 55639,1,2 << Alliance --2/5 Trapped Expedition Member rescued from cocoons
    .complete 59949,1,2 << Horde --2/5 Trapped Expedition Member rescued from cocoons
step
    .goto 1409,49.71,60.49,15,0
    .goto 1409,49.70,62.02
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Cocoon|r to destroy it.
    .complete 55639,1,3 << Alliance --3/5 Trapped Expedition Member rescued from cocoons
    .complete 59949,1,3 << Horde --3/5 Trapped Expedition Member rescued from cocoons
step
    .goto 1409,51.12,62.10,15,0
    .goto 1409,51.96,60.67
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Cocoon|r to destroy it.
    .complete 55639,1,4 << Alliance --4/5 Trapped Expedition Member rescued from cocoons
    .complete 59949,1,4 << Horde --4/5 Trapped Expedition Member rescued from cocoons
step
    .goto 1409,52.07,59.13,12,0
    .goto 1409,50.87,58.12
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Cocoon|r to destroy it.
    .complete 55639,1 << Alliance --5/5 Trapped Expedition Member rescued from cocoons
    .complete 59949,1 << Horde --5/5 Trapped Expedition Member rescued from cocoons
step
    .goto 1409,50.08,59.91,12,0
    .goto 1409,47.42,60.49
    >>Kill |cRXP_ENEMY_Hrun the Exiled|r.
    .complete 55639,2 << Alliance --Defeat Hrun to rescue Ralia Dreamchaser (1)
    .complete 59949,2 << Horde --Defeat Hrun to rescue Crenna Earth-Daughter (1)
	.mob Hrun the Exiled
step << skip
	#completewith next
    .goto 1409,47.79,60.27
    .vehicle >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick |cRXP_FRIENDLY_Ralia|r to ride her.
	.timer 51,Who Lurks in the Pit RP
	.target Ralia Dreamchaser
--VV ALLIANCE Ralia/Crenna not classified as either vehicle or flight paths so can't do this. unluko
step << Alliance
    .goto 1409,47.79,60.27
--  .goto 1409,51.83,58.76
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick |cRXP_FRIENDLY_Ralia|r to ride her. Wait out the RP
    .complete 55639,3 --Ride Ralia Dreamchaser to escape (1)
	.target Ralia Dreamchaser
step << skip
	#completewith next
    .goto 1409,47.79,60.27
    .vehicle >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick |cRXP_FRIENDLY_Crenna|r to ride her.
	.timer 51,Who Lurks in the Pit RP
	.target Crenna Earth-Daughter
--VV HORDE Ralia/Crenna not classified as either vehicle or flight paths so can't do this. unluko
step << Horde
    .goto 1409,47.79,60.27
--   .goto 1409,51.83,58.76
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick |cRXP_FRIENDLY_Crenna|r to ride her. Wait out the RP.
    .complete 59949,3 --Ride Crenna Earth-Daughter to escape (1)
	.target Crenna Earth-Daughter
step << Horde !Hunter !Rogue !Druid
    .goto 1409,52.18,55.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Breka|r.
    .turnin 59949 >>Turn in Who Lurks in the Pit
    .turnin 59947 >>Turn in Message to Base << Priest
    .accept 59975 >>Accept To Darkmaul Citadel
	.target Warlord Breka Grimaxe
step << Horde Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Herbert|r and |cRXP_FRIENDLY_Breka|r.
    .complete 59952,1 --1/1 Ice mote received from Herbert Gloomburst
    .goto 1409,52.16,55.49
    .turnin 59949 >>Turn in Who Lurks in the Pit
    .goto 1409,52.18,55.34
    .skipgossip
	.target Herbert Gloomburst
	.target Warlord Breka Grimaxe
step << Horde Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Breka|r and |cRXP_FRIENDLY_Throg|r.
    .turnin 59949 >>Turn in Who Lurks in the Pit
    .goto 1409,52.18,55.34
    .accept 59967 >>Accept A Rogue's End
    .goto 1409,52.08,55.29
	.target Warlord Breka Grimaxe
	.target Grunt Throg
step << Horde Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Crenna and |cRXP_FRIENDLY_Breka|r.
    .accept 59951 >>Accept A Druid's Form
    .goto 1409,52.33,55.44
    .turnin 59949 >>Turn in Who Lurks in the Pit
    .goto 1409,52.18,55.34
	.target Crenna Earth-Daughter
	.target Warlord Breka Grimaxe
step << Alliance !Hunter !Rogue !Druid
    .goto 1409,52.35,55.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrick|r.
    .turnin 55639 >>Turn in Who Lurks in the Pit
    .turnin 55882 >>Turn in Message to Base << Priest
    .accept 56344 >>Accept To Darkmaul Citadel
	.target Captain Garrick
step << Alliance Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meredy|r and |cRXP_FRIENDLY_Garrick|r.
    .complete 59355,1 --1/1 Ice mote received from Meredy Huntswell
    .goto 1409,52.29,55.47
    .turnin 55639 >>Turn in Who Lurks in the Pit
    .goto 1409,52.35,55.33
	.skipgossip
	.target Meredy Huntswell
	.target Captain Garrick
step << Alliance Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrick|r and |cRXP_FRIENDLY_Coulston|r.
    .turnin 55639 >>Turn in Who Lurks in the Pit
    .goto 1409,52.35,55.33
    .accept 58917 >>Accept A Rogue's End
    .goto 1409,52.08,55.29
	.target Captain Garrick
	.target Coulston Nereus
step << Alliance Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ralia|r and |cRXP_FRIENDLY_Garrick|r.
    .accept 59350 >>Accept A Druid's Form
    .goto 1409,52.33,55.44
    .turnin 55639 >>Turn in Who Lurks in the Pit
    .goto 1409,52.35,55.33
	.target Ralia Dreamchaser
	.target Captain Garrick
step << Druid
    .goto 1409,45.34,49.19
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Druid Stone|r to perform the ritual.
    .complete 59350,1 << Alliance --1/1 Commune with the Druid Stone
    .complete 59951,1 << Horde --1/1 Commune with the Druid Stone
step << Alliance Druid
    .goto 1409,45.50,49.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ralia|r.
    .turnin 59350 >>Turn in A Druid's Form
	.target Ralia Dreamchaser
step << Horde Druid
    .goto 1409,45.50,49.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crenna|r.
    .turnin 59951 >>Turn in A Druid's Form
	.target Crenna Earth-Daughter
step << Horde Druid
    .goto 1409,52.17,55.35
    >>Put Travel Form on your Action Bars
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Breka|r.
    .accept 59975 >>Accept To Darkmaul Citadel
	.target Warlord Breka Grimaxe
step << Alliance Druid
    .goto 1409,52.35,55.33
    >>Put |T132144:0|tTravel Form on your Action Bars
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrick|r.
    .accept 56344 >>Accept To Darkmaul Citadel
	.target Captain Garrick
step << Hunter
    >>Loot the |cRXP_PICK_Chain|r and |cRXP_PICK_Spring|r on the ground.
    .complete 59355,2 << Alliance --1/1 Rusted Chain
    .complete 59952,2 << Horde --1/1 Rusted Chain
    .goto 1409,52.25,53.03
    .complete 59355,3 << Alliance --1/1 Old Spring
    .complete 59952,3 << Horde --1/1 Old Spring
    .goto 1409,51.83,51.60
step << Alliance Hunter
    .goto 1409,52.42,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Austin|r.
    .turnin 59355 >>Turn in A Hunter's Trap
    .accept 59356 >>Accept Hunting the Stalker
	.target Austin Huxworth
step << Horde Hunter
    .goto 1409,52.56,55.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mithdran|r.
    .turnin 59952 >>Turn in A Hunter's Trap
    .accept 59953 >>Accept Hunting the Stalker
	.target Mithdran Dawntracker
step << Hunter
    .goto 1409,52.60,53.29
    >>|cRXP_WARN_Drag |T135834:0|t[Freezing Trap] from the Spellbook to your action bars|r.
    >>Cast |T135834:0|tFreezing Trap in the middle of the Ogre Ring
    .complete 59356,1 << Alliance --1/1 Freezing trap used within Ogre Ruins to capture stalker
    .complete 59953,1 << Horde --1/1 Freezing trap used within Ogre Ruins to capture stalker
step << Alliance Hunter
    .goto 1409,52.42,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Austin|r.
    .turnin 59356 >>Turn in Hunting the Stalker
    .accept 60168 >>Accept The Art of Taming
	.target Austin Huxworth
step << Horde Hunter
    .goto 1409,52.56,55.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mithdran|r.
    .turnin 59953 >>Turn in Hunting the Stalker
    .accept 60162 >>Accept The Art of Taming
	.target Mithdran Dawntracker
step << Hunter
    .goto 1409,52.56,55.45
    >>|cRXP_WARN_Click |T132179:0|t[Pet Utility] -> Cast |T136095:0|t[Dismiss Pet]|r.
    .complete 60168,1 << Alliance --Use "Dismiss Pet" to temporarily dismiss your current pet
    .complete 60162,1 << Horde --Use "Dismiss Pet" to temporarily dismiss your current pet
step << Alliance Hunter
    .goto 1409,52.42,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Austin|r.
    >>Target the |cRXP_ENEMY_Wolf|r. |cRXP_WARN_Cast |T132164:0|t[Tame Beast] on it|r. << !Worgen !Draenei
    >>Target the |cRXP_ENEMY_Dog|r. |cRXP_WARN_Cast |T132164:0|t[Tame Beast] on it|r. << Worgen
    >>Target the |cRXP_ENEMY_Moth|r. |cRXP_WARN_Cast |T132164:0|t[Tame Beast] on it|r. << Draenei
    .complete 60168,2 -- Speak with Austin to summon and tame your new pet
	.skipgossip 161666,2
	.timer 7,The Art of Taming RP
	.target Austin Huxworth
	.mob Wolf
	.mob Dog << Worgen
	.mob Moth << Draenei
--VV GOSSIP OBJECTIVE STEP
step << Horde Hunter
    .goto 1409,52.56,55.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mithdran|r.
    >>Target the |cRXP_ENEMY_Turtle|r. |cRXP_WARN_Cast |T132164:0|t[Tame Beast] on it|r. << !Orc !BloodElf
    >>Target the |cRXP_ENEMY_Wolf|r. |cRXP_WARN_Cast |T132164:0|t[Tame Beast] on it|r. << Orc
    >>Target the |cRXP_ENEMY_Dragonhawk|r. |cRXP_WARN_Cast |T132164:0|t[Tame Beast] on it|r. << BloodElf
    >>Cast |T132164:0|t[Tame Beast] on it
    .complete 60162,2 -- Speak with Mithdran to summon and tame your new pet
	.skipgossip 167215,2
	.timer 7,The Art of Taming RP
	.target Mithdran Dawntracker
	.mob Turtle
    .mob Wolf
    .mob Dragonhawk
--VV GOSSIP OBJECTIVE STEP
step << Alliance Hunter
    .goto 1409,52.42,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Austin|r.
    .complete 60168,3 --Speak with Austin to learn about pet stables
	.skipgossip 161666,1
	.target Austin Huxworth
step << Horde Hunter
    .goto 1409,52.56,55.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mithdran|r.
    .complete 60162,3 --Speak with Mithdran to learn about pet stables
	.skipgossip 167215,1
	.target Mithdran Dawntracker
step << Alliance Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Austin|r and |cRXP_FRIENDLY_Garrick|r.
    .turnin 60168 >>Turn in The Art of Taming
    .goto 1409,52.42,55.27
    .accept 56344 >>Accept To Darkmaul Citadel
    .goto 1409,52.35,55.33
	.target Austin Huxworth
	.target Captain Garrick
step << Horde Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mithdran|r and |cRXP_FRIENDLY_Breka|r.
    .turnin 60162 >>Turn in The Art of Taming
    .goto 1409,52.56,55.45
    .accept 59975 >>Accept To Darkmaul Citadel
    .goto 1409,52.17,55.35
	.target Mithdran Dawntracker
	.target Warlord Breka Grimaxe
step << Rogue
    .goto 1409,48.76,54.25
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Danger Sign|r.
    .accept 56839 >>Accept Killclaw the Terrible
step << Rogue
	#completewith RoguesEnd
	>>Kill |cRXP_ENEMY_Killclaw the Terrible|r. |cRXP_WARN_if there's another player killing him. Otherwise, avoid him for now|r.
	.complete 56839,1 --Killclaw the Terrible Slain (1)
    .mob Killclaw the Terrible
step << Alliance Rogue
    .goto 1409,45.64,56.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coulston|r.
    .complete 58917,1 --1/1 First expedition's rogue found
	.target Coulston Nereus
step << Horde Rogue
    .goto 1409,45.64,56.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizza|r.
    .complete 59967,1 --1/1 First expedition's rogue found
	.target Drizza Sidestabber
step << Rogue
    .goto 1409,44.76,56.42
    >>Loot the |cRXP_PICK_Hemlock Plant|r on the ground.
    .complete 58917,2,1 << Alliance --3/3 Withering Hemlock
    .complete 59967,2,1 << Horde --3/3 Withering Hemlock
step << Rogue
    .goto 1409,45.17,55.69
    >>Loot the |cRXP_PICK_Hemlock Plant|r on the ground.
    .complete 58917,2,2 << Alliance --3/3 Withering Hemlock
    .complete 59967,2,2 << Horde --3/3 Withering Hemlock
step << Rogue
    .goto 1409,45.09,54.66
    >>Loot the |cRXP_PICK_Hemlock Plant|r on the ground.
    .complete 58917,2 << Alliance --3/3 Withering Hemlock
    .complete 59967,2 << Horde --3/3 Withering Hemlock
step << Alliance Rogue
	#label RoguesEnd
    .goto 1409,45.64,56.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coulston|r.
    .turnin 58917 >> Turn in A Rogue's End
    .accept 58933 >> Accept The Deadliest of Poisons
	.target Coulston Nereus
step << Horde Rogue
	#label RoguesEnd
    .goto 1409,45.64,56.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizza|r.
    .turnin 59967 >> Turn in A Rogue's End
    .accept 59968 >> Accept The Deadliest of Poisons
	.target Drizza Sidestabber
step << Rogue
	#completewith KillclawR
    .complete 59968,1 >> Cast |T132273:0|t[Instant Poison] to apply it to your weapons
step << Rogue
    .goto 1409,44.15,52.58,30,0
    .goto 1409,45.09,53.91,30,0
    .goto 1409,46.18,54.36,30,0
    .goto 1409,48.24,54.27,30,0
    .goto 1409,44.15,52.58,30,0
    .goto 1409,45.09,53.91,30,0
    .goto 1409,46.18,54.36,30,0
    .goto 1409,48.24,54.27
	>>Kill |cRXP_ENEMY_Killclaw the Terrible|r. |cRXP_WARN_This quest is difficult|r. Find a group for him if needed. Skip this step if you're unable to find a group or to solo him
    >>Dodge |cRXP_ENEMY_Killclaw's|r. "Trampling Charge" by moving to the side as he's casting it. If you're soloing him, cast |T1373904:0|t[Crimson Vial] and use an |T134830:0|t[Expedition Healing Potion] if needed
    .complete 56839,1 --1/1 Killclaw the Terrible slain
	.mob Killclaw the Terrible
	.use 175241
	.isOnQuest 56839
step << Rogue
	#completewith next
    .goto 1409,44.20,52.65,20 >> Go inside the cave
step << Rogue
    .goto 1409,43.42,51.13
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Chest|r.
    .turnin 56839 >>Turn in Killclaw the Terrible
	.isQuestComplete 56839
step << Rogue
	#label KillclawR
	.abandon 56839 >> Abandon Killclaw the Terrible
step << Rogue
    .goto 1409,48.47,52.04
    .complete 59968,1 >> Cast |T132273:0|t[Instant Poison] to apply it to your weapons +|cRXP_WARN_BEFORE|r killing |cRXP_ENEMY_Gutgruk|r.
step << Rogue
	#label GutGruk
    .goto 1409,47.92,50.23,40,0
    .goto 1409,48.47,52.04,40,0
    .goto 1409,47.92,50.23,40,0
    .goto 1409,48.47,52.04,40,0
    .goto 1409,47.92,50.23,40,0
    .goto 1409,48.47,52.04
	>>Kill |cRXP_ENEMY_Gutgruk|r.
    .complete 58933,2 << Alliance --1/1 Gutgruk the Tough slain
    .complete 59968,2 << Horde --1/1 Gutgruk the Tough slain
	.mob Gutgruk the Tough
step << Alliance Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cole|r and |cRXP_FRIENDLY_Garrick|r.
    .turnin 58933 >>Turn in The Deadliest of Poisons
    .goto 1409,52.08,55.29
    .accept 56344 >>Accept To Darkmaul Citadel
    .goto 1409,52.35,55.33
	.target Private Cole
	.target Captain Garrick
step << Horde Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Throg|r and |cRXP_FRIENDLY_Breka|r.
    .turnin 59968 >>Turn in The Deadliest of Poisons
    .goto 1409,52.08,55.29
    .accept 59975 >>Accept To Darkmaul Citadel
    .goto 1409,52.17,55.35
	.target Grunt Throg
	.target Warlord Breka Grimaxe
step << !Rogue
    .goto 1409,48.76,54.25
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Danger Sign|r.
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
    >>Kill |cRXP_ENEMY_Killclaw the Terrible|r. << Hunter/Warlock
    >>Kill |cRXP_ENEMY_Killclaw the Terrible|r. |cRXP_WARN_This quest is difficult|r. Find a group for him if needed. Skip this step if you're unable to find a group or solo him << !Hunter !Warlock
    >>Dodge |cRXP_ENEMY_Killclaw's|r. "Trampling Charge" by moving to the side as he's casting it << !Warlock !Priest
    >>Dodge |cRXP_ENEMY_Killclaw's|r. "Trampling Charge" by moving to the side as he's casting it. Killclaw is immune to |T136183:0|t[Fear] << Warlock
    >>Dodge |cRXP_ENEMY_Killclaw's|r. "Trampling Charge" by moving to the side as he's casting it. Killclaw is immune to |T136184:0|t[Psychic Scream] << Priest
    .complete 56839,1 --1/1 Killclaw the Terrible slain
	.mob Killclaw the Terrible
	.use 175241
	.isOnQuest 56839
step << !Rogue
	#completewith next
    .goto 1409,44.20,52.65,20 >> Go inside the cave
step << !Rogue
    .goto 1409,43.42,51.13
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Chest|r.
    .turnin 56839 >>Turn in Killclaw the Terrible
	.isQuestComplete 56839
step << !Rogue
	.abandon 56839 >> Abandon Killclaw the Terrible
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrick|r and |cRXP_FRIENDLY_Meredy|r.
    .turnin 56344 >>Turn in To Darkmaul Citadel
    .accept 55981 >>Accept Right Beneath Their Eyes
    .goto 1409,48.98,49.24
    .complete 55981,1 --1/1 Ask Meredy to perform ogre transformation spell
    .goto 1409,49.04,49.20
    .skipgossip
	.timer 8,Right Beneath their Eyes RP
	.target Captain Garrick
	.target Meredy Huntsworth
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Breka|r and |cRXP_FRIENDLY_Herbert|r.
    .turnin 59975 >>Turn in To Darkmaul Citadel
    .accept 59978 >>Accept Right Beneath Their Eyes
    .goto 1409,48.95,49.33
    .complete 59978,1 --1/1 Ask Herbert to perform ogre transformation spell
    .goto 1409,48.93,49.46
    .skipgossip
	.timer 8,Right Beneath their Eyes RP
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
    >>Target |cRXP_FRIENDLY_Gor'groth|r to automatically wave at him. If this doesn't work, type /wave at |cRXP_FRIENDLY_Gor'groth|r.
    .complete 55981,4 << Alliance --Type /wave to Gor'groth
    .complete 59978,4 << Horde --Type /wave to Gor'groth
    .emote WAVE,153580
	.target Gor'groth
step
	#completewith next
    .goto 1409,45.95,36.07,15,0
    .goto 1409,40.16,32.35
	>>Run up the stairs to the Citadel
    .complete 55981,6 << Alliance --Reach the Citadel entrance
    .complete 59978,6 << Horde --Reach the Citadel entrance
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrick|r, |cRXP_FRIENDLY_Henry|r, and |cRXP_FRIENDLY_Meredy|r.
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Breka|r, |cRXP_FRIENDLY_Shuja|r and |cRXP_FRIENDLY_Herbert|r.
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
    >>Kill |cRXP_ENEMY_Ogre Shadowcasters|r, |cRXP_ENEMY_Brutes|r, and |cRXP_ENEMY_Chefs|r.
    .complete 55988,1 << Alliance --8/8 Ogres slain
    .complete 59979,1 << Horde--8/8 Ogres slain
	.mob Ogre Brute
	.mob Ogre Chef
	.mob Ogre Shadowcaster
step
    >>Kill |cRXP_ENEMY_Wug|r and |cRXP_ENEMY_Jugnug|r inside the buildings. Loot them for their [|cRXP_LOOT_Ward Stones|r].
    .complete 55990,2 << Alliance --1/1 Wug's ward stone recovered
    .complete 59981,2 << Horde --1/1 Wug's ward stone recovered
    .goto 1409,44.13,37.29
    .complete 55990,1 << Alliance --1/1 Jugnug's ward stone recovered
    .complete 59981,1 << Horde --1/1 Jugnug's ward stone recovered
    .goto 1409,47.57,34.17
	.mob Wug
	.mob Jugnug
step
    .goto 1409,47.21,36.44
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Catapult|r to destroy it.
    .complete 59980,1,1 << Horde --1/4 Catapults destroyed
step
    .goto 1409,46.26,39.71
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Catapult|r to destroy it.
    .complete 55989,1,2 << Alliance --2/4 Catapults destroyed
    .complete 59980,1,2 << Horde --2/4 Catapults destroyed
step
    .goto 1409,45.28,41.72
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Catapult|r to destroy it.
    .complete 55989,1,3 << Alliance --3/4 Catapults destroyed
    .complete 59980,1,3 << Horde --3/4 Catapults destroyed
step
    .goto 1409,42.80,41.00
    >>Kill |cRXP_ENEMY_Grunk|r inside the Building. Loot him for his [|cRXP_LOOT_Ward Stone|r].
    .complete 55990,3 << Alliance --1/1 Grunk's ward stone recovered
    .complete 59981,3 << Horde --1/1 Grunk's ward stone recovered
	.mob Grunk
step
    .goto 1409,43.74,42.86
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Catapult|r to destroy it.
    .complete 55989,1 << Alliance --4/4 Catapults destroyed
    .complete 59980,1 << Horde --4/4 Catapults destroyed
step
	#label KillOgre
    .goto 1409,41.81,42.88
    .turnin 56088 >>Loot the |cRXP_PICK_Chest|r on the ground.
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
    >>Kill |cRXP_ENEMY_Ogre Shadowcasters|r, |cRXP_ENEMY_Brutes|r, and |cRXP_ENEMY_Chefs|r.
    .complete 55988,1 << Alliance --8/8 Ogres slain
    .complete 59979,1 << Horde--8/8 Ogres slain
	.mob Ogre Brute
	.mob Ogre Chef
	.mob Ogre Shadowcaster
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meredy|r and |cRXP_FRIENDLY_Henry|r.
    .turnin 55989 >>Turn in Catapult Destruction
    .goto 1409,40.26,32.33
    .turnin 55988 >>Turn in Like Ogres to the Slaughter
    .goto 1409,40.22,32.35
	.target Meredy Huntsworth
	.target Henry Garrick
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Herbert|r and |cRXP_FRIENDLY_Shuja|r.
    .turnin 59980 >>Turn in Catapult Destruction
    .goto 1409,40.37,32.41
    .turnin 59979 >>Turn in Like Ogres to the Slaughter
    .goto 1409,40.25,32.56
	.target Herbert Gloomburst
	.target Shuja Grimaxe
step
    .goto 1409,39.93,32.44
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Ogre Runestone|r to disable it.
    .complete 55990,4,1 << Alliance --1/3 Disable runes holding Warlord Thunderwalker
    .complete 59981,4,1 << Horde --1/3 Disable runes holding Warlord Thunderwalker
step
    .goto 1409,39.73,32.04
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Ogre Runestone|r to disable it.
    .complete 55990,4,2 << Alliance --2/3 Disable runes holding Warlord Thunderwalker
    .complete 59981,4,2 << Horde --2/3 Disable runes holding Warlord Thunderwalker
step
    .goto 1409,40.07,31.96
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Ogre Runestone|r to disable it.
    .complete 55990,4,3 << Alliance --3/3 Disable runes holding Warlord Thunderwalker
    .complete 59981,4,3 << Horde --3/3 Disable runes holding Warlord Thunderwalker
step << Alliance
    .goto 1409,39.93,32.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelra|r.
    .turnin 55990 >>Turn in Controlling their Stones
    .accept 55992 >>Accept Dungeon: Darkmaul Citadel
	.target Captain Kelra
step << Horde
    .goto 1409,39.93,32.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mulgrin|r.
    .turnin 59981 >>Turn in Controlling their Stones
    .accept 59984 >>Accept Dungeon: Darkmaul Citadel
	.target Warlord Mulgrin Thunderwalker
step
    >>|cRXP_WARN_Open the Group Finder (Default: I) and queue for "Darkmaul Citadel"|r.
    .complete 55992,1 << Alliance --Use the Group Finder to enter the dungeon, "Darkmaul Citadel"
    .complete 59984,1 << Horde --Use the Group Finder to enter the dungeon, "Darkmaul Citadel"
step
    >>Clear the Dungeon by killing |cRXP_ENEMY_Ravnyr|r at the end.
    .complete 55992,2 << Alliance --1/1 Gor'groth's final ritual stopped
    .complete 59984,2 << Horde --1/1 Gor'groth's final ritual stopped
step << Alliance
    >>|cRXP_WARN_Click on the Dungeon Finder eye or your character portrait and select "Leave Instance Group". This is faster|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tAlternatively, Talk to Captain |cRXP_FRIENDLY_Garrick|r.
    .complete 55992,3 --1/1 Speak with Captain Garrick to leave Darkmaul Citadel
	.target Captain Garrick
step << Horde
    >>|cRXP_WARN_Click on the Dungeon Finder eye or your character portrait and select "Leave Instance Group". This is faster|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tAlternatively, Talk to |cRXP_FRIENDLY_Breka|r.
    .complete 59984,3 --1/1 Speak with Warlord Grimaxe to leave Darkmaul Citadel
	.target Warlord Breka Grimaxe
step << Alliance
    .goto 1409,39.65,31.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrick|r.
    .turnin 55992 >>Turn in Dungeon: Darkmaul Citadel
	.target Captain Garrick
step << Horde
    .goto 1409,39.65,31.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Breka|r.
    .turnin 59984 >>Turn in Dungeon: Darkmaul Citadel
	.target Warlord Breka Grimaxe
step << Alliance
    .goto 1409,39.65,31.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrick|r.
    .accept 55991 >>Accept An End to Beginnings
	.target Captain Garrick
    .zoneskip 84
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Breka|r.
    .goto 1409,39.65,31.99
    .accept 59985 >>Accept An End to Beginnings
    .zoneskip 85
	.target Warlord Breka Grimaxe
step << Alliance
    .goto 1409,40.37,32.63
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_FRIENDLY_Gryphon|r to ride to Stormwind. Wait out the RP.
    .complete 55991,1 --1/1 Alliance Gryphon rode back to Stormwind
	.isOnQuest 55991
    .target Alliance Gryphon
step << Horde
    .goto 1409,40.37,32.63
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_FRIENDLY_Wyvern|r to ride to Orgrimmar. Wait out the RP.
    .complete 59985,1 --1/1 Horde Wyvern rode back to Orgrimmar
    .isOnQuest 59985
    .target Horde Wyvern
step << Alliance
    .goto 84,73.70,91.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrick|r.
    .turnin 55991 >>Turn in An End to Beginnings
	.target Captain Garrick
    .isOnQuest 55991
step << Horde
    .goto 85,52.52,88.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Breka|r.
    .turnin 59985 >>Turn in An End to Beginnings
	.target Warlord Breka Grimaxe
	.isOnQuest 59985
step << Alliance
    .goto 84,73.70,91.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrick|r. |cRXP_WARN_Skip the Tutorial if you can|r.
	.accept 59583 >> Accept Welcome to Stormwind
	.target Captain Garrick
	.skipgossip 154169,1
step << Alliance
    .goto 84,70.15,85.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lindie Springstock|r.
    .turnin 59583 >>Turn in Welcome to Stormwind
	.target Lindie Springstock
    .isOnQuest 59583
step << Alliance
    .goto 84,70.15,85.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lindie Springstock|r.
    .accept 58908 >>Accept Finding Your Way
	.target Lindie Springstock
    .isQuestTurnedIn 59583
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to a |cRXP_FRIENDLY_Stormwind Guard|r.
    .complete 58908,1 --1/1 Ask a guard for directions to the Stable Master in Old Town
    .goto 84,70.29,83.60
    .skipgossipid 109407
    .target Stormwind City Guard
step << Alliance
    .goto 84,70.04,83.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lindie Springstock|r.
    .complete 58908,2 --1/1 Speak with Lindie Springstock
    .timer 115,RP
    .skipgossip
	.target Lindie Springstock
	-- .skipgossip 68,15,1
	-- .skipgossip 1976,15,1
	-- .skipgossip 163095,1
    .isQuestTurnedIn 59583
-- step << Alliance
--     .goto 84,70.28,79.83,20,0
--     .goto 84,67.72,80.03,30,0
--     .goto 84,63.77,73.59
--     >>|cRXP_WARN_Follow|r |cRXP_FRIENDLY_Lindie|r. |cRXP_WARN_Stay near him otherwise he will stop moving|r.
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renato|r.
--     .accept 332 >>Accept Wine Shop Advert
-- 	.target Lindie Springstock
-- 	.target Renato Gallina
--     .isQuestTurnedIn 59583
step << Alliance
    .goto 84,64.28,70.36,20,0
    .goto 84,64.89,68.42,20,0
    .goto 84,64.24,66.74,20,0
    .goto 84,66.12,64.00,20,0
    .goto 84,67.03,64.75,20,0
    .goto 84,69.12,62.19,20,0
    .goto 84,70.36,62.03,20,0
    .goto 84,71.89,60.40,20,0
    .goto 84,73.08,62.03,20,0
    .goto 84,76.42,64.84,20,0
    .goto 84,77.41,65.91,20,0
    .goto 84,77.29,66.95
    >>Wait until the arrival at the stables.
    .complete 58908,3 --1/1 Follow Lindie Springstock to the Stable Master in Old Town
	.target Lindie Springstock
    .isQuestTurnedIn 59583
step << Alliance
    .goto 84,77.29,66.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curly|r.
    .turnin 58908 >>Turn in Finding Your Way
step << Alliance
    #completewith Specialization
    +|cRXP_WARN_Move the mount in your Mount Journal to your Action Bars (Default: SHIFT+P). Use the mount to move faster|r.
    .isQuestTurnedIn 59583
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_ Lindie Springstock|r |cRXP_WARN_next to you|r.
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
	.target Lindie Springstock
    .isQuestTurnedIn 59583
step << Alliance
    .isOnQuest 58910,59593,59594,59592,59591,59590,59589,59588,59587,59586
    .goto 84,79.54,68.76,10 >> Enter the House
step << Alliance Druid
	#label Specialization
    .goto 84,78.81,71.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mithlos Falconbriar|r.
    .complete 58910,1 --1/1 Speak with Mithlos Falconbriar to learn about specializations
    .complete 58910,2 --1/1 Activate a combat specialization
	.target Mithlos Falconbriar
	.skipgossip 164962,1
    .isQuestTurnedIn 59583
step << Alliance Druid
    .goto 84,78.81,71.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mithlos Falconbriar|r.
    .turnin 58910 >>Turn In What's Your Specialty?
	.target Mithlos Falconbriar
    .isQuestTurnedIn 59583
step << Alliance Hunter
	#label Specialization
    .goto 84,79.13,71.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalgrun Steelpine|r.
    .complete 59586,1 --1/1 Speak with Dalgrun Steelpine to learn about specializations
    .complete 59586,2 --1/1 Activate a combat specialization
	.target Dalgrun Steelpine
	.skipgossip 164960,1
    .isQuestTurnedIn 59583
step << Alliance Hunter
    .goto 84,79.13,71.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalgrun Steelpine|r.
    .turnin 59586 >>Turn In What's Your Specialty?
	.target Dalgrun Steelpine
    .isQuestTurnedIn 59583
step << Alliance Mage
	#label Specialization
    .goto 84,80.02,69.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frazzle Frostfingers|r.
    .complete 59587,1 --1/1 Speak with Frazzle Frostfingers to learn about specializations
    .complete 59587,2 --1/1 Activate a combat specialization
	.target Frazzle Frostfingers
	.skipgossip 164955,1
    .isQuestTurnedIn 59583
step << Alliance Mage
    .goto 84,80.02,69.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frazzle Frostfingers|r.
    .turnin 59587 >>Turn In What's Your Specialty?
	.target Frazzle Frostfingers
    .isQuestTurnedIn 59583
step << Alliance Monk
	#label Specialization
    .goto 84,79.59,70.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Juisheng Halfclaw|r.
    .complete 59588,1 --1/1 Speak with Juisheng Halfclaw to learn about specializations
    .complete 59588,2 --1/1 Activate a combat specialization
	.target Juisheng Halfclaw
	.skipgossip 164954,1
    .isQuestTurnedIn 59583
step << Alliance Monk
    .goto 84,79.59,70.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Juisheng Halfclaw|r.
    .turnin 59588 >>Turn In What's Your Specialty?
	.target Juisheng Halfclaw
    .isQuestTurnedIn 59583
step << Alliance Paladin
	#label Specialization
    .goto 84,79.32,70.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ezul'aan|r.
    .complete 59589,1 --1/1 Speak with Ezul'aan to learn about specializations
    .complete 59589,2 --1/1 Activate a combat specialization
	.target Ezul'aan
	.skipgossip 164952,1
    .isQuestTurnedIn 59583
step << Alliance Paladin
    .goto 84,79.32,70.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ezul'aan|r.
    .turnin 59589 >>Turn In What's Your Specialty?
	.target Ezul'aan
    .isQuestTurnedIn 59583
step << Alliance Priest
	#label Specialization
    .goto 84,79.8,70.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Patrice Lancaster|r.
    .complete 59590,1 --1/1 Speak with Patrice Lancaster to learn about specializations
    .complete 59590,2 --1/1 Activate a combat specialization
	.target Patrice Lancaster
	.skipgossip 164949,1
    .isQuestTurnedIn 59583
step << Alliance Priest
    .goto 84,79.8,70.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Patrice Lancaster|r.
    .turnin 59590 >>Turn In What's Your Specialty?
	.target Patrice Lancaster
    .isQuestTurnedIn 59583
step << Alliance Rogue
	#label Specialization
    .goto 84,79.27,70.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veruca Darkstream|r.
    .complete 59591,1 --1/1 Speak with Patrice Lancaster to learn about specializations
    .complete 59591,2 --1/1 Activate a combat specialization
	.target Veruca Darkstream
	.skipgossip 164946,1
    .isQuestTurnedIn 59583
step << Alliance Rogue
    .goto 84,79.27,70.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veruca Darkstream|r.
    .turnin 59591 >>Turn In What's Your Specialty?
	.target Veruca Darkstream
    .isQuestTurnedIn 59583
step << Alliance Shaman
	#label Specialization
    .goto 84,78.72,70.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mulric Boldrock|r.
    .complete 59592,1 --1/1 Speak with Mulric Boldrock to learn about specializations
    .complete 59592,2 --1/1 Activate a combat specialization
	.target Mulric Boldrock
	.skipgossip 164945,1
    .isQuestTurnedIn 59583
step << Alliance Shaman
    .goto 84,78.72,70.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mulric Boldrock|r.
    .turnin 59592 >>Turn In What's Your Specialty?
	.target Mulric Boldrock
    .isQuestTurnedIn 59583
step << Alliance Warrior
	#label Specialization
    .goto 84,80.02,70.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kualiang Thunderfist|r.
    .complete 59594,1 --1/1 Speak with Kualiang Thunderfist to learn about specializations
    .complete 59594,2 --1/1 Activate a combat specialization
	.target Kualiang Thunderfist
	.skipgossip 164940,1
    .isQuestTurnedIn 59583
step << Alliance Warrior
    .goto 84,80.02,70.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kualiang Thunderfist|r.
    .turnin 59594 >>Turn In What's Your Specialty?
	.target Kualiang Thunderfist
    .isQuestTurnedIn 59583
step << Alliance Warlock
	#label Specialization
    .goto 84,80.12,69.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laphandrus Voidheart|r.
    .complete 59593,1 --1/1 Speak with Laphandrus Voidheart to learn about specializations
    .complete 59593,2 --1/1 Activate a combat specialization
	.target Laphandrus Voidheart
	.skipgossip 164941,1
    .isQuestTurnedIn 59583
step << Alliance Warlock
    .goto 84,80.12,69.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laphandrus Voidheart|r.
    .turnin 59593 >>Turn In What's Your Specialty?
	.target Laphandrus Voidheart
    .isQuestTurnedIn 59583
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lindie Springstock|r |cRXP_WARN_next to you|r.
    .accept 58911 >>Accept Home Is Where the Hearth Is
	.target Lindie Springstock
    .isQuestTurnedIn 59583
step << Alliance
    .goto 84,76.34,64.55,25,0
    .goto 84,75.11,55.32,15,0
    .goto 84,75.69,54.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maegan Tillman|r.
    .complete 58911,1 --1/1 Make the Pig and Whistle Tavern your home
step << Alliance
    .goto 84,75.69,54.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maegan Tillman|r.
    .home >>Set your Hearthstone to Pig and Whistle Tavern
    .turnin 58911 >>Turn in Home Is Where the Hearth Is
	.target Maegan Tillman
	.isOnQuest 58911
    .isQuestTurnedIn 59583
-- step << Alliance
--     .goto 84,75.25,54.31
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Henry Garrick|r.
--     .accept 58912 >>Accept An Urgent Meeting
-- 	.target Henry Garrick
--     .isQuestTurnedIn 59583
-- step << Alliance
-- 	#completewith next
--     .goto 84,71.45,55.76,20,0
--     .goto 84,70.05,52.73,20,0
--     .goto 84,80.66,37.87,20,0
--     .goto 84,85.22,32.07,40 >> Travel to the Stormwind Keep
-- -- step << skip
-- --     .goto 84,85.22,32.06
-- --     .complete 58912,2 --1/1 Find Captain Garrick in Stormwind Keep
-- --     .isQuestTurnedIn 59583
-- step << Alliance
--     .goto 84,85.22,32.06
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrick|r.
--     .turnin 58912 >>Turn in An Urgent Meeting
--     .accept 58983 >>Accept Battle for Azeroth: Tides of War
-- 	.timer 58,BFA: Tides of War RP
-- 	.target Captain Garrick
--     .isQuestTurnedIn 59583
-- step << Alliance
--     .goto 84,85.92,31.57
--     >>Wait out the RP
-- 	.timer 45,War Council Roleplay
--     .complete 58983,1 --1/1 Attend the War Council
--     .isOnQuest 58983
-- step << Alliance
--     .goto 84,85.92,31.57
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin|r.
--     .turnin 58983 >>Turn in Battle for Azeroth: Tides of War
-- 	.accept 59641 >>Accept The Nation of Kul Tiras
-- 	.target Anduin Wrynn
--     .isOnQuest 58983
step << Horde
    .goto 85,52.52,88.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Breka|r. |cRXP_WARN_Skip the tutorial if you can|r.
    .accept 60343 >>Accept Welcome to Orgrimmar
	.target Warlord Breka Grimaxe
    .skipgossip 168431,1
step << Horde
    .goto 85,52.51,88.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Breka|r.
    .turnin 63219 >>Skip the Tutorial if possible. Otherwise skip this step
	.target Warlord Breka Grimaxe
    .skipgossip 168431,1
--VV review these steps. Need to make sure they can differentiate between new/veteran accounts and autoskip correctly based on each
step << Horde
    .goto 85,51.93,85.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cork|r.
    .turnin 60343 >>Turn in Welcome to Orgrimmar
    .accept 60344 >>Accept Finding Your Way
    .target Cork Fizzlepop
    .isQuestAvailable 63219
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Orgrimmar Grunt|r and |cRXP_FRIENDLY_Cork|r.
    .complete 60344,1 --1/1 Ask a guard for directions to the Stable Master
    .goto 85,52.48,84.18
    .complete 60344,2 --1/1 Speak with Cork Fizzlepop
    .timer 100,Ride Duration
    .goto 85,52.25,84.42
    .skipgossip 168441,1
    .skipgossipid 109405
    .isQuestAvailable 63219
	.target Orgrimmar Grunt
	.target Cork Fizzlepop
step << Horde
    .goto 85,62.06,33.33
    >>|cRXP_WARN_Ride with|r |cRXP_FRIENDLY_Cork|r.
    .complete 60344,3 --1/1 Ride with Cork Fizzlepop to the Stables
	.target Cork Fizzlepop
    .isQuestAvailable 63219
step << Horde
    .goto 85,71.57,47.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rohaka|r.
    .turnin 60344 >>Turn in Finding Your Way
step << Horde
	#label UseMount
	#completewith Specialize
	.cast 55884 >>Use the mount in your bags to learn it
	.use 87800 << Pandaren
    .use 25474 << Pandaren
    .isQuestAvailable 63219
--VV CHANGE TO OTHER RACES LATER. MUST DO THE QUEST/FIND A WAY TO FIND ALL MOUNT IDS FOR EACH RACE
--PRMK Cast ID is the same regardless of the mount. Will level through Exile's Reach with each race when I have the time for it.
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cork|r.
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
	.target Cork Fizzlepop
    .isQuestAvailable 63219
step << Horde
	#requires UseMount
    #completewith next
    +|cRXP_WARN_Move the mount in your Mount Journal to your Action Bars (Default: SHIFT+P). Use the mount to move faster|r.
    .isQuestAvailable 63219
step << Horde Druid
    #label Specialize
    .goto 85,72.92,43.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Telotha|r.
    >>|cRXP_WARN_Press N and select a specialization|r.
    .complete 60346,1 --1/1 Speak with Telotha Pinegrove to learn about specializations
    .complete 60346,2 --1/1 Activate a combat specialization
	.target Telotha Pinegrove
    .skipgossip 168553,1
    .isQuestAvailable 63219
step << Horde Druid
    .goto 85,72.92,43.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Telotha|r.
    .turnin 60346 >>Turn in What's Your Specialty?
	.target Telotha Pinegrove
    .isQuestAvailable 63219
step << Horde Hunter
    #label Specialize
    .goto 85,73.89,43.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tamanji|r.
    >>|cRXP_WARN_Press N and select a specialization|r.
    .complete 60347,1 --1/1 Speak with Tamanji to learn about specializations
    .complete 60347,2 --1/1 Activate a combat specialization
	.target Tamanji
    .skipgossip 168551,1
    .isQuestAvailable 63219
step << Horde Hunter
    .goto 85,73.89,43.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tamanji|r.
    .turnin 60347 >>Turn in What's Your Specialty?
	.target Tamanji
    .isQuestAvailable 63219
step << Horde Warrior
    #label Specialize
    .goto 85,73.76,47.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gormok|r.
    >>|cRXP_WARN_Press N and select a specialization|r.
    .complete 60357,1 --1/1 Speak with Gormok Ogrefist to learn about specializations
    .complete 60357,2 --1/1 Activate a combat specialization
	.target Gormok Ogrefist
    .skipgossip 168596,1
    .isQuestAvailable 63219
step << Horde Warrior
    .goto 85,73.76,47.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gormok|r.
    .turnin 60357 >>Turn in What's Your Specialty?
	.target Gormok Ogrefist
    .isQuestAvailable 63219
step << Horde Shaman
    #label Specialize
    .goto 85,73.41,43.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hretar|r.
    >>|cRXP_WARN_Press N and select a specialization|r.
    .complete 60353,1 --1/1 Speak with Hretar Riverspeaker to learn about specializations
    .complete 60353,2 --1/1 Activate a combat specialization
	.target Hretar Riverspeaker
    .skipgossip 168628,1
    .isQuestAvailable 63219
step << Horde Shaman
    .goto 85,73.41,43.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hretar|r.
    .turnin 60353 >>Turn in What's Your Specialty?
	.target Hretar Riverspeaker
    .isQuestAvailable 63219
step << Horde Priest
    #label Specialize
    .goto 85,72.64,46.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martin|r.
    >>|cRXP_WARN_Press N and select a specialization|r.
    .complete 60351,1 --1/1 Speak with Martin Goodchilde to learn about specializations
    .complete 60351,2 --1/1 Activate a combat specialization
	.target Martin Goodchilde
    .skipgossip 168621,1
    .isQuestAvailable 63219
step << Horde Priest
    .goto 85,72.64,46.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martin|r.
    .turnin 60351 >>Turn in What's Your Specialty?
	.target Martin Goodchilde
    .isQuestAvailable 63219
step << Horde Paladin
    #label Specialize
    .goto 85,73.19,47.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avaros|r.
    >>|cRXP_WARN_Press N and select a specialization|r.
    .complete 60350,1 --1/1 Speak with Avaros Dawnglaive to learn about specializations
    .complete 60350,2 --1/1 Activate a combat specialization
	.target Avaros Dawnglaive
    .skipgossip 168597,1
    .isQuestAvailable 63219
step << Horde Paladin
    .goto 85,73.19,47.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avaros|r.
    .turnin 60350 >>Turn in What's Your Specialty?
	.target Avaros Dawnglaive
    .isQuestAvailable 63219
step << Horde Mage
    #label Specialize
    .goto 85,74.68,43.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feenix|r.
    >>|cRXP_WARN_Press N and select a specialization|r.
    .complete 60348,1 --1/1 Speak with Feenix Arcshine to learn about specializations
    .complete 60348,2 --1/1 Activate a combat specialization
	.target Feenix Arcshine
    .skipgossip 168626,1
    .isQuestAvailable 63219
step << Horde Mage
    .goto 85,74.68,43.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feenix|r.
    .turnin 60348 >>Turn in What's Your Specialty?
	.target Feenix Arcshine
    .isQuestAvailable 63219
step << Horde Monk
    #label Specialize
    .goto 85,75.69,43.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huinli|r.
    >>|cRXP_WARN_Press N and select a specialization|r.
    .complete 60349,1 --1/1 Speak with Huinli Wingpaw to learn about specializations
    .complete 60349,2 --1/1 Activate a combat specialization
	.target Huinli Wingpaw
    .skipgossip 168619,1
    .isQuestAvailable 63219
step << Horde Monk
    .goto 85,75.68,43.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huinli|r.
    .turnin 60349 >>Turn in What's Your Specialty?
	.target Huinli Wingpaw
    .isQuestAvailable 63219
step << Horde Rogue
    #label Specialize
    .goto 85,75.47,47.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thega|r.
    >>|cRXP_WARN_Press N and select a specialization|r.
    .complete 60352,1 --1/1 Speak with Huinli Wingpaw to learn about specializations
    .complete 60352,2 --1/1 Activate a combat specialization
	.target Thega Graveblade
    .skipgossip 168598,1
    .isQuestAvailable 63219
step << Horde Rogue
    .goto 85,75.47,47.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thega|r.
    .turnin 60352 >>Turn in What's Your Specialty?
	.target Thega Graveblade
    .isQuestAvailable 63219
step << Horde Warlock
    #label Specialize
    .goto 85,74.63,47.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kazak|r.
    >>|cRXP_WARN_Press N and select a specialization|r.
    .complete 60355,1 --1/1 Speak with Kazak Darkscream to learn about specializations
    .complete 60355,2 --1/1 Activate a combat specialization
	.target Kazak Darkscream
    .skipgossip 168623,1
    .isQuestAvailable 63219
step << Horde Warlock
    .goto 85,74.63,47.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kazak|r.
    .turnin 60355 >>Turn in What's Your Specialty?
	.target Kazak Darkscream
    .isQuestAvailable 63219
step << Horde
    #label HordeERIntroBrekaGrommashHold
    .goto 85,73.29,45.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cork|r.
    .accept 60359 >>Accept Home Is Where the Hearth Is
	.target Cork Fizzlepop
    .isQuestAvailable 63219
step << Horde
    .goto 85,70.37,49.01,15,0
    .goto 85,71.31,49.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nufa|r.
	.home >> Set your Hearthstone to The Wyvern's Tail
    .complete 60359,1 --1/1 Make The Wyvern's Tail your home
    .turnin 60359 >>Turn in Home Is Where the Hearth Is
	.target Innkeeper Nufa
    .isOnQuest 60359
]])

--Death Knight Plaguelands The Scarlet Enclave
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(1-80)|r Default
#name a) DK Intro
#displayname |cFF00CCFF1|r - Plaguelands
#next << Alliance
#next << Horde


<< DK !Pandaren !KulTiran !DarkIronDwarf !LightforgedDraenei !Mechagnome !VoidElf !HighmountainTauren !ZandalariTroll !Nightborne !Vulpera !MagharOrc


step
    #completewith next
    +Welcome to the |cRXP_WARN_Death Knight Starting Zone|r. Guide of RestedXP.
step
    .goto 124,51.33,35.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Lich King|r.
    .accept 12593 >>Accept In Service Of The Lich King
    .target The Lich King
step
    .goto 124,47.59,28.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Razuvious|r.|cRXP_WARN_, who is walking back and forth from left to right|r.
    .turnin 12593 >>Turn in In Service Of The Lich King
    .accept 12619 >>Accept The Emblazoned Runeblade
    .target Instructor Razuvious
step
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick a |cRXP_PICK_Battle-Worn Sword|r |cRXP_WARN_found in the area|r.
    .collect 38607,1
step
    .goto 124,47.88,27.54
    >>|cRXP_WARN_Go to the Runeforge|r and use the |T135410:0|t[Battle-Worn Sword]
    .complete 12619,1 --1/1 Runebladed Sword
    .use 38607
step
    .goto 124,47.59,28.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Razuvious|r.
    .turnin 12619 >>Turn in The Emblazoned Runeblade
    .accept 12842 >>Accept Runeforging: Preparation For Battle
    .target Instructor Razuvious
step
    .goto 124,47.88,27.54
    >>|cRXP_WARN_Go to the Runeforge|r, open your Spellbook and use the [Enchant Razorice] on your weapon.
    .complete 12842,1 --Weapon emblazoned (1)
step
    .goto 124,47.59,28.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Razuvious|r.
    .turnin 12842 >>Turn in Runeforging: Preparation For Battle
    .accept 12848 >>Accept The Endless Hunger
    .target Instructor Razuvious
step
    .goto 124,48.59,28.73
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Acherus Soul Prison |r to free an |cRXP_ENEMY_Initiate|r.
    .complete 12848,1 --1/1 Unworthy Initiate dominated
    .mob Unworthy Initiate
step
    .goto 124,47.69,29.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Razuvious|r.
    .turnin 12848 >>Turn in The Endless Hunger
    .accept 12636 >>Accept The Eye Of Acherus
    .target Instructor Razuvious
step
    .goto 124,51.35,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Lich King|r.
    .turnin 12636 >>Turn in The Eye Of Acherus
    .accept 12641 >>Accept Death Comes From On High
    .target The Lich King
step
    .goto 124,51.04,36.32
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Eye of Acherus Control Mechanism|r.
    >>Use |T136158:0|t[Siphon of Acherus](1) |cRXP_WARN_near the Red Arrows|r |cRXP_WARN_(not too close or you will be attacked, 45yards range)|r to analyze it.
    >>Use |T136187:0|t[Summon Ghouls](2) to distract the Knights.
    >>Use [Shroud](3) to hide |cRXP_WARN_(can be used while walking)|r.
    >>Use |T136190:0|t[Recall Eye of Acherus] (4) when you are finished.
    .complete 12641,1 --1/1 New Avalon Forge Analyzed
    .complete 12641,3 --1/1 Scarlet Hold Analyzed
    .complete 12641,2 --1/1 New Avalon Town Hall Analyzed
    .complete 12641,4 --1/1 Chapel of the Crimson Flame Analyzed
step
    .goto 124,51.34,35.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Lich King|r and press (4) to exit the Eyeball.
    .turnin 12641 >>Turn in Death Comes From On High
    .accept 12657 >>Accept The Might Of The Scourge
    .target The Lich King
step
    .goto 124,50.43,33.2,10,0
    .goto 124,48.88,29.75
    >>Walk on the |cRXP_WARN_Purple Teleporter|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Darion Mograine|r.
    .turnin 12657 >>Turn in The Might Of The Scourge
    .accept 12850 >>Accept Report To Scourge Commander Thalanor
    .target Highlord Darion Mograine
step
    .goto 124,47.47,26.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Thorval|r.
    .turnin 12849 >>Turn in The Power Of Blood, Frost And Unholy
    .target Lord Thorval
step
    .goto 124,50.68,34.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scourge Commander Thalanor|r,who is patrolling on the balcony.
    .turnin 12850 >>Turn in Report To Scourge Commander Thalanor
    .accept 12670 >>Accept The Scarlet Harvest
step
    #fresh
    .goto 124,52.08,35.04
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_Scourge Gryphon|r |cRXP_WARN_on the Balcony|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Valanar|r.
    .turnin 12670 >>Turn in The Scarlet Harvest
    .accept 12678 >>Accept If Chaos Drives, Let Suffering Hold The Reins
    .target Prince Valanar
step
    #veteran
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_Scourge Gryphon|r |cRXP_WARN_on the Balcony|r.
    >>|cRXP_WARN_You can already mount up, you don't need to wait to unlock the DK mount|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Valanar|r.
    .goto 124,52.08,35.04
    .turnin 12670 >>Turn in The Scarlet Harvest
    .accept 12678 >>Accept If Chaos Drives, Let Suffering Hold The Reins
    .target Prince Valanar
step
    .goto 124,52.67,34.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salanar the Horseman|r,who is |cRXP_WARN_patrolling on the streets|r.
    .accept 12680 >>Accept Grand Theft Palomino
    .target Salanar the Horseman
step
    .goto 124,54.44,33.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olrun the Battlecaller|r.
    .accept 12733 >>Accept Death's Challenge
    .target Olrun the Battlecaller
step
    .goto 124,52.79,34.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Death Knight Initiates|r found in the area |cRXP_WARN_and defeat them in a duel|r.
    .complete 12733,1 --5/5 Death Knights defeated in a duel
    .skipgossip
    .mob Death Knight Initiate
step
    .goto 124,52.31,38.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orithos the Sky Darkener|r,who patrols a little.
    .accept 12679 >>Accept Tonight We Dine In Havenshire
    .target Orithos the Sky Darkener
step
    #completewith arrowspart2time
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the Arrows |cRXP_WARN_on the Ground|r.
    .complete 12679,1 --15/15 Saronite Arrow
step
    #completewith next
    .goto 124,55.25,46.16,10,0
    .goto 124,54.11,52.21
    >>Kill |cRXP_ENEMY_Crusaders|r and |cRXP_ENEMY_Citizens|r.
    .complete 12678,1 --10/10 Scarlet Crusader slain
    .complete 12678,2 --10/10 Citizen of Havenshire slain
    .target Scarlet Crusader
    .target Citizen of Havenshire
step
    goto 124,55.25,46.16
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Abandoned Mail|r |cRXP_WARN_on the Mailbox|r.
    .turnin 12711 >>Turn in Abandoned Mail
step
    #label arrowspart2time
    .goto 124,55.25,46.16,10,0
    .goto 124,54.11,52.21
    >>Kill |cRXP_ENEMY_Crusaders|r and |cRXP_ENEMY_Citizens|r.
    .complete 12678,1 --10/10 Scarlet Crusader slain
    .complete 12678,2 --10/10 Citizen of Havenshire slain
    .target Scarlet Crusader
    .target Citizen of Havenshire
step
    #label Area1
    .goto 124,58.75,50.49,60,0
    .goto 124,55.96,55.93,60,0
    .goto 124,53.93,51.15,60,0
    .goto 124,57.76,47.14
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the Arrows |cRXP_WARN_on the Ground|r.
    .complete 12679,1 --15/15 Saronite Arrow
step
    #requires Area1
    .goto 124,55.4,41.6,30,0
    .goto 124,51.41,41.09,30,0
    .goto 124,52.83,34.04
    >>|TInterface/cursor/crosshair/interact.blp:20|tInteract with a |cRXP_FRIENDLY_Horse|r |cRXP_WARN_near the Stables|r be careful of |cRXP_ENEMY_Stable Master Kitrik|r.
    >>Use |T135788:0|t[Gallop](2) for increased Movement Speed and Deliver the |T132261:0|t[Stolen Horse](1) when you are infront of |cRXP_FRIENDLY_Salanar the Horseman|r,who is patrolling |cRXP_WARN_in the streets|r.
    .complete 12680,1 --1/1 Horse Successfully Stolen
    .target Salanar the Horseman
step
    .goto 124,53.00,33.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salanar the Horseman|r.
    .turnin 12680 >>Turn in Grand Theft Palomino
    .accept 12687 >>Accept Into the Realm of Shadows
    .target Salanar the Horseman
step
    .goto 124,55.4,41.6,30,0
    .goto 124,51.16,37.82
    >>Kill a |cRXP_ENEMY_Dark Rider of Acherus|r |cRXP_WARN_near the stables|r and |TInterface/cursor/crosshair/interact.blp:20|tInteract with the horse
    >>Use the |T136129:0|t[Horseman's Call] to deliver the Horse |cRXP_WARN_once you're back in town|r.
    .complete 12687,1
step
    .goto 124,51.84,35.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salanar the Horseman|r.
    .turnin 12687 >>Turn in Into the Realm of Shadows
    .target Salanar the Horseman
step
    .goto 124,52.43,37.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orithos the Sky Darkener|r,who is patrolling a little.
    .turnin 12679,1 >>Turn in Tonight We Dine In Havenshire
    .target Orithos the Sky Darkener
step
    .goto 124,54.60,33.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olrun the Battlecaller|r.
    .turnin 12733 >>Turn in Death's Challenge
    .target Olrun the Battlecaller
step
    .goto 124,52.28,34.00|cRXP_WARN_|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Valanar|r.
    .turnin 12678 >>Turn in If Chaos Drives, Let Suffering Hold The Reins
    .accept 12697 >>Accept Gothik the Harvester
    .target Prince Valanar
step
    .goto 124,54.09,35.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gothik the Harvester|r.
    .turnin 12697 >>Turn in Gothik the Harvester
    .accept 12698 >>Accept The Gift That Keeps On Giving
    .target Gothik the Harvester
step
    #completewith next
    +|cRXP_WARN_To enable keybinding for quest items, follow these steps:|r
    *[1] Press the |cRXP_WARN_Escape key|r.
    *[2] Select |cRXP_WARN_Options|r.
    *[3] Navigate to |cRXP_WARN_Keybindings|r.
    *[4] Within |cRXP_WARN_Keybindings|r,find |cRXP_WARN_RestedXP Guides|r.
    *[5] Select and bind the |cRXP_WARN_Active Buttons|r.
step
    .goto 124,58.27,30.98,5,0
    --x insert more goto's
    >>Use |T133882:0|t[Gift of the Harvester] on |cRXP_ENEMY_Miner|r until you have [5] |cRXP_FRIENDLY_Scarlet Ghouls|r following you then return to |cRXP_FRIENDLY_Gothik the Harvester|r.
    >>|cRXP_WARN_Miners don't always turn into friendly |cRXP_FRIENDLY_Scarlet Ghouls|r|r.
    .complete 12698,1 --5/5 Scarlet Ghoul Returned
    .use 39253
    .mob Scarlet Ghoul
    .mob Scarlet Infantryman
    .target Gothik the Harvester
step
    .goto 124,54.07,35.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gothik the Harvester|r.
    .turnin 12698 >>Turn in The Gift That Keeps On Giving
    .accept 12700 >>Accept An Attack Of Opportunity
    .target Gothik the Harvester
step
    .goto 124,52.28,33.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Valanar|r.
    .turnin 12700 >>Turn in An Attack Of Opportunity
    .accept 12701 >>Accept Massacre At Light's Point
    .target Prince Valanar
step
    .goto 124,67.78,39.25
    >>|cRXP_WARN_Travel to the ship, making sure to evade as many foes as you can|r.
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Cannon|r and use (1) to kill enemies, use (2) if they get too close, use (3) to escape.
    .complete 12701,1 --100/100 Scarlet Defender slain
    .mob Scarlet Defender
step
    .goto 124,52.28,33.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Valanar|r.
    .turnin 12701 >>Turn in Massacre At Light's Point
    .accept 12706 >>Accept Victory At Death's Breach!
    .target Prince Valanar
step
    #completewith next
    .hs >> Scourgestone hearth to Acherus|cRXP_WARN_(don't use a hearthstone toy!)|r.
step
    .goto 124,50.43,33.23,10,0
    .goto 124,48.87,29.75
    >>Walk on the |cRXP_WARN_Purple Teleporter|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Darion Mograine|r.
    .turnin 12706 >>Turn in Victory At Death's Breach!
    .accept 12714 >>Accept The Will Of The Lich King
    .target Highlord Darion Mograine
step
    .goto 124,53.46,36.56
    >>|TInterface/cursor/crosshair/interact.blp:20|tInteract with the |cRXP_FRIENDLY_Skeleton Gryphon|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Valanar|r.
    .turnin 12714 >>Turn in The Will Of The Lich King
    .accept 12715 >>Accept The Crypt of Remembrance
    .target Skeleton Gryphon
    .target Prince Valanar
step
    .goto 124,55.91,52.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Noth the Plaguebringer|r.
    .accept 12716 >>Accept The Plaguebringer's Request
    .target Noth the Plaguebringer
step
    .goto 124,54.06,58.14,10 >>|cRXP_WARN_Go down into the Crypt|r.
step
    .goto 124,54.30,57.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Keleseth|r.
    .turnin 12715 >>Turn in The Crypt of Remembrance
    .accept 12719 >>Accept Nowhere To Run And Nowhere To Hide
    .target Prince Keleseth
step
    .goto 124,54.66,57.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Rivendare|r.
    .accept 12722 >>Accept Lambs To The Slaughter
    .target Baron Rivendare
step
    #completewith citizenrequirementtime
    >>Kill |cRXP_ENEMY_Scarlet Crusaders|r, |cRXP_ENEMY_Citizens|r and loot them for [|cRXP_LOOT_Crusader Skull|r].
    .complete 12722,1 --10/10 Scarlet Crusade Soldier slain
    .complete 12716,3 --10/10 Crusader Skull
    .complete 12722,2 --15/15 Citizen of New Avalon slain
    .mob Scarlet Crusade Soldier
    .mob Citizen of New Avalon
step
    .goto 124,52.61,71.72
    >>Kill |cRXP_ENEMY_Mayor Quimby|r |cRXP_WARN_inside the city hall|r.
    .complete 12719,1 --1/1 Mayor Quimby slain
    .mob Mayor Quimby
step
    .goto 124,52.46,71.01
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Book|r.
    .complete 12719,2 --1/1 New Avalon Registry
step
    .goto 124,57.77,61.90
    >>|cRXP_WARN_Go into the inn and then into the basement|r.
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Empty Cauldron|r.
    .complete 12716,1 --1/1 Empty Cauldron
step
    #label citizenrequirementtime
    .goto 124,62.03,60.24
    >>|cRXP_WARN_Go into the blacksmith|r.
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Iron Chain|r.
    .complete 12716,2 --1/1 Iron Chain
step
    .goto 124,57.77,61.90,40,0
    .goto 124,52.61,71.72,80,0
    .goto 124,62.03,60.24
    >>Kill |cRXP_ENEMY_Scarlet Crusaders|r, |cRXP_ENEMY_Citizens|r and loot them for [|cRXP_LOOT_Crusader Skull|r].
    .complete 12722,1 --10/10 Scarlet Crusade Soldier slain
    .complete 12716,3 --10/10 Crusader Skull
    .complete 12722,2 --15/15 Citizen of New Avalon slain
    .mob Scarlet Crusade Soldier
    .mob Citizen of New Avalon
step
    .goto 124,54.29,57.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Keleseth|r |cRXP_WARN_inside the Crypt|r.
    .turnin 12719 >>Turn in Nowhere To Run And Nowhere To Hide
    .accept 12720 >>Accept How To Win Friends And Influence Enemies
    .target Prince Keleseth
step
    .goto 124,54.67,57.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Rivendare|r.
    .turnin 12722 >>Turn in Lambs To The Slaughter
    .target Baron Rivendare
step
    .goto 124,55.88,52.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Noth the Plaguebringer|r |cRXP_WARN_outside of the Crypt|r.
    .turnin 12716 >>Turn in The Plaguebringer's Request
    .accept 12717 >>Accept Noth's Special Brew
    .target outside of the Crypt
step
    .goto 124,56.15,52.01
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Plague Cauldron|r.
    .turnin 12717 >>Turn in Noth's Special Brew
step
    #completewith next
    .use 39418 >>Use the |T132595:0|tOrnately Jeweled Box and equip the Weapons
    .collect 39371,2
    .collect 142274,1
step
    .goto 124,55.79,65.73
    >>Autohit |cRXP_ENEMY_Scarlet Enemies|r until they talk. Don't use abilities. |cRXP_WARN_(This can take awhile if you are unlucky)|r.
    .complete 12720,1
step
    .goto 124,54.29,57.31
    >>|cRXP_WARN_Don't forget to re-equip your weapons!!|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Keleseth|r |cRXP_WARN_inside the Crypt|r.
    .turnin 12720 >>Turn in How To Win Friends And Influence Enemies
    .accept 12723 >>Accept Behind Scarlet Lines
    .target Prince Keleseth
step
    .goto 124,56.26,79.84
    >>|cRXP_WARN_Go into the house and head upstairs|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbaz Bloodbane|r.
    .turnin 12723 >>Turn in Behind Scarlet Lines
    .accept 12724 >>Accept The Path Of The Righteous Crusader
    .target Orbaz Bloodbane
step
    .goto 124,56.27,80.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r.
    .accept 12725 >>Accept Brothers In Death
    .target Thassarian
step
    .goto 124,62.95,67.87
    >>|cRXP_WARN_Go inside the keep and down into the basement|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koltira Deathweaver|r.
    >>|cRXP_WARN_you might have to wait for him to respawn|r.
    .turnin 12725 >>Turn in Brothers In Death
    .accept 12727 >>Accept Bloody Breakout
    .target Koltira Deathweaver
step
    >>Kill |cRXP_ENEMY_the waves of enemies|r and kill |cRXP_ENEMY_Valroth|r and |TInterface/cursor/crosshair/interact.blp:20|tClick his remains after.
    .complete 12727,1 --1/1 Valroth's Head
step
    .goto 124,62.98,68.31
    >>|cRXP_WARN_Go upstairs within the keep|r and |TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_book|r.
    .complete 12724,1 --1/1 New Avalon Patrol Schedule
step
    .goto 124,56.24,79.84
    >>|cRXP_WARN_Go Upstairs to the roof and jump off the keep|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbaz Bloodbane|r.
    .turnin 12724 >>Turn in The Path Of The Righteous Crusader
    .target Orbaz Bloodbane
step
    .goto 124,56.28,80.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r.
    .turnin 12727 >>Turn in Bloody Breakout
    .accept 12738 >>Accept A Cry For Vengeance!
    .target Thassarian
step
    .goto 124,52.97,82.19
    >>|cRXP_WARN_Go outside the house|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Knight Commander Plaguefist|r.
    .turnin 12738 >>Turn in A Cry For Vengeance!
    .accept 28650 >>Accept A Special Surprise << Goblin
    .accept 28649 >>Accept A Special Surprise << Worgen
    .accept 12739 >>Accept A Special Surprise << Tauren
    .accept 12742 >>Accept A Special Surprise << Human
    .accept 12743 >>Accept A Special Surprise << NightElf
    .accept 12744 >>Accept A Special Surprise << Dwarf
    .accept 12745 >>Accept A Special Surprise << Gnome
    .accept 12746 >>Accept A Special Surprise << Draenei
    .accept 12747 >>Accept A Special Surprise << BloodElf
    .accept 12748 >>Accept A Special Surprise << Orc
    .accept 12749 >>Accept A Special Surprise << Troll
    .accept 12750 >>Accept A Special Surprise << Undead
    .target Knight Commander Plaguefist
step
    .goto 124,54.30,83.31 << BloodElf
    .goto 124,54.14,83.28 << Worgen
    .goto 124,53.54,83.79 << Human
    .goto 124,54.54,83.43 << Draenei
    .goto 124,54.02,83.29 << Dwarf
    .goto 124,53.77,83.28 << Orc
    .goto 124,53.54,83.31 << Undead
    .goto 124,53.79,83.7 << Troll
    .goto 124,53.93,83.8 << Gnome
    .goto 124,54.25,83.91 << NightElf
    .goto 124,54.11,83.75 << Goblin
    .goto 124,54.5,83.85 << Tauren
    >>Go inside the House wait infront of |cRXP_FRIENDLY_Lord Harford|r then kill them << Worgen
    >>Go inside the House wait infront of |cRXP_FRIENDLY_Lady Eonys|r then kill them << BloodElf
    >>Go inside the House wait infront of |cRXP_FRIENDLY_Donovan Pulfrost|r then kill them << Dwarf
    >>Go inside the House wait infront of |cRXP_FRIENDLY_Kug Ironjaw|r then kill them << Orc
    >>Go inside the House wait infront of |cRXP_FRIENDLY_Antoine Brack|r then kill them << Undead
    >>Go inside the House wait infront of |cRXP_FRIENDLY_Ellen Stanbridge|r then kill them << Human
    >>Go inside the House wait infront of |cRXP_FRIENDLY_Iggy Darktusk|r then kill them << Troll
    >>Go inside the House wait infront of |cRXP_FRIENDLY_Goby Blastenheimer |r.then kill them << Gnome
    >>Go inside the House wait infront of |cRXP_FRIENDLY_Gally Lumpstain|r then kill them << Goblin
    >>Go inside the House wait infront of |cRXP_FRIENDLY_Yazmina Oakenthorn|r then kill them << NightElf
    >>Go inside the House wait infront of |cRXP_FRIENDLY_Malar Bravehorn|r then kill them << Tauren
    >>Go inside the House wait infront of |cRXP_FRIENDLY_Valok the Righteous|r then kill them << Draenei
    .complete 28650,1 >>Complete A Special Surprise << Goblin
    .complete 28649,1 >>Complete A Special Surprise << Worgen
    .complete 12739,1 >>Complete A Special Surprise << Tauren
    .complete 12742,1 >>Complete A Special Surprise << Human
    .complete 12743,1 >>Complete A Special Surprise << NightElf
    .complete 12744,1 >>Complete A Special Surprise << Dwarf
    .complete 12745,1 >>Complete A Special Surprise << Gnome
    .complete 12746,1 >>Complete A Special Surprise << Draenei
    .complete 12747,1 >>Complete A Special Surprise << BloodElf
    .complete 12748,1 >>Complete A Special Surprise << Orc
    .complete 12749,1 >>Complete A Special Surprise << Troll
    .complete 12750,1 >>Complete A Special Surprise << Undead
step
    .goto 124,52.94,81.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Knight Commander Plaguefist|r.
    .turnin 28650,1 >>Turn in A Special Surprise << Goblin
    .turnin 28649,1 >>Turn in A Special Surprise << Worgen
    .turnin 12739,1 >>Turn in A Special Surprise << Tauren
    .turnin 12742,1 >>Turn in A Special Surprise << Human
    .turnin 12743,1 >>Turn in A Special Surprise << NightElf
    .turnin 12744,1 >>Turn in A Special Surprise << Dwarf
    .turnin 12745,1 >>Turn in A Special Surprise << Gnome
    .turnin 12746,1 >>Turn in A Special Surprise << Draenei
    .turnin 12747,1 >>Turn in A Special Surprise << BloodElf
    .turnin 12748,1 >>Turn in A Special Surprise << Orc
    .turnin 12749,1 >>Turn in A Special Surprise << Troll
    .turnin 12750,1 >>Turn in A Special Surprise << Undead
    .accept 12751 >>Accept A Sort Of Homecoming
    .target Knight Commander Plaguefist
step
    .goto 124,56.26,80.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r.
    .turnin 12751 >>Turn in A Sort Of Homecoming
    .target Thassarian
step
    .goto 124,56.25,79.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbaz Bloodbane|r.
    .accept 12754 >>Accept Ambush At The Overlook
    .target Orbaz Bloodbane
step
    .goto 124,59.69,76.6
    >>Use 136065|T967530:0|t[Makeshift Cover] to summon the |cRXP_ENEMY_Courier|r then kill and [|cRXP_LOOT_loot him|r].
    .complete 12754,1 --1/1 Scarlet Courier's Belongings
    .complete 12754,2 --1/1 Scarlet Courier's Message
    .use 39645
step
    .goto 124,56.27,79.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbaz Bloodbane|r.
    .turnin 12754 >>Turn in Ambush At The Overlook
    .accept 12755 >>Accept A Meeting With Fate
    .target Orbaz Bloodbane
step
    .goto 124,65.66,83.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High General Abbendis|r.
    *|cRXP_WARN_You can mount while disguised|r.
    .turnin 12755 >>Turn in A Meeting With Fate
    .accept 12756 >>Accept The Scarlet Onslaught Emerges
    .target High General Abbendis
step
    .goto 124,56.26,79.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbaz Bloodbane|r.
    .turnin 12756 >>Turn in The Scarlet Onslaught Emerges
    .accept 12757 >>Accept Scarlet Armies Approach...
    .target Orbaz Bloodbane
step
    .goto 124,56.14,80.11,5,0
    .goto 124,48.88,29.75
    >>Wait for a short time and then |TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Portal to Acherus|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Darion Mograine|r.
    .turnin 12757 >>Turn in Scarlet Armies Approach...
    .accept 12778 >>Accept The Scarlet Apocalypse
    .target Highlord Darion Mograine
step
    .goto 124,52.08,35.04,10,0
    .goto 124,53.58,36.87
    >>|TInterface/cursor/crosshair/interact.blp:20|tInteract with the |cRXP_FRIENDLY_Skeleton Gryphon|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Lich King|r.
    .turnin 12778 >>Turn in The Scarlet Apocalypse
    .accept 12779 >>Accept An End To All Things...
    .target Skeleton Gryphon
    .target The Lich King
step
    .goto 124,54.62,65.81
    >>Use |T134228:0|t[Horn of the Frostbrood] to mount a |cRXP_FRIENDLY_Frostwyrm|r.
    >>Use (1) to kill enemies and (2) on an enemy to regenerate mana.
    >>|cRXP_WARN_Once you are done fly back with the Frost Wyrm|r.
    .complete 12779,2 --10/10 Scarlet Ballista destroyed
    .complete 12779,1 --150/150 Scarlet Soldiers slain
    .use 39700
step
    .goto 124,53.55,36.83
    >>Fly to the |cRXP_FRIENDLY_Lich King|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Lich King|r.
    .turnin 12779 >>Turn in An End To All Things...
    .accept 12800 >>Accept The Lich King's Command
    .target The Lich King
step
    .goto 124,49.28,28.68,10,0
    .goto 124,34.27,30.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scourge Commander Thalanor|r. |cRXP_WARN_Go through the cave to pass the mountains|r.
    .turnin 12800 >>Turn in The Lich King's Command
    .accept 12801 >>Accept The Light of Dawn
    .target Scourge Commander Thalanor
step
    .goto 124,39.10,38.94
    >>Talk to |cRXP_FRIENDLY_Highlord Darion Mograine|r. |cRXP_WARN_if he's here|r.
    >>|cRXP_WARN_The quest countdown begins when anyone speaks to him, not just you. If the event has just finished, you might need to wait before starting. If the event is underway, jump in and join the fight|r.
    >>|cRXP_WARN_Once the Event starts just follow the NPC's and wait until it's done|r.
    .complete 12801,1 --1/1 The Light of Dawn Uncovered
step
    .goto 124,39.10,39.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Darion Mograine|r.
    .turnin 12801,1 >>Turn in The Light of Dawn
    .accept 13165 >>Accept Taking Back Acherus
    .target Highlord Darion Mograine
step
    .goto 23,83.44,49.45
    >>|cRXP_WARN_Open up your Spellbook and use your Death Gate|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Darion Mograine|r.
    .turnin 13165 >>Turn in Taking Back Acherus
    .accept 13166 >>Accept The Battle For The Ebon Hold
    .target Highlord Darion Mograine
step
    .goto 23,83.15,48.75,10,0
    .goto 23,81.72,46.70
    >>Walk on the |cRXP_WARN_Purple Teleporter|r then slay the |cRXP_ENEMY_abominations|r |cRXP_WARN_in the room|r.
    .complete 13166,2 --10/10 Scourge slain
    .complete 13166,1 --1/1 Patchwerk slain
    .target Patchwerk
step
    .goto 23,83.43,49.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Darion Mograine|r.
    .turnin 13166 >>Turn in The Battle For The Ebon Hold
    .target Highlord Darion Mograine
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Darion Mograine|r. << Alliance
    .accept 13188 >>Accept Where Kings Walk << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Darion Mograine|r. << Horde
    .accept 13189 >>Accept Saurfang's Blessing << Horde
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Portal to Stormwind|r. << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Anduin Wrynn << Alliance
    .turnin 13188 >>Turn in Where Kings Walk << Alliance
    .goto 23,83.65,51.28,10,0 << Alliance
    .goto 84,85.91,31.57 << Alliance
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Portal to Orgrimmar|r. << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to High Overlord Saurfang << Horde
    .turnin 13189 >>Turn in Saurfang's Blessing << Horde
    .goto 85,48.53,70.71 << Horde
    .goto 23,84.56,50.45,10,0 << Horde
step <<Alliance <<DK
    #veteran
    .goto 84,61.48,31.72,5,0
    .goto 84,60.1,32.22
    +The Darkmoon Faire event is now active, |cRXP_WARN_which guarantees you to gain an additional level for free and a temporary 10% experience boost|r. You'll need to purchase |cRXP_WARN_certain items from the auction house to take full advantage of this|r. If necessary,|cRXP_WARN_you can transfer gold from your other characters to make these purchases|r. However, if you find that you can't afford everything, |cRXP_WARN_It's still worthwhile to visit the Darkmoon Faire for the temporary experience buff and to buy only some of the items|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Auctioneer Lauffer|r.
    .collect 71715,1
    .collect 71638,1
    .collect 71637,1
    .collect 71636,1
    .collect 71635,1
    .collect 71952,1
    .collect 71951,1
    .collect 71953,1
    .collect 71716,1
    .target Auctioneer Lauffer
    .target Auctioneer Hesse
    .target Auctioneer Fitzgerald
    .dmf
    .isQuestTurnedIn 31450 --x Old DK
step <<Alliance <<DK
    #fresh
    #completewith DarkMoonFaire
    +The Darkmoon Faire event is now active, |cRXP_WARN_which guarantees you to gain an additional level for free and a temporary 10% experience boost|r.
    .isQuestTurnedIn 31450 --x Old DK
step <<Alliance <<DK
    #completewith next
    .link /run AbandonSkill(186); AbandonSkill(182);>> |cRXP_WARN_Click this text to receive a macro that will unlearn your professions|r.
    .dmf
    .isQuestTurnedIn 31450 --x Old DK
step <<Alliance <<DK
    #label DarkMoonFaire
    .goto 84,80.46,37.71,10,0
    .goto 84,72.51,46.59,30,0
    .goto 84,70.27,46.83,10,0
    .goto 84,62.1,32.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage|r.
    .accept 7905 >>Accept The Darkmoon Faire
    .target Darkmoon Faire Mystic Mage
    .dmf
    .isQuestTurnedIn 31450 --x Old DK
step <<Alliance <<DK
    .goto 84,62.25,72.96
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_ENEMY_Darkmoon Faire Mystic Mage|r.
    .skipgossip
    .zoneskip 37
    .target Darkmoon Faire Mystic Mage
    .dmf
    .isQuestTurnedIn 31450 --x Old DK
step <<Alliance <<DK
    .goto 84,73.04,47.56,25,0
    .goto 84,67.45,57.19,25,0
    .goto 84,68.59,62.19,25,0
    .goto 84,66.03,64.49,25,0
    .goto 84,64.39,67.14,25,0
    .goto 84,68.29,74.57,25,0
    .goto 84,70.92,72.45
    .fly Goldshire >>Fly to |cRXP_WARN_Goldshire|r.
    .nodmf
    .isQuestTurnedIn 12801 --x Traditional DK Check
]])

--Demon Hunter Mardum
RXPGuides.RegisterGuide([[
#retail
#version 2
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(1-80)|r Default
#name a) DH Intro
#displayname |cFF00CCFF1|r - Mardum
#next << Alliance
#next << Horde


<< DemonHunter


step
    #completewith DemonHunterIntroduction
    +Welcome to the |cRXP_WARN_Demon Hunter Starting Zone|r. Guide of RestedXP.
step
    #completewith next
    +|cRXP_WARN_In speedrun terms, always be on the lookout for green crystals in this area. These crystals give your Fel Rush ability a significant boost by eliminating its cooldown for two whole minutes. This allows you to zip through the zone at a quicker pace and clear obstacles more efficiently|r.
    .link https://gyazo.com/6cedfe6dd0314f2d85731f829b322e35 >> Picture Link: Empowered Fel Crystal
step
    #label DemonHunterIntroduction
    .goto 672,22.07,55.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r.
    *|cRXP_WARN_Be prepared for a brief roleplay segment before you can take on Kayn's Quest. If you use your Spectral Sight ability swiftly you can skip the initial roleplay|r.
    .accept 40077 >>Accept The Invasion Begins
    .target Kayn Sunfury
step
    .goto 672,23.85,57.20,30,0
    .goto 672,28.46,65.88,30,0
    .goto 672,28.67,62.9
    >>Kill |cRXP_ENEMY_Demons|r.
    .complete 40077,1 --15/15 Demons slain
    --x .mobs
step
    .goto 672,28.67,62.9
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Legion Gateway|r.
    >>|cRXP_WARN_Press "Escape" on your keyboard to skip the cinematic|r.
    .complete 40077,2 --Change the Legion Banner
step
    .goto 672,28.6,63.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r.
    .turnin 40077 >>Turn in The Invasion Begins
    .accept 40378 >>Accept Enter the Illidari: Ashtongues
    .target Kayn Sunfury
step
    #sticky
    #label MardumAssaultonMardum
    .goto 672,38.73,45.39,0,0
    >>Kill |cRXP_ENEMY_enemies|r and |TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Legion Communicator|r in the area.
    .accept 39279 >>Accept Assault on Mardum (Bonus Objective)
    .complete 39279,1 --Assault the Legion in the lowlands (100%)
    --x .mob
step
    #title Check Fel Crystal Location
    #completewith next
    .goto 672,29.73,62.37,10,0
    .goto 672,28.83, 61.25,8 >>Check for Empowered Fel Crystal(Green Fel Crystal).
step
    .goto 672,31.57,61.91
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Legion Banner|r.
    .complete 40378,1 --1/1 Ashtongue forces
step
    .goto 672,31.51,62.34
    >>|TInterface/cursor/crosshair/interact.blp:20|tInteract with the |cRXP_FRIENDLY_Felsaber|r.
    .complete 40378,2 --1/1 Accept Illidan's Gift
    .target Felsaber
step
    #title Check for Fel Crystal
    #completewith next
    .goto 672,31.97,65.82,8 >>Check for Empowered Fel Crystal(Green Fel Crystal).
step
    .goto 672,31.83,65.43,5,0
    .goto 672,33.94,70.05
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Legion Gateway|r.
    .complete 40378,3 --1/1 Find Allari to the southeast
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Allari the Souleater|r and |cRXP_FRIENDLY_Sevis Brightflame|r.
    .turnin 40378 >>Turn in Enter the Illidari: Ashtongue
    .accept 38759 >>Accept Set Them Free
    .accept 39049 >>Accept Eye On the Prize
    .goto 672,33.94,70.05
    .accept 40379 >>Accept Enter the Illidari: Coilskar
    .goto 672,33.94,69.96
    .target Allari the Souleater
    .target Sevis Brightflame
step
    .goto 672,34.86,70.21
    .turnin 39970 >> Open the chest |cRXP_WARN_in the back of the cave|r.
step
    #completewith next
    .goto 672,33.82,70.10,10 >>Leave the small cave
step
    #completewith next
    .cast 193547 >>Use the |T441143:0|t[Fel Crystal Fragments]  for a Movement Speed and Damage buff
    *|cRXP_WARN_Refresh when buff is fading|r.
step
    .goto 672,39.00,73.24
    >>Kill an |cff00ecffAnguish Jailer|r and loot him for [|cRXP_LOOT_Soulwrought Key|r].
    .complete 38759,1 --1/1 Soulwrought Key
step
    .goto 672,39.34,71.64
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Cage|r.
    .complete 38759,3 --1/1 Cyana Nightglaive freed
step
    .goto 672,41.74,73.22
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Cage|r and the |cRXP_PICK_Legion Communicator|r.
    .complete 38759,2 --1/1 Belath Dawnblade freed
step
    .goto 672,42.63,79.37
    >>Kill |cff00ecffInquisitor Baleful|r.
    *|cRXP_WARN_While he is immune, refrain from moving away from him to prevent him from evading|r.
    .complete 39049,1 --1/1 Inquisitor Baleful slain & power taken
    .mob Inquisitor Baleful
step
    .goto 672,43.43,72.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ashtongue Mystic|r.
    .complete 40379,1 --1/1 Soul sacrificed
    .skipgossip
    .target Ashtongue Mystic
step
    .goto 672,43.75,72.07
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Legion Gateway|r.
    .complete 40379,2 --1/1 Coilskar forces
step
    #title Check Fel Crystal Location
    #completewith next
    .goto 672,42.38,70.68,10 >>Check for Empowered Fel Crystal(Green Fel Crystal) |cfff78300inside the lava|r.
step
    .goto 672,41.56,66.60
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Cage|r.
    .complete 38759,5 --1/1 Mannethrel Darkstar freed
step
    #title Check Fel Crystal Location
    #completewith next
    .goto 672,41.31,67.02,10,0
    .goto 672,38.74,68.27,10 >>Check for Empowered Fel Crystal(Green Fel Crystal) |cfff78300above the cave|r. You can manually skip this step if it's not there.
step
    .goto 672,38.58,67.85
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Cage|r.
    .complete 38759,4 --1/1 Izal Whitemoon freed
step
    #completewith next
    .goto 672,39.20,68.70,10 >>Leave the small cave
step
    .goto 672,38.8,60.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jace Darkweaver|r.
    .turnin 38759 >>Turn in Set Them Free
    .turnin 39049 >>Turn in Eye On the Prize
    .turnin 40379 >>Turn in Enter the Illidari: Coilskar
    .target Jace Darkweaver
step
    .goto 672,38.8,60.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jace Darkweaver|r.
    .accept 39050 >>Accept Meeting With the Queen
    .target Jace Darkweaver
step
    .goto 672,38.75,60.53
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Nether Crucible|r.
    >>|cRXP_WARN_Press "Escape" on your keyboard to skip the cinematic|r.
    .complete 39050,1 --1/1 Ritual completed
step
    .goto 672,38.8,60.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jace Darkweaver|r.
    .turnin 39050 >>Turn in Meeting With the Queen
    .accept 38765 >>Accept Enter the Illidari: Shivarra
    .accept 38766 >>Accept Before We're Overrun
    .target Jace Darkweaver
step
    #title Check Fel Crystal Location
    #completewith next
    .goto 672,41.13,52.29,10 >>Check for Empowered Fel Crystal(Green Fel Crystal) |cfff78300above the cave|r.
step
    >>Kill |cff00ecffBeliash|r.
    .goto 672,35.16,39.30
    .complete 38766,1 --1/1 Beliash slain & power taken
    .mob Beliash
step
    .goto 672,39.69,39.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sevis|r.
    >>|cRXP_WARN_During the "Eye Beam" cast you can walk|r.
    .complete 38765,1 --1/1 Sacrifice made
    .skipgossip 1
step
    .goto 672,40.33,38.41
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Legion Gateway|r.
    .complete 38765,2 --1/1 Shivarra forces
step
    #title Check Fel Crystal Location
    #completewith next
    .goto 672,42.03,39.31,10 >>Check for Empowered Fel Crystal(Green Fel Crystal) |cfff78300above the cave|r.
step
    #rqeuires MardumAssaultonMardum
    #completewith next
    +|cfff78300Mount up and follow the way|r.
step
    #rqeuires MardumAssaultonMardum
    .goto 672,60.51,44.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r.
    .turnin 38765 >>Turn in Enter the Illidari: Shivarra
    .turnin 38766 >>Turn in Before We're Overrun
    .target Kayn Sunfury
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r.
    .goto 672,60.51,44.75
    .accept 38813 >>Accept Orders for Your Captains
step
    .goto 672,59.23,46.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady S'theno|r.
    .complete 38813,2 --1/1 Lady S'theno briefed
    .skipgossip
    .target Lady S'theno
step
    .goto 672,61.0,46.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matron Mother|r.
    .complete 38813,3 --1/1 Matron Mother Malevolence briefed
    .skipgossip
step
    .goto 672,62.2,46.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Battlelord Gaardoun|r.
    .complete 38813,1 --1/1 Battlelord Gaardoun briefed
    .skipgossip
    .target Battlelord Gaardoun
step
    .goto 672,60.51,44.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r.
    .turnin 38813 >>Turn in Orders for Your Captains
    .accept 39262 >>Accept Give Me Sight Beyond Sight
    .target Kayn Sunfury
step
    #completewith next
    .cast 200749 >>Press N and select a specialization (Recommendation: Havoc)
step
    .goto 672,64.05,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jace Darkweaver|r.
    .complete 39262,1 --1/1 Speak with Jace Darkweaver
    .skipgossip 96436,1
    .target Jace Darkweaver
step
    .goto 672,63.97,52.73
    >>Use |T188501:0|tSpectral Sight |cRXP_WARN_while facing the cave|r.
    .complete 39262,2 --1/1 Face the Cave & Use Spectral Sight
    .usespell 188501
step
    .goto 672,64.05,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jace Darkweaver|r.
    .turnin 39262 >>Turn in Give Me Sight Beyond Sight
    .accept 39495 >>Accept Hidden No More
    .target Jace Darkweaver
step
    #completewith next
    .goto 673,44.24,51.08,8,0
    .goto 673,51.31,55.88,8,0
    .goto 673,55.17,56.64,8 >>Enter the cave and use double jump to ascend the ledge on your left.
step
    .goto 673,59.1,61.9
    >>Kill |cff00ecffFel Lord Caza|r.
    .complete 39495,1 --1/1 Caza slain & power taken
    .target Fel Lord Caza
step
    .goto 673,54.77,58.28
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_chest|r for a ring.
    .turnin 39973,1 >> |TInterface/cursor/crosshair/interact.blp:20|tClick the Chest
step
    #completewith next
    .hs >> Use Hearthstone |cRXP_WARN_to Illidari Foothold|r.
step
    .goto 672,60.51,44.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r.
    .turnin 39495 >>Turn in Hidden No More
    .accept 38727 >>Accept Stop the Bombardment
    .target Kayn Sunfury
step
    .goto 672,60.56,44.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyana Nightglaive|r.
    .accept 38819 >>Accept Their Numbers Are Legion
    .target Cyana Nightglaive
step
    .goto 672,60.52,44.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Allari the Souleater|r.
    .accept 38725 >>Accept Into the Foul Creche
    .target Allari the Souleater
step
    #completewith
    >>Kill |cRXP_ENEMY_mobs|r in the area.
    .complete 38819,1 --War progress (100%)
    --x .mob
step
    .goto 672,69.26,48.72
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Object|r.
    .complete 38727,1 --1/1 Doom Fortress Devastator
step
    #completewith next
    .goto 672,72.39,46.87,15,0
    .goto 672,73.13,45.85,15 >> Use double jump to climb the wall.
step
    #completewith next
    .goto 672,75.01,41.08
    .cast 6477 >>Place the banner
step
    #completewith next
    .complete 38727,2 --1/1 Forge of Corruption Devastator
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'vas|r.
    .goto 672,73.15,33.83
    .turnin 38725 >>Turn in Into the Foul Creche
    .accept 40222 >>Accept The Imp Mother's Tome
step
    .goto 672,77.05,28.04
    >>Kill |cff00ecffProlifica|r and loot her for [|cRXP_LOOT_Tome of Fel Secrets|r].
    .complete 40222,1 --1/1 Tome of Fel Secrets
step
    #completewith next
    .goto 672,73.68,32.16,10 >>Leave the cave
step
    #label MardumStoptheBombardment
    #completewith next
    .goto 672,66.39,30.40
    .cast 6477 >>Place the banner
step
    #sticky
    #label Area1
    .goto 672,68.21,28.06,25,0
    .goto 672,66.23,25.97,25,0
    .goto 672,64.89,27.25,30,0
    .goto 672,63.71,29.63
    >>Kill |cRXP_ENEMY_mobs|r in the area.
    .complete 38819,1 --War progress (100%)
    --x .mob
step
    .complete 38727,3 --1/1 Soul Engine Devastator
step
    #requires Area1
    #completewith next
    +|cfff78300Mount up and follow the arrow|r.
step
    #requires Area1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r and |cRXP_FRIENDLY_Kor'vas|r.
    >>|cRXP_WARN_If you still have the Felrush Buff you can Felrush over the Abyss directly to Kayn|r.
    .turnin 38727 >>Turn in Stop the Bombardment
    .turnin 38819 >>Turn in Their Numbers Are Legion
    .goto 672,60.52,44.76
    .turnin 40222 >>Turn in The Imp Mother's Tome
    .accept 40051 >>Accept Fel Secrets
    .goto 672,60.5,44.8
    .target Kayn Sunfury
    .target Kor'vas Blodthorn
step
    .goto 672,60.56,44.76
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_book|r and choose a specialization |cRXP_WARN_(Recommendation: Havoc)|r.
    .complete 40051,1 --1/1 Choose between Havoc & Vengeance
step
    .goto 672,60.52,44.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r.
    .turnin 40051 >>Turn in Fel Secrets
    .accept 39516 >>Accept Cry Havoc and Let Slip the Illidari!
    .target Kayn Sunfury
step
    .goto 672,60.52,44.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_NPC's|r.
    .complete 39516,4 --1/1 Kor'vas taught
    .complete 39516,1 --1/1 Allari taught
    .complete 39516,3 --1/1 Kayn taught
    .complete 39516,2 --1/1 Cyana taught
    .skipgossip 1
    .skipgossip 93127,2
    .target Kor'vas Bloodthorn
    .target Allari the Souleater
    .target Kayn Sunfury
    .target Cyana Nightglaive
    --x fix npc order / talk to
step
    .goto 672,60.25,44.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mannethrel Darkstar|r.
    .complete 39516,5 --1/1 Mannethrel taught
    .skipgossip 2
    .target Mannethrel Darkstar
step
    .goto 672,60.52,44.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r.
    .turnin 39516 >>Turn in Cry Havoc and Let Slip the Illidari!
    .accept 39663 >>Accept On Felbat Wings
    .target Kayn Sunfury
step
    .goto 672,62.52,44.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Izal Whitemoon|r |cRXP_WARN_after doing /sit|r.
    .complete 39663,1 --1/1 Ride to the Fel Hammer
    .skipgossip
step
    #completewith next
    .goto 672,69.9,44.2,40,0
    +Leap to your Death by jumping into the Abyss, wait on the Resurrection
step
    .goto 672,69.93,44.23
    >>Engage the |cRXP_ENEMY_Brood Queen Tyranna|r in combat and persist until she retreats into the shadows then |Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyana Nightglaive|r.
    .turnin 39663 >>Turn in On Felbat Wings
    .target Cyana Nightglaive
    .mob Brood Queen Tyranna
step
    .goto 672,69.9,44.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyana Nightglaive|r.
    .accept 38728 >>Accept The Keystone
    .target Cyana Nightglaive
step
    .goto 672,70.0,40.6
    >>Kill the |cff00ecffBrood Queen Tyranna|r and loot her for [|cRXP_LOOT_Sargerite Keystone|r].
    .complete 38728,1 --1/1 Sargerite Keyston
    .mob Brood Queen Tyranna
step
    .goto 672,70.88,39.09,-1
    .goto 672,70.95,41.90,-1
    .goto 672,68.84,41.97,-1
    .goto 672,68.80,39.13,-1
    >>Go |cRXP_WARN_downstairs|r.
    .complete 38728,2 --1/1 Find the way downstairs
step
    .goto 672,69.86,37.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r.
    >>|cRXP_WARN_Wait for the brief roleplay, which will be completed when the timer runs out|r.
    .turnin 38728 >>Turn in The Keystone
    .timer 7,Roleplay Duration
    .accept 38729 >>Accept Return to the Black Temple
step
    .goto 672,69.85,37.81
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Sargerite Keystone|r.
    .complete 38729,1 --1/1 Sargerite Keystone activated
step
    .goto 672,69.85,37.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClick the |cRXP_WARN_Fel Portal|r.
    .turnin 38729 >>Turn in Return to the Black Temple
step
    .goto 677,80.09,36.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maiev Shadowsong|r.
    .accept 38672 >>Accept Breaking Out
    .target Maiev Shadowsong
step
    .goto 677,78.63,38.31
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Altruis's Cell|r.
    .complete 38672,1 --1/1 Altruis freed
step
    .goto 677,78.59,34.86
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Kayn's Cell|r.
    .complete 38672,2 --1/1 Kayn freed
step
    .goto 677,77.8,35.7
    >>|cRXP_WARN_Wait for the brief roleplay, which will be completed when the timer runs out|r.
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Lever|r.
    .turnin 38672 >>Turn in Breaking Out
    .timer 8,Roleplay Duration
step
    .goto 677,74.47,35.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r.
    .accept 38690 >>Accept Rise of the Illidari
    .target Kayn Sunfury
step
    .goto 677,74.42,37.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r.
    .accept 38689 >>Accept Fel Infusion
    .target Altruis the Sufferer
step
    #completewith next
    >>|cRXP_WARN_It's crucial to make some progress on it, but avoid completing it entirely|r.
    .complete 39742,1 -- Repel the Legion Attackers
step
    #sticky
    #label Area2
    >>Tag as many |cRXP_ENEMY_Savage Stalkers|r as possible and kill them while |TInterface/cursor/crosshair/interact.blp:20|tclicking |cRXP_PICK_cells|r.
    .complete 38689,1 --100/100 Fel Energy regained
    .mob Savage Stalker
step
    .goto 677,75.04,39.27
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Warden Cell|r.
    .complete 38690,1,1 --8/8 Imprisoned Illidari freed
step
    .isOnQuest 38690
    .goto 677,74.46,32.53,8 >>Use double jump to ascend the ledge.
step
    .goto 677,72.14,32.03
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Warden Cell|r.
    .complete 38690,1,2 --8/8 Imprisoned Illidari freed
step
    .goto 677,71.01,27.55
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Warden Cell|r.
    .complete 38690,1,3 --8/8 Imprisoned Illidari freed
step
    .goto 677,66.10,31.88
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Warden Cell|r.
    .complete 38690,1,4 --8/8 Imprisoned Illidari freed
step
    .goto 677,63.12,33.82
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Warden Cell|r.
    .complete 38690,1,5 --8/8 Imprisoned Illidari freed
step
    .isOnQuest 38690
    .goto 677,63.55,39.87,8 >>Double Jump the Ledge
step
    .goto 677,65.95,40.93
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Warden Cell|r.
    .complete 38690,1,6 --8/8 Imprisoned Illidari freed
step
    .goto 677,66.37,43.05
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Warden Cell|r.
    .complete 38690,1,7 --8/8 Imprisoned Illidari freed
step
    .goto 677,71.87,43.27
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Warden Cell|r.
    .complete 38690,1,8 --8/8 Imprisoned Illidari freed
step
    #requires Area2
    #completewith next
    .goto 677,61.52,36.49,20,0
    .goto 677,51.23,37.05,20 >>|cRXP_WARN_Follow the arrow|r.
step
    #requires Area2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r,|cRXP_FRIENDLY_Kayn Sunfury|r and |cRXP_FRIENDLY_Maiev Shadowsong|r.
    .turnin 38689 >>Turn in Fel Infusion
    .goto 677,49.68,49.3
    .turnin 38690 >>Turn in Rise of the Illidari
    .goto 677,49.17,49.48
    .accept 38723 >>Accept Stop Gul'dan! << Female
    .accept 40253 >>Accept Stop Gul'dan! << Male
    .goto 677,49.46,49.76
    .target Altruis the Sufferer
    .target Kayn Sunfury
    .target Maiev Shadowsong
step
    .goto 677,50.1,74.5
    >>Kill |cff00ecffCrusher & Sledge|r.
    *|cRXP_WARN_They have shared HP|r.
    .complete 38723,2 << Female --1/1 Crusher & Sledge slain & power taken
    .complete 40253,2 << Male --1/1 Crusher & Sledge slain & power taken
    .mob Crusher
    .mob Sledge
step
    .goto 677,50.75,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayn Sunfury|r.
    .turnin 38723 >>Turn in Stop Gul'dan! << Female
    .turnin 40253 >>Turn in Stop Gul'dan! << Male
    .accept 39682 >>Accept Grand Theft Felbat
    .target Kayn Sunfury
step
    #completewith next
    .goto 677,50.06,37.06,15,0
    .goto 677,42.93,32.10,15,0
    .goto 677,54.04,29.34,15 >>|cRXP_WARN_Follow the way up|r.
step
    .goto 677,49.58,30.63
    >>|cRXP_WARN_Last chance to complete this|r.
    .complete 39742,1 -- Repel the Legion Attackers
step
    .goto 677,54.27,29.14,15,0
    .goto 677,48.51,20.14
    >>|TInterface/cursor/crosshair/interact.blp:20|tInteract with the |cRXP_FRIENDLY_Vampiric Felbat|r.
    .complete 39682,1 --1/1 Ride a Vampiric Felbat to the Upper Vault
    .target Vampiric Felbat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'vas Bloodthorn|r and |cRXP_FRIENDLY_Allari the Souleater|r.
    .goto 678,41.33,47.33
    .turnin 39682 >>Turn in Grand Theft Felbat
    .accept 39685 >>Accept Frozen in Time
    .accept 39684 >>Accept Beam Me Up
    .accept 39683 >>Accept Forged in Fire << Female
    .accept 40254 >>Accept Forged in Fire << Male
    .goto 678,41.12,47.17
    .target Kor'vas Bloodthorn
    .target Allari the Souleater
step
    .goto 678,46.77,36.91,15,0
    .goto 678,46.7,17.8
    >>Kill |cff00ecffImmolanth|r.
    .complete 39683,1 << Female --1/1 Immolanth slain & power taken
    .complete 40254,1 << Male --1/1 Immolanth slain & power taken
    .mob Immolanth
step
    .goto 678,46.74,36.41,15,0
    .goto 678,54.76,48.15,15,0
    .goto 678,70.54,49.62
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Mirror|r.
    *|cRXP_WARN_Make sure to dodge the discs|r.
    .complete 39684,1 --1/1 Mirror rotated
step
    .goto 678,59.05,48.2,10,0
    .goto 678,52.93,58.45,15,0
    .goto 678,46.84,66.84,10,0
    .goto 678,50.1,78.2
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Orb|r.
    .complete 39685,1 --1/1 Eastern Countermeasure activated
step
    .goto 678,56.77,51.86,15,0
    .goto 678,48.44,63.66,15,0
    .goto 678,46.8,84.1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Orb|r.
    .complete 39685,2 --1/1 Southern Countermeasure activated
step
    .goto 678,43.4,78.2
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Orb|r.
    .complete 39685,3 --1/1 Western Countermeasure activated
step
    .goto 678,46.63,66.17,8,0
    .goto 678,46.83,60.12,8,0
    .goto 678,41.1,47.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Allari the Souleater|r.
    .turnin 39685 >>Turn in Frozen in Time
    .turnin 39683 >>Turn in Forged in Fire << Alliance
    .turnin 40254 >>Turn in Forged in Fire << Horde
    .turnin 39684 >>Turn in Beam Me Up
    .accept 39686 >>Accept All The Way Up
    .target Allari the Souleater
step
    .goto 678,46.69,48.12
    >>|cRXP_WARN_Proceed to the location of the elevator and patiently await its arrival|r.
    .complete 39686,1 --1/1 Ascend to the Hall of Judgment
step
    .goto 679,24.41,55.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'vas Bloodthorn|r.
    .turnin 39686 >>Turn in All The Way Up
    .accept 40373 >>Accept A New Direction
    .target Kor'vas Bloodthorn
step
    .goto 679,24.52,53.05
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Pool of Judgment|r.
    .complete 40373,1 --1/1 Pool of Judgment viewed
step
    .goto 679,24.52,53.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'vas Bloodthorn|r and select either |cRXP_FRIENDLY_Kayn|r or |cRXP_FRIENDLY_Altruis|r.
    .complete 40373,2 --1/1 Choose between Kayn and Altruis
    .target Kor'vas Bloodthorn
step
    >>Skip the quest that you couldn't accept manually
    .goto 679,24.4,55.8
    .turnin 40373 >>Turn in A New Direction
    .accept 39688 >>Accept Between Us and Freedom << NightElf
    .accept 40255 >>Accept Between Us and Freedom << NightElf
    .accept 39694 >>Accept Between Us and Freedom << BloodElf
    .accept 40256 >>Accept Between Us and Freedom << BloodElf
step
    #completewith MardumBetweenUsAndFreedom
    .goto 679,24.44,72.11,10,0
    .goto 679,32.57,77.47,10,0
    .goto 679,39.46,80.59,20 >>|cRXP_WARN_Follow the arrow|r.
step
    .isOnQuest 40256
    >>Kill |cff00ecffBastillax|r.
    .goto 679,50.34,77.76
    .complete 40256,1 --1/1 Bastillax slain & power taken
    .mob Bastillax
step
    .isOnQuest 39694
    >>Kill |cff00ecffBastillax|r.
    .goto 679,50.34,77.76
    .complete 39694,1 --1/1 Bastillax slain & power taken
    .mob Bastillax
step
    .isOnQuest 40255
    >>Kill |cff00ecffBastillax|r.
    .goto 679,50.34,77.76
    .complete 40255,1 --1/1 Bastillax slain & power taken
    .mob Bastillax
step
    .isOnQuest 39688
    >>Kill |cff00ecffBastillax|r.
    .goto 679,50.34,77.76
    .complete 39688,1 --1/1 Bastillax slain & power taken
    .mob Bastillax
step
    #completewith next
    .goto 679,63.39,80.28,10,0
    .goto 679,72.67,78.62,5,0
    .goto 679,78.89,80.04,5,0
    .goto 679,78.22,87.79,5 >>Double Jump + Felrush to make it up the Mountain to force Khadgar to spawn early
    >>|cRXP_WARN_Follow the Waypoints closely|r.
step
    #label MardumBetweenUsAndFreedom
    .goto 679,83.98,82.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r.
    .turnin -39688 >>Turn in Between Us and Freedom << NightElf
    .turnin -40255 >>Turn in Between Us and Freedom << NightElf
    .turnin -40256 >>Turn in Between Us and Freedom << BloodElf
    .turnin -39694 >>Turn in Between Us and Freedom << BloodElf
    .target Altruis the Sufferer
step << Alliance
    .goto 679,85.98,84.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Khadgar|r.
    .accept 39689 >>Accept Illidari, We Are Leaving
    .turnin 39689 >>Turn in Illidari, We Are Leaving
    .target Archmage Khadgar
step << Alliance
    .goto 84,72.55,47.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Khadgar|r.
    .accept 39691 >>Accept The Call of War
    .target Archmage Khadgar
step << Alliance
    .goto 84,83.73,34.40
    .complete 39691,1 --1/1 Enter |cRXP_WARN_the Throne Room|r.
step << Alliance
    .goto 84,84.39,33.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jace Darkweaver|r.
    .turnin 39691 >>Turn in The Call of War
    .accept 44471 >>Accept Second Sight
    .target Jace Darkweaver
step << Alliance
    >>|cRXP_WARN_Use Spectral Sight|r.
    .complete 44471,1 --1/1 Spectral Sight used
    .usespell 188501
step << Alliance
    .goto 84,84.39,33.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jace Darkweaver|r.
    .turnin 44471 >>Turn in Second Sight
    .accept 44463 >>Accept Demons Among Them
    .target Jace Darkweaver
step << Alliance
    .goto 84,85.90,31.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin Wrynn|r.
    .complete 44463,1 --1/1 Warn Anduin Wrynn
    .skipgossip
    .target Anduin Wrynn
step << Alliance
    >>Kill |cRXP_ENEMY_Demons|r.
    .complete 44463,2 --5/5 Demons slain
    --x .mob
step << Alliance
    .goto 84,85.75,31.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin Wrynn|r.
    .turnin 44463 >>Turn in Demons Among Them
    Anduin Wrynn
step << Alliance
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renato Gallina|r.
    .accept 332 >>Accept Wine Shop Advert
    .nodmf
    .isQuestTurnedIn 44463 --x DH Check
    .target Renato Gallina
step <<Alliance
    #completewith next
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartlett the Brave|r |cRXP_WARN_in Goldshire|r.
    .fp >>Get the Goldshire Flight Path
    .nodmf
    .isQuestTurnedIn 44463 --x DH Check
    .target Bartlett the Brave
step <<Alliance
    #veteran
    .goto 84,61.48,31.72,5,0
    .goto 84,60.1,32.22
    +The Darkmoon Faire event is now active, |cRXP_WARN_which guarantees you to gain an additional level for free and a temporary 10% experience boost|r. You'll need to purchase |cRXP_WARN_certain items from the auction house to take full advantage of this|r. If necessary,|cRXP_WARN_you can transfer gold from your other characters to make these purchases|r. However, if you find that you can't afford everything, |cRXP_WARN_It's still worthwhile to visit the Darkmoon Faire for the temporary experience buff and to buy only some of the items|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Auctioneer Lauffer|r.
    .collect 71715,1
    .collect 71638,1
    .collect 71637,1
    .collect 71636,1
    .collect 71635,1
    .collect 71952,1
    .collect 71951,1
    .collect 71953,1
    .collect 71716,1
    .target Auctioneer Lauffer
    .target Auctioneer Hesse
    .target Auctioneer Fitzgerald
    .dmf
    .isQuestTurnedIn 31450 --x dh check
step <<Alliance
    #fresh
    #completewith DarkMoonFaire
    +The Darkmoon Faire event is now active, |cRXP_WARN_which guarantees you to gain an additional level for free and a temporary 10% experience boost|r.
    .isQuestTurnedIn 31450 --x dh check
step <<Alliance
    #completewith next
    .link /run AbandonSkill(186); AbandonSkill(182);>> |cRXP_WARN_Click this text to receive a macro that will unlearn your professions|r.
    .dmf
    .isQuestTurnedIn 31450 --x dh check
step <<Alliance
    #label DarkMoonFaire
    .goto 84,80.46,37.71,10,0
    .goto 84,72.51,46.59,30,0
    .goto 84,70.27,46.83,10,0
    .goto 84,62.1,32.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage|r.
    .accept 7905 >>Accept The Darkmoon Faire
    .isQuestTurnedIn 40378 --x Demon Hunter Check
    .dmf
    .target Darkmoon Faire Mystic Mage
step <<Alliance
    .goto 84,62.25,72.96
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage|r.
    .skipgossip
    .zoneskip 37
    .dmf
    .isQuestTurnedIn 31450 --x dh check
    .target Darkmoon Faire Mystic Mage
step << Horde
    .goto 679,85.98,84.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Khadgar|r.
    .accept 39690 >>Accept Illidari, We Are Leaving
    .turnin 39690 >>Turn in Illidari, We Are Leaving
    .target Archmage Khadgar
step << Horde
    .goto 85,52.53,88.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Khadgar|r.
    .accept 40976 >>Accept Audience with the Warchief
    .target Archmage Khadgar
step << Horde
    .goto 85,50.0,76.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Saurfang|r.
    .complete 40976,1 --1/1 Report to Saurfang
    .target Saurfang
step << Horde
    .goto 1,45.8,15.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Allari the Souleater|r.
    .turnin 40976 >>Turn in Audience with the Warchief
    .accept 40982 >>Accept Second Sight
    .target Allari the Souleater
step << Horde
    .goto 1,45.8,15.1
    >>|cRXP_WARN_Use Spectral Sight|r.
    .complete 40982,1 --1/1 Spectral Sight used
    .usespell 188501
step << Horde
    .goto 1,45.8,15.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Allari the Souleater|r.
    .turnin 40982 >>Turn in Second Sight
    .accept 40983 >>Accept Demons Among Them
    .target Allari the Souleater
step << Horde
    .goto 1,45.7,15.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r.
    .complete 40983,1 --1/1 Warn Warchief Sylvanas
    .target Lady Sylvanas Windrunner
step << Horde
    .goto 1,45.80,14.77,15,0
    .goto 1,46.67,14.75,15,0
    .goto 1,46.94,16.50,15,0
    .goto 1,46.41,17.88,15,0
    .goto 1,45.60,16.47,15,0
    .goto 1,46.19,15.65
    >>Kill |cRXP_ENEMY_Demons|r.
    .complete 40983,2 --12/12 Demons slain
    --x .mob
step << Horde
    .goto 1,45.68,15.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r.
    .turnin 40983 >>Turn in Demons Among Them
    .accept 41002 >>Accept A Weapon for the Horde
    .target Lady Sylvanas Windrunner
]])

--Dracthyr The Forbidden Reach
RXPGuides.RegisterGuide([[
#retail
#version 2
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(1-80)|r Default
#name a) Dracthyr Intro
#displayname |cFF00CCFF1|r - The Forbidden Reach
#next << Alliance
#next << Horde

<< Dracthyr


step << !Evoker
    .goto 2373,42.99,89.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Emberthal|r
    .turnin 84423 >>Turn in Shaking the Dust Off
    .accept 84424 >>Accept Forward, To Adventure!
    .target Scalecommander Emberthal
step << !Evoker
    .goto 2373,43.81,81.09
    >>Jump down |cRXP_WARN_(press Space to stop your fall)|r. Click on the |cRXP_PICK_Portal to Orgrimmar|r << Horde
    >>Jump down |cRXP_WARN_(press Space to stop your fall)|r. Click on the |cRXP_PICK_Portal to Stormwind|r << Alliance
    .complete 84424,3 << Horde --1/1 Use the Portal to Orgrimmar
    .complete 84424,3 << Alliance--1/1 Use the Portal to Stormwind
step << !Evoker Horde
    .goto 85,40.82,80.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r
    .turnin 84424 >>Turn in Forward, To Adventure!
    .target Chromie
step << !Evoker Alliance
    .goto 84,56.26,17.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r
    .turnin 84424 >>Turn in Forward, To Adventure!
    .target Chromie
step << Evoker
    .goto 2109,46.73,78.71
    .accept 64864 >>Auto Accept Awaken, Dracthyr
step << Evoker
    #completewith DrakthyrIntroduction
    +Welcome to the Drakthyr Guide of RestedXP.
step << Evoker
    #label DrakthyrIntroduction
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with |cRXP_FRIENDLY_Kodethi|r or |cRXP_FRIENDLY_Dervishian|r in front of you. Wait for your Disintegrate to complete.
    .goto 2109,47.50,84.52,-1
    .goto 2109,46.28,79.52,-1
    .goto 2109,42.91,77.49,-1
    .goto 2109,39.59,79.71,-1
    .goto 2109,38.20,84.72,-1
    .goto 2109,43.03,91.77,-1
    .goto 2109,46.34,89.49,-1
    .complete 64864,1 --1/1 Dracthyr ally awakened
    .target Kodethi
    .target Dervishian
step << Evoker
    #completewith TheForbiddenReachAwakenDracthyr
    +|cRXP_WARN_Spamming Space while moving is faster than moving normally|r.
step << Evoker
    >>Jump down and interact with |cRXP_FRIENDLY_Tethalash|r. Wait for your Disintegrate to complete.
    .goto 2109,44.36,85.54
    .complete 64864,3 --1/1 Tethalash awakened
    .target Tethalash
step << Evoker
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_bones|r on the bed.
    .goto 2109,47.95,79.94
    .complete 64864,2 --1/1 Kethahn found
step << Evoker
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with |cRXP_FRIENDLY_Azurathel|r. Wait for your Disintegrate to complete.
    .goto 2109,46.83,81.83,5,0
    .goto 2109,39.18,82.11,5,0
    .goto 2109,34.26,81.08,5,0
    .goto 2109,32.15,82.73
    .complete 64864,4 --1/1 Azurathel awakened
    .target Azurathel
step << Evoker
    #label TheForbiddenReachAwakenDracthyr
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Azurathel|r and |cRXP_FRIENDLY_Dervishian|r after a short roleplay
    .turnin 64864 >>Turn in Awaken, Dracthyr
    .accept 64865 >>Accept Gear Up
    .goto 2109,32.92,81.57
    .accept 64863 >>Accept Arcane Guardians
    .goto 2109,33.08,80.67
    .target Scalecommander Azurathel
    .target Dervishian
step << Evoker
    #completewith next
    .goto 2109,35.81,73.85
    .cast 6478 >>Pick up the |cRXP_PICK_Crystal Key|r and place it into the Crystal Focus next to it
step << Evoker
    .goto 2109,38.29,74.52
    .turnin 66010 >>Pick up the |cRXP_PICK_Mysterious Wand|r on the table.
step << Evoker
    #sticky
    #label TheForbiddenReachArcaneGuardians
    >>Focus |cRXP_ENEMY_Ancient Constructs|r. Run away when they hit 40% (they splinter and spawn two small adds).
    .complete 64863,1 --4/4 Guardians or Constructs slain
    .mob Ancient Guardian
    .mob Ancient Construct
step << Evoker
    >>Pick up the |cRXP_PICK_Stack of Weapons|r.
    .goto 2109,38.05,65.56,6,0
    .goto 2109,43.27,63.85,6,0
    .goto 2109,45.04,66.23
    .complete 64865,1 --1/1 Stack of Weapons
step << Evoker
    >>Pick up the |cRXP_PICK_Rations|r.
    .goto 2109,43.54,63.77,6,0
    .goto 2109,43.54,63.77,6,0
    .goto 2109,34.25,61.10
    .complete 64865,3 --1/1 Bundle of Rations collected
step << Evoker
    >>Pick up the |cRXP_PICK_Crate|r.
    .goto 2109,36.45,61.32,6,0
    .goto 2109,39.54,54.9,6,0
    .goto 2109,38.78,51.35
    .complete 64865,2 --1/1 Crate of Warscales
step << Evoker
    #requires TheForbiddenReachArcaneGuardians
    #completewith next
    +You can skip the next cutscene (Esc -> Yes)
step << Evoker
    #requires TheForbiddenReachArcaneGuardians
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dervishian|r and |cRXP_FRIENDLY_Scalecommander Azurathel|r.
    .goto 2109,39.75,54.98,6,0
    .goto 2109,43.89,59.14,6,0
    .turnin 64863 >>Turn in Arcane Guardians
    .goto 2109,45.82,58.56
    .turnin 64865 >>Turn in Gear Up
    .accept 64866 >>Accept Into the Cauldron
    .goto 2109,46.45,57.07
    .target Dervishian
    .target Scalecommander Azurathel
step << Evoker
    #completewith next
    +Check your Bags for new Equipment
step << Evoker
    >>Use |T4622464:0|t[Living Flame] to heal injured Drakthyr's in the area
    .goto 2109,55.54,45.41,15,0
    .goto 2109,53.46,39.05,25,0
    .goto 2109,59.21,50.57,25,0
    .goto 2109,62.73,50.29,25,0
    .goto 2109,64.09,43.09,25,0
    .goto 2109,58.3,41.21
    .complete 64866,1 --1/1 Glide into the Earth-Warder's Cauldron
    .complete 64866,2 --5/5 Dracthyr rescued or healed with Living Flame
step << Evoker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Azurathel|r and |cRXP_FRIENDLY_Scalecommander Cindrethresh|r.
    .turnin 64866 >>Turn in Into the Cauldron
    .goto 2109,61.98,36.25
    .accept 64871 >>Accept The Dragon at the Door
    .goto 2109,62.34,36.41
    .target Scalecommander Azurathel
    .target Scalecommander Cindrethresh
step << Evoker
    #completewith next
    +Check your Bags for new Equipment
step << Evoker
    >>Make sure to complete 'Exit reached' before killing the dragon
    .goto 2109,66.4,10.69
    .complete 64871,1 --Exit reached
step << Evoker
    >>Kill |cRXP_ENEMY_Lapisagos|r. The small elementals give you a damage buff on death.
    .goto 2109,66.4,10.69
    .complete 64871,2 --1/1 Lapisagos slain
    .mob Lapisagos
step << Evoker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Cindrethresh|r and |cRXP_FRIENDLY_Scalecommander Azurathel|r.
    >>|cRXP_WARN_Cancel the "Chocking Buff" to increase movement speed|r.
    .turnin 64871 >>Turn in The Dragon at the Door
    .accept 64872 >>Accept The Fire Within
    .goto 2118,44.39,61.51
    .accept 65615 >>Accept Arcane Intrusion
    .goto 2118,44.10,61.38
    .target Scalecommander Cindrethresh
    .target Scalecommander Azurathel
step << Evoker
    #completewith TheForbiddenReachTheFireWithin3
    +Check your bags for new equipment
step << Evoker
    #completewith TheForbiddenReachTheFireWithin
    +|cRXP_WARN_You can |TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Fire Breath Infusers|r to reset your Fire Breath cooldown|r.
step << Evoker
    #label TheForbiddenReachTheFireWithin3
    >>Cast |T4622458:0|t[Fire Breath] and hold it until you reach the last empowerement section
    .goto 2118,43.78,61.29
    .complete 64872,3 --Cast an Empowered III Fire Breath
step << Evoker
    >>Cast |T4622458:0|t[Fire Breath] and hold it until you reach the |cRXP_WARN_second|r empowerement section.
    .goto 2118,43.78,61.29
    .complete 64872,2 --Cast an Empowered II Fire Breath
step << Evoker
    #completewith next
    +You can skip the next cutscene (Esc -> Yes)
step << Evoker
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Beacon|r.
    .goto 2118,45.42,53.71
    .complete 65615,1 --1/1 Beacon investigated
step << Evoker
    #label TheForbiddenReachTheFireWithin
    >>Cast |T4622458:0|t[Fire Breath] (don't hold down the button)
    .goto 2118,44.41,57.63
    .complete 64872,1 --Cast an Empowered I Fire Breath
step << Evoker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Cindrethresh|r and |cRXP_FRIENDLY_Scalecommander Azurathel|r.
    .turnin 64872 >>Turn in The Fire Within
    .goto 2118,44.40,61.50
    .turnin 65615 >>Turn in Arcane Intrusion
    .goto 2118,44.09,61.36
    .target Scalecommander Cindrethresh
    .target Azurathel
step << Evoker
    #completewith next
    #sticky
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fusethrian|r.
	.target Fusethrian
    .goto 2118,43.42,60.80
    .home >>Set your Hearthstone to The Old Weyrn Grounds
step << Evoker
    .goto 2118,44.54,61.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Emberthal|r.
	.target Scalecommander Emberthal
    .accept 64873 >>Accept Stretch Your Wings
step << Evoker
    #completewith next
    +Check your Bags for new Equipment
step << Evoker
    >>Use the [ExtraActionButton] to teleport right infront of the NPC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dervishian|r.
	.target Dervishian
    .goto 2118,44.73,57.65
    .use 195044
    .complete 64873,1 --1/1 Learn about coasting
step << Evoker
    #completewith next
    +Check your Spellbook for |T4622485:0|t[Soar]
step << Evoker
    >>Use |T4622485:0|t[Soar]
    .complete 64873,2 --Cast Soar
step << Evoker
    >>Use the Soaring Abilties |T2103880:0|t[Surge Forward] (1) and |T2103876:0|t[Skyward Ascent] (2). |cRXP_WARN_Make sure to fly through the rings|r.
    .goto 2118,50.53,45.29
    .complete 64873,3 --5/5 Soared through rings
step << Evoker
    #completewith next
    .cast 369536 >>Cast Soar
step << Evoker
    .goto 2118,42.12,34.36
    .turnin 65909 >> Pick up the |cRXP_PICK_Bag of Enchanted Wind|r for a Movement Speed Buff
step << Evoker
    #completewith next
    +Use the [ExtraActionButton] to get back
step << Evoker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kodethi|r.
	.target Kodethi
    .use 195044
    .goto 2118,41.42,48.21
    .complete 64873,4 --1/1 Learn about diving
step << Evoker
    #completewith next
    .cast 369536 >> Cast Soar
step << Evoker
    >>Use the Soaring Abilties |T2103880:0|t[Surge Forward] (1) and |T2103876:0|t[Skyward Ascent] (2). |cRXP_WARN_Make sure to fly through the rings|r.
    .goto 2118,34.59,49.58
    .complete 64873,5 --5/5 Diving through rings
step << Evoker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dervishian|r.
	.target Dervishian
    .goto 2118,44.71,57.64
    .complete 64873,6 --1/1 Learn about Advanced Flying
step << Evoker
    #completewith next
    .cast 369536 >> Cast Soar
step << Evoker
    >>Use the Soaring Abilties |T2103880:0|t[Surge Forward] (1) and |T2103876:0|t[Skyward Ascent] (2). |cRXP_WARN_Make sure to fly through the rings|r.
    .goto 2118,52.78,35.59
    .complete 64873,7 --3/3 Soar through rings
step << Evoker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dervishian|r.
	.target Dervishian
    .goto 2118,44.71,57.63
    .turnin 64873 >>Turn in Stretch Your Wings
    .accept 65036 >>Accept Train Like We Fight
step << Evoker
    >>Use |T4622485:0|t[Soar]
    .complete 65036,1 --Practice Soar
step << Evoker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Emberthal|r.
	.target Scalecommander Emberthal
    .goto 2118,44.23,61.16
    .turnin 65036 >>Turn in Train Like We Fight
    .accept 65060 >>Accept Caldera of the Menders
step << Evoker
    #completewith next
    .cast 369536 >> Cast Soar and follow the arrow
step << Evoker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Cindrethresh|r.
	.target Scalecommander Cindrethresh
    .goto 2118,36.46,32.54
    .skipgossip 1
    .complete 65060,1 --1/1 Meet Cindrethresh at the Caldera of the Menders
step << Evoker
    #completewith next
    .cast 369536 >> Cast Soar and follow the arrow
step << Evoker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Cindrethresh|r.
    .goto 2118,18.81,15.82
    .turnin 65060 >>Turn in Caldera of the Menders
    .accept 65063 >>Accept Into the Hive
	.target Scalecommander Cindrethresh
step << Evoker
    >>|cRXP_WARN_DON'T FOLLOW HIM|r. Just follow the arrow to fill the progress bar by standing in the gas.
    .goto 2110,84.91,77.00
    .complete 65063,1 --1/1 Follow Cindrethresh
step << Evoker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Viridia|r and |cRXP_FRIENDLY_Scalecommander Cindrethresh|r.
    .turnin 65063 >>Turn in Into the Hive
    .accept 65073 >>Accept A Toxic Problem
    .goto 2118,20.08,19.08
    .accept 65074 >>Accept Easy Prey
    .goto 2118,20.22,19.00
	.target Scalecommander Viridia
	.target Scalecommander Cindrethresh
step << Evoker
    #completewith next
    +Check your Bags for new Equipment
step << Evoker
    #completewith next
    +Spamming Space is faster than walking normally
step << Evoker
    #completewith next
    >>Kill |cRXP_ENEMY_Scythid|r in the Area.
    .complete 65074,1 --4/4 Scythid slain
    .mob Scythid Steamstalker
    .mob Deatheater Scythid
step << Evoker
    >>Kill |cRXP_ENEMY_Scalerenders|r in the area. Loot them for the [|cRXP_LOOT_glands|r].
#loop
	.line 2118,24.77,30.11,26.89,32.41,28.52,30.33,30.39,29.45,33.84,29.78,36.97,24.44,30.60,20.52
	.goto 2118,24.77,30.11,20,0
	.goto 2118,26.89,32.41,20,0
	.goto 2118,28.52,30.33,20,0
	.goto 2118,30.39,29.45,20,0
	.goto 2118,33.84,29.78,20,0
	.goto 2118,36.97,24.44,20,0
	.goto 2118,30.60,20.52,20,0
    .complete 65073,1 --6/6 Toxin Glands collected
    .mob Mature Scalerender
    .mob Scalerender Beetle
    .mob Deatheater Scythid
step << Evoker
    >>Kill |cRXP_ENEMY_Scythid|r in the Area.
    .goto 2118,35.21,24.52,30,0
    .goto 2118,31.33,24.79,30,0
#loop
	.line 2118,24.77,30.11,26.89,32.41,28.52,30.33,30.39,29.45,33.84,29.78,36.97,24.44,30.60,20.52
	.goto 2118,24.77,30.11,20,0
	.goto 2118,26.89,32.41,20,0
	.goto 2118,28.52,30.33,20,0
	.goto 2118,30.39,29.45,20,0
	.goto 2118,33.84,29.78,20,0
	.goto 2118,36.97,24.44,20,0
	.goto 2118,30.60,20.52,20,0
    .complete 65074,1 --4/4 Scythid slain
    .mob Scythid Steamstalker
    .mob Deatheater Scythid
step << Evoker
    #completewith next
    .cooldown spell,369536,>0,1
    .cast 369536 >> Cast Soar and follow the arrow
step << Evoker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Cindrethresh|r and |cRXP_FRIENDLY_Scalecommander Viridia|r.
    .goto 2118,20.59,17.44,30,0
    .turnin 65074 >>Turn in Easy Prey
    .goto 2118,20.23,19.01
    .turnin 65073 >>Turn in A Toxic Problem
    .accept 65307 >>Accept Mercy First
    .goto 2118,20.07,19.08
	.target Scalecommander Cindrethresh
    .target Scalecommander Viridia
step << Evoker
    #completewith next
    +Check your Bags for new Equipment
    *Check your Spellbook for Emerald Blossom and Fury of the Aspect(if you are 60)
step << Evoker
    >>Use |T4622457:0:0|t[Emerald Blossom] on any |cRXP_FRIENDLY_Injured Drakonid|r. Interact with the |cRXP_PICK_Emerald Blossom Infuser|r to reset your cooldown
    *Alternatively use |T4622464:0:0|t[Living Flame]
    .complete 65307,3 --1/1 Atrenosh Hailstone healed
    .goto 2118,24.90,13.59
    .complete 65307,2 --4/4 Injured drakonid healed
    .goto 2118,24.90,13.59
    .target Injured Drakonid
step << Evoker
    >>Use |T4622457:0:0|t[Emerald Blossom] on any |cRXP_FRIENDLY_Injured Talon|r. Interact with the |cRXP_PICK_Emerald Blossom Infuser|r to reset your cooldown
    *Alternatively use |T4622464:0:0|t[Living Flame]
    .goto 2118,25.77,17.75,15,0
    .goto 2118,25.89,18.55,15,0
    .goto 2118,24.03,22.16,15,0
    .goto 2118,21.89,22.21
    .complete 65307,1 --10/10 Injured dracthyr healed
    .target Injured Talon
step << Evoker
    #requires Area3
    .goto 2118,21.76,18.36,15,0
    .goto 2118,20.61,17.41,15,0
    .goto 2118,20.06,19.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Viridia|r.
	.target Scalecommander Viridia
    .turnin 65307 >>Turn in Mercy First
    .accept 66324 >>Accept Never Forgotten
step << Evoker
    #completewith TheForbiddenReachNeverForgotten3
    +|cRXP_WARN_Use the [ExtraActionButton] almost on cooldown to reduce toxicity levels|r.
step << Evoker
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Report: Infestation|r on the Ground.
    .goto 2110,66.63,67.70
    .complete 66324,2 --1/1 Clues discovered
    .use 191729
step << Evoker
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tSearch |cRXP_FRIENDLY_Karinasa|r.
    .goto 2110,39.43,28.74
    .complete 66324,1,1 --3/3 Horn signets collected
    .use 191729
    .target Karinasa
step << Evoker
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tSearch |cRXP_FRIENDLY_Rethenash|r.
    .goto 2110,34.49,38.6
    .complete 66324,1,2 --3/3 Horn signets collected
    .use 191729
    .target Rethenash
step << Evoker
    #label TheForbiddenReachNeverForgotten3
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tSearch |cRXP_FRIENDLY_Tenezeth|r.
    .goto 2110,18.66,50.86
    .complete 66324,1,3 --3/3 Horn signets collected
    .use 191729
    .target Tenezeth
step << Evoker
    #completewith TheForbiddenReachNeverForgotten10
    +|cRXP_WARN_Only use the |cffffff00[ExtraActionButton]|r to stay at like 50-60%|r.
step << Evoker
    #completewith next
    .goto 2110,27.74,45.67
    .cast 6478 >>Pick up the |cRXP_PICK_Crystal Key|r on the ground.
step << Evoker
    #label TheForbiddenReachNeverForgotten10
    >>Place the Crystal Key in the |cRXP_PICK_Crystal Lock|r.
    .goto 2110,25.6,33.76
    .complete 66324,3 --10/10 Survivors Rescued
    .use 191729
step << Evoker
    #completewith next
    .goto 2110,32.46,40.74,10,0
    +|cRXP_WARN_Stop using the [ExtraActionButton]. Just let it happen!|r. Step into a Gascloud to generate more toxicity.
step << Evoker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Viridia|r.
	.target Scalecommander Viridia
    .goto 2118,20.07,19.08
    .turnin 66324 >>Turn in Never Forgotten
    .accept 65075 >>Accept The Healing Wings
step << Evoker
    #completewith next
    +Check your Bags for new Equipment
    *Check your Spellbook for Hover
step << Evoker
    >>Step into the Air Swirl to return to |cRXP_FRIENDLY_Scalecommander Emberthal|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Emberthal|r.
    .goto 2118,20.4,19.6,5,0
    .goto 2118,44.24,61.17
    .turnin 65075 >>Turn in The Healing Wings
    .accept 65045 >>Accept Stormsunder Crater
    .target Scalecommander Emberthal
step << Evoker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Treysh|r. Choose any mount of you like (Ctrl+|TInterface/cursor/crosshair/interact.blp:20|tClick for a preview)
    .goto 2118,45.31,61.34
    .turnin 72263 >>Turn in Cavalry Has its Place
step << Evoker
    #completewith TheForbiddenReachStormsunderCrater
    +|cRXP_WARN_Use the mount in your bags and drag a mount to your action bars|r.
step << Evoker
    #completewith next
    .cooldown spell,369536,>0,1
    .cast 369536 >>Cast Soar and follow the arrow
step << Evoker
    #label TheForbiddenReachStormsunderCrater
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Azurathel|r and |cRXP_FRIENDLY_Dervishian|r.
    .turnin 65045 >>Turn in Stormsunder Crater
    .accept 65049 >>Accept Tangle with the Tarasek
    .accept 65050 >>Accept Conjured Army
    .goto 2118,70.43,64.35
    .accept 65046 >>Accept The Primalists
    .goto 2118,70.36,64.61
    .target Scalecommander Azurathel
    .target Dervishian
step << Evoker
    #completewith TheForbiddenReachThePrimalists1
    +Reminder: You can mount up now
step << Evoker
    #sticky
    #label TheForbiddenReachConjuredArmy
    >>Kill |cRXP_ENEMY_Conjured Elementals|r.
    .goto 2118,76.04,66.83,0,0
    .complete 65050,1 --12/12 Conjured elementals slain
    .mob Conjured Stormling
step << Evoker
    #completewith next
    >>Kill |cRXP_ENEMY_Taraseks|r.
    .complete 65049,1 --7/7 Tarasek slain
    .mob Infused Tarasek
    .mob Tarasek Shockbringer
    .mob Tarasek Shockshaman
step << Evoker
    #label TheForbiddenReachThePrimalists1
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the floating |cRXP_PICK_stones|r.
    .goto 2118,71.87,60.20
    .complete 65046,1 --1/1 Primalist intentions discovered
step << Evoker
    #completewith TheForbiddenReachThePrimalists
    >>Kill |cRXP_ENEMY_Taraseks|r.
    .complete 65049,1 --7/7 Tarasek slain
    .mob Infused Tarasek
    .mob Tarasek Shockbringer
    .mob Tarasek Shockshaman
step << Evoker
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the floating |cRXP_PICK_stones|r.
    .goto 2118,71.93,54.52
    .complete 65046,3 --1/1 Primalist leaders discovered
step << Evoker
    #completewith next
    .cast 369536 >>Cast Soar and follow the arrow
step << Evoker
    #label TheForbiddenReachThePrimalists
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the floating |cRXP_PICK_stones|r.
    .goto 2118,78.25,66.47
    .complete 65046,2 --1/1 Primalist motivations discovered
step << Evoker
    >>Kill |cRXP_ENEMY_Taraseks|r.
    .goto 2118,77.71,68.82,30,0
    .goto 2118,74.28,68.59,30,0
    .goto 2118,73.49,65.82,20,0
    .goto 2118,70.78,60.33,30,0
    .goto 2118,74.91,56.79
    .complete 65049,1 --7/7 Tarasek slain
    .mob Infused Tarasek
    .mob Tarasek Shockbringer
    .mob Tarasek Shockshaman
step << Evoker
    #requires TheForbiddenReachConjuredArmy
    .goto 2118,79.42,62.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dervishian|r and |cRXP_FRIENDLY_Scalecommander Azurathel|r.
    .turnin 65046 >>Turn in The Primalists
    .turnin 65049 >>Turn in Tangle with the Tarasek
    .turnin 65050 >>Turn in Conjured Army
    .accept 65052 >>Accept The Ebon Scales
    .target Dervishian
    .target Scalecommander Azurathel
step << Evoker
    #completewith next
    +Check your Bag for new Equipment
    *Check your Spellbook for new Spells
step << Evoker
    #completewith next
    +You can skip the next cutscene (Esc -> Yes)
step << Evoker
    >>As soon as you can see the [ExtraActionButon], press it.
    .goto 2118,81.32,56.81
    .complete 65052,1 --1/1 Attack on Ekrazathal signaled
step << Evoker
    #completewith next
    +Check your Bag for new Equipment
step << Evoker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Sarkareth|r.
	.target Scalecommander Sarkareth
    .goto 2118,81.22,53.96
    .turnin 65052 >>Turn in The Ebon Scales
    .accept 65057 >>Accept Rally to Emberthal
step << Evoker
    #completewith next
    .hs >>Hearth to The Forbidden Reach
step << Evoker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Emberthal|r.
	.target Scalecommander Emberthal
    .goto 2118,44.22,61.17
    *You can skip the next cutscene (Esc -> Yes)
    .turnin 65057 >>Turn in Rally to Emberthal
step << Evoker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Emberthal|r.
	.target Scalecommander Emberthal
    .goto 2118,44.83,57.69
    .accept 65701 >>Accept Preservation or Devastation
step << Evoker
    >>Choose Devastation (DPS) or Preservation (Heal)
    .complete 65701,1 --1/1 Activate a Talent Spec
step << Evoker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Emberthal|r.
	.target Scalecommander Emberthal
    .goto 2118,44.83,57.69
    .turnin 65701 >>Turn in Preservation or Devastation
    .accept 65084 >>Accept The Froststone Vault
step << Evoker
    #completewith next
    +Check your Bags for new Equipment
    *Check your Spellbook for new spells
step << Evoker
    #completewith next
    .cast 369536 >>Cast Soar and follow the arrow
step << Evoker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Sarkareth|r.
	.target Scalecommander Sarkareth
    .goto 2118,56.72,28.18
    .turnin 65084 >>Turn in The Froststone Vault
    .accept 65087 >>Accept The Prize Inside
step << Evoker
    >>Use Emerald Blossom and Living Flame to heal NPCs and kill enemies
    *The best way is to find a |cRXP_FRIENDLY_Azuresworn Drakonid|r. with very low HP and heal him.
    .goto 2118,54.52,31.64
    .complete 65087,1 --Froststone Vault defended (100%)
step << Evoker
    #completewith next
    +You can skip the next cutscene (Esc -> Yes)
step << Evoker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Sarkareth|r.
	.target Scalecommander Sarkareth
    .goto 2118,56.35,28.75
    .turnin 65087 >>Turn in The Prize Inside
step << Evoker
    .goto 2118,54.10,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Emberthal|r.
	.target Scalecommander Emberthal
    .accept 65097 >>Accept Run!
step << Evoker
    #completewith TheForbiddenReachFinalOrders
    +|cRXP_WARN_Reminder: Spamming Space is faster than walking normally|r.
step << Evoker
    >>Immediately start running and get to |cRXP_FRIENDLY_Wrathion|r.
    .goto 2118,47.02,35.52
    .complete 65097,1 --1/1 Outrun the Avatar of the Storm
step << Evoker
    >>Get to |cRXP_FRIENDLY_Wrathion|r.
    .goto 2118,47.75,34.69
    .complete 65097,2 --Wrathion found
step << Evoker
    >>Heal |cRXP_FRIENDLY_Wrathion|r with Living Flame and Emerald Blossom.
    .goto 2118,47.09,35.38
    .complete 65097,3 --1/1 Wrathion healed
    .target Wrathion
step << Evoker
    .goto 2118,47.04,35.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wrathion|r.
	.target Wrathion
    .turnin 65097 >>Turn in Run!
    .accept 65098 >>Accept The Consequence of Courage
step << Evoker
    >>Avoid pulling mobs. Follow the arrow
    .goto 2118,45.96,40.26
    .complete 65098,1 --1/1 Ebyssian found
step << Evoker
    >>Heal |cRXP_FRIENDLY_Ebyssian|r above 90% HP with Living Flame and Emerald Blossom.
    .goto 2118,43.22,38.26
    .complete 65098,2 --1/1 Ebyssian healed
    .target Ebyssian
step << Evoker
    .goto 2118,41.68,44.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Emberthal|r.
	.target Scalecommander Emberthal
    .turnin 65098 >>Turn in The Consequence of Courage
    .accept 65100 >>Accept Final Orders
step << Evoker
    #completewith next
    +Check your Bags for new Equipment
step << Evoker
    >>Follow the arrow
    .goto 2118,41.79,53.44
    .complete 65100,1 --1/1 Reach the Old Weyrn Grounds
step << Evoker
    #completewith next
    +You can skip the next cutscene (Esc -> Yes)
step << Evoker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nozdormu|r.
    .goto 2118,42.98,59.63,25,0
    .goto 2118,43.57,59.68
    .complete 65100,2 --1/1 Speak with Nozdormu
    .target Nozdormu
step << Evoker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viridia|r.
	.target Viridia
    .goto 2118,43.47,54.15
    .skipgossip 1
    .complete 65100,4 --1/1 Viridia spoken to
step << Evoker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sarkareth|r.
	.target Sarkareth
    .goto 2118,47.06,55.88
    .skipgossip 1
    .complete 65100,3 --1/1 Sarkareth spoken to
step << Evoker
    #completewith next
    +You can skip the next cutscene (Esc -> Yes)
step << Evoker
    --x .goto 2118,44.65,55.16 --x maybe talent choice based?
    #label TheForbiddenReachFinalOrders
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Azurathel|r.
	.target Scalecommander Azurathel
    .goto 2118,44.64,55.16
    .turnin 65100 >>Turn in Final Orders
step << Alliance Evoker
    #completewith next
    +Check your Bags for new Equipment
step << Alliance Evoker
    .goto 37,32.26,49.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wrathion|r.
	.target Wrathion
    .accept 65286 >>Accept Draconic Connections
step << Alliance Evoker
    .goto 37,32.26,49.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Azurathel|r.
	.target Scalecommander Azurathel
    .turnin 65286 >>Turn in Draconic Connections
    .accept 66513 >>Accept Ground Leave
step << Alliance Evoker
    >>Follow the Waypoint
    .goto 84,62.63,77.65
    .complete 66513,2 --Visit the Bank
step << Alliance Evoker
    >>Follow the Waypoint
    .goto 84,61.60,72.29
    .complete 66513,1 --Visit the Auction House
step << Alliance Evoker
    >>Follow the Waypoint
    .goto 84,49.05,87.11
    .complete 66513,4 --Visit the Portal Room
step << Alliance Evoker
    >>Follow the Waypoint
    .goto 84,52.39,13.83
    .complete 66513,3 --Visit the Embassy
step << Alliance Evoker
    .goto 84,79.93,26.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Azurathel|r.
	.target Scalecommander Azurathel
    .turnin 66513 >>Turn in Ground Leave
step << Alliance Evoker
    .goto 84,79.84,27.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wrathion|r.
	.target Wrathion
    .accept 66577 >>Accept Aspectral Invitation
    .turnin 66577 >>Turn in Aspectral Invitation
    .accept 65101 >>Accept An Iconic, Draconic Look
step << Alliance Evoker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wrathion|r.
	.target Wrathion
    .complete 65101,1 --1/1 Speak to Wrathion
step << Alliance Evoker
    >>Follow Wrathion and Use the ExtraActionButon as soon as you can
    .goto 84,82.61,23.94
    .complete 65101,2 --1/1 Learn about visage form
    .complete 65101,3 --1/1 Assume your mortal visage
step << Alliance Evoker
    .goto 84,82.58,23.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wrathion|r.
	.target Wrathion
    .turnin 65101 >>Turn in An Iconic, Draconic Look
step << Horde Evoker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritwalker Ebonhorn|r and |cRXP_FRIENDLY_Scalecommander Cindrethresh|r.
    .accept 66237 >>Accept Spiritual Allies
    .goto 1,45.62,12.89
    .turnin 66237 >>Turn in Spiritual Allies
    .accept 66534 >>Accept Ground Leave
    .goto 1,45.56,12.95
    .target Spiritwalker Ebonhorn
    .target Scalecommander Cindrethresh
step << Horde Evoker
    #completewith next
    +|cRXP_WARN_Reminder: You can mount up again!|r.
step << Horde Evoker
    >>Follow the arrow
    .complete 66534,4 --Visit the Portal Room
    .goto 85,55.77,90.01
    .complete 66534,2 --Visit the Bank
    .goto 85,48.97,82.67
    .complete 66534,1 --Visit the Auction House
    .goto 85,53.45,74.25
    .complete 66534,3 --Visit the Embassy
    .goto 85,38.26,80.72
step << Horde Evoker
    #completewith DracthyrHordeTrainRiding
    .cooldown spell,369536,>20,1
    .cast 369536 >>Cast Soar and follow the arrow
step << Horde Evoker
    #completewith DracthyrHordeTrainRiding
    .noflyable 85
    .cooldown spell,369536,<1,1
    .goto 85,43.70,67.46,5 >>Take the elevator
step << Horde Evoker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Cindrethresh|r.
	.target Scalecommander Cindrethresh
    .goto 85,44.02,38.23
    .turnin 66534 >>Turn in Ground Leave
step << Horde Evoker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ebyssian|r.
	.target Ebyssian
    .goto 85,44.06,37.93
    .accept 65437 >>Accept Aspectral Invitation
step << Horde Evoker
    #completewith next
    +You can skip the next cutscene (Esc -> Yes)
step << Horde Evoker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ebyssian|r.
	.target Ebyssian
    .goto 85,44.06,37.93
    .skipgossip 190239,1
    .complete 65437,1 --1/1 Speak with Ebyssian
step << Horde Evoker
    .goto 85,44.07,37.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ebyssian|r.
	.target Ebyssian
    .turnin 65437 >>Turn in Aspectral Invitation
    .accept 65613 >>Accept An Iconic, Draconic Look
step << Horde Evoker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ebyssian|r.
	.target Ebyssian
    .goto 85,44.07,37.96
    .skipgossip 190239,1
    .complete 65613,1 --1/1 Ask Ebyssian about Visage Form
step << Horde Evoker
    >>Wait for |cRXP_FRIENDLY_Ebyssian|r to finish his story.
    .goto 85,44.06,37.96
    .complete 65613,2 --1/1 Learn about Visage Form
step << Horde Evoker
    >>Use the [ExtraActionButon]
    .goto 85,44.06,37.96
    .complete 65613,3 --1/1 Adopt a Visage Form
step << Horde Evoker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ebyssian|r.
	.target Ebyssian
    .goto 85,44.09,37.98
    .turnin 65613 >>Turn in An Iconic, Draconic Look
]])

--Earthen Hall of Awakening
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(1-80)|r Default
#name a) EarthenDwarf Intro
#displayname |cFF00CCFF1|r - Hall of Awakening
#next <<Alliance
#next <<Horde


<< EarthenDwarf


step
    .goto 2322,89.47,48.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dawn|r.
    .accept 79200 >>Accept Who am I?
    .target Dawn
step
    .goto 2322,87.04,49.47
    >>Step on the scanner and |TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Diagnostics Scan|r.
    .complete 79200,1 --1/1 Diagnostics Scan completed
    .target Diagnostics Scanner
step
    .goto 2322,83.70,60.93
    >>Step on the scanner and |TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Cognitive Scan|r.
    .complete 79200,2 --1/1 Cognitive Scan completed
    .target Cognitive Scan
step
    .goto 2322,83.77,37.91
    >>Step on the scanner and |TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Anomaly Scan|r.
    .complete 79200,3 --1/1 Anomaly Scan completed
    .target Anomaly Scan
step
    .goto 2322,83.77,37.91
    >>|cRXP_WARN_Use the|r. [ExtraActionButton] when it appears.
    .complete 79200,4 --1/1 Containment Protocol disrupted
step
    .goto 2322,77.74,47.98,10,0
    .goto 2322,75.05,47.28,10,0
    .goto 2322,73.42,44.47,10,0
    .goto 2322,67.84,48.14,10,0
    .goto 2322,62.64,49.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dawn|r.
    .turnin 79200 >>Turn in Who am I?
    .target Dawn
step
    .goto 2322,62.61,49.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Uzjax|r.
    .accept 79201 >>Accept The Analysis Interface
    .target Foreman Uzjax
step
    .goto 2322,61.40,47.07
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Primary Interface|r.
    .complete 79201,1 --1/1 Primary analysis completed
    .skipgossip 224809,1,1,1
    .target Primary Interface
step
    .goto 2322,61.40,51.92
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Secondary Interface|r.
    .complete 79201,2 --1/1 Secondary analysis completed
    .skipgossip 224797,1,1,1
    .target Secondary Interface
step
    .goto 2322,57.37,49.55
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Tertiary Interface|r.
    .complete 79201,3 --1/1 Tertiary analysis completed
    .skipgossip 224810,1,1,1
    .target Tertiary Interface
step
    .goto 2322,48.29,51.51,10,0
    .goto 2322,47.77,54.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dawn|r.
    .turnin 79201 >>Turn in The Analysis Interface
    .target Dawn
    .accept 79202 >>Accept Rock Beats Rock
step
    #loop
    .goto 2322,46.06,57.69,10,0
    .goto 2322,42.75,59.04,10,0
    .goto 2322,41.89,55.26,10,0
    .goto 2322,40.86,53.62,10,0
    .goto 2322,42.87,51.96,10,0
    .goto 2322,45.57,52.53,10,0
    .goto 2322,45.94,49.31,10,0
    .goto 2322,47.17,48.85,10,0
    .goto 2322,48.34,46.44,10,0
    .goto 2322,47.55,43.92,10,0
    .goto 2322,45.94,41.24,10,0
    .goto 2322,42.74,39.91,10,0
    .goto 2322,41.86,42.16,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Awakened Stormhands|r and |cRXP_FRIENDLY_Awakened Machinist|r and defeat them.
    *|cRXP_WARN_only speak to one at a time|r.
    .complete 79202,1 --6/6 Earthen defeated in combat
    .mob Awakened Stormhand
    .mob Awakened Machinist
    .target Awakened Machinist
    .target Awakened Stormhand
    .skipgossip
step
    .goto 2322,36.05,49.9,10,0
    .goto 2322,30.75,48.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dawn|r.
    .turnin 79202 >>Turn in Rock Beats Rock
    .target Dawn
step
    .goto 2322,30.95,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Speaker Kuldas|r.
    .accept 79203 >>Accept Authorization: Negated
    .timer 6,RP
    .target Speaker Kuldas
step
    .goto 2322,25.91,49.65
    >>Kill |cRXP_ENEMY_Phalanx of Authorization|r.
    .complete 79203,1 --1/1 Phalanx of Authorization slain
    .timer 22,RP
    .mob Phalanx of Authorization
step
    .goto 2322,16.33,48.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Speaker Kuldas|r.
    .turnin 79203 >>Turn in Authorization: Negated
    .target Speaker Kuldas
    .accept 79204 >>Accept Whoever You Want to Be
step
    .goto 2322,8.62,49.68
    #title |cFFFCDC00Follow the Arrow|r.
    .complete 79204,1 --1/1 Meet Dawn in the Awakening Vestibule
step
    .goto 2322,8.63,49.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dawn|r.
    .turnin 79204 >>Turn in Whoever You Want to Be
    .target Dawn
    .accept 81886 >>Accept For the Alliance << Alliance
    .accept 81888 >>Accept For the Horde << Horde
step << Alliance
    #completewith next
    .goto 2322,7.3,46.27
    .zone 84 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r.
step << Alliance
    .goto 84,53.03,15.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Moorgard|r.
    .turnin 81886 >>Turn in For the Alliance
    .target Ambassador Moorgard
    .accept 81887 >>Accept Stranger in a Strange Land
step << Alliance
    .goto 84,56.24,17.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r.
    .complete 81887,1 --1/1 Talk to Chromie
    .skipgossip
    .target Chromie
step << Alliance
    .goto 84,56.19,17.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adhelda|r.
    .turnin 81887 >>Turn in Stranger in a Strange Land
    .target Adhelda
step << Horde
    #completewith next
    .goto 2322,7.16,52.62
    .zone 85 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r.
step << Horde
    .goto 85,39.40,79.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Blackguard|r.
    .turnin 81888 >>Turn in For the Horde
    .target Ambassador Blackguard
    .accept 81889 >>Accept Stranger in a Strange Land
step << Horde
    .goto 85,40.82,80.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r.
    .complete 81889,1 --1/1 Talk to Chromie
    .skipgossip 167032,1
    .target Chromie
step << Horde
    .goto 85,40.77,80.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brunhold|r.
    .turnin 81889 >>Turn in Stranger in a Strange Land
    .target Brunhold
]])

--Pandaren The Wandering Isle
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(1-80)|r Default
#name b) Pandaren Intro
#displayname |cFF00CCFF1|r - The Wandering Isle
#next << Alliance
#next << Horde


<< Pandaren !DK

step
    #completewith next
    +Welcome to the |cRXP_WARN_Pandaren Starting Zone|r. Guide by RestedXP.
    *Without consumables or heirlooms, this route is approximately 5 minutes slower than Exile's Reach. For faster leveling, consider recreating your character and selecting Exile's Reach instead.
step
    .goto 378,56.67,18.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r.
    .accept 30034 >>Accept The Lesson of the Iron Bough << Hunter
    .accept 30027 >>Accept The Lesson of the Iron Bough << Priest/Monk
    .accept 30033 >>Accept The Lesson of the Iron Bough << Mage
    .accept 30037 >>Accept The Lesson of the Iron Bough << Shaman
    .accept 30038 >>Accept The Lesson of the Iron Bough << Warrior
    .accept 30036 >>Accept The Lesson of the Iron Bough << Rogue
	.target Master Shang Xi
step << Hunter
    .isOnQuest 30034
    .goto 378,57.22,19.22
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Weapon Rack|r for the |T537025:0|t[Trainee's Crossbow].
    .collect 73211,1 --Trainee's Crossbow (1)
step << Hunter
    .goto 378,57.22,19.22
    >>Equip the |T537025:0|t[Trainee's Crossbow].
    .complete 30034,1 --1/1 Loot and Equip a Trainee's Crossbow
    .use 73211 --Trainee's Crossbow
step << Mage
    .isOnQuest 30033
    .goto 378,57.22,19.22
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Weapon Rack|r for the |T537771:0|t[Trainee's Spellblade] and |T654237:0|t[Trainee's Hand Fan].
    .collect 76390,1 --Trainee's Spellblade (1)
    .collect 76392,1, --Trainee's Hand Fan (1)
step << Mage
    .goto 378,57.22,19.22
    >>Equip the |T537771:0|t[Trainee's Spellblade] and |T654237:0|t[Trainee's Hand Fan].
    .complete 30033,1 --Loot and Equip a Trainee's Spellblade (1)
    .complete 30033,2 --Loot and Equip a Trainee's Hand Fan (1)
    .use 76390 --Trainee's Spellblade
    .use 76392 --Trainee's Hand Fan
step << Monk/Priest
    .isOnQuest 30027
    .goto 378,57.22,19.22
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Weapon Rack|r for the |T537770:0|t[Trainee's Staff].
    .collect 73209,1 -Trainee's Staff (1)
step << Monk/Priest
    .goto 378,56.67,18.20
    >>Equip the |T537770:0|t[Trainee's Staff].
    .complete 30027,1 --Loot and Equip a Trainee's Staff
    .use 73209
step << Shaman
    .isOnQuest 30037
    .goto 378,57.22,19.22
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Weapon Rack|r for the |T537205:0|t[Trainee's Axe] and |T537769:0|t[Trainee's Shield].
    .collect 76391,1  --Trainee's Axe (1)
    .collect 73213,1 --Trainee's Shield (1)
step << Shaman
    .goto 378,57.22,19.22
    >>Equip the |T537205:0|t[Trainee's Axe] and |T537769:0|t[Trainee's Shield].
    .complete 30037,1 --Loot and Equip a Trainee's Axe
    .complete 30037,2 --Loot and Equip a Trainee's Shield
    .use 76391 --Trainee's Axe
    .use 73213 --Trainee's Shield
step << Warrior
    .isOnQuest 30038
    .goto 378,57.22,19.22
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Weapon Rack|r for the |T537205:0|t[Trainee's Axe] and |T537769:0|t[Trainee's Shield].
    .collect 76391,1  --Trainee's Axe (1)
    .collect 73213,1  --Trainee's Shield (1)
step << Warrior
    .isOnQuest 30038
    .goto 378,57.22,19.22
    >>Equip the |T537205:0|t[Trainee's Axe] and |T537769:0|t[Trainee's Shield].
    .complete 30038,1 --Loot and Equip a Trainee's Axe
    .complete 30038,2 --Loot and Equip a Trainee's Shield
    .use 76391 --Trainee's Axe
    .use 73213 --Trainee's Shield
step << Rogue
    .isOnQuest 30036
    .goto 378,57.22,19.22
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Weapon Rack|r for the |T537767:0|t[Trainee's Daggers].
    .collect 73208,1,30036,1,1 --Trainee's Dagger (ID 1)
    .collect 73212,1,30036,1,1 --Trainee's Dagger (ID 2)
step << Rogue
    .goto 378,57.22,19.22
    >>Equip the |T537767:0|t[Trainee's Daggers].
    .complete 30036,1 --Loot and Equip a Trainee's Dagger
    .complete 30036,2 --Loot and Equip a Second Trainee's Dagger
    .use 73208 --Trainee's Dagger (ID 1)
    .use 73212 --Trainee's Dagger (ID 2)
step
    .goto 378,56.67,18.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r.
    .turnin 30034 >>Turn in The Lesson of the Iron Bough << Hunter
    .turnin 30033 >>Turn in The Lesson of the Iron Bough << Mage
    .turnin 30027 >>Turn in The Lesson of the Iron Bough << Priest/Monk
    .turnin 30037 >>Turn in The Lesson of the Iron Bough << Shaman
    .turnin 30038 >>Turn in The Lesson of the Iron Bough << Warrior
    .turnin 30036 >>Turn in The Lesson of the Iron Bough << Rogue
    .accept 29406 >>Accept The Lesson of the Sandy Fist
	.target Master Shang Xi
step
    .goto 378,57.49,18.64,10,0
    .goto 378,57.12,19.43,10,0
    .goto 378,57.49,18.64,10,0
    .goto 378,57.12,19.43,10,0
    .goto 378,57.31,18.97
    >>Kill |cRXP_ENEMY_Training Targets|r.
    .complete 29406,1 --5/5 Training Targets destroyed
	.mob Training Target
step
    .goto 378,56.67,18.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r.
    .turnin 29406 >>Turn in The Lesson of the Sandy Fist
    .accept 29524 >>Accept The Lesson of Stifled Pride
	.target Master Shang Xi
step
    .goto 378,59.53,19.03,15,0
    .goto 378,60.30,19.00,10,0
    .goto 378,60.13,19.77,10,0
    .goto 378,60.44,19.47
    >>Go inside the |cRXP_WARN_building|r and defeat |cRXP_ENEMY_Sparring Trainees|r.
    .complete 29524,1 --6/6 Sparring Trainees defeated
	.mob Tushui Trainee
	.mob Huojin Trainee
step
    .goto 378,59.67,19.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r.
    .turnin 29524 >>Turn in The Lesson of Stifled Pride
    .accept 29408 >>Accept The Lesson of the Burning Scroll
	.target Master Shang Xi
step
    .isOnQuest 29408
    .goto 378,59.97,18.58,8,0
    .goto 378,60.48,18.85,5,0
    .goto 378,60.20,18.89,5,0
    .goto 378,59.98,18.69,5,0
	.goto 378,60.46,19.60,8 >>|cRXP_WARN_Take the shortcut to the top floor by jumping through the gap under the second set of stairs|r.
step
    .goto 378,59.95,20.39
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Banner|r to burn it.
    .complete 29408,2 --1/1 Burn the Edict of Temperance
step
	#completewith next
    .goto 378,60.19,19.35,6 >> |cRXP_WARN_Jump downstairs|r.
step
    .goto 378,59.67,19.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r.
    .turnin 29408 >>Turn in The Lesson of the Burning Scroll
    .accept 29409 >>Accept The Disciple's Challenge
	.target Master Shang Xi
step
    .goto 378,67.78,22.75
    >>Defeat |cRXP_ENEMY_Jaomin|r.
    .complete 29409,1 --1/1 Defeat Jaomin Ro
	.mob Jaomin Ro
step << Warrior
	#completewith Lorvo
    +Use |T132337:0|tCharge on critters to move faster
step
    .goto 378,65.97,22.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r.
    .turnin 29409 >>Turn in The Disciple's Challenge
    .accept 29410 >>Accept Aysa of the Tushui
	.target Master Shang Xi
step
	#label Lorvo
    .goto 378,55.09,32.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merchant Lorvo|r.
    .turnin 29410 >>Turn in Aysa of the Tushui
    .accept 29419 >>Accept The Missing Driver
    .accept 29424 >>Accept Items of Utmost Importance
	.target Merchant Lorvo
step
    #completewith next
    >>Kill |cRXP_ENEMY_Amberleaf Scamps|r and loot them for their |T132622:0|t[|cRXP_LOOT_Supplies|r].
    .complete 29424,1 --6/6 Stolen Training Supplies
	.mob Amberleaf Scamp
step
    .goto 378,54.11,20.90
    >>|cRXP_WARN_Follow the Arrow|r.
    .complete 29419,1 --1/1 Rescue the Cart Driver
	.target Min Dimwind
step
    .goto 378,54.03,20.93,15,0
    .goto 378,54.02,17.44,15,0
    .goto 378,53.00,20.17,15,0
    .goto 378,54.03,20.93,15,0
    .goto 378,54.02,17.44
    >>Kill |cRXP_ENEMY_Amberleaf Scamps|r and loot them for their |T132622:0|t[|cRXP_LOOT_Supplies|r].
    .complete 29424,1 --6/6 Stolen Training Supplies
	.target Amberleaf Scamp
step
    .isOnQuest 29424
    .goto 378,54.03,20.93,15,0
    .goto 378,54.02,17.44,15,0
    .goto 378,53.00,20.17,15,0
    .goto 378,54.03,20.93
    >>|cRXP_WARN_1./sit increases your damage taken|r.
    >>|cRXP_WARN_2.Unequipping your gear increases your damage taken|r.
    .deathskip >> Die and respawn |cRXP_WARN_at the Spirit Healer|r.
	.target Spirit Healer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merchant Lorvo|r and |cRXP_FRIENDLY_Aysa Cloudsinger|r.
    .turnin 29419,2 >>Turn in The Missing Driver
    .turnin 29424 >>Turn in Items of Utmost Importance
    .goto 378,55.11,32.40
    .accept 29414 >>Accept The Way of the Tushui
    .goto 378,55.10,32.55
	.target Merchant Lorvo
	.target Aysa Cloudsinger
step << Hunter
    .isOnQuest 29414
    .goto 378,56.25,30.34,30,0
    .goto 378,57.97,30.62
    .tame 57797 >> |cRXP_WARN_Tame a Corsac Fox|r.
	.target Corsac Fox
step
	.isOnQuest 29414
    .goto 378,55.61,30.90,15,0 << !Hunter
    .goto 378,55.94,30.96,10,0
    .goto 378,56.58,31.98,10,0
    .goto 378,57.89,36.55,15 >> Enter the |cRXP_WARN_cave|r.
	.timer 87,Cave RP
step
    #sticky
    .goto 378,57.89,36.55,10,0
    >>Defend |cRXP_FRIENDLY_Aysa|r from the incoming |cRXP_ENEMY_Amberleaf Troublemakers|r.
    .complete 29414,1 --1/1 Protect Aysa while she meditates
	.mob Amberleaf Troublemaker
step
    #title Advanced
    .isOnQuest 29414
    >>|cFFFF0000Try out find out|r.
    .goto 378,57.52,34.59,5 >>|cRXP_WARN_Staying near the entrance is faster but more dangerous|r.
step
    .goto 378,57.54,34.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r.
    .turnin 29414 >>Turn in The Way of the Tushui
    .accept 29522 >>Accept Ji of the Huojin
	.target Master Shang Xi
step << Hunter
    .isOnQuest 29522
    .hs >> Hearth |cRXP_WARN_to the Shang Xi Training Grounds|r.
step
    .goto 378,50.24,21.26
    >>Go on the root of the tree and Disengage up onto the Wall to your left << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
    .turnin 29522 >>Turn in Ji of the Huojin
    .accept 29417 >>Accept The Way of the Huojin
	.target Ji Firepaw
step
    .goto 378,51.18,17.71,20,0
    .goto 378,49.56,18.31,20,0
    .goto 378,49.49,20.13,20,0
    .goto 378,48.27,22.97,20,0
    .goto 378,49.23,24.48,20,0
    .goto 378,49.90,23.37,20,0
    .goto 378,51.18,17.71,20,0
    .goto 378,49.56,18.31,20,0
    .goto 378,49.49,20.13,20,0
    .goto 378,48.27,22.97,20,0
    .goto 378,49.23,24.48,20,0
    .goto 378,49.90,23.37
    >>Kill |cRXP_ENEMY_Hozen|r.
    .complete 29417,1 --8/8 Fe-Feng attackers slain
	.mob Fe-Feng Hozen
    .mob Fe-Feng Brewthief
    .mob Fe-Feng Leaper
step
    .goto 378,50.24,21.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
    .turnin 29417 >>Turn in The Way of the Huojin
    .accept 29418 >>Accept Kindling the Fire
    .accept 29523 >>Accept Fanning the Flames
	.target Ji Firepaw
step
    .isOnQuest 29523
    #completewith Fluttering Breeze
    +|cRXP_WARN_To enable keybinding for quest items, follow these steps:|r
    *[1] Press the |cRXP_WARN_Escape key|r.
    *[2] Select |cRXP_WARN_Options|r.
    *[3] Navigate to |cRXP_WARN_Keybindings|r.
    *[4] Within |cRXP_WARN_Keybindings|r,find |cRXP_WARN_RestedXP Guides|r.
    *[5] Select and bind the |cRXP_WARN_Active Buttons|r.
step
    #completewith Fluttering Breeze
	>>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Roots|r.
    .complete 29418,1 --5/5 Dry Dogwood Root
step
    .isOnQuest 29523
    .goto 378,48.63,29.43,10,0
    .goto 378,47.98,31.94,10,0
    .goto 378,47.29,31.43
	.cast 106299 >>Use the |T519378:0|t[Wind Stone] |cRXP_WARN_at the Shrine|r.
    .use 72109
step
    #label Fluttering Breeze
    .goto 378,46.73,30.32,10,0
    >>Kill the |cRXP_ENEMY_Living Air|r and loot him for the |T463565:0|t[|cRXP_LOOT_Fluttering Breeze|r].
    .complete 29523,1 --1/1 Fluttering Breeze
    .use 72109
	.mob Living Air
step
    .goto 378,46.07,27.94,10,0
    .goto 378,48.99,30.16,10,0
    .goto 378,46.83,34.88,10,0
    .goto 378,46.04,33.12,10,0
    .goto 378,47.39,29.11
	>>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Roots|r.
    .complete 29418,1 --5/5 Dry Dogwood Root
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r and |cRXP_FRIENDLY_Shang Xi|r.
    .turnin 29418 >>Turn in Kindling the Fire
    .turnin 29523 >>Turn in Fanning the Flames
    .goto 378,50.24,21.26
    .accept 29420 >>Accept The Spirit's Guardian
    .goto 378,50.29,21.47
	.target Ji Firepaw
	.target Master Shang Xi
step
	.isOnQuest 29420
    .goto 378,41.09,24.83,10 >> Enter the |cRXP_WARN_cave|r.
step
    .goto 378,40.75,23.86,10,0
    .goto 378,40.84,22.19,10,0
    .goto 378,40,22.77,10,0
    .goto 378,38.81,25.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Li Fei|r.
    .turnin 29420 >>Turn in The Spirit's Guardian
    .accept 29664 >>Accept The Challenger's Fires
	.target Master Li Fei
step
    .goto 378,38.71,25.39
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Brazier|r.
    .complete 29664,1 --1/1 Challenger Torch lit
 step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Braziers|r.
    .complete 29664,4 --1/1 Violet Brazier lit
    .goto 378,38.25,24.87
    .complete 29664,2 --1/1 Red Brazier lit
    .goto 378,38.99,23.50
    .complete 29664,3 --1/1 Blue Brazier lit
    .goto 378,39.19,25.41
step
    .goto 378,38.81,25.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Li Fei|r.
    .turnin 29664 >>Turn in The Challenger's Fires
    .accept 29421 >>Accept Only the Worthy Shall Pass
	.target Master Li Fei
step
    .goto 378,38.88,24.64,10,0
    .goto 378,38.81,25.51
    >>Defeat |cRXP_FRIENDLY_Master Li Fei|r by reducing his health to 20%.
    .complete 29421,1 --1/1 Defeat Master Li Fei
	.mob Master Li Fei
step
    .goto 378,38.81,25.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Li Fei|r.
    .turnin 29421,2 >>Turn in Only the Worthy Shall Pass
    .accept 29422 >>Accept Huo, the Spirit of Fire
	.target Master Li Fei
step
	.isOnQuest 29422
    .goto 378,39.45,29.65
	.cast 102522 >>Use |T133662:0|t[Huo's Offerings] on |cRXP_FRIENDLY_Huo|r.
	.timer 11, Huo the Spirit of Fire RP
	.use 72583
    .target Huo
step
    .goto 378,39.45,29.65
    >>|cRXP_WARN_Wait for the brief roleplay, which will be completed when the timer runs out|r.
    .complete 29422,1 --1/1 Reignite the Spirit of Fire
    .use 72583
    .target Huo
step
    .goto 378,39.41,29.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huo|r.
    .turnin 29422 >>Turn in Huo, the Spirit of Fire
    .accept 29423 >>Accept The Passion of Shen-zin Su
	.target Huo
step
	.isOnQuest 29423
    .goto 378,40.12,25.50,20,0
    .goto 378,41.48,25.05,20,0
    .goto 378,51.04,30.62,20,0
    .goto 378,51.89,35.93,20,0
    .goto 378,50.32,37.48,20,0
    .goto 378,51.58,40.46,20 >> Travel |cRXP_WARN_to the Temple of Five Dawns|r.
step
    .goto 378,51.41,46.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r.
    .turnin 29423 >>Turn in The Passion of Shen-zin Su
    .accept 29521 >>Accept The Singing Pools
	.target Master Shang Xi
step
    .isOnQuest 29521
    .goto 378,51.83,46.08
    .home >>Set Hearthstone to |cRXP_WARN_the Temple of Five Dawns|r.
	.target Cheng Dawnscrive
step
    .isOnQuest 29521
    .goto 378,53.22,47.45,10,0
    .goto 378,57.12,46.63,10,0
    .goto 378,63.12,41.44
    .skipgossip 57620,1,1
    .gossipoption 38919 >> Herbalism Window
    .train 2366 >> Train Herbalism from |cRXP_FRIENDLY_Dewei|r.
    .target Whittler Dewei
step
    .isOnQuest 29521
    .goto 378,63.12,41.44
    .skipgossip 57620,2,3
    .gossipoption 38872 >> Mining Window
    .train 2575 >> Train Mining from |cRXP_FRIENDLY_Dewei|r.
	.target Whittler Dewei
step
    #completewith next
    +|cRXP_WARN_In this area, some water turns you into an animal, boosting your movement speed|r.
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jojo Ironbrow|r and |cRXP_FRIENDLY_Aysa Cloudsinger|r.
    .accept 29662 >>Accept Stronger Than Reeds
    .goto 378,63.50,41.93
    .turnin 29521 >>Turn in The Singing Pools
    .accept 29661 >>Accept The Lesson of Dry Fur
    .accept 29663 >>Accept The Lesson of the Balanced Rock
    .goto 378,65.59,42.61
	.target Jojo Ironbrow
	.target Aysa Cloudsinger
step
    .isOnQuest 29663
    #completewith next
    +|cRXP_WARN_In this area, some water turns you into an animal, boosting your movement speed|r.
step
    .isOnQuest 29663
	#completewith Shrine
    .goto 378,63.37,45.17
	.vehicle >> |TInterface/cursor/crosshair/interact.blp:20|tClick a |cRXP_FRIENDLY_Balance Pole|r while you are not in the water.
step
    #completewith Shrine
	>>Defeat the |cRXP_ENEMY_Tushui Monks|r on the poles.
    .complete 29663,1 --6/6 Defeat Tushui Monks
	.mob Tushui Monk
step
    .isOnQuest 29661
	#label Shrine
    .goto 378,61.39,47.87,5 >>Navigate towards the |cRXP_WARN_Shrine|r by hopping onto the poles that are nearest to it.
step
    .goto 378,61.41,47.81
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Bell|r.
    .complete 29661,1 --1/1 Ring the Training Bell
step
    #completewith next
	>>Defeat the |cRXP_ENEMY_Tushui Monks|r on the poles.
    .complete 29663,1 --6/6 Defeat Tushui Monks
	.mob Tushui Monk
step
    .goto 378,61.08,46.43,15,0
    .goto 378,61.16,45.27,15,0
    .goto 378,61.94,44.44,15,0
    .goto 378,62.77,44.86,15,0
    .goto 378,62.76,46.36,15,0
    .goto 378,62.68,48.46,15,0
    .goto 378,62.25,50,15,0
    .goto 378,60.43,48.97
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Hard Tearwood Reed|r.
    .complete 29662,1 --8/8 Hard Tearwood Reed
step
    .goto 378,62.77,44.86,15,0
    .goto 378,62.76,46.36,15,0
    .goto 378,62.68,48.46,15,0
    .goto 378,62.25,50,15,0
    .goto 378,60.43,48.97,15,0
    .goto 378,62.22,44.33
	>>Defeat the |cRXP_ENEMY_Tushui Monks|r on the poles.
    .complete 29663,1 --6/6 Defeat Tushui Monks
	.mob Tushui Monk
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jojo Ironbrow|r and |cRXP_FRIENDLY_Aysa Cloudsinger|r.
    .turnin 29662 >>Turn in Stronger Than Reeds
    .goto 378,63.50,41.93
    .turnin 29661 >>Turn in The Lesson of Dry Fur
    .turnin 29663 >>Turn in The Lesson of the Balanced Rock
    .accept 29676 >>Accept Finding an Old Friend
    .goto 378,65.59,42.61
	.target Jojo Ironbrow
	.target Aysa Cloudsinger
step
    #completewith next
    +|cRXP_WARN_In this area, some water turns you into an animal, boosting your movement speed|r.
step
    .goto 378,72.15,37.88,13,0
    .goto 378,70.62,38.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Man Liang|r.
    .turnin 29676 >>Turn in Finding an Old Friend
    .accept 29666 >>Accept The Sting of Learning
    .accept 29677 >>Accept The Sun Pearl
	.target Old Man Liang
step
    .goto 378,73.86,40.37,30,0
    .goto 378,72.67,42.89,30,0
    .goto 378,75.41,37.59,30,0
    .goto 378,73.86,40.37,30,0
    .goto 378,72.67,42.89,30,0
    .goto 378,75.41,37.59
    >>Kill |cRXP_ENEMY_Water Pincers|r.
    .complete 29666,1 --6/6 Water Pincer slain
    .mob Water Pincer
step
    .goto 378,76.21,46.87
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Ancient Clam|r |cRXP_WARN_underwater|r.
    >>|cRXP_WARN_You don't need to kill|r |cRXP_ENEMY_Fang-she|r.
    .complete 29677,1 --1/1 Sun Pearl
    .mob Fang-she
step
    .goto 378,78.48,42.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Man Liang|r.
    .turnin 29666 >>Turn in The Sting of Learning
    .turnin 29677 >>Turn in The Sun Pearl
    .accept 29678 >>Accept Shu, the Spirit of Water
	.target Old Man Liang
step
	.isOnQuest 29678
    .goto 378,79.66,41.83,4,0
    .goto 378,79.61,38.72
    >>Position yourself |cRXP_WARN_on the Blue Circle|r. This will allow you to jump |cRXP_WARN_toward the Pool|r.
    .complete 29678,1 --1/1 Cross to the Pool of Reflection
step
    .goto 378,79.59,38.58
    >>Use the |T463854:0|t[Sun Pearl] on the |cRXP_WARN_Water's Surface|r.
    .complete 29678,2 --1/1 Coax Shu, the Water Spirit
    .use 73791
step
    .goto 378,79.82,39.31
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the Quest Turnin Pop-Up in your Questlog.
    .turnin 29678 >>Turn in Shu, the Spirit of Water
step
    .goto 378,79.82,39.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r.
    .accept 29679 >>Accept A New Friend
	.target Aysa Cloudsinger
step
    --x shiek : no go to here, as i think it would only be confusing here.
    >>Follow |cRXP_FRIENDLY_Shu|r closely as he moves around. He'll cast a Spout |cRXP_WARN_in the nearby water|r. Make sure to position yourself |cRXP_WARN_on top of it|r.
    >>Use Disengage after you get launched in the air for the last Spout  << Hunter
    >>Use Blink after you get launched in the air for the last Spout << Mage
    .complete 29679,1 --5/5 Play with the Spirit of Water
	.target Shu
step
    .goto 378,79.82,39.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r.
    .turnin 29679 >>Turn in A New Friend
    .accept 29680 >>Accept The Source of Our Livelihood
	.target Aysa Cloudsinger
step
    .goto 378,76.57,57.36,40,0
    .goto 378,68.89,64.98
	>>|cRXP_WARN_Disregard the|r |cRXP_FRIENDLY_Delivery Cart|r.; |cRXP_WARN_traveling on foot will get you to your destination faster|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
    .turnin 29680 >>Turn in The Source of Our Livelihood
    .accept 29769 >>Accept Rascals
    .target Ji Firepaw
step
    .goto 378,68.13,66.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gao Summerdraft|r.
    .accept 29770 >>Accept Still Good!
	.target Gao Summerdraft
step
	#completewith Carrots
    >>Kill |cRXP_ENEMY_Plump Virmens|r.
    .complete 29769,1 --10/10 Plump Virmen slain
	.mob Plump Virmen
    .mob Plump Carrotcatcher
step
    .goto 378,70.11,77.63,15,0
    .goto 378,69.55,79.23,15,0
    .goto 378,70.84,80.41,15,0
    .goto 378,71.46,78.11,15,0
#loop
	.line 378,70.11,77.63,69.55,79.23,70.84,80.41,71.46,78.11
	.goto 378,70.11,77.63,10,0
	.goto 378,69.55,79.23,10,0
	.goto 378,70.84,80.41,10,0
	.goto 378,71.46,78.11,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Turnips|r.
    .complete 29770,1 --3/3 Uprooted Turnip
step
    .goto 378,75.54,72.25,20,0
    .goto 378,77.79,71.81,20,0
    .goto 378,78.01,72.56,15,0
    .goto 378,78.85,70.76,20,0
    .goto 378,78.6,69.74,20,0
#loop
	.line 378,77.35,70.51,78.12,72.61,78.82,70.88,78.6,69.75
	.goto 378,77.35,70.51,10,0
	.goto 378,78.12,72.61,10,0
	.goto 378,78.82,70.88,10,0
	.goto 378,78.60,69.75,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Pumpkin|r.
    .complete 29770,3 --3/3 Pilfered Pumpkin
step
	.isOnQuest 29770
    .goto 378,77.05,71.02,10 >> Enter |cRXP_WARN_the cave|r.
step
	#label Carrots
    .goto 378,76.1,71.26,15,0
    .goto 378,75.57,72.94,15,0
    .goto 378,73.97,72.58,15,0
    .goto 378,73.94,70.86,15,0
    .goto 378,74.7,74.76,15,0
#loop
	.line 378,73.97,72.58,73.94,70.86,74.7,74.76
	.goto 378,73.97,72.58,5,0
	.goto 378,73.94,70.86,5,0
	.goto 378,74.70,74.76,5,0
    >>Kill |cRXP_ENEMY_Plump Carrotcatchers|r and loot them for their [|cRXP_LOOT_Carrots|r. You can also |TInterface/cursor/crosshair/interact.blp:20|tclick the |cRXP_PICK_Carrots|r]. on the ground.
    .complete 29770,2 --3/3 Stolen Carrot
	.mob Plump Carrotcatcher
step
	.isOnQuest 29770
    .goto 378,74.99,69.42,10 >> Leave |cRXP_WARN_the cave|r.
step
    .goto 378,74.73,67.2,15,0
    .goto 378,72.67,69.48,15,0
    .goto 378,70.75,71.61,15,0
    .goto 378,69.4,69.74,15,0
#loop
	.line 378,77.89,70.13,77.36,70.49,77.85,71.75
	.goto 378,77.89,70.13,10,0
	.goto 378,77.36,70.49,10,0
	.goto 378,77.85,71.75,10,0
    >>Kill |cRXP_ENEMY_Plump Virmens|r.
    .complete 29769,1 --10/10 Plump Virmen slain
	.mob Plump Virmen
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gao Summerdraft|r, |cRXP_FRIENDLY_Ji Firepaw|r, and |cRXP_FRIENDLY_Jojo Ironbrow|r.
    .turnin 29770 >>Turn in Still Good!
    .goto 378,68.13,66.40
    .turnin 29769 >>Turn in Rascals
    .accept 29768 >>Accept Missing Mallet
	.goto 378,68.89,64.98
    .accept 29771 >>Accept Stronger Than Wood
    .goto 378,69.16,66.71
	.target Gao Summerdraft
	.target Ji Firepaw
	.target Jojo Ironbrow
step
	#completewith next
	>>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Wood Planks|r.
    .complete 29771,1 --12/12 Discarded Wood Plank
step
    .goto 378,62.63,77.05
	>>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Mallet|r |cRXP_WARN_on the barrel|r.
    >>|cRXP_WARN_You don't have to kill |cRXP_ENEMY_Raggis|r. if you can avoid it|r.
    .complete 29768,1 --1/1 Dai-Lo Recess Mallet
step
    .goto 378,63.77,77.19,15,0
    .goto 378,63.27,79.16,15,0
    .goto 378,62.94,79.04,15,0
    .goto 378,62.19,81.08,15,0
    .goto 378,63.77,77.19,15,0
    .goto 378,63.27,79.16,15,0
    .goto 378,62.94,79.04,15,0
    .goto 378,62.19,81.08
	>>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Wood Planks|r |cRXP_WARN_on the floor|r.
    .complete 29771,1 --12/12 Discarded Wood Plank
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jojo Ironbrow|r and |cRXP_FRIENDLY_Ji Firepaw|r.
    .turnin 29771 >>Turn in Stronger Than Wood
    .goto 378,69.16,66.71
    .turnin 29768 >>Turn in Missing Mallet
    .accept 29772 >>Accept Raucous Rousing
	.goto 378,68.89,64.98
    .target Jojo Ironbrow
    .target Ji Firepaw
step
    .goto 378,68.95,64.80
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Gong|r.
    .complete 29772,1 --1/1 Ring the town gong
step
    .goto 378,68.89,64.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
    .turnin 29772 >>Turn in Raucous Rousing
    .accept 29774 >>Accept Not In the Face!
	.target Ji Firepaw
step
    .goto 378,68.98,62.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shu|r.
    .complete 29774,1 --1/1 Ask Shu for help
    .skipgossip
	.timer 15,Not In the Face! RP
	.target Shu
step
    .goto 378,68.89,64.98
    >>|cRXP_WARN_Wait for the brief roleplay, which will be completed when the timer runs out|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
    .turnin 29774 >>Turn in Not In the Face!
    .accept 29775 >>Accept The Spirit and Body of Shen-zin Su
	.target Ji Firepaw
step
	.isOnQuest 29775
    .goto 378,58.86,63.38,40,0
    .goto 378,55.23,58.57,40,0
    .goto 378,51.48,57.40,20 >>Travel to the Temple of the Five Dawns
	>>|cRXP_WARN_Disregard the|r |cRXP_FRIENDLY_Delivery Cart|r.; |cRXP_WARN_traveling on foot will get you to your destination faster|r.
step
    .goto 378,51.59,48.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r.
    .turnin 29775 >>Turn in The Spirit and Body of Shen-zin Su
    .accept 29776 >>Accept Morning Breeze Village
	.timer 20,Morning Breeze Village RP
	.target Master Shang Xi
step
    .isOnQuest 29776
    .goto 378,51.46,48.93,7 >>|cRXP_WARN_Wait for the brief roleplay, which will be completed when the timer runs out|r.
step
	.isOnQuest 29776
    .goto 378,51.01,49.05,10,0
    .goto 378,40.19,50.79,20,0
    .goto 378,34.91,50.73,15,0
    .goto 378,33.1,42.6,15,0
    .goto 378,30.42,37.50,20 >>Travel to |cRXP_WARN_Morning Breeze Village|r.
step
    .goto 378,30.97,36.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
    .turnin 29776 >>Turn in Morning Breeze Village
    .accept 29778 >>Accept Rewritten Wisdoms
	.target Ji Firepaw
step
    .goto 378,30.17,39.01,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Shaopai|r and |cRXP_FRIENDLY_Jojo Ironbrow|r.
    .accept 29777 >>Accept Tools of the Enemy
    .goto 378,31.78,39.71
    .accept 29783 >>Accept Stronger Than Stone
    .goto 378,29.90,39.76
	.target Elder Shaopai
	.target Jojo Ironbrow
step
    .isOnQuest 29777
    #completewith Defaced Scroll of Wisdom burned
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shen Stonecarver|r.
    .vendor >>|cRXP_WARN_Sell and repair if you need to|r.
    .target Shen Stonecarver
step
    #completewith Defaced Scroll of Wisdom burned
    >>Kill |cRXP_ENEMY_Fe-Feng Wisemans|r and loot them for their [|cRXP_LOOT_Brushes|r].
    .complete 29777,1 --8/8 Paint Soaked Brush
	.mob Fe-Feng Wiseman
step
    #completewith Defaced Scroll of Wisdom burned
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Stone Blocks|r.
    .complete 29783,1 --12/12 Abandoned Stone Block
step
    .goto 378,30.3,42.95,15,0
    .goto 378,29.49,45.36,15,0
    .goto 378,29.11,47.53,15,0
    .goto 378,29.78,47.67,15,0
    .goto 378,29.21,48.57,15,0
    .goto 378,28.37,49.37,15,0
    .goto 378,27.16,49.67,15,0
    .goto 378,28.54,49.93,15,0
    .goto 378,29.12,51.09,15,0
    .goto 378,31.19,47.97,15,0
    .goto 378,32.49,46.63,15,0
    .goto 378,33.13,46.32,15,0
#loop
	.line 378,33.42,50.88,32.57,53.31,28.71,50.23
	.goto 378,33.42,50.88,15,0
	.goto 378,32.57,53.31,15,0
	.goto 378,28.71,50.23,15,0
    #label Defaced Scroll of Wisdom burned
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Banners|r on the monuments.
    .complete 29778,1 --5/5 Defaced Scroll of Wisdom burned
step
    #completewith next
    >>Kill |cRXP_ENEMY_Fe-Feng Wisemans|r and loot them for their [|cRXP_LOOT_Brushes|r].
    .complete 29777,1 --8/8 Paint Soaked Brush
	.mob Fe-Feng Wiseman
step
    .goto 378,31.18,47.97,15,0
    .goto 378,32.57,46.43,15,0
    .goto 378,33.66,47.21,15,0
    .goto 378,33.99,50.9,15,0
    .goto 378,33.06,52.27,15,0
    .goto 378,32.16,50.53,15,0
    .goto 378,31.32,52.22,15,0
#loop
	.line 378,31.18,47.9,32.57,46.43,33.99,50.9,32.16,50.53,31.32,52.22
	.goto 378,31.18,47.90,15,0
	.goto 378,32.57,46.43,15,0
	.goto 378,33.99,50.90,15,0
	.goto 378,32.16,50.53,15,0
	.goto 378,31.32,52.22,15,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Stone Blocks|r.
    .complete 29783,1 --12/12 Abandoned Stone Block
step
#loop
	.line 378,31.18,47.9,32.57,46.43,33.99,50.9,32.16,50.53,31.32,52.22
	.goto 378,31.18,47.90,15,0
	.goto 378,32.57,46.43,15,0
	.goto 378,33.99,50.90,15,0
	.goto 378,32.16,50.53,15,0
	.goto 378,31.32,52.22,15,0
    >>Kill |cRXP_ENEMY_Fe-Feng Wisemans|r and loot them for their [|cRXP_LOOT_Brushes|r].
    .complete 29777,1 --8/8 Paint Soaked Brush
	.mob Fe-Feng Wiseman
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Shaopai|r, |cRXP_FRIENDLY_Jojo Ironbrow|r, and |cRXP_FRIENDLY_Ji Firepaw|r.
    .turnin 29777 >>Turn in Tools of the Enemy
    .goto 378,31.78,39.71
    .turnin 29783 >>Turn in Stronger Than Stone
    .goto 378,29.90,39.76
    .turnin 29778 >>Turn in Rewritten Wisdoms
    .accept 29779 >>Accept The Direct Solution
    .accept 29780 >>Accept Do No Evil
    .accept 29781 >>Accept Monkey Advisory Warning
    .goto 378,30.97,36.74
	.target Elder Shaopai
	.target Jojo Ironbrow
	.target Ji Firepaw
step
	.isOnQuest 29779
    .goto 378,29.28,39.98,15,0
    .goto 378,27.42,36.25,30,0
    .goto 378,26.42,33.68,30 >> Travel to the |cRXP_WARN_Jade Pillar|r.
step
	#completewith next
	>>Kill |cRXP_ENEMY_Fe-Feng Hozen|r.
    .complete 29779,1 --20/20 Fe-Feng Hozen slain
	.mob Fe-Feng Firethief
	.mob Fe-Feng Ruffian
step
    .goto 378,26.42,33.68
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_Jade Pillar|r.
    .accept 29782 >>Accept Stronger Than Bone
step
    #completewith next
	>>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Firework Bundles|r.
    .complete 29781,1 --8/8 Stolen Firework Bundle
step
    .goto 378,26.75,31.86,15,0
    .goto 378,27.49,29.61,15,0
    .goto 378,25.72,29.91,15,0
    .goto 378,24.24,30.84,15,0
    .goto 378,20.52,34.6,10,0
#loop
	.line 378,24.24,30.84,25.72,29.91,27.49,29.61,26.75,31.86
	.goto 378,24.24,30.84,10,0
	.goto 378,25.72,29.91,10,0
	.goto 378,27.49,29.61,10,0
	.goto 378,26.75,31.86,10,0
	>>Kill |cRXP_ENEMY_Fe-Feng Hozen|r.
    .complete 29779,1 --20/20 Fe-Feng Hozen slain
	.mob Fe-Feng Firethief
	.mob Fe-Feng Ruffian
step
    .goto 378,26.08,35.17,15,0
    .goto 378,20.94,34.43
	>>Kill |cRXP_ENEMY_Ruk-Ruk|r.
    .complete 29780,1 --1/1 Ruk-Ruk slain
	.mob Ruk-Ruk
step
    #completewith next
	>>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Firework Bundles|r.
    .complete 29781,1 --8/8 Stolen Firework Bundle
step
    >>Kill |cRXP_ENEMY_Fe-Feng Hozen|r.
    .complete 29779,1 --20/20 Fe-Feng Hozen slain
	.mob Fe-Feng Firethief
	.mob Fe-Feng Ruffian
step
#loop
	.line 378,24.24,30.84,25.72,29.91,27.49,29.61,26.75,31.86
	.goto 378,24.24,30.84,10,0
	.goto 378,25.72,29.91,10,0
	.goto 378,27.49,29.61,10,0
	.goto 378,26.75,31.86,10,0
	>>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Firework Bundles|r.
    .complete 29781,1 --8/8 Stolen Firework Bundle
step
	#completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ji Firepaw, who should be next to you. |cFFFF0000If he isn't there, skip this step|r.
    .turnin 29779 >>Turn in The Direct Solution
    .turnin 29780 >>Turn in Do No Evil
    .turnin 29781 >>Turn in Monkey Advisory Warning
    .accept 29784 >>Accept Balanced Perspective
	.target Ji Firepaw
step
    .goto 378,29.90,39.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jojo Ironbrow|r.
    .turnin 29782 >>Turn in Stronger Than Bone
	.target Jojo Ironbrow
step
    .goto 378,30.97,36.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
    .turnin 29779 >>Turn in The Direct Solution
    .turnin 29780 >>Turn in Do No Evil
    .turnin 29781 >>Turn in Monkey Advisory Warning
    .accept 29784 >>Accept Balanced Perspective
	.target Ji Firepaw
step
	#completewith next
    .goto 378,31.14,36.79,5,0
    .goto 378,32.17,36.36,8,0
    .goto 378,32.88,37.16,8,0
    .goto 378,32.94,35.61,8 >>|cRXP_WARN_Carefully|r walk over the rope.
step
	#label BalancedP
    .goto 378,32.94,35.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r.
    .turnin 29784 >>Turn in Balanced Perspective
    .accept 29785 >>Accept Dafeng, the Spirit of Air
	.target Aysa Cloudsinger
step
	#sticky
	#label Temple1
    .goto 378,30.21,38.57,20,0
    .goto 378,28.94,62.89,20 >>Travel |cRXP_WARN_to the Temple|r.
	.isOnQuest 29785
step
	#sticky
	#label Temple2
	#requires Temple1
    .goto 378,26.64,66.63,10 >> Run in between the sets of stairs after the first time the winds subside
	.isOnQuest 29785
step
	#sticky
	#label Temple3
	#requires Temple2
    .goto 378,26.64,66.63,10 >> Run toward |cRXP_FRIENDLY_Dafeng|r after the winds in the next room subside.
	.isOnQuest 29785
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dafeng|r and |cRXP_FRIENDLY_Aysa|r.
    .turnin 29785 >>Turn in Dafeng, the Spirit of Air
    .goto 378,24.65,69.80
    .accept 29786 >>Accept Battle for the Skies
    .goto 378,24.78,69.78
	.target Dafeng
	.target Aysa Cloudsinger
step
    .goto 378,29.54,60.74,5,0
    .goto 378,30.18,61.88,5,0
    .goto 378,30.93,61.59,5,0
    .goto 378,31.37,60.05,5,0
    .goto 378,29.78,58.93,5,0
    .goto 378,29.54,60.74,5,0
    .goto 378,30.18,61.88,5,0
    .goto 378,30.93,61.59,5,0
    .goto 378,31.37,60.05,5,0
    .goto 378,29.78,58.93,5,0
    .goto 378,30.52,59.72
	>>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Firework Launchers|r when |cRXP_ENEMY_Zhao-Ren|r is over them to damage him. He circles counter-clockwise. |cRXP_WARN_Avoid his Lightning puddles|r. Damage him when he lands. Kill him when he lands the second time
    .complete 29786,1 --1/1 Zhao-Ren slain
	.target Zhao-Ren
step
    .goto 378,29.99,60.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r.
    .turnin 29786 >>Turn in Battle for the Skies
    .accept 29787 >>Accept Worthy of Passing
	.target Master Shang Xi
step
	#completewith next
    .goto 378,26.32,52.83,20,0
    .goto 378,22.70,52.80,40 >>Travel |cRXP_WARN_to The Elders' Path|r.
step
    .goto 378,22.70,52.80
	>>Kill the |cRXP_ENEMY_Guardian of the Elders|r.
    .complete 29787,1 --1/1 Guardian of the Elders slain
	.timer 19,Worthy of Passing RP
	.target Guardian of the Elders
step
    .goto 378,19.45,51.22
	>>Wait out the RP
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r.
    .turnin 29787 >>Turn in Worthy of Passing
    .accept 29788 >>Accept Unwelcome Nature
    .accept 29789 >>Accept Small, But Significant
	.target Master Shang Xi
step
    .goto 378,18.84,51.88,15,0
    .goto 378,18.43,49.88,15,0
    .goto 378,18.37,48.13,15,0
    .goto 378,21.57,49.29,15,0
    .goto 378,22.50,48.95,15,0
    .goto 378,24.22,45.72,30,0
    .goto 378,18.18,44.52,30,0
    .goto 378,24.22,45.72,30,0
    .goto 378,18.18,44.52
	>>Kill |cRXP_ENEMY_Thornbranch Scamps|r and loot the |cRXP_PICK_Charms|r hanging from the trees.
    .complete 29788,1 --8/8 Thornbranch Scamp slain
    .complete 29789,1 --8/8 Kun-Pai Ritual Charm
	.target Thornbranch Scamp
step
    .goto 378,19.46,51.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r.
    .turnin 29788 >>Turn in Unwelcome Nature
    .turnin 29789 >>Turn in Small, But Significant
    .accept 29790 >>Accept Passing Wisdom
	.timer 83,Passing Wisdom RP
	.target Master Shang Xi
step
	#completewith next
	.cast 108034 >>Eat the |T571818:0|t[Small Sugarcane Stalk] for 10 seconds to get a buff
    .use 77272
	.itemcount 77272,1
step
    .goto 378,17.29,50.78
    >>|cRXP_WARN_Wait out the RP at the arrow location|r.
    .complete 29790,1 --1/1 Listen to Master Shang Xi
step
    .goto 378,15.79,49.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r.
    .turnin 29790 >>Turn in Passing Wisdom
    .accept 29791 >>Accept The Suffering of Shen-zin Su
	.target Aysa Cloudsinger
step
    .goto 378,15.55,48.91
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_Air Balloon|r to Board it.
    .complete 29791,1 --1/1 Board the Hot Air Balloon
	.timer 191,The Suffering of Shen-zin Su RP
step
    .goto 378,30.8,92.9
	>>|cRXP_WARN_Wait out the RP|r.
    .complete 29791,2 --1/1 Uncover the source of Shen-zin Su's pain
step
    .goto 378,51.31,48.28
    >>When falling off the Balloon, Disengage to the stairs to the north-east to save time << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaopai|r.
    .turnin 29791 >>Turn in The Suffering of Shen-zin Su
    .accept 29792 >>Accept Bidden to Greatness
	.target Elder Shaopai
step
    .goto 378,51.60,61.39
    >>Run to the gate to open it. Wait out the RP
    .complete 29792,1 --1/1 Open the Mandori Village Gate
step
	#completewith next
    .goto 378,50.66,65.62,20,0
    .goto 378,52.28,68.43,30 >>Travel |cRXP_WARN_to the Pei-Wu Gate|r.
	.timer 28,Pei-Wu Gate RP
step
    .goto 378,52.28,68.43
    >>Run to the gate to open it. Wait out the RP
    .complete 29792,2 --1/1 Open the Pei-Wu Forest Gate
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wei|r and |cRXP_FRIENDLY_Korga|r.
    .turnin 29792 >>Turn in Bidden to Greatness
    .accept 30591 >>Accept Preying on the Predators
    .goto 378,50.07,76.63
    .accept 29795 >>Accept Stocking Stalks
    .goto 378,50.22,76.65
	.target Wei Palerage
	.target Korga Strongmane
step
    .goto 378,50.62,78.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Provisioner Drog|r.
    .vendor 67186 >> Sell your trash and repair
	.target Provisioner Drog
	.isOnQuest 29795
step
#loop
	.line 378,54.51,85.54,45.05,85.81,45.89,71.57,55.62,69.49,54.51,85.54
	.goto 378,54.51,85.54,40,0
	.goto 378,45.05,85.81,40,0
	.goto 378,45.89,71.57,40,0
	.goto 378,55.62,69.49,40,0
	.goto 378,54.51,85.54,40,0
    >>Kill |cRXP_ENEMY_Pei-Wu Tigers|r. Loot the |cRXP_PICK_Bamboo Stalks|r |cRXP_WARN_on the ground|r.
    .complete 30591,1 --9/9 Pei-Wu Tiger slain
    .complete 29795,1 --10/10 Broken Bamboo Stalk
	.mob Pei-Wu Tiger
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wei|r and |cRXP_FRIENDLY_Korga|r.
    .turnin 30591 >>Turn in Preying on the Predators
    .goto 378,50.07,76.63
    .turnin 29795 >>Turn in Stocking Stalks
    .accept 30589 >>Accept Wrecking the Wreck
    .goto 378,50.22,76.65
	.target Wei Palerage
	.target Korga Strongmane
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Makael|r and |cRXP_FRIENDLY_Ji|r.
    .turnin 30589 >>Turn in Wrecking the Wreck
    .accept 30590 >>Accept Handle With Care
    .goto 378,36.32,72.36
    .accept 29793 >>Accept Evil from the Seas
    .goto 378,36.37,72.53
	.target Makael Bay
	.target Ji Firepaw
step
    .goto 378,36.06,76.73,40,0
    .goto 378,35.41,79.00,40,0
    .goto 378,40.14,78.79,40,0
    .goto 378,38.29,74.01,40,0
    .goto 378,36.06,76.73,40,0
    .goto 378,35.41,79.00,40,0
    .goto 378,40.14,78.79,40,0
    .goto 378,38.29,74.01
    >>Kill |cRXP_ENEMY_Darkened Horrors|r and |cRXP_ENEMY_Terrors|r. |cRXP_WARN_Be careful of the Horrors' Shadow Geysers|r.
	>>Loot the Explosion Charges on the ground
    .complete 29793,1 --8/8 Darkened Horrors or Darkened Terrors slain
    .complete 30590,1 --6/6 Packed Explosion Charge
	.mob Darkened Horror
	.mob Darkened Terror
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Makael Bay|r and |cRXP_FRIENDLY_Ji Firepaw|r.
    .turnin 30590 >>Turn in Handle With Care
    .goto 378,36.32,72.36
    .turnin 29793 >>Turn in Evil from the Seas
    .accept 29796 >>Accept Urgent News
    .goto 378,36.37,72.53
	.target Makael Bay
	.target Ji Firepaw
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delora Lionheart|r and |cRXP_FRIENDLY_Jojo Ironbrow|r.
    .turnin 29796 >>Turn in Urgent News
    .accept 29794 >>Accept None Left Behind
    .accept 29797 >>Accept Medical Supplies
    .goto 378,42.21,86.54
    .accept 29665 >>Accept From Bad to Worse
    .goto 378,42.30,86.35
	.target Delora Lionheart
	.target Jojo Ironbrow
step
	#completewith Sailor2
    >>Kill |cRXP_ENEMY_Deepscale Tormentors|r. Loot the |cRXP_PICK_Medical Supplies|r on the ground.
    .complete 29665,1 --8/8 Deepscale Tormentor slain
    .complete 29797,1 --8/8 Alliance Medical Supplies
	.mob Deepscale Tormentor
step
    #optional
	#completewith next
    .goto 378,40.18,87.69
	.cast 56685 >>Pick up the |cRXP_FRIENDLY_Injured Sailor|r.
	.isOnQuest 29794
	.target Injured Sailor
--XXZ Zarant Function
step
    #optional
    .goto 378,42.27,86.80
    >>Carry the |cRXP_FRIENDLY_Injured Sailor|r back to |cRXP_FRIENDLY_Delora's|r Camp.
    .complete 29794,1,1 --3/3 Injured Sailors rescued
step
    #optional
	#completewith next
    .goto 378,39.41,87.98
	.cast 56685 >>Pick up the |cRXP_FRIENDLY_Injured Sailor|r.
	.isOnQuest 29794
	.target Injured Sailor
step
    #optional
	#label Sailor2
    .goto 378,42.27,86.80
    >>Carry the |cRXP_FRIENDLY_Injured Sailor|r back to |cRXP_FRIENDLY_Delora's|r Camp.
    .complete 29794,1,2 --3/3 Injured Sailors rescued
step
    #optional
    .goto 378,38.36,87.60,20,0
    .goto 378,37.04,87.93,20,0
    .goto 378,35.77,86.77,20,0
    .goto 378,36.40,83.30,20,0
    .goto 378,37.92,81.39,20,0
    .goto 378,37.86,83.22,20,0
    .goto 378,36.41,85.51,10,0
    .goto 378,36.82,89.24,20,0
    .goto 378,38.36,87.60,20,0
    .goto 378,37.04,87.93,20,0
    .goto 378,35.77,86.77,20,0
    .goto 378,36.40,83.30,20,0
    .goto 378,37.92,81.39,20,0
    .goto 378,37.86,83.22,20,0
    .goto 378,36.41,85.51,10,0
    .goto 378,36.82,89.24
	>>|cRXP_WARN_Don't pick up a new Sailor yet|r.
    >>Kill |cRXP_ENEMY_Deepscale Tormentors|r. Loot the |cRXP_PICK_Medical Supplies|r on the ground.
    .complete 29665,1 --8/8 Deepscale Tormentor slain
    .complete 29797,1 --8/8 Alliance Medical Supplies
	.mob Deepscale Tormentor
step
	#completewith next
    .goto 378,38.36,87.43,-1
    .goto 378,37.66,87.22,-1
    .goto 378,36.17,87.63,-1
    .goto 378,35.49,83.80,-1
    .goto 378,37.60,81.44,-1
    .goto 378,38.41,83.09,-1
    .goto 378,38.08,84.73,-1
    .goto 378,40.01,84.36,-1
	.cast 56685 >>Pick up the |cRXP_FRIENDLY_Injured Sailor|r.
	.isOnQuest 29794
	.target Injured Sailor
step
    .goto 378,42.27,86.80
    >>Carry the |cRXP_FRIENDLY_Injured Sailor|r back to |cRXP_FRIENDLY_Delora Lionheart's|r Camp.
    .complete 29794,1 --3/3 Injured Sailors rescued
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delora Lionheart|r and |cRXP_FRIENDLY_Jojo Ironbrow|r.
    .turnin 29794 >>Turn in None Left Behind
    .turnin 29797 >>Turn in Medical Supplies
    .goto 378,42.21,86.54
    .turnin 29665 >>Turn in From Bad to Worse
    .accept 29798 >>Accept An Ancient Evil
    .goto 378,42.30,86.35
	.target Delora Lionheart
	.target Jojo Ironbrow
step
    .goto 378,36.50,84.23
    >>Kill |cRXP_ENEMY_Vordraka, The Deep Sea Nightmare|r.
    >>|cRXP_WARN_Dodge his Deep Sea Smash|r. Kill |cRXP_ENEMY_Deepscale Aggressors|r when they spawn.
    .complete 29798,1 --1/1 Vordraka, the Deep Sea Nightmare slain
	.mob Vordraka, The Deep Sea Nightmare
    .mob Deepscale Aggressor
step
    .goto 378,36.50,84.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r.
    .turnin 29798 >>Turn in An Ancient Evil
    .accept 30767 >>Accept Risking It All
    .timer 77,Risking It All RP
	.target Aysa Cloudsinger
	.skipgossip
step
    .goto 378,36.35,86.08,10,0 << skip
    .goto 378,36.27,86.99,10,0 << skip
    .goto 378,36.90,85.50,5,0 << skip
    .goto 378,36.36,87.2,10,0 << skip
    .goto 378,36.38,87.12 << skip
    >>Wait out the RP (you can take a break in this time)
	>>|cRXP_WARN_Press "Escape" on your keyboard to skip the cinematic|r.
    .complete 30767,1 --1/1 Shen-zin Su's Thorn Removed
step
    .goto 378,39.30,86.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
    .turnin 30767 >>Turn in Risking It All
    .accept 29799 >>Accept The Healing of Shen-zin Su
	.target Ji Firepaw
step
    .goto 378,39.08,88.32,5,0
    .goto 378,39.04,88.87,5,0
    .goto 378,39.89,88.62,5,0
    .goto 378,42.92,87.31,5,0
    .goto 378,42.85,85.16,5,0
    .goto 378,42.01,84.89,5,0
    .goto 378,42.31,83.89,5,0
    .goto 378,41.21,83.78,5,0
    .goto 378,40.55,82.45,5,0
    .goto 378,40.26,83.35,5,0
    .goto 378,40.12,84.37,5,0
    .goto 378,38.44,86.07
    >>Free |cRXP_FRIENDLY_Alliance Priests|r and |cRXP_FRIENDLY_Horde Druids|r from the Wreckages, then talk to them. Kill |cRXP_ENEMY_Dampscale Fleshrippers|r. If they're attacking them.
    .complete 29799,1 --1/1 Protect the healers
	.target Alliance Priest
	.target Horde Druid
	.mob Dampscale Fleshripper
step
    .goto 378,39.30,86.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
	>>|cRXP_WARN_Press "Escape" on your keyboard to skip the cinematic|r.
    .turnin 29799 >>Turn in The Healing of Shen-zin Su
	.timer 18,The Healing of Shen-zin Su RP
	.target Ji Firepaw
step
    >>|cRXP_WARN_Wait out the RP|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
    .goto 378,38.77,86.32
    .accept 29800 >>Accept New Allies
	.target Ji Firepaw
step
    #completewith next
    .hs >> Hearthstone |cRXP_WARN_to the Temple of Five Dawns|r.
step
    .goto 378,51.45,48.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Spirit of Shang Xi|r and select your Faction.
	>>|cRXP_WARN_Press "Escape" on your keyboard to skip the cinematic|r.
    .turnin 29800 >>Turn in New Allies
    .accept 31450 >>Accept A New Fate
    .complete 31450,1 --1/1 Choose your faction
    .skipgossip
	.target Spirit of Shang Xi
step << Alliance
    .goto 84,74.19,91.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r.
    .turnin 31450 >>Turn in A New Fate
	.accept 30987 >>Accept Joining the Alliance
	.target Aysa Cloudsinger
step << Alliance
    .goto 84,63.77,73.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renato Gallina|r.
    .accept 332 >>Accept Wine Shop Advert
    .target Renato Gallina
step << Alliance
    .goto 84,62.81,71.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hero's Herald|r.
    .accept 46727 >>Accept Battle for Azeroth: Tides of War
    .target Hero's Herald
step << Alliance
    #veteran
	>>Unlearn your professions by copying then pasting the link below into chat
    .link /run AbandonSkill(186); AbandonSkill(182);>> |TInterface/cursor/crosshair/interact.blp:20|tClick HERE
	.train 2366,1 >>Unlearn Herbalism
	.train 2575,1 >>Unlearn Mining
    .dmf
step
    #veteran
    .goto 84,61.11,70.6
    +The Darkmoon Faire event is now active, |cRXP_WARN_which guarantees you to gain an additional level for free and a temporary 10% experience boost|r. You'll need to purchase |cRXP_WARN_certain items from the auction house to take full advantage of this|r. If necessary,|cRXP_WARN_you can transfer gold from your other characters to make these purchases|r. However, if you find that you can't afford everything, |cRXP_WARN_It's still worthwhile to visit the Darkmoon Faire for the temporary experience buff and to buy only some of the items|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Auctioneer|r.
    .collect 71715,1
    .collect 71638,1
    .collect 71637,1
    .collect 71636,1
    .collect 71635,1
    .collect 71952,1
    .collect 71951,1
    .collect 71953,1
    .collect 71716,1
    .target Auctioneer Fitch
    .target Auctioneer Jaxon
    .target Auctioneer Chilton
    .dmf
step
    #fresh
    #completewith DarkMoonFaire
    +The Darkmoon Faire event is now active, |cRXP_WARN_which guarantees you to gain an additional level for free and a temporary 10% experience boost|r.
step
    #completewith next
    .link /run AbandonSkill(186); AbandonSkill(182);>> |cRXP_WARN_Click this text to receive a macro that will unlearn your professions|r.
    .dmf
step << Alliance
    #label DarkMoonFaire
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage|r.
    .goto 84,62.25,72.96
    .accept 7905 >>Accept The Darkmoon Faire
	.zone 407 >> Travel to the Darkmoon Faire
	.target Darkmoon Faire Mystic Mage
	.skipgossip
    .dmf
step << Horde
    .dmf
	>>Unlearn your professions by copying then pasting the link below into chat
    .link /run AbandonSkill(186); AbandonSkill(182);>> |TInterface/cursor/crosshair/interact.blp:20|tClick HERE
	.train 2366,1 >>Unlearn Herbalism
	.train 2575,1 >>Unlearn Mining
step << Horde
    .goto 1,45.58,12.61
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
    .turnin 31450 >>Turn in A New Fate
    .accept 31012 >>Accept Joining the Horde
    .target Ji Firepaw
step << Horde
    #completewith next
    .goto 85,49.87,75.52,20 >> Go |cRXP_WARN_inside Grommash Hold|r.
step << Horde
    .goto 85,48.76,70.77
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrosh Hellscream|r.
    .turnin 31012 >> Turn in Joining the Horde
    .target Garrosh Hellscream
]])

--New DK Intro The Frozen Throne
RXPGuides.RegisterGuide([[
#retail
#version 2
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(1-80)|r Default
#name a) New DK Intro
#displayname |cFF00CCFF1|r - The Frozen Throne
#next << Alliance
#next << Horde

<< DK Pandaren/DarkIronDwarf DK/KulTiran DK/LightforgedDraenei DK/Mechagnome DK/VoidElf DK/HighmountainTauren DK/Nightborne DK/ZandalariTroll DK/MagharOrc DK/Vulpera DK

step
    .goto 1602,49.55,89.74 --clickradius
    .goto 1602,49.55,90.69 --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Lich King|r.
    .accept 58877 >>Accept Death's Power Grows
    .target The Lich King
    .zoneskip 84
step
    .goto 1602,49.55,89.74 --clickradius
    >>Use the [Extra Action Button] |cRXP_WARN_infront of|r |cRXP_FRIENDLY_The Lich King|r.
    .complete 58877,1 --1/1 Fealty sworn
    .target The Lich King
    .isOnQuest 58877
step
    .goto 1602,49.55,89.74 --clickradius
    .goto 1602,49.6,90.7 --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Lich King|r.
    .turnin 58877,1 >>Turn in Death's Power Grows
    .accept 58902 >>Accept Defender of Azeroth << Alliance
    .accept 58903 >>Accept Defender of Azeroth << Horde
    .target The Lich King
    .isQuestComplete 58877
-- step
--     #completewith next
--     +Press the default 'N' key to open your Talents.|cRXP_WARN_Then, pick the Talent specialization you want|r.
--     .zoneskip 84
--     .isQuestTurnedIn 58877 --x New Type of DK Check
step
    .goto 1602,49.84,68.43 --clickradius
    .goto 1602,50.7,71.0 --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Darion Morgraine|r.
    .skipgossip
    .complete 58902,1 << Alliance --1/1 Speak with Highlord Darion Mograine
    .complete 58903,1 << Horde --1/1 Speak with Highlord Darion Mograine
    .target Highlord Darion Morgraine
    .isQuestTurnedIn 58877 --x New Type of DK Check
step 
    .goto 1602,49.93,42.41  --clickradius
    .goto 1602,49.96,39.08 --npc location
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Death Gate|r.
    .complete 58902,2 << Alliance --1/1 Death Gate Used
    .complete 58903,2 << Horde --1/1 Death Gate Used
    .isQuestTurnedIn 58877 --x New Type of DK Check
-- step
--     -- .goto 84,67.16,83.4,20,0
--     -- .goto 84,67.51,80.47,20,0
--     .goto 84,63.77,73.60
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renato Gallina|r.
--     .accept 332 >>Accept Wine Shop Advert
--     .target Renato Gallina
--     .isQuestTurnedIn 58877 --x New Type of DK Check
-- step
--     .goto 84,62.9,71.8
--     >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Hero's Call Board|r and select Chromie's Call.
--     .complete 58902,4 --1/1 Hero's Call Board
--     .accept 62567 >>Accept Adventurers Wanted: Chromie's Call
--     .isQuestTurnedIn 58877 --x New Type of DK Check
-- step
--     .goto 84,62.9,71.8
--     >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Hero's Call Board|r and select Broken Shore.
--     .accept 40519 >>Accept Legion: The Legion Returns
--     .isQuestTurnedIn 58877 --x New Type of DK Check
-- step
--     >>|TInterface/cursor/crosshair/interact.blp:20|t|cRXP_WARN_Select the option to turn in your quest from the pop-up in your quest log|r.
--     .turnin 58902 >>Turn in Defender of Azeroth
--     .isQuestTurnedIn 58877 --x New Type of DK Check
-- step
--     .goto 84,62.81,71.74
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hero's Herald|r.
--     .accept 46727 >>Accept Tides of War
--     .target Hero's Herald
--     .isQuestTurnedIn 58877 --x New Type of DK Check
-- step
--     .cast 50977 >> Use Death Gate.
--     .usespell 50977
--     .isQuestTurnedIn 58877 --x New Type of DK Check
-- step
--     .zone 23 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Death Gate|r
--     .isQuestTurnedIn 58877 --x New Type of DK Check
-- step
--     .goto 23,82.09,46.46 --clickradius
--     .goto 23,82.02,46.31 --npc location
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Darion Mograine|r.
--     .accept 58989 >>Accept Runeforging 101
--     .isQuestTurnedIn 58877 --x New Type of DK Check
--     .target Highlord Darion Mograine
-- step
--     .goto 23,83.19,48.90
--     >>Step onto |cRXP_WARN_the purple circle|r to teleport.
--     .isQuestTurnedIn 58877 --x New Type of DK Check
--     .complete 58989,1 --1/1 Use the portal to the 2nd floor
-- step
--     .goto 23,83.14,45.4
--     >>Go to the Runeforge and enchant your weapon with any Death Knight enchant.
--     *
--     .complete 58989,2 --Weapon emblazoned (1)
--     .isQuestTurnedIn 58877 --x New Type of DK Check
--     .usespell 53428
-- step
--     .isOnQuest 58989
--     .goto 23,83.25,49.02,5 >>|cRXP_WARN_Step onto |cRXP_WARN_the purple circle|r to teleport again|r.
-- step
--     .goto 23,82.02,46.28
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Darion Mograine|r.
--     .turnin 58989 >>Turn in Runeforging 101
--     .isQuestTurnedIn 58877 --x New Type of DK Check
--     .target Highlord Darion Mograine
-- step
--     #completewith next
--     +Use Death Gate |cRXP_WARN_to Stormwind|r.
--     >>|cRXP_WARN_You might have to wait shortly on it's CD|r.
--     .zoneskip 84
--     .isQuestTurnedIn 58877 --x New Type of DK Check
--     .use 50977
-- step
--     #veteran
--     .goto 84,61.11,70.6
--     +The Darkmoon Faire event is now active, |cRXP_WARN_which guarantees you to gain an additional level for free and a temporary 10% experience boost|r. You'll need to purchase |cRXP_WARN_certain items from the auction house to take full advantage of this|r. If necessary,|cRXP_WARN_you can transfer gold from your other characters to make these purchases|r. However, if you find that you can't afford everything, |cRXP_WARN_It's still worthwhile to visit the Darkmoon Faire for the temporary experience buff and to buy only some of the items|r.
--     >>|cRXP_WARN_It is recommended to log in with a different character possessing at least 10,000 gold. Use this character to purchase the items and then send them over|r.
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Auctioneer Fitch|r.
--     .collect 71715,1
--     .collect 71638,1
--     .collect 71637,1
--     .collect 71636,1
--     .collect 71635,1
--     .collect 71952,1
--     .collect 71951,1
--     .collect 71953,1
--     .collect 71716,1
--     .target Auctioneer Fitch
--     .target Auctioneer Jaxon
--     .target Auctioneer Chilton
--     .dmf
--     .isQuestTurnedIn 58877 --x New Type of DK Check
-- step
--     #fresh
--     #completewith DarkMoonFaire
--     +The Darkmoon Faire event is now active, |cRXP_WARN_which guarantees you to gain an additional level for free and a temporary 10% experience boost|r.
--     .isQuestTurnedIn 58902 --x New Type of DK Check
-- step
--     #completewith next
--     .link /run AbandonSkill(186); AbandonSkill(182);>> |cRXP_WARN_Click this text to receive a macro that will unlearn your professions|r.
--     .dmf
--     .isQuestTurnedIn 58902 --x New Type of DK Check
-- step
--     #label DarkMoonFaire
--     .goto 84,62.25,72.96
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage|r.
--     .accept 7905 >>Accept The Darkmoon Faire
--     .target Darkmoon Faire Mystic Mage
--     .dmf
--     .isQuestTurnedIn 58902 --x New Type of DK Check
-- step
--     .goto 84,62.25,72.96
--     +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage|r.
--     .skipgossip
--     .zoneskip 37
--     .dmf
--     .isQuestTurnedIn 58902  --x new type of dk check
--     .target Darkmoon Faire Mystic Mage
-- step
--     .goto 84,64.63,70.45,25,0
--     .goto 84,68.29,74.57,25,0
--     .goto 84,70.92,72.45
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r.
--     .fly Goldshire >>Fly to Goldshire
--     .target Dungar Longdrink
--     .isQuestTurnedIn 58877 --x New DK Check
--     .nodmf
]])

-- =================================
-- =======  ALLIANCE  ZONES ========
-- =================================

--Draenei Ammen Vale
RXPGuides.RegisterGuide([[
#retail
#version 2
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(1-80)|r Default
#name ab) Ammen Vale
#displayname Ammen Vale |cRXP_ENEMY_(Alternative)|r
#defaultfor Draenei !DK
#next ac) Draenei Azuremyst Isle

<< Alliance 

step
    #completewith next
    +Welcome to the |cRXP_WARN_Draenei Starting Zone|r. Guide by RestedXP.
    *Without consumables or heirlooms, this route is approximately 5 minutes slower than |cRXP_WARN_Exile's Reach|r For faster leveling, consider recreating your character and selecting |cRXP_WARN_Exile's Reach|r instead.
step
    .goto 468,61.21,29.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Megelon|r.
    .accept 9279 >>Accept You Survived!
	.target Megelon
step
    .goto 468,52.75,35.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Proenitus|r.
    .turnin 9279 >>Turn in You Survived!
    .accept 9280 >>Accept Replenishing the Healing Crystals
	.target Proenitus
step
    #loop
    .goto 468,49.59,30.55,40,0
    .goto 468,53.92,27.74,40,0
    .goto 468,53.33,21.41,40,0
    .goto 468,45.1,22.63,40,0
    .goto 468,44.45,26.97,40,0
    .goto 468,46.91,34.21,40,0
    .goto 468,41.99,33.66,40,0
    .goto 468,37.3,28.15,40,0
    >>Kill |cRXP_ENEMY_Vale Moths|r and loot them for [|cRXP_LOOT_Vial of Moth Blood|r].
    .complete 9280,1 --6/6 Vial of Moth Blood
	.mob Vale Moth
step
    .goto 468,52.7,35.9,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Proenitus|r.
    .turnin 9280 >>Turn in Replenishing the Healing Crystals
    .accept 9409 >>Accept Urgent Delivery!
	.target Proenitus
step
    #loop
    .goto 468,52.53,41.11,20,0
    .goto 468,52.2,43.6,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zalduun|r.
    .turnin 9409 >>Turn in Urgent Delivery!
    .accept 9283 >>Accept Rescue the Survivors!
	.target Zalduun
step
    .goto 468,52.67,37.18,10,0
    .goto 468,52.7,35.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Proenitus|r.
    .accept 9371 >>Accept Botanist Taerix
	.target Proenitus
step
    .goto 468,49.87,37.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Taerix|r.
    .turnin 9371 >>Turn in Botanist Taerix
    .accept 10302 >>Accept Volatile Mutations
	.target Botanist Taerix
step
    #hidewindow
    #completewith Volatile Mutation
    #loop
    .goto 468,49.82,25.72,40,0
    .goto 468,43.97,27.98,40,0
    .goto 468,48.04,31.81,40,0
    .goto 468,45.6,33.35,40,0
    .goto 468,43.08,37.97,40,0
    .goto 468,40.97,38.32,40,0
    .goto 468,36.91,38.34,40,0
    .goto 468,36.71,47.07,40,0
    .goto 468,34.91,50.42,40,0
    .goto 468,40.41,45.1,40,0
    +1
step
    #completewith next
    >>Kill |cRXP_ENEMY_Volatile Mutations|r.
    .complete 10302,1 --8/8 Volatile Mutation slain
	.mob Volatile Mutation
step
    >>Use |T135923:0|t[Gift of the Naaru] on |cRXP_FRIENDLY_Draenei Survivor|r |cRXP_WARN_ideally|r from a distance.
    .complete 9283,1 --1/1 Draenei Survivors Saved
    .use 370626
    .target Draenei Survivor
step
    #label Volatile Mutation
    >>Kill |cRXP_ENEMY_Volatile Mutations|r.
    .complete 10302,1 --8/8 Volatile Mutation slain
	.mob Volatile Mutation
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Taerix|r and |cRXP_FRIENDLY_Apprentice Vishael|r.
    .turnin 10302 >>Turn in Volatile Mutations
    .accept 9293 >>Accept What Must Be Done...
    .goto 468,49.87,37.34
    .accept 9799 >>Accept Botanical Legwork
    .goto 468,49.72,37.51
	.target Botanist Taerix
    .target Apprentice Vishael
step
    #hidewindow
    #completewith Corrupted Flower
    #loop
    .goto 468,40.02,39.98,40,0
    .goto 468,33.42,44.36,40,0
    .goto 468,38.59,49,40,0
    .goto 468,40.81,41.07,40,0
    .goto 468,37.55,52.77,40,0
    .goto 468,33.03,48.81,40,0
    +1
step
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Corrupted Flowers|r.
    .complete 9799,1 --3/3 Corrupted Flower
step
    >>Kill |cRXP_ENEMY_Mutated Root Lashers|r and loot them for their [|cRXP_LOOT_Lasher Samples|r].
    .complete 9293,1 --10/10 Lasher Sample
	.mob Root Lasher
step
    #label Corrupted Flower
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Corrupted Flowers|r.
    .complete 9799,1 --3/3 Corrupted Flower
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Vishael|r and |cRXP_FRIENDLY_Botanist Taerix|r.
    .turnin 9799 >>Turn in Botanical Legwork
    .goto 468,49.72,37.54
    .turnin 9293 >>Turn in What Must Be Done...
    .accept 9294 >>Accept Healing the Lake
    .goto 468,49.87,37.34
	.target Apprentice Vishael
    .target Botanist Taerix
step
    #loop
    .goto 468,52.53,41.11,20,0
    .goto 468,52.2,43.6,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zalduun|r.
    .turnin 9283 >>Turn in Rescue the Survivors!
	.target Zalduun
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Technician Zhanaa|r and |cRXP_FRIENDLY_Vindicator Aldar|r.
    .accept 37445 >>Accept Spare Parts
    .goto 468,50.52,47.93
    .accept 37444 >>Accept Inoculation
    .goto 468,50.65,48.76
	.target Technician Zhanaa
    .target Vindicator Aldar
step
    .isOnQuest 9294
    #completewith next
    +|cFFFF0000[TIP]|r To set up keybindings for |cRXP_WARN_quest items, target and mob frames, or to delete the cheapest junk item,|r press Escape to open the Options menu, go to Keybindings, and find RestedXP Guides.
step
    .goto 468,45.85,62.9
    >>Use the |T132858:0|t[Neutralizing Agent] |cRXP_WARN_at the water|r.
    .use 22955
    .complete 9294,1 --1/1 Disperse the Neutralizing Agent
step
    #hidewindow
    #completewith inoculated
    #loop
    .goto 468,57.23,65.1,40,0
    .goto 468,56.16,60.24,30,0
    .goto 468,57.57,68.94,27,0
    .goto 468,53.48,68.31,40,0
    .goto 468,58.99,70.58,30,0
    .goto 468,64.21,65.6,30,0
    .goto 468,61.99,63.22,20,0
    .goto 468,62.18,63.4,40,0
    .goto 468,64.27,63.71,40,0
    .goto 468,64.29,67.43,40,0
    .goto 468,71.05,74.32,40,0
    .goto 468,65.41,81.11,40,0
    .goto 468,63.01,78.3,40,0
    .goto 468,60.77,78.5,40,0
    .goto 468,61.85,84.54,40,0
    .goto 468,64.18,88.65,40,0
    .goto 468,65.24,84.26,40,0
    +1
step
    #completewith next
    >>Use the |T132775:0|t[Inoculating Crystal] on |cRXP_ENEMY_Nestlewood Owlkins|r.
    .use 22962
    .complete 37444,1 --6/6 Nestlewood Owlkin inoculated
	.mob Nestlewood Owlkin
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Spare Parts|r.
    .complete 37445,1 --4/4 Emitter Spare Part
step
    >>Use the |T132775:0|t[Inoculating Crystal] on |cRXP_ENEMY_Nestlewood Owlkins|r.
    .use 22962
    .complete 37444,1 --6/6 Nestlewood Owlkin inoculated
	.mob Nestlewood Owlkin
step
    .isOnQuest 9294
    #label inoculated
    >>|cRXP_WARN_RXP Guides frequently employ death skips as a strategy to swiftly reach their targeted locations|r.
    .deathskip >> Die and respawn at the Crash Site
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Taerix|r.
    .turnin 9294 >>Turn in Healing the Lake
    .goto 468,49.86,37.36
	.target Botanist Taerix
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aldar|r and |cRXP_FRIENDLY_Technician Zhanaa|r.
    .turnin 37445 >>Turn in Spare Parts
    .goto 468,50.5,47.9
	.target +Technician Zhanaa
    .turnin 10304 >>Turn in Vindicator Aldar
    .turnin 37444 >>Turn in Inoculation
    .accept 9309 >>Accept The Missing Scout
    .goto 468,50.6,48.7
	.target +Vindicator Aldar
step
    .goto 468,37.13,61.57,40,0
    .goto 468,33.91,69.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tolaan|r.
    .turnin 9309 >>Turn in The Missing Scout
    .accept 10303 >>Accept The Blood Elves
	.target Tolaan
step
    #loop
    .goto 468,31.64,76.45,40,0
    .goto 468,28.95,71.2,40,0
    .goto 468,26.4,77.56,40,0
    .goto 468,30.91,78.83,40,0
    >>Kill |cRXP_ENEMY_Blood Elf Scouts|r.
    .complete 10303,1 --10/10 Blood Elf Scout slain
	.mob Blood Elf Scout
step
    .goto 468,33.91,69.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tolaan|r.
    .turnin 10303 >>Turn in The Blood Elves
    .accept 9311 >>Accept Blood Elf Spy
	.target Tolaan
step
    .goto 468,27.8,80.41
    >>Kill |cRXP_ENEMY_Surveyor Candress|r and loot her for her [|cRXP_LOOT_Blood Elf Plans|r].
    .complete 9311,1 --1/1 Surveyor Candress slain
step
	>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Blood Elf Plans|r.
    .accept 9798 >>Accept Blood Elf Plans
    .use 24414
	.target Surveyor Candress
step
    .isOnQuest 9311
    #completewith next
    .goto 468,26.67,75.62,40,0
    .goto 468,29.6,78.2,40,0
    .goto 468,32.85,73.76,40,0
    .goto 468,28.99,71.46,40,0
    .deathskip >> Die and respawn at the Crash Site
step
    .goto 468,50.66,48.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aldar|r.
    .turnin 9311 >>Turn in Blood Elf Spy
    .turnin 9798 >>Turn in Blood Elf Plans
    .accept 9312 >>Accept The Emitter
	.target Vindicator Aldar
step
    .goto 468,50.51,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Technician Zhanaa|r.
    .turnin 9312 >>Turn in The Emitter
    .accept 9313 >>Accept Travel to Azure Watch
	.target Technician Zhanaa
]])

--Draenei Azuremyst Isle
RXPGuides.RegisterGuide([[
#retail
#version 2
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(1-80)|r Default
#name ac) Draenei Azuremyst Isle
#displayname |cFF00CCFF2|r - Azuremyst Isle
#defaultfor Draenei !DK
#next a) Elwynn Forest

<< Alliance

step
    .goto 97,64.5,54.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeun|r.
    .accept 9314 >>Accept Word from Azure Watch
	.target Aeun
step
    .goto 97,49.78,51.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon|r.
    .accept 9454 >>Accept The Great Moongraze Hunt
	.target Acteon
step
    .goto 97,48.68,52.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valn|r.
    .train 2366 >> Train |T4620675:0|tHerbalism
	.skipgossip 47431,1,1,1
	.target Valn
step
    .goto 97,48.68,52.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valn|r.
    .train 2575 >> Train |T4620679:0|tMining
	.skipgossip 47431,2,3,2
	.target Valn
step
    #completewith home
    +|cRXP_WARN_Only gather herbs or mine ores for experience when they are immediately nearby|r.
step
    #completewith next
    .vendor >>Talk to |cRXP_FRIENDLY_Otonambusi|r, buy bags if you need |cRXP_WARN_(don't sell Moongraze Stag Tenderloin)|r.
	.target Otonambusi
step
    .goto 97,48.39,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Fateema|r.
    .accept 9463 >>Accept Medicinal Purpose
	.target Anchorite Fateema
step
    .goto 97,48.97,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dulvi|r.
    .accept 10428 >>Accept The Missing Fisherman
	.target Dulvi
step
    .goto 97,48.72,50.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Technician Dyvuun|r.
    .turnin 9313 >>Turn in Travel to Azure Watch
	.target Technician Dyvuun
step
    .goto 97,48.34,49.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caregiver Chellan|r.
    .turnin 9314,1 >>Turn in Word from Azure Watch
    .accept 9603 >>Accept Bds, Bandages, and Beyond
	.target Caregiver Chellan
step
	#label home
    #completewith next
    .goto 97,48.34,49.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caregiver Chellan|r.
    .home >>Set your |cRXP_WARN_Hearthstone to Azure Watch|r.
	.target Caregiver Chellan
step
    .goto 97,48.8,49.97,17,0
    .goto 97,49.72,49.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaldaan|r.
    .turnin 9603 >>Turn in Beds, Bandages, and Beyond
    .accept 9604 >>Accept On the Wings of a Hippogryph
	.target Zaldaan
step
    #completewith Root Trapper Vine
    >>Kill |cRXP_ENEMY_Moongraze Stags|r and |cRXP_ENEMY_Moongraze Buck|r and loot them for [|cRXP_LOOT_Moongraze Stag Tenderloin|r].
    .complete 9454,1 --6/6 Moongraze Stag Tenderloin
	.mob Moongraze Stag
	.mob Moongraze Buck
step
    #loop
    .goto 97,51.48,44.08,40,0
    .goto 97,52.08,41.08,40,0
    .goto 97,49.84,40.35,40,0
    .goto 97,47.37,41.81,40,0
    .goto 97,43.6,41.92,40,0
    .goto 97,43.52,45.58,40,0
    .goto 97,45.73,45.09,40,0
    >>Kill |cRXP_ENEMY_Infected Nightstalker Runts|r and loot them for the [|cRXP_LOOT_Faintly Glowing Crystal|r].
	.collect 23678,1,9455
    .accept 9455 >>Accept Strange Findings
    .use 23678
	.mob Infected Nightstalker Runt
step
    #hidewindow
    #completewith Root Trapper Vine
    #loop
    .goto 97,54.34,46.83,40,0
    .goto 97,55.34,44.58,40,0
    .goto 97,57.05,44.93,40,0
    .goto 97,57.82,46.96,40,0
    .goto 97,58.52,48.68,40,0
    .goto 97,59.29,51.17,40,0
    .goto 97,54.91,50.18,40,0
    .goto 97,53.97,49.63,40,0
    .goto 97,52.69,55.47,40,0
    .goto 97,50.89,59.6,40,0
    .goto 97,50.87,61.64,40,0
    .goto 97,52.33,61.18,40,0
    .goto 97,55.12,60.71,40,0
    .goto 97,58.15,60.18,40,0
    .goto 97,59.16,56.12,40,0
    +1
step
    >>Kill |cRXP_ENEMY_Root Trappers|r and loot them for [|cRXP_LOOT_|T134196:0|t[Root Trapper Vine]|r].
    .complete 9463,1 --8/8 Root Trapper Vine
	.mob Root Trapper
step
    #label Root Trapper Vine
	>>Kill |cRXP_ENEMY_Moongraze Stags|r and |cRXP_ENEMY_Moongraze Buck|r and loot them for [|cRXP_LOOT_|T134025:0|t[Moongraze Stag Tenderloin.]|r].
    .complete 9454,1 --6/6 Moongraze Stag Tenderloin
	.mob Moongraze Stag
	.mob Moongraze Buck
step
    .goto 97,49.78,51.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon|r.
    .turnin 9454 >>Turn in The Great Moongraze Hunt
    .accept 10324 >>Accept The Great Moongraze Hunt
	.target Acteon
step
    .goto 97,48.39,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Fateema|r.
    .turnin 9463 >>Turn in Medicinal Purpose
	.target Anchorite Fateema
step
    .goto 97,48.40,51.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daedal|r.
    .accept 9473 >>Accept An Alternative Alternative
	.target Daedal
step
    .goto 97,47.12,50.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Menelaous|r.
    .turnin 9455 >>Turn in Strange Findings
    .accept 9623 >>Accept Coming of Age
    .accept 9456 >>Accept Nightstalker Clean Up, Isle 2...
	.target Exarch Menelaous
step
    #loop
    .goto 97,47.16,54.21,40,0
    .goto 97,45.81,55.32,40,0
    .goto 97,46.65,58.67,40,0
    .goto 97,49.8,60.22,40,0
    .goto 97,52.35,59.31,40,0
    .goto 97,53.71,56.86,40,0
    .goto 97,50.31,53.83,40,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Azure Snapdragon|r located on the ground.
    *|cRXP_WARN_They should be visible on the minimap|r.
    .complete 9473,1 --5/5 Azure Snapdragon Bulb
step
    .goto 97,46.68,70.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Cookie" McWeaksauce|r.
    .accept 9512 >>Accept Cookie's Jumbo Gumbo
	.target "Cookie" McWeaksauce
step
    .goto 97,47.03,70.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus|r.
    .accept 9506 >>Accept A Small Start
	.target Admiral Odesyus
step
    #loop
    .goto 97,48.46,72.42,40,0
    .goto 12,32.6,29.33,40,0
    .goto 97,50.62,70.09,40,0
    .goto 97,52.19,70.56,40,0
    .goto 97,53.46,70.76,40,0
    .goto 97,55.61,70.39,40,0
    .goto 97,57.13,70.18,40,0
    .goto 97,59.12,69.89,40,0
    .goto 97,60.64,70.09,40,0
    .goto 97,61.62,68.49,40,0
    >>Kill |cRXP_ENEMY_Skittering Crawlers|r and loot them for [|cRXP_LOOT_|T134007:0|t[Skittering Crawler Meats.]|r].
    .complete 9512,1 --6/6 Skittering Crawler Meat
	.mob Skittering Crawler
step
    .goto 97,59.57,67.65
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Nautical Compass|r |cRXP_WARN_in the small camp|r.
    .complete 9506,1 --1/1 Nautical Compass
step
    .goto 97,58.60,66.36
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Nautical Map|r |cRXP_WARN_in the small camp|r.
    .complete 9506,2 --1/1 Nautical Map
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus|r.
    .turnin 9506 >>Turn in A Small Start
    .accept 9530 >>Accept I've Got a Plant
    .goto 97,47.03,70.20
	.target +Admiral Odesyus
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Kyleen|r and |cRXP_FRIENDLY_Archaeologist Adamant Ironheart|r.
    .accept 9513 >>Accept Reclaiming the Ruins
    .goto 97,47.13,70.28
	.target +Priestess Kyleen
    .accept 9523 >>Accept Precious and Fragile Things Need Special Handling
    .goto 97,47.24,70.00
    .target +Archaeologist Adamant Ironheart
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Cookie" McWeaksauce|r.
    .turnin 9512 >>Turn in Cookie's Jumbo Gumbo
    .goto 97,46.69,70.53
	.target +"Cookie" McWeaksauce
step
    #loop
    .goto 97,50.66,66.93,40,0
    .goto 97,51.81,65.36,40,0
    .goto 97,50.96,64.48,40,0
    .goto 97,50.19,62.67,40,0
    .goto 97,48.99,61.85,40,0
    .goto 97,49.29,63.22,40,0
    .goto 97,48.25,64.9,40,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the|cRXP_PICK_Tree Stump|r and |cRXP_PICK_Piles of Leaves|r.
    .complete 9530,2 --5/5 Pile of Leaves
    .complete 9530,1 --1/1 Hollowed Out Tree
step
    .goto 97,47.04,70.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus|r.
    .turnin 9530 >>Turn in I've Got a Plant
    .accept 9531 >>Accept Tree's Company
	.target Admiral Odesyus
step
    #hidewindow
    #completewith Wrathscale
    #loop
    .goto 97,45.85,71.97,30,0
    .goto 97,41.36,74.99,30,0
    .goto 97,39.63,75.2,30,0
    .goto 97,37.86,80.73,30,0
    .goto 97,35.02,80.97,30,0
    .goto 97,35.57,77.98,30,0
    .goto 97,34.43,76.67,30,0
    .goto 97,33.76,79.13,30,0
    .goto 97,31.23,77.58,30,0
    .goto 97,29.91,78.67,30,0
    .goto 97,27.92,79.45,30,0
    .goto 97,26.14,77.96,30,0
    .goto 97,29.22,76.68,30,0
    +1
step
    #completewith next
    >>Kill |cRXP_ENEMY_Nagas|r and loot them for [|cRXP_LOOT_|T134462:0|t[Rune Covered Tablet.]|r].
    -- *|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rune Covered Tablet|r.
	.collect 23759,1,9514
    .accept 9514 >>Accept Rune Covered Tablet
    .complete 9513,1 --5/5 Wrathscale Myrmidon slain
    .complete 9513,2 --5/5 Wrathscale Naga slain
    .complete 9513,3 --5/5 Wrathscale Siren slain
	.mob Wrathscale Myrmidon
	.mob Wrathscale Naga
	.mob Wrathscale Siren
    .use 23759
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ancient Relics|r located on the ground.
    .complete 9523,1 --8/8 Ancient Relic
step
    #label Wrathscale
    >>Kill |cRXP_ENEMY_Nagas|r and loot them for [|cRXP_LOOT_|T134462:0|t[Rune Covered Tablet.]|r].
    -- *|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rune Covered Tablet|r.
	.collect 23759,1,9514
    .accept 9514 >>Accept Rune Covered Tablet
    .complete 9513,1 --5/5 Wrathscale Myrmidon slain
    .complete 9513,2 --5/5 Wrathscale Naga slain
    .complete 9513,3 --5/5 Wrathscale Siren slain
	.mob Wrathscale Myrmidon
	.mob Wrathscale Naga
	.mob Wrathscale Siren
    .use 23759
step
    #hidewindow
    #completewith Infected Nightstalker Runt
    #loop
    .goto 97,28.5,73.33,40,0
    .goto 97,32.05,71.43,40,0
    .goto 97,32.63,65.74,40,0
    .goto 97,24.98,73.92,40,0
    +1
step
    #completewith next
    >>Kill |cRXP_ENEMY_Infected Nightstalker Runts|r.
    .complete 9456,1 --8/8 Infected Nightstalker Runt slain
	.mob Infected Nightstalker Runt
step
    >>Kill |cRXP_ENEMY_Moongraze Bucks|r and loot them for[|cRXP_LOOT_|T134346:0|tMoongraze Buck Hides|r].
    .complete 10324,1 --6/6 Moongraze Buck Hide
	.mob Moongraze Buck
step
    #label Infected Nightstalker Runt
    >>Kill |cRXP_ENEMY_Infected Nightstalker Runts|r.
    .complete 9456,1 --8/8 Infected Nightstalker Runt slain
	.mob Infected Nightstalker Runt
step
    .isOnQuest 9531
    .goto 97,18.8,83.46,10,0
    .goto 97,18.37,86.32,10,0
    .goto 97,16.59,94.46
    .aura 30298 >>Use the |T132288:0|t[Tree Disguise Kit] near the |cRXP_WARN_Red Flag|r.
    .use 23792
step
    #completewith next
    .aura -30298 >> Right click off the Tree Disguise Kit buff
    .link /cancelaura Tree Disguise Kit >>|TInterface/cursor/crosshair/interact.blp:20|tClick here for a macro. Paste this into the chat.
step
    .goto 97,15.26,92.24
    >>|cRXP_WARN_Follow the Arrow|r.
    .complete 9531,1 --1/1 The Traitor Uncovered
step
    #label QuestKeybindingsDraenei2
    .goto 97,16.59,94.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cowlen|r.
    .turnin 10428 >>Turn in The Missing Fisherman
    .accept 9527 >>Accept All That Remains
	.target Cowlen
step
    .goto 97,14.58,90.66
    >>Kill |cRXP_ENEMY_Owlbeasts|r and loot them for the [|cRXP_LOOT_Remain's of Cowlen's Family|r].
    .complete 9527,1 --1/1 Remains of Cowlen's Family
step
    #sticky
    .goto 97,16.59,94.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cowlen|r.
    .turnin 9527 >>Turn in All That Remains
	.target Cowlen
step
    #completewith next
    .deathskip >> Die to the |cRXP_ENEMY_Owlbeasts|r Respawn |cRXP_WARN_at Azure Watch|r.
step
    .goto 97,47.04,70.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus|r.
    .turnin 9531 >>Turn in Tree's Company
    .accept 9537 >>Accept Show Gnomercy
	.target Admiral Odesyus
step
    .goto 97,47.13,70.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r.
    .turnin 9513 >>Turn in Reclaiming the Ruins
	.target Priestess Kyleen Il'dinare
step
    .goto 97,47.14,70.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r.
    .turnin 9514 >>Turn in Rune Covered Tablet
	.target Priestess Kyleen Il'dinare
step
    .goto 97,47.23,69.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Adamant Ironheart|r.
    .turnin 9523 >>Turn in Precious and Fragile Things Need Special Handling
	.target Archaeologist Adamant Ironheart
step
    .goto 97,48.56,71.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer "Spark" Overgrind|r.
    >>|cRXP_WARN_Wait for the Roleplay,|r Kill |cRXP_ENEMY_Engineer "Spark" Overgrind|r and loot him for [|cRXP_LOOT_Traitor's Communication|r].
    .complete 9537,1 --1/1 Traitor's Communication
    .skipgossip
    .mob Engineer "Spark" Overgrind
step
    .goto 97,47.04,70.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus|r.
    .turnin 9537,1 >>Turn in Show Gnomercy
    .accept 9602 >>Accept Deliver Them From Evil...
	.target Admiral Odesyus
step
    #completewith next
    .hs >> Hearthstone |cRXP_WARN_to Azure Watch|r.
step
    .goto 97,49.78,51.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon|r.
    .turnin 10324 >>Turn in The Great Moongraze Hunt
	.target Acteon
step
    .goto 97,48.39,51.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daedal|r.
    .turnin 9473 >>Turn in An Alternative Alternative
	.target Daedal
step
    .goto 97,47.12,50.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Menelaous|r.
    .turnin 9602 >>Turn in Deliver Them From Evil...
    .turnin 9456 >>Turn in Nightstalker Clean Up, Isle 2...
	.target Exarch Menelaous
step
    .goto 103,81.51,51.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torallius the Pack Handler|r.
    .turnin 9623 >>Turn in Coming of Age
	.target Torallius the Pack Handler
step
    .goto 103,75.17,53.85,20,0
    .goto 103,73.55,39.76,20,0
    .goto 103,66.18,33.78,20,0
    .goto 103,62.49,43.7,20,0
    .goto 103,57.03,50.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nurguni|r |cRXP_WARN_inside The Exodar|r.
    .turnin 9604 >>Turn in On the Wings of a Hippogryph
    .accept 9605 >> Accept Hippogryph Master Stephanos
	.target Nurguni
step
    .goto 103,55.07,47.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hero's Herald|r.
    .accept 46727 >>Accept Tides of War
	.target Hero's Herald
step
    .goto 103,54.49,36.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stephanos|r.
    .turnin 9605 >>Turn in Hippogryph Master Stephanos
	.target Stephanos
step
    .nodmf
    .goto 103,48.34,62.9,5 >> |TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Stormwind Portal|r.
    .zoneskip 84
step
    #completewith next
    .goto 84,49.36,86.76,10,0
    .goto 84,53.58,85.4,15,0
    .goto 84,53.95,79.25,15,0
    .goto 84,55.54,76.05,20,0
    .goto 84,60.00,71.95,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hero's Herald|r.
    .accept 46727 >>Accept Tides of War
	.target Hero's Herald
    .nodmf
step
    .goto 84,49.36,86.76,10,0
    .goto 84,53.58,85.4,15,0
    .goto 84,53.95,79.25,15,0
    .goto 84,55.54,76.05,20,0
    .goto 84,60.00,71.95,20,0
    .goto 84,63.77,73.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renato Gallina|r.
    .accept 332 >>Accept Wine Shop Advert
	.target Renato Gallina
    .nodmf
step
    .goto 84,67.49,80.56,20,0
    .goto 84,67.03,83.44,20,0
    .goto 84,69.76,84.87,20,0
    .goto 37,41.71,64.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartlett the Brave|r |cRXP_WARN_in Goldshire|r.
    .fp >>Get the Goldshire Flight Path
	.target Bartlett the Brave
    .nodmf
step
    #veteran
    .goto 103,61,52.56,5,0
    .goto 103,63.23,58.75
    +The Darkmoon Faire event is now active, |cRXP_WARN_which guarantees you to gain an additional level for free and a temporary 10% experience boost|r You'll need to purchase |cRXP_WARN_certain items from the auction house to take full advantage of this|r If necessary,|cRXP_WARN_you can transfer gold from your other characters to make these purchases|r However, if you find that you can't afford everything, |cRXP_WARN_It's still worthwhile to visit the Darkmoon Faire for the temporary experience buff and to buy only some of the items|r.
    >>|cRXP_WARN_It is recommended to log in with a different character possessing at least 10,000 gold. Use this character to purchase the items and then send them over|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Auctioneer Iressa|r.
    .collect 71715,1
    .collect 71638,1
    .collect 71637,1
    .collect 71636,1
    .collect 71635,1
    .collect 71952,1
    .collect 71951,1
    .collect 71953,1
    .collect 71716,1
    .target Auctioneer Iressa
    .dmf
step
    #fresh
    #completewith DarkMoonFaire
    +The Darkmoon Faire event is now active, |cRXP_WARN_which guarantees you to gain an additional level for free and a temporary 10% experience boost|r.
    .dmf
step
    #completewith next
    .link /run AbandonSkill(186); AbandonSkill(182);>> |cRXP_WARN_Click on this text to receive a macro that will unlearn your professions|r.
    .dmf
step
    #label DarkMoonFaire
    .goto 103,51.34,42.03
    .zoneskip 37 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage|r.
    .accept 7905 >>Accept The Darkmoon Faire
	.target Darkmoon Faire Mystic Mage
    .dmf
step
    .goto 84,62.10,32.18
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage|r.
    .zoneskip 37
    .skipgossip
	.target Darkmoon Faire Mystic Mage
    .dmf
]])

--Dwarf Coldridge Vallley
RXPGuides.RegisterGuide([[
#retail
#version 2
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(1-80)|r Default
#name ab) Dwarf Coldridge Vallley
#displayname Coldridge Vallley |cRXP_ENEMY_(Alternative)|r
#defaultfor Dwarf !DK
#next ac) Dwarf & Gnome Dun Morogh

<< Alliance

step
    #completewith next
    +Welcome to the |cRXP_WARN_Dwarf Starting Zone|r. Guide by RestedXP.
    *Without consumables or heirlooms, this route is approximately 5 minutes slower than |cRXP_WARN_Exile's Reach|r. For faster leveling, consider recreating your character and selecting |cRXP_WARN_Exile's Reach|r instead.
step
    .goto 427,67.28,41.62  --clickradius
    .goto 27,36.872,70.045  --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joren Ironstock|r.
    .accept 24469 >>Accept Hold the Line!
	.target Joren Ironstock
step
    #loop
    .goto 427,68.68,47.37,10,0
    .goto 427,63.75,47.23,10,0
    .goto 427,63.2,43.67,24,0
    .goto 427,59.38,48.48,30,0
    .goto 427,70.59,53.09,10,0
    >>Kill |cRXP_ENEMY_Rockjaw Invaders|r.
    .complete 24469,1 --Rockjaw Invader (6)
	.mob Rockjaw Invader
step
    .goto 427,66.79,41.91 --clickradius
    .goto 27,36.872,70.045 --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joren Ironstock|r.
    .turnin 24469 >>Turn in Hold the Line!
    .accept 24470 >>Accept Give 'em What-For
	.target Joren Ironstock
step
    .goto 427,65.47,43.23
    .goto 427,65.89,44.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sten Stoutarm|r.
    .accept 24471 >>Accept Aid for the Wounded
	.target Sten Stoutarm
-- step << skip
--     #completewith next
--     +|cRXP_WARN_To enable keybinding for quest items, follow these steps:|r
--     *[1] Press the |cRXP_WARN_Escape key|r.
--     *[2] Select |cRXP_WARN_Options|r.
--     *[3] Navigate to |cRXP_WARN_Keybindings|r.
--     *[4] Within |cRXP_WARN_Keybindings|r, find |cRXP_WARN_RestedXP Guides|r
--     *[5] Select and bind the |cRXP_WARN_Active Buttons|r.
step
    #hidewindow
    #completewith Rockjaw Goons
    #loop
    .goto 427,55.95,49.85,25,0
    .goto 427,60.67,59.03,25,0
    .goto 427,75.17,55.16,40,0
    +1
step
    #completewith next
    >>Kill |cRXP_ENEMY_Rockjaw Goons|r
    .complete 24470,1 --Rockjaw Goon (3)
	.mob Rockjaw Goon
step
    >>Use |T133675:0|t[Sten's First Aid Kit] on |cRXP_FRIENDLY_Wounded Coldridge Mountaineers|r |cRXP_WARN_they are kneeling|r.
    *|cRXP_WARN_You can do this from a 5 yard distance|r.
    .complete 24471,1 --Wounded Coldridge Mountaineers Aided (4)
	.target Wounded Coldridge Mountaineer
	.use 49743
step
    #label Rockjaw Goons
    >>Kill |cRXP_ENEMY_Rockjaw Goons|r
    .complete 24470,1 --Rockjaw Goon (3)
	.mob Rockjaw Goon
step
    #completewith next
    #label Aid for the Wounded
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sten Stoutarm|r.
    .turnin 24471 >>Turn in Aid for the Wounded
	.target Sten Stoutarm
step
    #completewith Aid for the Wounded
    #title |cFFFCDC00Follow the Arrow|r
    .goto 427,65.46,43.86,40 >>Head to the Questgiver, efficiently killing monsters along the way without stopping |cRXP_WARN_only if you can't mount and have a way to do it|r.
step
    #requires Aid for the Wounded
    .goto 427,65.46,43.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sten Stoutarm|r.
    .turnin 24471 >>Turn in Aid for the Wounded
	.target Sten Stoutarm
step
    .goto 427,66.79,41.91 --clickradius
    .goto 27,36.872,70.045 --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joren Ironstock|r.
    .turnin 24470 >>Turn in Give 'em What-For
    .accept 24473 >>Accept Lockdown in Anvilmar
	.target Joren Ironstock
step
    #completewith next
    #label Lockdown in Anvilmar
    .goto 427,62.47,30.28,10,0
    .goto 427,61.87,27.51,10,0
    .goto 427,61.87,26.1,5,0
    .goto 427,62.53,24.98,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jona Ironstock|r.
    .turnin 24473 >>Turn in Lockdown in Anvilmar
    .accept 24474 >>Accept First Things First: We're Gonna Need Some Beer
    .disablecheckbox
	.target Jona Ironstock
step
    #completewith Lockdown in Anvilmar
    .goto 427,61.7,22.06,20 >> Enter Anvilmar
step
    #requires Lockdown in Anvilmar
    .goto 427,61.7,22.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jona Ironstock|r.
    .turnin 24473 >>Turn in Lockdown in Anvilmar
    .accept 24474 >>Accept First Things First: We're Gonna Need Some Beer
	.target Jona Ironstock
step
    .goto 27,35.801,66.256
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grundel Harkin|r.
    .accept 24477 >>Accept Dwarven Artifacts
	.target Grundel Harkin
step
    #completewith next
    #label Cask of Gnomenbrau
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Keg of Gnomenbrau|r
    .complete 24474,3,1 --Cask of Gnomenbrau (1)
step
    #completewith Cask of Gnomenbrau
    .goto 427,61.71,28.85,10 >> Exit Anvilmar
step
    #requires Cask of Gnomenbrau
    #hidewindow
    #completewith Forgotten Dwarven Artifacts
    #loop
    .goto 427,62.31,32.29,10,0
    .goto 427,67.39,32.96,20,0
    .goto 427,71.47,28.57,30,0
    .goto 427,66.9,28.54,15,0
    .goto 427,64.94,30.27,5,0
    .goto 427,62.52,30.5,10,0
    .goto 427,60.02,30.05,10,0
    .goto 427,55.56,28.67,10,0
    .goto 427,55.03,24.18,15,0
    .goto 427,52.49,27.3,10,0
    .goto 427,48.4,28.52,15,0
    .goto 427,48.97,32.32,10,0
    .goto 427,46.99,31.44,15,0
    .goto 427,38.76,29.48,10,0
    .goto 427,34.83,30.78,10,0
    .goto 427,32.19,30.85,10,0
    .goto 427,30.89,33.19,20,0
    .goto 427,26.96,36.69,20,0
    .goto 427,23.17,33.56,20,0
    .goto 427,26.85,30.57,20,0
    +1
step
    #requires Cask of Gnomenbrau
    #completewith Cask of Theramore Pale Ale
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Forgotten Dwarven Artifacts|r
    .complete 24477,1 --Forgotten Dwarven Artifacts	(5)
step
    #requires Cask of Gnomenbrau
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Keg of Gnomenbrau|r
    .complete 24474,3 --Cask of Gnomenbrau (1)
step
    #requires Cask of Gnomenbrau
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Keg of Stormhammer Stout|r
    .complete 24474,1 --Cask of Stormhammer Stout (1)
step
    #requires Cask of Gnomenbrau
    #label Cask of Theramore Pale Ale
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Keg of Theramore Pale Ale|r
    .complete 24474,2 --Cask of Theramore Pale Ale (1)
step
    #requires Cask of Gnomenbrau
    #label Forgotten Dwarven Artifacts
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Forgotten Dwarven Artifacts|r
    .complete 24477,1 --Forgotten Dwarven Artifacts	(5)
step
    #completewith next
    #label Dwarven Artifacts
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grundel Harkin|r and |cRXP_FRIENDLY_Jona Ironstock|r
    .turnin 24477 >>Turn in Dwarven Artifacts
    .turnin 24474 >>Turn in First Things First: We're Gonna Need Some Beer
    .accept 24486 >>Accept Make Hay While the Sun Shines
    .disablecheckbox
    .accept 24475 >>Accept All the Other Stuff
    .disablecheckbox
	.target Jona Ironstock
	.target Grundel Harkin
step
    #completewith Dwarven Artifacts
    .hs >> Hearth to Anvilmar
step
    #requires Dwarven Artifacts
    .goto 427,61.46,22.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grundel Harkin|r and |cRXP_FRIENDLY_Jona Ironstock|r
    .turnin 24477 >>Turn in Dwarven Artifacts
    .accept 24486 >>Accept Make Hay While the Sun Shines
    .turnin 24474 >>Turn in First Things First: We're Gonna Need Some Beer
    .accept 24475 >>Accept All the Other Stuff
	.target Jona Ironstock
	.target Grundel Harkin
step
    #completewith next
    #label Priceless Rockjaw Artifact (5)
    >>Kill |cRXP_ENEMY_Rockjaw Scavengers|r. Loot them for |T135238:0|t[|cRXP_LOOT_Rockjaw Artifacts|r].
    *|cRXP_WARN_You can get extra artifacts by letting their cast hit you. They cast only once, from moderate range.|r
    .complete 24486,1 --Priceless Rockjaw Artifact (5)
step
    #completewith Priceless Rockjaw Artifact (5)
    .goto 427,61.71,28.85,10 >> Exit Anvilmar
step
    #requires Priceless Rockjaw Artifact (5)
    #hidewindow
    #completewith Ragged Wolf Hide
    #loop
    .goto 427,53.5,44.53,30,0
    .goto 427,50.96,51.06,20,0
    -- .goto 427,54.47,59.34,30,0 --early cutoff
    .goto 427,55.84,63.43,30,0 -- late cutoff
    -- .goto 427,48.03,55.31,30,0 --early cutoff
    .goto 427,47.44,62.09,30,0 -- late cutoff
    -- .goto 427,47.62,44.34,30,0 --early cutoff
    .goto 427,48.05,43.36,30,0 -- late cutoff
    .goto 427,41.94,41.18,30,0
    .goto 427,48.13,33.92,30,0
    +1
step
    #requires Priceless Rockjaw Artifact (5)
    #completewith Priceless Rockjaw Artifact
    >>Kill |cRXP_ENEMY_Ragged Timber Wolves|r and |cRXP_ENEMY_Ragged Young Wolves|r. Loot them for |T134366:0|t[|cRXP_LOOT_Ragged Wolf Hide|r].
    .complete 24475,2 --Ragged Wolf Hide (4)
    .mob *Ragged Young Wolf
    .mob *Ragged Timber Wolf
step
    #requires Priceless Rockjaw Artifact (5)
    #completewith Priceless Rockjaw Artifact
    >>Kill |cRXP_ENEMY_Small Crag Boars|r. Loot them for |T133969:0|t[|cRXP_LOOT_Boar Haunch|r].
    .complete 24475,1 --Boar Haunch (3)
    .mob *Small Crag Boar
step
    #requires Priceless Rockjaw Artifact (5)
    #label Priceless Rockjaw Artifact
    >>Kill |cRXP_ENEMY_Rockjaw Scavengers|r. Loot them for |T135238:0|t[|cRXP_LOOT_Rockjaw Artifacts|r].
    *|cRXP_WARN_You can get extra artifacts by letting their cast hit you. They cast only once, from moderate range.|r
    .complete 24486,1 --Priceless Rockjaw Artifact (5)
step
    #completewith next
    >>Kill |cRXP_ENEMY_Ragged Timber Wolves|r and |cRXP_ENEMY_Ragged Young Wolves|r. Loot them for |T134366:0|t[|cRXP_LOOT_Ragged Wolf Hide|r].
    .complete 24475,2 --Ragged Wolf Hide (4)
    .mob *Ragged Young Wolf
    .mob *Ragged Timber Wolf
step
    >>Kill |cRXP_ENEMY_Small Crag Boars|r. Loot them for |T133969:0|t[|cRXP_LOOT_Boar Haunch|r].
    .complete 24475,1 --Boar Haunch (3)
    .mob *Small Crag Boar
step
    #label Ragged Wolf Hide
    >>Kill |cRXP_ENEMY_Ragged Timber Wolves|r and |cRXP_ENEMY_Ragged Young Wolves|r. Loot them for Loot them for |T134366:0|t[|cRXP_LOOT_Ragged Wolf Hide|r].
    .complete 24475,2 --Ragged Wolf Hide (4)
    .mob *Ragged Young Wolf
    .mob *Ragged Timber Wolf
step
    #completewith next
    #label Make Hay While the Sun Shines
    .goto 427,60.83,30.43,10,0
    .goto 427,61.52,28.27,5,0
    .goto 427,61.51,26.57,5,0
    .goto 427,60.87,25.15,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grundel Harkin|r and |cRXP_FRIENDLY_Jona Ironstock|r.
    .turnin 24486 >>Turn in Make Hay While the Sun Shines
    .turnin 24475 >>Turn in All the Other Stuff
    .accept 24487 >>Accept Whitebeard Needs Ye
    .disablecheckbox
	.target Jona Ironstock
    .target Grundel Harkin
step
    #completewith Make Hay While the Sun Shines
    .goto 427,61.46,22.63,20 >> Enter Anvilmar
step
    #requires Make Hay While the Sun Shines
    .goto 427,61.46,22.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grundel Harkin|r and |cRXP_FRIENDLY_Jona Ironstock|r.
    .turnin 24486 >>Turn in Make Hay While the Sun Shines
    .turnin 24475 >>Turn in All the Other Stuff
    .accept 24487 >>Accept Whitebeard Needs Ye
	.target Jona Ironstock
    .target Grundel Harkin
step
    #label Whitebeard Needs Ye
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r, |cRXP_FRIENDLY_Apprentice Soren|r, and |cRXP_FRIENDLY_Felix Whindlebolt|r.
    .turnin 24487 >>Turn in Whitebeard Needs Ye
    .accept 182 >>Accept The Troll Menace
    .disablecheckbox
	.target +Grelin Whitebeard
    .accept 24489 >>Accept Trolling for Information
    .disablecheckbox
	.target +Apprentice Soren
    .accept 3361 >>Accept A Refugee's Quandary
    .disablecheckbox
	.target +Felix Whindlebolt
step
    #completewith Whitebeard Needs Ye
    .goto 427,61.65,28.18,5 >> Exit Anvilmar
step
    #requires Whitebeard Needs Ye
    #label Whitebeard Needs Ye2
    #completewith next
    .goto 427,61.16,31.56,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r, |cRXP_FRIENDLY_Apprentice Soren|r, and |cRXP_FRIENDLY_Felix Whindlebolt|r.
    .turnin 24487 >>Turn in Whitebeard Needs Ye
    .accept 182 >>Accept The Troll Menace
    .disablecheckbox
	.target +Grelin Whitebeard
    .accept 24489 >>Accept Trolling for Information
    .disablecheckbox
	.target +Apprentice Soren
    .accept 3361 >>Accept A Refugee's Quandary
    .disablecheckbox
	.target +Felix Whindlebolt
step
    #requires Whitebeard Needs Ye
    #completewith Whitebeard Needs Ye2
    #title |cFFFCDC00Follow the Arrow|r
    .goto 427,43.03,62.66 ,40 >>Head to the Questgiver, efficiently killing monsters along the way without stopping |cRXP_WARN_only if you can't mount and have a way to do it|r.
step
    #requires Whitebeard Needs Ye2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r, |cRXP_FRIENDLY_Apprentice Soren|r, and |cRXP_FRIENDLY_Felix Whindlebolt|r.
    .turnin 24487 >>Turn in Whitebeard Needs Ye
    .accept 182 >>Accept The Troll Menace
    .goto 427,43.03,62.66 --clickradius
    .goto 27,32.064,74.170 --npc location
	.target +Grelin Whitebeard
    .accept 24489 >>Accept Trolling for Information
    .goto 427,43.03,62.66 --clickradius
    .goto 27,32.165,74.347 --npc location
	.target +Apprentice Soren
    .accept 3361 >>Accept A Refugee's Quandary
    .goto 427,41.83,63.2
	.target +Felix Whindlebolt
-- step
--     --insert if bags are needed
--     #completewith Staging in Brewnall
--     .goto 427,41.83,63.2
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felix Whindlebolt|r.
--     .collect 4496,3
--     .buy 4496,3
--     .target +Felix Whindlebolt
step
    #completewith Soothsayer Shi'kala Scouted
    >>Kill |cRXP_ENEMY_Frostmane Troll Whelps|r.
    .complete 182,1 --Frostmane Troll Whelp (10)
	.mob Frostmane Troll Whelp
step
    #completewith next
    #label Felix's Box
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Felix's Box|r
    .complete 3361,1 --Felix's Box (1)
step
    #completewith Felix's Box
    .goto 27,27.759,75.195,11 >>Being within 11 yards of the arrow's location triggers an event. |cRXP_WARN_Once it starts,|r |cFFFF0000quickly grab the box, then head inside|r.
    *|cRXP_WARN_Avoid combat during this time|r.
    .timer 11,RP
step
    #requires Felix's Box
    #title |cFFFCDC00Pickup Box|r
    .goto 27,27.846,74.530
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Felix's Box|r
    .complete 3361,1 --Felix's Box (1)
step
    .goto 27,27.759,75.195
    #title |cFFFCDC00Hurry inside the Hut|r
    >>|cRXP_WARN_Wait for the roleplay at the arrow's location|r.
    .complete 24489,3 --Soothsayer Mirim'koa Scouted (1)
    .target Soothsayer Mirim'koa
step
    #completewith next
    #label Felix's Chest
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Felix's Chest|r
    .complete 3361,2 --Felix's Chest (1)
step
    #completewith Felix's Chest
    .goto 27,29.593,78.754,11 >>Being within 11 yards of the arrow's location triggers an event. |cRXP_WARN_Once it starts,|r |cFFFF0000quickly grab the chest, then head inside|r.
    *|cRXP_WARN_Avoid combat during this time|r.
    .timer 11,RP
step
    #requires Felix's Chest
    .goto 27,29.750,78.485
    #title |cFFFCDC00Pickup Chest|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Felix's Chest|r
    .complete 3361,2 --Felix's Chest (1)
step
    .goto 27,29.593,78.754
    #title |cFFFCDC00Hurry inside the Hut|r
    >>|cRXP_WARN_Wait for the roleplay at the arrow's location|r.
    .complete 24489,2 --Soothsayer Rikkari Scouted (1)
    .target Soothsayer Rikkari
step
    #completewith next
    #label Felix's Bucket of Bolts
    #title |cFFFCDC00Pickup Bolts|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Felix's Bucket of Bolts|r
    .complete 3361,3 --Felix's Bucket of Bolts (1
step
    #completewith Felix's Bucket of Bolts
    .goto 27,33.323,77.988,11 >>Being within 13 yards of the arrow's location triggers an event. |cRXP_WARN_Once it starts,|r |cFFFF0000quickly grab the bolts, then head inside|r.
    *|cRXP_WARN_Avoid combat during this time|r.
    .timer 13,Trolling for Information RP
    .isOnQuest 24489
step
    #requires Felix's Bucket of Bolts
    .goto 27,33.325,77.755
    #title |cFFFCDC00Pickup Bolts|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Felix's Bucket of Bolts|r
    .complete 3361,3 --Felix's Bucket of Bolts (1)
step
    #label Soothsayer Shi'kala Scouted
    .goto 27,33.323,77.988
    #title |cFFFCDC00Hurry to |cFF00FF25Soothsayer Shi'kala|r |r
    >>|cRXP_WARN_Wait for the roleplay at the arrow's location|r.
    .complete 24489,1 --Soothsayer Shi'kala Scouted (1)
    .target Soothsayer Shi'kala
step
    #completewith next
    #label isQuestComplete Troll Menace
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felix Whindlebolt|r, |cRXP_FRIENDLY_Apprentice Soren|r, and |cRXP_FRIENDLY_Grelin Whitebeard|r.
    .turnin 3361 >>Turn in A Refugee's Quandary
	.target +Felix Whindlebolt
    .turnin 24489 >>Turn in Trolling for Information
	.target +Apprentice Soren
    .turnin 182 >>Turn in The Troll Menace
	.accept 218 >>Accept Ice and Fire
    .disablecheckbox
	.target +Grelin Whitebeard
    .isQuestComplete 182
step
    #completewith isQuestComplete Troll Menace
    .goto 427,41.83,63.2,30 >>Head to the Questgiver, efficiently killing monsters along the way without stopping |cRXP_WARN_only if you cannot mount and have a way to do it|r.
step
    #requires isQuestComplete Troll Menace
    .goto 427,46.25,76.11,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felix Whindlebolt|r, |cRXP_FRIENDLY_Apprentice Soren|r, and |cRXP_FRIENDLY_Grelin Whitebeard|r.
    .turnin 3361 >>Turn in A Refugee's Quandary
    .goto 427,41.83,63.2
	.target +Felix Whindlebolt
    .turnin 24489 >>Turn in Trolling for Information
    .goto 427,42.85,63.01 --clickradius
    .goto 27,32.165,74.347 --npc location
	.target +Apprentice Soren
    .turnin 182 >>Turn in The Troll Menace
	.accept 218 >>Accept Ice and Fire
    .goto 427,42.85,63.01 --clickradius
    .goto 27,32.064,74.170 --npc location
	.target +Grelin Whitebeard
    .isQuestComplete 182
step
    #completewith next
    #label isQuestNotComplete Troll Menace
    .goto 427,46.25,76.11,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felix Whindlebolt|r, |cRXP_FRIENDLY_Apprentice Soren|r, and |cRXP_FRIENDLY_Grelin Whitebeard|r.
    .turnin 3361 >>Turn in A Refugee's Quandary
	.target +Felix Whindlebolt
    .turnin 24489 >>Turn in Trolling for Information
	.target +Apprentice Soren
	.accept 218 >>Accept Ice and Fire
    .disablecheckbox
	.target +Grelin Whitebeard
    .isQuestNotComplete 182
step
    #completewith isQuestNotComplete Troll Menace
    .goto 427,41.83,63.2,30 >>Head to the Questgiver, efficiently killing monsters along the way without stopping |cRXP_WARN_only if you cannot mount and have a way to do it|r.
step
    #requires isQuestNotComplete Troll Menace
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felix Whindlebolt|r, |cRXP_FRIENDLY_Apprentice Soren|r, and |cRXP_FRIENDLY_Grelin Whitebeard|r.
    .turnin 3361 >>Turn in A Refugee's Quandary
    .goto 427,41.83,63.2
	.target +Felix Whindlebolt
    .turnin 24489 >>Turn in Trolling for Information
    .goto 427,42.85,63.01 --clickradius
    .goto 27,32.165,74.347 --npc location
	.target +Apprentice Soren
	.accept 218 >>Accept Ice and Fire
    .goto 427,42.85,63.01 --clickradius
    .goto 27,32.064,74.170 --npc location
	.target +Grelin Whitebeard
    .isQuestNotComplete 182
step
    #completewith next
    >>Kill |cRXP_ENEMY_Frostmane Troll Whelps|r.
    .complete 182,1 --Frostmane Troll Whelp (10)
	.mob Frostmane Troll Whelp
step
    #title |cFFFCDC00Enter Cave|r
    .goto 427,51.36,83.12,20 >>Enter the Coldridge Valley cave
    .isOnQuest 218
step
    #hidewindow
    #completewith Grik'nir the Cold
    .goto 428,16.58,48.34,5,0
    .goto 428,27.19,43.8,10,0
    .goto 428,52.39,13.39,10,0
    -- .goto 428,76.94,32.07
    +1
step
    #completewith Grik'nir the Cold
    >>Kill |cRXP_ENEMY_Grik'nir the Cold|r.
    .complete 218,1 --Grik'nir the Cold (1)
	.mob Grik'nir the Cold
step
    #completewith Grik'nir the Cold
    >>Kill |cRXP_ENEMY_Frostmane Novices|r and |cRXP_ENEMY_Wayward Fire Elemental|r.
    .complete 218,3 --Frostmane Novice (3)
    .complete 218,2 --Wayward Fire Elemental (1)
    .mob Frostmane Novice
    .mob Wayward Fire Elemental
step
    #completewith Grik'nir the Cold
    #label Frostmane Blades
    >>Kill |cRXP_ENEMY_Frostmane Blades|r.
    .complete 218,4 --Frostmane Blade (6)
    .mob Frostmane Blade
    .mob Wayward Fire Elemental
step
    #label Grik'nir the Cold
    #completewith Ice and Fire
    #hidewindow
    .goto 428,76.94,32.07,30 >>1
step
    #completewith Grik'nir the Cold2
    >>Kill |cRXP_ENEMY_Frostmane Blades|r.
    .complete 218,4 --Frostmane Blade (6)
    .mob Frostmane Novice
    .mob Frostmane Blade
    .mob Wayward Fire Elemental
step
    #completewith Grik'nir the Cold2
    >>Kill |cRXP_ENEMY_Frostmane Novices|r and |cRXP_ENEMY_Wayward Fire Elemental|r.
    .complete 218,3 --Frostmane Novice (3)
    .complete 218,2 --Wayward Fire Elemental (1)
    .mob Frostmane Novice
    .mob Frostmane Blade
    .mob Wayward Fire Elemental
step
    #label Grik'nir the Cold2
    .goto 428,76.94,32.07
    >>Kill |cRXP_ENEMY_Grik'nir the Cold|r.
    .complete 218,1 --Grik'nir the Cold (1)
	.mob Grik'nir the Cold
-- step
-- step original
--     #hidewindow
--     #completewith Grik'nir the Cold
--     .goto 428,16.58,48.34,5,0
--     .goto 428,27.19,43.8,10,0
--     .goto 428,52.39,13.39,10,0
--     .goto 428,76.94,32.07
--     +1
-- step
--     #completewith Grik'nir the Cold
--     >>Kill |cRXP_ENEMY_Frostmane Blades|r.
--     .complete 218,4 --Frostmane Blade (6)
--     .mob Frostmane Novice
--     .mob Frostmane Blade
--     .mob Wayward Fire Elemental
-- step
--     #completewith Grik'nir the Cold
--     >>Kill |cRXP_ENEMY_Frostmane Novices|r and |cRXP_ENEMY_Wayward Fire Elemental|r.
--     .complete 218,3 --Frostmane Novice (3)
--     .complete 218,2 --Wayward Fire Elemental (1)
--     .mob Frostmane Novice
--     .mob Frostmane Blade
--     .mob Wayward Fire Elemental
-- step
--     #label Grik'nir the Cold
--     >>Kill |cRXP_ENEMY_Grik'nir the Cold|r.
--     .complete 218,1 --Grik'nir the Cold (1)
-- 	.mob Grik'nir the Cold
step
    #loop
    .goto 428,71.44,20.47,10,0
    .goto 428,61.09,15.8,10,0
    .goto 428,59,26.7,10,0
    .goto 428,61.26,38.84,10,0
    .goto 428,76.88,35.41,10,0
    >>Kill |cRXP_ENEMY_Frostmane Novices|r and |cRXP_ENEMY_Wayward Fire Elemental|r.
    .complete 218,3 --Frostmane Novice (3)
    .complete 218,2 --Wayward Fire Elemental (1)
    .mob Frostmane Novice
    .mob Frostmane Blade
    .mob Wayward Fire Elemental
step
    #completewith next
    #label Coldridge Valley cave
    #loop
    .goto 428,51.6,12.38,10,0
    .goto 428,45.23,23.61,10,0
    .goto 428,48.29,53.03,20,0
    .goto 428,29.88,48.61,10,0
    .goto 428,13.99,48.37,10,0
    .goto 428,28.01,49.02,10,0
    .goto 428,44.44,87.89,10,0
    .goto 428,32.16,47.08,10,0
    .goto 428,36.95,30.39,10,0
    .goto 428,53.46,12.93,10,0
    .goto 428,57.71,23.72,10,0
    .goto 428,66.13,40.71,10,0
    .goto 428,75.95,24.71,10,0
    .goto 27,33.772,78.335,15 >>Exit the Coldridge Valley cave
step
    #completewith Coldridge Valley cave
    >>Kill |cRXP_ENEMY_Frostmane Blades|r
    .complete 218,4 --Frostmane Blade (6)
    .mob Frostmane Novice
    .mob Frostmane Blade
    .mob Wayward Fire Elemental
step
    #requires Coldridge Valley cave
    #completewith next
    #label Ice and Fire
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r.
    .turnin 218 >>Turn in Ice and Fire
    .accept 24490 >>Accept A Trip to Ironforge
    .disablecheckbox
	.target Grelin Whitebeard
step
    #requires Coldridge Valley cave
    #completewith Ice and Fire
    .goto 27,33.772,78.335,15 >>Exit the Coldridge Valley cave
step
    #requires Ice and Fire
    #loop
    .goto 427,49.29,79.74,15,0
    .goto 427,52.55,76.61,15,0
    .goto 427,47.62,75.19,15,0
    .goto 427,45.09,80.44,15,0
    .goto 427,34.2,85.12,15,0
    .goto 427,30.71,84.38,15,0
    .goto 427,29.51,78.15,15,0
    .goto 427,25.2,72.01,15,0
    .goto 427,21.34,65.5,15,0
    .goto 427,21.73,61,15,0
    >>Kill |cRXP_ENEMY_Frostmane Troll Whelps|r.
    .complete 182,1 --Frostmane Troll Whelp (10)
	.mob Frostmane Troll Whelp
step
    .goto 27,32.064,74.170
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r.
    .turnin 182 >>Turn in The Troll Menace
    .turnin 218 >>Turn in Ice and Fire
    .accept 24490 >>Accept A Trip to Ironforge
	.target Grelin Whitebeard
    .isQuestComplete 182
step
    #completewith next
    #label Ice and Fire2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r.
    .turnin 218 >>Turn in Ice and Fire
    .accept 24490 >>Accept A Trip to Ironforge
    .isQuestNotComplete 182
	.target Grelin Whitebeard
step
    #completewith Ice and Fire2
    .goto 27,32.064,74.170,30 >>Head to the Questgiver, efficiently killing monsters along the way without stopping |cRXP_WARN_only if you cannot mount and have a way to do it|r.
    .isNotOnQuest 182
step
    #requires Ice and Fire2
    .goto 427,42.93,62.89
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r.
    .turnin 218 >>Turn in Ice and Fire
    .accept 24490 >>Accept A Trip to Ironforge
    .isQuestNotComplete 182
	.target Grelin Whitebeard
step
    #completewith next
    #label Trip to Ironforge
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hands Springsprocket|r.
    .turnin 24490 >>Turn in A Trip to Ironforge
    .accept 24491 >>Accept Follow that Gyro-Copter!
	.target Hands Springsprocket
step
    #completewith Trip to Ironforge
    .goto 427,86.95,44.49,90 >>Head to the Questgiver, efficiently killing monsters along the way without stopping |cRXP_WARN_only if you cannot mount and have a way to do it|r.
step
    #requires Trip to Ironforge
    .goto 427,86.95,44.49 --clickradius
    .goto 27,40.883,70.673 --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hands Springsprocket|r.
    .turnin 24490 >>Turn in A Trip to Ironforge
    .accept 24491 >>Accept Follow that Gyro-Copter!
	.target Hands Springsprocket
step
    .goto 427,70.39,43.94 --clickradius
    .goto 27,37.404,70.581 --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milo Geartwinge|r.
    .turnin 24491 >>Turn in Follow that Gyro-Copter!
    .accept 24492 >>Accept Pack Your Bags
	.target Milo Geartwinge
step
    #completewith next
    #label Goods
    .goto 427,67.76,40.58,10,0
    .goto 427,64.9,35.49,10,0
    .goto 427,62.63,30.48,10,0
    .goto 427,61.78,26.49,5,0
    .goto 427,62.65,25.02,5,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Cloak|r, |cRXP_PICK_Beer Barrel|r and |cRXP_PICK_Boar Meat|r.
    .complete 24492,1 --Coldridge Beer Flagon (1)
    .complete 24492,3 --Leftover Boar Meat (1)
    .complete 24492,2 --Ragged Wolf-Hide Cloak (1)
step
    #completewith Goods
    .goto 427,62.3,23.74,15 >> Enter Anvilmar
step
    #requires Goods
    .goto 427,62.3,23.74
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Cloak|r, |cRXP_PICK_Beer Barrel|r and |cRXP_PICK_Boar Meat|r.
    .complete 24492,1 --Coldridge Beer Flagon (1)
    .complete 24492,3 --Leftover Boar Meat (1)
    .complete 24492,2 --Ragged Wolf-Hide Cloak (1)
step
    .goto 427,61.71,22.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jona Ironstock|r.
    .accept 24493 >>Accept Don't Forget About Us
	.target Jona Ironstock
step
    #completewith next
    #label Pack Your Bags
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milo Geartwinge|r.
    .turnin 24492 >>Turn in Pack Your Bags
	.target Milo Geartwinge
step
    #completewith Pack Your Bags
    .goto 427,61.71,28.4,5 >> Exit Anvilmar
step
    #requires Pack Your Bags
    #completewith next
    #label Pack Your Bags2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milo Geartwinge|r.
    .turnin 24492 >>Turn in Pack Your Bags
	.target Milo Geartwinge
step
    #hidewindow
    #completewith Pack Your Bags2
    .goto 427,62.37,32.21,5 >>1
step
    #requires Pack Your Bags2
    .goto 427,69.43,43.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milo Geartwinge|r.
    .turnin 24492 >>Turn in Pack Your Bags
    .timer 20, Countdown for Logout
	.target Milo Geartwinge
step
    .logout >>After the time expires |cRXP_WARN_relog|r.
-- step
--     >>|cRXP_WARN_When the 26-second timer expires (26 seconds after accepting the ride), log out and then back on whilst on |cRXP_FRIENDLY_Milo's Gyro|r to logout skip to Kharanos|r.
--     >>|cRXP_WARN_If you do it before the timer expires you may logout skip to New Tinkertown or back to Coldridge Valley. If this happens, travel to Kharanos normally|r.
--     .subzone 131 >> Travel to Kharanos
--     .isOnQuest 24493
-- .timer 26,Start to Logout when timer ends --Kharanos, Between 10-26s after turnin (needs to be tested more)
--   .timer 10,Start to Logout when timer ends --New Tinkertown
--   .timer 83.5,Pack Your Bags RP
]])

--Gnome New Tinkertown
RXPGuides.RegisterGuide([[
#retail
#version 2
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(1-80)|r Default
#name ab) New Tinkertown
#displayname  New Tinkertown |cRXP_ENEMY_(Alternative)|r
#defaultfor Gnome !DK
#next ac) Dwarf & Gnome Dun Morogh

<< Alliance

step
    #completewith next
    +Welcome to the |cRXP_WARN_Gnome Starting Zone|r. Guide by RestedXP.
    *Without consumables or heirlooms, this route is approximately 5 minutes slower than |cRXP_WARN_Exile's Reach|r. For faster leveling, consider recreating your character and selecting |cRXP_WARN_Exile's Reach|r instead.
step
    .goto 30,34.101,32.243
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nevin Twistwrench|r.
    .accept 27670 >>Accept Pinned Down
step
    #completewith next
    #label Crazed Leper Gnome 
    >>Kill |cRXP_ENEMY_Crazed Leper Gnomes|r.
    .complete 27670,1 --Crazed Leper Gnome (6)
	.mob Crazed Leper Gnome
step
    #completewith Crazed Leper Gnome 
    .goto 30,42.21,32.17,10 >>|cRXP_WARN_Usually, the best move is to kill the gnomes near the 4 npcs and wait on respawns|r.
    .target S.A.F.E. Operative
step
    #requires Crazed Leper Gnome 
    #loop
    .goto 30,43.59,33.64,10,0
    .goto 30,40.53,31.95,20,0
    .goto 30,47.79,41.62,25,0
    .goto 30,48.07,25.62,25,0
    >>Kill |cRXP_ENEMY_Crazed Leper Gnomes|r nearby |cRXP_WARN_if respawns are slow|r.
    *|cRXP_WARN_Ignore the gnome stuck on the stairs|r.
    .complete 27670,1 --Crazed Leper Gnome (6)
	.mob Crazed Leper Gnome
step
    .goto 30,35.04,32.17 --clickradius
    .goto 30,34.101,32.243 --npclocation
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk |cRXP_FRIENDLY_Nevin Twistwrench|r.
    .turnin 27670 >>Turn in Pinned Down
    .accept 28167 >>Accept Report to Carvo Blastbolt
	.target Nevin Twistwrench
step
    .goto 30,50.14,31.93 --clickradius
    .goto 30,50.973,31.915 --npclocation
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carvo Blastbolt|r.
    .turnin 28167 >>Turn in Report to Carvo Blastbolt
    .accept 27671 >>Accept See to the Survivors
	.target Carvo Blastbolt
-- step
--     #completewith next
--     +|cRXP_WARN_To enable keybinding for quest items, follow these steps:|r
--     *[1] Press the |cRXP_WARN_Escape key|r.
--     *[2] Select |cRXP_WARN_Options|r.
--     *[3] Navigate to |cRXP_WARN_Keybindings|r.
--     *[4] Within |cRXP_WARN_Keybindings|r,find |cRXP_WARN_RestedXP Guides|r.
--     *[5] Select and bind the |cRXP_WARN_Active Buttons|r.
--     .isOnQuest 27671
step
    #loop
    .goto 30,47.66,30.02,10,0
    .goto 30,53.18,29.42,11,0
    .goto 30,52.63,23.41,10,0
    .goto 30,45.35,28.18,10,0
    .goto 30,44.02,36.28,10,0
    .goto 30,51.61,37.3,11,0
    -- .goto 30,50.07,30.69,3,0
    -- .goto 30,53.18,29.29,7,0
    -- .goto 30,52.15,27.62,7,0
    -- .goto 30,52.67,23.08,8,0
    -- .goto 30,45.86,24.31,10,0
    -- .goto 30,47.63,30.01,5,0
    -- .goto 30,43.91,30.16,8,0
    -- .goto 30,42.59,36.47,8,0
    -- .goto 30,50.99,42.94,15,0
    -- .goto 30,51.61,37.35,10,0
    -- .goto 30,48.14,33.31,10,0
    -- .goto 30,54.92,35.93,10,0
    -- .goto 30,55.11,36.97,5,0
    -- .goto 30,53.89,43.48,7,0
    -- .goto 30,60.25,43.79,10,0
    -- .goto 30,64.41,37.61,10,0
    -- .goto 30,64.01,32.74,8,0
    -- .goto 30,62.91,28.42,10,0
    -- .goto 30,57.68,30.99,10,0
    -- .goto 30,56.04,23.32,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Survivors|r.
    *|cRXP_WARN_You can do this from a distance|r.
    .complete 27671,1 --Survivors Rescued (6)
	.target Survivor
step
    .goto 30,50.11,32.47 --clickradius
    .goto 30,50.973,31.915 --npclocation
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carvo Blastbolt|r.
    .turnin 27671 >>Turn in See to the Survivors
    .accept 28169 >>Accept Withdraw to the Loading Room!
	.target Carvo Blastbolt
step
    #completewith next
    #label Withdraw to the Loading Room!
    .goto 30,52.21,38.3,10,0
    .goto 30,53.47,75.07,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaffer Coilspring|r.
    .turnin 28169 >>Turn in Withdraw to the Loading Room!
    .accept 27635 >>Accept Decontamination
	.target Gaffer Coilspring
step
    #completewith Withdraw to the Loading Room!
    #title |cFFFCDC00Follow the Arrow|r
    .goto 30,53.063,82.341,30 >>Head to the questgiver, efficiently killing monsters along the way without stopping |cRXP_WARN_only if you have a way to do it|r.
step
    #requires Withdraw to the Loading Room!
    .goto 30,53.83,81.53 --clickradius
    .goto 30,53.063,82.341 --npclocation
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaffer Coilspring|r.
    .turnin 28169 >>Turn in Withdraw to the Loading Room!
    .accept 27635 >>Accept Decontamination
	.target Gaffer Coilspring
step
    .goto 30,58.88,82.06 --optimized for click radius
    .goto 30,58.93,81.73 --optimized for npclocation
    -- >>|cRXP_WARN_Type /sit in front of the |cRXP_FRIENDLY_Sanitron 500|r then enter it to skip the RP|r.
    #title |cFFFCDC00Click when in range and stationary|r
    >>Click on the |cRXP_PICK_Sanitron 500|r |cRXP_WARN_don't use the interact button|r.
    -- |cRXP_WARN_but only when you are certain you are within range to enter it. Ensure you are stationary before clicking, and click only once(don't use the interact button)|r.
    .complete 27635,1 --Decontamination Process started (1)
    .target Sanitron 500
    .emote SIT,46185
--   .timer 26,Decontamination RP
step
    .goto 30,66.17,82.93 --clickradius
    .goto 30,66.420,81.624 --npclocation
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Technician Braggle|r.
    .turnin 27635 >>Turn in Decontamination
    .accept 27674 >>Accept To the Surface
	.target Technician Braggle
step
    .goto 30,67.282,84.148
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torben Zapblast|r.
    .complete 27674,1 --Speak to Torben Zapblast (1)
    .target Torben Zapblast
	.skipgossipid 37763
step
    .goto 469,39.51,38.15 --clickradius
    .goto 469,39.504,38.383 --npclocation
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nevin Twistwrench|r.
    .turnin 27674 >>Turn in To the Surface
    .accept 26206 >>Accept The Future of Gnomeregan << Gnome Rogue
    .accept 26197 >>Accept The Future of Gnomeregan << Gnome Mage
    .accept 26199 >>Accept The Future of Gnomeregan << Gnome Priest
    .accept 26202 >>Accept The Future of Gnomeregan << Gnome Warlock
    .accept 26203 >>Accept The Future of Gnomeregan << Gnome Warrior
    .accept 31135 >>Accept The Future of Gnomeregan << Gnome Monk
    .accept 41217 >>Accept The Future of Gnomeregan << Gnome Hunter
	.target Nevin Twistwrench
step << Gnome Rogue
    #completewith next
    #label The Future of Gnomeregan
    .goto 469,39.51,37.35,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark|r.
    .turnin 26206 >>Turn in The Future of Gnomeregan
    .accept 26423 >>Accept Meet the High Tinker
    .disablecheckbox
	.target Kelsey Steelspark
step << Gnome Rogue
    #hidewindow
    #completewith The Future of Gnomeregan
    .goto 469,38.025,33.570,20 >>1
step << Gnome Rogue
    #requires The Future of Gnomeregan
    .goto 469,38.18,33.94 --clickradius
    .goto 469,38.025,33.570 --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark|r.
    .turnin 26206 >>Turn in The Future of Gnomeregan
    .accept 26423 >>Accept Meet the High Tinker
	.target Kelsey Steelspark
step << Gnome Mage
    .goto 469,41.03,29.46 --clickradius
    .goto 469,41.093,29.130 --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bipsi Frostflinger|r.
    .turnin 26197 >>Turn in The Future of Gnomeregan
    .accept 26421 >>Accept Meet the High Tinker
	.target Bipsi Frostflinger
step << Gnome Priest
    .goto 469,39.46,28.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Doc" Cogspin|r.
    .turnin 26199 >>Turn in The Future of Gnomeregan
    .accept 26422 >>Accept Meet the High Tinker
	.target "Doc" Cogspin
step << Gnome Warlock
    #completewith next
    #label The Future of Gnomeregan
    .goto 469,39.51,37.21,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alamar Grimm|r.
    .turnin 26202 >>Turn in The Future of Gnomeregan
    .accept 26424 >>Accept Meet the High Tinker
    .disablecheckbox
	.target Alamar Grimm
step << Gnome Warlock
    #hidewindow
    #completewith The Future of Gnomeregan
    .goto 469,37.88,37.86,20 >>1
step << Gnome Warlock
    #requires The Future of Gnomeregan
    .goto 469,37.88,37.86 --clickradius
    .goto 469,37.679,37.957--npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alamar Grimm|r.
    .turnin 26202 >>Turn in The Future of Gnomeregan
    .accept 26424 >>Accept Meet the High Tinker
	.target Alamar Grimm
step << Gnome Warrior
    #completewith next
    #label in The Future of Gnomeregan
    .goto 469,39.71,37.3,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drill Seargent Steamcrank|r.
    .turnin 26203 >>Turn in The Future of Gnomeregan
    .accept 26425 >>Accept Meet the High Tinker
    .disablecheckbox
	.target Drill Seargent Steamcrank
step << Gnome Warrior
    #hidewindow
    #completewith in The Future of Gnomeregan
    .goto 469,40.68,35.59,20 >>1
step << Gnome Warrior
    #requires in The Future of Gnomeregan
    .goto 469,40.68,35.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drill Seargent Steamcrank|r.
    .turnin 26203 >>Turn in The Future of Gnomeregan
    .accept 26425 >>Accept Meet the High Tinker
	.target Drill Seargent Steamcrank
step << Gnome Monk
    .goto 469,40.086,35.614
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xi, Friend to the Small|r.
    .turnin 31135 >>Turn in The Future of Gnomeregan
    .accept 31137 >>Accept Meet the High Tinker
	.target Xi, Friend to the Small
step << Gnome Hunter
    #completewith next
    #label The Future of Gnomeregan
    .goto 469,39.66,37.34,5,0
    .goto 469,41.1,31.17,10,0
    .goto 469,42.1,30.91,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muffinus Chromebrew|r.
    .turnin 41217 >>Turn in The Future of Gnomeregan
    .accept 41218 >>Accept Meet the High Tinker
    .disablecheckbox
	.target Muffinus Chromebrew
step << Gnome Hunter
    #completewith The Future of Gnomeregan
    #hidewindow
    .goto 469,41.925,31.636,10 >>1
step << Gnome Hunter
    #requires The Future of Gnomeregan
    .goto 469,41.925,31.636
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muffinus Chromebrew|r.
    .turnin 41217 >>Turn in The Future of Gnomeregan
    .accept 41218 >>Accept Meet the High Tinker
	.target Muffinus Chromebrew
step
    .goto 469,38.95,32.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Tinker Mekkatorque|r.
    .turnin 26423 >>Turn in Meet the High Tinker << Rogue
    .turnin 26421 >>Turn in Meet the High Tinker << Mage
    .turnin 26422 >>Turn in Meet the High Tinker << Priest
    .turnin 26424 >>Turn in Meet the High Tinker << Warlock
    .turnin 26425 >>Turn in Meet the High Tinker << Warrior
    .turnin 31137 >>Turn in Meet the High Tinker << Monk
    .turnin 41218 >>Turn in Meet the High Tinker << Hunter/Druid
    .accept 26208 >>Accept The Fight Continues
	.timer 4.5,Meet the High Tinker RP
	.target High Tinker Mekkatorque
step
    .goto 469,38.95,32.3
    >>|cRXP_WARN_Wait out the RP next to|r |cRXP_FRIENDLY_High Tinker Mekkatorque|r.
    .complete 26208,1 --Learn about Operation: Gnomeregan (1)
step
    .goto 469,38.95,32.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Tinker Mekkatorque|r.
    .turnin 26208 >>Turn in The Fight Continues
    .accept 26566 >>Accept A Triumph of Gnomish Ingenuity
	.target High Tinker Mekkatorque
step
    .goto 469,40.578,28.021
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Grindspark|r.
    .turnin 26566 >>Turn in A Triumph of Gnomish Ingenuity
    .accept 26222 >>Accept Scrounging for Parts
	.target Engineer Grindspark
step
    #loop
    -- .goto 469,40.5,27.63,6,0
    -- .goto 469,39.6,29.35,8,0
    -- -- .goto 469,39.17,29.2,6,0
    -- .goto 469,38.62,29.48,10,0
    -- .goto 469,39.92,30.49,6,0
    -- .goto 469,41.57,29.22,6,0
    -- .goto 469,41.06,28.93,3,0
    -- .goto 469,41.14,27.98,6,0
    -- .goto 469,40.87,28.82,3,0
    -- .goto 469,38.88,27.1,6,0
    -- .goto 469,39.88,29.12,15,0
    -- .goto 469,38.5,28.45,10,0
    -- .goto 469,39.26,28.98,8,0
    -- .goto 469,39.28,29.16,3,0
    -- .goto 469,39.28,29.16,12,0
    -- .goto 469,37.97,32.97,10,0
    -- .goto 469,39.69,32.66,10,0
    -- .goto 469,41.18,31.75,10,0
    -- .goto 469,40.73,34.67,10,0
    -- .goto 469,41.51,35.43,10,0
    -- .goto 469,41.65,33.57,10,0
    .goto 469,40.5,27.63,6,0
    .goto 469,39.6,29.35,10,0
    .goto 469,38.62,29.48,10,0
    .goto 469,39.92,30.49,10,0
    .goto 469,41.57,29.22,6,0
    .goto 469,41.06,28.93,3,0
    .goto 469,41.14,27.98,6,0
    .goto 469,40.87,28.82,3,0
    .goto 469,38.88,27.1,15,0
    .goto 469,39.88,29.12,10,0
    .goto 469,38.5,28.45,10,0
    .goto 469,39.26,28.98,8,0
    .goto 469,39.28,29.16,3,0
    .goto 469,39.28,29.16,10,0
    .goto 469,37.97,32.97,10,0
    .goto 469,39.69,32.66,10,0
    .goto 469,42.16,30.91,10,0
    .goto 469,42.31,28.85,10,0
    .goto 469,40.14,30.26,10,0
    .goto 469,41.3,33.51,10,0
    .goto 469,41.21,36.74,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Spare Parts|r.
    .complete 26222,1 --Spare Part (7)
step
    .goto 469,40.578,28.021
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Grindspark|r.
    .turnin 26222 >>Turn in Scrounging for Parts
    .accept 26205 >>Accept A Job for the Multi-Bot
	.target Engineer Grindspark
step
    .goto 469,39.45,26.87 --clickradius
    .goto 469,39.225,26.552 --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk |cRXP_FRIENDLY_Tock Sprysprocket|r.
    .accept 26264 >>Accept What's Left Behind
	.target Tock Sprysprocket
step
    #completewith next
    #label Dealing with the Fallout
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Fizzwhistle|r.
    .goto 469,39.4,29.14,10,0
    .goto 469,38.72,38.66,10,0
    .accept 26265 >>Accept Dealing with the Fallout
	.target Corporal Fizzwhistle
step 
    #completewith Dealing with the Fallout
    #hidewindow
    .goto 469,38.43,40.48,20 >>1
step
    #requires Dealing with the Fallout
    .goto 469,38.43,40.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Fizzwhistle|r.
    .accept 26265 >>Accept Dealing with the Fallout
	.target Corporal Fizzwhistle
step
    #hidewindow
    #completewith Living Contaminations
    #loop
    .goto 469,40.05,42.01,15,0
    .goto 469,42.66,45.39,15,0
    .goto 469,39.18,46.56,10,0
    .goto 469,38.58,44.96,10,0
    .goto 469,37.78,47.01,10,0
    .goto 469,37.09,50.61,10,0
    .goto 469,41.05,52.15,15,0
    .goto 469,41.41,50.23,15,0
    .goto 469,41.98,52.25,15,0
    .goto 469,42.18,51.57,15,0
    .goto 469,41.29,50.26,15,0
    .goto 469,38.44,56.98,15,0
    .goto 469,37.54,56.79,15,0
    .goto 469,42.47,61.83,15,0
    .goto 469,42.47,63.32,15,0
    +1
step
    #completewith Living Contaminations
    +|cRXP_WARN_[RARE]|r Kill |cRXP_ENEMY_Gibblewilt|r if he's up, |cRXP_WARN_as he gives a lot of XP|r.
    .unitscan Gibblewilt
step
    #completewith GS-9x Multi-Bot
    >>Kill |cRXP_ENEMY_Living Contaminations|r.
    .complete 26265,1 --Living Contamination (6)
    .mob Living Contamination
step
    #completewith GS-9x Multi-Bot
    >>Kill |cRXP_ENEMY_Toxic Sludges|r. 
    *Loot them for their |T133151:0|t[|cRXP_LOOT_Recovered Possessions|r].
    .complete 26264,1 --Recovered Possession (6)
    .mob Toxic Sludge
step
    #label GS-9x Multi-Bot
    >>Guide the |cRXP_FRIENDLY_GS-9x Multi-bot|r into the geysers |cFFFF0000avoid running into them yourself|r.
    *|cRXP_WARN_If your |cRXP_FRIENDLY_GS-9x Multi-bot|r dies, go back to |cRXP_FRIENDLY_Engineer Grindspark|r for a new one|r.
    .complete 26205,1 --Clean up Toxic Geysers (5)
    .target GS-9x Multi-Bot
    .skipgossip 42553,1
step
    #completewith next
    >>Kill |cRXP_ENEMY_Living Contaminations|r.
    .complete 26265,1 --Living Contamination (6)
    .mob Living Contamination
step
    >>Kill |cRXP_ENEMY_Toxic Sludges|r.
    Loot them for their |T133151:0|t[|cRXP_LOOT_Recovered Possessions|r].
    .complete 26264,1 --Recovered Possession (6)
    .mob Toxic Sludge
step
    #label Living Contaminations
    >>Kill |cRXP_ENEMY_Living Contaminations|r.
    .complete 26265,1 --Living Contamination (6)
    .mob Living Contamination
-- step
--     #sticky
--     #label Contamination
--     #loop
--     .goto 469,40.992,40.259,0
--     .goto 469,37.170,40.971,0
--     .goto 469,39.912,49.912,0
--     .waypoint 469,40.992,40.259,40,0
--     .waypoint 469,40.559,39.847,40,0
--     .waypoint 469,39.968,40.426,40,0
--     .waypoint 469,39.065,40.724,40,0
--     .waypoint 469,38.592,40.539,40,0
--     .waypoint 469,37.980,41.331,40,0
--     .waypoint 469,37.170,40.971,40,0
--     .waypoint 469,36.360,40.843,40,0
--     .waypoint 469,34.620,43.365,40,0
--     .waypoint 469,36.336,44.818,40,0
--     .waypoint 469,39.912,49.912,40,0
--     >>Kill |cRXP_ENEMY_Living Contaminations|r.
--     .complete 26265,1 --Living Contamination (6)
--     .mob Living Contamination
-- step
--     #completewith Geysers
--     .goto 469,38.054,47.396,0
--     .goto 469,39.129,53.303,0
--     .goto 469,41.419,42.524,0
--     >>Kill |cRXP_ENEMY_Toxic Sludges|r. Loot them for their [|cRXP_LOOT_Recovered Possessions|r].
--     .complete 26264,1 --Recovered Possession (6)
--     .mob *Toxic Sludge
-- step
--     #optional
--     #completewith next
--     .goto 469,40.603,45.713,45 >>|cRXP_WARN_[RARE] Check for |cRXP_ENEMY_Gibblewilt|r. Kill him if he's up|r.
--     .unitscan Gibblewilt
--     .noflyable
-- step
--     #label Geysers
--     #loop
--     .goto 469,40.578,28.021,0 --Grindspark
--     .goto 469,40.029,42.015,0
--     .goto 469,39.349,46.363,0
--     .goto 469,41.328,50.585,0
--     .goto 469,40.029,42.015,15,0
--     .goto 469,41.629,44.514,15,0
--     .goto 469,42.430,45.128,15,0
--     .goto 469,39.349,46.363,15,0
--     .goto 469,38.657,45.115,15,0
--     .goto 469,37.860,46.624,15,0
--     .goto 469,36.858,50.094,15,0
--     .goto 469,37.386,50.996,15,0
--     .goto 469,40.808,52.328,15,0
--     .goto 469,41.910,51.865,15,0
--     .goto 469,41.328,50.585,15,0
--     >>Guide your |cRXP_FRIENDLY_GS-9x Multi-bot|r toward the Geysers in the green pools
--     >>|cRXP_WARN_If your |cRXP_FRIENDLY_GS-9x Multi-bot|r dies, go back to |cRXP_FRIENDLY_Engineer Grindspark|r for a new one|r.
--     .complete 26205,1 --Clean up Toxic Geysers (5)
--     .skipgossip 42553,1
-- step
--     #optional
--     #loop
--     .goto 469,38.054,47.396,0
--     .goto 469,39.129,53.303,0
--     .goto 469,41.419,42.524,0
--     .goto 469,38.054,47.396,40,0
--     .goto 469,35.840,46.516,40,0
--     .goto 469,34.007,48.244,40,0
--     .goto 469,34.752,49.411,40,0
--     .goto 469,35.620,52.363,40,0
--     .goto 469,36.659,52.593,40,0
--     .goto 469,39.129,53.303,40,0
--     .goto 469,40.837,53.655,40,0
--     .goto 469,42.523,50.016,40,0
--     .goto 469,40.920,48.049,40,0
--     .goto 469,40.209,47.931,40,0
--     .goto 469,41.419,42.524,40,0
--     >>Kill |cRXP_ENEMY_Toxic Sludges|r. Loot them for their [|cRXP_LOOT_Recovered Possessions|r].
--     .complete 26264,1 --Recovered Possession (6)
--     .mob Toxic Sludge
step
    #completewith next
    #label Turn in Dealing with the Fallout
    .goto 469,38.201,40.196
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Fizzwhistle|r.
    .turnin 26265 >>Turn in Dealing with the Fallout
	.target Corporal Fizzwhistle
step
    #completewith Turn in Dealing with the Fallout
    #title |cFFFCDC00Follow the Arrow|r
    .goto 469,38.38,39.94,60 >>Head to the Objective, efficiently killing monsters along the way without stopping |cRXP_WARN_only if you can't mount and have a way to do it|r.
step
    #requires Turn in Dealing with the Fallout
    .goto 469,38.38,39.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Fizzwhistle|r.
    .turnin 26265 >>Turn in Dealing with the Fallout
	.target Corporal Fizzwhistle
step
    #completewith next
    #label Turn in A Job for the Multi-Bot
    .goto 469,39.04,38.13,10,0
    .goto 469,40.58,28.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Grindspark|r.
    .turnin 26205 >>Turn in A Job for the Multi-Bot
	.target Engineer Grindspark
step 
    #completewith Turn in A Job for the Multi-Bot
    #hidewindow
    .goto 469,40.4,28.22,40 >>1
step
    #requires Turn in A Job for the Multi-Bot
    .goto 469,40.4,28.22  --clickradius
    .goto 469,40.58,28.04 --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Grindspark|r.
    .turnin 26205 >>Turn in A Job for the Multi-Bot
	.target Engineer Grindspark
step
    .goto 469,39.37,26.92 --clickradius
    .goto 469,39.225,26.552 --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk |cRXP_FRIENDLY_Tock Sprysprocket|r.
    .turnin 26264 >>Turn in What's Left Behind
	.target Tock Sprysprocket
step
    #completewith next
    #label What's Keeping Kharmarn?
    .goto 469,39.36,29.15,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tread Sparknozzle|r.
    .accept 26316 >>Accept What's Keeping Kharmarn?
	.target Captain Tread Sparknozzle
step
    #completewith What's Keeping Kharmarn?
    #hidewindow
    .goto 469,38.27,33.88,30 >>1
step
    #requires What's Keeping Kharmarn?
    .goto 469,38.27,33.88

    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tread Sparknozzle|r.
    .accept 26316 >>Accept What's Keeping Kharmarn?
	.target Captain Tread Sparknozzle
step
    #completewith next
    #label Missing in Action
    .goto 469,37.29,38.97,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk |cRXP_FRIENDLY_Kharmarn Palegrip|r.
    .turnin 26316 >>Turn in What's Keeping Kharmarn?
    .accept 26284 >>Accept Missing in Action
    .accept 26285 >>Accept Get Me Explosives Back!
	.target Kharmarn Palegrip
step
    #completewith Missing in Action
    #title |cFFFCDC00Follow the Arrow|r
    .goto 469,37.11,65.54,40 >>Head to the Objective, efficiently killing monsters along the way without stopping |cRXP_WARN_only if you can't mount and have a way to do it|r.
step
    #requires Missing in Action
    .goto 469,37.11,65.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk |cRXP_FRIENDLY_Kharmarn Palegrip|r.
    .turnin 26316 >>Turn in What's Keeping Kharmarn?
    .accept 26284 >>Accept Missing in Action
    .accept 26285 >>Accept Get Me Explosives Back!
	.target Kharmarn Palegrip
step
    #hidewindow
    #completewith Stolen Powder Keg
    #loop
    .goto 469,36.59,68.65,15,0
    .goto 469,38.24,68.88,15,0
    .goto 469,37.99,72.61,15,0
    .goto 469,38.86,74.37,15,0
    .goto 469,40.85,74.37,15,0
    .goto 469,41.09,69.67,15,0
    .goto 469,42,73.55,15,0
    .goto 469,44.01,70.25,15,0
    .goto 469,45.91,69.29,15,0
    .goto 469,47.08,71.13,15,0
    .goto 469,47.23,73.6,15,0
    .goto 469,44.96,73.37,15,0
    +1
step
    #completewith Stolen Powder Keg
    +|cRXP_WARN_[RARE]|r Kill |cRXP_ENEMY_Caverndeep Looter|r if he's up, |cRXP_WARN_as he gives a lot of XP|r.
	.unitscan Caverndeep Looter
step
    #completewith next
    >>Kill |cRXP_ENEMY_Rockjaw Bonepickers|r and |cRXP_ENEMY_Rockjaw Marauders|r. 
    *Loot them for the |T132622:0|t[|cRXP_LOOT_Stolen Powder Kegs|r].
    .complete 26285,1 --Stolen Powder Keg (7)
	.mob Rockjaw Bonepicker
	.mob Rockjaw Marauder
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Makeshift Cages|r
    .complete 26284,1 --Captured Demolitionists rescued (6)
step
    #label Stolen Powder Keg
    >>Kill |cRXP_ENEMY_Rockjaw Bonepickers|r and |cRXP_ENEMY_Rockjaw Marauders|r. 
    *Loot them for the |T132622:0|t[|cRXP_LOOT_Stolen Powder Kegs|r].
    .complete 26285,1 --Stolen Powder Keg (7)
	.mob Rockjaw Bonepicker
	.mob Rockjaw Marauder
step
    .goto 469,37.15,65.57 --clickradius
    .goto 469,37.283,65.200 --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk |cRXP_FRIENDLY_Kharmarn Palegrip|r.
    .turnin 26284 >>Turn in Missing in Action
    .turnin 26285 >>Turn in Get Me Explosives Back!
    .accept 26318 >>Accept Finishin' the Job
	.target Kharmarn Palegrip
-- step
--     #sticky
--     #label PowderKegs
--     .goto 469,38.413,67.778,0
--     .goto 469,46.960,73.690,0
--     .goto 469,42.336,69.559,0
--     .waypoint 469,38.413,67.778,40,0
--     .waypoint 469,36.284,70.305,40,0
--     .waypoint 469,39.268,75.879,40,0
--     .waypoint 469,42.366,75.706,40,0
--     .waypoint 469,44.629,77.577,40,0
--     .waypoint 469,45.326,73.024,40,0
--     .waypoint 469,46.960,73.690,40,0
--     .waypoint 469,47.296,72.654,40,0
--     .waypoint 469,46.734,71.721,40,0
--     .waypoint 469,47.119,68.438,40,0
--     .waypoint 469,47.163,65.769,40,0
--     .waypoint 469,43.581,70.051,40,0
--     .waypoint 469,42.336,69.559,40,0
--     >>Kill |cRXP_ENEMY_Rockjaw Bonepickers|r and |cRXP_ENEMY_Rockjaw Marauders|r. Loot them for the [|cRXP_LOOT_Stolen Powder Kegs|r].
--     .complete 26285,1 --Stolen Powder Keg (7)
-- 	.mob Rockjaw Bonepicker
-- 	.mob Rockjaw Marauder
-- step
--     #loop
--     .goto 469,36.560,68.469,0
--     .goto 469,38.768,74.257,0
--     .goto 469,45.803,69.339,0
--     .goto 469,36.560,68.469,15,0
--     .goto 469,38.134,68.845,15,0
--     .goto 469,37.972,72.466,15,0
--     .goto 469,38.768,74.257,15,0
--     .goto 469,40.738,74.411,15,0
--     .goto 469,41.168,69.792,15,0
--     .goto 469,42.045,73.682,15,0
--     .goto 469,45.032,73.353,15,0
--     .goto 469,47.131,73.469,15,0
--     .goto 469,47.007,71.031,15,0
--     .goto 469,45.803,69.339,15,0
--     .goto 469,43.887,70.268,15,0
--     >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Makeshift Cages|r to rescue the |cRXP_FRIENDLY_Captured Demolitionists|r.
--     .complete 26284,1 --Captured Demolitionists rescued (6)
-- step
--     #requires PowderKegs
--     .goto 469,37.283,65.200
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk |cRXP_FRIENDLY_Kharmarn Palegrip|r.
--     .turnin 26284 >>Turn in Missing in Action
--     .turnin 26285 >>Turn in Get Me Explosives Back!
--     .accept 26318 >>Accept Finishin' the Job
-- 	.target Kharmarn Palegrip
step
    #completewith next
    #label Boss Bruggor
    >>Kill |cRXP_ENEMY_Boss Bruggor|r.
    .complete 26318,2 --Boss Bruggor (1)
step
    #title |cFFFCDC00Enter Cave|r
    #completewith Boss Bruggor
    .goto 469,33.8,66.29,15 >>Enter the Frostmane Hold Cave
step
    #requires Boss Bruggor
    #completewith next
    #label Detonate trogg tunnel
    .goto 470,87.21,51.37,10,0
    .goto 470,79.61,39.36,10,0
    .goto 470,67.4,48.66,10,0
    .goto 470,59.67,74.59,10,0
    .goto 470,44.6,75.2,10,0
    .goto 470,34.74,63.44,10,0
    .goto 470,27.47,52.08,10,0
    .goto 470,36.17,40.83
    >>Kill |cRXP_ENEMY_Boss Bruggor|r.
    *|cRXP_WARN_You won't aggro the sleeping|r |cRXP_ENEMY_Rockjaw Fungus-Flingers|r |cRXP_WARN_unless you attack them|r.
    .complete 26318,2 --Boss Bruggor (1)
	.mob Boss Bruggor
step
    #requires Boss Bruggor
    #completewith Detonate trogg tunnel
    #title |cFFFCDC00Follow the Arrow|r
    .goto 470,27.47,52.08,30 >>Head to the Objective, efficiently killing monsters along the way without stopping |cRXP_WARN_only if you have a way to do it|r.
step
    #requires Detonate trogg tunnel
    #completewith next
    .goto 470,27.47,52.08,10,0
    >>Kill |cRXP_ENEMY_Boss Bruggor|r.
    *|cRXP_WARN_You won't aggro the sleeping|r |cRXP_ENEMY_Rockjaw Fungus-Flingers|r |cRXP_WARN_unless you attack them|r.
    .complete 26318,2 --Boss Bruggor (1)
	.mob Boss Bruggor
step
    #requires Detonate trogg tunnel
    .goto 470,36.17,40.83
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Detonator|r.
    .complete 26318,1 --Detonate trogg tunnel (1)
step
    .goto 470,27.47,52.08
    >>Kill |cRXP_ENEMY_Boss Bruggor|r.
    *|cRXP_WARN_You won't aggro the sleeping|r |cRXP_ENEMY_Rockjaw Fungus-Flingers|r |cRXP_WARN_unless you attack them|r.
    .complete 26318,2 --Boss Bruggor (1)
	.mob Boss Bruggor
step
    #completewith next
    #label Finishin' the Job
    .goto 470,34.89,63.73,10,0
    .goto 470,46.28,74.88,10,0
    .goto 470,60.56,72.62,10,0
    .goto 470,64.93,53.53,10,0
    .goto 470,76.16,37.36,10,0
    .goto 470,87.69,51.74,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk |cRXP_FRIENDLY_Kharmarn Palegrip|r.
    .turnin 26318 >>Turn in Finishin' the Job
    .accept 26329 >>Accept One More Thing
    .disablecheckbox
	.target Kharmarn Palegrip
step
    #completewith Finishin' the Job
    #title |cFFFCDC00Exit Cave|r
    .goto 469,34.42,66.18,30 >>Exit the Frostmane Hold Cave, efficiently killing monsters along the way without stopping |cRXP_WARN_only if you know how|r.
    *|cRXP_WARN_You won't aggro the sleeping |cRXP_ENEMY_Rockjaw Fungus-Flingers|r unless you attack them|r.
step
    #requires Finishin' the Job
    .goto 469,37.07,64.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk |cRXP_FRIENDLY_Kharmarn Palegrip|r.
    .turnin 26318 >>Turn in Finishin' the Job
    .accept 26329 >>Accept One More Thing
	.target Kharmarn Palegrip
-- step
-- 	#completewith next
--     .goto 470,95.285,56.045,15 >>Enter the Frostmane Hold cave
--     .isOnQuest 26318
-- step
--     #completewith Bruggor
--     .goto 470,87.857,52.221,15,0
--     .goto 470,83.611,44.352,15,0
--     .goto 470,74.752,38.437,15,0
--     .goto 470,64.507,54.540,15,0
--     .goto 470,60.714,72.486,15,0
--     .goto 470,45.246,74.390,15,0
--     .goto 470,31.866,44.578,45 >>Travel toward |cRXP_ENEMY_Boss Bruggor|r inside.
--     >>|cRXP_WARN_You won't aggro the sleeping |cRXP_ENEMY_Rockjaw Fungus-Flingers|r unless you attack them|r.
--     .noflyable --Azeroth Flying
-- step
--     #completewith Bruggor
--     .goto 470,87.857,52.221,15,0
--     .goto 470,83.611,44.352,15,0
--     .goto 470,74.752,38.437,15,0
--     .goto 470,64.507,54.540,15,0
--     .goto 470,60.714,72.486,15,0
--     .goto 470,45.246,74.390,15,0
--     .goto 470,31.866,44.578,45 >>Travel toward |cRXP_ENEMY_Boss Bruggor|r inside.
--     .flyable --Azeroth Flying
-- step
--     #sticky
--     #label Detonator
--     .goto 470,36.112,40.902,0,0
--     >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Detonator|r on the ground inside.
--     .complete 26318,1 --Detonate trogg tunnel (1)
-- step
--     #label Bruggor
--     .goto 470,21.791,58.700,15,0
--     .goto 470,31.866,44.578
--     >>Kill |cRXP_ENEMY_Boss Bruggor|r inside.
--     .complete 26318,2 --Boss Bruggor (1)
-- 	.mob Boss Bruggor
-- step
--     #requires Detonator
--     #completewith Finishing
--     .goto 470,45.246,74.390,15,0
--     .goto 470,60.714,72.486,15,0
--     .goto 470,64.507,54.540,15,0
--     .goto 470,74.752,38.437,15,0
--     .goto 470,83.611,44.352,15,0
--     .goto 469,33.781,66.184,20 >>Exit the Frostmane Hold cave
--     >>|cRXP_WARN_You won't aggro the sleeping |cRXP_ENEMY_Rockjaw Fungus-Flingers|r unless you attack them|r.
--     .noflyable --Azeroth Flying
--     .subzoneskip 135,1
-- step
--     #optional
--     #requires Detonator
--     #completewith Finishing
--     .goto 470,45.246,74.390,15,0
--     .goto 470,60.714,72.486,15,0
--     .goto 470,64.507,54.540,15,0
--     .goto 470,74.752,38.437,15,0
--     .goto 470,83.611,44.352,15,0
--     .goto 469,33.781,66.184,20 >>Exit the Frostmane Hold cave
--     .flyable --Azeroth Flying
--     .subzoneskip 135,1
-- step
--     #label Finishing
--     #requires Detonator
--     .goto 469,37.283,65.200
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk |cRXP_FRIENDLY_Kharmarn Palegrip|r.
--     .turnin 26318 >>Turn in Finishin' the Job
--     .accept 26329 >>Accept One More Thing
-- 	.target Kharmarn Palegrip
-- step not faster on average
--     #completewith next
--     .goto 469,36.284,70.305,-1
--     .goto 469,47.880,44.670,-1
--     *|cRXP_WARN_Spamming /sit or removing your gear will make you die faster|r.
--     .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r.
step
    #completewith next
    #label in One More Thing
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Tinker Mekkatorque|r and |cRXP_FRIENDLY_Hinkles Fastblast|r.
    .goto 469,37.25,59.43,10,0
    .goto 469,37.26,54.35,10,0
    .goto 469,38.71,40.01,10,0
    .turnin 26329 >>Turn in One More Thing
    .accept 26331 >>Accept Crushcog's Minions
    .disablecheckbox
    .accept 26333 >>Accept No Tanks!
    .disablecheckbox
	.target +High Tinker Mekkatorgue
step
    #title |cFFFCDC00Follow the Arrow|r
    #completewith in One More Thing
    .goto 469,38.84,33.15,100 >>Head to the Questgiver, efficiently killing monsters along the way without stopping |cRXP_WARN_only if you cannot mount and have a way to do it|r.
step
    #requires in One More Thing
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Tinker Mekkatorque|r and |cRXP_FRIENDLY_Hinkles Fastblast|r.
    .turnin 26329 >>Turn in One More Thing
    .accept 26331 >>Accept Crushcog's Minions
    .goto 469,38.84,33.15 --clickradius
    .goto 469,38.802,32.715 --npc location
	.target +High Tinker Mekkatorgue
    .accept 26333 >>Accept No Tanks!
    .goto 469,38.46,33.49 --clickradius
    .goto 469,38.204,33.662 --npc location
	.target +Hinkles Fastblast
-- step
--     >>|cRXP_WARN_[RARE] Check for |cRXP_ENEMY_Timber|r. Kill him if he's up|r.
--     .unitscan Timber
step
    #completewith next
    #label Repaired Mechano-Tanks destroyed
    .goto 469,42.31,31.79,10,0
    .goto 469,47.39,27.48,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Repaired Mechano-Tanks|r.
    *|cRXP_WARN_You can do this from a distance|r.
    .complete 26333,1 --Repaired Mechano-Tanks destroyed (5)
	.mob Repaired Mechano-Tank
    .use 58200
step
    #completewith Repaired Mechano-Tanks destroyed
    .goto 469,49.24,26.54,10 >>Head to the Objective, efficiently killing monsters along the way without stopping |cRXP_WARN_only if you cannot mount and have a way to do it|r.
step
    #requires Repaired Mechano-Tanks destroyed
    #hidewindow
    #completewith Crushcog's Minions killed
    #loop
    .goto 469,52.77,23.59,10,0
    .goto 469,54.43,21.88,10,0
    .goto 469,55.97,21.22,10,0
    .goto 469,56.07,24.99,20,0
    .goto 469,53.61,26.69,20,0
    .goto 469,58.18,23.56,30,0
    .goto 469,58.66,21.09,30,0
    .goto 469,58.14,18.36,30,0
    +1
step
    #requires Repaired Mechano-Tanks destroyed
    #completewith next
    >>Kill |cRXP_ENEMY_Crushcog Battle Suits|r and |cRXP_ENEMY_Irradiated Technicians|r.
	.complete 26331,1 --Crushcog's Minions killed (8)
	.mob Crushcog Battle Suit
	.mob Irradiated Technician
step
    #requires Repaired Mechano-Tanks destroyed
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Repaired Mechano-Tanks|r.
    *|cRXP_WARN_You can do this from a distance|r.
    .complete 26333,1 --Repaired Mechano-Tanks destroyed (5)
	.mob Repaired Mechano-Tank
    .use 58200
step
    #label Crushcog's Minions killed
    >>Kill |cRXP_ENEMY_Crushcog Battle Suits|r and |cRXP_ENEMY_Irradiated Technicians|r.
	.complete 26331,1 --Crushcog's Minions killed (8)
	.mob Crushcog Battle Suit
	.mob Irradiated Technician
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Tinker Mekkatorque|r, |cRXP_FRIENDLY_Hinkles Fastblast|r, and |cRXP_FRIENDLY_Kelsey Steelspark|r.
    .turnin 26331 >>Turn in Crushcog's Minions
    .goto 469,38.96,33.09 --clickradius
    .goto 469,38.802,32.715 --npc location
	.target +High Tinker Mekkatorgue
    .turnin 26333 >>Turn in No Tanks!
    .goto 469,38.27,33.79 --clickradius
    .goto 469,38.204,33.662 --npc location
	.target +Hinkles Fastblast
    .accept 26339 >>Accept Staging in Brewnall
    .goto 469,38.204,33.662 --clickradius
    .goto 469,38.025,33.570 --npc location
	.target +Kelsey Steelspark
step
    #completewith next
    #label Staging in Brewnall
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarvi Shadowstep|r.
    .turnin 26339 >>Turn in Staging in Brewnall
    .accept 26342 >>Accept Paint it Black
    .disablecheckbox
	.target Jarvi Shadowstep
step
    --insert if bags are needed
    #completewith Staging in Brewnall
    .goto 469,39.94,35.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carson Crazybread|r.
    .collect 4496,3
    .buy 4496,3
    .target Carson Crazybread
step
    #requires Staging in Brewnall
    #completewith next
    +|cRXP_WARN_[RARE]|r Kill |cRXP_ENEMY_Gibblewilt|r if he's up, |cRXP_WARN_as he gives a lot of XP|r.
    .unitscan Gibblewilt
step
    #requires Staging in Brewnall
    .goto 469,48.82,52.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarvi Shadowstep|r.
    .turnin 26339 >>Turn in Staging in Brewnall
    .accept 26342 >>Accept Paint it Black
	.target Jarvi Shadowstep
step
    #loop
    .goto 469,55.05,48.64,25,0
    .goto 469,54.64,52.83,25,0
    .goto 469,54.24,43.3,25,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Crushcog Sentry Bot|r |cRXP_WARN_while facing them|r
    *|cRXP_WARN_If you can pull them from distance it is advised|r.
    .complete 26342,1 --Crushcog's Sentry Bot blinded (5)
	.mob Crushcog Sentry Bot
    .use 58203
-- step
--     #optional
--     #questguide
--     .goto 469,48.744,52.880
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarvi Shadowstep|r.
--     .turnin 26342 >>Turn in Paint it Black
--     .accept 26364 >>Accept Down with Crushcog!
-- 	.target Jarvi Shadowstep
step
    .goto 469,49,52.76 --clickradius
    .goto 469,48.744,52.880 --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarvi Shadowstep|r.
    .turnin 26342 >>Turn in Paint it Black
	.target Jarvi Shadowstep
step
    #completewith next
    #label Bound for Kharanos
    .goto 469,51.44,53.16,15,0
    .goto 469,57.91,54.65,15,0
    .goto 469,63.5,54.55,15,0
    .goto 469,75.58,55.64,15,0
    .goto 27,49.65,45.29,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ciara Deepstone|r.
    .accept 26380 >>Accept Bound for Kharanos
	.target Ciara Deepstone
step
    #completewith Bound for Kharanos
    #hidewindow
    .goto 27,49.85,45.08,10 >>1
step
    #requires Bound for Kharanos
    .goto 27,49.85,45.08 --clickradius
    .goto 27,49.906,44.980 --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ciara Deepstone|r.
    .accept 26380 >>Accept Bound for Kharanos
	.target Ciara Deepstone
-- step
--     #questguide
--     #optional
--     #completewith Razlo
--     #label Mekkatalk
--     .goto 469,57.188,47.535
--     .gossipoption 38798 >> Talk to |cRXP_FRIENDLY_High Tinker Mekkatorque|r.
--     .timer 72,Down with Crushcog! RP
--     .target High Tinker Mekkatorque
--     .isOnQuest 26364
-- step
--     #questguide
--     #optional
--     #completewith next
--     #requires Mekkatalk
--     >>|cRXP_WARN_Wait out the RP|r.
--     +Use the |T308321:0|t[Orbital Targeting Device] on |cRXP_ENEMY_Razlo Crushcog|r and |cRXP_ENEMY_Crushcog's Guardians|r.
--     .isOnQuest 26364
--     .use 58253
-- step
--     #questguide
--     #label Razlo
--     .goto 469,58.749,42.222
--     >>Defeat |cRXP_ENEMY_Razlo Crushcog|r.
--     .complete 26364,2 --Razlo Crushcog defeated (1)
--     .use 58253
--     .mob Razlo Crushcog
--     .mob Crushcog's Guardians
-- step
--     #questguide
--     .goto 469,48.744,52.880
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarvi Shadowstep|r.
--     .turnin 26364 >>Turn in Down with Crushcog!
--     .accept 26373 >>Accept On to Kharanos
-- 	.target Jarvi Shadowstep
--XX Doable by other races but simpler to do for gnomes only
-- step
--     #sticky
--     #label Tanks
--     #loop
--     .goto 469,59.638,21.877,0
--     .goto 469,53.711,22.482,0
--     .goto 469,58.619,23.568,0
--     .waypoint 469,59.638,21.877,15,0
--     .waypoint 469,59.620,19.066,15,0
--     .waypoint 469,58.784,18.047,15,0
--     .waypoint 469,57.507,18.837,15,0
--     .waypoint 469,56.560,20.889,15,0
--     .waypoint 469,55.463,21.067,15,0
--     .waypoint 469,53.711,22.482,15,0
--     .waypoint 469,53.126,24.536,15,0
--     .waypoint 469,54.080,26.011,15,0
--     .waypoint 469,55.407,23.742,15,0
--     .waypoint 469,56.513,23.676,15,0
--     .waypoint 469,57.585,23.609,15,0
--     .waypoint 469,58.619,23.568,15,0
--     >>Use the |T133710:0|t[Techno-Grenades] on the |cRXP_FRIENDLY_Repaired Mechano-Tanks|r.
--     .complete 26333,1 --Repaired Mechano-Tanks destroyed (5)
-- 	.mob Repaired Mechano-Tank
--     .use 58200
-- step
--     #sticky
--     #label CrushcogM
--     #loop
--     .goto 469,54.018,26.884,0
--     .goto 469,60.672,22.216,0
--     .goto 469,52.540,24.667,0
--     .goto 469,54.018,26.884,45,0
--     .goto 469,55.919,26.336,45,0
--     .goto 469,57.608,25.933,45,0
--     .goto 469,60.002,25.191,45,0
--     .goto 469,61.148,25.266,45,0
--     .goto 469,60.490,23.847,45,0
--     .goto 469,60.672,22.216,45,0
--     .goto 469,56.948,18.526,45,0
--     .goto 469,56.251,19.440,45,0
--     .goto 469,54.541,18.700,45,0
--     .goto 469,54.364,20.143,45,0
--     .goto 469,52.960,21.320,45,0
--     .goto 469,52.540,24.667,45,0
--     >>Kill |cRXP_ENEMY_Crushcog Battle Suits|r and |cRXP_ENEMY_Irradiated Technicians|r.
-- 	.complete 26331,1 --Crushcog's Minions killed (8)
-- 	.mob Crushcog Battle Suit
-- 	.mob Irradiated Technician
-- step
--     #optional
--     .goto 469,66.100,26.168,45,0
--     .goto 469,66.023,27.211,45 >>|cRXP_WARN_[RARE] Check for the |cRXP_ENEMY_Weaponized Rabbot|r. Kill it if it's up|r.
-- 	.unitscan Weaponized Rabbot
--     .isOnQuest 26331
--     .noflyable
-- step
--     #optional
--     .goto 469,68.698,35.590,45,0
--     .goto 469,67.992,35.519,45,0
--     .goto 469,67.433,37.129,45 >>|cRXP_WARN_[RARE] Check for |cRXP_ENEMY_Timber|r. Kill him if he's up|r.
--     .unitscan Timber
--     .isOnQuest 26331
--     .noflyable
-- step
--     #optional
--     #requires CrushcogM
-- --XXREQ Placeholder invis step until multiple requires per step
-- step << skip
--     #requires Tanks
--     #completewith next
--     .goto 469,56.346,21.833,-1
--     .goto 469,47.880,44.670,-1
-- -- .goto 425,38.29,58.12
--     *|cRXP_WARN_Spamming /sit or removing your gear will make you die faster|r.
--     .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r.
--     .skill riding,75,1
-- --XX unlikely to ever be worth
-- step
--     #requires Tanks
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Tinker Mekkatorque|r, |cRXP_FRIENDLY_Hinkles Fastblast|r, and |cRXP_FRIENDLY_Kelsey Steelspark|r.
--     .turnin 26331 >>Turn in Crushcog's Minions
--     .goto 469,38.802,32.715
-- 	.target +High Tinker Mekkatorgue
--     .turnin 26333 >>Turn in No Tanks!
--     .goto 469,38.204,33.662
-- 	.target +Hinkles Fastblast
--     .accept 26339 >>Accept Staging in Brewnall
--     .goto 469,38.025,33.570
-- 	.target +Kelsey Steelspark
-- step
--     .goto 469,48.744,52.880
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarvi Shadowstep|r.
--     .turnin 26339 >>Turn in Staging in Brewnall
--     .accept 26342 >>Accept Paint it Black
-- 	.target Jarvi Shadowstep
-- step
--     #loop
--     .goto 469,52.723,50.681,0
--     .goto 469,52.556,44.220,0
--     .goto 469,61.154,48.908,0
--     .goto 469,52.723,50.681,50,0
--     .goto 469,55.901,51.426,50,0
--     .goto 469,52.556,44.220,50,0
--     .goto 469,54.584,39.961,50,0
--     .goto 469,61.154,48.908,50,0
--     >>Use the |T133037:0|t[Paintinator] on |cRXP_ENEMY_Crushcog Sentry-Bots|r.
--     .complete 26342,1 --Crushcog's Sentry Bot blinded (5)
-- 	.mob Crushcog Sentry Bot
--     .use 58203
-- step
--     #optional
--     #questguide
--     .goto 469,48.744,52.880
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarvi Shadowstep|r.
--     .turnin 26342 >>Turn in Paint it Black
--     .accept 26364 >>Accept Down with Crushcog!
-- 	.target Jarvi Shadowstep
-- step
--     .goto 469,48.744,52.880
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarvi Shadowstep|r.
--     .turnin 26342 >>Turn in Paint it Black
-- 	.target Jarvi Shadowstep
-- step
--     #questguide
--     #optional
--     #completewith Razlo
--     #label Mekkatalk
--     .goto 469,57.188,47.535
--     .gossipoption 38798 >> Talk to |cRXP_FRIENDLY_High Tinker Mekkatorque|r.
--     .timer 72,Down with Crushcog! RP
--     .target High Tinker Mekkatorque
--     .isOnQuest 26364
-- step
--     #questguide
--     #optional
--     #completewith next
--     #requires Mekkatalk
--     >>|cRXP_WARN_Wait out the RP|r.
--     +Use the |T308321:0|t[Orbital Targeting Device] on |cRXP_ENEMY_Razlo Crushcog|r and |cRXP_ENEMY_Crushcog's Guardians|r.
--     .isOnQuest 26364
--     .use 58253
-- step
--     #questguide
--     #label Razlo
--     .goto 469,58.749,42.222
--     >>Defeat |cRXP_ENEMY_Razlo Crushcog|r.
--     .complete 26364,2 --Razlo Crushcog defeated (1)
--     .use 58253
--     .mob Razlo Crushcog
--     .mob Crushcog's Guardians
-- step
--     #questguide
--     .goto 469,48.744,52.880
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarvi Shadowstep|r.
--     .turnin 26364 >>Turn in Down with Crushcog!
--     .accept 26373 >>Accept On to Kharanos
-- 	.target Jarvi Shadowstep
-- step
--     .goto 27,49.906,44.980
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ciara Deepstone|r.
--     .accept 26380 >>Accept Bound for Kharanos
-- 	.target Ciara Deepstone
-- --XX Doable by other races but simpler to do for gnomes only
]])

--Dwarf & Gnome Dun Morogh
RXPGuides.RegisterGuide([[
#retail
#version 2
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(1-80)|r Default
#name ac) Dwarf & Gnome Dun Morogh
#displayname |cFF00CCFF2|r - Dun Morogh 
#defaultfor Dwarf Gnome !DK
#next ba) Elwynn Forest

<< Alliance

step << Gnome
    #completewith next
    #label Frostmane Aggression
    .goto 27,49.85,45.09,10,0
    .goto 27,50.6,46.16,10,0
    .goto 27,51.56,47.24,10,0
    .goto 27,53.07,49.85,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tharran|r.
    .accept 25724 >>Accept Frostmane Aggression
	.target Captain Tharran
step << Gnome
    #hidewindow
    #completewith Frostmane Aggression
    .goto 27,53.73,52.04,40 >>1
step << Gnome
    #requires Frostmane Aggression
    .goto 27,53.73,52.04 --clickradius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tharran|r.
    .accept 25724 >>Accept Frostmane Aggression
	.target Captain Tharran
step << Dwarf
    .goto 27,53.81,52.18 --clickradius
    .goto 27,53.713,52.190 --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tharran|r.
    .accept 25724 >>Accept Frostmane Aggression
	.target Captain Tharran
step
    .goto 27,53.8,51.85 << Gnome --clickradius
    .goto 27,53.83,52.03 << Dwarf --clickradius
    .goto 27,53.807,51.935 --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wembil Taskwidget|r.
    *|cRXP_WARN_Herbing Herbs and Mining Veins provides XP. Only gather resources in your direct path|r.
    .train 2366 >>Train |T4620675:0|t[Herbalism]
    .target Wembil Taskwidget
    .skipgossip 47396,1,1,1
step
    .goto 27,53.8,51.85 << Gnome --clickradius
    .goto 27,53.83,52.03 << Dwarf --clickradius
    .goto 27,53.807,51.935 --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wembil Taskwidget|r.
    *|cRXP_WARN_Mining Veins provides XP. Only gather resources in your direct path|r.
    .train 2575 >> Train |T4620679:0|t[Mining]
    .target Wembil Taskwidget
    .skipgossip 47396,2,3,2
step
    .goto 27,54.09,51.16 --clickradius dwarf
    .goto 27,54.196,51.169 --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rejold Barleybrew|r.
    .accept 315 >>Accept The Perfect Stout
	.target Rejold Barleybrew
step
    .goto 27,54.04,50.74 --clickradius
    .goto 27,53.933,50.684  --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r.
    .accept 384 >>Accept Beer Basted Boar Ribs
	.target Ragnar Thunderbrew
step
    #completewith next
    #label Honor Students
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gremlock Pilsnor|r.
    .accept 6387 >>Accept Honor Students
    .train 2550 >>Train |T4620671:0|t[Cooking]
    .disablecheckbox
	.target Gremlock Pilsnor
step
    #completewith Honor Students
    .goto 27,54.06,50.23,5,0 
    .goto 27,54.28,50.27,5 >>Enter the Thunderbrew Distillery.
step
    #completewith next
    #label Honor Students2
    #requires Honor Students
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gremlock Pilsnor|r.
    .accept 6387 >>Accept Honor Students
    .train 2550 >>Train |T4620671:0|t[Cooking]
	.target Gremlock Pilsnor
step
    #requires Honor Students
    #completewith Honor Students2
    .goto 27,54.6,50.73,5 >>Enter the Kitchen.
step
    #requires Honor Students2
    .goto 27,54.73,50.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gremlock Pilsnor|r |cRXP_WARN_[1]|r.
    .accept 6387 >>Accept Honor Students
	.target Gremlock Pilsnor
step
    #requires Honor Students2
    .goto 27,54.73,50.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gremlock Pilsnor|r |cRXP_WARN_[2]|r.
    .train 2550 >>Train |T4620671:0|t[Cooking]
	.target Gremlock Pilsnor
step << Gnome
    .goto 27,54.5,50.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r |cRXP_WARN_[1]|r.
    .turnin 26380 >>Turn in Bound for Kharanos
    .isOnQuest 26380
	.target Innkeeper Belm
step << Gnome
    #completewith next
    #label Rhapsody Malt
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r |cRXP_WARN_[3]|r.
    .complete 384,2 --1/1 Rhapsody Malt
	.target Innkeeper Belm
    .isOnQuest 384
step << Gnome
    #completewith Rhapsody Malt
    .goto 27,54.5,50.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r |cRXP_WARN_[2]|r.
    .home >>Set your Hearthstone to Thunderbrew Distillery
	.target Innkeeper Belm
step << Gnome
    #requires Rhapsody Malt
    .goto 27,54.5,50.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r |cRXP_WARN_[3]|r.
    .skipgossipid 30011
    .complete 384,2 --1/1 Rhapsody Malt
    .buy 2894,1
	.target Innkeeper Belm
    .isOnQuest 384
step << Dwarf
    #completewith next
    #label Rhapsody Malt
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r |cRXP_WARN_[2]|r.
    .complete 384,2 --1/1 Rhapsody Malt
	.target Innkeeper Belm
    .isOnQuest 384
step << Dwarf
    #completewith Rhapsody Malt
    .goto 27,54.5,50.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r |cRXP_WARN_[1]|r.
    .home >>Set your Hearthstone to Thunderbrew Distillery
	.target Innkeeper Belm
step << Dwarf
    #requires Rhapsody Malt
    .goto 27,54.5,50.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r |cRXP_WARN_[2]|r.
    .skipgossipid 30011
    .complete 384,2 --1/1 Rhapsody Malt
    .buy 2894,1
	.target Innkeeper Belm
    .isOnQuest 384
step << Dwarf
    #completewith Thunderbrew Distillery
    #label Don't Forget About Us
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharek Blackstone|r.
    .turnin 24493 >>Turn in Don't Forget About Us
	.target Tharek Blackstone
step << Dwarf
    #completewith Don't Forget About Us
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grady Bannson|r.
    .train 2550 >>Train |T643856:0|t[Battle Pet Training]
    .skipgossipid 41206
    .target Grady Bannson
step << Dwarf
    #completewith Don't Forget About Us
    #label Thunderbrew Distillery
    .goto 27,54.24,50.27,5,0
    .goto 27,54.08,50.31,5,0
    .goto 27,54.06,50.5,5 >>Exit the Thunderbrew Distillery.
step << Dwarf
    #requires Thunderbrew Distillery
    .goto 27,53.9,50.46,8,0
    .goto 27,53.81,50.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grady Bannson|r.
    .train 2550 >>Train |T643856:0|t[Battle Pet Training]
    .skipgossipid 41206
    .target Grady Bannson
step << Dwarf
    #requires Thunderbrew Distillery
    .goto 27,53.18,49.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharek Blackstone|r.
    .turnin 24493 >>Turn in Don't Forget About Us
	.target Tharek Blackstone

-- --replace
-- step << Gnome
--     #completewith Thunderbrew Distillery
--     #label Tender Boar Ribs
-- 	>>Kill |cRXP_ENEMY_Crag Boars|r. Loot them for their |T133972:0|t[|cRXP_LOOT_Tender Boar Ribs|r].
--     .complete 384,1 --Tender Boar Ribs (4)
-- 	.mob Crag Boar
step << Gnome
    #completewith Thunderbrew Distillery
    #label Tender Boar Ribs
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Shimmerweed|r
    .complete 315,1 --Shimmerweed (7)
step << Gnome
    #completewith Tender Boar Ribs
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grady Bannson|r.
    .train 2550 >>Train |T643856:0|t[Battle Pet Training]
    .skipgossipid 41206
    .target Grady Bannson
step << Gnome
    #completewith Tender Boar Ribs
    #label Thunderbrew Distillery
    .goto 27,54.24,50.27,5,0
    .goto 27,54.08,50.31,5,0
    .goto 27,54.06,50.5,5 >>Exit the Thunderbrew Distillery.
step << Gnome 
    #requires Thunderbrew Distillery
    .goto 27,53.9,50.46,5,0
    .goto 27,53.82,50.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grady Bannson|r.
    .train 2550 >>Train |T643856:0|t[Battle Pet Training]
    .skipgossipid 41206
    .target Grady Bannson
-- ---replace
-- step << Gnome
--     #requires Thunderbrew Distillery
--     #completewith next
--     #label Crag Boars
--     .goto 27,53,46.19,20,0
--     .goto 27,52.53,43.08,20,0
--     .goto 27,51.7,40.39,20,0
-- 	>>Kill |cRXP_ENEMY_Crag Boars|r. Loot them for their |T133972:0|t[|cRXP_LOOT_Tender Boar Ribs|r].
--     .complete 384,1 --Tender Boar Ribs (4)
-- 	.mob Crag Boar
---
step << Dwarf
    #completewith next
    #label Bound for KharanosDwarf
    .goto 27,51.79,47.6,5,0
    .goto 27,50.82,45.7,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ciara Deepstone|r.
    .accept 26380 >>Accept Bound for Kharanos
	.target Ciara Deepstone
step << Dwarf
    #hidewindow
    #completewith Bound for KharanosDwarf
    .goto 27,50,44.88,40 >>1
step << Dwarf
    #requires Bound for KharanosDwarf
    .goto 27,50,44.88 --clickradius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ciara Deepstone|r.
    .accept 26380 >>Accept Bound for Kharanos
	.target Ciara Deepstone
step << Dwarf
    #completewith WayShortcut1
    #label WayShortcut
    .goto 27,49.81,43.53,5,0
    >>Kill |cRXP_ENEMY_Frostmane Snowstriders|r and |cRXP_ENEMY_Frostmane Seers|r.  Loot them for |T134184:0|t[|cRXP_LOOT_Shimmerweed|r].
    .complete 25724,2 --Frostmane Snowstrider slain (7)
    .complete 25724,1 --Frostmane Seer slain (5)
	.mob +Frostmane Seer
step << Dwarf
    #completewith WayShortcut
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Shimmerweed|r
    .complete 315,1 --Shimmerweed (7)
step << Dwarf
    #completewith WayShortcut
    #label WayShortcut1
    .goto 27,49.43,43.53,10 >>Navigate up the hill
step << Gnome
    #completewith WayShortcut1
    #label WayShortcut
    .goto 27,49.73,43.71,5,0
    .goto 27,49.81,43.43,5,0
    .goto 27,51.79,47.6,10,0
    .goto 27,50.39,44.94,10,0
    >>Kill |cRXP_ENEMY_Frostmane Snowstriders|r and |cRXP_ENEMY_Frostmane Seers|r.  Loot them for |T134184:0|t[|cRXP_LOOT_Shimmerweed|r].
    .complete 25724,2 --Frostmane Snowstrider slain (7)
    .complete 25724,1 --Frostmane Seer slain (5)
	.mob +Frostmane Seer
step << Gnome
    #completewith WayShortcut
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Shimmerweed|r
    .complete 315,1 --Shimmerweed (7)
step << Gnome
    #completewith WayShortcut
    #label WayShortcut1
    .goto 27,49.37,43.57,10 >>Navigate up the hill
step
    #requires WayShortcut1
    #hidewindow
    #completewith Frostmane Seer
    #loop
    .goto 27,48.16,42.52,15,0
    .goto 27,49.12,39.67,20,0
    .goto 27,49.07,37.1,20,0
    .goto 27,47.97,37.91,20,0
    .goto 27,47.52,40.93,20,0
    +1
step
    #requires WayShortcut1
    #completewith Frostmane Seer
    +|cRXP_WARN_[RARE]|r Kill |cRXP_ENEMY_Great Father Arctikus|r if he's up, |cRXP_WARN_as he gives a lot of XP|r.
    *After these objectives, we'll deathskip. Feel free to lower your health beforehand.
    .unitscan Great Father Arctikus
step
    #completewith next
    #requires WayShortcut1
    >>Kill |cRXP_ENEMY_Frostmane Snowstriders|r and |cRXP_ENEMY_Frostmane Seers|r.  Loot them for |T134184:0|t[|cRXP_LOOT_Shimmerweed|r].
    .complete 25724,2 --Frostmane Snowstrider slain (7)
    .complete 25724,1 --Frostmane Seer slain (5)
	.mob +Frostmane Seer
step
    #requires WayShortcut1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Shimmerweed|r
    .complete 315,1 --Shimmerweed (7)
step
    #label Frostmane Seer
    >>Kill |cRXP_ENEMY_Frostmane Snowstriders|r and |cRXP_ENEMY_Frostmane Seers|r.  Loot them for |T134184:0|t[|cRXP_LOOT_Shimmerweed|r].
    .complete 25724,2 --Frostmane Snowstrider slain (7)
    .complete 25724,1 --Frostmane Seer slain (5)
	.mob +Frostmane Seer
step
    #completewith next
    #label Turn in Honor Students
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brolan Galebeard|r.
    .turnin 6387 >>Turn in Honor Students
    .accept 6391 >>Accept Ride to Ironforge
    .disablecheckbox
step
    #completewith Turn in Honor Students
    .goto 27,50.63,39.51
    .deathskip >>Pull & Run into as many monsters as possible to die and resurrect at the |cRXP_FRIENDLY_Spirit Healer|r.
    *|cRXP_WARN_Spamming /sit or removing your gear will make you die faster|r.
    .target Spirit Healer
step
    #requires Turn in Honor Students
    .goto 27,53.802,52.762  --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brolan Galebeard|r.
    .turnin 6387 >>Turn in Honor Students
    .accept 6391 >>Accept Ride to Ironforge
	.target Brolan Galebeard
step
    #requires Shimmerweed
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tharran|r and |cRXP_FRIENDLY_Quartermaster Glynna|r
    .turnin 25724 >>Turn in Frostmane Aggression
    .accept 313 >>Accept Forced to Watch from Afar
    .accept 25667 >>Accept Culling the Wendigos
    .goto 27,53.713,52.190 --npc location
	.target +Captain Tharran
    .accept 25668 >>Accept Pilfered Supplies
    .goto 27,53.707,52.095 --npc location
	.target +Quartermaster Glynna
-- step
--     #completewith Wendigo Cave2
--     #label Wendigo Cave
--     >>Kill |cRXP_ENEMY_Wendigos|r
--     .complete 25667,1 --Wendigo slain (10)
-- 	.mob Wendigo
-- 	.mob Young Wendigo
step
    #completewith next
    #label Wendigo Cave
	>>Kill |cRXP_ENEMY_Crag Boars|r. Loot them for their |T133972:0|t[|cRXP_LOOT_Tender Boar Ribs|r].
    .complete 384,1 --Tender Boar Ribs (4)
	.mob Crag Boar
step
    #completewith Wendigo Cave
    .goto 27,51.85,53.93,20,0
    .goto 27,49.61,52.86,20,0
    .goto 27,49.48,52.07,15 >>Enter the Wendigo Cave
step
    #requires Wendigo Cave
    #completewith Mountaineer Valgrum2
    >>Kill |cRXP_ENEMY_Wendigos|r
    .complete 25667,1 --Wendigo slain (10)
	.mob Wendigo
	.mob Young Wendigo
step
    #requires Wendigo Cave
    #completewith Mountaineer Valgrum2
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the|cRXP_PICK_Pilfered Supplies|r
    .complete 25668,1 --Pilfered Supplies (6)
step
    #requires Wendigo Cave
    #completewith next
    #label Mountaineer Dunstan
    .goto 29,61.57,86.83,10,0
    .goto 29,62.53,76.71,10,0
    .goto 29,54.19,72.4,10,0
    .goto 29,50.17,58.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Dunstan|r
    .complete 313,1 --Convey orders to Mountaineer Dunstan (1)
	.target Mountaineer Dunstan
step
    #hidewindow
    #completewith Mountaineer Dunstan
    .goto 29,51.81,48.44,30 >>1
step
    #requires Mountaineer Dunstan
    .goto 29,51.81,48.44 --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Dunstan|r
    .complete 313,1 --Convey orders to Mountaineer Dunstan (1)
	.target Mountaineer Dunstan
    .skipgossipid 37802
step
    #completewith next
    #label Mountaineer Lewin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Lewin|r
    .complete 313,2 --Convey orders to Mountaineer Lewin (1)
	.target Mountaineer Lewin
    .skipgossipid 37803
step
    #hidewindow
    #completewith Mountaineer Lewin
    .goto 29,60.272,56.211,20 >>1
step
    #requires Mountaineer Lewin
    .goto 29,60.272,56.211 --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Lewin|r
    .complete 313,2 --Convey orders to Mountaineer Lewin (1)
	.target Mountaineer Lewin
    .skipgossipid 37803
step
    #completewith next
    #label Mountaineer Valgrum
    .goto 29,61.47,51.5,7,0
    .goto 29,59.69,44.37,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Valgrum|r
    .complete 313,3 --Convey orders to Mountaineer Valgrum (1)
	.target Mountaineer Valgrum
    .skipgossipid 37551
step
    #hidewindow
    #completewith Mountaineer Valgrum
    .goto 29,60.91,22.88,30 >>1
step
    #requires Mountaineer Valgrum
    #label Mountaineer Valgrum2
    .goto 29,60.91,22.88 --clickradius
    .goto 29,61.511,22.248 --npc location
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Valgrum|r
    .complete 313,3 --Convey orders to Mountaineer Valgrum (1)
	.target Mountaineer Valgrum
    .skipgossipid 37551
step
    #completewith WaytoEdan
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Pilfered Supplies|r
    .complete 25668,1 --Pilfered Supplies (6)
step
    #completewith WaytoEdan
    >>Kill |cRXP_ENEMY_Wendigos|r
    .complete 25667,1 --Wendigo slain (10)
	.mob Wendigo
	.mob Young Wendigo
step
    #completewith WaytoEdan
    +|cRXP_WARN_[RARE]|r: Kill |cRXP_ENEMY_Edan the Howler|r if he's up, |cRXP_WARN_as he gives a lot of XP|r.
    *|cRXP_WARN_[VERY RARE TREASURE]|r 
    *Loot the |cRXP_PICK_Treasure|r if it's up , |cRXP_WARN_as it grants massive XP|r. 
    *|cFFFF0000Avoid looking around for too long|r
    .unitscan Edan the Howler
step
    #hidewindow
    #label WaytoEdan
    .goto 29,55.31,17.3,15,0
    .goto 29,50.09,19.08,15,0
    .goto 29,41.77,31.49,15,0
    .goto 29,34.13,36.32,15,0
    .goto 29,30.67,55.6,30 >>1
    .isOnQuest 25667,25668
step
    #hidewindow
    #completewith Forced to Watch from Afar
    #loop
    .goto 29,29.13,40.54,25,0
    .goto 29,41.53,36.64,25,0
    .goto 29,37.28,50.41,25,0
    +1
step
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Pilfered Supplies|r
    .complete 25668,1 --Pilfered Supplies (6)
step
    >>Kill |cRXP_ENEMY_Wendigos|r
    .complete 25667,1 --Wendigo slain (10)
	.mob Wendigo
	.mob Young Wendigo
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Pilfered Supplies|r
    .complete 25668,1 --Pilfered Supplies (6)
step
    #completewith next
    #label Forced to Watch from Afar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tharran|r and |cRXP_FRIENDLY_Quartermaster Glynna|r
    .turnin 313 >>Turn in Forced to Watch from Afar
    .turnin 25667 >>Turn in Culling the Wendigos
    .accept 25792 >>Accept Pushing Forward
    .disablecheckbox
	.target +Captain Tharran
    .turnin 25668 >>Turn in Pilfered Supplies
    .disablecheckbox
	.target +Quartermaster Glynna
step
    #completewith Forced to Watch from Afar
    .deathskip >>Pull & Run into as many monsters as possible to die and resurrect at the |cRXP_FRIENDLY_Spirit Healer|r.
    *|cRXP_WARN_Spamming /sit or removing your gear will make you die faster|r.
    .target Spirit Healer
step
    #requires Forced to Watch from Afar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tharran|r and |cRXP_FRIENDLY_Quartermaster Glynna|r
    .turnin 313 >>Turn in Forced to Watch from Afar
    .turnin 25667 >>Turn in Culling the Wendigos
    .accept 25792 >>Accept Pushing Forward
    .goto 27,53.713,52.190
	.target +Captain Tharran
    .turnin 25668 >>Turn in Pilfered Supplies
    .goto 27,53.707,52.095
	.target +Quartermaster Glynna





















]])

--Human Northshire Valley
RXPGuides.RegisterGuide([[
#retail
#version 2
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(1-80)|r Default
#name ab) Northshire Valley
#displayname Northshire Valley |cRXP_ENEMY_(Alternative)|r
#defaultfor Human !DK
#next ac) Human Elwynn Forest

<< Alliance

step
    #completewith next
    +Welcome to the Human Starting Zone Guide of RestedXP.
    +It's highly recommended to |cRXP_WARN_NOT|r. level |cRXP_WARN_in the Human Starting Zone|r and instead choose |cRXP_WARN_Exile's Reach|r for faster leveling.
    *|cRXP_WARN_The Human Starting Experience|r requires a lot of experience from Rares and Treasure to be equally efficient.
step
    .goto 425,33.56,53.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r.
    .accept 28757 >>Accept Beating Them Back! << Human Mage/KulTiran Mage
    .accept 28762 >>Accept Beating Them Back! << Human Paladin
    .accept 28763 >>Accept Beating Them Back! << Human Priest/KulTiran Priest
    .accept 28764 >>Accept Beating Them Back! << Human Rogue/KulTiran Rogue
    .accept 28765 >>Accept Beating Them Back! << Human Warlock/KulTiran Warlock
    .accept 28766 >>Accept Beating Them Back! << Human Warrior/KulTiran Warrior
    .accept 28767 >>Accept Beating Them Back! << Human Hunter/KulTiran Hunter
    .accept 29078 >>Accept Beating Them Back! << !Human !KulTiran
    .accept 31139 >>Accept Beating Them Back! << Human Death Knight/Human Monk/KulTiran Death Knight/KulTiran Monk/KulTiran Druid/KulTiran Shaman
    .target Marshal McBride
step
    #loop
    .goto 425,29.58,44.71,0
    .goto 425,31.33,45.67,40,0
    .goto 425,32.52,43.63,40,0
    .goto 425,29.25,38.05,40,0
    .goto 425,26.25,40.59,40,0
    .goto 425,26.09,53.65,40,0
    >>Kill |cRXP_ENEMY_Blackrock Worgs|r.
    .complete 28757,1 << Human Mage/KulTiran Mage --Blackrock Worgs (6)
    .complete 28762,1 << Human Paladin --Blackrock Worgs (6)
    .complete 28763,1 << Human Priest/KulTiran Priest --Blackrock Worgs (6)
    .complete 28764,1 << Human Rogue/KulTiran Rogue --Blackrock Worgs (6)
    .complete 28765,1 << Human Warlock/KulTiran Warlock --Blackrock Worgs (6)
    .complete 28766,1 << Human Warrior/KulTiran Warrior --Blackrock Worgs (6)
    .complete 28767,1 << Human Hunter/KulTiran Hunter --Blackrock Worgs (6)
    .complete 29078,1 << !Human !KulTiran --Blackrock Worgs (6)
    .complete 31139,1 << Human Death Knight/Human Monk/KulTiran Death Knight/KulTiran Monk/KulTiran Druid/KulTiran Shaman --Blackrock Worgs (6)
    .mob Blackrock Worg
step
    .goto 425,33.56,53.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r.
    .turnin 28757 >>Turn in Beating Them Back! << Human Mage/KulTiran Mage
    .turnin 28762 >>Turn in Beating Them Back! << Human Paladin
    .turnin 28763 >>Turn in Beating Them Back! << Human Priest/KulTiran Priest
    .turnin 28764 >>Turn in Beating Them Back! << Human Rogue/KulTiran Rogue
    .turnin 28765 >>Turn in Beating Them Back! << Human Warlock/KulTiran Warlock
    .turnin 28766 >>Turn in Beating Them Back! << Human Warrior/KulTiran Warrior
    .turnin 28767 >>Turn in Beating Them Back! << Human Hunter/KulTiran Hunter
    .turnin 29078 >>Turn in Beating Them Back! << !Human !KulTiran
    .turnin 31139 >>Turn in Beating Them Back! << Human Death Knight/Human Monk/KulTiran Death Knight/KulTiran Monk/KulTiran Druid/KulTiran Shaman
    .accept 28759 >> Accept Lions for Lambs << Human Hunter/KulTiran Hunter
    .accept 28769 >> Accept Lions for Lambs << Human Mage/KulTiran Mage
    .accept 28770 >> Accept Lions for Lambs << Human Paladin
    .accept 28771 >> Accept Lions for Lambs << Human Priest/KulTiran Priest
    .accept 28772 >> Accept Lions for Lambs << Human Rogue/KulTiran Rogue
    .accept 28773 >> Accept Lions for Lambs << Human Warlock/KulTiran Warlock
    .accept 28774 >> Accept Lions for Lambs << Human Warrior/KulTiran Warrior
    .accept 29079 >> Accept Lions for Lambs << !Human !KulTiran
    .accept 31140 >> Accept Lions for Lambs << Human Death Knight/Human Monk/KulTiran Death Knight/KulTiran Monk/KulTiran Druid/KulTiran Shaman
    .target Marshal McBride
step
    #loop
    .goto 425,27.23,40.41,0
    .goto 425,31.76,41.17,40,0
    .goto 425,30.32,38.01,40,0
    .goto 425,27.23,40.41,40,0
    .goto 425,27.40,42.45,40,0
    .goto 425,26.49,44.73,40,0
    .goto 425,28.86,47.41,40,0
    .goto 425,24.84,50.52,40,0
    .goto 425,23.64,51.42,40,0
    .goto 425,26.60,54.71,40,0
    >>Kill |cRXP_ENEMY_Blackrock Spies|r.
    >>|cRXP_WARN_They are|r |T132320:0|t[Stealthed] |cRXP_WARN_(but easily visible)|r.
    .complete 28759,1 << Human Hunter/KulTiran Hunter --Blackrock Spies (8)
    .complete 28769,1 << Human Mage/KulTiran Mage--Blackrock Spies (8)
    .complete 28770,1 << Human Paladin --Blackrock Spies (8)
    .complete 28771,1 << Human Priest/KulTiran Priest --Blackrock Spies (8)
    .complete 28772,1 << Human Rogue/KulTiran Rogue --Blackrock Spies (8)
    .complete 28773,1 << Human Warlock/KulTiran Warlock --Blackrock Spies (8)
    .complete 28774,1 << Human Warrior/KulTiran Warrior --Blackrock Spies (8)
    .complete 29079,1 << !Human !KulTiran --Blackrock Spies (8)
    .complete 31140,1 << Human Death Knight/Human Monk/KulTiran Death Knight/KulTiran Monk/KulTiran Druid/KulTiran Shaman --Blackrock Spies (8)
    .mob Blackrock Spy
step
    .goto 425,33.56,53.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r.
    .turnin 28759 >>Turn in Lions for Lambs << Human Hunter/KulTiran Hunter
    .turnin 28769 >>Turn in Lions for Lambs << Human Mage/KulTiran Mage
    .turnin 28770 >>Turn in Lions for Lambs << Human Paladin
    .turnin 28771 >>Turn in Lions for Lambs << Human Priest/KulTiran Priest
    .turnin 28772 >>Turn in Lions for Lambs << Human Rogue/KulTiran Rogue
    .turnin 28773 >>Turn in Lions for Lambs << Human Warlock/KulTiran Warlock
    .turnin 28774 >>Turn in Lions for Lambs << Human Warrior/KulTiran Warrior
    .turnin 29079 >>Turn in Lions for Lambs << !Human !KulTiran
    .turnin 31140 >>Turn in Lions for Lambs << Human Death Knight/Human Monk/KulTiran Death Knight/KulTiran Monk/KulTiran Druid/KulTiran Shaman
    .accept 28780 >>Accept Join the Battle! << Human Hunter/KulTiran Hunter
    .accept 28784 >>Accept Join the Battle! << Human Mage/KulTiran Mage
    .accept 28785 >>Accept Join the Battle! << Human Paladin
    .accept 28786 >>Accept Join the Battle! << Human Priest/KulTiran Priest
    .accept 28787 >>Accept Join the Battle! << Human Rogue/KulTiran Rogue
    .accept 28788 >>Accept Join the Battle! << Human Warlock/KulTiran Warlock
    .accept 28789 >>Accept Join the Battle! << Human Warrior/KulTiran Warrior
    .accept 29080 >>Accept Join the Battle! << !Human !KulTiran
    .accept 31143 >>Accept Join the Battle! << Human Death Knight/Human Monk/KulTiran Death Knight/KulTiran Monk/KulTiran Druid/KulTiran Shaman
    .target Marshal McBride
step
    .goto 425,35.73,39.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Willem|r.
    .turnin 28780 >>Turn in Join the Battle! << Human Hunter/KulTiran Hunter
    .turnin 28784 >>Turn in Join the Battle! << Human Mage/KulTiran Mage
    .turnin 28785 >>Turn in Join the Battle! << Human Paladin
    .turnin 28786 >>Turn in Join the Battle! << Human Priest/KulTiran Priest
    .turnin 28787 >>Turn in Join the Battle! << Human Rogue/KulTiran Rogue
    .turnin 28788 >>Turn in Join the Battle! << Human Warlock/KulTiran Warlock
    .turnin 28789 >>Turn in Join the Battle! << Human Warrior/KulTiran Warrior
    .turnin 29080 >>Turn in Join the Battle! << !Human !KulTiran
    .turnin 31143 >>Turn in Join the Battle! << Human Death Knight/Human Monk/KulTiran Death Knight/KulTiran Monk/KulTiran Druid/KulTiran Shaman
    .accept 28791 >>Accept They Sent Assassins << Human Hunter/KulTiran Hunter
    .accept 28792 >>Accept They Sent Assassins << Human Mage/KulTiran Mage
    .accept 28793 >>Accept They Sent Assassins << Human Paladin
    .accept 28794 >>Accept They Sent Assassins << Human Priest/KulTiran Priest
    .accept 28795 >>Accept They Sent Assassins << Human Rogue/KulTiran Rogue
    .accept 28796 >>Accept They Sent Assassins << Human Warlock/KulTiran Warlock
    .accept 28797 >>Accept They Sent Assassins << Human Warrior/KulTiran Warrior
    .accept 29081 >>Accept They Sent Assassins << !Human !KulTiran
    .accept 31144 >>Accept They Sent Assassins << Human Death Knight/Human Monk/KulTiran Death Knight/KulTiran Monk/KulTiran Druid/KulTiran Shaman
    .target Sergeant Willem
step
    #loop
    .goto 425,34.99,38.24,0
    .goto 425,34.47,39.42,8,0
    .goto 425,34.99,38.24,8,0
    .goto 425,35.55,37.73,8,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Paxton|r.
    .accept 28806 >>Accept Fear No Evil << Human Hunter/KulTiran Hunter
    .accept 28808 >>Accept Fear No Evil << Human Mage/KulTiran Mage
    .accept 28809 >>Accept Fear No Evil << Human Paladin
    .accept 28810 >>Accept Fear No Evil << Human Priest/KulTiran Priest
    .accept 28811 >>Accept Fear No Evil << Human Rogue/KulTiran Rogue
    .accept 28812 >>Accept Fear No Evil << Human Warlock/KulTiran Warlock
    .accept 28813 >>Accept Fear No Evil << Human Warrior/KulTiran Warrior
    .accept 29082 >>Accept Fear No Evil << !Human !KulTiran
    .accept 63447 >>Accept Fear No Evil << Human Death Knight/Human Monk/KulTiran Death Knight/KulTiran Monk/KulTiran Druid/KulTiran Shaman
    .target Brother Paxton
step
    #optional
    #completewith Rear
    .goto 425,31.59,16.72,40 >> |cRXP_WARN_[RARE] Check for |cRXP_ENEMY_Gug Fatcandle|r. Kill him if he's up|r.
    *|cRXP_WARN_It's important to kill Rares and loot Treasure Chests, as they award a lot of experience|r.
	.unitscan Gug Fatcandle
    .noflyable
step
    #sticky
    #label Soldiers
    #loop
    .goto 425,31.99,28.69,0
    .goto 425,31.00,22.28,15,0
    .goto 425,29.16,25.64,15,0
    .goto 425,28.94,30.20,15,0
    .goto 425,30.49,30.95,15,0
    .goto 425,32.00,28.75,15,0
    .goto 425,31.56,25.82,15,0
    .goto 425,33.45,24.77,15,0
    .goto 425,36.08,23.69,15,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Injured Stormwind Infantries|r on the ground to revive them.
    .complete 28806,1 << Human Hunter/KulTiran Hunter --Revive Injured Soldiers (4)
    .complete 28808,1 << Human Mage/KulTiran Mage --Revive Injured Soldiers (4)
    .complete 28809,1 << Human Paladin --Revive Injured Soldiers (4)
    .complete 28810,1 << Human Priest/KulTiran Priest --Revive Injured Soldiers (4)
    .complete 28811,1 << Human Rogue/KulTiran Rogue --Revive Injured Soldiers (4)
    .complete 28812,1 << Human Warlock/KulTiran Warlock --Revive Injured Soldiers (4)
    .complete 28813,1 << Human Warrior/KulTiran Warrior --Revive Injured Soldiers (4)
    .complete 29082,1 << !Human !KulTiran --Revive Injured Soldiers (4)
    .complete 63447,1 << Human Death Knight/Human Monk/KulTiran Death Knight/KulTiran Monk/KulTiran Druid/KulTiran Shaman --Revive Injured Soldiers (4)
    .target Injured Stormwind Infantry
step
    #loop
    .goto 425,31.99,28.69,0
    .goto 425,33.00,21.94,45,0
    .goto 425,35.59,23.73,45,0
    .goto 425,36.54,27.68,45,0
    .goto 425,35.12,31.40,45,0
    .goto 425,33.27,32.25,45,0
    .goto 425,35.59,23.73,45,0
    .goto 425,29.65,31.64,45,0
    .goto 425,28.45,27.49,45,0
    .goto 425,27.16,18.98,45,0
    >>Kill |cRXP_ENEMY_Goblin Assassins|r.
    .complete 28791,1 << Human Hunter/KulTiran Hunter --Goblin Assassins (8)
    .complete 28792,1 << Human Mage/KulTiran Mage --Goblin Assassins (8)
    .complete 28793,1 << Human Paladin --Goblin Assassins (8)
    .complete 28794,1 << Human Priest/KulTiran Priest --Goblin Assassins (8)
    .complete 28795,1 << Human Rogue/KulTiran Rogue --Goblin Assassins (8)
    .complete 28796,1 << Human Warlock/KulTiran Warlock --Goblin Assassins (8)
    .complete 28797,1 << Human Warrior/KulTiran Warrior --Goblin Assassins (8)
    .complete 29081,1 << !Human !KulTiran --Goblin Assassins (8)
    .complete 31144,1 << Human Death Knight/Human Monk/KulTiran Death Knight/KulTiran Monk/KulTiran Druid/KulTiran Shaman --Goblin Assassins (8)
    .mob Goblin Assassin
step
    #requires Soldiers
    #loop
    .goto 425,34.99,38.24,0
    .goto 425,35.55,37.73,8,0
    .goto 425,34.99,38.24,8,0
    .goto 425,34.47,39.42,8,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Paxton|r.
    .turnin 28806 >>Turn in Fear No Evil << Human Hunter/KulTiran Hunter
    .turnin 28808 >>Turn in Fear No Evil << Human Mage/KulTiran Mage
    .turnin 28809 >>Turn in Fear No Evil << Human Paladin
    .turnin 28810 >>Turn in Fear No Evil << Human Priest/KulTiran Priest
    .turnin 28811 >>Turn in Fear No Evil << Human Rogue/KulTiran Rogue
    .turnin 28812 >>Turn in Fear No Evil << Human Warlock/KulTiran Warlock
    .turnin 28813 >>Turn in Fear No Evil << Human Warrior/KulTiran Warrior
    .turnin 29082 >>Turn in Fear No Evil << !Human !KulTiran
    .turnin 63447 >>Turn in Fear No Evil << Human Death Knight/Human Monk/KulTiran Death Knight/KulTiran Monk/KulTiran Druid/KulTiran Shaman
    .target Brother Paxton
step
    #label Rear
    .goto 425,35.73,39.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Willem|r.
    .turnin 28791 >>Turn in They Sent Assassins << Human Hunter/KulTiran Hunter
    .turnin 28792 >>Turn in They Sent Assassins << Human Mage/KulTiran Mage
    .turnin 28793 >>Turn in They Sent Assassins << Human Paladin
    .turnin 28794 >>Turn in They Sent Assassins << Human Priest/KulTiran Priest
    .turnin 28795 >>Turn in They Sent Assassins << Human Rogue/KulTiran Rogue
    .turnin 28796 >>Turn in They Sent Assassins << Human Warlock/KulTiran Warlock
    .turnin 28797 >>Turn in They Sent Assassins << Human Warrior/KulTiran Warrior
    .turnin 29081 >>Turn in They Sent Assassins << !Human !KulTiran
    .turnin 31144 >>Turn in They Sent Assassins << Human Death Knight/Human Monk/KulTiran Death Knight/KulTiran Monk/KulTiran Druid/KulTiran Shaman
    .accept 28817 >>Accept The Rear is Clear << Human Hunter/KulTiran Hunter
    .accept 28818 >>Accept The Rear is Clear << Human Mage/KulTiran Mage
    .accept 28819 >>Accept The Rear is Clear << Human Paladin
    .accept 28820 >>Accept The Rear is Clear << Human Priest/KulTiran Priest
    .accept 28821 >>Accept The Rear is Clear << Human Rogue/KulTiran Rogue
    .accept 28822 >>Accept The Rear is Clear << Human Warlock/KulTiran Warlock
    .accept 28823 >>Accept The Rear is Clear << Human Warrior/KulTiran Warrior
    .accept 29083 >>Accept The Rear is Clear << !Human !KulTiran
    .accept 31145 >>Accept The Rear is Clear << Human Death Knight/Human Monk/KulTiran Death Knight/KulTiran Monk/KulTiran Druid/KulTiran Shaman
    .target Sergeant Willem
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r and |cRXP_FRIENDLY_Milly Osworth|r.
    .turnin 28817 >>Turn in The Rear is Clear << Human Hunter
    .turnin 28818 >>Turn in The Rear is Clear << Human Mage
    .turnin 28819 >>Turn in The Rear is Clear << Human Paladin
    .turnin 28820 >>Turn in The Rear is Clear << Human Priest
    .turnin 28821 >>Turn in The Rear is Clear << Human Rogue
    .turnin 28822 >>Turn in The Rear is Clear << Human Warlock
    .turnin 28823 >>Turn in The Rear is Clear << Human Warrior
    .turnin 29083 >>Turn in The Rear is Clear << !Human
    .turnin 31145 >>Turn in The Rear is Clear << Human Death Knight/Human Monk
    .accept 26389 >>Accept Blackrock Invasion
    .goto 425,33.56,53.04
    .target +Marshal McBride
    .accept 26391 >>Accept Extinguishing Hope
    .goto 425,33.38,54.67
    .target +Milly Osworth
step << skip
    #completewith next
    +|cRXP_WARN_To enable keybinding for quest items, follow these steps:|r
    *[1] Press the |cRXP_WARN_Escape key|r.
    *[2] Select |cRXP_WARN_Options|r.
    *[3] Navigate to |cRXP_WARN_Keybindings|r.
    *[4] Within |cRXP_WARN_Keybindings|r,find |cRXP_WARN_RestedXP Guides|r.
    *[5] Select and bind the |cRXP_WARN_Active Buttons|r.
step
    #sticky
    #label Fire
    .goto 425,57.48,71.22,0
    .goto 425,49.10,78.42,20,0
    .goto 425,50.78,75.57,20,0
    .goto 425,51.22,77.49,20,0
    .goto 425,51.82,78.93,20,0
    .goto 425,50.59,80.71,20,0
    .goto 425,52.81,80.56,20,0
    .goto 425,52.53,82.55,20,0
    .goto 425,53.04,84.89,20,0
    .goto 425,54.33,85.93,20,0
    .goto 425,54.67,83.87,20,0
    .goto 425,56.91,82.37,20,0
    .goto 425,56.39,80.99,20,0
    .goto 425,56.96,78.82,20,0
    .goto 425,58.94,75.77,20,0
    .goto 425,55.12,73.91,20,0
    .goto 425,55.49,70.94,20,0
    .goto 425,53.67,68.68,20,0
    .goto 425,50.63,73.13,20,0
    >>Use and then channel |T308321:0|t[Milly's Fire Extinguisher] near the |cRXP_PICK_Vineyard Fires|r.
    .complete 26391,1 --Vineyard Fire extinguished (8)
    .use 58362
step
    #loop
    .goto 425,54.27,77.40,0
    .goto 425,47.40,70.76,50,0
    .goto 425,46.82,75.39,50,0
    .goto 425,50.12,78.58,50,0
    .goto 425,53.79,84.88,50,0
    .goto 425,57.63,77.83,50,0
    .goto 425,57.48,71.22,50,0
    .goto 425,56.07,62.66,50,0
    >>Kill |cRXP_ENEMY_Blackrock Invaders|r. Loot them for [|cRXP_LOOT_Blackrock Orc Weapons|r].
    .complete 26389,1 --Blackrock Orc Weapon (8)
    .mob Blackrock Invader
step
    #requires Fire
    #completewith next
    .goto 425,54.27,77.40,0
    .goto 425,38.29,58.12,0
-- .goto 425,38.29,58.12
    *|cRXP_WARN_Spamming /sit or removing your gear will make you die faster|r.
    .deathskip >> Die and Respawn at the |cRXP_FRIENDLY_Spirit Healer|r.
    .skill riding,75,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milly Osworth|r and |cRXP_FRIENDLY_Marshal McBride|r.
    .turnin 26391 >>Turn in Extinguishing Hope
    .goto 425,33.38,54.67
    .turnin 26389 >>Turn in Blackrock Invasion
    .accept 26390 >>Accept Ending the Invasion!
    .goto 425,33.56,53.04
    .target Milly Osworth
    .target Marshal McBride
step
    .goto 425,64.97,48.38
    >>Kill |cRXP_ENEMY_Kurtok the Slayer|r.
    .complete 26390,1 --Kill Kurtok the Slayer (1)
    .mob Kurtok the Slayer
step
    #completewith next
    .goto 425,54.27,77.40,0
    .goto 425,38.29,58.12,0
-- .goto 425,38.29,58.12
    .deathskip >> Die and Respawn at the |cRXP_FRIENDLY_Spirit Healer|r.
    .skill riding,75,1
step
    .goto 425,33.56,53.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r.
    .turnin 26390 >>Turn in Ending the Invasion!
    .accept 54 >>Accept Report to Goldshire
    .target Marshal McBride
step
    #optional
    #completewith next
    .goto 425,29.17,72.43,15,0
    .goto 425,28.28,73.45,15,0
    .goto 425,24.47,74.67,15,0
    .goto 37,45.37,49.00,15 >> Travel toward |cRXP_FRIENDLY_Falkhaan Isenstrider|r.
step
    .goto 37,45.37,49.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falkhaan Isenstrider|r.
    .accept 37112 >>Accept Rest and Relaxation
    .target Falkhaan Isenstrider
]])

--Human Elwynn Forest
RXPGuides.RegisterGuide([[
#retail
#version 2
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(1-80)|r Default
#name ac) Human Elwynn Forest
#displayname |cFF00CCFF2|r - Elwynn Forest
#defaultfor Human !DK/KulTiran DK/DarkIronDwarf DK/LightforgedDraenei DK/Mechagnome DK/VoidElf DK/Pandaren
#next ba) Elwynn Forest

<< Alliance

step
    #veteran
    .goto 84,61.11,70.6
    +The Darkmoon Faire event is now active, |cRXP_WARN_which guarantees you to gain an additional level for free and a temporary 10% experience boost|r. You'll need to purchase |cRXP_WARN_certain items from the auction house to take full advantage of this|r. If necessary,|cRXP_WARN_you can transfer gold from your other characters to make these purchases|r. However, if you find that you can't afford everything, |cRXP_WARN_It's still worthwhile to visit the Darkmoon Faire for the temporary experience buff and to buy only some of the items|r.
    >>|cRXP_WARN_It is recommended to log in with a different character possessing at least 10,000 gold. Use this character to purchase the items and then send them over|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Auctioneer Fitch|r.
    .collect 71715,1
    .collect 71638,1
    .collect 71637,1
    .collect 71636,1
    .collect 71635,1
    .collect 71952,1
    .collect 71951,1
    .collect 71953,1
    .collect 71716,1
    .target Auctioneer Fitch
    .target Auctioneer Jaxon
    .target Auctioneer Chilton
    .dmf
step
    #fresh
    +The Darkmoon Faire event is now active, |cRXP_WARN_which guarantees you to gain an additional level for free and a temporary 10% experience boost|r.
    .dmf
step
    .goto 37,41.71,52.74,-1
    .goto 37,39.48,60.53,-1
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r.
    .isOnQuest 37112 --Rest and Relaxation (Breadcrumb to Goldshire quest)
    .skill riding,75,1
step << !Human !KulTiran
    .goto 37,41.715,64.636
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartlett the Brave|r.
    .fp Goldshire >> Get the Goldshire Flight Path
	.target Bartlett the Brave
step
    #optional
    .goto 37,42.11,65.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r.
    .turnin 54 >>Turn in Report to Goldshire
    .accept 62 >>Accept The Fargodeep Mine
    .accept 26378 >>Accept Hero's Call: Westfall!
	.target Marshal Dughan
    .isOnQuest 54
--  .isQuestTurnedIn 26390 --Ending the Invasion! (Human Starter Zone final quest)
step
    .goto 37,42.11,65.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r.
    .accept 62 >>Accept The Fargodeep Mine
    .accept 26378 >>Accept Hero's Call: Westfall!
	.target Marshal Dughan
step << Human/KulTiran
    .goto 37,41.708,65.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smith Argus|r.
    .accept 26393 >>Accept A Swift Message
	.target Smith Argus
step << Human/KulTiran
    .goto 37,41.715,64.636
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartlett the Brave|r.
	.turnin 26393 >>Turn in A Swift Message
    .accept 26394 >>Accept Continue to Stormwind
	.target Bartlett the Brave
step
    #optional
    #completewith next
    .goto 37,43.19,65.74,5,0
    .goto 37,43.23,65.95,5,0
    .goto 37,43.318,65.705,4 >> Travel toward |cRXP_FRIENDLY_William Pestle|r.
step
    .goto 37,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Pestle|r.
    .accept 60 >>Accept Kobold Candles
	.target William Pestle
step
    #veteran
    #completewith Cooking
    .goto 37,43.77,65.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Farley|r.
    >>|cRXP_BUY_Buy 5|r |T132789:0|t[Moonberry Juice] |cRXP_BUY_from him|r.
    >>|cRXP_WARN_The|r |T132789:0|t[Moonberry Juice] |cRXP_WARN_is for an|r |T4620669:0|t[Alchemy] |cRXP_WARN_Darkmoon Faire quest. If you don't want to train|r |T4620669:0|t[Alchemy]|cRXP_WARN_, skip the objective|r.
    .turnin 37112 >>Turn in Rest and Relaxation
    .collect 1645,5,29506,1 --Moonberry Juice (5)
    .home >>Set your Hearthstone to Lion's Pride Inn
	.target Innkeeper Farley
    .isQuestAvailable 47
    .dmf
step
    #veteran
    .goto 37,43.77,65.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Farley|r.
    .turnin 37112 >>Turn in Rest and Relaxation
    .home >>Set your Hearthstone to Lion's Pride Inn
	.target Innkeeper Farley
    .isQuestAvailable 47
    .nodmf
step
    #veteran
    #label Cooking
    .goto 37,44.37,65.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tomas|r.
    .train 2550 >> Train Cooking
	.target Tomas
    .dmf
step
    #fresh
    .goto 37,43.77,65.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Farley|r.
    .turnin 37112 >>Turn in Rest and Relaxation
    .home >>Set your Hearthstone to Lion's Pride Inn
	.target Innkeeper Farley
    .isQuestAvailable 47
step
    #optional
    #completewith next
    .goto 37,43.23,65.95,5,0
    .goto 37,43.13,65.74,5,0
    .goto 37,42.93,65.71,6,0
    .goto 37,42.14,67.26,12 >> Travel toward |cRXP_FRIENDLY_Remy "Two Times"|r.
step
    .goto 37,42.14,67.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remy "Two Times"|r.
    .accept 40 >>Accept A Fishy Peril
    .accept 47 >>Accept Gold Dust Exchange
	.target Remy "Two Times"
step
    #veteran
    .goto 37,41.95,67.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farmer|r.
    >>|cRXP_WARN_These professions are used for Darkmoon Faire quests later. If you don't want to do this, skip this step|r.
    .train 2259 >> Train |T4620669:0|t[Alchemy] and |T4620676:0|t[Inscription]
	.skipgossip 47384,2,1,1
	.target Lien Farmer
    .dmf
step
    #veteran
    .goto 37,41.95,67.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farmer|r.
    .train 45357 >> Train |T4620676:0|t[Inscription]
	.skipgossip 47384,3,6,2
	.target Lien Farmer
    .dmf
    .train 2259,3 --Only show if you have Alchemy
step
    #veteran
    .goto 37,41.89,67.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharynn Bouden|r. Buy the following items from him:
--    .collect 2604,1,29520,1 --Red Dye (1)
--    .collect 6260,1,29520,1 --Blue Dye (1)
--  .collect 2320,1,29520,1 --Coarse Thread (1)
    .collect 30817,5,29509,1 --Simple Flour (5)
    .collect 39354,5,29515,1 --Light Parchment (1)
	.target Tharynn Bouden
    .dmf
    .train 45357,3 --Only show if you have Inscription
--XX 29520 needs to be added
--XX DMF section needs a polish at some point. Coords to 3dp, new formatting, #optional on steps
step
    #veteran
    .goto 37,41.89,67.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharynn Bouden|r. Buy the following items from him:
--    .collect 2604,1,29520,1 --Red Dye (1)
--    .collect 6260,1,29520,1 --Blue Dye (1)
--  .collect 2320,1,29520,1 --Coarse Thread (1)
    .collect 30817,5,29509,1 --Simple Flour (5)
	.target Tharynn Bouden
    .dmf
--XX 29520 needs to be added
--XX DMF section needs a polish at some point. Coords to 3dp, new formatting, #optional on steps
step
    .goto 37,43.2,65.99,5,0
    .goto 37,43.2,65.63,5,0
    .goto 37,42.9,65.7,5,0
    .goto 37,41.78,69.55
    .zone 407 >>Take the |cRXP_PICK_Darkmoon Faire Portal|r |cRXP_WARN_to the Darkmoon Island|r.
    .dmf
step
    #completewith next
    +|TInterface/cursor/crosshair/interact.blp:20|tInteract with the |cRXP_FRIENDLY_Strider|r |cRXP_WARN_only if you don't have a level 1 mount|r.
    .dmf
step
    #veteran
    .goto 407,51.57,24.84,10,0
    .goto 407,55.83,53.02,15,0
    .goto 407,50.44,59.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kae Ti|r and buy a |T133734:0|t[Ride Ticket Book] from her.
    *|cRXP_WARN_buy the cheaper version |cRXP_WARN_on the left in the window|r|r.
    .collect 92788,1,92794,1 --Ride Ticket Book (1)
	.target Kae Ti
    .dmf
step
    #completewith next
    .goto 407,49.45,57.5
    .cast 107829 >> |cRXP_WARN_Open Ride Ticket Book|r.
    .dmf
    .use 92788
    .use 92794
step
	#veteran
    .goto 407,49.45,57.5
    >>|cRXP_WARN_Stand on the Carousel and |cRXP_WARN_wait for the Experience Buff to reach 60minutes|r|r.
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the quest items in your bag |cRXP_WARN_and skip the ones you don't have)|
    --x insert macro to accept quests here
    .accept 29464 >>Accept Tools of Divination
    .accept 29451 >>Accept The Master Strategist
    .accept 29456 >>Accept A Captured Banner
    .accept 29457 >>Accept The Enemy's Insignia
    .accept 29458 >>Accept The Captured Journal
    .accept 29443 >>Accept A Curious Crystal
    .accept 29444 >>Accept An Exotic Egg
    .accept 29445 >>Accept An Intriguing Grimoire
    .accept 29446 >>Accept A Wondrous Weapon
    .zoneskip 407,1
    .dmf
step
	#fresh
    .goto 407,49.45,57.5
    >>|cRXP_WARN_Stand on the Carousel and |cRXP_WARN_wait for the Experience Buff to reach 60minutes|r|r.
    .zoneskip 407,1
    .dmf
step
	#veteran
    .goto 407,51.91,60.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Professor Paleo|r.
    .turnin -29464 >>Turn in Tools of Divination
    .turnin -29451 >>Turn in The Master Strategist
    .turnin -29456 >>Turn in A Captured Banner
    .turnin -29457 >>Turn in The Enemy's Insignia
    .turnin -29458 >>Turn in The Captured Journal
    .turnin -29443 >>Turn in A Curious Crystal
    .turnin -29446 >>Turn in A Wondrous Weapon
    .zoneskip 407,1
    .dmf
step
    #veteran
    .goto 407,47.76,64.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelvas Grimegate|r and buy as many |T669449:0|t[Darkmoon Top Hats] from him as you can.
    .turnin 7905 >>Turn in The Darkmoon Faire
    .collect 171364,1,29506,1 --Darkmoon Top Hat (1)
	.target Gelvas Grimegate
    .zoneskip 407,1
    .dmf
step
    #fresh
    .goto 407,47.76,64.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelvas Grimegate|r.
    .turnin 7905 >>Turn in The Darkmoon Faire
	.target Gelvas Grimegate
    .zoneskip 407,1
    .dmf
step
    .goto 407,52.89,67.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stamp Thunderhorn|r.
    .accept 29509 >>Accept Putting the Crunch in the Frog
	.target Stamp Thunderhorn
    .zoneskip 407,1
    .dmf
step
    .goto 407,52.88,67.96
    >>Use the |T133642:0|t[Plump Frogs] to turn them into |T237579:0|t[Breaded Frogs].
	.collect 72056,5,29509,1,-1 --Plump Frogs (5)
	.collect 30817,5,29509,1,-1 --Simple Flour (5)
	.collect 72057,5,29509,1 --Breaded Frog (5)
    .use 72056 --Plump Frog
    .zoneskip 407,1
	.dmf
	.isOnQuest 29509
step
    .goto 407,52.88,67.96
	>>Use the |T237579:0|t[Breaded Frogs] near |cRXP_FRIENDLY_Stamp Thunderhorn|r.
	.collect 72057,5,29509,1,-1 --Breaded Frog (5)
    .complete 29509,1 --5/5 Crunchy Frog
	.use 72057 --Breaded Frog
    .zoneskip 407,1
    .dmf
	.isOnQuest 29509
step
    .goto 407,52.88,67.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stamp Thunderhorn|r.
    .turnin 29509 >>Turn in Putting the Crunch in the Frog
	.target Stamp Thunderhorn
    .zoneskip 407,1
    .dmf
step
    .goto 407,50.54,69.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sylannia|r and buy |T132792:0|t[Fizzy Faire Drinks] from her.
    .accept 29506 >>Accept A Fizzy Fusion
    .collect 19299,5,29506,1 --Fizzy Faire Drinks (5)
	.target Sylannia
    .zoneskip 407,1
    .dmf
    .train 2259,3 --Only show if you have Alchemy
step
    .goto 407,50.54,69.56
    >>Use the |T132793:0|t[Cocktail Shaker] to make |T463532:0|t[Moonberry Fizz]
    .collect 1645,5,29506,1,-1 --Moonberry Juice (5)
    .collect 19299,5,29506,1,-1 --Fizzy Faire Drinks (5)
    .complete 29506,1 --5/5 Moonberry Fizz
    .use 72043 --Cocktail Shaker
    .zoneskip 407,1
    .dmf
    .isOnQuest 29506
step
    .goto 407,50.53,69.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sylannia|r.
    .turnin 29506 >>Turn in A Fizzy Fusion
	.target Sylannia
    .zoneskip 407,1
    .dmf
    .isOnQuest 29506
step
    .goto 407,53.23,75.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sayge|r.
    .turnin 29445 >>Turn in An Intriguing Grimoire
    .accept 29515 >>Accept Writing the Future
	.target Sayge
    .zoneskip 407,1
    .dmf
	.isOnQuest 29445
    .train 45357,3 --Only show if you have Inscription
step
    #optional
    .goto 407,53.23,75.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sayge|r.
    .turnin 29445 >>Turn in An Intriguing Grimoire
	.target Sayge
    .zoneskip 407,1
    .dmf
	.isOnQuest 29445
step
    #optional
    .goto 407,53.23,75.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sayge|r.
    .accept 29515 >>Accept Writing the Future
	.target Sayge
    .zoneskip 407,1
    .dmf
    .train 45357,3 --Only show if you have Inscription
step
    .goto 407,53.23,75.82
	>>Use the |T413571:0|t[Bundle of Exotic Herbs] to make |T237061:0|t[Prophetic Ink]
	.collect 71972,1,29515,1
    .use 71971
    .zoneskip 407,1
	.dmf
	.isOnQuest 29515
step
    .goto 407,53.23,75.82
    >>Use the |T237061:0|t[Prophetic Ink] to make |T134943:0|t[Fortunes]
    .collect 39354,5,29515,1,-1 --Light Parchment
    .complete 29515,1 --5/5 Fortune
    .use 71972
    .zoneskip 407,1
	.dmf
	.isOnQuest 29515
step
    .goto 407,53.23,75.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sayge|r.
    .turnin 29515 >>Turn in Writing the Future
	.target Sayge
    .skipgossip
    .zoneskip 407,1
    .dmf
step
    #veteran
    .goto 407,51.11,82.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yebb Neblegear|r.
    .turnin 29444 >>Turn in An Exotic Egg
	.target Yebb Neblegear
    .zoneskip 407,1
    .dmf
	.isOnQuest 29444
step
    .goto 407,50.56,90.80
    .zone 37 >>Take the |cRXP_PICK_Darkmoon Faire Portal|r |cRXP_WARN_to Elwynn Forest|r.
    .zoneskip 407,1
    .dmf
step
    #completewith next
    +|cRXP_WARN_Abandon your Professions|r
    .link /run AbandonSkill(773); AbandonSkill(171); >> |cRXP_WARN_Click this text to receive a macro that will unlearn your professions|r.
    --x .skill 773,<1 >>Unlearn Inscription
    --x .skill 171,<1 >>Unlearn Alchemy
    --x add unlearn logic
    .isOnQuest 60
	.dmf
step
    #sticky
    #label Professions1
    #completewith Professions3
    .goto 37,41.95,67.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farmer|r.
    >>|cRXP_WARN_Herbing Herbs and Mining Veins provides XP. Only gather resources in your direct path|r.
    >>|cRXP_WARN_If you don't want to do this, skip this step|r.
    .train 2366 >> Train |T4620675:0|t[Herbalism]
    .train 2575 >> Train |T4620679:0|t[Mining]
    .target Lien Farmer
    .skipgossip 47396,1,1,1
    .train 2366,1 --Herbalism
    .train 2575,1 --Mining
step
    #optional
    #requires Professions1
    #label Professions2
    #completewith Professions3
    .goto 37,41.95,67.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farmer|r.
    >>|cRXP_WARN_Herbing Herbs provides XP. Only gather resources in your direct path|r.
    >>|cRXP_WARN_If you don't want to do this, skip this step|r.
    .train 2366 >> Train |T4620675:0|t[Herbalism]
    .target Lien Farmer
    .skipgossip 47396,2,2,2
    .train 2575,3 --Mining
step
    #optional
    #requires Professions2
    #label Professions3
    .goto 37,41.95,67.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farmer|r.
    >>|cRXP_WARN_Mining Veins provides XP. Only gather resources in your direct path|r.
    >>|cRXP_WARN_If you don't want to do this, skip this step|r.
    .train 2575 >> Train |T4620679:0|t[Mining]
    .target Lien Farmer
    .skipgossip 47396,2,3,2
    .train 2366,3 --Herbalism
step
	#veteran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Julia Stevens|r.
    >>|cRXP_WARN_Skip this step if you don't have level 25 Pet Battle Pets|r.
    .goto 37,41.65,83.67
    .accept 31693 >>Accept Julia Stevens
    .target Julia Stevens
    .isQuestTurnedIn 31903 --x Pet Battle Campaign Check
step
	#veteran
    >>Defeat |cRXP_ENEMY_Julia Stevens|r in a Pet Battle.
    .complete 31693,1 --Defeat Julia Stevens
    .target Julia Stevens
    .isOnQuest 31693
step
	#veteran
    .goto 37,41.66,83.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Julia Stevens|r.
    .turnin 31693 >>Turn in Julia Stevens
    .target Julia Stevens
    .isQuestComplete 31693
step
    #completewith FargodeepM
    .goto 37,38.22,83.41,0
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r. Loot them for their [|cRXP_LOOT_Large Candles|r and |cRXP_LOOT_Gold Dust|r].
    .complete 60,1 --8/8 Large Candle
    .complete 47,1 --10/10 Gold Dust
	.mob Kobold Tunneler
	.mob Kobold Miner
step
    #optional
    .goto 37,38.22,83.41,40 >>|cRXP_WARN_[RARE] Check for |cRXP_ENEMY_Narg the Taskmaster|r. Kill him if he's up|r.
	.unitscan Narg the Taskmaster
    .isOnQuest 60
    .noflyable
step
    #optional
	#completewith next
    .goto 37,38.94,82.23,12,0
    .goto 38,42.52,71.63
    .subzone 54 >> Enter the upper level of the Fargodeep Mine
step
    #label FargodeepM
    .goto 38,54.31,59.56,-1
    .goto 39,66.53,66.18,-1
    >>Enter one of the central rooms inside Fargodeep Mine
    .complete 62,1 --Scout through the Fargodeep Mine
step
    .goto 37,37.82,86.14,40,0
    .goto 37,37.89,81.45,40,0
    .goto 39,47.59,68.00,20,0
    .goto 39,60.14,82.29,20,0
    .goto 39,78.65,28.65,20,0
    .goto 39,57.67,25.29,20,0
    .goto 38,53.73,72.25,20,0
    .goto 37,37.82,86.14,40,0
    .goto 37,37.89,81.45,40,0
    .goto 39,47.59,68.00,20,0
    .goto 39,60.14,82.29,20,0
    .goto 39,78.65,28.65,20,0
    .goto 39,57.67,25.29,20,0
    .goto 38,53.73,72.25
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r. Loot them for their [|cRXP_LOOT_Large Candles|r and |cRXP_LOOT_Gold Dust|r].
    .complete 60,1 --8/8 Large Candle
    .complete 47,1 --10/10 Gold Dust
	.mob Kobold Tunneler
	.mob Kobold Miner
step
    .goto 37,34.66,84.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ma Stonefield|r.
    .accept 88 >>Accept Princess Must Die!
	.target Ma Stonefield
step
    #optional
    .goto 37,33.64,87.76,15 >>|cRXP_WARN_[CHEST] Check for the |cRXP_PICK_Chest|r inside the stables. Loot it if it's up|r.
    .isOnQuest 60
    .noflyable
step
    #loop
    .line 37,32.48,86.81,33.41,86.16,33.32,84.95,32.58,84.26,32.04,85.20,32.48,86.81
    .goto 37,33.32,84.95,0
    .goto 37,32.04,85.20,20,0
    .goto 37,32.58,84.26,20,0
    .goto 37,33.32,84.95,20,0
    .goto 37,33.41,86.16,20,0
    .goto 37,32.48,86.81,20,0
    >>Kill |cRXP_ENEMY_Princess|r. Loot her for her [|cRXP_LOOT_Brass Collar|r].
    .complete 88,1 --1/1 Brass Collar
	.mob Princess
step
    .goto 37,34.66,84.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ma Stonefield|r.
    .turnin 88 >>Turn in Princess Must Die!
	.target Ma Stonefield
step
    #optional
    .goto 37,30.81,64.65,40 >>|cRXP_WARN_[RARE] Check for |cRXP_ENEMY_Morgaine the Sly|r inside. Kill her if she's up|r.
    .unitscan Morgaine the Sly
    .isOnQuest 60
    .noflyable
step
    #optional
    .goto 37,27.22,67.51,40 >>|cRXP_WARN_[RARE] Check for |cRXP_ENEMY_Grizzled Ben|r. Kill him if he's up|r.
	.unitscan Grizzled Ben
    .isOnQuest 60
    .noflyable
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Wanted Poster|r and |cRXP_FRIENDLY_Deputy Rainer|r.
    .accept 176 >>Accept WANTED: "Hogger"
    .goto 37,24.55,74.67
    .accept 11 >>Accept Riverpaw Gnoll Bounty
    .goto 37,24.23,74.45
	.target Deputy Rainer
step
    #optional
	#completewith Bounty
    .goto 37,24.36,93.65,0
    .goto 37,26.10,91.95,0
    .goto 37,25.30,88.95,0
    .goto 37,27.80,88.36,0
    .goto 37,27.67,86.21,0
    .goto 37,26.32,86.82,0
    +|cRXP_WARN_[RARE & CHEST] Keep an eye out for the |cRXP_PICK_Chest|r and |cRXP_ENEMY_Gruff Swiftbite|r in the camps. Loot the |cRXP_PICK_Chest|r. if you find one, and kill |cRXP_ENEMY_Gruff Swiftbite|r. if he's up|r.
	.unitscan Gruff Swiftbite
    .noflyable
step
    #sticky
    #label Armbands
    #loop
    .goto 37,24.36,93.65,0
    .goto 37,26.10,91.95,0
    .goto 37,25.30,88.95,0
    .goto 37,27.80,88.36,0
    .goto 37,27.67,86.21,0
    .goto 37,26.32,86.82,0
    .waypoint 37,24.36,93.65,40,0
    .waypoint 37,26.10,91.95,40,0
    .waypoint 37,25.30,88.95,40,0
    .waypoint 37,27.80,88.36,40,0
    .waypoint 37,27.67,86.21,40,0
    .waypoint 37,26.32,86.82,40,0
    >>Kill |cRXP_ENEMY_Riverpaw Outrunners|r and |cRXP_ENEMY_Riverpaw Runts|r. Loot them for their [|cRXP_LOOT_Painted Gnoll Armbands|r].
    .complete 11,1 --8/8 Painted Gnoll Armband
	.mob *Riverpaw Outrunner
	.mob *Riverpaw Runt
step
    #sticky
    #label Deed
    .goto 37,24.78,95.26
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Westfall Deed|r on the ground.
    .accept 184 >>Accept Furlbrow's Deed
step
    #label Hogger
    .goto 37,24.85,95.14
    >>Defeat |cRXP_ENEMY_Hogger|r.
    >>|cRXP_WARN_DON'T wait out the RP after you defeat him|r.
    .complete 176,1 --1/1 Dealt with "The Hogger Situation"
    .mob Hogger
    .mob Minion of Hogger
step
    #optional
    #requires Deed
--XXREQ Placeholder invis step until multiple requires per step
step
    #label Bounty
    #requires Armbands
    .goto 37,24.23,74.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Rainer|r.
    .turnin 11 >>Turn in Riverpaw Gnoll Bounty
	.target Deputy Rainer
step
	#veteran
    .goto 52,60.85,18.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old MacDonald|r.
    >>|cRXP_WARN_Skip this step if you don't have level 25 Pet Battle Pets|r.
    .accept 31780 >>Accept Old MacDonald
	.target Old MacDonald
    .isQuestTurnedIn 31903
step
	#veteran
    .goto 52,61.04,18.82
    >>Defeat |cRXP_ENEMY_Old MacDonald|r in a Pet Battle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Old MacDonald
    .complete 31780,1 --Defeat Old MacDonald
	.target Old MacDonald
    .skipgossip 65648,1
    .isOnQuest 31780
step
	#veteran
    .goto 52,61.04,18.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old MacDonald|r.
    .turnin 31780 >>Turn in Old MacDonald
	.target Old MacDonald
    .isQuestComplete 31780
step
    .goto 52,60.05,19.28,5,0
    .goto 52,60.18,19.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Horatio Laine|r.
    .turnin 184 >>Turn in Furlbrow's Deed
    .turnin 26378 >>Turn in Hero's Call: Westfall!
    .accept 26209 >>Accept Murder Was The Case That They Gave Me
	.target Lieutenant Horatio Laine
step
    #loop
    .goto 52,58.23,18.12,0
    .goto 52,58.56,16.21,20,0
    .goto 52,59.18,18.16,20,0
    .goto 52,58.12,19.58,20,0
    .goto 52,57.31,18.33,20,0
    .goto 52,58.56,16.21,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Homeless Stormwind Citizens|r, |cRXP_FRIENDLY_West Plains Drifters|r, and |cRXP_FRIENDLY_Transients|r. Pay them for their [|cRXP_LOOT_Clues|r].
    .complete 26209,1 --1/1 Clue #1 obtained
    .complete 26209,2 --1/1 Clue #2 obtained
    .complete 26209,3 --1/1 Clue #3 obtained
    .complete 26209,4 --1/1 Clue #4 obtained
	.target Homeless Stormwind Citizen
	.target West Plains Drifter
    .target Transients
    .skipgossip 42383,1 --Transient
    .skipgossip 42384,1 --Homeless Stormwind Citizen
    .skipgossip 42386,1 --Homeless Stormwind Citizen
    .skipgossip 42391,1 --West Plains Drifter
    .skill riding,75,1
step
    #loop
    #optional
    .goto 52,58.23,18.12,0
    .goto 52,58.56,16.21,20,0
    .goto 52,59.18,18.16,20,0
    .goto 52,58.12,19.58,20,0
    .goto 52,57.31,18.33,20,0
    .goto 52,58.56,16.21,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Homeless Stormwind Citizens|r, |cRXP_FRIENDLY_West Plains Drifters|r, and |cRXP_FRIENDLY_Transients|r. for their [|cRXP_LOOT_Clues|r].
    >>|cRXP_WARN_Stay mounted and spam talk to them, ignore them if they turn hostile|r.
    .complete 26209,1 --1/1 Clue #1 obtained
    .complete 26209,2 --1/1 Clue #2 obtained
    .complete 26209,3 --1/1 Clue #3 obtained
    .complete 26209,4 --1/1 Clue #4 obtained
	.target Homeless Stormwind Citizen
	.target West Plains Drifter
    .target Transients
    .skipgossip 2
    .skill riding,<75,1
step
    .goto 52,60.05,19.28,5,0
    .goto 52,60.18,19.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Horatio Laine|r.
    .turnin 26209 >>Turn in Murder Was The Case That They Gave Me
    .accept 26213 >>Accept Hot On the Trail: The Riverpaw Clan
	.target Lieutenant Horatio Laine
step
    #optional
	#completewith Horatio
    .goto 52,56.46,13.26,30 >>|cRXP_WARN_[CHEST] Check for a |cRXP_PICK_Chest|r in the camp|r.
    .noflyable
step
    #loop
    .goto 52,56.46,13.26,0
    .goto 52,58.16,10.71,40,0
    .goto 52,57.17,15.12,40,0
    .goto 52,51.38,15.89,40,0
    .goto 52,50.68,14.77,40,0
    .goto 52,56.46,13.26,40,0
    >>Kill |cRXP_ENEMY_Riverpaw Scouts|r and |cRXP_ENEMY_Riverpaw Gnolls|r. Loot them for the [|cRXP_LOOT_Riverpaw Gnoll Clue|r].
    .complete 26213,1 --1/1 Riverpaw Gnoll Clue
	.mob Riverpaw Scout
	.mob Riverpaw Gnoll
step
	#label Horatio
    .goto 52,60.05,19.28,5,0
    .goto 52,60.18,19.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Horatio Laine|r.
    .turnin 26213 >>Turn in Hot On the Trail: The Riverpaw Clan
    .target Lieutenant Horatio Laine
step
    #completewith next
    .hs >>Hearth to Lion's Pride Inn
step
    .goto 37,43.32,65.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Pestle|r.
    .turnin 60 >>Turn in Kobold Candles
    .target William Pestle
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remy "Two Times"|r and |cRXP_FRIENDLY_Marshal Dughan|r.
    .turnin 47 >>Turn in Gold Dust Exchange
    .goto 37,42.14,67.25
	.target +Remy "Two Times"
    .turnin 62 >>Turn in The Fargodeep Mine
    .turnin 40 >>Turn in A Fishy Peril
    .accept 35 >>Accept Further Concerns
    .accept 76 >>Accept The Jasperlode Mine
    .turnin 176 >>Turn in WANTED: "Hogger"
    .goto 37,42.11,65.93
	.target +Marshal Dughan
	.isOnQuest 40
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remy "Two Times"|r and |cRXP_FRIENDLY_Marshal Dughan|r.
    .turnin 47 >>Turn in Gold Dust Exchange
    .goto 37,42.14,67.25
	.target +Remy "Two Times"
    .turnin 62 >>Turn in The Fargodeep Mine
    .accept 35 >>Accept Further Concerns
    .accept 76 >>Accept The Jasperlode Mine
    .turnin 176 >>Turn in WANTED: "Hogger"
    .goto 37,42.11,65.93
	.target +Marshal Dughan
step
    .goto 37,41.69,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andrew Krighton|r.
	.vendor >>Vendor and Repair
    .isOnQuest 35
	.target Andrew Krighton
    .noflyable --Azeroth Flying
step
    #optional
    .goto 37,52.25,62.90,40 >>|cRXP_WARN_[RARE] Check for |cRXP_ENEMY_Lamepaw the Whimperer|r. Kill him if he's up|r.
	.unitscan Lamepaw the Whimperer
    .isOnQuest 35
    .noflyable
step
    #optional
    .goto 37,57.49,64.61,45 >> |cRXP_WARN_[CHEST] Scan the murloc islands with your mouse for a|r |cRXP_PICK_Chest|r. Your mouse will become a |TInterface/cursor/crosshair/interact.blp:20|tgear icon if there's a |cRXP_PICK_Chest|r. If you find one. Loot it if it's up|r.
    .isOnQuest 35
    .noflyable
step
    #optional
    .goto 37,66.51,63.83,40 >>|cRXP_WARN_[RARE] Check for |cRXP_ENEMY_Tarantis|r. Kill him if he's up|r.
	.unitscan Tarantis
    .isOnQuest 35
    .noflyable
step
    #optional
    .goto 37,64.7,56.73,30 >>|cRXP_WARN_[CHEST] Check for the |cRXP_PICK_Chest|r inside the Kobold Camp. Loot it if it's up|r.
    .isOnQuest 35
    .noflyable
step
    #completewith next
    .goto 37,61.65,53.93,12,0
    .goto 40,48.05,87.33
    .subzone 54 >>Enter the Jasperlode Mine
step
    .goto 40,44.22,67.89,12,0
    .goto 40,38.71,60.84,12,0
    .goto 40,35.92,52.81
    >>Follow the middle path inside Jasperlode Mine
    .complete 76,1 --Scout Through the Jasperlode Mine (1)
step
    #optional
	.goto 40,31.02,37.51,20,0
    .goto 40,37.01,50.26,20,0
    .goto 40,47.25,36.66,20,0
    .goto 40,53.93,30.58,20,0
    .goto 40,45.14,21.76,20 >>|cRXP_WARN_[RARE] Check for |cRXP_ENEMY_Mother Fang|r at the back of Jasperlode Mine. Kill her if she's up|r.
	.unitscan Mother Fang
    .isOnQuest 35
    .noflyable
step
    #completewith next
    .goto 37,61.58,70.04,0
    .deathskip >> Die and Respawn at the |cRXP_FRIENDLY_Spirit Healer|r.
    .isOnQuest 35
    .skill riding,75,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Thomas|r and the |cRXP_FRIENDLY_Bounty Board|r.
    .turnin 35 >>Turn in Further Concerns
    .accept 37 >>Accept Find the Lost Guards
    .accept 52 >>Accept Protect the Frontier
    .goto 37,73.973,72.177
	.target +Guard Thomas
    .accept 46 >>Accept Bounty on Murlocs
    .accept 26152 >>Accept WANTED: James Clark
    .goto 37,74.025,72.310
step
    #completewith next
    >>Kill |cRXP_ENEMY_Prowlers|r and |cRXP_ENEMY_Gray Forest Wolves|r.
    >>Kill any |cRXP_ENEMY_Young Forest Bears|r you see.
    .complete 52,1 --Kill Prowler or Forest Wolf (8)
    .mob +*Prowler
    .mob +*Gray Forest Wolf
    .complete 52,2 --Kill Young Forest Bear (5)
    .mob +Young Forest Bear
step
    #optional
    .goto 37,82.95,84.82,40 >>|cRXP_WARN_[RARE] Check for |cRXP_ENEMY_Bushtail|r. Kill him if he's up|r.
    .isOnQuest 52
	.unitscan Bushtail
    .noflyable
step
	#completewith next
    .goto 37,75.71,86.29,0
    >>Kill |cRXP_ENEMY_Murloc Foragers|r and |cRXP_ENEMY_Murloc Lurkers|r. Loot them for their [|cRXP_LOOT_Torn Murloc Fins|r].
    .complete 46,1,4 --Torn Murloc Fin (4/8)
    .mob Murloc Forager
    .mob Murloc Lurker
step
    .goto 37,75.71,86.29,30,0
    .goto 37,77.55,85.75
    .deathskip >> Whilst killing |cRXP_ENEMY_Murloc Foragers|r and |cRXP_ENEMY_Murloc Lurkers|r,die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r.
    .isOnQuest 46
    .skill riding,75,1
step
    .goto 37,83.283,66.089
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rallic Finn|r.
    .vendor 1198 >> Vendor and Repair
	.target Rallic Finn
	.isOnQuest 52
    .noflyable --Azeroth Flying
step
    .goto 37,79.462,68.715
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Timberlain|r.
    .accept 83 >>Accept Fine Linen Goods
    .target Sara Timberlain
step
    .goto 37,78.87,67.20,10,0
    .goto 37,78.637,67.157
    >>Kill |cRXP_FRIENDLY_James Clark|r inside. Loot him for [|cRXP_LOOT_James Clark's Head|r and the |T134939:0|t|cRXP_LOOT_Gold Pickup Schedule|r].
    >>|cRXP_WARN_Use the |T134939:0|t[|cRXP_LOOT_Gold Pickup Schedule|r]. to start the quest|r.
    .complete 26152,1 --James Clark's Head (1)
    .collect 1307,1,123,1 --Gold Pickup Schedule (1)
    .accept 123 >>Accept The Collector
    .mob James Clark
    .use 1307
step
    .goto 37,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Supervisor Raelen|r.
    .accept 5545 >> Accept A Bundle of Trouble
    .target Supervisor Raelen
step
    .goto 37,81.860,66.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Patterson|r.
    .turnin 26152 >>Turn in WANTED: James Clark
    .turnin 123 >>Turn in The Collector
    .accept 147 >>Accept Manhunt
    .target Marshal Patterson
step
    #completewith StoneCairn
    .goto 37,81.72,58.57,0
    .goto 37,77.99,60.59,0
    .goto 37,71.58,60.84,0
    .goto 37,74.75,67.13,0
    .goto 37,87.15,64.63,0
    >>Kill |cRXP_ENEMY_Prowlers|r and |cRXP_ENEMY_Gray Forest Wolves|r.
    >>Kill any |cRXP_ENEMY_Young Forest Bears|r you see.
    .complete 52,1 --Kill Prowler or Forest Wolf (8)
    .mob +*Prowler
    .mob +*Gray Forest Wolf
    .complete 52,2 --Kill Young Forest Bear (5)
    .mob +Young Forest Bear
step
    #completewith MurlocFins
    .goto 37,80.88,53.78,0
    .goto 37,80.63,62.25,0
    .goto 37,82.79,60.12,0
    >>Loot [|cRXP_LOOT_Bundles of Wood|r]. on the ground next to the trees
    .complete 5545,1 -- Bundle of Wood (8)
step
    #label LostGuards
    .goto 37,72.653,60.323
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_A half-eaten body|r on the ground.
    .turnin 37 >>Turn in Find the Lost Guards
    .accept 45 >>Accept Discover Rolf's Fate
step
    #label StoneCairn
    .goto 37,79.795,55.510
    .subzone 86 >> Travel toward Stone Cairn Lake
    .isOnQuest 45
step
    #sticky
    #label MurlocFins
    #loop
    .goto 37,78.837,55.770,0
    .waypoint 37,80.004,53.783,40,0
    .waypoint 37,79.222,54.041,40,0
    .waypoint 37,78.554,55.834,40,0
    .waypoint 37,77.474,57.257,40,0
    .waypoint 37,77.991,58.108,40,0
    .waypoint 37,79.370,57.016,40,0
    >>Kill |cRXP_ENEMY_Murloc Foragers|r and |cRXP_ENEMY_Murloc Lurkers|r. Loot them for their [|cRXP_LOOT_Torn Murloc Fins|r].
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Murloc Foragers|r will cast|r |T135915:0|t[Drink Minor Potion] |cRXP_WARN_which heals themselves for 61-68 health|r.
    .complete 46,1 --Torn Murloc Fin (8)
    .mob Murloc Forager
    .mob Murloc Lurker
step
    .goto 37,79.795,55.510
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Rolf's corpse|r on the ground.
    .turnin 45 >>Turn in Discover Rolf's Fate
    .accept 71 >>Accept Report to Thomas
step
    #sticky
    #label PTFrontier
    #requires MurlocFins
    #loop
    .goto 37,81.72,58.57,0
    .goto 37,77.99,60.59,0
    .goto 37,71.58,60.84,0
    .goto 37,74.75,67.13,0
    .goto 37,87.15,64.63,0
    .waypoint 37,81.72,58.57,60,0
    .waypoint 37,77.99,60.59,60,0
    .waypoint 37,71.58,60.84,60,0
    .waypoint 37,74.75,67.13,60,0
    .waypoint 37,87.15,64.63,60,0
    >>Kill |cRXP_ENEMY_Prowlers|r and |cRXP_ENEMY_Gray Forest Wolves|r.
    >>Kill any |cRXP_ENEMY_Young Forest Bears|r you see.
    .complete 52,1 --Kill Prowler or Forest Wolf (8)
    .mob +*Prowler
    .mob +*Gray Forest Wolf
    .complete 52,2 --Kill Young Forest Bear (5)
    .mob +Young Forest Bear
step
    #loop
    #requires MurlocFins
    .goto 37,80.88,53.78,0
    .goto 37,80.63,62.25,0
    .goto 37,82.79,60.12,0
    .goto 37,80.88,53.78,20,0
    .goto 37,80.48,55.18,20,0
    .goto 37,79.79,56.71,20,0 --Not Exact
    .goto 37,79.04,59.56,20,0
    .goto 37,77.30,59.56,20,0 --Not Exact/Real
    .goto 37,77.18,60.65,20,0 --Not Exact/Real
    .goto 37,76.75,61.76,20,0
    .goto 37,77.13,63.00,20,0
    .goto 37,78.38,62.35,20,0
    .goto 37,79.30,63.34,20,0
    .goto 37,80.24,61.47,20,0
    .goto 37,80.63,62.25,20,0
    .goto 37,81.57,62.64,20,0
    .goto 37,81.27,61.59,20,0
    .goto 37,82.00,61.01,20,0
    .goto 37,83.27,61.12,20,0
    .goto 37,84.20,61.55,20,0
    .goto 37,83.85,60.48,20,0
    .goto 37,82.79,60.12,20,0
    >>Loot [|cRXP_LOOT_Bundles of Wood|r]. on the ground next to the trees
    .complete 5545,1 -- Bundle of Wood (8)
step << skip
    #requires MurlocFins
    #completewith next
    .goto 37,77.65,57.70
    >>|cRXP_WARN_Skip this if you're not low at health|r.
    .deathskip >>Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r.
step
    .goto 37,73.973,72.177
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Thomas|r.
    .turnin 46 >> Turn in Bounty on Murlocs
    .turnin 52 >> Turn in Protect the Frontier
    .turnin 71 >> Turn in Report to Thomas
    .accept 59 >> Accept Cloth and Leather Armor
    .target Guard Thomas
step
    #completewith Morgan
    .goto 37,68.56,82.68,0
    .goto 37,67.63,78.01,0
    .goto 37,68.23,76.33,0
    .goto 37,71.31,76.93,0
    .goto 37,71.81,78.51,0
    >>Kill |cRXP_ENEMY_Bandits|r, |cRXP_ENEMY_Erlan Drudgemoor|r inside, and |cRXP_ENEMY_Surena Caledon|r inside. Loot them for their [|cRXP_LOOT_Linen Scraps|r].
    .complete 83,1 --Collect Linen Scrap (6)
    .mob Bandit
    .mob Erlan Drudgemoor
    .mob Surena Caledon
step
    #optional
    #label Morgan
    .goto 37,71.02,80.67
    >>Kill |cRXP_ENEMY_Morgan the Collector|r inside. Loot him for [|cRXP_LOOT_The Collector's Ring|r and |cRXP_LOOT_Linen Scraps|r].
    >>|cRXP_WARN_[CHEST] Check for the |cRXP_PICK_Chest|r in and around the house. Loot it if it's up|r.
    .complete 147,1 --The Collector's Ring (1)
    .complete 83,1 --Collect Linen Scrap (6)
    .disablecheckbox
    .mob Morgan the Collector
    .itemcount 1019,<6
    .isOnQuest 83
step
    .goto 37,71.02,80.67
    >>Kill |cRXP_ENEMY_Morgan the Collector|r inside. Loot him for [|cRXP_LOOT_The Collector's Ring|r].
    >>|cRXP_WARN_[CHEST] Check for the |cRXP_PICK_Chest|r in and around the house. Loot it if it's up|r.
    .complete 147,1 --The Collector's Ring (1)
    .mob Morgan the Collector
step
    #optional
    #sticky
    #label Snoot
    .goto 37,69.32,79.31,30 >>|cRXP_WARN_[RARE] Check for |cRXP_ENEMY_Snoot the Rooter|r. Kill him if he's up|r.
	.unitscan Snoot the Rooter
    .isOnQuest 83
    .noflyable
step
    #loop
    .goto 37,68.56,82.68,0
    .goto 37,67.63,78.01,0
    .goto 37,68.23,76.33,0
    .goto 37,71.31,76.93,0
    .goto 37,71.81,78.51,0
    .goto 37,70.62,80.73,50,0
    .goto 37,68.56,82.68,50,0
    .goto 37,67.83,80.86,50,0
    .goto 37,67.63,78.01,50,0
    .goto 37,68.55,77.39,50,0
    .goto 37,68.23,76.33,50,0
    .goto 37,70.97,77.21,10,0
    .goto 37,71.31,76.93,10,0
    .goto 37,70.84,78.22,50,0
    .goto 37,71.81,78.51,50,0
    >>Kill |cRXP_ENEMY_Bandits|r. Loot them for their [|cRXP_LOOT_Linen Scraps|r].
    >>|cRXP_WARN_[CHEST] Check for the |cRXP_PICK_Chest|r in and around the barn. Loot it if it's up|r.
    .complete 83,1 --Collect Linen Scrap (6)
    .mob Bandit
step
    #completewith next
    #requires Snoot
    .goto 37,75.71,86.29,30,0
    .goto 37,77.55,85.75,-1
    .goto 37,83.68,69.74,-1
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r.
    .isOnQuest 83
    .skill riding,75
step
    #requires Snoot
    .goto 37,83.283,66.089
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rallic Finn|r.
    .vendor 1198 >>Vendor and Repair
	.target Rallic Finn
    .isOnQuest 83
    .noflyable --Azeroth Flying
step << !DarkIronDwarf !KulTiran !LightforgedDraenei !Mechagnome !VoidElf
    .goto 37,81.829,66.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Goss the Swift|r.
    .fp Eastvale Logging Camp >> Get the Eastvale Logging Camp flight path
	.target Goss the Swift
step
    .goto 37,81.860,66.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Patterson|r.
    .turnin 147 >>Turn in Manhunt
    .target Marshal Patterson
step
    .goto 37,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Supervisor Raelen|r.
    .turnin 5545 >> Turn in A Bundle of Trouble
    .target Supervisor Raelen
step
    .goto 37,79.462,68.715
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Timberlain|r.
    .turnin 83 >> Turn in Fine Linen Goods
    .turnin 59 >> Turn in Cloth and Leather Armor
    .target Sara Timberlain
]])

--Night Elf Shadowglen
RXPGuides.RegisterGuide([[
#retail
#version 2
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(1-80)|r Default
#name ab) Shadowglen
#displayname Shadowglen |cRXP_ENEMY_(Alternative)|r
#defaultfor NightElf !DemonHunter !DK
#next ac) Night Elf Teldrassil

<< Alliance

step
    .goto 460,45.61,74.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilthalaine|r.
    .accept 28713 >>Accept The Balance of Nature
	.target Ilthalaine
step
    .goto 460,42.44,76.29,20,0
    .goto 460,46.63,79.57,20,0
    .goto 460,50.63,76.87,20,0
    .goto 460,42.44,76.29
    >>Kill |cRXP_ENEMY_Young Nightsabers|r.
    .complete 28713,1 --6/6 Young Nightsaber slain
	.mob Young Nightsaber
step
    .goto 460,45.62,74.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilthalaine|r.
    .turnin 28713 >>Turn in The Balance of Nature
    .accept 28714 >>Accept Fel Moss Corruption
	.target Ilthalaine
step
    .goto 460,45.94,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melithar Staghelm|r.
    .accept 28715 >>Accept Demonic Thieves
	.target Melithar Staghelm
step
    #completewith next
    >>Kill |cRXP_ENEMY_Grell|r, |cRXP_ENEMY_Grellkin|r and loot them for their [|cRXP_LOOT_Fel Moss|r].
    .complete 28714,1 --6/6 Fel Moss
	.mob Grell
	.mob Grellkin
step
    .goto 460,36.66,79.84,15,0
    .goto 460,34.82,80.53,15,0
    .goto 460,31.70,74.85,15,0
    .goto 460,30.66,70.55,20,0
    .goto 460,36.66,79.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Melithar's Stolen Bags|r.
    .complete 28715,1 --5/5 Melithar's Stolen Bags
step
    .goto 460,36.66,79.84,15,0
    .goto 460,34.82,80.53,15,0
    .goto 460,31.70,74.85,15,0
    .goto 460,30.66,70.55,20,0
    .goto 460,36.66,79.84
    >>Kill |cRXP_ENEMY_Grell|r, |cRXP_ENEMY_Grellkin|r and loot them for their [|cRXP_LOOT_Fel Moss|r].
    .complete 28714,1 --6/6 Fel Moss
	.mob Grell
	.mob Grellkin
step
    .goto 460,45.93,72.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melithar Staghelm|r.
    .turnin 28715 >>Turn in Demonic Thieves
	.target Melithar Staghelm
step
    .goto 460,46.28,73.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilthalaine|r.
    .turnin 28714 >>Turn in Fel Moss Corruption
    .accept 28723 >>Accept Priestess of the Moon
	.target Ilthalaine
step
    .goto 460,42.49,50.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dentaria Silverglade|r.
    .turnin 28723 >>Turn in Priestess of the Moon
    .accept 28724 >>Accept Iverron's Antidote
	.target Dentaria Silverglade
step
    .goto 460,41.87,49.37,5,0
    .goto 460,40.77,47.27,5,0
    .goto 460,39.54,52.27,5,0
    .goto 460,40.18,52.64,5,0
    .goto 460,40.80,53.32,5,0
    .goto 460,42.28,52.68,5,0
    .goto 460,43.60,51.83,5,0
    .goto 460,41.87,49.37
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Moonpetal Lilies|r.
    .complete 28724,1 -- 7/7 Moonpetal Lily
step
    .goto 460,42.49,50.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dentaria Silverglade|r.
    .turnin 28724 >>Turn in Iverron's Antidote
    .accept 28725 >>Accept The Woodland Protector
	.target Dentaria Silverglade
step
	#completewith next
	.goto 58,44.87,88.5,5 >> Enter the |cRXP_WARN_Cave|r.  then wait for |cRXP_FRIENDLY_Tarindrella|r to appear.
step
    .goto 58,44.87,88.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarindrella|r at the arrow location. She will appear after a couple seconds.
    .turnin 28725 >>Turn in The Woodland Protector
    .accept 28726 >>Accept Webwood Corruption
	.target Tarindrella
step
    .goto 58,39.44,34.72 <<Hunter
    .goto 58,41.27,33.22,10,0 <<!Hunter
    .goto 58,34.81,15.50,15,0 <<!Hunter
    .waypoint 58,46.33,41.34,-30,0
    >>Kill |cRXP_ENEMY_Spiders|r |cRXP_WARN_within the Cave|r.
    >>By using Disengage across the Gap at the Waypoint Location you can save some Time <<Hunter
    >>Make sure that if you do it you don't kill |cRXP_ENEMY_Githyiss the Vile|r because you need him shortly after. << Hunter
    .complete 28726,1 --12/12 Webwood Spider slain
	.mob Webwood Spider
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarindrella|r next to you.
    .turnin 28726 >>Turn in Webwood Corruption
    .accept 28727 >>Accept Vile Touch
	.target Tarindrella
step
    .goto 58,34.56,23.87,0 << !Hunter
    .goto 58,42.81,19.50,10,0 << !Hunter
    .goto 58,45.02,31.37
    >>Kill |cRXP_ENEMY_Githyiss the Vile|r.
    .complete 28727,1 --1/1 Githyiss the Vile slain
	.mob Githyiss the Vile
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarindrella|r next to you.
    .turnin 28727,1 >>Turn in Vile Touch
    .accept 28728 >>Accept Signs of Things to Come
	.target Tarindrella
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dentaria Silverglade|r.
    .goto 460,42.50,50.50
    .turnin 28728 >>Turn in Signs of Things to Come
    .accept 28729 >>Accept Teldrassil: Crown of Azeroth
	.target Dentaria Silverglade
step
    #completewith next
    +|cRXP_WARN_To enable keybinding for quest items, follow these steps:|r
    *[1] Press the |cRXP_WARN_Escape key|r.
    *[2] Select |cRXP_WARN_Options|r.
    *[3] Navigate to |cRXP_WARN_Keybindings|r.
    *[4] Within |cRXP_WARN_Keybindings|r,find |cRXP_WARN_RestedXP Guides|r.
    *[5] Select and bind the |cRXP_WARN_Active Buttons|r.
step << Hunter
	#completewith next
    .goto 460,46.36,41.86,30,0
	.goto 460,51.93,37.12,60 >>Cast |T132164:0|tTame Beast on a Mangy Nightsaber to tame it
	>>Drag |T132161:0|tCall Pet and |T132179:0|tPet Utility onto your Action Bars
	.target Mangy Nightsaber
step
    .goto 460,50.13,34.49
    >>Use the |T967530:0|t[Crystal Phial] |cFFfa9602near the Moonwell.|
    .use 5185
    .complete 28729,1 --1/1 Filled Crystal Phial
step
    .goto 460,42.49,50.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dentaria Silverglade|r.
    .turnin 28729 >>Turn in Teldrassil: Crown of Azeroth
    .accept 28730 >>Accept Precious Waters
	.target Dentaria Silverglade
step
    .goto 460,41.85,63.54,15,0
    .goto 460,46.45,53.43,15,0
    .goto 460,44.44,56.47,15,0
    .goto 460,45.20,60.69,15,0
    .goto 460,48.01,58.75,15,0
    .goto 460,48.14,54.36,15,0
    .goto 460,47.16,55.95
    >>Walk up the ramp of the Tree
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tenaron Stormgrip|r.
    .turnin 28730 >>Turn in Precious Waters
    .accept 28731 >>Accept Teldrassil: Passing Awareness
	.target Tenaron Stormgrip
step
    .goto 460,54.57,84.78
	>>Jump off the Tree. You have a slowfall buff so you won't die
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Porthannius|r.
    .accept 2159 >>Accept Dolanaar Delivery
	.target Porthannius
]])

--Night Elf Teldrassil
RXPGuides.RegisterGuide([[
#retail
#version 2
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(1-80)|r Default
#name ac) Night Elf Teldrassil
#displayname |cFF00CCFF2|r - Teldrassil
#defaultfor NightElf !DemonHunter !DK
#next ba) Elwynn Forest

<< Alliance

step
    .goto 57,59.56,49.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zenn Foulhoof|r.
    .accept 488 >>Accept Zenn's Bidding
	.target Zenn Foulhoof
step
    #completewith next
    >>Kill |cRXP_ENEMY_Webwood Lurkers|r, |cRXP_ENEMY_Nightsabers|r and |cRXP_ENEMY_Strigid Owls|r and loot them for their [|cRXP_LOOT_Nightsaber Fangs,|r, |cRXP_LOOT_Strigid Owl Feathers|r and |cRXP_LOOT_ Webwood Spider Silks|r].
	>>|cRXP_WARN_You will get another opportunity to complete this task soon|r.
    .complete 488,1 --2/2 Nightsaber Fang
    .complete 488,2 --2/2 Strigid Owl Feather
    .complete 488,3 --2/2 Webwood Spider Silk
	.mob Nightsaber Fang
	.mob Strigid Owl Feather
	.mob Webwood Spider Silk
step
    .goto 57,55.56,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tallonkai Swiftroot|r.
    .accept 2438 >>Accept The Emerald Dreamcatcher
	.target Tallonkai Swiftroot
step
    #completewith next
    .goto 57,55.48,50.43
    .fp >>Get |cRXP_WARN_the Dolanaar Flight Path|r.
	.target Fidelio
step
    .goto 57,55.70,51.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Athridas Bearmantle|r.
    .accept 475 >>Accept A Troubling Breeze
	.target Athridas Bearmantle
step
    .goto 57,55.37,52.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Keldamyr|r.
    .turnin 2159,1 >>Turn in Dolanaar Delivery
	.target Innkeeper Keldamyr
step
    #completewith next
    .goto 57,55.36,52.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Keldamyr|r.
    .home >>Set your Hearthstone to Dolanaar
	.target Innkeeper Keldamyr
step
	#completewith next
    .goto 57,56.00,52.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iranis Shadebloom|r.
    .train 2366 >> Train |T4620675:0|tHerbalism
	.skipgossip 47420,1,1,1
	.target Iranis Shadebloom
step
    .goto 57,56.00,52.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iranis Shadebloom|r.
    .train 2575 >> Train |T4620679:0|tMining
	.skipgossip 47420,2,3,2
	.target Iranis Shadebloom
step
    .goto 57,55.82,53.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r.
    .turnin 28731 >>Turn in Teldrassil: Passing Awareness
    .accept 929 >>Accept Teldrassil: The Refusal of the Aspects
	.target Corithras Moonrage
step
    .goto 57,56.74,53.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyoma|r.
    .accept 6344 >>Accept Reminders of Home
	.target Nyoma
step
    #completewith TeldrassilEmeraldDreamcatcher
    >>Kill |cRXP_ENEMY_Webwood Lurkers|r, |cRXP_ENEMY_Nightsabers|r and |cRXP_ENEMY_Strigid Owls|r and loot them for their [|cRXP_LOOT_Nightsaber Fangs,|r, |cRXP_LOOT_Strigid Owl Feathers|r and |cRXP_LOOT_ Webwood Spider Silks|r].
    .complete 488,1 --2/2 Nightsaber Fang
    .complete 488,2 --2/2 Strigid Owl Feather
    .complete 488,3 --2/2 Webwood Spider Silk
	.mob Nightsaber Fang
	.mob Strigid Owl Feather
	.mob Webwood Spider Silk
step
    #completewith next
    +|cRXP_WARN_To enable keybinding for quest items, follow these steps:|r
    *[1] Press the |cRXP_WARN_Escape key|r.
    *[2] Select |cRXP_WARN_Options|r.
    *[3] Navigate to |cRXP_WARN_Keybindings|r.
    *[4] Within |cRXP_WARN_Keybindings|r,find |cRXP_WARN_RestedXP Guides|r.
    *[5] Select and bind the |cRXP_WARN_Active Buttons|r.
step
    .goto 57,61.92,50.69
    >>Use the |T967530:0|t[Jade Phial] |cRXP_WARN_next to the Moonwell|r.
    .complete 929,1 --1/1 Filled Jade Phial
    .use 5619
step
    #completewith next
    +Check for the Treasure Chest |cRXP_WARN_inside the House|r.
step
    .goto 57,64.73,51.70,5,0
    .goto 57,64.90,51.61,5,0
    .goto 57,64.59,51.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaerolas Talvethren|r.
    .turnin 475 >>Turn in A Troubling Breeze
    .accept 476 >>Accept Gnarlpine Corruption
	.target Gaerolas Talvethren
step
    #completewith next
    +Check for |cRXP_ENEMY_Uruson(Rare)|r patrolling |cRXP_WARN_between the Houses|r.
	.unitscan Uruson
step
    #label TeldrassilEmeraldDreamcatcher
    .goto 57,66.10,52.10
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Tailonkai's Dresser|r.
    .complete 2438,1 --1/1 Emerald Dreamcatcher
step
    #completewith next
    .goto 57,64.51,50.46,20,0
    .deathskip >> Die and respawn |cRXP_WARN_at the Spirit Healer|r.
step
    .goto 57,55.82,53.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras|r.
    .turnin 929 >>Turn in Teldrassil: The Refusal of the Aspects
	.target Corithras
step
    .goto 57,55.69,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Athridas|r.
    .turnin 476 >>Turn in Gnarlpine Corruption
	.target Athridas
step
    .goto 57,55.56,50.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tallonkai|r.
    .turnin 2438 >>Turn in The Emerald Dreamcatcher
    .accept 2459 >>Accept Ferocitas the Dream Eater
	.target Tallonkai
step
    .isQuestComplete 488
    .goto 57,59.52,49.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zenn Foulhoof|r.
    .turnin 488 >>Turn in Zenn's Bidding
	.target Zenn Foulhoof
step
    .goto 57,57.48,48.54,40,0
    .goto 57,58.21,49.79,40,0
    .goto 57,58.23,52.16,40,0
    .goto 57,59.97,53.47,40,0
    .goto 57,61.28,51.69,40,0
    .goto 57,60.21,50.03,40,0
    .goto 57,57.48,48.54
    >>Kill |cRXP_ENEMY_Webwood Lurkers|r, |cRXP_ENEMY_Nightsabers|r and |cRXP_ENEMY_Strigid Owls|r and loot them for their [|cRXP_LOOT_Nightsaber Fangs,|r, |cRXP_LOOT_Strigid Owl Feathers|r and |cRXP_LOOT_ Webwood Spider Silks|r].
    .complete 488,1 --2/2 Nightsaber Fang
    .complete 488,2 --2/2 Strigid Owl Feather
    .complete 488,3 --2/2 Webwood Spider Silk
	.mob Nightsaber Fang
	.mob Strigid Owl Feather
	.mob Webwood Spider Silk
step
    #completewith Ferocitas
    +Check for the Treasure Chest |TInterface/cursor/crosshair/interact.blp:20|t |cRXP_WARN_near Ferocitas|r.
	.unitscan Ferocitas
step
    #completewith next
    >>Kill |cRXP_ENEMY_Gnarlpine Mystics|r.
    .complete 2459,1 --7/7 Gnarlpine Mystic slain
	.mob Gnarlpine Mystic
step
    #label Ferocitas
    .goto 57,67.26,46.83
    >>Kill |cRXP_ENEMY_Ferocitas the Dream Eater|r and loot him for [|cRXP_LOOT_Tallonkai's Jewel|r].
    .complete 2459,2 --1/1 Tallonkai's Jewel
	.mob Ferocitas the Dream Eater
step
    .goto 57,66.88,46.87,40,0
    .goto 57,65.76,46.40,40,0
    .goto 57,65.75,44.83,40,0
    .goto 57,67.26,46.83
    >>Kill |cRXP_ENEMY_Gnarlpine Mystics|r.
    >>|cRXP_WARN_Get low health once almost complete. You will deathskip after|r.
    .complete 2459,1 --7/7 Gnarlpine Mystic slain
	.mob Gnarlpine Mystic
step
    #completewith next
    .goto 57,66.13,45.25,25,0
    .deathskip >> Die and respawn |cRXP_WARN_at the Spirit Healer|r.
step
    .goto 57,55.55,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tallonkai Swiftroot|r.
    .turnin 2459 >>Turn in Ferocitas the Dream Eater
	.target Tallonkai Swiftroot
step
    .goto 57,55.72,50.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syral Bladeleaf|r.
    .accept 489 >>Accept Seek Redemption!
	.target Syral Bladeleaf
step
    .goto 57,55.94,55.82,20,0
    .goto 57,55.30,56.98,20,0
    .goto 57,55.32,57.04,20,0
    .goto 57,54.22,53.89,20,0
    .goto 57,56.51,55.80,20,0
    .goto 57,57.18,55.55,20,0
    .goto 57,55.94,55.82
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Fel Cones|r.
    .complete 489,1 --3/3 Fel Cone
step
    .goto 57,55.47,50.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fidelio|r.
    .turnin 6344 >>Turn in Reminders of Home
    .accept 6341 >>Accept To Darnassus
	.target Fidelio
step
    #completewith next
    .goto 57,55.47,50.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fidelio|r.
    .fly Darnassus >>Fly to Darnassus
	.target Fidelio
step
    .goto 89,36.10,53.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Aquinne|r.
    >>|cRXP_WARN_Avoid walking into the Purple Zone|r.
    .turnin 6341 >>Turn in To Darnassus
    .accept 6342 >>Accept An Unexpected Gift
	.target Sister Aquinne
step
    .goto 89,36.59,47.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leora|r.
    .turnin 6342 >>Turn in An Unexpected Gift
    .accept 6343 >>Accept Return to Nyoma
    .target Leora
step
    #completewith next
    .goto 89,36.48,50.08,10,0
    .goto 57,55.42,88.39
    >>Walk into the |cRXP_WARN_Purple Portal|r.
    .fp >>Get the Rut'theran Village Flight Path
step
	#completewith next
    .goto 57,55.42,88.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r.
    .fly Lor'danel >>Fly to Lor'danel
	.target Vesprystus
step
    .goto 62,51.78,18.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dentaria Silverglade|r.
    .accept 13518 >>Accept The Last Wave of Survivors
	.target Dentaria Silverglade
step
    .goto 62,50.92,18.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyrisse|r.
    .vendor 43439 >> |cRXP_WARN_Vendor and Repair|r.
	.target Nyrisse
step
    .goto 62,50.22,19.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Glynda Nal'Shea|r.
    .accept 13522 >>Accept Threat from the Water
	.target Ranger Glynda Nal'Shea
step
    #completewith finalrescue
    >>Kill |cRXP_ENEMY_Vile Spray|r.
    .complete 13522,1 --8/8 Vile Spray slain
	.mob Vile Spray
step
    .goto 62,45.02,18.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Volcor|r.
    .complete 13518,4 --1/1 Volcor rescued
	.target Volcor
step
    .goto 62,44.11,17.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gershala|r.
    .complete 13518,2 --1/1 Gershala Nightwhisper rescued
	.target Gershala Nightwhisper
step
    .goto 62,44.58,19.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Whiteclaw|r.
    .complete 13518,1 --1/1 Cerellean Whiteclaw rescued
	.target Cerellean Whiteclaw
step
	#label finalrescue
    .goto 62,42.91,21.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaldyn|r.
    .complete 13518,3 --1/1 Shaldyn rescued
	.target Shaldyn
step
    .goto 62,46.22,17.15,40,0
    .goto 62,44.85,17.07
    .goto 62,44.06,20.31
    .goto 62,42.91,21.51
    .goto 62,46.22,17.15
    >>Kill |cRXP_ENEMY_Vile Spray|r.
    .complete 13522,1 --8/8 Vile Spray slain
	.target Vile Spray
step
    .goto 62,50.21,19.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Glynda Nal'Shea|r.
    .turnin 13522 >>Turn in Threat from the Water
	.target Ranger Glynda Nal'Shea
step
    .goto 62,51.78,17.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dentaria Silverglade|r.
    .turnin 13518 >>Turn in The Last Wave of Survivors
	.target Dentaria Silverglade
step
    .goto 62,51.8,18.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serendia|r.
    .accept 13520 >>Accept The Boon of the Seas
	.target Serendia
step
    .goto 62,51.14,19.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizbang Cranktoggle|r.
    .accept 13521 >>Accept Buzzbox 413
	.target Wizbang Cranktoggle
step
    #completewith next
    >>Kill |cRXP_ENEMY_Corrupted Tide Crawlers|r and loot them for their [|cRXP_LOOT_Corrupted Tide Crawler Flesh|r].
    .complete 13521,1 --4/4 Corrupted Tide Crawler Flesh
	.mob Corrupted Tide Crawler
step
    .goto 62,52.41,19.60,20,0
    .goto 62,52.50,16.62,20,0
    .goto 62,52.57,17.53,20,0
    .goto 62,53.18,18.53,20,0
    .goto 62,52.41,19.60
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Encrusted Clam Muscle|r.
    .complete 13520,1 --16/16 Encrusted Clam Muscle
step
    .goto 62,52.41,19.60,20,0
    .goto 62,52.50,16.62,20,0
    .goto 62,52.57,17.53,20,0
    .goto 62,53.18,18.53,20,0
    .goto 62,52.41,19.60
    >>Kill |cRXP_ENEMY_Corrupted Tide Crawlers|r and loot them for their [|cRXP_LOOT_Corrupted Tide Crawler Flesh|r].
    .complete 13521,1 --4/4 Corrupted Tide Crawler Flesh
	.mob Corrupted Tide Crawler
step
    .goto 62,53.24,19.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Buzzbox 413|r.
    .turnin 13521 >>Turn in Buzzbox 413
    .accept 13527 >>Accept No Accounting for Taste
step
    .goto 62,55.1,21.0
    >>|TInterface/cursor/crosshair/interact.blp:20|tInteract with the |cRXP_ENEMY_Decomposing Thistle Bear|r.
    .complete 13527,1 --1/1 Foul Bear Carcass Sample
	.target Decomposing Thistle Bear
step
    .goto 62,51.17,19.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizbang Cranktoggle|r.
    .turnin 13527 >>Turn in No Accounting for Taste
    .accept 13528 >>Accept Buzzbox 723
	.target Wizbang Cranktoggle
step
    .goto 62,52.96,25.46,40,0
    .goto 62,54.02,25.28,40,0
    .goto 62,55.73,23.95,40,0
    .goto 62,54.87,27.67,40,0
    .goto 62,52.96,25.46
    >>Kill |cRXP_ENEMY_Bears|r and loot them for their [|cRXP_LOOT_Corrupted Thistle Bear Guts|r].
    .complete 13528,1 --6/6 Corrupted Thistle Bear Guts
	.mob Corrupted Thistle Bear
	.mob Corrupted Thistle Bear Matriarch
	.mob Thistle Bear Cub
step
    .goto 62,54.17,29.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Buzzbox 723|r.
    .turnin 13528 >>Turn in Buzzbox 723
    .accept 13554 >>Accept A Cure In The Dark
step
    #label itall
    .goto 62,56.26,27.41,40,0
    .goto 62,56.78,30.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun|r.
    .accept 13529 >>Accept The Corruption's Source
	.target Tharnariun
step
    #completewith next
	>>Kill |cRXP_ENEMY_Vile Grells|r and |cRXP_ENEMY_Vile Corrupters|r and loot them for [|cRXP_LOOT_Foul Ichor|r and the |cRXP_LOOT_Corruptor's Master Key|r].
	>>|cRXP_WARN_Check for |cRXP_ENEMY_Licillin(Rare|r.) as you quest|r.
    .complete 13554,1 --6/6 Foul Ichor
    .complete 13529,2 --8/8 Vile Grell slain
	.collect 44927,1,13557
	>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Corruptor's Master Key|r.
    .accept 13557 >>Accept Bearer of Good Fortune
    .use 44927
	.mob Vile Grell
	.mob Vile Corruptor
	.unitscan Licillin
step
    .goto 62,57.51,32.31,15,0
    .goto 62,58.58,32.24,15,0
    .goto 62,58.13,32.84,15,0
    .goto 62,57.34,33.00,15,0
    .goto 62,57.17,32.12,15,0
    .goto 62,56.97,32.66,15,0
    .goto 62,56.58,33.64,15,0
    .goto 62,57.10,34.18
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Cages|r |cRXP_WARN_throughout the Cave|r.
	.complete 13557,1
step
    .goto 62,58.41,33.08
    >>Kill |cRXP_ENEMY_Zenn|r |cRXP_WARN_inside the Cave|r.
    >>|cRXP_WARN_Check for a chest next to him. It may not be there|r.
    .complete 13529,1 --1/1 Zenn Foulhoof slain
	.mob Zenn Foulhoof
step
    .goto 62,57.51,32.31,30,0
    .goto 62,58.58,32.24,30,0
    .goto 62,58.13,32.84,30,0
    .goto 62,57.34,33.0,30,0
    .goto 62,57.17,32.12,30,0
    .goto 62,56.97,32.66,30,0
    .goto 62,56.58,33.64,30,0
    .goto 62,57.10,34.18
    >>Kill |cRXP_ENEMY_Vile Grells|r and |cRXP_ENEMY_Vile Corrupters|r and loot them for [|cRXP_LOOT_Foul Ichor|r and the |cRXP_LOOT_Corruptor's Master Key|r].
    >>|cRXP_WARN_Check for |cRXP_ENEMY_Licillin(Rare|r.) as you quest|r.
    .complete 13554,1 --6/6 Foul Ichor
    .complete 13529,2 --8/8 Vile Grell slain
	.collect 44927,1,13557
	>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Corruptor's Master Key|r.
    .accept 13557 >>Accept Bearer of Good Fortune
	.mob Vile Grell
	.mob Vile Corrup
	.unitscan Licillin
    .use 44927
step
    .goto 62,56.79,33.52,20,0
    .goto 62,57.43,33.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClick on the |cRXP_PICK_Disgusting Workbench|r |cRXP_WARN_in the back of the cave|r.
    .accept 13831 >>Accept A Troubling Prescription
step
    #completewith next
    .deathskip >> Die and respawn |cFFfa9602rat the Spirit Healer.|
step
    #completewith next
    #requires itall
    .goto 62,51.13,19.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r.
    .turnin 13557 >>Turn in A Troubling Prescription
    .turnin 13831 >>Turn in A Troubling Prescription
    .turnin 13529 >>Turn in The Corruption's Source
	.target Tharnariun Treetender
step
    .goto 62,51.14,19.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizbang|r.
    .turnin 13554 >>Turn in A Cure In The Dark
	.target Wizbang
step
    .goto 62,50.90,18.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serendia Oakwhisper|r |cRXP_WARN_patrolling up and down the stairs in the Inn|r.
    .turnin 13520 >>Turn in The Boon of the Seas
	.target Serendia Oakwhisper
step
    #completewith next
    .hs >>Hearth |cRXP_WARN_to Dolanaar|r.
step
    .goto 57,56.73,53.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyoma|r.
    .turnin 6343 >>Turn in Return to Nyoma
	.target Nyoma
step
    .goto 57,59.51,49.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zenn Foulhoof|r.
    .turnin 489 >>Turn in Seek Redemption!
	.target Zenn Foulhoof
step
	#completewith next
    .goto 57,55.49,50.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fidelio|r.
    .fly Darnassus >>Fly |cRXP_WARN_to Darnassus|r.
	.target Fidelio
step
    #veteran
    .goto 89,56.58,60.73,10,0
    .goto 89,54.82,59.18
    +The Darkmoon Faire event is now active, |cRXP_WARN_which guarantees you to gain an additional level for free and a temporary 10% experience boost|r. You'll need to purchase |cRXP_WARN_certain items from the auction house to take full advantage of this|r. If necessary,|cRXP_WARN_you can transfer gold from your other characters to make these purchases|r. However, if you find that you can't afford everything, |cRXP_WARN_It's still worthwhile to visit the Darkmoon Faire for the temporary experience buff and to buy only some of the items|r.
    >>|cRXP_WARN_It is recommended to log in with a different character possessing at least 10,000 gold. Use this character to purchase the items and then send them over|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Auctioneer|r.
    .collect 71715,1
    .collect 71638,1
    .collect 71637,1
    .collect 71636,1
    .collect 71635,1
    .collect 71952,1
    .collect 71951,1
    .collect 71953,1
    .collect 71716,1
    .target Auctioneer Tolon
    .target Auctioneer Golothas
    .target Auctioneer Cazarez
    .target Auctioneer Golothas
step
    #fresh
    #completewith DarkMoonFaire
    +The Darkmoon Faire event is now active, |cRXP_WARN_which guarantees you to gain an additional level for free and a temporary 10% experience boost|r.
step
    #completewith next
    .link /run AbandonSkill(186); AbandonSkill(182);>> |cRXP_WARN_Click this text to receive a macro that will unlearn your professions|r.
    .dmf
step
    #label DarkMoonFaire
    .goto 89,38.58,49.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage|r.
    .accept 7905 >>Accept The Darkmoon Faire
	.target Darkmoon Faire Mystic Mage
    .dmf
step
    .goto 89,38.58,49.38
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage|r.
    .skipgossip
    .zoneskip 37
    .dmf
	.target Darkmoon Faire Mystic Mage
step
    #completewith next
    .goto 89,36.58,49.23,20 >>Walk |cRXP_WARN_into the Purple Zone|r to get teleported.
    .zoneskip 97
    .nodmf
step
    .goto 57,52.28,89.47,5 >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Exodar Portal|r.
    .zoneskip 97
    .nodmf
step
    .goto 103,41.87,72.93,10 >>Enter |cRXP_WARN_Exodar City|r and |cRXP_WARN_go down the Spiral Staircase|r.
    .goto 103,48.33,62.94,10 >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Stormwind Portal|r.
    .zoneskip 84
    .nodmf
step
	.goto 84,62.81,71.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hero's Herald|r.
    .accept 46727 >>Accept Tides of War
	.target Hero's Herald
    .nodmf
step
    .nodmf
	.goto 84,63.76,73.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renato Gallina|r.
    .accept 332 >>Accept Wine Shop Advert
	.target Renato Gallina
step
    .nodmf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartlett the Brave|r |cRXP_WARN_in Goldshire|r.
    .goto 37,41.71,64.64
    .fp >>Get the Goldshire Flight Path
	.target Bartlett the Brave
]])

--Worgen Gilneas
RXPGuides.RegisterGuide([[
#retail
#version 2
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(1-80)|r Default
#name a) Worgen Intro
#displayname |cFF00CCFF1|r - Gilneas
#next ba) Elwynn Forest

<< Worgen !DK

step
    #completewith next
    +Welcome to the |cRXP_WARN_Worgen Starting Zone|r. Guide by RestedXP.
    *Without consumables or heirlooms, this route is approximately 5 minutes slower than |cRXP_WARN_Exile's Reach|r. For faster leveling, consider recreating your character and selecting |cRXP_WARN_Exile's Reach|r instead.
    step
    .goto 202,59.130,23.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane|r.
    .accept 14078 >>Accept Lockdown!
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    .goto 202,56.879,17.856,15,0
    .goto 202,54.626,16.717,15 >>Travel toward |cRXP_FRIENDLY_Lieutenant Walden|r.'s corpse on the ground
step
    .goto 202,54.626,16.717
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Walden|r.'s corpse on the ground
    .turnin 14078 >>Turn in Lockdown!
    .accept 14091 >>Accept Something's Amiss
	.target Lieutenant Walden
step
    #optional
    #completewith next
    .goto 202,56.872,17.840,15,0
    .goto 202,58.366,20.712,15,0
    .goto 202,59.830,22.192,15 >>Return to |cRXP_FRIENDLY_Prince Liam Greymane|r.
step
    .goto 202,59.830,22.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane|r.
    .turnin 14091 >>Turn in Something's Amiss
    .accept 14093 >>Accept All Hell Breaks Loose
    .accept 14098 >>Accept Evacuate the Merchant Square
	.target Prince Liam Greymane
step
    #completewith next
    .goto 202,57.678,23.371,0
    .goto 202,65.642,33.161,0
    .goto 202,57.192,40.351,0
    >>Kill |cRXP_ENEMY_Rampaging Worgen|r.
    .complete 14093,1 --Rampaging Worgen slain (6)
	.mob Rampaging Worgen
step
    .goto 202,59.561,26.776
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead|r.
    .accept 14094 >>Accept Salvage the Supplies
	.target Gwen Armstead
step
    #sticky
    #label Salvaged
    #loop
    .goto 202,58.931,25.445,0
    .goto 202,61.954,36.882,0
    .goto 202,55.539,33.642,0
    .waypoint 202,58.931,25.445,12,0
    .waypoint 202,62.280,26.295,12,0
    .waypoint 202,59.193,28.776,12,0
    .waypoint 202,59.012,35.683,12,0
    .waypoint 202,61.954,36.882,12,0
    .waypoint 202,59.174,38.938,12,0
    .waypoint 202,56.253,42.897,12,0
    .waypoint 202,58.449,36.570,12,0
    .waypoint 202,55.539,33.642,12,0
    .waypoint 202,60.040,20.806,12,0
    >>Open |cRXP_PICK_Supply Crates|r on the ground. Loot them for [|cRXP_LOOT_Salvaged Supplies|r].
    .complete 14094,1 --Salvaged Supplies (4)
step
    #sticky
    #label Gwen
    #requires Salvaged
    .goto 202,59.561,26.776,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead|r.
    .turnin 14094 >>Turn in Salvage the Supplies
	.target Gwen Armstead
step
    #optional
    #sticky
    #label RampWorgen
    #loop
    .goto 202,57.678,23.371,0
    .goto 202,65.642,33.161,0
    .goto 202,57.192,40.351,0
    .waypoint 202,57.678,23.371,45,0
    .waypoint 202,60.799,22.195,45,0
    .waypoint 202,63.387,19.323,45,0
    .waypoint 202,64.497,24.603,45,0
    .waypoint 202,65.642,33.161,45,0
    .waypoint 202,60.451,34.024,45,0
    .waypoint 202,59.696,41.857,45,0
    .waypoint 202,57.192,40.351,45,0
    >>Kill |cRXP_ENEMY_Rampaging Worgen|r.
    .complete 14093,1 --Rampaging Worgen slain (6)
	.mob Rampaging Worgen
step
    #label Area1
    #loop
    .goto 202,63.192,31.620,0
    .goto 202,55.001,26.559,0
    .goto 202,58.493,19.345,0
    .goto 202,63.192,31.620,8,0
    .goto 202,63.199,34.791,8,0
    .goto 202,55.001,26.559,8,0
    .goto 202,55.839,20.215,8,0
    .goto 202,58.493,19.345,8,0
    >>Knock on |cRXP_PICK_Merchant Square Doors|r.
    >>|cRXP_WARN_This may spawn hostile|r |cRXP_ENEMY_Rampaging Worgen|r.
    .complete 14098,1 --Market Homes Evacuated (3)
step
    #optional
    #requires RampWorgen
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires Gwen
    .goto 202,59.561,26.776
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead|r.
    .turnin 14094 >>Turn in Salvage the Supplies
	.target Gwen Armstead
step
    .goto 202,59.830,22.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane|r.
    .turnin 14093 >>Turn in All Hell Breaks Loose
    .turnin 14098 >>Turn in Evacuate the Merchant Square
    .accept 14099 >>Accept Royal Orders
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    .goto 202,62.290,31.759,15,0
    .goto 202,64.098,34.535,15,0
    .goto 202,68.809,45.472,15,0
    .goto 202,70.770,55.050,15 >> Travel toward |cRXP_FRIENDLY_Gwen Armstead|r.
step
    .goto 202,70.770,55.050
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead|r.
    .turnin 14099 >>Turn in Royal Orders
    .accept 14265 >>Accept Your Instructor << Warrior
    .accept 14269 >>Accept Someone's Looking for You << Rogue
    .accept 14273 >>Accept Shady Associates << Warlock
    .accept 14275 >>Accept Someone's Keeping Track of You << Hunter
    .accept 14277 >>Accept Arcane Inquiries << Mage
    .accept 14278 >>Accept Seek the Sister << Priest
    .accept 14280 >>Accept The Winds Know Your Name... Apparently << Druid
    .accept 75190 >>Accept Ready and Abel << Monk --Added in DF
	.target Gwen Armstead
step << skip
    #completewith next
    .goto 202,71.023,55.221
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marie Allen|r.
    .vendor 38853 >>|cRXP_BUY_Buy|r |T133634:0|t[Small Brown Pouches] |cRXP_BUY_from her if needed|r.
	.target Marie Allen
step << Warrior
    .goto 202,67.592,64.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seargent Cleese|r.
    .turnin 14265 >>Turn in Your Instructor
    .accept 14286 >>Accept Safety in Numbers
	.target Sergeant Cleese
step << Rogue
    .goto 202,71.406,65.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loren the Fence|r.
    >>|cRXP_WARN_She is|r |T132320:0|t[Stealthed].
    .turnin 14269 >>Turn in Someone's Looking for You
    .accept 14285 >>Accept Safety in Numbers
	.target Loren the Fence
step << Warlock
    .goto 202,71.420,64.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vitus Darkwalker|r.
    .turnin 14273 >>Shady Associates
    .accept 14287 >>Accept Safety in Numbers
	.target Vitus Darkwalker
step << Hunter
    .goto 202,71.503,61.307
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntsman Blake|r.
    .turnin 14275 >>Turn in Someone's Keeping Track of You
    .accept 14290 >>Accept Safety in Numbers
	.target Huntsman Blake
step << Mage
    .goto 202,68.043,64.695
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Myriam Spellwaker|r.
    .turnin 14277 >>Turn in Arcane Inquiries
    .accept 14288 >>Accept Safety in Numbers
	.target Myriam Spellwaker
step << Priest
    .goto 202,70.421,65.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Almyra|r.
    .turnin 14278 >>Turn in Seek the Sister
    .accept 14289 >>Accept Safety in Numbers
	.target Sister Almyra
step << Druid
    .goto 202,70.190,65.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celestine of the Harvest|r.
    .turnin 14280 >> Turn in The Winds Know Your Name... Apparently
    .accept 14291 >> Accept Safety in Numbers
	.target Celestine of the Harvest
step << Monk
    .goto 202,69.977,65.559
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Todd Abel|r.
    .turnin 75190 >>Turn in Ready and Abel
    .accept 75189 >>Accept Safety in Numbers
    .target Todd Abel
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane|r and |cRXP_FRIENDLY_Lord Godfrey|r.
    .turnin 14285 >>Turn in Safety in Numbers << Rogue
    .turnin 14286 >>Turn in Safety in Numbers << Warrior
    .turnin 14287 >>Turn in Safety in Numbers << Warlock
    .turnin 14288 >>Turn in Safety in Numbers << Mage
    .turnin 14289 >>Turn in Safety in Numbers << Priest
    .turnin 14290 >>Turn in Safety in Numbers << Hunter
    .turnin 14291 >>Turn in Safety in Numbers << Druid
    .turnin 75189 >>Turn in Safety in Numbers << Monk
    .accept 14157 >>Accept Old Divisions
    .goto 202,65.810,77.714
	.target +King Genn Greymane
    .accept 24930 >>Accept While You're At It
    .goto 202,65.279,77.607
	.target +Lord Godfrey
step
    #sticky
    #label Bloodfang
    #loop
    .goto 202,57.890,72.582,0
    .goto 202,59.334,63.772,0
    .goto 202,61.376,70.799,0
    .goto 202,67.168,64.124,0
    .waypoint 202,57.890,72.582,20,0
    .waypoint 202,55.652,68.601,20,0
    .waypoint 202,56.961,66.801,20,0
    .waypoint 202,58.605,63.555,20,0
    .waypoint 202,59.334,63.772,20,0
    .waypoint 202,61.343,66.187,20,0
    .waypoint 202,61.898,66.760,20,0
    .waypoint 202,59.853,70.005,20,0
    .waypoint 202,61.376,70.799,20,0
    .waypoint 202,61.872,71.789,20,0
    .waypoint 202,64.690,69.474,20,0
    .waypoint 202,67.168,64.124,20,0
	>>Kill |cRXP_ENEMY_Bloodfang Worgen|r.
    .complete 24930,1 --Bloodfang Worgen slain (5)
	.mob *Bloodfang Worgen
step
    #optional
    #completewith next
    .goto 202,59.984,71.904,15,0
    .goto 202,58.006,72.476,15,0
    .goto 202,57.736,73.926,15,0
    .goto 202,57.925,75.584,10 >>Travel toward |cRXP_FRIENDLY_Captain Broderick|r inside.
step
    .goto 202,57.925,75.584
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Broderick|r inside.
    .turnin 14157 >>Turn in Old Divisions
    .accept 28850 >>Accept The Prison Rooftop
	.target Captain Broderick
step
    #optional
    #completewith Rooftop
    #label Staircase1
    .goto 202,57.001,74.780,5,0
    .goto 202,55.627,72.484,12 >>Travel up the spiral staircase
step
    #optional
    #completewith Rooftop
    #requires Staircase1
    .goto 202,54.046,69.362,12,0
    .goto 202,53.759,67.454,12,0
    .goto 202,55.224,62.906,12 >>Travel toward |cRXP_FRIENDLY_Lord Darius Crowley|r.
step
    #label Rooftop
    .goto 202,55.224,62.906
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley|r.
    .turnin 28850 >>Turn in The Prison Rooftop
    .accept 14154 >>Accept By the Skin of His Teeth
    .timer 118,By the Skin of His Teeth RP
	.target Lord Darius Crowley
step
    .goto 202,55.224,62.906
    >>Kill the oncoming waves of |cRXP_ENEMY_Worgen Alphas|r and |cRXP_ENEMY_Bloodfang Runts|r for 2 minutes.
    >>|cRXP_WARN_Stay near |cRXP_FRIENDLY_Lord Darius Crowley|r to gain|r |T236310:0|t[Rebel Valor] |cRXP_WARN_(Passive Aura: Greatly increases haste, health regeneration, and resource regeneration)|r.
    .complete 14154,1 --Survive while holding back the worgen for 2 minutes. (1)
    .mob Worgen Alpha
    .mob Bloodfang Runt
step
    .goto 202,55.224,62.906
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley|r.
    .turnin 14154 >>Turn in By the Skin of His Teeth
    .accept 26129 >>Accept Brothers In Arms
	.target Lord Darius Crowley
step
    #optional
    #completewith Brothers
    #label Staircase2
    .goto 202,53.759,67.454,12,0
    .goto 202,54.046,69.362,12 >>Travel toward the spiral staircase
--XX NOTE: You can longjump up behind Darius to jump down, but I doubt the avg user can do it (evident of Wetlands skip despite it being easier)
step
    #optional
    #completewith Brothers
    #requires Staircase2
    .goto 202,55.627,72.484,15,0
    .goto 202,57.707,74.729,5,0
    .goto 202,59.984,71.904,20 >>Travel down the spiral staircase. Go outside
step
    #label Brothers
    #requires Bloodfang
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Godfrey|r and |cRXP_FRIENDLY_King Genn Greymane|r.
    .turnin 24930 >>Turn in While You're At It
    .goto 202,65.279,77.607
	.target +Lord Godfrey
    .turnin 26129 >>Turn in Brothers In Arms
    .accept 14159 >>Accept The Rebel Lord's Arsenal
    .goto 202,65.810,77.714
	.target +King Genn Greymane
step
    #optional
    #completewith Arsenal
    #requires Cellar1
    .goto 202,61.383,80.814,15,0
    .goto 202,56.181,82.790,15,0
    .goto 202,55.945,81.481,5,0
    .goto 202,56.805,81.599,6,0
    .goto 202,56.768,85.448,10 >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Cellar Door|r to open it, then travel toward |cRXP_FRIENDLY_Josiah Avery|r inside.
--XX no spell for this
step
    #label Arsenal
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Josiah Avery|r and |cRXP_FRIENDLY_Lorna Crowley|r inside.
    .turnin 14159 >>Turn in The Rebel Lord's Arsenal
    .goto 202,56.768,85.448
	.target +Josiah Avery
    .accept 14204 >>Accept From the Shadows
    .goto 202,56.873,81.421
	.target +Lorna Crowley
step << skip
    #completewith next
    +|cRXP_WARN_To enable keybinding for quest items, follow these steps:|r
    *[1] Press the |cRXP_WARN_Escape key|r.
    *[2] Select |cRXP_WARN_Options|r.
    *[3] Navigate to |cRXP_WARN_Keybindings|r.
    *[4] Within |cRXP_WARN_Keybindings|r,find |cRXP_WARN_RestedXP Guides|r.
    *[5] Select and bind the |cRXP_WARN_Active Buttons|r.
step
    #loop
    .goto 202,54.026,81.617,0
    .goto 202,50.457,81.103,0
    .goto 202,47.100,77.204,0
    .goto 202,53.263,76.819,0
    .goto 202,54.026,81.617,20,0
    .goto 202,55.209,84.131,20,0
    .goto 202,51.607,83.495,20,0
    .goto 202,50.679,83.942,20,0
    .goto 202,50.457,81.103,20,0
    .goto 202,48.050,84.424,20,0
    .goto 202,47.075,81.792,20,0
    .goto 202,46.153,81.533,20,0
    .goto 202,47.100,77.204,20,0
    .goto 202,48.918,76.770,20,0
    .goto 202,51.200,76.089,20,0
    .goto 202,53.263,76.819,20,0
    >>Kill |cRXP_ENEMY_Bloodfang Lurkers|r.
    >>|cRXP_WARN_Be careful as they are|r |T132320:0|t[Stealthed]
    >>|cRXP_WARN_Use your |cRXP_FRIENDLY_Gilnean Mastiff's|r|r |T236186:0|t[Attack Lurker] |cRXP_WARN_spell to help locate |cRXP_ENEMY_Bloodfang Lurkers|r if needed|r.
    >>|cRXP_WARN_If you lose your |cRXP_FRIENDLY_Gilnean Mastiff|r, resummon it using the|r |T236926:0|t[Gilnean Mastiff Collar].
    .complete 14204,1 --Bloodfang Lurker slain (6)
	.mob Bloodfang Lurker
    .use 48707
step
    .goto 202,56.873,81.421
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r inside.
    .turnin 14204 >>Turn in From the Shadows
    .accept 14214 >>Accept Message to Greymane
	.target Lorna Crowley
step
    #optional
    #completewith next
    .goto 202,55.818,81.572,6,0
    .goto 202,56.184,82.795,12,0
    .goto 202,59.207,83.777,15 >> Travel toward |cRXP_FRIENDLY_King Genn Greymane|r.
step
    .goto 202,59.207,83.777
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane|r.
    .turnin 14214 >>Turn in Message to Greymane
    .accept 14293 >>Accept Save Krennan Aranas
    .timer 16,Save Krennan Aranas RP
	.target King Genn Greymane
step << skip
    #completewith next
    .goto 202,58.710,77.289,0
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r. AFTER saving |cRXP_FRIENDLY_Krennan Aranas|r.
    .target Spirit Healer
step
    .goto 202,59.207,83.777,0
    .goto 202,66.171,61.811
    >>Whilst on |cRXP_FRIENDLY_King Greymane's Horse|r.:
    >>Cast |T134149:0|t[Rescue Krennan] (1) to save |cRXP_FRIENDLY_Krennan Aranas|r when you approach him.
-- >>|cRXP_WARN_After you save him, press dismount |cRXP_FRIENDLY_King Greymane's Horse|r and die to the|r |cRXP_ENEMY_Bloodfang Rippers|r.
    >>|cRXP_WARN_If you fail this, talk to |cRXP_FRIENDLY_King Genn Greymane|r to try again|r.
    .complete 14293,1 --Krennan Aranas rescued (1)
    .timer 19,Save Krennan Aranas RP
	.target Krennan Aranas
    .target *King Genn Greymane
    .skipgossip 35550,1
    .timer 16,Save Krennan Aranas RP
--XX 19s slower to not deathskip, not gonna risk it
step << skip
    #optional
    #completewith next
    .goto 202,58.710,77.289
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r. AFTER saving |cRXP_FRIENDLY_Krennan Aranas|r.
    .target Spirit Healer
step
    .goto 202,55.715,80.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Godfrey|r.
    .turnin 14293 >>Turn in Save Krennan Aranas
    .accept 14294 >>Accept Time to Regroup
	.target Lord Godfrey
--XX 14293 didn't complete after turning in quest, worked again after accepting followup (very minor issue)
step
    #optional
    #completewith next
    .goto 202,53.411,82.729,15,0
    .goto 202,44.351,82.504,15,0
    .goto 202,41.103,81.945,15,0
    .goto 202,30.373,73.142,15 >> Travel toward |cRXP_FRIENDLY_King Genn Greymane|r.
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane|r and |cRXP_FRIENDLY_Lord Darius Crowley|r.
    .turnin 14294 >>Turn in Time to Regroup
    .goto 202,30.373,73.142
	.target +King Genn Greymane
    .accept 14212 >>Accept Sacrifices
    .goto 202,31.103,72.365
	.target +Lord Darius Crowley
step
    #completewith next
    .goto 202,31.282,72.645
    .vehicle >> Enter |cRXP_FRIENDLY_Crowley's Horse|r.
    .timer 79,Sacrifices RP
    .target Crowley's Horse
step
    .goto 202,31.282,72.645,-1
    .goto 202,40.749,39.219,-1
    >>Whilst on |cRXP_FRIENDLY_Crowley's Horse|r.:
    >>Round up |cRXP_ENEMY_Bloodfang Stalkers|r.
    >>Cast |T135433:0|t[Throw Torch] (1) (Ranged instant: Rounds up |cRXP_ENEMY_Bloodfang Stalkers|r.)
    .complete 14212,1 --Bloodfang Stalker rounded up (30)
	.mob Bloodfang Stalker
--XX about 40s slower not to deathskip, but new client stuff is too advanced (IMO)
step
    #completewith next
    >>|cRXP_WARN_Wait out the RP|r.
    .goto 202,40.548,39.446,20 >>Travel on |cRXP_FRIENDLY_Crowley's Horse|r toward |cRXP_FRIENDLY_Tobias Mistmantle|r.
step
    .goto 202,40.548,39.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tobias Mistmantle|r.
    .turnin 14212 >>Turn in Sacrifices
    .accept 14218 >>Accept By Blood and Ash
	.target Tobias Mistmantle
step
    #completewith next
    .goto 202,40.883,36.449,-1
    .goto 202,40.120,36.463,-1
    .goto 202,38.786,37.390,-1
    .goto 202,38.395,38.282,-1
    .goto 202,37.896,39.535,-1
    .goto 202,37.955,40.949,-1
    .vehicle >> Enter a |cRXP_FRIENDLY_Rebel Cannon|r.
    .target Rebel Cannon
step
    .goto 202,40.13,36.52
    >>Whilst in a |cRXP_FRIENDLY_Rebel Cannon|r.:
    >>Kill |cRXP_ENEMY_Bloodfang Stalkers|r.
    >>Cast |T252185:0|t[Rebel Cannon] (1) (Ranged instant: Deals a LOT of damage)
    .complete 14218,1 --Bloodfang Stalker slain (80)
    .mob Bloodfang Stalker
step
    .goto 202,40.548,39.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tobias Mistmantle|r.
    .turnin 14218 >>Turn in By Blood and Ash
    .accept 14221 >>Accept Never Surrender, Sometimes Retreat
	.target Tobias Mistmantle
step
    #optional
    #completewith next
    .goto 202,41.075,40.477,8,0
    .goto 202,43.584,44.647,12 >>Enter the Cathedral
step
    .goto 202,48.936,52.794
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley|r inside.
    .turnin 14221 >>Turn in Never Surrender, Sometimes Retreat
    .accept 14222 >>Accept Last Stand
	.target Lord Darius Crowley
step
    #loop
    .goto 202,42.708,43.201,0
    .goto 202,46.550,49.292,0
    .goto 202,47.789,46.937,20,0
    .goto 202,43.825,45.568,20,0
    .goto 202,42.708,43.201,20,0
    .goto 202,45.161,50.530,20,0
    >>Kill |cRXP_ENEMY_Frenzied Stalkers|r.
    >>|cRXP_WARN_Stay near |cRXP_FRIENDLY_Lord Darius Crowley|r to gain|r |T236310:0|t[Rebel Valor] |cRXP_WARN_(Passive Aura: Greatly increases haste, health regen, and mana regen)|r.
    .complete 14222,1 --Frenzied Stalker slain (8)
	.mob Frenzied Stalker
step
    .goto 202,48.936,52.794
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley|r inside.
	>>|cRXP_WARN_Press "Escape" on your keyboard to skip the cinematic|r.
    .turnin 14222 >>Turn in Last Stand
    .timer 46,Last Stand RP
	.target Lord Daruius Crowley
step
    .goto 179,36.47,61.39
    >>|cRXP_WARN_Wait out the RP|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane|r.
    .turnin 14375 >>Turn in Last Chance at Humanity
    .timer 7,Last Chance at Humanity RP
	.target King Genn Greymane
--XX 2dp waypoints here on out (gc bug)
step
    .goto 179,36.51,62.27
    >>|cRXP_WARN_Wait out the RP|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Godfrey|r.
    .accept 14313 >>Accept Among Humans Again
	.target Lord Godfrey
step
    #optional
    #completewith next
    .goto 179,37.17,63.58,8,0
    .goto 179,37.41,63.24,10 >>Enter the house
step
    .goto 179,37.41,63.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krennan Aranas|r inside.
    .turnin 14313 >>Turn in Among Humans Again
    .accept 14320 >>Accept In Need of Ingredients
	.target Krennan Aranas
step
    #sticky
    #label Professions1
    #completewith Professions3
    .goto 179,37.34,63.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jack "All Trades" Derrington|r.
    >>|cRXP_WARN_Herbing Herbs and Mining Veins provides XP. Only gather resources in your direct path|r.
    >>|cRXP_WARN_If you don't want to do this, skip this step|r.
    .train 2366 >> Train |T4620675:0|t[Herbalism]
    .train 2575 >> Train |T4620679:0|t[Mining]
    .target Jack "All Trades" Derrington
    .skipgossip 50247,1,1,1
    .train 2366,1 --Herbalism
    .train 2575,1 --Mining
step
    #optional
    #requires Professions1
    #label Professions2
    #completewith Professions3
    .goto 179,37.34,63.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jack "All Trades" Derrington|r.
    >>|cRXP_WARN_Herbing Herbs provides XP. Only gather resources in your direct path|r.
    >>|cRXP_WARN_If you don't want to do this, skip this step|r.
    .train 2366 >> Train |T4620675:0|t[Herbalism]
    .target Jack "All Trades" Derrington
    .skipgossip 50247,2,2,2
    .train 2575,3 --Mining
step
    #optional
    #requires Professions2
    #label Professions3
    .goto 179,37.34,63.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jack "All Trades" Derrington|r.
    >>|cRXP_WARN_Mining Veins provides XP. Only gather resources in your direct path|r.
    >>|cRXP_WARN_If you don't want to do this, skip this step|r.
    .train 2575 >> Train |T4620679:0|t[Mining]
    .target Jack "All Trades" Derrington
    .skipgossip 50247,2,3,2
    .train 2366,3 --Herbalism
step
    .goto 179,32.77,66.39
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Crate of Mandrake Essence|r on the ground.
	>>|cRXP_WARN_Press "Escape" on your keyboard to skip the cinematic|r.
    .turnin 14320 >>Turn in In Need of Ingredients
step
    #label MiningWorgen
    .goto 179,32.77,66.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Slain Watchman|r.'s corpse on the ground
	>>|cRXP_WARN_If you cannot do this, type /reload in chat|r.
    .accept 14321 >>Accept Invasion
    .target Slain Watchman
step
    .goto 179,37.41,63.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead|r inside.
    .turnin 14321 >>Turn in Invasion
    .accept 14336 >>Accept Kill or Be Killed
	.target Gwen Armstead
step
    .goto 179,35.94,66.16,15,0
    .goto 179,35.28,66.06,15,0
    .goto 179,35.76,67.31,15,0
    .goto 179,35.94,66.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane|r.
    .turnin 14336 >>Turn in Kill or Be Killed
    .accept 14347 >>Accept Hold the Line
    .accept 14348 >>Accept You Can't Take 'Em Alone
	.target Prince Liam Greymane
step
    #sticky
    #label ForsakenInvader
    .goto 179,35.61,66.62,0,0
    >>Kill |cRXP_ENEMY_Forsaken Invaders|r.
    .complete 14347,1 --Forsaken Invader slain (10)
	.mob Forsaken Invader
step
    #label Abominations
    #loop
    .goto 179,37.77,69.30,0
    .goto 179,34.23,69.98,0
    .goto 179,33.63,64.76,0
    .goto 179,37.77,69.30,30,0
    .goto 179,38.48,71.45,30,0
    .goto 179,37.24,71.34,30,0
    .goto 179,36.02,71.29,30,0
    .goto 179,34.23,69.98,30,0
    .goto 179,33.39,70.65,30,0
    .goto 179,33.33,71.73,30,0
    .goto 179,33.33,67.76,30,0
    .goto 179,33.63,64.76,30,0
    >>Loot |T132620:0|t[|cRXP_LOOT_Black Gunpowder Kegs|r]. on the ground
    >>Throw the |T132620:0|t[|cRXP_LOOT_Black Gunpowder Kegs|r at |cRXP_ENEMY_Horrid Abominations|r].
    .collect 49202,4,14348,1,-1 --Black Gunpowder Keg (4)
    .complete 14348,1 --Gunpowder thrown at Abominations (4)
    .use 49202
	.mob Horrid Abomination
step
    .goto 179,35.94,66.16,15,0
    .goto 179,35.28,66.06,15,0
    .goto 179,35.76,67.31,15,0
    .goto 179,35.94,66.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane|r.
    .turnin 14347 >>Turn in Hold the Line
    .turnin 14348,1 >>Turn in You Can't Take 'Em Alone << !Warrior !Rogue !Monk
    .turnin 14348,2 >>Turn in You Can't Take 'Em Alone << Warrior/Rogue/Monk
    .accept 14366 >>Accept Holding Steady
	.target Prince Liam Greymane
step
    .goto 179,37.41,63.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead|r inside.
    .turnin 14366 >>Turn in Holding Steady
    .accept 14367 >>Accept The Allens' Storm Cellar
	.target Gwen Armstead
step
    #optional
    #completewith next
    .goto 179,28.41,64.23,8,0
    .goto 179,28.32,63.88,6 >>Enter the Cellar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Godfrey|r and |cRXP_FRIENDLY_Melinda Hammond|r inside.
    .turnin 14367 >>Turn in The Allens' Storm Cellar
    .accept 14369 >>Accept Unleash the Beast
    .accept 14382 >>Accept Two By Sea
    .goto 179,28.97,63.93
	.target +Lord Godfrey
    .accept 14368 >>Accept Save the Children!
    .goto 179,28.93,64.04
	.target +Melinda Hammond
step
    #optional
    #label ChildrenHouse1
    #completewith Ashley
    .goto 179,28.32,63.88,6,0
    .goto 179,28.41,64.23,5 >>Exit the Cellar
step
    #optional
	#completewith Cynthia
    >>Kill |cRXP_ENEMY_Forsaken Footsoldiers|r.
    .complete 14369,1 --Forsaken Combatant slain (8)
	.mob Forsaken Footsoldier
step
    #optional
    #label ChildrenHouse2
    #requires ChildrenHouse1
    #completewith Ashley
    .goto 179,27.83,66.83,7 >>Enter the house
step
    #optional
    #completewith Ashley
    #requires ChildrenHouse2
    .goto 179,27.90,66.12,3,0
    .goto 179,28.19,66.32,3 >>Go upstairs
step
    #label Ashley
    .goto 179,27.88,66.66
    .cast 68598 >>Talk to |cRXP_FRIENDLY_Ashley|r upstairs.
--  .complete 14368,2 --Ashley rescued (1)
	.target Ashley
    .isOnQuest 14368
--XX talk spell is about 0.5s faster than credit
step
    .goto 179,28.53,66.73,8,0
    .goto 179,28.71,66.78
    .cast 68596 >>Talk to |cRXP_FRIENDLY_James|r outside.
--  .complete 14368,3 --James rescued (1)
	.target James
    .isOnQuest 14368
step
    #label Cynthia
    .goto 179,29.59,69.31
    .cast 68597 >>Talk to |cRXP_FRIENDLY_Cynthia|r.
--  .complete 14368,1 --Cynthia rescued (1)
	.target Cynthia
    .isOnQuest 14368
step
	#sticky
    #label Combatants
    #loop
    .goto 179,27.59,75.20,0
    .goto 179,26.15,74.55,0
    .goto 179,24.40,70.19,0
    .goto 179,24.55,69.00,0
    .waypoint 179,27.59,75.20,45,0
    .waypoint 179,27.39,73.94,45,0
    .waypoint 179,26.15,74.55,45,0
    .waypoint 179,24.29,73.29,45,0
    .waypoint 179,24.40,70.19,45,0
    .waypoint 179,24.55,69.00,45,0
    >>Kill |cRXP_ENEMY_Forsaken Footsoldiers|r and |cRXP_ENEMY_Forsaken Sailors|r.
    .complete 14369,1 --Forsaken Combatant slain (8)
	.mob *Forsaken Footsoldier
	.mob *Forsaken Sailor
step
    #optional
    #completewith Anson
    #loop
    .goto 179,28.39,72.09,0
    .goto 179,26.90,71.55,0
    .goto 179,26.26,70.66,0
    .goto 179,24.79,68.98,0
    .goto 179,25.13,72.09,0
    .goto 179,26.73,73.45,0
    .goto 179,28.39,72.09,45,0
    .goto 179,26.90,71.55,45,0
    .goto 179,26.26,70.66,45,0
    .goto 179,24.79,68.98,45,0
    .goto 179,25.13,72.09,45,0
    .goto 179,26.73,73.45,45,0
    >>Kill the |cRXP_ENEMY_Forsaken Machinist|r. (if there is one) to make space in the |cRXP_FRIENDLY_Forsaken Catapult|r.
    .vehicle >>Enter the |cRXP_FRIENDLY_Forsaken Catapult|r.
    .timer 59,Catapult Implodes
	.mob Forsaken Machinist
    .target Forsaken Catapult
step
    #optional
    #completewith Anson
    +Whilst in a |cRXP_FRIENDLY_Forsaken Catapult|r.:
    >>Aim carefully, then cast |T252175:0|t[Launch] (1) to be launched onto |cRXP_ENEMY_Captain Anson|r.'s northern ship
    *|cRXP_WARN_Remember that you can move whilst in the|r |cRXP_FRIENDLY_Forsaken Catapult|r.
    *|cRXP_WARN_Make sure you aim carefully, as you can be launched into the side of the boat, or into the water past the boat|r.
--XX Subzone 4714 (Gilneas) - can tie this to cast ID or subzone ID but there's no good way to hide this/detect if the player gets onto the boat or not
step
    #label Anson
    .goto 179,24.74,76.26,6,0
    .goto 179,24.94,76.50,6,0
    .goto 179,23.77,74.70
    >>Kill |cRXP_ENEMY_Captain Anson|r inside on the bottom floor of the northern ship.
    .complete 14382,1 --Captain Anson slain (1)
	.mob Captain Anson
--XX Would add waypoints but the Catapult step gives enough bloat as is
--XX Check if body type 2s can exit via cannon holes
step
    #optional
    #completewith Morris
    #label Catapult3
    .goto 179,24.94,76.50,6 >> Go back upstairs
step
    #optional
    #requires Catapult3
    #completewith Morris
    #loop
    .goto 179,26.73,73.45,0
    .goto 179,26.90,71.55,0
    .goto 179,28.39,72.09,0
    .goto 179,29.61,74.10,0
    .goto 179,26.26,70.66,0
    .goto 179,24.79,68.98,0
    .goto 179,25.13,72.09,0
    .goto 179,26.73,73.45,45,0
    .goto 179,26.90,71.55,45,0
    .goto 179,28.39,72.09,45,0
    .goto 179,29.61,74.10,45,0
    .goto 179,26.26,70.66,45,0
    .goto 179,24.79,68.98,45,0
    .goto 179,25.13,72.09,45,0
    >>Kill a |cRXP_ENEMY_Forsaken Machinist|r to make space in the |cRXP_FRIENDLY_Forsaken Catapult|r.
    .vehicle >>Enter the |cRXP_FRIENDLY_Forsaken Catapult|r.
    .timer 59,Catapult Implodes
	.mob Forsaken Machinist
    .target Forsaken Catapult
step
    #optional
    #requires Catapult3
    #completewith Morris
    +Whilst in a |cRXP_FRIENDLY_Forsaken Catapult|r.:
    >>Aim carefully, then cast |T252175:0|t[Launch] (1) to be launched onto |cRXP_ENEMY_Captain Morris|r.'s southern ship
    *|cRXP_WARN_Remember that you can move whilst in the|r |cRXP_FRIENDLY_Forsaken Catapult|r.
    *|cRXP_WARN_Make sure you aim carefully, as you can be launched into the side of the boat, or into the water past the boat|r.
step
	#label Morris
    .goto 179,27.90,81.11,6,0
    .goto 179,28.06,81.32,6,0
    .goto 179,26.85,79.32
    >>Kill |cRXP_ENEMY_Captain Morris|r on the bottom floor of the southern ship.
    .complete 14382,2 --Captain Morris slain (1)
	.mob Captain Morris
step << skip
    #requires Combatants
    #completewith Unleash
    .goto 179,27.65,66.05,0
    .deathskip >>Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r.
    .target Spirit Healer
    .subzoneskip 4792
--XX not worth the timesave
step
    #optional
    #requires Combatants
    #completewith Unleash
    .goto 179,28.41,64.23,8,0
    .goto 179,28.32,63.88,6 >>Enter the Cellar
step
    #label Unleash
    #requires Combatants
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melinda Hammond|r and |cRXP_FRIENDLY_Lord Godfrey|r inside.
    .turnin 14368 >>Turn in Save the Children!
    .goto 179,28.93,64.04
	.target +Melinda Hammond
    .turnin 14369 >>Turn in Unleash the Beast
    .turnin 14382 >>Turn in Two By Sea
    .accept 14386 >>Accept Leader of the Pack
    .goto 179,28.97,63.93
	.target +Lord Godfrey
step
    #optional
    #label Cellar6
    #completewith next
    .goto 179,28.32,63.88,6,0
    .goto 179,28.41,64.23,5 >>Exit the Cellar
step
    #optional
    #requires Cellar6
    #completewith Thyala
    .cast 68682 >>Use the |T132161:0|t[Mastiff Whistle] to summon |cRXP_FRIENDLY_Attack Mastiffs|r to attack |cRXP_ENEMY_Dark Ranger Thyala|r.
step
    #label Thyala
    .goto 179,23.48,67.53
    >>Kill |cRXP_ENEMY_Dark Ranger Thyala|r.
    .complete 14386,1 --Dark Ranger Thyala slain (1)
    .use 49240
	.mob Dark Ranger Thyala
step
    #optional
    #completewith next
    .goto 179,28.41,64.23,8,0
    .goto 179,28.32,63.88,6 >>Enter the Cellar
step
    .goto 179,28.97,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Godfrey|r.
    .turnin 14386 >>Turn in Leader of the Pack
    .accept 14396 >>Accept As the Land Shatters
	.target Lord Godfrey
step
    #optional
    #label Cellar6
    #completewith next
    .goto 179,28.32,63.88,6,0
    .goto 179,28.41,64.23,5 >>Exit the Cellar
step
    .goto 179,29.03,65.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane|r.
    .turnin 14396 >>Turn in As the Land Shatters
    .accept 14395 >>Accept Gasping for Breath
	.target Prince Liam Greymane
step
    #completewith next
    #loop
    .goto 179,27.20,68.79,0
    .goto 179,27.07,65.40,0
    .goto 179,27.93,66.03,0
    .goto 179,28.53,66.66,15,0
    .goto 179,28.64,67.08,15,0
    .goto 179,28.76,67.34,15,0
    .goto 179,28.00,67.26,15,0
    .goto 179,27.20,68.79,15,0
    .goto 179,26.34,68.02,15,0
    .goto 179,26.04,66.63,15,0
    .goto 179,26.45,65.92,15,0
    .goto 179,27.07,65.40,15,0
    .goto 179,27.89,66.66,15,0
    .goto 179,27.93,66.03,15,0
    .cast 68735 >>Pick up a |cRXP_FRIENDLY_Drowning Watchman|r.
	.target Drowning Watchman
    .isOnQuest 14395
--XXZ Zarant function
step
    .goto 179,29.03,65.05
    >>Bring the |cRXP_FRIENDLY_Drowning Watchman|r back to |cRXP_FRIENDLY_Prince Liam Greymane|r.
    .complete 14395,1,1 --Drowning Watchman rescued (4)
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    #loop
    .goto 179,27.20,68.79,0
    .goto 179,27.07,65.40,0
    .goto 179,27.93,66.03,0
    .goto 179,28.53,66.66,15,0
    .goto 179,28.64,67.08,15,0
    .goto 179,28.76,67.34,15,0
    .goto 179,28.00,67.26,15,0
    .goto 179,27.20,68.79,15,0
    .goto 179,26.34,68.02,15,0
    .goto 179,26.04,66.63,15,0
    .goto 179,26.45,65.92,15,0
    .goto 179,27.07,65.40,15,0
    .goto 179,27.89,66.66,15,0
    .goto 179,27.93,66.03,15,0
    .cast 68735 >>Pick up a |cRXP_FRIENDLY_Drowning Watchman|r.
	.target Drowning Watchman
    .isOnQuest 14395
step
    #optional
    .goto 179,29.03,65.05
    >>Bring the |cRXP_FRIENDLY_Drowning Watchman|r back to |cRXP_FRIENDLY_Prince Liam Greymane|r.
    .complete 14395,1,2 --Drowning Watchman rescued (4)
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    #loop
    .goto 179,27.20,68.79,0
    .goto 179,27.07,65.40,0
    .goto 179,27.93,66.03,0
    .goto 179,28.53,66.66,15,0
    .goto 179,28.64,67.08,15,0
    .goto 179,28.76,67.34,15,0
    .goto 179,28.00,67.26,15,0
    .goto 179,27.20,68.79,15,0
    .goto 179,26.34,68.02,15,0
    .goto 179,26.04,66.63,15,0
    .goto 179,26.45,65.92,15,0
    .goto 179,27.07,65.40,15,0
    .goto 179,27.89,66.66,15,0
    .goto 179,27.93,66.03,15,0
    .cast 68735 >>Pick up a |cRXP_FRIENDLY_Drowning Watchman|r.
	.target Drowning Watchman
    .isOnQuest 14395
step
    #optional
    .goto 179,29.03,65.05
    >>Bring the |cRXP_FRIENDLY_Drowning Watchman|r back to |cRXP_FRIENDLY_Prince Liam Greymane|r.
    .complete 14395,1,3 --Drowning Watchman rescued (4)
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    #loop
    .goto 179,27.20,68.79,0
    .goto 179,27.07,65.40,0
    .goto 179,27.93,66.03,0
    .goto 179,28.53,66.66,15,0
    .goto 179,28.64,67.08,15,0
    .goto 179,28.76,67.34,15,0
    .goto 179,28.00,67.26,15,0
    .goto 179,27.20,68.79,15,0
    .goto 179,26.34,68.02,15,0
    .goto 179,26.04,66.63,15,0
    .goto 179,26.45,65.92,15,0
    .goto 179,27.07,65.40,15,0
    .goto 179,27.89,66.66,15,0
    .goto 179,27.93,66.03,15,0
    .cast 68735 >>Pick up a |cRXP_FRIENDLY_Drowning Watchman|r.
	.target Drowning Watchman
    .isOnQuest 14395
step
    #optional
    .goto 179,29.03,65.05
    >>Bring the |cRXP_FRIENDLY_Drowning Watchman|r back to |cRXP_FRIENDLY_Prince Liam Greymane|r.
    .complete 14395,1 --Drowning Watchman rescued (4)
	.target Prince Liam Greymane
step
    .goto 179,29.03,65.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane|r.
    .turnin 14395,1 >>Turn in Gasping for Breath
    .accept 14397 >>Accept Evacuation
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    .goto 179,35.95,63.54,20,0
    .goto 179,37.63,65.23,12 >>Travel toward |cRXP_FRIENDLY_Gwen Armstead|r.
step
    .goto 179,37.63,65.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead|r.
    .turnin 14397 >>Turn in Evacuation
    .accept 14398 >>Accept Grandma Wahl
    .accept 14403 >>Accept The Hayward Brothers
    .accept 14406 >>Accept The Crowley Orchard
	.target Gwen Armstead
step
    .goto 179,37.68,72.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r.
    .turnin 14406 >>Turn in The Crowley Orchard
    .accept 14416 >>Accept The Hungry Ettin
	.target Lorna Crowley
step
    #optional
    #completewith next
    #loop
    .goto 179,39.82,75.32,0
    .goto 179,40.11,79.92,0
    .goto 179,39.90,81.96,0
    .goto 179,38.21,81.88,0
    .goto 179,39.82,75.32,20,0
    .goto 179,40.26,75.67,20,0
    .goto 179,40.24,77.06,20,0
    .goto 179,39.72,77.14,20,0
    .goto 179,40.11,79.92,20,0
    .goto 179,39.90,81.96,20,0
    .goto 179,38.21,81.88,20,0
    .vehicle >>Enter a |cRXP_FRIENDLY_Mountain Horse|r.
    .target Mountain Horse
step
    .goto 179,39.82,75.32,0
    .goto 179,40.11,79.92,0
    .goto 179,39.90,81.96,0
    .goto 179,38.21,81.88,0
    .goto 179,40.26,75.67,20,0
    .goto 179,40.24,77.06,20,0
    .goto 179,37.68,72.76
    >>Whilst on a |cRXP_FRIENDLY_Mountain Horse|r.:
    >>Cast |T134326:0|t[Round Up Horse] (1) on |cRXP_FRIENDLY_Mountain Horses|r to make them follow you.
    >>Guide 5 |cRXP_FRIENDLY_Mountain Horses|r. (including your own) back to |cRXP_FRIENDLY_Lorna Crowley|r.
    >>|cRXP_WARN_Avoid |cRXP_ENEMY_Koroth the Hillbreaker|r.
    .complete 14416,1 --Mountain Horse rescued (5)
	.target Mountain Horse
	.target Lorna
    .unitscan Koroth the Hillbreaker
--XXZ Zarant function
step
    .goto 179,37.68,72.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r.
    .turnin 14416 >>Turn in The Hungry Ettin
	.target Lorna Crowley
step
    #optional
    #completewith next
    .goto 179,33.00,76.02,15,0
    .goto 179,32.57,75.84,6 >>Enter the Wahl Cottage
step
    .goto 179,32.52,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grandma Wahl|r inside.
    .turnin 14398 >>Turn in Grandma Wahl
    .accept 14399 >>Accept Grandma's Lost It Alright
	.target Grandma Wahl
step
    .goto 179,33.96,77.38
    >>Loot the [|cRXP_LOOT_Linen-Wrapped Book|r]. on the ground
    .complete 14399,1 --Linen-Wrapped Book (1)
step
    .goto 179,32.52,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grandma Wahl|r inside
    .turnin 14399 >>Turn in Grandma's Lost It Alright
    .accept 14400 >>Accept I Can't Wear This
	.target Grandma Wahl
step
    #optional
    #completewith next
    .goto 179,32.50,76.06,8,0
    .goto 179,32.27,76.07,10,0
    .goto 179,32.04,75.45,10 >>Travel toward [|cRXP_LOOT_Grandma's Good Clothes|r] outside.
step
    .goto 179,32.04,75.45
    >>Loot [|cRXP_LOOT_Grandma's Good Clothes|r]. outside
    .complete 14400,1 --Grandma's Good Clothes (1)
step
    .goto 179,32.52,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grandma Wahl|r inside.
    .turnin 14400 >>Turn in I Can't Wear This
    .accept 14401 >>Accept Grandma's Cat
	.target Grandma Wahl
step
    #optional
    #completewith next
    .goto 179,35.16,74.82
    .cast 68743 >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_FRIENDLY_Chance the Cat|r on the ground to summon |cRXP_ENEMY_Lucius the Cruel|r.
	.mob Lucius the Cruel
    .isOnQuest 14401
step
    .goto 179,35.24,74.98
    >>Kill |cRXP_ENEMY_Lucius the Cruel|r. Loot him for [|cRXP_LOOT_Chance the Cat|r].
    .complete 14401,1 --Chance the Cat (1)
	.mob Lucius the Cruel
step
    #optional
    #completewith next
    .goto 179,33.00,76.02,15,0
    .goto 179,32.57,75.84,6 >>Enter the Wahl Cottage
step
    .goto 179,32.52,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grandma Wahl|r inside.
    .turnin 14401 >>Turn in Grandma's Cat
	.target Grandma Wahl
step
    .goto 179,36.89,84.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sebastian Hayward|r.
    .turnin 14403 >>Turn in The Hayward Brothers
    .accept 14404 >>Accept Not Quite Shipshape
    .accept 14412 >>Accept Washed Up
	.target Sebastian Hayward
step
	#sticky
    #label Castaways
    #loop
    .goto 179,36.89,84.68,0
    .waypoint 179,37.31,84.32,6,0
    .waypoint 179,36.89,84.68,6,0
    .waypoint 179,36.57,84.53,6,0
    >>Kill |cRXP_ENEMY_Forsaken Castaways|r.
    .complete 14412,1 --Forsaken Castaway slain (6)
	.mob Forsaken Castaway
step
    .goto 179,37.58,85.98
    >>Open the |cRXP_PICK_Barrel of Coal Tar|r on the ground. Loot it for the [|cRXP_LOOT_Coal Tar|r].
    .complete 14404,3 --Coal Tar (1)
step
    #optional
    #completewith next
    .goto 179,37.05,86.81,6 >>Enter the Hayward Fishery house
step
    .goto 179,37.46,87.15
    >>Loot the [|cRXP_LOOT_Shipwright's Tools|r]. on the ground inside
    .complete 14404,1 --Shipwright's Tools (1)
step
    .goto 179,36.09,86.44
    >>Loot the [|cRXP_LOOT_Planks of Wood|r]. on the ground
    .complete 14404,2 --Planks of Wood (1)
step
    #requires Castaways
    .goto 179,36.89,84.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sebastian Hayward|r.
    .turnin 14404 >>Turn in Not Quite Shipshape
    .turnin 14412 >>Turn in Washed Up
    .accept 14405 >>Accept Escape By Sea
	.target Sebastian Hayward
step
    #completewith next
    .hs >> Hearth to Duskhaven
step
    .goto 179,37.63,65.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead|r.
    .turnin 14405 >>Turn in Escape By Sea
    .accept 14465 >>Accept To Greymane Manor
	.timer 32,Greymane Manor RP
	.target Gwen Armstead
step << skip
    #optional
    #label Manor01
    #completewith next
    >>|cRXP_WARN_Wait out the RP|r.
--XX add waypoint to tie to timer
step
    #optional
    #completewith next
    .goto 179,30.27,52.03,15,0
    .goto 179,29.54,51.55,15,0
    .goto 181,70.44,61.92,10 >>Enter Graymane Manor
step
    .goto 181,62.10,49.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Queen Mia Greymane|r inside.
    .turnin 14465 >>Turn in To Greymane Manor
    .accept 14466 >>Accept The King's Observatory
	.target Queen Mia Greymane
step
    #optional
    #label Manor1
    #completewith AlasGilneas
    .goto 181,60.45,38.72,12,0
    .goto 182,61.52,38.13,6 >>Go upstairs toward the balcony
step
    #optional
    #label Manor2
    #requires Manor1
    #completewith AlasGilneas
    .goto 182,50.53,33.85,10,0
    .goto 182,40.44,15.56,10,0
    .goto 182,43.87,15.56,6 >>Ascend toward the top of the Manor's tower
step
    #label AlasGilneas
    .goto 182,46.40,21.17,8,0
    .goto 182,42.76,27.22,8,0
    .goto 182,39.16,20.96,8,0
    .goto 182,43.26,16.63,8,0
    .goto 182,45.33,22.62,8,0
    .goto 182,41.91,20.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane|r atop the Tower.
	>>|cRXP_WARN_Press "Escape" on your keyboard to skip the cinematic|r.
    .turnin 14466 >>Turn in The King's Observatory
    .turnin 14467 >>Turn in Alas, Gilneas!
    .accept 24438 >>Accept Exodus
	.target King Genn Greymane
step
    #optional
    #completewith next
    .goto 181,68.57,64.01,10,0
    .goto 179,65.65,82.88,10,0
    .goto 179,28.90,54.22,15 >>Descend the tower, then exit Graymane Manor. Jump down toward the |cRXP_FRIENDLY_Stagecoach Carriage|r.
step
    .goto 179,28.90,54.22
    >>Enter the |cRXP_FRIENDLY_Stagecoach Carriage|r.
    .complete 24438,1 --Carriage boarded (1)
	.timer 80,Exodus RP
    .target Stagecoach Carriage
step
    .goto 179,51.81,80.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane|r.
    .turnin 24438 >>Turn in Exodus
    .accept 24468 >>Accept Stranded at the Marsh
	.target Prince Liam Greymane
step
    #loop
    .goto 179,53.08,74.25,0
    .goto 179,52.73,72.07,0
    .goto 179,52.23,68.59,0
    .goto 179,53.08,74.25,45,0
    .goto 179,52.04,73.67,45,0
    .goto 179,51.75,72.92,45,0
    .goto 179,51.41,71.57,45,0
    .goto 179,52.73,72.07,45,0
    .goto 179,53.59,71.89,45,0
    .goto 179,53.95,73.95,45,0
    .goto 179,53.56,68.69,45,0
    .goto 179,52.23,68.59,45,0
    .goto 179,50.45,68.07,45,0
    .goto 179,51.46,69.67,45,0
    >>Save |cRXP_FRIENDLY_Crash Survivors|r by killing the |cRXP_ENEMY_Swamp Crocolisks|r that are attacking them.
    .complete 24468,1 --Crash Survivor rescued (5)
	.mob Swamp Crocolisk
    .target Crash Survivor
step
    .goto 179,51.81,80.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane|r.
    .turnin 24468 >>Turn in Stranded at the Marsh
    .accept 24472 >>Accept Introductions Are in Order
	.target Prince Liam Greymane
step
    #optional
    #completewith Koroth
    .goto 179,50.38,84.87,15,0
    .goto 179,48.88,84.64,15,0
    .goto 179,48.14,85.41,15,0
    .goto 179,46.74,83.20,12 >>Travel toward [|cRXP_LOOT_Koroth's Banner|r]. atop the mountain
step
    #sticky
    #label Ogres
    #loop
    .goto 179,46.93,85.06,0
    .goto 179,50.56,85.62,0
    .waypoint 179,46.93,85.06,45,0
    .waypoint 179,45.77,87.30,45,0
    .waypoint 179,45.77,88.95,45,0
    .waypoint 179,45.26,87.21,45,0
    .waypoint 179,48.10,86.57,45,0
    .waypoint 179,49.25,83.82,45,0
    .waypoint 179,50.56,85.62,45,0
    >>Kill |cRXP_ENEMY_Ogre Minions|r.
    .complete 24472,1 --Ogre Minion slain (4)
	.mob Ogre Minion
step
    #label Koroth
    .goto 179,46.74,83.20
    >>Loot [|cRXP_LOOT_Koroth's Banner|r]. on the ground
    .complete 24472,2 --Koroth's Banner (1)
step
    #requires Ogres
    .goto 179,51.81,80.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane|r.
    .turnin 24472 >>Turn in Introductions Are in Order
    .accept 24483 >>Accept Stormglen
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    .goto 179,53.19,84.01,30,0
    .goto 179,55.27,87.50,30,0
    .goto 179,58.49,91.88,30,0
    .goto 179,59.33,92.34,12,0
    .goto 179,59.84,91.92,6 >>Enter |cRXP_FRIENDLY_Gwen Armstead|r.'s house in Stormglen
step
    .goto 179,59.86,91.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead|r inside.
    .turnin 24483 >>Turn in Stormglen
    .accept 24484 >>Accept Pest Control
	.target Gwen Armstead
step
    #sticky
    #label Stormglen
    .goto 179,60.06,91.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Willa Arnes|r inside.
    .home >>Set your Hearthstone to Stormglen Village
    .isQuestAvailable 24495
step
    .goto 179,60.26,91.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r inside.
    .accept 24495 >>Accept Pieces of the Past
	.target Lorna Crowley
step
    #optional
    #requires Stormglen
    #completewith next
    .goto 179,60.44,91.30,8 >>Exit the house
step
    #sticky
    #requires Stormglen
    #label JournalP
    #loop
    .goto 179,62.32,92.85,0
    .goto 179,65.14,90.76,0
    .goto 179,67.36,92.29,0
    .goto 179,62.32,92.85,15,0
    .goto 179,62.98,92.74,15,0
    .goto 179,63.84,91.65,15,0
    .goto 179,64.33,90.99,15,0
    .goto 179,64.82,90.71,15,0
    .goto 179,65.14,90.76,15,0
    .goto 179,65.45,90.92,15,0
    .goto 179,65.78,90.96,15,0
    .goto 179,65.22,92.46,15,0
    .goto 179,65.48,91.64,15,0
    .goto 179,65.91,90.76,15,0
    .goto 179,66.40,90.82,15,0
    .goto 179,67.18,90.80,15,0
    .goto 179,67.41,91.41,15,0
    .goto 179,67.36,92.29,15,0
    >>Loot [|cRXP_LOOT_Old Journal Pages|r]. on the ground
    .complete 24495,1 --Old Journal Page (6)
step
    #requires Stormglen
    #loop
    .goto 179,65.32,92.71,0
    .goto 179,65.53,88.51,0
    .goto 179,65.59,90.93,0
    .goto 179,65.32,92.71,45,0
    .goto 179,66.30,91.16,45,0
    .goto 179,67.59,92.29,45,0
    .goto 179,67.50,88.31,45,0
    .goto 179,65.53,88.51,45,0
    .goto 179,62.70,91.02,45,0
    .goto 179,63.53,89.30,45,0
    .goto 179,63.64,91.38,45,0
    .goto 179,65.12,91.93,45,0
    .goto 179,65.59,90.93,45,0
    >>Kill |cRXP_ENEMY_Vilebrood Skitterers|r.
    .complete 24484,1 --Vilebrood Skitterer slain (6)
	.mob Vilebrood Skitterer
step
    #optional
    #requires JournalP
    #completewith next
    .goto 179,60.37,91.46,8 >>Enter the house
step
    #requires JournalP
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r and |cRXP_FRIENDLY_Gwen Armstead|r inside.
    .turnin 24495 >>Turn in Pieces of the Past
    .goto 179,60.26,91.85
	.target +Lorna Crowley
    .turnin 24484 >>Turn in Pest Control
    .accept 24501 >>Accept Queen-Sized Troubles
    .goto 179,59.86,91.71
	.target +Gwen Armstead
step
    .goto 179,68.35,81.65
    >>Kill |cRXP_ENEMY_Rygna|r.
    .complete 24501,1 --Rygna slain (1)
	.mob Rygna
step
    #optional
    #requires JournalP
    #completewith next
    .goto 179,60.37,91.46,8 >>Enter the house
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead|r and |cRXP_FRIENDLY_Lorna Crowley|r inside.
    .turnin 24501 >>Turn in Queen-Sized Troubles
    .goto 179,59.86,91.71
	.target +Gwen Armstead
    .accept 24578 >>Accept The Blackwald
    .goto 179,60.26,91.85
	.target +Lorna Crowley
step
    .goto 179,63.35,82.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belyrsa Starbreeze|r.
    .turnin 24578 >>Turn in The Blackwald
    .accept 24616 >>Accept Losing Your Tail
	.target Belyrsa Starbreeze
step
    #optional
    #sticky
    #label Trap1
    #completewith Scout
    .goto 179,63.92,81.25
    .aura 70794 >>|cRXP_WARN_Run into the road to get stuck in a|r |T134916:0|t[Freezing Trap] |cRXP_WARN_and summon the |cRXP_ENEMY_Dark Scout|r Use|r |T133443:0|t[Belysra's Talisman] |cRXP_WARN_to dispel the|r |T134916:0|t[Freezing Trap].
    .use 49944
step
    #optional
    #sticky
    #requires Trap1
    #completewith Scout
    .goto 179,63.92,81.25
    .aura -70794 >>|cRXP_WARN_Use|r |T133443:0|t[Belysra's Talisman] |cRXP_WARN_to dispel the|r |T134916:0|t[Freezing Trap].
    .use 49944
--XXZ Currently doesnt work (aura needs to count debuffs)
step
    #label Scout
    .goto 179,64.12,80.52
    >>Kill the |cRXP_ENEMY_Dark Scout|r.
    .complete 24616,1 --Dark Scout slain (1)
	.mob Dark Scout
    .use 49944
step
    .goto 179,63.35,82.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belyrsa Starbreeze|r.
    .turnin 24616 >>Turn in Losing Your Tail
    .accept 24617 >>Accept Tal'doren, the Wild Home
	.target Belyrsa Starbreeze
step
    .goto 179,68.72,73.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley|r.
    .turnin 24617 >>Turn in Tal'doren, the Wild Home
    .accept 24627 >>Accept At Our Doorstep
	.target Lord Darius Crowley
step
    .goto 179,69.30,72.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vassandra Stormclaw|r.
    .accept 24628 >>Accept Preparations
	.target Vassandra Stormclaw
step
    #sticky
    #label Banshees
    #loop
    .goto 179,64.34,75.55,0
    .goto 179,60.44,78.54,0
    .goto 179,64.23,72.55,0
    .goto 179,64.34,75.55,45,0
    .goto 179,61.21,77.57,45,0
    .goto 179,61.38,79.02,45,0
    .goto 179,61.86,79.10,45,0
    .goto 179,60.44,78.54,45,0
    .goto 179,60.19,80.23,45,0
    .goto 179,60.41,76.88,45,0
    .goto 179,59.79,75.62,45,0
    .goto 179,63.38,74.31,45,0
    .goto 179,64.23,72.55,45,0
    >>Kill |cRXP_ENEMY_Howling Banshees|r.
    .complete 24627,1 --Howling Banshee slain (6)
	.mob Howling Banshee
step
    #optional
    .goto 179,60.64,74.63,0
    .goto 179,63.59,73.45,0
    .goto 179,62.70,76.04,0
    .goto 179,59.97,77.38,0
    .goto 179,60.64,74.63,15,0
    .goto 179,60.95,74.43,15,0
    .goto 179,61.19,74.67,15,0
    .goto 179,61.51,72.89,15,0
    .goto 179,63.38,73.45,15,0
    .goto 179,63.59,73.45,15,0
    .goto 179,66.17,71.64,15,0
    .goto 179,67.04,71.91,15,0
    .goto 179,67.18,75.96,15,0
    .goto 179,65.23,76.21,15,0
    .goto 179,62.70,76.04,15,0
    .goto 179,61.99,75.87,15,0
    .goto 179,61.44,78.34,15,0
    .goto 179,62.27,79.09,15,0
    .goto 179,61.23,79.36,15,0
    .goto 179,60.97,79.56,15,0
    .goto 179,60.06,78.49,15,0
    .goto 179,59.77,78.08,15,0
    .goto 179,59.97,77.38,15,0
    >>Loot [|cRXP_LOOT_Moonleaf|r]. on the ground
    *|cRXP_WARN_You can see the location of [|cRXP_LOOT_Moonleaf|r on your minimap if you have|r |T133939:0|t[Find Herbs] |cRXP_WARN_enabled|r].
    .complete 24628,1 --Moonleaf (6)
	.skill herbalism,1,1
step
    .goto 179,60.64,74.63,0
    .goto 179,63.59,73.45,0
    .goto 179,62.70,76.04,0
    .goto 179,59.97,77.38,0
    .goto 179,60.64,74.63,15,0
    .goto 179,60.95,74.43,15,0
    .goto 179,61.19,74.67,15,0
    .goto 179,61.51,72.89,15,0
    .goto 179,63.38,73.45,15,0
    .goto 179,63.59,73.45,15,0
    .goto 179,66.17,71.64,15,0
    .goto 179,67.04,71.91,15,0
    .goto 179,67.18,75.96,15,0
    .goto 179,65.23,76.21,15,0
    .goto 179,62.70,76.04,15,0
    .goto 179,61.99,75.87,15,0
    .goto 179,61.44,78.34,15,0
    .goto 179,62.27,79.09,15,0
    .goto 179,61.23,79.36,15,0
    .goto 179,60.97,79.56,15,0
    .goto 179,60.06,78.49,15,0
    .goto 179,59.77,78.08,15,0
    .goto 179,59.97,77.38,15,0
    >>Loot [|cRXP_LOOT_Moonleaf|r]. on the ground
    .complete 24628,1 --Moonleaf (6)
    .skill herbalism,<1,1
step
    #requires Banshees
    .goto 179,68.72,73.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley|r.
    .turnin 24627 >>Turn in At Our Doorstep
    .accept 24646 >>Accept Take Back What's Ours
	.target Lord Darius Crowley
step
    .goto 179,69.30,72.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vassandra Stormclaw|r.
    .turnin 24628 >>Turn in Preparations
	.target Vassandra Stormclaw
step
    #optional
    #label Taldoren
    #completewith ScytheOfElune
    .goto 179,58.14,75.79
    .cast 71061 >>|cRXP_WARN_Use the|r |T134229:0|t[Horn of Tal'doren] |cRXP_WARN_to distract the|r |cRXP_ENEMY_Veteran Dark Rangers|r.
    .use 50134
    .unitscan Veteran Dark Ranger
step
    #optional
    #requires Taldoren
    #completewith ScytheOfElune
    .goto 179,57.85,75.95,8 >> Enter the house
step
    #label ScytheOfElune
    .goto 179,57.51,75.59
	>>Open the |cRXP_PICK_Worn Coffer|r inside. Loot it for the [|cRXP_LOOT_Mysterious Artifact|r].
    .complete 24646,1 --Mysterious Artifact (1)
    .use 50134
step
    .goto 179,68.72,73.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley|r.
    .turnin 24646 >>Turn in Take Back What's Ours
    .accept 24593 >>Accept Neither Human Nor Beast
	.target Lord Darius Crowley
step
    >>Drink from the |cRXP_PICK_Well of Fury|r, |cRXP_PICK_Well of Tranquility|r, and |cRXP_PICK_Well of Balance|r.
    .complete 24593,1 --Well of Fury (1)
    .goto 179,68.98,72.80,-1
    .complete 24593,2 --Well of Tranquility (1)
    .goto 179,69.26,73.10,-1
    .complete 24593,3 --Well of Balance (1)
    .goto 179,69.14,73.52,-1
step
    .goto 179,68.72,73.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley|r.
    .turnin 24593 >>Turn in Neither Human Nor Beast
    .accept 24673 >>Accept Return to Stormglen
	.target Lord Darius Crowley
step
    #completewith next
    .hs >> Hearth to Stormglen
step
    .goto 179,59.86,91.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead|r inside.
    .turnin 24673 >>Turn in Return to Stormglen
    .accept 24672 >>Accept Onwards and Upwards
	.target Gwen Armstead
step
    #optional
    #completewith next
    .goto 179,60.44,91.30,8,0
    .goto 179,68.80,85.65,45,0
    .goto 179,72.02,82.07,30,0
    .goto 179,72.73,80.05,12 >>Travel toward |cRXP_FRIENDLY_Krennas Aranas|r.
step
    .goto 179,72.73,80.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krennas Aranas|r.
    .turnin 24672 >>Turn in Onwards and Upwards
    .accept 24592 >>Accept Betrayal at Tempest's Reach
	.target Krennas Aranas
step
    #optional
    #label Walden1
    #completewith Walden
    .goto 179,74.82,76.94,30,0
    .goto 179,76.67,72.75
    .subzone 4788 >>Travel toward Tempest's Reach
step
    #optional
    #sticky
    #label KrennanStealth
    #requires Walden1
    #completewith TempestBetrayal
    .cast 70456 >>|cRXP_WARN_Use|r |T135446:0|t[Krennan's Potion of Stealth] |cRXP_WARN_to become|r |T132320:0|t[Stealthed].
    >>|cRXP_WARN_Whilst|r |T132320:0|t[Stealthed]|cRXP_WARN_you can cast most spells. |T132320:0|t[Stealth] |cRXP_WARN_breaks upon entering combat|r.
    >>|cRXP_WARN_NOTE: |cRXP_ENEMY_Mountain Mastiffs|r have increased|r |T132320:0|t[Stealth] |cRXP_WARN_detection|r.
    .use 50218
step
    #optional
    #sticky
    #requires KrennanStealth
    #completewith TempestBetrayal
    +|cRXP_WARN_If your|r |T132320:0|t[Stealth] |cRXP_WARN_breaks, use|r |T135446:0|t[Krennan's Potion of Stealth] |cRXP_WARN_to become|r |T132320:0|t[Stealthed] |cRXP_WARN_again (works in combat)|r.
    >>|cRXP_WARN_Whilst|r |T132320:0|t[Stealthed]|cRXP_WARN_you can cast most spells.|T132320:0|t[Stealth] |cRXP_WARN_breaks upon entering combat|r.
    >>|cRXP_WARN_NOTE: |cRXP_ENEMY_Mountain Mastiffs|r have increased|r |T132320:0|t[Stealth] |cRXP_WARN_detection|r.
    .use 50218
step
    #optional
    #requires Walden1
    #completewith Walden
    .goto 179,74.82,76.94,30,0
    .goto 179,76.67,72.75,15,0
    .goto 179,76.84,72.10,12,0
    .goto 179,76.88,71.32,12,0
    .goto 179,78.25,70.46,15,0
    .goto 179,79.25,67.92,15,0
    .goto 179,79.29,64.84,35 >>Carefully travel in between the buildings and hills toward |cRXP_ENEMY_Lord Walden|r.
step
    #label Walden
    .goto 179,79.29,64.84,30,0
    .goto 179,78.25,65.86,6,0
    .goto 179,78.03,66.47,4,0
    .goto 179,77.83,66.14,4,0
    .goto 179,78.20,65.97,4,0
    .goto 179,78.11,66.23
    >>Kill |cRXP_ENEMY_Lord Walden|r.
    >>|cRXP_WARN_He patrols between the outside of the house and the upstairs inside the house|r.
    >>|cRXP_WARN_Be careful as he casts|r |T132797:0|t[Seasoned Brandy] |cRXP_WARN_(Ranged instant: Stuns for 4 seconds and deals damage)|r.
    .complete 24592,2 --Lord Walden slain (1)
	.mob Lord Walden
step
    #optional
    #completewith next
    .goto 179,82.67,69.63,30,0
    .goto 179,84.22,72.50,30,0
    .goto 179,85.47,73.25,15,0
    .goto 179,79.29,64.84,35 >>Travel toward |cRXP_ENEMY_Baron Ashbury|r.
step
    #label Ashbury
    .goto 179,85.44,74.22,15,0
    .goto 179,84.93,74.37,15,0
    .goto 179,84.21,74.80
    >>Kill |cRXP_ENEMY_Baron Ashbury|r.
    >>|cRXP_WARN_He patrols between the doors of his house|r.
    .complete 24592,1 --Baron Ashbury slain (1)
	.mob Baron Ashbury
step
    #label TempestBetrayal
    .goto 179,78.28,72.07
    .use 50218 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane|r.
    .turnin 24592 >>Turn in Betrayal at Tempest's Reach
    .accept 24677 >>Accept Flank the Forsaken
	.target King Genn Greymane
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r, |cRXP_FRIENDLY_Magda Whitewall|r, and |cRXP_FRIENDLY_Marcus|r.
    .turnin 24677 >>Turn in Flank the Forsaken
    .accept 24575 >>Accept Liberation Day
    .goto 179,70.88,39.84
	.target +Lorna Crowley
    .accept 24675 >>Accept Last Meal
    .goto 179,70.65,39.70
	.target +Magda Whitewall
    .accept 24674 >>Accept Slaves to No One
    .goto 179,70.29,40.05,8,0
    .goto 179,70.63,40.12,8,0
    .goto 179,71.25,39.78
	.target +Marcus
step
    #loop
    .goto 179,75.70,39.60,0
    .goto 179,76.24,45.37,0
    .goto 179,77.83,35.81,0
    .goto 179,75.70,39.60,45,0
    .goto 179,76.12,42.77,45,0
    .goto 179,76.24,45.37,45,0
    .goto 179,77.22,46.97,45,0
    .goto 179,78.11,43.54,45,0
    .goto 179,78.05,38.73,45,0
    .goto 179,77.83,35.81,45,0
    >>Kill |cRXP_ENEMY_Brown Stags|r. Loot them for [|cRXP_LOOT_Sides of Stag Meat|r].
    .complete 24675,1 --Side of Stag Meat (10)
	.mob Brown Stag
step
    #sticky
    #label Enslaved
    #loop
    .goto 180,64.14,74.25,0
    .goto 180,47.14,34.18,0
    .goto 179,75.71,31.17,0
    .waypoint 180,64.14,74.25,15,0
    .waypoint 180,64.24,67.89,15,0
    .waypoint 180,55.31,36.68,15,0
    .waypoint 180,50.40,27.86,15,0
    .waypoint 180,47.14,34.18,15,0
    .waypoint 180,41.60,26.07,15,0
    .waypoint 180,35.36,40.89,15,0
    .waypoint 180,27.38,59.96,15,0
    .waypoint 180,27.12,66.71,15,0
    .waypoint 179,75.71,31.17,15,0
    >>Kill |cRXP_ENEMY_Forsaken Slavedrivers|r. Loot them for |T134247:0|t[|cRXP_LOOT_Slaver's Keys|r].
    >>Use the |T134247:0|t[|cRXP_LOOT_Slaver's Keys|r on the |cRXP_PICK_Ball and Chain|r of the |cRXP_FRIENDLY_Enslaved Villagers|r]. inside and around Emberstone Mine to free them
    .collect 49881,5,24575,1,-1 --Slaver's Key (5)
    .complete 24575,1 --Enslaved Gilnean freed (5)
	.mob Forsaken Slavedriver
	.target Enslaved Villagers
--XX may need key drop
step
    #optional
    #label Emberstone1
    #completewith Brothogg
    .goto 179,76.71,30.84,10 >>Enter Emberstone Mine
    .isOnQuest 24674
step
    #optional
    #requires Emberstone1
    #completewith Brothogg
    .goto 180,29.52,60.93,15,0
    .goto 180,34.05,48.96,15,0
    .goto 180,34.48,33.25,15,0
    .goto 180,56.95,38.04,15,0
    .goto 180,58.17,42.57,15,0
    .goto 180,54.26,81.11,10 >>Travel toward |cRXP_ENEMY_Brothogg the Slavemaster|r inside.
    .isOnQuest 24674
step
    #label Brothogg
    .goto 180,54.26,81.11
    >>Kill |cRXP_ENEMY_Brothogg the Slavemaster|r inside.
    .complete 24674,1 --Brothogg the Slavemaster slain (1)
	.mob Brothogg the Slavemaster
step
    #optional
    #requires Enslaved
    #completewith next
    .goto 179,76.71,30.84,10 >>Exit Emberstone Mine
    .subzoneskip 4732,1
step << skip
    #requires Enslaved
	#completewith next
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r.
    .subzoneskip 4732,1
--XX skipping because theres 0 repair vendors in Gilneas past duskhaven?
step
    #requires Enslaved
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magda Whitewall|r, |cRXP_FRIENDLY_Marcus|r, and |cRXP_FRIENDLY_Lorna Crowley|r.
    .turnin 24675 >>Turn in Last Meal
    .goto 179,70.65,39.70
	.target +Magda Whitewall
    .turnin 24674 >>Turn in Slaves to No One
    .goto 179,70.29,40.05,8,0
    .goto 179,70.63,40.12,8,0
    .goto 179,71.25,39.78
	.target +Marcus
    .turnin 24575 >>Turn in Liberation Day
    .accept 24676 >>Accept Push Them Out
    .goto 179,70.88,39.84
	.target +Lorna Crowley
step
    #sticky
    #label Infantry
    #loop
	.goto 179,74.71,27.21,0
	.goto 179,73.51,30.96,0
	.goto 179,71.72,31.08,0
	.waypoint 179,74.71,27.21,45,0
	.waypoint 179,74.95,27.98,45,0
    .waypoint 179,73.54,29.99,45,0
	.waypoint 179,73.51,30.96,45,0
    .waypoint 179,72.88,29.98,45,0
	.waypoint 179,72.30,30.37,45,0
    .waypoint 179,71.90,29.52,45,0
	.waypoint 179,71.72,31.08,45,0
    >>Kill |cRXP_ENEMY_Forsaken Infantry|r.
	.complete 24676,1 --Forsaken Infantry slain (4)
	.mob Forsaken Infantry
step
    #sticky
    #label Cornell
	.goto 179,72.86,28.42
    >>Kill |cRXP_ENEMY_Executor Cornell|r.
    .complete 24676,2 --Executor Cornell (1)
	.mob Executor Cornell
step
	.goto 179,74.15,27.40
    >>Kill |cRXP_ENEMY_Valov the Mad|r.
    .complete 24676,3 --Valnov the Mad slain (1)
	.mob Valnov the Mad
step
    #optional
    #requires Cornell
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires Infantry
    .goto 179,70.88,39.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r.
    .turnin 24676 >>Turn in Push Them Out
    .accept 24904 >>Accept The Battle for Gilneas City
	.target Lorna Crowley
step
    #optional
    #label GoreTravel1
    #completewith Gorerot
    .goto 179,67.43,44.08,30,0
    .goto 202,70.99,40.78,30,0
    .goto 202,70.53,49.79,30,0
    .goto 202,69.29,63.84,30,0
    .goto 202,67.38,65.22,30,0
    >>|cRXP_WARN_Ignore |cRXP_FRIENDLY_Price Liam Greymane|r.'s RP
    >>If you accidentally aggro any mobs or need to clear a path, enter a nearby |cRXP_FRIENDLY_Emberstone Cannon|r.
    >>Whilst in an |cRXP_FRIENDLY_Emberstone Cannon|r.:
    >>Cast |T252185:0|t[Emberstone Cannon] (1) (Ranged instant: Deals a LOT of damage)
    >>|cRXP_WARN_Use the|r |T135340:0|t[Rapier of the Gilnean Patriots] |cRXP_WARN_on your |cRXP_FRIENDLY_Gilnean Militia|r guardians to increase their haste and health regeneration|r.
    .goto 202,61.86,70.83,30 >>Travel toward |cRXP_ENEMY_Gorerot|r.
    .target Emberstone Cannon
    .use 50334
step
    #optional
    #requires GoreTravel1
    #completewith Gorerot
    #loop
    .goto 202,59.74,63.47,15,0
    .goto 202,55.39,68.35,15,0
    .goto 202,60.09,77.28,15,0
    .goto 202,63.20,80.72,15,0
-- .goto 202,68.34,82.00,15,0
    +Enter nearby |cRXP_FRIENDLY_Damaged Catapults|r.
    >>Whilst in a |cRXP_FRIENDLY_Damaged Catapult|r.:
    >>Cast|r |T132386:0|t[Fiery Boulder] (1) (Ranged instant: Applies the|r |T132386:0|t[Fiery Boulder] debuff, dealing fire damage over 30 seconds, doesn't stack). Refresh the debuff every 30 seconds to deal a LOT of damage
    .target Damaged Catapult
    .use 50334
step
    #label Gorerot
    .goto 202,57.73,66.59
    >>Kill |cRXP_ENEMY_Gorerot|r.
    >>|cRXP_WARN_Don't worry about being attacked by him as you have the|r |T236310:0|t[Soldier of the Battle for Gilneas City] |cRXP_WARN_buff (Passive Aura: Greatly increases haste, health regeneration, and resource regeneration)|r.
    >>|cRXP_WARN_Use the|r |T135340:0|t[Rapier of the Gilnean Patriots] |cRXP_WARN_on your |cRXP_FRIENDLY_Gilnean Militia|r guardians to increase their haste and health regeneration|r.
    .complete 24904,1 --Gorerot slain (1)
	.mob Gorerot
step
    #optional
    #completewith next
    .goto 202,57.73,77.33,30,0
    .goto 202,48.15,75.63,20,0
    .goto 202,48.26,72.93,20,0
    .goto 202,50.12,70.54,20,0
    .goto 202,41.51,62.98,20,0
    .goto 202,36.17,62.68,50 >>Travel toward |cRXP_ENEMY_Lady Sylvanas Windrunner|r.
step
    .goto 202,36.17,62.68
    >>Kill the |cRXP_ENEMY_Soultethered Banshees|r.
    >>Defeat |cRXP_ENEMY_Lady Sylvanas Windrunner|r by getting her to <30% health.
    .complete 24904,2 --Battle for Gilneas City Complete (1)
    .timer 15,The Battle for Gilneas City RP
    .mob Soultethered Banshees
    .mob Lady Sylvanas Windrunner
step
    #optional
    #completewith next
    >>|cRXP_WARN_Wait out the RP|r.
    .goto 202,36.89,59.09,8 >>Enter the house
step
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Talk to |cRXP_FRIENDLY_Lorna Crowley|r inside.
    .turnin 24904 >>Turn in The Battle for Gilneas City
    .accept 24902 >>Accept The Hunt For Sylvanas
    .timer 193.5,The Hunt For Sylvanas RP
	.target Lorna Crowley
step
    .goto 202,36.17,62.68,0
    .goto 202,36.49,59.34,8,0
    .goto 202,36.44,47.99,12,0
    .goto 202,35.22,41.12,12,0
    .goto 202,40.17,31.05,12,0
    .goto 202,40.82,40.67,10,0
    .goto 202,43.46,44.64,10,0
    .goto 202,45.06,50.85
    >>|cRXP_WARN_Follow |cRXP_FRIENDLY_Tobias Mistmantle|r closely or he will not move and may despawn|r.
    >>|cRXP_WARN_Follow him until he hides in the water inside the Cathedral, then Wait out the RP|r.
    >>|cRXP_WARN_If |cRXP_FRIENDLY_Tobias Mistmantle|r despawns, skip this step|r.
    .complete 24902,1 --Hunt for Sylvanas (1)
	.target Tobias Mistmantle
	.target Lorna Crowley
    .isOnQuest 24092
step
    #optional
    #completewith next
    .goto 202,43.04,44.05,10,0
    .goto 202,40.40,40.31,10,0
    .goto 202,37.25,44.17,12,0
    .goto 202,38.92,59.78,6,0
    .goto 202,38.62,60.25,8 >>Return to |cRXP_FRIENDLY_Lorna Crowley|r.
    .isQuestComplete 24902
step
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Talk to |cRXP_FRIENDLY_Lorna Crowley|r inside.
    .turnin 24902 >>Turn in The Hunt For Sylvanas
    .accept 24903 >>Accept Vengeance or Survival
	.target Lorna Crowley
    .isQuestComplete 24902
step
    #optional
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Talk to |cRXP_FRIENDLY_Lorna Crowley|r inside.
    .accept 24903 >>Accept Vengeance or Survival
	.target Lorna Crowley
    .isQuestTurnedIn 24902
step
    #optional
    #completewith next
    .abandon 24902 >>Abandon The Hunt For Sylvanas
step
    #optional
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Talk to |cRXP_FRIENDLY_Lorna Crowley|r inside.
    .accept 24902 >>Accept The Hunt For Sylvanas
    .timer 193.5,The Hunt For Sylvanas RP
	.target Lorna Crowley
step
    #optional
    .goto 202,36.17,62.68,0
    .goto 202,36.49,59.34,8,0
    .goto 202,36.44,47.99,12,0
    .goto 202,35.22,41.12,12,0
    .goto 202,40.17,31.05,12,0
    .goto 202,40.82,40.67,10,0
    .goto 202,43.46,44.64,10,0
    .goto 202,45.06,50.85
    >>|cRXP_WARN_Follow |cRXP_FRIENDLY_Tobias Mistmantle|r closely or he will not move and may despawn|r.
    >>|cRXP_WARN_Follow him until he hides in the water inside the Cathedral, then Wait out the RP|r.
    .complete 24902,1 --Hunt for Sylvanas (1)
	.target Tobias Mistmantle
	.target Lorna Crowley
    .isOnQuest 24092
step
    #optional
    #completewith next
    .goto 202,43.04,44.05,10,0
    .goto 202,40.40,40.31,10,0
    .goto 202,37.25,44.17,12,0
    .goto 202,38.92,59.78,6,0
    .goto 202,38.62,60.25,8 >>Return to |cRXP_FRIENDLY_Lorna Crowley|r.
step
    #optional
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r inside.
    .turnin 24902 >>Turn in The Hunt For Sylvanas
    .accept 24903 >>Accept Vengeance or Survival
	.target Lorna Crowley
step
    #optional
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r inside.
    .accept 24903 >>Accept Vengeance or Survival
	.target Lorna Crowley
step
    #optional
    #requires GennHouse1
    #completewith Vengeance
    .goto 202,32.10,58.01,8 >>Enter |cRXP_FRIENDLY_King Genn Greymane|r.'s house
step
    #label Vengeance
    .goto 202,32.36,57.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane|r.
    .turnin 24903 >>Turn in Vengeance or Survival
    .accept 24920 >>Accept Slowing the Inevitable
	.target King Genn Greymane
step
    #optional
    #label RidingBat
    #completewith Survival
    .goto 202,30.24,60.96
    .vehicle >>Enter the |cRXP_FRIENDLY_Captured Riding Bat|r.
    .timer 21,Slowing the Inevitable RP
    .target Captured Riding Bat
step
    #optional
    #requires RidingBat
    #completewith Survival
    .goto 179,57.11,39.50,5 >>|cRXP_WARN_Wait out the RP|r.
step
    #label Survival
    .goto 179,54.83,35.83,-1
    .goto 179,56.43,28.49,-1
    .goto 179,56.77,20.70,-1
    .goto 179,57.12,15.66,-1
    .goto 179,61.45,19.86,-1
    .goto 179,64.89,27.43,-1
    .goto 179,61.30,35.14,-1
    >>Whilst on the |cRXP_FRIENDLY_Captured Riding Bat|r.:
    >>Kill |cRXP_ENEMY_Forsaken Plaguesmiths|r, |cRXP_ENEMY_Forsaken Invaders|r, and |cRXP_ENEMY_Forsaken Catapults|r.
    >>Cast |T133709:0|t[Iron Bomb] (1) (Ranged Instant: Deals damage)
    .complete 24920,2 --Invading Forsaken (40)
    .complete 24920,1 --Forsaken Catapult slain (6)
    .mob Forsaken Catapult
    .mob Invading Forsaken
step
    #optional
    #completewith next
    >>Whilst on the |cRXP_FRIENDLY_Captured Riding Bat|r.:
    .goto 202,30.43,60.88,5 >>Cast |T132182:0|t[Fly Back] (2) to return to |cRXP_FRIENDLY_King Genn Greymane|r.
step
    .goto 202,32.36,57.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane|r.
    .turnin 24920 >>Turn in Slowing the Inevitable
    .accept 24678 >>Accept Knee-Deep
	.target King Genn Greymane
step
    #optional
    #completewith next
    .goto 202,33.75,57.09,6 >>Go downstairs into the crypt
step
    #optional
    #completewith Knee
    .goto 179,53.56,55.10,20,0
    .goto 179,49.87,57.26,10,0
    >>|cRXP_WARN_Use the|r |T135432:0|t[Half-Burnt Torch] |cRXP_WARN_to scare away |cRXP_ENEMY_Putrescent Maggots|r, |cRXP_ENEMY_Underground Spiders|r, and|r |cRXP_ENEMY_Graveyard Rats|r.
    .goto 179,49.78,57.88,6 >>Travel toward the end of the crypt
    .mob Putrescent Maggot
    .mob Underground Spider
    .mob Graveyard Rat
    .use 50220
step
    #label Knee
    .goto 179,49.71,57.28,8,0
    .goto 179,49.84,56.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krennan Aranas|r outside.
    .turnin 24678 >>Turn in Knee-Deep
    .accept 24602 >>Accept Laid to Rest
    .target Krennan Aranas
step
    #loop
    .goto 179,48.60,54.28,0
    .goto 179,46.85,54.23,0
    .goto 179,46.71,56.03,0
    .goto 179,49.33,49.77,0
    .goto 179,51.18,54.22,0
    .goto 179,48.60,54.28,15,0
    .goto 179,48.08,54.11,15,0
    .goto 179,47.59,53.54,15,0
    .goto 179,46.85,54.23,15,0
    .goto 179,48.04,56.35,15,0
    .goto 179,46.71,56.03,15,0
    .goto 179,45.76,54.87,15,0
    .goto 179,45.80,53.49,15,0
    .goto 179,46.79,53.32,15,0
    .goto 179,48.82,50.70,15,0
    .goto 179,49.33,49.77,15,0
    .goto 179,51.01,53.23,15,0
    .goto 179,51.18,54.22,15,0
    >>Open the |cRXP_PICK_Disturbed Soil|r on the ground. Loot it for its [|cRXP_LOOT_Unearthed Mementos|r].
    .complete 24602,1 --Unearthed Memento (5)
step
    .goto 179,49.84,56.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krennan Aranas|r.
    .turnin 24602 >>Turn in Laid to Rest
    .accept 24679 >>Accept Patriarch's Blessing
    .target Krennan Aranas
step
    .goto 179,48.89,53.14
    >>Place the |T134344:0|t[Blessed Offerings] at the Shrine
	>>|cRXP_WARN_Press "Escape" on your keyboard to skip the cinematic|r.
    .complete 24679,1 --Offering placed (1)
    .use 51956
step
    .goto 179,49.84,56.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krennan Aranas|r.
    .turnin 24679 >>Turn in Patriarch's Blessing
    .accept 24680 >>Accept Keel Harbor
	.target Krennan Aranas
step
    .goto 179,41.93,37.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley|r.
    .turnin 24680 >>Turn in Keel Harbor
    .accept 24681 >>Accept They Have Allies, But So Do We
	.target Lord Darius Crowley
step
    #optional
    #label Glaive
	#completewith Allies
    .goto 179,42.47,37.84
    .vehicle >>Enter the |cRXP_FRIENDLY_Glaive Thrower|r.
    .target Glaive Thrower
step
    #optional
    #requires Glaive
    #completewith Allies
    .goto 179,40.32,38.58,20,0
    .goto 179,35.59,35.80
    >>Whilst in the |cRXP_FRIENDLY_Glaive Thrower|r.:
    .subzone 4725 >>Travel toward The Headlands
step
    #label Allies
    #loop
    .goto 179,35.03,36.16,0
    .goto 179,31.05,20.09,0
    .goto 179,28.07,23.84,0
    .goto 179,26.35,29.74,0
    .goto 179,30.78,38.88,0
    .goto 179,35.03,36.16,60,0
    .goto 179,31.05,20.09,60,0
    .goto 179,29.52,21.20,60,0
    .goto 179,28.07,23.84,60,0
    .goto 179,27.64,25.32,60,0
    .goto 179,26.83,26.13,60,0
    .goto 179,27.64,27.00,60,0
    .goto 179,26.35,29.74,60,0
    .goto 179,26.56,31.40,60,0
    .goto 179,30.78,38.88,60,0
    >>Whilst in the |cRXP_FRIENDLY_Glaive Thrower|r.:
    >>Kill |cRXP_ENEMY_Orc Raiders|r, |cRXP_ENEMY_Wolfmaw Outriders|r, and |cRXP_ENEMY_Orcish War Machines|r.
    >>Cast |T132330:0|t[Launch Glaive] (1) (Ranged Instant: Deals damage and knocks back)
    >>|T236303:0|t[Glaive Barrage] (2) (Ranged Instant: Deals A LOT of damage and knocks back)
    >>|T136106:0|t[Double Speed] (3) (Self Instant: Increases movespeed by 100% for 10 seconds)
    >>|cRXP_WARN_Do NOT let the |cRXP_FRIENDLY_Glaive Thrower|r die|r.
    .complete 24681,1 --Orc Raider slain (40)
    .complete 24681,2 --Wolfmaw Outrider slain (8)
    .complete 24681,3 --Orcish War Machine slain (4)
step
    #optional
    #completewith next
    .goto 179,41.93,37.60
    >>Whilst in the |cRXP_FRIENDLY_Glaive Thrower|r.:
    >>Cast |T136106:0|t[Double Speed] (3) (Self Instant: Increases movespeed by 100% for 10 seconds)
    .subzone 4726 >>Return to Keel Harbor
step
    .goto 179,41.93,37.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley|r.
    .turnin 24681 >>Turn in They Have Allies, But So Do We
	.target Lord Darius Crowley
step
    .goto 179,41.65,36.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r.
    .accept 26706 >>Accept Endgame
	.target Lorna Crowley
step
	#completewith next
    .goto 179,41.65,36.14
    >>|cRXP_WARN_NOTE: This Quest is on an independant timer, meaning you will have to wait up to 5 minutes to be able to enter the|r |cRXP_FRIENDLY_Hippogryph|r.
    .vehicle >>Enter the |cRXP_FRIENDLY_Hippogryph|r.
	.timer 58,Endgame RP
step
    >>Kill |cRXP_ENEMY_Gunship Grunts|r on the top deck.
    >>After clearing the top deck, |TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Rope|r in the middle of the boat to follow |cRXP_FRIENDLY_Lorna Crowley|r.
    >>Kill |cRXP_ENEMY_Gunship Grunts|r whilst following |cRXP_FRIENDLY_Lorna Crowley|r.
    >>|cRXP_WARN_After |cRXP_FRIENDLY_Lorna Crowley|r sets the explosives, wait out the RP|r.
    .complete 26706,1 --Gunship destroyed (1)
	.timer 43,Endgame RP
    .mob Gunship Grunt
    .target Lorna Crowley
--XX Gunship moves, can't use waypoints and timer may be off
step
    .goto 179,41.65,36.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r.
    .turnin 26706 >>Turn in Endgame
	.target Lorna Crowley
step
    .goto 179,42.59,35.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Nightwind|r.
    .accept 14434 >>Accept Rut'theran Village
    .turnin 14434 >>Turn in Rut'theran Village
	.target Admiral Nightwind
step
    #completewith next
    .goto 57,52.28,89.47
    .zone 12 >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Portal to Exodar|r.
    .zoneskip 37
    .zoneskip 84
    .zoneskip 103
    .nodmf
step
    #completewith next
    .goto 103,41.752,72.550
    .zone 103 >> Enter The Exodar
    .zoneskip 37
    .zoneskip 84
    .nodmf
step
    .goto 103,42.133,66.528,30,0
    .goto 103,40.432,62.485,30,0
    .goto 103,37.317,60.966,30,0
    .goto 103,34.295,62.822,30,0
    .goto 103,48.335,62.929
    >>Descend the spiral staircase
    .zone 84 >> |TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Portal to Stormwind|r.
    .zoneskip 37
    .nodmf
step
    #optional
    #completewith DarkmoonFaire
    .goto 57,55.045,88.301
    .zone 89 >>Go through the portal to Darnassus
    .dmf
step
    #veteran
    .goto 89,56.58,60.73,10,0
    .goto 89,54.82,59.18
    +The Darkmoon Faire event is now active, |cRXP_WARN_which guarantees you to gain an additional level for free and a temporary 10% experience boost|r. You'll need to purchase |cRXP_WARN_certain items from the auction house to take full advantage of this|r. If necessary,|cRXP_WARN_you can transfer gold from your other characters to make these purchases|r. However, if you find that you can't afford everything, |cRXP_WARN_It's still worthwhile to visit the Darkmoon Faire for the temporary experience buff and to buy only some of the items|r.
    >>|cRXP_WARN_It is recommended to log in with a different character possessing at least 10,000 gold. Use this character to purchase the items and then send them over|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Auctioneer|r.
    .collect 71715,1
    .collect 71638,1
    .collect 71637,1
    .collect 71636,1
    .collect 71635,1
    .collect 71952,1
    .collect 71951,1
    .collect 71953,1
    .collect 71716,1
    .target Auctioneer Tolon
    .target Auctioneer Golothas
    .target Auctioneer Cazarez
    .target Auctioneer Golothas
    .dmf
step
    #fresh
    #completewith DarkmoonFaire
    +The Darkmoon Faire event is now active, |cRXP_WARN_which guarantees you to gain an additional level for free and a temporary 10% experience boost|r.
    .dmf
step
    #label DarkmoonFaire
    .goto 89,38.58,49.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage|r.
    .accept 7905 >>Accept The Darkmoon Faire
	.target Darkmoon Faire Mystic
    .dmf
step
    .goto 89,38.58,49.38
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage|r.
    .skipgossip
    .zoneskip 37
    .dmf
    .target Darkmoon Faire Mystic Mage
]])

--DarkIronDwarf Shadowforge City
RXPGuides.RegisterGuide([[
#retail
#version 2
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(1-80)|r Default
#name a) DarkIronDwarf Intro
#displayname |cFF00CCFF1|r - Shadowforge City
#next ba) Elwynn Forest

<< DarkIronDwarf !DK

step
    .cast 205456 >>Use the |T134309:0|t[Lost Dragonscale]
    .use 205456
-- step
--     .goto 1186,56.43,31.86
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moira Thaurissan|r.
--     .accept 51486 >>Accept Fer the Alliance
--     .target Moira Thaurissan
-- step
--     #completewith next
--     .goto 1186,59.27,26.52
--     .cast 281587 >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Mole Machine|r.
-- step
--     .goto 84,53.059,15.259
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Moorgard|r.
--     .turnin 51486 >>Turn in Fer the Alliance
--     .accept 53500 >>Accept Stranger in a Strange Land 
--     .target Ambassador Moorgard
-- step
--     .goto 84,56.257,17.311
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r.
--     *|cRXP_WARN_Select "The Cataclysm"|r.
--     .complete 53500,1 --Talk to Chromie (1)
--     .accept 60891 >>Accept Cataclysm: Onward to Adventure in the Eastern Kingdoms
--     .skipgossipid 51901
--     .target Chromie
-- step
--     .goto 84,56.199,17.671
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudrik Leger|r.
--     .turnin 53500 >>Turn in Stranger in a Strange Land
--     .target Mudrik Leger << DarkIronDwarf
-- step
--     .goto 84,62.16,30.14
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hero's Herald|r in front of the |cRXP_PICK_Hero's Call Board|r.
--     .accept 46727 >>Accept Tides of War
--     .isQuestTurnedIn 51486
--     .target Hero's Herald
]])

--KulTiran Boralus
RXPGuides.RegisterGuide([[
#retail
#version 2
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(1-80)|r Default
#name a) KulTiran Intro
#displayname |cFF00CCFF1|r - Boralus
#next ba) Elwynn Forest

<< KulTiran !DK

step
    .cast 205456 >>Use the |T134309:0|t[Lost Dragonscale]
    .use 205456
-- step
--     .goto 1161,67.71,21.77
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katherine Proudmoore|r.
--     .accept 55142 >>Accept For the Alliance
--     .target Katherine Proudmoore
-- step
--     .goto 1161,67.15,22.9,10,0
--     .goto 1161,67.44,21.4,10,0
--     .goto 1161,68.87,21.12,10,0
--     .goto 1161,70.47,17.11,10,0
--     .goto 1161,70.1,16.8
--     >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Stormwind Portal|r.
--     .complete 55142,1 --1/1 Portal to Stormwind Taken
-- step
--     .goto 84,53.059,15.259
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Moorgard|r.
--     .turnin 55142 >>Turn in For the Alliance
--     .accept 55146 >>Accept Stranger in a Strange Land
--     .target Ambassador Moorgard
-- step
--     .goto 84,56.257,17.311
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r.
--     *|cRXP_WARN_Select "The Cataclysm"|r.
--     .complete 55146,1 << KulTiran --Talk to Chromie (1)
--     .accept 60891 >>Accept Cataclysm: Onward to Adventure in the Eastern Kingdoms
--     .skipgossipid 51901
--     .target Chromie
-- step
--     .goto 84,56.199,17.671
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Provisioner Fray|r.
--     .turnin 55146 >>Turn in Stranger in a Strange Land << KulTiran
--     .target Provisioner Fray
-- step
--     .goto 84,62.16,30.14
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hero's Herald|r.
--     .accept 46727 >>Accept Tides of War
--     .isQuestTurnedIn 55142
--     .target Hero's Herald
]])

--LightforgedDraenei The Vindicaar
RXPGuides.RegisterGuide([[
#retail
#version 2
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(1-80)|r Default
#name a) LightforgedDraenei Intro
#displayname |cFF00CCFF1|r - The Vindicaar
#next ba) Elwynn Forest

<< LightforgedDraenei !DK

step
    .cast 205456 >>Use the |T134309:0|t[Lost Dragonscale]
    .use 205456
-- step
--     .goto 940,49.2,43.8
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Fareeya|r.
--     .accept 49772 >>Accept For the Alliance
--     .target Captain Fareeya
-- step
--     #completewith next
--     .goto 941,43.180,24.938
--     >>Go downstairs
--     .zone 84 >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Portal to Stormwind|r.
-- step
--     .goto 84,53.059,15.259
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Moorgard|r.
--     .turnin 49772 >>Turn in For the Alliance 
--     .accept 50313 >>Accept Stranger in a Strange Land
--     .target Ambassador Moorgard
-- step
--     .goto 84,56.257,17.311
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r.
--     *|cRXP_WARN_Select "The Cataclysm"|r.
--     .complete 50313,1 << LightforgedDraenei --Talk to Chromie (1)
--     .accept 60891 >>Accept Cataclysm: Onward to Adventure in the Eastern Kingdoms
--     .skipgossipid 51901
--     .target Chromie
-- step
--     .goto 84,56.199,17.671
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Minkey|r.
--     .turnin 50313 >>Turn in Stranger in a Strange Land
--     .target Vindicator Minkey
-- step
--     .goto 84,62.16,30.14
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hero's Herald|r.
--     .accept 46727 >>Accept Tides of War
--     .isQuestTurnedIn 49772
--     .target Hero's Herald
]])

--Mechagnome Mechagon City
RXPGuides.RegisterGuide([[
#retail
#version 2
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(1-80)|r Default
#name a) Mechagnome Intro
#displayname |cFF00CCFF1|r - Mechagon City
#next ba) Elwynn Forest

<< Mechagnome !DK

step
    .cast 205456 >>Use the |T134309:0|t[Lost Dragonscale]
    .use 205456
-- step
--     .goto 1573,18.67,67.5
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Tinker Mekkartonque|r.
--     .accept 58146 >>Accept For the Alliance
--     .target High Tinker Mekkartonque
-- step
--     .goto 1573,20.5,60.0
--     >>Walk |cRXP_WARN_on the Stormwind Teleportation Unit|r.
--     .complete 58146,1 --1/1 Teleport to Stormwind
-- step
--     .goto 84,53.059,15.259
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Moorgard|r.
--     .turnin 58146 >>Turn in For the Alliance
--     .accept 58147 >>Accept Stranger in a Strange Land 
--     .target Ambassador Moorgard
-- step
--     .goto 84,56.257,17.311
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r.
--     *|cRXP_WARN_Select "The Cataclysm"|r.
--     .complete 58147,1 --Talk to Chromie (1)
--     .accept 60891 >>Accept Cataclysm: Onward to Adventure in the Eastern Kingdoms
--     .skipgossipid 51901
--     .target Chromie
-- step
--     .goto 84,56.199,17.671
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lulana|r.
--     .turnin 58147 >>Turn in Stranger in a Strange Land
--     .target Lulana
-- step
--     .goto 84,62.16,30.14
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hero's Herald|r.
--     .accept 46727 >>Accept Tides of War
--     .isQuestTurnedIn 58146
--     .target Hero's Herald
]])

--VoidElf Telogrus Rift
RXPGuides.RegisterGuide([[
#retail
#version 2
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(1-80)|r Default
#name a) VoidElf Intro
#displayname |cFF00CCFF1|r - Telogrus Rift
#next ba) Elwynn Forest

<< VoidElf !DK

step
    .cast 205456 >>Use the |T134309:0|t[Lost Dragonscale]
    .use 205456
-- step
--     .goto 971,28.5,22.3
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria|r.
--     .accept 49788 >>Accept For the Alliance
--     .target Alleria
-- step
--     #completewith next
--     .goto 971,27.99,21.50
--     .zone 84 >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Portal to Stormwind|r.
-- step
--     .goto 84,53.059,15.259
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Moorgard|r.
--     .turnin 49788 >>Turn in For the Alliance
--     .accept 50305 >>Accept Stranger in a Strange Land
--     .target Ambassador Moorgard
-- step
--     .goto 84,56.257,17.311
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r.
--     >>|cRXP_WARN_Select "The Cataclysm"|r.
--     .complete 50305,1 --Talk to Chromie (1)
--     .accept 60891 >>Accept Cataclysm: Onward to Adventure in the Eastern Kingdoms
--     .skipgossipid 51901
--     .target Chromie
-- step
--     .goto 84,56.199,17.671
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keira Onyxraven|r.
--     .turnin 50305 >>Turn in Stranger in a Strange Land 
--     .target Keira Onyxraven
-- step
--     .goto 84,62.16,30.14
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hero's Herald|r.
--     .accept 46727 >>Accept Tides of War
--     .isQuestTurnedIn 49788
--     .target Hero's Herald
]])

-- ====================================
-- =======  HORDE  ZONES ==============
-- ====================================

--Blood Elf Sunstrider Isle
RXPGuides.RegisterGuide([[
#retail
#version 2
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(1-80)|r Default
#name ab) Sunstrider Isle
#displayname Sunstrider Isle |cRXP_ENEMY_(Alternative)|r
#next ac) Blood Elf Eversong Woods
#defaultfor BloodElf !DK

<< Horde

step
    .zoneskip 1727
    #completewith SunstriderIsleFirstQuestCheck
    +Welcome to the |cfff78300Blood Elf Starting Zone|r. Guide of RestedXP.
    *This route is roughly 10-20 minutes slower than |cfff78300Exiles Reach|r. For faster leveling recreate your character and choose |cfff78300Exiles Reach|r instead.
step
    .zoneskip 1727,1
    +You are in Exiles Reach but the current Guide is for the |cfff78300Blood Elf Starting Zone|r.
    +Please choose the Exiles Reach Guide.
step
    #completewith next
    +|cRXP_WARN_If you want to make the most of RXP; Press Escape -> Options -> Keybindings -> RestedXP Guides -> Select and Bind Active Button 1,2,3 and 4. You can also do this with Targets|r.
    *This will allow you to press a Keybind to use a Quest Items/target a relevant mob
step
    #label SunstriderIsleFirstQuestCheck
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Erona|r.
    .goto 467,61.04,45.13
    .accept 8325 >>Accept Reclaiming Sunstrider Isle
    .target Magistrix Erona
step
    >>Kill |cRXP_ENEMY_Mana Wyrms|r.
    .goto 467,60.6,52.5
    .complete 8325,1 --6/6 Mana Wyrm slain
    .mob Mana Wyrm
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Erona|r.
    .goto 467,61.0,45.1
    .turnin 8325 >>Turn in Reclaiming Sunstrider Isle
    .accept 8326 >>Accept Unfortunate Measures
    .target Magistrix Erona
step
    >>Kill |cRXP_ENEMY_Springpaw Cubs|r and |cRXP_ENEMY_Springpaw Lynx|r. Loot them for their [|cRXP_LOOT_collars|r].
    .goto 467,65.77,39.97,20,0
    .goto 467,68.40,37.61,20,0
    .goto 467,63.49,33.62,30,0
    .goto 467,68.13,34.18
    .complete 8326,1 --8/8 Lynx Collar
    .mob Springpaw Cub
    .mob Springpaw Lynx
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Erona|r.
    .goto 467,61.0,45.1
    .turnin 8326 >>Turn in Unfortunate Measures
    .accept 8327 >>Accept Report to Lanthan Perilon
    .target Magistrix Erona
step << Warlock
    #completewith next
    +|cfff78300Reminder: Use |T136218:0|tSummon Imp to summon your pet|r.
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWalk up the ramp and talk to |cRXP_FRIENDLY_Well Watcher Solanian|r.
    .goto 467,65.18,45.72,5,0
    .goto 467,65.81,44.45,5,0
    .goto 467,65.43,42.94,5,0
    .goto 467,64.49,42.17,5,0
    .goto 467,63.9,42.8
    .accept 37442 >>Accept The Shrine of Dath'Remar
    .accept 37443 >>Accept Solanian's Belongings
    .target Well Watcher Solanian
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Ithanas|r.
    .goto 467,61.8,39.3
    .accept 37440 >>Accept A Fistful of Slivers
    .target Arcanist Ithanas
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Helion|r.
    .goto 467,58.45,38.79
    .accept 37439 >>Accept Thirst Unending
    .target Arcanist Helion
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanthan Perilon|r.
    .goto 467,52.9,49.8
    .turnin 8327 >>Turn in Report to Lanthan Perilon
    .accept 8334 >>Accept Aggression
    .target Lanthan Perilon
step
    #sticky
    #label EversongWoodsArcaneSilver
    >>Kill |cRXP_ENEMY_Mana Wyrms|r. Loot them for the [|cRXP_LOOT_silver|r].
    .goto 467,50.15,40.74
    .complete 37440,1 --6/6 Arcane Sliver
    .mob Mana Wyrm
step
    >>Use |T136222:0|t[Arcane Torrent] next to a |cRXP_ENEMY_Mana Wyrms|r.
    .goto 467,53.1,40.5
    .complete 37439,1 --1/1 Arcane Torrent unleashed
step
    #requires EversongWoodsArcaneSilver
    #completewith EversongWoodsSecondBelonging
    >>Kill |cRXP_ENEMY_Tenders|r and |cRXP_ENEMY_Feral Tenders|r on the side.
    .complete 8334,2 --7/7 Feral Tender slain
    .complete 8334,1 --7/7 Tender slain
    .mob Tender
    .mob Feral Tender
step
    #requires EversongWoodsArcaneSilver
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the glowing [|cRXP_LOOT_Shrine of Dath'Remar|r].
    .goto 467,35.3,40.2
    .complete 37442,1 --1/1 Shrine of Dath'Remar Read
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tPick up the [|cRXP_LOOT_Scroll of Scourge Magic|r]. on the ground
    .goto 467,40.4,50.5
    .complete 37443,2 --1/1 Scroll of Scourge Magic
step
    #label EversongWoodsSecondBelonging
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tPick up the [|cRXP_LOOT_Solanian's Srying Orb|r].
    .goto 467,52.2,69.4
    .complete 37443,1 --1/1 Solanian's Scrying Orb
step
    >>Kill |cRXP_ENEMY_Tenders|r and |cRXP_ENEMY_Feral Tenders|r.
    .goto 467,54.76,70.68
    .complete 8334,2 --7/7 Feral Tender slain
    .complete 8334,1 --7/7 Tender slain
    .mob Tender
    .mob Feral Tender
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tPick up [|cRXP_LOOT_Solanian's Journal|r]. on the ground
    .goto 467,60.1,57.1
    .complete 37443,3 --1/1 Solanian's Journal
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanthan Perilon|r.
    .goto 467,52.9,49.8
    .turnin 8334 >>Turn in Aggression
    .accept 8335 >>Accept Felendren the Banished
    .target Lanthan Perilon
step
    #completewith EversongWoodsFelendrenHead
    >>Kill |cRXP_ENEMY_Arcane Wraiths|r and |cRXP_ENEMY_Tainted Arcane Wraith|r while going up the academy.
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
    >>Kill a |cRXP_ENEMY_Tainted Arcane Wraith|r. Loot it for the [|cRXP_LOOT_Tainted Arcane Sliver|r]. |TInterface/cursor/crosshair/interact.blp:20|tClick it in your bags
    .collect 20483,1,8338,1
    .accept 8338 >>Accept Tainted Arcane Sliver
    .mob Tainted Arcane Wraith
step
    #label EversongWoodsFelendrenHead
    >>Kill |cRXP_ENEMY_Felendren the Banished|r. Loot him for his [|cRXP_LOOT_head|r].
    .goto 467,38.92,63.98
    .complete 8335,3 --1/1 Felendren's Head
    .mob Felendren the Banished
step
    >>Kill a |cRXP_ENEMY_Tainted Arcane Wraith|r. Loot it for the [|cRXP_LOOT_Tainted Arcane Sliver|r]. |TInterface/cursor/crosshair/interact.blp:20|tClick it in your bags
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Helion|r.
    .goto 467,58.5,38.8
    .turnin 8338 >>Turn in Tainted Arcane Sliver
    .turnin 37439 >>Turn in Thirst Unending
    .target Arcanist Helion
step
    .isOnQuest 8338
    #sticky
    #label EversongWoodsArcaneWraith
    >>Kill |cRXP_ENEMY_Arcane Wraiths|r and |cRXP_ENEMY_Tainted Arcane Wraith|r.
    .goto 467,36.49,62.42,10,0
#loop
	.line 467,35.95,62.37,33.98,60.95,33.30,57.44,35.22,55.35,37.68,57.26,41.53,61.92,42.39,66.27,44.03,69.13,43.00,71.32,41,32,71.70,39.72,74.29,38.05,73.09,37.83,70.00,38.26,66.85
	.goto 467,35.95,62.37,15,0
	.goto 467,33.98,60.95,15,0
	.goto 467,33.30,57.44,15,0
	.goto 467,35.22,55.35,15,0
	.goto 467,37.68,57.26,15,0
	.goto 467,41.53,61.92,15,0
	.goto 467,42.39,66.27,15,0
	.goto 467,44.03,69.13,15,0
	.goto 467,43.00,71.32,15,0
	.goto 467,41.00,32.00,15,0
	.goto 467,71.70,39.72,15,0
	.goto 467,74.29,38.05,15,0
	.goto 467,73.09,37.83,15,0
	.goto 467,70.00,38.26,15,0
    .complete 8335,1 --8/8 Arcane Wraith slain
    .complete 8335,2 --2/2 Tainted Arcane Wraith slain
    .mob Arcane Wraith
    .mob Tainted Arcane Wraith
step
    .isOnQuest 8338
    >>Kill a |cRXP_ENEMY_Tainted Arcane Wraith|r. Loot it for the [|cRXP_LOOT_Tainted Arcane Sliver|r]. |TInterface/cursor/crosshair/interact.blp:20|tClick it in your bags
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Helion|r.
    .goto 467,58.5,38.8
    .turnin 8338 >>Turn in Tainted Arcane Sliver
    .turnin 37439 >>Turn in Thirst Unending
    .target Arcanist Helion
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Ithanas|r.
    .goto 467,61.8,39.3
    .turnin 37440 >>Turn in A Fistful of Slivers
    .target Arcanist Ithanas
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_WARN_Walk up the ramp|r and talk to |cRXP_FRIENDLY_Well Watcher Solanian|r.
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanthan Perilon|r.
    .goto 467,52.9,49.78
    .turnin 8335 >>Turn in Felendren the Banished
    .accept 8347 >>Accept Aiding the Outrunners
    .target Lanthan Perilon
]])

--Blood Elf Eversong Woods
RXPGuides.RegisterGuide([[
#retail
#version 2
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(1-80)|r Default
#name ac) Blood Elf Eversong Woods
#displayname |cFF00CCFF2|r - Eversong Woods
#next 
#defaultfor BloodElf !DK

<< Horde

step << Hunter
    #completewith next
    .goto 467,58.74,57.51
    .cast 1515 >>Tame a |cRXP_ENEMY_Mana Wyrm|r with your ability |T132164:0|t[Tame Beast].
step
    .isOnQuest 8347
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Outrunner Alarion|r.
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Jaela|r.
    .goto 94,50.33,50.77
    .accept 8475 >>Accept The Dead Scar
    .target Ranger Jaela
step << Warlock/Hunter
    #completewith next
    +|cRXP_WARN_Reminder: Resummon your pet after a deathskip|r.
step
    >>Kill |cRXP_ENEMY_Plaguebone Pillagers|r.
    .goto 94,50.17,55.05
    .complete 8475,1 --8/8 Plaguebone Pillager slain
    .mob Plaguebone Pillager
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Jaela|r.
    .goto 94,50.33,50.77
    .turnin 8475 >>Turn in The Dead Scar
    .target Ranger Jaela
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skymaster Skyles|r.
    .goto 94,46.53,48.61,20,0
    .goto 94,46.2,46.8
    .fp >>Get the Ruins of Silvermoon Flight Path
    .target Skymaster Skyles
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Jaronis|r.
    .goto 94,47.25,46.30
    .accept 8472 >>Accept Major Malfunction
    .target Magister Jaronis
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the wanted board
    .goto 94,48.16,46.31
    .accept 8468 >>Accept WANTED: Thaelis the Hungerer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeldon Sunbrand|r.
    .goto 94,48.17,46.0
    .accept 8463 >>Accept Unstable Mana Crystals
    .target Aeldon Sunbrand
step
    #completewith next
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on [|cRXP_LOOT_Unstable Mana Crystal Crates|r]. to collect them
    .complete 8463,1 --6/6 Unstable Mana Crystal
step
    #completewith next
    >>Kill |cRXP_ENEMY_Acrane Patrollers|r. Loot them for their [|cRXP_LOOT_cores|r].
    .goto 94,46.94,44.59,15,0
    .goto 94,47.69,39.02,15,0
    .goto 94,47.11,37.44,15,0
    .goto 94,46.53,35.16,30,0
    .complete 8472,1 --6/6 Arcane Core
    .mob Arcane Patroller
step
    >>Kill |cRXP_ENEMY_Thaelis|r. Loot him for his [|cRXP_LOOT_head|r].
    .goto 94,45.36,38.12,5,0
    .goto 94,45.01,37.68
    .complete 8468,1 --1/1 Thaelis' Head
    .mob Thaelis
step
    >>Kill |cRXP_ENEMY_Acrane Patrollers|r. Loot them for their [|cRXP_LOOT_cores|r].
    .goto 94,45.39,40.64,20,0
    .goto 94,42.18,40.59
    .complete 8472,1 --6/6 Arcane Cores
    .mob Arcane Patroller
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on [|cRXP_LOOT_Unstable Mana Crystal Crates|r]. to collect them
    .goto 94,45.13,40.71,18,0
    .goto 94,46.01,43.29,25,0
    .goto 94,46.92,44.57,10,0
    .complete 8463,1 --6/6 Unstable Mana Crystal
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Jaronis|r.
    .goto 94,47.26,46.30
    .turnin 8472 >>Turn in Major Malfunction
    .accept 8895 >>Accept Delivery to the North Sanctum
    .target Magister Jaronis
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeldon Sunbrand|r.
    .goto 94,48.17,46.0
    .turnin 8463 >>Turn in Unstable Mana Crystals
    .accept 9352 >>Accept Darnassian Intrusions
    .target Aeldon Sunbrand
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Kan'ren|r.
    .goto 94,47.77,46.58
    .turnin 8468 >>Turn in WANTED: Thaelis the Hungerer
    .target Sergeant Kan'ren
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sleyin|r.
    .goto 94,47.07,47.49
    .vendor
    .target Sleyin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ley-Keeper Caidanis|r.
    .goto 94,44.6,53.1
    .turnin 8895 >>Turn in Delivery to the North Sanctum
    .accept 9119 >>Accept Malfunction at the West Sanctum
    .target Ley-Keeper Caidanis
step
    .itemcount 132516,1
    #completewith next
    .cast 202844 >>Use |T1405809:0|t[Gunshoes]
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ley-Keeper Velania|r.
    .goto 94,36.7,57.44
    .turnin 9119 >>Turn in Malfunction at the West Sanctum
    .accept 8486 >>Accept Arcane Instability
    .target Ley-Keeper Velania
step
    #completewith next
    >>Kill a |cRXP_ENEMY_Darnassian Scout|r. Loot him for the [|cRXP_LOOT_Incriminating Documents|r]. |TInterface/cursor/crosshair/interact.blp:20|tClick it in your bags
    .goto 94,36.4,60.7,20,0
    .goto 94,34.65,62.03,20,0
    .collect 20765,1,8482,1
    .accept 8482 >>Accept Incriminating Documents
    .complete 9352,1 --1/1 Intruder Defeated
    .mob Darnassian Scout
step
    >>Kill |cRXP_ENEMY_Mana Stalker|r and |cRXP_ENEMY_Manawraiths|r.
    .goto 94,33.69,61.69,15,0
    .goto 94,34.50,57.84,20,0
    .goto 94,35.66,58.00
    .complete 8486,2 --5/5 Mana Stalker slain
    .complete 8486,1 --5/5 Manawraith slain
    .mob Mana Stalker
    .mob Manawraith
step
    >>Kill a |cRXP_ENEMY_Darnassian Scout|r. Loot him for the [|cRXP_LOOT_Incriminating Documents|r]. |TInterface/cursor/crosshair/interact.blp:20|tClick it in your bags
    .goto 94,36.4,60.7,20,0
    .goto 94,34.65,62.03,20,0
    .collect 20765,1,8482,1
    .accept 8482 >>Accept Incriminating Documents
    .complete 9352,1 --1/1 Intruder Defeated
    .mob Darnassian Scout
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ley-Keeper Velania|r.
    .goto 94,36.7,57.44
    .turnin 8486 >>Turn in Arcane Instability
    .turnin 9352 >>Turn in Darnassian Intrusions
    .target Ley-Keeper Velania
step << Warlock/Hunter
    #completewith next
    +|cRXP_WARN_Set your pet to 'Passive'|r.
step
    #completewith next
    .goto 94,35.46,57.41
    .deathskip >>Pull some mobs, die and ress at the spirit healer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Landra Dawnstrider|r.
    .goto 94,44.03,70.76
    .accept 9254 >>Accept The Wayward Apprentice
    .target Magistrix Landra Dawnstrider
step << Hunter/Warlock
    #completewith next
    +|cRXP_WARN_Reminder: Resummon your pet and set it to 'Assist'|r.
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marniel Amberlight|r and |cRXP_FRIENDLY_Sathiel|r.
    .accept 9358 >>Accept Ranger Sareyn
    .goto 94,43.67,71.31
    .accept 9130 >>Accept Goods from Silvermoon City
    .goto 94,43.70,71.55
    .target Marniel Amberlight
    .target Sathiel
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Sareyn|r.
    .goto 94,46.93,71.79
    .turnin 9358 >>Turn in Ranger Sareyn
    .accept 9252 >>Accept Defending Fairbreeze Village
    .target Ranger Sareyn
step
    #completewith next
    >>Kill |cRXP_ENEMY_Rotlim Maurauders|r and |cRXP_ENEMY_Darkwraiths|r.
    .goto 94,50.75,81.06,30,0
    .goto 94,51.00,76.81,30,0
    .goto 94,51.98,72.04,30,0
    .complete 9252,1 --4/4 Rotlimb Marauder slain
    .complete 9252,2 --4/4 Darkwraith slain
    .mob Rotlimb Marauder
    .mob Darkwraith
step
    >>|cRXP_WARN_You can die if you pull too many |cRXP_ENEMY_Rotlimb Maurauders|r|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Mirveda|r.
    .goto 94,54.28,70.98
    .turnin 9254 >>Turn in The Wayward Apprentice
    .accept 8487 >>Accept Corrupted Soil
    .target Apprentice Mirveda
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tPick up the [|cRXP_LOOT_Tainted Soil Samples|r]. from the ground
    .goto 94,52.34,71.77,20,0
    .goto 94,51.92,68.47,20,0
    .goto 94,52.59,69.60,10,0
    .goto 94,53.75,69.89,10,0
    .goto 94,52.36,69.80
    .complete 8487,1 --8/8 Tainted Soil Sample
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Mirveda|r.
    .goto 94,54.28,70.98
    .turnin 8487 >>Turn in Corrupted Soil
    .target Apprentice Mirveda
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWait for around 5 seconds and talk to |cRXP_FRIENDLY_Apprentice Mirveda|r again.
    .goto 94,54.28,70.98
    .accept 8488 >>Accept Unexpected Results
    .target Apprentice Mirveda
step
    >>Kill |cRXP_ENEMY_Gharsul the Remorseless|r. You can kite him back to |cRXP_FRIENDLY_Apprentice Mirveda|r.
    .goto 94,53.69,69.71,10,0
    .goto 94,54.28,70.98
    .complete 8488,2 --1/1 Gharsul the Remorseless slain
    .mob Gharsul the Remorseless
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Mirveda|r.
    .goto 94,54.28,70.98
    .turnin 8488 >>Turn in Unexpected Results
    .accept 9255 >>Accept Research Notes
    .target Apprentice Mirveda
step
    >>Kill |cRXP_ENEMY_Rotlim Maurauders|r and |cRXP_ENEMY_Darkwraiths|r.
    .goto 94,51.98,72.04,30,0
    .goto 94,51.00,76.81
    .complete 9252,1 --4/4 Rotlimb Marauder slain
    .complete 9252,2 --4/4 Darkwraith slain
    .mob Rotlimb Marauder
    .mob Darkwraith
step << Warlock/Hunter
    #completewith next
    +|cRXP_WARN_Set your pet to 'Passive'|r.
step
    #completewith next
    .goto 94,51.47,70.39
    .deathskip >>Pull some mobs around you and die at the waypoint location. Rotlimb Maraudurs are really good at killing you
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Sareyn|r.
    .goto 94,46.93,71.79
    .turnin 9252 >>Turn in Defending Fairbreeze Village
    .target Ranger Sareyn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Landra Dawnstrider|r.
    .goto 94,44.03,70.76
    .turnin 9255 >>Turn in Research Notes
    .target Magistrix Landra Dawnstrider
step << Hunter/Warlock
    #completewith next
    +|cRXP_WARN_Reminder: Resummon your pet and set it to 'Assist'|r.
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skymaster Brightdawn|r.
    .goto 94,43.94,69.99
    .turnin 9130 >>Turn in Goods from Silvermoon City
    .target Skymaster Brightdawn
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skymaster Brightdawn|r.
    .goto 94,43.95,69.98
    .fly Falconwing Square >>Fly to Falconwing Square
    .target Skymaster Brightdawn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeldon Sunbrand|r.
    .goto 94,47.80,47.65,5,0
    .goto 94,48.16,46.0
    .turnin 8482 >>Turn in Incriminating Documents
    .target Aeldon Sunbrand
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skymaster Skyles|r.
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
    .zone 85 >>|cRXP_WARN_Mount up|r Take the portal to Orgrimmar.
]])

--Orc Valley of Trials
RXPGuides.RegisterGuide([[
#retail
#version 2
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(1-80)|r Default
#name ab) Valley of Trials1  << !Troll --Orc
#name ab) Valley of Trials2  << Troll
#displayname |cFF00CCFF2|r - Valley of Trials << Troll
#displayname Valley of Trials |cRXP_ENEMY_(Alternative)|r << !Troll --Orc
#next << !Troll --Orc
#next << Troll
#defaultfor Orc !DK/Troll !DK

<< Horde

step << Orc
    .zoneskip 1727
    #completewith DurotarFirstQuestCheck
    +Welcome to the |cfff78300Orc Starting Zone|r. Guide of RestedXP.
    *Without consumables/heirlooms this route is roughly 5 minutes slower than |cfff78300Exiles Reach|r. For faster leveling recreate your character and choose |cfff78300Exiles Reach|r instead.
    *With consumables/heirlooms this route is just as fast or up to 15% faster.
step << Orc
    .zoneskip 1727,1
    +You are in Exiles Reach but the current Guide is for the Orc Starting Zone.
    +Please choose the Exiles Reach Guide.
step << Troll
	#completewith ValleyofTrialsShortcut
	+Take the shortcut to the Valley of Trials
step << Troll
	#completewith next
    .goto 1,49.42,70.56,4,0
    .goto 461,68.14,75.44,6 >>Jump when you reach a wall
step << Troll
	#label ValleyofTrialsShortcut
	#completewith DurotarFirstQuestCheck
    .goto 461,67.83,74.52,6,0
    .goto 461,67.01,74.53,6,0
    .goto 461,64.89,71.70,12 >>Hug the left wall and climb the mountain
step << Orc
    #completewith next
    +|cRXP_WARN_If you want to make the most of RXP; Press Escape -> Options -> Keybindings -> RestedXP Guides -> Select and Bind Active Button 1,2,3 and 4. You can also do this with Targets|r.
    *This will allow you to press a Keybind to use a Quest Items/target a relevant mob
step
    #label DurotarFirstQuestCheck
    .goto 461,45.20,68.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaltunk|r.
    .accept 25152 >>Accept Your Place In The World
    .target Kaltunk
step
    .goto 461,44.93,66.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r.
    .turnin 25152 >>Turn in Your Place In The World
    .accept 25126 >>Accept Cutting Teeth
    .target Gornek
step
    .goto 461,48.08,54.03,40,0
    .goto 461,46.68,52.16
	>>Kill |cRXP_ENEMY_Mottled Boars|r.
    .complete 25126,1 --6/6 Mottled Boar slain
    .mob Mottles Boar
step
    .goto 461,44.93,66.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r.
    .turnin 25126 >>Turn in Cutting Teeth
    .accept 25172 >>Accept Invaders in Our Home
    .target Gornek
step
    #loop
    .goto 461,51.95,75.86,40,0
    .goto 461,46.75,87.23,55,0
    .goto 461,36.46,78.09,45,0
	>>Kill the stealthed |cRXP_ENEMY_Northwatch Scouts|r.
    .complete 25172,1 --7/7 Northwatch Scout slain
    .mob Northwatch Scout
step
    .goto 461,46.95,72.89,40,0
    .goto 461,44.93,66.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r.
    .turnin 25172 >>Turn in Invaders in Our Home
    .accept 25127 >>Accept Invaders in Our Home
    .target Gornek
step << Warlock
	#completewith ValleyOfTrialsSarkoth
	.cast 688 >> Cast |T136218:0|r.[Summon Imp] to summon your Imp
	.xp <3,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galgar|r and |cRXP_FRIENDLY_Foreman Thazz'ril|r.
    .accept 25136 >>Accept Galgar's Cactus Apple Surprise
    .goto 461,42.98,62.41
    .accept 37446 >>Accept Lazy Peons
    .goto 461,46.16,63.27
    .target Galgar
    .target Foreman Thazz'ril
step
    #completewith ValleyOfTrialsSarkoth
    >>Kill |cRXP_ENEMY_Scorpid Workers|r. Loot them for their |T132274:0|t[Scorpid Worker Tails].
    .complete 25127,1 --8/8 Scorpid Worker Tail
    .mob Scorpid Worker
step
    #completewith ValleyOfTrialsBackDen
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the sleeping |cRXP_FRIENDLY_Lazy Peons|r.
    .complete 37446,1 --4/4 Sleeping Lazy Peons awakened
    .use 16114
    .target Lazy Peon
step
    #completewith ValleyTurnins
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Cactus Apples|r.
    .complete 25136,1 --6/6 Cactus Apple
step
    #optional
    #completewith next
    #label SarkothRoute
    .goto 461,46.52,58.50,10,0
    .goto 461,34.62,44.23
    >>Leave the town heading north
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hana'zua|r.
    .accept 25129 >>Accept Sarkoth
    .target Hana'zua
step
    #hidewindow
    #completewith SarkothRoute
    .goto 461,34.62,44.23,15 >>1
step
    #requires SarkothRoute
	#label Sarkoth
    .goto 461,34.62,44.23
    >>Leave the town heading north
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hana'zua|r.
    .accept 25129 >>Accept Sarkoth
    .target Hana'zua
step
    #label ValleyOfTrialsSarkoth
    .goto 461,32.7,61.9
	>>Kill |cRXP_ENEMY_Sarkoth|r. Loot him for |T134294:0|t[|cRXP_LOOT_Sarkoth's Mangled Claw|r].
    .complete 25129,1 --1/1 Sarkoth's Mangled Claw
    .mob Sarkoth
step
    #title Finish |T132274:0|t[Scorpid Worker Tails]
    >>Kill |cRXP_ENEMY_Scorpid Workers|r. Loot them for their |T132274:0|t[Scorpid Worker Tails].
    #loop
	.goto 461,37.38,65.09,40,0
	.goto 461,34.90,67.58,40,0
	.goto 461,32.93,66.72,40,0
	.goto 461,32.45,61.81,40,0
	.goto 461,32.11,57.46,40,0
	.goto 461,34.97,57.14,40,0
	.goto 461,39.82,56.48,40,0
	.goto 461,37.38,65.09,40,0
    .complete 25127,1 --8/8 Scorpid Worker Tail
    .mob Scorpid Worker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_WARN_Jump down back to town|r. Talk to |cRXP_FRIENDLY_Galgar|r, |cRXP_FRIENDLY_Gornek|r, |cRXP_FRIENDLY_Zureetha|r, and |cRXP_FRIENDLY_Foreman Thazz'ril|r.
    .turnin 25136 >>Turn in Galgar's Cactus Apple Surprise
    .goto 461,42.95,62.42
    .turnin 25127 >>Turn in Sting of the Scorpid
    .goto 461,44.93,66.42
    .accept 25131 >>Accept Vile Familiars
    .goto 461,45.81,63.42
    .turnin 37446 >>Turn in Lazy Peons
    .goto 461,46.15,63.28
	.isQuestComplete 25136
	.isQuestComplete 37446
    .target Galgar
    .target Gornek
    .target Zureetha Fargaze
    .target Foreman Thazz'ril
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tJump down back to town. Talk to |cRXP_FRIENDLY_Galgar|r, |cRXP_FRIENDLY_Gornek|r, and |cRXP_FRIENDLY_Zureetha|r.
    .turnin 25136 >>Turn in Galgar's Cactus Apple Surprise
    .goto 461,42.95,62.42
    .turnin 25127 >>Turn in Sting of the Scorpid
    .goto 461,44.93,66.42
    .accept 25131 >>Accept Vile Familiars
    .goto 461,45.81,63.42
	.isQuestComplete 25136
    .target Galgar
    .target Gornek
    .target Zureetha Fargaze
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r, |cRXP_FRIENDLY_Zureetha|r, and |cRXP_FRIENDLY_Foreman Thazz'ril|r.
    .turnin 25127 >>Turn in Sting of the Scorpid
    .goto 461,44.93,66.42
    .accept 25131 >>Accept Vile Familiars
    .goto 461,45.81,63.42
    .turnin 37446 >>Turn in Lazy Peons
    .goto 461,46.15,63.28
	.isQuestComplete 37446
    .target Gornek
    .target Zureetha Fargaze
    .target Foreman Thazz'ril
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r and |cRXP_FRIENDLY_Zureetha|r.
    .turnin 25127 >>Turn in Sting of the Scorpid
    .goto 461,44.91,66.41
    .accept 25131 >>Accept Vile Familiars
    .goto 461,45.81,63.42
    .target Gornek
    .target Zureetha Fargaze
step
    #completewith next
    #label ValleyOfTrialsBackDenRoute
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hana'zua|r.
    .goto 461,46.45,57.83,15,0
    .goto 461,34.62,44.23
    .turnin 25129 >>Turn in Sarkoth
    .accept 25130 >>Accept Back to the Den
    .target Hana'zua
step
    #hidewindow
    #completewith ValleyOfTrialsBackDenRoute
    .goto 461,34.62,44.23,20 >>1
step
    #requires ValleyOfTrialsBackDenRoute
    #label ValleyOfTrialsBackDen
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hana'zua|r.
    .goto 461,34.62,44.23
    .turnin 25129 >>Turn in Sarkoth
    .accept 25130 >>Accept Back to the Den
    .target Hana'zua
step
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the sleeping |cRXP_FRIENDLY_Lazy Peons|r.
    .goto 461,36.22,35.30,20,0
    .goto 461,37.20,29.67,20,0
    .complete 37446,1 --4/4 Sleeping Lazy Peons awakened
    .use 16114
    .target Lazy Peon
step
    #loop
    .goto 461,49.86,25.11,50,0
    .goto 461,56.34,31.92,50,0
    .goto 461,48.90,37.40,50,0
	>>Kill |cRXP_ENEMY_Vile Familiars|r.
    .complete 25131,1 --8/8 Vile Familiar slain
    .mob Vile Familiar
step
    #loop
    .goto 461,58.79,36.66,25,0
    .goto 461,61.15,56.34,30,0
    .goto 461,54.42,57.33,20,0
    .goto 461,52.01,69.59,20,0
    .goto 461,48.28,71.90,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the sleeping |cRXP_FRIENDLY_Lazy Peons|r.
    .complete 37446,1 --4/4 Sleeping Lazy Peons awakened
    .use 16114
    .target Lazy Peon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zureetha Fargaze|r and |cRXP_FRIENDLY_Foreman Thazz'ril|r.
    .turnin 25131 >>Turn in Vile Familiars
    .goto 461,45.81,63.42
    .turnin 37446 >>Turn in Lazy Peons
    .accept 25135 >>Accept Thazz'ril's Pick
    .goto 461,46.15,63.28
    .accept 25132 >>Accept Burning Blade Medallion
    .goto 461,45.81,63.42
	.isOnQuest 37446
    .target Zureetha Fargaze
    .target Foreman Thazz'ril
step
	#label ValleyTurnins
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zureetha Fargaze|r and |cRXP_FRIENDLY_Foreman Thazz'ril|r.
    .turnin 25131 >>Turn in Vile Familiars
    .accept 25132 >>Accept Burning Blade Medallion
    .goto 461,45.81,63.42
    .accept 25135 >>Accept Thazz'ril's Pick
    .goto 461,46.15,63.28
    .target Zureetha Fargaze
    .target Foreman Thazz'ril
step << Hunter
    #completewith next
    .goto 461,52.42,52.84,20,0
    .goto 461,50.50,53.00,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Cactus Apples|r.
    .complete 25136,1 --6/6 Cactus Apple
step << Hunter Orc
    .goto 461,47.61,47.66
    .cast 1515 >>Target a |cRXP_ENEMY_Mottled Boar|r,cast and then channel |T132164:0|t[Tame Beast] to tame it
    .isOnQuest 25135
    .mob Mottled Boar
step
    #loop
    .goto 461,50.50,53.00,18,0 << !Hunter
    .goto 461,51.34,32.89,18,0
    .goto 461,50.28,27.29,18,0
    .goto 461,53.63,28.29,18,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Cactus Apples|r.
    .complete 25136,1 --6/6 Cactus Apple
step
    #completewith Yarrog
	>>Kill |cRXP_ENEMY_Felstalkers|r within the cave.
    .complete 25132,1 --5/5 Felstalker slain
    .mob Felstalker
step
    #label ThazzrilsPickA
    #completewith next
    >>Loot [|cRXP_LOOT_Thazz'ril's Pick|r]. on the ground
    .complete 25135,1 --1/1 Thazz'ril's Pick
step
    #title Enter the cave
    #completewith ThazzrilsPickA
    .goto 1,45.37,56.22,15 >>Enter the cave
step
    #requires ThazzrilsPickA
    .goto 2,75.04,80.08,15,0
    .goto 2,40.75,52.56
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_LOOT_Thazz'ril's Pick|r
    .complete 25135,1 --1/1 Thazz'ril's Pick
step
	#label Yarrog
    >>Kill |cRXP_ENEMY_Yarrog Baneshadow|r. Loot him for the |T133434:0|t[|cRXP_LOOT_Burning Blade Medallion|r].
    .goto 2,39.21,88.42,15,0
    .goto 2,26.73,83.52,15,0
    .goto 2,14.96,46.80
    .complete 25132,2 --1/1 Burning Blade Medallion
    .mob Yarrog Baneshadow
step
    .goto 2,39.21,88.42,15,0
    .goto 2,75.04,80.08,15,0
    .goto 1,45.37,56.22
	>>Kill |cRXP_ENEMY_Felstalkers|r within the cave.
    .complete 25132,1 --5/5 Felstalker slain
    .mob Felstalker
step
    #completewith next
    .goto 2,14.96,46.80,-1
    .goto 461,48.47,70.89,-1
    .deathskip >>Pull as many mobs as you can, then die and respawn at the Spirit Healer. Die near the waypoint or around the mouth of the cave << !Hunter !Warlock
    .deathskip >>|cfff78300Set your pet to passive|r. Pull as many mobs as you can, then die and respawn at the Spirit Healer. Die near the waypoint or around the mouth of the cave << Hunter/Warlock
step
    #hidewindow
    #completewith next
    .goto 461,48.45,70.92,20 >>1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r, |cRXP_FRIENDLY_Galgar|r, |cRXP_FRIENDLY_Zureetha Fargaze|r, and |cRXP_FRIENDLY_Foreman Thazz'ril|r.
    .turnin 25130 >>Turn in Back to the Den
    .goto 461,44.93,66.42
    .turnin 25136 >>Turn in Galgar's Cactus Apple Surprise
    .goto 461,42.95,62.42
    .turnin 25132 >>Turn in Burning Blade Medallion
    .accept 25133 >>Accept Report to Sen'jin Village << Orc
    .goto 461,45.82,63.42
    .turnin 25135 >>Turn in Thazz'rils Pick
    .goto 461,46.19,63.29
	.isOnQuest 25136
    .target Galgar
    .target Gornek
    .target Zureetha Fargaze
    .target Foreman Thazz'ril
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r, |cRXP_FRIENDLY_Zureetha Fargaze|r, and |cRXP_FRIENDLY_Foreman Thazz'ril|r.
    .turnin 25130 >>Turn in Back to the Den
    .goto 461,44.93,66.42
    .turnin 25132 >>Turn in Burning Blade Medallion
    .accept 25133 >>Accept Report to Sen'jin Village << Orc
    .goto 461,45.82,63.42
    .turnin 25135 >>Turn in Thazz'rils Pick
    .goto 461,46.19,63.29
    .target Gornek
    .target Zureetha Fargaze
    .target Foreman Thazz'ril
step << Troll
    .goto 461,46.68,52.16
    .xp 10
step << Troll
    #completewith next
    .goto 1,45.34,56.40,10,0
    .goto 2,57.97,30.96
    .deathskip >>Go back inside the cave. Pull as many mobs as you can, then die and respawn at the Spirit Healer. Die near the waypoint << !Hunter !Warlock
    .deathskip >>Go back inside the cave. |cfff78300Set your pet to passive|r. Pull as many mobs as you can, then die and respawn at the Spirit Healer. Die near the waypoint << Hunter/Warlock
step << Troll
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Burok|r.
    .goto 1,53.10,43.58
    .fly Orgrimmar >>Fly to Orgrimmar
    .target Burok
]])

--Orc Echo Isles
RXPGuides.RegisterGuide([[
#retail
#version 2
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(1-80)|r Default
#name ac) Echo Isles1 << Troll
#name ac) Echo Isles2 << !Troll --Orc
#displayname Echo Isles |cRXP_ENEMY_(Alternative)|r << Troll
#displayname |cFF00CCFF2|r - Echo Isles << !Troll 
#next << Troll
#next << !Troll 
#defaultfor Orc !DK/Troll !DK

<< Horde

step << Orc
    #completewith next
    .cast 202844 >>Use your |T1405809:0|t[Gunshoes] to move faster
    .use 132516
    .itemcount 132516,1
step << Troll
    .zoneskip 1727
    #completewith EchoIslesFirstQuestCheck
    +Welcome to the |cfff78300Troll Starting Zone|r. Guide of RestedXP.
    *Without consumables/heirlooms this route is roughly 5 minutes slower than |cfff78300Exiles Reach|r. For faster leveling recreate your character and choose |cfff78300Exiles Reach|r instead.
    *With consumbales/heirlooms this route is just as fast or up to 15% faster.
step << Troll
    .zoneskip 1727,1
    +You are in Exiles Reach but the current Guide is for the Troll Starting Zone.
    +Please choose the Exiles Reach Guide.
step << Troll
    #completewith next
    +|cRXP_WARN_If you want to make the most of RXP; Press Escape -> Options -> Keybindings -> RestedXP Guides -> Select and Bind Active Button 1,2,3 and 4. You can also do this with Targets|r.
    *This will allow you to press a Keybind to use a Quest Items/target a relevant mob
step << Orc
    #completewith next
    #label ReportToSenjinVillage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Gadrin|r.
    .turnin 25133 >>Turn in Report to Sen'jin Village
    .target Master Gadrin
step << Orc
    #completwith ReportToSenjinVillage
    .goto 461,68.14,69.72,20,0
    .goto 461,71.74,67.17,20 >>Leave the Valley of Trials
step << Orc
    #requires ReportToSenjinVillage
    .goto 1,55.95,74.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Gadrin|r.
    .turnin 25133 >>Turn in Report to Sen'jin Village
    .target Master Gadrin
step
    #requires EchoIslesFirstQuestCheckA
    #label EchoIslesFirstQuestCheckB
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'thala|r.
    .goto 463,42.82,53.43
    .accept 24607 >>Accept The Rise of the Darkspear << Warrior
    .accept 24750 >>Accept The Rise of the Darkspear << Mage
    .accept 24758 >>Accept The Rise of the Darkspear << Shaman
    .accept 24764 >>Accept The Rise of the Darkspear << Druid
    .accept 24770 >>Accept The Rise of the Darkspear << Rogue
    .accept 24776 >>Accept The Rise of the Darkspear << Hunter
    .accept 24782 >>Accept The Rise of the Darkspear << Priest
    .accept 26272 >>Accept The Rise of the Darkspear << Warlock
    .accept 31159 >>Accept The Rise of the Darkspear << Monk
    .target Jin'thala
step << Warrior
    .goto 463,52.55,53.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nortet|r.
    .turnin 24607 >>Turn in The Rise of the Darkspear
    .accept 24639 >>Accept The Basics: Hitting Things
    .target Nortet
step << Mage
    .goto 463,59.71,52.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soratha|r.
    .turnin 24750 >>Turn in The Rise of the Darkspear
    .accept 24751 >>Accept The Basics: Hitting Things
    .target Soratha
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nekali|r.
    .goto 463,50.06,52.75
    .turnin 24758 >>Turn in The Rise of the Darkspear
    .accept 24759 >>Accept The Basics: Hitting Things
    .target Nekali
step << Druid
    .goto 463,58.06,54.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zen'tabra|r.
    .turnin 24764 >>Turn in The Rise of the Darkspear
    .accept 24765 >>Accept The Basics: Hitting Things
    .target Zen'tabra
step << Rogue
    .goto 463,52.90,49.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legati|r.
    .turnin 24770 >>Turn in The Rise of the Darkspear
    .accept 24771 >>Accept The Basics: Hitting Things
    .target Legati
step << Hunter
    .goto 463,56.4,50.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ortezza|r.
    .turnin 24776 >>Turn in The Rise of the Darkspear
    .accept 24777 >>Accept The Basics: Hitting Things
    .target Ortezza
step << Priest
    .goto 463,58.04,49.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tunari|r.
    .turnin 24782 >>Turn in The Rise of the Darkspear
    .accept 24783 >>Accept The Basics: Hitting Things
    .target Tunari
step << Warlock
    .goto 463,50.04,49.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Voldreka|r.
    .turnin 26272 >>Turn in The Rise of the Darkspear
    .accept 26273 >>Accept The Basics: Hitting Things
    .target Voldreka
--X Currently has phasing issues, need to relog to make him show
step << Monk
    .goto 463,52.55,53.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zabrax|r.
    .turnin 31159 >>Turn in The Rise of the Darkspear
    .accept 31158 >>Accept The Basics: Hitting Things
    .target Zabrax
step
    #loop
    .goto 463,52.20,54.49,15,0 << Warrior
    .goto 463,51.67,53.56,15,0 << Warrior
    .goto 463,60.90,52.87,20,0 << Mage
    .goto 463,58.92,53.59,15,0 << Mage
    .goto 463,49.82,54.17,20,0 << Shaman
    .goto 463,50.35,48.82,20,0 << Warlock
    .goto 463,58.83,53.72,20,0 << Druid
    .goto 463,57.35,55.29,20,0 << Druid
    .goto 463,52.97,49.26,15,0 << Rogue
    .goto 463,52.89,50.69,15,0 << Rogue
    .goto 463,56.65,49.54,15,0 << Hunter
    .goto 463,55.92,50.76,15,0 << Hunter
    .goto 463,58.78,47.98 << Priest
    .goto 463,49.44,52.23 << Warlock/Shaman
    .goto 463,52.89,50.69,15,0 << Monk
    .goto 463,52.96,53.08,15,0 << Monk
    >>Kill the |cRXP_ENEMY_Tiki Targets|r.
    .complete 24639,1 << Warrior --6/6 Tiki Target slain
    .complete 24751,1 << Mage --6/6 Tiki Target slain
    .complete 24759,1 << Shaman --6/6 Tiki Target slain
    .complete 24765,1 << Druid --6/6 Tiki Target slain
    .complete 24771,1 << Rogue --6/6 Tiki Target slain
    .complete 24777,1 << Hunter --6/6 Tiki Target slain
    .complete 24783,1 << Priest --6/6 Tiki Target slain
    .complete 26273,1 << Warlock --6/6 Tiki Target slain
    .complete 31158,1 << Monk --6/6 Tiki Target slain
    .mob Tiki Target
step << Warrior
    .goto 463,52.55,53.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nortet|r.
    .turnin 24639 >>Turn in The Basics: Hitting Things
    .accept 24641 >>Accept A Rough Start
    .target Nortet
step << Mage
    .goto 463,59.71,52.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soratha|r.
    .turnin 24751 >>Turn in The Basics: Hitting Things
    .accept 24753 >>Accept A Rough Start
    .target Soratha
step << Shaman
    .goto 463,50.06,52.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nekali|r.
    .turnin 24759 >>Turn in The Basics: Hitting Things
    .accept 24761 >>Accept A Rough Start
step << Druid
    .goto 463,58.06,54.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zen'tabra|r.
    .turnin 24765 >>Turn in The Basics: Hitting Things
    .accept 24767 >>Accept A Rough Start
    .target Zen'tabra
step << Rogue
    .goto 463,52.90,49.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legati|r.
    .turnin 24771 >>Turn in The Basics: Hitting Things
    .accept 24773 >>Accept A Rough Start
    .target Legati
step << Hunter
    .goto 463,56.4,50.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ortezza|r.
    .turnin 24777 >>Turn in The Basics: Hitting Things
    .accept 24779 >>Accept A Rough Start
    .target Ortezza
step << Priest
    .goto 463,58.04,49.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tunari|r.
    .turnin 24783 >>Turn in The Basics: Hitting Things
    .accept 24785 >>Accept A Rough Start
    .target Tunari
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Voldreka|r.
    .goto 463,50.04,49.93
    .turnin 26273 >>Turn in The Basics: Hitting Things
    .accept 26275 >>Accept A Rough Start
    .target Voldreka
step << Monk
    .goto 463,52.55,53.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zabrax|r.
    .turnin 31158 >>Turn in The Basics: Hitting Things
    .accept 31160 >>Accept A Rough Start
    .target Zabrax
step << Warrior
    .goto 463,49.55,59.41,20,0
    .goto 463,52.07,61.40,20,0
    .goto 463,55.33,59.93
    >>Kill |cRXP_ENEMY_Wildmane Cats|r. Loot them for their [|cRXP_LOOT_Pelts|r].
    .complete 24641,1 --6/6 Wildmane Cat Pelt
    .mob Wildmane Cat
step << Mage
    .goto 463,62.91,48.23,10,0
    .goto 463,62.71,56.70
    >>Kill |cRXP_ENEMY_Wildmane Cats|r. Loot them for their [|cRXP_LOOT_Pelts|r].
    .complete 24753,1 --6/6 Wildmane Cat Pelt
    .mob Wildmane Cat
step << Shaman
    .goto 463,47.46,51.74,10,0
    .goto 463,48.06,46.84,10,0
    .goto 463,49.87,41.43,10,0
    >>Kill |cRXP_ENEMY_Wildmane Cats|r. Loot them for their [|cRXP_LOOT_Pelts|r].
    .complete 24761,1 --6/6 Wildmane Cat Pelt
    .mob Wildmane Cat
step << Druid
    .goto 463,63.12,57.25,10,0
    .goto 463,62.68,50.67,10,0
    .goto 463,62.87,47.90
    >>Kill |cRXP_ENEMY_Wildmane Cats|r. Loot them for their [|cRXP_LOOT_Pelts|r].
    .complete 24767,1 --6/6 Wildmane Cat Pelt
    .mob Wildmane Cat
step << Rogue
    .goto 463,48.82,43.95,10,0
    .goto 463,50.89,40.74
    >>Kill |cRXP_ENEMY_Wildmane Cats|r. Loot them for their [|cRXP_LOOT_Pelts|r].
    .complete 24773,1 --6/6 Wildmane Cat Pelt
    .mob Wildmane Cat
step << Hunter
    .goto 463,55.41,41.56
    >>Kill |cRXP_ENEMY_Wildmane Cats|r. Loot them for their [|cRXP_LOOT_Pelts|r].
    .complete 24779,1 --6/6 Wildmane Cat Pelt
    .mob Wildmane Cat
step << Priest
    .goto 463,55.42,41.49
    >>Kill |cRXP_ENEMY_Wildmane Cats|r. Loot them for their [|cRXP_LOOT_Pelts|r].
    .complete 24785,1 --6/6 Wildmane Cat Pelt
    .mob Wildmane Cat
step << Warlock
    .goto 463,49.05,44.40,10,0
    .goto 463,50.84,41.86
    >>Kill |cRXP_ENEMY_Wildmane Cats|r. Loot them for their [|cRXP_LOOT_Pelts|r].
    .complete 26275,1 --6/6 Wildmane Cat Pelt
    .mob Wildmane Cat
step << Monk
    .goto 463,48.82,43.95,10,0
    .goto 463,50.89,40.74
    >>Kill |cRXP_ENEMY_Wildmane Cats|r. Loot them for their [|cRXP_LOOT_Pelts|r].
    .complete 31160,1 --6/6 Wildmane Cat Pelt
    .mob Wildmane Cat
step << Warrior
    .goto 463,52.55,53.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nortet|r.
    .turnin 24641 >>Turn in A Rough Start
    .accept 24642 >>Accept Proving Pit
    .target Nortet
step << Mage
    .goto 463,59.71,52.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soratha|r.
    .turnin 24753 >>Turn in A Rough Start
    .accept 24754 >>Accept Proving Pit
    .target Soratha
step << Shaman
    .goto 463,50.06,52.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nekali|r.
    .turnin 24761 >>Turn in A Rough Start
    .accept 24762 >>Accept Proving Pit
    .target Nekali
step << Druid
    .goto 463,58.06,54.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zen'tabra|r.
    .turnin 24767 >>Turn in A Rough StartMage
    .accept 24768 >>Accept Proving Pit
    .target Zen'tabra
step << Rogue
    .goto 463,52.90,49.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legati|r.
    .turnin 24773 >>Turn in A Rough Start
    .accept 24774 >>Accept Proving Pit
    .target Legati
step << Hunter
    .goto 463,56.4,50.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ortezza|r.
    .turnin 24779 >>Turn in A Rough Start
    .accept 24780 >>Accept Proving Pit
    .target Ortezza
step << Priest
    .goto 463,58.04,49.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tunari|r.
    .turnin 24785 >>Turn in A Rough Start
    .accept 24786 >>Accept Proving Pit
    .target Tunari
step << Warlock
    .goto 463,50.04,49.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Voldreka|r.
    .turnin 26275 >>Turn in A Rough Start
    .accept 26276 >>Accept Proving Pit
    .target Voldreka
step << Monk
    .goto 463,52.55,53.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zabrax|r.
    .turnin 31160 >>Turn in A Rough Start
    .accept 31161 >>Accept Proving Pit
    .target Zabrax
step << Warrior
    .goto 463,51.94,51.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darkspear Jailor|r.
    .complete 24642,1 --1/1 Speak to a Darkspear Jailor
    .target Darkspear Jailor
    .skipgossip
step << Mage
    .goto 463,57.50,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darkspear Jailor|r.
    .complete 24754,1 --1/1 Speak to a Darkspear Jailor
    .target Darkspear Jailor
    .skipgossip
step << Shaman
    .goto 463,51.94,51.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darkspear Jailor|r.
    .complete 24762,1 --1/1 Speak to a Darkspear Jailor
    .target Darkspear Jailor
    .skipgossip
step << Druid
    .goto 463,57.49,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darkspear Jailor|r.
    .complete 24768,1 --1/1 Speak to a Darkspear Jailor
    .target Darkspear Jailor
    .skipgossip
step << Rogue
    .goto 463,51.94,51.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darkspear Jailor|r.
    .complete 24774,1 --1/1 Speak to a Darkspear Jailor
    .target Darkspear Jailor
    .skipgossip
step << Hunter
    .goto 463,57.49,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darkspear Jailor|r.
    .complete 24780,1 --1/1 Speak to a Darkspear Jailor
    .target Darkspear Jailor
    .skipgossip
step << Priest
    .goto 463,57.47,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darkspear Jailor|r.
    .complete 24786,1 --1/1 Speak to a Darkspear Jailor
    .skipgossip
    .target Darkspear Jailor
step << Troll Warlock
    #completewith next
    .cast 688 >> Cast "Summon Imp" to summon your Imp
step << Warlock
    .goto 463,51.94,51.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darkspear Jailor|r.
    .complete 26276,1 --1/1 Speak to a Darkspear Jailor
    .skipgossip
    .target Darkspear Jailor
step << Monk
    .goto 463,51.94,51.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darkspear Jailor|r.
    .complete 31161,1 --1/1 Speak to a Darkspear Jailor
    .skipgossip
    .target Darkspear Jailor
step << Warrior
    >>Kill the |cRXP_ENEMY_Captive Spitescale Scout|r.
    .goto 463,51.15,51.29
    .complete 24642,2 --1/1 Captive Spitescale Scout slain
    .mob Captive Spitescale Scout
step << Mage
    >>Kill the |cRXP_ENEMY_Captive Spitescale Scout|r.
    .goto 463,57.28,51.84,10,0
    .goto 463,58.06,51.54
    .complete 24754,2 --1/1 Captive Spitescale Scout slain
    .mob Captive Spitescale Scout
step << Shaman
    >>Kill the |cRXP_ENEMY_Captive Spitescale Scout|r.
    .goto 463,50.68,51.91
    .complete 24762,2 --1/1 Captive Spitescale Scout slain
    .mob Captive Spitescale Scout
step << Druid
    >>Kill the |cRXP_ENEMY_Captive Spitescale Scout|r.
    .goto 463,57,28,51.82
    .complete 24768,2 --1/1 Captive Spitescale Scout slain
    .mob Captive Spitescale Scout
step << Rogue
    >>Kill the |cRXP_ENEMY_Captive Spitescale Scout|r.
    .goto 463,51.15,51.28
    .complete 24774,2 --1/1 Captive Spitescale Scout slain
    .mob Captive Spitescale Scout
step << Hunter
    >>Kill the |cRXP_ENEMY_Captive Spitescale Scout|r.
    .goto 463,57.29,51.80
    .complete 24780,2 --1/1 Captive Spitescale Scout slain
    .mob Captive Spitescale Scout
step << Priest
    >>Kill the |cRXP_ENEMY_Captive Spitescale Scout|r.
    .goto 463,57.29,51.82
    .complete 24786,2 --1/1 Captive Spitescale Scout slain
    .mob Captive Spitescale Scout
step << Warlock
    >>Kill the |cRXP_ENEMY_Captive Spitescale Scout|r.
    .goto 463,50.69,51.88
    .complete 26276,2 --1/1 Captive Spitescale Scout slain
    .mob Captive Spitescale Scout
step << Monk
    >>Kill the |cRXP_ENEMY_Captive Spitescale Scout|r.
    .goto 463,50.69,51.88
    .complete 26276,2 --1/1 Captive Spitescale Scout slain
    .mob Captive Spitescale Scout
step << Warrior
    .goto 463,51.45,52.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nortet|r.
    .turnin 24642 >>Turn in Proving Pit
    .accept 24643 >>Accept More Than Expected
    .target Nortet
step << Mage
    .goto 463,58.20,51.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soratha|r.
    .turnin 24754 >>Turn in Proving Pit
    .accept 24755 >>Accept More Than Expected
    .target Soratha
step << Shaman
    .goto 463,50.71,52.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nekali|r.
    .turnin 24762 >>Turn in Proving Pit
    .accept 24763 >>Accept More Than Expected
    .target Nekali
step << Druid
    .goto 463,57.66,52.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zen'tabra|r.
    .turnin 24768 >>Turn in Proving PitMage
    .accept 24769 >>Accept More Than Expected
    .target Zen'tabra
step << Rogue
    .goto 463,51.95,51.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legati|r.
    .turnin 24774 >>Turn in Proving Pit
    .accept 24775 >>Accept More Than Expected
    .target Legati
step << Hunter
    .goto 463,57.22,50.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ortezza|r.
    .turnin 24780 >>Turn in Proving Pit
    .accept 24781 >>Accept More Than Expected
    .target Ortezza
step << Priest
    .goto 463,57.38,50.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tunari|r.
    .turnin 24786 >>Turn in Proving Pit
    .accept 24787 >>Accept More Than Expected
    .target Tunari
step << Warlock
    .goto 463,50.69,51.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Voldreka|r.
    .turnin 26276 >>Turn in Proving Pit
    .accept 26277 >>Accept More Than Expected
    .target Voldreka
step << Monk
    .goto 463,52.55,53.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zabrax|r.
    .turnin 31161 >>Turn in Proving Pit
    .accept 31163 >>Accept More Than Expected
    .target Zabrax
step
    .goto 463,61.57,65.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vol'jin|r.
    .turnin 24643 >>Turn in More Than Expected << Warrior
    .turnin 24755 >>Turn in More Than Expected << Mage
    .turnin 24763 >>Turn in More Than Expected << Shaman
    .turnin 24769 >>Turn in More Than Expected << Druid
    .turnin 24775 >>Turn in More Than Expected << Rogue
    .turnin 24781 >>Turn in More Than Expected << Hunter
    .turnin 24787 >>Turn in More Than Expected << Priest
    .turnin 26277 >>Turn in More Than Expected << Warlock
    .turnin 31163 >>Turn in More Than Expected << Monk
    .accept 25064 >>Accept Moraya
    .target Vol'jin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tora'jin|r and |cRXP_FRIENDLY_Moraya|r.
    .accept 25037 >>Accept Crab Fishin'
    .goto 463,60.52,62.87
    .turnin 25064 >>Turn in Moraya
    .accept 24622 >>Accept A Troll's Truest Companion
    .goto 463,56.82,63.69
    .target Tora'jin
    .target Moraya
step
    .itemcount 132516,1
    #completewith next
    .cast 202844 >>Use |T1405809:0|t[Gunshoes]
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kijara|r. (she patrols around), then talk to |cRXP_FRIENDLY_Tegashi|r.
    .turnin 24622 >>Turn in A Troll's Truest Companion
    .accept 24623 >>Accept Saving the Young
    .goto 463,50.42,66.82,30,0
    .goto 463,45.27,85.38
    .accept 24624 >>Accept Mercy for the Lost
    .accept 24625 >>Accept Consort of the Sea Witch
    .goto 463,45.73,85.00
    .target Kijara
    .target Tegashi
step
    #completewith Bloodtalons
    #label EchoIslesBloodtalonsRescued
    .goto 463,38.01,67.58,25,0
    >>Use the |T132161:0|t[Bloodtalon Whistle] near Bloodtalon Hatchlings to rescue them
    .complete 24623,1 --12/12 Bloodtalon Hatchlings rescued
    .use 52283
step
	#completewith next
    .goto 463,38.82,72.57,0
    >>Kill |cRXP_ENEMY_Corrupted Bloodtalons|r.
    .complete 24624,1 --8/8 Corrupted Bloodtalon slain
    .mob Corrupted Bloodtalon
step
    .goto 463,36.72,69.04
    >>Kill |cRXP_ENEMY_Naj'tess|r. Loot him for the |T332402:0|t[|cRXP_LOOT_Naj'tess' Orb of Corruption|r].
    .complete 24625,1 --1/1 Naj'tess' Orb of Corruption
    .mob Naj'tess
step
	#label Bloodtalons
    #loop
	.line 463,34.04,70.60,36.60,69.56,38.51,66.20,40.18,69.15,40.05,71.23,39.37,74.83,38.41,73.07,36.67,73.48,35.14,73.49,36.60,69.56
	.goto 463,34.04,70.60,30,0
	.goto 463,36.60,69.56,30,0
	.goto 463,38.51,66.20,30,0
	.goto 463,40.18,69.15,30,0
	.goto 463,40.05,71.23,30,0
	.goto 463,39.37,74.83,30,0
	.goto 463,38.41,73.07,30,0
	.goto 463,36.67,73.48,30,0
	.goto 463,35.14,73.49,30,0
	.goto 463,36.60,69.56,30,0
    >>Kill |cRXP_ENEMY_Corrupted Bloodtalons|r.
    .complete 24624,1 --8/8 Corrupted Bloodtalon slain
    .mob Corrupted Bloodtalon
step
#loop
	.line 463,36.60,69.56,38.51,66.20,40.18,69.15,40.05,71.23,39.37,74.83,38.41,73.07,36.67,73.48,35.14,73.49,36.60,69.56
	.goto 463,36.60,69.56,30,0
	.goto 463,38.51,66.20,30,0
	.goto 463,40.18,69.15,30,0
	.goto 463,40.05,71.23,30,0
	.goto 463,39.37,74.83,30,0
	.goto 463,38.41,73.07,30,0
	.goto 463,36.67,73.48,30,0
	.goto 463,35.14,73.49,30,0
	.goto 463,36.60,69.56,30,0
    >>Use the |T132161:0|t[Bloodtalon Whistle] near Bloodtalon Hatchlings to rescue them
    .complete 24623,1 --12/12 Bloodtalon Hatchlings rescued
    .use 52283
step
	#completewith next
    >>Kill |cRXP_ENEMY_Pygmy Surf Crawlers|r on your way back. Loot them for the |T134007:0|t[|cRXP_LOOT_Fresh Crawler Meat|r].
    .complete 25037,1 --5/5 Fresh Crawler Meat
    .mob Pygmy Surf Crawler
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tegashi|r and |cRXP_FRIENDLY_Kijara|r.
    .turnin 24625 >>Turn in Consort of the Sea Witch
    .turnin 24624 >>Turn in Mercy for the Lost
    .goto 463,45.73,85.00
    .turnin 24623 >>Turn in Saving the Young
    .accept 24626 >>Accept Young and Vicious
    .goto 463,45.27,85.38
    .target Tegashi
    .target Kijara
step
    #loop
	.line 463,45.93,86.53,46.15,88.00,43.81,88.49,43.46,91.82,44.25,91.93,45.27,89.85,45.95,89.71,46.91,93.18,47.68,92.85,47.84,88.58,48.45,90.12,47.51,88.96,47.42,86.91,46.21,85.10,46.03,83.83,44.17,82.86,42.43,83.12,41.15,85.98,40.87,88.56,42.30,88.10,43.60,85.27,44.56,85.10,45.93,86.53
    .goto 463,45.93,86.53,30,0
    .goto 463,44.56,85.10,30,0
    .goto 463,43.60,85.27,30,0
    .goto 463,42.30,88.10,30,0
    .goto 463,40.87,88.56,30,0
    .goto 463,41.15,85.98,30,0
    .goto 463,42.43,83.12,30,0
    .goto 463,44.17,82.86,30,0
    .goto 463,46.03,83.83,30,0
    .goto 463,46.21,85.10,30,0
    .goto 463,47.42,86.91,30,0
    .goto 463,47.51,88.96,30,0
    .goto 463,48.45,90.12,30,0
    .goto 463,47.84,88.58,30,0
    .goto 463,47.68,92.85,30,0
    .goto 463,46.91,93.18,30,0
    .goto 463,45.95,89.71,30,0
    .goto 463,45.27,89.85,30,0
    .goto 463,44.25,91.93,30,0
    .goto 463,43.46,91.82,30,0
    .goto 463,43.81,88.49,30,0
    .goto 463,46.15,88.00,30,0
    >>Use the |T134326:0|t[Bloodtalon Lasso] on |cRXP_FRIENDLY_Swiftclaw|r. He spawns next to you and then runs counter-clockwise around the island.
    .complete 24626,1 --1/1 Capture Swiftclaw
	.unitscan Swiftclaw
    .use 50053
step
    .goto 463,50.42,66.82,40,0
    .goto 463,53.21,65.40
    >>Ride |cRXP_FRIENDLY_Swiftclaw|r back to the |cRXP_PICK_Raptor Pen|r.
    .complete 24626,2 --1/1 Return Swiftclaw to the Raptor Pens
step << Hunter Troll
    #completewith TrollBreakingtheLine
    .goto 463,53.03,65.42
    .cast 1515 >>|cRXP_WARN_Tame a |cRXP_ENEMY_Bloodtalon Raptor|r with your |T132164:0|t[Tame Beast] ability|r.
    .mob Bloodtalon Raptor
step
    #loop
    .goto 463,52.87,71.28,40,0
    .goto 463,58.36,70.75,30,0
    >>Kill |cRXP_ENEMY_Pygmy Surf Crawlers|r. Loot them for their [|cRXP_LOOT_Meat|r].
    .complete 25037,1 --5/5 Fresh Crawler Meat
    .mob Pygmy Surf Crawler
step << Troll
    #label TrollBreakingtheLine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moraya|r, |cRXP_FRIENDLY_Tortunga|r, and |cRXP_FRIENDLY_Tora'jin|r.
    .turnin 24626 >>Turn in Young and Vicious
    .goto 463,56.82,63.69
    .accept 25035 >>Accept Breaking the Line
    .goto 463,58.97,66.85
    .turnin 25037 >>Turn in Crab Fishin'
    .goto 463,60.52,62.87
    .xp >10-1400,1
    .target Moraya
    .target Tortunga
    .target Tora'jin
--XX was 1600
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moraya|r, |cRXP_FRIENDLY_Tortunga|r, and |cRXP_FRIENDLY_Tora'jin|r. << Orc
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moraya|r and |cRXP_FRIENDLY_Tora'jin|r. << Troll
    .turnin 24626 >>Turn in Young and Vicious
    .goto 463,56.82,63.69
    .accept 25035 >>Accept Breaking the Line << Orc
    .goto 463,58.97,66.85 << Orc
    .turnin 25037 >>Turn in Crab Fishin'
    .goto 463,60.52,62.87
    .target Moraya
    .target Tora'jin
step
    .goto 463,58.90,23.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morakki|r.
    .turnin 25035 >>Turn in Breaking the Line
    .accept 24812 >>Accept No More Mercy
    .accept 24813 >>Accept Territorial Fetish
	.isOnQuest 25035
    .xp 10,1
    .target Morakki
step
    .goto 463,58.90,23.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morakki|r.
    .accept 24812 >>Accept No More Mercy
    .accept 24813 >>Accept Territorial Fetish
	.isQuestTurnedIn 25035
    .target Morakki
step
    #sticky
    #label EchoingIslesSpitescaleNagas
    >>Kill |cRXP_ENEMY_Spitescale Nagas|r while placing the [|cRXP_LOOT_Territorial Fetishes|r].
    .goto 464,58.0,46.3,0,0
    .complete 24812,1 --12/12 Spitescale Naga
	.isQuestTurnedIn 25035
step
    >>Use the |T132482:0|t[Territorial Fetish] next to |cRXP_PICK_Spitescale Flags|r. The fetishes despawn after a while and you can place them again.
    .goto 464,61.97,71.50,10,0
    .goto 464,66.21,58.45,10,0
    .goto 464,68.96,40.94,10,0
    .goto 464,61.30,39.97,10,0
    .goto 464,56.63,44.08,10,0
    .goto 464,61.97,71.50,10,0
    .goto 464,62.32,28.54,10,0
    .goto 464,70.05,27.89,10,0
    .goto 464,77.46,16.94,10,0
    .goto 464,72.44,43.92,10,0
    .goto 464,77.81,47.26,10,0
    .goto 464,73.25,55.40,10,0
    .goto 464,76.82,63.45,10,0
    .goto 464,67.34,78.51,10,0
    .goto 464,52.47,61.80,10,0
    .goto 464,71.26,73.84,15,0
    .goto 464,69.36,30.91,15,0
    .use 52065
    .complete 24813,1 --8/8 Territorial Fetish placed
	.isQuestTurnedIn 25035
step
    #requires EchoingIslesSpitescaleNagas
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morakki|r.
    .goto 463,58.90,23.08
    .turnin 24812 >>Turn in No More Mercy
    .turnin 24813 >>Turn in Territorial Fetish
	.isQuestTurnedIn 25035
    .target Morakki
step << Orc
    .nodmf
    #completewith next
    .hs >>Hearth to Valley of Trials
step << Orc
    .nodmf
    #completewith next
    .goto 1,45.37,56.22,20,0
    .goto 2,61.50,65.13,20,0
    .goto 2,57.97,30.96,-1
    .goto 1,53.50,44.43,-1
    >>Run to the end of the cave
    .deathskip >>Pull as many mobs as you can, then die and respawn at the Spirit Healer << !Hunter !Warlock
    .deathskip >>|cRXP_WARN_Set your pet to passive|r. Pull as many mobs as you can, then die and respawn at the Spirit Healer << Hunter/Warlock
step << Orc
    #completewith next
    .goto 1,53.10,43.58,-1
    .goto 1,55.38,63.34,-1
    .fly Orgrimmar >>Fly to Orgrimmar
]])

--Tauren Camp Narache
RXPGuides.RegisterGuide([[
#retail
#version 2
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(1-80)|r Default
#name ab) Camp Narache
#displayname Camp Narache |cRXP_ENEMY_(Alternative)|r
#next ac) Tauren Camp Mulgore
#defaultfor Tauren !DK

<< Horde

step << Tauren
    .zoneskip 1727
    #completewith MulgoreFirstQuestCheck
    +Welcome to the |cfff78300Tauren Starting Zone|r. Guide of RestedXP.
    *This route is roughly 10-20 minutes slower than |cfff78300Exiles Reach|r. For faster leveling recreate your character and choose |cfff78300Exiles Reach|r instead.
step << Tauren
    .zoneskip 1727,1
    +You are in Exiles Reach but the current Guide is for the |cfff78300Undead Starting Zone|r.
    +Please choose the |cfff78300Exiles Reach Guide|r.
step
    #completewith next
    +|cRXP_WARN_If you want to make the most of RXP; Press Escape -> Options -> Keybindings -> RestedXP Guides -> Select and Bind Active Button 1,2,3 and 4. You can also do this with Targets|r.
    *This will allow you to press a Keybind to use a Quest Items/target a relevant mob
step
    #label MulgoreFirstQuestCheck
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Hawkwind|r.
    .goto 462,27.7,28.2
    .accept 14449 >>Accept The First Step
    .target Chief Hawkwind
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grull Hawkwind|r.
    .goto 462,39.45,37.25
    .turnin 14449 >>Turn in The First Step
    .accept 14452 >>Accept Rite of Strength
    .target Grull Hawkwind
step
    >>Kill fighting |cRXP_ENEMY_Bristleback Invaders|r.
    .goto 462,40.93,35.68,15,0
    .goto 462,42.01,32.95,15,0
    .goto 462,44.65,34.68,15,0
    .goto 462,44.40,37.15,15,0
    .goto 462,40.81,38.19
    .complete 14452,1 --6/6 Bristleback Invaders slain
    .mob Bristleback Invader
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grull Hawkwind|r.
    .goto 462,39.45,37.25
    .turnin 14452 >>Turn in Rite of Strength
    .accept 24852 >>Accept Our Tribe, Imprisoned
    .target Grull Hawkwind
step
    #title Brave Freed 1
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tOpen the |cRXP_PICK_Quilboar Cage|r.
    .goto 462,49.39,35.39
    .complete 24852,1,1 --4/4 Braves Freed
step
    #title Brave Freed 2
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tOpen the |cRXP_PICK_Quilboar Cage|r.
    .goto 462,49.07,36.97
    .complete 24852,1,2 --4/4 Braves Freed
step
    #title Brave Freed 3
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tOpen the |cRXP_PICK_Quilboar Cage|r.
    .goto 462,49.32,42.12
    .complete 24852,1,3 --4/4 Braves Freed
step
    #title Brave Freed 4
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tOpen the |cRXP_PICK_Quilboar Cage|r.
    .goto 462,49.07,43.80
    .complete 24852,1,4 --4/4 Braves Freed
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grull Hawkwind|r.
    .goto 462,39.45,37.25
    .turnin 24852 >>Turn in Our Tribe, Imprisoned
    .accept 14458 >>Accept Go to Adana
    .target Grull Hawkwind
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adana Thunderhorn|r.
    .goto 462,30.9,50.6
    .turnin 14458 >>Turn in Go to Adana
    .accept 14456 >>Accept Rite of Courage
    .accept 14455 >>Accept Stop the Thorncallers
    .target Adana Thunderhorn
step
    #completewith next
    >>Kill |cRXP_ENEMY_Bristleback Gun Thiefs|r. Loot the thiefs for their [|cRXP_LOOT_stolen rifles|r].
    .complete 14456,1 --7/7 Stolen Rifle
    .mob Bristleback Gun Thief
step
    >>Kill |cRXP_ENEMY_Bristleback Thorncallers|r.
    .goto 462,32.82,63.39,15,0
    .goto 462,31.86,68.99,15,0
    .goto 462,34.93,70.00,15,0
    .goto 462,36.56,67.73
    .complete 14455,1 --7/7 Bristleback Thorncaller slain
    .mob Bristleback Thorncaller
step
    >>Kill |cRXP_ENEMY_Bristleback Gun Thiefs|r. Loot the thiefs for their [|cRXP_LOOT_stolen rifles|r].
    .goto 462,36.18,61.12,15,0
    .goto 462,32.81,63.11
    .complete 14456,1 --7/7 Stolen Rifle
    .mob Bristleback Gun Thief
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adana Thunderhorn|r.
    .goto 462,30.9,50.6
    .turnin 14456 >>Turn in Rite of Courage
    .turnin 14455 >>Turn in Stop the Thorncallers
    .accept 14459 >>Accept The Battleboars
    .accept 14461 >>Accept Feed of Evil
    .target Adana Thunderhorn
step
    #sticky
    #label mulgoreAmoredBattleboar
    >>Kill |cRXP_ENEMY_Armored Battleboars|r.
    .goto 462,26.78,68.79,0,0
    .complete 14459,1 --10/10 Armored Battleboar slain
    .mob Armored Battleboar
step
    >>Use |T135432:0|t[Adana's Torch] next to the [|cRXP_LOOT_trough|r].
    .use 49539
    .goto 462,26.37,66.33
    .complete 14461,1 --1/1 First Trough
step
    >>Use |T135432:0|t[Adana's Torch] next to the [|cRXP_LOOT_trough|r].
    .use 49539
    .goto 462,25.12,69.15
    .complete 14461,2 --1/1 Second Trough
step
    #label QuestKeybindingsTauren
    >>Use |T135432:0|t[Adana's Torch] next to the [|cRXP_LOOT_trough|r].
    .use 49539
    .goto 462,28.2,70.4
    .complete 14461,3 --1/1 Third Trough
step
    #requires mulgoreAmoredBattleboar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adana Thunderhorn|r.
    .goto 462,30.9,50.6
    .turnin 14459 >>Turn in The Battleboars
    .turnin 14461 >>Turn in Feed of Evil
    .accept 14460 >>Accept Rite of Honor
    .target Adana Thunderhorn
step
    >>Kill |cRXP_ENEMY_Chief Squealer Thornmantle|r. Loot him for his [|cRXP_LOOT_mantle|r].
    .goto 462,15.20,46.73
    .complete 14460,1 --1/1 Mane of Thornmantle
    .mob Chief Squealer Thornmantle
step << Hunter
    #completewith next
    .goto 462,23.69,38.27,25,0
    .cast 1515 >>Tame a |cRXP_ENEMY_Plainstrider|r.
    .mob Plainstrider
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Hawkwind|r.
    .goto 462,27.7,28.3
    .turnin 14460 >>Turn in Rite of Honor
    .accept 24861 >>Accept Last Rites, First Rites
    .target Chief Hawkwind
step
    >>Use the |T132813:0|t[Water Pitcher]
    .goto 462,27.7,28.3
    .use 50465
    .complete 24861,1 --1/1 Offering Placed
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Hawkwind|r.
    .goto 462,27.7,28.3
    .turnin 24861 >>Turn in Last Rites, First Rites
    .accept 23733 >>Accept Rites of the Earthmother
    .target Chief Hawkwind
step
    #completewith next
    .goto 462,19.24,33.81,10,0
    .goto 462,11.91,27.64,10,0
    .goto 462,12.50,29.17,8 >>Follow the way up the mountain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dyami Windsoar|r on top of the mountain.
    .goto 462,15.63,30.26
    .turnin 23733 >>Turn in Rites of the Earthmother
    .accept 24215 >>Accept Rite of the Winds
    .target Dyami Windsoar
step
    #completewith next
    .goto 462,15.40,27.68,10,0
    .goto 462,15.44,25.29,20,0
    .deathskip >>Follow the arrow by jumping off the mountain, die and release your spirit
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur Raincaller|r.
    .goto 7,47.16,56.66
    .accept 26188 >>Accept Mazzranache
    .target Maur Raincaller
]])

--Tauren Camp Mulgore
RXPGuides.RegisterGuide([[
#retail
#version 2
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(1-80)|r Default
#name ac) Tauren Camp Mulgore
#displayname |cFF00CCFF2|r - Mulgore
#next
#defaultfor Tauren !DK

<< Horde

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur Raincaller|r.
    .goto 7,47.16,56.66
    .accept 26188 >>Accept Mazzranache
    .target Maur Raincaller
step << Hunter/Warlock
    #completewith MulgoreABundleofHidesAccept
    +|cRXP_WARN_Reminder: Resummon your pet after a deathskip|r.
step
    #completewith next
    .goto 7,46.53,58.17,5 >>Enter the tent
step
    #label MulgoreABundleofHidesAccept
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Varg Windwhisper|r inside the tent.
    .goto 7,46.06,58.19
    .accept 6361 >>Accept A Bundle of Hides
    .target Varg Windwhisper
step
    #completewith next
    .goto 7,47.44,58.64
    .fp >>Get the Bloodhoof Village Flight Path
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tak|r.
    .turnin 6361 >>Turn in A Bundle of Hides
    .accept 6362 >>Accept Ride to Thunder Bluff
    .target Tak
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harken Windtotem|r.
    .goto 7,48.78,58.79
    .accept 761 >>Accept Swoop Hunting
    .target Harken Windtotem
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull Thunderhorn|r.
    .goto 7,48.61,59.8
    .accept 20440 >>Accept Poison Water
    .target Mull Thunderhorn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ahmo Thunderhorn|r.
    .isQuestComplete 24215
    .goto 7,47.65,59.58
    .turnin 24215 >>Turn in Rite of the Winds
    .target Ahmo Thunderhorn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ahmo Thunderhorn|r.
    .goto 7,47.65,59.58
    .accept 14438 >>Accept Sharing the Land
    .accept 24459 >>Accept Morin Cloudstalker
    .target Ahmo Thunderhorn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruul Eagletalon|r.
    .goto 7,47.50,61.33
    .accept 743 >>Accept Dangers of the Windfury
    .target Ruul Eagletalon
step
    #completewith next
    >>Kill |cRXP_ENEMY_Plainstrider|r and |cff00ecffWolfs|r. Loot them for their [|cRXP_LOOT_talons/paws|r].
    .complete 20440,2 --4/4 Plainstrider Talon
    .complete 20440,1 --6/6 Prairie Wolf Paw
    .mob Adult Plainstrider
    .mob Prairie Wolf
step
    >>Kill |cRXP_ENEMY_Palemane Gnolls|r.
    >>Keep an eye out for |cRXP_ENEMY_Snagglespear|r and |cRXP_ENEMY_Arra'chea|r.
    .goto 7,48.44,70.79,30,0
    .goto 7,53.35,71.71
    .complete 14438,1 --15/15 Palemane Gnolls
    .mob Palemane Gnoll
step
    #completewith MulgorePoisonedWater
    >>Kill |cRXP_ENEMY_Swoops|r. Loot them for their [|cRXP_LOOT_quills|r].
    >>You don't need to complete this quest at this point
    .complete 761,1 --8/8 Trophy Swoop Quill
    .mob Swoop
step
    >>Kill |cRXP_ENEMY_Plainstrider|r and |cff00ecffWolfs|r. Loot them for their [|cRXP_LOOT_talons/paws|r].
    .goto 7,53.65,68.34,30,0
    .goto 7,50.30,65.51,30,0
    .goto 7,51.92,62.67
    .complete 20440,2 --4/4 Plainstrider Talon
    .complete 20440,1 --6/6 Prairie Wolf Paw
    .mob Adult Plainstrider
    .mob Prairie Wolf
step
    #label MulgorePoisonedWater
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull Thunderhorn|r.
    .goto 7,48.62,59.81
    .turnin 20440 >>Turn in Poison Water
    .accept 24440 >>Accept Winterhoof Cleansing
    .target Mull Thunderhorn
step
    >>Use the |T135139:0|t[Winterhoof Cleansing Totem] next to the well
    .goto 7,53.47,65.36
    .use 5411
    .complete 24440,1 --Well Cleansed
step
    #completewith next
    >>Kill |cRXP_ENEMY_Swoops|r. Loot them for their [|cRXP_LOOT_quills|r].
    >>|cRXP_WARN_You don't need to complete this quest at this point|r.
    .goto 7,56.22,63.43,30,0
    .complete 761,1 --8/8 Trophy Swoop Quill
    .mob Swoop
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morin Cloudstalker|r.
    .goto 7,57.06,60.43
    .turnin 24459 >>Turn in Morin Cloudstalker
    .accept 749 >>Accept The Ravaged Caravan
    .target Morin Cloudstalker
step
    #completewith next
    >>Kill |cRXP_ENEMY_Swoops|r. Loot them for their [|cRXP_LOOT_quills|r].
    >>|cRXP_WARN_You don't need to complete this quest at this point|r.
    .complete 761,1 --8/8 Trophy Swoop Quill
    .mob Swoop
step
    .goto 7,53.52,48.28
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the Sealed Supply Crate
    .turnin 749 >>Turn in The Ravaged Caravan
    .accept 751 >>Accept The Ravaged Caravan
step
    .goto 7,57.06,60.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morin Cloudstalker|r.
    .turnin 751 >>Turn in The Ravaged Caravan
    .accept 26179 >>Accept The Venture Co.
    .accept 26180 >>Accept Supervisor Fizsprocket
    .target Morin Cloudstalker
step
    #completewith next
    >>Kill |cRXP_ENEMY_Venture Co. Worker|r.
    >>Keep an eye out for |cRXP_ENEMY_Enforcer Emilgund|r.
    .complete 26179,1 --7/7 Venture Co. Worker slain
    .mob Venture Co. Worker
step
    >>Kill |cRXP_ENEMY_Supervisor Fizsprocket|r. Loot him for the [|cRXP_LOOT_clipboard|r].
    .goto 9,41.79,84.78
    .complete 26180,1 --1/1 Fizsprocket's Clipboard
    .mob Supervisor Fizsprocket
step
    >>Kill |cRXP_ENEMY_Venture Co. Worker|r.
    >>Keep an eye out for |cRXP_ENEMY_Enforcer Emilgund|r.
    .goto 9,45.64,82.31,20,0
    .goto 7,59.09,48.71
    .complete 26179,1 --7/7 Venture Co. Worker slain
    .mob Venture Co. Worker
step
    #completewith MulgorePoisonedWater
    >>Kill |cRXP_ENEMY_Swoops|r. Loot them for their [|cRXP_LOOT_quills|r].
    >>|cRXP_WARN_You don't need to complete this quest at this point|r.
    .complete 761,1 --8/8 Trophy Swoop Quill
    .mob Swoop
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morin Cloudstalker|r.
    .goto 7,57.06,60.43
    .turnin 26179 >>Turn in The Venture Co.
    .turnin 26180 >>Turn in Supervisor Fizsprocket
    .target Morin Cloudstalker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull Thunderhorn|r.
    .goto 7,48.62,59.81
    .turnin 24440 >>Turn in Winterhoof Cleansing
    .accept 24441 >>Accept Thunderhorn Totem
    .target Mull Thunderhorn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ahmo Thunderhorn|r.
    .goto 7,47.65,59.58
    .turnin 14438 >>Turn in Sharing the Land
    .accept 14491 >>Accept The Restless Earth
    .target Ahmo Thunderhorn
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Kauth|r.
    .goto 7,46.82,60.45
    .home >>Set your Hearthstone to Bloodhoof Village
    .target Innkeeper Kauth
step
    .zoneskip 7,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tak|r.
    .goto 7,47.45,58.64
    .fly Thunder Bluff >>Fly to Thunder Bluff
    .target Tak
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tJump down and talk to |cRXP_FRIENDLY_Ahanu|r.
    .goto 88,45.75,55.83
    .turnin 6362 >>Turn in Ride to Thunder Bluff
    .accept 6363 >>Accept Tal the Wind Rider Master
    .target Ahanu
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ahanu|r.
    .goto 88,45.75,55.83
    .vendor
    .target Ahanu
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClimb the tower and talk to |cRXP_FRIENDLY_Tal|r.
    .goto 88,47.03,49.60
    .turnin 6363 >>Turn in Tal the Wind Rider Master
    .accept 6364 >>Accept Return to Varg
    .target Tal
step
    #completewith next
    .goto 88,35.79,63.03,10,0
    .goto 88,32.51,70.74,20 >>Take one of the two elevators downwards. Dying here costs you at least one minute
step
    >>Kill |cRXP_ENEMY_Windfury Wind Witches|r and |cRXP_ENEMY_Windfury Harpies|r. Loot them for their [|cRXP_LOOT_talons|r].
    >>Look out for Doomsayer Wiserunner
    .goto 7,34.20,37.19,20,0
    .goto 7,35.62,39,85,20,0
    .goto 7,34.16,42.45,20,0
    .goto 7,35.34,43.13
    .complete 743,1 --8/8 Windfury Talon
    .mob Windfury Wind Witch
    .mob Windfury Harpy
step
    >>Use the |T133841:0|t[Drum of the Soothed Earth] on |cRXP_ENEMY_Agitated Earth Spirits|r.
    >>Try to use the drum on cooldown. Sometimes the elementals may attack you
    .use 49647
    .goto 7,35.37,46.63,35,0
    .goto 7,32.8,48.5
    .complete 14491,1 --6/6 Spirits Calmed
    .mob Agitated Earth Spirit
step << Hunter/Warlock
    #completewith next
    +|cRXP_WARN_Set your pet to passive by clicking on 'Passive' in your pet bar or in your spell book in the Pet tab|r.
step
    #completewith next
    .goto 7,32.53,49.01
    .deathskip >>Pull some mobs and die
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ahab Wheathoof|r.
    .goto 7,48.34,53.09
    .accept 11129 >>Accept Kyle's Gone Missing!
    .target Ahab Wheathoof
step << Warlock/Hunter
    #completewith next
    +|cRXP_WARN_Reminder:Resummon your pet and set it to back to 'Assist'|r.
step
    #completewith MulgoreCougarStalkerClaws
    >>Kill |cRXP_ENEMY_Flatland Cougars|r. Loot them for their [|cRXP_LOOT_femur|r].
    .complete 26188,1 --1/1 Flatland Cougar Femur
    .mob Flatland Cougar
step
    #completewith MulgoreCougarStalkerClaws
    >>Kill a |cRXP_ENEMY_Plainstrider|r. Loot it for a [|cRXP_LOOT_Tender Stride Meat|r].
    .goto 7,44.71,52.05,0,0
    .collect 33009,1,11129,1
    .mob Adult Plainstrider
step
    #completewith MulgoreCougarStalkerClaws
    >>Kill |cRXP_ENEMY_Wiry Swoops|r. Loot them for their [|cRXP_LOOT_quills|r].
    .complete 761,1 --8/8 Trophy Swoop Quill
    .mob Wiry Swoop
step
    #label MulgoreCougarStalkerClaws
    >>Kill |cRXP_ENEMY_Praeri Stalkers|r and |cRXP_ENEMY_Flatland Cougars|r. Loot them for the [|cRXP_LOOT_claws|r].
    >>Keep an eye out for |cRXP_ENEMY_Mazzranache|r.
    .goto 7,47.18,50.35,15,0
    .goto 7,44.72,48.58,15,0
    .goto 7,42.48,44.81,15,0
    .goto 7,41.65,42.07,15,0
    .goto 7,46.13,39.72,20,0
    .goto 7,47.18,50.35
    .complete 24441,2 --6/6 Cougar Claws
    .complete 24441,1 --6/6 Stalker Claws
    .mob Prairie Stalker
    .mob Flatland Cougar
step
    #completewith TrophySwoopQuill
    >>Kill |cRXP_ENEMY_Flatland Cougars|r. Loot them for their [|cRXP_LOOT_femur|r].
    .complete 26188,1 --1/1 Flatland Cougar Femur
    .mob Flatland Cougar
step
    #completewith TrophySwoopQuill
    >>Kill a |cRXP_ENEMY_Plainstrider|r. Loot it for a [|cRXP_LOOT_Tender Stride Meat|r].
    .goto 7,44.71,52.05,0,0
    .collect 33009,1,11129,1
    .mob Adult Plainstrider
step
    #label TrophySwoopQuill
    >>Kill |cRXP_ENEMY_Wiry Swoops|r. Loot them for their [|cRXP_LOOT_quills|r].
    .goto 7,47.18,50.35,15,0
    .goto 7,44.72,48.58,15,0
    .goto 7,42.48,44.81,15,0
    .goto 7,41.65,42.07,15,0
    .goto 7,46.13,39.72,20,0
    .goto 7,47.18,50.35
    .complete 761,1 --8/8 Trophy Swoop Quill
    .mob Wiry Swoop
step
    #completewith next
    >>Kill |cRXP_ENEMY_Flatland Cougars|r. Loot them for their [|cRXP_LOOT_femur|r].
    .complete 26188,1 --1/1 Flatland Cougar Femur
    .mob Flatland Cougar
step
    >>Kill a |cRXP_ENEMY_Plainstrider|r. Loot it for a [|cRXP_LOOT_Tender Stride Meat|r].
    .goto 7,44.71,52.05
    .collect 33009,1,11129,1
    .mob Adult Plainstrider
step
    >>Kill |cRXP_ENEMY_Flatland Cougars|r. Loot them for their [|cRXP_LOOT_femur|r].
    .goto 7,47.18,50.35,15,0
    .goto 7,44.72,48.58,15,0
    .goto 7,42.48,44.81,15,0
    .goto 7,41.65,42.07,15,0
    .goto 7,46.13,39.72,20,0
    .goto 7,47.18,50.35
    .complete 26188,1 --1/1 Flatland Cougar Femur
    .mob Flatland Cougar
step
    #completewith MulgoreMazzranacheTurnin
    .goto 7,44.58,45.22
    >>|cRXP_WARN_Set your pet to passive by clicking on 'Passive' in your pet bar or in your spell book in the Pet tab|r. << Hunter/Warlock
    .deathskip >>Pull some mobs and die
step
    #completewith MulgoreTurnInThunderhorn
    >>Kyle (a wolf) runs in a circle around/through the city. |cRXP_WARN_If you see him running towards you then wait until he is near you, target him and use the [|cRXP_LOOT_Tender Stride Meat|r|r].
    .use 33009
    .target Kyle
    .complete 11129,1 --1/1 Kyle fed
step
    #label MulgoreMazzranacheTurnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur Raincaller|r.
    .goto 7,47.16,56.66
    .turnin 26188 >>Turn in Mazzranache
    .mob Maur Raincaller
step << Warlock/Hunter
    #completewith next
    +|cRXP_WARN_Reminder:Resummon your pet and set it to back to 'Assist'|r.
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Varg Windwhisper|r.
    .goto 7,46.06,58.19
    .turnin 6364 >>Turn in Return to Varg
    .target Varg Windwhisper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruul Eagletalon|r.
    .goto 7,47.51,61.33
    .turnin 743 >>Turn in Dangers of the Windfury
    .target Ruul Eagletalon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ahmo Thunderhorn|r.
    .goto 7,47.65,59.59
    .turnin 14491 >>Turn in The Restless Earth
    .target Ahmo Thunderhorn
step
    #label MulgoreTurnInThunderhorn
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull Thunderhorn|r.
    .goto 7,48.62,59.8
    .turnin 24441 >>Turn in Thunderhorn Totem
    .target Mull Thunderhorn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harken Windtotem|r.
    .goto 7,48.78,58.79
    .turnin 761 >>Turn in Swoop Hunting
    .target Harken Windtotem
step
    >>Kyle (a wolf) runs in a circle around/through the city. |cRXP_WARN_If you see him running towards you then wait until he is near you, target him and use the [|cRXP_LOOT_Tender Stride Meat|r|r].
    .use 33009
    .target Kyle
    .goto 7,48.25,60.43,20,0
    .goto 7,48.13,57.28,20,0
    .complete 11129,1 --1/1 Kyle fed
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ahab Wheathoof|r.
    .goto 7,48.34,53.09
    .turnin 11129 >>Turn in Kyle's Gone Missing!
    .target Ahab Wheathoof
step << Tauren
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harb Clawhoof|r.
    .goto 7,47.64,58.09
    .vendor 3685
    .target Harb Clawhoof
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tak|r.
    .goto 7,47.44,58.64
    .fly Thunder Bluff >>Fly to Thunder Bluff
    .target Tak
step
    #completewith next
    +There are three ways to Orgrimmar.
    *1) Use the Character Stuck Feature
    *2) Use the |T237388:0|t[Scouting Map: Walking Kalimdor with the Earthmother] toy and fly to Orgrimmar
    *3) Follow the arrow and take the Zeppelin to Orgrimmar (very slow)
    .link https://www.youtube.com/watch?v=jAGUbr8Gz9Y >>Character Stuck Explanation Link
step
    .goto 88,42.81,39.13,10,0
    .goto 88,39.41,38.33,8,0
    .goto 88,28.19,23.46,50,0
    .goto 88,15.27,25.72
    .zone 85 >>Take the zeppelin
]])

--Undead Deathknell
RXPGuides.RegisterGuide([[
#retail
#version 2
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(1-80)|r Default
#name ab) Deathknell
#displayname Deathknell |cRXP_ENEMY_(Alternative)|r
#next ac) Undead Eversong Woods
#defaultfor Undead !DK

<< Horde

step << Undead
    .zoneskip 1727
    #completewith TirisfalFistQuestCheck
    +Welcome to the |cfff78300Undead Starting Zone Guide|r. of RestedXP.
    *This route is up to 50% slower than |cfff78300Exiles Reach|r regardless of the available consumables/heirlooms. For faster leveling recreate your character and choose |cfff78300Exiles Reach|r instead.
step << Undead
    .zoneskip 1727,1
    +You are in Exiles Reach but the current Guide is for the Undead Starting Zone.
    +Please choose the Exiles Reach Guide.
step
    #completewith next
    +|cRXP_WARN_If you want to make the most of RXP; Press Escape -> Options -> Keybindings -> RestedXP Guides -> Select and Bind Active Button 1,2,3 and 4. You can also do this with Targets|r.
    *This will allow you to press a Keybind to use a Quest Items/target a relevant mob
step
    #label TirisfalFistQuestCheck
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agatha|r.
    .goto 465,40.8,78.5
    .accept 24959 >>Accept Fresh out of the Grave
    .target Agatha
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Undertaker Mordo|r.
    .goto 465,43.4,79.9
    .turnin 24959 >>Turn in Fresh out of the Grave
    .accept 28608 >>Accept The Shadow Grave
    .target Undertaker Mordo
step
    >>|cRXP_WARN_Follow the arrow down into the grave|r and loot the [|cRXP_LOOT_twine|r and the |cRXP_LOOT_fluid|r].
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Undertaker Mordo|r.
    .goto 465,43.4,79.9
    .turnin 28608 >>Turn in The Shadow Grave
    .accept 26799 >>Accept Those That Couldn't Be Saved
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caretaker Caice|r.
    .goto 465,45.91,80.46
    .accept 24960 >>Accept The Wakening
step
    #sticky
    #label tirisfal26799
    >>Kill |cRXP_ENEMY_Mindless Zombies|r while speaking with the undead.
    .goto 465,44.4,73.9,0,0
    .complete 26799,1 --6/6 Mindless Zombie slain
    .mob Mindless Zombie
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Redpath|r.
    .goto 465,46.6,71.1
    .skipgossip
    .complete 24960,2 --1/1 Speak with Marshal Redpath
    .target Marshal Redpath
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian Voss|r.
    .goto 465,44.2,70.6
    .skipgossip
    .complete 24960,1 --1/1 Speak with Lilian Voss
    .target Lilian Voss
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valdred Moray|r.
    .goto 465,40.7,73.0
    .skipgossip
    .complete 24960,3 --1/1 Speak with Valdred Moray
    .target Valdred Moray
step
    #requires tirisfal26799
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Undertaker Mordo|r.
    .goto 465,43.43,79.91
    .turnin 26799 >>Turn in Those That Couldn't Be Saved
    .target Undertaker Mordo
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caretaker Caice|r.
    .goto 465,45.9,80.5
    .turnin 24960 >>Turn in The Wakening
    .accept 25089 >>Accept Beyond the Graves
    .target Caretaker Caice
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Priest Sarvis|r.
    .goto 465,49.08,58.83,5,0
    .goto 465,46.6,58.8
    .accept 26801 >>Accept Scourge on our Perimeter
    .target Shadow Priest Sarvis
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Saltain|r.
    .goto 465,49.08,58.83,5,0
    .goto 465,49.90,56.38
    .turnin 25089 >>Turn in Beyond the Graves
    .accept 26800 >>Accept Recruitment
    .target Deathguard Saltain
step << Warlock
    #completewith next
    +|cRXP_WARN_Reminder: Use |T136218:0|t[Summon Imp] to summon your pet|r.
step
    #completewith next
    >>Kill |cRXP_ENEMY_Wretched Ghouls|r and |cRXP_ENEMY_Rattlecage Skeletons|r.
    .goto 465,51.61,47.23,0,0
    .complete 26801,1 --8/8 Deathknell Scourge slain
    .mob Wretched Ghoul
    .mob Rattlecage Skeleton
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_FRIENDLY_Scarlet Corpses|r. |cRXP_WARN_Wait for Darneli to pick up the corpse before clicking on the next one|r.
    .goto 465,47.58,48.29,15,0
    .goto 465,54.14,43.99,15,0
    .goto 465,53.74,51.00,10,0
    .goto 465,47.58,48.29
    .complete 26800,1 --6/6 Scarlet Corpses gathered
    .target Scarlet Corpse
step
    >>Kill |cRXP_ENEMY_Wretched Ghouls|r and |cRXP_ENEMY_Rattlecage Skeletons|r.
    .goto 465,51.61,47.23
    .complete 26801,1 --8/8 Deathknell Scourge slain
    .mob Wretched Ghoul
    .mob Rattlecage Skeleton
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Saltain|r.
    .goto 465,49.9,56.7
    .turnin 26800 >>Turn in Recruitment
    .target Deathguard Saltain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Priest Sarvis|r.
    .goto 465,46.6,58.8
    .turnin 26801 >>Turn in Scourge on our Perimeter
    .accept 28651 >>Accept Novice Elreth
    .target Shadow Priest Sarvis
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Novice Elreth|r.
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
    >>|cRXP_WARN_She can be down or upstairs. After talking to her (during the roleplay) you can already leave the house and return to |cRXP_FRIENDLY_Novice Elreth|r|r.
    .skipgossip
    .complete 24961,1 --1/1 Show Lilian her reflection
    .target Lilian Voss
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Novice Elreth|r.
    .goto 465,46.7,58.2
    .turnin 24961 >>Turn in The Truth of the Grave
    .accept 28672 >>Accept The Executor In the Field
    .target Novice Elreth
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Arren|r.
    .goto 465,55.5,37.8
    .turnin 28672 >>Turn in The Executor In the Field
    .accept 26802 >>Accept The Damned
    .target Executor Arren
step << Hunter
    #completewith next
    .cast 1515 >>Tame a |cRXP_ENEMY_Ragged Scavenger|r.
    .mob Ragged Scavenger
step
    >>Kill |cRXP_ENEMY_Mangy Duskbats|r and |cRXP_ENEMY_Ragged Savengers|r around you. Loot them for their [|cRXP_LOOT_paws|r and |cRXP_LOOT_wings|r].
    .goto 465,63.26,27.68,15,0
    .goto 465,64.45,22.78,15,0
    .goto 465,59.24,21.36,25,0
    .goto 465,49.41,21.94
    .complete 26802,1 --4/4 Scavenger Paw
    .complete 26802,2 --4/4 Duskbat Wing
    .mob Mangy Duskbat
    .mob Ragged Scavenger
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Arren|r.
    .goto 465,55.5,37.7
    .turnin 26802 >>Turn in The Damned
    .accept 24973 >>Accept Night Web's Hollow
    .target Executor Arren
step
    #completewith next
    >>On your way to the mine kill some |cRXP_ENEMY_Young Night Web Spiders|r.
    .complete 24973,1 --8/8 Young Night Web Spider slain
    .mob Young Night Web Spider
step
    >>Kill |cRXP_ENEMY_Night Web Spiders|r inside the mine.
    .goto 465,30.18,30.58,10,0
    .goto 466,62.9,58.0,10,0
    .goto 466,45.27,69.84,10,0
    .goto 466,48.41,51.43,10,0
    .goto 466,62.09,58.59,10,0
    .complete 24973,2 --5/5 Night Web Spider slain
    .mob Night Web Spider
step
    >>Leave the mine and kill the remaining |cRXP_ENEMY_Young Night Web Spiders|r.
    .goto 465,37.36,26.16
    .complete 24973,1 --8/8 Young Night Web Spider slain
    .mob Young Night Web Spider
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Arren|r.
    .goto 465,55.5,37.8
    .turnin 24973 >>Turn in Night Web's Hollow
    .accept 24970 >>Accept No Better Than the Zombies
    .target Executor Arren
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darnell|r.
    .goto 465,67.1,42.4
    .turnin 24970 >>Turn in No Better Than the Zombies
    .accept 24971 >>Accept Assault on the Rotbrain Encampment
    .target Darnell
step
    #completewith next
    >>Kill |cRXP_ENEMY_Rotbrain Berserker|r and |cRXP_ENEMY_Rotbrain Magus'|r. |cRXP_WARN_Focus undeads that are already fighting|r.
    .goto 465,74.1,66.0,0,0
    .complete 24971,2 --8/8 Rotbrain undead slain
    .mob Rotbrain Berserker
    .mob Robrain Magus
step
    >>Kill |cRXP_ENEMY_Marshal Redpath|r.
    .goto 465,70.08,69.65
    .complete 24971,1 --1/1 Marshal Redpath slain
    .mob Marshal Redpath
step
    >>Kill |cRXP_ENEMY_Rotbrain Berserker|r and |cRXP_ENEMY_Rotbrain Magus'|r. |cRXP_WARN_Focus undeads that are already fighting|r.
    .goto 465,74.1,66.0
    .complete 24971,2 --8/8 Rotbrain undead slain
    .mob Rotbrain Berserker
    .mob Robrain Magus
step
    .isOnQuest 24971
    >>Follow the arrow, look out for the rare Fangor. Loot him for a [|cRXP_LOOT_bag|r].
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Priest Sarvis|r.
    .goto 465,61.88,82.00,5,0
    .goto 465,62.58,78.73,5,0
    .goto 465,46.6,58.8
    .turnin 24971 >>Turn in Assault on the Rotbrain Encampment
    .accept 24972 >>Accept Vital Intelligence
    .target Shadow Priest Sarvis
]])

--Undead Eversong Woods
RXPGuides.RegisterGuide([[
#retail
#version 2
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(1-80)|r Default
#name ac) Undead Eversong Woods
#displayname |cFF00CCFF2|r - Eversong Woods
#next 
#defaultfor Undead !DK

<< Horde

step
    .itemcount 132516,1
    #completewith next
    .cast 202844 >>Use |T1405809:0|t[Gunshoes]
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tRun and talk to |cRXP_FRIENDLY_Deathguard Simmer|r.
    .isQuestComplete 24972
    .goto 465,77.35,17.75,20,0
    .goto 18,44.75,53.67
    .turnin 24972 >>Turn in Vital Intelligence
    .target Deathguard Simmer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Simmer|r and |cRXP_FRIENDLY_Apothecary Johaan|r.
    .accept 24978 >>Accept Reaping the Reapers
    .goto 18,44.75,53.67
    .accept 24975 >>Accept Fields of Grief
    .goto 18,44.61,53.79
    .target Deathguard Simmer
    .target Apothecary Johaan
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tGo upstairs and talk to |cRXP_FRIENDLY_Sedrick Calston|r.
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
    >>Kill |cRXP_ENEMY_Tirisfal Farmers|r.
    >>Look out for the rares |cRXP_ENEMY_Shadowstalker|r and |cRXP_ENEMY_Farmer Solliden|r.
    .link https://i.imgur.com/lc7y3b4.jpeg >>You can attack |cRXP_ENEMY_Shadowstalker|r from the position shown in the screenshot.
    .goto 18,40.33,51.42,0
    .goto 18,37.91,51.27,0,0
    .complete 24978,1 --10/10 Tirisfal Farmer slain
    .mob Tirisfal Farmer
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tPick up the [|cRXP_LOOT_Tirifal Pumpkins|r].
    .goto 18,36.82,51.45,20,0
    .goto 18,35.57,51.12,20,0
    .goto 18,36.68,49.50,20,0
    .goto 18,36.48,50.85
    .complete 24975,1 --10/10 Tirisfal Pumpkin
step
    >>Kill |cRXP_ENEMY_Tirisfal Farmers|r.
    >>Look out for the rares |cRXP_ENEMY_Shadowstalker|r and |cRXP_ENEMY_Farmer Solliden|r.
    .goto 18,40.33,51.42,0
    .goto 18,37.91,51.27,0,0
    .complete 24978,1 --10/10 Tirisfal Farmer slain
    .mob Tirisfal Farmer
step << Warlock/Hunter
    #completewith next
    +|cfff78300Set your pet to passive by clicking on 'Passive' in your pet bar or in your spell book in the Pet tab|r.
step
    >>Attack a |cRXP_ENEMY_Vile Fin Murloc|r until it runs away then use the |T133802:0|t[Murloc Leash]. |cRXP_WARN_You mustn't kill it|r.
    >>Look out for the rare |cRXP_ENEMY_Muad|r.
    .use 52059
    .goto 18,35.8,43.4
    .complete 24974,1 --1/1 Vile Fin captured
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Puddlejumper
step << Warlock/Hunter
    #completewith next
    +|cRXP_WARN_Reminder:Set your pet to back to 'Assist'|r.
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Simmer|r and |cRXP_FRIENDLY_Apothecary Johaan|r.
    >>Look out for |cRXP_ENEMY_Bayne|r on your way back.
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sedrick Calston|r.
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Jaela|r.
    .goto 94,50.33,50.77
    .accept 8475 >>Accept The Dead Scar
    .target 8475
step << Warlock/Hunter
    #completewith next
    +|cRXP_WARN_Reminder: Resummon your pet after a deathskip|r.
step
    >>Kill |cRXP_ENEMY_Plaguebone Pillagers|r.
    .goto 94,50.17,55.05
    .complete 8475,1 --8/8 Plaguebone Pillager slain
    .mob Plaguebone Pillager
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Jaela|r.
    .goto 94,50.33,50.77
    .turnin 8475 >>Turn in The Dead Scar
    .target Ranger Jaela
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skymaster Skyles|r.
    .goto 94,46.55,49.08,10,0
    .goto 94,46.24,46.79
    .fp >>Get the Falconwing Square Flight Path
    .target Skymaster Skyles
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Jaronis|r.
    .goto 94,47.26,46.32
    .accept 8472 >>Accept Major Malfunction
    .target Magister Jaronis
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the wanted board
    .goto 94,48.16,46.31
    .accept 8468 >>Accept WANTED: Thaelis the Hungerer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeldon Sunbrand|r.
    .goto 94,48.17,46.0
    .accept 8463 >>Accept Unstable Mana Crystals
    .target Aeldon Sunbrand
step
    #completewith next
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on [|cRXP_LOOT_Unstable Mana Crystal Crates|r]. to collect them
    .complete 8463,1 --6/6 Unstable Mana Crystal
step
    #completewith next
    >>Kill |cRXP_ENEMY_Acrane Patrollers|r. Loot them for their [|cRXP_LOOT_cores|r].
    .goto 94,46.94,44.59,15,0
    .goto 94,47.69,39.02,15,0
    .goto 94,47.11,37.44,15,0
    .goto 94,46.53,35.16,30,0
    .complete 8472,1 --6/6 Arcane Core
    .mob Arcane Patroller
step
    >>Kill |cRXP_ENEMY_Thaelis|r. Loot him for his [|cRXP_LOOT_head|r].
    .goto 94,45.36,38.12,5,0
    .goto 94,45.01,37.68
    .complete 8468,1 --1/1 Thaelis' Head
    .mob Thaelis
step
    >>Kill |cRXP_ENEMY_Acrane Patrollers|r. Loot them for their [|cRXP_LOOT_cores|r].
    .goto 94,45.39,40.64,20,0
    .goto 94,42.18,40.59
    .complete 8472,1 --6/6 Arcane Cores
    .mob Arcane Patroller
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on [|cRXP_LOOT_Unstable Mana Crystal Crates|r]. to collect them
    .goto 94,45.13,40.71,18,0
    .goto 94,46.01,43.29,25,0
    .goto 94,46.92,44.57,10,0
    .complete 8463,1 --6/6 Unstable Mana Crystal
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeldon Sunbrand|r.
    .goto 94,48.17,46.0
    .turnin 8463 >>Turn in Unstable Mana Crystals
    .accept 9352 >>Accept Darnassian Intrusions
    .target Aeldon Sunbrand
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Kan'ren|r.
    .goto 94,47.77,46.58
    .turnin 8468 >>Turn in WANTED: Thaelis the Hungerer
    .target Sergeant Kan'ren
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Jaronis|r.
    .goto 94,47.26,46.30
    .turnin 8472 >>Turn in Major Malfunction
    .accept 8895 >>Accept Delivery to the North Sanctum
    .target Magister Jaronis
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ley-Keeper Caidanis|r.
    .goto 94,44.63,53.13
    .turnin 8895 >>Turn in Delivery to the North Sanctum
    .accept 9119 >>Accept Malfunction at the West Sanctum
    .target Ley-Keeper Caidanis
step
    .itemcount 132516,1
    #completewith next
    .cast 202844 >>Use |T1405809:0|t[Gunshoes]
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ley-Keeper Caidanis|r.
    .goto 94,36.7,57.44
    .turnin 9119 >>Turn in Malfunction at the West Sanctum
    .accept 8486 >>Accept Arcane Instability
    .target Ley-Keeper Caidanis
    step
    #completewith next
    >>Kill a |cRXP_ENEMY_Darnassian Scout|r. Loot him for the [|cRXP_LOOT_Incriminating Documents|r]. |TInterface/cursor/crosshair/interact.blp:20|tClick it in your bags
    .goto 94,36.4,60.7,20,0
    .goto 94,34.65,62.03,20,0
    .collect 20765,1,8482,1
    .accept 8482 >>Accept Incriminating Documents
    .complete 9352,1 --1/1 Intruder Defeated
    .mob Darnassian Scout
step
    >>Kill |cRXP_ENEMY_Mana Stalker|r and |cRXP_ENEMY_Manawraiths|r.
    .goto 94,33.69,61.69,15,0
    .goto 94,34.50,57.84,20,0
    .goto 94,35.66,58.00
    .complete 8486,2 --5/5 Mana Stalker slain
    .complete 8486,1 --5/5 Manawraith slain
    .mob Mana Stalker
    .mob Manawraith
step
    >>Kill a |cRXP_ENEMY_Darnassian Scout|r. Loot him for the [|cRXP_LOOT_Incriminating Documents|r]. |TInterface/cursor/crosshair/interact.blp:20|tClick it in your bags
    .goto 94,36.4,60.7,20,0
    .goto 94,34.65,62.03,20,0
    .collect 20765,1,8482,1
    .accept 8482 >>Accept Incriminating Documents
    .complete 9352,1 --1/1 Intruder Defeated
    .mob Darnassian Scout
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ley-Keeper Velania|r.
    .goto 94,36.7,57.44
    .turnin 8486 >>Turn in Arcane Instability
    .turnin 9352 >>Turn in Darnassian Intrusions
    .target Ley-Keeper Velania
step << Warlock/Hunter
    #completewith next
    +|cRXP_WARN_Set your pet to 'Passive'|r.
step
    #completewith next
    .goto 94,35.46,57.41
    .deathskip >>Pull some mobs, die and ress at the spirit healer
step
    .xp <10-1600,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Landra Dawnstrider|r.
    .goto 94,44.03,70.76
    .accept 9254 >>Accept The Wayward Apprentice
    .target Magistrix Landra Dawnstrider
    step << Hunter/Warlock
    #completewith next
    +|cRXP_WARN_Reminder: Resummon your pet and set it to 'Assist'|r.
step
    .isOnQuest 9254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Mirveda|r.
    .goto 94,54.28,70.98
    .turnin 9254 >>Turn in The Wayward Apprentice
    .accept 8487 >>Accept Corrupted Soil
    .target Apprentice Mirveda
step
    .isOnQuest 8487
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tPick up the [|cRXP_LOOT_Tainted Soil Samples|r]. from the ground
    .goto 94,52.34,71.77,20,0
    .goto 94,51.92,68.47,20,0
    .goto 94,52.59,69.60,10,0
    .goto 94,53.75,69.89,10,0
    .goto 94,52.36,69.80
    .complete 8487,1 --8/8 Tainted Soil Sample
step
    .isQuestComplete 8487
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Mirveda|r.
    .goto 94,54.28,70.98
    .turnin 8487 >>Turn in Corrupted Soil
    .target Apprentice Mirveda
step
    .isQuestTurnedIn 8487
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWait for around 5 seconds and talk to |cRXP_FRIENDLY_Apprentice Mirveda|r again.
    .goto 94,54.28,70.98
    .accept 8488 >>Accept Unexpected Results
    .target Apprentice Mirveda
step
    .isOnQuest 8488
    >>Kill |cRXP_ENEMY_Gharsul the Remorseless|r. You can kite him back to |cRXP_FRIENDLY_Apprentice Mirveda|r.
    .goto 94,53.68,69.76
    .complete 8488,2 --1/1 Gharsul the Remorseless slain
    .mob Gharsul the Remorseless
step
    .isQuestComplete 8488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Mirveda|r.
    .goto 94,54.28,70.98
    .turnin 8488 >>Turn in Unexpected Results
    .accept 9255 >>Accept Research Notes
    .target Apprentice Mirveda
step << Warlock/Hunter
    #completewith next
    +|cRXP_WARN_Set your pet to 'Passive'|r.
step
    .isOnQuest 9255
    #completewith next
    .goto 94,51.47,80.11,20,0
    .deathskip >>Pull some mobs and die
step
    .isOnQuest 9255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Landra Dawnstrider|r.
    .goto 94,44.02,70.77
    .turnin 9255 >>Turn in Research Notes
    .target Magistrix Landra Dawnstrider
step
    #completewith next
    .goto 94,43.95,69.98
    .fp >>Get the Fairbreeze Village Flight Path
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skymaster Brightdawn|r.
    .goto 94,43.95,69.98
    .fly Falconwing Square >>Fly to Falconwing Square
    .target Skymaster Brightdawn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeldon Sunbrand|r.
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

--Goblin Kezan & The Lost Isles
RXPGuides.RegisterGuide([[
#retail
#version 2
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(1-80)|r Default
#name ab) Goblin Intro
#displayname |cFF00CCFF1|r - Kezan & The Lost Isles
#next 

<< Goblin !DK

step << Goblin
    .zoneskip 1727
    #completewith KezanFirstQuestCheck
    +Welcome to the |cRXP_WARN_Goblin Starting Zone|r. Guide of RestedXP.
    *This route is a lot slower than |cRXP_WARN_Exiles Reach|r. For faster leveling recreate your character and choose |cRXP_WARN_Exiles Reach|r instead.
step << Goblin
    .zoneskip 1727,1
    +You are in Exiles Reach but the current Guide is for the |cRXP_WARN_Goblin Starting Zone|r.
    +Please choose the |cRXP_WARN_Exiles Reach|r Guide.
step
    #completewith next
    +|cRXP_WARN_If you want to make the most of RXP; Press Escape -> Options -> Keybindings -> RestedXP Guides -> Select and Bind Active Button 1,2,3 and 4. You can also do this with Targets|r.
    *This will allow you to press a Keybind to use a Quest Items/target a relevant mob
step
    #label KezanFirstQuestCheck
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r.
    .goto 194,56.4,76.9
    .accept 14138 >>Accept Taking Care of Business
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Dampwick|r.
    .goto 194,60.3,74.6
    .turnin 14138 >>Turn in Taking Care of Business
    .accept 14069 >>Accept Good Help is Hard to Find
    .accept 14075 >>Accept Trouble in the Mines
    .target Foreman Dampwick
step
    #completewith next
    .goto 194,65.52,87.82,10 >>Enter the mines
step
    #completewith KezanTroubleintheMines
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_FRIENDLY_Defiant Trolls|r. These can be found outside of the mines as well.
    .goto 194,66.02,82.39,0,0
    .complete 14069,1 --8/8 Attitudes Adjusted
    .target Defiant Troll
step
    #label KezanTroubleintheMines
    >>Kill |cRXP_ENEMY_Tunneling Worms|r.
    .goto 197,50.73,59.55
    .complete 14075,1 --6/6 Tunneling Worm slain
    .mob Tunneling Worm
step
    #completewith next
    .goto 194,65.52,87.82,8 >>Leave the mines
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_FRIENDLY_Defiant Trolls|r.
    .goto 194,72.45,83.45,50,0
    .goto 194,70.39,77.73,30,0
    .goto 194,68.74,82.87
    .complete 14069,1 --8/8 Attitudes Adjusted
    .target Defiant Troll
step
    #completewith next
    .hs >>Hearth back to the KTC Headquarters
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Dampwick|r.
    .goto 194,60.1,74.6
    .turnin 14075 >>Turn in Trouble in the Mines
    .turnin 14069 >>Turn in Good Help is Hard to Find
    .accept 25473 >>Accept Kaja'Cola
    .target Foreman Dampwick
step << Warlock
    #completewith next
    +|cRXP_WARN_Reminder: Use |T136218:0|t[Summon Imp] to summon your pet|r.
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Handwrench|r.
    .goto 194,56.4,76.9
    .turnin 25473 >>Turn in Kaja'Cola
    .accept 28349 >>Accept Megs in Marketing
    .target Sassy Handwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Megs Dreadshredder|r.
    .goto 194,58.3,76.4
    .turnin 28349 >>Turn in Megs in Marketing
    .accept 14071 >>Accept Rolling with my Homies
    .target Megs Dreadshredder
step
    >>Use the |T134246:0|t[Keys to the Hot Rod] to mount the Hot Rod
    .goto 194,58.9,76.3
    .complete 14071,1 --1/1 Keys to the Hot Rod used
    .use 46856
step
    >>Follow the arrow to pick up |cRXP_FRIENDLY_Izzy|r.
    >>Use |T135788:0|t[Punch] (1) it on cooldown
    .goto 194,59.93,85.52,15,0
    .goto 194,58.9,85.5
    .complete 14071,2 --1/1 Izzy picked up
    .target Izzy
step
    >>Follow the arrow to pick up |cRXP_FRIENDLY_Gobber|r.
    >>Use |T135788:0|t[Punch] (1) it on cooldown
    .goto 194,59.93,85.52,15,0
    .goto 194,57.95,70.46,20,0
    .goto 194,60.6,49.9
    .complete 14071,4 --1/1 Gobber picked up
    .target Gobber
step
    >>Follow the arrow to pick up |cRXP_FRIENDLY_Ace|r.
    >>Use |T135788:0|t[Punch] (1) it on cooldown
    .goto 194,48.5,38.3
    .complete 14071,3 --1/1 Ace picked up
    .target Ace
step
    #completewith next
    .goto 194,61.98,54.83,30,0
    .goto 194,60.13,64.59,30,0
    .goto 194,57.90,71.12,20 >>Follow the street back up
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Megs Dreadshredder|r.
    .goto 194,58.3,76.5
    .turnin 14071 >>Turn in Rolling with my Homies
    .accept 24567 >>Accept Report for Tryouts
    .target Megs Dreadshredder
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Handwrench|r.
    .goto 194,56.4,77.0
    .accept 14070 >>Accept Do it Yourself
    .target Sassy Handwrench
step << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chip Endale|r.
    .goto 194,56.3,76.8
    .accept 26711 >>Accept Off to the Bank
    .target Chip Endale
--female quest
step << Male
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Candy Cane|r.
    .goto 194,56.3,76.8
    .accept 26712 >>Accept Off to the Bank
    .target Candy Cane
--male quest
step
    >>Follow the arrow around the house and attack |cRXP_ENEMY_Bruno Flameretardant|r.
    *|cRXP_WARN_Don't forget to use your Keys to the Hot Rod|r.
    .use 46856
    .goto 194,57.52,76.93,5,0
    .goto 194,57.46,78.35,5,0
    .goto 194,55.34,78.25,5,0
    .goto 194,45.25,74.75
    .complete 14070,1 --1/1 Bruno Flameretardant beaten down
    .mob Bruno Flameretardant
step
    >>Attack |cRXP_ENEMY_Sudsy Magee|r.
    .goto 194,41.6,81.9
    .complete 14070,4 --1/1 Sudsy Magee beaten down
    .mob Sudsy Magee
step
    >>Attack |cRXP_ENEMY_Jack the Hammer|r.
    .goto 194,37.47,75.97,15,0
    .goto 194,35.0,77.8
    .complete 14070,3 --1/1 Jack the Hammer beaten down
    .mob Jack the Hammer
step
    >>Attack |cRXP_ENEMY_Frankei Gearslipper|r.
    .goto 194,36.84,69.95
    .complete 14070,2 --1/1 Frankie Gearslipper beaten down
    .mob Frankey Gearslipper
step
    #completewith next
    .vehicle 34840 >>|cRXP_WARN_Make sure to use your Keys to the Hot Rod|r.
step << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEnter the bank and talk to a |cRXP_FRIENDLY_FBoK Bank Teller|r.
    .goto 194,34.16,69.32,10,0
    .goto 194,32.27,63.79,12,0
    .goto 194,29.72,64.52,16,0
    .goto 194,30.1,71.9
    .turnin 26711 >>Turn in Off to the Bank
    .accept 14110 >>Accept The New You
    .target FBoK Bank Teller
--female quest
step << Male
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEnter the bank and talk to a |cRXP_FRIENDLY_FBoK Bank Teller|r.
    .goto 194,34.16,69.32,10,0
    .goto 194,32.27,63.79,12,0
    .goto 194,29.72,64.52,16,0
    .goto 194,30.1,71.9
    .turnin 26712 >>Turn in Off to the Bank
    .accept 14109 >>Accept the New You
    .target FBoK Bank Teller
--male quest
step
    #completewith next
    .vehicle 34840 >>|cRXP_WARN_Make sure to use your |T134246:0|t[Keys to the Hot Rod] (You should always use them when you have to run somwhere)|r.
step << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Szabo|r.
    .goto 194,29.80,63.62,16,0
    .goto 194,34.66,54.73,10,0
    .goto 194,37.63,55.38
    .use 46856
    .skipgossip
    .complete 14110,2 --1/1 Hip New Outfit
    .target Szabo
step << Male
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Szabo|r.
    .goto 194,29.80,63.62,16,0
    .goto 194,34.66,54.73,10,0
    .goto 194,37.63,55.38
    .use 46856
    .skipgossip
    .complete 14109,2 --1/1 Hip New Outfit
    .target Szabo
step << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gappy Silvertooth|r.
    .goto 194,34.9,45.7
    .skipgossip
    .complete 14110,1 --1/1 Shiny Bling
    .target Gappy Silvertooth
step << Male
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gappy Silvertooth|r.
    .goto 194,34.9,45.7
    .skipgossip
    .complete 14109,1 --1/1 Shiny Bling
    .target Gappy Silvertooth
step << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Missa Spekkies|r.
    .goto 194,40.5,45.8
    .skipgossip
    .complete 14110,3 --1/1 Cool Shades
    .target Missa Spekkies
step << Male
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Missa Spekkies|r.
    .goto 194,40.5,45.8
    .skipgossip
    .complete 14109,3 --1/1 Cool Shades
    .target Missa Spekkies
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coach Crosscheck|r.
    .goto 194,42.57,55.34,20,0
    .goto 194,48.8,57.8
    .turnin 24567 >>Turn in Report for Tryouts
    .accept 24488 >>Accept The Replacements
    .target Coach Crosscheck
step
    >>Pick up the |cRXP_PICK_Replacements Parts|r from the ground while on the Hot Rod.
#loop
	.line 194,50.99,57.96,51.22,61.01,49.78,66.39,48.17,66.87,46.08,68.18,44.49,65.76,44.23,63.11,43.75,59.25
	.goto 194,50.99,57.96,20,0
	.goto 194,51.22,61.01,20,0
	.goto 194,49.78,66.39,20,0
	.goto 194,48.17,66.87,20,0
	.goto 194,46.08,68.18,20,0
	.goto 194,44.49,65.76,20,0
	.goto 194,44.23,63.11,20,0
	.goto 194,43.75,59.25,20,0
    .complete 24488,1 --6/6 Replacement Parts
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coach Crosscheck|r.
    .goto 194,48.8,57.8
    .turnin 24488 >>Turn in The Replacements
    .accept 24502 >>Accept Necessary Roughness
    .target Coach Crosscheck
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_FRIENDLY_Bilgewater Buccaneer|r roboter.
    >>Use |T134480:0|t[Throw Footbomb] (1) to kill the |cRXP_ENEMY_Steamwheedle Sharks|r in front of you.
    .goto 194,47.7,57.7
    .complete 24502,1 --1/1 Bilgewater Buccaneer
    .complete 24502,2 --8/8 Steamwheedle Shark Footbombed
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the quest in your quest log, |cRXP_WARN_you may have to dismount to accept the next quest from |cRXP_FRIENDLY_Coach Crosscheck|r|r.
    .goto 194,47.7,57.7
    .turnin 24502 >>Turn in Necessary Roughness by clicking onto the quest under your minimap
    .accept 24503 >>Accept Fourth and Goal << Male
    .accept 28414 >>Accept Fourth and Goal << Female
    .target Coach Crosscheck
step
    >>Use |T134480:0|t[Kick Footbomb] (1)
    .complete 24503,1 << Male --1/1 Footbomb Kicked Through Smokestacks
    .complete 28414,1 << Female --1/1 Footbomb Kicked Through Smokestacks
step
    #completewith next
    +|cRXP_WARN_Leave the vehicle|r.
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coach Crosscheck|r.
    .goto 194,48.7,57.8
    .turnin 24503 >>Turn in Fourth and Goal << Male
    .turnin 28414 >>Turn in Fourth and Goal << Female
    .accept 24520 >>Accept Give Sassy the News
    .target Coach Crosscheck
step
    #completewith next
    .use 46856
    .vehicle 34840 >>|cRXP_WARN_Make sure to use your |T134246:0|t[Keys to the Hot Rod] (You should always use them when you have to run somwhere)|r.
step
    #completewith next
    .goto 194,52.91,51.59,30,0
    .goto 194,61.86,55.57,20,0
    .goto 194,61.01,62.01,8,0
    .goto 194,57.76,71.07,15 >>Follow the arrow back to the Headquarters
step << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r and |cRXP_FRIENDLY_Chip Endale|r.
    .goto 194,57.58,76.99,10,0
    .turnin 24520 >>Turn in Give Sassy the News
    .turnin 14070 >>Turn in Do it Yourself
    .goto 194,56.4,76.9
    .turnin 14110 >>Turn in The New You
    .accept 14153 >>Accept Life of the Party
    .goto 194,56.3,76.8
    .target Sassy Hardwrench
    .target Chip Endale
step << Male
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r and |cRXP_FRIENDLY_Candy Cane|r.
    .goto 194,57.58,76.99,10,0
    .turnin 24520 >>Turn in Give Sassy the News
    .turnin 14070 >>Turn in Do it Yourself
    .goto 194,56.4,76.9
    .turnin 14109 >>Turn in The New You
    .accept 14113 >>Accept Life of the Party
    .goto 194,56.3,76.8
    .target Sassy Hardwrench
    .target Candy Cane
step
    >>Use |T132809:0|t[Bubbly] (1) on |cRXP_FRIENDLY_Goblins|r who drink.
    >>Use the |T132806:0|t[Bucket] (2) on drunk/confused looking |cRXP_FRIENDLY_Goblins|r.
    >>|T133836:0|t[Dance] (3) with |cRXP_FRIENDLY_Goblins|r who dance.
    >>Use |T134285:0|t[Fireworks] (4) on |cRXP_FRIENDLY_Goblins|r with sparks.
    >>Use |T237329:0|t[Hors D'oeuvres] (5) on |cRXP_FRIENDLY_Goblins|r who eat.
    .goto 194,59.56,78.75,15,0
    .goto 194,59.09,80.31,10,0
    .goto 194,60.59,82.98,15,0
    .goto 194,60.82,86.33,15,0
    .goto 194,60.6,83.4
    .complete 14153,1 << Female --10/10 Partygoer entertained
	.complete 14113,1 << Male --10/10 Partygoer entertained
    .target Kezan Partygoer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r.
    .goto 194,57.41,77.03,8,0
    .goto 194,56.4,77.0
    .turnin 14153 >>Turn in Life of the Party << Female
	.turnin 14113 >>Turn in Life of the Party << Male
    .accept 14115 >>Accept Pirate Party Crashers
    .target Sassy Hardwrench
step
    >>Kill |cRXP_ENEMY_Pirate Party Crashers|r. Focus the ones with lower HP.
    .goto 194,57.51,76.97,8,0
    .goto 194,60.05,80.79
    .complete 14115,1 --12/12 Pirate Party Crasher slain
    .target Pirate Party Crasher
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r.
    .goto 194,56.4,77.0
    .turnin 14115 >>Turn in Pirate Party Crashers
    .accept 14116 >>Accept The Uninvited Guest
    .target Sassy Hardwrench
step
    #completewith next
    .goto 194,56.41,75.33,5,0
    .goto 194,55.99,75.65,4,0
    .goto 194,55.96,77.07,5 >>Go up the stairs
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trade Prince Gallywix|r.
    .goto 194,56.7,76.9
    .turnin 14116 >>Turn in The Uninvited Guest
    .accept 14120 >>Accept A Bazillion Macaroons?!
    .target Trade Prince Gallywix
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tJump out of the window and talk to |cRXP_FRIENDLY_Sassy Handwrench|r, |cRXP_FRIENDLY_Megs Dreadshredder|r, and |cRXP_FRIENDLY_Foreman Dampwick|r.
    .turnin 14120 >>Turn in A Bazillion Macaroons?!
    .accept 14122 >>Accept The Great Bank Heist
    .goto 194,59.6,77.1
    .accept 14121 >>Accept Robbing Hoods
    .goto 194,60.0,78.1
    .accept 14124 >>Accept Liberate the Kaja'mite
    .goto 194,63.0,77.8
    .target Sassy Handwrench
    .target Megs Dreadshredder
    .target Foreman Dampwick
step
    #completewith next
    .use 46856
    .vehicle 34840 >>|cRXP_WARN_Make sure to use your |T134246:0|t[Keys to the Hot Rod]. While in the vehicle you are immune to fall damage|r.
step
    >>Aim the |T133712:0|t[Kablooey Bombs] on Kaja'mite Deposits and loot the [|cRXP_LOOT_Kaja'mite Chunks|r]. on the ground near the mines.
    .goto 194,67.27,77.69,8,0
    .goto 194,69.59,79.35,8,0
    .goto 194,69.03,83.16,8,0
    .goto 194,66.64,84.03,8,0
    .goto 194,66.09,87.34,8,0
    .goto 194,64.34,83.48,8,0
    .goto 194,64.5,83.6
    .use 48768
    .complete 14124,1 --12/12 Kaja'mite Chunk
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slinky Sharpshiv|r. She moves around in the area.
    .goto 194,58.82,75.06
    .accept 14123 >>Accept Waltz Right In
    .target Slinky Sharpshiv
step
    #completewith next
    .vehicle 34840 >>|cRXP_WARN_Make sure to use your |T134246:0|t[Keys to the Hot Rod]. While in the vehicle you are immune to fall damage|r.
step
    #completewith next
    >>Drive over |cRXP_ENEMY_Hired Looters|r when you see them.
    .goto 194,57.94,69.61,15,0
    .goto 194,47.67,60.09,25,0
    .goto 194,38.63,78.42,25,0
    .goto 194,32.71,63.68,10,0
    .goto 194,29.79,63.75,10,0
    .complete 14121,1 --12/12 Stolen Loot
    .mob Hired Looter
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_First Bank of Kezan Vault|r and follow the instructions shown in the center of your screen
    .goto 194,29.3,69.5
    .complete 14122,1 --1/1 First Bank of Kezan Vault
    .complete 14122,2 --1/1 Personal Riches
step
    >>Drive over |cRXP_ENEMY_Hired Looters|r.
    .goto 194,35.91,53.68,20,0
    .goto 194,41.33,53.03,20,0
    .goto 194,41.16,42.01,20,0
    .goto 194,35.96,44.39
    .complete 14121,1 --12/12 Stolen Loot
    .mob Hired Looter
step
    #completewith next
    .vehicle 34840 >>|cRXP_WARN_Make sure to use your |T134246:0|t[Keys to the Hot Rod]|r.
step
    #completewith KezanWaltzRightIn
    +|cRXP_WARN_Avoid |cRXP_ENEMY_Villa Mooks|r and |cRXP_ENEMY_Keesnout Potbellys|r because they can detect and kill you|r.
step
    >>Pick up the [|cRXP_LOOT_bomb|r].
    .goto 194,24.20,40.67,30,0
    .goto 194,19.9,30.7
    .complete 14123,3 --1/1 The Ultimate Bomb
step
    >>Pick up the [|cRXP_LOOT_painting|r].
    .goto 194,13.1,35.2
    .complete 14123,2 --1/1 The Goblin Lisa
step
    #completewith next
    .goto 194,17.66,44.49,8,0
    .goto 194,17.66,45.92,8,0
    .goto 194,16.79,46.89,5,0
    .goto 194,17.84,46.82,5,0
    .goto 194,17.34,45.91,3 >>Go up the stairs
step
    #label KezanWaltzRightIn
    >>Pick up [|cRXP_LOOT_Maldy's Falcon|r].
    .goto 194,16.7,46.2
    .complete 14123,1 --1/1 Maldy's Falcon
step
    #completewith next
    .goto 194,17.65,45.94,5,0
    .goto 194,17.00,33.96
    .deathskip >>Jump out of the window and run into hostile |cRXP_ENEMY_Villa Mooks|r or |cRXP_ENEMY_Keesnout Potbellys|r to die.
step
    #completewith next
    .goto 194,61.89,54.13,25,0
    .goto 194,57.90,71.17,15 >>Follow the way to the Headquarters
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slinky Sharpshiv|r.
    .goto 194,58.97,76.03
    .turnin 14123 >>Turn in Waltz Right In
    .target Slinky Sharpshiv
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r.
    .goto 194,59.7,76.9
    .turnin 14122 >>Turn in The Great Bank Heist
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Megs Dreadshredder|r.
    .goto 194,60.0,78.2
    .turnin 14121 >>Turn in Robbing Hoods
    .target Megs Dreadshredder
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Dampwick|r.
    .goto 194,62.9,77.8
    .turnin 14124 >>Turn in Liberate the Kaja'mite
    .target Foreman Dampwick
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r.
    .goto 194,59.8,76.9
    .accept 14125 >>Accept 447
    .target Sassy Hardwrench
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tEnter the house and |TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Defective Generator|r.
    .goto 194,56.07,76.63
    .complete 14125,1 --1/1 Overload the Defective Generator
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Leaky Stove|r.
    .goto 194,56.05,74.67
    .complete 14125,2 --1/1 Activate the Leaky Stove
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tGo up the stairs and |TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Flammable Bed|r.
    .goto 194,55.98,77.11,5,0
    .goto 194,56.64,76.33,5,0
    .goto 194,56.61,74.85
    .complete 14125,3 --1/1 Drop a Cigar on the Flammable Bed
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tJump out of the window and |TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Gasbot Control Panel|r.
    >>Wait for the short roleplay
    .goto 194,56.60,76.93,8,0
    .goto 194,59.49,76.81
    .complete 14125,4 --1/1 KTC Headquarters Set Ablaze with Gasbot!
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Claims Adjuster|r and |cRXP_FRIENDLY_Sassy Hardwrench|r.
    .turnin 14125 >>Turn in 447
    .goto 194,59.6,76.6
    .accept 14126 >>Accept Life Savings
    .goto 194,59.6,77.1
    .target Claims Adjuster
    .target Sassy Hardwrench
step
    #completewith next
    .vehicle 34840 >>|cRXP_WARN_Make sure to use your |T134246:0|t[Keys to the Hot Rod]|r.
step
    #completewith next
    .goto 194,25.69,32.13,10,0
    .goto 194,22.22,24.92,10 >>Hug the side of the mountain
step
    #completewith next
    .goto 194,22.31,16.78
    .cast 92633 >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the cannon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trade Prince Gallywix|r.
    .use 46856
    .goto 194,20.8,13.7
    .turnin 14126 >>Turn in Life Savings
    .target Trade Prince Gallywix
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doc Zapnozzle|r.
    >>Sometimes you can get stuck and have to relog or /reload
    .goto 174,24.6,77.9
    .turnin 14239 >>Turn in Don't Go Into the Light
    .target Doc Zapnozzle
step
    .goto 174,24.65,77.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geargrinder Gizmo|r.
    .accept 14001 >>Accept Goblin Escape Pods
    .target Geargrinder Gizmo
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Goblin Escape Pods|r.
    .goto 174,22.99,75.62,30,0
    .goto 174,25.50,77.65,30,0
    .goto 174,25.37,75.44
    .complete 14001,1 --6/6 Goblin Survivors Rescued
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Handwrench|r.
    .goto 174,27.9,75.5
    .turnin 14001 >>Turn in Goblin Escape Pods
    .accept 14014 >>Accept Get Our Stuff Back!
    .target Sassy Handwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxx Avalanche|r.
    .goto 174,27.85,74.29
    .accept 14473 >>Accept It's Our Problem Now
    .target Maxx Avalanche
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bamm Megabomb|r.
    .goto 174,27.95,74.43
    .accept 14019 >>Accept Monkey Business
    .target Bamm Megabomb
step << Hunter
    #completewith next
    .cast 1515 >>Tame a |cRXP_ENEMY_Teraptor Hatchling|r.
    .mob Teraptor Hatchling
step
    #sticky
    #label TheLostIslesTeraMonkeys
    >>Use |T133979:0|t[Nitro-Potassium Bananas] on |cRXP_ENEMY_Bomb Throwing Monkeys|r and kill |cRXP_ENEMY_Teraptor Hatchlings|r.
    .use 49028
    .goto 174,27.32,70.14,0,0
    .complete 14473,1 --6/6 Teraptor Hatchling slain
    .complete 14019,1 --10/10 Bomb-Throwing Monkeys Fed
    .mob Bomb Throwing Monkeys
    .mob Teraptor Hatchlings
step
    >>Collect [|cRXP_LOOT_Crates of Tools|r].
    .goto 174,29.73,75.42,15,0
    .goto 174,30.35,74.49,15,0
    .goto 174,30.10,72.55,20,0
    .goto 174,28.44,70.88,20,0
    .goto 174,27.32,70.14,20,0
    .complete 14014,1 --8/8 Crate of Tools
step
    #requires TheLostIslesTeraMonkeys
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxx Avalanche|r and |cRXP_FRIENDLY_Bamm Megabomb|r.
    .turnin 14473 >>Turn in It's Our Problem Now
    .goto 174,27.85,74.29
    .turnin 14019 >>Turn in Monkey Business
    .goto 174,27.95,74.43
    .target Maxx Avalanche
    .target Bamm Megabomb
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Handwrench|r.
    .goto 174,27.9,75.5
    .turnin 14014 >>Turn in Get Our Stuff Back!
    .accept 14248 >>Accept Help Wanted
    .target Sassy Handwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Dampwick|r.
    .goto 174,31.27,79.26
    .turnin 14248 >>Turn in Help Wanted
    .accept 14021 >>Accept Miner Troubles
    .accept 14031 >>Accept Capturing the Unknown
    .target Foreman Dampwick
step
    >>Use the |T134442:0|t[KTC Snapflash] to take a picture of the painting on the wall marked with a floating camera
    .goto 175,55.29,68.39
    .use 49887
    .complete 14031,1 --1/1 Cave Painting 1 Captured
step
    >>Use the |T134442:0|t[KTC Snapflash] to take a picture of the painting on the wall marked with a floating camera
    .use 49887
    .goto 175,46.82,53.78,10,0
    .goto 175,60.44,63.52
    .complete 14031,2 --1/1 Cave Painting 2 Captured
step
    >>Use the |T134442:0|t[KTC Snapflash] to take a picture of the painting on the wall marked with a floating camera
    .goto 175,83.43,46.55
    .complete 14031,3 --1/1 Cave Painting 3 Captured
step
    .goto 175,51.28,19.23,10,0
    .goto 175,42.41,23.23,0,0
    >>Use the |T134442:0|t[KTC Snapflash] to take a picture of the painting on the wall marked with a floating camera
    .use 49887
    .complete 14031,4 --1/1 Pygmy Altar Captured
step
    >>Follow and protect the |cRXP_FRIENDLY_Fightened Miner|r.
    .complete 14021,1 --1/1 Kaja'mite Ore mining a success!
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTry to talk to the |cRXP_FRIENDLY_Dead Orc Scout|r.
    .goto 175,42.3,24.4
    .accept 14233 >>Accept Orcs Can Write?
    .target Dead Orc Scout
step
    #requires TheLostIslesSnapflash4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tLeave the cave and talk to |cRXP_FRIENDLY_Foreman Dampwick|r.
    .goto 175,55.05,79.29,10,0
    .goto 174,31.27,79.27
    .turnin 14021 >>Turn in Miner Troubles
    .target Foreman Dampwick
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Handwrench|r.
    .goto 174,27.88,75.55
    .turnin 14031 >>Turn in Capturing the Unknown
    .turnin 14233 >>Turn in Orcs Can Write?
    .accept 14234 >>Accept The Enemy of My Enemy
    .target Sassy Handwrench
step
    #completewith next
    .cast 202844 >>Use your |T1405809:0|t[Gunshoes] to move faster
    .use 132516
    .itemcount 132516,1
step
    #completewith next
    .goto 174,32.73,80.53,30,0
    .goto 174,34.36,80.78,30,0
    .goto 174,36.96,77.02,20 >>Follow the path up the mountain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aggra|r.
    .goto 174,37.63,78.02
    .turnin 14234 >>Turn in The Enemy of My Enemy
    .accept 14235 >>Accept The Vicious Vale
    .target Aggra
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kilag Gorefang|r.
    .goto 174,35.43,75.71
    .turnin 14235 >>Turn in The Vicious Vale
    .accept 14236 >>Accept Weed Whacker
    .target Kilag Gorefang
step
    >>Use the |cRXP_FRIENDLY_Weed Whacker|r and run through the |cRXP_ENEMY_plants|r to kill them.
    .use 49108
    .goto 174,33.90,72.85,30,0
    .goto 174,32.81,76.42,20,0
    .complete 14236,1 --100/100 Deadly Jungle Plants mowed down
    .mob Deadly Jungle Plant
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kilag Gorefang|r.
    .goto 174,35.43,75.71
    .turnin 14236 >>Turn in Weed Whacker
    .accept 14303 >>Accept Back to Aggra
    .target Kilag Gorefang
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aggra|r.
    .goto 174,37.63,78.02
    .turnin 14303 >>Turn in Back to Aggra
    .accept 14237 >>Accept Forward Movement
    .target Aggra
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kilag Gorefang|r.
    .goto 174,34.62,66.85
    .turnin 14237 >>Turn in Forward Movement
    .accept 14238 >>Accept Infrared = Infradead
    .target Kilag Gorefang
step
    >>Use |T133149:0|t[Infraread Heat Focals] and kill |cRXP_ENEMY_SI:7 Assassins|r.
    .use 49611
    .goto 174,31.67,65.81
    .complete 14238,1 --10/10 SI:7 Assassin slain
    .mob SI:7 Assassin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kilag Gorefang|r.
    .goto 174,34.61,66.85
    .turnin 14238 >>Turn in Infrared = Infradead
    .accept 14240 >>Accept To the Cliffs
    .target Kilag Gorefang
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Brax|r.
    .goto 174,25.28,59.84
    .turnin 14240 >>Turn in To the Cliffs
    .accept 14241 >>Accept Get to the Gyrochoppa!
    .target Scout Brax
step
    >>Kill |cRXP_ENEMY_SI:7 Operatives|r and |cRXP_ENEMY_Gyrochopper Pilots|r. Loot them for the [|cRXP_LOOT_Gyrochoppa Keys|r].
    .goto 174,23.23,67.50
    .complete 14241,1 --1/1 Gyrochoppa Keys
    .mob SI:7 Operative
    .mob Gyrochopper Pilot
step
    >>Interact with the |cRXP_FRIENDLY_Gyrochoppa|r. You can ignore the pilot.
    .goto 174,23.2,67.5
    .turnin 14241 >>Turn in Get to the Gyrochoppa!
    .accept 14242 >>Accept Precious Cargo
    .target Gyrochoppa
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tGo down into the ship and talk to |cRXP_FRIENDLY_Thrall|r.
    .goto 174,11.8,62.7
    .complete 14242,1 --1/1 Precious Cargo located
    .target Thrall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r.
    .goto 174,11.8,62.8
    .turnin 14242 >>Turn in Precious Cargo
    .accept 14326 >>Accept Meet Me Up Top
    .target Thrall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tGo outside and meet |cRXP_FRIENDLY_Thrall|r on the deck.
    .goto 174,12.68,63.33,10,0
    .goto 174,12.4,63.1
    .turnin 14326 >>Turn in Meet Me Up Top
    .accept 14243 >>Accept Warchief's Revenge
    .target Thrall
step
    >>Focus the small boats with your |T237589:0|t[Lightning Strike] (1). Otherwise just kill the |cRXP_FRIENDLY_swimming sailors|r.
    .complete 14243,1 --50/50 Alliance Sailor slain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r.
    .goto 174,35.92,66.72
    .turnin 14243 >>Turn in Warchief's Revenge
    .accept 14445 >>Accept Farewell, For Now
    .target Thrall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r.
    .goto 174,36.02,67.53
    .turnin 14445 >>Turn in Farewell, For Now
    .accept 14244 >>Accept Up, Up & Away!
    .target Sassy Hardwrench
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Rocket Sling|r.
    .goto 174,36.34,66.55
    .skipgossip
    .complete 14244,1 --1/1 Rocket Sling Trip Survived
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Dampwick|r.
    .goto 174,44.54,64.36
    .turnin 14244 >>Turn in Up, Up & Away!
    .accept 14245 >>Accept It's a Town-In-A-Box
    .target Foreman Dampwick
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Town-In-A-Box Plunger|r.
    .goto 174,45.40,65.36
    .complete 14245,1 --1/1 Town-In-A-Box Set Off!
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Dampwick|r.
    .goto 174,45.36,64.74
    .turnin 14245 >>Turn in It's a Town-In-A-Box
    .accept 27139 >>Accept Hobart Needs You
    .target Foreman Dampwick
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart Grapplehammer|r.
    .goto 174,45.34,65.22
    .turnin 27139 >>Turn in Hobart Needs You
    .accept 24671 >>Accept Cluster Cluck
    .target Hobart Grapplehammer
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on 10 |cRXP_PICK_cluckers|r around the town.
#loop
	.line 174,45.64,64.12,46.45,64.90,47.03,65.75,46.28,66.40,45.39,66.82,44.55,66.91,44.52,65.61,44.67,63.90
	.goto 174,45.64,64.12,20,0
	.goto 174,46.45,64.90,20,0
	.goto 174,47.03,65.75,20,0
	.goto 174,46.28,66.40,20,0
	.goto 174,45.39,66.82,20,0
	.goto 174,44.55,66.91,20,0
	.goto 174,44.52,65.61,20,0
	.goto 174,44.67,63.90,20,0
    .complete 24671,1 --10/10 Wild Cluckers captured
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart Grapplehammer|r and |cRXP_FRIENDLY_Bamm Megabomb|r.
    .turnin 24671 >>Turn in Cluster Cluck
    .goto 174,45.34,65.22
    .accept 24741 >>Accept Trading Up
    .goto 174,45.25,64.85
    .target Hobart Grapplehammer
    .target Bamm Megabomb
step
    #completewith next
    .cast 202844 >>Use your |T1405809:0|t[Gunshoes] to move faster
    .use 132516
    .itemcount 132516,1
step
    >>Use the |T236997:0|t[Wild Cluster Eggs] to place an egg into a trap. Then wait until a |cRXP_ENEMY_raptor|r steps into the trap and loot the |cRXP_PICK_Spiny Raptor Egg|r.
    .use 50232
    .goto 174,49.64,63.45,30,0
    .goto 174,50.25,65.80,20,0
    .goto 174,50.64,68.35,15,0
    .goto 174,47.83,69.14,20,0
    .goto 174,45.93,69.88
    .complete 24741,1 --5/5 Spiny Raptor Egg
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bamm Megabomb|r and |cRXP_FRIENDLY_Hobart Grapplehammer|r.
    .turnin 24741 >>Turn in Trading Up
    .goto 174,45.25,64.85
    .accept 24744 >>Accept The Biggest Egg Ever
    .goto 174,45.34,65.21
    .target Bamm Megabomb
    .target Hobart Grapplehammer
step
    >>Kill the |cRXP_ENEMY_Mechachicken|r. Loot its [|cRXP_LOOT_egg|r].
    .goto 174,44.46,54.24
    .complete 24744,1 --1/1 The Biggest Egg Ever
    .mob Mechachicken
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart Grapplehammer|r.
    .goto 174,45.34,65.21
    .turnin 24744 >>Turn in The Biggest Egg Ever
    .accept 24816 >>Accept Who's Top of the Food Chain Now?
    .target Hobart Grapplehammer
step
    >>Kill |cRXP_ENEMY_Ravenous Lurkers|r. Loot them for their [|cRXP_LOOT_parts|r].
    .goto 174,43.41,70.15,20,0
    .goto 174,42.49,63.12,20,0
    .goto 174,41.53,63.36,10,0
    .goto 174,42.6,62.7
    .complete 24816,1 --5/5 Shark Parts
    .mob Ravenous Lurker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r.
    .goto 174,45.27,65.57
    .turnin 24816 >>Turn in Who's Top of the Food Chain Now?
    .accept 24817 >>Accept A Goblin in Shark's Clothing
    .target Assistant Greely
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Mechshark X-Steam Controller|r.
    .goto 174,43.68,65.50
    .complete 24817,1 --1/1 Use the Mechashark X-Steam Controller
step
    >>Use your 1 & 2 abilities to kill |cRXP_ENEMY_The Hammer|r.
    .goto 174,41.7,66.7
    .complete 24817,2 --1/1 The Hammer slain
    .mob The Hammer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart Grapplehammer|r.
    .goto 174,45.34,65.21
    .turnin 24817 >>Turn in A Goblin in Shark's Clothing
    .accept 24856 >>Accept Invasion Imminent!
    .target Hobart Grapplehammer
step
    #completewith next
    .cast 202844 >>Use your |T1405809:0|t[Gunshoes] to move faster
    .use 132516
    .itemcount 132516,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Megs Dreadshredder|r.
    .goto 174,52.2,73.2
    .turnin 24856 >>Turn in Invasion Imminent!
    .accept 24858 >>Accept Bilgewater Cartel Represent
    .target Megs Dreadshredder
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brett "Coins" McQuid|r.
    .goto 174,52.20,73.22
    .accept 24859 >>Accept Naga Hide
    .target Brett "Coins" McQuid
step
    #completewith next
    >>Kill |cRXP_ENEMY_Nagas|r while replacing the banners. Loot them for their [|cRXP_LOOT_hides|r].
    .goto 174,54.12,78.39,0,0
    .complete 24859,1 --5/5 Intact Naga Hide
step
    .goto 174,52.22,79.19,10,0
    .goto 174,52.76,78.97,10,0
    .goto 174,53.47,80.15,10,0
    .goto 174,54.14,79.91,10,0
    .goto 174,54.81,79.39,10,0
    .goto 174,55.50,79.54,10,0
    .goto 174,55.49,77.98,10,0
    .goto 174,54.86,76.94,10,0
    .goto 174,55.04,76.25,10,0
    .goto 174,53.53,76.90,10,0
    .complete 24858,1 --10/10 Naga Banners replaced
step
    >>Kill |cRXP_ENEMY_Nagas|r while replacing the banners. Loot them for their [|cRXP_LOOT_hides|r].
    .goto 174,54.27,83.49,30,0
    .goto 174,54.12,78.39,0,0
    .complete 24859,1 --5/5 Intact Naga Hide
    .mob Vashj'elan Warrior
    .mob Vashj'elan Siren
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brett "Coins" McQuid|r and |cRXP_FRIENDLY_Megs Dreadshredder|r.
    .turnin 24859 >>Turn in Naga Hide
    .goto 174,52.2,73.22
    .turnin 24858 >>Turn in Bilgewater Cartel Represent
    .accept 24864 >>Accept Irresistible Pool Pony
    .goto 174,52.20,73.14
    .target Brett "Coins" McQuid
    .target Megs Dreadshredder
step
    #completewith next
    .use 50602
    .cast 71914 >>Use the |T132261:0|t[Irresistible Pool Pony] once you reach the water.
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Naga Hatchlings|r. |cRXP_WARN_Be careful to not kill the hatchlings with AoE abilities|r.
    .use 50602
    .goto 174,59.23,83.03
    .complete 24864,1 --12/12 Naga Hatchlings lured
    .target Naga Hatchling
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk |cRXP_FRIENDLY_Megs Dreadshredder|r.
    .goto 174,52.2,73.15
    .turnin 24864 >>Turn in Irresistible Pool Pony
    .accept 24868 >>Accept Surrender or Else!
    .target Megs Dreadshredder
step
    >>|cRXP_WARN_When you see the spawn animation (purple circle) then you can already go back. Keep looking behind you because you still have to kill the |cRXP_ENEMY_leader|r|r.
    .goto 174,54.07,90.06,1,0
    .goto 174,53.90,84.17
    .complete 24868,1 --1/1 Leader of the naga dealt with
    .mob Faceless of the Deep
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Megs Dreadshredder|r.
    .goto 174,52.20,73.15
    .turnin 24868 >>Turn in Surrender or Else!
    .accept 24897 >>Accept Get Back to Town
    .target Megs Dreadshredder
step
    #completewith next
    .cast 202844 >>Use your |T1405809:0|t[Gunshoes] to move faster
    .use 132516
    .itemcount 132516,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r.
    .goto 174,45.18,64.91
    .turnin 24897 >>Turn in Get Back to Town
    .accept 24901 >>Accept Town-In-A-Box: Under Attack
    .target Sassy Hardwrench
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick a |cRXP_PICK_B.C. Eliminator|r to enter it and shoot at |cRXP_ENEMY_Oomlot Warriors|r.
    .goto 174,45.7,65.0
    .complete 24901,1 --30/30 Oomlot Warriors defeated
step
    #completewith next
    +|cRXP_WARN_Leave the vehicle|r.
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r.
    .goto 174,45.2,64.9
    .turnin 24901 >>Turn in Town-In-A-Box: Under Attack
    .accept 24924 >>Accept Oomlot Village
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Izzy|r.
    .goto 174,56.56,71.96
    .turnin 24924 >>Turn in Oomlot Village
    .accept 24925 >>Accept Free the Captives
    .accept 24929 >>Accept Send a Message
    .target Izzy
step
    #completewith next
    >>Kill |cRXP_ENEMY_Oomlot Shamans|r to free the goblins.
    .goto 174,59.16,70.39,0,0
    .complete 24925,1 --5/5 Goblin Captives freed
    .mob Oomlot Shaman
step
    >>Kill |cRXP_ENEMY_Yngwie|r.
    .goto 174,59.20,67.32,15,0
    .goto 174,62.91,68.54
    .complete 24929,1 --1/1 Yngwie slain
    .mob Yngwie
step
    >>Kill |cRXP_ENEMY_Oomlot Shamans|r to free the goblins.
    .goto 174,59.16,70.39
    .complete 24925,1 --5/5 Goblin Captives freed
    .mob Oomlot Shaman
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Izzy|r.
    .goto 174,56.56,71.96
    .turnin 24925 >>Turn in Free the Captives
    .turnin 24929 >>Turn in Send a Message
    .accept 24937 >>Accept Oomlot Dealt With
    .target Izzy
step
    #completewith next
    .hs >>Hearth to Town-In-A-Box
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r.
    .goto 174,45.2,64.9
    .turnin 24937 >>Turn in Oomlot Dealt With
    .accept 24940 >>Accept Up the Volcano
    .target Sassy Hardwrench
step
    #completewith next
    .cast 202844 >>Use your |T1405809:0|t[Gunshoes] to move faster
    .use 132516
    .itemcount 132516,1
step
    #completewith next
    +|cRXP_WARN_Avoid the |cRXP_ENEMY_Goblin Zombies|r while running up the mountain|r.
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coach Crosscheck|r, |cRXP_FRIENDLY_Foreman Dampwick|r and |cRXP_FRIENDLY_Assistant Greely|r.
    .turnin 24940 >>Turn in Up the Volcano
    .accept 24942 >>Accept Zombies vs. Super Booster Rocket Boots
    .goto 174,51.8,47.1
    .accept 24945 >>Accept Three Little Pygmies
    .goto 174,51.85,47.19
    .accept 24946 >>Accept Rockin' Powder
    .goto 174,51.73,47.38
    .target Coach Crosscheck
    .target Foreman Dampwick
    .target Assistant Greely
step
    #completewith next
    >>|cRXP_WARN_You have to cancel Shadowform if you are a shadow priest before you can use the boots|r. <<Priest
    .use 52013
    .goto 174,51.77,46.97
    .cast 72891 >>|cRXP_WARN_Use the |T133029:0|t[Super Booster Rocket Boots]|r.
step
    #completewith next
    >>Kill |cRXP_ENEMY_Goblin Zombies|r by walking over them with the Rocket Boots.
    >>|cRXP_WARN_Avoid |cRXP_ENEMY_Oostan Headhunters|r|r. They can kill you very easily.
    .use 52013
    .complete 24942,1 --50/50 Goblin Zombies slain
step
    #completewith TheLostIslesGaahl
    >>Pick up |cRXP_PICK_Rockin' Powder|r from the ground.
    .complete 24946,1 --5/5 Rockin' Powder
step
    >>Kill |cRXP_ENEMY_Malmo|r.
    .goto 174,58.74,47.16
    .complete 24945,2 --1/1 Malmo slain
    .mob Malmo
step
    >>Kill |cRXP_ENEMY_Teloch|r.
    .goto 174,63.7,52.76
    .complete 24945,3 --1/1 Teloch slain
    .mob Teloch
step
    #label TheLostIslesGaahl
    >>Kill |cRXP_ENEMY_Gaahl
    .goto 174,59.59,40.20
    .complete 24945,1 --1/1 Gaahl slain
    .mob Gaahl
step
    >>Look around and pick up the remaining |cRXP_PICK_Rockin' Powders|r.
    .goto 174,58.8,40.5
    .complete 24946,1 --5/5 Rockin' Powder
step
    >>Kill |cRXP_ENEMY_Goblin Zombies|r by walking over them with the Rocket Boots.
    .use 52013
    .goto 174,56.67,44.26,15,0
    .complete 24942,1 --50/50 Goblin Zombies slain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Dampwick|r, |cRXP_FRIENDLY_Assistant Greedy|r, and |cRXP_FRIENDLY_Coach Crosscheck|r.
    .turnin 24945 >>Turn in Three Little Pygmies
    .goto 174,51.85,47.20
    .turnin 24946 >>Turn in Rockin' Powder
    .goto 174,51.73,47.38
    .turnin 24942 >>Turn in Zombies vs. Super Booster Rocket Boots
    .accept 24952 >>Accept Rocket Boot Boost
    .goto 174,51.8,47.1
    .target Foreman Dampwick
    .target Assistant Greedy
    .target Coach Crosscheck
step
    >>Use the |T133029:0|t[Rockin' Powder Infused Rocket Boots]
    .use 52032
    .complete 24952,1 --1/1 Rockin' Powder Infused Rocket Boots used
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart Grapplehammer|r.
    .goto 174,68.93,46.44
    .turnin 24952 >>Turn in Rocket Boot Boost
    .accept 24954 >>Accept Children of a Turtle God
    .target Hobart Grapplehammer
step
    >>Kill |cRXP_ENEMY_Childs of Volcanoth|r. Loot them for the [|cRXP_LOOT_glands|r].
    .goto 174,66.92,44.29,20,0
    .goto 174,68.64,43.40
    .complete 24954,1 --5/5 Fire Gland
    .mob Childs of Volcanoth
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart Grapplehammer|r.
    .goto 174,68.93,46.44
    .turnin 24954 >>Turn in Children of a Turtle God
    .accept 24958 >>Accept Volcanoth!
    .target Hobart Grapplehammer
step
    >>Spam Use |T135624:0|t[Bootzooka] at the waypoint location on |cRXP_ENEMY_Volcanoth|r.
    .use 52043
    .goto 176,55.55,33.93
    .complete 24958,1 --1/1 Volcanoth slain
    .mob Volcanoth
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r.
    .goto 176,62.99,49.87
    .turnin 24958 >>Turn in Volcanoth!
    .accept 25023 >>Accept Old Friends
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r, |cRXP_FRIENDLY_Sassy Hardwrench|r, and |cRXP_FRIENDLY_Aggra|r.
    .turnin 25023 >>Turn in Old Friends
    .accept 25024 >>Accept Repel the Paratroopers
    .goto 174,36.79,43.14
    .accept 25058 >>Accept Mine Disposal, the Goblin Way
    .goto 174,37.35,41.91
    .accept 25093 >>Accept The Heads of the SI:7
    .goto 174,36.26,43.36
    .target Thrall
    .target Sassy Hardwrench
    .target Aggra
step
    #sticky
    #label TheLostIslesLandMines
    >>Use the |T133716:0|t[Satchel of Grenades] to destroy the mines
    .goto 174,32.38,36.34,0,0
    .use 52280
    .complete 25058,1 --10/10 Land Mines detonated
step
    #completewith TheLostIslesCyn
    >>Kill |cRXP_ENEMY_Alliance Paratrooper|r.
    .complete 25024,1 --10/10 Alliance Paratrooper slain
    .mob Alliance Paratrooper
step
    >>Kill |cRXP_ENEMY_Commander Arrington|r. Loot him for his [|cRXP_LOOT_head|r].
    .goto 174,32.29,42.89
    .complete 25093,1 --1/1 Commander Arrington's Head
    .target Commander Arrington
step
    >>Kill |cRXP_ENEMY_Alexi Silenthowl|r. Loot him for his [|cRXP_LOOT_head|r].
    .goto 174,30.80,33.92
    .complete 25093,3 --1/1 Alexi Silenthowl's Head
    .mob Alexi Silenthowl
step
    #label TheLostIslesCyn
    >>Kill |cRXP_ENEMY_Darkblade Cyn|r. Loot him for his [|cRXP_LOOT_head|r].
    .goto 174,33.44,27.88
    .complete 25093,2 --1/1 Darkblade Cyn's Head
    .mob Darkblade Cyn
step
    >>Kill |cRXP_ENEMY_Alliance Paratrooper|r.
    .goto 174,32.38,36.34
    .complete 25024,1 --10/10 Alliance Paratrooper slain
    .mob Alliance Paratrooper
step
    #requires TheLostIslesLandMines
    #completewith next
    .cooldown item,6948,<1,1
    .hs >>Hearth to Warchief's Lookout
step
    #requires TheLostIslesLandMines
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r, |cRXP_FRIENDLY_Aggra|r, and |cRXP_FRIENDLY_Sassy Hardwrench|r.
    .turnin 25024 >>Turn in Repel the Paratroopers
    .goto 174,36.8,43.1
    .turnin 25093 >>Turn in The Heads of the SI:7
    .goto 174,36.26,43.37
    .turnin 25058 >>Turn in Mine Disposal, the Goblin Way
    .accept 25066 >>Accept The Pride of Kezan
    .goto 174,37.35,41.91
    .target Thrall
    .target Aggra
    .target Sassy Hardwrench
step
    #completewith next
    .skipgossip 38387,1
    .vehicle 39074 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r to enter the vehicle.
    .target Sassy Hardwrench
step
    >>Use |T134273:0|t[Wild Weasel Rockets] (2) on cooldown
    >>Otherwise spam |T135627:0|t[Machine Gun] (1)
    .goto 174,30.37,39.89
    .complete 25066,1 --10/10 Gnomeregan Stealth Fighters shot down
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFly back and talk to |cRXP_FRIENDLY_Sassy Hardwrench|r.
    .goto 174,37.36,41.92
    .turnin 25066 >>Turn in The Pride of Kezan
    .accept 25098 >>Accept The Warchief Wants You
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r.
    .goto 174,36.79,43.13
    .turnin 25098 >>Turn in The Warchief Wants You
    .accept 25099 >>Accept Borrow Bastia
    .target Thrall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kilag Gorefang|r.
    .goto 174,33.8,38.8
    .turnin 25099 >>Turn in Borrow Bastia
    .accept 25100 >>Accept Let's Ride
    .timer 87,Panther Ride
    .target Kilag Gorefang
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slinky Sharpshiv|r after riding with the panther.
    .goto 174,53.71,34.94
    .turnin 25100 >>Turn in Let's Ride
    .accept 25109 >>Accept The Gallywix Labor Mine
    .target Slinky Sharpshiv
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEnter the cave, jump down and talk to |cRXP_FRIENDLY_Assistant Greely|r.
    .goto 174,54.09,36.01,10,0
    .goto 174,54.94,33.72,10,0
    .goto 174,53.17,36.55
    .turnin 25109 >>Turn in The Gallywix Labor Mine
    .accept 25110 >>Accept Kaja'Cola Gives You IDEAS! (TM)
    .target Assistant Greely
step
    >>Pick up a |cRXP_PICK_Kaja'Cola Zero-One|r from the ground.
    .goto 174,53.59,37.41,10,0
    .goto 174,53.94,37.46,10,0
    .goto 174,53.70,36.67
    .complete 25110,1 --1/1 Kaja'Cola Zero-One
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r.
    .goto 174,53.17,36.55
    .turnin 25110 >>Turn in Kaja'Cola Gives You IDEAS! (TM)
    .accept 25122 >>Accept Morale Boost
    .accept 25123 >>Accept Throw It On the Ground!
    .target Assistant Greely
step
    #sticky
    >>You need to collect a total of 9 Kaja'Colas Zero-One
    >>Target a |cRXP_FRIENDLY_Kezan Citizen|r and use the cola
    .use 52484
    .collect 52484,9,25122,0xF
    .complete 25122,4 --6/6 Other goblin's minds freed
    .target Kezan Citizen
step
    #title Free Ace
    >>Target |cRXP_FRIENDLY_Ace|r and use a Kaja'Cola Zero-One
    .goto 174,57.1,36.9
    .use 52484
    .complete 25122,1 --1/1 Ace's mind freed
    .target Ace
step
    #title Free Izzy
    >>Target |cRXP_FRIENDLY_Izzy|r and use a Kaja'Cola Zero-One
    .goto 174,57.01,35.02
    .use 52484
    .complete 25122,2 --1/1 Izzy's mind freed
    .target Izzy
step
    >>Kill |cRXP_ENEMY_Blastshadow the Brutemaster|r and pick up the flying purple |cRXP_PICK_Soulstone|r. Target the corpse of |cRXP_ENEMY_Blastshadow the Brutemaster|r and use |T134336:0|t[Blastshadow's Soulstone]
    .use 52481
    .goto 174,56.18,32.29
    .complete 25123,1 --1/1 Blastshadow's Soulstone destroyed
    .mob Blastshadow the Brutemaster
step
    #title Free Gobber
    >>Target |cRXP_FRIENDLY_Gobber|r and use a Kaja'Cola Zero-One
    .goto 174,57.04,32.17
    .use 52484
    .complete 25122,3 --1/1 Gobber's mind freed
    .target Gobber
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r.
    .turnin 25123 >>Turn in Throw It On the Ground!
    .turnin 25122 >>Turn in Morale Boost
    .accept 25125 >>Accept Light at the End of the Tunnel
    .target Assistant Greely
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Mine Cart|r.
    .goto 174,56.29,27.33
    .turnin 25125 >>Turn in Light at the End of the Tunnel
    .accept 25184 >>Accept Wild Mine Cart Ride
step
    >>Ride with the Mine Cart
    .goto 174,54.2,17.0
    .complete 25184,1 --1/1 Mine Cart ridden
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r.
    .goto 174,54.4,16.9
    .turnin 25184 >>Turn in Wild Mine Cart Ride
    .accept 25200 >>Accept Shredder Shutdown
    .target Assistant Greely
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coach Crosscheck|r.
    .goto 174,54.44,16.93
    .accept 25201 >>Accept The Ultimate Footbomb Uniform
    .target Coach Crosscheck
step
    #sticky
    #label TheLostIslesShredderShutdown
    >>Kill |cRXP_ENEMY_Steamwheedle Sharks|r.
    .goto 174,53.5,18.9,0,0
    .complete 25200,1 --8/8 Steamwheedle Shark slain
    .mob Steamwheedle Shark
step
    >>Pick up the [|cRXP_LOOT_Spare Shredder Parts|r].
    .goto 174,53.24,19.55,20,0
    .goto 174,52.16,20.68,20,0
    .goto 174,51.85,19.17,20,0
    .goto 174,52.64,16.93,20,0
    .goto 174,53.13,18.70
    .complete 25201,1 --8/8 Spare Shredder Parts
step
    #requires TheLostIslesShredderShutdown
    #completewith next
    .goto 174,54.47,17.16
    .vendor
step
    #requires TheLostIslesShredderShutdown
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coach Crosscheck|r.
    .goto 174,54.44,16.93
    .turnin 25201 >>Turn in The Ultimate Footbomb Uniform
    .target Coach Crosscheck
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r.
    .goto 174,54.4,16.93
    .turnin 25200 >>Turn in Shredder Shutdown
    .accept 25204 >>Accept Release the Valves
    .target Assistant Greely
step << Male
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ace|r.
    .goto 174,54.16,17.21
    .accept 25203 >>Accept What Kind of Name is Chip, Anyway?
    .target Ace
step << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Izzy|r.
    .goto 174,54.01,16.98
    .accept 25202 >>Accept The Fastest way to His Heart
    .target Izzy
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_valve|r.
    .goto 174,50.85,15.86,10,0
    .goto 174,50.72,13.81
    .complete 25204,1 --1/1 Valve #1 released
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_valve|r.
    .goto 174,50.5,13.2
    .complete 25204,3 --1/1 Valve #3 released
step << Female
    >>Kill |cRXP_ENEMY_Chip Endale|r. Loot him for his [|cRXP_LOOT_heart|r].
    .goto 174,50.1,13.8
    .complete 25202,1 --1/1 Still-Beating Heart
    .mob Chip Endale
step << Male
    >>Kill |cRXP_ENEMY_Chip Endale|r. Loot him for his [|cRXP_LOOT_heart|r].
    .goto 174,50.1,13.8
    .complete 25203,1 --1/1 Still-Beating Heart
    .mob Chip Endale
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_valve|r.
    .goto 174,49.9,12.8
    .complete 25204,4 --1/1 Valve #4 released
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_valve|r.
    .goto 174,50.2,11.8
    .complete 25204,2 --1/1 Valve #2 released
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Platform Control Panel|r.
    .goto 174,51.4,13.1
    .turnin 25204 >>Turn in Release the Valves
    .accept 25207 >>Accept Good-bye, Sweet Oil
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Red Button|r.
    .goto 174,51.4,13.1
    .complete 25207,1 --1/1 KTC Oil Platform destroyed
step << Male
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ace|r.
    .goto 174,54.16,17.19
    .turnin 25203 >>Turn in What Kind of Name is Chip, Anyway?
    .target Ace
step << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Izzy|r.
    .goto 174,54.01,16.97
    .turnin 25202 >>Turn in The Fastest way to His Heart
    .target Izzy
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r.
    .goto 174,54.4,16.9
    .turnin 25207 >>Turn in Good-bye, Sweet Oil
    .accept 25213 >>Accept The Slave Pits
    .timer 24,Shredder Ride
    .target Assistant Greely
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r after riding with the shredder.
    .goto 174,43.63,25.32
    .turnin 25213 >>Turn in The Slave Pits
    .accept 25244 >>Accept What Kind of Name is Candy, Anyway? << Female
	.accept 25243 >>Accept She Loves Me. She Loves Me NOT! << Male
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart|r.
    .goto 174,43.85,25.30
    .accept 25214 >>Accept Escape Velocity
    .target Hobart
step
    #completewith next
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on |cRXP_FRIENDLY_Captured Goblins|r.
    .complete 25214,1 --8/8 Cages launched
    .target Captured Goblin
step
    >>Kill |cRXP_ENEMY_Candy Cane|r.
    .goto 174,39.68,27.18
    .complete 25244,1 << Female --1/1 Candy Cane slain
	.complete 25243,1 << Male --1/1 Candy Cane slain
    .mob Candy Cane
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on |cRXP_FRIENDLY_Captured Goblins|r.
    .goto 174,40.03,26.08,10,0
    .goto 174,41.03,25.24,15,0
    .goto 174,41.24,26.35
    .complete 25214,1 --8/8 Cages launched
    .target Captured Goblin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart Grapplehammer|r and |cRXP_FRIENDLY_Sassy Hardwrench|r.
    .turnin 25214 >>Turn in Escape Velocity
    .goto 174,43.85,25.29
    .turnin 25244 >>Turn in What Kind of Name is Candy, Anyway? << Female
	.turnin 25243 >>Turn in She Loves Me. She Loves Me NOT! << Male
    .accept 25251 >>Accept Final Confrontation
    .goto 174,43.63,25.32
    .target Hobart Grapplehammer
    .target Sassy Hardwrench
step
    >>Enter the |cRXP_PICK_Ultimate Footbomb Uniform|r.
    .goto 174,43.86,25.16
    .complete 25251,1 --1/1 Ultimate Footbomb Uniform
step
    >>Target |cRXP_ENEMY_Trade Prince Gallywix|r and all use your abilities on cooldown
    .goto 174,41.87,17.61,10,0
    .goto 174,43.4,19.9
    .complete 25251,2 --1/1 Trade Prince Gallywix dealt with
    .mob Trade Prince Gallywix
step
    #completewith next
    .goto 174,42.76,18.61,10,0
    .goto 174,42.24,19.45,20 >>Jump down
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r.
    .goto 174,43.6,25.3
    .turnin 25251 >>Turn in Final Confrontation
    .accept 25265 >>Accept Victory!
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r.
    .goto 174,42.16,17.37
    .turnin 25265 >>Turn in Victory!
    .accept 25266 >>Accept Warchief's Emissary
    .target Thrall
step
    #completewith next
    .goto 174,42.57,16.37
    .skipgossip
    .zone 1 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r.
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkspear Loyalist|r.
    .goto 1,57.65,9.78
    .turnin 25266 >>Turn in Warchief's Emissary
    .accept 25267 >>Accept Message for Saurfang
    .target Darkspear Loyalist
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Saurfang|r.
    .goto 85,48.5,70.8
    .turnin 25267 >>Turn in Message for Saurfang
    .target Saurfang
]])

--HighmountainTauren Highmountain
RXPGuides.RegisterGuide([[
#retail
#version 2
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(1-80)|r Default
#name a) HighmountainTauren
#displayname |cFF00CCFF1|r - Highmountain
#next

<< HighmountainTauren !DK

step
    .cast 205456 >>Use the |T134309:0|t[Lost Dragonscale]
    .use 205456
-- step
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mayla Highmountain|r.
--     .goto 652,54.85,63.18
--     .accept 49773 >>Accept For the Horde
--     .target Mayla Highmountain
-- step
--     #completewith next
--     .goto 652,46.02,63.78
--     .zone 85 >>Take to portal to Orgrimmar
-- step 
--     .goto 85,39.40,79.54
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Blackguard|r.
--     .turnin 49773 >>Turn in For the Horde
--     .target Ambassador Blackguard
-- step 
--     .goto 85,40.834,80.155
--     >>Talk to |cRXP_FRIENDLY_Chromie|r.
--     .complete 50319,1 << HighmountainTauren --Talk to Chromie (1)
--     .target Chromie
-- step
--     .goto 85,40.777,80.404
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halian Shlavahawk|r.
--     .turnin 50319 >>Turn in Stranger in a Strange Land 
--     .target Halian Shlavahawk 
]])

--Nightborne The Nighthold
RXPGuides.RegisterGuide([[
#retail
#version 2
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(1-80)|r Default
#name a) Nightborne Intro
#displayname |cFF00CCFF1|r - The Nighthold
#next

<< Nightborne !DK

step
    .cast 205456 >>Use the |T134309:0|t[Lost Dragonscale]
    .use 205456
-- step
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Arcanist Thalyssra|r.
--     .goto 680,59.34,85.53
--     .accept 49933 >>Accept For the Horde
--     .target First Arcanist Thalyssra
-- step
--     #completewith next
--     .goto 680,58.18,87.32
--     .zone 85 >>Take to portal to Orgrimmar
-- step
--     .goto 85,39.40,79.54
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Blackguard|r.
--     .turnin 49933 >>Turn in For the Horde << Nightborne
--     .target Ambassador Blackguard
-- step
--     .goto 85,40.834,80.155
--     >>Talk to |cRXP_FRIENDLY_Chromie|r.
--     .target Chromie
-- step
--     .goto 85,40.777,80.404
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melitier Vahlouran|r.
--     .turnin 50303 >>Turn in Stranger in a Strange Land
--     .target Melitier Vahlouran 
]])

--ZandalariTroll Dazar'alor
RXPGuides.RegisterGuide([[
#retail
#version 2
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(1-80)|r Default
#name a) ZandalariTroll Intro
#displayname |cFF00CCFF1|r - Dazar'alor
#next

<< ZandalariTroll !DK

step
    .cast 205456 >>Use the |T134309:0|t[Lost Dragonscale]
    .use 205456
-- step
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Queen Talanji|r.
--     .goto 1165,49.93,46.64
--     .accept 55137 >>Accept For the Horde
--     .target Queen Talanji
-- step
--     #completewith next
--     .goto 1165,49.94,43.85
--     .zone 85 >>Take the portal to Orgrimmar
-- step
--     .goto 85,39.40,79.54
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Blackguard|r.
--     .turnin 55137 >>Turn in For the Horde
--     .target Ambassador Blackguard
-- step
--     .goto 85,40.834,80.155
--     >>Talk to |cRXP_FRIENDLY_Chromie|r.
--     .complete 55138,1 --Talk to Chromie (1)
--     .target Chromie
-- step
--     .goto 85,40.777,80.404
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Natal'hakata|r. << ZandalariTroll
--     .turnin 55138 >>Turn in Stranger in a Strange Land
--     .target Natal'hakata
]])

--MagharOrc Orgrimmar
RXPGuides.RegisterGuide([[
#retail
#version 2
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(1-80)|r Default
#name a) MagharOrc Intro
#displayname |cFF00CCFF1|r - Orgrimmar
#next

<< MagharOrc !DK

step
    .cast 205456 >>Use the |T134309:0|t[Lost Dragonscale]
    .use 205456
-- step
--     .goto 85,70.6,44.6
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Geya'rah|r.
--     .accept 51485 >>Accept For the Horde
--     .target Overlord Geya'rah
-- step
--     .goto 85,39.40,79.54
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Blackguard|r.
--     .turnin 51485 >>Turn in For the Horde
--     .accept 53502 >>Accept Stranger in a Strange Land
--     .target Ambassador Blackguard
-- step
--     .goto 85,40.834,80.155
--     >>Talk to |cRXP_FRIENDLY_Chromie|r.
--     .complete 53502,1 --Talk to Chromie (1)
--     .target Chromie
-- step
--     .goto 85,40.777,80.404
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Limbflayer Lasha|r.
--     .turnin 53502 >>Turn in Stranger in a Strange Land
--     .target Limbflayer Lasha 
]])

--Vulpera Orgrimmar
RXPGuides.RegisterGuide([[
#retail
#version 2
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(1-80)|r Default
#name a) Vulpera Intro
#displayname |cFF00CCFF1|r - Orgrimmar

<< Vulpera !DK
 
step
    .cast 205456 >>Use the |T134309:0|t[Lost Dragonscale]
    .use 205456
-- step
--     .goto 85,64.647,46.514
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nilsa|r.
--     .accept 58122 >>Accept For the Horde
--     .target Nilsa
-- step
--     .goto 85,39.40,79.54
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Blackguard|r.
--     .turnin 58122 >>Turn in For the Horde
--     .accept 58124 >>Accept Stranger in a Strange Land 
--     .target Ambassador Blackguard
-- step
--     .goto 85,40.834,80.155
--     >>Talk to |cRXP_FRIENDLY_Chromie|r.
--     .complete 58124,1 --Talk to Chromie (1)
--     .target Chromie
-- step
--     .goto 85,40.777,80.404
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nilsa|r.
--     .turnin 58124 >>Turn in Stranger in a Strange Land
--     .target Nilsa 
]])