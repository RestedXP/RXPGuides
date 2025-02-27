local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#name 1-6 Northshire SoD
#displayname 1-6 Northshire
#version 1
#group RestedXP Alliance 1-20
#defaultfor Human
#next 6-12 Elwynn Forest SoD
#season 2


step << !Human
    #completewith next
    +You have selected a guide meant for Humans. You should choose the same starter zone that you start in
step
    #softcore << Warlock
    #optional
    #completewith Within
    .destroy 6948 >> Delete the |T134414:0|t[Hearthstone] from your bags, as it's no longer needed
step
    .goto Elwynn Forest,48.17,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Willem|r
    .accept 783 >> Accept A Threat Within
    .target Deputy Willem
step << Warrior/Rogue/Mage/Warlock
    .goto Elwynn Forest,46.4,40.3
    .xp 2 >>Kill |cRXP_ENEMY_Young Wolves|r until you reach level 2 (4 mobs)
    >>Make sure you loot them, you will need 15c for runes+training << Rogue/Warrior
    >>Make sure you loot them, you will need 30c for gloves and runes << Mage
    >>Make sure you loot them, you will need 40c for bracers, training and runes << Warlock
step << Mage/Warlock
    .goto Elwynn Forest,47.57,41.43
    >>|cRXP_WARN_If you dont have 30 copper worth of trash kill more wolves|r << Mage
    >>|cRXP_WARN_If you dont have 40 copper worth of trash kill more wolves|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dermot Johns|r
    >>|cRXP_WARN_MAKE SURE NOT TO VENDOR GEAR THAT CAN BE EQUIPPED|r
    >>Vendor trash and buy the |T132952:0|t[Thin Cloth Gloves], you will need them to engrave a rune on soon << Mage
    >>Vendor trash and buy the |T132602:0|t[Thin Cloth Bracers], you will need them to engrave a rune on soon << Warlock
    .collect 2119,1 << Mage --Thin Cloth Gloves (1)
    .collect 3600,1 << Warlock --Thin Cloth Bracers (1)
    .target Dermot Johns
step << Warrior/Rogue/Mage/Warlock
    .goto Elwynn Forest,48.22,41.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Rune Broker|r
    >>|cRXP_WARN_MAKE SURE NOT TO VENDOR GEAR THAT CAN BE EQUIPPED|r
    .vendor >>|cRXP_BUY_Vendor trash and buy the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r] << Warrior
    .vendor >>|cRXP_BUY_Vendor trash and buy the |T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowstrike|r]|r << Rogue
    .vendor >>|cRXP_BUY_Buy all of the key AoE runes|r << Mage
    .vendor >>|cRXP_BUY_Buy all of the following runes:|r << Warlock
    .collect 204806,1 << Warrior --Rune of Victory Rush
    .collect 204795,1 << Rogue --Rune of Shadowstrike
    .collect 203746,1 << Mage --Spell Notes: Living Flame
    .collect 208799,1 << Mage --Spell Notes: Living Bomb
    .collect 203748,1 << Mage --Spell Notes: Burnout
    .collect 225690,1 << Mage --Spell Notes: Frozen Orb
    .collect 205215,1 << Warlock --Rune of Tactics
    .collect 210824,1 << Warlock --Rune of the Pact
    .collect 211477,1 << Warlock --Rune of Incinerate
    .collect 205230,1 << Warlock --Rune of Haunting
    .collect 228797,1 << Warlock --Grimoire of Fel Armor
    >>You will get the rest of your runes very soon
    .target Rune Broker
    .skipgossip
step << Warrior/Rogue/Mage
    .train 400105 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowstrike|r] to train |T132323:0|t[Shadowstrike], you will engrave it soon << Rogue
    .train 403470 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r] to train |T132342:0|t[Victory Rush], you will engrave it soon << Warrior
    .train 401768 >> Use the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Living Flame|r] to train |T135820:0|t[Living Flame] << Mage
    .train 415936 >> Use the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Living Bomb|r] to train |T236220:0|t[Living Bomb] << Mage
    .train 401759 >> Use the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Burnout|r] to train |T236207:0|t[Burnout] << Mage
    .train 440858 >> Use the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Frozen Orb|r] to train |T135851:0|t[Frozen Orb] << Mage
    .train 416009 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Tactics|r] to train |T136150:0|t[Demonic Tactics] << Warlock
    .train 425476 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Pact|r] to train |T237562:0|t[Demonic Pact] << Warlock
    .train 211477 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Incinerate|r] to train |T135789:0|t[Incinerate] << Warlock
    .train 403919 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Haunting|r] to train |T236298:0|t[Haunt] << Warlock
    .train 403619 >> Use the |T133733:0|t[Grimoire of Fel Armor] to train |T136156:0|t[Fel Armor] |cRXP_WARN_use it as your main armor spell|r << Warlock
    .use 203746 << Mage --Spell Notes: Living Flame
    .use 208799 << Mage --Spell Notes: Living Bomb
    .use 203748 << Mage --Spell Notes: Burnout
    .use 225690 << Mage --Spell Notes: Frozen Orb
    .use 204806 << Warrior --Rune of Victory Rush
    .use 204795 << Rogue --Rune of Shadowstrike
    .use 205215 << Warlock --Rune of Tactics
    .use 210824 << Warlock --Rune of the Pact
    .use 211477 << Warlock --Rune of Incinerate
    .use 205230 << Warlock --Rune of Haunting
    .use 228797 << Warlock --Grimoire of Fel Armor
step << Warlock
    #optional
    #sticky
    .aura 403619 >> |cRXP_WARN_Make sure you remember to activate your|r |T136156:0|t[Fel Armor]
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Llane Beshere|r inside downstairs
    .train 6673 >>Train |T132333:0|t[Battle Shout]
    .accept 77616 >> Accept The Lost Rune
    .turnin 77616 >> Turn in The Lost Rune
    .goto Elwynn Forest,50.242,42.287
    .mob Young Wolf
    .target Llane Beshere
step << Warrior/Rogue/Mage/Warlock
    .equip 10 >> Equip the |T132952:0|t[Thin Cloth Gloves] << Mage
    .use 2119 << Mage --Thin Cloth Gloves
    .engrave 7 >> Engrave |T135820:0|t[Living Flame] on your pants << Mage
    .engrave 10 >> Engrave |T236220:0|t[Living Bomb] on your gloves << Mage
    .engrave 5 >> Engrave |T236207:0|t[Burnout] on your chest << Mage
    .equip 10 >> Equip the |T132938:0|t[Tarnished Chain Gloves] << Warrior
    .engrave 10 >> Engrave |T132342:0|t[Victory Rush] on your gloves << Warrior
    .use 2385 << Warrior -- Tarnished Chain Gloves
    .equip 10 >> Equip the |T132952:0|t[Cracked Leather Gloves] << Rogue
    .engrave 10 >> Engrave |T132323:0|t[Shadowstrike] on your gloves << Rogue
    .use 2125 << Rogue --Cracked Leather Gloves
    .equip 9 >> Equip the |T132602:0|t[Thin Cloth Bracers] << Warlock
    .use 3600 << Warlock --Thin Cloth Bracers
    .engrave 5 >> Engrave |T136150:0|t[Demonic Tactics] on your chest << Warlock
    .engrave 7 >> Engrave |T237562:0|t[Demonic Pact] on your pants << Warlock
    .engrave 9 >> Engrave |T135789:0|t[Incinerate] on your bracers << Warlock
step
    #label Within
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 783 >> Turn in A Threat Within
    .accept 7 >> Accept Kobold Camp Cleanup
    .target Marshal McBride
step
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Willem|r
    .accept 5261 >> Accept Eagan Peltskinner
    .accept 18 >> Accept Brotherhood of Thieves << Warlock
    .target Deputy Willem
step << Warlock
    #season 2
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drusilla La Salle|r
    .accept 1598 >> Accept The Stolen Tome
    .accept 77621 >> Accept Stolen Power << Human
    .turnin 77621 >> Turn in Stolen Power << Human
    .train 348 >> Train |T135817:0|t[Immolate]
    .target Drusilla La Salle
step << Human Warlock
    #season 2
    #label GlovesEquip
    #completewith RestandR
    .equip 10,711 >> |cRXP_WARN_Equip the|r |T132961:0|t[Tattered Cloth Gloves]
    .use 711
    .itemcount 711,1 --Tattered Cloth Gloves (1)
    .train 403919,3
step << Human Warlock
    #season 2
    #requires GlovesEquip
    #completewith RestandR
    .engrave 10 >>|cRXP_WARN_Engrave your|r |T132961:0|t[Tattered Cloth Gloves] |cRXP_WARN_with|r |T236298:0|t[Haunt]
    .train 403919,3
step << Warlock
    #completewith next
    >>Kill |cRXP_ENEMY_Defias Thugs|r. Loot them for their |cRXP_LOOT_Red Burlap Bandanas|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
	.mob Defias Thug
step << Warlock
    .goto Elwynn Forest,56.7,44.0
    >>|cRXP_WARN_Run into the Tent at the Defias Camp|r
    >>Open the |cRXP_PICK_Stolen Books|r. Loot it for the |cRXP_LOOT_Powers of the Void|r
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    >>Kill |cRXP_ENEMY_Defias Thugs|r. Loot them for their |cRXP_LOOT_Red Burlap Bandanas|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
	.mob Defias Thug
step << Warlock
    #hardcore
    #completewith next
    .goto Elwynn Forest,56.828,43.734
    .hs >> Hearth to Northshire Valley
step << Warlock
    #softcore
    #completewith next
    .goto 1429,49.527,43.491,0
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer
step << Warlock
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 1598 >> Turn in The Stolen Tome
    .target Drusilla La Salle
step << Warlock
    #optional
    #completewith next
    .cast 688 >> |cRXP_WARN_Cast|r |T136218:0|t[Summon Imp]
    .usespell 688
step << Warlock
    .goto Elwynn Forest,48.17,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Willem|r
    .turnin 18,1 >> Turn in Brotherhood of Thieves
    .target Deputy Willem
step << Warlock
    #optional
    #completewith next
    .equip 16,2224 >> Equip the |T135641:0|t[Militia Dagger]
    .use 2224
    .itemcount 2224,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.0
step << Priest/Paladin
    .goto Elwynn Forest,48.22,41.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Rune Broker|r
    .vendor >> |cRXP_BUY_Sell your|r |T135005:0|t[Shirt] |cRXP_BUY_and buy the |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Desecrated Citadel|r] from him|r << Priest
    .vendor >> |cRXP_BUY_Sell your|r |T135005:0|t[Shirt] |cRXP_BUY_and buy the |T133745:0|t[|cRXP_FRIENDLY_Testament of Martyrdom|r] from him|r << Paladin
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel
    .collect 226398,1  << Paladin --Testament of Martyrdom
    >>You will get the rest of your runes very soon
    .target Rune Broker
    .skipgossip
step << Priest/Paladin
    #sticky
    .use 205947 << Priest --Prophecy of a Desecrated Citadel
    .use 226398 << Paladin --Testament of martyrdom
    .train 402852 >> Use the |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Desecrated Citadel|r] to train |T237570:0|t[Homunculi] << Priest
    .train 407798 >> Use the |T133745:0|t[|cRXP_FRIENDLY_Testament of Martyrdom|r] to train |T135961:0|t[Seal of Martyrdom], |cRXP_WARN_use it as your primary Seal|r << Paladin
    .engrave 7 >> Engrave |T237570:0|t[Homunculi] on your pants << Priest
step
    #label EaganWolves
    .goto Elwynn Forest,48.941,40.166
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eagan Peltskinner|r
    .turnin 5261 >> Turn in Eagan Peltskinner
    .accept 33 >> Accept Wolves Across The Border
    .target Eagan Peltskinner
step << Rogue
    #completewith next
    >>Kill |cRXP_ENEMY_Wolves|r and |cRXP_ENEMY_Kobold Vermin|r on the way to the trainer
    .complete 33,1 --Tough Wolf Meat (8)
    .complete 7,1 -- Kobold Vermin Slain (10)
    .mob Young Wolf
	.mob Timber Wolf
    .mob Kobold Vermin
step << Rogue
    .goto Elwynn Forest,50.6,40.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorik Kerridan|r
    .accept 77618 >> Accept Thrice Stolen
    .turnin 77618 >> Turn in Thrice Stolen
    .train 1784 >> Train |T132320:0|t[Stealth], you will need it to use |T135131:0|t[Shadowstrike]
    .target Jorik Kerridan
step << Mage
    #optional
    #sticky
    .engrave 15 >> Be on the lookout for any cloak drops. Once you get one engrave |T135851:0|t[Frozen Orb] on it
    >>|cRXP_WARN_This spell is extremely overpowered|r
step << Mage/Warlock
    #completewith next
    .goto Elwynn Forest,46.2,40.4,40,0
    .goto Elwynn Forest,47.486,41.566
    >>|cRXP_WARN_Once you have 50c worth of vendor trash:|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Danil|r
    >>Vendor Trash
    >>|cRXP_BUY_Buy 10|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step << Paladin
    #completewith next
    >>Kill |cRXP_ENEMY_Kobold Vermin|r
    .complete 7,1 --Kill Kobold Vermin (x10)
    .mob Kobold Vermin
step
    #sticky
    #label WolfMeatEnd
    .goto 1429,49.052,38.270,0
    .goto 1429,45.708,38.720,0
    .goto 1429,47.976,39.422,0
    .waypoint 1429,49.052,38.270,45,0
    .waypoint 1429,48.362,37.582,45,0
    .waypoint 1429,47.136,37.636,45,0
    .waypoint 1429,46.870,36.906,45,0
    .waypoint 1429,46.476,37.034,45,0
    .waypoint 1429,46.465,38.272,45,0
    .waypoint 1429,45.896,38.013,45,0
    .waypoint 1429,45.708,38.720,45,0
    .waypoint 1429,46.302,39.994,45,0
    .waypoint 1429,45.718,40.733,45,0
    .waypoint 1429,46.399,41.838,45,0
    .waypoint 1429,46.741,40.987,45,0
    .waypoint 1429,47.703,40.299,45,0
    .waypoint 1429,47.976,39.422,45,0
    >>Kill |cRXP_ENEMY_Young Wolves|r and |cRXP_ENEMY_Timber Wolves|r. Loot them for their |cRXP_LOOT_Tough Wolf Meat|r
    .complete 33,1 --Collect Tough Wolf Meat (x8)
	.mob Young Wolf
	.mob Timber Wolf
step << !Priest !Paladin
    #loop
    .goto 1429,47.601,36.720,0
    .goto 1429,49.215,37.010,0
    .goto 1429,47.569,34.967,0
    .goto 1429,47.601,36.720,45,0
    .goto 1429,47.381,36.314,45,0
    .goto 1429,47.611,35.863,45,0
    .goto 1429,48.314,36.487,45,0
    .goto 1429,49.070,36.438,45,0
    .goto 1429,49.215,37.010,45,0
    .goto 1429,49.838,36.413,45,0
    .goto 1429,50.105,35.668,45,0
    .goto 1429,49.823,35.161,45,0
    .goto 1429,48.845,35.066,45,0
    .goto 1429,47.569,34.967,45,0
    >>Kill |cRXP_ENEMY_Kobold Vermins|r
    .complete 7,1 --Kill Kobold Vermin (x10)
    .mob Kobold Vermin
step << !Priest !Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1429,45.718,40.733,0
    .xp 3+720 >> Grind to 720+/1400xp
    .mob Young Wolf
	.mob Timber Wolf
step
    #requires WolfMeatEnd
    .goto Elwynn Forest,48.941,40.166
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eagan Peltskinner|r
    .turnin 33,2 >> Turn in Wolves Across The Border << Warrior/Paladin/Rogue
    .turnin 33,1 >> Turn in Wolves Across The Border << !Warrior !Paladin !Rogue
    .target Eagan Peltskinner
step << Paladin
    #optional
    >>|cRXP_WARN_MAKE SURE NOT TO VENDOR GEAR THAT CAN BE EQUIPPED|r
    +|cRXP_WARN_Grind |cRXP_ENEMY_Kobold Vermin|r or |cRXP_ENEMY_Wolves|r and sell trash until you have at least 93 copper|r
    .money >0.0093
    .mob Kobold Vermin
    .mob Young Wolf
	.mob Timber Wolf
step << !Priest !Paladin
    #xprate >1.59
    #optional
    #loop
    .goto 1429,45.718,40.733,0
    .goto 1429,47.976,39.422,45,0
    .goto 1429,47.703,40.299,45,0
    .goto 1429,46.741,40.987,45,0
    .goto 1429,46.399,41.838,45,0
    .goto 1429,45.718,40.733,45,0
    .goto 1429,46.302,39.994,45,0
    .goto 1429,45.708,38.720,45,0
    .goto 1429,45.896,38.013,45,0
    .xp 3+1060 >> Grind to 1060+/1400xp
    .mob Young Wolf
	.mob Timber Wolf
step << Paladin
    .goto Elwynn Forest,47.70,41.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Godrick Rothgar|r
    >>|cRXP_WARN_Leveling with a shield and one-hander early is much faster due to the power of the shield runes early on|r
    .vendor >> |cRXP_BUY_Vendor trash and buy the|r |T134955:0|t[Small Shield]
    .collect 17184,1 --Small Shield (1)
    .target Godrick Rothgar
step << Paladin
    .goto Elwynn Forest,47.25,41.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Janos Hammerknuckle|r
    >>|cRXP_WARN_Leveling with a shield and one-hander early is much faster due to the power of the shield runes early on|r
    .vendor >> |cRXP_BUY_Vendor trash and buy the|r |T133485:0|t[Club]
    .collect 2130,1 --Club (1)
    .target Janos Hammerknuckle
step << Paladin
    .equip 16,2130 >> Equip the |T133485:0|t[Club]
    .equip 17,17184 >> Equip the |T134955:0|t[Small Shield]
step << Warrior
    #xprate >1.59
    #optional
    #completewith CleanupEnd
    >>|cRXP_WARN_MAKE SURE NOT TO VENDOR GEAR THAT CAN BE EQUIPPED|r
    +|cRXP_WARN_Grind and sell trash until you have 1 silver|r
    .money >0.01
    .train 100,1 << Warrior --Charge
    .train 20271,1 << Paladin --Judgement
    .isOnQuest 7
step << Priest
    #optional
    #completewith next
    .equip 8,80 >> |cRXP_WARN_Equip the|r |T132543:0|t[Soft Fur-lined Shoes], you will use them to engrave a rune on soon
step << Priest
    .goto Elwynn Forest,47.57,41.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dermot Johns|r
    >>If you don't have enough money for both items |cRXP_WARN_(60 copper)|r, kill more |cRXP_ENEMY_wolves|r
    >>|cRXP_WARN_MAKE SURE NOT TO VENDOR GEAR THAT CAN BE EQUIPPED|r
    >>Vendor trash and buy the |T132495:0|t[Thin Cloth Belt] and |T132952:0|t[Thin Cloth Gloves], you will them to engrave a rune on soon
    .collect 3599,1 --Thin Cloth Belt (1)
    .collect 2119,1 --Thin Cloth Gloves (1)
    .target Dermot Johns
step << Priest/Mage/Warlock
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Danil|r
    >>Vendor Trash
    >>|cRXP_BUY_Buy 10 more|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Make sure you save 10c or more for later|r << Priest/Mage
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step << Priest/Paladin
    .goto Elwynn Forest,48.22,41.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Rune Broker|r
    >>|cRXP_WARN_MAKE SURE NOT TO VENDOR GEAR THAT CAN BE EQUIPPED|r
    .vendor >>|cRXP_BUY_Buy all of the following runes:|r
    .collect 212552,1 << Priest --Psychosophic Epiphany
    .collect 205940,1 << Priest --Memory of a Dark Purpose
    .collect 205951,1 << Priest --Memory of a Troubled Acolyte
    .collect 205932,1 << Priest --Prophecy of a King's Demise
    .collect 235600,1 << Paladin --Rune of Divine Storm
    .collect 211488,1 << Paladin --Rune of the Avenger
    .collect 235602,1 << Paladin --Rune of the Hammer of the Righteous
    .collect 205420,1 << Paladin --Libram of Judgement
    .collect 235604,1 << Paladin --Rune of the Shield of Righteousness
    >>You will get the rest of your runes very soon
    .target Rune Broker
    .skipgossip
step << Priest/Paladin
    .train 431663 >> Use the |T135791:0|t[|cRXP_FRIENDLY_Psychosophic Epiphany|r] to train |T136181:0|t[Mind Spike] << Priest
    .train 425216 >> Use the |T136222:0|t[|cRXP_FRIENDLY_Memory of a Dark Purpouse|r] to train |T237514:0|t[Void Plague] << Priest
    .train 402862 >> Use the |T136222:0|t[|cRXP_FRIENDLY_Memory of a Troubled Acolyte|r] to train |T237545:0|t[Penance] << Priest
    .train 402849 >> Use the |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Demise|r] to train |T136149:0|t[Shadow Word: Death] << Priest
    .train 410014 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Divine Storm|r] to train |T236250:0|t[Divine Storm] << Paladin
    .train 410008 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Avenger|r] to train |T135874:0|t[Avenger's Shield] << Paladin
    .train 410013 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Hammer of the Righteous|r] to train |T236253:0|t[Hammer of the Righteous] << Paladin
    .train 440788 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Shield of Righteousness|r] to train |T236265:0|t[Shield of Righteousness] << Paladin
    .equip 18,205420 >> Equip the |T134916:0|t[|cRXP_FRIENDLY_Libram of Judgement|r] you will need it to learn |T135891:0|t[Crusader Strike] later << Paladin
    .use 212552 << Priest --Psychosophic Epiphany
    .use 205940 << Priest --Memory of a Dark Purpose
    .use 205951 << Priest --Memory of a Troubled Acolyte
    .use 205932 << Priest --Prophecy of a King's Demise
    .use 235600 << Paladin --Rune of Divine Storm
    .use 211488 << Paladin --Rune of the Avenger
    .use 235602 << Paladin --Rune of the Hammer of the Righteous
    .use 205420 << Paladin --Libram of Judgement
    .use 235604 << Paladin --Rune of the Shield of Righteousness
step << Paladin
    #sticky
    >>|cRXP_WARN_Be on the lookout for any|r |T132624:0|t[Chest]|cRXP_WARN_,|r |T132602:0|t[Bracers] |cRXP_WARN_or|r |T133762:0|t[Cloak] |cRXP_WARN_you can equip|r
    .engrave 5 >> Engrave |T236250:0|t[Divine Storm] on your chest
    .engrave 9 >> Engrave |T236253:0|t[Hammer of the Righteous] on your bracers
    .engrave 15 >> Engrave |T236265:0|t[Shield of Righteousness] on your cloak
step << Priest/Paladin
    .engrave 6 >> Engrave |T136181:0|t[Mind Spike] on your belt << Priest
    .engrave 8 >> Engrave |T237514:0|t[Void Plague] on your boots << Priest
    .engrave 10 >> Engrave |T136149:0|t[Shadow Word: Death] on your gloves << Priest
    .engrave 7 >> Engrave |T135874:0|t[Avenger's Shield] on your pants << Paladin
step << Priest/Paladin
    #loop
    .goto 1429,47.601,36.720,0
    .goto 1429,49.215,37.010,0
    .goto 1429,47.569,34.967,0
    .goto 1429,47.601,36.720,45,0
    .goto 1429,47.381,36.314,45,0
    .goto 1429,47.611,35.863,45,0
    .goto 1429,48.314,36.487,45,0
    .goto 1429,49.070,36.438,45,0
    .goto 1429,49.215,37.010,45,0
    .goto 1429,49.838,36.413,45,0
    .goto 1429,50.105,35.668,45,0
    .goto 1429,49.823,35.161,45,0
    .goto 1429,48.845,35.066,45,0
    .goto 1429,47.569,34.967,45,0
    >>Kill |cRXP_ENEMY_Kobold Vermins|r
    .complete 7,1 --Kill Kobold Vermin (x10)
    .mob Kobold Vermin
step << Priest/Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1429,45.718,40.733,0
    .xp 3+720 >> Grind to 720+/1400xp
    .mob Young Wolf
	.mob Timber Wolf
step << !Priest !Mage !Warlock !Rogue
    .goto Elwynn Forest,47.691,41.417
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Godric Rothgar|r
    .vendor >>Vendor Trash
    .target Godric Rothgar
step << Mage
    .goto Elwynn Forest,48.22,41.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Rune Broker|r
    >>|cRXP_WARN_MAKE SURE NOT TO VENDOR GEAR THAT CAN BE EQUIPPED|r
    .vendor >> |cRXP_BUY_Vendor trash and buy all the |T134419:0|t|cRXP_WARN_[Runes]|r that you need from him|r
    >>Make sure that you bought |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Ice Lance|r] you will it to turnin an extra quest
    .collect 203745,1 --Spell Notes: Ice Lance
    .target Rune Broker
    .skipgossip
step << Mage
    #sticky
    #optional
    #label IceLance
    .train 401760 >> Use the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Ice Lance|r] to train |T135844:0|t[Ice Lance]
step
    #label CleanupEnd
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 7 >> Turn in Kobold Camp Cleanup
    .accept 15 >> Accept Investigate Echo Ridge
    .accept 3100 >> Accept Simple Letter << Warrior
    .accept 3101 >> Accept Consecrated Letter << Paladin
    .accept 3102 >> Accept Encrypted Letter << Rogue
    .accept 3103 >> Accept Hallowed Letter << Priest
    .accept 3104 >> Accept Glyphic Letter << Mage
    .accept 3105 >> Accept Tainted Letter << Warlock
    .target Marshal McBride




----Start of 2x level 4 training----




step << Mage
    #xprate >1.59
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
    #requires IceLance
    #xprate >1.59
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khelden Bremen|r inside upstairs
    .goto Elwynn Forest,49.661,39.402
    .turnin 3104 >> Turn in Glyphic Letter
    .accept 77620 >> Accept Spell Research << Human
    .turnin 77620 >> Turn in Spell Research << Human
    .trainer >> Train your class spells
    .target Khelden Bremen
step << Priest
    #xprate >1.59
    #optional
    #completewith next
    .goto Elwynn Forest,49.3,40.7,15,0
    .goto Elwynn Forest,49.8,40.2,10 >> Travel toward |cRXP_FRIENDLY_Priestess Anetta|r inside downstairs
step << Priest
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,49.808,39.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Anetta|r inside downstairs
    .turnin 3103 >> Turn in Hallowed Letter
    .accept 77619 >> Accept Meditation on the Light << Human
    .turnin 77619 >> Turn in Meditation on the Light << Human
    .trainer >> Train your class spells, |cRXP_WARN_if you can't afford them, skip training. You will be mainly using rune abilities anyway|r
    .target Priestess Anetta
step << Warrior/Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto Elwynn Forest,48.85,41.76,15,0
    .goto Elwynn Forest,49.6,41.8,15 >> Travel toward |cRXP_FRIENDLY_Llane Beshere|r inside downstairs << Warrior
    .goto Elwynn Forest,49.6,41.8,15 >> Travel toward |cRXP_FRIENDLY_Brother Sammuel|r inside downstairs << Paladin
step << Warrior
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,50.242,42.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Llane Beshere|r inside downstairs
    .turnin 3100 >> Turn in Simple Letter
    .accept 77616 >> Accept The Lost Rune << Human
    .turnin 77616 >> Turn in The Lost Rune << Human
    .train 100 >> Train |T132337:0|t[Charge]
    .target Llane Beshere
step << Paladin
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,50.433,42.124
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Sammuel|r
    .turnin 3101 >> Turn in Consecrated Letter
    .accept 77617 >> Accept Relics of the Light << Human Paladin
    .train 20271 >> Train |T135959:0|t[Judgement]
    >>|cRXP_WARN_If you have extra money you can spend it on|r |T135906:0|t[Blessing of Might] |cRXP_WARN_or|r Chest/Bracers/Cloak |cRXP_WARN_if you're still missing them. It is much better to buy the gear than the Blessing|r
    .target Brother Sammuel
step << Priest/Warrior/Paladin
    #xprate >1.59
    #season 2
    #optional
    #completewith RuneWorkers
    .goto 1429,48.198,41.890,12 >> Exit Northshire Abbey
step
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Willem|r outside
    .accept 18 >> Accept Brotherhood of Thieves
    .target Deputy Willem
step << !Mage !Priest !Paladin
    .goto Elwynn Forest,48.22,41.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Rune Broker|r
    >>|cRXP_WARN_MAKE SURE NOT TO VENDOR GEAR THAT CAN BE EQUIPPED|r
    .vendor >> |cRXP_BUY_Vendor trash and buy all the |T134419:0|t|cRXP_WARN_[Runes]|r that you need from him|r
    .target Rune Broker
    .skipgossip
step << Paladin
    #loop
    #sticky
    #label EarlyLibram3
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .waypoint Elwynn Forest,53.86,47.05,30,0
    .waypoint Elwynn Forest,55.43,45.87,30,0
    .waypoint Elwynn Forest,55.09,49.00,30,0
    .waypoint Elwynn Forest,53.89,50.52,30,0
    .waypoint Elwynn Forest,52.55,48.79,30,0
    .aura 408828 >>|cRXP_WARN_Cast|r |T135959:0|t[Judgement] |cRXP_WARN_10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    .itemStat 18,QUALITY,2
    .train 410002,1
step << Paladin
    #sticky
    #label EarlyLibram4
    #requires EarlyLibram3
    .cast 409920 >>|cRXP_WARN_Use the|r |T134916:0|t|cRXP_LOOT_[Libram of Judgement]|r |cRXP_WARN_to learn|r |T135891:0|t[Crusader Strike]
    .use 205420
    .aura -408828
    .train 410002,1
step
    #xprate >1.59
    #season 2
    #label RuneWorkers
    #loop
    .goto 1429,47.468,36.298,0
    .goto 1429,50.224,34.125,0
    .goto 1429,50.835,38.046,0
    .goto 1429,47.468,36.298,45,0
    .goto 1429,47.247,35.164,45,0
    .goto 1429,47.012,33.828,45,0
    .goto 1429,46.774,33.271,45,0
    .goto 1429,46.271,32.489,45,0
    .goto 1429,47.663,32.058,45,0
    .goto 1429,48.038,33.075,45,0
    .goto 1429,48.795,33.815,45,0
    .goto 1429,49.278,34.610,45,0
    .goto 1429,50.224,34.125,45,0
    .goto 1429,50.245,34.884,45,0
    .goto 1429,51.058,35.582,45,0
    .goto 1429,52.062,35.801,45,0
    .goto 1429,51.505,38.064,45,0
    .goto 1429,50.835,38.046,45,0
    >>Kill |cRXP_ENEMY_Kobold Workers|r
    .complete 15,1 --Kill Kobold Worker (x10)
    .mob Kobold Worker
step << Rogue
    #xprate >1.59
    #season 2
    #requires Shadowstrike2
    .goto Elwynn Forest,50.314,39.916
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorik Kerridan|r
    .turnin 3102 >> Turn in Encrypted Letter
    .target Jorik Kerridan
step << !Warlock
    #xprate >1.59
    #season 2
    #loop
    #label EarlyRedBurlapBandana
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    >>Kill |cRXP_ENEMY_Defias Thugs|r. Loot them for their |cRXP_LOOT_Red Burlap Bandanas|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
	.mob Defias Thug
step
    #optional
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .target Spirit Healer
step << !Warlock
    #xprate >1.59
    #season 2
    #requires Shadowstrike2 << Rogue
    #requires EarlyLibram4 << Paladin
    .goto Elwynn Forest,48.17,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Willem|r
    .turnin 18,1 >> Turn in Brotherhood of Thieves << Rogue
    .turnin 18,2 >> Turn in Brotherhood of Thieves << Paladin
    .turnin 18,2 >> Turn in Brotherhood of Thieves << Priest
    .turnin 18,3 >> Turn in Brotherhood of Thieves << Warrior
    .turnin 18,5 >> Turn in Brotherhood of Thieves << Mage
    .turnin 18 >> Turn in Brotherhood of Thieves << !Warrior !Priest !Mage !Rogue !Warlock !Paladin
    .target Deputy Willem
step << Rogue
    #xprate >1.59
    #season 2
    #completewith RestandR
    .equip 16,2224 >> Equip the |T135641:0|t[Militia Dagger]
    .use 2224
    .itemcount 2224,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.01
step << Paladin
    #xprate >1.59
    #season 2
    #completewith RestandR
    .equip 16,5580 >> Equip the |T133052:0|t[Militia Hammer]
    .use 5580
    .itemcount 5580,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.97
step << Warrior
    #completewith RestandR
    .equip 16,1161 >> Equip the |T135274:0|t[Militia Shortsword]
    .use 1161
    .itemcount 1161,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.01
step << Human Priest
    #xprate >1.59
    #optional
    #completewith next
    .goto Elwynn Forest,49.3,40.7,15,0
    .goto Elwynn Forest,49.8,40.2,10 >> Travel toward |cRXP_FRIENDLY_Priestess Anetta|r inside downstairs
step << Human Priest
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,49.808,39.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Anetta|r
    .accept 5623 >> Accept In Favor of the Light
    .target Priestess Anetta
    .isOnQuest 77619
    .xp <5,1
step << Human Warrior/Human Paladin
    #xprate >1.59
    #season 2
    #optional
    #completewith next
    .goto Elwynn Forest,48.85,41.76,15,0
    .goto Elwynn Forest,49.6,41.8,15 >> Travel toward |cRXP_FRIENDLY_Llane Beshere|r inside downstairs << Warrior
    .goto Elwynn Forest,49.6,41.8,15 >> Travel toward |cRXP_FRIENDLY_Brother Sammuel|r inside downstairs << Paladin
step << Human Paladin
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,50.433,42.124
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Sammuel|r inside downstairs
    .turnin 77617 >> Turn in Relics of the Light
    .train >> Train your class spells
    .target Brother Sammuel
    .isOnQuest 77617
step << Human Paladin
    #xprate >1.59
    #season 2
    #completewith RestandR
    #label GlovesEquip
    .equip 10,2385 >> |cRXP_WARN_Equip the|r |T132938:0|t|cRXP_LOOT_[Tarnished Chain Gloves]|r
    .use 2385
    .itemcount 2385,1
    .train 403470,3 << Warrior
    .train 410002,3 << Paladin
    .itemStat 10,LEVEL,<5
step << Human Paladin
    #xprate >1.59
    #season 2
    #completewith RestandR
    #requires GlovesEquip
    .engrave 10 >> |cRXP_WARN_Engrave the|r |T132938:0|t|cRXP_LOOT_[Tarnished Chain Gloves]|r |cRXP_WARN_with|r |T132342:0|t[Victory Rush] << Warrior
    .engrave 10 >> |cRXP_WARN_Engrave the|r |T132938:0|t|cRXP_LOOT_[Tarnished Chain Gloves]|r |cRXP_WARN_with|r |T135891:0|t[Crusader Strike] << Paladin
    .train 403470,3 << Warrior
    .train 410002,3 << Paladin
    .itemStat 10,LEVEL,<5
step
    #xprate >1.59
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 15 >> Turn in Investigate Echo Ridge
    .accept 21 >> Accept Skirmish at Echo Ridge
    .target Marshal McBride
step << Human Paladin/Warrior/Priest
    #xprate >1.59
    #season 2
    #optional
    #completewith next
    .goto 1429,48.279,42.171,8 >>Exit Northshire Abbey
    .isQuestTurnedIn 15 << Warrior/Priest
    .isQuestTurnedIn 18 << Paladin
step << Warlock
    #xprate >1.59
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 3105 >> Turn in Tainted Letter
    .train 172 >>Train |T136118:0|t[Corruption]
    .target Drusilla La Salle



----End of 2x training section----


step << Priest/Paladin
    .goto Elwynn Forest,48.22,41.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Rune Broker|r
    >>|cRXP_WARN_MAKE SURE NOT TO VENDOR GEAR THAT CAN BE EQUIPPED|r
    .vendor >> |cRXP_BUY_Vendor trash and buy all the |T134419:0|t|cRXP_WARN_[Runes]|r that you want from him|r
    .target Rune Broker
    .skipgossip
step
    #optional
    #completewith next
    .goto Elwynn Forest,47.63,32.07,20 >> Enter the Echo Ridge Mine
step
    #loop
    .goto 1429,47.784,31.540,0
    .goto 1429,48.659,29.161,0
    .goto 1429,50.491,26.867,0
    .goto 1429,47.784,31.540,30,0
    .goto 1429,47.909,30.850,30,0
    .goto 1429,48.107,30.271,30,0
    .goto 1429,48.428,30.248,30,0
    .goto 1429,48.398,29.842,30,0
    .goto 1429,48.659,29.161,30,0
    .goto 1429,48.245,28.598,30,0
    .goto 1429,48.637,27.354,30,0
    .goto 1429,48.501,26.700,30,0
    .goto 1429,49.979,25.620,30,0
    .goto 1429,50.491,26.867,30,0
    >>Kill |cRXP_ENEMY_Kobold Laborers|r inside Echo Ridge Mine
    .complete 21,1 --Kill Kobold Laborer (x12)
    .mob Kobold Laborer
step
	#softcore
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer in Northshire
    .target Spirit Healer
step
    #xprate >1.49
    #optional
    #completewith RestandR
    .abandon 3904 >> Abandon Milly's Harvest
step
    #xprate >1.49
    #optional
    #loop
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
    #completewith #label RestandR
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .target Spirit Healer
    .subzoneskip 59,1
step
    #label RestandR
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r inside
    .turnin 21,1 >> Turn in Skirmish at Echo Ridge << Rogue
    .turnin 21,2 >> Turn in Skirmish at Echo Ridge << Warrior/Paladin
    .turnin 21,3 >> Turn in Skirmish at Echo Ridge << !Warrior !Paladin !Rogue
    .accept 54 >> Accept Report to Goldshire
    .target Marshal McBride
step << Priest
    #optional
    #season 2
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
#season 2
#version 1
<< Alliance
#group RestedXP Alliance 1-20
#name 6-12 Elwynn Forest SoD
#displayname 6-12 Elwynn Forest
#next 12-13 Dun Morogh SoD
#defaultfor Human

step
    #season 0,1 << Rogue
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
    #season 0,1 << Rogue
    #softcore
    #completewith Goldshire
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .target Spirit Healer
    .subzoneskip 87
step
    #softcore
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshall Dughan|r
    .turnin 54 >> Turn in Report to Goldshire
    .accept 62 >> Accept The Fargodeep Mine
    .target Marshal Dughan
step << Warrior
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>|cRXP_BUY_Buy a|r |T135321:0|t[Gladius] |cRXP_BUY_from her if you can afford it|r
    .collect 2488,1 --Collect Gladius (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0536
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
    .vendor 54 >>|cRXP_BUY_Buy a|r |T135641:0|t[Stiletto] |cRXP_BUY_from her if you can afford it|r
    .collect 2494,1 --Collect Stiletto (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0400
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
    .vendor 54 >>|cRXP_WARN_Buy a|r |T133053:0|t[Wooden Mallet] |cRXP_BUY_from her if you can afford it|r
    .collect 2493,1 --Collect Wooden Mallet (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0631
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #completewith next
    +|cRXP_WARN_Equip the|r |T133053:0|t[Wooden Mallet]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Warrior/Rogue/Paladin
    .goto Elwynn Forest,41.706,65.544
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smith Argus|r
    >>|cRXP_WARN_This will allow you to make|r |T135248:0|t[Rough Sharpening Stones] |cRXP_WARN_which increase your melee damage by 2|r << Warrior/Rogue
    >>|cRXP_WARN_This will allow you to make|r |T135255:0|t[Rough Weightstones] |cRXP_WARN_which increase your melee damage by 2|r << Paladin
    >>|cRXP_WARN_If you don't want to do this, skip this step|r
    .train 2018 >> Train |T136241:0|t[Blacksmithing]
    .target Smith Argus
step << Mage/Priest/Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,41.706,65.786
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andrew Krighton|r
    .vendor >> Vendor Trash
    .target Andrew Krighton
--  .money >1.0
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
    .vendor 151 >>|cRXP_BUY_Buy the|r |T135641:0|t[Balanced Throwing Daggers] |cRXP_BUY_from him if you can afford it|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .disablecheckbox
    .target Brog Hamfist
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #label BalancedDaggers1
    +|cRXP_WARN_Equip the|r |T135641:0|t[Balanced Throwing Daggers]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #requires BalancedDaggers1
    #label DeleteOldDaggers
    .destroy 2947 >> Delete the |T135426:0|t[Small Throwing Knives] from your bags, as they're no longer needed
step << Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >> Travel downstairs
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillian Crowe|r
    .trainer >> Train your class spells
    .target Maximillian Crowe
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cylina Darkheart|r
    .vendor 6374 >> |cRXP_BUY_Buy the|r |T133738:0|t[Grimoire of Blood Pact (Rank 1)] |cRXP_BUY_from her if you can afford it. If not you can buy it later|r
    .target Cylina Darkheart
    .money <0.0100
    .itemcount 16321,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20397,1 --Blood Pact (Rank 1)
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
    .vendor 295 >> |cRXP_BUY_Buy|r |T133995:0|t[Dalaran Sharp] |cRXP_BUY_from him until you're down to 1 Silver|r << Warrior
    .vendor 295 >> |cRXP_BUY_Buy up to 20|r |T133995:0|t[Dalaran Sharp] |cRXP_BUY_from him|r << Rogue
    .collect 414,20 --Dalaran Sharp (20)
    .disablecheckbox
    .target Innkeeper Farley
    .itemcount 414,<7 --Dalaran Sharp (<7)
    .money < 0.1
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
step
    #requires DeleteOldDaggers << Rogue
    .goto Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remy "Two Times"|r
    .accept 47 >> Accept Gold Dust Exchange
    .target Remy "Two Times"
step << Priest
    .goto Elwynn Forest,48.148,68.046
    >>|cRXP_WARN_Cast|r |T135929:0|t[Lesser Heal (Rank 2)] |cRXP_WARN_and|r |T135987:0|t[Power Word: Fortitude] |cRXP_WARN_on|r |cRXP_FRIENDLY_Guard Roberts|r
    .complete 5624,1 --Heal and fortify Guard Roberts
    .target Guard Roberts
step
    #sticky
    #label BoarMeatQuest
    #loop
    .goto Elwynn Forest,32.516,85.443,0
    .goto Elwynn Forest,31.081,81.488,0
    .goto Elwynn Forest,36.182,87.799,0
    .goto Elwynn Forest,41.733,86.986,0
    .goto Elwynn Forest,37.741,78.265,0
    .goto Elwynn Forest,41.576,69.499,0
    .waypoint Elwynn Forest,31.15,85.36,40,0
    .waypoint Elwynn Forest,33.08,86.64,40,0
    .waypoint Elwynn Forest,33.51,85.22,40,0
    .waypoint Elwynn Forest,32.17,83.88,40,0
    >>Kill |cRXP_ENEMY_Stonetusk Boars|r. Loot them for their |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    .collect 769,4,86,1 --Chunk of Boar Meat (4)
    .mob Stonetusk Boar
step << Warrior
    #season 2
    #sticky
    #completewith next
    >>Be on the lookout for |cRXP_FRIENDLY_Wandering Swordsman|r. If you find him you can challenge him to a duel which will award you with the rune of |T132334:0|t[|cRXP_FRIENDLY_Blood Frenzy|r]
    >>|cRXP_WARN_He has multiple spawn points and can only be present in one of them at the time|r  
    >>|cRXP_WARN_You will most likely be unable to solo him at this level, skip this step if there's no one around to help you, you can come back after you get level 10 and check if he's still there|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 412507,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r and |cRXP_FRIENDLY_Ma Stonefield|r << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r << !Rogue
    .accept 85 >> Accept Lost Necklace
    .goto Elwynn Forest,34.486,84.253
    .target +"Auntie" Bernice Stonefield
    .accept 88 >> Accept Princess Must Die! << Rogue
	.goto Elwynn Forest,34.660,84.482 << Rogue
    .target +Ma Stonefield << Rogue
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone1
    #completewith NecklaceStart
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r. Open |cRXP_PICK_Battered Chests|r. Loot them for their |T135232:0|t|cRXP_LOOT_[Rough Stones]|r << Warrior/Rogue
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r. Open |cRXP_PICK_Battered Chests|r. Loot them for their |T135232:0|t|cRXP_LOOT_[Rough Stones]|r and |T132889:0|t|cRXP_LOOT_[Linen Cloth]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone1
    #label RoughStoneCraft1
    #completewith NecklaceStart
    +|T136241:0|t[Blacksmith] |cRXP_WARN_the|r |T135232:0|t|cRXP_LOOT_[Rough Stones]|r |cRXP_WARN_into|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    +|T136241:0|t[Blacksmith] |cRXP_WARN_the|r |T135232:0|t|cRXP_LOOT_[Rough Stones]|r |cRXP_WARN_and|r |T132889:0|t|cRXP_LOOT_[Linen Cloth]|r |cRXP_WARN_into|r |T135255:0|t[Rough Weightstones] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft1
    #completewith NecklaceStart
    .cast 2828 >>|cRXP_WARN_Use the|r |T135248:0|t[Rough Sharpening Stone] |cRXP_WARN_on your current weapon|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Use the|r |T135255:0|t[Rough Weightstone] |cRXP_WARN_on your current weapon|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
step
    #optional
    #completewith NecklaceStart
    .goto Elwynn Forest,37.81,85.40,0
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r. Loot them for their |cRXP_LOOT_Kobold Candles|r and |cRXP_LOOT_Gold Dust|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
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
    #optional
    #completewith Lovers
    .goto Elwynn Forest,42.357,89.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joshua Maclure|r
    .vendor >>|cRXP_BUY_Buy as much|r |T132815:0|t[Ice Cold Milk] |cRXP_WARN_as you can afford|r << Priest/Warlock/Mage
    .vendor >>|cRXP_WARN_Vendor trash|r << !Priest !Warlock !Mage
    .target Joshua Maclure
    .subzoneskip 64,1 --The Maclure Vineyards
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone2
    #completewith Lovers
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r. Open |cRXP_PICK_Battered Chests|r. Loot them for their |T135232:0|t|cRXP_LOOT_[Rough Stones]|r << Warrior/Rogue
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r. Open |cRXP_PICK_Battered Chests|r. Loot them for their |T135232:0|t|cRXP_LOOT_[Rough Stones]|r and |T132889:0|t|cRXP_LOOT_[Linen Cloth]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone2
    #label RoughStoneCraft2
    #completewith Lovers
    +|T136241:0|t[Blacksmith] |cRXP_WARN_the|r |T135232:0|t|cRXP_LOOT_[Rough Stones]|r |cRXP_WARN_into|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    +|T136241:0|t[Blacksmith] |cRXP_WARN_the|r |T135232:0|t|cRXP_LOOT_[Rough Stones]|r |cRXP_WARN_and|r |T132889:0|t|cRXP_LOOT_[Linen Cloth]|r |cRXP_WARN_into|r |T135255:0|t[Rough Weightstones] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft2
    #completewith Lovers
    .cast 2828 >>|cRXP_WARN_Use the|r |T135248:0|t[Rough Sharpening Stone] |cRXP_WARN_on your current weapon|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Use the|r |T135255:0|t[Rough Weightstone] |cRXP_WARN_on your current weapon|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
step
    #optional
    #completewith Lovers
    .goto Elwynn Forest,37.81,85.40,0
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r. Loot them for their |cRXP_LOOT_Kobold Candles|r and |cRXP_LOOT_Gold Dust|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label Lovers
    .goto Elwynn Forest,29.840,85.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tommy Joe Stonefield|r
    .turnin 106 >> Turn in Young Lovers
    .accept 111 >> Accept Speak with Gramma
    .target Tommy Joe Stonefield
step
    #requires BoarMeatQuest
    #label Pie
    .goto Elwynn Forest,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .turnin 86 >> Turn in Pie for Billy
    .accept 84 >> Accept Back to Billy
    .target "Auntie" Bernice Stonefield
step
    .goto 1429,34.945,83.855
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gramma Stonefield|r inside
    .turnin 111 >> Turn in Speak with Gramma
    .accept 107 >> Accept Note to William
    .target Gramma Stonefield
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone3
    #completewith Exchange
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r. Open |cRXP_PICK_Battered Chests|r. Loot them for their |T135232:0|t|cRXP_LOOT_[Rough Stones]|r << Warrior/Rogue
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r. Open |cRXP_PICK_Battered Chests|r. Loot them for their |T135232:0|t|cRXP_LOOT_[Rough Stones]|r and |T132889:0|t|cRXP_LOOT_[Linen Cloth]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
    .subzoneskip 87 --Goldshire
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone3
    #label RoughStoneCraft3
    #completewith Exchange
    +|T136241:0|t[Blacksmith] |cRXP_WARN_the|r |T135232:0|t|cRXP_LOOT_[Rough Stones]|r |cRXP_WARN_into|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    +|T136241:0|t[Blacksmith] |cRXP_WARN_the|r |T135232:0|t|cRXP_LOOT_[Rough Stones]|r |cRXP_WARN_and|r |T132889:0|t|cRXP_LOOT_[Linen Cloth]|r |cRXP_WARN_into|r |T135255:0|t[Rough Weightstones] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
    .subzoneskip 87 --Goldshire
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft3
    #completewith Exchange
    .cast 2828 >>|cRXP_WARN_Use the|r |T135248:0|t[Rough Sharpening Stone] |cRXP_WARN_on your current weapon|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Use the|r |T135255:0|t[Rough Weightstone] |cRXP_WARN_on your current weapon|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
    .subzoneskip 87 --Goldshire
step << Warrior
    #season 2
    #sticky
    #label KoboldRune
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .waypoint Elwynn Forest,39.14,82.87,35,0
    .waypoint Elwynn Forest,39.16,84.79,35,0
    .waypoint Elwynn Forest,37.81,85.40,35,0
    .waypoint Elwynn Forest,36.76,83.19,35,0
    .waypoint Elwynn Forest,38.02,81.70,35,0
    >>Kill |cRXP_ENEMY_Kobold Miners|r and |cRXP_ENEMY_Kobold Tunnelers|r. Loot them for a |T134168:0|t|cRXP_LOOT_[Severed Kobold Head]|r
    >>|cRXP_WARN_This is one of three items you need to unlock your|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r] |cRXP_WARN_for when you get to Stormwind later|r
    .collect 204476,1 -- Severed Kobold Head (1)
    .mob Kobold Tunneler
    .mob Kobold Miner
    .mob Goldtooth
    .train 403475,1
step << Rogue
    #season 2
    #sticky
    #label KoboldRune
    #completewith Exchange
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .waypoint Elwynn Forest,39.14,82.87,35,0
    .waypoint Elwynn Forest,39.16,84.79,35,0
    .waypoint Elwynn Forest,37.81,85.40,35,0
    .waypoint Elwynn Forest,36.76,83.19,35,0
    .waypoint Elwynn Forest,38.02,81.70,35,0
    >>|T133644:0|t[Pick Pocket] |cRXP_ENEMY_Kobold Miners|r and |cRXP_ENEMY_Kobold Tunnelers|r. Loot them for the |T134327:0|t|cRXP_LOOT_[Top-Right Map Piece]|r
    >>|cRXP_WARN_You must be|r |T132320:0|t[Stealthed] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    >>|cRXP_ENEMY_NOTE:|r |cRXP_WARN_All of the|r |T134327:0|t[|cRXP_LOOT_Map Piece|r] |cRXP_WARN_steps are for unlocking the|r |T134536:0|t[Quick Draw] |cRXP_WARN_rune.|r |cRXP_WARN_It's useful but not mandatory for leveling and becomes obsolete around level 22 after unlocking your poisons. Feel free to skip all of those steps if you aren't interested in getting the rune ASAP and want to save some time in the short term.|r
    .collect 203784,1 -- Top-Right Map Piece (1)
    .mob Kobold Miner
    .mob Kobold Tunneler
    .train 398196,1
step
    #sticky
    #label KoboldEnd
    #completewith BernicesNecklace
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .waypoint Elwynn Forest,39.14,82.87,35,0
    .waypoint Elwynn Forest,39.16,84.79,35,0
    .waypoint Elwynn Forest,37.81,85.40,35,0
    .waypoint Elwynn Forest,36.76,83.19,35,0
    .waypoint Elwynn Forest,38.02,81.70,35,0
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r. Loot them for their |cRXP_LOOT_Kobold Candles|r and |cRXP_LOOT_Gold Dust|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto Elwynn Forest,43.131,85.722
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 84 >> Turn in Back to Billy
    .accept 87 >> Accept Goldtooth
    .target Billy Maclure
step << Priest
    #sticky
    #label SharedPain
    #completewith BernicesNecklace
    .goto Elwynn Forest,40.6,81.8
    >>Kill |cRXP_ENEMY_Kobold Miners|r. Loot them for the |T136222:0|t[|cRXP_FRIENDLY_Memory of an Imprisoned Savior|r]
    >>|cRXP_WARN_Don't go out of your way to farm it now, you can get this rune later|r
    .collect 205945,1 -- Memory of an Imprisoned Savior (1)
    .mob Kobold Miner
    .train 402854,1
step << Priest
    #sticky
    #requires SharedPain
    #completewith BernicesNecklace
    .train 402854 >> |cRXP_WARN_Use the|r |T136222:0|t[|cRXP_FRIENDLY_Memory of an Imprisoned Savior|r] |cRXP_WARN_to train|r |T136160:0|t[Shared Pain]
    >>|cRXP_WARN_You must have a|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_buff by typing /kneel in a holy area such as, Northshire Abbey, Stormwind Cathedral, the Altars of Light in Anvilmar, Loch Modan or the Mystic Ward in Ironforge|r
    .use 205945
    .itemcount 205945,1
step
    .goto Elwynn Forest,39.01,82.20,15,0
    .goto Elwynn Forest,39.92,80.11
    >>Enter one of the larger open spaces in Fargodeep Mine
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    #season 2
    #label BernicesNecklace
    .goto 1429,41.732,78.024
    >>Kill |cRXP_ENEMY_Goldtooth|r. Loot him for |cRXP_LOOT_Bernice's Necklace|r << !Warrior !Priest
    >>Kill |cRXP_ENEMY_Goldtooth|r. Loot him for |cRXP_LOOT_Bernice's Necklace|r and the |T134419:0|t|cRXP_LOOT_[Rune of Furious Thunder]|r << Warrior
    >>Kill |cRXP_ENEMY_Goldtooth|r. Loot him for |cRXP_LOOT_Bernice's Necklace|r and the |T136222:0|t|cRXP_LOOT_[Memory of a Dark Purpose]|r << Priest
    >>|cRXP_WARN_Be careful as he usually pulls with the |cRXP_ENEMY_Kobold Miner|r next to him|r
    .complete 87,1 --Bernice's Necklace (1)
    .collect 204809,1 << Warrior -- Rune of Furious Thunder (1)
    .collect 205940,1 << Priest -- Memory of a Dark Purpose (1)
    .mob Goldtooth
    .train 403476,1 << Warrior
    .train 425216,1 << Priest
step
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .waypoint Elwynn Forest,39.14,82.87,35,0
    .waypoint Elwynn Forest,39.16,84.79,35,0
    .waypoint Elwynn Forest,37.81,85.40,35,0
    .waypoint Elwynn Forest,36.76,83.19,35,0
    .waypoint Elwynn Forest,38.02,81.70,35,0
    >>Finish off killing |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r. Loot them for their |cRXP_LOOT_Kobold Candles|r and |cRXP_LOOT_Gold Dust|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step << Rogue
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .waypoint Elwynn Forest,39.14,82.87,35,0
    .waypoint Elwynn Forest,39.16,84.79,35,0
    .waypoint Elwynn Forest,37.81,85.40,35,0
    .waypoint Elwynn Forest,36.76,83.19,35,0
    .waypoint Elwynn Forest,38.02,81.70,35,0
    .xp 9+2000 >> Grind kobolds untill you're 2000 xp into level 9. 
    >> |cRXP_WARN_If you're not close you can turn in the goldtooth quest but grinding mobs is more efficient|r
step << Warrior
    #season 2
    #sticky
    #label GoldtoothRune
    .train 403476 >>|cRXP_WARN_Use the|r |T134419:0|t|cRXP_LOOT_[Rune of Furious Thunder]|r |cRXP_WARN_to learn|r |T136048:0|t[Furious Thunder]
    .use 204809
    .itemcount 204809,1
step << Priest
    #season 2
    #sticky
    #label GoldtoothRune
    >>|cRXP_WARN_You must have a|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_buff by typing /kneel in a holy area such as Northshire Abbey or Stormwind Cathedral|r
    .train 425216 >>|cRXP_WARN_Use the|r |T136222:0|t|cRXP_LOOT_[Memory of a Dark Purpose]|r |cRXP_WARN_to learn|r |T237514:0|t[Void Plague]
    .use 205940
step << Warrior
    #season 2
    #optional
    #requires KoboldRune
--XXREQ Placeholder invis step
step
	#softcore
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer in Goldshire
    .target Spirit Healer
step << skip --logout skip
    #xprate >1.49
    #hardcore
    #optional
    .goto Elwynn Forest,41.29,79.85,-1
    .goto Elwynn Forest,41.75,78.49,-1
    .goto Elwynn Forest,41.91,77.81,-1
    .goto Elwynn Forest,40.15,80.12,-1
    .goto Elwynn Forest,39.90,81.46,-1
    .goto Elwynn Forest,40.86,81.24,-1
    .goto Elwynn Forest,40.32,79.31,-1
    .goto Elwynn Forest,39.30,60.48,30 >>|cRXP_WARN_Jump on top of a shredder, the floating logs, the crates, or the minecart light inside the cave. Perform a logout skip by then logging out and back in|r
    .subzoneskip 57,1 --Fargodeep Mine
    .isOnQuest 47
step
    #hardcore
    #optional
    #completewith Exchange
    .goto Elwynn Forest,42.140,67.254,125 >> Return to Goldshire
    .subzoneskip 87 --Goldshire
step
    #softcore
    #completewith Exchange
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .target Spirit Healer
step
    #label Exchange
    .goto Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remy "Two Times"|r
    >>|cRXP_WARN_Do NOT vendor the|r |T133581:0|t[Bag of Marbles] |cRXP_WARN_reward. This is an incredibly valuable item all the way through to level 60|r
    .turnin 47 >> Turn in Gold Dust Exchange
    .accept 40 >> Accept A Fishy Peril
    .target Remy "Two Times"
step << Priest
    #season 2
    #optional
    #completewith GoldshireEnd
    +|cRXP_WARN_If possible, find a priest in Goldshire with other|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_buffs|r
    >>|cRXP_WARN_type /kneel, then have the other priest type /pray on you whilst you're kneeling for you to gain their|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_buffs which you can use later|r
step
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 62 >> Turn in The Fargodeep Mine
    .accept 76 >> Accept The Jasperlode Mine
    .turnin 40 >> Turn in A Fishy Peril
    .target Marshal Dughan
step
    #optional << Warrior/Rogue/Paladin
    #completewith CandlesEnd
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corina Steele|r
    .vendor >>Vendor Trash
    .target Corina Steele
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>3.3 << Rogue
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>3.8 << Warrior
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>5.0 << Paladin
step << Warrior
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>|cRXP_BUY_Buy a|r |T135321:0|t[Gladius] |cRXP_BUY_from her if you can afford it|r
    .collect 2488,1 --Collect Gladius (1)
    .disablecheckbox
--  .money <0.0536
    .target Corina Steele
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior
    #completewith CandlesEnd
    +|cRXP_WARN_Equip the|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>|cRXP_BUY_Buy a second|r |T135641:0|t[Stiletto] |cRXP_BUY_from her if you can afford it|r
    .collect 2494,1 --Collect Stiletto (1)
    .disablecheckbox
    .target Corina Steele
--   .money <0.0400
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith CandlesEnd
    +|cRXP_WARN_Equip the|r |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith next
    .engrave 10,399960 >> Open your character sheet and engrave |T132304:0|t[|cRXP_FRIENDLY_Mutilate|r] on gloves. It is by far the strongest rune for fighting mobs.
step << Paladin
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>|cRXP_BUY_Buy a|r |T133053:0|t[Wooden Mallet] |cRXP_BUY_from her if you can afford it|r
    .collect 2493,1 --Collect Wooden Mallet (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0631
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #completewith CandlesEnd
    +|cRXP_WARN_Equip the|r |T133053:0|t[Wooden Mallet]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #season 2
    #xprate >1.59
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Wilhelm|r
    >>|cRXP_WARN_Train|r |T135949:0|t[Purify] |cRXP_WARN_in order to acquire|r |T133815:0|t[Engrave Chest - Aegis] |cRXP_WARN_soon|r
    .train 1152 >>Train |T135949:0|t[Purify]
    .trainer >> Train your class spells
    .target Brother Wilhelm
step << Paladin
    #season 0,1
    #xprate >1.59
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Wilhelm|r
    .trainer >> Train your class spells
    .target Brother Wilhelm
step << Warrior
    #xprate >1.59
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Train your class spells
    .target Lyria Du Lac
step
    #label CandlesEnd
    #requires GoldtoothRune << Warrior/Priest --Season 2
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Pestle|r
    .turnin 60 >> Turn in Kobold Candles
    .accept 61 >> Accept Shipment to Stormwind
    .turnin 107 >> Turn in Note to William
    .accept 112 >> Accept Collecting Kelp
    .target William Pestle
step << Warrior
    #xprate <1.59
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Train your class spells
    .target Lyria Du Lac
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
    .vendor >> |cRXP_BUY_Buy the|r |T133738:0|t[Grimoire of Firebolt (Rank 2)] |cRXP_BUY_from her if you can afford it. If not you can buy it later|r
    .target Cylina Darkheart
    .money <0.100
    .itemcount 16302,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20270,1 --Blood Pact (Rank 1)
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
    #label GoldshireEnd << Priest --Season 2
    .goto Elwynn Forest,43.96,65.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brog Hamfist|r
    .vendor >> |cRXP_WARN_Buy a|r |T133634:0|t[Small Brown Pouch] |cRXP_WARN_if needed|r
	.target Brog Hamfist
    .money <0.2
step
    #completewith next
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Farley|r
    .vendor >> |cRXP_BUY_Buy up to 20|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him if you can afford it|r << !Warrior !Rogue !Paladin
    .vendor >> |cRXP_BUY_Buy up to 20|r |T133995:0|t[Dalaran Sharp] |cRXP_BUY_from him if you can afford it|r << Warrior/Rogue
    .vendor >> |cRXP_BUY_Buy up to 10|r |T133995:0|t[Dalaran Sharp] |cRXP_BUY_and 10|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him if you can afford it|r << Paladin
    .target Innkeeper Farley
    .money < 0.1
step << Warrior
    #season 2
    #sticky
    #label MurlocRune
    #loop
    .goto 1429,50.833,65.453,0
    .goto 1429,57.435,63.662,0
    .goto 1429,54.236,66.888,0
    .waypoint 1429,50.833,65.453,50,0
    .waypoint 1429,52.020,65.177,50,0
    .waypoint 1429,54.144,62.468,50,0
    .waypoint 1429,56.332,63.538,50,0
    .waypoint 1429,57.162,62.157,50,0
    .waypoint 1429,57.435,63.662,50,0
    .waypoint 1429,58.237,64.888,50,0
    .waypoint 1429,56.897,67.017,50,0
    .waypoint 1429,55.523,66.707,50,0
    .waypoint 1429,55.203,66.171,50,0
    .waypoint 1429,54.236,66.888,50,0
    >>Kill |cRXP_ENEMY_Murlocs|r and |cRXP_ENEMY_Murloc Streamrunners|r. Loot them for a |T134169:0|t|cRXP_LOOT_[Severed Murloc Head]|r
    >>|cRXP_WARN_This is one of three items you need to unlock your|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r] |cRXP_WARN_for when you get to Stormwind at level 10|r
    .collect 204477,1 -- Severed Murloc Head (1)
    .mob Murloc Streamrunner
	.mob Murloc
    .train 403475,1
step << Rogue
    #season 2
    #sticky
    #label MurlocRune
    #completewith JasperlodeExplore
    #loop
    .goto 1429,50.833,65.453,0
    .goto 1429,57.435,63.662,0
    .goto 1429,54.236,66.888,0
    .waypoint 1429,50.833,65.453,50,0
    .waypoint 1429,52.020,65.177,50,0
    .waypoint 1429,54.144,62.468,50,0
    .waypoint 1429,56.332,63.538,50,0
    .waypoint 1429,57.162,62.157,50,0
    .waypoint 1429,57.435,63.662,50,0
    .waypoint 1429,58.237,64.888,50,0
    .waypoint 1429,56.897,67.017,50,0
    .waypoint 1429,55.523,66.707,50,0
    .waypoint 1429,55.203,66.171,50,0
    .waypoint 1429,54.236,66.888,50,0
    >>|T133644:0|t[Pick Pocket] |cRXP_ENEMY_Murloc Steamrunners|r and |cRXP_ENEMY_Murlocs|r. Loot them for the |T134269:0|t|cRXP_LOOT_[Bottom-Right Map Piece]|r
    >>|cRXP_WARN_You must be|r |T132320:0|t[Stealthed] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    >>|cRXP_ENEMY_NOTE:|r |cRXP_WARN_All of the|r |T134327:0|t[|cRXP_LOOT_Map Piece|r] |cRXP_WARN_steps are for unlocking the|r |T134536:0|t[Quick Draw] |cRXP_WARN_rune.|r |cRXP_WARN_It's useful but not mandatory for leveling and becomes obsolete around level 22 after unlocking your poisons. Feel free to skip all of those steps if you aren't interested in getting the rune ASAP and want to save some time in the short term.|r
    .collect 203786,1 -- Bottom-Right Map Piece (1)
    .mob Murloc Streamrunner
    .mob Murloc
--   .mob Murloc Forager
--    .mob Murloc Lurker
    .train 398196,1
step
    #loop
    .goto 1429,50.833,65.453,0
    .goto 1429,57.435,63.662,0
    .goto 1429,54.236,66.888,0
    .goto 1429,50.833,65.453,50,0
    .goto 1429,52.020,65.177,50,0
    .goto 1429,54.144,62.468,50,0
    .goto 1429,56.332,63.538,50,0
    .goto 1429,57.162,62.157,50,0
    .goto 1429,57.435,63.662,50,0
    .goto 1429,58.237,64.888,50,0
    .goto 1429,56.897,67.017,50,0
    .goto 1429,55.523,66.707,50,0
    .goto 1429,55.203,66.171,50,0
    .goto 1429,54.236,66.888,50,0
    >>Kill |cRXP_ENEMY_Murlocs|r and |cRXP_ENEMY_Murloc Streamrunners|r. Loot them for |cRXP_LOOT_Crystal Kelp Fronds|r
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
	.mob Murloc
	.mob Murloc Streamrunner
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone4
    #completewith JasperlodeExplore
    >>Kill |cRXP_ENEMY_Kobold Miners|r. Open |cRXP_PICK_Battered Chests|r. Loot them for their |T135232:0|t|cRXP_LOOT_[Rough Stones]|r << Warrior/Rogue
    >>Kill |cRXP_ENEMY_Kobold Miners|r. Open |cRXP_PICK_Battered Chests|r. Loot them for their |T135232:0|t|cRXP_LOOT_[Rough Stones]|r and |T132889:0|t|cRXP_LOOT_[Linen Cloth]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
    .mob Kobold Miner
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone4
    #label RoughStoneCraft4
    #completewith JasperlodeExplore
    +|T136241:0|t[Blacksmith] |cRXP_WARN_the|r |T135232:0|t|cRXP_LOOT_[Rough Stones]|r |cRXP_WARN_into|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    +|T136241:0|t[Blacksmith] |cRXP_WARN_the|r |T135232:0|t|cRXP_LOOT_[Rough Stones]|r |cRXP_WARN_and|r |T132889:0|t|cRXP_LOOT_[Linen Cloth]|r |cRXP_WARN_into|r |T135255:0|t[Rough Weightstones] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft4
    #completewith JasperlodeExplore
    .cast 2828 >>|cRXP_WARN_Use the|r |T135248:0|t[Rough Sharpening Stone] |cRXP_WARN_on your current weapon|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Use the|r |T135255:0|t[Rough Weightstone] |cRXP_WARN_on your current weapon|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
step << Priest
    #sticky
    #label SharedPainTwo
    #completewith JasperlodeExplore
    .goto Elwynn Forest,40.6,81.8
    >>Kill |cRXP_ENEMY_Kobold Miners|r. Loot them for the |T136222:0|t[|cRXP_FRIENDLY_Memory of an Imprisoned Savior|r]
    .collect 205945,1 -- Memory of an Imprisoned Savior (1)
    .mob Kobold Miner
    .train 402854,1
step << Priest
    #sticky
    #requires SharedPainTwo
    #completewith JasperlodeExplore
    .train 402854 >> |cRXP_WARN_Use the|r |T136222:0|t[|cRXP_FRIENDLY_Memory of an Imprisoned Savior|r] |cRXP_WARN_to train|r |T136160:0|t[Shared Pain]
    >>|cRXP_WARN_You must have a|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_buff by typing /kneel in a holy area such as, Northshire Abbey, Stormwind Cathedral, the Altars of Light in Anvilmar, Loch Modan or the Mystic Ward in Ironforge|r
    .use 205945
    .itemcount 205945,1
step
    #optional
    #requires MurlocRune << Warrior/Rogue --Season 2
    #label Jasperlode
    #completewith JasperlodeExplore
    .goto Elwynn Forest,61.654,53.608,15 >> Enter the Jasperlode Mine
step << Mage
    #season 2
    #sticky
    #loop
    #label JasperlodeRune
    .goto 1429,60.599,50.811,0
    .goto 1429,60.789,56.641,0
    .goto 1429,64.528,56.678,0
    .waypoint 1429,62.656,54.266,45,0
    .waypoint 1429,62.121,55.579,45,0
    .waypoint 1429,60.789,56.641,45,0
    .waypoint 1429,62.587,57.974,45,0
    .waypoint 1429,63.724,58.199,45,0
    .waypoint 1429,64.528,56.678,45,0
    .waypoint 1429,62.656,54.266,45,0
    .waypoint 1429,60.599,50.811,45,0
    .waypoint 1429,61.296,51.676,45,0
    >>Kill |cRXP_ENEMY_Kobold Geomancers|r. Loot them for the |T134939:0|t|cRXP_LOOT_[Spell Notes: MILEGIN VALF]|r
    .collect 203752,1
    .mob Kobold Geomancer
    .train 401768,1
step
    #label JasperlodeExplore
    .goto Elwynn Forest,61.20,51.46,15,0
    .goto Elwynn Forest,60.72,50.85,15,0
    .goto Elwynn Forest,60.39,50.16
    >>Follow the path through middle to explore Jasperlode Mine
    .complete 76,1 --Scout through the Jasperlode Mine
step << Priest
    .goto Elwynn Forest,62.2,57.4
    >>Kill |cRXP_ENEMY_Kobold Miners|r. Loot them for the |T136222:0|t[|cRXP_FRIENDLY_Memory of an Imprisoned Savior|r]
    .collect 205945,1 -- Memory of an Imprisoned Savior (1)
    .mob Kobold Miner
    .train 402854,1
step << Priest
    #optional
    #completewith next
    .train 402854 >> |cRXP_WARN_Use the|r |T136222:0|t[|cRXP_FRIENDLY_Memory of an Imprisoned Savior|r] |cRXP_WARN_to train|r |T136160:0|t[Shared Pain]
    >>|cRXP_WARN_You must have a|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_buff by typing /kneel in a holy area such as, Northshire Abbey, Stormwind Cathedral, the Altars of Light in Anvilmar, Loch Modan or the Mystic Ward in Ironforge|r
    .use 205945
    .itemcount 205945,1
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone5
    #completewith Find
    >>Kill |cRXP_ENEMY_Kobold Miners|r. Open |cRXP_PICK_Battered Chests|r. Loot them for their |T135232:0|t|cRXP_LOOT_[Rough Stones]|r << Warrior/Rogue
    >>Kill |cRXP_ENEMY_Kobold Miners|r. Open |cRXP_PICK_Battered Chests|r. Loot them for their |T135232:0|t|cRXP_LOOT_[Rough Stones]|r and |T132889:0|t|cRXP_LOOT_[Linen Cloth]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
    .mob Kobold Miner
    .subzoneskip 54,1
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone5
    #label RoughStoneCraft5
    #completewith Find
    +|T136241:0|t[Blacksmith] |cRXP_WARN_the|r |T135232:0|t|cRXP_LOOT_[Rough Stones]|r |cRXP_WARN_into|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    +|T136241:0|t[Blacksmith] |cRXP_WARN_the|r |T135232:0|t|cRXP_LOOT_[Rough Stones]|r |cRXP_WARN_and|r |T132889:0|t|cRXP_LOOT_[Linen Cloth]|r |cRXP_WARN_into|r |T135255:0|t[Rough Weightstones] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
    .subzoneskip 54,1
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft5
    #completewith Find
    .cast 2828 >>|cRXP_WARN_Use the|r |T135248:0|t[Rough Sharpening Stone] |cRXP_WARN_on your current weapon|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Use the|r |T135255:0|t[Rough Weightstone] |cRXP_WARN_on your current weapon|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
    .subzoneskip 54,1
step << Paladin
    #season 2
    #completewith next
    .goto Elwynn Forest,61.97,47.31
    .cast 1152 >>|cRXP_WARN_Cast|r |T135949:0|t[Purify] |cRXP_WARN_on the |cRXP_FRIENDLY_Wounded Adventurer|r inside|r
    .target Wounded Adventurer
    .train 425619,1
    .train 1152,3 --Purify Trained
step << Paladin
    #season 2
    .goto Elwynn Forest,61.97,47.31
    >>|cRXP_WARN_Talk to the |cRXP_FRIENDLY_Wounded Adventurer|r after casting|r |T135949:0|t[Purify] |cRXP_WARN_on him to be given the|r |T134419:0|t[Rune of Aegis]
    .collect 205685,1 --Rune of Aegis (1)
    .target Wounded Adventurer
    .skipgossip
    .train 425619,1
    .train 1152,3 --Purify Trained
--XX gossipoption 109556
step << Paladin
    #season 2
    #completewith Find
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t[Rune of Aegis] |cRXP_WARN_to learn|r |T133815:0|t[Engrave Chest - Aegis]
    .use 205685
    .itemcount 205685,1 --Rune of Aegis (1)
    .train 425619,1
    .train 1152,3 --Purify Trained
step << Mage
    #season 2
    #requires JasperlodeRune
    #completewith Find
    .train 401768 >>|cRXP_WARN_Use the|r |T134939:0|t|cRXP_LOOT_[Spell Notes: MILEGIN VALF]|r |cRXP_WARN_to learn|r |T135820:0|t[Living Flame]
    .use 203752
step << Priest
    #optional
    #label ExitJasperlode
    #completewith Find
    .goto 1429,61.820,53.871,15 >> Exit Jasperlode Mine
    .subzoneskip 54,1
step << Priest
    #season 2
    #loop
    .goto 1429,74.015,51.810,0
    .goto 1429,72.561,56.666,55,0
    .goto 1429,72.396,54.428,55,0
    .goto 1429,74.015,51.810,55,0
    .goto 1429,75.155,50.751,55,0
    .goto 1429,76.815,48.877,55,0
    .goto 1429,76.676,53.898,55,0
    >>Kill |cRXP_ENEMY_Defias Rogue Wizards|r. Loot them for the |T135975:0|t|cRXP_LOOT_[Prophecy of a Desecrated Citadel]|r
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Defias Rogue Wizard
    .train 402852,1
step << Priest
    #season 2
    #optional
    #completewith BundleOT
    .train 402852 >> |cRXP_WARN_Use the|r |T135975:0|t|cRXP_LOOT_[Prophecy of a Desecrated Citadel]|r |cRXP_WARN_to learn|r |T237570:0|t[Homunculi]
    >>|cRXP_WARN_You must have 2|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_buffs by typing /kneel in a holy area such as, Northshire Abbey, Stormwind Cathedral, the Altars of Light in Anvilmar, Loch Modan or the Mystic Ward in Ironforge|r
    .use 205947
    .itemcount 205947,1
step << Rogue
    #season 2
    #label GnollMapPiece
    .goto 1429,68.680,54.635,60,0
    .goto 1429,68.135,48.678,60,0
    .goto 1429,68.102,45.049,60,0
    .goto 1429,66.618,40.849
    >>|T133644:0|t[Pick Pocket] |cRXP_ENEMY_Riverpaw Outrunners|r and |cRXP_ENEMY_Riverpaw Runts|r. Loot them for the |T134327:0|t[|cRXP_LOOT_Bottom-Left Map Piece]|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    >>|cRXP_ENEMY_NOTE:|r |cRXP_WARN_All of the|r |T134327:0|t[|cRXP_LOOT_Map Piece|r] |cRXP_WARN_steps are for unlocking the|r |T134536:0|t[Quick Draw] |cRXP_WARN_rune.|r |cRXP_WARN_It's useful but not mandatory for leveling and becomes obsolete around level 22 after unlocking your poisons. Feel free to skip all of those steps if you aren't interested in getting the rune ASAP and want to save some time in the short term.|r
    >>|cRXP_WARN_If you decide to skip getting the rune you can skip the run to redridge for now and just hearthstone or deathskip back straight to Goldshire|r
    .collect 203787,1 -- Bottom-Left Map Piece (1)
    .mob Riverpaw Outrunner
    .mob Riverpaw Runt
    .train 398196,1
step << Rogue
    #season 2
    #softcore
    #completewith AcceptBundle
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .target Spirit Healer
    .train 398196,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Rogue
    #softcore
    #season 2
    #optional
    .goto Elwynn Forest,83.283,66.089
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rallic Finn|r
    .vendor >> Vendor trash and repair
    .target Rallic Finn
    .train 398196,1
    .isQuestAvailable 5545
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
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
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
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
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Rogue
    #season 2
    #completewith next
    .goto Elwynn Forest,80.365,79.134
    .cast 401617 >>|cRXP_WARN_Use the|r |T134269:0|t[|cRXP_LOOT_Elwynn Treasure Map|r] |cRXP_WARN_at the arrow location. This will cause a |cRXP_PICK_Buried Treasure|r to pop up|r
    .use 203750
    .itemcount 203750,1
    .train 398196,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Rogue
    #season 2
    .goto Elwynn Forest,80.365,79.134
    >>Open the |cRXP_PICK_Buried Treasure|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Draw|r]
    .collect 203991,1 -- Rune of Quick Draw (1)
    .train 398196,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Rogue
    #season 2
    .train 400095 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Draw|r] |cRXP_WARN_to train|r |T134536:0|t[Quick Draw]
    .use 203991
    .itemcount 203991,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Priest
    #softcore
    #label EVDeathskip
    #completewith RedridgeS
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .target Spirit Healer
    .zoneskip Redridge Mountains
--XX not worth deathskipping as a warlock due to having to resumm pet
step << Priest/Rogue
    #label RedridgeS
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Travel to Redridge Mountains
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Priest/Rogue
    #optional
    .goto Redridge Mountains,17.4,69.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Parker|r
    .accept 244 >> Accept Encroaching Gnolls
    .target Guard Parker
    .xp <11,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Priest/Rogue
    #softcore
    #completewith RRFP
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .target Spirit Healer
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Priest/Rogue
    #hardcore
    #optional
    #completewith RRFP
    .goto Redridge Mountains,18.581,69.208,15,0
    .goto Redridge Mountains,23.325,71.373,25,0
    .goto Redridge Mountains,29.565,67.930,25,0
    .goto Redridge Mountains,30.590,59.410,15 >>|cRXP_WARN_BE CAREFUL: Stick to the main road and avoid any close mobs en-route|r
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Priest/Rogue
    #optional
    .goto Redridge Mountains,30.73,59.99
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Feldon|r
    .turnin 244 >> Turn in Encroaching Gnolls
    .target Deputy Feldon
    .isOnQuest 244
    .xp <11,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Priest/Rogue
    #label RRFP
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
    .target Ariena Stormfeather
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step
    #optional
    #completewith CollectKelp
    .hs >> Hearth to Goldshire
    .subzoneskip 87
step
    #label CollectKelp
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Pestle|r
    .turnin 112 >> Turn in Collecting Kelp
    .timer 9,Collecting Kelp RP
    .accept 114 >> Accept The Escape
    .target William Pestle
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
    .turnin 76 >> Turn in The Jasperlode Mine
    .accept 239 >> Accept Westbrook Garrison Needs Help!
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
    .xp >12,1
step << Paladin
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Wilhelm|r
    .accept 2998 >> Accept Tome of Divinity
    .trainer >> Train your class spells
    .target Brother Wilhelm
    .xp <12,1
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
    #completewith PrincessFinish
    #optional
    .abandon 59 >> Abandon Cloth and Leather Armor
step << Warrior
    #season 2
    #sticky
    #completewith GoldtoothEnd
    >>Be on the lookout for |cRXP_FRIENDLY_Wandering Swordsman|r while running. If you find him you can challenge him to a duel which will award you with the rune of |T132334:0|t[|cRXP_FRIENDLY_Blood Frenzy|r]
    >>|cRXP_WARN_He has multiple spawn points and can only be present in one of them at the time. Skip this step if he's not there|r  
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 412507,1
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
    #label GoldtoothEnd
    .goto Elwynn Forest,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .turnin 87 >> Turn in Goldtooth
    .turnin 88 >> Turn in Princess Must Die! << Rogue
    .target "Auntie" Bernice Stonefield
step
    #optional
    #completewith next
    .abandon 88 >> Abandon Princess Must Die! since you haven't completed the quest
step << Warrior
    #season 2
    .goto Elwynn Forest,30.0,73.4
    >>Checked the marked spot for the |cRXP_FRIENDLY_Wandering Swordsman|r. If he's there challenge him to a duel which will award you with the rune of |T132334:0|t[|cRXP_FRIENDLY_Blood Frenzy|r]
    >>|cRXP_WARN_He has multiple spawn points and can only be present in one of them at the time. Skip this step if he's not there|r  
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 412507,1
step
    #optional
    #completewith Garrison
    .goto Elwynn Forest,24.82,76.25,80 >> Travel to Westbrook Garrison


----Start of Paladin 1.5x Martyrdom Rune section----


step << Paladin
    #xprate >1.49
    #season 2
    #optional
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 239 >> Turn in Westbrook Garrison Needs Help!
    .target Deputy Rainer
step << Paladin
    #xprate >1.59
    #season 2
    #loop
    .goto Elwynn Forest,27.0,86.7,0
    .goto Elwynn Forest,26.1,89.9,0
    .goto Elwynn Forest,27.0,93.9,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    >>Kill |cRXP_ENEMY_Riverpaw Runts|r and |cRXP_ENEMY_Riverpaw Outrunners|r. Loot them for |T132889:0|t[Linen Cloth]. You will need 10 for a quest soon
    .collect 2589,10,1644,1 --Linen Cloth (10)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .isOnQuest 11
    .isQuestAvailable 1644

----Start of Warrior Gnoll Head section----


step << Warrior
    #xprate >1.49
    #season 2
    #label Garrison
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 239 >> Turn in Westbrook Garrison Needs Help!
    .target Deputy Rainer
step << Warrior
    #season 2
    .goto Elwynn Forest,25.3,70.2
    >>Checked the marked spot for the |cRXP_FRIENDLY_Wandering Swordsman|r. If he's there challenge him to a duel which will award you with the rune of |T132334:0|t[|cRXP_FRIENDLY_Blood Frenzy|r]
    >>|cRXP_WARN_He has multiple spawn points and can only be present in one of them at the time. Skip this step if he's not there|r  
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 412507,1
step << Warrior
    #season 2
    .goto Elwynn Forest,22.3,73.3
    >>Checked the marked spot for the |cRXP_FRIENDLY_Wandering Swordsman|r. If he's there challenge him to a duel which will award you with the rune of |T132334:0|t[|cRXP_FRIENDLY_Blood Frenzy|r]
    >>|cRXP_WARN_He has multiple spawn points and can only be present in one of them at the time. Skip this step if he's not there|r  
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 412507,1
step << Warrior
    #xprate >1.49
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
    >>Kill |cRXP_ENEMY_Riverpaw Runts|r and |cRXP_ENEMY_Riverpaw Outrunners|r. Loot them for a |T134163:0|t[|cRXP_LOOT_Severed Gnoll Head|r]
    >>|cRXP_WARN_This is one of three items you need to unlock your|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r] |cRXP_WARN_for when you get to Stormwind at level 10|r
    .collect 204478,1 -- Severed Gnoll Head (1)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .train 403475,1
step
    #label Garrison
    #season 0,1 << Warrior/Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 239 >> Turn in Westbrook Garrison Needs Help!
    .goto Elwynn Forest,24.234,74.450
    .target +Deputy Rainer
    >>Click the |cRXP_PICK_Wanted Poster|r << Warlock
    .accept 176 >> Accept Wanted: "Hogger" << Warlock
    .goto Elwynn Forest,24.548,74.672 << Warlock
step << Warlock
    #completewith GnollEnd
    >>Kill |cRXP_ENEMY_Riverpaw Runts|r and |cRXP_ENEMY_Riverpaw Outrunners|r while running. Loot them for the |T134939:0|t[|cRXP_LOOT_Gold Pickup Schedule|r]
    .use 1307 >>|cRXP_WARN_Use the |T134939:0|t[|cRXP_LOOT_Gold Pickup Schedule|r] to start the quest|r
    >>|cRXP_WARN_The|r |T134939:0|t[|cRXP_LOOT_Gold Pickup Schedule|r] |cRXP_WARN_is a very rare drop. Ignore this step if you don't get it|r
    >>|cRXP_ENEMY_Gruff Swiftbite|r |cRXP_WARN_a rare spawn, does have a 100% drop chance|r
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >> Accept The Collector
    .unitscan Gruff Swiftbite
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
    >>|cRXP_WARN_Use|r |T136163:0|t[Drain Soul] |cRXP_WARN_as hogger is about to die. If he dies while under the effect of it you will receive a|r |T134085:0|t[Tainted Soul Shard] |cRXP_WARN_which is used for unlocking the rune of|r |T136169:0|t[Soul Siphon]
    >>|cRXP_WARN_Skip this step if you fail to get the soul shard or Hogger isn't up. The rune is not very strong|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .collect 205019,1 --Tainted Soul shard
    .disablecheckbox
    .unitscan Hogger
step << !Warlock
    #optional
    #completewith WestEntry
    .abandon 123 >> Abandon The Collector
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
step << !Paladin !Warlock
#xprate >1.49
    #label WestEntry
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verna Furlbrow|r
    >>|cRXP_WARN_Do not accept the other quests|r
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
step << !Paladin !Warlock
#xprate >1.49
    .goto Westfall,56.416,30.519
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r inside
    >>|cRXP_WARN_Do not accept the other quests|r
    .turnin 36 >> Turn in Westfall Stew
    .target Salma Saldean
step << !Paladin !Warlock
    .goto Westfall,56.04,31.23
    .target Farmer Saldean
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
    .accept 9 >> Accept The Killing Fields
step
    #xprate >1.49 << !Paladin
    #xprate 1.49-1.59 << Paladin
    #optional
    #requires Fields
    .goto Westfall,56.327,47.520
    .xp 9+5410 >> Grind to 5410+/6500xp
    .subzoneskip 108
step << Paladin
    #xprate >1.59
    #optional
    .goto 1436,48.249,46.729
    .xp 11+5360 >> Grind to 5360+/8800xp
--XX 625+210+85+800 = 1720 x2 = 3440
step << Paladin/Warlock
    .goto Westfall,62.3,35.4
    .zone Westfall >> Swim across the river to Westfall
step
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer
-- .subzoneskip 108
step
    #xprate >1.49
    .goto Westfall,56.327,47.520
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 109 >> Turn in Report to Gryan Stoutmantle
    .target Gryan Stoutmantle
step
    .goto Westfall,57.002,47.169
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Lewis|r
    .accept 6181 >> Accept A Swift Message << Human
    .target Quartermaster Lewis
    .isQuestAvailable 6181 << Human
step
    .goto Westfall,52.86,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Heather|r
    >>|cRXP_BUY_Buy up to 20|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from her. They are very cheap level 5 food|r
    .collect 4592,20,314,1 --Longjaw Mud Snapper (20)
	.target Innkeeper Heather
step
    .goto Westfall,54.00,53.00
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Galiaan|r
    .target Scout Galiaan
    .accept 153 >> Accept Red Leather Bandanas
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
step << skip --Human Paladin
    #season 2
    #xprate >1.59
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stephanie Turner|r
    .turnin 1643 >> Turn in The Tome of Divinity
    .accept 1644 >> Accept The Tome of Divinity
    .turnin 1644 >> Turn in The Tome of Divinity
    --.accept 1780 >> Accept The Tome of Divinity
    .target Stephanie Turner
    .isQuestTurnedIn 1643
    .xp 12,1
step
    #xprate >1.49
    #season 2
    #optional
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Pestle|r
    .turnin 61,1 >> Turn in Shipment to Stormwind
    >>|cRXP_WARN_We choose the|r |T132383:0|t[Explosive Rockets] |cRXP_WARN_as the reward. It deals decent damage, and can be used for "Split pulling" which is incredibly useful|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Click here for video reference on "Split pulling". It is a short video and invaluable to learn|r
    .target Morgan Pestle
    .isQuestComplete 61
step << !Rogue
    #optional << Warlock/Warrior
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Train 1h Swords and Staves << Warlock
    .trainer >>Train Staves << Priest
    .trainer >>Train 2h Swords << Warrior/Paladin
    .target Woo Ping
    .money <0.2 << Warlock
    .money <0.3 << Warrior/Paladin
step << Warlock
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Train Staves
    .target Woo Ping
step
    .goto StormwindClassic,52.623,65.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Allison|r
    .home >> Set your Hearthstone to Stormwind City
    .target Innkeeper Allison
step << Human Paladin
    #xprate >1.59
    #optional
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 2998 >> Turn in Tome of Divinity
    .accept 1641 >> Accept The Tome of Divinity
    .turnin 1641 >> Turn in The Tome of Divinity
    .target Duthorian Rall
    .isOnQuest 2998
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
    .accept 1641 >> Accept The Tome of Divinity
    .turnin 1641 >> Turn in The Tome of Divinity
    .target Duthorian Rall
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|cRXP_WARN_Use the |T133739:0|t[|cRXP_LOOT_The Tome of Divinity|r] to start the quest|r
    .accept 1642 >>Accept The Tome of Divinity
    .use 6775
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1642 >>Turn in The Tome of Divinity
    .accept 1643 >>Accept The Tome of Divinity
    .target Duthorian Rall
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .train 19834 >> Train your class spells
    .target Arthur the Faithful
    .xp <12,1
    .xp >14,1
step << Human Paladin
    #xprate >1.59
    #optional
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .train 647 >> Train your class spells
    .target Arthur the Faithful
    .xp <14,1
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stephanie Turner|r
    .turnin 1643 >> Turn in The Tome of Divinity
    .accept 1644 >> Accept The Tome of Divinity
    .turnin 1644 >> Turn in The Tome of Divinity
    --.accept 1780 >> Accept The Tome of Divinity
    .target Stephanie Turner
----XX if ever in the future, add Level 12 xp grind for 1.5x Tome of Divinity




----Warlock Elwynn Voidwalker Section Start----




step << Warlock
    #optional
    #completewith GakinStart
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Travel to The Slaughtered Lamb and go downstairs
step << Warlock
    #xprate >1.59
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
    .train 705 >> Train your class spells
    .target Ursula Deline
    .xp <12,1
    .xp >14,1
step << Warlock
    #xprate >1.59
    #optional
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
    .train 689 >> Train your class spells
    .target Ursula Deline
    .xp <14,1
step << Warlock
    #label GakinStart
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1685 >> Turn in Gakin's Summons
    .accept 1688 >> Accept Surena Caledon
    .target Gakin the Darkbinder
step << Warlock
    #softcore
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r by using |T136126:0|t[Life Tap] and standing on the Bonfire next to you
    .target Spirit Healer
--  .subzoneskip 87
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
    #optional
    #completewith LockGoldshireEnd
    >>Look for any |cRXP_ENEMY_critter|r running around near the spirit healer. Cast |T136163:0|t[Drain Soul] on it to receive a |T134095:0|t[Pure Soul Shard]
    .collect 205020,1 --Pure Soul Shard (1)
    .itemcount 205019,1 --Skip if no Hogger shard
    .train 403920,1
step << Warlock
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    >>|cRXP_WARN_Choose the|r |T135145:0|t[Balanced Fighting Stick]
    .turnin 176 >> Turn in Wanted: "Hogger"
    .turnin 123 >> Turn in The Collector
    .target Marshal Dughan
    .isOnQuest 123
step << Warlock
    #label WLHoggerEnd
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    >>|cRXP_WARN_Choose the|r |T135145:0|t[Balanced Fighting Stick]
    .turnin 176 >> Turn in Wanted: "Hogger"
    .target Marshal Dughan
step << Warlock
    #label SoulSiphon
    .goto Elwynn Forest,44.0,66.2
    >>|cRXP_WARN_Head to the basement of the Goldshire Inn|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Damien Kane|r. Complete his dialogue to trade the soul shards for |T134419:0|t[Rune of Soul Siphon]
    .collect 205022,1
    .train 403920,1
    .itemcount 205020,1 --Pure Soul Shard (1)
    .itemcount 205019,1 --Tainted Soul Shard (1)
step << Warlock
    #optional
    #requires SoulSiphon
    #completewith next
    .train 403920 >> Use the |T134419:0|t[Rune of Soul Siphon] to train |T136169:0|t[Soul Siphon]
    .use 205022
    .train 403920,1
    .itemcount 205022,1
step << Warlock
    #optional
    #completewith WLBandanaEnd
    +|cRXP_WARN_Equip the|r |T135145:0|t[Balanced Fighting Stick]
    .use 6215
    .itemcount 6215,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
step << Warlock
    #label LockGoldshireEnd
    --Invisible step
step << Warlock
    #optional
    >>|cRXP_WARN_Grind en-route. Try to level your|r |T135145:0|t[Balanced Fighting Stick] |cRXP_WARN_skill|r
    .subzone 62 >> Travel to the Brackwell Pumpkin Patch
    .isOnQuest 1688
step << Warlock
    #xprate <1.5
    #optional
    #completewith SChoker
    >>Kill |cRXP_ENEMY_Defias Bandits|r. Loot them for the |T134939:0|t[|cRXP_LOOT_Westfall Deed|r]
    .use 1972>>|cRXP_WARN_Use the |T134939:0|t[|cRXP_LOOT_Westfall Deed|r] to start the quest|r
    >>|cRXP_WARN_The|r |T134939:0|t[|cRXP_LOOT_Westfall Deed|r] |cRXP_WARN_is a very rare drop. Ignore this step if you don't get it|r
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> Accept Furlbrow's Deed
step << Warlock
    #label SChoker
    .goto Elwynn Forest,71.10,80.66
    >>Kill |cRXP_ENEMY_Surena Caledon|r. Loot her for her |cRXP_LOOT_Choker|r
    >>|cRXP_WARN_Focus on killing |cRXP_ENEMY_Surena Caledon|r very quickly|r
    >>|cRXP_WARN_Cast|r |T136183:0|t[Fear] |cRXP_WARN_on |cRXP_ENEMY_Morgan the Collector|r continously|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step << Warlock
    #optional
    #label WlockRedridge
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Travel to Redridge Mountains
    >>|cRXP_WARN_Grind en-route. Make sure you have at least 2|r |T134075:0|t[Soul Shards] |cRXP_WARN_by using|r |T136163:0|t[Drain Soul]
    .collect 6265,2 --Soul Shard (2)
step << Warlock
    .goto Redridge Mountains,17.4,69.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Parker|r
    .accept 244 >> Accept Encroaching Gnolls
    .target Guard Parker
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
    .target Ariena Stormfeather
step << Warlock
    .hs >> Hearthstone to Stormwind, skip this step and take the flight path if it's on cooldown
step << Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fly Stormwind >> Fly to Stormwind
    .target Ariena Stormfeather
    .zoneskip Stormwind City
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


----Warlock Elwynn Voidwalker Section End----


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
step << Human
    #xprate >1.49
    #label Continue
    .goto StormwindClassic,74.312,47.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osric Strang|r
    .turnin 6281 >> Turn in Continue to Stormwind
    .accept 6261 >> Accept Dungar Longdrink
    .target Osric Strang
step << Rogue
    #xprate >1.59
    .goto 1453,74.645,52.818
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne the Night Man|r
    >>|cRXP_WARN_Make sure you have at least 24 silver left after the training. You will need it to get a Gun in Ironforge in order to be able to use your runes|r
    .train 674 >> Train |T132147:0|t[Dual Wield]
    .train 2983 >> Train |T132307:0|t[Sprint]
    .target Osborne the Night Man
    .xp <10,1
    .xp >12,1
step << Rogue
    #xprate >1.59
    .goto 1453,74.645,52.818
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne the Night Man|r
    >>|cRXP_WARN_Make sure you have at least 24 silver left after the training. You will need it to get a Gun in Ironforge in order to be able to use your runes|r
    .train 1766 >> Train your class spells
    .target Osborne the Night Man
    .xp <12,1
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
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harry Burlguard|r
    .turnin 1665 >> Turn in Bartleby's Mug
    .target Harry Burlguard
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
step << Paladin
    .goto Stormwind City,74.182,7.465 << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r << Alliance
    >>Buy the |T133745:0|t|cRXP_LOOT_[Testament of Martyrdom]|r from him, use it to train |T135961:0|t[Seal of Martyrdom] << Paladin
    .collect 226398,1 << Paladin
step << Paladin
    .goto Stormwind City,74.182,7.465 << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r << Alliance
    >>If you have a lot of spare money you can buy the other two Testaments from milton for later use << Paladin
    .collect 216768,1 << Paladin -- Testament of Enhanced Blessings
    .collect 226400,1 << Paladin -- Testament of the Exorcist
    .money <5
step
    .goto StormwindClassic,51.757,12.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 1097 >> Turn in Elmore's Task
    .accept 353 >> Accept Stormpike's Delivery
    .target Grimand Elmore
step << Warrior/Paladin/Rogue
    #optional
    .goto StormwindClassic,56.3,17.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaita Deepforge|r
    .collect 2901,1,432,1 >>|cRXP_BUY_Buy a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from her|r
    >>|cRXP_WARN_You'll train|r |T134708:0|t[Mining] |cRXP_WARN_later|r
    .target Kaita Deepforge
    .train 2018,3 --Blacksmithing
--XX 81c, 1s 75c from 6281
step
    #label DeeprunEnter
    .goto 1453,60.972,11.690,30,0
    .goto 1453,65.933,5.771
    .subzone 2257 >>Enter the Deeprun Tram
    .zoneskip Ironforge
step
    #xprate <1.59
    #optional
    #label TramEnd
    >>|cRXP_WARN_Take the Deeprun Tram to the Ironforge side|r
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting for the Tram to Ironforge if needed|r << Rogue/Warrior/Paladin
    >>|cRXP_WARN_You will need your|r |T135966:0|t[First Aid] |cRXP_WARN_to be 80 for a quest at level 24|r << Rogue !Dwarf
    >>|cRXP_WARN_Cast|r |T136221:0|t[Summon Voidwalker] |cRXP_WARN_and|r |T135230:0|t[Create Healthstone] |cRXP_WARN_while waiting for the Tram to Ironforge if needed|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monty|r on the middle platform on the Ironforge side of the Deeprun Tram
    .accept 6661 >> Accept Deeprun Rat Roundup
    .target Monty
step
    #xprate <1.59
    >>|cRXP_WARN_Use the|r |T133942:0|t[Rat Catcher's Flute] |cRXP_WARN_on |cRXP_ENEMY_Deeprun Rats|r inside the Deeprun Tram|r
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob Deeprun Rat
step
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monty|r inside the Deeprun Tram
    .turnin 6661 >> Turn in Deeprun Rat Roundup
    .target Monty
step
    #xprate >1.59
    #optional
    #label TramEnd
    >>|cRXP_WARN_Take the Deeprun Tram to the Ironforge side|r
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting for the Tram to Ironforge if needed|r << Rogue/Warrior/Paladin
    >>|cRXP_WARN_You will need your|r |T135966:0|t[First Aid] |cRXP_WARN_to be 80 for a quest at level 24|r << Rogue !Dwarf
    >>|cRXP_WARN_Cast|r |T136221:0|t[Summon Voidwalker] |cRXP_WARN_and|r |T135230:0|t[Create Healthstone] |cRXP_WARN_while waiting for the Tram to Ironforge if needed|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monty|r on the middle platform on the Ironforge side of the Deeprun Tram
    .accept 6661 >> Accept Deeprun Rat Roundup
    .target Monty
    .zoneskip Ironforge
step
    #xprate >1.59
    >>|cRXP_WARN_Use the|r |T133942:0|t[Rat Catcher's Flute] |cRXP_WARN_on |cRXP_ENEMY_Deeprun Rats|r inside the Deeprun Tram|r
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob Deeprun Rat
    .zoneskip Ironforge
step
    #xprate >1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monty|r inside the Deeprun Tram
    .turnin 6661 >> Turn in Deeprun Rat Roundup
    .target Monty
    .zoneskip Ironforge
step
    #completewith next
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_if needed while waiting for the tram|r << Rogue/Warrior/Paladin
    .zone Ironforge >>Take the Tram to Ironforge
step
    .zone Ironforge >>Enter Ironforge
    .isQuestAvailable 314
step << Warrior
    #optional
    #completewith WarriorTrain
    .goto 1455,67.400,84.909,15,0
    .goto Ironforge,65.905,88.405,12 >> Travel toward |cRXP_FRIENDLY_Bilban Tosslespanner|r
step << Warrior
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilban Tosslespanner|r
    >>|cRXP_WARN_Ensure you save 20s 70c for later|r
    .train 2687 >> Train your class spells
    .target Bilban Tosslespanner
    .xp <10,1
    .xp >12,1
step << Warrior
    #xprate >1.59
    #optional
    #label WarriorTrain
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilban Tosslespanner|r
    >>|cRXP_WARN_Ensure you save 20s 70c for later|r
    .train 5242 >> Train your class spells
    .target Bilban Tosslespanner
    .xp <12,1
step << Warrior/Rogue
    #optional
    #completewith next
    .goto 1455,61.552,85.636,10,0
    .goto 1455,61.356,88.398,6 >> Enter the Timberline Arms building
step << Warrior/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bixi Wobblebonk|r and |cRXP_FRIENDLY_Buliwyf Stonehand|r
    .train 2567 >> Train Thrown << Warrior
    .goto Ironforge,62.237,89.628
    .target +Bixi Wobblebonk
    .train 199 >> Train 2h Maces << Warrior
    .train 266 >> Train Guns << Rogue
    .goto Ironforge,61.177,89.508
    .target +Buliwyf Stonehand
step << Warrior
    #xprate >1.49
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brenwyn Wintersteel|r down stairs
    >>|cRXP_BUY_Buy the|r |T135425:0|t[Keen Throwing Knives] |cRXP_BUY_from her|r
    .collect 3107,200 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .xp <10+7310,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #xprate >1.49
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thalgus Thunderfist|r down stairs
    >>|cRXP_BUY_Buy a|r |T135613:0|t[Hunter's Boomstick] and |T132384:0|t[Heavy Shot] |cRXP_BUY_from him|r
    .collect 2511,1 --Collect Hunter's Boomstick (1)
    .collect 2519,200 --Heavy Shot (200)
    .money <0.14
    .target Thalgus Thunderfist
step << Rogue
    #xprate >1.49
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thalgus Thunderfist|r down stairs
    >>|cRXP_BUY_Buy a|r |T135611:0|t[Ornate Blunderbuss] and |T132384:0|t[Heavy Shot] |cRXP_BUY_from him|r
    .collect 2509,1 --Collect Hunter's Boomstick (1)
    .collect 2519,200 --Heavy Shot (200)
    .money >0.14
    .target Thalgus Thunderfist
    .itemcount 2511,<1
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
    >>|cRXP_WARN_Try to kite him around using|r |T132316:0|t[|cRXP_FRIENDLY_Hamstring|r] |cRXP_WARN_and|r |T132324:0|t[|cRXP_FRIENDLY_Thrown|r] << Warrior
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
step
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Get the Ironforge flight path
    .target Gryth Thurden
step << Mage/Paladin
    #xprate >1.49
    #optional
    #completewith MageIFTrain << Mage
    #completewith PaladinIFTrain << Paladin
    .goto Ironforge,49.11,56.02,30,0
    .goto Ironforge,44.08,46.60,20,0
    .goto Ironforge,40.84,44.59,20,0
    .goto Ironforge,35.30,32.76,20,0
    .goto Ironforge,27.17,12.58,20,0 << Paladin
    .goto Ironforge,27.60,11.06,20,0 << Mage
    .goto Ironforge,26.8,8.6,12 >>Travel toward |cRXP_FRIENDLY_Dink|r << Mage
    .goto Ironforge,23.131,6.143,12 >>Travel toward |cRXP_FRIENDLY_Brandur Ironhammer|r << Paladin
step << Mage
    #xprate >1.49
    .goto Ironforge,26.8,8.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r inside
    .train 122 >> Train your class spells
    .target Dink
    .xp <10,1
    .xp >12,1
step << Mage
    #xprate >1.49
    .goto Ironforge,26.8,8.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r inside
    .train 145 >> Train your class spells
    .target Dink
    .xp <12,1
    .xp >14,1
step << Mage
    #xprate >1.49
    #label MageIFTrain
    .goto Ironforge,26.8,8.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r inside
    .train 1460 >> Train your class spells
    .target Dink
    .xp <14,1
step << Paladin
    #xprate >1.49
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r inside
    .train 633 >> Train your class spells
    .target Brandur Ironhammer
    .xp <10,1
    .xp >12,1
step << Paladin
    #xprate >1.49
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .train 19834 >> Train your class spells
    .target Arthur the Faithful
    .xp <12,1
    .xp >14,1
step << Paladin
    #xprate >1.49
    #optional
    #label PaladinIFTrain
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .train 647 >> Train your class spells
    .target Arthur the Faithful
    .xp <14,1
--XX Alternative paladin train if they didn't get 10 in Goldshire
step
    #ssf
    .goto Ironforge,19.11,52.80
    .zone Dun Morogh >>|cRXP_WARN_Exit Ironforge and start heading east towards Vagash|r
step
    #ah
    #optional
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>|cRXP_WARN_If you don't want to or can't do this, skip this step|r
    >>|cRXP_BUY_Buy the following items for a faster turn in at Loch Modan shortly:|r
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
    .isQuestAvailable 418
step << skip --logout skip
    #ah
    #optional
    .goto 1455,33.220,64.649
    .zone Dun Morogh >>|cRXP_WARN_Jump onto the very top of the |cRXP_PICK_Mailbox|r, then perform a Logout Skip by logging out and back in|r
    .isQuestAvailable 314
    ]])