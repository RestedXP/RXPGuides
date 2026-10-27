if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
#version 1
#season 2
<< Alliance
#group RestedXP Alliance 1-20
#groupid RXP-SRGCE-A1
#name 1-7 Vallée des Frigères
#next 6-11 Dun Morogh SoD
#displayname 1-7 Vallée des Frigères
#defaultfor Dwarf/Gnome

step << !Gnome !Dwarf
    #completewith next
    +Vous avez sélectionné un guide conçu pour les Gnomes et les Nains. Vous devriez choisir la même zone de départ que celle par laquelle vous commencez
step
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sten Stoutarm|r
    .accept 179 >> Acceptez la quête Tailleur chez les nains
    .target Sten Stoutarm
step << Mage/Hunter/Priest/Paladin/Warrior/Warlock
    .goto Dun Morogh,29.47,72.06
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Marchand de runes|r.
    >> |cRXP_WARN_ASSUREZ-VOUS DE NE PAS VENDRE LES ÉQUIPEMENTS QUE VOUS POUVEZ ÉQUIPER|r
    >> |cRXP_BUY_Vendez votre|r |T135005:0|t[Chemise] |cRXP_BUY_et achetez-lui la |T135975:0|t[|cRXP_FRIENDLY_Prophétie d’une citadelle profanée|r]|r << Priest
    >>|cRXP_BUY_Vendez votre|r |T135005:0|t[Chemise] et ovs |T132540:0|t[Bottes] |cRXP_WARN_(vous ne pouvez pas y graver de rune)|r |cRXP_BUY_et achetez-lui le |T133745:0|t[|cRXP_FRIENDLY_Testament de martyr|r] et le |T134916:0|t[|cRXP_FRIENDLY_Libram de jugement|r]|r << Paladin
    >> |cRXP_BUY_Vendez votre|r |T135005:0|t[Chemise] |cRXP_BUY_et achetez-lui la |T134419:0|t[|cRXP_FRIENDLY_Rune d'Assaut frénétique|r]|r << Warrior
    >> |cRXP_BUY_Vendez votre|r |T135005:0|t[Chemise] |cRXP_BUY_et achetez-lui le |T133733:0|t[|cRXP_FRIENDLY_Grimoire de Gangrarmure|r]|r << Warlock
    >> |cRXP_BUY_Vendez votre surplus au Marchand et achetez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Frappe-ténèbres|r]|r << Rogue
    >> |cRXP_BUY_Vendez votre|r |T135005:0|t[Chemise] |cRXP_BUY_et achetez-lui les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Flamme vivante|r]|r << Mage
    >> |cRXP_BUY_Vendez votre|r |T135005:0|t[Chemise] et vos |T132540:0|t[Bottes] |cRXP_WARN_(vous ne pouvez pas y graver de rune)|r |cRXP_BUY_et achetez-lui la |T134419:0|t[|cRXP_FRIENDLY_Rune d'Ordre de tuer|r] et le |T133739:0|t[|cRXP_FRIENDLY_Traité sur Cœur de lion|r]|r << Hunter
    >> |cRXP_BUY_Vendez votre surplus et achetez toutes les runes suivantes:|r << Warlock
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel
    .collect 226398,1  << Paladin --Testament of Martyrdom
    .collect 205420,1 << Paladin --Libram of Judgement
    .collect 204716,1 << Warrior --Rune of Frenzied Assault
    .collect 204795,1 << Rogue --Rune of Shadowstrike
    .collect 203746,1 << Mage --Spell Notes: Living Flame
    .collect 209852,1 << Hunter --Rune of Kill Command
    .collect 226401,1 << Hunter --Treatise on the Heart of the Lion
    .collect 205215,1 << Warlock --Rune of Tactics
    .collect 210824,1 << Warlock --Rune of the Pact
    .collect 211477,1 << Warlock --Rune of Incinerate
    .collect 205230,1 << Warlock --Rune of Haunting
    .collect 228797,1 << Warlock --Grimoire of Fel Armor
    >>Vous obtiendrez très bientôt le reste de vous runes
    .target Rune Broker
    .skipgossip
step << Mage/Hunter/Priest/Paladin/Warrior/Warlock
    #sticky
    #optional
    #label Libram << Paladin
    .equip 18 >> Équipez le |T134916:0|t[|cRXP_FRIENDLY_Libram de jugement|r], vous pouvez l'utiliser après 30 secondes pour apprendre |T135891:0|t[Frappe du croisé] << Paladin
    .use 205947 << Priest --Prophecy of a Desecrated Citadel
    .use 226398 << Paladin --Testament of martyrdom
    .use 205420 << Paladin --Libram of Judgement
    .use 204716 << Warrior --Rune of Frenzied Assault
    .use 203746 << Mage --Spell Notes: Living Flame
    .use 209852 << Hunter --Rune of Kill Command
    .use 226401 << Hunter --Treatise on the Heart of the Lion
    .use 228797 << Warlock --Grimoire of Fel Armor
    .train 402852 >> Utilisez la |T135975:0|t[|cRXP_FRIENDLY_Prophétie d’une citadelle profanée|r] pour apprendre |T237570:0|t[Homoncules] << Priest
    .train 407798 >> Utilisez le |T133745:0|t[|cRXP_FRIENDLY_Testament de martyr|r] pour apprendre le |T135961:0|t[Sceau du martyr], |cRXP_WARN_utilisez-le en tant que Sceau principal|r << Paladin
    .train 425447 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune d’assaut frénétique|r] << Warrior
    .train 401768 >> Utilisez les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Flamme vivante|r] << Mage
    .train 410111 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune d’Ordre de tuer|r] << Hunter
    .train 409580 >> Utilisez le |T133739:0|t[|cRXP_FRIENDLY_Traité sur Cœur de lion|r] pour apprendre |T132185:0|t[Cœur de lion] << Hunter
    .train 403619 >> Utilisez le |T133733:0|t[|cRXP_FRIENDLY_Grimoire de Gangrarmure|r] pour apprendre |T136156:0|t[Gangrarmure] << Warlock
    .engrave 7 >> Gravez |T236174:0|t[Tir mortel] sur votre pantalon << Hunter
    .engrave 7 >> Gravez |T135820:0|t[Flamme vivante] sur votre pantalon << Mage
    .engrave 7 >> Gravez |T237570:0|t[Homoncules] sur votre pantalon << Priest
    .engrave 7 >> Gravez |T236317:0|t[Assaut frénétique] sur votre pantalon << Warrior
    >>|cRXP_WARN_ASTUCE:|r Vous pouvez engager plusieurs |cRXP_ENEMY_Loups|r avec |T135812:0|t[Boule de feu], puis tuez-les en AoE avec votre |T135820:0|t[Flamme vivante] << Mage
step << Paladin
    #sticky
    #optional
    #requires Libram
    #label LibramLearn
    .train 410002 >> Utilisez le |T134916:0|t[|cRXP_FRIENDLY_Libram de jugement|r] pour apprendre |T135891:0|t[Frappe du croisé]
step << Hunter
    #optional
    #sticky
    .aura 409583 >> N'oubliez pas d'activer |T132185:0|t[Cœur de lion]
step << Warlock
    #optional
    #sticky
    .aura 403619 >> |cRXP_WARN_N'oubliez pas d'activer votre|r |T136156:0|t[Gangrarmure]
step << Paladin
    #optional
    #completewith next
    .aura 407798 >> N'oubliez pas d'utiliser le|T135961:0|t[Sceau du martyr]
step
    #label WolfMeat
    .goto 1426,29.529,73.286,0
    .goto 1426,28.117,75.088,0
    .goto 1426,28.557,72.487,0
    .goto 1426,29.529,73.286,60,0
    .goto 1426,29.054,74.608,60,0
    .goto 1426,28.558,75.781,60,0
    .goto 1426,28.117,75.088,60,0
    .goto 1426,27.562,74.331,60,0
    .goto 1426,27.793,73.123,60,0
    .goto 1426,28.557,72.487,60,0
    >>Tuez les |cRXP_ENEMY_Jeunes loups décharnés|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de loup coriace|r
    .complete 179,1 --Collect Tough Wolf Meat (x8)
    .mob Ragged Young Wolf
step
    #optional
    .goto 1426,29.529,73.286,0
    .goto 1426,28.117,75.088,0
    .goto 1426,28.557,72.487,0
    .goto 1426,29.529,73.286,60,0
    .goto 1426,29.054,74.608,60,0
    .goto 1426,28.558,75.781,60,0
    .goto 1426,28.117,75.088,60,0
    .goto 1426,27.562,74.331,60,0
    .goto 1426,27.793,73.123,60,0
    .goto 1426,28.557,72.487,60,0
    .xp 2 >> Montez jusqu'au niveau 2
    .mob Ragged Young Wolf
step << Warrior/Mage/Warlock/Hunter
    .goto Dun Morogh,29.47,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Marchand de runes|r.
    >>|cRXP_WARN_ASSUREZ-VOUS DE NE PAS VENDRE LES ÉQUIPEMENTS QUE VOUS POUVEZ ÉQUIPER|r
    .vendor >>|cRXP_BUY_Vendez les objets marchands et achetez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d'Ivresse de la victoire|r] << Warrior
    .vendor >>|cRXP_BUY_Vendez les objets au marchand et achetez toutes les runes importantes pour AoE|r << Mage
    .vendor >>|cRXP_BUY_Vendez votre surplus et achetez toutes les runes suivantes:|r << Hunter/Warlock
    .collect 204806,1 << Warrior --Rune of Victory Rush
    .collect 208799,1 << Mage --Spell Notes: Living Bomb
    .collect 203748,1 << Mage --Spell Notes: Burnout
    .collect 225690,1 << Mage --Spell Notes: Frozen Orb
    .collect 203745,1 << Mage --Spell Notes: Ice Lance
    .collect 206168,1 << Hunter --Rune of the Chimera
    .collect 210818,1 << Hunter --Rune of Lone Wolf
    .collect 213124,1 << Hunter --Rune of Close Combat
    .collect 226252,1 << Hunter --Rune of the Guerrilla
    .collect 216770,1 << Hunter --Treatise on Aspect of the Viper
    .collect 205215,1 << Warlock --Rune of Tactics
    .collect 210824,1 << Warlock --Rune of the Pact
    .collect 211477,1 << Warlock --Rune of Incinerate
    .collect 205230,1 << Warlock --Rune of Haunting
    >> Javelot de glace n'est utile que pour rendre une quête plus tard << Mage
    >>|cRXP_WARN_Vous obtiendrez le reste des runes plus tard|r
    .target Rune Broker
    .skipgossip
step << Warrior/Mage/Hunter
    .train 403470 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune d'Ivresse de la victoire|r] pour apprendre |T132342:0|t[Ivresse de la victoire], vous allez la graver bientôt << Warrior
    .train 415936 >> Utilisez les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Bombe vivante|r] pour apprendre |T236220:0|t[Bombe vivante] << Mage
    .train 401759 >> Utilisez les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Incandescence|r] pour apprendre |T236207:0|t[Incandescence] << Mage
    .train 440858 >> Utilisez les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Orbe gelé|r] pour apprendre |T135851:0|t[Orbe gelé] << Mage
    .train 401760 >> Utilisez les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Javelot de glace|r] pour apprendre |T135844:0|t[Javelot de glace] << Mage
    .train 410121 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de la chimère|r] pour apprendre |T236176:0|t[Tir de la chimère] << Hunter
    .train 410122 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune du Loup solitaire|r] pour apprendre |T132266:0|t[Loup solitaire] << Hunter
    .train 416086 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de combat rapproché|r] pour apprendre |T132394:0|t[Spécialiste de la mêlée] << Hunter
    .train 440563 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de guérilla|r] pour apprendre |T132171:0|t[Attaque éclair] << Hunter
    .train 415423 >> Use the |T133739:0|t[|cRXP_FRIENDLY_Treatise on Aspect of the Viper to train |T132160:0|t[Aspect of the Viper]|r] << Hunter
    .train 416009 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Tactiques|r] pour apprendre |T136150:0|t[Tactique démoniaque] << Warlock
    .train 425476 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune du pacte|r] pour apprendre |T237562:0|t[Pacte démoniaque] << Warlock
    .train 416015 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune d'Incinérer|r] pour apprendre |T135789:0|t[Incinérer] << Warlock
    .train 403919 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune cauchemardesque|r] pour apprendre |T236298:0|t[Hanter] << Warlock
    .use 208799 << Mage --Spell Notes: Living Bomb
    .use 203748 << Mage --Spell Notes: Burnout
    .use 225690 << Mage --Spell Notes: Frozen Orb
    .use 206168 << Hunter --Rune of the Chimera
    .use 210818 << Hunter --Rune of Lone Wolf
    .use 213124 << Hunter --Rune of Close Combat
    .use 226252 << Hunter --Rune of the Guerrilla
    .use 216770 << Hunter --Treatise on Aspect of the Viper
    .use 204806 << Warrior --Rune of Victory Rush
    .use 205215 << Warlock --Rune of Tactics
    .use 210824 << Warlock --Rune of the Pact
    .use 211477 << Warlock --Rune of Incinerate
    .use 205230 << Warlock --Rune of Haunting
step << Mage
    #season 2
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>Vendez tout ce dont nous n'avez pas besoin
    >>|cRXP_BUY_Achetez 10|r [Refreshing Spring Water] |cRXP_BUY_à Brother Danil|r
    >>|cRXP_WARN_Tuez d'autres |cRXP_ENEMY_Ragged Young Wolves|r si vous n'avez pas assez d'argent|r
    >>|cRXP_WARN_Assurez-vous de garder 10c pour plus tard|r
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Adlin Pridedrift
    .xp >6,1
step << !Priest !Mage !Warlock !Warrior !Rogue
    #completewith next << !Hunter
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>Vendez tout ce dont nous n'avez pas besoin << Hunter
    >>|cRXP_BUY_Achetez 600|r [Balle légère] |cRXP_BUY_à Adlin|r << Hunter
    .vendor >> Vendez tout ce dont nous n'avez pas besoin << !Hunter
    .collect 2516,600 << Hunter --Light Shot (600)
    .target Adlin Pridedrift
    .xp >6,1
step
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sten Stoutarm|r
    >>|cRXP_WARN_Assurez-vous d'équiper les gants que vous obtenez en récompense de cette quête pour y graver une rune|r
    .turnin 179 >> Rendez la quête Tailleur chez les nains
    .accept 233 >> Acceptez la quête La distribution du courrier de la Vallée des Frigères
    .accept 3106 >> Acceptez la quête Rune simple << Dwarf Warrior
    .accept 3107 >> Acceptez la quête Rune consacrée << Dwarf Paladin
    .accept 3108 >> Acceptez la quête Rune gravée << Dwarf Hunter
    .accept 3109 >> Acceptez la quête Rune codée << Dwarf Rogue
    .accept 3110 >> Acceptez la quête Rune bénie << Dwarf Priest
    .accept 3112 >> Acceptez la quête Note de service simple << Gnome Warrior
    .accept 3113 >> Acceptez la quête Note de service codée << Gnome Rogue
    .accept 3114 >> Acceptez la quête Note de service glyphée << Gnome Mage
    .accept 3115 >> Acceptez la quête Note de service contaminée << Gnome Warlock
    .target Sten Stoutarm
step << Priest/Paladin/Rogue
    .goto Dun Morogh,29.47,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Marchand de runes|r.
    >>|cRXP_WARN_ASSUREZ-VOUS DE NE PAS VENDRE LES ÉQUIPEMENTS QUE VOUS POUVEZ ÉQUIPER|r
    .vendor >>|cRXP_BUY_Achetez toutes les runes suivantes:|r
    .collect 210979,1 << Rogue --Rune of Shadowstep
    .collect 221428,1 << Rogue --Rune of Foul Play
    .collect 204795,1 << Rogue --Rune of Shadowstrike
    .collect 208772,1 << Rogue --Rune of Saber Slash
    .collect 227922,1 << Rogue --Rune of the Swashbuckler
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
step << Priest/Paladin/Rogue
    .train 400101 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Pas de l'ombre|r] pour apprendre |T132303:0|t[Pas de l'ombre] << Rogue
    .train 432301 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Coup bas|r] pour apprendre |T236285:0|t[Avantage déloyal] << Rogue
    .train 400105 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Frappe-ténèbres|r] pour apprendre |T132323:0|t[Frappe-ténèbres] << Rogue
    .train 424984 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Coup de sabre|r] pour apprendre |T132375:0|t[Coup de sabre] << Rogue
    .train 415922 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Bretteur|r] pour apprendre |T134538:0|t[Tromblon] << Rogue
    .train 431663 >> Utilisez la |T135791:0|t[|cRXP_FRIENDLY_Épiphanie psychosophique|r] pour apprendre |T136181:0|t[Pointe mentale] << Priest
    .train 425216 >> Utilisez le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un noir dessein|r] pour apprendre |T237514:0|t[Fléau du Vide] << Priest
    .train 402862 >> Utilisez le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un acolyte tourmenté|r] pour apprendre |T237545:0|t[Pénitence] << Priest
    .train 402849 >> Utilisez la |T135975:0|t[|cRXP_FRIENDLY_Prophétie de la chute d’un roi|r] pour apprendre |T136149:0|t[Mot de l'ombre : Mort] << Priest
    .train 410014 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Tempête divine|r] pour apprendre |T236250:0|t[Tempête divine] << Paladin
    .train 410008 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune du vengeur|r] pour apprendre |T135874:0|t[Bouclier du vengeur] << Paladin
    .train 410013 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Marteau du vertueux|r] pour apprendre |T236253:0|t[Marteau du vertueux] << Paladin
    .train 440788 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Bouclier de piété|r] pour apprendre |T236265:0|t[Bouclier de piété] << Paladin
    .use 210979 << Rogue --Rune of Shadowstep
    .use 221428 << Rogue --Rune of Foul Play
    .use 204795 << Rogue --Rune of Shadowstrike
    .use 208772 << Rogue --Rune of Saber Slash
    .use 227922 << Rogue --Rune of the Swashbuckler
    .use 212552 << Priest --Psychosophic Epiphany
    .use 205940 << Priest --Memory of a Dark Purpose
    .use 205951 << Priest --Memory of a Troubled Acolyte
    .use 205932 << Priest --Prophecy of a King's Demise
    .use 235600 << Paladin --Rune of Divine Storm
    .use 211488 << Paladin --Rune of the Avenger
    .use 235602 << Paladin --Rune of the Hammer of the Righteous
    .use 235604 << Paladin --Rune of the Shield of Righteousness
step << Mage
    #optional
    #sticky
    .engrave 15 >> Soyez à l'affut des capes qui pourrait tomber. Une fois que vous en obtenez une, gravez |T135851:0|t[Orbe gelé] dessus
    >>|cRXP_WARN_Ce sort est extrêmement puissant|r
step << Mage/Hunter/Priest
    .equip 10 >> Équipez les |T132939:0|t[Gants d'éleveur de loups] << Hunter
    .equip 10 >> Équipez les |T132940:0|t[Gants d'éleveur de lapins] << Mage
    .use 6171 << Hunter --Wolf Handler Gloves
    .use 719 << Mage --Rabbit Handler Gloves
    .engrave 10 >> Gravez |T236176:0|t[Tir de la chimère] sur vos gants << Hunter
    .engrave 7 >> Gravez |T135820:0|t[Flamme vivante] sur votre pantalon << Mage
    .engrave 10 >> Gravez |T236220:0|t[Bombe vivante] sur vos gants << Mage
    .engrave 5 >> Gravez |T236207:0|t[Incandescence] sur votre plastron << Mage
step << Priest/Mage/Warlock
    #season 2
    #xprate <1.1
    #completewith EnterAnvilmar
    .goto 1426,27.096,72.545,0
    .goto 1426,26.620,73.548,0
    .goto 1426,25.722,72.261,0
    .goto 1426,24.878,72.329,0
    .goto 1426,24.100,73.749,0
    .goto 1426,24.920,74.697,0
    .goto 1426,21.813,72.584,0
    .goto 1426,19.578,72.086,0
    .goto 1426,20.627,70.415,0
    >>Tuez les |cRXP_ENEMY_Rockjaw Troggs|r et les |cRXP_ENEMY_Burly Rockjaw Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
step << Hunter
    #sticky
    #optional
    >> |cRXP_WARN_Soyez à l'affût de tout|r Plastron/Ceinture/Cape |cRXP_WARN_qui pourrait tomber|r|cRXP_WARN_. Équipez-les et gravez les runes respectives|r
    .engrave 5 >> Gravez |T132266:0|t[Loup solitaire] sur votre |T132724:0|t[Torse]
    .engrave 6 >> Gravez |T132394:0|t[Spécialiste de la mêlée] sur votre |T132513:0|t[Ceinture]
    .engrave 15 >> Gravez |T132171:0|t[Attaque éclair] sur votre |T133771:0|t[Cape]
step << Paladin
    #completewith next
    +Tuez plus de |cRXP_ENEMY_Loups|r et de |cRXP_ENEMY_Troggs|r jusqu'à avoir l'équivalent de 88 pièces de cuivre à vendre au marchand. |cRXP_WARN_Vous en aurez besoin pour acheter des armes bientôt|r
    .money >0.0088
    .goto 1426,29.529,73.286,0
    .goto 1426,28.117,75.088,0
    .goto 1426,28.557,72.487,0
    .goto 1426,29.529,73.286,60,0
    .goto 1426,29.054,74.608,60,0
    .goto 1426,28.558,75.781,60,0
    .goto 1426,28.117,75.088,60,0
    .goto 1426,27.562,74.331,60,0
    .goto 1426,27.793,73.123,60,0
    .goto 1426,28.557,72.487,60,0
step << !Hunter !Mage
    #season 2
    #label EnterAnvilmar
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.642,68.375,12 >> Entrez dans Anvilmar << Rogue/Warlock/Paladin
    .goto 1426,28.939,68.387,12 >> Entrez dans Anvilmar << !Rogue !Warlock !Paladin
step << Paladin
    #season 2
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bromos Grummner|r à l'intérieur
    .turnin 3107 >> Rendez la quête Rune consacrée << Dwarf
    .accept 77657 >> Acceptez la quête Reliques de la Lumière << Dwarf
    .turnin 77657 >> Rendez la quête Reliques de la Lumière << Dwarf
    .target Bromos Grummner
step << Paladin
    .goto Dun Morogh,28.79,67.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grundel Harkin|r
    >>|cRXP_WARN_Monter de niveau avec un bouclier et une arme à une main est bien plus rapide grâce à la puissance des runes de bouclier en début de jeu|r
    >> |cRXP_BUY_Vendez votre surplus et achetez le|r |T134955:0|t[Petit bouclier]
    .collect 17184,1 --Small Shield (1)
    .target Grundel Harkin
step << Paladin
    .goto Dun Morogh,28.66,67.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rybrad Coldbank|r
    >>|cRXP_WARN_Monter de niveau avec un bouclier et une arme à une main est bien plus rapide grâce à la puissance des runes de bouclier en début de jeu|r
    >> |cRXP_BUY_Vendez votre surplus et achetez le|r |T133485:0|t[Gourdin]
    .collect 2130,1 --Club (1)
    .target Rybrad Coldbank
step << Paladin
    #sticky
    >>|cRXP_WARN_Soyez à l'affût des|r |T132624:0|t[Plastrons]|cRXP_WARN_, des|r |T132602:0|t[Brassards] |cRXP_WARN_ou des|r |T133762:0|t[Capes] |cRXP_WARN_que vous pouvez équiper|r
    .engrave 5 >> Gravez |T236250:0|t[Tempête divine] sur votre plastron
    .engrave 9 >> Gravez |T236253:0|t[Marteau du vertueux] sur vos brassards
    .engrave 15 >> Gravez |T236265:0|t[Bouclier de piété] sur votre cape
step << Paladin
    #optional
    #completewith next
    .equip 16,2130 >> Équipez le |T133485:0|t[Gourdin]
    .equip 17,17184 >> Équipez le |T134955:0|t[Petit bouclier]
    .use 2130 --Club
    .use 17184 --Small Shield
step << Warlock
    #season 2
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alamar Grimm|r à l'étage
    >>|cRXP_WARN_Vous n'avez pas encore besoin d'apprendre vos sorts, ils ne valent pas la peine d'être utilisés à la place des runes|r
    .accept 1599 >> Acceptez la quête Les débuts
    .turnin 3115 >> Rendez la quête Note de service contaminée << Gnome
    .accept 77666 >> Acceptez la quête Puissance dérobée << Gnome
    .turnin 77666 >> Rendez la quête Puissance dérobée << Gnome
    .target Alamar Grimm
step << Warrior
    #season 2
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thran Khorman|r à l'intérieur
    .turnin 3106 >> Rendez la quête Rune simple << Dwarf
    .turnin 3112 >> Rendez la quête Note de service simple << Gnome
    .accept 77655 >> Acceptez la quête La Rune perdue << Dwarf
    .turnin 77655 >> Rendez la quête La Rune perdue << Dwarf
    .accept 77656 >> Acceptez la quête La Rune perdue << Gnome
    .turnin 77656 >> Rendez la quête La Rune perdue << Gnome
    .train 6673 >>Apprenez [Cri de guerre]
    .target Thran Khorman
step << Rogue
    #season 2
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Solm Hargrin|r à l'intérieur
    .turnin 3109 >> Rendez la quête Rune codée << Dwarf
    .turnin 3113 >> Rendez la quête Note de service codée << Gnome
    .accept 77658 >> Acceptez la quête Triple vol << Dwarf
    .turn in 77658 >> Rendez la quête Triple vol << Dwarf
    .accept 77659 >> Acceptez la quête Triple vol << Gnome
    .turnin 77659 >> Rendez la quête Triple vol << Gnome
    .train 1784 >>Apprenez [Camouflage]
    .target Solm Hargrin
step << Priest/Rogue
    .goto Dun Morogh,28.77,66.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Durnan Furcutter|r
    >>Si vous n'avez pas assez d'argent pour les deux objets |cRXP_WARN_(60 pièces de cuivre)|r, tuez plus de |cRXP_ENEMY_Loups|r << Priest
    >>|cRXP_WARN_ASSUREZ-VOUS DE NE PAS VENDRE LES ÉQUIPEMENTS QUE VOUS POUVEZ ÉQUIPER|r
    >>Vendez votre surplus et achetez la |T132495:0|t[Ceinture en étoffe légère] et les |T132543:0|t[Chaussures en étoffe légère], vous en aurez bientôt besoin pour y graver des runes << Priest
    >>Vendez votre surplus et achetez la |T132495:0|t[Ceinture en étoffe légère] et les |T132602:0|t[Brassards en étoffe légère], vous en aurez bientôt besoin pour y graver des runes << Rogue
    .collect 3599,1 --Thin Cloth Belt (1)
    .collect 2117,1 << Priest --Thin Cloth Shoes (1)
    .collect 3600,1 << Rogue --Thin Cloth Bracers (1)
    .target Durnan Furcutter
step << Rogue
    .equip 6 >> Équipez la |T132495:0|t[Ceinture en étoffe légère]
    .equip 9 >> Équipez les |T132602:0|t[Brassards en étoffe légère]
    .equip 10 >> Équipez les |T132952:0|t[Gants en cuir craquelé]
    .engrave 6 >> Gravez |T132303:0|t[Pas de l'ombre] sur votre ceinture
    .engrave 9 >> Gravez |T236285:0|t[Avantage déloyal] sur vos brassards
    .engrave 10 >> Gravez |T132375:0|t[Coup de sabre] sur vos gants
    .use 3599 --Thin Cloth Belt
    .use 3600 --Thin Cloth Bracers
    .use 2125 --Cracked Leather Gloves
step << Rogue
    #optional
    #sticky
    .engrave 15 >> Soyez à l'affut d’éventuelles capes qui pourraient tomber. Dès que vous en obtenez une, gravez |T134538:0|t[Tromblon] dessus
    >>|cRXP_WARN_Il s'agit d'une technique de cleave très puissante|r
step << Priest
    #season 2
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Branstock Khalder|r à l'intérieur
    >>|cRXP_WARN_Apprenez|r |T135987:0|t[Mot de pouvoir : Robustesse] |cRXP_WARN_comme vous en aurez besoin pour une quête de classe bientôt|r << Dwarf
    .turnin 3110 >> Rendez la quête Rune bénie << Dwarf
    .accept 77661 >> Acceptez la quête Méditation sur la Lumière << Dwarf
    .turnin 77661 >> Rendez la quête Méditation sur la Lumière << Dwarf
    .target Branstock Khalder
step << Gnome Warlock/Dwarf Priest
    #season 2
    #label GlovesEquip
    #completewith Observations
    .equip 10,711 >> |cRXP_WARN_Equipez les|r |T132961:0|t[Gants en étoffe rapiécés]
    .use 711
    .train 402862,3 << Priest
    .train 403919,3 << Warlock
step << Gnome Warlock
    #season 2
    #requires GlovesEquip
    #completewith Observations
    .engrave 10 >>Gravez|cRXP_WARN_ vos |T132961:0|t[Gants en étoffe rapiécés] |ravec|r |T133816:0|t[Gravure de gants (Hanter)] << Warlock
    .train 403919,3 << Warlock
step << Priest/Paladin
    .engrave 6 >> Gravez |T136181:0|t[Pointe mentale] sur votre ceinture << Priest
    .engrave 8 >> Gravez |T237514:0|t[Fléau du Vide] sur vos bottes << Priest
    .engrave 10 >> Gravez |T136149:0|t[Mot de l'ombre : Mort] sur vos gants << Priest
    .engrave 7 >> Gravez |T135874:0|t[Bouclier du vengeur] sur votre pantalon << Paladin
    .engrave 10 >> Gravez |T135891:0|t[Frappe du croisé] sur vos gants << Paladin
step << Warlock
    .goto Dun Morogh,28.77,66.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Durnan Furcutter|r
    >>|cRXP_WARN_ASSUREZ-VOUS DE NE PAS VENDRE LES ÉQUIPEMENTS QUE VOUS POUVEZ ÉQUIPER|r
    >>|cRXP_BUY_Vendez votre surplus et achetez les|r |T132602:0|t[Brassards en étoffe légère] |cRXP_BUY_et les|r |T132543:0|t[Chaussures en étoffe légère]|cRXP_BUY_, vous en aurez bientôt besoin pour y graver une rune|r << Warlock
    .collect 3600,1 << Warlock --Thin Cloth Bracers (1)
    .collect 2117,1 << Warlock --Thin Cloth Shoes (1)
    .target Durnan Furcutter
step << Warrior/Warlock
    .equip 10 >> Équipez les |T132938:0|t[Gants en anneaux ternis] << Warrior
    .engrave 10 >> Gravez |T132342:0|t[Ivresse de la victoire] sur vos gants << Warrior
    .use 2385 << Warrior -- Tarnished Chain Gloves
    .use 2125 << Rogue --Cracked Leather Gloves
    .equip 9 >> Équipez les |T132602:0|t[Brassards en étoffe légère] << Warlock
    .equip 10 >> Équipez les |T132543:0|t[Chaussures en étoffe légère] << Warlock
    .use 3600 << Warlock --Thin Cloth Bracers
    .use 2117 << Warlock --Thin Cloth Shoes
    .engrave 5 >> Gravez |T136150:0|t[Tactique démoniaque] sur votre plastron << Warlock
    .engrave 7 >> Gravez |T237562:0|t[Pacte démoniaque] sur votre pantalon << Warlock
    .engrave 9 >> Gravez |T135789:0|t[Incinérer] sur vos brassards << Warlock
    .engrave 8 >> Gravez |T236302:0|t[Ombreflamme] sur vos bottes << Warlock
step << !Paladin !Hunter
    #season 2 << !Warlock --Only Warlock is inside Anvilmar in Era at this step
    #optional
    #completewith Talin
    .goto 1426,28.792,68.804,12 >> Quittez Anvilmar
    .subzoneskip 77,1
step
    #xprate <1.1
    #completewith Rockjaw
    .goto 1426,27.096,72.545,0
    .goto 1426,26.620,73.548,0
    .goto 1426,25.722,72.261,0
    .goto 1426,24.878,72.329,0
    .goto 1426,24.100,73.749,0
    .goto 1426,24.920,74.697,0
    .goto 1426,21.813,72.584,0
    .goto 1426,19.578,72.086,0
    .goto 1426,20.627,70.415,0
    >>Tuez les |cRXP_ENEMY_Rockjaw Troggs|r et les |cRXP_ENEMY_Burly Rockjaw Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
step
#season 2
    #label Talin
    .goto Dun Morogh,22.601,71.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 233 >> Rendez la quête La distribution du courrier de la Vallée des Frigères
    .accept 234 >> Acceptez la quête La distribution du courrier de la Vallée des Frigères
    .target Talin Keeneye
step << Paladin/Warlock/Hunter
    #xprate <1.1
    .goto 1426,27.858,76.482,0
    .goto 1426,30.727,76.831,0
    .goto 1426,29.280,75.500,0
    .goto 1426,27.858,76.482,50,0
    .goto 1426,28.946,77.153,50,0
    .goto 1426,29.716,77.605,50,0
    .goto 1426,30.727,76.831,50,0
    .goto 1426,32.814,75.221,50,0
    .goto 1426,31.138,74.048,50,0
    .goto 1426,30.077,74.479,50,0
    .goto 1426,29.280,75.500,50,0
    >>Tuez les |cRXP_ENEMY_Rockjaw Troggs|r et les |cRXP_ENEMY_Burly Rockjaw Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
step << Paladin/Warlock
    #xprate <1.5
    #loop
    .goto 1426,23.595,72.462,0
    .goto 1426,26.117,74.469,0
    .goto 1426,26.832,74.649,0
    .goto 1426,26.884,72.733,0
    .goto 1426,23.595,72.462,50,0
    .goto 1426,24.290,73.406,50,0
    .goto 1426,24.642,74.138,50,0
    .goto 1426,26.117,74.469,50,0
    .goto 1426,26.832,74.649,50,0
    .goto 1426,26.884,72.733,50,0
    .xp 3+1130 >> Monter votre expérience jusqu'à 1130+/1400xp
step << Paladin/Warlock
    #xprate >1.49
    #loop
    .goto 1426,23.595,72.462,0
    .goto 1426,26.117,74.469,0
    .goto 1426,26.832,74.649,0
    .goto 1426,26.884,72.733,0
    .goto 1426,23.595,72.462,50,0
    .goto 1426,24.290,73.406,50,0
    .goto 1426,24.642,74.138,50,0
    .goto 1426,26.117,74.469,50,0
    .goto 1426,26.832,74.649,50,0
    .goto 1426,26.884,72.733,50,0
    .xp 3+995 >> Montez votre expérience jusqu'à 995+/1400xp
step
    #label Rockjaw
    .goto 1426,25.077,75.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 234 >> Rendez la quête La distribution du courrier de la Vallée des Frigères
    .accept 182 >> Acceptez la quête La caverne des trolls
    .target Grelin Whitebeard
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nori Pridedrift|r
    >>Ceci commencera un chronomètre de 5 pour la quête. Ne soyez PAS ABS ou déconnecté pour les prochaines 5 minutes
    .accept 3364 >> Acceptez la quête Une livraison de thé brûlant
    .target Nori Pridedrift
step << Hunter/Paladin
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .goto 1426,25.861,78.197,45,0
    .goto 1426,26.382,78.409,45,0
    .goto 1426,26.031,79.854,45,0
    .goto 1426,23.716,80.257,45,0
    .goto 1426,22.836,79.962,45,0
    .goto 1426,22.684,78.888,45,0
    .goto 1426,21.029,76.459,45,0
    .goto 1426,20.671,75.838,45,0
    >>Tuez les |cRXP_ENEMY_Frostmane Troll Whelps|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step << Hunter
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .xp 4 >> Montez jusqu'au niveau 4
step << Warlock
#season 2
#completewith next
    .goto Dun Morogh,26.85,79.83,20 >> Entrez dans la grotte des trolls
step << Warlock
#loop
#season 2
    #label Feathers
    .goto 1426,28.696,83.148,0
    .goto 1426,30.216,80.254,0
    .goto 1426,28.696,83.148,40,0
    .goto 1426,28.999,82.504,40,0
    .goto 1426,29.298,81.579,15,0
    .goto 1426,29.041,81.168,40,0
    .goto 1426,30.055,82.385,40,0
    .goto 1426,30.381,80.766,40,0
    .goto 1426,30.216,80.254,40,0
    >>Tuez les |cRXP_ENEMY_Novices Crins-de-givre|r à l'intérieur de la grotte des trolls. Dépouillez-les pour leur |cRXP_LOOT_Charmes de plume|r
    >>|cRXP_WARN_Vous avez un temps limité. Ne passez pas ABS et ne vous déconnectez pas.|r
    .complete 1599,1 --Collect Feather Charm (x3)
    .mob Frostmane Novice
step << Warlock/Hunter/Paladin
    #season 2
    #completewith next
    >>|cRXP_WARN_Assurez-vous de garder au moins une pièce d'argent après avoir vendu vos objets. Vous en aurez besoin pour apprendre|r |T132204:0|t[Morsure de serpent] << Hunter
    .hs >> Utilisez votre Pierre de foyer pour revenir à Courbenclume
step << Paladin/Warlock/Hunter
    #optional
    #completewith next
    #label EnterAnvilmar
    .goto 1426,28.792,68.804,12,0
    >>Vous avez 5 minutes pour retourner à Anvilmar avant que le [Thé brûlant de Durnan] n'expire
    .goto 1426,28.939,68.387,20 >> Entrez dans Anvilmar
step << Hunter
    #optional
    #completewith HTraining
    #requires EnterAnvilmar
    .goto Dun Morogh,28.77,66.37,0
    .vendor >>|cRXP_BUY_Pensez à acheter les pièces d'équipement qui vous manque à |cRXP_FRIENDLY_Durnan Furcutter|r à Anvilmar pour y graver des |T134419:0|t|cRXP_WARN_[Runes]|r|r
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Durnan Furcutter|r à l'intérieur
    .turnin 3364 >> Rendez la quête Une livraison de thé brûlant
    .accept 3365 >> Acceptez la quête Rapporter la Tasse
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Durnan Furcutter
    .isQuestAvailable 317
step << Hunter
    #season 2
    #label HTraining
    .goto Dun Morogh,29.175,67.455
    .target Thorgas Grimson
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 3108 >>Rendez la quête Rune gravée << Dwarf
    .accept 77660 >> Acceptez la quête Traversée dans les grottes << Dwarf
    .turnin 77660 >> Rendez la quête Traversée dans les grottes << Dwarf
    .train 1978 >> Apprenez [Morsure de serpent]
step << Paladin
    #season 2
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bromos Grummner|r à l'intérieur
    >>|cRXP_WARN_Si vous n'avez pas encore trouvé de|r |T132624:0|t[Plastron]|cRXP_WARN_ou de|r |T132602:0|t[Brassards] |cRXP_WARN_, achetez-en au vendeur d'Anvilmar au lieu d'apprendre vos sorts de classe. Les runes sont plus rentables que les sorts que vous pourriez acheter|r
    .trainer >> Apprenez vos sorts de classe
    .target Bromos Grummner
step << Warlock
    #season 2
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alamar Grimm|r à l'étage
    .turnin 1599 >> Rendez la quête Les débuts
    .target Alamar Grimm
step << Paladin/Warlock/Hunter
    #hardcore
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12 >> Quittez Anvilmar
    .subzoneskip 77,1
step << Paladin/Warlock/Hunter
    #xprate <1.1
    .goto Dun Morogh,29.709,71.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balir Frosthammer|r
    .turnin 170 >> Rendez la quête Une nouvelle menace
    .target Balir Frosthammer
step << !Paladin !Warlock !Hunter
    #xprate <1.1
    #sticky
    #label TroggEnd
    .goto 1426,24.193,77.305,0
    .goto 1426,22.529,74.512,0
    .goto 1426,24.288,73.154,0
    .goto 1426,29.303,77.337,0
    .waypoint 1426,24.193,77.305,55,0
    .waypoint 1426,23.497,76.707,55,0
    .waypoint 1426,22.828,76.017,55,0
    .waypoint 1426,22.529,74.512,55,0
    .waypoint 1426,22.735,73.285,55,0
    .waypoint 1426,23.616,72.634,55,0
    .waypoint 1426,24.288,73.154,55,0
    .waypoint 1426,24.619,74.280,55,0
    .waypoint 1426,25.920,74.571,55,0
    .waypoint 1426,28.812,76.397,55,0
    .waypoint 1426,29.303,77.337,55,0
    >>Tuez les |cRXP_ENEMY_Rockjaw Troggs|r et les |cRXP_ENEMY_Burly Rockjaw Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
step << !Paladin !Hunter
    #loop
    #label TrollWhelps
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .goto 1426,25.861,78.197,45,0
    .goto 1426,26.382,78.409,45,0
    .goto 1426,26.031,79.854,45,0
    .goto 1426,23.716,80.257,45,0
    .goto 1426,22.836,79.962,45,0
    .goto 1426,22.684,78.888,45,0
    .goto 1426,21.029,76.459,45,0
    .goto 1426,20.671,75.838,45,0
    >>Tuez les |cRXP_ENEMY_Frostmane Troll Whelps|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step
    #requires TroggEnd << !Paladin !Warlock !Hunter
    .goto Dun Morogh,25.076,75.713
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 182 >> Rendez la quête La caverne des trolls
    .accept 218 >> Acceptez la quête Le journal volé
    .target Grelin Whitebeard
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nori Pridedrift|r
    .turnin 3365 >> Rendez la quête Rapporter la Tasse
    .target Nori Pridedrift
step << !Paladin !Warlock !Hunter
    #softcore
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nori Pridedrift|r
    >>Ceci commencera un chronomètre de 5 pour la quête. Ne soyez PAS ABS ou déconnecté pour les prochaines 5 minutes
    .accept 3364 >> Acceptez la quête Une livraison de thé brûlant
    .target Nori Pridedrift
step << !Paladin !Warlock !Hunter
    #softcore
    #completewith next
    +|cRXP_WARN_Vous avez 5 minutes pour obtenir le |cRXP_LOOT_Grelin Whitebeard's Journal|r et retourner à Anvilmar que le|r [Duncan's Scalding Mornbrew] n'expire
    >>Si vous ratez cette quête ne vous inquiétez pas car vous pourrez la récupérer plus tard
step
    #optional
    #label FrostMCave1
    #completewith Grelin
    .goto 1426,27.098,80.707,20 >> Entrez dans la Grotte des Frostmane
step
    #optional
    #requires FrostMCave1
    #completewith Grelin
    .goto 1426,28.298,79.836,15,0
    .goto 1426,29.252,79.043,15,0
    .goto 1426,30.489,80.165,50 >> Dirigez-vous vers |cRXP_ENEMY_Grik'nir the Cold|r à l'intérieur
step
    #sticky << Rogue/Hunter
    #label Grelin
    .goto 1426,30.489,80.165,0,0
    >>Tuez |cRXP_ENEMY_Grik'nir the Cold|r à l'intérieur. Dépouillez-le pour le |cRXP_LOOT_Grelin Whitebeard's Journal|r
    >>|cRXP_WARN_Gardez bien 2 pièces d'argent après avoir vendu votre surplus. Vous en aurez besoin pour apprendre des sorts bientôt|r << Warrior
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
    .mob Grik'nir the Cold
--XXSOD xpgate for early 6 training?
step << Rogue
    #season 2
    #hardcore
    .train 400105 >>|cRXP_WARN_Utilisez la|r |T134419:0|t|cRXP_LOOT_[Rune de Frappe des ténèbres]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Frappe-ténèbres)].
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
--XX HC as softcore have timed quest turnin in Anvilmar (softcore rogues do it after turnin)
step << !Paladin !Warlock !Hunter
    #softcore
    #requires Grelin << Rogue
    #completewith next
    >|cRXP_WARN_>Make sure you will have two silver after vendoring to be able to train level 4 spells|r << Warrior
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
step
    #hardcore << !Paladin !Warlock !Hunter
    #optional
    #requires Grelin << Rogue/Hunter
    #completewith Stolen
    .goto 1426,29.252,79.043,15,0
    .goto 1426,28.298,79.836,15,0
    .goto 1426,27.098,80.707,20 >> Quittez la Grotte des Frostmane
    .subzoneskip 132
--XX HC only unless you're a Paladin, Warlock, or Hunter
step << !Paladin !Warlock !Hunter
    #hardcore
    #requires Grelin << Rogue
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nori Pridedrift|r
    .accept 3364 >> Acceptez la quête Une livraison de thé brûlant
    .target Nori Pridedrift
step
    #hardcore << !Paladin !Warlock !Hunter
    #requires Grelin << Rogue/Hunter
    #label Stolen
    .goto Dun Morogh,25.075,75.715
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 218 >> Rendez la quête Le journal volé
    .accept 282 >> Acceptez la quête Les observations de Senir
    .target Grelin Whitebeard
step << !Paladin !Warlock !Hunter
    #softcore
    #requires Grelin << Rogue
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Durnan Furcutter|r
    >>Si vous ratez la quête, passez cette étape
    .turnin 3364 >> Rendez la quête Une livraison de thé brûlant
    .accept 3365 >> Acceptez la quête Rapporter la Tasse
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Durnan Furcutter
    .isOnQuest 3364
step << !Paladin !Warlock !Hunter
    #optional
    #softcore
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Durnan Furcutter|r
    .accept 3365 >> Acceptez la quête Rapporter la Tasse
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Durnan Furcutter
    .isQuestTurnedIn 3364
    .isQuestAvailable 317
step << !Paladin !Warlock !Hunter
    #softcore
    #requires Grelin << Rogue
    .abandon 3364 >> Abandonnez Une livraison de thé brûlant. Vous la reprendrez plus tard
step << Rogue
    #season 2
    #softcore
    .train 400105 >>|cRXP_WARN_Utilisez la|r |T134419:0|t|cRXP_LOOT_[Rune de Frappe des ténèbres]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Frappe-ténèbres)].
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
step << Rogue
    #season 2
    #softcore
    #completewith Observations
    #label Shadowstrike1
    .equip 10 >>|cRXP_WARN_Équipez une paire de|r |T132952:0|t|cRXP_LOOT_[Gants]|r |cRXP_WARN_si vous avez une ou si vous en trouvez une|r
    .train 400105,3
step << Rogue
    #season 2
    #softcore
    #completewith Observations
    #requires Shadowstrike1
    .engrave 10 >>|cRXP_WARN_Gravez vos|r |T132952:0|t|cRXP_LOOT_[Gants]|r avec|r |T133816:0|t[Gravure de gants (Frappe-ténèbres)]
    .train 400105,3
step << !Paladin !Warlock !Hunter
    #softcore
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nori Pridedrift|r et |cRXP_FRIENDLY_Grelin Whitebeard|r
    .accept 3364 >> Acceptez la quête Une livraison de thé brûlant
    .goto Dun Morogh,24.980,75.963
    .target +Nori Pridedrift
    .turnin 218 >> Rendez la quête Le journal volé
    .accept 282 >> Acceptez la quête Les observations de Senir
    .goto Dun Morogh,25.075,75.715
    .target +Grelin Whitebeard
    .isQuestAvailable 3364
step << !Paladin !Warlock !Hunter
    #softcore
    #optional
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >> Rendez la quête Une livraison de thé brûlant
    .accept 3365 >> Acceptez la quête Rapporter la Tasse
    .target Durnan Furcutter
step << !Paladin !Warlock !Hunter
    #hardcore
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >> Rendez la quête Une livraison de thé brûlant
    .accept 3365 >> Acceptez la quête Rapporter la Tasse
--  .vendor >> Vendor Trash
    .target Durnan Furcutter
    .isQuestAvailable 317




----Start of >1.59x training section----




step << Mage
    #xprate >1.59
    #season 0,1
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marryk Nurribit|r à l'intérieur
    .turnin 3114 >> Rendez la quête Note de service glyphée << Gnome
    .trainer >> Apprenez vos sorts de classe
    .target Marryk Nurribit
step << Mage
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marryk Nurribit|r à l'intérieur
    .turnin 3114 >> Rendez la quête Note de service glyphée << Gnome
    .accept 77667 >> Acceptez la quête Recherches sur les sorts << Gnome
    .turnin 77667 >> Rendez la quête Recherches sur les sorts << Gnome
    .trainer >> Apprenez vos sorts de classe
    .target Marryk Nurribit
step << Rogue
    #xprate >1.59
    #season 0,1
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 3113 >> Rendez la quête Note de service codée << Gnome
    .turnin 3109 >> Rendez la quête Rune codée << Dwarf
    .train 1784 >>Apprenez [Camouflage]
    .trainer >>Apprenez vos sorts de classe
    .target Solm Hargrin
step << Priest
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Branstock Khalder|r
    .accept 5626 >> Acceptez la quête Au service de la Lumière << Dwarf
    .target Branstock Khalder
step << Warrior
    #xprate >1.59
    #season 0,1
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 3106 >> Rendez la quête Rune simple << Dwarf
    .turnin 3112 >> Rendez la quête Note de service simple << Gnome
    .trainer >> Apprenez vos sorts de classe
    .target Thran Khorman
step << Warrior
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thran Khorman|r
    >>S'il vous reste 2 pièces d'argent apprenez aussi |T132155:0|t[Pourfendre]
    .train 100,1 << Warrior --Charge
    .target Thran Khorman





----End of >1.59x training section----
----Start of <1.59x training section----





step << Mage
    #xprate <1.59
    #season 0,1
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marryk Nurribit|r à l'intérieur
    .turnin 3114 >> Rendez la quête Note de service glyphée << Gnome
    .train 1459 >> Apprenez [Intelligence des Arcanes]
    .train 116 >> Apprenez [Eclair de givre]
    .target Marryk Nurribit
step << Mage
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marryk Nurribit|r à l'intérieur
    .turnin 3114 >> Rendez la quête Note de service glyphée << Gnome
    .accept 77667 >> Acceptez la quête Recherches sur les sorts << Gnome
    .train 1459 >> Apprenez [Intelligence des Arcanes]
    .train 116 >> Apprenez [Eclair de givre]
    .target Marryk Nurribit
step << Gnome Mage
    #xprate <1.59
    #season 2
    #completewith next
    .train 401760 >>|cRXP_WARN_Utilisez les|r |T134939:0|t|cRXP_LOOT_[Notes de sort : ALEEV DJEG LTACO]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Javelot de glace)]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step << Gnome Mage
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marryk Nurribit|r à l'intérieur
    .turnin 77667 >> Rendez la quête Recherches sur les sorts
    .target Marryk Nurribit
step << Gnome Mage
    #xprate <1.59
    #season 2
    #label GlovesEquip
    #completewith Observations
    .equip 10,711 >> |cRXP_WARN_Equipez les|r |T132961:0|t[Gants en étoffe rapiécés]
    .use 711
    .train 401760,3
step << Gnome Mage
    #xprate <1.59
    #season 2
    #requires GlovesEquip
    #completewith Observations
    .engrave 10 >>|cRXP_WARN_Gravez vos|r |T132961:0|t[Gants en étoffe rapiécés] avec|r |T133816:0|t[Gravure de gants (Javelot de glace)]
    .train 401760,3
step << Rogue
    #xprate <1.59
    #season 0,1
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 3113 >> Rendez la quête Note de service codée << Gnome
    .turnin 3109 >> Rendez la quête Rune codée << Dwarf
    .train 1784 >>Apprenez [Camouflage]
    .target Solm Hargrin
step << Priest
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Branstock Khalder|r
    .train 589 >> Apprenez [Mot de l'ombre : Douleur]
    .target Branstock Khalder
step << Warrior
    #xprate <1.59
    #season 0,1
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 3106 >> Rendez la quête Rune simple << Dwarf
    .turnin 3112 >> Rendez la quête Note de service simple << Gnome
    .train 100 >> Apprenez [Charge]
    .train 772 >> Apprenez [Pourfendre]
    .target Thran Khorman
step << Warrior
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 77655 >> Rendez la quête La Rune perdue << Dwarf
    .turnin 77656 >> Rendez la quête La Rune perdue << Gnome
    .train 100 >> Apprenez [Charge]
    .train 772 >> Apprenez [Pourfendre]
    .target Thran Khorman




----End of <1.59x training section----





step << !Paladin !Warlock !Hunter
    #optional
    #completewith Stolen
    .goto 1426,28.831,68.698,12 >> Quittez Anvilmar
    .subzoneskip 77,1
step << !Paladin !Warlock !Hunter
    #xprate <1.1
    .goto Dun Morogh,29.709,71.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balir Frosthammer|r
    .turnin 170 >> Rendez la quête Une nouvelle menace
    .target Balir Frosthammer
step << !Paladin !Warlock !Hunter
    #softcore
    #label Stolen
    .goto Dun Morogh,25.075,75.715
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 218 >> Rendez la quête Le journal volé
    .accept 282 >> Acceptez la quête Les observations de Senir
    .target Grelin Whitebeard
step << !Paladin !Warlock !Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nori Pridedrift|r
    .turnin 3365 >> Rendez la quête Rapporter la Tasse
    .target Nori Pridedrift
step << Mage
    #completewith next
    .hs >> Utilisez votre Pierre de foyer
step << Dwarf Paladin/Dwarf Hunter
    #season 2
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >> Entrez dans Anvilmar
step << Dwarf Paladin
    #season 2
    #optional
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bromos Grummner|r
    .turnin 77657 >> Rendez la quête Reliques de la Lumière
    .target Bromos Grummner
    .isQuestComplete 77657
    .equip 10 --Show step if you don't have gloves
step << Dwarf Hunter
    #season 2
    #optional
    .goto Dun Morogh,29.175,67.455
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 77660 >> Rendez la quête Traversée dans les grottes
    .target Thorgas Grimson
    .isQuestComplete 77660
    .equip 10 --Show step if you don't have gloves
step << Dwarf Paladin/Dwarf Hunter
    #season 2
    #optional
    #completewith ColdridgePass
    .abandon 77657 >> Abandonnez Reliques de la Lumière comme vous avez déjà une paire de |T132938:0|t[Gants] équipée << Paladin
    .abandon 77660 >> Abandonnez Traversée dans les grottes comme vous avez déjà une paire de |T132952:0|t[Gants] équipée << Hunter
step
    .goto Dun Morogh,29.47,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Marchand de runes|r.
    >>|cRXP_WARN_ASSUREZ-VOUS DE NE PAS VENDRE LES ÉQUIPEMENTS QUE VOUS POUVEZ ÉQUIPER|r
    .vendor >> |cRXP_BUY_Vendez votre surplus et achetez-lui toutes les |T134419:0|t|cRXP_WARN_[Runes]|r dont vous avez besoin|r
    .target Rune Broker
    .skipgossip
step
    #label Observations
    >>Parlez au |cRXP_FRIENDLY_Montagnard Thalos|r et à |cRXP_FRIENDLY_Mano Engrenaressort|r
    .turnin 282 >> Rendez la quête Les observations de Senir
    .accept 420 >> Acceptez la quête Les observations de Senir
    .goto Dun Morogh,33.484,71.841
    .target +Mountaineer Thalos
    .accept 2160 >> Acceptez la quête Des provisions pour Tannok
    .goto Dun Morogh,33.85,72.24
    .target +Hands Springsprocket
step
    #label ColdridgePass
    .goto Dun Morogh,34.32,70.95,15,0
    .goto Dun Morogh,35.65,65.79,15 >> Traversez la Passe des Frigères
    .subzoneskip 800,1
    .isOnQuest 2160
]])

RXPGuides.RegisterGuide([[
#season 2
#classic
#version 1
<< Alliance --!Hunter
#group RestedXP Alliance 1-20
#groupid RXP-SRGCE-A1
#name 6-11 Dun Morogh SoD
#displayname 7-12 Dun Morogh
#next 12-13 Dun Morogh SoD
#defaultfor Dwarf/Gnome

step
    #optional
    #label BoarMeatQuest
    #completewith SenirEnd
    >>Tuez les |cRXP_ENEMY_Sangliers des rochers|r en vous dirigeant vers Kharanos. Dépouillez-les pour leur |T133970:0|t|cRXP_LOOT_[Morceaux de viande de sanglier]|r et leurs |cRXP_LOOT_Côtes de sanglier des rochers|r
    >>Gardez tous les |cRXP_LOOT_[Chunks of Boar Meat]|r que vous obtenez pour Ravitailler le Crache-vapeur et ensuite pour monter votre niveau en [Cuisine] plus tard
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .subzoneskip 131 --Kharanos
--XX 270 from priest quest
--XX 340 from quest, 45 from explore
step
    #label SenirEnd
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senir Whitebeard|r
    .turnin 420 >> Rendez la quête Les observations de Senir
    .accept 287 >> Acceptez la quête Le repaire des Crins-de-givre--2.5x xp, should be lvl7 here
    .target Senir Whitebeard
step << Warlock
    .goto Dun Morogh,47.329,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gimrizz Shadowcog|r
    .trainer >> Apprenez vos sorts de classe
    .target Gimrizz Shadowcog
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ragnar Tonnebière|r.
    .accept 384 >> Acceptez la quête Côtes de sanglier à la bière
    .target Ragnar Thunderbrew
step
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >> Entrez dans la Distillerie Thunderbrew
step
    .goto Dun Morogh,47.217,52.195
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tannok Frosthammer|r
    .turnin 2160,1 >> Rendez la quête Des provisions pour Tannok << Warrior/Rogue
    .turnin 2160,2 >> Rendez la quête Des provisions pour Tannok << !Warrior !Rogue
    .target Tannok Frosthammer
step << Rogue
    .goto Dun Morogh,47.189,52.403
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kreg Bilmn|r
    >>Achetez la [Dague de lancer équilibrée]
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Kreg Bilmn
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
step << Rogue
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hogral Bakkan|r dans la salle du fond à l'intérieur
    .trainer >> Apprenez vos sorts de classe
    .train 921 >> Faites bien en sorte d'apprendre |T133644:0|t|cRXP_PICK_Vol à la tire|r, vous en aurez besoin pour une rune plus tard
    .target Hogral Bakkan
step << Mage
    .goto Dun Morogh,47.498,52.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magis Sparkmantle|r à l'intérieur, en haut des escaliers
    .trainer >> Apprenez vos sorts de classe
    .target Magis Sparkmantle
step << Paladin
    .goto Dun Morogh,47.597,52.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Azar Stronghammer|r à l'intérieur, en haut des escaliers
    .trainer >> Apprenez vos sorts de classe
    .target Azar Stronghammer
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maxan Anvol|r à l'intérieur
    .accept 5625 >> Acceptez la quête Vêtements de la Lumière
    .target Maxan Anvol
step << Priest
    .goto Dun Morogh,45.805,54.568
    >>Lancez |T135929:0|t[Soins inférieurs] (Rang 2) et ensuite |T135987:0|t[Mot de pouvoir : Robustesse] sur le |cRXP_FRIENDLY_Montagnard Dolf|r dehors
    .complete 5625,1 --Heal and fortify Mountaineer Dolf
    .target Mountaineer Dolf
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maxan Anvol|r à l'intérieur
    .turnin 5625 >> Rendez la quête Vêtements de la Lumière
    .trainer >> Apprenez vos sorts de classe
    .target Maxan Anvol
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belm l'aubergiste|r dans l'auberge
    .home >> Liez votre Pierre de Foyer à la Distillerie Tonnebière
    .vendor >> |cRXP_BUY_Achetez autant de|r [Lait glacé] |cRXP_BUY_que vous le pouvez|r << Mage
    .target Innkeeper Belm
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belm l'aubergiste|r
    >>Achetez-lui une |T132800:0|t[|cRXP_LOOT_Bière au malt Rhapsody|r]
    .collect 2894,1 --Rhapsody Malt (1)
    .itemcount 2886,6 --Crag Boar Ribs (6)
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ragnar Tonnebière|r.
    .turnin 384 >> Rendez la quête Côtes de sanglier à la bière
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step << Warrior
    .goto Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Granis Swiftaxe|r à l'intérieur
    .trainer >> Apprenez vos sorts de classe
    .target Granis Swiftaxe
step << Paladin/Warrior/Rogue
    #optional
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >> Entrez dans le bâtiment de la Forge
step << Gnome Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez un|r [Glaive]
    .target Grawn Thromwyn
    .money <0.0536
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith next
    +Équipez le [Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez une|r [Hache large]
    .target Grawn Thromwyn
    .money <0.0460
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith next
    +Équipez la [Hache large]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez un|r [Stylet]
    .target Grawn Thromwyn
    .money <0.0400
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez un|r [Maillet en bois]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith next
    +Équipez le [Maillet en bois]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Warrior/Rogue/Paladin
    #label Blacksmithing1
    .goto 1426,45.344,51.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tognus Flintfire|r
    >>Ceci vous permettra de créer des [Pierre à aiguiser brute] qui vont augmenter vos dégâts des armes de 2 << Warrior/Rogue
    >>Ceci pour permettra de créer des [Caillou brut] qui vont augmenter vos dégâts des armes de 2 << Paladin
    >>Si vous ne voulez pas le faire, vous pouvez passer cette étape
    .train 2018 >> Apprenez [Forge]
    .target Tognus Flintfire
step
    #requires DeleteOldDaggers << Rogue
    .goto Dun Morogh,46.021,51.676
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharek Blackstone|r
    .accept 400 >> Acceptez la quête Des outils pour Grillacier
    .target Tharek Blackstone
step << Rogue
    #season 2
    .goto Dun Morogh,47.658,51.706,5,0
    .goto Dun Morogh,47.160,52.335,5,0
    .goto Dun Morogh,46.917,51.995
    >>|cRXP_WARN_Montez sur le toit de l'auberge de Kharanos, puis sautez sur l'énorme tonneau. Suivez la flèche|r
    >>Ouvrez le |cRXP_PICK_Coffret poussiéreux|r. Récupérez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Massacre|r]
    .collect 203993,1 -- Rune of Slaughter (1)
    .train 424992,1
step << Rogue
    #season 2
    .train 424992 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Massacre|r] |cRXP_WARN_pour apprendre|r |T236280:0|t[Ombres meurtrières]
    .use 203993
    .itemcount 203993,1
step
    #optional
    #completewith next
    >>Tuez les |cRXP_ENEMY_Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_[Chunks of Boar Meat]|r et leur |cRXP_LOOT_Crag Boar Ribs|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .subzoneskip 131 --Kharanos
step
    #label StartStocking
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Bellowfiz|r
    >>|cRXP_WARN_Ne tuez pas de |cRXP_ENEMY_Young Black Bears|r sur la route|r
    .accept 317 >> Acceptez la quête Ravitailler le Crache-vapeur
    .target Pilot Bellowfiz
step
    .goto Dun Morogh,49.622,48.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Stonegear|r
    .accept 313 >> Acceptez la quête L'antre Gris
    .target +Pilot Stonegear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beldin Steelgrill|r et |cRXP_FRIENDLY_Loslor Rudge|r
    .turnin 400 >> Rendez la quête Des outils pour Grillacier
    .goto Dun Morogh,50.443,49.092
    .target +Beldin Steelgrill
    .accept 5541 >> Acceptez la quête Munitions pour Grondetrait
    .goto Dun Morogh,50.084,49.420
    .target +Loslor Rudge
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yarr Hammerstone|r en bas des escaliers à l'intérieur
    >>Si vous ne pouvez pas vous le permettre, passez cette étape
    .train 2575 >>Apprenez [Minage]
    .target Yarr Hammerstone
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    #completewith QuarryEnd
    .cast 2580 >> Lancez [Découverte de gisements]
    .usespell 2580
    .train 2575,3 --Mining
step << Hunter
    #season 2
    #sticky
    #label pigmeat
    >>Tuez les |cRXP_ENEMY_Sangliers|r. Dépouillez-les pour la |T134026:0|t[Viande de cochon de Dun Morogh]
    .collect 208192,1
    .mob Crag Boar
    .mob Elder Crag Boar
    .mob Large Crag Boar
    .mob Scarred Crag Boar
    .train 425762,1
step
    #loop
    .goto Dun Morogh,52.0,50.1,0
    .goto Dun Morogh,43.5,52.5,0
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    >>Tuez les |cRXP_ENEMY_Young Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Thick Bear Fur|r
    >>Tuez les |cRXP_ENEMY_Crag Boars|r et les |cRXP_ENEMY_Large Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_[Chunks of Boar Meat]|r et leur |cRXP_LOOT_Crag Boar Ribs|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob +Young Black Bear
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .disablecheckbox
    .mob Large Crag Boar
    .mob Crag Boar
step
    #optional
    #completewith EvershineEnd
    >>Tuez les |cRXP_ENEMY_Large Crag Boars|r et les |cRXP_ENEMY_Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Crag Boar Ribs|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Large Crag Boar
    .mob Crag Boar
step
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .turnin 317 >> Rendez la quête Ravitailler le Crache-vapeur
    .accept 318 >> Acceptez la quête L'éternol
    .target Pilot Bellowfiz
step << Mage
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >> Entrez dans la Distillerie Thunderbrew
step << Mage
    #completewith next
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belm l'aubergiste|r dans l'auberge
    .vendor 1247 >> |cRXP_BUY_Achetez autant de|r [Lait glacé] |cRXP_BUY_que vous le pouvez|r
    .target Innkeeper Belm
    .money <0.0125
    .itemcount 1179,<1 --Ice Cold Milk (1)
    .xp >10,1
step << Warlock
    .xp 8
    --should be 8.5 here with 2.5x
step << Warlock
    .goto Dun Morogh,47.327,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gimrizz Shadowcog|r
    .trainer >> Apprenez vos sorts de classe
    .target Gimrizz Shadowcog
step << Warlock
    .goto Dun Morogh,47.273,53.658
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dannie Fizzwizzle|r
    .vendor 6328 >> |cRXP_BUY_Achetez le|r |T133738:0|t[Grimoire d'Éclair de feu (Rang 2)] |cRXP_BUY_si vous pouvez vous le permettre. Sinon, vous pourrez l'acheter plus tard|r
    .target Gimrizz Shadowcog
    .money <0.100
step << Priest
    #season 2
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,40.9,45.3
    .goto Dun Morogh,39.5,43.0,0
    .goto Dun Morogh,41.5,36.0,0
    >>Tuez les |cRXP_ENEMY_Prophètes Crins-de-givre|r. Dépouillez-les pour la |T135975:0|t[|cRXP_FRIENDLY_Prophétie d’une citadelle profanée|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Frostmane Seer
    .train 402852,1
    --410935
step << Priest !NightElf
    #season 2
    #completewith end
    .train 402852 >> |cRXP_WARN_Utilisez la|r |T135975:0|t[|cRXP_FRIENDLY_Prophétie d’une citadelle profanée|r]
    >>|cRXP_WARN_Vous devez avoir 2 buffs|r |T135934:0|t|T136057:0|t[Méditation] |cRXP_WARN_en écrivant /prier à côté d'un Autel de la Lumière à la Cathédrale de Stormwind, au Loch Modan ou à la Garde Mystique d'Ironforge|r
    >>|cRXP_WARN_Le buff |T136057:0|t|cRXP_PICK_Méditations sur Élune|r doit provenir d'un autre joueur prêtre, en utilisant l'emote /prier en vous ciblant pendant que vous êtes agenouillé avec /genou, si vous voyez un prêtre avec un autre buff de méditation, demandez-leur|r
    --.use 205947
    .target Altar of Light
    .itemcount 205947,1
step << Mage
    #season 2
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,40.9,45.3
    .goto Dun Morogh,39.5,43.0,0
    .goto Dun Morogh,41.5,36.0,0
    >>Tuez les |cRXP_ENEMY_Prophètes Crins-de-givre|r. Dépouillez-les pour les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : VALAFM EVNTMIE]|r
    .collect 203752,1
    .mob Frostmane Seer
    .train 401768,1
step << Mage
    #completewith end
    #season 2
    .collect 211779,1 >>Vous devez obtenir un |T135933:0|t[Charme de compréhension] auprès d'un |cRXP_FRIENDLY_Marchand de composants|r pour utiliser les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : VALAFM EVNTMIE]|r
    .train 401768 >>|cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : VALAFM EVNTMIE]|r |cRXP_WARN_pour apprendre|r |T135820:0|t[Flamme vivante]
    .use 203752
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,50.084,49.420
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loslor Rudge|r
    >>|cRXP_BUY_Achetez une|r [Pioche de mineur]|cRXP_BUY_au marchand|r
    .collect 2901,1 --Mining Pick (1)
    .target Loslor Rudge
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yarr Hammerstone|r en bas des escaliers à l'intérieur
    .train 2575 >>Apprenez [Minage]
    .target Yarr Hammerstone
    .train 2018,3 --Blacksmithing
step
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >> Entrez dans la Distillerie Thunderbrew
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belm l'aubergiste|r dans l'auberge
    >>|cRXP_BUY_Achetez une|r [Bière au malt Rhapsody] |cRXP_BUY_au marchand|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6 --Crag Boar Rib (6)
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ragnar Thunderbrew|r à l'extérieur
    .turnin 384 >> Rendez la quête Côtes de sanglier à la bière
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step << Paladin/Warrior/Rogue
    #optional
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >> Entrez dans le bâtiment de la Forge
step << Gnome Warrior
#optional
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez un|r [Glaive]
    .target Grawn Thromwyn
    .money <0.0536
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
#optional
    #completewith next
    +Équipez le [Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
#optional
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez une|r [Hache large]
    .target Grawn Thromwyn
    .money <0.0460
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
#optional
    #completewith next
    +Équipez la [Hache large]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
#optional
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez un|r [Stylet]
    .target Grawn Thromwyn
    .money <0.0400
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
#optional
    #completewith next
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
#optional
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez un|r [Maillet en bois]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
#optional
    #completewith next
    +Équipez le [Maillet en bois]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Hunter
    #optional
    .xp 6 >> Montez jusqu'au niveau 6
step << Hunter
    #season 2
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .train 1130 >> Apprenez [Marque du chasseur]
    >>|cRXP_WARN_Si vous n'avez pas assez d'argent, tuez les mobs autour de Kharanos. Vous aurez besoin de ce sort pour obtenir une rune bientôt|r
    .target Grif Wildheart

step
    #optional
    #completewith next
    .goto 1426,42.982,54.755
    .subzone 136 >> Voyagez jusqu'à l'antre Gris
    .isOnQuest 313
step
    #loop
    .goto 1426,42.982,54.755,0
    .goto 1426,41.918,54.053,0
    .goto 1426,41.100,48.927,0
    .goto 1426,42.982,54.755,40,0
    .goto 1426,41.901,55.217,40,0
    .goto 1426,41.918,54.053,40,0
    .goto 1426,42.177,53.274,40,0
    .goto 1426,41.100,48.927,40,0
    >>Tuez les |cRXP_ENEMY_Wendigos|r et les |cRXP_ENEMY_Young Wendigos|r. Dépouillez-les pour leur |cRXP_LOOT_Wendigo Manes|r
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Wendigo
    .mob Young Wendigo
step
    .goto Dun Morogh,44.13,56.95
    >>Ouvrez les |cRXP_PICK_Ammo Crate|r. Ramassez les |cRXP_LOOT_Rumbleshot's Ammo|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #optional
    #completewith next
    .goto 1426,40.632,62.794,40,0
    .goto Dun Morogh,40.682,65.130,15 >>Voyagez vers |cRXP_FRIENDLY_Hegnar Rumbleshot|r
step << Hunter
    #optional
    .goto Dun Morogh,40.682,65.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    >>|cRXP_BUY_Achetez-lui un|r |T135611:0|t[Tromblon orné] |cRXP_BUY_|r
    >>Si vous ne pouvez pas vous le permettre, passez cette étape
    .turnin 5541 >> Rendez la quête Munitions pour Rumbleshot
    .collect 2509,1 -- Ornate Blunderbuss (1)
    .target Hegnar Rumbleshot
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.95
step
    #label BearFur
    .goto Dun Morogh,40.682,65.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    .turnin 5541 >> Rendez la quête Munitions pour Rumbleshot
    .target Hegnar Rumbleshot
step
    #label Tundra
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tundra MacGrann|r
    .accept 312 >> Acceptez la quête La réserve volée de Tundra MacGrann
    .target Tundra MacGrann
step
    .goto Dun Morogh,38.517,53.927
    >>Ouvrez le |cRXP_PICK_MacGrann's Meat Locker|r. Ramassez le |cRXP_LOOT_MacGrann's Dried Meats|r
    >>|cRXP_WARN_Attendez que le |cRXP_ENEMY_Old Icebeard|r patrouille en dehors de la Grotte. Une fois qu'il a patrouillé en dehors de sa Grotte vous pouvez y entrer et ramasser le |r |cRXP_PICK_MacGrann's Meat Locker|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >> Cliquez ici pour l'exemple vidéo
    .complete 312,1 --MacGrann's Dried Meats (1)
step
    .goto Dun Morogh,36.4,52.8
    >>Essayez de terminer de récolter les |T133972:0|t[|cRXP_LOOT_Côtes de sanglier des rochers|r] sur les sangliers à l'extérieur de la grotte. |cRXP_WARN_Passez cette étape si vous n'en trouvez pas|r
    >>|cRXP_WARN_Assurez-vous de récupérer de la|T134026:0|t[Viande de cochon de Dun Morogh]. |cRXP_WARN_Vous en aurez besoin pour obtenir une rune dès à présent|r << Hunter
    .collect 2886,6 --Crag Boar Rib (6)
    .collect 208192,1 << Hunter --Dun Morogh Pig Meat (1)
step
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >> Rendez la quête La réserve volée de Tundra MacGrann
    .target Tundra MacGrann
step << Hunter
    #season 2
    #requires pigmeat
    .train 425762,1
    .goto Dun Morogh,37.78,42.55
    >>Utilisez la |T134026:0|t[Viande de cochon de Dun Morogh] près du cadavre à l'intérieur de la grotte pour invoquer |cRXP_ENEMY_Jorul|r
    >>Tuez |cRXP_ENEMY_Jorul|r. Dépouillez-le pour la |T134419:0|t|cRXP_LOOT_[Rune de Contournement]|r
    .collect 205979,1
    .use 208192
    .mob Jorul
step << Hunter
    #season 2
    .train 425762 >>|cRXP_WARN_Utilisez la|r |T134419:0|t|cRXP_LOOT_[Rune de Contournement]|r |cRXP_WARN_pour apprendre|r |T132175:0|t[Frappe latérale]
    .use 205979
    .itemcount 205979,1
step
    #completewith next
    .goto Dun Morogh,30.453,46.005
    .subzone 137 >> Voyagez jusqu'au Village de Brassetout
step << Mage
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keeg Gibn|r
    >>|cRXP_BUY_Achetez jusqu'à 20|r [Ice Cold Milk] |cRXP_BUY_à Kazan|r
    .collect 1179,20
    .target Keeg Gibn
    .isOnQuest 318
step
    #label EvershineEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rejold Barleybrew|r
    .turnin 318 >> Rendez la quête L'éternol
    .goto Dun Morogh,30.190,45.726
    .target +Rejold Barleybrew
step << Hunter
    #season 2
    #sticky
    #label Marksmanship1
    .goto Dun Morogh,28.852,49.859
    >>Utilisez |T132212:0|t[Marque du chasseur] sur le |cRXP_ENEMY_Buisson frémissant|r
    >>Tuez le |cRXP_ENEMY_Braconnier tranchecrin|r qui apparaît. Dépouillez-le pour la|T134419:0|t[|cRXP_FRIENDLY_Rune de visée|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Razormane Poacher
    .train 410113,1
step << Hunter
    #season 2
    #sticky
    #label Marksmanship2
    #requires Marksmanship1
    .cast 402265 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de visée|r]
    .use 206155
    .train 410113,1
step << Priest
    #season 2
    >>Tuez les |cRXP_ENEMY_Gnomes lépreux|r. Dépouillez-les pour le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un noir dessein|r]
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .mob Leper Gnome
    .train 425216,1
step << Priest
    #season 2
    #loop
    .goto 1426,26.653,43.844,0
    .goto 1426,24.601,40.790,0
    .goto 1426,25.540,45.374,0
    .goto 1426,26.653,43.844,55,0
    .goto 1426,26.587,42.702,55,0
    .goto 1426,26.175,41.822,55,0
    .goto 1426,26.052,40.769,55,0
    .goto 1426,24.739,39.481,55,0
    .goto 1426,24.601,40.790,55,0
    .goto 1426,24.662,41.770,55,0
    .goto 1426,24.487,43.265,55,0
    .goto 1426,24.805,43.848,55,0
    .goto 1426,24.871,44.693,55,0
    .goto 1426,25.540,45.374,55,0
    .goto 1426,25.950,43.930,55,0
    >>Tuez les |cRXP_ENEMY_Gnomes lépreux|r. Dépouillez-les pour le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un noir dessein|r]
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .mob Leper Gnome
    .train 425216,1
step << Priest
    #season 2
    .train 425216 >>|cRXP_WARN_Utilisez le|r |T136222:0|t[|cRXP_FRIENDLY_Souvenir d'un noir dessein|r] |cRXP_WARN_pour apprendre|r |T237514:0|t[Fléau du Vide]
    >>|cRXP_WARN_Vous devez avoir 1 buff|r |T135934:0|t|T136057:0|t[Méditation] |cRXP_WARN_en tapant /kneel dans un endroit sacré comme, l'Abbaye de Comté-du-Nord, la Cathédrale de Hurlevent, les Autels de la Lumière à Courbenclume, Loch Modan ou la Garde mystique à Forgefer|r
    .use 205940
step << Rogue
    #season 2
    #loop
    .goto 1426,26.653,43.844,0
    .goto 1426,24.601,40.790,0
    .goto 1426,25.540,45.374,0
    .goto 1426,26.653,43.844,55,0
    .goto 1426,26.587,42.702,55,0
    .goto 1426,26.175,41.822,55,0
    .goto 1426,26.052,40.769,55,0
    .goto 1426,24.739,39.481,55,0
    .goto 1426,24.601,40.790,55,0
    .goto 1426,24.662,41.770,55,0
    .goto 1426,24.487,43.265,55,0
    .goto 1426,24.805,43.848,55,0
    .goto 1426,24.871,44.693,55,0
    .goto 1426,25.540,45.374,55,0
    .goto 1426,25.950,43.930,55,0
    >>Utilisez le |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Gnomes lépreux|r. Récupérez le |T134269:0|t[|cRXP_LOOT_Morceau inférieur droit de carte]|r
    >>Vous devez être en [Camouflage] pour utiliser [Vol à la tire]
    .collect 208218,1 -- Bottom-Right Map Piece (1)
    .mob Leper Gnome
    .train 398196,1
step
    #optional
    #requires ForceFavorRibYes
step
    #optional
    .goto 1426,24.975,50.473,20,0
    .goto 1426,24.682,50.836,20 >> Montez sur le côté de l'entrée de la Grotte. Descendez dans le Repaire des Frostmane
    .isOnQuest 287
step
    #sticky
    #label Headhunters
    #loop
    .goto 1426,22.390,51.701,0
    .goto 1426,23.136,50.886,0
    .goto 1426,24.301,50.898,0
    .waypoint 1426,22.390,51.701,30,0
    .waypoint 1426,21.113,51.717,30,0
    .waypoint 1426,21.131,51.024,30,0
    .waypoint 1426,22.067,50.215,30,0
    .waypoint 1426,23.136,50.886,30,0
    .waypoint 1426,23.373,51.385,30,0
    .waypoint 1426,23.568,50.924,30,0
    .waypoint 1426,24.301,50.898,30,0
    >>Tuez |cRXP_ENEMY_Frostmane Headhunters|r à l'intérieur de la grotte
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step << Rogue
    #season 2
    #loop
    .goto 1426,22.390,51.701,0
    .goto 1426,23.136,50.886,0
    .goto 1426,24.301,50.898,0
    .waypoint 1426,22.390,51.701,30,0
    .waypoint 1426,21.113,51.717,30,0
    .waypoint 1426,21.131,51.024,30,0
    .waypoint 1426,22.067,50.215,30,0
    .waypoint 1426,23.136,50.886,30,0
    .waypoint 1426,23.373,51.385,30,0
    .waypoint 1426,23.568,50.924,30,0
    .waypoint 1426,24.301,50.898,30,0
    #completewith ShimmerweedCollect
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Trolls Crins-de-givre|r. Récupérez le |T134327:0|t[|cRXP_LOOT_Morceau supérieur droit de carte|r]
    >>Vous devez être en [Camouflage] pour utiliser [Vol à la tire]
    .collect 208213,1 -- Top-Right Map Piece (1)
    .mob Frostmane Seer
    .mob Frostmane Headhunter
    .mob Frostmane Snowstrider
    .train 398196,1
step
    #requires Headhunters
    .goto Dun Morogh,22.86,52.16
    >>Descendez dans la petite salle cul-de-sac de la grotte
    .complete 287,2 --Fully explore Frostmane Hold
step
    #completewith dm10end
    .deathskip >> Mourez et ressuscitez à Kharanos
    .subzoneskip 131
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belm l'aubergiste|r dans l'auberge
    >>|cRXP_BUY_Achetez-lui une|r |T132800:0|t[Bière au malt Rhapsody] |cRXP_BUY_et une|r |T132800:0|t[Thunder Ale] |cRXP_BUY_|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .itemcount 2886,6 --Crag Boar Rib (6)
    .target Innkeeper Belm
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ragnar Thunderbrew|r à l'extérieur
    .turnin 384 >> Rendez la quête Côtes de sanglier à la bière
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step
    #label dm10end
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senir Whitebeard|r
    .turnin 287 >> Rendez la quête Le repaire des Crins-de-givre
    .accept 291 >> Acceptez la quête Les rapports
    .target Senir Whitebeard
step << Hunter
    #label dm10end
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .trainer >> Apprenez vos sorts de classe
    .accept 6064 >>Acceptez la quête Dompter la bête << Dwarf
    .target Grif Wildheart
step << Dwarf Hunter
    .goto Dun Morogh,48.3,56.9
    >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Large Crag Boar|r
    .complete 6064,1 --Tame a Large Crag Boar (1)
    .use 15911
    .mob Large Crag Boar
step << Dwarf Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6064 >>Rendez la quête Dompter la bête
    .accept 6084 >>Acceptez la quête Dompter la bête
    .target Grif Wildheart
step << Dwarf Hunter
    .goto Dun Morogh,49.4,59.4
    >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Snow Leopard|r
    .complete 6084,1 --Tame a Snow Leopard (1)
    .use 15913
    .mob Snow Leopard
step << Dwarf Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6084 >>Rendez la quête Dompter la bête
    .accept 6085 >>Acceptez la quête Dompter la bête
    .target Grif Wildheart
step << Dwarf Hunter
    .goto Dun Morogh,50.4,59.7
    >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Ice Claw Bear|r
    .complete 6085,1 --Tame an Ice Claw Bear (1)
    .use 15908
    .mob Ice Claw Bear
step << Dwarf Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6085 >>Rendez la quête Dompter la bête
    .accept 6086 >>Acceptez la quête Entraîner la bête
    .target Grif Wildheart
step << Rogue
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hogral Bakkan|r dans la salle du fond à l'intérieur
    >>N'apprenez que [Ambidextrie] et [Sprint]. N'apprenez pas les autres sors pour garder votre argent pour plus tard
    .train 674 >> Apprenez [Ambidextrie]
    .train 2983 >> Apprenez [Sprint]
    .accept 2218 >> Acceptez la quête La voie du salut
    .target Hogral Bakkan
step << Paladin
    .goto Dun Morogh,47.597,52.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Azar Stronghammer|r à l'intérieur, en haut des escaliers
    .trainer >> Apprenez vos sorts de classe
    .target Azar Stronghammer
step << Warrior
    .goto Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Granis Swiftaxe|r à l'intérieur
    .trainer >> Apprenez vos sorts de classe
    .target Granis Swiftaxe
step << Mage
    .goto Dun Morogh,47.498,52.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magis Sparkmantle|r à l'intérieur, en haut des escaliers
    .train 118 >> Apprenez [Métamorphone]
    .target Magis Sparkmantle
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maxan Anvol|r à l'intérieur
    .trainer >> Apprenez vos sorts de classe
    .target Maxan Anvol
step << Warrior/Rogue/Paladin
    .goto Dun Morogh,47.180,52.610
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thamner Pol|r
    .train 3273 >> Apprenez [Premiers soins]
    .target Thamner Pol
    .money <0.01
step
    .goto Dun Morogh,49.622,48.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Stonegear|r
    .turnin 313 >> Rendez la quête L'antre Gris
    .target Pilot Stonegear
step << Warrior
    #optional
    #completewith next
    +Tuez des créatures jusqu'à avoir 10s30c à vendre au marchand
    .money >0.1030
step << Warrior
    .goto Dun Morogh,47.58,41.58,40,0
    .goto Dun Morogh,50.19,40.79,20,0
    .goto Ironforge,14.90,87.10,40 >> Voyagez à Ironforge
step << Warrior
    .goto Ironforge,62.237,89.628
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bixi Wobblebonk|r ou à |cRXP_FRIENDLY_Buliwyf Stonehand|r
    .trainer >> Si vous êtes dans un groupe ou connaissez quelqu'un pour vous aider à tuer |cRXP_ENEMY_Vagash|r maintenant, achetez la compétence pour porter des Masses à deux mains à |cRXP_FRIENDLY_Buliwyf Stonehand|r, sinon achetez la compétence pour porter des Armes de jets à |cRXP_FRIENDLY_Bixi Wobblebonk|r. Si vous n'êtes pas sûr de laquelle choisir, choisissez la compétence pour porter des Armes de Jet
    .target Bixi Wobblebonk
    .target Buliwyf Stonehand
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brenwyn Wintersteel|r en bas des escaliers
    >>|cRXP_BUY_Achetez des|r [Couteau de lancer perçant] |cRXP_BUY_à Brenwyn|r
    .collect 3107,200 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brenwyn Wintersteel|r en bas des escaliers
    >>|cRXP_BUY_Achetez des|r [Dague de lancer équilibrée] |cRXP_BUY_à Brenwyn|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Brenwyn Wintersteel
    .xp >11,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith Dirt
    +Équipez les [Couteau de lancer perçant]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    #optional
    #completewith Dirt
    +Équipez les [Dague de lancer équilibrée]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0

]])
