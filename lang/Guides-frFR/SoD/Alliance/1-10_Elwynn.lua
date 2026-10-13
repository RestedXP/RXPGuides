if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#name 1-6 Northshire SoD
#displayname 1-6 Comté-du-nord
#version 1
#group RestedXP Alliance 1-20
#groupid RXP-SRGCE-A1
#defaultfor Human
#next 6-12 Forêt d'Elwynn SoD
#season 2


step << !Human
    #completewith next
    +Vous avez sélectionné un guide conçu pour les Humains. Vous devriez choisir la même zone de départ que celle par laquelle vous commencez
step
    #softcore << Warlock
    #optional
    #completewith Within
    .destroy 6948 >> Détruisez la [Pierre de foyer] dans votre sac, elle n'est plus nécessaire
step
    .goto Elwynn Forest,48.17,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Willem|r
    .accept 783 >> Acceptez la quête Menace intérieure
    .target Deputy Willem
step << Warrior/Rogue/Mage/Warlock
    .goto Elwynn Forest,46.4,40.3
    .xp 2 >>Tuez les |cRXP_ENEMY_Jeunes loups|r jusqu'au niveau 2 (4 mobs)
    >>Dépouillez-les, vous aurez besoin de 15 pièces de cuivre pour vos runes et apprendre vos sorts de classe << Rogue/Warrior
    >>Dépouillez-les, vous aurez besoin de 30 pièces de cuivre pour des gants et les runes << Mage
    >>Dépouillez-les, vous aurez besoin de 40 pièces de cuivre pour des brassards, apprendre vos sorts et les runes << Warlock
step << Mage/Warlock
    .goto Elwynn Forest,47.57,41.43
    >>|cRXP_WARN_Si vous n'avez pas l'équivalent de 30 pièces de cuivre à vendre au marchand, tuez plus de loups|r << Mage
    >>|cRXP_WARN_Si vous n'avez pas l'équivalent de 40 pièces de cuivre à vendre au marchand, tuez plus de loups|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dermot Johns|r
    >>|cRXP_WARN_ASSUREZ-VOUS DE NE PAS VENDRE LES ÉQUIPEMENTS QUE VOUS POUVEZ ÉQUIPER|r
    >>Vendez au marchand et achetez les |T132952:0|t[Gants en étoffe légère], vous en aurez besoin pour y grave une rune << Mage
    >>Vendez au marchand et achetez les |T132602:0|t[Brassards en étoffe légère], vous en aurez besoin pour y grave une rune << Warlock
    .collect 2119,1 << Mage --Thin Cloth Gloves (1)
    .collect 3600,1 << Warlock --Thin Cloth Bracers (1)
    .target Dermot Johns
step << Warrior/Rogue/Mage/Warlock
    .goto Elwynn Forest,48.22,41.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Marchand de runes|r.
    >>|cRXP_WARN_ASSUREZ-VOUS DE NE PAS VENDRE LES ÉQUIPEMENTS QUE VOUS POUVEZ ÉQUIPER|r
    .vendor >>|cRXP_BUY_Vendez les objets marchands et achetez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d'Ivresse de la victoire|r] << Warrior
    .vendor >>|cRXP_BUY_Vendez votre surplus au Marchand et achetez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Frappe-ténèbres|r]|r << Rogue
    .vendor >>|cRXP_BUY_Achetez toutes les runes AoE importantes|r << Mage
    .vendor >>|cRXP_BUY_Achetez toutes les runes suivantes:|r << Warlock
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
    >>Vous obtiendrez très bientôt le reste de vous runes
    .target Rune Broker
    .skipgossip
step << Warrior/Rogue/Mage
    .train 400105 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Frappe-ténèbres|r] pour apprendre |T132323:0|t[Frappe-ténèbres], vous allez bientôt la graver << Rogue
    .train 403470 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune d'Ivresse de la victoire|r] pour apprendre |T132342:0|t[Ivresse de la victoire], vous allez la graver bientôt << Warrior
    .train 401768 >> Utilisez le |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Flamme vivante|r] pour apprendre |T135820:0|t[Flamme vivante] << Mage
    .train 415936 >> Utilisez les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Bombe vivante|r] pour apprendre |T236220:0|t[Bombe vivante] << Mage
    .train 401759 >> Utilisez les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Incandescence|r] pour apprendre |T236207:0|t[Incandescence] << Mage
    .train 440858 >> Utilisez les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Orbe gelé|r] pour apprendre |T135851:0|t[Orbe gelé] << Mage
    .train 416009 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Tactiques|r] pour apprendre |T136150:0|t[Tactique démoniaque] << Warlock
    .train 425476 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune du pacte|r] pour apprendre |T237562:0|t[Pacte démoniaque] << Warlock
    .train 211477 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune d'Incinérer|r] pour apprendre |T135789:0|t[Incinérer] << Warlock
    .train 403919 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune cauchemardesque|r] pour apprendre |T236298:0|t[Hanter] << Warlock
    .train 403619 >> Utilisez le |T133733:0|t[Grimoire de Gangrarmure] pour apprendre |T136156:0|t[Gangrarmure] |cRXP_WARN_utilisez-la en tant qu'armure principale|r << Warlock
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
    .aura 403619 >> |cRXP_WARN_N'oubliez pas d'activer votre|r |T136156:0|t[Gangrarmure]
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Llane Beshere|r en bas des escaliers à l'intérieur
    .train 6673 >>Apprenez [Cri de guerre]
    .accept 77616 >> Acceptez la quête La Rune perdue
    .turnin 77616 >> Rendez la quête La Rune perdue
    .goto Elwynn Forest,50.242,42.287
    .mob Young Wolf
    .target Llane Beshere
step << Warrior/Rogue/Mage/Warlock
    .equip 10 >> Équipez les |T132952:0|t[Gants en étoffe légère] << Mage
    .use 2119 << Mage --Thin Cloth Gloves
    .engrave 7 >> Gravez |T135820:0|t[Flamme vivante] sur votre pantalon << Mage
    .engrave 10 >> Gravez |T236220:0|t[Bombe vivante] sur vos gants << Mage
    .engrave 5 >> Gravez |T236207:0|t[Incandescence] sur votre plastron << Mage
    .equip 10 >> Équipez les |T132938:0|t[Gants en anneaux ternis] << Warrior
    .engrave 10 >> Gravez |T132342:0|t[Ivresse de la victoire] sur vos gants << Warrior
    .use 2385 << Warrior -- Tarnished Chain Gloves
    .equip 10 >> Équipez les |T132952:0|t[Gants en cuir craquelé] << Rogue
    .engrave 10 >> Gravez |T132323:0|t[Frappe-ténèbres] sur vos gants << Rogue
    .use 2125 << Rogue --Cracked Leather Gloves
    .equip 9 >> Équipez les |T132602:0|t[Brassards en étoffe légère] << Warlock
    .use 3600 << Warlock --Thin Cloth Bracers
    .engrave 5 >> Gravez |T136150:0|t[Tactique démoniaque] sur votre plastron << Warlock
    .engrave 7 >> Gravez |T237562:0|t[Pacte démoniaque] sur votre pantalon << Warlock
    .engrave 9 >> Gravez |T135789:0|t[Incinérer] sur vos brassards << Warlock
step
    #label Within
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 783 >> Rendez la quête Menace intérieure
    .accept 7 >> Acceptez la quête Nettoyer le camp des kobolds
    .target Marshal McBride
step
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Willem|r
    .accept 5261 >> Acceptez la quête Eagan Tannepeau
    .accept 18 >> Acceptez la quête La confrérie des voleurs << Warlock
    .target Deputy Willem
step << Warlock
    #season 2
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Drusilla La Salle|r
    .accept 1598 >> Acceptez la quête Le Tome dérobé
    .accept 77621 >> Acceptez la quête Puissance dérobée << Human
    .turnin 77621 >> Rendez la quête Puissance dérobée << Human
    .train 348 >> Apprenez [Immolation]
    .target Drusilla La Salle
step << Human Warlock
    #season 2
    #label GlovesEquip
    #completewith RestandR
    .equip 10,711 >> |cRXP_WARN_Equipez les|r |T132961:0|t[Gants en étoffe rapiécés]
    .use 711
    .itemcount 711,1 --Tattered Cloth Gloves (1)
    .train 403919,3
step << Human Warlock
    #season 2
    #requires GlovesEquip
    #completewith RestandR
    .engrave 10 >>|cRXP_WARN_Gravez vos|r |T132961:0|t[Gants en étoffe rapiécés] |cRXP_WARN_avec|r |T236298:0|t[Hanter]
    .train 403919,3
step << Warlock
    #completewith next
    >>Tuez les |cRXP_ENEMY_Defias Thugs|r. Dépouillez-les pour leur |cRXP_LOOT_Red Burlap Bandanas|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
	.mob Defias Thug
step << Warlock
    .goto Elwynn Forest,56.7,44.0
    >>Entrez dans la tente au camp Défias
    >>Ouvrez les |cRXP_PICK_Stolen Books|r. Récupérez les |cRXP_LOOT_Powers of the Void|r
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
    >>Tuez les |cRXP_ENEMY_Defias Thugs|r. Dépouillez-les pour leur |cRXP_LOOT_Red Burlap Bandanas|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
	.mob Defias Thug
step << Warlock
    #hardcore
    #completewith next
    .goto Elwynn Forest,56.828,43.734
    .hs >> Utilisez votre Pierre de Foyer pour revenir à Comté-du-Nord
step << Warlock
    #softcore
    #completewith next
    .goto 1429,49.527,43.491,0
    .deathskip >> Mourez et ressuscitez au Gardien des âmes
    .target Gardien des âmes
step << Warlock
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 1598 >> Rendez la quête Le Tome dérobé
    .target Drusilla La Salle
step << Warlock
    #optional
    #completewith next
    .cast 688 >> Lancez [Invocation d'un diablotin]
    .usespell 688
step << Warlock
    .goto Elwynn Forest,48.17,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Willem|r
    .turnin 18,1 >> Rendez la quête La confrérie des voleurs
    .target Deputy Willem
step << Warlock
    #optional
    #completewith next
    .equip 16,2224 >> Équipez la [Dague de la milice]
    .use 2224
    .itemcount 2224,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.0
step << Priest/Paladin
    .goto Elwynn Forest,48.22,41.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Marchand de runes|r.
    >>|cRXP_BUY_Vendez votre|r |T135005:0|t[Chemise] |cRXP_BUY_et achetez-lui la |T135975:0|t[|cRXP_FRIENDLY_Prophétie d’une citadelle profanée|r]|r << Priest
    >>|cRXP_BUY_Vendez votre|r |T135005:0|t[Chemise] et ovs |T132540:0|t[Bottes] |cRXP_WARN_(vous ne pouvez pas y graver de rune)|r |cRXP_BUY_et achetez-lui le |T133745:0|t[|cRXP_FRIENDLY_Testament de martyr|r] et le |T134916:0|t[|cRXP_FRIENDLY_Libram de jugement|r]|r << Paladin
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel
    .collect 226398,1  << Paladin --Testament of Martyrdom
    .collect 205420,1 << Paladin --Libram of Judgement
    >>Vous obtiendrez très bientôt le reste de vous runes
    .target Rune Broker
    .skipgossip
step << Priest/Paladin
    #sticky
    #label Libram
    .use 205947 << Priest --Prophecy of a Desecrated Citadel
    .use 226398 << Paladin --Testament of martyrdom
    .use 205420 << Paladin --Libram of Judgement
    .train 402852 >> Utilisez la |T135975:0|t[|cRXP_FRIENDLY_Prophétie d’une citadelle profanée|r] pour apprendre |T237570:0|t[Homoncules] << Priest
    .train 407798 >> Utilisez le |T133745:0|t[|cRXP_FRIENDLY_Testament de martyr|r] pour apprendre le |T135961:0|t[Sceau du martyr], |cRXP_WARN_utilisez-le en tant que Sceau principal|r << Paladin
    .equip 18 >> Équipez le |T134916:0|t[|cRXP_FRIENDLY_Libram de jugement|r], vous pouvez l'utiliser après 30 secondes pour apprendre |T135891:0|t[Frappe du croisé] << Paladin
    .engrave 7 >> Gravez |T237570:0|t[Homoncules] sur votre pantalon << Priest
step << Paladin
    #optional
    #completewith Vermin
    .aura 407798 >> N'oubliez pas d'utiliser le|T135961:0|t[Sceau du martyr]
step << Paladin
    #sticky
    #optional
    #requires Libram
    #label LibramLearn
    .train 410002 >> Utilisez le |T134916:0|t[|cRXP_FRIENDLY_Libram de jugement|r] pour apprendre |T135891:0|t[Frappe du croisé]
step << Paladin
    #optional
    #requires LibramLearn
    #completewith PalaQ
    .engrave 10 >> |cRXP_WARN_Soyez à l'affût de tout|r |T132952:0|t[Gants] |cRXP_WARN_qui pourrait tomber.|r |cRXP_WARN_Gravez-les avec|r |T135891:0|t[Frappe du croisé]
    >>Si vous n'en trouvez pas, vous pourrez en obtenir une paire grâce à une quête de classe
step
    #label EaganWolves
    .goto Elwynn Forest,48.941,40.166
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eagan Peltskinner|r
    .turnin 5261 >> Rendez la quête Eagan Tannepeau
    .accept 33 >> Acceptez la quête Les loups derrière la frontière
    .target Eagan Peltskinner
step << Rogue
    #completewith next
    >>Tuez les |cRXP_ENEMY_Loups|r et les |cRXP_ENEMY_Vermines kobolds|r sur la route vers le maître de classe
    .complete 33,1 --Tough Wolf Meat (8)
    .complete 7,1 -- Kobold Vermin Slain (10)
    .mob Young Wolf
	.mob Timber Wolf
    .mob Kobold Vermin
step << Rogue
    .goto Elwynn Forest,50.6,40.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorik Kerridan|r
    .accept 77618 >> Acceptez la quête Triple vol
    .turnin 77618 >> Rendez la quête Triple vol
    .train 1784 >> Apprenez |T132320:0|t[Camouflage], vous en aurez besoin pour utiliser |T135131:0|t[Frappe-ténèbres]
    .target Jorik Kerridan
step << Mage
    #optional
    #sticky
    .engrave 15 >> Soyez à l'affut des capes qui pourrait tomber. Une fois que vous en obtenez une, gravez |T135851:0|t[Orbe gelé] dessus
    >>|cRXP_WARN_Ce sort est extrêmement puissant|r
step << Mage/Warlock
    #completewith next
    .goto Elwynn Forest,46.2,40.4,40,0
    .goto Elwynn Forest,47.486,41.566
    >>Dès que vous avez au moins 50 pièces de cuivre à disposition:
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Danil|r
    >>Vendez tout ce dont nous n'avez pas besoin
    >>|cRXP_BUY_Achetez 10|r [Refreshing Spring Water] |cRXP_BUY_à Brother Danil|r
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step << Paladin
    #label Vermin
    #completewith next
    >>Tuez les |cRXP_ENEMY_Vermines kobold|r
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
    >>Tuez des |cRXP_ENEMY_Young Wolves|r et des |cRXP_ENEMY_Timber Wolves|r. Dépouillez-les pour leur |cRXP_LOOT_Tough Wolf Meat|r
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
    >>Tuez les |cRXP_ENEMY_Kobold Vermins|r
    .complete 7,1 --Kill Kobold Vermin (x10)
    .mob Kobold Vermin
step << !Priest !Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1429,45.718,40.733,0
    .xp 3+720 >> Montez votre expérience jusqu'à 720+/1400xp
    .mob Young Wolf
	.mob Timber Wolf
step
    #requires WolfMeatEnd
    .goto Elwynn Forest,48.941,40.166
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eagan Peltskinner|r
    .turnin 33,2 >> Rendez la quête Les loups derrière la frontière << Warrior/Paladin/Rogue
    .turnin 33,1 >> Rendez la quête Les loups derrière la frontière << !Warrior !Paladin !Rogue
    .target Eagan Peltskinner
step << Paladin
    #optional
    >>|cRXP_WARN_ASSUREZ-VOUS DE NE PAS VENDRE LES ÉQUIPEMENTS QUE VOUS POUVEZ ÉQUIPER|r
    +|cRXP_WARN_Tuez les|cRXP_ENEMY_Vermines kobolds|r ou les |cRXP_ENEMY_Loups|r et vendez au marchand jusqu'à ce que vous ayez au moins 93 pièces de cuivre|r
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
    .xp 3+1060 >> Montez votre expérience jusqu'à 1060+/1400xp
    .mob Young Wolf
	.mob Timber Wolf
step << Paladin
    .goto Elwynn Forest,47.70,41.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Godric Rothgar|r
    >>|cRXP_WARN_Monter de niveau avec un bouclier et une arme à une main est bien plus rapide grâce à la puissance des runes de bouclier en début de jeu|r
    >>|cRXP_BUY_Vendez votre surplus et achetez le|r |T134955:0|t[Petit bouclier]
    .collect 17184,1 --Small Shield (1)
    .target Godric Rothgar
step << Paladin
    .goto Elwynn Forest,47.25,41.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Janos Hammerknuckle|r
    >>|cRXP_WARN_Monter de niveau avec un bouclier et une arme à une main est bien plus rapide grâce à la puissance des runes de bouclier en début de jeu|r
    >>|cRXP_BUY_Vendez votre surplus et achetez le|r |T133485:0|t[Gourdin]
    .collect 2130,1 --Club (1)
    .target Janos Hammerknuckle
step << Paladin
    .equip 16,2130 >> Équipez le |T133485:0|t[Gourdin]
    .equip 17,17184 >> Équipez le |T134955:0|t[Petit bouclier]
    .use 2130 --Club
    .use 17184 --Small Shield
step << Warrior
    #xprate >1.59
    #optional
    #completewith CleanupEnd
    >>|cRXP_WARN_ASSUREZ-VOUS DE NE PAS VENDRE LES ÉQUIPEMENTS QUE VOUS POUVEZ ÉQUIPER|r
    +|cRXP_WARN_Tuez des mobs et vendez votre surplus jusqu'à ce que vous ayez 1 pièce d'argent|r
    .money >0.01
    .train 100,1 << Warrior --Charge
    .train 20271,1 << Paladin --Judgement
    .isOnQuest 7
step << Priest
    #optional
    #completewith next
    .equip 8,80 >> |cRXP_WARN_Équipez|r les |T132543:0|t[Chaussures bordées de fourrure], vous allez y graver une rune bientôt
step << Priest
    .goto Elwynn Forest,47.57,41.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dermot Johns|r
    >>Si vous n'avez pas assez d'argent pour les deux objets |cRXP_WARN_(60 pièces de cuivre)|r, tuez plus de |cRXP_ENEMY_Loups|r
    >>|cRXP_WARN_ASSUREZ-VOUS DE NE PAS VENDRE LES ÉQUIPEMENTS QUE VOUS POUVEZ ÉQUIPER|r
    >>Vendez votre surplus et achetez la |T132495:0|t[Ceinture en étoffe légère] et les |T132952:0|t[Gants en étoffe légère], vous allez y graver une rune bientôt
    .collect 3599,1 --Thin Cloth Belt (1)
    .collect 2119,1 --Thin Cloth Gloves (1)
    .target Dermot Johns
step << Priest/Mage/Warlock
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Danil|r
    >>Vendez tout ce dont nous n'avez pas besoin
    >>|cRXP_BUY_Achetez 10|r [Refreshing Spring Water] |cRXP_BUY_à Brother Danil|r
    >>Faites en sorte de garder 10 pièces de cuivre ou plus pour plus tard << Priest/Mage
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step << Priest/Paladin
    .goto Elwynn Forest,48.22,41.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Marchand de runes|r.
    >>|cRXP_WARN_ASSUREZ-VOUS DE NE PAS VENDRE LES ÉQUIPEMENTS QUE VOUS POUVEZ ÉQUIPER|r
    .vendor >>|cRXP_BUY_Achetez toutes les runes suivantes:|r
    .collect 212552,1 << Priest --Psychosophic Epiphany
    .collect 205940,1 << Priest --Memory of a Dark Purpose
    .collect 205951,1 << Priest --Memory of a Troubled Acolyte
    .collect 205932,1 << Priest --Prophecy of a King's Demise
    .collect 235600,1 << Paladin --Rune of Divine Storm
    .collect 211488,1 << Paladin --Rune of the Avenger
    .collect 235602,1 << Paladin --Rune of the Hammer of the Righteous
    .collect 235604,1 << Paladin --Rune of the Shield of Righteousness
    >>Vous obtiendrez très bientôt le reste de vous runes
    .target Rune Broker
    .skipgossip
step << Priest/Paladin
    .train 431663 >> Utilisez la |T135791:0|t[|cRXP_FRIENDLY_Épiphanie psychosophique|r] pour apprendre |T136181:0|t[Pointe mentale] << Priest
    .train 425216 >> Utilisez le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un noir dessein|r] pour apprendre |T237514:0|t[Fléau du Vide] << Priest
    .train 402862 >> Utilisez le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un acolyte tourmenté|r] pour apprendre |T237545:0|t[Pénitence] << Priest
    .train 402849 >> Utilisez la |T135975:0|t[|cRXP_FRIENDLY_Prophétie de la chute d’un roi|r] pour apprendre |T136149:0|t[Mot de l'ombre : Mort] << Priest
    .train 410014 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Tempête divine|r] pour apprendre |T236250:0|t[Tempête divine] << Paladin
    .train 410008 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune du vengeur|r] pour apprendre |T135874:0|t[Bouclier du vengeur] << Paladin
    .train 410013 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Marteau du vertueux|r] pour apprendre |T236253:0|t[Marteau du vertueux] << Paladin
    .train 440788 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Bouclier de piété|r] pour apprendre |T236265:0|t[Bouclier de piété] << Paladin
    .use 212552 << Priest --Psychosophic Epiphany
    .use 205940 << Priest --Memory of a Dark Purpose
    .use 205951 << Priest --Memory of a Troubled Acolyte
    .use 205932 << Priest --Prophecy of a King's Demise
    .use 235600 << Paladin --Rune of Divine Storm
    .use 211488 << Paladin --Rune of the Avenger
    .use 235602 << Paladin --Rune of the Hammer of the Righteous
    .use 235604 << Paladin --Rune of the Shield of Righteousness
step << Paladin
    #sticky
    >>|cRXP_WARN_Soyez à l'affût de tout|r |T132624:0|t[Plastron]|cRXP_WARN_,|r |cRXP_WARN_ou|r |T133762:0|t[Cape] |cRXP_WARN_que vous pouvez équiper|r
    .engrave 5 >> Gravez |T236250:0|t[Tempête divine] sur votre plastron
    .engrave 15 >> Gravez |T236265:0|t[Bouclier de piété] sur votre cape
step << Priest/Paladin
    .use 6070 << Paladin --Wolfskin Bracers
    .equip 9 >> Équipez les |T132604:0|t[Brassards en peau de loup] << Paladin
    .engrave 6 >> Gravez |T136181:0|t[Pointe mentale] sur votre ceinture << Priest
    .engrave 8 >> Gravez |T237514:0|t[Fléau du Vide] sur vos bottes << Priest
    .engrave 10 >> Gravez |T136149:0|t[Mot de l'ombre : Mort] sur vos gants << Priest
    .engrave 7 >> Gravez |T135874:0|t[Bouclier du vengeur] sur votre pantalon << Paladin
    .engrave 9 >> Gravez |T236253:0|t[Marteau du vertueux] sur vos brassards << Paladin
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
    >>Tuez les |cRXP_ENEMY_Kobold Vermins|r
    .complete 7,1 --Kill Kobold Vermin (x10)
    .mob Kobold Vermin
step << Priest/Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1429,45.718,40.733,0
    .xp 3+720 >> Montez votre expérience jusqu'à 720+/1400xp
    .mob Young Wolf
	.mob Timber Wolf
step << !Priest !Mage !Warlock !Rogue !Paladin
    .goto Elwynn Forest,47.691,41.417
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Godric Rothgar|r
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .target Godric Rothgar
step << Mage
    .goto Elwynn Forest,48.22,41.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Marchand de runes|r.
    >>|cRXP_WARN_ASSUREZ-VOUS DE NE PAS VENDRE LES ÉQUIPEMENTS QUE VOUS POUVEZ ÉQUIPER|r
    .vendor >> |cRXP_BUY_Vendez votre surplus et achetez-lui toutes les |T134419:0|t|cRXP_WARN_[Runes]|r dont vous avez besoin|r
    >>Achetez bien les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Javelot de glace|r], vous allez en avoir besoin pour rendre une quête en plus
    .collect 203745,1 --Spell Notes: Ice Lance
    .target Rune Broker
    .skipgossip
step << Mage
    #sticky
    #optional
    #label IceLance
    .train 401760 >> Utilisez les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Javelot de glace|r] pour apprendre |T135844:0|t[Javelot de glace]
step
    #label CleanupEnd
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 7 >> Rendez la quête Nettoyer le camp des kobolds
    .accept 15 >> Acceptez la quête Enquête sur la crête aux échos
    .accept 3100 >> Acceptez la quête Lettre simple << Warrior
    .accept 3101 >> Acceptez la quête Lettre consacrée << Paladin
    .accept 3102 >> Acceptez Lettre codée << Rogue
    .accept 3103 >> Acceptez la quête Lettre bénie << Priest
    .accept 3104 >> Acceptez la quête Lettre glyphée << Mage
    .accept 3105 >> Acceptez la quête Lettre contaminée << Warlock
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
    .goto Elwynn Forest,49.661,39.402,12 >>Dirigez-vous vers |cRXP_FRIENDLY_Khelden Bremen|r en haut des escaliers
step << Mage
    #requires IceLance
    #xprate >1.59
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tDirigez-vous vers |cRXP_FRIENDLY_Khelden Bremen|r en haut des escaliers
    .goto Elwynn Forest,49.661,39.402
    .turnin 3104 >> Rendez la quête Lettre glyphée
    .accept 77620 >> Acceptez la quête Recherches sur les sorts << Human
    .turnin 77620 >> Rendez la quête Recherches sur les sorts << Human
    .trainer >> Apprenez vos sorts de classe
    .target Khelden Bremen
step << Priest
    #xprate >1.59
    #optional
    #completewith next
    .goto Elwynn Forest,49.3,40.7,15,0
    .goto Elwynn Forest,49.8,40.2,10 >> Dirigez-vous |cRXP_FRIENDLY_Priestess Anetta|r en bas des escaliers
step << Priest
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,49.808,39.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tDirigez-vous |cRXP_FRIENDLY_Priestess Anetta|r en bas des escaliers
    .turnin 3103 >> Rendez la quête Lettre bénie
    .accept 77619 >> Acceptez la quête Méditation sur la Lumière << Human
    .turnin 77619 >> Rendez la quête Méditation sur la Lumière << Human
    .trainer >> Apprenez vos sorts de classe, |cRXP_WARN_si vous ne pouvez pas vous les permettre, passez l'étape. De toute façon, vous utiliserez principalement les sorts des runes|r
    .target Priestess Anetta
step << Warrior/Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto Elwynn Forest,48.85,41.76,15,0
    .goto Elwynn Forest,49.6,41.8,15 >> Dirigez-vous vers |cRXP_FRIENDLY_Llane Beshere|r en bas des escaliers << Warrior
    .goto Elwynn Forest,49.6,41.8,15 >> Dirigez-vous vers |cRXP_FRIENDLY_Brother Sammuel|r en bas des escaliers << Paladin
step << Warrior
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,50.242,42.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Llane Beshere|r en bas des escaliers à l'intérieur
    .turnin 3100 >> Rendez la quête Lettre simple
    .accept 77616 >> Acceptez la quête La Rune perdue << Human
    .turnin 77616 >> Rendez la quête La Rune perdue << Human
    .train 100 >> Apprenez [Charge]
    .target Llane Beshere
step << Paladin
    #xprate >1.59
    #season 2
    #label PalaQ
    .goto Elwynn Forest,50.433,42.124
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Sammuel|r
    .turnin 3101 >> Rendez la quête Lettre consacrée
    .accept 77617 >> Acceptez la quête Reliques de la Lumière << Human
    .turnin 77617 >> Rendez la quête Reliques de la Lumière << Human
    >>|cRXP_WARN_Si vous avez de l'argent en plus, vous pouvez le dépenser pour apprendre|r |T135906:0|t[Bénédiction de puissance], |T135959:0|t[Jugement] |cRXP_WARN_ou un|r |T135029:0|t[Plastron] |cRXP_WARN_si vous n'en avez toujours pas. Nous vous recommandons de prioriser le plastron|r
    .target Brother Sammuel
step << Paladin
    #optional
    #completewith RestandR
    .use 2385 --Tarnished Chain Gloves
    .equip 10 >> Équipez les |T132938:0|t|cRXP_LOOT_[Gants en anneaux ternis]|r si vous n'avez pas encore trouvé d'autres gants
    .engrave 10 >> |cRXP_WARN_Gravez vos|r |T132938:0|t|cRXP_LOOT_[Gants en anneaux ternis]|r |cRXP_WARN_avec|r |T135891:0|t[Frappe du croisé] << Paladin
step << Priest/Warrior/Paladin
    #xprate >1.59
    #season 2
    #optional
    #completewith RuneWorkers
    .goto 1429,48.198,41.890,12 >> Sortez de l'abbaye de Northshire
step
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Willem|r à l'extérieur
    .accept 18 >> Acceptez la quête La confrérie des voleurs
    .target Deputy Willem
step << !Mage !Priest !Paladin
    .goto Elwynn Forest,48.22,41.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Marchand de runes|r.
    >>|cRXP_WARN_ASSUREZ-VOUS DE NE PAS VENDRE LES ÉQUIPEMENTS QUE VOUS POUVEZ ÉQUIPER|r
    .vendor >> |cRXP_BUY_Vendez votre surplus et achetez-lui toutes les |T134419:0|t|cRXP_WARN_[Runes]|r dont vous avez besoin|r
    .target Rune Broker
    .skipgossip
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
    >>Tuez les |cRXP_ENEMY_Kobold Workers|r
    .complete 15,1 --Kill Kobold Worker (x10)
    .mob Kobold Worker
step << Rogue
    #xprate >1.59
    #season 2
    #requires Shadowstrike2
    .goto Elwynn Forest,50.314,39.916
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorik Kerridan|r
    .turnin 3102 >> Rendez Lettre codée
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
    >>Tuez les |cRXP_ENEMY_Defias Thugs|r. Dépouillez-les pour leur |cRXP_LOOT_Red Burlap Bandanas|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
	.mob Defias Thug
step
    #optional
    #softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
step << !Warlock
    #xprate >1.59
    #season 2
    #requires Shadowstrike2 << Rogue
    #requires EarlyLibram4 << Paladin
    .goto Elwynn Forest,48.17,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Willem|r
    .turnin 18,1 >> Rendez la quête La confrérie des voleurs << Rogue
    .turnin 18,2 >> Rendez la quête La confrérie des voleurs << Paladin
    .turnin 18,2 >> Rendez la quête La confrérie des voleurs << Priest
    .turnin 18,3 >> Rendez la quête La confrérie des voleurs << Warrior
    .turnin 18,5 >> Rendez la quête La confrérie des voleurs << Mage
    .turnin 18 >> Rendez la quête La confrérie des voleurs << !Warrior !Priest !Mage !Rogue !Warlock !Paladin
    .target Deputy Willem
step << Rogue
    #xprate >1.59
    #season 2
    #completewith RestandR
    .equip 16,2224 >> Équipez la [Dague de la milice]
    .use 2224
    .itemcount 2224,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.01
step << Paladin
    #xprate >1.59
    #season 2
    #completewith RestandR
    .equip 16,5580 >> Équipez le |T133052:0|t[Marteau de la milice]
    .use 5580
    .itemcount 5580,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.97
step << Warrior
    #completewith RestandR
    .equip 16,1161 >> Équipez l'[Epée courte de la milice]
    .use 1161
    .itemcount 1161,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.01
step << Human Priest
    #xprate >1.59
    #optional
    #completewith next
    .goto Elwynn Forest,49.3,40.7,15,0
    .goto Elwynn Forest,49.8,40.2,10 >> Dirigez-vous |cRXP_FRIENDLY_Priestess Anetta|r en bas des escaliers
step << Human Priest
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,49.808,39.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess Anetta|r
    .accept 5623 >> Acceptez la quête Au service de la Lumière
    .target Priestess Anetta
    .isOnQuest 77619
    .xp <5,1
step << Human Warrior/Human Paladin
    #xprate >1.59
    #season 2
    #optional
    #completewith next
    .goto Elwynn Forest,48.85,41.76,15,0
    .goto Elwynn Forest,49.6,41.8,15 >> Dirigez-vous vers |cRXP_FRIENDLY_Llane Beshere|r en bas des escaliers << Warrior
    .goto Elwynn Forest,49.6,41.8,15 >> Dirigez-vous vers |cRXP_FRIENDLY_Brother Sammuel|r en bas des escaliers << Paladin
step << Human Paladin
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,50.433,42.124
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Frère Sammuel|r en bas des escaliers
    .turnin 77617 >> Rendez la quête Reliques de la Lumière
    .trainer >> Apprenez vos sorts de classe
    .target Brother Sammuel
    .isOnQuest 77617
step << Human Paladin
    #xprate >1.59
    #season 2
    #completewith RestandR
    #label GlovesEquip
    .equip 10,2385 >> |cRXP_WARN_Équipez les|r |T132938:0|t|cRXP_LOOT_[Gants en anneaux ternis]|r
    .use 2385
    .itemcount 2385,1
    .train 403470,3 << Warrior
    .train 410002,3 << Paladin
    .itemStat 10,LEVEL,<5
step
    #xprate >1.59
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 15 >> Rendez la quête Enquête sur la crête aux échos
    .accept 21 >> Acceptez la quête La bataille de la Crête aux échos
    .target Marshal McBride
step << Human Paladin/Warrior/Priest
    #xprate >1.59
    #season 2
    #optional
    #completewith next
    .goto 1429,48.279,42.171,8 >>Sortez de l'abbaye de Northshire
    .isQuestTurnedIn 15 << Warrior/Priest
    .isQuestTurnedIn 18 << Paladin
step << Warlock
    #xprate >1.59
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 3105 >> Rendez la quête Lettre contaminée
    .train 172 >>Apprenez [Corruption]
    .target Drusilla La Salle



----End of 2x training section----


step << Priest/Paladin
    .goto Elwynn Forest,48.22,41.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Marchand de runes|r.
    >>|cRXP_WARN_ASSUREZ-VOUS DE NE PAS VENDRE LES ÉQUIPEMENTS QUE VOUS POUVEZ ÉQUIPER|r
    .vendor >> |cRXP_BUY_Vendez votre surplus et achetez-lui toutes les |T134419:0|t|cRXP_WARN_[Runes]|r que vous voulez|r
    .target Rune Broker
    .skipgossip
step
    #optional
    #completewith next
    .goto Elwynn Forest,47.63,32.07,20 >> Entrez dans la Mine de la crête aux échos
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
    >>Tuez les |cRXP_ENEMY_Kobold Laborers|r à l'intérieur de la Mine de la crête aux échos
    .complete 21,1 --Kill Kobold Laborer (x12)
    .mob Kobold Laborer
step
	#softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au Gardien des âmes de Northshire
    .target Gardien des âmes
step
    #xprate >1.49
    #optional
    #completewith RestandR
    .abandon 3904 >> Abandonnez Les vendanges de Milly
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
    .xp 5+1205 >> Montez votre expérience jusqu'à 1205+/2800xp << Paladin/Warrior
    .xp 5+1040 >> Montez votre expérience jusqu'à 1040+/2800xp << !Paladin !Warrior !Priest
    .xp 5+875 >> Monter votre expérience jusqu'à 875+/2800xp << Priest
    .mob Defias Thug
step
    #optional
    #softcore
    #completewith #label RestandR
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
    .subzoneskip 59,1
step
    #label RestandR
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal McBride|r à l'intérieur
    .turnin 21,1 >> Rendez la quête La bataille de la Crête aux échos << Rogue
    .turnin 21,2 >> Rendez la quête La bataille de la Crête aux échos << Warrior/Paladin
    .turnin 21,3 >> Rendez la quête La bataille de la Crête aux échos << !Warrior !Paladin !Rogue
    .accept 54 >> Acceptez la quête Rapport pour Comté-de-l’Or
    .target Marshal McBride
step << Priest
    #optional
    #season 2
    .goto Elwynn Forest,49.808,39.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Prêtresse Anetta|r à l'intérieur
    .accept 5623 >> Acceptez la quête Au service de la Lumière
    .target Priestess Anetta
step
    .goto Elwynn Forest,45.563,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falkhaan Isenstrider|r
    .accept 2158 >> Acceptez la quête Repos et détente
    .target Falkhaan Isenstrider
]])


RXPGuides.RegisterGuide([[
#classic
#season 2
#version 1
<< Alliance
#group RestedXP Alliance 1-20
#groupid RXP-SRGCE-A1
#name 6-12 Forêt d'Elwynn SoD
#displayname 6-12 Forêt d'Elwynn
#next 12-13 Dun Morogh SoD
#defaultfor Human

step
    #season 0,1 << Rogue
    #hardcore
    #completewith next
    .subzone 87 >> Voyagez vers Goldshire
step
    #hardcore
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 54 >> Rendez la quête Rapport pour Comté-de-l'Or
    .accept 62 >> Acceptez la quête La mine de Fondugouffre
    .target Marshal Dughan
step
    #season 0,1 << Rogue
    #softcore
    #completewith Goldshire
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
    .subzoneskip 87
step
    #softcore
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 54 >> Rendez la quête Rapport pour Comté-de-l'Or
    .accept 62 >> Acceptez la quête La mine de Fondugouffre
    .target Marshal Dughan
step << Warrior
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>|cRXP_BUY_Achetez un|r [Glaive] |cRXP_BUY_à Corina si vous pouvez vous le permettre|r
    .collect 2488,1 --Collect Gladius (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior
    #completewith next
    +Équipez le [Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>|cRXP_BUY_Achetez un|r [Stylet] |cRXP_BUY_à Corina si vous pouvez vous le permettre|r
    .collect 2494,1 --Collect Stiletto (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0400
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith GSHS
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Paladin
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>Achetez un [Maillet en bois] |cRXP_BUY_à Corina si vous pouvez vous le permettre|r
    .collect 2493,1 --Collect Wooden Mallet (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0631
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #completewith next
    +Équipez le [Maillet en bois]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Warrior/Rogue/Paladin
    .goto Elwynn Forest,41.706,65.544
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Smith Argus|r
    >>Ceci vous permettra de créer des [Pierre à aiguiser brute] qui vont augmenter vos dégâts des armes de 2 << Warrior/Rogue
    >>Ceci pour permettra de créer des [Caillou brut] qui vont augmenter vos dégâts des armes de 2 << Paladin
    >>Si vous ne voulez pas le faire, vous pouvez passer cette étape
    .train 2018 >> Apprenez [Forge]
    .target Smith Argus
step << Mage/Priest/Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,41.706,65.786
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Andrew Krighton|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Andrew Krighton
--  .money >1.0
step
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_William Pestle|r
    .accept 60 >> Acceptez la quête Les bougies de Kobolds
    .target William Pestle
step
    #label GSHS
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Farley|r
    .turnin 2158,1 >> Rendez la quête Repos et détente << Rogue/Warrior
    .turnin 2158,2 >> Rendez la quête Repos et détente << !Rogue !Warrior
    .home >> Liez votre Pierre de foyer à Comté-de-l'or
    .target Innkeeper Farley
step
    #optional
    .xp 6 >> Montez jusqu'au niveau 6
step << Rogue
    .goto Elwynn Forest,43.96,65.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brog Hamfist|r
    .vendor 151 >>|cRXP_BUY_Achetez des|r [Dague de lancer équilibrée] |cRXP_BUY_à Brog si vous pouvez vous le permettre|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .disablecheckbox
    .target Brog Hamfist
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #label BalancedDaggers1
    +Équipez les [Dague de lancer équilibrée]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #requires BalancedDaggers1
    #label DeleteOldDaggers
    .destroy 2947 >> Détruisez le [Petit couteau de lancer] de vos sacs, ils ne seront plus nécessaire
step << Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >> Allez en bas des escaliers
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maximillian Crowe|r
    .trainer >> Apprenez vos sorts de classe
    .target Maximillian Crowe
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cylina Darkheart|r
    .vendor 6374 >> |cRXP_BUY_Achetez le|r [Grimoire de Pacte de Sang (Rang 1)] |cRXP_BUY_à Cylina si vous pouvez vous le permettre. Sinon vous pourrez l'acheter plus tard|r
    .target Cylina Darkheart
    .money <0.0100
    .itemcount 16321,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20397,1 --Blood Pact (Rank 1)
step << Mage/Rogue/Priest
    #optional
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Montez en haut des escaliers dans l'auberge
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Apprenez vos sorts de classe
step << Priest
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess Josetta|r
	.target Priestess Josetta
    .goto Elwynn Forest,43.283,65.721
    .turnin 5623 >> Rendez la quête Au service de la Lumière
    .accept 5624 >> Acceptez la quête Vêtements de la Lumière
    .trainer >> Apprenez vos sorts de classe
step << Rogue
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> Apprenez vos sorts de classe
step << Rogue/Warrior
    .money <0.01
    .goto Elwynn Forest,43.877,66.546,9,0 << Warrior
    .goto Elwynn Forest,43.392,65.550
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Michelle Belle|r à l'étage
    .target Michelle Belle
    .train 3273 >> Apprenez [Premiers soins]
step << Warrior/Rogue
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Farley|r
    .vendor 295 >> |cRXP_BUY_Achetez des|r [Dalaran piquant] |cRXP_BUY_à Farley jusqu'à ce qu'il ne vous reste qu'1 pièce d'argent|r << Warrior
    .vendor 295 >> |cRXP_BUY_Achetez jusqu'à 20|r [Dalaran piquant] |cRXP_BUY_à Farley|r << Rogue
    .collect 414,20 --Dalaran Sharp (20)
    .disablecheckbox
    .target Innkeeper Farley
    .itemcount 414,<7 --Dalaran Sharp (<7)
    .money < 0.1
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Apprenez vos sorts de classe
    .target Lyria Du Lac
step << Paladin
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Wilhelm|r
    .trainer >> Apprenez vos sorts de classe
    .target Brother Wilhelm
step
    #requires DeleteOldDaggers << Rogue
    .goto Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Remy "Two Times"|r
    .accept 47 >> Acceptez la quête L'échange de poussière d'or
    .target Remy "Two Times"
step << Priest
    .goto Elwynn Forest,48.148,68.046
    >>Lancez [Soins inférieurs (Rang 2)] et [Mot de pouvoir : Robustesse] sur |cRXP_FRIENDLY_Guard Roberts|r
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
    >>Tuez les |cRXP_ENEMY_Stonetusk Boars|r. Dépouillez-les pour leur |cRXP_LOOT_[Chunks of Boar Meat]|r
    .collect 769,4,86,1 --Chunk of Boar Meat (4)
    .mob Stonetusk Boar
step << Warrior
    #season 2
    #sticky
    #completewith next
    >>Soyez à l'affût de l' |cRXP_FRIENDLY_Epéiste errant|r. Si vous le trouvez, vous pouvez le défier en duel, ce qui vous permettra d'obtenir la rune de |T132334:0|t[|cRXP_FRIENDLY_Frénésie sanglante|r]
    >>|cRXP_WARN_Il peut apparaître à plusieurs emplacements aléatoirement et ne peut être présent qu'à un seul à la fois|r
    >>|cRXP_WARN_Vous ne pourrez très sûrement pas le tuer seul à ce niveau, passez cette étape si aucun joueur aux alentours ne peut vous aider, vous pourrez revenir après le niveau 10 pour vérifier s'il est toujours présent|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 412507,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r et à |cRXP_FRIENDLY_Ma Stonefield|r << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r << !Rogue
    .accept 85 >> Acceptez la quête Le collier perdu
    .goto Elwynn Forest,34.486,84.253
    .target +"Auntie" Bernice Stonefield
    .accept 88 >> Acceptez la quête Princesse doit mourir ! << Rogue
	.goto Elwynn Forest,34.660,84.482 << Rogue
    .target +Ma Stonefield << Rogue
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone1
    #completewith NecklaceStart
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Ouvrez les |cRXP_PICK_Battered Chests|r. Ramassez les |cRXP_LOOT_[Rough Stones]|r << Warrior/Rogue
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Ouvrez les |cRXP_PICK_Battered Chests|r. Récupérez les |cRXP_LOOT_[Rough Stones]|r et les |cRXP_LOOT_[Linen Cloth]|r << Paladin
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
    +|T136241:0|tÀ l'aide de votre [Forge], transformez les |cRXP_LOOT_[Rough Stones]|r en [Pierre à aiguiser brute] << Warrior/Rogue
    +|T136241:0|tÀ l'aide de votre [Forge], transformez les |cRXP_LOOT_[Rough Stones]|r et les |cRXP_LOOT_[Linen Cloth]|r en [Caillou brut] << Paladin
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
    .cast 2828 >>Utilisez la [Pierre à aiguiser brute] sur votre arme actuelle << Warrior/Rogue
    .cast 3112 >>Utilisez les [Caillou brut] sur votre arme actuelle << Paladin
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
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Dépouillez-les pour leur |cRXP_LOOT_Kobold Candles|r et leur |cRXP_LOOT_Gold Dust|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label NecklaceStart
    .goto Elwynn Forest,43.131,85.722
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 85 >> Rendez la quête Le collier perdu
    .accept 86 >> Acceptez la quête Une tourte pour Billy
    .target Billy Maclure
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maybell Maclure|r
    .accept 106 >> Acceptez la quête Jeunes amoureux
    .target Maybell Maclure
step
    #optional
    #completewith Lovers
    .goto Elwynn Forest,42.357,89.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Joshua Maclure|r
    .vendor >>|cRXP_BUY_Achetez autant de|r [Lait glacé] que vous le pouvez << Priest/Warlock/Mage
    .vendor >>Vendez tout ce dont nous n'avez pas besoin << !Priest !Warlock !Mage
    .target Joshua Maclure
    .subzoneskip 64,1 --The Maclure Vineyards
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone2
    #completewith Lovers
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Ouvrez les |cRXP_PICK_Battered Chests|r. Ramassez les |cRXP_LOOT_[Rough Stones]|r << Warrior/Rogue
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Ouvrez les |cRXP_PICK_Battered Chests|r. Récupérez les |cRXP_LOOT_[Rough Stones]|r et les |cRXP_LOOT_[Linen Cloth]|r << Paladin
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
    +|T136241:0|tÀ l'aide de votre [Forge], transformez les |cRXP_LOOT_[Rough Stones]|r en [Pierre à aiguiser brute] << Warrior/Rogue
    +|T136241:0|tÀ l'aide de votre [Forge], transformez les |cRXP_LOOT_[Rough Stones]|r et les |cRXP_LOOT_[Linen Cloth]|r en [Caillou brut] << Paladin
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
    .cast 2828 >>Utilisez la [Pierre à aiguiser brute] sur votre arme actuelle << Warrior/Rogue
    .cast 3112 >>Utilisez les [Caillou brut] sur votre arme actuelle << Paladin
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
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Dépouillez-les pour leur |cRXP_LOOT_Kobold Candles|r et leur |cRXP_LOOT_Gold Dust|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label Lovers
    .goto Elwynn Forest,29.840,85.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tommy Joe Stonefield|r
    .turnin 106 >> Rendez la quête Jeunes amoureux
    .accept 111 >> Acceptez la quête Discuter avec Mamie
    .target Tommy Joe Stonefield
step
    #requires BoarMeatQuest
    #label Pie
    .goto Elwynn Forest,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .turnin 86 >> Rendez la quête Une tourte pour Billy
    .accept 84 >> Acceptez la quête Revenir voir Billy
    .target "Auntie" Bernice Stonefield
step
    .goto 1429,34.945,83.855
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gramma Stonefield|r à l'intérieur
    .turnin 111 >> Rendez la quête Discuter avec Mamie
    .accept 107 >> Acceptez la quête Note pour William
    .target Gramma Stonefield
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone3
    #completewith Exchange
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Ouvrez les |cRXP_PICK_Battered Chests|r. Ramassez les |cRXP_LOOT_[Rough Stones]|r << Warrior/Rogue
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Ouvrez les |cRXP_PICK_Battered Chests|r. Récupérez les |cRXP_LOOT_[Rough Stones]|r et les |cRXP_LOOT_[Linen Cloth]|r << Paladin
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
    +|T136241:0|tÀ l'aide de votre [Forge], transformez les |cRXP_LOOT_[Rough Stones]|r en [Pierre à aiguiser brute] << Warrior/Rogue
    +|T136241:0|tÀ l'aide de votre [Forge], transformez les |cRXP_LOOT_[Rough Stones]|r et les |cRXP_LOOT_[Linen Cloth]|r en [Caillou brut] << Paladin
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
    .cast 2828 >>Utilisez la [Pierre à aiguiser brute] sur votre arme actuelle << Warrior/Rogue
    .cast 3112 >>Utilisez les [Caillou brut] sur votre arme actuelle << Paladin
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
    >>Tuez les |cRXP_ENEMY_Mineurs kobolds|r et les |cRXP_ENEMY_Tunneliers kobolds|r. Dépouillez-les pour une |T134168:0|t|cRXP_LOOT_[Tête de Kobold coupée]|r
    >>|cRXP_WARN_Il s'agit de l'un des trois objets dont vous avez besoin pour déverrouiller votre|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Dévastation|r] |cRXP_WARN_pour quand vous arriverez à Stormwind plus tard|r
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
    >>Utilisez le |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Mineurs kobolds|r et les |cRXP_ENEMY_Tunneliers kobolds|r. Dépouillez-les pour le |T134327:0|t|cRXP_LOOT_[Morceau supérieur droit de carte]|r
    >>|cRXP_WARN_Vous devez être|r |T132320:0|t[Camouflé] |cRXP_WARN_pour pouvoir utiliser|r |T133644:0|t[Vol à la tire]
    >>|cRXP_ENEMY_NOTE:|r |cRXP_WARN_Tous les|r |T134327:0|t[|cRXP_LOOT_Morceaux de carte|r] |cRXP_WARN_servent à obtenir la rune|r |T134536:0|t[Tireur rapide] |cRXP_WARN_.|r |cRXP_WARN_Elle est utile, mais pas obligatoire pour monter de niveau, et devient obsolète vers le niveau 22 après avoir débloqué vos poisons. N'hésitez pas à passer toutes ces étapes si vous ne voulez pas obtenir la rune aussi rapidement que possible et préférez gagner un peu de temps à court terme.|r
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
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Dépouillez-les pour leur |cRXP_LOOT_Kobold Candles|r et leur |cRXP_LOOT_Gold Dust|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto Elwynn Forest,43.131,85.722
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 84 >> Rendez la quête Revenir voir Billy
    .accept 87 >> Acceptez la quête Dent-d'or
    .target Billy Maclure
step << Priest
    #sticky
    #label SharedPain
    #completewith BernicesNecklace
    .goto Elwynn Forest,40.6,81.8
    >>Tuez les |cRXP_ENEMY_Mineurs kobolds|r. Dépouillez-les pour le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un sauveur en captivité|r]
    >>|cRXP_WARN_Ne vous focalisez pas sur l'obtention de cet objet, vous pourrez obtenir cette rune plus tard|r
    .collect 205945,1 -- Memory of an Imprisoned Savior (1)
    .mob Kobold Miner
    .train 402854,1
step << Priest
    #sticky
    #requires SharedPain
    #completewith BernicesNecklace
    .train 402854 >> |cRXP_WARN_Utilisez le|r |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un sauveur en captivité|r] |cRXP_WARN_pour apprendre|r |T136160:0|t[Souffrance partagée]
    >>|cRXP_WARN_Vous devez avoir 1 buff|r |T135934:0|t|T136057:0|t[Méditation] |cRXP_WARN_en tapant /kneel dans un endroit sacré comme, l'Abbaye de Comté-du-Nord, la Cathédrale de Hurlevent, les Autels de la Lumière à Courbenclume, Loch Modan ou la Garde mystique à Forgefer|r
    .use 205945
    .itemcount 205945,1
step
    .goto Elwynn Forest,39.01,82.20,15,0
    .goto Elwynn Forest,39.92,80.11
    >>Entrez dans l'un dans des grands espaces ouverts dans la mine de Fargodeep
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    #season 2
    #label BernicesNecklace
    .goto 1429,41.732,78.024
    >>Tuez |cRXP_ENEMY_Goldtooth|r. Dépouillez-le pour le |cRXP_LOOT_Bernice's Necklace|r << !Warrior !Priest
    >>Tuez |cRXP_ENEMY_Dent-d'or|r. Dépouillez-le pour le |cRXP_LOOT_Collier de Bernice|r et la |T134419:0|t|cRXP_LOOT_[Rune de tonnerre furieux]|r << Warrior
    >>Tuez |cRXP_ENEMY_Dent-d'or|r. Dépouillez-le pour le |cRXP_LOOT_Collier de Bernice|r et le |T136222:0|t|cRXP_LOOT_[Souvenir d’un noir dessein]|r << Priest
    >>|cRXP_WARN_Faites attention car il arrive souvent avec les |cRXP_ENEMY_Kobold Miner|r proches de lui|r
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
    >>Finissez de tuer les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Dépouillez-les pour leur |cRXP_LOOT_Kobold Candles|r et leur |cRXP_LOOT_Gold Dust|r
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
    .xp 9+2000 >> Tuez des kobolds jusqu'à ce que vous ayez 2000xp du niveau 9.
    >> |cRXP_WARN_Si vous en être loin, vous pouvez rendre la quête Dent-d'or, mais il est plus efficace de tuer des mobs|r
step << Warrior
    #season 2
    #sticky
    #label GoldtoothRune
    .train 403476 >>|cRXP_WARN_Utilisez la|r |T134419:0|t|cRXP_LOOT_[Rune de tonnerre furieux]|r |cRXP_WARN_pour apprendre|r |T136048:0|t[Tonnerre furieux]
    .use 204809
    .itemcount 204809,1
step << Priest
    #season 2
    #sticky
    #label GoldtoothRune
    >>|cRXP_WARN_Vous devez avoir le buff|r |T135934:0|t|T136057:0|t[Méditation] |cRXP_WARN_en tapant /kneel dans une zone sacrée comme l'Abbaye de Comté-du-Nord ou la Cathédrale de Stormwind|r
    .train 425216 >>|cRXP_WARN_Utilisez le|r |T136222:0|t|cRXP_LOOT_[Souvenir d'un noir dessein]|r |cRXP_WARN_pour apprendre|r |T237514:0|t[Fléau du Vide]
    .use 205940
step << Warrior
    #season 2
    #optional
    #requires KoboldRune
--XXREQ Placeholder invis step
step
	#softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au Gardien des âmes de Goldshire
    .target Gardien des âmes
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
    .goto Elwynn Forest,39.30,60.48,30 >>|cRXP_WARN_Sautez sur un déchiqueteur, les rondins flottantes, les caisses, ou la lampe du wagon à l'intérieur de la grotte. Effectuez un Logout skip en vous déconnectant puis en vous reconnectant|r
    .subzoneskip 57,1 --Fargodeep Mine
    .isOnQuest 47
step
    #hardcore
    #optional
    #completewith Exchange
    .goto Elwynn Forest,42.140,67.254,125 >> Retourner à Comté-de-l'Or
    .subzoneskip 87 --Goldshire
step
    #softcore
    #completewith Exchange
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
step
    #label Exchange
    .goto Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Remy "Two Times"|r
    >>Ne vendez PAS le [Sac de billes]. C'est un objet incroyablement précieux jusqu'au niveau 60
    .turnin 47 >> Rendez la quête L'échange de poussière d'or
    .accept 40 >> Acceptez la quête Péril en la rivière
    .target Remy "Two Times"
step << Priest
    #season 2
    #optional
    #completewith GoldshireEnd
    +|cRXP_WARN_Si possible, trouvez un prêtre à Comté-de-l'Or qui a un autre buff|r |T135934:0|t|T136057:0|t[Méditation] |cRXP_WARN_|r
    >>|cRXP_WARN_Tapez /kneel, puis demandez à l'autre prêtre de taper /pray sur vous pendant que vous êtes à genoux pour obtenir leur buff|r |T135934:0|t|T136057:0|t[Méditation] |cRXP_WARN_ que vous pourrez utiliser plus tard|r
step
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 62 >> Rendez la quête La mine de Fondugouffre
    .accept 76 >> Acceptez la quête La mine Veine-de-jaspe
    .turnin 40 >> Rendez la quête Péril en la rivière
    .target Marshal Dughan
step
    #optional << Warrior/Rogue/Paladin
    #completewith CandlesEnd
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corina Steele|r
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .target Corina Steele
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>3.3 << Rogue
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>3.8 << Warrior
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>5.0 << Paladin
step << Warrior
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>|cRXP_BUY_Achetez un|r [Glaive] |cRXP_BUY_à Corina si vous pouvez vous le permettre|r
    .collect 2488,1 --Collect Gladius (1)
    .disablecheckbox
--  .money <0.0536
    .target Corina Steele
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior
    #completewith CandlesEnd
    +Équipez le [Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>|cRXP_BUY_Achetez un deuxième|r |T135641:0|t[Stylet] |cRXP_BUY_à Corina si vous pouvez vous le permettre|r
    .collect 2494,1 --Collect Stiletto (1)
    .disablecheckbox
    .target Corina Steele
--   .money <0.0400
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith CandlesEnd
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith next
    .engrave 10,399960 >> Ouvrez votre page de personnage et gravez |T132304:0|t[|cRXP_FRIENDLY_Estropier|r] sur vos gants. Il s'agit de loin de la rune la plus forte pour tuer vos ennemis
step << Paladin
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>|cRXP_BUY_Achetez un|r [Maillet en bois] |cRXP_BUY_à Corina si vous pouvez vous le permettre|r
    .collect 2493,1 --Collect Wooden Mallet (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0631
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #completewith CandlesEnd
    +Équipez le [Maillet en bois]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #season 2
    #xprate >1.59
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Wilhelm|r
    >>|cRXP_WARN_Apprenez|r |T135949:0|t[Purification] |cRXP_WARN_pour bientôt obtenir la|r |T133815:0|t[Gravure de plastron (Egide)] |cRXP_WARN_|r
    .train 1152 >>Apprenez |T135949:0|t[Purification]
    .trainer >> Apprenez vos sorts de classe
    .target Brother Wilhelm
step << Paladin
    #season 0,1
    #xprate >1.59
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Wilhelm|r
    .trainer >> Apprenez vos sorts de classe
    .target Brother Wilhelm
step << Warrior
    #xprate >1.59
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Apprenez vos sorts de classe
    .target Lyria Du Lac
step
    #label CandlesEnd
    #requires GoldtoothRune << Warrior/Priest --Season 2
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_William Pestle|r
    .turnin 60 >> Rendez la quête Les bougies de Kobolds
    .accept 61 >> Acceptez la quête Une cargaison pour Hurlevent
    .turnin 107 >> Rendez la quête Note pour William
    .accept 112 >> Acceptez la quête À la recherche du varech
    .target William Pestle
step << Warrior
    #xprate <1.59
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Apprenez vos sorts de classe
    .target Lyria Du Lac
step << Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >> Descendez les escaliers dans l'auberge
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maximillian Crowe|r
    .target Maximillian Crowe
    .trainer >> Apprenez vos sorts de classe
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cylina Darkheart|r
    .vendor >> |cRXP_BUY_Achetez le|r [Grimoire de Pacte de Sang (Rang 2)] |cRXP_BUY_à Cylina si vous pouvez vous le permettre. Sinon vous pourrez l'acheter plus tard|r
    .target Cylina Darkheart
    .money <0.100
    .itemcount 16302,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20270,1 --Blood Pact (Rank 1)
step << Mage/Priest/Rogue/Warrior/Paladin
    #optional
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Montez en haut des escaliers dans l'auberge
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Apprenez vos sorts de classe
step << Priest
    .goto Elwynn Forest,43.283,65.721
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess Josetta|r
	.target Priestess Josetta
    .turnin 5624 >> Rendez la quête Vêtements de la Lumière
    .trainer >> Apprenez vos sorts de classe
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> Apprenez vos sorts de classe
step << Rogue/Warrior/Paladin
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Michelle Belle|r
    .target Michelle Belle
    .goto Elwynn Forest,43.392,65.550
    .train 3273 >> Apprenez [Premiers soins]
step
    #label GoldshireEnd << Priest --Season 2
    .goto Elwynn Forest,43.96,65.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brog Hamfist|r
    .vendor >> Achetez une [Petite sacoche marron] si nécessaire
	.target Brog Hamfist
    .money <0.2
step
    #completewith next
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Farley|r
    .vendor >> |cRXP_BUY_Achetez jusqu'à 20|r [Lait glacé] |cRXP_BUY_à Farley si vous pouvez vous le permettre|r << !Warrior !Rogue !Paladin
    .vendor >> |cRXP_BUY_Achetez jusqu'à 20|r [Dalaran piquant] |cRXP_BUY_à Farley|r << Warrior/Rogue
    .vendor >> |cRXP_BUY_Achetez jusqu'à 10|r [Dalaran piquant] |cRXP_BUY_et 10|r [Lait glacé] |cRXP_BUY_à Farley si vous pouvez vous le permettre|r << Paladin
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
    >>Tuez les |cRXP_ENEMY_Murlocs|r et les |cRXP_ENEMY_Ruisseliers murlocs|r. Dépouillez-les pour une |T134169:0|t|cRXP_LOOT_[Tête de Murloc coupée]|r
    >>|cRXP_WARN_Il s'agit de l'un des trois objets dont vous avez besoin pour déverrouiller votre|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Dévastation|r] |cRXP_WARN_pour quand vous arriverez à Stormwind au niveau 10|r
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
    >>Utilisez le|T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Ruisseliers murlocs|r et les |cRXP_ENEMY_Murlocs|r. Récupérez le |T134269:0|t|cRXP_LOOT_[Morceau inférieur droit de carte]|r
    >>|cRXP_WARN_Vous devez être|r |T132320:0|t[Camouflé] |cRXP_WARN_pour pouvoir utiliser|r |T133644:0|t[Vol à la tire]
    >>|cRXP_ENEMY_NOTE:|r |cRXP_WARN_Tous les|r |T134327:0|t[|cRXP_LOOT_Morceaux de carte|r] |cRXP_WARN_servent à obtenir la rune|r |T134536:0|t[Tireur rapide] |cRXP_WARN_.|r |cRXP_WARN_Elle est utile, mais pas obligatoire pour monter de niveau, et devient obsolète vers le niveau 22 après avoir débloqué vos poisons. N'hésitez pas à passer toutes ces étapes si vous ne voulez pas obtenir la rune aussi rapidement que possible et préférez gagner un peu de temps à court terme.|r
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
    >>Tuez les |cRXP_ENEMY_Murlocs|r et les |cRXP_ENEMY_Murloc Streamrunners|r. Dépouillez-les pour leur |cRXP_LOOT_Crystal Kelp Fronds|r
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
	.mob Murloc
	.mob Murloc Streamrunner
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone4
    #completewith JasperlodeExplore
    >>Tuez les |cRXP_ENEMY_Kobold Miners|r. Ouvrez les |cRXP_PICK_Battered Chests|r. Dépouillez-les pour leur |cRXP_LOOT_[Rough Stones]|r << Warrior/Rogue
    >>Tuez les |cRXP_ENEMY_Kobold Miners|r. Ouvrez les |cRXP_PICK_Battered Chests|r. Dépouillez-les pour leur |cRXP_LOOT_[Rough Stones]|r et leur |cRXP_LOOT_[Linen Cloth]|r << Paladin
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
    +|T136241:0|tÀ l'aide de votre [Forge], transformez les |cRXP_LOOT_[Rough Stones]|r en [Pierre à aiguiser brute] << Warrior/Rogue
    +|T136241:0|tÀ l'aide de votre [Forge], transformez les |cRXP_LOOT_[Rough Stones]|r et les |cRXP_LOOT_[Linen Cloth]|r en [Caillou brut] << Paladin
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
    .cast 2828 >>Utilisez la [Pierre à aiguiser brute] sur votre arme actuelle << Warrior/Rogue
    .cast 3112 >>Utilisez les [Caillou brut] sur votre arme actuelle << Paladin
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
    >>Tuez les |cRXP_ENEMY_Mineurs kobolds|r. Dépouillez-les pour le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un sauveur en captivité|r]
    .collect 205945,1 -- Memory of an Imprisoned Savior (1)
    .mob Kobold Miner
    .train 402854,1
step << Priest
    #sticky
    #requires SharedPainTwo
    #completewith JasperlodeExplore
    .train 402854 >> |cRXP_WARN_Utilisez le|r |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un sauveur en captivité|r] |cRXP_WARN_pour apprendre|r |T136160:0|t[Souffrance partagée]
    >>|cRXP_WARN_Vous devez avoir 1 buff|r |T135934:0|t|T136057:0|t[Méditation] |cRXP_WARN_en tapant /kneel dans un endroit sacré comme, l'Abbaye de Comté-du-Nord, la Cathédrale de Hurlevent, les Autels de la Lumière à Courbenclume, Loch Modan ou la Garde mystique à Forgefer|r
    .use 205945
    .itemcount 205945,1
step
    #optional
    #requires MurlocRune << Warrior/Rogue --Season 2
    #label Jasperlode
    #completewith JasperlodeExplore
    .goto Elwynn Forest,61.654,53.608,15 >> Entrez dans la mine de Jasperlode
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
    >>Tuez les |cRXP_ENEMY_Géomanciens kobolds|r. Dépouillez-les pour les |T134939:0|t|cRXP_LOOT_[Notes de sort : VALAFM EVNTMIE]|r
    .collect 203752,1
    .mob Kobold Geomancer
    .train 401768,1
step
    #label JasperlodeExplore
    .goto Elwynn Forest,61.20,51.46,15,0
    .goto Elwynn Forest,60.72,50.85,15,0
    .goto Elwynn Forest,60.39,50.16
    >>Suivez le chemin au milieu pour explorer la mine de Jasperlode
    .complete 76,1 --Scout through the Jasperlode Mine
step << Priest
    .goto Elwynn Forest,62.2,57.4
    >>Tuez les |cRXP_ENEMY_Mineurs kobolds|r. Dépouillez-les pour le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un sauveur en captivité|r]
    .collect 205945,1 -- Memory of an Imprisoned Savior (1)
    .mob Kobold Miner
    .train 402854,1
step << Priest
    #optional
    #completewith next
    .train 402854 >> |cRXP_WARN_Utilisez le|r |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un sauveur en captivité|r] |cRXP_WARN_pour apprendre|r |T136160:0|t[Souffrance partagée]
    >>|cRXP_WARN_Vous devez avoir 1 buff|r |T135934:0|t|T136057:0|t[Méditation] |cRXP_WARN_en tapant /kneel dans un endroit sacré comme, l'Abbaye de Comté-du-Nord, la Cathédrale de Hurlevent, les Autels de la Lumière à Courbenclume, Loch Modan ou la Garde mystique à Forgefer|r
    .use 205945
    .itemcount 205945,1
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone5
    #completewith Find
    >>Tuez les |cRXP_ENEMY_Kobold Miners|r. Ouvrez les |cRXP_PICK_Battered Chests|r. Dépouillez-les pour leur |cRXP_LOOT_[Rough Stones]|r << Warrior/Rogue
    >>Tuez les |cRXP_ENEMY_Kobold Miners|r. Ouvrez les |cRXP_PICK_Battered Chests|r. Dépouillez-les pour leur |cRXP_LOOT_[Rough Stones]|r et leur |cRXP_LOOT_[Linen Cloth]|r << Paladin
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
    +|T136241:0|tÀ l'aide de votre [Forge], transformez les |cRXP_LOOT_[Rough Stones]|r en [Pierre à aiguiser brute] << Warrior/Rogue
    +|T136241:0|tÀ l'aide de votre [Forge], transformez les |cRXP_LOOT_[Rough Stones]|r et les |cRXP_LOOT_[Linen Cloth]|r en [Caillou brut] << Paladin
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
    .cast 2828 >>Utilisez la [Pierre à aiguiser brute] sur votre arme actuelle << Warrior/Rogue
    .cast 3112 >>Utilisez les [Caillou brut] sur votre arme actuelle << Paladin
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
    .cast 1152 >>|cRXP_WARN_Lancez|r |T135949:0|t[Purification] |cRXP_WARN_sur l' |cRXP_FRIENDLY_Aventurier blessé|r à l'intérieur|r
    .target Wounded Adventurer
    .train 425619,1
    .train 1152,3 --Purify Trained
step << Paladin
    #season 2
    .goto Elwynn Forest,61.97,47.31
    >>|cRXP_WARN_Parlez à l' |cRXP_FRIENDLY_Aventurier blessé|r après lui avoir lancé|r |T135949:0|t[Purification] |cRXP_WARN_sur lui pour recevoir la|r |T134419:0|t[Rune d’Égide]
    .collect 205685,1 --Rune of Aegis (1)
    .target Wounded Adventurer
    .skipgossip
    .train 425619,1
    .train 1152,3 --Purify Trained
--XX gossipoption 109556
step << Paladin
    #season 2
    #completewith Find
    .cast 402265 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[Rune d’Égide] |cRXP_WARN_pour apprendre|r |T133815:0|t[Gravure de plastron (Egide)]
    .use 205685
    .itemcount 205685,1 --Rune of Aegis (1)
    .train 425619,1
    .train 1152,3 --Purify Trained
step << Mage
    #season 2
    #requires JasperlodeRune
    #completewith Find
    .train 401768 >>|cRXP_WARN_Utilisez les|r |T134939:0|t|cRXP_LOOT_[Notes de sort : VALAFM EVNTMIE]|r |cRXP_WARN_pour apprendre|r |T135820:0|t[Flamme vivante]
    .use 203752
step << Priest
    #optional
    #label ExitJasperlode
    #completewith Find
    .goto 1429,61.820,53.871,15 >> Quittez la mine de Jasperlode
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
    >>Tuez les |cRXP_ENEMY_Sorcier-voleurs défias|r. Dépouillez-les pour la |T135975:0|t|cRXP_LOOT_[Prophétie d’une citadelle profanée]|r
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Defias Rogue Wizard
    .train 402852,1
step << Priest
    #season 2
    #optional
    #completewith BundleOT
    .train 402852 >> |cRXP_WARN_Utilisez la|r |T135975:0|t|cRXP_LOOT_[Prophétie d’une citadelle profanée]|r |cRXP_WARN_pour apprendre|r |T237570:0|t[Homoncules]
    >>|cRXP_WARN_Vous devez avoir 2 buffs|r |T135934:0|t|T136057:0|t[Méditation] |cRXP_WARN_en tapant /kneel dans un endroit sacré comme, l'Abbaye de Comté-du-Nord, la Cathédrale de Hurlevent, les Autels de la Lumière à Courbenclume, Loch Modan ou la Garde mystique à Forgefer|r
    .use 205947
    .itemcount 205947,1
step << Rogue
    #season 2
    #label GnollMapPiece
    .goto 1429,68.680,54.635,60,0
    .goto 1429,68.135,48.678,60,0
    .goto 1429,68.102,45.049,60,0
    .goto 1429,66.618,40.849
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Estafettes Rivepattes|r et les |cRXP_ENEMY_Rivepattes chétifs|r. Dépouillez-les pour obtenir le |T134327:0|t[|cRXP_LOOT_Morceau inférieur gauche de carte]|r
    >>Vous devez être en [Camouflage] pour utiliser votre [Vol à la tire]
    >>|cRXP_ENEMY_NOTE:|r |cRXP_WARN_Tous les|r |T134327:0|t[|cRXP_LOOT_Morceaux de carte|r] |cRXP_WARN_servent à obtenir la rune|r |T134536:0|t[Tireur rapide] |cRXP_WARN_.|r |cRXP_WARN_Elle est utile, mais pas obligatoire pour monter de niveau, et devient obsolète vers le niveau 22 après avoir débloqué vos poisons. N'hésitez pas à passer toutes ces étapes si vous ne voulez pas obtenir la rune aussi rapidement que possible et préférez gagner un peu de temps à court terme.|r
    >>|cRXP_WARN_Si vous décidez de ne pas récupérer la rune, vous pouvez passer le passage aux Carmines pour le moment et juste utiliser votre Pierre de foyer ou mourir pour ressusciter à Goldshire|r
    .collect 203787,1 -- Bottom-Left Map Piece (1)
    .mob Riverpaw Outrunner
    .mob Riverpaw Runt
    .train 398196,1
step << Rogue
    #season 2
    #softcore
    #completewith AcceptBundle
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
    .train 398196,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Rogue
    #softcore
    #season 2
    #optional
    .goto Elwynn Forest,83.283,66.089
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rallic Finn|r
    .vendor >> Vendez ce dont vous n'avez pas besoin, et réparez votre équipement
    .target Rallic Finn
    .train 398196,1
    .isQuestAvailable 5545
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Rogue
    #season 2
    .goto Elwynn Forest,67.4,78.6,60,0
    .goto Elwynn Forest,70.8,79.8,60,0
    .goto Elwynn Forest,89.2,78.8
    >>Utilisez|T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Défias|r. Récupérez le |T134327:0|t[|cRXP_LOOT_Morceau supérieur gauche de carte]|r
    >>Vous devez être en [Camouflage] pour utiliser votre [Vol à la tire]
    >>|cRXP_WARN_Note: Celui-ci peut aussi se trouver sur un autre membre des |cRXP_ENEMY_Défias|r dans la Forêt d'Elwynn|r
    .collect 203785,1 -- Top-Left Map Piece (1)
    .mob Defias Bandit
    .train 398196,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Rogue
    #season 2
    .cast 401847 >>|cRXP_WARN_Utilisez n'importe lequel des|r |T134327:0|t[|cRXP_LOOT_Morceaux de carte]|r |cRXP_WARN_pour les combiner en la|r |T134269:0|t[|cRXP_LOOT_Carte au trésor d’Elwyn|r]
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
    .cast 401617 >>|cRXP_WARN_Utilisez la|r |T134269:0|t[|cRXP_LOOT_Carte au trésor d’Elwyn|r] |cRXP_WARN_à la position indiquée. Un |cRXP_PICK_Trésor enfoui|r apparaîtra|r
    .use 203750
    .itemcount 203750,1
    .train 398196,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Rogue
    #season 2
    .goto Elwynn Forest,80.365,79.134
    >>Ouvrez le |cRXP_PICK_Trésor enfoui|r. Récupérez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Tireur rapide|r]
    .collect 203991,1 -- Rune of Quick Draw (1)
    .train 398196,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Rogue
    #season 2
    .train 400095 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Tireur rapide|r] |cRXP_WARN_pour apprendre|r |T134536:0|t[Tireur rapide]
    .use 203991
    .itemcount 203991,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Priest
    #softcore
    #label EVDeathskip
    #completewith RedridgeS
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
    .zoneskip Redridge Mountains
--XX not worth deathskipping as a warlock due to having to resumm pet
step << Priest/Rogue
    #label RedridgeS
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Voyagez vers Les Carmines
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Priest/Rogue
    #optional
    .goto Redridge Mountains,17.4,69.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Parker|r
    .accept 244 >> Acceptez la quête Des gnolls encombrants
    .target Guard Parker
    .xp <11,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Priest/Rogue
    #softcore
    #completewith RRFP
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Priest/Rogue
    #hardcore
    #optional
    #completewith RRFP
    .goto Redridge Mountains,18.581,69.208,15,0
    .goto Redridge Mountains,23.325,71.373,25,0
    .goto Redridge Mountains,29.565,67.930,25,0
    .goto Redridge Mountains,30.590,59.410,15 >>|cRXP_WARN_ATTENTION: Restez vers la route principale et évitez tous les mobs à proximité sur la route|r
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Priest/Rogue
    #optional
    .goto Redridge Mountains,30.73,59.99
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Feldon|r
    .turnin 244 >> Rendez la quête Des gnolls encombrants
    .target Deputy Feldon
    .isOnQuest 244
    .xp <11,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Priest/Rogue
    #label RRFP
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Prenez le chemin de vol des Carmines
    .target Ariena Stormfeather
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step
    #optional
    #completewith CollectKelp
    .hs >> Utilisez votre Pierre de foyer pour revenir au Comté-de-l'or
    .subzoneskip 87
step
    #label CollectKelp
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_William Pestle|r
    .turnin 112 >> Rendez la quête À la recherche du varech
    .timer 9,À la recherche du varech RP
    .accept 114 >> Acceptez la quête La fuite
    .target William Pestle
step << Warrior/Rogue
    #optional
    #completewith next << Warrior
    #completewith RogueOptTrain << Rogue
    .goto Elwynn Forest,43.877,66.546,9 >> Montez en haut des escaliers dans l'auberge
step << Warrior/Rogue
    .goto Elwynn Forest,43.392,65.550
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Michelle Belle|r
    .train 3273 >> Apprenez [Premiers soins]
    .target Michelle Belle
step << Rogue
    #optional
    #label RogueOptTrain
    .goto Elwynn Forest,43.872,65.937
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keryn Sylvius|r
    >>N'apprenez que [Ambidextrie] et [Sprint]. N'apprenez pas les autres sors pour garder votre argent pour plus tard
    .train 674 >> Apprenez [Ambidextrie]
    .train 2983 >> Apprenez [Sprint]
    .target Keryn Sylvius
    .xp <10,1
step
    .goto Elwynn Forest,42.105,65.927
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 76 >> Rendez la quête La mine Veine-de-jaspe
    .accept 239 >> Acceptez la quête Au secours de la garnison du ruisseau de l'ouest !
    .accept 109 >> Acceptez la quête Aller voir Gryan Roidemantel
    .target Marshal Dughan
step
    #sticky
    #label GoldshireVendor
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corina Steele|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Corina Steele
    .money >0.75
step
    .goto Elwynn Forest,41.706,65.544
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Smith Argus|r
    .accept 1097 >> Acceptez la quête La quête d'Elmore
    .target Smith Argus
step << Warlock/Warrior
    #requires GoldshireVendor
    #optional
    .xp 10 >> Montez jusqu'au niveau 10
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lyria Du Lac|r
    >>|cRXP_WARN_N'apprenez pas vos sorts de classe comme vous devez économiser votre argent pour plus tard|r
    .accept 1638 >> Acceptez la quête L'entraînement du guerrier
    .target Lyria Du Lac
step << Paladin
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Wilhelm|r
    .trainer >> Apprenez vos sorts de classe
    .target Brother Wilhelm
    .xp <10,1
    .xp >12,1
step << Paladin
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Wilhelm|r
    .accept 2998 >> Acceptez la quête Le Tome de divinité
    .trainer >> Apprenez vos sorts de classe
    .target Brother Wilhelm
    .xp <12,1
step << Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >> Descendez les escaliers dans l'auberge
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maximillian Crowe|r et à |cRXP_FRIENDLY_Remen Marcot|r
    .trainer >> Apprenez vos sorts de classe
    .goto Elwynn Forest,44.392,66.240
    .target +Maximillian Crowe
    .accept 1685 >> Acceptez la quête Convocation de Gakin
    .goto Elwynn Forest,44.485,66.268
    .target +Remen Marcot
step << Mage/Priest
    #optional
    #requires GoldshireVendor
    #completewith next
    .goto Elwynn Forest,43.7,66.4,10 >>Montez à l'étage
    .xp <10,1
step << Priest
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,43.283,65.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess Josetta|r
    .accept 5635 >> Acceptez la quête Prière du désespoir
    .trainer >> Apprenez vos sorts de classe
    .target Priestess Josetta
    .xp <10,1
step << Mage
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,43.25,66.19
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .trainer >> Apprenez vos sorts de classe
    .target Zaldimar Wefhellt
    .xp <10,1
step << skip --Rogue
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,43.872,65.937
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keryn Sylvius|r
    >>N'apprenez que [Ambidextrie] et [Sprint]. N'apprenez pas les autres sors pour garder votre argent pour plus tard
    .train 674 >> Apprenez [Ambidextrie]
    .train 2983 >> Apprenez [Sprint]
    .target Keryn Sylvius
--XX skip quest, not worth going inside for
step
    #completewith PrincessFinish
    #optional
    .abandon 59 >> Abandonnez la quête Les armures de cuir et d'étoffe
step << Warrior
    #season 2
    #sticky
    #completewith GoldtoothEnd
    >>Soyez à l'affût de l' |cRXP_FRIENDLY_Epéiste errant|r sur le trajet. Si vous le trouvez, vous pouvez le défier en duel, ce qui vous permettra d'obtenir la rune de |T132334:0|t[|cRXP_FRIENDLY_Frénésie sanglante|r]
    >>|cRXP_WARN_Il peut apparaître à plusieurs emplacements aléatoirement et ne peut être présent qu'à l'un d'entre eux. Passez cette étape s'il n'est pas ici|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 412507,1
step
    #optional
    #requires GoldshireVendor
    #completewith next
    .goto Elwynn Forest,43.154,89.625,50 >> Voyagez jusqu'aux vignes des Maclure
step
    #label Escape
    #requires GoldshireVendor
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maybell Maclure|r
    .turnin 114 >> Rendez la quête La fuite
    .target Maybell Maclure
step
    #label GoldtoothEnd
    .goto Elwynn Forest,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .turnin 87 >> Rendez la quête Dent-d'or
    .turnin 88 >> Rendez la quête Princesse doit mourir ! << Rogue
    .target "Auntie" Bernice Stonefield
step
    #optional
    #completewith next
    .abandon 88 >> Abandonnez la quête Princesse doit mourir ! comme vous ne l'avez pas complété
step << Warrior
    #season 2
    .goto Elwynn Forest,30.0,73.4
    >>Vérifiez l'endroit marqué pour l' |cRXP_FRIENDLY_Epéiste errant|r. S'il est présent, défiez-le en duel, pour obtenir la rune de |T132334:0|t[|cRXP_FRIENDLY_Frénésie sanglante|r]
    >>|cRXP_WARN_Il peut apparaître à plusieurs emplacements aléatoirement et ne peut être présent qu'à l'un d'entre eux. Passez cette étape s'il n'est pas ici|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 412507,1
step
    #optional
    #completewith Garrison
    .goto Elwynn Forest,24.82,76.25,80 >> Voyagez jusqu'à la garnison du ruisseau de l'ouest


----Start of Paladin 1.5x Martyrdom Rune section----


step << Paladin
    #xprate >1.49
    #season 2
    #optional
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 239 >> Rendez la quête Au secours de la garnison du ruisseau de l'ouest !
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
    >>Tuez les |cRXP_ENEMY_Rivepattes chétifs|r et les |cRXP_ENEMY_Estafettes Rivepattes|r. Dépouillez-les pour leur |T132889:0|t[Étoffe de lin]. Vous allez en avoir besoin de 10 pour une quête à venir bientôt
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 239 >> Rendez la quête Au secours de la garnison du ruisseau de l'ouest !
    .target Deputy Rainer
step << Warrior
    #season 2
    .goto Elwynn Forest,25.3,70.2
    >>Vérifiez l'endroit marqué pour l' |cRXP_FRIENDLY_Epéiste errant|r. S'il est présent, défiez-le en duel, pour obtenir la rune de |T132334:0|t[|cRXP_FRIENDLY_Frénésie sanglante|r]
    >>|cRXP_WARN_Il peut apparaître à plusieurs emplacements aléatoirement et ne peut être présent qu'à l'un d'entre eux. Passez cette étape s'il n'est pas ici|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 412507,1
step << Warrior
    #season 2
    .goto Elwynn Forest,22.3,73.3
    >>Vérifiez l'endroit marqué pour l' |cRXP_FRIENDLY_Epéiste errant|r. S'il est présent, défiez-le en duel, pour obtenir la rune de |T132334:0|t[|cRXP_FRIENDLY_Frénésie sanglante|r]
    >>|cRXP_WARN_Il peut apparaître à plusieurs emplacements aléatoirement et ne peut être présent qu'à l'un d'entre eux. Passez cette étape s'il n'est pas ici|r
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
    >>Tuez les |cRXP_ENEMY_Rivepattes chétifs|r et les |cRXP_ENEMY_Estafettes Rivepattes|r. Dépouillez-les pour obtenir une |T134163:0|t[|cRXP_LOOT_Tête de Gnoll coupée|r]
    >>|cRXP_WARN_Il s'agit de l'un des trois objets dont vous avez besoin pour déverrouiller votre|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Dévastation|r] |cRXP_WARN_pour quand vous arriverez à Stormwind au niveau 10|r
    .collect 204478,1 -- Severed Gnoll Head (1)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .train 403475,1
step
    #label Garrison
    #season 0,1 << Warrior/Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 239 >> Rendez la quête Au secours de la garnison du ruisseau de l'ouest !
    .goto Elwynn Forest,24.234,74.450
    .target +Deputy Rainer
    >>Cliquez sur l' |cRXP_PICK_l'Affiche de recherche|r << Warlock
    .accept 176 >> Acceptez la quête On recherche : "Lardeur" << Warlock
    .goto Elwynn Forest,24.548,74.672 << Warlock
step << Warlock
    #completewith GnollEnd
    >>Tuez les |cRXP_ENEMY_Rivepattes chétifs|r et les |cRXP_ENEMY_Estafettes Rivepattes|r en avançant. Dépouillez-les pour obtenir le |T134939:0|t[|cRXP_LOOT_Plan de route du Collecteur|r]
    .use 1307 >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Gold Pickup Schedule|r] pour commencer la quête|r
    >>Le [|cRXP_LOOT_Gold Pickup Schedule|r] ne tombe que très rarement. Ignorez cette étape si vous n'arrivez pas à l'avoir
    >>|cRXP_ENEMY_Gruff Swiftbite|r est un mob rare, qui possède un taux de chance de tomber cet objet de 100%
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >> Acceptez la quête Le collecteur
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
    >>Tuez |cRXP_ENEMY_Hogger|r. Dépouillez-les pour leur |cRXP_LOOT_Claw|r
    >>|cRXP_ENEMY_Hogger|r peut apparaître à de nombreux endroits
    >>Lancez [Peur] |cRXP_WARN_sur |cRXP_ENEMY_Hogger|r en boucle et utilisez vos DoTs pour le tuer|r
    >>|cRXP_WARN_Utilisez|r |T136163:0|t[Siphon d'âme] |cRXP_WARN_sur Lardeur lorsqu'il va mourir. Si vous y arrivez, vous recevrez un|r |T134085:0|t[Fragment d’âme impure] |cRXP_WARN_vous permettant de débloquer la rune de|r |T136169:0|t[Siphon d’âme]
    >>|cRXP_WARN_Passez cette étape si vous n'arrivez pas à récupérer le Fragment d'âme ou si Lardeur n'est pas présent. Il ne s'agit pas d'une rune très puissante|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .collect 205019,1 --Tainted Soul shard
    .disablecheckbox
    .unitscan Hogger
step << !Warlock
    #optional
    #completewith WestEntry
    .abandon 123 >> Abandonnez Le collecteur
step
    #completewith WestEntry
    .goto Westfall,59.95,19.35
    .zone Westfall >> Voyagez vers les Marches de l'Ouest
step
    #xprate >1.49
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Farmer Furlbrow|r et à |cRXP_FRIENDLY_Verna Furlbrow|r
    >>N'acceptez pas les autres quêtes
    .turnin 184 >> Rendez la quête Titre de propriété de Froncebouille
    .goto Westfall,59.95,19.35
    .target +Farmer Furlbrow
    .accept 36 >> Acceptez la quête Le ragoût de la marche de l'Ouest
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
    .isOnQuest 184
step << !Paladin !Warlock
#xprate >1.49
    #label WestEntry
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Verna Furlbrow|r
    >>N'acceptez pas les autres quêtes
    .accept 36 >> Acceptez la quête Le ragoût de la marche de l'Ouest
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Salma Saldean|r à l'intérieur
    >>N'acceptez pas les autres quêtes
    .turnin 36 >> Rendez la quête Le ragoût de la marche de l'Ouest
    .target Salma Saldean
step << !Paladin !Warlock
    .goto Westfall,56.04,31.23
    .target Farmer Saldean
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Saldean le fermier|r
    .accept 9 >> Acceptez la quête Les champs de mort
step
    #xprate >1.49 << !Paladin
    #xprate 1.49-1.59 << Paladin
    #optional
    #requires Fields
    .goto Westfall,56.327,47.520
    .xp 9+5410 >> Monter votre expérience jusqu'à 5410+/6500xp
    .subzoneskip 108
step << Paladin
    #xprate >1.59
    #optional
    .goto 1436,48.249,46.729
    .xp 11+5360 >> Monter votre expérience jusqu'à 5360+/8800xp
--XX 625+210+85+800 = 1720 x2 = 3440
step << Paladin/Warlock
    .goto Westfall,62.3,35.4
    .zone Westfall >> Traversez la rivière à la nage pour arriver à la Marche de l’Ouest
step
    #softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au Gardien des âmes
    .target Gardien des âmes
-- .subzoneskip 108
step
    #xprate >1.49
    .goto Westfall,56.327,47.520
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 109 >> Rendez la quête Aller voir Gryan Roidemantel
    .target Gryan Stoutmantle
step
    .goto Westfall,57.002,47.169
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quartermaster Lewis|r
    .accept 6181 >> Acceptez la quête Un message rapide << Human
    .target Quartermaster Lewis
    .isQuestAvailable 6181 << Human
step
    .goto Westfall,52.86,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aubergiste Heather|r
    >>|cRXP_BUY_Achetez-lui jusqu'à 20|r |T133918:0|t[Lutjans à longue mâchoire] |cRXP_BUY_. Cette nourriture de niveau 5 est peu coûteuse|r
    .collect 4592,20,314,1 --Longjaw Mud Snapper (20)
	.target Innkeeper Heather
step
    .goto Westfall,54.00,53.00
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Éclaireur Galiaan|r
    .target Scout Galiaan
    .accept 153 >> Acceptez la quête Les masques en cuir rouge
step << Human
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .turnin 6181 >> Rendez la quête Un message rapide
    .accept 6281 >> Acceptez la quête Continuer vers Hurlevent
    .target Thor
step << skip --Rogue
    #season 2
    #completewith FlySW
    #label RoSS
    .goto Westfall,51.540,55.361,30,0
    .goto Westfall,51.093,54.642,30,0
    .goto Westfall,50.81,47.15,50,0
    .goto Westfall,51.093,54.642
    >>Utilisez le|T133644:0|t[Vol à la tire] sur l' |cRXP_ENEMY_Eclaireur défias|r pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Coup de sabre|r]
    >>Vous devez être en [Camouflage] pour utiliser votre [Vol à la tire]
    >>|cRXP_WARN_Il y a une très grande chance que le|r |T133644:0|t[Vol à la tire] |cRXP_WARN_échoue car votre niveau est trop bas. Si c'est le cas, passez cette étape et volez vers Stormwind. Vous la terminerez bientôt au Loch Modan|r
    >>|cRXP_WARN_N'engagez PAS l' |cRXP_ENEMY_Éclaireur défias|r sinon il utilisera|r |T132331:0|t[Disparition] |cRXP_WARN_et disparaîtra pour 3-5 minutes. Assurez-vous d'utiliser|r |T132320:0|t[Camouflage] |cRXP_WARN_au plus tôt!|r
    >>|cRXP_WARN_L' |cRXP_ENEMY_Éclaireur défias|r peut apparaître sur les collines|r
    .collect 208772,1 -- Rune of Saber Slash (1)
    .unitscan Defias Scout
    .train 424785,1
--XX Moved/forced to Loch/Darkshore
step << skip --Rogue
    #season 2
    #completewith next
    #requires RoSS
    .cast 402265 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Coup de sabre|r]
    .use 208772 -- Rune of Saber Slash (1)
    .itemcount 208772,1
    .train 424785,1
step
    #label FlySW
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Volez à Stormwind
    .target Thor
step << skip --Human Paladin
    #season 2
    #xprate >1.59
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Stephanie Turner|r
    .turnin 1643 >> Rendez la quête Le Tome de divinité
    .accept 1644 >> Acceptez la quête Le Tome de divinité
    .turnin 1644 >> Rendez la quête Le Tome de divinité
    --.accept 1780 >> Accept The Tome of Divinity
    .target Stephanie Turner
    .isQuestTurnedIn 1643
    .xp 12,1
step
    #xprate >1.49
    #season 2
    #optional
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morgan Pestle|r
    .turnin 61,1 >> Rendez la quête Une cargaison pour Hurlevent
    >>|cRXP_WARN_Choisissez en récompense de quête les|r |T132383:0|t[Roquette explosive]. |cRXP_WARN_Elles infligent de bon dégâts et peuvent être utilisées pour "Split pull" ce qui peut être incroyablement utile|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> Cliquez ici pour un exemple vidéo du "Split pulling", cette vidéo est courte et très utile à apprendre
    .target Morgan Pestle
    .isQuestComplete 61
step << !Rogue
    #optional << Warlock/Warrior
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Achetez la compétence pour porter les Épées à une main et les Bâtons << Warlock
    .trainer >>Apprenez la compétence Bâtons << Priest
    .trainer >>Achetez la compétence pour porter des épées à deux mains << Warrior/Paladin
    .target Woo Ping
    .money <0.2 << Warlock
    .money <0.3 << Warrior/Paladin
step << Warlock
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Apprenez la compétence Bâtons
    .target Woo Ping
step
    .goto StormwindClassic,52.623,65.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aubergiste Allison|r
    .home >> Liez votre Pierre de foyer à Stormwind
    .target Innkeeper Allison
step << Human Paladin
    #xprate >1.59
    #optional
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 2998 >> Rendez la quête Le Tome de divinité
    .accept 1641 >> Acceptez la quête Le Tome de divinité
    .turnin 1641 >> Rendez la quête Le Tome de divinité
    .target Duthorian Rall
    .isOnQuest 2998
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duthorian Rall|r
    .accept 1641 >> Acceptez la quête Le Tome de divinité
    .turnin 1641 >> Rendez la quête Le Tome de divinité
    .target Duthorian Rall
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_The Tome of Divinity|r] pour commencer la quête|r
    .accept 1642 >>Acceptez la quête Le Tome de divinité
    .use 6775
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1642 >>Rendez la quête Le Tome de divinité
    .accept 1643 >>Acceptez la quête Le Tome de divinité
    .target Duthorian Rall
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arthur the Faithful|r
    .train 19834 >> Apprenez vos sorts de classe
    .target Arthur the Faithful
    .xp <12,1
    .xp >14,1
step << Human Paladin
    #xprate >1.59
    #optional
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arthur the Faithful|r
    .train 647 >> Apprenez vos sorts de classe
    .target Arthur the Faithful
    .xp <14,1
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Stephanie Turner|r
    .turnin 1643 >> Rendez la quête Le Tome de divinité
    .accept 1644 >> Acceptez la quête Le Tome de divinité
    .turnin 1644 >> Rendez la quête Le Tome de divinité
    --.accept 1780 >> Accept The Tome of Divinity
    .target Stephanie Turner
----XX if ever in the future, add Level 12 xp grind for 1.5x Tome of Divinity




----Warlock Elwynn Voidwalker Section Start----




step << Warlock
    #optional
    #completewith GakinStart
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Rendez vous à L'Agneau Assassiné. Descendez les escaliers
step << Warlock
    #xprate >1.59
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursula Deline|r
    .train 705 >> Apprenez vos sorts de classe
    .target Ursula Deline
    .xp <12,1
    .xp >14,1
step << Warlock
    #xprate >1.59
    #optional
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursula Deline|r
    .train 689 >> Apprenez vos sorts de classe
    .target Ursula Deline
    .xp <14,1
step << Warlock
    #label GakinStart
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1685 >> Rendez la quête Convocation de Gakin
    .accept 1688 >> Acceptez la quête Surena Caledon
    .target Gakin the Darkbinder
step << Warlock
    #softcore
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Spirit Healer|r en utilisant [Connexion] et en vous tenant sur le bûcher près de vous
    .target Gardien des âmes
--  .subzoneskip 87
step << Warlock
    #hardcore
    #completewith WLHoggerEnd
    .goto Elwynn Forest,42.105,65.927
    .zone Elwynn Forest >> Quittez Stormwind
step << Warlock
    #completewith WLHoggerEnd
    .goto Elwynn Forest,42.105,65.927
    .subzone 87 >> Voyagez vers Goldshire
step << Warlock
    #optional
    #completewith LockGoldshireEnd
    >>Cherchez n'importe quelle |cRXP_ENEMY_Bestiole|r qui se promène près du gardien des âmes. Lancez |T136163:0|t[Drain d'âme] sur la bestiole pour obtenir le |T134095:0|t[Fragment d’âme pure]
    .collect 205020,1 --Pure Soul Shard (1)
    .itemcount 205019,1 --Skip if no Hogger shard
    .train 403920,1
step << Warlock
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    >>Choisissez le [Bâton de combat équilibré]
    .turnin 176 >> Rendez la quête On recherche : "Lardeur"
    .turnin 123 >> Rendez la quête Le collecteur
    .target Marshal Dughan
    .isOnQuest 123
step << Warlock
    #label WLHoggerEnd
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    >>Choisissez le [Bâton de combat équilibré]
    .turnin 176 >> Rendez la quête On recherche : "Lardeur"
    .target Marshal Dughan
step << Warlock
    #label SoulSiphon
    .goto Elwynn Forest,44.0,66.2
    >>|cRXP_WARN_Dirigez-vous vers le sous-sol de l'auberge de Goldshire|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Damien Kane|r. Complétez son dialogue pour échanger les fragments d'âme contre la |T134419:0|t[Rune de Siphon d’âme]
    .collect 205022,1
    .train 403920,1
    .itemcount 205020,1 --Pure Soul Shard (1)
    .itemcount 205019,1 --Tainted Soul Shard (1)
step << Warlock
    #optional
    #requires SoulSiphon
    #completewith next
    .train 403920 >> Utilisez la |T134419:0|t[Rune de Siphon d’âme] pour apprendre |T136169:0|t[Siphon d’âme]
    .use 205022
    .train 403920,1
    .itemcount 205022,1
step << Warlock
    #optional
    #completewith WLBandanaEnd
    +Équipez le [Bâton de combat équilibré]
    .use 6215
    .itemcount 6215,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
step << Warlock
    #label LockGoldshireEnd
    --Invisible step
step << Warlock
    #optional
    >>|cRXP_WARN_Tuez des mobs sur la route. Essayez de monter le niveau de compétence de votre|r |T135145:0|t[Trique de combat équilibrée] |cRXP_WARN_|r
    .subzone 62 >> Voyagez au Champ de Potirons des Saumepuits
    .isOnQuest 1688
step << Warlock
    #xprate <1.5
    #optional
    #completewith SChoker
    >>Tuez les |cRXP_ENEMY_Defias Bandits|r. Dépouillez-les pour leur [|cRXP_LOOT_Westfall Deed|r]
    .use 1972>>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Westfall Deed|r] pour commencer la quête|r
    >>Le [|cRXP_LOOT_Westfall Deed|r] ne tombe que très rarement. Ignorez cette étape si vous n'arrivez pas à l'avoir
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> Acceptez la quête Titre de propriété de Froncebouille
step << Warlock
    #label SChoker
    .goto Elwynn Forest,71.10,80.66
    >>Tuez |cRXP_ENEMY_Surena Caledon|r. Dépouillez-la pour son |cRXP_LOOT_Choker|r
    >>|cRXP_WARN_Concentrez-vous sur le fait de tuer |cRXP_ENEMY_Surena Caledon|r très rapidement|r
    >>Lancez [Peur] |cRXP_WARN_sur |cRXP_ENEMY_Morgan the Collector|r en boucle|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step << Warlock
    #optional
    #label WlockRedridge
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Voyagez vers Les Carmines
    >>Tuez des créatures sur la route. Faites en sorte de garder 2 [Éclats d'âme] en utilisant [Drain d'âme]
    .collect 6265,2 --Soul Shard (2)
step << Warlock
    .goto Redridge Mountains,17.4,69.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Parker|r
    .accept 244 >> Acceptez la quête Des gnolls encombrants
    .target Guard Parker
step << Warlock
    #softcore
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Feldon|r
    >>Faites attention aux créatures que vous rencontrez sur la route
    .turnin 244 >> Rendez la quête Des gnolls encombrants
    .target Deputy Feldon
step << Warlock
    #hardcore
    .goto Redridge Mountains,18.581,69.208,15,0
    .goto Redridge Mountains,23.325,71.373,25,0
    .goto Redridge Mountains,29.565,67.930,25,0
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Feldon|r
    >>RESTEZ SUR LA ROUTE PRINCIPALE ET ÉVITEZ TOUTES LES CRÉATURES PROCHE SUR LA ROUTE
    .turnin 244 >> Rendez la quête Des gnolls encombrants
    .target Deputy Feldon
step << Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Prenez le chemin de vol des Carmines
    .target Ariena Stormfeather
step << Warlock
    .hs >> Utilisez votre Pierre de foyer pour revenir à Stormwind, passez cette étape et prenez un trajet aérien si elle n'est pas disponible
step << Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fly Stormwind >> Volez à Stormwind
    .target Ariena Stormfeather
    .zoneskip Stormwind City
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Rendez vous à L'Agneau Assassiné. Descendez les escaliers
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Apprenez vos sorts de classe
    .target Ursula Deline
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1688 >> Rendez la quête Surena Caledon
    .accept 1689 >> Acceptez la quête Le lien
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>Descendez tout en bas de l'Agneau assassiné
    .cast 7728 >> Utilisez l'[Echarpe de pierre de sang] pour invoquer un |cRXP_ENEMY_Summoned Voidwalker|r
    .use 6928
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 6928 >> Tuez le |cRXP_ENEMY_Summoned Voidwalker|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .mob Summoned Voidwalker
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .target Gakin the Darkbinder
    .goto StormwindClassic,25.25,78.59
    .turnin 1689 >> Rendez la quête Le lien


----Warlock Elwynn Voidwalker Section End----


step << Warrior
    #season 2
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109028 >>Parlez à |cRXP_FRIENDLY_Viktoria Desbois|r pour lui donner votre |T134168:0|t[|cRXP_LOOT_Tête de Kobold coupée|r] afin de recevoir le |T134455:0|t[Premier fragment de rune de chasseurs de monstres]
    .collect 204688,1 -- Monster Hunter's First Rune Fragment (1)
    .itemcount 204476,1 -- Severed Kobold Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109027 >>Parlez à |cRXP_FRIENDLY_Viktoria Desbois|r pour lui donner votre |T134169:0|t[|cRXP_LOOT_Tête de Murloc coupée|r afin de recevoir le |T134455:0|t[Deuxième fragment de rune de chasseurs de monstres]
    .collect 204689,1 -- Monster Hunter's Second Rune Fragment (1)
    .itemcount 204477,1 -- Severed Murloc Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #label GnollHead
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109026 >>Parlez à |cRXP_FRIENDLY_Viktoria Desbois|r pour lui donner votre |T134163:0|t[|cRXP_LOOT_Tête de Gnoll coupée|r] afin de recevoir le |T134455:0|t[Troisième fragment de rune de chasseurs de monstres]
    .collect 204690,1 -- Monster Hunter's Third Rune Fragment (1)
    .itemcount 204478,1 -- Severed Gnoll Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #label RoDSW
    #requires GnollHead
    .cast 406651 >> |cRXP_WARN_Utilisez n'importe lequel des|r |T134455:0|t[Fragments de rune de chasseurs de monstres] |cRXP_WARN_pour fabriquer la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Dévastation|r]
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
    .train 403475 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Dévastation|r] |cRXP_WARN_pour apprendre|r |T135291:0|t[Dévaster]
    .use 204703
    .itemcount 204703,1
step << Human
    #xprate >1.49
    #label Continue
    .goto StormwindClassic,74.312,47.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osric Strang|r
    .turnin 6281 >> Rendez la quête Continuer vers Hurlevent
    .accept 6261 >> Acceptez la quête Dungar Grangodet
    .target Osric Strang
step << Rogue
    #xprate >1.59
    .goto 1453,74.645,52.818
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne the Night Man|r
    >>|cRXP_WARN_Gardez au moins 24 pièces d'argent après avoir appris vos sorts. Vous allez en avoir besoin pour acheter un fusil à Ironforge afin de pouvoir utiliser vos runes|r
    .train 674 >> Apprenez [Ambidextrie]
    .train 2983 >> Apprenez [Sprint]
    .target Osborne the Night Man
    .xp <10,1
    .xp >12,1
step << Rogue
    #xprate >1.59
    .goto 1453,74.645,52.818
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne the Night Man|r
    >>|cRXP_WARN_Gardez au moins 24 pièces d'argent après avoir appris vos sorts. Vous allez en avoir besoin pour acheter un fusil à Ironforge afin de pouvoir utiliser vos runes|r
    .train 1766 >> Apprenez vos sorts de classe
    .target Osborne the Night Man
    .xp <12,1
step << Warrior
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harry Burlguard|r
    .turnin 1638 >> Rendez la quête L'entraînement du guerrier
    .accept 1639 >> Acceptez la quête Bartleby le poivrot
    .target Harry Burlguard
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bartleby|r
    .turnin 1639 >> Rendez la quête Bartleby le poivrot
    .accept 1640 >> Acceptez la quête Battre Bartleby
    .target Bartleby
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>Attaquez |cRXP_ENEMY_Bartleby|r. Il se rendra à 1%
    .complete 1640,1 --Beat Bartleby
    .mob Bartleby
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bartleby|r
    .target Bartleby
    .goto StormwindClassic,73.787,36.323
    .turnin 1640 >> Rendez la quête Battre Bartleby
    .accept 1665 >> Acceptez la quête Tasse de Bartleby
step << Warrior
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harry Burlguard|r
    .turnin 1665 >> Rendez la quête Tasse de Bartleby
    .target Harry Burlguard
step << Priest
    #optional
    #completewith Prayer
    .goto StormwindClassic,42.51,33.51,20 >> Entrez dans la Cathédrale de Stormwind
step << Priest
    #optional
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_High Priestess Laurena|r
    .turnin 5635 >> Rendez la quête Prière du désespoir
    .train 8092 >> Apprenez vos sorts de classe
    .target High Priestess Laurena
    .isOnQuest 5635
step << Priest
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_High Priestess Laurena|r
    .turnin 5634 >> Rendez la quête Prière du désespoir
    .train 8092 >> Apprenez vos sorts de classe
    .target High Priestess Laurena
    .train 13908,1
step << Priest
    #optional
    #label Prayer
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_High Priestess Laurena|r
    .trainer >> Apprenez vos sorts de classe
    .target High Priestess Laurena
    .train 13908,3
step << Rogue
    #season 2
    #optional
    #completewith next
    .goto Stormwind City,56.93,29.54,8,0
    .goto Stormwind City,58.65,27.56,10 >> Entrez dans la Ruelle du Coupe-Gorge dans le Quartier Nain
    .train 400081,1
step << Rogue
    #season 2
    #optional
    .goto Stormwind City,63.201,29.491,5,0
    .goto Stormwind City,61.728,29.190
    >>|cRXP_WARN_Montez à l'étage dans la maison|r
    >>Ouvrez le |cRXP_PICK_Coffre poussiéreux|r. Ouvez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de précision|r]
    >>|cRXP_WARN_L'ouvrir invoquera deux |cRXP_ENEMY_Agresseurs coupe-gorges|r de niveau 10 qui vous attaqueront|r
    .collect 204174,1 -- Rune of Precision (1)
    .mob Cut-throat Mugger
    .train 400081,1
step << Rogue
    #season 2
    #optional
    .train 400081 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de précision|r] |cRXP_WARN_pour apprendre|r |T135610:0|t[Entre les deux yeux]
    .use 204174
    .itemcount 204174,1
step << Paladin
    .goto Stormwind City,74.182,7.465 << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Milton Sheaf|r << Alliance
    >>Achetez-lui le |T133745:0|t|cRXP_LOOT_[Testament de martyr]|r, puis utilisez-le pour apprendre |T135961:0|t[Sceau du martyr] << Paladin
    .collect 226398,1 << Paladin
step << Paladin
    .goto Stormwind City,74.182,7.465 << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Milton Sheaf|r << Alliance
    >>Si vous avez beaucoup d'argent, vous pouvez acheter les deux autres Testaments à Milton pour plus tard << Paladin
    .collect 216768,1 << Paladin -- Testament of Enhanced Blessings
    .collect 226400,1 << Paladin -- Testament of the Exorcist
    .money <5
step
    .goto StormwindClassic,51.757,12.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 1097 >> Rendez la quête La quête d’Elmore
    .accept 353 >> Acceptez la quête Livraison pour Foudrepique
    .target Grimand Elmore
step << Warrior/Paladin/Rogue
    #optional
    .goto StormwindClassic,56.3,17.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kaita Deepforge|r
    .collect 2901,1,432,1 >>|cRXP_BUY_Achetez une|r [Pioche de mineur] |cRXP_BUY_à Brooke|r
    >>|cRXP_WARN_Vous apprendrez|r |T134708:0|t[Minage] |cRXP_WARN_plus tard|r
    .target Kaita Deepforge
    .train 2018,3 --Blacksmithing
--XX 81c, 1s 75c from 6281
step
    #label DeeprunEnter
    .goto 1453,60.972,11.690,30,0
    .goto 1453,65.933,5.771
    .subzone 2257 >>Entrez dans le Tram des profondeurs
    .zoneskip Ironforge
step
    #xprate <1.59
    #optional
    #label TramEnd
    >>Prenez le Tram des profondeurs pour Ironforge
    >>Montez vos [Premiers soins] en attendant le Tram pour Ironforge si nécessaire << Rogue/Warrior/Paladin
    >>Vous aurez besoin d'un niveau de compétence en [Premiers soins] de 80 pour une quête au niveau 24 << Rogue !Dwarf
    >>Lancez [Invocation : marcheur du vide] et [Création d'une pierre de soin] en attendant le Tram pour Ironforge si nécessaire << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Monty|r sur la plateforme du milieu du côté Ironforge dans le Tram des Profondeurs
    .accept 6661 >> Acceptez la quête Chasse au rat dans les profondeurs
    .target Monty
step
    #xprate <1.59
    >>Utilisez le [Pipeau du dératiseur] |cRXP_WARN_sur les |cRXP_ENEMY_Deeprun Rats|r à l'intérieur du Tram des Profondeurs|r
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob Deeprun Rat
step
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Monty|r à l'intérieur du Tram des Profondeurs
    .turnin 6661 >> Rendez la quête Chasse au rat dans les profondeurs
    .target Monty
step
    #xprate >1.59
    #optional
    #label TramEnd
    >>Prenez le Tram des profondeurs pour Ironforge
    >>Montez vos [Premiers soins] en attendant le Tram pour Ironforge si nécessaire << Rogue/Warrior/Paladin
    >>Vous aurez besoin d'un niveau de compétence en [Premiers soins] de 80 pour une quête au niveau 24 << Rogue !Dwarf
    >>Lancez [Invocation : marcheur du vide] et [Création d'une pierre de soin] en attendant le Tram pour Ironforge si nécessaire << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Monty|r sur la plateforme du milieu du côté Ironforge dans le Tram des Profondeurs
    .accept 6661 >> Acceptez la quête Chasse au rat dans les profondeurs
    .target Monty
    .zoneskip Ironforge
step
    #xprate >1.59
    >>Utilisez le [Pipeau du dératiseur] |cRXP_WARN_sur les |cRXP_ENEMY_Deeprun Rats|r à l'intérieur du Tram des Profondeurs|r
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob Deeprun Rat
    .zoneskip Ironforge
step
    #xprate >1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Monty|r à l'intérieur du Tram des Profondeurs
    .turnin 6661 >> Rendez la quête Chasse au rat dans les profondeurs
    .target Monty
    .zoneskip Ironforge
step
    #completewith next
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    >>Montez vos [Premiers soins] si nécessaire en attendant le Tram << Rogue/Warrior/Paladin
    .zone Ironforge >>Prenez le tram pour Forgefer
step
    .zone Ironforge >>Entrez dans Ironforge
    .isQuestAvailable 314
step << Warrior
    #optional
    #completewith WarriorTrain
    .goto 1455,67.400,84.909,15,0
    .goto Ironforge,65.905,88.405,12 >> Dirigez-vous vers |cRXP_FRIENDLY_Bilban Cléamornifles|r
step << Warrior
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bilban Tosslespanner|r
    >>|cRXP_WARN_Assurez-vous de garder 20s 70c pour plus tard|r
    .train 2687 >> Apprenez vos sorts de classe
    .target Bilban Tosslespanner
    .xp <10,1
    .xp >12,1
step << Warrior
    #xprate >1.59
    #optional
    #label WarriorTrain
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bilban Tosslespanner|r
    >>|cRXP_WARN_Assurez-vous de garder 20s 70c pour plus tard|r
    .train 5242 >> Apprenez vos sorts de classe
    .target Bilban Tosslespanner
    .xp <12,1
step << Warrior/Rogue
    #optional
    #completewith next
    .goto 1455,61.552,85.636,10,0
    .goto 1455,61.356,88.398,6 >> Entrez dans le bâtiment des Marchand d'armes
step << Warrior/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bixi Wobblebonk|r et à |cRXP_FRIENDLY_Buliwyf Stonehand|r
    .train 2567 >> Apprenez la compétence Armes de jet << Warrior
    .goto Ironforge,62.237,89.628
    .target +Bixi Wobblebonk
    .train 199 >> Acheter la compétence pour porter des masses à deux mains << Warrior
    .train 266 >> Apprenez la compétence pour porter des Fusils << Rogue
    .goto Ironforge,61.177,89.508
    .target +Buliwyf Stonehand
step << Warrior
    #xprate >1.49
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brenwyn Wintersteel|r en bas des escaliers
    >>|cRXP_BUY_Achetez des|r [Couteau de lancer perçant] |cRXP_BUY_à Brenwyn|r
    .collect 3107,200 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .xp <10+7310,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #xprate >1.49
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thalgus Thunderfist|r en bas des escaliers
    >>|cRXP_BUY_Achetez-lui une|r |T135613:0|t[Espingole de chasseur] et des |T132384:0|t[Balles lourdes] |cRXP_BUY_|r
    .collect 2511,1 --Collect Hunter's Boomstick (1)
    .collect 2519,200 --Heavy Shot (200)
    .money <0.14
    .target Thalgus Tonnepoing
step << Rogue
    #xprate >1.49
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thalgus Thunderfist|r en bas des escaliers
    >>|cRXP_BUY_Achetez-lui un|r |T135611:0|t[Tromblon orné] et des |T132384:0|t[Balles lourdes] |cRXP_BUY_|r
    .collect 2509,1 --Collect Hunter's Boomstick (1)
    .collect 2519,200 --Heavy Shot (200)
    .money >0.14
    .target Thalgus Tonnepoing
    .itemcount 2511,<1
step << Warrior
    #xprate >1.49
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brenwyn Wintersteel|r en bas des escaliers
    >>|cRXP_BUY_Achetez des|r [Dague de lancer équilibrée] |cRXP_BUY_à Brenwyn|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Brenwyn Wintersteel
    .xp >10+7310,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith Rudra
    +Équipez les [Couteau de lancer perçant]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    #optional
    #completewith Rudra
    +Équipez les [Dague de lancer équilibrée]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith next
    .goto 1455,61.356,88.398,6 >> Quittez le bâtiment des Marchand d'armes
step << Paladin/Warrior
    #season 2
    #optional
    #completewith next
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>Voyagez vers |cRXP_FRIENDLY_Bruuk Barbe-d'orge|r à l'intérieur de l'auberge
    .train 425621,1 << Paladin
    .train 425447,1 << Warrior
step << Paladin/Warrior
    #season 2
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>Parlez à |cRXP_FRIENDLY_Bruuk Barbe-d'orge|r à l'intérieur
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425621,1 << Paladin
    .train 425447,1 << Warrior
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step << Paladin/Warrior
    #season 2
    .goto Ironforge,72.40,73.63
    .gossipoption 109084 >>Parlez à |cRXP_FRIENDLY_Bruart|r pour le combattre
    >>Vainquez |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_Soyez prudent comme il lance|r |T132939:0|t[Revers] |cRXP_WARN_(vous étourdit pendant 2 secondes)|r
    >>|cRXP_WARN_Souvenez-vous d'utiliser|r |T135924:0|t[Sceau du Croisé] |cRXP_WARN_sur lui|r << Paladin
    >>|cRXP_WARN_Ne lancez PAS|r |T135906:0|t[Bénédiction de puissance] |cRXP_WARN_accidentellement sur lui|r << Paladin
    >>|cRXP_WARN_Emmenez-le à l'étage vers le balcon, puis sautez hors de l'auberge et lancez|r |T135920:0|t[Lumière sacrée] |cRXP_WARN_si vous en avez besoin|r << Paladin
    >>|cRXP_WARN_Emmenez-le vers le balcon d'en haut, puis sautez hors de l'auberge et utilisez un|r |T133688:0|t[Bandage] |cRXP_WARN_si vous en avez/si nécessaire|r << Warrior
    >>|cRXP_WARN_Vous pouvez le kite en utilisant|r |T132316:0|t[|cRXP_FRIENDLY_Brise-genou|r] |cRXP_WARN_et votre|r |T132324:0|t[|cRXP_FRIENDLY_Arme de jet|r] << Warrior
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
    >>Vainquez |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_Soyez prudent comme il lance|r |T132939:0|t[Revers] |cRXP_WARN_(vous étourdit pendant 2 secondes)|r
    >>|cRXP_WARN_Souvenez-vous d'utiliser|r |T135924:0|t[Sceau du Croisé] |cRXP_WARN_sur lui|r << Paladin
    >>|cRXP_WARN_Ne lancez PAS|r |T135906:0|t[Bénédiction de puissance] |cRXP_WARN_accidentellement sur lui|r << Paladin
    >>|cRXP_WARN_Emmenez-le à l'étage vers le balcon, puis sautez hors de l'auberge et lancez|r |T135920:0|t[Lumière sacrée] |cRXP_WARN_si vous en avez besoin|r << Paladin
    >>|cRXP_WARN_Emmenez-le vers le balcon d'en haut, puis sautez hors de l'auberge et utilisez un|r |T133688:0|t[Bandage] |cRXP_WARN_si vous en avez/si nécessaire|r << Warrior
    >>|cRXP_WARN_Après avoir vaincu |cRXP_ENEMY_Bruart|r:|r
    >>Parlez à |cRXP_FRIENDLY_Bruuk Barbe-d'orge|r à nouveau pour recevoir la |T134419:0|t[Rune de Réprimandes] << Paladin
    >>|cRXP_WARN_S'il ne vous donne pas la|r |T134419:0|t[Rune de Réprimandes]|cRXP_WARN_, vous pourriez avoir besoin de combattre |cRXP_ENEMY_Bruart|r de nouveau|r << Paladin
    >>Parlez à |cRXP_FRIENDLY_Bruuk Barbe-d'orge|r de nouveau pour recevoir la |T134419:0|t[Rune d’assaut frénétique] << Warrior
    >>|cRXP_WARN_S'il ne vous donne pas la|r |T134419:0|t[Rune d’assaut frénétique]|cRXP_WARN_, vous pourriez avoir besoin de combattre |cRXP_ENEMY_Bruart|r de nouveau|r << Warrior
    >>|cRXP_WARN_NOTE: Cela peut être difficile à faire seul. Cherchez de l'aide, ou on vous demandera de le terminer à nouveau plus tard dans le guide|r << Warrior
    .collect 205683,1 << Paladin --Rune of Rebuke (1)
    .collect 204716,1 << Warrior --Rune of Frenzied Assault (1)
    .target Bruuk Barleybeard
    .train 425621,1 << Paladin
    .train 425447,1 << Warrior
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
step << Paladin
    #season 2
    .cast 402265 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[Rune de Réprimandes] |cRXP_WARN_pour apprendre|r |T134596:0|t[Gravure de pantalon (Réprimandes)]
    .use 205683
    .itemcount 205683,1 --Rune of Rebuke (1)
    .train 425621,1
step << Paladin
    #season 2
    #completewith Dirt
    .engrave 7 >>|cRXP_WARN_Gravez votre|r |T134596:0|t|cRXP_LOOT_[Pantalon]|r |cRXP_WARN_avec|r |T134596:0|t[Gravure de pantalon (Réprimandes)]
    >>|cRXP_WARN_Souvenez-vous de placer|r |T134919:0|t[Réprimandes] |cRXP_WARN_sur vos barres d'action|r
    .train 425621,3
step << Warrior
    #season 2
    .train 425447 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[Rune d’assaut frénétique] |cRXP_WARN_pour apprendre|r |T134596:0|t[Gravure de pantalon (Assaut frénétique)]
    .use 204716
    .itemcount 204716,1 --Rune of Frenzied Assault (1)
step << Warrior
    #season 2
    #completewith Dirt
    .engrave 7 >>|cRXP_WARN_Gravez votre|r |T134596:0|t|cRXP_LOOT_[Pantaton]|r |cRXP_WARN_avec|r |T134596:0|t[Gravure de pantalon (Assaut frénétique)]
    .train 425447,3
step
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Prenez le chemin de vol de Forgefer
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
    .goto Ironforge,26.8,8.6,12 >>Voyagez vers |cRXP_FRIENDLY_Dink|r << Mage
    .goto Ironforge,23.131,6.143,12 >>Voyagez vers |cRXP_FRIENDLY_Brandur Martel-de-fer|r << Paladin
step << Mage
    #xprate >1.49
    .goto Ironforge,26.8,8.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dink|r à l'intérieur
    .train 122 >> Apprenez vos sorts de classe
    .target Dink
    .xp <10,1
    .xp >12,1
step << Mage
    #xprate >1.49
    .goto Ironforge,26.8,8.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dink|r à l'intérieur
    .train 145 >> Apprenez vos sorts de classe
    .target Dink
    .xp <12,1
    .xp >14,1
step << Mage
    #xprate >1.49
    #label MageIFTrain
    .goto Ironforge,26.8,8.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dink|r à l'intérieur
    .train 1460 >> Apprenez vos sorts de classe
    .target Dink
    .xp <14,1
step << Paladin
    #xprate >1.49
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brandur Ironhammer|r à l'intérieur
    .train 633 >> Apprenez vos sorts de classe
    .target Brandur Ironhammer
    .xp <10,1
    .xp >12,1
step << Paladin
    #xprate >1.49
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arthur the Faithful|r
    .train 19834 >> Apprenez vos sorts de classe
    .target Arthur the Faithful
    .xp <12,1
    .xp >14,1
step << Paladin
    #xprate >1.49
    #optional
    #label PaladinIFTrain
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arthur the Faithful|r
    .train 647 >> Apprenez vos sorts de classe
    .target Arthur the Faithful
    .xp <14,1
--XX Alternative paladin train if they didn't get 10 in Goldshire
step
    #ssf
    .goto Ironforge,19.11,52.80
    .zone Dun Morogh >>|cRXP_WARN_Quittez Ironforge et dirigez-vous vers l'est en direction de Vagash|r
step
    #ah
    #optional
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à un |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes plus rapidement au Loch Modan très bientôt:|r
    >>|T134342:0|t[Tripes de Sanglier]
    >>|T134027:0|t[Viande d'ours]
    >>|T134437:0|t[Ichor d'araignée]
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
    .zone Dun Morogh >>|cRXP_WARN_Sautez sur la |cRXP_PICK_Boîte aux lettres|r, puis effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
    .isQuestAvailable 314
    ]])
