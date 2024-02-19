local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#name 1-6 Northshire
#version 1
#group RestedXP Alliance 1-20
#defaultfor Human
#next 6-11 Elwynn Forest


step << !Human
    #completewith next
    +You have selected a guide meant for Humans. You should choose the same starter zone that you start in
step << Mage
    #completewith next
    +Note that you have selected the single target Mage guide. Single target is a lot safer than AoE Mage, but a LOT slower
step << !Human Mage
    #season 2
    #completewith next
    +In Season of Discovery, you should NOT start outside of your race's starter zone as a Mage, as you will be unable to get your first rune here (|T133816:0|t[Engrave Gloves - Ice Lance])
step << Warlock
    #completewith next
    .goto Elwynn Forest,50.051,42.689
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dane Winslow|r
    .vendor >> |cRXP_WARN_Vendor your Body Armor, Shirt, Pants and Boots along with the Food and Water in your bags. You need 10c total|r
    .target Dane Winslow
step << Warlock
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drusilla La Salle|r
    .accept 1598 >> Accept The Stolen Tome
    .train 348 >> Train |T135817:0|t[Immolate]
    .target Drusilla La Salle
step << Warlock
    #hardcore
    .goto Elwynn Forest,52.9,44.3,60,0
    .goto Elwynn Forest,56.7,44.0
    >>|cRXP_WARN_Run into the Tent at the Defias Camp|r
    >>Open the |cRXP_PICK_Stolen Books|r. Loot it for the |cRXP_LOOT_Powers of the Void|r
    >>|cRXP_WARN_You can loot the |cRXP_LOOT_Powers of the Void|r safely while inside the Tent! Watch the video on how to do this|r
    .link https://youtu.be/3qQwsJhAZIk >> |cRXP_WARN_Click here for video reference|r
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock
    #hardcore
    #completewith next
    .goto Elwynn Forest,56.828,43.734
    >>|cRXP_WARN_Remain inside the Tent so |cRXP_ENEMY_Defias Thugs|r can't hit you|r
    .hs >> Hearth to Northshire Valley
step << Warlock
    #softcore
    .goto Elwynn Forest,52.9,44.3,60,0
    .goto Elwynn Forest,56.7,44.0
    >>|cRXP_WARN_Run into the Tent at the Defias Camp|r
    >>Open the |cRXP_PICK_Stolen Books|r. Loot it for the |cRXP_LOOT_Powers of the Void|r
    >>|cRXP_WARN_You can loot the |cRXP_LOOT_Powers of the Void|r safely while inside the Tent! Watch the video on how to do this|r
    .link https://www.youtube.com/watch?v=_-KEke9Yeik >> |cRXP_WARN_Click here for video reference|r
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock
    #softcore
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drusilla La Salle|r
    .goto Elwynn Forest,49.873,42.649
    .turnin 1598 >> Turn in The Stolen Tome
    .target Drusilla La Salle
step << Warlock
    #completewith next
    .cast 688 >> |cRXP_WARN_Cast|r |T136218:0|t[Summon Imp]
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.17,42.94
    .accept 783 >> Accept A Threat Within
step << Warrior
    .goto Elwynn Forest,46.4,40.3,35,0
    >>Kill |cRXP_ENEMY_Young Wolves|r until you have 10c+ worth of vendor trash
    >>|cRXP_WARN_You will train|r |T132333:0|t[Battle Shout] |cRXP_WARN_which increases early leveling speeds|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Danil|r
    .vendor >> |cRXP_WARN_Vendor trash|r
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Llane Beshere|r
    .train 6673 >>Train |T132333:0|t[Battle Shout]
    .goto Elwynn Forest,50.242,42.287
    .mob Young Wolf
    .target Brother Danil
    .target Llane Beshere
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .target Marshal McBride
    .goto Elwynn Forest,48.923,41.606
    .turnin 783 >> Turn in A Threat Within
    .accept 7 >> Accept Kobold Camp Cleanup
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.171,42.943
    .accept 5261 >> Accept Eagan Peltskinner
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eagan Peltskinner|r
    .target Eagan Peltskinner
    .goto Elwynn Forest,48.941,40.166
    .turnin 5261 >> Turn in Eagan Peltskinner
    .accept 33 >> Accept Wolves Across The Border
step << Priest/Mage/Warlock
    #completewith next
    .goto Elwynn Forest,46.2,40.4,40,0
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Danil|r
    .vendor >> |cRXP_WARN_Once you have 50c worth of vendor trash, buy 10|r |T132794:0|t[Refreshing Spring Water]
    .target Brother Danil
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step
    #completewith next
    >>Kill |cRXP_ENEMY_Young Wolves|r and |cRXP_ENEMY_Timber Wolves|r. Loot them for their |cRXP_LOOT_Meat|r
	.mob Young Wolf
	.mob Timber Wolf
    .complete 33,1 --Collect Tough Wolf Meat (x8)
step
    .goto Elwynn Forest,47.6,35.9,40,0
    .goto Elwynn Forest,49.6,35.8,40,0
    .goto Elwynn Forest,51.6,37.0,40,0
    .goto Elwynn Forest,49.6,35.8
    >>Kill |cRXP_ENEMY_Kobold Vermins|r
	.mob Kobold Vermin
    .complete 7,1 --Kill Kobold Vermin (x10)
step
    .goto Elwynn Forest,46.41,41.94,40,0
    .goto Elwynn Forest,46.61,35.09,40,0
    .goto Elwynn Forest,51.91,37.85,40,0
    .goto Elwynn Forest,46.61,35.09,40,0
    .goto Elwynn Forest,46.41,41.94
    >>Kill |cRXP_ENEMY_Young Wolves|r and |cRXP_ENEMY_Timber Wolves|r. Loot them for their |cRXP_LOOT_Meat|r
	.mob Young Wolf
	.mob Timber Wolf
    .complete 33,1 --Collect Tough Wolf Meat (x8)
step
    .goto Elwynn Forest,48.941,40.166
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eagan Peltskinner|r
    .target Eagan Peltskinner
    .turnin 33,2 >> Turn in Wolves Across The Border << Warrior/Paladin/Rogue
    .turnin 33,1 >> Turn in Wolves Across The Border << !Warrior !Paladin !Rogue
step << Priest/Mage/Warlock
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Danil|r
    .vendor >>|cRXP_WARN_Vendor trash|r
    >>|cRXP_WARN_Buy 10|r |T132794:0|t[Refreshing Spring Water]|cRXP_WARN_. Make sure you save 10c or more for later|r << Priest/Mage
    .target Brother Danil
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step << !Priest !Mage !Warlock !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Godric Rothgar|r
    .target Godric Rothgar
    .goto Elwynn Forest,47.691,41.417
    .vendor >>|cRXP_WARN_Vendor trash|r
step << Rogue
    #season 0,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Janos|r
    .goto Elwynn Forest,47.240,41.900
    >>|cRXP_BUY_Buy a|r |T135650:0|t[Dirk]
    .collect 2139,1 -- Dirk (1)
    .target Janos Hammerknuckle
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.2
step << Rogue
    #season 0,1
    #completewith next
    +|cRXP_WARN_Equip the|r |T135650:0|t[Dirk]
    .use 2139
    .itemcount 2139,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.2
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .target Marshal McBride
    .goto Elwynn Forest,48.923,41.606
    .turnin 7 >> Turn in Kobold Camp Cleanup
    .accept 15 >> Accept Investigate Echo Ridge
    .accept 3100 >> Accept Simple Letter << Warrior
    .accept 3101 >> Accept Consecrated Letter << Paladin
    .accept 3102 >> Accept Encrypted Letter << Rogue
    .accept 3103 >> Accept Hallowed Letter << Priest
    .accept 3104 >> Accept Glyphic Letter << Mage
    .accept 3105 >> Accept Tainted Letter << Warlock
step
    .goto Elwynn Forest,47.2,35.1,40,0
    .goto Elwynn Forest,48.9,32.8,40,0
    .goto Elwynn Forest,51.7,37.7,40,0
    .goto Elwynn Forest,47.2,35.1
    >>Kill |cRXP_ENEMY_Kobold Workers|r
	.mob Kobold Worker
    .complete 15,1 --Kill Kobold Worker (x10)
step
    #sticky
    #label xp3
    .xp 3+1110 >>Grind to 1110+/1400xp on your way back
step
    #completewith next
    .goto Elwynn Forest,47.691,41.417
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Godric Rothgar|r
    .target Godric Rothgar
    .vendor >> |cRXP_WARN_Vendor trash|r
--N need SoM xp note
step
    #requires xp3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .target Marshal McBride
    .goto Elwynn Forest,48.923,41.606
    .turnin 15 >> Turn in Investigate Echo Ridge
    .accept 21 >> Accept Skirmish at Echo Ridge
step << Priest
    #optional
    #completewith next
    .goto Elwynn Forest,49.3,40.7,15 >> Travel toward |cRXP_FRIENDLY_Priestess Anetta|r
step << Mage
    #optional
    #completewith next
    .goto 1429,48.79,41.58,12,0
    .goto 1429,48.975,41.146,12,0
    .goto 1429,49.262,40.633,12,0
    .goto 1429,49.510,40.095,6,0
    .goto 1429,49.691,40.230,6,0
    .goto 1429,49.595,40.673,6,0
    .goto 1429,49.324,40.492,6,0
    .goto 1429,49.436,39.881,10,0
    .goto Elwynn Forest,49.661,39.402,12 >>Travel toward |cRXP_FRIENDLY_Khelden Bremen|r upstairs
step << Mage
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khelden Bremen|r inside upstairs
    .goto Elwynn Forest,49.661,39.402
    .turnin 3104 >> Turn in Glyphic Letter
    .trainer >> Train your class spells
    .target Khelden Bremen
step << Mage
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khelden Bremen|r inside upstairs
    .goto Elwynn Forest,49.661,39.402
    .turnin 3104 >> Turn in Glyphic Letter
    .accept 77620 >> Accept Spell Research << Human Mage
    .trainer >> Train your class spells
    .target Khelden Bremen
step << Priest
    #completewith next
    .goto Elwynn Forest,49.8,40.2,10 >> Go through the doorway inside
step << Priest
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Anetta|r
    .target Priestess Anetta
    .goto Elwynn Forest,49.808,39.489
    .turnin 3103 >> Turn in Hallowed Letter
    .trainer >> Train your class spells
step << Priest
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Anetta|r
    .target Priestess Anetta
    .goto Elwynn Forest,49.808,39.489
    .turnin 3103 >> Turn in Hallowed Letter
    .accept 77619 >> Accept Meditation on the Light << Human Priest
    .trainer >> Train your class spells
step << Warrior/Paladin
    #completewith next
    .goto Elwynn Forest,49.6,41.8,15 >> Travel toward |cRXP_FRIENDLY_Llane Beshere|r << Warrior
    .goto Elwynn Forest,49.6,41.8,15 >> Travel toward |cRXP_FRIENDLY_Brother Sammuel|r << Paladin
step << Warrior
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Llane Beshere|r
    .target Llane Beshere
    .goto Elwynn Forest,50.242,42.287
    .turnin 3100 >> Turn in Simple Letter
    .trainer >> Train your class spells
step << Warrior
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Llane Beshere|r
    .target Llane Beshere
    .goto Elwynn Forest,50.242,42.287
    .turnin 3100 >> Turn in Simple Letter
    .accept 77616 >> Accept The Lost Rune << Human
    .trainer >> Train your class spells
step << Paladin
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Sammuel|r
    .target Brother Sammuel
    .goto Elwynn Forest,50.433,42.124
    .turnin 3101 >> Turn in Consecrated Letter
    .trainer >> Train your class spells
step << Paladin
    #season 2
    .goto Elwynn Forest,50.433,42.124
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Sammuel|r
    .turnin 3101 >> Turn in Consecrated Letter
    .accept 77617 >> Accept Relics of the Light << Human Paladin
    .train 20271 >> Train your class spells
    .target Brother Sammuel
step << Priest
    #season 2
    #completewith next
    >>Kill |cRXP_ENEMY_Kobold Laborers|r
	.mob Kobold Laborer
    .complete 21,1 --Kill Kobold Laborer (x12)
step << Priest
    #season 2
    .goto Elwynn Forest,48.61,27.63
    >>Kill |cRXP_ENEMY_Kobold Laborers|r. Loot them for a |T136222:0|t[|cRXP_FRIENDLY_Memory of a Troubled Acolyte|r]
    .collect 205951,1 -- Memory of a Troubled Acolyte (1)
    .mob Kobold Laborer
step << Priest
    #season 2
    .goto Elwynn Forest,48.61,27.63
    >>Kill |cRXP_ENEMY_Kobold Laborers|r
	.mob Kobold Laborer
    .complete 21,1 --Kill Kobold Laborer (x12)
step << Priest
    #season 2
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r inside the Abbey
    .turnin 21,3 >> Turn in Skirmish at Echo Ridge
    .accept 54 >> Accept Report to Goldshire
    .target Marshal McBride
step << Priest
    #season 2
    .goto Elwynn Forest,49.808,39.489
    >>|cRXP_WARN_Type /kneel in your chatbox while inside of Northshire Abbey|r
    >>|cRXP_WARN_You will receive the|r |T135934:0|t[Meditation on the Light] |cRXP_WARN_buff|r
    .cast 410958 >> |cRXP_WARN_Use the|r |T136222:0|t[|cRXP_FRIENDLY_Memory of a Troubled Acolyte|r] |cRXP_WARN_while you have the|r |T135934:0|t[Meditation on the Light] |cRXP_WARN_buff|r
    .use 205951
    .itemcount 205951,1
step << Human Priest
    #season 2
    .isQuestComplete 77619
    .goto Elwynn Forest,49.808,39.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Anetta|r
    .turnin 77619 >> Turn in Meditation on the Light
    .target Priestess Anetta
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.171,42.943
    .accept 18 >> Accept Brotherhood of Thieves
step << Warlock
    .xp 4
step << Warlock
    #season 0
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 3105 >> Turn in Tainted Letter
    .train 172 >>Train |T136118:0|t[Corruption]
    .target Drusilla La Salle
step
    #season 0
    .goto Elwynn Forest,53.9,49.2,50,0
    .goto Elwynn Forest,55.5,42.1,50,0
    .goto Elwynn Forest,53.9,49.2
    .goto Elwynn Forest,54.57,49.03
    >>Kill |cRXP_ENEMY_Defias Thugs|r. Loot them for their |cRXP_LOOT_Bandanas|r
	.mob Defias Thug
    .complete 18,1 --Collect Red Burlap Bandana (x12)
step << Warlock
    #season 2
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 3105 >> Turn in Tainted Letter
    .accept 77621 >> Accept Stolen Power << Human Warlock
    .train 172 >>Train |T136118:0|t[Corruption]
    .target Drusilla La Salle
step << Rogue
    #season 2
    .goto Elwynn Forest,50.314,39.916
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorik Kerridan|r
    .turnin 3102 >> Turn in Encrypted Letter
    .accept 77618 >> Accept Thrice Stolen << Human Rogue
    .train 1784 >>Train |T132320:0|t[Stealth]
    .train 921 >> Train |T133644:0|t[Pick Pocket]
    .target Jorik Kerridan
step << Rogue/Warlock
    #season 2
    #completewith RoS << Rogue
    #completewith RoH << Warlock
    >>Kill |cRXP_ENEMY_Defias Thugs|r. Loot them for their |cRXP_LOOT_Bandanas|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
    .mob Defias Thug
step << Rogue
    #season 2
    .goto Elwynn Forest,52.544,51.922
    >>Open the |cRXP_PICK_Defias Stashbox|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowstrike|r]
    .collect 204795,1 -- Rune of Shadowstrike (1)
step << Rogue
    #season 2
    #label RoS
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowstrike|r]
    .use 204795
    .itemcount 204795,1
step << Warlock
    #season 2
    .goto Elwynn Forest,52.544,51.922
    >>Open the |cRXP_PICK_Defias Stashbox|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Haunting|r]
    .collect 205230,1 -- Rune of Haunting (1)
step << Warlock
    #season 2
    #label RoH
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Haunting|r]
    .use 205230
    .itemcount 205230,1
step << Mage
    #season 2
    #loop
    #label CALEENCI
    #completewith RedBurlapBandana
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    >>Kill |cRXP_ENEMY_Defias Thugs|r. Loot them for the |T134939:0|t|cRXP_LOOT_[Spell Notes: CALE ENCI]|r
    >>|cRXP_WARN_NOTE: You will be unable to train|r |T133816:0|t[Engrave Gloves - Ice Lance] |cRXP_WARN_here as you can only get a|r |T133736:0|t[Comprehension Primer] |cRXP_WARN_in your race's starting zone|r << !Human
    .collect 203751,1,77620,1 -- Spell Notes: CALE ENCI (1)
    .mob Defias Thug
    .train 401760,1
step << Human Mage
    #season 2
    #requires CALEENCI
    #completewith RedBurlapBandana
    .train 401760 >>|cRXP_WARN_Use the|r |T134939:0|t|cRXP_LOOT_[Spell Notes: CALE ENCI]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Ice Lance]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step << Paladin
    #season 2
    #loop
    #label Libram1
    #completewith RedBurlapBandana
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    >>Kill |cRXP_ENEMY_Defias Thugs|r. Loot them for the |T134916:0|t|cRXP_LOOT_[Libram of Judgement]|r
    .collect 205420,1 -- Libram of Judgement (1)
    .mob Defias Thug
    .train 410002,1
step << Paladin
    #season 2
    #label Libram2
    #requires Libram1
    #completewith RedBurlapBandana
    .equip 18,205420 >> |cRXP_WARN_Equip the|r |T134916:0|t|cRXP_LOOT_[Libram of Judgement]|r
    .use 205420
    .itemcount 205420,1 --Libram of Judgement (1)
    .train 410002,1
step << Paladin
    #season 2
    #label Libram3
    #requires Libram2
    #completewith RedBurlapBandana
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    .aura 408828 >>|cRXP_WARN_Cast|r |T135959:0|t[Judgement] |cRXP_WARN_10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    .itemStat 18,QUALITY,2
    .train 410002,1
step << Paladin
    #season 2
    #label Libram4
    #requires Libram3
    #completewith RedBurlapBandana
    .cast 409920 >>|cRXP_WARN_Use the|r |T134916:0|t|cRXP_LOOT_[Libram of Judgement]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Crusader Strike]
    .use 205420
    .aura -408828
    .train 410002,1
step << Paladin
    #season 2
    #label Libram5
    #requires Libram4
    #completewith RedBurlapBandana
    .equip 10 >>|cRXP_WARN_Equip a pair of|r |T132938:0|t|cRXP_LOOT_[Gloves]|r |cRXP_WARN_if you have some or when you loot some|r
    .train 410002,3
step << Paladin
    #season 2
    #requires Libram5
    #completewith next
    .engrave 10 >>|cRXP_WARN_Engrave your|r |T132938:0|t|cRXP_LOOT_[Gloves]|r with|r |T133816:0|t[Engrave Gloves - Crusader Strike]
    .train 410002,3
step
    #season 2
    #loop
    #label RedBurlapBandana
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    >>Kill |cRXP_ENEMY_Defias Thugs|r. Loot them for their |cRXP_LOOT_Bandanas|r
	.mob Defias Thug
    .complete 18,1 --Collect Red Burlap Bandana (x12)
step << Mage
    #season 2
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,50,0
    .goto Elwynn Forest,53.89,50.52,50,0
    .goto Elwynn Forest,55.09,49.00,50,0
    .goto Elwynn Forest,55.43,45.87,50,0
    .goto Elwynn Forest,53.86,47.05,50,0
    >>Kill |cRXP_ENEMY_Defias Thugs|r. Loot them for the |T134939:0|t|cRXP_LOOT_[Spell Notes: CALE ENCI]|r
    >>|cRXP_WARN_NOTE: You will be unable to train|r |T133816:0|t[Engrave Gloves - Ice Lance] |cRXP_WARN_here as you can only get a|r |T133736:0|t[Comprehension Primer] |cRXP_WARN_in your race's starting zone|r << !Human
    .collect 203751,1,77620,1 -- Spell Notes: CALE ENCI (1)
    .mob Defias Thug
    .train 401760,1
step << Human Mage
    #season 2
    .train 401760 >>|cRXP_WARN_Use the|r |T134939:0|t|cRXP_LOOT_[Spell Notes: CALE ENCI]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Ice Lance]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step << Paladin
    #season 2
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    >>Kill |cRXP_ENEMY_Defias Thugs|r. Loot them for the |T134916:0|t|cRXP_LOOT_[Libram of Judgement]|r
    .collect 205420,1 -- Libram of Judgement (1)
    .mob Defias Thug
    .itemStat 18,QUALITY,<2
    .train 410002,1
step << Paladin
    #season 2
    .equip 18,205420 >> |cRXP_WARN_Equip the|r |T134916:0|t|cRXP_LOOT_[Libram of Judgement]|r
    .use 205420
    .itemcount 205420,1 --Libram of Judgement (1)
    .train 410002,1
step << Paladin
    #season 2
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    .aura 408828 >>|cRXP_WARN_Cast|r |T135959:0|t[Judgement] |cRXP_WARN_10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    .itemStat 18,QUALITY,2
    .train 410002,1
step << Paladin
    #season 2
    .cast 409920 >>|cRXP_WARN_Use the|r |T134916:0|t|cRXP_LOOT_[Libram of Judgement]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Crusader Strike]
    .use 205420
    .aura -408828
    .train 410002,1
step << Human Paladin
    #season 2
    #completewith RestandR
    #label CSLibram3
    .equip 10 >> |cRXP_WARN_Equip a pair of|r |T132938:0|t|cRXP_LOOT_[Gloves]|r |cRXP_WARN_if you have some or when you loot some|r
    .train 410002,3
step << Human Paladin
    #season 2
    #completewith RestandR
    #requires CSLibram3
    .engrave 10 >> |cRXP_WARN_Engrave your|r |T132938:0|t|cRXP_LOOT_[Gloves]|r with|r |T133816:0|t[Engrave Gloves - Crusader Strike]
    .train 410002,3
step << Rogue
    .xp 4 >> Grind to 4
step
    #completewith next
    #softcore
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer
step << Human Rogue
    #season 2
    .isQuestComplete 77618
    .goto Elwynn Forest,50.314,39.916
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorik Kerridan|r
    .turnin 77618 >> Turn in Thrice Stolen
    .target Jorik Kerridan
step << Human Warlock
    #season 2
    .isQuestComplete 77621
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 77621 >> Turn in Stolen Power
    .target Drusilla La Salle
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.17,42.94
    .turnin 18,4 >> Turn in Brotherhood of Thieves << Paladin
    .turnin 18,1 >> Turn in Brotherhood of Thieves << Rogue/Warlock
    .turnin 18,5 >> Turn in Brotherhood of Thieves << Mage
    .turnin 18,2 >> Turn in Brotherhood of Thieves << Priest
    .turnin 18,3 >> Turn in Brotherhood of Thieves << Warrior
    .turnin 18 >> Turn in Brotherhood of Thieves << !Warrior !Priest !Mage !Rogue !Warlock !Paladin
    .accept 3903 >> Accept Milly Osworth
    .accept 6 >> Accept Bounty on Garrick Padfoot
step << Paladin
    #completewith next
    .equip 16,5579 >> Equip the |T133052:0|t[Militia Warhammer]
    .use 5579
    .itemcount 5579,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.6
step << Human Mage
    #season 2
    #optional
    #label IceLance2
    #completewith Research2
    .goto Elwynn Forest,48.33,41.90,15 >>Enter Northshire Abbey
    .isQuestComplete 77620
step << Human Mage
    #season 2
    #optional
    #requires IceLance2
    #completewith Research2
    .goto 1429,48.79,41.58,12,0
    .goto 1429,48.975,41.146,12,0
    .goto 1429,49.262,40.633,12,0
    .goto 1429,49.510,40.095,6,0
    .goto 1429,49.691,40.230,6,0
    .goto 1429,49.595,40.673,6,0
    .goto 1429,49.324,40.492,6,0
    .goto 1429,49.436,39.881,10,0
    .goto Elwynn Forest,49.661,39.402,12 >>Travel toward |cRXP_FRIENDLY_Khelden Bremen|r upstairs
    .isQuestComplete 77620
step << Human Mage
    #season 2
    .goto Elwynn Forest,49.661,39.402
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khelden Bremen|r inside
    .turnin 77620 >> Turn in Spell Research
    .target Khelden Bremen
    .isQuestComplete 77620
step << Human Paladin
    #season 2
    .isQuestComplete 77617
    .goto Elwynn Forest,50.433,42.124
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Sammuel|r
    .turnin 77617 >> Turn in Relics of the Light
    .target Brother Sammuel
step << Human Paladin
    #season 2
    #completewith RestandR
    #label CSLibram3
    .equip 10,2385 >> |cRXP_WARN_Equip the|r |T132938:0|t|cRXP_LOOT_[Tarnished Chain Gloves]|r
    .use 2385
    .itemcount 2385,1
    .train 410002,3
    .itemStat 10,LEVEL,<5
step << Human Paladin
    #season 2
    #completewith RestandR
    #requires CSLibram3
    .engrave 10 >> |cRXP_WARN_Engrave the|r |T132938:0|t|cRXP_LOOT_[Tarnished Chain Gloves]|r with|r |T133816:0|t[Engrave Gloves - Crusader Strike]
    .train 410002,3
    .itemStat 10,LEVEL,<5
step << skip
    >> Talk to |cRXP_FRIENDLY_Godric Rothgar|r
    .target Godric Rothgar
    .goto Elwynn Forest,47.7,41.4
    .vendor >> Vendor trash, repair
step
    #completewith next
    .goto Elwynn Forest,47.63,32.07,20 >> Enter the Echo Ridge Mine
step << Warrior
    #season 2
    #completewith RoVR << Warrior
    >>Kill |cRXP_ENEMY_Kobold Laborers|r
	.mob Kobold Laborer
    .complete 21,1 --Kill Kobold Laborer (x12)
step << Warrior
    #season 2
    .goto Elwynn Forest,50.640,27.276
    >>Open the |cRXP_PICK_Kobold Stashbox|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r]
    .collect 204806,1 -- Rune of Victory Rush (1)
step << Warrior
    #season 2
    #label RoVR
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r]
    .use 204806
    .itemcount 204806,1
step
    .goto Elwynn Forest,48.61,27.63
    >>Kill |cRXP_ENEMY_Kobold Laborers|r
    .complete 21,1 --Kill Kobold Laborer (x12)
    .mob Kobold Laborer
step
    #xprate <1.5
    .goto Elwynn Forest,50.692,39.347
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milly Osworth|r
    >>|cRXP_WARN_Skip the followup|r << !Priest !Mage
    .turnin 3903 >> Turn in Milly Osworth
    .accept 3904 >> Accept Milly's Harvest << Priest/Mage
    .target Milly Osworth
step
    #xprate >1.49
    .goto Elwynn Forest,50.692,39.347
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milly Osworth|r
    >>|cRXP_WARN_Skip the followup|r
    .turnin 3903 >> Turn in Milly Osworth
    .target Milly Osworth
step << Rogue
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorik Kerridan|r
    .target Jorik Kerridan
    .goto Elwynn Forest,50.314,39.916
    .turnin 3102 >> Turn in Encrypted Letter
    >>|cRXP_WARN_You don't need to train any spells|r
step << Priest/Mage
    #xprate <1.5
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    >>Loot |cRXP_PICK_Milly's Harvest|r on the ground
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto Elwynn Forest,57.5,48.2
    >>Kill |cRXP_ENEMY_Garrick Padfoot|r. Loot him for his |cRXP_LOOT_Head|r
    .complete 6,1 --Collect Garrick's Head (x1)
    .mob Garrick Padfoot
step
    #xprate >1.49 << Priest/Mage
    #optional
    #completewith RestandR
    .abandon 3904 >> Abandon Milly's Harvest
step
    #xprate <1.5
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    .xp 5+1735 >> Grind to 1735+/2800xp << Paladin/Warrior
    .xp 5+1625 >> Grind to 1625+/2800xp << !Paladin !Warrior !Priest !Mage
    .xp 5+1085 >> Grind to 1085+/2800xp << Mage
    .xp 5+975 >> Grind to 975+/2800xp << Priest
    .mob Defias Thug
step
    #xprate >1.49
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    .xp 5+1205 >> Grind to 1205+/2800xp << Paladin/Warrior
    .xp 5+1040 >> Grind to 1040+/2800xp << !Paladin !Warrior !Priest
    .xp 5+875 >> Grind to 875+/2800xp << Priest
    .mob Defias Thug
step
    #optional
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer
step << Priest/Mage
    #xprate <1.5
    .goto Elwynn Forest,50.692,39.347
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3904 >>Turn in Milly's Harvest
    .accept 3905 >>Accept Grape Manifest
    .target Milly Osworth
step
    .goto Elwynn Forest,48.17,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Willem|r
    .turnin 6,2 >> Turn in Bounty on Garrick Padfoot << Warrior/Rogue/Paladin
    .turnin 6,1 >> Turn in Bounty on Garrick Padfoot << !Warrior !Rogue !Paladin
    .target Deputy Willem
step
    #label RestandR
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r inside
    .turnin 21,1 >> Turn in Skirmish at Echo Ridge << Rogue
    .turnin 21,2 >> Turn in Skirmish at Echo Ridge << Warrior/Paladin
    .turnin 21,3 >> Turn in Skirmish at Echo Ridge << !Warrior !Paladin !Rogue
    .accept 54 >> Accept Report to Goldshire
    .target Marshal McBride
step << Human Warrior
    #season 2
    .isQuestComplete 77616
    .goto Elwynn Forest,50.242,42.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Llane Beshere|r
    .turnin 77616 >> Turn in The Lost Rune
    .target Llane Beshere
step << Priest/Mage
    #xprate <1.5
    #optional
    #completewith next
    .goto Elwynn Forest,49.6,41.6,15,0
    .goto Elwynn Forest,48.9,41.3,10 >>Travel upstairs
step << Priest/Mage
    #xprate <1.5
    .goto Elwynn Forest,49.471,41.586
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Neals|r upstairs
    .turnin 3905,1 >>Turn in Grape Manifest
    .target Brother Neals
step << Priest
    .goto Elwynn Forest,49.808,39.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Anetta|r inside
    .accept 5623 >> Accept In Favor of the Light
    .target Priestess Anetta
step
    .goto Elwynn Forest,45.563,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falkhaan Isenstrider|r
    .accept 2158 >> Accept Rest and Relaxation
    .target Falkhaan Isenstrider
]])


RXPGuides.RegisterGuide([[
#classic
<< Alliance
#name 6-11 Elwynn Forest
#version 1
#group RestedXP Alliance 1-20
#defaultfor Human
#next 11-13 Loch Modan
step
    #hardcore
    #completewith next
    .subzone 87 >> Travel to Goldshire
step
    #hardcore
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshall Dughan|r
    .turnin 54 >> Turn in Report to Goldshire
    .accept 62 >> Accept The Fargodeep Mine
    .target Marshal Dughan
step
    #softcore
    #completewith Goldshire
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .target Spirit Healer
step << Warrior/Rogue/Paladin
    .goto Elwynn Forest,41.706,65.544
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smith Argus|r
    .train 2020 >> Train |T136241:0|t[Blacksmithing]
    >>|cRXP_WARN_This will allow you to make|r |T135248:0|t[Rough Sharpening Stones] |cRXP_WARN_which increase your melee damage by 2|r << Warrior/Rogue
    >>|cRXP_WARN_This will allow you to make|r |T135255:0|t[Rough Weightstones] |cRXP_WARN_which increase your melee damage by 2|r << Paladin
    >>|cRXP_WARN_If you don't want to do this, skip this step|r
    .target Smith Argus
step << Warrior
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corina Steele|r
    >>|cRXP_WARN_Buy a|r |T135321:0|t[Gladius]
    .collect 2488,1 --Collect Gladius (1)
    .target Corina Steele
    .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior
    #completewith next
    +|cRXP_WARN_Equip the|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corina Steele|r
    >>|cRXP_WARN_Buy a|r |T135641:0|t[Stiletto]
    .collect 2494,1 --Collect Stiletto (1)
    .target Corina Steele
    .money <0.0400
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith GSHS
    +|cRXP_WARN_Equip the|r |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Paladin
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corina Steele|r
    >>|cRXP_WARN_Buy a|r |T133053:0|t[Wooden Mallet]
    .collect 2493,1 --Collect Wooden Mallet (1)
    .target Corina Steele
    .money <0.0631
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #completewith next
    +|cRXP_WARN_Equip the|r |T133053:0|t[Wooden Mallet]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Mage/Priest/Warlock
    #completewith next
    .goto Elwynn Forest,41.706,65.786
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andrew Krighton|r
    .vendor >> |cRXP_WARN_Vendor trash|r
    .target Andrew Krighton
    .money >1.0
step
    #label Goldshire
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshall Dughan|r
    .turnin 54 >> Turn in Report to Goldshire
    .accept 62 >> Accept The Fargodeep Mine
    .target Marshal Dughan
step
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Pestle|r
    .accept 60 >> Accept Kobold Candles
    .target William Pestle
step
    #label GSHS
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Farley|r
    .turnin 2158,1 >> Turn in Rest and Relaxation << Rogue/Warrior
    .turnin 2158,2 >> Turn in Rest and Relaxation << !Rogue !Warrior
    .home >> Set your Hearthstone to Goldshire
    .target Innkeeper Farley
step
    #optional
    .xp 6 >> Grind to 6
step << Rogue
    .goto Elwynn Forest,43.96,65.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brog Hamfist|r
    >>|cRXP_WARN_Buy the|r |T135641:0|t[Balanced Throwing Daggers]
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Brog Hamfist
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #completewith next
    +|cRXP_WARN_Equip the|r |T135641:0|t[Balanced Throwing Daggers]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >> Travel downstairs
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillian Crowe|r
    .target Maximillian Crowe
    .trainer >> Train your class spells
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cylina Darkheart|r
    .vendor >> |cRXP_WARN_Buy the|r |T133738:0|t[Grimoire of Blood Pact (Rank 1)] |cRXP_WARN_if you can afford it. If not you will buy it later|r
    .target Cylina Darkheart
    .money <0.0100
step << Mage/Rogue/Priest
    #optional
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Travel upstairs in the Inn
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Train your class spells
step << Priest
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Josetta|r
	.target Priestess Josetta
    .goto Elwynn Forest,43.283,65.721
    .turnin 5623 >> Turn in In Favor of the Light
    .accept 5624 >> Accept Garments of the Light
    .trainer >> Train your class spells
step << Rogue
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> Train your class spells
step << Rogue/Warrior
    .money <0.01
    .goto Elwynn Forest,43.877,66.546,9,0 << Warrior
    .goto Elwynn Forest,43.392,65.550
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michelle Belle|r upstairs
    .target Michelle Belle
    .train 3273 >> Train |T135966:0|t[First Aid]
step << Warrior/Rogue
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Farley|r
    .vendor >> |cRXP_BUY_Buy|r |T133995:0|t[Dalaran Sharp] |cRXP_BUY_until you're down to 1 Silver|r << Warrior
    .vendor >> |cRXP_BUY_Buy up to 20|r |T133995:0|t[Dalaran Sharp] << Rogue
    .target Innkeeper Farley
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyria Du Lac|r
    .target Lyria Du Lac
    .goto Elwynn Forest,41.087,65.768
    .trainer >> Train your class spells
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Wilhelm|r
    .target Brother Wilhelm
    .goto Elwynn Forest,41.096,66.041
    .trainer >> Train your class spells
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remy "Two Times"|r
    .target Remy "Two Times"
    .goto Elwynn Forest,42.140,67.254
    .accept 47 >> Accept Gold Dust Exchange
step << Priest
    >>|cRXP_WARN_Cast|r |T135929:0|t[Lesser Heal (Rank 2)] |cRXP_WARN_and|r |T135987:0|t[Power Word: Fortitude] |cRXP_WARN_on|r |cRXP_FRIENDLY_Guard Roberts|r
    .target Guard Roberts
    .goto Elwynn Forest,48.148,68.046
    .complete 5624,1 --Heal and fortify Guard Roberts
step
    #completewith BoarMeat1
    >>Kill |cRXP_ENEMY_Stonetusk Boars|r. Loot them for their |cRXP_LOOT_Chunks of Boar Meat|r
    .collect 769,4,86,1 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r and |cRXP_FRIENDLY_Ma Stonefield|r
    .accept 85 >> Accept Lost Necklace
    .goto Elwynn Forest,34.486,84.253
    .target +"Auntie" Bernice Stonefield
    .accept 88 >> Accept Princess Must Die!
	.goto Elwynn Forest,34.660,84.482
    .target +Ma Stonefield
step << Warrior/Paladin/Rogue
    #completewith NecklaceStart
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r. Loot them for their |cRXP_LOOT_Candles|r and |cRXP_LOOT_Dust|r
    >>|cRXP_WARN_If you loot any|r |T135232:0|t[Rough Stones] |cRXP_WARN_turn them into|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    >>|cRXP_WARN_If you loot any|r |T135232:0|t[Rough Stones] |cRXP_WARN_turn them into|r |T135255:0|t[Rough Weightstones] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
    .train 2018,3 << Warrior/Paladin/Rogue
step
    #optional << Warrior/Paladin/Rogue
    #completewith NecklaceStart
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r. Loot them for their |cRXP_LOOT_Candles|r and |cRXP_LOOT_Dust|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
    .train 2018,1 << Warrior/Paladin/Rogue
step
    #label NecklaceStart
    .goto Elwynn Forest,43.131,85.722
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 85 >> Turn in Lost Necklace
    .accept 86 >> Accept Pie for Billy
    .target Billy Maclure
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maybell Maclure|r
    .accept 106 >> Accept Young Lovers
    .target Maybell Maclure
step
    #completewith next
    .goto Elwynn Forest,42.357,89.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joshua Maclure|r
    .target Joshua Maclure
    .vendor >>|cRXP_BUY_Buy as much|r |T132815:0|t[Ice Cold Milk] |cRXP_WARN_as you can afford|r << Priest/Warlock/Mage
    .vendor >>|cRXP_WARN_Vendor trash|r << !Priest !Warlock !Mage
step
    #completewith next
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r. Loot them for their |cRXP_LOOT_Candles|r and |cRXP_LOOT_Dust|r
    >>|cRXP_WARN_If you loot any|r |T135232:0|t[Rough Stones] |cRXP_WARN_turn them into|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    >>|cRXP_WARN_If you loot any|r |T135232:0|t[Rough Stones] |cRXP_WARN_turn them into|r |T135255:0|t[Rough Weightstones] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label BoarMeat1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tommy Joe Stonefield|r
    .goto Elwynn Forest,29.840,85.997
    .turnin 106 >> Turn in Young Lovers
    .accept 111 >> Accept Speak with Gramma
    .target Tommy Joe Stonefield
step
    .goto Elwynn Forest,32.5,85.5
    >>Kill |cRXP_ENEMY_Stonetusk Boars|r. Loot them for their |cRXP_LOOT_Chunks of Boar Meat|r
    .complete 86,1 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .target "Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.253
    .turnin 86 >> Turn in Pie for Billy
    .accept 84 >> Accept Back to Billy
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gramma Stonefield|r
    .target Gramma Stonefield
    .goto Elwynn Forest,34.9,83.9
    .turnin 111 >> Turn in Speak with Gramma
    .accept 107 >> Accept Note to William
step
    #completewith next
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r. Loot them for their |cRXP_LOOT_Candles|r and |cRXP_LOOT_Dust|r
    >>|cRXP_WARN_If you loot any|r |T135232:0|t[Rough Stones] |cRXP_WARN_turn them into|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    >>|cRXP_WARN_If you loot any|r |T135232:0|t[Rough Stones] |cRXP_WARN_turn them into|r |T135255:0|t[Rough Weightstones] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Billy Maclure|r
    .target Billy Maclure
    .goto Elwynn Forest,43.131,85.722
    .turnin 84 >> Turn in Back to Billy
    .accept 87 >> Accept Goldtooth
step << Warrior
    #season 2
    #completewith RoD
    >>Kill |cRXP_ENEMY_Kobold Miners|r and |cRXP_ENEMY_Kobold Tunnelers|r. Loot them for their |T134168:0|t[|cRXP_LOOT_Severed Kobold Head|r]
    >>|cRXP_WARN_This is one of three items you need to unlock your|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r] |cRXP_WARN_for when you get to Stormwind at level 10|r
    .collect 204476,1 -- Severed Kobold Head (1)
    .mob Kobold Tunneler
    .mob Kobold Miner
    .mob Goldtooth
    .train 403475,1
step
    #completewith KillGoldtooth
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r. Loot them for their |cRXP_LOOT_Candles|r and |cRXP_LOOT_Dust|r
    >>|cRXP_WARN_If you loot any|r |T135232:0|t[Rough Stones] |cRXP_WARN_turn them into|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    >>|cRXP_WARN_If you loot any|r |T135232:0|t[Rough Stones] |cRXP_WARN_turn them into|r |T135255:0|t[Rough Weightstones] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #completewith next
    .goto Elwynn Forest,39.01,82.20,15,0
    .goto Elwynn Forest,39.92,80.11
    >>Explore Fargodeep Mine
    .complete 62,1 --Scout Through the Fargodeep Mine
step << Priest
    #season 2
    .goto Elwynn Forest,41.7,78.1
    >>Kill |cRXP_ENEMY_Goldtooth|r. Loot him for the |T136222:0|t[|cRXP_FRIENDLY_Memory of a Dark Purpose|r]
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .mob Goldtooth
    .train 425216,1
step
    #season 0,1
    #label KillGoldtooth
    >>Kill |cRXP_ENEMY_Goldtooth|r. Loot him for |cRXP_LOOT_Bernice's Necklace|r
    .goto Elwynn Forest,41.7,78.1
    .complete 87,1 --Collect Bernice's Necklace  (x1)
    .unitscan Goldtooth
step << Priest
    #season 2
    .train 425216 >>|cRXP_WARN_Use the|r |T136222:0|t[|cRXP_FRIENDLY_Memory of a Dark Purpose|r] |cRXP_WARN_to train|r |T237514:0|t[Void Plague]
    >>|cRXP_WARN_You must have a|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_buff by typing /kneel in a holy area such as, Northshire Abbey or Stormwind Cathedral|r
    .use 205940
step
    #season 2
    #label KillGoldtooth
    >>Kill |cRXP_ENEMY_Goldtooth|r. Loot him for |cRXP_LOOT_Bernice's Necklace|r << !Warrior
    >>Kill |cRXP_ENEMY_Goldtooth|r. Loot him for |cRXP_LOOT_Bernice's Necklace|r and the |T134419:0|t[|cRXP_FRIENDLY_Rune of Furious Thunder|r] << Warrior
    .goto Elwynn Forest,41.7,78.1
    .complete 87,1 --Collect Bernice's Necklace  (x1)
    .collect 204809,1 << Warrior -- Rune of Furious Thunder (1)
    .unitscan Goldtooth
    .train 403476,1 << Warrior
step << Warrior
    #season 2
    .train 403476 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Furious Thunder|r] |cRXP_WARN_to train|r |T136048:0|t[Furious Thunder]
    .use 204809
step
    #completewith next
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r. Loot them for their |cRXP_LOOT_Candles|r and |cRXP_LOOT_Dust|r
    >>|cRXP_WARN_If you loot any|r |T135232:0|t[Rough Stones] |cRXP_WARN_turn them into|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    >>|cRXP_WARN_If you loot any|r |T135232:0|t[Rough Stones] |cRXP_WARN_turn them into|r |T135255:0|t[Rough Weightstones] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto Elwynn Forest,40.5,82.3
    >>Explore Fargodeep Mine
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    #label RoD
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r. Loot them for their |cRXP_LOOT_Candles|r and |cRXP_LOOT_Dust|r
    >>|cRXP_WARN_If you loot any|r |T135232:0|t[Rough Stones] |cRXP_WARN_turn them into|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    >>|cRXP_WARN_If you loot any|r |T135232:0|t[Rough Stones] |cRXP_WARN_turn them into|r |T135255:0|t[Rough Weightstones] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step << Rogue
    #season 2
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76
    >>|T133644:0|t[Pick Pocket] |cRXP_ENEMY_Kobold Miners|r and |cRXP_ENEMY_Kobold Tunnelers|r. Loot them for the |T134327:0|t[|cRXP_LOOT_Top-Right Map Piece]|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    .collect 203784,1 -- Top-Right Map Piece (1)
    .mob Kobold Miner
    .mob Kobold Tunneler
    .train 398196,1
step << Warrior
    #season 2
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3
    >>Kill |cRXP_ENEMY_Kobold Miners|r and |cRXP_ENEMY_Kobold Tunnelers|r. Loot them for their |T134168:0|t[|cRXP_LOOT_Severed Kobold Head|r]
    >>|cRXP_WARN_This is one of three items you need to unlock your|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r] |cRXP_WARN_for when you get to Stormwind at level 10|r
    .collect 204476,1 -- Severed Kobold Head (1)
    .mob Kobold Tunneler
    .mob Kobold Miner
    .mob Goldtooth
    .train 403475,1
step << Warrior
    #completewith Goldtooth
    +|cRXP_WARN_Try to save a single|r |T134829:0|t[Minor Healing Potion] |cRXP_WARN_from now on as you will need it for Rolf's Corpse later|r
step << Warrior/Rogue/Paladin
    #xprate <1.5
    #optional
    >>|cRXP_WARN_Remember to make|r |T135248:0|t[Rough Sharpening Stones] |cRXP_WARN_if you picked up any|r |T135232:0|t[Rough Stones] << Warrior/Rogue
    >>|cRXP_WARN_Try to save a single|r |T134829:0|t[Minor Healing Potion] |cRXP_WARN_from now on as you will need it for Rolf's Corpse later|r << Warrior
    >>|cRXP_WARN_Remember to make|r |T135255:0|t[Rough Weightstones] |cRXP_WARN_if you picked up any|r |T135232:0|t[Rough Stones] << Paladin
    .xp 7+1800 >>Grind to 1800+/4500xp
    .train 2018,3 --Blacksmithing
step << Warrior/Rogue/Paladin
    #xprate >1.49
    #optional
    >>|cRXP_WARN_Remember to make|r |T135248:0|t[Rough Sharpening Stones] |cRXP_WARN_if you picked up any|r |T135232:0|t[Rough Stones] << Warrior/Rogue
    >>|cRXP_WARN_Remember to make|r |T135255:0|t[Rough Weightstones] |cRXP_WARN_if you picked up any|r |T135232:0|t[Rough Stones] << Paladin
    .xp 7+1770 >>Grind to 1770+/4500xp
    .train 2018,3 --Blacksmithing
step
    #xprate <1.5
    .xp 7+1800 >>Grind to 1800+/4500xp << !Priest
    .xp 7+1460 >>Grind to 1460+/4500xp << Priest
--XX <1.5x turns in goldtooth early
step
    #xprate >1.49
    .xp 7+1770 >>Grind to 1770+/4500xp << !Priest
    .xp 7+1260 >>Grind to 1260+/4500xp << Priest
step
    #xprate <1.5
    #label Goldtooth
    .goto Elwynn Forest,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .turnin 87 >> Turn in Goldtooth
    .target "Auntie" Bernice Stonefield
step
    #hardcore
    #optional
    #completewith next
    .goto Elwynn Forest,42.140,67.254,125 >> Travel to Goldshire
step
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .target Spirit Healer
step
    .goto Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remy "Two Times"|r
    >>|cRXP_WARN_Do NOT vendor the|r |T133581:0|t[Bag of Marbles] |cRXP_WARN_reward. This is an incredibly valuable item all the way through to level 60|r
    .turnin 47 >> Turn in Gold Dust Exchange
    .accept 40 >> Accept A Fishy Peril
    .target Remy "Two Times"
step
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 40 >> Turn in A Fishy Peril
    .accept 35 >> Accept Further Concerns
    .turnin 62 >> Turn in The Fargodeep Mine
    .accept 76 >> Accept The Jasperlode Mine
    .target Marshal Dughan
step
    #completewith CandlesEnd
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corina Steele|r
    .vendor >>|cRXP_WARN_Vendor trash|r
    .target Corina Steele
step << Warrior
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corina Steele|r
    >>|cRXP_WARN_Buy a|r |T135321:0|t[Gladius]
    .collect 2488,1 --Collect Gladius (1)
    .money <0.0536
    .target Corina Steele
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior
    #completewith next
    +|cRXP_WARN_Equip the|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corina Steele|r
    >>|cRXP_WARN_Buy a|r |T135641:0|t[Stiletto]
    .collect 2494,1 --Collect Stiletto (1)
    .target Corina Steele
    .money <0.0400
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_Equip the|r |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Paladin
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corina Steele|r
    >>|cRXP_WARN_Buy a|r |T133053:0|t[Wooden Mallet]
    .collect 2493,1 --Collect Wooden Mallet (1)
    .target Corina Steele
    .money <0.0631
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #completewith next
    +|cRXP_WARN_Equip the|r |T133053:0|t[Wooden Mallet]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step
    #label CandlesEnd
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Pestle|r
    .turnin 60 >> Turn in Kobold Candles
    .accept 61 >> Accept Shipment to Stormwind
    .turnin 107 >> Turn in Note to William
    .accept 112 >> Accept Collecting Kelp
    .target William Pestle
step
    #optional
    .xp 8 >> Grind to 8
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Train your class spells
    .target Lyria Du Lac
step << Paladin
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Wilhelm|r
    .trainer >> Train your class spells
    .target Brother Wilhelm
step << Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >> Travel downstairs in the Inn
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillian Crowe|r
    .target Maximillian Crowe
    .trainer >> Train your class spells
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cylina Darkheart|r
    .vendor >> |cRXP_WARN_Buy the|r |T133738:0|t[Grimoire of Firebolt (Rank 2)] |cRXP_WARN_if you can afford it. If not you will buy it later|r
    .target Cylina Darkheart
    .money <0.100
step << Mage/Priest/Rogue/Warrior/Paladin
    #optional
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Travel upstairs in the Inn
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Train your class spells
step << Priest
    .goto Elwynn Forest,43.283,65.721
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Josetta|r
	.target Priestess Josetta
    .turnin 5624 >> Turn in Garments of the Light
    .trainer >> Train your class spells
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> Train your class spells
step << Rogue/Warrior/Paladin
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michelle Belle|r
    .target Michelle Belle
    .goto Elwynn Forest,43.392,65.550
    .train 3273 >> Train |T135966:0|t[First Aid]
step
    .goto Elwynn Forest,43.96,65.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brog Hamfist|r
    .vendor >> |cRXP_WARN_Buy a|r |T133634:0|t[Small Brown Pouch] |cRXP_WARN_if needed|r
	.target Brog Hamfist
    .money <0.1250
step
    #completewith next
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Farley|r
    .vendor >> |cRXP_WARN_Buy up to 40|r |T132815:0|t[Ice Cold Milk] << !Warrior !Rogue !Paladin
    .vendor >> |cRXP_WARN_Buy up to 40|r |T133995:0|t[Dalaran Sharp] << Warrior/Rogue
    .vendor >> |cRXP_WARN_Buy up to 10|r |T133995:0|t[Dalaran Sharp] |cRXP_WARN_and 10|r |T132815:0|t[Ice Cold Milk] << Paladin
    .target Innkeeper Farley
step << Warrior
    #season 2
    #completewith next
    >>Kill |cRXP_ENEMY_Murlocs|r and |cRXP_ENEMY_Murloc Streamrunners|r. Loot them for their |T134169:0|t[|cRXP_LOOT_Severed Murloc Head|r]
    >>|cRXP_WARN_This is one of three items you need to unlock your|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r] |cRXP_WARN_for when you get to Stormwind at level 10|r
    .collect 204477,1 -- Severed Murloc Head (1)
	.mob Murloc
	.mob Murloc Streamrunner
    .train 403475,1
step << Rogue
    #season 2
    #completewith next
    >>|T133644:0|t[Pick Pocket] |cRXP_ENEMY_Murloc Foragers|r and |cRXP_ENEMY_Murloc Lurkers|r. Loot them for the |T134269:0|t[|cRXP_LOOT_Bottom-Right Map Piece]|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    >>|cRXP_WARN_Note: This can also come from any other |cRXP_ENEMY_Murloc|r in Elwynn Forest|r
    .collect 203786,1 -- Bottom-Right Map Piece (1)
    .mob Murloc Forager
    .mob Murloc Lurker
    .mob Murloc Streamrunner
    .mob Murloc
    .train 398196,1
step
    >>Kill |cRXP_ENEMY_Murlocs|r and |cRXP_ENEMY_Murloc Streamrunners|r. Loot them for |cRXP_LOOT_Kelp Fronds|r
    .goto Elwynn Forest,47.6,63.3,60,0
    .goto Elwynn Forest,51.4,64.6,60,0
    .goto Elwynn Forest,57.6,62.8,60,0
    .goto Elwynn Forest,56.4,66.6,60,0
    .goto Elwynn Forest,53.8,66.8,60,0
    .goto Elwynn Forest,57.6,62.8
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
	.mob Murloc
	.mob Murloc Streamrunner
step << Rogue
    #season 2
    .goto Elwynn Forest,75.4,85.4,60,0
    .goto Elwynn Forest,77.8,82.2,60,0
    .goto Elwynn Forest,83.2,87.0,60,0
    .goto Elwynn Forest,75.4,82.4
    >>|T133644:0|t[Pick Pocket] |cRXP_ENEMY_Murloc Foragers|r and |cRXP_ENEMY_Murloc Lurkers|r. Loot them for the |T134269:0|t[|cRXP_LOOT_Bottom-Right Map Piece]|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    >>|cRXP_WARN_Note: This can also come from any other |cRXP_ENEMY_Murloc|r in Elwynn Forest|r
    .collect 203786,1 -- Bottom-Right Map Piece (1)
    .mob Murloc Forager
    .mob Murloc Lurker
    .mob Murloc Streamrunner
    .mob Murloc
    .train 398196,1
step << Warrior
    #season 2
    .goto Elwynn Forest,47.6,63.3,60,0
    .goto Elwynn Forest,51.4,64.6,60,0
    .goto Elwynn Forest,57.6,62.8,60,0
    .goto Elwynn Forest,56.4,66.6,60,0
    .goto Elwynn Forest,53.8,66.8,60,0
    .goto Elwynn Forest,57.6,62.8
    >>Kill |cRXP_ENEMY_Murlocs|r and |cRXP_ENEMY_Murloc Streamrunners|r. Loot them for their |T134169:0|t[|cRXP_LOOT_Severed Murloc Head|r]
    >>|cRXP_WARN_This is one of three items you need to unlock your|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r] |cRXP_WARN_for when you get to Stormwind at level 10|r
    .collect 204477,1 -- Severed Murloc Head (1)
	.mob Murloc
	.mob Murloc Streamrunner
    .train 403475,1
step
    #completewith next
    .goto Elwynn Forest,61.654,53.608,15 >> Enter the Jasperlode Mine
step << Mage
    #season 2
    .goto Elwynn Forest,61.0,49.2,50,0
    .goto Elwynn Forest,61.2,51.6,50,0
    .goto Elwynn Forest,62.6,54.2,50,0
    .goto Elwynn Forest,63.6,58.6
    >>Kill |cRXP_ENEMY_Kobold Geomancers|r. Loot them for the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF]|r
    .collect 203752,1
    .mob Kobold Geomancer
    .train 401768,1
step
    .goto Elwynn Forest,60.4,50.2
    >>Follow the path through middle to explore Jasperlode Mine
    .complete 76,1 --Scout through the Jasperlode Mine
step << Mage
    #season 2
    #completewith next
    .collect 211779,1 >>You need a |T135933:0|t[Comprehension Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF]|r
    .train 401768 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF]|r |cRXP_WARN_to train|r |T135820:0|t[Living Flame]
    .use 203752
step << Rogue
    #season 2
    .goto Elwynn Forest,68.09,44.73
    >>|T133644:0|t[Pick Pocket] |cRXP_ENEMY_Riverpaw Outrunners|r and |cRXP_ENEMY_Riverpaw Runts|r. Loot them for the |T134327:0|t[|cRXP_LOOT_Bottom-Left Map Piece]|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    .collect 203787,1 -- Bottom-Left Map Piece (1)
    .mob Riverpaw Outrunner
    .mob Riverpaw Runt
    .train 398196,1
step
    .goto Elwynn Forest,73.973,72.179
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Thomas|r
    .turnin 35 >> Turn in Further Concerns
    .accept 37 >> Accept Find the Lost Guards
    .accept 52 >> Accept Protect the Frontier
    .target Guard Thomas
step
    #completewith AcceptBundle
    >>Kill |cRXP_ENEMY_Prowlers|r and |cRXP_ENEMY_Young Forest Bears|r
    >>|cRXP_WARN_Prioritize killing any |cRXP_ENEMY_Young Forest Bears|r you see|r
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob Prowler
    .mob Young Forest Bear
step
    >>Click |cRXP_PICK_A half-eaten body|r on the ground
    .goto Elwynn Forest,72.656,60.334
    .turnin 37 >> Turn in Find the Lost Guards
    .accept 45 >> Accept Discover Rolf's Fate
step
    #label AcceptBundle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Supervisor Raelen|r
    .target Supervisor Raelen
    .goto Elwynn Forest,81.382,66.112
    .accept 5545 >> Accept A Bundle of Trouble
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rallic Finn|r
    .target Rallic Finn
    .goto Elwynn Forest,83.283,66.089
    .vendor >> |cRXP_WARN_Vendor trash|r
    .zoneskip Elwynn Forest,1
step
    #completewith Prowlers
    >>Kill |cRXP_ENEMY_Prowlers|r and |cRXP_ENEMY_Young Forest Bears|r
    >>|cRXP_WARN_Prioritize killing any |cRXP_ENEMY_Young Forest Bears|r you see|r
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob Prowler
    .mob Young Forest Bear
step
    #completewith next
    >>Loot the |cRXP_LOOT_Bundle of Wood|r on the ground. |cRXP_WARN_They are found beneath the trees|r
    .complete 5545,1 -- Bundle of Wood (8)
step << Paladin
    #softcore
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>|cRXP_WARN_Run on top of |cRXP_PICK_Rolf's corpse|r and cast|r |T135954:0|t[Divine Protection] |cRXP_WARN_and then immediately click|r |cRXP_PICK_Rolf's corpse|r
    >>|cRXP_WARN_Run away and reset the |cRXP_ENEMY_Murlocs|r after completing the quest|r
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step << Paladin
    #hardcore
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>Click |cRXP_PICK_Rolf's corpse|r on the ground
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Murloc Foragers|r will cast|r |T135915:0|t[Drink Minor Potion] |cRXP_WARN_which heals themselves for 61-68 health|r
    >>|cRXP_WARN_Pull the 2|r |cRXP_ENEMY_Murlocs|r |cRXP_WARN_in front of the huts, move away and nuke one of them down fast. Use|r |T135954:0|t[Divine Protection] |cRXP_WARN_and your Heals as required. This is a good opportunity to use|r |T133581:0|t[Bag of Marbles]|cRXP_WARN_. Run away and reset once you've killed one|r << Paladin
    >>|cRXP_WARN_Remember during|r |T135954:0|t[Divine Protection] |cRXP_WARN_you are unable to attack|r << Paladin
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step << !Paladin
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>Click |cRXP_PICK_Rolf's corpse|r on the ground
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Murloc Foragers|r will cast|r |T135915:0|t[Drink Minor Potion] |cRXP_WARN_which heals themselves for 61-68 health|r
    >>|cRXP_WARN_Cast|r |T135953:0|t[Renew] |cRXP_WARN_and|r |T135940:0|t[Power Word: Shield] |cRXP_WARN_then get full mana. Pull the 2 |cRXP_ENEMY_Murlocs|r in front of the huts, move away, then nuke one. Run away when you kill one, then kill the other|r << Priest
    >>|cRXP_WARN_Pull the 2|r |cRXP_ENEMY_Murlocs|r |cRXP_WARN_in front of the huts, move away and|r |T136071:0|t[Polymorph] |cRXP_WARN_one whilst killing the other. Kill the|r |T136071:0|tPolymorphed |cRXP_WARN_one after|r << Mage
    >>|cRXP_WARN_Pool 100 Rage. Pull the 2|r |cRXP_ENEMY_Murlocs|r |cRXP_WARN_in front of the huts, move away and keep|r |T132316:0|t[Hamstring] |cRXP_WARN_on one whilst killing the other. Also use|r |T133581:0|t[Bag of Marbles] |cRXP_WARN_on the one you're killing. Run away and reset the one being kited with|r |T132316:0|t[Hamstring] |cRXP_WARN_after you've killed one|r << Warrior
    >>|cRXP_WARN_Pull the 2|r |cRXP_ENEMY_Murlocs|r |cRXP_WARN_in front of the huts, move away and focus killing one of them. Use|r |T136205:0|t[Evasion] |cRXP_WARN_once they're both attacking you. This is a good opportunity to use|r |T133581:0|t[Bag of Marbles]|cRXP_WARN_. Run away and reset once you've killed one|r << Rogue
    >>|cRXP_WARN_Pull the 2|r |cRXP_ENEMY_Murlocs|r |cRXP_WARN_in front of the huts, move away and cast|r |T136183:0|t[Fear] |cRXP_WARN_on one of them constantly, and try to keep DoTs on both|r << Warlock
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step << Priest
    #season 2
    .goto Elwynn Forest,74.0,51.8
    >>Kill |cRXP_ENEMY_Defias Rogue Wizards|r. Loot them for the |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Desecrated Citadel|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Defias Rogue Wizard
    .train 402852,1
step << Priest
    #season 2
    .train 402852 >> |cRXP_WARN_Use the|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Desecrated Citadel|r] |cRXP_WARN_to train|r |T237570:0|t[Homunculi]
    >>|cRXP_WARN_You must have 2|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_buffs by typing /kneel in a holy area such as, Northshire Abbey, Stormwind Cathedral, the Altars of Light in Anvilmar, Loch Modan or the Mystic Ward in Ironforge|r
    .use 205947
    .itemcount 205947,1
step
    #completewith BundleOT
    >>Kill |cRXP_ENEMY_Prowlers|r and |cRXP_ENEMY_Young Forest Bears|r
    >>|cRXP_WARN_Prioritize killing any |cRXP_ENEMY_Young Forest Bears|r you see|r
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob Prowler
    .mob Young Forest Bear
step
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4
    >>Loot the |cRXP_LOOT_Bundle of Wood|r on the ground. |cRXP_WARN_They are found beneath the trees|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    #label BundleOT
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Supervisor Raelen|r
    .target Supervisor Raelen
    .goto Elwynn Forest,81.382,66.112
    .turnin 5545 >> Turn in A Bundle of Trouble
step
    #xprate <1.5 << !Warlock
    .goto Elwynn Forest,79.457,68.789
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Timberlain|r
    .accept 83 >> Accept Red Linen Goods
    .target Sara Timberlain
step
    .goto Elwynn Forest,76.7,75.6,60,0
    .goto Elwynn Forest,79.7,83.7,60,0
    .goto Elwynn Forest,82.0,76.8,60,0
    .goto Elwynn Forest,76.7,75.6,60,0
    .goto Elwynn Forest,79.7,83.7,60,0
    .goto Elwynn Forest,82.0,76.8,60,0
    .goto Elwynn Forest,86.99,64.83
    >>Kill |cRXP_ENEMY_Prowlers|r and |cRXP_ENEMY_Young Forest Bears|r
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob Prowler
    .mob Young Forest Bear
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Thomas|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 52 >> Turn in Protect the Frontier
    .turnin 71 >> Turn in Report to Thomas
    .accept 39 >> Accept Deliver Thomas' Report
    .accept 109 >> Accept Report to Gryan Stoutmantle
    .xp <9,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Thomas|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 52 >> Turn in Protect the Frontier
    .turnin 71 >> Turn in Report to Thomas
    .accept 39 >> Accept Deliver Thomas' Report
step
    #xprate >1.49
    #completewith Level9Grind << Warlock/Warrior/Rogue
    #completewith PrincessC << !Warlock !Warrior !Rogue
    >>Kill |cRXP_ENEMY_Defias Bandits|r. Loot them for the |T134939:0|t[|cRXP_LOOT_Westfall Deed|r]
    .use 1972>>|cRXP_WARN_Use the |T134939:0|t[|cRXP_LOOT_Westfall Deed|r] to start the quest|r
    >>|cRXP_WARN_The|r |T134939:0|t[|cRXP_LOOT_Westfall Deed|r] |cRXP_WARN_is a very rare drop. Ignore this step if you don't get it|r
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> Accept Furlbrow's Deed
step
    #xprate <1.5
    #completewith Level9Grind << Warlock/Warrior/Rogue
    #completewith DefiasBandits << !Warlock !Warrior !Rogue
    >>Kill |cRXP_ENEMY_Defias Bandits|r. Loot them for the |T134939:0|t[|cRXP_LOOT_Westfall Deed|r]
    .use 1972>>|cRXP_WARN_Use the |T134939:0|t[|cRXP_LOOT_Westfall Deed|r] to start the quest|r
    >>|cRXP_WARN_The|r |T134939:0|t[|cRXP_LOOT_Westfall Deed|r] |cRXP_WARN_is a very rare drop. Ignore this step if you don't get it|r
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> Accept Furlbrow's Deed
step
    #xprate <1.5 << !Warlock
    #completewith next
    >>Kill |cRXP_ENEMY_Defias Bandits|r. Loot them for their |cRXP_LOOT_Red Linen Bandanas|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step
    #label PrincessC
    .goto Elwynn Forest,69.3,79.0
    >>Kill |cRXP_ENEMY_Princess|r. Loot her for her |cRXP_LOOT_Collar|r
    >>|cRXP_ENEMY_Princess|r |cRXP_WARN_will agro with both of her|r |cRXP_ENEMY_Porcine Entourage|r
    >>|cRXP_ENEMY_Princess|r |cRXP_WARN_will also cast|r |T132368:0|t[Rushing Charge] |cRXP_WARN_which deals heavy damage|r
    >>|cRXP_WARN_Pool 100 Rage before you engage|r |cRXP_ENEMY_Princess|r << Warrior
    >>|cRXP_WARN_Be sure |T136205:0|t[Evasion] |cRXP_WARN_is ready. If you're struggling, you can use the Fence with Throwing Weapons to abuse pathing and buy time|r << Rogue
    >>|cRXP_WARN_Be ready to use a|r |T134830:0|t[Lesser Healing Potion]
    .link https://www.youtube.com/watch?v=GRrXOV-UvD4 >> |cRXP_WARN_Click here for video reference|r << !Warrior
    .complete 88,1 --Collect Brass Collar (x1)
    .mob Princess
step << Rogue
    #season 2
    .goto Elwynn Forest,67.4,78.6,60,0
    .goto Elwynn Forest,70.8,79.8,60,0
    .goto Elwynn Forest,89.2,78.8
    >>|T133644:0|t[Pick Pocket] the |cRXP_ENEMY_Defias|r. Loot them for the |T134327:0|t[|cRXP_LOOT_Top-Left Map Piece]|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    >>|cRXP_WARN_Note: This can also come from any other |cRXP_ENEMY_Defias|r member in Elwynn Forest|r
    .collect 203785,1 -- Top-Left Map Piece (1)
    .mob Defias Bandit
    .train 398196,1
step
    #completewith Level9Grind << Warlock
    #xprate <1.5 << !Warlock
    #label DefiasBandits
    >>Kill |cRXP_ENEMY_Defias Bandits|r. Loot them for their |cRXP_LOOT_Red Linen Bandanas|r
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,69.3,79.0
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step << Warlock/Warrior/Rogue
    #xprate <1.5
    #label Level9Grind
	.goto Elwynn Forest,69.53,79.47
    .xp 9+3510 >> Grind to 3510+/6500xp << Warlock
    .xp 9+3420 >> Grind to 3420+/6500xp << Warrior/Rogue
step << Warlock/Warrior/Rogue
    #xprate >1.49
    #optional
    #label Level9Grind
	.goto Elwynn Forest,69.53,79.47
    .xp 9+2015 >> Grind to 2015+/6500xp << Warlock
    .xp 9+3050 >> Grind to 3050+/6500xp << Warrior/Rogue
--XX Warlock and Warrior
step << Rogue
    #season 2
    .cast 401847 >>|cRXP_WARN_Use any of the|r |T134327:0|t[|cRXP_LOOT_Map Pieces]|r |cRXP_WARN_to combine them into the|r |T134269:0|t[|cRXP_LOOT_Elwynn Treasure Map|r]
    .collect 203750,1
    .itemcount 203787,1
    .itemcount 203784,1
    .itemcount 203785,1
    .itemcount 203786,1
    .use 203787
    .use 203784
    .use 203785
    .use 203786
    .train 398196,1
step << Rogue
    #season 2
    #completewith next
    .goto Elwynn Forest,80.365,79.134
    .cast 401617 >>|cRXP_WARN_Use the|r |T134269:0|t[|cRXP_LOOT_Elwynn Treasure Map|r] |cRXP_WARN_at the arrow location. This will cause a |cRXP_PICK_Buried Treasure|r to pop up|r
    .use 203750
    .itemcount 203750,1
    .train 398196,1
step << Rogue
    #season 2
    .goto Elwynn Forest,80.365,79.134
    >>Open the |cRXP_PICK_Buried Treasure|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Draw|r]
    .collect 203991,1 -- Rune of Quick Draw (1)
    .train 398196,1
step << Rogue
    #season 2
    .train 400095 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Draw|r] |cRXP_WARN_to train|r |T134536:0|t[Quick Draw]
    .use 203991
    .itemcount 203991,1
step << Warlock
    #softcore
    #optional
    #completewith next
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .target Spirit Healer
step << Warlock
    #optional
    .goto Elwynn Forest,79.457,68.789
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 83 >> Turn in Red Linen Goods
    .target Sara Timberlain
    .isQuestComplete 83
step << !Warlock
    #season 0,1 << Rogue
    #softcore
    #completewith RedridgeS
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .target Spirit Healer
step << !Warlock
    #xprate <1.5
    .goto Elwynn Forest,79.457,68.789
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 83 >> Turn in Red Linen Goods
    .target Sara Timberlain
    .isQuestComplete 83
step << !Warlock
    #label RedridgeS
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Travel to Redridge Mountains
step << !Warlock
    #optional
    .goto Redridge Mountains,17.4,69.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Parker|r
    .accept 244 >> Accept Encroaching Gnolls
    .target Guard Parker
    .xp <11,1
step << !Warlock
    #softcore
    #completewith RRFP
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .target Spirit Healer
step << !Warlock
    #hardcore
    #optional
    #completewith RRFP
    .goto Redridge Mountains,18.581,69.208,15,0
    .goto Redridge Mountains,23.325,71.373,25,0
    .goto Redridge Mountains,29.565,67.930,25,0
    .goto Redridge Mountains,30.590,59.410,15 >>|cRXP_WARN_BE CAREFUL: Stick to the main road and avoid any close mobs en-route|r
step << !Warlock
    #optional
    .goto Redridge Mountains,30.73,59.99
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Feldon|r
    .turnin 244 >> Turn in Encroaching Gnolls
    .target Deputy Feldon
    .isOnQuest 244
    .xp <11,1
step << !Warlock
    #season 0,1 << Paladin
    #label RRFP
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
    .target Ariena Stormfeather
step << Paladin
    #xprate <1.5
    #season 2
    #label RRFP
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
    .target Ariena Stormfeather
step << Paladin
    #xprate >1.49
    #season 2
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
    .target Ariena Stormfeather
    .train 410015,3
step << Paladin
    #xprate >1.49
    #season 2
    #label RRFP
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
    .fly Stormwind City >> Fly to Stormwind City
    .target Ariena Stormfeather
    .train 410015,1
step << Paladin
    #xprate <1.5
    #season 2
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Pestle|r
    .turnin 61,1 >> Turn in Shipment to Stormwind
    >>|cRXP_WARN_We choose the|r |T132383:0|t[Explosive Rockets] |cRXP_WARN_as the reward. It deals decent damage, and can be used for "Split pulling" which is incredibly useful|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Click here for video reference on "Split pulling". It is a short video and invaluable to learn|r
    .target Morgan Pestle
    .train 410015,1
step << Paladin
    #season 2
    #xprate >1.49
    #optional
    #completewith Romulus
    .goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
    .train 410015,1
step << Paladin
    #xprate >1.49
    #season 2
    #label Romulus
    .goto StormwindClassic,38.10,28.10
    .gossipoption 109653 >>Talk to |cRXP_FRIENDLY_Brother Romulus|r
    .target Brother Romulus
    .skipgossip
    .train 410015,1
step << Paladin
    #xprate >1.49
    #season 2
    #completewith next
    .goto StormwindClassic,37.39,29.76,5,0
    .goto StormwindClassic,37.87,29.10,5,0
    .goto StormwindClassic,36.52,32.67,8,0
    .goto StormwindClassic,36.55,33.45,8,0
    .goto StormwindClassic,35.95,34.05,8,0
    .goto StormwindClassic,35.46,33.03,8,0
    .goto StormwindClassic,35.95,31.54,8,0
    .goto StormwindClassic,34.79,29.31,8,0
    .goto StormwindClassic,33.69,29.69,8,0
    .goto StormwindClassic,32.57,27.49,8,0
    .goto StormwindClassic,33.41,25.61,8,0
    >>Go downstairs into the western side of the Cathedral's Crypt
    .goto StormwindClassic,32.86,24.77,8 >>Travel toward the |cRXP_LOOT_Charred Note|r in the crypt
    .train 410015,1
step << Paladin
    #season 2
    #xprate >1.49
    .goto StormwindClassic,32.86,24.87
    >>Loot the |cRXP_LOOT_Charred Note|r next to the candles
    .collect 205864,1 --Charred Note (1)
    .train 410015,1
step
    #completewith CollectKelp
    .hs >> Hearth to Goldshire
step << Warrior/Rogue
    #xprate <1.5
    #optional
    #completewith Escape
    +|cRXP_WARN_Be careful with your money, as you should try to save 32s 8c for Stormwind later|r << Rogue
    +|cRXP_WARN_Be careful with your money, as you need to save 31s 85c for Stormwind and Ironforge later|r << Warrior
    >>|cRXP_WARN_You'll receive 16s 50c from turnins until then|r << Rogue
    >>|cRXP_WARN_You'll receive 18s 25c from turnins until then|r << Warrior
    .money >0.50
--XX 1s 10c flight to SW, 20s 23c cutlass, 10s 1h sword, 30c/75c level 3/11 thrown - Rogue
--XX 1s 10c flight to SW, 10s 2h sword, 10s 2h mace, 10s thrown, 30c/75c level 3/11 thrown, 81c mining pick - Warrior
--XX 7s from 39, 3.5s from 76, 3.5s from 61, 2.5s from 109, 1.75 from 6281 (warrior)
step
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Pestle|r
    .turnin 112 >> Turn in Collecting Kelp
    .timer 9,Collecting Kelp RP
    .accept 114 >> Accept The Escape
    .target William Pestle
step
    #label CollectKelp
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Pestle|r
    >>|cRXP_WARN_Wait out the RP|r
    .accept 114 >> Accept The Escape
    .target William Pestle
    .isQuestTurnedIn 112
step << Warrior/Rogue
    #optional
    #completewith next << Warrior
    #completewith RogueOptTrain << Rogue
    .goto Elwynn Forest,43.877,66.546,9 >> Travel upstairs in the Inn
step << Warrior/Rogue
    .goto Elwynn Forest,43.392,65.550
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michelle Belle|r
    .train 3273 >> Train |T135966:0|t[First Aid]
    .target Michelle Belle
step << Rogue
    #optional
    #label RogueOptTrain
    .goto Elwynn Forest,43.872,65.937
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keryn Sylvius|r
    >>|cRXP_WARN_Only train|r |T132147:0|t[Dual Wield] |cRXP_WARN_and|r |T132307:0|t[Sprint]|cRXP_WARN_. Do not train other spells to save your money for later|r
    .train 674 >> Train |T132147:0|t[Dual Wield]
    .train 2983 >> Train |T132307:0|t[Sprint]
    .target Keryn Sylvius
    .xp <10,1
step
    .goto Elwynn Forest,42.105,65.927
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 39 >> Turn in Deliver Thomas' Report
    .turnin 76 >> Turn in The Jasperlode Mine
    .accept 239 >> Accept Westbrook Garrison Needs Help!
    .accept 59 >> Accept Cloth and Leather Armor << Warlock
    .accept 109 >> Accept Report to Gryan Stoutmantle
    .target Marshal Dughan
step
    #sticky
    #label GoldshireVendor
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corina Steele|r
    .vendor >> Vendor Trash
    .target Corina Steele
    .money >0.75
step
    .goto Elwynn Forest,41.706,65.544
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smith Argus|r
    .accept 1097 >> Accept Elmore's Task
    .target Smith Argus
step << Warlock/Warrior
    #requires GoldshireVendor
    #optional
    .xp 10 >> Grind to 10
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyria Du Lac|r
    .accept 1638 >> Accept A Warrior's Training
    .trainer >> Train your class spells
    .target Lyria Du Lac
    .money <0.5
step << Warrior
    #optional
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyria Du Lac|r
    >>|cRXP_WARN_Do not train as you need to save your money for later|r
    .accept 1638 >> Accept A Warrior's Training
    .target Lyria Du Lac
step << Paladin
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Wilhelm|r
    .trainer >> Train your class spells
    .target Brother Wilhelm
    .xp <10,1
step << Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >> Travel downstairs in the Inn
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillian Crowe|r and |cRXP_FRIENDLY_Remen Marcot|r
    .trainer >> Train your class spells
    .goto Elwynn Forest,44.392,66.240
    .target +Maximillian Crowe
    .accept 1685 >> Accept Gakin's Summons
    .goto Elwynn Forest,44.485,66.268
    .target +Remen Marcot
step << Mage/Priest
    #optional
    #requires GoldshireVendor
    #completewith next
    .goto Elwynn Forest,43.7,66.4,10 >>Go Upstairs
    .xp <10,1
step << Priest
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,43.283,65.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Josetta|r
    .accept 5635 >> Accept Desperate Prayer
    .trainer >> Train your class spells
    .target Priestess Josetta
    .xp <10,1
step << Mage
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,43.25,66.19
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .trainer >> Train your class spells
    .target Zaldimar Wefhellt
    .xp <10,1 
step << skip --Rogue
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,43.872,65.937
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keryn Sylvius|r
    >>|cRXP_WARN_Only train|r |T132147:0|t[Dual Wield] |cRXP_WARN_and|r |T132307:0|t[Sprint]|cRXP_WARN_. Do not train other spells to save your money for later|r
    .train 674 >> Train |T132147:0|t[Dual Wield]
    .train 2983 >> Train |T132307:0|t[Sprint]
    .target Keryn Sylvius
--XX skip quest, not worth going inside for
step
    #optional
    #requires GoldshireVendor
    #completewith next
    .goto Elwynn Forest,43.154,89.625,50 >> Travel to The Maclure Vineyards
step
    #label Escape
    #requires GoldshireVendor
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maybell Maclure|r
    .turnin 114 >> Turn in The Escape
    .target Maybell Maclure
step
    #xprate <1.5
    .goto Elwynn Forest,34.660,84.482
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ma Stonefield|r
    .turnin 88,1 >> Turn in Princess Must Die! << Rogue/Hunter
    .turnin 88,2 >> Turn in Princess Must Die! << Warrior/Paladin
    .turnin 88,3 >> Turn in Princess Must Die! << !Rogue !Hunter !Warrior !Paladin
    .target Ma Stonefield
step
    #xprate >1.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ma Stonefield|r and |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .turnin 88,1 >> Turn in Princess Must Die! << Rogue/Hunter
    .turnin 88,2 >> Turn in Princess Must Die! << Warrior/Paladin
    .turnin 88,3 >> Turn in Princess Must Die! << !Rogue !Hunter !Warrior !Paladin
    .goto Elwynn Forest,34.660,84.482
    .target +Ma Stonefield
    .turnin 87 >> Turn in Goldtooth
    .target +"Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.253
step << !Warrior !Warlock
    #xprate <1.5
    #optional
    #completewith Garrison
    .xp 9+4510 >> Grind en route to 4510+/6500xp
    .itemcount 1971,1 --Westfall Deed (1)
step << !Warrior !Warlock
    #xprate <1.5
    #optional
    #completewith Garrison
    .xp 9+5110 >> Grind en route to 5110+/6500xp
    .itemcount 1971,<1 --Westfall Deed (0)
step
    #optional
    #completewith Garrison
    .goto Elwynn Forest,24.82,76.25,80 >> Travel to Westbrook Garrison
--XX Start of Paladin 1.5x Martyrdom Rune section
step << Paladin
    #xprate <1.5
    #season 2
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 239 >> Turn in Westbrook Garrison Needs Help!
    .target Deputy Rainer
step << Paladin
    #xprate >1.49
    #season 2
    #optional
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 239 >> Turn in Westbrook Garrison Needs Help!
    .target Deputy Rainer
    .train 410015,3
step << Paladin
    #xprate >1.49
    #season 2
    #optional
    #label Garrison
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 239 >> Turn in Westbrook Garrison Needs Help!
    .accept 11 >> Accept Riverpaw Gnoll Bounty
    .target Deputy Rainer
    .train 410015,1
step << Paladin
    #xprate >1.49
    #season 2
    #sticky
    #label Armbands
    #loop
    .goto Elwynn Forest,27.0,86.7,0
    .goto Elwynn Forest,26.1,89.9,0
    .goto Elwynn Forest,27.0,93.9,0
    .waypoint Elwynn Forest,27.0,86.7,70,0
    .waypoint Elwynn Forest,26.1,89.9,70,0
    .waypoint Elwynn Forest,25.2,92.7,70,0
    .waypoint Elwynn Forest,27.0,93.9,70,0
    .waypoint Elwynn Forest,27.0,86.7,70,0
    .waypoint Elwynn Forest,26.1,89.9,70,0
    .waypoint Elwynn Forest,25.2,92.7,70,0
    .waypoint Elwynn Forest,27.0,93.9,70,0
    .waypoint Elwynn Forest,27.0,86.7,70,0
    .waypoint Elwynn Forest,26.1,89.9,70,0
    .waypoint Elwynn Forest,25.2,92.7,70,0
    .waypoint Elwynn Forest,27.0,93.9,70,0
    >>Kill |cRXP_ENEMY_Riverpaw Runts|r and |cRXP_ENEMY_Riverpaw Outrunners|r. Loot them for their |cRXP_LOOT_Painted Gnoll Armbands|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .train 410015,1
step << Paladin
    #xprate >1.49
    #season 2
    #completewith Martyrdom
    #label Island
    .goto Duskwood,4.33,28.26,50 >>Travel toward |cRXP_FRIENDLY_Ada Gelhardt|r on the island
    .train 410015,1
step << Paladin
    #xprate >1.49
    #season 2
    #requires Island
    #completewith Martyrdom
    .goto Duskwood,4.33,28.26
    .gossipoption 109610 >>Talk to |cRXP_FRIENDLY_Ada Gelhardt|r to start a fight
    .target Ada Gelhardt
    .skipgossip 205153,1
    .train 410015,1
step << Paladin
    #xprate >1.49
    #season 2
    #requires Island
    .goto Duskwood,4.33,28.26
    >>Defeat |cRXP_ENEMY_Ada Gelhardt|r
    >>|cRXP_WARN_Remember to pre-cast|r |T135924:0|t[Seal of the Crusader] |cRXP_WARN_on her|r
    >>|cRXP_WARN_Be careful as she casts|r |T136197:0|t[Shadow Shock] |cRXP_WARN_(instantly deals 45 shadow damage. Costs her 75 mana. You should kill her quick enough for her to only cast it 3 times)|r
    >>|cRXP_WARN_After defeating |cRXP_ENEMY_Ada Gelhardt|r:|r
    >>Talk to |cRXP_FRIENDLY_Ada Gelhardt|r again to receive the |T134419:0|t[Rune of Martyrdom]
    .collect 205897,1 --Rune of Martyrdom (1)
    .target Ada Gelhardt
    .skipgossip 205153,1
    .train 410015,1
step << Paladin
    #xprate >1.49
    #season 2
    #sticky
    #label Charred
    .destroy 205864 >> Delete the |T134939:0|t[Charred Note] from your bags, as it's no longer needed
step << Paladin
    #xprate >1.49
    #season 2
    #label Martyrdom
    .train 410015 >>|cRXP_WARN_Use the|r |T134419:0|t[Rune of Martyrdom] |cRXP_WARN_to learn|r |T133815:0|t[Engrave Chest - Seal of Martyrdom]
    .use 205897
    .itemcount 205897,1 --Rune of Martyrdom (1)
step << Paladin
    #xprate >1.49
    #requires Armbands
    #season 2
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 11 >> Turn in Riverpaw Gnoll Bounty
    .target Deputy Rainer
    .isQuestComplete 11
--XX End of Paladin 1.5x Martyrdom Rune section
step << Warrior
    #season 2
    #label Garrison
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 239 >> Turn in Westbrook Garrison Needs Help!
    .accept 11 >> Accept Riverpaw Gnoll Bounty
    .target Deputy Rainer
step << Warrior
    #season 2
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>Kill |cRXP_ENEMY_Riverpaw Runts|r and |cRXP_ENEMY_Riverpaw Outrunners|r. Loot them for their |cRXP_LOOT_Armbands|r and a |T134163:0|t[|cRXP_LOOT_Severed Gnoll Head|r]
    >>|cRXP_WARN_This is one of three items you need to unlock your|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r] |cRXP_WARN_for when you get to Stormwind at level 10|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .collect 204478,1 -- Severed Gnoll Head (1)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .train 403475,1
step << Warrior
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 11 >> Turn in Riverpaw Gnoll Bounty
    .goto Elwynn Forest,24.234,74.450
    .target Deputy Rainer
step
    #label Garrison
    #season 0,1 << Warrior/Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 239 >> Turn in Westbrook Garrison Needs Help!
    .accept 11 >> Accept Riverpaw Gnoll Bounty << Warlock
    .goto Elwynn Forest,24.234,74.450
    .target +Deputy Rainer
    >>Click the |cRXP_PICK_Wanted Poster|r << Warlock
    .accept 176 >> Accept Wanted: "Hogger" << Warlock
    .goto Elwynn Forest,24.548,74.672 << Warlock
step << Warlock
    #completewith GnollEnd
    >>Kill |cRXP_ENEMY_Riverpaw Runts|r and |cRXP_ENEMY_Riverpaw Outrunners|r. Loot them for the |T134939:0|t[|cRXP_LOOT_Gold Pickup Schedule|r]
    .use 1307 >>|cRXP_WARN_Use the |T134939:0|t[|cRXP_LOOT_Gold Pickup Schedule|r] to start the quest|r
    >>|cRXP_WARN_The|r |T134939:0|t[|cRXP_LOOT_Gold Pickup Schedule|r] |cRXP_WARN_is a very rare drop. Ignore this step if you don't get it|r
    >>|cRXP_ENEMY_Gruff Swiftbite|r |cRXP_WARN_a rare spawn, does have a 100% drop chance|r
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >> Accept The Collector
    .unitscan Gruff Swiftbite
step << Warlock
    #completewith next
    >>Kill |cRXP_ENEMY_Riverpaw Runts|r and |cRXP_ENEMY_Riverpaw Outrunners|r. Loot them for their |cRXP_LOOT_Armbands|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step << Warlock
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>Kill |cRXP_ENEMY_Hogger|r. Loot him for his |cRXP_LOOT_Claw|r
    >>|cRXP_ENEMY_Hogger|r |cRXP_WARN_can spawn in multiple locations|r
    >>|cRXP_WARN_Cast|r |T136183:0|t[Fear] |cRXP_WARN_on |cRXP_ENEMY_Hogger|r continously and use your regular DoTs to kill him|r
    >>|cRXP_WARN_Kite him back to the guard tower if required ensuring you've done at least 50% damage to him|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step << Warlock
    #label GnollEnd
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>Kill |cRXP_ENEMY_Riverpaw Runts|r and |cRXP_ENEMY_Riverpaw Outrunners|r. Loot them for their |cRXP_LOOT_Armbands|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .isOnQuest 11
step << Warlock
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 11 >> Turn in Riverpaw Gnoll Bounty
    .target Deputy Rainer
step << !Warrior !Warlock
    #xprate <1.5
    #optional
    #completewith WestEntry
    .xp 9+4575 >> Grind en route to 4575+/6500xp
    .itemcount 1971,1 --Westfall Deed (1)
step << !Warrior !Warlock
    #xprate <1.5
    #optional
    #completewith WestEntry
    .xp 9+5175 >> Grind en route to 5175+/6500xp
    .itemcount 1971,<1 --Westfall Deed (0)
step
    #completewith WestEntry
    .goto Westfall,59.95,19.35
    .zone Westfall >> Travel to Westfall
step
#xprate >1.49
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Furlbrow|r and |cRXP_FRIENDLY_Verna Furlbrow|r
    >>|cRXP_WARN_Do not accept the other quests|r
    .turnin 184 >> Turn in Furlbrow's Deed
    .goto Westfall,59.95,19.35
    .target +Farmer Furlbrow
    .accept 36 >> Accept Westfall Stew
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
    .isOnQuest 184
step
#xprate >1.49
    #label WestEntry
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verna Furlbrow|r
    >>|cRXP_WARN_Do not accept the other quests|r
    .accept 36 >> Accept Westfall Stew
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
step
#xprate <1.50
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Furlbrow|r and |cRXP_FRIENDLY_Verna Furlbrow|r
    .accept 64 >> Accept The Forgotten Heirloom
    .turnin 184 >> Turn in Furlbrow's Deed
    .goto Westfall,59.95,19.35
    .target +Farmer Furlbrow
    .accept 151 >> Accept Poor Old Blanchy
    .accept 36 >> Accept Westfall Stew
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
    .isOnQuest 184
step
#xprate <1.50
    #label WestEntry
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Furlbrow|r and |cRXP_FRIENDLY_Verna Furlbrow|r
    .accept 64 >> Accept The Forgotten Heirloom
    .goto Westfall,59.95,19.35
    .target +Farmer Furlbrow
    .accept 151 >> Accept Poor Old Blanchy
    .accept 36 >> Accept Westfall Stew
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
step << Paladin
    #xprate >1.49
    #season 2
    #optional
    #requires Charred
--XXREQ Placeholder invis step
step
#xprate <1.50
    #sticky
    #label Fields
    .goto Westfall,56.04,31.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
    .accept 9 >> Accept The Killing Fields
    .target Farmer Saldean
step
#xprate >1.49
    .goto Westfall,56.416,30.519
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r inside
    >>|cRXP_WARN_Do not accept the other quests|r
    .turnin 36 >> Turn in Westfall Stew
    .target Salma Saldean
step
#xprate <1.50
    .goto Westfall,56.416,30.519
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r inside
    .turnin 36 >> Turn in Westfall Stew
    .accept 38 >> Accept Westfall Stew
    .accept 22 >>Accept Goretusk Liver Pie
    .target Salma Saldean
step
    #xprate <1.5
    #requires Fields
    .goto Westfall,56.327,47.520
    .xp 9+5775 >> Grind to 5775+/6500xp
    .subzoneskip 108
step
    #xprate >1.49
    #optional
    #requires Fields
    .goto Westfall,56.327,47.520
    .xp 9+5410 >> Grind to 5410+/6500xp
    .subzoneskip 108
step
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer
    .subzoneskip 108
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r and |cRXP_FRIENDLY_Captain Danuvin|r
    .turnin 109 >> Turn in Report to Gryan Stoutmantle
    .accept 12 >> Accept The People's Militia
    .goto Westfall,56.327,47.520
    .target +Gryan Stoutmantle
    .accept 102 >> Accept Patrolling Westfall
    .goto Westfall,56.421,47.623
    .target +Captain Danuvin
step
    #xprate >1.49
    .goto Westfall,56.327,47.520
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 109 >> Turn in Report to Gryan Stoutmantle
    .target Gryan Stoutmantle
step << Human
    #optional
    .goto Westfall,56.04,31.23
    .xp 10 >> Grind to level 10
step << Human
    .goto Westfall,57.002,47.169
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Lewis|r
    .accept 6181 >> Accept A Swift Message
    .vendor >>|cRXP_WARN_Vendor trash|r
    .target Quartermaster Lewis
    .isQuestAvailable 6181
step << Human
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .turnin 6181 >> Turn in A Swift Message
    .accept 6281 >> Accept Continue To Stormwind
    .target Thor
step << skip --Rogue
    #season 2
    #completewith FlySW
    #label RoSS
    .goto Westfall,51.540,55.361,30,0
    .goto Westfall,51.093,54.642,30,0
    .goto Westfall,50.81,47.15,50,0
    .goto Westfall,51.093,54.642
    >>|T133644:0|t[Pick Pocket] the |cRXP_ENEMY_Defias Scout|r for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Saber Slash|r]
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    >>|cRXP_WARN_There is a very high chance that the|r |T133644:0|t[Pick Pocket] |cRXP_WARN_will fail because your are underleved. If it does, skip this step and fly to Stormwind. You will complete it in Loch Modan shortly|r
    >>|cRXP_WARN_DO NOT AGRO THE |cRXP_ENEMY_Defias Scout|r OTHERWISE IT WILL|r |T132331:0|t[Vanish] |cRXP_WARN_AND DESPAWN FOR 3-5 MINUTES. ENSURE TO GO IN|r |T132320:0|t[Stealth] |cRXP_WARN_EARLY!|r
    >>|cRXP_WARN_The |cRXP_ENEMY_Defias Scout|r can spawn on hills|r
    .collect 208772,1 -- Rune of Saber Slash (1)
    .unitscan Defias Scout
    .train 424785,1
--XX Moved/forced to Loch/Darkshore
step << skip --Rogue
    #season 2
    #completewith next
    #requires RoSS
    .cast 402265 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Saber Slash|r]
    .use 208772 -- Rune of Saber Slash (1)
    .itemcount 208772,1
    .train 424785,1
step
    #label FlySW
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fly to Stormwind
    .target Thor
step
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Pestle|r
    .turnin 61,1 >> Turn in Shipment to Stormwind
    >>|cRXP_WARN_We choose the|r |T132383:0|t[Explosive Rockets] |cRXP_WARN_as the reward. It deals decent damage, and can be used for "Split pulling" which is incredibly useful|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Click here for video reference on "Split pulling". It is a short video and invaluable to learn|r
    .target Morgan Pestle
step << Rogue
    #optional
    #completewith next
    .goto 1453,57.764,61.412,6 >> Enter the Everyday Merchandise building
step << Rogue
    #xprate <1.5
    .goto 1453,58.380,61.683
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thurman Mullby|r
    >>|cRXP_BUY_Buy the|r |T135425:0|t[Keen Throwing Knives] |cRXP_BUY_from him|r
    .collect 3107,200 --Collect Keen Throwing Knife (200)
    .target Thurman Mullby
    .xp <10+5890,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
--XX 420 6281, 110 1097, 900 6661, 85 IF, 65 Gate IF, 65 refuge, 65 Amberstill
--XX (WARR ONLY): 90 1638, 90 1639, 210 1640, 420 1665
step << Rogue
    #xprate <1.5
    .goto 1453,58.380,61.683
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thurman Mullby|r
    >>|cRXP_BUY_Buy the|r |T135641:0|t[Balanced Throwing Daggers] |cRXP_BUY_from him|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Thurman Mullby
    .xp >10+5890,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #xprate >1.49
    .goto 1453,58.380,61.683
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thurman Mullby|r
    >>|cRXP_BUY_Buy the|r |T135425:0|t[Keen Throwing Knives] |cRXP_BUY_from him|r
    .collect 3107,200 --Collect Keen Throwing Knife (200)
    .target Thurman Mullby
    .xp <10+5035,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
--XX 420 6281, 110 1097, 900 6661, 85 IF, 65 Gate IF, 65 refuge, 65 Amberstill
step << Rogue
    #xprate >1.49
    .goto 1453,58.380,61.683
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thurman Mullby|r
    >>|cRXP_BUY_Buy the|r |T135641:0|t[Balanced Throwing Daggers] |cRXP_BUY_from him|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Thurman Mullby
    .xp >10+5035,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #completewith Continue
    +|cRXP_WARN_Equip the|r |T135425:0|t[Keen Throwing Knives]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Rogue
    #optional
    #completewith Continue
    +|cRXP_WARN_Equip the|r |T135641:0|t[Balanced Throwing Daggers]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #optional << Warlock/Mage/Warrior
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Train 1h Swords and Staves << Warlock/Mage
    .trainer >>Train 1h Swords << Rogue
    .trainer >>Train Staves << Priest
    .trainer >>Train 2h Swords << Warrior/Paladin
    .target Woo Ping
    .money <0.2 << Warlock/Mage
    .money <0.3 << Warrior
step << Warlock/Mage
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Train Staves
    .target Woo Ping
step << Rogue
    #ssf
    #optional
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Buy a|r |T135346:0|t[Cutlass] |cRXP_BUY_from him|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .money <0.2623
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .train 2983,1 --Sprint not Trained
step << Rogue
    #ssf
    #optional
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Buy a|r |T135346:0|t[Cutlass] |cRXP_BUY_from him|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .money <0.2023
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .train 2983,3 --Sprint Trained
step << Rogue
    #optional
    #ah
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Buy a|r |T135346:0|t[Cutlass] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    >>|cRXP_WARN_Make sure you save 6s for training later|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .train 2983,1 --Sprint not Trained
    .money <0.06
--XX No money gate factoring cutlass in case something cheaper on AH
step << Rogue
    #optional
    #ah
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Buy a|r |T135346:0|t[Cutlass] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .train 2983,3 --Sprint Trained
--XX No money gate factoring cutlass in case something cheaper on AH
step << Rogue
    #optional
    #completewith Continue
    +|cRXP_WARN_Equip the|r |T135346:0|t[Cutlass]
    .use 851
    .itemcount 851,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step
    #xprate <1.5
    .goto StormwindClassic,52.623,65.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Allison|r
    .home >> Set your Hearthstone to Stormwind City
    .target Innkeeper Allison
step << skip --Warrior
    #season 2
    .gossipoption 109045 >> Talk to |cRXP_FRIENDLY_Liv Bradford|r inside the Inn at the Park
    .gossipoption 109047
    .goto Stormwind City,22.608,64.621
    .gossipoption 109084 >> Talk to |cRXP_ENEMY_Stuart|r, then beat him up. He will pass out at 0%
    .goto Stormwind City,21.213,62.781
    >>If |cRXP_ENEMY_Stuart|r is not there wait for him to respawn
    .gossipoption 109044 >> Talk to |cRXP_FRIENDLY_Liv Bradford|r again after knocking out |cRXP_ENEMY_Stuart|r to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault|r]
    .goto Stormwind City,22.608,64.621
    .train 425447,1 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault|r] |cRXP_WARN_to train|r |T236317:0|t[Frenzied Assault]
    >>|cRXP_WARN_Note: This can be quite difficult to solo at this level. Look for some help or you'll complete it soon at level 12|r
    .use 204716
    .target Liv Bradford
    .mob Stuart
--XX Warlock Elwynn Section Start--
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Travel to The Slaughtered Lamb and go downstairs
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1685 >> Turn in Gakin's Summons
    .target Gakin the Darkbinder
    .accept 1688 >> Accept Surena Caledon
step << Warlock
    #softcore
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r by using |T136126:0|t[Life Tap] and standing on the Bonfire next to you
    .target Spirit Healer
    .subzoneskip 87
step << Warlock
    #hardcore
    #completewith WLHoggerEnd
    .goto Elwynn Forest,42.105,65.927
    .zone Elwynn Forest >> Exit Stormwind
step << Warlock
    #completewith WLHoggerEnd
    .goto Elwynn Forest,42.105,65.927
    .subzone 87 >> Travel to Goldshire
step << Warlock
    .isOnQuest 123
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 176 >> Turn in Wanted: "Hogger"
    >>|cRXP_WARN_Choose the|r |T135145:0|t[|cRXP_FRIENDLY_Balanced Fighting Stick|r] |cRXP_WARN_as your reward. Equip it|r
    .turnin 123 >> Turn in The Collector
step << Warlock
    #label WLHoggerEnd
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 176 >> Turn in Wanted: "Hogger"
    >>|cRXP_WARN_Choose the|r |T135145:0|t[|cRXP_FRIENDLY_Balanced Fighting Stick|r] |cRXP_WARN_as your reward. Equip it|r
step << Warlock
    #completewith SChoker
    .goto Elwynn Forest,71.0,80.8,150 >> Travel to the Brackwell Pumpkin Patch
    >>|cRXP_WARN_Grind en-route. Try to level your Staff skill for later|r
step << Warlock
    #sticky
    #label WLBandanaEnd
    >>Kill |cRXP_ENEMY_Defias Bandits|r. Loot them for their |cRXP_LOOT_Red Linen Bandanas|r
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,69.3,79.0
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step << Warlock
    #label SChoker
    .goto Elwynn Forest,71.10,80.66
    >>Kill |cRXP_ENEMY_Surena Caledon|r. Loot her for her |cRXP_LOOT_Choker|r
    >>|cRXP_WARN_Focus on killing |cRXP_ENEMY_Surena Caledon|r very quickly|r
    >>|cRXP_WARN_Cast|r |T136183:0|t[Fear] |cRXP_WARN_on |cRXP_ENEMY_Morgan the Collector|r continously|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step << Warlock
    #requires WLBandanaEnd
    .goto Elwynn Forest,79.457,68.789
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 59 >> Turn in Cloth and Leather Armor
    .turnin 83 >> Turn in Red Linen Goods
    .target Sara Timberlain
    .isOnQuest 83
step << Warlock
    #optional
    #requires WLBandanaEnd
    .goto Elwynn Forest,79.457,68.789
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 59 >> Turn in Cloth and Leather Armor
    .target Sara Timberlain
step << Warlock
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Travel to Redridge Mountains
    >>|cRXP_WARN_Grind en-route. Make sure you have at least 2|r |T134075:0|t[Soul Shards] |cRXP_WARN_by using|r |T136163:0|t[Drain Soul]
    .collect 6265,2 --Soul Shard (2)
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Parker|r
    .target Guard Parker
    .goto Redridge Mountains,17.4,69.6
    .accept 244 >> Accept Encroaching Gnolls
step << Warlock
    #softcore
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Feldon|r
    >>|cRXP_WARN_Be careful of mobs en-route|r
    .turnin 244 >> Turn in Encroaching Gnolls
    .target Deputy Feldon
step << Warlock
    #hardcore
    .goto Redridge Mountains,18.581,69.208,15,0
    .goto Redridge Mountains,23.325,71.373,25,0
    .goto Redridge Mountains,29.565,67.930,25,0
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Feldon|r
    >>|cRXP_WARN_STICK TO THE MAIN ROAD AND AVOID ANY CLOSE MOBS EN-ROUTE|r
    .turnin 244 >> Turn in Encroaching Gnolls
    .target Deputy Feldon
step << Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
    .fly Stormwind >> Fly to Stormwind
    .target Ariena Stormfeather
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Travel to The Slaughtered Lamb and go downstairs
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Train your class spells
    .target Ursula Deline
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1688 >> Turn in Surena Caledon
    .accept 1689 >> Accept The Binding
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>|cRXP_WARN_Travel to the bottom of The Slaughtered Lamb|r
    .cast 7728 >> |cRXP_WARN_Use the|r |T133292:0|t[Bloodstone Choker] |cRXP_WARN_to call forth a|r |cRXP_ENEMY_Summoned Voidwalker|r
    .use 6928
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 6928 >> Kill the |cRXP_ENEMY_Summoned Voidwalker|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .mob Summoned Voidwalker
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .target Gakin the Darkbinder
    .goto StormwindClassic,25.25,78.59
    .turnin 1689 >> Turn in The Binding
--XX Warlock elwynn section end--
step << Warrior
    #season 2
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109028 >>Talk to |cRXP_FRIENDLY_Viktoria Woods|r to turn in your |T134168:0|t[|cRXP_LOOT_Severed Kobold Head|r] to receive |T134455:0|t[Monster Hunter's First Rune Fragment]
    .collect 204688,1 -- Monster Hunter's First Rune Fragment (1)
    .itemcount 204476,1 -- Severed Kobold Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109027 >>Talk to |cRXP_FRIENDLY_Viktoria Woods|r to turn in your |T134169:0|t[|cRXP_LOOT_Severed Murloc Head|r] to receive |T134455:0|t[Monster Hunter's Second Rune Fragment]
    .collect 204689,1 -- Monster Hunter's Second Rune Fragment (1)
    .itemcount 204477,1 -- Severed Murloc Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #label GnollHead
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109026 >>Talk to |cRXP_FRIENDLY_Viktoria Woods|r to turn in your |T134163:0|t[|cRXP_LOOT_Severed Gnoll Head|r] to receive |T134455:0|t[Monster Hunter's Third Rune Fragment]
    .collect 204690,1 -- Monster Hunter's Third Rune Fragment (1)
    .itemcount 204478,1 -- Severed Gnoll Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #label RoDSW
    #requires GnollHead
    .cast 406651 >> |cRXP_WARN_Use any of the|r |T134455:0|t[Monster Hunter's Rune Fragments] |cRXP_WARN_to create the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]
    .collect 204703,1 -- Rune of Devastate (1)
    .use 204690
    .use 204689
    .use 204688
    .itemcount 204688,1
    .itemcount 204689,1
    .itemcount 204690,1
    .train 403475,1
step << Warrior
    #season 2
    .train 403475 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r] |cRXP_WARN_to train|r |T135291:0|t[Devastate]
    .use 204703
    .itemcount 204703,1
step << Rogue
    .goto 1453,74.645,52.818
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne the Night Man|r
    >>|cRXP_WARN_Only train|r |T132147:0|t[Dual Wield] |cRXP_WARN_and|r |T132307:0|t[Sprint]
    .train 674 >> Train |T132147:0|t[Dual Wield]
    .train 2983 >> Train |T132307:0|t[Sprint]
    .target Osborne the Night Man
step << Rogue
    #optional
    #label StilettoDW
    #completewith Continue
    +|cRXP_WARN_Equip the|r |T135346:0|t[Stiletto] |cRXP_WARN_in your offhand|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>6.7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #requires StilettoDW
    #completewith Continue
    +|cRXP_WARN_Don't worry if you're not|r |T132147:0|t[Dual Wielding] |cRXP_WARN_right now, you'll buy a weapon later when necessary|r
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.4
step << Human
    #xprate <1.5
    #label Continue
    .goto StormwindClassic,74.312,47.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osric Strang|r
    .turnin 6281 >> Turn in Continue to Stormwind
    .accept 6261 >> Accept Dungar Longdrink
    .target Osric Strang
step << Human
    #xprate >1.49
    #label Continue
    .goto StormwindClassic,74.312,47.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osric Strang|r
    .turnin 6281 >> Turn in Continue to Stormwind
    .target Osric Strang
step << Warrior
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harry Burlguard|r
    .turnin 1638 >> Turn in A Warrior's Training
    .accept 1639 >> Accept Bartleby the Drunk
    .target Harry Burlguard
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartleby|r
    .turnin 1639 >> Turn in Bartleby the Drunk
    .accept 1640 >> Accept Beat Bartleby
    .target Bartleby
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>Attack |cRXP_ENEMY_Bartleby|r. He will submit at 1%
    .complete 1640,1 --Beat Bartleby
    .mob Bartleby
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartleby|r
    .target Bartleby
    .goto StormwindClassic,73.787,36.323
    .turnin 1640 >> Turn in Beat Bartleby
    .accept 1665 >> Accept Bartleby's Mug
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harry Burlguard|r
    .target Harry Burlguard
    .goto StormwindClassic,74.249,37.244
    .turnin 1665 >> Turn in Bartleby's Mug
step << Priest
    #optional
    #completewith Prayer
    .goto StormwindClassic,42.51,33.51,20 >> Enter the Stormwind Cathedral
step << Priest
    #optional
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess Laurena|r
    .turnin 5635 >> Turn in Desperate Prayer
    .train 8092 >> Train your class spells
    .target High Priestess Laurena
    .isOnQuest 5635
step << Priest
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess Laurena|r
    .turnin 5634 >> Turn in Desperate Prayer
    .train 8092 >> Train your class spells
    .target High Priestess Laurena
    .train 13908,1
step << Priest
    #optional
    #label Prayer
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess Laurena|r
    .trainer >> Train your class spells
    .target High Priestess Laurena
    .train 13908,3
step << Rogue
    #season 2
    #optional
    #completewith next
    .goto Stormwind City,56.93,29.54,8,0
    .goto Stormwind City,58.65,27.56,10 >> Enter the Cut-Throat Alley in Stormwind City at the Dwarven District
    .train 400081,1
step << Rogue
    #season 2
    #optional
    .goto Stormwind City,63.201,29.491,5,0
    .goto Stormwind City,61.728,29.190
    >>|cRXP_WARN_Head upstairs into the house|r
    >>Open the |cRXP_PICK_Dusty Chest|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r]
    >>|cRXP_WARN_Doing this will spawn two level 10 |cRXP_ENEMY_Cut-throat Muggers|r which will attack you|r
    .collect 204174,1 -- Rune of Precision (1)
    .mob Cut-throat Mugger
    .train 400081,1
step << Rogue
    #season 2
    #optional
    .train 400081 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r] |cRXP_WARN_to train|r |T135610:0|t[Between the Eyes]
    .use 204174
    .itemcount 204174,1
step
    .goto StormwindClassic,51.757,12.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 1097 >> Turn in Elmore's Task
    .accept 353 >> Accept Stormpike's Delivery
    .target Grimand Elmore
step << Warrior
    #completewith next
    +|cRXP_WARN_Put|r |T132363:0|t[Sunder Armor] |cRXP_WARN_on your action bar and ensure to use it constantly. It is more effective than using|r |T132282:0|t[Heroic Strike]
step << Warrior/Paladin/Rogue
    .goto StormwindClassic,56.3,17.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaita Deepforge|r
    .collect 2901,1,432,1 >>|cRXP_BUY_Buy a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from her|r
    >>|cRXP_WARN_You'll train|r |T134708:0|t[Mining] |cRXP_WARN_later|r
    .target Kaita Deepforge
--XX 81c, 1s 75c from 6281
step
    #completewith next
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >> Enter the Deeprun Tram. Take the Tram to Ironforge
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_if needed while waiting for the tram|r << Rogue/Warrior/Paladin
step
    >>|cRXP_WARN_Get on the Tram once it arrives. Get off on the other side and look for |cRXP_FRIENDLY_Monty|r on the middle platform|r
    >>|cRXP_WARN_Cast|r |T136221:0|t[Summon Voidwalker] |cRXP_WARN_and|r |T135230:0|t[Create Healthstone] |cRXP_WARN_while waiting|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monty|r inside the Deeprun Tram
    .accept 6661 >> Accept Deeprun Rat Roundup
    .target Monty
step
    >>|cRXP_WARN_Use the|r |T133942:0|t[Rat Catcher's Flute] |cRXP_WARN_on |cRXP_ENEMY_Deeprun Rats|r inside the Deeprun Tram|r
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob Deeprun Rat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monty|r inside the Deeprun Tram
    .turnin 6661 >> Turn in Deeprun Rat Roundup
    .target Monty
step
    .zone Ironforge >>Enter Ironforge
    .isQuestAvailable 314
step << Paladin/Warrior
    #season 2
    #optional
    #completewith next
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>Travel toward |cRXP_FRIENDLY_Bruuk Barleybeard|r inside the Inn
    .train 425621,1 << Paladin
    .train 425447,1 << Warrior
step << Paladin/Warrior
    #season 2
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>Talk to |cRXP_FRIENDLY_Bruuk Barleybeard|r inside
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425621,1 << Paladin
    .train 425447,1 << Warrior
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step << Paladin/Warrior
    #season 2
    .goto Ironforge,72.40,73.63
    .gossipoption 109084 >>Talk to |cRXP_FRIENDLY_Bruart|r to start a fight
    >>Defeat |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_Be careful as he casts|r |T132939:0|t[Backhand] |cRXP_WARN_(stuns you for 2 seconds)|r
    >>|cRXP_WARN_Remember to pre-cast|r |T135924:0|t[Seal of the Crusader] |cRXP_WARN_on him|r << Paladin
    >>|cRXP_WARN_DO NOT accidentally cast|r |T135906:0|t[Blessing of Might] |cRXP_WARN_on him|r << Paladin
    >>|cRXP_WARN_Kite him upstairs to the balcony, then drop down outside the inn and cast|r |T135920:0|t[Holy Light] |cRXP_WARN_if needed|r << Paladin
    >>|cRXP_WARN_Kite him upstairs to the balcony, then drop down outside the inn and use|r |T133688:0|t[Bandages] |cRXP_WARN_if you have them/if needed|r << Warrior
    .mob Bruart
    .skipgossip 209004,1
    .train 425621,1 << Paladin
    .train 425447,1 << Warrior
--XX 109084 "Seems you've had a few too many"
--XX Check if another player can skip the "how's business" dialogue for you (paladin, warrior)
step << Paladin/Warrior
    #season 2
    #optional
    .goto Ironforge,72.40,73.63,-1
    .goto Ironforge,72.53,76.94,-1
    >>Defeat |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_Be careful as he casts|r |T132939:0|t[Backhand] |cRXP_WARN_(stuns you for 2 seconds)|r
    >>|cRXP_WARN_Remember to pre-cast|r |T135924:0|t[Seal of the Crusader] |cRXP_WARN_on him|r << Paladin
    >>|cRXP_WARN_DO NOT accidentally cast|r |T135906:0|t[Blessing of Might] |cRXP_WARN_on him|r << Paladin
    >>|cRXP_WARN_Kite him upstairs to the balcony, then drop down outside the inn and cast|r |T135920:0|t[Holy Light] |cRXP_WARN_if needed|r << Paladin
    >>|cRXP_WARN_Kite him upstairs to the balcony, then drop down outside the inn and use|r |T133688:0|t[Bandages] |cRXP_WARN_if you have them/if needed|r << Warrior
    >>|cRXP_WARN_After defeating |cRXP_ENEMY_Bruart|r:|r
    >>Talk to |cRXP_FRIENDLY_Bruuk Barleybeard|r again to receive the |T134419:0|t[Rune of Rebuke] << Paladin
    >>|cRXP_WARN_If he doesn't give you the|r |T134419:0|t[Rune of Rebuke]|cRXP_WARN_, you may need to fight |cRXP_ENEMY_Bruart|r again|r << Paladin
    >>Talk to |cRXP_FRIENDLY_Bruuk Barleybeard|r again to receive the |T134419:0|t[Rune of Frenzied Assault] << Warrior
    >>|cRXP_WARN_If he doesn't give you the|r |T134419:0|t[Rune of Frenzied Assault]|cRXP_WARN_, you may need to fight |cRXP_ENEMY_Bruart|r again|r << Warrior
    >>|cRXP_WARN_NOTE: This can be difficult to solo. Look for some help, or you will be told to complete it again later in the guide|r << Warrior
    .collect 205683,1 << Paladin --Rune of Rebuke (1)
    .collect 204716,1 << Warrior --Rune of Frenzied Assault (1)
    .target Bruuk Barleybeard
    .skipgossip 5570,2,1
    .skipgossip 209004,1
    .train 425621,1 << Paladin
    .train 425447,1 << Warrior
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
step << Paladin
    #season 2
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t[Rune of Rebuke] |cRXP_WARN_to learn|r |T134596:0|t[Engrave Pants - Rebuke]
    .use 205683
    .itemcount 205683,1 --Rune of Rebuke (1)
    .train 425621,1
step << Paladin
    #season 2
    #completewith Dirt
    .engrave 7 >>|cRXP_WARN_Engrave your|r |T134596:0|t|cRXP_LOOT_[Pants]|r |cRXP_WARN_with|r |T134596:0|t[Engrave Pants - Rebuke]
    >>|cRXP_WARN_Remember to put|r |T134919:0|t[Rebuke] |cRXP_WARN_onto your action bars|r
    .train 425621,3
step << Warrior
    #season 2
    .train 425447 >>|cRXP_WARN_Use the|r |T134419:0|t[Rune of Frenzied Assault] |cRXP_WARN_to learn|r |T134596:0|t[Engrave Pants - Frenzied Assault]
    .use 204716
    .itemcount 204716,1 --Rune of Frenzied Assault (1)
step << Warrior
    #season 2
    #completewith Dirt
    .engrave 7 >>|cRXP_WARN_Engrave your|r |T134596:0|t|cRXP_LOOT_[Pants]|r |cRXP_WARN_with|r |T134596:0|t[Engrave Pants - Frenzied Assault]
    .train 425447,3
step << Warrior
    #optional
    #completewith next
    .goto 1455,61.552,85.636,10,0
    .goto 1455,61.356,88.398,6 >> Enter the Timberline Arms building
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bixi Wobblebonk|r and |cRXP_FRIENDLY_Buliwyf Stonehand|r
    .train 2567 >> Train Thrown
    .goto Ironforge,62.237,89.628
    .target +Bixi Wobblebonk
    .train 199 >> Train 2h Maces
    .goto Ironforge,61.177,89.508
    .target +Buliwyf Stonehand
step << Warrior
    #xprate <1.5
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brenwyn Wintersteel|r down stairs
    >>|cRXP_BUY_Buy the|r |T135425:0|t[Keen Throwing Knives] |cRXP_BUY_from her|r
    .collect 3107,200 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .xp <10+7405,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
--XX 420 6281, 110 1097, 900 6661, 85 IF, 65 Gate IF, 65 refuge, 65 Amberstill
--XX (WARR ONLY): 90 1638, 90 1639, 210 1640, 420 1665
step << Warrior
    #xprate <1.5
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brenwyn Wintersteel|r down stairs
    >>|cRXP_BUY_Buy the|r |T135641:0|t[Balanced Throwing Daggers] |cRXP_BUY_from her|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Brenwyn Wintersteel
    .xp >10+7405,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #xprate >1.49
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brenwyn Wintersteel|r down stairs
    >>|cRXP_BUY_Buy the|r |T135425:0|t[Keen Throwing Knives] |cRXP_BUY_from her|r
    .collect 3107,200 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .xp <10+7310,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
--XX 420 6281, 110 1097, 900 6661, 85 IF, 65 Gate IF, 65 refuge, 65 Amberstill
step << Warrior
    #xprate >1.49
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brenwyn Wintersteel|r down stairs
    >>|cRXP_BUY_Buy the|r |T135641:0|t[Balanced Throwing Daggers] |cRXP_BUY_from her|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Brenwyn Wintersteel
    .xp >10+7310,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith Rudra
    +|cRXP_WARN_Equip the|r |T135425:0|t[Keen Throwing Knives]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    #optional
    #completewith Rudra
    +|cRXP_WARN_Equip the|r |T135641:0|t[Balanced Throwing Daggers]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith next
    .goto 1455,61.356,88.398,6 >> Exit the Timberline Arms building
step
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Get the Ironforge flight path
    .target Gryth Thurden
step
    #xprate >1.49
    #optional
    #completewith IFHS
    .goto 1455,43.883,59.467,15,0 
    .goto 1455,38.497,71.135,15,0
    .goto 1455,25.658,61.707,20,0
    .goto 1455,20.419,53.269,10 >> Enter the Stonefire Tavern
    .train 122,3 << Mage
    .train 633,3 << Paladin
step << Mage/Paladin
    #xprate >1.49
    #optional
    #completewith next
    .goto Ironforge,49.11,56.02,30,0
    .goto Ironforge,44.08,46.60,20,0
    .goto Ironforge,40.84,44.59,20,0
    .goto Ironforge,35.30,32.76,20,0
    .goto Ironforge,27.17,12.58,20,0 << Paladin
    .goto Ironforge,27.60,11.06,20,0 << Mage
    .goto Ironforge,27.17,8.58,12 >>Travel toward |cRXP_FRIENDLY_Dink|r << Mage
    .goto Ironforge,23.131,6.143,12 >>Travel toward |cRXP_FRIENDLY_Brandur Ironhammer|r << Paladin
step << Mage
    #xprate >1.49
    .goto Ironforge,27.17,8.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r inside
    .train 122 >> Train your class spells
    .target Dink
--XX Alternative mage train if they didn't get 10 in Goldshire
step << Paladin
    #xprate >1.49
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r inside
    .train 633 >> Train your class spells
    .target Brandur Ironhammer
--XX Alternative paladin train if they didn't get 10 in Goldshire
step
    #xprate >1.49
    #label IFHS
    .goto 1455,20.419,53.269,10,0 << Mage/Paladin
    .goto Ironforge,18.14,51.45
    >>Talk to |cRXP_FRIENDLY_Innkeeper Firebrew|r inside
    .home >> Set your Hearthstone to Ironforge
    .target Innkeeper Firebrew
step
    #ssf
    #xprate >1.49
    .goto Ironforge,19.11,52.80
    .zone Dun Morogh >>|cRXP_WARN_Jump on top of the Candles on the table. Perform a Logout Skip by logging out and back in|r
    .isQuestAvailable 314
step
    #xprate <1.5
    #ssf
    #optional
    #completewith next
    .goto 1455,48.773,55.875,20,0
    .goto 1455,48.257,55.177,20,0
    .goto 1455,46.648,50.482,20,0
    .goto 1455,44.781,49.811,20,0
    .goto 1455,38.628,56.436,20 >>Enter The High Seat
    .zoneskip Dun Morogh
    .isQuestAvailable 314
    .train 122,3 << Mage
    .train 633,3 << Paladin
step
    #xprate <1.5
    #ssf
    #optional
    .goto 1455,38.628,56.436
    .zone Dun Morogh >>|cRXP_WARN_Jump on top of either shoulder of the throne, then perform a Logout Skip by logging out and back in|r
    .isQuestAvailable 314
    .train 122,3 << Mage
    .train 633,3 << Paladin
step << Mage/Paladin
    #xprate <1.5
    #optional
    #completewith next
    .goto Ironforge,49.11,56.02,30,0
    .goto Ironforge,44.08,46.60,20,0
    .goto Ironforge,40.84,44.59,20,0
    .goto Ironforge,35.30,32.76,20,0
    .goto Ironforge,27.17,12.58,20,0 << Paladin
    .goto Ironforge,27.60,11.06,20,0 << Mage
    .goto Ironforge,27.17,8.58,12 >>Travel toward |cRXP_FRIENDLY_Dink|r << Mage
    .goto Ironforge,23.131,6.143,12 >>Travel toward |cRXP_FRIENDLY_Brandur Ironhammer|r << Paladin
step << Mage
    #xprate <1.5
    .goto Ironforge,27.17,8.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r inside
    .train 122 >> Train your class spells
    .target Dink
--XX Alternative mage train if they didn't get 10 in Goldshire
step << Paladin
    #xprate <1.5
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r inside
    .train 633 >> Train your class spells
    .target Brandur Ironhammer
--XX Alternative paladin train if they didn't get 10 in Goldshire
step << Mage/Paladin
    #xprate <1.5
    #ssf
    #optional
    .goto 1455,25.238,10.965,-1
    .goto 1455,24.300,8.708,-1
    .zone Dun Morogh >>|cRXP_WARN_Jump on top of either pillar above |cRXP_FRIENDLY_Toldren Deepiron|r or |cRXP_FRIENDLY_Braenna Flintcrag|r, position your character until it looks like they're floating, then perform a Logout Skip by logging out and back in|r
    .isQuestAvailable 314
    .train 122,3 << Mage
    .train 633,3 << Paladin
step
    #ah
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>Buy the following items for a faster turn in at Loch Modan shortly
    >>This will save you time as you won't need to run around looking for mobs to kill. Skip this step if you wish to not buy any
    >>|T134342:0|t[Boar Intestines]
    >>|T134027:0|t[Bear Meat]
    >>|T134437:0|t[Spider Ichor]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .zoneskip Dun Morogh
step
    #ah
    #optional
    .goto 1455,33.220,64.649
    .zone Dun Morogh >>|cRXP_WARN_Jump onto the very top of the |cRXP_PICK_Mailbox|r, then perform a Logout Skip by logging out and back in|r
    .isQuestAvailable 314
step
    #optional
    #label Dirt
    #completewith Rudra
    .goto Dun Morogh,59.84,49.56,40,0
    .goto Dun Morogh,61.36,47.07,40 >>Go up the dirt path
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    +|cRXP_WARN_Kite |cRXP_ENEMY_Vagash|r down to|r |cRXP_FRIENDLY_Rudra|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_CLICK HERE If you're struggling|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Click here for video reference|r << !Mage
    .mob Vagash
step
    #label Rudra
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rudra Amberstill|r
    .accept 314 >> Accept Protecting the Herd
    .target Rudra Amberstill
step << Warrior/Rogue
    #optional
    #completewith next
    +|cRXP_WARN_Equip the|r |T135425:0|t[Keen Throwing Knives]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step
    .goto Dun Morogh,62.6,46.1
    >>Kill |cRXP_ENEMY_Vagash|r. Loot him for his |cRXP_LOOT_Fang|r
    >>|cRXP_WARN_Kite him to the guard south of the ranch. Make sure you do 51%+ damage to him|r
    >>|cRXP_WARN_Watch the video below before you attempt to kill |cRXP_ENEMY_Vagash|r. It can be solo'd on any class|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >> |cRXP_WARN_Click here for video reference|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Click here for video reference|r << !Mage
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rudra Amberstill|r
    .turnin 314 >> Turn in Protecting the Herd
    .target Rudra Amberstill
step
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cook Ghilm|r
    .train 2550 >> Train |T133971:0|t[Cooking]
    .target Cook Ghilm
step
    .goto Dun Morogh,68.614,54.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor >> |cRXP_BUY_Buy|r |T133968:0|t[Freshly Baked Bread] |cRXP_BUY_if needed|r << Warrior/Rogue
    .vendor >> |cRXP_BUY_Buy|r |T133968:0|t[Freshly Baked Bread] |cRXP_BUY_and|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_if needed|r << !Warrior !Rogue
    .target Kazan Mogosh
step << Rogue
    #completewith QuarryEnd
    #label RogueWep
    .goto 1426,68.866,55.958,8,0
    .goto 1426,69.002,55.896
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frast Dokner|r
    >>|cRXP_WARN_Buy a|r |T135321:0|t[Gladius] |cRXP_WARN_from him|r
    .collect 2488,1 --Collect Gladius (1)
    .target Frast Dokner
    .money <0.0482
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.4
--XX Shows if you didn't get a cutlass or better wep earlier
step << Rogue
    #optional
    #completewith QuarryEnd
    #requires RogueWep
    #label Gladius
    .equip 16,2488 >> |cRXP_WARN_Equip the|r |T135321:0|t[Gladius] |cRXP_WARN_in your mainhand|r
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.4
step << Rogue
    #optional
    #completewith QuarryEnd
    #requires Gladius
    .equip 17,2494 >> |cRXP_WARN_Equip the|r |T135641:0|t[Stiletto] |cRXP_WARN_in your offhand|r
    .use 2494
    .itemcount 2494,1
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senator Mehr Stonehallow|r and |cRXP_FRIENDLY_Foreman Stonebrow|r
    .accept 433 >> Accept The Public Servant
    .goto Dun Morogh,68.671,55.969
    .target +Senator Mehr Stonehallow
    .accept 432 >> Accept Those Blasted Troggs!
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
step
    #xprate >1.49
    .goto Dun Morogh,69.084,56.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Stonebrow|r
    .accept 432 >> Accept Those Blasted Troggs!
    .target Foreman Stonebrow
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,69.324,55.456
    #requires RogueWep << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dank Drizzlecut|r
    .train 2575 >>Train |T134708:0|t[Mining]
    >>|cRXP_WARN_This is used in conjunction with|r |T136241:0|t[Blacksmithing] |cRXP_WARN_to make|r |T135248:0|t[Rough Sharpening Stones] |cRXP_WARN_and|r |T135255:0|t[Rough Weightstones] |cRXP_WARN_to increase your weapon damage|r
    >>|cRXP_WARN_If you don't want to do this, skip this step|r
    .target Dank Drizzlecut
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    #completewith QuarryEnd
    .cast 2580 >> |cRXP_WARN_Cast|r |T136025:0|t[Find Minerals]
    .usespell 2580
    .train 2575,3 --Mining
step
    #xprate <1.5
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39,25,0
    .goto Dun Morogh,70.7,56.4
    >>Kill |cRXP_ENEMY_Rockjaw Skullthumpers|r and |cRXP_ENEMY_Rockjaw Bonesnappers|r inside the cave
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob Rockjaw Skullthumper
    .mob Rockjaw Bonesnapper
step
    #xprate >1.49
    .goto Dun Morogh,70.49,58.35,50,0
    .goto Dun Morogh,68.23,59.37,50,0
    .goto Dun Morogh,70.49,58.35
    >>Kill |cRXP_ENEMY_Rockjaw Skullthumpers|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #xprate <1.5
    #label QuarryEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Stonebrow|r and |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .turnin 432 >> Turn in Those Blasted Troggs!
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
    .turnin 433 >> Turn in The Public Servant
    .goto Dun Morogh,68.671,55.969
    .target +Senator Mehr Stonehallow
step
    #xprate >1.49
    #label QuarryEnd
    .goto Dun Morogh,69.084,56.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Stonebrow|r
    .turnin 432 >> Turn in Those Blasted Troggs!
    .target Foreman Stonebrow
step
    .goto Dun Morogh,68.614,54.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor >> |cRXP_WARN_Vendor trash|r << !Priest !Warlock !Mage
    .vendor >> |cRXP_BUY_Buy 20|r |T132815:0|t[Ice Cold Milk] << Priest/Warlock/Mage
    .target Kazan Mogosh
step
    .goto Dun Morogh,81.2,42.7,45,0
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .accept 419 >> Accept The Lost Pilot
    .target Pilot Hammerfoot
step
    .goto Dun Morogh,79.672,36.171
    >>Click the |cRXP_PICK_Dwarven Corpse|r on the ground
    .turnin 419 >> Turn in The Lost Pilot
    .accept 417 >> Accept A Pilot's Revenge
step << Mage
    #season 2
    #completewith next
    >>Kill |cRXP_ENEMY_Mangeclaw|r. Loot him for the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: RING SEFF OSTROF|r]
    .collect 203753,1 -- Spell Notes: RING SEFF OSTROF (1)
    .train 401765,1
step
    >>Kill |cRXP_ENEMY_Mangeclaw|r. Loot him for his |cRXP_LOOT_Claw|r
    .goto Dun Morogh,78.97,37.14
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step << Mage
    #season 2
    #completewith enterloch
    .collect 211779,1 >>You need a |T135933:0|t[Comprehension Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: RING SEFF OSTROF|r]
    .train 401765 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: RING SEFF OSTROF|r] |cRXP_WARN_to train|r |T236227:0|t[Fingers of Frost]
    .use 203753
step
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .turnin 417,1 >> Turn in A Pilot's Revenge << Rogue
    .turnin 417 >> Turn in A Pilot's Revenge << !Rogue
    .target Pilot Hammerfoot
step << Rogue
    #optional
    #completewith next
    +|cRXP_WARN_Equip the|r |T135641:0|t[Craftsman's Dagger] |cRXP_WARN_in your offhand|r
    .use 2218
    .itemcount 2218,1
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step
    #label enterloch
    .goto Dun Morogh,84.4,31.1,25 >>Go through the tunnel to Loch Modan
    .zoneskip Loch Modan
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#name 11-13 Loch Modan
#version 1
#group RestedXP Alliance 1-20
#defaultfor Human
#next 13-15 Westfall; 14-16 Darkshore

step
    #completewith next
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>|cRXP_WARN_Vendor and repair if needed|r
    .target Gothor Brumn
step
    .goto Loch Modan,24.764,18.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    >>|cRXP_WARN_Do not accept Stormpike's Order yet|r
    .turnin 353 >> Turn in Stormpike's Delivery
    .accept 307 >> Accept Filthy Paws
    .target Mountaineer Stormpike
step
    #completewith ThelsamarFirst
    >>Kill |cRXP_ENEMY_Elder Black Bears|r. Loot them for their |cRXP_LOOT_Bear Meat|r
    >>Kill |cRXP_ENEMY_Mountain Boars|r. Loot them for their |cRXP_LOOT_Boar Intestines|r
    >>Kill |cRXP_ENEMY_Forest Lurkers|r. Loot them for their |cRXP_LOOT_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    >>|cRXP_WARN_Save any|r |T133970:0|t[Chunks of Boar Meat] |cRXP_WARN_to use for leveling |T133971:0|t[Cooking] |cRXP_WARN_later|r
    .mob Elder Black Bear
    .mob Mountain Boar
    .mob Forest Lurker
step
    #completewith next
    .goto Loch Modan,34.828,49.283,130 >> Travel to Thelsamar
step
    #label ThelsamarFirst
    .goto Loch Modan,34.828,49.283
    .target Vidra Hearthstove
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vidra Hearthstove|r
    .accept 418 >> Accept Thelsamar Blood Sausages
step
    #optional
    .isQuestComplete 418
    .goto Loch Modan,34.828,49.283
    .target Vidra Hearthstove
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vidra Hearthstove|r
    .turnin 418 >> Turn in Thelsamar Blood Sausages
step
    #competewith StormpikeO
    .abandon 1338 >> Abandon Stormpike's Order. This is to unlock Mountaineer Stormpike's Task which will give a free 550xp turn in
step
    #completewith next
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yanni Stoutheart|r
    .vendor >> |cRXP_WARN_Buy 1 or 2|r |T133634:0|t[Small Brown Pouches] |cRXP_WARN_if needed|r
    .target Yanni Stoutheart
step
    #label StormpikeO
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Hearthstove|r
    .vendor 6734 >> |cRXP_BUY_Buy|r |T133968:0|t[Freshly Baked Bread]|cRXP_BUY_. Aim to have about 20|r << Warrior/Rogue
    .vendor 6734 >> |cRXP_BUY_Buy|r |T133968:0|t[Freshly Baked Bread] |cRXP_BUY_and|r |T132815:0|t[Ice Cold Milk]|cRXP_BUY_. Aim to have about 10|r |T133968:0|t[Freshly Baked Bread] |cRXP_BUY_and 20|r |T132815:0|t[Ice Cold Milk] << !Warrior !Rogue
    .target Innkeeper Hearthstove
step
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .goto Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_FRIENDLY_Mountaineer Kadrell|r |cRXP_WARN_patrols the road through Thelsamar|r
    .accept 416 >> Accept Rat Catching
    .accept 1339 >> Accept Mountaineer Stormpike's Task
    .target Mountaineer Kadrell
step << Rogue
    #season 2
    #completewith LochModanDam
    >>Kill |cRXP_ENEMY_Elder Black Bears|r. Loot them for their |cRXP_LOOT_Bear Meat|r
    >>Kill |cRXP_ENEMY_Mountain Boars|r. Loot them for their |cRXP_LOOT_Boar Intestines|r
    >>Kill |cRXP_ENEMY_Forest Lurkers|r. Loot them for their |cRXP_LOOT_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob Elder Black Bear
    .mob Mountain Boar
    .mob Forest Lurker
    .subzoneskip 146
    .train 424785,1
step << Rogue
    #season 2
    #completewith LochModanDam
    >>Kill |cRXP_ENEMY_Tunnel Rats|r. Loot them for their |cRXP_LOOT_Ears|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
    .subzoneskip 146
    .train 424785,1
step << Rogue
    #season 2
    #label LochModanDam
    #completewith next
    .goto Loch Modan,41.01,12.60,50,0
    .goto Loch Modan,42.86,10.36,60,0
    .goto Loch Modan,46.20,13.15,10 >> |cRXP_WARN_Make your way onto the Loch Modan Dam wall and carefully drop down onto the ledge in the center of the Dam. Follow the arrow|r
    .train 424785,1
step << Rogue
    #season 2
    .goto Loch Modan,46.373,12.666
    >>Open the |cRXP_PICK_Stonemason's Toolbox|r on the ledge. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Saber Slash|r]
    .collect 208772,1 -- Rune of Saber Slash (1)
    .train 424785,1
step << Rogue
    #season 2
    .cast 402265 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Saber Slash|r]
    .use 208772 -- Rune of Saber Slash (1)
    .itemcount 208772,1
    .train 424785,1
step << Rogue
    #season 2
    .goto Loch Modan,45.823,12.652
    .cast 6477 >> Click the |cRXP_PICK_Escape Rope|r to return to the top
    .subzoneskip 146,1
step
    #completewith StormpikeDelivery
    >>Kill |cRXP_ENEMY_Elder Black Bears|r. Loot them for their |cRXP_LOOT_Bear Meat|r
    >>Kill |cRXP_ENEMY_Mountain Boars|r. Loot them for their |cRXP_LOOT_Boar Intestines|r
    >>Kill |cRXP_ENEMY_Forest Lurkers|r. Loot them for their |cRXP_LOOT_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob Elder Black Bear
    .mob Mountain Boar
    .mob Forest Lurker
step
    #completewith MinerGear
    .goto Loch Modan,35.50,18.97,20 >> Enter the Silver Stream Mine
step
    #completewith next
    >>Kill |cRXP_ENEMY_Tunnel Rats|r. Loot them for their |cRXP_LOOT_Ears|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #label MinerGear
    .goto Loch Modan,35.93,22.55
    >>Open the |cRXP_PICK_Miners' League Crates|r. Loot them for the |cRXP_LOOT_Miners' Gear|r
    >>|cRXP_WARN_The |cRXP_PICK_Miners' League Crates|r can be found all throughout the Mine|r
    >>|cRXP_WARN_You will be able to do this quest at a higher level if you wish to skip it for now|r
    .complete 307,1 -- Miners' Gear (4)
step << Paladin/Warrior
    .goto Loch Modan,42.867,9.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nillen Andemar|r
    .vendor >>|cRXP_FRIENDLY_Nillen Andemar|r |cRXP_WARN_sells|r |T133476:0|t[|cRXP_FRIENDLY_Heavy Spiked Mace|r] |cRXP_WARN_which is a limited supply item|r
    >>|cRXP_WARN_Check to see if it's available and buy it if you can. If you can't afford it, then grind money from the nearby |cRXP_ENEMY_Tunnel Rats|r until you have enough|r
    >>|cRXP_WARN_Do this quickly as another player may purchase it before you do|r
    .target Nillen Andemar
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step
    #xprate <1.5
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82,50,0
    .goto Loch Modan,25.05,30.19,50,0
    .goto Loch Modan,26.06,43.44,50,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82
    >>Kill |cRXP_ENEMY_Tunnel Rats|r. Loot them for their |cRXP_LOOT_Ears|r
    >>|cRXP_WARN_Ensure you have 10|r |T132889:0|t[Linen Cloth] |cRXP_WARN_for your upcoming Paladin class quest|r << Paladin
    >>|cRXP_ENEMY_Tunnel Rats|r |cRXP_WARN_can spawn throughout Loch Modan. Check your World Map for their locations|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .collect 2589,10,1644,1,1 << Human Paladin -- Linen Cloth (10)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #xprate >1.49
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82,50,0
    .goto Loch Modan,25.05,30.19,50,0
    .goto Loch Modan,26.06,43.44,50,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82
    >>Kill |cRXP_ENEMY_Tunnel Rats|r. Loot them for their |cRXP_LOOT_Ears|r
    >>|cRXP_ENEMY_Tunnel Rats|r |cRXP_WARN_can spawn throughout Loch Modan. Check your World Map for their locations|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #completewith StormpikeDelivery
    #label StormpikeStop
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>|cRXP_WARN_Vendor and repair if needed|r
    .target Gothor Brumn
step
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 307 >> Turn in Filthy Paws
    .target Mountaineer Stormpike
step
    #label StormpikeDelivery
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 1339 >> Turn in Mountaineer Stormpike's Task
    .accept 1338 >> Accept Stormpike's Order
    .target Mountaineer Stormpike
step
    >>Kill |cRXP_ENEMY_Elder Black Bears|r. Loot them for their |cRXP_LOOT_Bear Meat|r
    >>Kill |cRXP_ENEMY_Mountain Boars|r. Loot them for their |cRXP_LOOT_Boar Intestines|r
    >>Kill |cRXP_ENEMY_Forest Lurkers|r. Loot them for their |cRXP_LOOT_Ichor|r
    .collect 3173,3,418,1 --Bear Meat (3)
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7
    .collect 3172,3,418,1 --Boar Intestines (3)
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9
    .collect 3174,3,418,1 --Spider Ichor (3)
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4
    .mob Elder Black Bear
    .mob Mountain Boar
    .mob Forest Lurker
step << Mage
    #xprate >1.49
    #season 2
    #optional
    #completewith next
    .goto 1432,48.674,28.861,100 >> Swim toward the Trogg Islands
step << Mage
    #xprate >1.49
    #season 2
    #loop
    #sticky
    #label LivingBombDelightStart
    .goto 1432,48.809,29.478,0
    .goto 1432,51.023,23.248,0
    .goto 1432,46.690,22.160,0
    .goto 1432,48.809,29.478,55,0
    .goto 1432,49.667,29.911,55,0
    .goto 1432,50.329,26.936,55,0
    .goto 1432,51.023,23.248,55,0
    .goto 1432,49.194,20.722,55,0
    .goto 1432,48.081,20.937,55,0
    .goto 1432,46.690,22.160,55,0
    >>Kill |cRXP_ENEMY_Stonesplinter Seers|r. Loot them for the |T134939:0|t|cRXP_LOOT_[Chewed Spell Notes]|r
    .collect 208854,1 --Chewed Spell Notes (1)
    .mob Stonesplinter Seer
    .train 415936,1
step << Mage
    #xprate >1.49
    #season 2
    #requires LivingBombDelightStart
    #label LivingBombDelightEnd
    #completewith DefenseStart
    .train 415936 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Chewed Spell Notes|r] |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Living Bomb]
    .use 208854
step << Mage
    #xprate >1.49
    #season 2
    #optional
    #completewith next
    .goto 1432,54.33,26.82,5 >> Enter the tent
    .train 401767,1
step << Mage
    #xprate >1.49
    #season 2
    #sticky
    #label Tengi
    .goto 1432,54.33,26.82,5,0
    .goto 1432,54.17,27.03
    >>Open the |cRXP_PICK_Pile of Stolen Books|r inside. Loot them for the |T134939:0|t|cRXP_LOOT_[Spell Notes: TENGI RONEERA]|r
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .train 401767,1
step << Mage
    #xprate >1.49
    #season 2
    #requires Tengi
    #label TengiEnd
    .train 401767 >>|cRXP_WARN_Use the|r |T134939:0|t|cRXP_LOOT_[Spell Notes: TENGI RONEERA]|r |cRXP_WARN_to learn|r |T133815:0|t[Engrave Chest - Regeneration]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
step << Mage
    #xprate >1.49
    #season 2
    #optional
    #requires TengiEnd
    --XXREQ Placeholder invis step
step << Mage
    #xprate >1.49
    #season 2
    #optional
    #requires LivingBombDelightEnd
    --XXREQ Placeholder invis step
step
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .goto Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_FRIENDLY_Mountaineer Kadrell|r |cRXP_WARN_patrols the road through Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >> Turn in Rat Catching
step
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vidra Hearthstove|r
    .turnin 418 >> Turn in Thelsamar Blood Sausages
    .target Vidra Hearthstove
step
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yanni Stoutheart|r
    >>|cRXP_WARN_Buy a|r |T135237:0|t[Flint and Tinder] |cRXP_WARN_along with 2|r |T135435:0|t[Simple Wood]|cRXP_WARN_. Buy any|r|T133634:0|t[Small Brown Pouches] |cRXP_WARN_if needed|r
    .collect 4470,1 --Simple Wood (2)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >> Get the Thelsamar flight path
    .target Thorgrum Borrelson
step
    #completewith next
    .goto Loch Modan,24.78,70.17,10,0
    .goto Loch Modan,23.73,75.52,15 >> Run up the dirt path then drop down into the bunker
step
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rugelfuss|r in the bunker
    .target Captain Rugelfuss
    .accept 267 >> Accept The Trogg Threat
step
    #label DefenseStart
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .accept 224 >> Accept In Defense of the King's Lands
    .target Mountaineer Cobbleflint
step << Warrior
    #season 2
    #completewith next
    >>Kill |cRXP_ENEMY_Troggs|r. Loot them for a |cRXP_LOOT_Skull-Shaped Geode|r
    .collect 208847,1 -- Skull-Shaped Geode (1)
    .mob Stonesplinter Scout
    .mob Stonesplinter Trogg
    .train 425443,1
step
    #xprate <1.5
    .goto Loch Modan,27.33,56.70
    >>Kill |cRXP_ENEMY_Stonesplinter Troggs|r and |cRXP_ENEMY_Stonesplinter Scouts|r. Loot them for their |cRXP_LOOT_Teeth|r
    >>|cRXP_WARN_Ensure you have 10|r |T132889:0|t[Linen Cloth] |cRXP_WARN_for your upcoming Paladin class quest|r << Paladin
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .collect 2589,10,1644,1,1 << Human Paladin -- Linen Cloth (10)
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step
    #xprate >1.49
    .goto Loch Modan,27.33,56.70
    >>Kill |cRXP_ENEMY_Stonesplinter Troggs|r and |cRXP_ENEMY_Stonesplinter Scouts|r. Loot them for their |cRXP_LOOT_Teeth|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step << Warlock
    #xprate <1.5
    #completewith TroggT
    .goto Loch Modan,27.33,56.70,0
    +Grind |cRXP_ENEMY_Troggs|r until you have 75s 79c worth of vendor trash/money
    .money >0.7579
step << Warlock
    #xprate >1.49
    #completewith TroggT
    .goto Loch Modan,27.33,56.70,0
    +Grind |cRXP_ENEMY_Troggs|r until you have 42s 39c worth of vendor trash/money
    .money >0.4239
step << Warlock
    #xprate <1.5
    .goto Loch Modan,27.33,56.70
    .xp 13+9600 >>Grind until 9600+/11400xp
step << Warlock
    #optional
    #xprate >1.49
    .goto Loch Modan,27.33,56.70
    .xp 13+8700 >>Grind until 8700+/11400xp
step << Mage
    #xprate <1.5
    #season 2
    .goto Loch Modan,29.2,81.2,50,0
    .goto Loch Modan,28.8,83.4,50,0
    .goto Loch Modan,30.0,83.8,50,0
    .goto Loch Modan,32.2,87.2,50,0
    .goto Loch Modan,33.8,88.6,50,0
    .goto Loch Modan,36.0,88.0,50,0
    .goto Loch Modan,36.6,81.2,50,0
    .goto Loch Modan,36.6,79.6
    >>Kill |cRXP_ENEMY_Stonesplinter Seers|r. Loot them for the |T134939:0|t[|cRXP_FRIENDLY_Chewed Spell Notes]|r
    .collect 208854,1
    .mob Stonesplinter Seer
    .train 415936,1
step << Mage
    #xprate <1.5
    #season 2
    #completewith HumbleBeginnings
    .collect 211779,1 >>You need a |T135933:0|t[Comprehension Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use the |T134939:0|t[|cRXP_FRIENDLY_Chewed Spell Notes]|r
    .train 415936 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Chewed Spell Notes|r] |cRXP_WARN_to train|r |T236220:0|t[Living Bomb]
    .use 208854
step << Warrior
    #season 2
    .goto Loch Modan,33.2,73.8
    >>Kill a |cRXP_ENEMY_Stonesplinter Skullthumper|r
    >>|cRXP_WARN_During combat it'll give you a nice thumpin' which will turn the |cRXP_LOOT_Skull-Shaped Geode|r into a|r |T236489:0|t[|cRXP_LOOT_Cracked Skull-Shaped Geode|r]
    .collect 208848,1 -- Cracked Skull-Shaped Geode (1)
    .mob Stonesplinter Skullthumper
    .train 425443,1
step << Warrior
    #season 2
    .use 208848 >>|cRXP_WARN_Use the|r |T236489:0|t[|cRXP_LOOT_Cracked Skull-Shaped Geode|r] |cRXP_WARN_to receive the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Strike|r]
    .collect 208778,1 -- Rune of Quick Strike (1)
    .train 425443,1
step << Warrior
    #season 2
    .train 425443 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Strike|r] |cRXP_WARN_to train|r |T132394:0|t[Quick Strike]
    .use 208778
    .itemcount 208778,1
step
    #optional
    .goto Loch Modan,27.33,56.70
    +Continue grinding |cRXP_ENEMY_Troggs|r until you have <1 minute on your |T134414:0|t[Hearthstone]
    .cooldown item,6948,<60
step
    #optional
    #completewith next
    .goto Loch Modan,24.78,70.17,10,0
    .goto Loch Modan,23.73,75.52,15 >> Run up the dirt path then drop down into the bunker
step
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rugelfuss|r
    .turnin 267 >> Turn in The Trogg Threat
    .target Captain Rugelfuss
step
    #label TroggT
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .turnin 224 >> Turn in In Defense of the King's Lands
    .target Mountaineer Cobbleflint
step << Warlock
    .goto Loch Modan,27.33,56.70
    .xp 14 >> Grind to 14
step
    #xprate >1.49
    #completewith HumbleBeginnings
    .hs >> Hearth to Ironforge
    .zoneskip Ironforge
step
    #xprate <1.5
    #completewith HumbleBeginnings
    .hs >> Hearth to Stormwind City
    .zoneskip Stormwind City
--XX Start of <1.5x section
step << Warlock/Priest
    #xprate <1.5
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ardwyn Cailen|r
    >>|cRXP_BUY_Buy a|r |T135468:0|t[Smoldering Wand] |cRXP_BUY_from her|r
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    .collect 5208,1 --Smoldering Wand (1)
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
step << Warlock/Priest
    #xprate <1.5
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ardwyn Cailen|r
    >>|cRXP_BUY_Buy a|r |T135468:0|t[Smoldering Wand] |cRXP_BUY_from her or check the Auction House for a|r |T135144:0|t[Greater Magic Wand]
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    .collect 5208,1 --Smoldering Wand (1)
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    --not adding .money tag to this step. user could have less silver than vendor wand but cheaper ones may exist on the AH
step << Warlock/Priest
    #xprate <1.5
    #optional
    #completewith next
    +|cRXP_WARN_Equip the|r |T135468:0|t[Smoldering Wand]
    .use 5208
    .itemcount 5208,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp <15,1
step << Warlock/Priest
    #xprate <1.5
    #optional
    #completewith next
    +|cRXP_WARN_Remember to equip the|r |T135468:0|t[Smoldering Wand] |cRXP_WARN_later when you reach level 15|r
    .use 5208
    .itemcount 5208,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp >15,1
step << Warlock
    #xprate <1.5
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Travel to The Slaughtered Lamb and go downstairs
step << Warlock
    #xprate <1.5
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Train your class spells
    .target Ursula Deline
step << Warlock
    #xprate <1.5
    .goto StormwindClassic,25.665,77.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spackle Thornberry|r
    .vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoire of Consume Shadows (Rank 1)] |cRXP_BUY_and|r |T133738:0|t[Grimoire of Sacrifice (Rank 1)] |cRXP_BUY_if you can afford it|r
    .target Spackle Thornberry
step << Mage
    #xprate <1.5
    #optional
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >> Travel to the Mage Tower
step << Mage
    #xprate <1.5
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Train your class spells
    .target Elsharin
step << Priest/Paladin
    #xprate <1.5
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Human Paladin
    #xprate <1.5
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
    .accept 1641 >> Accept The Tome of Divinity
    .turnin 1641 >> Turn in The Tome of Divinity
    .target Duthorian Rall
step << Human Paladin
    #xprate <1.5
    .goto StormwindClassic,39.80,29.77
    >>|cRXP_WARN_Use the |T133464:0|t[|cRXP_LOOT_The Tome of Divinity|r] to start the quest|r
    .accept 1642 >>Accept The Tome of Divinity
    .use 6775
step << Human Paladin
    #xprate <1.5
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1642 >>Turn in The Tome of Divinity
    .accept 1643 >>Accept The Tome of Divinity
    .target Duthorian Rall
step << Paladin
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    .trainer >> Train your class spells
    .target Arthur the Faithful
step << Paladin
    #xprate <1.5
    #season 2
    .goto StormwindClassic,38.10,28.10
    .gossipoption 109653 >>Talk to |cRXP_FRIENDLY_Brother Romulus|r
    .target Brother Romulus
    .skipgossip
    .train 410015,1
step << Paladin
    #xprate <1.5
    #season 2
    #optional
    #completewith next
    .goto StormwindClassic,37.39,29.76,5,0
    .goto StormwindClassic,37.87,29.10,5,0
    .goto StormwindClassic,36.52,32.67,8,0
    .goto StormwindClassic,36.55,33.45,8,0
    .goto StormwindClassic,35.95,34.05,8,0
    .goto StormwindClassic,35.46,33.03,8,0
    .goto StormwindClassic,35.95,31.54,8,0
    .goto StormwindClassic,34.79,29.31,8,0
    .goto StormwindClassic,33.69,29.69,8,0
    .goto StormwindClassic,32.57,27.49,8,0
    .goto StormwindClassic,33.41,25.61,8,0
    >>Go downstairs into the western side of the Cathedral's Crypt
    .goto StormwindClassic,32.86,24.77,8 >>Travel toward the |cRXP_LOOT_Charred Note|r in the crypt
    .train 410015,1
step << Paladin
    #xprate <1.5
    #season 2
    .goto StormwindClassic,32.86,24.87
    >>Loot the |cRXP_LOOT_Charred Note|r next to the candles
    .collect 205864,1 --Charred Note (1)
    .train 410015,1
step << Priest
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r
    .goto StormwindClassic,38.54,26.86
    .trainer >> Train your class spells
    .target Brother Joshua
step << Warrior
    #xprate <1.5
    #season 2
    .gossipoption 109045 >> Talk to |cRXP_FRIENDLY_Liv Bradford|r inside the Inn at the Park
    .gossipoption 109047
    .goto Stormwind City,22.608,64.621
    .gossipoption 109084 >> Talk to |cRXP_ENEMY_Stuart|r, then beat him up. He will pass out at 0%
    .goto Stormwind City,21.213,62.781
    >>If |cRXP_ENEMY_Stuart|r is not there wait for him to respawn
    .gossipoption 109044 >> Talk to |cRXP_FRIENDLY_Liv Bradford|r again after knocking out |cRXP_ENEMY_Stuart|r to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault|r]
    .goto Stormwind City,22.608,64.621
    .train 425447,1 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault|r] |cRXP_WARN_to train|r |T236317:0|t[Frenzied Assault]
    .use 204716
    .target Liv Bradford
    .mob Stuart
step
    #xprate <1.5
    #label HumbleBeginnings
    .goto StormwindClassic,49.194,30.284
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
    .accept 399 >> Accept Humble Beginnings
    .target Baros Alexston
step
    #xprate <1.5
    .goto StormwindClassic,58.091,16.552
    .target Furen Longbeard
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furen Longbeard|r
    .turnin 1338 >> Turn in Stormpike's Order
step << Rogue
    #xprate <1.5
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
    .trainer >> Train your class spells
    .target Osborne the Night Man
step << Warrior
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Train your class spells
    .target Wu Shen
    .target Ilsa Corbin
step << Human Paladin
    #xprate <1.5
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stephanie Turner|r
    .turnin 1643 >> Turn in The Tome of Divinity
    .target Stephanie Turner
    .accept 1644 >> Accept The Tome of Divinity
    .turnin 1644 >> Turn in The Tome of Divinity
    --.accept 1780 >> Accept The Tome of Divinity
step << Rogue
    #xprate <1.5
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Buy 2|r |T135343:0|t[Scimitars] |cRXP_BUY_if you can afford it or something better from the Auction House|r
    >>|cRXP_WARN_Equip them both once you're level 14|r
    .collect 2027,2 --Scimitar
    .target Marda Weller
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #xprate <1.5
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Buy 2|r |T135343:0|t[Scimitars] |cRXP_BUY_if you can afford it|r
    >>|cRXP_WARN_Equip them both once you're level 14|r
    .collect 2027,2 --Scimitar
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << Rogue
    #xprate <1.5
    #optional
    #completewith next
    +|cRXP_WARN_Equip the|r |T135343:0|t[Scimitar]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step
    #xprate <1.5
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Buy the following items for faster turn ins at Westfall and Darkshore shortly
    >>This will save you time as you won't need to run around looking for mobs to kill. Skip this step if you wish to not buy any
    >>|T133972:0|t[Stringy Vulture Meat]
    >>|T133884:0|t[Murloc Eye]
    >>|T135997:0|t[Goretusk Snout]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Goretusk Liver]
    >>|T133972:0|t[Strider Meat]
    >>|T133912:0|t[Darkshore Grouper]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
step
    #xprate <1.5
    .goto StormwindClassic,66.28,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .turnin 6261 >> Turn in Dungar Longdrink
    .accept 6285 >> Accept Return to Lewis
    .target Dungar Longdrink
step
    #xprate <1.5
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Westfall >> Fly to Westfall
    .target Dungar Longdrink
--XX End of <1.5x section
----Darkshore transit (>1.49x)----
step << Mage
    #xprate >1.49
    .goto Ironforge,26.295,6.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Juli Stormkettle|r
    .trainer >> Train your class spells
    .target Juli Stormkettle
step << Mage/Priest/Warlock
    #xprate >1.49
    #ah
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>|cRXP_BUY_Buy a|r |T135144:0|t[Greater Magic Wand] |cRXP_BUY_if it costs less than 33s 40c|r
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    .collect 11288,1 --Greater Magic Wand (1)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .money <0.7579 << Warlock/Mage
step << Mage/Priest/Warlock
    #xprate >1.49
    #ah
    #optional
    +|cRXP_WARN_Equip the|r |T135144:0|t[Greater Magic Wand]
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step << Priest/Warlock
    #xprate >1.49
    #optional
    .goto Ironforge,22.837,17.094,8,0
    .goto Ironforge,21.131,17.276,5,0
    .goto Ironforge,23.135,15.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harick Boulderdrum|r downstairs
    >>|cRXP_BUY_Buy a|r |T135468:0|t[Smoldering Wand] |cRXP_BUY_from him|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Harick Boulderdrum
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .money <0.7579 << Warlock
step << Priest/Warlock
    #xprate >1.49
    #optional
    #completewith next
    +|cRXP_WARN_Equip the|r |T135468:0|t[Smoldering Wand]
    .use 5208
    .itemcount 5208,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp <15,1
step << Priest/Warlock
    #xprate >1.49
    #optional
    #completewith next
    +|cRXP_WARN_Remember to equip the|r |T135468:0|t[Smoldering Wand] |cRXP_WARN_later when you reach level 15|r
    .use 5208
    .itemcount 5208,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp >15,1
step
    #xprate >1.49
    #ah
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>|cRXP_WARN_Buy the following items for instant turn ins at Darkshore shortly:|r
    >>|T133972:0|t[Strider Meat]
    >>|T133912:0|t[Darkshore Grouper]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    >>|cRXP_WARN_If you don't want to do this, skip this step|r
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
step << Rogue
    #xprate >1.49
    #ah
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brenwyn Wintersteel|r down stairs
    +|cRXP_BUY_Buy and equip a|r |T135343:0|t[Scimitar] |cRXP_BUY_if you can afford it or buy something better from the Auction House|r
    .target Brenwyn Wintersteel
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #xprate >1.49
    #ssf
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brenwyn Wintersteel|r down stairs
    +|cRXP_BUY_Buy and equip a|r |T135343:0|t[Scimitar] |cRXP_BUY_if you can afford it|r
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Brenwyn Wintersteel
step << Rogue
    #xprate >1.49
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brenwyn Wintersteel|r down stairs
    >>|cRXP_BUY_Buy a|r |T135425:0|t[Keen Throwing Dagger] |cRXP_BUY_from her|r
    .collect 3107,100 -- Keen Throwing Dagger
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #xprate >1.49
    #optional
    #completewith next
    +|cRXP_WARN_Equip the|r |T135425:0|t[Keen Throwing Dagger]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Warrior
    #xprate >1.49
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilban Tosslespanner|r
    .trainer >> Train your class spells
    .target Bilban Tosslespanner
step << Warlock
    #xprate >1.49
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r
    .trainer >> Train your class spells
    .target Briarthorn
step << Warlock
    #xprate >1.49
    .goto Ironforge,53.2,7.8,15,0
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jubahl Corpseseeker|r
    .vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoire of Consume Shadows (Rank 1)] |cRXP_BUY_and|r |T133738:0|t[Grimoire of Sacrifice (Rank 1)] |cRXP_BUY_if you can afford it|r
    .target Jubahl Corpseseeker
step << Gnome Rogue/Dwarf Rogue
    #xprate >1.49
    #optional
    .goto Ironforge,51.958,14.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hulfdan Blackbeard|r downstairs
    .turnin 2218 >> Turn in Road to Salvation
    .target Hulfdan Blackbeard
    .isOnQuest 2218
step << Rogue
    #xprate >1.49
    .goto Ironforge,51.495,15.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fenthwick|r
    .trainer >> Train your class spells
    .target Fenthwick
step << Priest
    #xprate >1.49
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toldren Deepiron|r
    .trainer >> Train your class spells
    .target Toldren Deepiron
step << Paladin
    #xprate >1.49
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r inside
    .trainer >> Train your class spells
    .target Brandur Ironhammer
step << Dwarf/Gnome
    #xprate >1.49
    #softcore
    #completewith DarkshoreBoat
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Wetlands>> Fly to Wetlands
    .target Gryth Thurden
step
    #xprate >1.49
    #optional
    #hardcore << !Human
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>Exit Ironforge
step
    #xprate >1.49
    #hardcore
    #optional
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >> Travel to the Dun Morogh -> Wetlands skip spot
step
    #xprate >1.49
    #hardcore
    .goto Dun Morogh,59.5,42.8,40,0
    .goto Dun Morogh,60.4,44.1,40,0
    .goto Dun Morogh,61.1,44.1,40,0
    .goto Dun Morogh,61.2,42.3,40,0
    .goto Dun Morogh,60.8,40.9,40,0
    .goto Dun Morogh,59.0,39.5,40,0
    .goto Dun Morogh,60.3,38.6,40,0
    .goto Dun Morogh,61.7,38.7,40,0
    .goto Dun Morogh,65.7,21.6,40,0
    .goto Dun Morogh,65.8,12.5,40,0
    .goto Dun Morogh,65.6,10.8,40,0
    .goto Dun Morogh,66.5,10.0,40,0
    .goto Dun Morogh,66.9,8.5,40,0
    .goto Wetlands,20.6,67.2,50,0
    .goto Wetlands,17.7,67.7,40,0
    .goto Wetlands,16.8,65.3,40,0
    .goto Wetlands,15.1,64.0,40,0
    .goto Wetlands,12.1,60.3,40,0
    >>|cRXP_WARN_Watch the video guide for a reference on how to do the skip first!|r
    >>|cRXP_WARN_Do the Deathless Dun Morogh -> Wetlands skip|r
    >>|cRXP_WARN_Avoid the |cRXP_ENEMY_Wetlands Crocolisks|r and |cRXP_ENEMY_Murlocs|r when crossing the water|r
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >> |cRXP_WARN_Click here for a video guide|r
    .goto Wetlands,12.1,60.3,80 >> Travel to Menethil Harbor
    .mob Wetlands Crocolisk
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
step << Human
    #xprate >1.49
    #softcore
    #optional
    #completewith next
    .goto Dun Morogh,30.9,33.1,20 >> Travel to the Dun Morogh -> Wetlands deathskip spot
step << Human
    #xprate >1.49
    #softcore
    #optional
    .goto Dun Morogh,32.4,29.1,20 >> Continue following through the mountain to the deathskip location
step << Human
    #xprate >1.49
    #softcore
    #optional
    .goto Dun Morogh,33.0,27.2,20,0
    .goto Dun Morogh,33.0,25.2,20,0
    .goto Wetlands,11.727,43.306
    .deathskip >> Run straight off the edge to the north and drop down. Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step << Human
    #xprate >1.49
    #softcore
    .goto Wetlands,12.7,46.7,80 >> Swim to Menethil Harbor
step
    #xprate >1.49
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto Wetlands,10.7,56.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neal Allen|r
    .vendor 1448 >> |cRXP_WARN_Buy a|r |T133024:0|t[Bronze Tube]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Neal Allen|r doesn't have one|r
	.target Neal Allen
    .bronzetube
    .money <0.08
step
    #xprate >1.49
    #hardcore << !Human
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei|r
    .fp Wetlands >> Get the Wetlands flight path
    .target Shellei Brondir
step
    #xprate >1.49
    #completewith next
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >> Travel to the Menethil Harbor docks. Wait for the boat to Darkshore
step
    #xprate >1.49
    #label DarkshoreBoat
    .zone Darkshore >> Take the boat to Darkshore
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_and|r |T133971:0|t[Cooking] |cRXP_WARN_while waiting for the boat to Darkshore|r
    >>|cRXP_WARN_Level up your|r |T133971:0|t[Cooking] |cRXP_WARN_using the|r |T133970:0|t[Chunks of Boar Meat] |cRXP_WARN_you farmed earlier. Level it to 10 ideally|r
]])