local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name Boosted Character 58-60
#version 1
#group RestedXP Horde Boosted 58-60
#defaultfor 58Boost
#next RestedXP Horde 60-70\60-61 Hellfire Peninsula
step << !Druid !Paladin
    .turnin 64046 >>Turn in A New Beginning
step << Druid
    .turnin 64047 >>Turn in A New Beginning
	.accept 64049 >>Accept Tools for Survival

step << !Druid !Paladin
    .accept 64048 >>Accept Tools for Survival

step << !Paladin
	#sticky
	#completewith next
	>>Open your Azeroth Survival Kit & equip a weapon.
step << !Druid !Paladin
    .complete 64048,1 --1/1 Open the Survival Kit (1)
    .complete 64048,2 --1/1 Equip a Weapon (1)
step << Druid
    .complete 64049,1 --1/1 Open the Survival Kit (1)
    .complete 64049,2 --1/1 Equip a Weapon (1)

step << !Druid !Paladin
    .turnin 64048 >>Turn in Tools for Survival
    .accept 64050 >>Accept Combat Training

step << Druid
    .turnin 64049 >>Turn in Tools for Survival
    .accept 64051 >>Accept Combat Training

step << Warrior
    .train 11581 >> Learn Thunder Clap.
step << Rogue
    .train 11269 >> Learn Ambush
step << Hunter
    .train 14325 >> Learn Hunter's Mark
step << Shaman
    .train 10473 >> Learn Frost Shock
step << Warlock
    .train 11726 >> Learn Enslave Demon
step << Priest
	.train 10912 >> Learn Mind Control
step << BloodElf Priest
    .train 32676 >> Learn Consume Magic
step << Troll Priest
    .train 9035 >> Learn all the ranks of Hex of Weakness
    .train 18137 >> Learn all the ranks of Shadowguard
step << Druid
    .train 9853 >> Learn Entangling Roots
step << Mage
    .train 22783 >> Learn Mage Armor

step << !Druid !Paladin
	.complete 64050,1 --1/1 Train a Spell (1)
step << Druid
    .complete 64051,1 --1/1 Train a Spell (1)

step << !Druid !Paladin
    .turnin 64050 >>Turn in Combat Training
    .accept 64052 >>Accept Talented
step << Druid
    .turnin 64051 >>Turn in Combat Training
step << Druid
    .accept 64053 >>Accept Talented
step << !Druid !Paladin
	>>Spec into any talent build you want to play while leveling.
	.complete 64052,1 --1/1 Spend a Talent Point (1)
step << Druid
	>>Spec into any talent build you want to play while leveling.
    .complete 64053,1 --1/1 Spend a Talent Point (1)

step << !Druid !Paladin
    .turnin 64052 >>Turn in Talented
step << Druid
    .turnin 64053 >>Turn in Talented
step << !Druid !Paladin
	#label nondruidboost
    .accept 64063 >> Accept The Dark Portal
step << Druid
	#label druidboost
	.accept 64217 >> Accept The Dark Portal

step << Druid

    .fly Orgrimmar >>Fly to Orgrimmar

step << Mage
    .goto Orgrimmar,38.7,85.5
    >>Run up to the 2nd floor to train Teleport & Portal to Orgrimmar
	.train 3567 >> Teleport: Orgrimmar
	.train 11417 >> Portal: Orgrimmar
step << Warlock
    .goto Orgrimmar,47.6,46.7,0
	.vendor 5815 >> Talk to Kurgul to purchase your minions Grimoires
step	<<!Paladin
    .goto Orgrimmar,54.5,67.6
    >>Buy at least 2 stacks of food/water from Barkeep Morag.
	.vendor
step << Druid
    .goto Durotar,50.7,12.9
    .complete 64217,1 --Visit Snurk Bucksquick, the Zeppelin Master (1)
step << !Druid
    .goto Durotar,50.7,12.9
    .complete 64063,1 --Visit Snurk Bucksquick, the Zeppelin Master (1)
step
    #sticky
    #completewith next
+Take the zeppelin to Undercity
    .goto Durotar,50.8,13.8
step
	.zone Tirisfal Glades >>Arrive in Tirisfal
step
	.goto Tirisfal Glades,83.1,68.9
.target High Executor Derrington
>>Talk to |cRXP_FRIENDLY_High Executor Derrington|r
    .accept 5096 >>Accept Scarlet Diversions
step
	>> Loot the crate next to the fire. Also save every Bone Fragment you get in the zone!
	.goto Tirisfal Glades,83.1,68.9
	.collect 12814,1
step
    .goto Tirisfal Glades,83.2,68.6
.target Argent Quartermaster Lightspark
>>Talk to |cRXP_FRIENDLY_Argent Quartermaster Lightspark|r
    .turnin 5405 >>Turn in Argent Dawn Commission
step
	#sticky
	#completewith next
	>>Equip your Argent Dawn Commission trinket. We will need the Scourgestones for a later quest.
step
    .goto Tirisfal Glades,83.1,71.6
.target Mehlar Dawnblade
>>Talk to |cRXP_FRIENDLY_Mehlar Dawnblade|r
    .accept 9443 >>Accept The So-Called Mark of the Lightbringer
step
    .goto Tirisfal Glades,83.3,72.1
.target Mickey Levine
>>Talk to |cRXP_FRIENDLY_Mickey Levine|r
    .accept 5901 >>Accept A Plague Upon Thee
step
	>> This quest can be hard. Clear them out slowly from the back of the tent and destroy it. Put down the banner afterwards.
    .goto Western Plaguelands,40.7,51.7
    .complete 5096,1 --Destroy the command tent and plant the Scourge banner in the camp (1)
step
    .goto Tirisfal Glades,83.1,68.9
.target High Executor Derrington
>>Talk to |cRXP_FRIENDLY_High Executor Derrington|r
    .turnin 5096 >>Turn in Scarlet Diversions
step
    .goto Tirisfal Glades,83.1,69.2
.target High Executor Derrington
>>Talk to |cRXP_FRIENDLY_High Executor Derrington|r
    .accept 5098 >>Accept All Along the Watchtowers
    .accept 5228 >>Accept The Scourge Cauldrons

step
    .goto Tirisfal Glades,83.0,71.9
.target Shadow Priestess Vandis
>>Talk to |cRXP_FRIENDLY_Shadow Priestess Vandis|r
    .turnin 5228 >>Turn in The Scourge Cauldrons
step
    .goto Tirisfal Glades,83.0,71.6
.target Shadow Priestess Vandis
>>Talk to |cRXP_FRIENDLY_Shadow Priestess Vandis|r
    .accept 5229 >>Accept Target: Felstone Field
step
	>>Kill the Cauldon Lord
    .goto Western Plaguelands,36.5,57.7
    .complete 5229,1 --Felstone Field Cauldron Key (1)
step
    .goto Western Plaguelands,37.2,56.9
    .turnin 5229 >>Turn in Target: Felstone Field
    .accept 5230 >>Accept Return to the Bulwark
step
    .goto Western Plaguelands,38.3,54.1
.target Janice Felstone
>>Talk to |cRXP_FRIENDLY_Janice Felstone|r
    .accept 5021 >>Accept Better Late Than Never
step
    .goto Western Plaguelands,38.7,55.3
    .turnin 5021 >>Turn in Better Late Than Never
    .accept 5023 >>Accept Better Late Than Never
step
    .goto Tirisfal Glades,83.1,71.9
>>Talk to |cRXP_FRIENDLY_Shadow Priestess Vandis|r
    .turnin 5230 >>Turn in Return to the Bulwark
.target Shadow Priestess Vandis
    .accept 5231 >>Accept Target: Dalson's Tears


step
    .goto Western Plaguelands,39.5,67.0
.target Chromie
>>Talk to |cRXP_FRIENDLY_Chromie|r
    .accept 4971 >>Accept A Matter of Time

step
	#sticky
	#completewith wplbf
	+Make sure you kill & loot mobs between each tower for Bone Fragments.
step
    .goto Western Plaguelands,40.2,71.5
    .complete 5098,1 --Tower One marked (1)
step
    .goto Western Plaguelands,42.5,66.2
    .complete 5098,2 --Tower Two marked (1)
step
    .goto Western Plaguelands,44.2,63.0
    .complete 5098,3 --Tower Three marked (1)
step
	#label wplbf
	.goto Western Plaguelands,46.7,71.1
    .complete 5098,4 --Tower Four marked (1)
step
	>>Use the Temporal Displacer near the silos of Andorhal to spawn the parasites.
    .goto Western Plaguelands,45.8,63.3
    .complete 4971,1 --Temporal Parasite (10)
step
	>>Kill the Cauldron Lord
    .goto Western Plaguelands,46.2,52.4
    .complete 5231,1 --Dalson's Tears Cauldron Key (1)
step
    .goto Western Plaguelands,46.2,52.1
    .turnin 5231 >>Turn in Target: Dalson's Tears
    .accept 5232 >>Accept Return to the Bulwark
step
    .goto Western Plaguelands,47.8,50.8
    .turnin 5058 >>Turn in Mrs. Dalson's Diary
step
	>>Kill the Wandering Skeleton that is behind both buildings & loot the Outhouse Key. If he's not up, grind more Bone Fragments.
	.collect 12738,1
step
	>>Using the key on the Outhouse will summon Farmer Dalson. Kill/loot him.
    .goto Western Plaguelands,48.2,49.7
    .turnin 5059 >>Turn in Locked Away
step
	>>Kill Farmer Dalson and loot his key.
	.collect 12739,1
step
    .goto Western Plaguelands,47.3,49.7
    .turnin 5060 >>Turn in Locked Away
step
    .goto Western Plaguelands,51.920,28.058
.target Kirsta Deepshadow
>>Talk to |cRXP_FRIENDLY_Kirsta Deepshadow|r
    .accept 6004 >>Accept Unfinished Business
step
	>>Run to all the different Scarlet camps to complete this.
    .goto Western Plaguelands,50.6,41.4
	.goto Western Plaguelands,41.6,53.6,0
	.goto Western Plaguelands,40.0,52.0,0
    .complete 6004,3 --Scarlet Mage (2)
    .complete 6004,1 --Scarlet Medic (2)
    .complete 6004,2 --Scarlet Hunter (2)
	.complete 6004,4 --Scarlet Knight (2)
step
    .goto Western Plaguelands,51.920,28.058
>>Talk to |cRXP_FRIENDLY_Kirsta Deepshadow|r
    .turnin 6004 >>Turn in Unfinished Business
.target Kirsta Deepshadow
    .accept 6023 >>Accept Unfinished Business
step
    .goto Western Plaguelands,57.5,35.7
    .complete 6023,1 --Huntsman Radley (1)
step
    >>Kill Cavalier Durgen. He can be on top of the tower, or he can patrol to the front of it
	.goto Western Plaguelands,55.1,23.6
    .complete 6023,2 --Cavalier Durgen (1)
step
    .goto Western Plaguelands,55.1,23.5
	>>If the rare is up and you're unable to group and kill him, just die and res as high up as you can in the tower. Loot the chest at the top
    .complete 9443,1 --Mark of the Lightbringer (1)
step
    .goto Western Plaguelands,51.920,28.058
>>Talk to |cRXP_FRIENDLY_Kirsta Deepshadow|r
    .turnin 6023 >>Turn in Unfinished Business
.target Kirsta Deepshadow
    .accept 6025 >>Accept Unfinished Business
step
	>>Climb to the top of the tower.
    .goto Western Plaguelands,45.6,18.7
    .complete 6025,1 --Overlook Hearthglen from a high vantage point (1)
step
    .goto Western Plaguelands,52.0,28.1
.target Kirsta Deepshadow
>>Talk to |cRXP_FRIENDLY_Kirsta Deepshadow|r
    .turnin 6025 >>Turn in Unfinished Business
step
    .goto Tirisfal Glades,83.1,68.9
>>Talk to |cRXP_FRIENDLY_High Executor Derrington|r
    .turnin 5098 >>Turn in All Along the Watchtowers
.target High Executor Derrington
    .accept 105 >>Accept Alas, Andorhal
    .accept 838 >>Accept Scholomance
step
    .goto Tirisfal Glades,83.2,69.3
>>Talk to |cRXP_FRIENDLY_Apothecary Dithers|r
    .turnin 838 >>Turn in Scholomance
.target Apothecary Dithers
    .accept 964 >>Accept Skeletal Fragments
step
    .goto Tirisfal Glades,83.218,71.324
>>Talk to |cRXP_FRIENDLY_Mehlar Dawnblade|r
    .turnin 9443 >>Turn in The So-Called Mark of the Lightbringer
.target Mehlar Dawnblade
    .accept 9444 >>Accept Defiling Uther's Tomb
step
    .goto Tirisfal Glades,83.0,71.9
>>Talk to |cRXP_FRIENDLY_Shadow Priestess Vandis|r
    .turnin 5232 >>Turn in Return to the Bulwark
.target Shadow Priestess Vandis
    .accept 5233 >>Accept Target: Writhing Haunt


step
    .goto Western Plaguelands,39.5,66.8
>>Talk to |cRXP_FRIENDLY_Chromie|r
    .turnin 4971 >>Turn in A Matter of Time
.target Chromie
    .accept 4972 >>Accept Counting Out Time
step
	>>Search for tiny lockboxes around the ruins. They're usually in the corners of the broken buildings.
    .goto Western Plaguelands,56.5,51.3,40,0
    .goto Western Plaguelands,61.8,52.3,40,0
    .goto Western Plaguelands,68.1,46.8,40,0
    .goto Western Plaguelands,65.3,54.5,40,0
    .goto Western Plaguelands,54.9,63.8,40,0
    .goto Western Plaguelands,55.1,23.6,40,0
    .goto Western Plaguelands,40.8,68.4,40,0
    .goto Western Plaguelands,41.3,65.8,40,0
    .goto Western Plaguelands,44.9,65.8,40,0
    .goto Western Plaguelands,46.5,66.5,40,0
    .goto Western Plaguelands,45.9,70.7,40,0
    .goto Western Plaguelands,46.1,73.6,40,0
    .goto Western Plaguelands,44.5,73.2,40,0
    .goto Western Plaguelands,41.6,73.2,40,0
    .goto Western Plaguelands,56.5,51.3,40,0
    .goto Western Plaguelands,61.8,52.3,40,0
    .goto Western Plaguelands,68.1,46.8,40,0
    .goto Western Plaguelands,65.3,54.5,40,0
    .goto Western Plaguelands,54.9,63.8,40,0
    .goto Western Plaguelands,55.1,23.6,40,0
    .goto Western Plaguelands,40.8,68.4,40,0
    .goto Western Plaguelands,41.3,65.8,40,0
    .goto Western Plaguelands,44.9,65.8,40,0
    .goto Western Plaguelands,46.5,66.5,40,0
    .goto Western Plaguelands,45.9,70.7,40,0
    .goto Western Plaguelands,46.1,73.6,40,0
    .goto Western Plaguelands,44.5,73.2,40,0
    .goto Western Plaguelands,41.6,73.2,40,0
    .complete 4972,1 --Andorhal Watch (5)
step
    .goto Western Plaguelands,49.2,78.4
.target Marlene Redpath
>>Talk to |cRXP_FRIENDLY_Marlene Redpath|r
    .accept 5142 >>Accept Little Pamela
step
    .goto Western Plaguelands,52.1,83.5
	>>Equip the Corrupted Mark of the Lightbringer. Use it at the Tomb - You may get pvp flagged by having to CC/Kill the mob at the tomb
    .complete 9444,1 --Uther's Tomb Defiled (1)
step
	>>Kill the Cauldron Lord
    .goto Western Plaguelands,52.8,66.2
    .complete 5233,1 --Writhing Haunt Cauldron Key (1)
step
    .goto Western Plaguelands,52.9,65.7
    .turnin 5233 >>Turn in Target: Writhing Haunt
    .accept 5234 >>Accept Return to the Bulwark
step
    .goto Western Plaguelands,53.7,64.6
.target Mulgris Deepriver
>>Talk to |cRXP_FRIENDLY_Mulgris Deepriver|r
    .accept 4984 >>Accept The Wildlife Suffers Too
step
    .goto Western Plaguelands,48.7,47.3,0
	>>The wolves share spawns with Carrion Lurkers. Kill them too if you're unable to find wolves.
    .complete 4984,1 --Diseased Wolf (8)
step
    .goto Western Plaguelands,53.7,64.7
>>Talk to |cRXP_FRIENDLY_Mulgris Deepriver|r
    .turnin 4984 >>Turn in The Wildlife Suffers Too
.target Mulgris Deepriver
    .accept 4985 >>Accept The Wildlife Suffers Too
step
    .goto Western Plaguelands,56.5,51.3,40,0
    .goto Western Plaguelands,61.8,52.3,40,0
    .goto Western Plaguelands,68.1,46.8,40,0
    .goto Western Plaguelands,65.3,54.5,40,0
    .goto Western Plaguelands,54.9,63.8,40,0
    .goto Western Plaguelands,56.5,51.3,40,0
    .goto Western Plaguelands,61.8,52.3,40,0
    .goto Western Plaguelands,68.1,46.8,40,0
    .goto Western Plaguelands,65.3,54.5,40,0
    .goto Western Plaguelands,54.9,63.8,40,0
    .goto Western Plaguelands,56.5,51.3,40,0
    .goto Western Plaguelands,61.8,52.3,40,0
    .goto Western Plaguelands,68.1,46.8,40,0
    .goto Western Plaguelands,65.3,54.5,40,0
    .goto Western Plaguelands,54.9,63.8,40,0
    .goto Western Plaguelands,56.5,51.3,40,0
    .goto Western Plaguelands,61.8,52.3,40,0
    .goto Western Plaguelands,68.1,46.8,40,0
    .goto Western Plaguelands,65.3,54.5,40,0
    .goto Western Plaguelands,54.9,63.8,40,0
    >>Find & kill 8 Diseased Grizzlies
    .complete 4985,1 --Diseased Grizzly (8)
step
    .goto Eastern Plaguelands,26.6,74.8
.target Nathanos Blightcaller
>>Talk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .accept 6022 >>Accept To Kill With Purpose
step
    .goto Eastern Plaguelands,27.3,85.3
    .accept 6024 >>Accept Hameya's Plea
step
    .goto Eastern Plaguelands,36.5,90.9
>>Talk to |cRXP_FRIENDLY_Pamela Redpath|r
    .turnin 5142 >>Turn in Little Pamela
.target Pamela Redpath
    .accept 5149 >>Accept Pamela's Doll
step
	>>Find the doll parts laying around the town. Put the pieces back together.
    .goto Eastern Plaguelands,38.1,90.5,0
    .complete 5149,1 --Pamela's Doll (1)
step
    .goto Eastern Plaguelands,36.5,90.9
>>Talk to |cRXP_FRIENDLY_Pamela Redpath|r
    .turnin 5149 >>Turn in Pamela's Doll
.target Pamela Redpath
    .accept 5152 >>Accept Auntie Marlene
    .accept 5241 >>Accept Uncle Carlin
step
	>> Get 7 Living Rot from the undead mobs in town and turn it into a Coagulated Rot before they expire
    .goto Eastern Plaguelands,61.5,71.4
    .complete 6022,1 --Coagulated Rot (1)
step
    .goto Eastern Plaguelands,79.6,63.8
.target Caretaker Alen
>>Talk to |cRXP_FRIENDLY_Caretaker Alen|r
    .accept 6021 >>Accept Zaeldarr the Outcast
    .accept 5281 >>Accept The Restless Souls
step
    .goto Eastern Plaguelands,81.5,59.6
>>Talk to |cRXP_FRIENDLY_Carlin Redpath|r
    .turnin 5241 >>Turn in Uncle Carlin
.target Carlin Redpath
    .accept 5211 >>Accept Defenders of Darrowshire
step
    .goto Eastern Plaguelands,81.6,58.1
    .home >>Set your Hearthstone to Light's Hope Chapel
step
	.goto Eastern Plaguelands,71.0,16.6
	>>Find & kill Infiltrator Hameya. He roams around the area. Loot his key.
	.complete 6024,1 --Hameya's Key (1)
step
	#sticky
	#label dssf
	>>Kill Ghouls and the Darrowshire spirits will emerge from the corpses. Talk to them to free their spirit.
    .goto Eastern Plaguelands,34.3,30.8
	.goto Eastern Plaguelands,65.5,41.0,0
    .complete 5211,1 --Darrowshire Spirits Freed (15)
step
	>>Find & destroy the termite mounds around Plaguewood.
    .complete 5901,1 --Plagueland Termites (100)
step
	#requires dssf
    .goto Eastern Plaguelands,14.5,33.6
.target Egan
>>Talk to |cRXP_FRIENDLY_Egan|r
    .turnin 5281 >>Turn in The Restless Souls
step
	>>Finish gathering 20 Minion's Scourgestones from mobs in the zone.
	.collect 12840,20




step <<!Paladin
    #completewith next
    .hs >>Hearth to Light's Hope Chapel

step
	.goto Eastern Plaguelands,81.4,59.8
.target Duke Nicholas Zverenhoff
>>Talk to |cRXP_FRIENDLY_Duke Nicholas Zverenhoff|r
	.turnin 5510 >>Turn in Minion's Scourgestones
step
    .goto Eastern Plaguelands,81.0,57.6
.target Dispatch Commander Metz
>>Talk to |cRXP_FRIENDLY_Dispatch Commander Metz|r
    .accept 9141 >>Accept They Call Me "The Rooster"
    .turnin 9141 >>Turn in They Call Me "The Rooster"
step
    .goto Eastern Plaguelands,81.5,59.8
.target Carlin Redpath
>>Talk to |cRXP_FRIENDLY_Carlin Redpath|r
    .turnin 5211 >>Turn in Defenders of Darrowshire

step
    .goto Eastern Plaguelands,80.2,57.0
    .fly Undercity >>Fly to Undercity
step
    .goto Undercity,69.6,43.3
.target Royal Overseer Bauhaus
>>Talk to |cRXP_FRIENDLY_Royal Overseer Bauhaus|r
    .turnin 5023 >>Turn in Better Late Than Never
step
    .goto Undercity,69.3,43.4
.target Royal Overseer Bauhaus
>>Talk to |cRXP_FRIENDLY_Royal Overseer Bauhaus|r
    .accept 5049 >>Accept The Jeremiah Blues
step
    .goto Undercity,67.4,43.7
.target Jeremiah Payson
>>Talk to |cRXP_FRIENDLY_Jeremiah Payson|r
    .turnin 5049 >>Turn in The Jeremiah Blues
step
    .goto Undercity,67.5,43.1
.target Jeremiah Payson
.target Ol' Emma
>>Talk to |cRXP_FRIENDLY_Ol' Emma|r
-->>Talk to |cRXP_FRIENDLY_Jeremiah Payson|r
    .accept 5050 >>Accept Good Luck Charm
step
    .goto Undercity,57.4,91.4
.target Lady Sylvanas Windrunner
>>Talk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r
    .accept 5961 >>Accept The Champion of the Banshee Queen
step
    .goto Tirisfal Glades,83.0,72.0
>>Talk to |cRXP_FRIENDLY_Shadow Priestess Vandis|r
    .turnin 5234 >>Turn in Return to the Bulwark
.target Shadow Priestess Vandis
    .accept 5235 >>Accept Target: Gahrron's Withering
step
    .goto Tirisfal Glades,83.2,72.3
>>Talk to |cRXP_FRIENDLY_Mickey Levine|r
    .turnin 5901 >>Turn in A Plague Upon Thee
.target Mickey Levine
    .accept 5902 >>Accept A Plague Upon Thee
step
    .goto Tirisfal Glades,83.3,71.3
.target Mehlar Dawnblade
>>Talk to |cRXP_FRIENDLY_Mehlar Dawnblade|r
    .turnin 9444 >>Turn in Defiling Uther's Tomb
step
    .goto Western Plaguelands,38.5,54.2
>>Talk to |cRXP_FRIENDLY_Janice Felstone|r
    .turnin 5050 >>Turn in Good Luck Charm
.target Janice Felstone
    .accept 5051 >>Accept Two Halves Become One
step
    .goto Western Plaguelands,38.0,54.6
	>>Find a Jabbering Ghoul. Kill him and loot the Good Luck Charm
    .complete 5051,1 --Good Luck Charm (1)
step
    .goto Western Plaguelands,38.401,54.053
.target Janice Felstone
>>Talk to |cRXP_FRIENDLY_Janice Felstone|r
    .turnin 5051 >>Turn in Two Halves Become One
step
    .goto Western Plaguelands,48.9,78.4
>>Talk to |cRXP_FRIENDLY_Marlene Redpath|r
    .turnin 5152 >>Turn in Auntie Marlene
.target Marlene Redpath
    .accept 5153 >>Accept A Strange Historian
step
    .goto Western Plaguelands,49.6,76.9
    .complete 5153,1 --Joseph's Wedding Ring (1)
step
    .goto Western Plaguelands,39.5,66.8
>>Talk to |cRXP_FRIENDLY_Chromie|r
    .turnin 5153 >>Turn in A Strange Historian
.target Chromie
    .accept 5154 >>Accept The Annals of Darrowshire
    .turnin 4972 >>Turn in Counting Out Time
step
	#sticky
    >>Continue killing skeletons around the zone until you have 15 Skeletal Fragments
    .complete 964,1 --Skeletal Fragments (15)
step
    .goto Western Plaguelands,43.4,69.6
	>> Look for the correct book. The correct book will be WHITE only on the pages when you hover over it. Not half gray/half white.
    .complete 5154,1 --Annals of Darrowshire (1)

step
    .goto Western Plaguelands,53.7,64.6
.target Mulgris Deepriver
>>Talk to |cRXP_FRIENDLY_Mulgris Deepriver|r
    .turnin 4985 >>Turn in The Wildlife Suffers Too
step
    .goto Western Plaguelands,53.6,64.8
.target Mulgris Deepriver
>>Talk to |cRXP_FRIENDLY_Mulgris Deepriver|r
    .accept 4987 >>Accept Glyphed Oaken Branch
step
	>>Kill the Cauldron Lord
    .goto Western Plaguelands,61.8,59.3
    .complete 5235,1 --Gahrron's Withering Cauldron Key (1)
step
    .goto Western Plaguelands,62.5,58.7
    .turnin 5235 >>Turn in Target: Gahrron's Withering
    .accept 5236 >>Accept Return to the Bulwark
step
    .goto Eastern Plaguelands,28.1,86.2
    .turnin 6024 >>Turn in Hameya's Plea
step
    .goto Eastern Plaguelands,26.6,74.6
.target Nathanos Blightcaller
>>Talk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .turnin 6022 >>Turn in To Kill With Purpose
	.turnin 5961 >>Turn in The Champion of the Banshee Queen
step
    .goto Western Plaguelands,48.3,31.8
    .turnin 5902 >>Turn in A Plague Upon Thee
    .accept 6390 >>Accept A Plague Upon Thee
step
    .goto Western Plaguelands,39.5,66.8
.target Chromie
>>Talk to |cRXP_FRIENDLY_Chromie|r
    .turnin 5154 >>Turn in The Annals of Darrowshire
step
    .goto Tirisfal Glades,82.9,72.0
.target Shadow Priestess Vandis
>>Talk to |cRXP_FRIENDLY_Shadow Priestess Vandis|r
    .turnin 5236 >>Turn in Return to the Bulwark
step
    .goto Tirisfal Glades,83.3,72.1
.target Mickey Levine
>>Talk to |cRXP_FRIENDLY_Mickey Levine|r
    .turnin 6390 >>Turn in A Plague Upon Thee
step
    .goto Tirisfal Glades,83.2,69.3
.target Apothecary Dithers
>>Talk to |cRXP_FRIENDLY_Apothecary Dithers|r
    .turnin 964 >>Turn in Skeletal Fragments
step
    .goto Tirisfal Glades,83.1,68.9
.target High Executor Derrington
>>Talk to |cRXP_FRIENDLY_High Executor Derrington|r
    .turnin 5238 >>Turn in Mission Accomplished!
step
    #sticky
    #completewith next
+Go to the Zeppelin tower. Take the zeppelin to Stranglethorn
    .goto Tirisfal Glades,61.9,59.1
step
.zone Stranglethorn Vale >>Arrive in Stranglethorn Vale
step << Druid
    .goto Stranglethorn Vale,32.5,29.3
    .complete 64217,2 --Speak to Thysta at Grom'gol Base Camp (1)
	.fly Stonard >> Fly to Stonard
step << !Druid
    .goto Stranglethorn Vale,32.5,29.3
    .complete 64063,2 --Speak to Thysta at Grom'gol Base Camp (1)
	.fly Stonard >> Fly to Stonard
step
	.zone Blasted Lands >> Run to Blasted Lands
step << !Druid
    .goto Blasted Lands,58.1,56.1
    .turnin 64063 >>Turn in The Dark Portal
.target Warlord Dar'toon
>>Talk to |cRXP_FRIENDLY_Warlord Dar'toon|r
    .accept 9407 >>Accept Through the Dark Portal
step << Druid
    .goto Blasted Lands,58.1,56.1
    .turnin 64217 >>Turn in The Dark Portal
.target Warlord Dar'toon
>>Talk to |cRXP_FRIENDLY_Warlord Dar'toon|r
    .accept 9407 >>Accept Through the Dark Portal
]])
