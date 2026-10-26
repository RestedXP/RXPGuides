if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Guide des Harmonisations
#name 1. Karazhan
#guideKind attunement
#title Karazhan

step
    #optional
    +Vous devez être au moins au niveau 68 pour commencer la suite de quête d'Harmonisation pour Karazhan
    .xp >68,1
step
    #label Deadwind1
    #completewith Kara1
    .goto Deadwind Pass,42.88,34.52
    .zone Deadwind Pass >> Voyagez au Défilé de Deuillevent dans les Royaumes de l'Est
step
    #requires Deadwind1
    #completewith Kara1
    .subzone 2562 >> Allez à Karazhan
step
    .goto Deadwind Pass,47.0,75.6
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archmage Alturus|r
    .accept 9824 >> Acceptez la quête Troubles arcaniques
    .accept 9825 >> Acceptez la quête L'agitation des sans-repos
    .target Archmage Alturus
step
    #completewith PondReading
    .goto Deadwind Pass,47.710,78.267
    .subzone 2837 >> Descendez les escaliers vers la Cave du Maître
step
    #optional
    #completewith Reading2
    >>Tuez les |cRXP_ENEMY_Ghosts|r autour de Karazhan. Dépouillez-les pour leur |cRXP_LOOT_Ghostly Essences|r
    .complete 9825,1 -- Ghostly Essence (10)
    .mob Unliving Caretaker
    .mob Damned Soul
    .mob Restless Shade
    .mob Wailing Spectre
step
    #label PondReading
    .goto Deadwind Pass,42.910,78.275
    .use 24474 >> Utilisez le [Violet Scrying Crystal] en vous plaçant dans la |cRXP_PICK_Underground Pond|r
    .complete 9824,2 -- Underground Pond Reading (1)
step
    .isOnQuest 9824
    .goto Deadwind Pass,43.75,70.74,20,0
    .goto Deadwind Pass,42.99,73.44,20,0
    .goto Deadwind Pass,46.84,74.90,25,0
    .goto Deadwind Pass,45.84,78.04,15,0
    .goto Deadwind Pass,48.74,78.87,10,0
    .subzone 2562 >> |cRXP_WARN_Revenez par le chemin d'où vous êtes venus pour sortir de la Master's Cellar. Vous entrerez bientôt à nouveau dans la Master's Cellar par une autre entrée.|r
    .subzoneskip 2837,1
step
    #completewith next
    .goto Deadwind Pass,48.887,78.881
    .subzone 2837 >> Prenez les autres escaliers pour descendre à nouveau dans la Cave du Maître
step
    #label Reading2
    .goto Deadwind Pass,54.56,82.09,25,0
    .goto Deadwind Pass,53.200,90.211
    .use 24474 >> Utilisez le [Cristal de divination pourpre] près du |cRXP_PICK_Underground Well|r
    .complete 9824,1 -- Underground Well Reading (1)
step
    #loop
    .goto Deadwind Pass,55.09,74.81,0
    .goto Deadwind Pass,53.20,90.21,0
    .goto Deadwind Pass,48.88,78.88,0
    .goto Deadwind Pass,42.91,78.27,0
    .goto Deadwind Pass,55.09,74.81,70,0
    .goto Deadwind Pass,53.20,90.21,70,0
    .goto Deadwind Pass,48.88,78.88,70,0
    .goto Deadwind Pass,42.91,78.27,70,0
    >>Tuez les |cRXP_ENEMY_Ghosts|r autour de Karazhan. Dépouillez-les pour leur |cRXP_LOOT_Ghostly Essences|r
    .complete 9825,1 -- Ghostly Essence (10)
    .mob Unliving Caretaker
    .mob Damned Soul
    .mob Restless Shade
    .mob Wailing Spectre
step
    #label Kara1
    .goto Deadwind Pass,47.0,75.6
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archmage Alturus|r
    .turnin 9824 >> Rendez la quête Troubles arcaniques
    .turnin 9825 >> Rendez la quête L'agitation des sans-repos
    .accept 9826 >> Acceptez la quête Un envoyé de Dalaran
    .target Archmage Alturus
step
    #completewith next
    .zone Alterac Mountains >> Voyagez aux Montagnes d'Alterac
step
    .goto Alterac Mountains,15.6,54.6
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archmage Cedric|r
    .turnin 9826 >> Rendez la quête Un envoyé de Dalaran
    .accept 9829 >> Acceptez la quête Khadgar
    .target Archmage Cedric
step
    #completewith next
    .zone Shattrath City >> Allez à Shattrath
step
    .goto Shattrath City,54.751,44.322
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Khadgar|r
    .turnin 9829 >> Rendez la quête Khadgar
    .accept 9831 >> Acceptez la quête L'entrée de Karazhan
    .target Khadgar
step
    .isOnQuest 9831
    .goto Terokkar Forest,39.634,73.553
    .subzone 3789 >> Trouvez un groupe pour le Labyrinthe des Ombres dans la Forêt de Terokkar. Une fois que vous avez monté le groupe, entrez dans le donjon
step
    .isOnQuest 9831
    >>|cRXP_WARN_Après avoir tué |cRXP_ENEMY_Marmon|r, ouvrez le |cRXP_PICK_Récipient arcanique|r sur le sol pour faire apparaître le|r |cRXP_ENEMY_Gardien du premier fragment|r
    >>Tuez le |cRXP_ENEMY_Gardien du premier fragment|r. Dépouillez-le pour le |cRXP_LOOT_Premier fragment de la clé|r
    .complete 9831,1 -- First Key Fragment (1)
    .mob First Fragment Guardian
step
    #completewith next
    .zone Shattrath City >> Allez à Shattrath
step
    .goto Shattrath City,54.751,44.322
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Khadgar|r
    .turnin 9831 >> Rendez la quête L'entrée de Karazhan
    .accept 9832 >> Acceptez la quête Le deuxième et le troisième fragments
    .target Khadgar
step << !Druid
    #completewith next
    +|cRXP_WARN_NOTE : Pour aller à L’Arcatraz, vous devez avoir acheté la compétence pour les montures volantes et une monture volante à la Vallée d'Ombrelune|r
    .skill riding,225,1
    .goto Shadowmoon Valley,37.6,56.0,0 << Alliance
    .goto Shadowmoon Valley,29.2,29.4,0 << Horde
    .target Brunn Flamebeard << Alliance
    .target Ilsa Blusterbrew << Alliance
    .target Dama Wildmane << Horde
    .target Olrokk << Horde
step
    >>Vous devez maintenant faire les donjons du Caveau de la Vapeur et de l'Arcatraz. Celui que vous faites en premier n'a pas d'importance
    >>À l'intérieur de chacun des donjons, ouvrez le |cRXP_PICK_Arcane Container|r pour invoquer le |cRXP_ENEMY_Fragment Guardian|r
    >>Tuez le |cRXP_ENEMY_Fragment Guardian|r. Dépouillez-le pour le |cRXP_LOOT_Second Key Fragment|r et le |cRXP_LOOT_Third Key Fragment|r
    .complete 9832,1 -- Second Key Fragment (1) The Steamvault
    .complete 9832,2 -- Third Key Fragment (1) The Arcatraz
    .mob Second Fragment Guardian
    .mob Third Fragment Guardian
step
    #completewith next
    .zone Shattrath City >> Allez à Shattrath
step
    .goto Shattrath City,54.751,44.322
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Khadgar|r
    .turnin 9832 >> Rendez la quête Le deuxième et le troisième fragments
    .accept 9836 >> Acceptez la quête Le toucher du maître
    .target Khadgar
step
    #optional
    .isQuestAvailable 10284
    +Vous devez maintenant compléter le donjon du Noir Marécage, cependant, pour pouvoir entrer dans le Noir Marécage, vous devez compléter la quête Évasion de Fort-de-Durn en complétant le donjon Contreforts de Hautebrande d'antan dans les Grottes du Temps
step
    .isOnQuest 9836
    .goto Tanaris,57.270,62.872
    .subzone 2300 >> Trouvez un groupe pour le Noir Marécage. Une fois que vous avez monté le groupe, rentrez dans le Noir Marécage
step
    >>Complétez le Noir Marécage
    >>|cRXP_WARN_Assurez-vous de vous tenir près de |cRXP_FRIENDLY_Medivh|r une fois que vous avez tué|r |cRXP_ENEMY_Aeonus|r
    .complete 9836,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Medivh|r
    .turnin 9836 >> Rendez la quête Le toucher du maître
    .accept 9837 >> Acceptez la quête Retour vers Khadgar
    .target Medivh
step
    #completewith next
    .zone Shattrath City >> Allez à Shattrath
step
    .goto Shattrath City,54.751,44.322
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Khadgar|r
    .turnin 9837 >> Rendez la quête Retour vers Khadgar
    .accept 9838 >> Acceptez la quête L'Œil pourpre
    .target Khadgar
step
    .isQuestTurnedIn 9837
    +Félicitations! Vous avez terminé l'Harmonisation pour Karazhan
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Guide des Harmonisations
#name 2. Caverne du Sanctuaire du Serpent
#guideKind attunement
#title Caverne du Sanctuaire du Serpent

step
    #completewith next
    .goto Zangarmarsh,50.37,40.90,20,0 -- coilfang reservoir entrance
    .goto Zangarmarsh,49.018,35.631 -- slave pens
    .subzone 3717 >> Trouvez un groupe pour le donjon Les enclos aux esclaves en mode HÉROÏQUE à Zangarmarsh. Une fois que vous ayez trouvé un groupe, entrez dans Les enclos aux esclaves
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Skar'this the Heretic|r
    .accept 10901 >> Acceptez la quête Le gourdin de Kar'desh
    .target Skar'this the Heretic
step
    >>|cRXP_WARN_Trouvez des raids pour Gruul le Tue-Dragon et Karazhan|r
    >>Tuez |cRXP_ENEMY_Gruul|r. Dépouillez-le pour son |cRXP_LOOT_Earthen Signet|r
    >>Tuez |cRXP_ENEMY_Nightbane|r. Dépouillez-le pour son |cRXP_LOOT_Blazing Signet|r
    .complete 10901,1 -- Earthen Signet (1)
    .complete 10901,2 -- Blazing Signet (2)
step
    .goto Zangarmarsh,50.37,40.90,20,0 -- coilfang reservoir entrance
    .goto Zangarmarsh,49.018,35.631 -- slave pens
    >>|cRXP_WARN_Retournez à|cRXP_FRIENDLY_Skar'this the Heretic|r à l'intérieur des Enclos aux Esclaves: Heroïque|r
    .turnin 10901 >> Rendez la quête Le gourdin de Kar'desh
    .target Skar'this the Heretic
step
    .isQuestTurnedIn 10901
    +Félicitations! Vous avez terminé l'Harmonisation pour la Caverne du Sanctuaire du Serpent
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Guide des Harmonisations
#name 3. Donjon de la Tempête
#guideKind attunement
#title Donjon de la Tempête

step
    #completewith next
    .zone Shadowmoon Valley >> Voyagez vers la Vallée d'Ombrelune
step << Alliance
    .goto Shadowmoon Valley,36.368,56.953
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Earthmender Sophurus|r
    .accept 10680 >> Acceptez la quête La main de Gul'dan
	.target Earthmender Sophurus
step << Horde
    .goto Shadowmoon Valley,28.489,26.573
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Earthmender Splinthoof|r
    .accept 10681 >> Acceptez la quête La main de Gul'dan
	.target Earthmender Splinthoof
step
    .goto Shadowmoon Valley,42.190,45.060
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Earthmender Torlok|r
    .turnin 10680 >> Rendez la quête La main de Gul'dan << Alliance
    .turnin 10681 >> Rendez la quête La main de Gul'dan << Horde
    .accept 10458 >> Acceptez la quête Esprits de feu et de terre enragés
	.target Earthmender Torlok
step
    .use 30094 >>Utilisez le [Totem of Spirits] et tuez les |cRXP_ENEMY_Enraged Fire Spirits|r et les |cRXP_ENEMY_Enraged Earth Spirits|r
    >>Assurez-vous que vous les éliminiez en restant proche du [Totem des esprits]
    .complete 10458,1 --Earthen Soul Captured (x8)
    .goto Shadowmoon Valley,45.8,47.6,70,0
    .goto Shadowmoon Valley,51.6,53.8,70,0
    .goto Shadowmoon Valley,47.0,41.6,70,0
    .goto Shadowmoon Valley,45.8,47.6,70,0
    .goto Shadowmoon Valley,51.6,53.8,70,0
    .goto Shadowmoon Valley,47.0,41.6
    .mob +Enraged Earth Spirit
    .complete 10458,2 --Fiery Soul Captured (x8)
    .goto Shadowmoon Valley,45.8,47.6,70,0
    .goto Shadowmoon Valley,51.6,53.8,70,0
    .goto Shadowmoon Valley,47.0,41.6,70,0
    .goto Shadowmoon Valley,49.2,36.6
    .goto Shadowmoon Valley,45.8,47.6,70,0
    .goto Shadowmoon Valley,51.6,53.8,70,0
    .goto Shadowmoon Valley,47.0,41.6
    .goto Shadowmoon Valley,49.2,36.6
	.mob +Enraged Fire Spirit
step
    .goto Shadowmoon Valley,42.190,45.060
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Earthmender Torlok|r
    .turnin 10458 >> Rendez la quête Esprits de feu et de terre enragés
    .accept 10480 >> Acceptez la quête Esprits des eaux enragés
	.target Earthmender Torlok
step
    #loop
    .goto Shadowmoon Valley,47.6,29.8,0
    .goto Shadowmoon Valley,50.2,23.8,0
    .goto Shadowmoon Valley,44.7,34.1,70,0
    .goto Shadowmoon Valley,44.6,28.6,70,0
    .goto Shadowmoon Valley,47.6,29.8,70,0
    .goto Shadowmoon Valley,46.8,23.6,70,0
    .goto Shadowmoon Valley,50.2,23.8,70,0
    .goto Shadowmoon Valley,52.4,27.4,70,0
    .use 30094 >>Utilisez le [Totem of Spirits] et tuez les |cRXP_ENEMY_Enraged Water Spirits|r
    >>Assurez-vous que vous les éliminiez en restant proche du [Totem des esprits]
    .complete 10480,1 --Watery Soul Captured (x5)
	.mob Enraged Water Spirit
step
    .goto Shadowmoon Valley,42.190,45.060
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Earthmender Torlok|r
    .turnin 10480 >> Rendez la quête Esprits des eaux enragés
    .accept 10481 >> Acceptez la quête Esprits des airs enragés
	.target Earthmender Torlok
step
    #loop
    .line Shadowmoon Valley,59.6,70.2,62.4,63.6,65.0,61.8,64.6,53.6,58.8,54.8,62.4,62.8
    .goto Shadowmoon Valley,58.8,54.8,70,0
    .goto Shadowmoon Valley,62.4,62.8,70,0
    .goto Shadowmoon Valley,65.0,61.8,70,0
    .goto Shadowmoon Valley,64.6,53.6,70,0
    .goto Shadowmoon Valley,62.4,63.6,70,0
    .goto Shadowmoon Valley,59.6,70.2,70,0
    .use 30094 >>Utilisez le [Totem des esprits] et tuez les |cRXP_ENEMY_Enraged Air Spirits|r
    >>Assurez-vous que vous les éliminiez en restant proche du [Totem des esprits]
    .complete 10481,1 --Airy Soul Captured (x10)
	.mob Enraged Air Spirit
step
    .goto Shadowmoon Valley,42.190,45.060
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Earthmender Torlok|r
    .turnin 10481 >> Rendez la quête Esprits des airs enragés
    .accept 10513 >> Acceptez la quête Oronok Cœur-fendu
	.target Earthmender Torlok
step
    .goto Shadowmoon Valley,53.918,23.529
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oronok Torn-heart|r
    .turnin 10513 >> Rendez la quête Oronok Cœur-fendu
    .accept 10514 >> Acceptez la quête J'ai tenu bien des rôles...
	.target Oronok Torn-heart
step
    #loop
    .goto Shadowmoon Valley,51.8,18.4,0
    .goto Shadowmoon Valley,51.1,15.4,0
    .goto Shadowmoon Valley,55.0,14.2,0
    .goto Shadowmoon Valley,53.8,17.7,0
    .goto Shadowmoon Valley,51.8,18.4,60,0
    .goto Shadowmoon Valley,51.1,15.4,60,0
    .goto Shadowmoon Valley,55.0,14.2,60,0
    .goto Shadowmoon Valley,53.8,17.7,60,0
    .use 30462 >>Placez-vous au-dessus des petites plantes sur le sol et utilisez le [Siffle à sanglier d'Oronok] pour que l'un des Sanglier gangrené domestiqué sorte du sol les |cRXP_LOOT_Shadowmoon Tubers|r
    >>Il est très important que vous ne tuiez AUCUN Sanglier gangrené domestiqué
    >>Ramassez les |cRXP_LOOT_Shadowmoon Tubers|r qui sortent ensuite du sol
    .complete 10514,1 --Collect Shadowmoon Tuber (x10)
step
    .goto Shadowmoon Valley,53.918,23.529
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oronok Torn-heart|r
    .turnin 10514 >> Rendez la quête J'ai tenu bien des rôles...
    .accept 10515 >> Acceptez la quête Une leçon bien apprise
	.target Oronok Torn-heart
step
    #loop
    .goto Shadowmoon Valley,56.5,14.6,0
    .goto Shadowmoon Valley,57.6,18.6,0
    .goto Shadowmoon Valley,57.2,21.3,0
    .goto Shadowmoon Valley,56.5,14.6,70,0
    .goto Shadowmoon Valley,57.6,18.6,70,0
    .goto Shadowmoon Valley,57.2,21.3,70,0
    .goto Shadowmoon Valley,58.5,14.8,70,0
    >>Cliquez les |cRXP_ENEMY_Ravenous Flayer Eggs|r sur le sol pour les détruire
    >>Faites attention à l'elite |cRXP_ENEMY_Ravenous Flayer Matriarch|r qui patrouille dans la zone
    .complete 10515,1 --Collect Ravenous Flayer Egg Destroyed (x10)
step
    .goto Shadowmoon Valley,53.918,23.529
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oronok Torn-heart|r
    .turnin 10515 >> Rendez la quête Une leçon bien apprise
    .accept 10519 >> Acceptez la quête La Formule de damnation - vérité et histoire
    .complete 10519,1 --The Cipher of Damnation - History and Truth
	.skipgossip
	.target Oronok Torn-heart
step
    .goto Shadowmoon Valley,53.918,23.529
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oronok Torn-heart|r
    .turnin 10519 >> Rendez la quête La Formule de damnation - vérité et histoire
    .accept 10521 >> Acceptez la quête Grom'tor, fils d'Oronok
    .accept 10527 >> Acceptez la quête Ar'tor, fils d'Oronok
    .accept 10546 >> Acceptez la quête Borak, fils d'Oronok
	.target Oronok Torn-heart
step
    .goto Shadowmoon Valley,44.576,23.614
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grom'tor, Son of Oronok|r
    .turnin 10521 >> Rendez la quête Grom'tor, fils d'Oronok
    .accept 10522 >> Acceptez la quête La Formule de damnation - la charge de Grom'tor
	.target Grom'tor, Son of Oronok
step
    #loop
    .goto Shadowmoon Valley,45.98,28.74,0
    .goto Shadowmoon Valley,46.1,31.6,70,0
    .goto Shadowmoon Valley,47.6,31.9,70,0
    .goto Shadowmoon Valley,46.8,26.0,70,0
    .goto Shadowmoon Valley,45.5,26.6,70,0
    >>Tuez les |cRXP_ENEMY_Coilskar Nagas|r. Dépouillez-les pour leur |cRXP_LOOT_Coilskar Chest Keys|r
    >>Ouvrez les |cRXP_PICK_Coilskar Chests|r jusqu'à ce que vous tombiez sur le |cRXP_LOOT_First Fragment of the Cipher of Damnation|r
    .complete 10522,1 --Collect First Fragment of the Cipher of Damnation (x1)
	.mob Coilskar Defender
	.mob Coilskar Muckwatcher
	.mob Coilskar Myrmidon
	.mob Coilskar Siren
	.mob Coilskar Sorceress
	.mob Coilskar Waterkeeper
step
    .goto Shadowmoon Valley,44.576,23.614
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grom'tor, Son of Oronok|r
    .turnin 10522 >> Rendez la quête La Formule de damnation - la charge de Grom'tor
    .accept 10523 >> Acceptez la quête La Formule de damnation - Premier fragment retrouvé
	.target Grom'tor, Son of Oronok
step
    .goto Shadowmoon Valley,29.617,50.397
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ar'tor, Son of Oronok|r
    .turnin 10527 >> Rendez la quête Ar'tor, fils d'Oronok
    .accept 10528 >> Acceptez la quête Prisons de cristal démoniaque
	.target Ar'tor, Son of Oronok
step
    .goto Shadowmoon Valley,28.005,47.568
    >>Tuez la|cRXP_ENEMY_Painmistress Gabrissa|r. Dépouillez-la pour sa |cRXP_LOOT_Crystalline Key|r
    .complete 10528,1 --Collect Crystalline Key (x1)
	.mob Painmistress Gabrissa
step
    .goto Shadowmoon Valley,29.617,50.397
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ar'tor, Son of Oronok|r
    .turnin 10528 >> Rendez la quête Prisons de cristal démoniaque
	.target Ar'tor, Son of Oronok
step
    .isQuestTurnedIn 10528
    .goto Shadowmoon Valley,29.539,50.560
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Spirit of Ar'tor|r
    .accept 10537 >> Acceptez la quête Lohn'goron, arc du Cœur-fendu
	.target Spirit of Ar'tor
step
    #loop
    .goto Shadowmoon Valley,30.2,56.8,0
    .goto Shadowmoon Valley,32.0,50.4,0
    .goto Shadowmoon Valley,27.2,52.6,0
    .goto Shadowmoon Valley,30.2,56.8,70,0
    .goto Shadowmoon Valley,32.0,50.4,70,0
    .goto Shadowmoon Valley,27.2,52.6,70,0
    >>Tuez les |cRXP_ENEMY_Illidari|r. Dépouillez-les pour le |cRXP_LOOT_Lohn'goron, Bow of the Torn-heart|r
    .complete 10537,1 --Collect Lohn'goron, Bow of the Torn-heart (x1)
	.mob Illidari Dreadbringer
	.mob Illidari Painlasher
	.mob Illidari Shadowstalker
	.mob Illidari Shocktrooper
step
    .goto Shadowmoon Valley,29.539,50.560
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Spirit of Ar'tor|r
    .turnin 10537 >> Rendez la quête Lohn'goron, arc du Cœur-fendu
    .accept 10540 >> Acceptez la quête La Formule de damnation - la charge d'Ar'tor
	.target Spirit of Ar'tor
step
    .goto Shadowmoon Valley,29.5,57.5
    >>|cRXP_WARN_Dirigez-vous vers le sud-est pendant que le |cRXP_FRIENDLY_Spirit of Ar'tor|r vous suit, marchez autour de cette zone jusqu'à ce qu'il invoque |r |cRXP_ENEMY_Veneratus the Many|r
    >>Tuez le |cRXP_ENEMY_Veneratus the Many|r. Dépouillez-le pour son |cRXP_LOOT_Second Fragment of the Cipher of Damnation|r
    .complete 10540,1 --Collect Second Fragment of the Cipher of Damnation (x1)
	.mob Veneratus the Many
	.target Spirit of Ar'tor
step
    .goto Shadowmoon Valley,29.539,50.560
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Spirit of Ar'tor|r
    .turnin 10540 >> Rendez la quête La Formule de damnation - la charge d'Ar'tor
    .accept 10541 >> Acceptez la quête La Formule de damnation - Second fragment retrouvé
	.target Spirit of Ar'tor
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .turnin 10546 >> Rendez la quête Borak, fils d'Oronok
    .accept 10547 >> Acceptez la quête Des chardonomanes et des œufs
	.target Borak, Son of Oronok
step
    #loop
    .goto Shadowmoon Valley,43.7,53.3,55,0
    .goto Shadowmoon Valley,42.4,58.3,55,0
    .goto Shadowmoon Valley,43.7,60.7,55,0
    .goto Shadowmoon Valley,46.1,59.2,55,0
    >>Ramassez les |cRXP_PICK_Rotten Arakkoa Eggs|r sur le sol
    >>Faites attention car ils peuvent vous infligez des dégâts lorsque vous les ramassez
    .complete 10547,1 --Collect Rotten Arakkoa Egg (x1)
step
    #completewith next
    .zone Shattrath City >> Allez à Shattrath
step
    .goto Shattrath City,63.944,70.028
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tobias the Filth Gorger|r
    .turnin 10547 >> Rendez la quête Des chardonomanes et des œufs
    .accept 10550 >> Acceptez la quête Le fagot de chardons sanglants
	.target Tobias the Filth Gorger
step
    #completewith next
    .zone Shadowmoon Valley >> Retournez à la Vallée d'Ombrelune
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .turnin 10550 >> Rendez la quête Le fagot de chardons sanglants
    .accept 10570 >> Acceptez la quête Pour une poignée de chardons
	.target Borak, Son of Oronok
step
    #completewith next
    .goto Shadowmoon Valley,48.959,57.495
    .cast 37062 >>Utilisez le [Fagot de chardons sanglants] au bout du pont
    .timer 78,Pour une poignée de chardons RP
    .use 30616
step
    .goto Shadowmoon Valley,48.959,57.495
    .use 30616 >>Tuez |cRXP_ENEMY_Envoy Icarius|r quand il passe hostile. Dépouillez-le pour sa |cRXP_LOOT_Stormrage Missive|r
    .complete 10570,1 --Collect Stormrage Missive (x1)
    .mob Envoy Icarius
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .turnin 10570 >> Rendez la quête Pour une poignée de chardons
    .accept 10576 >> Acceptez la quête Le bonneteau d'Ombrelune
	.target Borak, Son of Oronok
step
    #loop
    .goto Shadowmoon Valley,49.6,60.6,0
    .goto Shadowmoon Valley,47.6,66.4,0
    .goto Shadowmoon Valley,44.4,67.4,0
    .goto Shadowmoon Valley,47.6,70.6,0
    .goto Shadowmoon Valley,49.6,60.6,70,0
    .goto Shadowmoon Valley,47.6,66.4,70,0
    .goto Shadowmoon Valley,44.4,67.4,70,0
    .goto Shadowmoon Valley,47.6,70.6,70,0
	>>Tuez les|cRXP_ENEMY_Eclipsions|r. Dépouillez-les pour leur |cRXP_LOOT_Armure|r
    .complete 10576,1 --Collect Eclipsion Armor (x6)
	.mob Eclipsion Archmage
	.mob Eclipsion Blood Knight
	.mob Eclipsion Bloodwarder
	.mob Eclipsion Centurion
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .turnin 10576 >> Rendez la quête Le bonneteau d'Ombrelune
    .accept 10577 >> Acceptez la quête Ce qu'Illidan veut, Illidan l'obtient...
	.target Borak, Son of Oronok
step
    #completewith next
    .cast 37096 >>Utilisez le [Déguisement d'elfe de sang]
    .use 30639
step
    .goto Shadowmoon Valley,46.458,71.944
	.use 30639 >>Parlez à |cRXP_FRIENDLY_Grand Commander Ruusk|r
    >>Assurez-vous d'avoir utilisé le [Déguisement d'elfe de sang]
    .complete 10577,1 --Illidan's Message Delivered
	.skipgossip
	.target Grand Commander Ruusk
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .turnin 10577 >> Rendez la quête Ce qu'Illidan veut, Illidan l'obtient...
    .accept 10578 >> Acceptez la quête La Formule de damnation - la charge de Borak
	.target Borak, Son of Oronok
step
    #loop
    .goto Shadowmoon Valley,59.2,55.8,60,0
    .goto Shadowmoon Valley,65.8,59.8,60,0
    >>Tuez|cRXP_ENEMY_Ruul the Darkener|r. Dépouillez-le pour son |cRXP_LOOT_Third Fragment of the Cipher of Damnation|r
    >>|cRXP_ENEMY_Ruul the Darkener|r frappe très fort. Nous vous recommandons de compléter cette quête à l'aide d'un groupe complet disposant d'un tank et d'un healer
    .complete 10578,1 -- Third Fragment of the Cipher of Damnation (1)
    .mob Ruul the Darkener
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .turnin 10578 >> Rendez la quête La Formule de damnation - la charge de Borak
    .accept 10579 >> Acceptez la quête La Formule de damnation - Troisième fragment retrouvé
	.target Borak, Son of Oronok
step
    .goto Shadowmoon Valley,53.918,23.529
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oronok Torn-heart|r
    .turnin 10523 >> Rendez la quête La Formule de damnation - Premier fragment retrouvé
    .turnin 10541 >> Rendez la quête La Formule de damnation - Second fragment retrouvé
    .turnin 10579 >> Rendez la quête La Formule de damnation - Troisième fragment retrouvé
    .accept 10588 >> Acceptez la quête La Formule de damnation
	.target Oronok Torn-heart
step
    #completewith next
    .cast 37236 >>Canalisez la [Formule de damnation] pendant 20 secondes pour invoquer |cRXP_ENEMY_Cyrukh the Firelord|r
    .use 30657
step
    .goto Shadowmoon Valley,43.249,44.834
    .use 30657 >>Tuez |cRXP_ENEMY_Cyrukh the Firelord|r
    >>|cRXP_ENEMY_Cyrukh the Firelord|r a 369k PV. Nous vous recommandons de compléter cette quête dans un groupe complet avec un tank et un healer. Les PNJ à côté vont aussi vous aider
    .complete 10588,1 -- Cyrukh the Firelord slain
    .mob Cyrukh the Firelord
step
    .goto Shadowmoon Valley,42.190,45.060
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Earthmender Torlok|r
    .turnin 10588 >> Rendez la quête La Formule de damnation
	.target Earthmender Torlok
step
    #completewith next
    .zone Shattrath City >> Allez à Shattrath
step
    .goto Shattrath City,54.751,44.322
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Khadgar|r
    .accept 10883 >> Acceptez la quête La clé de la Tempête
    .target Khadgar
step
    .goto Shattrath City,53.991,44.743
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_A'dal|r
    .turnin 10883 >> Rendez la quête La clé de la Tempête
    .accept 10884 >> Acceptez la quête L'épreuve des naaru : Miséricorde
    .accept 10885 >> Acceptez la quête L'épreuve des naaru : Force
    .accept 10886 >> Acceptez la quête L'épreuve des naaru : Ténacité
    .target A'dal
step
    >>Vous devez maintenant faire les 3 quêtes Épreuves. Ces quêtes nécessitent toutes d'être complétées en faisant les donjons en difficulté HÉROÏQUE
    >>Les donjons que vous devez compléter sont les suivants: Les Salles brisées, le Caveau de la Vapeur, l'Arcatraz, et le Labyrinthe des Ombres
    >>Complétez Les Salles brisées en moins de 55 minutes après avoir tué |cRXP_ENEMY_Grand Warlock Nethekurse|r. Vous devez tuer le |cRXP_ENEMY_Shattered Hand Executioner|r à la toute fin du donjon dans la limite de temps. Dépouillez-le pour la |cRXP_LOOT_Unused Axe of the Executioner|r
    >>Tuez |cRXP_ENEMY_Warlord Kalithresh|r dans le Caveau de la Vapeur. Dépouillez-le pour le |cRXP_LOOT_Kalithresh's Trident|r
    >>Tuez |cRXP_ENEMY_Murmur|r dans le Labyrinthe des Ombres. Dépouillez-le pour |cRXP_LOOT_Murmur's Essence|r
    >>Complétez le donjon de l'Arcatraz. Assurez-vous que |cRXP_FRIENDLY_Millhouse Manastorm|r reste en vie après avoir vaincu le boss final, |cRXP_ENEMY_Harbinger Skyriss|r
    .complete 10884,1 -- Unused Axe of the Executioner (1)
    .complete 10885,1 -- Kalithresh's Trident (1)
    .complete 10885,2 -- Murmur's Essence (1)
    .complete 10886,1 -- Millhouse Manastorm Rescued
step
    .goto Shattrath City,53.991,44.743
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_A'dal|r
    .turnin 10884 >> Rendez la quête L'épreuve des naaru : Miséricorde
    .turnin 10885 >> Rendez la quête L'épreuve des naaru : Force
    .turnin 10886 >> Rendez la quête L'épreuve des naaru : Ténacité
    .accept 10888 >> Acceptez la quête L'épreuve des naaru : Magtheridon
    .target A'dal
step
    >>Tuez |cRXP_ENEMY_Magtheridon|r
    .complete 10888,1 -- Magtheridon slain
step
    .goto Shattrath City,53.991,44.743
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_A'dal|r
    .turnin 10888 >> Rendez la quête L'épreuve des naaru : Magtheridon
    .target A'dal
step
    .isQuestTurnedIn 10888
    +Félicitations ! Vous avez terminé l'Harmonisation pour le Donjon de la Tempête
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Guide des Harmonisations
#name 4. Mont Hyjal
#guideKind attunement
#title Mont Hyjal

step
    #completewith next
    .goto Tanaris,65.669,49.940,50 >> Voyagez vers les Grottes du Temps
    .subzoneskip 1941
step
    #loop
    .goto Tanaris,58.86,54.22,20,0
    .goto Tanaris,58.21,54.79,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Soridormi|r
    >>|cRXP_FRIENDLY_Soridormi|r patrouille dans la zone
    .accept 10445 >> Acceptez la quête Les fioles d'éternité
    .target Soridormi
step
    >>Tuez |cRXP_ENEMY_Lady Vashj|r. Dépouillez-la pour sa |cRXP_LOOT_Vashj's Vial Remnant|r
    >>Tuez |cRXP_ENEMY_Kael'thas Sunstrider|r. Dépouillez-le pour son |cRXP_LOOT_Kael's Vial Remnant|r
    .complete 10445,1 -- Vashj's Vial Remnant (1)
    .complete 10445,2 -- Kael's Vial Remnant (1)
step
    #completewith next
    .goto Tanaris,65.669,49.940,50 >> Retournez dans les Grottes du Temps
    .subzoneskip 1941
step
    #loop
    .goto Tanaris,58.86,54.22,20,0
    .goto Tanaris,58.21,54.79,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Soridormi|r
    >>|cRXP_FRIENDLY_Soridormi|r patrouille dans la zone
    .turnin 10445 >> Rendez la quête Les fioles d'éternité
    .target Soridormi
step
    .isQuestTurnedIn 10445
    +Félicitations ! Vous avez terminé l'Harmonisation pour le Mont Hyjal
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Guide des Harmonisations
#name 5. Le Temple Noir
#guideKind attunement
#title Le Temple Noir

step
#aldor
    #completewith SeerUdalo
    .zone Shadowmoon Valley >> Voyagez vers la Vallée d'Ombrelune
step
#aldor
    .goto Shadowmoon Valley,62.648,28.445
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anchorite Ceyla|r
    .accept 10568 >> Acceptez la quête Tablettes de Baa'ri
	.target Anchorite Ceyla
step
#scryer
    #completewith SeerUdalo
    .zone Shadowmoon Valley >> Voyagez vers la Vallée d'Ombrelune
step
#scryer
    .goto Shadowmoon Valley,56.258,59.586
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arcanist Thelis|r
    .accept 10683 >> Acceptez la quête Tablettes de Baa'ri
    .target Arcanist Thelis
step
#aldor
    #loop
    .goto Shadowmoon Valley,56.0,37.1,0
    .goto Shadowmoon Valley,59.0,34.9,70,0
    .goto Shadowmoon Valley,56.0,37.1,70,0
    .goto Shadowmoon Valley,59.1,39.3,70,0
    >>Ramassez les |cRXP_PICK_Fragments de tablette de Baa'ri|r sur le sol
    .complete 10568,1 --Collect Baa'ri Tablet Fragment (x12)
step
#scryer
    #loop
    .goto Shadowmoon Valley,57.6,39.2,0
    .goto Shadowmoon Valley,57.6,39.2,70,0
    .goto Shadowmoon Valley,60.8,34.6,70,0
    .goto Shadowmoon Valley,55.8,39.4,70,0
    .goto Shadowmoon Valley,60.6,38.2,70,0
    >>Ramassez les |cRXP_PICK_Fragments de tablette de Baa'ri|r sur le sol
    .complete 10683,1 --Collect Baa'ri Tablet Fragment (x12)
step
#aldor
    .goto Shadowmoon Valley,62.648,28.445
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anchorite Ceyla|r
    .turnin 10568 >> Rendez la quête Tablettes de Baa'ri
    .accept 10571 >> Acceptez la quête Oronu l'Ancien
	.target Anchorite Ceyla
step
#scryer
    .goto Shadowmoon Valley,56.258,59.586
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arcanist Thelis|r
    .turnin 10683 >> Rendez la quête Tablettes de Baa'ri
    .accept 10684 >> Acceptez la quête Oronu l'Ancien
    .target Arcanist Thelis
step
#aldor
    .goto Shadowmoon Valley,57.191,32.877
    >>Tuez |cRXP_ENEMY_Oronu|r sur le balcon
    .complete 10571,1 --Collect Orders From Akama (x1)
	.mob Oronu the Elder
step
#scryer
    .goto Shadowmoon Valley,57.191,32.877
    >>Tuez |cRXP_ENEMY_Oronu|r sur le balcon
    .complete 10684,1 --Collect Orders From Akama (x1)
	.mob Oronu the Elder
step
#aldor
    .goto Shadowmoon Valley,62.648,28.445
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anchorite Ceyla|r
    .turnin 10571 >> Rendez la quête Oronu l'Ancien
    .accept 10574 >> Acceptez la quête Les corrupteurs cendrelangue
	.target Anchorite Ceyla
step
#scryer
    .goto Shadowmoon Valley,56.258,59.586
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arcanist Thelis|r
    .turnin 10684 >> Rendez la quête Oronu l'Ancien
    .accept 10685 >> Acceptez la quête Les corrupteurs cendrelangue
    .target Arcanist Thelis
step
#aldor
    .goto Shadowmoon Valley,49.887,23.012
    >>Détruisez les totems protégeant |cRXP_ENEMY_Lakaan|r. Tuez le et dépouillez-le pour son |cRXP_LOOT_Medallion Fragment|r
    .complete 10574,3 --Collect Lakaan's Medallion Fragment (x1)
	.mob Lakaan
step
#aldor
    .goto Shadowmoon Valley,48.289,39.564
    >>Détruisez les totems protégeant |cRXP_ENEMY_Uylaru|r. Tuez-le et dépouillez-le pour son |cRXP_LOOT_Medallion Fragment|r
    .complete 10574,4 --Collect Uylaru's Medallion Fragment (x1)
	.mob Uylaru
step
#aldor
    .goto Shadowmoon Valley,51.164,52.840
    >>Détruisez les totems protégeant |cRXP_ENEMY_Eykenen|r. Tuez-le et dépouillez-le pour son |cRXP_LOOT_Medallion Fragment|r
    .complete 10574,1 --Collect Eykenen's Medallion Fragment (x1)
	.mob Eykenen
step
#aldor
    .goto Shadowmoon Valley,57.083,73.687
    >>Détruisez les totems protégeant |cRXP_ENEMY_Haalum|r. Tuez-le et dépouillez-le pour son |cRXP_LOOT_Fragment du médaillon d'Haalum|r
    .complete 10574,2 --Collect Haalum's Medallion Fragment (x1)
	.mob Haalum
step
#scryer
    .goto Shadowmoon Valley,57.083,73.687
    >>Détruisez les totems protégeant |cRXP_ENEMY_Haalum|r. Tuez-le et dépouillez-le pour son |cRXP_LOOT_Fragment du médaillon d'Haalum|r
    .complete 10685,2 --Collect Haalum's Medallion Fragment (x1)
	.mob Haalum
step
#scryer
    .goto Shadowmoon Valley,51.164,52.840
    >>Détruisez les totems protégeant |cRXP_ENEMY_Eykenen|r. Tuez-le et dépouillez-le pour son |cRXP_LOOT_Medallion Fragment|r
    .complete 10685,1 --Collect Eykenen's Medallion Fragment (x1)
	.mob Eykenen
step
#scryer
    .goto Shadowmoon Valley,48.289,39.564
    >>Détruisez les totems protégeant |cRXP_ENEMY_Uylaru|r. Tuez-le et dépouillez-le pour son |cRXP_LOOT_Medallion Fragment|r
    .complete 10685,4 --Collect Uylaru's Medallion Fragment (x1)
	.mob Uylaru
step
#scryer
    .goto Shadowmoon Valley,49.887,23.012
    >>Détruisez les totems protégeant |cRXP_ENEMY_Lakaan|r. Tuez le et dépouillez-le pour son |cRXP_LOOT_Medallion Fragment|r
    .complete 10685,3 --Collect Lakaan's Medallion Fragment (x1)
	.mob Lakaan
step
#aldor
    .goto Shadowmoon Valley,62.648,28.445
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anchorite Ceyla|r
    .turnin 10574 >> Rendez la quête Les corrupteurs cendrelangue
    .accept 10575 >> Acceptez la quête La Cage de la gardienne
	.target Anchorite Ceyla
step
#scryer
    .goto Shadowmoon Valley,56.258,59.586
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arcanist Thelis|r
    .turnin 10685 >> Rendez la quête Les corrupteurs cendrelangue
    .accept 10686 >> Acceptez la quête La Cage de la gardienne
    .target Arcanist Thelis
step
#aldor
    .goto Shadowmoon Valley,57.328,49.577
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sanoru|r
    .turnin 10575 >> Rendez la quête La Cage de la gardienne
    .accept 10622 >> Acceptez la quête Preuve d'allégeance
	.target Sanoru
step
#scryer
    .goto Shadowmoon Valley,57.328,49.577
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sanoru|r
    .turnin 10686 >> Rendez la quête La Cage de la gardienne
    .accept 10622 >> Acceptez la quête Preuve d'allégeance
	.target Sanoru
step
    #loop
    .goto Shadowmoon Valley,57.02,48.71,0
    .goto Shadowmoon Valley,56.35,49.98,50,0
    .goto Shadowmoon Valley,57.02,48.71,50,0
    .goto Shadowmoon Valley,58.09,49.78,50,0
    >>Tuez |cRXP_ENEMY_Zandras|r
    >>|cRXP_ENEMY_Zandras|r patrouille sur le toit en haut des escaliers
    .complete 10622,1 --Kill Zandras (x1)
	.mob Zandras
step
    .goto Shadowmoon Valley,57.328,49.577
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sanoru|r
    .turnin 10622 >> Rendez la quête Preuve d'allégeance
    .accept 10628 >> Acceptez la quête Akama
	.target Sanoru
step
    #label SeerUdalo
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Akama|r
    >>|cRXP_FRIENDLY_Akama|r se situe plus loin à l'intérieur de la Cage de la gardienne
    .turnin 10628 >> Rendez la quête Akama
    .accept 10705 >> Acceptez la quête Le voyant Udalo
	.target Akama
step
    #completewith next
    .isOnQuest 10705
    .subzone 3846 >> |cRXP_WARN_Trouvez un groupe pour l'Arcatraz. Vous devez parler à |cRXP_FRIENDLY_Udalo|r à l'intérieur du donjon|r
    .subzoneskip 3848
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Udalo|r
    .turnin 10705 >> Rendez la quête Le voyant Udalo
    .accept 10706 >> Acceptez la quête Un mystérieux présage
	.target Udalo
step
    #completewith next
    .zone Shadowmoon Valley >> Retournez à la Vallée d'Ombrelune
step
    .goto Shadowmoon Valley,57.328,49.577,10,0
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Akama|r
    .turnin 10706 >> Rendez la quête Un mystérieux présage
    .accept 10707 >> Acceptez la quête La terrasse Ata'mal
	.target Akama
step
    .goto Shadowmoon Valley,71.597,35.508
    >>|cRXP_WARN_Tuez les trois |cRXP_ENEMY_Shadowmoon Soulstealers|r pour que les |cRXP_ENEMY_Shadowlord Deathwail|r atterrissent sur le sol|r
    >>Tuez le |cRXP_ENEMY_Shadowlord Deathwail|r. Dépouillez-le pour son |cRXP_LOOT_Cœur de fureur|r
    >>Nous vous recommandons de compléter cette quête avec un groupe complet comprenant un tank et un healer
    .complete 10707,1 -- Heart of Fury (1)
    .mob Shadowlord Deathwail
step
    .goto Shadowmoon Valley,57.328,49.577,10,0
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Akama|r
    .turnin 10707 >> Rendez la quête La terrasse Ata'mal
    .accept 11052 >> Acceptez la quête La promesse d'Akama
	.target Akama
step
    #completewith next
    .zone Shattrath City >> Allez à Shattrath
step
    .goto Shattrath City,53.98,44.73
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_A'dal|r
    .turnin 11052 >> Rendez la quête La promesse d'Akama
	.target A'dal
step
    #completewith next
    .subzone 3607 >> |cRXP_WARN_Entrez dans le raid de la Caverne du sanctuaire du Serpent. Vous devez vaincre le boss |cRXP_ENEMY_Fathom-Lord Karathress|r, puis parlez au |cRXP_FRIENDLY_Seer Olum|r qui se situe derrière lui|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seer Olum|r
    .accept 10944 >> Acceptez la quête Un secret compromis
step
    #completewith next
    .zone Shadowmoon Valley >> Retournez à la Vallée d'Ombrelune
step
    .goto Shadowmoon Valley,57.328,49.577,10,0
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Akama|r
    .turnin 10944 >> Rendez la quête Un secret compromis
    .accept 10946 >> Acceptez la quête La ruse des Cendrelangues
	.target Akama
step
    .use 31946 >>Tuez |cRXP_ENEMY_A'lar|r dans le Donjon de la Tempête en portant la [Capuche de cendrelangue]
    .complete 10946,1 -- Ruse of the Ashtongue 1/1
step
    #completewith next
    .zone Shadowmoon Valley >> Retournez à la Vallée d'Ombrelune
step
    .goto Shadowmoon Valley,57.328,49.577,10,0
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Akama|r
    .turnin 10946 >> Rendez la quête La ruse des Cendrelangues
    .accept 10947 >> Acceptez la quête Un artefact du passé
	.target Akama
step
    >>Tuez |cRXP_ENEMY_Rage Winterchill|r au Mont Hyjal. Dépouillez-le pour son |cRXP_LOOT_Time-Phased Phylactery|r
    .complete 10947,1 -- Time-Phased Phylactery (1)
step
    #completewith next
    .zone Shadowmoon Valley >> Retournez à la Vallée d'Ombrelune
step
    .goto Shadowmoon Valley,57.328,49.577,10,0
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Akama|r
    .turnin 10947 >> Rendez la quête Un artefact du passé
    .accept 10948 >> Acceptez la quête L'âme otage
	.target Akama
step
    #completewith next
    .zone Shattrath City >> Allez à Shattrath
step
    .goto Shattrath City,53.98,44.73
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_A'dal|r
    .turnin 10948 >> Rendez la quête L'âme otage
    .accept 10949 >> Acceptez la quête L'entrée dans le Temple noir
	.target A'dal
step
    #completewith next
    .zone Shadowmoon Valley >> Retournez à la Vallée d'Ombrelune
step
    .goto Shadowmoon Valley,65.233,43.956
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xi'ri|r
    >>Si vous êtes dans un groupe, assurez-vous que les autres membres du groupe aient rendu la quête d'avant d'accepter la prochaine. La validation de quête automatique a été désactivée pour cette étape
    .turnin 10949 >> Rendez la quête L'entrée dans le Temple noir
    .accept 10985,1 >> Acceptez la quête Une distraction pour Akama
    .target Xi'ri
step
    .goto Shadowmoon Valley,65.233,43.956
    >>|cRXP_WARN_Parlez à |cRXP_FRIENDLY_Xi'ri|r pour commencer le RP. Il se peut que vous deviez attendre à ses côtés 1-2 minutes pour que |cRXP_FRIENDLY_Akama|r arrive. Une fois que |cRXP_FRIENDLY_Akama|r est arrivé, suivez-le pour continuer le RP|r
    .complete 10985,1 -- Help Akama and Maiev enter the Black Temple.
    .skipgossip
    .target Xi'ri
    .target Akama
step
    .goto Shadowmoon Valley,65.233,43.956
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xi'ri|r
    .turnin 10985 >> Rendez la quête Une distraction pour Akama
    .accept 10958 >> Acceptez la quête À la recherche des Cendrelangues
    .target Xi'ri
step
    .isQuestTurnedIn 10985
    +Félicitations ! Vous avez terminé l'Harmonisation pour le Temple Noir
]])
